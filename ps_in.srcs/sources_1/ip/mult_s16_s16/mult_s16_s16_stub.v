// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Aug 20 14:33:48 2024
// Host        : aic-ts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0820/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/mult_s16_s16/mult_s16_s16_stub.v
// Design      : mult_s16_s16
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *)
module mult_s16_s16(A, B, P)
/* synthesis syn_black_box black_box_pad_pin="A[15:0],B[15:0],P[31:0]" */;
  input [15:0]A;
  input [15:0]B;
  output [31:0]P;
endmodule
