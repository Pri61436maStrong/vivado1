`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/31 14:56:47
// Design Name: 
// Module Name: carmack
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
// Revision 1.00 - For new scheme
// Revision 1.10 - custom float-point: 1_7_8 -> 1_7_16
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module carmack #(
  parameter CFP_W = 24  // bit width of custom floating-point number
)(
  input                          aclk           ,
  input                          rst            ,
  input                          qbit           ,
  input                          func           ,      // 1 for layernorm, 0 for softmax
  input       [CFP_W-1 : 0]      var_cfp16      ,      // custom floating-point
  input                          var_cfp16_vld  ,
  input       [CFP_W-1 : 0]      yqs_coef       ,      // custom floating-point
  output      [     27 : 0]      coef_norm      ,      // {coef_norm_cut2n, coef_norm_frac}
  output                         coef_vld
);


// pipeline stage of cfp16 multiplier
localparam MULT_DLY = 2   ; 
// pipeline stage of cfp16 subtractor
localparam SUB_DLY  = 4   ;


wire              [CFP_W-1:0]    magic_num                       ;
reg                              var_cfp16_vld_dly1              ;
wire              [CFP_W-1:0]    var_cfp16_half                  ;
wire              [6:0]          var_cfp16_half_exp              ;
reg               [CFP_W-1:0]    var_cfp16_half_sync             ;
wire              [CFP_W-1:0]    var_cfp16_half_dly              ;
wire              [CFP_W-1:0]    newton_ini                      ;   
wire              [CFP_W-1:0]    newton_half_x_ini               ;
wire                             newton_half_x_ini_vld           ;
wire              [CFP_W-1:0]    newton_sub                      ;
wire                             newton_sub_vld                  ;
wire              [CFP_W-1:0]    newton_sub_2nd                  ;
wire                             newton_sub_2nd_vld              ;
wire              [CFP_W-1:0]    newton_mult                     ;
wire                             newton_mult_vld                 ;
wire              [CFP_W-1:0]    newton_coef                     ;
wire                             newton_coef_vld                 ;
wire              [CFP_W-1:0]    newton_coef_2nd                 ;
wire                             newton_coef_2nd_vld             ;
reg               [CFP_W-1:0]    newton_ini_sync                 ;
wire              [CFP_W-1:0]    dout_carmack                    ;
wire              [CFP_W-1:0]    dout_carmack_dly                ;
wire                             dout_carmack_vld                ;
reg               [CFP_W-1:0]    newton_ini_dly  [MULT_DLY-1:0]  ;
wire              [CFP_W-1:0]    newton_ini_mult_dly             ;
reg               [CFP_W-1:0]    newton_mult_dly [SUB_DLY-1:0]   ;
wire              [CFP_W-1:0]    mult_dout                       ;
wire                             mult_vld                        ;
wire              [31 : 0]       coef_norm_tmp                   ;
wire                             coef_tmp_vld                    ; 
wire              [CFP_W-1:0]    newton_ini_2nd                  ;   
wire                             newton_ini_2nd_vld              ;   
wire                             fifo_u0_full                    ;
wire                             fifo_u0_empty                   ;
wire                             fifo_u1_full                    ;
wire                             fifo_u1_empty                   ;
reg               [24 : 0]       coef_norm_frac                  ;
reg               [ 2 : 0]       coef_norm_cut2n                 ;
wire                             coef_ovf                        ;
//_____________________________ carmack ____________________________


// gets 0.5 * var, in the format cfp16
assign var_cfp16_half_exp = var_cfp16[CFP_W-2:CFP_W-8] - 7'b1 ;
assign var_cfp16_half     = func ? {var_cfp16[CFP_W-1], var_cfp16_half_exp, var_cfp16[CFP_W-9:0]} : var_cfp16 ;

// 0.5x
always @(posedge aclk) begin
  if (rst)
    var_cfp16_half_sync <= {CFP_W{1'b0}};
  else
    var_cfp16_half_sync <= var_cfp16_half;
end

fifo_w24d32_dram fifo_w24d32_dram_u0 (
  .clk   (  aclk                 ), 
  .srst  (  rst                  ), 
  .din   (  var_cfp16_half_sync  ), 
  .wr_en (  var_cfp16_vld_dly1   ), 
  .rd_en (  dout_carmack_vld     ), 
  .dout  (  var_cfp16_half_dly   ), 
  .full  (  fifo_u0_full         ), 
  .empty (  fifo_u0_empty        )  
);

// Gets an initial value for Newton-Raphson method  
assign magic_num = func ? 24'h5E6EB4 : 24'h7DE8F0 ;
assign newton_ini = func ? (magic_num - {1'b0, var_cfp16[CFP_W-1:1]}) : (magic_num - var_cfp16)  ;    // fixed-point operation

// newton_ini
always @(posedge aclk) begin
  if (rst)
    newton_ini_sync <= {CFP_W{1'b0}};
  else
    newton_ini_sync <= newton_ini;
end

// when var_cfp16_vld_dly1, var_cfp16_half_sync and newton_ini_sync are valid
always @(posedge aclk) begin
  if (rst)
    var_cfp16_vld_dly1 <= 1'b0;
  else
    var_cfp16_vld_dly1 <= var_cfp16_vld;
end

// newton_ini_sync * var_cfp16_half_sync
// delay 6 cycles
fp16_mult u_mult_1 (
  .aclk                  (  aclk                   ),           
  .s_axis_a_tvalid       (  var_cfp16_vld_dly1     ),           
  .s_axis_a_tdata        (  var_cfp16_half_sync    ),  
  .s_axis_b_tvalid       (  var_cfp16_vld_dly1     ),  
  .s_axis_b_tdata        (  newton_ini_sync        ),  
  .m_axis_result_tvalid  (  newton_half_x_ini_vld  ), 
  .m_axis_result_tdata   (  newton_half_x_ini      )   
);

// Delay MULT_DLY cycles
genvar i;
generate
  for (i = 0; i < MULT_DLY; i = i + 1) begin: gen_newton_ini_dly 
    always @(posedge aclk) begin
      if (rst)
        newton_ini_dly[i] <= {CFP_W{1'b0}};
      else begin
        if (i==0)
          newton_ini_dly[i] <= newton_ini_sync;
        else
          newton_ini_dly[i] <= newton_ini_dly[i-1];
      end
    end
  end
endgenerate

// (var_cfp16_half_sync * newton_ini_sync) * newton_ini_sync
fp16_mult get_sub (
  .aclk                  (  aclk                        ), 
  .s_axis_a_tvalid       (  newton_half_x_ini_vld       ),  
  .s_axis_a_tdata        (  newton_half_x_ini           ),  
  .s_axis_b_tvalid       (  newton_half_x_ini_vld       ),  
  .s_axis_b_tdata        (  func ? newton_ini_dly[MULT_DLY-1] : 24'h3F0000 ),  
  .m_axis_result_tvalid  (  newton_sub_vld              ),  
  .m_axis_result_tdata   (  newton_sub                  )   
);

// Gets (1.5F - var_cfp16_half_sync * newton_ini_sync * newton_ini_sync)
// delay 8 cycles
fp16_sub u_fp16_sub (
  .aclk                  (  aclk             ),  
  .s_axis_a_tvalid       (  1'b1             ),  
  .s_axis_a_tdata        (  func ? 24'h3F8000 : 24'h400000  ),  // 1.5F or 2.0F
  .s_axis_b_tvalid       (  newton_sub_vld   ),  
  .s_axis_b_tdata        (  newton_sub       ),  
  .m_axis_result_tvalid  (  newton_coef_vld  ),  
  .m_axis_result_tdata   (  newton_coef      )   
);

fifo_w24_dram fifo_w24_dram_u0 (
  .clk   (  aclk                        ), 
  .srst  (  rst                         ), 
  .din   (  newton_ini_dly[MULT_DLY-1]  ), 
  .wr_en (  newton_half_x_ini_vld       ), 
  .rd_en (  newton_coef_vld             ), 
  .dout  (  newton_ini_mult_dly         ), 
  .full  (  fifo_u1_full                ), 
  .empty (  fifo_u1_empty               )  
);

// The last step of carmack
fp16_mult get_result (
  .aclk                  (  aclk                 ),  
  .s_axis_a_tvalid       (  newton_coef_vld      ),  
  .s_axis_a_tdata        (  newton_coef          ),  
  .s_axis_b_tvalid       (  newton_coef_vld      ),  
  .s_axis_b_tdata        (  newton_ini_mult_dly  ),  
  .m_axis_result_tvalid  (  dout_carmack_vld     ),  
  .m_axis_result_tdata   (  dout_carmack         )   
);

//---------------------------- second netwon iteration ----------------------------
defer_unit #(
  .WIDTH  (  CFP_W     )  ,
  .DLY_T  (  MULT_DLY  )
) defer_unit_u0 (
  .clk    (  aclk              ) ,
  .rst    (  rst               ) ,
  .din    (  dout_carmack      ) ,
  .dout   (  dout_carmack_dly  )
);

fp16_mult get_newton_ini_2nd (
  .aclk                  (  aclk                ),  
  .s_axis_a_tvalid       (  dout_carmack_vld    ),  
  .s_axis_a_tdata        (  dout_carmack        ),  
  .s_axis_b_tvalid       (  dout_carmack_vld    ),  
  .s_axis_b_tdata        (  var_cfp16_half_dly  ),  
  .m_axis_result_tvalid  (  newton_ini_2nd_vld  ),  
  .m_axis_result_tdata   (  newton_ini_2nd      )   
);

fp16_mult get_newton_sub_2nd (
  .aclk                  (  aclk                ),  
  .s_axis_a_tvalid       (  newton_ini_2nd_vld  ),  
  .s_axis_a_tdata        (  newton_ini_2nd      ),  
  .s_axis_b_tvalid       (  newton_ini_2nd_vld  ),  
  .s_axis_b_tdata        (  func ? dout_carmack_dly : 24'h3F0000  ),  
  .m_axis_result_tvalid  (  newton_sub_2nd_vld  ),  
  .m_axis_result_tdata   (  newton_sub_2nd      )   
);

fp16_sub u_fp16_sub_2nd (
  .aclk                  (  aclk                 ),  
  .s_axis_a_tvalid       (  1'b1                 ),  
  .s_axis_a_tdata        (  func ? 24'h3F8000 : 24'h400000  ),  // 1.5F or 2.0F
  .s_axis_b_tvalid       (  newton_sub_2nd_vld   ),  
  .s_axis_b_tdata        (  newton_sub_2nd       ),  
  .m_axis_result_tvalid  (  newton_coef_2nd_vld  ),  
  .m_axis_result_tdata   (  newton_coef_2nd      )   
);

// yqs_coef * newton_ini_dly[MULT_DLY-1]
fp16_mult get_mult (
  .aclk                  (  aclk                ),  
  .s_axis_a_tvalid       (  newton_ini_2nd_vld  ),  
  .s_axis_a_tdata        (  dout_carmack_dly    ),  
  .s_axis_b_tvalid       (  1'b1                ),  
  .s_axis_b_tdata        (  yqs_coef            ),  
  .m_axis_result_tvalid  (  newton_mult_vld     ),  
  .m_axis_result_tdata   (  newton_mult         )   
);

// Delay SUB_DLY cycles
generate
  for (i = 0; i < SUB_DLY; i = i + 1) begin: gen_newton_mult_dly
    always @(posedge aclk) begin
      if (rst)
        newton_mult_dly[i] <= {CFP_W{1'b0}};
      else begin
        if (i==0)
          newton_mult_dly[i] <= newton_mult;
        else
          newton_mult_dly[i] <= newton_mult_dly[i-1];
      end
    end
  end
endgenerate

fp16_mult get_result_2nd (
  .aclk                  (  aclk                        ),  
  .s_axis_a_tvalid       (  newton_coef_2nd_vld         ),  
  .s_axis_a_tdata        (  newton_coef_2nd             ),  
  .s_axis_b_tvalid       (  newton_coef_2nd_vld         ),  
  .s_axis_b_tdata        (  newton_mult_dly[SUB_DLY-1]  ),  
  .m_axis_result_tvalid  (  mult_vld                    ),  
  .m_axis_result_tdata   (  mult_dout                   )   
);
//---------------------------- second netwon iteration ----------------------------


fp_to_fix u_fp_to_fix (
  .aclk                  (  aclk           ), 
  .s_axis_a_tvalid       (  mult_vld       ), 
  .s_axis_a_tdata        (  mult_dout      ), 
  .m_axis_result_tvalid  (  coef_tmp_vld   ),  
  .m_axis_result_tdata   (  coef_norm_tmp  )    // Q16.16
);

assign coef_ovf = |coef_norm_tmp[31:24];

always @( posedge aclk ) begin
  if ( rst )
    coef_norm_frac <= 25'b0  ;
  else if ( qbit && !func && coef_ovf )
    coef_norm_frac <= 25'h0FF_FFFF  ;  // for 8-bit softmax, coef_norm_tmp > 255
  else begin
    casez ( coef_norm_tmp[31:24] )
      8'b0000_0000  :  coef_norm_frac  <=  coef_norm_tmp[24:0]    ;  
      8'b0000_0001  :  coef_norm_frac  <=  coef_norm_tmp[25:1]    ;
      8'b0000_001?  :  coef_norm_frac  <=  coef_norm_tmp[26:2]    ;
      8'b0000_01??  :  coef_norm_frac  <=  coef_norm_tmp[27:3]    ;
      8'b0000_1???  :  coef_norm_frac  <=  coef_norm_tmp[28:4]    ;
      8'b0001_????  :  coef_norm_frac  <=  coef_norm_tmp[29:5]    ;
      8'b001?_????  :  coef_norm_frac  <=  coef_norm_tmp[30:6]    ;
      default       :  coef_norm_frac  <=  coef_norm_tmp[31:7]    ;
    endcase
  end
end

always @( posedge aclk ) begin
  if ( rst )
    coef_norm_cut2n <= 3'b0  ;
  else if ( qbit && !func && coef_ovf )
    coef_norm_cut2n <= 3'b0  ;
  else begin
    casez ( coef_norm_tmp[31:24] )
      8'b0000_0000  :  coef_norm_cut2n  <=  3'h0   ;  
      8'b0000_0001  :  coef_norm_cut2n  <=  3'h1   ;
      8'b0000_001?  :  coef_norm_cut2n  <=  3'h2   ;
      8'b0000_01??  :  coef_norm_cut2n  <=  3'h3   ;
      8'b0000_1???  :  coef_norm_cut2n  <=  3'h4   ;
      8'b0001_????  :  coef_norm_cut2n  <=  3'h5   ;
      8'b001?_????  :  coef_norm_cut2n  <=  3'h6   ;
      default       :  coef_norm_cut2n  <=  3'h7   ;
    endcase
  end
end

assign coef_norm = {coef_norm_cut2n, coef_norm_frac}  ;

defer_unit #(
  .WIDTH  (  1  )  ,
  .DLY_T  (  1  )
) defer_unit_u1 (
  .clk    (  aclk          ) ,
  .rst    (  rst           ) ,
  .din    (  coef_tmp_vld  ) ,
  .dout   (  coef_vld      )
);
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

endmodule
    