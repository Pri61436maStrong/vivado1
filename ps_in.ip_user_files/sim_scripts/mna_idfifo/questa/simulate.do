onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mna_idfifo_opt

do {wave.do}

view wave
view structure
view signals

do {mna_idfifo.udo}

run -all

quit -force
