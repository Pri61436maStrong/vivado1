onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dsp48_mac_opt

do {wave.do}

view wave
view structure
view signals

do {dsp48_mac.udo}

run -all

quit -force
