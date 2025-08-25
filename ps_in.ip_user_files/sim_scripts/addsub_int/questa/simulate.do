onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib addsub_int_opt

do {wave.do}

view wave
view structure
view signals

do {addsub_int.udo}

run -all

quit -force
