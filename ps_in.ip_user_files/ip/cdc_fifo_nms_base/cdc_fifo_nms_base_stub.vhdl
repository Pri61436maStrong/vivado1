-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon Aug 12 16:03:47 2024
-- Host        : aic-ts running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/FPGA_workspace/luowei/release_fpga/wyl_finnal/0731/one_input_wk_display_custop0_24073104/AI_Mate_IP/ps_in.srcs/sources_1/ip/cdc_fifo_nms_base/cdc_fifo_nms_base_stub.vhdl
-- Design      : cdc_fifo_nms_base
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z100ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cdc_fifo_nms_base is
  Port ( 
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 64 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 64 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    prog_full : out STD_LOGIC
  );

end cdc_fifo_nms_base;

architecture stub of cdc_fifo_nms_base is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,wr_clk,rd_clk,din[64:0],wr_en,rd_en,dout[64:0],full,empty,prog_full";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v13_2_3,Vivado 2018.3";
begin
end;
