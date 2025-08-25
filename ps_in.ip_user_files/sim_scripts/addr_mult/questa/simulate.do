onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib addr_mult_opt

do {wave.do}

view wave
view structure
view signals

do {addr_mult.udo}

run -all

quit -force
