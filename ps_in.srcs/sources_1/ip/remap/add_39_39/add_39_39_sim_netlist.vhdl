-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Aug 12 16:07:46 2024
-- Host        : aic-ts running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/remap/add_39_39/add_39_39_sim_netlist.vhdl
-- Design      : add_39_39
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z100ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_39_39_c_addsub_v12_0_12_lut6_legacy is
  port (
    S : out STD_LOGIC_VECTOR ( 39 downto 0 );
    A : in STD_LOGIC_VECTOR ( 38 downto 0 );
    B : in STD_LOGIC_VECTOR ( 38 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_39_39_c_addsub_v12_0_12_lut6_legacy : entity is "c_addsub_v12_0_12_lut6_legacy";
end add_39_39_c_addsub_v12_0_12_lut6_legacy;

architecture STRUCTURE of add_39_39_c_addsub_v12_0_12_lut6_legacy is
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
  signal carry_simple_23 : STD_LOGIC;
  signal carry_simple_24 : STD_LOGIC;
  signal carry_simple_25 : STD_LOGIC;
  signal carry_simple_26 : STD_LOGIC;
  signal carry_simple_27 : STD_LOGIC;
  signal carry_simple_28 : STD_LOGIC;
  signal carry_simple_29 : STD_LOGIC;
  signal carry_simple_3 : STD_LOGIC;
  signal carry_simple_30 : STD_LOGIC;
  signal carry_simple_31 : STD_LOGIC;
  signal carry_simple_32 : STD_LOGIC;
  signal carry_simple_33 : STD_LOGIC;
  signal carry_simple_34 : STD_LOGIC;
  signal carry_simple_35 : STD_LOGIC;
  signal carry_simple_36 : STD_LOGIC;
  signal carry_simple_37 : STD_LOGIC;
  signal carry_simple_4 : STD_LOGIC;
  signal carry_simple_5 : STD_LOGIC;
  signal carry_simple_6 : STD_LOGIC;
  signal carry_simple_7 : STD_LOGIC;
  signal carry_simple_8 : STD_LOGIC;
  signal carry_simple_9 : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[10].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[11].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[12].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[13].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[14].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[15].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[16].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[17].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[18].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[19].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[1].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[20].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[21].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[22].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[23].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[24].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[25].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[26].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[27].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[28].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[29].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[2].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[30].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[31].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[32].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[33].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[34].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[35].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[36].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[37].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[38].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[3].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[4].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[5].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[6].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[7].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[8].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[9].carryxor_i_1_n_0\ : STD_LOGIC;
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[36].carrymux_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[36].carrymux_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
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
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[24].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[24].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[24].carrymux_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[28].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[28].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[28].carrymux_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[32].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[32].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[32].carrymux_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[36].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[36].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[36].carrymux_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "PRIMITIVE";
begin
\i_simple_model.carrymux0_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carry_simple_3,
      CO(2) => carry_simple_2,
      CO(1) => carry_simple_1,
      CO(0) => carry_simple_0,
      CYINIT => '0',
      DI(3 downto 0) => A(3 downto 0),
      O(3 downto 0) => S(3 downto 0),
      S(3) => \i_simple_model.i_gt_1.carrychaingen[3].carryxor_i_1_n_0\,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[2].carryxor_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[1].carryxor_i_1_n_0\,
      S(0) => S_0
    );
\i_simple_model.carryxor0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      O => S_0
    );
\i_simple_model.i_gt_1.carrychaingen[10].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(10),
      I1 => A(10),
      O => \i_simple_model.i_gt_1.carrychaingen[10].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[11].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(11),
      I1 => A(11),
      O => \i_simple_model.i_gt_1.carrychaingen[11].carryxor_i_1_n_0\
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
      O(3 downto 0) => S(15 downto 12),
      S(3) => \i_simple_model.i_gt_1.carrychaingen[15].carryxor_i_1_n_0\,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[14].carryxor_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[13].carryxor_i_1_n_0\,
      S(0) => \i_simple_model.i_gt_1.carrychaingen[12].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[12].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(12),
      I1 => A(12),
      O => \i_simple_model.i_gt_1.carrychaingen[12].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[13].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(13),
      I1 => A(13),
      O => \i_simple_model.i_gt_1.carrychaingen[13].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[14].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(14),
      I1 => A(14),
      O => \i_simple_model.i_gt_1.carrychaingen[14].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[15].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(15),
      I1 => A(15),
      O => \i_simple_model.i_gt_1.carrychaingen[15].carryxor_i_1_n_0\
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
      O(3 downto 0) => S(19 downto 16),
      S(3) => \i_simple_model.i_gt_1.carrychaingen[19].carryxor_i_1_n_0\,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[18].carryxor_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[17].carryxor_i_1_n_0\,
      S(0) => \i_simple_model.i_gt_1.carrychaingen[16].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[16].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(16),
      I1 => A(16),
      O => \i_simple_model.i_gt_1.carrychaingen[16].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[17].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(17),
      I1 => A(17),
      O => \i_simple_model.i_gt_1.carrychaingen[17].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[18].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(18),
      I1 => A(18),
      O => \i_simple_model.i_gt_1.carrychaingen[18].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[19].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(19),
      I1 => A(19),
      O => \i_simple_model.i_gt_1.carrychaingen[19].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[1].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(1),
      I1 => A(1),
      O => \i_simple_model.i_gt_1.carrychaingen[1].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[20].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_19,
      CO(3) => carry_simple_23,
      CO(2) => carry_simple_22,
      CO(1) => carry_simple_21,
      CO(0) => carry_simple_20,
      CYINIT => '0',
      DI(3 downto 0) => A(23 downto 20),
      O(3 downto 0) => S(23 downto 20),
      S(3) => \i_simple_model.i_gt_1.carrychaingen[23].carryxor_i_1_n_0\,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[22].carryxor_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[21].carryxor_i_1_n_0\,
      S(0) => \i_simple_model.i_gt_1.carrychaingen[20].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[20].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(20),
      I1 => A(20),
      O => \i_simple_model.i_gt_1.carrychaingen[20].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[21].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(21),
      I1 => A(21),
      O => \i_simple_model.i_gt_1.carrychaingen[21].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[22].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(22),
      I1 => A(22),
      O => \i_simple_model.i_gt_1.carrychaingen[22].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[23].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(23),
      I1 => A(23),
      O => \i_simple_model.i_gt_1.carrychaingen[23].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[24].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_23,
      CO(3) => carry_simple_27,
      CO(2) => carry_simple_26,
      CO(1) => carry_simple_25,
      CO(0) => carry_simple_24,
      CYINIT => '0',
      DI(3 downto 0) => A(27 downto 24),
      O(3 downto 0) => S(27 downto 24),
      S(3) => \i_simple_model.i_gt_1.carrychaingen[27].carryxor_i_1_n_0\,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[26].carryxor_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[25].carryxor_i_1_n_0\,
      S(0) => \i_simple_model.i_gt_1.carrychaingen[24].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[24].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(24),
      I1 => A(24),
      O => \i_simple_model.i_gt_1.carrychaingen[24].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[25].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(25),
      I1 => A(25),
      O => \i_simple_model.i_gt_1.carrychaingen[25].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[26].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(26),
      I1 => A(26),
      O => \i_simple_model.i_gt_1.carrychaingen[26].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[27].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(27),
      I1 => A(27),
      O => \i_simple_model.i_gt_1.carrychaingen[27].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[28].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_27,
      CO(3) => carry_simple_31,
      CO(2) => carry_simple_30,
      CO(1) => carry_simple_29,
      CO(0) => carry_simple_28,
      CYINIT => '0',
      DI(3 downto 0) => A(31 downto 28),
      O(3 downto 0) => S(31 downto 28),
      S(3) => \i_simple_model.i_gt_1.carrychaingen[31].carryxor_i_1_n_0\,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[30].carryxor_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[29].carryxor_i_1_n_0\,
      S(0) => \i_simple_model.i_gt_1.carrychaingen[28].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[28].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(28),
      I1 => A(28),
      O => \i_simple_model.i_gt_1.carrychaingen[28].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[29].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(29),
      I1 => A(29),
      O => \i_simple_model.i_gt_1.carrychaingen[29].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[2].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      O => \i_simple_model.i_gt_1.carrychaingen[2].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[30].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(30),
      I1 => A(30),
      O => \i_simple_model.i_gt_1.carrychaingen[30].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[31].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(31),
      I1 => A(31),
      O => \i_simple_model.i_gt_1.carrychaingen[31].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[32].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_31,
      CO(3) => carry_simple_35,
      CO(2) => carry_simple_34,
      CO(1) => carry_simple_33,
      CO(0) => carry_simple_32,
      CYINIT => '0',
      DI(3 downto 0) => A(35 downto 32),
      O(3 downto 0) => S(35 downto 32),
      S(3) => \i_simple_model.i_gt_1.carrychaingen[35].carryxor_i_1_n_0\,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[34].carryxor_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[33].carryxor_i_1_n_0\,
      S(0) => \i_simple_model.i_gt_1.carrychaingen[32].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[32].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(32),
      I1 => A(32),
      O => \i_simple_model.i_gt_1.carrychaingen[32].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[33].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(33),
      I1 => A(33),
      O => \i_simple_model.i_gt_1.carrychaingen[33].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[34].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(34),
      I1 => A(34),
      O => \i_simple_model.i_gt_1.carrychaingen[34].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[35].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(35),
      I1 => A(35),
      O => \i_simple_model.i_gt_1.carrychaingen[35].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[36].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_35,
      CO(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[36].carrymux_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => CI,
      CO(1) => carry_simple_37,
      CO(0) => carry_simple_36,
      CYINIT => '0',
      DI(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[36].carrymux_CARRY4_DI_UNCONNECTED\(3),
      DI(2 downto 0) => A(38 downto 36),
      O(3 downto 0) => S(39 downto 36),
      S(3) => LI,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[38].carryxor_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[37].carryxor_i_1_n_0\,
      S(0) => \i_simple_model.i_gt_1.carrychaingen[36].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[36].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(36),
      I1 => A(36),
      O => \i_simple_model.i_gt_1.carrychaingen[36].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[37].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(37),
      I1 => A(37),
      O => \i_simple_model.i_gt_1.carrychaingen[37].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[38].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(38),
      I1 => A(38),
      O => \i_simple_model.i_gt_1.carrychaingen[38].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[3].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(3),
      I1 => A(3),
      O => \i_simple_model.i_gt_1.carrychaingen[3].carryxor_i_1_n_0\
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
      O(3 downto 0) => S(7 downto 4),
      S(3) => \i_simple_model.i_gt_1.carrychaingen[7].carryxor_i_1_n_0\,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[6].carryxor_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[5].carryxor_i_1_n_0\,
      S(0) => \i_simple_model.i_gt_1.carrychaingen[4].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[4].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      O => \i_simple_model.i_gt_1.carrychaingen[4].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[5].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(5),
      I1 => A(5),
      O => \i_simple_model.i_gt_1.carrychaingen[5].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[6].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      O => \i_simple_model.i_gt_1.carrychaingen[6].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[7].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(7),
      I1 => A(7),
      O => \i_simple_model.i_gt_1.carrychaingen[7].carryxor_i_1_n_0\
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
      O(3 downto 0) => S(11 downto 8),
      S(3) => \i_simple_model.i_gt_1.carrychaingen[11].carryxor_i_1_n_0\,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[10].carryxor_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[9].carryxor_i_1_n_0\,
      S(0) => \i_simple_model.i_gt_1.carrychaingen[8].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[8].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(8),
      I1 => A(8),
      O => \i_simple_model.i_gt_1.carrychaingen[8].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[9].carryxor_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(9),
      I1 => A(9),
      O => \i_simple_model.i_gt_1.carrychaingen[9].carryxor_i_1_n_0\
    );
\i_simple_model.i_gt_1.carryxortop_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(38),
      I1 => A(38),
      O => LI
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_39_39_c_addsub_v12_0_12_fabric_legacy is
  port (
    S : out STD_LOGIC_VECTOR ( 39 downto 0 );
    A : in STD_LOGIC_VECTOR ( 38 downto 0 );
    B : in STD_LOGIC_VECTOR ( 38 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_39_39_c_addsub_v12_0_12_fabric_legacy : entity is "c_addsub_v12_0_12_fabric_legacy";
end add_39_39_c_addsub_v12_0_12_fabric_legacy;

architecture STRUCTURE of add_39_39_c_addsub_v12_0_12_fabric_legacy is
begin
\i_lut6.i_lut6_addsub\: entity work.add_39_39_c_addsub_v12_0_12_lut6_legacy
     port map (
      A(38 downto 0) => A(38 downto 0),
      B(38 downto 0) => B(38 downto 0),
      S(39 downto 0) => S(39 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_39_39_c_addsub_v12_0_12_legacy is
  port (
    S : out STD_LOGIC_VECTOR ( 39 downto 0 );
    A : in STD_LOGIC_VECTOR ( 38 downto 0 );
    B : in STD_LOGIC_VECTOR ( 38 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_39_39_c_addsub_v12_0_12_legacy : entity is "c_addsub_v12_0_12_legacy";
end add_39_39_c_addsub_v12_0_12_legacy;

architecture STRUCTURE of add_39_39_c_addsub_v12_0_12_legacy is
begin
\no_pipelining.the_addsub\: entity work.add_39_39_c_addsub_v12_0_12_fabric_legacy
     port map (
      A(38 downto 0) => A(38 downto 0),
      B(38 downto 0) => B(38 downto 0),
      S(39 downto 0) => S(39 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_39_39_c_addsub_v12_0_12_viv is
  port (
    S : out STD_LOGIC_VECTOR ( 39 downto 0 );
    A : in STD_LOGIC_VECTOR ( 38 downto 0 );
    B : in STD_LOGIC_VECTOR ( 38 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_39_39_c_addsub_v12_0_12_viv : entity is "c_addsub_v12_0_12_viv";
end add_39_39_c_addsub_v12_0_12_viv;

architecture STRUCTURE of add_39_39_c_addsub_v12_0_12_viv is
begin
\i_baseblox.i_baseblox_addsub\: entity work.add_39_39_c_addsub_v12_0_12_legacy
     port map (
      A(38 downto 0) => A(38 downto 0),
      B(38 downto 0) => B(38 downto 0),
      S(39 downto 0) => S(39 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_39_39_c_addsub_v12_0_12 is
  port (
    A : in STD_LOGIC_VECTOR ( 38 downto 0 );
    B : in STD_LOGIC_VECTOR ( 38 downto 0 );
    CLK : in STD_LOGIC;
    ADD : in STD_LOGIC;
    C_IN : in STD_LOGIC;
    CE : in STD_LOGIC;
    BYPASS : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SSET : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    C_OUT : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  attribute C_ADD_MODE : integer;
  attribute C_ADD_MODE of add_39_39_c_addsub_v12_0_12 : entity is 0;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of add_39_39_c_addsub_v12_0_12 : entity is "0";
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of add_39_39_c_addsub_v12_0_12 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of add_39_39_c_addsub_v12_0_12 : entity is 39;
  attribute C_BORROW_LOW : integer;
  attribute C_BORROW_LOW of add_39_39_c_addsub_v12_0_12 : entity is 1;
  attribute C_BYPASS_LOW : integer;
  attribute C_BYPASS_LOW of add_39_39_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_CONSTANT : integer;
  attribute C_B_CONSTANT of add_39_39_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of add_39_39_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of add_39_39_c_addsub_v12_0_12 : entity is "000000000000000000000000000000000000000";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of add_39_39_c_addsub_v12_0_12 : entity is 39;
  attribute C_CE_OVERRIDES_BYPASS : integer;
  attribute C_CE_OVERRIDES_BYPASS of add_39_39_c_addsub_v12_0_12 : entity is 1;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of add_39_39_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_BYPASS : integer;
  attribute C_HAS_BYPASS of add_39_39_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of add_39_39_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_C_IN : integer;
  attribute C_HAS_C_IN of add_39_39_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_C_OUT : integer;
  attribute C_HAS_C_OUT of add_39_39_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of add_39_39_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of add_39_39_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of add_39_39_c_addsub_v12_0_12 : entity is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of add_39_39_c_addsub_v12_0_12 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of add_39_39_c_addsub_v12_0_12 : entity is 0;
  attribute C_OUT_WIDTH : integer;
  attribute C_OUT_WIDTH of add_39_39_c_addsub_v12_0_12 : entity is 40;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of add_39_39_c_addsub_v12_0_12 : entity is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of add_39_39_c_addsub_v12_0_12 : entity is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of add_39_39_c_addsub_v12_0_12 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of add_39_39_c_addsub_v12_0_12 : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_39_39_c_addsub_v12_0_12 : entity is "c_addsub_v12_0_12";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of add_39_39_c_addsub_v12_0_12 : entity is "yes";
end add_39_39_c_addsub_v12_0_12;

architecture STRUCTURE of add_39_39_c_addsub_v12_0_12 is
  signal \<const0>\ : STD_LOGIC;
begin
  C_OUT <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xst_addsub: entity work.add_39_39_c_addsub_v12_0_12_viv
     port map (
      A(38 downto 0) => A(38 downto 0),
      B(38 downto 0) => B(38 downto 0),
      S(39 downto 0) => S(39 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_39_39 is
  port (
    A : in STD_LOGIC_VECTOR ( 38 downto 0 );
    B : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S : out STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of add_39_39 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of add_39_39 : entity is "add_39_39,c_addsub_v12_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of add_39_39 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of add_39_39 : entity is "c_addsub_v12_0_12,Vivado 2018.3";
end add_39_39;

architecture STRUCTURE of add_39_39 is
  signal NLW_U0_C_OUT_UNCONNECTED : STD_LOGIC;
  attribute C_BORROW_LOW : integer;
  attribute C_BORROW_LOW of U0 : label is 1;
  attribute C_CE_OVERRIDES_BYPASS : integer;
  attribute C_CE_OVERRIDES_BYPASS of U0 : label is 1;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of U0 : label is 0;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of U0 : label is 1;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute c_a_type : integer;
  attribute c_a_type of U0 : label is 0;
  attribute c_a_width : integer;
  attribute c_a_width of U0 : label is 39;
  attribute c_add_mode : integer;
  attribute c_add_mode of U0 : label is 0;
  attribute c_ainit_val : string;
  attribute c_ainit_val of U0 : label is "0";
  attribute c_b_constant : integer;
  attribute c_b_constant of U0 : label is 0;
  attribute c_b_type : integer;
  attribute c_b_type of U0 : label is 0;
  attribute c_b_value : string;
  attribute c_b_value of U0 : label is "000000000000000000000000000000000000000";
  attribute c_b_width : integer;
  attribute c_b_width of U0 : label is 39;
  attribute c_bypass_low : integer;
  attribute c_bypass_low of U0 : label is 0;
  attribute c_has_bypass : integer;
  attribute c_has_bypass of U0 : label is 0;
  attribute c_has_c_in : integer;
  attribute c_has_c_in of U0 : label is 0;
  attribute c_has_c_out : integer;
  attribute c_has_c_out of U0 : label is 0;
  attribute c_has_ce : integer;
  attribute c_has_ce of U0 : label is 0;
  attribute c_has_sclr : integer;
  attribute c_has_sclr of U0 : label is 0;
  attribute c_has_sinit : integer;
  attribute c_has_sinit of U0 : label is 0;
  attribute c_has_sset : integer;
  attribute c_has_sset of U0 : label is 0;
  attribute c_latency : integer;
  attribute c_latency of U0 : label is 0;
  attribute c_out_width : integer;
  attribute c_out_width of U0 : label is 40;
  attribute c_sinit_val : string;
  attribute c_sinit_val of U0 : label is "0";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute x_interface_parameter of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute x_interface_info of S : signal is "xilinx.com:signal:data:1.0 s_intf DATA";
  attribute x_interface_parameter of S : signal is "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef";
begin
U0: entity work.add_39_39_c_addsub_v12_0_12
     port map (
      A(38 downto 0) => A(38 downto 0),
      ADD => '1',
      B(38 downto 0) => B(38 downto 0),
      BYPASS => '0',
      CE => '1',
      CLK => '0',
      C_IN => '0',
      C_OUT => NLW_U0_C_OUT_UNCONNECTED,
      S(39 downto 0) => S(39 downto 0),
      SCLR => '0',
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
