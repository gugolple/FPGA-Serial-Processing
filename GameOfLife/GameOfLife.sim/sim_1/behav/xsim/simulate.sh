#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Thu Jul 23 15:58:57 UTC 2020
# SW Build 2902540 on Wed May 27 19:54:35 MDT 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xsim MainSim_behav -key {Behavioral:sim_1:Functional:MainSim} -tclbatch MainSim.tcl -view /home/ubuntu/XilinxProjects/GameOfLife/MainSim_behav.wcfg -log simulate.log"
xsim MainSim_behav -key {Behavioral:sim_1:Functional:MainSim} -tclbatch MainSim.tcl -view /home/ubuntu/XilinxProjects/GameOfLife/MainSim_behav.wcfg -log simulate.log

