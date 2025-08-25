onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fifo_w25_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_w25.udo}

run -all

quit -force
