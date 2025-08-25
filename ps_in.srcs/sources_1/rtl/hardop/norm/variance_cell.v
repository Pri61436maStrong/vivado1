`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/16
// Design Name: 
// Module Name: variance_cell
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module variance_cell #(
  parameter SOS_W  =  23 ,  // bit width of sum of square
  parameter SOI_W  =  15 ,  // bit width of sum of input, required > 11
  parameter QI_W   =  15 ,  // bit width of q_i, required QI_W <= SOI_W
  parameter CFP_W  =  24    // bit width of custom floating-point number
)
(
  input                                              aclk             ,
  input                                              rst              ,
  input                                              start_pulse      ,
 
  // Configurations  
  input                                              func             ,  // 1 for norm, 0 for softmax  
  input                                              qbit             ,  // 1 for 8-bit, 0 for 16-bit
  input                          [31 : 0]            tile             ,  // sample size is tile * cuint for every group
  input                          [ 2 : 0]            cunit            ,  // cu = 2 ** cunit 
  input                signed    [24 : 0]            inv_n            ,  // Q2.23, -1/n = inv_n * 2^ (-inv_n_cut2n)
  input                          [ 3 : 0]            inv_n_cut2n      ,  // cut2n of inv_n
 
  // Results of accumulator  
  input                          [SOS_W-1 : 0]       sos_a            ,  // for 16-bit norm, it is \sum{qx^2[30:16]}
  input                          [SOS_W-1 : 0]       sos_b            ,  // for 16-bit norm, it is \sum{qx^2[15: 0]}
  input                signed    [SOI_W-1 : 0]       soi_or_max_a     ,  // \sum{x[15:8]} for norm, q_max for softmax
  input                signed    [SOI_W-1 : 0]       soi_or_max_b     ,  // \sum{x[ 7:0]} for norm, q_max for softmax
  input                                              din_vld          ,  // handshaking for above 4 signals
  output      reg                                    din_rdy          ,  
 
  // Data to tmp buffer   
  output                         [CFP_W-1 : 0]       variance         ,  // custom float-point format
  output                                             var_vld          ,  
  input                                              var_snap         ,  
        
  // Output data 
  output      reg      signed    [24 : 0]            mean_or_max      ,  // mean(Q16.9) for norm, 12-bit for max
  output      reg                                    mean_or_max_vld  ,
  input                                              mean_or_max_snap   
);



//```````````````````````````````````````` signals ``````````````````````````````````
// right shift about sos
reg                           [SOS_W + 15 : 0]       sos_a_rs_din                  ;  // SOS_W + 16
reg                           [SOS_W + 15 : 0]       sos_a_rs_dout                 ;
reg                           [SOS_W - 1  : 0]       sos_b_rs_din                  ;  // SOS_W
reg                           [SOS_W - 1  : 0]       sos_b_rs_dout                 ;
reg                           [SOS_W + 16 : 0]       sos_adder_dout                ;
reg                                                  sos_adder_dout_vld            ;
reg                                                  fifo_din_vld            [6:0] ;
reg                                                  sos_accum_dout_vld      [6:0] ;
reg                                                  sos_accum_dout_vld_dly [11:0] ;    
reg                           [SOS_W + 16 : 0]       sos_accum_din_a               ;  // SOS_W + 16
reg                           [63 : 0]               sos_accum_din_b               ;
wire                          [63 : 0]               sos_accum_dout                ;
reg                           [63 : 0]               sos_accum_dout_dly      [3:0] ;
// qmax sub for softmax          
wire          signed          [      QI_W : 0]       sos_adder_cut2n               ;  // soi_or_max_a - soi_or_max_b
reg           signed          [  QI_W - 1 : 0]       cut2n_new                     ;
wire          signed          [      QI_W : 0]       cut2n_sub                     ;  // cut2n_max - cut2n_new
reg           signed          [      QI_W : 0]       cut2n_sub_dly1                ;
// soi adder          
reg           signed          [SOI_W + 7  : 0]       soi_adder_din_a               ;  // SOI_W + 8
reg           signed          [SOI_W + 7  : 0]       soi_adder_din_a_dly1          ;
wire          signed          [SOI_W - 1  : 0]       soi_adder_din_b               ;
reg           signed          [SOI_W - 1  : 0]       soi_adder_din_b_dly1          ;
wire          signed          [SOI_W + 8  : 0]       soi_adder_dout                ;
        
reg           signed          [SOI_W + 8  : 0]       soi_accum_din_a               ;  // SOI_W + 8
reg           signed          [31 : 0]               soi_accum_din_b               ;
reg           signed          [32 : 0]               soi_accum_dout_tmp            ;
reg           signed          [31 : 0]               soi_accum_dout                ;
reg           signed          [31 : 0]               soi_accum_dout_dly      [4:0] ;
reg                           [ 3 : 0]               soi_accum_cut2n_dly1          ;
reg                           [ 3 : 0]               soi_accum_cut2n_dly2          ;
reg                           [ 3 : 0]               soi_accum_cut2n_new           ;
reg                           [ 3 : 0]               soi_accum_cut2n_new_dly [8:0] ;
reg           signed          [ 4 : 0]               mean_cut2n                    ;
reg           signed          [ 4 : 0]               mean_cut2n_dly1               ;
reg           signed          [ 4 : 0]               mean_cut2n_dly2               ;
reg           signed          [ 4 : 0]               mean_cut2n_dly3               ;
// fifo          
wire                                                 sos_fifo_empty                ;
wire                                                 sos_fifo_full                 ;
wire                          [63 : 0]               sos_fifo_dout                 ;
wire                                                 soi_fifo_empty                ;
wire                                                 soi_fifo_full                 ;
wire                          [35 : 0]               soi_fifo_dout                 ;
wire                                                 cut2n_fifo_empty              ;
wire                                                 cut2n_fifo_full               ;
wire          signed          [  QI_W - 1 : 0]       cut2n_fifo_din                ;
wire          signed          [  QI_W - 1 : 0]       cut2n_fifo_dout               ;
// controller        
reg                                                  init                          ;
reg                                                  init_dly1                     ;
reg                                                  init_dly2                     ;
reg                                                  init_dly3                     ;
reg                           [31 : 0]               din_tile_cnt                  ;
reg                           [31 : 0]               din_tile_cnt_dly1             ;
reg                           [31 : 0]               din_tile_cnt_dly2             ;
reg                           [ 5 : 0]               din_group_cnt                 ;
reg                           [31 : 0]               sos_tile_cnt                  ;
reg                                                  din_exhs                      ;
reg                                                  din_exhs_dly1                 ;
// variance
wire          signed          [56 : 0]               mean_tmp                      ;
reg           signed          [25 : 0]               mean_tmp_part                 ;
reg           signed          [71 : 0]               mean_x_sum                    ;
wire          signed          [56 : 0]               mean_x_sum_tmp                ;
wire          signed          [24 : 0]               mean                          ;  //Q16.9
wire                          [73 : 0]               m_n_tmp                       ;
reg                           [63 : 0]               m_n                           ;
reg                           [ 5 : 0]               group                         ; // each group is independent of each other
//===================================================================================


always @(*) begin
  case ( cunit )
    3'h0     :  group <= 6'h1   ;
    3'h1     :  group <= 6'h2   ;
    3'h2     :  group <= 6'h4   ;
    3'h3     :  group <= 6'h8   ;
    3'h4     :  group <= 6'h10  ;
    default  :  group <= 6'h20  ;
  endcase
end


//``````````````````````````````````````` soi_adder `````````````````````````````````
always @(*) begin
  case ( {func, qbit} )
    2'b00, 2'b01, 2'b11  :  soi_adder_din_a = { {8{soi_or_max_a[SOI_W - 1]}}, soi_or_max_a }  ;
    2'b10                :  soi_adder_din_a = { soi_or_max_a, 8'b0 }                          ;  // for 16-bit norm, << 8
  endcase
end

assign soi_adder_din_b = soi_or_max_b  ;

// dly = 1 
addsub_int u_soi_adder (
  .A    (  soi_adder_din_a    ),      // input wire [22 : 0] A
  .B    (  soi_adder_din_b    ),      // input wire [14 : 0] B
  .CLK  (  aclk               ),      // input wire CLK
  .ADD  (  func               ),      // 0 for sub, 1 for adder
  .S    (  soi_adder_dout     )       // output wire [23 : 0] S
);

assign sos_adder_cut2n = soi_adder_dout[QI_W:0]  ;

always @(posedge aclk) begin
  if ( rst )
    soi_adder_din_a_dly1 <= { (SOI_W + 8){1'b0} }  ;
  else
    soi_adder_din_a_dly1 <= soi_adder_din_a  ;
end

always @(posedge aclk) begin
  if ( rst )
    soi_adder_din_b_dly1 <= { SOI_W{1'b0} }  ;
  else
    soi_adder_din_b_dly1 <= soi_adder_din_b  ;
end
//===================================================================================



//``````````````````````````````````````` sos_adder `````````````````````````````````
always @(posedge aclk) begin
  if ( rst )
    sos_a_rs_din <= { (SOS_W + 16){1'b0} }  ;
  else begin
    case ( {func, qbit} )
      2'b00, 2'b01, 2'b11  :  sos_a_rs_din <= { 16'b0, sos_a }   ;
      2'b10                :  sos_a_rs_din <= { sos_a, 16'b0 }   ;  // for 16-bit norm, << 16
    endcase
  end
end

always @(posedge aclk) begin
  if ( rst )
    sos_b_rs_din <= { SOS_W{1'b0} }  ;
  else begin
    case ( {func, qbit} )
      2'b00                :  sos_b_rs_din <= { SOS_W{1'b0} }    ;  // for 16-bit softmax, it is 0
      2'b10, 2'b01, 2'b11  :  sos_b_rs_din <= sos_b              ;
    endcase
  end
end

always @(posedge aclk) begin
  if ( rst )
    sos_a_rs_dout  <=  { (SOS_W + 16){1'b0} }  ;
  else if ( func || !sos_adder_cut2n[QI_W] )
    sos_a_rs_dout  <=  sos_a_rs_din            ;
  else begin
    case ( sos_adder_cut2n )
      16'hFFFF  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   1    ;
      16'hFFFE  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   2    ;
      16'hFFFD  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   3    ;
      16'hFFFC  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   4    ;
      16'hFFFB  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   5    ;
      16'hFFFA  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   6    ;
      16'hFFF9  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   7    ;
      16'hFFF8  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   8    ;
      16'hFFF7  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   9    ;
      16'hFFF6  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   10   ;
      16'hFFF5  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   11   ;
      16'hFFF4  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   12   ;
      16'hFFF3  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   13   ;
      16'hFFF2  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   14   ;
      16'hFFF1  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   15   ;
      16'hFFF0  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   16   ;
      16'hFFEF  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   17   ;
      16'hFFEE  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   18   ;
      16'hFFED  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   19   ;
      16'hFFEC  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   20   ;
      16'hFFEB  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   21   ;
      16'hFFEA  :  sos_a_rs_dout  <=  sos_a_rs_din  >>   22   ;
      default   :  sos_a_rs_dout  <=  { (SOS_W + 16){1'b0} }  ;  
    endcase
  end
end

always @(posedge aclk) begin
  if ( rst )
    sos_b_rs_dout  <=  { SOS_W{1'b0} }  ;
  else if ( func || sos_adder_cut2n[QI_W] || (sos_adder_cut2n==16'h0) )
    sos_b_rs_dout  <=  sos_b_rs_din     ;
  else begin
    case ( sos_adder_cut2n )
      16'h01           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   1    ;
      16'h02           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   2    ;
      16'h03           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   3    ;
      16'h04           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   4    ;
      16'h05           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   5    ;
      16'h06           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   6    ;
      16'h07           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   7    ;
      16'h08           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   8    ;
      16'h09           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   9    ;
      16'h0A           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   10   ;
      16'h0B           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   11   ;
      16'h0C           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   12   ;
      16'h0D           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   13   ;
      16'h0E           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   14   ;
      16'h0F           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   15   ;
      16'h10           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   16   ;
      16'h11           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   17   ;
      16'h12           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   18   ;
      16'h13           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   19   ;
      16'h14           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   20   ;
      16'h15           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   21   ;
      16'h16           :  sos_b_rs_dout  <=  sos_b_rs_din  >>   22   ;
      default          :  sos_b_rs_dout  <=  { SOS_W{1'b0} }         ;  
    endcase
  end
end

// accumulated dly = 3
always @(posedge aclk) begin
  if ( rst )
    sos_adder_dout <= { (SOS_W + 17){1'b0} }  ;
  else
    sos_adder_dout <= sos_a_rs_dout + sos_b_rs_dout  ;  // unsigned
end
//===================================================================================



//```````````````````````````````` sos_adder_dout_vld ```````````````````````````````
always @(posedge aclk) begin
  if ( rst )
    din_exhs <= 1'b0  ;
  else
    din_exhs <= din_vld && din_rdy  ;
end

always @(posedge aclk) begin
  if ( rst )
    din_exhs_dly1 <= 1'b0  ;
  else
    din_exhs_dly1 <= din_exhs  ;
end

// accumulated dly = 3 
always @(posedge aclk) begin
  if ( rst )
    sos_adder_dout_vld <= 1'b0  ;
  else
    sos_adder_dout_vld <= din_exhs_dly1  ;
end
//===================================================================================



//``````````````````````````````````` controller 1 ```````````````````````````````````
// counters for din_vld && din_rdy
always @(posedge aclk) begin
  if ( rst )
    din_group_cnt <= 6'b0  ;
  else if ( start_pulse || din_vld && din_rdy && (din_group_cnt == 6'b1) )
    din_group_cnt <= group  ;
  else if ( din_vld && din_rdy )
    din_group_cnt <= din_group_cnt - 6'b1  ;  // unsigned
end

// din_tile_cnt
always @(posedge aclk) begin
  if ( rst )
    din_tile_cnt <= 32'b0  ;
  else if ( start_pulse || din_vld && din_rdy && (din_group_cnt == 6'b1) && (din_tile_cnt == 32'b1) )
    din_tile_cnt <= tile  ;
  else if ( din_vld && din_rdy && (din_group_cnt == 6'b1) )
    din_tile_cnt <= din_tile_cnt - 32'b1  ;  // unsigned
end

// din_rdy
always @(posedge aclk) begin
  if ( rst )
    din_rdy <= 1'b1  ;
  else if ( var_snap || mean_or_max_snap )
    din_rdy <= 1'b0  ;
  else if ( start_pulse || cunit[2] )
    din_rdy <= 1'b1  ;
  else if ( (din_group_cnt == 6'b1) && din_vld && din_rdy )
    din_rdy <= 1'b0  ;
  else if ( fifo_din_vld[6] && !sos_fifo_full || init )
    din_rdy <= 1'b1  ; 
end

// init
always @(posedge aclk) begin
  if ( rst )
    init <= 1'b1;
  else if ( start_pulse || din_vld && din_rdy && (din_group_cnt == 6'b1) && (din_tile_cnt == 32'b1) )
    init <= 1'b1;
  else if ( din_vld && din_rdy && (din_group_cnt == 6'b1) )
    init <= 1'b0;
end  

// init_dly1
always @(posedge aclk) begin
  if ( rst )
    init_dly1 <= 1'b1  ;
  else
    init_dly1 <= init  ;
end

// init_dly2
always @(posedge aclk) begin
  if ( rst )
    init_dly2 <= 1'b1  ;
  else
    init_dly2 <= init_dly1  ;
end

// init_dly3, for sos_tile_cnt
always @(posedge aclk) begin
  if ( rst )
    init_dly3 <= 1'b1  ;
  else
    init_dly3 <= init_dly2  ;
end

// sos_tile_cnt_dly1
always @(posedge aclk) begin
  if ( rst )
    din_tile_cnt_dly1 <= 32'b0  ;
  else if ( start_pulse )
    din_tile_cnt_dly1 <= tile  ;
  else
    din_tile_cnt_dly1 <= din_tile_cnt  ;
end

// din_tile_cnt_dly2
always @(posedge aclk) begin
  if ( rst )
    din_tile_cnt_dly2 <= 32'b0  ;
  else if ( start_pulse )
    din_tile_cnt_dly2 <= tile  ;
  else
    din_tile_cnt_dly2 <= din_tile_cnt_dly1  ;
end

// sos_tile_cnt
always @(posedge aclk) begin
  if ( rst )
    sos_tile_cnt <= 32'b0 ;
  else if ( start_pulse )
    sos_tile_cnt <= tile  ;
  else
    sos_tile_cnt <= din_tile_cnt_dly2  ;
end
//===================================================================================



//``````````````````````` fifo_din_vld and sos_accum_dout_vld ```````````````````````
always @(posedge aclk) begin
  if ( rst )
    fifo_din_vld[0] <= 1'b0  ;
  else
    fifo_din_vld[0] <= sos_adder_dout_vld && (sos_tile_cnt != 32'b1) ;
end

genvar i ;
generate
  for (i = 1; i < 7; i = i + 1) begin
    always @(posedge aclk) begin
      if ( rst )
        fifo_din_vld[i] <= 1'b0  ;
      else
        fifo_din_vld[i] <= fifo_din_vld[i-1]  ;
    end
  end
endgenerate

always @(posedge aclk) begin
  if ( rst )
    sos_accum_dout_vld[0] <= 1'b0  ;
  else
    sos_accum_dout_vld[0] <= sos_adder_dout_vld && (sos_tile_cnt == 32'b1) ;
end

generate
  for (i = 1; i < 7; i = i + 1) begin
    always @(posedge aclk) begin
      if ( rst )
        sos_accum_dout_vld[i] <= 1'b0  ;
      else
        sos_accum_dout_vld[i] <= sos_accum_dout_vld[i-1]  ;
    end
  end
endgenerate
//===================================================================================



//``````````````````````````````````````` soi_accum `````````````````````````````````
// soi_accum_din_a, accumulated dly = 2
always @(posedge aclk) begin
  if ( rst )
    soi_accum_din_a  <=  { (SOI_W + 9){1'b0} }  ;
  else if ( init_dly1 )
    soi_accum_din_a  <=  soi_adder_dout    ;
  else begin
    case ( soi_fifo_dout[35 : 32] )
      4'h0  :  soi_accum_din_a  <=  soi_adder_dout             ;
      4'h1  :  soi_accum_din_a  <=  soi_adder_dout  >>>   1    ;
      4'h2  :  soi_accum_din_a  <=  soi_adder_dout  >>>   2    ;
      4'h3  :  soi_accum_din_a  <=  soi_adder_dout  >>>   3    ;
      4'h4  :  soi_accum_din_a  <=  soi_adder_dout  >>>   4    ;
      4'h5  :  soi_accum_din_a  <=  soi_adder_dout  >>>   5    ;
      4'h6  :  soi_accum_din_a  <=  soi_adder_dout  >>>   6    ;
      4'h7  :  soi_accum_din_a  <=  soi_adder_dout  >>>   7    ;
      4'h8  :  soi_accum_din_a  <=  soi_adder_dout  >>>   8    ;
      4'h9  :  soi_accum_din_a  <=  soi_adder_dout  >>>   9    ;
      4'hA  :  soi_accum_din_a  <=  soi_adder_dout  >>>   10   ;
      4'hB  :  soi_accum_din_a  <=  soi_adder_dout  >>>   11   ;
      4'hC  :  soi_accum_din_a  <=  soi_adder_dout  >>>   12   ;
      4'hD  :  soi_accum_din_a  <=  soi_adder_dout  >>>   13   ;
      4'hE  :  soi_accum_din_a  <=  soi_adder_dout  >>>   14   ;
      4'hF  :  soi_accum_din_a  <=  soi_adder_dout  >>>   15   ;
    endcase
    end
end

// accumulated dly = 2
always @(posedge aclk) begin
  if ( rst )
    soi_accum_din_b <= 32'b0  ;
  else if ( init_dly1 )
    soi_accum_din_b <= 32'b0  ;
  else
    soi_accum_din_b <= soi_fifo_dout[31 : 0]  ;
end

// accumulated dly = 3
always @(posedge aclk) begin
  if ( rst )
    soi_accum_dout_tmp <= 33'b0  ;
  else
    soi_accum_dout_tmp <= soi_accum_din_a + soi_accum_din_b  ;  // signed
end

// accumulated dly = 4
always @(posedge aclk) begin
  if ( rst )
    soi_accum_dout <= 32'b0  ;
  else if ( ( soi_accum_dout_tmp[32:31] == 2'b01 ) || ( soi_accum_dout_tmp[32:31] == 2'b10 ) )
    soi_accum_dout <= soi_accum_dout_tmp[32:1]  ;
  else
    soi_accum_dout <= soi_accum_dout_tmp[31:0]  ;
end

always @(posedge aclk) begin
  if ( rst )
    soi_accum_cut2n_dly1 <= 4'b0  ;
  else
    soi_accum_cut2n_dly1 <= soi_fifo_dout[35 : 32]  ;
end

always @(posedge aclk) begin
  if ( rst )
    soi_accum_cut2n_dly2 <= 4'b0  ;
  else
    soi_accum_cut2n_dly2 <= soi_accum_cut2n_dly1  ;
end

always @(posedge aclk) begin
  if ( rst )
    soi_accum_cut2n_new <= 4'b0  ;
  else if ( init_dly3 )
    soi_accum_cut2n_new <= 4'b0  ;
  else if ( ( soi_accum_dout_tmp[32:31] == 2'b01 ) || ( soi_accum_dout_tmp[32:31] == 2'b10 ) )
    soi_accum_cut2n_new <= soi_accum_cut2n_dly2 + 4'b1  ;  // unsigned
end

fifo_w36d1k u_soi_fifo (
  .clk    (  aclk                                       ),         // input wire clk
  .rst    (  rst                                     ),         // input wire rst
  .din    (  { soi_accum_cut2n_new, soi_accum_dout }    ),         // input wire [35 : 0] din
  .wr_en  (  fifo_din_vld[0] && !soi_fifo_full          ),         // input wire wr_en
  .rd_en  (  !init_dly1 && din_exhs && !soi_fifo_empty  ),         // input wire rd_en
  .dout   (  soi_fifo_dout                              ),         // output wire [35 : 0] dout
  .full   (  soi_fifo_full                              ),         // output wire full
  .empty  (  soi_fifo_empty                             )          // output wire empty
);
//===================================================================================



//```````````````````````````````` cut2n_max for softmax ````````````````````````````
// cut2n_new, accumulated dly = 2
always @(posedge aclk) begin
  if ( rst )
    cut2n_new <= {QI_W{1'b0}}  ;
  else if ( sos_adder_cut2n[QI_W] )
    cut2n_new <= soi_adder_din_b_dly1[QI_W - 1 : 0];
  else
    cut2n_new <= soi_adder_din_a_dly1[QI_W - 1 : 0];
end

assign cut2n_sub = cut2n_fifo_dout - cut2n_new  ;

// cut2n_sub_dly1, accumulated dly = 3
always @(posedge aclk) begin
  if ( rst )
    cut2n_sub_dly1 <= { (QI_W+1){1'b0} }  ;
  else
    cut2n_sub_dly1 <= cut2n_sub;
end

// accumulated dly = 2
assign cut2n_fifo_din = ( init_dly2 || cut2n_sub[QI_W] ) ? cut2n_new : cut2n_fifo_dout  ;

// cut2n_fifo
fifo_w15d1k u_cut2n_fifo (
  .clk    (  aclk                                                               ), 
  .rst    (  rst                                                                ), 
  .din    (  cut2n_fifo_din                                                     ), 
  .wr_en  (  din_exhs_dly1 && (din_tile_cnt_dly2 != 32'b1) && !cut2n_fifo_full  ), 
  .rd_en  (  !init_dly2 && din_exhs_dly1 && !cut2n_fifo_empty                   ), 
  .dout   (  cut2n_fifo_dout                                                    ), 
  .full   (  cut2n_fifo_full                                                    ), 
  .empty  (  cut2n_fifo_empty                                                   )  
);   
//===================================================================================



//````````````````````````````````````` sos_accum ```````````````````````````````````
// sos_accum_din_a, accumulated dly = 4
// cut2n_sub_dly1 is used for softmax
always @(posedge aclk) begin
  if ( rst )
    sos_accum_din_a <= { (SOI_W + 17){1'b0} }  ;
  else if ( init_dly3 || func || cut2n_sub_dly1[QI_W] || (cut2n_sub_dly1==16'h0) )
    sos_accum_din_a  <=  sos_adder_dout        ; 
  else begin
    case ( cut2n_sub_dly1 )
      16'h01           :  sos_accum_din_a  <=  sos_adder_dout  >>   1    ;
      16'h02           :  sos_accum_din_a  <=  sos_adder_dout  >>   2    ;
      16'h03           :  sos_accum_din_a  <=  sos_adder_dout  >>   3    ;
      16'h04           :  sos_accum_din_a  <=  sos_adder_dout  >>   4    ;
      16'h05           :  sos_accum_din_a  <=  sos_adder_dout  >>   5    ;
      16'h06           :  sos_accum_din_a  <=  sos_adder_dout  >>   6    ;
      16'h07           :  sos_accum_din_a  <=  sos_adder_dout  >>   7    ;
      16'h08           :  sos_accum_din_a  <=  sos_adder_dout  >>   8    ;
      16'h09           :  sos_accum_din_a  <=  sos_adder_dout  >>   9    ;
      16'h0A           :  sos_accum_din_a  <=  sos_adder_dout  >>   10   ;
      16'h0B           :  sos_accum_din_a  <=  sos_adder_dout  >>   11   ;
      16'h0C           :  sos_accum_din_a  <=  sos_adder_dout  >>   12   ;
      16'h0D           :  sos_accum_din_a  <=  sos_adder_dout  >>   13   ;
      16'h0E           :  sos_accum_din_a  <=  sos_adder_dout  >>   14   ;
      16'h0F           :  sos_accum_din_a  <=  sos_adder_dout  >>   15   ;
      16'h10           :  sos_accum_din_a  <=  sos_adder_dout  >>   16   ;
      16'h11           :  sos_accum_din_a  <=  sos_adder_dout  >>   17   ;
      16'h12           :  sos_accum_din_a  <=  sos_adder_dout  >>   18   ;
      16'h13           :  sos_accum_din_a  <=  sos_adder_dout  >>   19   ;
      16'h14           :  sos_accum_din_a  <=  sos_adder_dout  >>   20   ;
      16'h15           :  sos_accum_din_a  <=  sos_adder_dout  >>   21   ;
      16'h16           :  sos_accum_din_a  <=  sos_adder_dout  >>   22   ;
      default          :  sos_accum_din_a  <=  { (SOI_W + 17){1'b0} }    ;
    endcase
    end
end

// sos_accum_din_b
always @(posedge aclk) begin
  if ( rst )
    sos_accum_din_b <= 64'b0  ;
  else if ( init_dly3 )
    sos_accum_din_b <= 64'b0  ;
  else if ( func || !cut2n_sub_dly1[QI_W] )
    sos_accum_din_b <= sos_fifo_dout ;
  else begin
    case ( cut2n_sub_dly1 )
      16'hFFFF  :  sos_accum_din_b  <=  sos_fifo_dout  >>   1    ;
      16'hFFFE  :  sos_accum_din_b  <=  sos_fifo_dout  >>   2    ;
      16'hFFFD  :  sos_accum_din_b  <=  sos_fifo_dout  >>   3    ;
      16'hFFFC  :  sos_accum_din_b  <=  sos_fifo_dout  >>   4    ;
      16'hFFFB  :  sos_accum_din_b  <=  sos_fifo_dout  >>   5    ;
      16'hFFFA  :  sos_accum_din_b  <=  sos_fifo_dout  >>   6    ;
      16'hFFF9  :  sos_accum_din_b  <=  sos_fifo_dout  >>   7    ;
      16'hFFF8  :  sos_accum_din_b  <=  sos_fifo_dout  >>   8    ;
      16'hFFF7  :  sos_accum_din_b  <=  sos_fifo_dout  >>   9    ;
      16'hFFF6  :  sos_accum_din_b  <=  sos_fifo_dout  >>   10   ;
      16'hFFF5  :  sos_accum_din_b  <=  sos_fifo_dout  >>   11   ;
      16'hFFF4  :  sos_accum_din_b  <=  sos_fifo_dout  >>   12   ;
      16'hFFF3  :  sos_accum_din_b  <=  sos_fifo_dout  >>   13   ;
      16'hFFF2  :  sos_accum_din_b  <=  sos_fifo_dout  >>   14   ;
      16'hFFF1  :  sos_accum_din_b  <=  sos_fifo_dout  >>   15   ;
      16'hFFF0  :  sos_accum_din_b  <=  sos_fifo_dout  >>   16   ;
      16'hFFEF  :  sos_accum_din_b  <=  sos_fifo_dout  >>   17   ;
      16'hFFEE  :  sos_accum_din_b  <=  sos_fifo_dout  >>   18   ;
      16'hFFED  :  sos_accum_din_b  <=  sos_fifo_dout  >>   19   ;
      16'hFFEC  :  sos_accum_din_b  <=  sos_fifo_dout  >>   20   ;
      16'hFFEB  :  sos_accum_din_b  <=  sos_fifo_dout  >>   21   ;
      16'hFFEA  :  sos_accum_din_b  <=  sos_fifo_dout  >>   22   ;
      default   :  sos_accum_din_b  <=  64'b0                    ;
    endcase
  end
end

// dly = 6
add_int64 u_adder_int64 (
  .A      (   { {(47-SOS_W){1'b0}}, sos_accum_din_a }   ),        // input wire [63 : 0] A
  .B      (   sos_accum_din_b                           ),        // input wire [63 : 0] B
  .CLK    (   aclk                                      ),        // input wire CLK
  .C_IN   (   1'b0                                      ),        // input wire C_IN
  .S      (   sos_accum_dout                            )         // output wire [63 : 0] S
);

fifo_w64d1k u_sos_fifo (
  .clk    (  aclk                                                 ),   // input wire clk
  .rst    (  rst                                                  ),   // input wire rst
  .din    (  sos_accum_dout                                       ),   // input wire [63 : 0] din
  .wr_en  (  fifo_din_vld[6] && !sos_fifo_full                    ),   // input wire wr_en
  .rd_en  (  !init_dly3 && sos_adder_dout_vld && !sos_fifo_empty  ),   // input wire rd_en
  .dout   (  sos_fifo_dout                                        ),   // output wire [63 : 0] dout
  .full   (  sos_fifo_full                                        ),   // output wire full
  .empty  (  sos_fifo_empty                                       )    // output wire empty
);     
//===================================================================================



//``````````````````````````````````````` mean ``````````````````````````````````````
// inv_n is Q2.23, 1/n = inv_n * 2^ (-inv_n_cut2n)
// P is Q34.23, dly of DSP = 4, accumulated dly = 8
mult_32x25 u_mean (
  .CLK  (  aclk            ),      // input wire CLK
  .A    (  soi_accum_dout  ),      // input wire [31 : 0] A, signed
  .B    (  inv_n           ),      // input wire [24 : 0] B, signed
  .P    (  mean_tmp        )       // output wire [56 : 0] P, signed
);

// soi_accum_cut2n_new and inv_n_cut2n are in [0, 15]
// mean_cut2n is in [-15, 15]
always @(posedge aclk) begin
  if ( rst )
    mean_cut2n <= 5'b0  ;
  else
    mean_cut2n <= { 1'b0, soi_accum_cut2n_new } - { 1'b0, inv_n_cut2n }  ;  
end

always @(posedge aclk) begin
  if ( rst )
    mean_cut2n_dly1 <= 5'b0  ;
  else
    mean_cut2n_dly1 <= mean_cut2n  ;
end

always @(posedge aclk) begin
  if ( rst )
    mean_cut2n_dly2 <= 5'b0  ;
  else
    mean_cut2n_dly2 <= mean_cut2n_dly1  ;
end

always @(posedge aclk) begin
  if ( rst )
    mean_cut2n_dly3 <= 5'b0  ;
  else
    mean_cut2n_dly3 <= mean_cut2n_dly2  ;
end

// mean_tmp is Q34.23
// mean_tmp_part is Q17.9
// mean is Q16.9, accumulated dly = 9
always @(posedge aclk) begin
  if ( rst )
    mean_tmp_part <= 26'b0  ;
  else begin
    case( mean_cut2n_dly3 )
      5'h00  :  mean_tmp_part  <=  mean_tmp[39 : 14]       ;
      5'h01  :  mean_tmp_part  <=  mean_tmp[38 : 13]       ;
      5'h02  :  mean_tmp_part  <=  mean_tmp[37 : 12]       ;
      5'h03  :  mean_tmp_part  <=  mean_tmp[36 : 11]       ;
      5'h04  :  mean_tmp_part  <=  mean_tmp[35 : 10]       ;
      5'h05  :  mean_tmp_part  <=  mean_tmp[34 :  9]       ;
      5'h06  :  mean_tmp_part  <=  mean_tmp[33 :  8]       ;
      5'h07  :  mean_tmp_part  <=  mean_tmp[32 :  7]       ;
      5'h08  :  mean_tmp_part  <=  mean_tmp[31 :  6]       ;
      5'h09  :  mean_tmp_part  <=  mean_tmp[30 :  5]       ;
      5'h0A  :  mean_tmp_part  <=  mean_tmp[29 :  4]       ;
      5'h0B  :  mean_tmp_part  <=  mean_tmp[28 :  3]       ;
      5'h0C  :  mean_tmp_part  <=  mean_tmp[27 :  2]       ;
      5'h0D  :  mean_tmp_part  <=  mean_tmp[26 :  1]       ;
      5'h0E  :  mean_tmp_part  <=  mean_tmp[25 :  0]       ;
      5'h0F  :  mean_tmp_part  <= {mean_tmp[24 :  0], 1'b0};
      5'h10  :  mean_tmp_part  <=  mean_tmp[55 : 30]       ;
      5'h11  :  mean_tmp_part  <=  mean_tmp[54 : 29]       ;
      5'h12  :  mean_tmp_part  <=  mean_tmp[53 : 28]       ;
      5'h13  :  mean_tmp_part  <=  mean_tmp[52 : 27]       ;
      5'h14  :  mean_tmp_part  <=  mean_tmp[51 : 26]       ;
      5'h15  :  mean_tmp_part  <=  mean_tmp[50 : 25]       ;
      5'h16  :  mean_tmp_part  <=  mean_tmp[49 : 24]       ;
      5'h17  :  mean_tmp_part  <=  mean_tmp[48 : 23]       ;
      5'h18  :  mean_tmp_part  <=  mean_tmp[47 : 22]       ;
      5'h19  :  mean_tmp_part  <=  mean_tmp[46 : 21]       ;
      5'h1A  :  mean_tmp_part  <=  mean_tmp[45 : 20]       ;
      5'h1B  :  mean_tmp_part  <=  mean_tmp[44 : 19]       ;
      5'h1C  :  mean_tmp_part  <=  mean_tmp[43 : 18]       ;
      5'h1D  :  mean_tmp_part  <=  mean_tmp[42 : 17]       ;
      5'h1E  :  mean_tmp_part  <=  mean_tmp[41 : 16]       ;
      5'h1F  :  mean_tmp_part  <=  mean_tmp[40 : 15]       ;
    endcase
  end
end

assign  mean = (mean_tmp_part[25:9] == {1'b1, 16'h7FFF}) ?  { 16'h8000, 9'b0 } : mean_tmp_part[24:0]  ;
//===================================================================================



//````````````````````````````````````` variance ````````````````````````````````````
// soi_accum_dout_dly
always @(posedge aclk) begin
  if ( rst )
    soi_accum_dout_dly[0] <= 32'b0  ;
  else
    soi_accum_dout_dly[0] <= soi_accum_dout  ;
end

// for soi_accum_dout_dly[4], accumulated dly = 9
generate
  for (i = 1; i < 5; i = i + 1) begin
    always @(posedge aclk) begin
      if ( rst )
        soi_accum_dout_dly[i] <= 32'b0  ;
      else
        soi_accum_dout_dly[i] <= soi_accum_dout_dly[i-1]  ;
    end
  end
endgenerate

// Q48.9, accumulated dly = 13
mult_32x25 u_mean_x_sum (
  .CLK  (  aclk                   ),      // input wire CLK
  .A    (  soi_accum_dout_dly[4]  ),      // input wire [31 : 0] A, signed
  .B    (  mean                   ),      // input wire [24 : 0] B, signed
  .P    (  mean_x_sum_tmp         )       // output wire [56 : 0] P, nsigned
);

// soi_accum_cut2n_new_dly
always @(posedge aclk) begin
  if ( rst )
    soi_accum_cut2n_new_dly[0] <= 4'b0  ;
  else
    soi_accum_cut2n_new_dly[0] <= soi_accum_cut2n_new  ;
end

// accumulated dly = 4 + 9
generate
  for (i = 1; i < 9; i = i + 1) begin
    always @(posedge aclk) begin
      if ( rst )
        soi_accum_cut2n_new_dly[i] <= 4'b0  ;
      else
        soi_accum_cut2n_new_dly[i] <= soi_accum_cut2n_new_dly[i-1]  ;
    end
  end
endgenerate

// mean_x_sum is Q63.9, accumulated dly = 14
always @(posedge aclk) begin
  if ( rst )
    mean_x_sum <= 72'b0  ;
  else begin
    mean_x_sum <= mean_x_sum_tmp << soi_accum_cut2n_new_dly[8] ;
  end
end

// sos_accum_dout_dly
always @(posedge aclk) begin
  if ( rst )
    sos_accum_dout_dly[0] <= 64'b0  ;
  else
    sos_accum_dout_dly[0] <= sos_accum_dout  ;
end

// accumulated dly = 3 + 1 + 6 + 4
generate
  for (i = 1; i < 4; i = i + 1) begin
    always @(posedge aclk) begin
      if ( rst )
        sos_accum_dout_dly[i] <= 64'b0  ;
      else
        sos_accum_dout_dly[i] <= sos_accum_dout_dly[i-1]  ;
    end
  end
endgenerate

// S = A - B, dly = 7, accumulated dly = 21
add_s74_s72 u_add_s74_s72 (
  .A     (  { 1'b0, sos_accum_dout_dly[3], 9'b0 }  ),        // input wire [73 : 0] A
  .B     (  mean_x_sum                             ),        // input wire [71 : 0] B
  .CLK   (  aclk                                   ),        // input wire CLK
  .S     (  m_n_tmp                                )         // output wire [73 : 0] S
);

// m_n > 0
always @(posedge aclk) begin
  if ( rst )
    m_n <= 64'b0   ;
  else if (m_n_tmp[73])
    m_n <= 64'h40   ;
  else
    m_n <= m_n_tmp[66:3] ;  // Q55.6
end

// sos_accum_dout_vld_dly
always @(posedge aclk) begin
  if ( rst )
    sos_accum_dout_vld_dly[0] <= 1'b0  ;
  else
    sos_accum_dout_vld_dly[0] <= sos_accum_dout_vld[6]  ;
end

generate
  for (i = 1; i < 12; i = i + 1) begin
    always @(posedge aclk) begin
      if ( rst )
        sos_accum_dout_vld_dly[i] <= 1'b0  ;
      else
        sos_accum_dout_vld_dly[i] <= sos_accum_dout_vld_dly[i-1]  ;
    end
  end
endgenerate

fix_to_float u_fix_to_float (
  .aclk                  (  aclk                        ),    // input wire aclk
  .s_axis_a_tvalid       (  sos_accum_dout_vld_dly[11]  ),    // input wire s_axis_a_tvalid
  .s_axis_a_tdata        (  m_n                         ),    // input wire [63 : 0] s_axis_a_tdata
  .m_axis_result_tvalid  (  var_vld                     ),    // output wire m_axis_result_tvalid
  .m_axis_result_tdata   (  variance                    )     // output wire [23 : 0] m_axis_result_tdata
);
//===================================================================================



//``````````````````````````````````` mean_or_max ```````````````````````````````````
always @(posedge aclk) begin
  if ( rst )
    mean_or_max <= 25'b0  ;
  else if ( func)
    mean_or_max <= mean  ;
  else if ( tile == 32'b1 )
    mean_or_max <= { {(25-QI_W){cut2n_new[QI_W-1]}}, cut2n_new[QI_W-1:0] } ;
  else
    mean_or_max <= cut2n_sub[QI_W] ? { {(25-QI_W){cut2n_new[QI_W-1]}}, cut2n_new[QI_W-1:0] } : { {(25-QI_W){cut2n_fifo_dout[QI_W-1]}}, cut2n_fifo_dout[QI_W-1:0] };
end

always @(posedge aclk) begin
  if ( rst )
    mean_or_max_vld <= 1'b0  ;
  else if ( func )
    mean_or_max_vld <= sos_accum_dout_vld[5]  ;
  else
    mean_or_max_vld <= din_exhs_dly1 && (din_tile_cnt_dly2 == 32'b1)  ;
  end
//===================================================================================

endmodule