onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib cdc_fifo_nms_base_opt

do {wave.do}

view wave
view structure
view signals

do {cdc_fifo_nms_base.udo}

run -all

quit -force
