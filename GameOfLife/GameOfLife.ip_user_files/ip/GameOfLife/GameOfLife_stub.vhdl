-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Sat Jul 11 13:58:48 2020
-- Host        : xilinx-vivado running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/ubuntu/XilinxProjects/GameOfLife/GameOfLife.srcs/sources_1/ip/GameOfLife/GameOfLife_stub.vhdl
-- Design      : GameOfLife
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s25csga225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GameOfLife is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    a_Clk_A : out STD_LOGIC;
    a_Rst_A : out STD_LOGIC;
    a_EN_A : out STD_LOGIC;
    a_WEN_A : out STD_LOGIC_VECTOR ( 0 to 0 );
    a_Addr_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    a_Din_A : out STD_LOGIC_VECTOR ( 7 downto 0 );
    a_Dout_A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    b_Clk_A : out STD_LOGIC;
    b_Rst_A : out STD_LOGIC;
    b_EN_A : out STD_LOGIC;
    b_WEN_A : out STD_LOGIC_VECTOR ( 0 to 0 );
    b_Addr_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    b_Din_A : out STD_LOGIC_VECTOR ( 7 downto 0 );
    b_Dout_A : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end GameOfLife;

architecture stub of GameOfLife is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_Clk_A,a_Rst_A,a_EN_A,a_WEN_A[0:0],a_Addr_A[31:0],a_Din_A[7:0],a_Dout_A[7:0],b_Clk_A,b_Rst_A,b_EN_A,b_WEN_A[0:0],b_Addr_A[31:0],b_Din_A[7:0],b_Dout_A[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fun,Vivado 2020.1";
begin
end;
