onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.GameOfLife

do {wave.do}

view wave
view structure
view signals

do {GameOfLife.udo}

run -all

quit -force
