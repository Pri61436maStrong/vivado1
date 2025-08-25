// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Aug 12 16:06:38 2024
// Host        : aic-ts running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/norm/fix_to_float/fix_to_float_sim_netlist.v
// Design      : fix_to_float
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fix_to_float,floating_point_v7_1_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "floating_point_v7_1_7,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module fix_to_float
   (aclk,
    s_axis_a_tvalid,
    s_axis_a_tdata,
    m_axis_result_tvalid,
    m_axis_result_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_OPERATION:M_AXIS_RESULT:S_AXIS_C:S_AXIS_B:S_AXIS_A, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_a_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) input [63:0]s_axis_a_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_RESULT, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_result_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA" *) output [23:0]m_axis_result_tdata;

  wire aclk;
  wire [23:0]m_axis_result_tdata;
  wire m_axis_result_tvalid;
  wire [63:0]s_axis_a_tdata;
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
  (* C_A_FRACTION_WIDTH = "6" *) 
  (* C_A_TDATA_WIDTH = "64" *) 
  (* C_A_TUSER_WIDTH = "1" *) 
  (* C_A_WIDTH = "61" *) 
  (* C_BRAM_USAGE = "0" *) 
  (* C_B_FRACTION_WIDTH = "6" *) 
  (* C_B_TDATA_WIDTH = "64" *) 
  (* C_B_TUSER_WIDTH = "1" *) 
  (* C_B_WIDTH = "61" *) 
  (* C_COMPARE_OPERATION = "8" *) 
  (* C_C_FRACTION_WIDTH = "6" *) 
  (* C_C_TDATA_WIDTH = "64" *) 
  (* C_C_TUSER_WIDTH = "1" *) 
  (* C_C_WIDTH = "61" *) 
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
  (* C_HAS_FIX_TO_FLT = "1" *) 
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
  (* C_HAS_SUBTRACT = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_LATENCY = "3" *) 
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
  fix_to_float_floating_point_v7_1_7 U0
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
        .s_axis_b_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_U0_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(1'b0),
        .s_axis_c_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
module fix_to_float_carry_chain
   (\CHAIN_GEN[1].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[2].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[3].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[4].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[5].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[6].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[7].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[8].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[9].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[10].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[11].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[12].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[13].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[14].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[15].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[16].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[17].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[18].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[19].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[20].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[21].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[22].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[23].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[24].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[25].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[26].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[27].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[28].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[29].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[30].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[31].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[32].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[33].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[34].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[35].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[36].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[37].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[38].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[39].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[40].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[41].Q_XOR.SUM_XOR_0 ,
    \CHAIN_GEN[42].Q_XOR.SUM_XOR_0 ,
    chunk_is_zero,
    D,
    \CHAIN_GEN[27].Q_XOR.SUM_XOR_1 ,
    \CHAIN_GEN[28].Q_XOR.SUM_XOR_1 ,
    \CHAIN_GEN[29].Q_XOR.SUM_XOR_1 ,
    \CHAIN_GEN[30].Q_XOR.SUM_XOR_1 ,
    \CHAIN_GEN[31].Q_XOR.SUM_XOR_1 ,
    \s_axis_a_tdata[60] ,
    A,
    CARRY_OUT,
    CARRYS_OUT,
    \opt_has_pipe.first_q_reg[28] ,
    \CHAIN_GEN[60].Q_XOR.SUM_XOR_0 ,
    s_axis_a_tdata);
  output \CHAIN_GEN[1].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[2].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[3].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[4].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[5].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[6].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[7].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[8].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[9].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[10].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[11].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[12].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[13].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[14].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[15].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[16].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[17].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[18].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[19].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[20].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[21].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[22].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[23].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[24].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[25].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[26].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[27].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[28].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[29].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[30].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[31].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[32].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[33].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[34].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[35].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[36].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[37].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[38].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[39].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[40].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[41].Q_XOR.SUM_XOR_0 ;
  output \CHAIN_GEN[42].Q_XOR.SUM_XOR_0 ;
  output [15:0]chunk_is_zero;
  output [7:0]D;
  output \CHAIN_GEN[27].Q_XOR.SUM_XOR_1 ;
  output \CHAIN_GEN[28].Q_XOR.SUM_XOR_1 ;
  output \CHAIN_GEN[29].Q_XOR.SUM_XOR_1 ;
  output \CHAIN_GEN[30].Q_XOR.SUM_XOR_1 ;
  output \CHAIN_GEN[31].Q_XOR.SUM_XOR_1 ;
  output [27:0]\s_axis_a_tdata[60] ;
  output [0:0]A;
  input CARRY_OUT;
  input [0:0]CARRYS_OUT;
  input [0:0]\opt_has_pipe.first_q_reg[28] ;
  input [59:0]\CHAIN_GEN[60].Q_XOR.SUM_XOR_0 ;
  input [0:0]s_axis_a_tdata;

  wire [0:0]A;
  wire [0:0]CARRYS_OUT;
  wire CARRY_OUT;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[10].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[10].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[11].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[11].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[12].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[12].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[13].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[13].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[14].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[14].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[15].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[15].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[16].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[16].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[17].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[17].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[18].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[18].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[19].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[19].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[1].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[20].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[20].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[21].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[21].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[22].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[22].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[23].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[23].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[24].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[24].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[25].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[25].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[26].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[26].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[27].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[27].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[27].Q_XOR.SUM_XOR_1 ;
  wire \CHAIN_GEN[28].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[28].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[28].Q_XOR.SUM_XOR_1 ;
  wire \CHAIN_GEN[29].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[29].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[29].Q_XOR.SUM_XOR_1 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[2].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[30].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[30].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[30].Q_XOR.SUM_XOR_1 ;
  wire \CHAIN_GEN[31].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[31].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[31].Q_XOR.SUM_XOR_1 ;
  wire \CHAIN_GEN[32].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[32].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[33].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[33].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[34].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[34].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[35].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[35].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[36].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[36].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[37].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[37].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[38].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[38].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[39].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[39].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[3].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[40].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[40].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[41].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[41].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[42].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[42].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[43].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[44].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[45].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[46].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[47].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[48].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[49].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[4].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[50].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[51].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[52].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[53].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[54].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[55].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[56].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[57].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[58].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[59].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[5].Q_XOR.SUM_XOR_0 ;
  wire [59:0]\CHAIN_GEN[60].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[6].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[7].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[8].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[8].Q_XOR.SUM_XOR_0 ;
  wire \CHAIN_GEN[9].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[9].Q_XOR.SUM_XOR_0 ;
  wire [7:0]D;
  wire [60:0]abs_a;
  wire [15:0]chunk_is_zero;
  wire \opt_has_pipe.first_q[0]_i_4__0_n_0 ;
  wire \opt_has_pipe.first_q[0]_i_5__0_n_0 ;
  wire \opt_has_pipe.first_q[0]_i_6__0_n_0 ;
  wire \opt_has_pipe.first_q[0]_i_7__0_n_0 ;
  wire \opt_has_pipe.first_q[10]_i_2_n_0 ;
  wire \opt_has_pipe.first_q[11]_i_2_n_0 ;
  wire \opt_has_pipe.first_q[12]_i_2_n_0 ;
  wire \opt_has_pipe.first_q[1]_i_2__1_n_0 ;
  wire \opt_has_pipe.first_q[1]_i_4_n_0 ;
  wire \opt_has_pipe.first_q[1]_i_5_n_0 ;
  wire \opt_has_pipe.first_q[1]_i_6_n_0 ;
  wire \opt_has_pipe.first_q[1]_i_7_n_0 ;
  wire \opt_has_pipe.first_q[2]_i_2__0_n_0 ;
  wire \opt_has_pipe.first_q[2]_i_4_n_0 ;
  wire \opt_has_pipe.first_q[2]_i_5_n_0 ;
  wire \opt_has_pipe.first_q[2]_i_6_n_0 ;
  wire \opt_has_pipe.first_q[2]_i_7_n_0 ;
  wire \opt_has_pipe.first_q[3]_i_2_n_0 ;
  wire \opt_has_pipe.first_q[3]_i_4_n_0 ;
  wire \opt_has_pipe.first_q[3]_i_5_n_0 ;
  wire \opt_has_pipe.first_q[3]_i_6_n_0 ;
  wire \opt_has_pipe.first_q[3]_i_7_n_0 ;
  wire \opt_has_pipe.first_q[4]_i_2_n_0 ;
  wire \opt_has_pipe.first_q[4]_i_4_n_0 ;
  wire \opt_has_pipe.first_q[4]_i_5_n_0 ;
  wire \opt_has_pipe.first_q[4]_i_6_n_0 ;
  wire \opt_has_pipe.first_q[4]_i_7_n_0 ;
  wire \opt_has_pipe.first_q[5]_i_2_n_0 ;
  wire \opt_has_pipe.first_q[5]_i_4_n_0 ;
  wire \opt_has_pipe.first_q[5]_i_5_n_0 ;
  wire \opt_has_pipe.first_q[5]_i_6_n_0 ;
  wire \opt_has_pipe.first_q[5]_i_7_n_0 ;
  wire \opt_has_pipe.first_q[6]_i_2__0_n_0 ;
  wire \opt_has_pipe.first_q[6]_i_2_n_0 ;
  wire \opt_has_pipe.first_q[6]_i_3_n_0 ;
  wire \opt_has_pipe.first_q[6]_i_4_n_0 ;
  wire \opt_has_pipe.first_q[7]_i_2__0_n_0 ;
  wire \opt_has_pipe.first_q[7]_i_2_n_0 ;
  wire \opt_has_pipe.first_q[7]_i_3_n_0 ;
  wire \opt_has_pipe.first_q[7]_i_4_n_0 ;
  wire \opt_has_pipe.first_q[8]_i_2_n_0 ;
  wire \opt_has_pipe.first_q[9]_i_2_n_0 ;
  wire \opt_has_pipe.first_q_reg[0]_i_2__0_n_0 ;
  wire \opt_has_pipe.first_q_reg[0]_i_3__0_n_0 ;
  wire \opt_has_pipe.first_q_reg[1]_i_2_n_0 ;
  wire \opt_has_pipe.first_q_reg[1]_i_3_n_0 ;
  wire [0:0]\opt_has_pipe.first_q_reg[28] ;
  wire \opt_has_pipe.first_q_reg[2]_i_2_n_0 ;
  wire \opt_has_pipe.first_q_reg[2]_i_3_n_0 ;
  wire \opt_has_pipe.first_q_reg[3]_i_2_n_0 ;
  wire \opt_has_pipe.first_q_reg[3]_i_3_n_0 ;
  wire \opt_has_pipe.first_q_reg[4]_i_2_n_0 ;
  wire \opt_has_pipe.first_q_reg[4]_i_3_n_0 ;
  wire \opt_has_pipe.first_q_reg[5]_i_2_n_0 ;
  wire \opt_has_pipe.first_q_reg[5]_i_3_n_0 ;
  wire [0:0]s_axis_a_tdata;
  wire [27:0]\s_axis_a_tdata[60] ;
  wire [3:0]\NLW_CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(1'b0),
        .CO({\CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(s_axis_a_tdata),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_a[3:0]),
        .S(\CHAIN_GEN[60].Q_XOR.SUM_XOR_0 [3:0]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0 
       (.I0(abs_a[27]),
        .I1(abs_a[25]),
        .I2(abs_a[26]),
        .I3(abs_a[28]),
        .O(chunk_is_zero[8]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0__0 
       (.I0(abs_a[59]),
        .I1(abs_a[57]),
        .I2(abs_a[58]),
        .I3(abs_a[60]),
        .O(chunk_is_zero[0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[12].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[11].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[15].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[14].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[13].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[12].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_a[15:12]),
        .S(\CHAIN_GEN[60].Q_XOR.SUM_XOR_0 [15:12]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[16].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[15].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[19].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[18].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[17].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[16].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_a[19:16]),
        .S(\CHAIN_GEN[60].Q_XOR.SUM_XOR_0 [19:16]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__0 
       (.I0(abs_a[23]),
        .I1(abs_a[21]),
        .I2(abs_a[22]),
        .I3(abs_a[24]),
        .O(chunk_is_zero[9]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__0__0 
       (.I0(abs_a[55]),
        .I1(abs_a[53]),
        .I2(abs_a[54]),
        .I3(abs_a[56]),
        .O(chunk_is_zero[1]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[20].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[19].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[23].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[22].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[21].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[20].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_a[23:20]),
        .S(\CHAIN_GEN[60].Q_XOR.SUM_XOR_0 [23:20]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[24].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[23].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[27].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[26].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[25].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[24].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_a[27:24]),
        .S(\CHAIN_GEN[60].Q_XOR.SUM_XOR_0 [27:24]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[28].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[27].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[31].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[30].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[29].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[28].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_a[31:28]),
        .S(\CHAIN_GEN[60].Q_XOR.SUM_XOR_0 [31:28]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0 
       (.I0(abs_a[19]),
        .I1(abs_a[17]),
        .I2(abs_a[18]),
        .I3(abs_a[20]),
        .O(chunk_is_zero[10]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0__0 
       (.I0(abs_a[51]),
        .I1(abs_a[49]),
        .I2(abs_a[50]),
        .I3(abs_a[52]),
        .O(chunk_is_zero[2]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[32].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[31].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[35].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[34].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[33].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[32].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_a[35:32]),
        .S(\CHAIN_GEN[60].Q_XOR.SUM_XOR_0 [35:32]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[36].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[35].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[39].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[38].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[37].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[36].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_a[39:36]),
        .S(\CHAIN_GEN[60].Q_XOR.SUM_XOR_0 [39:36]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0 
       (.I0(abs_a[15]),
        .I1(abs_a[13]),
        .I2(abs_a[14]),
        .I3(abs_a[16]),
        .O(chunk_is_zero[11]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0__0 
       (.I0(abs_a[47]),
        .I1(abs_a[45]),
        .I2(abs_a[46]),
        .I3(abs_a[48]),
        .O(chunk_is_zero[3]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[40].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[39].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[43].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[42].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[41].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[40].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_a[43:40]),
        .S(\CHAIN_GEN[60].Q_XOR.SUM_XOR_0 [43:40]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[44].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[43].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[47].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[46].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[45].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[44].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_a[47:44]),
        .S(\CHAIN_GEN[60].Q_XOR.SUM_XOR_0 [47:44]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[48].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[47].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[51].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[50].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[49].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[48].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_a[51:48]),
        .S(\CHAIN_GEN[60].Q_XOR.SUM_XOR_0 [51:48]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_a[7:4]),
        .S(\CHAIN_GEN[60].Q_XOR.SUM_XOR_0 [7:4]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__0 
       (.I0(abs_a[11]),
        .I1(abs_a[9]),
        .I2(abs_a[10]),
        .I3(abs_a[12]),
        .O(chunk_is_zero[12]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__0__0 
       (.I0(abs_a[43]),
        .I1(abs_a[41]),
        .I2(abs_a[42]),
        .I3(abs_a[44]),
        .O(chunk_is_zero[4]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[52].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[51].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[55].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[54].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[53].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[52].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_a[55:52]),
        .S(\CHAIN_GEN[60].Q_XOR.SUM_XOR_0 [55:52]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[56].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[55].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[59].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[58].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[57].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[56].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_a[59:56]),
        .S(\CHAIN_GEN[60].Q_XOR.SUM_XOR_0 [59:56]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__0 
       (.I0(abs_a[7]),
        .I1(abs_a[5]),
        .I2(abs_a[6]),
        .I3(abs_a[8]),
        .O(chunk_is_zero[13]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__0__0 
       (.I0(abs_a[39]),
        .I1(abs_a[37]),
        .I2(abs_a[38]),
        .I3(abs_a[40]),
        .O(chunk_is_zero[5]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4 
       (.CI(\CHAIN_GEN[59].C_MUX.CARRY_MUX_n_0 ),
        .CO(\NLW_CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI(\NLW_CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4_DI_UNCONNECTED [3:0]),
        .O({\NLW_CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4_O_UNCONNECTED [3:1],abs_a[60]}),
        .S({\NLW_CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4_S_UNCONNECTED [3:1],1'b0}));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__0 
       (.I0(abs_a[3]),
        .I1(abs_a[1]),
        .I2(abs_a[2]),
        .I3(abs_a[4]),
        .O(chunk_is_zero[14]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__0__0 
       (.I0(abs_a[35]),
        .I1(abs_a[33]),
        .I2(abs_a[34]),
        .I3(abs_a[36]),
        .O(chunk_is_zero[6]));
  LUT4 #(
    .INIT(16'h0001)) 
    \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__0 
       (.I0(abs_a[31]),
        .I1(abs_a[29]),
        .I2(abs_a[30]),
        .I3(abs_a[32]),
        .O(chunk_is_zero[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__0__0 
       (.I0(abs_a[0]),
        .O(A));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[11].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[10].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[9].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[8].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(abs_a[11:8]),
        .S(\CHAIN_GEN[60].Q_XOR.SUM_XOR_0 [11:8]));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[21].mc_i_1 
       (.I0(abs_a[0]),
        .O(chunk_is_zero[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[22].mc_i_1 
       (.I0(abs_a[1]),
        .O(\CHAIN_GEN[1].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[23].mc_i_1 
       (.I0(abs_a[2]),
        .O(\CHAIN_GEN[2].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[24].mc_i_1 
       (.I0(abs_a[3]),
        .O(\CHAIN_GEN[3].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[25].mc_i_1 
       (.I0(abs_a[4]),
        .O(\CHAIN_GEN[4].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[26].mc_i_1 
       (.I0(abs_a[5]),
        .O(\CHAIN_GEN[5].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[27].mc_i_1 
       (.I0(abs_a[6]),
        .O(\CHAIN_GEN[6].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[28].mc_i_1 
       (.I0(abs_a[7]),
        .O(\CHAIN_GEN[7].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[29].mc_i_1 
       (.I0(abs_a[8]),
        .O(\CHAIN_GEN[8].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[30].mc_i_1 
       (.I0(abs_a[9]),
        .O(\CHAIN_GEN[9].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[31].mc_i_1 
       (.I0(abs_a[10]),
        .O(\CHAIN_GEN[10].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[32].mc_i_1 
       (.I0(abs_a[11]),
        .O(\CHAIN_GEN[11].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[33].mc_i_1 
       (.I0(abs_a[12]),
        .O(\CHAIN_GEN[12].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[34].mc_i_1 
       (.I0(abs_a[13]),
        .O(\CHAIN_GEN[13].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[35].mc_i_1 
       (.I0(abs_a[14]),
        .O(\CHAIN_GEN[14].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[36].mc_i_1 
       (.I0(abs_a[15]),
        .O(\CHAIN_GEN[15].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[37].mc_i_1 
       (.I0(abs_a[16]),
        .O(\CHAIN_GEN[16].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[38].mc_i_1 
       (.I0(abs_a[17]),
        .O(\CHAIN_GEN[17].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[39].mc_i_1 
       (.I0(abs_a[18]),
        .O(\CHAIN_GEN[18].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[40].mc_i_1 
       (.I0(abs_a[19]),
        .O(\CHAIN_GEN[19].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[41].mc_i_1 
       (.I0(abs_a[20]),
        .O(\CHAIN_GEN[20].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[42].mc_i_1 
       (.I0(abs_a[21]),
        .O(\CHAIN_GEN[21].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[43].mc_i_1 
       (.I0(abs_a[22]),
        .O(\CHAIN_GEN[22].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[44].mc_i_1 
       (.I0(abs_a[23]),
        .O(\CHAIN_GEN[23].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[45].mc_i_1 
       (.I0(abs_a[24]),
        .O(\CHAIN_GEN[24].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[46].mc_i_1 
       (.I0(abs_a[25]),
        .O(\CHAIN_GEN[25].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[47].mc_i_1 
       (.I0(abs_a[26]),
        .O(\CHAIN_GEN[26].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[48].mc_i_1 
       (.I0(abs_a[27]),
        .O(\CHAIN_GEN[27].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[49].mc_i_1 
       (.I0(abs_a[28]),
        .O(\CHAIN_GEN[28].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[50].mc_i_1 
       (.I0(abs_a[29]),
        .O(\CHAIN_GEN[29].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[51].mc_i_1 
       (.I0(abs_a[30]),
        .O(\CHAIN_GEN[30].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[52].mc_i_1 
       (.I0(abs_a[31]),
        .O(\CHAIN_GEN[31].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[53].mc_i_1 
       (.I0(abs_a[32]),
        .O(\CHAIN_GEN[32].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[54].mc_i_1 
       (.I0(abs_a[33]),
        .O(\CHAIN_GEN[33].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[55].mc_i_1 
       (.I0(abs_a[34]),
        .O(\CHAIN_GEN[34].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[56].mc_i_1 
       (.I0(abs_a[35]),
        .O(\CHAIN_GEN[35].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[57].mc_i_1 
       (.I0(abs_a[36]),
        .O(\CHAIN_GEN[36].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[58].mc_i_1 
       (.I0(abs_a[37]),
        .O(\CHAIN_GEN[37].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[59].mc_i_1 
       (.I0(abs_a[38]),
        .O(\CHAIN_GEN[38].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[60].mc_i_1 
       (.I0(abs_a[39]),
        .O(\CHAIN_GEN[39].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[61].mc_i_1 
       (.I0(abs_a[40]),
        .O(\CHAIN_GEN[40].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[62].mc_i_1 
       (.I0(abs_a[41]),
        .O(\CHAIN_GEN[41].Q_XOR.SUM_XOR_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ZERO_DET[63].mc_i_1 
       (.I0(abs_a[42]),
        .O(\CHAIN_GEN[42].Q_XOR.SUM_XOR_0 ));
  LUT4 #(
    .INIT(16'h00AE)) 
    \opt_has_pipe.first_q[0]_i_4__0 
       (.I0(abs_a[59]),
        .I1(abs_a[57]),
        .I2(abs_a[58]),
        .I3(abs_a[60]),
        .O(\opt_has_pipe.first_q[0]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h00AE)) 
    \opt_has_pipe.first_q[0]_i_5__0 
       (.I0(abs_a[43]),
        .I1(abs_a[41]),
        .I2(abs_a[42]),
        .I3(abs_a[44]),
        .O(\opt_has_pipe.first_q[0]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'h00AE)) 
    \opt_has_pipe.first_q[0]_i_6__0 
       (.I0(abs_a[27]),
        .I1(abs_a[25]),
        .I2(abs_a[26]),
        .I3(abs_a[28]),
        .O(\opt_has_pipe.first_q[0]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'h00AE)) 
    \opt_has_pipe.first_q[0]_i_7__0 
       (.I0(abs_a[11]),
        .I1(abs_a[9]),
        .I2(abs_a[10]),
        .I3(abs_a[12]),
        .O(\opt_has_pipe.first_q[0]_i_7__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[10]_i_1 
       (.I0(abs_a[2]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(abs_a[18]),
        .I3(CARRY_OUT),
        .I4(\opt_has_pipe.first_q[10]_i_2_n_0 ),
        .O(\s_axis_a_tdata[60] [9]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[10]_i_2 
       (.I0(abs_a[34]),
        .I1(CARRYS_OUT),
        .I2(abs_a[50]),
        .O(\opt_has_pipe.first_q[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[11]_i_1 
       (.I0(abs_a[1]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(abs_a[17]),
        .I3(CARRY_OUT),
        .I4(\opt_has_pipe.first_q[11]_i_2_n_0 ),
        .O(\s_axis_a_tdata[60] [10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[11]_i_2 
       (.I0(abs_a[33]),
        .I1(CARRYS_OUT),
        .I2(abs_a[49]),
        .O(\opt_has_pipe.first_q[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[12]_i_1 
       (.I0(abs_a[0]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(abs_a[16]),
        .I3(CARRY_OUT),
        .I4(\opt_has_pipe.first_q[12]_i_2_n_0 ),
        .O(\s_axis_a_tdata[60] [11]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[12]_i_2 
       (.I0(abs_a[32]),
        .I1(CARRYS_OUT),
        .I2(abs_a[48]),
        .O(\opt_has_pipe.first_q[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \opt_has_pipe.first_q[13]_i_1 
       (.I0(abs_a[15]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(CARRY_OUT),
        .I3(abs_a[31]),
        .I4(CARRYS_OUT),
        .I5(abs_a[47]),
        .O(\s_axis_a_tdata[60] [12]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \opt_has_pipe.first_q[14]_i_1 
       (.I0(abs_a[14]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(CARRY_OUT),
        .I3(abs_a[30]),
        .I4(CARRYS_OUT),
        .I5(abs_a[46]),
        .O(\s_axis_a_tdata[60] [13]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \opt_has_pipe.first_q[15]_i_1 
       (.I0(abs_a[13]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(CARRY_OUT),
        .I3(abs_a[29]),
        .I4(CARRYS_OUT),
        .I5(abs_a[45]),
        .O(\s_axis_a_tdata[60] [14]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \opt_has_pipe.first_q[16]_i_1 
       (.I0(abs_a[12]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(CARRY_OUT),
        .I3(abs_a[28]),
        .I4(CARRYS_OUT),
        .I5(abs_a[44]),
        .O(\s_axis_a_tdata[60] [15]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \opt_has_pipe.first_q[17]_i_1 
       (.I0(abs_a[11]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(CARRY_OUT),
        .I3(abs_a[27]),
        .I4(CARRYS_OUT),
        .I5(abs_a[43]),
        .O(\s_axis_a_tdata[60] [16]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \opt_has_pipe.first_q[18]_i_1 
       (.I0(abs_a[10]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(CARRY_OUT),
        .I3(abs_a[26]),
        .I4(CARRYS_OUT),
        .I5(abs_a[42]),
        .O(\s_axis_a_tdata[60] [17]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \opt_has_pipe.first_q[19]_i_1 
       (.I0(abs_a[9]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(CARRY_OUT),
        .I3(abs_a[25]),
        .I4(CARRYS_OUT),
        .I5(abs_a[41]),
        .O(\s_axis_a_tdata[60] [18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[1]_i_1__3 
       (.I0(abs_a[11]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(abs_a[27]),
        .I3(CARRY_OUT),
        .I4(\opt_has_pipe.first_q[1]_i_2__1_n_0 ),
        .O(\s_axis_a_tdata[60] [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[1]_i_2__1 
       (.I0(abs_a[43]),
        .I1(CARRYS_OUT),
        .I2(abs_a[59]),
        .O(\opt_has_pipe.first_q[1]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'h0054)) 
    \opt_has_pipe.first_q[1]_i_4 
       (.I0(abs_a[59]),
        .I1(abs_a[58]),
        .I2(abs_a[57]),
        .I3(abs_a[60]),
        .O(\opt_has_pipe.first_q[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0054)) 
    \opt_has_pipe.first_q[1]_i_5 
       (.I0(abs_a[43]),
        .I1(abs_a[42]),
        .I2(abs_a[41]),
        .I3(abs_a[44]),
        .O(\opt_has_pipe.first_q[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0054)) 
    \opt_has_pipe.first_q[1]_i_6 
       (.I0(abs_a[27]),
        .I1(abs_a[26]),
        .I2(abs_a[25]),
        .I3(abs_a[28]),
        .O(\opt_has_pipe.first_q[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0054)) 
    \opt_has_pipe.first_q[1]_i_7 
       (.I0(abs_a[11]),
        .I1(abs_a[10]),
        .I2(abs_a[9]),
        .I3(abs_a[12]),
        .O(\opt_has_pipe.first_q[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \opt_has_pipe.first_q[20]_i_1 
       (.I0(abs_a[8]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(CARRY_OUT),
        .I3(abs_a[24]),
        .I4(CARRYS_OUT),
        .I5(abs_a[40]),
        .O(\s_axis_a_tdata[60] [19]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \opt_has_pipe.first_q[21]_i_1 
       (.I0(abs_a[7]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(CARRY_OUT),
        .I3(abs_a[23]),
        .I4(CARRYS_OUT),
        .I5(abs_a[39]),
        .O(\s_axis_a_tdata[60] [20]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \opt_has_pipe.first_q[22]_i_1 
       (.I0(abs_a[6]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(CARRY_OUT),
        .I3(abs_a[22]),
        .I4(CARRYS_OUT),
        .I5(abs_a[38]),
        .O(\s_axis_a_tdata[60] [21]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \opt_has_pipe.first_q[23]_i_1 
       (.I0(abs_a[5]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(CARRY_OUT),
        .I3(abs_a[21]),
        .I4(CARRYS_OUT),
        .I5(abs_a[37]),
        .O(\s_axis_a_tdata[60] [22]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \opt_has_pipe.first_q[24]_i_1 
       (.I0(abs_a[4]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(CARRY_OUT),
        .I3(abs_a[20]),
        .I4(CARRYS_OUT),
        .I5(abs_a[36]),
        .O(\s_axis_a_tdata[60] [23]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \opt_has_pipe.first_q[25]_i_1 
       (.I0(abs_a[3]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(CARRY_OUT),
        .I3(abs_a[19]),
        .I4(CARRYS_OUT),
        .I5(abs_a[35]),
        .O(\s_axis_a_tdata[60] [24]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \opt_has_pipe.first_q[26]_i_1 
       (.I0(abs_a[2]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(CARRY_OUT),
        .I3(abs_a[18]),
        .I4(CARRYS_OUT),
        .I5(abs_a[34]),
        .O(\s_axis_a_tdata[60] [25]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \opt_has_pipe.first_q[27]_i_1 
       (.I0(abs_a[1]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(CARRY_OUT),
        .I3(abs_a[17]),
        .I4(CARRYS_OUT),
        .I5(abs_a[33]),
        .O(\s_axis_a_tdata[60] [26]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \opt_has_pipe.first_q[28]_i_1 
       (.I0(abs_a[0]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(CARRY_OUT),
        .I3(abs_a[16]),
        .I4(CARRYS_OUT),
        .I5(abs_a[32]),
        .O(\s_axis_a_tdata[60] [27]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[29]_i_1 
       (.I0(abs_a[15]),
        .I1(CARRYS_OUT),
        .I2(abs_a[31]),
        .O(\CHAIN_GEN[31].Q_XOR.SUM_XOR_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[2]_i_1__0 
       (.I0(abs_a[10]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(abs_a[26]),
        .I3(CARRY_OUT),
        .I4(\opt_has_pipe.first_q[2]_i_2__0_n_0 ),
        .O(\s_axis_a_tdata[60] [1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[2]_i_2__0 
       (.I0(abs_a[42]),
        .I1(CARRYS_OUT),
        .I2(abs_a[58]),
        .O(\opt_has_pipe.first_q[2]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h00AE)) 
    \opt_has_pipe.first_q[2]_i_4 
       (.I0(abs_a[55]),
        .I1(abs_a[53]),
        .I2(abs_a[54]),
        .I3(abs_a[56]),
        .O(\opt_has_pipe.first_q[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00AE)) 
    \opt_has_pipe.first_q[2]_i_5 
       (.I0(abs_a[39]),
        .I1(abs_a[37]),
        .I2(abs_a[38]),
        .I3(abs_a[40]),
        .O(\opt_has_pipe.first_q[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00AE)) 
    \opt_has_pipe.first_q[2]_i_6 
       (.I0(abs_a[23]),
        .I1(abs_a[21]),
        .I2(abs_a[22]),
        .I3(abs_a[24]),
        .O(\opt_has_pipe.first_q[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00AE)) 
    \opt_has_pipe.first_q[2]_i_7 
       (.I0(abs_a[7]),
        .I1(abs_a[5]),
        .I2(abs_a[6]),
        .I3(abs_a[8]),
        .O(\opt_has_pipe.first_q[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[30]_i_1 
       (.I0(abs_a[14]),
        .I1(CARRYS_OUT),
        .I2(abs_a[30]),
        .O(\CHAIN_GEN[30].Q_XOR.SUM_XOR_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[31]_i_1 
       (.I0(abs_a[13]),
        .I1(CARRYS_OUT),
        .I2(abs_a[29]),
        .O(\CHAIN_GEN[29].Q_XOR.SUM_XOR_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[32]_i_1 
       (.I0(abs_a[12]),
        .I1(CARRYS_OUT),
        .I2(abs_a[28]),
        .O(\CHAIN_GEN[28].Q_XOR.SUM_XOR_1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[33]_i_1 
       (.I0(abs_a[11]),
        .I1(CARRYS_OUT),
        .I2(abs_a[27]),
        .O(\CHAIN_GEN[27].Q_XOR.SUM_XOR_1 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[3]_i_1 
       (.I0(abs_a[9]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(abs_a[25]),
        .I3(CARRY_OUT),
        .I4(\opt_has_pipe.first_q[3]_i_2_n_0 ),
        .O(\s_axis_a_tdata[60] [2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[3]_i_2 
       (.I0(abs_a[41]),
        .I1(CARRYS_OUT),
        .I2(abs_a[57]),
        .O(\opt_has_pipe.first_q[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0054)) 
    \opt_has_pipe.first_q[3]_i_4 
       (.I0(abs_a[55]),
        .I1(abs_a[54]),
        .I2(abs_a[53]),
        .I3(abs_a[56]),
        .O(\opt_has_pipe.first_q[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0054)) 
    \opt_has_pipe.first_q[3]_i_5 
       (.I0(abs_a[39]),
        .I1(abs_a[38]),
        .I2(abs_a[37]),
        .I3(abs_a[40]),
        .O(\opt_has_pipe.first_q[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0054)) 
    \opt_has_pipe.first_q[3]_i_6 
       (.I0(abs_a[23]),
        .I1(abs_a[22]),
        .I2(abs_a[21]),
        .I3(abs_a[24]),
        .O(\opt_has_pipe.first_q[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0054)) 
    \opt_has_pipe.first_q[3]_i_7 
       (.I0(abs_a[7]),
        .I1(abs_a[6]),
        .I2(abs_a[5]),
        .I3(abs_a[8]),
        .O(\opt_has_pipe.first_q[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[4]_i_1 
       (.I0(abs_a[8]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(abs_a[24]),
        .I3(CARRY_OUT),
        .I4(\opt_has_pipe.first_q[4]_i_2_n_0 ),
        .O(\s_axis_a_tdata[60] [3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[4]_i_2 
       (.I0(abs_a[40]),
        .I1(CARRYS_OUT),
        .I2(abs_a[56]),
        .O(\opt_has_pipe.first_q[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00AE)) 
    \opt_has_pipe.first_q[4]_i_4 
       (.I0(abs_a[51]),
        .I1(abs_a[49]),
        .I2(abs_a[50]),
        .I3(abs_a[52]),
        .O(\opt_has_pipe.first_q[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00AE)) 
    \opt_has_pipe.first_q[4]_i_5 
       (.I0(abs_a[35]),
        .I1(abs_a[33]),
        .I2(abs_a[34]),
        .I3(abs_a[36]),
        .O(\opt_has_pipe.first_q[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00AE)) 
    \opt_has_pipe.first_q[4]_i_6 
       (.I0(abs_a[19]),
        .I1(abs_a[17]),
        .I2(abs_a[18]),
        .I3(abs_a[20]),
        .O(\opt_has_pipe.first_q[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00AE)) 
    \opt_has_pipe.first_q[4]_i_7 
       (.I0(abs_a[3]),
        .I1(abs_a[1]),
        .I2(abs_a[2]),
        .I3(abs_a[4]),
        .O(\opt_has_pipe.first_q[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[5]_i_1 
       (.I0(abs_a[7]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(abs_a[23]),
        .I3(CARRY_OUT),
        .I4(\opt_has_pipe.first_q[5]_i_2_n_0 ),
        .O(\s_axis_a_tdata[60] [4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[5]_i_2 
       (.I0(abs_a[39]),
        .I1(CARRYS_OUT),
        .I2(abs_a[55]),
        .O(\opt_has_pipe.first_q[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0054)) 
    \opt_has_pipe.first_q[5]_i_4 
       (.I0(abs_a[51]),
        .I1(abs_a[50]),
        .I2(abs_a[49]),
        .I3(abs_a[52]),
        .O(\opt_has_pipe.first_q[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0054)) 
    \opt_has_pipe.first_q[5]_i_5 
       (.I0(abs_a[35]),
        .I1(abs_a[34]),
        .I2(abs_a[33]),
        .I3(abs_a[36]),
        .O(\opt_has_pipe.first_q[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0054)) 
    \opt_has_pipe.first_q[5]_i_6 
       (.I0(abs_a[19]),
        .I1(abs_a[18]),
        .I2(abs_a[17]),
        .I3(abs_a[20]),
        .O(\opt_has_pipe.first_q[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0054)) 
    \opt_has_pipe.first_q[5]_i_7 
       (.I0(abs_a[3]),
        .I1(abs_a[2]),
        .I2(abs_a[1]),
        .I3(abs_a[4]),
        .O(\opt_has_pipe.first_q[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \opt_has_pipe.first_q[6]_i_1 
       (.I0(\opt_has_pipe.first_q[6]_i_2_n_0 ),
        .I1(CARRY_OUT),
        .I2(\opt_has_pipe.first_q[6]_i_3_n_0 ),
        .I3(CARRYS_OUT),
        .I4(\opt_has_pipe.first_q[6]_i_4_n_0 ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[6]_i_1__0 
       (.I0(abs_a[6]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(abs_a[22]),
        .I3(CARRY_OUT),
        .I4(\opt_has_pipe.first_q[6]_i_2__0_n_0 ),
        .O(\s_axis_a_tdata[60] [5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00005510)) 
    \opt_has_pipe.first_q[6]_i_2 
       (.I0(abs_a[16]),
        .I1(abs_a[14]),
        .I2(abs_a[13]),
        .I3(abs_a[15]),
        .I4(\opt_has_pipe.first_q_reg[28] ),
        .O(\opt_has_pipe.first_q[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[6]_i_2__0 
       (.I0(abs_a[38]),
        .I1(CARRYS_OUT),
        .I2(abs_a[54]),
        .O(\opt_has_pipe.first_q[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00AE)) 
    \opt_has_pipe.first_q[6]_i_3 
       (.I0(abs_a[31]),
        .I1(abs_a[29]),
        .I2(abs_a[30]),
        .I3(abs_a[32]),
        .O(\opt_has_pipe.first_q[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00AE)) 
    \opt_has_pipe.first_q[6]_i_4 
       (.I0(abs_a[47]),
        .I1(abs_a[45]),
        .I2(abs_a[46]),
        .I3(abs_a[48]),
        .O(\opt_has_pipe.first_q[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \opt_has_pipe.first_q[7]_i_1 
       (.I0(\opt_has_pipe.first_q[7]_i_2_n_0 ),
        .I1(CARRY_OUT),
        .I2(\opt_has_pipe.first_q[7]_i_3_n_0 ),
        .I3(CARRYS_OUT),
        .I4(\opt_has_pipe.first_q[7]_i_4_n_0 ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[7]_i_1__0 
       (.I0(abs_a[5]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(abs_a[21]),
        .I3(CARRY_OUT),
        .I4(\opt_has_pipe.first_q[7]_i_2__0_n_0 ),
        .O(\s_axis_a_tdata[60] [6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000054)) 
    \opt_has_pipe.first_q[7]_i_2 
       (.I0(abs_a[16]),
        .I1(abs_a[13]),
        .I2(abs_a[14]),
        .I3(abs_a[15]),
        .I4(\opt_has_pipe.first_q_reg[28] ),
        .O(\opt_has_pipe.first_q[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[7]_i_2__0 
       (.I0(abs_a[37]),
        .I1(CARRYS_OUT),
        .I2(abs_a[53]),
        .O(\opt_has_pipe.first_q[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0054)) 
    \opt_has_pipe.first_q[7]_i_3 
       (.I0(abs_a[31]),
        .I1(abs_a[30]),
        .I2(abs_a[29]),
        .I3(abs_a[32]),
        .O(\opt_has_pipe.first_q[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0054)) 
    \opt_has_pipe.first_q[7]_i_4 
       (.I0(abs_a[47]),
        .I1(abs_a[46]),
        .I2(abs_a[45]),
        .I3(abs_a[48]),
        .O(\opt_has_pipe.first_q[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[8]_i_1 
       (.I0(abs_a[4]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(abs_a[20]),
        .I3(CARRY_OUT),
        .I4(\opt_has_pipe.first_q[8]_i_2_n_0 ),
        .O(\s_axis_a_tdata[60] [7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[8]_i_2 
       (.I0(abs_a[36]),
        .I1(CARRYS_OUT),
        .I2(abs_a[52]),
        .O(\opt_has_pipe.first_q[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[9]_i_1 
       (.I0(abs_a[3]),
        .I1(\opt_has_pipe.first_q_reg[28] ),
        .I2(abs_a[19]),
        .I3(CARRY_OUT),
        .I4(\opt_has_pipe.first_q[9]_i_2_n_0 ),
        .O(\s_axis_a_tdata[60] [8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[9]_i_2 
       (.I0(abs_a[35]),
        .I1(CARRYS_OUT),
        .I2(abs_a[51]),
        .O(\opt_has_pipe.first_q[9]_i_2_n_0 ));
  MUXF8 \opt_has_pipe.first_q_reg[0]_i_1__0 
       (.I0(\opt_has_pipe.first_q_reg[0]_i_2__0_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[0]_i_3__0_n_0 ),
        .O(D[0]),
        .S(CARRY_OUT));
  MUXF7 \opt_has_pipe.first_q_reg[0]_i_2__0 
       (.I0(\opt_has_pipe.first_q[0]_i_4__0_n_0 ),
        .I1(\opt_has_pipe.first_q[0]_i_5__0_n_0 ),
        .O(\opt_has_pipe.first_q_reg[0]_i_2__0_n_0 ),
        .S(CARRYS_OUT));
  MUXF7 \opt_has_pipe.first_q_reg[0]_i_3__0 
       (.I0(\opt_has_pipe.first_q[0]_i_6__0_n_0 ),
        .I1(\opt_has_pipe.first_q[0]_i_7__0_n_0 ),
        .O(\opt_has_pipe.first_q_reg[0]_i_3__0_n_0 ),
        .S(\opt_has_pipe.first_q_reg[28] ));
  MUXF8 \opt_has_pipe.first_q_reg[1]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[1]_i_2_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[1]_i_3_n_0 ),
        .O(D[1]),
        .S(CARRY_OUT));
  MUXF7 \opt_has_pipe.first_q_reg[1]_i_2 
       (.I0(\opt_has_pipe.first_q[1]_i_4_n_0 ),
        .I1(\opt_has_pipe.first_q[1]_i_5_n_0 ),
        .O(\opt_has_pipe.first_q_reg[1]_i_2_n_0 ),
        .S(CARRYS_OUT));
  MUXF7 \opt_has_pipe.first_q_reg[1]_i_3 
       (.I0(\opt_has_pipe.first_q[1]_i_6_n_0 ),
        .I1(\opt_has_pipe.first_q[1]_i_7_n_0 ),
        .O(\opt_has_pipe.first_q_reg[1]_i_3_n_0 ),
        .S(\opt_has_pipe.first_q_reg[28] ));
  MUXF8 \opt_has_pipe.first_q_reg[2]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[2]_i_2_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[2]_i_3_n_0 ),
        .O(D[2]),
        .S(CARRY_OUT));
  MUXF7 \opt_has_pipe.first_q_reg[2]_i_2 
       (.I0(\opt_has_pipe.first_q[2]_i_4_n_0 ),
        .I1(\opt_has_pipe.first_q[2]_i_5_n_0 ),
        .O(\opt_has_pipe.first_q_reg[2]_i_2_n_0 ),
        .S(CARRYS_OUT));
  MUXF7 \opt_has_pipe.first_q_reg[2]_i_3 
       (.I0(\opt_has_pipe.first_q[2]_i_6_n_0 ),
        .I1(\opt_has_pipe.first_q[2]_i_7_n_0 ),
        .O(\opt_has_pipe.first_q_reg[2]_i_3_n_0 ),
        .S(\opt_has_pipe.first_q_reg[28] ));
  MUXF8 \opt_has_pipe.first_q_reg[3]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[3]_i_2_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[3]_i_3_n_0 ),
        .O(D[3]),
        .S(CARRY_OUT));
  MUXF7 \opt_has_pipe.first_q_reg[3]_i_2 
       (.I0(\opt_has_pipe.first_q[3]_i_4_n_0 ),
        .I1(\opt_has_pipe.first_q[3]_i_5_n_0 ),
        .O(\opt_has_pipe.first_q_reg[3]_i_2_n_0 ),
        .S(CARRYS_OUT));
  MUXF7 \opt_has_pipe.first_q_reg[3]_i_3 
       (.I0(\opt_has_pipe.first_q[3]_i_6_n_0 ),
        .I1(\opt_has_pipe.first_q[3]_i_7_n_0 ),
        .O(\opt_has_pipe.first_q_reg[3]_i_3_n_0 ),
        .S(\opt_has_pipe.first_q_reg[28] ));
  MUXF8 \opt_has_pipe.first_q_reg[4]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[4]_i_2_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[4]_i_3_n_0 ),
        .O(D[4]),
        .S(CARRY_OUT));
  MUXF7 \opt_has_pipe.first_q_reg[4]_i_2 
       (.I0(\opt_has_pipe.first_q[4]_i_4_n_0 ),
        .I1(\opt_has_pipe.first_q[4]_i_5_n_0 ),
        .O(\opt_has_pipe.first_q_reg[4]_i_2_n_0 ),
        .S(CARRYS_OUT));
  MUXF7 \opt_has_pipe.first_q_reg[4]_i_3 
       (.I0(\opt_has_pipe.first_q[4]_i_6_n_0 ),
        .I1(\opt_has_pipe.first_q[4]_i_7_n_0 ),
        .O(\opt_has_pipe.first_q_reg[4]_i_3_n_0 ),
        .S(\opt_has_pipe.first_q_reg[28] ));
  MUXF8 \opt_has_pipe.first_q_reg[5]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[5]_i_2_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[5]_i_3_n_0 ),
        .O(D[5]),
        .S(CARRY_OUT));
  MUXF7 \opt_has_pipe.first_q_reg[5]_i_2 
       (.I0(\opt_has_pipe.first_q[5]_i_4_n_0 ),
        .I1(\opt_has_pipe.first_q[5]_i_5_n_0 ),
        .O(\opt_has_pipe.first_q_reg[5]_i_2_n_0 ),
        .S(CARRYS_OUT));
  MUXF7 \opt_has_pipe.first_q_reg[5]_i_3 
       (.I0(\opt_has_pipe.first_q[5]_i_6_n_0 ),
        .I1(\opt_has_pipe.first_q[5]_i_7_n_0 ),
        .O(\opt_has_pipe.first_q_reg[5]_i_3_n_0 ),
        .S(\opt_has_pipe.first_q_reg[28] ));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fix_to_float_carry_chain__parameterized0
   (D,
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ,
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_1 ,
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_0 ,
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_0 ,
    CARRYS_OUT,
    chunk_is_zero);
  output [1:0]D;
  output [0:0]\CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ;
  output \CHAIN_GEN[2].C_MUX.CARRY_MUX_1 ;
  output \CHAIN_GEN[1].C_MUX.CARRY_MUX_0 ;
  output \CHAIN_GEN[0].C_MUX.CARRY_MUX_0 ;
  input [0:0]CARRYS_OUT;
  input [7:0]chunk_is_zero;

  wire [0:0]CARRYS_OUT;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_0 ;
  wire [0:0]\CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ;
  wire \CHAIN_GEN[2].C_MUX.CARRY_MUX_1 ;
  wire [1:0]D;
  wire [6:0]c_int;
  wire [7:0]chunk_is_zero;
  wire [3:0]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(1'b0),
        .CO({\CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ,c_int[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S(chunk_is_zero[3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ),
        .CO({D[0],c_int[6:4]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S(chunk_is_zero[7:4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[0]_i_2__0 
       (.I0(c_int[4]),
        .I1(\CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ),
        .I2(c_int[0]),
        .O(\CHAIN_GEN[0].C_MUX.CARRY_MUX_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[1]_i_1__0 
       (.I0(CARRYS_OUT),
        .I1(D[0]),
        .I2(\CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[1]_i_2__0 
       (.I0(c_int[5]),
        .I1(\CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ),
        .I2(c_int[1]),
        .O(\CHAIN_GEN[1].C_MUX.CARRY_MUX_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[2]_i_2 
       (.I0(c_int[6]),
        .I1(\CHAIN_GEN[2].C_MUX.CARRY_MUX_0 ),
        .I2(c_int[2]),
        .O(\CHAIN_GEN[2].C_MUX.CARRY_MUX_1 ));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fix_to_float_carry_chain__parameterized0_3
   (\CHAIN_GEN[7].C_MUX.CARRY_MUX_0 ,
    CARRYS_OUT,
    \opt_has_pipe.first_q[2]_i_2 ,
    D,
    \opt_has_pipe.first_q_reg[2] ,
    \opt_has_pipe.first_q_reg[1] ,
    \opt_has_pipe.first_q_reg[0] ,
    A);
  output \CHAIN_GEN[7].C_MUX.CARRY_MUX_0 ;
  output [1:0]CARRYS_OUT;
  output [2:0]\opt_has_pipe.first_q[2]_i_2 ;
  input [0:0]D;
  input \opt_has_pipe.first_q_reg[2] ;
  input \opt_has_pipe.first_q_reg[1] ;
  input \opt_has_pipe.first_q_reg[0] ;
  input [7:0]A;

  wire [7:0]A;
  wire [1:0]CARRYS_OUT;
  wire \CHAIN_GEN[7].C_MUX.CARRY_MUX_0 ;
  wire [0:0]D;
  wire [2:0]\opt_has_pipe.first_q[2]_i_2 ;
  wire \opt_has_pipe.first_q_reg[0] ;
  wire \opt_has_pipe.first_q_reg[1] ;
  wire \opt_has_pipe.first_q_reg[2] ;
  wire [6:0]p_0_out;
  wire [3:0]\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4 
       (.CI(1'b0),
        .CO({CARRYS_OUT[0],p_0_out[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S(A[3:0]));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4 
       (.CI(CARRYS_OUT[0]),
        .CO({CARRYS_OUT[1],p_0_out[6:4]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [3:0]),
        .S(A[7:4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[0]_i_1__0 
       (.I0(p_0_out[4]),
        .I1(CARRYS_OUT[0]),
        .I2(p_0_out[0]),
        .I3(D),
        .I4(\opt_has_pipe.first_q_reg[0] ),
        .O(\opt_has_pipe.first_q[2]_i_2 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \opt_has_pipe.first_q[0]_i_1__2 
       (.I0(CARRYS_OUT[1]),
        .I1(D),
        .O(\CHAIN_GEN[7].C_MUX.CARRY_MUX_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[1]_i_1__2 
       (.I0(p_0_out[5]),
        .I1(CARRYS_OUT[0]),
        .I2(p_0_out[1]),
        .I3(D),
        .I4(\opt_has_pipe.first_q_reg[1] ),
        .O(\opt_has_pipe.first_q[2]_i_2 [1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[2]_i_1 
       (.I0(p_0_out[6]),
        .I1(CARRYS_OUT[0]),
        .I2(p_0_out[2]),
        .I3(D),
        .I4(\opt_has_pipe.first_q_reg[2] ),
        .O(\opt_has_pipe.first_q[2]_i_2 [2]));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fix_to_float_carry_chain__parameterized1
   (ROUND_CARRY,
    A,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3);
  output ROUND_CARRY;
  input [1:0]A;
  output lopt;
  input lopt_1;
  input lopt_2;
  output lopt_3;

  wire [1:0]A;
  wire \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ;
  wire \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ;
  wire ROUND_CARRY;
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
        .CO({\^lopt_1 ,ROUND_CARRY,\CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b1),
        .DI({\^lopt_2 ,1'b1,1'b0,1'b0}),
        .O({lopt_4,\NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED [2:0]}),
        .S({\^lopt_3 ,A[1],1'b0,A[0]}));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fix_to_float_carry_chain__parameterized2
   (round_mant,
    CARRY_OUT,
    Q,
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
  input [7:0]Q;
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
  wire [7:0]Q;
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
        .S({Q[3],Q[4],Q[5],Q[6]}));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ),
        .CO({\^lopt_2 ,CARRY_OUT,\CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({\^lopt_3 ,1'b0,1'b0,1'b0}),
        .O({\^lopt_5 ,round_mant[7:5]}),
        .S({\^lopt_4 ,Q[0],Q[1],Q[2]}));
  GND GND
       (.G(\<const0> ));
endmodule

(* ORIG_REF_NAME = "carry_chain" *) 
module fix_to_float_carry_chain__parameterized3
   (\opt_has_pipe.first_q_reg[1] ,
    Q,
    CARRY_IN,
    lopt,
    lopt_1,
    lopt_2);
  output [8:0]\opt_has_pipe.first_q_reg[1] ;
  input [7:0]Q;
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
  wire [7:0]Q;
  wire [8:0]\opt_has_pipe.first_q_reg[1] ;
  wire [3:3]\NLW_CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED ;

  assign \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0  = lopt;
  assign lopt_1 = \<const0> ;
  assign \opt_has_pipe.first_q_reg[1] [0] = lopt_2;
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0 ),
        .CO({\CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\opt_has_pipe.first_q_reg[1] [4:1]),
        .S({Q[3],Q[4],Q[5],Q[6]}));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4 
       (.CI(\CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0 ),
        .CO({\NLW_CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED [3],\CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0 ,\CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0 }),
        .CYINIT(1'b0),
        .DI({\NLW_CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O(\opt_has_pipe.first_q_reg[1] [8:5]),
        .S({1'b1,Q[0],Q[1],Q[2]}));
  GND GND
       (.G(\<const0> ));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fix_to_float_delay__parameterized10
   (\z_det_up[2]_1 ,
    \opt_has_pipe.first_q_reg[0] ,
    \opt_has_pipe.first_q_reg[0]_i_3 ,
    c_int_16,
    CARRYS_OUT,
    c_int_32,
    \opt_has_pipe.first_q_reg[15] ,
    c_int_48,
    \ZERO_DET[63].mc__0 ,
    c_int_15,
    c_int_31,
    c_int_47,
    c_int_63,
    c_int_14,
    c_int_30,
    c_int_46,
    c_int_62,
    c_int_13,
    c_int_29,
    c_int_45,
    c_int_61,
    c_int_12,
    c_int_28,
    c_int_44,
    c_int_60,
    c_int_11,
    c_int_27,
    c_int_43,
    c_int_59,
    c_int_10,
    c_int_26,
    c_int_42,
    c_int_58,
    c_int_9,
    c_int_25,
    c_int_41,
    c_int_57,
    c_int_8,
    c_int_24,
    c_int_40,
    c_int_56,
    c_int_7,
    c_int_23,
    c_int_39,
    c_int_55,
    c_int_6,
    c_int_22,
    c_int_38,
    c_int_54,
    c_int_5,
    c_int_21,
    c_int_37,
    c_int_53,
    c_int_4,
    c_int_20,
    c_int_36,
    c_int_52,
    c_int_3,
    c_int_19,
    c_int_35,
    c_int_51,
    c_int_2,
    c_int_18,
    c_int_34,
    c_int_50,
    c_int_1,
    c_int_17,
    c_int_33,
    c_int_49,
    aclk);
  output [0:0]\z_det_up[2]_1 ;
  input [2:0]\opt_has_pipe.first_q_reg[0] ;
  input [7:0]\opt_has_pipe.first_q_reg[0]_i_3 ;
  input c_int_16;
  input [0:0]CARRYS_OUT;
  input c_int_32;
  input [1:0]\opt_has_pipe.first_q_reg[15] ;
  input c_int_48;
  input \ZERO_DET[63].mc__0 ;
  input c_int_15;
  input c_int_31;
  input c_int_47;
  input c_int_63;
  input c_int_14;
  input c_int_30;
  input c_int_46;
  input c_int_62;
  input c_int_13;
  input c_int_29;
  input c_int_45;
  input c_int_61;
  input c_int_12;
  input c_int_28;
  input c_int_44;
  input c_int_60;
  input c_int_11;
  input c_int_27;
  input c_int_43;
  input c_int_59;
  input c_int_10;
  input c_int_26;
  input c_int_42;
  input c_int_58;
  input c_int_9;
  input c_int_25;
  input c_int_41;
  input c_int_57;
  input c_int_8;
  input c_int_24;
  input c_int_40;
  input c_int_56;
  input c_int_7;
  input c_int_23;
  input c_int_39;
  input c_int_55;
  input c_int_6;
  input c_int_22;
  input c_int_38;
  input c_int_54;
  input c_int_5;
  input c_int_21;
  input c_int_37;
  input c_int_53;
  input c_int_4;
  input c_int_20;
  input c_int_36;
  input c_int_52;
  input c_int_3;
  input c_int_19;
  input c_int_35;
  input c_int_51;
  input c_int_2;
  input c_int_18;
  input c_int_34;
  input c_int_50;
  input c_int_1;
  input c_int_17;
  input c_int_33;
  input c_int_49;
  input aclk;

  wire [0:0]CARRYS_OUT;
  wire \ZERO_DET[63].mc__0 ;
  wire aclk;
  wire c_int_1;
  wire c_int_10;
  wire c_int_11;
  wire c_int_12;
  wire c_int_13;
  wire c_int_14;
  wire c_int_15;
  wire c_int_16;
  wire c_int_17;
  wire c_int_18;
  wire c_int_19;
  wire c_int_2;
  wire c_int_20;
  wire c_int_21;
  wire c_int_22;
  wire c_int_23;
  wire c_int_24;
  wire c_int_25;
  wire c_int_26;
  wire c_int_27;
  wire c_int_28;
  wire c_int_29;
  wire c_int_3;
  wire c_int_30;
  wire c_int_31;
  wire c_int_32;
  wire c_int_33;
  wire c_int_34;
  wire c_int_35;
  wire c_int_36;
  wire c_int_37;
  wire c_int_38;
  wire c_int_39;
  wire c_int_4;
  wire c_int_40;
  wire c_int_41;
  wire c_int_42;
  wire c_int_43;
  wire c_int_44;
  wire c_int_45;
  wire c_int_46;
  wire c_int_47;
  wire c_int_48;
  wire c_int_49;
  wire c_int_5;
  wire c_int_50;
  wire c_int_51;
  wire c_int_52;
  wire c_int_53;
  wire c_int_54;
  wire c_int_55;
  wire c_int_56;
  wire c_int_57;
  wire c_int_58;
  wire c_int_59;
  wire c_int_6;
  wire c_int_60;
  wire c_int_61;
  wire c_int_62;
  wire c_int_63;
  wire c_int_7;
  wire c_int_8;
  wire c_int_9;
  wire [2:0]\opt_has_pipe.first_q_reg[0] ;
  wire [7:0]\opt_has_pipe.first_q_reg[0]_i_3 ;
  wire [1:0]\opt_has_pipe.first_q_reg[15] ;
  wire [0:0]\z_det_up[2]_1 ;

  fix_to_float_xbip_pipe_v3_0_5_viv__parameterized21 i_pipe
       (.CARRYS_OUT(CARRYS_OUT),
        .\ZERO_DET[63].mc__0 (\ZERO_DET[63].mc__0 ),
        .aclk(aclk),
        .c_int_1(c_int_1),
        .c_int_10(c_int_10),
        .c_int_11(c_int_11),
        .c_int_12(c_int_12),
        .c_int_13(c_int_13),
        .c_int_14(c_int_14),
        .c_int_15(c_int_15),
        .c_int_16(c_int_16),
        .c_int_17(c_int_17),
        .c_int_18(c_int_18),
        .c_int_19(c_int_19),
        .c_int_2(c_int_2),
        .c_int_20(c_int_20),
        .c_int_21(c_int_21),
        .c_int_22(c_int_22),
        .c_int_23(c_int_23),
        .c_int_24(c_int_24),
        .c_int_25(c_int_25),
        .c_int_26(c_int_26),
        .c_int_27(c_int_27),
        .c_int_28(c_int_28),
        .c_int_29(c_int_29),
        .c_int_3(c_int_3),
        .c_int_30(c_int_30),
        .c_int_31(c_int_31),
        .c_int_32(c_int_32),
        .c_int_33(c_int_33),
        .c_int_34(c_int_34),
        .c_int_35(c_int_35),
        .c_int_36(c_int_36),
        .c_int_37(c_int_37),
        .c_int_38(c_int_38),
        .c_int_39(c_int_39),
        .c_int_4(c_int_4),
        .c_int_40(c_int_40),
        .c_int_41(c_int_41),
        .c_int_42(c_int_42),
        .c_int_43(c_int_43),
        .c_int_44(c_int_44),
        .c_int_45(c_int_45),
        .c_int_46(c_int_46),
        .c_int_47(c_int_47),
        .c_int_48(c_int_48),
        .c_int_49(c_int_49),
        .c_int_5(c_int_5),
        .c_int_50(c_int_50),
        .c_int_51(c_int_51),
        .c_int_52(c_int_52),
        .c_int_53(c_int_53),
        .c_int_54(c_int_54),
        .c_int_55(c_int_55),
        .c_int_56(c_int_56),
        .c_int_57(c_int_57),
        .c_int_58(c_int_58),
        .c_int_59(c_int_59),
        .c_int_6(c_int_6),
        .c_int_60(c_int_60),
        .c_int_61(c_int_61),
        .c_int_62(c_int_62),
        .c_int_63(c_int_63),
        .c_int_7(c_int_7),
        .c_int_8(c_int_8),
        .c_int_9(c_int_9),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[0]_i_3_0 (\opt_has_pipe.first_q_reg[0]_i_3 ),
        .\opt_has_pipe.first_q_reg[15]_0 (\opt_has_pipe.first_q_reg[15] ),
        .\z_det_up[2]_1 (\z_det_up[2]_1 ));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fix_to_float_delay__parameterized13
   (out,
    \z_det_up[2]_1 ,
    aclk);
  output out;
  input [0:0]\z_det_up[2]_1 ;
  input aclk;

  wire aclk;
  wire out;
  wire [0:0]\z_det_up[2]_1 ;

  fix_to_float_xbip_pipe_v3_0_5_viv__parameterized27 i_pipe
       (.aclk(aclk),
        .out(out),
        .\z_det_up[2]_1 (\z_det_up[2]_1 ));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fix_to_float_delay__parameterized14
   (D,
    \opt_has_pipe.first_q_reg[18] ,
    out,
    \opt_has_pipe.first_q_reg[28] ,
    aclk,
    \opt_has_pipe.first_q_reg[33] ,
    \opt_has_pipe.first_q_reg[33]_0 ,
    \opt_has_pipe.first_q_reg[32] ,
    \opt_has_pipe.first_q_reg[31] ,
    \opt_has_pipe.first_q_reg[30] ,
    \opt_has_pipe.first_q_reg[29] );
  output [17:0]D;
  input [2:0]\opt_has_pipe.first_q_reg[18] ;
  input [7:0]out;
  input [27:0]\opt_has_pipe.first_q_reg[28] ;
  input aclk;
  input [0:0]\opt_has_pipe.first_q_reg[33] ;
  input \opt_has_pipe.first_q_reg[33]_0 ;
  input \opt_has_pipe.first_q_reg[32] ;
  input \opt_has_pipe.first_q_reg[31] ;
  input \opt_has_pipe.first_q_reg[30] ;
  input \opt_has_pipe.first_q_reg[29] ;

  wire [17:0]D;
  wire aclk;
  wire [2:0]\opt_has_pipe.first_q_reg[18] ;
  wire [27:0]\opt_has_pipe.first_q_reg[28] ;
  wire \opt_has_pipe.first_q_reg[29] ;
  wire \opt_has_pipe.first_q_reg[30] ;
  wire \opt_has_pipe.first_q_reg[31] ;
  wire \opt_has_pipe.first_q_reg[32] ;
  wire [0:0]\opt_has_pipe.first_q_reg[33] ;
  wire \opt_has_pipe.first_q_reg[33]_0 ;
  wire [7:0]out;

  fix_to_float_xbip_pipe_v3_0_5_viv__parameterized29_1 i_pipe
       (.D(D),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[18]_0 (\opt_has_pipe.first_q_reg[18] ),
        .\opt_has_pipe.first_q_reg[28]_0 (\opt_has_pipe.first_q_reg[28] ),
        .\opt_has_pipe.first_q_reg[29]_0 (\opt_has_pipe.first_q_reg[29] ),
        .\opt_has_pipe.first_q_reg[30]_0 (\opt_has_pipe.first_q_reg[30] ),
        .\opt_has_pipe.first_q_reg[31]_0 (\opt_has_pipe.first_q_reg[31] ),
        .\opt_has_pipe.first_q_reg[32]_0 (\opt_has_pipe.first_q_reg[32] ),
        .\opt_has_pipe.first_q_reg[33]_0 (\opt_has_pipe.first_q_reg[33] ),
        .\opt_has_pipe.first_q_reg[33]_1 (\opt_has_pipe.first_q_reg[33]_0 ),
        .out(out));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fix_to_float_delay__parameterized14_0
   (Q,
    D,
    aclk);
  output [17:0]Q;
  input [17:0]D;
  input aclk;

  wire [17:0]D;
  wire [17:0]Q;
  wire aclk;

  fix_to_float_xbip_pipe_v3_0_5_viv__parameterized29 i_pipe
       (.D(D),
        .Q(Q),
        .aclk(aclk));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fix_to_float_delay__parameterized2
   (D,
    \opt_has_pipe.first_q_reg[0] ,
    aclk);
  output D;
  input \opt_has_pipe.first_q_reg[0] ;
  input aclk;

  wire D;
  wire aclk;
  wire \opt_has_pipe.first_q_reg[0] ;

  fix_to_float_xbip_pipe_v3_0_5_viv__parameterized5 i_pipe
       (.D(D),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0] ));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fix_to_float_delay__parameterized24
   (\s_axis_a_tdata[60] ,
    s_axis_a_tdata,
    aclk);
  output \s_axis_a_tdata[60] ;
  input [0:0]s_axis_a_tdata;
  input aclk;

  wire aclk;
  wire [0:0]s_axis_a_tdata;
  wire \s_axis_a_tdata[60] ;

  fix_to_float_xbip_pipe_v3_0_5_viv__parameterized47 i_pipe
       (.aclk(aclk),
        .s_axis_a_tdata(s_axis_a_tdata),
        .\s_axis_a_tdata[60] (\s_axis_a_tdata[60] ));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fix_to_float_delay__parameterized25
   (op_state,
    D,
    aclk);
  output [0:0]op_state;
  input D;
  input aclk;

  wire D;
  wire aclk;
  wire [0:0]op_state;

  fix_to_float_xbip_pipe_v3_0_5_viv__parameterized5_5 i_pipe
       (.D(D),
        .aclk(aclk),
        .op_state(op_state));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fix_to_float_delay__parameterized3
   (out,
    D,
    \opt_has_pipe.first_q_reg[0] ,
    \opt_has_pipe.first_q_reg[7] ,
    aclk);
  output [7:0]out;
  output [1:0]D;
  input [2:0]\opt_has_pipe.first_q_reg[0] ;
  input [7:0]\opt_has_pipe.first_q_reg[7] ;
  input aclk;

  wire [1:0]D;
  wire aclk;
  wire [2:0]\opt_has_pipe.first_q_reg[0] ;
  wire [7:0]\opt_has_pipe.first_q_reg[7] ;
  wire [7:0]out;

  fix_to_float_xbip_pipe_v3_0_5_viv__parameterized7 i_pipe
       (.D(D),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[7]_0 (\opt_has_pipe.first_q_reg[7] ),
        .out(out));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fix_to_float_delay__parameterized4
   (\opt_has_pipe.first_q_reg[2] ,
    D,
    \opt_has_pipe.first_q_reg[2]_0 ,
    aclk,
    CARRYS_OUT,
    \opt_has_pipe.first_q_reg[3] );
  output [2:0]\opt_has_pipe.first_q_reg[2] ;
  output [0:0]D;
  input [2:0]\opt_has_pipe.first_q_reg[2]_0 ;
  input aclk;
  input [1:0]CARRYS_OUT;
  input [0:0]\opt_has_pipe.first_q_reg[3] ;

  wire [1:0]CARRYS_OUT;
  wire [0:0]D;
  wire aclk;
  wire [2:0]\opt_has_pipe.first_q_reg[2] ;
  wire [2:0]\opt_has_pipe.first_q_reg[2]_0 ;
  wire [0:0]\opt_has_pipe.first_q_reg[3] ;

  fix_to_float_xbip_pipe_v3_0_5_viv__parameterized9 i_pipe
       (.CARRYS_OUT(CARRYS_OUT),
        .D(D),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[2]_0 (\opt_has_pipe.first_q_reg[2] ),
        .\opt_has_pipe.first_q_reg[2]_1 (\opt_has_pipe.first_q_reg[2]_0 ),
        .\opt_has_pipe.first_q_reg[3]_0 (\opt_has_pipe.first_q_reg[3] ));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fix_to_float_delay__parameterized5
   (EXP,
    Q,
    \opt_has_pipe.i_pipe[2].pipe_reg[2][1] ,
    op_state,
    \RESULT_REG.NORMAL.exp_op_reg[6] ,
    \RESULT_REG.NORMAL.exp_op_reg[6]_0 ,
    D,
    aclk);
  output [0:0]EXP;
  output [0:0]Q;
  output \opt_has_pipe.i_pipe[2].pipe_reg[2][1] ;
  input [0:0]op_state;
  input [0:0]\RESULT_REG.NORMAL.exp_op_reg[6] ;
  input \RESULT_REG.NORMAL.exp_op_reg[6]_0 ;
  input [1:0]D;
  input aclk;

  wire [1:0]D;
  wire [0:0]EXP;
  wire [0:0]Q;
  wire [0:0]\RESULT_REG.NORMAL.exp_op_reg[6] ;
  wire \RESULT_REG.NORMAL.exp_op_reg[6]_0 ;
  wire aclk;
  wire [0:0]op_state;
  wire \opt_has_pipe.i_pipe[2].pipe_reg[2][1] ;

  fix_to_float_xbip_pipe_v3_0_5_viv__parameterized11 i_pipe
       (.D(D),
        .EXP(EXP),
        .Q(Q),
        .\RESULT_REG.NORMAL.exp_op_reg[6] (\RESULT_REG.NORMAL.exp_op_reg[6] ),
        .\RESULT_REG.NORMAL.exp_op_reg[6]_0 (\RESULT_REG.NORMAL.exp_op_reg[6]_0 ),
        .aclk(aclk),
        .op_state(op_state),
        .\opt_has_pipe.i_pipe[2].pipe_reg[2][1]_0 (\opt_has_pipe.i_pipe[2].pipe_reg[2][1] ));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fix_to_float_delay__parameterized8
   (EXP,
    Q,
    \RESULT_REG.NORMAL.exp_op_reg[4] ,
    op_state,
    \RESULT_REG.NORMAL.exp_op_reg[4]_0 ,
    D,
    aclk);
  output [0:0]EXP;
  output [1:0]Q;
  input \RESULT_REG.NORMAL.exp_op_reg[4] ;
  input [0:0]op_state;
  input [0:0]\RESULT_REG.NORMAL.exp_op_reg[4]_0 ;
  input [1:0]D;
  input aclk;

  wire [1:0]D;
  wire [0:0]EXP;
  wire [1:0]Q;
  wire \RESULT_REG.NORMAL.exp_op_reg[4] ;
  wire [0:0]\RESULT_REG.NORMAL.exp_op_reg[4]_0 ;
  wire aclk;
  wire [0:0]op_state;

  fix_to_float_xbip_pipe_v3_0_5_viv__parameterized17_4 i_pipe
       (.D(D),
        .EXP(EXP),
        .Q(Q),
        .\RESULT_REG.NORMAL.exp_op_reg[4] (\RESULT_REG.NORMAL.exp_op_reg[4] ),
        .\RESULT_REG.NORMAL.exp_op_reg[4]_0 (\RESULT_REG.NORMAL.exp_op_reg[4]_0 ),
        .aclk(aclk),
        .op_state(op_state));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module fix_to_float_delay__parameterized8_2
   (EXP,
    \opt_has_pipe.first_q_reg[0] ,
    Q,
    op_state,
    \RESULT_REG.NORMAL.exp_op_reg[3] ,
    D,
    aclk);
  output [3:0]EXP;
  output \opt_has_pipe.first_q_reg[0] ;
  input [0:0]Q;
  input [0:0]op_state;
  input [1:0]\RESULT_REG.NORMAL.exp_op_reg[3] ;
  input [1:0]D;
  input aclk;

  wire [1:0]D;
  wire [3:0]EXP;
  wire [0:0]Q;
  wire [1:0]\RESULT_REG.NORMAL.exp_op_reg[3] ;
  wire aclk;
  wire [0:0]op_state;
  wire \opt_has_pipe.first_q_reg[0] ;

  fix_to_float_xbip_pipe_v3_0_5_viv__parameterized17 i_pipe
       (.D(D),
        .EXP(EXP),
        .Q(Q),
        .\RESULT_REG.NORMAL.exp_op_reg[3] (\RESULT_REG.NORMAL.exp_op_reg[3] ),
        .aclk(aclk),
        .op_state(op_state),
        .\opt_has_pipe.first_q_reg[0]_0 (\opt_has_pipe.first_q_reg[0] ));
endmodule

(* ORIG_REF_NAME = "fix_to_flt_conv" *) 
module fix_to_float_fix_to_flt_conv
   (m_axis_result_tdata,
    aclk,
    s_axis_a_tdata);
  output [23:0]m_axis_result_tdata;
  input aclk;
  input [60:0]s_axis_a_tdata;

  wire D;
  wire [5:0]EXP__0;
  wire EXP_n_1;
  wire \FIXED_DATA_SIGNED.M_ABS_n_0 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_1 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_10 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_11 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_12 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_13 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_14 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_15 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_16 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_17 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_18 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_19 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_2 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_20 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_21 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_22 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_23 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_24 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_25 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_26 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_27 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_28 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_29 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_3 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_30 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_31 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_32 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_33 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_34 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_35 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_36 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_37 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_38 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_39 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_4 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_40 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_41 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_5 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_58 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_59 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_6 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_60 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_61 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_62 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_63 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_64 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_65 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_66 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_67 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_68 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_69 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_7 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_70 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_8 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_9 ;
  wire \FIXED_DATA_SIGNED.M_ABS_n_99 ;
  wire LZE_n_21;
  wire aclk;
  wire [3:3]c_int;
  wire [15:0]chunk_is_zero;
  wire [23:0]m_axis_result_tdata;
  wire [7:1]mant_shifted_rnd1;
  wire [5:3]norm_dist_skew;
  wire [3:3]op_state;
  wire [3:3]p_0_out;
  wire [8:8]p_0_out_0;
  wire [2:0]p_5_out;
  wire [7:0]p_6_out;
  wire [2:0]part_norm_mant;
  wire [15:0]round_mant;
  wire [60:0]s_axis_a_tdata;
  wire [28:1]shifted_temp;
  wire [7:0]sum_rnd2;
  wire [59:0]xor_a;
  wire zeros;

  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[0]),
        .O(xor_a[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[10]),
        .O(xor_a[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[11]),
        .O(xor_a[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[12]),
        .O(xor_a[12]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[13]),
        .O(xor_a[13]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[14]),
        .O(xor_a[14]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[15]),
        .O(xor_a[15]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[16].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[16]),
        .O(xor_a[16]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[17]),
        .O(xor_a[17]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[18]),
        .O(xor_a[18]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[19]),
        .O(xor_a[19]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[1]),
        .O(xor_a[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[20].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[20]),
        .O(xor_a[20]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[21]),
        .O(xor_a[21]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[22]),
        .O(xor_a[22]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[23].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[23]),
        .O(xor_a[23]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[24].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[24]),
        .O(xor_a[24]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[25].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[25]),
        .O(xor_a[25]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[26].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[26]),
        .O(xor_a[26]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[27].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[27]),
        .O(xor_a[27]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[28].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[28]),
        .O(xor_a[28]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[29].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[29]),
        .O(xor_a[29]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[2]),
        .O(xor_a[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[30].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[30]),
        .O(xor_a[30]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[31].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[31]),
        .O(xor_a[31]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[32].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[32]),
        .O(xor_a[32]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[33].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[33]),
        .O(xor_a[33]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[34].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[34]),
        .O(xor_a[34]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[35].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[35]),
        .O(xor_a[35]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[36].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[36]),
        .O(xor_a[36]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[37].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[37]),
        .O(xor_a[37]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[38].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[38]),
        .O(xor_a[38]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[39].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[39]),
        .O(xor_a[39]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[3]),
        .O(xor_a[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[40].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[40]),
        .O(xor_a[40]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[41].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[41]),
        .O(xor_a[41]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[42].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[42]),
        .O(xor_a[42]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[43].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[43]),
        .O(xor_a[43]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[44].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[44]),
        .O(xor_a[44]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[45].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[45]),
        .O(xor_a[45]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[46].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[46]),
        .O(xor_a[46]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[47].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[47]),
        .O(xor_a[47]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[48].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[48]),
        .O(xor_a[48]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[49].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[49]),
        .O(xor_a[49]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[4]),
        .O(xor_a[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[50].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[50]),
        .O(xor_a[50]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[51].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[51]),
        .O(xor_a[51]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[52].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[52]),
        .O(xor_a[52]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[53].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[53]),
        .O(xor_a[53]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[54].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[54]),
        .O(xor_a[54]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[55].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[55]),
        .O(xor_a[55]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[56].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[56]),
        .O(xor_a[56]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[57].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[57]),
        .O(xor_a[57]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[58].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[58]),
        .O(xor_a[58]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[59].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[59]),
        .O(xor_a[59]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[5]),
        .O(xor_a[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[6]),
        .O(xor_a[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[7]),
        .O(xor_a[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[8]),
        .O(xor_a[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1 
       (.I0(s_axis_a_tdata[60]),
        .I1(s_axis_a_tdata[9]),
        .O(xor_a[9]));
  fix_to_float_fix_to_flt_conv_exp EXP
       (.D(D),
        .aclk(aclk),
        .op_state(op_state),
        .s_axis_a_tdata(s_axis_a_tdata[60]),
        .\s_axis_a_tdata[60] (EXP_n_1));
  fix_to_float_carry_chain \FIXED_DATA_SIGNED.M_ABS 
       (.A(\FIXED_DATA_SIGNED.M_ABS_n_99 ),
        .CARRYS_OUT(c_int),
        .CARRY_OUT(norm_dist_skew[5]),
        .\CHAIN_GEN[10].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_9 ),
        .\CHAIN_GEN[11].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_10 ),
        .\CHAIN_GEN[12].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_11 ),
        .\CHAIN_GEN[13].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_12 ),
        .\CHAIN_GEN[14].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_13 ),
        .\CHAIN_GEN[15].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_14 ),
        .\CHAIN_GEN[16].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_15 ),
        .\CHAIN_GEN[17].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_16 ),
        .\CHAIN_GEN[18].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_17 ),
        .\CHAIN_GEN[19].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_18 ),
        .\CHAIN_GEN[1].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_0 ),
        .\CHAIN_GEN[20].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_19 ),
        .\CHAIN_GEN[21].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_20 ),
        .\CHAIN_GEN[22].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_21 ),
        .\CHAIN_GEN[23].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_22 ),
        .\CHAIN_GEN[24].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_23 ),
        .\CHAIN_GEN[25].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_24 ),
        .\CHAIN_GEN[26].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_25 ),
        .\CHAIN_GEN[27].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_26 ),
        .\CHAIN_GEN[27].Q_XOR.SUM_XOR_1 (\FIXED_DATA_SIGNED.M_ABS_n_66 ),
        .\CHAIN_GEN[28].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_27 ),
        .\CHAIN_GEN[28].Q_XOR.SUM_XOR_1 (\FIXED_DATA_SIGNED.M_ABS_n_67 ),
        .\CHAIN_GEN[29].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_28 ),
        .\CHAIN_GEN[29].Q_XOR.SUM_XOR_1 (\FIXED_DATA_SIGNED.M_ABS_n_68 ),
        .\CHAIN_GEN[2].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_1 ),
        .\CHAIN_GEN[30].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_29 ),
        .\CHAIN_GEN[30].Q_XOR.SUM_XOR_1 (\FIXED_DATA_SIGNED.M_ABS_n_69 ),
        .\CHAIN_GEN[31].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_30 ),
        .\CHAIN_GEN[31].Q_XOR.SUM_XOR_1 (\FIXED_DATA_SIGNED.M_ABS_n_70 ),
        .\CHAIN_GEN[32].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_31 ),
        .\CHAIN_GEN[33].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_32 ),
        .\CHAIN_GEN[34].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_33 ),
        .\CHAIN_GEN[35].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_34 ),
        .\CHAIN_GEN[36].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_35 ),
        .\CHAIN_GEN[37].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_36 ),
        .\CHAIN_GEN[38].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_37 ),
        .\CHAIN_GEN[39].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_38 ),
        .\CHAIN_GEN[3].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_2 ),
        .\CHAIN_GEN[40].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_39 ),
        .\CHAIN_GEN[41].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_40 ),
        .\CHAIN_GEN[42].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_41 ),
        .\CHAIN_GEN[4].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_3 ),
        .\CHAIN_GEN[5].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_4 ),
        .\CHAIN_GEN[60].Q_XOR.SUM_XOR_0 (xor_a),
        .\CHAIN_GEN[6].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_5 ),
        .\CHAIN_GEN[7].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_6 ),
        .\CHAIN_GEN[8].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_7 ),
        .\CHAIN_GEN[9].Q_XOR.SUM_XOR_0 (\FIXED_DATA_SIGNED.M_ABS_n_8 ),
        .D({\FIXED_DATA_SIGNED.M_ABS_n_58 ,\FIXED_DATA_SIGNED.M_ABS_n_59 ,\FIXED_DATA_SIGNED.M_ABS_n_60 ,\FIXED_DATA_SIGNED.M_ABS_n_61 ,\FIXED_DATA_SIGNED.M_ABS_n_62 ,\FIXED_DATA_SIGNED.M_ABS_n_63 ,\FIXED_DATA_SIGNED.M_ABS_n_64 ,\FIXED_DATA_SIGNED.M_ABS_n_65 }),
        .chunk_is_zero(chunk_is_zero),
        .\opt_has_pipe.first_q_reg[28] (p_0_out),
        .s_axis_a_tdata(s_axis_a_tdata[60]),
        .\s_axis_a_tdata[60] (shifted_temp));
  fix_to_float_lead_zero_encode LZE
       (.A(\FIXED_DATA_SIGNED.M_ABS_n_99 ),
        .CARRYS_OUT(p_0_out),
        .\CHAIN_GEN[6].C_MUX.CARRY_MUX ({norm_dist_skew[5],c_int}),
        .D(D),
        .EXP(EXP__0),
        .Q(p_0_out_0),
        .aclk(aclk),
        .chunk_is_zero(chunk_is_zero[14:0]),
        .op_state(op_state),
        .\opt_has_pipe.first_q_reg[2] ({p_5_out[2],norm_dist_skew[3],p_5_out[0]}),
        .\opt_has_pipe.first_q_reg[7] ({\FIXED_DATA_SIGNED.M_ABS_n_58 ,\FIXED_DATA_SIGNED.M_ABS_n_59 ,\FIXED_DATA_SIGNED.M_ABS_n_60 ,\FIXED_DATA_SIGNED.M_ABS_n_61 ,\FIXED_DATA_SIGNED.M_ABS_n_62 ,\FIXED_DATA_SIGNED.M_ABS_n_63 ,\FIXED_DATA_SIGNED.M_ABS_n_64 ,\FIXED_DATA_SIGNED.M_ABS_n_65 }),
        .\opt_has_pipe.i_pipe[2].pipe_reg[2][1] (LZE_n_21),
        .out(p_6_out));
  fix_to_float_norm_zero_det \NEED_Z_DET.Z_DET 
       (.CARRYS_OUT(p_0_out),
        .\ZERO_DET[33].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_10 ),
        .\ZERO_DET[34].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_11 ),
        .\ZERO_DET[35].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_12 ),
        .\ZERO_DET[36].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_13 ),
        .\ZERO_DET[37].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_14 ),
        .\ZERO_DET[38].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_15 ),
        .\ZERO_DET[39].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_16 ),
        .\ZERO_DET[40].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_17 ),
        .\ZERO_DET[41].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_18 ),
        .\ZERO_DET[42].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_19 ),
        .\ZERO_DET[43].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_20 ),
        .\ZERO_DET[44].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_21 ),
        .\ZERO_DET[45].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_22 ),
        .\ZERO_DET[46].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_23 ),
        .\ZERO_DET[47].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_24 ),
        .\ZERO_DET[48].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_25 ),
        .\ZERO_DET[49].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_26 ),
        .\ZERO_DET[50].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_27 ),
        .\ZERO_DET[51].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_28 ),
        .\ZERO_DET[52].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_29 ),
        .\ZERO_DET[53].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_30 ),
        .\ZERO_DET[54].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_31 ),
        .\ZERO_DET[55].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_32 ),
        .\ZERO_DET[56].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_33 ),
        .\ZERO_DET[57].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_34 ),
        .\ZERO_DET[58].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_35 ),
        .\ZERO_DET[59].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_36 ),
        .\ZERO_DET[60].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_37 ),
        .\ZERO_DET[61].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_38 ),
        .\ZERO_DET[62].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_39 ),
        .\ZERO_DET[63].mc_0 (\FIXED_DATA_SIGNED.M_ABS_n_40 ),
        .aclk(aclk),
        .chunk_is_zero(chunk_is_zero[15]),
        .\opt_has_pipe.first_q[15]_i_2 (\FIXED_DATA_SIGNED.M_ABS_n_41 ),
        .\opt_has_pipe.first_q_reg[0] ({p_5_out[2],norm_dist_skew[3],p_5_out[0]}),
        .\opt_has_pipe.first_q_reg[0]_i_3 (p_6_out),
        .\opt_has_pipe.first_q_reg[10] (\FIXED_DATA_SIGNED.M_ABS_n_4 ),
        .\opt_has_pipe.first_q_reg[11] (\FIXED_DATA_SIGNED.M_ABS_n_5 ),
        .\opt_has_pipe.first_q_reg[12] (\FIXED_DATA_SIGNED.M_ABS_n_6 ),
        .\opt_has_pipe.first_q_reg[13] (\FIXED_DATA_SIGNED.M_ABS_n_7 ),
        .\opt_has_pipe.first_q_reg[14] (\FIXED_DATA_SIGNED.M_ABS_n_8 ),
        .\opt_has_pipe.first_q_reg[15] (\FIXED_DATA_SIGNED.M_ABS_n_9 ),
        .\opt_has_pipe.first_q_reg[15]_0 ({norm_dist_skew[5],c_int}),
        .\opt_has_pipe.first_q_reg[6] (\FIXED_DATA_SIGNED.M_ABS_n_0 ),
        .\opt_has_pipe.first_q_reg[7] (\FIXED_DATA_SIGNED.M_ABS_n_1 ),
        .\opt_has_pipe.first_q_reg[8] (\FIXED_DATA_SIGNED.M_ABS_n_2 ),
        .\opt_has_pipe.first_q_reg[9] (\FIXED_DATA_SIGNED.M_ABS_n_3 ),
        .out(zeros));
  fix_to_float_shift_msb_first NORM_SHIFT
       (.D(shifted_temp),
        .Q({part_norm_mant[0],part_norm_mant[1],part_norm_mant[2],mant_shifted_rnd1[1],mant_shifted_rnd1[2],mant_shifted_rnd1[3],mant_shifted_rnd1[4],mant_shifted_rnd1[5],mant_shifted_rnd1[6],mant_shifted_rnd1[7],sum_rnd2[0],sum_rnd2[1],sum_rnd2[2],sum_rnd2[3],sum_rnd2[4],sum_rnd2[5],sum_rnd2[6],sum_rnd2[7]}),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[18] ({p_5_out[2],norm_dist_skew[3],p_5_out[0]}),
        .\opt_has_pipe.first_q_reg[29] (\FIXED_DATA_SIGNED.M_ABS_n_70 ),
        .\opt_has_pipe.first_q_reg[30] (\FIXED_DATA_SIGNED.M_ABS_n_69 ),
        .\opt_has_pipe.first_q_reg[31] (\FIXED_DATA_SIGNED.M_ABS_n_68 ),
        .\opt_has_pipe.first_q_reg[32] (\FIXED_DATA_SIGNED.M_ABS_n_67 ),
        .\opt_has_pipe.first_q_reg[33] (norm_dist_skew[5]),
        .\opt_has_pipe.first_q_reg[33]_0 (\FIXED_DATA_SIGNED.M_ABS_n_66 ),
        .out(p_6_out));
  fix_to_float_flt_dec_op OP
       (.EXP(EXP__0),
        .\RESULT_REG.NORMAL.exp_op_reg[6]_0 (LZE_n_21),
        .\RESULT_REG.NORMAL.sign_op_reg_0 (EXP_n_1),
        .SR(op_state),
        .aclk(aclk),
        .m_axis_result_tdata(m_axis_result_tdata),
        .round_mant(round_mant));
  fix_to_float_renorm_and_round_logic ROUND
       (.Q({part_norm_mant[0],part_norm_mant[1],part_norm_mant[2],mant_shifted_rnd1[1],mant_shifted_rnd1[2],mant_shifted_rnd1[3],mant_shifted_rnd1[4],mant_shifted_rnd1[5],mant_shifted_rnd1[6],mant_shifted_rnd1[7],sum_rnd2[0],sum_rnd2[1],sum_rnd2[2],sum_rnd2[3],sum_rnd2[4],sum_rnd2[5],sum_rnd2[6],sum_rnd2[7]}),
        .\opt_has_pipe.first_q_reg[1] (p_0_out_0),
        .out(zeros),
        .round_mant(round_mant));
endmodule

(* ORIG_REF_NAME = "fix_to_flt_conv_exp" *) 
module fix_to_float_fix_to_flt_conv_exp
   (op_state,
    \s_axis_a_tdata[60] ,
    D,
    aclk,
    s_axis_a_tdata);
  output [0:0]op_state;
  output \s_axis_a_tdata[60] ;
  input D;
  input aclk;
  input [0:0]s_axis_a_tdata;

  wire D;
  wire aclk;
  wire [0:0]op_state;
  wire [0:0]s_axis_a_tdata;
  wire \s_axis_a_tdata[60] ;

  fix_to_float_delay__parameterized25 ZERO_DELAY
       (.D(D),
        .aclk(aclk),
        .op_state(op_state));
  fix_to_float_delay__parameterized24 \a_is_signed.IP_SIGN_DELAY 
       (.aclk(aclk),
        .s_axis_a_tdata(s_axis_a_tdata),
        .\s_axis_a_tdata[60] (\s_axis_a_tdata[60] ));
endmodule

(* C_ACCUM_INPUT_MSB = "32" *) (* C_ACCUM_LSB = "-31" *) (* C_ACCUM_MSB = "32" *) 
(* C_A_FRACTION_WIDTH = "6" *) (* C_A_TDATA_WIDTH = "64" *) (* C_A_TUSER_WIDTH = "1" *) 
(* C_A_WIDTH = "61" *) (* C_BRAM_USAGE = "0" *) (* C_B_FRACTION_WIDTH = "6" *) 
(* C_B_TDATA_WIDTH = "64" *) (* C_B_TUSER_WIDTH = "1" *) (* C_B_WIDTH = "61" *) 
(* C_COMPARE_OPERATION = "8" *) (* C_C_FRACTION_WIDTH = "6" *) (* C_C_TDATA_WIDTH = "64" *) 
(* C_C_TUSER_WIDTH = "1" *) (* C_C_WIDTH = "61" *) (* C_FIXED_DATA_UNSIGNED = "0" *) 
(* C_HAS_ABSOLUTE = "0" *) (* C_HAS_ACCUMULATOR_A = "0" *) (* C_HAS_ACCUMULATOR_S = "0" *) 
(* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) (* C_HAS_ACCUM_OVERFLOW = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ADD = "0" *) (* C_HAS_ARESETN = "0" *) (* C_HAS_A_TLAST = "0" *) 
(* C_HAS_A_TUSER = "0" *) (* C_HAS_B = "0" *) (* C_HAS_B_TLAST = "0" *) 
(* C_HAS_B_TUSER = "0" *) (* C_HAS_C = "0" *) (* C_HAS_COMPARE = "0" *) 
(* C_HAS_C_TLAST = "0" *) (* C_HAS_C_TUSER = "0" *) (* C_HAS_DIVIDE = "0" *) 
(* C_HAS_DIVIDE_BY_ZERO = "0" *) (* C_HAS_EXPONENTIAL = "0" *) (* C_HAS_FIX_TO_FLT = "1" *) 
(* C_HAS_FLT_TO_FIX = "0" *) (* C_HAS_FLT_TO_FLT = "0" *) (* C_HAS_FMA = "0" *) 
(* C_HAS_FMS = "0" *) (* C_HAS_INVALID_OP = "0" *) (* C_HAS_LOGARITHM = "0" *) 
(* C_HAS_MULTIPLY = "0" *) (* C_HAS_OPERATION = "0" *) (* C_HAS_OPERATION_TLAST = "0" *) 
(* C_HAS_OPERATION_TUSER = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_RECIP = "0" *) 
(* C_HAS_RECIP_SQRT = "0" *) (* C_HAS_RESULT_TLAST = "0" *) (* C_HAS_RESULT_TUSER = "0" *) 
(* C_HAS_SQRT = "0" *) (* C_HAS_SUBTRACT = "0" *) (* C_HAS_UNDERFLOW = "0" *) 
(* C_LATENCY = "3" *) (* C_MULT_USAGE = "0" *) (* C_OPERATION_TDATA_WIDTH = "8" *) 
(* C_OPERATION_TUSER_WIDTH = "1" *) (* C_OPTIMIZATION = "1" *) (* C_RATE = "1" *) 
(* C_RESULT_FRACTION_WIDTH = "17" *) (* C_RESULT_TDATA_WIDTH = "24" *) (* C_RESULT_TUSER_WIDTH = "1" *) 
(* C_RESULT_WIDTH = "24" *) (* C_THROTTLE_SCHEME = "3" *) (* C_TLAST_RESOLUTION = "0" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "floating_point_v7_1_7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module fix_to_float_floating_point_v7_1_7
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
  input [63:0]s_axis_a_tdata;
  input [0:0]s_axis_a_tuser;
  input s_axis_a_tlast;
  input s_axis_b_tvalid;
  output s_axis_b_tready;
  input [63:0]s_axis_b_tdata;
  input [0:0]s_axis_b_tuser;
  input s_axis_b_tlast;
  input s_axis_c_tvalid;
  output s_axis_c_tready;
  input [63:0]s_axis_c_tdata;
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
  wire [63:0]s_axis_a_tdata;
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
  (* C_A_FRACTION_WIDTH = "6" *) 
  (* C_A_TDATA_WIDTH = "64" *) 
  (* C_A_TUSER_WIDTH = "1" *) 
  (* C_A_WIDTH = "61" *) 
  (* C_BRAM_USAGE = "0" *) 
  (* C_B_FRACTION_WIDTH = "6" *) 
  (* C_B_TDATA_WIDTH = "64" *) 
  (* C_B_TUSER_WIDTH = "1" *) 
  (* C_B_WIDTH = "61" *) 
  (* C_COMPARE_OPERATION = "8" *) 
  (* C_C_FRACTION_WIDTH = "6" *) 
  (* C_C_TDATA_WIDTH = "64" *) 
  (* C_C_TUSER_WIDTH = "1" *) 
  (* C_C_WIDTH = "61" *) 
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
  (* C_HAS_FIX_TO_FLT = "1" *) 
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
  (* C_HAS_SUBTRACT = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_LATENCY = "3" *) 
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
  fix_to_float_floating_point_v7_1_7_viv i_synth
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(1'b0),
        .m_axis_result_tdata(m_axis_result_tdata),
        .m_axis_result_tlast(NLW_i_synth_m_axis_result_tlast_UNCONNECTED),
        .m_axis_result_tready(1'b0),
        .m_axis_result_tuser(NLW_i_synth_m_axis_result_tuser_UNCONNECTED[0]),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tdata({1'b0,1'b0,1'b0,s_axis_a_tdata[60:0]}),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(NLW_i_synth_s_axis_a_tready_UNCONNECTED),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_i_synth_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(1'b0),
        .s_axis_c_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
(* C_A_FRACTION_WIDTH = "6" *) (* C_A_TDATA_WIDTH = "64" *) (* C_A_TUSER_WIDTH = "1" *) 
(* C_A_WIDTH = "61" *) (* C_BRAM_USAGE = "0" *) (* C_B_FRACTION_WIDTH = "6" *) 
(* C_B_TDATA_WIDTH = "64" *) (* C_B_TUSER_WIDTH = "1" *) (* C_B_WIDTH = "61" *) 
(* C_COMPARE_OPERATION = "8" *) (* C_C_FRACTION_WIDTH = "6" *) (* C_C_TDATA_WIDTH = "64" *) 
(* C_C_TUSER_WIDTH = "1" *) (* C_C_WIDTH = "61" *) (* C_FIXED_DATA_UNSIGNED = "0" *) 
(* C_HAS_ABSOLUTE = "0" *) (* C_HAS_ACCUMULATOR_A = "0" *) (* C_HAS_ACCUMULATOR_S = "0" *) 
(* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) (* C_HAS_ACCUM_OVERFLOW = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ADD = "0" *) (* C_HAS_ARESETN = "0" *) (* C_HAS_A_TLAST = "0" *) 
(* C_HAS_A_TUSER = "0" *) (* C_HAS_B = "0" *) (* C_HAS_B_TLAST = "0" *) 
(* C_HAS_B_TUSER = "0" *) (* C_HAS_C = "0" *) (* C_HAS_COMPARE = "0" *) 
(* C_HAS_C_TLAST = "0" *) (* C_HAS_C_TUSER = "0" *) (* C_HAS_DIVIDE = "0" *) 
(* C_HAS_DIVIDE_BY_ZERO = "0" *) (* C_HAS_EXPONENTIAL = "0" *) (* C_HAS_FIX_TO_FLT = "1" *) 
(* C_HAS_FLT_TO_FIX = "0" *) (* C_HAS_FLT_TO_FLT = "0" *) (* C_HAS_FMA = "0" *) 
(* C_HAS_FMS = "0" *) (* C_HAS_INVALID_OP = "0" *) (* C_HAS_LOGARITHM = "0" *) 
(* C_HAS_MULTIPLY = "0" *) (* C_HAS_OPERATION = "0" *) (* C_HAS_OPERATION_TLAST = "0" *) 
(* C_HAS_OPERATION_TUSER = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_RECIP = "0" *) 
(* C_HAS_RECIP_SQRT = "0" *) (* C_HAS_RESULT_TLAST = "0" *) (* C_HAS_RESULT_TUSER = "0" *) 
(* C_HAS_SQRT = "0" *) (* C_HAS_SUBTRACT = "0" *) (* C_HAS_UNDERFLOW = "0" *) 
(* C_LATENCY = "3" *) (* C_MULT_USAGE = "0" *) (* C_OPERATION_TDATA_WIDTH = "8" *) 
(* C_OPERATION_TUSER_WIDTH = "1" *) (* C_OPTIMIZATION = "1" *) (* C_RATE = "1" *) 
(* C_RESULT_FRACTION_WIDTH = "17" *) (* C_RESULT_TDATA_WIDTH = "24" *) (* C_RESULT_TUSER_WIDTH = "1" *) 
(* C_RESULT_WIDTH = "24" *) (* C_THROTTLE_SCHEME = "3" *) (* C_TLAST_RESOLUTION = "0" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "floating_point_v7_1_7_viv" *) (* downgradeipidentifiedwarnings = "yes" *) 
module fix_to_float_floating_point_v7_1_7_viv
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
  input [63:0]s_axis_a_tdata;
  input [0:0]s_axis_a_tuser;
  input s_axis_a_tlast;
  input s_axis_b_tvalid;
  output s_axis_b_tready;
  input [63:0]s_axis_b_tdata;
  input [0:0]s_axis_b_tuser;
  input s_axis_b_tlast;
  input s_axis_c_tvalid;
  output s_axis_c_tready;
  input [63:0]s_axis_c_tdata;
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
  wire [63:0]s_axis_a_tdata;
  wire s_axis_a_tvalid;

  assign m_axis_result_tlast = \<const0> ;
  assign m_axis_result_tuser[0] = \<const0> ;
  assign s_axis_a_tready = \<const0> ;
  assign s_axis_b_tready = \<const0> ;
  assign s_axis_c_tready = \<const0> ;
  assign s_axis_operation_tready = \<const0> ;
  fix_to_float_fix_to_flt_conv \FIX_TO_FLT_OP.SPD.OP 
       (.aclk(aclk),
        .m_axis_result_tdata(m_axis_result_tdata),
        .s_axis_a_tdata(s_axis_a_tdata[60:0]));
  GND GND
       (.G(\<const0> ));
  fix_to_float_xbip_pipe_v3_0_5_viv i_nd_to_rdy
       (.aclk(aclk),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tvalid(s_axis_a_tvalid));
endmodule

(* ORIG_REF_NAME = "flt_dec_op" *) 
module fix_to_float_flt_dec_op
   (m_axis_result_tdata,
    \RESULT_REG.NORMAL.sign_op_reg_0 ,
    aclk,
    SR,
    round_mant,
    \RESULT_REG.NORMAL.exp_op_reg[6]_0 ,
    EXP);
  output [23:0]m_axis_result_tdata;
  input \RESULT_REG.NORMAL.sign_op_reg_0 ;
  input aclk;
  input [0:0]SR;
  input [15:0]round_mant;
  input \RESULT_REG.NORMAL.exp_op_reg[6]_0 ;
  input [5:0]EXP;

  wire [5:0]EXP;
  wire \RESULT_REG.NORMAL.exp_op_reg[6]_0 ;
  wire \RESULT_REG.NORMAL.sign_op_reg_0 ;
  wire [0:0]SR;
  wire aclk;
  wire [23:0]m_axis_result_tdata;
  wire [15:0]round_mant;

  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.exp_op_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(EXP[0]),
        .Q(m_axis_result_tdata[16]),
        .R(1'b0));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.exp_op_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(EXP[1]),
        .Q(m_axis_result_tdata[17]),
        .R(1'b0));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.exp_op_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(EXP[2]),
        .Q(m_axis_result_tdata[18]),
        .R(1'b0));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.exp_op_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(EXP[3]),
        .Q(m_axis_result_tdata[19]),
        .R(1'b0));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.exp_op_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(EXP[4]),
        .Q(m_axis_result_tdata[20]),
        .R(1'b0));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.exp_op_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(EXP[5]),
        .Q(m_axis_result_tdata[21]),
        .R(1'b0));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.exp_op_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\RESULT_REG.NORMAL.exp_op_reg[6]_0 ),
        .Q(m_axis_result_tdata[22]),
        .R(SR));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[0]),
        .Q(m_axis_result_tdata[0]),
        .R(SR));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[10]),
        .Q(m_axis_result_tdata[10]),
        .R(SR));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[11]),
        .Q(m_axis_result_tdata[11]),
        .R(SR));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[12]),
        .Q(m_axis_result_tdata[12]),
        .R(SR));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[13]),
        .Q(m_axis_result_tdata[13]),
        .R(SR));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[14]),
        .Q(m_axis_result_tdata[14]),
        .R(SR));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[15]),
        .Q(m_axis_result_tdata[15]),
        .R(SR));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[1]),
        .Q(m_axis_result_tdata[1]),
        .R(SR));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[2]),
        .Q(m_axis_result_tdata[2]),
        .R(SR));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[3]),
        .Q(m_axis_result_tdata[3]),
        .R(SR));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[4]),
        .Q(m_axis_result_tdata[4]),
        .R(SR));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[5]),
        .Q(m_axis_result_tdata[5]),
        .R(SR));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[6]),
        .Q(m_axis_result_tdata[6]),
        .R(SR));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[7]),
        .Q(m_axis_result_tdata[7]),
        .R(SR));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[8]),
        .Q(m_axis_result_tdata[8]),
        .R(SR));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE \RESULT_REG.NORMAL.mant_op_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(round_mant[9]),
        .Q(m_axis_result_tdata[9]),
        .R(SR));
  (* use_sync_reset = "auto" *) 
  (* use_sync_set = "auto" *) 
  FDRE #(
    .INIT(1'b0)) 
    \RESULT_REG.NORMAL.sign_op_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\RESULT_REG.NORMAL.sign_op_reg_0 ),
        .Q(m_axis_result_tdata[23]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flt_round_bit" *) 
module fix_to_float_flt_round_bit
   (ROUND_CARRY,
    Q,
    out,
    lopt,
    lopt_1,
    lopt_2);
  output ROUND_CARRY;
  input [2:0]Q;
  input out;
  output lopt;
  input lopt_1;
  output lopt_2;

  wire [2:0]Q;
  wire ROUND_CARRY;
  wire [2:0]a_ip;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire out;

  LUT3 #(
    .INIT(8'hFB)) 
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1 
       (.I0(Q[2]),
        .I1(out),
        .I2(Q[1]),
        .O(a_ip[0]));
  LUT4 #(
    .INIT(16'h10FF)) 
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(out),
        .I3(Q[1]),
        .O(a_ip[2]));
  fix_to_float_carry_chain__parameterized1 \NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1 
       (.A({a_ip[2],a_ip[0]}),
        .ROUND_CARRY(ROUND_CARRY),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(Q[0]),
        .lopt_3(lopt_2));
endmodule

(* ORIG_REF_NAME = "lead_zero_encode" *) 
module fix_to_float_lead_zero_encode
   (out,
    \opt_has_pipe.first_q_reg[2] ,
    D,
    CARRYS_OUT,
    \CHAIN_GEN[6].C_MUX.CARRY_MUX ,
    EXP,
    \opt_has_pipe.i_pipe[2].pipe_reg[2][1] ,
    aclk,
    chunk_is_zero,
    A,
    \opt_has_pipe.first_q_reg[7] ,
    Q,
    op_state);
  output [7:0]out;
  output [2:0]\opt_has_pipe.first_q_reg[2] ;
  output D;
  output [0:0]CARRYS_OUT;
  output [1:0]\CHAIN_GEN[6].C_MUX.CARRY_MUX ;
  output [5:0]EXP;
  output \opt_has_pipe.i_pipe[2].pipe_reg[2][1] ;
  input aclk;
  input [14:0]chunk_is_zero;
  input [0:0]A;
  input [7:0]\opt_has_pipe.first_q_reg[7] ;
  input [0:0]Q;
  input [0:0]op_state;

  wire [0:0]A;
  wire [0:0]CARRYS_OUT;
  wire [1:0]\CHAIN_GEN[6].C_MUX.CARRY_MUX ;
  wire D;
  wire \ENCODE[0].DIST_DEL_n_1 ;
  wire \ENCODE[1].DIST_DEL_n_1 ;
  wire \ENCODE[1].DIST_DEL_n_2 ;
  wire [5:0]EXP;
  wire [0:0]Q;
  wire \TWO.DIST_DEL_n_4 ;
  wire ZERO_DET_CC_1_n_3;
  wire ZERO_DET_CC_1_n_4;
  wire ZERO_DET_CC_1_n_5;
  wire \ZERO_DET_CC_2.CC_n_0 ;
  wire aclk;
  wire [14:0]chunk_is_zero;
  wire [4:0]norm_dist_skew;
  wire [2:0]op_int;
  wire [0:0]op_state;
  wire [2:0]\opt_has_pipe.first_q_reg[2] ;
  wire [7:0]\opt_has_pipe.first_q_reg[7] ;
  wire \opt_has_pipe.i_pipe[2].pipe_reg[2][1] ;
  wire [7:0]out;
  wire [7:7]p_0_out;

  fix_to_float_delay__parameterized2 A_Z_DET
       (.D(D),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[0] (\ZERO_DET_CC_2.CC_n_0 ));
  fix_to_float_delay__parameterized5 \ENCODE[0].DIST_DEL 
       (.D({norm_dist_skew[4],\CHAIN_GEN[6].C_MUX.CARRY_MUX [1]}),
        .EXP(EXP[5]),
        .Q(\ENCODE[0].DIST_DEL_n_1 ),
        .\RESULT_REG.NORMAL.exp_op_reg[6] (\ENCODE[1].DIST_DEL_n_2 ),
        .\RESULT_REG.NORMAL.exp_op_reg[6]_0 (\TWO.DIST_DEL_n_4 ),
        .aclk(aclk),
        .op_state(op_state),
        .\opt_has_pipe.i_pipe[2].pipe_reg[2][1] (\opt_has_pipe.i_pipe[2].pipe_reg[2][1] ));
  fix_to_float_mux4 \ENCODE[0].MUX_0 
       (.D({norm_dist_skew[0],norm_dist_skew[1]}),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[2] ),
        .\opt_has_pipe.first_q_reg[7] (\opt_has_pipe.first_q_reg[7] ),
        .out(out));
  fix_to_float_mux4__parameterized0 \ENCODE[0].MUX_Z 
       (.CARRYS_OUT({p_0_out,CARRYS_OUT}),
        .D(norm_dist_skew[2]),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[2] (\opt_has_pipe.first_q_reg[2] ),
        .\opt_has_pipe.first_q_reg[2]_0 (op_int),
        .\opt_has_pipe.first_q_reg[3] (\CHAIN_GEN[6].C_MUX.CARRY_MUX [1]));
  fix_to_float_delay__parameterized8 \ENCODE[1].DIST_DEL 
       (.D({norm_dist_skew[2],\opt_has_pipe.first_q_reg[2] [1]}),
        .EXP(EXP[4]),
        .Q({\ENCODE[1].DIST_DEL_n_1 ,\ENCODE[1].DIST_DEL_n_2 }),
        .\RESULT_REG.NORMAL.exp_op_reg[4] (\TWO.DIST_DEL_n_4 ),
        .\RESULT_REG.NORMAL.exp_op_reg[4]_0 (\ENCODE[0].DIST_DEL_n_1 ),
        .aclk(aclk),
        .op_state(op_state));
  fix_to_float_delay__parameterized8_2 \TWO.DIST_DEL 
       (.D({norm_dist_skew[0],norm_dist_skew[1]}),
        .EXP(EXP[3:0]),
        .Q(Q),
        .\RESULT_REG.NORMAL.exp_op_reg[3] ({\ENCODE[1].DIST_DEL_n_1 ,\ENCODE[1].DIST_DEL_n_2 }),
        .aclk(aclk),
        .op_state(op_state),
        .\opt_has_pipe.first_q_reg[0] (\TWO.DIST_DEL_n_4 ));
  fix_to_float_carry_chain__parameterized0 ZERO_DET_CC_1
       (.CARRYS_OUT(CARRYS_OUT),
        .\CHAIN_GEN[0].C_MUX.CARRY_MUX_0 (ZERO_DET_CC_1_n_5),
        .\CHAIN_GEN[1].C_MUX.CARRY_MUX_0 (ZERO_DET_CC_1_n_4),
        .\CHAIN_GEN[2].C_MUX.CARRY_MUX_0 (\CHAIN_GEN[6].C_MUX.CARRY_MUX [0]),
        .\CHAIN_GEN[2].C_MUX.CARRY_MUX_1 (ZERO_DET_CC_1_n_3),
        .D({norm_dist_skew[4],\CHAIN_GEN[6].C_MUX.CARRY_MUX [1]}),
        .chunk_is_zero(chunk_is_zero[7:0]));
  fix_to_float_carry_chain__parameterized0_3 \ZERO_DET_CC_2.CC 
       (.A({A,chunk_is_zero[14:8]}),
        .CARRYS_OUT({p_0_out,CARRYS_OUT}),
        .\CHAIN_GEN[7].C_MUX.CARRY_MUX_0 (\ZERO_DET_CC_2.CC_n_0 ),
        .D(\CHAIN_GEN[6].C_MUX.CARRY_MUX [1]),
        .\opt_has_pipe.first_q[2]_i_2 (op_int),
        .\opt_has_pipe.first_q_reg[0] (ZERO_DET_CC_1_n_5),
        .\opt_has_pipe.first_q_reg[1] (ZERO_DET_CC_1_n_4),
        .\opt_has_pipe.first_q_reg[2] (ZERO_DET_CC_1_n_3));
endmodule

(* ORIG_REF_NAME = "mux4" *) 
module fix_to_float_mux4
   (out,
    D,
    \opt_has_pipe.first_q_reg[0] ,
    \opt_has_pipe.first_q_reg[7] ,
    aclk);
  output [7:0]out;
  output [1:0]D;
  input [2:0]\opt_has_pipe.first_q_reg[0] ;
  input [7:0]\opt_has_pipe.first_q_reg[7] ;
  input aclk;

  wire [1:0]D;
  wire aclk;
  wire [2:0]\opt_has_pipe.first_q_reg[0] ;
  wire [7:0]\opt_has_pipe.first_q_reg[7] ;
  wire [7:0]out;

  fix_to_float_delay__parameterized3 OP_DEL
       (.D(D),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[7] (\opt_has_pipe.first_q_reg[7] ),
        .out(out));
endmodule

(* ORIG_REF_NAME = "mux4" *) 
module fix_to_float_mux4__parameterized0
   (\opt_has_pipe.first_q_reg[2] ,
    D,
    \opt_has_pipe.first_q_reg[2]_0 ,
    aclk,
    CARRYS_OUT,
    \opt_has_pipe.first_q_reg[3] );
  output [2:0]\opt_has_pipe.first_q_reg[2] ;
  output [0:0]D;
  input [2:0]\opt_has_pipe.first_q_reg[2]_0 ;
  input aclk;
  input [1:0]CARRYS_OUT;
  input [0:0]\opt_has_pipe.first_q_reg[3] ;

  wire [1:0]CARRYS_OUT;
  wire [0:0]D;
  wire aclk;
  wire [2:0]\opt_has_pipe.first_q_reg[2] ;
  wire [2:0]\opt_has_pipe.first_q_reg[2]_0 ;
  wire [0:0]\opt_has_pipe.first_q_reg[3] ;

  fix_to_float_delay__parameterized4 OP_DEL
       (.CARRYS_OUT(CARRYS_OUT),
        .D(D),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[2] (\opt_has_pipe.first_q_reg[2] ),
        .\opt_has_pipe.first_q_reg[2]_0 (\opt_has_pipe.first_q_reg[2]_0 ),
        .\opt_has_pipe.first_q_reg[3] (\opt_has_pipe.first_q_reg[3] ));
endmodule

(* ORIG_REF_NAME = "norm_zero_det" *) 
module fix_to_float_norm_zero_det
   (out,
    chunk_is_zero,
    \opt_has_pipe.first_q_reg[6] ,
    \opt_has_pipe.first_q_reg[7] ,
    \opt_has_pipe.first_q_reg[8] ,
    \opt_has_pipe.first_q_reg[9] ,
    \opt_has_pipe.first_q_reg[10] ,
    \opt_has_pipe.first_q_reg[11] ,
    \opt_has_pipe.first_q_reg[12] ,
    \opt_has_pipe.first_q_reg[13] ,
    \opt_has_pipe.first_q_reg[14] ,
    \opt_has_pipe.first_q_reg[15] ,
    \ZERO_DET[33].mc_0 ,
    \ZERO_DET[34].mc_0 ,
    \ZERO_DET[35].mc_0 ,
    \ZERO_DET[36].mc_0 ,
    \ZERO_DET[37].mc_0 ,
    \ZERO_DET[38].mc_0 ,
    \ZERO_DET[39].mc_0 ,
    \ZERO_DET[40].mc_0 ,
    \ZERO_DET[41].mc_0 ,
    \ZERO_DET[42].mc_0 ,
    \ZERO_DET[43].mc_0 ,
    \ZERO_DET[44].mc_0 ,
    \ZERO_DET[45].mc_0 ,
    \ZERO_DET[46].mc_0 ,
    \ZERO_DET[47].mc_0 ,
    \ZERO_DET[48].mc_0 ,
    \ZERO_DET[49].mc_0 ,
    \ZERO_DET[50].mc_0 ,
    \ZERO_DET[51].mc_0 ,
    \ZERO_DET[52].mc_0 ,
    \ZERO_DET[53].mc_0 ,
    \ZERO_DET[54].mc_0 ,
    \ZERO_DET[55].mc_0 ,
    \ZERO_DET[56].mc_0 ,
    \ZERO_DET[57].mc_0 ,
    \ZERO_DET[58].mc_0 ,
    \ZERO_DET[59].mc_0 ,
    \ZERO_DET[60].mc_0 ,
    \ZERO_DET[61].mc_0 ,
    \ZERO_DET[62].mc_0 ,
    \ZERO_DET[63].mc_0 ,
    \opt_has_pipe.first_q[15]_i_2 ,
    aclk,
    \opt_has_pipe.first_q_reg[0] ,
    \opt_has_pipe.first_q_reg[0]_i_3 ,
    CARRYS_OUT,
    \opt_has_pipe.first_q_reg[15]_0 );
  output out;
  input [0:0]chunk_is_zero;
  input \opt_has_pipe.first_q_reg[6] ;
  input \opt_has_pipe.first_q_reg[7] ;
  input \opt_has_pipe.first_q_reg[8] ;
  input \opt_has_pipe.first_q_reg[9] ;
  input \opt_has_pipe.first_q_reg[10] ;
  input \opt_has_pipe.first_q_reg[11] ;
  input \opt_has_pipe.first_q_reg[12] ;
  input \opt_has_pipe.first_q_reg[13] ;
  input \opt_has_pipe.first_q_reg[14] ;
  input \opt_has_pipe.first_q_reg[15] ;
  input \ZERO_DET[33].mc_0 ;
  input \ZERO_DET[34].mc_0 ;
  input \ZERO_DET[35].mc_0 ;
  input \ZERO_DET[36].mc_0 ;
  input \ZERO_DET[37].mc_0 ;
  input \ZERO_DET[38].mc_0 ;
  input \ZERO_DET[39].mc_0 ;
  input \ZERO_DET[40].mc_0 ;
  input \ZERO_DET[41].mc_0 ;
  input \ZERO_DET[42].mc_0 ;
  input \ZERO_DET[43].mc_0 ;
  input \ZERO_DET[44].mc_0 ;
  input \ZERO_DET[45].mc_0 ;
  input \ZERO_DET[46].mc_0 ;
  input \ZERO_DET[47].mc_0 ;
  input \ZERO_DET[48].mc_0 ;
  input \ZERO_DET[49].mc_0 ;
  input \ZERO_DET[50].mc_0 ;
  input \ZERO_DET[51].mc_0 ;
  input \ZERO_DET[52].mc_0 ;
  input \ZERO_DET[53].mc_0 ;
  input \ZERO_DET[54].mc_0 ;
  input \ZERO_DET[55].mc_0 ;
  input \ZERO_DET[56].mc_0 ;
  input \ZERO_DET[57].mc_0 ;
  input \ZERO_DET[58].mc_0 ;
  input \ZERO_DET[59].mc_0 ;
  input \ZERO_DET[60].mc_0 ;
  input \ZERO_DET[61].mc_0 ;
  input \ZERO_DET[62].mc_0 ;
  input \ZERO_DET[63].mc_0 ;
  input \opt_has_pipe.first_q[15]_i_2 ;
  input aclk;
  input [2:0]\opt_has_pipe.first_q_reg[0] ;
  input [7:0]\opt_has_pipe.first_q_reg[0]_i_3 ;
  input [0:0]CARRYS_OUT;
  input [1:0]\opt_has_pipe.first_q_reg[15]_0 ;

  wire [0:0]CARRYS_OUT;
  wire \ZERO_DET[33].mc_0 ;
  wire \ZERO_DET[34].mc_0 ;
  wire \ZERO_DET[35].mc_0 ;
  wire \ZERO_DET[36].mc_0 ;
  wire \ZERO_DET[37].mc_0 ;
  wire \ZERO_DET[38].mc_0 ;
  wire \ZERO_DET[39].mc_0 ;
  wire \ZERO_DET[40].mc_0 ;
  wire \ZERO_DET[41].mc_0 ;
  wire \ZERO_DET[42].mc_0 ;
  wire \ZERO_DET[43].mc_0 ;
  wire \ZERO_DET[44].mc_0 ;
  wire \ZERO_DET[45].mc_0 ;
  wire \ZERO_DET[46].mc_0 ;
  wire \ZERO_DET[47].mc_0 ;
  wire \ZERO_DET[48].mc_0 ;
  wire \ZERO_DET[49].mc_0 ;
  wire \ZERO_DET[50].mc_0 ;
  wire \ZERO_DET[51].mc_0 ;
  wire \ZERO_DET[52].mc_0 ;
  wire \ZERO_DET[53].mc_0 ;
  wire \ZERO_DET[54].mc_0 ;
  wire \ZERO_DET[55].mc_0 ;
  wire \ZERO_DET[56].mc_0 ;
  wire \ZERO_DET[57].mc_0 ;
  wire \ZERO_DET[58].mc_0 ;
  wire \ZERO_DET[59].mc_0 ;
  wire \ZERO_DET[60].mc_0 ;
  wire \ZERO_DET[61].mc_0 ;
  wire \ZERO_DET[62].mc_0 ;
  wire \ZERO_DET[63].mc_0 ;
  wire \ZERO_DET[63].mc__0 ;
  wire aclk;
  wire c_int_1;
  wire c_int_10;
  wire c_int_11;
  wire c_int_12;
  wire c_int_13;
  wire c_int_14;
  wire c_int_15;
  wire c_int_16;
  wire c_int_17;
  wire c_int_18;
  wire c_int_19;
  wire c_int_2;
  wire c_int_20;
  wire c_int_21;
  wire c_int_22;
  wire c_int_23;
  wire c_int_24;
  wire c_int_25;
  wire c_int_26;
  wire c_int_27;
  wire c_int_28;
  wire c_int_29;
  wire c_int_3;
  wire c_int_30;
  wire c_int_31;
  wire c_int_32;
  wire c_int_33;
  wire c_int_34;
  wire c_int_35;
  wire c_int_36;
  wire c_int_37;
  wire c_int_38;
  wire c_int_39;
  wire c_int_4;
  wire c_int_40;
  wire c_int_41;
  wire c_int_42;
  wire c_int_43;
  wire c_int_44;
  wire c_int_45;
  wire c_int_46;
  wire c_int_47;
  wire c_int_48;
  wire c_int_49;
  wire c_int_5;
  wire c_int_50;
  wire c_int_51;
  wire c_int_52;
  wire c_int_53;
  wire c_int_54;
  wire c_int_55;
  wire c_int_56;
  wire c_int_57;
  wire c_int_58;
  wire c_int_59;
  wire c_int_6;
  wire c_int_60;
  wire c_int_61;
  wire c_int_62;
  wire c_int_63;
  wire c_int_7;
  wire c_int_8;
  wire c_int_9;
  wire [0:0]chunk_is_zero;
  wire \opt_has_pipe.first_q[15]_i_2 ;
  wire [2:0]\opt_has_pipe.first_q_reg[0] ;
  wire [7:0]\opt_has_pipe.first_q_reg[0]_i_3 ;
  wire \opt_has_pipe.first_q_reg[10] ;
  wire \opt_has_pipe.first_q_reg[11] ;
  wire \opt_has_pipe.first_q_reg[12] ;
  wire \opt_has_pipe.first_q_reg[13] ;
  wire \opt_has_pipe.first_q_reg[14] ;
  wire \opt_has_pipe.first_q_reg[15] ;
  wire [1:0]\opt_has_pipe.first_q_reg[15]_0 ;
  wire \opt_has_pipe.first_q_reg[6] ;
  wire \opt_has_pipe.first_q_reg[7] ;
  wire \opt_has_pipe.first_q_reg[8] ;
  wire \opt_has_pipe.first_q_reg[9] ;
  wire out;
  wire [0:0]\z_det_up[2]_1 ;
  wire [3:0]\NLW_ZERO_DET[0].mc_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_ZERO_DET[12].mc_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_ZERO_DET[16].mc_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_ZERO_DET[20].mc_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_ZERO_DET[24].mc_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_ZERO_DET[28].mc_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_ZERO_DET[32].mc_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_ZERO_DET[36].mc_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_ZERO_DET[40].mc_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_ZERO_DET[44].mc_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_ZERO_DET[48].mc_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_ZERO_DET[4].mc_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_ZERO_DET[52].mc_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_ZERO_DET[56].mc_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_ZERO_DET[60].mc_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_ZERO_DET[8].mc_CARRY4_O_UNCONNECTED ;

  fix_to_float_delay__parameterized10 \ENCODE[0].Z_DET_DEL 
       (.CARRYS_OUT(CARRYS_OUT),
        .\ZERO_DET[63].mc__0 (\ZERO_DET[63].mc__0 ),
        .aclk(aclk),
        .c_int_1(c_int_1),
        .c_int_10(c_int_10),
        .c_int_11(c_int_11),
        .c_int_12(c_int_12),
        .c_int_13(c_int_13),
        .c_int_14(c_int_14),
        .c_int_15(c_int_15),
        .c_int_16(c_int_16),
        .c_int_17(c_int_17),
        .c_int_18(c_int_18),
        .c_int_19(c_int_19),
        .c_int_2(c_int_2),
        .c_int_20(c_int_20),
        .c_int_21(c_int_21),
        .c_int_22(c_int_22),
        .c_int_23(c_int_23),
        .c_int_24(c_int_24),
        .c_int_25(c_int_25),
        .c_int_26(c_int_26),
        .c_int_27(c_int_27),
        .c_int_28(c_int_28),
        .c_int_29(c_int_29),
        .c_int_3(c_int_3),
        .c_int_30(c_int_30),
        .c_int_31(c_int_31),
        .c_int_32(c_int_32),
        .c_int_33(c_int_33),
        .c_int_34(c_int_34),
        .c_int_35(c_int_35),
        .c_int_36(c_int_36),
        .c_int_37(c_int_37),
        .c_int_38(c_int_38),
        .c_int_39(c_int_39),
        .c_int_4(c_int_4),
        .c_int_40(c_int_40),
        .c_int_41(c_int_41),
        .c_int_42(c_int_42),
        .c_int_43(c_int_43),
        .c_int_44(c_int_44),
        .c_int_45(c_int_45),
        .c_int_46(c_int_46),
        .c_int_47(c_int_47),
        .c_int_48(c_int_48),
        .c_int_49(c_int_49),
        .c_int_5(c_int_5),
        .c_int_50(c_int_50),
        .c_int_51(c_int_51),
        .c_int_52(c_int_52),
        .c_int_53(c_int_53),
        .c_int_54(c_int_54),
        .c_int_55(c_int_55),
        .c_int_56(c_int_56),
        .c_int_57(c_int_57),
        .c_int_58(c_int_58),
        .c_int_59(c_int_59),
        .c_int_6(c_int_6),
        .c_int_60(c_int_60),
        .c_int_61(c_int_61),
        .c_int_62(c_int_62),
        .c_int_63(c_int_63),
        .c_int_7(c_int_7),
        .c_int_8(c_int_8),
        .c_int_9(c_int_9),
        .\opt_has_pipe.first_q_reg[0] (\opt_has_pipe.first_q_reg[0] ),
        .\opt_has_pipe.first_q_reg[0]_i_3 (\opt_has_pipe.first_q_reg[0]_i_3 ),
        .\opt_has_pipe.first_q_reg[15] (\opt_has_pipe.first_q_reg[15]_0 ),
        .\z_det_up[2]_1 (\z_det_up[2]_1 ));
  fix_to_float_delay__parameterized13 \ENCODE[2].Z_DET_DEL 
       (.aclk(aclk),
        .out(out),
        .\z_det_up[2]_1 (\z_det_up[2]_1 ));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \ZERO_DET[0].mc_CARRY4 
       (.CI(1'b0),
        .CO({c_int_4,c_int_3,c_int_2,c_int_1}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ZERO_DET[0].mc_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \ZERO_DET[12].mc_CARRY4 
       (.CI(c_int_12),
        .CO({c_int_16,c_int_15,c_int_14,c_int_13}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ZERO_DET[12].mc_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \ZERO_DET[16].mc_CARRY4 
       (.CI(c_int_16),
        .CO({c_int_20,c_int_19,c_int_18,c_int_17}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ZERO_DET[16].mc_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \ZERO_DET[20].mc_CARRY4 
       (.CI(c_int_20),
        .CO({c_int_24,c_int_23,c_int_22,c_int_21}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ZERO_DET[20].mc_CARRY4_O_UNCONNECTED [3:0]),
        .S({\opt_has_pipe.first_q_reg[7] ,\opt_has_pipe.first_q_reg[6] ,chunk_is_zero,1'b1}));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \ZERO_DET[24].mc_CARRY4 
       (.CI(c_int_24),
        .CO({c_int_28,c_int_27,c_int_26,c_int_25}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ZERO_DET[24].mc_CARRY4_O_UNCONNECTED [3:0]),
        .S({\opt_has_pipe.first_q_reg[11] ,\opt_has_pipe.first_q_reg[10] ,\opt_has_pipe.first_q_reg[9] ,\opt_has_pipe.first_q_reg[8] }));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \ZERO_DET[28].mc_CARRY4 
       (.CI(c_int_28),
        .CO({c_int_32,c_int_31,c_int_30,c_int_29}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ZERO_DET[28].mc_CARRY4_O_UNCONNECTED [3:0]),
        .S({\opt_has_pipe.first_q_reg[15] ,\opt_has_pipe.first_q_reg[14] ,\opt_has_pipe.first_q_reg[13] ,\opt_has_pipe.first_q_reg[12] }));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \ZERO_DET[32].mc_CARRY4 
       (.CI(c_int_32),
        .CO({c_int_36,c_int_35,c_int_34,c_int_33}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ZERO_DET[32].mc_CARRY4_O_UNCONNECTED [3:0]),
        .S({\ZERO_DET[36].mc_0 ,\ZERO_DET[35].mc_0 ,\ZERO_DET[34].mc_0 ,\ZERO_DET[33].mc_0 }));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \ZERO_DET[36].mc_CARRY4 
       (.CI(c_int_36),
        .CO({c_int_40,c_int_39,c_int_38,c_int_37}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ZERO_DET[36].mc_CARRY4_O_UNCONNECTED [3:0]),
        .S({\ZERO_DET[40].mc_0 ,\ZERO_DET[39].mc_0 ,\ZERO_DET[38].mc_0 ,\ZERO_DET[37].mc_0 }));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \ZERO_DET[40].mc_CARRY4 
       (.CI(c_int_40),
        .CO({c_int_44,c_int_43,c_int_42,c_int_41}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ZERO_DET[40].mc_CARRY4_O_UNCONNECTED [3:0]),
        .S({\ZERO_DET[44].mc_0 ,\ZERO_DET[43].mc_0 ,\ZERO_DET[42].mc_0 ,\ZERO_DET[41].mc_0 }));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \ZERO_DET[44].mc_CARRY4 
       (.CI(c_int_44),
        .CO({c_int_48,c_int_47,c_int_46,c_int_45}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ZERO_DET[44].mc_CARRY4_O_UNCONNECTED [3:0]),
        .S({\ZERO_DET[48].mc_0 ,\ZERO_DET[47].mc_0 ,\ZERO_DET[46].mc_0 ,\ZERO_DET[45].mc_0 }));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \ZERO_DET[48].mc_CARRY4 
       (.CI(c_int_48),
        .CO({c_int_52,c_int_51,c_int_50,c_int_49}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ZERO_DET[48].mc_CARRY4_O_UNCONNECTED [3:0]),
        .S({\ZERO_DET[52].mc_0 ,\ZERO_DET[51].mc_0 ,\ZERO_DET[50].mc_0 ,\ZERO_DET[49].mc_0 }));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \ZERO_DET[4].mc_CARRY4 
       (.CI(c_int_4),
        .CO({c_int_8,c_int_7,c_int_6,c_int_5}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ZERO_DET[4].mc_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \ZERO_DET[52].mc_CARRY4 
       (.CI(c_int_52),
        .CO({c_int_56,c_int_55,c_int_54,c_int_53}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ZERO_DET[52].mc_CARRY4_O_UNCONNECTED [3:0]),
        .S({\ZERO_DET[56].mc_0 ,\ZERO_DET[55].mc_0 ,\ZERO_DET[54].mc_0 ,\ZERO_DET[53].mc_0 }));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \ZERO_DET[56].mc_CARRY4 
       (.CI(c_int_56),
        .CO({c_int_60,c_int_59,c_int_58,c_int_57}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ZERO_DET[56].mc_CARRY4_O_UNCONNECTED [3:0]),
        .S({\ZERO_DET[60].mc_0 ,\ZERO_DET[59].mc_0 ,\ZERO_DET[58].mc_0 ,\ZERO_DET[57].mc_0 }));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \ZERO_DET[60].mc_CARRY4 
       (.CI(c_int_60),
        .CO({\ZERO_DET[63].mc__0 ,c_int_63,c_int_62,c_int_61}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ZERO_DET[60].mc_CARRY4_O_UNCONNECTED [3:0]),
        .S({\opt_has_pipe.first_q[15]_i_2 ,\ZERO_DET[63].mc_0 ,\ZERO_DET[62].mc_0 ,\ZERO_DET[61].mc_0 }));
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \ZERO_DET[8].mc_CARRY4 
       (.CI(c_int_8),
        .CO({c_int_12,c_int_11,c_int_10,c_int_9}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ZERO_DET[8].mc_CARRY4_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
endmodule

(* ORIG_REF_NAME = "renorm_and_round_logic" *) 
module fix_to_float_renorm_and_round_logic
   (round_mant,
    \opt_has_pipe.first_q_reg[1] ,
    Q,
    out);
  output [15:0]round_mant;
  output [0:0]\opt_has_pipe.first_q_reg[1] ;
  input [17:0]Q;
  input out;

  wire [17:0]Q;
  wire carry_rnd2;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire [0:0]\opt_has_pipe.first_q_reg[1] ;
  wire out;
  wire [15:0]round_mant;
  wire round_rnd1;

  fix_to_float_carry_chain__parameterized2 \LOGIC.RND1 
       (.CARRYS_OUT(round_rnd1),
        .CARRY_OUT(carry_rnd2),
        .Q(Q[15:8]),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(Q[7]),
        .lopt_6(lopt_5),
        .round_mant(round_mant[7:0]));
  fix_to_float_carry_chain__parameterized3 \LOGIC.RND2 
       (.CARRY_IN(carry_rnd2),
        .Q(Q[7:0]),
        .lopt(lopt_3),
        .lopt_1(lopt_4),
        .lopt_2(lopt_5),
        .\opt_has_pipe.first_q_reg[1] ({\opt_has_pipe.first_q_reg[1] ,round_mant[15:8]}));
  fix_to_float_flt_round_bit RND_BIT_GEN
       (.Q(Q[17:15]),
        .ROUND_CARRY(round_rnd1),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .out(out));
endmodule

(* ORIG_REF_NAME = "shift_msb_first" *) 
module fix_to_float_shift_msb_first
   (Q,
    \opt_has_pipe.first_q_reg[18] ,
    out,
    D,
    aclk,
    \opt_has_pipe.first_q_reg[33] ,
    \opt_has_pipe.first_q_reg[33]_0 ,
    \opt_has_pipe.first_q_reg[32] ,
    \opt_has_pipe.first_q_reg[31] ,
    \opt_has_pipe.first_q_reg[30] ,
    \opt_has_pipe.first_q_reg[29] );
  output [17:0]Q;
  input [2:0]\opt_has_pipe.first_q_reg[18] ;
  input [7:0]out;
  input [27:0]D;
  input aclk;
  input [0:0]\opt_has_pipe.first_q_reg[33] ;
  input \opt_has_pipe.first_q_reg[33]_0 ;
  input \opt_has_pipe.first_q_reg[32] ;
  input \opt_has_pipe.first_q_reg[31] ;
  input \opt_has_pipe.first_q_reg[30] ;
  input \opt_has_pipe.first_q_reg[29] ;

  wire [27:0]D;
  wire \MUX_LOOP[0].DEL_SHIFT_n_0 ;
  wire \MUX_LOOP[0].DEL_SHIFT_n_1 ;
  wire \MUX_LOOP[0].DEL_SHIFT_n_10 ;
  wire \MUX_LOOP[0].DEL_SHIFT_n_11 ;
  wire \MUX_LOOP[0].DEL_SHIFT_n_12 ;
  wire \MUX_LOOP[0].DEL_SHIFT_n_13 ;
  wire \MUX_LOOP[0].DEL_SHIFT_n_14 ;
  wire \MUX_LOOP[0].DEL_SHIFT_n_15 ;
  wire \MUX_LOOP[0].DEL_SHIFT_n_16 ;
  wire \MUX_LOOP[0].DEL_SHIFT_n_17 ;
  wire \MUX_LOOP[0].DEL_SHIFT_n_2 ;
  wire \MUX_LOOP[0].DEL_SHIFT_n_3 ;
  wire \MUX_LOOP[0].DEL_SHIFT_n_4 ;
  wire \MUX_LOOP[0].DEL_SHIFT_n_5 ;
  wire \MUX_LOOP[0].DEL_SHIFT_n_6 ;
  wire \MUX_LOOP[0].DEL_SHIFT_n_7 ;
  wire \MUX_LOOP[0].DEL_SHIFT_n_8 ;
  wire \MUX_LOOP[0].DEL_SHIFT_n_9 ;
  wire [17:0]Q;
  wire aclk;
  wire [2:0]\opt_has_pipe.first_q_reg[18] ;
  wire \opt_has_pipe.first_q_reg[29] ;
  wire \opt_has_pipe.first_q_reg[30] ;
  wire \opt_has_pipe.first_q_reg[31] ;
  wire \opt_has_pipe.first_q_reg[32] ;
  wire [0:0]\opt_has_pipe.first_q_reg[33] ;
  wire \opt_has_pipe.first_q_reg[33]_0 ;
  wire [7:0]out;

  fix_to_float_delay__parameterized14 \MUX_LOOP[0].DEL_SHIFT 
       (.D({\MUX_LOOP[0].DEL_SHIFT_n_0 ,\MUX_LOOP[0].DEL_SHIFT_n_1 ,\MUX_LOOP[0].DEL_SHIFT_n_2 ,\MUX_LOOP[0].DEL_SHIFT_n_3 ,\MUX_LOOP[0].DEL_SHIFT_n_4 ,\MUX_LOOP[0].DEL_SHIFT_n_5 ,\MUX_LOOP[0].DEL_SHIFT_n_6 ,\MUX_LOOP[0].DEL_SHIFT_n_7 ,\MUX_LOOP[0].DEL_SHIFT_n_8 ,\MUX_LOOP[0].DEL_SHIFT_n_9 ,\MUX_LOOP[0].DEL_SHIFT_n_10 ,\MUX_LOOP[0].DEL_SHIFT_n_11 ,\MUX_LOOP[0].DEL_SHIFT_n_12 ,\MUX_LOOP[0].DEL_SHIFT_n_13 ,\MUX_LOOP[0].DEL_SHIFT_n_14 ,\MUX_LOOP[0].DEL_SHIFT_n_15 ,\MUX_LOOP[0].DEL_SHIFT_n_16 ,\MUX_LOOP[0].DEL_SHIFT_n_17 }),
        .aclk(aclk),
        .\opt_has_pipe.first_q_reg[18] (\opt_has_pipe.first_q_reg[18] ),
        .\opt_has_pipe.first_q_reg[28] (D),
        .\opt_has_pipe.first_q_reg[29] (\opt_has_pipe.first_q_reg[29] ),
        .\opt_has_pipe.first_q_reg[30] (\opt_has_pipe.first_q_reg[30] ),
        .\opt_has_pipe.first_q_reg[31] (\opt_has_pipe.first_q_reg[31] ),
        .\opt_has_pipe.first_q_reg[32] (\opt_has_pipe.first_q_reg[32] ),
        .\opt_has_pipe.first_q_reg[33] (\opt_has_pipe.first_q_reg[33] ),
        .\opt_has_pipe.first_q_reg[33]_0 (\opt_has_pipe.first_q_reg[33]_0 ),
        .out(out));
  fix_to_float_delay__parameterized14_0 \MUX_LOOP[2].DEL_SHIFT 
       (.D({\MUX_LOOP[0].DEL_SHIFT_n_0 ,\MUX_LOOP[0].DEL_SHIFT_n_1 ,\MUX_LOOP[0].DEL_SHIFT_n_2 ,\MUX_LOOP[0].DEL_SHIFT_n_3 ,\MUX_LOOP[0].DEL_SHIFT_n_4 ,\MUX_LOOP[0].DEL_SHIFT_n_5 ,\MUX_LOOP[0].DEL_SHIFT_n_6 ,\MUX_LOOP[0].DEL_SHIFT_n_7 ,\MUX_LOOP[0].DEL_SHIFT_n_8 ,\MUX_LOOP[0].DEL_SHIFT_n_9 ,\MUX_LOOP[0].DEL_SHIFT_n_10 ,\MUX_LOOP[0].DEL_SHIFT_n_11 ,\MUX_LOOP[0].DEL_SHIFT_n_12 ,\MUX_LOOP[0].DEL_SHIFT_n_13 ,\MUX_LOOP[0].DEL_SHIFT_n_14 ,\MUX_LOOP[0].DEL_SHIFT_n_15 ,\MUX_LOOP[0].DEL_SHIFT_n_16 ,\MUX_LOOP[0].DEL_SHIFT_n_17 }),
        .Q(Q),
        .aclk(aclk));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fix_to_float_xbip_pipe_v3_0_5_viv
   (m_axis_result_tvalid,
    s_axis_a_tvalid,
    aclk);
  output m_axis_result_tvalid;
  input s_axis_a_tvalid;
  input aclk;

  wire aclk;
  (* RTL_KEEP = "true" *) wire first_q;
  wire m_axis_result_tvalid;
  wire \pipe[2] ;
  wire s_axis_a_tvalid;

  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_a_tvalid),
        .Q(first_q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[2].pipe_reg[2][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(first_q),
        .Q(\pipe[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\pipe[2] ),
        .Q(m_axis_result_tvalid),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fix_to_float_xbip_pipe_v3_0_5_viv__parameterized11
   (EXP,
    Q,
    \opt_has_pipe.i_pipe[2].pipe_reg[2][1]_0 ,
    op_state,
    \RESULT_REG.NORMAL.exp_op_reg[6] ,
    \RESULT_REG.NORMAL.exp_op_reg[6]_0 ,
    D,
    aclk);
  output [0:0]EXP;
  output [0:0]Q;
  output \opt_has_pipe.i_pipe[2].pipe_reg[2][1]_0 ;
  input [0:0]op_state;
  input [0:0]\RESULT_REG.NORMAL.exp_op_reg[6] ;
  input \RESULT_REG.NORMAL.exp_op_reg[6]_0 ;
  input [1:0]D;
  input aclk;

  wire [1:0]D;
  wire [0:0]EXP;
  wire [0:0]Q;
  wire [0:0]\RESULT_REG.NORMAL.exp_op_reg[6] ;
  wire \RESULT_REG.NORMAL.exp_op_reg[6]_0 ;
  wire aclk;
  wire [0:0]op_state;
  wire \opt_has_pipe.first_q_reg_n_0_[0] ;
  wire \opt_has_pipe.first_q_reg_n_0_[1] ;
  wire \opt_has_pipe.i_pipe[2].pipe_reg[2][1]_0 ;
  wire \opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][0] ;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h40441511)) 
    \RESULT_REG.NORMAL.exp_op[5]_i_1 
       (.I0(op_state),
        .I1(Q),
        .I2(\RESULT_REG.NORMAL.exp_op_reg[6] ),
        .I3(\RESULT_REG.NORMAL.exp_op_reg[6]_0 ),
        .I4(\opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][0] ),
        .O(EXP));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h75FF)) 
    \RESULT_REG.NORMAL.exp_op[6]_i_1 
       (.I0(Q),
        .I1(\RESULT_REG.NORMAL.exp_op_reg[6] ),
        .I2(\RESULT_REG.NORMAL.exp_op_reg[6]_0 ),
        .I3(\opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][0] ),
        .O(\opt_has_pipe.i_pipe[2].pipe_reg[2][1]_0 ));
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
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[2].pipe_reg[2][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg_n_0_[0] ),
        .Q(\opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.i_pipe[2].pipe_reg[2][1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg_n_0_[1] ),
        .Q(Q),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fix_to_float_xbip_pipe_v3_0_5_viv__parameterized17
   (EXP,
    \opt_has_pipe.first_q_reg[0]_0 ,
    Q,
    op_state,
    \RESULT_REG.NORMAL.exp_op_reg[3] ,
    D,
    aclk);
  output [3:0]EXP;
  output \opt_has_pipe.first_q_reg[0]_0 ;
  input [0:0]Q;
  input [0:0]op_state;
  input [1:0]\RESULT_REG.NORMAL.exp_op_reg[3] ;
  input [1:0]D;
  input aclk;

  wire [1:0]D;
  wire [3:0]EXP;
  wire [0:0]Q;
  wire [1:0]\RESULT_REG.NORMAL.exp_op_reg[3] ;
  wire aclk;
  wire [0:0]op_state;
  wire \opt_has_pipe.first_q_reg[0]_0 ;
  wire \opt_has_pipe.first_q_reg_n_0_[0] ;
  wire \opt_has_pipe.first_q_reg_n_0_[1] ;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \RESULT_REG.NORMAL.exp_op[0]_i_1 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[1] ),
        .I1(Q),
        .I2(op_state),
        .O(EXP[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0E01)) 
    \RESULT_REG.NORMAL.exp_op[1]_i_1 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[1] ),
        .I1(Q),
        .I2(op_state),
        .I3(\opt_has_pipe.first_q_reg_n_0_[0] ),
        .O(EXP[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h44401115)) 
    \RESULT_REG.NORMAL.exp_op[2]_i_1 
       (.I0(op_state),
        .I1(\opt_has_pipe.first_q_reg_n_0_[0] ),
        .I2(\opt_has_pipe.first_q_reg_n_0_[1] ),
        .I3(Q),
        .I4(\RESULT_REG.NORMAL.exp_op_reg[3] [1]),
        .O(EXP[2]));
  LUT6 #(
    .INIT(64'h0000000057FFA800)) 
    \RESULT_REG.NORMAL.exp_op[3]_i_1 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[0] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[1] ),
        .I2(Q),
        .I3(\RESULT_REG.NORMAL.exp_op_reg[3] [1]),
        .I4(\RESULT_REG.NORMAL.exp_op_reg[3] [0]),
        .I5(op_state),
        .O(EXP[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h57FF)) 
    \RESULT_REG.NORMAL.exp_op[6]_i_2 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[0] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[1] ),
        .I2(Q),
        .I3(\RESULT_REG.NORMAL.exp_op_reg[3] [1]),
        .O(\opt_has_pipe.first_q_reg[0]_0 ));
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
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fix_to_float_xbip_pipe_v3_0_5_viv__parameterized17_4
   (EXP,
    Q,
    \RESULT_REG.NORMAL.exp_op_reg[4] ,
    op_state,
    \RESULT_REG.NORMAL.exp_op_reg[4]_0 ,
    D,
    aclk);
  output [0:0]EXP;
  output [1:0]Q;
  input \RESULT_REG.NORMAL.exp_op_reg[4] ;
  input [0:0]op_state;
  input [0:0]\RESULT_REG.NORMAL.exp_op_reg[4]_0 ;
  input [1:0]D;
  input aclk;

  wire [1:0]D;
  wire [0:0]EXP;
  wire [1:0]Q;
  wire \RESULT_REG.NORMAL.exp_op_reg[4] ;
  wire [0:0]\RESULT_REG.NORMAL.exp_op_reg[4]_0 ;
  wire aclk;
  wire [0:0]op_state;

  LUT4 #(
    .INIT(16'h0B04)) 
    \RESULT_REG.NORMAL.exp_op[4]_i_1 
       (.I0(Q[0]),
        .I1(\RESULT_REG.NORMAL.exp_op_reg[4] ),
        .I2(op_state),
        .I3(\RESULT_REG.NORMAL.exp_op_reg[4]_0 ),
        .O(EXP));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fix_to_float_xbip_pipe_v3_0_5_viv__parameterized21
   (\z_det_up[2]_1 ,
    \opt_has_pipe.first_q_reg[0]_0 ,
    \opt_has_pipe.first_q_reg[0]_i_3_0 ,
    c_int_16,
    CARRYS_OUT,
    c_int_32,
    \opt_has_pipe.first_q_reg[15]_0 ,
    c_int_48,
    \ZERO_DET[63].mc__0 ,
    c_int_15,
    c_int_31,
    c_int_47,
    c_int_63,
    c_int_14,
    c_int_30,
    c_int_46,
    c_int_62,
    c_int_13,
    c_int_29,
    c_int_45,
    c_int_61,
    c_int_12,
    c_int_28,
    c_int_44,
    c_int_60,
    c_int_11,
    c_int_27,
    c_int_43,
    c_int_59,
    c_int_10,
    c_int_26,
    c_int_42,
    c_int_58,
    c_int_9,
    c_int_25,
    c_int_41,
    c_int_57,
    c_int_8,
    c_int_24,
    c_int_40,
    c_int_56,
    c_int_7,
    c_int_23,
    c_int_39,
    c_int_55,
    c_int_6,
    c_int_22,
    c_int_38,
    c_int_54,
    c_int_5,
    c_int_21,
    c_int_37,
    c_int_53,
    c_int_4,
    c_int_20,
    c_int_36,
    c_int_52,
    c_int_3,
    c_int_19,
    c_int_35,
    c_int_51,
    c_int_2,
    c_int_18,
    c_int_34,
    c_int_50,
    c_int_1,
    c_int_17,
    c_int_33,
    c_int_49,
    aclk);
  output [0:0]\z_det_up[2]_1 ;
  input [2:0]\opt_has_pipe.first_q_reg[0]_0 ;
  input [7:0]\opt_has_pipe.first_q_reg[0]_i_3_0 ;
  input c_int_16;
  input [0:0]CARRYS_OUT;
  input c_int_32;
  input [1:0]\opt_has_pipe.first_q_reg[15]_0 ;
  input c_int_48;
  input \ZERO_DET[63].mc__0 ;
  input c_int_15;
  input c_int_31;
  input c_int_47;
  input c_int_63;
  input c_int_14;
  input c_int_30;
  input c_int_46;
  input c_int_62;
  input c_int_13;
  input c_int_29;
  input c_int_45;
  input c_int_61;
  input c_int_12;
  input c_int_28;
  input c_int_44;
  input c_int_60;
  input c_int_11;
  input c_int_27;
  input c_int_43;
  input c_int_59;
  input c_int_10;
  input c_int_26;
  input c_int_42;
  input c_int_58;
  input c_int_9;
  input c_int_25;
  input c_int_41;
  input c_int_57;
  input c_int_8;
  input c_int_24;
  input c_int_40;
  input c_int_56;
  input c_int_7;
  input c_int_23;
  input c_int_39;
  input c_int_55;
  input c_int_6;
  input c_int_22;
  input c_int_38;
  input c_int_54;
  input c_int_5;
  input c_int_21;
  input c_int_37;
  input c_int_53;
  input c_int_4;
  input c_int_20;
  input c_int_36;
  input c_int_52;
  input c_int_3;
  input c_int_19;
  input c_int_35;
  input c_int_51;
  input c_int_2;
  input c_int_18;
  input c_int_34;
  input c_int_50;
  input c_int_1;
  input c_int_17;
  input c_int_33;
  input c_int_49;
  input aclk;

  wire [0:0]CARRYS_OUT;
  wire \ZERO_DET[63].mc__0 ;
  wire aclk;
  wire c_int_1;
  wire c_int_10;
  wire c_int_11;
  wire c_int_12;
  wire c_int_13;
  wire c_int_14;
  wire c_int_15;
  wire c_int_16;
  wire c_int_17;
  wire c_int_18;
  wire c_int_19;
  wire c_int_2;
  wire c_int_20;
  wire c_int_21;
  wire c_int_22;
  wire c_int_23;
  wire c_int_24;
  wire c_int_25;
  wire c_int_26;
  wire c_int_27;
  wire c_int_28;
  wire c_int_29;
  wire c_int_3;
  wire c_int_30;
  wire c_int_31;
  wire c_int_32;
  wire c_int_33;
  wire c_int_34;
  wire c_int_35;
  wire c_int_36;
  wire c_int_37;
  wire c_int_38;
  wire c_int_39;
  wire c_int_4;
  wire c_int_40;
  wire c_int_41;
  wire c_int_42;
  wire c_int_43;
  wire c_int_44;
  wire c_int_45;
  wire c_int_46;
  wire c_int_47;
  wire c_int_48;
  wire c_int_49;
  wire c_int_5;
  wire c_int_50;
  wire c_int_51;
  wire c_int_52;
  wire c_int_53;
  wire c_int_54;
  wire c_int_55;
  wire c_int_56;
  wire c_int_57;
  wire c_int_58;
  wire c_int_59;
  wire c_int_6;
  wire c_int_60;
  wire c_int_61;
  wire c_int_62;
  wire c_int_63;
  wire c_int_7;
  wire c_int_8;
  wire c_int_9;
  (* RTL_KEEP = "true" *) wire [15:0]first_q;
  wire \opt_has_pipe.first_q[0]_i_2__1_n_0 ;
  wire \opt_has_pipe.first_q[0]_i_4_n_0 ;
  wire \opt_has_pipe.first_q[0]_i_5_n_0 ;
  wire \opt_has_pipe.first_q[0]_i_6_n_0 ;
  wire \opt_has_pipe.first_q[0]_i_7_n_0 ;
  wire \opt_has_pipe.first_q[10]_i_2__0_n_0 ;
  wire \opt_has_pipe.first_q[11]_i_2__0_n_0 ;
  wire \opt_has_pipe.first_q[12]_i_2__0_n_0 ;
  wire \opt_has_pipe.first_q[13]_i_2_n_0 ;
  wire \opt_has_pipe.first_q[14]_i_2_n_0 ;
  wire \opt_has_pipe.first_q[15]_i_2_n_0 ;
  wire \opt_has_pipe.first_q[1]_i_2__2_n_0 ;
  wire \opt_has_pipe.first_q[2]_i_2__1_n_0 ;
  wire \opt_has_pipe.first_q[3]_i_2__0_n_0 ;
  wire \opt_has_pipe.first_q[4]_i_2__0_n_0 ;
  wire \opt_has_pipe.first_q[5]_i_2__0_n_0 ;
  wire \opt_has_pipe.first_q[6]_i_2__1_n_0 ;
  wire \opt_has_pipe.first_q[7]_i_2__1_n_0 ;
  wire \opt_has_pipe.first_q[8]_i_2__0_n_0 ;
  wire \opt_has_pipe.first_q[9]_i_2__0_n_0 ;
  wire [2:0]\opt_has_pipe.first_q_reg[0]_0 ;
  wire \opt_has_pipe.first_q_reg[0]_i_2_n_0 ;
  wire [7:0]\opt_has_pipe.first_q_reg[0]_i_3_0 ;
  wire \opt_has_pipe.first_q_reg[0]_i_3_n_0 ;
  wire [1:0]\opt_has_pipe.first_q_reg[15]_0 ;
  wire [15:0]\z_det_up[0] ;
  wire [0:0]\z_det_up[2]_1 ;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[0]_i_1__1 
       (.I0(c_int_1),
        .I1(CARRYS_OUT),
        .I2(c_int_17),
        .I3(\opt_has_pipe.first_q_reg[15]_0 [1]),
        .I4(\opt_has_pipe.first_q[0]_i_2__1_n_0 ),
        .O(\z_det_up[0] [0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[0]_i_2__1 
       (.I0(c_int_33),
        .I1(\opt_has_pipe.first_q_reg[15]_0 [0]),
        .I2(c_int_49),
        .O(\opt_has_pipe.first_q[0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[0]_i_4 
       (.I0(first_q[12]),
        .I1(first_q[14]),
        .I2(\opt_has_pipe.first_q_reg[0]_i_3_0 [0]),
        .I3(first_q[13]),
        .I4(\opt_has_pipe.first_q_reg[0]_i_3_0 [1]),
        .I5(first_q[15]),
        .O(\opt_has_pipe.first_q[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[0]_i_5 
       (.I0(first_q[8]),
        .I1(first_q[10]),
        .I2(\opt_has_pipe.first_q_reg[0]_i_3_0 [2]),
        .I3(first_q[9]),
        .I4(\opt_has_pipe.first_q_reg[0]_i_3_0 [3]),
        .I5(first_q[11]),
        .O(\opt_has_pipe.first_q[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[0]_i_6 
       (.I0(first_q[4]),
        .I1(first_q[6]),
        .I2(\opt_has_pipe.first_q_reg[0]_i_3_0 [4]),
        .I3(first_q[5]),
        .I4(\opt_has_pipe.first_q_reg[0]_i_3_0 [5]),
        .I5(first_q[7]),
        .O(\opt_has_pipe.first_q[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[0]_i_7 
       (.I0(first_q[0]),
        .I1(first_q[2]),
        .I2(\opt_has_pipe.first_q_reg[0]_i_3_0 [6]),
        .I3(first_q[1]),
        .I4(\opt_has_pipe.first_q_reg[0]_i_3_0 [7]),
        .I5(first_q[3]),
        .O(\opt_has_pipe.first_q[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[10]_i_1__0 
       (.I0(c_int_11),
        .I1(CARRYS_OUT),
        .I2(c_int_27),
        .I3(\opt_has_pipe.first_q_reg[15]_0 [1]),
        .I4(\opt_has_pipe.first_q[10]_i_2__0_n_0 ),
        .O(\z_det_up[0] [10]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[10]_i_2__0 
       (.I0(c_int_43),
        .I1(\opt_has_pipe.first_q_reg[15]_0 [0]),
        .I2(c_int_59),
        .O(\opt_has_pipe.first_q[10]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[11]_i_1__0 
       (.I0(c_int_12),
        .I1(CARRYS_OUT),
        .I2(c_int_28),
        .I3(\opt_has_pipe.first_q_reg[15]_0 [1]),
        .I4(\opt_has_pipe.first_q[11]_i_2__0_n_0 ),
        .O(\z_det_up[0] [11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[11]_i_2__0 
       (.I0(c_int_44),
        .I1(\opt_has_pipe.first_q_reg[15]_0 [0]),
        .I2(c_int_60),
        .O(\opt_has_pipe.first_q[11]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[12]_i_1__0 
       (.I0(c_int_13),
        .I1(CARRYS_OUT),
        .I2(c_int_29),
        .I3(\opt_has_pipe.first_q_reg[15]_0 [1]),
        .I4(\opt_has_pipe.first_q[12]_i_2__0_n_0 ),
        .O(\z_det_up[0] [12]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[12]_i_2__0 
       (.I0(c_int_45),
        .I1(\opt_has_pipe.first_q_reg[15]_0 [0]),
        .I2(c_int_61),
        .O(\opt_has_pipe.first_q[12]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[13]_i_1__0 
       (.I0(c_int_14),
        .I1(CARRYS_OUT),
        .I2(c_int_30),
        .I3(\opt_has_pipe.first_q_reg[15]_0 [1]),
        .I4(\opt_has_pipe.first_q[13]_i_2_n_0 ),
        .O(\z_det_up[0] [13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[13]_i_2 
       (.I0(c_int_46),
        .I1(\opt_has_pipe.first_q_reg[15]_0 [0]),
        .I2(c_int_62),
        .O(\opt_has_pipe.first_q[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[14]_i_1__0 
       (.I0(c_int_15),
        .I1(CARRYS_OUT),
        .I2(c_int_31),
        .I3(\opt_has_pipe.first_q_reg[15]_0 [1]),
        .I4(\opt_has_pipe.first_q[14]_i_2_n_0 ),
        .O(\z_det_up[0] [14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[14]_i_2 
       (.I0(c_int_47),
        .I1(\opt_has_pipe.first_q_reg[15]_0 [0]),
        .I2(c_int_63),
        .O(\opt_has_pipe.first_q[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[15]_i_1__0 
       (.I0(c_int_16),
        .I1(CARRYS_OUT),
        .I2(c_int_32),
        .I3(\opt_has_pipe.first_q_reg[15]_0 [1]),
        .I4(\opt_has_pipe.first_q[15]_i_2_n_0 ),
        .O(\z_det_up[0] [15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[15]_i_2 
       (.I0(c_int_48),
        .I1(\opt_has_pipe.first_q_reg[15]_0 [0]),
        .I2(\ZERO_DET[63].mc__0 ),
        .O(\opt_has_pipe.first_q[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[1]_i_1__4 
       (.I0(c_int_2),
        .I1(CARRYS_OUT),
        .I2(c_int_18),
        .I3(\opt_has_pipe.first_q_reg[15]_0 [1]),
        .I4(\opt_has_pipe.first_q[1]_i_2__2_n_0 ),
        .O(\z_det_up[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[1]_i_2__2 
       (.I0(c_int_34),
        .I1(\opt_has_pipe.first_q_reg[15]_0 [0]),
        .I2(c_int_50),
        .O(\opt_has_pipe.first_q[1]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[2]_i_1__1 
       (.I0(c_int_3),
        .I1(CARRYS_OUT),
        .I2(c_int_19),
        .I3(\opt_has_pipe.first_q_reg[15]_0 [1]),
        .I4(\opt_has_pipe.first_q[2]_i_2__1_n_0 ),
        .O(\z_det_up[0] [2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[2]_i_2__1 
       (.I0(c_int_35),
        .I1(\opt_has_pipe.first_q_reg[15]_0 [0]),
        .I2(c_int_51),
        .O(\opt_has_pipe.first_q[2]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[3]_i_1__0 
       (.I0(c_int_4),
        .I1(CARRYS_OUT),
        .I2(c_int_20),
        .I3(\opt_has_pipe.first_q_reg[15]_0 [1]),
        .I4(\opt_has_pipe.first_q[3]_i_2__0_n_0 ),
        .O(\z_det_up[0] [3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[3]_i_2__0 
       (.I0(c_int_36),
        .I1(\opt_has_pipe.first_q_reg[15]_0 [0]),
        .I2(c_int_52),
        .O(\opt_has_pipe.first_q[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[4]_i_1__0 
       (.I0(c_int_5),
        .I1(CARRYS_OUT),
        .I2(c_int_21),
        .I3(\opt_has_pipe.first_q_reg[15]_0 [1]),
        .I4(\opt_has_pipe.first_q[4]_i_2__0_n_0 ),
        .O(\z_det_up[0] [4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[4]_i_2__0 
       (.I0(c_int_37),
        .I1(\opt_has_pipe.first_q_reg[15]_0 [0]),
        .I2(c_int_53),
        .O(\opt_has_pipe.first_q[4]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[5]_i_1__0 
       (.I0(c_int_6),
        .I1(CARRYS_OUT),
        .I2(c_int_22),
        .I3(\opt_has_pipe.first_q_reg[15]_0 [1]),
        .I4(\opt_has_pipe.first_q[5]_i_2__0_n_0 ),
        .O(\z_det_up[0] [5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[5]_i_2__0 
       (.I0(c_int_38),
        .I1(\opt_has_pipe.first_q_reg[15]_0 [0]),
        .I2(c_int_54),
        .O(\opt_has_pipe.first_q[5]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[6]_i_1__1 
       (.I0(c_int_7),
        .I1(CARRYS_OUT),
        .I2(c_int_23),
        .I3(\opt_has_pipe.first_q_reg[15]_0 [1]),
        .I4(\opt_has_pipe.first_q[6]_i_2__1_n_0 ),
        .O(\z_det_up[0] [6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[6]_i_2__1 
       (.I0(c_int_39),
        .I1(\opt_has_pipe.first_q_reg[15]_0 [0]),
        .I2(c_int_55),
        .O(\opt_has_pipe.first_q[6]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[7]_i_1__1 
       (.I0(c_int_8),
        .I1(CARRYS_OUT),
        .I2(c_int_24),
        .I3(\opt_has_pipe.first_q_reg[15]_0 [1]),
        .I4(\opt_has_pipe.first_q[7]_i_2__1_n_0 ),
        .O(\z_det_up[0] [7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[7]_i_2__1 
       (.I0(c_int_40),
        .I1(\opt_has_pipe.first_q_reg[15]_0 [0]),
        .I2(c_int_56),
        .O(\opt_has_pipe.first_q[7]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[8]_i_1__0 
       (.I0(c_int_9),
        .I1(CARRYS_OUT),
        .I2(c_int_25),
        .I3(\opt_has_pipe.first_q_reg[15]_0 [1]),
        .I4(\opt_has_pipe.first_q[8]_i_2__0_n_0 ),
        .O(\z_det_up[0] [8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[8]_i_2__0 
       (.I0(c_int_41),
        .I1(\opt_has_pipe.first_q_reg[15]_0 [0]),
        .I2(c_int_57),
        .O(\opt_has_pipe.first_q[8]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[9]_i_1__0 
       (.I0(c_int_10),
        .I1(CARRYS_OUT),
        .I2(c_int_26),
        .I3(\opt_has_pipe.first_q_reg[15]_0 [1]),
        .I4(\opt_has_pipe.first_q[9]_i_2__0_n_0 ),
        .O(\z_det_up[0] [9]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[9]_i_2__0 
       (.I0(c_int_42),
        .I1(\opt_has_pipe.first_q_reg[15]_0 [0]),
        .I2(c_int_58),
        .O(\opt_has_pipe.first_q[9]_i_2__0_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\z_det_up[0] [0]),
        .Q(first_q[0]),
        .R(1'b0));
  MUXF8 \opt_has_pipe.first_q_reg[0]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[0]_i_2_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[0]_i_3_n_0 ),
        .O(\z_det_up[2]_1 ),
        .S(\opt_has_pipe.first_q_reg[0]_0 [1]));
  MUXF7 \opt_has_pipe.first_q_reg[0]_i_2 
       (.I0(\opt_has_pipe.first_q[0]_i_4_n_0 ),
        .I1(\opt_has_pipe.first_q[0]_i_5_n_0 ),
        .O(\opt_has_pipe.first_q_reg[0]_i_2_n_0 ),
        .S(\opt_has_pipe.first_q_reg[0]_0 [0]));
  MUXF7 \opt_has_pipe.first_q_reg[0]_i_3 
       (.I0(\opt_has_pipe.first_q[0]_i_6_n_0 ),
        .I1(\opt_has_pipe.first_q[0]_i_7_n_0 ),
        .O(\opt_has_pipe.first_q_reg[0]_i_3_n_0 ),
        .S(\opt_has_pipe.first_q_reg[0]_0 [2]));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\z_det_up[0] [10]),
        .Q(first_q[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\z_det_up[0] [11]),
        .Q(first_q[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\z_det_up[0] [12]),
        .Q(first_q[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\z_det_up[0] [13]),
        .Q(first_q[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\z_det_up[0] [14]),
        .Q(first_q[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\z_det_up[0] [15]),
        .Q(first_q[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\z_det_up[0] [1]),
        .Q(first_q[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\z_det_up[0] [2]),
        .Q(first_q[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\z_det_up[0] [3]),
        .Q(first_q[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\z_det_up[0] [4]),
        .Q(first_q[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\z_det_up[0] [5]),
        .Q(first_q[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\z_det_up[0] [6]),
        .Q(first_q[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\z_det_up[0] [7]),
        .Q(first_q[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\z_det_up[0] [8]),
        .Q(first_q[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\z_det_up[0] [9]),
        .Q(first_q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fix_to_float_xbip_pipe_v3_0_5_viv__parameterized27
   (out,
    \z_det_up[2]_1 ,
    aclk);
  output out;
  input [0:0]\z_det_up[2]_1 ;
  input aclk;

  wire aclk;
  (* RTL_KEEP = "true" *) wire first_q;
  wire [0:0]\z_det_up[2]_1 ;

  assign out = first_q;
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\z_det_up[2]_1 ),
        .Q(first_q),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fix_to_float_xbip_pipe_v3_0_5_viv__parameterized29
   (Q,
    D,
    aclk);
  output [17:0]Q;
  input [17:0]D;
  input aclk;

  wire [17:0]D;
  wire [17:0]Q;
  wire aclk;

  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fix_to_float_xbip_pipe_v3_0_5_viv__parameterized29_1
   (D,
    \opt_has_pipe.first_q_reg[18]_0 ,
    out,
    \opt_has_pipe.first_q_reg[28]_0 ,
    aclk,
    \opt_has_pipe.first_q_reg[33]_0 ,
    \opt_has_pipe.first_q_reg[33]_1 ,
    \opt_has_pipe.first_q_reg[32]_0 ,
    \opt_has_pipe.first_q_reg[31]_0 ,
    \opt_has_pipe.first_q_reg[30]_0 ,
    \opt_has_pipe.first_q_reg[29]_0 );
  output [17:0]D;
  input [2:0]\opt_has_pipe.first_q_reg[18]_0 ;
  input [7:0]out;
  input [27:0]\opt_has_pipe.first_q_reg[28]_0 ;
  input aclk;
  input [0:0]\opt_has_pipe.first_q_reg[33]_0 ;
  input \opt_has_pipe.first_q_reg[33]_1 ;
  input \opt_has_pipe.first_q_reg[32]_0 ;
  input \opt_has_pipe.first_q_reg[31]_0 ;
  input \opt_has_pipe.first_q_reg[30]_0 ;
  input \opt_has_pipe.first_q_reg[29]_0 ;

  wire [17:0]D;
  wire aclk;
  wire \opt_has_pipe.first_q[10]_i_4_n_0 ;
  wire \opt_has_pipe.first_q[10]_i_5_n_0 ;
  wire \opt_has_pipe.first_q[10]_i_6_n_0 ;
  wire \opt_has_pipe.first_q[10]_i_7_n_0 ;
  wire \opt_has_pipe.first_q[11]_i_4_n_0 ;
  wire \opt_has_pipe.first_q[11]_i_5_n_0 ;
  wire \opt_has_pipe.first_q[11]_i_6_n_0 ;
  wire \opt_has_pipe.first_q[11]_i_7_n_0 ;
  wire \opt_has_pipe.first_q[12]_i_4_n_0 ;
  wire \opt_has_pipe.first_q[12]_i_5_n_0 ;
  wire \opt_has_pipe.first_q[12]_i_6_n_0 ;
  wire \opt_has_pipe.first_q[12]_i_7_n_0 ;
  wire \opt_has_pipe.first_q[13]_i_4_n_0 ;
  wire \opt_has_pipe.first_q[13]_i_5_n_0 ;
  wire \opt_has_pipe.first_q[13]_i_6_n_0 ;
  wire \opt_has_pipe.first_q[13]_i_7_n_0 ;
  wire \opt_has_pipe.first_q[14]_i_4_n_0 ;
  wire \opt_has_pipe.first_q[14]_i_5_n_0 ;
  wire \opt_has_pipe.first_q[14]_i_6_n_0 ;
  wire \opt_has_pipe.first_q[14]_i_7_n_0 ;
  wire \opt_has_pipe.first_q[15]_i_4_n_0 ;
  wire \opt_has_pipe.first_q[15]_i_5_n_0 ;
  wire \opt_has_pipe.first_q[15]_i_6_n_0 ;
  wire \opt_has_pipe.first_q[15]_i_7_n_0 ;
  wire \opt_has_pipe.first_q[16]_i_4_n_0 ;
  wire \opt_has_pipe.first_q[16]_i_5_n_0 ;
  wire \opt_has_pipe.first_q[16]_i_6_n_0 ;
  wire \opt_has_pipe.first_q[16]_i_7_n_0 ;
  wire \opt_has_pipe.first_q[17]_i_4_n_0 ;
  wire \opt_has_pipe.first_q[17]_i_5_n_0 ;
  wire \opt_has_pipe.first_q[17]_i_6_n_0 ;
  wire \opt_has_pipe.first_q[17]_i_7_n_0 ;
  wire \opt_has_pipe.first_q[18]_i_4_n_0 ;
  wire \opt_has_pipe.first_q[18]_i_5_n_0 ;
  wire \opt_has_pipe.first_q[18]_i_6_n_0 ;
  wire \opt_has_pipe.first_q[18]_i_7_n_0 ;
  wire \opt_has_pipe.first_q[1]_i_4__0_n_0 ;
  wire \opt_has_pipe.first_q[1]_i_5__0_n_0 ;
  wire \opt_has_pipe.first_q[1]_i_6__0_n_0 ;
  wire \opt_has_pipe.first_q[1]_i_7__0_n_0 ;
  wire \opt_has_pipe.first_q[2]_i_4__0_n_0 ;
  wire \opt_has_pipe.first_q[2]_i_5__0_n_0 ;
  wire \opt_has_pipe.first_q[2]_i_6__0_n_0 ;
  wire \opt_has_pipe.first_q[2]_i_7__0_n_0 ;
  wire \opt_has_pipe.first_q[3]_i_4__0_n_0 ;
  wire \opt_has_pipe.first_q[3]_i_5__0_n_0 ;
  wire \opt_has_pipe.first_q[3]_i_6__0_n_0 ;
  wire \opt_has_pipe.first_q[3]_i_7__0_n_0 ;
  wire \opt_has_pipe.first_q[4]_i_4__0_n_0 ;
  wire \opt_has_pipe.first_q[4]_i_5__0_n_0 ;
  wire \opt_has_pipe.first_q[4]_i_6__0_n_0 ;
  wire \opt_has_pipe.first_q[4]_i_7__0_n_0 ;
  wire \opt_has_pipe.first_q[5]_i_4__0_n_0 ;
  wire \opt_has_pipe.first_q[5]_i_5__0_n_0 ;
  wire \opt_has_pipe.first_q[5]_i_6__0_n_0 ;
  wire \opt_has_pipe.first_q[5]_i_7__0_n_0 ;
  wire \opt_has_pipe.first_q[6]_i_4__0_n_0 ;
  wire \opt_has_pipe.first_q[6]_i_5_n_0 ;
  wire \opt_has_pipe.first_q[6]_i_6_n_0 ;
  wire \opt_has_pipe.first_q[6]_i_7_n_0 ;
  wire \opt_has_pipe.first_q[7]_i_4__0_n_0 ;
  wire \opt_has_pipe.first_q[7]_i_5_n_0 ;
  wire \opt_has_pipe.first_q[7]_i_6_n_0 ;
  wire \opt_has_pipe.first_q[7]_i_7_n_0 ;
  wire \opt_has_pipe.first_q[8]_i_4_n_0 ;
  wire \opt_has_pipe.first_q[8]_i_5_n_0 ;
  wire \opt_has_pipe.first_q[8]_i_6_n_0 ;
  wire \opt_has_pipe.first_q[8]_i_7_n_0 ;
  wire \opt_has_pipe.first_q[9]_i_4_n_0 ;
  wire \opt_has_pipe.first_q[9]_i_5_n_0 ;
  wire \opt_has_pipe.first_q[9]_i_6_n_0 ;
  wire \opt_has_pipe.first_q[9]_i_7_n_0 ;
  wire \opt_has_pipe.first_q_reg[10]_i_2_n_0 ;
  wire \opt_has_pipe.first_q_reg[10]_i_3_n_0 ;
  wire \opt_has_pipe.first_q_reg[11]_i_2_n_0 ;
  wire \opt_has_pipe.first_q_reg[11]_i_3_n_0 ;
  wire \opt_has_pipe.first_q_reg[12]_i_2_n_0 ;
  wire \opt_has_pipe.first_q_reg[12]_i_3_n_0 ;
  wire \opt_has_pipe.first_q_reg[13]_i_2_n_0 ;
  wire \opt_has_pipe.first_q_reg[13]_i_3_n_0 ;
  wire \opt_has_pipe.first_q_reg[14]_i_2_n_0 ;
  wire \opt_has_pipe.first_q_reg[14]_i_3_n_0 ;
  wire \opt_has_pipe.first_q_reg[15]_i_2_n_0 ;
  wire \opt_has_pipe.first_q_reg[15]_i_3_n_0 ;
  wire \opt_has_pipe.first_q_reg[16]_i_2_n_0 ;
  wire \opt_has_pipe.first_q_reg[16]_i_3_n_0 ;
  wire \opt_has_pipe.first_q_reg[17]_i_2_n_0 ;
  wire \opt_has_pipe.first_q_reg[17]_i_3_n_0 ;
  wire [2:0]\opt_has_pipe.first_q_reg[18]_0 ;
  wire \opt_has_pipe.first_q_reg[18]_i_2_n_0 ;
  wire \opt_has_pipe.first_q_reg[18]_i_3_n_0 ;
  wire \opt_has_pipe.first_q_reg[1]_i_2__0_n_0 ;
  wire \opt_has_pipe.first_q_reg[1]_i_3__0_n_0 ;
  wire [27:0]\opt_has_pipe.first_q_reg[28]_0 ;
  wire \opt_has_pipe.first_q_reg[29]_0 ;
  wire \opt_has_pipe.first_q_reg[2]_i_2__0_n_0 ;
  wire \opt_has_pipe.first_q_reg[2]_i_3__0_n_0 ;
  wire \opt_has_pipe.first_q_reg[30]_0 ;
  wire \opt_has_pipe.first_q_reg[31]_0 ;
  wire \opt_has_pipe.first_q_reg[32]_0 ;
  wire [0:0]\opt_has_pipe.first_q_reg[33]_0 ;
  wire \opt_has_pipe.first_q_reg[33]_1 ;
  wire \opt_has_pipe.first_q_reg[3]_i_2__0_n_0 ;
  wire \opt_has_pipe.first_q_reg[3]_i_3__0_n_0 ;
  wire \opt_has_pipe.first_q_reg[4]_i_2__0_n_0 ;
  wire \opt_has_pipe.first_q_reg[4]_i_3__0_n_0 ;
  wire \opt_has_pipe.first_q_reg[5]_i_2__0_n_0 ;
  wire \opt_has_pipe.first_q_reg[5]_i_3__0_n_0 ;
  wire \opt_has_pipe.first_q_reg[6]_i_2_n_0 ;
  wire \opt_has_pipe.first_q_reg[6]_i_3_n_0 ;
  wire \opt_has_pipe.first_q_reg[7]_i_2_n_0 ;
  wire \opt_has_pipe.first_q_reg[7]_i_3_n_0 ;
  wire \opt_has_pipe.first_q_reg[8]_i_2_n_0 ;
  wire \opt_has_pipe.first_q_reg[8]_i_3_n_0 ;
  wire \opt_has_pipe.first_q_reg[9]_i_2_n_0 ;
  wire \opt_has_pipe.first_q_reg[9]_i_3_n_0 ;
  wire \opt_has_pipe.first_q_reg_n_0_[10] ;
  wire \opt_has_pipe.first_q_reg_n_0_[11] ;
  wire \opt_has_pipe.first_q_reg_n_0_[12] ;
  wire \opt_has_pipe.first_q_reg_n_0_[13] ;
  wire \opt_has_pipe.first_q_reg_n_0_[14] ;
  wire \opt_has_pipe.first_q_reg_n_0_[15] ;
  wire \opt_has_pipe.first_q_reg_n_0_[16] ;
  wire \opt_has_pipe.first_q_reg_n_0_[17] ;
  wire \opt_has_pipe.first_q_reg_n_0_[18] ;
  wire \opt_has_pipe.first_q_reg_n_0_[19] ;
  wire \opt_has_pipe.first_q_reg_n_0_[1] ;
  wire \opt_has_pipe.first_q_reg_n_0_[20] ;
  wire \opt_has_pipe.first_q_reg_n_0_[21] ;
  wire \opt_has_pipe.first_q_reg_n_0_[22] ;
  wire \opt_has_pipe.first_q_reg_n_0_[23] ;
  wire \opt_has_pipe.first_q_reg_n_0_[24] ;
  wire \opt_has_pipe.first_q_reg_n_0_[25] ;
  wire \opt_has_pipe.first_q_reg_n_0_[26] ;
  wire \opt_has_pipe.first_q_reg_n_0_[27] ;
  wire \opt_has_pipe.first_q_reg_n_0_[28] ;
  wire \opt_has_pipe.first_q_reg_n_0_[29] ;
  wire \opt_has_pipe.first_q_reg_n_0_[2] ;
  wire \opt_has_pipe.first_q_reg_n_0_[30] ;
  wire \opt_has_pipe.first_q_reg_n_0_[31] ;
  wire \opt_has_pipe.first_q_reg_n_0_[32] ;
  wire \opt_has_pipe.first_q_reg_n_0_[33] ;
  wire \opt_has_pipe.first_q_reg_n_0_[3] ;
  wire \opt_has_pipe.first_q_reg_n_0_[4] ;
  wire \opt_has_pipe.first_q_reg_n_0_[5] ;
  wire \opt_has_pipe.first_q_reg_n_0_[6] ;
  wire \opt_has_pipe.first_q_reg_n_0_[7] ;
  wire \opt_has_pipe.first_q_reg_n_0_[8] ;
  wire \opt_has_pipe.first_q_reg_n_0_[9] ;
  wire [7:0]out;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[10]_i_4 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .I2(out[0]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .O(\opt_has_pipe.first_q[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[10]_i_5 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[17] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[15] ),
        .I2(out[2]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[16] ),
        .I4(out[3]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[14] ),
        .O(\opt_has_pipe.first_q[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[10]_i_6 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[21] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[19] ),
        .I2(out[4]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[20] ),
        .I4(out[5]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[18] ),
        .O(\opt_has_pipe.first_q[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[10]_i_7 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[25] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[23] ),
        .I2(out[6]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[24] ),
        .I4(out[7]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[22] ),
        .O(\opt_has_pipe.first_q[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[11]_i_4 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[14] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .I2(out[0]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .O(\opt_has_pipe.first_q[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[11]_i_5 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[18] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[16] ),
        .I2(out[2]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[17] ),
        .I4(out[3]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[15] ),
        .O(\opt_has_pipe.first_q[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[11]_i_6 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[22] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[20] ),
        .I2(out[4]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[21] ),
        .I4(out[5]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[19] ),
        .O(\opt_has_pipe.first_q[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[11]_i_7 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[26] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[24] ),
        .I2(out[6]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[25] ),
        .I4(out[7]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[23] ),
        .O(\opt_has_pipe.first_q[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[12]_i_4 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[15] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .I2(out[0]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[14] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .O(\opt_has_pipe.first_q[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[12]_i_5 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[19] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[17] ),
        .I2(out[2]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[18] ),
        .I4(out[3]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[16] ),
        .O(\opt_has_pipe.first_q[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[12]_i_6 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[23] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[21] ),
        .I2(out[4]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[22] ),
        .I4(out[5]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[20] ),
        .O(\opt_has_pipe.first_q[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[12]_i_7 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[27] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[25] ),
        .I2(out[6]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[26] ),
        .I4(out[7]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[24] ),
        .O(\opt_has_pipe.first_q[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[13]_i_4 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[16] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[14] ),
        .I2(out[0]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[15] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .O(\opt_has_pipe.first_q[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[13]_i_5 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[20] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[18] ),
        .I2(out[2]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[19] ),
        .I4(out[3]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[17] ),
        .O(\opt_has_pipe.first_q[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[13]_i_6 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[24] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[22] ),
        .I2(out[4]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[23] ),
        .I4(out[5]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[21] ),
        .O(\opt_has_pipe.first_q[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[13]_i_7 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[28] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[26] ),
        .I2(out[6]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[27] ),
        .I4(out[7]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[25] ),
        .O(\opt_has_pipe.first_q[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[14]_i_4 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[17] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[15] ),
        .I2(out[0]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[16] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[14] ),
        .O(\opt_has_pipe.first_q[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[14]_i_5 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[21] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[19] ),
        .I2(out[2]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[20] ),
        .I4(out[3]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[18] ),
        .O(\opt_has_pipe.first_q[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[14]_i_6 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[25] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[23] ),
        .I2(out[4]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[24] ),
        .I4(out[5]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[22] ),
        .O(\opt_has_pipe.first_q[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[14]_i_7 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[29] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[27] ),
        .I2(out[6]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[28] ),
        .I4(out[7]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[26] ),
        .O(\opt_has_pipe.first_q[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[15]_i_4 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[18] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[16] ),
        .I2(out[0]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[17] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[15] ),
        .O(\opt_has_pipe.first_q[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[15]_i_5 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[22] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[20] ),
        .I2(out[2]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[21] ),
        .I4(out[3]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[19] ),
        .O(\opt_has_pipe.first_q[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[15]_i_6 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[26] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[24] ),
        .I2(out[4]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[25] ),
        .I4(out[5]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[23] ),
        .O(\opt_has_pipe.first_q[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[15]_i_7 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[30] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[28] ),
        .I2(out[6]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[29] ),
        .I4(out[7]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[27] ),
        .O(\opt_has_pipe.first_q[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[16]_i_4 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[19] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[17] ),
        .I2(out[0]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[18] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[16] ),
        .O(\opt_has_pipe.first_q[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[16]_i_5 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[23] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[21] ),
        .I2(out[2]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[22] ),
        .I4(out[3]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[20] ),
        .O(\opt_has_pipe.first_q[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[16]_i_6 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[27] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[25] ),
        .I2(out[4]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[26] ),
        .I4(out[5]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[24] ),
        .O(\opt_has_pipe.first_q[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[16]_i_7 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[31] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[29] ),
        .I2(out[6]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[30] ),
        .I4(out[7]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[28] ),
        .O(\opt_has_pipe.first_q[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[17]_i_4 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[20] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[18] ),
        .I2(out[0]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[19] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[17] ),
        .O(\opt_has_pipe.first_q[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[17]_i_5 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[24] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[22] ),
        .I2(out[2]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[23] ),
        .I4(out[3]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[21] ),
        .O(\opt_has_pipe.first_q[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[17]_i_6 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[28] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[26] ),
        .I2(out[4]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[27] ),
        .I4(out[5]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[25] ),
        .O(\opt_has_pipe.first_q[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[17]_i_7 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[32] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[30] ),
        .I2(out[6]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[31] ),
        .I4(out[7]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[29] ),
        .O(\opt_has_pipe.first_q[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[18]_i_4 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[21] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[19] ),
        .I2(out[0]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[20] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[18] ),
        .O(\opt_has_pipe.first_q[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[18]_i_5 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[25] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[23] ),
        .I2(out[2]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[24] ),
        .I4(out[3]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[22] ),
        .O(\opt_has_pipe.first_q[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[18]_i_6 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[29] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[27] ),
        .I2(out[4]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[28] ),
        .I4(out[5]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[26] ),
        .O(\opt_has_pipe.first_q[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[18]_i_7 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[33] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[31] ),
        .I2(out[6]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[32] ),
        .I4(out[7]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[30] ),
        .O(\opt_has_pipe.first_q[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[1]_i_4__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[4] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[2] ),
        .I2(out[0]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[3] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[1] ),
        .O(\opt_has_pipe.first_q[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[1]_i_5__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[8] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[6] ),
        .I2(out[2]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[7] ),
        .I4(out[3]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[5] ),
        .O(\opt_has_pipe.first_q[1]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[1]_i_6__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .I2(out[4]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .I4(out[5]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[9] ),
        .O(\opt_has_pipe.first_q[1]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[1]_i_7__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[16] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[14] ),
        .I2(out[6]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[15] ),
        .I4(out[7]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .O(\opt_has_pipe.first_q[1]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[2]_i_4__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[5] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[3] ),
        .I2(out[0]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[4] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[2] ),
        .O(\opt_has_pipe.first_q[2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[2]_i_5__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[9] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[7] ),
        .I2(out[2]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[8] ),
        .I4(out[3]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[6] ),
        .O(\opt_has_pipe.first_q[2]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[2]_i_6__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .I2(out[4]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .I4(out[5]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .O(\opt_has_pipe.first_q[2]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[2]_i_7__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[17] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[15] ),
        .I2(out[6]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[16] ),
        .I4(out[7]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[14] ),
        .O(\opt_has_pipe.first_q[2]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[3]_i_4__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[6] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[4] ),
        .I2(out[0]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[5] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[3] ),
        .O(\opt_has_pipe.first_q[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[3]_i_5__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[8] ),
        .I2(out[2]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[9] ),
        .I4(out[3]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[7] ),
        .O(\opt_has_pipe.first_q[3]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[3]_i_6__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[14] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .I2(out[4]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .I4(out[5]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .O(\opt_has_pipe.first_q[3]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[3]_i_7__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[18] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[16] ),
        .I2(out[6]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[17] ),
        .I4(out[7]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[15] ),
        .O(\opt_has_pipe.first_q[3]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[4]_i_4__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[7] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[5] ),
        .I2(out[0]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[6] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[4] ),
        .O(\opt_has_pipe.first_q[4]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[4]_i_5__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[9] ),
        .I2(out[2]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .I4(out[3]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[8] ),
        .O(\opt_has_pipe.first_q[4]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[4]_i_6__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[15] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .I2(out[4]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[14] ),
        .I4(out[5]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .O(\opt_has_pipe.first_q[4]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[4]_i_7__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[19] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[17] ),
        .I2(out[6]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[18] ),
        .I4(out[7]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[16] ),
        .O(\opt_has_pipe.first_q[4]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[5]_i_4__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[8] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[6] ),
        .I2(out[0]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[7] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[5] ),
        .O(\opt_has_pipe.first_q[5]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[5]_i_5__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .I2(out[2]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .I4(out[3]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[9] ),
        .O(\opt_has_pipe.first_q[5]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[5]_i_6__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[16] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[14] ),
        .I2(out[4]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[15] ),
        .I4(out[5]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .O(\opt_has_pipe.first_q[5]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[5]_i_7__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[20] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[18] ),
        .I2(out[6]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[19] ),
        .I4(out[7]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[17] ),
        .O(\opt_has_pipe.first_q[5]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[6]_i_4__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[9] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[7] ),
        .I2(out[0]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[8] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[6] ),
        .O(\opt_has_pipe.first_q[6]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[6]_i_5 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .I2(out[2]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .I4(out[3]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .O(\opt_has_pipe.first_q[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[6]_i_6 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[17] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[15] ),
        .I2(out[4]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[16] ),
        .I4(out[5]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[14] ),
        .O(\opt_has_pipe.first_q[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[6]_i_7 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[21] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[19] ),
        .I2(out[6]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[20] ),
        .I4(out[7]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[18] ),
        .O(\opt_has_pipe.first_q[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[7]_i_4__0 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[8] ),
        .I2(out[0]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[9] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[7] ),
        .O(\opt_has_pipe.first_q[7]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[7]_i_5 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[14] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .I2(out[2]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .I4(out[3]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .O(\opt_has_pipe.first_q[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[7]_i_6 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[18] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[16] ),
        .I2(out[4]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[17] ),
        .I4(out[5]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[15] ),
        .O(\opt_has_pipe.first_q[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[7]_i_7 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[22] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[20] ),
        .I2(out[6]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[21] ),
        .I4(out[7]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[19] ),
        .O(\opt_has_pipe.first_q[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[8]_i_4 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[9] ),
        .I2(out[0]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[8] ),
        .O(\opt_has_pipe.first_q[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[8]_i_5 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[15] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .I2(out[2]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[14] ),
        .I4(out[3]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .O(\opt_has_pipe.first_q[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[8]_i_6 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[19] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[17] ),
        .I2(out[4]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[18] ),
        .I4(out[5]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[16] ),
        .O(\opt_has_pipe.first_q[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[8]_i_7 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[23] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[21] ),
        .I2(out[6]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[22] ),
        .I4(out[7]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[20] ),
        .O(\opt_has_pipe.first_q[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[9]_i_4 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .I2(out[0]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .I4(out[1]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[9] ),
        .O(\opt_has_pipe.first_q[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[9]_i_5 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[16] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[14] ),
        .I2(out[2]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[15] ),
        .I4(out[3]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .O(\opt_has_pipe.first_q[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[9]_i_6 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[20] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[18] ),
        .I2(out[4]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[19] ),
        .I4(out[5]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[17] ),
        .O(\opt_has_pipe.first_q[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \opt_has_pipe.first_q[9]_i_7 
       (.I0(\opt_has_pipe.first_q_reg_n_0_[24] ),
        .I1(\opt_has_pipe.first_q_reg_n_0_[22] ),
        .I2(out[6]),
        .I3(\opt_has_pipe.first_q_reg_n_0_[23] ),
        .I4(out[7]),
        .I5(\opt_has_pipe.first_q_reg_n_0_[21] ),
        .O(\opt_has_pipe.first_q[9]_i_7_n_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [9]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[10] ),
        .R(1'b0));
  MUXF8 \opt_has_pipe.first_q_reg[10]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[10]_i_2_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[10]_i_3_n_0 ),
        .O(D[9]),
        .S(\opt_has_pipe.first_q_reg[18]_0 [1]));
  MUXF7 \opt_has_pipe.first_q_reg[10]_i_2 
       (.I0(\opt_has_pipe.first_q[10]_i_4_n_0 ),
        .I1(\opt_has_pipe.first_q[10]_i_5_n_0 ),
        .O(\opt_has_pipe.first_q_reg[10]_i_2_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [0]));
  MUXF7 \opt_has_pipe.first_q_reg[10]_i_3 
       (.I0(\opt_has_pipe.first_q[10]_i_6_n_0 ),
        .I1(\opt_has_pipe.first_q[10]_i_7_n_0 ),
        .O(\opt_has_pipe.first_q_reg[10]_i_3_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [2]));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [10]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[11] ),
        .R(1'b0));
  MUXF8 \opt_has_pipe.first_q_reg[11]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[11]_i_2_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[11]_i_3_n_0 ),
        .O(D[10]),
        .S(\opt_has_pipe.first_q_reg[18]_0 [1]));
  MUXF7 \opt_has_pipe.first_q_reg[11]_i_2 
       (.I0(\opt_has_pipe.first_q[11]_i_4_n_0 ),
        .I1(\opt_has_pipe.first_q[11]_i_5_n_0 ),
        .O(\opt_has_pipe.first_q_reg[11]_i_2_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [0]));
  MUXF7 \opt_has_pipe.first_q_reg[11]_i_3 
       (.I0(\opt_has_pipe.first_q[11]_i_6_n_0 ),
        .I1(\opt_has_pipe.first_q[11]_i_7_n_0 ),
        .O(\opt_has_pipe.first_q_reg[11]_i_3_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [2]));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [11]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[12] ),
        .R(1'b0));
  MUXF8 \opt_has_pipe.first_q_reg[12]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[12]_i_2_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[12]_i_3_n_0 ),
        .O(D[11]),
        .S(\opt_has_pipe.first_q_reg[18]_0 [1]));
  MUXF7 \opt_has_pipe.first_q_reg[12]_i_2 
       (.I0(\opt_has_pipe.first_q[12]_i_4_n_0 ),
        .I1(\opt_has_pipe.first_q[12]_i_5_n_0 ),
        .O(\opt_has_pipe.first_q_reg[12]_i_2_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [0]));
  MUXF7 \opt_has_pipe.first_q_reg[12]_i_3 
       (.I0(\opt_has_pipe.first_q[12]_i_6_n_0 ),
        .I1(\opt_has_pipe.first_q[12]_i_7_n_0 ),
        .O(\opt_has_pipe.first_q_reg[12]_i_3_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [2]));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [12]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[13] ),
        .R(1'b0));
  MUXF8 \opt_has_pipe.first_q_reg[13]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[13]_i_2_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[13]_i_3_n_0 ),
        .O(D[12]),
        .S(\opt_has_pipe.first_q_reg[18]_0 [1]));
  MUXF7 \opt_has_pipe.first_q_reg[13]_i_2 
       (.I0(\opt_has_pipe.first_q[13]_i_4_n_0 ),
        .I1(\opt_has_pipe.first_q[13]_i_5_n_0 ),
        .O(\opt_has_pipe.first_q_reg[13]_i_2_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [0]));
  MUXF7 \opt_has_pipe.first_q_reg[13]_i_3 
       (.I0(\opt_has_pipe.first_q[13]_i_6_n_0 ),
        .I1(\opt_has_pipe.first_q[13]_i_7_n_0 ),
        .O(\opt_has_pipe.first_q_reg[13]_i_3_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [2]));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [13]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[14] ),
        .R(1'b0));
  MUXF8 \opt_has_pipe.first_q_reg[14]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[14]_i_2_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[14]_i_3_n_0 ),
        .O(D[13]),
        .S(\opt_has_pipe.first_q_reg[18]_0 [1]));
  MUXF7 \opt_has_pipe.first_q_reg[14]_i_2 
       (.I0(\opt_has_pipe.first_q[14]_i_4_n_0 ),
        .I1(\opt_has_pipe.first_q[14]_i_5_n_0 ),
        .O(\opt_has_pipe.first_q_reg[14]_i_2_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [0]));
  MUXF7 \opt_has_pipe.first_q_reg[14]_i_3 
       (.I0(\opt_has_pipe.first_q[14]_i_6_n_0 ),
        .I1(\opt_has_pipe.first_q[14]_i_7_n_0 ),
        .O(\opt_has_pipe.first_q_reg[14]_i_3_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [2]));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [14]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[15] ),
        .R(1'b0));
  MUXF8 \opt_has_pipe.first_q_reg[15]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[15]_i_2_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[15]_i_3_n_0 ),
        .O(D[14]),
        .S(\opt_has_pipe.first_q_reg[18]_0 [1]));
  MUXF7 \opt_has_pipe.first_q_reg[15]_i_2 
       (.I0(\opt_has_pipe.first_q[15]_i_4_n_0 ),
        .I1(\opt_has_pipe.first_q[15]_i_5_n_0 ),
        .O(\opt_has_pipe.first_q_reg[15]_i_2_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [0]));
  MUXF7 \opt_has_pipe.first_q_reg[15]_i_3 
       (.I0(\opt_has_pipe.first_q[15]_i_6_n_0 ),
        .I1(\opt_has_pipe.first_q[15]_i_7_n_0 ),
        .O(\opt_has_pipe.first_q_reg[15]_i_3_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [2]));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [15]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[16] ),
        .R(1'b0));
  MUXF8 \opt_has_pipe.first_q_reg[16]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[16]_i_2_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[16]_i_3_n_0 ),
        .O(D[15]),
        .S(\opt_has_pipe.first_q_reg[18]_0 [1]));
  MUXF7 \opt_has_pipe.first_q_reg[16]_i_2 
       (.I0(\opt_has_pipe.first_q[16]_i_4_n_0 ),
        .I1(\opt_has_pipe.first_q[16]_i_5_n_0 ),
        .O(\opt_has_pipe.first_q_reg[16]_i_2_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [0]));
  MUXF7 \opt_has_pipe.first_q_reg[16]_i_3 
       (.I0(\opt_has_pipe.first_q[16]_i_6_n_0 ),
        .I1(\opt_has_pipe.first_q[16]_i_7_n_0 ),
        .O(\opt_has_pipe.first_q_reg[16]_i_3_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [2]));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [16]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[17] ),
        .R(1'b0));
  MUXF8 \opt_has_pipe.first_q_reg[17]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[17]_i_2_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[17]_i_3_n_0 ),
        .O(D[16]),
        .S(\opt_has_pipe.first_q_reg[18]_0 [1]));
  MUXF7 \opt_has_pipe.first_q_reg[17]_i_2 
       (.I0(\opt_has_pipe.first_q[17]_i_4_n_0 ),
        .I1(\opt_has_pipe.first_q[17]_i_5_n_0 ),
        .O(\opt_has_pipe.first_q_reg[17]_i_2_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [0]));
  MUXF7 \opt_has_pipe.first_q_reg[17]_i_3 
       (.I0(\opt_has_pipe.first_q[17]_i_6_n_0 ),
        .I1(\opt_has_pipe.first_q[17]_i_7_n_0 ),
        .O(\opt_has_pipe.first_q_reg[17]_i_3_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [2]));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [17]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[18] ),
        .R(1'b0));
  MUXF8 \opt_has_pipe.first_q_reg[18]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[18]_i_2_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[18]_i_3_n_0 ),
        .O(D[17]),
        .S(\opt_has_pipe.first_q_reg[18]_0 [1]));
  MUXF7 \opt_has_pipe.first_q_reg[18]_i_2 
       (.I0(\opt_has_pipe.first_q[18]_i_4_n_0 ),
        .I1(\opt_has_pipe.first_q[18]_i_5_n_0 ),
        .O(\opt_has_pipe.first_q_reg[18]_i_2_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [0]));
  MUXF7 \opt_has_pipe.first_q_reg[18]_i_3 
       (.I0(\opt_has_pipe.first_q[18]_i_6_n_0 ),
        .I1(\opt_has_pipe.first_q[18]_i_7_n_0 ),
        .O(\opt_has_pipe.first_q_reg[18]_i_3_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [2]));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [18]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[19] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [0]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[1] ),
        .R(1'b0));
  MUXF8 \opt_has_pipe.first_q_reg[1]_i_1__0 
       (.I0(\opt_has_pipe.first_q_reg[1]_i_2__0_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[1]_i_3__0_n_0 ),
        .O(D[0]),
        .S(\opt_has_pipe.first_q_reg[18]_0 [1]));
  MUXF7 \opt_has_pipe.first_q_reg[1]_i_2__0 
       (.I0(\opt_has_pipe.first_q[1]_i_4__0_n_0 ),
        .I1(\opt_has_pipe.first_q[1]_i_5__0_n_0 ),
        .O(\opt_has_pipe.first_q_reg[1]_i_2__0_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [0]));
  MUXF7 \opt_has_pipe.first_q_reg[1]_i_3__0 
       (.I0(\opt_has_pipe.first_q[1]_i_6__0_n_0 ),
        .I1(\opt_has_pipe.first_q[1]_i_7__0_n_0 ),
        .O(\opt_has_pipe.first_q_reg[1]_i_3__0_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [2]));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [19]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[20] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [20]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[21] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [21]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[22] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [22]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[23] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [23]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[24] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [24]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[25] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [25]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[26] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [26]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[27] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [27]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[28] ),
        .R(1'b0));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[29]_0 ),
        .Q(\opt_has_pipe.first_q_reg_n_0_[29] ),
        .R(\opt_has_pipe.first_q_reg[33]_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [1]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[2] ),
        .R(1'b0));
  MUXF8 \opt_has_pipe.first_q_reg[2]_i_1__0 
       (.I0(\opt_has_pipe.first_q_reg[2]_i_2__0_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[2]_i_3__0_n_0 ),
        .O(D[1]),
        .S(\opt_has_pipe.first_q_reg[18]_0 [1]));
  MUXF7 \opt_has_pipe.first_q_reg[2]_i_2__0 
       (.I0(\opt_has_pipe.first_q[2]_i_4__0_n_0 ),
        .I1(\opt_has_pipe.first_q[2]_i_5__0_n_0 ),
        .O(\opt_has_pipe.first_q_reg[2]_i_2__0_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [0]));
  MUXF7 \opt_has_pipe.first_q_reg[2]_i_3__0 
       (.I0(\opt_has_pipe.first_q[2]_i_6__0_n_0 ),
        .I1(\opt_has_pipe.first_q[2]_i_7__0_n_0 ),
        .O(\opt_has_pipe.first_q_reg[2]_i_3__0_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [2]));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[30]_0 ),
        .Q(\opt_has_pipe.first_q_reg_n_0_[30] ),
        .R(\opt_has_pipe.first_q_reg[33]_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[31]_0 ),
        .Q(\opt_has_pipe.first_q_reg_n_0_[31] ),
        .R(\opt_has_pipe.first_q_reg[33]_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[32]_0 ),
        .Q(\opt_has_pipe.first_q_reg_n_0_[32] ),
        .R(\opt_has_pipe.first_q_reg[33]_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[33]_1 ),
        .Q(\opt_has_pipe.first_q_reg_n_0_[33] ),
        .R(\opt_has_pipe.first_q_reg[33]_0 ));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [2]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[3] ),
        .R(1'b0));
  MUXF8 \opt_has_pipe.first_q_reg[3]_i_1__0 
       (.I0(\opt_has_pipe.first_q_reg[3]_i_2__0_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[3]_i_3__0_n_0 ),
        .O(D[2]),
        .S(\opt_has_pipe.first_q_reg[18]_0 [1]));
  MUXF7 \opt_has_pipe.first_q_reg[3]_i_2__0 
       (.I0(\opt_has_pipe.first_q[3]_i_4__0_n_0 ),
        .I1(\opt_has_pipe.first_q[3]_i_5__0_n_0 ),
        .O(\opt_has_pipe.first_q_reg[3]_i_2__0_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [0]));
  MUXF7 \opt_has_pipe.first_q_reg[3]_i_3__0 
       (.I0(\opt_has_pipe.first_q[3]_i_6__0_n_0 ),
        .I1(\opt_has_pipe.first_q[3]_i_7__0_n_0 ),
        .O(\opt_has_pipe.first_q_reg[3]_i_3__0_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [2]));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [3]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[4] ),
        .R(1'b0));
  MUXF8 \opt_has_pipe.first_q_reg[4]_i_1__0 
       (.I0(\opt_has_pipe.first_q_reg[4]_i_2__0_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[4]_i_3__0_n_0 ),
        .O(D[3]),
        .S(\opt_has_pipe.first_q_reg[18]_0 [1]));
  MUXF7 \opt_has_pipe.first_q_reg[4]_i_2__0 
       (.I0(\opt_has_pipe.first_q[4]_i_4__0_n_0 ),
        .I1(\opt_has_pipe.first_q[4]_i_5__0_n_0 ),
        .O(\opt_has_pipe.first_q_reg[4]_i_2__0_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [0]));
  MUXF7 \opt_has_pipe.first_q_reg[4]_i_3__0 
       (.I0(\opt_has_pipe.first_q[4]_i_6__0_n_0 ),
        .I1(\opt_has_pipe.first_q[4]_i_7__0_n_0 ),
        .O(\opt_has_pipe.first_q_reg[4]_i_3__0_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [2]));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [4]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[5] ),
        .R(1'b0));
  MUXF8 \opt_has_pipe.first_q_reg[5]_i_1__0 
       (.I0(\opt_has_pipe.first_q_reg[5]_i_2__0_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[5]_i_3__0_n_0 ),
        .O(D[4]),
        .S(\opt_has_pipe.first_q_reg[18]_0 [1]));
  MUXF7 \opt_has_pipe.first_q_reg[5]_i_2__0 
       (.I0(\opt_has_pipe.first_q[5]_i_4__0_n_0 ),
        .I1(\opt_has_pipe.first_q[5]_i_5__0_n_0 ),
        .O(\opt_has_pipe.first_q_reg[5]_i_2__0_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [0]));
  MUXF7 \opt_has_pipe.first_q_reg[5]_i_3__0 
       (.I0(\opt_has_pipe.first_q[5]_i_6__0_n_0 ),
        .I1(\opt_has_pipe.first_q[5]_i_7__0_n_0 ),
        .O(\opt_has_pipe.first_q_reg[5]_i_3__0_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [2]));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [5]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[6] ),
        .R(1'b0));
  MUXF8 \opt_has_pipe.first_q_reg[6]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[6]_i_2_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[6]_i_3_n_0 ),
        .O(D[5]),
        .S(\opt_has_pipe.first_q_reg[18]_0 [1]));
  MUXF7 \opt_has_pipe.first_q_reg[6]_i_2 
       (.I0(\opt_has_pipe.first_q[6]_i_4__0_n_0 ),
        .I1(\opt_has_pipe.first_q[6]_i_5_n_0 ),
        .O(\opt_has_pipe.first_q_reg[6]_i_2_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [0]));
  MUXF7 \opt_has_pipe.first_q_reg[6]_i_3 
       (.I0(\opt_has_pipe.first_q[6]_i_6_n_0 ),
        .I1(\opt_has_pipe.first_q[6]_i_7_n_0 ),
        .O(\opt_has_pipe.first_q_reg[6]_i_3_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [2]));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [6]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[7] ),
        .R(1'b0));
  MUXF8 \opt_has_pipe.first_q_reg[7]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[7]_i_2_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[7]_i_3_n_0 ),
        .O(D[6]),
        .S(\opt_has_pipe.first_q_reg[18]_0 [1]));
  MUXF7 \opt_has_pipe.first_q_reg[7]_i_2 
       (.I0(\opt_has_pipe.first_q[7]_i_4__0_n_0 ),
        .I1(\opt_has_pipe.first_q[7]_i_5_n_0 ),
        .O(\opt_has_pipe.first_q_reg[7]_i_2_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [0]));
  MUXF7 \opt_has_pipe.first_q_reg[7]_i_3 
       (.I0(\opt_has_pipe.first_q[7]_i_6_n_0 ),
        .I1(\opt_has_pipe.first_q[7]_i_7_n_0 ),
        .O(\opt_has_pipe.first_q_reg[7]_i_3_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [2]));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [7]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[8] ),
        .R(1'b0));
  MUXF8 \opt_has_pipe.first_q_reg[8]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[8]_i_2_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[8]_i_3_n_0 ),
        .O(D[7]),
        .S(\opt_has_pipe.first_q_reg[18]_0 [1]));
  MUXF7 \opt_has_pipe.first_q_reg[8]_i_2 
       (.I0(\opt_has_pipe.first_q[8]_i_4_n_0 ),
        .I1(\opt_has_pipe.first_q[8]_i_5_n_0 ),
        .O(\opt_has_pipe.first_q_reg[8]_i_2_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [0]));
  MUXF7 \opt_has_pipe.first_q_reg[8]_i_3 
       (.I0(\opt_has_pipe.first_q[8]_i_6_n_0 ),
        .I1(\opt_has_pipe.first_q[8]_i_7_n_0 ),
        .O(\opt_has_pipe.first_q_reg[8]_i_3_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [2]));
  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[28]_0 [8]),
        .Q(\opt_has_pipe.first_q_reg_n_0_[9] ),
        .R(1'b0));
  MUXF8 \opt_has_pipe.first_q_reg[9]_i_1 
       (.I0(\opt_has_pipe.first_q_reg[9]_i_2_n_0 ),
        .I1(\opt_has_pipe.first_q_reg[9]_i_3_n_0 ),
        .O(D[8]),
        .S(\opt_has_pipe.first_q_reg[18]_0 [1]));
  MUXF7 \opt_has_pipe.first_q_reg[9]_i_2 
       (.I0(\opt_has_pipe.first_q[9]_i_4_n_0 ),
        .I1(\opt_has_pipe.first_q[9]_i_5_n_0 ),
        .O(\opt_has_pipe.first_q_reg[9]_i_2_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [0]));
  MUXF7 \opt_has_pipe.first_q_reg[9]_i_3 
       (.I0(\opt_has_pipe.first_q[9]_i_6_n_0 ),
        .I1(\opt_has_pipe.first_q[9]_i_7_n_0 ),
        .O(\opt_has_pipe.first_q_reg[9]_i_3_n_0 ),
        .S(\opt_has_pipe.first_q_reg[18]_0 [2]));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fix_to_float_xbip_pipe_v3_0_5_viv__parameterized47
   (\s_axis_a_tdata[60] ,
    s_axis_a_tdata,
    aclk);
  output \s_axis_a_tdata[60] ;
  input [0:0]s_axis_a_tdata;
  input aclk;

  wire aclk;
  wire [0:0]s_axis_a_tdata;
  wire \s_axis_a_tdata[60] ;

  (* srl_bus_name = "U0/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2] " *) 
  (* srl_name = "U0/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(s_axis_a_tdata),
        .Q(\s_axis_a_tdata[60] ));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fix_to_float_xbip_pipe_v3_0_5_viv__parameterized5
   (D,
    \opt_has_pipe.first_q_reg[0]_0 ,
    aclk);
  output D;
  input \opt_has_pipe.first_q_reg[0]_0 ;
  input aclk;

  wire D;
  wire aclk;
  wire \opt_has_pipe.first_q_reg[0]_0 ;

  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[0]_0 ),
        .Q(D),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fix_to_float_xbip_pipe_v3_0_5_viv__parameterized5_5
   (op_state,
    D,
    aclk);
  output [0:0]op_state;
  input D;
  input aclk;

  wire D;
  wire aclk;
  wire [0:0]op_state;

  (* KEEP = "false" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D),
        .Q(op_state),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fix_to_float_xbip_pipe_v3_0_5_viv__parameterized7
   (out,
    D,
    \opt_has_pipe.first_q_reg[0]_0 ,
    \opt_has_pipe.first_q_reg[7]_0 ,
    aclk);
  output [7:0]out;
  output [1:0]D;
  input [2:0]\opt_has_pipe.first_q_reg[0]_0 ;
  input [7:0]\opt_has_pipe.first_q_reg[7]_0 ;
  input aclk;

  wire [1:0]D;
  wire aclk;
  (* RTL_KEEP = "true" *) wire [7:0]first_q;
  wire \opt_has_pipe.first_q[0]_i_2_n_0 ;
  wire \opt_has_pipe.first_q[1]_i_2_n_0 ;
  wire [2:0]\opt_has_pipe.first_q_reg[0]_0 ;
  wire [7:0]\opt_has_pipe.first_q_reg[7]_0 ;

  assign out[7:0] = first_q;
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[0]_i_1 
       (.I0(first_q[7]),
        .I1(\opt_has_pipe.first_q_reg[0]_0 [2]),
        .I2(first_q[5]),
        .I3(\opt_has_pipe.first_q_reg[0]_0 [1]),
        .I4(\opt_has_pipe.first_q[0]_i_2_n_0 ),
        .O(D[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[0]_i_2 
       (.I0(first_q[3]),
        .I1(\opt_has_pipe.first_q_reg[0]_0 [0]),
        .I2(first_q[1]),
        .O(\opt_has_pipe.first_q[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \opt_has_pipe.first_q[1]_i_1__1 
       (.I0(first_q[6]),
        .I1(\opt_has_pipe.first_q_reg[0]_0 [2]),
        .I2(first_q[4]),
        .I3(\opt_has_pipe.first_q_reg[0]_0 [1]),
        .I4(\opt_has_pipe.first_q[1]_i_2_n_0 ),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[1]_i_2 
       (.I0(first_q[2]),
        .I1(\opt_has_pipe.first_q_reg[0]_0 [0]),
        .I2(first_q[0]),
        .O(\opt_has_pipe.first_q[1]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[7]_0 [0]),
        .Q(first_q[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[7]_0 [1]),
        .Q(first_q[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[7]_0 [2]),
        .Q(first_q[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[7]_0 [3]),
        .Q(first_q[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[7]_0 [4]),
        .Q(first_q[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[7]_0 [5]),
        .Q(first_q[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[7]_0 [6]),
        .Q(first_q[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[7]_0 [7]),
        .Q(first_q[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xbip_pipe_v3_0_5_viv" *) 
module fix_to_float_xbip_pipe_v3_0_5_viv__parameterized9
   (\opt_has_pipe.first_q_reg[2]_0 ,
    D,
    \opt_has_pipe.first_q_reg[2]_1 ,
    aclk,
    CARRYS_OUT,
    \opt_has_pipe.first_q_reg[3]_0 );
  output [2:0]\opt_has_pipe.first_q_reg[2]_0 ;
  output [0:0]D;
  input [2:0]\opt_has_pipe.first_q_reg[2]_1 ;
  input aclk;
  input [1:0]CARRYS_OUT;
  input [0:0]\opt_has_pipe.first_q_reg[3]_0 ;

  wire [1:0]CARRYS_OUT;
  wire [0:0]D;
  wire aclk;
  (* RTL_KEEP = "true" *) wire [3:0]first_q;
  wire \opt_has_pipe.first_q[3]_i_1_n_0 ;
  wire [2:0]\opt_has_pipe.first_q_reg[2]_1 ;
  wire [0:0]\opt_has_pipe.first_q_reg[3]_0 ;

  assign \opt_has_pipe.first_q_reg[2]_0 [2:0] = first_q[2:0];
  LUT3 #(
    .INIT(8'hB8)) 
    \opt_has_pipe.first_q[1]_i_1 
       (.I0(first_q[2]),
        .I1(first_q[1]),
        .I2(first_q[0]),
        .O(D));
  LUT3 #(
    .INIT(8'h80)) 
    \opt_has_pipe.first_q[3]_i_1 
       (.I0(CARRYS_OUT[0]),
        .I1(CARRYS_OUT[1]),
        .I2(\opt_has_pipe.first_q_reg[3]_0 ),
        .O(\opt_has_pipe.first_q[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[2]_1 [0]),
        .Q(first_q[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[2]_1 [1]),
        .Q(first_q[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q_reg[2]_1 [2]),
        .Q(first_q[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \opt_has_pipe.first_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\opt_has_pipe.first_q[3]_i_1_n_0 ),
        .Q(first_q[3]),
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
