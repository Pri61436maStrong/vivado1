onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib w16_d512_opt

do {wave.do}

view wave
view structure
view signals

do {w16_d512.udo}

run -all

quit -force
