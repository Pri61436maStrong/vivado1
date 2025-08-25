-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Aug 12 16:07:23 2024
-- Host        : aic-ts running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/segpost/lbdsp/lbdsp_stub.vhdl
-- Design      : lbdsp
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z100ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lbdsp is
  Port ( 
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 24 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    C : in STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 24 downto 0 );
    P : out STD_LOGIC_VECTOR ( 33 downto 0 )
  );

end lbdsp;

architecture stub of lbdsp is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,A[24:0],B[7:0],C[31:0],D[24:0],P[33:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "xbip_dsp48_macro_v3_0_16,Vivado 2018.3";
begin
end;
