-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Aug 12 16:06:38 2024
-- Host        : aic-ts running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/norm/fix_to_float/fix_to_float_sim_netlist.vhdl
-- Design      : fix_to_float
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z100ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fix_to_float_carry_chain is
  port (
    \CHAIN_GEN[1].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[2].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[3].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[4].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[5].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[6].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[7].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[8].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[9].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[10].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[11].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[12].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[13].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[14].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[15].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[16].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[17].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[18].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[19].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[20].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[21].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[22].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[23].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[24].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[25].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[26].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[27].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[28].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[29].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[30].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[31].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[32].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[33].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[34].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[35].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[36].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[37].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[38].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[39].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[40].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[41].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    \CHAIN_GEN[42].Q_XOR.SUM_XOR_0\ : out STD_LOGIC;
    chunk_is_zero : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \CHAIN_GEN[27].Q_XOR.SUM_XOR_1\ : out STD_LOGIC;
    \CHAIN_GEN[28].Q_XOR.SUM_XOR_1\ : out STD_LOGIC;
    \CHAIN_GEN[29].Q_XOR.SUM_XOR_1\ : out STD_LOGIC;
    \CHAIN_GEN[30].Q_XOR.SUM_XOR_1\ : out STD_LOGIC;
    \CHAIN_GEN[31].Q_XOR.SUM_XOR_1\ : out STD_LOGIC;
    \s_axis_a_tdata[60]\ : out STD_LOGIC_VECTOR ( 27 downto 0 );
    A : out STD_LOGIC_VECTOR ( 0 to 0 );
    CARRY_OUT : in STD_LOGIC;
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[28]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \CHAIN_GEN[60].Q_XOR.SUM_XOR_0\ : in STD_LOGIC_VECTOR ( 59 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fix_to_float_carry_chain : entity is "carry_chain";
end fix_to_float_carry_chain;

architecture STRUCTURE of fix_to_float_carry_chain is
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[10].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[11].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[12].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[13].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[14].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[15].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[16].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[17].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[18].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[19].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[20].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[21].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[22].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[23].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[24].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[25].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[26].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[27].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[28].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[29].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[30].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[31].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[32].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[33].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[34].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[35].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[36].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[37].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[38].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[39].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[40].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[41].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[42].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[43].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[44].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[45].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[46].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[47].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[48].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[49].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[50].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[51].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[52].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[53].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[54].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[55].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[56].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[57].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[58].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[59].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[8].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[9].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal abs_a : STD_LOGIC_VECTOR ( 60 downto 0 );
  signal \opt_has_pipe.first_q[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[10]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[11]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[12]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[1]_i_4_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[1]_i_5_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[1]_i_6_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[1]_i_7_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[2]_i_4_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[2]_i_5_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[2]_i_6_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[2]_i_7_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[3]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[3]_i_4_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[3]_i_5_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[3]_i_6_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[3]_i_7_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[4]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[4]_i_4_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[4]_i_5_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[4]_i_6_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[4]_i_7_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[5]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[5]_i_4_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[5]_i_5_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[5]_i_6_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[5]_i_7_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[6]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[6]_i_3_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[6]_i_4_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[7]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[7]_i_3_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[7]_i_4_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[8]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[9]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \NLW_CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[12].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[12].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[12].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[16].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[16].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[16].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[20].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[20].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[20].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[24].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[24].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[24].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[28].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[28].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[28].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[32].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[32].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[32].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[36].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[36].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[36].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[40].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[40].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[40].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[44].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[44].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[44].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[48].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[48].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[48].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[52].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[52].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[52].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[56].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[56].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[56].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[10]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[11]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[12]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[29]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[2]_i_2__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[30]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[31]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[32]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[33]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[3]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[4]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[5]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[6]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[6]_i_2__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[6]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[6]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[7]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[7]_i_2__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[7]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[7]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[8]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[9]_i_2\ : label is "soft_lutpair8";
begin
\CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\,
      CYINIT => s_axis_a_tdata(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => abs_a(3 downto 0),
      S(3 downto 0) => \CHAIN_GEN[60].Q_XOR.SUM_XOR_0\(3 downto 0)
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => abs_a(27),
      I1 => abs_a(25),
      I2 => abs_a(26),
      I3 => abs_a(28),
      O => chunk_is_zero(8)
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => abs_a(59),
      I1 => abs_a(57),
      I2 => abs_a(58),
      I3 => abs_a(60),
      O => chunk_is_zero(0)
    );
\CHAIN_GEN[12].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[11].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[15].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[14].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[13].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[12].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => abs_a(15 downto 12),
      S(3 downto 0) => \CHAIN_GEN[60].Q_XOR.SUM_XOR_0\(15 downto 12)
    );
\CHAIN_GEN[16].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[15].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[19].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[18].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[17].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[16].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => abs_a(19 downto 16),
      S(3 downto 0) => \CHAIN_GEN[60].Q_XOR.SUM_XOR_0\(19 downto 16)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => abs_a(23),
      I1 => abs_a(21),
      I2 => abs_a(22),
      I3 => abs_a(24),
      O => chunk_is_zero(9)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__0__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => abs_a(55),
      I1 => abs_a(53),
      I2 => abs_a(54),
      I3 => abs_a(56),
      O => chunk_is_zero(1)
    );
\CHAIN_GEN[20].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[19].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[23].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[22].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[21].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[20].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => abs_a(23 downto 20),
      S(3 downto 0) => \CHAIN_GEN[60].Q_XOR.SUM_XOR_0\(23 downto 20)
    );
\CHAIN_GEN[24].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[23].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[27].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[26].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[25].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[24].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => abs_a(27 downto 24),
      S(3 downto 0) => \CHAIN_GEN[60].Q_XOR.SUM_XOR_0\(27 downto 24)
    );
\CHAIN_GEN[28].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[27].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[31].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[30].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[29].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[28].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => abs_a(31 downto 28),
      S(3 downto 0) => \CHAIN_GEN[60].Q_XOR.SUM_XOR_0\(31 downto 28)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => abs_a(19),
      I1 => abs_a(17),
      I2 => abs_a(18),
      I3 => abs_a(20),
      O => chunk_is_zero(10)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => abs_a(51),
      I1 => abs_a(49),
      I2 => abs_a(50),
      I3 => abs_a(52),
      O => chunk_is_zero(2)
    );
\CHAIN_GEN[32].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[31].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[35].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[34].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[33].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[32].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => abs_a(35 downto 32),
      S(3 downto 0) => \CHAIN_GEN[60].Q_XOR.SUM_XOR_0\(35 downto 32)
    );
\CHAIN_GEN[36].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[35].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[39].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[38].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[37].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[36].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => abs_a(39 downto 36),
      S(3 downto 0) => \CHAIN_GEN[60].Q_XOR.SUM_XOR_0\(39 downto 36)
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => abs_a(15),
      I1 => abs_a(13),
      I2 => abs_a(14),
      I3 => abs_a(16),
      O => chunk_is_zero(11)
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => abs_a(47),
      I1 => abs_a(45),
      I2 => abs_a(46),
      I3 => abs_a(48),
      O => chunk_is_zero(3)
    );
\CHAIN_GEN[40].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[39].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[43].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[42].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[41].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[40].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => abs_a(43 downto 40),
      S(3 downto 0) => \CHAIN_GEN[60].Q_XOR.SUM_XOR_0\(43 downto 40)
    );
\CHAIN_GEN[44].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[43].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[47].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[46].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[45].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[44].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => abs_a(47 downto 44),
      S(3 downto 0) => \CHAIN_GEN[60].Q_XOR.SUM_XOR_0\(47 downto 44)
    );
\CHAIN_GEN[48].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[47].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[51].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[50].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[49].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[48].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => abs_a(51 downto 48),
      S(3 downto 0) => \CHAIN_GEN[60].Q_XOR.SUM_XOR_0\(51 downto 48)
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => abs_a(7 downto 4),
      S(3 downto 0) => \CHAIN_GEN[60].Q_XOR.SUM_XOR_0\(7 downto 4)
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => abs_a(11),
      I1 => abs_a(9),
      I2 => abs_a(10),
      I3 => abs_a(12),
      O => chunk_is_zero(12)
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__0__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => abs_a(43),
      I1 => abs_a(41),
      I2 => abs_a(42),
      I3 => abs_a(44),
      O => chunk_is_zero(4)
    );
\CHAIN_GEN[52].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[51].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[55].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[54].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[53].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[52].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => abs_a(55 downto 52),
      S(3 downto 0) => \CHAIN_GEN[60].Q_XOR.SUM_XOR_0\(55 downto 52)
    );
\CHAIN_GEN[56].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[55].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[59].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[58].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[57].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[56].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => abs_a(59 downto 56),
      S(3 downto 0) => \CHAIN_GEN[60].Q_XOR.SUM_XOR_0\(59 downto 56)
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => abs_a(7),
      I1 => abs_a(5),
      I2 => abs_a(6),
      I3 => abs_a(8),
      O => chunk_is_zero(13)
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__0__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => abs_a(39),
      I1 => abs_a(37),
      I2 => abs_a(38),
      I3 => abs_a(40),
      O => chunk_is_zero(5)
    );
\CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[59].C_MUX.CARRY_MUX_n_0\,
      CO(3 downto 0) => \NLW_CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \NLW_CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4_DI_UNCONNECTED\(3 downto 0),
      O(3 downto 1) => \NLW_CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4_O_UNCONNECTED\(3 downto 1),
      O(0) => abs_a(60),
      S(3 downto 1) => \NLW_CHAIN_GEN[60].Q_XOR.SUM_XOR_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => '0'
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => abs_a(3),
      I1 => abs_a(1),
      I2 => abs_a(2),
      I3 => abs_a(4),
      O => chunk_is_zero(14)
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__0__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => abs_a(35),
      I1 => abs_a(33),
      I2 => abs_a(34),
      I3 => abs_a(36),
      O => chunk_is_zero(6)
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => abs_a(31),
      I1 => abs_a(29),
      I2 => abs_a(30),
      I3 => abs_a(32),
      O => chunk_is_zero(7)
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__0__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(0),
      O => A(0)
    );
\CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[11].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[10].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[9].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[8].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => abs_a(11 downto 8),
      S(3 downto 0) => \CHAIN_GEN[60].Q_XOR.SUM_XOR_0\(11 downto 8)
    );
\ZERO_DET[21].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(0),
      O => chunk_is_zero(15)
    );
\ZERO_DET[22].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(1),
      O => \CHAIN_GEN[1].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[23].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(2),
      O => \CHAIN_GEN[2].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[24].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(3),
      O => \CHAIN_GEN[3].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[25].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(4),
      O => \CHAIN_GEN[4].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[26].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(5),
      O => \CHAIN_GEN[5].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[27].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(6),
      O => \CHAIN_GEN[6].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[28].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(7),
      O => \CHAIN_GEN[7].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[29].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(8),
      O => \CHAIN_GEN[8].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[30].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(9),
      O => \CHAIN_GEN[9].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[31].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(10),
      O => \CHAIN_GEN[10].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[32].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(11),
      O => \CHAIN_GEN[11].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[33].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(12),
      O => \CHAIN_GEN[12].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[34].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(13),
      O => \CHAIN_GEN[13].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[35].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(14),
      O => \CHAIN_GEN[14].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[36].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(15),
      O => \CHAIN_GEN[15].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[37].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(16),
      O => \CHAIN_GEN[16].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[38].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(17),
      O => \CHAIN_GEN[17].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[39].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(18),
      O => \CHAIN_GEN[18].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[40].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(19),
      O => \CHAIN_GEN[19].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[41].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(20),
      O => \CHAIN_GEN[20].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[42].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(21),
      O => \CHAIN_GEN[21].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[43].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(22),
      O => \CHAIN_GEN[22].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[44].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(23),
      O => \CHAIN_GEN[23].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[45].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(24),
      O => \CHAIN_GEN[24].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[46].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(25),
      O => \CHAIN_GEN[25].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[47].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(26),
      O => \CHAIN_GEN[26].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[48].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(27),
      O => \CHAIN_GEN[27].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[49].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(28),
      O => \CHAIN_GEN[28].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[50].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(29),
      O => \CHAIN_GEN[29].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[51].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(30),
      O => \CHAIN_GEN[30].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[52].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(31),
      O => \CHAIN_GEN[31].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[53].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(32),
      O => \CHAIN_GEN[32].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[54].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(33),
      O => \CHAIN_GEN[33].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[55].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(34),
      O => \CHAIN_GEN[34].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[56].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(35),
      O => \CHAIN_GEN[35].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[57].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(36),
      O => \CHAIN_GEN[36].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[58].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(37),
      O => \CHAIN_GEN[37].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[59].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(38),
      O => \CHAIN_GEN[38].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[60].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(39),
      O => \CHAIN_GEN[39].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[61].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(40),
      O => \CHAIN_GEN[40].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[62].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(41),
      O => \CHAIN_GEN[41].Q_XOR.SUM_XOR_0\
    );
\ZERO_DET[63].mc_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_a(42),
      O => \CHAIN_GEN[42].Q_XOR.SUM_XOR_0\
    );
\opt_has_pipe.first_q[0]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => abs_a(59),
      I1 => abs_a(57),
      I2 => abs_a(58),
      I3 => abs_a(60),
      O => \opt_has_pipe.first_q[0]_i_4__0_n_0\
    );
\opt_has_pipe.first_q[0]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => abs_a(43),
      I1 => abs_a(41),
      I2 => abs_a(42),
      I3 => abs_a(44),
      O => \opt_has_pipe.first_q[0]_i_5__0_n_0\
    );
\opt_has_pipe.first_q[0]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => abs_a(27),
      I1 => abs_a(25),
      I2 => abs_a(26),
      I3 => abs_a(28),
      O => \opt_has_pipe.first_q[0]_i_6__0_n_0\
    );
\opt_has_pipe.first_q[0]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => abs_a(11),
      I1 => abs_a(9),
      I2 => abs_a(10),
      I3 => abs_a(12),
      O => \opt_has_pipe.first_q[0]_i_7__0_n_0\
    );
\opt_has_pipe.first_q[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => abs_a(2),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => abs_a(18),
      I3 => CARRY_OUT,
      I4 => \opt_has_pipe.first_q[10]_i_2_n_0\,
      O => \s_axis_a_tdata[60]\(9)
    );
\opt_has_pipe.first_q[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => abs_a(34),
      I1 => CARRYS_OUT(0),
      I2 => abs_a(50),
      O => \opt_has_pipe.first_q[10]_i_2_n_0\
    );
\opt_has_pipe.first_q[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => abs_a(1),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => abs_a(17),
      I3 => CARRY_OUT,
      I4 => \opt_has_pipe.first_q[11]_i_2_n_0\,
      O => \s_axis_a_tdata[60]\(10)
    );
\opt_has_pipe.first_q[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => abs_a(33),
      I1 => CARRYS_OUT(0),
      I2 => abs_a(49),
      O => \opt_has_pipe.first_q[11]_i_2_n_0\
    );
\opt_has_pipe.first_q[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => abs_a(0),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => abs_a(16),
      I3 => CARRY_OUT,
      I4 => \opt_has_pipe.first_q[12]_i_2_n_0\,
      O => \s_axis_a_tdata[60]\(11)
    );
\opt_has_pipe.first_q[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => abs_a(32),
      I1 => CARRYS_OUT(0),
      I2 => abs_a(48),
      O => \opt_has_pipe.first_q[12]_i_2_n_0\
    );
\opt_has_pipe.first_q[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => abs_a(15),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => CARRY_OUT,
      I3 => abs_a(31),
      I4 => CARRYS_OUT(0),
      I5 => abs_a(47),
      O => \s_axis_a_tdata[60]\(12)
    );
\opt_has_pipe.first_q[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => abs_a(14),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => CARRY_OUT,
      I3 => abs_a(30),
      I4 => CARRYS_OUT(0),
      I5 => abs_a(46),
      O => \s_axis_a_tdata[60]\(13)
    );
\opt_has_pipe.first_q[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => abs_a(13),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => CARRY_OUT,
      I3 => abs_a(29),
      I4 => CARRYS_OUT(0),
      I5 => abs_a(45),
      O => \s_axis_a_tdata[60]\(14)
    );
\opt_has_pipe.first_q[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => abs_a(12),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => CARRY_OUT,
      I3 => abs_a(28),
      I4 => CARRYS_OUT(0),
      I5 => abs_a(44),
      O => \s_axis_a_tdata[60]\(15)
    );
\opt_has_pipe.first_q[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => abs_a(11),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => CARRY_OUT,
      I3 => abs_a(27),
      I4 => CARRYS_OUT(0),
      I5 => abs_a(43),
      O => \s_axis_a_tdata[60]\(16)
    );
\opt_has_pipe.first_q[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => abs_a(10),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => CARRY_OUT,
      I3 => abs_a(26),
      I4 => CARRYS_OUT(0),
      I5 => abs_a(42),
      O => \s_axis_a_tdata[60]\(17)
    );
\opt_has_pipe.first_q[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => abs_a(9),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => CARRY_OUT,
      I3 => abs_a(25),
      I4 => CARRYS_OUT(0),
      I5 => abs_a(41),
      O => \s_axis_a_tdata[60]\(18)
    );
\opt_has_pipe.first_q[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => abs_a(11),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => abs_a(27),
      I3 => CARRY_OUT,
      I4 => \opt_has_pipe.first_q[1]_i_2__1_n_0\,
      O => \s_axis_a_tdata[60]\(0)
    );
\opt_has_pipe.first_q[1]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => abs_a(43),
      I1 => CARRYS_OUT(0),
      I2 => abs_a(59),
      O => \opt_has_pipe.first_q[1]_i_2__1_n_0\
    );
\opt_has_pipe.first_q[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => abs_a(59),
      I1 => abs_a(58),
      I2 => abs_a(57),
      I3 => abs_a(60),
      O => \opt_has_pipe.first_q[1]_i_4_n_0\
    );
\opt_has_pipe.first_q[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => abs_a(43),
      I1 => abs_a(42),
      I2 => abs_a(41),
      I3 => abs_a(44),
      O => \opt_has_pipe.first_q[1]_i_5_n_0\
    );
\opt_has_pipe.first_q[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => abs_a(27),
      I1 => abs_a(26),
      I2 => abs_a(25),
      I3 => abs_a(28),
      O => \opt_has_pipe.first_q[1]_i_6_n_0\
    );
\opt_has_pipe.first_q[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => abs_a(11),
      I1 => abs_a(10),
      I2 => abs_a(9),
      I3 => abs_a(12),
      O => \opt_has_pipe.first_q[1]_i_7_n_0\
    );
\opt_has_pipe.first_q[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => abs_a(8),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => CARRY_OUT,
      I3 => abs_a(24),
      I4 => CARRYS_OUT(0),
      I5 => abs_a(40),
      O => \s_axis_a_tdata[60]\(19)
    );
\opt_has_pipe.first_q[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => abs_a(7),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => CARRY_OUT,
      I3 => abs_a(23),
      I4 => CARRYS_OUT(0),
      I5 => abs_a(39),
      O => \s_axis_a_tdata[60]\(20)
    );
\opt_has_pipe.first_q[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => abs_a(6),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => CARRY_OUT,
      I3 => abs_a(22),
      I4 => CARRYS_OUT(0),
      I5 => abs_a(38),
      O => \s_axis_a_tdata[60]\(21)
    );
\opt_has_pipe.first_q[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => abs_a(5),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => CARRY_OUT,
      I3 => abs_a(21),
      I4 => CARRYS_OUT(0),
      I5 => abs_a(37),
      O => \s_axis_a_tdata[60]\(22)
    );
\opt_has_pipe.first_q[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => abs_a(4),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => CARRY_OUT,
      I3 => abs_a(20),
      I4 => CARRYS_OUT(0),
      I5 => abs_a(36),
      O => \s_axis_a_tdata[60]\(23)
    );
\opt_has_pipe.first_q[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => abs_a(3),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => CARRY_OUT,
      I3 => abs_a(19),
      I4 => CARRYS_OUT(0),
      I5 => abs_a(35),
      O => \s_axis_a_tdata[60]\(24)
    );
\opt_has_pipe.first_q[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => abs_a(2),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => CARRY_OUT,
      I3 => abs_a(18),
      I4 => CARRYS_OUT(0),
      I5 => abs_a(34),
      O => \s_axis_a_tdata[60]\(25)
    );
\opt_has_pipe.first_q[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => abs_a(1),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => CARRY_OUT,
      I3 => abs_a(17),
      I4 => CARRYS_OUT(0),
      I5 => abs_a(33),
      O => \s_axis_a_tdata[60]\(26)
    );
\opt_has_pipe.first_q[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => abs_a(0),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => CARRY_OUT,
      I3 => abs_a(16),
      I4 => CARRYS_OUT(0),
      I5 => abs_a(32),
      O => \s_axis_a_tdata[60]\(27)
    );
\opt_has_pipe.first_q[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => abs_a(15),
      I1 => CARRYS_OUT(0),
      I2 => abs_a(31),
      O => \CHAIN_GEN[31].Q_XOR.SUM_XOR_1\
    );
\opt_has_pipe.first_q[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => abs_a(10),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => abs_a(26),
      I3 => CARRY_OUT,
      I4 => \opt_has_pipe.first_q[2]_i_2__0_n_0\,
      O => \s_axis_a_tdata[60]\(1)
    );
\opt_has_pipe.first_q[2]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => abs_a(42),
      I1 => CARRYS_OUT(0),
      I2 => abs_a(58),
      O => \opt_has_pipe.first_q[2]_i_2__0_n_0\
    );
\opt_has_pipe.first_q[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => abs_a(55),
      I1 => abs_a(53),
      I2 => abs_a(54),
      I3 => abs_a(56),
      O => \opt_has_pipe.first_q[2]_i_4_n_0\
    );
\opt_has_pipe.first_q[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => abs_a(39),
      I1 => abs_a(37),
      I2 => abs_a(38),
      I3 => abs_a(40),
      O => \opt_has_pipe.first_q[2]_i_5_n_0\
    );
\opt_has_pipe.first_q[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => abs_a(23),
      I1 => abs_a(21),
      I2 => abs_a(22),
      I3 => abs_a(24),
      O => \opt_has_pipe.first_q[2]_i_6_n_0\
    );
\opt_has_pipe.first_q[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => abs_a(7),
      I1 => abs_a(5),
      I2 => abs_a(6),
      I3 => abs_a(8),
      O => \opt_has_pipe.first_q[2]_i_7_n_0\
    );
\opt_has_pipe.first_q[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => abs_a(14),
      I1 => CARRYS_OUT(0),
      I2 => abs_a(30),
      O => \CHAIN_GEN[30].Q_XOR.SUM_XOR_1\
    );
\opt_has_pipe.first_q[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => abs_a(13),
      I1 => CARRYS_OUT(0),
      I2 => abs_a(29),
      O => \CHAIN_GEN[29].Q_XOR.SUM_XOR_1\
    );
\opt_has_pipe.first_q[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => abs_a(12),
      I1 => CARRYS_OUT(0),
      I2 => abs_a(28),
      O => \CHAIN_GEN[28].Q_XOR.SUM_XOR_1\
    );
\opt_has_pipe.first_q[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => abs_a(11),
      I1 => CARRYS_OUT(0),
      I2 => abs_a(27),
      O => \CHAIN_GEN[27].Q_XOR.SUM_XOR_1\
    );
\opt_has_pipe.first_q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => abs_a(9),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => abs_a(25),
      I3 => CARRY_OUT,
      I4 => \opt_has_pipe.first_q[3]_i_2_n_0\,
      O => \s_axis_a_tdata[60]\(2)
    );
\opt_has_pipe.first_q[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => abs_a(41),
      I1 => CARRYS_OUT(0),
      I2 => abs_a(57),
      O => \opt_has_pipe.first_q[3]_i_2_n_0\
    );
\opt_has_pipe.first_q[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => abs_a(55),
      I1 => abs_a(54),
      I2 => abs_a(53),
      I3 => abs_a(56),
      O => \opt_has_pipe.first_q[3]_i_4_n_0\
    );
\opt_has_pipe.first_q[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => abs_a(39),
      I1 => abs_a(38),
      I2 => abs_a(37),
      I3 => abs_a(40),
      O => \opt_has_pipe.first_q[3]_i_5_n_0\
    );
\opt_has_pipe.first_q[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => abs_a(23),
      I1 => abs_a(22),
      I2 => abs_a(21),
      I3 => abs_a(24),
      O => \opt_has_pipe.first_q[3]_i_6_n_0\
    );
\opt_has_pipe.first_q[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => abs_a(7),
      I1 => abs_a(6),
      I2 => abs_a(5),
      I3 => abs_a(8),
      O => \opt_has_pipe.first_q[3]_i_7_n_0\
    );
\opt_has_pipe.first_q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => abs_a(8),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => abs_a(24),
      I3 => CARRY_OUT,
      I4 => \opt_has_pipe.first_q[4]_i_2_n_0\,
      O => \s_axis_a_tdata[60]\(3)
    );
\opt_has_pipe.first_q[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => abs_a(40),
      I1 => CARRYS_OUT(0),
      I2 => abs_a(56),
      O => \opt_has_pipe.first_q[4]_i_2_n_0\
    );
\opt_has_pipe.first_q[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => abs_a(51),
      I1 => abs_a(49),
      I2 => abs_a(50),
      I3 => abs_a(52),
      O => \opt_has_pipe.first_q[4]_i_4_n_0\
    );
\opt_has_pipe.first_q[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => abs_a(35),
      I1 => abs_a(33),
      I2 => abs_a(34),
      I3 => abs_a(36),
      O => \opt_has_pipe.first_q[4]_i_5_n_0\
    );
\opt_has_pipe.first_q[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => abs_a(19),
      I1 => abs_a(17),
      I2 => abs_a(18),
      I3 => abs_a(20),
      O => \opt_has_pipe.first_q[4]_i_6_n_0\
    );
\opt_has_pipe.first_q[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => abs_a(3),
      I1 => abs_a(1),
      I2 => abs_a(2),
      I3 => abs_a(4),
      O => \opt_has_pipe.first_q[4]_i_7_n_0\
    );
\opt_has_pipe.first_q[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => abs_a(7),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => abs_a(23),
      I3 => CARRY_OUT,
      I4 => \opt_has_pipe.first_q[5]_i_2_n_0\,
      O => \s_axis_a_tdata[60]\(4)
    );
\opt_has_pipe.first_q[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => abs_a(39),
      I1 => CARRYS_OUT(0),
      I2 => abs_a(55),
      O => \opt_has_pipe.first_q[5]_i_2_n_0\
    );
\opt_has_pipe.first_q[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => abs_a(51),
      I1 => abs_a(50),
      I2 => abs_a(49),
      I3 => abs_a(52),
      O => \opt_has_pipe.first_q[5]_i_4_n_0\
    );
\opt_has_pipe.first_q[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => abs_a(35),
      I1 => abs_a(34),
      I2 => abs_a(33),
      I3 => abs_a(36),
      O => \opt_has_pipe.first_q[5]_i_5_n_0\
    );
\opt_has_pipe.first_q[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => abs_a(19),
      I1 => abs_a(18),
      I2 => abs_a(17),
      I3 => abs_a(20),
      O => \opt_has_pipe.first_q[5]_i_6_n_0\
    );
\opt_has_pipe.first_q[5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => abs_a(3),
      I1 => abs_a(2),
      I2 => abs_a(1),
      I3 => abs_a(4),
      O => \opt_has_pipe.first_q[5]_i_7_n_0\
    );
\opt_has_pipe.first_q[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \opt_has_pipe.first_q[6]_i_2_n_0\,
      I1 => CARRY_OUT,
      I2 => \opt_has_pipe.first_q[6]_i_3_n_0\,
      I3 => CARRYS_OUT(0),
      I4 => \opt_has_pipe.first_q[6]_i_4_n_0\,
      O => D(6)
    );
\opt_has_pipe.first_q[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => abs_a(6),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => abs_a(22),
      I3 => CARRY_OUT,
      I4 => \opt_has_pipe.first_q[6]_i_2__0_n_0\,
      O => \s_axis_a_tdata[60]\(5)
    );
\opt_has_pipe.first_q[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005510"
    )
        port map (
      I0 => abs_a(16),
      I1 => abs_a(14),
      I2 => abs_a(13),
      I3 => abs_a(15),
      I4 => \opt_has_pipe.first_q_reg[28]\(0),
      O => \opt_has_pipe.first_q[6]_i_2_n_0\
    );
\opt_has_pipe.first_q[6]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => abs_a(38),
      I1 => CARRYS_OUT(0),
      I2 => abs_a(54),
      O => \opt_has_pipe.first_q[6]_i_2__0_n_0\
    );
\opt_has_pipe.first_q[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => abs_a(31),
      I1 => abs_a(29),
      I2 => abs_a(30),
      I3 => abs_a(32),
      O => \opt_has_pipe.first_q[6]_i_3_n_0\
    );
\opt_has_pipe.first_q[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => abs_a(47),
      I1 => abs_a(45),
      I2 => abs_a(46),
      I3 => abs_a(48),
      O => \opt_has_pipe.first_q[6]_i_4_n_0\
    );
\opt_has_pipe.first_q[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \opt_has_pipe.first_q[7]_i_2_n_0\,
      I1 => CARRY_OUT,
      I2 => \opt_has_pipe.first_q[7]_i_3_n_0\,
      I3 => CARRYS_OUT(0),
      I4 => \opt_has_pipe.first_q[7]_i_4_n_0\,
      O => D(7)
    );
\opt_has_pipe.first_q[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => abs_a(5),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => abs_a(21),
      I3 => CARRY_OUT,
      I4 => \opt_has_pipe.first_q[7]_i_2__0_n_0\,
      O => \s_axis_a_tdata[60]\(6)
    );
\opt_has_pipe.first_q[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000054"
    )
        port map (
      I0 => abs_a(16),
      I1 => abs_a(13),
      I2 => abs_a(14),
      I3 => abs_a(15),
      I4 => \opt_has_pipe.first_q_reg[28]\(0),
      O => \opt_has_pipe.first_q[7]_i_2_n_0\
    );
\opt_has_pipe.first_q[7]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => abs_a(37),
      I1 => CARRYS_OUT(0),
      I2 => abs_a(53),
      O => \opt_has_pipe.first_q[7]_i_2__0_n_0\
    );
\opt_has_pipe.first_q[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => abs_a(31),
      I1 => abs_a(30),
      I2 => abs_a(29),
      I3 => abs_a(32),
      O => \opt_has_pipe.first_q[7]_i_3_n_0\
    );
\opt_has_pipe.first_q[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0054"
    )
        port map (
      I0 => abs_a(47),
      I1 => abs_a(46),
      I2 => abs_a(45),
      I3 => abs_a(48),
      O => \opt_has_pipe.first_q[7]_i_4_n_0\
    );
\opt_has_pipe.first_q[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => abs_a(4),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => abs_a(20),
      I3 => CARRY_OUT,
      I4 => \opt_has_pipe.first_q[8]_i_2_n_0\,
      O => \s_axis_a_tdata[60]\(7)
    );
\opt_has_pipe.first_q[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => abs_a(36),
      I1 => CARRYS_OUT(0),
      I2 => abs_a(52),
      O => \opt_has_pipe.first_q[8]_i_2_n_0\
    );
\opt_has_pipe.first_q[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => abs_a(3),
      I1 => \opt_has_pipe.first_q_reg[28]\(0),
      I2 => abs_a(19),
      I3 => CARRY_OUT,
      I4 => \opt_has_pipe.first_q[9]_i_2_n_0\,
      O => \s_axis_a_tdata[60]\(8)
    );
\opt_has_pipe.first_q[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => abs_a(35),
      I1 => CARRYS_OUT(0),
      I2 => abs_a(51),
      O => \opt_has_pipe.first_q[9]_i_2_n_0\
    );
\opt_has_pipe.first_q_reg[0]_i_1__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[0]_i_2__0_n_0\,
      I1 => \opt_has_pipe.first_q_reg[0]_i_3__0_n_0\,
      O => D(0),
      S => CARRY_OUT
    );
\opt_has_pipe.first_q_reg[0]_i_2__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[0]_i_4__0_n_0\,
      I1 => \opt_has_pipe.first_q[0]_i_5__0_n_0\,
      O => \opt_has_pipe.first_q_reg[0]_i_2__0_n_0\,
      S => CARRYS_OUT(0)
    );
\opt_has_pipe.first_q_reg[0]_i_3__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[0]_i_6__0_n_0\,
      I1 => \opt_has_pipe.first_q[0]_i_7__0_n_0\,
      O => \opt_has_pipe.first_q_reg[0]_i_3__0_n_0\,
      S => \opt_has_pipe.first_q_reg[28]\(0)
    );
\opt_has_pipe.first_q_reg[1]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[1]_i_2_n_0\,
      I1 => \opt_has_pipe.first_q_reg[1]_i_3_n_0\,
      O => D(1),
      S => CARRY_OUT
    );
\opt_has_pipe.first_q_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[1]_i_4_n_0\,
      I1 => \opt_has_pipe.first_q[1]_i_5_n_0\,
      O => \opt_has_pipe.first_q_reg[1]_i_2_n_0\,
      S => CARRYS_OUT(0)
    );
\opt_has_pipe.first_q_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[1]_i_6_n_0\,
      I1 => \opt_has_pipe.first_q[1]_i_7_n_0\,
      O => \opt_has_pipe.first_q_reg[1]_i_3_n_0\,
      S => \opt_has_pipe.first_q_reg[28]\(0)
    );
\opt_has_pipe.first_q_reg[2]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[2]_i_2_n_0\,
      I1 => \opt_has_pipe.first_q_reg[2]_i_3_n_0\,
      O => D(2),
      S => CARRY_OUT
    );
\opt_has_pipe.first_q_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[2]_i_4_n_0\,
      I1 => \opt_has_pipe.first_q[2]_i_5_n_0\,
      O => \opt_has_pipe.first_q_reg[2]_i_2_n_0\,
      S => CARRYS_OUT(0)
    );
\opt_has_pipe.first_q_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[2]_i_6_n_0\,
      I1 => \opt_has_pipe.first_q[2]_i_7_n_0\,
      O => \opt_has_pipe.first_q_reg[2]_i_3_n_0\,
      S => \opt_has_pipe.first_q_reg[28]\(0)
    );
\opt_has_pipe.first_q_reg[3]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[3]_i_2_n_0\,
      I1 => \opt_has_pipe.first_q_reg[3]_i_3_n_0\,
      O => D(3),
      S => CARRY_OUT
    );
\opt_has_pipe.first_q_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[3]_i_4_n_0\,
      I1 => \opt_has_pipe.first_q[3]_i_5_n_0\,
      O => \opt_has_pipe.first_q_reg[3]_i_2_n_0\,
      S => CARRYS_OUT(0)
    );
\opt_has_pipe.first_q_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[3]_i_6_n_0\,
      I1 => \opt_has_pipe.first_q[3]_i_7_n_0\,
      O => \opt_has_pipe.first_q_reg[3]_i_3_n_0\,
      S => \opt_has_pipe.first_q_reg[28]\(0)
    );
\opt_has_pipe.first_q_reg[4]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[4]_i_2_n_0\,
      I1 => \opt_has_pipe.first_q_reg[4]_i_3_n_0\,
      O => D(4),
      S => CARRY_OUT
    );
\opt_has_pipe.first_q_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[4]_i_4_n_0\,
      I1 => \opt_has_pipe.first_q[4]_i_5_n_0\,
      O => \opt_has_pipe.first_q_reg[4]_i_2_n_0\,
      S => CARRYS_OUT(0)
    );
\opt_has_pipe.first_q_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[4]_i_6_n_0\,
      I1 => \opt_has_pipe.first_q[4]_i_7_n_0\,
      O => \opt_has_pipe.first_q_reg[4]_i_3_n_0\,
      S => \opt_has_pipe.first_q_reg[28]\(0)
    );
\opt_has_pipe.first_q_reg[5]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[5]_i_2_n_0\,
      I1 => \opt_has_pipe.first_q_reg[5]_i_3_n_0\,
      O => D(5),
      S => CARRY_OUT
    );
\opt_has_pipe.first_q_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[5]_i_4_n_0\,
      I1 => \opt_has_pipe.first_q[5]_i_5_n_0\,
      O => \opt_has_pipe.first_q_reg[5]_i_2_n_0\,
      S => CARRYS_OUT(0)
    );
\opt_has_pipe.first_q_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[5]_i_6_n_0\,
      I1 => \opt_has_pipe.first_q[5]_i_7_n_0\,
      O => \opt_has_pipe.first_q_reg[5]_i_3_n_0\,
      S => \opt_has_pipe.first_q_reg[28]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_carry_chain__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_1\ : out STD_LOGIC;
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_0\ : out STD_LOGIC;
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_0\ : out STD_LOGIC;
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 0 to 0 );
    chunk_is_zero : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_carry_chain__parameterized0\ : entity is "carry_chain";
end \fix_to_float_carry_chain__parameterized0\;

architecture STRUCTURE of \fix_to_float_carry_chain__parameterized0\ is
  signal \^chain_gen[2].c_mux.carry_mux_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal c_int : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[0]_i_2__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[1]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[1]_i_2__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[2]_i_2\ : label is "soft_lutpair14";
begin
  \CHAIN_GEN[2].C_MUX.CARRY_MUX_0\(0) <= \^chain_gen[2].c_mux.carry_mux_0\(0);
  D(1 downto 0) <= \^d\(1 downto 0);
\CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^chain_gen[2].c_mux.carry_mux_0\(0),
      CO(2 downto 0) => c_int(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => chunk_is_zero(3 downto 0)
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \^chain_gen[2].c_mux.carry_mux_0\(0),
      CO(3) => \^d\(0),
      CO(2 downto 0) => c_int(6 downto 4),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => chunk_is_zero(7 downto 4)
    );
\opt_has_pipe.first_q[0]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => c_int(4),
      I1 => \^chain_gen[2].c_mux.carry_mux_0\(0),
      I2 => c_int(0),
      O => \CHAIN_GEN[0].C_MUX.CARRY_MUX_0\
    );
\opt_has_pipe.first_q[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => CARRYS_OUT(0),
      I1 => \^d\(0),
      I2 => \^chain_gen[2].c_mux.carry_mux_0\(0),
      O => \^d\(1)
    );
\opt_has_pipe.first_q[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => c_int(5),
      I1 => \^chain_gen[2].c_mux.carry_mux_0\(0),
      I2 => c_int(1),
      O => \CHAIN_GEN[1].C_MUX.CARRY_MUX_0\
    );
\opt_has_pipe.first_q[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => c_int(6),
      I1 => \^chain_gen[2].c_mux.carry_mux_0\(0),
      I2 => c_int(2),
      O => \CHAIN_GEN[2].C_MUX.CARRY_MUX_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_carry_chain__parameterized0_3\ is
  port (
    \CHAIN_GEN[7].C_MUX.CARRY_MUX_0\ : out STD_LOGIC;
    CARRYS_OUT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \opt_has_pipe.first_q[2]_i_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[2]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_carry_chain__parameterized0_3\ : entity is "carry_chain";
end \fix_to_float_carry_chain__parameterized0_3\;

architecture STRUCTURE of \fix_to_float_carry_chain__parameterized0_3\ is
  signal \^carrys_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
begin
  CARRYS_OUT(1 downto 0) <= \^carrys_out\(1 downto 0);
\CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^carrys_out\(0),
      CO(2 downto 0) => p_0_out(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => A(3 downto 0)
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \^carrys_out\(0),
      CO(3) => \^carrys_out\(1),
      CO(2 downto 0) => p_0_out(6 downto 4),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => A(7 downto 4)
    );
\opt_has_pipe.first_q[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_0_out(4),
      I1 => \^carrys_out\(0),
      I2 => p_0_out(0),
      I3 => D(0),
      I4 => \opt_has_pipe.first_q_reg[0]\,
      O => \opt_has_pipe.first_q[2]_i_2\(0)
    );
\opt_has_pipe.first_q[0]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^carrys_out\(1),
      I1 => D(0),
      O => \CHAIN_GEN[7].C_MUX.CARRY_MUX_0\
    );
\opt_has_pipe.first_q[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_0_out(5),
      I1 => \^carrys_out\(0),
      I2 => p_0_out(1),
      I3 => D(0),
      I4 => \opt_has_pipe.first_q_reg[1]\,
      O => \opt_has_pipe.first_q[2]_i_2\(1)
    );
\opt_has_pipe.first_q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_0_out(6),
      I1 => \^carrys_out\(0),
      I2 => p_0_out(2),
      I3 => D(0),
      I4 => \opt_has_pipe.first_q_reg[2]\,
      O => \opt_has_pipe.first_q[2]_i_2\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_carry_chain__parameterized1\ is
  port (
    ROUND_CARRY : out STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    lopt : out STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : in STD_LOGIC;
    lopt_3 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_carry_chain__parameterized1\ : entity is "carry_chain";
end \fix_to_float_carry_chain__parameterized1\;

architecture STRUCTURE of \fix_to_float_carry_chain__parameterized1\ is
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \^lopt_1\ : STD_LOGIC;
  signal \^lopt_2\ : STD_LOGIC;
  signal \^lopt_3\ : STD_LOGIC;
  signal lopt_4 : STD_LOGIC;
  signal \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
begin
  \^lopt_2\ <= lopt_1;
  \^lopt_3\ <= lopt_2;
  lopt <= \^lopt_1\;
  lopt_3 <= lopt_4;
\CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^lopt_1\,
      CO(2) => ROUND_CARRY,
      CO(1) => \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '1',
      DI(3) => \^lopt_2\,
      DI(2 downto 0) => B"100",
      O(3) => lopt_4,
      O(2 downto 0) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(2 downto 0),
      S(3) => \^lopt_3\,
      S(2) => A(1),
      S(1) => '0',
      S(0) => A(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_carry_chain__parameterized2\ is
  port (
    round_mant : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CARRY_OUT : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 0 to 0 );
    lopt : in STD_LOGIC;
    lopt_1 : out STD_LOGIC;
    lopt_2 : in STD_LOGIC;
    lopt_3 : out STD_LOGIC;
    lopt_4 : in STD_LOGIC;
    lopt_5 : in STD_LOGIC;
    lopt_6 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_carry_chain__parameterized2\ : entity is "carry_chain";
end \fix_to_float_carry_chain__parameterized2\;

architecture STRUCTURE of \fix_to_float_carry_chain__parameterized2\ is
  signal \<const0>\ : STD_LOGIC;
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \^lopt_2\ : STD_LOGIC;
  signal \^lopt_3\ : STD_LOGIC;
  signal \^lopt_4\ : STD_LOGIC;
  signal \^lopt_5\ : STD_LOGIC;
  signal \^round_mant\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
begin
  \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ <= lopt;
  \^lopt_3\ <= lopt_4;
  \^lopt_4\ <= lopt_5;
  \^round_mant\(0) <= lopt_2;
  lopt_1 <= \<const0>\;
  lopt_3 <= \^lopt_2\;
  lopt_6 <= \^lopt_5\;
  round_mant(7 downto 0) <= \^round_mant\(7 downto 0);
\CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^round_mant\(4 downto 1),
      S(3) => Q(3),
      S(2) => Q(4),
      S(1) => Q(5),
      S(0) => Q(6)
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \^lopt_2\,
      CO(2) => CARRY_OUT,
      CO(1) => \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3) => \^lopt_3\,
      DI(2 downto 0) => B"000",
      O(3) => \^lopt_5\,
      O(2 downto 0) => \^round_mant\(7 downto 5),
      S(3) => \^lopt_4\,
      S(2) => Q(0),
      S(1) => Q(1),
      S(0) => Q(2)
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_carry_chain__parameterized3\ is
  port (
    \opt_has_pipe.first_q_reg[1]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CARRY_IN : in STD_LOGIC;
    lopt : in STD_LOGIC;
    lopt_1 : out STD_LOGIC;
    lopt_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_carry_chain__parameterized3\ : entity is "carry_chain";
end \fix_to_float_carry_chain__parameterized3\;

architecture STRUCTURE of \fix_to_float_carry_chain__parameterized3\ is
  signal \<const0>\ : STD_LOGIC;
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \^opt_has_pipe.first_q_reg[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
begin
  \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ <= lopt;
  \^opt_has_pipe.first_q_reg[1]\(0) <= lopt_2;
  lopt_1 <= \<const0>\;
  \opt_has_pipe.first_q_reg[1]\(8 downto 0) <= \^opt_has_pipe.first_q_reg[1]\(8 downto 0);
\CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^opt_has_pipe.first_q_reg[1]\(4 downto 1),
      S(3) => Q(3),
      S(2) => Q(4),
      S(1) => Q(5),
      S(0) => Q(6)
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \NLW_CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3) => \NLW_CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\(3),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \^opt_has_pipe.first_q_reg[1]\(8 downto 5),
      S(3) => '1',
      S(2) => Q(0),
      S(1) => Q(1),
      S(0) => Q(2)
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fix_to_float_flt_dec_op is
  port (
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \RESULT_REG.NORMAL.sign_op_reg_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    round_mant : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \RESULT_REG.NORMAL.exp_op_reg[6]_0\ : in STD_LOGIC;
    EXP : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fix_to_float_flt_dec_op : entity is "flt_dec_op";
end fix_to_float_flt_dec_op;

architecture STRUCTURE of fix_to_float_flt_dec_op is
  attribute use_sync_reset : string;
  attribute use_sync_reset of \RESULT_REG.NORMAL.exp_op_reg[0]\ : label is "auto";
  attribute use_sync_set : string;
  attribute use_sync_set of \RESULT_REG.NORMAL.exp_op_reg[0]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.exp_op_reg[1]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.exp_op_reg[1]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.exp_op_reg[2]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.exp_op_reg[2]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.exp_op_reg[3]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.exp_op_reg[3]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.exp_op_reg[4]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.exp_op_reg[4]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.exp_op_reg[5]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.exp_op_reg[5]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.exp_op_reg[6]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.exp_op_reg[6]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.mant_op_reg[0]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.mant_op_reg[0]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.mant_op_reg[10]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.mant_op_reg[10]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.mant_op_reg[11]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.mant_op_reg[11]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.mant_op_reg[12]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.mant_op_reg[12]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.mant_op_reg[13]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.mant_op_reg[13]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.mant_op_reg[14]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.mant_op_reg[14]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.mant_op_reg[15]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.mant_op_reg[15]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.mant_op_reg[1]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.mant_op_reg[1]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.mant_op_reg[2]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.mant_op_reg[2]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.mant_op_reg[3]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.mant_op_reg[3]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.mant_op_reg[4]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.mant_op_reg[4]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.mant_op_reg[5]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.mant_op_reg[5]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.mant_op_reg[6]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.mant_op_reg[6]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.mant_op_reg[7]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.mant_op_reg[7]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.mant_op_reg[8]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.mant_op_reg[8]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.mant_op_reg[9]\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.mant_op_reg[9]\ : label is "auto";
  attribute use_sync_reset of \RESULT_REG.NORMAL.sign_op_reg\ : label is "auto";
  attribute use_sync_set of \RESULT_REG.NORMAL.sign_op_reg\ : label is "auto";
begin
\RESULT_REG.NORMAL.exp_op_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => EXP(0),
      Q => m_axis_result_tdata(16),
      R => '0'
    );
\RESULT_REG.NORMAL.exp_op_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => EXP(1),
      Q => m_axis_result_tdata(17),
      R => '0'
    );
\RESULT_REG.NORMAL.exp_op_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => EXP(2),
      Q => m_axis_result_tdata(18),
      R => '0'
    );
\RESULT_REG.NORMAL.exp_op_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => EXP(3),
      Q => m_axis_result_tdata(19),
      R => '0'
    );
\RESULT_REG.NORMAL.exp_op_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => EXP(4),
      Q => m_axis_result_tdata(20),
      R => '0'
    );
\RESULT_REG.NORMAL.exp_op_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => EXP(5),
      Q => m_axis_result_tdata(21),
      R => '0'
    );
\RESULT_REG.NORMAL.exp_op_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \RESULT_REG.NORMAL.exp_op_reg[6]_0\,
      Q => m_axis_result_tdata(22),
      R => SR(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(0),
      Q => m_axis_result_tdata(0),
      R => SR(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(10),
      Q => m_axis_result_tdata(10),
      R => SR(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(11),
      Q => m_axis_result_tdata(11),
      R => SR(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(12),
      Q => m_axis_result_tdata(12),
      R => SR(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(13),
      Q => m_axis_result_tdata(13),
      R => SR(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(14),
      Q => m_axis_result_tdata(14),
      R => SR(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(15),
      Q => m_axis_result_tdata(15),
      R => SR(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(1),
      Q => m_axis_result_tdata(1),
      R => SR(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(2),
      Q => m_axis_result_tdata(2),
      R => SR(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(3),
      Q => m_axis_result_tdata(3),
      R => SR(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(4),
      Q => m_axis_result_tdata(4),
      R => SR(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(5),
      Q => m_axis_result_tdata(5),
      R => SR(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(6),
      Q => m_axis_result_tdata(6),
      R => SR(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(7),
      Q => m_axis_result_tdata(7),
      R => SR(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(8),
      Q => m_axis_result_tdata(8),
      R => SR(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(9),
      Q => m_axis_result_tdata(9),
      R => SR(0)
    );
\RESULT_REG.NORMAL.sign_op_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \RESULT_REG.NORMAL.sign_op_reg_0\,
      Q => m_axis_result_tdata(23),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fix_to_float_xbip_pipe_v3_0_5_viv is
  port (
    m_axis_result_tvalid : out STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fix_to_float_xbip_pipe_v3_0_5_viv : entity is "xbip_pipe_v3_0_5_viv";
end fix_to_float_xbip_pipe_v3_0_5_viv;

architecture STRUCTURE of fix_to_float_xbip_pipe_v3_0_5_viv is
  signal first_q : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  signal \pipe[2]\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "yes";
begin
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_a_tvalid,
      Q => first_q,
      R => '0'
    );
\opt_has_pipe.i_pipe[2].pipe_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => first_q,
      Q => \pipe[2]\,
      R => '0'
    );
\opt_has_pipe.i_pipe[3].pipe_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \pipe[2]\,
      Q => m_axis_result_tvalid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized11\ is
  port (
    EXP : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.i_pipe[2].pipe_reg[2][1]_0\ : out STD_LOGIC;
    op_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RESULT_REG.NORMAL.exp_op_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RESULT_REG.NORMAL.exp_op_reg[6]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized11\ : entity is "xbip_pipe_v3_0_5_viv";
end \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized11\;

architecture STRUCTURE of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized11\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \opt_has_pipe.first_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RESULT_REG.NORMAL.exp_op[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \RESULT_REG.NORMAL.exp_op[6]_i_1\ : label is "soft_lutpair11";
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "false";
begin
  Q(0) <= \^q\(0);
\RESULT_REG.NORMAL.exp_op[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40441511"
    )
        port map (
      I0 => op_state(0),
      I1 => \^q\(0),
      I2 => \RESULT_REG.NORMAL.exp_op_reg[6]\(0),
      I3 => \RESULT_REG.NORMAL.exp_op_reg[6]_0\,
      I4 => \opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][0]\,
      O => EXP(0)
    );
\RESULT_REG.NORMAL.exp_op[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"75FF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \RESULT_REG.NORMAL.exp_op_reg[6]\(0),
      I2 => \RESULT_REG.NORMAL.exp_op_reg[6]_0\,
      I3 => \opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][0]\,
      O => \opt_has_pipe.i_pipe[2].pipe_reg[2][1]_0\
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => \opt_has_pipe.first_q_reg_n_0_[0]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => \opt_has_pipe.first_q_reg_n_0_[1]\,
      R => '0'
    );
\opt_has_pipe.i_pipe[2].pipe_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg_n_0_[0]\,
      Q => \opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][0]\,
      R => '0'
    );
\opt_has_pipe.i_pipe[2].pipe_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg_n_0_[1]\,
      Q => \^q\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized17\ is
  port (
    EXP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \opt_has_pipe.first_q_reg[0]_0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    op_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RESULT_REG.NORMAL.exp_op_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized17\ : entity is "xbip_pipe_v3_0_5_viv";
end \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized17\;

architecture STRUCTURE of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized17\ is
  signal \opt_has_pipe.first_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RESULT_REG.NORMAL.exp_op[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \RESULT_REG.NORMAL.exp_op[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \RESULT_REG.NORMAL.exp_op[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \RESULT_REG.NORMAL.exp_op[6]_i_2\ : label is "soft_lutpair13";
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "false";
begin
\RESULT_REG.NORMAL.exp_op[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[1]\,
      I1 => Q(0),
      I2 => op_state(0),
      O => EXP(0)
    );
\RESULT_REG.NORMAL.exp_op[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E01"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[1]\,
      I1 => Q(0),
      I2 => op_state(0),
      I3 => \opt_has_pipe.first_q_reg_n_0_[0]\,
      O => EXP(1)
    );
\RESULT_REG.NORMAL.exp_op[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44401115"
    )
        port map (
      I0 => op_state(0),
      I1 => \opt_has_pipe.first_q_reg_n_0_[0]\,
      I2 => \opt_has_pipe.first_q_reg_n_0_[1]\,
      I3 => Q(0),
      I4 => \RESULT_REG.NORMAL.exp_op_reg[3]\(1),
      O => EXP(2)
    );
\RESULT_REG.NORMAL.exp_op[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000057FFA800"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[0]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[1]\,
      I2 => Q(0),
      I3 => \RESULT_REG.NORMAL.exp_op_reg[3]\(1),
      I4 => \RESULT_REG.NORMAL.exp_op_reg[3]\(0),
      I5 => op_state(0),
      O => EXP(3)
    );
\RESULT_REG.NORMAL.exp_op[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57FF"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[0]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[1]\,
      I2 => Q(0),
      I3 => \RESULT_REG.NORMAL.exp_op_reg[3]\(1),
      O => \opt_has_pipe.first_q_reg[0]_0\
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => \opt_has_pipe.first_q_reg_n_0_[0]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => \opt_has_pipe.first_q_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized17_4\ is
  port (
    EXP : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \RESULT_REG.NORMAL.exp_op_reg[4]\ : in STD_LOGIC;
    op_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RESULT_REG.NORMAL.exp_op_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized17_4\ : entity is "xbip_pipe_v3_0_5_viv";
end \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized17_4\;

architecture STRUCTURE of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized17_4\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "false";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\RESULT_REG.NORMAL.exp_op[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \RESULT_REG.NORMAL.exp_op_reg[4]\,
      I2 => op_state(0),
      I3 => \RESULT_REG.NORMAL.exp_op_reg[4]_0\(0),
      O => EXP(0)
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => '0'
    );
\opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized21\ is
  port (
    \z_det_up[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[0]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.first_q_reg[0]_i_3_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    c_int_16 : in STD_LOGIC;
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 0 to 0 );
    c_int_32 : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[15]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    c_int_48 : in STD_LOGIC;
    \ZERO_DET[63].mc__0\ : in STD_LOGIC;
    c_int_15 : in STD_LOGIC;
    c_int_31 : in STD_LOGIC;
    c_int_47 : in STD_LOGIC;
    c_int_63 : in STD_LOGIC;
    c_int_14 : in STD_LOGIC;
    c_int_30 : in STD_LOGIC;
    c_int_46 : in STD_LOGIC;
    c_int_62 : in STD_LOGIC;
    c_int_13 : in STD_LOGIC;
    c_int_29 : in STD_LOGIC;
    c_int_45 : in STD_LOGIC;
    c_int_61 : in STD_LOGIC;
    c_int_12 : in STD_LOGIC;
    c_int_28 : in STD_LOGIC;
    c_int_44 : in STD_LOGIC;
    c_int_60 : in STD_LOGIC;
    c_int_11 : in STD_LOGIC;
    c_int_27 : in STD_LOGIC;
    c_int_43 : in STD_LOGIC;
    c_int_59 : in STD_LOGIC;
    c_int_10 : in STD_LOGIC;
    c_int_26 : in STD_LOGIC;
    c_int_42 : in STD_LOGIC;
    c_int_58 : in STD_LOGIC;
    c_int_9 : in STD_LOGIC;
    c_int_25 : in STD_LOGIC;
    c_int_41 : in STD_LOGIC;
    c_int_57 : in STD_LOGIC;
    c_int_8 : in STD_LOGIC;
    c_int_24 : in STD_LOGIC;
    c_int_40 : in STD_LOGIC;
    c_int_56 : in STD_LOGIC;
    c_int_7 : in STD_LOGIC;
    c_int_23 : in STD_LOGIC;
    c_int_39 : in STD_LOGIC;
    c_int_55 : in STD_LOGIC;
    c_int_6 : in STD_LOGIC;
    c_int_22 : in STD_LOGIC;
    c_int_38 : in STD_LOGIC;
    c_int_54 : in STD_LOGIC;
    c_int_5 : in STD_LOGIC;
    c_int_21 : in STD_LOGIC;
    c_int_37 : in STD_LOGIC;
    c_int_53 : in STD_LOGIC;
    c_int_4 : in STD_LOGIC;
    c_int_20 : in STD_LOGIC;
    c_int_36 : in STD_LOGIC;
    c_int_52 : in STD_LOGIC;
    c_int_3 : in STD_LOGIC;
    c_int_19 : in STD_LOGIC;
    c_int_35 : in STD_LOGIC;
    c_int_51 : in STD_LOGIC;
    c_int_2 : in STD_LOGIC;
    c_int_18 : in STD_LOGIC;
    c_int_34 : in STD_LOGIC;
    c_int_50 : in STD_LOGIC;
    c_int_1 : in STD_LOGIC;
    c_int_17 : in STD_LOGIC;
    c_int_33 : in STD_LOGIC;
    c_int_49 : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized21\ : entity is "xbip_pipe_v3_0_5_viv";
end \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized21\;

architecture STRUCTURE of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized21\ is
  signal first_q : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  signal \opt_has_pipe.first_q[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[0]_i_4_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[0]_i_5_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[0]_i_6_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[0]_i_7_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[10]_i_2__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[11]_i_2__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[13]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[14]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[15]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[1]_i_2__2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[7]_i_2__1_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \z_det_up[0]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[0]_i_2__1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[10]_i_2__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[11]_i_2__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[12]_i_2__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[13]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[14]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[15]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[1]_i_2__2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[2]_i_2__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[3]_i_2__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[4]_i_2__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[5]_i_2__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[6]_i_2__1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[7]_i_2__1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[8]_i_2__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[9]_i_2__0\ : label is "soft_lutpair18";
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[10]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[11]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[12]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[13]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[14]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[15]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[2]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[3]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[4]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[5]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[6]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[7]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[8]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[9]\ : label is "yes";
begin
\opt_has_pipe.first_q[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => c_int_1,
      I1 => CARRYS_OUT(0),
      I2 => c_int_17,
      I3 => \opt_has_pipe.first_q_reg[15]_0\(1),
      I4 => \opt_has_pipe.first_q[0]_i_2__1_n_0\,
      O => \z_det_up[0]\(0)
    );
\opt_has_pipe.first_q[0]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => c_int_33,
      I1 => \opt_has_pipe.first_q_reg[15]_0\(0),
      I2 => c_int_49,
      O => \opt_has_pipe.first_q[0]_i_2__1_n_0\
    );
\opt_has_pipe.first_q[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => first_q(12),
      I1 => first_q(14),
      I2 => \opt_has_pipe.first_q_reg[0]_i_3_0\(0),
      I3 => first_q(13),
      I4 => \opt_has_pipe.first_q_reg[0]_i_3_0\(1),
      I5 => first_q(15),
      O => \opt_has_pipe.first_q[0]_i_4_n_0\
    );
\opt_has_pipe.first_q[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => first_q(8),
      I1 => first_q(10),
      I2 => \opt_has_pipe.first_q_reg[0]_i_3_0\(2),
      I3 => first_q(9),
      I4 => \opt_has_pipe.first_q_reg[0]_i_3_0\(3),
      I5 => first_q(11),
      O => \opt_has_pipe.first_q[0]_i_5_n_0\
    );
\opt_has_pipe.first_q[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => first_q(4),
      I1 => first_q(6),
      I2 => \opt_has_pipe.first_q_reg[0]_i_3_0\(4),
      I3 => first_q(5),
      I4 => \opt_has_pipe.first_q_reg[0]_i_3_0\(5),
      I5 => first_q(7),
      O => \opt_has_pipe.first_q[0]_i_6_n_0\
    );
\opt_has_pipe.first_q[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => first_q(0),
      I1 => first_q(2),
      I2 => \opt_has_pipe.first_q_reg[0]_i_3_0\(6),
      I3 => first_q(1),
      I4 => \opt_has_pipe.first_q_reg[0]_i_3_0\(7),
      I5 => first_q(3),
      O => \opt_has_pipe.first_q[0]_i_7_n_0\
    );
\opt_has_pipe.first_q[10]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => c_int_11,
      I1 => CARRYS_OUT(0),
      I2 => c_int_27,
      I3 => \opt_has_pipe.first_q_reg[15]_0\(1),
      I4 => \opt_has_pipe.first_q[10]_i_2__0_n_0\,
      O => \z_det_up[0]\(10)
    );
\opt_has_pipe.first_q[10]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => c_int_43,
      I1 => \opt_has_pipe.first_q_reg[15]_0\(0),
      I2 => c_int_59,
      O => \opt_has_pipe.first_q[10]_i_2__0_n_0\
    );
\opt_has_pipe.first_q[11]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => c_int_12,
      I1 => CARRYS_OUT(0),
      I2 => c_int_28,
      I3 => \opt_has_pipe.first_q_reg[15]_0\(1),
      I4 => \opt_has_pipe.first_q[11]_i_2__0_n_0\,
      O => \z_det_up[0]\(11)
    );
\opt_has_pipe.first_q[11]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => c_int_44,
      I1 => \opt_has_pipe.first_q_reg[15]_0\(0),
      I2 => c_int_60,
      O => \opt_has_pipe.first_q[11]_i_2__0_n_0\
    );
\opt_has_pipe.first_q[12]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => c_int_13,
      I1 => CARRYS_OUT(0),
      I2 => c_int_29,
      I3 => \opt_has_pipe.first_q_reg[15]_0\(1),
      I4 => \opt_has_pipe.first_q[12]_i_2__0_n_0\,
      O => \z_det_up[0]\(12)
    );
\opt_has_pipe.first_q[12]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => c_int_45,
      I1 => \opt_has_pipe.first_q_reg[15]_0\(0),
      I2 => c_int_61,
      O => \opt_has_pipe.first_q[12]_i_2__0_n_0\
    );
\opt_has_pipe.first_q[13]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => c_int_14,
      I1 => CARRYS_OUT(0),
      I2 => c_int_30,
      I3 => \opt_has_pipe.first_q_reg[15]_0\(1),
      I4 => \opt_has_pipe.first_q[13]_i_2_n_0\,
      O => \z_det_up[0]\(13)
    );
\opt_has_pipe.first_q[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => c_int_46,
      I1 => \opt_has_pipe.first_q_reg[15]_0\(0),
      I2 => c_int_62,
      O => \opt_has_pipe.first_q[13]_i_2_n_0\
    );
\opt_has_pipe.first_q[14]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => c_int_15,
      I1 => CARRYS_OUT(0),
      I2 => c_int_31,
      I3 => \opt_has_pipe.first_q_reg[15]_0\(1),
      I4 => \opt_has_pipe.first_q[14]_i_2_n_0\,
      O => \z_det_up[0]\(14)
    );
\opt_has_pipe.first_q[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => c_int_47,
      I1 => \opt_has_pipe.first_q_reg[15]_0\(0),
      I2 => c_int_63,
      O => \opt_has_pipe.first_q[14]_i_2_n_0\
    );
\opt_has_pipe.first_q[15]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => c_int_16,
      I1 => CARRYS_OUT(0),
      I2 => c_int_32,
      I3 => \opt_has_pipe.first_q_reg[15]_0\(1),
      I4 => \opt_has_pipe.first_q[15]_i_2_n_0\,
      O => \z_det_up[0]\(15)
    );
\opt_has_pipe.first_q[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => c_int_48,
      I1 => \opt_has_pipe.first_q_reg[15]_0\(0),
      I2 => \ZERO_DET[63].mc__0\,
      O => \opt_has_pipe.first_q[15]_i_2_n_0\
    );
\opt_has_pipe.first_q[1]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => c_int_2,
      I1 => CARRYS_OUT(0),
      I2 => c_int_18,
      I3 => \opt_has_pipe.first_q_reg[15]_0\(1),
      I4 => \opt_has_pipe.first_q[1]_i_2__2_n_0\,
      O => \z_det_up[0]\(1)
    );
\opt_has_pipe.first_q[1]_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => c_int_34,
      I1 => \opt_has_pipe.first_q_reg[15]_0\(0),
      I2 => c_int_50,
      O => \opt_has_pipe.first_q[1]_i_2__2_n_0\
    );
\opt_has_pipe.first_q[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => c_int_3,
      I1 => CARRYS_OUT(0),
      I2 => c_int_19,
      I3 => \opt_has_pipe.first_q_reg[15]_0\(1),
      I4 => \opt_has_pipe.first_q[2]_i_2__1_n_0\,
      O => \z_det_up[0]\(2)
    );
\opt_has_pipe.first_q[2]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => c_int_35,
      I1 => \opt_has_pipe.first_q_reg[15]_0\(0),
      I2 => c_int_51,
      O => \opt_has_pipe.first_q[2]_i_2__1_n_0\
    );
\opt_has_pipe.first_q[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => c_int_4,
      I1 => CARRYS_OUT(0),
      I2 => c_int_20,
      I3 => \opt_has_pipe.first_q_reg[15]_0\(1),
      I4 => \opt_has_pipe.first_q[3]_i_2__0_n_0\,
      O => \z_det_up[0]\(3)
    );
\opt_has_pipe.first_q[3]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => c_int_36,
      I1 => \opt_has_pipe.first_q_reg[15]_0\(0),
      I2 => c_int_52,
      O => \opt_has_pipe.first_q[3]_i_2__0_n_0\
    );
\opt_has_pipe.first_q[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => c_int_5,
      I1 => CARRYS_OUT(0),
      I2 => c_int_21,
      I3 => \opt_has_pipe.first_q_reg[15]_0\(1),
      I4 => \opt_has_pipe.first_q[4]_i_2__0_n_0\,
      O => \z_det_up[0]\(4)
    );
\opt_has_pipe.first_q[4]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => c_int_37,
      I1 => \opt_has_pipe.first_q_reg[15]_0\(0),
      I2 => c_int_53,
      O => \opt_has_pipe.first_q[4]_i_2__0_n_0\
    );
\opt_has_pipe.first_q[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => c_int_6,
      I1 => CARRYS_OUT(0),
      I2 => c_int_22,
      I3 => \opt_has_pipe.first_q_reg[15]_0\(1),
      I4 => \opt_has_pipe.first_q[5]_i_2__0_n_0\,
      O => \z_det_up[0]\(5)
    );
\opt_has_pipe.first_q[5]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => c_int_38,
      I1 => \opt_has_pipe.first_q_reg[15]_0\(0),
      I2 => c_int_54,
      O => \opt_has_pipe.first_q[5]_i_2__0_n_0\
    );
\opt_has_pipe.first_q[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => c_int_7,
      I1 => CARRYS_OUT(0),
      I2 => c_int_23,
      I3 => \opt_has_pipe.first_q_reg[15]_0\(1),
      I4 => \opt_has_pipe.first_q[6]_i_2__1_n_0\,
      O => \z_det_up[0]\(6)
    );
\opt_has_pipe.first_q[6]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => c_int_39,
      I1 => \opt_has_pipe.first_q_reg[15]_0\(0),
      I2 => c_int_55,
      O => \opt_has_pipe.first_q[6]_i_2__1_n_0\
    );
\opt_has_pipe.first_q[7]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => c_int_8,
      I1 => CARRYS_OUT(0),
      I2 => c_int_24,
      I3 => \opt_has_pipe.first_q_reg[15]_0\(1),
      I4 => \opt_has_pipe.first_q[7]_i_2__1_n_0\,
      O => \z_det_up[0]\(7)
    );
\opt_has_pipe.first_q[7]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => c_int_40,
      I1 => \opt_has_pipe.first_q_reg[15]_0\(0),
      I2 => c_int_56,
      O => \opt_has_pipe.first_q[7]_i_2__1_n_0\
    );
\opt_has_pipe.first_q[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => c_int_9,
      I1 => CARRYS_OUT(0),
      I2 => c_int_25,
      I3 => \opt_has_pipe.first_q_reg[15]_0\(1),
      I4 => \opt_has_pipe.first_q[8]_i_2__0_n_0\,
      O => \z_det_up[0]\(8)
    );
\opt_has_pipe.first_q[8]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => c_int_41,
      I1 => \opt_has_pipe.first_q_reg[15]_0\(0),
      I2 => c_int_57,
      O => \opt_has_pipe.first_q[8]_i_2__0_n_0\
    );
\opt_has_pipe.first_q[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => c_int_10,
      I1 => CARRYS_OUT(0),
      I2 => c_int_26,
      I3 => \opt_has_pipe.first_q_reg[15]_0\(1),
      I4 => \opt_has_pipe.first_q[9]_i_2__0_n_0\,
      O => \z_det_up[0]\(9)
    );
\opt_has_pipe.first_q[9]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => c_int_42,
      I1 => \opt_has_pipe.first_q_reg[15]_0\(0),
      I2 => c_int_58,
      O => \opt_has_pipe.first_q[9]_i_2__0_n_0\
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \z_det_up[0]\(0),
      Q => first_q(0),
      R => '0'
    );
\opt_has_pipe.first_q_reg[0]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[0]_i_2_n_0\,
      I1 => \opt_has_pipe.first_q_reg[0]_i_3_n_0\,
      O => \z_det_up[2]_1\(0),
      S => \opt_has_pipe.first_q_reg[0]_0\(1)
    );
\opt_has_pipe.first_q_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[0]_i_4_n_0\,
      I1 => \opt_has_pipe.first_q[0]_i_5_n_0\,
      O => \opt_has_pipe.first_q_reg[0]_i_2_n_0\,
      S => \opt_has_pipe.first_q_reg[0]_0\(0)
    );
\opt_has_pipe.first_q_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[0]_i_6_n_0\,
      I1 => \opt_has_pipe.first_q[0]_i_7_n_0\,
      O => \opt_has_pipe.first_q_reg[0]_i_3_n_0\,
      S => \opt_has_pipe.first_q_reg[0]_0\(2)
    );
\opt_has_pipe.first_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \z_det_up[0]\(10),
      Q => first_q(10),
      R => '0'
    );
\opt_has_pipe.first_q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \z_det_up[0]\(11),
      Q => first_q(11),
      R => '0'
    );
\opt_has_pipe.first_q_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \z_det_up[0]\(12),
      Q => first_q(12),
      R => '0'
    );
\opt_has_pipe.first_q_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \z_det_up[0]\(13),
      Q => first_q(13),
      R => '0'
    );
\opt_has_pipe.first_q_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \z_det_up[0]\(14),
      Q => first_q(14),
      R => '0'
    );
\opt_has_pipe.first_q_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \z_det_up[0]\(15),
      Q => first_q(15),
      R => '0'
    );
\opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \z_det_up[0]\(1),
      Q => first_q(1),
      R => '0'
    );
\opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \z_det_up[0]\(2),
      Q => first_q(2),
      R => '0'
    );
\opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \z_det_up[0]\(3),
      Q => first_q(3),
      R => '0'
    );
\opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \z_det_up[0]\(4),
      Q => first_q(4),
      R => '0'
    );
\opt_has_pipe.first_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \z_det_up[0]\(5),
      Q => first_q(5),
      R => '0'
    );
\opt_has_pipe.first_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \z_det_up[0]\(6),
      Q => first_q(6),
      R => '0'
    );
\opt_has_pipe.first_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \z_det_up[0]\(7),
      Q => first_q(7),
      R => '0'
    );
\opt_has_pipe.first_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \z_det_up[0]\(8),
      Q => first_q(8),
      R => '0'
    );
\opt_has_pipe.first_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \z_det_up[0]\(9),
      Q => first_q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized27\ is
  port (
    \out\ : out STD_LOGIC;
    \z_det_up[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized27\ : entity is "xbip_pipe_v3_0_5_viv";
end \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized27\;

architecture STRUCTURE of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized27\ is
  signal first_q : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "yes";
begin
  \out\ <= first_q;
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \z_det_up[2]_1\(0),
      Q => first_q,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized29\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 17 downto 0 );
    D : in STD_LOGIC_VECTOR ( 17 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized29\ : entity is "xbip_pipe_v3_0_5_viv";
end \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized29\;

architecture STRUCTURE of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized29\ is
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[10]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[11]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[12]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[13]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[14]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[15]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[16]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[17]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[18]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[2]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[3]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[4]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[5]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[6]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[7]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[8]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[9]\ : label is "false";
begin
\opt_has_pipe.first_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(9),
      Q => Q(9),
      R => '0'
    );
\opt_has_pipe.first_q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(10),
      Q => Q(10),
      R => '0'
    );
\opt_has_pipe.first_q_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(11),
      Q => Q(11),
      R => '0'
    );
\opt_has_pipe.first_q_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(12),
      Q => Q(12),
      R => '0'
    );
\opt_has_pipe.first_q_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(13),
      Q => Q(13),
      R => '0'
    );
\opt_has_pipe.first_q_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(14),
      Q => Q(14),
      R => '0'
    );
\opt_has_pipe.first_q_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(15),
      Q => Q(15),
      R => '0'
    );
\opt_has_pipe.first_q_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(16),
      Q => Q(16),
      R => '0'
    );
\opt_has_pipe.first_q_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(17),
      Q => Q(17),
      R => '0'
    );
\opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => '0'
    );
\opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => '0'
    );
\opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => '0'
    );
\opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => '0'
    );
\opt_has_pipe.first_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(4),
      Q => Q(4),
      R => '0'
    );
\opt_has_pipe.first_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(5),
      Q => Q(5),
      R => '0'
    );
\opt_has_pipe.first_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(6),
      Q => Q(6),
      R => '0'
    );
\opt_has_pipe.first_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(7),
      Q => Q(7),
      R => '0'
    );
\opt_has_pipe.first_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(8),
      Q => Q(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized29_1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 17 downto 0 );
    \opt_has_pipe.first_q_reg[18]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \opt_has_pipe.first_q_reg[28]_0\ : in STD_LOGIC_VECTOR ( 27 downto 0 );
    aclk : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[33]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[33]_1\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[32]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[31]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[30]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[29]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized29_1\ : entity is "xbip_pipe_v3_0_5_viv";
end \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized29_1\;

architecture STRUCTURE of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized29_1\ is
  signal \opt_has_pipe.first_q[10]_i_4_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[10]_i_5_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[10]_i_6_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[10]_i_7_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[11]_i_4_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[11]_i_5_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[11]_i_6_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[11]_i_7_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[12]_i_4_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[12]_i_5_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[12]_i_6_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[12]_i_7_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[13]_i_4_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[13]_i_5_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[13]_i_6_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[13]_i_7_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[14]_i_4_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[14]_i_5_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[14]_i_6_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[14]_i_7_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[15]_i_4_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[15]_i_5_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[15]_i_6_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[15]_i_7_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[16]_i_4_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[16]_i_5_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[16]_i_6_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[16]_i_7_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[17]_i_4_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[17]_i_5_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[17]_i_6_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[17]_i_7_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[18]_i_4_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[18]_i_5_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[18]_i_6_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[18]_i_7_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[1]_i_6__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[1]_i_7__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[2]_i_5__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[2]_i_6__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[2]_i_7__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[3]_i_7__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[4]_i_6__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[4]_i_7__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[5]_i_4__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[5]_i_5__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[5]_i_6__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[5]_i_7__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[6]_i_4__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[6]_i_5_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[6]_i_6_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[6]_i_7_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[7]_i_5_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[7]_i_6_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[7]_i_7_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[8]_i_4_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[8]_i_5_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[8]_i_6_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[8]_i_7_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[9]_i_4_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[9]_i_5_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[9]_i_6_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[9]_i_7_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[16]_i_3_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[17]_i_3_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[18]_i_3_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[5]_i_3__0_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[10]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[11]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[12]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[13]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[14]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[15]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[16]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[17]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[18]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[19]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[20]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[21]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[22]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[23]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[24]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[25]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[26]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[27]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[28]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[29]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[30]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[31]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[32]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[33]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[7]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[8]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[9]\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[10]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[11]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[12]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[13]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[14]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[15]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[16]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[17]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[18]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[19]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[20]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[21]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[22]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[23]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[24]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[25]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[26]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[27]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[28]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[29]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[2]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[30]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[31]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[32]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[33]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[3]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[4]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[5]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[6]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[7]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[8]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[9]\ : label is "false";
begin
\opt_has_pipe.first_q[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[11]\,
      I2 => \out\(0),
      I3 => \opt_has_pipe.first_q_reg_n_0_[12]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[10]\,
      O => \opt_has_pipe.first_q[10]_i_4_n_0\
    );
\opt_has_pipe.first_q[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[17]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[15]\,
      I2 => \out\(2),
      I3 => \opt_has_pipe.first_q_reg_n_0_[16]\,
      I4 => \out\(3),
      I5 => \opt_has_pipe.first_q_reg_n_0_[14]\,
      O => \opt_has_pipe.first_q[10]_i_5_n_0\
    );
\opt_has_pipe.first_q[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[21]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[19]\,
      I2 => \out\(4),
      I3 => \opt_has_pipe.first_q_reg_n_0_[20]\,
      I4 => \out\(5),
      I5 => \opt_has_pipe.first_q_reg_n_0_[18]\,
      O => \opt_has_pipe.first_q[10]_i_6_n_0\
    );
\opt_has_pipe.first_q[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[25]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[23]\,
      I2 => \out\(6),
      I3 => \opt_has_pipe.first_q_reg_n_0_[24]\,
      I4 => \out\(7),
      I5 => \opt_has_pipe.first_q_reg_n_0_[22]\,
      O => \opt_has_pipe.first_q[10]_i_7_n_0\
    );
\opt_has_pipe.first_q[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[14]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[12]\,
      I2 => \out\(0),
      I3 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[11]\,
      O => \opt_has_pipe.first_q[11]_i_4_n_0\
    );
\opt_has_pipe.first_q[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[18]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[16]\,
      I2 => \out\(2),
      I3 => \opt_has_pipe.first_q_reg_n_0_[17]\,
      I4 => \out\(3),
      I5 => \opt_has_pipe.first_q_reg_n_0_[15]\,
      O => \opt_has_pipe.first_q[11]_i_5_n_0\
    );
\opt_has_pipe.first_q[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[22]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[20]\,
      I2 => \out\(4),
      I3 => \opt_has_pipe.first_q_reg_n_0_[21]\,
      I4 => \out\(5),
      I5 => \opt_has_pipe.first_q_reg_n_0_[19]\,
      O => \opt_has_pipe.first_q[11]_i_6_n_0\
    );
\opt_has_pipe.first_q[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[26]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[24]\,
      I2 => \out\(6),
      I3 => \opt_has_pipe.first_q_reg_n_0_[25]\,
      I4 => \out\(7),
      I5 => \opt_has_pipe.first_q_reg_n_0_[23]\,
      O => \opt_has_pipe.first_q[11]_i_7_n_0\
    );
\opt_has_pipe.first_q[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[15]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      I2 => \out\(0),
      I3 => \opt_has_pipe.first_q_reg_n_0_[14]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[12]\,
      O => \opt_has_pipe.first_q[12]_i_4_n_0\
    );
\opt_has_pipe.first_q[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[19]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[17]\,
      I2 => \out\(2),
      I3 => \opt_has_pipe.first_q_reg_n_0_[18]\,
      I4 => \out\(3),
      I5 => \opt_has_pipe.first_q_reg_n_0_[16]\,
      O => \opt_has_pipe.first_q[12]_i_5_n_0\
    );
\opt_has_pipe.first_q[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[23]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[21]\,
      I2 => \out\(4),
      I3 => \opt_has_pipe.first_q_reg_n_0_[22]\,
      I4 => \out\(5),
      I5 => \opt_has_pipe.first_q_reg_n_0_[20]\,
      O => \opt_has_pipe.first_q[12]_i_6_n_0\
    );
\opt_has_pipe.first_q[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[27]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[25]\,
      I2 => \out\(6),
      I3 => \opt_has_pipe.first_q_reg_n_0_[26]\,
      I4 => \out\(7),
      I5 => \opt_has_pipe.first_q_reg_n_0_[24]\,
      O => \opt_has_pipe.first_q[12]_i_7_n_0\
    );
\opt_has_pipe.first_q[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[16]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[14]\,
      I2 => \out\(0),
      I3 => \opt_has_pipe.first_q_reg_n_0_[15]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      O => \opt_has_pipe.first_q[13]_i_4_n_0\
    );
\opt_has_pipe.first_q[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[20]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[18]\,
      I2 => \out\(2),
      I3 => \opt_has_pipe.first_q_reg_n_0_[19]\,
      I4 => \out\(3),
      I5 => \opt_has_pipe.first_q_reg_n_0_[17]\,
      O => \opt_has_pipe.first_q[13]_i_5_n_0\
    );
\opt_has_pipe.first_q[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[24]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[22]\,
      I2 => \out\(4),
      I3 => \opt_has_pipe.first_q_reg_n_0_[23]\,
      I4 => \out\(5),
      I5 => \opt_has_pipe.first_q_reg_n_0_[21]\,
      O => \opt_has_pipe.first_q[13]_i_6_n_0\
    );
\opt_has_pipe.first_q[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[28]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[26]\,
      I2 => \out\(6),
      I3 => \opt_has_pipe.first_q_reg_n_0_[27]\,
      I4 => \out\(7),
      I5 => \opt_has_pipe.first_q_reg_n_0_[25]\,
      O => \opt_has_pipe.first_q[13]_i_7_n_0\
    );
\opt_has_pipe.first_q[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[17]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[15]\,
      I2 => \out\(0),
      I3 => \opt_has_pipe.first_q_reg_n_0_[16]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[14]\,
      O => \opt_has_pipe.first_q[14]_i_4_n_0\
    );
\opt_has_pipe.first_q[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[21]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[19]\,
      I2 => \out\(2),
      I3 => \opt_has_pipe.first_q_reg_n_0_[20]\,
      I4 => \out\(3),
      I5 => \opt_has_pipe.first_q_reg_n_0_[18]\,
      O => \opt_has_pipe.first_q[14]_i_5_n_0\
    );
\opt_has_pipe.first_q[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[25]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[23]\,
      I2 => \out\(4),
      I3 => \opt_has_pipe.first_q_reg_n_0_[24]\,
      I4 => \out\(5),
      I5 => \opt_has_pipe.first_q_reg_n_0_[22]\,
      O => \opt_has_pipe.first_q[14]_i_6_n_0\
    );
\opt_has_pipe.first_q[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[29]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[27]\,
      I2 => \out\(6),
      I3 => \opt_has_pipe.first_q_reg_n_0_[28]\,
      I4 => \out\(7),
      I5 => \opt_has_pipe.first_q_reg_n_0_[26]\,
      O => \opt_has_pipe.first_q[14]_i_7_n_0\
    );
\opt_has_pipe.first_q[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[18]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[16]\,
      I2 => \out\(0),
      I3 => \opt_has_pipe.first_q_reg_n_0_[17]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[15]\,
      O => \opt_has_pipe.first_q[15]_i_4_n_0\
    );
\opt_has_pipe.first_q[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[22]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[20]\,
      I2 => \out\(2),
      I3 => \opt_has_pipe.first_q_reg_n_0_[21]\,
      I4 => \out\(3),
      I5 => \opt_has_pipe.first_q_reg_n_0_[19]\,
      O => \opt_has_pipe.first_q[15]_i_5_n_0\
    );
\opt_has_pipe.first_q[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[26]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[24]\,
      I2 => \out\(4),
      I3 => \opt_has_pipe.first_q_reg_n_0_[25]\,
      I4 => \out\(5),
      I5 => \opt_has_pipe.first_q_reg_n_0_[23]\,
      O => \opt_has_pipe.first_q[15]_i_6_n_0\
    );
\opt_has_pipe.first_q[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[30]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[28]\,
      I2 => \out\(6),
      I3 => \opt_has_pipe.first_q_reg_n_0_[29]\,
      I4 => \out\(7),
      I5 => \opt_has_pipe.first_q_reg_n_0_[27]\,
      O => \opt_has_pipe.first_q[15]_i_7_n_0\
    );
\opt_has_pipe.first_q[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[19]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[17]\,
      I2 => \out\(0),
      I3 => \opt_has_pipe.first_q_reg_n_0_[18]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[16]\,
      O => \opt_has_pipe.first_q[16]_i_4_n_0\
    );
\opt_has_pipe.first_q[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[23]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[21]\,
      I2 => \out\(2),
      I3 => \opt_has_pipe.first_q_reg_n_0_[22]\,
      I4 => \out\(3),
      I5 => \opt_has_pipe.first_q_reg_n_0_[20]\,
      O => \opt_has_pipe.first_q[16]_i_5_n_0\
    );
\opt_has_pipe.first_q[16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[27]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[25]\,
      I2 => \out\(4),
      I3 => \opt_has_pipe.first_q_reg_n_0_[26]\,
      I4 => \out\(5),
      I5 => \opt_has_pipe.first_q_reg_n_0_[24]\,
      O => \opt_has_pipe.first_q[16]_i_6_n_0\
    );
\opt_has_pipe.first_q[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[31]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[29]\,
      I2 => \out\(6),
      I3 => \opt_has_pipe.first_q_reg_n_0_[30]\,
      I4 => \out\(7),
      I5 => \opt_has_pipe.first_q_reg_n_0_[28]\,
      O => \opt_has_pipe.first_q[16]_i_7_n_0\
    );
\opt_has_pipe.first_q[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[20]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[18]\,
      I2 => \out\(0),
      I3 => \opt_has_pipe.first_q_reg_n_0_[19]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[17]\,
      O => \opt_has_pipe.first_q[17]_i_4_n_0\
    );
\opt_has_pipe.first_q[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[24]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[22]\,
      I2 => \out\(2),
      I3 => \opt_has_pipe.first_q_reg_n_0_[23]\,
      I4 => \out\(3),
      I5 => \opt_has_pipe.first_q_reg_n_0_[21]\,
      O => \opt_has_pipe.first_q[17]_i_5_n_0\
    );
\opt_has_pipe.first_q[17]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[28]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[26]\,
      I2 => \out\(4),
      I3 => \opt_has_pipe.first_q_reg_n_0_[27]\,
      I4 => \out\(5),
      I5 => \opt_has_pipe.first_q_reg_n_0_[25]\,
      O => \opt_has_pipe.first_q[17]_i_6_n_0\
    );
\opt_has_pipe.first_q[17]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[32]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[30]\,
      I2 => \out\(6),
      I3 => \opt_has_pipe.first_q_reg_n_0_[31]\,
      I4 => \out\(7),
      I5 => \opt_has_pipe.first_q_reg_n_0_[29]\,
      O => \opt_has_pipe.first_q[17]_i_7_n_0\
    );
\opt_has_pipe.first_q[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[21]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[19]\,
      I2 => \out\(0),
      I3 => \opt_has_pipe.first_q_reg_n_0_[20]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[18]\,
      O => \opt_has_pipe.first_q[18]_i_4_n_0\
    );
\opt_has_pipe.first_q[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[25]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[23]\,
      I2 => \out\(2),
      I3 => \opt_has_pipe.first_q_reg_n_0_[24]\,
      I4 => \out\(3),
      I5 => \opt_has_pipe.first_q_reg_n_0_[22]\,
      O => \opt_has_pipe.first_q[18]_i_5_n_0\
    );
\opt_has_pipe.first_q[18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[29]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[27]\,
      I2 => \out\(4),
      I3 => \opt_has_pipe.first_q_reg_n_0_[28]\,
      I4 => \out\(5),
      I5 => \opt_has_pipe.first_q_reg_n_0_[26]\,
      O => \opt_has_pipe.first_q[18]_i_6_n_0\
    );
\opt_has_pipe.first_q[18]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[33]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[31]\,
      I2 => \out\(6),
      I3 => \opt_has_pipe.first_q_reg_n_0_[32]\,
      I4 => \out\(7),
      I5 => \opt_has_pipe.first_q_reg_n_0_[30]\,
      O => \opt_has_pipe.first_q[18]_i_7_n_0\
    );
\opt_has_pipe.first_q[1]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[4]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[2]\,
      I2 => \out\(0),
      I3 => \opt_has_pipe.first_q_reg_n_0_[3]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[1]\,
      O => \opt_has_pipe.first_q[1]_i_4__0_n_0\
    );
\opt_has_pipe.first_q[1]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[8]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[6]\,
      I2 => \out\(2),
      I3 => \opt_has_pipe.first_q_reg_n_0_[7]\,
      I4 => \out\(3),
      I5 => \opt_has_pipe.first_q_reg_n_0_[5]\,
      O => \opt_has_pipe.first_q[1]_i_5__0_n_0\
    );
\opt_has_pipe.first_q[1]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[12]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[10]\,
      I2 => \out\(4),
      I3 => \opt_has_pipe.first_q_reg_n_0_[11]\,
      I4 => \out\(5),
      I5 => \opt_has_pipe.first_q_reg_n_0_[9]\,
      O => \opt_has_pipe.first_q[1]_i_6__0_n_0\
    );
\opt_has_pipe.first_q[1]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[16]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[14]\,
      I2 => \out\(6),
      I3 => \opt_has_pipe.first_q_reg_n_0_[15]\,
      I4 => \out\(7),
      I5 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      O => \opt_has_pipe.first_q[1]_i_7__0_n_0\
    );
\opt_has_pipe.first_q[2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[5]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[3]\,
      I2 => \out\(0),
      I3 => \opt_has_pipe.first_q_reg_n_0_[4]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[2]\,
      O => \opt_has_pipe.first_q[2]_i_4__0_n_0\
    );
\opt_has_pipe.first_q[2]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[9]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[7]\,
      I2 => \out\(2),
      I3 => \opt_has_pipe.first_q_reg_n_0_[8]\,
      I4 => \out\(3),
      I5 => \opt_has_pipe.first_q_reg_n_0_[6]\,
      O => \opt_has_pipe.first_q[2]_i_5__0_n_0\
    );
\opt_has_pipe.first_q[2]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[11]\,
      I2 => \out\(4),
      I3 => \opt_has_pipe.first_q_reg_n_0_[12]\,
      I4 => \out\(5),
      I5 => \opt_has_pipe.first_q_reg_n_0_[10]\,
      O => \opt_has_pipe.first_q[2]_i_6__0_n_0\
    );
\opt_has_pipe.first_q[2]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[17]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[15]\,
      I2 => \out\(6),
      I3 => \opt_has_pipe.first_q_reg_n_0_[16]\,
      I4 => \out\(7),
      I5 => \opt_has_pipe.first_q_reg_n_0_[14]\,
      O => \opt_has_pipe.first_q[2]_i_7__0_n_0\
    );
\opt_has_pipe.first_q[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[6]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[4]\,
      I2 => \out\(0),
      I3 => \opt_has_pipe.first_q_reg_n_0_[5]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[3]\,
      O => \opt_has_pipe.first_q[3]_i_4__0_n_0\
    );
\opt_has_pipe.first_q[3]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[10]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[8]\,
      I2 => \out\(2),
      I3 => \opt_has_pipe.first_q_reg_n_0_[9]\,
      I4 => \out\(3),
      I5 => \opt_has_pipe.first_q_reg_n_0_[7]\,
      O => \opt_has_pipe.first_q[3]_i_5__0_n_0\
    );
\opt_has_pipe.first_q[3]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[14]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[12]\,
      I2 => \out\(4),
      I3 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      I4 => \out\(5),
      I5 => \opt_has_pipe.first_q_reg_n_0_[11]\,
      O => \opt_has_pipe.first_q[3]_i_6__0_n_0\
    );
\opt_has_pipe.first_q[3]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[18]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[16]\,
      I2 => \out\(6),
      I3 => \opt_has_pipe.first_q_reg_n_0_[17]\,
      I4 => \out\(7),
      I5 => \opt_has_pipe.first_q_reg_n_0_[15]\,
      O => \opt_has_pipe.first_q[3]_i_7__0_n_0\
    );
\opt_has_pipe.first_q[4]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[7]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[5]\,
      I2 => \out\(0),
      I3 => \opt_has_pipe.first_q_reg_n_0_[6]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[4]\,
      O => \opt_has_pipe.first_q[4]_i_4__0_n_0\
    );
\opt_has_pipe.first_q[4]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[11]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[9]\,
      I2 => \out\(2),
      I3 => \opt_has_pipe.first_q_reg_n_0_[10]\,
      I4 => \out\(3),
      I5 => \opt_has_pipe.first_q_reg_n_0_[8]\,
      O => \opt_has_pipe.first_q[4]_i_5__0_n_0\
    );
\opt_has_pipe.first_q[4]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[15]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      I2 => \out\(4),
      I3 => \opt_has_pipe.first_q_reg_n_0_[14]\,
      I4 => \out\(5),
      I5 => \opt_has_pipe.first_q_reg_n_0_[12]\,
      O => \opt_has_pipe.first_q[4]_i_6__0_n_0\
    );
\opt_has_pipe.first_q[4]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[19]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[17]\,
      I2 => \out\(6),
      I3 => \opt_has_pipe.first_q_reg_n_0_[18]\,
      I4 => \out\(7),
      I5 => \opt_has_pipe.first_q_reg_n_0_[16]\,
      O => \opt_has_pipe.first_q[4]_i_7__0_n_0\
    );
\opt_has_pipe.first_q[5]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[8]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[6]\,
      I2 => \out\(0),
      I3 => \opt_has_pipe.first_q_reg_n_0_[7]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[5]\,
      O => \opt_has_pipe.first_q[5]_i_4__0_n_0\
    );
\opt_has_pipe.first_q[5]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[12]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[10]\,
      I2 => \out\(2),
      I3 => \opt_has_pipe.first_q_reg_n_0_[11]\,
      I4 => \out\(3),
      I5 => \opt_has_pipe.first_q_reg_n_0_[9]\,
      O => \opt_has_pipe.first_q[5]_i_5__0_n_0\
    );
\opt_has_pipe.first_q[5]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[16]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[14]\,
      I2 => \out\(4),
      I3 => \opt_has_pipe.first_q_reg_n_0_[15]\,
      I4 => \out\(5),
      I5 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      O => \opt_has_pipe.first_q[5]_i_6__0_n_0\
    );
\opt_has_pipe.first_q[5]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[20]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[18]\,
      I2 => \out\(6),
      I3 => \opt_has_pipe.first_q_reg_n_0_[19]\,
      I4 => \out\(7),
      I5 => \opt_has_pipe.first_q_reg_n_0_[17]\,
      O => \opt_has_pipe.first_q[5]_i_7__0_n_0\
    );
\opt_has_pipe.first_q[6]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[9]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[7]\,
      I2 => \out\(0),
      I3 => \opt_has_pipe.first_q_reg_n_0_[8]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[6]\,
      O => \opt_has_pipe.first_q[6]_i_4__0_n_0\
    );
\opt_has_pipe.first_q[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[11]\,
      I2 => \out\(2),
      I3 => \opt_has_pipe.first_q_reg_n_0_[12]\,
      I4 => \out\(3),
      I5 => \opt_has_pipe.first_q_reg_n_0_[10]\,
      O => \opt_has_pipe.first_q[6]_i_5_n_0\
    );
\opt_has_pipe.first_q[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[17]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[15]\,
      I2 => \out\(4),
      I3 => \opt_has_pipe.first_q_reg_n_0_[16]\,
      I4 => \out\(5),
      I5 => \opt_has_pipe.first_q_reg_n_0_[14]\,
      O => \opt_has_pipe.first_q[6]_i_6_n_0\
    );
\opt_has_pipe.first_q[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[21]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[19]\,
      I2 => \out\(6),
      I3 => \opt_has_pipe.first_q_reg_n_0_[20]\,
      I4 => \out\(7),
      I5 => \opt_has_pipe.first_q_reg_n_0_[18]\,
      O => \opt_has_pipe.first_q[6]_i_7_n_0\
    );
\opt_has_pipe.first_q[7]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[10]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[8]\,
      I2 => \out\(0),
      I3 => \opt_has_pipe.first_q_reg_n_0_[9]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[7]\,
      O => \opt_has_pipe.first_q[7]_i_4__0_n_0\
    );
\opt_has_pipe.first_q[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[14]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[12]\,
      I2 => \out\(2),
      I3 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      I4 => \out\(3),
      I5 => \opt_has_pipe.first_q_reg_n_0_[11]\,
      O => \opt_has_pipe.first_q[7]_i_5_n_0\
    );
\opt_has_pipe.first_q[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[18]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[16]\,
      I2 => \out\(4),
      I3 => \opt_has_pipe.first_q_reg_n_0_[17]\,
      I4 => \out\(5),
      I5 => \opt_has_pipe.first_q_reg_n_0_[15]\,
      O => \opt_has_pipe.first_q[7]_i_6_n_0\
    );
\opt_has_pipe.first_q[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[22]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[20]\,
      I2 => \out\(6),
      I3 => \opt_has_pipe.first_q_reg_n_0_[21]\,
      I4 => \out\(7),
      I5 => \opt_has_pipe.first_q_reg_n_0_[19]\,
      O => \opt_has_pipe.first_q[7]_i_7_n_0\
    );
\opt_has_pipe.first_q[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[11]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[9]\,
      I2 => \out\(0),
      I3 => \opt_has_pipe.first_q_reg_n_0_[10]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[8]\,
      O => \opt_has_pipe.first_q[8]_i_4_n_0\
    );
\opt_has_pipe.first_q[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[15]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      I2 => \out\(2),
      I3 => \opt_has_pipe.first_q_reg_n_0_[14]\,
      I4 => \out\(3),
      I5 => \opt_has_pipe.first_q_reg_n_0_[12]\,
      O => \opt_has_pipe.first_q[8]_i_5_n_0\
    );
\opt_has_pipe.first_q[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[19]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[17]\,
      I2 => \out\(4),
      I3 => \opt_has_pipe.first_q_reg_n_0_[18]\,
      I4 => \out\(5),
      I5 => \opt_has_pipe.first_q_reg_n_0_[16]\,
      O => \opt_has_pipe.first_q[8]_i_6_n_0\
    );
\opt_has_pipe.first_q[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[23]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[21]\,
      I2 => \out\(6),
      I3 => \opt_has_pipe.first_q_reg_n_0_[22]\,
      I4 => \out\(7),
      I5 => \opt_has_pipe.first_q_reg_n_0_[20]\,
      O => \opt_has_pipe.first_q[8]_i_7_n_0\
    );
\opt_has_pipe.first_q[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[12]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[10]\,
      I2 => \out\(0),
      I3 => \opt_has_pipe.first_q_reg_n_0_[11]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[9]\,
      O => \opt_has_pipe.first_q[9]_i_4_n_0\
    );
\opt_has_pipe.first_q[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[16]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[14]\,
      I2 => \out\(2),
      I3 => \opt_has_pipe.first_q_reg_n_0_[15]\,
      I4 => \out\(3),
      I5 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      O => \opt_has_pipe.first_q[9]_i_5_n_0\
    );
\opt_has_pipe.first_q[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[20]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[18]\,
      I2 => \out\(4),
      I3 => \opt_has_pipe.first_q_reg_n_0_[19]\,
      I4 => \out\(5),
      I5 => \opt_has_pipe.first_q_reg_n_0_[17]\,
      O => \opt_has_pipe.first_q[9]_i_6_n_0\
    );
\opt_has_pipe.first_q[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[24]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[22]\,
      I2 => \out\(6),
      I3 => \opt_has_pipe.first_q_reg_n_0_[23]\,
      I4 => \out\(7),
      I5 => \opt_has_pipe.first_q_reg_n_0_[21]\,
      O => \opt_has_pipe.first_q[9]_i_7_n_0\
    );
\opt_has_pipe.first_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(9),
      Q => \opt_has_pipe.first_q_reg_n_0_[10]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[10]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[10]_i_2_n_0\,
      I1 => \opt_has_pipe.first_q_reg[10]_i_3_n_0\,
      O => D(9),
      S => \opt_has_pipe.first_q_reg[18]_0\(1)
    );
\opt_has_pipe.first_q_reg[10]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[10]_i_4_n_0\,
      I1 => \opt_has_pipe.first_q[10]_i_5_n_0\,
      O => \opt_has_pipe.first_q_reg[10]_i_2_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(0)
    );
\opt_has_pipe.first_q_reg[10]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[10]_i_6_n_0\,
      I1 => \opt_has_pipe.first_q[10]_i_7_n_0\,
      O => \opt_has_pipe.first_q_reg[10]_i_3_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(2)
    );
\opt_has_pipe.first_q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(10),
      Q => \opt_has_pipe.first_q_reg_n_0_[11]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[11]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[11]_i_2_n_0\,
      I1 => \opt_has_pipe.first_q_reg[11]_i_3_n_0\,
      O => D(10),
      S => \opt_has_pipe.first_q_reg[18]_0\(1)
    );
\opt_has_pipe.first_q_reg[11]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[11]_i_4_n_0\,
      I1 => \opt_has_pipe.first_q[11]_i_5_n_0\,
      O => \opt_has_pipe.first_q_reg[11]_i_2_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(0)
    );
\opt_has_pipe.first_q_reg[11]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[11]_i_6_n_0\,
      I1 => \opt_has_pipe.first_q[11]_i_7_n_0\,
      O => \opt_has_pipe.first_q_reg[11]_i_3_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(2)
    );
\opt_has_pipe.first_q_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(11),
      Q => \opt_has_pipe.first_q_reg_n_0_[12]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[12]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[12]_i_2_n_0\,
      I1 => \opt_has_pipe.first_q_reg[12]_i_3_n_0\,
      O => D(11),
      S => \opt_has_pipe.first_q_reg[18]_0\(1)
    );
\opt_has_pipe.first_q_reg[12]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[12]_i_4_n_0\,
      I1 => \opt_has_pipe.first_q[12]_i_5_n_0\,
      O => \opt_has_pipe.first_q_reg[12]_i_2_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(0)
    );
\opt_has_pipe.first_q_reg[12]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[12]_i_6_n_0\,
      I1 => \opt_has_pipe.first_q[12]_i_7_n_0\,
      O => \opt_has_pipe.first_q_reg[12]_i_3_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(2)
    );
\opt_has_pipe.first_q_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(12),
      Q => \opt_has_pipe.first_q_reg_n_0_[13]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[13]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[13]_i_2_n_0\,
      I1 => \opt_has_pipe.first_q_reg[13]_i_3_n_0\,
      O => D(12),
      S => \opt_has_pipe.first_q_reg[18]_0\(1)
    );
\opt_has_pipe.first_q_reg[13]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[13]_i_4_n_0\,
      I1 => \opt_has_pipe.first_q[13]_i_5_n_0\,
      O => \opt_has_pipe.first_q_reg[13]_i_2_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(0)
    );
\opt_has_pipe.first_q_reg[13]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[13]_i_6_n_0\,
      I1 => \opt_has_pipe.first_q[13]_i_7_n_0\,
      O => \opt_has_pipe.first_q_reg[13]_i_3_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(2)
    );
\opt_has_pipe.first_q_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(13),
      Q => \opt_has_pipe.first_q_reg_n_0_[14]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[14]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[14]_i_2_n_0\,
      I1 => \opt_has_pipe.first_q_reg[14]_i_3_n_0\,
      O => D(13),
      S => \opt_has_pipe.first_q_reg[18]_0\(1)
    );
\opt_has_pipe.first_q_reg[14]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[14]_i_4_n_0\,
      I1 => \opt_has_pipe.first_q[14]_i_5_n_0\,
      O => \opt_has_pipe.first_q_reg[14]_i_2_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(0)
    );
\opt_has_pipe.first_q_reg[14]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[14]_i_6_n_0\,
      I1 => \opt_has_pipe.first_q[14]_i_7_n_0\,
      O => \opt_has_pipe.first_q_reg[14]_i_3_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(2)
    );
\opt_has_pipe.first_q_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(14),
      Q => \opt_has_pipe.first_q_reg_n_0_[15]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[15]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[15]_i_2_n_0\,
      I1 => \opt_has_pipe.first_q_reg[15]_i_3_n_0\,
      O => D(14),
      S => \opt_has_pipe.first_q_reg[18]_0\(1)
    );
\opt_has_pipe.first_q_reg[15]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[15]_i_4_n_0\,
      I1 => \opt_has_pipe.first_q[15]_i_5_n_0\,
      O => \opt_has_pipe.first_q_reg[15]_i_2_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(0)
    );
\opt_has_pipe.first_q_reg[15]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[15]_i_6_n_0\,
      I1 => \opt_has_pipe.first_q[15]_i_7_n_0\,
      O => \opt_has_pipe.first_q_reg[15]_i_3_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(2)
    );
\opt_has_pipe.first_q_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(15),
      Q => \opt_has_pipe.first_q_reg_n_0_[16]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[16]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[16]_i_2_n_0\,
      I1 => \opt_has_pipe.first_q_reg[16]_i_3_n_0\,
      O => D(15),
      S => \opt_has_pipe.first_q_reg[18]_0\(1)
    );
\opt_has_pipe.first_q_reg[16]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[16]_i_4_n_0\,
      I1 => \opt_has_pipe.first_q[16]_i_5_n_0\,
      O => \opt_has_pipe.first_q_reg[16]_i_2_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(0)
    );
\opt_has_pipe.first_q_reg[16]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[16]_i_6_n_0\,
      I1 => \opt_has_pipe.first_q[16]_i_7_n_0\,
      O => \opt_has_pipe.first_q_reg[16]_i_3_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(2)
    );
\opt_has_pipe.first_q_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(16),
      Q => \opt_has_pipe.first_q_reg_n_0_[17]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[17]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[17]_i_2_n_0\,
      I1 => \opt_has_pipe.first_q_reg[17]_i_3_n_0\,
      O => D(16),
      S => \opt_has_pipe.first_q_reg[18]_0\(1)
    );
\opt_has_pipe.first_q_reg[17]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[17]_i_4_n_0\,
      I1 => \opt_has_pipe.first_q[17]_i_5_n_0\,
      O => \opt_has_pipe.first_q_reg[17]_i_2_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(0)
    );
\opt_has_pipe.first_q_reg[17]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[17]_i_6_n_0\,
      I1 => \opt_has_pipe.first_q[17]_i_7_n_0\,
      O => \opt_has_pipe.first_q_reg[17]_i_3_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(2)
    );
\opt_has_pipe.first_q_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(17),
      Q => \opt_has_pipe.first_q_reg_n_0_[18]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[18]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[18]_i_2_n_0\,
      I1 => \opt_has_pipe.first_q_reg[18]_i_3_n_0\,
      O => D(17),
      S => \opt_has_pipe.first_q_reg[18]_0\(1)
    );
\opt_has_pipe.first_q_reg[18]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[18]_i_4_n_0\,
      I1 => \opt_has_pipe.first_q[18]_i_5_n_0\,
      O => \opt_has_pipe.first_q_reg[18]_i_2_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(0)
    );
\opt_has_pipe.first_q_reg[18]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[18]_i_6_n_0\,
      I1 => \opt_has_pipe.first_q[18]_i_7_n_0\,
      O => \opt_has_pipe.first_q_reg[18]_i_3_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(2)
    );
\opt_has_pipe.first_q_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(18),
      Q => \opt_has_pipe.first_q_reg_n_0_[19]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(0),
      Q => \opt_has_pipe.first_q_reg_n_0_[1]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[1]_i_1__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[1]_i_2__0_n_0\,
      I1 => \opt_has_pipe.first_q_reg[1]_i_3__0_n_0\,
      O => D(0),
      S => \opt_has_pipe.first_q_reg[18]_0\(1)
    );
\opt_has_pipe.first_q_reg[1]_i_2__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[1]_i_4__0_n_0\,
      I1 => \opt_has_pipe.first_q[1]_i_5__0_n_0\,
      O => \opt_has_pipe.first_q_reg[1]_i_2__0_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(0)
    );
\opt_has_pipe.first_q_reg[1]_i_3__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[1]_i_6__0_n_0\,
      I1 => \opt_has_pipe.first_q[1]_i_7__0_n_0\,
      O => \opt_has_pipe.first_q_reg[1]_i_3__0_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(2)
    );
\opt_has_pipe.first_q_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(19),
      Q => \opt_has_pipe.first_q_reg_n_0_[20]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(20),
      Q => \opt_has_pipe.first_q_reg_n_0_[21]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(21),
      Q => \opt_has_pipe.first_q_reg_n_0_[22]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(22),
      Q => \opt_has_pipe.first_q_reg_n_0_[23]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(23),
      Q => \opt_has_pipe.first_q_reg_n_0_[24]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(24),
      Q => \opt_has_pipe.first_q_reg_n_0_[25]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(25),
      Q => \opt_has_pipe.first_q_reg_n_0_[26]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(26),
      Q => \opt_has_pipe.first_q_reg_n_0_[27]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(27),
      Q => \opt_has_pipe.first_q_reg_n_0_[28]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[29]_0\,
      Q => \opt_has_pipe.first_q_reg_n_0_[29]\,
      R => \opt_has_pipe.first_q_reg[33]_0\(0)
    );
\opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(1),
      Q => \opt_has_pipe.first_q_reg_n_0_[2]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[2]_i_1__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[2]_i_2__0_n_0\,
      I1 => \opt_has_pipe.first_q_reg[2]_i_3__0_n_0\,
      O => D(1),
      S => \opt_has_pipe.first_q_reg[18]_0\(1)
    );
\opt_has_pipe.first_q_reg[2]_i_2__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[2]_i_4__0_n_0\,
      I1 => \opt_has_pipe.first_q[2]_i_5__0_n_0\,
      O => \opt_has_pipe.first_q_reg[2]_i_2__0_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(0)
    );
\opt_has_pipe.first_q_reg[2]_i_3__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[2]_i_6__0_n_0\,
      I1 => \opt_has_pipe.first_q[2]_i_7__0_n_0\,
      O => \opt_has_pipe.first_q_reg[2]_i_3__0_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(2)
    );
\opt_has_pipe.first_q_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[30]_0\,
      Q => \opt_has_pipe.first_q_reg_n_0_[30]\,
      R => \opt_has_pipe.first_q_reg[33]_0\(0)
    );
\opt_has_pipe.first_q_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[31]_0\,
      Q => \opt_has_pipe.first_q_reg_n_0_[31]\,
      R => \opt_has_pipe.first_q_reg[33]_0\(0)
    );
\opt_has_pipe.first_q_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[32]_0\,
      Q => \opt_has_pipe.first_q_reg_n_0_[32]\,
      R => \opt_has_pipe.first_q_reg[33]_0\(0)
    );
\opt_has_pipe.first_q_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[33]_1\,
      Q => \opt_has_pipe.first_q_reg_n_0_[33]\,
      R => \opt_has_pipe.first_q_reg[33]_0\(0)
    );
\opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(2),
      Q => \opt_has_pipe.first_q_reg_n_0_[3]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[3]_i_1__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[3]_i_2__0_n_0\,
      I1 => \opt_has_pipe.first_q_reg[3]_i_3__0_n_0\,
      O => D(2),
      S => \opt_has_pipe.first_q_reg[18]_0\(1)
    );
\opt_has_pipe.first_q_reg[3]_i_2__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[3]_i_4__0_n_0\,
      I1 => \opt_has_pipe.first_q[3]_i_5__0_n_0\,
      O => \opt_has_pipe.first_q_reg[3]_i_2__0_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(0)
    );
\opt_has_pipe.first_q_reg[3]_i_3__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[3]_i_6__0_n_0\,
      I1 => \opt_has_pipe.first_q[3]_i_7__0_n_0\,
      O => \opt_has_pipe.first_q_reg[3]_i_3__0_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(2)
    );
\opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(3),
      Q => \opt_has_pipe.first_q_reg_n_0_[4]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[4]_i_1__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[4]_i_2__0_n_0\,
      I1 => \opt_has_pipe.first_q_reg[4]_i_3__0_n_0\,
      O => D(3),
      S => \opt_has_pipe.first_q_reg[18]_0\(1)
    );
\opt_has_pipe.first_q_reg[4]_i_2__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[4]_i_4__0_n_0\,
      I1 => \opt_has_pipe.first_q[4]_i_5__0_n_0\,
      O => \opt_has_pipe.first_q_reg[4]_i_2__0_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(0)
    );
\opt_has_pipe.first_q_reg[4]_i_3__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[4]_i_6__0_n_0\,
      I1 => \opt_has_pipe.first_q[4]_i_7__0_n_0\,
      O => \opt_has_pipe.first_q_reg[4]_i_3__0_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(2)
    );
\opt_has_pipe.first_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(4),
      Q => \opt_has_pipe.first_q_reg_n_0_[5]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[5]_i_1__0\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[5]_i_2__0_n_0\,
      I1 => \opt_has_pipe.first_q_reg[5]_i_3__0_n_0\,
      O => D(4),
      S => \opt_has_pipe.first_q_reg[18]_0\(1)
    );
\opt_has_pipe.first_q_reg[5]_i_2__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[5]_i_4__0_n_0\,
      I1 => \opt_has_pipe.first_q[5]_i_5__0_n_0\,
      O => \opt_has_pipe.first_q_reg[5]_i_2__0_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(0)
    );
\opt_has_pipe.first_q_reg[5]_i_3__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[5]_i_6__0_n_0\,
      I1 => \opt_has_pipe.first_q[5]_i_7__0_n_0\,
      O => \opt_has_pipe.first_q_reg[5]_i_3__0_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(2)
    );
\opt_has_pipe.first_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(5),
      Q => \opt_has_pipe.first_q_reg_n_0_[6]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[6]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[6]_i_2_n_0\,
      I1 => \opt_has_pipe.first_q_reg[6]_i_3_n_0\,
      O => D(5),
      S => \opt_has_pipe.first_q_reg[18]_0\(1)
    );
\opt_has_pipe.first_q_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[6]_i_4__0_n_0\,
      I1 => \opt_has_pipe.first_q[6]_i_5_n_0\,
      O => \opt_has_pipe.first_q_reg[6]_i_2_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(0)
    );
\opt_has_pipe.first_q_reg[6]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[6]_i_6_n_0\,
      I1 => \opt_has_pipe.first_q[6]_i_7_n_0\,
      O => \opt_has_pipe.first_q_reg[6]_i_3_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(2)
    );
\opt_has_pipe.first_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(6),
      Q => \opt_has_pipe.first_q_reg_n_0_[7]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[7]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[7]_i_2_n_0\,
      I1 => \opt_has_pipe.first_q_reg[7]_i_3_n_0\,
      O => D(6),
      S => \opt_has_pipe.first_q_reg[18]_0\(1)
    );
\opt_has_pipe.first_q_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[7]_i_4__0_n_0\,
      I1 => \opt_has_pipe.first_q[7]_i_5_n_0\,
      O => \opt_has_pipe.first_q_reg[7]_i_2_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(0)
    );
\opt_has_pipe.first_q_reg[7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[7]_i_6_n_0\,
      I1 => \opt_has_pipe.first_q[7]_i_7_n_0\,
      O => \opt_has_pipe.first_q_reg[7]_i_3_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(2)
    );
\opt_has_pipe.first_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(7),
      Q => \opt_has_pipe.first_q_reg_n_0_[8]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[8]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[8]_i_2_n_0\,
      I1 => \opt_has_pipe.first_q_reg[8]_i_3_n_0\,
      O => D(7),
      S => \opt_has_pipe.first_q_reg[18]_0\(1)
    );
\opt_has_pipe.first_q_reg[8]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[8]_i_4_n_0\,
      I1 => \opt_has_pipe.first_q[8]_i_5_n_0\,
      O => \opt_has_pipe.first_q_reg[8]_i_2_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(0)
    );
\opt_has_pipe.first_q_reg[8]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[8]_i_6_n_0\,
      I1 => \opt_has_pipe.first_q[8]_i_7_n_0\,
      O => \opt_has_pipe.first_q_reg[8]_i_3_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(2)
    );
\opt_has_pipe.first_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[28]_0\(8),
      Q => \opt_has_pipe.first_q_reg_n_0_[9]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[9]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \opt_has_pipe.first_q_reg[9]_i_2_n_0\,
      I1 => \opt_has_pipe.first_q_reg[9]_i_3_n_0\,
      O => D(8),
      S => \opt_has_pipe.first_q_reg[18]_0\(1)
    );
\opt_has_pipe.first_q_reg[9]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[9]_i_4_n_0\,
      I1 => \opt_has_pipe.first_q[9]_i_5_n_0\,
      O => \opt_has_pipe.first_q_reg[9]_i_2_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(0)
    );
\opt_has_pipe.first_q_reg[9]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \opt_has_pipe.first_q[9]_i_6_n_0\,
      I1 => \opt_has_pipe.first_q[9]_i_7_n_0\,
      O => \opt_has_pipe.first_q_reg[9]_i_3_n_0\,
      S => \opt_has_pipe.first_q_reg[18]_0\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized47\ is
  port (
    \s_axis_a_tdata[60]\ : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized47\ : entity is "xbip_pipe_v3_0_5_viv";
end \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized47\;

architecture STRUCTURE of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized47\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2\ : label is "U0/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2] ";
  attribute srl_name : string;
  attribute srl_name of \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2\ : label is "U0/i_synth/\FIX_TO_FLT_OP.SPD.OP/EXP/a_is_signed.IP_SIGN_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2 ";
begin
\opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => aclk,
      D => s_axis_a_tdata(0),
      Q => \s_axis_a_tdata[60]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized5\ is
  port (
    D : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized5\ : entity is "xbip_pipe_v3_0_5_viv";
end \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized5\;

architecture STRUCTURE of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized5\ is
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "false";
begin
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[0]_0\,
      Q => D,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized5_5\ is
  port (
    op_state : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized5_5\ : entity is "xbip_pipe_v3_0_5_viv";
end \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized5_5\;

architecture STRUCTURE of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized5_5\ is
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "false";
begin
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D,
      Q => op_state(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized7\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \opt_has_pipe.first_q_reg[0]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.first_q_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized7\ : entity is "xbip_pipe_v3_0_5_viv";
end \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized7\;

architecture STRUCTURE of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized7\ is
  signal first_q : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  signal \opt_has_pipe.first_q[0]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[1]_i_2_n_0\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[2]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[3]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[4]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[5]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[6]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[7]\ : label is "yes";
begin
  \out\(7 downto 0) <= first_q(7 downto 0);
\opt_has_pipe.first_q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => first_q(7),
      I1 => \opt_has_pipe.first_q_reg[0]_0\(2),
      I2 => first_q(5),
      I3 => \opt_has_pipe.first_q_reg[0]_0\(1),
      I4 => \opt_has_pipe.first_q[0]_i_2_n_0\,
      O => D(0)
    );
\opt_has_pipe.first_q[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => first_q(3),
      I1 => \opt_has_pipe.first_q_reg[0]_0\(0),
      I2 => first_q(1),
      O => \opt_has_pipe.first_q[0]_i_2_n_0\
    );
\opt_has_pipe.first_q[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => first_q(6),
      I1 => \opt_has_pipe.first_q_reg[0]_0\(2),
      I2 => first_q(4),
      I3 => \opt_has_pipe.first_q_reg[0]_0\(1),
      I4 => \opt_has_pipe.first_q[1]_i_2_n_0\,
      O => D(1)
    );
\opt_has_pipe.first_q[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => first_q(2),
      I1 => \opt_has_pipe.first_q_reg[0]_0\(0),
      I2 => first_q(0),
      O => \opt_has_pipe.first_q[1]_i_2_n_0\
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[7]_0\(0),
      Q => first_q(0),
      R => '0'
    );
\opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[7]_0\(1),
      Q => first_q(1),
      R => '0'
    );
\opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[7]_0\(2),
      Q => first_q(2),
      R => '0'
    );
\opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[7]_0\(3),
      Q => first_q(3),
      R => '0'
    );
\opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[7]_0\(4),
      Q => first_q(4),
      R => '0'
    );
\opt_has_pipe.first_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[7]_0\(5),
      Q => first_q(5),
      R => '0'
    );
\opt_has_pipe.first_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[7]_0\(6),
      Q => first_q(6),
      R => '0'
    );
\opt_has_pipe.first_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[7]_0\(7),
      Q => first_q(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized9\ is
  port (
    \opt_has_pipe.first_q_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[2]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aclk : in STD_LOGIC;
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \opt_has_pipe.first_q_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized9\ : entity is "xbip_pipe_v3_0_5_viv";
end \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized9\;

architecture STRUCTURE of \fix_to_float_xbip_pipe_v3_0_5_viv__parameterized9\ is
  signal first_q : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  signal \opt_has_pipe.first_q[3]_i_1_n_0\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[2]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[3]\ : label is "yes";
begin
  \opt_has_pipe.first_q_reg[2]_0\(2 downto 0) <= first_q(2 downto 0);
\opt_has_pipe.first_q[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => first_q(2),
      I1 => first_q(1),
      I2 => first_q(0),
      O => D(0)
    );
\opt_has_pipe.first_q[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => CARRYS_OUT(0),
      I1 => CARRYS_OUT(1),
      I2 => \opt_has_pipe.first_q_reg[3]_0\(0),
      O => \opt_has_pipe.first_q[3]_i_1_n_0\
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[2]_1\(0),
      Q => first_q(0),
      R => '0'
    );
\opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[2]_1\(1),
      Q => first_q(1),
      R => '0'
    );
\opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[2]_1\(2),
      Q => first_q(2),
      R => '0'
    );
\opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q[3]_i_1_n_0\,
      Q => first_q(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_delay__parameterized10\ is
  port (
    \z_det_up[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.first_q_reg[0]_i_3\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    c_int_16 : in STD_LOGIC;
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 0 to 0 );
    c_int_32 : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[15]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    c_int_48 : in STD_LOGIC;
    \ZERO_DET[63].mc__0\ : in STD_LOGIC;
    c_int_15 : in STD_LOGIC;
    c_int_31 : in STD_LOGIC;
    c_int_47 : in STD_LOGIC;
    c_int_63 : in STD_LOGIC;
    c_int_14 : in STD_LOGIC;
    c_int_30 : in STD_LOGIC;
    c_int_46 : in STD_LOGIC;
    c_int_62 : in STD_LOGIC;
    c_int_13 : in STD_LOGIC;
    c_int_29 : in STD_LOGIC;
    c_int_45 : in STD_LOGIC;
    c_int_61 : in STD_LOGIC;
    c_int_12 : in STD_LOGIC;
    c_int_28 : in STD_LOGIC;
    c_int_44 : in STD_LOGIC;
    c_int_60 : in STD_LOGIC;
    c_int_11 : in STD_LOGIC;
    c_int_27 : in STD_LOGIC;
    c_int_43 : in STD_LOGIC;
    c_int_59 : in STD_LOGIC;
    c_int_10 : in STD_LOGIC;
    c_int_26 : in STD_LOGIC;
    c_int_42 : in STD_LOGIC;
    c_int_58 : in STD_LOGIC;
    c_int_9 : in STD_LOGIC;
    c_int_25 : in STD_LOGIC;
    c_int_41 : in STD_LOGIC;
    c_int_57 : in STD_LOGIC;
    c_int_8 : in STD_LOGIC;
    c_int_24 : in STD_LOGIC;
    c_int_40 : in STD_LOGIC;
    c_int_56 : in STD_LOGIC;
    c_int_7 : in STD_LOGIC;
    c_int_23 : in STD_LOGIC;
    c_int_39 : in STD_LOGIC;
    c_int_55 : in STD_LOGIC;
    c_int_6 : in STD_LOGIC;
    c_int_22 : in STD_LOGIC;
    c_int_38 : in STD_LOGIC;
    c_int_54 : in STD_LOGIC;
    c_int_5 : in STD_LOGIC;
    c_int_21 : in STD_LOGIC;
    c_int_37 : in STD_LOGIC;
    c_int_53 : in STD_LOGIC;
    c_int_4 : in STD_LOGIC;
    c_int_20 : in STD_LOGIC;
    c_int_36 : in STD_LOGIC;
    c_int_52 : in STD_LOGIC;
    c_int_3 : in STD_LOGIC;
    c_int_19 : in STD_LOGIC;
    c_int_35 : in STD_LOGIC;
    c_int_51 : in STD_LOGIC;
    c_int_2 : in STD_LOGIC;
    c_int_18 : in STD_LOGIC;
    c_int_34 : in STD_LOGIC;
    c_int_50 : in STD_LOGIC;
    c_int_1 : in STD_LOGIC;
    c_int_17 : in STD_LOGIC;
    c_int_33 : in STD_LOGIC;
    c_int_49 : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_delay__parameterized10\ : entity is "delay";
end \fix_to_float_delay__parameterized10\;

architecture STRUCTURE of \fix_to_float_delay__parameterized10\ is
begin
i_pipe: entity work.\fix_to_float_xbip_pipe_v3_0_5_viv__parameterized21\
     port map (
      CARRYS_OUT(0) => CARRYS_OUT(0),
      \ZERO_DET[63].mc__0\ => \ZERO_DET[63].mc__0\,
      aclk => aclk,
      c_int_1 => c_int_1,
      c_int_10 => c_int_10,
      c_int_11 => c_int_11,
      c_int_12 => c_int_12,
      c_int_13 => c_int_13,
      c_int_14 => c_int_14,
      c_int_15 => c_int_15,
      c_int_16 => c_int_16,
      c_int_17 => c_int_17,
      c_int_18 => c_int_18,
      c_int_19 => c_int_19,
      c_int_2 => c_int_2,
      c_int_20 => c_int_20,
      c_int_21 => c_int_21,
      c_int_22 => c_int_22,
      c_int_23 => c_int_23,
      c_int_24 => c_int_24,
      c_int_25 => c_int_25,
      c_int_26 => c_int_26,
      c_int_27 => c_int_27,
      c_int_28 => c_int_28,
      c_int_29 => c_int_29,
      c_int_3 => c_int_3,
      c_int_30 => c_int_30,
      c_int_31 => c_int_31,
      c_int_32 => c_int_32,
      c_int_33 => c_int_33,
      c_int_34 => c_int_34,
      c_int_35 => c_int_35,
      c_int_36 => c_int_36,
      c_int_37 => c_int_37,
      c_int_38 => c_int_38,
      c_int_39 => c_int_39,
      c_int_4 => c_int_4,
      c_int_40 => c_int_40,
      c_int_41 => c_int_41,
      c_int_42 => c_int_42,
      c_int_43 => c_int_43,
      c_int_44 => c_int_44,
      c_int_45 => c_int_45,
      c_int_46 => c_int_46,
      c_int_47 => c_int_47,
      c_int_48 => c_int_48,
      c_int_49 => c_int_49,
      c_int_5 => c_int_5,
      c_int_50 => c_int_50,
      c_int_51 => c_int_51,
      c_int_52 => c_int_52,
      c_int_53 => c_int_53,
      c_int_54 => c_int_54,
      c_int_55 => c_int_55,
      c_int_56 => c_int_56,
      c_int_57 => c_int_57,
      c_int_58 => c_int_58,
      c_int_59 => c_int_59,
      c_int_6 => c_int_6,
      c_int_60 => c_int_60,
      c_int_61 => c_int_61,
      c_int_62 => c_int_62,
      c_int_63 => c_int_63,
      c_int_7 => c_int_7,
      c_int_8 => c_int_8,
      c_int_9 => c_int_9,
      \opt_has_pipe.first_q_reg[0]_0\(2 downto 0) => \opt_has_pipe.first_q_reg[0]\(2 downto 0),
      \opt_has_pipe.first_q_reg[0]_i_3_0\(7 downto 0) => \opt_has_pipe.first_q_reg[0]_i_3\(7 downto 0),
      \opt_has_pipe.first_q_reg[15]_0\(1 downto 0) => \opt_has_pipe.first_q_reg[15]\(1 downto 0),
      \z_det_up[2]_1\(0) => \z_det_up[2]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_delay__parameterized13\ is
  port (
    \out\ : out STD_LOGIC;
    \z_det_up[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_delay__parameterized13\ : entity is "delay";
end \fix_to_float_delay__parameterized13\;

architecture STRUCTURE of \fix_to_float_delay__parameterized13\ is
begin
i_pipe: entity work.\fix_to_float_xbip_pipe_v3_0_5_viv__parameterized27\
     port map (
      aclk => aclk,
      \out\ => \out\,
      \z_det_up[2]_1\(0) => \z_det_up[2]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_delay__parameterized14\ is
  port (
    D : out STD_LOGIC_VECTOR ( 17 downto 0 );
    \opt_has_pipe.first_q_reg[18]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \opt_has_pipe.first_q_reg[28]\ : in STD_LOGIC_VECTOR ( 27 downto 0 );
    aclk : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[33]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[33]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[32]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[31]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[30]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[29]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_delay__parameterized14\ : entity is "delay";
end \fix_to_float_delay__parameterized14\;

architecture STRUCTURE of \fix_to_float_delay__parameterized14\ is
begin
i_pipe: entity work.\fix_to_float_xbip_pipe_v3_0_5_viv__parameterized29_1\
     port map (
      D(17 downto 0) => D(17 downto 0),
      aclk => aclk,
      \opt_has_pipe.first_q_reg[18]_0\(2 downto 0) => \opt_has_pipe.first_q_reg[18]\(2 downto 0),
      \opt_has_pipe.first_q_reg[28]_0\(27 downto 0) => \opt_has_pipe.first_q_reg[28]\(27 downto 0),
      \opt_has_pipe.first_q_reg[29]_0\ => \opt_has_pipe.first_q_reg[29]\,
      \opt_has_pipe.first_q_reg[30]_0\ => \opt_has_pipe.first_q_reg[30]\,
      \opt_has_pipe.first_q_reg[31]_0\ => \opt_has_pipe.first_q_reg[31]\,
      \opt_has_pipe.first_q_reg[32]_0\ => \opt_has_pipe.first_q_reg[32]\,
      \opt_has_pipe.first_q_reg[33]_0\(0) => \opt_has_pipe.first_q_reg[33]\(0),
      \opt_has_pipe.first_q_reg[33]_1\ => \opt_has_pipe.first_q_reg[33]_0\,
      \out\(7 downto 0) => \out\(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_delay__parameterized14_0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 17 downto 0 );
    D : in STD_LOGIC_VECTOR ( 17 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_delay__parameterized14_0\ : entity is "delay";
end \fix_to_float_delay__parameterized14_0\;

architecture STRUCTURE of \fix_to_float_delay__parameterized14_0\ is
begin
i_pipe: entity work.\fix_to_float_xbip_pipe_v3_0_5_viv__parameterized29\
     port map (
      D(17 downto 0) => D(17 downto 0),
      Q(17 downto 0) => Q(17 downto 0),
      aclk => aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_delay__parameterized2\ is
  port (
    D : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_delay__parameterized2\ : entity is "delay";
end \fix_to_float_delay__parameterized2\;

architecture STRUCTURE of \fix_to_float_delay__parameterized2\ is
begin
i_pipe: entity work.\fix_to_float_xbip_pipe_v3_0_5_viv__parameterized5\
     port map (
      D => D,
      aclk => aclk,
      \opt_has_pipe.first_q_reg[0]_0\ => \opt_has_pipe.first_q_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_delay__parameterized24\ is
  port (
    \s_axis_a_tdata[60]\ : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_delay__parameterized24\ : entity is "delay";
end \fix_to_float_delay__parameterized24\;

architecture STRUCTURE of \fix_to_float_delay__parameterized24\ is
begin
i_pipe: entity work.\fix_to_float_xbip_pipe_v3_0_5_viv__parameterized47\
     port map (
      aclk => aclk,
      s_axis_a_tdata(0) => s_axis_a_tdata(0),
      \s_axis_a_tdata[60]\ => \s_axis_a_tdata[60]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_delay__parameterized25\ is
  port (
    op_state : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_delay__parameterized25\ : entity is "delay";
end \fix_to_float_delay__parameterized25\;

architecture STRUCTURE of \fix_to_float_delay__parameterized25\ is
begin
i_pipe: entity work.\fix_to_float_xbip_pipe_v3_0_5_viv__parameterized5_5\
     port map (
      D => D,
      aclk => aclk,
      op_state(0) => op_state(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_delay__parameterized3\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.first_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_delay__parameterized3\ : entity is "delay";
end \fix_to_float_delay__parameterized3\;

architecture STRUCTURE of \fix_to_float_delay__parameterized3\ is
begin
i_pipe: entity work.\fix_to_float_xbip_pipe_v3_0_5_viv__parameterized7\
     port map (
      D(1 downto 0) => D(1 downto 0),
      aclk => aclk,
      \opt_has_pipe.first_q_reg[0]_0\(2 downto 0) => \opt_has_pipe.first_q_reg[0]\(2 downto 0),
      \opt_has_pipe.first_q_reg[7]_0\(7 downto 0) => \opt_has_pipe.first_q_reg[7]\(7 downto 0),
      \out\(7 downto 0) => \out\(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_delay__parameterized4\ is
  port (
    \opt_has_pipe.first_q_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[2]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aclk : in STD_LOGIC;
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \opt_has_pipe.first_q_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_delay__parameterized4\ : entity is "delay";
end \fix_to_float_delay__parameterized4\;

architecture STRUCTURE of \fix_to_float_delay__parameterized4\ is
begin
i_pipe: entity work.\fix_to_float_xbip_pipe_v3_0_5_viv__parameterized9\
     port map (
      CARRYS_OUT(1 downto 0) => CARRYS_OUT(1 downto 0),
      D(0) => D(0),
      aclk => aclk,
      \opt_has_pipe.first_q_reg[2]_0\(2 downto 0) => \opt_has_pipe.first_q_reg[2]\(2 downto 0),
      \opt_has_pipe.first_q_reg[2]_1\(2 downto 0) => \opt_has_pipe.first_q_reg[2]_0\(2 downto 0),
      \opt_has_pipe.first_q_reg[3]_0\(0) => \opt_has_pipe.first_q_reg[3]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_delay__parameterized5\ is
  port (
    EXP : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.i_pipe[2].pipe_reg[2][1]\ : out STD_LOGIC;
    op_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RESULT_REG.NORMAL.exp_op_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RESULT_REG.NORMAL.exp_op_reg[6]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_delay__parameterized5\ : entity is "delay";
end \fix_to_float_delay__parameterized5\;

architecture STRUCTURE of \fix_to_float_delay__parameterized5\ is
begin
i_pipe: entity work.\fix_to_float_xbip_pipe_v3_0_5_viv__parameterized11\
     port map (
      D(1 downto 0) => D(1 downto 0),
      EXP(0) => EXP(0),
      Q(0) => Q(0),
      \RESULT_REG.NORMAL.exp_op_reg[6]\(0) => \RESULT_REG.NORMAL.exp_op_reg[6]\(0),
      \RESULT_REG.NORMAL.exp_op_reg[6]_0\ => \RESULT_REG.NORMAL.exp_op_reg[6]_0\,
      aclk => aclk,
      op_state(0) => op_state(0),
      \opt_has_pipe.i_pipe[2].pipe_reg[2][1]_0\ => \opt_has_pipe.i_pipe[2].pipe_reg[2][1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_delay__parameterized8\ is
  port (
    EXP : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \RESULT_REG.NORMAL.exp_op_reg[4]\ : in STD_LOGIC;
    op_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RESULT_REG.NORMAL.exp_op_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_delay__parameterized8\ : entity is "delay";
end \fix_to_float_delay__parameterized8\;

architecture STRUCTURE of \fix_to_float_delay__parameterized8\ is
begin
i_pipe: entity work.\fix_to_float_xbip_pipe_v3_0_5_viv__parameterized17_4\
     port map (
      D(1 downto 0) => D(1 downto 0),
      EXP(0) => EXP(0),
      Q(1 downto 0) => Q(1 downto 0),
      \RESULT_REG.NORMAL.exp_op_reg[4]\ => \RESULT_REG.NORMAL.exp_op_reg[4]\,
      \RESULT_REG.NORMAL.exp_op_reg[4]_0\(0) => \RESULT_REG.NORMAL.exp_op_reg[4]_0\(0),
      aclk => aclk,
      op_state(0) => op_state(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_delay__parameterized8_2\ is
  port (
    EXP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \opt_has_pipe.first_q_reg[0]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    op_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RESULT_REG.NORMAL.exp_op_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_delay__parameterized8_2\ : entity is "delay";
end \fix_to_float_delay__parameterized8_2\;

architecture STRUCTURE of \fix_to_float_delay__parameterized8_2\ is
begin
i_pipe: entity work.\fix_to_float_xbip_pipe_v3_0_5_viv__parameterized17\
     port map (
      D(1 downto 0) => D(1 downto 0),
      EXP(3 downto 0) => EXP(3 downto 0),
      Q(0) => Q(0),
      \RESULT_REG.NORMAL.exp_op_reg[3]\(1 downto 0) => \RESULT_REG.NORMAL.exp_op_reg[3]\(1 downto 0),
      aclk => aclk,
      op_state(0) => op_state(0),
      \opt_has_pipe.first_q_reg[0]_0\ => \opt_has_pipe.first_q_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fix_to_float_flt_round_bit is
  port (
    ROUND_CARRY : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \out\ : in STD_LOGIC;
    lopt : out STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fix_to_float_flt_round_bit : entity is "flt_round_bit";
end fix_to_float_flt_round_bit;

architecture STRUCTURE of fix_to_float_flt_round_bit is
  signal a_ip : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => Q(2),
      I1 => \out\,
      I2 => Q(1),
      O => a_ip(0)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => \out\,
      I3 => Q(1),
      O => a_ip(2)
    );
\NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1\: entity work.\fix_to_float_carry_chain__parameterized1\
     port map (
      A(1) => a_ip(2),
      A(0) => a_ip(0),
      ROUND_CARRY => ROUND_CARRY,
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_2 => Q(0),
      lopt_3 => lopt_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fix_to_float_fix_to_flt_conv_exp is
  port (
    op_state : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axis_a_tdata[60]\ : out STD_LOGIC;
    D : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fix_to_float_fix_to_flt_conv_exp : entity is "fix_to_flt_conv_exp";
end fix_to_float_fix_to_flt_conv_exp;

architecture STRUCTURE of fix_to_float_fix_to_flt_conv_exp is
begin
ZERO_DELAY: entity work.\fix_to_float_delay__parameterized25\
     port map (
      D => D,
      aclk => aclk,
      op_state(0) => op_state(0)
    );
\a_is_signed.IP_SIGN_DELAY\: entity work.\fix_to_float_delay__parameterized24\
     port map (
      aclk => aclk,
      s_axis_a_tdata(0) => s_axis_a_tdata(0),
      \s_axis_a_tdata[60]\ => \s_axis_a_tdata[60]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fix_to_float_mux4 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.first_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fix_to_float_mux4 : entity is "mux4";
end fix_to_float_mux4;

architecture STRUCTURE of fix_to_float_mux4 is
begin
OP_DEL: entity work.\fix_to_float_delay__parameterized3\
     port map (
      D(1 downto 0) => D(1 downto 0),
      aclk => aclk,
      \opt_has_pipe.first_q_reg[0]\(2 downto 0) => \opt_has_pipe.first_q_reg[0]\(2 downto 0),
      \opt_has_pipe.first_q_reg[7]\(7 downto 0) => \opt_has_pipe.first_q_reg[7]\(7 downto 0),
      \out\(7 downto 0) => \out\(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fix_to_float_mux4__parameterized0\ is
  port (
    \opt_has_pipe.first_q_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[2]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aclk : in STD_LOGIC;
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \opt_has_pipe.first_q_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fix_to_float_mux4__parameterized0\ : entity is "mux4";
end \fix_to_float_mux4__parameterized0\;

architecture STRUCTURE of \fix_to_float_mux4__parameterized0\ is
begin
OP_DEL: entity work.\fix_to_float_delay__parameterized4\
     port map (
      CARRYS_OUT(1 downto 0) => CARRYS_OUT(1 downto 0),
      D(0) => D(0),
      aclk => aclk,
      \opt_has_pipe.first_q_reg[2]\(2 downto 0) => \opt_has_pipe.first_q_reg[2]\(2 downto 0),
      \opt_has_pipe.first_q_reg[2]_0\(2 downto 0) => \opt_has_pipe.first_q_reg[2]_0\(2 downto 0),
      \opt_has_pipe.first_q_reg[3]\(0) => \opt_has_pipe.first_q_reg[3]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fix_to_float_norm_zero_det is
  port (
    \out\ : out STD_LOGIC;
    chunk_is_zero : in STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[6]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[7]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[9]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[10]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[11]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[12]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[13]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[14]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[15]\ : in STD_LOGIC;
    \ZERO_DET[33].mc_0\ : in STD_LOGIC;
    \ZERO_DET[34].mc_0\ : in STD_LOGIC;
    \ZERO_DET[35].mc_0\ : in STD_LOGIC;
    \ZERO_DET[36].mc_0\ : in STD_LOGIC;
    \ZERO_DET[37].mc_0\ : in STD_LOGIC;
    \ZERO_DET[38].mc_0\ : in STD_LOGIC;
    \ZERO_DET[39].mc_0\ : in STD_LOGIC;
    \ZERO_DET[40].mc_0\ : in STD_LOGIC;
    \ZERO_DET[41].mc_0\ : in STD_LOGIC;
    \ZERO_DET[42].mc_0\ : in STD_LOGIC;
    \ZERO_DET[43].mc_0\ : in STD_LOGIC;
    \ZERO_DET[44].mc_0\ : in STD_LOGIC;
    \ZERO_DET[45].mc_0\ : in STD_LOGIC;
    \ZERO_DET[46].mc_0\ : in STD_LOGIC;
    \ZERO_DET[47].mc_0\ : in STD_LOGIC;
    \ZERO_DET[48].mc_0\ : in STD_LOGIC;
    \ZERO_DET[49].mc_0\ : in STD_LOGIC;
    \ZERO_DET[50].mc_0\ : in STD_LOGIC;
    \ZERO_DET[51].mc_0\ : in STD_LOGIC;
    \ZERO_DET[52].mc_0\ : in STD_LOGIC;
    \ZERO_DET[53].mc_0\ : in STD_LOGIC;
    \ZERO_DET[54].mc_0\ : in STD_LOGIC;
    \ZERO_DET[55].mc_0\ : in STD_LOGIC;
    \ZERO_DET[56].mc_0\ : in STD_LOGIC;
    \ZERO_DET[57].mc_0\ : in STD_LOGIC;
    \ZERO_DET[58].mc_0\ : in STD_LOGIC;
    \ZERO_DET[59].mc_0\ : in STD_LOGIC;
    \ZERO_DET[60].mc_0\ : in STD_LOGIC;
    \ZERO_DET[61].mc_0\ : in STD_LOGIC;
    \ZERO_DET[62].mc_0\ : in STD_LOGIC;
    \ZERO_DET[63].mc_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q[15]_i_2\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.first_q_reg[0]_i_3\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[15]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fix_to_float_norm_zero_det : entity is "norm_zero_det";
end fix_to_float_norm_zero_det;

architecture STRUCTURE of fix_to_float_norm_zero_det is
  signal \ZERO_DET[63].mc__0\ : STD_LOGIC;
  signal c_int_1 : STD_LOGIC;
  signal c_int_10 : STD_LOGIC;
  signal c_int_11 : STD_LOGIC;
  signal c_int_12 : STD_LOGIC;
  signal c_int_13 : STD_LOGIC;
  signal c_int_14 : STD_LOGIC;
  signal c_int_15 : STD_LOGIC;
  signal c_int_16 : STD_LOGIC;
  signal c_int_17 : STD_LOGIC;
  signal c_int_18 : STD_LOGIC;
  signal c_int_19 : STD_LOGIC;
  signal c_int_2 : STD_LOGIC;
  signal c_int_20 : STD_LOGIC;
  signal c_int_21 : STD_LOGIC;
  signal c_int_22 : STD_LOGIC;
  signal c_int_23 : STD_LOGIC;
  signal c_int_24 : STD_LOGIC;
  signal c_int_25 : STD_LOGIC;
  signal c_int_26 : STD_LOGIC;
  signal c_int_27 : STD_LOGIC;
  signal c_int_28 : STD_LOGIC;
  signal c_int_29 : STD_LOGIC;
  signal c_int_3 : STD_LOGIC;
  signal c_int_30 : STD_LOGIC;
  signal c_int_31 : STD_LOGIC;
  signal c_int_32 : STD_LOGIC;
  signal c_int_33 : STD_LOGIC;
  signal c_int_34 : STD_LOGIC;
  signal c_int_35 : STD_LOGIC;
  signal c_int_36 : STD_LOGIC;
  signal c_int_37 : STD_LOGIC;
  signal c_int_38 : STD_LOGIC;
  signal c_int_39 : STD_LOGIC;
  signal c_int_4 : STD_LOGIC;
  signal c_int_40 : STD_LOGIC;
  signal c_int_41 : STD_LOGIC;
  signal c_int_42 : STD_LOGIC;
  signal c_int_43 : STD_LOGIC;
  signal c_int_44 : STD_LOGIC;
  signal c_int_45 : STD_LOGIC;
  signal c_int_46 : STD_LOGIC;
  signal c_int_47 : STD_LOGIC;
  signal c_int_48 : STD_LOGIC;
  signal c_int_49 : STD_LOGIC;
  signal c_int_5 : STD_LOGIC;
  signal c_int_50 : STD_LOGIC;
  signal c_int_51 : STD_LOGIC;
  signal c_int_52 : STD_LOGIC;
  signal c_int_53 : STD_LOGIC;
  signal c_int_54 : STD_LOGIC;
  signal c_int_55 : STD_LOGIC;
  signal c_int_56 : STD_LOGIC;
  signal c_int_57 : STD_LOGIC;
  signal c_int_58 : STD_LOGIC;
  signal c_int_59 : STD_LOGIC;
  signal c_int_6 : STD_LOGIC;
  signal c_int_60 : STD_LOGIC;
  signal c_int_61 : STD_LOGIC;
  signal c_int_62 : STD_LOGIC;
  signal c_int_63 : STD_LOGIC;
  signal c_int_7 : STD_LOGIC;
  signal c_int_8 : STD_LOGIC;
  signal c_int_9 : STD_LOGIC;
  signal \z_det_up[2]_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_ZERO_DET[0].mc_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ZERO_DET[12].mc_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ZERO_DET[16].mc_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ZERO_DET[20].mc_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ZERO_DET[24].mc_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ZERO_DET[28].mc_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ZERO_DET[32].mc_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ZERO_DET[36].mc_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ZERO_DET[40].mc_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ZERO_DET[44].mc_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ZERO_DET[48].mc_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ZERO_DET[4].mc_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ZERO_DET[52].mc_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ZERO_DET[56].mc_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ZERO_DET[60].mc_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ZERO_DET[8].mc_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \ZERO_DET[0].mc_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \ZERO_DET[0].mc_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \ZERO_DET[0].mc_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ZERO_DET[12].mc_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \ZERO_DET[12].mc_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \ZERO_DET[12].mc_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ZERO_DET[16].mc_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \ZERO_DET[16].mc_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \ZERO_DET[16].mc_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ZERO_DET[20].mc_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \ZERO_DET[20].mc_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \ZERO_DET[20].mc_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ZERO_DET[24].mc_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \ZERO_DET[24].mc_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \ZERO_DET[24].mc_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ZERO_DET[28].mc_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \ZERO_DET[28].mc_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \ZERO_DET[28].mc_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ZERO_DET[32].mc_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \ZERO_DET[32].mc_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \ZERO_DET[32].mc_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ZERO_DET[36].mc_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \ZERO_DET[36].mc_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \ZERO_DET[36].mc_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ZERO_DET[40].mc_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \ZERO_DET[40].mc_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \ZERO_DET[40].mc_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ZERO_DET[44].mc_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \ZERO_DET[44].mc_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \ZERO_DET[44].mc_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ZERO_DET[48].mc_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \ZERO_DET[48].mc_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \ZERO_DET[48].mc_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ZERO_DET[4].mc_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \ZERO_DET[4].mc_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \ZERO_DET[4].mc_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ZERO_DET[52].mc_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \ZERO_DET[52].mc_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \ZERO_DET[52].mc_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ZERO_DET[56].mc_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \ZERO_DET[56].mc_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \ZERO_DET[56].mc_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ZERO_DET[60].mc_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \ZERO_DET[60].mc_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \ZERO_DET[60].mc_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \ZERO_DET[8].mc_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \ZERO_DET[8].mc_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \ZERO_DET[8].mc_CARRY4\ : label is "PRIMITIVE";
begin
\ENCODE[0].Z_DET_DEL\: entity work.\fix_to_float_delay__parameterized10\
     port map (
      CARRYS_OUT(0) => CARRYS_OUT(0),
      \ZERO_DET[63].mc__0\ => \ZERO_DET[63].mc__0\,
      aclk => aclk,
      c_int_1 => c_int_1,
      c_int_10 => c_int_10,
      c_int_11 => c_int_11,
      c_int_12 => c_int_12,
      c_int_13 => c_int_13,
      c_int_14 => c_int_14,
      c_int_15 => c_int_15,
      c_int_16 => c_int_16,
      c_int_17 => c_int_17,
      c_int_18 => c_int_18,
      c_int_19 => c_int_19,
      c_int_2 => c_int_2,
      c_int_20 => c_int_20,
      c_int_21 => c_int_21,
      c_int_22 => c_int_22,
      c_int_23 => c_int_23,
      c_int_24 => c_int_24,
      c_int_25 => c_int_25,
      c_int_26 => c_int_26,
      c_int_27 => c_int_27,
      c_int_28 => c_int_28,
      c_int_29 => c_int_29,
      c_int_3 => c_int_3,
      c_int_30 => c_int_30,
      c_int_31 => c_int_31,
      c_int_32 => c_int_32,
      c_int_33 => c_int_33,
      c_int_34 => c_int_34,
      c_int_35 => c_int_35,
      c_int_36 => c_int_36,
      c_int_37 => c_int_37,
      c_int_38 => c_int_38,
      c_int_39 => c_int_39,
      c_int_4 => c_int_4,
      c_int_40 => c_int_40,
      c_int_41 => c_int_41,
      c_int_42 => c_int_42,
      c_int_43 => c_int_43,
      c_int_44 => c_int_44,
      c_int_45 => c_int_45,
      c_int_46 => c_int_46,
      c_int_47 => c_int_47,
      c_int_48 => c_int_48,
      c_int_49 => c_int_49,
      c_int_5 => c_int_5,
      c_int_50 => c_int_50,
      c_int_51 => c_int_51,
      c_int_52 => c_int_52,
      c_int_53 => c_int_53,
      c_int_54 => c_int_54,
      c_int_55 => c_int_55,
      c_int_56 => c_int_56,
      c_int_57 => c_int_57,
      c_int_58 => c_int_58,
      c_int_59 => c_int_59,
      c_int_6 => c_int_6,
      c_int_60 => c_int_60,
      c_int_61 => c_int_61,
      c_int_62 => c_int_62,
      c_int_63 => c_int_63,
      c_int_7 => c_int_7,
      c_int_8 => c_int_8,
      c_int_9 => c_int_9,
      \opt_has_pipe.first_q_reg[0]\(2 downto 0) => \opt_has_pipe.first_q_reg[0]\(2 downto 0),
      \opt_has_pipe.first_q_reg[0]_i_3\(7 downto 0) => \opt_has_pipe.first_q_reg[0]_i_3\(7 downto 0),
      \opt_has_pipe.first_q_reg[15]\(1 downto 0) => \opt_has_pipe.first_q_reg[15]_0\(1 downto 0),
      \z_det_up[2]_1\(0) => \z_det_up[2]_1\(0)
    );
\ENCODE[2].Z_DET_DEL\: entity work.\fix_to_float_delay__parameterized13\
     port map (
      aclk => aclk,
      \out\ => \out\,
      \z_det_up[2]_1\(0) => \z_det_up[2]_1\(0)
    );
\ZERO_DET[0].mc_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => c_int_4,
      CO(2) => c_int_3,
      CO(1) => c_int_2,
      CO(0) => c_int_1,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ZERO_DET[0].mc_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\ZERO_DET[12].mc_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => c_int_12,
      CO(3) => c_int_16,
      CO(2) => c_int_15,
      CO(1) => c_int_14,
      CO(0) => c_int_13,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ZERO_DET[12].mc_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\ZERO_DET[16].mc_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => c_int_16,
      CO(3) => c_int_20,
      CO(2) => c_int_19,
      CO(1) => c_int_18,
      CO(0) => c_int_17,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ZERO_DET[16].mc_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\ZERO_DET[20].mc_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => c_int_20,
      CO(3) => c_int_24,
      CO(2) => c_int_23,
      CO(1) => c_int_22,
      CO(0) => c_int_21,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ZERO_DET[20].mc_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \opt_has_pipe.first_q_reg[7]\,
      S(2) => \opt_has_pipe.first_q_reg[6]\,
      S(1) => chunk_is_zero(0),
      S(0) => '1'
    );
\ZERO_DET[24].mc_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => c_int_24,
      CO(3) => c_int_28,
      CO(2) => c_int_27,
      CO(1) => c_int_26,
      CO(0) => c_int_25,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ZERO_DET[24].mc_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \opt_has_pipe.first_q_reg[11]\,
      S(2) => \opt_has_pipe.first_q_reg[10]\,
      S(1) => \opt_has_pipe.first_q_reg[9]\,
      S(0) => \opt_has_pipe.first_q_reg[8]\
    );
\ZERO_DET[28].mc_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => c_int_28,
      CO(3) => c_int_32,
      CO(2) => c_int_31,
      CO(1) => c_int_30,
      CO(0) => c_int_29,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ZERO_DET[28].mc_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \opt_has_pipe.first_q_reg[15]\,
      S(2) => \opt_has_pipe.first_q_reg[14]\,
      S(1) => \opt_has_pipe.first_q_reg[13]\,
      S(0) => \opt_has_pipe.first_q_reg[12]\
    );
\ZERO_DET[32].mc_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => c_int_32,
      CO(3) => c_int_36,
      CO(2) => c_int_35,
      CO(1) => c_int_34,
      CO(0) => c_int_33,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ZERO_DET[32].mc_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \ZERO_DET[36].mc_0\,
      S(2) => \ZERO_DET[35].mc_0\,
      S(1) => \ZERO_DET[34].mc_0\,
      S(0) => \ZERO_DET[33].mc_0\
    );
\ZERO_DET[36].mc_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => c_int_36,
      CO(3) => c_int_40,
      CO(2) => c_int_39,
      CO(1) => c_int_38,
      CO(0) => c_int_37,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ZERO_DET[36].mc_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \ZERO_DET[40].mc_0\,
      S(2) => \ZERO_DET[39].mc_0\,
      S(1) => \ZERO_DET[38].mc_0\,
      S(0) => \ZERO_DET[37].mc_0\
    );
\ZERO_DET[40].mc_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => c_int_40,
      CO(3) => c_int_44,
      CO(2) => c_int_43,
      CO(1) => c_int_42,
      CO(0) => c_int_41,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ZERO_DET[40].mc_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \ZERO_DET[44].mc_0\,
      S(2) => \ZERO_DET[43].mc_0\,
      S(1) => \ZERO_DET[42].mc_0\,
      S(0) => \ZERO_DET[41].mc_0\
    );
\ZERO_DET[44].mc_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => c_int_44,
      CO(3) => c_int_48,
      CO(2) => c_int_47,
      CO(1) => c_int_46,
      CO(0) => c_int_45,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ZERO_DET[44].mc_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \ZERO_DET[48].mc_0\,
      S(2) => \ZERO_DET[47].mc_0\,
      S(1) => \ZERO_DET[46].mc_0\,
      S(0) => \ZERO_DET[45].mc_0\
    );
\ZERO_DET[48].mc_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => c_int_48,
      CO(3) => c_int_52,
      CO(2) => c_int_51,
      CO(1) => c_int_50,
      CO(0) => c_int_49,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ZERO_DET[48].mc_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \ZERO_DET[52].mc_0\,
      S(2) => \ZERO_DET[51].mc_0\,
      S(1) => \ZERO_DET[50].mc_0\,
      S(0) => \ZERO_DET[49].mc_0\
    );
\ZERO_DET[4].mc_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => c_int_4,
      CO(3) => c_int_8,
      CO(2) => c_int_7,
      CO(1) => c_int_6,
      CO(0) => c_int_5,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ZERO_DET[4].mc_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\ZERO_DET[52].mc_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => c_int_52,
      CO(3) => c_int_56,
      CO(2) => c_int_55,
      CO(1) => c_int_54,
      CO(0) => c_int_53,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ZERO_DET[52].mc_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \ZERO_DET[56].mc_0\,
      S(2) => \ZERO_DET[55].mc_0\,
      S(1) => \ZERO_DET[54].mc_0\,
      S(0) => \ZERO_DET[53].mc_0\
    );
\ZERO_DET[56].mc_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => c_int_56,
      CO(3) => c_int_60,
      CO(2) => c_int_59,
      CO(1) => c_int_58,
      CO(0) => c_int_57,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ZERO_DET[56].mc_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \ZERO_DET[60].mc_0\,
      S(2) => \ZERO_DET[59].mc_0\,
      S(1) => \ZERO_DET[58].mc_0\,
      S(0) => \ZERO_DET[57].mc_0\
    );
\ZERO_DET[60].mc_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => c_int_60,
      CO(3) => \ZERO_DET[63].mc__0\,
      CO(2) => c_int_63,
      CO(1) => c_int_62,
      CO(0) => c_int_61,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ZERO_DET[60].mc_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \opt_has_pipe.first_q[15]_i_2\,
      S(2) => \ZERO_DET[63].mc_0\,
      S(1) => \ZERO_DET[62].mc_0\,
      S(0) => \ZERO_DET[61].mc_0\
    );
\ZERO_DET[8].mc_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => c_int_8,
      CO(3) => c_int_12,
      CO(2) => c_int_11,
      CO(1) => c_int_10,
      CO(0) => c_int_9,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ZERO_DET[8].mc_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fix_to_float_renorm_and_round_logic is
  port (
    round_mant : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \opt_has_pipe.first_q_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fix_to_float_renorm_and_round_logic : entity is "renorm_and_round_logic";
end fix_to_float_renorm_and_round_logic;

architecture STRUCTURE of fix_to_float_renorm_and_round_logic is
  signal carry_rnd2 : STD_LOGIC;
  signal lopt : STD_LOGIC;
  signal lopt_1 : STD_LOGIC;
  signal lopt_2 : STD_LOGIC;
  signal lopt_3 : STD_LOGIC;
  signal lopt_4 : STD_LOGIC;
  signal lopt_5 : STD_LOGIC;
  signal round_rnd1 : STD_LOGIC;
begin
\LOGIC.RND1\: entity work.\fix_to_float_carry_chain__parameterized2\
     port map (
      CARRYS_OUT(0) => round_rnd1,
      CARRY_OUT => carry_rnd2,
      Q(7 downto 0) => Q(15 downto 8),
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_2 => lopt_2,
      lopt_3 => lopt_3,
      lopt_4 => lopt_4,
      lopt_5 => Q(7),
      lopt_6 => lopt_5,
      round_mant(7 downto 0) => round_mant(7 downto 0)
    );
\LOGIC.RND2\: entity work.\fix_to_float_carry_chain__parameterized3\
     port map (
      CARRY_IN => carry_rnd2,
      Q(7 downto 0) => Q(7 downto 0),
      lopt => lopt_3,
      lopt_1 => lopt_4,
      lopt_2 => lopt_5,
      \opt_has_pipe.first_q_reg[1]\(8) => \opt_has_pipe.first_q_reg[1]\(0),
      \opt_has_pipe.first_q_reg[1]\(7 downto 0) => round_mant(15 downto 8)
    );
RND_BIT_GEN: entity work.fix_to_float_flt_round_bit
     port map (
      Q(2 downto 0) => Q(17 downto 15),
      ROUND_CARRY => round_rnd1,
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_2 => lopt_2,
      \out\ => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fix_to_float_shift_msb_first is
  port (
    Q : out STD_LOGIC_VECTOR ( 17 downto 0 );
    \opt_has_pipe.first_q_reg[18]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 27 downto 0 );
    aclk : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[33]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[33]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[32]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[31]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[30]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[29]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fix_to_float_shift_msb_first : entity is "shift_msb_first";
end fix_to_float_shift_msb_first;

architecture STRUCTURE of fix_to_float_shift_msb_first is
  signal \MUX_LOOP[0].DEL_SHIFT_n_0\ : STD_LOGIC;
  signal \MUX_LOOP[0].DEL_SHIFT_n_1\ : STD_LOGIC;
  signal \MUX_LOOP[0].DEL_SHIFT_n_10\ : STD_LOGIC;
  signal \MUX_LOOP[0].DEL_SHIFT_n_11\ : STD_LOGIC;
  signal \MUX_LOOP[0].DEL_SHIFT_n_12\ : STD_LOGIC;
  signal \MUX_LOOP[0].DEL_SHIFT_n_13\ : STD_LOGIC;
  signal \MUX_LOOP[0].DEL_SHIFT_n_14\ : STD_LOGIC;
  signal \MUX_LOOP[0].DEL_SHIFT_n_15\ : STD_LOGIC;
  signal \MUX_LOOP[0].DEL_SHIFT_n_16\ : STD_LOGIC;
  signal \MUX_LOOP[0].DEL_SHIFT_n_17\ : STD_LOGIC;
  signal \MUX_LOOP[0].DEL_SHIFT_n_2\ : STD_LOGIC;
  signal \MUX_LOOP[0].DEL_SHIFT_n_3\ : STD_LOGIC;
  signal \MUX_LOOP[0].DEL_SHIFT_n_4\ : STD_LOGIC;
  signal \MUX_LOOP[0].DEL_SHIFT_n_5\ : STD_LOGIC;
  signal \MUX_LOOP[0].DEL_SHIFT_n_6\ : STD_LOGIC;
  signal \MUX_LOOP[0].DEL_SHIFT_n_7\ : STD_LOGIC;
  signal \MUX_LOOP[0].DEL_SHIFT_n_8\ : STD_LOGIC;
  signal \MUX_LOOP[0].DEL_SHIFT_n_9\ : STD_LOGIC;
begin
\MUX_LOOP[0].DEL_SHIFT\: entity work.\fix_to_float_delay__parameterized14\
     port map (
      D(17) => \MUX_LOOP[0].DEL_SHIFT_n_0\,
      D(16) => \MUX_LOOP[0].DEL_SHIFT_n_1\,
      D(15) => \MUX_LOOP[0].DEL_SHIFT_n_2\,
      D(14) => \MUX_LOOP[0].DEL_SHIFT_n_3\,
      D(13) => \MUX_LOOP[0].DEL_SHIFT_n_4\,
      D(12) => \MUX_LOOP[0].DEL_SHIFT_n_5\,
      D(11) => \MUX_LOOP[0].DEL_SHIFT_n_6\,
      D(10) => \MUX_LOOP[0].DEL_SHIFT_n_7\,
      D(9) => \MUX_LOOP[0].DEL_SHIFT_n_8\,
      D(8) => \MUX_LOOP[0].DEL_SHIFT_n_9\,
      D(7) => \MUX_LOOP[0].DEL_SHIFT_n_10\,
      D(6) => \MUX_LOOP[0].DEL_SHIFT_n_11\,
      D(5) => \MUX_LOOP[0].DEL_SHIFT_n_12\,
      D(4) => \MUX_LOOP[0].DEL_SHIFT_n_13\,
      D(3) => \MUX_LOOP[0].DEL_SHIFT_n_14\,
      D(2) => \MUX_LOOP[0].DEL_SHIFT_n_15\,
      D(1) => \MUX_LOOP[0].DEL_SHIFT_n_16\,
      D(0) => \MUX_LOOP[0].DEL_SHIFT_n_17\,
      aclk => aclk,
      \opt_has_pipe.first_q_reg[18]\(2 downto 0) => \opt_has_pipe.first_q_reg[18]\(2 downto 0),
      \opt_has_pipe.first_q_reg[28]\(27 downto 0) => D(27 downto 0),
      \opt_has_pipe.first_q_reg[29]\ => \opt_has_pipe.first_q_reg[29]\,
      \opt_has_pipe.first_q_reg[30]\ => \opt_has_pipe.first_q_reg[30]\,
      \opt_has_pipe.first_q_reg[31]\ => \opt_has_pipe.first_q_reg[31]\,
      \opt_has_pipe.first_q_reg[32]\ => \opt_has_pipe.first_q_reg[32]\,
      \opt_has_pipe.first_q_reg[33]\(0) => \opt_has_pipe.first_q_reg[33]\(0),
      \opt_has_pipe.first_q_reg[33]_0\ => \opt_has_pipe.first_q_reg[33]_0\,
      \out\(7 downto 0) => \out\(7 downto 0)
    );
\MUX_LOOP[2].DEL_SHIFT\: entity work.\fix_to_float_delay__parameterized14_0\
     port map (
      D(17) => \MUX_LOOP[0].DEL_SHIFT_n_0\,
      D(16) => \MUX_LOOP[0].DEL_SHIFT_n_1\,
      D(15) => \MUX_LOOP[0].DEL_SHIFT_n_2\,
      D(14) => \MUX_LOOP[0].DEL_SHIFT_n_3\,
      D(13) => \MUX_LOOP[0].DEL_SHIFT_n_4\,
      D(12) => \MUX_LOOP[0].DEL_SHIFT_n_5\,
      D(11) => \MUX_LOOP[0].DEL_SHIFT_n_6\,
      D(10) => \MUX_LOOP[0].DEL_SHIFT_n_7\,
      D(9) => \MUX_LOOP[0].DEL_SHIFT_n_8\,
      D(8) => \MUX_LOOP[0].DEL_SHIFT_n_9\,
      D(7) => \MUX_LOOP[0].DEL_SHIFT_n_10\,
      D(6) => \MUX_LOOP[0].DEL_SHIFT_n_11\,
      D(5) => \MUX_LOOP[0].DEL_SHIFT_n_12\,
      D(4) => \MUX_LOOP[0].DEL_SHIFT_n_13\,
      D(3) => \MUX_LOOP[0].DEL_SHIFT_n_14\,
      D(2) => \MUX_LOOP[0].DEL_SHIFT_n_15\,
      D(1) => \MUX_LOOP[0].DEL_SHIFT_n_16\,
      D(0) => \MUX_LOOP[0].DEL_SHIFT_n_17\,
      Q(17 downto 0) => Q(17 downto 0),
      aclk => aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fix_to_float_lead_zero_encode is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \opt_has_pipe.first_q_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC;
    CARRYS_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    \CHAIN_GEN[6].C_MUX.CARRY_MUX\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    EXP : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \opt_has_pipe.i_pipe[2].pipe_reg[2][1]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    chunk_is_zero : in STD_LOGIC_VECTOR ( 14 downto 0 );
    A : in STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    op_state : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fix_to_float_lead_zero_encode : entity is "lead_zero_encode";
end fix_to_float_lead_zero_encode;

architecture STRUCTURE of fix_to_float_lead_zero_encode is
  signal \^carrys_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^chain_gen[6].c_mux.carry_mux\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ENCODE[0].DIST_DEL_n_1\ : STD_LOGIC;
  signal \ENCODE[1].DIST_DEL_n_1\ : STD_LOGIC;
  signal \ENCODE[1].DIST_DEL_n_2\ : STD_LOGIC;
  signal \TWO.DIST_DEL_n_4\ : STD_LOGIC;
  signal ZERO_DET_CC_1_n_3 : STD_LOGIC;
  signal ZERO_DET_CC_1_n_4 : STD_LOGIC;
  signal ZERO_DET_CC_1_n_5 : STD_LOGIC;
  signal \ZERO_DET_CC_2.CC_n_0\ : STD_LOGIC;
  signal norm_dist_skew : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal op_int : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^opt_has_pipe.first_q_reg[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  CARRYS_OUT(0) <= \^carrys_out\(0);
  \CHAIN_GEN[6].C_MUX.CARRY_MUX\(1 downto 0) <= \^chain_gen[6].c_mux.carry_mux\(1 downto 0);
  \opt_has_pipe.first_q_reg[2]\(2 downto 0) <= \^opt_has_pipe.first_q_reg[2]\(2 downto 0);
A_Z_DET: entity work.\fix_to_float_delay__parameterized2\
     port map (
      D => D,
      aclk => aclk,
      \opt_has_pipe.first_q_reg[0]\ => \ZERO_DET_CC_2.CC_n_0\
    );
\ENCODE[0].DIST_DEL\: entity work.\fix_to_float_delay__parameterized5\
     port map (
      D(1) => norm_dist_skew(4),
      D(0) => \^chain_gen[6].c_mux.carry_mux\(1),
      EXP(0) => EXP(5),
      Q(0) => \ENCODE[0].DIST_DEL_n_1\,
      \RESULT_REG.NORMAL.exp_op_reg[6]\(0) => \ENCODE[1].DIST_DEL_n_2\,
      \RESULT_REG.NORMAL.exp_op_reg[6]_0\ => \TWO.DIST_DEL_n_4\,
      aclk => aclk,
      op_state(0) => op_state(0),
      \opt_has_pipe.i_pipe[2].pipe_reg[2][1]\ => \opt_has_pipe.i_pipe[2].pipe_reg[2][1]\
    );
\ENCODE[0].MUX_0\: entity work.fix_to_float_mux4
     port map (
      D(1) => norm_dist_skew(0),
      D(0) => norm_dist_skew(1),
      aclk => aclk,
      \opt_has_pipe.first_q_reg[0]\(2 downto 0) => \^opt_has_pipe.first_q_reg[2]\(2 downto 0),
      \opt_has_pipe.first_q_reg[7]\(7 downto 0) => \opt_has_pipe.first_q_reg[7]\(7 downto 0),
      \out\(7 downto 0) => \out\(7 downto 0)
    );
\ENCODE[0].MUX_Z\: entity work.\fix_to_float_mux4__parameterized0\
     port map (
      CARRYS_OUT(1) => p_0_out(7),
      CARRYS_OUT(0) => \^carrys_out\(0),
      D(0) => norm_dist_skew(2),
      aclk => aclk,
      \opt_has_pipe.first_q_reg[2]\(2 downto 0) => \^opt_has_pipe.first_q_reg[2]\(2 downto 0),
      \opt_has_pipe.first_q_reg[2]_0\(2 downto 0) => op_int(2 downto 0),
      \opt_has_pipe.first_q_reg[3]\(0) => \^chain_gen[6].c_mux.carry_mux\(1)
    );
\ENCODE[1].DIST_DEL\: entity work.\fix_to_float_delay__parameterized8\
     port map (
      D(1) => norm_dist_skew(2),
      D(0) => \^opt_has_pipe.first_q_reg[2]\(1),
      EXP(0) => EXP(4),
      Q(1) => \ENCODE[1].DIST_DEL_n_1\,
      Q(0) => \ENCODE[1].DIST_DEL_n_2\,
      \RESULT_REG.NORMAL.exp_op_reg[4]\ => \TWO.DIST_DEL_n_4\,
      \RESULT_REG.NORMAL.exp_op_reg[4]_0\(0) => \ENCODE[0].DIST_DEL_n_1\,
      aclk => aclk,
      op_state(0) => op_state(0)
    );
\TWO.DIST_DEL\: entity work.\fix_to_float_delay__parameterized8_2\
     port map (
      D(1) => norm_dist_skew(0),
      D(0) => norm_dist_skew(1),
      EXP(3 downto 0) => EXP(3 downto 0),
      Q(0) => Q(0),
      \RESULT_REG.NORMAL.exp_op_reg[3]\(1) => \ENCODE[1].DIST_DEL_n_1\,
      \RESULT_REG.NORMAL.exp_op_reg[3]\(0) => \ENCODE[1].DIST_DEL_n_2\,
      aclk => aclk,
      op_state(0) => op_state(0),
      \opt_has_pipe.first_q_reg[0]\ => \TWO.DIST_DEL_n_4\
    );
ZERO_DET_CC_1: entity work.\fix_to_float_carry_chain__parameterized0\
     port map (
      CARRYS_OUT(0) => \^carrys_out\(0),
      \CHAIN_GEN[0].C_MUX.CARRY_MUX_0\ => ZERO_DET_CC_1_n_5,
      \CHAIN_GEN[1].C_MUX.CARRY_MUX_0\ => ZERO_DET_CC_1_n_4,
      \CHAIN_GEN[2].C_MUX.CARRY_MUX_0\(0) => \^chain_gen[6].c_mux.carry_mux\(0),
      \CHAIN_GEN[2].C_MUX.CARRY_MUX_1\ => ZERO_DET_CC_1_n_3,
      D(1) => norm_dist_skew(4),
      D(0) => \^chain_gen[6].c_mux.carry_mux\(1),
      chunk_is_zero(7 downto 0) => chunk_is_zero(7 downto 0)
    );
\ZERO_DET_CC_2.CC\: entity work.\fix_to_float_carry_chain__parameterized0_3\
     port map (
      A(7) => A(0),
      A(6 downto 0) => chunk_is_zero(14 downto 8),
      CARRYS_OUT(1) => p_0_out(7),
      CARRYS_OUT(0) => \^carrys_out\(0),
      \CHAIN_GEN[7].C_MUX.CARRY_MUX_0\ => \ZERO_DET_CC_2.CC_n_0\,
      D(0) => \^chain_gen[6].c_mux.carry_mux\(1),
      \opt_has_pipe.first_q[2]_i_2\(2 downto 0) => op_int(2 downto 0),
      \opt_has_pipe.first_q_reg[0]\ => ZERO_DET_CC_1_n_5,
      \opt_has_pipe.first_q_reg[1]\ => ZERO_DET_CC_1_n_4,
      \opt_has_pipe.first_q_reg[2]\ => ZERO_DET_CC_1_n_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fix_to_float_fix_to_flt_conv is
  port (
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 60 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fix_to_float_fix_to_flt_conv : entity is "fix_to_flt_conv";
end fix_to_float_fix_to_flt_conv;

architecture STRUCTURE of fix_to_float_fix_to_flt_conv is
  signal D : STD_LOGIC;
  signal \EXP__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal EXP_n_1 : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_0\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_1\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_10\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_11\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_12\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_13\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_14\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_15\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_16\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_17\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_18\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_19\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_2\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_20\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_21\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_22\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_23\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_24\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_25\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_26\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_27\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_28\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_29\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_3\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_30\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_31\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_32\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_33\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_34\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_35\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_36\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_37\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_38\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_39\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_4\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_40\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_41\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_5\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_58\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_59\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_6\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_60\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_61\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_62\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_63\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_64\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_65\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_66\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_67\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_68\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_69\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_7\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_70\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_8\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_9\ : STD_LOGIC;
  signal \FIXED_DATA_SIGNED.M_ABS_n_99\ : STD_LOGIC;
  signal LZE_n_21 : STD_LOGIC;
  signal c_int : STD_LOGIC_VECTOR ( 3 to 3 );
  signal chunk_is_zero : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mant_shifted_rnd1 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal norm_dist_skew : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal op_state : STD_LOGIC_VECTOR ( 3 to 3 );
  signal p_0_out : STD_LOGIC_VECTOR ( 3 to 3 );
  signal p_0_out_0 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal p_5_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_6_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal part_norm_mant : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal round_mant : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal shifted_temp : STD_LOGIC_VECTOR ( 28 downto 1 );
  signal sum_rnd2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xor_a : STD_LOGIC_VECTOR ( 59 downto 0 );
  signal zeros : STD_LOGIC;
begin
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(0),
      O => xor_a(0)
    );
\CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(10),
      O => xor_a(10)
    );
\CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(11),
      O => xor_a(11)
    );
\CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(12),
      O => xor_a(12)
    );
\CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(13),
      O => xor_a(13)
    );
\CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(14),
      O => xor_a(14)
    );
\CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(15),
      O => xor_a(15)
    );
\CHAIN_GEN[16].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(16),
      O => xor_a(16)
    );
\CHAIN_GEN[17].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(17),
      O => xor_a(17)
    );
\CHAIN_GEN[18].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(18),
      O => xor_a(18)
    );
\CHAIN_GEN[19].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(19),
      O => xor_a(19)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(1),
      O => xor_a(1)
    );
\CHAIN_GEN[20].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(20),
      O => xor_a(20)
    );
\CHAIN_GEN[21].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(21),
      O => xor_a(21)
    );
\CHAIN_GEN[22].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(22),
      O => xor_a(22)
    );
\CHAIN_GEN[23].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(23),
      O => xor_a(23)
    );
\CHAIN_GEN[24].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(24),
      O => xor_a(24)
    );
\CHAIN_GEN[25].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(25),
      O => xor_a(25)
    );
\CHAIN_GEN[26].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(26),
      O => xor_a(26)
    );
\CHAIN_GEN[27].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(27),
      O => xor_a(27)
    );
\CHAIN_GEN[28].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(28),
      O => xor_a(28)
    );
\CHAIN_GEN[29].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(29),
      O => xor_a(29)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(2),
      O => xor_a(2)
    );
\CHAIN_GEN[30].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(30),
      O => xor_a(30)
    );
\CHAIN_GEN[31].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(31),
      O => xor_a(31)
    );
\CHAIN_GEN[32].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(32),
      O => xor_a(32)
    );
\CHAIN_GEN[33].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(33),
      O => xor_a(33)
    );
\CHAIN_GEN[34].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(34),
      O => xor_a(34)
    );
\CHAIN_GEN[35].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(35),
      O => xor_a(35)
    );
\CHAIN_GEN[36].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(36),
      O => xor_a(36)
    );
\CHAIN_GEN[37].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(37),
      O => xor_a(37)
    );
\CHAIN_GEN[38].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(38),
      O => xor_a(38)
    );
\CHAIN_GEN[39].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(39),
      O => xor_a(39)
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(3),
      O => xor_a(3)
    );
\CHAIN_GEN[40].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(40),
      O => xor_a(40)
    );
\CHAIN_GEN[41].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(41),
      O => xor_a(41)
    );
\CHAIN_GEN[42].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(42),
      O => xor_a(42)
    );
\CHAIN_GEN[43].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(43),
      O => xor_a(43)
    );
\CHAIN_GEN[44].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(44),
      O => xor_a(44)
    );
\CHAIN_GEN[45].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(45),
      O => xor_a(45)
    );
\CHAIN_GEN[46].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(46),
      O => xor_a(46)
    );
\CHAIN_GEN[47].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(47),
      O => xor_a(47)
    );
\CHAIN_GEN[48].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(48),
      O => xor_a(48)
    );
\CHAIN_GEN[49].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(49),
      O => xor_a(49)
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(4),
      O => xor_a(4)
    );
\CHAIN_GEN[50].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(50),
      O => xor_a(50)
    );
\CHAIN_GEN[51].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(51),
      O => xor_a(51)
    );
\CHAIN_GEN[52].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(52),
      O => xor_a(52)
    );
\CHAIN_GEN[53].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(53),
      O => xor_a(53)
    );
\CHAIN_GEN[54].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(54),
      O => xor_a(54)
    );
\CHAIN_GEN[55].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(55),
      O => xor_a(55)
    );
\CHAIN_GEN[56].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(56),
      O => xor_a(56)
    );
\CHAIN_GEN[57].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(57),
      O => xor_a(57)
    );
\CHAIN_GEN[58].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(58),
      O => xor_a(58)
    );
\CHAIN_GEN[59].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(59),
      O => xor_a(59)
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(5),
      O => xor_a(5)
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(6),
      O => xor_a(6)
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(7),
      O => xor_a(7)
    );
\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(8),
      O => xor_a(8)
    );
\CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(60),
      I1 => s_axis_a_tdata(9),
      O => xor_a(9)
    );
EXP: entity work.fix_to_float_fix_to_flt_conv_exp
     port map (
      D => D,
      aclk => aclk,
      op_state(0) => op_state(3),
      s_axis_a_tdata(0) => s_axis_a_tdata(60),
      \s_axis_a_tdata[60]\ => EXP_n_1
    );
\FIXED_DATA_SIGNED.M_ABS\: entity work.fix_to_float_carry_chain
     port map (
      A(0) => \FIXED_DATA_SIGNED.M_ABS_n_99\,
      CARRYS_OUT(0) => c_int(3),
      CARRY_OUT => norm_dist_skew(5),
      \CHAIN_GEN[10].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_9\,
      \CHAIN_GEN[11].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_10\,
      \CHAIN_GEN[12].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_11\,
      \CHAIN_GEN[13].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_12\,
      \CHAIN_GEN[14].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_13\,
      \CHAIN_GEN[15].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_14\,
      \CHAIN_GEN[16].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_15\,
      \CHAIN_GEN[17].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_16\,
      \CHAIN_GEN[18].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_17\,
      \CHAIN_GEN[19].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_18\,
      \CHAIN_GEN[1].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_0\,
      \CHAIN_GEN[20].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_19\,
      \CHAIN_GEN[21].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_20\,
      \CHAIN_GEN[22].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_21\,
      \CHAIN_GEN[23].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_22\,
      \CHAIN_GEN[24].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_23\,
      \CHAIN_GEN[25].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_24\,
      \CHAIN_GEN[26].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_25\,
      \CHAIN_GEN[27].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_26\,
      \CHAIN_GEN[27].Q_XOR.SUM_XOR_1\ => \FIXED_DATA_SIGNED.M_ABS_n_66\,
      \CHAIN_GEN[28].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_27\,
      \CHAIN_GEN[28].Q_XOR.SUM_XOR_1\ => \FIXED_DATA_SIGNED.M_ABS_n_67\,
      \CHAIN_GEN[29].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_28\,
      \CHAIN_GEN[29].Q_XOR.SUM_XOR_1\ => \FIXED_DATA_SIGNED.M_ABS_n_68\,
      \CHAIN_GEN[2].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_1\,
      \CHAIN_GEN[30].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_29\,
      \CHAIN_GEN[30].Q_XOR.SUM_XOR_1\ => \FIXED_DATA_SIGNED.M_ABS_n_69\,
      \CHAIN_GEN[31].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_30\,
      \CHAIN_GEN[31].Q_XOR.SUM_XOR_1\ => \FIXED_DATA_SIGNED.M_ABS_n_70\,
      \CHAIN_GEN[32].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_31\,
      \CHAIN_GEN[33].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_32\,
      \CHAIN_GEN[34].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_33\,
      \CHAIN_GEN[35].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_34\,
      \CHAIN_GEN[36].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_35\,
      \CHAIN_GEN[37].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_36\,
      \CHAIN_GEN[38].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_37\,
      \CHAIN_GEN[39].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_38\,
      \CHAIN_GEN[3].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_2\,
      \CHAIN_GEN[40].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_39\,
      \CHAIN_GEN[41].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_40\,
      \CHAIN_GEN[42].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_41\,
      \CHAIN_GEN[4].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_3\,
      \CHAIN_GEN[5].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_4\,
      \CHAIN_GEN[60].Q_XOR.SUM_XOR_0\(59 downto 0) => xor_a(59 downto 0),
      \CHAIN_GEN[6].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_5\,
      \CHAIN_GEN[7].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_6\,
      \CHAIN_GEN[8].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_7\,
      \CHAIN_GEN[9].Q_XOR.SUM_XOR_0\ => \FIXED_DATA_SIGNED.M_ABS_n_8\,
      D(7) => \FIXED_DATA_SIGNED.M_ABS_n_58\,
      D(6) => \FIXED_DATA_SIGNED.M_ABS_n_59\,
      D(5) => \FIXED_DATA_SIGNED.M_ABS_n_60\,
      D(4) => \FIXED_DATA_SIGNED.M_ABS_n_61\,
      D(3) => \FIXED_DATA_SIGNED.M_ABS_n_62\,
      D(2) => \FIXED_DATA_SIGNED.M_ABS_n_63\,
      D(1) => \FIXED_DATA_SIGNED.M_ABS_n_64\,
      D(0) => \FIXED_DATA_SIGNED.M_ABS_n_65\,
      chunk_is_zero(15 downto 0) => chunk_is_zero(15 downto 0),
      \opt_has_pipe.first_q_reg[28]\(0) => p_0_out(3),
      s_axis_a_tdata(0) => s_axis_a_tdata(60),
      \s_axis_a_tdata[60]\(27 downto 0) => shifted_temp(28 downto 1)
    );
LZE: entity work.fix_to_float_lead_zero_encode
     port map (
      A(0) => \FIXED_DATA_SIGNED.M_ABS_n_99\,
      CARRYS_OUT(0) => p_0_out(3),
      \CHAIN_GEN[6].C_MUX.CARRY_MUX\(1) => norm_dist_skew(5),
      \CHAIN_GEN[6].C_MUX.CARRY_MUX\(0) => c_int(3),
      D => D,
      EXP(5 downto 0) => \EXP__0\(5 downto 0),
      Q(0) => p_0_out_0(8),
      aclk => aclk,
      chunk_is_zero(14 downto 0) => chunk_is_zero(14 downto 0),
      op_state(0) => op_state(3),
      \opt_has_pipe.first_q_reg[2]\(2) => p_5_out(2),
      \opt_has_pipe.first_q_reg[2]\(1) => norm_dist_skew(3),
      \opt_has_pipe.first_q_reg[2]\(0) => p_5_out(0),
      \opt_has_pipe.first_q_reg[7]\(7) => \FIXED_DATA_SIGNED.M_ABS_n_58\,
      \opt_has_pipe.first_q_reg[7]\(6) => \FIXED_DATA_SIGNED.M_ABS_n_59\,
      \opt_has_pipe.first_q_reg[7]\(5) => \FIXED_DATA_SIGNED.M_ABS_n_60\,
      \opt_has_pipe.first_q_reg[7]\(4) => \FIXED_DATA_SIGNED.M_ABS_n_61\,
      \opt_has_pipe.first_q_reg[7]\(3) => \FIXED_DATA_SIGNED.M_ABS_n_62\,
      \opt_has_pipe.first_q_reg[7]\(2) => \FIXED_DATA_SIGNED.M_ABS_n_63\,
      \opt_has_pipe.first_q_reg[7]\(1) => \FIXED_DATA_SIGNED.M_ABS_n_64\,
      \opt_has_pipe.first_q_reg[7]\(0) => \FIXED_DATA_SIGNED.M_ABS_n_65\,
      \opt_has_pipe.i_pipe[2].pipe_reg[2][1]\ => LZE_n_21,
      \out\(7 downto 0) => p_6_out(7 downto 0)
    );
\NEED_Z_DET.Z_DET\: entity work.fix_to_float_norm_zero_det
     port map (
      CARRYS_OUT(0) => p_0_out(3),
      \ZERO_DET[33].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_10\,
      \ZERO_DET[34].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_11\,
      \ZERO_DET[35].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_12\,
      \ZERO_DET[36].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_13\,
      \ZERO_DET[37].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_14\,
      \ZERO_DET[38].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_15\,
      \ZERO_DET[39].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_16\,
      \ZERO_DET[40].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_17\,
      \ZERO_DET[41].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_18\,
      \ZERO_DET[42].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_19\,
      \ZERO_DET[43].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_20\,
      \ZERO_DET[44].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_21\,
      \ZERO_DET[45].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_22\,
      \ZERO_DET[46].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_23\,
      \ZERO_DET[47].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_24\,
      \ZERO_DET[48].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_25\,
      \ZERO_DET[49].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_26\,
      \ZERO_DET[50].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_27\,
      \ZERO_DET[51].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_28\,
      \ZERO_DET[52].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_29\,
      \ZERO_DET[53].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_30\,
      \ZERO_DET[54].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_31\,
      \ZERO_DET[55].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_32\,
      \ZERO_DET[56].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_33\,
      \ZERO_DET[57].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_34\,
      \ZERO_DET[58].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_35\,
      \ZERO_DET[59].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_36\,
      \ZERO_DET[60].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_37\,
      \ZERO_DET[61].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_38\,
      \ZERO_DET[62].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_39\,
      \ZERO_DET[63].mc_0\ => \FIXED_DATA_SIGNED.M_ABS_n_40\,
      aclk => aclk,
      chunk_is_zero(0) => chunk_is_zero(15),
      \opt_has_pipe.first_q[15]_i_2\ => \FIXED_DATA_SIGNED.M_ABS_n_41\,
      \opt_has_pipe.first_q_reg[0]\(2) => p_5_out(2),
      \opt_has_pipe.first_q_reg[0]\(1) => norm_dist_skew(3),
      \opt_has_pipe.first_q_reg[0]\(0) => p_5_out(0),
      \opt_has_pipe.first_q_reg[0]_i_3\(7 downto 0) => p_6_out(7 downto 0),
      \opt_has_pipe.first_q_reg[10]\ => \FIXED_DATA_SIGNED.M_ABS_n_4\,
      \opt_has_pipe.first_q_reg[11]\ => \FIXED_DATA_SIGNED.M_ABS_n_5\,
      \opt_has_pipe.first_q_reg[12]\ => \FIXED_DATA_SIGNED.M_ABS_n_6\,
      \opt_has_pipe.first_q_reg[13]\ => \FIXED_DATA_SIGNED.M_ABS_n_7\,
      \opt_has_pipe.first_q_reg[14]\ => \FIXED_DATA_SIGNED.M_ABS_n_8\,
      \opt_has_pipe.first_q_reg[15]\ => \FIXED_DATA_SIGNED.M_ABS_n_9\,
      \opt_has_pipe.first_q_reg[15]_0\(1) => norm_dist_skew(5),
      \opt_has_pipe.first_q_reg[15]_0\(0) => c_int(3),
      \opt_has_pipe.first_q_reg[6]\ => \FIXED_DATA_SIGNED.M_ABS_n_0\,
      \opt_has_pipe.first_q_reg[7]\ => \FIXED_DATA_SIGNED.M_ABS_n_1\,
      \opt_has_pipe.first_q_reg[8]\ => \FIXED_DATA_SIGNED.M_ABS_n_2\,
      \opt_has_pipe.first_q_reg[9]\ => \FIXED_DATA_SIGNED.M_ABS_n_3\,
      \out\ => zeros
    );
NORM_SHIFT: entity work.fix_to_float_shift_msb_first
     port map (
      D(27 downto 0) => shifted_temp(28 downto 1),
      Q(17) => part_norm_mant(0),
      Q(16) => part_norm_mant(1),
      Q(15) => part_norm_mant(2),
      Q(14) => mant_shifted_rnd1(1),
      Q(13) => mant_shifted_rnd1(2),
      Q(12) => mant_shifted_rnd1(3),
      Q(11) => mant_shifted_rnd1(4),
      Q(10) => mant_shifted_rnd1(5),
      Q(9) => mant_shifted_rnd1(6),
      Q(8) => mant_shifted_rnd1(7),
      Q(7) => sum_rnd2(0),
      Q(6) => sum_rnd2(1),
      Q(5) => sum_rnd2(2),
      Q(4) => sum_rnd2(3),
      Q(3) => sum_rnd2(4),
      Q(2) => sum_rnd2(5),
      Q(1) => sum_rnd2(6),
      Q(0) => sum_rnd2(7),
      aclk => aclk,
      \opt_has_pipe.first_q_reg[18]\(2) => p_5_out(2),
      \opt_has_pipe.first_q_reg[18]\(1) => norm_dist_skew(3),
      \opt_has_pipe.first_q_reg[18]\(0) => p_5_out(0),
      \opt_has_pipe.first_q_reg[29]\ => \FIXED_DATA_SIGNED.M_ABS_n_70\,
      \opt_has_pipe.first_q_reg[30]\ => \FIXED_DATA_SIGNED.M_ABS_n_69\,
      \opt_has_pipe.first_q_reg[31]\ => \FIXED_DATA_SIGNED.M_ABS_n_68\,
      \opt_has_pipe.first_q_reg[32]\ => \FIXED_DATA_SIGNED.M_ABS_n_67\,
      \opt_has_pipe.first_q_reg[33]\(0) => norm_dist_skew(5),
      \opt_has_pipe.first_q_reg[33]_0\ => \FIXED_DATA_SIGNED.M_ABS_n_66\,
      \out\(7 downto 0) => p_6_out(7 downto 0)
    );
OP: entity work.fix_to_float_flt_dec_op
     port map (
      EXP(5 downto 0) => \EXP__0\(5 downto 0),
      \RESULT_REG.NORMAL.exp_op_reg[6]_0\ => LZE_n_21,
      \RESULT_REG.NORMAL.sign_op_reg_0\ => EXP_n_1,
      SR(0) => op_state(3),
      aclk => aclk,
      m_axis_result_tdata(23 downto 0) => m_axis_result_tdata(23 downto 0),
      round_mant(15 downto 0) => round_mant(15 downto 0)
    );
ROUND: entity work.fix_to_float_renorm_and_round_logic
     port map (
      Q(17) => part_norm_mant(0),
      Q(16) => part_norm_mant(1),
      Q(15) => part_norm_mant(2),
      Q(14) => mant_shifted_rnd1(1),
      Q(13) => mant_shifted_rnd1(2),
      Q(12) => mant_shifted_rnd1(3),
      Q(11) => mant_shifted_rnd1(4),
      Q(10) => mant_shifted_rnd1(5),
      Q(9) => mant_shifted_rnd1(6),
      Q(8) => mant_shifted_rnd1(7),
      Q(7) => sum_rnd2(0),
      Q(6) => sum_rnd2(1),
      Q(5) => sum_rnd2(2),
      Q(4) => sum_rnd2(3),
      Q(3) => sum_rnd2(4),
      Q(2) => sum_rnd2(5),
      Q(1) => sum_rnd2(6),
      Q(0) => sum_rnd2(7),
      \opt_has_pipe.first_q_reg[1]\(0) => p_0_out_0(8),
      \out\ => zeros,
      round_mant(15 downto 0) => round_mant(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fix_to_float_floating_point_v7_1_7_viv is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tready : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_a_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_a_tlast : in STD_LOGIC;
    s_axis_b_tvalid : in STD_LOGIC;
    s_axis_b_tready : out STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_b_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_b_tlast : in STD_LOGIC;
    s_axis_c_tvalid : in STD_LOGIC;
    s_axis_c_tready : out STD_LOGIC;
    s_axis_c_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_c_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_c_tlast : in STD_LOGIC;
    s_axis_operation_tvalid : in STD_LOGIC;
    s_axis_operation_tready : out STD_LOGIC;
    s_axis_operation_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_operation_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_operation_tlast : in STD_LOGIC;
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tready : in STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_result_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_result_tlast : out STD_LOGIC
  );
  attribute C_ACCUM_INPUT_MSB : integer;
  attribute C_ACCUM_INPUT_MSB of fix_to_float_floating_point_v7_1_7_viv : entity is 32;
  attribute C_ACCUM_LSB : integer;
  attribute C_ACCUM_LSB of fix_to_float_floating_point_v7_1_7_viv : entity is -31;
  attribute C_ACCUM_MSB : integer;
  attribute C_ACCUM_MSB of fix_to_float_floating_point_v7_1_7_viv : entity is 32;
  attribute C_A_FRACTION_WIDTH : integer;
  attribute C_A_FRACTION_WIDTH of fix_to_float_floating_point_v7_1_7_viv : entity is 6;
  attribute C_A_TDATA_WIDTH : integer;
  attribute C_A_TDATA_WIDTH of fix_to_float_floating_point_v7_1_7_viv : entity is 64;
  attribute C_A_TUSER_WIDTH : integer;
  attribute C_A_TUSER_WIDTH of fix_to_float_floating_point_v7_1_7_viv : entity is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of fix_to_float_floating_point_v7_1_7_viv : entity is 61;
  attribute C_BRAM_USAGE : integer;
  attribute C_BRAM_USAGE of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_B_FRACTION_WIDTH : integer;
  attribute C_B_FRACTION_WIDTH of fix_to_float_floating_point_v7_1_7_viv : entity is 6;
  attribute C_B_TDATA_WIDTH : integer;
  attribute C_B_TDATA_WIDTH of fix_to_float_floating_point_v7_1_7_viv : entity is 64;
  attribute C_B_TUSER_WIDTH : integer;
  attribute C_B_TUSER_WIDTH of fix_to_float_floating_point_v7_1_7_viv : entity is 1;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of fix_to_float_floating_point_v7_1_7_viv : entity is 61;
  attribute C_COMPARE_OPERATION : integer;
  attribute C_COMPARE_OPERATION of fix_to_float_floating_point_v7_1_7_viv : entity is 8;
  attribute C_C_FRACTION_WIDTH : integer;
  attribute C_C_FRACTION_WIDTH of fix_to_float_floating_point_v7_1_7_viv : entity is 6;
  attribute C_C_TDATA_WIDTH : integer;
  attribute C_C_TDATA_WIDTH of fix_to_float_floating_point_v7_1_7_viv : entity is 64;
  attribute C_C_TUSER_WIDTH : integer;
  attribute C_C_TUSER_WIDTH of fix_to_float_floating_point_v7_1_7_viv : entity is 1;
  attribute C_C_WIDTH : integer;
  attribute C_C_WIDTH of fix_to_float_floating_point_v7_1_7_viv : entity is 61;
  attribute C_FIXED_DATA_UNSIGNED : integer;
  attribute C_FIXED_DATA_UNSIGNED of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ABSOLUTE : integer;
  attribute C_HAS_ABSOLUTE of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ACCUMULATOR_A : integer;
  attribute C_HAS_ACCUMULATOR_A of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ACCUMULATOR_S : integer;
  attribute C_HAS_ACCUMULATOR_S of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW : integer;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ACCUM_OVERFLOW : integer;
  attribute C_HAS_ACCUM_OVERFLOW of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ACLKEN : integer;
  attribute C_HAS_ACLKEN of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ADD : integer;
  attribute C_HAS_ADD of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ARESETN : integer;
  attribute C_HAS_ARESETN of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_A_TLAST : integer;
  attribute C_HAS_A_TLAST of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_A_TUSER : integer;
  attribute C_HAS_A_TUSER of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_B : integer;
  attribute C_HAS_B of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_B_TLAST : integer;
  attribute C_HAS_B_TLAST of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_B_TUSER : integer;
  attribute C_HAS_B_TUSER of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_C : integer;
  attribute C_HAS_C of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_COMPARE : integer;
  attribute C_HAS_COMPARE of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_C_TLAST : integer;
  attribute C_HAS_C_TLAST of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_C_TUSER : integer;
  attribute C_HAS_C_TUSER of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_DIVIDE : integer;
  attribute C_HAS_DIVIDE of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_DIVIDE_BY_ZERO : integer;
  attribute C_HAS_DIVIDE_BY_ZERO of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_EXPONENTIAL : integer;
  attribute C_HAS_EXPONENTIAL of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_FIX_TO_FLT : integer;
  attribute C_HAS_FIX_TO_FLT of fix_to_float_floating_point_v7_1_7_viv : entity is 1;
  attribute C_HAS_FLT_TO_FIX : integer;
  attribute C_HAS_FLT_TO_FIX of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_FLT_TO_FLT : integer;
  attribute C_HAS_FLT_TO_FLT of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_FMA : integer;
  attribute C_HAS_FMA of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_FMS : integer;
  attribute C_HAS_FMS of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_INVALID_OP : integer;
  attribute C_HAS_INVALID_OP of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_LOGARITHM : integer;
  attribute C_HAS_LOGARITHM of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_MULTIPLY : integer;
  attribute C_HAS_MULTIPLY of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_OPERATION : integer;
  attribute C_HAS_OPERATION of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_OPERATION_TLAST : integer;
  attribute C_HAS_OPERATION_TLAST of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_OPERATION_TUSER : integer;
  attribute C_HAS_OPERATION_TUSER of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_RECIP : integer;
  attribute C_HAS_RECIP of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_RECIP_SQRT : integer;
  attribute C_HAS_RECIP_SQRT of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_RESULT_TLAST : integer;
  attribute C_HAS_RESULT_TLAST of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_RESULT_TUSER : integer;
  attribute C_HAS_RESULT_TUSER of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_SQRT : integer;
  attribute C_HAS_SQRT of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_SUBTRACT : integer;
  attribute C_HAS_SUBTRACT of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of fix_to_float_floating_point_v7_1_7_viv : entity is 3;
  attribute C_MULT_USAGE : integer;
  attribute C_MULT_USAGE of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_OPERATION_TDATA_WIDTH : integer;
  attribute C_OPERATION_TDATA_WIDTH of fix_to_float_floating_point_v7_1_7_viv : entity is 8;
  attribute C_OPERATION_TUSER_WIDTH : integer;
  attribute C_OPERATION_TUSER_WIDTH of fix_to_float_floating_point_v7_1_7_viv : entity is 1;
  attribute C_OPTIMIZATION : integer;
  attribute C_OPTIMIZATION of fix_to_float_floating_point_v7_1_7_viv : entity is 1;
  attribute C_RATE : integer;
  attribute C_RATE of fix_to_float_floating_point_v7_1_7_viv : entity is 1;
  attribute C_RESULT_FRACTION_WIDTH : integer;
  attribute C_RESULT_FRACTION_WIDTH of fix_to_float_floating_point_v7_1_7_viv : entity is 17;
  attribute C_RESULT_TDATA_WIDTH : integer;
  attribute C_RESULT_TDATA_WIDTH of fix_to_float_floating_point_v7_1_7_viv : entity is 24;
  attribute C_RESULT_TUSER_WIDTH : integer;
  attribute C_RESULT_TUSER_WIDTH of fix_to_float_floating_point_v7_1_7_viv : entity is 1;
  attribute C_RESULT_WIDTH : integer;
  attribute C_RESULT_WIDTH of fix_to_float_floating_point_v7_1_7_viv : entity is 24;
  attribute C_THROTTLE_SCHEME : integer;
  attribute C_THROTTLE_SCHEME of fix_to_float_floating_point_v7_1_7_viv : entity is 3;
  attribute C_TLAST_RESOLUTION : integer;
  attribute C_TLAST_RESOLUTION of fix_to_float_floating_point_v7_1_7_viv : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of fix_to_float_floating_point_v7_1_7_viv : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fix_to_float_floating_point_v7_1_7_viv : entity is "floating_point_v7_1_7_viv";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fix_to_float_floating_point_v7_1_7_viv : entity is "yes";
end fix_to_float_floating_point_v7_1_7_viv;

architecture STRUCTURE of fix_to_float_floating_point_v7_1_7_viv is
  signal \<const0>\ : STD_LOGIC;
begin
  m_axis_result_tlast <= \<const0>\;
  m_axis_result_tuser(0) <= \<const0>\;
  s_axis_a_tready <= \<const0>\;
  s_axis_b_tready <= \<const0>\;
  s_axis_c_tready <= \<const0>\;
  s_axis_operation_tready <= \<const0>\;
\FIX_TO_FLT_OP.SPD.OP\: entity work.fix_to_float_fix_to_flt_conv
     port map (
      aclk => aclk,
      m_axis_result_tdata(23 downto 0) => m_axis_result_tdata(23 downto 0),
      s_axis_a_tdata(60 downto 0) => s_axis_a_tdata(60 downto 0)
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_nd_to_rdy: entity work.fix_to_float_xbip_pipe_v3_0_5_viv
     port map (
      aclk => aclk,
      m_axis_result_tvalid => m_axis_result_tvalid,
      s_axis_a_tvalid => s_axis_a_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fix_to_float_floating_point_v7_1_7 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tready : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_a_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_a_tlast : in STD_LOGIC;
    s_axis_b_tvalid : in STD_LOGIC;
    s_axis_b_tready : out STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_b_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_b_tlast : in STD_LOGIC;
    s_axis_c_tvalid : in STD_LOGIC;
    s_axis_c_tready : out STD_LOGIC;
    s_axis_c_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_c_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_c_tlast : in STD_LOGIC;
    s_axis_operation_tvalid : in STD_LOGIC;
    s_axis_operation_tready : out STD_LOGIC;
    s_axis_operation_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_operation_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_operation_tlast : in STD_LOGIC;
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tready : in STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_result_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_result_tlast : out STD_LOGIC
  );
  attribute C_ACCUM_INPUT_MSB : integer;
  attribute C_ACCUM_INPUT_MSB of fix_to_float_floating_point_v7_1_7 : entity is 32;
  attribute C_ACCUM_LSB : integer;
  attribute C_ACCUM_LSB of fix_to_float_floating_point_v7_1_7 : entity is -31;
  attribute C_ACCUM_MSB : integer;
  attribute C_ACCUM_MSB of fix_to_float_floating_point_v7_1_7 : entity is 32;
  attribute C_A_FRACTION_WIDTH : integer;
  attribute C_A_FRACTION_WIDTH of fix_to_float_floating_point_v7_1_7 : entity is 6;
  attribute C_A_TDATA_WIDTH : integer;
  attribute C_A_TDATA_WIDTH of fix_to_float_floating_point_v7_1_7 : entity is 64;
  attribute C_A_TUSER_WIDTH : integer;
  attribute C_A_TUSER_WIDTH of fix_to_float_floating_point_v7_1_7 : entity is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of fix_to_float_floating_point_v7_1_7 : entity is 61;
  attribute C_BRAM_USAGE : integer;
  attribute C_BRAM_USAGE of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_B_FRACTION_WIDTH : integer;
  attribute C_B_FRACTION_WIDTH of fix_to_float_floating_point_v7_1_7 : entity is 6;
  attribute C_B_TDATA_WIDTH : integer;
  attribute C_B_TDATA_WIDTH of fix_to_float_floating_point_v7_1_7 : entity is 64;
  attribute C_B_TUSER_WIDTH : integer;
  attribute C_B_TUSER_WIDTH of fix_to_float_floating_point_v7_1_7 : entity is 1;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of fix_to_float_floating_point_v7_1_7 : entity is 61;
  attribute C_COMPARE_OPERATION : integer;
  attribute C_COMPARE_OPERATION of fix_to_float_floating_point_v7_1_7 : entity is 8;
  attribute C_C_FRACTION_WIDTH : integer;
  attribute C_C_FRACTION_WIDTH of fix_to_float_floating_point_v7_1_7 : entity is 6;
  attribute C_C_TDATA_WIDTH : integer;
  attribute C_C_TDATA_WIDTH of fix_to_float_floating_point_v7_1_7 : entity is 64;
  attribute C_C_TUSER_WIDTH : integer;
  attribute C_C_TUSER_WIDTH of fix_to_float_floating_point_v7_1_7 : entity is 1;
  attribute C_C_WIDTH : integer;
  attribute C_C_WIDTH of fix_to_float_floating_point_v7_1_7 : entity is 61;
  attribute C_FIXED_DATA_UNSIGNED : integer;
  attribute C_FIXED_DATA_UNSIGNED of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ABSOLUTE : integer;
  attribute C_HAS_ABSOLUTE of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ACCUMULATOR_A : integer;
  attribute C_HAS_ACCUMULATOR_A of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ACCUMULATOR_S : integer;
  attribute C_HAS_ACCUMULATOR_S of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW : integer;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ACCUM_OVERFLOW : integer;
  attribute C_HAS_ACCUM_OVERFLOW of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ACLKEN : integer;
  attribute C_HAS_ACLKEN of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ADD : integer;
  attribute C_HAS_ADD of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ARESETN : integer;
  attribute C_HAS_ARESETN of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_A_TLAST : integer;
  attribute C_HAS_A_TLAST of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_A_TUSER : integer;
  attribute C_HAS_A_TUSER of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_B : integer;
  attribute C_HAS_B of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_B_TLAST : integer;
  attribute C_HAS_B_TLAST of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_B_TUSER : integer;
  attribute C_HAS_B_TUSER of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_C : integer;
  attribute C_HAS_C of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_COMPARE : integer;
  attribute C_HAS_COMPARE of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_C_TLAST : integer;
  attribute C_HAS_C_TLAST of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_C_TUSER : integer;
  attribute C_HAS_C_TUSER of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_DIVIDE : integer;
  attribute C_HAS_DIVIDE of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_DIVIDE_BY_ZERO : integer;
  attribute C_HAS_DIVIDE_BY_ZERO of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_EXPONENTIAL : integer;
  attribute C_HAS_EXPONENTIAL of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_FIX_TO_FLT : integer;
  attribute C_HAS_FIX_TO_FLT of fix_to_float_floating_point_v7_1_7 : entity is 1;
  attribute C_HAS_FLT_TO_FIX : integer;
  attribute C_HAS_FLT_TO_FIX of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_FLT_TO_FLT : integer;
  attribute C_HAS_FLT_TO_FLT of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_FMA : integer;
  attribute C_HAS_FMA of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_FMS : integer;
  attribute C_HAS_FMS of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_INVALID_OP : integer;
  attribute C_HAS_INVALID_OP of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_LOGARITHM : integer;
  attribute C_HAS_LOGARITHM of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_MULTIPLY : integer;
  attribute C_HAS_MULTIPLY of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_OPERATION : integer;
  attribute C_HAS_OPERATION of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_OPERATION_TLAST : integer;
  attribute C_HAS_OPERATION_TLAST of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_OPERATION_TUSER : integer;
  attribute C_HAS_OPERATION_TUSER of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_RECIP : integer;
  attribute C_HAS_RECIP of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_RECIP_SQRT : integer;
  attribute C_HAS_RECIP_SQRT of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_RESULT_TLAST : integer;
  attribute C_HAS_RESULT_TLAST of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_RESULT_TUSER : integer;
  attribute C_HAS_RESULT_TUSER of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_SQRT : integer;
  attribute C_HAS_SQRT of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_SUBTRACT : integer;
  attribute C_HAS_SUBTRACT of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of fix_to_float_floating_point_v7_1_7 : entity is 3;
  attribute C_MULT_USAGE : integer;
  attribute C_MULT_USAGE of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_OPERATION_TDATA_WIDTH : integer;
  attribute C_OPERATION_TDATA_WIDTH of fix_to_float_floating_point_v7_1_7 : entity is 8;
  attribute C_OPERATION_TUSER_WIDTH : integer;
  attribute C_OPERATION_TUSER_WIDTH of fix_to_float_floating_point_v7_1_7 : entity is 1;
  attribute C_OPTIMIZATION : integer;
  attribute C_OPTIMIZATION of fix_to_float_floating_point_v7_1_7 : entity is 1;
  attribute C_RATE : integer;
  attribute C_RATE of fix_to_float_floating_point_v7_1_7 : entity is 1;
  attribute C_RESULT_FRACTION_WIDTH : integer;
  attribute C_RESULT_FRACTION_WIDTH of fix_to_float_floating_point_v7_1_7 : entity is 17;
  attribute C_RESULT_TDATA_WIDTH : integer;
  attribute C_RESULT_TDATA_WIDTH of fix_to_float_floating_point_v7_1_7 : entity is 24;
  attribute C_RESULT_TUSER_WIDTH : integer;
  attribute C_RESULT_TUSER_WIDTH of fix_to_float_floating_point_v7_1_7 : entity is 1;
  attribute C_RESULT_WIDTH : integer;
  attribute C_RESULT_WIDTH of fix_to_float_floating_point_v7_1_7 : entity is 24;
  attribute C_THROTTLE_SCHEME : integer;
  attribute C_THROTTLE_SCHEME of fix_to_float_floating_point_v7_1_7 : entity is 3;
  attribute C_TLAST_RESOLUTION : integer;
  attribute C_TLAST_RESOLUTION of fix_to_float_floating_point_v7_1_7 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of fix_to_float_floating_point_v7_1_7 : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fix_to_float_floating_point_v7_1_7 : entity is "floating_point_v7_1_7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fix_to_float_floating_point_v7_1_7 : entity is "yes";
end fix_to_float_floating_point_v7_1_7;

architecture STRUCTURE of fix_to_float_floating_point_v7_1_7 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal NLW_i_synth_m_axis_result_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_s_axis_a_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_s_axis_b_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_s_axis_c_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_s_axis_operation_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_m_axis_result_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_ACCUM_INPUT_MSB of i_synth : label is 32;
  attribute C_ACCUM_LSB of i_synth : label is -31;
  attribute C_ACCUM_MSB of i_synth : label is 32;
  attribute C_A_FRACTION_WIDTH of i_synth : label is 6;
  attribute C_A_TDATA_WIDTH of i_synth : label is 64;
  attribute C_A_TUSER_WIDTH of i_synth : label is 1;
  attribute C_A_WIDTH of i_synth : label is 61;
  attribute C_BRAM_USAGE of i_synth : label is 0;
  attribute C_B_FRACTION_WIDTH of i_synth : label is 6;
  attribute C_B_TDATA_WIDTH of i_synth : label is 64;
  attribute C_B_TUSER_WIDTH of i_synth : label is 1;
  attribute C_B_WIDTH of i_synth : label is 61;
  attribute C_COMPARE_OPERATION of i_synth : label is 8;
  attribute C_C_FRACTION_WIDTH of i_synth : label is 6;
  attribute C_C_TDATA_WIDTH of i_synth : label is 64;
  attribute C_C_TUSER_WIDTH of i_synth : label is 1;
  attribute C_C_WIDTH of i_synth : label is 61;
  attribute C_FIXED_DATA_UNSIGNED of i_synth : label is 0;
  attribute C_HAS_ABSOLUTE of i_synth : label is 0;
  attribute C_HAS_ACCUMULATOR_A of i_synth : label is 0;
  attribute C_HAS_ACCUMULATOR_S of i_synth : label is 0;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW of i_synth : label is 0;
  attribute C_HAS_ACCUM_OVERFLOW of i_synth : label is 0;
  attribute C_HAS_ACLKEN of i_synth : label is 0;
  attribute C_HAS_ADD of i_synth : label is 0;
  attribute C_HAS_ARESETN of i_synth : label is 0;
  attribute C_HAS_A_TLAST of i_synth : label is 0;
  attribute C_HAS_A_TUSER of i_synth : label is 0;
  attribute C_HAS_B of i_synth : label is 0;
  attribute C_HAS_B_TLAST of i_synth : label is 0;
  attribute C_HAS_B_TUSER of i_synth : label is 0;
  attribute C_HAS_C of i_synth : label is 0;
  attribute C_HAS_COMPARE of i_synth : label is 0;
  attribute C_HAS_C_TLAST of i_synth : label is 0;
  attribute C_HAS_C_TUSER of i_synth : label is 0;
  attribute C_HAS_DIVIDE of i_synth : label is 0;
  attribute C_HAS_DIVIDE_BY_ZERO of i_synth : label is 0;
  attribute C_HAS_EXPONENTIAL of i_synth : label is 0;
  attribute C_HAS_FIX_TO_FLT of i_synth : label is 1;
  attribute C_HAS_FLT_TO_FIX of i_synth : label is 0;
  attribute C_HAS_FLT_TO_FLT of i_synth : label is 0;
  attribute C_HAS_FMA of i_synth : label is 0;
  attribute C_HAS_FMS of i_synth : label is 0;
  attribute C_HAS_INVALID_OP of i_synth : label is 0;
  attribute C_HAS_LOGARITHM of i_synth : label is 0;
  attribute C_HAS_MULTIPLY of i_synth : label is 0;
  attribute C_HAS_OPERATION of i_synth : label is 0;
  attribute C_HAS_OPERATION_TLAST of i_synth : label is 0;
  attribute C_HAS_OPERATION_TUSER of i_synth : label is 0;
  attribute C_HAS_OVERFLOW of i_synth : label is 0;
  attribute C_HAS_RECIP of i_synth : label is 0;
  attribute C_HAS_RECIP_SQRT of i_synth : label is 0;
  attribute C_HAS_RESULT_TLAST of i_synth : label is 0;
  attribute C_HAS_RESULT_TUSER of i_synth : label is 0;
  attribute C_HAS_SQRT of i_synth : label is 0;
  attribute C_HAS_SUBTRACT of i_synth : label is 0;
  attribute C_HAS_UNDERFLOW of i_synth : label is 0;
  attribute C_LATENCY of i_synth : label is 3;
  attribute C_MULT_USAGE of i_synth : label is 0;
  attribute C_OPERATION_TDATA_WIDTH of i_synth : label is 8;
  attribute C_OPERATION_TUSER_WIDTH of i_synth : label is 1;
  attribute C_OPTIMIZATION of i_synth : label is 1;
  attribute C_RATE of i_synth : label is 1;
  attribute C_RESULT_FRACTION_WIDTH of i_synth : label is 17;
  attribute C_RESULT_TDATA_WIDTH of i_synth : label is 24;
  attribute C_RESULT_TUSER_WIDTH of i_synth : label is 1;
  attribute C_RESULT_WIDTH of i_synth : label is 24;
  attribute C_THROTTLE_SCHEME of i_synth : label is 3;
  attribute C_TLAST_RESOLUTION of i_synth : label is 0;
  attribute C_XDEVICEFAMILY of i_synth : label is "zynq";
  attribute downgradeipidentifiedwarnings of i_synth : label is "yes";
begin
  m_axis_result_tlast <= \<const0>\;
  m_axis_result_tuser(0) <= \<const0>\;
  s_axis_a_tready <= \<const1>\;
  s_axis_b_tready <= \<const1>\;
  s_axis_c_tready <= \<const1>\;
  s_axis_operation_tready <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
i_synth: entity work.fix_to_float_floating_point_v7_1_7_viv
     port map (
      aclk => aclk,
      aclken => '0',
      aresetn => '0',
      m_axis_result_tdata(23 downto 0) => m_axis_result_tdata(23 downto 0),
      m_axis_result_tlast => NLW_i_synth_m_axis_result_tlast_UNCONNECTED,
      m_axis_result_tready => '0',
      m_axis_result_tuser(0) => NLW_i_synth_m_axis_result_tuser_UNCONNECTED(0),
      m_axis_result_tvalid => m_axis_result_tvalid,
      s_axis_a_tdata(63 downto 61) => B"000",
      s_axis_a_tdata(60 downto 0) => s_axis_a_tdata(60 downto 0),
      s_axis_a_tlast => '0',
      s_axis_a_tready => NLW_i_synth_s_axis_a_tready_UNCONNECTED,
      s_axis_a_tuser(0) => '0',
      s_axis_a_tvalid => s_axis_a_tvalid,
      s_axis_b_tdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axis_b_tlast => '0',
      s_axis_b_tready => NLW_i_synth_s_axis_b_tready_UNCONNECTED,
      s_axis_b_tuser(0) => '0',
      s_axis_b_tvalid => '0',
      s_axis_c_tdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axis_c_tlast => '0',
      s_axis_c_tready => NLW_i_synth_s_axis_c_tready_UNCONNECTED,
      s_axis_c_tuser(0) => '0',
      s_axis_c_tvalid => '0',
      s_axis_operation_tdata(7 downto 0) => B"00000000",
      s_axis_operation_tlast => '0',
      s_axis_operation_tready => NLW_i_synth_s_axis_operation_tready_UNCONNECTED,
      s_axis_operation_tuser(0) => '0',
      s_axis_operation_tvalid => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fix_to_float is
  port (
    aclk : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fix_to_float : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fix_to_float : entity is "fix_to_float,floating_point_v7_1_7,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fix_to_float : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fix_to_float : entity is "floating_point_v7_1_7,Vivado 2018.3";
end fix_to_float;

architecture STRUCTURE of fix_to_float is
  signal NLW_U0_m_axis_result_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_a_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_b_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_c_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_operation_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_result_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_ACCUM_INPUT_MSB : integer;
  attribute C_ACCUM_INPUT_MSB of U0 : label is 32;
  attribute C_ACCUM_LSB : integer;
  attribute C_ACCUM_LSB of U0 : label is -31;
  attribute C_ACCUM_MSB : integer;
  attribute C_ACCUM_MSB of U0 : label is 32;
  attribute C_A_FRACTION_WIDTH : integer;
  attribute C_A_FRACTION_WIDTH of U0 : label is 6;
  attribute C_A_TDATA_WIDTH : integer;
  attribute C_A_TDATA_WIDTH of U0 : label is 64;
  attribute C_A_TUSER_WIDTH : integer;
  attribute C_A_TUSER_WIDTH of U0 : label is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 61;
  attribute C_BRAM_USAGE : integer;
  attribute C_BRAM_USAGE of U0 : label is 0;
  attribute C_B_FRACTION_WIDTH : integer;
  attribute C_B_FRACTION_WIDTH of U0 : label is 6;
  attribute C_B_TDATA_WIDTH : integer;
  attribute C_B_TDATA_WIDTH of U0 : label is 64;
  attribute C_B_TUSER_WIDTH : integer;
  attribute C_B_TUSER_WIDTH of U0 : label is 1;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 61;
  attribute C_COMPARE_OPERATION : integer;
  attribute C_COMPARE_OPERATION of U0 : label is 8;
  attribute C_C_FRACTION_WIDTH : integer;
  attribute C_C_FRACTION_WIDTH of U0 : label is 6;
  attribute C_C_TDATA_WIDTH : integer;
  attribute C_C_TDATA_WIDTH of U0 : label is 64;
  attribute C_C_TUSER_WIDTH : integer;
  attribute C_C_TUSER_WIDTH of U0 : label is 1;
  attribute C_C_WIDTH : integer;
  attribute C_C_WIDTH of U0 : label is 61;
  attribute C_FIXED_DATA_UNSIGNED : integer;
  attribute C_FIXED_DATA_UNSIGNED of U0 : label is 0;
  attribute C_HAS_ABSOLUTE : integer;
  attribute C_HAS_ABSOLUTE of U0 : label is 0;
  attribute C_HAS_ACCUMULATOR_A : integer;
  attribute C_HAS_ACCUMULATOR_A of U0 : label is 0;
  attribute C_HAS_ACCUMULATOR_S : integer;
  attribute C_HAS_ACCUMULATOR_S of U0 : label is 0;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW : integer;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW of U0 : label is 0;
  attribute C_HAS_ACCUM_OVERFLOW : integer;
  attribute C_HAS_ACCUM_OVERFLOW of U0 : label is 0;
  attribute C_HAS_ACLKEN : integer;
  attribute C_HAS_ACLKEN of U0 : label is 0;
  attribute C_HAS_ADD : integer;
  attribute C_HAS_ADD of U0 : label is 0;
  attribute C_HAS_ARESETN : integer;
  attribute C_HAS_ARESETN of U0 : label is 0;
  attribute C_HAS_A_TLAST : integer;
  attribute C_HAS_A_TLAST of U0 : label is 0;
  attribute C_HAS_A_TUSER : integer;
  attribute C_HAS_A_TUSER of U0 : label is 0;
  attribute C_HAS_B : integer;
  attribute C_HAS_B of U0 : label is 0;
  attribute C_HAS_B_TLAST : integer;
  attribute C_HAS_B_TLAST of U0 : label is 0;
  attribute C_HAS_B_TUSER : integer;
  attribute C_HAS_B_TUSER of U0 : label is 0;
  attribute C_HAS_C : integer;
  attribute C_HAS_C of U0 : label is 0;
  attribute C_HAS_COMPARE : integer;
  attribute C_HAS_COMPARE of U0 : label is 0;
  attribute C_HAS_C_TLAST : integer;
  attribute C_HAS_C_TLAST of U0 : label is 0;
  attribute C_HAS_C_TUSER : integer;
  attribute C_HAS_C_TUSER of U0 : label is 0;
  attribute C_HAS_DIVIDE : integer;
  attribute C_HAS_DIVIDE of U0 : label is 0;
  attribute C_HAS_DIVIDE_BY_ZERO : integer;
  attribute C_HAS_DIVIDE_BY_ZERO of U0 : label is 0;
  attribute C_HAS_EXPONENTIAL : integer;
  attribute C_HAS_EXPONENTIAL of U0 : label is 0;
  attribute C_HAS_FIX_TO_FLT : integer;
  attribute C_HAS_FIX_TO_FLT of U0 : label is 1;
  attribute C_HAS_FLT_TO_FIX : integer;
  attribute C_HAS_FLT_TO_FIX of U0 : label is 0;
  attribute C_HAS_FLT_TO_FLT : integer;
  attribute C_HAS_FLT_TO_FLT of U0 : label is 0;
  attribute C_HAS_FMA : integer;
  attribute C_HAS_FMA of U0 : label is 0;
  attribute C_HAS_FMS : integer;
  attribute C_HAS_FMS of U0 : label is 0;
  attribute C_HAS_INVALID_OP : integer;
  attribute C_HAS_INVALID_OP of U0 : label is 0;
  attribute C_HAS_LOGARITHM : integer;
  attribute C_HAS_LOGARITHM of U0 : label is 0;
  attribute C_HAS_MULTIPLY : integer;
  attribute C_HAS_MULTIPLY of U0 : label is 0;
  attribute C_HAS_OPERATION : integer;
  attribute C_HAS_OPERATION of U0 : label is 0;
  attribute C_HAS_OPERATION_TLAST : integer;
  attribute C_HAS_OPERATION_TLAST of U0 : label is 0;
  attribute C_HAS_OPERATION_TUSER : integer;
  attribute C_HAS_OPERATION_TUSER of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_RECIP : integer;
  attribute C_HAS_RECIP of U0 : label is 0;
  attribute C_HAS_RECIP_SQRT : integer;
  attribute C_HAS_RECIP_SQRT of U0 : label is 0;
  attribute C_HAS_RESULT_TLAST : integer;
  attribute C_HAS_RESULT_TLAST of U0 : label is 0;
  attribute C_HAS_RESULT_TUSER : integer;
  attribute C_HAS_RESULT_TUSER of U0 : label is 0;
  attribute C_HAS_SQRT : integer;
  attribute C_HAS_SQRT of U0 : label is 0;
  attribute C_HAS_SUBTRACT : integer;
  attribute C_HAS_SUBTRACT of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 3;
  attribute C_MULT_USAGE : integer;
  attribute C_MULT_USAGE of U0 : label is 0;
  attribute C_OPERATION_TDATA_WIDTH : integer;
  attribute C_OPERATION_TDATA_WIDTH of U0 : label is 8;
  attribute C_OPERATION_TUSER_WIDTH : integer;
  attribute C_OPERATION_TUSER_WIDTH of U0 : label is 1;
  attribute C_OPTIMIZATION : integer;
  attribute C_OPTIMIZATION of U0 : label is 1;
  attribute C_RATE : integer;
  attribute C_RATE of U0 : label is 1;
  attribute C_RESULT_FRACTION_WIDTH : integer;
  attribute C_RESULT_FRACTION_WIDTH of U0 : label is 17;
  attribute C_RESULT_TDATA_WIDTH : integer;
  attribute C_RESULT_TDATA_WIDTH of U0 : label is 24;
  attribute C_RESULT_TUSER_WIDTH : integer;
  attribute C_RESULT_TUSER_WIDTH of U0 : label is 1;
  attribute C_RESULT_WIDTH : integer;
  attribute C_RESULT_WIDTH of U0 : label is 24;
  attribute C_THROTTLE_SCHEME : integer;
  attribute C_THROTTLE_SCHEME of U0 : label is 3;
  attribute C_TLAST_RESOLUTION : integer;
  attribute C_TLAST_RESOLUTION of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_OPERATION:M_AXIS_RESULT:S_AXIS_C:S_AXIS_B:S_AXIS_A, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of m_axis_result_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TVALID";
  attribute x_interface_parameter of m_axis_result_tvalid : signal is "XIL_INTERFACENAME M_AXIS_RESULT, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_a_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID";
  attribute x_interface_parameter of s_axis_a_tvalid : signal is "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_result_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA";
  attribute x_interface_info of s_axis_a_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA";
begin
U0: entity work.fix_to_float_floating_point_v7_1_7
     port map (
      aclk => aclk,
      aclken => '1',
      aresetn => '1',
      m_axis_result_tdata(23 downto 0) => m_axis_result_tdata(23 downto 0),
      m_axis_result_tlast => NLW_U0_m_axis_result_tlast_UNCONNECTED,
      m_axis_result_tready => '0',
      m_axis_result_tuser(0) => NLW_U0_m_axis_result_tuser_UNCONNECTED(0),
      m_axis_result_tvalid => m_axis_result_tvalid,
      s_axis_a_tdata(63 downto 0) => s_axis_a_tdata(63 downto 0),
      s_axis_a_tlast => '0',
      s_axis_a_tready => NLW_U0_s_axis_a_tready_UNCONNECTED,
      s_axis_a_tuser(0) => '0',
      s_axis_a_tvalid => s_axis_a_tvalid,
      s_axis_b_tdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axis_b_tlast => '0',
      s_axis_b_tready => NLW_U0_s_axis_b_tready_UNCONNECTED,
      s_axis_b_tuser(0) => '0',
      s_axis_b_tvalid => '0',
      s_axis_c_tdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axis_c_tlast => '0',
      s_axis_c_tready => NLW_U0_s_axis_c_tready_UNCONNECTED,
      s_axis_c_tuser(0) => '0',
      s_axis_c_tvalid => '0',
      s_axis_operation_tdata(7 downto 0) => B"00000000",
      s_axis_operation_tlast => '0',
      s_axis_operation_tready => NLW_U0_s_axis_operation_tready_UNCONNECTED,
      s_axis_operation_tuser(0) => '0',
      s_axis_operation_tvalid => '0'
    );
end STRUCTURE;
