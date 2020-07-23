vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../ipstatic/hdl/vhdl/fun.vhd" \
"../../../../GameOfLife.srcs/sources_1/ip/GameOfLife/sim/GameOfLife.vhd" \


