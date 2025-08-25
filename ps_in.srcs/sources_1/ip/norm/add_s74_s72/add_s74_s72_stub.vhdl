-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Aug 12 16:04:04 2024
-- Host        : aic-ts running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/norm/add_s74_s72/add_s74_s72_stub.vhdl
-- Design      : add_s74_s72
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z100ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity add_s74_s72 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 73 downto 0 );
    B : in STD_LOGIC_VECTOR ( 71 downto 0 );
    CLK : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 73 downto 0 )
  );

end add_s74_s72;

architecture stub of add_s74_s72 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[73:0],B[71:0],CLK,S[73:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_addsub_v12_0_12,Vivado 2018.3";
begin
end;
