// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 12 16:06:08 2024
// Host        : aic-ts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/norm/fp16_mult/fp16_mult_sim_netlist.v
// Design      : fp16_mult
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fp16_mult,floating_point_v7_1_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "floating_point_v7_1_7,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module fp16_mult
   (aclk,
    s_axis_a_tvalid,
    s_axis_a_tdata,
    s_axis_b_tvalid,
    s_axis_b_tdata,
    m_axis_result_tvalid,
    m_axis_result_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_OPERATION:M_AXIS_RESULT:S_AXIS_C:S_AXIS_B:S_AXIS_A, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_a_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) input [23:0]s_axis_a_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_B TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_B, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_b_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_B TDATA" *) input [23:0]s_axis_b_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_RESULT, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_result_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA" *) output [23:0]m_axis_result_tdata;

  wire aclk;
  wire [23:0]m_axis_result_tdata;
  wire m_axis_result_tvalid;
  wire [23:0]s_axis_a_tdata;
  wire s_axis_a_tvalid;
  wire [23:0]s_axis_b_tdata;
  wire s_axis_b_tvalid;
  wire NLW_U0_m_axis_result_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_a_tready_UNCONNECTED;
  wire NLW_U0_s_axis_b_tready_UNCONNECTED;
  wire NLW_U0_s_axis_c_tready_UNCONNECTED;
  wire NLW_U0_s_axis_operation_tready_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_result_tuser_UNCONNECTED;

  (* C_ACCUM_INPUT_MSB = "31" *) 
  (* C_ACCUM_LSB = "-31" *) 
  (* C_ACCUM_MSB = "32" *) 
  (* C_A_FRACTION_WIDTH = "17" *) 
  (* C_A_TDATA_WIDTH = "24" *) 
  (* C_A_TUSER_WIDTH = "1" *) 
  (* C_A_WIDTH = "24" *) 
  (* C_BRAM_USAGE = "0" *) 
  (* C_B_FRACTION_WIDTH = "17" *) 
  (* C_B_TDATA_WIDTH = "24" *) 
  (* C_B_TUSER_WIDTH = "1" *) 
  (* C_B_WIDTH = "24" *) 
  (* C_COMPARE_OPERATION = "8" *) 
  (* C_C_FRACTION_WIDTH = "17" *) 
  (* C_C_TDATA_WIDTH = "24" *) 
  (* C_C_TUSER_WIDTH = "1" *) 
  (* C_C_WIDTH = "24" *) 
  (* C_FIXED_DATA_UNSIGNED = "0" *) 
  (* C_HAS_ABSOLUTE = "0" *) 
  (* C_HAS_ACCUMULATOR_A = "0" *) 
  (* C_HAS_ACCUMULATOR_S = "0" *) 
  (* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) 
  (* C_HAS_ACCUM_OVERFLOW = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ADD = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_A_TLAST = "0" *) 
  (* C_HAS_A_TUSER = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_B_TLAST = "0" *) 
  (* C_HAS_B_TUSER = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_COMPARE = "0" *) 
  (* C_HAS_C_TLAST = "0" *) 
  (* C_HAS_C_TUSER = "0" *) 
  (* C_HAS_DIVIDE = "0" *) 
  (* C_HAS_DIVIDE_BY_ZERO = "0" *) 
  (* C_HAS_EXPONENTIAL = "0" *) 
  (* C_HAS_FIX_TO_FLT = "0" *) 
  (* C_HAS_FLT_TO_FIX = "0" *) 
  (* C_HAS_FLT_TO_FLT = "0" *) 
  (* C_HAS_FMA = "0" *) 
  (* C_HAS_FMS = "0" *) 
  (* C_HAS_INVALID_OP = "0" *) 
  (* C_HAS_LOGARITHM = "0" *) 
  (* C_HAS_MULTIPLY = "1" *) 
  (* C_HAS_OPERATION = "0" *) 
  (* C_HAS_OPERATION_TLAST = "0" *) 
  (* C_HAS_OPERATION_TUSER = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_RECIP = "0" *) 
  (* C_HAS_RECIP_SQRT = "0" *) 
  (* C_HAS_RESULT_TLAST = "0" *) 
  (* C_HAS_RESULT_TUSER = "0" *) 
  (* C_HAS_SQRT = "0" *) 
  (* C_HAS_SUBTRACT = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_LATENCY = "2" *) 
  (* C_MULT_USAGE = "2" *) 
  (* C_OPERATION_TDATA_WIDTH = "8" *) 
  (* C_OPERATION_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZATION = "1" *) 
  (* C_RATE = "1" *) 
  (* C_RESULT_FRACTION_WIDTH = "17" *) 
  (* C_RESULT_TDATA_WIDTH = "24" *) 
  (* C_RESULT_TUSER_WIDTH = "1" *) 
  (* C_RESULT_WIDTH = "24" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  fp16_mult_floating_point_v7_1_7 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .m_axis_result_tdata(m_axis_result_tdata),
        .m_axis_result_tlast(NLW_U0_m_axis_result_tlast_UNCONNECTED),
        .m_axis_result_tready(1'b0),
        .m_axis_result_tuser(NLW_U0_m_axis_result_tuser_UNCONNECTED[0]),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(NLW_U0_s_axis_a_tready_UNCONNECTED),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata(s_axis_b_tdata),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_U0_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(s_axis_b_tvalid),
        .s_axis_c_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_c_tlast(1'b0),
        .s_axis_c_tready(NLW_U0_s_axis_c_tready_UNCONNECTED),
        .s_axis_c_tuser(1'b0),
        .s_axis_c_tvalid(1'b0),
        .s_axis_operation_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_operation_tlast(1'b0),
        .s_axis_operation_tready(NLW_U0_s_axis_operation_tready_UNCONNECTED),
        .s_axis_operation_tuser(1'b0),
        .s_axis_operation_tvalid(1'b0));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fp16_mult_carry_chain
   (D,
    Q,
    s_axis_b_tdata,
    s_axis_a_tdata);
  output [3:0]D;
  output [6:0]Q;
  input [6:0]s_axis_b_tdata;
  input [6:0]s_axis_a_tdata;

  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 ;
  wire [3:0]D;
  wire [6:0]Q;
  wire [6:0]a_xor_b_ip;
  wire exp_sig_7;
  wire \opt_has_pipe.first_q[2]_i_2_n_0 ;
  wire \opt_has_pipe.first_q[3]_i_2_n_0 ;
  wire [6:0]s_axis_a_tdata;
  wire [6:0]s_axis_b_tdata;
  wire [3:3]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;
  wire [3:3]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(1'b0),
        .CO({\CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b1),
        .DI(s_axis_b_tdata[3:0]),
        .O(Q[3:0]),
        .S(a_xor_b_ip[3:0]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_b_tdata[0]),
        .I1(s_axis_a_tdata[0]),
        .O(a_xor_b_ip[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_b_tdata[1]),
        .I1(s_axis_a_tdata[1]),
        .O(a_xor_b_ip[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_b_tdata[2]),
        .I1(s_axis_a_tdata[2]),
        .O(a_xor_b_ip[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_b_tdata[3]),
        .I1(s_axis_a_tdata[3]),
        .O(a_xor_b_ip[3]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ),
        .CO({\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3],exp_sig_7,\CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3],s_axis_b_tdata[6:4]}),
        .O({\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3],Q[6:4]}),
        .S({\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED [3],a_xor_b_ip[6:4]}));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_b_tdata[4]),
        .I1(s_axis_a_tdata[4]),
        .O(a_xor_b_ip[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_b_tdata[5]),
        .I1(s_axis_a_tdata[5]),
        .O(a_xor_b_ip[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_b_tdata[6]),
        .I1(s_axis_a_tdata[6]),
        .O(a_xor_b_ip[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF008080)) 
    \opt_has_pipe.first_q[0]_i_1__0 
       (.I0(\opt_has_pipe.first_q[2]_i_2_n_0 ),
        .I1(Q[5]),
        .I2(Q[0]),
        .I3(exp_sig_7),
        .I4(Q[6]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \opt_has_pipe.first_q[1]_i_1__0 
       (.I0(exp_sig_7),
        .I1(Q[6]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \opt_has_pipe.first_q[2]_i_1 
       (.I0(Q[5]),
        .I1(\opt_has_pipe.first_q[2]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[0]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \opt_has_pipe.first_q[2]_i_2 
       (.I0(exp_sig_7),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(\opt_has_pipe.first_q[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \opt_has_pipe.first_q[3]_i_1 
       (.I0(Q[5]),
        .I1(\opt_has_pipe.first_q[3]_i_2_n_0 ),
        .I2(Q[0]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \opt_has_pipe.first_q[3]_i_2 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(exp_sig_7),
        .I5(Q[6]),
        .O(\opt_has_pipe.first_q[3]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fp16_mult_carry_chain__parameterized0
   (\s_axis_a_tdata[22] ,
    A_EQ_VALUE,
    p_6_in,
    a_exp_flt_all_zero_int,
    b_exp_flt_all_zero_int,
    b_exp_flt_all_one_int,
    a_exp_flt_all_one_int,
    \opt_has_pipe.first_q_reg[0] ,
    \opt_has_pipe.first_q_reg[0]_0 ,
    s_axis_b_tdata,
    A);
  output \s_axis_a_tdata[22] ;
  output A_EQ_VALUE;
  output p_6_in;
  input a_exp_flt_all_zero_int;
  input b_exp_flt_all_zero_int;
  input b_exp_flt_all_one_int;
  input a_exp_flt_all_one_int;
  input \opt_has_pipe.first_q_reg[0] ;
  input \opt_has_pipe.first_q_reg[0]_0 ;
  input [2:0]s_axis_b_tdata;
  input [2:0]A;

  wire [2:0]A;
  wire A_EQ_VALUE;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ;
  wire a_exp_flt_all_one_int;
  wire a_exp_flt_all_zero_int;
  wire b_exp_flt_all_one_int;
  wire b_exp_flt_all_zero_int;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire p_6_in;
  wire \s_axis_a_tdata[22] ;
  wire [2:0]s_axis_b_tdata;
  wire [3:3]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3],A_EQ_VALUE,\CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b1),
        .DI({\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O(\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED [3],A}));
  LUT6 #(
    .INIT(64'hEC0CA0000000A000)) 
    \opt_has_pipe.first_q[0]_i_1__3 
       (.I0(a_exp_flt_all_zero_int),
        .I1(b_exp_flt_all_zero_int),
        .I2(b_exp_flt_all_one_int),
        .I3(A_EQ_VALUE),
        .I4(a_exp_flt_all_one_int),
        .I5(\opt_has_pipe.first_q_reg[0] ),
        .O(\s_axis_a_tdata[22] ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \opt_has_pipe.first_q[0]_i_3 
       (.I0(\opt_has_pipe.first_q_reg[0]_0 ),
        .I1(s_axis_b_tdata[1]),
        .I2(s_axis_b_tdata[0]),
        .I3(s_axis_b_tdata[2]),
        .I4(A_EQ_VALUE),
        .O(p_6_in));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fp16_mult_carry_chain__parameterized0_4
   (\s_axis_b_tdata[22] ,
    D,
    CARRYS_OUT,
    b_exp_flt_all_zero_int,
    a_exp_flt_all_zero_int,
    p_6_in,
    prod_sign_ip__0,
    a_exp_flt_all_one_int,
    \opt_has_pipe.first_q_reg[1] ,
    b_exp_flt_all_one_int,
    \opt_has_pipe.first_q_reg[0] ,
    s_axis_a_tdata,
    \opt_has_pipe.first_q_reg[0]_0 ,
    \opt_has_pipe.first_q_reg[0]_1 ,
    \opt_has_pipe.first_q_reg[0]_2 ,
    A);
  output \s_axis_b_tdata[22] ;
  output [0:0]D;
  output [0:0]CARRYS_OUT;
  input b_exp_flt_all_zero_int;
  input a_exp_flt_all_zero_int;
  input p_6_in;
  input prod_sign_ip__0;
  input a_exp_flt_all_one_int;
  input [0:0]\opt_has_pipe.first_q_reg[1] ;
  input b_exp_flt_all_one_int;
  input \opt_has_pipe.first_q_reg[0] ;
  input [2:0]s_axis_a_tdata;
  input \opt_has_pipe.first_q_reg[0]_0 ;
  input \opt_has_pipe.first_q_reg[0]_1 ;
  input \opt_has_pipe.first_q_reg[0]_2 ;
  input [2:0]A;

  wire [2:0]A;
  wire [0:0]CARRYS_OUT;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ;
  wire [0:0]D;
  wire a_exp_flt_all_one_int;
  wire a_exp_flt_all_zero_int;
  wire a_or_b_is_nan_int__2;
  wire b_exp_flt_all_one_int;
  wire b_exp_flt_all_zero_int;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire \opt_has_pipe.first_q_reg[0]_1 ;
  wire \opt_has_pipe.first_q_reg[0]_2 ;
  wire [0:0]\opt_has_pipe.first_q_reg[1] ;
  wire p_6_in;
  wire p_7_in;
  wire prod_sign_ip__0;
  wire [2:0]s_axis_a_tdata;
  wire \s_axis_b_tdata[22] ;
  wire [3:3]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3],CARRYS_OUT,\CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b1),
        .DI({\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O(\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED [3],A}));
  LUT6 #(
    .INIT(64'h0000000007770000)) 
    \opt_has_pipe.first_q[0]_i_1__2 
       (.I0(b_exp_flt_all_zero_int),
        .I1(p_7_in),
        .I2(a_exp_flt_all_zero_int),
        .I3(p_6_in),
        .I4(prod_sign_ip__0),
        .I5(a_or_b_is_nan_int__2),
        .O(\s_axis_b_tdata[22] ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \opt_has_pipe.first_q[0]_i_2 
       (.I0(\opt_has_pipe.first_q_reg[0] ),
        .I1(s_axis_a_tdata[1]),
        .I2(s_axis_a_tdata[0]),
        .I3(s_axis_a_tdata[2]),
        .I4(CARRYS_OUT),
        .O(p_7_in));
  LUT6 #(
    .INIT(64'h01010101010101FF)) 
    \opt_has_pipe.first_q[0]_i_5 
       (.I0(CARRYS_OUT),
        .I1(\opt_has_pipe.first_q_reg[0]_0 ),
        .I2(\opt_has_pipe.first_q_reg[0] ),
        .I3(\opt_has_pipe.first_q_reg[1] ),
        .I4(\opt_has_pipe.first_q_reg[0]_1 ),
        .I5(\opt_has_pipe.first_q_reg[0]_2 ),
        .O(a_or_b_is_nan_int__2));
  LUT6 #(
    .INIT(64'h003300BB3033B088)) 
    \opt_has_pipe.first_q[1]_i_1 
       (.I0(CARRYS_OUT),
        .I1(a_exp_flt_all_one_int),
        .I2(\opt_has_pipe.first_q_reg[1] ),
        .I3(b_exp_flt_all_one_int),
        .I4(b_exp_flt_all_zero_int),
        .I5(a_exp_flt_all_zero_int),
        .O(D));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fp16_mult_carry_chain__parameterized1
   (CARRYS_OUT,
    A,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  output [0:0]CARRYS_OUT;
  input [1:0]A;
  output lopt;
  input lopt_1;
  input lopt_2;
  output lopt_3;

  wire [1:0]A;
  wire [0:0]CARRYS_OUT;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ;
  wire \^lopt_1 ;
  wire \^lopt_2 ;
  wire \^lopt_3 ;
  wire lopt_4;
  wire [2:0]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;

  assign \^lopt_2  = lopt_1;
  assign \^lopt_3  = lopt_2;
  assign lopt = \^lopt_1 ;
  assign lopt_3 = lopt_4;
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(1'b0),
        .CO({\^lopt_1 ,CARRYS_OUT,\CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b1),
        .DI({\^lopt_2 ,1'b1,1'b0,1'b0}),
        .O({lopt_4,\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [2:0]}),
        .S({\^lopt_3 ,A[1],1'b0,A[0]}));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fp16_mult_carry_chain__parameterized2
   (mant_op,
    CARRYS_OUT,
    \RESULT_REG.NORMAL.mant_op_reg[7] ,
    CARRY_OUT,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6);
  output [7:0]mant_op;
  output [0:0]CARRYS_OUT;
  input [7:0]\RESULT_REG.NORMAL.mant_op_reg[7] ;
  input CARRY_OUT;
  input lopt;
  output lopt_1;
  input lopt_2;
  output lopt_3;
  input lopt_4;
  input lopt_5;
  output lopt_6;

  wire \<const0> ;
  wire [0:0]CARRYS_OUT;
  wire CARRY_OUT;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 ;
  wire [7:0]\RESULT_REG.NORMAL.mant_op_reg[7] ;
  wire \^lopt_2 ;
  wire \^lopt_3 ;
  wire \^lopt_4 ;
  wire \^lopt_5 ;
  wire [7:0]mant_op;

  assign \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0  = lopt;
  assign \^lopt_3  = lopt_4;
  assign \^lopt_4  = lopt_5;
  assign lopt_1 = \<const0> ;
  assign lopt_3 = \^lopt_2 ;
  assign lopt_6 = \^lopt_5 ;
  assign mant_op[0] = lopt_2;
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(mant_op[4:1]),
        .S(\RESULT_REG.NORMAL.mant_op_reg[7] [4:1]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ),
        .CO({\^lopt_2 ,CARRYS_OUT,\CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({\^lopt_3 ,1'b0,1'b0,1'b0}),
        .O({\^lopt_5 ,mant_op[7:5]}),
        .S({\^lopt_4 ,\RESULT_REG.NORMAL.mant_op_reg[7] [7:5]}));
  GND GND
       (.G(\<const0> ));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fp16_mult_carry_chain__parameterized3
   (mant_op,
    CARRYS_OUT,
    \RESULT_REG.NORMAL.mant_op_reg[15] ,
    CARRY_IN,
    sum_rnd2,
    lopt,
    lopt_1,
    lopt_2);
  output [7:0]mant_op;
  output [0:0]CARRYS_OUT;
  input [7:0]\RESULT_REG.NORMAL.mant_op_reg[15] ;
  input CARRY_IN;
  input [0:0]sum_rnd2;
  input lopt;
  output lopt_1;
  input lopt_2;

  wire \<const0> ;
  wire [0:0]CARRYS_OUT;
  wire CARRY_IN;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0 ;
  wire [7:0]\RESULT_REG.NORMAL.mant_op_reg[15] ;
  wire [7:0]mant_op;
  wire [0:0]sum_rnd2;
  wire [3:3]\NLW_CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;

  assign \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0  = lopt;
  assign lopt_1 = \<const0> ;
  assign mant_op[0] = lopt_2;
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(mant_op[4:1]),
        .S(\RESULT_REG.NORMAL.mant_op_reg[15] [4:1]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ),
        .CO({CARRYS_OUT,\CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b0,1'b0,1'b0}),
        .O({\NLW_CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3],mant_op[7:5]}),
        .S({sum_rnd2,\RESULT_REG.NORMAL.mant_op_reg[15] [7:5]}));
  GND GND
       (.G(\<const0> ));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fp16_mult_carry_chain__parameterized4
   (Q,
    \RESULT_REG.NORMAL.exp_op_reg[6] ,
    CARRY_OUT);
  output [6:0]Q;
  input [6:0]\RESULT_REG.NORMAL.exp_op_reg[6] ;
  input CARRY_OUT;

  wire CARRY_OUT;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 ;
  wire [6:0]Q;
  wire [6:0]\RESULT_REG.NORMAL.exp_op_reg[6] ;
  wire [3:2]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;
  wire [3:3]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(CARRY_OUT),
        .CO({\CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(Q[3:0]),
        .S(\RESULT_REG.NORMAL.exp_op_reg[6] [3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ),
        .CO({\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3:2],\CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O({\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3],Q[6:4]}),
        .S({\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED [3],\RESULT_REG.NORMAL.exp_op_reg[6] [6:4]}));
endmodule

(* ORIG_REF_NAME = "compare_eq_im" *) 
module fp16_mult_compare_eq_im
   (\s_axis_a_tdata[22] ,
    A_EQ_VALUE,
    p_6_in,
    a_exp_flt_all_zero_int,
    b_exp_flt_all_zero_int,
    b_exp_flt_all_one_int,
    a_exp_flt_all_one_int,
    \opt_has_pipe.first_q_reg[0] ,
    \opt_has_pipe.first_q_reg[0]_0 ,
    s_axis_b_tdata);
  output \s_axis_a_tdata[22] ;
  output A_EQ_VALUE;
  output p_6_in;
  input a_exp_flt_all_zero_int;
  input b_exp_flt_all_zero_int;
  input b_exp_flt_all_one_int;
  input a_exp_flt_all_one_int;
  input \opt_has_pipe.first_q_reg[0] ;
  input \opt_has_pipe.first_q_reg[0]_0 ;
  input [18:0]s_axis_b_tdata;

  wire A_EQ_VALUE;
  wire a_exp_flt_all_one_int;
  wire a_exp_flt_all_zero_int;
  wire b_exp_flt_all_one_int;
  wire b_exp_flt_all_zero_int;
  wire [2:0]chunk_det;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire p_6_in;
  wire \s_axis_a_tdata[22] ;
  wire [18:0]s_axis_b_tdata;

  fp16_mult_carry_chain__parameterized0 CARRY_ZERO_DET
       (.A(chunk_det),
        .A_EQ_VALUE(A_EQ_VALUE),
        .a_exp_flt_all_one_int(a_exp_flt_all_one_int),
        .a_exp_flt_all_zero_int(a_exp_flt_all_zero_int),
        .b_exp_flt_all_one_int(b_exp_flt_all_one_int),
        .b_exp_flt_all_zero_int(b_exp_flt_all_zero_int),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0]_0 ),
        .p_6_in(p_6_in),
        .\s_axis_a_tdata[22] (\s_axis_a_tdata[22] ),
        .s_axis_b_tdata(s_axis_b_tdata[18:16]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_b_tdata[0]),
        .I1(s_axis_b_tdata[5]),
        .I2(s_axis_b_tdata[3]),
        .I3(s_axis_b_tdata[4]),
        .I4(s_axis_b_tdata[1]),
        .I5(s_axis_b_tdata[2]),
        .O(chunk_det[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_b_tdata[6]),
        .I1(s_axis_b_tdata[11]),
        .I2(s_axis_b_tdata[9]),
        .I3(s_axis_b_tdata[10]),
        .I4(s_axis_b_tdata[7]),
        .I5(s_axis_b_tdata[8]),
        .O(chunk_det[1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_b_tdata[12]),
        .I1(s_axis_b_tdata[15]),
        .I2(s_axis_b_tdata[13]),
        .I3(s_axis_b_tdata[14]),
        .O(chunk_det[2]));
endmodule

(* ORIG_REF_NAME = "compare_eq_im" *) 
module fp16_mult_compare_eq_im_3
   (\s_axis_b_tdata[22] ,
    D,
    CARRY_OUT,
    b_exp_flt_all_zero_int,
    a_exp_flt_all_zero_int,
    p_6_in,
    prod_sign_ip__0,
    a_exp_flt_all_one_int,
    CARRYS_OUT,
    b_exp_flt_all_one_int,
    \opt_has_pipe.first_q_reg[0] ,
    s_axis_a_tdata,
    \opt_has_pipe.first_q_reg[0]_0 ,
    \opt_has_pipe.first_q_reg[0]_1 ,
    \opt_has_pipe.first_q_reg[0]_2 );
  output \s_axis_b_tdata[22] ;
  output [0:0]D;
  output CARRY_OUT;
  input b_exp_flt_all_zero_int;
  input a_exp_flt_all_zero_int;
  input p_6_in;
  input prod_sign_ip__0;
  input a_exp_flt_all_one_int;
  input [0:0]CARRYS_OUT;
  input b_exp_flt_all_one_int;
  input \opt_has_pipe.first_q_reg[0] ;
  input [18:0]s_axis_a_tdata;
  input \opt_has_pipe.first_q_reg[0]_0 ;
  input \opt_has_pipe.first_q_reg[0]_1 ;
  input \opt_has_pipe.first_q_reg[0]_2 ;

  wire [0:0]CARRYS_OUT;
  wire CARRY_OUT;
  wire [0:0]D;
  wire a_exp_flt_all_one_int;
  wire a_exp_flt_all_zero_int;
  wire b_exp_flt_all_one_int;
  wire b_exp_flt_all_zero_int;
  wire [2:0]chunk_det;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire \opt_has_pipe.first_q_reg[0]_1 ;
  wire \opt_has_pipe.first_q_reg[0]_2 ;
  wire p_6_in;
  wire prod_sign_ip__0;
  wire [18:0]s_axis_a_tdata;
  wire \s_axis_b_tdata[22] ;

  fp16_mult_carry_chain__parameterized0_4 CARRY_ZERO_DET
       (.A(chunk_det),
        .CARRYS_OUT(CARRY_OUT),
        .D(D),
        .a_exp_flt_all_one_int(a_exp_flt_all_one_int),
        .a_exp_flt_all_zero_int(a_exp_flt_all_zero_int),
        .b_exp_flt_all_one_int(b_exp_flt_all_one_int),
        .b_exp_flt_all_zero_int(b_exp_flt_all_zero_int),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0]_0 ),
        .\opt_has_pipe.first_q_reg[0]_1 (\opt_has_pipe.first_q_reg[0]_1 ),
        .\opt_has_pipe.first_q_reg[0]_2 (\opt_has_pipe.first_q_reg[0]_2 ),
        .\opt_has_pipe.first_q_reg[1] (CARRYS_OUT),
        .p_6_in(p_6_in),
        .prod_sign_ip__0(prod_sign_ip__0),
        .s_axis_a_tdata(s_axis_a_tdata[18:16]),
        .\s_axis_b_tdata[22] (\s_axis_b_tdata[22] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[0]),
        .I1(s_axis_a_tdata[5]),
        .I2(s_axis_a_tdata[3]),
        .I3(s_axis_a_tdata[4]),
        .I4(s_axis_a_tdata[1]),
        .I5(s_axis_a_tdata[2]),
        .O(chunk_det[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[6]),
        .I1(s_axis_a_tdata[11]),
        .I2(s_axis_a_tdata[9]),
        .I3(s_axis_a_tdata[10]),
        .I4(s_axis_a_tdata[7]),
        .I5(s_axis_a_tdata[8]),
        .O(chunk_det[1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[12]),
        .I1(s_axis_a_tdata[15]),
        .I2(s_axis_a_tdata[13]),
        .I3(s_axis_a_tdata[14]),
        .O(chunk_det[2]));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_mult_delay__parameterized10
   (out,
    \opt_has_pipe.first_q_reg[1] ,
    state_int_up,
    state_op,
    P,
    \RESULT_REG.NORMAL.mant_op_reg[14] ,
    D,
    aclk);
  output [1:0]out;
  output \opt_has_pipe.first_q_reg[1] ;
  output [0:0]state_int_up;
  output [0:0]state_op;
  input [0:0]P;
  input [1:0]\RESULT_REG.NORMAL.mant_op_reg[14] ;
  input [3:0]D;
  input aclk;

  wire [3:0]D;
  wire [0:0]P;
  wire [1:0]\RESULT_REG.NORMAL.mant_op_reg[14] ;
  wire aclk;
  wire \opt_has_pipe.first_q_reg[1] ;
  wire [1:0]out;
  wire [0:0]state_int_up;
  wire [0:0]state_op;

  fp16_mult_xbip_pipe_v3_0_5_viv__parameterized21 i_pipe
       (.D(D),
        .P(P),
        .\RESULT_REG.NORMAL.mant_op_reg[14] (\RESULT_REG.NORMAL.mant_op_reg[14] ),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[1]_0 (\opt_has_pipe.first_q_reg[1] ),
        .out(out),
        .state_int_up(state_int_up),
        .state_op(state_op));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_mult_delay__parameterized11
   (A,
    D,
    aclk);
  output [6:0]A;
  input [6:0]D;
  input aclk;

  wire [6:0]A;
  wire [6:0]D;
  wire aclk;

  fp16_mult_xbip_pipe_v3_0_5_viv__parameterized23 i_pipe
       (.A(A),
        .D(D),
        .aclk(aclk));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_mult_delay__parameterized7
   (out,
    \opt_has_pipe.first_q_reg[0] ,
    state_op,
    a_exp_flt_all_one_int,
    b_exp_flt_all_one_int,
    \RESULT_REG.NORMAL.mant_op_reg[15] ,
    Q,
    \RESULT_REG.NORMAL.exp_op_reg[1] ,
    s_axis_a_tdata,
    \opt_has_pipe.first_q_reg[0]_0 ,
    s_axis_b_tdata,
    \opt_has_pipe.first_q_reg[0]_1 ,
    D,
    aclk);
  output [1:0]out;
  output \opt_has_pipe.first_q_reg[0] ;
  output [0:0]state_op;
  output a_exp_flt_all_one_int;
  output b_exp_flt_all_one_int;
  input \RESULT_REG.NORMAL.mant_op_reg[15] ;
  input [0:0]Q;
  input [1:0]\RESULT_REG.NORMAL.exp_op_reg[1] ;
  input [2:0]s_axis_a_tdata;
  input \opt_has_pipe.first_q_reg[0]_0 ;
  input [2:0]s_axis_b_tdata;
  input \opt_has_pipe.first_q_reg[0]_1 ;
  input [0:0]D;
  input aclk;

  wire [0:0]D;
  wire [0:0]Q;
  wire [1:0]\RESULT_REG.NORMAL.exp_op_reg[1] ;
  wire \RESULT_REG.NORMAL.mant_op_reg[15] ;
  wire a_exp_flt_all_one_int;
  wire aclk;
  wire b_exp_flt_all_one_int;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire \opt_has_pipe.first_q_reg[0]_1 ;
  wire [1:0]out;
  wire [2:0]s_axis_a_tdata;
  wire [2:0]s_axis_b_tdata;
  wire [0:0]state_op;

  fp16_mult_xbip_pipe_v3_0_5_viv__parameterized17 i_pipe
       (.D(D),
        .Q(Q),
        .\RESULT_REG.NORMAL.exp_op_reg[1] (\RESULT_REG.NORMAL.exp_op_reg[1] ),
        .\RESULT_REG.NORMAL.mant_op_reg[15] (\RESULT_REG.NORMAL.mant_op_reg[15] ),
        .a_exp_flt_all_one_int(a_exp_flt_all_one_int),
        .aclk(aclk),
        .b_exp_flt_all_one_int(b_exp_flt_all_one_int),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[0]_1 (\opt_has_pipe.first_q_reg[0]_0 ),
        .\opt_has_pipe.first_q_reg[0]_2 (\opt_has_pipe.first_q_reg[0]_1 ),
        .out(out),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_b_tdata(s_axis_b_tdata),
        .state_op(state_op));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_mult_delay__parameterized8
   (a_exp_flt_all_zero_int,
    b_exp_flt_all_zero_int,
    \opt_has_pipe.first_q_reg[0] ,
    aclk,
    s_axis_a_tdata,
    s_axis_b_tdata);
  output a_exp_flt_all_zero_int;
  output b_exp_flt_all_zero_int;
  input \opt_has_pipe.first_q_reg[0] ;
  input aclk;
  input [6:0]s_axis_a_tdata;
  input [6:0]s_axis_b_tdata;

  wire a_exp_flt_all_zero_int;
  wire aclk;
  wire b_exp_flt_all_zero_int;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire [6:0]s_axis_a_tdata;
  wire [6:0]s_axis_b_tdata;

  fp16_mult_xbip_pipe_v3_0_5_viv__parameterized19_2 i_pipe
       (.a_exp_flt_all_zero_int(a_exp_flt_all_zero_int),
        .aclk(aclk),
        .b_exp_flt_all_zero_int(b_exp_flt_all_zero_int),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0] ),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_b_tdata(s_axis_b_tdata));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_mult_delay__parameterized8_1
   (out,
    prod_sign_ip__0,
    \s_axis_a_tdata[18] ,
    \s_axis_a_tdata[21] ,
    \s_axis_b_tdata[18] ,
    \s_axis_b_tdata[21] ,
    \opt_has_pipe.first_q_reg[0] ,
    aclk,
    s_axis_b_tdata,
    s_axis_a_tdata);
  output out;
  output prod_sign_ip__0;
  output \s_axis_a_tdata[18] ;
  output \s_axis_a_tdata[21] ;
  output \s_axis_b_tdata[18] ;
  output \s_axis_b_tdata[21] ;
  input \opt_has_pipe.first_q_reg[0] ;
  input aclk;
  input [7:0]s_axis_b_tdata;
  input [7:0]s_axis_a_tdata;

  wire aclk;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire out;
  wire prod_sign_ip__0;
  wire [7:0]s_axis_a_tdata;
  wire \s_axis_a_tdata[18] ;
  wire \s_axis_a_tdata[21] ;
  wire [7:0]s_axis_b_tdata;
  wire \s_axis_b_tdata[18] ;
  wire \s_axis_b_tdata[21] ;

  fp16_mult_xbip_pipe_v3_0_5_viv__parameterized19 i_pipe
       (.aclk(aclk),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0] ),
        .out(out),
        .prod_sign_ip__0(prod_sign_ip__0),
        .s_axis_a_tdata(s_axis_a_tdata),
        .\s_axis_a_tdata[18] (\s_axis_a_tdata[18] ),
        .\s_axis_a_tdata[21] (\s_axis_a_tdata[21] ),
        .s_axis_b_tdata(s_axis_b_tdata),
        .\s_axis_b_tdata[18] (\s_axis_b_tdata[18] ),
        .\s_axis_b_tdata[21] (\s_axis_b_tdata[21] ));
endmodule

(* ORIG_REF_NAME = "dsp" *) 
module fp16_mult_dsp
   (ZERO_DETECT,
    P,
    CLK,
    B,
    A);
  output [0:0]ZERO_DETECT;
  output [18:0]P;
  input CLK;
  input [15:0]B;
  input [15:0]A;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [18:0]P;
  wire [0:0]ZERO_DETECT;
  wire [14:0]p_1_out;
  wire [42:34]\pi[0,0]1_out ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_106 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_107 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_108 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_109 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_110 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_111 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_112 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_113 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_114 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_115 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_116 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_117 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_118 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_119 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_120 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_121 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_122 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_123 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_124 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_125 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_126 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_127 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_128 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_129 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_130 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_131 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_132 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_133 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_134 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_135 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_136 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_137 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_138 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_139 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_140 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_141 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_142 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_143 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_144 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_145 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_146 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_147 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_148 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_149 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_150 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_151 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_152 ;
  wire \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_153 ;
  wire \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_OVERFLOW_UNCONNECTED ;
  wire \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_CARRYOUT_UNCONNECTED ;
  wire [47:43]\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_P_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  (* box_type = "PRIMITIVE" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
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
    .MASK(48'hFFFFFFFF8000),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("PATDET"),
    .USE_SIMD("ONE48")) 
    \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b1,B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_OVERFLOW_UNCONNECTED ),
        .P({\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_P_UNCONNECTED [47:43],\pi[0,0]1_out ,P,p_1_out}),
        .PATTERNBDETECT(\NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(ZERO_DETECT),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_106 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_107 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_108 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_109 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_110 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_111 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_112 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_113 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_114 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_115 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_116 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_117 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_118 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_119 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_120 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_121 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_122 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_123 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_124 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_125 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_126 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_127 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_128 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_129 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_130 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_131 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_132 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_133 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_134 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_135 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_136 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_137 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_138 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_139 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_140 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_141 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_142 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_143 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_144 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_145 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_146 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_147 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_148 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_149 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_150 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_151 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_152 ,\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_153 }),
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
endmodule

(* ORIG_REF_NAME = "fix_mult" *) 
module fp16_mult_fix_mult
   (P,
    sum_rnd2,
    A,
    \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ,
    \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0 ,
    aclk,
    s_axis_a_tdata,
    s_axis_b_tdata);
  output [0:0]P;
  output [0:0]sum_rnd2;
  output [7:0]A;
  output [1:0]\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  output [7:0]\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0 ;
  input aclk;
  input [15:0]s_axis_a_tdata;
  input [15:0]s_axis_b_tdata;

  wire [7:0]A;
  wire [0:0]P;
  wire aclk;
  wire [15:0]s_axis_a_tdata;
  wire [15:0]s_axis_b_tdata;
  wire [0:0]sum_rnd2;
  wire [1:0]\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire [7:0]\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0 ;

  fp16_mult_fix_mult_xx \MULT_GEN_VARIANT.FIX_MULT 
       (.A(A),
        .P(P),
        .aclk(aclk),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_b_tdata(s_axis_b_tdata),
        .sum_rnd2(sum_rnd2),
        .\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 (\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ),
        .\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0 (\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0 ));
endmodule

(* ORIG_REF_NAME = "fix_mult_xx" *) 
module fp16_mult_fix_mult_xx
   (P,
    sum_rnd2,
    A,
    \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ,
    \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0 ,
    aclk,
    s_axis_a_tdata,
    s_axis_b_tdata);
  output [0:0]P;
  output [0:0]sum_rnd2;
  output [7:0]A;
  output [1:0]\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  output [7:0]\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0 ;
  input aclk;
  input [15:0]s_axis_a_tdata;
  input [15:0]s_axis_b_tdata;

  wire [7:0]A;
  wire [0:0]P;
  wire aclk;
  wire [17:0]mant_rnd;
  wire [15:0]s_axis_a_tdata;
  wire [15:0]s_axis_b_tdata;
  wire [0:0]sum_rnd2;
  wire [1:0]\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ;
  wire [7:0]\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0 ;
  wire [0:0]zero_detect_rnd;
  wire [47:0]NLW_MULT_PCASC_UNCONNECTED;
  wire [1:1]NLW_MULT_ZERO_DETECT_UNCONNECTED;

  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0 
       (.I0(mant_rnd[2]),
        .I1(P),
        .I2(mant_rnd[1]),
        .O(A[0]));
  LUT3 #(
    .INIT(8'hFD)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__1 
       (.I0(zero_detect_rnd),
        .I1(mant_rnd[0]),
        .I2(mant_rnd[1]),
        .O(\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__2 
       (.I0(mant_rnd[10]),
        .I1(P),
        .I2(mant_rnd[9]),
        .O(\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__0 
       (.I0(mant_rnd[3]),
        .I1(P),
        .I2(mant_rnd[2]),
        .O(A[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__1 
       (.I0(mant_rnd[11]),
        .I1(P),
        .I2(mant_rnd[10]),
        .O(\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0 
       (.I0(mant_rnd[4]),
        .I1(P),
        .I2(mant_rnd[3]),
        .O(A[2]));
  LUT5 #(
    .INIT(32'h0F0C7F3F)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__1 
       (.I0(mant_rnd[2]),
        .I1(P),
        .I2(mant_rnd[1]),
        .I3(zero_detect_rnd),
        .I4(mant_rnd[0]),
        .O(\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__2 
       (.I0(mant_rnd[12]),
        .I1(P),
        .I2(mant_rnd[11]),
        .O(\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0 
       (.I0(mant_rnd[5]),
        .I1(P),
        .I2(mant_rnd[4]),
        .O(A[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__1 
       (.I0(mant_rnd[13]),
        .I1(P),
        .I2(mant_rnd[12]),
        .O(\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__0 
       (.I0(mant_rnd[6]),
        .I1(P),
        .I2(mant_rnd[5]),
        .O(A[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__1 
       (.I0(mant_rnd[14]),
        .I1(P),
        .I2(mant_rnd[13]),
        .O(\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0 [4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__0 
       (.I0(mant_rnd[7]),
        .I1(P),
        .I2(mant_rnd[6]),
        .O(A[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__1 
       (.I0(mant_rnd[15]),
        .I1(P),
        .I2(mant_rnd[14]),
        .O(\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0 [5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__0 
       (.I0(mant_rnd[8]),
        .I1(P),
        .I2(mant_rnd[7]),
        .O(A[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__1 
       (.I0(mant_rnd[16]),
        .I1(P),
        .I2(mant_rnd[15]),
        .O(\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0 [6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1 
       (.I0(mant_rnd[9]),
        .I1(P),
        .I2(mant_rnd[8]),
        .O(A[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__0 
       (.I0(mant_rnd[17]),
        .I1(P),
        .I2(mant_rnd[16]),
        .O(\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0 [7]));
  LUT1 #(
    .INIT(2'h1)) 
    \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1 
       (.I0(P),
        .O(sum_rnd2));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "17" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "111111111111111111" *) 
  (* C_B_WIDTH = "17" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "1" *) 
  (* C_LATENCY = "1000000004" *) 
  (* C_MODEL_TYPE = "1" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "33" *) 
  (* C_OUT_LOW = "15" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  fp16_mult_mult_gen_v12_0_14_viv MULT
       (.A({1'b1,s_axis_a_tdata}),
        .B({1'b1,s_axis_b_tdata}),
        .CE(1'b1),
        .CLK(aclk),
        .P({P,mant_rnd}),
        .PCASC(NLW_MULT_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT({NLW_MULT_ZERO_DETECT_UNCONNECTED[1],zero_detect_rnd}));
endmodule

(* C_ACCUM_INPUT_MSB = "31" *) (* C_ACCUM_LSB = "-31" *) (* C_ACCUM_MSB = "32" *) 
(* C_A_FRACTION_WIDTH = "17" *) (* C_A_TDATA_WIDTH = "24" *) (* C_A_TUSER_WIDTH = "1" *) 
(* C_A_WIDTH = "24" *) (* C_BRAM_USAGE = "0" *) (* C_B_FRACTION_WIDTH = "17" *) 
(* C_B_TDATA_WIDTH = "24" *) (* C_B_TUSER_WIDTH = "1" *) (* C_B_WIDTH = "24" *) 
(* C_COMPARE_OPERATION = "8" *) (* C_C_FRACTION_WIDTH = "17" *) (* C_C_TDATA_WIDTH = "24" *) 
(* C_C_TUSER_WIDTH = "1" *) (* C_C_WIDTH = "24" *) (* C_FIXED_DATA_UNSIGNED = "0" *) 
(* C_HAS_ABSOLUTE = "0" *) (* C_HAS_ACCUMULATOR_A = "0" *) (* C_HAS_ACCUMULATOR_S = "0" *) 
(* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) (* C_HAS_ACCUM_OVERFLOW = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ADD = "0" *) (* C_HAS_ARESETN = "0" *) (* C_HAS_A_TLAST = "0" *) 
(* C_HAS_A_TUSER = "0" *) (* C_HAS_B = "1" *) (* C_HAS_B_TLAST = "0" *) 
(* C_HAS_B_TUSER = "0" *) (* C_HAS_C = "0" *) (* C_HAS_COMPARE = "0" *) 
(* C_HAS_C_TLAST = "0" *) (* C_HAS_C_TUSER = "0" *) (* C_HAS_DIVIDE = "0" *) 
(* C_HAS_DIVIDE_BY_ZERO = "0" *) (* C_HAS_EXPONENTIAL = "0" *) (* C_HAS_FIX_TO_FLT = "0" *) 
(* C_HAS_FLT_TO_FIX = "0" *) (* C_HAS_FLT_TO_FLT = "0" *) (* C_HAS_FMA = "0" *) 
(* C_HAS_FMS = "0" *) (* C_HAS_INVALID_OP = "0" *) (* C_HAS_LOGARITHM = "0" *) 
(* C_HAS_MULTIPLY = "1" *) (* C_HAS_OPERATION = "0" *) (* C_HAS_OPERATION_TLAST = "0" *) 
(* C_HAS_OPERATION_TUSER = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_RECIP = "0" *) 
(* C_HAS_RECIP_SQRT = "0" *) (* C_HAS_RESULT_TLAST = "0" *) (* C_HAS_RESULT_TUSER = "0" *) 
(* C_HAS_SQRT = "0" *) (* C_HAS_SUBTRACT = "0" *) (* C_HAS_UNDERFLOW = "0" *) 
(* C_LATENCY = "2" *) (* C_MULT_USAGE = "2" *) (* C_OPERATION_TDATA_WIDTH = "8" *) 
(* C_OPERATION_TUSER_WIDTH = "1" *) (* C_OPTIMIZATION = "1" *) (* C_RATE = "1" *) 
(* C_RESULT_FRACTION_WIDTH = "17" *) (* C_RESULT_TDATA_WIDTH = "24" *) (* C_RESULT_TUSER_WIDTH = "1" *) 
(* C_RESULT_WIDTH = "24" *) (* C_THROTTLE_SCHEME = "3" *) (* C_TLAST_RESOLUTION = "0" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "floating_point_v7_1_7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module fp16_mult_floating_point_v7_1_7
   (aclk,
    aclken,
    aresetn,
    s_axis_a_tvalid,
    s_axis_a_tready,
    s_axis_a_tdata,
    s_axis_a_tuser,
    s_axis_a_tlast,
    s_axis_b_tvalid,
    s_axis_b_tready,
    s_axis_b_tdata,
    s_axis_b_tuser,
    s_axis_b_tlast,
    s_axis_c_tvalid,
    s_axis_c_tready,
    s_axis_c_tdata,
    s_axis_c_tuser,
    s_axis_c_tlast,
    s_axis_operation_tvalid,
    s_axis_operation_tready,
    s_axis_operation_tdata,
    s_axis_operation_tuser,
    s_axis_operation_tlast,
    m_axis_result_tvalid,
    m_axis_result_tready,
    m_axis_result_tdata,
    m_axis_result_tuser,
    m_axis_result_tlast);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_a_tvalid;
  output s_axis_a_tready;
  input [23:0]s_axis_a_tdata;
  input [0:0]s_axis_a_tuser;
  input s_axis_a_tlast;
  input s_axis_b_tvalid;
  output s_axis_b_tready;
  input [23:0]s_axis_b_tdata;
  input [0:0]s_axis_b_tuser;
  input s_axis_b_tlast;
  input s_axis_c_tvalid;
  output s_axis_c_tready;
  input [23:0]s_axis_c_tdata;
  input [0:0]s_axis_c_tuser;
  input s_axis_c_tlast;
  input s_axis_operation_tvalid;
  output s_axis_operation_tready;
  input [7:0]s_axis_operation_tdata;
  input [0:0]s_axis_operation_tuser;
  input s_axis_operation_tlast;
  output m_axis_result_tvalid;
  input m_axis_result_tready;
  output [23:0]m_axis_result_tdata;
  output [0:0]m_axis_result_tuser;
  output m_axis_result_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire [23:0]m_axis_result_tdata;
  wire m_axis_result_tvalid;
  wire [23:0]s_axis_a_tdata;
  wire s_axis_a_tvalid;
  wire [23:0]s_axis_b_tdata;
  wire s_axis_b_tvalid;
  wire NLW_i_synth_m_axis_result_tlast_UNCONNECTED;
  wire NLW_i_synth_s_axis_a_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_b_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_c_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_operation_tready_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_result_tuser_UNCONNECTED;

  assign m_axis_result_tlast = \<const0> ;
  assign m_axis_result_tuser[0] = \<const0> ;
  assign s_axis_a_tready = \<const1> ;
  assign s_axis_b_tready = \<const1> ;
  assign s_axis_c_tready = \<const1> ;
  assign s_axis_operation_tready = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_ACCUM_INPUT_MSB = "31" *) 
  (* C_ACCUM_LSB = "-31" *) 
  (* C_ACCUM_MSB = "32" *) 
  (* C_A_FRACTION_WIDTH = "17" *) 
  (* C_A_TDATA_WIDTH = "24" *) 
  (* C_A_TUSER_WIDTH = "1" *) 
  (* C_A_WIDTH = "24" *) 
  (* C_BRAM_USAGE = "0" *) 
  (* C_B_FRACTION_WIDTH = "17" *) 
  (* C_B_TDATA_WIDTH = "24" *) 
  (* C_B_TUSER_WIDTH = "1" *) 
  (* C_B_WIDTH = "24" *) 
  (* C_COMPARE_OPERATION = "8" *) 
  (* C_C_FRACTION_WIDTH = "17" *) 
  (* C_C_TDATA_WIDTH = "24" *) 
  (* C_C_TUSER_WIDTH = "1" *) 
  (* C_C_WIDTH = "24" *) 
  (* C_FIXED_DATA_UNSIGNED = "0" *) 
  (* C_HAS_ABSOLUTE = "0" *) 
  (* C_HAS_ACCUMULATOR_A = "0" *) 
  (* C_HAS_ACCUMULATOR_S = "0" *) 
  (* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) 
  (* C_HAS_ACCUM_OVERFLOW = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ADD = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_A_TLAST = "0" *) 
  (* C_HAS_A_TUSER = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_B_TLAST = "0" *) 
  (* C_HAS_B_TUSER = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_COMPARE = "0" *) 
  (* C_HAS_C_TLAST = "0" *) 
  (* C_HAS_C_TUSER = "0" *) 
  (* C_HAS_DIVIDE = "0" *) 
  (* C_HAS_DIVIDE_BY_ZERO = "0" *) 
  (* C_HAS_EXPONENTIAL = "0" *) 
  (* C_HAS_FIX_TO_FLT = "0" *) 
  (* C_HAS_FLT_TO_FIX = "0" *) 
  (* C_HAS_FLT_TO_FLT = "0" *) 
  (* C_HAS_FMA = "0" *) 
  (* C_HAS_FMS = "0" *) 
  (* C_HAS_INVALID_OP = "0" *) 
  (* C_HAS_LOGARITHM = "0" *) 
  (* C_HAS_MULTIPLY = "1" *) 
  (* C_HAS_OPERATION = "0" *) 
  (* C_HAS_OPERATION_TLAST = "0" *) 
  (* C_HAS_OPERATION_TUSER = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_RECIP = "0" *) 
  (* C_HAS_RECIP_SQRT = "0" *) 
  (* C_HAS_RESULT_TLAST = "0" *) 
  (* C_HAS_RESULT_TUSER = "0" *) 
  (* C_HAS_SQRT = "0" *) 
  (* C_HAS_SUBTRACT = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_LATENCY = "2" *) 
  (* C_MULT_USAGE = "2" *) 
  (* C_OPERATION_TDATA_WIDTH = "8" *) 
  (* C_OPERATION_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZATION = "1" *) 
  (* C_RATE = "1" *) 
  (* C_RESULT_FRACTION_WIDTH = "17" *) 
  (* C_RESULT_TDATA_WIDTH = "24" *) 
  (* C_RESULT_TUSER_WIDTH = "1" *) 
  (* C_RESULT_WIDTH = "24" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  fp16_mult_floating_point_v7_1_7_viv i_synth
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(1'b0),
        .m_axis_result_tdata(m_axis_result_tdata),
        .m_axis_result_tlast(NLW_i_synth_m_axis_result_tlast_UNCONNECTED),
        .m_axis_result_tready(1'b0),
        .m_axis_result_tuser(NLW_i_synth_m_axis_result_tuser_UNCONNECTED[0]),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(NLW_i_synth_s_axis_a_tready_UNCONNECTED),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata(s_axis_b_tdata),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_i_synth_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(s_axis_b_tvalid),
        .s_axis_c_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_c_tlast(1'b0),
        .s_axis_c_tready(NLW_i_synth_s_axis_c_tready_UNCONNECTED),
        .s_axis_c_tuser(1'b0),
        .s_axis_c_tvalid(1'b0),
        .s_axis_operation_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_operation_tlast(1'b0),
        .s_axis_operation_tready(NLW_i_synth_s_axis_operation_tready_UNCONNECTED),
        .s_axis_operation_tuser(1'b0),
        .s_axis_operation_tvalid(1'b0));
endmodule

(* C_ACCUM_INPUT_MSB = "31" *) (* C_ACCUM_LSB = "-31" *) (* C_ACCUM_MSB = "32" *) 
(* C_A_FRACTION_WIDTH = "17" *) (* C_A_TDATA_WIDTH = "24" *) (* C_A_TUSER_WIDTH = "1" *) 
(* C_A_WIDTH = "24" *) (* C_BRAM_USAGE = "0" *) (* C_B_FRACTION_WIDTH = "17" *) 
(* C_B_TDATA_WIDTH = "24" *) (* C_B_TUSER_WIDTH = "1" *) (* C_B_WIDTH = "24" *) 
(* C_COMPARE_OPERATION = "8" *) (* C_C_FRACTION_WIDTH = "17" *) (* C_C_TDATA_WIDTH = "24" *) 
(* C_C_TUSER_WIDTH = "1" *) (* C_C_WIDTH = "24" *) (* C_FIXED_DATA_UNSIGNED = "0" *) 
(* C_HAS_ABSOLUTE = "0" *) (* C_HAS_ACCUMULATOR_A = "0" *) (* C_HAS_ACCUMULATOR_S = "0" *) 
(* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) (* C_HAS_ACCUM_OVERFLOW = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ADD = "0" *) (* C_HAS_ARESETN = "0" *) (* C_HAS_A_TLAST = "0" *) 
(* C_HAS_A_TUSER = "0" *) (* C_HAS_B = "1" *) (* C_HAS_B_TLAST = "0" *) 
(* C_HAS_B_TUSER = "0" *) (* C_HAS_C = "0" *) (* C_HAS_COMPARE = "0" *) 
(* C_HAS_C_TLAST = "0" *) (* C_HAS_C_TUSER = "0" *) (* C_HAS_DIVIDE = "0" *) 
(* C_HAS_DIVIDE_BY_ZERO = "0" *) (* C_HAS_EXPONENTIAL = "0" *) (* C_HAS_FIX_TO_FLT = "0" *) 
(* C_HAS_FLT_TO_FIX = "0" *) (* C_HAS_FLT_TO_FLT = "0" *) (* C_HAS_FMA = "0" *) 
(* C_HAS_FMS = "0" *) (* C_HAS_INVALID_OP = "0" *) (* C_HAS_LOGARITHM = "0" *) 
(* C_HAS_MULTIPLY = "1" *) (* C_HAS_OPERATION = "0" *) (* C_HAS_OPERATION_TLAST = "0" *) 
(* C_HAS_OPERATION_TUSER = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_RECIP = "0" *) 
(* C_HAS_RECIP_SQRT = "0" *) (* C_HAS_RESULT_TLAST = "0" *) (* C_HAS_RESULT_TUSER = "0" *) 
(* C_HAS_SQRT = "0" *) (* C_HAS_SUBTRACT = "0" *) (* C_HAS_UNDERFLOW = "0" *) 
(* C_LATENCY = "2" *) (* C_MULT_USAGE = "2" *) (* C_OPERATION_TDATA_WIDTH = "8" *) 
(* C_OPERATION_TUSER_WIDTH = "1" *) (* C_OPTIMIZATION = "1" *) (* C_RATE = "1" *) 
(* C_RESULT_FRACTION_WIDTH = "17" *) (* C_RESULT_TDATA_WIDTH = "24" *) (* C_RESULT_TUSER_WIDTH = "1" *) 
(* C_RESULT_WIDTH = "24" *) (* C_THROTTLE_SCHEME = "3" *) (* C_TLAST_RESOLUTION = "0" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "floating_point_v7_1_7_viv" *) (* downgradeipidentifiedwarnings = "yes" *) 
module fp16_mult_floating_point_v7_1_7_viv
   (aclk,
    aclken,
    aresetn,
    s_axis_a_tvalid,
    s_axis_a_tready,
    s_axis_a_tdata,
    s_axis_a_tuser,
    s_axis_a_tlast,
    s_axis_b_tvalid,
    s_axis_b_tready,
    s_axis_b_tdata,
    s_axis_b_tuser,
    s_axis_b_tlast,
    s_axis_c_tvalid,
    s_axis_c_tready,
    s_axis_c_tdata,
    s_axis_c_tuser,
    s_axis_c_tlast,
    s_axis_operation_tvalid,
    s_axis_operation_tready,
    s_axis_operation_tdata,
    s_axis_operation_tuser,
    s_axis_operation_tlast,
    m_axis_result_tvalid,
    m_axis_result_tready,
    m_axis_result_tdata,
    m_axis_result_tuser,
    m_axis_result_tlast);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_a_tvalid;
  output s_axis_a_tready;
  input [23:0]s_axis_a_tdata;
  input [0:0]s_axis_a_tuser;
  input s_axis_a_tlast;
  input s_axis_b_tvalid;
  output s_axis_b_tready;
  input [23:0]s_axis_b_tdata;
  input [0:0]s_axis_b_tuser;
  input s_axis_b_tlast;
  input s_axis_c_tvalid;
  output s_axis_c_tready;
  input [23:0]s_axis_c_tdata;
  input [0:0]s_axis_c_tuser;
  input s_axis_c_tlast;
  input s_axis_operation_tvalid;
  output s_axis_operation_tready;
  input [7:0]s_axis_operation_tdata;
  input [0:0]s_axis_operation_tuser;
  input s_axis_operation_tlast;
  output m_axis_result_tvalid;
  input m_axis_result_tready;
  output [23:0]m_axis_result_tdata;
  output [0:0]m_axis_result_tuser;
  output m_axis_result_tlast;

  wire \<const0> ;
  wire aclk;
  wire [23:0]m_axis_result_tdata;
  wire m_axis_result_tvalid;
  wire [23:0]s_axis_a_tdata;
  wire s_axis_a_tvalid;
  wire [23:0]s_axis_b_tdata;
  wire s_axis_b_tvalid;

  assign m_axis_result_tlast = \<const0> ;
  assign m_axis_result_tuser[0] = \<const0> ;
  assign s_axis_a_tready = \<const0> ;
  assign s_axis_b_tready = \<const0> ;
  assign s_axis_c_tready = \<const0> ;
  assign s_axis_operation_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  fp16_mult_flt_mult \MULT.OP 
       (.aclk(aclk),
        .m_axis_result_tdata(m_axis_result_tdata),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_b_tdata(s_axis_b_tdata));
  fp16_mult_xbip_pipe_v3_0_5_viv i_nd_to_rdy
       (.aclk(aclk),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tvalid(s_axis_b_tvalid));
endmodule

(* ORIG_REF_NAME = "flt_dec_op_lat" *) 
module fp16_mult_flt_dec_op_lat
   (m_axis_result_tdata,
    state_op,
    mant_op,
    aclk,
    \RESULT_REG.NORMAL.mant_op_reg[15]_0 ,
    out,
    Q,
    state_int_up);
  output [23:0]m_axis_result_tdata;
  input [1:0]state_op;
  input [14:0]mant_op;
  input aclk;
  input \RESULT_REG.NORMAL.mant_op_reg[15]_0 ;
  input out;
  input [6:0]Q;
  input [0:0]state_int_up;

  wire [6:0]Q;
  wire \RESULT_REG.NORMAL.exp_op[0]_i_1_n_0 ;
  wire \RESULT_REG.NORMAL.exp_op[1]_i_1_n_0 ;
  wire \RESULT_REG.NORMAL.exp_op[2]_i_1_n_0 ;
  wire \RESULT_REG.NORMAL.exp_op[3]_i_1_n_0 ;
  wire \RESULT_REG.NORMAL.exp_op[4]_i_1_n_0 ;
  wire \RESULT_REG.NORMAL.exp_op[5]_i_1_n_0 ;
  wire \RESULT_REG.NORMAL.exp_op[6]_i_2_n_0 ;
  wire \RESULT_REG.NORMAL.mant_op_reg[15]_0 ;
  wire aclk;
  wire [23:0]m_axis_result_tdata;
  wire [14:0]mant_op;
  wire out;
  wire [0:0]state_int_up;
  wire [1:0]state_op;

  LUT2 #(
    .INIT(4'hE)) 
    \RESULT_REG.NORMAL.exp_op[0]_i_1 
       (.I0(Q[0]),
        .I1(state_int_up),
        .O(\RESULT_REG.NORMAL.exp_op[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESULT_REG.NORMAL.exp_op[1]_i_1 
       (.I0(Q[1]),
        .I1(state_int_up),
        .O(\RESULT_REG.NORMAL.exp_op[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESULT_REG.NORMAL.exp_op[2]_i_1 
       (.I0(Q[2]),
        .I1(state_int_up),
        .O(\RESULT_REG.NORMAL.exp_op[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESULT_REG.NORMAL.exp_op[3]_i_1 
       (.I0(Q[3]),
        .I1(state_int_up),
        .O(\RESULT_REG.NORMAL.exp_op[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESULT_REG.NORMAL.exp_op[4]_i_1 
       (.I0(Q[4]),
        .I1(state_int_up),
        .O(\RESULT_REG.NORMAL.exp_op[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESULT_REG.NORMAL.exp_op[5]_i_1 
       (.I0(Q[5]),
        .I1(state_int_up),
        .O(\RESULT_REG.NORMAL.exp_op[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESULT_REG.NORMAL.exp_op[6]_i_2 
       (.I0(Q[6]),
        .I1(state_int_up),
        .O(\RESULT_REG.NORMAL.exp_op[6]_i_2_n_0 ));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.exp_op_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\RESULT_REG.NORMAL.exp_op[0]_i_1_n_0 ),
        .Q(m_axis_result_tdata[16]),
        .R(state_op[0]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.exp_op_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\RESULT_REG.NORMAL.exp_op[1]_i_1_n_0 ),
        .Q(m_axis_result_tdata[17]),
        .R(state_op[0]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.exp_op_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\RESULT_REG.NORMAL.exp_op[2]_i_1_n_0 ),
        .Q(m_axis_result_tdata[18]),
        .R(state_op[0]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.exp_op_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\RESULT_REG.NORMAL.exp_op[3]_i_1_n_0 ),
        .Q(m_axis_result_tdata[19]),
        .R(state_op[0]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.exp_op_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\RESULT_REG.NORMAL.exp_op[4]_i_1_n_0 ),
        .Q(m_axis_result_tdata[20]),
        .R(state_op[0]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.exp_op_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\RESULT_REG.NORMAL.exp_op[5]_i_1_n_0 ),
        .Q(m_axis_result_tdata[21]),
        .R(state_op[0]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.exp_op_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\RESULT_REG.NORMAL.exp_op[6]_i_2_n_0 ),
        .Q(m_axis_result_tdata[22]),
        .R(state_op[0]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.mant_op_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(mant_op[0]),
        .Q(m_axis_result_tdata[0]),
        .R(state_op[1]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.mant_op_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(mant_op[10]),
        .Q(m_axis_result_tdata[10]),
        .R(state_op[1]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.mant_op_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(mant_op[11]),
        .Q(m_axis_result_tdata[11]),
        .R(state_op[1]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.mant_op_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(mant_op[12]),
        .Q(m_axis_result_tdata[12]),
        .R(state_op[1]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.mant_op_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(mant_op[13]),
        .Q(m_axis_result_tdata[13]),
        .R(state_op[1]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.mant_op_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(mant_op[14]),
        .Q(m_axis_result_tdata[14]),
        .R(state_op[1]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.mant_op_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\RESULT_REG.NORMAL.mant_op_reg[15]_0 ),
        .Q(m_axis_result_tdata[15]),
        .R(1'b0));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.mant_op_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(mant_op[1]),
        .Q(m_axis_result_tdata[1]),
        .R(state_op[1]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.mant_op_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(mant_op[2]),
        .Q(m_axis_result_tdata[2]),
        .R(state_op[1]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.mant_op_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(mant_op[3]),
        .Q(m_axis_result_tdata[3]),
        .R(state_op[1]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.mant_op_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(mant_op[4]),
        .Q(m_axis_result_tdata[4]),
        .R(state_op[1]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.mant_op_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(mant_op[5]),
        .Q(m_axis_result_tdata[5]),
        .R(state_op[1]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.mant_op_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(mant_op[6]),
        .Q(m_axis_result_tdata[6]),
        .R(state_op[1]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.mant_op_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(mant_op[7]),
        .Q(m_axis_result_tdata[7]),
        .R(state_op[1]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.mant_op_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(mant_op[8]),
        .Q(m_axis_result_tdata[8]),
        .R(state_op[1]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.mant_op_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(mant_op[9]),
        .Q(m_axis_result_tdata[9]),
        .R(state_op[1]));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.sign_op_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(out),
        .Q(m_axis_result_tdata[23]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flt_mult" *) 
module fp16_mult_flt_mult
   (m_axis_result_tdata,
    aclk,
    s_axis_a_tdata,
    s_axis_b_tdata);
  output [23:0]m_axis_result_tdata;
  input aclk;
  input [23:0]s_axis_a_tdata;
  input [23:0]s_axis_b_tdata;

  wire EXP_n_8;
  wire [2:0]\LOGIC.R_AND_R/RND_BIT_GEN/a_ip ;
  wire [6:6]\LOGIC.R_AND_R/a_add_op ;
  wire [7:0]\LOGIC.R_AND_R/mant_shifted_rnd1 ;
  wire [8:8]\LOGIC.R_AND_R/sum_rnd2 ;
  wire aclk;
  wire [5:0]exp_op;
  wire [6:0]exp_rnd;
  wire [23:0]m_axis_result_tdata;
  wire [15:0]mant_op;
  wire [18:18]mant_rnd;
  wire [7:0]mant_shifted_rnd2;
  wire [23:0]s_axis_a_tdata;
  wire [23:0]s_axis_b_tdata;
  wire sign_op;
  wire [0:0]state_int_up;
  wire [5:1]state_op;

  fp16_mult_flt_mult_exp EXP
       (.A({\LOGIC.R_AND_R/a_add_op ,exp_op}),
        .P(mant_rnd),
        .Q(mant_op[15]),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[0] (EXP_n_8),
        .out(sign_op),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_b_tdata(s_axis_b_tdata),
        .state_int_up(state_int_up),
        .state_op({state_op[5],state_op[1]}));
  fp16_mult_fix_mult MULT
       (.A(\LOGIC.R_AND_R/mant_shifted_rnd1 ),
        .P(mant_rnd),
        .aclk(aclk),
        .s_axis_a_tdata(s_axis_a_tdata[15:0]),
        .s_axis_b_tdata(s_axis_b_tdata[15:0]),
        .sum_rnd2(\LOGIC.R_AND_R/sum_rnd2 ),
        .\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1 ({\LOGIC.R_AND_R/RND_BIT_GEN/a_ip [2],\LOGIC.R_AND_R/RND_BIT_GEN/a_ip [0]}),
        .\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0 (mant_shifted_rnd2));
  fp16_mult_flt_dec_op_lat OP
       (.Q(exp_rnd),
        .\RESULT_REG.NORMAL.mant_op_reg[15]_0 (EXP_n_8),
        .aclk(aclk),
        .m_axis_result_tdata(m_axis_result_tdata),
        .mant_op(mant_op[14:0]),
        .out(sign_op),
        .state_int_up(state_int_up),
        .state_op({state_op[5],state_op[1]}));
  fp16_mult_flt_mult_round R_AND_R
       (.A({\LOGIC.R_AND_R/RND_BIT_GEN/a_ip [2],\LOGIC.R_AND_R/RND_BIT_GEN/a_ip [0]}),
        .Q(exp_rnd),
        .\RESULT_REG.NORMAL.exp_op_reg[6] ({\LOGIC.R_AND_R/a_add_op ,exp_op}),
        .\RESULT_REG.NORMAL.mant_op_reg[15] (mant_shifted_rnd2),
        .\RESULT_REG.NORMAL.mant_op_reg[7] (\LOGIC.R_AND_R/mant_shifted_rnd1 ),
        .mant_op(mant_op),
        .sum_rnd2(\LOGIC.R_AND_R/sum_rnd2 ));
endmodule

(* ORIG_REF_NAME = "flt_mult_exp" *) 
module fp16_mult_flt_mult_exp
   (out,
    A,
    \opt_has_pipe.first_q_reg[0] ,
    state_int_up,
    state_op,
    aclk,
    Q,
    P,
    s_axis_b_tdata,
    s_axis_a_tdata);
  output out;
  output [6:0]A;
  output \opt_has_pipe.first_q_reg[0] ;
  output [0:0]state_int_up;
  output [1:0]state_op;
  input aclk;
  input [0:0]Q;
  input [0:0]P;
  input [23:0]s_axis_b_tdata;
  input [23:0]s_axis_a_tdata;

  wire [6:0]A;
  wire COND_DET_A_n_0;
  wire COND_DET_B_n_0;
  wire \EXP_ADD.C_CHAIN_n_1 ;
  wire \EXP_ADD.C_CHAIN_n_10 ;
  wire \EXP_ADD.C_CHAIN_n_2 ;
  wire \EXP_ADD.C_CHAIN_n_3 ;
  wire \EXP_ADD.C_CHAIN_n_5 ;
  wire \EXP_ADD.C_CHAIN_n_6 ;
  wire \EXP_ADD.C_CHAIN_n_7 ;
  wire \EXP_ADD.C_CHAIN_n_8 ;
  wire \EXP_ADD.C_CHAIN_n_9 ;
  wire IP_SIGN_DELAY_n_2;
  wire IP_SIGN_DELAY_n_3;
  wire IP_SIGN_DELAY_n_4;
  wire IP_SIGN_DELAY_n_5;
  wire [0:0]P;
  wire [0:0]Q;
  wire SIG_DELAY_n_2;
  wire a_exp_flt_all_one_int;
  wire a_exp_flt_all_zero_int;
  wire a_mant_is_zero_int;
  wire aclk;
  wire b_exp_flt_all_one_int;
  wire b_exp_flt_all_zero_int;
  wire b_mant_is_zero_int;
  wire flow_sig;
  wire [3:1]flow_up;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire out;
  wire p_0_in3_in;
  wire p_6_in;
  wire prod_sign_ip__0;
  wire [23:0]s_axis_a_tdata;
  wire [23:0]s_axis_b_tdata;
  wire [1:1]state_det;
  wire [0:0]state_int_up;
  wire [1:0]state_op;
  wire [1:0]state_up;

  fp16_mult_special_detect COND_DET_A
       (.A_EQ_VALUE(a_mant_is_zero_int),
        .CARRYS_OUT(b_mant_is_zero_int),
        .D(state_det),
        .a_exp_flt_all_one_int(a_exp_flt_all_one_int),
        .a_exp_flt_all_zero_int(a_exp_flt_all_zero_int),
        .b_exp_flt_all_one_int(b_exp_flt_all_one_int),
        .b_exp_flt_all_zero_int(b_exp_flt_all_zero_int),
        .\opt_has_pipe.first_q_reg[0] (IP_SIGN_DELAY_n_2),
        .\opt_has_pipe.first_q_reg[0]_0 (IP_SIGN_DELAY_n_3),
        .\opt_has_pipe.first_q_reg[0]_1 (IP_SIGN_DELAY_n_5),
        .\opt_has_pipe.first_q_reg[0]_2 (IP_SIGN_DELAY_n_4),
        .p_6_in(p_6_in),
        .prod_sign_ip__0(prod_sign_ip__0),
        .s_axis_a_tdata({s_axis_a_tdata[22:20],s_axis_a_tdata[15:0]}),
        .\s_axis_b_tdata[22] (COND_DET_A_n_0));
  fp16_mult_special_detect_0 COND_DET_B
       (.A_EQ_VALUE(b_mant_is_zero_int),
        .a_exp_flt_all_one_int(a_exp_flt_all_one_int),
        .a_exp_flt_all_zero_int(a_exp_flt_all_zero_int),
        .b_exp_flt_all_one_int(b_exp_flt_all_one_int),
        .b_exp_flt_all_zero_int(b_exp_flt_all_zero_int),
        .\opt_has_pipe.first_q_reg[0] (a_mant_is_zero_int),
        .\opt_has_pipe.first_q_reg[0]_0 (IP_SIGN_DELAY_n_4),
        .p_6_in(p_6_in),
        .\s_axis_a_tdata[22] (COND_DET_B_n_0),
        .s_axis_b_tdata({s_axis_b_tdata[22:20],s_axis_b_tdata[15:0]}));
  fp16_mult_carry_chain \EXP_ADD.C_CHAIN 
       (.D({flow_sig,\EXP_ADD.C_CHAIN_n_1 ,\EXP_ADD.C_CHAIN_n_2 ,\EXP_ADD.C_CHAIN_n_3 }),
        .Q({p_0_in3_in,\EXP_ADD.C_CHAIN_n_5 ,\EXP_ADD.C_CHAIN_n_6 ,\EXP_ADD.C_CHAIN_n_7 ,\EXP_ADD.C_CHAIN_n_8 ,\EXP_ADD.C_CHAIN_n_9 ,\EXP_ADD.C_CHAIN_n_10 }),
        .s_axis_a_tdata(s_axis_a_tdata[22:16]),
        .s_axis_b_tdata(s_axis_b_tdata[22:16]));
  fp16_mult_delay__parameterized11 EXP_PRE_RND_DEL
       (.A(A),
        .D({p_0_in3_in,\EXP_ADD.C_CHAIN_n_5 ,\EXP_ADD.C_CHAIN_n_6 ,\EXP_ADD.C_CHAIN_n_7 ,\EXP_ADD.C_CHAIN_n_8 ,\EXP_ADD.C_CHAIN_n_9 ,\EXP_ADD.C_CHAIN_n_10 }),
        .aclk(aclk));
  fp16_mult_delay__parameterized8 INV_OP_DEL
       (.a_exp_flt_all_zero_int(a_exp_flt_all_zero_int),
        .aclk(aclk),
        .b_exp_flt_all_zero_int(b_exp_flt_all_zero_int),
        .\opt_has_pipe.first_q_reg[0] (COND_DET_B_n_0),
        .s_axis_a_tdata(s_axis_a_tdata[22:16]),
        .s_axis_b_tdata(s_axis_b_tdata[22:16]));
  fp16_mult_delay__parameterized8_1 IP_SIGN_DELAY
       (.aclk(aclk),
        .\opt_has_pipe.first_q_reg[0] (COND_DET_A_n_0),
        .out(out),
        .prod_sign_ip__0(prod_sign_ip__0),
        .s_axis_a_tdata(s_axis_a_tdata[23:16]),
        .\s_axis_a_tdata[18] (IP_SIGN_DELAY_n_2),
        .\s_axis_a_tdata[21] (IP_SIGN_DELAY_n_3),
        .s_axis_b_tdata(s_axis_b_tdata[23:16]),
        .\s_axis_b_tdata[18] (IP_SIGN_DELAY_n_4),
        .\s_axis_b_tdata[21] (IP_SIGN_DELAY_n_5));
  fp16_mult_delay__parameterized10 SIG_DELAY
       (.D({flow_sig,\EXP_ADD.C_CHAIN_n_1 ,\EXP_ADD.C_CHAIN_n_2 ,\EXP_ADD.C_CHAIN_n_3 }),
        .P(P),
        .\RESULT_REG.NORMAL.mant_op_reg[14] (state_up),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[1] (SIG_DELAY_n_2),
        .out({flow_up[3],flow_up[1]}),
        .state_int_up(state_int_up),
        .state_op(state_op[1]));
  fp16_mult_delay__parameterized7 STATE_DELAY
       (.D(state_det),
        .Q(Q),
        .\RESULT_REG.NORMAL.exp_op_reg[1] ({flow_up[3],flow_up[1]}),
        .\RESULT_REG.NORMAL.mant_op_reg[15] (SIG_DELAY_n_2),
        .a_exp_flt_all_one_int(a_exp_flt_all_one_int),
        .aclk(aclk),
        .b_exp_flt_all_one_int(b_exp_flt_all_one_int),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[0]_0 (IP_SIGN_DELAY_n_2),
        .\opt_has_pipe.first_q_reg[0]_1 (IP_SIGN_DELAY_n_4),
        .out(state_up),
        .s_axis_a_tdata(s_axis_a_tdata[22:20]),
        .s_axis_b_tdata(s_axis_b_tdata[22:20]),
        .state_op(state_op[0]));
endmodule

(* ORIG_REF_NAME = "flt_mult_round" *) 
module fp16_mult_flt_mult_round
   (mant_op,
    Q,
    A,
    \RESULT_REG.NORMAL.mant_op_reg[7] ,
    \RESULT_REG.NORMAL.mant_op_reg[15] ,
    sum_rnd2,
    \RESULT_REG.NORMAL.exp_op_reg[6] );
  output [15:0]mant_op;
  output [6:0]Q;
  input [1:0]A;
  input [7:0]\RESULT_REG.NORMAL.mant_op_reg[7] ;
  input [7:0]\RESULT_REG.NORMAL.mant_op_reg[15] ;
  input [0:0]sum_rnd2;
  input [6:0]\RESULT_REG.NORMAL.exp_op_reg[6] ;

  wire [1:0]A;
  wire [6:0]Q;
  wire [6:0]\RESULT_REG.NORMAL.exp_op_reg[6] ;
  wire [7:0]\RESULT_REG.NORMAL.mant_op_reg[15] ;
  wire [7:0]\RESULT_REG.NORMAL.mant_op_reg[7] ;
  wire [15:0]mant_op;
  wire [0:0]sum_rnd2;

  fp16_mult_renorm_and_round_logic \LOGIC.R_AND_R 
       (.A(A),
        .Q(Q),
        .\RESULT_REG.NORMAL.exp_op_reg[6] (\RESULT_REG.NORMAL.exp_op_reg[6] ),
        .\RESULT_REG.NORMAL.mant_op_reg[15] (\RESULT_REG.NORMAL.mant_op_reg[15] ),
        .\RESULT_REG.NORMAL.mant_op_reg[7] (\RESULT_REG.NORMAL.mant_op_reg[7] ),
        .mant_op(mant_op),
        .sum_rnd2(sum_rnd2));
endmodule

(* ORIG_REF_NAME = "flt_round_bit" *) 
module fp16_mult_flt_round_bit
   (CARRYS_OUT,
    A,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  output [0:0]CARRYS_OUT;
  input [1:0]A;
  output lopt;
  input lopt_1;
  input lopt_2;
  output lopt_3;

  wire [1:0]A;
  wire [0:0]CARRYS_OUT;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;

  fp16_mult_carry_chain__parameterized1 \NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1 
       (.A(A),
        .CARRYS_OUT(CARRYS_OUT),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "17" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "111111111111111111" *) (* C_B_WIDTH = "17" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "1" *) (* C_LATENCY = "1000000004" *) (* C_MODEL_TYPE = "1" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "33" *) 
(* C_OUT_LOW = "15" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14_viv" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module fp16_mult_mult_gen_v12_0_14_viv
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [16:0]A;
  input [16:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [18:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [16:0]A;
  wire [16:0]B;
  wire CLK;
  wire [18:0]P;
  wire [0:0]\^ZERO_DETECT ;

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
  assign ZERO_DETECT[0] = \^ZERO_DETECT [0];
  GND GND
       (.G(\<const0> ));
  fp16_mult_dsp \gDSP.gDSP_only.iDSP 
       (.A(A[15:0]),
        .B(B[15:0]),
        .CLK(CLK),
        .P(P),
        .ZERO_DETECT(\^ZERO_DETECT ));
endmodule

(* ORIG_REF_NAME = "renorm_and_round_logic" *) 
module fp16_mult_renorm_and_round_logic
   (mant_op,
    Q,
    A,
    \RESULT_REG.NORMAL.mant_op_reg[7] ,
    \RESULT_REG.NORMAL.mant_op_reg[15] ,
    sum_rnd2,
    \RESULT_REG.NORMAL.exp_op_reg[6] );
  output [15:0]mant_op;
  output [6:0]Q;
  input [1:0]A;
  input [7:0]\RESULT_REG.NORMAL.mant_op_reg[7] ;
  input [7:0]\RESULT_REG.NORMAL.mant_op_reg[15] ;
  input [0:0]sum_rnd2;
  input [6:0]\RESULT_REG.NORMAL.exp_op_reg[6] ;

  wire [1:0]A;
  wire [6:0]Q;
  wire [6:0]\RESULT_REG.NORMAL.exp_op_reg[6] ;
  wire [7:0]\RESULT_REG.NORMAL.mant_op_reg[15] ;
  wire [7:0]\RESULT_REG.NORMAL.mant_op_reg[7] ;
  wire carry_op;
  wire carry_rnd2;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire [15:0]mant_op;
  wire round_rnd1;
  wire [0:0]sum_rnd2;

  fp16_mult_carry_chain__parameterized4 \EXP_ADD.ADD 
       (.CARRY_OUT(carry_op),
        .Q(Q),
        .\RESULT_REG.NORMAL.exp_op_reg[6] (\RESULT_REG.NORMAL.exp_op_reg[6] ));
  fp16_mult_carry_chain__parameterized2 \LOGIC.RND1 
       (.CARRYS_OUT(carry_rnd2),
        .CARRY_OUT(round_rnd1),
        .\RESULT_REG.NORMAL.mant_op_reg[7] (\RESULT_REG.NORMAL.mant_op_reg[7] ),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(\RESULT_REG.NORMAL.mant_op_reg[15] [0]),
        .lopt_6(lopt_5),
        .mant_op(mant_op[7:0]));
  fp16_mult_carry_chain__parameterized3 \LOGIC.RND2 
       (.CARRYS_OUT(carry_op),
        .CARRY_IN(carry_rnd2),
        .\RESULT_REG.NORMAL.mant_op_reg[15] (\RESULT_REG.NORMAL.mant_op_reg[15] ),
        .lopt(lopt_3),
        .lopt_1(lopt_4),
        .lopt_2(lopt_5),
        .mant_op(mant_op[15:8]),
        .sum_rnd2(sum_rnd2));
  fp16_mult_flt_round_bit RND_BIT_GEN
       (.A(A),
        .CARRYS_OUT(round_rnd1),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(\RESULT_REG.NORMAL.mant_op_reg[7] [0]),
        .lopt_3(lopt_2));
endmodule

(* ORIG_REF_NAME = "special_detect" *) 
module fp16_mult_special_detect
   (\s_axis_b_tdata[22] ,
    D,
    A_EQ_VALUE,
    b_exp_flt_all_zero_int,
    a_exp_flt_all_zero_int,
    p_6_in,
    prod_sign_ip__0,
    a_exp_flt_all_one_int,
    CARRYS_OUT,
    b_exp_flt_all_one_int,
    \opt_has_pipe.first_q_reg[0] ,
    s_axis_a_tdata,
    \opt_has_pipe.first_q_reg[0]_0 ,
    \opt_has_pipe.first_q_reg[0]_1 ,
    \opt_has_pipe.first_q_reg[0]_2 );
  output \s_axis_b_tdata[22] ;
  output [0:0]D;
  output A_EQ_VALUE;
  input b_exp_flt_all_zero_int;
  input a_exp_flt_all_zero_int;
  input p_6_in;
  input prod_sign_ip__0;
  input a_exp_flt_all_one_int;
  input [0:0]CARRYS_OUT;
  input b_exp_flt_all_one_int;
  input \opt_has_pipe.first_q_reg[0] ;
  input [18:0]s_axis_a_tdata;
  input \opt_has_pipe.first_q_reg[0]_0 ;
  input \opt_has_pipe.first_q_reg[0]_1 ;
  input \opt_has_pipe.first_q_reg[0]_2 ;

  wire A_EQ_VALUE;
  wire [0:0]CARRYS_OUT;
  wire [0:0]D;
  wire a_exp_flt_all_one_int;
  wire a_exp_flt_all_zero_int;
  wire b_exp_flt_all_one_int;
  wire b_exp_flt_all_zero_int;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire \opt_has_pipe.first_q_reg[0]_1 ;
  wire \opt_has_pipe.first_q_reg[0]_2 ;
  wire p_6_in;
  wire prod_sign_ip__0;
  wire [18:0]s_axis_a_tdata;
  wire \s_axis_b_tdata[22] ;

  fp16_mult_compare_eq_im_3 \MANT_CARRY.MANT_ALL_ZERO_DET 
       (.CARRYS_OUT(CARRYS_OUT),
        .CARRY_OUT(A_EQ_VALUE),
        .D(D),
        .a_exp_flt_all_one_int(a_exp_flt_all_one_int),
        .a_exp_flt_all_zero_int(a_exp_flt_all_zero_int),
        .b_exp_flt_all_one_int(b_exp_flt_all_one_int),
        .b_exp_flt_all_zero_int(b_exp_flt_all_zero_int),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0]_0 ),
        .\opt_has_pipe.first_q_reg[0]_1 (\opt_has_pipe.first_q_reg[0]_1 ),
        .\opt_has_pipe.first_q_reg[0]_2 (\opt_has_pipe.first_q_reg[0]_2 ),
        .p_6_in(p_6_in),
        .prod_sign_ip__0(prod_sign_ip__0),
        .s_axis_a_tdata(s_axis_a_tdata),
        .\s_axis_b_tdata[22] (\s_axis_b_tdata[22] ));
endmodule

(* ORIG_REF_NAME = "special_detect" *) 
module fp16_mult_special_detect_0
   (\s_axis_a_tdata[22] ,
    A_EQ_VALUE,
    p_6_in,
    a_exp_flt_all_zero_int,
    b_exp_flt_all_zero_int,
    b_exp_flt_all_one_int,
    a_exp_flt_all_one_int,
    \opt_has_pipe.first_q_reg[0] ,
    \opt_has_pipe.first_q_reg[0]_0 ,
    s_axis_b_tdata);
  output \s_axis_a_tdata[22] ;
  output A_EQ_VALUE;
  output p_6_in;
  input a_exp_flt_all_zero_int;
  input b_exp_flt_all_zero_int;
  input b_exp_flt_all_one_int;
  input a_exp_flt_all_one_int;
  input \opt_has_pipe.first_q_reg[0] ;
  input \opt_has_pipe.first_q_reg[0]_0 ;
  input [18:0]s_axis_b_tdata;

  wire A_EQ_VALUE;
  wire a_exp_flt_all_one_int;
  wire a_exp_flt_all_zero_int;
  wire b_exp_flt_all_one_int;
  wire b_exp_flt_all_zero_int;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire p_6_in;
  wire \s_axis_a_tdata[22] ;
  wire [18:0]s_axis_b_tdata;

  fp16_mult_compare_eq_im \MANT_CARRY.MANT_ALL_ZERO_DET 
       (.A_EQ_VALUE(A_EQ_VALUE),
        .a_exp_flt_all_one_int(a_exp_flt_all_one_int),
        .a_exp_flt_all_zero_int(a_exp_flt_all_zero_int),
        .b_exp_flt_all_one_int(b_exp_flt_all_one_int),
        .b_exp_flt_all_zero_int(b_exp_flt_all_zero_int),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0]_0 ),
        .p_6_in(p_6_in),
        .\s_axis_a_tdata[22] (\s_axis_a_tdata[22] ),
        .s_axis_b_tdata(s_axis_b_tdata));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_mult_xbip_pipe_v3_0_5_viv
   (m_axis_result_tvalid,
    aclk,
    s_axis_a_tvalid,
    s_axis_b_tvalid);
  output m_axis_result_tvalid;
  input aclk;
  input s_axis_a_tvalid;
  input s_axis_b_tvalid;

  wire aclk;
  (* RTL_KEEP = "true" *) wire first_q;
  wire m_axis_result_tvalid;
  wire s_axis_a_tvalid;
  wire s_axis_b_tvalid;
  wire valid_transfer_in;

  LUT2 #(
    .INIT(4'h8)) 
    \opt_has_pipe.first_q[0]_i_1__1 
       (.I0(s_axis_a_tvalid),
        .I1(s_axis_b_tvalid),
        .O(valid_transfer_in));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(valid_transfer_in),
        .Q(first_q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[2].pipe_reg[2][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(first_q),
        .Q(m_axis_result_tvalid),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_mult_xbip_pipe_v3_0_5_viv__parameterized17
   (out,
    \opt_has_pipe.first_q_reg[0]_0 ,
    state_op,
    a_exp_flt_all_one_int,
    b_exp_flt_all_one_int,
    \RESULT_REG.NORMAL.mant_op_reg[15] ,
    Q,
    \RESULT_REG.NORMAL.exp_op_reg[1] ,
    s_axis_a_tdata,
    \opt_has_pipe.first_q_reg[0]_1 ,
    s_axis_b_tdata,
    \opt_has_pipe.first_q_reg[0]_2 ,
    D,
    aclk);
  output [1:0]out;
  output \opt_has_pipe.first_q_reg[0]_0 ;
  output [0:0]state_op;
  output a_exp_flt_all_one_int;
  output b_exp_flt_all_one_int;
  input \RESULT_REG.NORMAL.mant_op_reg[15] ;
  input [0:0]Q;
  input [1:0]\RESULT_REG.NORMAL.exp_op_reg[1] ;
  input [2:0]s_axis_a_tdata;
  input \opt_has_pipe.first_q_reg[0]_1 ;
  input [2:0]s_axis_b_tdata;
  input \opt_has_pipe.first_q_reg[0]_2 ;
  input [0:0]D;
  input aclk;

  wire [0:0]D;
  wire [0:0]Q;
  wire [1:0]\RESULT_REG.NORMAL.exp_op_reg[1] ;
  wire \RESULT_REG.NORMAL.mant_op_reg[15] ;
  wire a_exp_flt_all_one_int;
  wire aclk;
  wire b_exp_flt_all_one_int;
  (* RTL_KEEP = "true" *) wire [1:0]first_q;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire \opt_has_pipe.first_q_reg[0]_1 ;
  wire \opt_has_pipe.first_q_reg[0]_2 ;
  wire [2:0]s_axis_a_tdata;
  wire [2:0]s_axis_b_tdata;
  wire [0:0]state_det;
  wire [0:0]state_op;

  assign out[1:0] = first_q;
  LUT4 #(
    .INIT(16'h00AE)) 
    \RESULT_REG.NORMAL.exp_op[6]_i_1 
       (.I0(first_q[1]),
        .I1(\RESULT_REG.NORMAL.exp_op_reg[1] [0]),
        .I2(\RESULT_REG.NORMAL.exp_op_reg[1] [1]),
        .I3(first_q[0]),
        .O(state_op));
  LUT4 #(
    .INIT(16'h2E0C)) 
    \RESULT_REG.NORMAL.mant_op[15]_i_1 
       (.I0(\RESULT_REG.NORMAL.mant_op_reg[15] ),
        .I1(first_q[0]),
        .I2(first_q[1]),
        .I3(Q),
        .O(\opt_has_pipe.first_q_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \opt_has_pipe.first_q[0]_i_1 
       (.I0(a_exp_flt_all_one_int),
        .I1(b_exp_flt_all_one_int),
        .O(state_det));
  LUT4 #(
    .INIT(16'h0080)) 
    \opt_has_pipe.first_q[1]_i_2 
       (.I0(s_axis_a_tdata[2]),
        .I1(s_axis_a_tdata[0]),
        .I2(s_axis_a_tdata[1]),
        .I3(\opt_has_pipe.first_q_reg[0]_1 ),
        .O(a_exp_flt_all_one_int));
  LUT4 #(
    .INIT(16'h0080)) 
    \opt_has_pipe.first_q[1]_i_3 
       (.I0(s_axis_b_tdata[2]),
        .I1(s_axis_b_tdata[0]),
        .I2(s_axis_b_tdata[1]),
        .I3(\opt_has_pipe.first_q_reg[0]_2 ),
        .O(b_exp_flt_all_one_int));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(state_det),
        .Q(first_q[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D),
        .Q(first_q[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_mult_xbip_pipe_v3_0_5_viv__parameterized19
   (out,
    prod_sign_ip__0,
    \s_axis_a_tdata[18] ,
    \s_axis_a_tdata[21] ,
    \s_axis_b_tdata[18] ,
    \s_axis_b_tdata[21] ,
    \opt_has_pipe.first_q_reg[0]_0 ,
    aclk,
    s_axis_b_tdata,
    s_axis_a_tdata);
  output out;
  output prod_sign_ip__0;
  output \s_axis_a_tdata[18] ;
  output \s_axis_a_tdata[21] ;
  output \s_axis_b_tdata[18] ;
  output \s_axis_b_tdata[21] ;
  input \opt_has_pipe.first_q_reg[0]_0 ;
  input aclk;
  input [7:0]s_axis_b_tdata;
  input [7:0]s_axis_a_tdata;

  wire aclk;
  (* RTL_KEEP = "true" *) wire first_q;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire prod_sign_ip__0;
  wire [7:0]s_axis_a_tdata;
  wire \s_axis_a_tdata[18] ;
  wire \s_axis_a_tdata[21] ;
  wire [7:0]s_axis_b_tdata;
  wire \s_axis_b_tdata[18] ;
  wire \s_axis_b_tdata[21] ;

  assign out = first_q;
  LUT2 #(
    .INIT(4'h6)) 
    \opt_has_pipe.first_q[0]_i_4 
       (.I0(s_axis_b_tdata[7]),
        .I1(s_axis_a_tdata[7]),
        .O(prod_sign_ip__0));
  LUT3 #(
    .INIT(8'h7F)) 
    \opt_has_pipe.first_q[0]_i_6 
       (.I0(s_axis_a_tdata[5]),
        .I1(s_axis_a_tdata[4]),
        .I2(s_axis_a_tdata[6]),
        .O(\s_axis_a_tdata[21] ));
  LUT3 #(
    .INIT(8'h7F)) 
    \opt_has_pipe.first_q[0]_i_7 
       (.I0(s_axis_b_tdata[5]),
        .I1(s_axis_b_tdata[4]),
        .I2(s_axis_b_tdata[6]),
        .O(\s_axis_b_tdata[21] ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \opt_has_pipe.first_q[1]_i_6 
       (.I0(s_axis_a_tdata[2]),
        .I1(s_axis_a_tdata[3]),
        .I2(s_axis_a_tdata[0]),
        .I3(s_axis_a_tdata[1]),
        .O(\s_axis_a_tdata[18] ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \opt_has_pipe.first_q[1]_i_7 
       (.I0(s_axis_b_tdata[2]),
        .I1(s_axis_b_tdata[3]),
        .I2(s_axis_b_tdata[0]),
        .I3(s_axis_b_tdata[1]),
        .O(\s_axis_b_tdata[18] ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[0]_0 ),
        .Q(first_q),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_mult_xbip_pipe_v3_0_5_viv__parameterized19_2
   (a_exp_flt_all_zero_int,
    b_exp_flt_all_zero_int,
    \opt_has_pipe.first_q_reg[0]_0 ,
    aclk,
    s_axis_a_tdata,
    s_axis_b_tdata);
  output a_exp_flt_all_zero_int;
  output b_exp_flt_all_zero_int;
  input \opt_has_pipe.first_q_reg[0]_0 ;
  input aclk;
  input [6:0]s_axis_a_tdata;
  input [6:0]s_axis_b_tdata;

  wire a_exp_flt_all_zero_int;
  wire aclk;
  wire b_exp_flt_all_zero_int;
  (* RTL_KEEP = "true" *) wire first_q;
  wire \opt_has_pipe.first_q[1]_i_8_n_0 ;
  wire \opt_has_pipe.first_q[1]_i_9_n_0 ;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire [6:0]s_axis_a_tdata;
  wire [6:0]s_axis_b_tdata;

  LUT4 #(
    .INIT(16'h0001)) 
    \opt_has_pipe.first_q[1]_i_4 
       (.I0(s_axis_b_tdata[6]),
        .I1(s_axis_b_tdata[4]),
        .I2(s_axis_b_tdata[5]),
        .I3(\opt_has_pipe.first_q[1]_i_8_n_0 ),
        .O(b_exp_flt_all_zero_int));
  LUT4 #(
    .INIT(16'h0001)) 
    \opt_has_pipe.first_q[1]_i_5 
       (.I0(s_axis_a_tdata[6]),
        .I1(s_axis_a_tdata[4]),
        .I2(s_axis_a_tdata[5]),
        .I3(\opt_has_pipe.first_q[1]_i_9_n_0 ),
        .O(a_exp_flt_all_zero_int));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \opt_has_pipe.first_q[1]_i_8 
       (.I0(s_axis_b_tdata[2]),
        .I1(s_axis_b_tdata[3]),
        .I2(s_axis_b_tdata[0]),
        .I3(s_axis_b_tdata[1]),
        .O(\opt_has_pipe.first_q[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \opt_has_pipe.first_q[1]_i_9 
       (.I0(s_axis_a_tdata[2]),
        .I1(s_axis_a_tdata[3]),
        .I2(s_axis_a_tdata[0]),
        .I3(s_axis_a_tdata[1]),
        .O(\opt_has_pipe.first_q[1]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[0]_0 ),
        .Q(first_q),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_mult_xbip_pipe_v3_0_5_viv__parameterized21
   (out,
    \opt_has_pipe.first_q_reg[1]_0 ,
    state_int_up,
    state_op,
    P,
    \RESULT_REG.NORMAL.mant_op_reg[14] ,
    D,
    aclk);
  output [1:0]out;
  output \opt_has_pipe.first_q_reg[1]_0 ;
  output [0:0]state_int_up;
  output [0:0]state_op;
  input [0:0]P;
  input [1:0]\RESULT_REG.NORMAL.mant_op_reg[14] ;
  input [3:0]D;
  input aclk;

  wire [3:0]D;
  wire [0:0]P;
  wire \RESULT_REG.NORMAL.mant_op[14]_i_2_n_0 ;
  wire [1:0]\RESULT_REG.NORMAL.mant_op_reg[14] ;
  wire aclk;
  (* RTL_KEEP = "true" *) wire [3:0]first_q;
  wire \opt_has_pipe.first_q_reg[1]_0 ;
  wire [0:0]state_int_up;
  wire [0:0]state_op;

  assign out[1] = first_q[3];
  assign out[0] = first_q[1];
  LUT6 #(
    .INIT(64'hFFFFFFFF11111000)) 
    \RESULT_REG.NORMAL.exp_op[6]_i_3 
       (.I0(first_q[1]),
        .I1(\RESULT_REG.NORMAL.mant_op_reg[14] [1]),
        .I2(first_q[2]),
        .I3(P),
        .I4(first_q[0]),
        .I5(\RESULT_REG.NORMAL.mant_op_reg[14] [0]),
        .O(state_int_up));
  LUT2 #(
    .INIT(4'hE)) 
    \RESULT_REG.NORMAL.mant_op[14]_i_1 
       (.I0(\RESULT_REG.NORMAL.mant_op[14]_i_2_n_0 ),
        .I1(\RESULT_REG.NORMAL.mant_op_reg[14] [0]),
        .O(state_op));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFAEE)) 
    \RESULT_REG.NORMAL.mant_op[14]_i_2 
       (.I0(first_q[1]),
        .I1(first_q[3]),
        .I2(first_q[2]),
        .I3(P),
        .I4(\RESULT_REG.NORMAL.mant_op_reg[14] [1]),
        .I5(first_q[0]),
        .O(\RESULT_REG.NORMAL.mant_op[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000511)) 
    \RESULT_REG.NORMAL.mant_op[15]_i_2 
       (.I0(first_q[1]),
        .I1(first_q[3]),
        .I2(first_q[2]),
        .I3(P),
        .I4(\RESULT_REG.NORMAL.mant_op_reg[14] [1]),
        .I5(first_q[0]),
        .O(\opt_has_pipe.first_q_reg[1]_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(first_q[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(first_q[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(first_q[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(first_q[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_mult_xbip_pipe_v3_0_5_viv__parameterized23
   (A,
    D,
    aclk);
  output [6:0]A;
  input [6:0]D;
  input aclk;

  wire [6:0]A;
  wire [6:0]D;
  wire aclk;
  wire [6:6]exp_op;

  LUT1 #(
    .INIT(2'h1)) 
    \CHAIN_GEN[6].Q_XOR.SUM_XOR_i_1 
       (.I0(exp_op),
        .O(A[6]));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(A[0]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(A[1]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(A[2]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(A[3]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(A[4]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(A[5]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(exp_op),
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
