onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib add_s74_s72_opt

do {wave.do}

view wave
view structure
view signals

do {add_s74_s72.udo}

run -all

quit -force
