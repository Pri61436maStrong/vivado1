// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 12 16:08:26 2024
// Host        : aic-ts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/conf_mem/conf_mem_stub.v
// Design      : conf_mem
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module conf_mem(clka, wea, addra, dina, douta, clkb, web, addrb, dinb, 
  doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[9:0],dina[255:0],douta[255:0],clkb,web[0:0],addrb[9:0],dinb[255:0],doutb[255:0]" */;
  input clka;
  input [0:0]wea;
  input [9:0]addra;
  input [255:0]dina;
  output [255:0]douta;
  input clkb;
  input [0:0]web;
  input [9:0]addrb;
  input [255:0]dinb;
  output [255:0]doutb;
endmodule
