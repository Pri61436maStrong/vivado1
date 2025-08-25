// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Aug 30 18:37:58 2024
// Host        : aic-ts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/FPGA_workspace/wangyl/prj_2024/0830/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/base_axis_fifo_cdc64/base_axis_fifo_cdc64_stub.v
// Design      : base_axis_fifo_cdc64
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_3,Vivado 2018.3" *)
module base_axis_fifo_cdc64(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, 
  empty)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[63:0],wr_en,rd_en,dout[63:0],full,empty" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [63:0]din;
  input wr_en;
  input rd_en;
  output [63:0]dout;
  output full;
  output empty;
endmodule
