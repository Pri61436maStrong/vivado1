`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/05 19:09:19
// Design Name: 
// Module Name: norm_cell
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Revision 0.02 - Bit stream
// Revision 0.03 - Supports softmax
// Revision 1.00 - Supports 16-bit
// Revision 1.10 - Format of xqs 
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module norm_cell #(
  parameter SOS_W  =  23 ,  // bit width of sum of square, 17 + 6, related to ip: u_sos_adder
  parameter SOI_W  =  15 ,  // bit width of sum of input, 9 + 6, required SOI_W > 11
  parameter QI_W   =  15 ,  // bit width of q_i, required QI_W <= SOI_W
  parameter MSB    =  0     // 1 for msb, 0 for lsb, splitting when 16-bit during norm
)
(
  input                                                aclk                ,
  input                                                rst                 ,

  // Configurations  
  input                                                func                ,  // 1 for norm, 0 for softmax  
  input                            [      2 : 0]       mode                ,  // data path for features
  input                            [      2 : 0]       mode_dly1           ,
  input                            [      2 : 0]       mode_dly5           ,
  input                            [      2 : 0]       mode_dly6           ,
  input                                                qbit                ,  // 1 for 8-bit, 0 for 16-bit

  // Info about norm_channel       
  input                signed      [     24 : 0]       xqs                 ,  // Q7.18 when 8-bit, Q0.26 when 16-bit
//input                                                xqs_vld             ,  // whether xqs is valid
//output                                               xqs_rdy             ,
  input                signed      [ QI_W-1 : 0]       q_i                 ,  // <= 8 for norm, 16-bit for softmax
  input                signed      [ QI_W-1 : 0]       q_max               ,  // maximal q_i of input data
  input                signed      [     24 : 0]       coef_norm           ,  // Q9.16
  input                signed      [     32 : 0]       coef_mean           ,  // for 8-bit, Q17.16; for 16-bit, Q25.8
  input                            [      2 : 0]       coef_cut2n          ,

  // Input data to DSP  
  input                signed      [     15 : 0]       din                 ,  // for 8-bit, din[7:0] = 8'b0
  input                                                din_vld             ,
  input                                                accum_din_last_dly1 ,  
  input                                                accum_din_last_dly5 ,
  input                signed      [     17 : 0]       din_buff            ,  // input data from buffer
  input                                                din_buff_vld        ,

  // Results of accumulator  
  output      reg                  [SOS_W-1 : 0]       sos                 ,  // sos = \sum{x^2} for norm, unsigned !!!
  output      reg                                      sos_vld             ,  
  output      reg      signed      [SOI_W-1 : 0]       soi_or_max          ,  // \sum{x} for norm, q_max for softmax
  output      reg                                      soi_or_max_vld      ,  
     
  // Data to tmp buffer     
  output      reg                  [     17 : 0]       dout_buff_a         ,  // 12-bit q and 18-bit p for softmax
  output      reg                  [ QI_W-1 : 0]       dout_buff_b         ,  // 12-bit q and 18-bit p for softmax
  output      reg                                      dout_buff_vld       ,  
            
  // Output data  
  output      reg      signed      [     15 : 0]       dout                 ,  
  output      reg                                      dout_vld         
);


//`````````````````````````````````````` Signals ``````````````````````````````````
wire          signed          [     17 : 0]          din_mux            ;  // din or din_buff according to mode
reg           signed          [     24 : 0]          mac_din_a          ;
wire          signed          [     17 : 0]          mac_din_b          ;
reg           signed          [     47 : 0]          mac_din_c          ;
wire          signed          [     47 : 0]          mac_dout           ;
wire                                                 mac_dout_vld       ;
wire                                                 dout_merge_vld     ;
reg           signed          [     17 : 0]          din_shift          ;  // reserves LSB for balance when round
wire          signed          [SOI_W-1 : 0]          soi_din_a          ;
wire          signed          [      8 : 0]          soi_din_b          ;
wire                                                 soi_din_c          ;
wire          signed          [SOI_W-1 : 0]          add_int15_dout     ;
wire                                                 soi_or_max_vld_en  ;
reg                           [     16 : 0]          mac_dout_part      ;  // splits qx ^ 2 into 2 part
wire                          [     16 : 0]          frac_plus_one      ;  // x * log2e = u + v, 2 ^ v is similar to 1 + v  
reg                           [     16 : 0]          mac_dout_rshift    ;  // output of right shift module, with LSB
reg           signed          [   QI_W : 0]          sos_rshift_sel     ;  // right shift level
reg                           [  SOS_W : 0]          sos_rshift         ;  // reserves LSB for balance when round
wire          signed          [   QI_W : 0]          q_sub              ;
wire          signed          [   QI_W : 0]          c_cut2n            ;
wire          signed          [ QI_W-1 : 0]          cut2n_new          ;
reg           signed          [ QI_W-1 : 0]          cut2n_max          ;
wire          signed          [   QI_W : 0]          cut2n_sub          ;
wire                          [     15 : 0]          sos_adder_din_a    ;
wire                          [SOS_W-1 : 0]          sos_adder_din_b    ;
wire                                                 sos_adder_din_c    ;
wire                          [SOS_W-1 : 0]          sos_adder_dout     ;
reg           signed          [     31 : 0]          dout_cut           ;
reg           signed          [     32 : 0]          dout_merge         ;
wire                                                 dout_sign          ;  // whether dout is negative
wire                                                 dout_ovf           ;  // whether overflow happened
wire                                                 dout_unf           ;  // whether underflow happened
reg           signed          [     15 : 0]          dout_round         ; 
// Dly signals
reg                                                  mac_din_vld        ;    
reg           signed          [     17 : 0]          din_shift_dly1     ;
wire          signed          [     17 : 0]          din_shift_dly5     ;
reg                                                  sos_vld_en         ;
reg                                                  sos_adder_din_vld  ;
wire          signed          [     24 : 0]          coef_norm_dly1     ;
wire          signed          [     32 : 0]          coef_mean_dly1     ;
wire                          [      2 : 0]          coef_cut2n_dly5    ;
//===================================================================================



//````````````````````````````````````` Output y2 ```````````````````````````````````
// din is Q16.2 for 16-bit, Q8.10 for 8-bit; 
// din_buff, for norm is Q16.2 at 16-bit, Q8.10 at 8-bit; 
// din_buff, for softmax is Q2.16 actually, but regarded as Q16.2
assign din_mux = mode[2] ? din_buff[17:0] : { din[15:0], 2'b0 } ;              //error for softmax, should be signed !!!

// for norm, S_x = S_{common} * 2 ^ {q_i}, q_{max} is the max among q_i, c_cut2n is in [0, 8]
assign q_sub = {q_max[QI_W-1], q_max} - {q_i[QI_W-1], q_i}  ;
assign c_cut2n = ( {func, mode[2:0]} == 4'h5 ) ? q_sub : {(QI_W+1){1'b0}} ;  // only when per-channel quantization is not used

// din_shift is 18-bit
always @(*) begin
  case ( c_cut2n )
    16'h0    :  din_shift = din_mux          ;
    16'h1    :  din_shift = din_mux >>> 1    ;
    16'h2    :  din_shift = din_mux >>> 2    ;
    16'h3    :  din_shift = din_mux >>> 3    ;
    16'h4    :  din_shift = din_mux >>> 4    ;
    16'h5    :  din_shift = din_mux >>> 5    ;
    16'h6    :  din_shift = din_mux >>> 6    ;
    16'h7    :  din_shift = din_mux >>> 7    ;
    16'h8    :  din_shift = din_mux >>> 8    ;
    16'h9    :  din_shift = din_mux >>> 9    ;
    16'hA    :  din_shift = din_mux >>> 10   ;
    16'hB    :  din_shift = din_mux >>> 11   ;
    16'hC    :  din_shift = din_mux >>> 12   ;
    16'hD    :  din_shift = din_mux >>> 13   ;
    16'hE    :  din_shift = din_mux >>> 14   ;
    16'hF    :  din_shift = din_mux >>> 15   ;
    16'h10   :  din_shift = din_mux >>> 16   ;
    default  :  din_shift = 18'b0            ;
  endcase
end

// for reusing the adder
assign soi_din_a = soi_or_max_vld ? { SOI_W{1'b0} } : soi_or_max ;

// for accumulator of din in 16-bit, Q16.2 is [17:10, 9:2, 1:0]
// for accumulator of din in  8-bit, Q8.10 is [17:10, 9:0]
generate begin
  if ( MSB )
    assign soi_din_b = { din_shift_dly1[17], din_shift_dly1[17 : 10] }  ; 
  else
    assign soi_din_b = qbit ? { din_shift_dly1[17], din_shift_dly1[17 : 10] } : { 1'b0, din_shift_dly1[9 : 2] }  ;
end
endgenerate

generate begin
  if ( MSB )
    assign soi_din_c = qbit ? din_shift_dly1[9] : 1'b0  ; 
  else
    assign soi_din_c = qbit ? din_shift_dly1[9] : din_shift_dly1[1]  ;
end
endgenerate

add_int15 u_add_int15 (
  .A     (  soi_din_a       ),        // input wire [14 : 0] A
  .B     (  soi_din_b       ),        // input wire [8 : 0] B
  .C_IN  (  soi_din_c       ),        // input wire C_IN
  .S     (  add_int15_dout  )         // output wire [14 : 0] S
);

// soi_or_max is the sum of input
always @( posedge aclk ) begin
  if ( rst )
    soi_or_max <= { SOI_W{1'b0} } ;
  else if ( ( {func, mode_dly5[2:1]} == 3'b000 ) && mac_dout_vld && ( cut2n_sub[QI_W] || soi_or_max_vld ) )
    soi_or_max <= { {(SOI_W-QI_W){cut2n_new[QI_W-1]}} , cut2n_new } ;  // for softmax, max is cut2n_new
  else if ( ( {func, mode_dly5[2:1]} == 3'b000 ) && mac_dout_vld ) 
    soi_or_max <= { {(SOI_W-QI_W){cut2n_max[QI_W-1]}} , cut2n_max } ;  // for softmax, max is cut2n_max
  else if ( mode_dly1[2:1] == 2'b00 && mac_din_vld )
    soi_or_max <= add_int15_dout ;                               // for norm, updates soi when valid
  else if ( soi_or_max_vld )
    soi_or_max <= { SOI_W{1'b0} } ;
end
//===================================================================================



//`````````````````````````````````` soi_or_max_vld `````````````````````````````````
assign soi_or_max_vld_en = ( {func, mode_dly1[2:1]} == 3'b100 ) && mac_din_vld && accum_din_last_dly1 || 
                           ( {func, mode_dly5[2:1]} == 3'b000 ) && mac_dout_vld && accum_din_last_dly5  ;

// After the last data came, set soi_or_max_vld at true
always @( posedge aclk ) begin
  if ( rst )
    soi_or_max_vld <= 1'b0 ;
  else
    soi_or_max_vld <= soi_or_max_vld_en ;
end
//===================================================================================


// beta is Q25.23
// ________________________________________________________________
//|         |          |                                           |
//|   func  |   mode   |                  feature                  |
//|_________|__________|___________________________________________|
//|         |  3'b000  |       xqs * qx, only to accumulator       | 
//|         |  3'b001  |    xqs * qx, to accumulator and buffer    |  // tmp: p and q 
//| softmax |  3'b010  |          xqs * qx, only to buffer         |
//| (1'b0)  |  3'b101  | coef * (tmp >> c), from buffer, to output |  // tmp = p >> (q_max - q_i)
//|         |  other   |                    none                   |
//|_________|__________|___________________________________________|
//|         |  3'b000  |       (qx >> c) ^ 2, to accumulator       |  
//|         |  3'b001  |  (qx >> c) ^ 2, to accumulator and buffer |  
//|  norm   |  3'b010  | coef * (qx >> c) - coef * mean, to buffer |
//| (1'b1)  |  3'b011  | coef * (qx >> c) - coef * mean, to output |
//|         |  3'b100  |    coef * tmp - coef * mean, to buffer    |  // tmp = qx >> n
//|         |  3'b101  |    coef * tmp - coef * mean, to output    |  // tmp = qx >> n
//|         |  3'b110  |        gama * tmp + beta, to output       |  // tmp = coef * (qx >> n) - coef * mean 
//|         |  other   |                    none                   |
//|_________|__________|___________________________________________|
//| qbit = 1 for 8-bit, 0 for 16-bit                               |
//|________________________________________________________________|

always @(posedge aclk) begin
  if ( rst )
    din_shift_dly1 <= 18'b0  ;
  else
    din_shift_dly1 <= din_shift  ;
end

defer_unit #(
  .WIDTH  (  18  )  ,
  .DLY_T  (   4  )
) defer_unit_u2 (
  .clk    (  aclk            ) ,
  .rst    (  rst             ) ,
  .din    (  din_shift_dly1  ) ,
  .dout   (  din_shift_dly5  )
);

defer_unit #(
  .WIDTH  (  25  )  ,
  .DLY_T  (   1  )
) defer_unit_u0 (
  .clk    (  aclk            ) ,
  .rst    (  rst             ) ,
  .din    (  coef_norm       ) ,
  .dout   (  coef_norm_dly1  )
);

// coef_mean_dly1
defer_unit #(
  .WIDTH  (  33  )  ,
  .DLY_T  (   1  )
) defer_unit_u1 (
  .clk    (  aclk            ) ,
  .rst    (  rst             ) ,
  .din    (  coef_mean       ) ,
  .dout   (  coef_mean_dly1  )
);

defer_unit #(
  .WIDTH  (  3  )  ,
  .DLY_T  (  5  )
) defer_unit_u5 (
  .clk    (  aclk             ) ,
  .rst    (  rst              ) ,
  .din    (  coef_cut2n       ) ,
  .dout   (  coef_cut2n_dly5  )
);


//````````````````````````````````````` input of DSP ````````````````````````````````
always @(*) begin
  case ( {func, mode_dly1[2:0]} )
    4'h0, 4'h1, 4'h2              :  mac_din_a = xqs                                         ;  // Q7.18 or Q0.26
    4'h5, 4'hA, 4'hB, 4'hC, 4'hD  :  mac_din_a = coef_norm_dly1                              ;  // Q9.16
    default                       :  mac_din_a = { {7{din_shift_dly1[17]}}, din_shift_dly1 } ;
  endcase
end

// qx is Q16.2 for 16-bit, Q8.10 for 8-bit; tmp is Q16.2
assign mac_din_b = din_shift_dly1 ;

// coef_mean for  8-bit, Q17.16 -> Q17.26, for 16-bit, Q25.8 -> Q25.18
always @(*) begin
  case ( {func, mode_dly1[2:0]} )
    4'hA, 4'hB, 4'hC, 4'hD  :  mac_din_c  =  { {5{coef_mean_dly1[32]}}, coef_mean_dly1, 10'b0 }  ;
    default                 :  mac_din_c  =  48'b0                                               ;
  endcase
end

// DSP function: P = A * B + C, pipeline = 4
// coef is Q9.16, (qx >> c) is Q16.2 for 16-bit, mac_dout is Q25.18
// coef is Q9.16, (qx >> c) is Q8.10 for  8-bit, mac_dout is Q17.26
dsp48_mac u_mac (
  .CLK    (    aclk         ),  
  .A      (    mac_din_a    ),      // input  wire [24 : 0] A
  .B      (    mac_din_b    ),      // input  wire [17 : 0] B
  .C      (    mac_din_c    ),      // input  wire [47 : 0] C
  .P      (    mac_dout     )       // output wire [47 : 0] P
);
//===================================================================================



//```````````````````````````````````` mac_dout_vld  ````````````````````````````````
always @( posedge aclk ) begin
  if ( rst )
    mac_din_vld <= 1'b0 ;
  else
    mac_din_vld <= din_vld || din_buff_vld;
end

// mac_dout_vld
defer_unit #(
  .WIDTH  (  1  )  ,
  .DLY_T  (  4  )
) defer_unit_u4 (
  .clk    (  aclk          ) ,
  .rst    (  rst           ) ,
  .din    (  mac_din_vld   ) ,
  .dout   (  mac_dout_vld  )
);

// dout_merge_vld
defer_unit #(
  .WIDTH  (  1  )  ,
  .DLY_T  (  1  )
) defer_unit_u3 (
  .clk    (  aclk            ) ,
  .rst    (  rst             ) ,
  .din    (  mac_dout_vld    ) ,
  .dout   (  dout_merge_vld  )
);
//===================================================================================



//``````````````````````````````````````` Op Ctrl ```````````````````````````````````
// xqs is Q7.18 when 8-bit, Q0.26 when 16-bit
// for 16-bit softmax, Q0.26 *  Q16.2 -> Q14.28
// for  8-bit softmax, Q7.18 *  Q8.10 -> Q14.28
assign cut2n_new = mac_dout[QI_W + 27 : 28]   ;  // QI_W-bit
assign cut2n_sub = cut2n_max - cut2n_new      ;  // (QI_W+1)-bit

// Updates cut2n_max
always @( posedge aclk ) begin
  if ( rst )
    cut2n_max <= 15'h4000   ;
  else if ( ( {func, mode_dly5[2:1]} == 3'b000 ) && mac_dout_vld && ( cut2n_sub[QI_W] || soi_or_max_vld ) )
    cut2n_max <= cut2n_new ;
  else if ( soi_or_max_vld )
    cut2n_max <= 15'h4000   ;
end

// for right shift of sos_rshift, delay cut2n_sub for 1 cycle
always @( posedge aclk ) begin
  if ( rst )
    sos_rshift_sel <= {(QI_W+1){1'b0}}  ;
  else if ( func )
    sos_rshift_sel <= {(QI_W+1){1'b0}}  ;
  else 
    sos_rshift_sel <= cut2n_sub  ;
end

// For 16-bit norm, Q16.2 * Q16.2 -> unsigned Q31.4 is [34:20, 19:4, 3:0]
// For  8-bit norm, Q8.10 * Q8.10 -> unsigned Q15.20 is [34:20, 19:0]
// Mux for 8/16-bit qmode, 17-bit
generate begin
  if (MSB) begin
    always @(*) begin
      case ( qbit )
        1'b0  :  mac_dout_part = { 1'b0, mac_dout[34 : 20], 1'b0 } ;  // zero fill is a place holder
        1'b1  :  mac_dout_part = { 1'b0, mac_dout[34 : 19] }       ;  // for MSB when norm in 16-bit
      endcase
    end
  end
  else begin
    always @(*) begin
      case ( qbit )
        1'b0  :  mac_dout_part = mac_dout[19 : 3]            ;
        1'b1  :  mac_dout_part = { 1'b0, mac_dout[34 : 19] } ;
      endcase
    end
  end
end
endgenerate
//===================================================================================



//`````````````````````````````````````` Output y1 ``````````````````````````````````
// For softmax, mac_dout is Q14.28 actually
// frac_plus_one is signed Q2.15 actually, but regarded as Q16.1
assign frac_plus_one = { 2'b01, mac_dout[27 : 13] }  ;

// mac_dout_part is unsigned Q16.1
always @(posedge aclk) begin
  if ( rst )
    mac_dout_rshift <= 17'b0  ;
  else if ( func )
    mac_dout_rshift <= mac_dout_part  ;  
  else if ( soi_or_max_vld || cut2n_sub[QI_W] || (cut2n_sub==16'h0) )
    mac_dout_rshift <= frac_plus_one  ;  
  else begin
    case ( cut2n_sub )
      16'h1            :  mac_dout_rshift  <=  frac_plus_one  >>   1  ;  
      16'h2            :  mac_dout_rshift  <=  frac_plus_one  >>   2  ;  
      16'h3            :  mac_dout_rshift  <=  frac_plus_one  >>   3  ;  
      16'h4            :  mac_dout_rshift  <=  frac_plus_one  >>   4  ;  
      16'h5            :  mac_dout_rshift  <=  frac_plus_one  >>   5  ;  
      16'h6            :  mac_dout_rshift  <=  frac_plus_one  >>   6  ;  
      16'h7            :  mac_dout_rshift  <=  frac_plus_one  >>   7  ;  
      16'h8            :  mac_dout_rshift  <=  frac_plus_one  >>   8  ;  
      16'h9            :  mac_dout_rshift  <=  frac_plus_one  >>   9  ;  
      16'hA            :  mac_dout_rshift  <=  frac_plus_one  >>  10  ;  
      16'hB            :  mac_dout_rshift  <=  frac_plus_one  >>  11  ;  
      16'hC            :  mac_dout_rshift  <=  frac_plus_one  >>  12  ;  
      16'hD            :  mac_dout_rshift  <=  frac_plus_one  >>  13  ;  
      16'hE            :  mac_dout_rshift  <=  frac_plus_one  >>  14  ;  
      16'hF            :  mac_dout_rshift  <=  frac_plus_one  >>  15  ;  
      default          :  mac_dout_rshift  <=  17'b0                  ;
    endcase
  end
end

// right shift for sos
always @(*) begin
  if ( !sos_rshift_sel[QI_W] )
    sos_rshift  =  { sos, 1'b0 }  ;
  else begin
    case ( sos_rshift_sel )
      16'hFFFF  :  sos_rshift  =  { sos, 1'b0 }  >>   1  ;
      16'hFFFE  :  sos_rshift  =  { sos, 1'b0 }  >>   2  ;
      16'hFFFD  :  sos_rshift  =  { sos, 1'b0 }  >>   3  ;
      16'hFFFC  :  sos_rshift  =  { sos, 1'b0 }  >>   4  ;
      16'hFFFB  :  sos_rshift  =  { sos, 1'b0 }  >>   5  ;
      16'hFFFA  :  sos_rshift  =  { sos, 1'b0 }  >>   6  ;
      16'hFFF9  :  sos_rshift  =  { sos, 1'b0 }  >>   7  ;
      16'hFFF8  :  sos_rshift  =  { sos, 1'b0 }  >>   8  ;
      16'hFFF7  :  sos_rshift  =  { sos, 1'b0 }  >>   9  ;
      16'hFFF6  :  sos_rshift  =  { sos, 1'b0 }  >>  10  ;
      16'hFFF5  :  sos_rshift  =  { sos, 1'b0 }  >>  11  ;
      16'hFFF4  :  sos_rshift  =  { sos, 1'b0 }  >>  12  ;
      16'hFFF3  :  sos_rshift  =  { sos, 1'b0 }  >>  13  ;
      16'hFFF2  :  sos_rshift  =  { sos, 1'b0 }  >>  14  ;
      16'hFFF1  :  sos_rshift  =  { sos, 1'b0 }  >>  15  ;
      16'hFFF0  :  sos_rshift  =  { sos, 1'b0 }  >>  16  ;
      16'hFFEF  :  sos_rshift  =  { sos, 1'b0 }  >>  17  ;
      16'hFFEE  :  sos_rshift  =  { sos, 1'b0 }  >>  18  ;
      16'hFFED  :  sos_rshift  =  { sos, 1'b0 }  >>  19  ;
      16'hFFEC  :  sos_rshift  =  { sos, 1'b0 }  >>  20  ;
      16'hFFEB  :  sos_rshift  =  { sos, 1'b0 }  >>  21  ;
      16'hFFEA  :  sos_rshift  =  { sos, 1'b0 }  >>  22  ;
      default   :  sos_rshift  =  { (SOS_W + 1){1'b0} }  ;
    endcase
  end
end

// for norm, mac_dout_rshift is unsigned Q16.1; for softmax, unsigned Q1.16 is regarded as Q16.1
assign sos_adder_din_a = mac_dout_rshift[16 : 1]  ;
assign sos_adder_din_b = sos_vld ? { SOS_W{1'b0} } : sos_rshift[SOS_W : 1]  ;
assign sos_adder_din_c = sos_vld ? mac_dout_rshift[0] : (sos_rshift[0] || mac_dout_rshift[0])  ;

// Combinatorial logic
add_unsigned u_sos_adder (
  .A      (  sos_adder_din_a    ),        // input wire [15 : 0] A
  .B      (  sos_adder_din_b    ),        // input wire [22 : 0] B
  .C_IN   (  sos_adder_din_c    ),        // input wire C_IN
  .S      (  sos_adder_dout     )         // output wire [22 : 0] S
);

// sos is sum of unsigned Q16
always @( posedge aclk ) begin
  if ( rst )
    sos <= { SOS_W{1'b0} } ;
  else if ( sos_adder_din_vld )
    sos <= sos_adder_dout  ;
  else if ( sos_vld )
    sos <= { SOS_W{1'b0} } ;
end
//===================================================================================



//``````````````````````````````````````` sos_vld  ``````````````````````````````````
// sos_vld_en
always @( posedge aclk ) begin
  if ( rst )
    sos_vld_en <= 1'b0;
  else
    sos_vld_en <= mode_dly5[2:1] == 2'b00 && mac_dout_vld && accum_din_last_dly5;
end

// sos_adder_din_vld
always @( posedge aclk ) begin
  if ( rst )
    sos_adder_din_vld <= 1'b0;
  else
    sos_adder_din_vld <= mode_dly5[2:1] == 2'b00 && mac_dout_vld;
end

// sos_vld
always @( posedge aclk ) begin
  if ( rst )
    sos_vld <= 1'b0;
  else 
    sos_vld <= sos_vld_en;
end
//===================================================================================



//`````````````````````````````````````` dout_buff  `````````````````````````````````
// assign normed_data = mac_dout[40 : 16] ;  //+ mac_dout[15]  ;  // LSB is discarded

// frac_plus_one is signed Q2.15 actually, but regarded as Q16.1
// thus { frac_plus_one, 1'b0 } is regarded as Q16.2
always @( posedge aclk ) begin
  if ( rst )
    dout_buff_a <= 18'b0  ;
  else begin
    case ( {func, mode_dly5[2:0]} ) 
      4'h1, 4'h2  :  dout_buff_a  <=  {frac_plus_one, 1'b0}  ;  // 14-bit q_i + 18-bit p_i (Q16.2)
    //4'h9        :  dout_buff_a  <=  din_shift_dly5         ;  // Q16.2 at 16-bit, Q8.10 at 16-bit; 
    //4'hA, 4'hC  :  dout_buff_a  <=  dout_clip              ;  // Q16.2  // 4'hA, 4'hC
    //default     :  dout_buff_a  <=  18'b0                  ;
      default     :  dout_buff_a  <=  din_shift_dly5         ;  // Q16.2 at 16-bit, Q8.10 at 16-bit; 
    endcase
    end
end

always @( posedge aclk ) begin
  if ( rst )
    dout_buff_b <= {QI_W{1'b0}}  ;
  else begin
    case ( {func, mode_dly5[2:0]} ) 
      4'h1, 4'h2  :  dout_buff_b  <=  cut2n_new     ;  // 14-bit q_i + 18-bit p_i (Q16.2)
      default     :  dout_buff_b  <=  {QI_W{1'b0}}  ;
    endcase
    end
end

always @( posedge aclk ) begin
  if ( rst )
    dout_buff_vld <= 1'b0 ;
  else begin
    case ( {func, mode_dly5[2:0]} ) 
    //4'h1, 4'h2, 4'h9, 4'hA, 4'hC  :  dout_buff_vld <= mac_dout_vld  ;
      4'h1, 4'h2, 4'h9              :  dout_buff_vld <= mac_dout_vld  ;
      default                       :  dout_buff_vld <= 1'b0          ;
    endcase
    end
end
//===================================================================================



//````````````````````````````````````````` dout  ```````````````````````````````````
// for softmax, coef is Q9.16, tmp is regarded as Q16.2, mac_dout is Q24.18
// for norm, (1) mac_dout = coef * (qx >> c) - coef * mean
// (1) coef is Q9.16, (qx >> c) is Q8.10 for  8-bit, mac_dout is Q16.26
//     coef is Q9.16, (qx >> c) is Q16.2 for 16-bit, mac_dout is Q24.18

// low 17-bit is discarded
// for 8-bit norm, dout_cut is Q23.9; otherwise, dout_cut is Q31.1 
always @(*) begin
  case( coef_cut2n_dly5 )
    3'h0  :  dout_cut = {mac_dout[47], mac_dout[47:17]}  ;  // Q31.18, [48:0] -> Q31.1, [48:17], but Q24.1 actually
    3'h1  :  dout_cut = mac_dout[47:16]  ;
    3'h2  :  dout_cut = mac_dout[46:15]  ;
    3'h3  :  dout_cut = mac_dout[45:14]  ;
    3'h4  :  dout_cut = mac_dout[44:13]  ;
    3'h5  :  dout_cut = mac_dout[43:12]  ;
    3'h6  :  dout_cut = mac_dout[42:11]  ;
    3'h7  :  dout_cut = mac_dout[41:10]  ;  // [48:17] << 7, Q31.1 
  endcase
end

// for 8-bit softmax, dout_merge is Q31.1 -> Q24.1 -> Q24.9
// dout_merge is set Q24.9 for 8-bit, Q32.1 for 16-bit
always @( posedge aclk ) begin
  if ( rst )
    dout_merge <= 33'b0  ;
  else if ( qbit && !func )
    dout_merge <= {dout_cut[24:0], 8'b0}    ;  // Q31.1 -> Q24.1 -> Q24.9
  else 
    dout_merge <= {dout_cut[31], dout_cut}  ;  // Q31.1 -> Q32.1 for 16-bit, Q23.9 -> Q24.9 for 8-bit norm
end

// Q24.9 ->  8-bit [32:17, 16:9, 8:0]
// Q32.1 -> 16-bit [32:17, 16:1,   0]
assign dout_sign = dout_merge[32]  ;                                                        // 1 when negative
assign dout_ovf = qbit ? ( ( |dout_merge[31:16] ) || ( dout_merge[15:9] == 7'h7F    ) ) 
                       : ( ( |dout_merge[31:16] ) || ( dout_merge[15:1] == 15'h7FFF ) )  ;  // 1 when overflow
assign dout_unf = &dout_merge[31:16]  ;                                                     // 0 when underflow

// Q16.1 for 16-bit, Q8.9 for 8-bit
always @(*) begin
  if ( !dout_sign && dout_ovf ) 
    dout_round = 16'h7FFF ;
  else if ( dout_sign && !dout_unf )
    dout_round = 16'h8000 ;
  else if ( qbit )
    dout_round = dout_merge[16 : 1] + {dout_merge[8], 8'b0} ;
  else
    dout_round = dout_merge[16 : 1] + {8'b0, dout_merge[0]} ; 
end

always @( posedge aclk ) begin
  if ( rst )
    dout <= 16'b0 ;
  else 
    dout <= dout_round ;
end

always @( posedge aclk ) begin
  if ( rst )
    dout_vld <= 1'b0 ;
  else
    dout_vld <= dout_merge_vld && ( ( mode_dly6[2:0] == 3'b101 ) || ( {func, mode_dly6[2:0]} == 4'hB ) || ( {func, mode_dly6[2:0]} == 4'hE ) );
end
//===================================================================================

endmodule