onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fifo_w36d512_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_w36d512.udo}

run -all

quit -force
