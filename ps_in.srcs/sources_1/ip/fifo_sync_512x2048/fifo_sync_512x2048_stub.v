// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Jan  6 22:18:14 2023
// Host        : zhiguan running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               E:/Vivado_Projects/7100_v1_1/7100ai_plin.runs/fifo_sync_512x2048_synth_1/fifo_sync_512x2048_stub.v
// Design      : fifo_sync_512x2048
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_3,Vivado 2018.3" *)
module fifo_sync_512x2048(clk, srst, din, wr_en, rd_en, dout, full, empty, 
  prog_full)
/* synthesis syn_black_box black_box_pad_pin="clk,srst,din[511:0],wr_en,rd_en,dout[511:0],full,empty,prog_full" */;
  input clk;
  input srst;
  input [511:0]din;
  input wr_en;
  input rd_en;
  output [511:0]dout;
  output full;
  output empty;
  output prog_full;
endmodule
