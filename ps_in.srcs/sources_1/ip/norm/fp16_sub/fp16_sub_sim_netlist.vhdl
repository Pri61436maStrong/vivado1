-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Aug 12 16:06:26 2024
-- Host        : aic-ts running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/norm/fp16_sub/fp16_sub_sim_netlist.vhdl
-- Design      : fp16_sub
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z100ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_carry_chain is
  port (
    \zero_det_unreg[1]_3\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    p_8_out : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1_0\ : in STD_LOGIC;
    ext_del_distance : in STD_LOGIC_VECTOR ( 0 to 0 );
    \CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_carry_chain : entity is "carry_chain";
end fp16_sub_carry_chain;

architecture STRUCTURE of fp16_sub_carry_chain is
  signal \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_3_n_0\ : STD_LOGIC;
  signal carry_1 : STD_LOGIC;
  signal carry_2 : STD_LOGIC;
  signal carry_3 : STD_LOGIC;
  signal carry_4 : STD_LOGIC;
  signal carry_5 : STD_LOGIC;
  signal zero_det_in : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "FDE";
  attribute box_type : string;
  attribute box_type of \CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "FDE";
  attribute box_type of \CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[2].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "FDE";
  attribute box_type of \CHAIN_GEN[2].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "FDE";
  attribute box_type of \CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[4].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "FDE";
  attribute box_type of \CHAIN_GEN[4].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
begin
\CHAIN_GEN[0].CARRYS_DEL.NEED_DEL.CARRYS_FD\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => carry_1,
      Q => zero_det_in(1),
      R => '0'
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carry_4,
      CO(2) => carry_3,
      CO(1) => carry_2,
      CO(0) => carry_1,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD_0\(3 downto 0)
    );
\CHAIN_GEN[1].CARRYS_DEL.NEED_DEL.CARRYS_FD\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => carry_2,
      Q => zero_det_in(2),
      R => '0'
    );
\CHAIN_GEN[2].CARRYS_DEL.NEED_DEL.CARRYS_FD\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => carry_3,
      Q => zero_det_in(3),
      R => '0'
    );
\CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => carry_4,
      Q => zero_det_in(4),
      R => '0'
    );
\CHAIN_GEN[4].CARRYS_DEL.NEED_DEL.CARRYS_FD\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => carry_5,
      Q => zero_det_in(5),
      R => '0'
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_4,
      CO(3 downto 1) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => carry_5,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => '0'
    );
\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBABABABBAAAAAAA"
    )
        port map (
      I0 => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_3_n_0\,
      I1 => ext_del_distance(0),
      I2 => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1_0\,
      I3 => p_8_out(1),
      I4 => zero_det_in(1),
      I5 => p_8_out(0),
      O => \zero_det_unreg[1]_3\(0)
    );
\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF80800000808"
    )
        port map (
      I0 => zero_det_in(4),
      I1 => p_8_out(4),
      I2 => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1_0\,
      I3 => zero_det_in(5),
      I4 => ext_del_distance(0),
      I5 => p_8_out(5),
      O => \zero_det_unreg[1]_3\(1)
    );
\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80808000000000"
    )
        port map (
      I0 => zero_det_in(3),
      I1 => p_8_out(3),
      I2 => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1_0\,
      I3 => p_8_out(2),
      I4 => zero_det_in(2),
      I5 => ext_del_distance(0),
      O => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_carry_chain__parameterized1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    A : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \opt_has_pipe.first_q_reg[10]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    CARRY_IN : in STD_LOGIC;
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_carry_chain__parameterized1\ : entity is "carry_chain";
end \fp16_sub_carry_chain__parameterized1\;

architecture STRUCTURE of \fp16_sub_carry_chain__parameterized1\ is
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[8].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[9].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
begin
  \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ <= lopt;
  Q(10 downto 0) <= \^q\(10 downto 0);
  \^q\(0) <= lopt_1;
\CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => \opt_has_pipe.first_q_reg[10]\(4 downto 1),
      O(3 downto 0) => \^q\(4 downto 1),
      S(3 downto 0) => A(4 downto 1)
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[8].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => \opt_has_pipe.first_q_reg[10]\(8 downto 5),
      O(3 downto 0) => \^q\(8 downto 5),
      S(3 downto 0) => A(8 downto 5)
    );
\CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[8].C_MUX.CARRY_MUX_n_0\,
      CO(3 downto 1) => \NLW_CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \CHAIN_GEN[9].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => \opt_has_pipe.first_q_reg[10]\(9),
      O(3 downto 2) => \NLW_CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \^q\(10 downto 9),
      S(3 downto 2) => \NLW_CHAIN_GEN[9].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1 downto 0) => A(10 downto 9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_carry_chain__parameterized10\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_carry_chain__parameterized10\ : entity is "carry_chain";
end \fp16_sub_carry_chain__parameterized10\;

architecture STRUCTURE of \fp16_sub_carry_chain__parameterized10\ is
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal a_xor_b : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ext_mux : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
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
      CO(3) => \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 0) => Q(3 downto 0),
      S(3 downto 1) => ext_mux(3 downto 1),
      S(0) => a_xor_b(0)
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => s_axis_b_tdata(0),
      I1 => CO(0),
      I2 => s_axis_a_tdata(0),
      O => a_xor_b(0)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_b_tdata(1),
      I1 => CO(0),
      I2 => s_axis_a_tdata(1),
      O => ext_mux(1)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_b_tdata(2),
      I1 => CO(0),
      I2 => s_axis_a_tdata(2),
      O => ext_mux(2)
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_b_tdata(3),
      I1 => CO(0),
      I2 => s_axis_a_tdata(3),
      O => ext_mux(3)
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\(3),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => Q(7 downto 4),
      S(3) => '0',
      S(2 downto 0) => ext_mux(6 downto 4)
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_b_tdata(4),
      I1 => CO(0),
      I2 => s_axis_a_tdata(4),
      O => ext_mux(4)
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_b_tdata(5),
      I1 => CO(0),
      I2 => s_axis_a_tdata(5),
      O => ext_mux(5)
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_b_tdata(6),
      I1 => CO(0),
      I2 => s_axis_a_tdata(6),
      O => ext_mux(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_carry_chain__parameterized2\ is
  port (
    \CHAIN_GEN[3].C_MUX.CARRY_MUX_0\ : out STD_LOGIC;
    CARRYS_OUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    A : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_carry_chain__parameterized2\ : entity is "carry_chain";
end \fp16_sub_carry_chain__parameterized2\;

architecture STRUCTURE of \fp16_sub_carry_chain__parameterized2\ is
  signal \^carrys_out\ : STD_LOGIC_VECTOR ( 7 downto 0 );
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
  CARRYS_OUT(7 downto 0) <= \^carrys_out\(7 downto 0);
\CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => \^carrys_out\(3 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => A(3 downto 0)
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \^carrys_out\(3),
      CO(3 downto 0) => \^carrys_out\(7 downto 4),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => A(7 downto 4)
    );
\opt_has_pipe.first_q[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^carrys_out\(7),
      I1 => \^carrys_out\(3),
      O => \CHAIN_GEN[3].C_MUX.CARRY_MUX_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_carry_chain__parameterized3\ is
  port (
    \CHAIN_GEN[7].C_MUX.CARRY_MUX\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_carry_chain__parameterized3\ : entity is "carry_chain";
end \fp16_sub_carry_chain__parameterized3\;

architecture STRUCTURE of \fp16_sub_carry_chain__parameterized3\ is
  signal \^opt_has_pipe.first_q_reg[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
begin
  \opt_has_pipe.first_q_reg[1]\(1 downto 0) <= \^opt_has_pipe.first_q_reg[1]\(1 downto 0);
\CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1 downto 0) => \^opt_has_pipe.first_q_reg[1]\(1 downto 0),
      CYINIT => '1',
      DI(3 downto 2) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1 downto 0) => A(1 downto 0)
    );
\opt_has_pipe.first_q[0]_i_1__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[1]\(1),
      I1 => CARRYS_OUT(0),
      O => \CHAIN_GEN[7].C_MUX.CARRY_MUX\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_carry_chain__parameterized4\ is
  port (
    CARRY_OUT : out STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    lopt : out STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : in STD_LOGIC;
    lopt_3 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_carry_chain__parameterized4\ : entity is "carry_chain";
end \fp16_sub_carry_chain__parameterized4\;

architecture STRUCTURE of \fp16_sub_carry_chain__parameterized4\ is
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
      CO(2) => CARRY_OUT,
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
entity \fp16_sub_carry_chain__parameterized5\ is
  port (
    round_mant : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CARRY_OUT : out STD_LOGIC;
    \RESULT_REG.NORMAL.mant_op_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
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
  attribute ORIG_REF_NAME of \fp16_sub_carry_chain__parameterized5\ : entity is "carry_chain";
end \fp16_sub_carry_chain__parameterized5\;

architecture STRUCTURE of \fp16_sub_carry_chain__parameterized5\ is
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
      S(3 downto 0) => \RESULT_REG.NORMAL.mant_op_reg[7]\(4 downto 1)
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
      S(2 downto 0) => \RESULT_REG.NORMAL.mant_op_reg[7]\(7 downto 5)
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
entity \fp16_sub_carry_chain__parameterized6\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \RESULT_REG.NORMAL.mant_op_reg[15]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CARRY_IN : in STD_LOGIC;
    lopt : in STD_LOGIC;
    lopt_1 : out STD_LOGIC;
    lopt_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_carry_chain__parameterized6\ : entity is "carry_chain";
end \fp16_sub_carry_chain__parameterized6\;

architecture STRUCTURE of \fp16_sub_carry_chain__parameterized6\ is
  signal \<const0>\ : STD_LOGIC;
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
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
  Q(8 downto 0) <= \^q\(8 downto 0);
  \^q\(0) <= lopt_2;
  lopt_1 <= \<const0>\;
\CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^q\(4 downto 1),
      S(3 downto 0) => \RESULT_REG.NORMAL.mant_op_reg[15]\(4 downto 1)
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
      O(3 downto 0) => \^q\(8 downto 5),
      S(3) => '1',
      S(2 downto 0) => \RESULT_REG.NORMAL.mant_op_reg[15]\(7 downto 5)
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
entity \fp16_sub_carry_chain__parameterized8\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    det_invalid_op : out STD_LOGIC;
    det_sign : out STD_LOGIC;
    b_exp_flt_all_one : in STD_LOGIC;
    \a_is_inf__0\ : in STD_LOGIC;
    zero_largest : in STD_LOGIC;
    CARRY_OUT : in STD_LOGIC;
    a_exp_flt_all_one : in STD_LOGIC;
    subtract : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_carry_chain__parameterized8\ : entity is "carry_chain";
end \fp16_sub_carry_chain__parameterized8\;

architecture STRUCTURE of \fp16_sub_carry_chain__parameterized8\ is
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \a_and_b_inf_mux__0\ : STD_LOGIC;
  signal \a_or_b_nan_mux__2\ : STD_LOGIC;
  signal b_mant_is_zero : STD_LOGIC;
  signal chunk_det : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \opt_has_pipe.first_q[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[0]_i_3__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[0]_i_4__0\ : label is "soft_lutpair1";
begin
\CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => b_mant_is_zero,
      CO(1) => \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '1',
      DI(3) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\(3),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\(3),
      S(2 downto 0) => chunk_det(2 downto 0)
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axis_b_tdata(2),
      I1 => s_axis_b_tdata(3),
      I2 => s_axis_b_tdata(0),
      I3 => s_axis_b_tdata(1),
      I4 => s_axis_b_tdata(5),
      I5 => s_axis_b_tdata(4),
      O => chunk_det(0)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axis_b_tdata(8),
      I1 => s_axis_b_tdata(9),
      I2 => s_axis_b_tdata(6),
      I3 => s_axis_b_tdata(7),
      I4 => s_axis_b_tdata(11),
      I5 => s_axis_b_tdata(10),
      O => chunk_det(1)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_b_tdata(13),
      I1 => s_axis_b_tdata(12),
      I2 => s_axis_b_tdata(15),
      I3 => s_axis_b_tdata(14),
      O => chunk_det(2)
    );
\opt_has_pipe.first_q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000082"
    )
        port map (
      I0 => \a_and_b_inf_mux__0\,
      I1 => s_axis_b_tdata(16),
      I2 => s_axis_a_tdata(0),
      I3 => zero_largest,
      I4 => \a_or_b_nan_mux__2\,
      O => det_invalid_op
    );
\opt_has_pipe.first_q[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00100010FF320010"
    )
        port map (
      I0 => \a_and_b_inf_mux__0\,
      I1 => \a_or_b_nan_mux__2\,
      I2 => \opt_has_pipe.first_q[0]_i_2__0_n_0\,
      I3 => zero_largest,
      I4 => s_axis_a_tdata(0),
      I5 => s_axis_b_tdata(16),
      O => det_sign
    );
\opt_has_pipe.first_q[0]_i_1__12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFF8"
    )
        port map (
      I0 => b_mant_is_zero,
      I1 => b_exp_flt_all_one,
      I2 => \a_is_inf__0\,
      I3 => \a_and_b_inf_mux__0\,
      I4 => \a_or_b_nan_mux__2\,
      I5 => zero_largest,
      O => D(0)
    );
\opt_has_pipe.first_q[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA2AAAFFAAEA"
    )
        port map (
      I0 => s_axis_a_tdata(0),
      I1 => b_mant_is_zero,
      I2 => b_exp_flt_all_one,
      I3 => \a_is_inf__0\,
      I4 => \opt_has_pipe.first_q_reg[0]\,
      I5 => s_axis_b_tdata(16),
      O => \opt_has_pipe.first_q[0]_i_2__0_n_0\
    );
\opt_has_pipe.first_q[0]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => b_mant_is_zero,
      I1 => \a_is_inf__0\,
      I2 => b_exp_flt_all_one,
      O => \a_and_b_inf_mux__0\
    );
\opt_has_pipe.first_q[0]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => b_mant_is_zero,
      I1 => b_exp_flt_all_one,
      I2 => CARRY_OUT,
      I3 => a_exp_flt_all_one,
      O => \a_or_b_nan_mux__2\
    );
\opt_has_pipe.first_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAAEAEAEFAAEAEA"
    )
        port map (
      I0 => zero_largest,
      I1 => b_mant_is_zero,
      I2 => b_exp_flt_all_one,
      I3 => CARRY_OUT,
      I4 => a_exp_flt_all_one,
      I5 => subtract,
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_carry_chain__parameterized8_10\ is
  port (
    \a_is_inf__0\ : out STD_LOGIC;
    CARRY_OUT : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_carry_chain__parameterized8_10\ : entity is "carry_chain";
end \fp16_sub_carry_chain__parameterized8_10\;

architecture STRUCTURE of \fp16_sub_carry_chain__parameterized8_10\ is
  signal \^carry_out\ : STD_LOGIC;
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal chunk_det : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
begin
  CARRY_OUT <= \^carry_out\;
\CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => \^carry_out\,
      CO(1) => \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '1',
      DI(3) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\(3),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\(3),
      S(2 downto 0) => chunk_det(2 downto 0)
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axis_a_tdata(2),
      I1 => s_axis_a_tdata(3),
      I2 => s_axis_a_tdata(0),
      I3 => s_axis_a_tdata(1),
      I4 => s_axis_a_tdata(5),
      I5 => s_axis_a_tdata(4),
      O => chunk_det(0)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axis_a_tdata(8),
      I1 => s_axis_a_tdata(9),
      I2 => s_axis_a_tdata(6),
      I3 => s_axis_a_tdata(7),
      I4 => s_axis_a_tdata(11),
      I5 => s_axis_a_tdata(10),
      O => chunk_det(1)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_a_tdata(13),
      I1 => s_axis_a_tdata(12),
      I2 => s_axis_a_tdata(15),
      I3 => s_axis_a_tdata(14),
      O => chunk_det(2)
    );
\opt_has_pipe.first_q[0]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s_axis_a_tdata(18),
      I1 => s_axis_a_tdata(17),
      I2 => s_axis_a_tdata(16),
      I3 => \opt_has_pipe.first_q_reg[0]\,
      I4 => \^carry_out\,
      O => \a_is_inf__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_carry_chain__parameterized9\ is
  port (
    \s_axis_b_tdata[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CARRYS_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axis_b_tdata[16]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axis_a_tdata_0_sp_1 : out STD_LOGIC;
    \s_axis_a_tdata[16]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_a_tdata_4_sp_1 : out STD_LOGIC;
    s_axis_a_tdata_8_sp_1 : out STD_LOGIC;
    s_axis_a_tdata_12_sp_1 : out STD_LOGIC;
    s_axis_b_tdata_14_sp_1 : out STD_LOGIC;
    zero_largest : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 22 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 22 downto 0 );
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[10]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[10]_0\ : in STD_LOGIC;
    \align_dist_0_ip__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_carry_chain__parameterized9\ : entity is "carry_chain";
end \fp16_sub_carry_chain__parameterized9\;

architecture STRUCTURE of \fp16_sub_carry_chain__parameterized9\ is
  signal \ADD_MANT_GEN[0].di_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[0].lut_op_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[10].di_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[10].lut_op_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[11].di_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[11].lut_op_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[1].di_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[1].lut_op_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[2].di_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[2].lut_op_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[3].di_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[3].lut_op_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[4].di_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[4].lut_op_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[5].di_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[5].lut_op_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[6].di_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[6].lut_op_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[7].di_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[7].lut_op_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[8].di_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[8].lut_op_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[9].di_reg\ : STD_LOGIC;
  signal \ADD_MANT_GEN[9].lut_op_reg\ : STD_LOGIC;
  signal \ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/p_26_in\ : STD_LOGIC;
  signal \ALIGN_BLK/sml_shift_mux__16\ : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \^carrys_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[10].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[8].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[9].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \^s_axis_a_tdata[16]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal s_axis_a_tdata_0_sn_1 : STD_LOGIC;
  signal s_axis_a_tdata_12_sn_1 : STD_LOGIC;
  signal s_axis_a_tdata_4_sn_1 : STD_LOGIC;
  signal s_axis_a_tdata_8_sn_1 : STD_LOGIC;
  signal s_axis_b_tdata_14_sn_1 : STD_LOGIC;
  signal sml_mant_mux : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_4\ : label is "soft_lutpair6";
  attribute OPT_MODIFIED of \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[0]_i_1__2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[1]_i_1__1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[1]_i_1__4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[1]_i_2__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[2]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[2]_i_1__1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[3]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[9]_i_1__0\ : label is "soft_lutpair5";
begin
  CARRYS_OUT(0) <= \^carrys_out\(0);
  \s_axis_a_tdata[16]\(6 downto 0) <= \^s_axis_a_tdata[16]\(6 downto 0);
  s_axis_a_tdata_0_sp_1 <= s_axis_a_tdata_0_sn_1;
  s_axis_a_tdata_12_sp_1 <= s_axis_a_tdata_12_sn_1;
  s_axis_a_tdata_4_sp_1 <= s_axis_a_tdata_4_sn_1;
  s_axis_a_tdata_8_sp_1 <= s_axis_a_tdata_8_sn_1;
  s_axis_b_tdata_14_sp_1 <= s_axis_b_tdata_14_sn_1;
\CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3) => \ADD_MANT_GEN[3].di_reg\,
      DI(2) => \ADD_MANT_GEN[2].di_reg\,
      DI(1) => \ADD_MANT_GEN[1].di_reg\,
      DI(0) => \ADD_MANT_GEN[0].di_reg\,
      O(3 downto 0) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \ADD_MANT_GEN[3].lut_op_reg\,
      S(2) => \ADD_MANT_GEN[2].lut_op_reg\,
      S(1) => \ADD_MANT_GEN[1].lut_op_reg\,
      S(0) => \ADD_MANT_GEN[0].lut_op_reg\
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004700470047"
    )
        port map (
      I0 => s_axis_a_tdata(0),
      I1 => \^carrys_out\(0),
      I2 => s_axis_b_tdata(0),
      I3 => sml_mant_mux(1),
      I4 => \align_dist_0_ip__0\,
      I5 => sml_mant_mux(2),
      O => A(0)
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_axis_a_tdata(0),
      I1 => s_axis_b_tdata(0),
      I2 => s_axis_b_tdata(1),
      I3 => s_axis_a_tdata(1),
      O => \ADD_MANT_GEN[0].lut_op_reg\
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_axis_b_tdata(0),
      I1 => s_axis_a_tdata(0),
      I2 => s_axis_a_tdata(1),
      I3 => s_axis_b_tdata(1),
      O => \ADD_MANT_GEN[0].di_reg\
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_a_tdata(1),
      I1 => \^carrys_out\(0),
      I2 => s_axis_b_tdata(1),
      O => sml_mant_mux(1)
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_a_tdata(2),
      I1 => \^carrys_out\(0),
      I2 => s_axis_b_tdata(2),
      O => sml_mant_mux(2)
    );
\CHAIN_GEN[10].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_axis_a_tdata(20),
      I1 => s_axis_b_tdata(20),
      I2 => s_axis_b_tdata(21),
      I3 => s_axis_a_tdata(21),
      O => \ADD_MANT_GEN[10].lut_op_reg\
    );
\CHAIN_GEN[10].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_axis_b_tdata(20),
      I1 => s_axis_a_tdata(20),
      I2 => s_axis_a_tdata(21),
      I3 => s_axis_b_tdata(21),
      O => \ADD_MANT_GEN[10].di_reg\
    );
\CHAIN_GEN[11].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_a_tdata(22),
      I1 => s_axis_b_tdata(22),
      O => \ADD_MANT_GEN[11].lut_op_reg\
    );
\CHAIN_GEN[11].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_b_tdata(22),
      I1 => s_axis_a_tdata(22),
      O => \ADD_MANT_GEN[11].di_reg\
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \ALIGN_BLK/sml_shift_mux__16\(5),
      I1 => \ALIGN_BLK/sml_shift_mux__16\(4),
      I2 => \ALIGN_BLK/sml_shift_mux__16\(3),
      I3 => \ALIGN_BLK/sml_shift_mux__16\(6),
      O => A(1)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_axis_a_tdata(2),
      I1 => s_axis_b_tdata(2),
      I2 => s_axis_b_tdata(3),
      I3 => s_axis_a_tdata(3),
      O => \ADD_MANT_GEN[1].lut_op_reg\
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_axis_b_tdata(2),
      I1 => s_axis_a_tdata(2),
      I2 => s_axis_a_tdata(3),
      I3 => s_axis_b_tdata(3),
      O => \ADD_MANT_GEN[1].di_reg\
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axis_a_tdata(5),
      I1 => s_axis_b_tdata(5),
      I2 => \align_dist_0_ip__0\,
      I3 => s_axis_a_tdata(4),
      I4 => \^carrys_out\(0),
      I5 => s_axis_b_tdata(4),
      O => \ALIGN_BLK/sml_shift_mux__16\(5)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axis_a_tdata(4),
      I1 => s_axis_b_tdata(4),
      I2 => \align_dist_0_ip__0\,
      I3 => s_axis_a_tdata(3),
      I4 => \^carrys_out\(0),
      I5 => s_axis_b_tdata(3),
      O => \ALIGN_BLK/sml_shift_mux__16\(4)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axis_a_tdata(3),
      I1 => s_axis_b_tdata(3),
      I2 => \align_dist_0_ip__0\,
      I3 => s_axis_a_tdata(2),
      I4 => \^carrys_out\(0),
      I5 => s_axis_b_tdata(2),
      O => \ALIGN_BLK/sml_shift_mux__16\(3)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axis_a_tdata(6),
      I1 => s_axis_b_tdata(6),
      I2 => \align_dist_0_ip__0\,
      I3 => s_axis_a_tdata(5),
      I4 => \^carrys_out\(0),
      I5 => s_axis_b_tdata(5),
      O => \ALIGN_BLK/sml_shift_mux__16\(6)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \ALIGN_BLK/sml_shift_mux__16\(9),
      I1 => \ALIGN_BLK/sml_shift_mux__16\(8),
      I2 => \ALIGN_BLK/sml_shift_mux__16\(7),
      I3 => \^s_axis_a_tdata[16]\(0),
      O => A(2)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_axis_a_tdata(4),
      I1 => s_axis_b_tdata(4),
      I2 => s_axis_b_tdata(5),
      I3 => s_axis_a_tdata(5),
      O => \ADD_MANT_GEN[2].lut_op_reg\
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_axis_b_tdata(4),
      I1 => s_axis_a_tdata(4),
      I2 => s_axis_a_tdata(5),
      I3 => s_axis_b_tdata(5),
      O => \ADD_MANT_GEN[2].di_reg\
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axis_a_tdata(9),
      I1 => s_axis_b_tdata(9),
      I2 => \align_dist_0_ip__0\,
      I3 => s_axis_a_tdata(8),
      I4 => \^carrys_out\(0),
      I5 => s_axis_b_tdata(8),
      O => \ALIGN_BLK/sml_shift_mux__16\(9)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axis_a_tdata(8),
      I1 => s_axis_b_tdata(8),
      I2 => \align_dist_0_ip__0\,
      I3 => s_axis_a_tdata(7),
      I4 => \^carrys_out\(0),
      I5 => s_axis_b_tdata(7),
      O => \ALIGN_BLK/sml_shift_mux__16\(8)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axis_a_tdata(7),
      I1 => s_axis_b_tdata(7),
      I2 => \align_dist_0_ip__0\,
      I3 => s_axis_a_tdata(6),
      I4 => \^carrys_out\(0),
      I5 => s_axis_b_tdata(6),
      O => \ALIGN_BLK/sml_shift_mux__16\(7)
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^s_axis_a_tdata[16]\(3),
      I1 => \^s_axis_a_tdata[16]\(2),
      I2 => \^s_axis_a_tdata[16]\(1),
      I3 => \^s_axis_a_tdata[16]\(4),
      O => A(3)
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_axis_a_tdata(6),
      I1 => s_axis_b_tdata(6),
      I2 => s_axis_b_tdata(7),
      I3 => s_axis_a_tdata(7),
      O => \ADD_MANT_GEN[3].lut_op_reg\
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_axis_b_tdata(6),
      I1 => s_axis_a_tdata(6),
      I2 => s_axis_a_tdata(7),
      I3 => s_axis_b_tdata(7),
      O => \ADD_MANT_GEN[3].di_reg\
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3) => \ADD_MANT_GEN[7].di_reg\,
      DI(2) => \ADD_MANT_GEN[6].di_reg\,
      DI(1) => \ADD_MANT_GEN[5].di_reg\,
      DI(0) => \ADD_MANT_GEN[4].di_reg\,
      O(3 downto 0) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \ADD_MANT_GEN[7].lut_op_reg\,
      S(2) => \ADD_MANT_GEN[6].lut_op_reg\,
      S(1) => \ADD_MANT_GEN[5].lut_op_reg\,
      S(0) => \ADD_MANT_GEN[4].lut_op_reg\
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_axis_a_tdata(8),
      I1 => s_axis_b_tdata(8),
      I2 => s_axis_b_tdata(9),
      I3 => s_axis_a_tdata(9),
      O => \ADD_MANT_GEN[4].lut_op_reg\
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_axis_b_tdata(8),
      I1 => s_axis_a_tdata(8),
      I2 => s_axis_a_tdata(9),
      I3 => s_axis_b_tdata(9),
      O => \ADD_MANT_GEN[4].di_reg\
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_axis_a_tdata(10),
      I1 => s_axis_b_tdata(10),
      I2 => s_axis_b_tdata(11),
      I3 => s_axis_a_tdata(11),
      O => \ADD_MANT_GEN[5].lut_op_reg\
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_axis_b_tdata(10),
      I1 => s_axis_a_tdata(10),
      I2 => s_axis_a_tdata(11),
      I3 => s_axis_b_tdata(11),
      O => \ADD_MANT_GEN[5].di_reg\
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_axis_a_tdata(12),
      I1 => s_axis_b_tdata(12),
      I2 => s_axis_b_tdata(13),
      I3 => s_axis_a_tdata(13),
      O => \ADD_MANT_GEN[6].lut_op_reg\
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_axis_b_tdata(12),
      I1 => s_axis_a_tdata(12),
      I2 => s_axis_a_tdata(13),
      I3 => s_axis_b_tdata(13),
      O => \ADD_MANT_GEN[6].di_reg\
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_axis_a_tdata(14),
      I1 => s_axis_b_tdata(14),
      I2 => s_axis_b_tdata(15),
      I3 => s_axis_a_tdata(15),
      O => \ADD_MANT_GEN[7].lut_op_reg\
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_axis_b_tdata(14),
      I1 => s_axis_a_tdata(14),
      I2 => s_axis_a_tdata(15),
      I3 => s_axis_b_tdata(15),
      O => \ADD_MANT_GEN[7].di_reg\
    );
\CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \^carrys_out\(0),
      CO(2) => \CHAIN_GEN[10].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[9].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[8].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3) => \ADD_MANT_GEN[11].di_reg\,
      DI(2) => \ADD_MANT_GEN[10].di_reg\,
      DI(1) => \ADD_MANT_GEN[9].di_reg\,
      DI(0) => \ADD_MANT_GEN[8].di_reg\,
      O(3 downto 0) => \NLW_CHAIN_GEN[8].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \ADD_MANT_GEN[11].lut_op_reg\,
      S(2) => \ADD_MANT_GEN[10].lut_op_reg\,
      S(1) => \ADD_MANT_GEN[9].lut_op_reg\,
      S(0) => \ADD_MANT_GEN[8].lut_op_reg\
    );
\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_axis_b_tdata(16),
      I1 => s_axis_a_tdata(16),
      I2 => s_axis_b_tdata(17),
      I3 => s_axis_a_tdata(17),
      O => \ADD_MANT_GEN[8].lut_op_reg\
    );
\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_axis_b_tdata(16),
      I1 => s_axis_a_tdata(16),
      I2 => s_axis_a_tdata(17),
      I3 => s_axis_b_tdata(17),
      O => \ADD_MANT_GEN[8].di_reg\
    );
\CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s_axis_a_tdata(18),
      I1 => s_axis_b_tdata(18),
      I2 => s_axis_b_tdata(19),
      I3 => s_axis_a_tdata(19),
      O => \ADD_MANT_GEN[9].lut_op_reg\
    );
\CHAIN_GEN[9].C_MUX.CARRY_MUX_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => s_axis_b_tdata(18),
      I1 => s_axis_a_tdata(18),
      I2 => s_axis_a_tdata(19),
      I3 => s_axis_b_tdata(19),
      O => \ADD_MANT_GEN[9].di_reg\
    );
\opt_has_pipe.first_q[0]_i_1__10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5140"
    )
        port map (
      I0 => zero_largest,
      I1 => \^carrys_out\(0),
      I2 => s_axis_b_tdata(7),
      I3 => s_axis_a_tdata(7),
      O => \s_axis_b_tdata[15]\(7)
    );
\opt_has_pipe.first_q[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4747FF"
    )
        port map (
      I0 => s_axis_a_tdata(0),
      I1 => \^carrys_out\(0),
      I2 => s_axis_b_tdata(0),
      I3 => s_axis_b_tdata(16),
      I4 => s_axis_a_tdata(16),
      O => s_axis_a_tdata_0_sn_1
    );
\opt_has_pipe.first_q[0]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC0"
    )
        port map (
      I0 => \^s_axis_a_tdata[16]\(5),
      I1 => \ALIGN_BLK/sml_shift_mux__16\(7),
      I2 => \opt_has_pipe.first_q_reg[0]_0\,
      I3 => \opt_has_pipe.first_q_reg[0]\,
      O => \s_axis_b_tdata[16]\(0)
    );
\opt_has_pipe.first_q[0]_i_1__9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5140"
    )
        port map (
      I0 => zero_largest,
      I1 => \^carrys_out\(0),
      I2 => s_axis_b_tdata(0),
      I3 => s_axis_a_tdata(0),
      O => \s_axis_b_tdata[15]\(0)
    );
\opt_has_pipe.first_q[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF909090"
    )
        port map (
      I0 => s_axis_b_tdata(16),
      I1 => s_axis_a_tdata(16),
      I2 => \opt_has_pipe.first_q_reg[10]\,
      I3 => \ALIGN_BLK/sml_shift_mux__16\(9),
      I4 => \opt_has_pipe.first_q_reg[10]_0\,
      O => \s_axis_b_tdata[16]\(10)
    );
\opt_has_pipe.first_q[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axis_a_tdata(10),
      I1 => s_axis_b_tdata(10),
      I2 => \align_dist_0_ip__0\,
      I3 => s_axis_a_tdata(9),
      I4 => \^carrys_out\(0),
      I5 => s_axis_b_tdata(9),
      O => \^s_axis_a_tdata[16]\(0)
    );
\opt_has_pipe.first_q[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axis_a_tdata(11),
      I1 => s_axis_b_tdata(11),
      I2 => \align_dist_0_ip__0\,
      I3 => s_axis_a_tdata(10),
      I4 => \^carrys_out\(0),
      I5 => s_axis_b_tdata(10),
      O => \^s_axis_a_tdata[16]\(1)
    );
\opt_has_pipe.first_q[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axis_a_tdata(12),
      I1 => s_axis_b_tdata(12),
      I2 => \align_dist_0_ip__0\,
      I3 => s_axis_a_tdata(11),
      I4 => \^carrys_out\(0),
      I5 => s_axis_b_tdata(11),
      O => \^s_axis_a_tdata[16]\(2)
    );
\opt_has_pipe.first_q[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axis_a_tdata(13),
      I1 => s_axis_b_tdata(13),
      I2 => \align_dist_0_ip__0\,
      I3 => s_axis_a_tdata(12),
      I4 => \^carrys_out\(0),
      I5 => s_axis_b_tdata(12),
      O => \^s_axis_a_tdata[16]\(3)
    );
\opt_has_pipe.first_q[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axis_a_tdata(14),
      I1 => s_axis_b_tdata(14),
      I2 => \align_dist_0_ip__0\,
      I3 => s_axis_a_tdata(13),
      I4 => \^carrys_out\(0),
      I5 => s_axis_b_tdata(13),
      O => \^s_axis_a_tdata[16]\(4)
    );
\opt_has_pipe.first_q[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axis_a_tdata(15),
      I1 => s_axis_b_tdata(15),
      I2 => \align_dist_0_ip__0\,
      I3 => s_axis_a_tdata(14),
      I4 => \^carrys_out\(0),
      I5 => s_axis_b_tdata(14),
      O => \^s_axis_a_tdata[16]\(5)
    );
\opt_has_pipe.first_q[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF666F6"
    )
        port map (
      I0 => s_axis_a_tdata(16),
      I1 => s_axis_b_tdata(16),
      I2 => s_axis_b_tdata(15),
      I3 => \^carrys_out\(0),
      I4 => s_axis_a_tdata(15),
      O => \^s_axis_a_tdata[16]\(6)
    );
\opt_has_pipe.first_q[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C0CFA0A"
    )
        port map (
      I0 => \ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/p_26_in\,
      I1 => \ALIGN_BLK/sml_shift_mux__16\(8),
      I2 => \opt_has_pipe.first_q_reg[0]\,
      I3 => \^s_axis_a_tdata[16]\(6),
      I4 => \opt_has_pipe.first_q_reg[0]_0\,
      O => \s_axis_b_tdata[16]\(1)
    );
\opt_has_pipe.first_q[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ALIGN_BLK/sml_shift_mux__16\(4),
      I1 => \ALIGN_BLK/sml_shift_mux__16\(3),
      O => s_axis_a_tdata_4_sn_1
    );
\opt_has_pipe.first_q[1]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5140"
    )
        port map (
      I0 => zero_largest,
      I1 => \^carrys_out\(0),
      I2 => s_axis_b_tdata(1),
      I3 => s_axis_a_tdata(1),
      O => \s_axis_b_tdata[15]\(1)
    );
\opt_has_pipe.first_q[1]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5140"
    )
        port map (
      I0 => zero_largest,
      I1 => \^carrys_out\(0),
      I2 => s_axis_b_tdata(8),
      I3 => s_axis_a_tdata(8),
      O => \s_axis_b_tdata[15]\(8)
    );
\opt_has_pipe.first_q[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66600060"
    )
        port map (
      I0 => s_axis_a_tdata(16),
      I1 => s_axis_b_tdata(16),
      I2 => s_axis_b_tdata(0),
      I3 => \^carrys_out\(0),
      I4 => s_axis_a_tdata(0),
      O => \ALIGN_BLK/ALIGN_SHIFT/ALIGN_Z_D/p_26_in\
    );
\opt_has_pipe.first_q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFA0C0A0C0A0CFA"
    )
        port map (
      I0 => \ALIGN_BLK/sml_shift_mux__16\(1),
      I1 => \ALIGN_BLK/sml_shift_mux__16\(9),
      I2 => \opt_has_pipe.first_q_reg[0]\,
      I3 => \opt_has_pipe.first_q_reg[0]_0\,
      I4 => s_axis_a_tdata(16),
      I5 => s_axis_b_tdata(16),
      O => \s_axis_b_tdata[16]\(2)
    );
\opt_has_pipe.first_q[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ALIGN_BLK/sml_shift_mux__16\(8),
      I1 => \ALIGN_BLK/sml_shift_mux__16\(7),
      O => s_axis_a_tdata_8_sn_1
    );
\opt_has_pipe.first_q[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5140"
    )
        port map (
      I0 => zero_largest,
      I1 => \^carrys_out\(0),
      I2 => s_axis_b_tdata(2),
      I3 => s_axis_a_tdata(2),
      O => \s_axis_b_tdata[15]\(2)
    );
\opt_has_pipe.first_q[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5140"
    )
        port map (
      I0 => zero_largest,
      I1 => \^carrys_out\(0),
      I2 => s_axis_b_tdata(9),
      I3 => s_axis_a_tdata(9),
      O => \s_axis_b_tdata[15]\(9)
    );
\opt_has_pipe.first_q[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axis_a_tdata(1),
      I1 => s_axis_b_tdata(1),
      I2 => \align_dist_0_ip__0\,
      I3 => s_axis_a_tdata(0),
      I4 => \^carrys_out\(0),
      I5 => s_axis_b_tdata(0),
      O => \ALIGN_BLK/sml_shift_mux__16\(1)
    );
\opt_has_pipe.first_q[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_a_tdata[16]\(0),
      I1 => \opt_has_pipe.first_q_reg[10]\,
      I2 => \ALIGN_BLK/sml_shift_mux__16\(2),
      I3 => \opt_has_pipe.first_q_reg[10]_0\,
      O => \s_axis_b_tdata[16]\(3)
    );
\opt_has_pipe.first_q[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axis_a_tdata[16]\(2),
      I1 => \^s_axis_a_tdata[16]\(1),
      O => s_axis_a_tdata_12_sn_1
    );
\opt_has_pipe.first_q[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5140"
    )
        port map (
      I0 => zero_largest,
      I1 => \^carrys_out\(0),
      I2 => s_axis_b_tdata(3),
      I3 => s_axis_a_tdata(3),
      O => \s_axis_b_tdata[15]\(3)
    );
\opt_has_pipe.first_q[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5140"
    )
        port map (
      I0 => zero_largest,
      I1 => \^carrys_out\(0),
      I2 => s_axis_b_tdata(10),
      I3 => s_axis_a_tdata(10),
      O => \s_axis_b_tdata[15]\(10)
    );
\opt_has_pipe.first_q[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axis_a_tdata(2),
      I1 => s_axis_b_tdata(2),
      I2 => \align_dist_0_ip__0\,
      I3 => s_axis_a_tdata(1),
      I4 => \^carrys_out\(0),
      I5 => s_axis_b_tdata(1),
      O => \ALIGN_BLK/sml_shift_mux__16\(2)
    );
\opt_has_pipe.first_q[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_a_tdata[16]\(1),
      I1 => \opt_has_pipe.first_q_reg[10]\,
      I2 => \ALIGN_BLK/sml_shift_mux__16\(3),
      I3 => \opt_has_pipe.first_q_reg[10]_0\,
      O => \s_axis_b_tdata[16]\(4)
    );
\opt_has_pipe.first_q[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5140"
    )
        port map (
      I0 => zero_largest,
      I1 => \^carrys_out\(0),
      I2 => s_axis_b_tdata(4),
      I3 => s_axis_a_tdata(4),
      O => \s_axis_b_tdata[15]\(4)
    );
\opt_has_pipe.first_q[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5140"
    )
        port map (
      I0 => zero_largest,
      I1 => \^carrys_out\(0),
      I2 => s_axis_b_tdata(11),
      I3 => s_axis_a_tdata(11),
      O => \s_axis_b_tdata[15]\(11)
    );
\opt_has_pipe.first_q[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000011000C001D"
    )
        port map (
      I0 => s_axis_b_tdata(14),
      I1 => \^carrys_out\(0),
      I2 => s_axis_a_tdata(14),
      I3 => \align_dist_0_ip__0\,
      I4 => s_axis_b_tdata(15),
      I5 => s_axis_a_tdata(15),
      O => s_axis_b_tdata_14_sn_1
    );
\opt_has_pipe.first_q[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_a_tdata[16]\(2),
      I1 => \opt_has_pipe.first_q_reg[10]\,
      I2 => \ALIGN_BLK/sml_shift_mux__16\(4),
      I3 => \opt_has_pipe.first_q_reg[10]_0\,
      O => \s_axis_b_tdata[16]\(5)
    );
\opt_has_pipe.first_q[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5140"
    )
        port map (
      I0 => zero_largest,
      I1 => \^carrys_out\(0),
      I2 => s_axis_b_tdata(5),
      I3 => s_axis_a_tdata(5),
      O => \s_axis_b_tdata[15]\(5)
    );
\opt_has_pipe.first_q[5]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5140"
    )
        port map (
      I0 => zero_largest,
      I1 => \^carrys_out\(0),
      I2 => s_axis_b_tdata(12),
      I3 => s_axis_a_tdata(12),
      O => \s_axis_b_tdata[15]\(12)
    );
\opt_has_pipe.first_q[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_a_tdata[16]\(3),
      I1 => \opt_has_pipe.first_q_reg[10]\,
      I2 => \ALIGN_BLK/sml_shift_mux__16\(5),
      I3 => \opt_has_pipe.first_q_reg[10]_0\,
      O => \s_axis_b_tdata[16]\(6)
    );
\opt_has_pipe.first_q[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5140"
    )
        port map (
      I0 => zero_largest,
      I1 => \^carrys_out\(0),
      I2 => s_axis_b_tdata(6),
      I3 => s_axis_a_tdata(6),
      O => \s_axis_b_tdata[15]\(6)
    );
\opt_has_pipe.first_q[6]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5140"
    )
        port map (
      I0 => zero_largest,
      I1 => \^carrys_out\(0),
      I2 => s_axis_b_tdata(13),
      I3 => s_axis_a_tdata(13),
      O => \s_axis_b_tdata[15]\(13)
    );
\opt_has_pipe.first_q[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_a_tdata[16]\(4),
      I1 => \opt_has_pipe.first_q_reg[10]\,
      I2 => \ALIGN_BLK/sml_shift_mux__16\(6),
      I3 => \opt_has_pipe.first_q_reg[10]_0\,
      O => \s_axis_b_tdata[16]\(7)
    );
\opt_has_pipe.first_q[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5140"
    )
        port map (
      I0 => zero_largest,
      I1 => \^carrys_out\(0),
      I2 => s_axis_b_tdata(14),
      I3 => s_axis_a_tdata(14),
      O => \s_axis_b_tdata[15]\(14)
    );
\opt_has_pipe.first_q[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_a_tdata[16]\(5),
      I1 => \opt_has_pipe.first_q_reg[10]\,
      I2 => \ALIGN_BLK/sml_shift_mux__16\(7),
      I3 => \opt_has_pipe.first_q_reg[10]_0\,
      O => \s_axis_b_tdata[16]\(8)
    );
\opt_has_pipe.first_q[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5140"
    )
        port map (
      I0 => zero_largest,
      I1 => \^carrys_out\(0),
      I2 => s_axis_b_tdata(15),
      I3 => s_axis_a_tdata(15),
      O => \s_axis_b_tdata[15]\(15)
    );
\opt_has_pipe.first_q[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_a_tdata[16]\(6),
      I1 => \opt_has_pipe.first_q_reg[10]\,
      I2 => \ALIGN_BLK/sml_shift_mux__16\(8),
      I3 => \opt_has_pipe.first_q_reg[10]_0\,
      O => \s_axis_b_tdata[16]\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_flt_dec_op is
  port (
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    op_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    round_mant : in STD_LOGIC_VECTOR ( 14 downto 0 );
    aclk : in STD_LOGIC;
    \RESULT_REG.NORMAL.mant_op_reg[15]_0\ : in STD_LOGIC;
    op_sign : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_flt_dec_op : entity is "flt_dec_op";
end fp16_sub_flt_dec_op;

architecture STRUCTURE of fp16_sub_flt_dec_op is
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
      D => D(0),
      Q => m_axis_result_tdata(16),
      R => '0'
    );
\RESULT_REG.NORMAL.exp_op_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => m_axis_result_tdata(17),
      R => '0'
    );
\RESULT_REG.NORMAL.exp_op_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => m_axis_result_tdata(18),
      R => '0'
    );
\RESULT_REG.NORMAL.exp_op_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(3),
      Q => m_axis_result_tdata(19),
      R => '0'
    );
\RESULT_REG.NORMAL.exp_op_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(4),
      Q => m_axis_result_tdata(20),
      R => '0'
    );
\RESULT_REG.NORMAL.exp_op_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(5),
      Q => m_axis_result_tdata(21),
      R => '0'
    );
\RESULT_REG.NORMAL.exp_op_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(6),
      Q => m_axis_result_tdata(22),
      R => '0'
    );
\RESULT_REG.NORMAL.mant_op_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(0),
      Q => m_axis_result_tdata(0),
      R => op_state(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(10),
      Q => m_axis_result_tdata(10),
      R => op_state(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(11),
      Q => m_axis_result_tdata(11),
      R => op_state(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(12),
      Q => m_axis_result_tdata(12),
      R => op_state(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(13),
      Q => m_axis_result_tdata(13),
      R => op_state(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(14),
      Q => m_axis_result_tdata(14),
      R => op_state(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \RESULT_REG.NORMAL.mant_op_reg[15]_0\,
      Q => m_axis_result_tdata(15),
      R => '0'
    );
\RESULT_REG.NORMAL.mant_op_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(1),
      Q => m_axis_result_tdata(1),
      R => op_state(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(2),
      Q => m_axis_result_tdata(2),
      R => op_state(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(3),
      Q => m_axis_result_tdata(3),
      R => op_state(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(4),
      Q => m_axis_result_tdata(4),
      R => op_state(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(5),
      Q => m_axis_result_tdata(5),
      R => op_state(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(6),
      Q => m_axis_result_tdata(6),
      R => op_state(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(7),
      Q => m_axis_result_tdata(7),
      R => op_state(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(8),
      Q => m_axis_result_tdata(8),
      R => op_state(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => round_mant(9),
      Q => m_axis_result_tdata(9),
      R => op_state(0)
    );
\RESULT_REG.NORMAL.sign_op_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => op_sign,
      Q => m_axis_result_tdata(23),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_xbip_pipe_v3_0_5_viv is
  port (
    m_axis_result_tvalid : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_b_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_xbip_pipe_v3_0_5_viv : entity is "xbip_pipe_v3_0_5_viv";
end fp16_sub_xbip_pipe_v3_0_5_viv;

architecture STRUCTURE of fp16_sub_xbip_pipe_v3_0_5_viv is
  signal first_q : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  signal \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2_n_0\ : STD_LOGIC;
  signal valid_transfer_in : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "yes";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2\ : label is "U0/i_synth/\i_nd_to_rdy/opt_has_pipe.i_pipe[3].pipe_reg[3] ";
  attribute srl_name : string;
  attribute srl_name of \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2\ : label is "U0/i_synth/\i_nd_to_rdy/opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2 ";
begin
\opt_has_pipe.first_q[0]_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_a_tvalid,
      I1 => s_axis_b_tvalid,
      O => valid_transfer_in
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => valid_transfer_in,
      Q => first_q,
      R => '0'
    );
\opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2\: unisim.vcomponents.SRL16E
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
      D => first_q,
      Q => \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2_n_0\
    );
\opt_has_pipe.i_pipe[4].pipe_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_srl2_n_0\,
      Q => m_axis_result_tvalid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized13\ is
  port (
    \out\ : out STD_LOGIC;
    zeros_add : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized13\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized13\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized13\ is
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
      D => zeros_add,
      Q => first_q,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized13_15\ is
  port (
    \out\ : out STD_LOGIC;
    zero_align_align : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized13_15\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized13_15\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized13_15\ is
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
      D => zero_align_align,
      Q => first_q,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized17\ is
  port (
    p_8_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    aclk : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[4]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[3]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[2]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_0\ : in STD_LOGIC;
    minusOp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized17\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized17\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized17\ is
  signal \opt_has_pipe.first_q[4]_i_1_n_0\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[2]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[3]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[4]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[7]\ : label is "false";
begin
\opt_has_pipe.first_q[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => minusOp(1),
      I1 => CO(0),
      I2 => minusOp(0),
      O => \opt_has_pipe.first_q[4]_i_1_n_0\
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[0]_0\,
      Q => p_8_out(0),
      S => \opt_has_pipe.first_q[4]_i_1_n_0\
    );
\opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[1]_0\,
      Q => p_8_out(1),
      S => \opt_has_pipe.first_q[4]_i_1_n_0\
    );
\opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[2]_0\,
      Q => p_8_out(2),
      S => \opt_has_pipe.first_q[4]_i_1_n_0\
    );
\opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[3]_0\,
      Q => p_8_out(3),
      S => \opt_has_pipe.first_q[4]_i_1_n_0\
    );
\opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[4]_0\,
      Q => p_8_out(4),
      S => \opt_has_pipe.first_q[4]_i_1_n_0\
    );
\opt_has_pipe.first_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => '1',
      Q => p_8_out(5),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19\ is
  port (
    \opt_has_pipe.first_q_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    NORM_DIST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19\ is
  signal \^norm_dist\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "false";
begin
  NORM_DIST(1 downto 0) <= \^norm_dist\(1 downto 0);
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^norm_dist\(0),
      I1 => DI(0),
      O => \opt_has_pipe.first_q_reg[1]_0\(0)
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => CARRYS_OUT(1),
      Q => \^norm_dist\(1),
      R => '0'
    );
\opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => CARRYS_OUT(0),
      Q => \^norm_dist\(0),
      R => CARRYS_OUT(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_19\ is
  port (
    ext_del_distance : out STD_LOGIC_VECTOR ( 0 to 0 );
    first_q0 : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_19\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_19\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_19\ is
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
      D => first_q0,
      Q => ext_del_distance(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_20\ is
  port (
    ext_del_distance : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[1]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_20\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_20\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_20\ is
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "false";
begin
\opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[1]_0\,
      Q => ext_del_distance(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_22\ is
  port (
    \opt_has_pipe.first_q_reg[0]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]_0\ : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    abs_dist_mux : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]_1\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    zero_sml_preadd : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[7]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \opt_has_pipe.first_q_reg[7]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]_1\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[6]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_22\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_22\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_22\ is
  signal \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__3_n_0\ : STD_LOGIC;
  signal \^opt_has_pipe.first_q_reg[0]_0\ : STD_LOGIC;
  signal \^opt_has_pipe.first_q_reg[1]_0\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "false";
begin
  \opt_has_pipe.first_q_reg[0]_0\ <= \^opt_has_pipe.first_q_reg[0]_0\;
  \opt_has_pipe.first_q_reg[1]_0\ <= \^opt_has_pipe.first_q_reg[1]_0\;
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540BABFBABF4540"
    )
        port map (
      I0 => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__3_n_0\,
      I1 => \opt_has_pipe.first_q_reg[8]_1\,
      I2 => \^opt_has_pipe.first_q_reg[0]_0\,
      I3 => \opt_has_pipe.first_q_reg[6]\,
      I4 => \opt_has_pipe.first_q_reg[8]_0\(0),
      I5 => Q(0),
      O => A(0)
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[1]_0\,
      I1 => \out\,
      I2 => zero_sml_preadd,
      O => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__3_n_0\
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4540BABFBABF4540"
    )
        port map (
      I0 => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__3_n_0\,
      I1 => \opt_has_pipe.first_q_reg[7]\,
      I2 => \^opt_has_pipe.first_q_reg[0]_0\,
      I3 => \opt_has_pipe.first_q_reg[7]_0\,
      I4 => \opt_has_pipe.first_q_reg[8]_0\(0),
      I5 => Q(1),
      O => A(1)
    );
\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FFF7FFF70008"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg[8]_1\,
      I1 => \opt_has_pipe.first_q_reg[8]\,
      I2 => \^opt_has_pipe.first_q_reg[1]_0\,
      I3 => \^opt_has_pipe.first_q_reg[0]_0\,
      I4 => \opt_has_pipe.first_q_reg[8]_0\(0),
      I5 => Q(2),
      O => A(2)
    );
\CHAIN_GEN[9].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FFF7FFF70008"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg[7]\,
      I1 => \opt_has_pipe.first_q_reg[8]\,
      I2 => \^opt_has_pipe.first_q_reg[1]_0\,
      I3 => \^opt_has_pipe.first_q_reg[0]_0\,
      I4 => \opt_has_pipe.first_q_reg[8]_0\(0),
      I5 => Q(3),
      O => A(3)
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => abs_dist_mux(0),
      Q => \^opt_has_pipe.first_q_reg[0]_0\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[1]_1\,
      Q => \^opt_has_pipe.first_q_reg[1]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_7\ is
  port (
    add_mant_msbs_del : out STD_LOGIC_VECTOR ( 0 to 0 );
    add_mant : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_7\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_7\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_7\ is
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "false";
begin
\opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => add_mant(0),
      Q => add_mant_msbs_del(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized21\ is
  port (
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axis_b_tdata[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \align_dist_0_ip__0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[14]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[16]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[16]_1\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[12]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[13]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[15]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[15]_1\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[11]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[10]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[9]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[7]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[6]_0\ : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \opt_has_pipe.first_q_reg[18]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[18]_1\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[17]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[17]_1\ : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\ : in STD_LOGIC;
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\ : in STD_LOGIC;
    zero_sml_preadd : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[5]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    aclk : in STD_LOGIC;
    \sml_shift_mux__16\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    minusOp : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized21\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized21\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized21\ is
  signal \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__1_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[18]_i_1_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[18]_i_2_n_0\ : STD_LOGIC;
  signal \^opt_has_pipe.first_q_reg[15]_1\ : STD_LOGIC;
  signal \^opt_has_pipe.first_q_reg[16]_1\ : STD_LOGIC;
  signal \^opt_has_pipe.first_q_reg[17]_0\ : STD_LOGIC;
  signal \^opt_has_pipe.first_q_reg[18]_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[10]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[11]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[12]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[13]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[14]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[7]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[8]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[18]_i_2\ : label is "soft_lutpair0";
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "false";
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
  \opt_has_pipe.first_q_reg[15]_1\ <= \^opt_has_pipe.first_q_reg[15]_1\;
  \opt_has_pipe.first_q_reg[16]_1\ <= \^opt_has_pipe.first_q_reg[16]_1\;
  \opt_has_pipe.first_q_reg[17]_0\ <= \^opt_has_pipe.first_q_reg[17]_0\;
  \opt_has_pipe.first_q_reg[18]_0\ <= \^opt_has_pipe.first_q_reg[18]_0\;
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[15]_1\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[11]\,
      I2 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\,
      I3 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      I4 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\,
      I5 => \opt_has_pipe.first_q_reg_n_0_[9]\,
      O => \opt_has_pipe.first_q_reg[15]_0\
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[6]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[2]\,
      I2 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\,
      I3 => \opt_has_pipe.first_q_reg_n_0_[4]\,
      I4 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\,
      I5 => \opt_has_pipe.first_q_reg_n_0_[0]\,
      O => \opt_has_pipe.first_q_reg[6]_0\
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_b_tdata(0),
      I1 => s_axis_a_tdata(0),
      O => \align_dist_0_ip__0\
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[16]_1\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[12]\,
      I2 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\,
      I3 => \opt_has_pipe.first_q_reg_n_0_[14]\,
      I4 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\,
      I5 => \opt_has_pipe.first_q_reg_n_0_[10]\,
      O => \opt_has_pipe.first_q_reg[16]_0\
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[7]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[3]\,
      I2 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\,
      I3 => \opt_has_pipe.first_q_reg_n_0_[5]\,
      I4 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\,
      I5 => \opt_has_pipe.first_q_reg_n_0_[1]\,
      O => \opt_has_pipe.first_q_reg[7]_0\
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[8]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[4]\,
      I2 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\,
      I3 => \opt_has_pipe.first_q_reg_n_0_[6]\,
      I4 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\,
      I5 => \opt_has_pipe.first_q_reg_n_0_[2]\,
      O => \opt_has_pipe.first_q_reg[8]_0\
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[17]_0\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      I2 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\,
      I3 => \^opt_has_pipe.first_q_reg[15]_1\,
      I4 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\,
      I5 => \opt_has_pipe.first_q_reg_n_0_[11]\,
      O => \opt_has_pipe.first_q_reg[17]_1\
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[9]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[5]\,
      I2 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\,
      I3 => \opt_has_pipe.first_q_reg_n_0_[7]\,
      I4 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\,
      I5 => \opt_has_pipe.first_q_reg_n_0_[3]\,
      O => \opt_has_pipe.first_q_reg[9]_0\
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[18]_0\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[14]\,
      I2 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\,
      I3 => \^opt_has_pipe.first_q_reg[16]_1\,
      I4 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\,
      I5 => \opt_has_pipe.first_q_reg_n_0_[12]\,
      O => \opt_has_pipe.first_q_reg[18]_1\
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FDFD02"
    )
        port map (
      I0 => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__1_n_0\,
      I1 => zero_sml_preadd,
      I2 => \out\,
      I3 => \opt_has_pipe.first_q_reg[5]_0\(0),
      I4 => Q(0),
      O => A(0)
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[10]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[6]\,
      I2 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\,
      I3 => \opt_has_pipe.first_q_reg_n_0_[8]\,
      I4 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\,
      I5 => \opt_has_pipe.first_q_reg_n_0_[4]\,
      O => \opt_has_pipe.first_q_reg[10]_0\
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[15]_1\,
      I1 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\,
      I2 => \^opt_has_pipe.first_q_reg[17]_0\,
      I3 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\,
      I4 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      O => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__1_n_0\
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FDFD02"
    )
        port map (
      I0 => \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__1_n_0\,
      I1 => zero_sml_preadd,
      I2 => \out\,
      I3 => \opt_has_pipe.first_q_reg[5]_0\(0),
      I4 => Q(1),
      O => A(1)
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[11]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[7]\,
      I2 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\,
      I3 => \opt_has_pipe.first_q_reg_n_0_[9]\,
      I4 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\,
      I5 => \opt_has_pipe.first_q_reg_n_0_[5]\,
      O => \opt_has_pipe.first_q_reg[11]_0\
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[16]_1\,
      I1 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\,
      I2 => \^opt_has_pipe.first_q_reg[18]_0\,
      I3 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\,
      I4 => \opt_has_pipe.first_q_reg_n_0_[14]\,
      O => \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__1_n_0\
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[12]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[8]\,
      I2 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\,
      I3 => \opt_has_pipe.first_q_reg_n_0_[10]\,
      I4 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\,
      I5 => \opt_has_pipe.first_q_reg_n_0_[6]\,
      O => \opt_has_pipe.first_q_reg[12]_0\
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[9]\,
      I2 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\,
      I3 => \opt_has_pipe.first_q_reg_n_0_[11]\,
      I4 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\,
      I5 => \opt_has_pipe.first_q_reg_n_0_[7]\,
      O => \opt_has_pipe.first_q_reg[13]_0\
    );
\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[14]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[10]\,
      I2 => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\,
      I3 => \opt_has_pipe.first_q_reg_n_0_[12]\,
      I4 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\,
      I5 => \opt_has_pipe.first_q_reg_n_0_[8]\,
      O => \opt_has_pipe.first_q_reg[14]_0\
    );
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_b_tdata(6),
      I1 => s_axis_a_tdata(6),
      O => S(2)
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_b_tdata(5),
      I1 => s_axis_a_tdata(5),
      O => S(1)
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_b_tdata(4),
      I1 => s_axis_a_tdata(4),
      O => S(0)
    );
minusOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_b_tdata(3),
      I1 => s_axis_a_tdata(3),
      O => \s_axis_b_tdata[19]\(3)
    );
minusOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_b_tdata(2),
      I1 => s_axis_a_tdata(2),
      O => \s_axis_b_tdata[19]\(2)
    );
minusOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_b_tdata(1),
      I1 => s_axis_a_tdata(1),
      O => \s_axis_b_tdata[19]\(1)
    );
minusOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_a_tdata(0),
      I1 => s_axis_b_tdata(0),
      O => \s_axis_b_tdata[19]\(0)
    );
\opt_has_pipe.first_q[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF01FFFF00FFFE"
    )
        port map (
      I0 => minusOp(2),
      I1 => minusOp(0),
      I2 => minusOp(1),
      I3 => minusOp(3),
      I4 => CO(0),
      I5 => minusOp(4),
      O => \opt_has_pipe.first_q[18]_i_1_n_0\
    );
\opt_has_pipe.first_q[18]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_a_tdata(0),
      I1 => s_axis_b_tdata(0),
      O => \opt_has_pipe.first_q[18]_i_2_n_0\
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
\opt_has_pipe.first_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(10),
      Q => \opt_has_pipe.first_q_reg_n_0_[10]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \sml_shift_mux__16\(0),
      Q => \opt_has_pipe.first_q_reg_n_0_[11]\,
      R => \opt_has_pipe.first_q[18]_i_1_n_0\
    );
\opt_has_pipe.first_q_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \sml_shift_mux__16\(1),
      Q => \opt_has_pipe.first_q_reg_n_0_[12]\,
      R => \opt_has_pipe.first_q[18]_i_1_n_0\
    );
\opt_has_pipe.first_q_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \sml_shift_mux__16\(2),
      Q => \opt_has_pipe.first_q_reg_n_0_[13]\,
      R => \opt_has_pipe.first_q[18]_i_1_n_0\
    );
\opt_has_pipe.first_q_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \sml_shift_mux__16\(3),
      Q => \opt_has_pipe.first_q_reg_n_0_[14]\,
      R => \opt_has_pipe.first_q[18]_i_1_n_0\
    );
\opt_has_pipe.first_q_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \sml_shift_mux__16\(4),
      Q => \^opt_has_pipe.first_q_reg[15]_1\,
      R => \opt_has_pipe.first_q[18]_i_1_n_0\
    );
\opt_has_pipe.first_q_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \sml_shift_mux__16\(5),
      Q => \^opt_has_pipe.first_q_reg[16]_1\,
      R => \opt_has_pipe.first_q[18]_i_1_n_0\
    );
\opt_has_pipe.first_q_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \sml_shift_mux__16\(6),
      Q => \^opt_has_pipe.first_q_reg[17]_0\,
      R => \opt_has_pipe.first_q[18]_i_1_n_0\
    );
\opt_has_pipe.first_q_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q[18]_i_2_n_0\,
      Q => \^opt_has_pipe.first_q_reg[18]_0\,
      R => \opt_has_pipe.first_q[18]_i_1_n_0\
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
\opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => \opt_has_pipe.first_q_reg_n_0_[2]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(3),
      Q => \opt_has_pipe.first_q_reg_n_0_[3]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(4),
      Q => \opt_has_pipe.first_q_reg_n_0_[4]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(5),
      Q => \opt_has_pipe.first_q_reg_n_0_[5]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(6),
      Q => \opt_has_pipe.first_q_reg_n_0_[6]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(7),
      Q => \opt_has_pipe.first_q_reg_n_0_[7]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(8),
      Q => \opt_has_pipe.first_q_reg_n_0_[8]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(9),
      Q => \opt_has_pipe.first_q_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized27\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \opt_has_pipe.first_q_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized27\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized27\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized27\ is
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[2]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[3]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[4]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[5]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[6]\ : label is "false";
begin
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[6]_0\(0),
      Q => Q(0),
      R => '0'
    );
\opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[6]_0\(1),
      Q => Q(1),
      R => '0'
    );
\opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[6]_0\(2),
      Q => Q(2),
      R => '0'
    );
\opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[6]_0\(3),
      Q => Q(3),
      R => '0'
    );
\opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[6]_0\(4),
      Q => Q(4),
      R => '0'
    );
\opt_has_pipe.first_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[6]_0\(5),
      Q => Q(5),
      R => '0'
    );
\opt_has_pipe.first_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[6]_0\(6),
      Q => Q(6),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized31\ is
  port (
    add_mant : out STD_LOGIC_VECTOR ( 8 downto 0 );
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized31\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized31\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized31\ is
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[2]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[3]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[4]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[5]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[6]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[7]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[8]\ : label is "false";
begin
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => add_mant(0),
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
      Q => add_mant(1),
      R => '0'
    );
\opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => add_mant(2),
      R => '0'
    );
\opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(3),
      Q => add_mant(3),
      R => '0'
    );
\opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(4),
      Q => add_mant(4),
      R => '0'
    );
\opt_has_pipe.first_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(5),
      Q => add_mant(5),
      R => '0'
    );
\opt_has_pipe.first_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(6),
      Q => add_mant(6),
      R => '0'
    );
\opt_has_pipe.first_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(7),
      Q => add_mant(7),
      R => '0'
    );
\opt_has_pipe.first_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(8),
      Q => add_mant(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized33\ is
  port (
    zero_largest : out STD_LOGIC;
    \s_axis_a_tdata[22]\ : out STD_LOGIC;
    b_exp_flt_all_zero : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    aclk : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized33\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized33\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized33\ is
  signal \^b_exp_flt_all_zero\ : STD_LOGIC;
  signal lrg_mant_z_mux : STD_LOGIC_VECTOR ( 16 to 16 );
  signal \opt_has_pipe.first_q[0]_i_4_n_0\ : STD_LOGIC;
  signal \^s_axis_a_tdata[22]\ : STD_LOGIC;
  signal \^zero_largest\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "false";
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
  b_exp_flt_all_zero <= \^b_exp_flt_all_zero\;
  \s_axis_a_tdata[22]\ <= \^s_axis_a_tdata[22]\;
  zero_largest <= \^zero_largest\;
\opt_has_pipe.first_q[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_a_tdata(6),
      I1 => s_axis_a_tdata(5),
      I2 => s_axis_a_tdata(4),
      I3 => s_axis_a_tdata(3),
      O => \^s_axis_a_tdata[22]\
    );
\opt_has_pipe.first_q[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \opt_has_pipe.first_q[0]_i_4_n_0\,
      I1 => s_axis_b_tdata(0),
      I2 => s_axis_b_tdata(1),
      I3 => s_axis_b_tdata(2),
      O => \^b_exp_flt_all_zero\
    );
\opt_has_pipe.first_q[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_b_tdata(6),
      I1 => s_axis_b_tdata(5),
      I2 => s_axis_b_tdata(4),
      I3 => s_axis_b_tdata(3),
      O => \opt_has_pipe.first_q[0]_i_4_n_0\
    );
\opt_has_pipe.first_q[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \^s_axis_a_tdata[22]\,
      I1 => s_axis_a_tdata(0),
      I2 => s_axis_a_tdata(1),
      I3 => s_axis_a_tdata(2),
      I4 => \^b_exp_flt_all_zero\,
      O => \^zero_largest\
    );
\opt_has_pipe.first_q[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^zero_largest\,
      O => lrg_mant_z_mux(16)
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[8]_0\(0),
      Q => \opt_has_pipe.first_q_reg[9]_0\(0),
      R => '0'
    );
\opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[8]_0\(1),
      Q => \opt_has_pipe.first_q_reg[9]_0\(1),
      R => '0'
    );
\opt_has_pipe.first_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[8]_0\(2),
      Q => \opt_has_pipe.first_q_reg[9]_0\(2),
      R => '0'
    );
\opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[8]_0\(3),
      Q => \opt_has_pipe.first_q_reg[9]_0\(3),
      R => '0'
    );
\opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[8]_0\(4),
      Q => \opt_has_pipe.first_q_reg[9]_0\(4),
      R => '0'
    );
\opt_has_pipe.first_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[8]_0\(5),
      Q => \opt_has_pipe.first_q_reg[9]_0\(5),
      R => '0'
    );
\opt_has_pipe.first_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[8]_0\(6),
      Q => \opt_has_pipe.first_q_reg[9]_0\(6),
      R => '0'
    );
\opt_has_pipe.first_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[8]_0\(7),
      Q => \opt_has_pipe.first_q_reg[9]_0\(7),
      R => '0'
    );
\opt_has_pipe.first_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[8]_0\(8),
      Q => \opt_has_pipe.first_q_reg[9]_0\(8),
      R => '0'
    );
\opt_has_pipe.first_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => lrg_mant_z_mux(16),
      Q => \opt_has_pipe.first_q_reg[9]_0\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized39\ is
  port (
    add_mant : out STD_LOGIC_VECTOR ( 10 downto 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized39\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized39\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized39\ is
  signal first_q : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[10]\ : label is "yes";
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
  add_mant(10 downto 0) <= first_q(10 downto 0);
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => first_q(0),
      R => '0'
    );
\opt_has_pipe.first_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(10),
      Q => first_q(10),
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
      D => D(2),
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
      D => D(3),
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
      D => D(4),
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
      D => D(5),
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
      D => D(6),
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
      D => D(7),
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
      D => D(8),
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
      D => D(9),
      Q => first_q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized45\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.first_q_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    A : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.first_q_reg[1]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_1\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_2\ : out STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \RESULT_REG.NORMAL.mant_op_reg[3]\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.mant_op_reg[1]\ : in STD_LOGIC;
    \CHAIN_GEN[2].C_MUX.CARRY_MUX\ : in STD_LOGIC;
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_0\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.mant_op_reg[1]_0\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.mant_op_reg[3]_0\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op[6]_i_4\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op[6]_i_4_0\ : in STD_LOGIC;
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0\ : in STD_LOGIC;
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1\ : in STD_LOGIC;
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_2\ : in STD_LOGIC;
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8_0\ : in STD_LOGIC;
    zeros_del : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 0 to 0 );
    \op_a__0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized45\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized45\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized45\ is
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__4_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__4_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__5_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_4__0_n_0\ : STD_LOGIC;
  signal \RESULT_REG.NORMAL.exp_op[6]_i_11_n_0\ : STD_LOGIC;
  signal first_q : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[2]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[3]\ : label is "yes";
begin
  \out\(2 downto 0) <= first_q(2 downto 0);
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FC000CAAAAAAAA"
    )
        port map (
      I0 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__4_n_0\,
      I1 => \RESULT_REG.NORMAL.mant_op_reg[1]_0\,
      I2 => first_q(0),
      I3 => first_q(1),
      I4 => \RESULT_REG.NORMAL.mant_op_reg[1]\,
      I5 => \RESULT_REG.NORMAL.mant_op_reg[3]\,
      O => \opt_has_pipe.first_q_reg[2]_0\(0)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444FFF0444400F0"
    )
        port map (
      I0 => first_q(2),
      I1 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0\,
      I2 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1\,
      I3 => first_q(0),
      I4 => first_q(1),
      I5 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_2\,
      O => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__4_n_0\
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FDD0DFF7FCC0C"
    )
        port map (
      I0 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__5_n_0\,
      I1 => \RESULT_REG.NORMAL.mant_op_reg[3]\,
      I2 => \RESULT_REG.NORMAL.mant_op_reg[1]\,
      I3 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_4__0_n_0\,
      I4 => \CHAIN_GEN[2].C_MUX.CARRY_MUX\,
      I5 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_0\,
      O => A(0)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__4_n_0\,
      I1 => \RESULT_REG.NORMAL.mant_op_reg[3]\,
      I2 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__4_n_0\,
      O => \opt_has_pipe.first_q_reg[2]_0\(1)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444FFF0444400F0"
    )
        port map (
      I0 => first_q(2),
      I1 => \RESULT_REG.NORMAL.mant_op_reg[1]\,
      I2 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8_0\,
      I3 => first_q(0),
      I4 => first_q(1),
      I5 => \RESULT_REG.NORMAL.mant_op_reg[1]_0\,
      O => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__4_n_0\
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"555D"
    )
        port map (
      I0 => zeros_del,
      I1 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0\,
      I2 => first_q(0),
      I3 => first_q(1),
      O => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__5_n_0\
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => first_q(0),
      I1 => first_q(1),
      O => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_4__0_n_0\
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__4_n_0\,
      I1 => \RESULT_REG.NORMAL.mant_op_reg[3]\,
      I2 => \RESULT_REG.NORMAL.mant_op_reg[3]_0\,
      O => \opt_has_pipe.first_q_reg[2]_0\(2)
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => first_q(0),
      I1 => first_q(2),
      I2 => first_q(1),
      O => \opt_has_pipe.first_q_reg[0]_2\
    );
\RESULT_REG.NORMAL.exp_op[6]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"596A"
    )
        port map (
      I0 => DI(1),
      I1 => first_q(1),
      I2 => first_q(2),
      I3 => first_q(0),
      O => \RESULT_REG.NORMAL.exp_op[6]_i_11_n_0\
    );
\RESULT_REG.NORMAL.exp_op[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CFFFF5A"
    )
        port map (
      I0 => first_q(0),
      I1 => first_q(2),
      I2 => DI(1),
      I3 => DI(2),
      I4 => first_q(1),
      O => \opt_has_pipe.first_q_reg[0]_1\
    );
\RESULT_REG.NORMAL.exp_op[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF6FFF6F6FFF6"
    )
        port map (
      I0 => first_q(1),
      I1 => DI(2),
      I2 => \RESULT_REG.NORMAL.exp_op[6]_i_11_n_0\,
      I3 => \RESULT_REG.NORMAL.exp_op[6]_i_4\,
      I4 => \RESULT_REG.NORMAL.exp_op[6]_i_4_0\,
      I5 => DI(0),
      O => \opt_has_pipe.first_q_reg[1]_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CA35"
    )
        port map (
      I0 => first_q(0),
      I1 => first_q(2),
      I2 => first_q(1),
      I3 => DI(1),
      O => \opt_has_pipe.first_q_reg[0]_0\(0)
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(0),
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
      D => D(1),
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
      D => \op_a__0\(0),
      Q => first_q(2),
      R => CARRYS_OUT(0)
    );
\opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => first_q(3),
      R => CARRYS_OUT(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized45_3\ is
  port (
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[1]_0\ : out STD_LOGIC;
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[3]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_0\ : out STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 0 to 0 );
    op_a : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized45_3\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized45_3\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized45_3\ is
  signal first_q : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  signal \^opt_has_pipe.first_q_reg[1]_0\ : STD_LOGIC;
  signal \^opt_has_pipe.first_q_reg[3]_0\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[2]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[3]\ : label is "yes";
begin
  \opt_has_pipe.first_q_reg[1]_0\ <= \^opt_has_pipe.first_q_reg[1]_0\;
  \opt_has_pipe.first_q_reg[3]_0\ <= \^opt_has_pipe.first_q_reg[3]_0\;
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BABF"
    )
        port map (
      I0 => \out\(1),
      I1 => first_q(1),
      I2 => \out\(0),
      I3 => first_q(0),
      I4 => \^opt_has_pipe.first_q_reg[3]_0\,
      O => \^opt_has_pipe.first_q_reg[1]_0\
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B080"
    )
        port map (
      I0 => first_q(3),
      I1 => \out\(2),
      I2 => \out\(1),
      I3 => first_q(2),
      O => \^opt_has_pipe.first_q_reg[3]_0\
    );
\RESULT_REG.NORMAL.exp_op[6]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF1D"
    )
        port map (
      I0 => first_q(0),
      I1 => \out\(0),
      I2 => first_q(1),
      I3 => \out\(1),
      O => \opt_has_pipe.first_q_reg[0]_0\
    );
\RESULT_REG.NORMAL.exp_op[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99999999AAA999A9"
    )
        port map (
      I0 => DI(0),
      I1 => \^opt_has_pipe.first_q_reg[3]_0\,
      I2 => first_q(0),
      I3 => \out\(0),
      I4 => first_q(1),
      I5 => \out\(1),
      O => \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[1]_0\,
      I1 => DI(0),
      O => \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\(0)
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(0),
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
      D => D(1),
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
      D => op_a(0),
      Q => first_q(2),
      R => CARRYS_OUT(0)
    );
\opt_has_pipe.first_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => op_a(1),
      Q => first_q(3),
      R => CARRYS_OUT(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized49\ is
  port (
    A : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \opt_has_pipe.first_q_reg[16]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \opt_has_pipe.first_q_reg[18]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[16]_1\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[17]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[19]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[14]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[19]_1\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[15]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[17]_1\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[16]_2\ : out STD_LOGIC;
    \RESULT_REG.NORMAL.mant_op_reg[14]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0\ : in STD_LOGIC;
    zeros_del : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aclk : in STD_LOGIC;
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[11]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[10]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[9]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[7]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[6]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[5]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[4]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[12]_0\ : in STD_LOGIC;
    add_mant : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized49\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized49\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized49\ is
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2__3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2__2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2__1_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2__2_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3_n_0\ : STD_LOGIC;
  signal \^opt_has_pipe.first_q_reg[14]_0\ : STD_LOGIC;
  signal \^opt_has_pipe.first_q_reg[15]_0\ : STD_LOGIC;
  signal \^opt_has_pipe.first_q_reg[16]_1\ : STD_LOGIC;
  signal \^opt_has_pipe.first_q_reg[17]_0\ : STD_LOGIC;
  signal \^opt_has_pipe.first_q_reg[17]_1\ : STD_LOGIC;
  signal \^opt_has_pipe.first_q_reg[18]_0\ : STD_LOGIC;
  signal \^opt_has_pipe.first_q_reg[19]_0\ : STD_LOGIC;
  signal \^opt_has_pipe.first_q_reg[19]_1\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[10]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[11]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[12]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[13]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[7]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[8]\ : STD_LOGIC;
  signal \opt_has_pipe.first_q_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3\ : label is "soft_lutpair12";
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
  attribute KEEP of \opt_has_pipe.first_q_reg[2]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[3]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[4]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[5]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[6]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[7]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[8]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[9]\ : label is "false";
begin
  \opt_has_pipe.first_q_reg[14]_0\ <= \^opt_has_pipe.first_q_reg[14]_0\;
  \opt_has_pipe.first_q_reg[15]_0\ <= \^opt_has_pipe.first_q_reg[15]_0\;
  \opt_has_pipe.first_q_reg[16]_1\ <= \^opt_has_pipe.first_q_reg[16]_1\;
  \opt_has_pipe.first_q_reg[17]_0\ <= \^opt_has_pipe.first_q_reg[17]_0\;
  \opt_has_pipe.first_q_reg[17]_1\ <= \^opt_has_pipe.first_q_reg[17]_1\;
  \opt_has_pipe.first_q_reg[18]_0\ <= \^opt_has_pipe.first_q_reg[18]_0\;
  \opt_has_pipe.first_q_reg[19]_0\ <= \^opt_has_pipe.first_q_reg[19]_0\;
  \opt_has_pipe.first_q_reg[19]_1\ <= \^opt_has_pipe.first_q_reg[19]_1\;
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2__2_n_0\,
      I1 => \RESULT_REG.NORMAL.mant_op_reg[14]\,
      I2 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2__3_n_0\,
      O => A(0)
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002320FFFF2320"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[18]_0\,
      I1 => \out\(1),
      I2 => \out\(0),
      I3 => \^opt_has_pipe.first_q_reg[16]_1\,
      I4 => \RESULT_REG.NORMAL.mant_op_reg[14]\,
      I5 => \^opt_has_pipe.first_q_reg[17]_0\,
      O => \opt_has_pipe.first_q_reg[16]_0\(0)
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FF555F55FF555D"
    )
        port map (
      I0 => zeros_del,
      I1 => \^opt_has_pipe.first_q_reg[17]_1\,
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => \^opt_has_pipe.first_q_reg[19]_1\,
      I5 => \^opt_has_pipe.first_q_reg[18]_0\,
      O => \opt_has_pipe.first_q_reg[0]\(0)
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[14]_0\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[10]\,
      I2 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0\,
      I3 => \opt_has_pipe.first_q_reg_n_0_[12]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[8]\,
      O => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2__3_n_0\
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_2__3_n_0\,
      I1 => \RESULT_REG.NORMAL.mant_op_reg[14]\,
      I2 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__3_n_0\,
      O => A(1)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[9]\,
      I2 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0\,
      I3 => \opt_has_pipe.first_q_reg_n_0_[11]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[7]\,
      O => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__3_n_0\
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_2__3_n_0\,
      I1 => \RESULT_REG.NORMAL.mant_op_reg[14]\,
      I2 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__3_n_0\,
      O => A(2)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[12]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[8]\,
      I2 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0\,
      I3 => \opt_has_pipe.first_q_reg_n_0_[10]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[6]\,
      O => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__3_n_0\
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F1FD"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[17]_1\,
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => \^opt_has_pipe.first_q_reg[19]_1\,
      O => \^opt_has_pipe.first_q_reg[17]_0\
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F1FD"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[16]_1\,
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => \^opt_has_pipe.first_q_reg[18]_0\,
      O => \opt_has_pipe.first_q_reg[16]_2\
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_2__3_n_0\,
      I1 => \RESULT_REG.NORMAL.mant_op_reg[14]\,
      I2 => \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2__2_n_0\,
      O => A(3)
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[11]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[7]\,
      I2 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0\,
      I3 => \opt_has_pipe.first_q_reg_n_0_[9]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[5]\,
      O => \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2__2_n_0\
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[19]_1\,
      I1 => \^opt_has_pipe.first_q_reg[15]_0\,
      I2 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0\,
      I3 => \^opt_has_pipe.first_q_reg[17]_1\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      O => \^opt_has_pipe.first_q_reg[19]_0\
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \CHAIN_GEN[3].C_MUX.CARRY_MUX_i_2__2_n_0\,
      I1 => \RESULT_REG.NORMAL.mant_op_reg[14]\,
      I2 => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__2_n_0\,
      O => A(4)
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[19]_0\,
      I1 => \RESULT_REG.NORMAL.mant_op_reg[14]\,
      I2 => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__3_n_0\,
      O => \opt_has_pipe.first_q_reg[16]_0\(1)
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[10]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[6]\,
      I2 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0\,
      I3 => \opt_has_pipe.first_q_reg_n_0_[8]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[4]\,
      O => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__2_n_0\
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[18]_0\,
      I1 => \^opt_has_pipe.first_q_reg[14]_0\,
      I2 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0\,
      I3 => \^opt_has_pipe.first_q_reg[16]_1\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[12]\,
      O => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__3_n_0\
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__2_n_0\,
      I1 => \RESULT_REG.NORMAL.mant_op_reg[14]\,
      I2 => \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__2_n_0\,
      O => A(5)
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \CHAIN_GEN[4].C_MUX.CARRY_MUX_i_2__3_n_0\,
      I1 => \RESULT_REG.NORMAL.mant_op_reg[14]\,
      I2 => \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__3_n_0\,
      O => \opt_has_pipe.first_q_reg[16]_0\(2)
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[9]\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[5]\,
      I2 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0\,
      I3 => \opt_has_pipe.first_q_reg_n_0_[7]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[3]\,
      O => \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__2_n_0\
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[17]_1\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      I2 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0\,
      I3 => \^opt_has_pipe.first_q_reg[15]_0\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[11]\,
      O => \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__3_n_0\
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__2_n_0\,
      I1 => \RESULT_REG.NORMAL.mant_op_reg[14]\,
      I2 => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__1_n_0\,
      O => A(6)
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \CHAIN_GEN[5].C_MUX.CARRY_MUX_i_2__3_n_0\,
      I1 => \RESULT_REG.NORMAL.mant_op_reg[14]\,
      I2 => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__2_n_0\,
      O => \opt_has_pipe.first_q_reg[16]_0\(3)
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACAAACAAFCFA0C0"
    )
        port map (
      I0 => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3_n_0\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[6]\,
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \opt_has_pipe.first_q_reg_n_0_[2]\,
      I5 => \out\(0),
      O => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__1_n_0\
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[16]_1\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[12]\,
      I2 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0\,
      I3 => \^opt_has_pipe.first_q_reg[14]_0\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[10]\,
      O => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__2_n_0\
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[8]\,
      I1 => \out\(1),
      I2 => \opt_has_pipe.first_q_reg_n_0_[4]\,
      O => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_3_n_0\
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__1_n_0\,
      I1 => \RESULT_REG.NORMAL.mant_op_reg[14]\,
      I2 => \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2__1_n_0\,
      O => A(7)
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \CHAIN_GEN[6].C_MUX.CARRY_MUX_i_2__2_n_0\,
      I1 => \RESULT_REG.NORMAL.mant_op_reg[14]\,
      I2 => \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2__2_n_0\,
      O => \opt_has_pipe.first_q_reg[16]_0\(4)
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACAAACAAFCFA0C0"
    )
        port map (
      I0 => \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3_n_0\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[5]\,
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \opt_has_pipe.first_q_reg_n_0_[1]\,
      I5 => \out\(0),
      O => \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2__1_n_0\
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[15]_0\,
      I1 => \opt_has_pipe.first_q_reg_n_0_[11]\,
      I2 => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0\,
      I3 => \opt_has_pipe.first_q_reg_n_0_[13]\,
      I4 => \out\(1),
      I5 => \opt_has_pipe.first_q_reg_n_0_[9]\,
      O => \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_2__2_n_0\
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg_n_0_[7]\,
      I1 => \out\(1),
      I2 => \opt_has_pipe.first_q_reg_n_0_[3]\,
      O => \CHAIN_GEN[7].C_MUX.CARRY_MUX_i_3_n_0\
    );
\opt_has_pipe.first_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[10]_0\,
      Q => \opt_has_pipe.first_q_reg_n_0_[10]\,
      R => CARRYS_OUT(0)
    );
\opt_has_pipe.first_q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[11]_0\,
      Q => \opt_has_pipe.first_q_reg_n_0_[11]\,
      R => CARRYS_OUT(0)
    );
\opt_has_pipe.first_q_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => add_mant(7),
      Q => \opt_has_pipe.first_q_reg_n_0_[12]\,
      R => \opt_has_pipe.first_q_reg[12]_0\
    );
\opt_has_pipe.first_q_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => add_mant(6),
      Q => \opt_has_pipe.first_q_reg_n_0_[13]\,
      R => \opt_has_pipe.first_q_reg[12]_0\
    );
\opt_has_pipe.first_q_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => add_mant(5),
      Q => \^opt_has_pipe.first_q_reg[14]_0\,
      R => \opt_has_pipe.first_q_reg[12]_0\
    );
\opt_has_pipe.first_q_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => add_mant(4),
      Q => \^opt_has_pipe.first_q_reg[15]_0\,
      R => \opt_has_pipe.first_q_reg[12]_0\
    );
\opt_has_pipe.first_q_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => add_mant(3),
      Q => \^opt_has_pipe.first_q_reg[16]_1\,
      R => \opt_has_pipe.first_q_reg[12]_0\
    );
\opt_has_pipe.first_q_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => add_mant(2),
      Q => \^opt_has_pipe.first_q_reg[17]_1\,
      R => \opt_has_pipe.first_q_reg[12]_0\
    );
\opt_has_pipe.first_q_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => add_mant(1),
      Q => \^opt_has_pipe.first_q_reg[18]_0\,
      R => \opt_has_pipe.first_q_reg[12]_0\
    );
\opt_has_pipe.first_q_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => add_mant(0),
      Q => \^opt_has_pipe.first_q_reg[19]_1\,
      R => \opt_has_pipe.first_q_reg[12]_0\
    );
\opt_has_pipe.first_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => \opt_has_pipe.first_q_reg_n_0_[1]\,
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
      Q => \opt_has_pipe.first_q_reg_n_0_[2]\,
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
      Q => \opt_has_pipe.first_q_reg_n_0_[3]\,
      R => '0'
    );
\opt_has_pipe.first_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[4]_0\,
      Q => \opt_has_pipe.first_q_reg_n_0_[4]\,
      R => CARRYS_OUT(0)
    );
\opt_has_pipe.first_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[5]_0\,
      Q => \opt_has_pipe.first_q_reg_n_0_[5]\,
      R => CARRYS_OUT(0)
    );
\opt_has_pipe.first_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[6]_0\,
      Q => \opt_has_pipe.first_q_reg_n_0_[6]\,
      R => CARRYS_OUT(0)
    );
\opt_has_pipe.first_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[7]_0\,
      Q => \opt_has_pipe.first_q_reg_n_0_[7]\,
      R => CARRYS_OUT(0)
    );
\opt_has_pipe.first_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[8]_0\,
      Q => \opt_has_pipe.first_q_reg_n_0_[8]\,
      R => CARRYS_OUT(0)
    );
\opt_has_pipe.first_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[9]_0\,
      Q => \opt_has_pipe.first_q_reg_n_0_[9]\,
      R => CARRYS_OUT(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5\ is
  port (
    zeros_del : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5\ is
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
      Q => zeros_del,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized59\ is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\ : out STD_LOGIC;
    \opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0\ : out STD_LOGIC;
    subtract : out STD_LOGIC;
    a_exp_flt_all_one : out STD_LOGIC;
    \s_axis_a_tdata[22]\ : out STD_LOGIC;
    b_exp_flt_all_one : out STD_LOGIC;
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_1\ : out STD_LOGIC;
    op_state : out STD_LOGIC_VECTOR ( 0 to 0 );
    op_sign : out STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \RESULT_REG.NORMAL.exp_op_reg[3]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RESULT_REG.NORMAL.exp_op_reg[2]\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op_reg[2]_0\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op_reg[2]_1\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op_reg[2]_2\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op_reg[2]_3\ : in STD_LOGIC;
    add_mant_msbs_del : in STD_LOGIC_VECTOR ( 0 to 0 );
    lrg_almost_over_del : in STD_LOGIC;
    cancellation : in STD_LOGIC;
    det_sign_del : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized59\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized59\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized59\ is
  signal \RESULT_REG.NORMAL.exp_op[2]_i_2_n_0\ : STD_LOGIC;
  signal \RESULT_REG.NORMAL.exp_op[6]_i_5_n_0\ : STD_LOGIC;
  signal det_state_del : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal first_q : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  signal \opt_has_pipe.first_q[1]_i_4_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \^opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\ : STD_LOGIC;
  signal \^opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0\ : STD_LOGIC;
  signal \^s_axis_a_tdata[22]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RESULT_REG.NORMAL.exp_op[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \RESULT_REG.NORMAL.exp_op[2]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \RESULT_REG.NORMAL.exp_op[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \RESULT_REG.NORMAL.mant_op[14]_i_1\ : label is "soft_lutpair8";
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "yes";
begin
  \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\ <= \^opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\;
  \opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0\ <= \^opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0\;
  \s_axis_a_tdata[22]\ <= \^s_axis_a_tdata[22]\;
\RESULT_REG.NORMAL.exp_op[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAEB"
    )
        port map (
      I0 => \^opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\,
      I1 => \RESULT_REG.NORMAL.exp_op_reg[3]\(0),
      I2 => Q(1),
      I3 => \^opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0\,
      O => D(0)
    );
\RESULT_REG.NORMAL.exp_op[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0E1F0F0F0F0F0"
    )
        port map (
      I0 => \^opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0\,
      I1 => \^opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\,
      I2 => \RESULT_REG.NORMAL.exp_op[2]_i_2_n_0\,
      I3 => \RESULT_REG.NORMAL.exp_op_reg[3]\(1),
      I4 => Q(1),
      I5 => \RESULT_REG.NORMAL.exp_op_reg[3]\(0),
      O => D(1)
    );
\RESULT_REG.NORMAL.exp_op[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\,
      I1 => \^opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0\,
      I2 => \RESULT_REG.NORMAL.exp_op_reg[3]\(2),
      O => \RESULT_REG.NORMAL.exp_op[2]_i_2_n_0\
    );
\RESULT_REG.NORMAL.exp_op[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"45BA"
    )
        port map (
      I0 => \^opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\,
      I1 => \^opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0\,
      I2 => \RESULT_REG.NORMAL.exp_op_reg[3]\(3),
      I3 => \RESULT_REG.NORMAL.exp_op_reg[3]_0\,
      O => D(2)
    );
\RESULT_REG.NORMAL.exp_op[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABAAABABABABA"
    )
        port map (
      I0 => det_state_del(0),
      I1 => \RESULT_REG.NORMAL.exp_op[6]_i_5_n_0\,
      I2 => CO(0),
      I3 => \RESULT_REG.NORMAL.exp_op_reg[2]\,
      I4 => \RESULT_REG.NORMAL.exp_op_reg[2]_0\,
      I5 => \RESULT_REG.NORMAL.exp_op_reg[2]_1\,
      O => \^opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\
    );
\RESULT_REG.NORMAL.exp_op[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFFFAEFF"
    )
        port map (
      I0 => det_state_del(1),
      I1 => \RESULT_REG.NORMAL.exp_op_reg[2]_1\,
      I2 => \RESULT_REG.NORMAL.exp_op_reg[2]_2\,
      I3 => CO(0),
      I4 => \RESULT_REG.NORMAL.exp_op_reg[2]_3\,
      I5 => det_state_del(0),
      O => \^opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0\
    );
\RESULT_REG.NORMAL.exp_op[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => det_state_del(1),
      I1 => det_state_del(0),
      I2 => add_mant_msbs_del(0),
      I3 => lrg_almost_over_del,
      I4 => cancellation,
      O => \RESULT_REG.NORMAL.exp_op[6]_i_5_n_0\
    );
\RESULT_REG.NORMAL.mant_op[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0\,
      I1 => \^opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\,
      O => op_state(0)
    );
\RESULT_REG.NORMAL.mant_op[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => det_state_del(0),
      I1 => det_state_del(1),
      I2 => Q(0),
      I3 => \^opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0\,
      O => \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_1\
    );
\RESULT_REG.NORMAL.sign_op_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => det_sign_del,
      I1 => det_state_del(0),
      I2 => det_state_del(1),
      I3 => cancellation,
      O => op_sign
    );
\opt_has_pipe.first_q[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_a_tdata(7),
      I1 => s_axis_b_tdata(7),
      O => subtract
    );
\opt_has_pipe.first_q[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \opt_has_pipe.first_q[1]_i_4_n_0\,
      I1 => s_axis_b_tdata(0),
      I2 => s_axis_b_tdata(1),
      I3 => s_axis_b_tdata(2),
      O => b_exp_flt_all_one
    );
\opt_has_pipe.first_q[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axis_a_tdata[22]\,
      I1 => s_axis_a_tdata(0),
      I2 => s_axis_a_tdata(1),
      I3 => s_axis_a_tdata(2),
      O => a_exp_flt_all_one
    );
\opt_has_pipe.first_q[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axis_b_tdata(6),
      I1 => s_axis_b_tdata(5),
      I2 => s_axis_b_tdata(4),
      I3 => s_axis_b_tdata(3),
      O => \opt_has_pipe.first_q[1]_i_4_n_0\
    );
\opt_has_pipe.first_q[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axis_a_tdata(6),
      I1 => s_axis_a_tdata(5),
      I2 => s_axis_a_tdata(4),
      I3 => s_axis_a_tdata(3),
      O => \^s_axis_a_tdata[22]\
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[1]_0\(0),
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
      D => \opt_has_pipe.first_q_reg[1]_0\(1),
      Q => first_q(1),
      R => '0'
    );
\opt_has_pipe.i_pipe[2].pipe_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => first_q(0),
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
      D => first_q(1),
      Q => \opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][1]\,
      R => '0'
    );
\opt_has_pipe.i_pipe[3].pipe_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][0]\,
      Q => det_state_del(0),
      R => '0'
    );
\opt_has_pipe.i_pipe[3].pipe_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][1]\,
      Q => det_state_del(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_14\ is
  port (
    \opt_has_pipe.first_q_reg[0]_0\ : out STD_LOGIC;
    xor_rnd1 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \opt_has_pipe.first_q_reg[0]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \opt_has_pipe.first_q_reg[0]_2\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_3\ : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    b_exp_flt_all_zero : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]\ : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \opt_has_pipe.first_q_reg[1]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \opt_has_pipe.first_q_reg[6]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[7]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_4\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[5]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[4]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[3]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[2]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[2]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[3]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_14\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_14\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_14\ is
  signal \^opt_has_pipe.first_q_reg[0]_0\ : STD_LOGIC;
  signal zero_smallest : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "false";
begin
  \opt_has_pipe.first_q_reg[0]_0\ <= \^opt_has_pipe.first_q_reg[0]_0\;
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10EFEF10"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[0]_0\,
      I1 => \out\,
      I2 => \opt_has_pipe.first_q_reg[0]_4\,
      I3 => A(0),
      I4 => \opt_has_pipe.first_q_reg[3]\(0),
      O => \opt_has_pipe.first_q_reg[0]_1\(0)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10EFEF10"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[0]_0\,
      I1 => \out\,
      I2 => \opt_has_pipe.first_q_reg[1]\,
      I3 => A(0),
      I4 => \opt_has_pipe.first_q_reg[3]\(1),
      O => \opt_has_pipe.first_q_reg[0]_1\(1)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10EFEF10"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[0]_0\,
      I1 => \out\,
      I2 => \opt_has_pipe.first_q_reg[2]\,
      I3 => A(0),
      I4 => Q(0),
      O => xor_rnd1(0)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10EFEF10"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[0]_0\,
      I1 => \out\,
      I2 => \opt_has_pipe.first_q_reg[2]_0\,
      I3 => A(0),
      I4 => \opt_has_pipe.first_q_reg[3]\(2),
      O => \opt_has_pipe.first_q_reg[0]_1\(2)
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10EFEF10"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[0]_0\,
      I1 => \out\,
      I2 => \opt_has_pipe.first_q_reg[3]_0\,
      I3 => A(0),
      I4 => Q(1),
      O => xor_rnd1(1)
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10EFEF10"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[0]_0\,
      I1 => \out\,
      I2 => \opt_has_pipe.first_q_reg[3]_1\,
      I3 => A(0),
      I4 => \opt_has_pipe.first_q_reg[3]\(3),
      O => \opt_has_pipe.first_q_reg[0]_1\(3)
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10EFEF10"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[0]_0\,
      I1 => \out\,
      I2 => \opt_has_pipe.first_q_reg[4]\,
      I3 => A(0),
      I4 => Q(2),
      O => xor_rnd1(2)
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10EFEF10"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[0]_0\,
      I1 => \out\,
      I2 => \opt_has_pipe.first_q_reg[5]\,
      I3 => A(0),
      I4 => Q(3),
      O => xor_rnd1(3)
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10EFEF10"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[0]_0\,
      I1 => \out\,
      I2 => \opt_has_pipe.first_q_reg[6]\,
      I3 => A(0),
      I4 => Q(4),
      O => xor_rnd1(4)
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10EFEF10"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[0]_0\,
      I1 => \out\,
      I2 => \opt_has_pipe.first_q_reg[7]\,
      I3 => A(0),
      I4 => Q(5),
      O => xor_rnd1(5)
    );
\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10EFEF10"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[0]_0\,
      I1 => \out\,
      I2 => \opt_has_pipe.first_q_reg[8]\,
      I3 => A(0),
      I4 => Q(6),
      O => xor_rnd1(6)
    );
\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^opt_has_pipe.first_q_reg[0]_0\,
      I1 => \out\,
      O => \opt_has_pipe.first_q_reg[0]_2\
    );
\opt_has_pipe.first_q[0]_i_1__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0002"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg[0]_3\,
      I1 => s_axis_a_tdata(0),
      I2 => s_axis_a_tdata(1),
      I3 => s_axis_a_tdata(2),
      I4 => b_exp_flt_all_zero,
      O => zero_smallest
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => zero_smallest,
      Q => \^opt_has_pipe.first_q_reg[0]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_16\ is
  port (
    A : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[0]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_1\ : out STD_LOGIC;
    subtract : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]\ : in STD_LOGIC;
    zero_sml_preadd : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_16\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_16\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_16\ is
  signal \^a\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "false";
begin
  A(0) <= \^a\(0);
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA6"
    )
        port map (
      I0 => \^a\(0),
      I1 => \opt_has_pipe.first_q_reg[0]_2\,
      I2 => zero_sml_preadd,
      I3 => \out\,
      O => \opt_has_pipe.first_q_reg[0]_1\
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA6"
    )
        port map (
      I0 => \^a\(0),
      I1 => \opt_has_pipe.first_q_reg[1]\,
      I2 => zero_sml_preadd,
      I3 => \out\,
      O => \opt_has_pipe.first_q_reg[0]_0\
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => subtract,
      Q => \^a\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_4\ is
  port (
    cancellation : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_4\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_4\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_4\ is
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
      Q => cancellation,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized61\ is
  port (
    det_invalid_op : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized61\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized61\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized61\ is
  signal first_q : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
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
      D => det_invalid_op,
      Q => first_q,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized61_8\ is
  port (
    det_sign_del : out STD_LOGIC;
    det_sign : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized61_8\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized61_8\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized61_8\ is
  signal first_q : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  signal \opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][0]\ : STD_LOGIC;
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
      D => det_sign,
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
      Q => \opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][0]\,
      R => '0'
    );
\opt_has_pipe.i_pipe[3].pipe_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.i_pipe[2].pipe_reg_n_0_[2][0]\,
      Q => det_sign_del,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized63\ is
  port (
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.i_pipe[3].pipe_reg[3][6]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.i_pipe[3].pipe_reg[3][3]_1\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    aclk : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \RESULT_REG.NORMAL.exp_op_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \RESULT_REG.NORMAL.exp_op_reg[4]_0\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op_reg[4]_1\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op_reg[4]_2\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    NORM_DIST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \RESULT_REG.NORMAL.exp_op_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized63\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized63\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized63\ is
  signal \^di\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \RESULT_REG.NORMAL.exp_op[6]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.i_pipe[2].pipe_reg[2][1]_srl2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.i_pipe[2].pipe_reg[2][2]_srl2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.i_pipe[2].pipe_reg[2][3]_srl2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.i_pipe[2].pipe_reg[2][4]_srl2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.i_pipe[2].pipe_reg[2][5]_srl2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.i_pipe[2].pipe_reg[2][6]_srl2_n_0\ : STD_LOGIC;
  signal \^opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^opt_has_pipe.i_pipe[3].pipe_reg[3][3]_1\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2\ : label is "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2] ";
  attribute srl_name : string;
  attribute srl_name of \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2\ : label is "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2 ";
  attribute srl_bus_name of \opt_has_pipe.i_pipe[2].pipe_reg[2][1]_srl2\ : label is "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2] ";
  attribute srl_name of \opt_has_pipe.i_pipe[2].pipe_reg[2][1]_srl2\ : label is "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][1]_srl2 ";
  attribute srl_bus_name of \opt_has_pipe.i_pipe[2].pipe_reg[2][2]_srl2\ : label is "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2] ";
  attribute srl_name of \opt_has_pipe.i_pipe[2].pipe_reg[2][2]_srl2\ : label is "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][2]_srl2 ";
  attribute srl_bus_name of \opt_has_pipe.i_pipe[2].pipe_reg[2][3]_srl2\ : label is "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2] ";
  attribute srl_name of \opt_has_pipe.i_pipe[2].pipe_reg[2][3]_srl2\ : label is "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][3]_srl2 ";
  attribute srl_bus_name of \opt_has_pipe.i_pipe[2].pipe_reg[2][4]_srl2\ : label is "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2] ";
  attribute srl_name of \opt_has_pipe.i_pipe[2].pipe_reg[2][4]_srl2\ : label is "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][4]_srl2 ";
  attribute srl_bus_name of \opt_has_pipe.i_pipe[2].pipe_reg[2][5]_srl2\ : label is "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2] ";
  attribute srl_name of \opt_has_pipe.i_pipe[2].pipe_reg[2][5]_srl2\ : label is "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][5]_srl2 ";
  attribute srl_bus_name of \opt_has_pipe.i_pipe[2].pipe_reg[2][6]_srl2\ : label is "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2] ";
  attribute srl_name of \opt_has_pipe.i_pipe[2].pipe_reg[2][6]_srl2\ : label is "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_EXP_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][6]_srl2 ";
begin
  DI(2 downto 0) <= \^di\(2 downto 0);
  \opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0\(3 downto 0) <= \^opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0\(3 downto 0);
  \opt_has_pipe.i_pipe[3].pipe_reg[3][3]_1\ <= \^opt_has_pipe.i_pipe[3].pipe_reg[3][3]_1\;
\RESULT_REG.NORMAL.exp_op[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FDF0F2"
    )
        port map (
      I0 => \RESULT_REG.NORMAL.exp_op_reg[4]\(0),
      I1 => \RESULT_REG.NORMAL.exp_op_reg[1]\(0),
      I2 => \RESULT_REG.NORMAL.exp_op_reg[4]_2\,
      I3 => \RESULT_REG.NORMAL.exp_op_reg[4]_1\,
      I4 => \RESULT_REG.NORMAL.exp_op_reg[4]\(1),
      O => D(0)
    );
\RESULT_REG.NORMAL.exp_op[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00A6FFFF00AA"
    )
        port map (
      I0 => O(0),
      I1 => \RESULT_REG.NORMAL.exp_op_reg[4]\(2),
      I2 => \RESULT_REG.NORMAL.exp_op_reg[4]_0\,
      I3 => \RESULT_REG.NORMAL.exp_op_reg[4]_1\,
      I4 => \RESULT_REG.NORMAL.exp_op_reg[4]_2\,
      I5 => \RESULT_REG.NORMAL.exp_op_reg[4]\(3),
      O => D(1)
    );
\RESULT_REG.NORMAL.exp_op[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0006FF0A000AFF0A"
    )
        port map (
      I0 => O(1),
      I1 => \RESULT_REG.NORMAL.exp_op_reg[4]\(3),
      I2 => \RESULT_REG.NORMAL.exp_op_reg[4]_1\,
      I3 => \RESULT_REG.NORMAL.exp_op_reg[4]_2\,
      I4 => \^opt_has_pipe.i_pipe[3].pipe_reg[3][3]_1\,
      I5 => O(0),
      O => D(2)
    );
\RESULT_REG.NORMAL.exp_op[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \RESULT_REG.NORMAL.exp_op_reg[4]\(2),
      I1 => \RESULT_REG.NORMAL.exp_op_reg[4]\(1),
      I2 => \RESULT_REG.NORMAL.exp_op_reg[1]\(0),
      I3 => \RESULT_REG.NORMAL.exp_op_reg[4]\(0),
      I4 => \RESULT_REG.NORMAL.exp_op_reg[4]_1\,
      I5 => \RESULT_REG.NORMAL.exp_op_reg[4]_2\,
      O => \^opt_has_pipe.i_pipe[3].pipe_reg[3][3]_1\
    );
\RESULT_REG.NORMAL.exp_op[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3036303A"
    )
        port map (
      I0 => O(2),
      I1 => \RESULT_REG.NORMAL.exp_op[6]_i_2_n_0\,
      I2 => \RESULT_REG.NORMAL.exp_op_reg[4]_2\,
      I3 => \RESULT_REG.NORMAL.exp_op_reg[4]_1\,
      I4 => O(1),
      O => D(3)
    );
\RESULT_REG.NORMAL.exp_op[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => O(0),
      I1 => \RESULT_REG.NORMAL.exp_op_reg[4]\(2),
      I2 => \RESULT_REG.NORMAL.exp_op_reg[4]_0\,
      I3 => \RESULT_REG.NORMAL.exp_op_reg[4]_1\,
      I4 => \RESULT_REG.NORMAL.exp_op_reg[4]_2\,
      I5 => \RESULT_REG.NORMAL.exp_op_reg[4]\(3),
      O => \RESULT_REG.NORMAL.exp_op[6]_i_2_n_0\
    );
\RESULT_REG.NORMAL.exp_op[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009009"
    )
        port map (
      I0 => NORM_DIST(1),
      I1 => \^di\(0),
      I2 => \^opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0\(3),
      I3 => NORM_DIST(0),
      I4 => \^di\(2),
      I5 => \^di\(1),
      O => \opt_has_pipe.first_q_reg[0]\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^di\(2),
      O => \opt_has_pipe.i_pipe[3].pipe_reg[3][6]_0\(2)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^di\(1),
      O => \opt_has_pipe.i_pipe[3].pipe_reg[3][6]_0\(1)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^di\(0),
      I1 => NORM_DIST(1),
      O => \opt_has_pipe.i_pipe[3].pipe_reg[3][6]_0\(0)
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0\(2),
      I1 => \out\(0),
      O => S(0)
    );
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
      D => Q(0),
      Q => \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_n_0\
    );
\opt_has_pipe.i_pipe[2].pipe_reg[2][1]_srl2\: unisim.vcomponents.SRL16E
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
      D => Q(1),
      Q => \opt_has_pipe.i_pipe[2].pipe_reg[2][1]_srl2_n_0\
    );
\opt_has_pipe.i_pipe[2].pipe_reg[2][2]_srl2\: unisim.vcomponents.SRL16E
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
      D => Q(2),
      Q => \opt_has_pipe.i_pipe[2].pipe_reg[2][2]_srl2_n_0\
    );
\opt_has_pipe.i_pipe[2].pipe_reg[2][3]_srl2\: unisim.vcomponents.SRL16E
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
      D => Q(3),
      Q => \opt_has_pipe.i_pipe[2].pipe_reg[2][3]_srl2_n_0\
    );
\opt_has_pipe.i_pipe[2].pipe_reg[2][4]_srl2\: unisim.vcomponents.SRL16E
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
      D => Q(4),
      Q => \opt_has_pipe.i_pipe[2].pipe_reg[2][4]_srl2_n_0\
    );
\opt_has_pipe.i_pipe[2].pipe_reg[2][5]_srl2\: unisim.vcomponents.SRL16E
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
      D => Q(5),
      Q => \opt_has_pipe.i_pipe[2].pipe_reg[2][5]_srl2_n_0\
    );
\opt_has_pipe.i_pipe[2].pipe_reg[2][6]_srl2\: unisim.vcomponents.SRL16E
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
      D => Q(6),
      Q => \opt_has_pipe.i_pipe[2].pipe_reg[2][6]_srl2_n_0\
    );
\opt_has_pipe.i_pipe[3].pipe_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_n_0\,
      Q => \^opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0\(0),
      R => '0'
    );
\opt_has_pipe.i_pipe[3].pipe_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.i_pipe[2].pipe_reg[2][1]_srl2_n_0\,
      Q => \^opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0\(1),
      R => '0'
    );
\opt_has_pipe.i_pipe[3].pipe_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.i_pipe[2].pipe_reg[2][2]_srl2_n_0\,
      Q => \^opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0\(2),
      R => '0'
    );
\opt_has_pipe.i_pipe[3].pipe_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.i_pipe[2].pipe_reg[2][3]_srl2_n_0\,
      Q => \^opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0\(3),
      R => '0'
    );
\opt_has_pipe.i_pipe[3].pipe_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.i_pipe[2].pipe_reg[2][4]_srl2_n_0\,
      Q => \^di\(0),
      R => '0'
    );
\opt_has_pipe.i_pipe[3].pipe_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.i_pipe[2].pipe_reg[2][5]_srl2_n_0\,
      Q => \^di\(1),
      R => '0'
    );
\opt_has_pipe.i_pipe[3].pipe_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.i_pipe[2].pipe_reg[2][6]_srl2_n_0\,
      Q => \^di\(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized65\ is
  port (
    lrg_almost_over_del : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : out STD_LOGIC;
    \lrg_almost_over__0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    cancellation : in STD_LOGIC;
    add_mant_msbs_del : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized65\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized65\;

architecture STRUCTURE of \fp16_sub_xbip_pipe_v3_0_5_viv__parameterized65\ is
  signal \^lrg_almost_over_del\ : STD_LOGIC;
  signal \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_n_0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2\ : label is "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_OVER_NORMAL.LRG_ALMOST_OVER_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2] ";
  attribute srl_name : string;
  attribute srl_name of \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2\ : label is "U0/i_synth/\ADDSUB_OP.ADDSUB/SPEED_OP.LOGIC.OP/EXP/EXP_OFF.LRG_OVER_NORMAL.LRG_ALMOST_OVER_DELAY/i_pipe/opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2 ";
begin
  lrg_almost_over_del <= \^lrg_almost_over_del\;
\RESULT_REG.NORMAL.exp_op[6]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => cancellation,
      I1 => \^lrg_almost_over_del\,
      I2 => add_mant_msbs_del(0),
      O => \opt_has_pipe.first_q_reg[0]\
    );
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
      D => \lrg_almost_over__0\,
      Q => \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_n_0\
    );
\opt_has_pipe.i_pipe[3].pipe_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_n_0\,
      Q => \^lrg_almost_over_del\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_compare_eq_im is
  port (
    \zero_det_unreg[1]_3\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    p_8_out : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1\ : in STD_LOGIC;
    ext_del_distance : in STD_LOGIC_VECTOR ( 0 to 0 );
    \CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_compare_eq_im : entity is "compare_eq_im";
end fp16_sub_compare_eq_im;

architecture STRUCTURE of fp16_sub_compare_eq_im is
begin
CARRY_ZERO_DET: entity work.fp16_sub_carry_chain
     port map (
      \CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD_0\(3 downto 0) => \CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD\(3 downto 0),
      \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1_0\ => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1\,
      aclk => aclk,
      ext_del_distance(0) => ext_del_distance(0),
      p_8_out(5 downto 0) => p_8_out(5 downto 0),
      \zero_det_unreg[1]_3\(1 downto 0) => \zero_det_unreg[1]_3\(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_compare_eq_im__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    det_invalid_op : out STD_LOGIC;
    det_sign : out STD_LOGIC;
    b_exp_flt_all_one : in STD_LOGIC;
    \a_is_inf__0\ : in STD_LOGIC;
    zero_largest : in STD_LOGIC;
    CARRY_OUT : in STD_LOGIC;
    a_exp_flt_all_one : in STD_LOGIC;
    subtract : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_compare_eq_im__parameterized0\ : entity is "compare_eq_im";
end \fp16_sub_compare_eq_im__parameterized0\;

architecture STRUCTURE of \fp16_sub_compare_eq_im__parameterized0\ is
begin
CARRY_ZERO_DET: entity work.\fp16_sub_carry_chain__parameterized8\
     port map (
      CARRY_OUT => CARRY_OUT,
      D(1 downto 0) => D(1 downto 0),
      a_exp_flt_all_one => a_exp_flt_all_one,
      \a_is_inf__0\ => \a_is_inf__0\,
      b_exp_flt_all_one => b_exp_flt_all_one,
      det_invalid_op => det_invalid_op,
      det_sign => det_sign,
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]\,
      s_axis_a_tdata(0) => s_axis_a_tdata(0),
      s_axis_b_tdata(16 downto 0) => s_axis_b_tdata(16 downto 0),
      subtract => subtract,
      zero_largest => zero_largest
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_compare_eq_im__parameterized0_9\ is
  port (
    \a_is_inf__0\ : out STD_LOGIC;
    CARRY_OUT : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_compare_eq_im__parameterized0_9\ : entity is "compare_eq_im";
end \fp16_sub_compare_eq_im__parameterized0_9\;

architecture STRUCTURE of \fp16_sub_compare_eq_im__parameterized0_9\ is
begin
CARRY_ZERO_DET: entity work.\fp16_sub_carry_chain__parameterized8_10\
     port map (
      CARRY_OUT => CARRY_OUT,
      \a_is_inf__0\ => \a_is_inf__0\,
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]\,
      s_axis_a_tdata(18 downto 0) => s_axis_a_tdata(18 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_compare_gt is
  port (
    \s_axis_b_tdata[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CARRY_OUT : out STD_LOGIC;
    \s_axis_b_tdata[16]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axis_a_tdata_0_sp_1 : out STD_LOGIC;
    \s_axis_a_tdata[16]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_a_tdata_4_sp_1 : out STD_LOGIC;
    s_axis_a_tdata_8_sp_1 : out STD_LOGIC;
    s_axis_a_tdata_12_sp_1 : out STD_LOGIC;
    s_axis_b_tdata_14_sp_1 : out STD_LOGIC;
    zero_largest : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 22 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 22 downto 0 );
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[10]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[10]_0\ : in STD_LOGIC;
    \align_dist_0_ip__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_compare_gt : entity is "compare_gt";
end fp16_sub_compare_gt;

architecture STRUCTURE of fp16_sub_compare_gt is
  signal s_axis_a_tdata_0_sn_1 : STD_LOGIC;
  signal s_axis_a_tdata_12_sn_1 : STD_LOGIC;
  signal s_axis_a_tdata_4_sn_1 : STD_LOGIC;
  signal s_axis_a_tdata_8_sn_1 : STD_LOGIC;
  signal s_axis_b_tdata_14_sn_1 : STD_LOGIC;
begin
  s_axis_a_tdata_0_sp_1 <= s_axis_a_tdata_0_sn_1;
  s_axis_a_tdata_12_sp_1 <= s_axis_a_tdata_12_sn_1;
  s_axis_a_tdata_4_sp_1 <= s_axis_a_tdata_4_sn_1;
  s_axis_a_tdata_8_sp_1 <= s_axis_a_tdata_8_sn_1;
  s_axis_b_tdata_14_sp_1 <= s_axis_b_tdata_14_sn_1;
C_CHAIN: entity work.\fp16_sub_carry_chain__parameterized9\
     port map (
      A(3 downto 0) => A(3 downto 0),
      CARRYS_OUT(0) => CARRY_OUT,
      \align_dist_0_ip__0\ => \align_dist_0_ip__0\,
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.first_q_reg[0]_0\ => \opt_has_pipe.first_q_reg[0]_0\,
      \opt_has_pipe.first_q_reg[10]\ => \opt_has_pipe.first_q_reg[10]\,
      \opt_has_pipe.first_q_reg[10]_0\ => \opt_has_pipe.first_q_reg[10]_0\,
      s_axis_a_tdata(22 downto 0) => s_axis_a_tdata(22 downto 0),
      \s_axis_a_tdata[16]\(6 downto 0) => \s_axis_a_tdata[16]\(6 downto 0),
      s_axis_a_tdata_0_sp_1 => s_axis_a_tdata_0_sn_1,
      s_axis_a_tdata_12_sp_1 => s_axis_a_tdata_12_sn_1,
      s_axis_a_tdata_4_sp_1 => s_axis_a_tdata_4_sn_1,
      s_axis_a_tdata_8_sp_1 => s_axis_a_tdata_8_sn_1,
      s_axis_b_tdata(22 downto 0) => s_axis_b_tdata(22 downto 0),
      \s_axis_b_tdata[15]\(15 downto 0) => \s_axis_b_tdata[15]\(15 downto 0),
      \s_axis_b_tdata[16]\(10 downto 0) => \s_axis_b_tdata[16]\(10 downto 0),
      s_axis_b_tdata_14_sp_1 => s_axis_b_tdata_14_sn_1,
      zero_largest => zero_largest
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized1\ is
  port (
    zeros_del : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized1\ : entity is "delay";
end \fp16_sub_delay__parameterized1\;

architecture STRUCTURE of \fp16_sub_delay__parameterized1\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5\
     port map (
      aclk => aclk,
      \opt_has_pipe.first_q_reg[0]_0\ => \opt_has_pipe.first_q_reg[0]\,
      zeros_del => zeros_del
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized10\ is
  port (
    \opt_has_pipe.first_q_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    NORM_DIST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized10\ : entity is "delay";
end \fp16_sub_delay__parameterized10\;

architecture STRUCTURE of \fp16_sub_delay__parameterized10\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19\
     port map (
      CARRYS_OUT(1 downto 0) => CARRYS_OUT(1 downto 0),
      DI(0) => DI(0),
      NORM_DIST(1 downto 0) => NORM_DIST(1 downto 0),
      aclk => aclk,
      \opt_has_pipe.first_q_reg[1]_0\(0) => \opt_has_pipe.first_q_reg[1]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized10_17\ is
  port (
    ext_del_distance : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[1]\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized10_17\ : entity is "delay";
end \fp16_sub_delay__parameterized10_17\;

architecture STRUCTURE of \fp16_sub_delay__parameterized10_17\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_20\
     port map (
      aclk => aclk,
      ext_del_distance(0) => ext_del_distance(0),
      \opt_has_pipe.first_q_reg[1]_0\ => \opt_has_pipe.first_q_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized10_18\ is
  port (
    ext_del_distance : out STD_LOGIC_VECTOR ( 0 to 0 );
    first_q0 : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized10_18\ : entity is "delay";
end \fp16_sub_delay__parameterized10_18\;

architecture STRUCTURE of \fp16_sub_delay__parameterized10_18\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_19\
     port map (
      aclk => aclk,
      ext_del_distance(0) => ext_del_distance(0),
      first_q0 => first_q0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized10_21\ is
  port (
    \opt_has_pipe.first_q_reg[0]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]\ : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    abs_dist_mux : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]_0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    zero_sml_preadd : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[7]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \opt_has_pipe.first_q_reg[7]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]_1\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[6]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized10_21\ : entity is "delay";
end \fp16_sub_delay__parameterized10_21\;

architecture STRUCTURE of \fp16_sub_delay__parameterized10_21\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_22\
     port map (
      A(3 downto 0) => A(3 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      abs_dist_mux(0) => abs_dist_mux(0),
      aclk => aclk,
      \opt_has_pipe.first_q_reg[0]_0\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.first_q_reg[1]_0\ => \opt_has_pipe.first_q_reg[1]\,
      \opt_has_pipe.first_q_reg[1]_1\ => \opt_has_pipe.first_q_reg[1]_0\,
      \opt_has_pipe.first_q_reg[6]\ => \opt_has_pipe.first_q_reg[6]\,
      \opt_has_pipe.first_q_reg[7]\ => \opt_has_pipe.first_q_reg[7]\,
      \opt_has_pipe.first_q_reg[7]_0\ => \opt_has_pipe.first_q_reg[7]_0\,
      \opt_has_pipe.first_q_reg[8]\ => \opt_has_pipe.first_q_reg[8]\,
      \opt_has_pipe.first_q_reg[8]_0\(0) => \opt_has_pipe.first_q_reg[8]_0\(0),
      \opt_has_pipe.first_q_reg[8]_1\ => \opt_has_pipe.first_q_reg[8]_1\,
      \out\ => \out\,
      zero_sml_preadd => zero_sml_preadd
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized10_6\ is
  port (
    add_mant_msbs_del : out STD_LOGIC_VECTOR ( 0 to 0 );
    add_mant : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized10_6\ : entity is "delay";
end \fp16_sub_delay__parameterized10_6\;

architecture STRUCTURE of \fp16_sub_delay__parameterized10_6\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized19_7\
     port map (
      aclk => aclk,
      add_mant(0) => add_mant(0),
      add_mant_msbs_del(0) => add_mant_msbs_del(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized11\ is
  port (
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axis_b_tdata[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \align_dist_0_ip__0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[14]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[16]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[16]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[12]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[13]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[15]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[15]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[11]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[10]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[9]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[7]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[6]\ : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \opt_has_pipe.first_q_reg[18]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[18]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[17]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[17]_0\ : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\ : in STD_LOGIC;
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\ : in STD_LOGIC;
    zero_sml_preadd : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    aclk : in STD_LOGIC;
    \sml_shift_mux__16\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    minusOp : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized11\ : entity is "delay";
end \fp16_sub_delay__parameterized11\;

architecture STRUCTURE of \fp16_sub_delay__parameterized11\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized21\
     port map (
      A(1 downto 0) => A(1 downto 0),
      \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\ => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\,
      \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\ => \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\,
      CO(0) => CO(0),
      D(10 downto 0) => D(10 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      S(2 downto 0) => S(2 downto 0),
      aclk => aclk,
      \align_dist_0_ip__0\ => \align_dist_0_ip__0\,
      minusOp(4 downto 0) => minusOp(4 downto 0),
      \opt_has_pipe.first_q_reg[10]_0\ => \opt_has_pipe.first_q_reg[10]\,
      \opt_has_pipe.first_q_reg[11]_0\ => \opt_has_pipe.first_q_reg[11]\,
      \opt_has_pipe.first_q_reg[12]_0\ => \opt_has_pipe.first_q_reg[12]\,
      \opt_has_pipe.first_q_reg[13]_0\ => \opt_has_pipe.first_q_reg[13]\,
      \opt_has_pipe.first_q_reg[14]_0\ => \opt_has_pipe.first_q_reg[14]\,
      \opt_has_pipe.first_q_reg[15]_0\ => \opt_has_pipe.first_q_reg[15]\,
      \opt_has_pipe.first_q_reg[15]_1\ => \opt_has_pipe.first_q_reg[15]_0\,
      \opt_has_pipe.first_q_reg[16]_0\ => \opt_has_pipe.first_q_reg[16]\,
      \opt_has_pipe.first_q_reg[16]_1\ => \opt_has_pipe.first_q_reg[16]_0\,
      \opt_has_pipe.first_q_reg[17]_0\ => \opt_has_pipe.first_q_reg[17]\,
      \opt_has_pipe.first_q_reg[17]_1\ => \opt_has_pipe.first_q_reg[17]_0\,
      \opt_has_pipe.first_q_reg[18]_0\ => \opt_has_pipe.first_q_reg[18]\,
      \opt_has_pipe.first_q_reg[18]_1\ => \opt_has_pipe.first_q_reg[18]_0\,
      \opt_has_pipe.first_q_reg[5]_0\(0) => \opt_has_pipe.first_q_reg[5]\(0),
      \opt_has_pipe.first_q_reg[6]_0\ => \opt_has_pipe.first_q_reg[6]\,
      \opt_has_pipe.first_q_reg[7]_0\ => \opt_has_pipe.first_q_reg[7]\,
      \opt_has_pipe.first_q_reg[8]_0\ => \opt_has_pipe.first_q_reg[8]\,
      \opt_has_pipe.first_q_reg[9]_0\ => \opt_has_pipe.first_q_reg[9]\,
      \out\ => \out\,
      s_axis_a_tdata(6 downto 0) => s_axis_a_tdata(6 downto 0),
      s_axis_b_tdata(6 downto 0) => s_axis_b_tdata(6 downto 0),
      \s_axis_b_tdata[19]\(3 downto 0) => \s_axis_b_tdata[19]\(3 downto 0),
      \sml_shift_mux__16\(6 downto 0) => \sml_shift_mux__16\(6 downto 0),
      zero_sml_preadd => zero_sml_preadd
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized14\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \opt_has_pipe.first_q_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized14\ : entity is "delay";
end \fp16_sub_delay__parameterized14\;

architecture STRUCTURE of \fp16_sub_delay__parameterized14\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized27\
     port map (
      Q(6 downto 0) => Q(6 downto 0),
      aclk => aclk,
      \opt_has_pipe.first_q_reg[6]_0\(6 downto 0) => \opt_has_pipe.first_q_reg[6]\(6 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized16\ is
  port (
    add_mant : out STD_LOGIC_VECTOR ( 8 downto 0 );
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized16\ : entity is "delay";
end \fp16_sub_delay__parameterized16\;

architecture STRUCTURE of \fp16_sub_delay__parameterized16\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized31\
     port map (
      D(8 downto 0) => D(8 downto 0),
      aclk => aclk,
      add_mant(8 downto 0) => add_mant(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized17\ is
  port (
    zero_largest : out STD_LOGIC;
    \s_axis_a_tdata[22]\ : out STD_LOGIC;
    b_exp_flt_all_zero : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    aclk : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized17\ : entity is "delay";
end \fp16_sub_delay__parameterized17\;

architecture STRUCTURE of \fp16_sub_delay__parameterized17\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized33\
     port map (
      aclk => aclk,
      b_exp_flt_all_zero => b_exp_flt_all_zero,
      \opt_has_pipe.first_q_reg[8]_0\(8 downto 0) => \opt_has_pipe.first_q_reg[8]\(8 downto 0),
      \opt_has_pipe.first_q_reg[9]_0\(9 downto 0) => \opt_has_pipe.first_q_reg[9]\(9 downto 0),
      s_axis_a_tdata(6 downto 0) => s_axis_a_tdata(6 downto 0),
      \s_axis_a_tdata[22]\ => \s_axis_a_tdata[22]\,
      s_axis_b_tdata(6 downto 0) => s_axis_b_tdata(6 downto 0),
      zero_largest => zero_largest
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized1_0\ is
  port (
    cancellation : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized1_0\ : entity is "delay";
end \fp16_sub_delay__parameterized1_0\;

architecture STRUCTURE of \fp16_sub_delay__parameterized1_0\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_4\
     port map (
      aclk => aclk,
      cancellation => cancellation,
      \opt_has_pipe.first_q_reg[0]_0\ => \opt_has_pipe.first_q_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized1_11\ is
  port (
    A : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[0]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_0\ : out STD_LOGIC;
    subtract : in STD_LOGIC;
    aclk : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]\ : in STD_LOGIC;
    zero_sml_preadd : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized1_11\ : entity is "delay";
end \fp16_sub_delay__parameterized1_11\;

architecture STRUCTURE of \fp16_sub_delay__parameterized1_11\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_16\
     port map (
      A(0) => A(0),
      aclk => aclk,
      \opt_has_pipe.first_q_reg[0]_0\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.first_q_reg[0]_1\ => \opt_has_pipe.first_q_reg[0]_0\,
      \opt_has_pipe.first_q_reg[0]_2\ => \opt_has_pipe.first_q_reg[0]_1\,
      \opt_has_pipe.first_q_reg[1]\ => \opt_has_pipe.first_q_reg[1]\,
      \out\ => \out\,
      subtract => subtract,
      zero_sml_preadd => zero_sml_preadd
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized1_13\ is
  port (
    zero_sml_preadd : out STD_LOGIC;
    xor_rnd1 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \opt_has_pipe.first_q_reg[0]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \opt_has_pipe.first_q_reg[0]_0\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_1\ : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    b_exp_flt_all_zero : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]\ : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \opt_has_pipe.first_q_reg[1]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \opt_has_pipe.first_q_reg[6]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[7]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_2\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[5]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[4]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[3]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[2]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[2]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[3]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized1_13\ : entity is "delay";
end \fp16_sub_delay__parameterized1_13\;

architecture STRUCTURE of \fp16_sub_delay__parameterized1_13\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized5_14\
     port map (
      A(0) => A(0),
      Q(6 downto 0) => Q(6 downto 0),
      aclk => aclk,
      b_exp_flt_all_zero => b_exp_flt_all_zero,
      \opt_has_pipe.first_q_reg[0]_0\ => zero_sml_preadd,
      \opt_has_pipe.first_q_reg[0]_1\(3 downto 0) => \opt_has_pipe.first_q_reg[0]\(3 downto 0),
      \opt_has_pipe.first_q_reg[0]_2\ => \opt_has_pipe.first_q_reg[0]_0\,
      \opt_has_pipe.first_q_reg[0]_3\ => \opt_has_pipe.first_q_reg[0]_1\,
      \opt_has_pipe.first_q_reg[0]_4\ => \opt_has_pipe.first_q_reg[0]_2\,
      \opt_has_pipe.first_q_reg[1]\ => \opt_has_pipe.first_q_reg[1]\,
      \opt_has_pipe.first_q_reg[2]\ => \opt_has_pipe.first_q_reg[2]\,
      \opt_has_pipe.first_q_reg[2]_0\ => \opt_has_pipe.first_q_reg[2]_0\,
      \opt_has_pipe.first_q_reg[3]\(3 downto 0) => \opt_has_pipe.first_q_reg[3]\(3 downto 0),
      \opt_has_pipe.first_q_reg[3]_0\ => \opt_has_pipe.first_q_reg[3]_0\,
      \opt_has_pipe.first_q_reg[3]_1\ => \opt_has_pipe.first_q_reg[3]_1\,
      \opt_has_pipe.first_q_reg[4]\ => \opt_has_pipe.first_q_reg[4]\,
      \opt_has_pipe.first_q_reg[5]\ => \opt_has_pipe.first_q_reg[5]\,
      \opt_has_pipe.first_q_reg[6]\ => \opt_has_pipe.first_q_reg[6]\,
      \opt_has_pipe.first_q_reg[7]\ => \opt_has_pipe.first_q_reg[7]\,
      \opt_has_pipe.first_q_reg[8]\ => \opt_has_pipe.first_q_reg[8]\,
      \out\ => \out\,
      s_axis_a_tdata(2 downto 0) => s_axis_a_tdata(2 downto 0),
      xor_rnd1(6 downto 0) => xor_rnd1(6 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized20\ is
  port (
    add_mant : out STD_LOGIC_VECTOR ( 10 downto 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized20\ : entity is "delay";
end \fp16_sub_delay__parameterized20\;

architecture STRUCTURE of \fp16_sub_delay__parameterized20\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized39\
     port map (
      D(10 downto 0) => D(10 downto 0),
      aclk => aclk,
      add_mant(10 downto 0) => add_mant(10 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized23\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.first_q_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    A : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.first_q_reg[1]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_1\ : out STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \RESULT_REG.NORMAL.mant_op_reg[3]\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.mant_op_reg[1]\ : in STD_LOGIC;
    \CHAIN_GEN[2].C_MUX.CARRY_MUX\ : in STD_LOGIC;
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_0\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.mant_op_reg[1]_0\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.mant_op_reg[3]_0\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op[6]_i_4\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op[6]_i_4_0\ : in STD_LOGIC;
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6\ : in STD_LOGIC;
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0\ : in STD_LOGIC;
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1\ : in STD_LOGIC;
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8\ : in STD_LOGIC;
    zeros_del : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 0 to 0 );
    \op_a__0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized23\ : entity is "delay";
end \fp16_sub_delay__parameterized23\;

architecture STRUCTURE of \fp16_sub_delay__parameterized23\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized45\
     port map (
      A(0) => A(0),
      CARRYS_OUT(0) => CARRYS_OUT(0),
      \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0\ => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6\,
      \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1\ => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0\,
      \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_2\ => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1\,
      \CHAIN_GEN[2].C_MUX.CARRY_MUX\ => \CHAIN_GEN[2].C_MUX.CARRY_MUX\,
      \CHAIN_GEN[2].C_MUX.CARRY_MUX_0\ => \CHAIN_GEN[2].C_MUX.CARRY_MUX_0\,
      \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8_0\ => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8\,
      D(1 downto 0) => D(1 downto 0),
      DI(2 downto 0) => DI(2 downto 0),
      \RESULT_REG.NORMAL.exp_op[6]_i_4\ => \RESULT_REG.NORMAL.exp_op[6]_i_4\,
      \RESULT_REG.NORMAL.exp_op[6]_i_4_0\ => \RESULT_REG.NORMAL.exp_op[6]_i_4_0\,
      \RESULT_REG.NORMAL.mant_op_reg[1]\ => \RESULT_REG.NORMAL.mant_op_reg[1]\,
      \RESULT_REG.NORMAL.mant_op_reg[1]_0\ => \RESULT_REG.NORMAL.mant_op_reg[1]_0\,
      \RESULT_REG.NORMAL.mant_op_reg[3]\ => \RESULT_REG.NORMAL.mant_op_reg[3]\,
      \RESULT_REG.NORMAL.mant_op_reg[3]_0\ => \RESULT_REG.NORMAL.mant_op_reg[3]_0\,
      aclk => aclk,
      \op_a__0\(0) => \op_a__0\(0),
      \opt_has_pipe.first_q_reg[0]_0\(0) => \opt_has_pipe.first_q_reg[0]\(0),
      \opt_has_pipe.first_q_reg[0]_1\ => \opt_has_pipe.first_q_reg[0]_0\,
      \opt_has_pipe.first_q_reg[0]_2\ => \opt_has_pipe.first_q_reg[0]_1\,
      \opt_has_pipe.first_q_reg[1]_0\ => \opt_has_pipe.first_q_reg[1]\,
      \opt_has_pipe.first_q_reg[2]_0\(2 downto 0) => \opt_has_pipe.first_q_reg[2]\(2 downto 0),
      \out\(2 downto 0) => \out\(2 downto 0),
      zeros_del => zeros_del
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized23_2\ is
  port (
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[1]\ : out STD_LOGIC;
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[3]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : out STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 0 to 0 );
    op_a : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized23_2\ : entity is "delay";
end \fp16_sub_delay__parameterized23_2\;

architecture STRUCTURE of \fp16_sub_delay__parameterized23_2\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized45_3\
     port map (
      CARRYS_OUT(0) => CARRYS_OUT(0),
      D(1 downto 0) => D(1 downto 0),
      DI(0) => DI(0),
      aclk => aclk,
      op_a(1 downto 0) => op_a(1 downto 0),
      \opt_has_pipe.first_q_reg[0]_0\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.first_q_reg[1]_0\ => \opt_has_pipe.first_q_reg[1]\,
      \opt_has_pipe.first_q_reg[3]_0\ => \opt_has_pipe.first_q_reg[3]\,
      \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\(0) => \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\(0),
      \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\ => \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\,
      \out\(2 downto 0) => \out\(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized26\ is
  port (
    A : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \opt_has_pipe.first_q_reg[16]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \opt_has_pipe.first_q_reg[18]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[16]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[17]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[19]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[14]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[19]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[15]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[17]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[16]_1\ : out STD_LOGIC;
    \RESULT_REG.NORMAL.mant_op_reg[14]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5\ : in STD_LOGIC;
    zeros_del : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aclk : in STD_LOGIC;
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[11]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[10]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[9]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[7]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[6]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[5]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[4]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[12]\ : in STD_LOGIC;
    add_mant : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized26\ : entity is "delay";
end \fp16_sub_delay__parameterized26\;

architecture STRUCTURE of \fp16_sub_delay__parameterized26\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized49\
     port map (
      A(7 downto 0) => A(7 downto 0),
      CARRYS_OUT(0) => CARRYS_OUT(0),
      \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5_0\ => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5\,
      D(2 downto 0) => D(2 downto 0),
      \RESULT_REG.NORMAL.mant_op_reg[14]\ => \RESULT_REG.NORMAL.mant_op_reg[14]\,
      aclk => aclk,
      add_mant(7 downto 0) => add_mant(7 downto 0),
      \opt_has_pipe.first_q_reg[0]\(0) => \opt_has_pipe.first_q_reg[0]\(0),
      \opt_has_pipe.first_q_reg[10]_0\ => \opt_has_pipe.first_q_reg[10]\,
      \opt_has_pipe.first_q_reg[11]_0\ => \opt_has_pipe.first_q_reg[11]\,
      \opt_has_pipe.first_q_reg[12]_0\ => \opt_has_pipe.first_q_reg[12]\,
      \opt_has_pipe.first_q_reg[14]_0\ => \opt_has_pipe.first_q_reg[14]\,
      \opt_has_pipe.first_q_reg[15]_0\ => \opt_has_pipe.first_q_reg[15]\,
      \opt_has_pipe.first_q_reg[16]_0\(4 downto 0) => \opt_has_pipe.first_q_reg[16]\(4 downto 0),
      \opt_has_pipe.first_q_reg[16]_1\ => \opt_has_pipe.first_q_reg[16]_0\,
      \opt_has_pipe.first_q_reg[16]_2\ => \opt_has_pipe.first_q_reg[16]_1\,
      \opt_has_pipe.first_q_reg[17]_0\ => \opt_has_pipe.first_q_reg[17]\,
      \opt_has_pipe.first_q_reg[17]_1\ => \opt_has_pipe.first_q_reg[17]_0\,
      \opt_has_pipe.first_q_reg[18]_0\ => \opt_has_pipe.first_q_reg[18]\,
      \opt_has_pipe.first_q_reg[19]_0\ => \opt_has_pipe.first_q_reg[19]\,
      \opt_has_pipe.first_q_reg[19]_1\ => \opt_has_pipe.first_q_reg[19]_0\,
      \opt_has_pipe.first_q_reg[4]_0\ => \opt_has_pipe.first_q_reg[4]\,
      \opt_has_pipe.first_q_reg[5]_0\ => \opt_has_pipe.first_q_reg[5]\,
      \opt_has_pipe.first_q_reg[6]_0\ => \opt_has_pipe.first_q_reg[6]\,
      \opt_has_pipe.first_q_reg[7]_0\ => \opt_has_pipe.first_q_reg[7]\,
      \opt_has_pipe.first_q_reg[8]_0\ => \opt_has_pipe.first_q_reg[8]\,
      \opt_has_pipe.first_q_reg[9]_0\ => \opt_has_pipe.first_q_reg[9]\,
      \out\(2 downto 0) => \out\(2 downto 0),
      zeros_del => zeros_del
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized36\ is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\ : out STD_LOGIC;
    \opt_has_pipe.i_pipe[3].pipe_reg[3][1]\ : out STD_LOGIC;
    subtract : out STD_LOGIC;
    a_exp_flt_all_one : out STD_LOGIC;
    \s_axis_a_tdata[22]\ : out STD_LOGIC;
    b_exp_flt_all_one : out STD_LOGIC;
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\ : out STD_LOGIC;
    op_state : out STD_LOGIC_VECTOR ( 0 to 0 );
    op_sign : out STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \RESULT_REG.NORMAL.exp_op_reg[3]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RESULT_REG.NORMAL.exp_op_reg[2]\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op_reg[2]_0\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op_reg[2]_1\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op_reg[2]_2\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op_reg[2]_3\ : in STD_LOGIC;
    add_mant_msbs_del : in STD_LOGIC_VECTOR ( 0 to 0 );
    lrg_almost_over_del : in STD_LOGIC;
    cancellation : in STD_LOGIC;
    det_sign_del : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized36\ : entity is "delay";
end \fp16_sub_delay__parameterized36\;

architecture STRUCTURE of \fp16_sub_delay__parameterized36\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized59\
     port map (
      CO(0) => CO(0),
      D(2 downto 0) => D(2 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      \RESULT_REG.NORMAL.exp_op_reg[2]\ => \RESULT_REG.NORMAL.exp_op_reg[2]\,
      \RESULT_REG.NORMAL.exp_op_reg[2]_0\ => \RESULT_REG.NORMAL.exp_op_reg[2]_0\,
      \RESULT_REG.NORMAL.exp_op_reg[2]_1\ => \RESULT_REG.NORMAL.exp_op_reg[2]_1\,
      \RESULT_REG.NORMAL.exp_op_reg[2]_2\ => \RESULT_REG.NORMAL.exp_op_reg[2]_2\,
      \RESULT_REG.NORMAL.exp_op_reg[2]_3\ => \RESULT_REG.NORMAL.exp_op_reg[2]_3\,
      \RESULT_REG.NORMAL.exp_op_reg[3]\(3 downto 0) => \RESULT_REG.NORMAL.exp_op_reg[3]\(3 downto 0),
      \RESULT_REG.NORMAL.exp_op_reg[3]_0\ => \RESULT_REG.NORMAL.exp_op_reg[3]_0\,
      a_exp_flt_all_one => a_exp_flt_all_one,
      aclk => aclk,
      add_mant_msbs_del(0) => add_mant_msbs_del(0),
      b_exp_flt_all_one => b_exp_flt_all_one,
      cancellation => cancellation,
      det_sign_del => det_sign_del,
      lrg_almost_over_del => lrg_almost_over_del,
      op_sign => op_sign,
      op_state(0) => op_state(0),
      \opt_has_pipe.first_q_reg[1]_0\(1 downto 0) => \opt_has_pipe.first_q_reg[1]\(1 downto 0),
      \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\ => \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\,
      \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_1\ => \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\,
      \opt_has_pipe.i_pipe[3].pipe_reg[3][1]_0\ => \opt_has_pipe.i_pipe[3].pipe_reg[3][1]\,
      s_axis_a_tdata(7 downto 0) => s_axis_a_tdata(7 downto 0),
      \s_axis_a_tdata[22]\ => \s_axis_a_tdata[22]\,
      s_axis_b_tdata(7 downto 0) => s_axis_b_tdata(7 downto 0),
      subtract => subtract
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized37\ is
  port (
    det_invalid_op : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized37\ : entity is "delay";
end \fp16_sub_delay__parameterized37\;

architecture STRUCTURE of \fp16_sub_delay__parameterized37\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized61\
     port map (
      aclk => aclk,
      det_invalid_op => det_invalid_op
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized38\ is
  port (
    det_sign_del : out STD_LOGIC;
    det_sign : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized38\ : entity is "delay";
end \fp16_sub_delay__parameterized38\;

architecture STRUCTURE of \fp16_sub_delay__parameterized38\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized61_8\
     port map (
      aclk => aclk,
      det_sign => det_sign,
      det_sign_del => det_sign_del
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized39\ is
  port (
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.i_pipe[3].pipe_reg[3][3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.i_pipe[3].pipe_reg[3][6]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    aclk : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \RESULT_REG.NORMAL.exp_op_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \RESULT_REG.NORMAL.exp_op_reg[4]_0\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op_reg[4]_1\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op_reg[4]_2\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    NORM_DIST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \RESULT_REG.NORMAL.exp_op_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized39\ : entity is "delay";
end \fp16_sub_delay__parameterized39\;

architecture STRUCTURE of \fp16_sub_delay__parameterized39\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized63\
     port map (
      D(3 downto 0) => D(3 downto 0),
      DI(2 downto 0) => DI(2 downto 0),
      NORM_DIST(1 downto 0) => NORM_DIST(1 downto 0),
      O(2 downto 0) => O(2 downto 0),
      Q(6 downto 0) => Q(6 downto 0),
      \RESULT_REG.NORMAL.exp_op_reg[1]\(0) => \RESULT_REG.NORMAL.exp_op_reg[1]\(0),
      \RESULT_REG.NORMAL.exp_op_reg[4]\(3 downto 0) => \RESULT_REG.NORMAL.exp_op_reg[4]\(3 downto 0),
      \RESULT_REG.NORMAL.exp_op_reg[4]_0\ => \RESULT_REG.NORMAL.exp_op_reg[4]_0\,
      \RESULT_REG.NORMAL.exp_op_reg[4]_1\ => \RESULT_REG.NORMAL.exp_op_reg[4]_1\,
      \RESULT_REG.NORMAL.exp_op_reg[4]_2\ => \RESULT_REG.NORMAL.exp_op_reg[4]_2\,
      S(0) => S(0),
      aclk => aclk,
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0\(3 downto 0) => \opt_has_pipe.i_pipe[3].pipe_reg[3][3]\(3 downto 0),
      \opt_has_pipe.i_pipe[3].pipe_reg[3][3]_1\ => \opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0\,
      \opt_has_pipe.i_pipe[3].pipe_reg[3][6]_0\(2 downto 0) => \opt_has_pipe.i_pipe[3].pipe_reg[3][6]\(2 downto 0),
      \out\(0) => \out\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized40\ is
  port (
    lrg_almost_over_del : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : out STD_LOGIC;
    \lrg_almost_over__0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    cancellation : in STD_LOGIC;
    add_mant_msbs_del : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized40\ : entity is "delay";
end \fp16_sub_delay__parameterized40\;

architecture STRUCTURE of \fp16_sub_delay__parameterized40\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized65\
     port map (
      aclk => aclk,
      add_mant_msbs_del(0) => add_mant_msbs_del(0),
      cancellation => cancellation,
      \lrg_almost_over__0\ => \lrg_almost_over__0\,
      lrg_almost_over_del => lrg_almost_over_del,
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized5\ is
  port (
    \out\ : out STD_LOGIC;
    zero_align_align : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized5\ : entity is "delay";
end \fp16_sub_delay__parameterized5\;

architecture STRUCTURE of \fp16_sub_delay__parameterized5\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized13_15\
     port map (
      aclk => aclk,
      \out\ => \out\,
      zero_align_align => zero_align_align
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized5_12\ is
  port (
    \out\ : out STD_LOGIC;
    zeros_add : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized5_12\ : entity is "delay";
end \fp16_sub_delay__parameterized5_12\;

architecture STRUCTURE of \fp16_sub_delay__parameterized5_12\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized13\
     port map (
      aclk => aclk,
      \out\ => \out\,
      zeros_add => zeros_add
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_delay__parameterized9\ is
  port (
    p_8_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    aclk : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[4]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[3]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[2]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    minusOp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_delay__parameterized9\ : entity is "delay";
end \fp16_sub_delay__parameterized9\;

architecture STRUCTURE of \fp16_sub_delay__parameterized9\ is
begin
i_pipe: entity work.\fp16_sub_xbip_pipe_v3_0_5_viv__parameterized17\
     port map (
      CO(0) => CO(0),
      aclk => aclk,
      minusOp(1 downto 0) => minusOp(1 downto 0),
      \opt_has_pipe.first_q_reg[0]_0\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.first_q_reg[1]_0\ => \opt_has_pipe.first_q_reg[1]\,
      \opt_has_pipe.first_q_reg[2]_0\ => \opt_has_pipe.first_q_reg[2]\,
      \opt_has_pipe.first_q_reg[3]_0\ => \opt_has_pipe.first_q_reg[3]\,
      \opt_has_pipe.first_q_reg[4]_0\ => \opt_has_pipe.first_q_reg[4]\,
      p_8_out(5 downto 0) => p_8_out(5 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_flt_round_bit is
  port (
    CARRY_OUT : out STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    lopt : out STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : in STD_LOGIC;
    lopt_3 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_flt_round_bit : entity is "flt_round_bit";
end fp16_sub_flt_round_bit;

architecture STRUCTURE of fp16_sub_flt_round_bit is
begin
\NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1\: entity work.\fp16_sub_carry_chain__parameterized4\
     port map (
      A(1 downto 0) => A(1 downto 0),
      CARRY_OUT => CARRY_OUT,
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_2 => lopt_2,
      lopt_3 => lopt_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_carry_chain__parameterized0\ is
  port (
    CARRY_IN : out STD_LOGIC;
    add_mant : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    carry_in2_rnd1 : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]\ : in STD_LOGIC;
    xor_rnd1 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    aclk : in STD_LOGIC;
    lopt : in STD_LOGIC;
    lopt_1 : out STD_LOGIC;
    lopt_2 : in STD_LOGIC;
    lopt_3 : in STD_LOGIC;
    lopt_4 : in STD_LOGIC;
    lopt_5 : out STD_LOGIC;
    lopt_6 : in STD_LOGIC;
    lopt_7 : in STD_LOGIC;
    lopt_8 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_carry_chain__parameterized0\ : entity is "carry_chain";
end \fp16_sub_carry_chain__parameterized0\;

architecture STRUCTURE of \fp16_sub_carry_chain__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[7].Q_XOR.SUM_XOR__0\ : STD_LOGIC;
  signal \^lopt_2\ : STD_LOGIC;
  signal \^lopt_3\ : STD_LOGIC;
  signal \^lopt_4\ : STD_LOGIC;
  signal \^lopt_5\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \CHAIN_GEN[2].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[2].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \CHAIN_GEN[2].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \CHAIN_GEN[6].C_MUX.CARRY_MUX_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \CHAIN_GEN[6].C_MUX.CARRY_MUX_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \CHAIN_GEN[6].C_MUX.CARRY_MUX_CARRY4\ : label is "PRIMITIVE";
begin
  \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ <= lopt;
  \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\ <= lopt_2;
  \^lopt_3\ <= lopt_6;
  \^lopt_4\ <= lopt_7;
  lopt_1 <= \<const0>\;
  lopt_5 <= \^lopt_2\;
  lopt_8 <= \^lopt_5\;
  p_7_out <= lopt_4;
  p_8_out <= lopt_3;
\CHAIN_GEN[2].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => Q(3 downto 0),
      O(3) => p_3_out,
      O(2) => p_4_out,
      O(1) => p_5_out,
      O(0) => p_6_out,
      S(3 downto 0) => xor_rnd1(3 downto 0)
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \^lopt_2\,
      CO(2) => CARRY_IN,
      CO(1) => \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3) => \^lopt_3\,
      DI(2 downto 0) => Q(6 downto 4),
      O(3) => \^lopt_5\,
      O(2) => p_0_out,
      O(1) => \CHAIN_GEN[7].Q_XOR.SUM_XOR__0\,
      O(0) => p_2_out,
      S(3) => \^lopt_4\,
      S(2 downto 0) => xor_rnd1(6 downto 4)
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
Q_DEL: entity work.\fp16_sub_delay__parameterized16\
     port map (
      D(8) => p_0_out,
      D(7) => \CHAIN_GEN[7].Q_XOR.SUM_XOR__0\,
      D(6) => p_2_out,
      D(5) => p_3_out,
      D(4) => p_4_out,
      D(3) => p_5_out,
      D(2) => p_6_out,
      D(1) => p_7_out,
      D(0) => p_8_out,
      aclk => aclk,
      add_mant(8 downto 0) => add_mant(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_compare is
  port (
    \s_axis_b_tdata[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CARRYS_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axis_b_tdata[16]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axis_a_tdata_0_sp_1 : out STD_LOGIC;
    \s_axis_a_tdata[16]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_a_tdata_4_sp_1 : out STD_LOGIC;
    s_axis_a_tdata_8_sp_1 : out STD_LOGIC;
    s_axis_a_tdata_12_sp_1 : out STD_LOGIC;
    s_axis_b_tdata_14_sp_1 : out STD_LOGIC;
    zero_largest : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 22 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 22 downto 0 );
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[10]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[10]_0\ : in STD_LOGIC;
    \align_dist_0_ip__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_compare : entity is "compare";
end fp16_sub_compare;

architecture STRUCTURE of fp16_sub_compare is
  signal s_axis_a_tdata_0_sn_1 : STD_LOGIC;
  signal s_axis_a_tdata_12_sn_1 : STD_LOGIC;
  signal s_axis_a_tdata_4_sn_1 : STD_LOGIC;
  signal s_axis_a_tdata_8_sn_1 : STD_LOGIC;
  signal s_axis_b_tdata_14_sn_1 : STD_LOGIC;
begin
  s_axis_a_tdata_0_sp_1 <= s_axis_a_tdata_0_sn_1;
  s_axis_a_tdata_12_sp_1 <= s_axis_a_tdata_12_sn_1;
  s_axis_a_tdata_4_sp_1 <= s_axis_a_tdata_4_sn_1;
  s_axis_a_tdata_8_sp_1 <= s_axis_a_tdata_8_sn_1;
  s_axis_b_tdata_14_sp_1 <= s_axis_b_tdata_14_sn_1;
\NOT_FAST.CMP\: entity work.fp16_sub_compare_gt
     port map (
      A(3 downto 0) => A(3 downto 0),
      CARRY_OUT => CARRYS_OUT(0),
      \align_dist_0_ip__0\ => \align_dist_0_ip__0\,
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.first_q_reg[0]_0\ => \opt_has_pipe.first_q_reg[0]_0\,
      \opt_has_pipe.first_q_reg[10]\ => \opt_has_pipe.first_q_reg[10]\,
      \opt_has_pipe.first_q_reg[10]_0\ => \opt_has_pipe.first_q_reg[10]_0\,
      s_axis_a_tdata(22 downto 0) => s_axis_a_tdata(22 downto 0),
      \s_axis_a_tdata[16]\(6 downto 0) => \s_axis_a_tdata[16]\(6 downto 0),
      s_axis_a_tdata_0_sp_1 => s_axis_a_tdata_0_sn_1,
      s_axis_a_tdata_12_sp_1 => s_axis_a_tdata_12_sn_1,
      s_axis_a_tdata_4_sp_1 => s_axis_a_tdata_4_sn_1,
      s_axis_a_tdata_8_sp_1 => s_axis_a_tdata_8_sn_1,
      s_axis_b_tdata(22 downto 0) => s_axis_b_tdata(22 downto 0),
      \s_axis_b_tdata[15]\(15 downto 0) => \s_axis_b_tdata[15]\(15 downto 0),
      \s_axis_b_tdata[16]\(10 downto 0) => \s_axis_b_tdata[16]\(10 downto 0),
      s_axis_b_tdata_14_sp_1 => s_axis_b_tdata_14_sn_1,
      zero_largest => zero_largest
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_mux4 is
  port (
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[1]\ : out STD_LOGIC;
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[3]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : out STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aclk : in STD_LOGIC;
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 1 downto 0 );
    add_mant : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_mux4 : entity is "mux4";
end fp16_sub_mux4;

architecture STRUCTURE of fp16_sub_mux4 is
  signal op_a : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal op_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[3]_i_1\ : label is "soft_lutpair11";
begin
OP_DEL: entity work.\fp16_sub_delay__parameterized23_2\
     port map (
      CARRYS_OUT(0) => CARRYS_OUT(1),
      D(1 downto 0) => op_int(1 downto 0),
      DI(0) => DI(0),
      aclk => aclk,
      op_a(1 downto 0) => op_a(3 downto 2),
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.first_q_reg[1]\ => \opt_has_pipe.first_q_reg[1]\,
      \opt_has_pipe.first_q_reg[3]\ => \opt_has_pipe.first_q_reg[3]\,
      \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\(0) => \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\(0),
      \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\ => \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\,
      \out\(2 downto 0) => \out\(2 downto 0)
    );
\opt_has_pipe.first_q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => add_mant(1),
      I1 => CARRYS_OUT(1),
      I2 => add_mant(5),
      I3 => CARRYS_OUT(0),
      I4 => add_mant(9),
      O => op_int(0)
    );
\opt_has_pipe.first_q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => add_mant(0),
      I1 => CARRYS_OUT(1),
      I2 => add_mant(4),
      I3 => CARRYS_OUT(0),
      I4 => add_mant(8),
      O => op_int(1)
    );
\opt_has_pipe.first_q[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_mant(3),
      I1 => CARRYS_OUT(0),
      I2 => add_mant(7),
      O => op_a(2)
    );
\opt_has_pipe.first_q[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_mant(2),
      I1 => CARRYS_OUT(0),
      I2 => add_mant(6),
      O => op_a(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_mux4_1 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.first_q_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    A : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.first_q_reg[1]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_1\ : out STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \RESULT_REG.NORMAL.mant_op_reg[3]\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.mant_op_reg[1]\ : in STD_LOGIC;
    \CHAIN_GEN[2].C_MUX.CARRY_MUX\ : in STD_LOGIC;
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_0\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.mant_op_reg[1]_0\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.mant_op_reg[3]_0\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op[6]_i_4\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op[6]_i_4_0\ : in STD_LOGIC;
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6\ : in STD_LOGIC;
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0\ : in STD_LOGIC;
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1\ : in STD_LOGIC;
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8\ : in STD_LOGIC;
    zeros_del : in STD_LOGIC;
    aclk : in STD_LOGIC;
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \opt_has_pipe.first_q_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_mux4_1 : entity is "mux4";
end fp16_sub_mux4_1;

architecture STRUCTURE of fp16_sub_mux4_1 is
  signal \op_a__0\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal op_int : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
OP_DEL: entity work.\fp16_sub_delay__parameterized23\
     port map (
      A(0) => A(0),
      CARRYS_OUT(0) => CARRYS_OUT(7),
      \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6\ => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6\,
      \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0\ => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0\,
      \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1\ => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1\,
      \CHAIN_GEN[2].C_MUX.CARRY_MUX\ => \CHAIN_GEN[2].C_MUX.CARRY_MUX\,
      \CHAIN_GEN[2].C_MUX.CARRY_MUX_0\ => \CHAIN_GEN[2].C_MUX.CARRY_MUX_0\,
      \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8\ => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8\,
      D(1 downto 0) => op_int(1 downto 0),
      DI(2 downto 0) => DI(2 downto 0),
      \RESULT_REG.NORMAL.exp_op[6]_i_4\ => \RESULT_REG.NORMAL.exp_op[6]_i_4\,
      \RESULT_REG.NORMAL.exp_op[6]_i_4_0\ => \RESULT_REG.NORMAL.exp_op[6]_i_4_0\,
      \RESULT_REG.NORMAL.mant_op_reg[1]\ => \RESULT_REG.NORMAL.mant_op_reg[1]\,
      \RESULT_REG.NORMAL.mant_op_reg[1]_0\ => \RESULT_REG.NORMAL.mant_op_reg[1]_0\,
      \RESULT_REG.NORMAL.mant_op_reg[3]\ => \RESULT_REG.NORMAL.mant_op_reg[3]\,
      \RESULT_REG.NORMAL.mant_op_reg[3]_0\ => \RESULT_REG.NORMAL.mant_op_reg[3]_0\,
      aclk => aclk,
      \op_a__0\(0) => \op_a__0\(2),
      \opt_has_pipe.first_q_reg[0]\(0) => \opt_has_pipe.first_q_reg[0]\(0),
      \opt_has_pipe.first_q_reg[0]_0\ => \opt_has_pipe.first_q_reg[0]_0\,
      \opt_has_pipe.first_q_reg[0]_1\ => \opt_has_pipe.first_q_reg[0]_1\,
      \opt_has_pipe.first_q_reg[1]\ => \opt_has_pipe.first_q_reg[1]\,
      \opt_has_pipe.first_q_reg[2]\(2 downto 0) => \opt_has_pipe.first_q_reg[2]\(2 downto 0),
      \out\(2 downto 0) => \out\(2 downto 0),
      zeros_del => zeros_del
    );
\opt_has_pipe.first_q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg[1]_0\(0),
      I1 => CARRYS_OUT(7),
      I2 => CARRYS_OUT(4),
      I3 => CARRYS_OUT(3),
      I4 => CARRYS_OUT(0),
      O => op_int(0)
    );
\opt_has_pipe.first_q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg[1]_0\(1),
      I1 => CARRYS_OUT(7),
      I2 => CARRYS_OUT(5),
      I3 => CARRYS_OUT(3),
      I4 => CARRYS_OUT(1),
      O => op_int(1)
    );
\opt_has_pipe.first_q[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => CARRYS_OUT(6),
      I1 => CARRYS_OUT(3),
      I2 => CARRYS_OUT(2),
      O => \op_a__0\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_renorm_and_round_logic is
  port (
    round_mant : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \RESULT_REG.NORMAL.mant_op_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \RESULT_REG.NORMAL.mant_op_reg[15]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_renorm_and_round_logic : entity is "renorm_and_round_logic";
end fp16_sub_renorm_and_round_logic;

architecture STRUCTURE of fp16_sub_renorm_and_round_logic is
  signal carry_rnd2 : STD_LOGIC;
  signal lopt : STD_LOGIC;
  signal lopt_1 : STD_LOGIC;
  signal lopt_2 : STD_LOGIC;
  signal lopt_3 : STD_LOGIC;
  signal lopt_4 : STD_LOGIC;
  signal lopt_5 : STD_LOGIC;
  signal round_rnd1 : STD_LOGIC;
begin
\LOGIC.RND1\: entity work.\fp16_sub_carry_chain__parameterized5\
     port map (
      CARRYS_OUT(0) => round_rnd1,
      CARRY_OUT => carry_rnd2,
      \RESULT_REG.NORMAL.mant_op_reg[7]\(7 downto 0) => \RESULT_REG.NORMAL.mant_op_reg[7]\(7 downto 0),
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_2 => lopt_2,
      lopt_3 => lopt_3,
      lopt_4 => lopt_4,
      lopt_5 => \RESULT_REG.NORMAL.mant_op_reg[15]\(0),
      lopt_6 => lopt_5,
      round_mant(7 downto 0) => round_mant(7 downto 0)
    );
\LOGIC.RND2\: entity work.\fp16_sub_carry_chain__parameterized6\
     port map (
      CARRY_IN => carry_rnd2,
      Q(8) => Q(0),
      Q(7 downto 0) => round_mant(15 downto 8),
      \RESULT_REG.NORMAL.mant_op_reg[15]\(7 downto 0) => \RESULT_REG.NORMAL.mant_op_reg[15]\(7 downto 0),
      lopt => lopt_3,
      lopt_1 => lopt_4,
      lopt_2 => lopt_5
    );
RND_BIT_GEN: entity work.fp16_sub_flt_round_bit
     port map (
      A(1 downto 0) => A(1 downto 0),
      CARRY_OUT => round_rnd1,
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_2 => \RESULT_REG.NORMAL.mant_op_reg[7]\(0),
      lopt_3 => lopt_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_shift_msb_first is
  port (
    \opt_has_pipe.first_q_reg[1]\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axis_b_tdata[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \align_dist_0_ip__0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[14]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[16]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[12]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[13]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[15]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[11]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[10]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[9]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[7]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[6]\ : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \opt_has_pipe.first_q_reg[18]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[17]\ : out STD_LOGIC;
    abs_dist_mux : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]_0\ : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \out\ : in STD_LOGIC;
    zero_sml_preadd : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \sml_shift_mux__16\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    minusOp : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_shift_msb_first : entity is "shift_msb_first";
end fp16_sub_shift_msb_first;

architecture STRUCTURE of fp16_sub_shift_msb_first is
  signal \MUX_LOOP[0].DEL_SHIFT_n_10\ : STD_LOGIC;
  signal \MUX_LOOP[0].DEL_SHIFT_n_14\ : STD_LOGIC;
  signal \MUX_LOOP[0].DEL_SHIFT_n_23\ : STD_LOGIC;
  signal \MUX_LOOP[0].DEL_SHIFT_n_25\ : STD_LOGIC;
  signal \MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST_n_0\ : STD_LOGIC;
  signal \^opt_has_pipe.first_q_reg[1]\ : STD_LOGIC;
begin
  \opt_has_pipe.first_q_reg[1]\ <= \^opt_has_pipe.first_q_reg[1]\;
\MUX_LOOP[0].DEL_SHIFT\: entity work.\fp16_sub_delay__parameterized11\
     port map (
      A(1 downto 0) => A(1 downto 0),
      \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__5\ => \^opt_has_pipe.first_q_reg[1]\,
      \CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1__0\ => \MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST_n_0\,
      CO(0) => CO(0),
      D(10 downto 0) => D(10 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      S(2 downto 0) => S(2 downto 0),
      aclk => aclk,
      \align_dist_0_ip__0\ => \align_dist_0_ip__0\,
      minusOp(4 downto 0) => minusOp(4 downto 0),
      \opt_has_pipe.first_q_reg[10]\ => \opt_has_pipe.first_q_reg[10]\,
      \opt_has_pipe.first_q_reg[11]\ => \opt_has_pipe.first_q_reg[11]\,
      \opt_has_pipe.first_q_reg[12]\ => \opt_has_pipe.first_q_reg[12]\,
      \opt_has_pipe.first_q_reg[13]\ => \opt_has_pipe.first_q_reg[13]\,
      \opt_has_pipe.first_q_reg[14]\ => \opt_has_pipe.first_q_reg[14]\,
      \opt_has_pipe.first_q_reg[15]\ => \opt_has_pipe.first_q_reg[15]\,
      \opt_has_pipe.first_q_reg[15]_0\ => \MUX_LOOP[0].DEL_SHIFT_n_14\,
      \opt_has_pipe.first_q_reg[16]\ => \opt_has_pipe.first_q_reg[16]\,
      \opt_has_pipe.first_q_reg[16]_0\ => \MUX_LOOP[0].DEL_SHIFT_n_10\,
      \opt_has_pipe.first_q_reg[17]\ => \MUX_LOOP[0].DEL_SHIFT_n_25\,
      \opt_has_pipe.first_q_reg[17]_0\ => \opt_has_pipe.first_q_reg[17]\,
      \opt_has_pipe.first_q_reg[18]\ => \MUX_LOOP[0].DEL_SHIFT_n_23\,
      \opt_has_pipe.first_q_reg[18]_0\ => \opt_has_pipe.first_q_reg[18]\,
      \opt_has_pipe.first_q_reg[5]\(0) => \opt_has_pipe.first_q_reg[8]_1\(0),
      \opt_has_pipe.first_q_reg[6]\ => \opt_has_pipe.first_q_reg[6]\,
      \opt_has_pipe.first_q_reg[7]\ => \opt_has_pipe.first_q_reg[7]\,
      \opt_has_pipe.first_q_reg[8]\ => \opt_has_pipe.first_q_reg[8]\,
      \opt_has_pipe.first_q_reg[9]\ => \opt_has_pipe.first_q_reg[9]\,
      \out\ => \out\,
      s_axis_a_tdata(6 downto 0) => s_axis_a_tdata(6 downto 0),
      s_axis_b_tdata(6 downto 0) => s_axis_b_tdata(6 downto 0),
      \s_axis_b_tdata[19]\(3 downto 0) => \s_axis_b_tdata[19]\(3 downto 0),
      \sml_shift_mux__16\(6 downto 0) => \sml_shift_mux__16\(6 downto 0),
      zero_sml_preadd => zero_sml_preadd
    );
\MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST\: entity work.\fp16_sub_delay__parameterized10_21\
     port map (
      A(3 downto 0) => A(5 downto 2),
      Q(3 downto 0) => Q(5 downto 2),
      abs_dist_mux(0) => abs_dist_mux(0),
      aclk => aclk,
      \opt_has_pipe.first_q_reg[0]\ => \MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST_n_0\,
      \opt_has_pipe.first_q_reg[1]\ => \^opt_has_pipe.first_q_reg[1]\,
      \opt_has_pipe.first_q_reg[1]_0\ => \opt_has_pipe.first_q_reg[1]_0\,
      \opt_has_pipe.first_q_reg[6]\ => \MUX_LOOP[0].DEL_SHIFT_n_14\,
      \opt_has_pipe.first_q_reg[7]\ => \MUX_LOOP[0].DEL_SHIFT_n_23\,
      \opt_has_pipe.first_q_reg[7]_0\ => \MUX_LOOP[0].DEL_SHIFT_n_10\,
      \opt_has_pipe.first_q_reg[8]\ => \opt_has_pipe.first_q_reg[8]_0\,
      \opt_has_pipe.first_q_reg[8]_0\(0) => \opt_has_pipe.first_q_reg[8]_1\(0),
      \opt_has_pipe.first_q_reg[8]_1\ => \MUX_LOOP[0].DEL_SHIFT_n_25\,
      \out\ => \out\,
      zero_sml_preadd => zero_sml_preadd
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_sub_shift_msb_first__parameterized0\ is
  port (
    A : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \opt_has_pipe.first_q_reg[16]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \opt_has_pipe.first_q_reg[18]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[16]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[17]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[19]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[14]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[19]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[15]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[17]_0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[16]_1\ : out STD_LOGIC;
    \RESULT_REG.NORMAL.mant_op_reg[14]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5\ : in STD_LOGIC;
    zeros_del : in STD_LOGIC;
    aclk : in STD_LOGIC;
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \opt_has_pipe.first_q_reg[12]\ : in STD_LOGIC;
    add_mant : in STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_sub_shift_msb_first__parameterized0\ : entity is "shift_msb_first";
end \fp16_sub_shift_msb_first__parameterized0\;

architecture STRUCTURE of \fp16_sub_shift_msb_first__parameterized0\ is
  signal \opt_has_pipe.first_q[10]_i_1_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[11]_i_1_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[4]_i_1_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[5]_i_1_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[6]_i_1_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[7]_i_1_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[8]_i_1_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[11]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[8]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[9]_i_1\ : label is "soft_lutpair13";
begin
\MUX_LOOP[0].DEL_SHIFT\: entity work.\fp16_sub_delay__parameterized26\
     port map (
      A(7 downto 0) => A(7 downto 0),
      CARRYS_OUT(0) => CARRYS_OUT(1),
      \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5\ => \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5\,
      D(2) => \opt_has_pipe.first_q[3]_i_1_n_0\,
      D(1) => \opt_has_pipe.first_q[2]_i_1_n_0\,
      D(0) => \opt_has_pipe.first_q[1]_i_1_n_0\,
      \RESULT_REG.NORMAL.mant_op_reg[14]\ => \RESULT_REG.NORMAL.mant_op_reg[14]\,
      aclk => aclk,
      add_mant(7 downto 0) => add_mant(7 downto 0),
      \opt_has_pipe.first_q_reg[0]\(0) => \opt_has_pipe.first_q_reg[0]\(0),
      \opt_has_pipe.first_q_reg[10]\ => \opt_has_pipe.first_q[10]_i_1_n_0\,
      \opt_has_pipe.first_q_reg[11]\ => \opt_has_pipe.first_q[11]_i_1_n_0\,
      \opt_has_pipe.first_q_reg[12]\ => \opt_has_pipe.first_q_reg[12]\,
      \opt_has_pipe.first_q_reg[14]\ => \opt_has_pipe.first_q_reg[14]\,
      \opt_has_pipe.first_q_reg[15]\ => \opt_has_pipe.first_q_reg[15]\,
      \opt_has_pipe.first_q_reg[16]\(4 downto 0) => \opt_has_pipe.first_q_reg[16]\(4 downto 0),
      \opt_has_pipe.first_q_reg[16]_0\ => \opt_has_pipe.first_q_reg[16]_0\,
      \opt_has_pipe.first_q_reg[16]_1\ => \opt_has_pipe.first_q_reg[16]_1\,
      \opt_has_pipe.first_q_reg[17]\ => \opt_has_pipe.first_q_reg[17]\,
      \opt_has_pipe.first_q_reg[17]_0\ => \opt_has_pipe.first_q_reg[17]_0\,
      \opt_has_pipe.first_q_reg[18]\ => \opt_has_pipe.first_q_reg[18]\,
      \opt_has_pipe.first_q_reg[19]\ => \opt_has_pipe.first_q_reg[19]\,
      \opt_has_pipe.first_q_reg[19]_0\ => \opt_has_pipe.first_q_reg[19]_0\,
      \opt_has_pipe.first_q_reg[4]\ => \opt_has_pipe.first_q[4]_i_1_n_0\,
      \opt_has_pipe.first_q_reg[5]\ => \opt_has_pipe.first_q[5]_i_1_n_0\,
      \opt_has_pipe.first_q_reg[6]\ => \opt_has_pipe.first_q[6]_i_1_n_0\,
      \opt_has_pipe.first_q_reg[7]\ => \opt_has_pipe.first_q[7]_i_1_n_0\,
      \opt_has_pipe.first_q_reg[8]\ => \opt_has_pipe.first_q[8]_i_1_n_0\,
      \opt_has_pipe.first_q_reg[9]\ => \opt_has_pipe.first_q[9]_i_1_n_0\,
      \out\(2 downto 0) => \out\(2 downto 0),
      zeros_del => zeros_del
    );
\opt_has_pipe.first_q[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_mant(1),
      I1 => CARRYS_OUT(0),
      I2 => add_mant(9),
      O => \opt_has_pipe.first_q[10]_i_1_n_0\
    );
\opt_has_pipe.first_q[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_mant(0),
      I1 => CARRYS_OUT(0),
      I2 => add_mant(8),
      O => \opt_has_pipe.first_q[11]_i_1_n_0\
    );
\opt_has_pipe.first_q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BF808"
    )
        port map (
      I0 => add_mant(10),
      I1 => CARRYS_OUT(0),
      I2 => CARRYS_OUT(1),
      I3 => add_mant(2),
      I4 => add_mant(18),
      O => \opt_has_pipe.first_q[1]_i_1_n_0\
    );
\opt_has_pipe.first_q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BF808"
    )
        port map (
      I0 => add_mant(9),
      I1 => CARRYS_OUT(0),
      I2 => CARRYS_OUT(1),
      I3 => add_mant(1),
      I4 => add_mant(17),
      O => \opt_has_pipe.first_q[2]_i_1_n_0\
    );
\opt_has_pipe.first_q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0BF808"
    )
        port map (
      I0 => add_mant(8),
      I1 => CARRYS_OUT(0),
      I2 => CARRYS_OUT(1),
      I3 => add_mant(0),
      I4 => add_mant(16),
      O => \opt_has_pipe.first_q[3]_i_1_n_0\
    );
\opt_has_pipe.first_q[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_mant(7),
      I1 => CARRYS_OUT(0),
      I2 => add_mant(15),
      O => \opt_has_pipe.first_q[4]_i_1_n_0\
    );
\opt_has_pipe.first_q[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_mant(6),
      I1 => CARRYS_OUT(0),
      I2 => add_mant(14),
      O => \opt_has_pipe.first_q[5]_i_1_n_0\
    );
\opt_has_pipe.first_q[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_mant(5),
      I1 => CARRYS_OUT(0),
      I2 => add_mant(13),
      O => \opt_has_pipe.first_q[6]_i_1_n_0\
    );
\opt_has_pipe.first_q[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_mant(4),
      I1 => CARRYS_OUT(0),
      I2 => add_mant(12),
      O => \opt_has_pipe.first_q[7]_i_1_n_0\
    );
\opt_has_pipe.first_q[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_mant(3),
      I1 => CARRYS_OUT(0),
      I2 => add_mant(11),
      O => \opt_has_pipe.first_q[8]_i_1_n_0\
    );
\opt_has_pipe.first_q[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => add_mant(2),
      I1 => CARRYS_OUT(0),
      I2 => add_mant(10),
      O => \opt_has_pipe.first_q[9]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_special_detect is
  port (
    \a_is_inf__0\ : out STD_LOGIC;
    CARRY_OUT : out STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_special_detect : entity is "special_detect";
end fp16_sub_special_detect;

architecture STRUCTURE of fp16_sub_special_detect is
begin
\MANT_CARRY.MANT_ALL_ZERO_DET\: entity work.\fp16_sub_compare_eq_im__parameterized0_9\
     port map (
      CARRY_OUT => CARRY_OUT,
      \a_is_inf__0\ => \a_is_inf__0\,
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]\,
      s_axis_a_tdata(18 downto 0) => s_axis_a_tdata(18 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_special_detect_5 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    det_invalid_op : out STD_LOGIC;
    det_sign : out STD_LOGIC;
    b_exp_flt_all_one : in STD_LOGIC;
    \a_is_inf__0\ : in STD_LOGIC;
    zero_largest : in STD_LOGIC;
    CARRY_OUT : in STD_LOGIC;
    a_exp_flt_all_one : in STD_LOGIC;
    subtract : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_special_detect_5 : entity is "special_detect";
end fp16_sub_special_detect_5;

architecture STRUCTURE of fp16_sub_special_detect_5 is
begin
\MANT_CARRY.MANT_ALL_ZERO_DET\: entity work.\fp16_sub_compare_eq_im__parameterized0\
     port map (
      CARRY_OUT => CARRY_OUT,
      D(1 downto 0) => D(1 downto 0),
      a_exp_flt_all_one => a_exp_flt_all_one,
      \a_is_inf__0\ => \a_is_inf__0\,
      b_exp_flt_all_one => b_exp_flt_all_one,
      det_invalid_op => det_invalid_op,
      det_sign => det_sign,
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]\,
      s_axis_a_tdata(0) => s_axis_a_tdata(0),
      s_axis_b_tdata(16 downto 0) => s_axis_b_tdata(16 downto 0),
      subtract => subtract,
      zero_largest => zero_largest
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_zero_det_sel is
  port (
    zeros_add : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    first_q0 : in STD_LOGIC;
    \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1\ : in STD_LOGIC;
    \CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \opt_has_pipe.first_q_reg[4]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[3]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[2]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    minusOp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_zero_det_sel : entity is "zero_det_sel";
end fp16_sub_zero_det_sel;

architecture STRUCTURE of fp16_sub_zero_det_sel is
  signal ext_del_distance : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal mux0_0 : STD_LOGIC;
  signal mux0_1 : STD_LOGIC;
  signal p_8_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \zero_det_unreg[1]_3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0\ : label is "PRIMITIVE";
  attribute box_type of \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX1\ : label is "PRIMITIVE";
  attribute box_type of \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX2\ : label is "PRIMITIVE";
begin
EQ_ZERO: entity work.fp16_sub_compare_eq_im
     port map (
      \CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD\(3 downto 0) => \CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD\(3 downto 0),
      \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1\ => \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1\,
      aclk => aclk,
      ext_del_distance(0) => ext_del_distance(3),
      p_8_out(5) => p_8_out(7),
      p_8_out(4 downto 0) => p_8_out(4 downto 0),
      \zero_det_unreg[1]_3\(1 downto 0) => \zero_det_unreg[1]_3\(1 downto 0)
    );
\MUX_LOOP[0].DEL_Z_D\: entity work.\fp16_sub_delay__parameterized9\
     port map (
      CO(0) => CO(0),
      aclk => aclk,
      minusOp(1 downto 0) => minusOp(1 downto 0),
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.first_q_reg[1]\ => \opt_has_pipe.first_q_reg[1]_0\,
      \opt_has_pipe.first_q_reg[2]\ => \opt_has_pipe.first_q_reg[2]\,
      \opt_has_pipe.first_q_reg[3]\ => \opt_has_pipe.first_q_reg[3]\,
      \opt_has_pipe.first_q_reg[4]\ => \opt_has_pipe.first_q_reg[4]\,
      p_8_out(5) => p_8_out(7),
      p_8_out(4 downto 0) => p_8_out(4 downto 0)
    );
\MUX_LOOP[1].SKEW_DIST_DEL.DEL_DIST\: entity work.\fp16_sub_delay__parameterized10_17\
     port map (
      aclk => aclk,
      ext_del_distance(0) => ext_del_distance(3),
      \opt_has_pipe.first_q_reg[1]\ => \opt_has_pipe.first_q_reg[1]\
    );
\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \zero_det_unreg[1]_3\(0),
      I1 => \zero_det_unreg[1]_3\(1),
      O => mux0_0,
      S => ext_del_distance(4)
    );
\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX1\: unisim.vcomponents.MUXF7
     port map (
      I0 => '1',
      I1 => '1',
      O => mux0_1,
      S => ext_del_distance(4)
    );
\MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX2\: unisim.vcomponents.MUXF8
     port map (
      I0 => mux0_0,
      I1 => mux0_1,
      O => zeros_add,
      S => '0'
    );
\MUX_LOOP[2].SKEW_DIST_DEL.DEL_DIST\: entity work.\fp16_sub_delay__parameterized10_18\
     port map (
      aclk => aclk,
      ext_del_distance(0) => ext_del_distance(4),
      first_q0 => first_q0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_addsub_logic is
  port (
    add_mant : out STD_LOGIC_VECTOR ( 19 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    zero_largest : out STD_LOGIC;
    \s_axis_a_tdata[22]\ : out STD_LOGIC;
    b_exp_flt_all_zero : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]\ : in STD_LOGIC;
    xor_rnd1 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    A : in STD_LOGIC_VECTOR ( 10 downto 0 );
    zeros_add : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \opt_has_pipe.first_q_reg[8]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_addsub_logic : entity is "addsub_logic";
end fp16_sub_addsub_logic;

architecture STRUCTURE of fp16_sub_addsub_logic is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal carry_in1_rnd1 : STD_LOGIC;
  signal carry_in2_rnd1 : STD_LOGIC;
  signal carry_rnd2 : STD_LOGIC;
  signal lopt_1 : STD_LOGIC;
  signal lopt_2 : STD_LOGIC;
  signal lopt_3 : STD_LOGIC;
  signal lopt_4 : STD_LOGIC;
  signal lopt_5 : STD_LOGIC;
  signal lopt_6 : STD_LOGIC;
  signal lopt_7 : STD_LOGIC;
  signal \^opt_has_pipe.first_q_reg[9]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sum_int_rnd2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_STRUCT_ADD1.CARRY_MUX1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \STRUCT_ADD1.CARRY_MUX1_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \STRUCT_ADD1.CARRY_MUX1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \STRUCT_ADD1.CARRY_MUX1_CARRY4\ : label is "PRIMITIVE";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
  \opt_has_pipe.first_q_reg[9]\(9 downto 0) <= \^opt_has_pipe.first_q_reg[9]\(9 downto 0);
LRG_RND1_DEL: entity work.\fp16_sub_delay__parameterized17\
     port map (
      aclk => aclk,
      b_exp_flt_all_zero => b_exp_flt_all_zero,
      \opt_has_pipe.first_q_reg[8]\(8 downto 0) => \opt_has_pipe.first_q_reg[8]\(15 downto 7),
      \opt_has_pipe.first_q_reg[9]\(9 downto 0) => \^opt_has_pipe.first_q_reg[9]\(9 downto 0),
      s_axis_a_tdata(6 downto 0) => s_axis_a_tdata(6 downto 0),
      \s_axis_a_tdata[22]\ => \s_axis_a_tdata[22]\,
      s_axis_b_tdata(6 downto 0) => s_axis_b_tdata(6 downto 0),
      zero_largest => zero_largest
    );
LRG_RND2_DEL: entity work.\fp16_sub_delay__parameterized14\
     port map (
      Q(6 downto 0) => \^q\(6 downto 0),
      aclk => aclk,
      \opt_has_pipe.first_q_reg[6]\(6 downto 0) => \opt_has_pipe.first_q_reg[8]\(6 downto 0)
    );
\STRUCT_ADD1.ADD1\: entity work.\fp16_sub_carry_chain__parameterized0\
     port map (
      CARRY_IN => carry_rnd2,
      Q(6 downto 0) => \^q\(6 downto 0),
      aclk => aclk,
      add_mant(8 downto 0) => add_mant(8 downto 0),
      carry_in2_rnd1 => carry_in2_rnd1,
      lopt => lopt_1,
      lopt_1 => lopt_2,
      lopt_2 => lopt_3,
      lopt_3 => lopt_4,
      lopt_4 => lopt_5,
      lopt_5 => lopt_6,
      lopt_6 => \^opt_has_pipe.first_q_reg[9]\(0),
      lopt_7 => A(0),
      lopt_8 => lopt_7,
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.first_q_reg[1]\ => \opt_has_pipe.first_q_reg[1]\,
      xor_rnd1(6 downto 0) => xor_rnd1(6 downto 0)
    );
\STRUCT_ADD1.CARRY_MUX1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => lopt_3,
      CO(2) => lopt_1,
      CO(1) => carry_in2_rnd1,
      CO(0) => carry_in1_rnd1,
      CYINIT => A(10),
      DI(3) => lopt_2,
      DI(2) => lopt_2,
      DI(1 downto 0) => B"00",
      O(3) => lopt_5,
      O(2) => lopt_4,
      O(1 downto 0) => \NLW_STRUCT_ADD1.CARRY_MUX1_CARRY4_O_UNCONNECTED\(1 downto 0),
      S(3) => \opt_has_pipe.first_q_reg[1]\,
      S(2) => \opt_has_pipe.first_q_reg[0]\,
      S(1) => zeros_add,
      S(0) => '1'
    );
\STRUCT_ADD2.ADD1\: entity work.\fp16_sub_carry_chain__parameterized1\
     port map (
      A(10 downto 0) => A(10 downto 0),
      CARRY_IN => carry_rnd2,
      Q(10 downto 0) => sum_int_rnd2(10 downto 0),
      lopt => lopt_6,
      lopt_1 => lopt_7,
      \opt_has_pipe.first_q_reg[10]\(9 downto 0) => \^opt_has_pipe.first_q_reg[9]\(9 downto 0)
    );
SUM_RND2_DELAY: entity work.\fp16_sub_delay__parameterized20\
     port map (
      D(10 downto 0) => sum_int_rnd2(10 downto 0),
      aclk => aclk,
      add_mant(10 downto 0) => add_mant(19 downto 9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_alignment is
  port (
    zeros_add : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axis_b_tdata[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \align_dist_0_ip__0\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[14]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[16]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[12]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[13]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[15]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[11]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[10]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[9]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[7]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[6]\ : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \opt_has_pipe.first_q_reg[18]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[17]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    first_q0 : in STD_LOGIC;
    abs_dist_mux : in STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[1]_0\ : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \out\ : in STD_LOGIC;
    zero_sml_preadd : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[8]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \opt_has_pipe.first_q_reg[4]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[3]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[2]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]_1\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    minusOp : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \sml_shift_mux__16\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_alignment : entity is "alignment";
end fp16_sub_alignment;

architecture STRUCTURE of fp16_sub_alignment is
  signal ALIGN_SHIFT_n_0 : STD_LOGIC;
begin
ALIGN_SHIFT: entity work.fp16_sub_shift_msb_first
     port map (
      A(5 downto 0) => A(5 downto 0),
      CO(0) => CO(0),
      D(10 downto 0) => D(10 downto 0),
      Q(5 downto 0) => Q(5 downto 0),
      S(2 downto 0) => S(2 downto 0),
      abs_dist_mux(0) => abs_dist_mux(0),
      aclk => aclk,
      \align_dist_0_ip__0\ => \align_dist_0_ip__0\,
      minusOp(4 downto 0) => minusOp(4 downto 0),
      \opt_has_pipe.first_q_reg[10]\ => \opt_has_pipe.first_q_reg[10]\,
      \opt_has_pipe.first_q_reg[11]\ => \opt_has_pipe.first_q_reg[11]\,
      \opt_has_pipe.first_q_reg[12]\ => \opt_has_pipe.first_q_reg[12]\,
      \opt_has_pipe.first_q_reg[13]\ => \opt_has_pipe.first_q_reg[13]\,
      \opt_has_pipe.first_q_reg[14]\ => \opt_has_pipe.first_q_reg[14]\,
      \opt_has_pipe.first_q_reg[15]\ => \opt_has_pipe.first_q_reg[15]\,
      \opt_has_pipe.first_q_reg[16]\ => \opt_has_pipe.first_q_reg[16]\,
      \opt_has_pipe.first_q_reg[17]\ => \opt_has_pipe.first_q_reg[17]\,
      \opt_has_pipe.first_q_reg[18]\ => \opt_has_pipe.first_q_reg[18]\,
      \opt_has_pipe.first_q_reg[1]\ => ALIGN_SHIFT_n_0,
      \opt_has_pipe.first_q_reg[1]_0\ => \opt_has_pipe.first_q_reg[1]_0\,
      \opt_has_pipe.first_q_reg[6]\ => \opt_has_pipe.first_q_reg[6]\,
      \opt_has_pipe.first_q_reg[7]\ => \opt_has_pipe.first_q_reg[7]\,
      \opt_has_pipe.first_q_reg[8]\ => \opt_has_pipe.first_q_reg[8]\,
      \opt_has_pipe.first_q_reg[8]_0\ => \opt_has_pipe.first_q_reg[8]_0\,
      \opt_has_pipe.first_q_reg[8]_1\(0) => \opt_has_pipe.first_q_reg[8]_1\(0),
      \opt_has_pipe.first_q_reg[9]\ => \opt_has_pipe.first_q_reg[9]\,
      \out\ => \out\,
      s_axis_a_tdata(6 downto 0) => s_axis_a_tdata(6 downto 0),
      s_axis_b_tdata(6 downto 0) => s_axis_b_tdata(6 downto 0),
      \s_axis_b_tdata[19]\(3 downto 0) => \s_axis_b_tdata[19]\(3 downto 0),
      \sml_shift_mux__16\(6 downto 0) => \sml_shift_mux__16\(6 downto 0),
      zero_sml_preadd => zero_sml_preadd
    );
ALIGN_Z_D: entity work.fp16_sub_zero_det_sel
     port map (
      \CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD\(3 downto 0) => \CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD\(3 downto 0),
      CO(0) => CO(0),
      \MUX_LOOP[2].OTHER_LEVELS.DO_CHUNKS[0].LUT6_STRUCT_MUX.MUX0_i_1\ => ALIGN_SHIFT_n_0,
      aclk => aclk,
      first_q0 => first_q0,
      minusOp(1 downto 0) => minusOp(1 downto 0),
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.first_q_reg[1]\ => \opt_has_pipe.first_q_reg[1]\,
      \opt_has_pipe.first_q_reg[1]_0\ => \opt_has_pipe.first_q_reg[1]_1\,
      \opt_has_pipe.first_q_reg[2]\ => \opt_has_pipe.first_q_reg[2]\,
      \opt_has_pipe.first_q_reg[3]\ => \opt_has_pipe.first_q_reg[3]\,
      \opt_has_pipe.first_q_reg[4]\ => \opt_has_pipe.first_q_reg[4]\,
      zeros_add => zeros_add
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_flt_add_exp is
  port (
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axis_b_tdata[22]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \s_axis_b_tdata[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    subtract : out STD_LOGIC;
    \s_axis_b_tdata[16]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \s_axis_a_tdata[16]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    first_q0 : out STD_LOGIC;
    s_axis_b_tdata_19_sp_1 : out STD_LOGIC;
    s_axis_a_tdata_0_sp_1 : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_a_tdata_4_sp_1 : out STD_LOGIC;
    s_axis_a_tdata_8_sp_1 : out STD_LOGIC;
    s_axis_a_tdata_12_sp_1 : out STD_LOGIC;
    s_axis_b_tdata_14_sp_1 : out STD_LOGIC;
    zero_align_align : out STD_LOGIC;
    abs_dist_mux : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axis_b_tdata[19]_0\ : out STD_LOGIC;
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\ : out STD_LOGIC;
    op_state : out STD_LOGIC_VECTOR ( 0 to 0 );
    op_sign : out STD_LOGIC;
    aclk : in STD_LOGIC;
    add_mant : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \RESULT_REG.NORMAL.exp_op_reg[3]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    NORM_DIST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    zero_largest : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \align_dist_0_ip__0\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op_reg[2]\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op_reg[2]_0\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.exp_op_reg[2]_1\ : in STD_LOGIC;
    cancellation : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_flt_add_exp : entity is "flt_add_exp";
end fp16_sub_flt_add_exp;

architecture STRUCTURE of fp16_sub_flt_add_exp is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^di\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \EXP_OFF.LRG_EXP_DELAY_n_0\ : STD_LOGIC;
  signal \EXP_OFF.LRG_EXP_DELAY_n_1\ : STD_LOGIC;
  signal \EXP_OFF.LRG_EXP_DELAY_n_11\ : STD_LOGIC;
  signal \EXP_OFF.LRG_EXP_DELAY_n_12\ : STD_LOGIC;
  signal \EXP_OFF.LRG_EXP_DELAY_n_13\ : STD_LOGIC;
  signal \EXP_OFF.LRG_EXP_DELAY_n_14\ : STD_LOGIC;
  signal \EXP_OFF.LRG_EXP_DELAY_n_15\ : STD_LOGIC;
  signal \EXP_OFF.LRG_EXP_DELAY_n_16\ : STD_LOGIC;
  signal \EXP_OFF.LRG_EXP_DELAY_n_2\ : STD_LOGIC;
  signal \EXP_OFF.LRG_OVER_NORMAL.LRG_ALMOST_OVER_DELAY_n_1\ : STD_LOGIC;
  signal \RESULT_REG.NORMAL.exp_op[4]_i_2_n_0\ : STD_LOGIC;
  signal STATE_DELAY_n_3 : STD_LOGIC;
  signal STATE_DELAY_n_4 : STD_LOGIC;
  signal STATE_DELAY_n_7 : STD_LOGIC;
  signal a_exp_flt_all_one : STD_LOGIC;
  signal \a_is_inf__0\ : STD_LOGIC;
  signal a_mant_is_zero : STD_LOGIC;
  signal add_mant_msbs_del : STD_LOGIC_VECTOR ( 1 to 1 );
  signal b_exp_flt_all_one : STD_LOGIC;
  signal b_largest : STD_LOGIC;
  signal det_invalid_op : STD_LOGIC;
  signal det_sign : STD_LOGIC;
  signal det_sign_del : STD_LOGIC;
  signal det_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ext_largest_exp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^first_q0\ : STD_LOGIC;
  signal \lrg_almost_over__0\ : STD_LOGIC;
  signal lrg_almost_over_del : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 6 downto 5 );
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[0]_i_2__2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[10]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[10]_i_3_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_i_2_n_0\ : STD_LOGIC;
  signal s_axis_a_tdata_0_sn_1 : STD_LOGIC;
  signal s_axis_a_tdata_12_sn_1 : STD_LOGIC;
  signal s_axis_a_tdata_4_sn_1 : STD_LOGIC;
  signal s_axis_a_tdata_8_sn_1 : STD_LOGIC;
  signal \^s_axis_b_tdata[22]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal s_axis_b_tdata_14_sn_1 : STD_LOGIC;
  signal s_axis_b_tdata_19_sn_1 : STD_LOGIC;
  signal \^subtract\ : STD_LOGIC;
  signal \NLW_minusOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_minusOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_minusOp_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_minusOp_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[1]_i_1__2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[1]_i_1__3\ : label is "soft_lutpair10";
begin
  CO(0) <= \^co\(0);
  DI(3 downto 0) <= \^di\(3 downto 0);
  first_q0 <= \^first_q0\;
  s_axis_a_tdata_0_sp_1 <= s_axis_a_tdata_0_sn_1;
  s_axis_a_tdata_12_sp_1 <= s_axis_a_tdata_12_sn_1;
  s_axis_a_tdata_4_sp_1 <= s_axis_a_tdata_4_sn_1;
  s_axis_a_tdata_8_sp_1 <= s_axis_a_tdata_8_sn_1;
  \s_axis_b_tdata[22]\(4 downto 0) <= \^s_axis_b_tdata[22]\(4 downto 0);
  s_axis_b_tdata_14_sp_1 <= s_axis_b_tdata_14_sn_1;
  s_axis_b_tdata_19_sp_1 <= s_axis_b_tdata_19_sn_1;
  subtract <= \^subtract\;
COND_DET_A: entity work.fp16_sub_special_detect
     port map (
      CARRY_OUT => a_mant_is_zero,
      \a_is_inf__0\ => \a_is_inf__0\,
      \opt_has_pipe.first_q_reg[0]\ => STATE_DELAY_n_7,
      s_axis_a_tdata(18 downto 0) => s_axis_a_tdata(18 downto 0)
    );
COND_DET_B: entity work.fp16_sub_special_detect_5
     port map (
      CARRY_OUT => a_mant_is_zero,
      D(1 downto 0) => det_state(1 downto 0),
      a_exp_flt_all_one => a_exp_flt_all_one,
      \a_is_inf__0\ => \a_is_inf__0\,
      b_exp_flt_all_one => b_exp_flt_all_one,
      det_invalid_op => det_invalid_op,
      det_sign => det_sign,
      \opt_has_pipe.first_q_reg[0]\ => b_largest,
      s_axis_a_tdata(0) => s_axis_a_tdata(23),
      s_axis_b_tdata(16) => s_axis_b_tdata(23),
      s_axis_b_tdata(15 downto 0) => s_axis_b_tdata(15 downto 0),
      subtract => \^subtract\,
      zero_largest => zero_largest
    );
DET_SIGN_DELAY: entity work.\fp16_sub_delay__parameterized38\
     port map (
      aclk => aclk,
      det_sign => det_sign,
      det_sign_del => det_sign_del
    );
\EXP_OFF.LRG_EXP_DELAY\: entity work.\fp16_sub_delay__parameterized39\
     port map (
      D(3 downto 1) => D(6 downto 4),
      D(0) => D(1),
      DI(2) => \EXP_OFF.LRG_EXP_DELAY_n_0\,
      DI(1) => \EXP_OFF.LRG_EXP_DELAY_n_1\,
      DI(0) => \EXP_OFF.LRG_EXP_DELAY_n_2\,
      NORM_DIST(1 downto 0) => NORM_DIST(1 downto 0),
      O(2) => \minusOp_inferred__0/i__carry__0_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__0_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__0_n_7\,
      Q(6 downto 0) => ext_largest_exp(6 downto 0),
      \RESULT_REG.NORMAL.exp_op_reg[1]\(0) => Q(1),
      \RESULT_REG.NORMAL.exp_op_reg[4]\(3) => \minusOp_inferred__0/i__carry_n_4\,
      \RESULT_REG.NORMAL.exp_op_reg[4]\(2) => \minusOp_inferred__0/i__carry_n_5\,
      \RESULT_REG.NORMAL.exp_op_reg[4]\(1) => \minusOp_inferred__0/i__carry_n_6\,
      \RESULT_REG.NORMAL.exp_op_reg[4]\(0) => \minusOp_inferred__0/i__carry_n_7\,
      \RESULT_REG.NORMAL.exp_op_reg[4]_0\ => \RESULT_REG.NORMAL.exp_op[4]_i_2_n_0\,
      \RESULT_REG.NORMAL.exp_op_reg[4]_1\ => STATE_DELAY_n_4,
      \RESULT_REG.NORMAL.exp_op_reg[4]_2\ => STATE_DELAY_n_3,
      S(0) => \EXP_OFF.LRG_EXP_DELAY_n_11\,
      aclk => aclk,
      \opt_has_pipe.first_q_reg[0]\ => \EXP_OFF.LRG_EXP_DELAY_n_16\,
      \opt_has_pipe.i_pipe[3].pipe_reg[3][3]\(3 downto 0) => \^di\(3 downto 0),
      \opt_has_pipe.i_pipe[3].pipe_reg[3][3]_0\ => \EXP_OFF.LRG_EXP_DELAY_n_15\,
      \opt_has_pipe.i_pipe[3].pipe_reg[3][6]\(2) => \EXP_OFF.LRG_EXP_DELAY_n_12\,
      \opt_has_pipe.i_pipe[3].pipe_reg[3][6]\(1) => \EXP_OFF.LRG_EXP_DELAY_n_13\,
      \opt_has_pipe.i_pipe[3].pipe_reg[3][6]\(0) => \EXP_OFF.LRG_EXP_DELAY_n_14\,
      \out\(0) => \out\(0)
    );
\EXP_OFF.LRG_OVER_NORMAL.LRG_ALMOST_OVER_DELAY\: entity work.\fp16_sub_delay__parameterized40\
     port map (
      aclk => aclk,
      add_mant_msbs_del(0) => add_mant_msbs_del(1),
      cancellation => cancellation,
      \lrg_almost_over__0\ => \lrg_almost_over__0\,
      lrg_almost_over_del => lrg_almost_over_del,
      \opt_has_pipe.first_q_reg[0]\ => \EXP_OFF.LRG_OVER_NORMAL.LRG_ALMOST_OVER_DELAY_n_1\
    );
\EXP_OFF.STRUCT_ADD\: entity work.\fp16_sub_carry_chain__parameterized10\
     port map (
      CO(0) => \^co\(0),
      Q(7 downto 0) => ext_largest_exp(7 downto 0),
      s_axis_a_tdata(6 downto 0) => s_axis_a_tdata(22 downto 16),
      s_axis_b_tdata(6 downto 0) => s_axis_b_tdata(22 downto 16)
    );
INV_OP_DEL: entity work.\fp16_sub_delay__parameterized37\
     port map (
      aclk => aclk,
      det_invalid_op => det_invalid_op
    );
\NORMAL_NORM_DIST.ADD_MANT_DELAY\: entity work.\fp16_sub_delay__parameterized10_6\
     port map (
      aclk => aclk,
      add_mant(0) => add_mant(0),
      add_mant_msbs_del(0) => add_mant_msbs_del(1)
    );
NUMB_CMP: entity work.fp16_sub_compare
     port map (
      A(3 downto 0) => A(3 downto 0),
      CARRYS_OUT(0) => b_largest,
      \align_dist_0_ip__0\ => \align_dist_0_ip__0\,
      \opt_has_pipe.first_q_reg[0]\ => \^first_q0\,
      \opt_has_pipe.first_q_reg[0]_0\ => s_axis_b_tdata_19_sn_1,
      \opt_has_pipe.first_q_reg[10]\ => \opt_has_pipe.first_q[10]_i_2_n_0\,
      \opt_has_pipe.first_q_reg[10]_0\ => \opt_has_pipe.first_q[10]_i_3_n_0\,
      s_axis_a_tdata(22 downto 0) => s_axis_a_tdata(22 downto 0),
      \s_axis_a_tdata[16]\(6 downto 0) => \s_axis_a_tdata[16]\(6 downto 0),
      s_axis_a_tdata_0_sp_1 => s_axis_a_tdata_0_sn_1,
      s_axis_a_tdata_12_sp_1 => s_axis_a_tdata_12_sn_1,
      s_axis_a_tdata_4_sp_1 => s_axis_a_tdata_4_sn_1,
      s_axis_a_tdata_8_sp_1 => s_axis_a_tdata_8_sn_1,
      s_axis_b_tdata(22 downto 0) => s_axis_b_tdata(22 downto 0),
      \s_axis_b_tdata[15]\(15 downto 0) => \s_axis_b_tdata[15]\(15 downto 0),
      \s_axis_b_tdata[16]\(10 downto 0) => \s_axis_b_tdata[16]\(10 downto 0),
      s_axis_b_tdata_14_sp_1 => s_axis_b_tdata_14_sn_1,
      zero_largest => zero_largest
    );
\RESULT_REG.NORMAL.exp_op[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry_n_6\,
      I1 => Q(1),
      I2 => \minusOp_inferred__0/i__carry_n_7\,
      O => \RESULT_REG.NORMAL.exp_op[4]_i_2_n_0\
    );
STATE_DELAY: entity work.\fp16_sub_delay__parameterized36\
     port map (
      CO(0) => \minusOp_inferred__0/i__carry__0_n_0\,
      D(2 downto 1) => D(3 downto 2),
      D(0) => D(0),
      Q(1 downto 0) => Q(1 downto 0),
      \RESULT_REG.NORMAL.exp_op_reg[2]\ => \RESULT_REG.NORMAL.exp_op_reg[2]\,
      \RESULT_REG.NORMAL.exp_op_reg[2]_0\ => \RESULT_REG.NORMAL.exp_op_reg[2]_0\,
      \RESULT_REG.NORMAL.exp_op_reg[2]_1\ => \EXP_OFF.LRG_EXP_DELAY_n_16\,
      \RESULT_REG.NORMAL.exp_op_reg[2]_2\ => \RESULT_REG.NORMAL.exp_op_reg[2]_1\,
      \RESULT_REG.NORMAL.exp_op_reg[2]_3\ => \EXP_OFF.LRG_OVER_NORMAL.LRG_ALMOST_OVER_DELAY_n_1\,
      \RESULT_REG.NORMAL.exp_op_reg[3]\(3) => \minusOp_inferred__0/i__carry_n_4\,
      \RESULT_REG.NORMAL.exp_op_reg[3]\(2) => \minusOp_inferred__0/i__carry_n_5\,
      \RESULT_REG.NORMAL.exp_op_reg[3]\(1) => \minusOp_inferred__0/i__carry_n_6\,
      \RESULT_REG.NORMAL.exp_op_reg[3]\(0) => \minusOp_inferred__0/i__carry_n_7\,
      \RESULT_REG.NORMAL.exp_op_reg[3]_0\ => \EXP_OFF.LRG_EXP_DELAY_n_15\,
      a_exp_flt_all_one => a_exp_flt_all_one,
      aclk => aclk,
      add_mant_msbs_del(0) => add_mant_msbs_del(1),
      b_exp_flt_all_one => b_exp_flt_all_one,
      cancellation => cancellation,
      det_sign_del => det_sign_del,
      lrg_almost_over_del => lrg_almost_over_del,
      op_sign => op_sign,
      op_state(0) => op_state(0),
      \opt_has_pipe.first_q_reg[1]\(1 downto 0) => det_state(1 downto 0),
      \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\ => STATE_DELAY_n_3,
      \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\ => \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\,
      \opt_has_pipe.i_pipe[3].pipe_reg[3][1]\ => STATE_DELAY_n_4,
      s_axis_a_tdata(7 downto 0) => s_axis_a_tdata(23 downto 16),
      \s_axis_a_tdata[22]\ => STATE_DELAY_n_7,
      s_axis_b_tdata(7 downto 0) => s_axis_b_tdata(23 downto 16),
      subtract => \^subtract\
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => s_axis_b_tdata(19 downto 16),
      O(3 downto 0) => \^s_axis_b_tdata[22]\(3 downto 0),
      S(3 downto 0) => \opt_has_pipe.first_q_reg[0]\(3 downto 0)
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \^co\(0),
      CO(2) => \NLW_minusOp_carry__0_CO_UNCONNECTED\(2),
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => s_axis_b_tdata(22 downto 20),
      O(3) => \NLW_minusOp_carry__0_O_UNCONNECTED\(3),
      O(2 downto 1) => minusOp(6 downto 5),
      O(0) => \^s_axis_b_tdata[22]\(4),
      S(3) => '1',
      S(2 downto 0) => S(2 downto 0)
    );
\minusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minusOp_inferred__0/i__carry_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \^di\(3 downto 0),
      O(3) => \minusOp_inferred__0/i__carry_n_4\,
      O(2) => \minusOp_inferred__0/i__carry_n_5\,
      O(1) => \minusOp_inferred__0/i__carry_n_6\,
      O(0) => \minusOp_inferred__0/i__carry_n_7\,
      S(3) => \RESULT_REG.NORMAL.exp_op_reg[3]\(2),
      S(2) => \EXP_OFF.LRG_EXP_DELAY_n_11\,
      S(1 downto 0) => \RESULT_REG.NORMAL.exp_op_reg[3]\(1 downto 0)
    );
\minusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \NLW_minusOp_inferred__0/i__carry__0_CO_UNCONNECTED\(2),
      CO(1) => \minusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \EXP_OFF.LRG_EXP_DELAY_n_0\,
      DI(1) => \EXP_OFF.LRG_EXP_DELAY_n_1\,
      DI(0) => \EXP_OFF.LRG_EXP_DELAY_n_2\,
      O(3) => \NLW_minusOp_inferred__0/i__carry__0_O_UNCONNECTED\(3),
      O(2) => \minusOp_inferred__0/i__carry__0_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__0_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__0_n_7\,
      S(3) => '1',
      S(2) => \EXP_OFF.LRG_EXP_DELAY_n_12\,
      S(1) => \EXP_OFF.LRG_EXP_DELAY_n_13\,
      S(0) => \EXP_OFF.LRG_EXP_DELAY_n_14\
    );
\opt_has_pipe.first_q[0]_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF9"
    )
        port map (
      I0 => \opt_has_pipe.first_q[0]_i_2__2_n_0\,
      I1 => \^co\(0),
      I2 => minusOp(5),
      I3 => minusOp(6),
      I4 => \opt_has_pipe.first_q[0]_i_3__1_n_0\,
      O => zero_align_align
    );
\opt_has_pipe.first_q[0]_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00010000FFFE"
    )
        port map (
      I0 => \^s_axis_b_tdata[22]\(2),
      I1 => \^s_axis_b_tdata[22]\(0),
      I2 => \^s_axis_b_tdata[22]\(1),
      I3 => \^s_axis_b_tdata[22]\(3),
      I4 => \^co\(0),
      I5 => \^s_axis_b_tdata[22]\(4),
      O => \^first_q0\
    );
\opt_has_pipe.first_q[0]_i_1__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^s_axis_b_tdata[22]\(0),
      I1 => \^co\(0),
      I2 => \^s_axis_b_tdata[22]\(1),
      O => abs_dist_mux(0)
    );
\opt_has_pipe.first_q[0]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^s_axis_b_tdata[22]\(4),
      I1 => \^s_axis_b_tdata[22]\(2),
      I2 => \^s_axis_b_tdata[22]\(0),
      I3 => \^co\(0),
      I4 => \^s_axis_b_tdata[22]\(1),
      I5 => \^s_axis_b_tdata[22]\(3),
      O => \opt_has_pipe.first_q[0]_i_2__2_n_0\
    );
\opt_has_pipe.first_q[0]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A1A5A185A585A584"
    )
        port map (
      I0 => \^s_axis_b_tdata[22]\(4),
      I1 => \^s_axis_b_tdata[22]\(3),
      I2 => \^co\(0),
      I3 => \^s_axis_b_tdata[22]\(2),
      I4 => \^s_axis_b_tdata[22]\(0),
      I5 => \^s_axis_b_tdata[22]\(1),
      O => \opt_has_pipe.first_q[0]_i_3__1_n_0\
    );
\opt_has_pipe.first_q[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4242424242424260"
    )
        port map (
      I0 => \^s_axis_b_tdata[22]\(4),
      I1 => \^co\(0),
      I2 => \^s_axis_b_tdata[22]\(3),
      I3 => \^s_axis_b_tdata[22]\(1),
      I4 => \^s_axis_b_tdata[22]\(0),
      I5 => \^s_axis_b_tdata[22]\(2),
      O => \opt_has_pipe.first_q[10]_i_2_n_0\
    );
\opt_has_pipe.first_q[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2424242424242405"
    )
        port map (
      I0 => \^s_axis_b_tdata[22]\(4),
      I1 => \^co\(0),
      I2 => \^s_axis_b_tdata[22]\(3),
      I3 => \^s_axis_b_tdata[22]\(1),
      I4 => \^s_axis_b_tdata[22]\(0),
      I5 => \^s_axis_b_tdata[22]\(2),
      O => \opt_has_pipe.first_q[10]_i_3_n_0\
    );
\opt_has_pipe.first_q[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F10E"
    )
        port map (
      I0 => \^s_axis_b_tdata[22]\(0),
      I1 => \^s_axis_b_tdata[22]\(1),
      I2 => \^co\(0),
      I3 => \^s_axis_b_tdata[22]\(2),
      O => \s_axis_b_tdata[19]_0\
    );
\opt_has_pipe.first_q[1]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0100FE"
    )
        port map (
      I0 => \^s_axis_b_tdata[22]\(1),
      I1 => \^s_axis_b_tdata[22]\(0),
      I2 => \^s_axis_b_tdata[22]\(2),
      I3 => \^co\(0),
      I4 => \^s_axis_b_tdata[22]\(3),
      O => s_axis_b_tdata_19_sn_1
    );
\opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => ext_largest_exp(5),
      I1 => ext_largest_exp(4),
      I2 => ext_largest_exp(7),
      I3 => ext_largest_exp(6),
      I4 => \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_i_2_n_0\,
      O => \lrg_almost_over__0\
    );
\opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => ext_largest_exp(2),
      I1 => ext_largest_exp(3),
      I2 => ext_largest_exp(0),
      I3 => ext_largest_exp(1),
      O => \opt_has_pipe.i_pipe[2].pipe_reg[2][0]_srl2_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_lead_zero_encode is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cancellation : out STD_LOGIC;
    CARRYS_OUT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \opt_has_pipe.first_q_reg[1]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.first_q_reg[1]_0\ : out STD_LOGIC;
    NORM_DIST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \CHAIN_GEN[3].C_MUX.CARRY_MUX\ : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.first_q_reg[1]_1\ : out STD_LOGIC;
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_0\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \RESULT_REG.NORMAL.mant_op_reg[1]\ : in STD_LOGIC;
    \CHAIN_GEN[2].C_MUX.CARRY_MUX\ : in STD_LOGIC;
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_0\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.mant_op_reg[1]_0\ : in STD_LOGIC;
    \RESULT_REG.NORMAL.mant_op_reg[3]\ : in STD_LOGIC;
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6\ : in STD_LOGIC;
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0\ : in STD_LOGIC;
    \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1\ : in STD_LOGIC;
    \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8\ : in STD_LOGIC;
    zeros_del : in STD_LOGIC;
    add_mant : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_lead_zero_encode : entity is "lead_zero_encode";
end fp16_sub_lead_zero_encode;

architecture STRUCTURE of fp16_sub_lead_zero_encode is
  signal \^carrys_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ENCODE[0].MUX_0_n_3\ : STD_LOGIC;
  signal \ENCODE[0].MUX_0_n_4\ : STD_LOGIC;
  signal \ZERO_DET_CC_2.CC_n_0\ : STD_LOGIC;
  signal c_int : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal chunk_is_zero : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^opt_has_pipe.first_q_reg[1]_0\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  CARRYS_OUT(1 downto 0) <= \^carrys_out\(1 downto 0);
  \opt_has_pipe.first_q_reg[1]_0\ <= \^opt_has_pipe.first_q_reg[1]_0\;
  \out\(2 downto 0) <= \^out\(2 downto 0);
A_Z_DET: entity work.\fp16_sub_delay__parameterized1_0\
     port map (
      aclk => aclk,
      cancellation => cancellation,
      \opt_has_pipe.first_q_reg[0]\ => \ZERO_DET_CC_2.CC_n_0\
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_mant(19),
      I1 => add_mant(18),
      O => chunk_is_zero(0)
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_mant(3),
      I1 => add_mant(2),
      O => chunk_is_zero(8)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_mant(17),
      I1 => add_mant(16),
      O => chunk_is_zero(1)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_mant(1),
      I1 => add_mant(0),
      O => chunk_is_zero(9)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_mant(15),
      I1 => add_mant(14),
      O => chunk_is_zero(2)
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_mant(13),
      I1 => add_mant(12),
      O => chunk_is_zero(3)
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_mant(11),
      I1 => add_mant(10),
      O => chunk_is_zero(4)
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_mant(9),
      I1 => add_mant(8),
      O => chunk_is_zero(5)
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_mant(7),
      I1 => add_mant(6),
      O => chunk_is_zero(6)
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => add_mant(5),
      I1 => add_mant(4),
      O => chunk_is_zero(7)
    );
\ENCODE[0].DIST_DEL\: entity work.\fp16_sub_delay__parameterized10\
     port map (
      CARRYS_OUT(1 downto 0) => \^carrys_out\(1 downto 0),
      DI(0) => DI(3),
      NORM_DIST(1 downto 0) => NORM_DIST(1 downto 0),
      aclk => aclk,
      \opt_has_pipe.first_q_reg[1]\(0) => \opt_has_pipe.first_q_reg[1]\(2)
    );
\ENCODE[0].MUX_0\: entity work.fp16_sub_mux4
     port map (
      CARRYS_OUT(1 downto 0) => \^carrys_out\(1 downto 0),
      DI(0) => DI(0),
      aclk => aclk,
      add_mant(9) => add_mant(19),
      add_mant(8) => add_mant(17),
      add_mant(7) => add_mant(15),
      add_mant(6) => add_mant(13),
      add_mant(5) => add_mant(11),
      add_mant(4) => add_mant(9),
      add_mant(3) => add_mant(7),
      add_mant(2) => add_mant(5),
      add_mant(1) => add_mant(3),
      add_mant(0) => add_mant(1),
      \opt_has_pipe.first_q_reg[0]\ => \ENCODE[0].MUX_0_n_4\,
      \opt_has_pipe.first_q_reg[1]\ => \^opt_has_pipe.first_q_reg[1]_0\,
      \opt_has_pipe.first_q_reg[3]\ => \ENCODE[0].MUX_0_n_3\,
      \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\(0) => \opt_has_pipe.first_q_reg[1]\(0),
      \opt_has_pipe.i_pipe[3].pipe_reg[3][0]_0\ => \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\,
      \out\(2 downto 0) => \^out\(2 downto 0)
    );
\ENCODE[0].MUX_Z\: entity work.fp16_sub_mux4_1
     port map (
      A(0) => A(0),
      CARRYS_OUT(7) => \^carrys_out\(1),
      CARRYS_OUT(6 downto 4) => c_int(6 downto 4),
      CARRYS_OUT(3) => \^carrys_out\(0),
      CARRYS_OUT(2 downto 0) => c_int(2 downto 0),
      \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6\ => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6\,
      \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0\ => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0\,
      \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1\ => \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1\,
      \CHAIN_GEN[2].C_MUX.CARRY_MUX\ => \CHAIN_GEN[2].C_MUX.CARRY_MUX\,
      \CHAIN_GEN[2].C_MUX.CARRY_MUX_0\ => \CHAIN_GEN[2].C_MUX.CARRY_MUX_0\,
      \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8\ => \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8\,
      DI(2 downto 0) => DI(2 downto 0),
      \RESULT_REG.NORMAL.exp_op[6]_i_4\ => \ENCODE[0].MUX_0_n_4\,
      \RESULT_REG.NORMAL.exp_op[6]_i_4_0\ => \ENCODE[0].MUX_0_n_3\,
      \RESULT_REG.NORMAL.mant_op_reg[1]\ => \RESULT_REG.NORMAL.mant_op_reg[1]\,
      \RESULT_REG.NORMAL.mant_op_reg[1]_0\ => \RESULT_REG.NORMAL.mant_op_reg[1]_0\,
      \RESULT_REG.NORMAL.mant_op_reg[3]\ => \^opt_has_pipe.first_q_reg[1]_0\,
      \RESULT_REG.NORMAL.mant_op_reg[3]_0\ => \RESULT_REG.NORMAL.mant_op_reg[3]\,
      aclk => aclk,
      \opt_has_pipe.first_q_reg[0]\(0) => \opt_has_pipe.first_q_reg[1]\(1),
      \opt_has_pipe.first_q_reg[0]_0\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.first_q_reg[0]_1\ => \opt_has_pipe.first_q_reg[0]_0\,
      \opt_has_pipe.first_q_reg[1]\ => \opt_has_pipe.first_q_reg[1]_1\,
      \opt_has_pipe.first_q_reg[1]_0\(1 downto 0) => p_0_out(1 downto 0),
      \opt_has_pipe.first_q_reg[2]\(2 downto 0) => \opt_has_pipe.first_q_reg[2]\(2 downto 0),
      \out\(2 downto 0) => \^out\(2 downto 0),
      zeros_del => zeros_del
    );
ZERO_DET_CC_1: entity work.\fp16_sub_carry_chain__parameterized2\
     port map (
      A(7 downto 0) => chunk_is_zero(7 downto 0),
      CARRYS_OUT(7) => \^carrys_out\(1),
      CARRYS_OUT(6 downto 4) => c_int(6 downto 4),
      CARRYS_OUT(3) => \^carrys_out\(0),
      CARRYS_OUT(2 downto 0) => c_int(2 downto 0),
      \CHAIN_GEN[3].C_MUX.CARRY_MUX_0\ => \CHAIN_GEN[3].C_MUX.CARRY_MUX\
    );
\ZERO_DET_CC_2.CC\: entity work.\fp16_sub_carry_chain__parameterized3\
     port map (
      A(1 downto 0) => chunk_is_zero(9 downto 8),
      CARRYS_OUT(0) => \^carrys_out\(1),
      \CHAIN_GEN[7].C_MUX.CARRY_MUX\ => \ZERO_DET_CC_2.CC_n_0\,
      \opt_has_pipe.first_q_reg[1]\(1 downto 0) => p_0_out(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_addsub is
  port (
    add_mant : out STD_LOGIC_VECTOR ( 19 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    zero_largest : out STD_LOGIC;
    \s_axis_a_tdata[22]\ : out STD_LOGIC;
    b_exp_flt_all_zero : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]\ : in STD_LOGIC;
    xor_rnd1 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    A : in STD_LOGIC_VECTOR ( 10 downto 0 );
    zeros_add : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \opt_has_pipe.first_q_reg[8]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_addsub : entity is "addsub";
end fp16_sub_addsub;

architecture STRUCTURE of fp16_sub_addsub is
begin
\LOGIC_ADD.FRAC_ADDSUB\: entity work.fp16_sub_addsub_logic
     port map (
      A(10 downto 0) => A(10 downto 0),
      Q(6 downto 0) => Q(6 downto 0),
      aclk => aclk,
      add_mant(19 downto 0) => add_mant(19 downto 0),
      b_exp_flt_all_zero => b_exp_flt_all_zero,
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.first_q_reg[1]\ => \opt_has_pipe.first_q_reg[1]\,
      \opt_has_pipe.first_q_reg[8]\(15 downto 0) => \opt_has_pipe.first_q_reg[8]\(15 downto 0),
      \opt_has_pipe.first_q_reg[9]\(9 downto 0) => \opt_has_pipe.first_q_reg[9]\(9 downto 0),
      s_axis_a_tdata(6 downto 0) => s_axis_a_tdata(6 downto 0),
      \s_axis_a_tdata[22]\ => \s_axis_a_tdata[22]\,
      s_axis_b_tdata(6 downto 0) => s_axis_b_tdata(6 downto 0),
      xor_rnd1(6 downto 0) => xor_rnd1(6 downto 0),
      zero_largest => zero_largest,
      zeros_add => zeros_add
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_norm_and_round_logic is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    cancellation : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    NORM_DIST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \opt_has_pipe.first_q_reg[1]_0\ : out STD_LOGIC;
    \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : out STD_LOGIC;
    round_mant : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[0]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    add_mant : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_norm_and_round_logic : entity is "norm_and_round_logic";
end fp16_sub_norm_and_round_logic;

architecture STRUCTURE of fp16_sub_norm_and_round_logic is
  signal LZE_n_12 : STD_LOGIC;
  signal LZE_n_20 : STD_LOGIC;
  signal LZE_n_9 : STD_LOGIC;
  signal NORM_SHIFT_n_13 : STD_LOGIC;
  signal NORM_SHIFT_n_14 : STD_LOGIC;
  signal NORM_SHIFT_n_15 : STD_LOGIC;
  signal NORM_SHIFT_n_16 : STD_LOGIC;
  signal NORM_SHIFT_n_17 : STD_LOGIC;
  signal NORM_SHIFT_n_18 : STD_LOGIC;
  signal NORM_SHIFT_n_19 : STD_LOGIC;
  signal NORM_SHIFT_n_20 : STD_LOGIC;
  signal NORM_SHIFT_n_22 : STD_LOGIC;
  signal \RND_BIT_GEN/a_ip\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal c_int : STD_LOGIC_VECTOR ( 3 to 3 );
  signal mant_shifted_rnd1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal norm_dist_skew : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \^out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_5_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sum_rnd2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zeros_del : STD_LOGIC;
begin
  \out\(0) <= \^out\(0);
LZE: entity work.fp16_sub_lead_zero_encode
     port map (
      A(0) => \RND_BIT_GEN/a_ip\(2),
      CARRYS_OUT(1) => norm_dist_skew(4),
      CARRYS_OUT(0) => c_int(3),
      \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6\ => NORM_SHIFT_n_18,
      \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_0\ => NORM_SHIFT_n_19,
      \CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__6_1\ => NORM_SHIFT_n_20,
      \CHAIN_GEN[2].C_MUX.CARRY_MUX\ => NORM_SHIFT_n_15,
      \CHAIN_GEN[2].C_MUX.CARRY_MUX_0\ => NORM_SHIFT_n_22,
      \CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__8\ => NORM_SHIFT_n_17,
      \CHAIN_GEN[3].C_MUX.CARRY_MUX\ => LZE_n_12,
      DI(3 downto 0) => DI(3 downto 0),
      NORM_DIST(1 downto 0) => NORM_DIST(1 downto 0),
      \RESULT_REG.NORMAL.mant_op_reg[1]\ => NORM_SHIFT_n_13,
      \RESULT_REG.NORMAL.mant_op_reg[1]_0\ => NORM_SHIFT_n_14,
      \RESULT_REG.NORMAL.mant_op_reg[3]\ => NORM_SHIFT_n_16,
      aclk => aclk,
      add_mant(19 downto 0) => add_mant(19 downto 0),
      cancellation => cancellation,
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.first_q_reg[0]_0\ => LZE_n_20,
      \opt_has_pipe.first_q_reg[1]\(2 downto 0) => \opt_has_pipe.first_q_reg[1]\(2 downto 0),
      \opt_has_pipe.first_q_reg[1]_0\ => LZE_n_9,
      \opt_has_pipe.first_q_reg[1]_1\ => \opt_has_pipe.first_q_reg[1]_0\,
      \opt_has_pipe.first_q_reg[2]\(2 downto 0) => mant_shifted_rnd1(3 downto 1),
      \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\ => \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\,
      \out\(2) => p_5_out(2),
      \out\(1) => \^out\(0),
      \out\(0) => p_5_out(0),
      zeros_del => zeros_del
    );
NORM_SHIFT: entity work.\fp16_sub_shift_msb_first__parameterized0\
     port map (
      A(7 downto 0) => sum_rnd2(7 downto 0),
      CARRYS_OUT(1) => norm_dist_skew(4),
      CARRYS_OUT(0) => c_int(3),
      \CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__5\ => LZE_n_20,
      \RESULT_REG.NORMAL.mant_op_reg[14]\ => LZE_n_9,
      aclk => aclk,
      add_mant(18 downto 0) => add_mant(18 downto 0),
      \opt_has_pipe.first_q_reg[0]\(0) => \RND_BIT_GEN/a_ip\(0),
      \opt_has_pipe.first_q_reg[12]\ => LZE_n_12,
      \opt_has_pipe.first_q_reg[14]\ => NORM_SHIFT_n_17,
      \opt_has_pipe.first_q_reg[15]\ => NORM_SHIFT_n_19,
      \opt_has_pipe.first_q_reg[16]\(4 downto 1) => mant_shifted_rnd1(7 downto 4),
      \opt_has_pipe.first_q_reg[16]\(0) => mant_shifted_rnd1(0),
      \opt_has_pipe.first_q_reg[16]_0\ => NORM_SHIFT_n_14,
      \opt_has_pipe.first_q_reg[16]_1\ => NORM_SHIFT_n_22,
      \opt_has_pipe.first_q_reg[17]\ => NORM_SHIFT_n_15,
      \opt_has_pipe.first_q_reg[17]_0\ => NORM_SHIFT_n_20,
      \opt_has_pipe.first_q_reg[18]\ => NORM_SHIFT_n_13,
      \opt_has_pipe.first_q_reg[19]\ => NORM_SHIFT_n_16,
      \opt_has_pipe.first_q_reg[19]_0\ => NORM_SHIFT_n_18,
      \out\(2) => p_5_out(2),
      \out\(1) => \^out\(0),
      \out\(0) => p_5_out(0),
      zeros_del => zeros_del
    );
ROUND: entity work.fp16_sub_renorm_and_round_logic
     port map (
      A(1) => \RND_BIT_GEN/a_ip\(2),
      A(0) => \RND_BIT_GEN/a_ip\(0),
      Q(0) => Q(0),
      \RESULT_REG.NORMAL.mant_op_reg[15]\(7 downto 0) => sum_rnd2(7 downto 0),
      \RESULT_REG.NORMAL.mant_op_reg[7]\(7 downto 0) => mant_shifted_rnd1(7 downto 0),
      round_mant(15 downto 0) => round_mant(15 downto 0)
    );
ZEROS_DELAY: entity work.\fp16_sub_delay__parameterized1\
     port map (
      aclk => aclk,
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]_0\,
      zeros_del => zeros_del
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_align_add is
  port (
    \out\ : out STD_LOGIC;
    add_mant : out STD_LOGIC_VECTOR ( 19 downto 0 );
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axis_b_tdata[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    zero_largest : out STD_LOGIC;
    \align_dist_0_ip__0\ : out STD_LOGIC;
    subtract : in STD_LOGIC;
    aclk : in STD_LOGIC;
    zero_align_align : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]\ : in STD_LOGIC;
    first_q0 : in STD_LOGIC;
    abs_dist_mux : in STD_LOGIC_VECTOR ( 0 to 0 );
    \opt_has_pipe.first_q_reg[1]_0\ : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \opt_has_pipe.first_q_reg[8]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \opt_has_pipe.first_q_reg[4]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[3]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[2]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]_1\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    minusOp : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \sml_shift_mux__16\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_align_add : entity is "align_add";
end fp16_sub_align_add;

architecture STRUCTURE of fp16_sub_align_add is
  signal ALIGN_SHIFT_n_10 : STD_LOGIC;
  signal ALIGN_SHIFT_n_11 : STD_LOGIC;
  signal ALIGN_SHIFT_n_12 : STD_LOGIC;
  signal ALIGN_SHIFT_n_13 : STD_LOGIC;
  signal ALIGN_SHIFT_n_14 : STD_LOGIC;
  signal ALIGN_SHIFT_n_15 : STD_LOGIC;
  signal ALIGN_SHIFT_n_16 : STD_LOGIC;
  signal ALIGN_SHIFT_n_17 : STD_LOGIC;
  signal ALIGN_SHIFT_n_18 : STD_LOGIC;
  signal ALIGN_SHIFT_n_19 : STD_LOGIC;
  signal ALIGN_SHIFT_n_26 : STD_LOGIC;
  signal ALIGN_SHIFT_n_27 : STD_LOGIC;
  signal ALIGN_SHIFT_n_9 : STD_LOGIC;
  signal \EXP/b_exp_flt_all_zero\ : STD_LOGIC;
  signal FRAC_ADDSUB_n_28 : STD_LOGIC;
  signal \LOGIC_ADD.FRAC_ADDSUB/lrg_rnd1\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \LOGIC_ADD.FRAC_ADDSUB/lrg_rnd2\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \LOGIC_ADD.FRAC_ADDSUB/xor_rnd1\ : STD_LOGIC_VECTOR ( 9 downto 3 );
  signal \LOGIC_ADD.FRAC_ADDSUB/xor_rnd2\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal SUB_DELAY_n_1 : STD_LOGIC;
  signal SUB_DELAY_n_2 : STD_LOGIC;
  signal ZERO_SMALLEST_DEL_n_12 : STD_LOGIC;
  signal subtract_add : STD_LOGIC;
  signal zero_b_preadd : STD_LOGIC;
  signal zero_sml_preadd : STD_LOGIC;
  signal zeros_add : STD_LOGIC;
begin
ALIGN_SHIFT: entity work.fp16_sub_alignment
     port map (
      A(5 downto 0) => \LOGIC_ADD.FRAC_ADDSUB/xor_rnd2\(9 downto 4),
      \CHAIN_GEN[3].CARRYS_DEL.NEED_DEL.CARRYS_FD\(3 downto 0) => A(3 downto 0),
      CO(0) => CO(0),
      D(10 downto 0) => D(10 downto 0),
      Q(5 downto 0) => \LOGIC_ADD.FRAC_ADDSUB/lrg_rnd2\(9 downto 4),
      S(2 downto 0) => S(2 downto 0),
      abs_dist_mux(0) => abs_dist_mux(0),
      aclk => aclk,
      \align_dist_0_ip__0\ => \align_dist_0_ip__0\,
      first_q0 => first_q0,
      minusOp(4 downto 0) => minusOp(4 downto 0),
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.first_q_reg[10]\ => ALIGN_SHIFT_n_15,
      \opt_has_pipe.first_q_reg[11]\ => ALIGN_SHIFT_n_14,
      \opt_has_pipe.first_q_reg[12]\ => ALIGN_SHIFT_n_11,
      \opt_has_pipe.first_q_reg[13]\ => ALIGN_SHIFT_n_12,
      \opt_has_pipe.first_q_reg[14]\ => ALIGN_SHIFT_n_9,
      \opt_has_pipe.first_q_reg[15]\ => ALIGN_SHIFT_n_13,
      \opt_has_pipe.first_q_reg[16]\ => ALIGN_SHIFT_n_10,
      \opt_has_pipe.first_q_reg[17]\ => ALIGN_SHIFT_n_27,
      \opt_has_pipe.first_q_reg[18]\ => ALIGN_SHIFT_n_26,
      \opt_has_pipe.first_q_reg[1]\ => \opt_has_pipe.first_q_reg[1]\,
      \opt_has_pipe.first_q_reg[1]_0\ => \opt_has_pipe.first_q_reg[1]_0\,
      \opt_has_pipe.first_q_reg[1]_1\ => \opt_has_pipe.first_q_reg[1]_1\,
      \opt_has_pipe.first_q_reg[2]\ => \opt_has_pipe.first_q_reg[2]\,
      \opt_has_pipe.first_q_reg[3]\ => \opt_has_pipe.first_q_reg[3]\,
      \opt_has_pipe.first_q_reg[4]\ => \opt_has_pipe.first_q_reg[4]\,
      \opt_has_pipe.first_q_reg[6]\ => ALIGN_SHIFT_n_19,
      \opt_has_pipe.first_q_reg[7]\ => ALIGN_SHIFT_n_18,
      \opt_has_pipe.first_q_reg[8]\ => ALIGN_SHIFT_n_17,
      \opt_has_pipe.first_q_reg[8]_0\ => ZERO_SMALLEST_DEL_n_12,
      \opt_has_pipe.first_q_reg[8]_1\(0) => subtract_add,
      \opt_has_pipe.first_q_reg[9]\ => ALIGN_SHIFT_n_16,
      \out\ => zero_b_preadd,
      s_axis_a_tdata(6 downto 0) => s_axis_a_tdata(6 downto 0),
      s_axis_b_tdata(6 downto 0) => s_axis_b_tdata(6 downto 0),
      \s_axis_b_tdata[19]\(3 downto 0) => \s_axis_b_tdata[19]\(3 downto 0),
      \sml_shift_mux__16\(6 downto 0) => \sml_shift_mux__16\(6 downto 0),
      zero_sml_preadd => zero_sml_preadd,
      zeros_add => zeros_add
    );
FRAC_ADDSUB: entity work.fp16_sub_addsub
     port map (
      A(10) => subtract_add,
      A(9 downto 0) => \LOGIC_ADD.FRAC_ADDSUB/xor_rnd2\(9 downto 0),
      Q(6 downto 0) => \LOGIC_ADD.FRAC_ADDSUB/lrg_rnd1\(6 downto 0),
      aclk => aclk,
      add_mant(19 downto 0) => add_mant(19 downto 0),
      b_exp_flt_all_zero => \EXP/b_exp_flt_all_zero\,
      \opt_has_pipe.first_q_reg[0]\ => SUB_DELAY_n_2,
      \opt_has_pipe.first_q_reg[1]\ => SUB_DELAY_n_1,
      \opt_has_pipe.first_q_reg[8]\(15 downto 0) => \opt_has_pipe.first_q_reg[8]\(15 downto 0),
      \opt_has_pipe.first_q_reg[9]\(9 downto 0) => \LOGIC_ADD.FRAC_ADDSUB/lrg_rnd2\(9 downto 0),
      s_axis_a_tdata(6 downto 0) => s_axis_a_tdata(6 downto 0),
      \s_axis_a_tdata[22]\ => FRAC_ADDSUB_n_28,
      s_axis_b_tdata(6 downto 0) => s_axis_b_tdata(6 downto 0),
      xor_rnd1(6 downto 0) => \LOGIC_ADD.FRAC_ADDSUB/xor_rnd1\(9 downto 3),
      zero_largest => zero_largest,
      zeros_add => zeros_add
    );
SUB_DELAY: entity work.\fp16_sub_delay__parameterized1_11\
     port map (
      A(0) => subtract_add,
      aclk => aclk,
      \opt_has_pipe.first_q_reg[0]\ => SUB_DELAY_n_1,
      \opt_has_pipe.first_q_reg[0]_0\ => SUB_DELAY_n_2,
      \opt_has_pipe.first_q_reg[0]_1\ => ALIGN_SHIFT_n_19,
      \opt_has_pipe.first_q_reg[1]\ => ALIGN_SHIFT_n_18,
      \out\ => zero_b_preadd,
      subtract => subtract,
      zero_sml_preadd => zero_sml_preadd
    );
ZERO_ALIGN_DELAY: entity work.\fp16_sub_delay__parameterized5\
     port map (
      aclk => aclk,
      \out\ => zero_b_preadd,
      zero_align_align => zero_align_align
    );
ZERO_DEL: entity work.\fp16_sub_delay__parameterized5_12\
     port map (
      aclk => aclk,
      \out\ => \out\,
      zeros_add => zeros_add
    );
ZERO_SMALLEST_DEL: entity work.\fp16_sub_delay__parameterized1_13\
     port map (
      A(0) => subtract_add,
      Q(6 downto 0) => \LOGIC_ADD.FRAC_ADDSUB/lrg_rnd1\(6 downto 0),
      aclk => aclk,
      b_exp_flt_all_zero => \EXP/b_exp_flt_all_zero\,
      \opt_has_pipe.first_q_reg[0]\(3 downto 0) => \LOGIC_ADD.FRAC_ADDSUB/xor_rnd2\(3 downto 0),
      \opt_has_pipe.first_q_reg[0]_0\ => ZERO_SMALLEST_DEL_n_12,
      \opt_has_pipe.first_q_reg[0]_1\ => FRAC_ADDSUB_n_28,
      \opt_has_pipe.first_q_reg[0]_2\ => ALIGN_SHIFT_n_13,
      \opt_has_pipe.first_q_reg[1]\ => ALIGN_SHIFT_n_10,
      \opt_has_pipe.first_q_reg[2]\ => ALIGN_SHIFT_n_17,
      \opt_has_pipe.first_q_reg[2]_0\ => ALIGN_SHIFT_n_27,
      \opt_has_pipe.first_q_reg[3]\(3 downto 0) => \LOGIC_ADD.FRAC_ADDSUB/lrg_rnd2\(3 downto 0),
      \opt_has_pipe.first_q_reg[3]_0\ => ALIGN_SHIFT_n_16,
      \opt_has_pipe.first_q_reg[3]_1\ => ALIGN_SHIFT_n_26,
      \opt_has_pipe.first_q_reg[4]\ => ALIGN_SHIFT_n_15,
      \opt_has_pipe.first_q_reg[5]\ => ALIGN_SHIFT_n_14,
      \opt_has_pipe.first_q_reg[6]\ => ALIGN_SHIFT_n_11,
      \opt_has_pipe.first_q_reg[7]\ => ALIGN_SHIFT_n_12,
      \opt_has_pipe.first_q_reg[8]\ => ALIGN_SHIFT_n_9,
      \out\ => zero_b_preadd,
      s_axis_a_tdata(2 downto 0) => s_axis_a_tdata(2 downto 0),
      xor_rnd1(6 downto 0) => \LOGIC_ADD.FRAC_ADDSUB/xor_rnd1\(9 downto 3),
      zero_sml_preadd => zero_sml_preadd
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_flt_add_logic is
  port (
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_flt_add_logic : entity is "flt_add_logic";
end fp16_sub_flt_add_logic;

architecture STRUCTURE of fp16_sub_flt_add_logic is
  signal ALIGN_BLK_n_21 : STD_LOGIC;
  signal ALIGN_BLK_n_22 : STD_LOGIC;
  signal ALIGN_BLK_n_23 : STD_LOGIC;
  signal ALIGN_BLK_n_24 : STD_LOGIC;
  signal ALIGN_BLK_n_25 : STD_LOGIC;
  signal ALIGN_BLK_n_26 : STD_LOGIC;
  signal ALIGN_BLK_n_27 : STD_LOGIC;
  signal \ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal EXP_n_0 : STD_LOGIC;
  signal EXP_n_1 : STD_LOGIC;
  signal EXP_n_12 : STD_LOGIC;
  signal EXP_n_14 : STD_LOGIC;
  signal EXP_n_2 : STD_LOGIC;
  signal EXP_n_3 : STD_LOGIC;
  signal EXP_n_34 : STD_LOGIC;
  signal EXP_n_35 : STD_LOGIC;
  signal EXP_n_36 : STD_LOGIC;
  signal EXP_n_37 : STD_LOGIC;
  signal EXP_n_38 : STD_LOGIC;
  signal EXP_n_39 : STD_LOGIC;
  signal EXP_n_40 : STD_LOGIC;
  signal EXP_n_41 : STD_LOGIC;
  signal EXP_n_42 : STD_LOGIC;
  signal EXP_n_43 : STD_LOGIC;
  signal EXP_n_44 : STD_LOGIC;
  signal EXP_n_53 : STD_LOGIC;
  signal EXP_n_54 : STD_LOGIC;
  signal EXP_n_59 : STD_LOGIC;
  signal EXP_n_60 : STD_LOGIC;
  signal EXP_n_61 : STD_LOGIC;
  signal EXP_n_62 : STD_LOGIC;
  signal EXP_n_65 : STD_LOGIC;
  signal EXP_n_66 : STD_LOGIC;
  signal EXP_n_9 : STD_LOGIC;
  signal NORM_DIST : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal NORM_n_2 : STD_LOGIC;
  signal NORM_n_3 : STD_LOGIC;
  signal NORM_n_4 : STD_LOGIC;
  signal NORM_n_7 : STD_LOGIC;
  signal NORM_n_8 : STD_LOGIC;
  signal NORM_n_9 : STD_LOGIC;
  signal \ROUND/p_0_out\ : STD_LOGIC_VECTOR ( 8 to 8 );
  signal abs_dist_mux : STD_LOGIC_VECTOR ( 1 to 1 );
  signal add_mant : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \align_dist_0_ip__0\ : STD_LOGIC;
  signal cancellation : STD_LOGIC;
  signal exp_pre_op : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal first_q0 : STD_LOGIC;
  signal lrg_mant_z_mux : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal minusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^norm_dist\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal op_sign : STD_LOGIC;
  signal op_state : STD_LOGIC_VECTOR ( 5 to 5 );
  signal round_mant : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \sml_shift_mux__16\ : STD_LOGIC_VECTOR ( 16 downto 10 );
  signal subtract : STD_LOGIC;
  signal zero_align_align : STD_LOGIC;
  signal zero_largest : STD_LOGIC;
  signal zeros : STD_LOGIC;
begin
ALIGN_BLK: entity work.fp16_sub_align_add
     port map (
      A(3 downto 0) => \ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det\(3 downto 0),
      CO(0) => EXP_n_9,
      D(10) => EXP_n_34,
      D(9) => EXP_n_35,
      D(8) => EXP_n_36,
      D(7) => EXP_n_37,
      D(6) => EXP_n_38,
      D(5) => EXP_n_39,
      D(4) => EXP_n_40,
      D(3) => EXP_n_41,
      D(2) => EXP_n_42,
      D(1) => EXP_n_43,
      D(0) => EXP_n_44,
      S(2) => ALIGN_BLK_n_21,
      S(1) => ALIGN_BLK_n_22,
      S(0) => ALIGN_BLK_n_23,
      abs_dist_mux(0) => abs_dist_mux(1),
      aclk => aclk,
      add_mant(19 downto 0) => add_mant(19 downto 0),
      \align_dist_0_ip__0\ => \align_dist_0_ip__0\,
      first_q0 => first_q0,
      minusOp(4 downto 0) => minusOp(4 downto 0),
      \opt_has_pipe.first_q_reg[0]\ => EXP_n_54,
      \opt_has_pipe.first_q_reg[1]\ => EXP_n_53,
      \opt_has_pipe.first_q_reg[1]_0\ => EXP_n_65,
      \opt_has_pipe.first_q_reg[1]_1\ => EXP_n_59,
      \opt_has_pipe.first_q_reg[2]\ => EXP_n_60,
      \opt_has_pipe.first_q_reg[3]\ => EXP_n_61,
      \opt_has_pipe.first_q_reg[4]\ => EXP_n_62,
      \opt_has_pipe.first_q_reg[8]\(15 downto 0) => lrg_mant_z_mux(15 downto 0),
      \out\ => zeros,
      s_axis_a_tdata(6 downto 0) => s_axis_a_tdata(22 downto 16),
      s_axis_b_tdata(6 downto 0) => s_axis_b_tdata(22 downto 16),
      \s_axis_b_tdata[19]\(3) => ALIGN_BLK_n_24,
      \s_axis_b_tdata[19]\(2) => ALIGN_BLK_n_25,
      \s_axis_b_tdata[19]\(1) => ALIGN_BLK_n_26,
      \s_axis_b_tdata[19]\(0) => ALIGN_BLK_n_27,
      \sml_shift_mux__16\(6 downto 0) => \sml_shift_mux__16\(16 downto 10),
      subtract => subtract,
      zero_align_align => zero_align_align,
      zero_largest => zero_largest
    );
EXP: entity work.fp16_sub_flt_add_exp
     port map (
      A(3 downto 0) => \ALIGN_SHIFT/ALIGN_Z_D/EQ_ZERO/chunk_det\(3 downto 0),
      CO(0) => EXP_n_9,
      D(6 downto 5) => exp_pre_op(6 downto 5),
      D(4) => EXP_n_12,
      D(3) => exp_pre_op(3),
      D(2) => EXP_n_14,
      D(1 downto 0) => exp_pre_op(1 downto 0),
      DI(3) => EXP_n_0,
      DI(2) => EXP_n_1,
      DI(1) => EXP_n_2,
      DI(0) => EXP_n_3,
      NORM_DIST(1 downto 0) => NORM_DIST(4 downto 3),
      Q(1) => \ROUND/p_0_out\(8),
      Q(0) => round_mant(15),
      \RESULT_REG.NORMAL.exp_op_reg[2]\ => NORM_n_9,
      \RESULT_REG.NORMAL.exp_op_reg[2]_0\ => NORM_n_8,
      \RESULT_REG.NORMAL.exp_op_reg[2]_1\ => NORM_n_7,
      \RESULT_REG.NORMAL.exp_op_reg[3]\(2) => NORM_n_2,
      \RESULT_REG.NORMAL.exp_op_reg[3]\(1) => NORM_n_3,
      \RESULT_REG.NORMAL.exp_op_reg[3]\(0) => NORM_n_4,
      S(2) => ALIGN_BLK_n_21,
      S(1) => ALIGN_BLK_n_22,
      S(0) => ALIGN_BLK_n_23,
      abs_dist_mux(0) => abs_dist_mux(1),
      aclk => aclk,
      add_mant(0) => add_mant(19),
      \align_dist_0_ip__0\ => \align_dist_0_ip__0\,
      cancellation => cancellation,
      first_q0 => first_q0,
      op_sign => op_sign,
      op_state(0) => op_state(5),
      \opt_has_pipe.first_q_reg[0]\(3) => ALIGN_BLK_n_24,
      \opt_has_pipe.first_q_reg[0]\(2) => ALIGN_BLK_n_25,
      \opt_has_pipe.first_q_reg[0]\(1) => ALIGN_BLK_n_26,
      \opt_has_pipe.first_q_reg[0]\(0) => ALIGN_BLK_n_27,
      \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\ => EXP_n_66,
      \out\(0) => \^norm_dist\(2),
      s_axis_a_tdata(23 downto 0) => s_axis_a_tdata(23 downto 0),
      \s_axis_a_tdata[16]\(6 downto 0) => \sml_shift_mux__16\(16 downto 10),
      s_axis_a_tdata_0_sp_1 => EXP_n_54,
      s_axis_a_tdata_12_sp_1 => EXP_n_61,
      s_axis_a_tdata_4_sp_1 => EXP_n_59,
      s_axis_a_tdata_8_sp_1 => EXP_n_60,
      s_axis_b_tdata(23 downto 0) => s_axis_b_tdata(23 downto 0),
      \s_axis_b_tdata[15]\(15 downto 0) => lrg_mant_z_mux(15 downto 0),
      \s_axis_b_tdata[16]\(10) => EXP_n_34,
      \s_axis_b_tdata[16]\(9) => EXP_n_35,
      \s_axis_b_tdata[16]\(8) => EXP_n_36,
      \s_axis_b_tdata[16]\(7) => EXP_n_37,
      \s_axis_b_tdata[16]\(6) => EXP_n_38,
      \s_axis_b_tdata[16]\(5) => EXP_n_39,
      \s_axis_b_tdata[16]\(4) => EXP_n_40,
      \s_axis_b_tdata[16]\(3) => EXP_n_41,
      \s_axis_b_tdata[16]\(2) => EXP_n_42,
      \s_axis_b_tdata[16]\(1) => EXP_n_43,
      \s_axis_b_tdata[16]\(0) => EXP_n_44,
      \s_axis_b_tdata[19]_0\ => EXP_n_65,
      \s_axis_b_tdata[22]\(4 downto 0) => minusOp(4 downto 0),
      s_axis_b_tdata_14_sp_1 => EXP_n_62,
      s_axis_b_tdata_19_sp_1 => EXP_n_53,
      subtract => subtract,
      zero_align_align => zero_align_align,
      zero_largest => zero_largest
    );
NORM: entity work.fp16_sub_norm_and_round_logic
     port map (
      DI(3) => EXP_n_0,
      DI(2) => EXP_n_1,
      DI(1) => EXP_n_2,
      DI(0) => EXP_n_3,
      NORM_DIST(1 downto 0) => NORM_DIST(4 downto 3),
      Q(0) => \ROUND/p_0_out\(8),
      aclk => aclk,
      add_mant(19 downto 0) => add_mant(19 downto 0),
      cancellation => cancellation,
      \opt_has_pipe.first_q_reg[0]\ => NORM_n_9,
      \opt_has_pipe.first_q_reg[0]_0\ => zeros,
      \opt_has_pipe.first_q_reg[1]\(2) => NORM_n_2,
      \opt_has_pipe.first_q_reg[1]\(1) => NORM_n_3,
      \opt_has_pipe.first_q_reg[1]\(0) => NORM_n_4,
      \opt_has_pipe.first_q_reg[1]_0\ => NORM_n_7,
      \opt_has_pipe.i_pipe[3].pipe_reg[3][0]\ => NORM_n_8,
      \out\(0) => \^norm_dist\(2),
      round_mant(15 downto 0) => round_mant(15 downto 0)
    );
OP: entity work.fp16_sub_flt_dec_op
     port map (
      D(6 downto 5) => exp_pre_op(6 downto 5),
      D(4) => EXP_n_12,
      D(3) => exp_pre_op(3),
      D(2) => EXP_n_14,
      D(1 downto 0) => exp_pre_op(1 downto 0),
      \RESULT_REG.NORMAL.mant_op_reg[15]_0\ => EXP_n_66,
      aclk => aclk,
      m_axis_result_tdata(23 downto 0) => m_axis_result_tdata(23 downto 0),
      op_sign => op_sign,
      op_state(0) => op_state(5),
      round_mant(14 downto 0) => round_mant(14 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_flt_add is
  port (
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_flt_add : entity is "flt_add";
end fp16_sub_flt_add;

architecture STRUCTURE of fp16_sub_flt_add is
begin
\SPEED_OP.LOGIC.OP\: entity work.fp16_sub_flt_add_logic
     port map (
      aclk => aclk,
      m_axis_result_tdata(23 downto 0) => m_axis_result_tdata(23 downto 0),
      s_axis_a_tdata(23 downto 0) => s_axis_a_tdata(23 downto 0),
      s_axis_b_tdata(23 downto 0) => s_axis_b_tdata(23 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_floating_point_v7_1_7_viv is
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
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_result_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_result_tlast : out STD_LOGIC
  );
  attribute C_ACCUM_INPUT_MSB : integer;
  attribute C_ACCUM_INPUT_MSB of fp16_sub_floating_point_v7_1_7_viv : entity is 31;
  attribute C_ACCUM_LSB : integer;
  attribute C_ACCUM_LSB of fp16_sub_floating_point_v7_1_7_viv : entity is -31;
  attribute C_ACCUM_MSB : integer;
  attribute C_ACCUM_MSB of fp16_sub_floating_point_v7_1_7_viv : entity is 32;
  attribute C_A_FRACTION_WIDTH : integer;
  attribute C_A_FRACTION_WIDTH of fp16_sub_floating_point_v7_1_7_viv : entity is 17;
  attribute C_A_TDATA_WIDTH : integer;
  attribute C_A_TDATA_WIDTH of fp16_sub_floating_point_v7_1_7_viv : entity is 24;
  attribute C_A_TUSER_WIDTH : integer;
  attribute C_A_TUSER_WIDTH of fp16_sub_floating_point_v7_1_7_viv : entity is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of fp16_sub_floating_point_v7_1_7_viv : entity is 24;
  attribute C_BRAM_USAGE : integer;
  attribute C_BRAM_USAGE of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_B_FRACTION_WIDTH : integer;
  attribute C_B_FRACTION_WIDTH of fp16_sub_floating_point_v7_1_7_viv : entity is 17;
  attribute C_B_TDATA_WIDTH : integer;
  attribute C_B_TDATA_WIDTH of fp16_sub_floating_point_v7_1_7_viv : entity is 24;
  attribute C_B_TUSER_WIDTH : integer;
  attribute C_B_TUSER_WIDTH of fp16_sub_floating_point_v7_1_7_viv : entity is 1;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of fp16_sub_floating_point_v7_1_7_viv : entity is 24;
  attribute C_COMPARE_OPERATION : integer;
  attribute C_COMPARE_OPERATION of fp16_sub_floating_point_v7_1_7_viv : entity is 8;
  attribute C_C_FRACTION_WIDTH : integer;
  attribute C_C_FRACTION_WIDTH of fp16_sub_floating_point_v7_1_7_viv : entity is 17;
  attribute C_C_TDATA_WIDTH : integer;
  attribute C_C_TDATA_WIDTH of fp16_sub_floating_point_v7_1_7_viv : entity is 24;
  attribute C_C_TUSER_WIDTH : integer;
  attribute C_C_TUSER_WIDTH of fp16_sub_floating_point_v7_1_7_viv : entity is 1;
  attribute C_C_WIDTH : integer;
  attribute C_C_WIDTH of fp16_sub_floating_point_v7_1_7_viv : entity is 24;
  attribute C_FIXED_DATA_UNSIGNED : integer;
  attribute C_FIXED_DATA_UNSIGNED of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ABSOLUTE : integer;
  attribute C_HAS_ABSOLUTE of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ACCUMULATOR_A : integer;
  attribute C_HAS_ACCUMULATOR_A of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ACCUMULATOR_S : integer;
  attribute C_HAS_ACCUMULATOR_S of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW : integer;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ACCUM_OVERFLOW : integer;
  attribute C_HAS_ACCUM_OVERFLOW of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ACLKEN : integer;
  attribute C_HAS_ACLKEN of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ADD : integer;
  attribute C_HAS_ADD of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ARESETN : integer;
  attribute C_HAS_ARESETN of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_A_TLAST : integer;
  attribute C_HAS_A_TLAST of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_A_TUSER : integer;
  attribute C_HAS_A_TUSER of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_B : integer;
  attribute C_HAS_B of fp16_sub_floating_point_v7_1_7_viv : entity is 1;
  attribute C_HAS_B_TLAST : integer;
  attribute C_HAS_B_TLAST of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_B_TUSER : integer;
  attribute C_HAS_B_TUSER of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_C : integer;
  attribute C_HAS_C of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_COMPARE : integer;
  attribute C_HAS_COMPARE of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_C_TLAST : integer;
  attribute C_HAS_C_TLAST of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_C_TUSER : integer;
  attribute C_HAS_C_TUSER of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_DIVIDE : integer;
  attribute C_HAS_DIVIDE of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_DIVIDE_BY_ZERO : integer;
  attribute C_HAS_DIVIDE_BY_ZERO of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_EXPONENTIAL : integer;
  attribute C_HAS_EXPONENTIAL of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_FIX_TO_FLT : integer;
  attribute C_HAS_FIX_TO_FLT of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_FLT_TO_FIX : integer;
  attribute C_HAS_FLT_TO_FIX of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_FLT_TO_FLT : integer;
  attribute C_HAS_FLT_TO_FLT of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_FMA : integer;
  attribute C_HAS_FMA of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_FMS : integer;
  attribute C_HAS_FMS of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_INVALID_OP : integer;
  attribute C_HAS_INVALID_OP of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_LOGARITHM : integer;
  attribute C_HAS_LOGARITHM of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_MULTIPLY : integer;
  attribute C_HAS_MULTIPLY of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_OPERATION : integer;
  attribute C_HAS_OPERATION of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_OPERATION_TLAST : integer;
  attribute C_HAS_OPERATION_TLAST of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_OPERATION_TUSER : integer;
  attribute C_HAS_OPERATION_TUSER of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_RECIP : integer;
  attribute C_HAS_RECIP of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_RECIP_SQRT : integer;
  attribute C_HAS_RECIP_SQRT of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_RESULT_TLAST : integer;
  attribute C_HAS_RESULT_TLAST of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_RESULT_TUSER : integer;
  attribute C_HAS_RESULT_TUSER of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_SQRT : integer;
  attribute C_HAS_SQRT of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_SUBTRACT : integer;
  attribute C_HAS_SUBTRACT of fp16_sub_floating_point_v7_1_7_viv : entity is 1;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of fp16_sub_floating_point_v7_1_7_viv : entity is 4;
  attribute C_MULT_USAGE : integer;
  attribute C_MULT_USAGE of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_OPERATION_TDATA_WIDTH : integer;
  attribute C_OPERATION_TDATA_WIDTH of fp16_sub_floating_point_v7_1_7_viv : entity is 8;
  attribute C_OPERATION_TUSER_WIDTH : integer;
  attribute C_OPERATION_TUSER_WIDTH of fp16_sub_floating_point_v7_1_7_viv : entity is 1;
  attribute C_OPTIMIZATION : integer;
  attribute C_OPTIMIZATION of fp16_sub_floating_point_v7_1_7_viv : entity is 1;
  attribute C_RATE : integer;
  attribute C_RATE of fp16_sub_floating_point_v7_1_7_viv : entity is 1;
  attribute C_RESULT_FRACTION_WIDTH : integer;
  attribute C_RESULT_FRACTION_WIDTH of fp16_sub_floating_point_v7_1_7_viv : entity is 17;
  attribute C_RESULT_TDATA_WIDTH : integer;
  attribute C_RESULT_TDATA_WIDTH of fp16_sub_floating_point_v7_1_7_viv : entity is 24;
  attribute C_RESULT_TUSER_WIDTH : integer;
  attribute C_RESULT_TUSER_WIDTH of fp16_sub_floating_point_v7_1_7_viv : entity is 1;
  attribute C_RESULT_WIDTH : integer;
  attribute C_RESULT_WIDTH of fp16_sub_floating_point_v7_1_7_viv : entity is 24;
  attribute C_THROTTLE_SCHEME : integer;
  attribute C_THROTTLE_SCHEME of fp16_sub_floating_point_v7_1_7_viv : entity is 3;
  attribute C_TLAST_RESOLUTION : integer;
  attribute C_TLAST_RESOLUTION of fp16_sub_floating_point_v7_1_7_viv : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of fp16_sub_floating_point_v7_1_7_viv : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_floating_point_v7_1_7_viv : entity is "floating_point_v7_1_7_viv";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fp16_sub_floating_point_v7_1_7_viv : entity is "yes";
end fp16_sub_floating_point_v7_1_7_viv;

architecture STRUCTURE of fp16_sub_floating_point_v7_1_7_viv is
  signal \<const0>\ : STD_LOGIC;
begin
  m_axis_result_tlast <= \<const0>\;
  m_axis_result_tuser(0) <= \<const0>\;
  s_axis_a_tready <= \<const0>\;
  s_axis_b_tready <= \<const0>\;
  s_axis_c_tready <= \<const0>\;
  s_axis_operation_tready <= \<const0>\;
\ADDSUB_OP.ADDSUB\: entity work.fp16_sub_flt_add
     port map (
      aclk => aclk,
      m_axis_result_tdata(23 downto 0) => m_axis_result_tdata(23 downto 0),
      s_axis_a_tdata(23 downto 0) => s_axis_a_tdata(23 downto 0),
      s_axis_b_tdata(23 downto 0) => s_axis_b_tdata(23 downto 0)
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_nd_to_rdy: entity work.fp16_sub_xbip_pipe_v3_0_5_viv
     port map (
      aclk => aclk,
      m_axis_result_tvalid => m_axis_result_tvalid,
      s_axis_a_tvalid => s_axis_a_tvalid,
      s_axis_b_tvalid => s_axis_b_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_sub_floating_point_v7_1_7 is
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
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_result_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_result_tlast : out STD_LOGIC
  );
  attribute C_ACCUM_INPUT_MSB : integer;
  attribute C_ACCUM_INPUT_MSB of fp16_sub_floating_point_v7_1_7 : entity is 31;
  attribute C_ACCUM_LSB : integer;
  attribute C_ACCUM_LSB of fp16_sub_floating_point_v7_1_7 : entity is -31;
  attribute C_ACCUM_MSB : integer;
  attribute C_ACCUM_MSB of fp16_sub_floating_point_v7_1_7 : entity is 32;
  attribute C_A_FRACTION_WIDTH : integer;
  attribute C_A_FRACTION_WIDTH of fp16_sub_floating_point_v7_1_7 : entity is 17;
  attribute C_A_TDATA_WIDTH : integer;
  attribute C_A_TDATA_WIDTH of fp16_sub_floating_point_v7_1_7 : entity is 24;
  attribute C_A_TUSER_WIDTH : integer;
  attribute C_A_TUSER_WIDTH of fp16_sub_floating_point_v7_1_7 : entity is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of fp16_sub_floating_point_v7_1_7 : entity is 24;
  attribute C_BRAM_USAGE : integer;
  attribute C_BRAM_USAGE of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_B_FRACTION_WIDTH : integer;
  attribute C_B_FRACTION_WIDTH of fp16_sub_floating_point_v7_1_7 : entity is 17;
  attribute C_B_TDATA_WIDTH : integer;
  attribute C_B_TDATA_WIDTH of fp16_sub_floating_point_v7_1_7 : entity is 24;
  attribute C_B_TUSER_WIDTH : integer;
  attribute C_B_TUSER_WIDTH of fp16_sub_floating_point_v7_1_7 : entity is 1;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of fp16_sub_floating_point_v7_1_7 : entity is 24;
  attribute C_COMPARE_OPERATION : integer;
  attribute C_COMPARE_OPERATION of fp16_sub_floating_point_v7_1_7 : entity is 8;
  attribute C_C_FRACTION_WIDTH : integer;
  attribute C_C_FRACTION_WIDTH of fp16_sub_floating_point_v7_1_7 : entity is 17;
  attribute C_C_TDATA_WIDTH : integer;
  attribute C_C_TDATA_WIDTH of fp16_sub_floating_point_v7_1_7 : entity is 24;
  attribute C_C_TUSER_WIDTH : integer;
  attribute C_C_TUSER_WIDTH of fp16_sub_floating_point_v7_1_7 : entity is 1;
  attribute C_C_WIDTH : integer;
  attribute C_C_WIDTH of fp16_sub_floating_point_v7_1_7 : entity is 24;
  attribute C_FIXED_DATA_UNSIGNED : integer;
  attribute C_FIXED_DATA_UNSIGNED of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ABSOLUTE : integer;
  attribute C_HAS_ABSOLUTE of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ACCUMULATOR_A : integer;
  attribute C_HAS_ACCUMULATOR_A of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ACCUMULATOR_S : integer;
  attribute C_HAS_ACCUMULATOR_S of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW : integer;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ACCUM_OVERFLOW : integer;
  attribute C_HAS_ACCUM_OVERFLOW of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ACLKEN : integer;
  attribute C_HAS_ACLKEN of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ADD : integer;
  attribute C_HAS_ADD of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ARESETN : integer;
  attribute C_HAS_ARESETN of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_A_TLAST : integer;
  attribute C_HAS_A_TLAST of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_A_TUSER : integer;
  attribute C_HAS_A_TUSER of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_B : integer;
  attribute C_HAS_B of fp16_sub_floating_point_v7_1_7 : entity is 1;
  attribute C_HAS_B_TLAST : integer;
  attribute C_HAS_B_TLAST of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_B_TUSER : integer;
  attribute C_HAS_B_TUSER of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_C : integer;
  attribute C_HAS_C of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_COMPARE : integer;
  attribute C_HAS_COMPARE of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_C_TLAST : integer;
  attribute C_HAS_C_TLAST of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_C_TUSER : integer;
  attribute C_HAS_C_TUSER of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_DIVIDE : integer;
  attribute C_HAS_DIVIDE of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_DIVIDE_BY_ZERO : integer;
  attribute C_HAS_DIVIDE_BY_ZERO of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_EXPONENTIAL : integer;
  attribute C_HAS_EXPONENTIAL of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_FIX_TO_FLT : integer;
  attribute C_HAS_FIX_TO_FLT of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_FLT_TO_FIX : integer;
  attribute C_HAS_FLT_TO_FIX of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_FLT_TO_FLT : integer;
  attribute C_HAS_FLT_TO_FLT of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_FMA : integer;
  attribute C_HAS_FMA of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_FMS : integer;
  attribute C_HAS_FMS of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_INVALID_OP : integer;
  attribute C_HAS_INVALID_OP of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_LOGARITHM : integer;
  attribute C_HAS_LOGARITHM of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_MULTIPLY : integer;
  attribute C_HAS_MULTIPLY of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_OPERATION : integer;
  attribute C_HAS_OPERATION of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_OPERATION_TLAST : integer;
  attribute C_HAS_OPERATION_TLAST of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_OPERATION_TUSER : integer;
  attribute C_HAS_OPERATION_TUSER of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_RECIP : integer;
  attribute C_HAS_RECIP of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_RECIP_SQRT : integer;
  attribute C_HAS_RECIP_SQRT of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_RESULT_TLAST : integer;
  attribute C_HAS_RESULT_TLAST of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_RESULT_TUSER : integer;
  attribute C_HAS_RESULT_TUSER of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_SQRT : integer;
  attribute C_HAS_SQRT of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_SUBTRACT : integer;
  attribute C_HAS_SUBTRACT of fp16_sub_floating_point_v7_1_7 : entity is 1;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of fp16_sub_floating_point_v7_1_7 : entity is 4;
  attribute C_MULT_USAGE : integer;
  attribute C_MULT_USAGE of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_OPERATION_TDATA_WIDTH : integer;
  attribute C_OPERATION_TDATA_WIDTH of fp16_sub_floating_point_v7_1_7 : entity is 8;
  attribute C_OPERATION_TUSER_WIDTH : integer;
  attribute C_OPERATION_TUSER_WIDTH of fp16_sub_floating_point_v7_1_7 : entity is 1;
  attribute C_OPTIMIZATION : integer;
  attribute C_OPTIMIZATION of fp16_sub_floating_point_v7_1_7 : entity is 1;
  attribute C_RATE : integer;
  attribute C_RATE of fp16_sub_floating_point_v7_1_7 : entity is 1;
  attribute C_RESULT_FRACTION_WIDTH : integer;
  attribute C_RESULT_FRACTION_WIDTH of fp16_sub_floating_point_v7_1_7 : entity is 17;
  attribute C_RESULT_TDATA_WIDTH : integer;
  attribute C_RESULT_TDATA_WIDTH of fp16_sub_floating_point_v7_1_7 : entity is 24;
  attribute C_RESULT_TUSER_WIDTH : integer;
  attribute C_RESULT_TUSER_WIDTH of fp16_sub_floating_point_v7_1_7 : entity is 1;
  attribute C_RESULT_WIDTH : integer;
  attribute C_RESULT_WIDTH of fp16_sub_floating_point_v7_1_7 : entity is 24;
  attribute C_THROTTLE_SCHEME : integer;
  attribute C_THROTTLE_SCHEME of fp16_sub_floating_point_v7_1_7 : entity is 3;
  attribute C_TLAST_RESOLUTION : integer;
  attribute C_TLAST_RESOLUTION of fp16_sub_floating_point_v7_1_7 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of fp16_sub_floating_point_v7_1_7 : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_sub_floating_point_v7_1_7 : entity is "floating_point_v7_1_7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fp16_sub_floating_point_v7_1_7 : entity is "yes";
end fp16_sub_floating_point_v7_1_7;

architecture STRUCTURE of fp16_sub_floating_point_v7_1_7 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal NLW_i_synth_m_axis_result_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_s_axis_a_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_s_axis_b_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_s_axis_c_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_s_axis_operation_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_i_synth_m_axis_result_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_ACCUM_INPUT_MSB of i_synth : label is 31;
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
  attribute C_HAS_B of i_synth : label is 1;
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
  attribute C_HAS_SUBTRACT of i_synth : label is 1;
  attribute C_HAS_UNDERFLOW of i_synth : label is 0;
  attribute C_LATENCY of i_synth : label is 4;
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
i_synth: entity work.fp16_sub_floating_point_v7_1_7_viv
     port map (
      aclk => aclk,
      aclken => '0',
      aresetn => '0',
      m_axis_result_tdata(23 downto 0) => m_axis_result_tdata(23 downto 0),
      m_axis_result_tlast => NLW_i_synth_m_axis_result_tlast_UNCONNECTED,
      m_axis_result_tready => '0',
      m_axis_result_tuser(0) => NLW_i_synth_m_axis_result_tuser_UNCONNECTED(0),
      m_axis_result_tvalid => m_axis_result_tvalid,
      s_axis_a_tdata(23 downto 0) => s_axis_a_tdata(23 downto 0),
      s_axis_a_tlast => '0',
      s_axis_a_tready => NLW_i_synth_s_axis_a_tready_UNCONNECTED,
      s_axis_a_tuser(0) => '0',
      s_axis_a_tvalid => s_axis_a_tvalid,
      s_axis_b_tdata(23 downto 0) => s_axis_b_tdata(23 downto 0),
      s_axis_b_tlast => '0',
      s_axis_b_tready => NLW_i_synth_s_axis_b_tready_UNCONNECTED,
      s_axis_b_tuser(0) => '0',
      s_axis_b_tvalid => s_axis_b_tvalid,
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
entity fp16_sub is
  port (
    aclk : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_b_tvalid : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_result_tvalid : out STD_LOGIC;
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fp16_sub : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fp16_sub : entity is "fp16_sub,floating_point_v7_1_7,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fp16_sub : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fp16_sub : entity is "floating_point_v7_1_7,Vivado 2018.3";
end fp16_sub;

architecture STRUCTURE of fp16_sub is
  signal NLW_U0_m_axis_result_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_a_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_b_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_c_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_operation_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_result_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_ACCUM_INPUT_MSB : integer;
  attribute C_ACCUM_INPUT_MSB of U0 : label is 31;
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
  attribute C_HAS_B of U0 : label is 1;
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
  attribute C_HAS_SUBTRACT of U0 : label is 1;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 4;
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
  attribute x_interface_parameter of s_axis_a_tvalid : signal is "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_b_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_B TVALID";
  attribute x_interface_parameter of s_axis_b_tvalid : signal is "XIL_INTERFACENAME S_AXIS_B, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_result_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA";
  attribute x_interface_info of s_axis_a_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA";
  attribute x_interface_info of s_axis_b_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_B TDATA";
begin
U0: entity work.fp16_sub_floating_point_v7_1_7
     port map (
      aclk => aclk,
      aclken => '1',
      aresetn => '1',
      m_axis_result_tdata(23 downto 0) => m_axis_result_tdata(23 downto 0),
      m_axis_result_tlast => NLW_U0_m_axis_result_tlast_UNCONNECTED,
      m_axis_result_tready => '0',
      m_axis_result_tuser(0) => NLW_U0_m_axis_result_tuser_UNCONNECTED(0),
      m_axis_result_tvalid => m_axis_result_tvalid,
      s_axis_a_tdata(23 downto 0) => s_axis_a_tdata(23 downto 0),
      s_axis_a_tlast => '0',
      s_axis_a_tready => NLW_U0_s_axis_a_tready_UNCONNECTED,
      s_axis_a_tuser(0) => '0',
      s_axis_a_tvalid => s_axis_a_tvalid,
      s_axis_b_tdata(23 downto 0) => s_axis_b_tdata(23 downto 0),
      s_axis_b_tlast => '0',
      s_axis_b_tready => NLW_U0_s_axis_b_tready_UNCONNECTED,
      s_axis_b_tuser(0) => '0',
      s_axis_b_tvalid => s_axis_b_tvalid,
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
