onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+base_axis_fifo_cdc64 -L xil_defaultlib -L xpm -L fifo_generator_v13_2_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.base_axis_fifo_cdc64 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {base_axis_fifo_cdc64.udo}

run -all

endsim

quit -force
