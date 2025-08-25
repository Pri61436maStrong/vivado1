onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mult_s_26_16_opt

do {wave.do}

view wave
view structure
view signals

do {mult_s_26_16.udo}

run -all

quit -force
