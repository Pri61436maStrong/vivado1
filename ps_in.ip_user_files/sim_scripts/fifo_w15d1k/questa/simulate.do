onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fifo_w15d1k_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_w15d1k.udo}

run -all

quit -force
