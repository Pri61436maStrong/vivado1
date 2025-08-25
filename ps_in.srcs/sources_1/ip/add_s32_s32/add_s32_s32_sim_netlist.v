// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Aug 20 14:32:31 2024
// Host        : aic-ts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0820/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/add_s32_s32/add_s32_s32_sim_netlist.v
// Design      : add_s32_s32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_s32_s32,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module add_s32_s32
   (A,
    B,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [31:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "32" *) 
  (* c_add_mode = "0" *) 
  (* c_ainit_val = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000000000000000000000" *) 
  (* c_b_width = "32" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_latency = "0" *) 
  (* c_out_width = "32" *) 
  (* c_sinit_val = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_s32_s32_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "32" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000000000000000000000" *) 
(* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "32" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module add_s32_s32_c_addsub_v12_0_12
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
  input [31:0]A;
  input [31:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [31:0]S;

  wire \<const0> ;
  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]S;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  add_s32_s32_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .B(B),
        .S(S));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_fabric_legacy" *) 
module add_s32_s32_c_addsub_v12_0_12_fabric_legacy
   (S,
    A,
    B);
  output [31:0]S;
  input [31:0]A;
  input [31:0]B;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]S;

  add_s32_s32_c_addsub_v12_0_12_lut6_legacy \i_lut6.i_lut6_addsub 
       (.A(A),
        .B(B),
        .S(S));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_legacy" *) 
module add_s32_s32_c_addsub_v12_0_12_legacy
   (S,
    A,
    B);
  output [31:0]S;
  input [31:0]A;
  input [31:0]B;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]S;

  add_s32_s32_c_addsub_v12_0_12_fabric_legacy \no_pipelining.the_addsub 
       (.A(A),
        .B(B),
        .S(S));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_lut6_legacy" *) 
module add_s32_s32_c_addsub_v12_0_12_lut6_legacy
   (S,
    A,
    B);
  output [31:0]S;
  input [31:0]A;
  input [31:0]B;

  wire [31:0]A;
  wire [31:0]B;
  wire CI;
  wire LI;
  wire [31:0]S;
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
  wire carry_simple_23;
  wire carry_simple_24;
  wire carry_simple_25;
  wire carry_simple_26;
  wire carry_simple_27;
  wire carry_simple_28;
  wire carry_simple_29;
  wire carry_simple_3;
  wire carry_simple_4;
  wire carry_simple_5;
  wire carry_simple_6;
  wire carry_simple_7;
  wire carry_simple_8;
  wire carry_simple_9;
  wire \i_simple_model.i_gt_1.carrychaingen[10].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[11].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[12].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[13].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[14].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[15].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[16].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[17].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[18].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[19].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[1].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[20].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[21].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[22].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[23].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[24].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[25].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[26].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[27].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[28].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[29].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[2].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[30].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[3].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[4].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[5].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[6].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[7].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[8].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[9].carryxor_i_1_n_0 ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[28].carrymux_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[28].carrymux_CARRY4_DI_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.carrymux0_CARRY4 
       (.CI(1'b0),
        .CO({carry_simple_3,carry_simple_2,carry_simple_1,carry_simple_0}),
        .CYINIT(1'b0),
        .DI(A[3:0]),
        .O(S[3:0]),
        .S({\i_simple_model.i_gt_1.carrychaingen[3].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[2].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[1].carryxor_i_1_n_0 ,S_0}));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.carryxor0_i_1 
       (.I0(B[0]),
        .I1(A[0]),
        .O(S_0));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[10].carryxor_i_1 
       (.I0(B[10]),
        .I1(A[10]),
        .O(\i_simple_model.i_gt_1.carrychaingen[10].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[11].carryxor_i_1 
       (.I0(B[11]),
        .I1(A[11]),
        .O(\i_simple_model.i_gt_1.carrychaingen[11].carryxor_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[12].carrymux_CARRY4 
       (.CI(carry_simple_11),
        .CO({carry_simple_15,carry_simple_14,carry_simple_13,carry_simple_12}),
        .CYINIT(1'b0),
        .DI(A[15:12]),
        .O(S[15:12]),
        .S({\i_simple_model.i_gt_1.carrychaingen[15].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[14].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[13].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[12].carryxor_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[12].carryxor_i_1 
       (.I0(B[12]),
        .I1(A[12]),
        .O(\i_simple_model.i_gt_1.carrychaingen[12].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[13].carryxor_i_1 
       (.I0(B[13]),
        .I1(A[13]),
        .O(\i_simple_model.i_gt_1.carrychaingen[13].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[14].carryxor_i_1 
       (.I0(B[14]),
        .I1(A[14]),
        .O(\i_simple_model.i_gt_1.carrychaingen[14].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[15].carryxor_i_1 
       (.I0(B[15]),
        .I1(A[15]),
        .O(\i_simple_model.i_gt_1.carrychaingen[15].carryxor_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[16].carrymux_CARRY4 
       (.CI(carry_simple_15),
        .CO({carry_simple_19,carry_simple_18,carry_simple_17,carry_simple_16}),
        .CYINIT(1'b0),
        .DI(A[19:16]),
        .O(S[19:16]),
        .S({\i_simple_model.i_gt_1.carrychaingen[19].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[18].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[17].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[16].carryxor_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[16].carryxor_i_1 
       (.I0(B[16]),
        .I1(A[16]),
        .O(\i_simple_model.i_gt_1.carrychaingen[16].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[17].carryxor_i_1 
       (.I0(B[17]),
        .I1(A[17]),
        .O(\i_simple_model.i_gt_1.carrychaingen[17].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[18].carryxor_i_1 
       (.I0(B[18]),
        .I1(A[18]),
        .O(\i_simple_model.i_gt_1.carrychaingen[18].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[19].carryxor_i_1 
       (.I0(B[19]),
        .I1(A[19]),
        .O(\i_simple_model.i_gt_1.carrychaingen[19].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[1].carryxor_i_1 
       (.I0(B[1]),
        .I1(A[1]),
        .O(\i_simple_model.i_gt_1.carrychaingen[1].carryxor_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[20].carrymux_CARRY4 
       (.CI(carry_simple_19),
        .CO({carry_simple_23,carry_simple_22,carry_simple_21,carry_simple_20}),
        .CYINIT(1'b0),
        .DI(A[23:20]),
        .O(S[23:20]),
        .S({\i_simple_model.i_gt_1.carrychaingen[23].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[22].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[21].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[20].carryxor_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[20].carryxor_i_1 
       (.I0(B[20]),
        .I1(A[20]),
        .O(\i_simple_model.i_gt_1.carrychaingen[20].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[21].carryxor_i_1 
       (.I0(B[21]),
        .I1(A[21]),
        .O(\i_simple_model.i_gt_1.carrychaingen[21].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[22].carryxor_i_1 
       (.I0(B[22]),
        .I1(A[22]),
        .O(\i_simple_model.i_gt_1.carrychaingen[22].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[23].carryxor_i_1 
       (.I0(B[23]),
        .I1(A[23]),
        .O(\i_simple_model.i_gt_1.carrychaingen[23].carryxor_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[24].carrymux_CARRY4 
       (.CI(carry_simple_23),
        .CO({carry_simple_27,carry_simple_26,carry_simple_25,carry_simple_24}),
        .CYINIT(1'b0),
        .DI(A[27:24]),
        .O(S[27:24]),
        .S({\i_simple_model.i_gt_1.carrychaingen[27].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[26].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[25].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[24].carryxor_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[24].carryxor_i_1 
       (.I0(B[24]),
        .I1(A[24]),
        .O(\i_simple_model.i_gt_1.carrychaingen[24].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[25].carryxor_i_1 
       (.I0(B[25]),
        .I1(A[25]),
        .O(\i_simple_model.i_gt_1.carrychaingen[25].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[26].carryxor_i_1 
       (.I0(B[26]),
        .I1(A[26]),
        .O(\i_simple_model.i_gt_1.carrychaingen[26].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[27].carryxor_i_1 
       (.I0(B[27]),
        .I1(A[27]),
        .O(\i_simple_model.i_gt_1.carrychaingen[27].carryxor_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[28].carrymux_CARRY4 
       (.CI(carry_simple_27),
        .CO({\NLW_i_simple_model.i_gt_1.carrychaingen[28].carrymux_CARRY4_CO_UNCONNECTED [3],CI,carry_simple_29,carry_simple_28}),
        .CYINIT(1'b0),
        .DI({\NLW_i_simple_model.i_gt_1.carrychaingen[28].carrymux_CARRY4_DI_UNCONNECTED [3],A[30:28]}),
        .O(S[31:28]),
        .S({LI,\i_simple_model.i_gt_1.carrychaingen[30].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[29].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[28].carryxor_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[28].carryxor_i_1 
       (.I0(B[28]),
        .I1(A[28]),
        .O(\i_simple_model.i_gt_1.carrychaingen[28].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[29].carryxor_i_1 
       (.I0(B[29]),
        .I1(A[29]),
        .O(\i_simple_model.i_gt_1.carrychaingen[29].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[2].carryxor_i_1 
       (.I0(B[2]),
        .I1(A[2]),
        .O(\i_simple_model.i_gt_1.carrychaingen[2].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[30].carryxor_i_1 
       (.I0(B[30]),
        .I1(A[30]),
        .O(\i_simple_model.i_gt_1.carrychaingen[30].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[3].carryxor_i_1 
       (.I0(B[3]),
        .I1(A[3]),
        .O(\i_simple_model.i_gt_1.carrychaingen[3].carryxor_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4 
       (.CI(carry_simple_3),
        .CO({carry_simple_7,carry_simple_6,carry_simple_5,carry_simple_4}),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O(S[7:4]),
        .S({\i_simple_model.i_gt_1.carrychaingen[7].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[6].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[5].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[4].carryxor_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[4].carryxor_i_1 
       (.I0(B[4]),
        .I1(A[4]),
        .O(\i_simple_model.i_gt_1.carrychaingen[4].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[5].carryxor_i_1 
       (.I0(B[5]),
        .I1(A[5]),
        .O(\i_simple_model.i_gt_1.carrychaingen[5].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[6].carryxor_i_1 
       (.I0(B[6]),
        .I1(A[6]),
        .O(\i_simple_model.i_gt_1.carrychaingen[6].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[7].carryxor_i_1 
       (.I0(B[7]),
        .I1(A[7]),
        .O(\i_simple_model.i_gt_1.carrychaingen[7].carryxor_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4 
       (.CI(carry_simple_7),
        .CO({carry_simple_11,carry_simple_10,carry_simple_9,carry_simple_8}),
        .CYINIT(1'b0),
        .DI(A[11:8]),
        .O(S[11:8]),
        .S({\i_simple_model.i_gt_1.carrychaingen[11].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[10].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[9].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[8].carryxor_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[8].carryxor_i_1 
       (.I0(B[8]),
        .I1(A[8]),
        .O(\i_simple_model.i_gt_1.carrychaingen[8].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carrychaingen[9].carryxor_i_1 
       (.I0(B[9]),
        .I1(A[9]),
        .O(\i_simple_model.i_gt_1.carrychaingen[9].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \i_simple_model.i_gt_1.carryxortop_i_1 
       (.I0(B[31]),
        .I1(A[31]),
        .O(LI));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_viv" *) 
module add_s32_s32_c_addsub_v12_0_12_viv
   (S,
    A,
    B);
  output [31:0]S;
  input [31:0]A;
  input [31:0]B;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]S;

  add_s32_s32_c_addsub_v12_0_12_legacy \i_baseblox.i_baseblox_addsub 
       (.A(A),
        .B(B),
        .S(S));
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
