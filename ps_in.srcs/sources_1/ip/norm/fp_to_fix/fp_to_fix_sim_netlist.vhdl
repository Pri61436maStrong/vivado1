-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Aug 12 16:06:09 2024
-- Host        : aic-ts running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/norm/fp_to_fix/fp_to_fix_sim_netlist.vhdl
-- Design      : fp_to_fix
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z100ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp_to_fix_carry_chain__parameterized0\ is
  port (
    \zero_det_unreg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 19 downto 0 );
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0\ : in STD_LOGIC;
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_0\ : in STD_LOGIC;
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_0\ : in STD_LOGIC;
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_1\ : in STD_LOGIC;
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_2\ : in STD_LOGIC;
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_3\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp_to_fix_carry_chain__parameterized0\ : entity is "carry_chain";
end \fp_to_fix_carry_chain__parameterized0\;

architecture STRUCTURE of \fp_to_fix_carry_chain__parameterized0\ is
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_4_n_0\ : STD_LOGIC;
  signal \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_7_n_0\ : STD_LOGIC;
  signal chunk_det : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal zero_det_in : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
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
\CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => zero_det_in(4 downto 1),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1_n_0\,
      S(2 downto 1) => chunk_det(2 downto 1),
      S(0) => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0_n_0\
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_a_tdata(3),
      I1 => s_axis_a_tdata(1),
      I2 => s_axis_a_tdata(0),
      I3 => s_axis_a_tdata(2),
      O => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0_n_0\
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_a_tdata(7),
      I1 => s_axis_a_tdata(6),
      I2 => s_axis_a_tdata(4),
      I3 => s_axis_a_tdata(5),
      O => chunk_det(1)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_a_tdata(8),
      I1 => s_axis_a_tdata(9),
      I2 => s_axis_a_tdata(11),
      I3 => s_axis_a_tdata(10),
      O => chunk_det(2)
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_a_tdata(12),
      I1 => s_axis_a_tdata(13),
      I2 => s_axis_a_tdata(15),
      I3 => s_axis_a_tdata(14),
      O => \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => zero_det_in(4),
      CO(3 downto 1) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => zero_det_in(5),
      CYINIT => '0',
      DI(3 downto 1) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => '0'
    );
\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAAABABFAAAABF"
    )
        port map (
      I0 => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_4_n_0\,
      I1 => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0\,
      I2 => s_axis_a_tdata(19),
      I3 => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_0\,
      I4 => s_axis_a_tdata(18),
      I5 => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_7_n_0\,
      O => \zero_det_unreg[1]_0\(0)
    );
\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCE22222BBFFFFFF"
    )
        port map (
      I0 => zero_det_in(5),
      I1 => s_axis_a_tdata(18),
      I2 => zero_det_in(4),
      I3 => s_axis_a_tdata(16),
      I4 => s_axis_a_tdata(17),
      I5 => s_axis_a_tdata(19),
      O => \zero_det_unreg[1]_0\(1)
    );
\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800080008F008000"
    )
        port map (
      I0 => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_0\,
      I1 => zero_det_in(1),
      I2 => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_1\,
      I3 => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_2\,
      I4 => zero_det_in(3),
      I5 => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_3\,
      O => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_4_n_0\
    );
\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5FFD5DFD5FDD5D"
    )
        port map (
      I0 => zero_det_in(2),
      I1 => s_axis_a_tdata(8),
      I2 => s_axis_a_tdata(17),
      I3 => s_axis_a_tdata(16),
      I4 => s_axis_a_tdata(9),
      I5 => s_axis_a_tdata(10),
      O => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp_to_fix_carry_chain__parameterized1\ is
  port (
    s_axis_a_tdata_17_sp_1 : out STD_LOGIC;
    \s_axis_a_tdata[23]\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_0\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_1\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_2\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_3\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_4\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_5\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_6\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_7\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_8\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_9\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_10\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_11\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_12\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_13\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_14\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_15\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_16\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_17\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_18\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_19\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_20\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_21\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_22\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_23\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_24\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_25\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_26\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_27\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_28\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_29\ : out STD_LOGIC;
    \s_axis_a_tdata[23]_30\ : out STD_LOGIC;
    \s_axis_a_tdata[17]_0\ : out STD_LOGIC;
    \s_axis_a_tdata[17]_1\ : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 21 downto 0 );
    \result_i_reg[30]\ : in STD_LOGIC;
    \result_i_reg[31]\ : in STD_LOGIC;
    \result_i_reg[30]_0\ : in STD_LOGIC;
    \result_i_reg[31]_0\ : in STD_LOGIC;
    \result_i_reg[31]_1\ : in STD_LOGIC;
    \result_i_reg[31]_2\ : in STD_LOGIC;
    round_ip_pza : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp_to_fix_carry_chain__parameterized1\ : entity is "carry_chain";
end \fp_to_fix_carry_chain__parameterized1\;

architecture STRUCTURE of \fp_to_fix_carry_chain__parameterized1\ is
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_10_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_11_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_12_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_13_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_5_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_6_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_7_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_8_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_9_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[10].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[11].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[12].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[13].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[14].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[15].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[16].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[16].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[16].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[16].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_4_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_5_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[17].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_4_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[18].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_4_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[19].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[20].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[20].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[20].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[20].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_4_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[21].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_4_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[22].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[23].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[23].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[23].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[24].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[24].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[24].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[25].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[25].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[25].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[26].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[26].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[26].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[27].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[27].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[27].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[28].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[28].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[28].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[29].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[29].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[29].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[30].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[30].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[30].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[31].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_4_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[8].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[9].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal neg_mant_pza : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \result_i[30]_i_5_n_0\ : STD_LOGIC;
  signal round_op_pr : STD_LOGIC_VECTOR ( 32 downto 1 );
  signal \^s_axis_a_tdata[17]_0\ : STD_LOGIC;
  signal s_axis_a_tdata_17_sn_1 : STD_LOGIC;
  signal \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6\ : label is "soft_lutpair5";
  attribute OPT_MODIFIED of \CHAIN_GEN[20].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[20].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[20].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \CHAIN_GEN[20].C_MUX.CARRY_MUX_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_4\ : label is "soft_lutpair5";
  attribute OPT_MODIFIED of \CHAIN_GEN[24].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[24].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[24].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[28].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[28].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[28].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \CHAIN_GEN[28].C_MUX.CARRY_MUX_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \CHAIN_GEN[29].C_MUX.CARRY_MUX_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \CHAIN_GEN[30].C_MUX.CARRY_MUX_i_2\ : label is "soft_lutpair4";
  attribute OPT_MODIFIED of \CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
begin
  \s_axis_a_tdata[17]_0\ <= \^s_axis_a_tdata[17]_0\;
  s_axis_a_tdata_17_sp_1 <= s_axis_a_tdata_17_sn_1;
\CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => round_op_pr(3 downto 1),
      O(0) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(0),
      S(3) => \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0_n_0\,
      S(2) => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0_n_0\,
      S(1) => neg_mant_pza(0),
      S(0) => round_ip_pza(0)
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACCCCFFFF0000AAA"
    )
        port map (
      I0 => s_axis_a_tdata(0),
      I1 => s_axis_a_tdata(8),
      I2 => s_axis_a_tdata(17),
      I3 => s_axis_a_tdata(18),
      I4 => s_axis_a_tdata(19),
      I5 => s_axis_a_tdata(20),
      O => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_10_n_0\
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3EEE022280008000"
    )
        port map (
      I0 => s_axis_a_tdata(10),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(2),
      I5 => s_axis_a_tdata(20),
      O => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_11_n_0\
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3EEE022280008000"
    )
        port map (
      I0 => s_axis_a_tdata(14),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(6),
      I5 => s_axis_a_tdata(20),
      O => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_12_n_0\
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3EEE022280008000"
    )
        port map (
      I0 => s_axis_a_tdata(9),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(1),
      I5 => s_axis_a_tdata(20),
      O => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_13_n_0\
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_5_n_0\,
      I1 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_6_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_7_n_0\,
      I4 => s_axis_a_tdata(18),
      I5 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_8_n_0\,
      O => s_axis_a_tdata_17_sn_1
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_9_n_0\,
      I1 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_10_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_11_n_0\,
      I4 => s_axis_a_tdata(18),
      I5 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_12_n_0\,
      O => \^s_axis_a_tdata[17]_0\
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_7_n_0\,
      I1 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_8_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_13_n_0\,
      I4 => s_axis_a_tdata(18),
      I5 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_5_n_0\,
      O => \s_axis_a_tdata[17]_1\
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3EEE022280008000"
    )
        port map (
      I0 => s_axis_a_tdata(13),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(5),
      I5 => s_axis_a_tdata(20),
      O => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_5_n_0\
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BCCC800002220222"
    )
        port map (
      I0 => s_axis_a_tdata(1),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(9),
      I5 => s_axis_a_tdata(20),
      O => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_6_n_0\
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3EEE022280008000"
    )
        port map (
      I0 => s_axis_a_tdata(11),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(3),
      I5 => s_axis_a_tdata(20),
      O => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_7_n_0\
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3EEE022280008000"
    )
        port map (
      I0 => s_axis_a_tdata(15),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(7),
      I5 => s_axis_a_tdata(20),
      O => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_8_n_0\
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3EEE022280008000"
    )
        port map (
      I0 => s_axis_a_tdata(12),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(4),
      I5 => s_axis_a_tdata(20),
      O => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_9_n_0\
    );
\CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[10].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3_n_0\,
      I1 => \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_3_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_3_n_0\,
      I4 => s_axis_a_tdata(18),
      I5 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[10].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFC1117FFFFDDD"
    )
        port map (
      I0 => s_axis_a_tdata(10),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(20),
      I5 => s_axis_a_tdata(2),
      O => \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_3_n_0\
    );
\CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[11].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3_n_0\,
      I1 => \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_3_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_3_n_0\,
      I4 => s_axis_a_tdata(18),
      I5 => \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[11].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFC1117FFFFDDD"
    )
        port map (
      I0 => s_axis_a_tdata(11),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(20),
      I5 => s_axis_a_tdata(3),
      O => \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_3_n_0\
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
      O(3 downto 0) => round_op_pr(15 downto 12),
      S(3) => \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1_n_0\,
      S(2) => \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1_n_0\,
      S(1) => \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1_n_0\,
      S(0) => \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[12].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_3_n_0\,
      I1 => \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_3_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3_n_0\,
      I4 => s_axis_a_tdata(18),
      I5 => \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[12].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7FFFC111FDDD"
    )
        port map (
      I0 => s_axis_a_tdata(12),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(4),
      I5 => s_axis_a_tdata(20),
      O => \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_3_n_0\
    );
\CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[13].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_3_n_0\,
      I1 => \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_3_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3_n_0\,
      I4 => s_axis_a_tdata(18),
      I5 => \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[13].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7FFFC111FDDD"
    )
        port map (
      I0 => s_axis_a_tdata(13),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(5),
      I5 => s_axis_a_tdata(20),
      O => \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_3_n_0\
    );
\CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[14].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_3_n_0\,
      I1 => \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_3_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_3_n_0\,
      I4 => s_axis_a_tdata(18),
      I5 => \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[14].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7FFFC111FDDD"
    )
        port map (
      I0 => s_axis_a_tdata(14),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(6),
      I5 => s_axis_a_tdata(20),
      O => \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_3_n_0\
    );
\CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[15].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_3_n_0\,
      I1 => \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_3_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_3_n_0\,
      I4 => s_axis_a_tdata(18),
      I5 => \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[15].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7FFFC111FDDD"
    )
        port map (
      I0 => s_axis_a_tdata(15),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(7),
      I5 => s_axis_a_tdata(20),
      O => \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_3_n_0\
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
      O(3 downto 0) => round_op_pr(19 downto 16),
      S(3) => \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_1_n_0\,
      S(2) => \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_1_n_0\,
      S(1) => \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_1_n_0\,
      S(0) => \CHAIN_GEN[16].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[16].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA9595555A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[16].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[16].C_MUX.CARRY_MUX_i_3_n_0\,
      I4 => s_axis_a_tdata(16),
      I5 => \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[16].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[16].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F7FFFFF4F7F0000"
    )
        port map (
      I0 => s_axis_a_tdata(10),
      I1 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0\,
      I2 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0\,
      I3 => s_axis_a_tdata(2),
      I4 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0\,
      I5 => \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[16].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[16].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50FF30FF50FF3FFF"
    )
        port map (
      I0 => s_axis_a_tdata(12),
      I1 => s_axis_a_tdata(4),
      I2 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0\,
      I3 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0\,
      I4 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0\,
      I5 => s_axis_a_tdata(8),
      O => \CHAIN_GEN[16].C_MUX.CARRY_MUX_i_3_n_0\
    );
\CHAIN_GEN[17].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA9595555A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_3_n_0\,
      I4 => s_axis_a_tdata(16),
      I5 => \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_4_n_0\,
      O => \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[17].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F7FFFFF4F7F0000"
    )
        port map (
      I0 => s_axis_a_tdata(11),
      I1 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0\,
      I2 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0\,
      I3 => s_axis_a_tdata(3),
      I4 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0\,
      I5 => \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[17].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F30FFFF5F3FFFFF"
    )
        port map (
      I0 => s_axis_a_tdata(13),
      I1 => s_axis_a_tdata(5),
      I2 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0\,
      I3 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0\,
      I4 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0\,
      I5 => s_axis_a_tdata(9),
      O => \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_3_n_0\
    );
\CHAIN_GEN[17].C_MUX.CARRY_MUX_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_3_n_0\,
      I1 => \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_5_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_3_n_0\,
      I4 => s_axis_a_tdata(18),
      I5 => \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_4_n_0\
    );
\CHAIN_GEN[17].C_MUX.CARRY_MUX_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA7EEE"
    )
        port map (
      I0 => s_axis_a_tdata(20),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(8),
      O => \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_5_n_0\
    );
\CHAIN_GEN[18].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA9595555A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[16].C_MUX.CARRY_MUX_i_3_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_2_n_0\,
      I4 => s_axis_a_tdata(16),
      I5 => \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[18].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F305F3FFFFFFFFF"
    )
        port map (
      I0 => s_axis_a_tdata(14),
      I1 => s_axis_a_tdata(6),
      I2 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0\,
      I3 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0\,
      I4 => s_axis_a_tdata(10),
      I5 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0\,
      O => \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[18].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \CHAIN_GEN[13].C_MUX.CARRY_MUX_i_3_n_0\,
      I1 => \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_4_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_3_n_0\,
      I4 => s_axis_a_tdata(18),
      I5 => \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_3_n_0\
    );
\CHAIN_GEN[18].C_MUX.CARRY_MUX_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EABFFFFF"
    )
        port map (
      I0 => s_axis_a_tdata(20),
      I1 => s_axis_a_tdata(17),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(19),
      I4 => s_axis_a_tdata(9),
      O => \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_4_n_0\
    );
\CHAIN_GEN[19].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA9595555A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_3_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_2_n_0\,
      I4 => s_axis_a_tdata(16),
      I5 => \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[19].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F305F3FFFFFFFFF"
    )
        port map (
      I0 => s_axis_a_tdata(15),
      I1 => s_axis_a_tdata(7),
      I2 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0\,
      I3 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0\,
      I4 => s_axis_a_tdata(11),
      I5 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0\,
      O => \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[19].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_3_n_0\,
      I1 => \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_4_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[12].C_MUX.CARRY_MUX_i_3_n_0\,
      I4 => s_axis_a_tdata(18),
      I5 => \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_5_n_0\,
      O => \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_3_n_0\
    );
\CHAIN_GEN[19].C_MUX.CARRY_MUX_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFD777"
    )
        port map (
      I0 => s_axis_a_tdata(10),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(20),
      O => \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_4_n_0\
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555556A6AAAA56A6"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_3_n_0\,
      I4 => s_axis_a_tdata(16),
      I5 => \^s_axis_a_tdata[17]_0\,
      O => neg_mant_pza(0)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => s_axis_a_tdata(11),
      I1 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0\,
      I2 => s_axis_a_tdata(3),
      I3 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0\,
      I4 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0\,
      I5 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_8_n_0\,
      O => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_5_n_0\,
      I1 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0\,
      I2 => s_axis_a_tdata(1),
      I3 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0\,
      I4 => s_axis_a_tdata(9),
      I5 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0\,
      O => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_3_n_0\
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => s_axis_a_tdata(19),
      I1 => s_axis_a_tdata(18),
      I2 => s_axis_a_tdata(17),
      O => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0\
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9555"
    )
        port map (
      I0 => s_axis_a_tdata(20),
      I1 => s_axis_a_tdata(17),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(19),
      O => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0\
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_a_tdata(17),
      I1 => s_axis_a_tdata(18),
      O => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0\
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
      O(3 downto 0) => round_op_pr(23 downto 20),
      S(3) => \CHAIN_GEN[23].C_MUX.CARRY_MUX_i_1_n_0\,
      S(2) => \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_1_n_0\,
      S(1) => \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_1_n_0\,
      S(0) => \CHAIN_GEN[20].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[20].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9A9A9595959A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[20].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[17].C_MUX.CARRY_MUX_i_3_n_0\,
      I4 => s_axis_a_tdata(17),
      I5 => \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[20].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[20].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB888B8BB"
    )
        port map (
      I0 => \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_3_n_0\,
      I1 => s_axis_a_tdata(17),
      I2 => \CHAIN_GEN[14].C_MUX.CARRY_MUX_i_3_n_0\,
      I3 => s_axis_a_tdata(18),
      I4 => s_axis_a_tdata(19),
      I5 => \CHAIN_GEN[20].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[20].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[20].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAFFFF"
    )
        port map (
      I0 => s_axis_a_tdata(20),
      I1 => s_axis_a_tdata(17),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(19),
      I4 => s_axis_a_tdata(10),
      O => \CHAIN_GEN[20].C_MUX.CARRY_MUX_i_3_n_0\
    );
\CHAIN_GEN[21].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9A9A9595959A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[18].C_MUX.CARRY_MUX_i_2_n_0\,
      I4 => s_axis_a_tdata(17),
      I5 => \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[21].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB888B8BB"
    )
        port map (
      I0 => \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_3_n_0\,
      I1 => s_axis_a_tdata(17),
      I2 => \CHAIN_GEN[15].C_MUX.CARRY_MUX_i_3_n_0\,
      I3 => s_axis_a_tdata(18),
      I4 => s_axis_a_tdata(19),
      I5 => \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_4_n_0\,
      O => \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[21].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD403FFFFD7C3"
    )
        port map (
      I0 => s_axis_a_tdata(8),
      I1 => s_axis_a_tdata(17),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(19),
      I4 => s_axis_a_tdata(20),
      I5 => s_axis_a_tdata(12),
      O => \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_3_n_0\
    );
\CHAIN_GEN[21].C_MUX.CARRY_MUX_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAFFFF"
    )
        port map (
      I0 => s_axis_a_tdata(20),
      I1 => s_axis_a_tdata(17),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(19),
      I4 => s_axis_a_tdata(11),
      O => \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_4_n_0\
    );
\CHAIN_GEN[22].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9A9A9595959A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[19].C_MUX.CARRY_MUX_i_2_n_0\,
      I4 => s_axis_a_tdata(17),
      I5 => \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[22].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_4_n_0\,
      I1 => s_axis_a_tdata(17),
      I2 => \CHAIN_GEN[21].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[22].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF53F3F5F"
    )
        port map (
      I0 => s_axis_a_tdata(13),
      I1 => s_axis_a_tdata(9),
      I2 => s_axis_a_tdata(19),
      I3 => s_axis_a_tdata(18),
      I4 => s_axis_a_tdata(17),
      I5 => s_axis_a_tdata(20),
      O => \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_3_n_0\
    );
\CHAIN_GEN[22].C_MUX.CARRY_MUX_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCCDDFFFFFFDDFFF"
    )
        port map (
      I0 => s_axis_a_tdata(14),
      I1 => s_axis_a_tdata(20),
      I2 => s_axis_a_tdata(17),
      I3 => s_axis_a_tdata(18),
      I4 => s_axis_a_tdata(19),
      I5 => s_axis_a_tdata(10),
      O => \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_4_n_0\
    );
\CHAIN_GEN[23].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B84700FFB847"
    )
        port map (
      I0 => \CHAIN_GEN[23].C_MUX.CARRY_MUX_i_2_n_0\,
      I1 => s_axis_a_tdata(17),
      I2 => \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_3_n_0\,
      I3 => s_axis_a_tdata(21),
      I4 => s_axis_a_tdata(16),
      I5 => \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[23].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[23].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCCDDFFFFFFDDFFF"
    )
        port map (
      I0 => s_axis_a_tdata(15),
      I1 => s_axis_a_tdata(20),
      I2 => s_axis_a_tdata(17),
      I3 => s_axis_a_tdata(18),
      I4 => s_axis_a_tdata(19),
      I5 => s_axis_a_tdata(11),
      O => \CHAIN_GEN[23].C_MUX.CARRY_MUX_i_2_n_0\
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
      O(3 downto 0) => round_op_pr(27 downto 24),
      S(3) => \CHAIN_GEN[27].C_MUX.CARRY_MUX_i_1_n_0\,
      S(2) => \CHAIN_GEN[26].C_MUX.CARRY_MUX_i_1_n_0\,
      S(1) => \CHAIN_GEN[25].C_MUX.CARRY_MUX_i_1_n_0\,
      S(0) => \CHAIN_GEN[24].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[24].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B847B847FF0000FF"
    )
        port map (
      I0 => \CHAIN_GEN[23].C_MUX.CARRY_MUX_i_2_n_0\,
      I1 => s_axis_a_tdata(17),
      I2 => \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_3_n_0\,
      I3 => s_axis_a_tdata(21),
      I4 => \CHAIN_GEN[24].C_MUX.CARRY_MUX_i_2_n_0\,
      I5 => s_axis_a_tdata(16),
      O => \CHAIN_GEN[24].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[24].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EDEFFFFFEDEF0000"
    )
        port map (
      I0 => s_axis_a_tdata(19),
      I1 => s_axis_a_tdata(20),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(12),
      I4 => s_axis_a_tdata(17),
      I5 => \CHAIN_GEN[22].C_MUX.CARRY_MUX_i_4_n_0\,
      O => \CHAIN_GEN[24].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[25].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[25].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[24].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[25].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[25].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFFFFBF0000"
    )
        port map (
      I0 => s_axis_a_tdata(20),
      I1 => s_axis_a_tdata(13),
      I2 => s_axis_a_tdata(19),
      I3 => s_axis_a_tdata(18),
      I4 => s_axis_a_tdata(17),
      I5 => \CHAIN_GEN[23].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[25].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[26].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[26].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[25].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[26].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[26].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFFF4FFFFFFF4F"
    )
        port map (
      I0 => s_axis_a_tdata(14),
      I1 => s_axis_a_tdata(17),
      I2 => s_axis_a_tdata(19),
      I3 => s_axis_a_tdata(20),
      I4 => s_axis_a_tdata(18),
      I5 => s_axis_a_tdata(12),
      O => \CHAIN_GEN[26].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[27].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[27].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[26].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[27].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[27].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFFFFFF7F7FFFF"
    )
        port map (
      I0 => s_axis_a_tdata(15),
      I1 => s_axis_a_tdata(17),
      I2 => s_axis_a_tdata(20),
      I3 => s_axis_a_tdata(13),
      I4 => s_axis_a_tdata(19),
      I5 => s_axis_a_tdata(18),
      O => \CHAIN_GEN[27].C_MUX.CARRY_MUX_i_2_n_0\
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
      O(3 downto 0) => round_op_pr(31 downto 28),
      S(3) => neg_mant_pza(30),
      S(2) => \CHAIN_GEN[30].C_MUX.CARRY_MUX_i_1_n_0\,
      S(1) => \CHAIN_GEN[29].C_MUX.CARRY_MUX_i_1_n_0\,
      S(0) => \CHAIN_GEN[28].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[28].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[28].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[27].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[28].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[28].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFDDFF"
    )
        port map (
      I0 => s_axis_a_tdata(17),
      I1 => s_axis_a_tdata(20),
      I2 => s_axis_a_tdata(14),
      I3 => s_axis_a_tdata(19),
      I4 => s_axis_a_tdata(18),
      O => \CHAIN_GEN[28].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[29].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA955A9"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[29].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => s_axis_a_tdata(16),
      I4 => \CHAIN_GEN[28].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[29].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[29].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFBFFF"
    )
        port map (
      I0 => s_axis_a_tdata(20),
      I1 => s_axis_a_tdata(15),
      I2 => s_axis_a_tdata(19),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(18),
      O => \CHAIN_GEN[29].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6565656A656A6A"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => s_axis_a_tdata_17_sn_1,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2_n_0\,
      I4 => s_axis_a_tdata(17),
      I5 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0_n_0\
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF7C7F7C7F"
    )
        port map (
      I0 => s_axis_a_tdata(2),
      I1 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0\,
      I2 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0\,
      I3 => s_axis_a_tdata(10),
      I4 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_12_n_0\,
      I5 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0\,
      O => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => s_axis_a_tdata(12),
      I1 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4_n_0\,
      I2 => s_axis_a_tdata(4),
      I3 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5_n_0\,
      I4 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_6_n_0\,
      I5 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_10_n_0\,
      O => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_3_n_0\
    );
\CHAIN_GEN[30].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA9A959A9A"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[29].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => s_axis_a_tdata(20),
      I4 => \CHAIN_GEN[30].C_MUX.CARRY_MUX_i_2_n_0\,
      I5 => s_axis_a_tdata(17),
      O => \CHAIN_GEN[30].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[30].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => s_axis_a_tdata(18),
      I1 => s_axis_a_tdata(17),
      I2 => s_axis_a_tdata(19),
      O => \CHAIN_GEN[30].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[31].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA9AAAAAAAAAAAAA"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => s_axis_a_tdata(20),
      I2 => s_axis_a_tdata(19),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(18),
      I5 => s_axis_a_tdata(16),
      O => neg_mant_pza(30)
    );
\CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[31].C_MUX.CARRY_MUX_n_0\,
      CO(3 downto 0) => \NLW_CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \NLW_CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4_DI_UNCONNECTED\(3 downto 0),
      O(3 downto 1) => \NLW_CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4_O_UNCONNECTED\(3 downto 1),
      O(0) => round_op_pr(32),
      S(3 downto 1) => \NLW_CHAIN_GEN[32].Q_XOR.SUM_XOR_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => s_axis_a_tdata(21)
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9595959A959A9A9"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2_n_0\,
      I4 => s_axis_a_tdata(17),
      I5 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0_n_0\
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0CF5050C0CF5F5F"
    )
        port map (
      I0 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_8_n_0\,
      I1 => \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_3_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_5_n_0\,
      I4 => s_axis_a_tdata(18),
      I5 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_6_n_0\,
      O => \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4333FDDD7FFFFDDD"
    )
        port map (
      I0 => s_axis_a_tdata(3),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(20),
      I5 => s_axis_a_tdata(11),
      O => \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_3_n_0\
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
      O(3 downto 0) => round_op_pr(7 downto 4),
      S(3) => \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1_n_0\,
      S(2) => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1_n_0\,
      S(1) => \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1_n_0\,
      S(0) => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0AFAF3F303F30"
    )
        port map (
      I0 => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_3_n_0\,
      I1 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_10_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_4_n_0\,
      I4 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_12_n_0\,
      I5 => s_axis_a_tdata(18),
      O => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"43337FFFFDDDFDDD"
    )
        port map (
      I0 => s_axis_a_tdata(4),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(12),
      I5 => s_axis_a_tdata(20),
      O => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_3_n_0\
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4333FDDD7FFFFDDD"
    )
        port map (
      I0 => s_axis_a_tdata(2),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(20),
      I5 => s_axis_a_tdata(10),
      O => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_4_n_0\
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0CF5F5FC0CF5050"
    )
        port map (
      I0 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_6_n_0\,
      I1 => \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_3_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_8_n_0\,
      I4 => s_axis_a_tdata(18),
      I5 => \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"43337FFFFDDDFDDD"
    )
        port map (
      I0 => s_axis_a_tdata(5),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(13),
      I5 => s_axis_a_tdata(20),
      O => \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_3_n_0\
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C0AFA0CFCFAFA0"
    )
        port map (
      I0 => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_4_n_0\,
      I1 => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_3_n_0\,
      I4 => s_axis_a_tdata(18),
      I5 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_10_n_0\,
      O => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"43337FFFFDDDFDDD"
    )
        port map (
      I0 => s_axis_a_tdata(6),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(14),
      I5 => s_axis_a_tdata(20),
      O => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3_n_0\
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0CFAFAFC0CFA0A0"
    )
        port map (
      I0 => \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_3_n_0\,
      I1 => \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_6_n_0\,
      I4 => s_axis_a_tdata(18),
      I5 => \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"43337FFFFDDDFDDD"
    )
        port map (
      I0 => s_axis_a_tdata(7),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(15),
      I5 => s_axis_a_tdata(20),
      O => \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3_n_0\
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
      O(3 downto 0) => round_op_pr(11 downto 8),
      S(3) => \CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1_n_0\,
      S(2) => \CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1_n_0\,
      S(1) => \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1_n_0\,
      S(0) => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_3_n_0\,
      I1 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_3_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_4_n_0\,
      I4 => s_axis_a_tdata(18),
      I5 => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4333C1114333FDDD"
    )
        port map (
      I0 => s_axis_a_tdata(8),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(20),
      I5 => s_axis_a_tdata(0),
      O => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_3_n_0\
    );
\CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_2_n_0\,
      I2 => s_axis_a_tdata(16),
      I3 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_2_n_0\,
      O => \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1_n_0\
    );
\CHAIN_GEN[9].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_3_n_0\,
      I1 => \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_3_n_0\,
      I2 => s_axis_a_tdata(17),
      I3 => \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_3_n_0\,
      I4 => s_axis_a_tdata(18),
      I5 => \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3_n_0\,
      O => \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_2_n_0\
    );
\CHAIN_GEN[9].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7FFFC111FDDD"
    )
        port map (
      I0 => s_axis_a_tdata(9),
      I1 => s_axis_a_tdata(19),
      I2 => s_axis_a_tdata(18),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(1),
      I5 => s_axis_a_tdata(20),
      O => \CHAIN_GEN[9].C_MUX.CARRY_MUX_i_3_n_0\
    );
\result_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(1),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_29\
    );
\result_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(11),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_19\
    );
\result_i[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(12),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_18\
    );
\result_i[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(13),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_17\
    );
\result_i[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(14),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_16\
    );
\result_i[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(15),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_15\
    );
\result_i[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(16),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_14\
    );
\result_i[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(17),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_13\
    );
\result_i[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(18),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_12\
    );
\result_i[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(19),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_11\
    );
\result_i[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(20),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_10\
    );
\result_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(2),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_28\
    );
\result_i[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(21),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_9\
    );
\result_i[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(22),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_8\
    );
\result_i[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(23),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_7\
    );
\result_i[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(24),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_6\
    );
\result_i[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(25),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_5\
    );
\result_i[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(26),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_4\
    );
\result_i[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(27),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_3\
    );
\result_i[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(28),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_2\
    );
\result_i[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(29),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_1\
    );
\result_i[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(30),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_0\
    );
\result_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(3),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_27\
    );
\result_i[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(31),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]\
    );
\result_i[30]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \result_i_reg[31]_1\,
      I1 => s_axis_a_tdata(21),
      I2 => round_op_pr(32),
      O => \result_i[30]_i_5_n_0\
    );
\result_i[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F080FF88"
    )
        port map (
      I0 => \result_i_reg[31]_0\,
      I1 => \result_i_reg[31]\,
      I2 => round_op_pr(32),
      I3 => s_axis_a_tdata(21),
      I4 => \result_i_reg[31]_1\,
      I5 => \result_i_reg[31]_2\,
      O => \s_axis_a_tdata[23]_30\
    );
\result_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(4),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_26\
    );
\result_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(5),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_25\
    );
\result_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(6),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_24\
    );
\result_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(7),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_23\
    );
\result_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(8),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_22\
    );
\result_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(9),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_21\
    );
\result_i[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAAABA"
    )
        port map (
      I0 => round_op_pr(10),
      I1 => \result_i[30]_i_5_n_0\,
      I2 => \result_i_reg[30]\,
      I3 => \result_i_reg[31]\,
      I4 => \result_i_reg[30]_0\,
      O => \s_axis_a_tdata[23]_20\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp_to_fix_xbip_pipe_v3_0_5_viv is
  port (
    m_axis_result_tvalid : out STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp_to_fix_xbip_pipe_v3_0_5_viv : entity is "xbip_pipe_v3_0_5_viv";
end fp_to_fix_xbip_pipe_v3_0_5_viv;

architecture STRUCTURE of fp_to_fix_xbip_pipe_v3_0_5_viv is
  signal first_q : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "yes";
begin
  m_axis_result_tvalid <= first_q;
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp_to_fix_compare_eq_im__parameterized0\ is
  port (
    \zero_det_unreg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 19 downto 0 );
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0\ : in STD_LOGIC;
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_0\ : in STD_LOGIC;
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2\ : in STD_LOGIC;
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_0\ : in STD_LOGIC;
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_1\ : in STD_LOGIC;
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp_to_fix_compare_eq_im__parameterized0\ : entity is "compare_eq_im";
end \fp_to_fix_compare_eq_im__parameterized0\;

architecture STRUCTURE of \fp_to_fix_compare_eq_im__parameterized0\ is
begin
CARRY_ZERO_DET: entity work.\fp_to_fix_carry_chain__parameterized0\
     port map (
      \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0\ => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0\,
      \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_0\ => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_0\,
      \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_0\ => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2\,
      \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_1\ => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_0\,
      \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_2\ => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_1\,
      \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_3\ => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_2\,
      s_axis_a_tdata(19 downto 0) => s_axis_a_tdata(19 downto 0),
      \zero_det_unreg[1]_0\(1 downto 0) => \zero_det_unreg[1]_0\(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp_to_fix_zero_det_sel is
  port (
    round_ip_pza : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 21 downto 0 );
    \CHAIN_GEN[0].C_MUX.CARRY_MUX\ : in STD_LOGIC;
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_0\ : in STD_LOGIC;
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp_to_fix_zero_det_sel : entity is "zero_det_sel";
end fp_to_fix_zero_det_sel;

architecture STRUCTURE of fp_to_fix_zero_det_sel is
  signal \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_10_n_0\ : STD_LOGIC;
  signal \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_11_n_0\ : STD_LOGIC;
  signal \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1_n_0\ : STD_LOGIC;
  signal \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_5_n_0\ : STD_LOGIC;
  signal \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_6_n_0\ : STD_LOGIC;
  signal \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_8_n_0\ : STD_LOGIC;
  signal \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_9_n_0\ : STD_LOGIC;
  signal mux0_0 : STD_LOGIC;
  signal mux0_1 : STD_LOGIC;
  signal \zero_det_unreg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zeros_pz : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_10\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_11\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_9\ : label is "soft_lutpair1";
  attribute box_type of \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX1\ : label is "PRIMITIVE";
  attribute box_type of \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX2\ : label is "PRIMITIVE";
begin
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555999AAAA59AAAA"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => zeros_pz,
      I2 => \CHAIN_GEN[0].C_MUX.CARRY_MUX\,
      I3 => s_axis_a_tdata(16),
      I4 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_0\,
      I5 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_1\,
      O => round_ip_pza(0)
    );
EQ_ZERO: entity work.\fp_to_fix_compare_eq_im__parameterized0\
     port map (
      \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0\ => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_5_n_0\,
      \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_0\ => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_6_n_0\,
      \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2\ => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_8_n_0\,
      \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_0\ => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_9_n_0\,
      \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_1\ => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_10_n_0\,
      \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2_2\ => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_11_n_0\,
      s_axis_a_tdata(19 downto 0) => s_axis_a_tdata(19 downto 0),
      \zero_det_unreg[1]_0\(1 downto 0) => \zero_det_unreg[1]_0\(1 downto 0)
    );
\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \zero_det_unreg[1]_0\(0),
      I1 => \zero_det_unreg[1]_0\(1),
      O => mux0_0,
      S => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1_n_0\
    );
\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95555555"
    )
        port map (
      I0 => s_axis_a_tdata(20),
      I1 => s_axis_a_tdata(16),
      I2 => s_axis_a_tdata(19),
      I3 => s_axis_a_tdata(18),
      I4 => s_axis_a_tdata(17),
      O => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1_n_0\
    );
\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => s_axis_a_tdata(18),
      I1 => s_axis_a_tdata(17),
      I2 => s_axis_a_tdata(16),
      O => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_10_n_0\
    );
\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA5AF80"
    )
        port map (
      I0 => s_axis_a_tdata(16),
      I1 => s_axis_a_tdata(14),
      I2 => s_axis_a_tdata(17),
      I3 => s_axis_a_tdata(12),
      I4 => s_axis_a_tdata(13),
      O => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_11_n_0\
    );
\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FFE00C"
    )
        port map (
      I0 => s_axis_a_tdata(2),
      I1 => s_axis_a_tdata(1),
      I2 => s_axis_a_tdata(16),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(0),
      O => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_5_n_0\
    );
\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axis_a_tdata(16),
      I1 => s_axis_a_tdata(17),
      O => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_6_n_0\
    );
\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F511F51"
    )
        port map (
      I0 => s_axis_a_tdata(4),
      I1 => s_axis_a_tdata(5),
      I2 => s_axis_a_tdata(16),
      I3 => s_axis_a_tdata(17),
      I4 => s_axis_a_tdata(6),
      O => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_8_n_0\
    );
\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => s_axis_a_tdata(19),
      I1 => s_axis_a_tdata(16),
      I2 => s_axis_a_tdata(17),
      I3 => s_axis_a_tdata(18),
      O => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_9_n_0\
    );
\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX1\: unisim.vcomponents.MUXF7
     port map (
      I0 => '1',
      I1 => '1',
      O => mux0_1,
      S => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1_n_0\
    );
\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX2\: unisim.vcomponents.MUXF8
     port map (
      I0 => mux0_0,
      I1 => mux0_1,
      O => zeros_pz,
      S => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp_to_fix_flt_to_fix_conv is
  port (
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp_to_fix_flt_to_fix_conv : entity is "flt_to_fix_conv";
end fp_to_fix_flt_to_fix_conv;

architecture STRUCTURE of fp_to_fix_flt_to_fix_conv is
  signal \EQ_ZERO/chunk_det\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal ROUND_n_0 : STD_LOGIC;
  signal ROUND_n_1 : STD_LOGIC;
  signal ROUND_n_10 : STD_LOGIC;
  signal ROUND_n_11 : STD_LOGIC;
  signal ROUND_n_12 : STD_LOGIC;
  signal ROUND_n_13 : STD_LOGIC;
  signal ROUND_n_14 : STD_LOGIC;
  signal ROUND_n_15 : STD_LOGIC;
  signal ROUND_n_16 : STD_LOGIC;
  signal ROUND_n_17 : STD_LOGIC;
  signal ROUND_n_18 : STD_LOGIC;
  signal ROUND_n_19 : STD_LOGIC;
  signal ROUND_n_2 : STD_LOGIC;
  signal ROUND_n_20 : STD_LOGIC;
  signal ROUND_n_21 : STD_LOGIC;
  signal ROUND_n_22 : STD_LOGIC;
  signal ROUND_n_23 : STD_LOGIC;
  signal ROUND_n_24 : STD_LOGIC;
  signal ROUND_n_25 : STD_LOGIC;
  signal ROUND_n_26 : STD_LOGIC;
  signal ROUND_n_27 : STD_LOGIC;
  signal ROUND_n_28 : STD_LOGIC;
  signal ROUND_n_29 : STD_LOGIC;
  signal ROUND_n_3 : STD_LOGIC;
  signal ROUND_n_30 : STD_LOGIC;
  signal ROUND_n_31 : STD_LOGIC;
  signal ROUND_n_32 : STD_LOGIC;
  signal ROUND_n_33 : STD_LOGIC;
  signal ROUND_n_34 : STD_LOGIC;
  signal ROUND_n_4 : STD_LOGIC;
  signal ROUND_n_5 : STD_LOGIC;
  signal ROUND_n_6 : STD_LOGIC;
  signal ROUND_n_7 : STD_LOGIC;
  signal ROUND_n_8 : STD_LOGIC;
  signal ROUND_n_9 : STD_LOGIC;
  signal op_state_p1_updated : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \result_i[30]_i_3_n_0\ : STD_LOGIC;
  signal \result_i[30]_i_4_n_0\ : STD_LOGIC;
  signal \result_i[30]_i_6_n_0\ : STD_LOGIC;
  signal \result_i[30]_i_7_n_0\ : STD_LOGIC;
  signal \result_i[30]_i_8_n_0\ : STD_LOGIC;
  signal \result_i[31]_i_10_n_0\ : STD_LOGIC;
  signal \result_i[31]_i_2_n_0\ : STD_LOGIC;
  signal \result_i[31]_i_3_n_0\ : STD_LOGIC;
  signal \result_i[31]_i_4_n_0\ : STD_LOGIC;
  signal \result_i[31]_i_5_n_0\ : STD_LOGIC;
  signal \result_i[31]_i_6_n_0\ : STD_LOGIC;
  signal \result_i[31]_i_7_n_0\ : STD_LOGIC;
  signal \result_i[31]_i_8_n_0\ : STD_LOGIC;
  signal round_ip_pza : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \result_i[30]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \result_i[30]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \result_i[30]_i_8\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \result_i[31]_i_8\ : label is "soft_lutpair7";
begin
ALIGN_Z_D: entity work.fp_to_fix_zero_det_sel
     port map (
      \CHAIN_GEN[0].C_MUX.CARRY_MUX\ => ROUND_n_0,
      \CHAIN_GEN[0].C_MUX.CARRY_MUX_0\ => ROUND_n_33,
      \CHAIN_GEN[0].C_MUX.CARRY_MUX_1\ => ROUND_n_34,
      round_ip_pza(0) => round_ip_pza(0),
      s_axis_a_tdata(21) => s_axis_a_tdata(23),
      s_axis_a_tdata(20 downto 0) => s_axis_a_tdata(20 downto 0)
    );
ROUND: entity work.\fp_to_fix_carry_chain__parameterized1\
     port map (
      \result_i_reg[30]\ => \result_i[30]_i_6_n_0\,
      \result_i_reg[30]_0\ => \result_i[30]_i_7_n_0\,
      \result_i_reg[31]\ => \result_i[31]_i_3_n_0\,
      \result_i_reg[31]_0\ => \result_i[31]_i_2_n_0\,
      \result_i_reg[31]_1\ => \result_i[31]_i_4_n_0\,
      \result_i_reg[31]_2\ => \result_i[31]_i_5_n_0\,
      round_ip_pza(0) => round_ip_pza(0),
      s_axis_a_tdata(21) => s_axis_a_tdata(23),
      s_axis_a_tdata(20 downto 0) => s_axis_a_tdata(20 downto 0),
      \s_axis_a_tdata[17]_0\ => ROUND_n_33,
      \s_axis_a_tdata[17]_1\ => ROUND_n_34,
      \s_axis_a_tdata[23]\ => ROUND_n_1,
      \s_axis_a_tdata[23]_0\ => ROUND_n_2,
      \s_axis_a_tdata[23]_1\ => ROUND_n_3,
      \s_axis_a_tdata[23]_10\ => ROUND_n_12,
      \s_axis_a_tdata[23]_11\ => ROUND_n_13,
      \s_axis_a_tdata[23]_12\ => ROUND_n_14,
      \s_axis_a_tdata[23]_13\ => ROUND_n_15,
      \s_axis_a_tdata[23]_14\ => ROUND_n_16,
      \s_axis_a_tdata[23]_15\ => ROUND_n_17,
      \s_axis_a_tdata[23]_16\ => ROUND_n_18,
      \s_axis_a_tdata[23]_17\ => ROUND_n_19,
      \s_axis_a_tdata[23]_18\ => ROUND_n_20,
      \s_axis_a_tdata[23]_19\ => ROUND_n_21,
      \s_axis_a_tdata[23]_2\ => ROUND_n_4,
      \s_axis_a_tdata[23]_20\ => ROUND_n_22,
      \s_axis_a_tdata[23]_21\ => ROUND_n_23,
      \s_axis_a_tdata[23]_22\ => ROUND_n_24,
      \s_axis_a_tdata[23]_23\ => ROUND_n_25,
      \s_axis_a_tdata[23]_24\ => ROUND_n_26,
      \s_axis_a_tdata[23]_25\ => ROUND_n_27,
      \s_axis_a_tdata[23]_26\ => ROUND_n_28,
      \s_axis_a_tdata[23]_27\ => ROUND_n_29,
      \s_axis_a_tdata[23]_28\ => ROUND_n_30,
      \s_axis_a_tdata[23]_29\ => ROUND_n_31,
      \s_axis_a_tdata[23]_3\ => ROUND_n_5,
      \s_axis_a_tdata[23]_30\ => ROUND_n_32,
      \s_axis_a_tdata[23]_4\ => ROUND_n_6,
      \s_axis_a_tdata[23]_5\ => ROUND_n_7,
      \s_axis_a_tdata[23]_6\ => ROUND_n_8,
      \s_axis_a_tdata[23]_7\ => ROUND_n_9,
      \s_axis_a_tdata[23]_8\ => ROUND_n_10,
      \s_axis_a_tdata[23]_9\ => ROUND_n_11,
      s_axis_a_tdata_17_sp_1 => ROUND_n_0
    );
\result_i[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE00FFFFFEAA"
    )
        port map (
      I0 => s_axis_a_tdata(23),
      I1 => \result_i[30]_i_3_n_0\,
      I2 => \result_i[30]_i_4_n_0\,
      I3 => \result_i[31]_i_3_n_0\,
      I4 => \result_i[31]_i_5_n_0\,
      I5 => \result_i[31]_i_4_n_0\,
      O => op_state_p1_updated(0)
    );
\result_i[30]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => \EQ_ZERO/chunk_det\(3),
      I1 => s_axis_a_tdata(5),
      I2 => s_axis_a_tdata(3),
      I3 => s_axis_a_tdata(9),
      I4 => s_axis_a_tdata(4),
      O => \result_i[30]_i_3_n_0\
    );
\result_i[30]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_axis_a_tdata(8),
      I1 => s_axis_a_tdata(2),
      I2 => s_axis_a_tdata(6),
      I3 => s_axis_a_tdata(7),
      I4 => \result_i[31]_i_6_n_0\,
      O => \result_i[30]_i_4_n_0\
    );
\result_i[30]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F0F0F3FFFFFFFFF"
    )
        port map (
      I0 => s_axis_a_tdata(16),
      I1 => \result_i[31]_i_10_n_0\,
      I2 => s_axis_a_tdata(22),
      I3 => s_axis_a_tdata(21),
      I4 => s_axis_a_tdata(20),
      I5 => s_axis_a_tdata(23),
      O => \result_i[30]_i_6_n_0\
    );
\result_i[30]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => s_axis_a_tdata(23),
      I1 => \EQ_ZERO/chunk_det\(3),
      I2 => \result_i[31]_i_8_n_0\,
      I3 => \result_i[30]_i_8_n_0\,
      I4 => \result_i[31]_i_6_n_0\,
      O => \result_i[30]_i_7_n_0\
    );
\result_i[30]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axis_a_tdata(7),
      I1 => s_axis_a_tdata(6),
      I2 => s_axis_a_tdata(2),
      I3 => s_axis_a_tdata(8),
      O => \result_i[30]_i_8_n_0\
    );
\result_i[31]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_a_tdata(19),
      I1 => s_axis_a_tdata(18),
      I2 => s_axis_a_tdata(17),
      O => \result_i[31]_i_10_n_0\
    );
\result_i[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFFF"
    )
        port map (
      I0 => \result_i[31]_i_6_n_0\,
      I1 => \result_i[31]_i_7_n_0\,
      I2 => s_axis_a_tdata(2),
      I3 => s_axis_a_tdata(8),
      I4 => \result_i[31]_i_8_n_0\,
      I5 => \EQ_ZERO/chunk_det\(3),
      O => \result_i[31]_i_2_n_0\
    );
\result_i[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s_axis_a_tdata(16),
      I1 => \result_i[31]_i_10_n_0\,
      I2 => s_axis_a_tdata(22),
      I3 => s_axis_a_tdata(21),
      I4 => s_axis_a_tdata(20),
      O => \result_i[31]_i_3_n_0\
    );
\result_i[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01111111FFFFFFFF"
    )
        port map (
      I0 => s_axis_a_tdata(21),
      I1 => s_axis_a_tdata(20),
      I2 => s_axis_a_tdata(17),
      I3 => s_axis_a_tdata(18),
      I4 => s_axis_a_tdata(19),
      I5 => s_axis_a_tdata(22),
      O => \result_i[31]_i_4_n_0\
    );
\result_i[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111111155555555"
    )
        port map (
      I0 => s_axis_a_tdata(22),
      I1 => s_axis_a_tdata(20),
      I2 => s_axis_a_tdata(17),
      I3 => s_axis_a_tdata(18),
      I4 => s_axis_a_tdata(19),
      I5 => s_axis_a_tdata(21),
      O => \result_i[31]_i_5_n_0\
    );
\result_i[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axis_a_tdata(11),
      I1 => s_axis_a_tdata(10),
      I2 => s_axis_a_tdata(0),
      I3 => s_axis_a_tdata(1),
      O => \result_i[31]_i_6_n_0\
    );
\result_i[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_a_tdata(6),
      I1 => s_axis_a_tdata(7),
      O => \result_i[31]_i_7_n_0\
    );
\result_i[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_a_tdata(4),
      I1 => s_axis_a_tdata(9),
      I2 => s_axis_a_tdata(3),
      I3 => s_axis_a_tdata(5),
      O => \result_i[31]_i_8_n_0\
    );
\result_i[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_a_tdata(12),
      I1 => s_axis_a_tdata(13),
      I2 => s_axis_a_tdata(15),
      I3 => s_axis_a_tdata(14),
      O => \EQ_ZERO/chunk_det\(3)
    );
\result_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_31,
      Q => m_axis_result_tdata(0),
      R => op_state_p1_updated(0)
    );
\result_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_21,
      Q => m_axis_result_tdata(10),
      R => op_state_p1_updated(0)
    );
\result_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_20,
      Q => m_axis_result_tdata(11),
      R => op_state_p1_updated(0)
    );
\result_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_19,
      Q => m_axis_result_tdata(12),
      R => op_state_p1_updated(0)
    );
\result_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_18,
      Q => m_axis_result_tdata(13),
      R => op_state_p1_updated(0)
    );
\result_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_17,
      Q => m_axis_result_tdata(14),
      R => op_state_p1_updated(0)
    );
\result_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_16,
      Q => m_axis_result_tdata(15),
      R => op_state_p1_updated(0)
    );
\result_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_15,
      Q => m_axis_result_tdata(16),
      R => op_state_p1_updated(0)
    );
\result_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_14,
      Q => m_axis_result_tdata(17),
      R => op_state_p1_updated(0)
    );
\result_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_13,
      Q => m_axis_result_tdata(18),
      R => op_state_p1_updated(0)
    );
\result_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_12,
      Q => m_axis_result_tdata(19),
      R => op_state_p1_updated(0)
    );
\result_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_30,
      Q => m_axis_result_tdata(1),
      R => op_state_p1_updated(0)
    );
\result_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_11,
      Q => m_axis_result_tdata(20),
      R => op_state_p1_updated(0)
    );
\result_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_10,
      Q => m_axis_result_tdata(21),
      R => op_state_p1_updated(0)
    );
\result_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_9,
      Q => m_axis_result_tdata(22),
      R => op_state_p1_updated(0)
    );
\result_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_8,
      Q => m_axis_result_tdata(23),
      R => op_state_p1_updated(0)
    );
\result_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_7,
      Q => m_axis_result_tdata(24),
      R => op_state_p1_updated(0)
    );
\result_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_6,
      Q => m_axis_result_tdata(25),
      R => op_state_p1_updated(0)
    );
\result_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_5,
      Q => m_axis_result_tdata(26),
      R => op_state_p1_updated(0)
    );
\result_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_4,
      Q => m_axis_result_tdata(27),
      R => op_state_p1_updated(0)
    );
\result_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_3,
      Q => m_axis_result_tdata(28),
      R => op_state_p1_updated(0)
    );
\result_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_2,
      Q => m_axis_result_tdata(29),
      R => op_state_p1_updated(0)
    );
\result_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_29,
      Q => m_axis_result_tdata(2),
      R => op_state_p1_updated(0)
    );
\result_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_1,
      Q => m_axis_result_tdata(30),
      R => op_state_p1_updated(0)
    );
\result_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_32,
      Q => m_axis_result_tdata(31),
      R => '0'
    );
\result_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_28,
      Q => m_axis_result_tdata(3),
      R => op_state_p1_updated(0)
    );
\result_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_27,
      Q => m_axis_result_tdata(4),
      R => op_state_p1_updated(0)
    );
\result_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_26,
      Q => m_axis_result_tdata(5),
      R => op_state_p1_updated(0)
    );
\result_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_25,
      Q => m_axis_result_tdata(6),
      R => op_state_p1_updated(0)
    );
\result_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_24,
      Q => m_axis_result_tdata(7),
      R => op_state_p1_updated(0)
    );
\result_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_23,
      Q => m_axis_result_tdata(8),
      R => op_state_p1_updated(0)
    );
\result_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ROUND_n_22,
      Q => m_axis_result_tdata(9),
      R => op_state_p1_updated(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp_to_fix_floating_point_v7_1_7_viv is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tready : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_a_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_a_tlast : in STD_LOGIC;
    s_axis_b_tvalid : in STD_LOGIC;
    s_axis_b_tready : out STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_b_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_b_tlast : in STD_LOGIC;
    s_axis_c_tvalid : in STD_LOGIC;
    s_axis_c_tready : out STD_LOGIC;
    s_axis_c_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_c_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_c_tlast : in STD_LOGIC;
    s_axis_operation_tvalid : in STD_LOGIC;
    s_axis_operation_tready : out STD_LOGIC;
    s_axis_operation_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_operation_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_operation_tlast : in STD_LOGIC;
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tready : in STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_result_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_result_tlast : out STD_LOGIC
  );
  attribute C_ACCUM_INPUT_MSB : integer;
  attribute C_ACCUM_INPUT_MSB of fp_to_fix_floating_point_v7_1_7_viv : entity is 32;
  attribute C_ACCUM_LSB : integer;
  attribute C_ACCUM_LSB of fp_to_fix_floating_point_v7_1_7_viv : entity is -31;
  attribute C_ACCUM_MSB : integer;
  attribute C_ACCUM_MSB of fp_to_fix_floating_point_v7_1_7_viv : entity is 32;
  attribute C_A_FRACTION_WIDTH : integer;
  attribute C_A_FRACTION_WIDTH of fp_to_fix_floating_point_v7_1_7_viv : entity is 17;
  attribute C_A_TDATA_WIDTH : integer;
  attribute C_A_TDATA_WIDTH of fp_to_fix_floating_point_v7_1_7_viv : entity is 24;
  attribute C_A_TUSER_WIDTH : integer;
  attribute C_A_TUSER_WIDTH of fp_to_fix_floating_point_v7_1_7_viv : entity is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of fp_to_fix_floating_point_v7_1_7_viv : entity is 24;
  attribute C_BRAM_USAGE : integer;
  attribute C_BRAM_USAGE of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_B_FRACTION_WIDTH : integer;
  attribute C_B_FRACTION_WIDTH of fp_to_fix_floating_point_v7_1_7_viv : entity is 17;
  attribute C_B_TDATA_WIDTH : integer;
  attribute C_B_TDATA_WIDTH of fp_to_fix_floating_point_v7_1_7_viv : entity is 24;
  attribute C_B_TUSER_WIDTH : integer;
  attribute C_B_TUSER_WIDTH of fp_to_fix_floating_point_v7_1_7_viv : entity is 1;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of fp_to_fix_floating_point_v7_1_7_viv : entity is 24;
  attribute C_COMPARE_OPERATION : integer;
  attribute C_COMPARE_OPERATION of fp_to_fix_floating_point_v7_1_7_viv : entity is 8;
  attribute C_C_FRACTION_WIDTH : integer;
  attribute C_C_FRACTION_WIDTH of fp_to_fix_floating_point_v7_1_7_viv : entity is 17;
  attribute C_C_TDATA_WIDTH : integer;
  attribute C_C_TDATA_WIDTH of fp_to_fix_floating_point_v7_1_7_viv : entity is 24;
  attribute C_C_TUSER_WIDTH : integer;
  attribute C_C_TUSER_WIDTH of fp_to_fix_floating_point_v7_1_7_viv : entity is 1;
  attribute C_C_WIDTH : integer;
  attribute C_C_WIDTH of fp_to_fix_floating_point_v7_1_7_viv : entity is 24;
  attribute C_FIXED_DATA_UNSIGNED : integer;
  attribute C_FIXED_DATA_UNSIGNED of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ABSOLUTE : integer;
  attribute C_HAS_ABSOLUTE of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ACCUMULATOR_A : integer;
  attribute C_HAS_ACCUMULATOR_A of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ACCUMULATOR_S : integer;
  attribute C_HAS_ACCUMULATOR_S of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW : integer;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ACCUM_OVERFLOW : integer;
  attribute C_HAS_ACCUM_OVERFLOW of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ACLKEN : integer;
  attribute C_HAS_ACLKEN of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ADD : integer;
  attribute C_HAS_ADD of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ARESETN : integer;
  attribute C_HAS_ARESETN of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_A_TLAST : integer;
  attribute C_HAS_A_TLAST of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_A_TUSER : integer;
  attribute C_HAS_A_TUSER of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_B : integer;
  attribute C_HAS_B of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_B_TLAST : integer;
  attribute C_HAS_B_TLAST of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_B_TUSER : integer;
  attribute C_HAS_B_TUSER of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_C : integer;
  attribute C_HAS_C of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_COMPARE : integer;
  attribute C_HAS_COMPARE of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_C_TLAST : integer;
  attribute C_HAS_C_TLAST of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_C_TUSER : integer;
  attribute C_HAS_C_TUSER of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_DIVIDE : integer;
  attribute C_HAS_DIVIDE of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_DIVIDE_BY_ZERO : integer;
  attribute C_HAS_DIVIDE_BY_ZERO of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_EXPONENTIAL : integer;
  attribute C_HAS_EXPONENTIAL of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_FIX_TO_FLT : integer;
  attribute C_HAS_FIX_TO_FLT of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_FLT_TO_FIX : integer;
  attribute C_HAS_FLT_TO_FIX of fp_to_fix_floating_point_v7_1_7_viv : entity is 1;
  attribute C_HAS_FLT_TO_FLT : integer;
  attribute C_HAS_FLT_TO_FLT of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_FMA : integer;
  attribute C_HAS_FMA of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_FMS : integer;
  attribute C_HAS_FMS of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_INVALID_OP : integer;
  attribute C_HAS_INVALID_OP of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_LOGARITHM : integer;
  attribute C_HAS_LOGARITHM of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_MULTIPLY : integer;
  attribute C_HAS_MULTIPLY of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_OPERATION : integer;
  attribute C_HAS_OPERATION of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_OPERATION_TLAST : integer;
  attribute C_HAS_OPERATION_TLAST of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_OPERATION_TUSER : integer;
  attribute C_HAS_OPERATION_TUSER of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_RECIP : integer;
  attribute C_HAS_RECIP of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_RECIP_SQRT : integer;
  attribute C_HAS_RECIP_SQRT of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_RESULT_TLAST : integer;
  attribute C_HAS_RESULT_TLAST of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_RESULT_TUSER : integer;
  attribute C_HAS_RESULT_TUSER of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_SQRT : integer;
  attribute C_HAS_SQRT of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_SUBTRACT : integer;
  attribute C_HAS_SUBTRACT of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of fp_to_fix_floating_point_v7_1_7_viv : entity is 1;
  attribute C_MULT_USAGE : integer;
  attribute C_MULT_USAGE of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_OPERATION_TDATA_WIDTH : integer;
  attribute C_OPERATION_TDATA_WIDTH of fp_to_fix_floating_point_v7_1_7_viv : entity is 8;
  attribute C_OPERATION_TUSER_WIDTH : integer;
  attribute C_OPERATION_TUSER_WIDTH of fp_to_fix_floating_point_v7_1_7_viv : entity is 1;
  attribute C_OPTIMIZATION : integer;
  attribute C_OPTIMIZATION of fp_to_fix_floating_point_v7_1_7_viv : entity is 1;
  attribute C_RATE : integer;
  attribute C_RATE of fp_to_fix_floating_point_v7_1_7_viv : entity is 1;
  attribute C_RESULT_FRACTION_WIDTH : integer;
  attribute C_RESULT_FRACTION_WIDTH of fp_to_fix_floating_point_v7_1_7_viv : entity is 16;
  attribute C_RESULT_TDATA_WIDTH : integer;
  attribute C_RESULT_TDATA_WIDTH of fp_to_fix_floating_point_v7_1_7_viv : entity is 32;
  attribute C_RESULT_TUSER_WIDTH : integer;
  attribute C_RESULT_TUSER_WIDTH of fp_to_fix_floating_point_v7_1_7_viv : entity is 1;
  attribute C_RESULT_WIDTH : integer;
  attribute C_RESULT_WIDTH of fp_to_fix_floating_point_v7_1_7_viv : entity is 32;
  attribute C_THROTTLE_SCHEME : integer;
  attribute C_THROTTLE_SCHEME of fp_to_fix_floating_point_v7_1_7_viv : entity is 3;
  attribute C_TLAST_RESOLUTION : integer;
  attribute C_TLAST_RESOLUTION of fp_to_fix_floating_point_v7_1_7_viv : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of fp_to_fix_floating_point_v7_1_7_viv : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp_to_fix_floating_point_v7_1_7_viv : entity is "floating_point_v7_1_7_viv";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fp_to_fix_floating_point_v7_1_7_viv : entity is "yes";
end fp_to_fix_floating_point_v7_1_7_viv;

architecture STRUCTURE of fp_to_fix_floating_point_v7_1_7_viv is
  signal \<const0>\ : STD_LOGIC;
begin
  m_axis_result_tlast <= \<const0>\;
  m_axis_result_tuser(0) <= \<const0>\;
  s_axis_a_tready <= \<const0>\;
  s_axis_b_tready <= \<const0>\;
  s_axis_c_tready <= \<const0>\;
  s_axis_operation_tready <= \<const0>\;
\FLT_TO_FIX_OP.SPD.OP\: entity work.fp_to_fix_flt_to_fix_conv
     port map (
      aclk => aclk,
      m_axis_result_tdata(31 downto 0) => m_axis_result_tdata(31 downto 0),
      s_axis_a_tdata(23 downto 0) => s_axis_a_tdata(23 downto 0)
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_nd_to_rdy: entity work.fp_to_fix_xbip_pipe_v3_0_5_viv
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
entity fp_to_fix_floating_point_v7_1_7 is
  port (
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tready : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_a_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_a_tlast : in STD_LOGIC;
    s_axis_b_tvalid : in STD_LOGIC;
    s_axis_b_tready : out STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_b_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_b_tlast : in STD_LOGIC;
    s_axis_c_tvalid : in STD_LOGIC;
    s_axis_c_tready : out STD_LOGIC;
    s_axis_c_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_c_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_c_tlast : in STD_LOGIC;
    s_axis_operation_tvalid : in STD_LOGIC;
    s_axis_operation_tready : out STD_LOGIC;
    s_axis_operation_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_operation_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_operation_tlast : in STD_LOGIC;
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tready : in STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_result_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_result_tlast : out STD_LOGIC
  );
  attribute C_ACCUM_INPUT_MSB : integer;
  attribute C_ACCUM_INPUT_MSB of fp_to_fix_floating_point_v7_1_7 : entity is 32;
  attribute C_ACCUM_LSB : integer;
  attribute C_ACCUM_LSB of fp_to_fix_floating_point_v7_1_7 : entity is -31;
  attribute C_ACCUM_MSB : integer;
  attribute C_ACCUM_MSB of fp_to_fix_floating_point_v7_1_7 : entity is 32;
  attribute C_A_FRACTION_WIDTH : integer;
  attribute C_A_FRACTION_WIDTH of fp_to_fix_floating_point_v7_1_7 : entity is 17;
  attribute C_A_TDATA_WIDTH : integer;
  attribute C_A_TDATA_WIDTH of fp_to_fix_floating_point_v7_1_7 : entity is 24;
  attribute C_A_TUSER_WIDTH : integer;
  attribute C_A_TUSER_WIDTH of fp_to_fix_floating_point_v7_1_7 : entity is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of fp_to_fix_floating_point_v7_1_7 : entity is 24;
  attribute C_BRAM_USAGE : integer;
  attribute C_BRAM_USAGE of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_B_FRACTION_WIDTH : integer;
  attribute C_B_FRACTION_WIDTH of fp_to_fix_floating_point_v7_1_7 : entity is 17;
  attribute C_B_TDATA_WIDTH : integer;
  attribute C_B_TDATA_WIDTH of fp_to_fix_floating_point_v7_1_7 : entity is 24;
  attribute C_B_TUSER_WIDTH : integer;
  attribute C_B_TUSER_WIDTH of fp_to_fix_floating_point_v7_1_7 : entity is 1;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of fp_to_fix_floating_point_v7_1_7 : entity is 24;
  attribute C_COMPARE_OPERATION : integer;
  attribute C_COMPARE_OPERATION of fp_to_fix_floating_point_v7_1_7 : entity is 8;
  attribute C_C_FRACTION_WIDTH : integer;
  attribute C_C_FRACTION_WIDTH of fp_to_fix_floating_point_v7_1_7 : entity is 17;
  attribute C_C_TDATA_WIDTH : integer;
  attribute C_C_TDATA_WIDTH of fp_to_fix_floating_point_v7_1_7 : entity is 24;
  attribute C_C_TUSER_WIDTH : integer;
  attribute C_C_TUSER_WIDTH of fp_to_fix_floating_point_v7_1_7 : entity is 1;
  attribute C_C_WIDTH : integer;
  attribute C_C_WIDTH of fp_to_fix_floating_point_v7_1_7 : entity is 24;
  attribute C_FIXED_DATA_UNSIGNED : integer;
  attribute C_FIXED_DATA_UNSIGNED of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ABSOLUTE : integer;
  attribute C_HAS_ABSOLUTE of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ACCUMULATOR_A : integer;
  attribute C_HAS_ACCUMULATOR_A of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ACCUMULATOR_S : integer;
  attribute C_HAS_ACCUMULATOR_S of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW : integer;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ACCUM_OVERFLOW : integer;
  attribute C_HAS_ACCUM_OVERFLOW of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ACLKEN : integer;
  attribute C_HAS_ACLKEN of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ADD : integer;
  attribute C_HAS_ADD of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ARESETN : integer;
  attribute C_HAS_ARESETN of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_A_TLAST : integer;
  attribute C_HAS_A_TLAST of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_A_TUSER : integer;
  attribute C_HAS_A_TUSER of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_B : integer;
  attribute C_HAS_B of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_B_TLAST : integer;
  attribute C_HAS_B_TLAST of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_B_TUSER : integer;
  attribute C_HAS_B_TUSER of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_C : integer;
  attribute C_HAS_C of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_COMPARE : integer;
  attribute C_HAS_COMPARE of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_C_TLAST : integer;
  attribute C_HAS_C_TLAST of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_C_TUSER : integer;
  attribute C_HAS_C_TUSER of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_DIVIDE : integer;
  attribute C_HAS_DIVIDE of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_DIVIDE_BY_ZERO : integer;
  attribute C_HAS_DIVIDE_BY_ZERO of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_EXPONENTIAL : integer;
  attribute C_HAS_EXPONENTIAL of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_FIX_TO_FLT : integer;
  attribute C_HAS_FIX_TO_FLT of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_FLT_TO_FIX : integer;
  attribute C_HAS_FLT_TO_FIX of fp_to_fix_floating_point_v7_1_7 : entity is 1;
  attribute C_HAS_FLT_TO_FLT : integer;
  attribute C_HAS_FLT_TO_FLT of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_FMA : integer;
  attribute C_HAS_FMA of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_FMS : integer;
  attribute C_HAS_FMS of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_INVALID_OP : integer;
  attribute C_HAS_INVALID_OP of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_LOGARITHM : integer;
  attribute C_HAS_LOGARITHM of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_MULTIPLY : integer;
  attribute C_HAS_MULTIPLY of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_OPERATION : integer;
  attribute C_HAS_OPERATION of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_OPERATION_TLAST : integer;
  attribute C_HAS_OPERATION_TLAST of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_OPERATION_TUSER : integer;
  attribute C_HAS_OPERATION_TUSER of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_RECIP : integer;
  attribute C_HAS_RECIP of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_RECIP_SQRT : integer;
  attribute C_HAS_RECIP_SQRT of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_RESULT_TLAST : integer;
  attribute C_HAS_RESULT_TLAST of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_RESULT_TUSER : integer;
  attribute C_HAS_RESULT_TUSER of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_SQRT : integer;
  attribute C_HAS_SQRT of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_SUBTRACT : integer;
  attribute C_HAS_SUBTRACT of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of fp_to_fix_floating_point_v7_1_7 : entity is 1;
  attribute C_MULT_USAGE : integer;
  attribute C_MULT_USAGE of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_OPERATION_TDATA_WIDTH : integer;
  attribute C_OPERATION_TDATA_WIDTH of fp_to_fix_floating_point_v7_1_7 : entity is 8;
  attribute C_OPERATION_TUSER_WIDTH : integer;
  attribute C_OPERATION_TUSER_WIDTH of fp_to_fix_floating_point_v7_1_7 : entity is 1;
  attribute C_OPTIMIZATION : integer;
  attribute C_OPTIMIZATION of fp_to_fix_floating_point_v7_1_7 : entity is 1;
  attribute C_RATE : integer;
  attribute C_RATE of fp_to_fix_floating_point_v7_1_7 : entity is 1;
  attribute C_RESULT_FRACTION_WIDTH : integer;
  attribute C_RESULT_FRACTION_WIDTH of fp_to_fix_floating_point_v7_1_7 : entity is 16;
  attribute C_RESULT_TDATA_WIDTH : integer;
  attribute C_RESULT_TDATA_WIDTH of fp_to_fix_floating_point_v7_1_7 : entity is 32;
  attribute C_RESULT_TUSER_WIDTH : integer;
  attribute C_RESULT_TUSER_WIDTH of fp_to_fix_floating_point_v7_1_7 : entity is 1;
  attribute C_RESULT_WIDTH : integer;
  attribute C_RESULT_WIDTH of fp_to_fix_floating_point_v7_1_7 : entity is 32;
  attribute C_THROTTLE_SCHEME : integer;
  attribute C_THROTTLE_SCHEME of fp_to_fix_floating_point_v7_1_7 : entity is 3;
  attribute C_TLAST_RESOLUTION : integer;
  attribute C_TLAST_RESOLUTION of fp_to_fix_floating_point_v7_1_7 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of fp_to_fix_floating_point_v7_1_7 : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp_to_fix_floating_point_v7_1_7 : entity is "floating_point_v7_1_7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fp_to_fix_floating_point_v7_1_7 : entity is "yes";
end fp_to_fix_floating_point_v7_1_7;

architecture STRUCTURE of fp_to_fix_floating_point_v7_1_7 is
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
  attribute C_A_FRACTION_WIDTH of i_synth : label is 17;
  attribute C_A_TDATA_WIDTH of i_synth : label is 24;
  attribute C_A_TUSER_WIDTH of i_synth : label is 1;
  attribute C_A_WIDTH of i_synth : label is 24;
  attribute C_BRAM_USAGE of i_synth : label is 0;
  attribute C_B_FRACTION_WIDTH of i_synth : label is 17;
  attribute C_B_TDATA_WIDTH of i_synth : label is 24;
  attribute C_B_TUSER_WIDTH of i_synth : label is 1;
  attribute C_B_WIDTH of i_synth : label is 24;
  attribute C_COMPARE_OPERATION of i_synth : label is 8;
  attribute C_C_FRACTION_WIDTH of i_synth : label is 17;
  attribute C_C_TDATA_WIDTH of i_synth : label is 24;
  attribute C_C_TUSER_WIDTH of i_synth : label is 1;
  attribute C_C_WIDTH of i_synth : label is 24;
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
  attribute C_HAS_FIX_TO_FLT of i_synth : label is 0;
  attribute C_HAS_FLT_TO_FIX of i_synth : label is 1;
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
  attribute C_LATENCY of i_synth : label is 1;
  attribute C_MULT_USAGE of i_synth : label is 0;
  attribute C_OPERATION_TDATA_WIDTH of i_synth : label is 8;
  attribute C_OPERATION_TUSER_WIDTH of i_synth : label is 1;
  attribute C_OPTIMIZATION of i_synth : label is 1;
  attribute C_RATE of i_synth : label is 1;
  attribute C_RESULT_FRACTION_WIDTH of i_synth : label is 16;
  attribute C_RESULT_TDATA_WIDTH of i_synth : label is 32;
  attribute C_RESULT_TUSER_WIDTH of i_synth : label is 1;
  attribute C_RESULT_WIDTH of i_synth : label is 32;
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
i_synth: entity work.fp_to_fix_floating_point_v7_1_7_viv
     port map (
      aclk => aclk,
      aclken => '0',
      aresetn => '0',
      m_axis_result_tdata(31 downto 0) => m_axis_result_tdata(31 downto 0),
      m_axis_result_tlast => NLW_i_synth_m_axis_result_tlast_UNCONNECTED,
      m_axis_result_tready => '0',
      m_axis_result_tuser(0) => NLW_i_synth_m_axis_result_tuser_UNCONNECTED(0),
      m_axis_result_tvalid => m_axis_result_tvalid,
      s_axis_a_tdata(23 downto 0) => s_axis_a_tdata(23 downto 0),
      s_axis_a_tlast => '0',
      s_axis_a_tready => NLW_i_synth_s_axis_a_tready_UNCONNECTED,
      s_axis_a_tuser(0) => '0',
      s_axis_a_tvalid => s_axis_a_tvalid,
      s_axis_b_tdata(23 downto 0) => B"000000000000000000000000",
      s_axis_b_tlast => '0',
      s_axis_b_tready => NLW_i_synth_s_axis_b_tready_UNCONNECTED,
      s_axis_b_tuser(0) => '0',
      s_axis_b_tvalid => '0',
      s_axis_c_tdata(23 downto 0) => B"000000000000000000000000",
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
entity fp_to_fix is
  port (
    aclk : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fp_to_fix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fp_to_fix : entity is "fp_to_fix,floating_point_v7_1_7,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fp_to_fix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fp_to_fix : entity is "floating_point_v7_1_7,Vivado 2018.3";
end fp_to_fix;

architecture STRUCTURE of fp_to_fix is
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
  attribute C_A_FRACTION_WIDTH of U0 : label is 17;
  attribute C_A_TDATA_WIDTH : integer;
  attribute C_A_TDATA_WIDTH of U0 : label is 24;
  attribute C_A_TUSER_WIDTH : integer;
  attribute C_A_TUSER_WIDTH of U0 : label is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 24;
  attribute C_BRAM_USAGE : integer;
  attribute C_BRAM_USAGE of U0 : label is 0;
  attribute C_B_FRACTION_WIDTH : integer;
  attribute C_B_FRACTION_WIDTH of U0 : label is 17;
  attribute C_B_TDATA_WIDTH : integer;
  attribute C_B_TDATA_WIDTH of U0 : label is 24;
  attribute C_B_TUSER_WIDTH : integer;
  attribute C_B_TUSER_WIDTH of U0 : label is 1;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 24;
  attribute C_COMPARE_OPERATION : integer;
  attribute C_COMPARE_OPERATION of U0 : label is 8;
  attribute C_C_FRACTION_WIDTH : integer;
  attribute C_C_FRACTION_WIDTH of U0 : label is 17;
  attribute C_C_TDATA_WIDTH : integer;
  attribute C_C_TDATA_WIDTH of U0 : label is 24;
  attribute C_C_TUSER_WIDTH : integer;
  attribute C_C_TUSER_WIDTH of U0 : label is 1;
  attribute C_C_WIDTH : integer;
  attribute C_C_WIDTH of U0 : label is 24;
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
  attribute C_HAS_FIX_TO_FLT of U0 : label is 0;
  attribute C_HAS_FLT_TO_FIX : integer;
  attribute C_HAS_FLT_TO_FIX of U0 : label is 1;
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
  attribute C_LATENCY of U0 : label is 1;
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
  attribute C_RESULT_FRACTION_WIDTH of U0 : label is 16;
  attribute C_RESULT_TDATA_WIDTH : integer;
  attribute C_RESULT_TDATA_WIDTH of U0 : label is 32;
  attribute C_RESULT_TUSER_WIDTH : integer;
  attribute C_RESULT_TUSER_WIDTH of U0 : label is 1;
  attribute C_RESULT_WIDTH : integer;
  attribute C_RESULT_WIDTH of U0 : label is 32;
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
  attribute x_interface_parameter of m_axis_result_tvalid : signal is "XIL_INTERFACENAME M_AXIS_RESULT, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_a_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID";
  attribute x_interface_parameter of s_axis_a_tvalid : signal is "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_result_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA";
  attribute x_interface_info of s_axis_a_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA";
begin
U0: entity work.fp_to_fix_floating_point_v7_1_7
     port map (
      aclk => aclk,
      aclken => '1',
      aresetn => '1',
      m_axis_result_tdata(31 downto 0) => m_axis_result_tdata(31 downto 0),
      m_axis_result_tlast => NLW_U0_m_axis_result_tlast_UNCONNECTED,
      m_axis_result_tready => '0',
      m_axis_result_tuser(0) => NLW_U0_m_axis_result_tuser_UNCONNECTED(0),
      m_axis_result_tvalid => m_axis_result_tvalid,
      s_axis_a_tdata(23 downto 0) => s_axis_a_tdata(23 downto 0),
      s_axis_a_tlast => '0',
      s_axis_a_tready => NLW_U0_s_axis_a_tready_UNCONNECTED,
      s_axis_a_tuser(0) => '0',
      s_axis_a_tvalid => s_axis_a_tvalid,
      s_axis_b_tdata(23 downto 0) => B"000000000000000000000000",
      s_axis_b_tlast => '0',
      s_axis_b_tready => NLW_U0_s_axis_b_tready_UNCONNECTED,
      s_axis_b_tuser(0) => '0',
      s_axis_b_tvalid => '0',
      s_axis_c_tdata(23 downto 0) => B"000000000000000000000000",
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
