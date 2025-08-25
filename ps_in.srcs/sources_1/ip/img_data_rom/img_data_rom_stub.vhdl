-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Apr  7 17:29:01 2025
-- Host        : DESKTOP-22KCF78 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Smvar/Desktop/Project/reconfigure_test/ps_in.srcs/sources_1/ip/img_data_rom/img_data_rom_stub.vhdl
-- Design      : img_data_rom
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z100ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity img_data_rom is
  Port ( 
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end img_data_rom;

architecture stub of img_data_rom is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,addra[9:0],douta[63:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_2,Vivado 2018.3";
begin
end;
