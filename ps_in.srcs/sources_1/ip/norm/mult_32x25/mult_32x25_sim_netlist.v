// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 12 16:06:21 2024
// Host        : aic-ts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/norm/mult_32x25/mult_32x25_sim_netlist.v
// Design      : mult_32x25
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_32x25,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module mult_32x25
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [24:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [56:0]P;

  wire [31:0]A;
  wire [24:0]B;
  wire CLK;
  wire [56:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "25" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "56" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_32x25_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* ORIG_REF_NAME = "delay_line" *) 
module mult_32x25_delay_line__parameterized3
   (P,
    D,
    CLK);
  output [16:0]P;
  input [16:0]D;
  input CLK;

  wire CLK;
  wire [16:0]D;
  wire [16:0]P;

  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d1.dout_i_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(P[0]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d1.dout_i_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[10]),
        .Q(P[10]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d1.dout_i_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[11]),
        .Q(P[11]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d1.dout_i_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[12]),
        .Q(P[12]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d1.dout_i_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[13]),
        .Q(P[13]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d1.dout_i_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[14]),
        .Q(P[14]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d1.dout_i_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[15]),
        .Q(P[15]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d1.dout_i_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[16]),
        .Q(P[16]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d1.dout_i_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(P[1]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d1.dout_i_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(P[2]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d1.dout_i_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(P[3]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d1.dout_i_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(P[4]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d1.dout_i_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(P[5]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d1.dout_i_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(P[6]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d1.dout_i_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(P[7]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d1.dout_i_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(P[8]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d1.dout_i_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(P[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dsp" *) 
module mult_32x25_dsp
   (P,
    PCASC,
    CLK,
    A,
    B);
  output [56:0]P;
  output [47:0]PCASC;
  input CLK;
  input [31:0]A;
  input [24:0]B;

  wire [31:0]A;
  wire [24:0]B;
  wire CLK;
  wire [56:0]P;
  wire [47:0]PCASC;
  wire [29:0]\acout[0,0] ;
  wire [47:0]\pcout[0,0] ;
  wire [16:0]\pi[0,0]5_out ;
  wire [42:40]\pi[0,1]1_out ;
  wire \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_OVERFLOW_UNCONNECTED ;
  wire \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_UNDERFLOW_UNCONNECTED ;
  wire [17:0]\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_CARRYOUT_UNCONNECTED ;
  wire [47:17]\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_P_UNCONNECTED ;
  wire \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_OVERFLOW_UNCONNECTED ;
  wire \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_CARRYOUT_UNCONNECTED ;
  wire [47:43]\NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_P_UNCONNECTED ;

  mult_32x25_delay_line__parameterized3 \use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay 
       (.CLK(CLK),
        .D(\pi[0,0]5_out ),
        .P(P[16:0]));
  (* box_type = "PRIMITIVE" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .IS_ALUMODE_INVERTED(4'b0000),
    .IS_CARRYIN_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_INMODE_INVERTED(5'b00000),
    .IS_OPMODE_INVERTED(7'b0000000),
    .MASK(48'h000000000000),
    .MREG(1),
    .OPMODEREG(1),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,B}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\acout[0,0] ),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,A[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b1),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_OVERFLOW_UNCONNECTED ),
        .P({\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_P_UNCONNECTED [47:17],\pi[0,0]5_out }),
        .PATTERNBDETECT(\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\pcout[0,0] ),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_UNDERFLOW_UNCONNECTED ));
  (* box_type = "PRIMITIVE" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(1),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(2),
    .BREG(2),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .IS_ALUMODE_INVERTED(4'b0000),
    .IS_CARRYIN_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_INMODE_INVERTED(5'b00000),
    .IS_OPMODE_INVERTED(7'b0000000),
    .MASK(48'h000000000000),
    .MREG(1),
    .OPMODEREG(1),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN(\acout[0,0] ),
        .ACOUT(\NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({A[31],A[31],A[31],A[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_BCOUT_UNCONNECTED [17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b1),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b1),
        .CLK(CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_OVERFLOW_UNCONNECTED ),
        .P({\NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_P_UNCONNECTED [47:43],\pi[0,1]1_out ,P[56:17]}),
        .PATTERNBDETECT(\NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_PATTERNDETECT_UNCONNECTED ),
        .PCIN(\pcout[0,0] ),
        .PCOUT(PCASC),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_UNDERFLOW_UNCONNECTED ));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "32" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "25" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "4" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "56" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_32x25_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [31:0]A;
  input [24:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [56:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [31:0]A;
  wire [24:0]B;
  wire CLK;
  wire [56:0]P;
  wire [47:0]PCASC;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "25" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "56" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_32x25_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(PCASC),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "32" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "25" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "4" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "56" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14_viv" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_32x25_mult_gen_v12_0_14_viv
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [31:0]A;
  input [24:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [56:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [31:0]A;
  wire [24:0]B;
  wire CLK;
  wire [56:0]P;
  wire [47:0]PCASC;

  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  mult_32x25_dsp \gDSP.gDSP_only.iDSP 
       (.A(A),
        .B(B),
        .CLK(CLK),
        .P(P),
        .PCASC(PCASC));
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
