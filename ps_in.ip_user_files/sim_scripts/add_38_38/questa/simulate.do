onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib add_38_38_opt

do {wave.do}

view wave
view structure
view signals

do {add_38_38.udo}

run -all

quit -force
