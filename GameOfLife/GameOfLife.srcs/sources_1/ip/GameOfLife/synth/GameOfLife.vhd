-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: GugoTec:LedMatrixController:fun:1.0
-- IP Revision: 2007100836

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY GameOfLife IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a_Clk_A : OUT STD_LOGIC;
    a_Rst_A : OUT STD_LOGIC;
    a_EN_A : OUT STD_LOGIC;
    a_WEN_A : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    a_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    a_Din_A : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    a_Dout_A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    b_Clk_A : OUT STD_LOGIC;
    b_Rst_A : OUT STD_LOGIC;
    b_EN_A : OUT STD_LOGIC;
    b_WEN_A : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    b_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    b_Din_A : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    b_Dout_A : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END GameOfLife;

ARCHITECTURE GameOfLife_arch OF GameOfLife IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF GameOfLife_arch: ARCHITECTURE IS "yes";
  COMPONENT fun IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      a_Clk_A : OUT STD_LOGIC;
      a_Rst_A : OUT STD_LOGIC;
      a_EN_A : OUT STD_LOGIC;
      a_WEN_A : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      a_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      a_Din_A : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      a_Dout_A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      b_Clk_A : OUT STD_LOGIC;
      b_Rst_A : OUT STD_LOGIC;
      b_EN_A : OUT STD_LOGIC;
      b_WEN_A : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      b_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      b_Din_A : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      b_Dout_A : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
  END COMPONENT fun;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF GameOfLife_arch: ARCHITECTURE IS "fun,Vivado 2020.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF GameOfLife_arch : ARCHITECTURE IS "GameOfLife,fun,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF GameOfLife_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF b_Dout_A: SIGNAL IS "xilinx.com:interface:bram:1.0 b_PORTA DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF b_Din_A: SIGNAL IS "xilinx.com:interface:bram:1.0 b_PORTA DIN";
  ATTRIBUTE X_INTERFACE_INFO OF b_Addr_A: SIGNAL IS "xilinx.com:interface:bram:1.0 b_PORTA ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF b_WEN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 b_PORTA WE";
  ATTRIBUTE X_INTERFACE_INFO OF b_EN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 b_PORTA EN";
  ATTRIBUTE X_INTERFACE_INFO OF b_Rst_A: SIGNAL IS "xilinx.com:interface:bram:1.0 b_PORTA RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF b_Clk_A: SIGNAL IS "XIL_INTERFACENAME b_PORTA, MEM_WIDTH 8, MEM_SIZE 1, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF b_Clk_A: SIGNAL IS "xilinx.com:interface:bram:1.0 b_PORTA CLK";
  ATTRIBUTE X_INTERFACE_INFO OF a_Dout_A: SIGNAL IS "xilinx.com:interface:bram:1.0 a_PORTA DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF a_Din_A: SIGNAL IS "xilinx.com:interface:bram:1.0 a_PORTA DIN";
  ATTRIBUTE X_INTERFACE_INFO OF a_Addr_A: SIGNAL IS "xilinx.com:interface:bram:1.0 a_PORTA ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF a_WEN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 a_PORTA WE";
  ATTRIBUTE X_INTERFACE_INFO OF a_EN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 a_PORTA EN";
  ATTRIBUTE X_INTERFACE_INFO OF a_Rst_A: SIGNAL IS "xilinx.com:interface:bram:1.0 a_PORTA RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF a_Clk_A: SIGNAL IS "XIL_INTERFACENAME a_PORTA, MEM_WIDTH 8, MEM_SIZE 1, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, READ_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF a_Clk_A: SIGNAL IS "xilinx.com:interface:bram:1.0 a_PORTA CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst: SIGNAL IS "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
BEGIN
  U0 : fun
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      a_Clk_A => a_Clk_A,
      a_Rst_A => a_Rst_A,
      a_EN_A => a_EN_A,
      a_WEN_A => a_WEN_A,
      a_Addr_A => a_Addr_A,
      a_Din_A => a_Din_A,
      a_Dout_A => a_Dout_A,
      b_Clk_A => b_Clk_A,
      b_Rst_A => b_Rst_A,
      b_EN_A => b_EN_A,
      b_WEN_A => b_WEN_A,
      b_Addr_A => b_Addr_A,
      b_Din_A => b_Din_A,
      b_Dout_A => b_Dout_A
    );
END GameOfLife_arch;
