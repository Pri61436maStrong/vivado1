onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib w514d512_fifo_opt

do {wave.do}

view wave
view structure
view signals

do {w514d512_fifo.udo}

run -all

quit -force
