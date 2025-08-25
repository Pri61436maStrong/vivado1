vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib questa_lib/msim/xbip_utils_v3_0_9
vlib questa_lib/msim/xbip_pipe_v3_0_5
vlib questa_lib/msim/xbip_dsp48_macro_v3_0_16

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap xbip_dsp48_wrapper_v3_0_4 questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_utils_v3_0_9 questa_lib/msim/xbip_utils_v3_0_9
vmap xbip_pipe_v3_0_5 questa_lib/msim/xbip_pipe_v3_0_5
vmap xbip_dsp48_macro_v3_0_16 questa_lib/msim/xbip_dsp48_macro_v3_0_16

vlog -work xil_defaultlib -64 -sv \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_utils_v3_0_9 -64 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -64 -93 \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_macro_v3_0_16 -64 -93 \
"../../../ipstatic/hdl/xbip_dsp48_macro_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../ps_in.srcs/sources_1/ip/norm/dsp48_mac/sim/dsp48_mac.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

