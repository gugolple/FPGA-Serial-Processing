// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sat Jul 11 13:58:47 2020
// Host        : xilinx-vivado running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ GameOfLife_stub.v
// Design      : GameOfLife
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fun,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst, ap_start, ap_done, ap_idle, 
  ap_ready, a_Clk_A, a_Rst_A, a_EN_A, a_WEN_A, a_Addr_A, a_Din_A, a_Dout_A, b_Clk_A, b_Rst_A, b_EN_A, 
  b_WEN_A, b_Addr_A, b_Din_A, b_Dout_A)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_Clk_A,a_Rst_A,a_EN_A,a_WEN_A[0:0],a_Addr_A[31:0],a_Din_A[7:0],a_Dout_A[7:0],b_Clk_A,b_Rst_A,b_EN_A,b_WEN_A[0:0],b_Addr_A[31:0],b_Din_A[7:0],b_Dout_A[7:0]" */;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output a_Clk_A;
  output a_Rst_A;
  output a_EN_A;
  output [0:0]a_WEN_A;
  output [31:0]a_Addr_A;
  output [7:0]a_Din_A;
  input [7:0]a_Dout_A;
  output b_Clk_A;
  output b_Rst_A;
  output b_EN_A;
  output [0:0]b_WEN_A;
  output [31:0]b_Addr_A;
  output [7:0]b_Din_A;
  input [7:0]b_Dout_A;
endmodule
