// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 12 16:09:02 2024
// Host        : aic-ts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/remap/ftmp_dpram/ftmp_dpram_stub.v
// Design      : ftmp_dpram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module ftmp_dpram(clka, ena, wea, addra, dina, douta, clkb, enb, web, addrb, 
  dinb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[9:0],dina[511:0],douta[511:0],clkb,enb,web[0:0],addrb[9:0],dinb[511:0],doutb[511:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [9:0]addra;
  input [511:0]dina;
  output [511:0]douta;
  input clkb;
  input enb;
  input [0:0]web;
  input [9:0]addrb;
  input [511:0]dinb;
  output [511:0]doutb;
endmodule
