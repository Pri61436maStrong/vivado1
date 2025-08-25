// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 12 16:05:48 2024
// Host        : aic-ts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/norm/addsub_int/addsub_int_sim_netlist.v
// Design      : addsub_int
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "addsub_int,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module addsub_int
   (A,
    B,
    CLK,
    ADD,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [22:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [14:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 add_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME add_intf, LAYERED_METADATA undef" *) input ADD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [23:0]S;

  wire [22:0]A;
  wire ADD;
  wire [14:0]B;
  wire CLK;
  wire [23:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "23" *) 
  (* c_add_mode = "2" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "000000000000000" *) 
  (* c_b_width = "15" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "24" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  addsub_int_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "2" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "23" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "000000000000000" *) 
(* C_B_WIDTH = "15" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "24" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module addsub_int_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [22:0]A;
  input [14:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [23:0]S;

  wire \<const0> ;
  wire [22:0]A;
  wire ADD;
  wire [14:0]B;
  wire CLK;
  wire [23:0]S;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  addsub_int_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(ADD),
        .B(B),
        .CLK(CLK),
        .S(S));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_fabric_legacy" *) 
module addsub_int_c_addsub_v12_0_12_fabric_legacy
   (S,
    A,
    CLK,
    B,
    ADD);
  output [23:0]S;
  input [22:0]A;
  input CLK;
  input [14:0]B;
  input ADD;

  wire [22:0]A;
  wire ADD;
  wire [14:0]B;
  wire CLK;
  wire [23:0]S;

  addsub_int_c_addsub_v12_0_12_lut6_legacy \i_lut6.i_lut6_addsub 
       (.A(A),
        .ADD(ADD),
        .B(B),
        .CLK(CLK),
        .S(S));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_legacy" *) 
module addsub_int_c_addsub_v12_0_12_legacy
   (S,
    A,
    CLK,
    B,
    ADD);
  output [23:0]S;
  input [22:0]A;
  input CLK;
  input [14:0]B;
  input ADD;

  wire [22:0]A;
  wire ADD;
  wire [14:0]B;
  wire CLK;
  wire [23:0]S;

  addsub_int_c_addsub_v12_0_12_fabric_legacy \no_pipelining.the_addsub 
       (.A(A),
        .ADD(ADD),
        .B(B),
        .CLK(CLK),
        .S(S));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_lut6_legacy" *) 
module addsub_int_c_addsub_v12_0_12_lut6_legacy
   (S,
    A,
    CLK,
    B,
    ADD);
  output [23:0]S;
  input [22:0]A;
  input CLK;
  input [14:0]B;
  input ADD;

  wire [22:0]A;
  wire ADD;
  wire [14:0]B;
  wire CI;
  wire CLK;
  wire LI;
  wire [23:0]S;
  wire S_0;
  wire carry_simple_0;
  wire carry_simple_1;
  wire carry_simple_10;
  wire carry_simple_11;
  wire carry_simple_12;
  wire carry_simple_13;
  wire carry_simple_14;
  wire carry_simple_15;
  wire carry_simple_16;
  wire carry_simple_17;
  wire carry_simple_18;
  wire carry_simple_19;
  wire carry_simple_2;
  wire carry_simple_20;
  wire carry_simple_21;
  wire carry_simple_22;
  wire carry_simple_3;
  wire carry_simple_4;
  wire carry_simple_5;
  wire carry_simple_6;
  wire carry_simple_7;
  wire carry_simple_8;
  wire carry_simple_9;
  wire \i_simple_model.carryxor0__0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[10].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[11].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[12].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[13].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[14].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[15].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[16].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[17].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[18].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[19].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[20].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[21].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[22].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0 ;
  wire p_0_out;
  wire p_10_out;
  wire p_11_out;
  wire p_12_out;
  wire p_13_out;
  wire p_14_out;
  wire p_15_out;
  wire p_16_out;
  wire p_17_out;
  wire p_18_out;
  wire p_19_out;
  wire p_1_out;
  wire p_20_out;
  wire p_21_out;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_out;
  wire p_8_out;
  wire p_9_out;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[20].carrymux_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[20].carrymux_CARRY4_DI_UNCONNECTED ;

  addsub_int_c_reg_fd_v12_0_5_viv \i_q.i_simple.qreg 
       (.CLK(CLK),
        .D({p_0_out,p_21_out,p_20_out,p_19_out,p_18_out,p_17_out,p_16_out,p_15_out,p_14_out,p_13_out,p_12_out,p_11_out,p_10_out,p_9_out,p_8_out,p_7_out,p_6_out,p_5_out,p_4_out,p_3_out,p_2_out,p_1_out,\i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ,\i_simple_model.carryxor0__0 }),
        .S(S));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.carrymux0_CARRY4 
       (.CI(1'b0),
        .CO({carry_simple_3,carry_simple_2,carry_simple_1,carry_simple_0}),
        .CYINIT(CI),
        .DI(A[3:0]),
        .O({p_2_out,p_1_out,\i_simple_model.i_gt_1.carrychaingen[1].carryxor__0 ,\i_simple_model.carryxor0__0 }),
        .S({\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ,S_0}));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.carrymux0_i_1 
       (.I0(B[0]),
        .I1(ADD),
        .I2(A[0]),
        .O(S_0));
  LUT1 #(
    .INIT(2'h1)) 
    \i_simple_model.carrymux0_i_2 
       (.I0(ADD),
        .O(CI));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[10].carrymux_i_1 
       (.I0(B[10]),
        .I1(ADD),
        .I2(A[10]),
        .O(\i_simple_model.i_gt_1.carrychaingen[10].carrymux_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[11].carrymux_i_1 
       (.I0(B[11]),
        .I1(ADD),
        .I2(A[11]),
        .O(\i_simple_model.i_gt_1.carrychaingen[11].carrymux_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[12].carrymux_CARRY4 
       (.CI(carry_simple_11),
        .CO({carry_simple_15,carry_simple_14,carry_simple_13,carry_simple_12}),
        .CYINIT(1'b0),
        .DI(A[15:12]),
        .O({p_14_out,p_13_out,p_12_out,p_11_out}),
        .S({\i_simple_model.i_gt_1.carrychaingen[15].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[14].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[13].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[12].carrymux_i_1_n_0 }));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[12].carrymux_i_1 
       (.I0(B[12]),
        .I1(ADD),
        .I2(A[12]),
        .O(\i_simple_model.i_gt_1.carrychaingen[12].carrymux_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[13].carrymux_i_1 
       (.I0(B[13]),
        .I1(ADD),
        .I2(A[13]),
        .O(\i_simple_model.i_gt_1.carrychaingen[13].carrymux_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[14].carrymux_i_1 
       (.I0(B[14]),
        .I1(ADD),
        .I2(A[14]),
        .O(\i_simple_model.i_gt_1.carrychaingen[14].carrymux_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[15].carrymux_i_1 
       (.I0(B[14]),
        .I1(ADD),
        .I2(A[15]),
        .O(\i_simple_model.i_gt_1.carrychaingen[15].carrymux_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[16].carrymux_CARRY4 
       (.CI(carry_simple_15),
        .CO({carry_simple_19,carry_simple_18,carry_simple_17,carry_simple_16}),
        .CYINIT(1'b0),
        .DI(A[19:16]),
        .O({p_18_out,p_17_out,p_16_out,p_15_out}),
        .S({\i_simple_model.i_gt_1.carrychaingen[19].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[18].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[17].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[16].carrymux_i_1_n_0 }));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[16].carrymux_i_1 
       (.I0(B[14]),
        .I1(ADD),
        .I2(A[16]),
        .O(\i_simple_model.i_gt_1.carrychaingen[16].carrymux_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[17].carrymux_i_1 
       (.I0(B[14]),
        .I1(ADD),
        .I2(A[17]),
        .O(\i_simple_model.i_gt_1.carrychaingen[17].carrymux_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[18].carrymux_i_1 
       (.I0(B[14]),
        .I1(ADD),
        .I2(A[18]),
        .O(\i_simple_model.i_gt_1.carrychaingen[18].carrymux_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[19].carrymux_i_1 
       (.I0(B[14]),
        .I1(ADD),
        .I2(A[19]),
        .O(\i_simple_model.i_gt_1.carrychaingen[19].carrymux_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1 
       (.I0(B[1]),
        .I1(ADD),
        .I2(A[1]),
        .O(\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[20].carrymux_CARRY4 
       (.CI(carry_simple_19),
        .CO({\NLW_i_simple_model.i_gt_1.carrychaingen[20].carrymux_CARRY4_CO_UNCONNECTED [3],carry_simple_22,carry_simple_21,carry_simple_20}),
        .CYINIT(1'b0),
        .DI({\NLW_i_simple_model.i_gt_1.carrychaingen[20].carrymux_CARRY4_DI_UNCONNECTED [3],A[22:20]}),
        .O({p_0_out,p_21_out,p_20_out,p_19_out}),
        .S({LI,\i_simple_model.i_gt_1.carrychaingen[22].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[21].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[20].carrymux_i_1_n_0 }));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[20].carrymux_i_1 
       (.I0(B[14]),
        .I1(ADD),
        .I2(A[20]),
        .O(\i_simple_model.i_gt_1.carrychaingen[20].carrymux_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[21].carrymux_i_1 
       (.I0(B[14]),
        .I1(ADD),
        .I2(A[21]),
        .O(\i_simple_model.i_gt_1.carrychaingen[21].carrymux_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[22].carrymux_i_1 
       (.I0(B[14]),
        .I1(ADD),
        .I2(A[22]),
        .O(\i_simple_model.i_gt_1.carrychaingen[22].carrymux_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1 
       (.I0(B[2]),
        .I1(ADD),
        .I2(A[2]),
        .O(\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1 
       (.I0(B[3]),
        .I1(ADD),
        .I2(A[3]),
        .O(\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4 
       (.CI(carry_simple_3),
        .CO({carry_simple_7,carry_simple_6,carry_simple_5,carry_simple_4}),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O({p_6_out,p_5_out,p_4_out,p_3_out}),
        .S({\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 }));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1 
       (.I0(B[4]),
        .I1(ADD),
        .I2(A[4]),
        .O(\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1 
       (.I0(B[5]),
        .I1(ADD),
        .I2(A[5]),
        .O(\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1 
       (.I0(B[6]),
        .I1(ADD),
        .I2(A[6]),
        .O(\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1 
       (.I0(B[7]),
        .I1(ADD),
        .I2(A[7]),
        .O(\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4 
       (.CI(carry_simple_7),
        .CO({carry_simple_11,carry_simple_10,carry_simple_9,carry_simple_8}),
        .CYINIT(1'b0),
        .DI(A[11:8]),
        .O({p_10_out,p_9_out,p_8_out,p_7_out}),
        .S({\i_simple_model.i_gt_1.carrychaingen[11].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[10].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 }));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1 
       (.I0(B[8]),
        .I1(ADD),
        .I2(A[8]),
        .O(\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1 
       (.I0(B[9]),
        .I1(ADD),
        .I2(A[9]),
        .O(\i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \i_simple_model.i_gt_1.carryxortop_i_1 
       (.I0(B[14]),
        .I1(ADD),
        .I2(A[22]),
        .O(LI));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_viv" *) 
module addsub_int_c_addsub_v12_0_12_viv
   (S,
    A,
    CLK,
    B,
    ADD);
  output [23:0]S;
  input [22:0]A;
  input CLK;
  input [14:0]B;
  input ADD;

  wire [22:0]A;
  wire ADD;
  wire [14:0]B;
  wire CLK;
  wire [23:0]S;

  addsub_int_c_addsub_v12_0_12_legacy \i_baseblox.i_baseblox_addsub 
       (.A(A),
        .ADD(ADD),
        .B(B),
        .CLK(CLK),
        .S(S));
endmodule

(* ORIG_REF_NAME = "c_reg_fd_v12_0_5_viv" *) 
module addsub_int_c_reg_fd_v12_0_5_viv
   (S,
    D,
    CLK);
  output [23:0]S;
  input [23:0]D;
  input CLK;

  wire CLK;
  wire [23:0]D;
  wire [23:0]S;

  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(S[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[10]),
        .Q(S[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[11]),
        .Q(S[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[12]),
        .Q(S[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[13]),
        .Q(S[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[14]),
        .Q(S[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[15]),
        .Q(S[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[16]),
        .Q(S[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[17]),
        .Q(S[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[18]),
        .Q(S[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(S[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[19]),
        .Q(S[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[20]),
        .Q(S[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[21]),
        .Q(S[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[22]),
        .Q(S[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[23]),
        .Q(S[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(S[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(S[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(S[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(S[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(S[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(S[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(S[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i_no_async_controls.output_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(S[8]),
        .R(1'b0));
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
