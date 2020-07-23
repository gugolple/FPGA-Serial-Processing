vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xil_defaultlib -93 \
"../../../ipstatic/hdl/vhdl/fun.vhd" \
"../../../../GameOfLife.srcs/sources_1/ip/GameOfLife/sim/GameOfLife.vhd" \


