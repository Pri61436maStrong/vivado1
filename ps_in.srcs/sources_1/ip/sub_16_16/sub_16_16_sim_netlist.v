// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 12 16:03:40 2024
// Host        : aic-ts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/sub_16_16/sub_16_16_sim_netlist.v
// Design      : sub_16_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sub_16_16,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module sub_16_16
   (A,
    B,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "1" *) 
  (* c_ainit_val = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_latency = "0" *) 
  (* c_out_width = "16" *) 
  (* c_sinit_val = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  sub_16_16_c_addsub_v12_0_12 U0
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

(* C_ADD_MODE = "1" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "16" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module sub_16_16_c_addsub_v12_0_12
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
  input [15:0]A;
  input [15:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [15:0]S;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]S;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  sub_16_16_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .B(B),
        .S(S));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_fabric_legacy" *) 
module sub_16_16_c_addsub_v12_0_12_fabric_legacy
   (S,
    A,
    B);
  output [15:0]S;
  input [15:0]A;
  input [15:0]B;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]S;

  sub_16_16_c_addsub_v12_0_12_lut6_legacy \i_lut6.i_lut6_addsub 
       (.A(A),
        .B(B),
        .S(S));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_legacy" *) 
module sub_16_16_c_addsub_v12_0_12_legacy
   (S,
    A,
    B);
  output [15:0]S;
  input [15:0]A;
  input [15:0]B;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]S;

  sub_16_16_c_addsub_v12_0_12_fabric_legacy \no_pipelining.the_addsub 
       (.A(A),
        .B(B),
        .S(S));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_lut6_legacy" *) 
module sub_16_16_c_addsub_v12_0_12_lut6_legacy
   (S,
    A,
    B);
  output [15:0]S;
  input [15:0]A;
  input [15:0]B;

  wire [15:0]A;
  wire [15:0]B;
  wire CI;
  wire LI;
  wire [15:0]S;
  wire S_0;
  wire carry_simple_0;
  wire carry_simple_1;
  wire carry_simple_10;
  wire carry_simple_11;
  wire carry_simple_12;
  wire carry_simple_13;
  wire carry_simple_2;
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
  wire \i_simple_model.i_gt_1.carrychaingen[1].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[2].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[3].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[4].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[5].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[6].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[7].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[8].carryxor_i_1_n_0 ;
  wire \i_simple_model.i_gt_1.carrychaingen[9].carryxor_i_1_n_0 ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[12].carrymux_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_simple_model.i_gt_1.carrychaingen[12].carrymux_CARRY4_DI_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.carrymux0_CARRY4 
       (.CI(1'b0),
        .CO({carry_simple_3,carry_simple_2,carry_simple_1,carry_simple_0}),
        .CYINIT(1'b1),
        .DI(A[3:0]),
        .O(S[3:0]),
        .S({\i_simple_model.i_gt_1.carrychaingen[3].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[2].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[1].carryxor_i_1_n_0 ,S_0}));
  LUT2 #(
    .INIT(4'h9)) 
    \i_simple_model.carryxor0_i_1 
       (.I0(B[0]),
        .I1(A[0]),
        .O(S_0));
  LUT2 #(
    .INIT(4'h9)) 
    \i_simple_model.i_gt_1.carrychaingen[10].carryxor_i_1 
       (.I0(B[10]),
        .I1(A[10]),
        .O(\i_simple_model.i_gt_1.carrychaingen[10].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \i_simple_model.i_gt_1.carrychaingen[11].carryxor_i_1 
       (.I0(B[11]),
        .I1(A[11]),
        .O(\i_simple_model.i_gt_1.carrychaingen[11].carryxor_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \i_simple_model.i_gt_1.carrychaingen[12].carrymux_CARRY4 
       (.CI(carry_simple_11),
        .CO({\NLW_i_simple_model.i_gt_1.carrychaingen[12].carrymux_CARRY4_CO_UNCONNECTED [3],CI,carry_simple_13,carry_simple_12}),
        .CYINIT(1'b0),
        .DI({\NLW_i_simple_model.i_gt_1.carrychaingen[12].carrymux_CARRY4_DI_UNCONNECTED [3],A[14:12]}),
        .O(S[15:12]),
        .S({LI,\i_simple_model.i_gt_1.carrychaingen[14].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[13].carryxor_i_1_n_0 ,\i_simple_model.i_gt_1.carrychaingen[12].carryxor_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \i_simple_model.i_gt_1.carrychaingen[12].carryxor_i_1 
       (.I0(B[12]),
        .I1(A[12]),
        .O(\i_simple_model.i_gt_1.carrychaingen[12].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \i_simple_model.i_gt_1.carrychaingen[13].carryxor_i_1 
       (.I0(B[13]),
        .I1(A[13]),
        .O(\i_simple_model.i_gt_1.carrychaingen[13].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \i_simple_model.i_gt_1.carrychaingen[14].carryxor_i_1 
       (.I0(B[14]),
        .I1(A[14]),
        .O(\i_simple_model.i_gt_1.carrychaingen[14].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \i_simple_model.i_gt_1.carrychaingen[1].carryxor_i_1 
       (.I0(B[1]),
        .I1(A[1]),
        .O(\i_simple_model.i_gt_1.carrychaingen[1].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \i_simple_model.i_gt_1.carrychaingen[2].carryxor_i_1 
       (.I0(B[2]),
        .I1(A[2]),
        .O(\i_simple_model.i_gt_1.carrychaingen[2].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
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
    .INIT(4'h9)) 
    \i_simple_model.i_gt_1.carrychaingen[4].carryxor_i_1 
       (.I0(B[4]),
        .I1(A[4]),
        .O(\i_simple_model.i_gt_1.carrychaingen[4].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \i_simple_model.i_gt_1.carrychaingen[5].carryxor_i_1 
       (.I0(B[5]),
        .I1(A[5]),
        .O(\i_simple_model.i_gt_1.carrychaingen[5].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \i_simple_model.i_gt_1.carrychaingen[6].carryxor_i_1 
       (.I0(B[6]),
        .I1(A[6]),
        .O(\i_simple_model.i_gt_1.carrychaingen[6].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
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
    .INIT(4'h9)) 
    \i_simple_model.i_gt_1.carrychaingen[8].carryxor_i_1 
       (.I0(B[8]),
        .I1(A[8]),
        .O(\i_simple_model.i_gt_1.carrychaingen[8].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \i_simple_model.i_gt_1.carrychaingen[9].carryxor_i_1 
       (.I0(B[9]),
        .I1(A[9]),
        .O(\i_simple_model.i_gt_1.carrychaingen[9].carryxor_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \i_simple_model.i_gt_1.carryxortop_i_1 
       (.I0(B[15]),
        .I1(A[15]),
        .O(LI));
endmodule

(* ORIG_REF_NAME = "c_addsub_v12_0_12_viv" *) 
module sub_16_16_c_addsub_v12_0_12_viv
   (S,
    A,
    B);
  output [15:0]S;
  input [15:0]A;
  input [15:0]B;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]S;

  sub_16_16_c_addsub_v12_0_12_legacy \i_baseblox.i_baseblox_addsub 
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
