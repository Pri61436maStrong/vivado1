-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Aug 12 16:03:07 2024
-- Host        : aic-ts running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/mult_data/mult_data_sim_netlist.vhdl
-- Design      : mult_data
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z100ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mult_data_dsp is
  port (
    P : out STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mult_data_dsp : entity is "dsp";
end mult_data_dsp;

architecture STRUCTURE of mult_data_dsp is
  signal NLW_multOp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_multOp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_multOp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_multOp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_multOp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_multOp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of multOp : label is "{SYNTH-13 {cell *THIS*}}";
begin
multOp: unisim.vcomponents.DSP48E1
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
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => A(15),
      A(28) => A(15),
      A(27) => A(15),
      A(26) => A(15),
      A(25) => A(15),
      A(24) => A(15),
      A(23) => A(15),
      A(22) => A(15),
      A(21) => A(15),
      A(20) => A(15),
      A(19) => A(15),
      A(18) => A(15),
      A(17) => A(15),
      A(16) => A(15),
      A(15 downto 0) => A(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_multOp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => B(15),
      B(16) => B(15),
      B(15 downto 0) => B(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_multOp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_multOp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_multOp_CARRYOUT_UNCONNECTED(3 downto 0),
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
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_multOp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_multOp_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_multOp_P_UNCONNECTED(47 downto 32),
      P(31 downto 0) => P(31 downto 0),
      PATTERNBDETECT => NLW_multOp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_multOp_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_multOp_PCOUT_UNCONNECTED(47 downto 0),
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
      UNDERFLOW => NLW_multOp_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mult_data_mult_gen_v12_0_14_viv is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    ZERO_DETECT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PCASC : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of mult_data_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of mult_data_mult_gen_v12_0_14_viv : entity is 16;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of mult_data_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of mult_data_mult_gen_v12_0_14_viv : entity is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of mult_data_mult_gen_v12_0_14_viv : entity is 16;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of mult_data_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of mult_data_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of mult_data_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of mult_data_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of mult_data_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of mult_data_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of mult_data_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of mult_data_mult_gen_v12_0_14_viv : entity is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of mult_data_mult_gen_v12_0_14_viv : entity is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of mult_data_mult_gen_v12_0_14_viv : entity is 31;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of mult_data_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of mult_data_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of mult_data_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of mult_data_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of mult_data_mult_gen_v12_0_14_viv : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mult_data_mult_gen_v12_0_14_viv : entity is "mult_gen_v12_0_14_viv";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_data_mult_gen_v12_0_14_viv : entity is "yes";
end mult_data_mult_gen_v12_0_14_viv;

architecture STRUCTURE of mult_data_mult_gen_v12_0_14_viv is
  signal \<const0>\ : STD_LOGIC;
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
  ZERO_DETECT(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gDSP.gDSP_only.iDSP\: entity work.mult_data_dsp
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(15 downto 0) => B(15 downto 0),
      P(31 downto 0) => P(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mult_data_mult_gen_v12_0_14 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    ZERO_DETECT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PCASC : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of mult_data_mult_gen_v12_0_14 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of mult_data_mult_gen_v12_0_14 : entity is 16;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of mult_data_mult_gen_v12_0_14 : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of mult_data_mult_gen_v12_0_14 : entity is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of mult_data_mult_gen_v12_0_14 : entity is 16;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of mult_data_mult_gen_v12_0_14 : entity is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of mult_data_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of mult_data_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of mult_data_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of mult_data_mult_gen_v12_0_14 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of mult_data_mult_gen_v12_0_14 : entity is 0;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of mult_data_mult_gen_v12_0_14 : entity is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of mult_data_mult_gen_v12_0_14 : entity is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of mult_data_mult_gen_v12_0_14 : entity is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of mult_data_mult_gen_v12_0_14 : entity is 31;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of mult_data_mult_gen_v12_0_14 : entity is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of mult_data_mult_gen_v12_0_14 : entity is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of mult_data_mult_gen_v12_0_14 : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of mult_data_mult_gen_v12_0_14 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of mult_data_mult_gen_v12_0_14 : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mult_data_mult_gen_v12_0_14 : entity is "mult_gen_v12_0_14";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_data_mult_gen_v12_0_14 : entity is "yes";
end mult_data_mult_gen_v12_0_14;

architecture STRUCTURE of mult_data_mult_gen_v12_0_14 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_i_mult_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_i_mult_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE of i_mult : label is 0;
  attribute C_A_WIDTH of i_mult : label is 16;
  attribute C_B_TYPE of i_mult : label is 0;
  attribute C_B_VALUE of i_mult : label is "10000001";
  attribute C_B_WIDTH of i_mult : label is 16;
  attribute C_CCM_IMP of i_mult : label is 0;
  attribute C_CE_OVERRIDES_SCLR of i_mult : label is 0;
  attribute C_HAS_CE of i_mult : label is 0;
  attribute C_HAS_SCLR of i_mult : label is 0;
  attribute C_HAS_ZERO_DETECT of i_mult : label is 0;
  attribute C_LATENCY of i_mult : label is 0;
  attribute C_MODEL_TYPE of i_mult : label is 0;
  attribute C_MULT_TYPE of i_mult : label is 1;
  attribute C_OPTIMIZE_GOAL of i_mult : label is 1;
  attribute C_OUT_HIGH of i_mult : label is 31;
  attribute C_OUT_LOW of i_mult : label is 0;
  attribute C_ROUND_OUTPUT of i_mult : label is 0;
  attribute C_ROUND_PT of i_mult : label is 0;
  attribute C_VERBOSITY of i_mult : label is 0;
  attribute C_XDEVICEFAMILY of i_mult : label is "zynq";
  attribute downgradeipidentifiedwarnings of i_mult : label is "yes";
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
  ZERO_DETECT(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_mult: entity work.mult_data_mult_gen_v12_0_14_viv
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(15 downto 0) => B(15 downto 0),
      CE => '0',
      CLK => '0',
      P(31 downto 0) => P(31 downto 0),
      PCASC(47 downto 0) => NLW_i_mult_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_i_mult_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mult_data is
  port (
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mult_data : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mult_data : entity is "mult_data,mult_gen_v12_0_14,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_data : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mult_data : entity is "mult_gen_v12_0_14,Vivado 2018.3";
end mult_data;

architecture STRUCTURE of mult_data is
  signal NLW_U0_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_U0_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of U0 : label is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 16;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of U0 : label is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of U0 : label is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 16;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of U0 : label is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 0;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of U0 : label is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of U0 : label is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of U0 : label is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of U0 : label is 31;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of U0 : label is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of U0 : label is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of U0 : label is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute x_interface_parameter of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute x_interface_info of P : signal is "xilinx.com:signal:data:1.0 p_intf DATA";
  attribute x_interface_parameter of P : signal is "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef";
begin
U0: entity work.mult_data_mult_gen_v12_0_14
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(15 downto 0) => B(15 downto 0),
      CE => '1',
      CLK => '1',
      P(31 downto 0) => P(31 downto 0),
      PCASC(47 downto 0) => NLW_U0_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_U0_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
