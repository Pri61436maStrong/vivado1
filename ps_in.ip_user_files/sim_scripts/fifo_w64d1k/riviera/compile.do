vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/fifo_generator_v13_2_3

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap fifo_generator_v13_2_3 riviera/fifo_generator_v13_2_3

vlog -work xil_defaultlib  -sv2k12 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../ps_in.srcs/sources_1/ip/norm/fifo_w64d1k/sim/fifo_w64d1k.v" \

vlog -work xil_defaultlib \
"glbl.v"

