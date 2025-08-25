onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib w1280_d512_opt

do {wave.do}

view wave
view structure
view signals

do {w1280_d512.udo}

run -all

quit -force
