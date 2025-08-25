onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib base_axis_fifo_cdc32_opt

do {wave.do}

view wave
view structure
view signals

do {base_axis_fifo_cdc32.udo}

run -all

quit -force
