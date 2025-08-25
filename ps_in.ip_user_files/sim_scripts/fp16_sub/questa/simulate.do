onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fp16_sub_opt

do {wave.do}

view wave
view structure
view signals

do {fp16_sub.udo}

run -all

quit -force
