-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Aug 20 14:33:48 2024
-- Host        : aic-ts running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0820/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/mult_s16_s16/mult_s16_s16_stub.vhdl
-- Design      : mult_s16_s16
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z100ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mult_s16_s16 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end mult_s16_s16;

architecture stub of mult_s16_s16 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[15:0],B[15:0],P[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mult_gen_v12_0_14,Vivado 2018.3";
begin
end;
