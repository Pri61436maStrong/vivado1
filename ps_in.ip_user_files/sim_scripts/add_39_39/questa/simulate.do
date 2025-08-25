onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib add_39_39_opt

do {wave.do}

view wave
view structure
view signals

do {add_39_39.udo}

run -all

quit -force
