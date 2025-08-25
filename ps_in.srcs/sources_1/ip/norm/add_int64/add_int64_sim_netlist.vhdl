-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Aug 12 16:06:13 2024
-- Host        : aic-ts running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/norm/add_int64/add_int64_sim_netlist.vhdl
-- Design      : add_int64
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z100ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_int64_c_reg_fd_v12_0_5_viv is
  port (
    \pipecarry[2,2]\ : out STD_LOGIC;
    D3_out : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_int64_c_reg_fd_v12_0_5_viv : entity is "c_reg_fd_v12_0_5_viv";
end add_int64_c_reg_fd_v12_0_5_viv;

architecture STRUCTURE of add_int64_c_reg_fd_v12_0_5_viv is
begin
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D3_out,
      Q => \pipecarry[2,2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_int64_c_reg_fd_v12_0_5_viv_0 is
  port (
    D2_out : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    diagonal_c_out_3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_int64_c_reg_fd_v12_0_5_viv_0 : entity is "c_reg_fd_v12_0_5_viv";
end add_int64_c_reg_fd_v12_0_5_viv_0;

architecture STRUCTURE of add_int64_c_reg_fd_v12_0_5_viv_0 is
  signal \i_no_async_controls.output_reg_n_0_[1]\ : STD_LOGIC;
begin
\i_no_async_controls.output[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \i_no_async_controls.output_reg_n_0_[1]\,
      I1 => diagonal_c_out_3,
      O => D2_out
    );
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[1]_0\,
      Q => \i_no_async_controls.output_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_int64_c_reg_fd_v12_0_5_viv_1 is
  port (
    \i_no_async_controls.output_reg[1]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]_1\ : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_int64_c_reg_fd_v12_0_5_viv_1 : entity is "c_reg_fd_v12_0_5_viv";
end add_int64_c_reg_fd_v12_0_5_viv_1;

architecture STRUCTURE of add_int64_c_reg_fd_v12_0_5_viv_1 is
begin
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[1]_1\,
      Q => \i_no_async_controls.output_reg[1]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_int64_c_reg_fd_v12_0_5_viv_17 is
  port (
    \pipecarry[5,5]\ : out STD_LOGIC;
    D0_out : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_int64_c_reg_fd_v12_0_5_viv_17 : entity is "c_reg_fd_v12_0_5_viv";
end add_int64_c_reg_fd_v12_0_5_viv_17;

architecture STRUCTURE of add_int64_c_reg_fd_v12_0_5_viv_17 is
begin
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D0_out,
      Q => \pipecarry[5,5]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_int64_c_reg_fd_v12_0_5_viv_3 is
  port (
    \pipecarry[3,3]\ : out STD_LOGIC;
    D2_out : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_int64_c_reg_fd_v12_0_5_viv_3 : entity is "c_reg_fd_v12_0_5_viv";
end add_int64_c_reg_fd_v12_0_5_viv_3;

architecture STRUCTURE of add_int64_c_reg_fd_v12_0_5_viv_3 is
begin
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D2_out,
      Q => \pipecarry[3,3]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_int64_c_reg_fd_v12_0_5_viv_35 is
  port (
    \i_no_async_controls.output_reg[1]_0\ : out STD_LOGIC;
    carry_simple_10 : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_int64_c_reg_fd_v12_0_5_viv_35 : entity is "c_reg_fd_v12_0_5_viv";
end add_int64_c_reg_fd_v12_0_5_viv_35;

architecture STRUCTURE of add_int64_c_reg_fd_v12_0_5_viv_35 is
begin
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => carry_simple_10,
      Q => \i_no_async_controls.output_reg[1]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_int64_c_reg_fd_v12_0_5_viv_37 is
  port (
    \i_no_async_controls.output_reg[1]_0\ : out STD_LOGIC;
    carry_simple_9 : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_int64_c_reg_fd_v12_0_5_viv_37 : entity is "c_reg_fd_v12_0_5_viv";
end add_int64_c_reg_fd_v12_0_5_viv_37;

architecture STRUCTURE of add_int64_c_reg_fd_v12_0_5_viv_37 is
begin
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => carry_simple_9,
      Q => \i_no_async_controls.output_reg[1]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_int64_c_reg_fd_v12_0_5_viv_39 is
  port (
    \i_no_async_controls.output_reg[1]_0\ : out STD_LOGIC;
    carry_simple_10 : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_int64_c_reg_fd_v12_0_5_viv_39 : entity is "c_reg_fd_v12_0_5_viv";
end add_int64_c_reg_fd_v12_0_5_viv_39;

architecture STRUCTURE of add_int64_c_reg_fd_v12_0_5_viv_39 is
begin
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => carry_simple_10,
      Q => \i_no_async_controls.output_reg[1]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_int64_c_reg_fd_v12_0_5_viv_4 is
  port (
    D1_out : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    diagonal_c_out_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_int64_c_reg_fd_v12_0_5_viv_4 : entity is "c_reg_fd_v12_0_5_viv";
end add_int64_c_reg_fd_v12_0_5_viv_4;

architecture STRUCTURE of add_int64_c_reg_fd_v12_0_5_viv_4 is
  signal \i_no_async_controls.output_reg_n_0_[1]\ : STD_LOGIC;
begin
\i_no_async_controls.output[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \i_no_async_controls.output_reg_n_0_[1]\,
      I1 => diagonal_c_out_2,
      O => D1_out
    );
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[1]_0\,
      Q => \i_no_async_controls.output_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_int64_c_reg_fd_v12_0_5_viv_41 is
  port (
    D3_out : out STD_LOGIC;
    carry_simple_10 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    diagonal_c_out_4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_int64_c_reg_fd_v12_0_5_viv_41 : entity is "c_reg_fd_v12_0_5_viv";
end add_int64_c_reg_fd_v12_0_5_viv_41;

architecture STRUCTURE of add_int64_c_reg_fd_v12_0_5_viv_41 is
  signal \pipecarry[1,2]\ : STD_LOGIC;
begin
\i_no_async_controls.output[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \pipecarry[1,2]\,
      I1 => diagonal_c_out_4,
      O => D3_out
    );
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => carry_simple_10,
      Q => \pipecarry[1,2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_int64_c_reg_fd_v12_0_5_viv_43 is
  port (
    \pipecarry[1,1]\ : out STD_LOGIC;
    carry_simple_9 : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_int64_c_reg_fd_v12_0_5_viv_43 : entity is "c_reg_fd_v12_0_5_viv";
end add_int64_c_reg_fd_v12_0_5_viv_43;

architecture STRUCTURE of add_int64_c_reg_fd_v12_0_5_viv_43 is
begin
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => carry_simple_9,
      Q => \pipecarry[1,1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_int64_c_reg_fd_v12_0_5_viv_6 is
  port (
    \i_no_async_controls.output_reg[1]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_int64_c_reg_fd_v12_0_5_viv_6 : entity is "c_reg_fd_v12_0_5_viv";
end add_int64_c_reg_fd_v12_0_5_viv_6;

architecture STRUCTURE of add_int64_c_reg_fd_v12_0_5_viv_6 is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \i_no_async_controls.output_reg[1]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.carryregister/i_no_async_controls.output_reg ";
  attribute srl_name : string;
  attribute srl_name of \i_no_async_controls.output_reg[1]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.carryregister/i_no_async_controls.output_reg[1]_srl2 ";
begin
\i_no_async_controls.output_reg[1]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[1]_0\,
      Q => \i_no_async_controls.output_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_int64_c_reg_fd_v12_0_5_viv_8 is
  port (
    \pipecarry[4,4]\ : out STD_LOGIC;
    D1_out : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_int64_c_reg_fd_v12_0_5_viv_8 : entity is "c_reg_fd_v12_0_5_viv";
end add_int64_c_reg_fd_v12_0_5_viv_8;

architecture STRUCTURE of add_int64_c_reg_fd_v12_0_5_viv_8 is
begin
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D1_out,
      Q => \pipecarry[4,4]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_int64_c_reg_fd_v12_0_5_viv_9 is
  port (
    D0_out : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    diagonal_c_out_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_int64_c_reg_fd_v12_0_5_viv_9 : entity is "c_reg_fd_v12_0_5_viv";
end add_int64_c_reg_fd_v12_0_5_viv_9;

architecture STRUCTURE of add_int64_c_reg_fd_v12_0_5_viv_9 is
  signal \i_no_async_controls.output_reg_n_0_[1]\ : STD_LOGIC;
begin
\i_no_async_controls.output[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \i_no_async_controls.output_reg_n_0_[1]\,
      I1 => diagonal_c_out_1,
      O => D0_out
    );
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[1]_0\,
      Q => \i_no_async_controls.output_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized1\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized1\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized1\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized1\ is
begin
\i_no_async_controls.output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(9),
      Q => Q(9),
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
      Q => Q(0),
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
      Q => Q(1),
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
      Q => Q(2),
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
      Q => Q(3),
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
      Q => Q(4),
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
      Q => Q(5),
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
      Q => Q(6),
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
      Q => Q(7),
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
      Q => Q(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_12\ is
  port (
    \i_no_async_controls.output_reg[10]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[9]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[8]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[7]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[6]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[5]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[4]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[3]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[2]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[10]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    \i_no_async_controls.output_reg[9]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[8]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[7]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[6]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[5]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[4]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[3]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[2]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_12\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_12\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_12\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \i_no_async_controls.output_reg[10]_srl4\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name : string;
  attribute srl_name of \i_no_async_controls.output_reg[10]_srl4\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[10]_srl4 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[1]_srl4\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[1]_srl4\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[1]_srl4 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[2]_srl4\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[2]_srl4\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[2]_srl4 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[3]_srl4\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[3]_srl4\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[3]_srl4 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[4]_srl4\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[4]_srl4\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[4]_srl4 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[5]_srl4\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[5]_srl4\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[5]_srl4 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[6]_srl4\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[6]_srl4\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[6]_srl4 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[7]_srl4\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[7]_srl4\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[7]_srl4 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[8]_srl4\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[8]_srl4\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[8]_srl4 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[9]_srl4\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[9]_srl4\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[9]_srl4 ";
begin
\i_no_async_controls.output_reg[10]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[10]_0\,
      Q => \i_no_async_controls.output_reg[10]\
    );
\i_no_async_controls.output_reg[1]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[1]_0\,
      Q => \i_no_async_controls.output_reg[1]\
    );
\i_no_async_controls.output_reg[2]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[2]_0\,
      Q => \i_no_async_controls.output_reg[2]\
    );
\i_no_async_controls.output_reg[3]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[3]_0\,
      Q => \i_no_async_controls.output_reg[3]\
    );
\i_no_async_controls.output_reg[4]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[4]_0\,
      Q => \i_no_async_controls.output_reg[4]\
    );
\i_no_async_controls.output_reg[5]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[5]_0\,
      Q => \i_no_async_controls.output_reg[5]\
    );
\i_no_async_controls.output_reg[6]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[6]_0\,
      Q => \i_no_async_controls.output_reg[6]\
    );
\i_no_async_controls.output_reg[7]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[7]_0\,
      Q => \i_no_async_controls.output_reg[7]\
    );
\i_no_async_controls.output_reg[8]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[8]_0\,
      Q => \i_no_async_controls.output_reg[8]\
    );
\i_no_async_controls.output_reg[9]_srl4\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[9]_0\,
      Q => \i_no_async_controls.output_reg[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_15\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_15\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_15\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_15\ is
begin
\i_no_async_controls.output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(9),
      Q => Q(9),
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
      Q => Q(0),
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
      Q => Q(1),
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
      Q => Q(2),
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
      Q => Q(3),
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
      Q => Q(4),
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
      Q => Q(5),
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
      Q => Q(6),
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
      Q => Q(7),
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
      Q => Q(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_19\ is
  port (
    S : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \i_no_async_controls.output_reg[10]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    \i_no_async_controls.output_reg[9]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[8]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[7]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[6]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[5]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[4]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[3]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[2]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_19\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_19\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_19\ is
begin
\i_no_async_controls.output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[10]_0\,
      Q => S(9),
      R => '0'
    );
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[1]_0\,
      Q => S(0),
      R => '0'
    );
\i_no_async_controls.output_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[2]_0\,
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
      D => \i_no_async_controls.output_reg[3]_0\,
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
      D => \i_no_async_controls.output_reg[4]_0\,
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
      D => \i_no_async_controls.output_reg[5]_0\,
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
      D => \i_no_async_controls.output_reg[6]_0\,
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
      D => \i_no_async_controls.output_reg[7]_0\,
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
      D => \i_no_async_controls.output_reg[8]_0\,
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
      D => \i_no_async_controls.output_reg[9]_0\,
      Q => S(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_22\ is
  port (
    S : out STD_LOGIC_VECTOR ( 9 downto 0 );
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_22\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_22\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_22\ is
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
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_28\ is
  port (
    \i_no_async_controls.output_reg[10]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_28\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_28\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_28\ is
begin
\i_no_async_controls.output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(9),
      Q => \i_no_async_controls.output_reg[10]_0\(9),
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
      Q => \i_no_async_controls.output_reg[10]_0\(0),
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
      Q => \i_no_async_controls.output_reg[10]_0\(1),
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
      Q => \i_no_async_controls.output_reg[10]_0\(2),
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
      Q => \i_no_async_controls.output_reg[10]_0\(3),
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
      Q => \i_no_async_controls.output_reg[10]_0\(4),
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
      Q => \i_no_async_controls.output_reg[10]_0\(5),
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
      Q => \i_no_async_controls.output_reg[10]_0\(6),
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
      Q => \i_no_async_controls.output_reg[10]_0\(7),
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
      Q => \i_no_async_controls.output_reg[10]_0\(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_36\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_36\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_36\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_36\ is
begin
\i_no_async_controls.output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(9),
      Q => Q(9),
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
      Q => Q(0),
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
      Q => Q(1),
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
      Q => Q(2),
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
      Q => Q(3),
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
      Q => Q(4),
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
      Q => Q(5),
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
      Q => Q(6),
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
      Q => Q(7),
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
      Q => Q(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_42\ is
  port (
    \i_no_async_controls.output_reg[10]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[9]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[8]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[7]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[6]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[5]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[4]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[3]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[2]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : out STD_LOGIC;
    p_0_out : in STD_LOGIC;
    CLK : in STD_LOGIC;
    p_7_out : in STD_LOGIC;
    p_6_out : in STD_LOGIC;
    p_5_out : in STD_LOGIC;
    p_4_out : in STD_LOGIC;
    p_3_out : in STD_LOGIC;
    p_2_out : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\ : in STD_LOGIC;
    \i_simple_model.carryxor0__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_42\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_42\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_42\ is
begin
\i_no_async_controls.output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_out,
      Q => \i_no_async_controls.output_reg[10]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_simple_model.carryxor0__0\,
      Q => \i_no_async_controls.output_reg[1]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\,
      Q => \i_no_async_controls.output_reg[2]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_out,
      Q => \i_no_async_controls.output_reg[3]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_2_out,
      Q => \i_no_async_controls.output_reg[4]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_3_out,
      Q => \i_no_async_controls.output_reg[5]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_4_out,
      Q => \i_no_async_controls.output_reg[6]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_5_out,
      Q => \i_no_async_controls.output_reg[7]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_6_out,
      Q => \i_no_async_controls.output_reg[8]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_7_out,
      Q => \i_no_async_controls.output_reg[9]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_5\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_5\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_5\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized1_5\ is
begin
\i_no_async_controls.output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(9),
      Q => Q(9),
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
      Q => Q(0),
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
      Q => Q(1),
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
      Q => Q(2),
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
      Q => Q(3),
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
      Q => Q(4),
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
      Q => Q(5),
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
      Q => Q(6),
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
      Q => Q(7),
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
      Q => Q(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized4\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized4\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4\ is
begin
\i_no_async_controls.output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(9),
      Q => Q(9),
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
      Q => Q(10),
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
      Q => Q(0),
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
      Q => Q(1),
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
      Q => Q(2),
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
      Q => Q(3),
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
      Q => Q(4),
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
      Q => Q(5),
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
      Q => Q(6),
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
      Q => Q(7),
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
      Q => Q(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_10\ is
  port (
    \piperegs[4]_42\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \i_no_async_controls.output_reg[11]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    \i_no_async_controls.output_reg[10]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[9]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[8]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[7]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[6]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[5]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[4]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[3]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[2]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_10\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_10\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_10\ is
begin
\i_no_async_controls.output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[10]_0\,
      Q => \piperegs[4]_42\(9),
      R => '0'
    );
\i_no_async_controls.output_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[11]_0\,
      Q => \piperegs[4]_42\(10),
      R => '0'
    );
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[1]_0\,
      Q => \piperegs[4]_42\(0),
      R => '0'
    );
\i_no_async_controls.output_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[2]_0\,
      Q => \piperegs[4]_42\(1),
      R => '0'
    );
\i_no_async_controls.output_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[3]_0\,
      Q => \piperegs[4]_42\(2),
      R => '0'
    );
\i_no_async_controls.output_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[4]_0\,
      Q => \piperegs[4]_42\(3),
      R => '0'
    );
\i_no_async_controls.output_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[5]_0\,
      Q => \piperegs[4]_42\(4),
      R => '0'
    );
\i_no_async_controls.output_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[6]_0\,
      Q => \piperegs[4]_42\(5),
      R => '0'
    );
\i_no_async_controls.output_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[7]_0\,
      Q => \piperegs[4]_42\(6),
      R => '0'
    );
\i_no_async_controls.output_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[8]_0\,
      Q => \piperegs[4]_42\(7),
      R => '0'
    );
\i_no_async_controls.output_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[9]_0\,
      Q => \piperegs[4]_42\(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_11\ is
  port (
    \i_no_async_controls.output_reg[11]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[10]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[9]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[8]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[7]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[6]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[5]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[4]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[3]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[2]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[11]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    \i_no_async_controls.output_reg[10]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[9]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[8]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[7]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[6]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[5]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[4]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[3]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[2]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_11\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_11\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_11\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \i_no_async_controls.output_reg[10]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name : string;
  attribute srl_name of \i_no_async_controls.output_reg[10]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[10]_srl3 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[11]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[11]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[11]_srl3 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[1]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[1]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[1]_srl3 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[2]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[2]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[2]_srl3 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[3]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[3]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[3]_srl3 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[4]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[4]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[4]_srl3 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[5]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[5]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[5]_srl3 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[6]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[6]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[6]_srl3 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[7]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[7]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[7]_srl3 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[8]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[8]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[8]_srl3 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[9]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[9]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[9]_srl3 ";
begin
\i_no_async_controls.output_reg[10]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[10]_0\,
      Q => \i_no_async_controls.output_reg[10]\
    );
\i_no_async_controls.output_reg[11]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[11]_0\,
      Q => \i_no_async_controls.output_reg[11]\
    );
\i_no_async_controls.output_reg[1]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[1]_0\,
      Q => \i_no_async_controls.output_reg[1]\
    );
\i_no_async_controls.output_reg[2]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[2]_0\,
      Q => \i_no_async_controls.output_reg[2]\
    );
\i_no_async_controls.output_reg[3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[3]_0\,
      Q => \i_no_async_controls.output_reg[3]\
    );
\i_no_async_controls.output_reg[4]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[4]_0\,
      Q => \i_no_async_controls.output_reg[4]\
    );
\i_no_async_controls.output_reg[5]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[5]_0\,
      Q => \i_no_async_controls.output_reg[5]\
    );
\i_no_async_controls.output_reg[6]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[6]_0\,
      Q => \i_no_async_controls.output_reg[6]\
    );
\i_no_async_controls.output_reg[7]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[7]_0\,
      Q => \i_no_async_controls.output_reg[7]\
    );
\i_no_async_controls.output_reg[8]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[8]_0\,
      Q => \i_no_async_controls.output_reg[8]\
    );
\i_no_async_controls.output_reg[9]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[9]_0\,
      Q => \i_no_async_controls.output_reg[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_13\ is
  port (
    \i_no_async_controls.output_reg[11]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[10]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[9]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[8]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[7]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[6]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[5]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[4]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[3]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[2]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[11]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    \i_no_async_controls.output_reg[10]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[9]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[8]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[7]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[6]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[5]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[4]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[3]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[2]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_13\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_13\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_13\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \i_no_async_controls.output_reg[10]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name : string;
  attribute srl_name of \i_no_async_controls.output_reg[10]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[10]_srl3 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[11]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[11]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[11]_srl3 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[1]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[1]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[1]_srl3 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[2]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[2]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[2]_srl3 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[3]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[3]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[3]_srl3 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[4]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[4]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[4]_srl3 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[5]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[5]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[5]_srl3 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[6]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[6]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[6]_srl3 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[7]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[7]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[7]_srl3 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[8]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[8]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[8]_srl3 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[9]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[9]_srl3\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[9]_srl3 ";
begin
\i_no_async_controls.output_reg[10]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[10]_0\,
      Q => \i_no_async_controls.output_reg[10]\
    );
\i_no_async_controls.output_reg[11]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[11]_0\,
      Q => \i_no_async_controls.output_reg[11]\
    );
\i_no_async_controls.output_reg[1]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[1]_0\,
      Q => \i_no_async_controls.output_reg[1]\
    );
\i_no_async_controls.output_reg[2]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[2]_0\,
      Q => \i_no_async_controls.output_reg[2]\
    );
\i_no_async_controls.output_reg[3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[3]_0\,
      Q => \i_no_async_controls.output_reg[3]\
    );
\i_no_async_controls.output_reg[4]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[4]_0\,
      Q => \i_no_async_controls.output_reg[4]\
    );
\i_no_async_controls.output_reg[5]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[5]_0\,
      Q => \i_no_async_controls.output_reg[5]\
    );
\i_no_async_controls.output_reg[6]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[6]_0\,
      Q => \i_no_async_controls.output_reg[6]\
    );
\i_no_async_controls.output_reg[7]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[7]_0\,
      Q => \i_no_async_controls.output_reg[7]\
    );
\i_no_async_controls.output_reg[8]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[8]_0\,
      Q => \i_no_async_controls.output_reg[8]\
    );
\i_no_async_controls.output_reg[9]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[9]_0\,
      Q => \i_no_async_controls.output_reg[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_14\ is
  port (
    \i_no_async_controls.output_reg[11]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[10]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[9]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[8]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[7]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[6]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[5]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[4]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[3]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[2]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[11]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    \i_no_async_controls.output_reg[10]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[9]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[8]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[7]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[6]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[5]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[4]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[3]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[2]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_14\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_14\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_14\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \i_no_async_controls.output_reg[10]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name : string;
  attribute srl_name of \i_no_async_controls.output_reg[10]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[10]_srl2 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[11]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[11]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[11]_srl2 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[1]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[1]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[1]_srl2 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[2]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[2]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[2]_srl2 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[3]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[3]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[3]_srl2 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[4]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[4]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[4]_srl2 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[5]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[5]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[5]_srl2 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[6]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[6]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[6]_srl2 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[7]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[7]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[7]_srl2 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[8]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[8]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[8]_srl2 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[9]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[9]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister/i_no_async_controls.output_reg[9]_srl2 ";
begin
\i_no_async_controls.output_reg[10]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[10]_0\,
      Q => \i_no_async_controls.output_reg[10]\
    );
\i_no_async_controls.output_reg[11]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[11]_0\,
      Q => \i_no_async_controls.output_reg[11]\
    );
\i_no_async_controls.output_reg[1]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[1]_0\,
      Q => \i_no_async_controls.output_reg[1]\
    );
\i_no_async_controls.output_reg[2]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[2]_0\,
      Q => \i_no_async_controls.output_reg[2]\
    );
\i_no_async_controls.output_reg[3]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[3]_0\,
      Q => \i_no_async_controls.output_reg[3]\
    );
\i_no_async_controls.output_reg[4]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[4]_0\,
      Q => \i_no_async_controls.output_reg[4]\
    );
\i_no_async_controls.output_reg[5]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[5]_0\,
      Q => \i_no_async_controls.output_reg[5]\
    );
\i_no_async_controls.output_reg[6]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[6]_0\,
      Q => \i_no_async_controls.output_reg[6]\
    );
\i_no_async_controls.output_reg[7]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[7]_0\,
      Q => \i_no_async_controls.output_reg[7]\
    );
\i_no_async_controls.output_reg[8]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[8]_0\,
      Q => \i_no_async_controls.output_reg[8]\
    );
\i_no_async_controls.output_reg[9]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[9]_0\,
      Q => \i_no_async_controls.output_reg[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_18\ is
  port (
    \piperegs[5]_53\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \i_no_async_controls.output_reg[11]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    \i_no_async_controls.output_reg[10]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[9]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[8]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[7]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[6]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[5]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[4]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[3]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[2]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_18\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_18\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_18\ is
begin
\i_no_async_controls.output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[10]_0\,
      Q => \piperegs[5]_53\(9),
      R => '0'
    );
\i_no_async_controls.output_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[11]_0\,
      Q => \piperegs[5]_53\(10),
      R => '0'
    );
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[1]_0\,
      Q => \piperegs[5]_53\(0),
      R => '0'
    );
\i_no_async_controls.output_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[2]_0\,
      Q => \piperegs[5]_53\(1),
      R => '0'
    );
\i_no_async_controls.output_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[3]_0\,
      Q => \piperegs[5]_53\(2),
      R => '0'
    );
\i_no_async_controls.output_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[4]_0\,
      Q => \piperegs[5]_53\(3),
      R => '0'
    );
\i_no_async_controls.output_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[5]_0\,
      Q => \piperegs[5]_53\(4),
      R => '0'
    );
\i_no_async_controls.output_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[6]_0\,
      Q => \piperegs[5]_53\(5),
      R => '0'
    );
\i_no_async_controls.output_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[7]_0\,
      Q => \piperegs[5]_53\(6),
      R => '0'
    );
\i_no_async_controls.output_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[8]_0\,
      Q => \piperegs[5]_53\(7),
      R => '0'
    );
\i_no_async_controls.output_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[9]_0\,
      Q => \piperegs[5]_53\(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_20\ is
  port (
    S : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \i_no_async_controls.output_reg[11]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    \i_no_async_controls.output_reg[10]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[9]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[8]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[7]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[6]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[5]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[4]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[3]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[2]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_20\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_20\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_20\ is
begin
\i_no_async_controls.output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[10]_0\,
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
      D => \i_no_async_controls.output_reg[11]_0\,
      Q => S(10),
      R => '0'
    );
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[1]_0\,
      Q => S(0),
      R => '0'
    );
\i_no_async_controls.output_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[2]_0\,
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
      D => \i_no_async_controls.output_reg[3]_0\,
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
      D => \i_no_async_controls.output_reg[4]_0\,
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
      D => \i_no_async_controls.output_reg[5]_0\,
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
      D => \i_no_async_controls.output_reg[6]_0\,
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
      D => \i_no_async_controls.output_reg[7]_0\,
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
      D => \i_no_async_controls.output_reg[8]_0\,
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
      D => \i_no_async_controls.output_reg[9]_0\,
      Q => S(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_21\ is
  port (
    S : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \i_no_async_controls.output_reg[11]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    \i_no_async_controls.output_reg[10]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[9]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[8]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[7]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[6]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[5]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[4]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[3]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[2]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_21\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_21\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_21\ is
begin
\i_no_async_controls.output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[10]_0\,
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
      D => \i_no_async_controls.output_reg[11]_0\,
      Q => S(10),
      R => '0'
    );
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[1]_0\,
      Q => S(0),
      R => '0'
    );
\i_no_async_controls.output_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_no_async_controls.output_reg[2]_0\,
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
      D => \i_no_async_controls.output_reg[3]_0\,
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
      D => \i_no_async_controls.output_reg[4]_0\,
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
      D => \i_no_async_controls.output_reg[5]_0\,
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
      D => \i_no_async_controls.output_reg[6]_0\,
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
      D => \i_no_async_controls.output_reg[7]_0\,
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
      D => \i_no_async_controls.output_reg[8]_0\,
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
      D => \i_no_async_controls.output_reg[9]_0\,
      Q => S(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_23\ is
  port (
    S : out STD_LOGIC_VECTOR ( 10 downto 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_23\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_23\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_23\ is
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
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_25\ is
  port (
    S : out STD_LOGIC_VECTOR ( 10 downto 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_25\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_25\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_25\ is
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
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_27\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_27\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_27\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_27\ is
begin
\i_no_async_controls.output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(9),
      Q => Q(9),
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
      Q => Q(10),
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
      Q => Q(0),
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
      Q => Q(1),
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
      Q => Q(2),
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
      Q => Q(3),
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
      Q => Q(4),
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
      Q => Q(5),
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
      Q => Q(6),
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
      Q => Q(7),
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
      Q => Q(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_30\ is
  port (
    \i_no_async_controls.output_reg[11]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[10]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[9]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[8]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[7]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[6]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[5]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[4]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[3]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[2]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : out STD_LOGIC;
    p_0_out : in STD_LOGIC;
    CLK : in STD_LOGIC;
    p_17_out : in STD_LOGIC;
    p_15_out : in STD_LOGIC;
    p_13_out : in STD_LOGIC;
    p_11_out : in STD_LOGIC;
    p_9_out : in STD_LOGIC;
    p_7_out : in STD_LOGIC;
    p_5_out : in STD_LOGIC;
    p_3_out : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    \i_simple_model.carryxor0__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_30\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_30\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_30\ is
begin
\i_no_async_controls.output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_17_out,
      Q => \i_no_async_controls.output_reg[10]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_out,
      Q => \i_no_async_controls.output_reg[11]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_simple_model.carryxor0__0\,
      Q => \i_no_async_controls.output_reg[1]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_out,
      Q => \i_no_async_controls.output_reg[2]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_3_out,
      Q => \i_no_async_controls.output_reg[3]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_5_out,
      Q => \i_no_async_controls.output_reg[4]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_7_out,
      Q => \i_no_async_controls.output_reg[5]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_9_out,
      Q => \i_no_async_controls.output_reg[6]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_11_out,
      Q => \i_no_async_controls.output_reg[7]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_13_out,
      Q => \i_no_async_controls.output_reg[8]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_15_out,
      Q => \i_no_async_controls.output_reg[9]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_32\ is
  port (
    \i_no_async_controls.output_reg[11]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[10]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[9]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[8]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[7]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[6]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[5]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[4]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[3]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[2]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : out STD_LOGIC;
    p_0_out : in STD_LOGIC;
    CLK : in STD_LOGIC;
    p_17_out : in STD_LOGIC;
    p_15_out : in STD_LOGIC;
    p_13_out : in STD_LOGIC;
    p_11_out : in STD_LOGIC;
    p_9_out : in STD_LOGIC;
    p_7_out : in STD_LOGIC;
    p_5_out : in STD_LOGIC;
    p_3_out : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    \i_simple_model.carryxor0__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_32\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_32\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_32\ is
begin
\i_no_async_controls.output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_17_out,
      Q => \i_no_async_controls.output_reg[10]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_out,
      Q => \i_no_async_controls.output_reg[11]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_simple_model.carryxor0__0\,
      Q => \i_no_async_controls.output_reg[1]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_out,
      Q => \i_no_async_controls.output_reg[2]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_3_out,
      Q => \i_no_async_controls.output_reg[3]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_5_out,
      Q => \i_no_async_controls.output_reg[4]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_7_out,
      Q => \i_no_async_controls.output_reg[5]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_9_out,
      Q => \i_no_async_controls.output_reg[6]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_11_out,
      Q => \i_no_async_controls.output_reg[7]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_13_out,
      Q => \i_no_async_controls.output_reg[8]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_15_out,
      Q => \i_no_async_controls.output_reg[9]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_33\ is
  port (
    \i_no_async_controls.output_reg[11]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[10]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[9]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[8]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[7]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[6]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[5]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[4]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[3]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[2]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : out STD_LOGIC;
    p_0_out : in STD_LOGIC;
    CLK : in STD_LOGIC;
    p_8_out : in STD_LOGIC;
    p_7_out : in STD_LOGIC;
    p_6_out : in STD_LOGIC;
    p_5_out : in STD_LOGIC;
    p_4_out : in STD_LOGIC;
    p_3_out : in STD_LOGIC;
    p_2_out : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\ : in STD_LOGIC;
    \i_simple_model.carryxor0__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_33\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_33\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_33\ is
begin
\i_no_async_controls.output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_8_out,
      Q => \i_no_async_controls.output_reg[10]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_out,
      Q => \i_no_async_controls.output_reg[11]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_simple_model.carryxor0__0\,
      Q => \i_no_async_controls.output_reg[1]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\,
      Q => \i_no_async_controls.output_reg[2]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_out,
      Q => \i_no_async_controls.output_reg[3]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_2_out,
      Q => \i_no_async_controls.output_reg[4]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_3_out,
      Q => \i_no_async_controls.output_reg[5]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_4_out,
      Q => \i_no_async_controls.output_reg[6]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_5_out,
      Q => \i_no_async_controls.output_reg[7]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_6_out,
      Q => \i_no_async_controls.output_reg[8]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_7_out,
      Q => \i_no_async_controls.output_reg[9]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_34\ is
  port (
    \i_no_async_controls.output_reg[11]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[10]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[9]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[8]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[7]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[6]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[5]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[4]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[3]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[2]_0\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : out STD_LOGIC;
    p_0_out : in STD_LOGIC;
    CLK : in STD_LOGIC;
    p_8_out : in STD_LOGIC;
    p_7_out : in STD_LOGIC;
    p_6_out : in STD_LOGIC;
    p_5_out : in STD_LOGIC;
    p_4_out : in STD_LOGIC;
    p_3_out : in STD_LOGIC;
    p_2_out : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\ : in STD_LOGIC;
    \i_simple_model.carryxor0__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_34\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_34\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_34\ is
begin
\i_no_async_controls.output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_8_out,
      Q => \i_no_async_controls.output_reg[10]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_out,
      Q => \i_no_async_controls.output_reg[11]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_simple_model.carryxor0__0\,
      Q => \i_no_async_controls.output_reg[1]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\,
      Q => \i_no_async_controls.output_reg[2]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_1_out,
      Q => \i_no_async_controls.output_reg[3]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_2_out,
      Q => \i_no_async_controls.output_reg[4]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_3_out,
      Q => \i_no_async_controls.output_reg[5]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_4_out,
      Q => \i_no_async_controls.output_reg[6]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_5_out,
      Q => \i_no_async_controls.output_reg[7]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_6_out,
      Q => \i_no_async_controls.output_reg[8]_0\,
      R => '0'
    );
\i_no_async_controls.output_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_7_out,
      Q => \i_no_async_controls.output_reg[9]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_38\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_38\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_38\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_38\ is
begin
\i_no_async_controls.output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(9),
      Q => Q(9),
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
      Q => Q(10),
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
      Q => Q(0),
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
      Q => Q(1),
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
      Q => Q(2),
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
      Q => Q(3),
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
      Q => Q(4),
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
      Q => Q(5),
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
      Q => Q(6),
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
      Q => Q(7),
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
      Q => Q(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_40\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    D : in STD_LOGIC_VECTOR ( 10 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_40\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_40\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_40\ is
begin
\i_no_async_controls.output_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(9),
      Q => Q(9),
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
      Q => Q(10),
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
      Q => Q(0),
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
      Q => Q(1),
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
      Q => Q(2),
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
      Q => Q(3),
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
      Q => Q(4),
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
      Q => Q(5),
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
      Q => Q(6),
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
      Q => Q(7),
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
      Q => Q(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_7\ is
  port (
    \i_no_async_controls.output_reg[11]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[10]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[9]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[8]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[7]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[6]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[5]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[4]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[3]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[2]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[11]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    \i_no_async_controls.output_reg[10]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[9]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[8]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[7]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[6]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[5]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[4]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[3]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[2]_0\ : in STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_7\ : entity is "c_reg_fd_v12_0_5_viv";
end \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_7\;

architecture STRUCTURE of \add_int64_c_reg_fd_v12_0_5_viv__parameterized4_7\ is
  attribute srl_bus_name : string;
  attribute srl_bus_name of \i_no_async_controls.output_reg[10]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name : string;
  attribute srl_name of \i_no_async_controls.output_reg[10]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[10]_srl2 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[11]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[11]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[11]_srl2 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[1]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[1]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[1]_srl2 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[2]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[2]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[2]_srl2 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[3]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[3]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[3]_srl2 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[4]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[4]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[4]_srl2 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[5]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[5]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[5]_srl2 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[6]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[6]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[6]_srl2 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[7]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[7]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[7]_srl2 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[8]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[8]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[8]_srl2 ";
  attribute srl_bus_name of \i_no_async_controls.output_reg[9]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg ";
  attribute srl_name of \i_no_async_controls.output_reg[9]_srl2\ : label is "U0/\xst_addsub/i_baseblox.i_baseblox_addsub/pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister/i_no_async_controls.output_reg[9]_srl2 ";
begin
\i_no_async_controls.output_reg[10]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[10]_0\,
      Q => \i_no_async_controls.output_reg[10]\
    );
\i_no_async_controls.output_reg[11]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[11]_0\,
      Q => \i_no_async_controls.output_reg[11]\
    );
\i_no_async_controls.output_reg[1]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[1]_0\,
      Q => \i_no_async_controls.output_reg[1]\
    );
\i_no_async_controls.output_reg[2]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[2]_0\,
      Q => \i_no_async_controls.output_reg[2]\
    );
\i_no_async_controls.output_reg[3]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[3]_0\,
      Q => \i_no_async_controls.output_reg[3]\
    );
\i_no_async_controls.output_reg[4]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[4]_0\,
      Q => \i_no_async_controls.output_reg[4]\
    );
\i_no_async_controls.output_reg[5]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[5]_0\,
      Q => \i_no_async_controls.output_reg[5]\
    );
\i_no_async_controls.output_reg[6]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[6]_0\,
      Q => \i_no_async_controls.output_reg[6]\
    );
\i_no_async_controls.output_reg[7]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[7]_0\,
      Q => \i_no_async_controls.output_reg[7]\
    );
\i_no_async_controls.output_reg[8]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[8]_0\,
      Q => \i_no_async_controls.output_reg[8]\
    );
\i_no_async_controls.output_reg[9]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => CLK,
      D => \i_no_async_controls.output_reg[9]_0\,
      Q => \i_no_async_controls.output_reg[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_int64_c_addsub_v12_0_12_lut6_legacy is
  port (
    \i_no_async_controls.output_reg[10]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[9]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[8]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[7]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[6]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[5]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[4]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[3]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[2]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]\ : out STD_LOGIC;
    \pipecarry[1,1]\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 9 downto 0 );
    C_IN : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_int64_c_addsub_v12_0_12_lut6_legacy : entity is "c_addsub_v12_0_12_lut6_legacy";
end add_int64_c_addsub_v12_0_12_lut6_legacy;

architecture STRUCTURE of add_int64_c_addsub_v12_0_12_lut6_legacy is
  signal LI : STD_LOGIC;
  signal S : STD_LOGIC;
  signal carry_simple_0 : STD_LOGIC;
  signal carry_simple_1 : STD_LOGIC;
  signal carry_simple_2 : STD_LOGIC;
  signal carry_simple_3 : STD_LOGIC;
  signal carry_simple_4 : STD_LOGIC;
  signal carry_simple_5 : STD_LOGIC;
  signal carry_simple_6 : STD_LOGIC;
  signal carry_simple_7 : STD_LOGIC;
  signal carry_simple_8 : STD_LOGIC;
  signal carry_simple_9 : STD_LOGIC;
  signal \i_simple_model.carryxor0__0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \i_simple_model.carrymux0_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \i_simple_model.carrymux0_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \i_simple_model.carrymux0_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "PRIMITIVE";
begin
\i_q.i_simple.qreg\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized1_42\
     port map (
      CLK => CLK,
      \i_no_async_controls.output_reg[10]_0\ => \i_no_async_controls.output_reg[10]\,
      \i_no_async_controls.output_reg[1]_0\ => \i_no_async_controls.output_reg[1]\,
      \i_no_async_controls.output_reg[2]_0\ => \i_no_async_controls.output_reg[2]\,
      \i_no_async_controls.output_reg[3]_0\ => \i_no_async_controls.output_reg[3]\,
      \i_no_async_controls.output_reg[4]_0\ => \i_no_async_controls.output_reg[4]\,
      \i_no_async_controls.output_reg[5]_0\ => \i_no_async_controls.output_reg[5]\,
      \i_no_async_controls.output_reg[6]_0\ => \i_no_async_controls.output_reg[6]\,
      \i_no_async_controls.output_reg[7]_0\ => \i_no_async_controls.output_reg[7]\,
      \i_no_async_controls.output_reg[8]_0\ => \i_no_async_controls.output_reg[8]\,
      \i_no_async_controls.output_reg[9]_0\ => \i_no_async_controls.output_reg[9]\,
      \i_simple_model.carryxor0__0\ => \i_simple_model.carryxor0__0\,
      \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\ => \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\,
      p_0_out => p_0_out,
      p_1_out => p_1_out,
      p_2_out => p_2_out,
      p_3_out => p_3_out,
      p_4_out => p_4_out,
      p_5_out => p_5_out,
      p_6_out => p_6_out,
      p_7_out => p_7_out
    );
\i_q_c_out.i_simple.add_q_cout.q_c_outreg\: entity work.add_int64_c_reg_fd_v12_0_5_viv_43
     port map (
      CLK => CLK,
      carry_simple_9 => carry_simple_9,
      \pipecarry[1,1]\ => \pipecarry[1,1]\
    );
\i_simple_model.carrymux0_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carry_simple_3,
      CO(2) => carry_simple_2,
      CO(1) => carry_simple_1,
      CO(0) => carry_simple_0,
      CYINIT => C_IN,
      DI(3 downto 0) => A(3 downto 0),
      O(3) => p_2_out,
      O(2) => p_1_out,
      O(1) => \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\,
      O(0) => \i_simple_model.carryxor0__0\,
      S(3) => \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0\,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\,
      S(0) => S
    );
\i_simple_model.carrymux0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      O => S
    );
\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(1),
      I1 => A(1),
      O => \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      O => \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(3),
      I1 => A(3),
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
\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      O => \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(5),
      I1 => A(5),
      O => \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      O => \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(7),
      I1 => A(7),
      O => \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_7,
      CO(3 downto 2) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => carry_simple_9,
      CO(0) => carry_simple_8,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => A(9 downto 8),
      O(3 downto 2) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\(3 downto 2),
      O(1) => p_0_out,
      O(0) => p_7_out,
      S(3 downto 2) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => LI,
      S(0) => \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(8),
      I1 => A(8),
      O => \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carryxortop_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(9),
      I1 => A(9),
      O => LI
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized1\ is
  port (
    D3_out : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    A : in STD_LOGIC_VECTOR ( 10 downto 0 );
    CLK : in STD_LOGIC;
    diagonal_c_out_4 : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized1\ : entity is "c_addsub_v12_0_12_lut6_legacy";
end \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized1\;

architecture STRUCTURE of \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized1\ is
  signal CI : STD_LOGIC;
  signal LI : STD_LOGIC;
  signal S : STD_LOGIC;
  signal carry_simple_0 : STD_LOGIC;
  signal carry_simple_1 : STD_LOGIC;
  signal carry_simple_10 : STD_LOGIC;
  signal carry_simple_2 : STD_LOGIC;
  signal carry_simple_3 : STD_LOGIC;
  signal carry_simple_4 : STD_LOGIC;
  signal carry_simple_5 : STD_LOGIC;
  signal carry_simple_6 : STD_LOGIC;
  signal carry_simple_7 : STD_LOGIC;
  signal carry_simple_8 : STD_LOGIC;
  signal \i_simple_model.carryxor0__0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \i_simple_model.carrymux0_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \i_simple_model.carrymux0_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \i_simple_model.carrymux0_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "PRIMITIVE";
begin
\i_q.i_simple.qreg\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized4_40\
     port map (
      CLK => CLK,
      D(10) => p_0_out,
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
      Q(10 downto 0) => Q(10 downto 0)
    );
\i_q_c_out.i_simple.add_q_cout.q_c_outreg\: entity work.add_int64_c_reg_fd_v12_0_5_viv_41
     port map (
      CLK => CLK,
      D3_out => D3_out,
      carry_simple_10 => carry_simple_10,
      diagonal_c_out_4 => diagonal_c_out_4
    );
\i_simple_model.carrymux0_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carry_simple_3,
      CO(2) => carry_simple_2,
      CO(1) => carry_simple_1,
      CO(0) => carry_simple_0,
      CYINIT => '0',
      DI(3 downto 0) => A(3 downto 0),
      O(3) => p_2_out,
      O(2) => p_1_out,
      O(1) => \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\,
      O(0) => \i_simple_model.carryxor0__0\,
      S(3) => \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0\,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\,
      S(0) => S
    );
\i_simple_model.carrymux0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      O => S
    );
\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(1),
      I1 => A(1),
      O => \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      O => \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(3),
      I1 => A(3),
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
\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      O => \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(5),
      I1 => A(5),
      O => \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      O => \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(7),
      I1 => A(7),
      O => \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_7,
      CO(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => carry_simple_10,
      CO(1) => CI,
      CO(0) => carry_simple_8,
      CYINIT => '0',
      DI(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\(3),
      DI(2 downto 0) => A(10 downto 8),
      O(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\(3),
      O(2) => p_0_out,
      O(1) => p_8_out,
      O(0) => p_7_out,
      S(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\(3),
      S(2) => LI,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0\,
      S(0) => \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(8),
      I1 => A(8),
      O => \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(9),
      I1 => A(9),
      O => \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carryxortop_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(10),
      I1 => A(10),
      O => LI
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11\ is
  port (
    S : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \piperegs[5]_53\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \pipecarry[5,5]\ : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11\ : entity is "c_addsub_v12_0_12_lut6_legacy";
end \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11\;

architecture STRUCTURE of \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11\ is
  signal carry_simple_0 : STD_LOGIC;
  signal carry_simple_1 : STD_LOGIC;
  signal carry_simple_2 : STD_LOGIC;
  signal carry_simple_3 : STD_LOGIC;
  signal carry_simple_4 : STD_LOGIC;
  signal carry_simple_5 : STD_LOGIC;
  signal carry_simple_6 : STD_LOGIC;
  signal carry_simple_7 : STD_LOGIC;
  signal carry_simple_8 : STD_LOGIC;
  signal carry_simple_9 : STD_LOGIC;
  signal \i_simple_model.carryxor0__0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_13_out : STD_LOGIC;
  signal p_15_out : STD_LOGIC;
  signal p_17_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \i_simple_model.carrymux0_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \i_simple_model.carrymux0_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \i_simple_model.carrymux0_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "PRIMITIVE";
begin
\i_q.i_simple.qreg\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized4_25\
     port map (
      CLK => CLK,
      D(10) => p_0_out,
      D(9) => p_17_out,
      D(8) => p_15_out,
      D(7) => p_13_out,
      D(6) => p_11_out,
      D(5) => p_9_out,
      D(4) => p_7_out,
      D(3) => p_5_out,
      D(2) => p_3_out,
      D(1) => p_1_out,
      D(0) => \i_simple_model.carryxor0__0\,
      S(10 downto 0) => S(10 downto 0)
    );
\i_simple_model.carrymux0_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carry_simple_3,
      CO(2) => carry_simple_2,
      CO(1) => carry_simple_1,
      CO(0) => carry_simple_0,
      CYINIT => \pipecarry[5,5]\,
      DI(3 downto 0) => B"0000",
      O(3) => p_5_out,
      O(2) => p_3_out,
      O(1) => p_1_out,
      O(0) => \i_simple_model.carryxor0__0\,
      S(3 downto 0) => \piperegs[5]_53\(3 downto 0)
    );
\i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_3,
      CO(3) => carry_simple_7,
      CO(2) => carry_simple_6,
      CO(1) => carry_simple_5,
      CO(0) => carry_simple_4,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => p_13_out,
      O(2) => p_11_out,
      O(1) => p_9_out,
      O(0) => p_7_out,
      S(3 downto 0) => \piperegs[5]_53\(7 downto 4)
    );
\i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_7,
      CO(3 downto 2) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => carry_simple_9,
      CO(0) => carry_simple_8,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"00",
      O(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\(3),
      O(2) => p_0_out,
      O(1) => p_17_out,
      O(0) => p_15_out,
      S(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\(3),
      S(2 downto 0) => \piperegs[5]_53\(10 downto 8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_26\ is
  port (
    diagonal_c_out_1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \piperegs[4]_42\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \pipecarry[4,4]\ : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_26\ : entity is "c_addsub_v12_0_12_lut6_legacy";
end \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_26\;

architecture STRUCTURE of \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_26\ is
  signal carry_simple_0 : STD_LOGIC;
  signal carry_simple_1 : STD_LOGIC;
  signal carry_simple_2 : STD_LOGIC;
  signal carry_simple_3 : STD_LOGIC;
  signal carry_simple_4 : STD_LOGIC;
  signal carry_simple_5 : STD_LOGIC;
  signal carry_simple_6 : STD_LOGIC;
  signal carry_simple_7 : STD_LOGIC;
  signal carry_simple_8 : STD_LOGIC;
  signal carry_simple_9 : STD_LOGIC;
  signal \i_simple_model.carryxor0__0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_13_out : STD_LOGIC;
  signal p_15_out : STD_LOGIC;
  signal p_17_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \i_simple_model.carrymux0_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \i_simple_model.carrymux0_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \i_simple_model.carrymux0_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "PRIMITIVE";
begin
\i_q.i_simple.qreg\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized4_27\
     port map (
      CLK => CLK,
      D(10) => p_0_out,
      D(9) => p_17_out,
      D(8) => p_15_out,
      D(7) => p_13_out,
      D(6) => p_11_out,
      D(5) => p_9_out,
      D(4) => p_7_out,
      D(3) => p_5_out,
      D(2) => p_3_out,
      D(1) => p_1_out,
      D(0) => \i_simple_model.carryxor0__0\,
      Q(10 downto 0) => Q(10 downto 0)
    );
\i_simple_model.carrymux0_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carry_simple_3,
      CO(2) => carry_simple_2,
      CO(1) => carry_simple_1,
      CO(0) => carry_simple_0,
      CYINIT => \pipecarry[4,4]\,
      DI(3 downto 0) => B"0000",
      O(3) => p_5_out,
      O(2) => p_3_out,
      O(1) => p_1_out,
      O(0) => \i_simple_model.carryxor0__0\,
      S(3 downto 0) => \piperegs[4]_42\(3 downto 0)
    );
\i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_3,
      CO(3) => carry_simple_7,
      CO(2) => carry_simple_6,
      CO(1) => carry_simple_5,
      CO(0) => carry_simple_4,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => p_13_out,
      O(2) => p_11_out,
      O(1) => p_9_out,
      O(0) => p_7_out,
      S(3 downto 0) => \piperegs[4]_42\(7 downto 4)
    );
\i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_7,
      CO(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => diagonal_c_out_1,
      CO(1) => carry_simple_9,
      CO(0) => carry_simple_8,
      CYINIT => '0',
      DI(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\(3),
      DI(2 downto 0) => B"000",
      O(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\(3),
      O(2) => p_0_out,
      O(1) => p_17_out,
      O(0) => p_15_out,
      S(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\(3),
      S(2 downto 0) => \piperegs[4]_42\(10 downto 8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_29\ is
  port (
    \i_no_async_controls.output_reg[11]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[10]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[9]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[8]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[7]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[6]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[5]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[4]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[3]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[2]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]\ : out STD_LOGIC;
    diagonal_c_out_3 : out STD_LOGIC;
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \pipecarry[2,2]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_29\ : entity is "c_addsub_v12_0_12_lut6_legacy";
end \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_29\;

architecture STRUCTURE of \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_29\ is
  signal carry_simple_0 : STD_LOGIC;
  signal carry_simple_1 : STD_LOGIC;
  signal carry_simple_2 : STD_LOGIC;
  signal carry_simple_3 : STD_LOGIC;
  signal carry_simple_4 : STD_LOGIC;
  signal carry_simple_5 : STD_LOGIC;
  signal carry_simple_6 : STD_LOGIC;
  signal carry_simple_7 : STD_LOGIC;
  signal carry_simple_8 : STD_LOGIC;
  signal carry_simple_9 : STD_LOGIC;
  signal \i_simple_model.carryxor0__0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_13_out : STD_LOGIC;
  signal p_15_out : STD_LOGIC;
  signal p_17_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \i_simple_model.carrymux0_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \i_simple_model.carrymux0_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \i_simple_model.carrymux0_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "PRIMITIVE";
begin
\i_q.i_simple.qreg\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized4_30\
     port map (
      CLK => CLK,
      \i_no_async_controls.output_reg[10]_0\ => \i_no_async_controls.output_reg[10]\,
      \i_no_async_controls.output_reg[11]_0\ => \i_no_async_controls.output_reg[11]\,
      \i_no_async_controls.output_reg[1]_0\ => \i_no_async_controls.output_reg[1]\,
      \i_no_async_controls.output_reg[2]_0\ => \i_no_async_controls.output_reg[2]\,
      \i_no_async_controls.output_reg[3]_0\ => \i_no_async_controls.output_reg[3]\,
      \i_no_async_controls.output_reg[4]_0\ => \i_no_async_controls.output_reg[4]\,
      \i_no_async_controls.output_reg[5]_0\ => \i_no_async_controls.output_reg[5]\,
      \i_no_async_controls.output_reg[6]_0\ => \i_no_async_controls.output_reg[6]\,
      \i_no_async_controls.output_reg[7]_0\ => \i_no_async_controls.output_reg[7]\,
      \i_no_async_controls.output_reg[8]_0\ => \i_no_async_controls.output_reg[8]\,
      \i_no_async_controls.output_reg[9]_0\ => \i_no_async_controls.output_reg[9]\,
      \i_simple_model.carryxor0__0\ => \i_simple_model.carryxor0__0\,
      p_0_out => p_0_out,
      p_11_out => p_11_out,
      p_13_out => p_13_out,
      p_15_out => p_15_out,
      p_17_out => p_17_out,
      p_1_out => p_1_out,
      p_3_out => p_3_out,
      p_5_out => p_5_out,
      p_7_out => p_7_out,
      p_9_out => p_9_out
    );
\i_simple_model.carrymux0_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carry_simple_3,
      CO(2) => carry_simple_2,
      CO(1) => carry_simple_1,
      CO(0) => carry_simple_0,
      CYINIT => \pipecarry[2,2]\,
      DI(3 downto 0) => B"0000",
      O(3) => p_5_out,
      O(2) => p_3_out,
      O(1) => p_1_out,
      O(0) => \i_simple_model.carryxor0__0\,
      S(3 downto 0) => Q(3 downto 0)
    );
\i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_3,
      CO(3) => carry_simple_7,
      CO(2) => carry_simple_6,
      CO(1) => carry_simple_5,
      CO(0) => carry_simple_4,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => p_13_out,
      O(2) => p_11_out,
      O(1) => p_9_out,
      O(0) => p_7_out,
      S(3 downto 0) => Q(7 downto 4)
    );
\i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_7,
      CO(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => diagonal_c_out_3,
      CO(1) => carry_simple_9,
      CO(0) => carry_simple_8,
      CYINIT => '0',
      DI(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\(3),
      DI(2 downto 0) => B"000",
      O(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\(3),
      O(2) => p_0_out,
      O(1) => p_17_out,
      O(0) => p_15_out,
      S(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\(3),
      S(2 downto 0) => Q(10 downto 8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_31\ is
  port (
    \i_no_async_controls.output_reg[11]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[10]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[9]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[8]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[7]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[6]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[5]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[4]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[3]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[2]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]\ : out STD_LOGIC;
    diagonal_c_out_4 : out STD_LOGIC;
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \pipecarry[1,1]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_31\ : entity is "c_addsub_v12_0_12_lut6_legacy";
end \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_31\;

architecture STRUCTURE of \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_31\ is
  signal carry_simple_0 : STD_LOGIC;
  signal carry_simple_1 : STD_LOGIC;
  signal carry_simple_2 : STD_LOGIC;
  signal carry_simple_3 : STD_LOGIC;
  signal carry_simple_4 : STD_LOGIC;
  signal carry_simple_5 : STD_LOGIC;
  signal carry_simple_6 : STD_LOGIC;
  signal carry_simple_7 : STD_LOGIC;
  signal carry_simple_8 : STD_LOGIC;
  signal carry_simple_9 : STD_LOGIC;
  signal \i_simple_model.carryxor0__0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_13_out : STD_LOGIC;
  signal p_15_out : STD_LOGIC;
  signal p_17_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \i_simple_model.carrymux0_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \i_simple_model.carrymux0_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \i_simple_model.carrymux0_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "PRIMITIVE";
begin
\i_q.i_simple.qreg\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized4_32\
     port map (
      CLK => CLK,
      \i_no_async_controls.output_reg[10]_0\ => \i_no_async_controls.output_reg[10]\,
      \i_no_async_controls.output_reg[11]_0\ => \i_no_async_controls.output_reg[11]\,
      \i_no_async_controls.output_reg[1]_0\ => \i_no_async_controls.output_reg[1]\,
      \i_no_async_controls.output_reg[2]_0\ => \i_no_async_controls.output_reg[2]\,
      \i_no_async_controls.output_reg[3]_0\ => \i_no_async_controls.output_reg[3]\,
      \i_no_async_controls.output_reg[4]_0\ => \i_no_async_controls.output_reg[4]\,
      \i_no_async_controls.output_reg[5]_0\ => \i_no_async_controls.output_reg[5]\,
      \i_no_async_controls.output_reg[6]_0\ => \i_no_async_controls.output_reg[6]\,
      \i_no_async_controls.output_reg[7]_0\ => \i_no_async_controls.output_reg[7]\,
      \i_no_async_controls.output_reg[8]_0\ => \i_no_async_controls.output_reg[8]\,
      \i_no_async_controls.output_reg[9]_0\ => \i_no_async_controls.output_reg[9]\,
      \i_simple_model.carryxor0__0\ => \i_simple_model.carryxor0__0\,
      p_0_out => p_0_out,
      p_11_out => p_11_out,
      p_13_out => p_13_out,
      p_15_out => p_15_out,
      p_17_out => p_17_out,
      p_1_out => p_1_out,
      p_3_out => p_3_out,
      p_5_out => p_5_out,
      p_7_out => p_7_out,
      p_9_out => p_9_out
    );
\i_simple_model.carrymux0_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carry_simple_3,
      CO(2) => carry_simple_2,
      CO(1) => carry_simple_1,
      CO(0) => carry_simple_0,
      CYINIT => \pipecarry[1,1]\,
      DI(3 downto 0) => B"0000",
      O(3) => p_5_out,
      O(2) => p_3_out,
      O(1) => p_1_out,
      O(0) => \i_simple_model.carryxor0__0\,
      S(3 downto 0) => Q(3 downto 0)
    );
\i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_3,
      CO(3) => carry_simple_7,
      CO(2) => carry_simple_6,
      CO(1) => carry_simple_5,
      CO(0) => carry_simple_4,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => p_13_out,
      O(2) => p_11_out,
      O(1) => p_9_out,
      O(0) => p_7_out,
      S(3 downto 0) => Q(7 downto 4)
    );
\i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_7,
      CO(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => diagonal_c_out_4,
      CO(1) => carry_simple_9,
      CO(0) => carry_simple_8,
      CYINIT => '0',
      DI(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\(3),
      DI(2 downto 0) => B"000",
      O(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\(3),
      O(2) => p_0_out,
      O(1) => p_17_out,
      O(0) => p_15_out,
      S(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\(3),
      S(2 downto 0) => Q(10 downto 8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized13\ is
  port (
    diagonal_c_out_2 : out STD_LOGIC;
    \i_no_async_controls.output_reg[10]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \pipecarry[3,3]\ : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized13\ : entity is "c_addsub_v12_0_12_lut6_legacy";
end \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized13\;

architecture STRUCTURE of \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized13\ is
  signal carry_simple_0 : STD_LOGIC;
  signal carry_simple_1 : STD_LOGIC;
  signal carry_simple_2 : STD_LOGIC;
  signal carry_simple_3 : STD_LOGIC;
  signal carry_simple_4 : STD_LOGIC;
  signal carry_simple_5 : STD_LOGIC;
  signal carry_simple_6 : STD_LOGIC;
  signal carry_simple_7 : STD_LOGIC;
  signal carry_simple_8 : STD_LOGIC;
  signal \i_simple_model.carryxor0__0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_13_out : STD_LOGIC;
  signal p_15_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \i_simple_model.carrymux0_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \i_simple_model.carrymux0_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \i_simple_model.carrymux0_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "PRIMITIVE";
begin
\i_q.i_simple.qreg\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized1_28\
     port map (
      CLK => CLK,
      D(9) => p_0_out,
      D(8) => p_15_out,
      D(7) => p_13_out,
      D(6) => p_11_out,
      D(5) => p_9_out,
      D(4) => p_7_out,
      D(3) => p_5_out,
      D(2) => p_3_out,
      D(1) => p_1_out,
      D(0) => \i_simple_model.carryxor0__0\,
      \i_no_async_controls.output_reg[10]_0\(9 downto 0) => \i_no_async_controls.output_reg[10]\(9 downto 0)
    );
\i_simple_model.carrymux0_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carry_simple_3,
      CO(2) => carry_simple_2,
      CO(1) => carry_simple_1,
      CO(0) => carry_simple_0,
      CYINIT => \pipecarry[3,3]\,
      DI(3 downto 0) => B"0000",
      O(3) => p_5_out,
      O(2) => p_3_out,
      O(1) => p_1_out,
      O(0) => \i_simple_model.carryxor0__0\,
      S(3 downto 0) => Q(3 downto 0)
    );
\i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_3,
      CO(3) => carry_simple_7,
      CO(2) => carry_simple_6,
      CO(1) => carry_simple_5,
      CO(0) => carry_simple_4,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => p_13_out,
      O(2) => p_11_out,
      O(1) => p_9_out,
      O(0) => p_7_out,
      S(3 downto 0) => Q(7 downto 4)
    );
\i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_7,
      CO(3 downto 2) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => diagonal_c_out_2,
      CO(0) => carry_simple_8,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => B"00",
      O(3 downto 2) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\(3 downto 2),
      O(1) => p_0_out,
      O(0) => p_15_out,
      S(3 downto 2) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1 downto 0) => Q(9 downto 8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized3\ is
  port (
    \i_no_async_controls.output_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    A : in STD_LOGIC_VECTOR ( 10 downto 0 );
    CLK : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized3\ : entity is "c_addsub_v12_0_12_lut6_legacy";
end \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized3\;

architecture STRUCTURE of \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized3\ is
  signal CI : STD_LOGIC;
  signal LI : STD_LOGIC;
  signal S : STD_LOGIC;
  signal carry_simple_0 : STD_LOGIC;
  signal carry_simple_1 : STD_LOGIC;
  signal carry_simple_10 : STD_LOGIC;
  signal carry_simple_2 : STD_LOGIC;
  signal carry_simple_3 : STD_LOGIC;
  signal carry_simple_4 : STD_LOGIC;
  signal carry_simple_5 : STD_LOGIC;
  signal carry_simple_6 : STD_LOGIC;
  signal carry_simple_7 : STD_LOGIC;
  signal carry_simple_8 : STD_LOGIC;
  signal \i_simple_model.carryxor0__0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \i_simple_model.carrymux0_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \i_simple_model.carrymux0_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \i_simple_model.carrymux0_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "PRIMITIVE";
begin
\i_q.i_simple.qreg\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized4_38\
     port map (
      CLK => CLK,
      D(10) => p_0_out,
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
      Q(10 downto 0) => Q(10 downto 0)
    );
\i_q_c_out.i_simple.add_q_cout.q_c_outreg\: entity work.add_int64_c_reg_fd_v12_0_5_viv_39
     port map (
      CLK => CLK,
      carry_simple_10 => carry_simple_10,
      \i_no_async_controls.output_reg[1]_0\ => \i_no_async_controls.output_reg[1]\
    );
\i_simple_model.carrymux0_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carry_simple_3,
      CO(2) => carry_simple_2,
      CO(1) => carry_simple_1,
      CO(0) => carry_simple_0,
      CYINIT => '0',
      DI(3 downto 0) => A(3 downto 0),
      O(3) => p_2_out,
      O(2) => p_1_out,
      O(1) => \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\,
      O(0) => \i_simple_model.carryxor0__0\,
      S(3) => \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0\,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\,
      S(0) => S
    );
\i_simple_model.carrymux0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      O => S
    );
\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(1),
      I1 => A(1),
      O => \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      O => \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(3),
      I1 => A(3),
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
\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      O => \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(5),
      I1 => A(5),
      O => \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      O => \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(7),
      I1 => A(7),
      O => \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_7,
      CO(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => carry_simple_10,
      CO(1) => CI,
      CO(0) => carry_simple_8,
      CYINIT => '0',
      DI(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\(3),
      DI(2 downto 0) => A(10 downto 8),
      O(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\(3),
      O(2) => p_0_out,
      O(1) => p_8_out,
      O(0) => p_7_out,
      S(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\(3),
      S(2) => LI,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0\,
      S(0) => \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(8),
      I1 => A(8),
      O => \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(9),
      I1 => A(9),
      O => \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carryxortop_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(10),
      I1 => A(10),
      O => LI
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized5\ is
  port (
    \i_no_async_controls.output_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    A : in STD_LOGIC_VECTOR ( 9 downto 0 );
    CLK : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized5\ : entity is "c_addsub_v12_0_12_lut6_legacy";
end \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized5\;

architecture STRUCTURE of \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized5\ is
  signal CI : STD_LOGIC;
  signal LI : STD_LOGIC;
  signal S : STD_LOGIC;
  signal carry_simple_0 : STD_LOGIC;
  signal carry_simple_1 : STD_LOGIC;
  signal carry_simple_2 : STD_LOGIC;
  signal carry_simple_3 : STD_LOGIC;
  signal carry_simple_4 : STD_LOGIC;
  signal carry_simple_5 : STD_LOGIC;
  signal carry_simple_6 : STD_LOGIC;
  signal carry_simple_7 : STD_LOGIC;
  signal carry_simple_9 : STD_LOGIC;
  signal \i_simple_model.carryxor0__0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \i_simple_model.carrymux0_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \i_simple_model.carrymux0_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \i_simple_model.carrymux0_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "PRIMITIVE";
begin
\i_q.i_simple.qreg\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized1_36\
     port map (
      CLK => CLK,
      D(9) => p_0_out,
      D(8) => p_7_out,
      D(7) => p_6_out,
      D(6) => p_5_out,
      D(5) => p_4_out,
      D(4) => p_3_out,
      D(3) => p_2_out,
      D(2) => p_1_out,
      D(1) => \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\,
      D(0) => \i_simple_model.carryxor0__0\,
      Q(9 downto 0) => Q(9 downto 0)
    );
\i_q_c_out.i_simple.add_q_cout.q_c_outreg\: entity work.add_int64_c_reg_fd_v12_0_5_viv_37
     port map (
      CLK => CLK,
      carry_simple_9 => carry_simple_9,
      \i_no_async_controls.output_reg[1]_0\ => \i_no_async_controls.output_reg[1]\
    );
\i_simple_model.carrymux0_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carry_simple_3,
      CO(2) => carry_simple_2,
      CO(1) => carry_simple_1,
      CO(0) => carry_simple_0,
      CYINIT => '0',
      DI(3 downto 0) => A(3 downto 0),
      O(3) => p_2_out,
      O(2) => p_1_out,
      O(1) => \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\,
      O(0) => \i_simple_model.carryxor0__0\,
      S(3) => \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0\,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\,
      S(0) => S
    );
\i_simple_model.carrymux0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      O => S
    );
\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(1),
      I1 => A(1),
      O => \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      O => \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(3),
      I1 => A(3),
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
\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      O => \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(5),
      I1 => A(5),
      O => \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      O => \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(7),
      I1 => A(7),
      O => \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_7,
      CO(3 downto 2) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => carry_simple_9,
      CO(0) => CI,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => A(9 downto 8),
      O(3 downto 2) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\(3 downto 2),
      O(1) => p_0_out,
      O(0) => p_7_out,
      S(3 downto 2) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\(3 downto 2),
      S(1) => LI,
      S(0) => \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(8),
      I1 => A(8),
      O => \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carryxortop_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(9),
      I1 => A(9),
      O => LI
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized7\ is
  port (
    \i_no_async_controls.output_reg[11]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[10]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[9]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[8]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[7]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[6]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[5]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[4]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[3]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[2]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 10 downto 0 );
    B : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized7\ : entity is "c_addsub_v12_0_12_lut6_legacy";
end \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized7\;

architecture STRUCTURE of \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized7\ is
  signal CI : STD_LOGIC;
  signal LI : STD_LOGIC;
  signal S : STD_LOGIC;
  signal carry_simple_0 : STD_LOGIC;
  signal carry_simple_1 : STD_LOGIC;
  signal carry_simple_10 : STD_LOGIC;
  signal carry_simple_2 : STD_LOGIC;
  signal carry_simple_3 : STD_LOGIC;
  signal carry_simple_4 : STD_LOGIC;
  signal carry_simple_5 : STD_LOGIC;
  signal carry_simple_6 : STD_LOGIC;
  signal carry_simple_7 : STD_LOGIC;
  signal carry_simple_8 : STD_LOGIC;
  signal \i_simple_model.carryxor0__0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \i_simple_model.carrymux0_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \i_simple_model.carrymux0_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \i_simple_model.carrymux0_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "PRIMITIVE";
begin
\i_q.i_simple.qreg\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized4_34\
     port map (
      CLK => CLK,
      \i_no_async_controls.output_reg[10]_0\ => \i_no_async_controls.output_reg[10]\,
      \i_no_async_controls.output_reg[11]_0\ => \i_no_async_controls.output_reg[11]\,
      \i_no_async_controls.output_reg[1]_0\ => \i_no_async_controls.output_reg[1]\,
      \i_no_async_controls.output_reg[2]_0\ => \i_no_async_controls.output_reg[2]\,
      \i_no_async_controls.output_reg[3]_0\ => \i_no_async_controls.output_reg[3]\,
      \i_no_async_controls.output_reg[4]_0\ => \i_no_async_controls.output_reg[4]\,
      \i_no_async_controls.output_reg[5]_0\ => \i_no_async_controls.output_reg[5]\,
      \i_no_async_controls.output_reg[6]_0\ => \i_no_async_controls.output_reg[6]\,
      \i_no_async_controls.output_reg[7]_0\ => \i_no_async_controls.output_reg[7]\,
      \i_no_async_controls.output_reg[8]_0\ => \i_no_async_controls.output_reg[8]\,
      \i_no_async_controls.output_reg[9]_0\ => \i_no_async_controls.output_reg[9]\,
      \i_simple_model.carryxor0__0\ => \i_simple_model.carryxor0__0\,
      \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\ => \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\,
      p_0_out => p_0_out,
      p_1_out => p_1_out,
      p_2_out => p_2_out,
      p_3_out => p_3_out,
      p_4_out => p_4_out,
      p_5_out => p_5_out,
      p_6_out => p_6_out,
      p_7_out => p_7_out,
      p_8_out => p_8_out
    );
\i_q_c_out.i_simple.add_q_cout.q_c_outreg\: entity work.add_int64_c_reg_fd_v12_0_5_viv_35
     port map (
      CLK => CLK,
      carry_simple_10 => carry_simple_10,
      \i_no_async_controls.output_reg[1]_0\ => \i_no_async_controls.output_reg[1]_0\
    );
\i_simple_model.carrymux0_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carry_simple_3,
      CO(2) => carry_simple_2,
      CO(1) => carry_simple_1,
      CO(0) => carry_simple_0,
      CYINIT => '0',
      DI(3 downto 0) => A(3 downto 0),
      O(3) => p_2_out,
      O(2) => p_1_out,
      O(1) => \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\,
      O(0) => \i_simple_model.carryxor0__0\,
      S(3) => \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0\,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\,
      S(0) => S
    );
\i_simple_model.carrymux0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      O => S
    );
\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(1),
      I1 => A(1),
      O => \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      O => \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(3),
      I1 => A(3),
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
\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      O => \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(5),
      I1 => A(5),
      O => \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      O => \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(7),
      I1 => A(7),
      O => \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_7,
      CO(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => carry_simple_10,
      CO(1) => CI,
      CO(0) => carry_simple_8,
      CYINIT => '0',
      DI(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\(3),
      DI(2 downto 0) => A(10 downto 8),
      O(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\(3),
      O(2) => p_0_out,
      O(1) => p_8_out,
      O(0) => p_7_out,
      S(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\(3),
      S(2) => LI,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0\,
      S(0) => \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(8),
      I1 => A(8),
      O => \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(9),
      I1 => A(9),
      O => \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carryxortop_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(10),
      I1 => A(10),
      O => LI
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized9\ is
  port (
    \i_no_async_controls.output_reg[11]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[10]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[9]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[8]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[7]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[6]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[5]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[4]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[3]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[2]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 10 downto 0 );
    B : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized9\ : entity is "c_addsub_v12_0_12_lut6_legacy";
end \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized9\;

architecture STRUCTURE of \add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized9\ is
  signal CI : STD_LOGIC;
  signal LI : STD_LOGIC;
  signal S : STD_LOGIC;
  signal carry_simple_0 : STD_LOGIC;
  signal carry_simple_1 : STD_LOGIC;
  signal carry_simple_2 : STD_LOGIC;
  signal carry_simple_3 : STD_LOGIC;
  signal carry_simple_4 : STD_LOGIC;
  signal carry_simple_5 : STD_LOGIC;
  signal carry_simple_6 : STD_LOGIC;
  signal carry_simple_7 : STD_LOGIC;
  signal carry_simple_8 : STD_LOGIC;
  signal \i_simple_model.carryxor0__0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\ : STD_LOGIC;
  signal \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \i_simple_model.carrymux0_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \i_simple_model.carrymux0_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \i_simple_model.carrymux0_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[4].carrymux_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\ : label is "PRIMITIVE";
begin
\i_q.i_simple.qreg\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized4_33\
     port map (
      CLK => CLK,
      \i_no_async_controls.output_reg[10]_0\ => \i_no_async_controls.output_reg[10]\,
      \i_no_async_controls.output_reg[11]_0\ => \i_no_async_controls.output_reg[11]\,
      \i_no_async_controls.output_reg[1]_0\ => \i_no_async_controls.output_reg[1]\,
      \i_no_async_controls.output_reg[2]_0\ => \i_no_async_controls.output_reg[2]\,
      \i_no_async_controls.output_reg[3]_0\ => \i_no_async_controls.output_reg[3]\,
      \i_no_async_controls.output_reg[4]_0\ => \i_no_async_controls.output_reg[4]\,
      \i_no_async_controls.output_reg[5]_0\ => \i_no_async_controls.output_reg[5]\,
      \i_no_async_controls.output_reg[6]_0\ => \i_no_async_controls.output_reg[6]\,
      \i_no_async_controls.output_reg[7]_0\ => \i_no_async_controls.output_reg[7]\,
      \i_no_async_controls.output_reg[8]_0\ => \i_no_async_controls.output_reg[8]\,
      \i_no_async_controls.output_reg[9]_0\ => \i_no_async_controls.output_reg[9]\,
      \i_simple_model.carryxor0__0\ => \i_simple_model.carryxor0__0\,
      \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\ => \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\,
      p_0_out => p_0_out,
      p_1_out => p_1_out,
      p_2_out => p_2_out,
      p_3_out => p_3_out,
      p_4_out => p_4_out,
      p_5_out => p_5_out,
      p_6_out => p_6_out,
      p_7_out => p_7_out,
      p_8_out => p_8_out
    );
\i_simple_model.carrymux0_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carry_simple_3,
      CO(2) => carry_simple_2,
      CO(1) => carry_simple_1,
      CO(0) => carry_simple_0,
      CYINIT => '0',
      DI(3 downto 0) => A(3 downto 0),
      O(3) => p_2_out,
      O(2) => p_1_out,
      O(1) => \i_simple_model.i_gt_1.carrychaingen[1].carryxor__0\,
      O(0) => \i_simple_model.carryxor0__0\,
      S(3) => \i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1_n_0\,
      S(2) => \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\,
      S(0) => S
    );
\i_simple_model.carrymux0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      O => S
    );
\i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(1),
      I1 => A(1),
      O => \i_simple_model.i_gt_1.carrychaingen[1].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      O => \i_simple_model.i_gt_1.carrychaingen[2].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[3].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(3),
      I1 => A(3),
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
\i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      O => \i_simple_model.i_gt_1.carrychaingen[4].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(5),
      I1 => A(5),
      O => \i_simple_model.i_gt_1.carrychaingen[5].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      O => \i_simple_model.i_gt_1.carrychaingen[6].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(7),
      I1 => A(7),
      O => \i_simple_model.i_gt_1.carrychaingen[7].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_simple_7,
      CO(3 downto 2) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => CI,
      CO(0) => carry_simple_8,
      CYINIT => '0',
      DI(3 downto 2) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_DI_UNCONNECTED\(3 downto 2),
      DI(1 downto 0) => A(9 downto 8),
      O(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_O_UNCONNECTED\(3),
      O(2) => p_0_out,
      O(1) => p_8_out,
      O(0) => p_7_out,
      S(3) => \NLW_i_simple_model.i_gt_1.carrychaingen[8].carrymux_CARRY4_S_UNCONNECTED\(3),
      S(2) => LI,
      S(1) => \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0\,
      S(0) => \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(8),
      I1 => A(8),
      O => \i_simple_model.i_gt_1.carrychaingen[8].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(9),
      I1 => A(9),
      O => \i_simple_model.i_gt_1.carrychaingen[9].carrymux_i_1_n_0\
    );
\i_simple_model.i_gt_1.carryxortop_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(10),
      I1 => A(10),
      O => LI
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_int64_c_addsub_v12_0_12_fabric_legacy is
  port (
    \i_no_async_controls.output_reg[10]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[9]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[8]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[7]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[6]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[5]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[4]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[3]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[2]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]\ : out STD_LOGIC;
    \pipecarry[1,1]\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 9 downto 0 );
    C_IN : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_int64_c_addsub_v12_0_12_fabric_legacy : entity is "c_addsub_v12_0_12_fabric_legacy";
end add_int64_c_addsub_v12_0_12_fabric_legacy;

architecture STRUCTURE of add_int64_c_addsub_v12_0_12_fabric_legacy is
begin
\i_lut6.i_lut6_addsub\: entity work.add_int64_c_addsub_v12_0_12_lut6_legacy
     port map (
      A(9 downto 0) => A(9 downto 0),
      B(9 downto 0) => B(9 downto 0),
      CLK => CLK,
      C_IN => C_IN,
      \i_no_async_controls.output_reg[10]\ => \i_no_async_controls.output_reg[10]\,
      \i_no_async_controls.output_reg[1]\ => \i_no_async_controls.output_reg[1]\,
      \i_no_async_controls.output_reg[2]\ => \i_no_async_controls.output_reg[2]\,
      \i_no_async_controls.output_reg[3]\ => \i_no_async_controls.output_reg[3]\,
      \i_no_async_controls.output_reg[4]\ => \i_no_async_controls.output_reg[4]\,
      \i_no_async_controls.output_reg[5]\ => \i_no_async_controls.output_reg[5]\,
      \i_no_async_controls.output_reg[6]\ => \i_no_async_controls.output_reg[6]\,
      \i_no_async_controls.output_reg[7]\ => \i_no_async_controls.output_reg[7]\,
      \i_no_async_controls.output_reg[8]\ => \i_no_async_controls.output_reg[8]\,
      \i_no_async_controls.output_reg[9]\ => \i_no_async_controls.output_reg[9]\,
      \pipecarry[1,1]\ => \pipecarry[1,1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized1\ is
  port (
    D3_out : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    A : in STD_LOGIC_VECTOR ( 10 downto 0 );
    CLK : in STD_LOGIC;
    diagonal_c_out_4 : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized1\ : entity is "c_addsub_v12_0_12_fabric_legacy";
end \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized1\;

architecture STRUCTURE of \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized1\ is
begin
\i_lut6.i_lut6_addsub\: entity work.\add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized1\
     port map (
      A(10 downto 0) => A(10 downto 0),
      B(10 downto 0) => B(10 downto 0),
      CLK => CLK,
      D3_out => D3_out,
      Q(10 downto 0) => Q(10 downto 0),
      diagonal_c_out_4 => diagonal_c_out_4
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11\ is
  port (
    \i_no_async_controls.output_reg[11]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[10]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[9]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[8]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[7]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[6]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[5]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[4]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[3]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[2]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]\ : out STD_LOGIC;
    diagonal_c_out_4 : out STD_LOGIC;
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \pipecarry[1,1]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11\ : entity is "c_addsub_v12_0_12_fabric_legacy";
end \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11\;

architecture STRUCTURE of \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11\ is
begin
\i_lut6.i_lut6_addsub\: entity work.\add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_31\
     port map (
      CLK => CLK,
      Q(10 downto 0) => Q(10 downto 0),
      diagonal_c_out_4 => diagonal_c_out_4,
      \i_no_async_controls.output_reg[10]\ => \i_no_async_controls.output_reg[10]\,
      \i_no_async_controls.output_reg[11]\ => \i_no_async_controls.output_reg[11]\,
      \i_no_async_controls.output_reg[1]\ => \i_no_async_controls.output_reg[1]\,
      \i_no_async_controls.output_reg[2]\ => \i_no_async_controls.output_reg[2]\,
      \i_no_async_controls.output_reg[3]\ => \i_no_async_controls.output_reg[3]\,
      \i_no_async_controls.output_reg[4]\ => \i_no_async_controls.output_reg[4]\,
      \i_no_async_controls.output_reg[5]\ => \i_no_async_controls.output_reg[5]\,
      \i_no_async_controls.output_reg[6]\ => \i_no_async_controls.output_reg[6]\,
      \i_no_async_controls.output_reg[7]\ => \i_no_async_controls.output_reg[7]\,
      \i_no_async_controls.output_reg[8]\ => \i_no_async_controls.output_reg[8]\,
      \i_no_async_controls.output_reg[9]\ => \i_no_async_controls.output_reg[9]\,
      \pipecarry[1,1]\ => \pipecarry[1,1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_16\ is
  port (
    diagonal_c_out_1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \piperegs[4]_42\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \pipecarry[4,4]\ : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_16\ : entity is "c_addsub_v12_0_12_fabric_legacy";
end \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_16\;

architecture STRUCTURE of \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_16\ is
begin
\i_lut6.i_lut6_addsub\: entity work.\add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_26\
     port map (
      CLK => CLK,
      Q(10 downto 0) => Q(10 downto 0),
      diagonal_c_out_1 => diagonal_c_out_1,
      \pipecarry[4,4]\ => \pipecarry[4,4]\,
      \piperegs[4]_42\(10 downto 0) => \piperegs[4]_42\(10 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_2\ is
  port (
    \i_no_async_controls.output_reg[11]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[10]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[9]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[8]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[7]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[6]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[5]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[4]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[3]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[2]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]\ : out STD_LOGIC;
    diagonal_c_out_3 : out STD_LOGIC;
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \pipecarry[2,2]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_2\ : entity is "c_addsub_v12_0_12_fabric_legacy";
end \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_2\;

architecture STRUCTURE of \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_2\ is
begin
\i_lut6.i_lut6_addsub\: entity work.\add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11_29\
     port map (
      CLK => CLK,
      Q(10 downto 0) => Q(10 downto 0),
      diagonal_c_out_3 => diagonal_c_out_3,
      \i_no_async_controls.output_reg[10]\ => \i_no_async_controls.output_reg[10]\,
      \i_no_async_controls.output_reg[11]\ => \i_no_async_controls.output_reg[11]\,
      \i_no_async_controls.output_reg[1]\ => \i_no_async_controls.output_reg[1]\,
      \i_no_async_controls.output_reg[2]\ => \i_no_async_controls.output_reg[2]\,
      \i_no_async_controls.output_reg[3]\ => \i_no_async_controls.output_reg[3]\,
      \i_no_async_controls.output_reg[4]\ => \i_no_async_controls.output_reg[4]\,
      \i_no_async_controls.output_reg[5]\ => \i_no_async_controls.output_reg[5]\,
      \i_no_async_controls.output_reg[6]\ => \i_no_async_controls.output_reg[6]\,
      \i_no_async_controls.output_reg[7]\ => \i_no_async_controls.output_reg[7]\,
      \i_no_async_controls.output_reg[8]\ => \i_no_async_controls.output_reg[8]\,
      \i_no_async_controls.output_reg[9]\ => \i_no_async_controls.output_reg[9]\,
      \pipecarry[2,2]\ => \pipecarry[2,2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_24\ is
  port (
    S : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \piperegs[5]_53\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \pipecarry[5,5]\ : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_24\ : entity is "c_addsub_v12_0_12_fabric_legacy";
end \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_24\;

architecture STRUCTURE of \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_24\ is
begin
\i_lut6.i_lut6_addsub\: entity work.\add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized11\
     port map (
      CLK => CLK,
      S(10 downto 0) => S(10 downto 0),
      \pipecarry[5,5]\ => \pipecarry[5,5]\,
      \piperegs[5]_53\(10 downto 0) => \piperegs[5]_53\(10 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized13\ is
  port (
    diagonal_c_out_2 : out STD_LOGIC;
    \i_no_async_controls.output_reg[10]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \pipecarry[3,3]\ : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized13\ : entity is "c_addsub_v12_0_12_fabric_legacy";
end \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized13\;

architecture STRUCTURE of \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized13\ is
begin
\i_lut6.i_lut6_addsub\: entity work.\add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized13\
     port map (
      CLK => CLK,
      Q(9 downto 0) => Q(9 downto 0),
      diagonal_c_out_2 => diagonal_c_out_2,
      \i_no_async_controls.output_reg[10]\(9 downto 0) => \i_no_async_controls.output_reg[10]\(9 downto 0),
      \pipecarry[3,3]\ => \pipecarry[3,3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized3\ is
  port (
    \i_no_async_controls.output_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    A : in STD_LOGIC_VECTOR ( 10 downto 0 );
    CLK : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized3\ : entity is "c_addsub_v12_0_12_fabric_legacy";
end \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized3\;

architecture STRUCTURE of \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized3\ is
begin
\i_lut6.i_lut6_addsub\: entity work.\add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized3\
     port map (
      A(10 downto 0) => A(10 downto 0),
      B(10 downto 0) => B(10 downto 0),
      CLK => CLK,
      Q(10 downto 0) => Q(10 downto 0),
      \i_no_async_controls.output_reg[1]\ => \i_no_async_controls.output_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized5\ is
  port (
    \i_no_async_controls.output_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    A : in STD_LOGIC_VECTOR ( 9 downto 0 );
    CLK : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized5\ : entity is "c_addsub_v12_0_12_fabric_legacy";
end \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized5\;

architecture STRUCTURE of \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized5\ is
begin
\i_lut6.i_lut6_addsub\: entity work.\add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized5\
     port map (
      A(9 downto 0) => A(9 downto 0),
      B(9 downto 0) => B(9 downto 0),
      CLK => CLK,
      Q(9 downto 0) => Q(9 downto 0),
      \i_no_async_controls.output_reg[1]\ => \i_no_async_controls.output_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized7\ is
  port (
    \i_no_async_controls.output_reg[11]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[10]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[9]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[8]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[7]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[6]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[5]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[4]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[3]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[2]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]_0\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 10 downto 0 );
    B : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized7\ : entity is "c_addsub_v12_0_12_fabric_legacy";
end \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized7\;

architecture STRUCTURE of \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized7\ is
begin
\i_lut6.i_lut6_addsub\: entity work.\add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized7\
     port map (
      A(10 downto 0) => A(10 downto 0),
      B(10 downto 0) => B(10 downto 0),
      CLK => CLK,
      \i_no_async_controls.output_reg[10]\ => \i_no_async_controls.output_reg[10]\,
      \i_no_async_controls.output_reg[11]\ => \i_no_async_controls.output_reg[11]\,
      \i_no_async_controls.output_reg[1]\ => \i_no_async_controls.output_reg[1]\,
      \i_no_async_controls.output_reg[1]_0\ => \i_no_async_controls.output_reg[1]_0\,
      \i_no_async_controls.output_reg[2]\ => \i_no_async_controls.output_reg[2]\,
      \i_no_async_controls.output_reg[3]\ => \i_no_async_controls.output_reg[3]\,
      \i_no_async_controls.output_reg[4]\ => \i_no_async_controls.output_reg[4]\,
      \i_no_async_controls.output_reg[5]\ => \i_no_async_controls.output_reg[5]\,
      \i_no_async_controls.output_reg[6]\ => \i_no_async_controls.output_reg[6]\,
      \i_no_async_controls.output_reg[7]\ => \i_no_async_controls.output_reg[7]\,
      \i_no_async_controls.output_reg[8]\ => \i_no_async_controls.output_reg[8]\,
      \i_no_async_controls.output_reg[9]\ => \i_no_async_controls.output_reg[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized9\ is
  port (
    \i_no_async_controls.output_reg[11]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[10]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[9]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[8]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[7]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[6]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[5]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[4]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[3]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[2]\ : out STD_LOGIC;
    \i_no_async_controls.output_reg[1]\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 10 downto 0 );
    B : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized9\ : entity is "c_addsub_v12_0_12_fabric_legacy";
end \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized9\;

architecture STRUCTURE of \add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized9\ is
begin
\i_lut6.i_lut6_addsub\: entity work.\add_int64_c_addsub_v12_0_12_lut6_legacy__parameterized9\
     port map (
      A(10 downto 0) => A(10 downto 0),
      B(10 downto 0) => B(10 downto 0),
      CLK => CLK,
      \i_no_async_controls.output_reg[10]\ => \i_no_async_controls.output_reg[10]\,
      \i_no_async_controls.output_reg[11]\ => \i_no_async_controls.output_reg[11]\,
      \i_no_async_controls.output_reg[1]\ => \i_no_async_controls.output_reg[1]\,
      \i_no_async_controls.output_reg[2]\ => \i_no_async_controls.output_reg[2]\,
      \i_no_async_controls.output_reg[3]\ => \i_no_async_controls.output_reg[3]\,
      \i_no_async_controls.output_reg[4]\ => \i_no_async_controls.output_reg[4]\,
      \i_no_async_controls.output_reg[5]\ => \i_no_async_controls.output_reg[5]\,
      \i_no_async_controls.output_reg[6]\ => \i_no_async_controls.output_reg[6]\,
      \i_no_async_controls.output_reg[7]\ => \i_no_async_controls.output_reg[7]\,
      \i_no_async_controls.output_reg[8]\ => \i_no_async_controls.output_reg[8]\,
      \i_no_async_controls.output_reg[9]\ => \i_no_async_controls.output_reg[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_int64_c_addsub_v12_0_12_legacy is
  port (
    S : out STD_LOGIC_VECTOR ( 63 downto 0 );
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 63 downto 0 );
    C_IN : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_int64_c_addsub_v12_0_12_legacy : entity is "c_addsub_v12_0_12_legacy";
end add_int64_c_addsub_v12_0_12_legacy;

architecture STRUCTURE of add_int64_c_addsub_v12_0_12_legacy is
  signal D0_out : STD_LOGIC;
  signal D1_out : STD_LOGIC;
  signal D2_out : STD_LOGIC;
  signal D3_out : STD_LOGIC;
  signal diagonal_c_out_1 : STD_LOGIC;
  signal diagonal_c_out_2 : STD_LOGIC;
  signal diagonal_c_out_3 : STD_LOGIC;
  signal diagonal_c_out_4 : STD_LOGIC;
  signal \pipecarry[1,1]\ : STD_LOGIC;
  signal \pipecarry[2,2]\ : STD_LOGIC;
  signal \pipecarry[3,3]\ : STD_LOGIC;
  signal \pipecarry[4,4]\ : STD_LOGIC;
  signal \pipecarry[5,5]\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[1].first.first_stage_adder_n_0\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[1].first.first_stage_adder_n_1\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[1].first.first_stage_adder_n_2\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[1].first.first_stage_adder_n_3\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[1].first.first_stage_adder_n_4\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[1].first.first_stage_adder_n_5\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[1].first.first_stage_adder_n_6\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[1].first.first_stage_adder_n_7\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[1].first.first_stage_adder_n_8\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[1].first.first_stage_adder_n_9\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[3].first.first_stage_adder_n_0\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[3].first.first_stage_adder_n_1\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[3].first.first_stage_adder_n_10\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[3].first.first_stage_adder_n_11\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[3].first.first_stage_adder_n_2\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[3].first.first_stage_adder_n_3\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[3].first.first_stage_adder_n_4\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[3].first.first_stage_adder_n_5\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[3].first.first_stage_adder_n_6\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[3].first.first_stage_adder_n_7\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[3].first.first_stage_adder_n_8\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[3].first.first_stage_adder_n_9\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[4].first.first_stage_adder_n_0\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[4].first.first_stage_adder_n_1\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[4].first.first_stage_adder_n_10\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[4].first.first_stage_adder_n_2\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[4].first.first_stage_adder_n_3\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[4].first.first_stage_adder_n_4\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[4].first.first_stage_adder_n_5\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[4].first.first_stage_adder_n_6\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[4].first.first_stage_adder_n_7\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[4].first.first_stage_adder_n_8\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[4].first.first_stage_adder_n_9\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[5].first.first_stage_adder_n_0\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[5].first.first_stage_adder_n_1\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[5].first.first_stage_adder_n_10\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[5].first.first_stage_adder_n_11\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[5].first.first_stage_adder_n_2\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[5].first.first_stage_adder_n_3\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[5].first.first_stage_adder_n_4\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[5].first.first_stage_adder_n_5\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[5].first.first_stage_adder_n_6\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[5].first.first_stage_adder_n_7\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[5].first.first_stage_adder_n_8\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[5].first.first_stage_adder_n_9\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[6].first.first_stage_adder_n_0\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[6].first.first_stage_adder_n_1\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[6].first.first_stage_adder_n_10\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[6].first.first_stage_adder_n_2\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[6].first.first_stage_adder_n_3\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[6].first.first_stage_adder_n_4\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[6].first.first_stage_adder_n_5\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[6].first.first_stage_adder_n_6\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[6].first.first_stage_adder_n_7\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[6].first.first_stage_adder_n_8\ : STD_LOGIC;
  signal \pipelining.stages[1].slices[6].first.first_stage_adder_n_9\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_0\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_1\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_10\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_2\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_3\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_4\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_5\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_6\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_7\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_8\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_9\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[4].middlestages.abovediagonal.carryregister_n_0\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_0\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_1\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_2\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_3\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_4\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_5\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_6\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_7\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_8\ : STD_LOGIC;
  signal \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_9\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_0\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_1\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_10\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_2\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_3\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_4\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_5\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_6\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_7\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_8\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_9\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[5].middlestages.abovediagonal.carryregister_n_0\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_0\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_1\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_10\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_2\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_3\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_4\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_5\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_6\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_7\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_8\ : STD_LOGIC;
  signal \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_9\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_1\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_10\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_2\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_3\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_4\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_5\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_6\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_7\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_8\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_9\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_0\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_1\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_10\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_2\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_3\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_4\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_5\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_6\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_7\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_8\ : STD_LOGIC;
  signal \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_9\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_0\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_1\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_2\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_3\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_4\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_5\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_6\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_7\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_8\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_9\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_0\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_1\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_10\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_2\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_3\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_4\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_5\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_6\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_7\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_8\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_9\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_0\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_1\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_10\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_2\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_3\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_4\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_5\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_6\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_7\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_8\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_9\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_0\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_1\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_2\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_3\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_4\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_5\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_6\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_7\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_8\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_9\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_1\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_10\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_11\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_2\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_3\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_4\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_5\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_6\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_7\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_8\ : STD_LOGIC;
  signal \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_9\ : STD_LOGIC;
  signal \piperegs[1]_10\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \piperegs[2]_21\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \piperegs[3]_32\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \piperegs[4]_42\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \piperegs[5]_53\ : STD_LOGIC_VECTOR ( 10 downto 0 );
begin
\pipelining.stages[1].slices[1].first.first_stage_adder\: entity work.add_int64_c_addsub_v12_0_12_fabric_legacy
     port map (
      A(9 downto 0) => A(9 downto 0),
      B(9 downto 0) => B(9 downto 0),
      CLK => CLK,
      C_IN => C_IN,
      \i_no_async_controls.output_reg[10]\ => \pipelining.stages[1].slices[1].first.first_stage_adder_n_0\,
      \i_no_async_controls.output_reg[1]\ => \pipelining.stages[1].slices[1].first.first_stage_adder_n_9\,
      \i_no_async_controls.output_reg[2]\ => \pipelining.stages[1].slices[1].first.first_stage_adder_n_8\,
      \i_no_async_controls.output_reg[3]\ => \pipelining.stages[1].slices[1].first.first_stage_adder_n_7\,
      \i_no_async_controls.output_reg[4]\ => \pipelining.stages[1].slices[1].first.first_stage_adder_n_6\,
      \i_no_async_controls.output_reg[5]\ => \pipelining.stages[1].slices[1].first.first_stage_adder_n_5\,
      \i_no_async_controls.output_reg[6]\ => \pipelining.stages[1].slices[1].first.first_stage_adder_n_4\,
      \i_no_async_controls.output_reg[7]\ => \pipelining.stages[1].slices[1].first.first_stage_adder_n_3\,
      \i_no_async_controls.output_reg[8]\ => \pipelining.stages[1].slices[1].first.first_stage_adder_n_2\,
      \i_no_async_controls.output_reg[9]\ => \pipelining.stages[1].slices[1].first.first_stage_adder_n_1\,
      \pipecarry[1,1]\ => \pipecarry[1,1]\
    );
\pipelining.stages[1].slices[2].first.first_stage_adder\: entity work.\add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized1\
     port map (
      A(10 downto 0) => A(20 downto 10),
      B(10 downto 0) => B(20 downto 10),
      CLK => CLK,
      D3_out => D3_out,
      Q(10 downto 0) => \piperegs[1]_10\(10 downto 0),
      diagonal_c_out_4 => diagonal_c_out_4
    );
\pipelining.stages[1].slices[3].first.first_stage_adder\: entity work.\add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized3\
     port map (
      A(10 downto 0) => A(31 downto 21),
      B(10 downto 0) => B(31 downto 21),
      CLK => CLK,
      Q(10) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_1\,
      Q(9) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_2\,
      Q(8) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_3\,
      Q(7) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_4\,
      Q(6) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_5\,
      Q(5) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_6\,
      Q(4) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_7\,
      Q(3) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_8\,
      Q(2) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_9\,
      Q(1) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_10\,
      Q(0) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_11\,
      \i_no_async_controls.output_reg[1]\ => \pipelining.stages[1].slices[3].first.first_stage_adder_n_0\
    );
\pipelining.stages[1].slices[4].first.first_stage_adder\: entity work.\add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized5\
     port map (
      A(9 downto 0) => A(41 downto 32),
      B(9 downto 0) => B(41 downto 32),
      CLK => CLK,
      Q(9) => \pipelining.stages[1].slices[4].first.first_stage_adder_n_1\,
      Q(8) => \pipelining.stages[1].slices[4].first.first_stage_adder_n_2\,
      Q(7) => \pipelining.stages[1].slices[4].first.first_stage_adder_n_3\,
      Q(6) => \pipelining.stages[1].slices[4].first.first_stage_adder_n_4\,
      Q(5) => \pipelining.stages[1].slices[4].first.first_stage_adder_n_5\,
      Q(4) => \pipelining.stages[1].slices[4].first.first_stage_adder_n_6\,
      Q(3) => \pipelining.stages[1].slices[4].first.first_stage_adder_n_7\,
      Q(2) => \pipelining.stages[1].slices[4].first.first_stage_adder_n_8\,
      Q(1) => \pipelining.stages[1].slices[4].first.first_stage_adder_n_9\,
      Q(0) => \pipelining.stages[1].slices[4].first.first_stage_adder_n_10\,
      \i_no_async_controls.output_reg[1]\ => \pipelining.stages[1].slices[4].first.first_stage_adder_n_0\
    );
\pipelining.stages[1].slices[5].first.first_stage_adder\: entity work.\add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized7\
     port map (
      A(10 downto 0) => A(52 downto 42),
      B(10 downto 0) => B(52 downto 42),
      CLK => CLK,
      \i_no_async_controls.output_reg[10]\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_1\,
      \i_no_async_controls.output_reg[11]\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_0\,
      \i_no_async_controls.output_reg[1]\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_10\,
      \i_no_async_controls.output_reg[1]_0\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_11\,
      \i_no_async_controls.output_reg[2]\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_9\,
      \i_no_async_controls.output_reg[3]\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_8\,
      \i_no_async_controls.output_reg[4]\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_7\,
      \i_no_async_controls.output_reg[5]\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_6\,
      \i_no_async_controls.output_reg[6]\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_5\,
      \i_no_async_controls.output_reg[7]\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_4\,
      \i_no_async_controls.output_reg[8]\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_3\,
      \i_no_async_controls.output_reg[9]\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_2\
    );
\pipelining.stages[1].slices[6].first.first_stage_adder\: entity work.\add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized9\
     port map (
      A(10 downto 0) => A(63 downto 53),
      B(10 downto 0) => B(63 downto 53),
      CLK => CLK,
      \i_no_async_controls.output_reg[10]\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_1\,
      \i_no_async_controls.output_reg[11]\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_0\,
      \i_no_async_controls.output_reg[1]\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_10\,
      \i_no_async_controls.output_reg[2]\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_9\,
      \i_no_async_controls.output_reg[3]\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_8\,
      \i_no_async_controls.output_reg[4]\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_7\,
      \i_no_async_controls.output_reg[5]\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_6\,
      \i_no_async_controls.output_reg[6]\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_5\,
      \i_no_async_controls.output_reg[7]\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_4\,
      \i_no_async_controls.output_reg[8]\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_3\,
      \i_no_async_controls.output_reg[9]\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_2\
    );
\pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder\: entity work.\add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11\
     port map (
      CLK => CLK,
      Q(10 downto 0) => \piperegs[1]_10\(10 downto 0),
      diagonal_c_out_4 => diagonal_c_out_4,
      \i_no_async_controls.output_reg[10]\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_1\,
      \i_no_async_controls.output_reg[11]\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_0\,
      \i_no_async_controls.output_reg[1]\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_10\,
      \i_no_async_controls.output_reg[2]\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_9\,
      \i_no_async_controls.output_reg[3]\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_8\,
      \i_no_async_controls.output_reg[4]\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_7\,
      \i_no_async_controls.output_reg[5]\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_6\,
      \i_no_async_controls.output_reg[6]\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_5\,
      \i_no_async_controls.output_reg[7]\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_4\,
      \i_no_async_controls.output_reg[8]\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_3\,
      \i_no_async_controls.output_reg[9]\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_2\,
      \pipecarry[1,1]\ => \pipecarry[1,1]\
    );
\pipelining.stages[2].slices[2].middlestages.diagonal.i_add.addcarryregister\: entity work.add_int64_c_reg_fd_v12_0_5_viv
     port map (
      CLK => CLK,
      D3_out => D3_out,
      \pipecarry[2,2]\ => \pipecarry[2,2]\
    );
\pipelining.stages[2].slices[3].middlestages.abovediagonal.carryregister\: entity work.add_int64_c_reg_fd_v12_0_5_viv_0
     port map (
      CLK => CLK,
      D2_out => D2_out,
      diagonal_c_out_3 => diagonal_c_out_3,
      \i_no_async_controls.output_reg[1]_0\ => \pipelining.stages[1].slices[3].first.first_stage_adder_n_0\
    );
\pipelining.stages[2].slices[3].middlestages.abovediagonal.piperegister\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized4\
     port map (
      CLK => CLK,
      D(10) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_1\,
      D(9) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_2\,
      D(8) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_3\,
      D(7) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_4\,
      D(6) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_5\,
      D(5) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_6\,
      D(4) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_7\,
      D(3) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_8\,
      D(2) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_9\,
      D(1) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_10\,
      D(0) => \pipelining.stages[1].slices[3].first.first_stage_adder_n_11\,
      Q(10 downto 0) => \piperegs[2]_21\(10 downto 0)
    );
\pipelining.stages[2].slices[4].middlestages.abovediagonal.carryregister\: entity work.add_int64_c_reg_fd_v12_0_5_viv_1
     port map (
      CLK => CLK,
      \i_no_async_controls.output_reg[1]_0\ => \pipelining.stages[2].slices[4].middlestages.abovediagonal.carryregister_n_0\,
      \i_no_async_controls.output_reg[1]_1\ => \pipelining.stages[1].slices[4].first.first_stage_adder_n_0\
    );
\pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized1\
     port map (
      CLK => CLK,
      D(9) => \pipelining.stages[1].slices[4].first.first_stage_adder_n_1\,
      D(8) => \pipelining.stages[1].slices[4].first.first_stage_adder_n_2\,
      D(7) => \pipelining.stages[1].slices[4].first.first_stage_adder_n_3\,
      D(6) => \pipelining.stages[1].slices[4].first.first_stage_adder_n_4\,
      D(5) => \pipelining.stages[1].slices[4].first.first_stage_adder_n_5\,
      D(4) => \pipelining.stages[1].slices[4].first.first_stage_adder_n_6\,
      D(3) => \pipelining.stages[1].slices[4].first.first_stage_adder_n_7\,
      D(2) => \pipelining.stages[1].slices[4].first.first_stage_adder_n_8\,
      D(1) => \pipelining.stages[1].slices[4].first.first_stage_adder_n_9\,
      D(0) => \pipelining.stages[1].slices[4].first.first_stage_adder_n_10\,
      Q(9) => \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_0\,
      Q(8) => \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_1\,
      Q(7) => \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_2\,
      Q(6) => \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_3\,
      Q(5) => \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_4\,
      Q(4) => \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_5\,
      Q(3) => \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_6\,
      Q(2) => \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_7\,
      Q(1) => \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_8\,
      Q(0) => \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_9\
    );
\pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder\: entity work.\add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_2\
     port map (
      CLK => CLK,
      Q(10 downto 0) => \piperegs[2]_21\(10 downto 0),
      diagonal_c_out_3 => diagonal_c_out_3,
      \i_no_async_controls.output_reg[10]\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_1\,
      \i_no_async_controls.output_reg[11]\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_0\,
      \i_no_async_controls.output_reg[1]\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_10\,
      \i_no_async_controls.output_reg[2]\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_9\,
      \i_no_async_controls.output_reg[3]\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_8\,
      \i_no_async_controls.output_reg[4]\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_7\,
      \i_no_async_controls.output_reg[5]\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_6\,
      \i_no_async_controls.output_reg[6]\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_5\,
      \i_no_async_controls.output_reg[7]\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_4\,
      \i_no_async_controls.output_reg[8]\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_3\,
      \i_no_async_controls.output_reg[9]\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_2\,
      \pipecarry[2,2]\ => \pipecarry[2,2]\
    );
\pipelining.stages[3].slices[3].middlestages.diagonal.i_add.addcarryregister\: entity work.add_int64_c_reg_fd_v12_0_5_viv_3
     port map (
      CLK => CLK,
      D2_out => D2_out,
      \pipecarry[3,3]\ => \pipecarry[3,3]\
    );
\pipelining.stages[3].slices[4].middlestages.abovediagonal.carryregister\: entity work.add_int64_c_reg_fd_v12_0_5_viv_4
     port map (
      CLK => CLK,
      D1_out => D1_out,
      diagonal_c_out_2 => diagonal_c_out_2,
      \i_no_async_controls.output_reg[1]_0\ => \pipelining.stages[2].slices[4].middlestages.abovediagonal.carryregister_n_0\
    );
\pipelining.stages[3].slices[4].middlestages.abovediagonal.piperegister\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized1_5\
     port map (
      CLK => CLK,
      D(9) => \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_0\,
      D(8) => \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_1\,
      D(7) => \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_2\,
      D(6) => \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_3\,
      D(5) => \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_4\,
      D(4) => \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_5\,
      D(3) => \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_6\,
      D(2) => \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_7\,
      D(1) => \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_8\,
      D(0) => \pipelining.stages[2].slices[4].middlestages.abovediagonal.piperegister_n_9\,
      Q(9 downto 0) => \piperegs[3]_32\(9 downto 0)
    );
\pipelining.stages[3].slices[5].middlestages.abovediagonal.carryregister\: entity work.add_int64_c_reg_fd_v12_0_5_viv_6
     port map (
      CLK => CLK,
      \i_no_async_controls.output_reg[1]\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.carryregister_n_0\,
      \i_no_async_controls.output_reg[1]_0\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_11\
    );
\pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized4_7\
     port map (
      CLK => CLK,
      \i_no_async_controls.output_reg[10]\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_1\,
      \i_no_async_controls.output_reg[10]_0\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_1\,
      \i_no_async_controls.output_reg[11]\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_0\,
      \i_no_async_controls.output_reg[11]_0\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_0\,
      \i_no_async_controls.output_reg[1]\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_10\,
      \i_no_async_controls.output_reg[1]_0\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_10\,
      \i_no_async_controls.output_reg[2]\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_9\,
      \i_no_async_controls.output_reg[2]_0\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_9\,
      \i_no_async_controls.output_reg[3]\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_8\,
      \i_no_async_controls.output_reg[3]_0\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_8\,
      \i_no_async_controls.output_reg[4]\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_7\,
      \i_no_async_controls.output_reg[4]_0\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_7\,
      \i_no_async_controls.output_reg[5]\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_6\,
      \i_no_async_controls.output_reg[5]_0\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_6\,
      \i_no_async_controls.output_reg[6]\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_5\,
      \i_no_async_controls.output_reg[6]_0\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_5\,
      \i_no_async_controls.output_reg[7]\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_4\,
      \i_no_async_controls.output_reg[7]_0\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_4\,
      \i_no_async_controls.output_reg[8]\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_3\,
      \i_no_async_controls.output_reg[8]_0\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_3\,
      \i_no_async_controls.output_reg[9]\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_2\,
      \i_no_async_controls.output_reg[9]_0\ => \pipelining.stages[1].slices[5].first.first_stage_adder_n_2\
    );
\pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder\: entity work.\add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized13\
     port map (
      CLK => CLK,
      Q(9 downto 0) => \piperegs[3]_32\(9 downto 0),
      diagonal_c_out_2 => diagonal_c_out_2,
      \i_no_async_controls.output_reg[10]\(9) => \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_1\,
      \i_no_async_controls.output_reg[10]\(8) => \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_2\,
      \i_no_async_controls.output_reg[10]\(7) => \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_3\,
      \i_no_async_controls.output_reg[10]\(6) => \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_4\,
      \i_no_async_controls.output_reg[10]\(5) => \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_5\,
      \i_no_async_controls.output_reg[10]\(4) => \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_6\,
      \i_no_async_controls.output_reg[10]\(3) => \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_7\,
      \i_no_async_controls.output_reg[10]\(2) => \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_8\,
      \i_no_async_controls.output_reg[10]\(1) => \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_9\,
      \i_no_async_controls.output_reg[10]\(0) => \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_10\,
      \pipecarry[3,3]\ => \pipecarry[3,3]\
    );
\pipelining.stages[4].slices[4].middlestages.diagonal.i_add.addcarryregister\: entity work.add_int64_c_reg_fd_v12_0_5_viv_8
     port map (
      CLK => CLK,
      D1_out => D1_out,
      \pipecarry[4,4]\ => \pipecarry[4,4]\
    );
\pipelining.stages[4].slices[5].middlestages.abovediagonal.carryregister\: entity work.add_int64_c_reg_fd_v12_0_5_viv_9
     port map (
      CLK => CLK,
      D0_out => D0_out,
      diagonal_c_out_1 => diagonal_c_out_1,
      \i_no_async_controls.output_reg[1]_0\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.carryregister_n_0\
    );
\pipelining.stages[4].slices[5].middlestages.abovediagonal.piperegister\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized4_10\
     port map (
      CLK => CLK,
      \i_no_async_controls.output_reg[10]_0\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_1\,
      \i_no_async_controls.output_reg[11]_0\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_0\,
      \i_no_async_controls.output_reg[1]_0\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_10\,
      \i_no_async_controls.output_reg[2]_0\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_9\,
      \i_no_async_controls.output_reg[3]_0\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_8\,
      \i_no_async_controls.output_reg[4]_0\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_7\,
      \i_no_async_controls.output_reg[5]_0\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_6\,
      \i_no_async_controls.output_reg[6]_0\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_5\,
      \i_no_async_controls.output_reg[7]_0\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_4\,
      \i_no_async_controls.output_reg[8]_0\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_3\,
      \i_no_async_controls.output_reg[9]_0\ => \pipelining.stages[3].slices[5].middlestages.abovediagonal.piperegister_n_2\,
      \piperegs[4]_42\(10 downto 0) => \piperegs[4]_42\(10 downto 0)
    );
\pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized4_11\
     port map (
      CLK => CLK,
      \i_no_async_controls.output_reg[10]\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_1\,
      \i_no_async_controls.output_reg[10]_0\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_1\,
      \i_no_async_controls.output_reg[11]\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_0\,
      \i_no_async_controls.output_reg[11]_0\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_0\,
      \i_no_async_controls.output_reg[1]\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_10\,
      \i_no_async_controls.output_reg[1]_0\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_10\,
      \i_no_async_controls.output_reg[2]\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_9\,
      \i_no_async_controls.output_reg[2]_0\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_9\,
      \i_no_async_controls.output_reg[3]\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_8\,
      \i_no_async_controls.output_reg[3]_0\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_8\,
      \i_no_async_controls.output_reg[4]\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_7\,
      \i_no_async_controls.output_reg[4]_0\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_7\,
      \i_no_async_controls.output_reg[5]\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_6\,
      \i_no_async_controls.output_reg[5]_0\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_6\,
      \i_no_async_controls.output_reg[6]\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_5\,
      \i_no_async_controls.output_reg[6]_0\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_5\,
      \i_no_async_controls.output_reg[7]\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_4\,
      \i_no_async_controls.output_reg[7]_0\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_4\,
      \i_no_async_controls.output_reg[8]\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_3\,
      \i_no_async_controls.output_reg[8]_0\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_3\,
      \i_no_async_controls.output_reg[9]\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_2\,
      \i_no_async_controls.output_reg[9]_0\ => \pipelining.stages[1].slices[6].first.first_stage_adder_n_2\
    );
\pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized1_12\
     port map (
      CLK => CLK,
      \i_no_async_controls.output_reg[10]\ => \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_0\,
      \i_no_async_controls.output_reg[10]_0\ => \pipelining.stages[1].slices[1].first.first_stage_adder_n_0\,
      \i_no_async_controls.output_reg[1]\ => \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_9\,
      \i_no_async_controls.output_reg[1]_0\ => \pipelining.stages[1].slices[1].first.first_stage_adder_n_9\,
      \i_no_async_controls.output_reg[2]\ => \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_8\,
      \i_no_async_controls.output_reg[2]_0\ => \pipelining.stages[1].slices[1].first.first_stage_adder_n_8\,
      \i_no_async_controls.output_reg[3]\ => \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_7\,
      \i_no_async_controls.output_reg[3]_0\ => \pipelining.stages[1].slices[1].first.first_stage_adder_n_7\,
      \i_no_async_controls.output_reg[4]\ => \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_6\,
      \i_no_async_controls.output_reg[4]_0\ => \pipelining.stages[1].slices[1].first.first_stage_adder_n_6\,
      \i_no_async_controls.output_reg[5]\ => \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_5\,
      \i_no_async_controls.output_reg[5]_0\ => \pipelining.stages[1].slices[1].first.first_stage_adder_n_5\,
      \i_no_async_controls.output_reg[6]\ => \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_4\,
      \i_no_async_controls.output_reg[6]_0\ => \pipelining.stages[1].slices[1].first.first_stage_adder_n_4\,
      \i_no_async_controls.output_reg[7]\ => \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_3\,
      \i_no_async_controls.output_reg[7]_0\ => \pipelining.stages[1].slices[1].first.first_stage_adder_n_3\,
      \i_no_async_controls.output_reg[8]\ => \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_2\,
      \i_no_async_controls.output_reg[8]_0\ => \pipelining.stages[1].slices[1].first.first_stage_adder_n_2\,
      \i_no_async_controls.output_reg[9]\ => \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_1\,
      \i_no_async_controls.output_reg[9]_0\ => \pipelining.stages[1].slices[1].first.first_stage_adder_n_1\
    );
\pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized4_13\
     port map (
      CLK => CLK,
      \i_no_async_controls.output_reg[10]\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_1\,
      \i_no_async_controls.output_reg[10]_0\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_1\,
      \i_no_async_controls.output_reg[11]\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_0\,
      \i_no_async_controls.output_reg[11]_0\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_0\,
      \i_no_async_controls.output_reg[1]\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_10\,
      \i_no_async_controls.output_reg[1]_0\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_10\,
      \i_no_async_controls.output_reg[2]\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_9\,
      \i_no_async_controls.output_reg[2]_0\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_9\,
      \i_no_async_controls.output_reg[3]\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_8\,
      \i_no_async_controls.output_reg[3]_0\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_8\,
      \i_no_async_controls.output_reg[4]\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_7\,
      \i_no_async_controls.output_reg[4]_0\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_7\,
      \i_no_async_controls.output_reg[5]\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_6\,
      \i_no_async_controls.output_reg[5]_0\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_6\,
      \i_no_async_controls.output_reg[6]\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_5\,
      \i_no_async_controls.output_reg[6]_0\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_5\,
      \i_no_async_controls.output_reg[7]\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_4\,
      \i_no_async_controls.output_reg[7]_0\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_4\,
      \i_no_async_controls.output_reg[8]\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_3\,
      \i_no_async_controls.output_reg[8]_0\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_3\,
      \i_no_async_controls.output_reg[9]\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_2\,
      \i_no_async_controls.output_reg[9]_0\ => \pipelining.stages[2].slices[2].middlestages.diagonal.diagonal_adder_n_2\
    );
\pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized4_14\
     port map (
      CLK => CLK,
      \i_no_async_controls.output_reg[10]\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_1\,
      \i_no_async_controls.output_reg[10]_0\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_1\,
      \i_no_async_controls.output_reg[11]\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_0\,
      \i_no_async_controls.output_reg[11]_0\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_0\,
      \i_no_async_controls.output_reg[1]\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_10\,
      \i_no_async_controls.output_reg[1]_0\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_10\,
      \i_no_async_controls.output_reg[2]\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_9\,
      \i_no_async_controls.output_reg[2]_0\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_9\,
      \i_no_async_controls.output_reg[3]\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_8\,
      \i_no_async_controls.output_reg[3]_0\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_8\,
      \i_no_async_controls.output_reg[4]\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_7\,
      \i_no_async_controls.output_reg[4]_0\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_7\,
      \i_no_async_controls.output_reg[5]\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_6\,
      \i_no_async_controls.output_reg[5]_0\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_6\,
      \i_no_async_controls.output_reg[6]\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_5\,
      \i_no_async_controls.output_reg[6]_0\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_5\,
      \i_no_async_controls.output_reg[7]\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_4\,
      \i_no_async_controls.output_reg[7]_0\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_4\,
      \i_no_async_controls.output_reg[8]\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_3\,
      \i_no_async_controls.output_reg[8]_0\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_3\,
      \i_no_async_controls.output_reg[9]\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_2\,
      \i_no_async_controls.output_reg[9]_0\ => \pipelining.stages[3].slices[3].middlestages.diagonal.diagonal_adder_n_2\
    );
\pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized1_15\
     port map (
      CLK => CLK,
      D(9) => \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_1\,
      D(8) => \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_2\,
      D(7) => \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_3\,
      D(6) => \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_4\,
      D(5) => \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_5\,
      D(4) => \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_6\,
      D(3) => \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_7\,
      D(2) => \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_8\,
      D(1) => \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_9\,
      D(0) => \pipelining.stages[4].slices[4].middlestages.diagonal.diagonal_adder_n_10\,
      Q(9) => \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_0\,
      Q(8) => \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_1\,
      Q(7) => \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_2\,
      Q(6) => \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_3\,
      Q(5) => \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_4\,
      Q(4) => \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_5\,
      Q(3) => \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_6\,
      Q(2) => \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_7\,
      Q(1) => \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_8\,
      Q(0) => \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_9\
    );
\pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder\: entity work.\add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_16\
     port map (
      CLK => CLK,
      Q(10) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_1\,
      Q(9) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_2\,
      Q(8) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_3\,
      Q(7) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_4\,
      Q(6) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_5\,
      Q(5) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_6\,
      Q(4) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_7\,
      Q(3) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_8\,
      Q(2) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_9\,
      Q(1) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_10\,
      Q(0) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_11\,
      diagonal_c_out_1 => diagonal_c_out_1,
      \pipecarry[4,4]\ => \pipecarry[4,4]\,
      \piperegs[4]_42\(10 downto 0) => \piperegs[4]_42\(10 downto 0)
    );
\pipelining.stages[5].slices[5].middlestages.diagonal.i_add.addcarryregister\: entity work.add_int64_c_reg_fd_v12_0_5_viv_17
     port map (
      CLK => CLK,
      D0_out => D0_out,
      \pipecarry[5,5]\ => \pipecarry[5,5]\
    );
\pipelining.stages[5].slices[6].middlestages.abovediagonal.piperegister\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized4_18\
     port map (
      CLK => CLK,
      \i_no_async_controls.output_reg[10]_0\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_1\,
      \i_no_async_controls.output_reg[11]_0\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_0\,
      \i_no_async_controls.output_reg[1]_0\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_10\,
      \i_no_async_controls.output_reg[2]_0\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_9\,
      \i_no_async_controls.output_reg[3]_0\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_8\,
      \i_no_async_controls.output_reg[4]_0\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_7\,
      \i_no_async_controls.output_reg[5]_0\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_6\,
      \i_no_async_controls.output_reg[6]_0\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_5\,
      \i_no_async_controls.output_reg[7]_0\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_4\,
      \i_no_async_controls.output_reg[8]_0\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_3\,
      \i_no_async_controls.output_reg[9]_0\ => \pipelining.stages[4].slices[6].middlestages.abovediagonal.piperegister_n_2\,
      \piperegs[5]_53\(10 downto 0) => \piperegs[5]_53\(10 downto 0)
    );
\pipelining.stages[6].slices[1].laststage.belowdiagonal.piperegister\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized1_19\
     port map (
      CLK => CLK,
      S(9 downto 0) => S(9 downto 0),
      \i_no_async_controls.output_reg[10]_0\ => \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_0\,
      \i_no_async_controls.output_reg[1]_0\ => \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_9\,
      \i_no_async_controls.output_reg[2]_0\ => \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_8\,
      \i_no_async_controls.output_reg[3]_0\ => \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_7\,
      \i_no_async_controls.output_reg[4]_0\ => \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_6\,
      \i_no_async_controls.output_reg[5]_0\ => \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_5\,
      \i_no_async_controls.output_reg[6]_0\ => \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_4\,
      \i_no_async_controls.output_reg[7]_0\ => \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_3\,
      \i_no_async_controls.output_reg[8]_0\ => \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_2\,
      \i_no_async_controls.output_reg[9]_0\ => \pipelining.stages[5].slices[1].middlestages.belowdiagonal.piperegister_n_1\
    );
\pipelining.stages[6].slices[2].laststage.belowdiagonal.piperegister\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized4_20\
     port map (
      CLK => CLK,
      S(10 downto 0) => S(20 downto 10),
      \i_no_async_controls.output_reg[10]_0\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_1\,
      \i_no_async_controls.output_reg[11]_0\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_0\,
      \i_no_async_controls.output_reg[1]_0\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_10\,
      \i_no_async_controls.output_reg[2]_0\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_9\,
      \i_no_async_controls.output_reg[3]_0\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_8\,
      \i_no_async_controls.output_reg[4]_0\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_7\,
      \i_no_async_controls.output_reg[5]_0\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_6\,
      \i_no_async_controls.output_reg[6]_0\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_5\,
      \i_no_async_controls.output_reg[7]_0\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_4\,
      \i_no_async_controls.output_reg[8]_0\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_3\,
      \i_no_async_controls.output_reg[9]_0\ => \pipelining.stages[5].slices[2].middlestages.belowdiagonal.piperegister_n_2\
    );
\pipelining.stages[6].slices[3].laststage.belowdiagonal.piperegister\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized4_21\
     port map (
      CLK => CLK,
      S(10 downto 0) => S(31 downto 21),
      \i_no_async_controls.output_reg[10]_0\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_1\,
      \i_no_async_controls.output_reg[11]_0\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_0\,
      \i_no_async_controls.output_reg[1]_0\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_10\,
      \i_no_async_controls.output_reg[2]_0\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_9\,
      \i_no_async_controls.output_reg[3]_0\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_8\,
      \i_no_async_controls.output_reg[4]_0\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_7\,
      \i_no_async_controls.output_reg[5]_0\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_6\,
      \i_no_async_controls.output_reg[6]_0\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_5\,
      \i_no_async_controls.output_reg[7]_0\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_4\,
      \i_no_async_controls.output_reg[8]_0\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_3\,
      \i_no_async_controls.output_reg[9]_0\ => \pipelining.stages[5].slices[3].middlestages.belowdiagonal.piperegister_n_2\
    );
\pipelining.stages[6].slices[4].laststage.belowdiagonal.piperegister\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized1_22\
     port map (
      CLK => CLK,
      D(9) => \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_0\,
      D(8) => \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_1\,
      D(7) => \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_2\,
      D(6) => \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_3\,
      D(5) => \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_4\,
      D(4) => \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_5\,
      D(3) => \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_6\,
      D(2) => \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_7\,
      D(1) => \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_8\,
      D(0) => \pipelining.stages[5].slices[4].middlestages.belowdiagonal.piperegister_n_9\,
      S(9 downto 0) => S(41 downto 32)
    );
\pipelining.stages[6].slices[5].laststage.belowdiagonal.piperegister\: entity work.\add_int64_c_reg_fd_v12_0_5_viv__parameterized4_23\
     port map (
      CLK => CLK,
      D(10) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_1\,
      D(9) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_2\,
      D(8) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_3\,
      D(7) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_4\,
      D(6) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_5\,
      D(5) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_6\,
      D(4) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_7\,
      D(3) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_8\,
      D(2) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_9\,
      D(1) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_10\,
      D(0) => \pipelining.stages[5].slices[5].middlestages.diagonal.diagonal_adder_n_11\,
      S(10 downto 0) => S(52 downto 42)
    );
\pipelining.stages[6].slices[6].laststage.diagonal.diagonal_adder\: entity work.\add_int64_c_addsub_v12_0_12_fabric_legacy__parameterized11_24\
     port map (
      CLK => CLK,
      S(10 downto 0) => S(63 downto 53),
      \pipecarry[5,5]\ => \pipecarry[5,5]\,
      \piperegs[5]_53\(10 downto 0) => \piperegs[5]_53\(10 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_int64_c_addsub_v12_0_12_viv is
  port (
    S : out STD_LOGIC_VECTOR ( 63 downto 0 );
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 63 downto 0 );
    C_IN : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_int64_c_addsub_v12_0_12_viv : entity is "c_addsub_v12_0_12_viv";
end add_int64_c_addsub_v12_0_12_viv;

architecture STRUCTURE of add_int64_c_addsub_v12_0_12_viv is
begin
\i_baseblox.i_baseblox_addsub\: entity work.add_int64_c_addsub_v12_0_12_legacy
     port map (
      A(63 downto 0) => A(63 downto 0),
      B(63 downto 0) => B(63 downto 0),
      CLK => CLK,
      C_IN => C_IN,
      S(63 downto 0) => S(63 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_int64_c_addsub_v12_0_12 is
  port (
    A : in STD_LOGIC_VECTOR ( 63 downto 0 );
    B : in STD_LOGIC_VECTOR ( 63 downto 0 );
    CLK : in STD_LOGIC;
    ADD : in STD_LOGIC;
    C_IN : in STD_LOGIC;
    CE : in STD_LOGIC;
    BYPASS : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SSET : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    C_OUT : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute C_ADD_MODE : integer;
  attribute C_ADD_MODE of add_int64_c_addsub_v12_0_12 : entity is 0;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of add_int64_c_addsub_v12_0_12 : entity is "0";
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of add_int64_c_addsub_v12_0_12 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of add_int64_c_addsub_v12_0_12 : entity is 64;
  attribute C_BORROW_LOW : integer;
  attribute C_BORROW_LOW of add_int64_c_addsub_v12_0_12 : entity is 1;
  attribute C_BYPASS_LOW : integer;
  attribute C_BYPASS_LOW of add_int64_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_CONSTANT : integer;
  attribute C_B_CONSTANT of add_int64_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of add_int64_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of add_int64_c_addsub_v12_0_12 : entity is "0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of add_int64_c_addsub_v12_0_12 : entity is 64;
  attribute C_CE_OVERRIDES_BYPASS : integer;
  attribute C_CE_OVERRIDES_BYPASS of add_int64_c_addsub_v12_0_12 : entity is 1;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of add_int64_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_BYPASS : integer;
  attribute C_HAS_BYPASS of add_int64_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of add_int64_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_C_IN : integer;
  attribute C_HAS_C_IN of add_int64_c_addsub_v12_0_12 : entity is 1;
  attribute C_HAS_C_OUT : integer;
  attribute C_HAS_C_OUT of add_int64_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of add_int64_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of add_int64_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of add_int64_c_addsub_v12_0_12 : entity is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of add_int64_c_addsub_v12_0_12 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of add_int64_c_addsub_v12_0_12 : entity is 6;
  attribute C_OUT_WIDTH : integer;
  attribute C_OUT_WIDTH of add_int64_c_addsub_v12_0_12 : entity is 64;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of add_int64_c_addsub_v12_0_12 : entity is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of add_int64_c_addsub_v12_0_12 : entity is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of add_int64_c_addsub_v12_0_12 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of add_int64_c_addsub_v12_0_12 : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of add_int64_c_addsub_v12_0_12 : entity is "c_addsub_v12_0_12";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of add_int64_c_addsub_v12_0_12 : entity is "yes";
end add_int64_c_addsub_v12_0_12;

architecture STRUCTURE of add_int64_c_addsub_v12_0_12 is
  signal \<const0>\ : STD_LOGIC;
begin
  C_OUT <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xst_addsub: entity work.add_int64_c_addsub_v12_0_12_viv
     port map (
      A(63 downto 0) => A(63 downto 0),
      B(63 downto 0) => B(63 downto 0),
      CLK => CLK,
      C_IN => C_IN,
      S(63 downto 0) => S(63 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_int64 is
  port (
    A : in STD_LOGIC_VECTOR ( 63 downto 0 );
    B : in STD_LOGIC_VECTOR ( 63 downto 0 );
    CLK : in STD_LOGIC;
    C_IN : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of add_int64 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of add_int64 : entity is "add_int64,c_addsub_v12_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of add_int64 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of add_int64 : entity is "c_addsub_v12_0_12,Vivado 2018.3";
end add_int64;

architecture STRUCTURE of add_int64 is
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
  attribute c_a_width of U0 : label is 64;
  attribute c_add_mode : integer;
  attribute c_add_mode of U0 : label is 0;
  attribute c_b_constant : integer;
  attribute c_b_constant of U0 : label is 0;
  attribute c_b_type : integer;
  attribute c_b_type of U0 : label is 0;
  attribute c_b_value : string;
  attribute c_b_value of U0 : label is "0000000000000000000000000000000000000000000000000000000000000000";
  attribute c_b_width : integer;
  attribute c_b_width of U0 : label is 64;
  attribute c_bypass_low : integer;
  attribute c_bypass_low of U0 : label is 0;
  attribute c_has_bypass : integer;
  attribute c_has_bypass of U0 : label is 0;
  attribute c_has_c_in : integer;
  attribute c_has_c_in of U0 : label is 1;
  attribute c_has_c_out : integer;
  attribute c_has_c_out of U0 : label is 0;
  attribute c_latency : integer;
  attribute c_latency of U0 : label is 6;
  attribute c_out_width : integer;
  attribute c_out_width of U0 : label is 64;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of C_IN : signal is "xilinx.com:signal:data:1.0 c_in_intf DATA";
  attribute x_interface_parameter of C_IN : signal is "XIL_INTERFACENAME c_in_intf, LAYERED_METADATA undef";
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute x_interface_parameter of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute x_interface_info of S : signal is "xilinx.com:signal:data:1.0 s_intf DATA";
  attribute x_interface_parameter of S : signal is "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef";
begin
U0: entity work.add_int64_c_addsub_v12_0_12
     port map (
      A(63 downto 0) => A(63 downto 0),
      ADD => '1',
      B(63 downto 0) => B(63 downto 0),
      BYPASS => '0',
      CE => '1',
      CLK => CLK,
      C_IN => C_IN,
      C_OUT => NLW_U0_C_OUT_UNCONNECTED,
      S(63 downto 0) => S(63 downto 0),
      SCLR => '0',
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
