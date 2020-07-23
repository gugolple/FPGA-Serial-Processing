onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+GameOfLife -L xil_defaultlib -L secureip -O5 xil_defaultlib.GameOfLife

do {wave.do}

view wave
view structure

do {GameOfLife.udo}

run -all

endsim

quit -force
