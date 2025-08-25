-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Aug 12 16:06:21 2024
-- Host        : aic-ts running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/norm/mult_32x25/mult_32x25_sim_netlist.vhdl
-- Design      : mult_32x25
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z100ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mult_32x25_delay_line__parameterized3\ is
  port (
    P : out STD_LOGIC_VECTOR ( 16 downto 0 );
    D : in STD_LOGIC_VECTOR ( 16 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mult_32x25_delay_line__parameterized3\ : entity is "delay_line";
end \mult_32x25_delay_line__parameterized3\;

architecture STRUCTURE of \mult_32x25_delay_line__parameterized3\ is
  attribute KEEP : string;
  attribute KEEP of \d1.dout_i_reg[0]\ : label is "false";
  attribute KEEP of \d1.dout_i_reg[10]\ : label is "false";
  attribute KEEP of \d1.dout_i_reg[11]\ : label is "false";
  attribute KEEP of \d1.dout_i_reg[12]\ : label is "false";
  attribute KEEP of \d1.dout_i_reg[13]\ : label is "false";
  attribute KEEP of \d1.dout_i_reg[14]\ : label is "false";
  attribute KEEP of \d1.dout_i_reg[15]\ : label is "false";
  attribute KEEP of \d1.dout_i_reg[16]\ : label is "false";
  attribute KEEP of \d1.dout_i_reg[1]\ : label is "false";
  attribute KEEP of \d1.dout_i_reg[2]\ : label is "false";
  attribute KEEP of \d1.dout_i_reg[3]\ : label is "false";
  attribute KEEP of \d1.dout_i_reg[4]\ : label is "false";
  attribute KEEP of \d1.dout_i_reg[5]\ : label is "false";
  attribute KEEP of \d1.dout_i_reg[6]\ : label is "false";
  attribute KEEP of \d1.dout_i_reg[7]\ : label is "false";
  attribute KEEP of \d1.dout_i_reg[8]\ : label is "false";
  attribute KEEP of \d1.dout_i_reg[9]\ : label is "false";
begin
\d1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => P(0),
      R => '0'
    );
\d1.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(10),
      Q => P(10),
      R => '0'
    );
\d1.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(11),
      Q => P(11),
      R => '0'
    );
\d1.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(12),
      Q => P(12),
      R => '0'
    );
\d1.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(13),
      Q => P(13),
      R => '0'
    );
\d1.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(14),
      Q => P(14),
      R => '0'
    );
\d1.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(15),
      Q => P(15),
      R => '0'
    );
\d1.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(16),
      Q => P(16),
      R => '0'
    );
\d1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(1),
      Q => P(1),
      R => '0'
    );
\d1.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(2),
      Q => P(2),
      R => '0'
    );
\d1.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(3),
      Q => P(3),
      R => '0'
    );
\d1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(4),
      Q => P(4),
      R => '0'
    );
\d1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(5),
      Q => P(5),
      R => '0'
    );
\d1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(6),
      Q => P(6),
      R => '0'
    );
\d1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(7),
      Q => P(7),
      R => '0'
    );
\d1.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(8),
      Q => P(8),
      R => '0'
    );
\d1.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(9),
      Q => P(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mult_32x25_dsp is
  port (
    P : out STD_LOGIC_VECTOR ( 56 downto 0 );
    PCASC : out STD_LOGIC_VECTOR ( 47 downto 0 );
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 24 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mult_32x25_dsp : entity is "dsp";
end mult_32x25_dsp;

architecture STRUCTURE of mult_32x25_dsp is
  signal \acout[0,0]\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \pcout[0,0]\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \pi[0,0]5_out\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \pi[0,1]1_out\ : STD_LOGIC_VECTOR ( 42 downto 40 );
  signal \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_P_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 43 );
  attribute box_type : string;
  attribute box_type of \use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1\ : label is "PRIMITIVE";
  attribute box_type of \use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1\ : label is "PRIMITIVE";
begin
\use_prim.appDSP48[0].bppDSP48[0].need_output_delay.output_delay\: entity work.\mult_32x25_delay_line__parameterized3\
     port map (
      CLK => CLK,
      D(16 downto 0) => \pi[0,0]5_out\(16 downto 0),
      P(16 downto 0) => P(16 downto 0)
    );
\use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
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
      MASK => X"000000000000",
      MREG => 1,
      OPMODEREG => 1,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 25) => B"00000",
      A(24 downto 0) => B(24 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \acout[0,0]\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => A(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '1',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => CLK,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_OVERFLOW_UNCONNECTED\,
      P(47 downto 17) => \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_P_UNCONNECTED\(47 downto 17),
      P(16 downto 0) => \pi[0,0]5_out\(16 downto 0),
      PATTERNBDETECT => \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_use_prim.appDSP48[0].bppDSP48[0].use_dsp.use_dsp48e1.iDSP48E1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => \pcout[0,0]\(47 downto 0),
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
\use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 1,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 2,
      BREG => 2,
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
      MASK => X"000000000000",
      MREG => 1,
      OPMODEREG => 1,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29 downto 0) => \acout[0,0]\(29 downto 0),
      ACOUT(29 downto 0) => \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => A(31),
      B(16) => A(31),
      B(15) => A(31),
      B(14 downto 0) => A(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '1',
      CEB1 => '1',
      CEB2 => '1',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '1',
      CED => '0',
      CEINMODE => '0',
      CEM => '1',
      CEP => '1',
      CLK => CLK,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_OVERFLOW_UNCONNECTED\,
      P(47 downto 43) => \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_P_UNCONNECTED\(47 downto 43),
      P(42 downto 40) => \pi[0,1]1_out\(42 downto 40),
      P(39 downto 0) => P(56 downto 17),
      PATTERNBDETECT => \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => \pcout[0,0]\(47 downto 0),
      PCOUT(47 downto 0) => PCASC(47 downto 0),
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
      UNDERFLOW => \NLW_use_prim.appDSP48[0].bppDSP48[1].use_dsp.use_dsp48e1.iDSP48E1_UNDERFLOW_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mult_32x25_mult_gen_v12_0_14_viv is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 24 downto 0 );
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    ZERO_DETECT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    P : out STD_LOGIC_VECTOR ( 56 downto 0 );
    PCASC : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of mult_32x25_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of mult_32x25_mult_gen_v12_0_14_viv : entity is 32;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of mult_32x25_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of mult_32x25_mult_gen_v12_0_14_viv : entity is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of mult_32x25_mult_gen_v12_0_14_viv : entity is 25;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of mult_32x25_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of mult_32x25_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of mult_32x25_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of mult_32x25_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of mult_32x25_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of mult_32x25_mult_gen_v12_0_14_viv : entity is 4;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of mult_32x25_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of mult_32x25_mult_gen_v12_0_14_viv : entity is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of mult_32x25_mult_gen_v12_0_14_viv : entity is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of mult_32x25_mult_gen_v12_0_14_viv : entity is 56;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of mult_32x25_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of mult_32x25_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of mult_32x25_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of mult_32x25_mult_gen_v12_0_14_viv : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of mult_32x25_mult_gen_v12_0_14_viv : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mult_32x25_mult_gen_v12_0_14_viv : entity is "mult_gen_v12_0_14_viv";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_32x25_mult_gen_v12_0_14_viv : entity is "yes";
end mult_32x25_mult_gen_v12_0_14_viv;

architecture STRUCTURE of mult_32x25_mult_gen_v12_0_14_viv is
  signal \<const0>\ : STD_LOGIC;
begin
  ZERO_DETECT(1) <= \<const0>\;
  ZERO_DETECT(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gDSP.gDSP_only.iDSP\: entity work.mult_32x25_dsp
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(24 downto 0) => B(24 downto 0),
      CLK => CLK,
      P(56 downto 0) => P(56 downto 0),
      PCASC(47 downto 0) => PCASC(47 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mult_32x25_mult_gen_v12_0_14 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 24 downto 0 );
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    ZERO_DETECT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    P : out STD_LOGIC_VECTOR ( 56 downto 0 );
    PCASC : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of mult_32x25_mult_gen_v12_0_14 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of mult_32x25_mult_gen_v12_0_14 : entity is 32;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of mult_32x25_mult_gen_v12_0_14 : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of mult_32x25_mult_gen_v12_0_14 : entity is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of mult_32x25_mult_gen_v12_0_14 : entity is 25;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of mult_32x25_mult_gen_v12_0_14 : entity is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of mult_32x25_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of mult_32x25_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of mult_32x25_mult_gen_v12_0_14 : entity is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of mult_32x25_mult_gen_v12_0_14 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of mult_32x25_mult_gen_v12_0_14 : entity is 4;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of mult_32x25_mult_gen_v12_0_14 : entity is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of mult_32x25_mult_gen_v12_0_14 : entity is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of mult_32x25_mult_gen_v12_0_14 : entity is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of mult_32x25_mult_gen_v12_0_14 : entity is 56;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of mult_32x25_mult_gen_v12_0_14 : entity is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of mult_32x25_mult_gen_v12_0_14 : entity is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of mult_32x25_mult_gen_v12_0_14 : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of mult_32x25_mult_gen_v12_0_14 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of mult_32x25_mult_gen_v12_0_14 : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mult_32x25_mult_gen_v12_0_14 : entity is "mult_gen_v12_0_14";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_32x25_mult_gen_v12_0_14 : entity is "yes";
end mult_32x25_mult_gen_v12_0_14;

architecture STRUCTURE of mult_32x25_mult_gen_v12_0_14 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_i_mult_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE of i_mult : label is 0;
  attribute C_A_WIDTH of i_mult : label is 32;
  attribute C_B_TYPE of i_mult : label is 0;
  attribute C_B_VALUE of i_mult : label is "10000001";
  attribute C_B_WIDTH of i_mult : label is 25;
  attribute C_CCM_IMP of i_mult : label is 0;
  attribute C_CE_OVERRIDES_SCLR of i_mult : label is 0;
  attribute C_HAS_CE of i_mult : label is 0;
  attribute C_HAS_SCLR of i_mult : label is 0;
  attribute C_HAS_ZERO_DETECT of i_mult : label is 0;
  attribute C_LATENCY of i_mult : label is 4;
  attribute C_MODEL_TYPE of i_mult : label is 0;
  attribute C_MULT_TYPE of i_mult : label is 1;
  attribute C_OPTIMIZE_GOAL of i_mult : label is 1;
  attribute C_OUT_HIGH of i_mult : label is 56;
  attribute C_OUT_LOW of i_mult : label is 0;
  attribute C_ROUND_OUTPUT of i_mult : label is 0;
  attribute C_ROUND_PT of i_mult : label is 0;
  attribute C_VERBOSITY of i_mult : label is 0;
  attribute C_XDEVICEFAMILY of i_mult : label is "zynq";
  attribute downgradeipidentifiedwarnings of i_mult : label is "yes";
begin
  ZERO_DETECT(1) <= \<const0>\;
  ZERO_DETECT(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_mult: entity work.mult_32x25_mult_gen_v12_0_14_viv
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(24 downto 0) => B(24 downto 0),
      CE => '0',
      CLK => CLK,
      P(56 downto 0) => P(56 downto 0),
      PCASC(47 downto 0) => PCASC(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_i_mult_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mult_32x25 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 24 downto 0 );
    P : out STD_LOGIC_VECTOR ( 56 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mult_32x25 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mult_32x25 : entity is "mult_32x25,mult_gen_v12_0_14,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_32x25 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mult_32x25 : entity is "mult_gen_v12_0_14,Vivado 2018.3";
end mult_32x25;

architecture STRUCTURE of mult_32x25 is
  signal NLW_U0_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_U0_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of U0 : label is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 32;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of U0 : label is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of U0 : label is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 25;
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
  attribute C_LATENCY of U0 : label is 4;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of U0 : label is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of U0 : label is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of U0 : label is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of U0 : label is 56;
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
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute x_interface_parameter of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute x_interface_info of P : signal is "xilinx.com:signal:data:1.0 p_intf DATA";
  attribute x_interface_parameter of P : signal is "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef";
begin
U0: entity work.mult_32x25_mult_gen_v12_0_14
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(24 downto 0) => B(24 downto 0),
      CE => '1',
      CLK => CLK,
      P(56 downto 0) => P(56 downto 0),
      PCASC(47 downto 0) => NLW_U0_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_U0_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
