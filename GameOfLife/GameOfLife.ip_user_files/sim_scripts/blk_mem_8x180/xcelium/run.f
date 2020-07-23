-makelib xcelium_lib/xpm -sv \
  "/home/ubuntu/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/home/ubuntu/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../GameOfLife.srcs/sources_1/ip/blk_mem_8x180/sim/blk_mem_8x180.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

