onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib add_s_32_32_opt

do {wave.do}

view wave
view structure
view signals

do {add_s_32_32.udo}

run -all

quit -force
