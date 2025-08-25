onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib sp_rddr_fifo_opt

do {wave.do}

view wave
view structure
view signals

do {sp_rddr_fifo.udo}

run -all

quit -force
