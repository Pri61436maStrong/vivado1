-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Aug 12 16:05:48 2024
-- Host        : aic-ts running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/norm/addsub_int/addsub_int_sim_netlist.vhdl
-- Design      : addsub_int
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z100ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity addsub_int_c_reg_fd_v12_0_5_viv is
  port (
    S : out STD_LOGIC_VECTOR ( 23 downto 0 );
    D : in STD_LOGIC_VECTOR ( 23 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of addsub_int_c_reg_fd_v12_0_5_viv : entity is "c_reg_fd_v12_0_5_viv";
end addsub_int_c_reg_fd_v12_0_5_viv;

architecture STRUCTURE of addsub_int_c_reg_fd_v12_0_5_viv is
begin
\i_no_async_controls.output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(9),
      Q => S(9),
      R => '0'
    );
\i_no_async_controls.output_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(10),
      Q => S(10),
      R => '0'
    );
\i_no_async_controls.output_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(11),
      Q => S(11),
      R => '0'
    );
\i_no_async_controls.output_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(12),
      Q => S(12),
      R => '0'
    );
\i_no_async_controls.output_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(13),
      Q => S(13),
      R => '0'
    );
\i_no_async_controls.output_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(14),
      Q => S(14),
      R => '0'
    );
\i_no_async_controls.output_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(15),
      Q => S(15),
      R => '0'
    );
\i_no_async_controls.output_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(16),
      Q => S(16),
      R => '0'
    );
\i_no_async_controls.output_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(17),
      Q => S(17),
      R => '0'
    );
\i_no_async_controls.output_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(18),
      Q => S(18),
      R => '0'
    );
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => S(0),
      R => '0'
    );
\i_no_async_controls.output_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(19),
      Q => S(19),
      R => '0'
    );
\i_no_async_controls.output_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(20),
      Q => S(20),
      R => '0'
    );
\i_no_async_controls.output_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(21),
      Q => S(21),
      R => '0'
    );
\i_no_async_controls.output_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(22),
      Q => S(22),
      R => '0'
    );
\i_no_async_controls.output_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(23),
      Q => S(23),
      R => '0'
    );
\i_no_async_controls.output_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => S(1),
      R => '0'
    );
\i_no_async_controls.output_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => S(2),
      R => '0'
    );
\i_no_async_controls.output_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(3),
      Q => S(3),
      R => '0'
    );
\i_no_async_controls.output_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(4),
      Q => S(4),
      R => '0'
    );
\i_no_async_controls.output_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(5),
      Q => S(5),
      R => '0'
    );
\i_no_async_controls.output_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(6),
      Q => S(6),
      R => '0'
    );
\i_no_async_controls.output_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(7),
      Q => S(7),
      R => '0'
    );
\i_no_async_controls.output_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(8),
      Q => S(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity addsub_int_c_addsub_v12_0_12_lut6_legacy is
  port (
    S : out STD_LOGIC_VECTOR ( 23 downto 0 );
    A : in STD_LOGIC_VECTOR ( 22 downto 0 );
    CLK : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 14 downto 0 );
    ADD : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of addsub_int_c_addsub_v12_0_12_lut6_legacy : entity is "c_addsub_v12_0_12_lut6_legacy";
end addsub_int_c_addsub_v12_0_12_lut6_legacy;

architecture STRUCTURE of addsub_int_c_addsub_v12_0_12_lut6_legacy is
  signal CI : STD_LOGIC;
  signal LI : STD_LOGIC;
  signal S_0 : STD_LOGIC;
  signal carry_simple_0 : STD_LOGIC;
  signal carry_simple_1 : STD_LOGIC;
  signal carry_simple_10 : STD_LOGIC;
  signal carry_simple_11 : STD_LOGIC;
  signal carry_simple_12 : STD_LOGIC;
  signal carry_simple_13 : STD_LOGIC;
  signal carry_simple_14 : STD_LOGIC;
  signal carry_simple_15 : STD_LOGIC;
  signal carry_simple_16 : STD_LOGIC;
  signal carry_simple_17 : STD_LOGIC;
  signal carry_simple_18 : STD_LOGIC;
  signal carry_simple_19 : STD_LOGIC;
  signal carry_simple_2 : STD_LOGIC;
  signal carry_simple_20 : STD_LOGIC;
  signal carry_simple_21 : STD_LOGIC;
  signal carry_simple_22 : STD_LOGIC;
  signal carry_simple_3 : STD_LOGIC;
  signal carry_simple_4 : STD_LOGIC;
  signal carry_simple_5 : STD_LOGIC;
  signal carry_simple_6 : STD_LOGIC;
  signal carry_simple_7 : STD_LOGIC;
  signal carry_simple_8 : STD_LOGIC;
  signal carry_simple_9 : STD_LOGIC;
  signal \i_simple_model.carryxor0__0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[10].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[11].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[12].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[13].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[14].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[15].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[16].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[17].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[18].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[19].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[20].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[21].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[22].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_12_out : STD_LOGIC;
  signal p_13_out : STD_LOGIC;
  signal p_14_out : STD_LOGIC;
  signal p_15_out : STD_LOGIC;
  signal p_16_out : STD_LOGIC;
  signal p_17_out : STD_LOGIC;
  signal p_18_out : STD_LOGIC;
  signal p_19_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_20_out : STD_LOGIC;
  signal p_21_out : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[20].carrymux_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[20].carrymux_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \i_simple_model.carrymux0_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \i_simple_model.carrymux0_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \i_simple_model.carrymux0_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[12].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[12].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[12].carrymux_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[16].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[16].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[16].carrymux_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[20].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[20].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[20].carrymux_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "PRIMITIVE";
begin
\i_q.i_simple.qreg\: entity work.addsub_int_c_reg_fd_v12_0_5_viv
     port map (
      CLK => CLK,
      D(23) => p_0_out,
      D(22) => p_21_out,
      D(21) => p_20_out,
      D(20) => p_19_out,
      D(19) => p_18_out,
      D(18) => p_17_out,
      D(17) => p_16_out,
      D(16) => p_15_out,
      D(15) => p_14_out,
      D(14) => p_13_out,
      D(13) => p_12_out,
      D(12) => p_11_out,
      D(11) => p_10_out,
      D(10) => p_9_out,
      D(9) => p_8_out,
      D(8) => p_7_out,
      D(7) => p_6_out,
      D(6) => p_5_out,
      D(5) => p_4_out,
      D(4) => p_3_out,
      D(3) => p_2_out,
      D(2) => p_1_out,
      D(1) => \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\,
      D(0) => \i_simple_model.carryxor0__0\,
      S(23 downto 0) => S(23 downto 0)
    );
\i_simple_model.carrymux0_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carry_simple_3,
      CO(2) => carry_simple_2,
      CO(1) => carry_simple_1,
      CO(0) => carry_simple_0,
      CYINIT => CI,
      DI(3 downto 0) => A(3 downto 0),
      O(3) => p_2_out,
      O(2) => p_1_out,
      O(1) => \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\,
      O(0) => \i_simple_model.carryxor0__0\,
      S(3) => \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0\,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\,
      S(0) => S_0
    );
\i_simple_model.carrymux0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(0),
      I1 => ADD,
      I2 => A(0),
      O => S_0
    );
\i_simple_model.carrymux0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ADD,
      O => CI
    );
\i_simple_model.i_gt_1.carrychaingen[10].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(10),
      I1 => ADD,
      I2 => A(10),
      O => \i_simple_model.i_gt_1.carrychaingen[10].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[11].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(11),
      I1 => ADD,
      I2 => A(11),
      O => \i_simple_model.i_gt_1.carrychaingen[11].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[12].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_11,
      CO(3) => carry_simple_15,
      CO(2) => carry_simple_14,
      CO(1) => carry_simple_13,
      CO(0) => carry_simple_12,
      CYINIT => '0',
      DI(3 downto 0) => A(15 downto 12),
      O(3) => p_14_out,
      O(2) => p_13_out,
      O(1) => p_12_out,
      O(0) => p_11_out,
      S(3) => \i_simple_model.i_gt_1.carrychaingen[15].carrymux_i_1_n_0\,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[14].carrymux_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[13].carrymux_i_1_n_0\,
      S(0) => \i_simple_model.i_gt_1.carrychaingen[12].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[12].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(12),
      I1 => ADD,
      I2 => A(12),
      O => \i_simple_model.i_gt_1.carrychaingen[12].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[13].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(13),
      I1 => ADD,
      I2 => A(13),
      O => \i_simple_model.i_gt_1.carrychaingen[13].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[14].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(14),
      I1 => ADD,
      I2 => A(14),
      O => \i_simple_model.i_gt_1.carrychaingen[14].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[15].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(14),
      I1 => ADD,
      I2 => A(15),
      O => \i_simple_model.i_gt_1.carrychaingen[15].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[16].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_15,
      CO(3) => carry_simple_19,
      CO(2) => carry_simple_18,
      CO(1) => carry_simple_17,
      CO(0) => carry_simple_16,
      CYINIT => '0',
      DI(3 downto 0) => A(19 downto 16),
      O(3) => p_18_out,
      O(2) => p_17_out,
      O(1) => p_16_out,
      O(0) => p_15_out,
      S(3) => \i_simple_model.i_gt_1.carrychaingen[19].carrymux_i_1_n_0\,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[18].carrymux_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[17].carrymux_i_1_n_0\,
      S(0) => \i_simple_model.i_gt_1.carrychaingen[16].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[16].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(14),
      I1 => ADD,
      I2 => A(16),
      O => \i_simple_model.i_gt_1.carrychaingen[16].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[17].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(14),
      I1 => ADD,
      I2 => A(17),
      O => \i_simple_model.i_gt_1.carrychaingen[17].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[18].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(14),
      I1 => ADD,
      I2 => A(18),
      O => \i_simple_model.i_gt_1.carrychaingen[18].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[19].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(14),
      I1 => ADD,
      I2 => A(19),
      O => \i_simple_model.i_gt_1.carrychaingen[19].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(1),
      I1 => ADD,
      I2 => A(1),
      O => \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[20].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_19,
      CO(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[20].carrymux_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => carry_simple_22,
      CO(1) => carry_simple_21,
      CO(0) => carry_simple_20,
      CYINIT => '0',
      DI(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[20].carrymux_CARRY4_DI_UNCONNECTED\(3),
      DI(2 downto 0) => A(22 downto 20),
      O(3) => p_0_out,
      O(2) => p_21_out,
      O(1) => p_20_out,
      O(0) => p_19_out,
      S(3) => LI,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[22].carrymux_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[21].carrymux_i_1_n_0\,
      S(0) => \i_simple_model.i_gt_1.carrychaingen[20].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[20].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(14),
      I1 => ADD,
      I2 => A(20),
      O => \i_simple_model.i_gt_1.carrychaingen[20].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[21].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(14),
      I1 => ADD,
      I2 => A(21),
      O => \i_simple_model.i_gt_1.carrychaingen[21].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[22].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(14),
      I1 => ADD,
      I2 => A(22),
      O => \i_simple_model.i_gt_1.carrychaingen[22].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(2),
      I1 => ADD,
      I2 => A(2),
      O => \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(3),
      I1 => ADD,
      I2 => A(3),
      O => \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_3,
      CO(3) => carry_simple_7,
      CO(2) => carry_simple_6,
      CO(1) => carry_simple_5,
      CO(0) => carry_simple_4,
      CYINIT => '0',
      DI(3 downto 0) => A(7 downto 4),
      O(3) => p_6_out,
      O(2) => p_5_out,
      O(1) => p_4_out,
      O(0) => p_3_out,
      S(3) => \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0\,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0\,
      S(0) => \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(4),
      I1 => ADD,
      I2 => A(4),
      O => \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(5),
      I1 => ADD,
      I2 => A(5),
      O => \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(6),
      I1 => ADD,
      I2 => A(6),
      O => \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(7),
      I1 => ADD,
      I2 => A(7),
      O => \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_7,
      CO(3) => carry_simple_11,
      CO(2) => carry_simple_10,
      CO(1) => carry_simple_9,
      CO(0) => carry_simple_8,
      CYINIT => '0',
      DI(3 downto 0) => A(11 downto 8),
      O(3) => p_10_out,
      O(2) => p_9_out,
      O(1) => p_8_out,
      O(0) => p_7_out,
      S(3) => \i_simple_model.i_gt_1.carrychaingen[11].carrymux_i_1_n_0\,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[10].carrymux_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0\,
      S(0) => \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(8),
      I1 => ADD,
      I2 => A(8),
      O => \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(9),
      I1 => ADD,
      I2 => A(9),
      O => \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carryxortop_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => B(14),
      I1 => ADD,
      I2 => A(22),
      O => LI
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity addsub_int_c_addsub_v12_0_12_fabric_legacy is
  port (
    S : out STD_LOGIC_VECTOR ( 23 downto 0 );
    A : in STD_LOGIC_VECTOR ( 22 downto 0 );
    CLK : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 14 downto 0 );
    ADD : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of addsub_int_c_addsub_v12_0_12_fabric_legacy : entity is "c_addsub_v12_0_12_fabric_legacy";
end addsub_int_c_addsub_v12_0_12_fabric_legacy;

architecture STRUCTURE of addsub_int_c_addsub_v12_0_12_fabric_legacy is
begin
\i_lut6.i_lut6_addsub\: entity work.addsub_int_c_addsub_v12_0_12_lut6_legacy
     port map (
      A(22 downto 0) => A(22 downto 0),
      ADD => ADD,
      B(14 downto 0) => B(14 downto 0),
      CLK => CLK,
      S(23 downto 0) => S(23 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity addsub_int_c_addsub_v12_0_12_legacy is
  port (
    S : out STD_LOGIC_VECTOR ( 23 downto 0 );
    A : in STD_LOGIC_VECTOR ( 22 downto 0 );
    CLK : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 14 downto 0 );
    ADD : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of addsub_int_c_addsub_v12_0_12_legacy : entity is "c_addsub_v12_0_12_legacy";
end addsub_int_c_addsub_v12_0_12_legacy;

architecture STRUCTURE of addsub_int_c_addsub_v12_0_12_legacy is
begin
\no_pipelining.the_addsub\: entity work.addsub_int_c_addsub_v12_0_12_fabric_legacy
     port map (
      A(22 downto 0) => A(22 downto 0),
      ADD => ADD,
      B(14 downto 0) => B(14 downto 0),
      CLK => CLK,
      S(23 downto 0) => S(23 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity addsub_int_c_addsub_v12_0_12_viv is
  port (
    S : out STD_LOGIC_VECTOR ( 23 downto 0 );
    A : in STD_LOGIC_VECTOR ( 22 downto 0 );
    CLK : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 14 downto 0 );
    ADD : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of addsub_int_c_addsub_v12_0_12_viv : entity is "c_addsub_v12_0_12_viv";
end addsub_int_c_addsub_v12_0_12_viv;

architecture STRUCTURE of addsub_int_c_addsub_v12_0_12_viv is
begin
\i_baseblox.i_baseblox_addsub\: entity work.addsub_int_c_addsub_v12_0_12_legacy
     port map (
      A(22 downto 0) => A(22 downto 0),
      ADD => ADD,
      B(14 downto 0) => B(14 downto 0),
      CLK => CLK,
      S(23 downto 0) => S(23 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity addsub_int_c_addsub_v12_0_12 is
  port (
    A : in STD_LOGIC_VECTOR ( 22 downto 0 );
    B : in STD_LOGIC_VECTOR ( 14 downto 0 );
    CLK : in STD_LOGIC;
    ADD : in STD_LOGIC;
    C_IN : in STD_LOGIC;
    CE : in STD_LOGIC;
    BYPASS : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SSET : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    C_OUT : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute C_ADD_MODE : integer;
  attribute C_ADD_MODE of addsub_int_c_addsub_v12_0_12 : entity is 2;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of addsub_int_c_addsub_v12_0_12 : entity is "0";
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of addsub_int_c_addsub_v12_0_12 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of addsub_int_c_addsub_v12_0_12 : entity is 23;
  attribute C_BORROW_LOW : integer;
  attribute C_BORROW_LOW of addsub_int_c_addsub_v12_0_12 : entity is 1;
  attribute C_BYPASS_LOW : integer;
  attribute C_BYPASS_LOW of addsub_int_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_CONSTANT : integer;
  attribute C_B_CONSTANT of addsub_int_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of addsub_int_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of addsub_int_c_addsub_v12_0_12 : entity is "000000000000000";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of addsub_int_c_addsub_v12_0_12 : entity is 15;
  attribute C_CE_OVERRIDES_BYPASS : integer;
  attribute C_CE_OVERRIDES_BYPASS of addsub_int_c_addsub_v12_0_12 : entity is 1;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of addsub_int_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_BYPASS : integer;
  attribute C_HAS_BYPASS of addsub_int_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of addsub_int_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_C_IN : integer;
  attribute C_HAS_C_IN of addsub_int_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_C_OUT : integer;
  attribute C_HAS_C_OUT of addsub_int_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of addsub_int_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of addsub_int_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of addsub_int_c_addsub_v12_0_12 : entity is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of addsub_int_c_addsub_v12_0_12 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of addsub_int_c_addsub_v12_0_12 : entity is 1;
  attribute C_OUT_WIDTH : integer;
  attribute C_OUT_WIDTH of addsub_int_c_addsub_v12_0_12 : entity is 24;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of addsub_int_c_addsub_v12_0_12 : entity is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of addsub_int_c_addsub_v12_0_12 : entity is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of addsub_int_c_addsub_v12_0_12 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of addsub_int_c_addsub_v12_0_12 : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of addsub_int_c_addsub_v12_0_12 : entity is "c_addsub_v12_0_12";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of addsub_int_c_addsub_v12_0_12 : entity is "yes";
end addsub_int_c_addsub_v12_0_12;

architecture STRUCTURE of addsub_int_c_addsub_v12_0_12 is
  signal \<const0>\ : STD_LOGIC;
begin
  C_OUT <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xst_addsub: entity work.addsub_int_c_addsub_v12_0_12_viv
     port map (
      A(22 downto 0) => A(22 downto 0),
      ADD => ADD,
      B(14 downto 0) => B(14 downto 0),
      CLK => CLK,
      S(23 downto 0) => S(23 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity addsub_int is
  port (
    A : in STD_LOGIC_VECTOR ( 22 downto 0 );
    B : in STD_LOGIC_VECTOR ( 14 downto 0 );
    CLK : in STD_LOGIC;
    ADD : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of addsub_int : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of addsub_int : entity is "addsub_int,c_addsub_v12_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of addsub_int : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of addsub_int : entity is "c_addsub_v12_0_12,Vivado 2018.3";
end addsub_int;

architecture STRUCTURE of addsub_int is
  signal NLW_U0_C_OUT_UNCONNECTED : STD_LOGIC;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of U0 : label is "0";
  attribute C_BORROW_LOW : integer;
  attribute C_BORROW_LOW of U0 : label is 1;
  attribute C_CE_OVERRIDES_BYPASS : integer;
  attribute C_CE_OVERRIDES_BYPASS of U0 : label is 1;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of U0 : label is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of U0 : label is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of U0 : label is 0;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of U0 : label is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of U0 : label is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute c_a_type : integer;
  attribute c_a_type of U0 : label is 0;
  attribute c_a_width : integer;
  attribute c_a_width of U0 : label is 23;
  attribute c_add_mode : integer;
  attribute c_add_mode of U0 : label is 2;
  attribute c_b_constant : integer;
  attribute c_b_constant of U0 : label is 0;
  attribute c_b_type : integer;
  attribute c_b_type of U0 : label is 0;
  attribute c_b_value : string;
  attribute c_b_value of U0 : label is "000000000000000";
  attribute c_b_width : integer;
  attribute c_b_width of U0 : label is 15;
  attribute c_bypass_low : integer;
  attribute c_bypass_low of U0 : label is 0;
  attribute c_has_bypass : integer;
  attribute c_has_bypass of U0 : label is 0;
  attribute c_has_c_in : integer;
  attribute c_has_c_in of U0 : label is 0;
  attribute c_has_c_out : integer;
  attribute c_has_c_out of U0 : label is 0;
  attribute c_latency : integer;
  attribute c_latency of U0 : label is 1;
  attribute c_out_width : integer;
  attribute c_out_width of U0 : label is 24;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of ADD : signal is "xilinx.com:signal:data:1.0 add_intf DATA";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ADD : signal is "XIL_INTERFACENAME add_intf, LAYERED_METADATA undef";
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute x_interface_parameter of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute x_interface_info of S : signal is "xilinx.com:signal:data:1.0 s_intf DATA";
  attribute x_interface_parameter of S : signal is "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef";
begin
U0: entity work.addsub_int_c_addsub_v12_0_12
     port map (
      A(22 downto 0) => A(22 downto 0),
      ADD => ADD,
      B(14 downto 0) => B(14 downto 0),
      BYPASS => '0',
      CE => '1',
      CLK => CLK,
      C_IN => '0',
      C_OUT => NLW_U0_C_OUT_UNCONNECTED,
      S(23 downto 0) => S(23 downto 0),
      SCLR => '0',
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
