-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Aug 12 16:06:08 2024
-- Host        : aic-ts running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/norm/fp16_mult/fp16_mult_sim_netlist.vhdl
-- Design      : fp16_mult
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z100ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_mult_carry_chain is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_mult_carry_chain : entity is "carry_chain";
end fp16_mult_carry_chain;

architecture STRUCTURE of fp16_mult_carry_chain is
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal a_xor_b_ip : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal exp_sig_7 : STD_LOGIC;
  signal \opt_has_pipe.first_q[2]_i_2_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[3]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
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
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[0]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \opt_has_pipe.first_q[2]_i_1\ : label is "soft_lutpair0";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
\CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '1',
      DI(3 downto 0) => s_axis_b_tdata(3 downto 0),
      O(3 downto 0) => \^q\(3 downto 0),
      S(3 downto 0) => a_xor_b_ip(3 downto 0)
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_b_tdata(0),
      I1 => s_axis_a_tdata(0),
      O => a_xor_b_ip(0)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_b_tdata(1),
      I1 => s_axis_a_tdata(1),
      O => a_xor_b_ip(1)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_b_tdata(2),
      I1 => s_axis_a_tdata(2),
      O => a_xor_b_ip(2)
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_b_tdata(3),
      I1 => s_axis_a_tdata(3),
      O => a_xor_b_ip(3)
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => exp_sig_7,
      CO(1) => \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\(3),
      DI(2 downto 0) => s_axis_b_tdata(6 downto 4),
      O(3) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3),
      O(2 downto 0) => \^q\(6 downto 4),
      S(3) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\(3),
      S(2 downto 0) => a_xor_b_ip(6 downto 4)
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_b_tdata(4),
      I1 => s_axis_a_tdata(4),
      O => a_xor_b_ip(4)
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_b_tdata(5),
      I1 => s_axis_a_tdata(5),
      O => a_xor_b_ip(5)
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_b_tdata(6),
      I1 => s_axis_a_tdata(6),
      O => a_xor_b_ip(6)
    );
\opt_has_pipe.first_q[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF008080"
    )
        port map (
      I0 => \opt_has_pipe.first_q[2]_i_2_n_0\,
      I1 => \^q\(5),
      I2 => \^q\(0),
      I3 => exp_sig_7,
      I4 => \^q\(6),
      O => D(0)
    );
\opt_has_pipe.first_q[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => exp_sig_7,
      I1 => \^q\(6),
      O => D(1)
    );
\opt_has_pipe.first_q[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^q\(5),
      I1 => \opt_has_pipe.first_q[2]_i_2_n_0\,
      I2 => \^q\(6),
      I3 => \^q\(0),
      O => D(2)
    );
\opt_has_pipe.first_q[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => exp_sig_7,
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \^q\(4),
      O => \opt_has_pipe.first_q[2]_i_2_n_0\
    );
\opt_has_pipe.first_q[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(5),
      I1 => \opt_has_pipe.first_q[3]_i_2_n_0\,
      I2 => \^q\(0),
      O => D(3)
    );
\opt_has_pipe.first_q[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => exp_sig_7,
      I5 => \^q\(6),
      O => \opt_has_pipe.first_q[3]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_mult_carry_chain__parameterized0\ is
  port (
    \s_axis_a_tdata[22]\ : out STD_LOGIC;
    A_EQ_VALUE : out STD_LOGIC;
    p_6_in : out STD_LOGIC;
    a_exp_flt_all_zero_int : in STD_LOGIC;
    b_exp_flt_all_zero_int : in STD_LOGIC;
    b_exp_flt_all_one_int : in STD_LOGIC;
    a_exp_flt_all_one_int : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_0\ : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    A : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_mult_carry_chain__parameterized0\ : entity is "carry_chain";
end \fp16_mult_carry_chain__parameterized0\;

architecture STRUCTURE of \fp16_mult_carry_chain__parameterized0\ is
  signal \^a_eq_value\ : STD_LOGIC;
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
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
  A_EQ_VALUE <= \^a_eq_value\;
\CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => \^a_eq_value\,
      CO(1) => \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '1',
      DI(3) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\(3),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\(3),
      S(2 downto 0) => A(2 downto 0)
    );
\opt_has_pipe.first_q[0]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EC0CA0000000A000"
    )
        port map (
      I0 => a_exp_flt_all_zero_int,
      I1 => b_exp_flt_all_zero_int,
      I2 => b_exp_flt_all_one_int,
      I3 => \^a_eq_value\,
      I4 => a_exp_flt_all_one_int,
      I5 => \opt_has_pipe.first_q_reg[0]\,
      O => \s_axis_a_tdata[22]\
    );
\opt_has_pipe.first_q[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg[0]_0\,
      I1 => s_axis_b_tdata(1),
      I2 => s_axis_b_tdata(0),
      I3 => s_axis_b_tdata(2),
      I4 => \^a_eq_value\,
      O => p_6_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_mult_carry_chain__parameterized0_4\ is
  port (
    \s_axis_b_tdata[22]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    CARRYS_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    b_exp_flt_all_zero_int : in STD_LOGIC;
    a_exp_flt_all_zero_int : in STD_LOGIC;
    p_6_in : in STD_LOGIC;
    \prod_sign_ip__0\ : in STD_LOGIC;
    a_exp_flt_all_one_int : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    b_exp_flt_all_one_int : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.first_q_reg[0]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_1\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_2\ : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_mult_carry_chain__parameterized0_4\ : entity is "carry_chain";
end \fp16_mult_carry_chain__parameterized0_4\;

architecture STRUCTURE of \fp16_mult_carry_chain__parameterized0_4\ is
  signal \^carrys_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \a_or_b_is_nan_int__2\ : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
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
  CARRYS_OUT(0) <= \^carrys_out\(0);
\CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => \^carrys_out\(0),
      CO(1) => \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '1',
      DI(3) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\(3),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3) => \NLW_CHAIN_GEN[0].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\(3),
      S(2 downto 0) => A(2 downto 0)
    );
\opt_has_pipe.first_q[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000007770000"
    )
        port map (
      I0 => b_exp_flt_all_zero_int,
      I1 => p_7_in,
      I2 => a_exp_flt_all_zero_int,
      I3 => p_6_in,
      I4 => \prod_sign_ip__0\,
      I5 => \a_or_b_is_nan_int__2\,
      O => \s_axis_b_tdata[22]\
    );
\opt_has_pipe.first_q[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \opt_has_pipe.first_q_reg[0]\,
      I1 => s_axis_a_tdata(1),
      I2 => s_axis_a_tdata(0),
      I3 => s_axis_a_tdata(2),
      I4 => \^carrys_out\(0),
      O => p_7_in
    );
\opt_has_pipe.first_q[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01010101010101FF"
    )
        port map (
      I0 => \^carrys_out\(0),
      I1 => \opt_has_pipe.first_q_reg[0]_0\,
      I2 => \opt_has_pipe.first_q_reg[0]\,
      I3 => \opt_has_pipe.first_q_reg[1]\(0),
      I4 => \opt_has_pipe.first_q_reg[0]_1\,
      I5 => \opt_has_pipe.first_q_reg[0]_2\,
      O => \a_or_b_is_nan_int__2\
    );
\opt_has_pipe.first_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003300BB3033B088"
    )
        port map (
      I0 => \^carrys_out\(0),
      I1 => a_exp_flt_all_one_int,
      I2 => \opt_has_pipe.first_q_reg[1]\(0),
      I3 => b_exp_flt_all_one_int,
      I4 => b_exp_flt_all_zero_int,
      I5 => a_exp_flt_all_zero_int,
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_mult_carry_chain__parameterized1\ is
  port (
    CARRYS_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    lopt : out STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : in STD_LOGIC;
    lopt_3 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_mult_carry_chain__parameterized1\ : entity is "carry_chain";
end \fp16_mult_carry_chain__parameterized1\;

architecture STRUCTURE of \fp16_mult_carry_chain__parameterized1\ is
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
      CO(2) => CARRYS_OUT(0),
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
entity \fp16_mult_carry_chain__parameterized2\ is
  port (
    mant_op : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CARRYS_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RESULT_REG.NORMAL.mant_op_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CARRY_OUT : in STD_LOGIC;
    lopt : in STD_LOGIC;
    lopt_1 : out STD_LOGIC;
    lopt_2 : in STD_LOGIC;
    lopt_3 : out STD_LOGIC;
    lopt_4 : in STD_LOGIC;
    lopt_5 : in STD_LOGIC;
    lopt_6 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_mult_carry_chain__parameterized2\ : entity is "carry_chain";
end \fp16_mult_carry_chain__parameterized2\;

architecture STRUCTURE of \fp16_mult_carry_chain__parameterized2\ is
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
  signal \^mant_op\ : STD_LOGIC_VECTOR ( 7 downto 0 );
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
  \^mant_op\(0) <= lopt_2;
  lopt_1 <= \<const0>\;
  lopt_3 <= \^lopt_2\;
  lopt_6 <= \^lopt_5\;
  mant_op(7 downto 0) <= \^mant_op\(7 downto 0);
\CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^mant_op\(4 downto 1),
      S(3 downto 0) => \RESULT_REG.NORMAL.mant_op_reg[7]\(4 downto 1)
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \^lopt_2\,
      CO(2) => CARRYS_OUT(0),
      CO(1) => \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3) => \^lopt_3\,
      DI(2 downto 0) => B"000",
      O(3) => \^lopt_5\,
      O(2 downto 0) => \^mant_op\(7 downto 5),
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
entity \fp16_mult_carry_chain__parameterized3\ is
  port (
    mant_op : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CARRYS_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RESULT_REG.NORMAL.mant_op_reg[15]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CARRY_IN : in STD_LOGIC;
    sum_rnd2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    lopt : in STD_LOGIC;
    lopt_1 : out STD_LOGIC;
    lopt_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_mult_carry_chain__parameterized3\ : entity is "carry_chain";
end \fp16_mult_carry_chain__parameterized3\;

architecture STRUCTURE of \fp16_mult_carry_chain__parameterized3\ is
  signal \<const0>\ : STD_LOGIC;
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \^mant_op\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
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
  \^mant_op\(0) <= lopt_2;
  lopt_1 <= \<const0>\;
  mant_op(7 downto 0) <= \^mant_op\(7 downto 0);
\CHAIN_GEN[1].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\,
      CO(3) => \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^mant_op\(4 downto 1),
      S(3 downto 0) => \RESULT_REG.NORMAL.mant_op_reg[15]\(4 downto 1)
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\,
      CO(3) => CARRYS_OUT(0),
      CO(2) => \CHAIN_GEN[7].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[6].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"1000",
      O(3) => \NLW_CHAIN_GEN[5].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3),
      O(2 downto 0) => \^mant_op\(7 downto 5),
      S(3) => sum_rnd2(0),
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
entity \fp16_mult_carry_chain__parameterized4\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \RESULT_REG.NORMAL.exp_op_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    CARRY_OUT : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_mult_carry_chain__parameterized4\ : entity is "carry_chain";
end \fp16_mult_carry_chain__parameterized4\;

architecture STRUCTURE of \fp16_mult_carry_chain__parameterized4\ is
  signal \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\ : STD_LOGIC;
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
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
      CI => CARRY_OUT,
      CO(3) => \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\,
      CO(2) => \CHAIN_GEN[2].C_MUX.CARRY_MUX_n_0\,
      CO(1) => \CHAIN_GEN[1].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[0].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => Q(3 downto 0),
      S(3 downto 0) => \RESULT_REG.NORMAL.exp_op_reg[6]\(3 downto 0)
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \CHAIN_GEN[3].C_MUX.CARRY_MUX_n_0\,
      CO(3 downto 2) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CHAIN_GEN[5].C_MUX.CARRY_MUX_n_0\,
      CO(0) => \CHAIN_GEN[4].C_MUX.CARRY_MUX_n_0\,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"00",
      O(3) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_O_UNCONNECTED\(3),
      O(2 downto 0) => Q(6 downto 4),
      S(3) => \NLW_CHAIN_GEN[4].C_MUX.CARRY_MUX_CARRY4_S_UNCONNECTED\(3),
      S(2 downto 0) => \RESULT_REG.NORMAL.exp_op_reg[6]\(6 downto 4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_mult_dsp is
  port (
    ZERO_DETECT : out STD_LOGIC_VECTOR ( 0 to 0 );
    P : out STD_LOGIC_VECTOR ( 18 downto 0 );
    CLK : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_mult_dsp : entity is "dsp";
end fp16_mult_dsp;

architecture STRUCTURE of fp16_mult_dsp is
  signal p_1_out : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \pi[0,0]1_out\ : STD_LOGIC_VECTOR ( 42 downto 34 );
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_106\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_107\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_108\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_109\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_110\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_111\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_112\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_113\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_114\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_115\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_116\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_117\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_118\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_119\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_120\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_121\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_122\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_123\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_124\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_125\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_126\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_127\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_128\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_129\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_130\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_131\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_132\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_133\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_134\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_135\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_136\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_137\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_138\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_139\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_140\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_141\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_142\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_143\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_144\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_145\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_146\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_147\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_148\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_149\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_150\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_151\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_152\ : STD_LOGIC;
  signal \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_153\ : STD_LOGIC;
  signal \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 43 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1\ : label is "{SYNTH-12 {cell *THIS*}}";
  attribute box_type : string;
  attribute box_type of \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1\ : label is "PRIMITIVE";
begin
\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      IS_ALUMODE_INVERTED => B"0000",
      IS_CARRYIN_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_INMODE_INVERTED => B"00000",
      IS_OPMODE_INVERTED => B"0000000",
      MASK => X"FFFFFFFF8000",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000001",
      A(15 downto 0) => A(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 16) => B"01",
      B(15 downto 0) => B(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '1',
      CLK => CLK,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_OVERFLOW_UNCONNECTED\,
      P(47 downto 43) => \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_P_UNCONNECTED\(47 downto 43),
      P(42 downto 34) => \pi[0,0]1_out\(42 downto 34),
      P(33 downto 15) => P(18 downto 0),
      P(14 downto 0) => p_1_out(14 downto 0),
      PATTERNBDETECT => \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => ZERO_DETECT(0),
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_106\,
      PCOUT(46) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_107\,
      PCOUT(45) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_108\,
      PCOUT(44) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_109\,
      PCOUT(43) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_110\,
      PCOUT(42) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_111\,
      PCOUT(41) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_112\,
      PCOUT(40) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_113\,
      PCOUT(39) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_114\,
      PCOUT(38) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_115\,
      PCOUT(37) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_116\,
      PCOUT(36) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_117\,
      PCOUT(35) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_118\,
      PCOUT(34) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_119\,
      PCOUT(33) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_120\,
      PCOUT(32) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_121\,
      PCOUT(31) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_122\,
      PCOUT(30) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_123\,
      PCOUT(29) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_124\,
      PCOUT(28) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_125\,
      PCOUT(27) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_126\,
      PCOUT(26) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_127\,
      PCOUT(25) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_128\,
      PCOUT(24) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_129\,
      PCOUT(23) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_130\,
      PCOUT(22) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_131\,
      PCOUT(21) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_132\,
      PCOUT(20) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_133\,
      PCOUT(19) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_134\,
      PCOUT(18) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_135\,
      PCOUT(17) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_136\,
      PCOUT(16) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_137\,
      PCOUT(15) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_138\,
      PCOUT(14) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_139\,
      PCOUT(13) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_140\,
      PCOUT(12) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_141\,
      PCOUT(11) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_142\,
      PCOUT(10) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_143\,
      PCOUT(9) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_144\,
      PCOUT(8) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_145\,
      PCOUT(7) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_146\,
      PCOUT(6) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_147\,
      PCOUT(5) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_148\,
      PCOUT(4) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_149\,
      PCOUT(3) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_150\,
      PCOUT(2) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_151\,
      PCOUT(1) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_152\,
      PCOUT(0) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_UNDERFLOW_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_mult_flt_dec_op_lat is
  port (
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    state_op : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mant_op : in STD_LOGIC_VECTOR ( 14 downto 0 );
    aclk : in STD_LOGIC;
    \RESULT_REG.NORMAL.mant_op_reg[15]_0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    state_int_up : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_mult_flt_dec_op_lat : entity is "flt_dec_op_lat";
end fp16_mult_flt_dec_op_lat;

architecture STRUCTURE of fp16_mult_flt_dec_op_lat is
  signal \RESULT_REG.NORMAL.exp_op[0]_i_1_n_0\ : STD_LOGIC;
  signal \RESULT_REG.NORMAL.exp_op[1]_i_1_n_0\ : STD_LOGIC;
  signal \RESULT_REG.NORMAL.exp_op[2]_i_1_n_0\ : STD_LOGIC;
  signal \RESULT_REG.NORMAL.exp_op[3]_i_1_n_0\ : STD_LOGIC;
  signal \RESULT_REG.NORMAL.exp_op[4]_i_1_n_0\ : STD_LOGIC;
  signal \RESULT_REG.NORMAL.exp_op[5]_i_1_n_0\ : STD_LOGIC;
  signal \RESULT_REG.NORMAL.exp_op[6]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RESULT_REG.NORMAL.exp_op[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \RESULT_REG.NORMAL.exp_op[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \RESULT_REG.NORMAL.exp_op[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \RESULT_REG.NORMAL.exp_op[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \RESULT_REG.NORMAL.exp_op[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \RESULT_REG.NORMAL.exp_op[6]_i_2\ : label is "soft_lutpair1";
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
\RESULT_REG.NORMAL.exp_op[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => state_int_up(0),
      O => \RESULT_REG.NORMAL.exp_op[0]_i_1_n_0\
    );
\RESULT_REG.NORMAL.exp_op[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(1),
      I1 => state_int_up(0),
      O => \RESULT_REG.NORMAL.exp_op[1]_i_1_n_0\
    );
\RESULT_REG.NORMAL.exp_op[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(2),
      I1 => state_int_up(0),
      O => \RESULT_REG.NORMAL.exp_op[2]_i_1_n_0\
    );
\RESULT_REG.NORMAL.exp_op[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(3),
      I1 => state_int_up(0),
      O => \RESULT_REG.NORMAL.exp_op[3]_i_1_n_0\
    );
\RESULT_REG.NORMAL.exp_op[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(4),
      I1 => state_int_up(0),
      O => \RESULT_REG.NORMAL.exp_op[4]_i_1_n_0\
    );
\RESULT_REG.NORMAL.exp_op[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(5),
      I1 => state_int_up(0),
      O => \RESULT_REG.NORMAL.exp_op[5]_i_1_n_0\
    );
\RESULT_REG.NORMAL.exp_op[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(6),
      I1 => state_int_up(0),
      O => \RESULT_REG.NORMAL.exp_op[6]_i_2_n_0\
    );
\RESULT_REG.NORMAL.exp_op_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \RESULT_REG.NORMAL.exp_op[0]_i_1_n_0\,
      Q => m_axis_result_tdata(16),
      R => state_op(0)
    );
\RESULT_REG.NORMAL.exp_op_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \RESULT_REG.NORMAL.exp_op[1]_i_1_n_0\,
      Q => m_axis_result_tdata(17),
      R => state_op(0)
    );
\RESULT_REG.NORMAL.exp_op_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \RESULT_REG.NORMAL.exp_op[2]_i_1_n_0\,
      Q => m_axis_result_tdata(18),
      R => state_op(0)
    );
\RESULT_REG.NORMAL.exp_op_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \RESULT_REG.NORMAL.exp_op[3]_i_1_n_0\,
      Q => m_axis_result_tdata(19),
      R => state_op(0)
    );
\RESULT_REG.NORMAL.exp_op_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \RESULT_REG.NORMAL.exp_op[4]_i_1_n_0\,
      Q => m_axis_result_tdata(20),
      R => state_op(0)
    );
\RESULT_REG.NORMAL.exp_op_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \RESULT_REG.NORMAL.exp_op[5]_i_1_n_0\,
      Q => m_axis_result_tdata(21),
      R => state_op(0)
    );
\RESULT_REG.NORMAL.exp_op_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \RESULT_REG.NORMAL.exp_op[6]_i_2_n_0\,
      Q => m_axis_result_tdata(22),
      R => state_op(0)
    );
\RESULT_REG.NORMAL.mant_op_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => mant_op(0),
      Q => m_axis_result_tdata(0),
      R => state_op(1)
    );
\RESULT_REG.NORMAL.mant_op_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => mant_op(10),
      Q => m_axis_result_tdata(10),
      R => state_op(1)
    );
\RESULT_REG.NORMAL.mant_op_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => mant_op(11),
      Q => m_axis_result_tdata(11),
      R => state_op(1)
    );
\RESULT_REG.NORMAL.mant_op_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => mant_op(12),
      Q => m_axis_result_tdata(12),
      R => state_op(1)
    );
\RESULT_REG.NORMAL.mant_op_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => mant_op(13),
      Q => m_axis_result_tdata(13),
      R => state_op(1)
    );
\RESULT_REG.NORMAL.mant_op_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => mant_op(14),
      Q => m_axis_result_tdata(14),
      R => state_op(1)
    );
\RESULT_REG.NORMAL.mant_op_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \RESULT_REG.NORMAL.mant_op_reg[15]_0\,
      Q => m_axis_result_tdata(15),
      R => '0'
    );
\RESULT_REG.NORMAL.mant_op_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => mant_op(1),
      Q => m_axis_result_tdata(1),
      R => state_op(1)
    );
\RESULT_REG.NORMAL.mant_op_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => mant_op(2),
      Q => m_axis_result_tdata(2),
      R => state_op(1)
    );
\RESULT_REG.NORMAL.mant_op_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => mant_op(3),
      Q => m_axis_result_tdata(3),
      R => state_op(1)
    );
\RESULT_REG.NORMAL.mant_op_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => mant_op(4),
      Q => m_axis_result_tdata(4),
      R => state_op(1)
    );
\RESULT_REG.NORMAL.mant_op_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => mant_op(5),
      Q => m_axis_result_tdata(5),
      R => state_op(1)
    );
\RESULT_REG.NORMAL.mant_op_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => mant_op(6),
      Q => m_axis_result_tdata(6),
      R => state_op(1)
    );
\RESULT_REG.NORMAL.mant_op_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => mant_op(7),
      Q => m_axis_result_tdata(7),
      R => state_op(1)
    );
\RESULT_REG.NORMAL.mant_op_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => mant_op(8),
      Q => m_axis_result_tdata(8),
      R => state_op(1)
    );
\RESULT_REG.NORMAL.mant_op_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => mant_op(9),
      Q => m_axis_result_tdata(9),
      R => state_op(1)
    );
\RESULT_REG.NORMAL.sign_op_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \out\,
      Q => m_axis_result_tdata(23),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_mult_xbip_pipe_v3_0_5_viv is
  port (
    m_axis_result_tvalid : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_a_tvalid : in STD_LOGIC;
    s_axis_b_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_mult_xbip_pipe_v3_0_5_viv : entity is "xbip_pipe_v3_0_5_viv";
end fp16_mult_xbip_pipe_v3_0_5_viv;

architecture STRUCTURE of fp16_mult_xbip_pipe_v3_0_5_viv is
  signal first_q : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  signal valid_transfer_in : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "yes";
begin
\opt_has_pipe.first_q[0]_i_1__1\: unisim.vcomponents.LUT2
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
\opt_has_pipe.i_pipe[2].pipe_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => first_q,
      Q => m_axis_result_tvalid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_mult_xbip_pipe_v3_0_5_viv__parameterized17\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \opt_has_pipe.first_q_reg[0]_0\ : out STD_LOGIC;
    state_op : out STD_LOGIC_VECTOR ( 0 to 0 );
    a_exp_flt_all_one_int : out STD_LOGIC;
    b_exp_flt_all_one_int : out STD_LOGIC;
    \RESULT_REG.NORMAL.mant_op_reg[15]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RESULT_REG.NORMAL.exp_op_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.first_q_reg[0]_1\ : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.first_q_reg[0]_2\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_mult_xbip_pipe_v3_0_5_viv__parameterized17\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_mult_xbip_pipe_v3_0_5_viv__parameterized17\;

architecture STRUCTURE of \fp16_mult_xbip_pipe_v3_0_5_viv__parameterized17\ is
  signal \^a_exp_flt_all_one_int\ : STD_LOGIC;
  signal \^b_exp_flt_all_one_int\ : STD_LOGIC;
  signal first_q : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  signal state_det : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "yes";
begin
  a_exp_flt_all_one_int <= \^a_exp_flt_all_one_int\;
  b_exp_flt_all_one_int <= \^b_exp_flt_all_one_int\;
  \out\(1 downto 0) <= first_q(1 downto 0);
\RESULT_REG.NORMAL.exp_op[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => first_q(1),
      I1 => \RESULT_REG.NORMAL.exp_op_reg[1]\(0),
      I2 => \RESULT_REG.NORMAL.exp_op_reg[1]\(1),
      I3 => first_q(0),
      O => state_op(0)
    );
\RESULT_REG.NORMAL.mant_op[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E0C"
    )
        port map (
      I0 => \RESULT_REG.NORMAL.mant_op_reg[15]\,
      I1 => first_q(0),
      I2 => first_q(1),
      I3 => Q(0),
      O => \opt_has_pipe.first_q_reg[0]_0\
    );
\opt_has_pipe.first_q[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^a_exp_flt_all_one_int\,
      I1 => \^b_exp_flt_all_one_int\,
      O => state_det(0)
    );
\opt_has_pipe.first_q[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s_axis_a_tdata(2),
      I1 => s_axis_a_tdata(0),
      I2 => s_axis_a_tdata(1),
      I3 => \opt_has_pipe.first_q_reg[0]_1\,
      O => \^a_exp_flt_all_one_int\
    );
\opt_has_pipe.first_q[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s_axis_b_tdata(2),
      I1 => s_axis_b_tdata(0),
      I2 => s_axis_b_tdata(1),
      I3 => \opt_has_pipe.first_q_reg[0]_2\,
      O => \^b_exp_flt_all_one_int\
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state_det(0),
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
      D => D(0),
      Q => first_q(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_mult_xbip_pipe_v3_0_5_viv__parameterized19\ is
  port (
    \out\ : out STD_LOGIC;
    \prod_sign_ip__0\ : out STD_LOGIC;
    \s_axis_a_tdata[18]\ : out STD_LOGIC;
    \s_axis_a_tdata[21]\ : out STD_LOGIC;
    \s_axis_b_tdata[18]\ : out STD_LOGIC;
    \s_axis_b_tdata[21]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_mult_xbip_pipe_v3_0_5_viv__parameterized19\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_mult_xbip_pipe_v3_0_5_viv__parameterized19\;

architecture STRUCTURE of \fp16_mult_xbip_pipe_v3_0_5_viv__parameterized19\ is
  signal first_q : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "yes";
begin
  \out\ <= first_q;
\opt_has_pipe.first_q[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_b_tdata(7),
      I1 => s_axis_a_tdata(7),
      O => \prod_sign_ip__0\
    );
\opt_has_pipe.first_q[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => s_axis_a_tdata(5),
      I1 => s_axis_a_tdata(4),
      I2 => s_axis_a_tdata(6),
      O => \s_axis_a_tdata[21]\
    );
\opt_has_pipe.first_q[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => s_axis_b_tdata(5),
      I1 => s_axis_b_tdata(4),
      I2 => s_axis_b_tdata(6),
      O => \s_axis_b_tdata[21]\
    );
\opt_has_pipe.first_q[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s_axis_a_tdata(2),
      I1 => s_axis_a_tdata(3),
      I2 => s_axis_a_tdata(0),
      I3 => s_axis_a_tdata(1),
      O => \s_axis_a_tdata[18]\
    );
\opt_has_pipe.first_q[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => s_axis_b_tdata(2),
      I1 => s_axis_b_tdata(3),
      I2 => s_axis_b_tdata(0),
      I3 => s_axis_b_tdata(1),
      O => \s_axis_b_tdata[18]\
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[0]_0\,
      Q => first_q,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_mult_xbip_pipe_v3_0_5_viv__parameterized19_2\ is
  port (
    a_exp_flt_all_zero_int : out STD_LOGIC;
    b_exp_flt_all_zero_int : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_mult_xbip_pipe_v3_0_5_viv__parameterized19_2\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_mult_xbip_pipe_v3_0_5_viv__parameterized19_2\;

architecture STRUCTURE of \fp16_mult_xbip_pipe_v3_0_5_viv__parameterized19_2\ is
  signal first_q : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  signal \opt_has_pipe.first_q[1]_i_8_n_0\ : STD_LOGIC;
  signal \opt_has_pipe.first_q[1]_i_9_n_0\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "yes";
begin
\opt_has_pipe.first_q[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_b_tdata(6),
      I1 => s_axis_b_tdata(4),
      I2 => s_axis_b_tdata(5),
      I3 => \opt_has_pipe.first_q[1]_i_8_n_0\,
      O => b_exp_flt_all_zero_int
    );
\opt_has_pipe.first_q[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_a_tdata(6),
      I1 => s_axis_a_tdata(4),
      I2 => s_axis_a_tdata(5),
      I3 => \opt_has_pipe.first_q[1]_i_9_n_0\,
      O => a_exp_flt_all_zero_int
    );
\opt_has_pipe.first_q[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axis_b_tdata(2),
      I1 => s_axis_b_tdata(3),
      I2 => s_axis_b_tdata(0),
      I3 => s_axis_b_tdata(1),
      O => \opt_has_pipe.first_q[1]_i_8_n_0\
    );
\opt_has_pipe.first_q[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axis_a_tdata(2),
      I1 => s_axis_a_tdata(3),
      I2 => s_axis_a_tdata(0),
      I3 => s_axis_a_tdata(1),
      O => \opt_has_pipe.first_q[1]_i_9_n_0\
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \opt_has_pipe.first_q_reg[0]_0\,
      Q => first_q,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_mult_xbip_pipe_v3_0_5_viv__parameterized21\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \opt_has_pipe.first_q_reg[1]_0\ : out STD_LOGIC;
    state_int_up : out STD_LOGIC_VECTOR ( 0 to 0 );
    state_op : out STD_LOGIC_VECTOR ( 0 to 0 );
    P : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RESULT_REG.NORMAL.mant_op_reg[14]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_mult_xbip_pipe_v3_0_5_viv__parameterized21\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_mult_xbip_pipe_v3_0_5_viv__parameterized21\;

architecture STRUCTURE of \fp16_mult_xbip_pipe_v3_0_5_viv__parameterized21\ is
  signal \RESULT_REG.NORMAL.mant_op[14]_i_2_n_0\ : STD_LOGIC;
  signal first_q : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of first_q : signal is "true";
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[2]\ : label is "yes";
  attribute KEEP of \opt_has_pipe.first_q_reg[3]\ : label is "yes";
begin
  \out\(1) <= first_q(3);
  \out\(0) <= first_q(1);
\RESULT_REG.NORMAL.exp_op[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF11111000"
    )
        port map (
      I0 => first_q(1),
      I1 => \RESULT_REG.NORMAL.mant_op_reg[14]\(1),
      I2 => first_q(2),
      I3 => P(0),
      I4 => first_q(0),
      I5 => \RESULT_REG.NORMAL.mant_op_reg[14]\(0),
      O => state_int_up(0)
    );
\RESULT_REG.NORMAL.mant_op[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \RESULT_REG.NORMAL.mant_op[14]_i_2_n_0\,
      I1 => \RESULT_REG.NORMAL.mant_op_reg[14]\(0),
      O => state_op(0)
    );
\RESULT_REG.NORMAL.mant_op[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFAEE"
    )
        port map (
      I0 => first_q(1),
      I1 => first_q(3),
      I2 => first_q(2),
      I3 => P(0),
      I4 => \RESULT_REG.NORMAL.mant_op_reg[14]\(1),
      I5 => first_q(0),
      O => \RESULT_REG.NORMAL.mant_op[14]_i_2_n_0\
    );
\RESULT_REG.NORMAL.mant_op[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000511"
    )
        port map (
      I0 => first_q(1),
      I1 => first_q(3),
      I2 => first_q(2),
      I3 => P(0),
      I4 => \RESULT_REG.NORMAL.mant_op_reg[14]\(1),
      I5 => first_q(0),
      O => \opt_has_pipe.first_q_reg[1]_0\
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_mult_xbip_pipe_v3_0_5_viv__parameterized23\ is
  port (
    A : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_mult_xbip_pipe_v3_0_5_viv__parameterized23\ : entity is "xbip_pipe_v3_0_5_viv";
end \fp16_mult_xbip_pipe_v3_0_5_viv__parameterized23\;

architecture STRUCTURE of \fp16_mult_xbip_pipe_v3_0_5_viv__parameterized23\ is
  signal exp_op : STD_LOGIC_VECTOR ( 6 to 6 );
  attribute KEEP : string;
  attribute KEEP of \opt_has_pipe.first_q_reg[0]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[1]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[2]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[3]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[4]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[5]\ : label is "false";
  attribute KEEP of \opt_has_pipe.first_q_reg[6]\ : label is "false";
begin
\CHAIN_GEN[6].Q_XOR.SUM_XOR_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => exp_op(6),
      O => A(6)
    );
\opt_has_pipe.first_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => A(0),
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
      Q => A(1),
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
      Q => A(2),
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
      Q => A(3),
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
      Q => A(4),
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
      Q => A(5),
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
      Q => exp_op(6),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_mult_compare_eq_im is
  port (
    \s_axis_a_tdata[22]\ : out STD_LOGIC;
    A_EQ_VALUE : out STD_LOGIC;
    p_6_in : out STD_LOGIC;
    a_exp_flt_all_zero_int : in STD_LOGIC;
    b_exp_flt_all_zero_int : in STD_LOGIC;
    b_exp_flt_all_one_int : in STD_LOGIC;
    a_exp_flt_all_one_int : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_0\ : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_mult_compare_eq_im : entity is "compare_eq_im";
end fp16_mult_compare_eq_im;

architecture STRUCTURE of fp16_mult_compare_eq_im is
  signal chunk_det : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
CARRY_ZERO_DET: entity work.\fp16_mult_carry_chain__parameterized0\
     port map (
      A(2 downto 0) => chunk_det(2 downto 0),
      A_EQ_VALUE => A_EQ_VALUE,
      a_exp_flt_all_one_int => a_exp_flt_all_one_int,
      a_exp_flt_all_zero_int => a_exp_flt_all_zero_int,
      b_exp_flt_all_one_int => b_exp_flt_all_one_int,
      b_exp_flt_all_zero_int => b_exp_flt_all_zero_int,
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.first_q_reg[0]_0\ => \opt_has_pipe.first_q_reg[0]_0\,
      p_6_in => p_6_in,
      \s_axis_a_tdata[22]\ => \s_axis_a_tdata[22]\,
      s_axis_b_tdata(2 downto 0) => s_axis_b_tdata(18 downto 16)
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axis_b_tdata(0),
      I1 => s_axis_b_tdata(5),
      I2 => s_axis_b_tdata(3),
      I3 => s_axis_b_tdata(4),
      I4 => s_axis_b_tdata(1),
      I5 => s_axis_b_tdata(2),
      O => chunk_det(0)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axis_b_tdata(6),
      I1 => s_axis_b_tdata(11),
      I2 => s_axis_b_tdata(9),
      I3 => s_axis_b_tdata(10),
      I4 => s_axis_b_tdata(7),
      I5 => s_axis_b_tdata(8),
      O => chunk_det(1)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_b_tdata(12),
      I1 => s_axis_b_tdata(15),
      I2 => s_axis_b_tdata(13),
      I3 => s_axis_b_tdata(14),
      O => chunk_det(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_mult_compare_eq_im_3 is
  port (
    \s_axis_b_tdata[22]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    CARRY_OUT : out STD_LOGIC;
    b_exp_flt_all_zero_int : in STD_LOGIC;
    a_exp_flt_all_zero_int : in STD_LOGIC;
    p_6_in : in STD_LOGIC;
    \prod_sign_ip__0\ : in STD_LOGIC;
    a_exp_flt_all_one_int : in STD_LOGIC;
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 0 to 0 );
    b_exp_flt_all_one_int : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \opt_has_pipe.first_q_reg[0]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_1\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_mult_compare_eq_im_3 : entity is "compare_eq_im";
end fp16_mult_compare_eq_im_3;

architecture STRUCTURE of fp16_mult_compare_eq_im_3 is
  signal chunk_det : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
CARRY_ZERO_DET: entity work.\fp16_mult_carry_chain__parameterized0_4\
     port map (
      A(2 downto 0) => chunk_det(2 downto 0),
      CARRYS_OUT(0) => CARRY_OUT,
      D(0) => D(0),
      a_exp_flt_all_one_int => a_exp_flt_all_one_int,
      a_exp_flt_all_zero_int => a_exp_flt_all_zero_int,
      b_exp_flt_all_one_int => b_exp_flt_all_one_int,
      b_exp_flt_all_zero_int => b_exp_flt_all_zero_int,
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.first_q_reg[0]_0\ => \opt_has_pipe.first_q_reg[0]_0\,
      \opt_has_pipe.first_q_reg[0]_1\ => \opt_has_pipe.first_q_reg[0]_1\,
      \opt_has_pipe.first_q_reg[0]_2\ => \opt_has_pipe.first_q_reg[0]_2\,
      \opt_has_pipe.first_q_reg[1]\(0) => CARRYS_OUT(0),
      p_6_in => p_6_in,
      \prod_sign_ip__0\ => \prod_sign_ip__0\,
      s_axis_a_tdata(2 downto 0) => s_axis_a_tdata(18 downto 16),
      \s_axis_b_tdata[22]\ => \s_axis_b_tdata[22]\
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axis_a_tdata(0),
      I1 => s_axis_a_tdata(5),
      I2 => s_axis_a_tdata(3),
      I3 => s_axis_a_tdata(4),
      I4 => s_axis_a_tdata(1),
      I5 => s_axis_a_tdata(2),
      O => chunk_det(0)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axis_a_tdata(6),
      I1 => s_axis_a_tdata(11),
      I2 => s_axis_a_tdata(9),
      I3 => s_axis_a_tdata(10),
      I4 => s_axis_a_tdata(7),
      I5 => s_axis_a_tdata(8),
      O => chunk_det(1)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axis_a_tdata(12),
      I1 => s_axis_a_tdata(15),
      I2 => s_axis_a_tdata(13),
      I3 => s_axis_a_tdata(14),
      O => chunk_det(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_mult_delay__parameterized10\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \opt_has_pipe.first_q_reg[1]\ : out STD_LOGIC;
    state_int_up : out STD_LOGIC_VECTOR ( 0 to 0 );
    state_op : out STD_LOGIC_VECTOR ( 0 to 0 );
    P : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RESULT_REG.NORMAL.mant_op_reg[14]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_mult_delay__parameterized10\ : entity is "delay";
end \fp16_mult_delay__parameterized10\;

architecture STRUCTURE of \fp16_mult_delay__parameterized10\ is
begin
i_pipe: entity work.\fp16_mult_xbip_pipe_v3_0_5_viv__parameterized21\
     port map (
      D(3 downto 0) => D(3 downto 0),
      P(0) => P(0),
      \RESULT_REG.NORMAL.mant_op_reg[14]\(1 downto 0) => \RESULT_REG.NORMAL.mant_op_reg[14]\(1 downto 0),
      aclk => aclk,
      \opt_has_pipe.first_q_reg[1]_0\ => \opt_has_pipe.first_q_reg[1]\,
      \out\(1 downto 0) => \out\(1 downto 0),
      state_int_up(0) => state_int_up(0),
      state_op(0) => state_op(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_mult_delay__parameterized11\ is
  port (
    A : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_mult_delay__parameterized11\ : entity is "delay";
end \fp16_mult_delay__parameterized11\;

architecture STRUCTURE of \fp16_mult_delay__parameterized11\ is
begin
i_pipe: entity work.\fp16_mult_xbip_pipe_v3_0_5_viv__parameterized23\
     port map (
      A(6 downto 0) => A(6 downto 0),
      D(6 downto 0) => D(6 downto 0),
      aclk => aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_mult_delay__parameterized7\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \opt_has_pipe.first_q_reg[0]\ : out STD_LOGIC;
    state_op : out STD_LOGIC_VECTOR ( 0 to 0 );
    a_exp_flt_all_one_int : out STD_LOGIC;
    b_exp_flt_all_one_int : out STD_LOGIC;
    \RESULT_REG.NORMAL.mant_op_reg[15]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RESULT_REG.NORMAL.exp_op_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.first_q_reg[0]_0\ : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \opt_has_pipe.first_q_reg[0]_1\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_mult_delay__parameterized7\ : entity is "delay";
end \fp16_mult_delay__parameterized7\;

architecture STRUCTURE of \fp16_mult_delay__parameterized7\ is
begin
i_pipe: entity work.\fp16_mult_xbip_pipe_v3_0_5_viv__parameterized17\
     port map (
      D(0) => D(0),
      Q(0) => Q(0),
      \RESULT_REG.NORMAL.exp_op_reg[1]\(1 downto 0) => \RESULT_REG.NORMAL.exp_op_reg[1]\(1 downto 0),
      \RESULT_REG.NORMAL.mant_op_reg[15]\ => \RESULT_REG.NORMAL.mant_op_reg[15]\,
      a_exp_flt_all_one_int => a_exp_flt_all_one_int,
      aclk => aclk,
      b_exp_flt_all_one_int => b_exp_flt_all_one_int,
      \opt_has_pipe.first_q_reg[0]_0\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.first_q_reg[0]_1\ => \opt_has_pipe.first_q_reg[0]_0\,
      \opt_has_pipe.first_q_reg[0]_2\ => \opt_has_pipe.first_q_reg[0]_1\,
      \out\(1 downto 0) => \out\(1 downto 0),
      s_axis_a_tdata(2 downto 0) => s_axis_a_tdata(2 downto 0),
      s_axis_b_tdata(2 downto 0) => s_axis_b_tdata(2 downto 0),
      state_op(0) => state_op(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_mult_delay__parameterized8\ is
  port (
    a_exp_flt_all_zero_int : out STD_LOGIC;
    b_exp_flt_all_zero_int : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_mult_delay__parameterized8\ : entity is "delay";
end \fp16_mult_delay__parameterized8\;

architecture STRUCTURE of \fp16_mult_delay__parameterized8\ is
begin
i_pipe: entity work.\fp16_mult_xbip_pipe_v3_0_5_viv__parameterized19_2\
     port map (
      a_exp_flt_all_zero_int => a_exp_flt_all_zero_int,
      aclk => aclk,
      b_exp_flt_all_zero_int => b_exp_flt_all_zero_int,
      \opt_has_pipe.first_q_reg[0]_0\ => \opt_has_pipe.first_q_reg[0]\,
      s_axis_a_tdata(6 downto 0) => s_axis_a_tdata(6 downto 0),
      s_axis_b_tdata(6 downto 0) => s_axis_b_tdata(6 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \fp16_mult_delay__parameterized8_1\ is
  port (
    \out\ : out STD_LOGIC;
    \prod_sign_ip__0\ : out STD_LOGIC;
    \s_axis_a_tdata[18]\ : out STD_LOGIC;
    \s_axis_a_tdata[21]\ : out STD_LOGIC;
    \s_axis_b_tdata[18]\ : out STD_LOGIC;
    \s_axis_b_tdata[21]\ : out STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fp16_mult_delay__parameterized8_1\ : entity is "delay";
end \fp16_mult_delay__parameterized8_1\;

architecture STRUCTURE of \fp16_mult_delay__parameterized8_1\ is
begin
i_pipe: entity work.\fp16_mult_xbip_pipe_v3_0_5_viv__parameterized19\
     port map (
      aclk => aclk,
      \opt_has_pipe.first_q_reg[0]_0\ => \opt_has_pipe.first_q_reg[0]\,
      \out\ => \out\,
      \prod_sign_ip__0\ => \prod_sign_ip__0\,
      s_axis_a_tdata(7 downto 0) => s_axis_a_tdata(7 downto 0),
      \s_axis_a_tdata[18]\ => \s_axis_a_tdata[18]\,
      \s_axis_a_tdata[21]\ => \s_axis_a_tdata[21]\,
      s_axis_b_tdata(7 downto 0) => s_axis_b_tdata(7 downto 0),
      \s_axis_b_tdata[18]\ => \s_axis_b_tdata[18]\,
      \s_axis_b_tdata[21]\ => \s_axis_b_tdata[21]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_mult_flt_round_bit is
  port (
    CARRYS_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    lopt : out STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : in STD_LOGIC;
    lopt_3 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_mult_flt_round_bit : entity is "flt_round_bit";
end fp16_mult_flt_round_bit;

architecture STRUCTURE of fp16_mult_flt_round_bit is
begin
\NORM_1_OR_0.STRUCT_REQ.GENERAL.RND1\: entity work.\fp16_mult_carry_chain__parameterized1\
     port map (
      A(1 downto 0) => A(1 downto 0),
      CARRYS_OUT(0) => CARRYS_OUT(0),
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
entity fp16_mult_mult_gen_v12_0_14_viv is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 16 downto 0 );
    B : in STD_LOGIC_VECTOR ( 16 downto 0 );
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    ZERO_DETECT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    P : out STD_LOGIC_VECTOR ( 18 downto 0 );
    PCASC : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of fp16_mult_mult_gen_v12_0_14_viv : entity is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of fp16_mult_mult_gen_v12_0_14_viv : entity is 17;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of fp16_mult_mult_gen_v12_0_14_viv : entity is 1;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of fp16_mult_mult_gen_v12_0_14_viv : entity is "111111111111111111";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of fp16_mult_mult_gen_v12_0_14_viv : entity is 17;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of fp16_mult_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of fp16_mult_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of fp16_mult_mult_gen_v12_0_14_viv : entity is 1;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of fp16_mult_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of fp16_mult_mult_gen_v12_0_14_viv : entity is 1;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of fp16_mult_mult_gen_v12_0_14_viv : entity is 1000000004;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of fp16_mult_mult_gen_v12_0_14_viv : entity is 1;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of fp16_mult_mult_gen_v12_0_14_viv : entity is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of fp16_mult_mult_gen_v12_0_14_viv : entity is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of fp16_mult_mult_gen_v12_0_14_viv : entity is 33;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of fp16_mult_mult_gen_v12_0_14_viv : entity is 15;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of fp16_mult_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of fp16_mult_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of fp16_mult_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of fp16_mult_mult_gen_v12_0_14_viv : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_mult_mult_gen_v12_0_14_viv : entity is "mult_gen_v12_0_14_viv";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fp16_mult_mult_gen_v12_0_14_viv : entity is "yes";
end fp16_mult_mult_gen_v12_0_14_viv;

architecture STRUCTURE of fp16_mult_mult_gen_v12_0_14_viv is
  signal \<const0>\ : STD_LOGIC;
  signal \^zero_detect\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  PCASC(47) <= \<const0>\;
  PCASC(46) <= \<const0>\;
  PCASC(45) <= \<const0>\;
  PCASC(44) <= \<const0>\;
  PCASC(43) <= \<const0>\;
  PCASC(42) <= \<const0>\;
  PCASC(41) <= \<const0>\;
  PCASC(40) <= \<const0>\;
  PCASC(39) <= \<const0>\;
  PCASC(38) <= \<const0>\;
  PCASC(37) <= \<const0>\;
  PCASC(36) <= \<const0>\;
  PCASC(35) <= \<const0>\;
  PCASC(34) <= \<const0>\;
  PCASC(33) <= \<const0>\;
  PCASC(32) <= \<const0>\;
  PCASC(31) <= \<const0>\;
  PCASC(30) <= \<const0>\;
  PCASC(29) <= \<const0>\;
  PCASC(28) <= \<const0>\;
  PCASC(27) <= \<const0>\;
  PCASC(26) <= \<const0>\;
  PCASC(25) <= \<const0>\;
  PCASC(24) <= \<const0>\;
  PCASC(23) <= \<const0>\;
  PCASC(22) <= \<const0>\;
  PCASC(21) <= \<const0>\;
  PCASC(20) <= \<const0>\;
  PCASC(19) <= \<const0>\;
  PCASC(18) <= \<const0>\;
  PCASC(17) <= \<const0>\;
  PCASC(16) <= \<const0>\;
  PCASC(15) <= \<const0>\;
  PCASC(14) <= \<const0>\;
  PCASC(13) <= \<const0>\;
  PCASC(12) <= \<const0>\;
  PCASC(11) <= \<const0>\;
  PCASC(10) <= \<const0>\;
  PCASC(9) <= \<const0>\;
  PCASC(8) <= \<const0>\;
  PCASC(7) <= \<const0>\;
  PCASC(6) <= \<const0>\;
  PCASC(5) <= \<const0>\;
  PCASC(4) <= \<const0>\;
  PCASC(3) <= \<const0>\;
  PCASC(2) <= \<const0>\;
  PCASC(1) <= \<const0>\;
  PCASC(0) <= \<const0>\;
  ZERO_DETECT(1) <= \<const0>\;
  ZERO_DETECT(0) <= \^zero_detect\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gDSP.gDSP_only.iDSP\: entity work.fp16_mult_dsp
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(15 downto 0) => B(15 downto 0),
      CLK => CLK,
      P(18 downto 0) => P(18 downto 0),
      ZERO_DETECT(0) => \^zero_detect\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_mult_fix_mult_xx is
  port (
    P : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum_rnd2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    A : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_mult_fix_mult_xx : entity is "fix_mult_xx";
end fp16_mult_fix_mult_xx;

architecture STRUCTURE of fp16_mult_fix_mult_xx is
  signal \^p\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mant_rnd : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal zero_detect_rnd : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_MULT_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_MULT_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of MULT : label is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of MULT : label is 17;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of MULT : label is 1;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of MULT : label is "111111111111111111";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of MULT : label is 17;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of MULT : label is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of MULT : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of MULT : label is 1;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of MULT : label is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of MULT : label is 1;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of MULT : label is 1000000004;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of MULT : label is 1;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of MULT : label is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of MULT : label is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of MULT : label is 33;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of MULT : label is 15;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of MULT : label is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of MULT : label is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of MULT : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of MULT : label is "zynq";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of MULT : label is "yes";
begin
  P(0) <= \^p\(0);
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mant_rnd(2),
      I1 => \^p\(0),
      I2 => mant_rnd(1),
      O => A(0)
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => zero_detect_rnd(0),
      I1 => mant_rnd(0),
      I2 => mant_rnd(1),
      O => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1\(0)
    );
\CHAIN_GEN[0].C_MUX.CARRY_MUX_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mant_rnd(10),
      I1 => \^p\(0),
      I2 => mant_rnd(9),
      O => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0\(0)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mant_rnd(3),
      I1 => \^p\(0),
      I2 => mant_rnd(2),
      O => A(1)
    );
\CHAIN_GEN[1].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mant_rnd(11),
      I1 => \^p\(0),
      I2 => mant_rnd(10),
      O => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0\(1)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mant_rnd(4),
      I1 => \^p\(0),
      I2 => mant_rnd(3),
      O => A(2)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0C7F3F"
    )
        port map (
      I0 => mant_rnd(2),
      I1 => \^p\(0),
      I2 => mant_rnd(1),
      I3 => zero_detect_rnd(0),
      I4 => mant_rnd(0),
      O => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1\(1)
    );
\CHAIN_GEN[2].C_MUX.CARRY_MUX_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mant_rnd(12),
      I1 => \^p\(0),
      I2 => mant_rnd(11),
      O => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0\(2)
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mant_rnd(5),
      I1 => \^p\(0),
      I2 => mant_rnd(4),
      O => A(3)
    );
\CHAIN_GEN[3].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mant_rnd(13),
      I1 => \^p\(0),
      I2 => mant_rnd(12),
      O => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0\(3)
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mant_rnd(6),
      I1 => \^p\(0),
      I2 => mant_rnd(5),
      O => A(4)
    );
\CHAIN_GEN[4].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mant_rnd(14),
      I1 => \^p\(0),
      I2 => mant_rnd(13),
      O => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0\(4)
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mant_rnd(7),
      I1 => \^p\(0),
      I2 => mant_rnd(6),
      O => A(5)
    );
\CHAIN_GEN[5].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mant_rnd(15),
      I1 => \^p\(0),
      I2 => mant_rnd(14),
      O => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0\(5)
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mant_rnd(8),
      I1 => \^p\(0),
      I2 => mant_rnd(7),
      O => A(6)
    );
\CHAIN_GEN[6].C_MUX.CARRY_MUX_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mant_rnd(16),
      I1 => \^p\(0),
      I2 => mant_rnd(15),
      O => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0\(6)
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mant_rnd(9),
      I1 => \^p\(0),
      I2 => mant_rnd(8),
      O => A(7)
    );
\CHAIN_GEN[7].C_MUX.CARRY_MUX_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => mant_rnd(17),
      I1 => \^p\(0),
      I2 => mant_rnd(16),
      O => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0\(7)
    );
\CHAIN_GEN[8].C_MUX.CARRY_MUX_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^p\(0),
      O => sum_rnd2(0)
    );
MULT: entity work.fp16_mult_mult_gen_v12_0_14_viv
     port map (
      A(16) => '1',
      A(15 downto 0) => s_axis_a_tdata(15 downto 0),
      B(16) => '1',
      B(15 downto 0) => s_axis_b_tdata(15 downto 0),
      CE => '1',
      CLK => aclk,
      P(18) => \^p\(0),
      P(17 downto 0) => mant_rnd(17 downto 0),
      PCASC(47 downto 0) => NLW_MULT_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1) => NLW_MULT_ZERO_DETECT_UNCONNECTED(1),
      ZERO_DETECT(0) => zero_detect_rnd(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_mult_renorm_and_round_logic is
  port (
    mant_op : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \RESULT_REG.NORMAL.mant_op_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \RESULT_REG.NORMAL.mant_op_reg[15]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sum_rnd2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RESULT_REG.NORMAL.exp_op_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_mult_renorm_and_round_logic : entity is "renorm_and_round_logic";
end fp16_mult_renorm_and_round_logic;

architecture STRUCTURE of fp16_mult_renorm_and_round_logic is
  signal carry_op : STD_LOGIC;
  signal carry_rnd2 : STD_LOGIC;
  signal lopt : STD_LOGIC;
  signal lopt_1 : STD_LOGIC;
  signal lopt_2 : STD_LOGIC;
  signal lopt_3 : STD_LOGIC;
  signal lopt_4 : STD_LOGIC;
  signal lopt_5 : STD_LOGIC;
  signal round_rnd1 : STD_LOGIC;
begin
\EXP_ADD.ADD\: entity work.\fp16_mult_carry_chain__parameterized4\
     port map (
      CARRY_OUT => carry_op,
      Q(6 downto 0) => Q(6 downto 0),
      \RESULT_REG.NORMAL.exp_op_reg[6]\(6 downto 0) => \RESULT_REG.NORMAL.exp_op_reg[6]\(6 downto 0)
    );
\LOGIC.RND1\: entity work.\fp16_mult_carry_chain__parameterized2\
     port map (
      CARRYS_OUT(0) => carry_rnd2,
      CARRY_OUT => round_rnd1,
      \RESULT_REG.NORMAL.mant_op_reg[7]\(7 downto 0) => \RESULT_REG.NORMAL.mant_op_reg[7]\(7 downto 0),
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_2 => lopt_2,
      lopt_3 => lopt_3,
      lopt_4 => lopt_4,
      lopt_5 => \RESULT_REG.NORMAL.mant_op_reg[15]\(0),
      lopt_6 => lopt_5,
      mant_op(7 downto 0) => mant_op(7 downto 0)
    );
\LOGIC.RND2\: entity work.\fp16_mult_carry_chain__parameterized3\
     port map (
      CARRYS_OUT(0) => carry_op,
      CARRY_IN => carry_rnd2,
      \RESULT_REG.NORMAL.mant_op_reg[15]\(7 downto 0) => \RESULT_REG.NORMAL.mant_op_reg[15]\(7 downto 0),
      lopt => lopt_3,
      lopt_1 => lopt_4,
      lopt_2 => lopt_5,
      mant_op(7 downto 0) => mant_op(15 downto 8),
      sum_rnd2(0) => sum_rnd2(0)
    );
RND_BIT_GEN: entity work.fp16_mult_flt_round_bit
     port map (
      A(1 downto 0) => A(1 downto 0),
      CARRYS_OUT(0) => round_rnd1,
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
entity fp16_mult_special_detect is
  port (
    \s_axis_b_tdata[22]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    A_EQ_VALUE : out STD_LOGIC;
    b_exp_flt_all_zero_int : in STD_LOGIC;
    a_exp_flt_all_zero_int : in STD_LOGIC;
    p_6_in : in STD_LOGIC;
    \prod_sign_ip__0\ : in STD_LOGIC;
    a_exp_flt_all_one_int : in STD_LOGIC;
    CARRYS_OUT : in STD_LOGIC_VECTOR ( 0 to 0 );
    b_exp_flt_all_one_int : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \opt_has_pipe.first_q_reg[0]_0\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_1\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_mult_special_detect : entity is "special_detect";
end fp16_mult_special_detect;

architecture STRUCTURE of fp16_mult_special_detect is
begin
\MANT_CARRY.MANT_ALL_ZERO_DET\: entity work.fp16_mult_compare_eq_im_3
     port map (
      CARRYS_OUT(0) => CARRYS_OUT(0),
      CARRY_OUT => A_EQ_VALUE,
      D(0) => D(0),
      a_exp_flt_all_one_int => a_exp_flt_all_one_int,
      a_exp_flt_all_zero_int => a_exp_flt_all_zero_int,
      b_exp_flt_all_one_int => b_exp_flt_all_one_int,
      b_exp_flt_all_zero_int => b_exp_flt_all_zero_int,
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.first_q_reg[0]_0\ => \opt_has_pipe.first_q_reg[0]_0\,
      \opt_has_pipe.first_q_reg[0]_1\ => \opt_has_pipe.first_q_reg[0]_1\,
      \opt_has_pipe.first_q_reg[0]_2\ => \opt_has_pipe.first_q_reg[0]_2\,
      p_6_in => p_6_in,
      \prod_sign_ip__0\ => \prod_sign_ip__0\,
      s_axis_a_tdata(18 downto 0) => s_axis_a_tdata(18 downto 0),
      \s_axis_b_tdata[22]\ => \s_axis_b_tdata[22]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_mult_special_detect_0 is
  port (
    \s_axis_a_tdata[22]\ : out STD_LOGIC;
    A_EQ_VALUE : out STD_LOGIC;
    p_6_in : out STD_LOGIC;
    a_exp_flt_all_zero_int : in STD_LOGIC;
    b_exp_flt_all_zero_int : in STD_LOGIC;
    b_exp_flt_all_one_int : in STD_LOGIC;
    a_exp_flt_all_one_int : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]\ : in STD_LOGIC;
    \opt_has_pipe.first_q_reg[0]_0\ : in STD_LOGIC;
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_mult_special_detect_0 : entity is "special_detect";
end fp16_mult_special_detect_0;

architecture STRUCTURE of fp16_mult_special_detect_0 is
begin
\MANT_CARRY.MANT_ALL_ZERO_DET\: entity work.fp16_mult_compare_eq_im
     port map (
      A_EQ_VALUE => A_EQ_VALUE,
      a_exp_flt_all_one_int => a_exp_flt_all_one_int,
      a_exp_flt_all_zero_int => a_exp_flt_all_zero_int,
      b_exp_flt_all_one_int => b_exp_flt_all_one_int,
      b_exp_flt_all_zero_int => b_exp_flt_all_zero_int,
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.first_q_reg[0]_0\ => \opt_has_pipe.first_q_reg[0]_0\,
      p_6_in => p_6_in,
      \s_axis_a_tdata[22]\ => \s_axis_a_tdata[22]\,
      s_axis_b_tdata(18 downto 0) => s_axis_b_tdata(18 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_mult_fix_mult is
  port (
    P : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum_rnd2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    A : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_mult_fix_mult : entity is "fix_mult";
end fp16_mult_fix_mult;

architecture STRUCTURE of fp16_mult_fix_mult is
begin
\MULT_GEN_VARIANT.FIX_MULT\: entity work.fp16_mult_fix_mult_xx
     port map (
      A(7 downto 0) => A(7 downto 0),
      P(0) => P(0),
      aclk => aclk,
      s_axis_a_tdata(15 downto 0) => s_axis_a_tdata(15 downto 0),
      s_axis_b_tdata(15 downto 0) => s_axis_b_tdata(15 downto 0),
      sum_rnd2(0) => sum_rnd2(0),
      \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1\(1 downto 0) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1\(1 downto 0),
      \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0\(7 downto 0) => \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0\(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_mult_flt_mult_exp is
  port (
    \out\ : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \opt_has_pipe.first_q_reg[0]\ : out STD_LOGIC;
    state_int_up : out STD_LOGIC_VECTOR ( 0 to 0 );
    state_op : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    P : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_mult_flt_mult_exp : entity is "flt_mult_exp";
end fp16_mult_flt_mult_exp;

architecture STRUCTURE of fp16_mult_flt_mult_exp is
  signal COND_DET_A_n_0 : STD_LOGIC;
  signal COND_DET_B_n_0 : STD_LOGIC;
  signal \EXP_ADD.C_CHAIN_n_1\ : STD_LOGIC;
  signal \EXP_ADD.C_CHAIN_n_10\ : STD_LOGIC;
  signal \EXP_ADD.C_CHAIN_n_2\ : STD_LOGIC;
  signal \EXP_ADD.C_CHAIN_n_3\ : STD_LOGIC;
  signal \EXP_ADD.C_CHAIN_n_5\ : STD_LOGIC;
  signal \EXP_ADD.C_CHAIN_n_6\ : STD_LOGIC;
  signal \EXP_ADD.C_CHAIN_n_7\ : STD_LOGIC;
  signal \EXP_ADD.C_CHAIN_n_8\ : STD_LOGIC;
  signal \EXP_ADD.C_CHAIN_n_9\ : STD_LOGIC;
  signal IP_SIGN_DELAY_n_2 : STD_LOGIC;
  signal IP_SIGN_DELAY_n_3 : STD_LOGIC;
  signal IP_SIGN_DELAY_n_4 : STD_LOGIC;
  signal IP_SIGN_DELAY_n_5 : STD_LOGIC;
  signal SIG_DELAY_n_2 : STD_LOGIC;
  signal a_exp_flt_all_one_int : STD_LOGIC;
  signal a_exp_flt_all_zero_int : STD_LOGIC;
  signal a_mant_is_zero_int : STD_LOGIC;
  signal b_exp_flt_all_one_int : STD_LOGIC;
  signal b_exp_flt_all_zero_int : STD_LOGIC;
  signal b_mant_is_zero_int : STD_LOGIC;
  signal flow_sig : STD_LOGIC;
  signal flow_up : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal p_0_in3_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal \prod_sign_ip__0\ : STD_LOGIC;
  signal state_det : STD_LOGIC_VECTOR ( 1 to 1 );
  signal state_up : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
COND_DET_A: entity work.fp16_mult_special_detect
     port map (
      A_EQ_VALUE => a_mant_is_zero_int,
      CARRYS_OUT(0) => b_mant_is_zero_int,
      D(0) => state_det(1),
      a_exp_flt_all_one_int => a_exp_flt_all_one_int,
      a_exp_flt_all_zero_int => a_exp_flt_all_zero_int,
      b_exp_flt_all_one_int => b_exp_flt_all_one_int,
      b_exp_flt_all_zero_int => b_exp_flt_all_zero_int,
      \opt_has_pipe.first_q_reg[0]\ => IP_SIGN_DELAY_n_2,
      \opt_has_pipe.first_q_reg[0]_0\ => IP_SIGN_DELAY_n_3,
      \opt_has_pipe.first_q_reg[0]_1\ => IP_SIGN_DELAY_n_5,
      \opt_has_pipe.first_q_reg[0]_2\ => IP_SIGN_DELAY_n_4,
      p_6_in => p_6_in,
      \prod_sign_ip__0\ => \prod_sign_ip__0\,
      s_axis_a_tdata(18 downto 16) => s_axis_a_tdata(22 downto 20),
      s_axis_a_tdata(15 downto 0) => s_axis_a_tdata(15 downto 0),
      \s_axis_b_tdata[22]\ => COND_DET_A_n_0
    );
COND_DET_B: entity work.fp16_mult_special_detect_0
     port map (
      A_EQ_VALUE => b_mant_is_zero_int,
      a_exp_flt_all_one_int => a_exp_flt_all_one_int,
      a_exp_flt_all_zero_int => a_exp_flt_all_zero_int,
      b_exp_flt_all_one_int => b_exp_flt_all_one_int,
      b_exp_flt_all_zero_int => b_exp_flt_all_zero_int,
      \opt_has_pipe.first_q_reg[0]\ => a_mant_is_zero_int,
      \opt_has_pipe.first_q_reg[0]_0\ => IP_SIGN_DELAY_n_4,
      p_6_in => p_6_in,
      \s_axis_a_tdata[22]\ => COND_DET_B_n_0,
      s_axis_b_tdata(18 downto 16) => s_axis_b_tdata(22 downto 20),
      s_axis_b_tdata(15 downto 0) => s_axis_b_tdata(15 downto 0)
    );
\EXP_ADD.C_CHAIN\: entity work.fp16_mult_carry_chain
     port map (
      D(3) => flow_sig,
      D(2) => \EXP_ADD.C_CHAIN_n_1\,
      D(1) => \EXP_ADD.C_CHAIN_n_2\,
      D(0) => \EXP_ADD.C_CHAIN_n_3\,
      Q(6) => p_0_in3_in,
      Q(5) => \EXP_ADD.C_CHAIN_n_5\,
      Q(4) => \EXP_ADD.C_CHAIN_n_6\,
      Q(3) => \EXP_ADD.C_CHAIN_n_7\,
      Q(2) => \EXP_ADD.C_CHAIN_n_8\,
      Q(1) => \EXP_ADD.C_CHAIN_n_9\,
      Q(0) => \EXP_ADD.C_CHAIN_n_10\,
      s_axis_a_tdata(6 downto 0) => s_axis_a_tdata(22 downto 16),
      s_axis_b_tdata(6 downto 0) => s_axis_b_tdata(22 downto 16)
    );
EXP_PRE_RND_DEL: entity work.\fp16_mult_delay__parameterized11\
     port map (
      A(6 downto 0) => A(6 downto 0),
      D(6) => p_0_in3_in,
      D(5) => \EXP_ADD.C_CHAIN_n_5\,
      D(4) => \EXP_ADD.C_CHAIN_n_6\,
      D(3) => \EXP_ADD.C_CHAIN_n_7\,
      D(2) => \EXP_ADD.C_CHAIN_n_8\,
      D(1) => \EXP_ADD.C_CHAIN_n_9\,
      D(0) => \EXP_ADD.C_CHAIN_n_10\,
      aclk => aclk
    );
INV_OP_DEL: entity work.\fp16_mult_delay__parameterized8\
     port map (
      a_exp_flt_all_zero_int => a_exp_flt_all_zero_int,
      aclk => aclk,
      b_exp_flt_all_zero_int => b_exp_flt_all_zero_int,
      \opt_has_pipe.first_q_reg[0]\ => COND_DET_B_n_0,
      s_axis_a_tdata(6 downto 0) => s_axis_a_tdata(22 downto 16),
      s_axis_b_tdata(6 downto 0) => s_axis_b_tdata(22 downto 16)
    );
IP_SIGN_DELAY: entity work.\fp16_mult_delay__parameterized8_1\
     port map (
      aclk => aclk,
      \opt_has_pipe.first_q_reg[0]\ => COND_DET_A_n_0,
      \out\ => \out\,
      \prod_sign_ip__0\ => \prod_sign_ip__0\,
      s_axis_a_tdata(7 downto 0) => s_axis_a_tdata(23 downto 16),
      \s_axis_a_tdata[18]\ => IP_SIGN_DELAY_n_2,
      \s_axis_a_tdata[21]\ => IP_SIGN_DELAY_n_3,
      s_axis_b_tdata(7 downto 0) => s_axis_b_tdata(23 downto 16),
      \s_axis_b_tdata[18]\ => IP_SIGN_DELAY_n_4,
      \s_axis_b_tdata[21]\ => IP_SIGN_DELAY_n_5
    );
SIG_DELAY: entity work.\fp16_mult_delay__parameterized10\
     port map (
      D(3) => flow_sig,
      D(2) => \EXP_ADD.C_CHAIN_n_1\,
      D(1) => \EXP_ADD.C_CHAIN_n_2\,
      D(0) => \EXP_ADD.C_CHAIN_n_3\,
      P(0) => P(0),
      \RESULT_REG.NORMAL.mant_op_reg[14]\(1 downto 0) => state_up(1 downto 0),
      aclk => aclk,
      \opt_has_pipe.first_q_reg[1]\ => SIG_DELAY_n_2,
      \out\(1) => flow_up(3),
      \out\(0) => flow_up(1),
      state_int_up(0) => state_int_up(0),
      state_op(0) => state_op(1)
    );
STATE_DELAY: entity work.\fp16_mult_delay__parameterized7\
     port map (
      D(0) => state_det(1),
      Q(0) => Q(0),
      \RESULT_REG.NORMAL.exp_op_reg[1]\(1) => flow_up(3),
      \RESULT_REG.NORMAL.exp_op_reg[1]\(0) => flow_up(1),
      \RESULT_REG.NORMAL.mant_op_reg[15]\ => SIG_DELAY_n_2,
      a_exp_flt_all_one_int => a_exp_flt_all_one_int,
      aclk => aclk,
      b_exp_flt_all_one_int => b_exp_flt_all_one_int,
      \opt_has_pipe.first_q_reg[0]\ => \opt_has_pipe.first_q_reg[0]\,
      \opt_has_pipe.first_q_reg[0]_0\ => IP_SIGN_DELAY_n_2,
      \opt_has_pipe.first_q_reg[0]_1\ => IP_SIGN_DELAY_n_4,
      \out\(1 downto 0) => state_up(1 downto 0),
      s_axis_a_tdata(2 downto 0) => s_axis_a_tdata(22 downto 20),
      s_axis_b_tdata(2 downto 0) => s_axis_b_tdata(22 downto 20),
      state_op(0) => state_op(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_mult_flt_mult_round is
  port (
    mant_op : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    A : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \RESULT_REG.NORMAL.mant_op_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \RESULT_REG.NORMAL.mant_op_reg[15]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sum_rnd2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RESULT_REG.NORMAL.exp_op_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_mult_flt_mult_round : entity is "flt_mult_round";
end fp16_mult_flt_mult_round;

architecture STRUCTURE of fp16_mult_flt_mult_round is
begin
\LOGIC.R_AND_R\: entity work.fp16_mult_renorm_and_round_logic
     port map (
      A(1 downto 0) => A(1 downto 0),
      Q(6 downto 0) => Q(6 downto 0),
      \RESULT_REG.NORMAL.exp_op_reg[6]\(6 downto 0) => \RESULT_REG.NORMAL.exp_op_reg[6]\(6 downto 0),
      \RESULT_REG.NORMAL.mant_op_reg[15]\(7 downto 0) => \RESULT_REG.NORMAL.mant_op_reg[15]\(7 downto 0),
      \RESULT_REG.NORMAL.mant_op_reg[7]\(7 downto 0) => \RESULT_REG.NORMAL.mant_op_reg[7]\(7 downto 0),
      mant_op(15 downto 0) => mant_op(15 downto 0),
      sum_rnd2(0) => sum_rnd2(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_mult_flt_mult is
  port (
    m_axis_result_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_a_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_b_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_mult_flt_mult : entity is "flt_mult";
end fp16_mult_flt_mult;

architecture STRUCTURE of fp16_mult_flt_mult is
  signal EXP_n_8 : STD_LOGIC;
  signal \LOGIC.R_AND_R/RND_BIT_GEN/a_ip\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \LOGIC.R_AND_R/a_add_op\ : STD_LOGIC_VECTOR ( 6 to 6 );
  signal \LOGIC.R_AND_R/mant_shifted_rnd1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \LOGIC.R_AND_R/sum_rnd2\ : STD_LOGIC_VECTOR ( 8 to 8 );
  signal exp_op : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal exp_rnd : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal mant_op : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mant_rnd : STD_LOGIC_VECTOR ( 18 to 18 );
  signal mant_shifted_rnd2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sign_op : STD_LOGIC;
  signal state_int_up : STD_LOGIC_VECTOR ( 0 to 0 );
  signal state_op : STD_LOGIC_VECTOR ( 5 downto 1 );
begin
EXP: entity work.fp16_mult_flt_mult_exp
     port map (
      A(6) => \LOGIC.R_AND_R/a_add_op\(6),
      A(5 downto 0) => exp_op(5 downto 0),
      P(0) => mant_rnd(18),
      Q(0) => mant_op(15),
      aclk => aclk,
      \opt_has_pipe.first_q_reg[0]\ => EXP_n_8,
      \out\ => sign_op,
      s_axis_a_tdata(23 downto 0) => s_axis_a_tdata(23 downto 0),
      s_axis_b_tdata(23 downto 0) => s_axis_b_tdata(23 downto 0),
      state_int_up(0) => state_int_up(0),
      state_op(1) => state_op(5),
      state_op(0) => state_op(1)
    );
MULT: entity work.fp16_mult_fix_mult
     port map (
      A(7 downto 0) => \LOGIC.R_AND_R/mant_shifted_rnd1\(7 downto 0),
      P(0) => mant_rnd(18),
      aclk => aclk,
      s_axis_a_tdata(15 downto 0) => s_axis_a_tdata(15 downto 0),
      s_axis_b_tdata(15 downto 0) => s_axis_b_tdata(15 downto 0),
      sum_rnd2(0) => \LOGIC.R_AND_R/sum_rnd2\(8),
      \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1\(1) => \LOGIC.R_AND_R/RND_BIT_GEN/a_ip\(2),
      \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1\(0) => \LOGIC.R_AND_R/RND_BIT_GEN/a_ip\(0),
      \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_0\(7 downto 0) => mant_shifted_rnd2(7 downto 0)
    );
OP: entity work.fp16_mult_flt_dec_op_lat
     port map (
      Q(6 downto 0) => exp_rnd(6 downto 0),
      \RESULT_REG.NORMAL.mant_op_reg[15]_0\ => EXP_n_8,
      aclk => aclk,
      m_axis_result_tdata(23 downto 0) => m_axis_result_tdata(23 downto 0),
      mant_op(14 downto 0) => mant_op(14 downto 0),
      \out\ => sign_op,
      state_int_up(0) => state_int_up(0),
      state_op(1) => state_op(5),
      state_op(0) => state_op(1)
    );
R_AND_R: entity work.fp16_mult_flt_mult_round
     port map (
      A(1) => \LOGIC.R_AND_R/RND_BIT_GEN/a_ip\(2),
      A(0) => \LOGIC.R_AND_R/RND_BIT_GEN/a_ip\(0),
      Q(6 downto 0) => exp_rnd(6 downto 0),
      \RESULT_REG.NORMAL.exp_op_reg[6]\(6) => \LOGIC.R_AND_R/a_add_op\(6),
      \RESULT_REG.NORMAL.exp_op_reg[6]\(5 downto 0) => exp_op(5 downto 0),
      \RESULT_REG.NORMAL.mant_op_reg[15]\(7 downto 0) => mant_shifted_rnd2(7 downto 0),
      \RESULT_REG.NORMAL.mant_op_reg[7]\(7 downto 0) => \LOGIC.R_AND_R/mant_shifted_rnd1\(7 downto 0),
      mant_op(15 downto 0) => mant_op(15 downto 0),
      sum_rnd2(0) => \LOGIC.R_AND_R/sum_rnd2\(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp16_mult_floating_point_v7_1_7_viv is
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
  attribute C_ACCUM_INPUT_MSB of fp16_mult_floating_point_v7_1_7_viv : entity is 31;
  attribute C_ACCUM_LSB : integer;
  attribute C_ACCUM_LSB of fp16_mult_floating_point_v7_1_7_viv : entity is -31;
  attribute C_ACCUM_MSB : integer;
  attribute C_ACCUM_MSB of fp16_mult_floating_point_v7_1_7_viv : entity is 32;
  attribute C_A_FRACTION_WIDTH : integer;
  attribute C_A_FRACTION_WIDTH of fp16_mult_floating_point_v7_1_7_viv : entity is 17;
  attribute C_A_TDATA_WIDTH : integer;
  attribute C_A_TDATA_WIDTH of fp16_mult_floating_point_v7_1_7_viv : entity is 24;
  attribute C_A_TUSER_WIDTH : integer;
  attribute C_A_TUSER_WIDTH of fp16_mult_floating_point_v7_1_7_viv : entity is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of fp16_mult_floating_point_v7_1_7_viv : entity is 24;
  attribute C_BRAM_USAGE : integer;
  attribute C_BRAM_USAGE of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_B_FRACTION_WIDTH : integer;
  attribute C_B_FRACTION_WIDTH of fp16_mult_floating_point_v7_1_7_viv : entity is 17;
  attribute C_B_TDATA_WIDTH : integer;
  attribute C_B_TDATA_WIDTH of fp16_mult_floating_point_v7_1_7_viv : entity is 24;
  attribute C_B_TUSER_WIDTH : integer;
  attribute C_B_TUSER_WIDTH of fp16_mult_floating_point_v7_1_7_viv : entity is 1;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of fp16_mult_floating_point_v7_1_7_viv : entity is 24;
  attribute C_COMPARE_OPERATION : integer;
  attribute C_COMPARE_OPERATION of fp16_mult_floating_point_v7_1_7_viv : entity is 8;
  attribute C_C_FRACTION_WIDTH : integer;
  attribute C_C_FRACTION_WIDTH of fp16_mult_floating_point_v7_1_7_viv : entity is 17;
  attribute C_C_TDATA_WIDTH : integer;
  attribute C_C_TDATA_WIDTH of fp16_mult_floating_point_v7_1_7_viv : entity is 24;
  attribute C_C_TUSER_WIDTH : integer;
  attribute C_C_TUSER_WIDTH of fp16_mult_floating_point_v7_1_7_viv : entity is 1;
  attribute C_C_WIDTH : integer;
  attribute C_C_WIDTH of fp16_mult_floating_point_v7_1_7_viv : entity is 24;
  attribute C_FIXED_DATA_UNSIGNED : integer;
  attribute C_FIXED_DATA_UNSIGNED of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ABSOLUTE : integer;
  attribute C_HAS_ABSOLUTE of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ACCUMULATOR_A : integer;
  attribute C_HAS_ACCUMULATOR_A of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ACCUMULATOR_S : integer;
  attribute C_HAS_ACCUMULATOR_S of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW : integer;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ACCUM_OVERFLOW : integer;
  attribute C_HAS_ACCUM_OVERFLOW of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ACLKEN : integer;
  attribute C_HAS_ACLKEN of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ADD : integer;
  attribute C_HAS_ADD of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_ARESETN : integer;
  attribute C_HAS_ARESETN of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_A_TLAST : integer;
  attribute C_HAS_A_TLAST of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_A_TUSER : integer;
  attribute C_HAS_A_TUSER of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_B : integer;
  attribute C_HAS_B of fp16_mult_floating_point_v7_1_7_viv : entity is 1;
  attribute C_HAS_B_TLAST : integer;
  attribute C_HAS_B_TLAST of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_B_TUSER : integer;
  attribute C_HAS_B_TUSER of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_C : integer;
  attribute C_HAS_C of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_COMPARE : integer;
  attribute C_HAS_COMPARE of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_C_TLAST : integer;
  attribute C_HAS_C_TLAST of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_C_TUSER : integer;
  attribute C_HAS_C_TUSER of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_DIVIDE : integer;
  attribute C_HAS_DIVIDE of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_DIVIDE_BY_ZERO : integer;
  attribute C_HAS_DIVIDE_BY_ZERO of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_EXPONENTIAL : integer;
  attribute C_HAS_EXPONENTIAL of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_FIX_TO_FLT : integer;
  attribute C_HAS_FIX_TO_FLT of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_FLT_TO_FIX : integer;
  attribute C_HAS_FLT_TO_FIX of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_FLT_TO_FLT : integer;
  attribute C_HAS_FLT_TO_FLT of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_FMA : integer;
  attribute C_HAS_FMA of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_FMS : integer;
  attribute C_HAS_FMS of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_INVALID_OP : integer;
  attribute C_HAS_INVALID_OP of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_LOGARITHM : integer;
  attribute C_HAS_LOGARITHM of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_MULTIPLY : integer;
  attribute C_HAS_MULTIPLY of fp16_mult_floating_point_v7_1_7_viv : entity is 1;
  attribute C_HAS_OPERATION : integer;
  attribute C_HAS_OPERATION of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_OPERATION_TLAST : integer;
  attribute C_HAS_OPERATION_TLAST of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_OPERATION_TUSER : integer;
  attribute C_HAS_OPERATION_TUSER of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_RECIP : integer;
  attribute C_HAS_RECIP of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_RECIP_SQRT : integer;
  attribute C_HAS_RECIP_SQRT of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_RESULT_TLAST : integer;
  attribute C_HAS_RESULT_TLAST of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_RESULT_TUSER : integer;
  attribute C_HAS_RESULT_TUSER of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_SQRT : integer;
  attribute C_HAS_SQRT of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_SUBTRACT : integer;
  attribute C_HAS_SUBTRACT of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of fp16_mult_floating_point_v7_1_7_viv : entity is 2;
  attribute C_MULT_USAGE : integer;
  attribute C_MULT_USAGE of fp16_mult_floating_point_v7_1_7_viv : entity is 2;
  attribute C_OPERATION_TDATA_WIDTH : integer;
  attribute C_OPERATION_TDATA_WIDTH of fp16_mult_floating_point_v7_1_7_viv : entity is 8;
  attribute C_OPERATION_TUSER_WIDTH : integer;
  attribute C_OPERATION_TUSER_WIDTH of fp16_mult_floating_point_v7_1_7_viv : entity is 1;
  attribute C_OPTIMIZATION : integer;
  attribute C_OPTIMIZATION of fp16_mult_floating_point_v7_1_7_viv : entity is 1;
  attribute C_RATE : integer;
  attribute C_RATE of fp16_mult_floating_point_v7_1_7_viv : entity is 1;
  attribute C_RESULT_FRACTION_WIDTH : integer;
  attribute C_RESULT_FRACTION_WIDTH of fp16_mult_floating_point_v7_1_7_viv : entity is 17;
  attribute C_RESULT_TDATA_WIDTH : integer;
  attribute C_RESULT_TDATA_WIDTH of fp16_mult_floating_point_v7_1_7_viv : entity is 24;
  attribute C_RESULT_TUSER_WIDTH : integer;
  attribute C_RESULT_TUSER_WIDTH of fp16_mult_floating_point_v7_1_7_viv : entity is 1;
  attribute C_RESULT_WIDTH : integer;
  attribute C_RESULT_WIDTH of fp16_mult_floating_point_v7_1_7_viv : entity is 24;
  attribute C_THROTTLE_SCHEME : integer;
  attribute C_THROTTLE_SCHEME of fp16_mult_floating_point_v7_1_7_viv : entity is 3;
  attribute C_TLAST_RESOLUTION : integer;
  attribute C_TLAST_RESOLUTION of fp16_mult_floating_point_v7_1_7_viv : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of fp16_mult_floating_point_v7_1_7_viv : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_mult_floating_point_v7_1_7_viv : entity is "floating_point_v7_1_7_viv";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fp16_mult_floating_point_v7_1_7_viv : entity is "yes";
end fp16_mult_floating_point_v7_1_7_viv;

architecture STRUCTURE of fp16_mult_floating_point_v7_1_7_viv is
  signal \<const0>\ : STD_LOGIC;
begin
  m_axis_result_tlast <= \<const0>\;
  m_axis_result_tuser(0) <= \<const0>\;
  s_axis_a_tready <= \<const0>\;
  s_axis_b_tready <= \<const0>\;
  s_axis_c_tready <= \<const0>\;
  s_axis_operation_tready <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\MULT.OP\: entity work.fp16_mult_flt_mult
     port map (
      aclk => aclk,
      m_axis_result_tdata(23 downto 0) => m_axis_result_tdata(23 downto 0),
      s_axis_a_tdata(23 downto 0) => s_axis_a_tdata(23 downto 0),
      s_axis_b_tdata(23 downto 0) => s_axis_b_tdata(23 downto 0)
    );
i_nd_to_rdy: entity work.fp16_mult_xbip_pipe_v3_0_5_viv
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
entity fp16_mult_floating_point_v7_1_7 is
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
  attribute C_ACCUM_INPUT_MSB of fp16_mult_floating_point_v7_1_7 : entity is 31;
  attribute C_ACCUM_LSB : integer;
  attribute C_ACCUM_LSB of fp16_mult_floating_point_v7_1_7 : entity is -31;
  attribute C_ACCUM_MSB : integer;
  attribute C_ACCUM_MSB of fp16_mult_floating_point_v7_1_7 : entity is 32;
  attribute C_A_FRACTION_WIDTH : integer;
  attribute C_A_FRACTION_WIDTH of fp16_mult_floating_point_v7_1_7 : entity is 17;
  attribute C_A_TDATA_WIDTH : integer;
  attribute C_A_TDATA_WIDTH of fp16_mult_floating_point_v7_1_7 : entity is 24;
  attribute C_A_TUSER_WIDTH : integer;
  attribute C_A_TUSER_WIDTH of fp16_mult_floating_point_v7_1_7 : entity is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of fp16_mult_floating_point_v7_1_7 : entity is 24;
  attribute C_BRAM_USAGE : integer;
  attribute C_BRAM_USAGE of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_B_FRACTION_WIDTH : integer;
  attribute C_B_FRACTION_WIDTH of fp16_mult_floating_point_v7_1_7 : entity is 17;
  attribute C_B_TDATA_WIDTH : integer;
  attribute C_B_TDATA_WIDTH of fp16_mult_floating_point_v7_1_7 : entity is 24;
  attribute C_B_TUSER_WIDTH : integer;
  attribute C_B_TUSER_WIDTH of fp16_mult_floating_point_v7_1_7 : entity is 1;
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of fp16_mult_floating_point_v7_1_7 : entity is 24;
  attribute C_COMPARE_OPERATION : integer;
  attribute C_COMPARE_OPERATION of fp16_mult_floating_point_v7_1_7 : entity is 8;
  attribute C_C_FRACTION_WIDTH : integer;
  attribute C_C_FRACTION_WIDTH of fp16_mult_floating_point_v7_1_7 : entity is 17;
  attribute C_C_TDATA_WIDTH : integer;
  attribute C_C_TDATA_WIDTH of fp16_mult_floating_point_v7_1_7 : entity is 24;
  attribute C_C_TUSER_WIDTH : integer;
  attribute C_C_TUSER_WIDTH of fp16_mult_floating_point_v7_1_7 : entity is 1;
  attribute C_C_WIDTH : integer;
  attribute C_C_WIDTH of fp16_mult_floating_point_v7_1_7 : entity is 24;
  attribute C_FIXED_DATA_UNSIGNED : integer;
  attribute C_FIXED_DATA_UNSIGNED of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ABSOLUTE : integer;
  attribute C_HAS_ABSOLUTE of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ACCUMULATOR_A : integer;
  attribute C_HAS_ACCUMULATOR_A of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ACCUMULATOR_S : integer;
  attribute C_HAS_ACCUMULATOR_S of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW : integer;
  attribute C_HAS_ACCUM_INPUT_OVERFLOW of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ACCUM_OVERFLOW : integer;
  attribute C_HAS_ACCUM_OVERFLOW of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ACLKEN : integer;
  attribute C_HAS_ACLKEN of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ADD : integer;
  attribute C_HAS_ADD of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_ARESETN : integer;
  attribute C_HAS_ARESETN of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_A_TLAST : integer;
  attribute C_HAS_A_TLAST of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_A_TUSER : integer;
  attribute C_HAS_A_TUSER of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_B : integer;
  attribute C_HAS_B of fp16_mult_floating_point_v7_1_7 : entity is 1;
  attribute C_HAS_B_TLAST : integer;
  attribute C_HAS_B_TLAST of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_B_TUSER : integer;
  attribute C_HAS_B_TUSER of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_C : integer;
  attribute C_HAS_C of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_COMPARE : integer;
  attribute C_HAS_COMPARE of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_C_TLAST : integer;
  attribute C_HAS_C_TLAST of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_C_TUSER : integer;
  attribute C_HAS_C_TUSER of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_DIVIDE : integer;
  attribute C_HAS_DIVIDE of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_DIVIDE_BY_ZERO : integer;
  attribute C_HAS_DIVIDE_BY_ZERO of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_EXPONENTIAL : integer;
  attribute C_HAS_EXPONENTIAL of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_FIX_TO_FLT : integer;
  attribute C_HAS_FIX_TO_FLT of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_FLT_TO_FIX : integer;
  attribute C_HAS_FLT_TO_FIX of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_FLT_TO_FLT : integer;
  attribute C_HAS_FLT_TO_FLT of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_FMA : integer;
  attribute C_HAS_FMA of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_FMS : integer;
  attribute C_HAS_FMS of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_INVALID_OP : integer;
  attribute C_HAS_INVALID_OP of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_LOGARITHM : integer;
  attribute C_HAS_LOGARITHM of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_MULTIPLY : integer;
  attribute C_HAS_MULTIPLY of fp16_mult_floating_point_v7_1_7 : entity is 1;
  attribute C_HAS_OPERATION : integer;
  attribute C_HAS_OPERATION of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_OPERATION_TLAST : integer;
  attribute C_HAS_OPERATION_TLAST of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_OPERATION_TUSER : integer;
  attribute C_HAS_OPERATION_TUSER of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_RECIP : integer;
  attribute C_HAS_RECIP of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_RECIP_SQRT : integer;
  attribute C_HAS_RECIP_SQRT of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_RESULT_TLAST : integer;
  attribute C_HAS_RESULT_TLAST of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_RESULT_TUSER : integer;
  attribute C_HAS_RESULT_TUSER of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_SQRT : integer;
  attribute C_HAS_SQRT of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_SUBTRACT : integer;
  attribute C_HAS_SUBTRACT of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of fp16_mult_floating_point_v7_1_7 : entity is 2;
  attribute C_MULT_USAGE : integer;
  attribute C_MULT_USAGE of fp16_mult_floating_point_v7_1_7 : entity is 2;
  attribute C_OPERATION_TDATA_WIDTH : integer;
  attribute C_OPERATION_TDATA_WIDTH of fp16_mult_floating_point_v7_1_7 : entity is 8;
  attribute C_OPERATION_TUSER_WIDTH : integer;
  attribute C_OPERATION_TUSER_WIDTH of fp16_mult_floating_point_v7_1_7 : entity is 1;
  attribute C_OPTIMIZATION : integer;
  attribute C_OPTIMIZATION of fp16_mult_floating_point_v7_1_7 : entity is 1;
  attribute C_RATE : integer;
  attribute C_RATE of fp16_mult_floating_point_v7_1_7 : entity is 1;
  attribute C_RESULT_FRACTION_WIDTH : integer;
  attribute C_RESULT_FRACTION_WIDTH of fp16_mult_floating_point_v7_1_7 : entity is 17;
  attribute C_RESULT_TDATA_WIDTH : integer;
  attribute C_RESULT_TDATA_WIDTH of fp16_mult_floating_point_v7_1_7 : entity is 24;
  attribute C_RESULT_TUSER_WIDTH : integer;
  attribute C_RESULT_TUSER_WIDTH of fp16_mult_floating_point_v7_1_7 : entity is 1;
  attribute C_RESULT_WIDTH : integer;
  attribute C_RESULT_WIDTH of fp16_mult_floating_point_v7_1_7 : entity is 24;
  attribute C_THROTTLE_SCHEME : integer;
  attribute C_THROTTLE_SCHEME of fp16_mult_floating_point_v7_1_7 : entity is 3;
  attribute C_TLAST_RESOLUTION : integer;
  attribute C_TLAST_RESOLUTION of fp16_mult_floating_point_v7_1_7 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of fp16_mult_floating_point_v7_1_7 : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fp16_mult_floating_point_v7_1_7 : entity is "floating_point_v7_1_7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fp16_mult_floating_point_v7_1_7 : entity is "yes";
end fp16_mult_floating_point_v7_1_7;

architecture STRUCTURE of fp16_mult_floating_point_v7_1_7 is
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
  attribute C_HAS_MULTIPLY of i_synth : label is 1;
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
  attribute C_LATENCY of i_synth : label is 2;
  attribute C_MULT_USAGE of i_synth : label is 2;
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
i_synth: entity work.fp16_mult_floating_point_v7_1_7_viv
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
entity fp16_mult is
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
  attribute NotValidForBitStream of fp16_mult : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fp16_mult : entity is "fp16_mult,floating_point_v7_1_7,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fp16_mult : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fp16_mult : entity is "floating_point_v7_1_7,Vivado 2018.3";
end fp16_mult;

architecture STRUCTURE of fp16_mult is
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
  attribute C_HAS_MULTIPLY of U0 : label is 1;
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
  attribute C_LATENCY of U0 : label is 2;
  attribute C_MULT_USAGE : integer;
  attribute C_MULT_USAGE of U0 : label is 2;
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
U0: entity work.fp16_mult_floating_point_v7_1_7
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
