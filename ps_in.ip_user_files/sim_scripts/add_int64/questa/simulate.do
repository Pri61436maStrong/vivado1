onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib add_int64_opt

do {wave.do}

view wave
view structure
view signals

do {add_int64.udo}

run -all

quit -force
