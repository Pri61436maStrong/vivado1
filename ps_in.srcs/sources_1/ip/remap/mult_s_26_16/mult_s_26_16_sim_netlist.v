// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 12 16:07:47 2024
// Host        : aic-ts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/remap/mult_s_26_16/mult_s_26_16_sim_netlist.v
// Design      : mult_s_26_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_s_26_16,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_s_26_16
   (A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [25:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [41:0]P;

  wire [25:0]A;
  wire [15:0]B;
  wire [41:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "26" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "41" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_optimize_goal = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_s_26_16_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(1'b1),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* ORIG_REF_NAME = "luts" *) 
module mult_s_26_16_luts
   (P,
    B,
    A);
  output [41:0]P;
  input [15:0]B;
  input [25:0]A;

  wire [25:0]A;
  wire [15:0]B;
  wire LI;
  wire \NxM_mult.ppgen[0].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[0].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[0].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[1].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[1].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[1].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[1].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[2].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[2].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[1].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[3].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[3].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[1].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[4].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[4].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00_i_1_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[1].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[5].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[5].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00_i_1_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[1].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[6].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ;
  wire \NxM_mult.ppgen[6].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[0].ppsub.stageLSB.muxcy1_i_2_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[0].ppsub.stageLSB.xorcy1__0 ;
  wire \NxM_mult.ppgen[7].carrychain[10].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[10].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[10].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[11].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[11].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[11].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[12].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[12].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[12].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[13].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[13].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[13].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[14].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[14].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[14].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[15].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[15].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[15].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[16].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[16].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[16].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[17].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[17].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[17].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[18].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[18].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[18].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[19].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[19].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[19].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[1].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[1].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[1].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[20].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[20].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[20].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[21].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[21].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[21].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[22].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[22].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[22].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[23].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[23].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[23].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[24].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[24].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[24].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[25].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[25].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[25].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[26].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[26].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[26].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[27].ppsub.stageMSB.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[2].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[2].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[2].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[3].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[3].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[3].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[4].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[4].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[4].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[5].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[5].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[5].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[6].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[6].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[6].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[7].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[7].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[7].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[8].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[8].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[8].ppsub.stageN.xorcy0__0 ;
  wire \NxM_mult.ppgen[7].carrychain[9].ppsub.stageN.ma1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[9].ppsub.stageN.muxcy0_i_1_n_0 ;
  wire \NxM_mult.ppgen[7].carrychain[9].ppsub.stageN.xorcy0__0 ;
  wire [41:0]P;
  wire lut_sig;
  wire lut_sig100_out;
  wire lut_sig101_out;
  wire lut_sig102_out;
  wire lut_sig103_out;
  wire lut_sig104_out;
  wire lut_sig105_out;
  wire lut_sig106_out;
  wire lut_sig107_out;
  wire lut_sig109_out;
  wire lut_sig10_out;
  wire lut_sig110_out;
  wire lut_sig111_out;
  wire lut_sig112_out;
  wire lut_sig113_out;
  wire lut_sig114_out;
  wire lut_sig115_out;
  wire lut_sig116_out;
  wire lut_sig117_out;
  wire lut_sig118_out;
  wire lut_sig119_out;
  wire lut_sig11_out;
  wire lut_sig120_out;
  wire lut_sig121_out;
  wire lut_sig122_out;
  wire lut_sig123_out;
  wire lut_sig124_out;
  wire lut_sig125_out;
  wire lut_sig126_out;
  wire lut_sig127_out;
  wire lut_sig128_out;
  wire lut_sig129_out;
  wire lut_sig12_out;
  wire lut_sig130_out;
  wire lut_sig131_out;
  wire lut_sig132_out;
  wire lut_sig133_out;
  wire lut_sig134_out;
  wire lut_sig136_out;
  wire lut_sig137_out;
  wire lut_sig138_out;
  wire lut_sig139_out;
  wire lut_sig13_out;
  wire lut_sig140_out;
  wire lut_sig141_out;
  wire lut_sig142_out;
  wire lut_sig143_out;
  wire lut_sig144_out;
  wire lut_sig145_out;
  wire lut_sig146_out;
  wire lut_sig147_out;
  wire lut_sig148_out;
  wire lut_sig149_out;
  wire lut_sig14_out;
  wire lut_sig150_out;
  wire lut_sig151_out;
  wire lut_sig152_out;
  wire lut_sig153_out;
  wire lut_sig154_out;
  wire lut_sig155_out;
  wire lut_sig156_out;
  wire lut_sig157_out;
  wire lut_sig158_out;
  wire lut_sig159_out;
  wire lut_sig15_out;
  wire lut_sig160_out;
  wire lut_sig161_out;
  wire lut_sig163_out;
  wire lut_sig164_out;
  wire lut_sig165_out;
  wire lut_sig166_out;
  wire lut_sig167_out;
  wire lut_sig168_out;
  wire lut_sig169_out;
  wire lut_sig16_out;
  wire lut_sig170_out;
  wire lut_sig171_out;
  wire lut_sig172_out;
  wire lut_sig173_out;
  wire lut_sig174_out;
  wire lut_sig175_out;
  wire lut_sig176_out;
  wire lut_sig177_out;
  wire lut_sig178_out;
  wire lut_sig179_out;
  wire lut_sig17_out;
  wire lut_sig180_out;
  wire lut_sig181_out;
  wire lut_sig182_out;
  wire lut_sig183_out;
  wire lut_sig184_out;
  wire lut_sig185_out;
  wire lut_sig186_out;
  wire lut_sig187_out;
  wire lut_sig18_out;
  wire lut_sig193_out;
  wire lut_sig19_out;
  wire lut_sig1_out;
  wire lut_sig20_out;
  wire lut_sig21_out;
  wire lut_sig22_out;
  wire lut_sig23_out;
  wire lut_sig24_out;
  wire lut_sig250_out;
  wire lut_sig25_out;
  wire lut_sig26_out;
  wire lut_sig28_out;
  wire lut_sig29_out;
  wire lut_sig2_out;
  wire lut_sig307_out;
  wire lut_sig30_out;
  wire lut_sig31_out;
  wire lut_sig32_out;
  wire lut_sig33_out;
  wire lut_sig34_out;
  wire lut_sig35_out;
  wire lut_sig364_out;
  wire lut_sig36_out;
  wire lut_sig37_out;
  wire lut_sig38_out;
  wire lut_sig39_out;
  wire lut_sig3_out;
  wire lut_sig40_out;
  wire lut_sig41_out;
  wire lut_sig421_out;
  wire lut_sig42_out;
  wire lut_sig43_out;
  wire lut_sig44_out;
  wire lut_sig45_out;
  wire lut_sig46_out;
  wire lut_sig47_out;
  wire lut_sig48_out;
  wire lut_sig49_out;
  wire lut_sig4_out;
  wire lut_sig50_out;
  wire lut_sig51_out;
  wire lut_sig52_out;
  wire lut_sig53_out;
  wire lut_sig55_out;
  wire lut_sig56_out;
  wire lut_sig57_out;
  wire lut_sig58_out;
  wire lut_sig59_out;
  wire lut_sig5_out;
  wire lut_sig60_out;
  wire lut_sig61_out;
  wire lut_sig62_out;
  wire lut_sig63_out;
  wire lut_sig64_out;
  wire lut_sig65_out;
  wire lut_sig66_out;
  wire lut_sig67_out;
  wire lut_sig68_out;
  wire lut_sig69_out;
  wire lut_sig6_out;
  wire lut_sig70_out;
  wire lut_sig71_out;
  wire lut_sig72_out;
  wire lut_sig73_out;
  wire lut_sig74_out;
  wire lut_sig75_out;
  wire lut_sig76_out;
  wire lut_sig77_out;
  wire lut_sig78_out;
  wire lut_sig79_out;
  wire lut_sig7_out;
  wire lut_sig80_out;
  wire lut_sig82_out;
  wire lut_sig83_out;
  wire lut_sig84_out;
  wire lut_sig85_out;
  wire lut_sig86_out;
  wire lut_sig87_out;
  wire lut_sig88_out;
  wire lut_sig89_out;
  wire lut_sig8_out;
  wire lut_sig90_out;
  wire lut_sig91_out;
  wire lut_sig92_out;
  wire lut_sig93_out;
  wire lut_sig94_out;
  wire lut_sig95_out;
  wire lut_sig96_out;
  wire lut_sig97_out;
  wire lut_sig98_out;
  wire lut_sig99_out;
  wire lut_sig9_out;
  wire [27:2]plusOp;
  wire [27:0]plusOp1;
  wire [27:0]plusOp3;
  wire [27:0]plusOp5;
  wire [29:4]plusOp7;
  wire [29:0]plusOp9;
  wire plusOp__163_carry__0_i_1_n_0;
  wire plusOp__163_carry__0_i_2_n_0;
  wire plusOp__163_carry__0_i_3_n_0;
  wire plusOp__163_carry__0_i_4_n_0;
  wire plusOp__163_carry__0_n_0;
  wire plusOp__163_carry__0_n_1;
  wire plusOp__163_carry__0_n_2;
  wire plusOp__163_carry__0_n_3;
  wire plusOp__163_carry__1_i_1_n_0;
  wire plusOp__163_carry__1_i_2_n_0;
  wire plusOp__163_carry__1_i_3_n_0;
  wire plusOp__163_carry__1_i_4_n_0;
  wire plusOp__163_carry__1_n_0;
  wire plusOp__163_carry__1_n_1;
  wire plusOp__163_carry__1_n_2;
  wire plusOp__163_carry__1_n_3;
  wire plusOp__163_carry__2_i_1_n_0;
  wire plusOp__163_carry__2_i_2_n_0;
  wire plusOp__163_carry__2_i_3_n_0;
  wire plusOp__163_carry__2_i_4_n_0;
  wire plusOp__163_carry__2_n_0;
  wire plusOp__163_carry__2_n_1;
  wire plusOp__163_carry__2_n_2;
  wire plusOp__163_carry__2_n_3;
  wire plusOp__163_carry__3_i_1_n_0;
  wire plusOp__163_carry__3_i_2_n_0;
  wire plusOp__163_carry__3_i_3_n_0;
  wire plusOp__163_carry__3_i_4_n_0;
  wire plusOp__163_carry__3_n_0;
  wire plusOp__163_carry__3_n_1;
  wire plusOp__163_carry__3_n_2;
  wire plusOp__163_carry__3_n_3;
  wire plusOp__163_carry__4_i_1_n_0;
  wire plusOp__163_carry__4_i_2_n_0;
  wire plusOp__163_carry__4_i_3_n_0;
  wire plusOp__163_carry__4_i_4_n_0;
  wire plusOp__163_carry__4_n_0;
  wire plusOp__163_carry__4_n_1;
  wire plusOp__163_carry__4_n_2;
  wire plusOp__163_carry__4_n_3;
  wire plusOp__163_carry__5_i_1_n_0;
  wire plusOp__163_carry__5_i_2_n_0;
  wire plusOp__163_carry__5_i_3_n_0;
  wire plusOp__163_carry__5_i_4_n_0;
  wire plusOp__163_carry__5_i_5_n_0;
  wire plusOp__163_carry__5_n_0;
  wire plusOp__163_carry__5_n_1;
  wire plusOp__163_carry__5_n_2;
  wire plusOp__163_carry__5_n_3;
  wire plusOp__163_carry__6_i_1_n_0;
  wire plusOp__163_carry__6_i_2_n_0;
  wire plusOp__163_carry__6_n_1;
  wire plusOp__163_carry__6_n_3;
  wire plusOp__163_carry_i_1_n_0;
  wire plusOp__163_carry_i_2_n_0;
  wire plusOp__163_carry_i_3_n_0;
  wire plusOp__163_carry_i_4_n_0;
  wire plusOp__163_carry_n_0;
  wire plusOp__163_carry_n_1;
  wire plusOp__163_carry_n_2;
  wire plusOp__163_carry_n_3;
  wire plusOp__253_carry__0_i_1_n_0;
  wire plusOp__253_carry__0_i_2_n_0;
  wire plusOp__253_carry__0_i_3_n_0;
  wire plusOp__253_carry__0_i_4_n_0;
  wire plusOp__253_carry__0_n_0;
  wire plusOp__253_carry__0_n_1;
  wire plusOp__253_carry__0_n_2;
  wire plusOp__253_carry__0_n_3;
  wire plusOp__253_carry__1_i_1_n_0;
  wire plusOp__253_carry__1_i_2_n_0;
  wire plusOp__253_carry__1_i_3_n_0;
  wire plusOp__253_carry__1_i_4_n_0;
  wire plusOp__253_carry__1_n_0;
  wire plusOp__253_carry__1_n_1;
  wire plusOp__253_carry__1_n_2;
  wire plusOp__253_carry__1_n_3;
  wire plusOp__253_carry__2_i_1_n_0;
  wire plusOp__253_carry__2_i_2_n_0;
  wire plusOp__253_carry__2_i_3_n_0;
  wire plusOp__253_carry__2_i_4_n_0;
  wire plusOp__253_carry__2_n_0;
  wire plusOp__253_carry__2_n_1;
  wire plusOp__253_carry__2_n_2;
  wire plusOp__253_carry__2_n_3;
  wire plusOp__253_carry__3_i_1_n_0;
  wire plusOp__253_carry__3_i_2_n_0;
  wire plusOp__253_carry__3_i_3_n_0;
  wire plusOp__253_carry__3_i_4_n_0;
  wire plusOp__253_carry__3_n_0;
  wire plusOp__253_carry__3_n_1;
  wire plusOp__253_carry__3_n_2;
  wire plusOp__253_carry__3_n_3;
  wire plusOp__253_carry__4_i_1_n_0;
  wire plusOp__253_carry__4_i_2_n_0;
  wire plusOp__253_carry__4_i_3_n_0;
  wire plusOp__253_carry__4_i_4_n_0;
  wire plusOp__253_carry__4_n_0;
  wire plusOp__253_carry__4_n_1;
  wire plusOp__253_carry__4_n_2;
  wire plusOp__253_carry__4_n_3;
  wire plusOp__253_carry__5_i_1_n_0;
  wire plusOp__253_carry__5_i_2_n_0;
  wire plusOp__253_carry__5_i_3_n_0;
  wire plusOp__253_carry__5_i_4_n_0;
  wire plusOp__253_carry__5_i_5_n_0;
  wire plusOp__253_carry__5_n_1;
  wire plusOp__253_carry__5_n_2;
  wire plusOp__253_carry__5_n_3;
  wire plusOp__253_carry_i_1_n_0;
  wire plusOp__253_carry_i_2_n_0;
  wire plusOp__253_carry_i_3_n_0;
  wire plusOp__253_carry_i_4_n_0;
  wire plusOp__253_carry_n_0;
  wire plusOp__253_carry_n_1;
  wire plusOp__253_carry_n_2;
  wire plusOp__253_carry_n_3;
  wire plusOp__335_carry__0_i_1_n_0;
  wire plusOp__335_carry__0_i_2_n_0;
  wire plusOp__335_carry__0_i_3_n_0;
  wire plusOp__335_carry__0_i_4_n_0;
  wire plusOp__335_carry__0_n_0;
  wire plusOp__335_carry__0_n_1;
  wire plusOp__335_carry__0_n_2;
  wire plusOp__335_carry__0_n_3;
  wire plusOp__335_carry__1_i_1_n_0;
  wire plusOp__335_carry__1_i_2_n_0;
  wire plusOp__335_carry__1_i_3_n_0;
  wire plusOp__335_carry__1_i_4_n_0;
  wire plusOp__335_carry__1_n_0;
  wire plusOp__335_carry__1_n_1;
  wire plusOp__335_carry__1_n_2;
  wire plusOp__335_carry__1_n_3;
  wire plusOp__335_carry__2_i_1_n_0;
  wire plusOp__335_carry__2_i_2_n_0;
  wire plusOp__335_carry__2_i_3_n_0;
  wire plusOp__335_carry__2_i_4_n_0;
  wire plusOp__335_carry__2_n_0;
  wire plusOp__335_carry__2_n_1;
  wire plusOp__335_carry__2_n_2;
  wire plusOp__335_carry__2_n_3;
  wire plusOp__335_carry__3_i_1_n_0;
  wire plusOp__335_carry__3_i_2_n_0;
  wire plusOp__335_carry__3_i_3_n_0;
  wire plusOp__335_carry__3_i_4_n_0;
  wire plusOp__335_carry__3_n_0;
  wire plusOp__335_carry__3_n_1;
  wire plusOp__335_carry__3_n_2;
  wire plusOp__335_carry__3_n_3;
  wire plusOp__335_carry__4_i_1_n_0;
  wire plusOp__335_carry__4_i_2_n_0;
  wire plusOp__335_carry__4_i_3_n_0;
  wire plusOp__335_carry__4_i_4_n_0;
  wire plusOp__335_carry__4_n_0;
  wire plusOp__335_carry__4_n_1;
  wire plusOp__335_carry__4_n_2;
  wire plusOp__335_carry__4_n_3;
  wire plusOp__335_carry__5_i_1_n_0;
  wire plusOp__335_carry__5_i_2_n_0;
  wire plusOp__335_carry__5_i_3_n_0;
  wire plusOp__335_carry__5_i_4_n_0;
  wire plusOp__335_carry__5_i_5_n_0;
  wire plusOp__335_carry__5_n_1;
  wire plusOp__335_carry__5_n_2;
  wire plusOp__335_carry__5_n_3;
  wire plusOp__335_carry_i_1_n_0;
  wire plusOp__335_carry_i_2_n_0;
  wire plusOp__335_carry_i_3_n_0;
  wire plusOp__335_carry_i_4_n_0;
  wire plusOp__335_carry_n_0;
  wire plusOp__335_carry_n_1;
  wire plusOp__335_carry_n_2;
  wire plusOp__335_carry_n_3;
  wire plusOp__417_carry__0_i_1_n_0;
  wire plusOp__417_carry__0_i_2_n_0;
  wire plusOp__417_carry__0_i_3_n_0;
  wire plusOp__417_carry__0_i_4_n_0;
  wire plusOp__417_carry__0_n_0;
  wire plusOp__417_carry__0_n_1;
  wire plusOp__417_carry__0_n_2;
  wire plusOp__417_carry__0_n_3;
  wire plusOp__417_carry__1_i_1_n_0;
  wire plusOp__417_carry__1_i_2_n_0;
  wire plusOp__417_carry__1_i_3_n_0;
  wire plusOp__417_carry__1_i_4_n_0;
  wire plusOp__417_carry__1_n_0;
  wire plusOp__417_carry__1_n_1;
  wire plusOp__417_carry__1_n_2;
  wire plusOp__417_carry__1_n_3;
  wire plusOp__417_carry__2_i_1_n_0;
  wire plusOp__417_carry__2_i_2_n_0;
  wire plusOp__417_carry__2_i_3_n_0;
  wire plusOp__417_carry__2_i_4_n_0;
  wire plusOp__417_carry__2_n_0;
  wire plusOp__417_carry__2_n_1;
  wire plusOp__417_carry__2_n_2;
  wire plusOp__417_carry__2_n_3;
  wire plusOp__417_carry__3_i_1_n_0;
  wire plusOp__417_carry__3_i_2_n_0;
  wire plusOp__417_carry__3_i_3_n_0;
  wire plusOp__417_carry__3_i_4_n_0;
  wire plusOp__417_carry__3_n_0;
  wire plusOp__417_carry__3_n_1;
  wire plusOp__417_carry__3_n_2;
  wire plusOp__417_carry__3_n_3;
  wire plusOp__417_carry__4_i_1_n_0;
  wire plusOp__417_carry__4_i_2_n_0;
  wire plusOp__417_carry__4_i_3_n_0;
  wire plusOp__417_carry__4_i_4_n_0;
  wire plusOp__417_carry__4_n_0;
  wire plusOp__417_carry__4_n_1;
  wire plusOp__417_carry__4_n_2;
  wire plusOp__417_carry__4_n_3;
  wire plusOp__417_carry__5_i_1_n_0;
  wire plusOp__417_carry__5_i_2_n_0;
  wire plusOp__417_carry__5_i_3_n_0;
  wire plusOp__417_carry__5_i_4_n_0;
  wire plusOp__417_carry__5_i_5_n_0;
  wire plusOp__417_carry__5_n_0;
  wire plusOp__417_carry__5_n_1;
  wire plusOp__417_carry__5_n_2;
  wire plusOp__417_carry__5_n_3;
  wire plusOp__417_carry__6_i_1_n_0;
  wire plusOp__417_carry__6_i_2_n_0;
  wire plusOp__417_carry__6_n_3;
  wire plusOp__417_carry_i_1_n_0;
  wire plusOp__417_carry_i_2_n_0;
  wire plusOp__417_carry_i_3_n_0;
  wire plusOp__417_carry_i_4_n_0;
  wire plusOp__417_carry_n_0;
  wire plusOp__417_carry_n_1;
  wire plusOp__417_carry_n_2;
  wire plusOp__417_carry_n_3;
  wire plusOp__505_carry__0_i_1_n_0;
  wire plusOp__505_carry__0_i_2_n_0;
  wire plusOp__505_carry__0_i_3_n_0;
  wire plusOp__505_carry__0_i_4_n_0;
  wire plusOp__505_carry__0_n_0;
  wire plusOp__505_carry__0_n_1;
  wire plusOp__505_carry__0_n_2;
  wire plusOp__505_carry__0_n_3;
  wire plusOp__505_carry__1_i_1_n_0;
  wire plusOp__505_carry__1_i_2_n_0;
  wire plusOp__505_carry__1_i_3_n_0;
  wire plusOp__505_carry__1_i_4_n_0;
  wire plusOp__505_carry__1_n_0;
  wire plusOp__505_carry__1_n_1;
  wire plusOp__505_carry__1_n_2;
  wire plusOp__505_carry__1_n_3;
  wire plusOp__505_carry__2_i_1_n_0;
  wire plusOp__505_carry__2_i_2_n_0;
  wire plusOp__505_carry__2_i_3_n_0;
  wire plusOp__505_carry__2_i_4_n_0;
  wire plusOp__505_carry__2_n_0;
  wire plusOp__505_carry__2_n_1;
  wire plusOp__505_carry__2_n_2;
  wire plusOp__505_carry__2_n_3;
  wire plusOp__505_carry__3_i_1_n_0;
  wire plusOp__505_carry__3_i_2_n_0;
  wire plusOp__505_carry__3_i_3_n_0;
  wire plusOp__505_carry__3_i_4_n_0;
  wire plusOp__505_carry__3_n_0;
  wire plusOp__505_carry__3_n_1;
  wire plusOp__505_carry__3_n_2;
  wire plusOp__505_carry__3_n_3;
  wire plusOp__505_carry__4_i_1_n_0;
  wire plusOp__505_carry__4_i_2_n_0;
  wire plusOp__505_carry__4_i_3_n_0;
  wire plusOp__505_carry__4_i_4_n_0;
  wire plusOp__505_carry__4_n_0;
  wire plusOp__505_carry__4_n_1;
  wire plusOp__505_carry__4_n_2;
  wire plusOp__505_carry__4_n_3;
  wire plusOp__505_carry__5_i_1_n_0;
  wire plusOp__505_carry__5_i_2_n_0;
  wire plusOp__505_carry__5_i_3_n_0;
  wire plusOp__505_carry__5_i_4_n_0;
  wire plusOp__505_carry__5_n_0;
  wire plusOp__505_carry__5_n_1;
  wire plusOp__505_carry__5_n_2;
  wire plusOp__505_carry__5_n_3;
  wire plusOp__505_carry__6_i_1_n_0;
  wire plusOp__505_carry__6_i_2_n_0;
  wire plusOp__505_carry__6_i_3_n_0;
  wire plusOp__505_carry__6_i_4_n_0;
  wire plusOp__505_carry__6_n_0;
  wire plusOp__505_carry__6_n_1;
  wire plusOp__505_carry__6_n_2;
  wire plusOp__505_carry__6_n_3;
  wire plusOp__505_carry__7_i_1_n_0;
  wire plusOp__505_carry__7_i_2_n_0;
  wire plusOp__505_carry__7_n_3;
  wire plusOp__505_carry_i_1_n_0;
  wire plusOp__505_carry_i_2_n_0;
  wire plusOp__505_carry_i_3_n_0;
  wire plusOp__505_carry_i_4_n_0;
  wire plusOp__505_carry_n_0;
  wire plusOp__505_carry_n_1;
  wire plusOp__505_carry_n_2;
  wire plusOp__505_carry_n_3;
  wire plusOp__81_carry__0_i_1_n_0;
  wire plusOp__81_carry__0_i_2_n_0;
  wire plusOp__81_carry__0_i_3_n_0;
  wire plusOp__81_carry__0_i_4_n_0;
  wire plusOp__81_carry__0_n_0;
  wire plusOp__81_carry__0_n_1;
  wire plusOp__81_carry__0_n_2;
  wire plusOp__81_carry__0_n_3;
  wire plusOp__81_carry__1_i_1_n_0;
  wire plusOp__81_carry__1_i_2_n_0;
  wire plusOp__81_carry__1_i_3_n_0;
  wire plusOp__81_carry__1_i_4_n_0;
  wire plusOp__81_carry__1_n_0;
  wire plusOp__81_carry__1_n_1;
  wire plusOp__81_carry__1_n_2;
  wire plusOp__81_carry__1_n_3;
  wire plusOp__81_carry__2_i_1_n_0;
  wire plusOp__81_carry__2_i_2_n_0;
  wire plusOp__81_carry__2_i_3_n_0;
  wire plusOp__81_carry__2_i_4_n_0;
  wire plusOp__81_carry__2_n_0;
  wire plusOp__81_carry__2_n_1;
  wire plusOp__81_carry__2_n_2;
  wire plusOp__81_carry__2_n_3;
  wire plusOp__81_carry__3_i_1_n_0;
  wire plusOp__81_carry__3_i_2_n_0;
  wire plusOp__81_carry__3_i_3_n_0;
  wire plusOp__81_carry__3_i_4_n_0;
  wire plusOp__81_carry__3_n_0;
  wire plusOp__81_carry__3_n_1;
  wire plusOp__81_carry__3_n_2;
  wire plusOp__81_carry__3_n_3;
  wire plusOp__81_carry__4_i_1_n_0;
  wire plusOp__81_carry__4_i_2_n_0;
  wire plusOp__81_carry__4_i_3_n_0;
  wire plusOp__81_carry__4_i_4_n_0;
  wire plusOp__81_carry__4_n_0;
  wire plusOp__81_carry__4_n_1;
  wire plusOp__81_carry__4_n_2;
  wire plusOp__81_carry__4_n_3;
  wire plusOp__81_carry__5_i_1_n_0;
  wire plusOp__81_carry__5_i_2_n_0;
  wire plusOp__81_carry__5_i_3_n_0;
  wire plusOp__81_carry__5_i_4_n_0;
  wire plusOp__81_carry__5_i_5_n_0;
  wire plusOp__81_carry__5_n_1;
  wire plusOp__81_carry__5_n_2;
  wire plusOp__81_carry__5_n_3;
  wire plusOp__81_carry_i_1_n_0;
  wire plusOp__81_carry_i_2_n_0;
  wire plusOp__81_carry_i_3_n_0;
  wire plusOp__81_carry_i_4_n_0;
  wire plusOp__81_carry_n_0;
  wire plusOp__81_carry_n_1;
  wire plusOp__81_carry_n_2;
  wire plusOp__81_carry_n_3;
  wire plusOp_carry__0_i_1_n_0;
  wire plusOp_carry__0_i_2_n_0;
  wire plusOp_carry__0_i_3_n_0;
  wire plusOp_carry__0_i_4_n_0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_i_1_n_0;
  wire plusOp_carry__1_i_2_n_0;
  wire plusOp_carry__1_i_3_n_0;
  wire plusOp_carry__1_i_4_n_0;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_i_1_n_0;
  wire plusOp_carry__2_i_2_n_0;
  wire plusOp_carry__2_i_3_n_0;
  wire plusOp_carry__2_i_4_n_0;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_i_1_n_0;
  wire plusOp_carry__3_i_2_n_0;
  wire plusOp_carry__3_i_3_n_0;
  wire plusOp_carry__3_i_4_n_0;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__4_i_1_n_0;
  wire plusOp_carry__4_i_2_n_0;
  wire plusOp_carry__4_i_3_n_0;
  wire plusOp_carry__4_i_4_n_0;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__4_n_1;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__5_i_1_n_0;
  wire plusOp_carry__5_i_2_n_0;
  wire plusOp_carry__5_i_3_n_0;
  wire plusOp_carry__5_i_4_n_0;
  wire plusOp_carry__5_i_5_n_0;
  wire plusOp_carry__5_n_1;
  wire plusOp_carry__5_n_2;
  wire plusOp_carry__5_n_3;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_i_2_n_0;
  wire plusOp_carry_i_3_n_0;
  wire plusOp_carry_i_4_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire \pp_cout[0]_0 ;
  wire \pp_cout[0]_1 ;
  wire \pp_cout[0]_10 ;
  wire \pp_cout[0]_11 ;
  wire \pp_cout[0]_12 ;
  wire \pp_cout[0]_13 ;
  wire \pp_cout[0]_14 ;
  wire \pp_cout[0]_15 ;
  wire \pp_cout[0]_16 ;
  wire \pp_cout[0]_17 ;
  wire \pp_cout[0]_18 ;
  wire \pp_cout[0]_19 ;
  wire \pp_cout[0]_2 ;
  wire \pp_cout[0]_20 ;
  wire \pp_cout[0]_21 ;
  wire \pp_cout[0]_22 ;
  wire \pp_cout[0]_23 ;
  wire \pp_cout[0]_24 ;
  wire \pp_cout[0]_25 ;
  wire \pp_cout[0]_26 ;
  wire \pp_cout[0]_3 ;
  wire \pp_cout[0]_4 ;
  wire \pp_cout[0]_5 ;
  wire \pp_cout[0]_6 ;
  wire \pp_cout[0]_7 ;
  wire \pp_cout[0]_8 ;
  wire \pp_cout[0]_9 ;
  wire \pp_cout[1]_0 ;
  wire \pp_cout[1]_1 ;
  wire \pp_cout[1]_10 ;
  wire \pp_cout[1]_11 ;
  wire \pp_cout[1]_12 ;
  wire \pp_cout[1]_13 ;
  wire \pp_cout[1]_14 ;
  wire \pp_cout[1]_15 ;
  wire \pp_cout[1]_16 ;
  wire \pp_cout[1]_17 ;
  wire \pp_cout[1]_18 ;
  wire \pp_cout[1]_19 ;
  wire \pp_cout[1]_2 ;
  wire \pp_cout[1]_20 ;
  wire \pp_cout[1]_21 ;
  wire \pp_cout[1]_22 ;
  wire \pp_cout[1]_23 ;
  wire \pp_cout[1]_24 ;
  wire \pp_cout[1]_25 ;
  wire \pp_cout[1]_26 ;
  wire \pp_cout[1]_3 ;
  wire \pp_cout[1]_4 ;
  wire \pp_cout[1]_5 ;
  wire \pp_cout[1]_6 ;
  wire \pp_cout[1]_7 ;
  wire \pp_cout[1]_8 ;
  wire \pp_cout[1]_9 ;
  wire \pp_cout[2]_0 ;
  wire \pp_cout[2]_1 ;
  wire \pp_cout[2]_10 ;
  wire \pp_cout[2]_11 ;
  wire \pp_cout[2]_12 ;
  wire \pp_cout[2]_13 ;
  wire \pp_cout[2]_14 ;
  wire \pp_cout[2]_15 ;
  wire \pp_cout[2]_16 ;
  wire \pp_cout[2]_17 ;
  wire \pp_cout[2]_18 ;
  wire \pp_cout[2]_19 ;
  wire \pp_cout[2]_2 ;
  wire \pp_cout[2]_20 ;
  wire \pp_cout[2]_21 ;
  wire \pp_cout[2]_22 ;
  wire \pp_cout[2]_23 ;
  wire \pp_cout[2]_24 ;
  wire \pp_cout[2]_25 ;
  wire \pp_cout[2]_26 ;
  wire \pp_cout[2]_3 ;
  wire \pp_cout[2]_4 ;
  wire \pp_cout[2]_5 ;
  wire \pp_cout[2]_6 ;
  wire \pp_cout[2]_7 ;
  wire \pp_cout[2]_8 ;
  wire \pp_cout[2]_9 ;
  wire \pp_cout[3]_0 ;
  wire \pp_cout[3]_1 ;
  wire \pp_cout[3]_10 ;
  wire \pp_cout[3]_11 ;
  wire \pp_cout[3]_12 ;
  wire \pp_cout[3]_13 ;
  wire \pp_cout[3]_14 ;
  wire \pp_cout[3]_15 ;
  wire \pp_cout[3]_16 ;
  wire \pp_cout[3]_17 ;
  wire \pp_cout[3]_18 ;
  wire \pp_cout[3]_19 ;
  wire \pp_cout[3]_2 ;
  wire \pp_cout[3]_20 ;
  wire \pp_cout[3]_21 ;
  wire \pp_cout[3]_22 ;
  wire \pp_cout[3]_23 ;
  wire \pp_cout[3]_24 ;
  wire \pp_cout[3]_25 ;
  wire \pp_cout[3]_26 ;
  wire \pp_cout[3]_3 ;
  wire \pp_cout[3]_4 ;
  wire \pp_cout[3]_5 ;
  wire \pp_cout[3]_6 ;
  wire \pp_cout[3]_7 ;
  wire \pp_cout[3]_8 ;
  wire \pp_cout[3]_9 ;
  wire \pp_cout[4]_0 ;
  wire \pp_cout[4]_1 ;
  wire \pp_cout[4]_10 ;
  wire \pp_cout[4]_11 ;
  wire \pp_cout[4]_12 ;
  wire \pp_cout[4]_13 ;
  wire \pp_cout[4]_14 ;
  wire \pp_cout[4]_15 ;
  wire \pp_cout[4]_16 ;
  wire \pp_cout[4]_17 ;
  wire \pp_cout[4]_18 ;
  wire \pp_cout[4]_19 ;
  wire \pp_cout[4]_2 ;
  wire \pp_cout[4]_20 ;
  wire \pp_cout[4]_21 ;
  wire \pp_cout[4]_22 ;
  wire \pp_cout[4]_23 ;
  wire \pp_cout[4]_24 ;
  wire \pp_cout[4]_25 ;
  wire \pp_cout[4]_26 ;
  wire \pp_cout[4]_3 ;
  wire \pp_cout[4]_4 ;
  wire \pp_cout[4]_5 ;
  wire \pp_cout[4]_6 ;
  wire \pp_cout[4]_7 ;
  wire \pp_cout[4]_8 ;
  wire \pp_cout[4]_9 ;
  wire \pp_cout[5]_0 ;
  wire \pp_cout[5]_1 ;
  wire \pp_cout[5]_10 ;
  wire \pp_cout[5]_11 ;
  wire \pp_cout[5]_12 ;
  wire \pp_cout[5]_13 ;
  wire \pp_cout[5]_14 ;
  wire \pp_cout[5]_15 ;
  wire \pp_cout[5]_16 ;
  wire \pp_cout[5]_17 ;
  wire \pp_cout[5]_18 ;
  wire \pp_cout[5]_19 ;
  wire \pp_cout[5]_2 ;
  wire \pp_cout[5]_20 ;
  wire \pp_cout[5]_21 ;
  wire \pp_cout[5]_22 ;
  wire \pp_cout[5]_23 ;
  wire \pp_cout[5]_24 ;
  wire \pp_cout[5]_25 ;
  wire \pp_cout[5]_26 ;
  wire \pp_cout[5]_3 ;
  wire \pp_cout[5]_4 ;
  wire \pp_cout[5]_5 ;
  wire \pp_cout[5]_6 ;
  wire \pp_cout[5]_7 ;
  wire \pp_cout[5]_8 ;
  wire \pp_cout[5]_9 ;
  wire \pp_cout[6]_0 ;
  wire \pp_cout[6]_1 ;
  wire \pp_cout[6]_10 ;
  wire \pp_cout[6]_11 ;
  wire \pp_cout[6]_12 ;
  wire \pp_cout[6]_13 ;
  wire \pp_cout[6]_14 ;
  wire \pp_cout[6]_15 ;
  wire \pp_cout[6]_16 ;
  wire \pp_cout[6]_17 ;
  wire \pp_cout[6]_18 ;
  wire \pp_cout[6]_19 ;
  wire \pp_cout[6]_2 ;
  wire \pp_cout[6]_20 ;
  wire \pp_cout[6]_21 ;
  wire \pp_cout[6]_22 ;
  wire \pp_cout[6]_23 ;
  wire \pp_cout[6]_24 ;
  wire \pp_cout[6]_25 ;
  wire \pp_cout[6]_26 ;
  wire \pp_cout[6]_3 ;
  wire \pp_cout[6]_4 ;
  wire \pp_cout[6]_5 ;
  wire \pp_cout[6]_6 ;
  wire \pp_cout[6]_7 ;
  wire \pp_cout[6]_8 ;
  wire \pp_cout[6]_9 ;
  wire \pp_cout[7]_0 ;
  wire \pp_cout[7]_1 ;
  wire \pp_cout[7]_10 ;
  wire \pp_cout[7]_11 ;
  wire \pp_cout[7]_12 ;
  wire \pp_cout[7]_13 ;
  wire \pp_cout[7]_14 ;
  wire \pp_cout[7]_15 ;
  wire \pp_cout[7]_16 ;
  wire \pp_cout[7]_17 ;
  wire \pp_cout[7]_18 ;
  wire \pp_cout[7]_19 ;
  wire \pp_cout[7]_2 ;
  wire \pp_cout[7]_20 ;
  wire \pp_cout[7]_21 ;
  wire \pp_cout[7]_22 ;
  wire \pp_cout[7]_23 ;
  wire \pp_cout[7]_24 ;
  wire \pp_cout[7]_25 ;
  wire \pp_cout[7]_26 ;
  wire \pp_cout[7]_3 ;
  wire \pp_cout[7]_4 ;
  wire \pp_cout[7]_5 ;
  wire \pp_cout[7]_6 ;
  wire \pp_cout[7]_7 ;
  wire \pp_cout[7]_8 ;
  wire \pp_cout[7]_9 ;
  wire [3:3]\NLW_NxM_mult.ppgen[0].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_NxM_mult.ppgen[0].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_DI_UNCONNECTED ;
  wire [3:3]\NLW_NxM_mult.ppgen[1].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_NxM_mult.ppgen[1].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_DI_UNCONNECTED ;
  wire [3:3]\NLW_NxM_mult.ppgen[2].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_NxM_mult.ppgen[2].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_DI_UNCONNECTED ;
  wire [3:3]\NLW_NxM_mult.ppgen[3].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_NxM_mult.ppgen[3].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_DI_UNCONNECTED ;
  wire [3:3]\NLW_NxM_mult.ppgen[4].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_NxM_mult.ppgen[4].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_DI_UNCONNECTED ;
  wire [3:3]\NLW_NxM_mult.ppgen[5].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_NxM_mult.ppgen[5].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_DI_UNCONNECTED ;
  wire [3:3]\NLW_NxM_mult.ppgen[6].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_NxM_mult.ppgen[6].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_DI_UNCONNECTED ;
  wire [3:3]\NLW_NxM_mult.ppgen[7].carrychain[24].ppsub.stageN.muxcy0_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_NxM_mult.ppgen[7].carrychain[24].ppsub.stageN.muxcy0_CARRY4_DI_UNCONNECTED ;
  wire [3:1]NLW_plusOp__163_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_plusOp__163_carry__6_O_UNCONNECTED;
  wire [3:3]NLW_plusOp__253_carry__5_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp__335_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_plusOp__417_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_plusOp__417_carry__6_O_UNCONNECTED;
  wire [3:1]NLW_plusOp__505_carry__7_CO_UNCONNECTED;
  wire [3:2]NLW_plusOp__505_carry__7_O_UNCONNECTED;
  wire [3:3]NLW_plusOp__81_carry__5_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__5_CO_UNCONNECTED;

  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[0].ppadd.b_is_even.stageLSB.ma0 
       (.I0(B[0]),
        .I1(A[0]),
        .O(\NxM_mult.ppgen[0].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[0].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00_CARRY4 
       (.CI(1'b0),
        .CO({\pp_cout[0]_3 ,\pp_cout[0]_2 ,\pp_cout[0]_1 ,\pp_cout[0]_0 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[0].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[0].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[0].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[0].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 }),
        .O({\NxM_mult.ppgen[0].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ,P[1:0]}),
        .S({lut_sig185_out,lut_sig186_out,lut_sig187_out,lut_sig421_out}));
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0_i_1 
       (.I0(A[0]),
        .I1(B[0]),
        .O(lut_sig421_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[10].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[9]),
        .O(\NxM_mult.ppgen[0].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[10].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[10]),
        .I2(B[1]),
        .I3(A[9]),
        .O(lut_sig178_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[11].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[10]),
        .O(\NxM_mult.ppgen[0].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[11].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[11]),
        .I2(B[1]),
        .I3(A[10]),
        .O(lut_sig177_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[12].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[11]),
        .O(\NxM_mult.ppgen[0].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[0].carrychain[12].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[0]_11 ),
        .CO({\pp_cout[0]_15 ,\pp_cout[0]_14 ,\pp_cout[0]_13 ,\pp_cout[0]_12 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[0].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[0].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[0].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[0].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[0].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig173_out,lut_sig174_out,lut_sig175_out,lut_sig176_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[12].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[12]),
        .I2(B[1]),
        .I3(A[11]),
        .O(lut_sig176_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[13].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[12]),
        .O(\NxM_mult.ppgen[0].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[13].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[13]),
        .I2(B[1]),
        .I3(A[12]),
        .O(lut_sig175_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[14].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[13]),
        .O(\NxM_mult.ppgen[0].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[14].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[14]),
        .I2(B[1]),
        .I3(A[13]),
        .O(lut_sig174_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[15].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[14]),
        .O(\NxM_mult.ppgen[0].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[15].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[15]),
        .I2(B[1]),
        .I3(A[14]),
        .O(lut_sig173_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[16].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[15]),
        .O(\NxM_mult.ppgen[0].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[0].carrychain[16].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[0]_15 ),
        .CO({\pp_cout[0]_19 ,\pp_cout[0]_18 ,\pp_cout[0]_17 ,\pp_cout[0]_16 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[0].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[0].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[0].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[0].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[0].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig169_out,lut_sig170_out,lut_sig171_out,lut_sig172_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[16].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[16]),
        .I2(B[1]),
        .I3(A[15]),
        .O(lut_sig172_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[17].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[16]),
        .O(\NxM_mult.ppgen[0].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[17].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[17]),
        .I2(B[1]),
        .I3(A[16]),
        .O(lut_sig171_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[18].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[17]),
        .O(\NxM_mult.ppgen[0].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[18].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[18]),
        .I2(B[1]),
        .I3(A[17]),
        .O(lut_sig170_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[19].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[18]),
        .O(\NxM_mult.ppgen[0].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[19].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[19]),
        .I2(B[1]),
        .I3(A[18]),
        .O(lut_sig169_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[1].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[0]),
        .O(\NxM_mult.ppgen[0].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[1].ppadd.b_is_even.stageN.xorcy0_i_1 
       (.I0(B[0]),
        .I1(A[1]),
        .I2(B[1]),
        .I3(A[0]),
        .O(lut_sig187_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[20].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[19]),
        .O(\NxM_mult.ppgen[0].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[0].carrychain[20].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[0]_19 ),
        .CO({\pp_cout[0]_23 ,\pp_cout[0]_22 ,\pp_cout[0]_21 ,\pp_cout[0]_20 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[0].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[0].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[0].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[0].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[0].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig165_out,lut_sig166_out,lut_sig167_out,lut_sig168_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[20].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[20]),
        .I2(B[1]),
        .I3(A[19]),
        .O(lut_sig168_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[21].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[20]),
        .O(\NxM_mult.ppgen[0].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[21].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[21]),
        .I2(B[1]),
        .I3(A[20]),
        .O(lut_sig167_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[22].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[21]),
        .O(\NxM_mult.ppgen[0].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[22].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[22]),
        .I2(B[1]),
        .I3(A[21]),
        .O(lut_sig166_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[23].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[22]),
        .O(\NxM_mult.ppgen[0].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[23].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[23]),
        .I2(B[1]),
        .I3(A[22]),
        .O(lut_sig165_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[24].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[23]),
        .O(\NxM_mult.ppgen[0].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[0].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[0]_23 ),
        .CO({\NLW_NxM_mult.ppgen[0].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_CO_UNCONNECTED [3],\pp_cout[0]_26 ,\pp_cout[0]_25 ,\pp_cout[0]_24 }),
        .CYINIT(1'b0),
        .DI({\NLW_NxM_mult.ppgen[0].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_DI_UNCONNECTED [3],\NxM_mult.ppgen[0].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[0].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[0].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[0].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig161_out,\NxM_mult.ppgen[0].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ,lut_sig163_out,lut_sig164_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[24].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[24]),
        .I2(B[1]),
        .I3(A[23]),
        .O(lut_sig164_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[25].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[24]),
        .O(\NxM_mult.ppgen[0].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[25].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[25]),
        .I2(B[1]),
        .I3(A[24]),
        .O(lut_sig163_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[26].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[25]),
        .O(\NxM_mult.ppgen[0].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \NxM_mult.ppgen[0].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(B[1]),
        .I2(A[25]),
        .O(\NxM_mult.ppgen[0].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \NxM_mult.ppgen[0].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0_i_1 
       (.I0(B[0]),
        .I1(B[1]),
        .I2(A[25]),
        .O(lut_sig161_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[2].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[1]),
        .O(\NxM_mult.ppgen[0].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[2].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[2]),
        .I2(B[1]),
        .I3(A[1]),
        .O(lut_sig186_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[3].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[2]),
        .O(\NxM_mult.ppgen[0].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[3].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[3]),
        .I2(B[1]),
        .I3(A[2]),
        .O(lut_sig185_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[4].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[3]),
        .O(\NxM_mult.ppgen[0].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[0].carrychain[4].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[0]_3 ),
        .CO({\pp_cout[0]_7 ,\pp_cout[0]_6 ,\pp_cout[0]_5 ,\pp_cout[0]_4 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[0].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[0].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[0].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[0].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[0].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig181_out,lut_sig182_out,lut_sig183_out,lut_sig184_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[4].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[4]),
        .I2(B[1]),
        .I3(A[3]),
        .O(lut_sig184_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[5].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[4]),
        .O(\NxM_mult.ppgen[0].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[5].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[5]),
        .I2(B[1]),
        .I3(A[4]),
        .O(lut_sig183_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[6].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[5]),
        .O(\NxM_mult.ppgen[0].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[6].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[6]),
        .I2(B[1]),
        .I3(A[5]),
        .O(lut_sig182_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[7].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[6]),
        .O(\NxM_mult.ppgen[0].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[7].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[7]),
        .I2(B[1]),
        .I3(A[6]),
        .O(lut_sig181_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[8].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[7]),
        .O(\NxM_mult.ppgen[0].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[0].carrychain[8].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[0]_7 ),
        .CO({\pp_cout[0]_11 ,\pp_cout[0]_10 ,\pp_cout[0]_9 ,\pp_cout[0]_8 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[0].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[0].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[0].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[0].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[0].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig177_out,lut_sig178_out,lut_sig179_out,lut_sig180_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[8].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[8]),
        .I2(B[1]),
        .I3(A[7]),
        .O(lut_sig180_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[0].carrychain[9].ppadd.b_is_even.stageN.ma0 
       (.I0(B[1]),
        .I1(A[8]),
        .O(\NxM_mult.ppgen[0].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[0].carrychain[9].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[0]),
        .I1(A[9]),
        .I2(B[1]),
        .I3(A[8]),
        .O(lut_sig179_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[0].ppadd.b_is_even.stageLSB.ma0 
       (.I0(B[2]),
        .I1(A[0]),
        .O(\NxM_mult.ppgen[1].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[1].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00_CARRY4 
       (.CI(1'b0),
        .CO({\pp_cout[1]_3 ,\pp_cout[1]_2 ,\pp_cout[1]_1 ,\pp_cout[1]_0 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[1].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[1].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[1].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 }),
        .O({\NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[1].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0__0 }),
        .S({lut_sig158_out,lut_sig159_out,lut_sig160_out,lut_sig364_out}));
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00_i_1 
       (.I0(A[0]),
        .I1(B[2]),
        .O(lut_sig364_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[10].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[9]),
        .O(\NxM_mult.ppgen[1].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[10].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[10]),
        .I2(B[3]),
        .I3(A[9]),
        .O(lut_sig151_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[11].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[10]),
        .O(\NxM_mult.ppgen[1].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[11].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[11]),
        .I2(B[3]),
        .I3(A[10]),
        .O(lut_sig150_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[12].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[11]),
        .O(\NxM_mult.ppgen[1].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[1].carrychain[12].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[1]_11 ),
        .CO({\pp_cout[1]_15 ,\pp_cout[1]_14 ,\pp_cout[1]_13 ,\pp_cout[1]_12 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[1].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[1].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[1].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[1].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[1].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig146_out,lut_sig147_out,lut_sig148_out,lut_sig149_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[12].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[12]),
        .I2(B[3]),
        .I3(A[11]),
        .O(lut_sig149_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[13].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[12]),
        .O(\NxM_mult.ppgen[1].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[13].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[13]),
        .I2(B[3]),
        .I3(A[12]),
        .O(lut_sig148_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[14].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[13]),
        .O(\NxM_mult.ppgen[1].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[14].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[14]),
        .I2(B[3]),
        .I3(A[13]),
        .O(lut_sig147_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[15].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[14]),
        .O(\NxM_mult.ppgen[1].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[15].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[15]),
        .I2(B[3]),
        .I3(A[14]),
        .O(lut_sig146_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[16].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[15]),
        .O(\NxM_mult.ppgen[1].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[1].carrychain[16].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[1]_15 ),
        .CO({\pp_cout[1]_19 ,\pp_cout[1]_18 ,\pp_cout[1]_17 ,\pp_cout[1]_16 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[1].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[1].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[1].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[1].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[1].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig142_out,lut_sig143_out,lut_sig144_out,lut_sig145_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[16].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[16]),
        .I2(B[3]),
        .I3(A[15]),
        .O(lut_sig145_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[17].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[16]),
        .O(\NxM_mult.ppgen[1].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[17].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[17]),
        .I2(B[3]),
        .I3(A[16]),
        .O(lut_sig144_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[18].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[17]),
        .O(\NxM_mult.ppgen[1].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[18].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[18]),
        .I2(B[3]),
        .I3(A[17]),
        .O(lut_sig143_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[19].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[18]),
        .O(\NxM_mult.ppgen[1].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[19].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[19]),
        .I2(B[3]),
        .I3(A[18]),
        .O(lut_sig142_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[1].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[0]),
        .O(\NxM_mult.ppgen[1].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[1].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[1]),
        .I2(B[3]),
        .I3(A[0]),
        .O(lut_sig160_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[20].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[19]),
        .O(\NxM_mult.ppgen[1].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[1].carrychain[20].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[1]_19 ),
        .CO({\pp_cout[1]_23 ,\pp_cout[1]_22 ,\pp_cout[1]_21 ,\pp_cout[1]_20 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[1].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[1].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[1].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[1].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[1].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig138_out,lut_sig139_out,lut_sig140_out,lut_sig141_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[20].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[20]),
        .I2(B[3]),
        .I3(A[19]),
        .O(lut_sig141_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[21].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[20]),
        .O(\NxM_mult.ppgen[1].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[21].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[21]),
        .I2(B[3]),
        .I3(A[20]),
        .O(lut_sig140_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[22].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[21]),
        .O(\NxM_mult.ppgen[1].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[22].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[22]),
        .I2(B[3]),
        .I3(A[21]),
        .O(lut_sig139_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[23].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[22]),
        .O(\NxM_mult.ppgen[1].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[23].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[23]),
        .I2(B[3]),
        .I3(A[22]),
        .O(lut_sig138_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[24].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[23]),
        .O(\NxM_mult.ppgen[1].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[1].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[1]_23 ),
        .CO({\NLW_NxM_mult.ppgen[1].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_CO_UNCONNECTED [3],\pp_cout[1]_26 ,\pp_cout[1]_25 ,\pp_cout[1]_24 }),
        .CYINIT(1'b0),
        .DI({\NLW_NxM_mult.ppgen[1].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_DI_UNCONNECTED [3],\NxM_mult.ppgen[1].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[1].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[1].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[1].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig134_out,\NxM_mult.ppgen[1].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ,lut_sig136_out,lut_sig137_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[24].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[24]),
        .I2(B[3]),
        .I3(A[23]),
        .O(lut_sig137_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[25].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[24]),
        .O(\NxM_mult.ppgen[1].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[25].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[25]),
        .I2(B[3]),
        .I3(A[24]),
        .O(lut_sig136_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[26].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[25]),
        .O(\NxM_mult.ppgen[1].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \NxM_mult.ppgen[1].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(B[3]),
        .I2(A[25]),
        .O(\NxM_mult.ppgen[1].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \NxM_mult.ppgen[1].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0_i_1 
       (.I0(B[2]),
        .I1(B[3]),
        .I2(A[25]),
        .O(lut_sig134_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[2].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[1]),
        .O(\NxM_mult.ppgen[1].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[2].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[2]),
        .I2(B[3]),
        .I3(A[1]),
        .O(lut_sig159_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[2]),
        .O(\NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[3]),
        .I2(B[3]),
        .I3(A[2]),
        .O(lut_sig158_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[4].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[3]),
        .O(\NxM_mult.ppgen[1].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[1].carrychain[4].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[1]_3 ),
        .CO({\pp_cout[1]_7 ,\pp_cout[1]_6 ,\pp_cout[1]_5 ,\pp_cout[1]_4 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[1].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[1].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[1].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig154_out,lut_sig155_out,lut_sig156_out,lut_sig157_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[4].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[4]),
        .I2(B[3]),
        .I3(A[3]),
        .O(lut_sig157_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[4]),
        .O(\NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[5]),
        .I2(B[3]),
        .I3(A[4]),
        .O(lut_sig156_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[5]),
        .O(\NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[6]),
        .I2(B[3]),
        .I3(A[5]),
        .O(lut_sig155_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[7].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[6]),
        .O(\NxM_mult.ppgen[1].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[7].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[7]),
        .I2(B[3]),
        .I3(A[6]),
        .O(lut_sig154_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[8].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[7]),
        .O(\NxM_mult.ppgen[1].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[1].carrychain[8].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[1]_7 ),
        .CO({\pp_cout[1]_11 ,\pp_cout[1]_10 ,\pp_cout[1]_9 ,\pp_cout[1]_8 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[1].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[1].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[1].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[1].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[1].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[1].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig150_out,lut_sig151_out,lut_sig152_out,lut_sig153_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[8].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[8]),
        .I2(B[3]),
        .I3(A[7]),
        .O(lut_sig153_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[1].carrychain[9].ppadd.b_is_even.stageN.ma0 
       (.I0(B[3]),
        .I1(A[8]),
        .O(\NxM_mult.ppgen[1].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[1].carrychain[9].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[2]),
        .I1(A[9]),
        .I2(B[3]),
        .I3(A[8]),
        .O(lut_sig152_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[0].ppadd.b_is_even.stageLSB.ma0 
       (.I0(B[4]),
        .I1(A[0]),
        .O(\NxM_mult.ppgen[2].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[2].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00_CARRY4 
       (.CI(1'b0),
        .CO({\pp_cout[2]_3 ,\pp_cout[2]_2 ,\pp_cout[2]_1 ,\pp_cout[2]_0 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[2].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[2].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[2].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[2].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 }),
        .O({\NxM_mult.ppgen[2].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[1].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0__0 }),
        .S({lut_sig131_out,lut_sig132_out,lut_sig133_out,lut_sig307_out}));
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00_i_1 
       (.I0(A[0]),
        .I1(B[4]),
        .O(lut_sig307_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[10].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[9]),
        .O(\NxM_mult.ppgen[2].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[10].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[10]),
        .I2(B[5]),
        .I3(A[9]),
        .O(lut_sig124_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[11].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[10]),
        .O(\NxM_mult.ppgen[2].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[11].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[11]),
        .I2(B[5]),
        .I3(A[10]),
        .O(lut_sig123_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[12].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[11]),
        .O(\NxM_mult.ppgen[2].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[2].carrychain[12].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[2]_11 ),
        .CO({\pp_cout[2]_15 ,\pp_cout[2]_14 ,\pp_cout[2]_13 ,\pp_cout[2]_12 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[2].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[2].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[2].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[2].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[2].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig119_out,lut_sig120_out,lut_sig121_out,lut_sig122_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[12].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[12]),
        .I2(B[5]),
        .I3(A[11]),
        .O(lut_sig122_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[13].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[12]),
        .O(\NxM_mult.ppgen[2].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[13].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[13]),
        .I2(B[5]),
        .I3(A[12]),
        .O(lut_sig121_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[14].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[13]),
        .O(\NxM_mult.ppgen[2].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[14].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[14]),
        .I2(B[5]),
        .I3(A[13]),
        .O(lut_sig120_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[15].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[14]),
        .O(\NxM_mult.ppgen[2].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[15].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[15]),
        .I2(B[5]),
        .I3(A[14]),
        .O(lut_sig119_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[16].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[15]),
        .O(\NxM_mult.ppgen[2].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[2].carrychain[16].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[2]_15 ),
        .CO({\pp_cout[2]_19 ,\pp_cout[2]_18 ,\pp_cout[2]_17 ,\pp_cout[2]_16 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[2].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[2].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[2].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[2].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[2].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig115_out,lut_sig116_out,lut_sig117_out,lut_sig118_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[16].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[16]),
        .I2(B[5]),
        .I3(A[15]),
        .O(lut_sig118_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[17].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[16]),
        .O(\NxM_mult.ppgen[2].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[17].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[17]),
        .I2(B[5]),
        .I3(A[16]),
        .O(lut_sig117_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[18].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[17]),
        .O(\NxM_mult.ppgen[2].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[18].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[18]),
        .I2(B[5]),
        .I3(A[17]),
        .O(lut_sig116_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[19].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[18]),
        .O(\NxM_mult.ppgen[2].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[19].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[19]),
        .I2(B[5]),
        .I3(A[18]),
        .O(lut_sig115_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[1].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[0]),
        .O(\NxM_mult.ppgen[2].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[1].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[1]),
        .I2(B[5]),
        .I3(A[0]),
        .O(lut_sig133_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[20].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[19]),
        .O(\NxM_mult.ppgen[2].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[2].carrychain[20].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[2]_19 ),
        .CO({\pp_cout[2]_23 ,\pp_cout[2]_22 ,\pp_cout[2]_21 ,\pp_cout[2]_20 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[2].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[2].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[2].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[2].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[2].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig111_out,lut_sig112_out,lut_sig113_out,lut_sig114_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[20].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[20]),
        .I2(B[5]),
        .I3(A[19]),
        .O(lut_sig114_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[21].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[20]),
        .O(\NxM_mult.ppgen[2].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[21].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[21]),
        .I2(B[5]),
        .I3(A[20]),
        .O(lut_sig113_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[22].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[21]),
        .O(\NxM_mult.ppgen[2].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[22].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[22]),
        .I2(B[5]),
        .I3(A[21]),
        .O(lut_sig112_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[23].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[22]),
        .O(\NxM_mult.ppgen[2].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[23].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[23]),
        .I2(B[5]),
        .I3(A[22]),
        .O(lut_sig111_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[24].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[23]),
        .O(\NxM_mult.ppgen[2].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[2].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[2]_23 ),
        .CO({\NLW_NxM_mult.ppgen[2].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_CO_UNCONNECTED [3],\pp_cout[2]_26 ,\pp_cout[2]_25 ,\pp_cout[2]_24 }),
        .CYINIT(1'b0),
        .DI({\NLW_NxM_mult.ppgen[2].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_DI_UNCONNECTED [3],\NxM_mult.ppgen[2].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[2].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[2].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[2].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig107_out,\NxM_mult.ppgen[2].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ,lut_sig109_out,lut_sig110_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[24].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[24]),
        .I2(B[5]),
        .I3(A[23]),
        .O(lut_sig110_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[25].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[24]),
        .O(\NxM_mult.ppgen[2].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[25].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[25]),
        .I2(B[5]),
        .I3(A[24]),
        .O(lut_sig109_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[26].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[25]),
        .O(\NxM_mult.ppgen[2].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \NxM_mult.ppgen[2].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(B[5]),
        .I2(A[25]),
        .O(\NxM_mult.ppgen[2].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \NxM_mult.ppgen[2].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0_i_1 
       (.I0(B[4]),
        .I1(B[5]),
        .I2(A[25]),
        .O(lut_sig107_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[2].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[1]),
        .O(\NxM_mult.ppgen[2].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[2].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[2]),
        .I2(B[5]),
        .I3(A[1]),
        .O(lut_sig132_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[3].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[2]),
        .O(\NxM_mult.ppgen[2].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[3].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[3]),
        .I2(B[5]),
        .I3(A[2]),
        .O(lut_sig131_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[4].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[3]),
        .O(\NxM_mult.ppgen[2].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[2].carrychain[4].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[2]_3 ),
        .CO({\pp_cout[2]_7 ,\pp_cout[2]_6 ,\pp_cout[2]_5 ,\pp_cout[2]_4 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[2].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[2].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[2].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[2].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[2].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig127_out,lut_sig128_out,lut_sig129_out,lut_sig130_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[4].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[4]),
        .I2(B[5]),
        .I3(A[3]),
        .O(lut_sig130_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[5].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[4]),
        .O(\NxM_mult.ppgen[2].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[5].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[5]),
        .I2(B[5]),
        .I3(A[4]),
        .O(lut_sig129_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[6].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[5]),
        .O(\NxM_mult.ppgen[2].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[6].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[6]),
        .I2(B[5]),
        .I3(A[5]),
        .O(lut_sig128_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[7].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[6]),
        .O(\NxM_mult.ppgen[2].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[7].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[7]),
        .I2(B[5]),
        .I3(A[6]),
        .O(lut_sig127_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[8].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[7]),
        .O(\NxM_mult.ppgen[2].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[2].carrychain[8].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[2]_7 ),
        .CO({\pp_cout[2]_11 ,\pp_cout[2]_10 ,\pp_cout[2]_9 ,\pp_cout[2]_8 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[2].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[2].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[2].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[2].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[2].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig123_out,lut_sig124_out,lut_sig125_out,lut_sig126_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[8].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[8]),
        .I2(B[5]),
        .I3(A[7]),
        .O(lut_sig126_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[2].carrychain[9].ppadd.b_is_even.stageN.ma0 
       (.I0(B[5]),
        .I1(A[8]),
        .O(\NxM_mult.ppgen[2].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[2].carrychain[9].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[4]),
        .I1(A[9]),
        .I2(B[5]),
        .I3(A[8]),
        .O(lut_sig125_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[0].ppadd.b_is_even.stageLSB.ma0 
       (.I0(B[6]),
        .I1(A[0]),
        .O(\NxM_mult.ppgen[3].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[3].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00_CARRY4 
       (.CI(1'b0),
        .CO({\pp_cout[3]_3 ,\pp_cout[3]_2 ,\pp_cout[3]_1 ,\pp_cout[3]_0 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[3].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[3].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[3].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[3].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 }),
        .O({\NxM_mult.ppgen[3].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[1].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0__0 }),
        .S({lut_sig104_out,lut_sig105_out,lut_sig106_out,lut_sig250_out}));
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00_i_1 
       (.I0(A[0]),
        .I1(B[6]),
        .O(lut_sig250_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[10].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[9]),
        .O(\NxM_mult.ppgen[3].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[10].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[10]),
        .I2(B[7]),
        .I3(A[9]),
        .O(lut_sig97_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[11].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[10]),
        .O(\NxM_mult.ppgen[3].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[11].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[11]),
        .I2(B[7]),
        .I3(A[10]),
        .O(lut_sig96_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[12].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[11]),
        .O(\NxM_mult.ppgen[3].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[3].carrychain[12].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[3]_11 ),
        .CO({\pp_cout[3]_15 ,\pp_cout[3]_14 ,\pp_cout[3]_13 ,\pp_cout[3]_12 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[3].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[3].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[3].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[3].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[3].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig92_out,lut_sig93_out,lut_sig94_out,lut_sig95_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[12].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[12]),
        .I2(B[7]),
        .I3(A[11]),
        .O(lut_sig95_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[13].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[12]),
        .O(\NxM_mult.ppgen[3].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[13].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[13]),
        .I2(B[7]),
        .I3(A[12]),
        .O(lut_sig94_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[14].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[13]),
        .O(\NxM_mult.ppgen[3].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[14].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[14]),
        .I2(B[7]),
        .I3(A[13]),
        .O(lut_sig93_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[15].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[14]),
        .O(\NxM_mult.ppgen[3].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[15].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[15]),
        .I2(B[7]),
        .I3(A[14]),
        .O(lut_sig92_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[16].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[15]),
        .O(\NxM_mult.ppgen[3].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[3].carrychain[16].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[3]_15 ),
        .CO({\pp_cout[3]_19 ,\pp_cout[3]_18 ,\pp_cout[3]_17 ,\pp_cout[3]_16 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[3].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[3].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[3].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[3].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[3].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig88_out,lut_sig89_out,lut_sig90_out,lut_sig91_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[16].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[16]),
        .I2(B[7]),
        .I3(A[15]),
        .O(lut_sig91_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[17].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[16]),
        .O(\NxM_mult.ppgen[3].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[17].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[17]),
        .I2(B[7]),
        .I3(A[16]),
        .O(lut_sig90_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[18].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[17]),
        .O(\NxM_mult.ppgen[3].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[18].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[18]),
        .I2(B[7]),
        .I3(A[17]),
        .O(lut_sig89_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[19].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[18]),
        .O(\NxM_mult.ppgen[3].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[19].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[19]),
        .I2(B[7]),
        .I3(A[18]),
        .O(lut_sig88_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[1].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[0]),
        .O(\NxM_mult.ppgen[3].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[1].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[1]),
        .I2(B[7]),
        .I3(A[0]),
        .O(lut_sig106_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[20].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[19]),
        .O(\NxM_mult.ppgen[3].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[3].carrychain[20].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[3]_19 ),
        .CO({\pp_cout[3]_23 ,\pp_cout[3]_22 ,\pp_cout[3]_21 ,\pp_cout[3]_20 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[3].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[3].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[3].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[3].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[3].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig84_out,lut_sig85_out,lut_sig86_out,lut_sig87_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[20].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[20]),
        .I2(B[7]),
        .I3(A[19]),
        .O(lut_sig87_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[21].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[20]),
        .O(\NxM_mult.ppgen[3].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[21].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[21]),
        .I2(B[7]),
        .I3(A[20]),
        .O(lut_sig86_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[22].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[21]),
        .O(\NxM_mult.ppgen[3].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[22].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[22]),
        .I2(B[7]),
        .I3(A[21]),
        .O(lut_sig85_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[23].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[22]),
        .O(\NxM_mult.ppgen[3].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[23].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[23]),
        .I2(B[7]),
        .I3(A[22]),
        .O(lut_sig84_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[24].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[23]),
        .O(\NxM_mult.ppgen[3].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[3].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[3]_23 ),
        .CO({\NLW_NxM_mult.ppgen[3].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_CO_UNCONNECTED [3],\pp_cout[3]_26 ,\pp_cout[3]_25 ,\pp_cout[3]_24 }),
        .CYINIT(1'b0),
        .DI({\NLW_NxM_mult.ppgen[3].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_DI_UNCONNECTED [3],\NxM_mult.ppgen[3].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[3].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[3].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[3].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig80_out,\NxM_mult.ppgen[3].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ,lut_sig82_out,lut_sig83_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[24].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[24]),
        .I2(B[7]),
        .I3(A[23]),
        .O(lut_sig83_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[25].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[24]),
        .O(\NxM_mult.ppgen[3].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[25].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[25]),
        .I2(B[7]),
        .I3(A[24]),
        .O(lut_sig82_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[26].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[25]),
        .O(\NxM_mult.ppgen[3].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \NxM_mult.ppgen[3].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(B[7]),
        .I2(A[25]),
        .O(\NxM_mult.ppgen[3].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \NxM_mult.ppgen[3].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0_i_1 
       (.I0(B[6]),
        .I1(B[7]),
        .I2(A[25]),
        .O(lut_sig80_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[2].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[1]),
        .O(\NxM_mult.ppgen[3].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[2].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[2]),
        .I2(B[7]),
        .I3(A[1]),
        .O(lut_sig105_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[3].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[2]),
        .O(\NxM_mult.ppgen[3].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[3].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[3]),
        .I2(B[7]),
        .I3(A[2]),
        .O(lut_sig104_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[4].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[3]),
        .O(\NxM_mult.ppgen[3].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[3].carrychain[4].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[3]_3 ),
        .CO({\pp_cout[3]_7 ,\pp_cout[3]_6 ,\pp_cout[3]_5 ,\pp_cout[3]_4 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[3].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[3].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[3].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[3].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[3].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig100_out,lut_sig101_out,lut_sig102_out,lut_sig103_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[4].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[4]),
        .I2(B[7]),
        .I3(A[3]),
        .O(lut_sig103_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[5].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[4]),
        .O(\NxM_mult.ppgen[3].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[5].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[5]),
        .I2(B[7]),
        .I3(A[4]),
        .O(lut_sig102_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[6].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[5]),
        .O(\NxM_mult.ppgen[3].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[6].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[6]),
        .I2(B[7]),
        .I3(A[5]),
        .O(lut_sig101_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[7].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[6]),
        .O(\NxM_mult.ppgen[3].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[7].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[7]),
        .I2(B[7]),
        .I3(A[6]),
        .O(lut_sig100_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[8].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[7]),
        .O(\NxM_mult.ppgen[3].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[3].carrychain[8].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[3]_7 ),
        .CO({\pp_cout[3]_11 ,\pp_cout[3]_10 ,\pp_cout[3]_9 ,\pp_cout[3]_8 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[3].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[3].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[3].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[3].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[3].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[3].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig96_out,lut_sig97_out,lut_sig98_out,lut_sig99_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[8].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[8]),
        .I2(B[7]),
        .I3(A[7]),
        .O(lut_sig99_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[3].carrychain[9].ppadd.b_is_even.stageN.ma0 
       (.I0(B[7]),
        .I1(A[8]),
        .O(\NxM_mult.ppgen[3].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[3].carrychain[9].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[6]),
        .I1(A[9]),
        .I2(B[7]),
        .I3(A[8]),
        .O(lut_sig98_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[0].ppadd.b_is_even.stageLSB.ma0 
       (.I0(B[8]),
        .I1(A[0]),
        .O(\NxM_mult.ppgen[4].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[4].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00_CARRY4 
       (.CI(1'b0),
        .CO({\pp_cout[4]_3 ,\pp_cout[4]_2 ,\pp_cout[4]_1 ,\pp_cout[4]_0 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[4].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[4].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[4].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[4].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 }),
        .O({\NxM_mult.ppgen[4].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[1].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0__0 }),
        .S({lut_sig77_out,lut_sig78_out,lut_sig79_out,lut_sig193_out}));
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00_i_1 
       (.I0(A[0]),
        .I1(B[8]),
        .O(lut_sig193_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[10].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[9]),
        .O(\NxM_mult.ppgen[4].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[10].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[10]),
        .I2(B[9]),
        .I3(A[9]),
        .O(lut_sig70_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[11].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[10]),
        .O(\NxM_mult.ppgen[4].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[11].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[11]),
        .I2(B[9]),
        .I3(A[10]),
        .O(lut_sig69_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[12].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[11]),
        .O(\NxM_mult.ppgen[4].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[4].carrychain[12].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[4]_11 ),
        .CO({\pp_cout[4]_15 ,\pp_cout[4]_14 ,\pp_cout[4]_13 ,\pp_cout[4]_12 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[4].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[4].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[4].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[4].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[4].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig65_out,lut_sig66_out,lut_sig67_out,lut_sig68_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[12].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[12]),
        .I2(B[9]),
        .I3(A[11]),
        .O(lut_sig68_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[13].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[12]),
        .O(\NxM_mult.ppgen[4].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[13].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[13]),
        .I2(B[9]),
        .I3(A[12]),
        .O(lut_sig67_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[14].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[13]),
        .O(\NxM_mult.ppgen[4].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[14].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[14]),
        .I2(B[9]),
        .I3(A[13]),
        .O(lut_sig66_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[15].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[14]),
        .O(\NxM_mult.ppgen[4].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[15].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[15]),
        .I2(B[9]),
        .I3(A[14]),
        .O(lut_sig65_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[16].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[15]),
        .O(\NxM_mult.ppgen[4].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[4].carrychain[16].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[4]_15 ),
        .CO({\pp_cout[4]_19 ,\pp_cout[4]_18 ,\pp_cout[4]_17 ,\pp_cout[4]_16 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[4].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[4].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[4].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[4].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[4].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig61_out,lut_sig62_out,lut_sig63_out,lut_sig64_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[16].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[16]),
        .I2(B[9]),
        .I3(A[15]),
        .O(lut_sig64_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[17].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[16]),
        .O(\NxM_mult.ppgen[4].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[17].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[17]),
        .I2(B[9]),
        .I3(A[16]),
        .O(lut_sig63_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[18].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[17]),
        .O(\NxM_mult.ppgen[4].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[18].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[18]),
        .I2(B[9]),
        .I3(A[17]),
        .O(lut_sig62_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[19].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[18]),
        .O(\NxM_mult.ppgen[4].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[19].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[19]),
        .I2(B[9]),
        .I3(A[18]),
        .O(lut_sig61_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[1].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[0]),
        .O(\NxM_mult.ppgen[4].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[1].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[1]),
        .I2(B[9]),
        .I3(A[0]),
        .O(lut_sig79_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[20].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[19]),
        .O(\NxM_mult.ppgen[4].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[4].carrychain[20].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[4]_19 ),
        .CO({\pp_cout[4]_23 ,\pp_cout[4]_22 ,\pp_cout[4]_21 ,\pp_cout[4]_20 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[4].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[4].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[4].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[4].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[4].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig57_out,lut_sig58_out,lut_sig59_out,lut_sig60_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[20].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[20]),
        .I2(B[9]),
        .I3(A[19]),
        .O(lut_sig60_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[21].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[20]),
        .O(\NxM_mult.ppgen[4].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[21].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[21]),
        .I2(B[9]),
        .I3(A[20]),
        .O(lut_sig59_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[22].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[21]),
        .O(\NxM_mult.ppgen[4].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[22].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[22]),
        .I2(B[9]),
        .I3(A[21]),
        .O(lut_sig58_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[23].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[22]),
        .O(\NxM_mult.ppgen[4].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[23].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[23]),
        .I2(B[9]),
        .I3(A[22]),
        .O(lut_sig57_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[24].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[23]),
        .O(\NxM_mult.ppgen[4].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[4].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[4]_23 ),
        .CO({\NLW_NxM_mult.ppgen[4].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_CO_UNCONNECTED [3],\pp_cout[4]_26 ,\pp_cout[4]_25 ,\pp_cout[4]_24 }),
        .CYINIT(1'b0),
        .DI({\NLW_NxM_mult.ppgen[4].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_DI_UNCONNECTED [3],\NxM_mult.ppgen[4].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[4].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[4].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[4].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig53_out,\NxM_mult.ppgen[4].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ,lut_sig55_out,lut_sig56_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[24].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[24]),
        .I2(B[9]),
        .I3(A[23]),
        .O(lut_sig56_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[25].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[24]),
        .O(\NxM_mult.ppgen[4].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[25].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[25]),
        .I2(B[9]),
        .I3(A[24]),
        .O(lut_sig55_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[26].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[25]),
        .O(\NxM_mult.ppgen[4].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \NxM_mult.ppgen[4].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(B[9]),
        .I2(A[25]),
        .O(\NxM_mult.ppgen[4].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \NxM_mult.ppgen[4].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0_i_1 
       (.I0(B[8]),
        .I1(B[9]),
        .I2(A[25]),
        .O(lut_sig53_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[2].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[1]),
        .O(\NxM_mult.ppgen[4].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[2].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[2]),
        .I2(B[9]),
        .I3(A[1]),
        .O(lut_sig78_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[3].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[2]),
        .O(\NxM_mult.ppgen[4].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[3].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[3]),
        .I2(B[9]),
        .I3(A[2]),
        .O(lut_sig77_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[4].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[3]),
        .O(\NxM_mult.ppgen[4].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[4].carrychain[4].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[4]_3 ),
        .CO({\pp_cout[4]_7 ,\pp_cout[4]_6 ,\pp_cout[4]_5 ,\pp_cout[4]_4 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[4].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[4].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[4].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[4].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[4].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig73_out,lut_sig74_out,lut_sig75_out,lut_sig76_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[4].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[4]),
        .I2(B[9]),
        .I3(A[3]),
        .O(lut_sig76_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[5].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[4]),
        .O(\NxM_mult.ppgen[4].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[5].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[5]),
        .I2(B[9]),
        .I3(A[4]),
        .O(lut_sig75_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[6].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[5]),
        .O(\NxM_mult.ppgen[4].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[6].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[6]),
        .I2(B[9]),
        .I3(A[5]),
        .O(lut_sig74_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[7].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[6]),
        .O(\NxM_mult.ppgen[4].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[7].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[7]),
        .I2(B[9]),
        .I3(A[6]),
        .O(lut_sig73_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[8].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[7]),
        .O(\NxM_mult.ppgen[4].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[4].carrychain[8].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[4]_7 ),
        .CO({\pp_cout[4]_11 ,\pp_cout[4]_10 ,\pp_cout[4]_9 ,\pp_cout[4]_8 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[4].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[4].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[4].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[4].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[4].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig69_out,lut_sig70_out,lut_sig71_out,lut_sig72_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[8].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[8]),
        .I2(B[9]),
        .I3(A[7]),
        .O(lut_sig72_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[4].carrychain[9].ppadd.b_is_even.stageN.ma0 
       (.I0(B[9]),
        .I1(A[8]),
        .O(\NxM_mult.ppgen[4].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[4].carrychain[9].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[8]),
        .I1(A[9]),
        .I2(B[9]),
        .I3(A[8]),
        .O(lut_sig71_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[0].ppadd.b_is_even.stageLSB.ma0 
       (.I0(B[10]),
        .I1(A[0]),
        .O(\NxM_mult.ppgen[5].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[5].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00_CARRY4 
       (.CI(1'b0),
        .CO({\pp_cout[5]_3 ,\pp_cout[5]_2 ,\pp_cout[5]_1 ,\pp_cout[5]_0 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[5].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[5].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[5].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[5].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 }),
        .O({\NxM_mult.ppgen[5].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[1].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0__0 }),
        .S({lut_sig50_out,lut_sig51_out,lut_sig52_out,\NxM_mult.ppgen[5].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00_i_1 
       (.I0(A[0]),
        .I1(B[10]),
        .O(\NxM_mult.ppgen[5].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[10].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[9]),
        .O(\NxM_mult.ppgen[5].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[10].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[10]),
        .I2(B[11]),
        .I3(A[9]),
        .O(lut_sig43_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[11].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[10]),
        .O(\NxM_mult.ppgen[5].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[11].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[11]),
        .I2(B[11]),
        .I3(A[10]),
        .O(lut_sig42_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[12].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[11]),
        .O(\NxM_mult.ppgen[5].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[5].carrychain[12].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[5]_11 ),
        .CO({\pp_cout[5]_15 ,\pp_cout[5]_14 ,\pp_cout[5]_13 ,\pp_cout[5]_12 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[5].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[5].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[5].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[5].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[5].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig38_out,lut_sig39_out,lut_sig40_out,lut_sig41_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[12].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[12]),
        .I2(B[11]),
        .I3(A[11]),
        .O(lut_sig41_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[13].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[12]),
        .O(\NxM_mult.ppgen[5].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[13].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[13]),
        .I2(B[11]),
        .I3(A[12]),
        .O(lut_sig40_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[14].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[13]),
        .O(\NxM_mult.ppgen[5].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[14].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[14]),
        .I2(B[11]),
        .I3(A[13]),
        .O(lut_sig39_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[15].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[14]),
        .O(\NxM_mult.ppgen[5].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[15].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[15]),
        .I2(B[11]),
        .I3(A[14]),
        .O(lut_sig38_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[16].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[15]),
        .O(\NxM_mult.ppgen[5].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[5].carrychain[16].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[5]_15 ),
        .CO({\pp_cout[5]_19 ,\pp_cout[5]_18 ,\pp_cout[5]_17 ,\pp_cout[5]_16 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[5].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[5].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[5].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[5].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[5].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig34_out,lut_sig35_out,lut_sig36_out,lut_sig37_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[16].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[16]),
        .I2(B[11]),
        .I3(A[15]),
        .O(lut_sig37_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[17].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[16]),
        .O(\NxM_mult.ppgen[5].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[17].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[17]),
        .I2(B[11]),
        .I3(A[16]),
        .O(lut_sig36_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[18].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[17]),
        .O(\NxM_mult.ppgen[5].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[18].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[18]),
        .I2(B[11]),
        .I3(A[17]),
        .O(lut_sig35_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[19].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[18]),
        .O(\NxM_mult.ppgen[5].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[19].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[19]),
        .I2(B[11]),
        .I3(A[18]),
        .O(lut_sig34_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[1].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[0]),
        .O(\NxM_mult.ppgen[5].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[1].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[1]),
        .I2(B[11]),
        .I3(A[0]),
        .O(lut_sig52_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[20].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[19]),
        .O(\NxM_mult.ppgen[5].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[5].carrychain[20].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[5]_19 ),
        .CO({\pp_cout[5]_23 ,\pp_cout[5]_22 ,\pp_cout[5]_21 ,\pp_cout[5]_20 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[5].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[5].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[5].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[5].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[5].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig30_out,lut_sig31_out,lut_sig32_out,lut_sig33_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[20].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[20]),
        .I2(B[11]),
        .I3(A[19]),
        .O(lut_sig33_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[21].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[20]),
        .O(\NxM_mult.ppgen[5].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[21].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[21]),
        .I2(B[11]),
        .I3(A[20]),
        .O(lut_sig32_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[22].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[21]),
        .O(\NxM_mult.ppgen[5].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[22].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[22]),
        .I2(B[11]),
        .I3(A[21]),
        .O(lut_sig31_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[23].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[22]),
        .O(\NxM_mult.ppgen[5].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[23].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[23]),
        .I2(B[11]),
        .I3(A[22]),
        .O(lut_sig30_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[24].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[23]),
        .O(\NxM_mult.ppgen[5].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[5].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[5]_23 ),
        .CO({\NLW_NxM_mult.ppgen[5].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_CO_UNCONNECTED [3],\pp_cout[5]_26 ,\pp_cout[5]_25 ,\pp_cout[5]_24 }),
        .CYINIT(1'b0),
        .DI({\NLW_NxM_mult.ppgen[5].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_DI_UNCONNECTED [3],\NxM_mult.ppgen[5].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[5].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[5].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[5].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig26_out,\NxM_mult.ppgen[5].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ,lut_sig28_out,lut_sig29_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[24].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[24]),
        .I2(B[11]),
        .I3(A[23]),
        .O(lut_sig29_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[25].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[24]),
        .O(\NxM_mult.ppgen[5].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[25].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[25]),
        .I2(B[11]),
        .I3(A[24]),
        .O(lut_sig28_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[26].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[25]),
        .O(\NxM_mult.ppgen[5].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \NxM_mult.ppgen[5].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(B[11]),
        .I2(A[25]),
        .O(\NxM_mult.ppgen[5].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \NxM_mult.ppgen[5].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0_i_1 
       (.I0(B[10]),
        .I1(B[11]),
        .I2(A[25]),
        .O(lut_sig26_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[2].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[1]),
        .O(\NxM_mult.ppgen[5].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[2].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[2]),
        .I2(B[11]),
        .I3(A[1]),
        .O(lut_sig51_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[3].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[2]),
        .O(\NxM_mult.ppgen[5].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[3].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[3]),
        .I2(B[11]),
        .I3(A[2]),
        .O(lut_sig50_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[4].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[3]),
        .O(\NxM_mult.ppgen[5].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[5].carrychain[4].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[5]_3 ),
        .CO({\pp_cout[5]_7 ,\pp_cout[5]_6 ,\pp_cout[5]_5 ,\pp_cout[5]_4 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[5].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[5].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[5].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[5].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[5].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig46_out,lut_sig47_out,lut_sig48_out,lut_sig49_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[4].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[4]),
        .I2(B[11]),
        .I3(A[3]),
        .O(lut_sig49_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[5].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[4]),
        .O(\NxM_mult.ppgen[5].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[5].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[5]),
        .I2(B[11]),
        .I3(A[4]),
        .O(lut_sig48_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[6].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[5]),
        .O(\NxM_mult.ppgen[5].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[6].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[6]),
        .I2(B[11]),
        .I3(A[5]),
        .O(lut_sig47_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[7].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[6]),
        .O(\NxM_mult.ppgen[5].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[7].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[7]),
        .I2(B[11]),
        .I3(A[6]),
        .O(lut_sig46_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[8].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[7]),
        .O(\NxM_mult.ppgen[5].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[5].carrychain[8].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[5]_7 ),
        .CO({\pp_cout[5]_11 ,\pp_cout[5]_10 ,\pp_cout[5]_9 ,\pp_cout[5]_8 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[5].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[5].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[5].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[5].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[5].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[5].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig42_out,lut_sig43_out,lut_sig44_out,lut_sig45_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[8].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[8]),
        .I2(B[11]),
        .I3(A[7]),
        .O(lut_sig45_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[5].carrychain[9].ppadd.b_is_even.stageN.ma0 
       (.I0(B[11]),
        .I1(A[8]),
        .O(\NxM_mult.ppgen[5].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[5].carrychain[9].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[10]),
        .I1(A[9]),
        .I2(B[11]),
        .I3(A[8]),
        .O(lut_sig44_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[0].ppadd.b_is_even.stageLSB.ma0 
       (.I0(B[12]),
        .I1(A[0]),
        .O(\NxM_mult.ppgen[6].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[6].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00_CARRY4 
       (.CI(1'b0),
        .CO({\pp_cout[6]_3 ,\pp_cout[6]_2 ,\pp_cout[6]_1 ,\pp_cout[6]_0 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[6].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[6].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[6].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[6].carrychain[0].ppadd.b_is_even.stageLSB.ma0_n_0 }),
        .O({\NxM_mult.ppgen[6].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[1].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0__0 }),
        .S({lut_sig23_out,lut_sig24_out,lut_sig25_out,\NxM_mult.ppgen[6].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00_i_1 
       (.I0(A[0]),
        .I1(B[12]),
        .O(\NxM_mult.ppgen[6].carrychain[0].ppadd.b_is_even.stageLSB.muxcy00_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[10].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[9]),
        .O(\NxM_mult.ppgen[6].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[10].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[10]),
        .I2(B[13]),
        .I3(A[9]),
        .O(lut_sig16_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[11].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[10]),
        .O(\NxM_mult.ppgen[6].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[11].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[11]),
        .I2(B[13]),
        .I3(A[10]),
        .O(lut_sig15_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[12].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[11]),
        .O(\NxM_mult.ppgen[6].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[6].carrychain[12].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[6]_11 ),
        .CO({\pp_cout[6]_15 ,\pp_cout[6]_14 ,\pp_cout[6]_13 ,\pp_cout[6]_12 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[6].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[6].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[6].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[6].carrychain[12].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[6].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig11_out,lut_sig12_out,lut_sig13_out,lut_sig14_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[12].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[12]),
        .I2(B[13]),
        .I3(A[11]),
        .O(lut_sig14_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[13].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[12]),
        .O(\NxM_mult.ppgen[6].carrychain[13].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[13].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[13]),
        .I2(B[13]),
        .I3(A[12]),
        .O(lut_sig13_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[14].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[13]),
        .O(\NxM_mult.ppgen[6].carrychain[14].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[14].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[14]),
        .I2(B[13]),
        .I3(A[13]),
        .O(lut_sig12_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[15].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[14]),
        .O(\NxM_mult.ppgen[6].carrychain[15].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[15].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[15]),
        .I2(B[13]),
        .I3(A[14]),
        .O(lut_sig11_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[16].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[15]),
        .O(\NxM_mult.ppgen[6].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[6].carrychain[16].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[6]_15 ),
        .CO({\pp_cout[6]_19 ,\pp_cout[6]_18 ,\pp_cout[6]_17 ,\pp_cout[6]_16 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[6].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[6].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[6].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[6].carrychain[16].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[6].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig7_out,lut_sig8_out,lut_sig9_out,lut_sig10_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[16].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[16]),
        .I2(B[13]),
        .I3(A[15]),
        .O(lut_sig10_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[17].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[16]),
        .O(\NxM_mult.ppgen[6].carrychain[17].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[17].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[17]),
        .I2(B[13]),
        .I3(A[16]),
        .O(lut_sig9_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[18].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[17]),
        .O(\NxM_mult.ppgen[6].carrychain[18].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[18].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[18]),
        .I2(B[13]),
        .I3(A[17]),
        .O(lut_sig8_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[19].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[18]),
        .O(\NxM_mult.ppgen[6].carrychain[19].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[19].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[19]),
        .I2(B[13]),
        .I3(A[18]),
        .O(lut_sig7_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[1].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[0]),
        .O(\NxM_mult.ppgen[6].carrychain[1].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[1].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[1]),
        .I2(B[13]),
        .I3(A[0]),
        .O(lut_sig25_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[20].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[19]),
        .O(\NxM_mult.ppgen[6].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[6].carrychain[20].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[6]_19 ),
        .CO({\pp_cout[6]_23 ,\pp_cout[6]_22 ,\pp_cout[6]_21 ,\pp_cout[6]_20 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[6].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[6].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[6].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[6].carrychain[20].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[6].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig3_out,lut_sig4_out,lut_sig5_out,lut_sig6_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[20].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[20]),
        .I2(B[13]),
        .I3(A[19]),
        .O(lut_sig6_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[21].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[20]),
        .O(\NxM_mult.ppgen[6].carrychain[21].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[21].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[21]),
        .I2(B[13]),
        .I3(A[20]),
        .O(lut_sig5_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[22].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[21]),
        .O(\NxM_mult.ppgen[6].carrychain[22].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[22].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[22]),
        .I2(B[13]),
        .I3(A[21]),
        .O(lut_sig4_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[23].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[22]),
        .O(\NxM_mult.ppgen[6].carrychain[23].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[23].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[23]),
        .I2(B[13]),
        .I3(A[22]),
        .O(lut_sig3_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[24].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[23]),
        .O(\NxM_mult.ppgen[6].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[6].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[6]_23 ),
        .CO({\NLW_NxM_mult.ppgen[6].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_CO_UNCONNECTED [3],\pp_cout[6]_26 ,\pp_cout[6]_25 ,\pp_cout[6]_24 }),
        .CYINIT(1'b0),
        .DI({\NLW_NxM_mult.ppgen[6].carrychain[24].ppadd.b_is_even.stageN.muxcy0_CARRY4_DI_UNCONNECTED [3],\NxM_mult.ppgen[6].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[6].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[6].carrychain[24].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[6].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({\NxM_mult.ppgen[6].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0_i_1_n_0 ,\NxM_mult.ppgen[6].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ,lut_sig1_out,lut_sig2_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[24].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[24]),
        .I2(B[13]),
        .I3(A[23]),
        .O(lut_sig2_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[25].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[24]),
        .O(\NxM_mult.ppgen[6].carrychain[25].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[25].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[25]),
        .I2(B[13]),
        .I3(A[24]),
        .O(lut_sig1_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[26].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[25]),
        .O(\NxM_mult.ppgen[6].carrychain[26].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \NxM_mult.ppgen[6].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(B[13]),
        .I2(A[25]),
        .O(\NxM_mult.ppgen[6].carrychain[26].ppadd.b_is_even.stageN.muxcy0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \NxM_mult.ppgen[6].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0_i_1 
       (.I0(B[12]),
        .I1(B[13]),
        .I2(A[25]),
        .O(\NxM_mult.ppgen[6].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[2].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[1]),
        .O(\NxM_mult.ppgen[6].carrychain[2].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[2].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[2]),
        .I2(B[13]),
        .I3(A[1]),
        .O(lut_sig24_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[3].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[2]),
        .O(\NxM_mult.ppgen[6].carrychain[3].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[3].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[3]),
        .I2(B[13]),
        .I3(A[2]),
        .O(lut_sig23_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[4].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[3]),
        .O(\NxM_mult.ppgen[6].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[6].carrychain[4].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[6]_3 ),
        .CO({\pp_cout[6]_7 ,\pp_cout[6]_6 ,\pp_cout[6]_5 ,\pp_cout[6]_4 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[6].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[6].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[6].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[6].carrychain[4].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[6].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig19_out,lut_sig20_out,lut_sig21_out,lut_sig22_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[4].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[4]),
        .I2(B[13]),
        .I3(A[3]),
        .O(lut_sig22_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[5].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[4]),
        .O(\NxM_mult.ppgen[6].carrychain[5].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[5].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[5]),
        .I2(B[13]),
        .I3(A[4]),
        .O(lut_sig21_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[6].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[5]),
        .O(\NxM_mult.ppgen[6].carrychain[6].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[6].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[6]),
        .I2(B[13]),
        .I3(A[5]),
        .O(lut_sig20_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[7].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[6]),
        .O(\NxM_mult.ppgen[6].carrychain[7].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[7].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[7]),
        .I2(B[13]),
        .I3(A[6]),
        .O(lut_sig19_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[8].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[7]),
        .O(\NxM_mult.ppgen[6].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[6].carrychain[8].ppadd.b_is_even.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[6]_7 ),
        .CO({\pp_cout[6]_11 ,\pp_cout[6]_10 ,\pp_cout[6]_9 ,\pp_cout[6]_8 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[6].carrychain[11].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[6].carrychain[10].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[6].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ,\NxM_mult.ppgen[6].carrychain[8].ppadd.b_is_even.stageN.ma0_n_0 }),
        .O({\NxM_mult.ppgen[6].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 }),
        .S({lut_sig15_out,lut_sig16_out,lut_sig17_out,lut_sig18_out}));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[8].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[8]),
        .I2(B[13]),
        .I3(A[7]),
        .O(lut_sig18_out));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[6].carrychain[9].ppadd.b_is_even.stageN.ma0 
       (.I0(B[13]),
        .I1(A[8]),
        .O(\NxM_mult.ppgen[6].carrychain[9].ppadd.b_is_even.stageN.ma0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \NxM_mult.ppgen[6].carrychain[9].ppadd.b_is_even.stageN.muxcy0_i_1 
       (.I0(B[12]),
        .I1(A[9]),
        .I2(B[13]),
        .I3(A[8]),
        .O(lut_sig17_out));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[7].carrychain[0].ppsub.stageLSB.muxcy1_CARRY4 
       (.CI(1'b0),
        .CO({\pp_cout[7]_3 ,\pp_cout[7]_2 ,\pp_cout[7]_1 ,\pp_cout[7]_0 }),
        .CYINIT(1'b1),
        .DI({\NxM_mult.ppgen[7].carrychain[3].ppsub.stageN.ma1_n_0 ,\NxM_mult.ppgen[7].carrychain[2].ppsub.stageN.ma1_n_0 ,\NxM_mult.ppgen[7].carrychain[1].ppsub.stageN.ma1_n_0 ,\NxM_mult.ppgen[7].carrychain[0].ppsub.stageLSB.muxcy1_i_2_n_0 }),
        .O({\NxM_mult.ppgen[7].carrychain[3].ppsub.stageN.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[2].ppsub.stageN.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[1].ppsub.stageN.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[0].ppsub.stageLSB.xorcy1__0 }),
        .S({\NxM_mult.ppgen[7].carrychain[3].ppsub.stageN.muxcy0_i_1_n_0 ,\NxM_mult.ppgen[7].carrychain[2].ppsub.stageN.muxcy0_i_1_n_0 ,\NxM_mult.ppgen[7].carrychain[1].ppsub.stageN.muxcy0_i_1_n_0 ,lut_sig}));
  LUT2 #(
    .INIT(4'h7)) 
    \NxM_mult.ppgen[7].carrychain[0].ppsub.stageLSB.muxcy1_i_1 
       (.I0(A[0]),
        .I1(B[14]),
        .O(lut_sig));
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[0].ppsub.stageLSB.muxcy1_i_2 
       (.I0(B[14]),
        .I1(A[0]),
        .O(\NxM_mult.ppgen[7].carrychain[0].ppsub.stageLSB.muxcy1_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[10].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[10]),
        .O(\NxM_mult.ppgen[7].carrychain[10].ppsub.stageN.ma1_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[10].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[10]),
        .I2(B[15]),
        .I3(A[9]),
        .O(\NxM_mult.ppgen[7].carrychain[10].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[11].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[11]),
        .O(\NxM_mult.ppgen[7].carrychain[11].ppsub.stageN.ma1_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[11].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[11]),
        .I2(B[15]),
        .I3(A[10]),
        .O(\NxM_mult.ppgen[7].carrychain[11].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[12].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[12]),
        .O(\NxM_mult.ppgen[7].carrychain[12].ppsub.stageN.ma1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[7].carrychain[12].ppsub.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[7]_11 ),
        .CO({\pp_cout[7]_15 ,\pp_cout[7]_14 ,\pp_cout[7]_13 ,\pp_cout[7]_12 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[7].carrychain[15].ppsub.stageN.ma1_n_0 ,\NxM_mult.ppgen[7].carrychain[14].ppsub.stageN.ma1_n_0 ,\NxM_mult.ppgen[7].carrychain[13].ppsub.stageN.ma1_n_0 ,\NxM_mult.ppgen[7].carrychain[12].ppsub.stageN.ma1_n_0 }),
        .O({\NxM_mult.ppgen[7].carrychain[15].ppsub.stageN.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[14].ppsub.stageN.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[13].ppsub.stageN.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[12].ppsub.stageN.xorcy0__0 }),
        .S({\NxM_mult.ppgen[7].carrychain[15].ppsub.stageN.muxcy0_i_1_n_0 ,\NxM_mult.ppgen[7].carrychain[14].ppsub.stageN.muxcy0_i_1_n_0 ,\NxM_mult.ppgen[7].carrychain[13].ppsub.stageN.muxcy0_i_1_n_0 ,\NxM_mult.ppgen[7].carrychain[12].ppsub.stageN.muxcy0_i_1_n_0 }));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[12].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[12]),
        .I2(B[15]),
        .I3(A[11]),
        .O(\NxM_mult.ppgen[7].carrychain[12].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[13].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[13]),
        .O(\NxM_mult.ppgen[7].carrychain[13].ppsub.stageN.ma1_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[13].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[13]),
        .I2(B[15]),
        .I3(A[12]),
        .O(\NxM_mult.ppgen[7].carrychain[13].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[14].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[14]),
        .O(\NxM_mult.ppgen[7].carrychain[14].ppsub.stageN.ma1_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[14].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[14]),
        .I2(B[15]),
        .I3(A[13]),
        .O(\NxM_mult.ppgen[7].carrychain[14].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[15].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[15]),
        .O(\NxM_mult.ppgen[7].carrychain[15].ppsub.stageN.ma1_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[15].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[15]),
        .I2(B[15]),
        .I3(A[14]),
        .O(\NxM_mult.ppgen[7].carrychain[15].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[16].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[16]),
        .O(\NxM_mult.ppgen[7].carrychain[16].ppsub.stageN.ma1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[7].carrychain[16].ppsub.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[7]_15 ),
        .CO({\pp_cout[7]_19 ,\pp_cout[7]_18 ,\pp_cout[7]_17 ,\pp_cout[7]_16 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[7].carrychain[19].ppsub.stageN.ma1_n_0 ,\NxM_mult.ppgen[7].carrychain[18].ppsub.stageN.ma1_n_0 ,\NxM_mult.ppgen[7].carrychain[17].ppsub.stageN.ma1_n_0 ,\NxM_mult.ppgen[7].carrychain[16].ppsub.stageN.ma1_n_0 }),
        .O({\NxM_mult.ppgen[7].carrychain[19].ppsub.stageN.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[18].ppsub.stageN.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[17].ppsub.stageN.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[16].ppsub.stageN.xorcy0__0 }),
        .S({\NxM_mult.ppgen[7].carrychain[19].ppsub.stageN.muxcy0_i_1_n_0 ,\NxM_mult.ppgen[7].carrychain[18].ppsub.stageN.muxcy0_i_1_n_0 ,\NxM_mult.ppgen[7].carrychain[17].ppsub.stageN.muxcy0_i_1_n_0 ,\NxM_mult.ppgen[7].carrychain[16].ppsub.stageN.muxcy0_i_1_n_0 }));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[16].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[16]),
        .I2(B[15]),
        .I3(A[15]),
        .O(\NxM_mult.ppgen[7].carrychain[16].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[17].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[17]),
        .O(\NxM_mult.ppgen[7].carrychain[17].ppsub.stageN.ma1_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[17].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[17]),
        .I2(B[15]),
        .I3(A[16]),
        .O(\NxM_mult.ppgen[7].carrychain[17].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[18].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[18]),
        .O(\NxM_mult.ppgen[7].carrychain[18].ppsub.stageN.ma1_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[18].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[18]),
        .I2(B[15]),
        .I3(A[17]),
        .O(\NxM_mult.ppgen[7].carrychain[18].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[19].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[19]),
        .O(\NxM_mult.ppgen[7].carrychain[19].ppsub.stageN.ma1_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[19].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[19]),
        .I2(B[15]),
        .I3(A[18]),
        .O(\NxM_mult.ppgen[7].carrychain[19].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[1].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[1]),
        .O(\NxM_mult.ppgen[7].carrychain[1].ppsub.stageN.ma1_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[1].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[1]),
        .I2(B[15]),
        .I3(A[0]),
        .O(\NxM_mult.ppgen[7].carrychain[1].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[20].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[20]),
        .O(\NxM_mult.ppgen[7].carrychain[20].ppsub.stageN.ma1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[7].carrychain[20].ppsub.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[7]_19 ),
        .CO({\pp_cout[7]_23 ,\pp_cout[7]_22 ,\pp_cout[7]_21 ,\pp_cout[7]_20 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[7].carrychain[23].ppsub.stageN.ma1_n_0 ,\NxM_mult.ppgen[7].carrychain[22].ppsub.stageN.ma1_n_0 ,\NxM_mult.ppgen[7].carrychain[21].ppsub.stageN.ma1_n_0 ,\NxM_mult.ppgen[7].carrychain[20].ppsub.stageN.ma1_n_0 }),
        .O({\NxM_mult.ppgen[7].carrychain[23].ppsub.stageN.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[22].ppsub.stageN.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[21].ppsub.stageN.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[20].ppsub.stageN.xorcy0__0 }),
        .S({\NxM_mult.ppgen[7].carrychain[23].ppsub.stageN.muxcy0_i_1_n_0 ,\NxM_mult.ppgen[7].carrychain[22].ppsub.stageN.muxcy0_i_1_n_0 ,\NxM_mult.ppgen[7].carrychain[21].ppsub.stageN.muxcy0_i_1_n_0 ,\NxM_mult.ppgen[7].carrychain[20].ppsub.stageN.muxcy0_i_1_n_0 }));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[20].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[20]),
        .I2(B[15]),
        .I3(A[19]),
        .O(\NxM_mult.ppgen[7].carrychain[20].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[21].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[21]),
        .O(\NxM_mult.ppgen[7].carrychain[21].ppsub.stageN.ma1_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[21].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[21]),
        .I2(B[15]),
        .I3(A[20]),
        .O(\NxM_mult.ppgen[7].carrychain[21].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[22].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[22]),
        .O(\NxM_mult.ppgen[7].carrychain[22].ppsub.stageN.ma1_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[22].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[22]),
        .I2(B[15]),
        .I3(A[21]),
        .O(\NxM_mult.ppgen[7].carrychain[22].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[23].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[23]),
        .O(\NxM_mult.ppgen[7].carrychain[23].ppsub.stageN.ma1_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[23].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[23]),
        .I2(B[15]),
        .I3(A[22]),
        .O(\NxM_mult.ppgen[7].carrychain[23].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[24].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[24]),
        .O(\NxM_mult.ppgen[7].carrychain[24].ppsub.stageN.ma1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[7].carrychain[24].ppsub.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[7]_23 ),
        .CO({\NLW_NxM_mult.ppgen[7].carrychain[24].ppsub.stageN.muxcy0_CARRY4_CO_UNCONNECTED [3],\pp_cout[7]_26 ,\pp_cout[7]_25 ,\pp_cout[7]_24 }),
        .CYINIT(1'b0),
        .DI({\NLW_NxM_mult.ppgen[7].carrychain[24].ppsub.stageN.muxcy0_CARRY4_DI_UNCONNECTED [3],\NxM_mult.ppgen[7].carrychain[26].ppsub.stageN.ma1_n_0 ,\NxM_mult.ppgen[7].carrychain[25].ppsub.stageN.ma1_n_0 ,\NxM_mult.ppgen[7].carrychain[24].ppsub.stageN.ma1_n_0 }),
        .O({\NxM_mult.ppgen[7].carrychain[27].ppsub.stageMSB.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[26].ppsub.stageN.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[25].ppsub.stageN.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[24].ppsub.stageN.xorcy0__0 }),
        .S({LI,\NxM_mult.ppgen[7].carrychain[26].ppsub.stageN.muxcy0_i_1_n_0 ,\NxM_mult.ppgen[7].carrychain[25].ppsub.stageN.muxcy0_i_1_n_0 ,\NxM_mult.ppgen[7].carrychain[24].ppsub.stageN.muxcy0_i_1_n_0 }));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[24].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[24]),
        .I2(B[15]),
        .I3(A[23]),
        .O(\NxM_mult.ppgen[7].carrychain[24].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[25].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[25]),
        .O(\NxM_mult.ppgen[7].carrychain[25].ppsub.stageN.ma1_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[25].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[25]),
        .I2(B[15]),
        .I3(A[24]),
        .O(\NxM_mult.ppgen[7].carrychain[25].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[26].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[25]),
        .O(\NxM_mult.ppgen[7].carrychain[26].ppsub.stageN.ma1_n_0 ));
  LUT3 #(
    .INIT(8'h9F)) 
    \NxM_mult.ppgen[7].carrychain[26].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(B[15]),
        .I2(A[25]),
        .O(\NxM_mult.ppgen[7].carrychain[26].ppsub.stageN.muxcy0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h9F)) 
    \NxM_mult.ppgen[7].carrychain[27].ppsub.stageMSB.xorcy0_i_1 
       (.I0(B[14]),
        .I1(B[15]),
        .I2(A[25]),
        .O(LI));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[2].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[2]),
        .O(\NxM_mult.ppgen[7].carrychain[2].ppsub.stageN.ma1_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[2].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[2]),
        .I2(B[15]),
        .I3(A[1]),
        .O(\NxM_mult.ppgen[7].carrychain[2].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[3].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[3]),
        .O(\NxM_mult.ppgen[7].carrychain[3].ppsub.stageN.ma1_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[3].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[3]),
        .I2(B[15]),
        .I3(A[2]),
        .O(\NxM_mult.ppgen[7].carrychain[3].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[4].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[4]),
        .O(\NxM_mult.ppgen[7].carrychain[4].ppsub.stageN.ma1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[7].carrychain[4].ppsub.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[7]_3 ),
        .CO({\pp_cout[7]_7 ,\pp_cout[7]_6 ,\pp_cout[7]_5 ,\pp_cout[7]_4 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[7].carrychain[7].ppsub.stageN.ma1_n_0 ,\NxM_mult.ppgen[7].carrychain[6].ppsub.stageN.ma1_n_0 ,\NxM_mult.ppgen[7].carrychain[5].ppsub.stageN.ma1_n_0 ,\NxM_mult.ppgen[7].carrychain[4].ppsub.stageN.ma1_n_0 }),
        .O({\NxM_mult.ppgen[7].carrychain[7].ppsub.stageN.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[6].ppsub.stageN.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[5].ppsub.stageN.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[4].ppsub.stageN.xorcy0__0 }),
        .S({\NxM_mult.ppgen[7].carrychain[7].ppsub.stageN.muxcy0_i_1_n_0 ,\NxM_mult.ppgen[7].carrychain[6].ppsub.stageN.muxcy0_i_1_n_0 ,\NxM_mult.ppgen[7].carrychain[5].ppsub.stageN.muxcy0_i_1_n_0 ,\NxM_mult.ppgen[7].carrychain[4].ppsub.stageN.muxcy0_i_1_n_0 }));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[4].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[4]),
        .I2(B[15]),
        .I3(A[3]),
        .O(\NxM_mult.ppgen[7].carrychain[4].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[5].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[5]),
        .O(\NxM_mult.ppgen[7].carrychain[5].ppsub.stageN.ma1_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[5].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[5]),
        .I2(B[15]),
        .I3(A[4]),
        .O(\NxM_mult.ppgen[7].carrychain[5].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[6].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[6]),
        .O(\NxM_mult.ppgen[7].carrychain[6].ppsub.stageN.ma1_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[6].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[6]),
        .I2(B[15]),
        .I3(A[5]),
        .O(\NxM_mult.ppgen[7].carrychain[6].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[7].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[7]),
        .O(\NxM_mult.ppgen[7].carrychain[7].ppsub.stageN.ma1_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[7].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[7]),
        .I2(B[15]),
        .I3(A[6]),
        .O(\NxM_mult.ppgen[7].carrychain[7].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[8].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[8]),
        .O(\NxM_mult.ppgen[7].carrychain[8].ppsub.stageN.ma1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \NxM_mult.ppgen[7].carrychain[8].ppsub.stageN.muxcy0_CARRY4 
       (.CI(\pp_cout[7]_7 ),
        .CO({\pp_cout[7]_11 ,\pp_cout[7]_10 ,\pp_cout[7]_9 ,\pp_cout[7]_8 }),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[7].carrychain[11].ppsub.stageN.ma1_n_0 ,\NxM_mult.ppgen[7].carrychain[10].ppsub.stageN.ma1_n_0 ,\NxM_mult.ppgen[7].carrychain[9].ppsub.stageN.ma1_n_0 ,\NxM_mult.ppgen[7].carrychain[8].ppsub.stageN.ma1_n_0 }),
        .O({\NxM_mult.ppgen[7].carrychain[11].ppsub.stageN.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[10].ppsub.stageN.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[9].ppsub.stageN.xorcy0__0 ,\NxM_mult.ppgen[7].carrychain[8].ppsub.stageN.xorcy0__0 }),
        .S({\NxM_mult.ppgen[7].carrychain[11].ppsub.stageN.muxcy0_i_1_n_0 ,\NxM_mult.ppgen[7].carrychain[10].ppsub.stageN.muxcy0_i_1_n_0 ,\NxM_mult.ppgen[7].carrychain[9].ppsub.stageN.muxcy0_i_1_n_0 ,\NxM_mult.ppgen[7].carrychain[8].ppsub.stageN.muxcy0_i_1_n_0 }));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[8].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[8]),
        .I2(B[15]),
        .I3(A[7]),
        .O(\NxM_mult.ppgen[7].carrychain[8].ppsub.stageN.muxcy0_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "MULT_AND" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \NxM_mult.ppgen[7].carrychain[9].ppsub.stageN.ma1 
       (.I0(B[14]),
        .I1(A[9]),
        .O(\NxM_mult.ppgen[7].carrychain[9].ppsub.stageN.ma1_n_0 ));
  LUT4 #(
    .INIT(16'h8777)) 
    \NxM_mult.ppgen[7].carrychain[9].ppsub.stageN.muxcy0_i_1 
       (.I0(B[14]),
        .I1(A[9]),
        .I2(B[15]),
        .I3(A[8]),
        .O(\NxM_mult.ppgen[7].carrychain[9].ppsub.stageN.muxcy0_i_1_n_0 ));
  CARRY4 plusOp__163_carry
       (.CI(1'b0),
        .CO({plusOp__163_carry_n_0,plusOp__163_carry_n_1,plusOp__163_carry_n_2,plusOp__163_carry_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp[5:2]),
        .O(P[7:4]),
        .S({plusOp__163_carry_i_1_n_0,plusOp__163_carry_i_2_n_0,plusOp__163_carry_i_3_n_0,plusOp__163_carry_i_4_n_0}));
  CARRY4 plusOp__163_carry__0
       (.CI(plusOp__163_carry_n_0),
        .CO({plusOp__163_carry__0_n_0,plusOp__163_carry__0_n_1,plusOp__163_carry__0_n_2,plusOp__163_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp[9:6]),
        .O(plusOp7[7:4]),
        .S({plusOp__163_carry__0_i_1_n_0,plusOp__163_carry__0_i_2_n_0,plusOp__163_carry__0_i_3_n_0,plusOp__163_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__0_i_1
       (.I0(plusOp[9]),
        .I1(plusOp1[5]),
        .O(plusOp__163_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__0_i_2
       (.I0(plusOp[8]),
        .I1(plusOp1[4]),
        .O(plusOp__163_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__0_i_3
       (.I0(plusOp[7]),
        .I1(plusOp1[3]),
        .O(plusOp__163_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__0_i_4
       (.I0(plusOp[6]),
        .I1(plusOp1[2]),
        .O(plusOp__163_carry__0_i_4_n_0));
  CARRY4 plusOp__163_carry__1
       (.CI(plusOp__163_carry__0_n_0),
        .CO({plusOp__163_carry__1_n_0,plusOp__163_carry__1_n_1,plusOp__163_carry__1_n_2,plusOp__163_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp[13:10]),
        .O(plusOp7[11:8]),
        .S({plusOp__163_carry__1_i_1_n_0,plusOp__163_carry__1_i_2_n_0,plusOp__163_carry__1_i_3_n_0,plusOp__163_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__1_i_1
       (.I0(plusOp[13]),
        .I1(plusOp1[9]),
        .O(plusOp__163_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__1_i_2
       (.I0(plusOp[12]),
        .I1(plusOp1[8]),
        .O(plusOp__163_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__1_i_3
       (.I0(plusOp[11]),
        .I1(plusOp1[7]),
        .O(plusOp__163_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__1_i_4
       (.I0(plusOp[10]),
        .I1(plusOp1[6]),
        .O(plusOp__163_carry__1_i_4_n_0));
  CARRY4 plusOp__163_carry__2
       (.CI(plusOp__163_carry__1_n_0),
        .CO({plusOp__163_carry__2_n_0,plusOp__163_carry__2_n_1,plusOp__163_carry__2_n_2,plusOp__163_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp[17:14]),
        .O(plusOp7[15:12]),
        .S({plusOp__163_carry__2_i_1_n_0,plusOp__163_carry__2_i_2_n_0,plusOp__163_carry__2_i_3_n_0,plusOp__163_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__2_i_1
       (.I0(plusOp[17]),
        .I1(plusOp1[13]),
        .O(plusOp__163_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__2_i_2
       (.I0(plusOp[16]),
        .I1(plusOp1[12]),
        .O(plusOp__163_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__2_i_3
       (.I0(plusOp[15]),
        .I1(plusOp1[11]),
        .O(plusOp__163_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__2_i_4
       (.I0(plusOp[14]),
        .I1(plusOp1[10]),
        .O(plusOp__163_carry__2_i_4_n_0));
  CARRY4 plusOp__163_carry__3
       (.CI(plusOp__163_carry__2_n_0),
        .CO({plusOp__163_carry__3_n_0,plusOp__163_carry__3_n_1,plusOp__163_carry__3_n_2,plusOp__163_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp[21:18]),
        .O(plusOp7[19:16]),
        .S({plusOp__163_carry__3_i_1_n_0,plusOp__163_carry__3_i_2_n_0,plusOp__163_carry__3_i_3_n_0,plusOp__163_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__3_i_1
       (.I0(plusOp[21]),
        .I1(plusOp1[17]),
        .O(plusOp__163_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__3_i_2
       (.I0(plusOp[20]),
        .I1(plusOp1[16]),
        .O(plusOp__163_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__3_i_3
       (.I0(plusOp[19]),
        .I1(plusOp1[15]),
        .O(plusOp__163_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__3_i_4
       (.I0(plusOp[18]),
        .I1(plusOp1[14]),
        .O(plusOp__163_carry__3_i_4_n_0));
  CARRY4 plusOp__163_carry__4
       (.CI(plusOp__163_carry__3_n_0),
        .CO({plusOp__163_carry__4_n_0,plusOp__163_carry__4_n_1,plusOp__163_carry__4_n_2,plusOp__163_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp[25:22]),
        .O(plusOp7[23:20]),
        .S({plusOp__163_carry__4_i_1_n_0,plusOp__163_carry__4_i_2_n_0,plusOp__163_carry__4_i_3_n_0,plusOp__163_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__4_i_1
       (.I0(plusOp[25]),
        .I1(plusOp1[21]),
        .O(plusOp__163_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__4_i_2
       (.I0(plusOp[24]),
        .I1(plusOp1[20]),
        .O(plusOp__163_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__4_i_3
       (.I0(plusOp[23]),
        .I1(plusOp1[19]),
        .O(plusOp__163_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__4_i_4
       (.I0(plusOp[22]),
        .I1(plusOp1[18]),
        .O(plusOp__163_carry__4_i_4_n_0));
  CARRY4 plusOp__163_carry__5
       (.CI(plusOp__163_carry__4_n_0),
        .CO({plusOp__163_carry__5_n_0,plusOp__163_carry__5_n_1,plusOp__163_carry__5_n_2,plusOp__163_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({plusOp1[24:23],plusOp__163_carry__5_i_1_n_0,plusOp[26]}),
        .O(plusOp7[27:24]),
        .S({plusOp__163_carry__5_i_2_n_0,plusOp__163_carry__5_i_3_n_0,plusOp__163_carry__5_i_4_n_0,plusOp__163_carry__5_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp__163_carry__5_i_1
       (.I0(plusOp1[23]),
        .O(plusOp__163_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__163_carry__5_i_2
       (.I0(plusOp1[24]),
        .I1(plusOp1[25]),
        .O(plusOp__163_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__163_carry__5_i_3
       (.I0(plusOp1[23]),
        .I1(plusOp1[24]),
        .O(plusOp__163_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__5_i_4
       (.I0(plusOp1[23]),
        .I1(plusOp[27]),
        .O(plusOp__163_carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry__5_i_5
       (.I0(plusOp[26]),
        .I1(plusOp1[22]),
        .O(plusOp__163_carry__5_i_5_n_0));
  CARRY4 plusOp__163_carry__6
       (.CI(plusOp__163_carry__5_n_0),
        .CO({NLW_plusOp__163_carry__6_CO_UNCONNECTED[3],plusOp__163_carry__6_n_1,NLW_plusOp__163_carry__6_CO_UNCONNECTED[1],plusOp__163_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,plusOp1[26:25]}),
        .O({NLW_plusOp__163_carry__6_O_UNCONNECTED[3:2],plusOp7[29:28]}),
        .S({1'b0,1'b1,plusOp__163_carry__6_i_1_n_0,plusOp__163_carry__6_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__163_carry__6_i_1
       (.I0(plusOp1[26]),
        .I1(plusOp1[27]),
        .O(plusOp__163_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__163_carry__6_i_2
       (.I0(plusOp1[25]),
        .I1(plusOp1[26]),
        .O(plusOp__163_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry_i_1
       (.I0(plusOp[5]),
        .I1(plusOp1[1]),
        .O(plusOp__163_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry_i_2
       (.I0(plusOp[4]),
        .I1(plusOp1[0]),
        .O(plusOp__163_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry_i_3
       (.I0(plusOp[3]),
        .I1(\NxM_mult.ppgen[2].carrychain[1].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__163_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__163_carry_i_4
       (.I0(plusOp[2]),
        .I1(\NxM_mult.ppgen[2].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0__0 ),
        .O(plusOp__163_carry_i_4_n_0));
  CARRY4 plusOp__253_carry
       (.CI(1'b0),
        .CO({plusOp__253_carry_n_0,plusOp__253_carry_n_1,plusOp__253_carry_n_2,plusOp__253_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[4].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp3[3:0]),
        .S({plusOp__253_carry_i_1_n_0,plusOp__253_carry_i_2_n_0,plusOp__253_carry_i_3_n_0,plusOp__253_carry_i_4_n_0}));
  CARRY4 plusOp__253_carry__0
       (.CI(plusOp__253_carry_n_0),
        .CO({plusOp__253_carry__0_n_0,plusOp__253_carry__0_n_1,plusOp__253_carry__0_n_2,plusOp__253_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[4].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp3[7:4]),
        .S({plusOp__253_carry__0_i_1_n_0,plusOp__253_carry__0_i_2_n_0,plusOp__253_carry__0_i_3_n_0,plusOp__253_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__0_i_1
       (.I0(\NxM_mult.ppgen[4].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__0_i_2
       (.I0(\NxM_mult.ppgen[4].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__0_i_3
       (.I0(\NxM_mult.ppgen[4].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__0_i_4
       (.I0(\NxM_mult.ppgen[4].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__0_i_4_n_0));
  CARRY4 plusOp__253_carry__1
       (.CI(plusOp__253_carry__0_n_0),
        .CO({plusOp__253_carry__1_n_0,plusOp__253_carry__1_n_1,plusOp__253_carry__1_n_2,plusOp__253_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[4].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp3[11:8]),
        .S({plusOp__253_carry__1_i_1_n_0,plusOp__253_carry__1_i_2_n_0,plusOp__253_carry__1_i_3_n_0,plusOp__253_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__1_i_1
       (.I0(\NxM_mult.ppgen[4].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__1_i_2
       (.I0(\NxM_mult.ppgen[4].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__1_i_3
       (.I0(\NxM_mult.ppgen[4].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__1_i_4
       (.I0(\NxM_mult.ppgen[4].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__1_i_4_n_0));
  CARRY4 plusOp__253_carry__2
       (.CI(plusOp__253_carry__1_n_0),
        .CO({plusOp__253_carry__2_n_0,plusOp__253_carry__2_n_1,plusOp__253_carry__2_n_2,plusOp__253_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[4].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp3[15:12]),
        .S({plusOp__253_carry__2_i_1_n_0,plusOp__253_carry__2_i_2_n_0,plusOp__253_carry__2_i_3_n_0,plusOp__253_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__2_i_1
       (.I0(\NxM_mult.ppgen[4].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__2_i_2
       (.I0(\NxM_mult.ppgen[4].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__2_i_3
       (.I0(\NxM_mult.ppgen[4].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__2_i_4
       (.I0(\NxM_mult.ppgen[4].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__2_i_4_n_0));
  CARRY4 plusOp__253_carry__3
       (.CI(plusOp__253_carry__2_n_0),
        .CO({plusOp__253_carry__3_n_0,plusOp__253_carry__3_n_1,plusOp__253_carry__3_n_2,plusOp__253_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[4].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp3[19:16]),
        .S({plusOp__253_carry__3_i_1_n_0,plusOp__253_carry__3_i_2_n_0,plusOp__253_carry__3_i_3_n_0,plusOp__253_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__3_i_1
       (.I0(\NxM_mult.ppgen[4].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__3_i_2
       (.I0(\NxM_mult.ppgen[4].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__3_i_3
       (.I0(\NxM_mult.ppgen[4].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__3_i_4
       (.I0(\NxM_mult.ppgen[4].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__3_i_4_n_0));
  CARRY4 plusOp__253_carry__4
       (.CI(plusOp__253_carry__3_n_0),
        .CO({plusOp__253_carry__4_n_0,plusOp__253_carry__4_n_1,plusOp__253_carry__4_n_2,plusOp__253_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[4].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[4].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp3[23:20]),
        .S({plusOp__253_carry__4_i_1_n_0,plusOp__253_carry__4_i_2_n_0,plusOp__253_carry__4_i_3_n_0,plusOp__253_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__4_i_1
       (.I0(\NxM_mult.ppgen[4].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__4_i_2
       (.I0(\NxM_mult.ppgen[4].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__4_i_3
       (.I0(\NxM_mult.ppgen[4].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__4_i_4
       (.I0(\NxM_mult.ppgen[4].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__4_i_4_n_0));
  CARRY4 plusOp__253_carry__5
       (.CI(plusOp__253_carry__4_n_0),
        .CO({NLW_plusOp__253_carry__5_CO_UNCONNECTED[3],plusOp__253_carry__5_n_1,plusOp__253_carry__5_n_2,plusOp__253_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\NxM_mult.ppgen[5].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ,plusOp__253_carry__5_i_1_n_0,\NxM_mult.ppgen[4].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp3[27:24]),
        .S({plusOp__253_carry__5_i_2_n_0,plusOp__253_carry__5_i_3_n_0,plusOp__253_carry__5_i_4_n_0,plusOp__253_carry__5_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp__253_carry__5_i_1
       (.I0(\NxM_mult.ppgen[5].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__253_carry__5_i_2
       (.I0(\NxM_mult.ppgen[5].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ),
        .O(plusOp__253_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__253_carry__5_i_3
       (.I0(\NxM_mult.ppgen[5].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__5_i_4
       (.I0(\NxM_mult.ppgen[5].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[4].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ),
        .O(plusOp__253_carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry__5_i_5
       (.I0(\NxM_mult.ppgen[4].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry__5_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry_i_1
       (.I0(\NxM_mult.ppgen[4].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry_i_2
       (.I0(\NxM_mult.ppgen[4].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry_i_3
       (.I0(\NxM_mult.ppgen[4].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[1].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__253_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__253_carry_i_4
       (.I0(\NxM_mult.ppgen[4].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[5].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0__0 ),
        .O(plusOp__253_carry_i_4_n_0));
  CARRY4 plusOp__335_carry
       (.CI(1'b0),
        .CO({plusOp__335_carry_n_0,plusOp__335_carry_n_1,plusOp__335_carry_n_2,plusOp__335_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[6].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp5[3:0]),
        .S({plusOp__335_carry_i_1_n_0,plusOp__335_carry_i_2_n_0,plusOp__335_carry_i_3_n_0,plusOp__335_carry_i_4_n_0}));
  CARRY4 plusOp__335_carry__0
       (.CI(plusOp__335_carry_n_0),
        .CO({plusOp__335_carry__0_n_0,plusOp__335_carry__0_n_1,plusOp__335_carry__0_n_2,plusOp__335_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[6].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp5[7:4]),
        .S({plusOp__335_carry__0_i_1_n_0,plusOp__335_carry__0_i_2_n_0,plusOp__335_carry__0_i_3_n_0,plusOp__335_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__0_i_1
       (.I0(\NxM_mult.ppgen[6].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[7].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__0_i_2
       (.I0(\NxM_mult.ppgen[6].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[6].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__0_i_3
       (.I0(\NxM_mult.ppgen[6].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[5].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__0_i_4
       (.I0(\NxM_mult.ppgen[6].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[4].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__0_i_4_n_0));
  CARRY4 plusOp__335_carry__1
       (.CI(plusOp__335_carry__0_n_0),
        .CO({plusOp__335_carry__1_n_0,plusOp__335_carry__1_n_1,plusOp__335_carry__1_n_2,plusOp__335_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[6].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp5[11:8]),
        .S({plusOp__335_carry__1_i_1_n_0,plusOp__335_carry__1_i_2_n_0,plusOp__335_carry__1_i_3_n_0,plusOp__335_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__1_i_1
       (.I0(\NxM_mult.ppgen[6].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[11].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__1_i_2
       (.I0(\NxM_mult.ppgen[6].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[10].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__1_i_3
       (.I0(\NxM_mult.ppgen[6].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[9].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__1_i_4
       (.I0(\NxM_mult.ppgen[6].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[8].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__1_i_4_n_0));
  CARRY4 plusOp__335_carry__2
       (.CI(plusOp__335_carry__1_n_0),
        .CO({plusOp__335_carry__2_n_0,plusOp__335_carry__2_n_1,plusOp__335_carry__2_n_2,plusOp__335_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[6].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp5[15:12]),
        .S({plusOp__335_carry__2_i_1_n_0,plusOp__335_carry__2_i_2_n_0,plusOp__335_carry__2_i_3_n_0,plusOp__335_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__2_i_1
       (.I0(\NxM_mult.ppgen[6].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[15].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__2_i_2
       (.I0(\NxM_mult.ppgen[6].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[14].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__2_i_3
       (.I0(\NxM_mult.ppgen[6].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[13].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__2_i_4
       (.I0(\NxM_mult.ppgen[6].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[12].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__2_i_4_n_0));
  CARRY4 plusOp__335_carry__3
       (.CI(plusOp__335_carry__2_n_0),
        .CO({plusOp__335_carry__3_n_0,plusOp__335_carry__3_n_1,plusOp__335_carry__3_n_2,plusOp__335_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[6].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp5[19:16]),
        .S({plusOp__335_carry__3_i_1_n_0,plusOp__335_carry__3_i_2_n_0,plusOp__335_carry__3_i_3_n_0,plusOp__335_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__3_i_1
       (.I0(\NxM_mult.ppgen[6].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[19].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__3_i_2
       (.I0(\NxM_mult.ppgen[6].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[18].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__3_i_3
       (.I0(\NxM_mult.ppgen[6].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[17].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__3_i_4
       (.I0(\NxM_mult.ppgen[6].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[16].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__3_i_4_n_0));
  CARRY4 plusOp__335_carry__4
       (.CI(plusOp__335_carry__3_n_0),
        .CO({plusOp__335_carry__4_n_0,plusOp__335_carry__4_n_1,plusOp__335_carry__4_n_2,plusOp__335_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[6].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[6].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp5[23:20]),
        .S({plusOp__335_carry__4_i_1_n_0,plusOp__335_carry__4_i_2_n_0,plusOp__335_carry__4_i_3_n_0,plusOp__335_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__4_i_1
       (.I0(\NxM_mult.ppgen[6].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[23].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__4_i_2
       (.I0(\NxM_mult.ppgen[6].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[22].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__4_i_3
       (.I0(\NxM_mult.ppgen[6].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[21].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__4_i_4
       (.I0(\NxM_mult.ppgen[6].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[20].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__4_i_4_n_0));
  CARRY4 plusOp__335_carry__5
       (.CI(plusOp__335_carry__4_n_0),
        .CO({NLW_plusOp__335_carry__5_CO_UNCONNECTED[3],plusOp__335_carry__5_n_1,plusOp__335_carry__5_n_2,plusOp__335_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\NxM_mult.ppgen[7].carrychain[25].ppsub.stageN.xorcy0__0 ,plusOp__335_carry__5_i_1_n_0,\NxM_mult.ppgen[6].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp5[27:24]),
        .S({plusOp__335_carry__5_i_2_n_0,plusOp__335_carry__5_i_3_n_0,plusOp__335_carry__5_i_4_n_0,plusOp__335_carry__5_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp__335_carry__5_i_1
       (.I0(\NxM_mult.ppgen[7].carrychain[25].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__335_carry__5_i_2
       (.I0(\NxM_mult.ppgen[7].carrychain[26].ppsub.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[27].ppsub.stageMSB.xorcy0__0 ),
        .O(plusOp__335_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__335_carry__5_i_3
       (.I0(\NxM_mult.ppgen[7].carrychain[25].ppsub.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[26].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__5_i_4
       (.I0(\NxM_mult.ppgen[7].carrychain[25].ppsub.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[6].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ),
        .O(plusOp__335_carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry__5_i_5
       (.I0(\NxM_mult.ppgen[6].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[24].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry__5_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry_i_1
       (.I0(\NxM_mult.ppgen[6].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[3].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry_i_2
       (.I0(\NxM_mult.ppgen[6].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[2].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry_i_3
       (.I0(\NxM_mult.ppgen[6].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[1].ppsub.stageN.xorcy0__0 ),
        .O(plusOp__335_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__335_carry_i_4
       (.I0(\NxM_mult.ppgen[6].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[7].carrychain[0].ppsub.stageLSB.xorcy1__0 ),
        .O(plusOp__335_carry_i_4_n_0));
  CARRY4 plusOp__417_carry
       (.CI(1'b0),
        .CO({plusOp__417_carry_n_0,plusOp__417_carry_n_1,plusOp__417_carry_n_2,plusOp__417_carry_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp3[5:2]),
        .O(plusOp9[3:0]),
        .S({plusOp__417_carry_i_1_n_0,plusOp__417_carry_i_2_n_0,plusOp__417_carry_i_3_n_0,plusOp__417_carry_i_4_n_0}));
  CARRY4 plusOp__417_carry__0
       (.CI(plusOp__417_carry_n_0),
        .CO({plusOp__417_carry__0_n_0,plusOp__417_carry__0_n_1,plusOp__417_carry__0_n_2,plusOp__417_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp3[9:6]),
        .O(plusOp9[7:4]),
        .S({plusOp__417_carry__0_i_1_n_0,plusOp__417_carry__0_i_2_n_0,plusOp__417_carry__0_i_3_n_0,plusOp__417_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__0_i_1
       (.I0(plusOp3[9]),
        .I1(plusOp5[5]),
        .O(plusOp__417_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__0_i_2
       (.I0(plusOp3[8]),
        .I1(plusOp5[4]),
        .O(plusOp__417_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__0_i_3
       (.I0(plusOp3[7]),
        .I1(plusOp5[3]),
        .O(plusOp__417_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__0_i_4
       (.I0(plusOp3[6]),
        .I1(plusOp5[2]),
        .O(plusOp__417_carry__0_i_4_n_0));
  CARRY4 plusOp__417_carry__1
       (.CI(plusOp__417_carry__0_n_0),
        .CO({plusOp__417_carry__1_n_0,plusOp__417_carry__1_n_1,plusOp__417_carry__1_n_2,plusOp__417_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp3[13:10]),
        .O(plusOp9[11:8]),
        .S({plusOp__417_carry__1_i_1_n_0,plusOp__417_carry__1_i_2_n_0,plusOp__417_carry__1_i_3_n_0,plusOp__417_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__1_i_1
       (.I0(plusOp3[13]),
        .I1(plusOp5[9]),
        .O(plusOp__417_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__1_i_2
       (.I0(plusOp3[12]),
        .I1(plusOp5[8]),
        .O(plusOp__417_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__1_i_3
       (.I0(plusOp3[11]),
        .I1(plusOp5[7]),
        .O(plusOp__417_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__1_i_4
       (.I0(plusOp3[10]),
        .I1(plusOp5[6]),
        .O(plusOp__417_carry__1_i_4_n_0));
  CARRY4 plusOp__417_carry__2
       (.CI(plusOp__417_carry__1_n_0),
        .CO({plusOp__417_carry__2_n_0,plusOp__417_carry__2_n_1,plusOp__417_carry__2_n_2,plusOp__417_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp3[17:14]),
        .O(plusOp9[15:12]),
        .S({plusOp__417_carry__2_i_1_n_0,plusOp__417_carry__2_i_2_n_0,plusOp__417_carry__2_i_3_n_0,plusOp__417_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__2_i_1
       (.I0(plusOp3[17]),
        .I1(plusOp5[13]),
        .O(plusOp__417_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__2_i_2
       (.I0(plusOp3[16]),
        .I1(plusOp5[12]),
        .O(plusOp__417_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__2_i_3
       (.I0(plusOp3[15]),
        .I1(plusOp5[11]),
        .O(plusOp__417_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__2_i_4
       (.I0(plusOp3[14]),
        .I1(plusOp5[10]),
        .O(plusOp__417_carry__2_i_4_n_0));
  CARRY4 plusOp__417_carry__3
       (.CI(plusOp__417_carry__2_n_0),
        .CO({plusOp__417_carry__3_n_0,plusOp__417_carry__3_n_1,plusOp__417_carry__3_n_2,plusOp__417_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp3[21:18]),
        .O(plusOp9[19:16]),
        .S({plusOp__417_carry__3_i_1_n_0,plusOp__417_carry__3_i_2_n_0,plusOp__417_carry__3_i_3_n_0,plusOp__417_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__3_i_1
       (.I0(plusOp3[21]),
        .I1(plusOp5[17]),
        .O(plusOp__417_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__3_i_2
       (.I0(plusOp3[20]),
        .I1(plusOp5[16]),
        .O(plusOp__417_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__3_i_3
       (.I0(plusOp3[19]),
        .I1(plusOp5[15]),
        .O(plusOp__417_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__3_i_4
       (.I0(plusOp3[18]),
        .I1(plusOp5[14]),
        .O(plusOp__417_carry__3_i_4_n_0));
  CARRY4 plusOp__417_carry__4
       (.CI(plusOp__417_carry__3_n_0),
        .CO({plusOp__417_carry__4_n_0,plusOp__417_carry__4_n_1,plusOp__417_carry__4_n_2,plusOp__417_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp3[25:22]),
        .O(plusOp9[23:20]),
        .S({plusOp__417_carry__4_i_1_n_0,plusOp__417_carry__4_i_2_n_0,plusOp__417_carry__4_i_3_n_0,plusOp__417_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__4_i_1
       (.I0(plusOp3[25]),
        .I1(plusOp5[21]),
        .O(plusOp__417_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__4_i_2
       (.I0(plusOp3[24]),
        .I1(plusOp5[20]),
        .O(plusOp__417_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__4_i_3
       (.I0(plusOp3[23]),
        .I1(plusOp5[19]),
        .O(plusOp__417_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__4_i_4
       (.I0(plusOp3[22]),
        .I1(plusOp5[18]),
        .O(plusOp__417_carry__4_i_4_n_0));
  CARRY4 plusOp__417_carry__5
       (.CI(plusOp__417_carry__4_n_0),
        .CO({plusOp__417_carry__5_n_0,plusOp__417_carry__5_n_1,plusOp__417_carry__5_n_2,plusOp__417_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({plusOp5[24:23],plusOp__417_carry__5_i_1_n_0,plusOp3[26]}),
        .O(plusOp9[27:24]),
        .S({plusOp__417_carry__5_i_2_n_0,plusOp__417_carry__5_i_3_n_0,plusOp__417_carry__5_i_4_n_0,plusOp__417_carry__5_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp__417_carry__5_i_1
       (.I0(plusOp5[23]),
        .O(plusOp__417_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__417_carry__5_i_2
       (.I0(plusOp5[24]),
        .I1(plusOp5[25]),
        .O(plusOp__417_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__417_carry__5_i_3
       (.I0(plusOp5[23]),
        .I1(plusOp5[24]),
        .O(plusOp__417_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__5_i_4
       (.I0(plusOp5[23]),
        .I1(plusOp3[27]),
        .O(plusOp__417_carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry__5_i_5
       (.I0(plusOp3[26]),
        .I1(plusOp5[22]),
        .O(plusOp__417_carry__5_i_5_n_0));
  CARRY4 plusOp__417_carry__6
       (.CI(plusOp__417_carry__5_n_0),
        .CO({NLW_plusOp__417_carry__6_CO_UNCONNECTED[3:1],plusOp__417_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,plusOp5[25]}),
        .O({NLW_plusOp__417_carry__6_O_UNCONNECTED[3:2],plusOp9[29:28]}),
        .S({1'b0,1'b0,plusOp__417_carry__6_i_1_n_0,plusOp__417_carry__6_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__417_carry__6_i_1
       (.I0(plusOp5[26]),
        .I1(plusOp5[27]),
        .O(plusOp__417_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__417_carry__6_i_2
       (.I0(plusOp5[25]),
        .I1(plusOp5[26]),
        .O(plusOp__417_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry_i_1
       (.I0(plusOp3[5]),
        .I1(plusOp5[1]),
        .O(plusOp__417_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry_i_2
       (.I0(plusOp3[4]),
        .I1(plusOp5[0]),
        .O(plusOp__417_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry_i_3
       (.I0(plusOp3[3]),
        .I1(\NxM_mult.ppgen[6].carrychain[1].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__417_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__417_carry_i_4
       (.I0(plusOp3[2]),
        .I1(\NxM_mult.ppgen[6].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0__0 ),
        .O(plusOp__417_carry_i_4_n_0));
  CARRY4 plusOp__505_carry
       (.CI(1'b0),
        .CO({plusOp__505_carry_n_0,plusOp__505_carry_n_1,plusOp__505_carry_n_2,plusOp__505_carry_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp7[7:4]),
        .O(P[11:8]),
        .S({plusOp__505_carry_i_1_n_0,plusOp__505_carry_i_2_n_0,plusOp__505_carry_i_3_n_0,plusOp__505_carry_i_4_n_0}));
  CARRY4 plusOp__505_carry__0
       (.CI(plusOp__505_carry_n_0),
        .CO({plusOp__505_carry__0_n_0,plusOp__505_carry__0_n_1,plusOp__505_carry__0_n_2,plusOp__505_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp7[11:8]),
        .O(P[15:12]),
        .S({plusOp__505_carry__0_i_1_n_0,plusOp__505_carry__0_i_2_n_0,plusOp__505_carry__0_i_3_n_0,plusOp__505_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__0_i_1
       (.I0(plusOp7[11]),
        .I1(plusOp9[3]),
        .O(plusOp__505_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__0_i_2
       (.I0(plusOp7[10]),
        .I1(plusOp9[2]),
        .O(plusOp__505_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__0_i_3
       (.I0(plusOp7[9]),
        .I1(plusOp9[1]),
        .O(plusOp__505_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__0_i_4
       (.I0(plusOp7[8]),
        .I1(plusOp9[0]),
        .O(plusOp__505_carry__0_i_4_n_0));
  CARRY4 plusOp__505_carry__1
       (.CI(plusOp__505_carry__0_n_0),
        .CO({plusOp__505_carry__1_n_0,plusOp__505_carry__1_n_1,plusOp__505_carry__1_n_2,plusOp__505_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp7[15:12]),
        .O(P[19:16]),
        .S({plusOp__505_carry__1_i_1_n_0,plusOp__505_carry__1_i_2_n_0,plusOp__505_carry__1_i_3_n_0,plusOp__505_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__1_i_1
       (.I0(plusOp7[15]),
        .I1(plusOp9[7]),
        .O(plusOp__505_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__1_i_2
       (.I0(plusOp7[14]),
        .I1(plusOp9[6]),
        .O(plusOp__505_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__1_i_3
       (.I0(plusOp7[13]),
        .I1(plusOp9[5]),
        .O(plusOp__505_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__1_i_4
       (.I0(plusOp7[12]),
        .I1(plusOp9[4]),
        .O(plusOp__505_carry__1_i_4_n_0));
  CARRY4 plusOp__505_carry__2
       (.CI(plusOp__505_carry__1_n_0),
        .CO({plusOp__505_carry__2_n_0,plusOp__505_carry__2_n_1,plusOp__505_carry__2_n_2,plusOp__505_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp7[19:16]),
        .O(P[23:20]),
        .S({plusOp__505_carry__2_i_1_n_0,plusOp__505_carry__2_i_2_n_0,plusOp__505_carry__2_i_3_n_0,plusOp__505_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__2_i_1
       (.I0(plusOp7[19]),
        .I1(plusOp9[11]),
        .O(plusOp__505_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__2_i_2
       (.I0(plusOp7[18]),
        .I1(plusOp9[10]),
        .O(plusOp__505_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__2_i_3
       (.I0(plusOp7[17]),
        .I1(plusOp9[9]),
        .O(plusOp__505_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__2_i_4
       (.I0(plusOp7[16]),
        .I1(plusOp9[8]),
        .O(plusOp__505_carry__2_i_4_n_0));
  CARRY4 plusOp__505_carry__3
       (.CI(plusOp__505_carry__2_n_0),
        .CO({plusOp__505_carry__3_n_0,plusOp__505_carry__3_n_1,plusOp__505_carry__3_n_2,plusOp__505_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp7[23:20]),
        .O(P[27:24]),
        .S({plusOp__505_carry__3_i_1_n_0,plusOp__505_carry__3_i_2_n_0,plusOp__505_carry__3_i_3_n_0,plusOp__505_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__3_i_1
       (.I0(plusOp7[23]),
        .I1(plusOp9[15]),
        .O(plusOp__505_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__3_i_2
       (.I0(plusOp7[22]),
        .I1(plusOp9[14]),
        .O(plusOp__505_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__3_i_3
       (.I0(plusOp7[21]),
        .I1(plusOp9[13]),
        .O(plusOp__505_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__3_i_4
       (.I0(plusOp7[20]),
        .I1(plusOp9[12]),
        .O(plusOp__505_carry__3_i_4_n_0));
  CARRY4 plusOp__505_carry__4
       (.CI(plusOp__505_carry__3_n_0),
        .CO({plusOp__505_carry__4_n_0,plusOp__505_carry__4_n_1,plusOp__505_carry__4_n_2,plusOp__505_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp7[27:24]),
        .O(P[31:28]),
        .S({plusOp__505_carry__4_i_1_n_0,plusOp__505_carry__4_i_2_n_0,plusOp__505_carry__4_i_3_n_0,plusOp__505_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__4_i_1
       (.I0(plusOp7[27]),
        .I1(plusOp9[19]),
        .O(plusOp__505_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__4_i_2
       (.I0(plusOp7[26]),
        .I1(plusOp9[18]),
        .O(plusOp__505_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__4_i_3
       (.I0(plusOp7[25]),
        .I1(plusOp9[17]),
        .O(plusOp__505_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__4_i_4
       (.I0(plusOp7[24]),
        .I1(plusOp9[16]),
        .O(plusOp__505_carry__4_i_4_n_0));
  CARRY4 plusOp__505_carry__5
       (.CI(plusOp__505_carry__4_n_0),
        .CO({plusOp__505_carry__5_n_0,plusOp__505_carry__5_n_1,plusOp__505_carry__5_n_2,plusOp__505_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({plusOp9[22],plusOp__163_carry__6_n_1,plusOp7[29:28]}),
        .O(P[35:32]),
        .S({plusOp__505_carry__5_i_1_n_0,plusOp__505_carry__5_i_2_n_0,plusOp__505_carry__5_i_3_n_0,plusOp__505_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__505_carry__5_i_1
       (.I0(plusOp9[22]),
        .I1(plusOp9[23]),
        .O(plusOp__505_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__505_carry__5_i_2
       (.I0(plusOp9[22]),
        .I1(plusOp__163_carry__6_n_1),
        .O(plusOp__505_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__5_i_3
       (.I0(plusOp7[29]),
        .I1(plusOp9[21]),
        .O(plusOp__505_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry__5_i_4
       (.I0(plusOp7[28]),
        .I1(plusOp9[20]),
        .O(plusOp__505_carry__5_i_4_n_0));
  CARRY4 plusOp__505_carry__6
       (.CI(plusOp__505_carry__5_n_0),
        .CO({plusOp__505_carry__6_n_0,plusOp__505_carry__6_n_1,plusOp__505_carry__6_n_2,plusOp__505_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI(plusOp9[26:23]),
        .O(P[39:36]),
        .S({plusOp__505_carry__6_i_1_n_0,plusOp__505_carry__6_i_2_n_0,plusOp__505_carry__6_i_3_n_0,plusOp__505_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__505_carry__6_i_1
       (.I0(plusOp9[26]),
        .I1(plusOp9[27]),
        .O(plusOp__505_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__505_carry__6_i_2
       (.I0(plusOp9[25]),
        .I1(plusOp9[26]),
        .O(plusOp__505_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__505_carry__6_i_3
       (.I0(plusOp9[24]),
        .I1(plusOp9[25]),
        .O(plusOp__505_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__505_carry__6_i_4
       (.I0(plusOp9[23]),
        .I1(plusOp9[24]),
        .O(plusOp__505_carry__6_i_4_n_0));
  CARRY4 plusOp__505_carry__7
       (.CI(plusOp__505_carry__6_n_0),
        .CO({NLW_plusOp__505_carry__7_CO_UNCONNECTED[3:1],plusOp__505_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,plusOp9[27]}),
        .O({NLW_plusOp__505_carry__7_O_UNCONNECTED[3:2],P[41:40]}),
        .S({1'b0,1'b0,plusOp__505_carry__7_i_1_n_0,plusOp__505_carry__7_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__505_carry__7_i_1
       (.I0(plusOp9[28]),
        .I1(plusOp9[29]),
        .O(plusOp__505_carry__7_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__505_carry__7_i_2
       (.I0(plusOp9[27]),
        .I1(plusOp9[28]),
        .O(plusOp__505_carry__7_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry_i_1
       (.I0(plusOp7[7]),
        .I1(plusOp3[1]),
        .O(plusOp__505_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry_i_2
       (.I0(plusOp7[6]),
        .I1(plusOp3[0]),
        .O(plusOp__505_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry_i_3
       (.I0(plusOp7[5]),
        .I1(\NxM_mult.ppgen[4].carrychain[1].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__505_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__505_carry_i_4
       (.I0(plusOp7[4]),
        .I1(\NxM_mult.ppgen[4].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0__0 ),
        .O(plusOp__505_carry_i_4_n_0));
  CARRY4 plusOp__81_carry
       (.CI(1'b0),
        .CO({plusOp__81_carry_n_0,plusOp__81_carry_n_1,plusOp__81_carry_n_2,plusOp__81_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[2].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp1[3:0]),
        .S({plusOp__81_carry_i_1_n_0,plusOp__81_carry_i_2_n_0,plusOp__81_carry_i_3_n_0,plusOp__81_carry_i_4_n_0}));
  CARRY4 plusOp__81_carry__0
       (.CI(plusOp__81_carry_n_0),
        .CO({plusOp__81_carry__0_n_0,plusOp__81_carry__0_n_1,plusOp__81_carry__0_n_2,plusOp__81_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[2].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp1[7:4]),
        .S({plusOp__81_carry__0_i_1_n_0,plusOp__81_carry__0_i_2_n_0,plusOp__81_carry__0_i_3_n_0,plusOp__81_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__0_i_1
       (.I0(\NxM_mult.ppgen[2].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__0_i_2
       (.I0(\NxM_mult.ppgen[2].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__0_i_3
       (.I0(\NxM_mult.ppgen[2].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__0_i_4
       (.I0(\NxM_mult.ppgen[2].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__0_i_4_n_0));
  CARRY4 plusOp__81_carry__1
       (.CI(plusOp__81_carry__0_n_0),
        .CO({plusOp__81_carry__1_n_0,plusOp__81_carry__1_n_1,plusOp__81_carry__1_n_2,plusOp__81_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[2].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp1[11:8]),
        .S({plusOp__81_carry__1_i_1_n_0,plusOp__81_carry__1_i_2_n_0,plusOp__81_carry__1_i_3_n_0,plusOp__81_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__1_i_1
       (.I0(\NxM_mult.ppgen[2].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__1_i_2
       (.I0(\NxM_mult.ppgen[2].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__1_i_3
       (.I0(\NxM_mult.ppgen[2].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__1_i_4
       (.I0(\NxM_mult.ppgen[2].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__1_i_4_n_0));
  CARRY4 plusOp__81_carry__2
       (.CI(plusOp__81_carry__1_n_0),
        .CO({plusOp__81_carry__2_n_0,plusOp__81_carry__2_n_1,plusOp__81_carry__2_n_2,plusOp__81_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[2].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp1[15:12]),
        .S({plusOp__81_carry__2_i_1_n_0,plusOp__81_carry__2_i_2_n_0,plusOp__81_carry__2_i_3_n_0,plusOp__81_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__2_i_1
       (.I0(\NxM_mult.ppgen[2].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__2_i_2
       (.I0(\NxM_mult.ppgen[2].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__2_i_3
       (.I0(\NxM_mult.ppgen[2].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__2_i_4
       (.I0(\NxM_mult.ppgen[2].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__2_i_4_n_0));
  CARRY4 plusOp__81_carry__3
       (.CI(plusOp__81_carry__2_n_0),
        .CO({plusOp__81_carry__3_n_0,plusOp__81_carry__3_n_1,plusOp__81_carry__3_n_2,plusOp__81_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[2].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp1[19:16]),
        .S({plusOp__81_carry__3_i_1_n_0,plusOp__81_carry__3_i_2_n_0,plusOp__81_carry__3_i_3_n_0,plusOp__81_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__3_i_1
       (.I0(\NxM_mult.ppgen[2].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__3_i_2
       (.I0(\NxM_mult.ppgen[2].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__3_i_3
       (.I0(\NxM_mult.ppgen[2].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__3_i_4
       (.I0(\NxM_mult.ppgen[2].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__3_i_4_n_0));
  CARRY4 plusOp__81_carry__4
       (.CI(plusOp__81_carry__3_n_0),
        .CO({plusOp__81_carry__4_n_0,plusOp__81_carry__4_n_1,plusOp__81_carry__4_n_2,plusOp__81_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[2].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[2].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp1[23:20]),
        .S({plusOp__81_carry__4_i_1_n_0,plusOp__81_carry__4_i_2_n_0,plusOp__81_carry__4_i_3_n_0,plusOp__81_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__4_i_1
       (.I0(\NxM_mult.ppgen[2].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__4_i_2
       (.I0(\NxM_mult.ppgen[2].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__4_i_3
       (.I0(\NxM_mult.ppgen[2].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__4_i_4
       (.I0(\NxM_mult.ppgen[2].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__4_i_4_n_0));
  CARRY4 plusOp__81_carry__5
       (.CI(plusOp__81_carry__4_n_0),
        .CO({NLW_plusOp__81_carry__5_CO_UNCONNECTED[3],plusOp__81_carry__5_n_1,plusOp__81_carry__5_n_2,plusOp__81_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\NxM_mult.ppgen[3].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ,plusOp__81_carry__5_i_1_n_0,\NxM_mult.ppgen[2].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp1[27:24]),
        .S({plusOp__81_carry__5_i_2_n_0,plusOp__81_carry__5_i_3_n_0,plusOp__81_carry__5_i_4_n_0,plusOp__81_carry__5_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp__81_carry__5_i_1
       (.I0(\NxM_mult.ppgen[3].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__81_carry__5_i_2
       (.I0(\NxM_mult.ppgen[3].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ),
        .O(plusOp__81_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp__81_carry__5_i_3
       (.I0(\NxM_mult.ppgen[3].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__5_i_4
       (.I0(\NxM_mult.ppgen[3].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[2].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ),
        .O(plusOp__81_carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry__5_i_5
       (.I0(\NxM_mult.ppgen[2].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry__5_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry_i_1
       (.I0(\NxM_mult.ppgen[2].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry_i_2
       (.I0(\NxM_mult.ppgen[2].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry_i_3
       (.I0(\NxM_mult.ppgen[2].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[1].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp__81_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp__81_carry_i_4
       (.I0(\NxM_mult.ppgen[2].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[3].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0__0 ),
        .O(plusOp__81_carry_i_4_n_0));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[0].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O({plusOp[3:2],P[3:2]}),
        .S({plusOp_carry_i_1_n_0,plusOp_carry_i_2_n_0,plusOp_carry_i_3_n_0,plusOp_carry_i_4_n_0}));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[0].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp[7:4]),
        .S({plusOp_carry__0_i_1_n_0,plusOp_carry__0_i_2_n_0,plusOp_carry__0_i_3_n_0,plusOp_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__0_i_1
       (.I0(\NxM_mult.ppgen[0].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__0_i_2
       (.I0(\NxM_mult.ppgen[0].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__0_i_3
       (.I0(\NxM_mult.ppgen[0].carrychain[7].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__0_i_4
       (.I0(\NxM_mult.ppgen[0].carrychain[6].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__0_i_4_n_0));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[0].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp[11:8]),
        .S({plusOp_carry__1_i_1_n_0,plusOp_carry__1_i_2_n_0,plusOp_carry__1_i_3_n_0,plusOp_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__1_i_1
       (.I0(\NxM_mult.ppgen[0].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__1_i_2
       (.I0(\NxM_mult.ppgen[0].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__1_i_3
       (.I0(\NxM_mult.ppgen[0].carrychain[11].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[9].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__1_i_4
       (.I0(\NxM_mult.ppgen[0].carrychain[10].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[8].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__1_i_4_n_0));
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[0].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp[15:12]),
        .S({plusOp_carry__2_i_1_n_0,plusOp_carry__2_i_2_n_0,plusOp_carry__2_i_3_n_0,plusOp_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__2_i_1
       (.I0(\NxM_mult.ppgen[0].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__2_i_2
       (.I0(\NxM_mult.ppgen[0].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__2_i_3
       (.I0(\NxM_mult.ppgen[0].carrychain[15].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[13].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__2_i_4
       (.I0(\NxM_mult.ppgen[0].carrychain[14].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[12].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__2_i_4_n_0));
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[0].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp[19:16]),
        .S({plusOp_carry__3_i_1_n_0,plusOp_carry__3_i_2_n_0,plusOp_carry__3_i_3_n_0,plusOp_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__3_i_1
       (.I0(\NxM_mult.ppgen[0].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__3_i_2
       (.I0(\NxM_mult.ppgen[0].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__3_i_3
       (.I0(\NxM_mult.ppgen[0].carrychain[19].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[17].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__3_i_4
       (.I0(\NxM_mult.ppgen[0].carrychain[18].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[16].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__3_i_4_n_0));
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\NxM_mult.ppgen[0].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ,\NxM_mult.ppgen[0].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp[23:20]),
        .S({plusOp_carry__4_i_1_n_0,plusOp_carry__4_i_2_n_0,plusOp_carry__4_i_3_n_0,plusOp_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__4_i_1
       (.I0(\NxM_mult.ppgen[0].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__4_i_2
       (.I0(\NxM_mult.ppgen[0].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__4_i_3
       (.I0(\NxM_mult.ppgen[0].carrychain[23].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[21].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__4_i_4
       (.I0(\NxM_mult.ppgen[0].carrychain[22].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[20].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__4_i_4_n_0));
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({NLW_plusOp_carry__5_CO_UNCONNECTED[3],plusOp_carry__5_n_1,plusOp_carry__5_n_2,plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\NxM_mult.ppgen[1].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ,plusOp_carry__5_i_1_n_0,\NxM_mult.ppgen[0].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 }),
        .O(plusOp[27:24]),
        .S({plusOp_carry__5_i_2_n_0,plusOp_carry__5_i_3_n_0,plusOp_carry__5_i_4_n_0,plusOp_carry__5_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry__5_i_1
       (.I0(\NxM_mult.ppgen[1].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__5_i_2
       (.I0(\NxM_mult.ppgen[1].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ),
        .O(plusOp_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__5_i_3
       (.I0(\NxM_mult.ppgen[1].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__5_i_4
       (.I0(\NxM_mult.ppgen[1].carrychain[25].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[0].carrychain[27].ppadd.b_is_even.stageMSB.xorcy0__0 ),
        .O(plusOp_carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry__5_i_5
       (.I0(\NxM_mult.ppgen[0].carrychain[26].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[24].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry__5_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_1
       (.I0(\NxM_mult.ppgen[0].carrychain[5].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_2
       (.I0(\NxM_mult.ppgen[0].carrychain[4].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_3
       (.I0(\NxM_mult.ppgen[0].carrychain[3].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[1].ppadd.b_is_even.stageN.xorcy0__0 ),
        .O(plusOp_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    plusOp_carry_i_4
       (.I0(\NxM_mult.ppgen[0].carrychain[2].ppadd.b_is_even.stageN.xorcy0__0 ),
        .I1(\NxM_mult.ppgen[1].carrychain[0].ppadd.b_is_even.stageLSB.xorcy0__0 ),
        .O(plusOp_carry_i_4_n_0));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "26" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "0" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "0" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "41" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_s_26_16_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [25:0]A;
  input [15:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [41:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [25:0]A;
  wire [15:0]B;
  wire [41:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "26" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "0" *) 
  (* C_OUT_HIGH = "41" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_optimize_goal = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_s_26_16_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(1'b0),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "26" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "0" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "0" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "41" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14_viv" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_s_26_16_mult_gen_v12_0_14_viv
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [25:0]A;
  input [15:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [41:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [25:0]A;
  wire [15:0]B;
  wire [41:0]P;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  mult_s_26_16_luts \gLUT.gLUT_speed.iLUT 
       (.A(A),
        .B(B),
        .P(P));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
