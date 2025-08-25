// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 12 16:07:23 2024
// Host        : aic-ts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/segpost/lbdsp/lbdsp_stub.v
// Design      : lbdsp
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_dsp48_macro_v3_0_16,Vivado 2018.3" *)
module lbdsp(CLK, A, B, C, D, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[24:0],B[7:0],C[31:0],D[24:0],P[33:0]" */;
  input CLK;
  input [24:0]A;
  input [7:0]B;
  input [31:0]C;
  input [24:0]D;
  output [33:0]P;
endmodule
