`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/14 17:00:15
// Design Name: 
// Module Name: inst_ctrl
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
// Revision 1.00 - norm hardop
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module inst_ctrl (
  input                               ddr_clk            ,
  input                               ddr_rst            ,  // ddr_clk

  // interfaces with norm_dma, under ddr_clk domain  
//output               [ 31 : 0]      ddr_araddr_base    , 
//output               [ 31 : 0]      ddr_araddr_last    , 
//output               [ 31 : 0]      ddr_awaddr_base    , 
//output               [ 31 : 0]      ddr_awaddr_last    , 
  input                               core_start         ,  // instruction registers are done, level signal
  input                [511 : 0]      inst_rdata         ,  // reads instruction from DDR 
  input                               inst_vld           ,  // instruction is valid 
  output                              inst_rdy           ,                

  // interfaces with norm_core, under ddr_clk domain  
  output               [ 31 : 0]      tiles              ,
  output               [ 31 : 0]      pieces             ,
  output               [ 31 : 0]      rest_channels      ,
  output               [ 31 : 0]      ceil_a             ,
  output               [ 31 : 0]      ceil_b             ,
  output               [ 31 : 0]      yqs_coef           ,  // cfp16 format
  output               [ 31 : 0]      xqs_coef           ,  
  output               [ 31 : 0]      mean_coef          ,
  output                              func               ,
  output                              qbit               ,
  output                              cache              ,
  output                              uneven             ,
  output               [  2 : 0]      cunit              ,  // cu = 2 ** cunit 
  output               [ 31 : 0]      accum_unit_ceil    ,
  output               [ 31 : 0]      accum_unit_num     
);   


reg       [511 : 0]      inst_driver ;


//____________________ instruction registers, ddr_clk ____________________
assign inst_rdy = !core_start  ;

always @(posedge ddr_clk) begin
  if ( ddr_rst )
    inst_driver <= 512'b0;
  else if ( inst_vld )
    inst_driver <= inst_rdata;
end

assign  ddr_araddr_base  =   inst_driver[ 31 :   0] ;  // Function: base address for reading DDR
assign  ddr_araddr_last  =   inst_driver[ 63 :  32] ;  // Function: last address for reading DDR
assign  ddr_awaddr_base  =   inst_driver[ 95 :  64] ;  // Function: base address for writing DDR
assign  ddr_awaddr_last  =   inst_driver[127 :  96] ;  // Function: last address for writing DDR
assign  tiles            =   inst_driver[159 : 128] ;
assign  pieces           =   inst_driver[191 : 160] ;
assign  rest_channels    =   inst_driver[223 : 192] ;
assign  ceil_a           =   inst_driver[255 : 224] ;
assign  ceil_b           =   inst_driver[287 : 256] ;
//                           inst_driver[319 : 288] ;
assign  yqs_coef         =   inst_driver[351 : 320] ;  // Function: relating to yqs, used by carmack module
assign  xqs_coef         =   inst_driver[383 : 352] ;  // xqs
assign  mean_coef        =   inst_driver[415 : 384] ;  // - 1/ n
assign  func             =   inst_driver[416 : 416] ;  // 1 for norm, 0 for softmax
assign  qbit             =   inst_driver[417 : 417] ;  // 1 for 8-bit, 0 for 16-bit
assign  cache            =   inst_driver[418 : 418] ;
assign  uneven           =   inst_driver[419 : 419] ;
assign  cunit            =   inst_driver[422 : 420] ;  // cu = 2 ** cunit 
//                           inst_driver[447 : 423] ; 
assign  accum_unit_ceil  =   inst_driver[479 : 448] ;
assign  accum_unit_num   =   inst_driver[511 : 480] ;
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

endmodule
