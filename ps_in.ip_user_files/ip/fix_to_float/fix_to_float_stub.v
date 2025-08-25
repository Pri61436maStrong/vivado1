// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 12 16:06:38 2024
// Host        : aic-ts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/norm/fix_to_float/fix_to_float_stub.v
// Design      : fix_to_float
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "floating_point_v7_1_7,Vivado 2018.3" *)
module fix_to_float(aclk, s_axis_a_tvalid, s_axis_a_tdata, 
  m_axis_result_tvalid, m_axis_result_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,s_axis_a_tvalid,s_axis_a_tdata[63:0],m_axis_result_tvalid,m_axis_result_tdata[23:0]" */;
  input aclk;
  input s_axis_a_tvalid;
  input [63:0]s_axis_a_tdata;
  output m_axis_result_tvalid;
  output [23:0]m_axis_result_tdata;
endmodule
