// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 12 16:06:09 2024
// Host        : aic-ts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/norm/fp_to_fix/fp_to_fix_sim_netlist.v
// Design      : fp_to_fix
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fp_to_fix,floating_point_v7_1_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "floating_point_v7_1_7,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module fp_to_fix
   (aclk,
    s_axis_a_tvalid,
    s_axis_a_tdata,
    m_axis_result_tvalid,
    m_axis_result_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_OPERATION:M_AXIS_RESULT:S_AXIS_C:S_AXIS_B:S_AXIS_A, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_a_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) input [23:0]s_axis_a_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_RESULT, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_result_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA" *) output [31:0]m_axis_result_tdata;

  wire aclk;
  wire [31:0]m_axis_result_tdata;
  wire m_axis_result_tvalid;
  wire [23:0]s_axis_a_tdata;
  wire s_axis_a_tvalid;
  wire NLW_U0_m_axis_result_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_a_tready_UNCONNECTED;
  wire NLW_U0_s_axis_b_tready_UNCONNECTED;
  wire NLW_U0_s_axis_c_tready_UNCONNECTED;
  wire NLW_U0_s_axis_operation_tready_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_result_tuser_UNCONNECTED;

  (* C_ACCUM_INPUT_MSB = "32" *) 
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
  (* C_HAS_B = "0" *) 
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
  (* C_HAS_FLT_TO_FIX = "1" *) 
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
  (* C_HAS_SUBTRACT = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MULT_USAGE = "0" *) 
  (* C_OPERATION_TDATA_WIDTH = "8" *) 
  (* C_OPERATION_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZATION = "1" *) 
  (* C_RATE = "1" *) 
  (* C_RESULT_FRACTION_WIDTH = "16" *) 
  (* C_RESULT_TDATA_WIDTH = "32" *) 
  (* C_RESULT_TUSER_WIDTH = "1" *) 
  (* C_RESULT_WIDTH = "32" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  fp_to_fix_floating_point_v7_1_7 U0
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
        .s_axis_b_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_U0_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(1'b0),
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
module fp_to_fix_carry_chain__parameterized0
   (\zero_det_unreg[1]_0 ,
    s_axis_a_tdata,
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0 ,
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_0 ,
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_0 ,
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_1 ,
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_2 ,
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_3 );
  output [1:0]\zero_det_unreg[1]_0 ;
  input [19:0]s_axis_a_tdata;
  input \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0 ;
  input \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_0 ;
  input \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_0 ;
  input \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_1 ;
  input \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_2 ;
  input \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_3 ;

  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0_n_0 ;
  wire \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_0 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_0 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_1 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_2 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_3 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_4_n_0 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_7_n_0 ;
  wire [2:1]chunk_det;
  wire [19:0]s_axis_a_tdata;
  wire [5:1]zero_det_in;
  wire [1:0]\zero_det_unreg[1]_0 ;
  wire [3:0]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(1'b0),
        .CO(zero_det_in[4:1]),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S({\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1_n_0 ,chunk_det,\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0_n_0 }));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0 
       (.I0(s_axis_a_tdata[3]),
        .I1(s_axis_a_tdata[1]),
        .I2(s_axis_a_tdata[0]),
        .I3(s_axis_a_tdata[2]),
        .O(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__0 
       (.I0(s_axis_a_tdata[7]),
        .I1(s_axis_a_tdata[6]),
        .I2(s_axis_a_tdata[4]),
        .I3(s_axis_a_tdata[5]),
        .O(chunk_det[1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[8]),
        .I1(s_axis_a_tdata[9]),
        .I2(s_axis_a_tdata[11]),
        .I3(s_axis_a_tdata[10]),
        .O(chunk_det[2]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[12]),
        .I1(s_axis_a_tdata[13]),
        .I2(s_axis_a_tdata[15]),
        .I3(s_axis_a_tdata[14]),
        .O(\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(zero_det_in[4]),
        .CO({\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3:1],zero_det_in[5]}),
        .CYINIT(1'b0),
        .DI({\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED [3:1],1'b0}));
  LUT6 #(
    .INIT(64'hBAAAAABABFAAAABF)) 
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2 
       (.I0(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_4_n_0 ),
        .I1(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0 ),
        .I2(s_axis_a_tdata[19]),
        .I3(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_0 ),
        .I4(s_axis_a_tdata[18]),
        .I5(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_7_n_0 ),
        .O(\zero_det_unreg[1]_0 [0]));
  LUT6 #(
    .INIT(64'hCCE22222BBFFFFFF)) 
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_3 
       (.I0(zero_det_in[5]),
        .I1(s_axis_a_tdata[18]),
        .I2(zero_det_in[4]),
        .I3(s_axis_a_tdata[16]),
        .I4(s_axis_a_tdata[17]),
        .I5(s_axis_a_tdata[19]),
        .O(\zero_det_unreg[1]_0 [1]));
  LUT6 #(
    .INIT(64'h800080008F008000)) 
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_4 
       (.I0(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_0 ),
        .I1(zero_det_in[1]),
        .I2(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_1 ),
        .I3(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_2 ),
        .I4(zero_det_in[3]),
        .I5(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_3 ),
        .O(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFD5FFD5DFD5FDD5D)) 
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_7 
       (.I0(zero_det_in[2]),
        .I1(s_axis_a_tdata[8]),
        .I2(s_axis_a_tdata[17]),
        .I3(s_axis_a_tdata[16]),
        .I4(s_axis_a_tdata[9]),
        .I5(s_axis_a_tdata[10]),
        .O(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_7_n_0 ));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fp_to_fix_carry_chain__parameterized1
   (s_axis_a_tdata_17_sp_1,
    \s_axis_a_tdata[23] ,
    \s_axis_a_tdata[23]_0 ,
    \s_axis_a_tdata[23]_1 ,
    \s_axis_a_tdata[23]_2 ,
    \s_axis_a_tdata[23]_3 ,
    \s_axis_a_tdata[23]_4 ,
    \s_axis_a_tdata[23]_5 ,
    \s_axis_a_tdata[23]_6 ,
    \s_axis_a_tdata[23]_7 ,
    \s_axis_a_tdata[23]_8 ,
    \s_axis_a_tdata[23]_9 ,
    \s_axis_a_tdata[23]_10 ,
    \s_axis_a_tdata[23]_11 ,
    \s_axis_a_tdata[23]_12 ,
    \s_axis_a_tdata[23]_13 ,
    \s_axis_a_tdata[23]_14 ,
    \s_axis_a_tdata[23]_15 ,
    \s_axis_a_tdata[23]_16 ,
    \s_axis_a_tdata[23]_17 ,
    \s_axis_a_tdata[23]_18 ,
    \s_axis_a_tdata[23]_19 ,
    \s_axis_a_tdata[23]_20 ,
    \s_axis_a_tdata[23]_21 ,
    \s_axis_a_tdata[23]_22 ,
    \s_axis_a_tdata[23]_23 ,
    \s_axis_a_tdata[23]_24 ,
    \s_axis_a_tdata[23]_25 ,
    \s_axis_a_tdata[23]_26 ,
    \s_axis_a_tdata[23]_27 ,
    \s_axis_a_tdata[23]_28 ,
    \s_axis_a_tdata[23]_29 ,
    \s_axis_a_tdata[23]_30 ,
    \s_axis_a_tdata[17]_0 ,
    \s_axis_a_tdata[17]_1 ,
    s_axis_a_tdata,
    \result_i_reg[30] ,
    \result_i_reg[31] ,
    \result_i_reg[30]_0 ,
    \result_i_reg[31]_0 ,
    \result_i_reg[31]_1 ,
    \result_i_reg[31]_2 ,
    round_ip_pza);
  output s_axis_a_tdata_17_sp_1;
  output \s_axis_a_tdata[23] ;
  output \s_axis_a_tdata[23]_0 ;
  output \s_axis_a_tdata[23]_1 ;
  output \s_axis_a_tdata[23]_2 ;
  output \s_axis_a_tdata[23]_3 ;
  output \s_axis_a_tdata[23]_4 ;
  output \s_axis_a_tdata[23]_5 ;
  output \s_axis_a_tdata[23]_6 ;
  output \s_axis_a_tdata[23]_7 ;
  output \s_axis_a_tdata[23]_8 ;
  output \s_axis_a_tdata[23]_9 ;
  output \s_axis_a_tdata[23]_10 ;
  output \s_axis_a_tdata[23]_11 ;
  output \s_axis_a_tdata[23]_12 ;
  output \s_axis_a_tdata[23]_13 ;
  output \s_axis_a_tdata[23]_14 ;
  output \s_axis_a_tdata[23]_15 ;
  output \s_axis_a_tdata[23]_16 ;
  output \s_axis_a_tdata[23]_17 ;
  output \s_axis_a_tdata[23]_18 ;
  output \s_axis_a_tdata[23]_19 ;
  output \s_axis_a_tdata[23]_20 ;
  output \s_axis_a_tdata[23]_21 ;
  output \s_axis_a_tdata[23]_22 ;
  output \s_axis_a_tdata[23]_23 ;
  output \s_axis_a_tdata[23]_24 ;
  output \s_axis_a_tdata[23]_25 ;
  output \s_axis_a_tdata[23]_26 ;
  output \s_axis_a_tdata[23]_27 ;
  output \s_axis_a_tdata[23]_28 ;
  output \s_axis_a_tdata[23]_29 ;
  output \s_axis_a_tdata[23]_30 ;
  output \s_axis_a_tdata[17]_0 ;
  output \s_axis_a_tdata[17]_1 ;
  input [21:0]s_axis_a_tdata;
  input \result_i_reg[30] ;
  input \result_i_reg[31] ;
  input \result_i_reg[30]_0 ;
  input \result_i_reg[31]_0 ;
  input \result_i_reg[31]_1 ;
  input \result_i_reg[31]_2 ;
  input [0:0]round_ip_pza;

  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_10_n_0 ;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_11_n_0 ;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_12_n_0 ;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_13_n_0 ;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_5_n_0 ;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_6_n_0 ;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_7_n_0 ;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_8_n_0 ;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_9_n_0 ;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[10].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[11].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[12].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[13].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[14].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[15].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[16].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[16].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[16].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[16].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_4_n_0 ;
  wire \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_5_n_0 ;
  wire \CHAIN_GEN[17].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_4_n_0 ;
  wire \CHAIN_GEN[18].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_4_n_0 ;
  wire \CHAIN_GEN[19].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[20].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[20].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[20].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[20].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_4_n_0 ;
  wire \CHAIN_GEN[21].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_4_n_0 ;
  wire \CHAIN_GEN[22].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[23].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[23].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[23].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[24].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[24].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[24].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[25].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[25].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[25].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[26].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[26].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[26].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[27].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[27].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[27].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[28].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[28].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[28].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[29].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[29].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[29].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0_n_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[30].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[30].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[30].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[31].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0_n_0 ;
  wire \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_4_n_0 ;
  wire \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[8].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1_n_0 ;
  wire \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_2_n_0 ;
  wire \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_3_n_0 ;
  wire \CHAIN_GEN[9].C_MUX.CARRY_MUX_n_0 ;
  wire [30:0]neg_mant_pza;
  wire \result_i[30]_i_5_n_0 ;
  wire \result_i_reg[30] ;
  wire \result_i_reg[30]_0 ;
  wire \result_i_reg[31] ;
  wire \result_i_reg[31]_0 ;
  wire \result_i_reg[31]_1 ;
  wire \result_i_reg[31]_2 ;
  wire [0:0]round_ip_pza;
  wire [32:1]round_op_pr;
  wire [21:0]s_axis_a_tdata;
  wire \s_axis_a_tdata[17]_0 ;
  wire \s_axis_a_tdata[17]_1 ;
  wire \s_axis_a_tdata[23] ;
  wire \s_axis_a_tdata[23]_0 ;
  wire \s_axis_a_tdata[23]_1 ;
  wire \s_axis_a_tdata[23]_10 ;
  wire \s_axis_a_tdata[23]_11 ;
  wire \s_axis_a_tdata[23]_12 ;
  wire \s_axis_a_tdata[23]_13 ;
  wire \s_axis_a_tdata[23]_14 ;
  wire \s_axis_a_tdata[23]_15 ;
  wire \s_axis_a_tdata[23]_16 ;
  wire \s_axis_a_tdata[23]_17 ;
  wire \s_axis_a_tdata[23]_18 ;
  wire \s_axis_a_tdata[23]_19 ;
  wire \s_axis_a_tdata[23]_2 ;
  wire \s_axis_a_tdata[23]_20 ;
  wire \s_axis_a_tdata[23]_21 ;
  wire \s_axis_a_tdata[23]_22 ;
  wire \s_axis_a_tdata[23]_23 ;
  wire \s_axis_a_tdata[23]_24 ;
  wire \s_axis_a_tdata[23]_25 ;
  wire \s_axis_a_tdata[23]_26 ;
  wire \s_axis_a_tdata[23]_27 ;
  wire \s_axis_a_tdata[23]_28 ;
  wire \s_axis_a_tdata[23]_29 ;
  wire \s_axis_a_tdata[23]_3 ;
  wire \s_axis_a_tdata[23]_30 ;
  wire \s_axis_a_tdata[23]_4 ;
  wire \s_axis_a_tdata[23]_5 ;
  wire \s_axis_a_tdata[23]_6 ;
  wire \s_axis_a_tdata[23]_7 ;
  wire \s_axis_a_tdata[23]_8 ;
  wire \s_axis_a_tdata[23]_9 ;
  wire s_axis_a_tdata_17_sn_1;
  wire [0:0]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4_S_UNCONNECTED ;

  assign s_axis_a_tdata_17_sp_1 = s_axis_a_tdata_17_sn_1;
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(1'b0),
        .CO({\CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({round_op_pr[3:1],\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [0]}),
        .S({\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0_n_0 ,\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0_n_0 ,neg_mant_pza[0],round_ip_pza}));
  LUT6 #(
    .INIT(64'hACCCCFFFF0000AAA)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_10 
       (.I0(s_axis_a_tdata[0]),
        .I1(s_axis_a_tdata[8]),
        .I2(s_axis_a_tdata[17]),
        .I3(s_axis_a_tdata[18]),
        .I4(s_axis_a_tdata[19]),
        .I5(s_axis_a_tdata[20]),
        .O(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h3EEE022280008000)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_11 
       (.I0(s_axis_a_tdata[10]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[2]),
        .I5(s_axis_a_tdata[20]),
        .O(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h3EEE022280008000)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_12 
       (.I0(s_axis_a_tdata[14]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[6]),
        .I5(s_axis_a_tdata[20]),
        .O(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h3EEE022280008000)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_13 
       (.I0(s_axis_a_tdata[9]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[1]),
        .I5(s_axis_a_tdata[20]),
        .O(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2 
       (.I0(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_5_n_0 ),
        .I1(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_6_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_7_n_0 ),
        .I4(s_axis_a_tdata[18]),
        .I5(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_8_n_0 ),
        .O(s_axis_a_tdata_17_sn_1));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_3 
       (.I0(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_9_n_0 ),
        .I1(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_10_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_11_n_0 ),
        .I4(s_axis_a_tdata[18]),
        .I5(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_12_n_0 ),
        .O(\s_axis_a_tdata[17]_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_4 
       (.I0(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_7_n_0 ),
        .I1(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_8_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_13_n_0 ),
        .I4(s_axis_a_tdata[18]),
        .I5(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_5_n_0 ),
        .O(\s_axis_a_tdata[17]_1 ));
  LUT6 #(
    .INIT(64'h3EEE022280008000)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_5 
       (.I0(s_axis_a_tdata[13]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[5]),
        .I5(s_axis_a_tdata[20]),
        .O(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBCCC800002220222)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_6 
       (.I0(s_axis_a_tdata[1]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[9]),
        .I5(s_axis_a_tdata[20]),
        .O(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3EEE022280008000)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_7 
       (.I0(s_axis_a_tdata[11]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[3]),
        .I5(s_axis_a_tdata[20]),
        .O(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h3EEE022280008000)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_8 
       (.I0(s_axis_a_tdata[15]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[7]),
        .I5(s_axis_a_tdata[20]),
        .O(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3EEE022280008000)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_9 
       (.I0(s_axis_a_tdata[12]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[4]),
        .I5(s_axis_a_tdata[20]),
        .O(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[10].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[9].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_2 
       (.I0(\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I1(\CHAIN_GEN[10].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I4(s_axis_a_tdata[18]),
        .I5(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[10].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFC1117FFFFDDD)) 
    \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[10]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[20]),
        .I5(s_axis_a_tdata[2]),
        .O(\CHAIN_GEN[10].C_MUX.CARRY_MUX_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[11].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[10].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_2 
       (.I0(\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I1(\CHAIN_GEN[11].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I4(s_axis_a_tdata[18]),
        .I5(\CHAIN_GEN[9].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[11].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFC1117FFFFDDD)) 
    \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[11]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[20]),
        .I5(s_axis_a_tdata[3]),
        .O(\CHAIN_GEN[11].C_MUX.CARRY_MUX_i_3_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[12].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[11].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[15].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[14].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[13].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[12].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(round_op_pr[15:12]),
        .S({\CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1_n_0 ,\CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1_n_0 ,\CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1_n_0 ,\CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1_n_0 }));
  LUT4 #(
    .INIT(16'hA959)) 
    \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[12].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[11].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_2 
       (.I0(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I1(\CHAIN_GEN[12].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I4(s_axis_a_tdata[18]),
        .I5(\CHAIN_GEN[10].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[12].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFFC111FDDD)) 
    \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[12]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[4]),
        .I5(s_axis_a_tdata[20]),
        .O(\CHAIN_GEN[12].C_MUX.CARRY_MUX_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[13].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[12].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_2 
       (.I0(\CHAIN_GEN[9].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I1(\CHAIN_GEN[13].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I4(s_axis_a_tdata[18]),
        .I5(\CHAIN_GEN[11].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[13].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFFC111FDDD)) 
    \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[13]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[5]),
        .I5(s_axis_a_tdata[20]),
        .O(\CHAIN_GEN[13].C_MUX.CARRY_MUX_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[14].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[13].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_2 
       (.I0(\CHAIN_GEN[10].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I1(\CHAIN_GEN[14].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I4(s_axis_a_tdata[18]),
        .I5(\CHAIN_GEN[12].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[14].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFFC111FDDD)) 
    \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[14]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[6]),
        .I5(s_axis_a_tdata[20]),
        .O(\CHAIN_GEN[14].C_MUX.CARRY_MUX_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[15].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[14].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_2 
       (.I0(\CHAIN_GEN[11].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I1(\CHAIN_GEN[15].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[9].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I4(s_axis_a_tdata[18]),
        .I5(\CHAIN_GEN[13].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[15].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFFC111FDDD)) 
    \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[15]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[7]),
        .I5(s_axis_a_tdata[20]),
        .O(\CHAIN_GEN[15].C_MUX.CARRY_MUX_i_3_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[16].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[15].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[19].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[18].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[17].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[16].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(round_op_pr[19:16]),
        .S({\CHAIN_GEN[19].C_MUX.CARRY_MUX_i_1_n_0 ,\CHAIN_GEN[18].C_MUX.CARRY_MUX_i_1_n_0 ,\CHAIN_GEN[17].C_MUX.CARRY_MUX_i_1_n_0 ,\CHAIN_GEN[16].C_MUX.CARRY_MUX_i_1_n_0 }));
  LUT6 #(
    .INIT(64'hAAAAA9595555A959)) 
    \CHAIN_GEN[16].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[16].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[16].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I4(s_axis_a_tdata[16]),
        .I5(\CHAIN_GEN[15].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[16].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4F7FFFFF4F7F0000)) 
    \CHAIN_GEN[16].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_a_tdata[10]),
        .I1(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0 ),
        .I2(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0 ),
        .I3(s_axis_a_tdata[2]),
        .I4(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0 ),
        .I5(\CHAIN_GEN[14].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[16].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h50FF30FF50FF3FFF)) 
    \CHAIN_GEN[16].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[12]),
        .I1(s_axis_a_tdata[4]),
        .I2(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0 ),
        .I3(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0 ),
        .I4(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0 ),
        .I5(s_axis_a_tdata[8]),
        .O(\CHAIN_GEN[16].C_MUX.CARRY_MUX_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA9595555A959)) 
    \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[17].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[17].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I4(s_axis_a_tdata[16]),
        .I5(\CHAIN_GEN[17].C_MUX.CARRY_MUX_i_4_n_0 ),
        .O(\CHAIN_GEN[17].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4F7FFFFF4F7F0000)) 
    \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_a_tdata[11]),
        .I1(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0 ),
        .I2(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0 ),
        .I3(s_axis_a_tdata[3]),
        .I4(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0 ),
        .I5(\CHAIN_GEN[15].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[17].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5F30FFFF5F3FFFFF)) 
    \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[13]),
        .I1(s_axis_a_tdata[5]),
        .I2(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0 ),
        .I3(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0 ),
        .I4(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0 ),
        .I5(s_axis_a_tdata[9]),
        .O(\CHAIN_GEN[17].C_MUX.CARRY_MUX_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_4 
       (.I0(\CHAIN_GEN[12].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I1(\CHAIN_GEN[17].C_MUX.CARRY_MUX_i_5_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[10].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I4(s_axis_a_tdata[18]),
        .I5(\CHAIN_GEN[14].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[17].C_MUX.CARRY_MUX_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h6AAA7EEE)) 
    \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_5 
       (.I0(s_axis_a_tdata[20]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[8]),
        .O(\CHAIN_GEN[17].C_MUX.CARRY_MUX_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA9595555A959)) 
    \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[16].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[18].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I4(s_axis_a_tdata[16]),
        .I5(\CHAIN_GEN[18].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[18].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5F305F3FFFFFFFFF)) 
    \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_a_tdata[14]),
        .I1(s_axis_a_tdata[6]),
        .I2(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0 ),
        .I3(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0 ),
        .I4(s_axis_a_tdata[10]),
        .I5(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0 ),
        .O(\CHAIN_GEN[18].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_3 
       (.I0(\CHAIN_GEN[13].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I1(\CHAIN_GEN[18].C_MUX.CARRY_MUX_i_4_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[11].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I4(s_axis_a_tdata[18]),
        .I5(\CHAIN_GEN[15].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[18].C_MUX.CARRY_MUX_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hEABFFFFF)) 
    \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_4 
       (.I0(s_axis_a_tdata[20]),
        .I1(s_axis_a_tdata[17]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[19]),
        .I4(s_axis_a_tdata[9]),
        .O(\CHAIN_GEN[18].C_MUX.CARRY_MUX_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA9595555A959)) 
    \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[17].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[19].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I4(s_axis_a_tdata[16]),
        .I5(\CHAIN_GEN[19].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[19].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5F305F3FFFFFFFFF)) 
    \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_a_tdata[15]),
        .I1(s_axis_a_tdata[7]),
        .I2(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0 ),
        .I3(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0 ),
        .I4(s_axis_a_tdata[11]),
        .I5(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0 ),
        .O(\CHAIN_GEN[19].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_3 
       (.I0(\CHAIN_GEN[14].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I1(\CHAIN_GEN[19].C_MUX.CARRY_MUX_i_4_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[12].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I4(s_axis_a_tdata[18]),
        .I5(\CHAIN_GEN[17].C_MUX.CARRY_MUX_i_5_n_0 ),
        .O(\CHAIN_GEN[19].C_MUX.CARRY_MUX_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFD777)) 
    \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_4 
       (.I0(s_axis_a_tdata[10]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[20]),
        .O(\CHAIN_GEN[19].C_MUX.CARRY_MUX_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I4(s_axis_a_tdata[16]),
        .I5(\s_axis_a_tdata[17]_0 ),
        .O(neg_mant_pza[0]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_a_tdata[11]),
        .I1(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0 ),
        .I2(s_axis_a_tdata[3]),
        .I3(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0 ),
        .I4(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0 ),
        .I5(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_8_n_0 ),
        .O(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888B88888BB8888)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_3 
       (.I0(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_5_n_0 ),
        .I1(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0 ),
        .I2(s_axis_a_tdata[1]),
        .I3(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0 ),
        .I4(s_axis_a_tdata[9]),
        .I5(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0 ),
        .O(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h95)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4 
       (.I0(s_axis_a_tdata[19]),
        .I1(s_axis_a_tdata[18]),
        .I2(s_axis_a_tdata[17]),
        .O(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h9555)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5 
       (.I0(s_axis_a_tdata[20]),
        .I1(s_axis_a_tdata[17]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[19]),
        .O(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6 
       (.I0(s_axis_a_tdata[17]),
        .I1(s_axis_a_tdata[18]),
        .O(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[20].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[19].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[23].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[22].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[21].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[20].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(round_op_pr[23:20]),
        .S({\CHAIN_GEN[23].C_MUX.CARRY_MUX_i_1_n_0 ,\CHAIN_GEN[22].C_MUX.CARRY_MUX_i_1_n_0 ,\CHAIN_GEN[21].C_MUX.CARRY_MUX_i_1_n_0 ,\CHAIN_GEN[20].C_MUX.CARRY_MUX_i_1_n_0 }));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \CHAIN_GEN[20].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[20].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[17].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I4(s_axis_a_tdata[17]),
        .I5(\CHAIN_GEN[19].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[20].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8BBB888B8BB)) 
    \CHAIN_GEN[20].C_MUX.CARRY_MUX_i_2 
       (.I0(\CHAIN_GEN[21].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I1(s_axis_a_tdata[17]),
        .I2(\CHAIN_GEN[14].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I3(s_axis_a_tdata[18]),
        .I4(s_axis_a_tdata[19]),
        .I5(\CHAIN_GEN[20].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[20].C_MUX.CARRY_MUX_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAFFFF)) 
    \CHAIN_GEN[20].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[20]),
        .I1(s_axis_a_tdata[17]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[19]),
        .I4(s_axis_a_tdata[10]),
        .O(\CHAIN_GEN[20].C_MUX.CARRY_MUX_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[21].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[18].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I4(s_axis_a_tdata[17]),
        .I5(\CHAIN_GEN[21].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[21].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8BBB888B8BB)) 
    \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_2 
       (.I0(\CHAIN_GEN[22].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I1(s_axis_a_tdata[17]),
        .I2(\CHAIN_GEN[15].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I3(s_axis_a_tdata[18]),
        .I4(s_axis_a_tdata[19]),
        .I5(\CHAIN_GEN[21].C_MUX.CARRY_MUX_i_4_n_0 ),
        .O(\CHAIN_GEN[21].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD403FFFFD7C3)) 
    \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[8]),
        .I1(s_axis_a_tdata[17]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[19]),
        .I4(s_axis_a_tdata[20]),
        .I5(s_axis_a_tdata[12]),
        .O(\CHAIN_GEN[21].C_MUX.CARRY_MUX_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAFFFF)) 
    \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_4 
       (.I0(s_axis_a_tdata[20]),
        .I1(s_axis_a_tdata[17]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[19]),
        .I4(s_axis_a_tdata[11]),
        .O(\CHAIN_GEN[21].C_MUX.CARRY_MUX_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[22].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[19].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I4(s_axis_a_tdata[17]),
        .I5(\CHAIN_GEN[22].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[22].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_2 
       (.I0(\CHAIN_GEN[22].C_MUX.CARRY_MUX_i_4_n_0 ),
        .I1(s_axis_a_tdata[17]),
        .I2(\CHAIN_GEN[21].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[22].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF53F3F5F)) 
    \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[13]),
        .I1(s_axis_a_tdata[9]),
        .I2(s_axis_a_tdata[19]),
        .I3(s_axis_a_tdata[18]),
        .I4(s_axis_a_tdata[17]),
        .I5(s_axis_a_tdata[20]),
        .O(\CHAIN_GEN[22].C_MUX.CARRY_MUX_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCCDDFFFFFFDDFFF)) 
    \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_4 
       (.I0(s_axis_a_tdata[14]),
        .I1(s_axis_a_tdata[20]),
        .I2(s_axis_a_tdata[17]),
        .I3(s_axis_a_tdata[18]),
        .I4(s_axis_a_tdata[19]),
        .I5(s_axis_a_tdata[10]),
        .O(\CHAIN_GEN[22].C_MUX.CARRY_MUX_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B84700FFB847)) 
    \CHAIN_GEN[23].C_MUX.CARRY_MUX_i_1 
       (.I0(\CHAIN_GEN[23].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I1(s_axis_a_tdata[17]),
        .I2(\CHAIN_GEN[22].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I3(s_axis_a_tdata[21]),
        .I4(s_axis_a_tdata[16]),
        .I5(\CHAIN_GEN[22].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[23].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCCDDFFFFFFDDFFF)) 
    \CHAIN_GEN[23].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_a_tdata[15]),
        .I1(s_axis_a_tdata[20]),
        .I2(s_axis_a_tdata[17]),
        .I3(s_axis_a_tdata[18]),
        .I4(s_axis_a_tdata[19]),
        .I5(s_axis_a_tdata[11]),
        .O(\CHAIN_GEN[23].C_MUX.CARRY_MUX_i_2_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[24].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[23].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[27].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[26].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[25].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[24].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(round_op_pr[27:24]),
        .S({\CHAIN_GEN[27].C_MUX.CARRY_MUX_i_1_n_0 ,\CHAIN_GEN[26].C_MUX.CARRY_MUX_i_1_n_0 ,\CHAIN_GEN[25].C_MUX.CARRY_MUX_i_1_n_0 ,\CHAIN_GEN[24].C_MUX.CARRY_MUX_i_1_n_0 }));
  LUT6 #(
    .INIT(64'hB847B847FF0000FF)) 
    \CHAIN_GEN[24].C_MUX.CARRY_MUX_i_1 
       (.I0(\CHAIN_GEN[23].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I1(s_axis_a_tdata[17]),
        .I2(\CHAIN_GEN[22].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I3(s_axis_a_tdata[21]),
        .I4(\CHAIN_GEN[24].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I5(s_axis_a_tdata[16]),
        .O(\CHAIN_GEN[24].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEDEFFFFFEDEF0000)) 
    \CHAIN_GEN[24].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_a_tdata[19]),
        .I1(s_axis_a_tdata[20]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[12]),
        .I4(s_axis_a_tdata[17]),
        .I5(\CHAIN_GEN[22].C_MUX.CARRY_MUX_i_4_n_0 ),
        .O(\CHAIN_GEN[24].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \CHAIN_GEN[25].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[25].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[24].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[25].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFFFFBF0000)) 
    \CHAIN_GEN[25].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_a_tdata[20]),
        .I1(s_axis_a_tdata[13]),
        .I2(s_axis_a_tdata[19]),
        .I3(s_axis_a_tdata[18]),
        .I4(s_axis_a_tdata[17]),
        .I5(\CHAIN_GEN[23].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[25].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \CHAIN_GEN[26].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[26].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[25].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[26].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFFF4FFFFFFF4F)) 
    \CHAIN_GEN[26].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_a_tdata[14]),
        .I1(s_axis_a_tdata[17]),
        .I2(s_axis_a_tdata[19]),
        .I3(s_axis_a_tdata[20]),
        .I4(s_axis_a_tdata[18]),
        .I5(s_axis_a_tdata[12]),
        .O(\CHAIN_GEN[26].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \CHAIN_GEN[27].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[27].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[26].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[27].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFFFFF7F7FFFF)) 
    \CHAIN_GEN[27].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_a_tdata[15]),
        .I1(s_axis_a_tdata[17]),
        .I2(s_axis_a_tdata[20]),
        .I3(s_axis_a_tdata[13]),
        .I4(s_axis_a_tdata[19]),
        .I5(s_axis_a_tdata[18]),
        .O(\CHAIN_GEN[27].C_MUX.CARRY_MUX_i_2_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[28].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[27].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[31].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[30].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[29].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[28].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(round_op_pr[31:28]),
        .S({neg_mant_pza[30],\CHAIN_GEN[30].C_MUX.CARRY_MUX_i_1_n_0 ,\CHAIN_GEN[29].C_MUX.CARRY_MUX_i_1_n_0 ,\CHAIN_GEN[28].C_MUX.CARRY_MUX_i_1_n_0 }));
  LUT4 #(
    .INIT(16'hA959)) 
    \CHAIN_GEN[28].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[28].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[27].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[28].C_MUX.CARRY_MUX_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEFFFDDFF)) 
    \CHAIN_GEN[28].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_a_tdata[17]),
        .I1(s_axis_a_tdata[20]),
        .I2(s_axis_a_tdata[14]),
        .I3(s_axis_a_tdata[19]),
        .I4(s_axis_a_tdata[18]),
        .O(\CHAIN_GEN[28].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAA955A9)) 
    \CHAIN_GEN[29].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[29].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(s_axis_a_tdata[16]),
        .I4(\CHAIN_GEN[28].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[29].C_MUX.CARRY_MUX_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFBFBFFF)) 
    \CHAIN_GEN[29].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_a_tdata[20]),
        .I1(s_axis_a_tdata[15]),
        .I2(s_axis_a_tdata[19]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[18]),
        .O(\CHAIN_GEN[29].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6A6565656A656A6A)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0 
       (.I0(s_axis_a_tdata[21]),
        .I1(s_axis_a_tdata_17_sn_1),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I4(s_axis_a_tdata[17]),
        .I5(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF7C7F7C7F)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_a_tdata[2]),
        .I1(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0 ),
        .I2(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0 ),
        .I3(s_axis_a_tdata[10]),
        .I4(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_12_n_0 ),
        .I5(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0 ),
        .O(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[12]),
        .I1(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0 ),
        .I2(s_axis_a_tdata[4]),
        .I3(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0 ),
        .I4(\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0 ),
        .I5(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_10_n_0 ),
        .O(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA9A959A9A)) 
    \CHAIN_GEN[30].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[29].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(s_axis_a_tdata[20]),
        .I4(\CHAIN_GEN[30].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I5(s_axis_a_tdata[17]),
        .O(\CHAIN_GEN[30].C_MUX.CARRY_MUX_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \CHAIN_GEN[30].C_MUX.CARRY_MUX_i_2 
       (.I0(s_axis_a_tdata[18]),
        .I1(s_axis_a_tdata[17]),
        .I2(s_axis_a_tdata[19]),
        .O(\CHAIN_GEN[30].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA9AAAAAAAAAAAAA)) 
    \CHAIN_GEN[31].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(s_axis_a_tdata[20]),
        .I2(s_axis_a_tdata[19]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[18]),
        .I5(s_axis_a_tdata[16]),
        .O(neg_mant_pza[30]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4 
       (.CI(\CHAIN_GEN[31].C_MUX.CARRY_MUX_n_0 ),
        .CO(\NLW_CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI(\NLW_CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4_DI_UNCONNECTED [3:0]),
        .O({\NLW_CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4_O_UNCONNECTED [3:1],round_op_pr[32]}),
        .S({\NLW_CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4_S_UNCONNECTED [3:1],s_axis_a_tdata[21]}));
  LUT6 #(
    .INIT(64'hA9595959A959A9A9)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I4(s_axis_a_tdata[17]),
        .I5(\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hC0CF5050C0CF5F5F)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2 
       (.I0(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_8_n_0 ),
        .I1(\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_5_n_0 ),
        .I4(s_axis_a_tdata[18]),
        .I5(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_6_n_0 ),
        .O(\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4333FDDD7FFFFDDD)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[3]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[20]),
        .I5(s_axis_a_tdata[11]),
        .O(\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_3_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(round_op_pr[7:4]),
        .S({\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1_n_0 ,\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1_n_0 ,\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1_n_0 ,\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1_n_0 }));
  LUT4 #(
    .INIT(16'hA959)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0AFAF3F303F30)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2 
       (.I0(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I1(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_10_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_4_n_0 ),
        .I4(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_12_n_0 ),
        .I5(s_axis_a_tdata[18]),
        .O(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h43337FFFFDDDFDDD)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[4]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[12]),
        .I5(s_axis_a_tdata[20]),
        .O(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4333FDDD7FFFFDDD)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_4 
       (.I0(s_axis_a_tdata[2]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[20]),
        .I5(s_axis_a_tdata[10]),
        .O(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0CF5F5FC0CF5050)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2 
       (.I0(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_6_n_0 ),
        .I1(\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_8_n_0 ),
        .I4(s_axis_a_tdata[18]),
        .I5(\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h43337FFFFDDDFDDD)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[5]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[13]),
        .I5(s_axis_a_tdata[20]),
        .O(\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0AFA0CFCFAFA0)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2 
       (.I0(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_4_n_0 ),
        .I1(\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I4(s_axis_a_tdata[18]),
        .I5(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_10_n_0 ),
        .O(\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h43337FFFFDDDFDDD)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[6]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[14]),
        .I5(s_axis_a_tdata[20]),
        .O(\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0CFAFAFC0CFA0A0)) 
    \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2 
       (.I0(\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I1(\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_6_n_0 ),
        .I4(s_axis_a_tdata[18]),
        .I5(\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h43337FFFFDDDFDDD)) 
    \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[7]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[15]),
        .I5(s_axis_a_tdata[20]),
        .O(\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3_n_0 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[11].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[10].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[9].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[8].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(round_op_pr[11:8]),
        .S({\CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1_n_0 ,\CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1_n_0 ,\CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1_n_0 ,\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1_n_0 }));
  LUT4 #(
    .INIT(16'hA959)) 
    \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_2 
       (.I0(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I1(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_4_n_0 ),
        .I4(s_axis_a_tdata[18]),
        .I5(\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4333C1114333FDDD)) 
    \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[8]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[20]),
        .I5(s_axis_a_tdata[0]),
        .O(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA959)) 
    \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(\CHAIN_GEN[9].C_MUX.CARRY_MUX_i_2_n_0 ),
        .I2(s_axis_a_tdata[16]),
        .I3(\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_2_n_0 ),
        .O(\CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_2 
       (.I0(\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I1(\CHAIN_GEN[9].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I2(s_axis_a_tdata[17]),
        .I3(\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_3_n_0 ),
        .I4(s_axis_a_tdata[18]),
        .I5(\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3_n_0 ),
        .O(\CHAIN_GEN[9].C_MUX.CARRY_MUX_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFFC111FDDD)) 
    \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_3 
       (.I0(s_axis_a_tdata[9]),
        .I1(s_axis_a_tdata[19]),
        .I2(s_axis_a_tdata[18]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[1]),
        .I5(s_axis_a_tdata[20]),
        .O(\CHAIN_GEN[9].C_MUX.CARRY_MUX_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[0]_i_1 
       (.I0(round_op_pr[1]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_29 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[10]_i_1 
       (.I0(round_op_pr[11]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_19 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[11]_i_1 
       (.I0(round_op_pr[12]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_18 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[12]_i_1 
       (.I0(round_op_pr[13]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_17 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[13]_i_1 
       (.I0(round_op_pr[14]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_16 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[14]_i_1 
       (.I0(round_op_pr[15]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_15 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[15]_i_1 
       (.I0(round_op_pr[16]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_14 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[16]_i_1 
       (.I0(round_op_pr[17]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_13 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[17]_i_1 
       (.I0(round_op_pr[18]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_12 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[18]_i_1 
       (.I0(round_op_pr[19]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_11 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[19]_i_1 
       (.I0(round_op_pr[20]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_10 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[1]_i_1 
       (.I0(round_op_pr[2]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_28 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[20]_i_1 
       (.I0(round_op_pr[21]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_9 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[21]_i_1 
       (.I0(round_op_pr[22]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_8 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[22]_i_1 
       (.I0(round_op_pr[23]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_7 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[23]_i_1 
       (.I0(round_op_pr[24]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_6 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[24]_i_1 
       (.I0(round_op_pr[25]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_5 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[25]_i_1 
       (.I0(round_op_pr[26]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_4 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[26]_i_1 
       (.I0(round_op_pr[27]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_3 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[27]_i_1 
       (.I0(round_op_pr[28]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_2 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[28]_i_1 
       (.I0(round_op_pr[29]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_1 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[29]_i_1 
       (.I0(round_op_pr[30]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_0 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[2]_i_1 
       (.I0(round_op_pr[3]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_27 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[30]_i_2 
       (.I0(round_op_pr[31]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23] ));
  LUT3 #(
    .INIT(8'h8A)) 
    \result_i[30]_i_5 
       (.I0(\result_i_reg[31]_1 ),
        .I1(s_axis_a_tdata[21]),
        .I2(round_op_pr[32]),
        .O(\result_i[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F080FF88)) 
    \result_i[31]_i_1 
       (.I0(\result_i_reg[31]_0 ),
        .I1(\result_i_reg[31] ),
        .I2(round_op_pr[32]),
        .I3(s_axis_a_tdata[21]),
        .I4(\result_i_reg[31]_1 ),
        .I5(\result_i_reg[31]_2 ),
        .O(\s_axis_a_tdata[23]_30 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[3]_i_1 
       (.I0(round_op_pr[4]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_26 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[4]_i_1 
       (.I0(round_op_pr[5]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_25 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[5]_i_1 
       (.I0(round_op_pr[6]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_24 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[6]_i_1 
       (.I0(round_op_pr[7]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_23 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[7]_i_1 
       (.I0(round_op_pr[8]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_22 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[8]_i_1 
       (.I0(round_op_pr[9]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_21 ));
  LUT5 #(
    .INIT(32'hBABAAABA)) 
    \result_i[9]_i_1 
       (.I0(round_op_pr[10]),
        .I1(\result_i[30]_i_5_n_0 ),
        .I2(\result_i_reg[30] ),
        .I3(\result_i_reg[31] ),
        .I4(\result_i_reg[30]_0 ),
        .O(\s_axis_a_tdata[23]_20 ));
endmodule

(* ORIG_REF_NAME = "compare_eq_im" *) 
module fp_to_fix_compare_eq_im__parameterized0
   (\zero_det_unreg[1]_0 ,
    s_axis_a_tdata,
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0 ,
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_0 ,
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2 ,
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_0 ,
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_1 ,
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_2 );
  output [1:0]\zero_det_unreg[1]_0 ;
  input [19:0]s_axis_a_tdata;
  input \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0 ;
  input \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_0 ;
  input \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2 ;
  input \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_0 ;
  input \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_1 ;
  input \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_2 ;

  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_0 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_0 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_1 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_2 ;
  wire [19:0]s_axis_a_tdata;
  wire [1:0]\zero_det_unreg[1]_0 ;

  fp_to_fix_carry_chain__parameterized0 CARRY_ZERO_DET
       (.\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0 (\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0 ),
        .\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_0 (\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_0 ),
        .\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_0 (\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2 ),
        .\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_1 (\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_0 ),
        .\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_2 (\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_1 ),
        .\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_3 (\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_2 ),
        .s_axis_a_tdata(s_axis_a_tdata),
        .\zero_det_unreg[1]_0 (\zero_det_unreg[1]_0 ));
endmodule

(* C_ACCUM_INPUT_MSB = "32" *) (* C_ACCUM_LSB = "-31" *) (* C_ACCUM_MSB = "32" *) 
(* C_A_FRACTION_WIDTH = "17" *) (* C_A_TDATA_WIDTH = "24" *) (* C_A_TUSER_WIDTH = "1" *) 
(* C_A_WIDTH = "24" *) (* C_BRAM_USAGE = "0" *) (* C_B_FRACTION_WIDTH = "17" *) 
(* C_B_TDATA_WIDTH = "24" *) (* C_B_TUSER_WIDTH = "1" *) (* C_B_WIDTH = "24" *) 
(* C_COMPARE_OPERATION = "8" *) (* C_C_FRACTION_WIDTH = "17" *) (* C_C_TDATA_WIDTH = "24" *) 
(* C_C_TUSER_WIDTH = "1" *) (* C_C_WIDTH = "24" *) (* C_FIXED_DATA_UNSIGNED = "0" *) 
(* C_HAS_ABSOLUTE = "0" *) (* C_HAS_ACCUMULATOR_A = "0" *) (* C_HAS_ACCUMULATOR_S = "0" *) 
(* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) (* C_HAS_ACCUM_OVERFLOW = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ADD = "0" *) (* C_HAS_ARESETN = "0" *) (* C_HAS_A_TLAST = "0" *) 
(* C_HAS_A_TUSER = "0" *) (* C_HAS_B = "0" *) (* C_HAS_B_TLAST = "0" *) 
(* C_HAS_B_TUSER = "0" *) (* C_HAS_C = "0" *) (* C_HAS_COMPARE = "0" *) 
(* C_HAS_C_TLAST = "0" *) (* C_HAS_C_TUSER = "0" *) (* C_HAS_DIVIDE = "0" *) 
(* C_HAS_DIVIDE_BY_ZERO = "0" *) (* C_HAS_EXPONENTIAL = "0" *) (* C_HAS_FIX_TO_FLT = "0" *) 
(* C_HAS_FLT_TO_FIX = "1" *) (* C_HAS_FLT_TO_FLT = "0" *) (* C_HAS_FMA = "0" *) 
(* C_HAS_FMS = "0" *) (* C_HAS_INVALID_OP = "0" *) (* C_HAS_LOGARITHM = "0" *) 
(* C_HAS_MULTIPLY = "0" *) (* C_HAS_OPERATION = "0" *) (* C_HAS_OPERATION_TLAST = "0" *) 
(* C_HAS_OPERATION_TUSER = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_RECIP = "0" *) 
(* C_HAS_RECIP_SQRT = "0" *) (* C_HAS_RESULT_TLAST = "0" *) (* C_HAS_RESULT_TUSER = "0" *) 
(* C_HAS_SQRT = "0" *) (* C_HAS_SUBTRACT = "0" *) (* C_HAS_UNDERFLOW = "0" *) 
(* C_LATENCY = "1" *) (* C_MULT_USAGE = "0" *) (* C_OPERATION_TDATA_WIDTH = "8" *) 
(* C_OPERATION_TUSER_WIDTH = "1" *) (* C_OPTIMIZATION = "1" *) (* C_RATE = "1" *) 
(* C_RESULT_FRACTION_WIDTH = "16" *) (* C_RESULT_TDATA_WIDTH = "32" *) (* C_RESULT_TUSER_WIDTH = "1" *) 
(* C_RESULT_WIDTH = "32" *) (* C_THROTTLE_SCHEME = "3" *) (* C_TLAST_RESOLUTION = "0" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "floating_point_v7_1_7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module fp_to_fix_floating_point_v7_1_7
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
  output [31:0]m_axis_result_tdata;
  output [0:0]m_axis_result_tuser;
  output m_axis_result_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire [31:0]m_axis_result_tdata;
  wire m_axis_result_tvalid;
  wire [23:0]s_axis_a_tdata;
  wire s_axis_a_tvalid;
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
  (* C_ACCUM_INPUT_MSB = "32" *) 
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
  (* C_HAS_B = "0" *) 
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
  (* C_HAS_FLT_TO_FIX = "1" *) 
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
  (* C_HAS_SUBTRACT = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MULT_USAGE = "0" *) 
  (* C_OPERATION_TDATA_WIDTH = "8" *) 
  (* C_OPERATION_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZATION = "1" *) 
  (* C_RATE = "1" *) 
  (* C_RESULT_FRACTION_WIDTH = "16" *) 
  (* C_RESULT_TDATA_WIDTH = "32" *) 
  (* C_RESULT_TUSER_WIDTH = "1" *) 
  (* C_RESULT_WIDTH = "32" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  fp_to_fix_floating_point_v7_1_7_viv i_synth
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
        .s_axis_b_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_i_synth_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(1'b0),
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

(* C_ACCUM_INPUT_MSB = "32" *) (* C_ACCUM_LSB = "-31" *) (* C_ACCUM_MSB = "32" *) 
(* C_A_FRACTION_WIDTH = "17" *) (* C_A_TDATA_WIDTH = "24" *) (* C_A_TUSER_WIDTH = "1" *) 
(* C_A_WIDTH = "24" *) (* C_BRAM_USAGE = "0" *) (* C_B_FRACTION_WIDTH = "17" *) 
(* C_B_TDATA_WIDTH = "24" *) (* C_B_TUSER_WIDTH = "1" *) (* C_B_WIDTH = "24" *) 
(* C_COMPARE_OPERATION = "8" *) (* C_C_FRACTION_WIDTH = "17" *) (* C_C_TDATA_WIDTH = "24" *) 
(* C_C_TUSER_WIDTH = "1" *) (* C_C_WIDTH = "24" *) (* C_FIXED_DATA_UNSIGNED = "0" *) 
(* C_HAS_ABSOLUTE = "0" *) (* C_HAS_ACCUMULATOR_A = "0" *) (* C_HAS_ACCUMULATOR_S = "0" *) 
(* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) (* C_HAS_ACCUM_OVERFLOW = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ADD = "0" *) (* C_HAS_ARESETN = "0" *) (* C_HAS_A_TLAST = "0" *) 
(* C_HAS_A_TUSER = "0" *) (* C_HAS_B = "0" *) (* C_HAS_B_TLAST = "0" *) 
(* C_HAS_B_TUSER = "0" *) (* C_HAS_C = "0" *) (* C_HAS_COMPARE = "0" *) 
(* C_HAS_C_TLAST = "0" *) (* C_HAS_C_TUSER = "0" *) (* C_HAS_DIVIDE = "0" *) 
(* C_HAS_DIVIDE_BY_ZERO = "0" *) (* C_HAS_EXPONENTIAL = "0" *) (* C_HAS_FIX_TO_FLT = "0" *) 
(* C_HAS_FLT_TO_FIX = "1" *) (* C_HAS_FLT_TO_FLT = "0" *) (* C_HAS_FMA = "0" *) 
(* C_HAS_FMS = "0" *) (* C_HAS_INVALID_OP = "0" *) (* C_HAS_LOGARITHM = "0" *) 
(* C_HAS_MULTIPLY = "0" *) (* C_HAS_OPERATION = "0" *) (* C_HAS_OPERATION_TLAST = "0" *) 
(* C_HAS_OPERATION_TUSER = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_RECIP = "0" *) 
(* C_HAS_RECIP_SQRT = "0" *) (* C_HAS_RESULT_TLAST = "0" *) (* C_HAS_RESULT_TUSER = "0" *) 
(* C_HAS_SQRT = "0" *) (* C_HAS_SUBTRACT = "0" *) (* C_HAS_UNDERFLOW = "0" *) 
(* C_LATENCY = "1" *) (* C_MULT_USAGE = "0" *) (* C_OPERATION_TDATA_WIDTH = "8" *) 
(* C_OPERATION_TUSER_WIDTH = "1" *) (* C_OPTIMIZATION = "1" *) (* C_RATE = "1" *) 
(* C_RESULT_FRACTION_WIDTH = "16" *) (* C_RESULT_TDATA_WIDTH = "32" *) (* C_RESULT_TUSER_WIDTH = "1" *) 
(* C_RESULT_WIDTH = "32" *) (* C_THROTTLE_SCHEME = "3" *) (* C_TLAST_RESOLUTION = "0" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "floating_point_v7_1_7_viv" *) (* downgradeipidentifiedwarnings = "yes" *) 
module fp_to_fix_floating_point_v7_1_7_viv
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
  output [31:0]m_axis_result_tdata;
  output [0:0]m_axis_result_tuser;
  output m_axis_result_tlast;

  wire \<const0> ;
  wire aclk;
  wire [31:0]m_axis_result_tdata;
  wire m_axis_result_tvalid;
  wire [23:0]s_axis_a_tdata;
  wire s_axis_a_tvalid;

  assign m_axis_result_tlast = \<const0> ;
  assign m_axis_result_tuser[0] = \<const0> ;
  assign s_axis_a_tready = \<const0> ;
  assign s_axis_b_tready = \<const0> ;
  assign s_axis_c_tready = \<const0> ;
  assign s_axis_operation_tready = \<const0> ;
  fp_to_fix_flt_to_fix_conv \FLT_TO_FIX_OP.SPD.OP 
       (.aclk(aclk),
        .m_axis_result_tdata(m_axis_result_tdata),
        .s_axis_a_tdata(s_axis_a_tdata));
  GND GND
       (.G(\<const0> ));
  fp_to_fix_xbip_pipe_v3_0_5_viv i_nd_to_rdy
       (.aclk(aclk),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tvalid(s_axis_a_tvalid));
endmodule

(* ORIG_REF_NAME = "flt_to_fix_conv" *) 
module fp_to_fix_flt_to_fix_conv
   (m_axis_result_tdata,
    aclk,
    s_axis_a_tdata);
  output [31:0]m_axis_result_tdata;
  input aclk;
  input [23:0]s_axis_a_tdata;

  wire [3:3]\EQ_ZERO/chunk_det ;
  wire ROUND_n_0;
  wire ROUND_n_1;
  wire ROUND_n_10;
  wire ROUND_n_11;
  wire ROUND_n_12;
  wire ROUND_n_13;
  wire ROUND_n_14;
  wire ROUND_n_15;
  wire ROUND_n_16;
  wire ROUND_n_17;
  wire ROUND_n_18;
  wire ROUND_n_19;
  wire ROUND_n_2;
  wire ROUND_n_20;
  wire ROUND_n_21;
  wire ROUND_n_22;
  wire ROUND_n_23;
  wire ROUND_n_24;
  wire ROUND_n_25;
  wire ROUND_n_26;
  wire ROUND_n_27;
  wire ROUND_n_28;
  wire ROUND_n_29;
  wire ROUND_n_3;
  wire ROUND_n_30;
  wire ROUND_n_31;
  wire ROUND_n_32;
  wire ROUND_n_33;
  wire ROUND_n_34;
  wire ROUND_n_4;
  wire ROUND_n_5;
  wire ROUND_n_6;
  wire ROUND_n_7;
  wire ROUND_n_8;
  wire ROUND_n_9;
  wire aclk;
  wire [31:0]m_axis_result_tdata;
  wire [0:0]op_state_p1_updated;
  wire \result_i[30]_i_3_n_0 ;
  wire \result_i[30]_i_4_n_0 ;
  wire \result_i[30]_i_6_n_0 ;
  wire \result_i[30]_i_7_n_0 ;
  wire \result_i[30]_i_8_n_0 ;
  wire \result_i[31]_i_10_n_0 ;
  wire \result_i[31]_i_2_n_0 ;
  wire \result_i[31]_i_3_n_0 ;
  wire \result_i[31]_i_4_n_0 ;
  wire \result_i[31]_i_5_n_0 ;
  wire \result_i[31]_i_6_n_0 ;
  wire \result_i[31]_i_7_n_0 ;
  wire \result_i[31]_i_8_n_0 ;
  wire [0:0]round_ip_pza;
  wire [23:0]s_axis_a_tdata;

  fp_to_fix_zero_det_sel ALIGN_Z_D
       (.\CHAIN_GEN[0].C_MUX.CARRY_MUX (ROUND_n_0),
        .\CHAIN_GEN[0].C_MUX.CARRY_MUX_0 (ROUND_n_33),
        .\CHAIN_GEN[0].C_MUX.CARRY_MUX_1 (ROUND_n_34),
        .round_ip_pza(round_ip_pza),
        .s_axis_a_tdata({s_axis_a_tdata[23],s_axis_a_tdata[20:0]}));
  fp_to_fix_carry_chain__parameterized1 ROUND
       (.\result_i_reg[30] (\result_i[30]_i_6_n_0 ),
        .\result_i_reg[30]_0 (\result_i[30]_i_7_n_0 ),
        .\result_i_reg[31] (\result_i[31]_i_3_n_0 ),
        .\result_i_reg[31]_0 (\result_i[31]_i_2_n_0 ),
        .\result_i_reg[31]_1 (\result_i[31]_i_4_n_0 ),
        .\result_i_reg[31]_2 (\result_i[31]_i_5_n_0 ),
        .round_ip_pza(round_ip_pza),
        .s_axis_a_tdata({s_axis_a_tdata[23],s_axis_a_tdata[20:0]}),
        .\s_axis_a_tdata[17]_0 (ROUND_n_33),
        .\s_axis_a_tdata[17]_1 (ROUND_n_34),
        .\s_axis_a_tdata[23] (ROUND_n_1),
        .\s_axis_a_tdata[23]_0 (ROUND_n_2),
        .\s_axis_a_tdata[23]_1 (ROUND_n_3),
        .\s_axis_a_tdata[23]_10 (ROUND_n_12),
        .\s_axis_a_tdata[23]_11 (ROUND_n_13),
        .\s_axis_a_tdata[23]_12 (ROUND_n_14),
        .\s_axis_a_tdata[23]_13 (ROUND_n_15),
        .\s_axis_a_tdata[23]_14 (ROUND_n_16),
        .\s_axis_a_tdata[23]_15 (ROUND_n_17),
        .\s_axis_a_tdata[23]_16 (ROUND_n_18),
        .\s_axis_a_tdata[23]_17 (ROUND_n_19),
        .\s_axis_a_tdata[23]_18 (ROUND_n_20),
        .\s_axis_a_tdata[23]_19 (ROUND_n_21),
        .\s_axis_a_tdata[23]_2 (ROUND_n_4),
        .\s_axis_a_tdata[23]_20 (ROUND_n_22),
        .\s_axis_a_tdata[23]_21 (ROUND_n_23),
        .\s_axis_a_tdata[23]_22 (ROUND_n_24),
        .\s_axis_a_tdata[23]_23 (ROUND_n_25),
        .\s_axis_a_tdata[23]_24 (ROUND_n_26),
        .\s_axis_a_tdata[23]_25 (ROUND_n_27),
        .\s_axis_a_tdata[23]_26 (ROUND_n_28),
        .\s_axis_a_tdata[23]_27 (ROUND_n_29),
        .\s_axis_a_tdata[23]_28 (ROUND_n_30),
        .\s_axis_a_tdata[23]_29 (ROUND_n_31),
        .\s_axis_a_tdata[23]_3 (ROUND_n_5),
        .\s_axis_a_tdata[23]_30 (ROUND_n_32),
        .\s_axis_a_tdata[23]_4 (ROUND_n_6),
        .\s_axis_a_tdata[23]_5 (ROUND_n_7),
        .\s_axis_a_tdata[23]_6 (ROUND_n_8),
        .\s_axis_a_tdata[23]_7 (ROUND_n_9),
        .\s_axis_a_tdata[23]_8 (ROUND_n_10),
        .\s_axis_a_tdata[23]_9 (ROUND_n_11),
        .s_axis_a_tdata_17_sp_1(ROUND_n_0));
  LUT6 #(
    .INIT(64'hFFFFFE00FFFFFEAA)) 
    \result_i[30]_i_1 
       (.I0(s_axis_a_tdata[23]),
        .I1(\result_i[30]_i_3_n_0 ),
        .I2(\result_i[30]_i_4_n_0 ),
        .I3(\result_i[31]_i_3_n_0 ),
        .I4(\result_i[31]_i_5_n_0 ),
        .I5(\result_i[31]_i_4_n_0 ),
        .O(op_state_p1_updated));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \result_i[30]_i_3 
       (.I0(\EQ_ZERO/chunk_det ),
        .I1(s_axis_a_tdata[5]),
        .I2(s_axis_a_tdata[3]),
        .I3(s_axis_a_tdata[9]),
        .I4(s_axis_a_tdata[4]),
        .O(\result_i[30]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \result_i[30]_i_4 
       (.I0(s_axis_a_tdata[8]),
        .I1(s_axis_a_tdata[2]),
        .I2(s_axis_a_tdata[6]),
        .I3(s_axis_a_tdata[7]),
        .I4(\result_i[31]_i_6_n_0 ),
        .O(\result_i[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8F0F0F3FFFFFFFFF)) 
    \result_i[30]_i_6 
       (.I0(s_axis_a_tdata[16]),
        .I1(\result_i[31]_i_10_n_0 ),
        .I2(s_axis_a_tdata[22]),
        .I3(s_axis_a_tdata[21]),
        .I4(s_axis_a_tdata[20]),
        .I5(s_axis_a_tdata[23]),
        .O(\result_i[30]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \result_i[30]_i_7 
       (.I0(s_axis_a_tdata[23]),
        .I1(\EQ_ZERO/chunk_det ),
        .I2(\result_i[31]_i_8_n_0 ),
        .I3(\result_i[30]_i_8_n_0 ),
        .I4(\result_i[31]_i_6_n_0 ),
        .O(\result_i[30]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_i[30]_i_8 
       (.I0(s_axis_a_tdata[7]),
        .I1(s_axis_a_tdata[6]),
        .I2(s_axis_a_tdata[2]),
        .I3(s_axis_a_tdata[8]),
        .O(\result_i[30]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \result_i[31]_i_10 
       (.I0(s_axis_a_tdata[19]),
        .I1(s_axis_a_tdata[18]),
        .I2(s_axis_a_tdata[17]),
        .O(\result_i[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \result_i[31]_i_2 
       (.I0(\result_i[31]_i_6_n_0 ),
        .I1(\result_i[31]_i_7_n_0 ),
        .I2(s_axis_a_tdata[2]),
        .I3(s_axis_a_tdata[8]),
        .I4(\result_i[31]_i_8_n_0 ),
        .I5(\EQ_ZERO/chunk_det ),
        .O(\result_i[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \result_i[31]_i_3 
       (.I0(s_axis_a_tdata[16]),
        .I1(\result_i[31]_i_10_n_0 ),
        .I2(s_axis_a_tdata[22]),
        .I3(s_axis_a_tdata[21]),
        .I4(s_axis_a_tdata[20]),
        .O(\result_i[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h01111111FFFFFFFF)) 
    \result_i[31]_i_4 
       (.I0(s_axis_a_tdata[21]),
        .I1(s_axis_a_tdata[20]),
        .I2(s_axis_a_tdata[17]),
        .I3(s_axis_a_tdata[18]),
        .I4(s_axis_a_tdata[19]),
        .I5(s_axis_a_tdata[22]),
        .O(\result_i[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0111111155555555)) 
    \result_i[31]_i_5 
       (.I0(s_axis_a_tdata[22]),
        .I1(s_axis_a_tdata[20]),
        .I2(s_axis_a_tdata[17]),
        .I3(s_axis_a_tdata[18]),
        .I4(s_axis_a_tdata[19]),
        .I5(s_axis_a_tdata[21]),
        .O(\result_i[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_i[31]_i_6 
       (.I0(s_axis_a_tdata[11]),
        .I1(s_axis_a_tdata[10]),
        .I2(s_axis_a_tdata[0]),
        .I3(s_axis_a_tdata[1]),
        .O(\result_i[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \result_i[31]_i_7 
       (.I0(s_axis_a_tdata[6]),
        .I1(s_axis_a_tdata[7]),
        .O(\result_i[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \result_i[31]_i_8 
       (.I0(s_axis_a_tdata[4]),
        .I1(s_axis_a_tdata[9]),
        .I2(s_axis_a_tdata[3]),
        .I3(s_axis_a_tdata[5]),
        .O(\result_i[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \result_i[31]_i_9 
       (.I0(s_axis_a_tdata[12]),
        .I1(s_axis_a_tdata[13]),
        .I2(s_axis_a_tdata[15]),
        .I3(s_axis_a_tdata[14]),
        .O(\EQ_ZERO/chunk_det ));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_31),
        .Q(m_axis_result_tdata[0]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_21),
        .Q(m_axis_result_tdata[10]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_20),
        .Q(m_axis_result_tdata[11]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_19),
        .Q(m_axis_result_tdata[12]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_18),
        .Q(m_axis_result_tdata[13]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_17),
        .Q(m_axis_result_tdata[14]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_16),
        .Q(m_axis_result_tdata[15]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_15),
        .Q(m_axis_result_tdata[16]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_14),
        .Q(m_axis_result_tdata[17]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_13),
        .Q(m_axis_result_tdata[18]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_12),
        .Q(m_axis_result_tdata[19]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_30),
        .Q(m_axis_result_tdata[1]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_11),
        .Q(m_axis_result_tdata[20]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_10),
        .Q(m_axis_result_tdata[21]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_9),
        .Q(m_axis_result_tdata[22]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_8),
        .Q(m_axis_result_tdata[23]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_7),
        .Q(m_axis_result_tdata[24]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_6),
        .Q(m_axis_result_tdata[25]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_5),
        .Q(m_axis_result_tdata[26]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_4),
        .Q(m_axis_result_tdata[27]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_3),
        .Q(m_axis_result_tdata[28]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_2),
        .Q(m_axis_result_tdata[29]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_29),
        .Q(m_axis_result_tdata[2]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_1),
        .Q(m_axis_result_tdata[30]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_32),
        .Q(m_axis_result_tdata[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_28),
        .Q(m_axis_result_tdata[3]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_27),
        .Q(m_axis_result_tdata[4]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_26),
        .Q(m_axis_result_tdata[5]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_25),
        .Q(m_axis_result_tdata[6]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_24),
        .Q(m_axis_result_tdata[7]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_23),
        .Q(m_axis_result_tdata[8]),
        .R(op_state_p1_updated));
  FDRE #(
    .INIT(1'b0)) 
    \result_i_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(ROUND_n_22),
        .Q(m_axis_result_tdata[9]),
        .R(op_state_p1_updated));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fp_to_fix_xbip_pipe_v3_0_5_viv
   (m_axis_result_tvalid,
    s_axis_a_tvalid,
    aclk);
  output m_axis_result_tvalid;
  input s_axis_a_tvalid;
  input aclk;

  wire aclk;
  (* RTL_KEEP = "true" *) wire first_q;
  wire s_axis_a_tvalid;

  assign m_axis_result_tvalid = first_q;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_a_tvalid),
        .Q(first_q),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "zero_det_sel" *) 
module fp_to_fix_zero_det_sel
   (round_ip_pza,
    s_axis_a_tdata,
    \CHAIN_GEN[0].C_MUX.CARRY_MUX ,
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_0 ,
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_1 );
  output [0:0]round_ip_pza;
  input [21:0]s_axis_a_tdata;
  input \CHAIN_GEN[0].C_MUX.CARRY_MUX ;
  input \CHAIN_GEN[0].C_MUX.CARRY_MUX_0 ;
  input \CHAIN_GEN[0].C_MUX.CARRY_MUX_1 ;

  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX ;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_0 ;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_1 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_10_n_0 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_11_n_0 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1_n_0 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_5_n_0 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_6_n_0 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_8_n_0 ;
  wire \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_9_n_0 ;
  wire mux0_0;
  wire mux0_1;
  wire [0:0]round_ip_pza;
  wire [21:0]s_axis_a_tdata;
  wire [1:0]\zero_det_unreg[1]_0 ;
  wire zeros_pz;

  LUT6 #(
    .INIT(64'h555999AAAA59AAAA)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[21]),
        .I1(zeros_pz),
        .I2(\CHAIN_GEN[0].C_MUX.CARRY_MUX ),
        .I3(s_axis_a_tdata[16]),
        .I4(\CHAIN_GEN[0].C_MUX.CARRY_MUX_0 ),
        .I5(\CHAIN_GEN[0].C_MUX.CARRY_MUX_1 ),
        .O(round_ip_pza));
  fp_to_fix_compare_eq_im__parameterized0 EQ_ZERO
       (.\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0 (\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_5_n_0 ),
        .\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_0 (\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_6_n_0 ),
        .\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2 (\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_8_n_0 ),
        .\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_0 (\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_9_n_0 ),
        .\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_1 (\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_10_n_0 ),
        .\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_2 (\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_11_n_0 ),
        .s_axis_a_tdata(s_axis_a_tdata[19:0]),
        .\zero_det_unreg[1]_0 (\zero_det_unreg[1]_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0 
       (.I0(\zero_det_unreg[1]_0 [0]),
        .I1(\zero_det_unreg[1]_0 [1]),
        .O(mux0_0),
        .S(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h95555555)) 
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1 
       (.I0(s_axis_a_tdata[20]),
        .I1(s_axis_a_tdata[16]),
        .I2(s_axis_a_tdata[19]),
        .I3(s_axis_a_tdata[18]),
        .I4(s_axis_a_tdata[17]),
        .O(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h95)) 
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_10 
       (.I0(s_axis_a_tdata[18]),
        .I1(s_axis_a_tdata[17]),
        .I2(s_axis_a_tdata[16]),
        .O(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAFA5AF80)) 
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_11 
       (.I0(s_axis_a_tdata[16]),
        .I1(s_axis_a_tdata[14]),
        .I2(s_axis_a_tdata[17]),
        .I3(s_axis_a_tdata[12]),
        .I4(s_axis_a_tdata[13]),
        .O(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF0FFE00C)) 
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_5 
       (.I0(s_axis_a_tdata[2]),
        .I1(s_axis_a_tdata[1]),
        .I2(s_axis_a_tdata[16]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[0]),
        .O(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_6 
       (.I0(s_axis_a_tdata[16]),
        .I1(s_axis_a_tdata[17]),
        .O(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0F511F51)) 
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_8 
       (.I0(s_axis_a_tdata[4]),
        .I1(s_axis_a_tdata[5]),
        .I2(s_axis_a_tdata[16]),
        .I3(s_axis_a_tdata[17]),
        .I4(s_axis_a_tdata[6]),
        .O(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_9 
       (.I0(s_axis_a_tdata[19]),
        .I1(s_axis_a_tdata[16]),
        .I2(s_axis_a_tdata[17]),
        .I3(s_axis_a_tdata[18]),
        .O(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_9_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF7 \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX1 
       (.I0(1'b1),
        .I1(1'b1),
        .O(mux0_1),
        .S(\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  MUXF8 \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX2 
       (.I0(mux0_0),
        .I1(mux0_1),
        .O(zeros_pz),
        .S(1'b0));
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
