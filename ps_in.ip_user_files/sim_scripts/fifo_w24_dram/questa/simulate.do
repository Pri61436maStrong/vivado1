onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fifo_w24_dram_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_w24_dram.udo}

run -all

quit -force
