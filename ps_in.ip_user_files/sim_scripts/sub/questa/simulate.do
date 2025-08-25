onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib sub_data_opt

do {wave.do}

view wave
view structure
view signals

do {sub_data.udo}

run -all

quit -force
