// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 12 16:04:04 2024
// Host        : aic-ts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/norm/add_s74_s72/add_s74_s72_stub.v
// Design      : add_s74_s72
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *)
module add_s74_s72(A, B, CLK, S)
/* synthesis syn_black_box black_box_pad_pin="A[73:0],B[71:0],CLK,S[73:0]" */;
  input [73:0]A;
  input [71:0]B;
  input CLK;
  output [73:0]S;
endmodule
