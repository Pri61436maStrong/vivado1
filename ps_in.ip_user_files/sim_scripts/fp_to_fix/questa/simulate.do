onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fp_to_fix_opt

do {wave.do}

view wave
view structure
view signals

do {fp_to_fix.udo}

run -all

quit -force
