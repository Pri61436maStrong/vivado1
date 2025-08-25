// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 12 16:06:26 2024
// Host        : aic-ts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/norm/fp16_sub/fp16_sub_sim_netlist.v
// Design      : fp16_sub
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fp16_sub,floating_point_v7_1_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "floating_point_v7_1_7,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module fp16_sub
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
  (* C_HAS_MULTIPLY = "0" *) 
  (* C_HAS_OPERATION = "0" *) 
  (* C_HAS_OPERATION_TLAST = "0" *) 
  (* C_HAS_OPERATION_TUSER = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_RECIP = "0" *) 
  (* C_HAS_RECIP_SQRT = "0" *) 
  (* C_HAS_RESULT_TLAST = "0" *) 
  (* C_HAS_RESULT_TUSER = "0" *) 
  (* C_HAS_SQRT = "0" *) 
  (* C_HAS_SUBTRACT = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MULT_USAGE = "0" *) 
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
  fp16_sub_floating_point_v7_1_7 U0
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

(* ORIG_REF_NAME = "addsub" *) 
module fp16_sub_addsub
   (add_mant,
    Q,
    zero_largest,
    \s_axis_a_tdata[22] ,
    b_exp_flt_all_zero,
    \opt_has_pipe.first_q_reg[9] ,
    \opt_has_pipe.first_q_reg[0] ,
    \opt_has_pipe.first_q_reg[1] ,
    xor_rnd1,
    A,
    zeros_add,
    s_axis_a_tdata,
    s_axis_b_tdata,
    \opt_has_pipe.first_q_reg[8] ,
    aclk);
  output [19:0]add_mant;
  output [6:0]Q;
  output zero_largest;
  output \s_axis_a_tdata[22] ;
  output b_exp_flt_all_zero;
  output [9:0]\opt_has_pipe.first_q_reg[9] ;
  input \opt_has_pipe.first_q_reg[0] ;
  input \opt_has_pipe.first_q_reg[1] ;
  input [6:0]xor_rnd1;
  input [10:0]A;
  input zeros_add;
  input [6:0]s_axis_a_tdata;
  input [6:0]s_axis_b_tdata;
  input [15:0]\opt_has_pipe.first_q_reg[8] ;
  input aclk;

  wire [10:0]A;
  wire [6:0]Q;
  wire aclk;
  wire [19:0]add_mant;
  wire b_exp_flt_all_zero;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[1] ;
  wire [15:0]\opt_has_pipe.first_q_reg[8] ;
  wire [9:0]\opt_has_pipe.first_q_reg[9] ;
  wire [6:0]s_axis_a_tdata;
  wire \s_axis_a_tdata[22] ;
  wire [6:0]s_axis_b_tdata;
  wire [6:0]xor_rnd1;
  wire zero_largest;
  wire zeros_add;

  fp16_sub_addsub_logic \LOGIC_ADD.FRAC_ADDSUB 
       (.A(A),
        .Q(Q),
        .aclk(aclk),
        .add_mant(add_mant),
        .b_exp_flt_all_zero(b_exp_flt_all_zero),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[1] (\opt_has_pipe.first_q_reg[1] ),
        .\opt_has_pipe.first_q_reg[8] (\opt_has_pipe.first_q_reg[8] ),
        .\opt_has_pipe.first_q_reg[9] (\opt_has_pipe.first_q_reg[9] ),
        .s_axis_a_tdata(s_axis_a_tdata),
        .\s_axis_a_tdata[22] (\s_axis_a_tdata[22] ),
        .s_axis_b_tdata(s_axis_b_tdata),
        .xor_rnd1(xor_rnd1),
        .zero_largest(zero_largest),
        .zeros_add(zeros_add));
endmodule

(* ORIG_REF_NAME = "addsub_logic" *) 
module fp16_sub_addsub_logic
   (add_mant,
    Q,
    zero_largest,
    \s_axis_a_tdata[22] ,
    b_exp_flt_all_zero,
    \opt_has_pipe.first_q_reg[9] ,
    \opt_has_pipe.first_q_reg[0] ,
    \opt_has_pipe.first_q_reg[1] ,
    xor_rnd1,
    A,
    zeros_add,
    s_axis_a_tdata,
    s_axis_b_tdata,
    \opt_has_pipe.first_q_reg[8] ,
    aclk);
  output [19:0]add_mant;
  output [6:0]Q;
  output zero_largest;
  output \s_axis_a_tdata[22] ;
  output b_exp_flt_all_zero;
  output [9:0]\opt_has_pipe.first_q_reg[9] ;
  input \opt_has_pipe.first_q_reg[0] ;
  input \opt_has_pipe.first_q_reg[1] ;
  input [6:0]xor_rnd1;
  input [10:0]A;
  input zeros_add;
  input [6:0]s_axis_a_tdata;
  input [6:0]s_axis_b_tdata;
  input [15:0]\opt_has_pipe.first_q_reg[8] ;
  input aclk;

  wire [10:0]A;
  wire [6:0]Q;
  wire aclk;
  wire [19:0]add_mant;
  wire b_exp_flt_all_zero;
  wire carry_in1_rnd1;
  wire carry_in2_rnd1;
  wire carry_rnd2;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[1] ;
  wire [15:0]\opt_has_pipe.first_q_reg[8] ;
  wire [9:0]\opt_has_pipe.first_q_reg[9] ;
  wire [6:0]s_axis_a_tdata;
  wire \s_axis_a_tdata[22] ;
  wire [6:0]s_axis_b_tdata;
  wire [10:0]sum_int_rnd2;
  wire [6:0]xor_rnd1;
  wire zero_largest;
  wire zeros_add;
  wire [1:0]\NLW_STRUCT_ADD1.CARRY_MUX1_CARRY4_O_UNCONNECTED ;

  fp16_sub_delay__parameterized17 LRG_RND1_DEL
       (.aclk(aclk),
        .b_exp_flt_all_zero(b_exp_flt_all_zero),
        .\opt_has_pipe.first_q_reg[8] (\opt_has_pipe.first_q_reg[8] [15:7]),
        .\opt_has_pipe.first_q_reg[9] (\opt_has_pipe.first_q_reg[9] ),
        .s_axis_a_tdata(s_axis_a_tdata),
        .\s_axis_a_tdata[22] (\s_axis_a_tdata[22] ),
        .s_axis_b_tdata(s_axis_b_tdata),
        .zero_largest(zero_largest));
  fp16_sub_delay__parameterized14 LRG_RND2_DEL
       (.Q(Q),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[6] (\opt_has_pipe.first_q_reg[8] [6:0]));
  fp16_sub_carry_chain__parameterized0 \STRUCT_ADD1.ADD1 
       (.CARRY_IN(carry_rnd2),
        .Q(Q),
        .aclk(aclk),
        .add_mant(add_mant[8:0]),
        .carry_in2_rnd1(carry_in2_rnd1),
        .lopt(lopt_1),
        .lopt_1(lopt_2),
        .lopt_2(lopt_3),
        .lopt_3(lopt_4),
        .lopt_4(lopt_5),
        .lopt_5(lopt_6),
        .lopt_6(\opt_has_pipe.first_q_reg[9] [0]),
        .lopt_7(A[0]),
        .lopt_8(lopt_7),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[1] (\opt_has_pipe.first_q_reg[1] ),
        .xor_rnd1(xor_rnd1));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \STRUCT_ADD1.CARRY_MUX1_CARRY4 
       (.CI(1'b0),
        .CO({lopt_3,lopt_1,carry_in2_rnd1,carry_in1_rnd1}),
        .CYINIT(A[10]),
        .DI({lopt_2,lopt_2,1'b0,1'b0}),
        .O({lopt_5,lopt_4,\NLW_STRUCT_ADD1.CARRY_MUX1_CARRY4_O_UNCONNECTED [1:0]}),
        .S({\opt_has_pipe.first_q_reg[1] ,\opt_has_pipe.first_q_reg[0] ,zeros_add,1'b1}));
  fp16_sub_carry_chain__parameterized1 \STRUCT_ADD2.ADD1 
       (.A(A),
        .CARRY_IN(carry_rnd2),
        .Q(sum_int_rnd2),
        .lopt(lopt_6),
        .lopt_1(lopt_7),
        .\opt_has_pipe.first_q_reg[10] (\opt_has_pipe.first_q_reg[9] ));
  fp16_sub_delay__parameterized20 SUM_RND2_DELAY
       (.D(sum_int_rnd2),
        .aclk(aclk),
        .add_mant(add_mant[19:9]));
endmodule

(* ORIG_REF_NAME = "align_add" *) 
module fp16_sub_align_add
   (out,
    add_mant,
    S,
    \s_axis_b_tdata[19] ,
    zero_largest,
    align_dist_0_ip__0,
    subtract,
    aclk,
    zero_align_align,
    \opt_has_pipe.first_q_reg[1] ,
    first_q0,
    abs_dist_mux,
    \opt_has_pipe.first_q_reg[1]_0 ,
    s_axis_a_tdata,
    s_axis_b_tdata,
    \opt_has_pipe.first_q_reg[8] ,
    A,
    \opt_has_pipe.first_q_reg[4] ,
    \opt_has_pipe.first_q_reg[3] ,
    \opt_has_pipe.first_q_reg[2] ,
    \opt_has_pipe.first_q_reg[1]_1 ,
    \opt_has_pipe.first_q_reg[0] ,
    minusOp,
    CO,
    D,
    sml_shift_mux__16);
  output out;
  output [19:0]add_mant;
  output [2:0]S;
  output [3:0]\s_axis_b_tdata[19] ;
  output zero_largest;
  output align_dist_0_ip__0;
  input subtract;
  input aclk;
  input zero_align_align;
  input \opt_has_pipe.first_q_reg[1] ;
  input first_q0;
  input [0:0]abs_dist_mux;
  input \opt_has_pipe.first_q_reg[1]_0 ;
  input [6:0]s_axis_a_tdata;
  input [6:0]s_axis_b_tdata;
  input [15:0]\opt_has_pipe.first_q_reg[8] ;
  input [3:0]A;
  input \opt_has_pipe.first_q_reg[4] ;
  input \opt_has_pipe.first_q_reg[3] ;
  input \opt_has_pipe.first_q_reg[2] ;
  input \opt_has_pipe.first_q_reg[1]_1 ;
  input \opt_has_pipe.first_q_reg[0] ;
  input [4:0]minusOp;
  input [0:0]CO;
  input [10:0]D;
  input [6:0]sml_shift_mux__16;

  wire [3:0]A;
  wire ALIGN_SHIFT_n_10;
  wire ALIGN_SHIFT_n_11;
  wire ALIGN_SHIFT_n_12;
  wire ALIGN_SHIFT_n_13;
  wire ALIGN_SHIFT_n_14;
  wire ALIGN_SHIFT_n_15;
  wire ALIGN_SHIFT_n_16;
  wire ALIGN_SHIFT_n_17;
  wire ALIGN_SHIFT_n_18;
  wire ALIGN_SHIFT_n_19;
  wire ALIGN_SHIFT_n_26;
  wire ALIGN_SHIFT_n_27;
  wire ALIGN_SHIFT_n_9;
  wire [0:0]CO;
  wire [10:0]D;
  wire \EXP/b_exp_flt_all_zero ;
  wire FRAC_ADDSUB_n_28;
  wire [6:0]\LOGIC_ADD.FRAC_ADDSUB/lrg_rnd1 ;
  wire [9:0]\LOGIC_ADD.FRAC_ADDSUB/lrg_rnd2 ;
  wire [9:3]\LOGIC_ADD.FRAC_ADDSUB/xor_rnd1 ;
  wire [9:0]\LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 ;
  wire [2:0]S;
  wire SUB_DELAY_n_1;
  wire SUB_DELAY_n_2;
  wire ZERO_SMALLEST_DEL_n_12;
  wire [0:0]abs_dist_mux;
  wire aclk;
  wire [19:0]add_mant;
  wire align_dist_0_ip__0;
  wire first_q0;
  wire [4:0]minusOp;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[1] ;
  wire \opt_has_pipe.first_q_reg[1]_0 ;
  wire \opt_has_pipe.first_q_reg[1]_1 ;
  wire \opt_has_pipe.first_q_reg[2] ;
  wire \opt_has_pipe.first_q_reg[3] ;
  wire \opt_has_pipe.first_q_reg[4] ;
  wire [15:0]\opt_has_pipe.first_q_reg[8] ;
  wire out;
  wire [6:0]s_axis_a_tdata;
  wire [6:0]s_axis_b_tdata;
  wire [3:0]\s_axis_b_tdata[19] ;
  wire [6:0]sml_shift_mux__16;
  wire subtract;
  wire subtract_add;
  wire zero_align_align;
  wire zero_b_preadd;
  wire zero_largest;
  wire zero_sml_preadd;
  wire zeros_add;

  fp16_sub_alignment ALIGN_SHIFT
       (.A(\LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [9:4]),
        .\CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD (A),
        .CO(CO),
        .D(D),
        .Q(\LOGIC_ADD.FRAC_ADDSUB/lrg_rnd2 [9:4]),
        .S(S),
        .abs_dist_mux(abs_dist_mux),
        .aclk(aclk),
        .align_dist_0_ip__0(align_dist_0_ip__0),
        .first_q0(first_q0),
        .minusOp(minusOp),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[10] (ALIGN_SHIFT_n_15),
        .\opt_has_pipe.first_q_reg[11] (ALIGN_SHIFT_n_14),
        .\opt_has_pipe.first_q_reg[12] (ALIGN_SHIFT_n_11),
        .\opt_has_pipe.first_q_reg[13] (ALIGN_SHIFT_n_12),
        .\opt_has_pipe.first_q_reg[14] (ALIGN_SHIFT_n_9),
        .\opt_has_pipe.first_q_reg[15] (ALIGN_SHIFT_n_13),
        .\opt_has_pipe.first_q_reg[16] (ALIGN_SHIFT_n_10),
        .\opt_has_pipe.first_q_reg[17] (ALIGN_SHIFT_n_27),
        .\opt_has_pipe.first_q_reg[18] (ALIGN_SHIFT_n_26),
        .\opt_has_pipe.first_q_reg[1] (\opt_has_pipe.first_q_reg[1] ),
        .\opt_has_pipe.first_q_reg[1]_0 (\opt_has_pipe.first_q_reg[1]_0 ),
        .\opt_has_pipe.first_q_reg[1]_1 (\opt_has_pipe.first_q_reg[1]_1 ),
        .\opt_has_pipe.first_q_reg[2] (\opt_has_pipe.first_q_reg[2] ),
        .\opt_has_pipe.first_q_reg[3] (\opt_has_pipe.first_q_reg[3] ),
        .\opt_has_pipe.first_q_reg[4] (\opt_has_pipe.first_q_reg[4] ),
        .\opt_has_pipe.first_q_reg[6] (ALIGN_SHIFT_n_19),
        .\opt_has_pipe.first_q_reg[7] (ALIGN_SHIFT_n_18),
        .\opt_has_pipe.first_q_reg[8] (ALIGN_SHIFT_n_17),
        .\opt_has_pipe.first_q_reg[8]_0 (ZERO_SMALLEST_DEL_n_12),
        .\opt_has_pipe.first_q_reg[8]_1 (subtract_add),
        .\opt_has_pipe.first_q_reg[9] (ALIGN_SHIFT_n_16),
        .out(zero_b_preadd),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_b_tdata(s_axis_b_tdata),
        .\s_axis_b_tdata[19] (\s_axis_b_tdata[19] ),
        .sml_shift_mux__16(sml_shift_mux__16),
        .zero_sml_preadd(zero_sml_preadd),
        .zeros_add(zeros_add));
  fp16_sub_addsub FRAC_ADDSUB
       (.A({subtract_add,\LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 }),
        .Q(\LOGIC_ADD.FRAC_ADDSUB/lrg_rnd1 ),
        .aclk(aclk),
        .add_mant(add_mant),
        .b_exp_flt_all_zero(\EXP/b_exp_flt_all_zero ),
        .\opt_has_pipe.first_q_reg[0] (SUB_DELAY_n_2),
        .\opt_has_pipe.first_q_reg[1] (SUB_DELAY_n_1),
        .\opt_has_pipe.first_q_reg[8] (\opt_has_pipe.first_q_reg[8] ),
        .\opt_has_pipe.first_q_reg[9] (\LOGIC_ADD.FRAC_ADDSUB/lrg_rnd2 ),
        .s_axis_a_tdata(s_axis_a_tdata),
        .\s_axis_a_tdata[22] (FRAC_ADDSUB_n_28),
        .s_axis_b_tdata(s_axis_b_tdata),
        .xor_rnd1(\LOGIC_ADD.FRAC_ADDSUB/xor_rnd1 ),
        .zero_largest(zero_largest),
        .zeros_add(zeros_add));
  fp16_sub_delay__parameterized1_11 SUB_DELAY
       (.A(subtract_add),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[0] (SUB_DELAY_n_1),
        .\opt_has_pipe.first_q_reg[0]_0 (SUB_DELAY_n_2),
        .\opt_has_pipe.first_q_reg[0]_1 (ALIGN_SHIFT_n_19),
        .\opt_has_pipe.first_q_reg[1] (ALIGN_SHIFT_n_18),
        .out(zero_b_preadd),
        .subtract(subtract),
        .zero_sml_preadd(zero_sml_preadd));
  fp16_sub_delay__parameterized5 ZERO_ALIGN_DELAY
       (.aclk(aclk),
        .out(zero_b_preadd),
        .zero_align_align(zero_align_align));
  fp16_sub_delay__parameterized5_12 ZERO_DEL
       (.aclk(aclk),
        .out(out),
        .zeros_add(zeros_add));
  fp16_sub_delay__parameterized1_13 ZERO_SMALLEST_DEL
       (.A(subtract_add),
        .Q(\LOGIC_ADD.FRAC_ADDSUB/lrg_rnd1 ),
        .aclk(aclk),
        .b_exp_flt_all_zero(\EXP/b_exp_flt_all_zero ),
        .\opt_has_pipe.first_q_reg[0] (\LOGIC_ADD.FRAC_ADDSUB/xor_rnd2 [3:0]),
        .\opt_has_pipe.first_q_reg[0]_0 (ZERO_SMALLEST_DEL_n_12),
        .\opt_has_pipe.first_q_reg[0]_1 (FRAC_ADDSUB_n_28),
        .\opt_has_pipe.first_q_reg[0]_2 (ALIGN_SHIFT_n_13),
        .\opt_has_pipe.first_q_reg[1] (ALIGN_SHIFT_n_10),
        .\opt_has_pipe.first_q_reg[2] (ALIGN_SHIFT_n_17),
        .\opt_has_pipe.first_q_reg[2]_0 (ALIGN_SHIFT_n_27),
        .\opt_has_pipe.first_q_reg[3] (\LOGIC_ADD.FRAC_ADDSUB/lrg_rnd2 [3:0]),
        .\opt_has_pipe.first_q_reg[3]_0 (ALIGN_SHIFT_n_16),
        .\opt_has_pipe.first_q_reg[3]_1 (ALIGN_SHIFT_n_26),
        .\opt_has_pipe.first_q_reg[4] (ALIGN_SHIFT_n_15),
        .\opt_has_pipe.first_q_reg[5] (ALIGN_SHIFT_n_14),
        .\opt_has_pipe.first_q_reg[6] (ALIGN_SHIFT_n_11),
        .\opt_has_pipe.first_q_reg[7] (ALIGN_SHIFT_n_12),
        .\opt_has_pipe.first_q_reg[8] (ALIGN_SHIFT_n_9),
        .out(zero_b_preadd),
        .s_axis_a_tdata(s_axis_a_tdata[2:0]),
        .xor_rnd1(\LOGIC_ADD.FRAC_ADDSUB/xor_rnd1 ),
        .zero_sml_preadd(zero_sml_preadd));
endmodule

(* ORIG_REF_NAME = "alignment" *) 
module fp16_sub_alignment
   (zeros_add,
    S,
    \s_axis_b_tdata[19] ,
    align_dist_0_ip__0,
    \opt_has_pipe.first_q_reg[14] ,
    \opt_has_pipe.first_q_reg[16] ,
    \opt_has_pipe.first_q_reg[12] ,
    \opt_has_pipe.first_q_reg[13] ,
    \opt_has_pipe.first_q_reg[15] ,
    \opt_has_pipe.first_q_reg[11] ,
    \opt_has_pipe.first_q_reg[10] ,
    \opt_has_pipe.first_q_reg[9] ,
    \opt_has_pipe.first_q_reg[8] ,
    \opt_has_pipe.first_q_reg[7] ,
    \opt_has_pipe.first_q_reg[6] ,
    A,
    \opt_has_pipe.first_q_reg[18] ,
    \opt_has_pipe.first_q_reg[17] ,
    \opt_has_pipe.first_q_reg[1] ,
    aclk,
    first_q0,
    abs_dist_mux,
    \opt_has_pipe.first_q_reg[1]_0 ,
    s_axis_a_tdata,
    s_axis_b_tdata,
    out,
    zero_sml_preadd,
    \opt_has_pipe.first_q_reg[8]_0 ,
    \opt_has_pipe.first_q_reg[8]_1 ,
    Q,
    \CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD ,
    \opt_has_pipe.first_q_reg[4] ,
    \opt_has_pipe.first_q_reg[3] ,
    \opt_has_pipe.first_q_reg[2] ,
    \opt_has_pipe.first_q_reg[1]_1 ,
    \opt_has_pipe.first_q_reg[0] ,
    minusOp,
    CO,
    D,
    sml_shift_mux__16);
  output zeros_add;
  output [2:0]S;
  output [3:0]\s_axis_b_tdata[19] ;
  output align_dist_0_ip__0;
  output \opt_has_pipe.first_q_reg[14] ;
  output \opt_has_pipe.first_q_reg[16] ;
  output \opt_has_pipe.first_q_reg[12] ;
  output \opt_has_pipe.first_q_reg[13] ;
  output \opt_has_pipe.first_q_reg[15] ;
  output \opt_has_pipe.first_q_reg[11] ;
  output \opt_has_pipe.first_q_reg[10] ;
  output \opt_has_pipe.first_q_reg[9] ;
  output \opt_has_pipe.first_q_reg[8] ;
  output \opt_has_pipe.first_q_reg[7] ;
  output \opt_has_pipe.first_q_reg[6] ;
  output [5:0]A;
  output \opt_has_pipe.first_q_reg[18] ;
  output \opt_has_pipe.first_q_reg[17] ;
  input \opt_has_pipe.first_q_reg[1] ;
  input aclk;
  input first_q0;
  input [0:0]abs_dist_mux;
  input \opt_has_pipe.first_q_reg[1]_0 ;
  input [6:0]s_axis_a_tdata;
  input [6:0]s_axis_b_tdata;
  input out;
  input zero_sml_preadd;
  input \opt_has_pipe.first_q_reg[8]_0 ;
  input [0:0]\opt_has_pipe.first_q_reg[8]_1 ;
  input [5:0]Q;
  input [3:0]\CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD ;
  input \opt_has_pipe.first_q_reg[4] ;
  input \opt_has_pipe.first_q_reg[3] ;
  input \opt_has_pipe.first_q_reg[2] ;
  input \opt_has_pipe.first_q_reg[1]_1 ;
  input \opt_has_pipe.first_q_reg[0] ;
  input [4:0]minusOp;
  input [0:0]CO;
  input [10:0]D;
  input [6:0]sml_shift_mux__16;

  wire [5:0]A;
  wire ALIGN_SHIFT_n_0;
  wire [3:0]\CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD ;
  wire [0:0]CO;
  wire [10:0]D;
  wire [5:0]Q;
  wire [2:0]S;
  wire [0:0]abs_dist_mux;
  wire aclk;
  wire align_dist_0_ip__0;
  wire first_q0;
  wire [4:0]minusOp;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[10] ;
  wire \opt_has_pipe.first_q_reg[11] ;
  wire \opt_has_pipe.first_q_reg[12] ;
  wire \opt_has_pipe.first_q_reg[13] ;
  wire \opt_has_pipe.first_q_reg[14] ;
  wire \opt_has_pipe.first_q_reg[15] ;
  wire \opt_has_pipe.first_q_reg[16] ;
  wire \opt_has_pipe.first_q_reg[17] ;
  wire \opt_has_pipe.first_q_reg[18] ;
  wire \opt_has_pipe.first_q_reg[1] ;
  wire \opt_has_pipe.first_q_reg[1]_0 ;
  wire \opt_has_pipe.first_q_reg[1]_1 ;
  wire \opt_has_pipe.first_q_reg[2] ;
  wire \opt_has_pipe.first_q_reg[3] ;
  wire \opt_has_pipe.first_q_reg[4] ;
  wire \opt_has_pipe.first_q_reg[6] ;
  wire \opt_has_pipe.first_q_reg[7] ;
  wire \opt_has_pipe.first_q_reg[8] ;
  wire \opt_has_pipe.first_q_reg[8]_0 ;
  wire [0:0]\opt_has_pipe.first_q_reg[8]_1 ;
  wire \opt_has_pipe.first_q_reg[9] ;
  wire out;
  wire [6:0]s_axis_a_tdata;
  wire [6:0]s_axis_b_tdata;
  wire [3:0]\s_axis_b_tdata[19] ;
  wire [6:0]sml_shift_mux__16;
  wire zero_sml_preadd;
  wire zeros_add;

  fp16_sub_shift_msb_first ALIGN_SHIFT
       (.A(A),
        .CO(CO),
        .D(D),
        .Q(Q),
        .S(S),
        .abs_dist_mux(abs_dist_mux),
        .aclk(aclk),
        .align_dist_0_ip__0(align_dist_0_ip__0),
        .minusOp(minusOp),
        .\opt_has_pipe.first_q_reg[10] (\opt_has_pipe.first_q_reg[10] ),
        .\opt_has_pipe.first_q_reg[11] (\opt_has_pipe.first_q_reg[11] ),
        .\opt_has_pipe.first_q_reg[12] (\opt_has_pipe.first_q_reg[12] ),
        .\opt_has_pipe.first_q_reg[13] (\opt_has_pipe.first_q_reg[13] ),
        .\opt_has_pipe.first_q_reg[14] (\opt_has_pipe.first_q_reg[14] ),
        .\opt_has_pipe.first_q_reg[15] (\opt_has_pipe.first_q_reg[15] ),
        .\opt_has_pipe.first_q_reg[16] (\opt_has_pipe.first_q_reg[16] ),
        .\opt_has_pipe.first_q_reg[17] (\opt_has_pipe.first_q_reg[17] ),
        .\opt_has_pipe.first_q_reg[18] (\opt_has_pipe.first_q_reg[18] ),
        .\opt_has_pipe.first_q_reg[1] (ALIGN_SHIFT_n_0),
        .\opt_has_pipe.first_q_reg[1]_0 (\opt_has_pipe.first_q_reg[1]_0 ),
        .\opt_has_pipe.first_q_reg[6] (\opt_has_pipe.first_q_reg[6] ),
        .\opt_has_pipe.first_q_reg[7] (\opt_has_pipe.first_q_reg[7] ),
        .\opt_has_pipe.first_q_reg[8] (\opt_has_pipe.first_q_reg[8] ),
        .\opt_has_pipe.first_q_reg[8]_0 (\opt_has_pipe.first_q_reg[8]_0 ),
        .\opt_has_pipe.first_q_reg[8]_1 (\opt_has_pipe.first_q_reg[8]_1 ),
        .\opt_has_pipe.first_q_reg[9] (\opt_has_pipe.first_q_reg[9] ),
        .out(out),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_b_tdata(s_axis_b_tdata),
        .\s_axis_b_tdata[19] (\s_axis_b_tdata[19] ),
        .sml_shift_mux__16(sml_shift_mux__16),
        .zero_sml_preadd(zero_sml_preadd));
  fp16_sub_zero_det_sel ALIGN_Z_D
       (.\CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD (\CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .CO(CO),
        .\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1 (ALIGN_SHIFT_n_0),
        .aclk(aclk),
        .first_q0(first_q0),
        .minusOp(minusOp[1:0]),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[1] (\opt_has_pipe.first_q_reg[1] ),
        .\opt_has_pipe.first_q_reg[1]_0 (\opt_has_pipe.first_q_reg[1]_1 ),
        .\opt_has_pipe.first_q_reg[2] (\opt_has_pipe.first_q_reg[2] ),
        .\opt_has_pipe.first_q_reg[3] (\opt_has_pipe.first_q_reg[3] ),
        .\opt_has_pipe.first_q_reg[4] (\opt_has_pipe.first_q_reg[4] ),
        .zeros_add(zeros_add));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fp16_sub_carry_chain
   (\zero_det_unreg[1]_3 ,
    p_8_out,
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1_0 ,
    ext_del_distance,
    \CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD_0 ,
    aclk);
  output [1:0]\zero_det_unreg[1]_3 ;
  input [5:0]p_8_out;
  input \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1_0 ;
  input [0:0]ext_del_distance;
  input [3:0]\CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD_0 ;
  input aclk;

  wire [3:0]\CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD_0 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1_0 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_3_n_0 ;
  wire aclk;
  wire carry_1;
  wire carry_2;
  wire carry_3;
  wire carry_4;
  wire carry_5;
  wire [0:0]ext_del_distance;
  wire [5:0]p_8_out;
  wire [5:1]zero_det_in;
  wire [1:0]\zero_det_unreg[1]_3 ;
  wire [3:0]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "FDE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(1'b1),
        .D(carry_1),
        .Q(zero_det_in[1]),
        .R(1'b0));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(1'b0),
        .CO({carry_4,carry_3,carry_2,carry_1}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S(\CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD_0 ));
  (* XILINX_LEGACY_PRIM = "FDE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(1'b1),
        .D(carry_2),
        .Q(zero_det_in[2]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FDE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \CHAIN_GEN[2].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(1'b1),
        .D(carry_3),
        .Q(zero_det_in[3]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FDE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(1'b1),
        .D(carry_4),
        .Q(zero_det_in[4]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "FDE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \CHAIN_GEN[4].CARRYS_DEL.NEED_DEL.CARRYS_FD 
       (.C(aclk),
        .CE(1'b1),
        .D(carry_5),
        .Q(zero_det_in[5]),
        .R(1'b0));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(carry_4),
        .CO({\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3:1],carry_5}),
        .CYINIT(1'b0),
        .DI({\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED [3:1],1'b0}));
  LUT6 #(
    .INIT(64'hBBABABABBAAAAAAA)) 
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1 
       (.I0(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_3_n_0 ),
        .I1(ext_del_distance),
        .I2(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1_0 ),
        .I3(p_8_out[1]),
        .I4(zero_det_in[1]),
        .I5(p_8_out[0]),
        .O(\zero_det_unreg[1]_3 [0]));
  LUT6 #(
    .INIT(64'hFFFFF80800000808)) 
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2 
       (.I0(zero_det_in[4]),
        .I1(p_8_out[4]),
        .I2(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1_0 ),
        .I3(zero_det_in[5]),
        .I4(ext_del_distance),
        .I5(p_8_out[5]),
        .O(\zero_det_unreg[1]_3 [1]));
  LUT6 #(
    .INIT(64'h8F80808000000000)) 
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_3 
       (.I0(zero_det_in[3]),
        .I1(p_8_out[3]),
        .I2(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1_0 ),
        .I3(p_8_out[2]),
        .I4(zero_det_in[2]),
        .I5(ext_del_distance),
        .O(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fp16_sub_carry_chain__parameterized0
   (CARRY_IN,
    add_mant,
    \opt_has_pipe.first_q_reg[0] ,
    carry_in2_rnd1,
    \opt_has_pipe.first_q_reg[1] ,
    xor_rnd1,
    Q,
    aclk,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7,
    lopt_8);
  output CARRY_IN;
  output [8:0]add_mant;
  input \opt_has_pipe.first_q_reg[0] ;
  input carry_in2_rnd1;
  input \opt_has_pipe.first_q_reg[1] ;
  input [6:0]xor_rnd1;
  input [6:0]Q;
  input aclk;
  input lopt;
  output lopt_1;
  input lopt_2;
  input lopt_3;
  input lopt_4;
  output lopt_5;
  input lopt_6;
  input lopt_7;
  output lopt_8;

  wire \<const0> ;
  wire CARRY_IN;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[7].Q_XOR.SUM_XOR__0 ;
  wire [6:0]Q;
  wire aclk;
  wire [8:0]add_mant;
  wire carry_in2_rnd1;
  wire \^lopt_2 ;
  wire \^lopt_3 ;
  wire \^lopt_4 ;
  wire \^lopt_5 ;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[1] ;
  wire p_0_out;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire p_6_out;
  wire p_7_out;
  wire p_8_out;
  wire [6:0]xor_rnd1;

  assign \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0  = lopt;
  assign \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0  = lopt_2;
  assign \^lopt_3  = lopt_6;
  assign \^lopt_4  = lopt_7;
  assign lopt_1 = \<const0> ;
  assign lopt_5 = \^lopt_2 ;
  assign lopt_8 = \^lopt_5 ;
  assign p_7_out = lopt_4;
  assign p_8_out = lopt_3;
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[2].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({p_3_out,p_4_out,p_5_out,p_6_out}),
        .S(xor_rnd1[3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[6].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 ),
        .CO({\^lopt_2 ,CARRY_IN,\CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({\^lopt_3 ,Q[6:4]}),
        .O({\^lopt_5 ,p_0_out,\CHAIN_GEN[7].Q_XOR.SUM_XOR__0 ,p_2_out}),
        .S({\^lopt_4 ,xor_rnd1[6:4]}));
  GND GND
       (.G(\<const0> ));
  fp16_sub_delay__parameterized16 Q_DEL
       (.D({p_0_out,\CHAIN_GEN[7].Q_XOR.SUM_XOR__0 ,p_2_out,p_3_out,p_4_out,p_5_out,p_6_out,p_7_out,p_8_out}),
        .aclk(aclk),
        .add_mant(add_mant));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fp16_sub_carry_chain__parameterized1
   (Q,
    A,
    \opt_has_pipe.first_q_reg[10] ,
    CARRY_IN,
    lopt,
    lopt_1);
  output [10:0]Q;
  input [10:0]A;
  input [9:0]\opt_has_pipe.first_q_reg[10] ;
  input CARRY_IN;
  input lopt;
  input lopt_1;

  wire [10:0]A;
  wire CARRY_IN;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[8].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[9].C_MUX.CARRY_MUX_n_0 ;
  wire [10:0]Q;
  wire [9:0]\opt_has_pipe.first_q_reg[10] ;
  wire [3:1]\NLW_CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;
  wire [3:2]\NLW_CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED ;

  assign \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0  = lopt;
  assign Q[0] = lopt_1;
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI(\opt_has_pipe.first_q_reg[10] [4:1]),
        .O(Q[4:1]),
        .S(A[4:1]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[8].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI(\opt_has_pipe.first_q_reg[10] [8:5]),
        .O(Q[8:5]),
        .S(A[8:5]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[8].C_MUX.CARRY_MUX_n_0 ),
        .CO({\NLW_CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3:1],\CHAIN_GEN[9].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3:1],\opt_has_pipe.first_q_reg[10] [9]}),
        .O({\NLW_CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:2],Q[10:9]}),
        .S({\NLW_CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED [3:2],A[10:9]}));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fp16_sub_carry_chain__parameterized10
   (Q,
    s_axis_b_tdata,
    CO,
    s_axis_a_tdata);
  output [7:0]Q;
  input [6:0]s_axis_b_tdata;
  input [0:0]CO;
  input [6:0]s_axis_a_tdata;

  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 ;
  wire [0:0]CO;
  wire [7:0]Q;
  wire [0:0]a_xor_b;
  wire [6:1]ext_mux;
  wire [6:0]s_axis_a_tdata;
  wire [6:0]s_axis_b_tdata;
  wire [3:3]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(1'b0),
        .CO({\CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(Q[3:0]),
        .S({ext_mux[3:1],a_xor_b}));
  LUT3 #(
    .INIT(8'h47)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__1 
       (.I0(s_axis_b_tdata[0]),
        .I1(CO),
        .I2(s_axis_a_tdata[0]),
        .O(a_xor_b));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__1 
       (.I0(s_axis_b_tdata[1]),
        .I1(CO),
        .I2(s_axis_a_tdata[1]),
        .O(ext_mux[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__1 
       (.I0(s_axis_b_tdata[2]),
        .I1(CO),
        .I2(s_axis_a_tdata[2]),
        .O(ext_mux[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__1 
       (.I0(s_axis_b_tdata[3]),
        .I1(CO),
        .I2(s_axis_a_tdata[3]),
        .O(ext_mux[3]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ),
        .CO({\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3],\CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O(Q[7:4]),
        .S({1'b0,ext_mux[6:4]}));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__0 
       (.I0(s_axis_b_tdata[4]),
        .I1(CO),
        .I2(s_axis_a_tdata[4]),
        .O(ext_mux[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__0 
       (.I0(s_axis_b_tdata[5]),
        .I1(CO),
        .I2(s_axis_a_tdata[5]),
        .O(ext_mux[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__0 
       (.I0(s_axis_b_tdata[6]),
        .I1(CO),
        .I2(s_axis_a_tdata[6]),
        .O(ext_mux[6]));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fp16_sub_carry_chain__parameterized2
   (\CHAIN_GEN[3].C_MUX.CARRY_MUX_0 ,
    CARRYS_OUT,
    A);
  output \CHAIN_GEN[3].C_MUX.CARRY_MUX_0 ;
  output [7:0]CARRYS_OUT;
  input [7:0]A;

  wire [7:0]A;
  wire [7:0]CARRYS_OUT;
  wire \CHAIN_GEN[3].C_MUX.CARRY_MUX_0 ;
  wire [3:0]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(1'b0),
        .CO(CARRYS_OUT[3:0]),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S(A[3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(CARRYS_OUT[3]),
        .CO(CARRYS_OUT[7:4]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S(A[7:4]));
  LUT2 #(
    .INIT(4'hE)) 
    \opt_has_pipe.first_q[19]_i_1 
       (.I0(CARRYS_OUT[7]),
        .I1(CARRYS_OUT[3]),
        .O(\CHAIN_GEN[3].C_MUX.CARRY_MUX_0 ));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fp16_sub_carry_chain__parameterized3
   (\CHAIN_GEN[7].C_MUX.CARRY_MUX ,
    \opt_has_pipe.first_q_reg[1] ,
    CARRYS_OUT,
    A);
  output \CHAIN_GEN[7].C_MUX.CARRY_MUX ;
  output [1:0]\opt_has_pipe.first_q_reg[1] ;
  input [0:0]CARRYS_OUT;
  input [1:0]A;

  wire [1:0]A;
  wire [0:0]CARRYS_OUT;
  wire \CHAIN_GEN[7].C_MUX.CARRY_MUX ;
  wire [1:0]\opt_has_pipe.first_q_reg[1] ;
  wire [3:2]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3:2],\opt_has_pipe.first_q_reg[1] }),
        .CYINIT(1'b1),
        .DI({\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O(\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED [3:2],A}));
  LUT2 #(
    .INIT(4'h8)) 
    \opt_has_pipe.first_q[0]_i_1__8 
       (.I0(\opt_has_pipe.first_q_reg[1] [1]),
        .I1(CARRYS_OUT),
        .O(\CHAIN_GEN[7].C_MUX.CARRY_MUX ));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fp16_sub_carry_chain__parameterized4
   (CARRY_OUT,
    A,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  output CARRY_OUT;
  input [1:0]A;
  output lopt;
  input lopt_1;
  input lopt_2;
  output lopt_3;

  wire [1:0]A;
  wire CARRY_OUT;
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
        .CO({\^lopt_1 ,CARRY_OUT,\CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b1),
        .DI({\^lopt_2 ,1'b1,1'b0,1'b0}),
        .O({lopt_4,\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [2:0]}),
        .S({\^lopt_3 ,A[1],1'b0,A[0]}));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fp16_sub_carry_chain__parameterized5
   (round_mant,
    CARRY_OUT,
    \RESULT_REG.NORMAL.mant_op_reg[7] ,
    CARRYS_OUT,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6);
  output [7:0]round_mant;
  output CARRY_OUT;
  input [7:0]\RESULT_REG.NORMAL.mant_op_reg[7] ;
  input [0:0]CARRYS_OUT;
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
  wire [7:0]round_mant;

  assign \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0  = lopt;
  assign \^lopt_3  = lopt_4;
  assign \^lopt_4  = lopt_5;
  assign lopt_1 = \<const0> ;
  assign lopt_3 = \^lopt_2 ;
  assign lopt_6 = \^lopt_5 ;
  assign round_mant[0] = lopt_2;
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(round_mant[4:1]),
        .S(\RESULT_REG.NORMAL.mant_op_reg[7] [4:1]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ),
        .CO({\^lopt_2 ,CARRY_OUT,\CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({\^lopt_3 ,1'b0,1'b0,1'b0}),
        .O({\^lopt_5 ,round_mant[7:5]}),
        .S({\^lopt_4 ,\RESULT_REG.NORMAL.mant_op_reg[7] [7:5]}));
  GND GND
       (.G(\<const0> ));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fp16_sub_carry_chain__parameterized6
   (Q,
    \RESULT_REG.NORMAL.mant_op_reg[15] ,
    CARRY_IN,
    lopt,
    lopt_1,
    lopt_2);
  output [8:0]Q;
  input [7:0]\RESULT_REG.NORMAL.mant_op_reg[15] ;
  input CARRY_IN;
  input lopt;
  output lopt_1;
  input lopt_2;

  wire \<const0> ;
  wire CARRY_IN;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0 ;
  wire [8:0]Q;
  wire [7:0]\RESULT_REG.NORMAL.mant_op_reg[15] ;
  wire [3:3]\NLW_CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;

  assign \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0  = lopt;
  assign Q[0] = lopt_2;
  assign lopt_1 = \<const0> ;
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(Q[4:1]),
        .S(\RESULT_REG.NORMAL.mant_op_reg[15] [4:1]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ),
        .CO({\NLW_CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3],\CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O(Q[8:5]),
        .S({1'b1,\RESULT_REG.NORMAL.mant_op_reg[15] [7:5]}));
  GND GND
       (.G(\<const0> ));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fp16_sub_carry_chain__parameterized8
   (D,
    det_invalid_op,
    det_sign,
    b_exp_flt_all_one,
    a_is_inf__0,
    zero_largest,
    CARRY_OUT,
    a_exp_flt_all_one,
    subtract,
    s_axis_b_tdata,
    s_axis_a_tdata,
    \opt_has_pipe.first_q_reg[0] );
  output [1:0]D;
  output det_invalid_op;
  output det_sign;
  input b_exp_flt_all_one;
  input a_is_inf__0;
  input zero_largest;
  input CARRY_OUT;
  input a_exp_flt_all_one;
  input subtract;
  input [16:0]s_axis_b_tdata;
  input [0:0]s_axis_a_tdata;
  input \opt_has_pipe.first_q_reg[0] ;

  wire CARRY_OUT;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ;
  wire [1:0]D;
  wire a_and_b_inf_mux__0;
  wire a_exp_flt_all_one;
  wire a_is_inf__0;
  wire a_or_b_nan_mux__2;
  wire b_exp_flt_all_one;
  wire b_mant_is_zero;
  wire [2:0]chunk_det;
  wire det_invalid_op;
  wire det_sign;
  wire \opt_has_pipe.first_q[0]_i_2__0_n_0 ;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire [0:0]s_axis_a_tdata;
  wire [16:0]s_axis_b_tdata;
  wire subtract;
  wire zero_largest;
  wire [3:3]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3],b_mant_is_zero,\CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b1),
        .DI({\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O(\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED [3],chunk_det}));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__3 
       (.I0(s_axis_b_tdata[2]),
        .I1(s_axis_b_tdata[3]),
        .I2(s_axis_b_tdata[0]),
        .I3(s_axis_b_tdata[1]),
        .I4(s_axis_b_tdata[5]),
        .I5(s_axis_b_tdata[4]),
        .O(chunk_det[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__3 
       (.I0(s_axis_b_tdata[8]),
        .I1(s_axis_b_tdata[9]),
        .I2(s_axis_b_tdata[6]),
        .I3(s_axis_b_tdata[7]),
        .I4(s_axis_b_tdata[11]),
        .I5(s_axis_b_tdata[10]),
        .O(chunk_det[1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__3 
       (.I0(s_axis_b_tdata[13]),
        .I1(s_axis_b_tdata[12]),
        .I2(s_axis_b_tdata[15]),
        .I3(s_axis_b_tdata[14]),
        .O(chunk_det[2]));
  LUT5 #(
    .INIT(32'h00000082)) 
    \opt_has_pipe.first_q[0]_i_1 
       (.I0(a_and_b_inf_mux__0),
        .I1(s_axis_b_tdata[16]),
        .I2(s_axis_a_tdata),
        .I3(zero_largest),
        .I4(a_or_b_nan_mux__2),
        .O(det_invalid_op));
  LUT6 #(
    .INIT(64'h00100010FF320010)) 
    \opt_has_pipe.first_q[0]_i_1__0 
       (.I0(a_and_b_inf_mux__0),
        .I1(a_or_b_nan_mux__2),
        .I2(\opt_has_pipe.first_q[0]_i_2__0_n_0 ),
        .I3(zero_largest),
        .I4(s_axis_a_tdata),
        .I5(s_axis_b_tdata[16]),
        .O(det_sign));
  LUT6 #(
    .INIT(64'h00000000FFFFFFF8)) 
    \opt_has_pipe.first_q[0]_i_1__12 
       (.I0(b_mant_is_zero),
        .I1(b_exp_flt_all_one),
        .I2(a_is_inf__0),
        .I3(a_and_b_inf_mux__0),
        .I4(a_or_b_nan_mux__2),
        .I5(zero_largest),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAA00AA2AAAFFAAEA)) 
    \opt_has_pipe.first_q[0]_i_2__0 
       (.I0(s_axis_a_tdata),
        .I1(b_mant_is_zero),
        .I2(b_exp_flt_all_one),
        .I3(a_is_inf__0),
        .I4(\opt_has_pipe.first_q_reg[0] ),
        .I5(s_axis_b_tdata[16]),
        .O(\opt_has_pipe.first_q[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \opt_has_pipe.first_q[0]_i_3__0 
       (.I0(b_mant_is_zero),
        .I1(a_is_inf__0),
        .I2(b_exp_flt_all_one),
        .O(a_and_b_inf_mux__0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \opt_has_pipe.first_q[0]_i_4__0 
       (.I0(b_mant_is_zero),
        .I1(b_exp_flt_all_one),
        .I2(CARRY_OUT),
        .I3(a_exp_flt_all_one),
        .O(a_or_b_nan_mux__2));
  LUT6 #(
    .INIT(64'hAFAAEAEAEFAAEAEA)) 
    \opt_has_pipe.first_q[1]_i_1 
       (.I0(zero_largest),
        .I1(b_mant_is_zero),
        .I2(b_exp_flt_all_one),
        .I3(CARRY_OUT),
        .I4(a_exp_flt_all_one),
        .I5(subtract),
        .O(D[1]));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fp16_sub_carry_chain__parameterized8_10
   (a_is_inf__0,
    CARRY_OUT,
    s_axis_a_tdata,
    \opt_has_pipe.first_q_reg[0] );
  output a_is_inf__0;
  output CARRY_OUT;
  input [18:0]s_axis_a_tdata;
  input \opt_has_pipe.first_q_reg[0] ;

  wire CARRY_OUT;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ;
  wire a_is_inf__0;
  wire [2:0]chunk_det;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire [18:0]s_axis_a_tdata;
  wire [3:3]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:3]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3],CARRY_OUT,\CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b1),
        .DI({\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O(\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED [3],chunk_det}));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__2 
       (.I0(s_axis_a_tdata[2]),
        .I1(s_axis_a_tdata[3]),
        .I2(s_axis_a_tdata[0]),
        .I3(s_axis_a_tdata[1]),
        .I4(s_axis_a_tdata[5]),
        .I5(s_axis_a_tdata[4]),
        .O(chunk_det[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__2 
       (.I0(s_axis_a_tdata[8]),
        .I1(s_axis_a_tdata[9]),
        .I2(s_axis_a_tdata[6]),
        .I3(s_axis_a_tdata[7]),
        .I4(s_axis_a_tdata[11]),
        .I5(s_axis_a_tdata[10]),
        .O(chunk_det[1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__2 
       (.I0(s_axis_a_tdata[13]),
        .I1(s_axis_a_tdata[12]),
        .I2(s_axis_a_tdata[15]),
        .I3(s_axis_a_tdata[14]),
        .O(chunk_det[2]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \opt_has_pipe.first_q[0]_i_2__1 
       (.I0(s_axis_a_tdata[18]),
        .I1(s_axis_a_tdata[17]),
        .I2(s_axis_a_tdata[16]),
        .I3(\opt_has_pipe.first_q_reg[0] ),
        .I4(CARRY_OUT),
        .O(a_is_inf__0));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fp16_sub_carry_chain__parameterized9
   (\s_axis_b_tdata[15] ,
    CARRYS_OUT,
    \s_axis_b_tdata[16] ,
    s_axis_a_tdata_0_sp_1,
    \s_axis_a_tdata[16] ,
    A,
    s_axis_a_tdata_4_sp_1,
    s_axis_a_tdata_8_sp_1,
    s_axis_a_tdata_12_sp_1,
    s_axis_b_tdata_14_sp_1,
    zero_largest,
    s_axis_b_tdata,
    s_axis_a_tdata,
    \opt_has_pipe.first_q_reg[0] ,
    \opt_has_pipe.first_q_reg[0]_0 ,
    \opt_has_pipe.first_q_reg[10] ,
    \opt_has_pipe.first_q_reg[10]_0 ,
    align_dist_0_ip__0);
  output [15:0]\s_axis_b_tdata[15] ;
  output [0:0]CARRYS_OUT;
  output [10:0]\s_axis_b_tdata[16] ;
  output s_axis_a_tdata_0_sp_1;
  output [6:0]\s_axis_a_tdata[16] ;
  output [3:0]A;
  output s_axis_a_tdata_4_sp_1;
  output s_axis_a_tdata_8_sp_1;
  output s_axis_a_tdata_12_sp_1;
  output s_axis_b_tdata_14_sp_1;
  input zero_largest;
  input [22:0]s_axis_b_tdata;
  input [22:0]s_axis_a_tdata;
  input \opt_has_pipe.first_q_reg[0] ;
  input \opt_has_pipe.first_q_reg[0]_0 ;
  input \opt_has_pipe.first_q_reg[10] ;
  input \opt_has_pipe.first_q_reg[10]_0 ;
  input align_dist_0_ip__0;

  wire [3:0]A;
  wire \ADD_MANT_GEN[0].di_reg ;
  wire \ADD_MANT_GEN[0].lut_op_reg ;
  wire \ADD_MANT_GEN[10].di_reg ;
  wire \ADD_MANT_GEN[10].lut_op_reg ;
  wire \ADD_MANT_GEN[11].di_reg ;
  wire \ADD_MANT_GEN[11].lut_op_reg ;
  wire \ADD_MANT_GEN[1].di_reg ;
  wire \ADD_MANT_GEN[1].lut_op_reg ;
  wire \ADD_MANT_GEN[2].di_reg ;
  wire \ADD_MANT_GEN[2].lut_op_reg ;
  wire \ADD_MANT_GEN[3].di_reg ;
  wire \ADD_MANT_GEN[3].lut_op_reg ;
  wire \ADD_MANT_GEN[4].di_reg ;
  wire \ADD_MANT_GEN[4].lut_op_reg ;
  wire \ADD_MANT_GEN[5].di_reg ;
  wire \ADD_MANT_GEN[5].lut_op_reg ;
  wire \ADD_MANT_GEN[6].di_reg ;
  wire \ADD_MANT_GEN[6].lut_op_reg ;
  wire \ADD_MANT_GEN[7].di_reg ;
  wire \ADD_MANT_GEN[7].lut_op_reg ;
  wire \ADD_MANT_GEN[8].di_reg ;
  wire \ADD_MANT_GEN[8].lut_op_reg ;
  wire \ADD_MANT_GEN[9].di_reg ;
  wire \ADD_MANT_GEN[9].lut_op_reg ;
  wire \ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/p_26_in ;
  wire [9:1]\ALIGN_BLK/sml_shift_mux__16 ;
  wire [0:0]CARRYS_OUT;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[10].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[8].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[9].C_MUX.CARRY_MUX_n_0 ;
  wire align_dist_0_ip__0;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire \opt_has_pipe.first_q_reg[10] ;
  wire \opt_has_pipe.first_q_reg[10]_0 ;
  wire [22:0]s_axis_a_tdata;
  wire [6:0]\s_axis_a_tdata[16] ;
  wire s_axis_a_tdata_0_sn_1;
  wire s_axis_a_tdata_12_sn_1;
  wire s_axis_a_tdata_4_sn_1;
  wire s_axis_a_tdata_8_sn_1;
  wire [22:0]s_axis_b_tdata;
  wire [15:0]\s_axis_b_tdata[15] ;
  wire [10:0]\s_axis_b_tdata[16] ;
  wire s_axis_b_tdata_14_sn_1;
  wire [2:1]sml_mant_mux;
  wire zero_largest;
  wire [3:0]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;

  assign s_axis_a_tdata_0_sp_1 = s_axis_a_tdata_0_sn_1;
  assign s_axis_a_tdata_12_sp_1 = s_axis_a_tdata_12_sn_1;
  assign s_axis_a_tdata_4_sp_1 = s_axis_a_tdata_4_sn_1;
  assign s_axis_a_tdata_8_sp_1 = s_axis_a_tdata_8_sn_1;
  assign s_axis_b_tdata_14_sp_1 = s_axis_b_tdata_14_sn_1;
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(1'b0),
        .CO({\CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({\ADD_MANT_GEN[3].di_reg ,\ADD_MANT_GEN[2].di_reg ,\ADD_MANT_GEN[1].di_reg ,\ADD_MANT_GEN[0].di_reg }),
        .O(\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S({\ADD_MANT_GEN[3].lut_op_reg ,\ADD_MANT_GEN[2].lut_op_reg ,\ADD_MANT_GEN[1].lut_op_reg ,\ADD_MANT_GEN[0].lut_op_reg }));
  LUT6 #(
    .INIT(64'h0000004700470047)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[0]),
        .I1(CARRYS_OUT),
        .I2(s_axis_b_tdata[0]),
        .I3(sml_mant_mux[1]),
        .I4(align_dist_0_ip__0),
        .I5(sml_mant_mux[2]),
        .O(A[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0 
       (.I0(s_axis_a_tdata[0]),
        .I1(s_axis_b_tdata[0]),
        .I2(s_axis_b_tdata[1]),
        .I3(s_axis_a_tdata[1]),
        .O(\ADD_MANT_GEN[0].lut_op_reg ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_b_tdata[0]),
        .I1(s_axis_a_tdata[0]),
        .I2(s_axis_a_tdata[1]),
        .I3(s_axis_b_tdata[1]),
        .O(\ADD_MANT_GEN[0].di_reg ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2__0 
       (.I0(s_axis_a_tdata[1]),
        .I1(CARRYS_OUT),
        .I2(s_axis_b_tdata[1]),
        .O(sml_mant_mux[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_4 
       (.I0(s_axis_a_tdata[2]),
        .I1(CARRYS_OUT),
        .I2(s_axis_b_tdata[2]),
        .O(sml_mant_mux[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[20]),
        .I1(s_axis_b_tdata[20]),
        .I2(s_axis_b_tdata[21]),
        .I3(s_axis_a_tdata[21]),
        .O(\ADD_MANT_GEN[10].lut_op_reg ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_b_tdata[20]),
        .I1(s_axis_a_tdata[20]),
        .I2(s_axis_a_tdata[21]),
        .I3(s_axis_b_tdata[21]),
        .O(\ADD_MANT_GEN[10].di_reg ));
  LUT2 #(
    .INIT(4'h9)) 
    \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[22]),
        .I1(s_axis_b_tdata[22]),
        .O(\ADD_MANT_GEN[11].lut_op_reg ));
  LUT2 #(
    .INIT(4'h2)) 
    \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_b_tdata[22]),
        .I1(s_axis_a_tdata[22]),
        .O(\ADD_MANT_GEN[11].di_reg ));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 
       (.I0(\ALIGN_BLK/sml_shift_mux__16 [5]),
        .I1(\ALIGN_BLK/sml_shift_mux__16 [4]),
        .I2(\ALIGN_BLK/sml_shift_mux__16 [3]),
        .I3(\ALIGN_BLK/sml_shift_mux__16 [6]),
        .O(A[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__0 
       (.I0(s_axis_a_tdata[2]),
        .I1(s_axis_b_tdata[2]),
        .I2(s_axis_b_tdata[3]),
        .I3(s_axis_a_tdata[3]),
        .O(\ADD_MANT_GEN[1].lut_op_reg ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_b_tdata[2]),
        .I1(s_axis_a_tdata[2]),
        .I2(s_axis_a_tdata[3]),
        .I3(s_axis_b_tdata[3]),
        .O(\ADD_MANT_GEN[1].di_reg ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__0 
       (.I0(s_axis_a_tdata[5]),
        .I1(s_axis_b_tdata[5]),
        .I2(align_dist_0_ip__0),
        .I3(s_axis_a_tdata[4]),
        .I4(CARRYS_OUT),
        .I5(s_axis_b_tdata[4]),
        .O(\ALIGN_BLK/sml_shift_mux__16 [5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[4]),
        .I1(s_axis_b_tdata[4]),
        .I2(align_dist_0_ip__0),
        .I3(s_axis_a_tdata[3]),
        .I4(CARRYS_OUT),
        .I5(s_axis_b_tdata[3]),
        .O(\ALIGN_BLK/sml_shift_mux__16 [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4 
       (.I0(s_axis_a_tdata[3]),
        .I1(s_axis_b_tdata[3]),
        .I2(align_dist_0_ip__0),
        .I3(s_axis_a_tdata[2]),
        .I4(CARRYS_OUT),
        .I5(s_axis_b_tdata[2]),
        .O(\ALIGN_BLK/sml_shift_mux__16 [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5 
       (.I0(s_axis_a_tdata[6]),
        .I1(s_axis_b_tdata[6]),
        .I2(align_dist_0_ip__0),
        .I3(s_axis_a_tdata[5]),
        .I4(CARRYS_OUT),
        .I5(s_axis_b_tdata[5]),
        .O(\ALIGN_BLK/sml_shift_mux__16 [6]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 
       (.I0(\ALIGN_BLK/sml_shift_mux__16 [9]),
        .I1(\ALIGN_BLK/sml_shift_mux__16 [8]),
        .I2(\ALIGN_BLK/sml_shift_mux__16 [7]),
        .I3(\s_axis_a_tdata[16] [0]),
        .O(A[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0 
       (.I0(s_axis_a_tdata[4]),
        .I1(s_axis_b_tdata[4]),
        .I2(s_axis_b_tdata[5]),
        .I3(s_axis_a_tdata[5]),
        .O(\ADD_MANT_GEN[2].lut_op_reg ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_b_tdata[4]),
        .I1(s_axis_a_tdata[4]),
        .I2(s_axis_a_tdata[5]),
        .I3(s_axis_b_tdata[5]),
        .O(\ADD_MANT_GEN[2].di_reg ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__0 
       (.I0(s_axis_a_tdata[9]),
        .I1(s_axis_b_tdata[9]),
        .I2(align_dist_0_ip__0),
        .I3(s_axis_a_tdata[8]),
        .I4(CARRYS_OUT),
        .I5(s_axis_b_tdata[8]),
        .O(\ALIGN_BLK/sml_shift_mux__16 [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[8]),
        .I1(s_axis_b_tdata[8]),
        .I2(align_dist_0_ip__0),
        .I3(s_axis_a_tdata[7]),
        .I4(CARRYS_OUT),
        .I5(s_axis_b_tdata[7]),
        .O(\ALIGN_BLK/sml_shift_mux__16 [8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_4 
       (.I0(s_axis_a_tdata[7]),
        .I1(s_axis_b_tdata[7]),
        .I2(align_dist_0_ip__0),
        .I3(s_axis_a_tdata[6]),
        .I4(CARRYS_OUT),
        .I5(s_axis_b_tdata[6]),
        .O(\ALIGN_BLK/sml_shift_mux__16 [7]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 
       (.I0(\s_axis_a_tdata[16] [3]),
        .I1(\s_axis_a_tdata[16] [2]),
        .I2(\s_axis_a_tdata[16] [1]),
        .I3(\s_axis_a_tdata[16] [4]),
        .O(A[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0 
       (.I0(s_axis_a_tdata[6]),
        .I1(s_axis_b_tdata[6]),
        .I2(s_axis_b_tdata[7]),
        .I3(s_axis_a_tdata[7]),
        .O(\ADD_MANT_GEN[3].lut_op_reg ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_b_tdata[6]),
        .I1(s_axis_a_tdata[6]),
        .I2(s_axis_a_tdata[7]),
        .I3(s_axis_b_tdata[7]),
        .O(\ADD_MANT_GEN[3].di_reg ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({\ADD_MANT_GEN[7].di_reg ,\ADD_MANT_GEN[6].di_reg ,\ADD_MANT_GEN[5].di_reg ,\ADD_MANT_GEN[4].di_reg }),
        .O(\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S({\ADD_MANT_GEN[7].lut_op_reg ,\ADD_MANT_GEN[6].lut_op_reg ,\ADD_MANT_GEN[5].lut_op_reg ,\ADD_MANT_GEN[4].lut_op_reg }));
  LUT4 #(
    .INIT(16'h9009)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[8]),
        .I1(s_axis_b_tdata[8]),
        .I2(s_axis_b_tdata[9]),
        .I3(s_axis_a_tdata[9]),
        .O(\ADD_MANT_GEN[4].lut_op_reg ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_b_tdata[8]),
        .I1(s_axis_a_tdata[8]),
        .I2(s_axis_a_tdata[9]),
        .I3(s_axis_b_tdata[9]),
        .O(\ADD_MANT_GEN[4].di_reg ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[10]),
        .I1(s_axis_b_tdata[10]),
        .I2(s_axis_b_tdata[11]),
        .I3(s_axis_a_tdata[11]),
        .O(\ADD_MANT_GEN[5].lut_op_reg ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_b_tdata[10]),
        .I1(s_axis_a_tdata[10]),
        .I2(s_axis_a_tdata[11]),
        .I3(s_axis_b_tdata[11]),
        .O(\ADD_MANT_GEN[5].di_reg ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[12]),
        .I1(s_axis_b_tdata[12]),
        .I2(s_axis_b_tdata[13]),
        .I3(s_axis_a_tdata[13]),
        .O(\ADD_MANT_GEN[6].lut_op_reg ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_b_tdata[12]),
        .I1(s_axis_a_tdata[12]),
        .I2(s_axis_a_tdata[13]),
        .I3(s_axis_b_tdata[13]),
        .O(\ADD_MANT_GEN[6].di_reg ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[14]),
        .I1(s_axis_b_tdata[14]),
        .I2(s_axis_b_tdata[15]),
        .I3(s_axis_a_tdata[15]),
        .O(\ADD_MANT_GEN[7].lut_op_reg ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_b_tdata[14]),
        .I1(s_axis_a_tdata[14]),
        .I2(s_axis_a_tdata[15]),
        .I3(s_axis_b_tdata[15]),
        .O(\ADD_MANT_GEN[7].di_reg ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0 ),
        .CO({CARRYS_OUT,\CHAIN_GEN[10].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[9].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[8].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({\ADD_MANT_GEN[11].di_reg ,\ADD_MANT_GEN[10].di_reg ,\ADD_MANT_GEN[9].di_reg ,\ADD_MANT_GEN[8].di_reg }),
        .O(\NLW_CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S({\ADD_MANT_GEN[11].lut_op_reg ,\ADD_MANT_GEN[10].lut_op_reg ,\ADD_MANT_GEN[9].lut_op_reg ,\ADD_MANT_GEN[8].lut_op_reg }));
  LUT4 #(
    .INIT(16'h9009)) 
    \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_b_tdata[16]),
        .I1(s_axis_a_tdata[16]),
        .I2(s_axis_b_tdata[17]),
        .I3(s_axis_a_tdata[17]),
        .O(\ADD_MANT_GEN[8].lut_op_reg ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_b_tdata[16]),
        .I1(s_axis_a_tdata[16]),
        .I2(s_axis_a_tdata[17]),
        .I3(s_axis_b_tdata[17]),
        .O(\ADD_MANT_GEN[8].di_reg ));
  LUT4 #(
    .INIT(16'h9009)) 
    \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[18]),
        .I1(s_axis_b_tdata[18]),
        .I2(s_axis_b_tdata[19]),
        .I3(s_axis_a_tdata[19]),
        .O(\ADD_MANT_GEN[9].lut_op_reg ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_b_tdata[18]),
        .I1(s_axis_a_tdata[18]),
        .I2(s_axis_a_tdata[19]),
        .I3(s_axis_b_tdata[19]),
        .O(\ADD_MANT_GEN[9].di_reg ));
  LUT4 #(
    .INIT(16'h5140)) 
    \opt_has_pipe.first_q[0]_i_1__10 
       (.I0(zero_largest),
        .I1(CARRYS_OUT),
        .I2(s_axis_b_tdata[7]),
        .I3(s_axis_a_tdata[7]),
        .O(\s_axis_b_tdata[15] [7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFF4747FF)) 
    \opt_has_pipe.first_q[0]_i_1__2 
       (.I0(s_axis_a_tdata[0]),
        .I1(CARRYS_OUT),
        .I2(s_axis_b_tdata[0]),
        .I3(s_axis_b_tdata[16]),
        .I4(s_axis_a_tdata[16]),
        .O(s_axis_a_tdata_0_sn_1));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \opt_has_pipe.first_q[0]_i_1__3 
       (.I0(\s_axis_a_tdata[16] [5]),
        .I1(\ALIGN_BLK/sml_shift_mux__16 [7]),
        .I2(\opt_has_pipe.first_q_reg[0]_0 ),
        .I3(\opt_has_pipe.first_q_reg[0] ),
        .O(\s_axis_b_tdata[16] [0]));
  LUT4 #(
    .INIT(16'h5140)) 
    \opt_has_pipe.first_q[0]_i_1__9 
       (.I0(zero_largest),
        .I1(CARRYS_OUT),
        .I2(s_axis_b_tdata[0]),
        .I3(s_axis_a_tdata[0]),
        .O(\s_axis_b_tdata[15] [0]));
  LUT5 #(
    .INIT(32'hFF909090)) 
    \opt_has_pipe.first_q[10]_i_1 
       (.I0(s_axis_b_tdata[16]),
        .I1(s_axis_a_tdata[16]),
        .I2(\opt_has_pipe.first_q_reg[10] ),
        .I3(\ALIGN_BLK/sml_shift_mux__16 [9]),
        .I4(\opt_has_pipe.first_q_reg[10]_0 ),
        .O(\s_axis_b_tdata[16] [10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[11]_i_1 
       (.I0(s_axis_a_tdata[10]),
        .I1(s_axis_b_tdata[10]),
        .I2(align_dist_0_ip__0),
        .I3(s_axis_a_tdata[9]),
        .I4(CARRYS_OUT),
        .I5(s_axis_b_tdata[9]),
        .O(\s_axis_a_tdata[16] [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[12]_i_1 
       (.I0(s_axis_a_tdata[11]),
        .I1(s_axis_b_tdata[11]),
        .I2(align_dist_0_ip__0),
        .I3(s_axis_a_tdata[10]),
        .I4(CARRYS_OUT),
        .I5(s_axis_b_tdata[10]),
        .O(\s_axis_a_tdata[16] [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[13]_i_1 
       (.I0(s_axis_a_tdata[12]),
        .I1(s_axis_b_tdata[12]),
        .I2(align_dist_0_ip__0),
        .I3(s_axis_a_tdata[11]),
        .I4(CARRYS_OUT),
        .I5(s_axis_b_tdata[11]),
        .O(\s_axis_a_tdata[16] [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[14]_i_1 
       (.I0(s_axis_a_tdata[13]),
        .I1(s_axis_b_tdata[13]),
        .I2(align_dist_0_ip__0),
        .I3(s_axis_a_tdata[12]),
        .I4(CARRYS_OUT),
        .I5(s_axis_b_tdata[12]),
        .O(\s_axis_a_tdata[16] [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[15]_i_1 
       (.I0(s_axis_a_tdata[14]),
        .I1(s_axis_b_tdata[14]),
        .I2(align_dist_0_ip__0),
        .I3(s_axis_a_tdata[13]),
        .I4(CARRYS_OUT),
        .I5(s_axis_b_tdata[13]),
        .O(\s_axis_a_tdata[16] [4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[16]_i_1 
       (.I0(s_axis_a_tdata[15]),
        .I1(s_axis_b_tdata[15]),
        .I2(align_dist_0_ip__0),
        .I3(s_axis_a_tdata[14]),
        .I4(CARRYS_OUT),
        .I5(s_axis_b_tdata[14]),
        .O(\s_axis_a_tdata[16] [5]));
  LUT5 #(
    .INIT(32'hFFF666F6)) 
    \opt_has_pipe.first_q[17]_i_1 
       (.I0(s_axis_a_tdata[16]),
        .I1(s_axis_b_tdata[16]),
        .I2(s_axis_b_tdata[15]),
        .I3(CARRYS_OUT),
        .I4(s_axis_a_tdata[15]),
        .O(\s_axis_a_tdata[16] [6]));
  LUT5 #(
    .INIT(32'h0C0CFA0A)) 
    \opt_has_pipe.first_q[1]_i_1__0 
       (.I0(\ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/p_26_in ),
        .I1(\ALIGN_BLK/sml_shift_mux__16 [8]),
        .I2(\opt_has_pipe.first_q_reg[0] ),
        .I3(\s_axis_a_tdata[16] [6]),
        .I4(\opt_has_pipe.first_q_reg[0]_0 ),
        .O(\s_axis_b_tdata[16] [1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \opt_has_pipe.first_q[1]_i_1__1 
       (.I0(\ALIGN_BLK/sml_shift_mux__16 [4]),
        .I1(\ALIGN_BLK/sml_shift_mux__16 [3]),
        .O(s_axis_a_tdata_4_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h5140)) 
    \opt_has_pipe.first_q[1]_i_1__4 
       (.I0(zero_largest),
        .I1(CARRYS_OUT),
        .I2(s_axis_b_tdata[1]),
        .I3(s_axis_a_tdata[1]),
        .O(\s_axis_b_tdata[15] [1]));
  LUT4 #(
    .INIT(16'h5140)) 
    \opt_has_pipe.first_q[1]_i_1__5 
       (.I0(zero_largest),
        .I1(CARRYS_OUT),
        .I2(s_axis_b_tdata[8]),
        .I3(s_axis_a_tdata[8]),
        .O(\s_axis_b_tdata[15] [8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h66600060)) 
    \opt_has_pipe.first_q[1]_i_2__0 
       (.I0(s_axis_a_tdata[16]),
        .I1(s_axis_b_tdata[16]),
        .I2(s_axis_b_tdata[0]),
        .I3(CARRYS_OUT),
        .I4(s_axis_a_tdata[0]),
        .O(\ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/p_26_in ));
  LUT6 #(
    .INIT(64'h0CFA0C0A0C0A0CFA)) 
    \opt_has_pipe.first_q[2]_i_1 
       (.I0(\ALIGN_BLK/sml_shift_mux__16 [1]),
        .I1(\ALIGN_BLK/sml_shift_mux__16 [9]),
        .I2(\opt_has_pipe.first_q_reg[0] ),
        .I3(\opt_has_pipe.first_q_reg[0]_0 ),
        .I4(s_axis_a_tdata[16]),
        .I5(s_axis_b_tdata[16]),
        .O(\s_axis_b_tdata[16] [2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \opt_has_pipe.first_q[2]_i_1__0 
       (.I0(\ALIGN_BLK/sml_shift_mux__16 [8]),
        .I1(\ALIGN_BLK/sml_shift_mux__16 [7]),
        .O(s_axis_a_tdata_8_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5140)) 
    \opt_has_pipe.first_q[2]_i_1__1 
       (.I0(zero_largest),
        .I1(CARRYS_OUT),
        .I2(s_axis_b_tdata[2]),
        .I3(s_axis_a_tdata[2]),
        .O(\s_axis_b_tdata[15] [2]));
  LUT4 #(
    .INIT(16'h5140)) 
    \opt_has_pipe.first_q[2]_i_1__2 
       (.I0(zero_largest),
        .I1(CARRYS_OUT),
        .I2(s_axis_b_tdata[9]),
        .I3(s_axis_a_tdata[9]),
        .O(\s_axis_b_tdata[15] [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[2]_i_2 
       (.I0(s_axis_a_tdata[1]),
        .I1(s_axis_b_tdata[1]),
        .I2(align_dist_0_ip__0),
        .I3(s_axis_a_tdata[0]),
        .I4(CARRYS_OUT),
        .I5(s_axis_b_tdata[0]),
        .O(\ALIGN_BLK/sml_shift_mux__16 [1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \opt_has_pipe.first_q[3]_i_1 
       (.I0(\s_axis_a_tdata[16] [0]),
        .I1(\opt_has_pipe.first_q_reg[10] ),
        .I2(\ALIGN_BLK/sml_shift_mux__16 [2]),
        .I3(\opt_has_pipe.first_q_reg[10]_0 ),
        .O(\s_axis_b_tdata[16] [3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \opt_has_pipe.first_q[3]_i_1__0 
       (.I0(\s_axis_a_tdata[16] [2]),
        .I1(\s_axis_a_tdata[16] [1]),
        .O(s_axis_a_tdata_12_sn_1));
  LUT4 #(
    .INIT(16'h5140)) 
    \opt_has_pipe.first_q[3]_i_1__1 
       (.I0(zero_largest),
        .I1(CARRYS_OUT),
        .I2(s_axis_b_tdata[3]),
        .I3(s_axis_a_tdata[3]),
        .O(\s_axis_b_tdata[15] [3]));
  LUT4 #(
    .INIT(16'h5140)) 
    \opt_has_pipe.first_q[3]_i_1__2 
       (.I0(zero_largest),
        .I1(CARRYS_OUT),
        .I2(s_axis_b_tdata[10]),
        .I3(s_axis_a_tdata[10]),
        .O(\s_axis_b_tdata[15] [10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[3]_i_2 
       (.I0(s_axis_a_tdata[2]),
        .I1(s_axis_b_tdata[2]),
        .I2(align_dist_0_ip__0),
        .I3(s_axis_a_tdata[1]),
        .I4(CARRYS_OUT),
        .I5(s_axis_b_tdata[1]),
        .O(\ALIGN_BLK/sml_shift_mux__16 [2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \opt_has_pipe.first_q[4]_i_1 
       (.I0(\s_axis_a_tdata[16] [1]),
        .I1(\opt_has_pipe.first_q_reg[10] ),
        .I2(\ALIGN_BLK/sml_shift_mux__16 [3]),
        .I3(\opt_has_pipe.first_q_reg[10]_0 ),
        .O(\s_axis_b_tdata[16] [4]));
  LUT4 #(
    .INIT(16'h5140)) 
    \opt_has_pipe.first_q[4]_i_1__0 
       (.I0(zero_largest),
        .I1(CARRYS_OUT),
        .I2(s_axis_b_tdata[4]),
        .I3(s_axis_a_tdata[4]),
        .O(\s_axis_b_tdata[15] [4]));
  LUT4 #(
    .INIT(16'h5140)) 
    \opt_has_pipe.first_q[4]_i_1__1 
       (.I0(zero_largest),
        .I1(CARRYS_OUT),
        .I2(s_axis_b_tdata[11]),
        .I3(s_axis_a_tdata[11]),
        .O(\s_axis_b_tdata[15] [11]));
  LUT6 #(
    .INIT(64'h00000011000C001D)) 
    \opt_has_pipe.first_q[4]_i_2 
       (.I0(s_axis_b_tdata[14]),
        .I1(CARRYS_OUT),
        .I2(s_axis_a_tdata[14]),
        .I3(align_dist_0_ip__0),
        .I4(s_axis_b_tdata[15]),
        .I5(s_axis_a_tdata[15]),
        .O(s_axis_b_tdata_14_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \opt_has_pipe.first_q[5]_i_1 
       (.I0(\s_axis_a_tdata[16] [2]),
        .I1(\opt_has_pipe.first_q_reg[10] ),
        .I2(\ALIGN_BLK/sml_shift_mux__16 [4]),
        .I3(\opt_has_pipe.first_q_reg[10]_0 ),
        .O(\s_axis_b_tdata[16] [5]));
  LUT4 #(
    .INIT(16'h5140)) 
    \opt_has_pipe.first_q[5]_i_1__0 
       (.I0(zero_largest),
        .I1(CARRYS_OUT),
        .I2(s_axis_b_tdata[5]),
        .I3(s_axis_a_tdata[5]),
        .O(\s_axis_b_tdata[15] [5]));
  LUT4 #(
    .INIT(16'h5140)) 
    \opt_has_pipe.first_q[5]_i_1__1 
       (.I0(zero_largest),
        .I1(CARRYS_OUT),
        .I2(s_axis_b_tdata[12]),
        .I3(s_axis_a_tdata[12]),
        .O(\s_axis_b_tdata[15] [12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \opt_has_pipe.first_q[6]_i_1 
       (.I0(\s_axis_a_tdata[16] [3]),
        .I1(\opt_has_pipe.first_q_reg[10] ),
        .I2(\ALIGN_BLK/sml_shift_mux__16 [5]),
        .I3(\opt_has_pipe.first_q_reg[10]_0 ),
        .O(\s_axis_b_tdata[16] [6]));
  LUT4 #(
    .INIT(16'h5140)) 
    \opt_has_pipe.first_q[6]_i_1__0 
       (.I0(zero_largest),
        .I1(CARRYS_OUT),
        .I2(s_axis_b_tdata[6]),
        .I3(s_axis_a_tdata[6]),
        .O(\s_axis_b_tdata[15] [6]));
  LUT4 #(
    .INIT(16'h5140)) 
    \opt_has_pipe.first_q[6]_i_1__1 
       (.I0(zero_largest),
        .I1(CARRYS_OUT),
        .I2(s_axis_b_tdata[13]),
        .I3(s_axis_a_tdata[13]),
        .O(\s_axis_b_tdata[15] [13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \opt_has_pipe.first_q[7]_i_1 
       (.I0(\s_axis_a_tdata[16] [4]),
        .I1(\opt_has_pipe.first_q_reg[10] ),
        .I2(\ALIGN_BLK/sml_shift_mux__16 [6]),
        .I3(\opt_has_pipe.first_q_reg[10]_0 ),
        .O(\s_axis_b_tdata[16] [7]));
  LUT4 #(
    .INIT(16'h5140)) 
    \opt_has_pipe.first_q[7]_i_1__0 
       (.I0(zero_largest),
        .I1(CARRYS_OUT),
        .I2(s_axis_b_tdata[14]),
        .I3(s_axis_a_tdata[14]),
        .O(\s_axis_b_tdata[15] [14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \opt_has_pipe.first_q[8]_i_1 
       (.I0(\s_axis_a_tdata[16] [5]),
        .I1(\opt_has_pipe.first_q_reg[10] ),
        .I2(\ALIGN_BLK/sml_shift_mux__16 [7]),
        .I3(\opt_has_pipe.first_q_reg[10]_0 ),
        .O(\s_axis_b_tdata[16] [8]));
  LUT4 #(
    .INIT(16'h5140)) 
    \opt_has_pipe.first_q[8]_i_1__0 
       (.I0(zero_largest),
        .I1(CARRYS_OUT),
        .I2(s_axis_b_tdata[15]),
        .I3(s_axis_a_tdata[15]),
        .O(\s_axis_b_tdata[15] [15]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \opt_has_pipe.first_q[9]_i_1__0 
       (.I0(\s_axis_a_tdata[16] [6]),
        .I1(\opt_has_pipe.first_q_reg[10] ),
        .I2(\ALIGN_BLK/sml_shift_mux__16 [8]),
        .I3(\opt_has_pipe.first_q_reg[10]_0 ),
        .O(\s_axis_b_tdata[16] [9]));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module fp16_sub_compare
   (\s_axis_b_tdata[15] ,
    CARRYS_OUT,
    \s_axis_b_tdata[16] ,
    s_axis_a_tdata_0_sp_1,
    \s_axis_a_tdata[16] ,
    A,
    s_axis_a_tdata_4_sp_1,
    s_axis_a_tdata_8_sp_1,
    s_axis_a_tdata_12_sp_1,
    s_axis_b_tdata_14_sp_1,
    zero_largest,
    s_axis_b_tdata,
    s_axis_a_tdata,
    \opt_has_pipe.first_q_reg[0] ,
    \opt_has_pipe.first_q_reg[0]_0 ,
    \opt_has_pipe.first_q_reg[10] ,
    \opt_has_pipe.first_q_reg[10]_0 ,
    align_dist_0_ip__0);
  output [15:0]\s_axis_b_tdata[15] ;
  output [0:0]CARRYS_OUT;
  output [10:0]\s_axis_b_tdata[16] ;
  output s_axis_a_tdata_0_sp_1;
  output [6:0]\s_axis_a_tdata[16] ;
  output [3:0]A;
  output s_axis_a_tdata_4_sp_1;
  output s_axis_a_tdata_8_sp_1;
  output s_axis_a_tdata_12_sp_1;
  output s_axis_b_tdata_14_sp_1;
  input zero_largest;
  input [22:0]s_axis_b_tdata;
  input [22:0]s_axis_a_tdata;
  input \opt_has_pipe.first_q_reg[0] ;
  input \opt_has_pipe.first_q_reg[0]_0 ;
  input \opt_has_pipe.first_q_reg[10] ;
  input \opt_has_pipe.first_q_reg[10]_0 ;
  input align_dist_0_ip__0;

  wire [3:0]A;
  wire [0:0]CARRYS_OUT;
  wire align_dist_0_ip__0;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire \opt_has_pipe.first_q_reg[10] ;
  wire \opt_has_pipe.first_q_reg[10]_0 ;
  wire [22:0]s_axis_a_tdata;
  wire [6:0]\s_axis_a_tdata[16] ;
  wire s_axis_a_tdata_0_sn_1;
  wire s_axis_a_tdata_12_sn_1;
  wire s_axis_a_tdata_4_sn_1;
  wire s_axis_a_tdata_8_sn_1;
  wire [22:0]s_axis_b_tdata;
  wire [15:0]\s_axis_b_tdata[15] ;
  wire [10:0]\s_axis_b_tdata[16] ;
  wire s_axis_b_tdata_14_sn_1;
  wire zero_largest;

  assign s_axis_a_tdata_0_sp_1 = s_axis_a_tdata_0_sn_1;
  assign s_axis_a_tdata_12_sp_1 = s_axis_a_tdata_12_sn_1;
  assign s_axis_a_tdata_4_sp_1 = s_axis_a_tdata_4_sn_1;
  assign s_axis_a_tdata_8_sp_1 = s_axis_a_tdata_8_sn_1;
  assign s_axis_b_tdata_14_sp_1 = s_axis_b_tdata_14_sn_1;
  fp16_sub_compare_gt \NOT_FAST.CMP 
       (.A(A),
        .CARRY_OUT(CARRYS_OUT),
        .align_dist_0_ip__0(align_dist_0_ip__0),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0]_0 ),
        .\opt_has_pipe.first_q_reg[10] (\opt_has_pipe.first_q_reg[10] ),
        .\opt_has_pipe.first_q_reg[10]_0 (\opt_has_pipe.first_q_reg[10]_0 ),
        .s_axis_a_tdata(s_axis_a_tdata),
        .\s_axis_a_tdata[16] (\s_axis_a_tdata[16] ),
        .s_axis_a_tdata_0_sp_1(s_axis_a_tdata_0_sn_1),
        .s_axis_a_tdata_12_sp_1(s_axis_a_tdata_12_sn_1),
        .s_axis_a_tdata_4_sp_1(s_axis_a_tdata_4_sn_1),
        .s_axis_a_tdata_8_sp_1(s_axis_a_tdata_8_sn_1),
        .s_axis_b_tdata(s_axis_b_tdata),
        .\s_axis_b_tdata[15] (\s_axis_b_tdata[15] ),
        .\s_axis_b_tdata[16] (\s_axis_b_tdata[16] ),
        .s_axis_b_tdata_14_sp_1(s_axis_b_tdata_14_sn_1),
        .zero_largest(zero_largest));
endmodule

(* ORIG_REF_NAME = "compare_eq_im" *) 
module fp16_sub_compare_eq_im
   (\zero_det_unreg[1]_3 ,
    p_8_out,
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1 ,
    ext_del_distance,
    \CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD ,
    aclk);
  output [1:0]\zero_det_unreg[1]_3 ;
  input [5:0]p_8_out;
  input \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1 ;
  input [0:0]ext_del_distance;
  input [3:0]\CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD ;
  input aclk;

  wire [3:0]\CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1 ;
  wire aclk;
  wire [0:0]ext_del_distance;
  wire [5:0]p_8_out;
  wire [1:0]\zero_det_unreg[1]_3 ;

  fp16_sub_carry_chain CARRY_ZERO_DET
       (.\CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD_0 (\CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1_0 (\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1 ),
        .aclk(aclk),
        .ext_del_distance(ext_del_distance),
        .p_8_out(p_8_out),
        .\zero_det_unreg[1]_3 (\zero_det_unreg[1]_3 ));
endmodule

(* ORIG_REF_NAME = "compare_eq_im" *) 
module fp16_sub_compare_eq_im__parameterized0
   (D,
    det_invalid_op,
    det_sign,
    b_exp_flt_all_one,
    a_is_inf__0,
    zero_largest,
    CARRY_OUT,
    a_exp_flt_all_one,
    subtract,
    s_axis_b_tdata,
    s_axis_a_tdata,
    \opt_has_pipe.first_q_reg[0] );
  output [1:0]D;
  output det_invalid_op;
  output det_sign;
  input b_exp_flt_all_one;
  input a_is_inf__0;
  input zero_largest;
  input CARRY_OUT;
  input a_exp_flt_all_one;
  input subtract;
  input [16:0]s_axis_b_tdata;
  input [0:0]s_axis_a_tdata;
  input \opt_has_pipe.first_q_reg[0] ;

  wire CARRY_OUT;
  wire [1:0]D;
  wire a_exp_flt_all_one;
  wire a_is_inf__0;
  wire b_exp_flt_all_one;
  wire det_invalid_op;
  wire det_sign;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire [0:0]s_axis_a_tdata;
  wire [16:0]s_axis_b_tdata;
  wire subtract;
  wire zero_largest;

  fp16_sub_carry_chain__parameterized8 CARRY_ZERO_DET
       (.CARRY_OUT(CARRY_OUT),
        .D(D),
        .a_exp_flt_all_one(a_exp_flt_all_one),
        .a_is_inf__0(a_is_inf__0),
        .b_exp_flt_all_one(b_exp_flt_all_one),
        .det_invalid_op(det_invalid_op),
        .det_sign(det_sign),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_b_tdata(s_axis_b_tdata),
        .subtract(subtract),
        .zero_largest(zero_largest));
endmodule

(* ORIG_REF_NAME = "compare_eq_im" *) 
module fp16_sub_compare_eq_im__parameterized0_9
   (a_is_inf__0,
    CARRY_OUT,
    s_axis_a_tdata,
    \opt_has_pipe.first_q_reg[0] );
  output a_is_inf__0;
  output CARRY_OUT;
  input [18:0]s_axis_a_tdata;
  input \opt_has_pipe.first_q_reg[0] ;

  wire CARRY_OUT;
  wire a_is_inf__0;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire [18:0]s_axis_a_tdata;

  fp16_sub_carry_chain__parameterized8_10 CARRY_ZERO_DET
       (.CARRY_OUT(CARRY_OUT),
        .a_is_inf__0(a_is_inf__0),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .s_axis_a_tdata(s_axis_a_tdata));
endmodule

(* ORIG_REF_NAME = "compare_gt" *) 
module fp16_sub_compare_gt
   (\s_axis_b_tdata[15] ,
    CARRY_OUT,
    \s_axis_b_tdata[16] ,
    s_axis_a_tdata_0_sp_1,
    \s_axis_a_tdata[16] ,
    A,
    s_axis_a_tdata_4_sp_1,
    s_axis_a_tdata_8_sp_1,
    s_axis_a_tdata_12_sp_1,
    s_axis_b_tdata_14_sp_1,
    zero_largest,
    s_axis_b_tdata,
    s_axis_a_tdata,
    \opt_has_pipe.first_q_reg[0] ,
    \opt_has_pipe.first_q_reg[0]_0 ,
    \opt_has_pipe.first_q_reg[10] ,
    \opt_has_pipe.first_q_reg[10]_0 ,
    align_dist_0_ip__0);
  output [15:0]\s_axis_b_tdata[15] ;
  output CARRY_OUT;
  output [10:0]\s_axis_b_tdata[16] ;
  output s_axis_a_tdata_0_sp_1;
  output [6:0]\s_axis_a_tdata[16] ;
  output [3:0]A;
  output s_axis_a_tdata_4_sp_1;
  output s_axis_a_tdata_8_sp_1;
  output s_axis_a_tdata_12_sp_1;
  output s_axis_b_tdata_14_sp_1;
  input zero_largest;
  input [22:0]s_axis_b_tdata;
  input [22:0]s_axis_a_tdata;
  input \opt_has_pipe.first_q_reg[0] ;
  input \opt_has_pipe.first_q_reg[0]_0 ;
  input \opt_has_pipe.first_q_reg[10] ;
  input \opt_has_pipe.first_q_reg[10]_0 ;
  input align_dist_0_ip__0;

  wire [3:0]A;
  wire CARRY_OUT;
  wire align_dist_0_ip__0;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire \opt_has_pipe.first_q_reg[10] ;
  wire \opt_has_pipe.first_q_reg[10]_0 ;
  wire [22:0]s_axis_a_tdata;
  wire [6:0]\s_axis_a_tdata[16] ;
  wire s_axis_a_tdata_0_sn_1;
  wire s_axis_a_tdata_12_sn_1;
  wire s_axis_a_tdata_4_sn_1;
  wire s_axis_a_tdata_8_sn_1;
  wire [22:0]s_axis_b_tdata;
  wire [15:0]\s_axis_b_tdata[15] ;
  wire [10:0]\s_axis_b_tdata[16] ;
  wire s_axis_b_tdata_14_sn_1;
  wire zero_largest;

  assign s_axis_a_tdata_0_sp_1 = s_axis_a_tdata_0_sn_1;
  assign s_axis_a_tdata_12_sp_1 = s_axis_a_tdata_12_sn_1;
  assign s_axis_a_tdata_4_sp_1 = s_axis_a_tdata_4_sn_1;
  assign s_axis_a_tdata_8_sp_1 = s_axis_a_tdata_8_sn_1;
  assign s_axis_b_tdata_14_sp_1 = s_axis_b_tdata_14_sn_1;
  fp16_sub_carry_chain__parameterized9 C_CHAIN
       (.A(A),
        .CARRYS_OUT(CARRY_OUT),
        .align_dist_0_ip__0(align_dist_0_ip__0),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0]_0 ),
        .\opt_has_pipe.first_q_reg[10] (\opt_has_pipe.first_q_reg[10] ),
        .\opt_has_pipe.first_q_reg[10]_0 (\opt_has_pipe.first_q_reg[10]_0 ),
        .s_axis_a_tdata(s_axis_a_tdata),
        .\s_axis_a_tdata[16] (\s_axis_a_tdata[16] ),
        .s_axis_a_tdata_0_sp_1(s_axis_a_tdata_0_sn_1),
        .s_axis_a_tdata_12_sp_1(s_axis_a_tdata_12_sn_1),
        .s_axis_a_tdata_4_sp_1(s_axis_a_tdata_4_sn_1),
        .s_axis_a_tdata_8_sp_1(s_axis_a_tdata_8_sn_1),
        .s_axis_b_tdata(s_axis_b_tdata),
        .\s_axis_b_tdata[15] (\s_axis_b_tdata[15] ),
        .\s_axis_b_tdata[16] (\s_axis_b_tdata[16] ),
        .s_axis_b_tdata_14_sp_1(s_axis_b_tdata_14_sn_1),
        .zero_largest(zero_largest));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized1
   (zeros_del,
    \opt_has_pipe.first_q_reg[0] ,
    aclk);
  output zeros_del;
  input \opt_has_pipe.first_q_reg[0] ;
  input aclk;

  wire aclk;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire zeros_del;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5 i_pipe
       (.aclk(aclk),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0] ),
        .zeros_del(zeros_del));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized10
   (\opt_has_pipe.first_q_reg[1] ,
    NORM_DIST,
    DI,
    CARRYS_OUT,
    aclk);
  output [0:0]\opt_has_pipe.first_q_reg[1] ;
  output [1:0]NORM_DIST;
  input [0:0]DI;
  input [1:0]CARRYS_OUT;
  input aclk;

  wire [1:0]CARRYS_OUT;
  wire [0:0]DI;
  wire [1:0]NORM_DIST;
  wire aclk;
  wire [0:0]\opt_has_pipe.first_q_reg[1] ;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19 i_pipe
       (.CARRYS_OUT(CARRYS_OUT),
        .DI(DI),
        .NORM_DIST(NORM_DIST),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[1]_0 (\opt_has_pipe.first_q_reg[1] ));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized10_17
   (ext_del_distance,
    \opt_has_pipe.first_q_reg[1] ,
    aclk);
  output [0:0]ext_del_distance;
  input \opt_has_pipe.first_q_reg[1] ;
  input aclk;

  wire aclk;
  wire [0:0]ext_del_distance;
  wire \opt_has_pipe.first_q_reg[1] ;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_20 i_pipe
       (.aclk(aclk),
        .ext_del_distance(ext_del_distance),
        .\opt_has_pipe.first_q_reg[1]_0 (\opt_has_pipe.first_q_reg[1] ));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized10_18
   (ext_del_distance,
    first_q0,
    aclk);
  output [0:0]ext_del_distance;
  input first_q0;
  input aclk;

  wire aclk;
  wire [0:0]ext_del_distance;
  wire first_q0;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_19 i_pipe
       (.aclk(aclk),
        .ext_del_distance(ext_del_distance),
        .first_q0(first_q0));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized10_21
   (\opt_has_pipe.first_q_reg[0] ,
    \opt_has_pipe.first_q_reg[1] ,
    A,
    abs_dist_mux,
    aclk,
    \opt_has_pipe.first_q_reg[1]_0 ,
    out,
    zero_sml_preadd,
    \opt_has_pipe.first_q_reg[7] ,
    \opt_has_pipe.first_q_reg[8] ,
    \opt_has_pipe.first_q_reg[8]_0 ,
    Q,
    \opt_has_pipe.first_q_reg[7]_0 ,
    \opt_has_pipe.first_q_reg[8]_1 ,
    \opt_has_pipe.first_q_reg[6] );
  output \opt_has_pipe.first_q_reg[0] ;
  output \opt_has_pipe.first_q_reg[1] ;
  output [3:0]A;
  input [0:0]abs_dist_mux;
  input aclk;
  input \opt_has_pipe.first_q_reg[1]_0 ;
  input out;
  input zero_sml_preadd;
  input \opt_has_pipe.first_q_reg[7] ;
  input \opt_has_pipe.first_q_reg[8] ;
  input [0:0]\opt_has_pipe.first_q_reg[8]_0 ;
  input [3:0]Q;
  input \opt_has_pipe.first_q_reg[7]_0 ;
  input \opt_has_pipe.first_q_reg[8]_1 ;
  input \opt_has_pipe.first_q_reg[6] ;

  wire [3:0]A;
  wire [3:0]Q;
  wire [0:0]abs_dist_mux;
  wire aclk;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[1] ;
  wire \opt_has_pipe.first_q_reg[1]_0 ;
  wire \opt_has_pipe.first_q_reg[6] ;
  wire \opt_has_pipe.first_q_reg[7] ;
  wire \opt_has_pipe.first_q_reg[7]_0 ;
  wire \opt_has_pipe.first_q_reg[8] ;
  wire [0:0]\opt_has_pipe.first_q_reg[8]_0 ;
  wire \opt_has_pipe.first_q_reg[8]_1 ;
  wire out;
  wire zero_sml_preadd;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_22 i_pipe
       (.A(A),
        .Q(Q),
        .abs_dist_mux(abs_dist_mux),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[1]_0 (\opt_has_pipe.first_q_reg[1] ),
        .\opt_has_pipe.first_q_reg[1]_1 (\opt_has_pipe.first_q_reg[1]_0 ),
        .\opt_has_pipe.first_q_reg[6] (\opt_has_pipe.first_q_reg[6] ),
        .\opt_has_pipe.first_q_reg[7] (\opt_has_pipe.first_q_reg[7] ),
        .\opt_has_pipe.first_q_reg[7]_0 (\opt_has_pipe.first_q_reg[7]_0 ),
        .\opt_has_pipe.first_q_reg[8] (\opt_has_pipe.first_q_reg[8] ),
        .\opt_has_pipe.first_q_reg[8]_0 (\opt_has_pipe.first_q_reg[8]_0 ),
        .\opt_has_pipe.first_q_reg[8]_1 (\opt_has_pipe.first_q_reg[8]_1 ),
        .out(out),
        .zero_sml_preadd(zero_sml_preadd));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized10_6
   (add_mant_msbs_del,
    add_mant,
    aclk);
  output [0:0]add_mant_msbs_del;
  input [0:0]add_mant;
  input aclk;

  wire aclk;
  wire [0:0]add_mant;
  wire [0:0]add_mant_msbs_del;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_7 i_pipe
       (.aclk(aclk),
        .add_mant(add_mant),
        .add_mant_msbs_del(add_mant_msbs_del));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized11
   (S,
    \s_axis_b_tdata[19] ,
    align_dist_0_ip__0,
    \opt_has_pipe.first_q_reg[14] ,
    \opt_has_pipe.first_q_reg[16] ,
    \opt_has_pipe.first_q_reg[16]_0 ,
    \opt_has_pipe.first_q_reg[12] ,
    \opt_has_pipe.first_q_reg[13] ,
    \opt_has_pipe.first_q_reg[15] ,
    \opt_has_pipe.first_q_reg[15]_0 ,
    \opt_has_pipe.first_q_reg[11] ,
    \opt_has_pipe.first_q_reg[10] ,
    \opt_has_pipe.first_q_reg[9] ,
    \opt_has_pipe.first_q_reg[8] ,
    \opt_has_pipe.first_q_reg[7] ,
    \opt_has_pipe.first_q_reg[6] ,
    A,
    \opt_has_pipe.first_q_reg[18] ,
    \opt_has_pipe.first_q_reg[18]_0 ,
    \opt_has_pipe.first_q_reg[17] ,
    \opt_has_pipe.first_q_reg[17]_0 ,
    s_axis_a_tdata,
    s_axis_b_tdata,
    \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ,
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ,
    zero_sml_preadd,
    out,
    \opt_has_pipe.first_q_reg[5] ,
    Q,
    D,
    aclk,
    sml_shift_mux__16,
    minusOp,
    CO);
  output [2:0]S;
  output [3:0]\s_axis_b_tdata[19] ;
  output align_dist_0_ip__0;
  output \opt_has_pipe.first_q_reg[14] ;
  output \opt_has_pipe.first_q_reg[16] ;
  output \opt_has_pipe.first_q_reg[16]_0 ;
  output \opt_has_pipe.first_q_reg[12] ;
  output \opt_has_pipe.first_q_reg[13] ;
  output \opt_has_pipe.first_q_reg[15] ;
  output \opt_has_pipe.first_q_reg[15]_0 ;
  output \opt_has_pipe.first_q_reg[11] ;
  output \opt_has_pipe.first_q_reg[10] ;
  output \opt_has_pipe.first_q_reg[9] ;
  output \opt_has_pipe.first_q_reg[8] ;
  output \opt_has_pipe.first_q_reg[7] ;
  output \opt_has_pipe.first_q_reg[6] ;
  output [1:0]A;
  output \opt_has_pipe.first_q_reg[18] ;
  output \opt_has_pipe.first_q_reg[18]_0 ;
  output \opt_has_pipe.first_q_reg[17] ;
  output \opt_has_pipe.first_q_reg[17]_0 ;
  input [6:0]s_axis_a_tdata;
  input [6:0]s_axis_b_tdata;
  input \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ;
  input \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ;
  input zero_sml_preadd;
  input out;
  input [0:0]\opt_has_pipe.first_q_reg[5] ;
  input [1:0]Q;
  input [10:0]D;
  input aclk;
  input [6:0]sml_shift_mux__16;
  input [4:0]minusOp;
  input [0:0]CO;

  wire [1:0]A;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ;
  wire \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ;
  wire [0:0]CO;
  wire [10:0]D;
  wire [1:0]Q;
  wire [2:0]S;
  wire aclk;
  wire align_dist_0_ip__0;
  wire [4:0]minusOp;
  wire \opt_has_pipe.first_q_reg[10] ;
  wire \opt_has_pipe.first_q_reg[11] ;
  wire \opt_has_pipe.first_q_reg[12] ;
  wire \opt_has_pipe.first_q_reg[13] ;
  wire \opt_has_pipe.first_q_reg[14] ;
  wire \opt_has_pipe.first_q_reg[15] ;
  wire \opt_has_pipe.first_q_reg[15]_0 ;
  wire \opt_has_pipe.first_q_reg[16] ;
  wire \opt_has_pipe.first_q_reg[16]_0 ;
  wire \opt_has_pipe.first_q_reg[17] ;
  wire \opt_has_pipe.first_q_reg[17]_0 ;
  wire \opt_has_pipe.first_q_reg[18] ;
  wire \opt_has_pipe.first_q_reg[18]_0 ;
  wire [0:0]\opt_has_pipe.first_q_reg[5] ;
  wire \opt_has_pipe.first_q_reg[6] ;
  wire \opt_has_pipe.first_q_reg[7] ;
  wire \opt_has_pipe.first_q_reg[8] ;
  wire \opt_has_pipe.first_q_reg[9] ;
  wire out;
  wire [6:0]s_axis_a_tdata;
  wire [6:0]s_axis_b_tdata;
  wire [3:0]\s_axis_b_tdata[19] ;
  wire [6:0]sml_shift_mux__16;
  wire zero_sml_preadd;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized21 i_pipe
       (.A(A),
        .\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 (\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ),
        .\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 (\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ),
        .CO(CO),
        .D(D),
        .Q(Q),
        .S(S),
        .aclk(aclk),
        .align_dist_0_ip__0(align_dist_0_ip__0),
        .minusOp(minusOp),
        .\opt_has_pipe.first_q_reg[10]_0 (\opt_has_pipe.first_q_reg[10] ),
        .\opt_has_pipe.first_q_reg[11]_0 (\opt_has_pipe.first_q_reg[11] ),
        .\opt_has_pipe.first_q_reg[12]_0 (\opt_has_pipe.first_q_reg[12] ),
        .\opt_has_pipe.first_q_reg[13]_0 (\opt_has_pipe.first_q_reg[13] ),
        .\opt_has_pipe.first_q_reg[14]_0 (\opt_has_pipe.first_q_reg[14] ),
        .\opt_has_pipe.first_q_reg[15]_0 (\opt_has_pipe.first_q_reg[15] ),
        .\opt_has_pipe.first_q_reg[15]_1 (\opt_has_pipe.first_q_reg[15]_0 ),
        .\opt_has_pipe.first_q_reg[16]_0 (\opt_has_pipe.first_q_reg[16] ),
        .\opt_has_pipe.first_q_reg[16]_1 (\opt_has_pipe.first_q_reg[16]_0 ),
        .\opt_has_pipe.first_q_reg[17]_0 (\opt_has_pipe.first_q_reg[17] ),
        .\opt_has_pipe.first_q_reg[17]_1 (\opt_has_pipe.first_q_reg[17]_0 ),
        .\opt_has_pipe.first_q_reg[18]_0 (\opt_has_pipe.first_q_reg[18] ),
        .\opt_has_pipe.first_q_reg[18]_1 (\opt_has_pipe.first_q_reg[18]_0 ),
        .\opt_has_pipe.first_q_reg[5]_0 (\opt_has_pipe.first_q_reg[5] ),
        .\opt_has_pipe.first_q_reg[6]_0 (\opt_has_pipe.first_q_reg[6] ),
        .\opt_has_pipe.first_q_reg[7]_0 (\opt_has_pipe.first_q_reg[7] ),
        .\opt_has_pipe.first_q_reg[8]_0 (\opt_has_pipe.first_q_reg[8] ),
        .\opt_has_pipe.first_q_reg[9]_0 (\opt_has_pipe.first_q_reg[9] ),
        .out(out),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_b_tdata(s_axis_b_tdata),
        .\s_axis_b_tdata[19] (\s_axis_b_tdata[19] ),
        .sml_shift_mux__16(sml_shift_mux__16),
        .zero_sml_preadd(zero_sml_preadd));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized14
   (Q,
    \opt_has_pipe.first_q_reg[6] ,
    aclk);
  output [6:0]Q;
  input [6:0]\opt_has_pipe.first_q_reg[6] ;
  input aclk;

  wire [6:0]Q;
  wire aclk;
  wire [6:0]\opt_has_pipe.first_q_reg[6] ;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized27 i_pipe
       (.Q(Q),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[6]_0 (\opt_has_pipe.first_q_reg[6] ));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized16
   (add_mant,
    D,
    aclk);
  output [8:0]add_mant;
  input [8:0]D;
  input aclk;

  wire [8:0]D;
  wire aclk;
  wire [8:0]add_mant;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized31 i_pipe
       (.D(D),
        .aclk(aclk),
        .add_mant(add_mant));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized17
   (zero_largest,
    \s_axis_a_tdata[22] ,
    b_exp_flt_all_zero,
    \opt_has_pipe.first_q_reg[9] ,
    s_axis_a_tdata,
    s_axis_b_tdata,
    aclk,
    \opt_has_pipe.first_q_reg[8] );
  output zero_largest;
  output \s_axis_a_tdata[22] ;
  output b_exp_flt_all_zero;
  output [9:0]\opt_has_pipe.first_q_reg[9] ;
  input [6:0]s_axis_a_tdata;
  input [6:0]s_axis_b_tdata;
  input aclk;
  input [8:0]\opt_has_pipe.first_q_reg[8] ;

  wire aclk;
  wire b_exp_flt_all_zero;
  wire [8:0]\opt_has_pipe.first_q_reg[8] ;
  wire [9:0]\opt_has_pipe.first_q_reg[9] ;
  wire [6:0]s_axis_a_tdata;
  wire \s_axis_a_tdata[22] ;
  wire [6:0]s_axis_b_tdata;
  wire zero_largest;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized33 i_pipe
       (.aclk(aclk),
        .b_exp_flt_all_zero(b_exp_flt_all_zero),
        .\opt_has_pipe.first_q_reg[8]_0 (\opt_has_pipe.first_q_reg[8] ),
        .\opt_has_pipe.first_q_reg[9]_0 (\opt_has_pipe.first_q_reg[9] ),
        .s_axis_a_tdata(s_axis_a_tdata),
        .\s_axis_a_tdata[22] (\s_axis_a_tdata[22] ),
        .s_axis_b_tdata(s_axis_b_tdata),
        .zero_largest(zero_largest));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized1_0
   (cancellation,
    \opt_has_pipe.first_q_reg[0] ,
    aclk);
  output cancellation;
  input \opt_has_pipe.first_q_reg[0] ;
  input aclk;

  wire aclk;
  wire cancellation;
  wire \opt_has_pipe.first_q_reg[0] ;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_4 i_pipe
       (.aclk(aclk),
        .cancellation(cancellation),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0] ));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized1_11
   (A,
    \opt_has_pipe.first_q_reg[0] ,
    \opt_has_pipe.first_q_reg[0]_0 ,
    subtract,
    aclk,
    \opt_has_pipe.first_q_reg[1] ,
    zero_sml_preadd,
    out,
    \opt_has_pipe.first_q_reg[0]_1 );
  output [0:0]A;
  output \opt_has_pipe.first_q_reg[0] ;
  output \opt_has_pipe.first_q_reg[0]_0 ;
  input subtract;
  input aclk;
  input \opt_has_pipe.first_q_reg[1] ;
  input zero_sml_preadd;
  input out;
  input \opt_has_pipe.first_q_reg[0]_1 ;

  wire [0:0]A;
  wire aclk;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire \opt_has_pipe.first_q_reg[0]_1 ;
  wire \opt_has_pipe.first_q_reg[1] ;
  wire out;
  wire subtract;
  wire zero_sml_preadd;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_16 i_pipe
       (.A(A),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[0]_1 (\opt_has_pipe.first_q_reg[0]_0 ),
        .\opt_has_pipe.first_q_reg[0]_2 (\opt_has_pipe.first_q_reg[0]_1 ),
        .\opt_has_pipe.first_q_reg[1] (\opt_has_pipe.first_q_reg[1] ),
        .out(out),
        .subtract(subtract),
        .zero_sml_preadd(zero_sml_preadd));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized1_13
   (zero_sml_preadd,
    xor_rnd1,
    \opt_has_pipe.first_q_reg[0] ,
    \opt_has_pipe.first_q_reg[0]_0 ,
    aclk,
    \opt_has_pipe.first_q_reg[0]_1 ,
    s_axis_a_tdata,
    b_exp_flt_all_zero,
    out,
    \opt_has_pipe.first_q_reg[8] ,
    A,
    Q,
    \opt_has_pipe.first_q_reg[1] ,
    \opt_has_pipe.first_q_reg[3] ,
    \opt_has_pipe.first_q_reg[6] ,
    \opt_has_pipe.first_q_reg[7] ,
    \opt_has_pipe.first_q_reg[0]_2 ,
    \opt_has_pipe.first_q_reg[5] ,
    \opt_has_pipe.first_q_reg[4] ,
    \opt_has_pipe.first_q_reg[3]_0 ,
    \opt_has_pipe.first_q_reg[2] ,
    \opt_has_pipe.first_q_reg[2]_0 ,
    \opt_has_pipe.first_q_reg[3]_1 );
  output zero_sml_preadd;
  output [6:0]xor_rnd1;
  output [3:0]\opt_has_pipe.first_q_reg[0] ;
  output \opt_has_pipe.first_q_reg[0]_0 ;
  input aclk;
  input \opt_has_pipe.first_q_reg[0]_1 ;
  input [2:0]s_axis_a_tdata;
  input b_exp_flt_all_zero;
  input out;
  input \opt_has_pipe.first_q_reg[8] ;
  input [0:0]A;
  input [6:0]Q;
  input \opt_has_pipe.first_q_reg[1] ;
  input [3:0]\opt_has_pipe.first_q_reg[3] ;
  input \opt_has_pipe.first_q_reg[6] ;
  input \opt_has_pipe.first_q_reg[7] ;
  input \opt_has_pipe.first_q_reg[0]_2 ;
  input \opt_has_pipe.first_q_reg[5] ;
  input \opt_has_pipe.first_q_reg[4] ;
  input \opt_has_pipe.first_q_reg[3]_0 ;
  input \opt_has_pipe.first_q_reg[2] ;
  input \opt_has_pipe.first_q_reg[2]_0 ;
  input \opt_has_pipe.first_q_reg[3]_1 ;

  wire [0:0]A;
  wire [6:0]Q;
  wire aclk;
  wire b_exp_flt_all_zero;
  wire [3:0]\opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire \opt_has_pipe.first_q_reg[0]_1 ;
  wire \opt_has_pipe.first_q_reg[0]_2 ;
  wire \opt_has_pipe.first_q_reg[1] ;
  wire \opt_has_pipe.first_q_reg[2] ;
  wire \opt_has_pipe.first_q_reg[2]_0 ;
  wire [3:0]\opt_has_pipe.first_q_reg[3] ;
  wire \opt_has_pipe.first_q_reg[3]_0 ;
  wire \opt_has_pipe.first_q_reg[3]_1 ;
  wire \opt_has_pipe.first_q_reg[4] ;
  wire \opt_has_pipe.first_q_reg[5] ;
  wire \opt_has_pipe.first_q_reg[6] ;
  wire \opt_has_pipe.first_q_reg[7] ;
  wire \opt_has_pipe.first_q_reg[8] ;
  wire out;
  wire [2:0]s_axis_a_tdata;
  wire [6:0]xor_rnd1;
  wire zero_sml_preadd;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_14 i_pipe
       (.A(A),
        .Q(Q),
        .aclk(aclk),
        .b_exp_flt_all_zero(b_exp_flt_all_zero),
        .\opt_has_pipe.first_q_reg[0]_0 (zero_sml_preadd),
        .\opt_has_pipe.first_q_reg[0]_1 (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[0]_2 (\opt_has_pipe.first_q_reg[0]_0 ),
        .\opt_has_pipe.first_q_reg[0]_3 (\opt_has_pipe.first_q_reg[0]_1 ),
        .\opt_has_pipe.first_q_reg[0]_4 (\opt_has_pipe.first_q_reg[0]_2 ),
        .\opt_has_pipe.first_q_reg[1] (\opt_has_pipe.first_q_reg[1] ),
        .\opt_has_pipe.first_q_reg[2] (\opt_has_pipe.first_q_reg[2] ),
        .\opt_has_pipe.first_q_reg[2]_0 (\opt_has_pipe.first_q_reg[2]_0 ),
        .\opt_has_pipe.first_q_reg[3] (\opt_has_pipe.first_q_reg[3] ),
        .\opt_has_pipe.first_q_reg[3]_0 (\opt_has_pipe.first_q_reg[3]_0 ),
        .\opt_has_pipe.first_q_reg[3]_1 (\opt_has_pipe.first_q_reg[3]_1 ),
        .\opt_has_pipe.first_q_reg[4] (\opt_has_pipe.first_q_reg[4] ),
        .\opt_has_pipe.first_q_reg[5] (\opt_has_pipe.first_q_reg[5] ),
        .\opt_has_pipe.first_q_reg[6] (\opt_has_pipe.first_q_reg[6] ),
        .\opt_has_pipe.first_q_reg[7] (\opt_has_pipe.first_q_reg[7] ),
        .\opt_has_pipe.first_q_reg[8] (\opt_has_pipe.first_q_reg[8] ),
        .out(out),
        .s_axis_a_tdata(s_axis_a_tdata),
        .xor_rnd1(xor_rnd1));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized20
   (add_mant,
    D,
    aclk);
  output [10:0]add_mant;
  input [10:0]D;
  input aclk;

  wire [10:0]D;
  wire aclk;
  wire [10:0]add_mant;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized39 i_pipe
       (.D(D),
        .aclk(aclk),
        .add_mant(add_mant));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized23
   (out,
    \opt_has_pipe.first_q_reg[0] ,
    A,
    \opt_has_pipe.first_q_reg[2] ,
    \opt_has_pipe.first_q_reg[1] ,
    \opt_has_pipe.first_q_reg[0]_0 ,
    \opt_has_pipe.first_q_reg[0]_1 ,
    DI,
    \RESULT_REG.NORMAL.mant_op_reg[3] ,
    \RESULT_REG.NORMAL.mant_op_reg[1] ,
    \CHAIN_GEN[2].C_MUX.CARRY_MUX ,
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ,
    \RESULT_REG.NORMAL.mant_op_reg[1]_0 ,
    \RESULT_REG.NORMAL.mant_op_reg[3]_0 ,
    \RESULT_REG.NORMAL.exp_op[6]_i_4 ,
    \RESULT_REG.NORMAL.exp_op[6]_i_4_0 ,
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6 ,
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 ,
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1 ,
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8 ,
    zeros_del,
    D,
    aclk,
    CARRYS_OUT,
    op_a__0);
  output [2:0]out;
  output [0:0]\opt_has_pipe.first_q_reg[0] ;
  output [0:0]A;
  output [2:0]\opt_has_pipe.first_q_reg[2] ;
  output \opt_has_pipe.first_q_reg[1] ;
  output \opt_has_pipe.first_q_reg[0]_0 ;
  output \opt_has_pipe.first_q_reg[0]_1 ;
  input [2:0]DI;
  input \RESULT_REG.NORMAL.mant_op_reg[3] ;
  input \RESULT_REG.NORMAL.mant_op_reg[1] ;
  input \CHAIN_GEN[2].C_MUX.CARRY_MUX ;
  input \CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ;
  input \RESULT_REG.NORMAL.mant_op_reg[1]_0 ;
  input \RESULT_REG.NORMAL.mant_op_reg[3]_0 ;
  input \RESULT_REG.NORMAL.exp_op[6]_i_4 ;
  input \RESULT_REG.NORMAL.exp_op[6]_i_4_0 ;
  input \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6 ;
  input \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 ;
  input \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1 ;
  input \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8 ;
  input zeros_del;
  input [1:0]D;
  input aclk;
  input [0:0]CARRYS_OUT;
  input [0:0]op_a__0;

  wire [0:0]A;
  wire [0:0]CARRYS_OUT;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8 ;
  wire [1:0]D;
  wire [2:0]DI;
  wire \RESULT_REG.NORMAL.exp_op[6]_i_4 ;
  wire \RESULT_REG.NORMAL.exp_op[6]_i_4_0 ;
  wire \RESULT_REG.NORMAL.mant_op_reg[1] ;
  wire \RESULT_REG.NORMAL.mant_op_reg[1]_0 ;
  wire \RESULT_REG.NORMAL.mant_op_reg[3] ;
  wire \RESULT_REG.NORMAL.mant_op_reg[3]_0 ;
  wire aclk;
  wire [0:0]op_a__0;
  wire [0:0]\opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire \opt_has_pipe.first_q_reg[0]_1 ;
  wire \opt_has_pipe.first_q_reg[1] ;
  wire [2:0]\opt_has_pipe.first_q_reg[2] ;
  wire [2:0]out;
  wire zeros_del;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized45 i_pipe
       (.A(A),
        .CARRYS_OUT(CARRYS_OUT),
        .\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 (\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6 ),
        .\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1 (\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 ),
        .\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_2 (\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1 ),
        .\CHAIN_GEN[2].C_MUX.CARRY_MUX (\CHAIN_GEN[2].C_MUX.CARRY_MUX ),
        .\CHAIN_GEN[2].C_MUX.CARRY_MUX_0 (\CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ),
        .\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8_0 (\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8 ),
        .D(D),
        .DI(DI),
        .\RESULT_REG.NORMAL.exp_op[6]_i_4 (\RESULT_REG.NORMAL.exp_op[6]_i_4 ),
        .\RESULT_REG.NORMAL.exp_op[6]_i_4_0 (\RESULT_REG.NORMAL.exp_op[6]_i_4_0 ),
        .\RESULT_REG.NORMAL.mant_op_reg[1] (\RESULT_REG.NORMAL.mant_op_reg[1] ),
        .\RESULT_REG.NORMAL.mant_op_reg[1]_0 (\RESULT_REG.NORMAL.mant_op_reg[1]_0 ),
        .\RESULT_REG.NORMAL.mant_op_reg[3] (\RESULT_REG.NORMAL.mant_op_reg[3] ),
        .\RESULT_REG.NORMAL.mant_op_reg[3]_0 (\RESULT_REG.NORMAL.mant_op_reg[3]_0 ),
        .aclk(aclk),
        .op_a__0(op_a__0),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[0]_1 (\opt_has_pipe.first_q_reg[0]_0 ),
        .\opt_has_pipe.first_q_reg[0]_2 (\opt_has_pipe.first_q_reg[0]_1 ),
        .\opt_has_pipe.first_q_reg[1]_0 (\opt_has_pipe.first_q_reg[1] ),
        .\opt_has_pipe.first_q_reg[2]_0 (\opt_has_pipe.first_q_reg[2] ),
        .out(out),
        .zeros_del(zeros_del));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized23_2
   (\opt_has_pipe.i_pipe[3].pipe_reg[3][0] ,
    \opt_has_pipe.first_q_reg[1] ,
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ,
    \opt_has_pipe.first_q_reg[3] ,
    \opt_has_pipe.first_q_reg[0] ,
    DI,
    out,
    D,
    aclk,
    CARRYS_OUT,
    op_a);
  output [0:0]\opt_has_pipe.i_pipe[3].pipe_reg[3][0] ;
  output \opt_has_pipe.first_q_reg[1] ;
  output \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ;
  output \opt_has_pipe.first_q_reg[3] ;
  output \opt_has_pipe.first_q_reg[0] ;
  input [0:0]DI;
  input [2:0]out;
  input [1:0]D;
  input aclk;
  input [0:0]CARRYS_OUT;
  input [1:0]op_a;

  wire [0:0]CARRYS_OUT;
  wire [1:0]D;
  wire [0:0]DI;
  wire aclk;
  wire [1:0]op_a;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[1] ;
  wire \opt_has_pipe.first_q_reg[3] ;
  wire [0:0]\opt_has_pipe.i_pipe[3].pipe_reg[3][0] ;
  wire \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ;
  wire [2:0]out;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized45_3 i_pipe
       (.CARRYS_OUT(CARRYS_OUT),
        .D(D),
        .DI(DI),
        .aclk(aclk),
        .op_a(op_a),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[1]_0 (\opt_has_pipe.first_q_reg[1] ),
        .\opt_has_pipe.first_q_reg[3]_0 (\opt_has_pipe.first_q_reg[3] ),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][0] (\opt_has_pipe.i_pipe[3].pipe_reg[3][0] ),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 (\opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ),
        .out(out));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized26
   (A,
    \opt_has_pipe.first_q_reg[16] ,
    \opt_has_pipe.first_q_reg[18] ,
    \opt_has_pipe.first_q_reg[16]_0 ,
    \opt_has_pipe.first_q_reg[17] ,
    \opt_has_pipe.first_q_reg[19] ,
    \opt_has_pipe.first_q_reg[14] ,
    \opt_has_pipe.first_q_reg[19]_0 ,
    \opt_has_pipe.first_q_reg[15] ,
    \opt_has_pipe.first_q_reg[17]_0 ,
    \opt_has_pipe.first_q_reg[0] ,
    \opt_has_pipe.first_q_reg[16]_1 ,
    \RESULT_REG.NORMAL.mant_op_reg[14] ,
    out,
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5 ,
    zeros_del,
    D,
    aclk,
    CARRYS_OUT,
    \opt_has_pipe.first_q_reg[11] ,
    \opt_has_pipe.first_q_reg[10] ,
    \opt_has_pipe.first_q_reg[9] ,
    \opt_has_pipe.first_q_reg[8] ,
    \opt_has_pipe.first_q_reg[7] ,
    \opt_has_pipe.first_q_reg[6] ,
    \opt_has_pipe.first_q_reg[5] ,
    \opt_has_pipe.first_q_reg[4] ,
    \opt_has_pipe.first_q_reg[12] ,
    add_mant);
  output [7:0]A;
  output [4:0]\opt_has_pipe.first_q_reg[16] ;
  output \opt_has_pipe.first_q_reg[18] ;
  output \opt_has_pipe.first_q_reg[16]_0 ;
  output \opt_has_pipe.first_q_reg[17] ;
  output \opt_has_pipe.first_q_reg[19] ;
  output \opt_has_pipe.first_q_reg[14] ;
  output \opt_has_pipe.first_q_reg[19]_0 ;
  output \opt_has_pipe.first_q_reg[15] ;
  output \opt_has_pipe.first_q_reg[17]_0 ;
  output [0:0]\opt_has_pipe.first_q_reg[0] ;
  output \opt_has_pipe.first_q_reg[16]_1 ;
  input \RESULT_REG.NORMAL.mant_op_reg[14] ;
  input [2:0]out;
  input \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5 ;
  input zeros_del;
  input [2:0]D;
  input aclk;
  input [0:0]CARRYS_OUT;
  input \opt_has_pipe.first_q_reg[11] ;
  input \opt_has_pipe.first_q_reg[10] ;
  input \opt_has_pipe.first_q_reg[9] ;
  input \opt_has_pipe.first_q_reg[8] ;
  input \opt_has_pipe.first_q_reg[7] ;
  input \opt_has_pipe.first_q_reg[6] ;
  input \opt_has_pipe.first_q_reg[5] ;
  input \opt_has_pipe.first_q_reg[4] ;
  input \opt_has_pipe.first_q_reg[12] ;
  input [7:0]add_mant;

  wire [7:0]A;
  wire [0:0]CARRYS_OUT;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5 ;
  wire [2:0]D;
  wire \RESULT_REG.NORMAL.mant_op_reg[14] ;
  wire aclk;
  wire [7:0]add_mant;
  wire [0:0]\opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[10] ;
  wire \opt_has_pipe.first_q_reg[11] ;
  wire \opt_has_pipe.first_q_reg[12] ;
  wire \opt_has_pipe.first_q_reg[14] ;
  wire \opt_has_pipe.first_q_reg[15] ;
  wire [4:0]\opt_has_pipe.first_q_reg[16] ;
  wire \opt_has_pipe.first_q_reg[16]_0 ;
  wire \opt_has_pipe.first_q_reg[16]_1 ;
  wire \opt_has_pipe.first_q_reg[17] ;
  wire \opt_has_pipe.first_q_reg[17]_0 ;
  wire \opt_has_pipe.first_q_reg[18] ;
  wire \opt_has_pipe.first_q_reg[19] ;
  wire \opt_has_pipe.first_q_reg[19]_0 ;
  wire \opt_has_pipe.first_q_reg[4] ;
  wire \opt_has_pipe.first_q_reg[5] ;
  wire \opt_has_pipe.first_q_reg[6] ;
  wire \opt_has_pipe.first_q_reg[7] ;
  wire \opt_has_pipe.first_q_reg[8] ;
  wire \opt_has_pipe.first_q_reg[9] ;
  wire [2:0]out;
  wire zeros_del;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized49 i_pipe
       (.A(A),
        .CARRYS_OUT(CARRYS_OUT),
        .\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0 (\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5 ),
        .D(D),
        .\RESULT_REG.NORMAL.mant_op_reg[14] (\RESULT_REG.NORMAL.mant_op_reg[14] ),
        .aclk(aclk),
        .add_mant(add_mant),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[10]_0 (\opt_has_pipe.first_q_reg[10] ),
        .\opt_has_pipe.first_q_reg[11]_0 (\opt_has_pipe.first_q_reg[11] ),
        .\opt_has_pipe.first_q_reg[12]_0 (\opt_has_pipe.first_q_reg[12] ),
        .\opt_has_pipe.first_q_reg[14]_0 (\opt_has_pipe.first_q_reg[14] ),
        .\opt_has_pipe.first_q_reg[15]_0 (\opt_has_pipe.first_q_reg[15] ),
        .\opt_has_pipe.first_q_reg[16]_0 (\opt_has_pipe.first_q_reg[16] ),
        .\opt_has_pipe.first_q_reg[16]_1 (\opt_has_pipe.first_q_reg[16]_0 ),
        .\opt_has_pipe.first_q_reg[16]_2 (\opt_has_pipe.first_q_reg[16]_1 ),
        .\opt_has_pipe.first_q_reg[17]_0 (\opt_has_pipe.first_q_reg[17] ),
        .\opt_has_pipe.first_q_reg[17]_1 (\opt_has_pipe.first_q_reg[17]_0 ),
        .\opt_has_pipe.first_q_reg[18]_0 (\opt_has_pipe.first_q_reg[18] ),
        .\opt_has_pipe.first_q_reg[19]_0 (\opt_has_pipe.first_q_reg[19] ),
        .\opt_has_pipe.first_q_reg[19]_1 (\opt_has_pipe.first_q_reg[19]_0 ),
        .\opt_has_pipe.first_q_reg[4]_0 (\opt_has_pipe.first_q_reg[4] ),
        .\opt_has_pipe.first_q_reg[5]_0 (\opt_has_pipe.first_q_reg[5] ),
        .\opt_has_pipe.first_q_reg[6]_0 (\opt_has_pipe.first_q_reg[6] ),
        .\opt_has_pipe.first_q_reg[7]_0 (\opt_has_pipe.first_q_reg[7] ),
        .\opt_has_pipe.first_q_reg[8]_0 (\opt_has_pipe.first_q_reg[8] ),
        .\opt_has_pipe.first_q_reg[9]_0 (\opt_has_pipe.first_q_reg[9] ),
        .out(out),
        .zeros_del(zeros_del));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized36
   (D,
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0] ,
    \opt_has_pipe.i_pipe[3].pipe_reg[3][1] ,
    subtract,
    a_exp_flt_all_one,
    \s_axis_a_tdata[22] ,
    b_exp_flt_all_one,
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ,
    op_state,
    op_sign,
    \RESULT_REG.NORMAL.exp_op_reg[3] ,
    \RESULT_REG.NORMAL.exp_op_reg[3]_0 ,
    Q,
    s_axis_a_tdata,
    s_axis_b_tdata,
    CO,
    \RESULT_REG.NORMAL.exp_op_reg[2] ,
    \RESULT_REG.NORMAL.exp_op_reg[2]_0 ,
    \RESULT_REG.NORMAL.exp_op_reg[2]_1 ,
    \RESULT_REG.NORMAL.exp_op_reg[2]_2 ,
    \RESULT_REG.NORMAL.exp_op_reg[2]_3 ,
    add_mant_msbs_del,
    lrg_almost_over_del,
    cancellation,
    det_sign_del,
    \opt_has_pipe.first_q_reg[1] ,
    aclk);
  output [2:0]D;
  output \opt_has_pipe.i_pipe[3].pipe_reg[3][0] ;
  output \opt_has_pipe.i_pipe[3].pipe_reg[3][1] ;
  output subtract;
  output a_exp_flt_all_one;
  output \s_axis_a_tdata[22] ;
  output b_exp_flt_all_one;
  output \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ;
  output [0:0]op_state;
  output op_sign;
  input [3:0]\RESULT_REG.NORMAL.exp_op_reg[3] ;
  input \RESULT_REG.NORMAL.exp_op_reg[3]_0 ;
  input [1:0]Q;
  input [7:0]s_axis_a_tdata;
  input [7:0]s_axis_b_tdata;
  input [0:0]CO;
  input \RESULT_REG.NORMAL.exp_op_reg[2] ;
  input \RESULT_REG.NORMAL.exp_op_reg[2]_0 ;
  input \RESULT_REG.NORMAL.exp_op_reg[2]_1 ;
  input \RESULT_REG.NORMAL.exp_op_reg[2]_2 ;
  input \RESULT_REG.NORMAL.exp_op_reg[2]_3 ;
  input [0:0]add_mant_msbs_del;
  input lrg_almost_over_del;
  input cancellation;
  input det_sign_del;
  input [1:0]\opt_has_pipe.first_q_reg[1] ;
  input aclk;

  wire [0:0]CO;
  wire [2:0]D;
  wire [1:0]Q;
  wire \RESULT_REG.NORMAL.exp_op_reg[2] ;
  wire \RESULT_REG.NORMAL.exp_op_reg[2]_0 ;
  wire \RESULT_REG.NORMAL.exp_op_reg[2]_1 ;
  wire \RESULT_REG.NORMAL.exp_op_reg[2]_2 ;
  wire \RESULT_REG.NORMAL.exp_op_reg[2]_3 ;
  wire [3:0]\RESULT_REG.NORMAL.exp_op_reg[3] ;
  wire \RESULT_REG.NORMAL.exp_op_reg[3]_0 ;
  wire a_exp_flt_all_one;
  wire aclk;
  wire [0:0]add_mant_msbs_del;
  wire b_exp_flt_all_one;
  wire cancellation;
  wire det_sign_del;
  wire lrg_almost_over_del;
  wire op_sign;
  wire [0:0]op_state;
  wire [1:0]\opt_has_pipe.first_q_reg[1] ;
  wire \opt_has_pipe.i_pipe[3].pipe_reg[3][0] ;
  wire \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ;
  wire \opt_has_pipe.i_pipe[3].pipe_reg[3][1] ;
  wire [7:0]s_axis_a_tdata;
  wire \s_axis_a_tdata[22] ;
  wire [7:0]s_axis_b_tdata;
  wire subtract;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized59 i_pipe
       (.CO(CO),
        .D(D),
        .Q(Q),
        .\RESULT_REG.NORMAL.exp_op_reg[2] (\RESULT_REG.NORMAL.exp_op_reg[2] ),
        .\RESULT_REG.NORMAL.exp_op_reg[2]_0 (\RESULT_REG.NORMAL.exp_op_reg[2]_0 ),
        .\RESULT_REG.NORMAL.exp_op_reg[2]_1 (\RESULT_REG.NORMAL.exp_op_reg[2]_1 ),
        .\RESULT_REG.NORMAL.exp_op_reg[2]_2 (\RESULT_REG.NORMAL.exp_op_reg[2]_2 ),
        .\RESULT_REG.NORMAL.exp_op_reg[2]_3 (\RESULT_REG.NORMAL.exp_op_reg[2]_3 ),
        .\RESULT_REG.NORMAL.exp_op_reg[3] (\RESULT_REG.NORMAL.exp_op_reg[3] ),
        .\RESULT_REG.NORMAL.exp_op_reg[3]_0 (\RESULT_REG.NORMAL.exp_op_reg[3]_0 ),
        .a_exp_flt_all_one(a_exp_flt_all_one),
        .aclk(aclk),
        .add_mant_msbs_del(add_mant_msbs_del),
        .b_exp_flt_all_one(b_exp_flt_all_one),
        .cancellation(cancellation),
        .det_sign_del(det_sign_del),
        .lrg_almost_over_del(lrg_almost_over_del),
        .op_sign(op_sign),
        .op_state(op_state),
        .\opt_has_pipe.first_q_reg[1]_0 (\opt_has_pipe.first_q_reg[1] ),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 (\opt_has_pipe.i_pipe[3].pipe_reg[3][0] ),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][0]_1 (\opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0 (\opt_has_pipe.i_pipe[3].pipe_reg[3][1] ),
        .s_axis_a_tdata(s_axis_a_tdata),
        .\s_axis_a_tdata[22] (\s_axis_a_tdata[22] ),
        .s_axis_b_tdata(s_axis_b_tdata),
        .subtract(subtract));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized37
   (det_invalid_op,
    aclk);
  input det_invalid_op;
  input aclk;

  wire aclk;
  wire det_invalid_op;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized61 i_pipe
       (.aclk(aclk),
        .det_invalid_op(det_invalid_op));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized38
   (det_sign_del,
    det_sign,
    aclk);
  output det_sign_del;
  input det_sign;
  input aclk;

  wire aclk;
  wire det_sign;
  wire det_sign_del;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized61_8 i_pipe
       (.aclk(aclk),
        .det_sign(det_sign),
        .det_sign_del(det_sign_del));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized39
   (DI,
    \opt_has_pipe.i_pipe[3].pipe_reg[3][3] ,
    D,
    S,
    \opt_has_pipe.i_pipe[3].pipe_reg[3][6] ,
    \opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0 ,
    \opt_has_pipe.first_q_reg[0] ,
    Q,
    aclk,
    O,
    \RESULT_REG.NORMAL.exp_op_reg[4] ,
    \RESULT_REG.NORMAL.exp_op_reg[4]_0 ,
    \RESULT_REG.NORMAL.exp_op_reg[4]_1 ,
    \RESULT_REG.NORMAL.exp_op_reg[4]_2 ,
    out,
    NORM_DIST,
    \RESULT_REG.NORMAL.exp_op_reg[1] );
  output [2:0]DI;
  output [3:0]\opt_has_pipe.i_pipe[3].pipe_reg[3][3] ;
  output [3:0]D;
  output [0:0]S;
  output [2:0]\opt_has_pipe.i_pipe[3].pipe_reg[3][6] ;
  output \opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0 ;
  output \opt_has_pipe.first_q_reg[0] ;
  input [6:0]Q;
  input aclk;
  input [2:0]O;
  input [3:0]\RESULT_REG.NORMAL.exp_op_reg[4] ;
  input \RESULT_REG.NORMAL.exp_op_reg[4]_0 ;
  input \RESULT_REG.NORMAL.exp_op_reg[4]_1 ;
  input \RESULT_REG.NORMAL.exp_op_reg[4]_2 ;
  input [0:0]out;
  input [1:0]NORM_DIST;
  input [0:0]\RESULT_REG.NORMAL.exp_op_reg[1] ;

  wire [3:0]D;
  wire [2:0]DI;
  wire [1:0]NORM_DIST;
  wire [2:0]O;
  wire [6:0]Q;
  wire [0:0]\RESULT_REG.NORMAL.exp_op_reg[1] ;
  wire [3:0]\RESULT_REG.NORMAL.exp_op_reg[4] ;
  wire \RESULT_REG.NORMAL.exp_op_reg[4]_0 ;
  wire \RESULT_REG.NORMAL.exp_op_reg[4]_1 ;
  wire \RESULT_REG.NORMAL.exp_op_reg[4]_2 ;
  wire [0:0]S;
  wire aclk;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire [3:0]\opt_has_pipe.i_pipe[3].pipe_reg[3][3] ;
  wire \opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0 ;
  wire [2:0]\opt_has_pipe.i_pipe[3].pipe_reg[3][6] ;
  wire [0:0]out;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized63 i_pipe
       (.D(D),
        .DI(DI),
        .NORM_DIST(NORM_DIST),
        .O(O),
        .Q(Q),
        .\RESULT_REG.NORMAL.exp_op_reg[1] (\RESULT_REG.NORMAL.exp_op_reg[1] ),
        .\RESULT_REG.NORMAL.exp_op_reg[4] (\RESULT_REG.NORMAL.exp_op_reg[4] ),
        .\RESULT_REG.NORMAL.exp_op_reg[4]_0 (\RESULT_REG.NORMAL.exp_op_reg[4]_0 ),
        .\RESULT_REG.NORMAL.exp_op_reg[4]_1 (\RESULT_REG.NORMAL.exp_op_reg[4]_1 ),
        .\RESULT_REG.NORMAL.exp_op_reg[4]_2 (\RESULT_REG.NORMAL.exp_op_reg[4]_2 ),
        .S(S),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0 (\opt_has_pipe.i_pipe[3].pipe_reg[3][3] ),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][3]_1 (\opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0 ),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][6]_0 (\opt_has_pipe.i_pipe[3].pipe_reg[3][6] ),
        .out(out));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized40
   (lrg_almost_over_del,
    \opt_has_pipe.first_q_reg[0] ,
    lrg_almost_over__0,
    aclk,
    cancellation,
    add_mant_msbs_del);
  output lrg_almost_over_del;
  output \opt_has_pipe.first_q_reg[0] ;
  input lrg_almost_over__0;
  input aclk;
  input cancellation;
  input [0:0]add_mant_msbs_del;

  wire aclk;
  wire [0:0]add_mant_msbs_del;
  wire cancellation;
  wire lrg_almost_over__0;
  wire lrg_almost_over_del;
  wire \opt_has_pipe.first_q_reg[0] ;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized65 i_pipe
       (.aclk(aclk),
        .add_mant_msbs_del(add_mant_msbs_del),
        .cancellation(cancellation),
        .lrg_almost_over__0(lrg_almost_over__0),
        .lrg_almost_over_del(lrg_almost_over_del),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized5
   (out,
    zero_align_align,
    aclk);
  output out;
  input zero_align_align;
  input aclk;

  wire aclk;
  wire out;
  wire zero_align_align;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized13_15 i_pipe
       (.aclk(aclk),
        .out(out),
        .zero_align_align(zero_align_align));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized5_12
   (out,
    zeros_add,
    aclk);
  output out;
  input zeros_add;
  input aclk;

  wire aclk;
  wire out;
  wire zeros_add;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized13 i_pipe
       (.aclk(aclk),
        .out(out),
        .zeros_add(zeros_add));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fp16_sub_delay__parameterized9
   (p_8_out,
    aclk,
    \opt_has_pipe.first_q_reg[4] ,
    \opt_has_pipe.first_q_reg[3] ,
    \opt_has_pipe.first_q_reg[2] ,
    \opt_has_pipe.first_q_reg[1] ,
    \opt_has_pipe.first_q_reg[0] ,
    minusOp,
    CO);
  output [5:0]p_8_out;
  input aclk;
  input \opt_has_pipe.first_q_reg[4] ;
  input \opt_has_pipe.first_q_reg[3] ;
  input \opt_has_pipe.first_q_reg[2] ;
  input \opt_has_pipe.first_q_reg[1] ;
  input \opt_has_pipe.first_q_reg[0] ;
  input [1:0]minusOp;
  input [0:0]CO;

  wire [0:0]CO;
  wire aclk;
  wire [1:0]minusOp;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[1] ;
  wire \opt_has_pipe.first_q_reg[2] ;
  wire \opt_has_pipe.first_q_reg[3] ;
  wire \opt_has_pipe.first_q_reg[4] ;
  wire [5:0]p_8_out;

  fp16_sub_xbip_pipe_v3_0_5_viv__parameterized17 i_pipe
       (.CO(CO),
        .aclk(aclk),
        .minusOp(minusOp),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[1]_0 (\opt_has_pipe.first_q_reg[1] ),
        .\opt_has_pipe.first_q_reg[2]_0 (\opt_has_pipe.first_q_reg[2] ),
        .\opt_has_pipe.first_q_reg[3]_0 (\opt_has_pipe.first_q_reg[3] ),
        .\opt_has_pipe.first_q_reg[4]_0 (\opt_has_pipe.first_q_reg[4] ),
        .p_8_out(p_8_out));
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
(* C_HAS_MULTIPLY = "0" *) (* C_HAS_OPERATION = "0" *) (* C_HAS_OPERATION_TLAST = "0" *) 
(* C_HAS_OPERATION_TUSER = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_RECIP = "0" *) 
(* C_HAS_RECIP_SQRT = "0" *) (* C_HAS_RESULT_TLAST = "0" *) (* C_HAS_RESULT_TUSER = "0" *) 
(* C_HAS_SQRT = "0" *) (* C_HAS_SUBTRACT = "1" *) (* C_HAS_UNDERFLOW = "0" *) 
(* C_LATENCY = "4" *) (* C_MULT_USAGE = "0" *) (* C_OPERATION_TDATA_WIDTH = "8" *) 
(* C_OPERATION_TUSER_WIDTH = "1" *) (* C_OPTIMIZATION = "1" *) (* C_RATE = "1" *) 
(* C_RESULT_FRACTION_WIDTH = "17" *) (* C_RESULT_TDATA_WIDTH = "24" *) (* C_RESULT_TUSER_WIDTH = "1" *) 
(* C_RESULT_WIDTH = "24" *) (* C_THROTTLE_SCHEME = "3" *) (* C_TLAST_RESOLUTION = "0" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "floating_point_v7_1_7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module fp16_sub_floating_point_v7_1_7
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
  (* C_HAS_MULTIPLY = "0" *) 
  (* C_HAS_OPERATION = "0" *) 
  (* C_HAS_OPERATION_TLAST = "0" *) 
  (* C_HAS_OPERATION_TUSER = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_RECIP = "0" *) 
  (* C_HAS_RECIP_SQRT = "0" *) 
  (* C_HAS_RESULT_TLAST = "0" *) 
  (* C_HAS_RESULT_TUSER = "0" *) 
  (* C_HAS_SQRT = "0" *) 
  (* C_HAS_SUBTRACT = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MULT_USAGE = "0" *) 
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
  fp16_sub_floating_point_v7_1_7_viv i_synth
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
(* C_HAS_MULTIPLY = "0" *) (* C_HAS_OPERATION = "0" *) (* C_HAS_OPERATION_TLAST = "0" *) 
(* C_HAS_OPERATION_TUSER = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_RECIP = "0" *) 
(* C_HAS_RECIP_SQRT = "0" *) (* C_HAS_RESULT_TLAST = "0" *) (* C_HAS_RESULT_TUSER = "0" *) 
(* C_HAS_SQRT = "0" *) (* C_HAS_SUBTRACT = "1" *) (* C_HAS_UNDERFLOW = "0" *) 
(* C_LATENCY = "4" *) (* C_MULT_USAGE = "0" *) (* C_OPERATION_TDATA_WIDTH = "8" *) 
(* C_OPERATION_TUSER_WIDTH = "1" *) (* C_OPTIMIZATION = "1" *) (* C_RATE = "1" *) 
(* C_RESULT_FRACTION_WIDTH = "17" *) (* C_RESULT_TDATA_WIDTH = "24" *) (* C_RESULT_TUSER_WIDTH = "1" *) 
(* C_RESULT_WIDTH = "24" *) (* C_THROTTLE_SCHEME = "3" *) (* C_TLAST_RESOLUTION = "0" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "floating_point_v7_1_7_viv" *) (* downgradeipidentifiedwarnings = "yes" *) 
module fp16_sub_floating_point_v7_1_7_viv
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
  fp16_sub_flt_add \ADDSUB_OP.ADDSUB 
       (.aclk(aclk),
        .m_axis_result_tdata(m_axis_result_tdata),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_b_tdata(s_axis_b_tdata));
  GND GND
       (.G(\<const0> ));
  fp16_sub_xbip_pipe_v3_0_5_viv i_nd_to_rdy
       (.aclk(aclk),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tvalid(s_axis_b_tvalid));
endmodule

(* ORIG_REF_NAME = "flt_add" *) 
module fp16_sub_flt_add
   (m_axis_result_tdata,
    aclk,
    s_axis_a_tdata,
    s_axis_b_tdata);
  output [23:0]m_axis_result_tdata;
  input aclk;
  input [23:0]s_axis_a_tdata;
  input [23:0]s_axis_b_tdata;

  wire aclk;
  wire [23:0]m_axis_result_tdata;
  wire [23:0]s_axis_a_tdata;
  wire [23:0]s_axis_b_tdata;

  fp16_sub_flt_add_logic \SPEED_OP.LOGIC.OP 
       (.aclk(aclk),
        .m_axis_result_tdata(m_axis_result_tdata),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_b_tdata(s_axis_b_tdata));
endmodule

(* ORIG_REF_NAME = "flt_add_exp" *) 
module fp16_sub_flt_add_exp
   (DI,
    \s_axis_b_tdata[22] ,
    CO,
    D,
    \s_axis_b_tdata[15] ,
    subtract,
    \s_axis_b_tdata[16] ,
    \s_axis_a_tdata[16] ,
    first_q0,
    s_axis_b_tdata_19_sp_1,
    s_axis_a_tdata_0_sp_1,
    A,
    s_axis_a_tdata_4_sp_1,
    s_axis_a_tdata_8_sp_1,
    s_axis_a_tdata_12_sp_1,
    s_axis_b_tdata_14_sp_1,
    zero_align_align,
    abs_dist_mux,
    \s_axis_b_tdata[19]_0 ,
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0] ,
    op_state,
    op_sign,
    aclk,
    add_mant,
    s_axis_b_tdata,
    \opt_has_pipe.first_q_reg[0] ,
    S,
    \RESULT_REG.NORMAL.exp_op_reg[3] ,
    out,
    NORM_DIST,
    zero_largest,
    s_axis_a_tdata,
    Q,
    align_dist_0_ip__0,
    \RESULT_REG.NORMAL.exp_op_reg[2] ,
    \RESULT_REG.NORMAL.exp_op_reg[2]_0 ,
    \RESULT_REG.NORMAL.exp_op_reg[2]_1 ,
    cancellation);
  output [3:0]DI;
  output [4:0]\s_axis_b_tdata[22] ;
  output [0:0]CO;
  output [6:0]D;
  output [15:0]\s_axis_b_tdata[15] ;
  output subtract;
  output [10:0]\s_axis_b_tdata[16] ;
  output [6:0]\s_axis_a_tdata[16] ;
  output first_q0;
  output s_axis_b_tdata_19_sp_1;
  output s_axis_a_tdata_0_sp_1;
  output [3:0]A;
  output s_axis_a_tdata_4_sp_1;
  output s_axis_a_tdata_8_sp_1;
  output s_axis_a_tdata_12_sp_1;
  output s_axis_b_tdata_14_sp_1;
  output zero_align_align;
  output [0:0]abs_dist_mux;
  output \s_axis_b_tdata[19]_0 ;
  output \opt_has_pipe.i_pipe[3].pipe_reg[3][0] ;
  output [0:0]op_state;
  output op_sign;
  input aclk;
  input [0:0]add_mant;
  input [23:0]s_axis_b_tdata;
  input [3:0]\opt_has_pipe.first_q_reg[0] ;
  input [2:0]S;
  input [2:0]\RESULT_REG.NORMAL.exp_op_reg[3] ;
  input [0:0]out;
  input [1:0]NORM_DIST;
  input zero_largest;
  input [23:0]s_axis_a_tdata;
  input [1:0]Q;
  input align_dist_0_ip__0;
  input \RESULT_REG.NORMAL.exp_op_reg[2] ;
  input \RESULT_REG.NORMAL.exp_op_reg[2]_0 ;
  input \RESULT_REG.NORMAL.exp_op_reg[2]_1 ;
  input cancellation;

  wire [3:0]A;
  wire [0:0]CO;
  wire [6:0]D;
  wire [3:0]DI;
  wire \EXP_OFF.LRG_EXP_DELAY_n_0 ;
  wire \EXP_OFF.LRG_EXP_DELAY_n_1 ;
  wire \EXP_OFF.LRG_EXP_DELAY_n_11 ;
  wire \EXP_OFF.LRG_EXP_DELAY_n_12 ;
  wire \EXP_OFF.LRG_EXP_DELAY_n_13 ;
  wire \EXP_OFF.LRG_EXP_DELAY_n_14 ;
  wire \EXP_OFF.LRG_EXP_DELAY_n_15 ;
  wire \EXP_OFF.LRG_EXP_DELAY_n_16 ;
  wire \EXP_OFF.LRG_EXP_DELAY_n_2 ;
  wire \EXP_OFF.LRG_OVER_NORMAL.LRG_ALMOST_OVER_DELAY_n_1 ;
  wire [1:0]NORM_DIST;
  wire [1:0]Q;
  wire \RESULT_REG.NORMAL.exp_op[4]_i_2_n_0 ;
  wire \RESULT_REG.NORMAL.exp_op_reg[2] ;
  wire \RESULT_REG.NORMAL.exp_op_reg[2]_0 ;
  wire \RESULT_REG.NORMAL.exp_op_reg[2]_1 ;
  wire [2:0]\RESULT_REG.NORMAL.exp_op_reg[3] ;
  wire [2:0]S;
  wire STATE_DELAY_n_3;
  wire STATE_DELAY_n_4;
  wire STATE_DELAY_n_7;
  wire a_exp_flt_all_one;
  wire a_is_inf__0;
  wire a_mant_is_zero;
  wire [0:0]abs_dist_mux;
  wire aclk;
  wire [0:0]add_mant;
  wire [1:1]add_mant_msbs_del;
  wire align_dist_0_ip__0;
  wire b_exp_flt_all_one;
  wire b_largest;
  wire cancellation;
  wire det_invalid_op;
  wire det_sign;
  wire det_sign_del;
  wire [1:0]det_state;
  wire [7:0]ext_largest_exp;
  wire first_q0;
  wire lrg_almost_over__0;
  wire lrg_almost_over_del;
  wire [6:5]minusOp;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire \minusOp_inferred__0/i__carry__0_n_0 ;
  wire \minusOp_inferred__0/i__carry__0_n_2 ;
  wire \minusOp_inferred__0/i__carry__0_n_3 ;
  wire \minusOp_inferred__0/i__carry__0_n_5 ;
  wire \minusOp_inferred__0/i__carry__0_n_6 ;
  wire \minusOp_inferred__0/i__carry__0_n_7 ;
  wire \minusOp_inferred__0/i__carry_n_0 ;
  wire \minusOp_inferred__0/i__carry_n_1 ;
  wire \minusOp_inferred__0/i__carry_n_2 ;
  wire \minusOp_inferred__0/i__carry_n_3 ;
  wire \minusOp_inferred__0/i__carry_n_4 ;
  wire \minusOp_inferred__0/i__carry_n_5 ;
  wire \minusOp_inferred__0/i__carry_n_6 ;
  wire \minusOp_inferred__0/i__carry_n_7 ;
  wire op_sign;
  wire [0:0]op_state;
  wire \opt_has_pipe.first_q[0]_i_2__2_n_0 ;
  wire \opt_has_pipe.first_q[0]_i_3__1_n_0 ;
  wire \opt_has_pipe.first_q[10]_i_2_n_0 ;
  wire \opt_has_pipe.first_q[10]_i_3_n_0 ;
  wire [3:0]\opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_i_2_n_0 ;
  wire \opt_has_pipe.i_pipe[3].pipe_reg[3][0] ;
  wire [0:0]out;
  wire [23:0]s_axis_a_tdata;
  wire [6:0]\s_axis_a_tdata[16] ;
  wire s_axis_a_tdata_0_sn_1;
  wire s_axis_a_tdata_12_sn_1;
  wire s_axis_a_tdata_4_sn_1;
  wire s_axis_a_tdata_8_sn_1;
  wire [23:0]s_axis_b_tdata;
  wire [15:0]\s_axis_b_tdata[15] ;
  wire [10:0]\s_axis_b_tdata[16] ;
  wire \s_axis_b_tdata[19]_0 ;
  wire [4:0]\s_axis_b_tdata[22] ;
  wire s_axis_b_tdata_14_sn_1;
  wire s_axis_b_tdata_19_sn_1;
  wire subtract;
  wire zero_align_align;
  wire zero_largest;
  wire [2:2]NLW_minusOp_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__0_O_UNCONNECTED;
  wire [2:2]\NLW_minusOp_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_minusOp_inferred__0/i__carry__0_O_UNCONNECTED ;

  assign s_axis_a_tdata_0_sp_1 = s_axis_a_tdata_0_sn_1;
  assign s_axis_a_tdata_12_sp_1 = s_axis_a_tdata_12_sn_1;
  assign s_axis_a_tdata_4_sp_1 = s_axis_a_tdata_4_sn_1;
  assign s_axis_a_tdata_8_sp_1 = s_axis_a_tdata_8_sn_1;
  assign s_axis_b_tdata_14_sp_1 = s_axis_b_tdata_14_sn_1;
  assign s_axis_b_tdata_19_sp_1 = s_axis_b_tdata_19_sn_1;
  fp16_sub_special_detect COND_DET_A
       (.CARRY_OUT(a_mant_is_zero),
        .a_is_inf__0(a_is_inf__0),
        .\opt_has_pipe.first_q_reg[0] (STATE_DELAY_n_7),
        .s_axis_a_tdata(s_axis_a_tdata[18:0]));
  fp16_sub_special_detect_5 COND_DET_B
       (.CARRY_OUT(a_mant_is_zero),
        .D(det_state),
        .a_exp_flt_all_one(a_exp_flt_all_one),
        .a_is_inf__0(a_is_inf__0),
        .b_exp_flt_all_one(b_exp_flt_all_one),
        .det_invalid_op(det_invalid_op),
        .det_sign(det_sign),
        .\opt_has_pipe.first_q_reg[0] (b_largest),
        .s_axis_a_tdata(s_axis_a_tdata[23]),
        .s_axis_b_tdata({s_axis_b_tdata[23],s_axis_b_tdata[15:0]}),
        .subtract(subtract),
        .zero_largest(zero_largest));
  fp16_sub_delay__parameterized38 DET_SIGN_DELAY
       (.aclk(aclk),
        .det_sign(det_sign),
        .det_sign_del(det_sign_del));
  fp16_sub_delay__parameterized39 \EXP_OFF.LRG_EXP_DELAY 
       (.D({D[6:4],D[1]}),
        .DI({\EXP_OFF.LRG_EXP_DELAY_n_0 ,\EXP_OFF.LRG_EXP_DELAY_n_1 ,\EXP_OFF.LRG_EXP_DELAY_n_2 }),
        .NORM_DIST(NORM_DIST),
        .O({\minusOp_inferred__0/i__carry__0_n_5 ,\minusOp_inferred__0/i__carry__0_n_6 ,\minusOp_inferred__0/i__carry__0_n_7 }),
        .Q(ext_largest_exp[6:0]),
        .\RESULT_REG.NORMAL.exp_op_reg[1] (Q[1]),
        .\RESULT_REG.NORMAL.exp_op_reg[4] ({\minusOp_inferred__0/i__carry_n_4 ,\minusOp_inferred__0/i__carry_n_5 ,\minusOp_inferred__0/i__carry_n_6 ,\minusOp_inferred__0/i__carry_n_7 }),
        .\RESULT_REG.NORMAL.exp_op_reg[4]_0 (\RESULT_REG.NORMAL.exp_op[4]_i_2_n_0 ),
        .\RESULT_REG.NORMAL.exp_op_reg[4]_1 (STATE_DELAY_n_4),
        .\RESULT_REG.NORMAL.exp_op_reg[4]_2 (STATE_DELAY_n_3),
        .S(\EXP_OFF.LRG_EXP_DELAY_n_11 ),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[0] (\EXP_OFF.LRG_EXP_DELAY_n_16 ),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][3] (DI),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0 (\EXP_OFF.LRG_EXP_DELAY_n_15 ),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][6] ({\EXP_OFF.LRG_EXP_DELAY_n_12 ,\EXP_OFF.LRG_EXP_DELAY_n_13 ,\EXP_OFF.LRG_EXP_DELAY_n_14 }),
        .out(out));
  fp16_sub_delay__parameterized40 \EXP_OFF.LRG_OVER_NORMAL.LRG_ALMOST_OVER_DELAY 
       (.aclk(aclk),
        .add_mant_msbs_del(add_mant_msbs_del),
        .cancellation(cancellation),
        .lrg_almost_over__0(lrg_almost_over__0),
        .lrg_almost_over_del(lrg_almost_over_del),
        .\opt_has_pipe.first_q_reg[0] (\EXP_OFF.LRG_OVER_NORMAL.LRG_ALMOST_OVER_DELAY_n_1 ));
  fp16_sub_carry_chain__parameterized10 \EXP_OFF.STRUCT_ADD 
       (.CO(CO),
        .Q(ext_largest_exp),
        .s_axis_a_tdata(s_axis_a_tdata[22:16]),
        .s_axis_b_tdata(s_axis_b_tdata[22:16]));
  fp16_sub_delay__parameterized37 INV_OP_DEL
       (.aclk(aclk),
        .det_invalid_op(det_invalid_op));
  fp16_sub_delay__parameterized10_6 \NORMAL_NORM_DIST.ADD_MANT_DELAY 
       (.aclk(aclk),
        .add_mant(add_mant),
        .add_mant_msbs_del(add_mant_msbs_del));
  fp16_sub_compare NUMB_CMP
       (.A(A),
        .CARRYS_OUT(b_largest),
        .align_dist_0_ip__0(align_dist_0_ip__0),
        .\opt_has_pipe.first_q_reg[0] (first_q0),
        .\opt_has_pipe.first_q_reg[0]_0 (s_axis_b_tdata_19_sn_1),
        .\opt_has_pipe.first_q_reg[10] (\opt_has_pipe.first_q[10]_i_2_n_0 ),
        .\opt_has_pipe.first_q_reg[10]_0 (\opt_has_pipe.first_q[10]_i_3_n_0 ),
        .s_axis_a_tdata(s_axis_a_tdata[22:0]),
        .\s_axis_a_tdata[16] (\s_axis_a_tdata[16] ),
        .s_axis_a_tdata_0_sp_1(s_axis_a_tdata_0_sn_1),
        .s_axis_a_tdata_12_sp_1(s_axis_a_tdata_12_sn_1),
        .s_axis_a_tdata_4_sp_1(s_axis_a_tdata_4_sn_1),
        .s_axis_a_tdata_8_sp_1(s_axis_a_tdata_8_sn_1),
        .s_axis_b_tdata(s_axis_b_tdata[22:0]),
        .\s_axis_b_tdata[15] (\s_axis_b_tdata[15] ),
        .\s_axis_b_tdata[16] (\s_axis_b_tdata[16] ),
        .s_axis_b_tdata_14_sp_1(s_axis_b_tdata_14_sn_1),
        .zero_largest(zero_largest));
  LUT3 #(
    .INIT(8'hDF)) 
    \RESULT_REG.NORMAL.exp_op[4]_i_2 
       (.I0(\minusOp_inferred__0/i__carry_n_6 ),
        .I1(Q[1]),
        .I2(\minusOp_inferred__0/i__carry_n_7 ),
        .O(\RESULT_REG.NORMAL.exp_op[4]_i_2_n_0 ));
  fp16_sub_delay__parameterized36 STATE_DELAY
       (.CO(\minusOp_inferred__0/i__carry__0_n_0 ),
        .D({D[3:2],D[0]}),
        .Q(Q),
        .\RESULT_REG.NORMAL.exp_op_reg[2] (\RESULT_REG.NORMAL.exp_op_reg[2] ),
        .\RESULT_REG.NORMAL.exp_op_reg[2]_0 (\RESULT_REG.NORMAL.exp_op_reg[2]_0 ),
        .\RESULT_REG.NORMAL.exp_op_reg[2]_1 (\EXP_OFF.LRG_EXP_DELAY_n_16 ),
        .\RESULT_REG.NORMAL.exp_op_reg[2]_2 (\RESULT_REG.NORMAL.exp_op_reg[2]_1 ),
        .\RESULT_REG.NORMAL.exp_op_reg[2]_3 (\EXP_OFF.LRG_OVER_NORMAL.LRG_ALMOST_OVER_DELAY_n_1 ),
        .\RESULT_REG.NORMAL.exp_op_reg[3] ({\minusOp_inferred__0/i__carry_n_4 ,\minusOp_inferred__0/i__carry_n_5 ,\minusOp_inferred__0/i__carry_n_6 ,\minusOp_inferred__0/i__carry_n_7 }),
        .\RESULT_REG.NORMAL.exp_op_reg[3]_0 (\EXP_OFF.LRG_EXP_DELAY_n_15 ),
        .a_exp_flt_all_one(a_exp_flt_all_one),
        .aclk(aclk),
        .add_mant_msbs_del(add_mant_msbs_del),
        .b_exp_flt_all_one(b_exp_flt_all_one),
        .cancellation(cancellation),
        .det_sign_del(det_sign_del),
        .lrg_almost_over_del(lrg_almost_over_del),
        .op_sign(op_sign),
        .op_state(op_state),
        .\opt_has_pipe.first_q_reg[1] (det_state),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][0] (STATE_DELAY_n_3),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 (\opt_has_pipe.i_pipe[3].pipe_reg[3][0] ),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][1] (STATE_DELAY_n_4),
        .s_axis_a_tdata(s_axis_a_tdata[23:16]),
        .\s_axis_a_tdata[22] (STATE_DELAY_n_7),
        .s_axis_b_tdata(s_axis_b_tdata[23:16]),
        .subtract(subtract));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI(s_axis_b_tdata[19:16]),
        .O(\s_axis_b_tdata[22] [3:0]),
        .S(\opt_has_pipe.first_q_reg[0] ));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({CO,NLW_minusOp_carry__0_CO_UNCONNECTED[2],minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,s_axis_b_tdata[22:20]}),
        .O({NLW_minusOp_carry__0_O_UNCONNECTED[3],minusOp,\s_axis_b_tdata[22] [4]}),
        .S({1'b1,S}));
  CARRY4 \minusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\minusOp_inferred__0/i__carry_n_0 ,\minusOp_inferred__0/i__carry_n_1 ,\minusOp_inferred__0/i__carry_n_2 ,\minusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(DI),
        .O({\minusOp_inferred__0/i__carry_n_4 ,\minusOp_inferred__0/i__carry_n_5 ,\minusOp_inferred__0/i__carry_n_6 ,\minusOp_inferred__0/i__carry_n_7 }),
        .S({\RESULT_REG.NORMAL.exp_op_reg[3] [2],\EXP_OFF.LRG_EXP_DELAY_n_11 ,\RESULT_REG.NORMAL.exp_op_reg[3] [1:0]}));
  CARRY4 \minusOp_inferred__0/i__carry__0 
       (.CI(\minusOp_inferred__0/i__carry_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__0_n_0 ,\NLW_minusOp_inferred__0/i__carry__0_CO_UNCONNECTED [2],\minusOp_inferred__0/i__carry__0_n_2 ,\minusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\EXP_OFF.LRG_EXP_DELAY_n_0 ,\EXP_OFF.LRG_EXP_DELAY_n_1 ,\EXP_OFF.LRG_EXP_DELAY_n_2 }),
        .O({\NLW_minusOp_inferred__0/i__carry__0_O_UNCONNECTED [3],\minusOp_inferred__0/i__carry__0_n_5 ,\minusOp_inferred__0/i__carry__0_n_6 ,\minusOp_inferred__0/i__carry__0_n_7 }),
        .S({1'b1,\EXP_OFF.LRG_EXP_DELAY_n_12 ,\EXP_OFF.LRG_EXP_DELAY_n_13 ,\EXP_OFF.LRG_EXP_DELAY_n_14 }));
  LUT5 #(
    .INIT(32'hFFFF6FF9)) 
    \opt_has_pipe.first_q[0]_i_1__4 
       (.I0(\opt_has_pipe.first_q[0]_i_2__2_n_0 ),
        .I1(CO),
        .I2(minusOp[5]),
        .I3(minusOp[6]),
        .I4(\opt_has_pipe.first_q[0]_i_3__1_n_0 ),
        .O(zero_align_align));
  LUT6 #(
    .INIT(64'hFFFF00010000FFFE)) 
    \opt_has_pipe.first_q[0]_i_1__5 
       (.I0(\s_axis_b_tdata[22] [2]),
        .I1(\s_axis_b_tdata[22] [0]),
        .I2(\s_axis_b_tdata[22] [1]),
        .I3(\s_axis_b_tdata[22] [3]),
        .I4(CO),
        .I5(\s_axis_b_tdata[22] [4]),
        .O(first_q0));
  LUT3 #(
    .INIT(8'hD2)) 
    \opt_has_pipe.first_q[0]_i_1__6 
       (.I0(\s_axis_b_tdata[22] [0]),
        .I1(CO),
        .I2(\s_axis_b_tdata[22] [1]),
        .O(abs_dist_mux));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \opt_has_pipe.first_q[0]_i_2__2 
       (.I0(\s_axis_b_tdata[22] [4]),
        .I1(\s_axis_b_tdata[22] [2]),
        .I2(\s_axis_b_tdata[22] [0]),
        .I3(CO),
        .I4(\s_axis_b_tdata[22] [1]),
        .I5(\s_axis_b_tdata[22] [3]),
        .O(\opt_has_pipe.first_q[0]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hA1A5A185A585A584)) 
    \opt_has_pipe.first_q[0]_i_3__1 
       (.I0(\s_axis_b_tdata[22] [4]),
        .I1(\s_axis_b_tdata[22] [3]),
        .I2(CO),
        .I3(\s_axis_b_tdata[22] [2]),
        .I4(\s_axis_b_tdata[22] [0]),
        .I5(\s_axis_b_tdata[22] [1]),
        .O(\opt_has_pipe.first_q[0]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h4242424242424260)) 
    \opt_has_pipe.first_q[10]_i_2 
       (.I0(\s_axis_b_tdata[22] [4]),
        .I1(CO),
        .I2(\s_axis_b_tdata[22] [3]),
        .I3(\s_axis_b_tdata[22] [1]),
        .I4(\s_axis_b_tdata[22] [0]),
        .I5(\s_axis_b_tdata[22] [2]),
        .O(\opt_has_pipe.first_q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2424242424242405)) 
    \opt_has_pipe.first_q[10]_i_3 
       (.I0(\s_axis_b_tdata[22] [4]),
        .I1(CO),
        .I2(\s_axis_b_tdata[22] [3]),
        .I3(\s_axis_b_tdata[22] [1]),
        .I4(\s_axis_b_tdata[22] [0]),
        .I5(\s_axis_b_tdata[22] [2]),
        .O(\opt_has_pipe.first_q[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF10E)) 
    \opt_has_pipe.first_q[1]_i_1__2 
       (.I0(\s_axis_b_tdata[22] [0]),
        .I1(\s_axis_b_tdata[22] [1]),
        .I2(CO),
        .I3(\s_axis_b_tdata[22] [2]),
        .O(\s_axis_b_tdata[19]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFF0100FE)) 
    \opt_has_pipe.first_q[1]_i_1__3 
       (.I0(\s_axis_b_tdata[22] [1]),
        .I1(\s_axis_b_tdata[22] [0]),
        .I2(\s_axis_b_tdata[22] [2]),
        .I3(CO),
        .I4(\s_axis_b_tdata[22] [3]),
        .O(s_axis_b_tdata_19_sn_1));
  LUT5 #(
    .INIT(32'h00000800)) 
    \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_i_1 
       (.I0(ext_largest_exp[5]),
        .I1(ext_largest_exp[4]),
        .I2(ext_largest_exp[7]),
        .I3(ext_largest_exp[6]),
        .I4(\opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_i_2_n_0 ),
        .O(lrg_almost_over__0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_i_2 
       (.I0(ext_largest_exp[2]),
        .I1(ext_largest_exp[3]),
        .I2(ext_largest_exp[0]),
        .I3(ext_largest_exp[1]),
        .O(\opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "flt_add_logic" *) 
module fp16_sub_flt_add_logic
   (m_axis_result_tdata,
    aclk,
    s_axis_a_tdata,
    s_axis_b_tdata);
  output [23:0]m_axis_result_tdata;
  input aclk;
  input [23:0]s_axis_a_tdata;
  input [23:0]s_axis_b_tdata;

  wire ALIGN_BLK_n_21;
  wire ALIGN_BLK_n_22;
  wire ALIGN_BLK_n_23;
  wire ALIGN_BLK_n_24;
  wire ALIGN_BLK_n_25;
  wire ALIGN_BLK_n_26;
  wire ALIGN_BLK_n_27;
  wire [3:0]\ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det ;
  wire EXP_n_0;
  wire EXP_n_1;
  wire EXP_n_12;
  wire EXP_n_14;
  wire EXP_n_2;
  wire EXP_n_3;
  wire EXP_n_34;
  wire EXP_n_35;
  wire EXP_n_36;
  wire EXP_n_37;
  wire EXP_n_38;
  wire EXP_n_39;
  wire EXP_n_40;
  wire EXP_n_41;
  wire EXP_n_42;
  wire EXP_n_43;
  wire EXP_n_44;
  wire EXP_n_53;
  wire EXP_n_54;
  wire EXP_n_59;
  wire EXP_n_60;
  wire EXP_n_61;
  wire EXP_n_62;
  wire EXP_n_65;
  wire EXP_n_66;
  wire EXP_n_9;
  wire [4:3]NORM_DIST;
  wire NORM_n_2;
  wire NORM_n_3;
  wire NORM_n_4;
  wire NORM_n_7;
  wire NORM_n_8;
  wire NORM_n_9;
  wire [8:8]\ROUND/p_0_out ;
  wire [1:1]abs_dist_mux;
  wire aclk;
  wire [19:0]add_mant;
  wire align_dist_0_ip__0;
  wire cancellation;
  wire [6:0]exp_pre_op;
  wire first_q0;
  wire [15:0]lrg_mant_z_mux;
  wire [23:0]m_axis_result_tdata;
  wire [4:0]minusOp;
  wire [2:2]norm_dist;
  wire op_sign;
  wire [5:5]op_state;
  wire [15:0]round_mant;
  wire [23:0]s_axis_a_tdata;
  wire [23:0]s_axis_b_tdata;
  wire [16:10]sml_shift_mux__16;
  wire subtract;
  wire zero_align_align;
  wire zero_largest;
  wire zeros;

  fp16_sub_align_add ALIGN_BLK
       (.A(\ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det ),
        .CO(EXP_n_9),
        .D({EXP_n_34,EXP_n_35,EXP_n_36,EXP_n_37,EXP_n_38,EXP_n_39,EXP_n_40,EXP_n_41,EXP_n_42,EXP_n_43,EXP_n_44}),
        .S({ALIGN_BLK_n_21,ALIGN_BLK_n_22,ALIGN_BLK_n_23}),
        .abs_dist_mux(abs_dist_mux),
        .aclk(aclk),
        .add_mant(add_mant),
        .align_dist_0_ip__0(align_dist_0_ip__0),
        .first_q0(first_q0),
        .minusOp(minusOp),
        .\opt_has_pipe.first_q_reg[0] (EXP_n_54),
        .\opt_has_pipe.first_q_reg[1] (EXP_n_53),
        .\opt_has_pipe.first_q_reg[1]_0 (EXP_n_65),
        .\opt_has_pipe.first_q_reg[1]_1 (EXP_n_59),
        .\opt_has_pipe.first_q_reg[2] (EXP_n_60),
        .\opt_has_pipe.first_q_reg[3] (EXP_n_61),
        .\opt_has_pipe.first_q_reg[4] (EXP_n_62),
        .\opt_has_pipe.first_q_reg[8] (lrg_mant_z_mux),
        .out(zeros),
        .s_axis_a_tdata(s_axis_a_tdata[22:16]),
        .s_axis_b_tdata(s_axis_b_tdata[22:16]),
        .\s_axis_b_tdata[19] ({ALIGN_BLK_n_24,ALIGN_BLK_n_25,ALIGN_BLK_n_26,ALIGN_BLK_n_27}),
        .sml_shift_mux__16(sml_shift_mux__16),
        .subtract(subtract),
        .zero_align_align(zero_align_align),
        .zero_largest(zero_largest));
  fp16_sub_flt_add_exp EXP
       (.A(\ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det ),
        .CO(EXP_n_9),
        .D({exp_pre_op[6:5],EXP_n_12,exp_pre_op[3],EXP_n_14,exp_pre_op[1:0]}),
        .DI({EXP_n_0,EXP_n_1,EXP_n_2,EXP_n_3}),
        .NORM_DIST(NORM_DIST),
        .Q({\ROUND/p_0_out ,round_mant[15]}),
        .\RESULT_REG.NORMAL.exp_op_reg[2] (NORM_n_9),
        .\RESULT_REG.NORMAL.exp_op_reg[2]_0 (NORM_n_8),
        .\RESULT_REG.NORMAL.exp_op_reg[2]_1 (NORM_n_7),
        .\RESULT_REG.NORMAL.exp_op_reg[3] ({NORM_n_2,NORM_n_3,NORM_n_4}),
        .S({ALIGN_BLK_n_21,ALIGN_BLK_n_22,ALIGN_BLK_n_23}),
        .abs_dist_mux(abs_dist_mux),
        .aclk(aclk),
        .add_mant(add_mant[19]),
        .align_dist_0_ip__0(align_dist_0_ip__0),
        .cancellation(cancellation),
        .first_q0(first_q0),
        .op_sign(op_sign),
        .op_state(op_state),
        .\opt_has_pipe.first_q_reg[0] ({ALIGN_BLK_n_24,ALIGN_BLK_n_25,ALIGN_BLK_n_26,ALIGN_BLK_n_27}),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][0] (EXP_n_66),
        .out(norm_dist),
        .s_axis_a_tdata(s_axis_a_tdata),
        .\s_axis_a_tdata[16] (sml_shift_mux__16),
        .s_axis_a_tdata_0_sp_1(EXP_n_54),
        .s_axis_a_tdata_12_sp_1(EXP_n_61),
        .s_axis_a_tdata_4_sp_1(EXP_n_59),
        .s_axis_a_tdata_8_sp_1(EXP_n_60),
        .s_axis_b_tdata(s_axis_b_tdata),
        .\s_axis_b_tdata[15] (lrg_mant_z_mux),
        .\s_axis_b_tdata[16] ({EXP_n_34,EXP_n_35,EXP_n_36,EXP_n_37,EXP_n_38,EXP_n_39,EXP_n_40,EXP_n_41,EXP_n_42,EXP_n_43,EXP_n_44}),
        .\s_axis_b_tdata[19]_0 (EXP_n_65),
        .\s_axis_b_tdata[22] (minusOp),
        .s_axis_b_tdata_14_sp_1(EXP_n_62),
        .s_axis_b_tdata_19_sp_1(EXP_n_53),
        .subtract(subtract),
        .zero_align_align(zero_align_align),
        .zero_largest(zero_largest));
  fp16_sub_norm_and_round_logic NORM
       (.DI({EXP_n_0,EXP_n_1,EXP_n_2,EXP_n_3}),
        .NORM_DIST(NORM_DIST),
        .Q(\ROUND/p_0_out ),
        .aclk(aclk),
        .add_mant(add_mant),
        .cancellation(cancellation),
        .\opt_has_pipe.first_q_reg[0] (NORM_n_9),
        .\opt_has_pipe.first_q_reg[0]_0 (zeros),
        .\opt_has_pipe.first_q_reg[1] ({NORM_n_2,NORM_n_3,NORM_n_4}),
        .\opt_has_pipe.first_q_reg[1]_0 (NORM_n_7),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][0] (NORM_n_8),
        .out(norm_dist),
        .round_mant(round_mant));
  fp16_sub_flt_dec_op OP
       (.D({exp_pre_op[6:5],EXP_n_12,exp_pre_op[3],EXP_n_14,exp_pre_op[1:0]}),
        .\RESULT_REG.NORMAL.mant_op_reg[15]_0 (EXP_n_66),
        .aclk(aclk),
        .m_axis_result_tdata(m_axis_result_tdata),
        .op_sign(op_sign),
        .op_state(op_state),
        .round_mant(round_mant[14:0]));
endmodule

(* ORIG_REF_NAME = "flt_dec_op" *) 
module fp16_sub_flt_dec_op
   (m_axis_result_tdata,
    op_state,
    round_mant,
    aclk,
    \RESULT_REG.NORMAL.mant_op_reg[15]_0 ,
    op_sign,
    D);
  output [23:0]m_axis_result_tdata;
  input [0:0]op_state;
  input [14:0]round_mant;
  input aclk;
  input \RESULT_REG.NORMAL.mant_op_reg[15]_0 ;
  input op_sign;
  input [6:0]D;

  wire [6:0]D;
  wire \RESULT_REG.NORMAL.mant_op_reg[15]_0 ;
  wire aclk;
  wire [23:0]m_axis_result_tdata;
  wire op_sign;
  wire [0:0]op_state;
  wire [14:0]round_mant;

  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.exp_op_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(m_axis_result_tdata[16]),
        .R(1'b0));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.exp_op_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(m_axis_result_tdata[17]),
        .R(1'b0));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.exp_op_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(m_axis_result_tdata[18]),
        .R(1'b0));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.exp_op_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(m_axis_result_tdata[19]),
        .R(1'b0));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.exp_op_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(m_axis_result_tdata[20]),
        .R(1'b0));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.exp_op_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(m_axis_result_tdata[21]),
        .R(1'b0));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.exp_op_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(m_axis_result_tdata[22]),
        .R(1'b0));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[0]),
        .Q(m_axis_result_tdata[0]),
        .R(op_state));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[10]),
        .Q(m_axis_result_tdata[10]),
        .R(op_state));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[11]),
        .Q(m_axis_result_tdata[11]),
        .R(op_state));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[12]),
        .Q(m_axis_result_tdata[12]),
        .R(op_state));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[13]),
        .Q(m_axis_result_tdata[13]),
        .R(op_state));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[14]),
        .Q(m_axis_result_tdata[14]),
        .R(op_state));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\RESULT_REG.NORMAL.mant_op_reg[15]_0 ),
        .Q(m_axis_result_tdata[15]),
        .R(1'b0));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[1]),
        .Q(m_axis_result_tdata[1]),
        .R(op_state));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[2]),
        .Q(m_axis_result_tdata[2]),
        .R(op_state));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[3]),
        .Q(m_axis_result_tdata[3]),
        .R(op_state));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[4]),
        .Q(m_axis_result_tdata[4]),
        .R(op_state));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[5]),
        .Q(m_axis_result_tdata[5]),
        .R(op_state));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[6]),
        .Q(m_axis_result_tdata[6]),
        .R(op_state));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[7]),
        .Q(m_axis_result_tdata[7]),
        .R(op_state));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[8]),
        .Q(m_axis_result_tdata[8]),
        .R(op_state));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[9]),
        .Q(m_axis_result_tdata[9]),
        .R(op_state));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.sign_op_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(op_sign),
        .Q(m_axis_result_tdata[23]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flt_round_bit" *) 
module fp16_sub_flt_round_bit
   (CARRY_OUT,
    A,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  output CARRY_OUT;
  input [1:0]A;
  output lopt;
  input lopt_1;
  input lopt_2;
  output lopt_3;

  wire [1:0]A;
  wire CARRY_OUT;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;

  fp16_sub_carry_chain__parameterized4 \NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1 
       (.A(A),
        .CARRY_OUT(CARRY_OUT),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3));
endmodule

(* ORIG_REF_NAME = "lead_zero_encode" *) 
module fp16_sub_lead_zero_encode
   (out,
    cancellation,
    CARRYS_OUT,
    \opt_has_pipe.first_q_reg[1] ,
    \opt_has_pipe.first_q_reg[1]_0 ,
    NORM_DIST,
    \CHAIN_GEN[3].C_MUX.CARRY_MUX ,
    A,
    \opt_has_pipe.first_q_reg[2] ,
    \opt_has_pipe.first_q_reg[1]_1 ,
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0] ,
    \opt_has_pipe.first_q_reg[0] ,
    \opt_has_pipe.first_q_reg[0]_0 ,
    aclk,
    DI,
    \RESULT_REG.NORMAL.mant_op_reg[1] ,
    \CHAIN_GEN[2].C_MUX.CARRY_MUX ,
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ,
    \RESULT_REG.NORMAL.mant_op_reg[1]_0 ,
    \RESULT_REG.NORMAL.mant_op_reg[3] ,
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6 ,
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 ,
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1 ,
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8 ,
    zeros_del,
    add_mant);
  output [2:0]out;
  output cancellation;
  output [1:0]CARRYS_OUT;
  output [2:0]\opt_has_pipe.first_q_reg[1] ;
  output \opt_has_pipe.first_q_reg[1]_0 ;
  output [1:0]NORM_DIST;
  output \CHAIN_GEN[3].C_MUX.CARRY_MUX ;
  output [0:0]A;
  output [2:0]\opt_has_pipe.first_q_reg[2] ;
  output \opt_has_pipe.first_q_reg[1]_1 ;
  output \opt_has_pipe.i_pipe[3].pipe_reg[3][0] ;
  output \opt_has_pipe.first_q_reg[0] ;
  output \opt_has_pipe.first_q_reg[0]_0 ;
  input aclk;
  input [3:0]DI;
  input \RESULT_REG.NORMAL.mant_op_reg[1] ;
  input \CHAIN_GEN[2].C_MUX.CARRY_MUX ;
  input \CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ;
  input \RESULT_REG.NORMAL.mant_op_reg[1]_0 ;
  input \RESULT_REG.NORMAL.mant_op_reg[3] ;
  input \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6 ;
  input \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 ;
  input \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1 ;
  input \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8 ;
  input zeros_del;
  input [19:0]add_mant;

  wire [0:0]A;
  wire [1:0]CARRYS_OUT;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8 ;
  wire \CHAIN_GEN[3].C_MUX.CARRY_MUX ;
  wire [3:0]DI;
  wire \ENCODE[0].MUX_0_n_3 ;
  wire \ENCODE[0].MUX_0_n_4 ;
  wire [1:0]NORM_DIST;
  wire \RESULT_REG.NORMAL.mant_op_reg[1] ;
  wire \RESULT_REG.NORMAL.mant_op_reg[1]_0 ;
  wire \RESULT_REG.NORMAL.mant_op_reg[3] ;
  wire \ZERO_DET_CC_2.CC_n_0 ;
  wire aclk;
  wire [19:0]add_mant;
  wire [6:0]c_int;
  wire cancellation;
  wire [9:0]chunk_is_zero;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire [2:0]\opt_has_pipe.first_q_reg[1] ;
  wire \opt_has_pipe.first_q_reg[1]_0 ;
  wire \opt_has_pipe.first_q_reg[1]_1 ;
  wire [2:0]\opt_has_pipe.first_q_reg[2] ;
  wire \opt_has_pipe.i_pipe[3].pipe_reg[3][0] ;
  wire [2:0]out;
  wire [1:0]p_0_out;
  wire zeros_del;

  fp16_sub_delay__parameterized1_0 A_Z_DET
       (.aclk(aclk),
        .cancellation(cancellation),
        .\opt_has_pipe.first_q_reg[0] (\ZERO_DET_CC_2.CC_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 
       (.I0(add_mant[19]),
        .I1(add_mant[18]),
        .O(chunk_is_zero[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0 
       (.I0(add_mant[3]),
        .I1(add_mant[2]),
        .O(chunk_is_zero[8]));
  LUT2 #(
    .INIT(4'h1)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 
       (.I0(add_mant[17]),
        .I1(add_mant[16]),
        .O(chunk_is_zero[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__0 
       (.I0(add_mant[1]),
        .I1(add_mant[0]),
        .O(chunk_is_zero[9]));
  LUT2 #(
    .INIT(4'h1)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 
       (.I0(add_mant[15]),
        .I1(add_mant[14]),
        .O(chunk_is_zero[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 
       (.I0(add_mant[13]),
        .I1(add_mant[12]),
        .O(chunk_is_zero[3]));
  LUT2 #(
    .INIT(4'h1)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 
       (.I0(add_mant[11]),
        .I1(add_mant[10]),
        .O(chunk_is_zero[4]));
  LUT2 #(
    .INIT(4'h1)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 
       (.I0(add_mant[9]),
        .I1(add_mant[8]),
        .O(chunk_is_zero[5]));
  LUT2 #(
    .INIT(4'h1)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 
       (.I0(add_mant[7]),
        .I1(add_mant[6]),
        .O(chunk_is_zero[6]));
  LUT2 #(
    .INIT(4'h1)) 
    \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1 
       (.I0(add_mant[5]),
        .I1(add_mant[4]),
        .O(chunk_is_zero[7]));
  fp16_sub_delay__parameterized10 \ENCODE[0].DIST_DEL 
       (.CARRYS_OUT(CARRYS_OUT),
        .DI(DI[3]),
        .NORM_DIST(NORM_DIST),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[1] (\opt_has_pipe.first_q_reg[1] [2]));
  fp16_sub_mux4 \ENCODE[0].MUX_0 
       (.CARRYS_OUT(CARRYS_OUT),
        .DI(DI[0]),
        .aclk(aclk),
        .add_mant({add_mant[19],add_mant[17],add_mant[15],add_mant[13],add_mant[11],add_mant[9],add_mant[7],add_mant[5],add_mant[3],add_mant[1]}),
        .\opt_has_pipe.first_q_reg[0] (\ENCODE[0].MUX_0_n_4 ),
        .\opt_has_pipe.first_q_reg[1] (\opt_has_pipe.first_q_reg[1]_0 ),
        .\opt_has_pipe.first_q_reg[3] (\ENCODE[0].MUX_0_n_3 ),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][0] (\opt_has_pipe.first_q_reg[1] [0]),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 (\opt_has_pipe.i_pipe[3].pipe_reg[3][0] ),
        .out(out));
  fp16_sub_mux4_1 \ENCODE[0].MUX_Z 
       (.A(A),
        .CARRYS_OUT({CARRYS_OUT[1],c_int[6:4],CARRYS_OUT[0],c_int[2:0]}),
        .\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6 (\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6 ),
        .\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 (\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 ),
        .\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1 (\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1 ),
        .\CHAIN_GEN[2].C_MUX.CARRY_MUX (\CHAIN_GEN[2].C_MUX.CARRY_MUX ),
        .\CHAIN_GEN[2].C_MUX.CARRY_MUX_0 (\CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ),
        .\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8 (\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8 ),
        .DI(DI[2:0]),
        .\RESULT_REG.NORMAL.exp_op[6]_i_4 (\ENCODE[0].MUX_0_n_4 ),
        .\RESULT_REG.NORMAL.exp_op[6]_i_4_0 (\ENCODE[0].MUX_0_n_3 ),
        .\RESULT_REG.NORMAL.mant_op_reg[1] (\RESULT_REG.NORMAL.mant_op_reg[1] ),
        .\RESULT_REG.NORMAL.mant_op_reg[1]_0 (\RESULT_REG.NORMAL.mant_op_reg[1]_0 ),
        .\RESULT_REG.NORMAL.mant_op_reg[3] (\opt_has_pipe.first_q_reg[1]_0 ),
        .\RESULT_REG.NORMAL.mant_op_reg[3]_0 (\RESULT_REG.NORMAL.mant_op_reg[3] ),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[1] [1]),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[0]_1 (\opt_has_pipe.first_q_reg[0]_0 ),
        .\opt_has_pipe.first_q_reg[1] (\opt_has_pipe.first_q_reg[1]_1 ),
        .\opt_has_pipe.first_q_reg[1]_0 (p_0_out),
        .\opt_has_pipe.first_q_reg[2] (\opt_has_pipe.first_q_reg[2] ),
        .out(out),
        .zeros_del(zeros_del));
  fp16_sub_carry_chain__parameterized2 ZERO_DET_CC_1
       (.A(chunk_is_zero[7:0]),
        .CARRYS_OUT({CARRYS_OUT[1],c_int[6:4],CARRYS_OUT[0],c_int[2:0]}),
        .\CHAIN_GEN[3].C_MUX.CARRY_MUX_0 (\CHAIN_GEN[3].C_MUX.CARRY_MUX ));
  fp16_sub_carry_chain__parameterized3 \ZERO_DET_CC_2.CC 
       (.A(chunk_is_zero[9:8]),
        .CARRYS_OUT(CARRYS_OUT[1]),
        .\CHAIN_GEN[7].C_MUX.CARRY_MUX (\ZERO_DET_CC_2.CC_n_0 ),
        .\opt_has_pipe.first_q_reg[1] (p_0_out));
endmodule

(* ORIG_REF_NAME = "mux4" *) 
module fp16_sub_mux4
   (\opt_has_pipe.i_pipe[3].pipe_reg[3][0] ,
    \opt_has_pipe.first_q_reg[1] ,
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ,
    \opt_has_pipe.first_q_reg[3] ,
    \opt_has_pipe.first_q_reg[0] ,
    DI,
    out,
    aclk,
    CARRYS_OUT,
    add_mant);
  output [0:0]\opt_has_pipe.i_pipe[3].pipe_reg[3][0] ;
  output \opt_has_pipe.first_q_reg[1] ;
  output \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ;
  output \opt_has_pipe.first_q_reg[3] ;
  output \opt_has_pipe.first_q_reg[0] ;
  input [0:0]DI;
  input [2:0]out;
  input aclk;
  input [1:0]CARRYS_OUT;
  input [9:0]add_mant;

  wire [1:0]CARRYS_OUT;
  wire [0:0]DI;
  wire aclk;
  wire [9:0]add_mant;
  wire [3:2]op_a;
  wire [1:0]op_int;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[1] ;
  wire \opt_has_pipe.first_q_reg[3] ;
  wire [0:0]\opt_has_pipe.i_pipe[3].pipe_reg[3][0] ;
  wire \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ;
  wire [2:0]out;

  fp16_sub_delay__parameterized23_2 OP_DEL
       (.CARRYS_OUT(CARRYS_OUT[1]),
        .D(op_int),
        .DI(DI),
        .aclk(aclk),
        .op_a(op_a),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[1] (\opt_has_pipe.first_q_reg[1] ),
        .\opt_has_pipe.first_q_reg[3] (\opt_has_pipe.first_q_reg[3] ),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][0] (\opt_has_pipe.i_pipe[3].pipe_reg[3][0] ),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 (\opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ),
        .out(out));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \opt_has_pipe.first_q[0]_i_1 
       (.I0(add_mant[1]),
        .I1(CARRYS_OUT[1]),
        .I2(add_mant[5]),
        .I3(CARRYS_OUT[0]),
        .I4(add_mant[9]),
        .O(op_int[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \opt_has_pipe.first_q[1]_i_1 
       (.I0(add_mant[0]),
        .I1(CARRYS_OUT[1]),
        .I2(add_mant[4]),
        .I3(CARRYS_OUT[0]),
        .I4(add_mant[8]),
        .O(op_int[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[2]_i_1 
       (.I0(add_mant[3]),
        .I1(CARRYS_OUT[0]),
        .I2(add_mant[7]),
        .O(op_a[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[3]_i_1 
       (.I0(add_mant[2]),
        .I1(CARRYS_OUT[0]),
        .I2(add_mant[6]),
        .O(op_a[3]));
endmodule

(* ORIG_REF_NAME = "mux4" *) 
module fp16_sub_mux4_1
   (out,
    \opt_has_pipe.first_q_reg[0] ,
    A,
    \opt_has_pipe.first_q_reg[2] ,
    \opt_has_pipe.first_q_reg[1] ,
    \opt_has_pipe.first_q_reg[0]_0 ,
    \opt_has_pipe.first_q_reg[0]_1 ,
    DI,
    \RESULT_REG.NORMAL.mant_op_reg[3] ,
    \RESULT_REG.NORMAL.mant_op_reg[1] ,
    \CHAIN_GEN[2].C_MUX.CARRY_MUX ,
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ,
    \RESULT_REG.NORMAL.mant_op_reg[1]_0 ,
    \RESULT_REG.NORMAL.mant_op_reg[3]_0 ,
    \RESULT_REG.NORMAL.exp_op[6]_i_4 ,
    \RESULT_REG.NORMAL.exp_op[6]_i_4_0 ,
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6 ,
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 ,
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1 ,
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8 ,
    zeros_del,
    aclk,
    CARRYS_OUT,
    \opt_has_pipe.first_q_reg[1]_0 );
  output [2:0]out;
  output [0:0]\opt_has_pipe.first_q_reg[0] ;
  output [0:0]A;
  output [2:0]\opt_has_pipe.first_q_reg[2] ;
  output \opt_has_pipe.first_q_reg[1] ;
  output \opt_has_pipe.first_q_reg[0]_0 ;
  output \opt_has_pipe.first_q_reg[0]_1 ;
  input [2:0]DI;
  input \RESULT_REG.NORMAL.mant_op_reg[3] ;
  input \RESULT_REG.NORMAL.mant_op_reg[1] ;
  input \CHAIN_GEN[2].C_MUX.CARRY_MUX ;
  input \CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ;
  input \RESULT_REG.NORMAL.mant_op_reg[1]_0 ;
  input \RESULT_REG.NORMAL.mant_op_reg[3]_0 ;
  input \RESULT_REG.NORMAL.exp_op[6]_i_4 ;
  input \RESULT_REG.NORMAL.exp_op[6]_i_4_0 ;
  input \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6 ;
  input \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 ;
  input \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1 ;
  input \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8 ;
  input zeros_del;
  input aclk;
  input [7:0]CARRYS_OUT;
  input [1:0]\opt_has_pipe.first_q_reg[1]_0 ;

  wire [0:0]A;
  wire [7:0]CARRYS_OUT;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8 ;
  wire [2:0]DI;
  wire \RESULT_REG.NORMAL.exp_op[6]_i_4 ;
  wire \RESULT_REG.NORMAL.exp_op[6]_i_4_0 ;
  wire \RESULT_REG.NORMAL.mant_op_reg[1] ;
  wire \RESULT_REG.NORMAL.mant_op_reg[1]_0 ;
  wire \RESULT_REG.NORMAL.mant_op_reg[3] ;
  wire \RESULT_REG.NORMAL.mant_op_reg[3]_0 ;
  wire aclk;
  wire [2:2]op_a__0;
  wire [1:0]op_int;
  wire [0:0]\opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire \opt_has_pipe.first_q_reg[0]_1 ;
  wire \opt_has_pipe.first_q_reg[1] ;
  wire [1:0]\opt_has_pipe.first_q_reg[1]_0 ;
  wire [2:0]\opt_has_pipe.first_q_reg[2] ;
  wire [2:0]out;
  wire zeros_del;

  fp16_sub_delay__parameterized23 OP_DEL
       (.A(A),
        .CARRYS_OUT(CARRYS_OUT[7]),
        .\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6 (\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6 ),
        .\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 (\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 ),
        .\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1 (\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1 ),
        .\CHAIN_GEN[2].C_MUX.CARRY_MUX (\CHAIN_GEN[2].C_MUX.CARRY_MUX ),
        .\CHAIN_GEN[2].C_MUX.CARRY_MUX_0 (\CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ),
        .\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8 (\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8 ),
        .D(op_int),
        .DI(DI),
        .\RESULT_REG.NORMAL.exp_op[6]_i_4 (\RESULT_REG.NORMAL.exp_op[6]_i_4 ),
        .\RESULT_REG.NORMAL.exp_op[6]_i_4_0 (\RESULT_REG.NORMAL.exp_op[6]_i_4_0 ),
        .\RESULT_REG.NORMAL.mant_op_reg[1] (\RESULT_REG.NORMAL.mant_op_reg[1] ),
        .\RESULT_REG.NORMAL.mant_op_reg[1]_0 (\RESULT_REG.NORMAL.mant_op_reg[1]_0 ),
        .\RESULT_REG.NORMAL.mant_op_reg[3] (\RESULT_REG.NORMAL.mant_op_reg[3] ),
        .\RESULT_REG.NORMAL.mant_op_reg[3]_0 (\RESULT_REG.NORMAL.mant_op_reg[3]_0 ),
        .aclk(aclk),
        .op_a__0(op_a__0),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0]_0 ),
        .\opt_has_pipe.first_q_reg[0]_1 (\opt_has_pipe.first_q_reg[0]_1 ),
        .\opt_has_pipe.first_q_reg[1] (\opt_has_pipe.first_q_reg[1] ),
        .\opt_has_pipe.first_q_reg[2] (\opt_has_pipe.first_q_reg[2] ),
        .out(out),
        .zeros_del(zeros_del));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \opt_has_pipe.first_q[0]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[1]_0 [0]),
        .I1(CARRYS_OUT[7]),
        .I2(CARRYS_OUT[4]),
        .I3(CARRYS_OUT[3]),
        .I4(CARRYS_OUT[0]),
        .O(op_int[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \opt_has_pipe.first_q[1]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[1]_0 [1]),
        .I1(CARRYS_OUT[7]),
        .I2(CARRYS_OUT[5]),
        .I3(CARRYS_OUT[3]),
        .I4(CARRYS_OUT[1]),
        .O(op_int[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[2]_i_1 
       (.I0(CARRYS_OUT[6]),
        .I1(CARRYS_OUT[3]),
        .I2(CARRYS_OUT[2]),
        .O(op_a__0));
endmodule

(* ORIG_REF_NAME = "norm_and_round_logic" *) 
module fp16_sub_norm_and_round_logic
   (out,
    cancellation,
    \opt_has_pipe.first_q_reg[1] ,
    NORM_DIST,
    \opt_has_pipe.first_q_reg[1]_0 ,
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0] ,
    \opt_has_pipe.first_q_reg[0] ,
    round_mant,
    Q,
    \opt_has_pipe.first_q_reg[0]_0 ,
    aclk,
    DI,
    add_mant);
  output [0:0]out;
  output cancellation;
  output [2:0]\opt_has_pipe.first_q_reg[1] ;
  output [1:0]NORM_DIST;
  output \opt_has_pipe.first_q_reg[1]_0 ;
  output \opt_has_pipe.i_pipe[3].pipe_reg[3][0] ;
  output \opt_has_pipe.first_q_reg[0] ;
  output [15:0]round_mant;
  output [0:0]Q;
  input \opt_has_pipe.first_q_reg[0]_0 ;
  input aclk;
  input [3:0]DI;
  input [19:0]add_mant;

  wire [3:0]DI;
  wire LZE_n_12;
  wire LZE_n_20;
  wire LZE_n_9;
  wire [1:0]NORM_DIST;
  wire NORM_SHIFT_n_13;
  wire NORM_SHIFT_n_14;
  wire NORM_SHIFT_n_15;
  wire NORM_SHIFT_n_16;
  wire NORM_SHIFT_n_17;
  wire NORM_SHIFT_n_18;
  wire NORM_SHIFT_n_19;
  wire NORM_SHIFT_n_20;
  wire NORM_SHIFT_n_22;
  wire [0:0]Q;
  wire [2:0]\RND_BIT_GEN/a_ip ;
  wire aclk;
  wire [19:0]add_mant;
  wire [3:3]c_int;
  wire cancellation;
  wire [7:0]mant_shifted_rnd1;
  wire [4:4]norm_dist_skew;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire [2:0]\opt_has_pipe.first_q_reg[1] ;
  wire \opt_has_pipe.first_q_reg[1]_0 ;
  wire \opt_has_pipe.i_pipe[3].pipe_reg[3][0] ;
  wire [0:0]out;
  wire [2:0]p_5_out;
  wire [15:0]round_mant;
  wire [7:0]sum_rnd2;
  wire zeros_del;

  fp16_sub_lead_zero_encode LZE
       (.A(\RND_BIT_GEN/a_ip [2]),
        .CARRYS_OUT({norm_dist_skew,c_int}),
        .\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6 (NORM_SHIFT_n_18),
        .\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 (NORM_SHIFT_n_19),
        .\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1 (NORM_SHIFT_n_20),
        .\CHAIN_GEN[2].C_MUX.CARRY_MUX (NORM_SHIFT_n_15),
        .\CHAIN_GEN[2].C_MUX.CARRY_MUX_0 (NORM_SHIFT_n_22),
        .\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8 (NORM_SHIFT_n_17),
        .\CHAIN_GEN[3].C_MUX.CARRY_MUX (LZE_n_12),
        .DI(DI),
        .NORM_DIST(NORM_DIST),
        .\RESULT_REG.NORMAL.mant_op_reg[1] (NORM_SHIFT_n_13),
        .\RESULT_REG.NORMAL.mant_op_reg[1]_0 (NORM_SHIFT_n_14),
        .\RESULT_REG.NORMAL.mant_op_reg[3] (NORM_SHIFT_n_16),
        .aclk(aclk),
        .add_mant(add_mant),
        .cancellation(cancellation),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[0]_0 (LZE_n_20),
        .\opt_has_pipe.first_q_reg[1] (\opt_has_pipe.first_q_reg[1] ),
        .\opt_has_pipe.first_q_reg[1]_0 (LZE_n_9),
        .\opt_has_pipe.first_q_reg[1]_1 (\opt_has_pipe.first_q_reg[1]_0 ),
        .\opt_has_pipe.first_q_reg[2] (mant_shifted_rnd1[3:1]),
        .\opt_has_pipe.i_pipe[3].pipe_reg[3][0] (\opt_has_pipe.i_pipe[3].pipe_reg[3][0] ),
        .out({p_5_out[2],out,p_5_out[0]}),
        .zeros_del(zeros_del));
  fp16_sub_shift_msb_first__parameterized0 NORM_SHIFT
       (.A(sum_rnd2),
        .CARRYS_OUT({norm_dist_skew,c_int}),
        .\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5 (LZE_n_20),
        .\RESULT_REG.NORMAL.mant_op_reg[14] (LZE_n_9),
        .aclk(aclk),
        .add_mant(add_mant[18:0]),
        .\opt_has_pipe.first_q_reg[0] (\RND_BIT_GEN/a_ip [0]),
        .\opt_has_pipe.first_q_reg[12] (LZE_n_12),
        .\opt_has_pipe.first_q_reg[14] (NORM_SHIFT_n_17),
        .\opt_has_pipe.first_q_reg[15] (NORM_SHIFT_n_19),
        .\opt_has_pipe.first_q_reg[16] ({mant_shifted_rnd1[7:4],mant_shifted_rnd1[0]}),
        .\opt_has_pipe.first_q_reg[16]_0 (NORM_SHIFT_n_14),
        .\opt_has_pipe.first_q_reg[16]_1 (NORM_SHIFT_n_22),
        .\opt_has_pipe.first_q_reg[17] (NORM_SHIFT_n_15),
        .\opt_has_pipe.first_q_reg[17]_0 (NORM_SHIFT_n_20),
        .\opt_has_pipe.first_q_reg[18] (NORM_SHIFT_n_13),
        .\opt_has_pipe.first_q_reg[19] (NORM_SHIFT_n_16),
        .\opt_has_pipe.first_q_reg[19]_0 (NORM_SHIFT_n_18),
        .out({p_5_out[2],out,p_5_out[0]}),
        .zeros_del(zeros_del));
  fp16_sub_renorm_and_round_logic ROUND
       (.A({\RND_BIT_GEN/a_ip [2],\RND_BIT_GEN/a_ip [0]}),
        .Q(Q),
        .\RESULT_REG.NORMAL.mant_op_reg[15] (sum_rnd2),
        .\RESULT_REG.NORMAL.mant_op_reg[7] (mant_shifted_rnd1),
        .round_mant(round_mant));
  fp16_sub_delay__parameterized1 ZEROS_DELAY
       (.aclk(aclk),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0]_0 ),
        .zeros_del(zeros_del));
endmodule

(* ORIG_REF_NAME = "renorm_and_round_logic" *) 
module fp16_sub_renorm_and_round_logic
   (round_mant,
    Q,
    A,
    \RESULT_REG.NORMAL.mant_op_reg[7] ,
    \RESULT_REG.NORMAL.mant_op_reg[15] );
  output [15:0]round_mant;
  output [0:0]Q;
  input [1:0]A;
  input [7:0]\RESULT_REG.NORMAL.mant_op_reg[7] ;
  input [7:0]\RESULT_REG.NORMAL.mant_op_reg[15] ;

  wire [1:0]A;
  wire [0:0]Q;
  wire [7:0]\RESULT_REG.NORMAL.mant_op_reg[15] ;
  wire [7:0]\RESULT_REG.NORMAL.mant_op_reg[7] ;
  wire carry_rnd2;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire [15:0]round_mant;
  wire round_rnd1;

  fp16_sub_carry_chain__parameterized5 \LOGIC.RND1 
       (.CARRYS_OUT(round_rnd1),
        .CARRY_OUT(carry_rnd2),
        .\RESULT_REG.NORMAL.mant_op_reg[7] (\RESULT_REG.NORMAL.mant_op_reg[7] ),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(\RESULT_REG.NORMAL.mant_op_reg[15] [0]),
        .lopt_6(lopt_5),
        .round_mant(round_mant[7:0]));
  fp16_sub_carry_chain__parameterized6 \LOGIC.RND2 
       (.CARRY_IN(carry_rnd2),
        .Q({Q,round_mant[15:8]}),
        .\RESULT_REG.NORMAL.mant_op_reg[15] (\RESULT_REG.NORMAL.mant_op_reg[15] ),
        .lopt(lopt_3),
        .lopt_1(lopt_4),
        .lopt_2(lopt_5));
  fp16_sub_flt_round_bit RND_BIT_GEN
       (.A(A),
        .CARRY_OUT(round_rnd1),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(\RESULT_REG.NORMAL.mant_op_reg[7] [0]),
        .lopt_3(lopt_2));
endmodule

(* ORIG_REF_NAME = "shift_msb_first" *) 
module fp16_sub_shift_msb_first
   (\opt_has_pipe.first_q_reg[1] ,
    S,
    \s_axis_b_tdata[19] ,
    align_dist_0_ip__0,
    \opt_has_pipe.first_q_reg[14] ,
    \opt_has_pipe.first_q_reg[16] ,
    \opt_has_pipe.first_q_reg[12] ,
    \opt_has_pipe.first_q_reg[13] ,
    \opt_has_pipe.first_q_reg[15] ,
    \opt_has_pipe.first_q_reg[11] ,
    \opt_has_pipe.first_q_reg[10] ,
    \opt_has_pipe.first_q_reg[9] ,
    \opt_has_pipe.first_q_reg[8] ,
    \opt_has_pipe.first_q_reg[7] ,
    \opt_has_pipe.first_q_reg[6] ,
    A,
    \opt_has_pipe.first_q_reg[18] ,
    \opt_has_pipe.first_q_reg[17] ,
    abs_dist_mux,
    aclk,
    \opt_has_pipe.first_q_reg[1]_0 ,
    s_axis_a_tdata,
    s_axis_b_tdata,
    out,
    zero_sml_preadd,
    \opt_has_pipe.first_q_reg[8]_0 ,
    \opt_has_pipe.first_q_reg[8]_1 ,
    Q,
    D,
    sml_shift_mux__16,
    minusOp,
    CO);
  output \opt_has_pipe.first_q_reg[1] ;
  output [2:0]S;
  output [3:0]\s_axis_b_tdata[19] ;
  output align_dist_0_ip__0;
  output \opt_has_pipe.first_q_reg[14] ;
  output \opt_has_pipe.first_q_reg[16] ;
  output \opt_has_pipe.first_q_reg[12] ;
  output \opt_has_pipe.first_q_reg[13] ;
  output \opt_has_pipe.first_q_reg[15] ;
  output \opt_has_pipe.first_q_reg[11] ;
  output \opt_has_pipe.first_q_reg[10] ;
  output \opt_has_pipe.first_q_reg[9] ;
  output \opt_has_pipe.first_q_reg[8] ;
  output \opt_has_pipe.first_q_reg[7] ;
  output \opt_has_pipe.first_q_reg[6] ;
  output [5:0]A;
  output \opt_has_pipe.first_q_reg[18] ;
  output \opt_has_pipe.first_q_reg[17] ;
  input [0:0]abs_dist_mux;
  input aclk;
  input \opt_has_pipe.first_q_reg[1]_0 ;
  input [6:0]s_axis_a_tdata;
  input [6:0]s_axis_b_tdata;
  input out;
  input zero_sml_preadd;
  input \opt_has_pipe.first_q_reg[8]_0 ;
  input [0:0]\opt_has_pipe.first_q_reg[8]_1 ;
  input [5:0]Q;
  input [10:0]D;
  input [6:0]sml_shift_mux__16;
  input [4:0]minusOp;
  input [0:0]CO;

  wire [5:0]A;
  wire [0:0]CO;
  wire [10:0]D;
  wire \MUX_LOOP[0].DEL_SHIFT_n_10 ;
  wire \MUX_LOOP[0].DEL_SHIFT_n_14 ;
  wire \MUX_LOOP[0].DEL_SHIFT_n_23 ;
  wire \MUX_LOOP[0].DEL_SHIFT_n_25 ;
  wire \MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST_n_0 ;
  wire [5:0]Q;
  wire [2:0]S;
  wire [0:0]abs_dist_mux;
  wire aclk;
  wire align_dist_0_ip__0;
  wire [4:0]minusOp;
  wire \opt_has_pipe.first_q_reg[10] ;
  wire \opt_has_pipe.first_q_reg[11] ;
  wire \opt_has_pipe.first_q_reg[12] ;
  wire \opt_has_pipe.first_q_reg[13] ;
  wire \opt_has_pipe.first_q_reg[14] ;
  wire \opt_has_pipe.first_q_reg[15] ;
  wire \opt_has_pipe.first_q_reg[16] ;
  wire \opt_has_pipe.first_q_reg[17] ;
  wire \opt_has_pipe.first_q_reg[18] ;
  wire \opt_has_pipe.first_q_reg[1] ;
  wire \opt_has_pipe.first_q_reg[1]_0 ;
  wire \opt_has_pipe.first_q_reg[6] ;
  wire \opt_has_pipe.first_q_reg[7] ;
  wire \opt_has_pipe.first_q_reg[8] ;
  wire \opt_has_pipe.first_q_reg[8]_0 ;
  wire [0:0]\opt_has_pipe.first_q_reg[8]_1 ;
  wire \opt_has_pipe.first_q_reg[9] ;
  wire out;
  wire [6:0]s_axis_a_tdata;
  wire [6:0]s_axis_b_tdata;
  wire [3:0]\s_axis_b_tdata[19] ;
  wire [6:0]sml_shift_mux__16;
  wire zero_sml_preadd;

  fp16_sub_delay__parameterized11 \MUX_LOOP[0].DEL_SHIFT 
       (.A(A[1:0]),
        .\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 (\opt_has_pipe.first_q_reg[1] ),
        .\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 (\MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST_n_0 ),
        .CO(CO),
        .D(D),
        .Q(Q[1:0]),
        .S(S),
        .aclk(aclk),
        .align_dist_0_ip__0(align_dist_0_ip__0),
        .minusOp(minusOp),
        .\opt_has_pipe.first_q_reg[10] (\opt_has_pipe.first_q_reg[10] ),
        .\opt_has_pipe.first_q_reg[11] (\opt_has_pipe.first_q_reg[11] ),
        .\opt_has_pipe.first_q_reg[12] (\opt_has_pipe.first_q_reg[12] ),
        .\opt_has_pipe.first_q_reg[13] (\opt_has_pipe.first_q_reg[13] ),
        .\opt_has_pipe.first_q_reg[14] (\opt_has_pipe.first_q_reg[14] ),
        .\opt_has_pipe.first_q_reg[15] (\opt_has_pipe.first_q_reg[15] ),
        .\opt_has_pipe.first_q_reg[15]_0 (\MUX_LOOP[0].DEL_SHIFT_n_14 ),
        .\opt_has_pipe.first_q_reg[16] (\opt_has_pipe.first_q_reg[16] ),
        .\opt_has_pipe.first_q_reg[16]_0 (\MUX_LOOP[0].DEL_SHIFT_n_10 ),
        .\opt_has_pipe.first_q_reg[17] (\MUX_LOOP[0].DEL_SHIFT_n_25 ),
        .\opt_has_pipe.first_q_reg[17]_0 (\opt_has_pipe.first_q_reg[17] ),
        .\opt_has_pipe.first_q_reg[18] (\MUX_LOOP[0].DEL_SHIFT_n_23 ),
        .\opt_has_pipe.first_q_reg[18]_0 (\opt_has_pipe.first_q_reg[18] ),
        .\opt_has_pipe.first_q_reg[5] (\opt_has_pipe.first_q_reg[8]_1 ),
        .\opt_has_pipe.first_q_reg[6] (\opt_has_pipe.first_q_reg[6] ),
        .\opt_has_pipe.first_q_reg[7] (\opt_has_pipe.first_q_reg[7] ),
        .\opt_has_pipe.first_q_reg[8] (\opt_has_pipe.first_q_reg[8] ),
        .\opt_has_pipe.first_q_reg[9] (\opt_has_pipe.first_q_reg[9] ),
        .out(out),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_b_tdata(s_axis_b_tdata),
        .\s_axis_b_tdata[19] (\s_axis_b_tdata[19] ),
        .sml_shift_mux__16(sml_shift_mux__16),
        .zero_sml_preadd(zero_sml_preadd));
  fp16_sub_delay__parameterized10_21 \MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST 
       (.A(A[5:2]),
        .Q(Q[5:2]),
        .abs_dist_mux(abs_dist_mux),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[0] (\MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST_n_0 ),
        .\opt_has_pipe.first_q_reg[1] (\opt_has_pipe.first_q_reg[1] ),
        .\opt_has_pipe.first_q_reg[1]_0 (\opt_has_pipe.first_q_reg[1]_0 ),
        .\opt_has_pipe.first_q_reg[6] (\MUX_LOOP[0].DEL_SHIFT_n_14 ),
        .\opt_has_pipe.first_q_reg[7] (\MUX_LOOP[0].DEL_SHIFT_n_23 ),
        .\opt_has_pipe.first_q_reg[7]_0 (\MUX_LOOP[0].DEL_SHIFT_n_10 ),
        .\opt_has_pipe.first_q_reg[8] (\opt_has_pipe.first_q_reg[8]_0 ),
        .\opt_has_pipe.first_q_reg[8]_0 (\opt_has_pipe.first_q_reg[8]_1 ),
        .\opt_has_pipe.first_q_reg[8]_1 (\MUX_LOOP[0].DEL_SHIFT_n_25 ),
        .out(out),
        .zero_sml_preadd(zero_sml_preadd));
endmodule

(* ORIG_REF_NAME = "shift_msb_first" *) 
module fp16_sub_shift_msb_first__parameterized0
   (A,
    \opt_has_pipe.first_q_reg[16] ,
    \opt_has_pipe.first_q_reg[18] ,
    \opt_has_pipe.first_q_reg[16]_0 ,
    \opt_has_pipe.first_q_reg[17] ,
    \opt_has_pipe.first_q_reg[19] ,
    \opt_has_pipe.first_q_reg[14] ,
    \opt_has_pipe.first_q_reg[19]_0 ,
    \opt_has_pipe.first_q_reg[15] ,
    \opt_has_pipe.first_q_reg[17]_0 ,
    \opt_has_pipe.first_q_reg[0] ,
    \opt_has_pipe.first_q_reg[16]_1 ,
    \RESULT_REG.NORMAL.mant_op_reg[14] ,
    out,
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5 ,
    zeros_del,
    aclk,
    CARRYS_OUT,
    \opt_has_pipe.first_q_reg[12] ,
    add_mant);
  output [7:0]A;
  output [4:0]\opt_has_pipe.first_q_reg[16] ;
  output \opt_has_pipe.first_q_reg[18] ;
  output \opt_has_pipe.first_q_reg[16]_0 ;
  output \opt_has_pipe.first_q_reg[17] ;
  output \opt_has_pipe.first_q_reg[19] ;
  output \opt_has_pipe.first_q_reg[14] ;
  output \opt_has_pipe.first_q_reg[19]_0 ;
  output \opt_has_pipe.first_q_reg[15] ;
  output \opt_has_pipe.first_q_reg[17]_0 ;
  output [0:0]\opt_has_pipe.first_q_reg[0] ;
  output \opt_has_pipe.first_q_reg[16]_1 ;
  input \RESULT_REG.NORMAL.mant_op_reg[14] ;
  input [2:0]out;
  input \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5 ;
  input zeros_del;
  input aclk;
  input [1:0]CARRYS_OUT;
  input \opt_has_pipe.first_q_reg[12] ;
  input [18:0]add_mant;

  wire [7:0]A;
  wire [1:0]CARRYS_OUT;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5 ;
  wire \RESULT_REG.NORMAL.mant_op_reg[14] ;
  wire aclk;
  wire [18:0]add_mant;
  wire \opt_has_pipe.first_q[10]_i_1_n_0 ;
  wire \opt_has_pipe.first_q[11]_i_1_n_0 ;
  wire \opt_has_pipe.first_q[1]_i_1_n_0 ;
  wire \opt_has_pipe.first_q[2]_i_1_n_0 ;
  wire \opt_has_pipe.first_q[3]_i_1_n_0 ;
  wire \opt_has_pipe.first_q[4]_i_1_n_0 ;
  wire \opt_has_pipe.first_q[5]_i_1_n_0 ;
  wire \opt_has_pipe.first_q[6]_i_1_n_0 ;
  wire \opt_has_pipe.first_q[7]_i_1_n_0 ;
  wire \opt_has_pipe.first_q[8]_i_1_n_0 ;
  wire \opt_has_pipe.first_q[9]_i_1_n_0 ;
  wire [0:0]\opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[12] ;
  wire \opt_has_pipe.first_q_reg[14] ;
  wire \opt_has_pipe.first_q_reg[15] ;
  wire [4:0]\opt_has_pipe.first_q_reg[16] ;
  wire \opt_has_pipe.first_q_reg[16]_0 ;
  wire \opt_has_pipe.first_q_reg[16]_1 ;
  wire \opt_has_pipe.first_q_reg[17] ;
  wire \opt_has_pipe.first_q_reg[17]_0 ;
  wire \opt_has_pipe.first_q_reg[18] ;
  wire \opt_has_pipe.first_q_reg[19] ;
  wire \opt_has_pipe.first_q_reg[19]_0 ;
  wire [2:0]out;
  wire zeros_del;

  fp16_sub_delay__parameterized26 \MUX_LOOP[0].DEL_SHIFT 
       (.A(A),
        .CARRYS_OUT(CARRYS_OUT[1]),
        .\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5 (\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5 ),
        .D({\opt_has_pipe.first_q[3]_i_1_n_0 ,\opt_has_pipe.first_q[2]_i_1_n_0 ,\opt_has_pipe.first_q[1]_i_1_n_0 }),
        .\RESULT_REG.NORMAL.mant_op_reg[14] (\RESULT_REG.NORMAL.mant_op_reg[14] ),
        .aclk(aclk),
        .add_mant(add_mant[7:0]),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[10] (\opt_has_pipe.first_q[10]_i_1_n_0 ),
        .\opt_has_pipe.first_q_reg[11] (\opt_has_pipe.first_q[11]_i_1_n_0 ),
        .\opt_has_pipe.first_q_reg[12] (\opt_has_pipe.first_q_reg[12] ),
        .\opt_has_pipe.first_q_reg[14] (\opt_has_pipe.first_q_reg[14] ),
        .\opt_has_pipe.first_q_reg[15] (\opt_has_pipe.first_q_reg[15] ),
        .\opt_has_pipe.first_q_reg[16] (\opt_has_pipe.first_q_reg[16] ),
        .\opt_has_pipe.first_q_reg[16]_0 (\opt_has_pipe.first_q_reg[16]_0 ),
        .\opt_has_pipe.first_q_reg[16]_1 (\opt_has_pipe.first_q_reg[16]_1 ),
        .\opt_has_pipe.first_q_reg[17] (\opt_has_pipe.first_q_reg[17] ),
        .\opt_has_pipe.first_q_reg[17]_0 (\opt_has_pipe.first_q_reg[17]_0 ),
        .\opt_has_pipe.first_q_reg[18] (\opt_has_pipe.first_q_reg[18] ),
        .\opt_has_pipe.first_q_reg[19] (\opt_has_pipe.first_q_reg[19] ),
        .\opt_has_pipe.first_q_reg[19]_0 (\opt_has_pipe.first_q_reg[19]_0 ),
        .\opt_has_pipe.first_q_reg[4] (\opt_has_pipe.first_q[4]_i_1_n_0 ),
        .\opt_has_pipe.first_q_reg[5] (\opt_has_pipe.first_q[5]_i_1_n_0 ),
        .\opt_has_pipe.first_q_reg[6] (\opt_has_pipe.first_q[6]_i_1_n_0 ),
        .\opt_has_pipe.first_q_reg[7] (\opt_has_pipe.first_q[7]_i_1_n_0 ),
        .\opt_has_pipe.first_q_reg[8] (\opt_has_pipe.first_q[8]_i_1_n_0 ),
        .\opt_has_pipe.first_q_reg[9] (\opt_has_pipe.first_q[9]_i_1_n_0 ),
        .out(out),
        .zeros_del(zeros_del));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[10]_i_1 
       (.I0(add_mant[1]),
        .I1(CARRYS_OUT[0]),
        .I2(add_mant[9]),
        .O(\opt_has_pipe.first_q[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[11]_i_1 
       (.I0(add_mant[0]),
        .I1(CARRYS_OUT[0]),
        .I2(add_mant[8]),
        .O(\opt_has_pipe.first_q[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFB0BF808)) 
    \opt_has_pipe.first_q[1]_i_1 
       (.I0(add_mant[10]),
        .I1(CARRYS_OUT[0]),
        .I2(CARRYS_OUT[1]),
        .I3(add_mant[2]),
        .I4(add_mant[18]),
        .O(\opt_has_pipe.first_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFB0BF808)) 
    \opt_has_pipe.first_q[2]_i_1 
       (.I0(add_mant[9]),
        .I1(CARRYS_OUT[0]),
        .I2(CARRYS_OUT[1]),
        .I3(add_mant[1]),
        .I4(add_mant[17]),
        .O(\opt_has_pipe.first_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFB0BF808)) 
    \opt_has_pipe.first_q[3]_i_1 
       (.I0(add_mant[8]),
        .I1(CARRYS_OUT[0]),
        .I2(CARRYS_OUT[1]),
        .I3(add_mant[0]),
        .I4(add_mant[16]),
        .O(\opt_has_pipe.first_q[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[4]_i_1 
       (.I0(add_mant[7]),
        .I1(CARRYS_OUT[0]),
        .I2(add_mant[15]),
        .O(\opt_has_pipe.first_q[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[5]_i_1 
       (.I0(add_mant[6]),
        .I1(CARRYS_OUT[0]),
        .I2(add_mant[14]),
        .O(\opt_has_pipe.first_q[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[6]_i_1 
       (.I0(add_mant[5]),
        .I1(CARRYS_OUT[0]),
        .I2(add_mant[13]),
        .O(\opt_has_pipe.first_q[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[7]_i_1 
       (.I0(add_mant[4]),
        .I1(CARRYS_OUT[0]),
        .I2(add_mant[12]),
        .O(\opt_has_pipe.first_q[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[8]_i_1 
       (.I0(add_mant[3]),
        .I1(CARRYS_OUT[0]),
        .I2(add_mant[11]),
        .O(\opt_has_pipe.first_q[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[9]_i_1 
       (.I0(add_mant[2]),
        .I1(CARRYS_OUT[0]),
        .I2(add_mant[10]),
        .O(\opt_has_pipe.first_q[9]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "special_detect" *) 
module fp16_sub_special_detect
   (a_is_inf__0,
    CARRY_OUT,
    s_axis_a_tdata,
    \opt_has_pipe.first_q_reg[0] );
  output a_is_inf__0;
  output CARRY_OUT;
  input [18:0]s_axis_a_tdata;
  input \opt_has_pipe.first_q_reg[0] ;

  wire CARRY_OUT;
  wire a_is_inf__0;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire [18:0]s_axis_a_tdata;

  fp16_sub_compare_eq_im__parameterized0_9 \MANT_CARRY.MANT_ALL_ZERO_DET 
       (.CARRY_OUT(CARRY_OUT),
        .a_is_inf__0(a_is_inf__0),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .s_axis_a_tdata(s_axis_a_tdata));
endmodule

(* ORIG_REF_NAME = "special_detect" *) 
module fp16_sub_special_detect_5
   (D,
    det_invalid_op,
    det_sign,
    b_exp_flt_all_one,
    a_is_inf__0,
    zero_largest,
    CARRY_OUT,
    a_exp_flt_all_one,
    subtract,
    s_axis_b_tdata,
    s_axis_a_tdata,
    \opt_has_pipe.first_q_reg[0] );
  output [1:0]D;
  output det_invalid_op;
  output det_sign;
  input b_exp_flt_all_one;
  input a_is_inf__0;
  input zero_largest;
  input CARRY_OUT;
  input a_exp_flt_all_one;
  input subtract;
  input [16:0]s_axis_b_tdata;
  input [0:0]s_axis_a_tdata;
  input \opt_has_pipe.first_q_reg[0] ;

  wire CARRY_OUT;
  wire [1:0]D;
  wire a_exp_flt_all_one;
  wire a_is_inf__0;
  wire b_exp_flt_all_one;
  wire det_invalid_op;
  wire det_sign;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire [0:0]s_axis_a_tdata;
  wire [16:0]s_axis_b_tdata;
  wire subtract;
  wire zero_largest;

  fp16_sub_compare_eq_im__parameterized0 \MANT_CARRY.MANT_ALL_ZERO_DET 
       (.CARRY_OUT(CARRY_OUT),
        .D(D),
        .a_exp_flt_all_one(a_exp_flt_all_one),
        .a_is_inf__0(a_is_inf__0),
        .b_exp_flt_all_one(b_exp_flt_all_one),
        .det_invalid_op(det_invalid_op),
        .det_sign(det_sign),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_b_tdata(s_axis_b_tdata),
        .subtract(subtract),
        .zero_largest(zero_largest));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv
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
  wire \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2_n_0 ;
  wire s_axis_a_tvalid;
  wire s_axis_b_tvalid;
  wire valid_transfer_in;

  LUT2 #(
    .INIT(4'h8)) 
    \opt_has_pipe.first_q[0]_i_1__7 
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
  (* srl_bus_name = "U0/i_synth/\i_nd_to_rdy/opt_has_pipe.i_pipe[3].pipe_reg[3] " *) 
  (* srl_name = "U0/i_synth/\i_nd_to_rdy/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(first_q),
        .Q(\opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[4].pipe_reg[4][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2_n_0 ),
        .Q(m_axis_result_tvalid),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized13
   (out,
    zeros_add,
    aclk);
  output out;
  input zeros_add;
  input aclk;

  wire aclk;
  (* RTL_KEEP = "true" *) wire first_q;
  wire zeros_add;

  assign out = first_q;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(zeros_add),
        .Q(first_q),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized13_15
   (out,
    zero_align_align,
    aclk);
  output out;
  input zero_align_align;
  input aclk;

  wire aclk;
  (* RTL_KEEP = "true" *) wire first_q;
  wire zero_align_align;

  assign out = first_q;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(zero_align_align),
        .Q(first_q),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized17
   (p_8_out,
    aclk,
    \opt_has_pipe.first_q_reg[4]_0 ,
    \opt_has_pipe.first_q_reg[3]_0 ,
    \opt_has_pipe.first_q_reg[2]_0 ,
    \opt_has_pipe.first_q_reg[1]_0 ,
    \opt_has_pipe.first_q_reg[0]_0 ,
    minusOp,
    CO);
  output [5:0]p_8_out;
  input aclk;
  input \opt_has_pipe.first_q_reg[4]_0 ;
  input \opt_has_pipe.first_q_reg[3]_0 ;
  input \opt_has_pipe.first_q_reg[2]_0 ;
  input \opt_has_pipe.first_q_reg[1]_0 ;
  input \opt_has_pipe.first_q_reg[0]_0 ;
  input [1:0]minusOp;
  input [0:0]CO;

  wire [0:0]CO;
  wire aclk;
  wire [1:0]minusOp;
  wire \opt_has_pipe.first_q[4]_i_1_n_0 ;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire \opt_has_pipe.first_q_reg[1]_0 ;
  wire \opt_has_pipe.first_q_reg[2]_0 ;
  wire \opt_has_pipe.first_q_reg[3]_0 ;
  wire \opt_has_pipe.first_q_reg[4]_0 ;
  wire [5:0]p_8_out;

  LUT3 #(
    .INIT(8'h65)) 
    \opt_has_pipe.first_q[4]_i_1 
       (.I0(minusOp[1]),
        .I1(CO),
        .I2(minusOp[0]),
        .O(\opt_has_pipe.first_q[4]_i_1_n_0 ));
  (* KEEP = "false" *) 
  FDSE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[0]_0 ),
        .Q(p_8_out[0]),
        .S(\opt_has_pipe.first_q[4]_i_1_n_0 ));
  (* KEEP = "false" *) 
  FDSE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[1]_0 ),
        .Q(p_8_out[1]),
        .S(\opt_has_pipe.first_q[4]_i_1_n_0 ));
  (* KEEP = "false" *) 
  FDSE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[2]_0 ),
        .Q(p_8_out[2]),
        .S(\opt_has_pipe.first_q[4]_i_1_n_0 ));
  (* KEEP = "false" *) 
  FDSE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[3]_0 ),
        .Q(p_8_out[3]),
        .S(\opt_has_pipe.first_q[4]_i_1_n_0 ));
  (* KEEP = "false" *) 
  FDSE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[4]_0 ),
        .Q(p_8_out[4]),
        .S(\opt_has_pipe.first_q[4]_i_1_n_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(p_8_out[5]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19
   (\opt_has_pipe.first_q_reg[1]_0 ,
    NORM_DIST,
    DI,
    CARRYS_OUT,
    aclk);
  output [0:0]\opt_has_pipe.first_q_reg[1]_0 ;
  output [1:0]NORM_DIST;
  input [0:0]DI;
  input [1:0]CARRYS_OUT;
  input aclk;

  wire [1:0]CARRYS_OUT;
  wire [0:0]DI;
  wire [1:0]NORM_DIST;
  wire aclk;
  wire [0:0]\opt_has_pipe.first_q_reg[1]_0 ;

  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1
       (.I0(NORM_DIST[0]),
        .I1(DI),
        .O(\opt_has_pipe.first_q_reg[1]_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(CARRYS_OUT[1]),
        .Q(NORM_DIST[1]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(CARRYS_OUT[0]),
        .Q(NORM_DIST[0]),
        .R(CARRYS_OUT[1]));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_19
   (ext_del_distance,
    first_q0,
    aclk);
  output [0:0]ext_del_distance;
  input first_q0;
  input aclk;

  wire aclk;
  wire [0:0]ext_del_distance;
  wire first_q0;

  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(first_q0),
        .Q(ext_del_distance),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_20
   (ext_del_distance,
    \opt_has_pipe.first_q_reg[1]_0 ,
    aclk);
  output [0:0]ext_del_distance;
  input \opt_has_pipe.first_q_reg[1]_0 ;
  input aclk;

  wire aclk;
  wire [0:0]ext_del_distance;
  wire \opt_has_pipe.first_q_reg[1]_0 ;

  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[1]_0 ),
        .Q(ext_del_distance),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_22
   (\opt_has_pipe.first_q_reg[0]_0 ,
    \opt_has_pipe.first_q_reg[1]_0 ,
    A,
    abs_dist_mux,
    aclk,
    \opt_has_pipe.first_q_reg[1]_1 ,
    out,
    zero_sml_preadd,
    \opt_has_pipe.first_q_reg[7] ,
    \opt_has_pipe.first_q_reg[8] ,
    \opt_has_pipe.first_q_reg[8]_0 ,
    Q,
    \opt_has_pipe.first_q_reg[7]_0 ,
    \opt_has_pipe.first_q_reg[8]_1 ,
    \opt_has_pipe.first_q_reg[6] );
  output \opt_has_pipe.first_q_reg[0]_0 ;
  output \opt_has_pipe.first_q_reg[1]_0 ;
  output [3:0]A;
  input [0:0]abs_dist_mux;
  input aclk;
  input \opt_has_pipe.first_q_reg[1]_1 ;
  input out;
  input zero_sml_preadd;
  input \opt_has_pipe.first_q_reg[7] ;
  input \opt_has_pipe.first_q_reg[8] ;
  input [0:0]\opt_has_pipe.first_q_reg[8]_0 ;
  input [3:0]Q;
  input \opt_has_pipe.first_q_reg[7]_0 ;
  input \opt_has_pipe.first_q_reg[8]_1 ;
  input \opt_has_pipe.first_q_reg[6] ;

  wire [3:0]A;
  wire \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__3_n_0 ;
  wire [3:0]Q;
  wire [0:0]abs_dist_mux;
  wire aclk;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire \opt_has_pipe.first_q_reg[1]_0 ;
  wire \opt_has_pipe.first_q_reg[1]_1 ;
  wire \opt_has_pipe.first_q_reg[6] ;
  wire \opt_has_pipe.first_q_reg[7] ;
  wire \opt_has_pipe.first_q_reg[7]_0 ;
  wire \opt_has_pipe.first_q_reg[8] ;
  wire [0:0]\opt_has_pipe.first_q_reg[8]_0 ;
  wire \opt_has_pipe.first_q_reg[8]_1 ;
  wire out;
  wire zero_sml_preadd;

  LUT6 #(
    .INIT(64'h4540BABFBABF4540)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__2 
       (.I0(\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__3_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[8]_1 ),
        .I2(\opt_has_pipe.first_q_reg[0]_0 ),
        .I3(\opt_has_pipe.first_q_reg[6] ),
        .I4(\opt_has_pipe.first_q_reg[8]_0 ),
        .I5(Q[0]),
        .O(A[0]));
  LUT3 #(
    .INIT(8'hFE)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__3 
       (.I0(\opt_has_pipe.first_q_reg[1]_0 ),
        .I1(out),
        .I2(zero_sml_preadd),
        .O(\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__3_n_0 ));
  LUT6 #(
    .INIT(64'h4540BABFBABF4540)) 
    \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__1 
       (.I0(\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__3_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[7] ),
        .I2(\opt_has_pipe.first_q_reg[0]_0 ),
        .I3(\opt_has_pipe.first_q_reg[7]_0 ),
        .I4(\opt_has_pipe.first_q_reg[8]_0 ),
        .I5(Q[1]),
        .O(A[1]));
  LUT6 #(
    .INIT(64'h0008FFF7FFF70008)) 
    \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__1 
       (.I0(\opt_has_pipe.first_q_reg[8]_1 ),
        .I1(\opt_has_pipe.first_q_reg[8] ),
        .I2(\opt_has_pipe.first_q_reg[1]_0 ),
        .I3(\opt_has_pipe.first_q_reg[0]_0 ),
        .I4(\opt_has_pipe.first_q_reg[8]_0 ),
        .I5(Q[2]),
        .O(A[2]));
  LUT6 #(
    .INIT(64'h0008FFF7FFF70008)) 
    \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\opt_has_pipe.first_q_reg[7] ),
        .I1(\opt_has_pipe.first_q_reg[8] ),
        .I2(\opt_has_pipe.first_q_reg[1]_0 ),
        .I3(\opt_has_pipe.first_q_reg[0]_0 ),
        .I4(\opt_has_pipe.first_q_reg[8]_0 ),
        .I5(Q[3]),
        .O(A[3]));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(abs_dist_mux),
        .Q(\opt_has_pipe.first_q_reg[0]_0 ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[1]_1 ),
        .Q(\opt_has_pipe.first_q_reg[1]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_7
   (add_mant_msbs_del,
    add_mant,
    aclk);
  output [0:0]add_mant_msbs_del;
  input [0:0]add_mant;
  input aclk;

  wire aclk;
  wire [0:0]add_mant;
  wire [0:0]add_mant_msbs_del;

  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(add_mant),
        .Q(add_mant_msbs_del),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized21
   (S,
    \s_axis_b_tdata[19] ,
    align_dist_0_ip__0,
    \opt_has_pipe.first_q_reg[14]_0 ,
    \opt_has_pipe.first_q_reg[16]_0 ,
    \opt_has_pipe.first_q_reg[16]_1 ,
    \opt_has_pipe.first_q_reg[12]_0 ,
    \opt_has_pipe.first_q_reg[13]_0 ,
    \opt_has_pipe.first_q_reg[15]_0 ,
    \opt_has_pipe.first_q_reg[15]_1 ,
    \opt_has_pipe.first_q_reg[11]_0 ,
    \opt_has_pipe.first_q_reg[10]_0 ,
    \opt_has_pipe.first_q_reg[9]_0 ,
    \opt_has_pipe.first_q_reg[8]_0 ,
    \opt_has_pipe.first_q_reg[7]_0 ,
    \opt_has_pipe.first_q_reg[6]_0 ,
    A,
    \opt_has_pipe.first_q_reg[18]_0 ,
    \opt_has_pipe.first_q_reg[18]_1 ,
    \opt_has_pipe.first_q_reg[17]_0 ,
    \opt_has_pipe.first_q_reg[17]_1 ,
    s_axis_a_tdata,
    s_axis_b_tdata,
    \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ,
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ,
    zero_sml_preadd,
    out,
    \opt_has_pipe.first_q_reg[5]_0 ,
    Q,
    D,
    aclk,
    sml_shift_mux__16,
    minusOp,
    CO);
  output [2:0]S;
  output [3:0]\s_axis_b_tdata[19] ;
  output align_dist_0_ip__0;
  output \opt_has_pipe.first_q_reg[14]_0 ;
  output \opt_has_pipe.first_q_reg[16]_0 ;
  output \opt_has_pipe.first_q_reg[16]_1 ;
  output \opt_has_pipe.first_q_reg[12]_0 ;
  output \opt_has_pipe.first_q_reg[13]_0 ;
  output \opt_has_pipe.first_q_reg[15]_0 ;
  output \opt_has_pipe.first_q_reg[15]_1 ;
  output \opt_has_pipe.first_q_reg[11]_0 ;
  output \opt_has_pipe.first_q_reg[10]_0 ;
  output \opt_has_pipe.first_q_reg[9]_0 ;
  output \opt_has_pipe.first_q_reg[8]_0 ;
  output \opt_has_pipe.first_q_reg[7]_0 ;
  output \opt_has_pipe.first_q_reg[6]_0 ;
  output [1:0]A;
  output \opt_has_pipe.first_q_reg[18]_0 ;
  output \opt_has_pipe.first_q_reg[18]_1 ;
  output \opt_has_pipe.first_q_reg[17]_0 ;
  output \opt_has_pipe.first_q_reg[17]_1 ;
  input [6:0]s_axis_a_tdata;
  input [6:0]s_axis_b_tdata;
  input \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ;
  input \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ;
  input zero_sml_preadd;
  input out;
  input [0:0]\opt_has_pipe.first_q_reg[5]_0 ;
  input [1:0]Q;
  input [10:0]D;
  input aclk;
  input [6:0]sml_shift_mux__16;
  input [4:0]minusOp;
  input [0:0]CO;

  wire [1:0]A;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ;
  wire \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__1_n_0 ;
  wire \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__1_n_0 ;
  wire \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ;
  wire [0:0]CO;
  wire [10:0]D;
  wire [1:0]Q;
  wire [2:0]S;
  wire aclk;
  wire align_dist_0_ip__0;
  wire [4:0]minusOp;
  wire \opt_has_pipe.first_q[18]_i_1_n_0 ;
  wire \opt_has_pipe.first_q[18]_i_2_n_0 ;
  wire \opt_has_pipe.first_q_reg[10]_0 ;
  wire \opt_has_pipe.first_q_reg[11]_0 ;
  wire \opt_has_pipe.first_q_reg[12]_0 ;
  wire \opt_has_pipe.first_q_reg[13]_0 ;
  wire \opt_has_pipe.first_q_reg[14]_0 ;
  wire \opt_has_pipe.first_q_reg[15]_0 ;
  wire \opt_has_pipe.first_q_reg[15]_1 ;
  wire \opt_has_pipe.first_q_reg[16]_0 ;
  wire \opt_has_pipe.first_q_reg[16]_1 ;
  wire \opt_has_pipe.first_q_reg[17]_0 ;
  wire \opt_has_pipe.first_q_reg[17]_1 ;
  wire \opt_has_pipe.first_q_reg[18]_0 ;
  wire \opt_has_pipe.first_q_reg[18]_1 ;
  wire [0:0]\opt_has_pipe.first_q_reg[5]_0 ;
  wire \opt_has_pipe.first_q_reg[6]_0 ;
  wire \opt_has_pipe.first_q_reg[7]_0 ;
  wire \opt_has_pipe.first_q_reg[8]_0 ;
  wire \opt_has_pipe.first_q_reg[9]_0 ;
  wire \opt_has_pipe.first_q_reg_n_0_[0] ;
  wire \opt_has_pipe.first_q_reg_n_0_[10] ;
  wire \opt_has_pipe.first_q_reg_n_0_[11] ;
  wire \opt_has_pipe.first_q_reg_n_0_[12] ;
  wire \opt_has_pipe.first_q_reg_n_0_[13] ;
  wire \opt_has_pipe.first_q_reg_n_0_[14] ;
  wire \opt_has_pipe.first_q_reg_n_0_[1] ;
  wire \opt_has_pipe.first_q_reg_n_0_[2] ;
  wire \opt_has_pipe.first_q_reg_n_0_[3] ;
  wire \opt_has_pipe.first_q_reg_n_0_[4] ;
  wire \opt_has_pipe.first_q_reg_n_0_[5] ;
  wire \opt_has_pipe.first_q_reg_n_0_[6] ;
  wire \opt_has_pipe.first_q_reg_n_0_[7] ;
  wire \opt_has_pipe.first_q_reg_n_0_[8] ;
  wire \opt_has_pipe.first_q_reg_n_0_[9] ;
  wire out;
  wire [6:0]s_axis_a_tdata;
  wire [6:0]s_axis_b_tdata;
  wire [3:0]\s_axis_b_tdata[19] ;
  wire [6:0]sml_shift_mux__16;
  wire zero_sml_preadd;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2__1 
       (.I0(\opt_has_pipe.first_q_reg[15]_1 ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .I2(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ),
        .I3(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .I4(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ),
        .I5(\opt_has_pipe.first_q_reg_n_0_[9] ),
        .O(\opt_has_pipe.first_q_reg[15]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2__2 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[6] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[2] ),
        .I2(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ),
        .I3(\opt_has_pipe.first_q_reg_n_0_[4] ),
        .I4(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ),
        .I5(\opt_has_pipe.first_q_reg_n_0_[0] ),
        .O(\opt_has_pipe.first_q_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_b_tdata[0]),
        .I1(s_axis_a_tdata[0]),
        .O(align_dist_0_ip__0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__1 
       (.I0(\opt_has_pipe.first_q_reg[16]_1 ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .I2(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ),
        .I3(\opt_has_pipe.first_q_reg_n_0_[14] ),
        .I4(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ),
        .I5(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .O(\opt_has_pipe.first_q_reg[16]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__2 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[7] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[3] ),
        .I2(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ),
        .I3(\opt_has_pipe.first_q_reg_n_0_[5] ),
        .I4(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ),
        .I5(\opt_has_pipe.first_q_reg_n_0_[1] ),
        .O(\opt_has_pipe.first_q_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__1 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[8] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[4] ),
        .I2(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ),
        .I3(\opt_has_pipe.first_q_reg_n_0_[6] ),
        .I4(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ),
        .I5(\opt_has_pipe.first_q_reg_n_0_[2] ),
        .O(\opt_has_pipe.first_q_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__2 
       (.I0(\opt_has_pipe.first_q_reg[17]_0 ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .I2(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ),
        .I3(\opt_has_pipe.first_q_reg[15]_1 ),
        .I4(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ),
        .I5(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .O(\opt_has_pipe.first_q_reg[17]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[9] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[5] ),
        .I2(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ),
        .I3(\opt_has_pipe.first_q_reg_n_0_[7] ),
        .I4(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ),
        .I5(\opt_has_pipe.first_q_reg_n_0_[3] ),
        .O(\opt_has_pipe.first_q_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2__1 
       (.I0(\opt_has_pipe.first_q_reg[18]_0 ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[14] ),
        .I2(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ),
        .I3(\opt_has_pipe.first_q_reg[16]_1 ),
        .I4(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ),
        .I5(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .O(\opt_has_pipe.first_q_reg[18]_1 ));
  LUT5 #(
    .INIT(32'h02FDFD02)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__2 
       (.I0(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__1_n_0 ),
        .I1(zero_sml_preadd),
        .I2(out),
        .I3(\opt_has_pipe.first_q_reg[5]_0 ),
        .I4(Q[0]),
        .O(A[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[6] ),
        .I2(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ),
        .I3(\opt_has_pipe.first_q_reg_n_0_[8] ),
        .I4(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ),
        .I5(\opt_has_pipe.first_q_reg_n_0_[4] ),
        .O(\opt_has_pipe.first_q_reg[10]_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__1 
       (.I0(\opt_has_pipe.first_q_reg[15]_1 ),
        .I1(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ),
        .I2(\opt_has_pipe.first_q_reg[17]_0 ),
        .I3(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ),
        .I4(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .O(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h02FDFD02)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__2 
       (.I0(\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__1_n_0 ),
        .I1(zero_sml_preadd),
        .I2(out),
        .I3(\opt_has_pipe.first_q_reg[5]_0 ),
        .I4(Q[1]),
        .O(A[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[7] ),
        .I2(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ),
        .I3(\opt_has_pipe.first_q_reg_n_0_[9] ),
        .I4(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ),
        .I5(\opt_has_pipe.first_q_reg_n_0_[5] ),
        .O(\opt_has_pipe.first_q_reg[11]_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__1 
       (.I0(\opt_has_pipe.first_q_reg[16]_1 ),
        .I1(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ),
        .I2(\opt_has_pipe.first_q_reg[18]_0 ),
        .I3(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ),
        .I4(\opt_has_pipe.first_q_reg_n_0_[14] ),
        .O(\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[8] ),
        .I2(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ),
        .I3(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .I4(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ),
        .I5(\opt_has_pipe.first_q_reg_n_0_[6] ),
        .O(\opt_has_pipe.first_q_reg[12]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[9] ),
        .I2(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ),
        .I3(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .I4(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ),
        .I5(\opt_has_pipe.first_q_reg_n_0_[7] ),
        .O(\opt_has_pipe.first_q_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_2__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[14] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .I2(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 ),
        .I3(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .I4(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 ),
        .I5(\opt_has_pipe.first_q_reg_n_0_[8] ),
        .O(\opt_has_pipe.first_q_reg[14]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_1
       (.I0(s_axis_b_tdata[6]),
        .I1(s_axis_a_tdata[6]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_2
       (.I0(s_axis_b_tdata[5]),
        .I1(s_axis_a_tdata[5]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_3
       (.I0(s_axis_b_tdata[4]),
        .I1(s_axis_a_tdata[4]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_1
       (.I0(s_axis_b_tdata[3]),
        .I1(s_axis_a_tdata[3]),
        .O(\s_axis_b_tdata[19] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_2
       (.I0(s_axis_b_tdata[2]),
        .I1(s_axis_a_tdata[2]),
        .O(\s_axis_b_tdata[19] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_3
       (.I0(s_axis_b_tdata[1]),
        .I1(s_axis_a_tdata[1]),
        .O(\s_axis_b_tdata[19] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_4
       (.I0(s_axis_a_tdata[0]),
        .I1(s_axis_b_tdata[0]),
        .O(\s_axis_b_tdata[19] [0]));
  LUT6 #(
    .INIT(64'hFFFF01FFFF00FFFE)) 
    \opt_has_pipe.first_q[18]_i_1 
       (.I0(minusOp[2]),
        .I1(minusOp[0]),
        .I2(minusOp[1]),
        .I3(minusOp[3]),
        .I4(CO),
        .I5(minusOp[4]),
        .O(\opt_has_pipe.first_q[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \opt_has_pipe.first_q[18]_i_2 
       (.I0(s_axis_a_tdata[0]),
        .I1(s_axis_b_tdata[0]),
        .O(\opt_has_pipe.first_q[18]_i_2_n_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[0] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(sml_shift_mux__16[0]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .R(\opt_has_pipe.first_q[18]_i_1_n_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(sml_shift_mux__16[1]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .R(\opt_has_pipe.first_q[18]_i_1_n_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(sml_shift_mux__16[2]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .R(\opt_has_pipe.first_q[18]_i_1_n_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(sml_shift_mux__16[3]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[14] ),
        .R(\opt_has_pipe.first_q[18]_i_1_n_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(sml_shift_mux__16[4]),
        .Q(\opt_has_pipe.first_q_reg[15]_1 ),
        .R(\opt_has_pipe.first_q[18]_i_1_n_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(sml_shift_mux__16[5]),
        .Q(\opt_has_pipe.first_q_reg[16]_1 ),
        .R(\opt_has_pipe.first_q[18]_i_1_n_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(sml_shift_mux__16[6]),
        .Q(\opt_has_pipe.first_q_reg[17]_0 ),
        .R(\opt_has_pipe.first_q[18]_i_1_n_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q[18]_i_2_n_0 ),
        .Q(\opt_has_pipe.first_q_reg[18]_0 ),
        .R(\opt_has_pipe.first_q[18]_i_1_n_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[1] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[2] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[3] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[4] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[5] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[6] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[7] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[8] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized27
   (Q,
    \opt_has_pipe.first_q_reg[6]_0 ,
    aclk);
  output [6:0]Q;
  input [6:0]\opt_has_pipe.first_q_reg[6]_0 ;
  input aclk;

  wire [6:0]Q;
  wire aclk;
  wire [6:0]\opt_has_pipe.first_q_reg[6]_0 ;

  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[6]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[6]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[6]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[6]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[6]_0 [4]),
        .Q(Q[4]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[6]_0 [5]),
        .Q(Q[5]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[6]_0 [6]),
        .Q(Q[6]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized31
   (add_mant,
    D,
    aclk);
  output [8:0]add_mant;
  input [8:0]D;
  input aclk;

  wire [8:0]D;
  wire aclk;
  wire [8:0]add_mant;

  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(add_mant[0]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(add_mant[1]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(add_mant[2]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(add_mant[3]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(add_mant[4]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(add_mant[5]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(add_mant[6]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(add_mant[7]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(add_mant[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized33
   (zero_largest,
    \s_axis_a_tdata[22] ,
    b_exp_flt_all_zero,
    \opt_has_pipe.first_q_reg[9]_0 ,
    s_axis_a_tdata,
    s_axis_b_tdata,
    aclk,
    \opt_has_pipe.first_q_reg[8]_0 );
  output zero_largest;
  output \s_axis_a_tdata[22] ;
  output b_exp_flt_all_zero;
  output [9:0]\opt_has_pipe.first_q_reg[9]_0 ;
  input [6:0]s_axis_a_tdata;
  input [6:0]s_axis_b_tdata;
  input aclk;
  input [8:0]\opt_has_pipe.first_q_reg[8]_0 ;

  wire aclk;
  wire b_exp_flt_all_zero;
  wire [16:16]lrg_mant_z_mux;
  wire \opt_has_pipe.first_q[0]_i_4_n_0 ;
  wire [8:0]\opt_has_pipe.first_q_reg[8]_0 ;
  wire [9:0]\opt_has_pipe.first_q_reg[9]_0 ;
  wire [6:0]s_axis_a_tdata;
  wire \s_axis_a_tdata[22] ;
  wire [6:0]s_axis_b_tdata;
  wire zero_largest;

  LUT4 #(
    .INIT(16'h0001)) 
    \opt_has_pipe.first_q[0]_i_2 
       (.I0(s_axis_a_tdata[6]),
        .I1(s_axis_a_tdata[5]),
        .I2(s_axis_a_tdata[4]),
        .I3(s_axis_a_tdata[3]),
        .O(\s_axis_a_tdata[22] ));
  LUT4 #(
    .INIT(16'h0002)) 
    \opt_has_pipe.first_q[0]_i_3 
       (.I0(\opt_has_pipe.first_q[0]_i_4_n_0 ),
        .I1(s_axis_b_tdata[0]),
        .I2(s_axis_b_tdata[1]),
        .I3(s_axis_b_tdata[2]),
        .O(b_exp_flt_all_zero));
  LUT4 #(
    .INIT(16'h0001)) 
    \opt_has_pipe.first_q[0]_i_4 
       (.I0(s_axis_b_tdata[6]),
        .I1(s_axis_b_tdata[5]),
        .I2(s_axis_b_tdata[4]),
        .I3(s_axis_b_tdata[3]),
        .O(\opt_has_pipe.first_q[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \opt_has_pipe.first_q[6]_i_2 
       (.I0(\s_axis_a_tdata[22] ),
        .I1(s_axis_a_tdata[0]),
        .I2(s_axis_a_tdata[1]),
        .I3(s_axis_a_tdata[2]),
        .I4(b_exp_flt_all_zero),
        .O(zero_largest));
  LUT1 #(
    .INIT(2'h1)) 
    \opt_has_pipe.first_q[9]_i_1 
       (.I0(zero_largest),
        .O(lrg_mant_z_mux));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[8]_0 [0]),
        .Q(\opt_has_pipe.first_q_reg[9]_0 [0]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[8]_0 [1]),
        .Q(\opt_has_pipe.first_q_reg[9]_0 [1]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[8]_0 [2]),
        .Q(\opt_has_pipe.first_q_reg[9]_0 [2]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[8]_0 [3]),
        .Q(\opt_has_pipe.first_q_reg[9]_0 [3]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[8]_0 [4]),
        .Q(\opt_has_pipe.first_q_reg[9]_0 [4]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[8]_0 [5]),
        .Q(\opt_has_pipe.first_q_reg[9]_0 [5]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[8]_0 [6]),
        .Q(\opt_has_pipe.first_q_reg[9]_0 [6]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[8]_0 [7]),
        .Q(\opt_has_pipe.first_q_reg[9]_0 [7]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[8]_0 [8]),
        .Q(\opt_has_pipe.first_q_reg[9]_0 [8]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(lrg_mant_z_mux),
        .Q(\opt_has_pipe.first_q_reg[9]_0 [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized39
   (add_mant,
    D,
    aclk);
  output [10:0]add_mant;
  input [10:0]D;
  input aclk;

  wire [10:0]D;
  wire aclk;
  (* RTL_KEEP = "true" *) wire [10:0]first_q;

  assign add_mant[10:0] = first_q;
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
    \opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(first_q[10]),
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
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(first_q[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(first_q[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(first_q[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(first_q[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(first_q[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(first_q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized45
   (out,
    \opt_has_pipe.first_q_reg[0]_0 ,
    A,
    \opt_has_pipe.first_q_reg[2]_0 ,
    \opt_has_pipe.first_q_reg[1]_0 ,
    \opt_has_pipe.first_q_reg[0]_1 ,
    \opt_has_pipe.first_q_reg[0]_2 ,
    DI,
    \RESULT_REG.NORMAL.mant_op_reg[3] ,
    \RESULT_REG.NORMAL.mant_op_reg[1] ,
    \CHAIN_GEN[2].C_MUX.CARRY_MUX ,
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ,
    \RESULT_REG.NORMAL.mant_op_reg[1]_0 ,
    \RESULT_REG.NORMAL.mant_op_reg[3]_0 ,
    \RESULT_REG.NORMAL.exp_op[6]_i_4 ,
    \RESULT_REG.NORMAL.exp_op[6]_i_4_0 ,
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 ,
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1 ,
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_2 ,
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8_0 ,
    zeros_del,
    D,
    aclk,
    CARRYS_OUT,
    op_a__0);
  output [2:0]out;
  output [0:0]\opt_has_pipe.first_q_reg[0]_0 ;
  output [0:0]A;
  output [2:0]\opt_has_pipe.first_q_reg[2]_0 ;
  output \opt_has_pipe.first_q_reg[1]_0 ;
  output \opt_has_pipe.first_q_reg[0]_1 ;
  output \opt_has_pipe.first_q_reg[0]_2 ;
  input [2:0]DI;
  input \RESULT_REG.NORMAL.mant_op_reg[3] ;
  input \RESULT_REG.NORMAL.mant_op_reg[1] ;
  input \CHAIN_GEN[2].C_MUX.CARRY_MUX ;
  input \CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ;
  input \RESULT_REG.NORMAL.mant_op_reg[1]_0 ;
  input \RESULT_REG.NORMAL.mant_op_reg[3]_0 ;
  input \RESULT_REG.NORMAL.exp_op[6]_i_4 ;
  input \RESULT_REG.NORMAL.exp_op[6]_i_4_0 ;
  input \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 ;
  input \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1 ;
  input \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_2 ;
  input \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8_0 ;
  input zeros_del;
  input [1:0]D;
  input aclk;
  input [0:0]CARRYS_OUT;
  input [0:0]op_a__0;

  wire [0:0]A;
  wire [0:0]CARRYS_OUT;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_2 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__4_n_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__4_n_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__5_n_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_4__0_n_0 ;
  wire [1:0]D;
  wire [2:0]DI;
  wire \RESULT_REG.NORMAL.exp_op[6]_i_11_n_0 ;
  wire \RESULT_REG.NORMAL.exp_op[6]_i_4 ;
  wire \RESULT_REG.NORMAL.exp_op[6]_i_4_0 ;
  wire \RESULT_REG.NORMAL.mant_op_reg[1] ;
  wire \RESULT_REG.NORMAL.mant_op_reg[1]_0 ;
  wire \RESULT_REG.NORMAL.mant_op_reg[3] ;
  wire \RESULT_REG.NORMAL.mant_op_reg[3]_0 ;
  wire aclk;
  (* RTL_KEEP = "true" *) wire [3:0]first_q;
  wire [0:0]op_a__0;
  wire [0:0]\opt_has_pipe.first_q_reg[0]_0 ;
  wire \opt_has_pipe.first_q_reg[0]_1 ;
  wire \opt_has_pipe.first_q_reg[0]_2 ;
  wire \opt_has_pipe.first_q_reg[1]_0 ;
  wire [2:0]\opt_has_pipe.first_q_reg[2]_0 ;
  wire zeros_del;

  assign out[2:0] = first_q[2:0];
  LUT6 #(
    .INIT(64'h00FC000CAAAAAAAA)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6 
       (.I0(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__4_n_0 ),
        .I1(\RESULT_REG.NORMAL.mant_op_reg[1]_0 ),
        .I2(first_q[0]),
        .I3(first_q[1]),
        .I4(\RESULT_REG.NORMAL.mant_op_reg[1] ),
        .I5(\RESULT_REG.NORMAL.mant_op_reg[3] ),
        .O(\opt_has_pipe.first_q_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'h4444FFF0444400F0)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__4 
       (.I0(first_q[2]),
        .I1(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 ),
        .I2(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1 ),
        .I3(first_q[0]),
        .I4(first_q[1]),
        .I5(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_2 ),
        .O(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__4_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FDD0DFF7FCC0C)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__7 
       (.I0(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__5_n_0 ),
        .I1(\RESULT_REG.NORMAL.mant_op_reg[3] ),
        .I2(\RESULT_REG.NORMAL.mant_op_reg[1] ),
        .I3(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_4__0_n_0 ),
        .I4(\CHAIN_GEN[2].C_MUX.CARRY_MUX ),
        .I5(\CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ),
        .O(A));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8 
       (.I0(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__4_n_0 ),
        .I1(\RESULT_REG.NORMAL.mant_op_reg[3] ),
        .I2(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__4_n_0 ),
        .O(\opt_has_pipe.first_q_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'h4444FFF0444400F0)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__4 
       (.I0(first_q[2]),
        .I1(\RESULT_REG.NORMAL.mant_op_reg[1] ),
        .I2(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8_0 ),
        .I3(first_q[0]),
        .I4(first_q[1]),
        .I5(\RESULT_REG.NORMAL.mant_op_reg[1]_0 ),
        .O(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__4_n_0 ));
  LUT4 #(
    .INIT(16'h555D)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__5 
       (.I0(zeros_del),
        .I1(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0 ),
        .I2(first_q[0]),
        .I3(first_q[1]),
        .O(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_4__0 
       (.I0(first_q[0]),
        .I1(first_q[1]),
        .O(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__5 
       (.I0(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__4_n_0 ),
        .I1(\RESULT_REG.NORMAL.mant_op_reg[3] ),
        .I2(\RESULT_REG.NORMAL.mant_op_reg[3]_0 ),
        .O(\opt_has_pipe.first_q_reg[2]_0 [2]));
  LUT3 #(
    .INIT(8'hCA)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_3 
       (.I0(first_q[0]),
        .I1(first_q[2]),
        .I2(first_q[1]),
        .O(\opt_has_pipe.first_q_reg[0]_2 ));
  LUT4 #(
    .INIT(16'h596A)) 
    \RESULT_REG.NORMAL.exp_op[6]_i_11 
       (.I0(DI[1]),
        .I1(first_q[1]),
        .I2(first_q[2]),
        .I3(first_q[0]),
        .O(\RESULT_REG.NORMAL.exp_op[6]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h3CFFFF5A)) 
    \RESULT_REG.NORMAL.exp_op[6]_i_6 
       (.I0(first_q[0]),
        .I1(first_q[2]),
        .I2(DI[1]),
        .I3(DI[2]),
        .I4(first_q[1]),
        .O(\opt_has_pipe.first_q_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFF6FFF6F6FFF6)) 
    \RESULT_REG.NORMAL.exp_op[6]_i_9 
       (.I0(first_q[1]),
        .I1(DI[2]),
        .I2(\RESULT_REG.NORMAL.exp_op[6]_i_11_n_0 ),
        .I3(\RESULT_REG.NORMAL.exp_op[6]_i_4 ),
        .I4(\RESULT_REG.NORMAL.exp_op[6]_i_4_0 ),
        .I5(DI[0]),
        .O(\opt_has_pipe.first_q_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hCA35)) 
    i__carry_i_3
       (.I0(first_q[0]),
        .I1(first_q[2]),
        .I2(first_q[1]),
        .I3(DI[1]),
        .O(\opt_has_pipe.first_q_reg[0]_0 ));
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
        .D(op_a__0),
        .Q(first_q[2]),
        .R(CARRYS_OUT));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(first_q[3]),
        .R(CARRYS_OUT));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized45_3
   (\opt_has_pipe.i_pipe[3].pipe_reg[3][0] ,
    \opt_has_pipe.first_q_reg[1]_0 ,
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ,
    \opt_has_pipe.first_q_reg[3]_0 ,
    \opt_has_pipe.first_q_reg[0]_0 ,
    DI,
    out,
    D,
    aclk,
    CARRYS_OUT,
    op_a);
  output [0:0]\opt_has_pipe.i_pipe[3].pipe_reg[3][0] ;
  output \opt_has_pipe.first_q_reg[1]_0 ;
  output \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ;
  output \opt_has_pipe.first_q_reg[3]_0 ;
  output \opt_has_pipe.first_q_reg[0]_0 ;
  input [0:0]DI;
  input [2:0]out;
  input [1:0]D;
  input aclk;
  input [0:0]CARRYS_OUT;
  input [1:0]op_a;

  wire [0:0]CARRYS_OUT;
  wire [1:0]D;
  wire [0:0]DI;
  wire aclk;
  (* RTL_KEEP = "true" *) wire [3:0]first_q;
  wire [1:0]op_a;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire \opt_has_pipe.first_q_reg[1]_0 ;
  wire \opt_has_pipe.first_q_reg[3]_0 ;
  wire [0:0]\opt_has_pipe.i_pipe[3].pipe_reg[3][0] ;
  wire \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ;
  wire [2:0]out;

  LUT5 #(
    .INIT(32'h0000BABF)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_3__0 
       (.I0(out[1]),
        .I1(first_q[1]),
        .I2(out[0]),
        .I3(first_q[0]),
        .I4(\opt_has_pipe.first_q_reg[3]_0 ),
        .O(\opt_has_pipe.first_q_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hB080)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_7 
       (.I0(first_q[3]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(first_q[2]),
        .O(\opt_has_pipe.first_q_reg[3]_0 ));
  LUT4 #(
    .INIT(16'hFF1D)) 
    \RESULT_REG.NORMAL.exp_op[6]_i_12 
       (.I0(first_q[0]),
        .I1(out[0]),
        .I2(first_q[1]),
        .I3(out[1]),
        .O(\opt_has_pipe.first_q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h99999999AAA999A9)) 
    \RESULT_REG.NORMAL.exp_op[6]_i_7 
       (.I0(DI),
        .I1(\opt_has_pipe.first_q_reg[3]_0 ),
        .I2(first_q[0]),
        .I3(out[0]),
        .I4(first_q[1]),
        .I5(out[1]),
        .O(\opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4
       (.I0(\opt_has_pipe.first_q_reg[1]_0 ),
        .I1(DI),
        .O(\opt_has_pipe.i_pipe[3].pipe_reg[3][0] ));
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
        .D(op_a[0]),
        .Q(first_q[2]),
        .R(CARRYS_OUT));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(op_a[1]),
        .Q(first_q[3]),
        .R(CARRYS_OUT));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized49
   (A,
    \opt_has_pipe.first_q_reg[16]_0 ,
    \opt_has_pipe.first_q_reg[18]_0 ,
    \opt_has_pipe.first_q_reg[16]_1 ,
    \opt_has_pipe.first_q_reg[17]_0 ,
    \opt_has_pipe.first_q_reg[19]_0 ,
    \opt_has_pipe.first_q_reg[14]_0 ,
    \opt_has_pipe.first_q_reg[19]_1 ,
    \opt_has_pipe.first_q_reg[15]_0 ,
    \opt_has_pipe.first_q_reg[17]_1 ,
    \opt_has_pipe.first_q_reg[0] ,
    \opt_has_pipe.first_q_reg[16]_2 ,
    \RESULT_REG.NORMAL.mant_op_reg[14] ,
    out,
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0 ,
    zeros_del,
    D,
    aclk,
    CARRYS_OUT,
    \opt_has_pipe.first_q_reg[11]_0 ,
    \opt_has_pipe.first_q_reg[10]_0 ,
    \opt_has_pipe.first_q_reg[9]_0 ,
    \opt_has_pipe.first_q_reg[8]_0 ,
    \opt_has_pipe.first_q_reg[7]_0 ,
    \opt_has_pipe.first_q_reg[6]_0 ,
    \opt_has_pipe.first_q_reg[5]_0 ,
    \opt_has_pipe.first_q_reg[4]_0 ,
    \opt_has_pipe.first_q_reg[12]_0 ,
    add_mant);
  output [7:0]A;
  output [4:0]\opt_has_pipe.first_q_reg[16]_0 ;
  output \opt_has_pipe.first_q_reg[18]_0 ;
  output \opt_has_pipe.first_q_reg[16]_1 ;
  output \opt_has_pipe.first_q_reg[17]_0 ;
  output \opt_has_pipe.first_q_reg[19]_0 ;
  output \opt_has_pipe.first_q_reg[14]_0 ;
  output \opt_has_pipe.first_q_reg[19]_1 ;
  output \opt_has_pipe.first_q_reg[15]_0 ;
  output \opt_has_pipe.first_q_reg[17]_1 ;
  output [0:0]\opt_has_pipe.first_q_reg[0] ;
  output \opt_has_pipe.first_q_reg[16]_2 ;
  input \RESULT_REG.NORMAL.mant_op_reg[14] ;
  input [2:0]out;
  input \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0 ;
  input zeros_del;
  input [2:0]D;
  input aclk;
  input [0:0]CARRYS_OUT;
  input \opt_has_pipe.first_q_reg[11]_0 ;
  input \opt_has_pipe.first_q_reg[10]_0 ;
  input \opt_has_pipe.first_q_reg[9]_0 ;
  input \opt_has_pipe.first_q_reg[8]_0 ;
  input \opt_has_pipe.first_q_reg[7]_0 ;
  input \opt_has_pipe.first_q_reg[6]_0 ;
  input \opt_has_pipe.first_q_reg[5]_0 ;
  input \opt_has_pipe.first_q_reg[4]_0 ;
  input \opt_has_pipe.first_q_reg[12]_0 ;
  input [7:0]add_mant;

  wire [7:0]A;
  wire [0:0]CARRYS_OUT;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0 ;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2__3_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__3_n_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__3_n_0 ;
  wire \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2__2_n_0 ;
  wire \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__2_n_0 ;
  wire \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__3_n_0 ;
  wire \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__2_n_0 ;
  wire \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__3_n_0 ;
  wire \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__1_n_0 ;
  wire \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__2_n_0 ;
  wire \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2__1_n_0 ;
  wire \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2__2_n_0 ;
  wire \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire [2:0]D;
  wire \RESULT_REG.NORMAL.mant_op_reg[14] ;
  wire aclk;
  wire [7:0]add_mant;
  wire [0:0]\opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[10]_0 ;
  wire \opt_has_pipe.first_q_reg[11]_0 ;
  wire \opt_has_pipe.first_q_reg[12]_0 ;
  wire \opt_has_pipe.first_q_reg[14]_0 ;
  wire \opt_has_pipe.first_q_reg[15]_0 ;
  wire [4:0]\opt_has_pipe.first_q_reg[16]_0 ;
  wire \opt_has_pipe.first_q_reg[16]_1 ;
  wire \opt_has_pipe.first_q_reg[16]_2 ;
  wire \opt_has_pipe.first_q_reg[17]_0 ;
  wire \opt_has_pipe.first_q_reg[17]_1 ;
  wire \opt_has_pipe.first_q_reg[18]_0 ;
  wire \opt_has_pipe.first_q_reg[19]_0 ;
  wire \opt_has_pipe.first_q_reg[19]_1 ;
  wire \opt_has_pipe.first_q_reg[4]_0 ;
  wire \opt_has_pipe.first_q_reg[5]_0 ;
  wire \opt_has_pipe.first_q_reg[6]_0 ;
  wire \opt_has_pipe.first_q_reg[7]_0 ;
  wire \opt_has_pipe.first_q_reg[8]_0 ;
  wire \opt_has_pipe.first_q_reg[9]_0 ;
  wire \opt_has_pipe.first_q_reg_n_0_[10] ;
  wire \opt_has_pipe.first_q_reg_n_0_[11] ;
  wire \opt_has_pipe.first_q_reg_n_0_[12] ;
  wire \opt_has_pipe.first_q_reg_n_0_[13] ;
  wire \opt_has_pipe.first_q_reg_n_0_[1] ;
  wire \opt_has_pipe.first_q_reg_n_0_[2] ;
  wire \opt_has_pipe.first_q_reg_n_0_[3] ;
  wire \opt_has_pipe.first_q_reg_n_0_[4] ;
  wire \opt_has_pipe.first_q_reg_n_0_[5] ;
  wire \opt_has_pipe.first_q_reg_n_0_[6] ;
  wire \opt_has_pipe.first_q_reg_n_0_[7] ;
  wire \opt_has_pipe.first_q_reg_n_0_[8] ;
  wire \opt_has_pipe.first_q_reg_n_0_[9] ;
  wire [2:0]out;
  wire zeros_del;

  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5 
       (.I0(\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2__2_n_0 ),
        .I1(\RESULT_REG.NORMAL.mant_op_reg[14] ),
        .I2(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2__3_n_0 ),
        .O(A[0]));
  LUT6 #(
    .INIT(64'h00002320FFFF2320)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__6 
       (.I0(\opt_has_pipe.first_q_reg[18]_0 ),
        .I1(out[1]),
        .I2(out[0]),
        .I3(\opt_has_pipe.first_q_reg[16]_1 ),
        .I4(\RESULT_REG.NORMAL.mant_op_reg[14] ),
        .I5(\opt_has_pipe.first_q_reg[17]_0 ),
        .O(\opt_has_pipe.first_q_reg[16]_0 [0]));
  LUT6 #(
    .INIT(64'h55FF555F55FF555D)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__7 
       (.I0(zeros_del),
        .I1(\opt_has_pipe.first_q_reg[17]_1 ),
        .I2(out[0]),
        .I3(out[1]),
        .I4(\opt_has_pipe.first_q_reg[19]_1 ),
        .I5(\opt_has_pipe.first_q_reg[18]_0 ),
        .O(\opt_has_pipe.first_q_reg[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2__3 
       (.I0(\opt_has_pipe.first_q_reg[14]_0 ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .I2(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0 ),
        .I3(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[8] ),
        .O(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2__3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__5 
       (.I0(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2__3_n_0 ),
        .I1(\RESULT_REG.NORMAL.mant_op_reg[14] ),
        .I2(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__3_n_0 ),
        .O(A[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__3 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[9] ),
        .I2(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0 ),
        .I3(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[7] ),
        .O(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__6 
       (.I0(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__3_n_0 ),
        .I1(\RESULT_REG.NORMAL.mant_op_reg[14] ),
        .I2(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__3_n_0 ),
        .O(A[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__3 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[8] ),
        .I2(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0 ),
        .I3(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[6] ),
        .O(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__3_n_0 ));
  LUT4 #(
    .INIT(16'hF1FD)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_5 
       (.I0(\opt_has_pipe.first_q_reg[17]_1 ),
        .I1(out[0]),
        .I2(out[1]),
        .I3(\opt_has_pipe.first_q_reg[19]_1 ),
        .O(\opt_has_pipe.first_q_reg[17]_0 ));
  LUT4 #(
    .INIT(16'hF1FD)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_6 
       (.I0(\opt_has_pipe.first_q_reg[16]_1 ),
        .I1(out[0]),
        .I2(out[1]),
        .I3(\opt_has_pipe.first_q_reg[18]_0 ),
        .O(\opt_has_pipe.first_q_reg[16]_2 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__4 
       (.I0(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__3_n_0 ),
        .I1(\RESULT_REG.NORMAL.mant_op_reg[14] ),
        .I2(\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2__2_n_0 ),
        .O(A[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2__2 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[7] ),
        .I2(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0 ),
        .I3(\opt_has_pipe.first_q_reg_n_0_[9] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[5] ),
        .O(\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2__3 
       (.I0(\opt_has_pipe.first_q_reg[19]_1 ),
        .I1(\opt_has_pipe.first_q_reg[15]_0 ),
        .I2(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0 ),
        .I3(\opt_has_pipe.first_q_reg[17]_1 ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .O(\opt_has_pipe.first_q_reg[19]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__3 
       (.I0(\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2__2_n_0 ),
        .I1(\RESULT_REG.NORMAL.mant_op_reg[14] ),
        .I2(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__2_n_0 ),
        .O(A[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__4 
       (.I0(\opt_has_pipe.first_q_reg[19]_0 ),
        .I1(\RESULT_REG.NORMAL.mant_op_reg[14] ),
        .I2(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__3_n_0 ),
        .O(\opt_has_pipe.first_q_reg[16]_0 [1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__2 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[6] ),
        .I2(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0 ),
        .I3(\opt_has_pipe.first_q_reg_n_0_[8] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[4] ),
        .O(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__3 
       (.I0(\opt_has_pipe.first_q_reg[18]_0 ),
        .I1(\opt_has_pipe.first_q_reg[14]_0 ),
        .I2(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0 ),
        .I3(\opt_has_pipe.first_q_reg[16]_1 ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .O(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__3 
       (.I0(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__2_n_0 ),
        .I1(\RESULT_REG.NORMAL.mant_op_reg[14] ),
        .I2(\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__2_n_0 ),
        .O(A[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__4 
       (.I0(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__3_n_0 ),
        .I1(\RESULT_REG.NORMAL.mant_op_reg[14] ),
        .I2(\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__3_n_0 ),
        .O(\opt_has_pipe.first_q_reg[16]_0 [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__2 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[9] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[5] ),
        .I2(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0 ),
        .I3(\opt_has_pipe.first_q_reg_n_0_[7] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[3] ),
        .O(\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__3 
       (.I0(\opt_has_pipe.first_q_reg[17]_1 ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .I2(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0 ),
        .I3(\opt_has_pipe.first_q_reg[15]_0 ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .O(\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__3 
       (.I0(\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__2_n_0 ),
        .I1(\RESULT_REG.NORMAL.mant_op_reg[14] ),
        .I2(\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__1_n_0 ),
        .O(A[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__4 
       (.I0(\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__3_n_0 ),
        .I1(\RESULT_REG.NORMAL.mant_op_reg[14] ),
        .I2(\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__2_n_0 ),
        .O(\opt_has_pipe.first_q_reg[16]_0 [3]));
  LUT6 #(
    .INIT(64'hAACAAACAAFCFA0C0)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__1 
       (.I0(\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[6] ),
        .I2(out[1]),
        .I3(out[2]),
        .I4(\opt_has_pipe.first_q_reg_n_0_[2] ),
        .I5(out[0]),
        .O(\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__2 
       (.I0(\opt_has_pipe.first_q_reg[16]_1 ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .I2(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0 ),
        .I3(\opt_has_pipe.first_q_reg[14]_0 ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .O(\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[8] ),
        .I1(out[1]),
        .I2(\opt_has_pipe.first_q_reg_n_0_[4] ),
        .O(\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__2 
       (.I0(\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__1_n_0 ),
        .I1(\RESULT_REG.NORMAL.mant_op_reg[14] ),
        .I2(\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2__1_n_0 ),
        .O(A[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__3 
       (.I0(\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__2_n_0 ),
        .I1(\RESULT_REG.NORMAL.mant_op_reg[14] ),
        .I2(\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2__2_n_0 ),
        .O(\opt_has_pipe.first_q_reg[16]_0 [4]));
  LUT6 #(
    .INIT(64'hAACAAACAAFCFA0C0)) 
    \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2__1 
       (.I0(\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[5] ),
        .I2(out[1]),
        .I3(out[2]),
        .I4(\opt_has_pipe.first_q_reg_n_0_[1] ),
        .I5(out[0]),
        .O(\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2__2 
       (.I0(\opt_has_pipe.first_q_reg[15]_0 ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .I2(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0 ),
        .I3(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[9] ),
        .O(\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[7] ),
        .I1(out[1]),
        .I2(\opt_has_pipe.first_q_reg_n_0_[3] ),
        .O(\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3_n_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[10]_0 ),
        .Q(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .R(CARRYS_OUT));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[11]_0 ),
        .Q(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .R(CARRYS_OUT));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(add_mant[7]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .R(\opt_has_pipe.first_q_reg[12]_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(add_mant[6]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .R(\opt_has_pipe.first_q_reg[12]_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(add_mant[5]),
        .Q(\opt_has_pipe.first_q_reg[14]_0 ),
        .R(\opt_has_pipe.first_q_reg[12]_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(add_mant[4]),
        .Q(\opt_has_pipe.first_q_reg[15]_0 ),
        .R(\opt_has_pipe.first_q_reg[12]_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(add_mant[3]),
        .Q(\opt_has_pipe.first_q_reg[16]_1 ),
        .R(\opt_has_pipe.first_q_reg[12]_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(add_mant[2]),
        .Q(\opt_has_pipe.first_q_reg[17]_1 ),
        .R(\opt_has_pipe.first_q_reg[12]_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(add_mant[1]),
        .Q(\opt_has_pipe.first_q_reg[18]_0 ),
        .R(\opt_has_pipe.first_q_reg[12]_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(add_mant[0]),
        .Q(\opt_has_pipe.first_q_reg[19]_1 ),
        .R(\opt_has_pipe.first_q_reg[12]_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[1] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[2] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[3] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[4]_0 ),
        .Q(\opt_has_pipe.first_q_reg_n_0_[4] ),
        .R(CARRYS_OUT));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[5]_0 ),
        .Q(\opt_has_pipe.first_q_reg_n_0_[5] ),
        .R(CARRYS_OUT));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[6]_0 ),
        .Q(\opt_has_pipe.first_q_reg_n_0_[6] ),
        .R(CARRYS_OUT));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[7]_0 ),
        .Q(\opt_has_pipe.first_q_reg_n_0_[7] ),
        .R(CARRYS_OUT));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[8]_0 ),
        .Q(\opt_has_pipe.first_q_reg_n_0_[8] ),
        .R(CARRYS_OUT));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[9]_0 ),
        .Q(\opt_has_pipe.first_q_reg_n_0_[9] ),
        .R(CARRYS_OUT));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5
   (zeros_del,
    \opt_has_pipe.first_q_reg[0]_0 ,
    aclk);
  output zeros_del;
  input \opt_has_pipe.first_q_reg[0]_0 ;
  input aclk;

  wire aclk;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire zeros_del;

  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[0]_0 ),
        .Q(zeros_del),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized59
   (D,
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ,
    \opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0 ,
    subtract,
    a_exp_flt_all_one,
    \s_axis_a_tdata[22] ,
    b_exp_flt_all_one,
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_1 ,
    op_state,
    op_sign,
    \RESULT_REG.NORMAL.exp_op_reg[3] ,
    \RESULT_REG.NORMAL.exp_op_reg[3]_0 ,
    Q,
    s_axis_a_tdata,
    s_axis_b_tdata,
    CO,
    \RESULT_REG.NORMAL.exp_op_reg[2] ,
    \RESULT_REG.NORMAL.exp_op_reg[2]_0 ,
    \RESULT_REG.NORMAL.exp_op_reg[2]_1 ,
    \RESULT_REG.NORMAL.exp_op_reg[2]_2 ,
    \RESULT_REG.NORMAL.exp_op_reg[2]_3 ,
    add_mant_msbs_del,
    lrg_almost_over_del,
    cancellation,
    det_sign_del,
    \opt_has_pipe.first_q_reg[1]_0 ,
    aclk);
  output [2:0]D;
  output \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ;
  output \opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0 ;
  output subtract;
  output a_exp_flt_all_one;
  output \s_axis_a_tdata[22] ;
  output b_exp_flt_all_one;
  output \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_1 ;
  output [0:0]op_state;
  output op_sign;
  input [3:0]\RESULT_REG.NORMAL.exp_op_reg[3] ;
  input \RESULT_REG.NORMAL.exp_op_reg[3]_0 ;
  input [1:0]Q;
  input [7:0]s_axis_a_tdata;
  input [7:0]s_axis_b_tdata;
  input [0:0]CO;
  input \RESULT_REG.NORMAL.exp_op_reg[2] ;
  input \RESULT_REG.NORMAL.exp_op_reg[2]_0 ;
  input \RESULT_REG.NORMAL.exp_op_reg[2]_1 ;
  input \RESULT_REG.NORMAL.exp_op_reg[2]_2 ;
  input \RESULT_REG.NORMAL.exp_op_reg[2]_3 ;
  input [0:0]add_mant_msbs_del;
  input lrg_almost_over_del;
  input cancellation;
  input det_sign_del;
  input [1:0]\opt_has_pipe.first_q_reg[1]_0 ;
  input aclk;

  wire [0:0]CO;
  wire [2:0]D;
  wire [1:0]Q;
  wire \RESULT_REG.NORMAL.exp_op[2]_i_2_n_0 ;
  wire \RESULT_REG.NORMAL.exp_op[6]_i_5_n_0 ;
  wire \RESULT_REG.NORMAL.exp_op_reg[2] ;
  wire \RESULT_REG.NORMAL.exp_op_reg[2]_0 ;
  wire \RESULT_REG.NORMAL.exp_op_reg[2]_1 ;
  wire \RESULT_REG.NORMAL.exp_op_reg[2]_2 ;
  wire \RESULT_REG.NORMAL.exp_op_reg[2]_3 ;
  wire [3:0]\RESULT_REG.NORMAL.exp_op_reg[3] ;
  wire \RESULT_REG.NORMAL.exp_op_reg[3]_0 ;
  wire a_exp_flt_all_one;
  wire aclk;
  wire [0:0]add_mant_msbs_del;
  wire b_exp_flt_all_one;
  wire cancellation;
  wire det_sign_del;
  wire [1:0]det_state_del;
  (* RTL_KEEP = "true" *) wire [1:0]first_q;
  wire lrg_almost_over_del;
  wire op_sign;
  wire [0:0]op_state;
  wire \opt_has_pipe.first_q[1]_i_4_n_0 ;
  wire [1:0]\opt_has_pipe.first_q_reg[1]_0 ;
  wire \opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][0] ;
  wire \opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][1] ;
  wire \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ;
  wire \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_1 ;
  wire \opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0 ;
  wire [7:0]s_axis_a_tdata;
  wire \s_axis_a_tdata[22] ;
  wire [7:0]s_axis_b_tdata;
  wire subtract;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hAAEB)) 
    \RESULT_REG.NORMAL.exp_op[0]_i_1 
       (.I0(\opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ),
        .I1(\RESULT_REG.NORMAL.exp_op_reg[3] [0]),
        .I2(Q[1]),
        .I3(\opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hF0F0E1F0F0F0F0F0)) 
    \RESULT_REG.NORMAL.exp_op[2]_i_1 
       (.I0(\opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0 ),
        .I1(\opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ),
        .I2(\RESULT_REG.NORMAL.exp_op[2]_i_2_n_0 ),
        .I3(\RESULT_REG.NORMAL.exp_op_reg[3] [1]),
        .I4(Q[1]),
        .I5(\RESULT_REG.NORMAL.exp_op_reg[3] [0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \RESULT_REG.NORMAL.exp_op[2]_i_2 
       (.I0(\opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ),
        .I1(\opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0 ),
        .I2(\RESULT_REG.NORMAL.exp_op_reg[3] [2]),
        .O(\RESULT_REG.NORMAL.exp_op[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h45BA)) 
    \RESULT_REG.NORMAL.exp_op[3]_i_1 
       (.I0(\opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ),
        .I1(\opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0 ),
        .I2(\RESULT_REG.NORMAL.exp_op_reg[3] [3]),
        .I3(\RESULT_REG.NORMAL.exp_op_reg[3]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hBABABAAABABABABA)) 
    \RESULT_REG.NORMAL.exp_op[6]_i_3 
       (.I0(det_state_del[0]),
        .I1(\RESULT_REG.NORMAL.exp_op[6]_i_5_n_0 ),
        .I2(CO),
        .I3(\RESULT_REG.NORMAL.exp_op_reg[2] ),
        .I4(\RESULT_REG.NORMAL.exp_op_reg[2]_0 ),
        .I5(\RESULT_REG.NORMAL.exp_op_reg[2]_1 ),
        .O(\opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFAEFF)) 
    \RESULT_REG.NORMAL.exp_op[6]_i_4 
       (.I0(det_state_del[1]),
        .I1(\RESULT_REG.NORMAL.exp_op_reg[2]_1 ),
        .I2(\RESULT_REG.NORMAL.exp_op_reg[2]_2 ),
        .I3(CO),
        .I4(\RESULT_REG.NORMAL.exp_op_reg[2]_3 ),
        .I5(det_state_del[0]),
        .O(\opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \RESULT_REG.NORMAL.exp_op[6]_i_5 
       (.I0(det_state_del[1]),
        .I1(det_state_del[0]),
        .I2(add_mant_msbs_del),
        .I3(lrg_almost_over_del),
        .I4(cancellation),
        .O(\RESULT_REG.NORMAL.exp_op[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \RESULT_REG.NORMAL.mant_op[14]_i_1 
       (.I0(\opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0 ),
        .I1(\opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0 ),
        .O(op_state));
  LUT4 #(
    .INIT(16'h00F2)) 
    \RESULT_REG.NORMAL.mant_op[15]_i_1 
       (.I0(det_state_del[0]),
        .I1(det_state_del[1]),
        .I2(Q[0]),
        .I3(\opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0 ),
        .O(\opt_has_pipe.i_pipe[3].pipe_reg[3][0]_1 ));
  LUT4 #(
    .INIT(16'hA8AA)) 
    \RESULT_REG.NORMAL.sign_op_i_1 
       (.I0(det_sign_del),
        .I1(det_state_del[0]),
        .I2(det_state_del[1]),
        .I3(cancellation),
        .O(op_sign));
  LUT2 #(
    .INIT(4'h9)) 
    \opt_has_pipe.first_q[0]_i_1__1 
       (.I0(s_axis_a_tdata[7]),
        .I1(s_axis_b_tdata[7]),
        .O(subtract));
  LUT4 #(
    .INIT(16'h8000)) 
    \opt_has_pipe.first_q[1]_i_2 
       (.I0(\opt_has_pipe.first_q[1]_i_4_n_0 ),
        .I1(s_axis_b_tdata[0]),
        .I2(s_axis_b_tdata[1]),
        .I3(s_axis_b_tdata[2]),
        .O(b_exp_flt_all_one));
  LUT4 #(
    .INIT(16'h8000)) 
    \opt_has_pipe.first_q[1]_i_3 
       (.I0(\s_axis_a_tdata[22] ),
        .I1(s_axis_a_tdata[0]),
        .I2(s_axis_a_tdata[1]),
        .I3(s_axis_a_tdata[2]),
        .O(a_exp_flt_all_one));
  LUT4 #(
    .INIT(16'h8000)) 
    \opt_has_pipe.first_q[1]_i_4 
       (.I0(s_axis_b_tdata[6]),
        .I1(s_axis_b_tdata[5]),
        .I2(s_axis_b_tdata[4]),
        .I3(s_axis_b_tdata[3]),
        .O(\opt_has_pipe.first_q[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \opt_has_pipe.first_q[1]_i_5 
       (.I0(s_axis_a_tdata[6]),
        .I1(s_axis_a_tdata[5]),
        .I2(s_axis_a_tdata[4]),
        .I3(s_axis_a_tdata[3]),
        .O(\s_axis_a_tdata[22] ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[1]_0 [0]),
        .Q(first_q[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[1]_0 [1]),
        .Q(first_q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[2].pipe_reg[2][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(first_q[0]),
        .Q(\opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[2].pipe_reg[2][1] 
       (.C(aclk),
        .CE(1'b1),
        .D(first_q[1]),
        .Q(\opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][0] ),
        .Q(det_state_del[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[3].pipe_reg[3][1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][1] ),
        .Q(det_state_del[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_14
   (\opt_has_pipe.first_q_reg[0]_0 ,
    xor_rnd1,
    \opt_has_pipe.first_q_reg[0]_1 ,
    \opt_has_pipe.first_q_reg[0]_2 ,
    aclk,
    \opt_has_pipe.first_q_reg[0]_3 ,
    s_axis_a_tdata,
    b_exp_flt_all_zero,
    out,
    \opt_has_pipe.first_q_reg[8] ,
    A,
    Q,
    \opt_has_pipe.first_q_reg[1] ,
    \opt_has_pipe.first_q_reg[3] ,
    \opt_has_pipe.first_q_reg[6] ,
    \opt_has_pipe.first_q_reg[7] ,
    \opt_has_pipe.first_q_reg[0]_4 ,
    \opt_has_pipe.first_q_reg[5] ,
    \opt_has_pipe.first_q_reg[4] ,
    \opt_has_pipe.first_q_reg[3]_0 ,
    \opt_has_pipe.first_q_reg[2] ,
    \opt_has_pipe.first_q_reg[2]_0 ,
    \opt_has_pipe.first_q_reg[3]_1 );
  output \opt_has_pipe.first_q_reg[0]_0 ;
  output [6:0]xor_rnd1;
  output [3:0]\opt_has_pipe.first_q_reg[0]_1 ;
  output \opt_has_pipe.first_q_reg[0]_2 ;
  input aclk;
  input \opt_has_pipe.first_q_reg[0]_3 ;
  input [2:0]s_axis_a_tdata;
  input b_exp_flt_all_zero;
  input out;
  input \opt_has_pipe.first_q_reg[8] ;
  input [0:0]A;
  input [6:0]Q;
  input \opt_has_pipe.first_q_reg[1] ;
  input [3:0]\opt_has_pipe.first_q_reg[3] ;
  input \opt_has_pipe.first_q_reg[6] ;
  input \opt_has_pipe.first_q_reg[7] ;
  input \opt_has_pipe.first_q_reg[0]_4 ;
  input \opt_has_pipe.first_q_reg[5] ;
  input \opt_has_pipe.first_q_reg[4] ;
  input \opt_has_pipe.first_q_reg[3]_0 ;
  input \opt_has_pipe.first_q_reg[2] ;
  input \opt_has_pipe.first_q_reg[2]_0 ;
  input \opt_has_pipe.first_q_reg[3]_1 ;

  wire [0:0]A;
  wire [6:0]Q;
  wire aclk;
  wire b_exp_flt_all_zero;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire [3:0]\opt_has_pipe.first_q_reg[0]_1 ;
  wire \opt_has_pipe.first_q_reg[0]_2 ;
  wire \opt_has_pipe.first_q_reg[0]_3 ;
  wire \opt_has_pipe.first_q_reg[0]_4 ;
  wire \opt_has_pipe.first_q_reg[1] ;
  wire \opt_has_pipe.first_q_reg[2] ;
  wire \opt_has_pipe.first_q_reg[2]_0 ;
  wire [3:0]\opt_has_pipe.first_q_reg[3] ;
  wire \opt_has_pipe.first_q_reg[3]_0 ;
  wire \opt_has_pipe.first_q_reg[3]_1 ;
  wire \opt_has_pipe.first_q_reg[4] ;
  wire \opt_has_pipe.first_q_reg[5] ;
  wire \opt_has_pipe.first_q_reg[6] ;
  wire \opt_has_pipe.first_q_reg[7] ;
  wire \opt_has_pipe.first_q_reg[8] ;
  wire out;
  wire [2:0]s_axis_a_tdata;
  wire [6:0]xor_rnd1;
  wire zero_smallest;

  LUT5 #(
    .INIT(32'h10EFEF10)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__4 
       (.I0(\opt_has_pipe.first_q_reg[0]_0 ),
        .I1(out),
        .I2(\opt_has_pipe.first_q_reg[0]_4 ),
        .I3(A),
        .I4(\opt_has_pipe.first_q_reg[3] [0]),
        .O(\opt_has_pipe.first_q_reg[0]_1 [0]));
  LUT5 #(
    .INIT(32'h10EFEF10)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__4 
       (.I0(\opt_has_pipe.first_q_reg[0]_0 ),
        .I1(out),
        .I2(\opt_has_pipe.first_q_reg[1] ),
        .I3(A),
        .I4(\opt_has_pipe.first_q_reg[3] [1]),
        .O(\opt_has_pipe.first_q_reg[0]_1 [1]));
  LUT5 #(
    .INIT(32'h10EFEF10)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__4 
       (.I0(\opt_has_pipe.first_q_reg[0]_0 ),
        .I1(out),
        .I2(\opt_has_pipe.first_q_reg[2] ),
        .I3(A),
        .I4(Q[0]),
        .O(xor_rnd1[0]));
  LUT5 #(
    .INIT(32'h10EFEF10)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5 
       (.I0(\opt_has_pipe.first_q_reg[0]_0 ),
        .I1(out),
        .I2(\opt_has_pipe.first_q_reg[2]_0 ),
        .I3(A),
        .I4(\opt_has_pipe.first_q_reg[3] [2]),
        .O(\opt_has_pipe.first_q_reg[0]_1 [2]));
  LUT5 #(
    .INIT(32'h10EFEF10)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__2 
       (.I0(\opt_has_pipe.first_q_reg[0]_0 ),
        .I1(out),
        .I2(\opt_has_pipe.first_q_reg[3]_0 ),
        .I3(A),
        .I4(Q[1]),
        .O(xor_rnd1[1]));
  LUT5 #(
    .INIT(32'h10EFEF10)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__3 
       (.I0(\opt_has_pipe.first_q_reg[0]_0 ),
        .I1(out),
        .I2(\opt_has_pipe.first_q_reg[3]_1 ),
        .I3(A),
        .I4(\opt_has_pipe.first_q_reg[3] [3]),
        .O(\opt_has_pipe.first_q_reg[0]_1 [3]));
  LUT5 #(
    .INIT(32'h10EFEF10)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__1 
       (.I0(\opt_has_pipe.first_q_reg[0]_0 ),
        .I1(out),
        .I2(\opt_has_pipe.first_q_reg[4] ),
        .I3(A),
        .I4(Q[2]),
        .O(xor_rnd1[2]));
  LUT5 #(
    .INIT(32'h10EFEF10)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__1 
       (.I0(\opt_has_pipe.first_q_reg[0]_0 ),
        .I1(out),
        .I2(\opt_has_pipe.first_q_reg[5] ),
        .I3(A),
        .I4(Q[3]),
        .O(xor_rnd1[3]));
  LUT5 #(
    .INIT(32'h10EFEF10)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__1 
       (.I0(\opt_has_pipe.first_q_reg[0]_0 ),
        .I1(out),
        .I2(\opt_has_pipe.first_q_reg[6] ),
        .I3(A),
        .I4(Q[4]),
        .O(xor_rnd1[4]));
  LUT5 #(
    .INIT(32'h10EFEF10)) 
    \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\opt_has_pipe.first_q_reg[0]_0 ),
        .I1(out),
        .I2(\opt_has_pipe.first_q_reg[7] ),
        .I3(A),
        .I4(Q[5]),
        .O(xor_rnd1[5]));
  LUT5 #(
    .INIT(32'h10EFEF10)) 
    \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0 
       (.I0(\opt_has_pipe.first_q_reg[0]_0 ),
        .I1(out),
        .I2(\opt_has_pipe.first_q_reg[8] ),
        .I3(A),
        .I4(Q[6]),
        .O(xor_rnd1[6]));
  LUT2 #(
    .INIT(4'h1)) 
    \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_2__1 
       (.I0(\opt_has_pipe.first_q_reg[0]_0 ),
        .I1(out),
        .O(\opt_has_pipe.first_q_reg[0]_2 ));
  LUT5 #(
    .INIT(32'hFFFF0002)) 
    \opt_has_pipe.first_q[0]_i_1__11 
       (.I0(\opt_has_pipe.first_q_reg[0]_3 ),
        .I1(s_axis_a_tdata[0]),
        .I2(s_axis_a_tdata[1]),
        .I3(s_axis_a_tdata[2]),
        .I4(b_exp_flt_all_zero),
        .O(zero_smallest));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(zero_smallest),
        .Q(\opt_has_pipe.first_q_reg[0]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_16
   (A,
    \opt_has_pipe.first_q_reg[0]_0 ,
    \opt_has_pipe.first_q_reg[0]_1 ,
    subtract,
    aclk,
    \opt_has_pipe.first_q_reg[1] ,
    zero_sml_preadd,
    out,
    \opt_has_pipe.first_q_reg[0]_2 );
  output [0:0]A;
  output \opt_has_pipe.first_q_reg[0]_0 ;
  output \opt_has_pipe.first_q_reg[0]_1 ;
  input subtract;
  input aclk;
  input \opt_has_pipe.first_q_reg[1] ;
  input zero_sml_preadd;
  input out;
  input \opt_has_pipe.first_q_reg[0]_2 ;

  wire [0:0]A;
  wire aclk;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire \opt_has_pipe.first_q_reg[0]_1 ;
  wire \opt_has_pipe.first_q_reg[0]_2 ;
  wire \opt_has_pipe.first_q_reg[1] ;
  wire out;
  wire subtract;
  wire zero_sml_preadd;

  LUT4 #(
    .INIT(16'hAAA6)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__8 
       (.I0(A),
        .I1(\opt_has_pipe.first_q_reg[0]_2 ),
        .I2(zero_sml_preadd),
        .I3(out),
        .O(\opt_has_pipe.first_q_reg[0]_1 ));
  LUT4 #(
    .INIT(16'hAAA6)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__7 
       (.I0(A),
        .I1(\opt_has_pipe.first_q_reg[1] ),
        .I2(zero_sml_preadd),
        .I3(out),
        .O(\opt_has_pipe.first_q_reg[0]_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(subtract),
        .Q(A),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_4
   (cancellation,
    \opt_has_pipe.first_q_reg[0]_0 ,
    aclk);
  output cancellation;
  input \opt_has_pipe.first_q_reg[0]_0 ;
  input aclk;

  wire aclk;
  wire cancellation;
  wire \opt_has_pipe.first_q_reg[0]_0 ;

  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[0]_0 ),
        .Q(cancellation),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized61
   (det_invalid_op,
    aclk);
  input det_invalid_op;
  input aclk;

  wire aclk;
  wire det_invalid_op;
  (* RTL_KEEP = "true" *) wire first_q;

  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(det_invalid_op),
        .Q(first_q),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized61_8
   (det_sign_del,
    det_sign,
    aclk);
  output det_sign_del;
  input det_sign;
  input aclk;

  wire aclk;
  wire det_sign;
  wire det_sign_del;
  (* RTL_KEEP = "true" *) wire first_q;
  wire \opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][0] ;

  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(det_sign),
        .Q(first_q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[2].pipe_reg[2][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(first_q),
        .Q(\opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][0] ),
        .Q(det_sign_del),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized63
   (DI,
    \opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0 ,
    D,
    S,
    \opt_has_pipe.i_pipe[3].pipe_reg[3][6]_0 ,
    \opt_has_pipe.i_pipe[3].pipe_reg[3][3]_1 ,
    \opt_has_pipe.first_q_reg[0] ,
    Q,
    aclk,
    O,
    \RESULT_REG.NORMAL.exp_op_reg[4] ,
    \RESULT_REG.NORMAL.exp_op_reg[4]_0 ,
    \RESULT_REG.NORMAL.exp_op_reg[4]_1 ,
    \RESULT_REG.NORMAL.exp_op_reg[4]_2 ,
    out,
    NORM_DIST,
    \RESULT_REG.NORMAL.exp_op_reg[1] );
  output [2:0]DI;
  output [3:0]\opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0 ;
  output [3:0]D;
  output [0:0]S;
  output [2:0]\opt_has_pipe.i_pipe[3].pipe_reg[3][6]_0 ;
  output \opt_has_pipe.i_pipe[3].pipe_reg[3][3]_1 ;
  output \opt_has_pipe.first_q_reg[0] ;
  input [6:0]Q;
  input aclk;
  input [2:0]O;
  input [3:0]\RESULT_REG.NORMAL.exp_op_reg[4] ;
  input \RESULT_REG.NORMAL.exp_op_reg[4]_0 ;
  input \RESULT_REG.NORMAL.exp_op_reg[4]_1 ;
  input \RESULT_REG.NORMAL.exp_op_reg[4]_2 ;
  input [0:0]out;
  input [1:0]NORM_DIST;
  input [0:0]\RESULT_REG.NORMAL.exp_op_reg[1] ;

  wire [3:0]D;
  wire [2:0]DI;
  wire [1:0]NORM_DIST;
  wire [2:0]O;
  wire [6:0]Q;
  wire \RESULT_REG.NORMAL.exp_op[6]_i_2_n_0 ;
  wire [0:0]\RESULT_REG.NORMAL.exp_op_reg[1] ;
  wire [3:0]\RESULT_REG.NORMAL.exp_op_reg[4] ;
  wire \RESULT_REG.NORMAL.exp_op_reg[4]_0 ;
  wire \RESULT_REG.NORMAL.exp_op_reg[4]_1 ;
  wire \RESULT_REG.NORMAL.exp_op_reg[4]_2 ;
  wire [0:0]S;
  wire aclk;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_n_0 ;
  wire \opt_has_pipe.i_pipe[2].pipe_reg[2][1]_srl2_n_0 ;
  wire \opt_has_pipe.i_pipe[2].pipe_reg[2][2]_srl2_n_0 ;
  wire \opt_has_pipe.i_pipe[2].pipe_reg[2][3]_srl2_n_0 ;
  wire \opt_has_pipe.i_pipe[2].pipe_reg[2][4]_srl2_n_0 ;
  wire \opt_has_pipe.i_pipe[2].pipe_reg[2][5]_srl2_n_0 ;
  wire \opt_has_pipe.i_pipe[2].pipe_reg[2][6]_srl2_n_0 ;
  wire [3:0]\opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0 ;
  wire \opt_has_pipe.i_pipe[3].pipe_reg[3][3]_1 ;
  wire [2:0]\opt_has_pipe.i_pipe[3].pipe_reg[3][6]_0 ;
  wire [0:0]out;

  LUT5 #(
    .INIT(32'hF0FDF0F2)) 
    \RESULT_REG.NORMAL.exp_op[1]_i_1 
       (.I0(\RESULT_REG.NORMAL.exp_op_reg[4] [0]),
        .I1(\RESULT_REG.NORMAL.exp_op_reg[1] ),
        .I2(\RESULT_REG.NORMAL.exp_op_reg[4]_2 ),
        .I3(\RESULT_REG.NORMAL.exp_op_reg[4]_1 ),
        .I4(\RESULT_REG.NORMAL.exp_op_reg[4] [1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFF00A6FFFF00AA)) 
    \RESULT_REG.NORMAL.exp_op[4]_i_1 
       (.I0(O[0]),
        .I1(\RESULT_REG.NORMAL.exp_op_reg[4] [2]),
        .I2(\RESULT_REG.NORMAL.exp_op_reg[4]_0 ),
        .I3(\RESULT_REG.NORMAL.exp_op_reg[4]_1 ),
        .I4(\RESULT_REG.NORMAL.exp_op_reg[4]_2 ),
        .I5(\RESULT_REG.NORMAL.exp_op_reg[4] [3]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0006FF0A000AFF0A)) 
    \RESULT_REG.NORMAL.exp_op[5]_i_1 
       (.I0(O[1]),
        .I1(\RESULT_REG.NORMAL.exp_op_reg[4] [3]),
        .I2(\RESULT_REG.NORMAL.exp_op_reg[4]_1 ),
        .I3(\RESULT_REG.NORMAL.exp_op_reg[4]_2 ),
        .I4(\opt_has_pipe.i_pipe[3].pipe_reg[3][3]_1 ),
        .I5(O[0]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \RESULT_REG.NORMAL.exp_op[5]_i_2 
       (.I0(\RESULT_REG.NORMAL.exp_op_reg[4] [2]),
        .I1(\RESULT_REG.NORMAL.exp_op_reg[4] [1]),
        .I2(\RESULT_REG.NORMAL.exp_op_reg[1] ),
        .I3(\RESULT_REG.NORMAL.exp_op_reg[4] [0]),
        .I4(\RESULT_REG.NORMAL.exp_op_reg[4]_1 ),
        .I5(\RESULT_REG.NORMAL.exp_op_reg[4]_2 ),
        .O(\opt_has_pipe.i_pipe[3].pipe_reg[3][3]_1 ));
  LUT5 #(
    .INIT(32'h3036303A)) 
    \RESULT_REG.NORMAL.exp_op[6]_i_1 
       (.I0(O[2]),
        .I1(\RESULT_REG.NORMAL.exp_op[6]_i_2_n_0 ),
        .I2(\RESULT_REG.NORMAL.exp_op_reg[4]_2 ),
        .I3(\RESULT_REG.NORMAL.exp_op_reg[4]_1 ),
        .I4(O[1]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \RESULT_REG.NORMAL.exp_op[6]_i_2 
       (.I0(O[0]),
        .I1(\RESULT_REG.NORMAL.exp_op_reg[4] [2]),
        .I2(\RESULT_REG.NORMAL.exp_op_reg[4]_0 ),
        .I3(\RESULT_REG.NORMAL.exp_op_reg[4]_1 ),
        .I4(\RESULT_REG.NORMAL.exp_op_reg[4]_2 ),
        .I5(\RESULT_REG.NORMAL.exp_op_reg[4] [3]),
        .O(\RESULT_REG.NORMAL.exp_op[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \RESULT_REG.NORMAL.exp_op[6]_i_8 
       (.I0(NORM_DIST[1]),
        .I1(DI[0]),
        .I2(\opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0 [3]),
        .I3(NORM_DIST[0]),
        .I4(DI[2]),
        .I5(DI[1]),
        .O(\opt_has_pipe.first_q_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(DI[2]),
        .O(\opt_has_pipe.i_pipe[3].pipe_reg[3][6]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(DI[1]),
        .O(\opt_has_pipe.i_pipe[3].pipe_reg[3][6]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3
       (.I0(DI[0]),
        .I1(NORM_DIST[1]),
        .O(\opt_has_pipe.i_pipe[3].pipe_reg[3][6]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2
       (.I0(\opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0 [2]),
        .I1(out),
        .O(S));
  (* srl_bus_name = "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2] " *) 
  (* srl_name = "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(Q[0]),
        .Q(\opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_n_0 ));
  (* srl_bus_name = "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2] " *) 
  (* srl_name = "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \opt_has_pipe.i_pipe[2].pipe_reg[2][1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(Q[1]),
        .Q(\opt_has_pipe.i_pipe[2].pipe_reg[2][1]_srl2_n_0 ));
  (* srl_bus_name = "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2] " *) 
  (* srl_name = "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][2]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \opt_has_pipe.i_pipe[2].pipe_reg[2][2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(Q[2]),
        .Q(\opt_has_pipe.i_pipe[2].pipe_reg[2][2]_srl2_n_0 ));
  (* srl_bus_name = "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2] " *) 
  (* srl_name = "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][3]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \opt_has_pipe.i_pipe[2].pipe_reg[2][3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(Q[3]),
        .Q(\opt_has_pipe.i_pipe[2].pipe_reg[2][3]_srl2_n_0 ));
  (* srl_bus_name = "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2] " *) 
  (* srl_name = "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][4]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \opt_has_pipe.i_pipe[2].pipe_reg[2][4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(Q[4]),
        .Q(\opt_has_pipe.i_pipe[2].pipe_reg[2][4]_srl2_n_0 ));
  (* srl_bus_name = "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2] " *) 
  (* srl_name = "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][5]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \opt_has_pipe.i_pipe[2].pipe_reg[2][5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(Q[5]),
        .Q(\opt_has_pipe.i_pipe[2].pipe_reg[2][5]_srl2_n_0 ));
  (* srl_bus_name = "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2] " *) 
  (* srl_name = "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][6]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \opt_has_pipe.i_pipe[2].pipe_reg[2][6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(Q[6]),
        .Q(\opt_has_pipe.i_pipe[2].pipe_reg[2][6]_srl2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_n_0 ),
        .Q(\opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[3].pipe_reg[3][1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.i_pipe[2].pipe_reg[2][1]_srl2_n_0 ),
        .Q(\opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[3].pipe_reg[3][2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.i_pipe[2].pipe_reg[2][2]_srl2_n_0 ),
        .Q(\opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[3].pipe_reg[3][3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.i_pipe[2].pipe_reg[2][3]_srl2_n_0 ),
        .Q(\opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[3].pipe_reg[3][4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.i_pipe[2].pipe_reg[2][4]_srl2_n_0 ),
        .Q(DI[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[3].pipe_reg[3][5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.i_pipe[2].pipe_reg[2][5]_srl2_n_0 ),
        .Q(DI[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[3].pipe_reg[3][6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.i_pipe[2].pipe_reg[2][6]_srl2_n_0 ),
        .Q(DI[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp16_sub_xbip_pipe_v3_0_5_viv__parameterized65
   (lrg_almost_over_del,
    \opt_has_pipe.first_q_reg[0] ,
    lrg_almost_over__0,
    aclk,
    cancellation,
    add_mant_msbs_del);
  output lrg_almost_over_del;
  output \opt_has_pipe.first_q_reg[0] ;
  input lrg_almost_over__0;
  input aclk;
  input cancellation;
  input [0:0]add_mant_msbs_del;

  wire aclk;
  wire [0:0]add_mant_msbs_del;
  wire cancellation;
  wire lrg_almost_over__0;
  wire lrg_almost_over_del;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_n_0 ;

  LUT3 #(
    .INIT(8'hEA)) 
    \RESULT_REG.NORMAL.exp_op[6]_i_10 
       (.I0(cancellation),
        .I1(lrg_almost_over_del),
        .I2(add_mant_msbs_del),
        .O(\opt_has_pipe.first_q_reg[0] ));
  (* srl_bus_name = "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_OVER_NORMAL.LRG_ALMOST_OVER_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2] " *) 
  (* srl_name = "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_OVER_NORMAL.LRG_ALMOST_OVER_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(lrg_almost_over__0),
        .Q(\opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_n_0 ),
        .Q(lrg_almost_over_del),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "zero_det_sel" *) 
module fp16_sub_zero_det_sel
   (zeros_add,
    \opt_has_pipe.first_q_reg[1] ,
    aclk,
    first_q0,
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1 ,
    \CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD ,
    \opt_has_pipe.first_q_reg[4] ,
    \opt_has_pipe.first_q_reg[3] ,
    \opt_has_pipe.first_q_reg[2] ,
    \opt_has_pipe.first_q_reg[1]_0 ,
    \opt_has_pipe.first_q_reg[0] ,
    minusOp,
    CO);
  output zeros_add;
  input \opt_has_pipe.first_q_reg[1] ;
  input aclk;
  input first_q0;
  input \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1 ;
  input [3:0]\CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD ;
  input \opt_has_pipe.first_q_reg[4] ;
  input \opt_has_pipe.first_q_reg[3] ;
  input \opt_has_pipe.first_q_reg[2] ;
  input \opt_has_pipe.first_q_reg[1]_0 ;
  input \opt_has_pipe.first_q_reg[0] ;
  input [1:0]minusOp;
  input [0:0]CO;

  wire [3:0]\CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD ;
  wire [0:0]CO;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1 ;
  wire aclk;
  wire [4:3]ext_del_distance;
  wire first_q0;
  wire [1:0]minusOp;
  wire mux0_0;
  wire mux0_1;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[1] ;
  wire \opt_has_pipe.first_q_reg[1]_0 ;
  wire \opt_has_pipe.first_q_reg[2] ;
  wire \opt_has_pipe.first_q_reg[3] ;
  wire \opt_has_pipe.first_q_reg[4] ;
  wire [7:0]p_8_out;
  wire [1:0]\zero_det_unreg[1]_3 ;
  wire zeros_add;

  fp16_sub_compare_eq_im EQ_ZERO
       (.\CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD (\CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD ),
        .\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1 (\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1 ),
        .aclk(aclk),
        .ext_del_distance(ext_del_distance[3]),
        .p_8_out({p_8_out[7],p_8_out[4:0]}),
        .\zero_det_unreg[1]_3 (\zero_det_unreg[1]_3 ));
  fp16_sub_delay__parameterized9 \MUX_LOOP[0].DEL_Z_D 
       (.CO(CO),
        .aclk(aclk),
        .minusOp(minusOp),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[1] (\opt_has_pipe.first_q_reg[1]_0 ),
        .\opt_has_pipe.first_q_reg[2] (\opt_has_pipe.first_q_reg[2] ),
        .\opt_has_pipe.first_q_reg[3] (\opt_has_pipe.first_q_reg[3] ),
        .\opt_has_pipe.first_q_reg[4] (\opt_has_pipe.first_q_reg[4] ),
        .p_8_out({p_8_out[7],p_8_out[4:0]}));
  fp16_sub_delay__parameterized10_17 \MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST 
       (.aclk(aclk),
        .ext_del_distance(ext_del_distance[3]),
        .\opt_has_pipe.first_q_reg[1] (\opt_has_pipe.first_q_reg[1] ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0 
       (.I0(\zero_det_unreg[1]_3 [0]),
        .I1(\zero_det_unreg[1]_3 [1]),
        .O(mux0_0),
        .S(ext_del_distance[4]));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX1 
       (.I0(1'b1),
        .I1(1'b1),
        .O(mux0_1),
        .S(ext_del_distance[4]));
  (* box_type = "PRIMITIVE" *) 
  MUXF8 \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX2 
       (.I0(mux0_0),
        .I1(mux0_1),
        .O(zeros_add),
        .S(1'b0));
  fp16_sub_delay__parameterized10_18 \MUX_LOOP[2].SKEW_DIST_DEL.DEL_DIST 
       (.aclk(aclk),
        .ext_del_distance(ext_del_distance[4]),
        .first_q0(first_q0));
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
