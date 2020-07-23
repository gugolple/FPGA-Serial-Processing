-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Sat Jul 18 20:20:50 2020
-- Host        : xilinx-vivado running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/ubuntu/XilinxProjects/GameOfLife/GameOfLife.sim/sim_1/synth/func/xsim/MainSim_func_synth.vhd
-- Design      : Main
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25csga225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart is
  port (
    uart_tx_OBUF : out STD_LOGIC;
    rx_busy : out STD_LOGIC;
    tx_ena29_out : out STD_LOGIC;
    clkb1_out : out STD_LOGIC;
    wait_txbusy28_out : out STD_LOGIC;
    n_1_21_BUFG_inst_n_2 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    readed25_out : out STD_LOGIC;
    clk_wait5_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    readed0 : out STD_LOGIC;
    clkb0 : out STD_LOGIC;
    finished_read17_out : out STD_LOGIC;
    output18_out : out STD_LOGIC;
    \wait_txbusy__0\ : out STD_LOGIC;
    \clk_wait__0\ : out STD_LOGIC;
    \rx_data_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    uart_rx_IBUF : in STD_LOGIC;
    tx_ena : in STD_LOGIC;
    clkb : in STD_LOGIC;
    clk_IBUF : in STD_LOGIC;
    clk_wait_reg : in STD_LOGIC;
    wait_txbusy : in STD_LOGIC;
    clk_wait : in STD_LOGIC;
    compleated_read : in STD_LOGIC;
    n_1_21_BUFG_inst : in STD_LOGIC;
    n_1_21_BUFG_inst_0 : in STD_LOGIC;
    n_1_21_BUFG_inst_1 : in STD_LOGIC;
    n_1_21_BUFG_inst_2 : in STD_LOGIC;
    n_1_21_BUFG_inst_i_1_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    counter_T0 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    output : in STD_LOGIC;
    \tx_buffer_reg[9]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end uart;

architecture STRUCTURE of uart is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal baud_pulse : STD_LOGIC;
  signal \count_baud[10]_i_2_n_2\ : STD_LOGIC;
  signal \count_baud[5]_i_2_n_2\ : STD_LOGIC;
  signal \count_baud[9]_i_2_n_2\ : STD_LOGIC;
  signal count_baud_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \count_os[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_os[1]_i_1_n_2\ : STD_LOGIC;
  signal \count_os[2]_i_1_n_2\ : STD_LOGIC;
  signal \count_os[3]_i_1_n_2\ : STD_LOGIC;
  signal \count_os[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_os[4]_i_2_n_2\ : STD_LOGIC;
  signal \count_os[5]_i_1_n_2\ : STD_LOGIC;
  signal \count_os[5]_i_2_n_2\ : STD_LOGIC;
  signal \count_os[5]_i_3_n_2\ : STD_LOGIC;
  signal \count_os[6]_i_1_n_2\ : STD_LOGIC;
  signal \count_os[6]_i_2_n_2\ : STD_LOGIC;
  signal \count_os[6]_i_3_n_2\ : STD_LOGIC;
  signal \count_os[6]_i_4_n_2\ : STD_LOGIC;
  signal \count_os[6]_i_5_n_2\ : STD_LOGIC;
  signal \count_os[6]_i_6_n_2\ : STD_LOGIC;
  signal \count_os[6]_i_7_n_2\ : STD_LOGIC;
  signal \count_os[6]_i_8_n_2\ : STD_LOGIC;
  signal \count_os[6]_i_9_n_2\ : STD_LOGIC;
  signal \count_os_reg_n_2_[0]\ : STD_LOGIC;
  signal \count_os_reg_n_2_[1]\ : STD_LOGIC;
  signal \count_os_reg_n_2_[2]\ : STD_LOGIC;
  signal \count_os_reg_n_2_[3]\ : STD_LOGIC;
  signal \count_os_reg_n_2_[4]\ : STD_LOGIC;
  signal \count_os_reg_n_2_[5]\ : STD_LOGIC;
  signal \count_os_reg_n_2_[6]\ : STD_LOGIC;
  signal n_1_21_BUFG_inst_i_10_n_2 : STD_LOGIC;
  signal n_1_21_BUFG_inst_i_5_n_2 : STD_LOGIC;
  signal os_count0 : STD_LOGIC;
  signal \os_count[0]_i_1_n_2\ : STD_LOGIC;
  signal \os_count[1]_i_1_n_2\ : STD_LOGIC;
  signal \os_count[2]_i_1_n_2\ : STD_LOGIC;
  signal \os_count[3]_i_2_n_2\ : STD_LOGIC;
  signal \os_count[3]_i_3_n_2\ : STD_LOGIC;
  signal \os_count_reg_n_2_[0]\ : STD_LOGIC;
  signal \os_count_reg_n_2_[1]\ : STD_LOGIC;
  signal \os_count_reg_n_2_[2]\ : STD_LOGIC;
  signal \os_count_reg_n_2_[3]\ : STD_LOGIC;
  signal os_pulse : STD_LOGIC;
  signal os_pulse_i_1_n_2 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in14_in : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in8_in : STD_LOGIC;
  signal p_2_in9_in : STD_LOGIC;
  signal p_3_in10_in : STD_LOGIC;
  signal p_4_in11_in : STD_LOGIC;
  signal p_5_in12_in : STD_LOGIC;
  signal p_6_in13_in : STD_LOGIC;
  signal rx_buffer0 : STD_LOGIC;
  signal \rx_buffer[9]_i_2_n_2\ : STD_LOGIC;
  signal \rx_buffer[9]_i_3_n_2\ : STD_LOGIC;
  signal \rx_buffer_reg_n_2_[1]\ : STD_LOGIC;
  signal \^rx_busy\ : STD_LOGIC;
  signal rx_busy_i_1_n_2 : STD_LOGIC;
  signal rx_count0 : STD_LOGIC;
  signal rx_count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_data0 : STD_LOGIC;
  signal rx_state_i_1_n_2 : STD_LOGIC;
  signal rx_state_i_2_n_2 : STD_LOGIC;
  signal rx_state_reg_n_2 : STD_LOGIC;
  signal \tx_buffer[0]_i_1_n_2\ : STD_LOGIC;
  signal \tx_buffer[10]_i_1_n_2\ : STD_LOGIC;
  signal \tx_buffer[10]_i_2_n_2\ : STD_LOGIC;
  signal \tx_buffer[10]_i_3_n_2\ : STD_LOGIC;
  signal \tx_buffer[1]_i_1_n_2\ : STD_LOGIC;
  signal \tx_buffer[2]_i_1_n_2\ : STD_LOGIC;
  signal \tx_buffer[3]_i_1_n_2\ : STD_LOGIC;
  signal \tx_buffer[4]_i_1_n_2\ : STD_LOGIC;
  signal \tx_buffer[5]_i_1_n_2\ : STD_LOGIC;
  signal \tx_buffer[6]_i_1_n_2\ : STD_LOGIC;
  signal \tx_buffer[7]_i_1_n_2\ : STD_LOGIC;
  signal \tx_buffer[8]_i_1_n_2\ : STD_LOGIC;
  signal \tx_buffer[9]_i_1_n_2\ : STD_LOGIC;
  signal \tx_buffer[9]_i_2_n_2\ : STD_LOGIC;
  signal \tx_buffer_reg_n_2_[0]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_2_[10]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_2_[1]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_2_[2]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_2_[3]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_2_[4]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_2_[5]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_2_[6]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_2_[7]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_2_[8]\ : STD_LOGIC;
  signal \tx_buffer_reg_n_2_[9]\ : STD_LOGIC;
  signal tx_busy : STD_LOGIC;
  signal tx_busy_i_1_n_2 : STD_LOGIC;
  signal \tx_count[3]_i_1_n_2\ : STD_LOGIC;
  signal tx_count_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tx_state : STD_LOGIC;
  signal tx_state_i_1_n_2 : STD_LOGIC;
  signal tx_state_i_2_n_2 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addrb_reg[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of baud_pulse_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of clk_wait_reg_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of clkb_reg_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count_baud[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count_baud[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count_baud[10]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count_baud[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count_baud[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_baud[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_baud[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_baud[5]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count_baud[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count_baud[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_baud[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_os[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count_os[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_os[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_os[4]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count_os[5]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count_os[6]_i_8\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter_T_reg[31]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of finished_read_reg_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \os_count[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \os_count[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of output_reg_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of readed_reg_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of readed_reg_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rx_count[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rx_count[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tx_buffer[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tx_buffer[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tx_buffer[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tx_buffer[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tx_buffer[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \tx_buffer[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \tx_buffer[8]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tx_buffer[9]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of tx_busy_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tx_count[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tx_count[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tx_count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of tx_ena_reg_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of tx_state_i_2 : label is "soft_lutpair13";
begin
  E(0) <= \^e\(0);
  rx_busy <= \^rx_busy\;
\addrb_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => clk_IBUF,
      O => \^e\(0)
    );
baud_pulse_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_os[6]_i_2_n_2\,
      O => p_0_in
    );
baud_pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => p_0_in,
      Q => baud_pulse,
      R => '0'
    );
clk_wait_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5100"
    )
        port map (
      I0 => clk_wait,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      O => \clk_wait__0\
    );
clk_wait_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4CCC4C4C40004040"
    )
        port map (
      I0 => clk_wait,
      I1 => clk_IBUF,
      I2 => clk_wait_reg,
      I3 => tx_busy,
      I4 => wait_txbusy,
      I5 => compleated_read,
      O => clk_wait5_out
    );
clkb_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008A"
    )
        port map (
      I0 => clk_wait_reg,
      I1 => tx_busy,
      I2 => wait_txbusy,
      I3 => clk_wait,
      O => clkb0
    );
clkb_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF008A00000000"
    )
        port map (
      I0 => clk_wait_reg,
      I1 => tx_busy,
      I2 => wait_txbusy,
      I3 => clk_wait,
      I4 => clkb,
      I5 => clk_IBUF,
      O => clkb1_out
    );
\count_baud[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \count_os[6]_i_2_n_2\,
      I1 => count_baud_reg(0),
      O => \p_0_in__0\(0)
    );
\count_baud[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B040"
    )
        port map (
      I0 => \count_baud[10]_i_2_n_2\,
      I1 => count_baud_reg(9),
      I2 => \count_os[6]_i_2_n_2\,
      I3 => count_baud_reg(10),
      O => \p_0_in__0\(10)
    );
\count_baud[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => count_baud_reg(7),
      I1 => count_baud_reg(6),
      I2 => \count_baud[9]_i_2_n_2\,
      I3 => count_baud_reg(8),
      O => \count_baud[10]_i_2_n_2\
    );
\count_baud[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \count_os[6]_i_2_n_2\,
      I1 => count_baud_reg(0),
      I2 => count_baud_reg(1),
      O => \p_0_in__0\(1)
    );
\count_baud[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \count_os[6]_i_2_n_2\,
      I1 => count_baud_reg(1),
      I2 => count_baud_reg(0),
      I3 => count_baud_reg(2),
      O => \p_0_in__0\(2)
    );
\count_baud[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \count_os[6]_i_2_n_2\,
      I1 => count_baud_reg(2),
      I2 => count_baud_reg(0),
      I3 => count_baud_reg(1),
      I4 => count_baud_reg(3),
      O => \p_0_in__0\(3)
    );
\count_baud[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \count_os[6]_i_2_n_2\,
      I1 => count_baud_reg(3),
      I2 => count_baud_reg(1),
      I3 => count_baud_reg(0),
      I4 => count_baud_reg(2),
      I5 => count_baud_reg(4),
      O => \p_0_in__0\(4)
    );
\count_baud[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \count_os[6]_i_2_n_2\,
      I1 => \count_baud[5]_i_2_n_2\,
      I2 => count_baud_reg(5),
      O => \p_0_in__0\(5)
    );
\count_baud[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => count_baud_reg(4),
      I1 => count_baud_reg(3),
      I2 => count_baud_reg(1),
      I3 => count_baud_reg(0),
      I4 => count_baud_reg(2),
      O => \count_baud[5]_i_2_n_2\
    );
\count_baud[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \count_baud[9]_i_2_n_2\,
      I1 => \count_os[6]_i_2_n_2\,
      I2 => count_baud_reg(6),
      O => \p_0_in__0\(6)
    );
\count_baud[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D020"
    )
        port map (
      I0 => count_baud_reg(6),
      I1 => \count_baud[9]_i_2_n_2\,
      I2 => \count_os[6]_i_2_n_2\,
      I3 => count_baud_reg(7),
      O => \p_0_in__0\(7)
    );
\count_baud[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF004000"
    )
        port map (
      I0 => \count_baud[9]_i_2_n_2\,
      I1 => count_baud_reg(6),
      I2 => count_baud_reg(7),
      I3 => \count_os[6]_i_2_n_2\,
      I4 => count_baud_reg(8),
      O => \p_0_in__0\(8)
    );
\count_baud[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF000008000000"
    )
        port map (
      I0 => count_baud_reg(7),
      I1 => count_baud_reg(6),
      I2 => \count_baud[9]_i_2_n_2\,
      I3 => count_baud_reg(8),
      I4 => \count_os[6]_i_2_n_2\,
      I5 => count_baud_reg(9),
      O => \p_0_in__0\(9)
    );
\count_baud[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => count_baud_reg(2),
      I1 => count_baud_reg(0),
      I2 => count_baud_reg(1),
      I3 => count_baud_reg(3),
      I4 => count_baud_reg(4),
      I5 => count_baud_reg(5),
      O => \count_baud[9]_i_2_n_2\
    );
\count_baud_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => count_baud_reg(0),
      R => '0'
    );
\count_baud_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(10),
      Q => count_baud_reg(10),
      R => '0'
    );
\count_baud_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => count_baud_reg(1),
      R => '0'
    );
\count_baud_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => count_baud_reg(2),
      R => '0'
    );
\count_baud_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => count_baud_reg(3),
      R => '0'
    );
\count_baud_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => count_baud_reg(4),
      R => '0'
    );
\count_baud_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => count_baud_reg(5),
      R => '0'
    );
\count_baud_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => count_baud_reg(6),
      R => '0'
    );
\count_baud_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => count_baud_reg(7),
      R => '0'
    );
\count_baud_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(8),
      Q => count_baud_reg(8),
      R => '0'
    );
\count_baud_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \p_0_in__0\(9),
      Q => count_baud_reg(9),
      R => '0'
    );
\count_os[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \count_os[6]_i_2_n_2\,
      I1 => \count_os_reg_n_2_[0]\,
      I2 => \count_os[5]_i_3_n_2\,
      O => \count_os[0]_i_1_n_2\
    );
\count_os[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \count_os[6]_i_4_n_2\,
      I1 => \count_os_reg_n_2_[1]\,
      I2 => \count_os_reg_n_2_[0]\,
      O => \count_os[1]_i_1_n_2\
    );
\count_os[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \count_os[6]_i_4_n_2\,
      I1 => \count_os_reg_n_2_[0]\,
      I2 => \count_os_reg_n_2_[1]\,
      I3 => \count_os_reg_n_2_[2]\,
      O => \count_os[2]_i_1_n_2\
    );
\count_os[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00000080000000"
    )
        port map (
      I0 => \count_os_reg_n_2_[1]\,
      I1 => \count_os_reg_n_2_[0]\,
      I2 => \count_os_reg_n_2_[2]\,
      I3 => \count_os[6]_i_2_n_2\,
      I4 => \count_os[5]_i_3_n_2\,
      I5 => \count_os_reg_n_2_[3]\,
      O => \count_os[3]_i_1_n_2\
    );
\count_os[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF000008000000"
    )
        port map (
      I0 => \count_os[6]_i_2_n_2\,
      I1 => \count_os_reg_n_2_[2]\,
      I2 => \count_os[4]_i_2_n_2\,
      I3 => \count_os_reg_n_2_[3]\,
      I4 => \count_os[6]_i_4_n_2\,
      I5 => \count_os_reg_n_2_[4]\,
      O => \count_os[4]_i_1_n_2\
    );
\count_os[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \count_os_reg_n_2_[1]\,
      I1 => \count_os_reg_n_2_[0]\,
      O => \count_os[4]_i_2_n_2\
    );
\count_os[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00000080000000"
    )
        port map (
      I0 => \count_os[5]_i_2_n_2\,
      I1 => \count_os_reg_n_2_[3]\,
      I2 => \count_os_reg_n_2_[4]\,
      I3 => \count_os[6]_i_2_n_2\,
      I4 => \count_os[5]_i_3_n_2\,
      I5 => \count_os_reg_n_2_[5]\,
      O => \count_os[5]_i_1_n_2\
    );
\count_os[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \count_os_reg_n_2_[2]\,
      I1 => \count_os_reg_n_2_[0]\,
      I2 => \count_os_reg_n_2_[1]\,
      O => \count_os[5]_i_2_n_2\
    );
\count_os[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0007FFFF"
    )
        port map (
      I0 => \count_os[6]_i_5_n_2\,
      I1 => \count_os[6]_i_8_n_2\,
      I2 => \count_os[6]_i_6_n_2\,
      I3 => \count_os[6]_i_7_n_2\,
      I4 => \count_os_reg_n_2_[6]\,
      I5 => \count_os[6]_i_9_n_2\,
      O => \count_os[5]_i_3_n_2\
    );
\count_os[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF000008000000"
    )
        port map (
      I0 => \count_os[6]_i_2_n_2\,
      I1 => \count_os_reg_n_2_[4]\,
      I2 => \count_os[6]_i_3_n_2\,
      I3 => \count_os_reg_n_2_[5]\,
      I4 => \count_os[6]_i_4_n_2\,
      I5 => \count_os_reg_n_2_[6]\,
      O => \count_os[6]_i_1_n_2\
    );
\count_os[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0002"
    )
        port map (
      I0 => \count_os[6]_i_5_n_2\,
      I1 => count_baud_reg(0),
      I2 => count_baud_reg(1),
      I3 => count_baud_reg(2),
      I4 => \count_os[6]_i_6_n_2\,
      I5 => \count_os[6]_i_7_n_2\,
      O => \count_os[6]_i_2_n_2\
    );
\count_os[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0007FFFFFFFFFFFF"
    )
        port map (
      I0 => \count_os[6]_i_5_n_2\,
      I1 => \count_os[6]_i_8_n_2\,
      I2 => \count_os[6]_i_6_n_2\,
      I3 => \count_os[6]_i_7_n_2\,
      I4 => \count_os[5]_i_2_n_2\,
      I5 => \count_os_reg_n_2_[3]\,
      O => \count_os[6]_i_3_n_2\
    );
\count_os[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB0BBB0BBB0"
    )
        port map (
      I0 => \count_os[6]_i_9_n_2\,
      I1 => \count_os_reg_n_2_[6]\,
      I2 => \count_os[6]_i_7_n_2\,
      I3 => \count_os[6]_i_6_n_2\,
      I4 => \count_os[6]_i_8_n_2\,
      I5 => \count_os[6]_i_5_n_2\,
      O => \count_os[6]_i_4_n_2\
    );
\count_os[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => count_baud_reg(9),
      I1 => count_baud_reg(8),
      I2 => count_baud_reg(4),
      I3 => count_baud_reg(3),
      O => \count_os[6]_i_5_n_2\
    );
\count_os[6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => count_baud_reg(7),
      I1 => count_baud_reg(8),
      I2 => count_baud_reg(9),
      I3 => count_baud_reg(10),
      O => \count_os[6]_i_6_n_2\
    );
\count_os[6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => count_baud_reg(5),
      I1 => count_baud_reg(6),
      I2 => count_baud_reg(8),
      I3 => count_baud_reg(9),
      O => \count_os[6]_i_7_n_2\
    );
\count_os[6]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => count_baud_reg(2),
      I1 => count_baud_reg(1),
      I2 => count_baud_reg(0),
      O => \count_os[6]_i_8_n_2\
    );
\count_os[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111011101111111"
    )
        port map (
      I0 => \count_os_reg_n_2_[5]\,
      I1 => \count_os_reg_n_2_[4]\,
      I2 => \count_os_reg_n_2_[2]\,
      I3 => \count_os_reg_n_2_[3]\,
      I4 => \count_os_reg_n_2_[1]\,
      I5 => \count_os_reg_n_2_[0]\,
      O => \count_os[6]_i_9_n_2\
    );
\count_os_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_os[0]_i_1_n_2\,
      Q => \count_os_reg_n_2_[0]\,
      R => '0'
    );
\count_os_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_os[1]_i_1_n_2\,
      Q => \count_os_reg_n_2_[1]\,
      R => '0'
    );
\count_os_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_os[2]_i_1_n_2\,
      Q => \count_os_reg_n_2_[2]\,
      R => '0'
    );
\count_os_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_os[3]_i_1_n_2\,
      Q => \count_os_reg_n_2_[3]\,
      R => '0'
    );
\count_os_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_os[4]_i_1_n_2\,
      Q => \count_os_reg_n_2_[4]\,
      R => '0'
    );
\count_os_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_os[5]_i_1_n_2\,
      Q => \count_os_reg_n_2_[5]\,
      R => '0'
    );
\count_os_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \count_os[6]_i_1_n_2\,
      Q => \count_os_reg_n_2_[6]\,
      R => '0'
    );
\counter_T_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000008AA"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => Q(0),
      O => D(0)
    );
\counter_T_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(9),
      O => D(10)
    );
\counter_T_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(10),
      O => D(11)
    );
\counter_T_reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(11),
      O => D(12)
    );
\counter_T_reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(12),
      O => D(13)
    );
\counter_T_reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(13),
      O => D(14)
    );
\counter_T_reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(14),
      O => D(15)
    );
\counter_T_reg[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(15),
      O => D(16)
    );
\counter_T_reg[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(16),
      O => D(17)
    );
\counter_T_reg[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(17),
      O => D(18)
    );
\counter_T_reg[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(18),
      O => D(19)
    );
\counter_T_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(0),
      O => D(1)
    );
\counter_T_reg[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(19),
      O => D(20)
    );
\counter_T_reg[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(20),
      O => D(21)
    );
\counter_T_reg[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(21),
      O => D(22)
    );
\counter_T_reg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(22),
      O => D(23)
    );
\counter_T_reg[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(23),
      O => D(24)
    );
\counter_T_reg[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(24),
      O => D(25)
    );
\counter_T_reg[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(25),
      O => D(26)
    );
\counter_T_reg[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(26),
      O => D(27)
    );
\counter_T_reg[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(27),
      O => D(28)
    );
\counter_T_reg[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(28),
      O => D(29)
    );
\counter_T_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(1),
      O => D(2)
    );
\counter_T_reg[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(29),
      O => D(30)
    );
\counter_T_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(30),
      O => D(31)
    );
\counter_T_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(2),
      O => D(3)
    );
\counter_T_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(3),
      O => D(4)
    );
\counter_T_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(4),
      O => D(5)
    );
\counter_T_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(5),
      O => D(6)
    );
\counter_T_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(6),
      O => D(7)
    );
\counter_T_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(7),
      O => D(8)
    );
\counter_T_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08AA0000"
    )
        port map (
      I0 => compleated_read,
      I1 => wait_txbusy,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      I4 => counter_T0(8),
      O => D(9)
    );
finished_read_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => output,
      I1 => \^rx_busy\,
      O => finished_read17_out
    );
n_1_21_BUFG_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => n_1_21_BUFG_inst,
      I1 => n_1_21_BUFG_inst_0,
      I2 => n_1_21_BUFG_inst_1,
      I3 => n_1_21_BUFG_inst_i_5_n_2,
      I4 => n_1_21_BUFG_inst_2,
      I5 => \^e\(0),
      O => n_1_21_BUFG_inst_n_2
    );
n_1_21_BUFG_inst_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      I2 => clk_IBUF,
      I3 => Q(6),
      I4 => wait_txbusy,
      I5 => tx_busy,
      O => n_1_21_BUFG_inst_i_10_n_2
    );
n_1_21_BUFG_inst_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => n_1_21_BUFG_inst_i_10_n_2,
      I1 => n_1_21_BUFG_inst_i_1_0,
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      O => n_1_21_BUFG_inst_i_5_n_2
    );
\os_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AB"
    )
        port map (
      I0 => rx_state_reg_n_2,
      I1 => \os_count_reg_n_2_[3]\,
      I2 => uart_rx_IBUF,
      I3 => \os_count_reg_n_2_[0]\,
      O => \os_count[0]_i_1_n_2\
    );
\os_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C3C0014"
    )
        port map (
      I0 => uart_rx_IBUF,
      I1 => \os_count_reg_n_2_[0]\,
      I2 => \os_count_reg_n_2_[1]\,
      I3 => \os_count_reg_n_2_[3]\,
      I4 => rx_state_reg_n_2,
      O => \os_count[1]_i_1_n_2\
    );
\os_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CCC3CCC00001444"
    )
        port map (
      I0 => uart_rx_IBUF,
      I1 => \os_count_reg_n_2_[2]\,
      I2 => \os_count_reg_n_2_[0]\,
      I3 => \os_count_reg_n_2_[1]\,
      I4 => \os_count_reg_n_2_[3]\,
      I5 => rx_state_reg_n_2,
      O => \os_count[2]_i_1_n_2\
    );
\os_count[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \os_count[3]_i_3_n_2\,
      I1 => os_pulse,
      O => os_count0
    );
\os_count[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F807F8000000080"
    )
        port map (
      I0 => \os_count_reg_n_2_[2]\,
      I1 => \os_count_reg_n_2_[0]\,
      I2 => \os_count_reg_n_2_[1]\,
      I3 => \os_count_reg_n_2_[3]\,
      I4 => uart_rx_IBUF,
      I5 => rx_state_reg_n_2,
      O => \os_count[3]_i_2_n_2\
    );
\os_count[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABFFFFFFFFFFFF"
    )
        port map (
      I0 => \rx_buffer[9]_i_2_n_2\,
      I1 => rx_count_reg(0),
      I2 => rx_count_reg(1),
      I3 => rx_count_reg(2),
      I4 => rx_count_reg(3),
      I5 => rx_state_reg_n_2,
      O => \os_count[3]_i_3_n_2\
    );
\os_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => os_count0,
      D => \os_count[0]_i_1_n_2\,
      Q => \os_count_reg_n_2_[0]\,
      R => '0'
    );
\os_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => os_count0,
      D => \os_count[1]_i_1_n_2\,
      Q => \os_count_reg_n_2_[1]\,
      R => '0'
    );
\os_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => os_count0,
      D => \os_count[2]_i_1_n_2\,
      Q => \os_count_reg_n_2_[2]\,
      R => '0'
    );
\os_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => os_count0,
      D => \os_count[3]_i_2_n_2\,
      Q => \os_count_reg_n_2_[3]\,
      R => '0'
    );
os_pulse_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_os[5]_i_3_n_2\,
      O => os_pulse_i_1_n_2
    );
os_pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => os_pulse_i_1_n_2,
      Q => os_pulse,
      R => '0'
    );
output_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => clk_IBUF,
      I1 => \^rx_busy\,
      O => output18_out
    );
readed_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7500"
    )
        port map (
      I0 => clk_wait_reg,
      I1 => tx_busy,
      I2 => wait_txbusy,
      I3 => compleated_read,
      O => readed0
    );
readed_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A220A00"
    )
        port map (
      I0 => clk_IBUF,
      I1 => clk_wait_reg,
      I2 => tx_busy,
      I3 => wait_txbusy,
      I4 => compleated_read,
      O => readed25_out
    );
\rx_buffer[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \rx_buffer[9]_i_2_n_2\,
      I1 => os_pulse,
      I2 => rx_state_reg_n_2,
      I3 => \rx_buffer[9]_i_3_n_2\,
      O => rx_buffer0
    );
\rx_buffer[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \os_count_reg_n_2_[2]\,
      I1 => \os_count_reg_n_2_[0]\,
      I2 => \os_count_reg_n_2_[1]\,
      I3 => \os_count_reg_n_2_[3]\,
      O => \rx_buffer[9]_i_2_n_2\
    );
\rx_buffer[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => rx_count_reg(0),
      I1 => rx_count_reg(1),
      I2 => rx_count_reg(2),
      I3 => rx_count_reg(3),
      O => \rx_buffer[9]_i_3_n_2\
    );
\rx_buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_buffer0,
      D => p_0_in7_in,
      Q => \rx_buffer_reg_n_2_[1]\,
      R => '0'
    );
\rx_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_buffer0,
      D => p_1_in8_in,
      Q => p_0_in7_in,
      R => '0'
    );
\rx_buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_buffer0,
      D => p_2_in9_in,
      Q => p_1_in8_in,
      R => '0'
    );
\rx_buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_buffer0,
      D => p_3_in10_in,
      Q => p_2_in9_in,
      R => '0'
    );
\rx_buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_buffer0,
      D => p_4_in11_in,
      Q => p_3_in10_in,
      R => '0'
    );
\rx_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_buffer0,
      D => p_5_in12_in,
      Q => p_4_in11_in,
      R => '0'
    );
\rx_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_buffer0,
      D => p_6_in13_in,
      Q => p_5_in12_in,
      R => '0'
    );
\rx_buffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_buffer0,
      D => p_0_in14_in,
      Q => p_6_in13_in,
      R => '0'
    );
\rx_buffer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_buffer0,
      D => uart_rx_IBUF,
      Q => p_0_in14_in,
      R => '0'
    );
rx_busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FFFFFF10000000"
    )
        port map (
      I0 => uart_rx_IBUF,
      I1 => rx_state_reg_n_2,
      I2 => \os_count_reg_n_2_[3]\,
      I3 => rx_state_i_2_n_2,
      I4 => os_pulse,
      I5 => \^rx_busy\,
      O => rx_busy_i_1_n_2
    );
rx_busy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => rx_busy_i_1_n_2,
      Q => \^rx_busy\,
      R => '0'
    );
\rx_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => rx_count_reg(0),
      I1 => rx_state_reg_n_2,
      I2 => uart_rx_IBUF,
      O => \p_0_in__1\(0)
    );
\rx_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3CAA"
    )
        port map (
      I0 => uart_rx_IBUF,
      I1 => rx_count_reg(0),
      I2 => rx_count_reg(1),
      I3 => rx_state_reg_n_2,
      O => \p_0_in__1\(1)
    );
\rx_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FC0AAAA"
    )
        port map (
      I0 => uart_rx_IBUF,
      I1 => rx_count_reg(0),
      I2 => rx_count_reg(1),
      I3 => rx_count_reg(2),
      I4 => rx_state_reg_n_2,
      O => \p_0_in__1\(2)
    );
\rx_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40004C0C40004000"
    )
        port map (
      I0 => \rx_buffer[9]_i_2_n_2\,
      I1 => os_pulse,
      I2 => rx_state_reg_n_2,
      I3 => \rx_buffer[9]_i_3_n_2\,
      I4 => uart_rx_IBUF,
      I5 => \os_count_reg_n_2_[3]\,
      O => rx_count0
    );
\rx_count[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FFFC000AAAAAAAA"
    )
        port map (
      I0 => uart_rx_IBUF,
      I1 => rx_count_reg(1),
      I2 => rx_count_reg(0),
      I3 => rx_count_reg(2),
      I4 => rx_count_reg(3),
      I5 => rx_state_reg_n_2,
      O => \p_0_in__1\(3)
    );
\rx_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_count0,
      D => \p_0_in__1\(0),
      Q => rx_count_reg(0),
      R => '0'
    );
\rx_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_count0,
      D => \p_0_in__1\(1),
      Q => rx_count_reg(1),
      R => '0'
    );
\rx_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_count0,
      D => \p_0_in__1\(2),
      Q => rx_count_reg(2),
      R => '0'
    );
\rx_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_count0,
      D => \p_0_in__1\(3),
      Q => rx_count_reg(3),
      R => '0'
    );
\rx_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => os_pulse,
      I1 => \os_count[3]_i_3_n_2\,
      O => rx_data0
    );
\rx_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_data0,
      D => \rx_buffer_reg_n_2_[1]\,
      Q => \rx_data_reg[7]_0\(0),
      R => '0'
    );
\rx_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_data0,
      D => p_0_in7_in,
      Q => \rx_data_reg[7]_0\(1),
      R => '0'
    );
\rx_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_data0,
      D => p_1_in8_in,
      Q => \rx_data_reg[7]_0\(2),
      R => '0'
    );
\rx_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_data0,
      D => p_2_in9_in,
      Q => \rx_data_reg[7]_0\(3),
      R => '0'
    );
\rx_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_data0,
      D => p_3_in10_in,
      Q => \rx_data_reg[7]_0\(4),
      R => '0'
    );
\rx_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_data0,
      D => p_4_in11_in,
      Q => \rx_data_reg[7]_0\(5),
      R => '0'
    );
\rx_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_data0,
      D => p_5_in12_in,
      Q => \rx_data_reg[7]_0\(6),
      R => '0'
    );
\rx_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => rx_data0,
      D => p_6_in13_in,
      Q => \rx_data_reg[7]_0\(7),
      R => '0'
    );
rx_state_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF2F00"
    )
        port map (
      I0 => \os_count_reg_n_2_[3]\,
      I1 => uart_rx_IBUF,
      I2 => rx_state_i_2_n_2,
      I3 => os_pulse,
      I4 => rx_state_reg_n_2,
      O => rx_state_i_1_n_2
    );
rx_state_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55540000FFFFFFFF"
    )
        port map (
      I0 => \rx_buffer[9]_i_2_n_2\,
      I1 => rx_count_reg(0),
      I2 => rx_count_reg(1),
      I3 => rx_count_reg(2),
      I4 => rx_count_reg(3),
      I5 => rx_state_reg_n_2,
      O => rx_state_i_2_n_2
    );
rx_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => rx_state_i_1_n_2,
      Q => rx_state_reg_n_2,
      R => '0'
    );
\tx_buffer[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFAFCAAA"
    )
        port map (
      I0 => \tx_buffer_reg_n_2_[0]\,
      I1 => \tx_buffer_reg_n_2_[1]\,
      I2 => tx_state,
      I3 => baud_pulse,
      I4 => tx_ena,
      O => \tx_buffer[0]_i_1_n_2\
    );
\tx_buffer[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAA3C3CFFAAAAAA"
    )
        port map (
      I0 => \tx_buffer_reg_n_2_[10]\,
      I1 => \tx_buffer[10]_i_2_n_2\,
      I2 => \tx_buffer[10]_i_3_n_2\,
      I3 => baud_pulse,
      I4 => tx_state,
      I5 => tx_ena,
      O => \tx_buffer[10]_i_1_n_2\
    );
\tx_buffer[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \tx_buffer_reg[9]_0\(6),
      I1 => \tx_buffer_reg[9]_0\(5),
      I2 => \tx_buffer_reg[9]_0\(0),
      I3 => \tx_buffer_reg[9]_0\(7),
      O => \tx_buffer[10]_i_2_n_2\
    );
\tx_buffer[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \tx_buffer_reg[9]_0\(2),
      I1 => \tx_buffer_reg[9]_0\(1),
      I2 => \tx_buffer_reg[9]_0\(4),
      I3 => \tx_buffer_reg[9]_0\(3),
      O => \tx_buffer[10]_i_3_n_2\
    );
\tx_buffer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tx_state,
      I1 => \tx_buffer_reg_n_2_[2]\,
      O => \tx_buffer[1]_i_1_n_2\
    );
\tx_buffer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_2_[3]\,
      I1 => tx_state,
      I2 => \tx_buffer_reg[9]_0\(0),
      O => \tx_buffer[2]_i_1_n_2\
    );
\tx_buffer[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_2_[4]\,
      I1 => tx_state,
      I2 => \tx_buffer_reg[9]_0\(1),
      O => \tx_buffer[3]_i_1_n_2\
    );
\tx_buffer[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_2_[5]\,
      I1 => tx_state,
      I2 => \tx_buffer_reg[9]_0\(2),
      O => \tx_buffer[4]_i_1_n_2\
    );
\tx_buffer[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_2_[6]\,
      I1 => tx_state,
      I2 => \tx_buffer_reg[9]_0\(3),
      O => \tx_buffer[5]_i_1_n_2\
    );
\tx_buffer[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_2_[7]\,
      I1 => tx_state,
      I2 => \tx_buffer_reg[9]_0\(4),
      O => \tx_buffer[6]_i_1_n_2\
    );
\tx_buffer[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_2_[8]\,
      I1 => tx_state,
      I2 => \tx_buffer_reg[9]_0\(5),
      O => \tx_buffer[7]_i_1_n_2\
    );
\tx_buffer[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_2_[9]\,
      I1 => tx_state,
      I2 => \tx_buffer_reg[9]_0\(6),
      O => \tx_buffer[8]_i_1_n_2\
    );
\tx_buffer[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => baud_pulse,
      I1 => tx_state,
      I2 => tx_ena,
      O => \tx_buffer[9]_i_1_n_2\
    );
\tx_buffer[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_buffer_reg_n_2_[10]\,
      I1 => tx_state,
      I2 => \tx_buffer_reg[9]_0\(7),
      O => \tx_buffer[9]_i_2_n_2\
    );
\tx_buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \tx_buffer[0]_i_1_n_2\,
      Q => \tx_buffer_reg_n_2_[0]\,
      R => '0'
    );
\tx_buffer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \tx_buffer[10]_i_1_n_2\,
      Q => \tx_buffer_reg_n_2_[10]\,
      R => '0'
    );
\tx_buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_buffer[9]_i_1_n_2\,
      D => \tx_buffer[1]_i_1_n_2\,
      Q => \tx_buffer_reg_n_2_[1]\,
      R => '0'
    );
\tx_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_buffer[9]_i_1_n_2\,
      D => \tx_buffer[2]_i_1_n_2\,
      Q => \tx_buffer_reg_n_2_[2]\,
      R => '0'
    );
\tx_buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_buffer[9]_i_1_n_2\,
      D => \tx_buffer[3]_i_1_n_2\,
      Q => \tx_buffer_reg_n_2_[3]\,
      R => '0'
    );
\tx_buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_buffer[9]_i_1_n_2\,
      D => \tx_buffer[4]_i_1_n_2\,
      Q => \tx_buffer_reg_n_2_[4]\,
      R => '0'
    );
\tx_buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_buffer[9]_i_1_n_2\,
      D => \tx_buffer[5]_i_1_n_2\,
      Q => \tx_buffer_reg_n_2_[5]\,
      R => '0'
    );
\tx_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_buffer[9]_i_1_n_2\,
      D => \tx_buffer[6]_i_1_n_2\,
      Q => \tx_buffer_reg_n_2_[6]\,
      R => '0'
    );
\tx_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_buffer[9]_i_1_n_2\,
      D => \tx_buffer[7]_i_1_n_2\,
      Q => \tx_buffer_reg_n_2_[7]\,
      R => '0'
    );
\tx_buffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_buffer[9]_i_1_n_2\,
      D => \tx_buffer[8]_i_1_n_2\,
      Q => \tx_buffer_reg_n_2_[8]\,
      R => '0'
    );
\tx_buffer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_buffer[9]_i_1_n_2\,
      D => \tx_buffer[9]_i_2_n_2\,
      Q => \tx_buffer_reg_n_2_[9]\,
      R => '0'
    );
tx_busy_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tx_busy,
      I1 => tx_state,
      I2 => tx_ena,
      O => tx_busy_i_1_n_2
    );
tx_busy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => tx_busy_i_1_n_2,
      Q => tx_busy,
      R => '0'
    );
\tx_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => tx_count_reg(0),
      I1 => tx_state,
      I2 => baud_pulse,
      O => \p_0_in__2\(0)
    );
\tx_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => baud_pulse,
      I1 => tx_count_reg(0),
      I2 => tx_state,
      I3 => tx_count_reg(1),
      O => \p_0_in__2\(1)
    );
\tx_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => tx_count_reg(0),
      I1 => baud_pulse,
      I2 => tx_count_reg(1),
      I3 => tx_state,
      I4 => tx_count_reg(2),
      O => \p_0_in__2\(2)
    );
\tx_count[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tx_state,
      I1 => tx_ena,
      O => \tx_count[3]_i_1_n_2\
    );
\tx_count[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => tx_count_reg(1),
      I1 => baud_pulse,
      I2 => tx_count_reg(0),
      I3 => tx_count_reg(2),
      I4 => tx_state,
      I5 => tx_count_reg(3),
      O => \p_0_in__2\(3)
    );
\tx_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_count[3]_i_1_n_2\,
      D => \p_0_in__2\(0),
      Q => tx_count_reg(0),
      R => '0'
    );
\tx_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_count[3]_i_1_n_2\,
      D => \p_0_in__2\(1),
      Q => tx_count_reg(1),
      R => '0'
    );
\tx_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_count[3]_i_1_n_2\,
      D => \p_0_in__2\(2),
      Q => tx_count_reg(2),
      R => '0'
    );
\tx_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tx_count[3]_i_1_n_2\,
      D => \p_0_in__2\(3),
      Q => tx_count_reg(3),
      R => '0'
    );
tx_ena_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F800"
    )
        port map (
      I0 => tx_busy,
      I1 => tx_ena,
      I2 => clkb,
      I3 => clk_IBUF,
      O => tx_ena29_out
    );
tx_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \tx_buffer_reg_n_2_[0]\,
      Q => uart_tx_OBUF,
      R => '0'
    );
tx_state_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2EE2EEEE"
    )
        port map (
      I0 => tx_ena,
      I1 => tx_state,
      I2 => tx_count_reg(2),
      I3 => tx_state_i_2_n_2,
      I4 => tx_count_reg(3),
      O => tx_state_i_1_n_2
    );
tx_state_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => tx_count_reg(0),
      I1 => baud_pulse,
      I2 => tx_count_reg(1),
      O => tx_state_i_2_n_2
    );
tx_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => tx_state_i_1_n_2,
      Q => tx_state,
      R => '0'
    );
wait_txbusy_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A020"
    )
        port map (
      I0 => tx_ena,
      I1 => compleated_read,
      I2 => tx_busy,
      I3 => clk_wait_reg,
      O => \wait_txbusy__0\
    );
wait_txbusy_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CCC8C0C88008800"
    )
        port map (
      I0 => tx_ena,
      I1 => clk_IBUF,
      I2 => clk_wait_reg,
      I3 => tx_busy,
      I4 => wait_txbusy,
      I5 => compleated_read,
      O => wait_txbusy28_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_8x180_blk_mem_gen_prim_wrapper is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_8x180_blk_mem_gen_prim_wrapper : entity is "blk_mem_gen_prim_wrapper";
end blk_mem_8x180_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of blk_mem_8x180_blk_mem_gen_prim_wrapper is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_1\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_10\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_11\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_16\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_17\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_18\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_19\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_2\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_24\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_25\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_26\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_27\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_3\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_32\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_33\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_34\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_35\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_8\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_9\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11 downto 4) => addra(7 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 12) => B"00",
      ADDRBWRADDR(11 downto 4) => addrb(7 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DIADI(15 downto 12) => B"0000",
      DIADI(11 downto 8) => dina(7 downto 4),
      DIADI(7 downto 4) => B"0000",
      DIADI(3 downto 0) => dina(3 downto 0),
      DIBDI(15 downto 12) => B"0000",
      DIBDI(11 downto 8) => dinb(7 downto 4),
      DIBDI(7 downto 4) => B"0000",
      DIBDI(3 downto 0) => dinb(3 downto 0),
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_0\,
      DOADO(14) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_1\,
      DOADO(13) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_2\,
      DOADO(12) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_3\,
      DOADO(11 downto 8) => douta(7 downto 4),
      DOADO(7) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_8\,
      DOADO(6) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_9\,
      DOADO(5) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_10\,
      DOADO(4) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_11\,
      DOADO(3 downto 0) => douta(3 downto 0),
      DOBDO(15) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_16\,
      DOBDO(14) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_17\,
      DOBDO(13) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_18\,
      DOBDO(12) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_19\,
      DOBDO(11 downto 8) => doutb(7 downto 4),
      DOBDO(7) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_24\,
      DOBDO(6) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_25\,
      DOBDO(5) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_26\,
      DOBDO(4) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_27\,
      DOBDO(3 downto 0) => doutb(3 downto 0),
      DOPADOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_32\,
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_33\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_34\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_n_35\,
      ENARDEN => ena,
      ENBWREN => enb,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(3 downto 2) => B"00",
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_8x180_blk_mem_gen_prim_width is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_8x180_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end blk_mem_8x180_blk_mem_gen_prim_width;

architecture STRUCTURE of blk_mem_8x180_blk_mem_gen_prim_width is
begin
\prim_noinit.ram\: entity work.blk_mem_8x180_blk_mem_gen_prim_wrapper
     port map (
      addra(7 downto 0) => addra(7 downto 0),
      addrb(7 downto 0) => addrb(7 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta(7 downto 0) => douta(7 downto 0),
      doutb(7 downto 0) => doutb(7 downto 0),
      ena => ena,
      enb => enb,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_8x180_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_8x180_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end blk_mem_8x180_blk_mem_gen_generic_cstr;

architecture STRUCTURE of blk_mem_8x180_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.blk_mem_8x180_blk_mem_gen_prim_width
     port map (
      addra(7 downto 0) => addra(7 downto 0),
      addrb(7 downto 0) => addrb(7 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta(7 downto 0) => douta(7 downto 0),
      doutb(7 downto 0) => doutb(7 downto 0),
      ena => ena,
      enb => enb,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_8x180_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_8x180_blk_mem_gen_top : entity is "blk_mem_gen_top";
end blk_mem_8x180_blk_mem_gen_top;

architecture STRUCTURE of blk_mem_8x180_blk_mem_gen_top is
begin
\valid.cstr\: entity work.blk_mem_8x180_blk_mem_gen_generic_cstr
     port map (
      addra(7 downto 0) => addra(7 downto 0),
      addrb(7 downto 0) => addrb(7 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta(7 downto 0) => douta(7 downto 0),
      doutb(7 downto 0) => doutb(7 downto 0),
      ena => ena,
      enb => enb,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_8x180_blk_mem_gen_v8_4_4_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_8x180_blk_mem_gen_v8_4_4_synth : entity is "blk_mem_gen_v8_4_4_synth";
end blk_mem_8x180_blk_mem_gen_v8_4_4_synth;

architecture STRUCTURE of blk_mem_8x180_blk_mem_gen_v8_4_4_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.blk_mem_8x180_blk_mem_gen_top
     port map (
      addra(7 downto 0) => addra(7 downto 0),
      addrb(7 downto 0) => addrb(7 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta(7 downto 0) => douta(7 downto 0),
      doutb(7 downto 0) => doutb(7 downto 0),
      ena => ena,
      enb => enb,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_8x180_blk_mem_gen_v8_4_4 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 8;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 8;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is "Estimated Power for IP     :     2.55655 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is "spartan7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is "blk_mem_8x180.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 2;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 180;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 180;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 8;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 8;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 180;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 180;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is "NO_CHANGE";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 8;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is 8;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is "spartan7";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is "blk_mem_gen_v8_4_4";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of blk_mem_8x180_blk_mem_gen_v8_4_4 : entity is "yes";
end blk_mem_8x180_blk_mem_gen_v8_4_4;

architecture STRUCTURE of blk_mem_8x180_blk_mem_gen_v8_4_4 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.blk_mem_8x180_blk_mem_gen_v8_4_4_synth
     port map (
      addra(7 downto 0) => addra(7 downto 0),
      addrb(7 downto 0) => addrb(7 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta(7 downto 0) => douta(7 downto 0),
      doutb(7 downto 0) => doutb(7 downto 0),
      ena => ena,
      enb => enb,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blk_mem_8x180 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of blk_mem_8x180 : entity is "blk_mem_8x180,blk_mem_gen_v8_4_4,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of blk_mem_8x180 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of blk_mem_8x180 : entity is "blk_mem_gen_v8_4_4,Vivado 2020.1";
end blk_mem_8x180;

architecture STRUCTURE of blk_mem_8x180 is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 8;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 8;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     2.55655 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "spartan7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 1;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "blk_mem_8x180.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 2;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 180;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 180;
  attribute C_READ_LATENCY_A : integer;
  attribute C_READ_LATENCY_A of U0 : label is 1;
  attribute C_READ_LATENCY_B : integer;
  attribute C_READ_LATENCY_B of U0 : label is 1;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 8;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 8;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 180;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 180;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "NO_CHANGE";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 8;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 8;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "spartan7";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of U0 : label is "soft";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute x_interface_info of clkb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK";
  attribute x_interface_parameter of clkb : signal is "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute x_interface_info of ena : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute x_interface_info of enb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB EN";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of addrb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR";
  attribute x_interface_info of dina : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute x_interface_info of dinb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN";
  attribute x_interface_info of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute x_interface_info of doutb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT";
  attribute x_interface_info of wea : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
  attribute x_interface_info of web : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB WE";
begin
U0: entity work.blk_mem_8x180_blk_mem_gen_v8_4_4
     port map (
      addra(7 downto 0) => addra(7 downto 0),
      addrb(7 downto 0) => addrb(7 downto 0),
      clka => clka,
      clkb => clkb,
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta(7 downto 0) => douta(7 downto 0),
      doutb(7 downto 0) => doutb(7 downto 0),
      eccpipece => '0',
      ena => ena,
      enb => enb,
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(7 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(7 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(7 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(7 downto 0),
      s_axi_rdata(7 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(7 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(7 downto 0) => B"00000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Main is
  port (
    clk : in STD_LOGIC;
    uart_tx : out STD_LOGIC;
    uart_rx : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Main : entity is true;
end Main;

architecture STRUCTURE of Main is
  signal addra : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \addra_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal addrb : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal clk_wait : STD_LOGIC;
  signal clk_wait5_out : STD_LOGIC;
  signal \clk_wait__0\ : STD_LOGIC;
  signal clka : STD_LOGIC;
  signal clka0 : STD_LOGIC;
  signal clka0_out : STD_LOGIC;
  signal clkb : STD_LOGIC;
  signal clkb0 : STD_LOGIC;
  signal clkb1_out : STD_LOGIC;
  signal clocked : STD_LOGIC;
  signal clocked0 : STD_LOGIC;
  signal clocked14_out : STD_LOGIC;
  signal \clocked__0\ : STD_LOGIC;
  signal compleated_read : STD_LOGIC;
  signal compleated_read7_out : STD_LOGIC;
  signal compleated_read_reg_i_10_n_2 : STD_LOGIC;
  signal compleated_read_reg_i_11_n_2 : STD_LOGIC;
  signal compleated_read_reg_i_12_n_2 : STD_LOGIC;
  signal compleated_read_reg_i_3_n_2 : STD_LOGIC;
  signal compleated_read_reg_i_4_n_2 : STD_LOGIC;
  signal compleated_read_reg_i_5_n_2 : STD_LOGIC;
  signal compleated_read_reg_i_6_n_2 : STD_LOGIC;
  signal compleated_read_reg_i_7_n_2 : STD_LOGIC;
  signal compleated_read_reg_i_8_n_2 : STD_LOGIC;
  signal compleated_read_reg_i_9_n_2 : STD_LOGIC;
  signal counter_R0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \counter_R_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \counter_R_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \counter_R_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \counter_R_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \counter_R_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \counter_R_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \counter_R_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \counter_R_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \counter_R_reg[17]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[18]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[1]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \counter_R_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \counter_R_reg[20]_i_2_n_4\ : STD_LOGIC;
  signal \counter_R_reg[20]_i_2_n_5\ : STD_LOGIC;
  signal \counter_R_reg[21]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[22]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \counter_R_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \counter_R_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \counter_R_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \counter_R_reg[25]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[26]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \counter_R_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \counter_R_reg[28]_i_2_n_4\ : STD_LOGIC;
  signal \counter_R_reg[28]_i_2_n_5\ : STD_LOGIC;
  signal \counter_R_reg[29]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[2]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[30]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \counter_R_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \counter_R_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \counter_R_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \counter_R_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \counter_R_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \counter_R_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \counter_R_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \counter_R_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \counter_R_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \counter_R_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[0]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[10]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[11]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[12]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[13]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[14]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[15]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[16]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[17]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[18]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[19]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[1]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[20]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[21]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[22]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[23]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[24]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[25]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[26]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[27]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[28]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[29]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[2]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[30]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[31]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[3]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[4]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[5]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[6]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[7]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[8]\ : STD_LOGIC;
  signal \counter_R_reg_n_2_[9]\ : STD_LOGIC;
  signal counter_T0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \counter_T_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \counter_T_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \counter_T_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \counter_T_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \counter_T_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \counter_T_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \counter_T_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \counter_T_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \counter_T_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \counter_T_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \counter_T_reg[20]_i_2_n_4\ : STD_LOGIC;
  signal \counter_T_reg[20]_i_2_n_5\ : STD_LOGIC;
  signal \counter_T_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \counter_T_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \counter_T_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \counter_T_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \counter_T_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \counter_T_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \counter_T_reg[28]_i_2_n_4\ : STD_LOGIC;
  signal \counter_T_reg[28]_i_2_n_5\ : STD_LOGIC;
  signal \counter_T_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \counter_T_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \counter_T_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \counter_T_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \counter_T_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \counter_T_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \counter_T_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \counter_T_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \counter_T_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \counter_T_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[0]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[10]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[11]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[12]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[13]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[14]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[15]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[16]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[17]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[18]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[19]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[1]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[20]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[21]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[22]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[23]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[24]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[25]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[26]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[27]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[28]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[29]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[2]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[30]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[31]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[3]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[4]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[5]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[6]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[7]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[8]\ : STD_LOGIC;
  signal \counter_T_reg_n_2_[9]\ : STD_LOGIC;
  signal dina : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal doutb : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal finished_read : STD_LOGIC;
  signal finished_read17_out : STD_LOGIC;
  signal finished_read_BUFG : STD_LOGIC;
  signal n_0_65_BUFG : STD_LOGIC;
  signal n_0_65_BUFG_inst_n_1 : STD_LOGIC;
  signal n_1_21_BUFG : STD_LOGIC;
  signal n_1_21_BUFG_inst_i_11_n_2 : STD_LOGIC;
  signal n_1_21_BUFG_inst_i_12_n_2 : STD_LOGIC;
  signal n_1_21_BUFG_inst_i_2_n_2 : STD_LOGIC;
  signal n_1_21_BUFG_inst_i_3_n_2 : STD_LOGIC;
  signal n_1_21_BUFG_inst_i_4_n_2 : STD_LOGIC;
  signal n_1_21_BUFG_inst_i_6_n_2 : STD_LOGIC;
  signal n_1_21_BUFG_inst_i_7_n_2 : STD_LOGIC;
  signal n_1_21_BUFG_inst_i_8_n_2 : STD_LOGIC;
  signal n_1_21_BUFG_inst_i_9_n_2 : STD_LOGIC;
  signal n_1_21_BUFG_inst_n_2 : STD_LOGIC;
  signal output : STD_LOGIC;
  signal output18_out : STD_LOGIC;
  signal readed : STD_LOGIC;
  signal readed0 : STD_LOGIC;
  signal readed038_out : STD_LOGIC;
  signal readed25_out : STD_LOGIC;
  signal readed_reg_n_2 : STD_LOGIC;
  signal rx_busy : STD_LOGIC;
  signal rx_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tx_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \tx_data__0\ : STD_LOGIC;
  signal tx_ena : STD_LOGIC;
  signal tx_ena29_out : STD_LOGIC;
  signal uart1_n_11 : STD_LOGIC;
  signal uart1_n_12 : STD_LOGIC;
  signal uart1_n_13 : STD_LOGIC;
  signal uart1_n_14 : STD_LOGIC;
  signal uart1_n_15 : STD_LOGIC;
  signal uart1_n_16 : STD_LOGIC;
  signal uart1_n_17 : STD_LOGIC;
  signal uart1_n_18 : STD_LOGIC;
  signal uart1_n_19 : STD_LOGIC;
  signal uart1_n_20 : STD_LOGIC;
  signal uart1_n_21 : STD_LOGIC;
  signal uart1_n_22 : STD_LOGIC;
  signal uart1_n_23 : STD_LOGIC;
  signal uart1_n_24 : STD_LOGIC;
  signal uart1_n_25 : STD_LOGIC;
  signal uart1_n_26 : STD_LOGIC;
  signal uart1_n_27 : STD_LOGIC;
  signal uart1_n_28 : STD_LOGIC;
  signal uart1_n_29 : STD_LOGIC;
  signal uart1_n_30 : STD_LOGIC;
  signal uart1_n_31 : STD_LOGIC;
  signal uart1_n_32 : STD_LOGIC;
  signal uart1_n_33 : STD_LOGIC;
  signal uart1_n_34 : STD_LOGIC;
  signal uart1_n_35 : STD_LOGIC;
  signal uart1_n_36 : STD_LOGIC;
  signal uart1_n_37 : STD_LOGIC;
  signal uart1_n_38 : STD_LOGIC;
  signal uart1_n_39 : STD_LOGIC;
  signal uart1_n_40 : STD_LOGIC;
  signal uart1_n_41 : STD_LOGIC;
  signal uart1_n_42 : STD_LOGIC;
  signal uart1_n_8 : STD_LOGIC;
  signal uart_rx_IBUF : STD_LOGIC;
  signal uart_tx_OBUF : STD_LOGIC;
  signal wait_txbusy : STD_LOGIC;
  signal wait_txbusy28_out : STD_LOGIC;
  signal \wait_txbusy__0\ : STD_LOGIC;
  signal written : STD_LOGIC;
  signal written11_out : STD_LOGIC;
  signal \written__0\ : STD_LOGIC;
  signal NLW_bram1_douta_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_counter_R_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_R_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_T_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_T_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \addra_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \addra_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \addra_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \addra_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \addra_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \addra_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \addra_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \addra_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \addrb_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \addrb_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \addrb_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \addrb_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \addrb_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \addrb_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \addrb_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \addrb_reg[7]\ : label is "LD";
  attribute IMPORTED_FROM : string;
  attribute IMPORTED_FROM of bram1 : label is "/home/ubuntu/XilinxProjects/GameOfLife/GameOfLife.srcs/sources_1/ip/blk_mem_8x180/blk_mem_8x180.dcp";
  attribute IMPORTED_TYPE : string;
  attribute IMPORTED_TYPE of bram1 : label is "CHECKPOINT";
  attribute IS_IMPORTED : boolean;
  attribute IS_IMPORTED of bram1 : label is std.standard.true;
  attribute syn_black_box : string;
  attribute syn_black_box of bram1 : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of bram1 : label is "blk_mem_gen_v8_4_4,Vivado 2020.1";
  attribute XILINX_LEGACY_PRIM of clk_wait_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of clka_reg : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clka_reg_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of clka_reg_i_2 : label is "soft_lutpair22";
  attribute XILINX_LEGACY_PRIM of clkb_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of clocked_reg : label is "LD";
  attribute SOFT_HLUTNM of clocked_reg_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of clocked_reg_i_2 : label is "soft_lutpair22";
  attribute XILINX_LEGACY_PRIM of compleated_read_reg : label is "LD";
  attribute SOFT_HLUTNM of compleated_read_reg_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of compleated_read_reg_i_7 : label is "soft_lutpair25";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[0]_i_1\ : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[10]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[10]_i_1\ : label is "soft_lutpair31";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[11]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[11]_i_1\ : label is "soft_lutpair31";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[12]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[12]_i_1\ : label is "soft_lutpair32";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_R_reg[12]_i_2\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[13]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[13]_i_1\ : label is "soft_lutpair32";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[14]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[14]_i_1\ : label is "soft_lutpair33";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[15]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[15]_i_1\ : label is "soft_lutpair33";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[16]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[16]_i_1\ : label is "soft_lutpair34";
  attribute ADDER_THRESHOLD of \counter_R_reg[16]_i_2\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[17]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[17]_i_1\ : label is "soft_lutpair34";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[18]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[18]_i_1\ : label is "soft_lutpair35";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[19]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[19]_i_1\ : label is "soft_lutpair35";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[1]_i_1\ : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[20]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[20]_i_1\ : label is "soft_lutpair36";
  attribute ADDER_THRESHOLD of \counter_R_reg[20]_i_2\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[21]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[21]_i_1\ : label is "soft_lutpair36";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[22]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[22]_i_1\ : label is "soft_lutpair37";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[23]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[23]_i_1\ : label is "soft_lutpair37";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[24]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[24]_i_1\ : label is "soft_lutpair38";
  attribute ADDER_THRESHOLD of \counter_R_reg[24]_i_2\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[25]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[25]_i_1\ : label is "soft_lutpair38";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[26]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[26]_i_1\ : label is "soft_lutpair39";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[27]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[27]_i_1\ : label is "soft_lutpair39";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[28]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[28]_i_1\ : label is "soft_lutpair40";
  attribute ADDER_THRESHOLD of \counter_R_reg[28]_i_2\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[29]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[29]_i_1\ : label is "soft_lutpair40";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[2]_i_1\ : label is "soft_lutpair27";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[30]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[30]_i_1\ : label is "soft_lutpair41";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[31]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[31]_i_1\ : label is "soft_lutpair41";
  attribute ADDER_THRESHOLD of \counter_R_reg[31]_i_2\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[3]_i_1\ : label is "soft_lutpair27";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[4]_i_1\ : label is "soft_lutpair28";
  attribute ADDER_THRESHOLD of \counter_R_reg[4]_i_2\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[5]_i_1\ : label is "soft_lutpair28";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[6]_i_1\ : label is "soft_lutpair29";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[7]_i_1\ : label is "soft_lutpair29";
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[8]_i_1\ : label is "soft_lutpair30";
  attribute ADDER_THRESHOLD of \counter_R_reg[8]_i_2\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \counter_R_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \counter_R_reg[9]_i_1\ : label is "soft_lutpair30";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[12]\ : label is "LD";
  attribute ADDER_THRESHOLD of \counter_T_reg[12]_i_2\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[16]\ : label is "LD";
  attribute ADDER_THRESHOLD of \counter_T_reg[16]_i_2\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[17]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[18]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[19]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[20]\ : label is "LD";
  attribute ADDER_THRESHOLD of \counter_T_reg[20]_i_2\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[21]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[22]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[23]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[24]\ : label is "LD";
  attribute ADDER_THRESHOLD of \counter_T_reg[24]_i_2\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[25]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[26]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[27]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[28]\ : label is "LD";
  attribute ADDER_THRESHOLD of \counter_T_reg[28]_i_2\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[29]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[30]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[31]\ : label is "LD";
  attribute ADDER_THRESHOLD of \counter_T_reg[31]_i_2\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[4]\ : label is "LD";
  attribute ADDER_THRESHOLD of \counter_T_reg[4]_i_2\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[8]\ : label is "LD";
  attribute ADDER_THRESHOLD of \counter_T_reg[8]_i_2\ : label is 35;
  attribute XILINX_LEGACY_PRIM of \counter_T_reg[9]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \dina_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \dina_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \dina_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \dina_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \dina_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \dina_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \dina_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \dina_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of finished_read_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of output_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of readed_reg : label is "LD";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \readed_reg__0\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \readed_reg__0\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \tx_data_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \tx_data_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \tx_data_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \tx_data_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \tx_data_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \tx_data_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \tx_data_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \tx_data_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of tx_ena_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of wait_txbusy_reg : label is "LD";
  attribute XILINX_LEGACY_PRIM of written_reg : label is "LD";
  attribute SOFT_HLUTNM of written_reg_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of written_reg_i_2 : label is "soft_lutpair23";
begin
\addra_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg_n_2_[0]\,
      G => \addra_reg[7]_i_1_n_2\,
      GE => '1',
      Q => addra(0)
    );
\addra_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg_n_2_[1]\,
      G => \addra_reg[7]_i_1_n_2\,
      GE => '1',
      Q => addra(1)
    );
\addra_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg_n_2_[2]\,
      G => \addra_reg[7]_i_1_n_2\,
      GE => '1',
      Q => addra(2)
    );
\addra_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg_n_2_[3]\,
      G => \addra_reg[7]_i_1_n_2\,
      GE => '1',
      Q => addra(3)
    );
\addra_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg_n_2_[4]\,
      G => \addra_reg[7]_i_1_n_2\,
      GE => '1',
      Q => addra(4)
    );
\addra_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg_n_2_[5]\,
      G => \addra_reg[7]_i_1_n_2\,
      GE => '1',
      Q => addra(5)
    );
\addra_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg_n_2_[6]\,
      G => \addra_reg[7]_i_1_n_2\,
      GE => '1',
      Q => addra(6)
    );
\addra_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg_n_2_[7]\,
      G => \addra_reg[7]_i_1_n_2\,
      GE => '1',
      Q => addra(7)
    );
\addra_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => clk_IBUF,
      O => \addra_reg[7]_i_1_n_2\
    );
\addrb_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_T_reg_n_2_[0]\,
      G => uart1_n_8,
      GE => '1',
      Q => addrb(0)
    );
\addrb_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_T_reg_n_2_[1]\,
      G => uart1_n_8,
      GE => '1',
      Q => addrb(1)
    );
\addrb_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_T_reg_n_2_[2]\,
      G => uart1_n_8,
      GE => '1',
      Q => addrb(2)
    );
\addrb_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_T_reg_n_2_[3]\,
      G => uart1_n_8,
      GE => '1',
      Q => addrb(3)
    );
\addrb_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_T_reg_n_2_[4]\,
      G => uart1_n_8,
      GE => '1',
      Q => addrb(4)
    );
\addrb_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_T_reg_n_2_[5]\,
      G => uart1_n_8,
      GE => '1',
      Q => addrb(5)
    );
\addrb_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_T_reg_n_2_[6]\,
      G => uart1_n_8,
      GE => '1',
      Q => addrb(6)
    );
\addrb_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_T_reg_n_2_[7]\,
      G => uart1_n_8,
      GE => '1',
      Q => addrb(7)
    );
bram1: entity work.blk_mem_8x180
     port map (
      addra(7 downto 0) => addra(7 downto 0),
      addrb(7 downto 0) => addrb(7 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => B"00000000",
      douta(7 downto 0) => NLW_bram1_douta_UNCONNECTED(7 downto 0),
      doutb(7 downto 0) => doutb(7 downto 0),
      ena => '1',
      enb => '1',
      wea(0) => '1',
      web(0) => '0'
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
clk_wait_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \clk_wait__0\,
      G => clk_wait5_out,
      GE => '1',
      Q => clk_wait
    );
clka_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => clka0,
      G => clka0_out,
      GE => '1',
      Q => clka
    );
clka_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => written,
      I1 => finished_read,
      I2 => readed,
      O => clka0
    );
clka_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0080F080"
    )
        port map (
      I0 => finished_read,
      I1 => readed,
      I2 => clk_IBUF,
      I3 => written,
      I4 => clocked,
      O => clka0_out
    );
clkb_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => clkb0,
      G => clkb1_out,
      GE => '1',
      Q => clkb
    );
clocked_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \clocked__0\,
      G => clocked14_out,
      GE => '1',
      Q => clocked
    );
clocked_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => clocked,
      I1 => written,
      I2 => readed,
      I3 => finished_read,
      O => \clocked__0\
    );
clocked_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2020F020"
    )
        port map (
      I0 => written,
      I1 => clocked,
      I2 => clk_IBUF,
      I3 => finished_read,
      I4 => readed,
      O => clocked14_out
    );
compleated_read_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => clocked0,
      G => compleated_read7_out,
      GE => '1',
      Q => compleated_read
    );
compleated_read_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => written,
      I1 => clocked,
      O => clocked0
    );
compleated_read_reg_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2300230023232300"
    )
        port map (
      I0 => \counter_R_reg_n_2_[7]\,
      I1 => \counter_R_reg_n_2_[8]\,
      I2 => \counter_R_reg_n_2_[6]\,
      I3 => \counter_R_reg_n_2_[5]\,
      I4 => \counter_R_reg_n_2_[3]\,
      I5 => \counter_R_reg_n_2_[4]\,
      O => compleated_read_reg_i_10_n_2
    );
compleated_read_reg_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \counter_R_reg_n_2_[8]\,
      I1 => \counter_R_reg_n_2_[7]\,
      I2 => \counter_R_reg_n_2_[5]\,
      I3 => \counter_R_reg_n_2_[4]\,
      O => compleated_read_reg_i_11_n_2
    );
compleated_read_reg_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \counter_R_reg_n_2_[10]\,
      I1 => \counter_R_reg_n_2_[11]\,
      I2 => \counter_R_reg_n_2_[13]\,
      I3 => \counter_R_reg_n_2_[14]\,
      I4 => \counter_R_reg_n_2_[17]\,
      I5 => \counter_R_reg_n_2_[16]\,
      O => compleated_read_reg_i_12_n_2
    );
compleated_read_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => compleated_read_reg_i_3_n_2,
      I1 => compleated_read_reg_i_4_n_2,
      I2 => compleated_read_reg_i_5_n_2,
      I3 => compleated_read_reg_i_6_n_2,
      O => compleated_read7_out
    );
compleated_read_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => compleated_read_reg_i_7_n_2,
      I1 => \counter_R_reg_n_2_[19]\,
      I2 => \counter_R_reg_n_2_[20]\,
      I3 => \counter_R_reg_n_2_[21]\,
      I4 => compleated_read_reg_i_8_n_2,
      I5 => compleated_read_reg_i_9_n_2,
      O => compleated_read_reg_i_3_n_2
    );
compleated_read_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000230000002323"
    )
        port map (
      I0 => \counter_R_reg_n_2_[19]\,
      I1 => \counter_R_reg_n_2_[20]\,
      I2 => \counter_R_reg_n_2_[18]\,
      I3 => \counter_R_reg_n_2_[16]\,
      I4 => \counter_R_reg_n_2_[17]\,
      I5 => \counter_R_reg_n_2_[15]\,
      O => compleated_read_reg_i_4_n_2
    );
compleated_read_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000230000002323"
    )
        port map (
      I0 => \counter_R_reg_n_2_[13]\,
      I1 => \counter_R_reg_n_2_[14]\,
      I2 => \counter_R_reg_n_2_[12]\,
      I3 => \counter_R_reg_n_2_[10]\,
      I4 => \counter_R_reg_n_2_[11]\,
      I5 => \counter_R_reg_n_2_[9]\,
      O => compleated_read_reg_i_5_n_2
    );
compleated_read_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => compleated_read_reg_i_10_n_2,
      I1 => \counter_R_reg_n_2_[0]\,
      I2 => \counter_R_reg_n_2_[1]\,
      I3 => \counter_R_reg_n_2_[2]\,
      I4 => compleated_read_reg_i_11_n_2,
      I5 => compleated_read_reg_i_12_n_2,
      O => compleated_read_reg_i_6_n_2
    );
compleated_read_reg_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => clocked,
      I1 => written,
      I2 => clk_IBUF,
      O => compleated_read_reg_i_7_n_2
    );
compleated_read_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \counter_R_reg_n_2_[25]\,
      I1 => \counter_R_reg_n_2_[24]\,
      I2 => \counter_R_reg_n_2_[23]\,
      I3 => \counter_R_reg_n_2_[22]\,
      O => compleated_read_reg_i_8_n_2
    );
compleated_read_reg_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \counter_R_reg_n_2_[26]\,
      I1 => \counter_R_reg_n_2_[27]\,
      I2 => \counter_R_reg_n_2_[28]\,
      I3 => \counter_R_reg_n_2_[29]\,
      I4 => \counter_R_reg_n_2_[31]\,
      I5 => \counter_R_reg_n_2_[30]\,
      O => compleated_read_reg_i_9_n_2
    );
\counter_R_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[0]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[0]\
    );
\counter_R_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => \counter_R_reg_n_2_[0]\,
      O => \counter_R_reg[0]_i_1_n_2\
    );
\counter_R_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[10]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[10]\
    );
\counter_R_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(10),
      O => \counter_R_reg[10]_i_1_n_2\
    );
\counter_R_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[11]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[11]\
    );
\counter_R_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(11),
      O => \counter_R_reg[11]_i_1_n_2\
    );
\counter_R_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[12]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[12]\
    );
\counter_R_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(12),
      O => \counter_R_reg[12]_i_1_n_2\
    );
\counter_R_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_R_reg[8]_i_2_n_2\,
      CO(3) => \counter_R_reg[12]_i_2_n_2\,
      CO(2) => \counter_R_reg[12]_i_2_n_3\,
      CO(1) => \counter_R_reg[12]_i_2_n_4\,
      CO(0) => \counter_R_reg[12]_i_2_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter_R0(12 downto 9),
      S(3) => \counter_R_reg_n_2_[12]\,
      S(2) => \counter_R_reg_n_2_[11]\,
      S(1) => \counter_R_reg_n_2_[10]\,
      S(0) => \counter_R_reg_n_2_[9]\
    );
\counter_R_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[13]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[13]\
    );
\counter_R_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(13),
      O => \counter_R_reg[13]_i_1_n_2\
    );
\counter_R_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[14]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[14]\
    );
\counter_R_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(14),
      O => \counter_R_reg[14]_i_1_n_2\
    );
\counter_R_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[15]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[15]\
    );
\counter_R_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(15),
      O => \counter_R_reg[15]_i_1_n_2\
    );
\counter_R_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[16]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[16]\
    );
\counter_R_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(16),
      O => \counter_R_reg[16]_i_1_n_2\
    );
\counter_R_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_R_reg[12]_i_2_n_2\,
      CO(3) => \counter_R_reg[16]_i_2_n_2\,
      CO(2) => \counter_R_reg[16]_i_2_n_3\,
      CO(1) => \counter_R_reg[16]_i_2_n_4\,
      CO(0) => \counter_R_reg[16]_i_2_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter_R0(16 downto 13),
      S(3) => \counter_R_reg_n_2_[16]\,
      S(2) => \counter_R_reg_n_2_[15]\,
      S(1) => \counter_R_reg_n_2_[14]\,
      S(0) => \counter_R_reg_n_2_[13]\
    );
\counter_R_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[17]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[17]\
    );
\counter_R_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(17),
      O => \counter_R_reg[17]_i_1_n_2\
    );
\counter_R_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[18]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[18]\
    );
\counter_R_reg[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(18),
      O => \counter_R_reg[18]_i_1_n_2\
    );
\counter_R_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[19]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[19]\
    );
\counter_R_reg[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(19),
      O => \counter_R_reg[19]_i_1_n_2\
    );
\counter_R_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[1]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[1]\
    );
\counter_R_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(1),
      O => \counter_R_reg[1]_i_1_n_2\
    );
\counter_R_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[20]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[20]\
    );
\counter_R_reg[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(20),
      O => \counter_R_reg[20]_i_1_n_2\
    );
\counter_R_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_R_reg[16]_i_2_n_2\,
      CO(3) => \counter_R_reg[20]_i_2_n_2\,
      CO(2) => \counter_R_reg[20]_i_2_n_3\,
      CO(1) => \counter_R_reg[20]_i_2_n_4\,
      CO(0) => \counter_R_reg[20]_i_2_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter_R0(20 downto 17),
      S(3) => \counter_R_reg_n_2_[20]\,
      S(2) => \counter_R_reg_n_2_[19]\,
      S(1) => \counter_R_reg_n_2_[18]\,
      S(0) => \counter_R_reg_n_2_[17]\
    );
\counter_R_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[21]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[21]\
    );
\counter_R_reg[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(21),
      O => \counter_R_reg[21]_i_1_n_2\
    );
\counter_R_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[22]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[22]\
    );
\counter_R_reg[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(22),
      O => \counter_R_reg[22]_i_1_n_2\
    );
\counter_R_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[23]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[23]\
    );
\counter_R_reg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(23),
      O => \counter_R_reg[23]_i_1_n_2\
    );
\counter_R_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[24]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[24]\
    );
\counter_R_reg[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(24),
      O => \counter_R_reg[24]_i_1_n_2\
    );
\counter_R_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_R_reg[20]_i_2_n_2\,
      CO(3) => \counter_R_reg[24]_i_2_n_2\,
      CO(2) => \counter_R_reg[24]_i_2_n_3\,
      CO(1) => \counter_R_reg[24]_i_2_n_4\,
      CO(0) => \counter_R_reg[24]_i_2_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter_R0(24 downto 21),
      S(3) => \counter_R_reg_n_2_[24]\,
      S(2) => \counter_R_reg_n_2_[23]\,
      S(1) => \counter_R_reg_n_2_[22]\,
      S(0) => \counter_R_reg_n_2_[21]\
    );
\counter_R_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[25]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[25]\
    );
\counter_R_reg[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(25),
      O => \counter_R_reg[25]_i_1_n_2\
    );
\counter_R_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[26]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[26]\
    );
\counter_R_reg[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(26),
      O => \counter_R_reg[26]_i_1_n_2\
    );
\counter_R_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[27]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[27]\
    );
\counter_R_reg[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(27),
      O => \counter_R_reg[27]_i_1_n_2\
    );
\counter_R_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[28]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[28]\
    );
\counter_R_reg[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(28),
      O => \counter_R_reg[28]_i_1_n_2\
    );
\counter_R_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_R_reg[24]_i_2_n_2\,
      CO(3) => \counter_R_reg[28]_i_2_n_2\,
      CO(2) => \counter_R_reg[28]_i_2_n_3\,
      CO(1) => \counter_R_reg[28]_i_2_n_4\,
      CO(0) => \counter_R_reg[28]_i_2_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter_R0(28 downto 25),
      S(3) => \counter_R_reg_n_2_[28]\,
      S(2) => \counter_R_reg_n_2_[27]\,
      S(1) => \counter_R_reg_n_2_[26]\,
      S(0) => \counter_R_reg_n_2_[25]\
    );
\counter_R_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[29]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[29]\
    );
\counter_R_reg[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(29),
      O => \counter_R_reg[29]_i_1_n_2\
    );
\counter_R_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[2]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[2]\
    );
\counter_R_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(2),
      O => \counter_R_reg[2]_i_1_n_2\
    );
\counter_R_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[30]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[30]\
    );
\counter_R_reg[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(30),
      O => \counter_R_reg[30]_i_1_n_2\
    );
\counter_R_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[31]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[31]\
    );
\counter_R_reg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(31),
      O => \counter_R_reg[31]_i_1_n_2\
    );
\counter_R_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_R_reg[28]_i_2_n_2\,
      CO(3 downto 2) => \NLW_counter_R_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_R_reg[31]_i_2_n_4\,
      CO(0) => \counter_R_reg[31]_i_2_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_R_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => counter_R0(31 downto 29),
      S(3) => '0',
      S(2) => \counter_R_reg_n_2_[31]\,
      S(1) => \counter_R_reg_n_2_[30]\,
      S(0) => \counter_R_reg_n_2_[29]\
    );
\counter_R_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[3]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[3]\
    );
\counter_R_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(3),
      O => \counter_R_reg[3]_i_1_n_2\
    );
\counter_R_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[4]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[4]\
    );
\counter_R_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(4),
      O => \counter_R_reg[4]_i_1_n_2\
    );
\counter_R_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_R_reg[4]_i_2_n_2\,
      CO(2) => \counter_R_reg[4]_i_2_n_3\,
      CO(1) => \counter_R_reg[4]_i_2_n_4\,
      CO(0) => \counter_R_reg[4]_i_2_n_5\,
      CYINIT => \counter_R_reg_n_2_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter_R0(4 downto 1),
      S(3) => \counter_R_reg_n_2_[4]\,
      S(2) => \counter_R_reg_n_2_[3]\,
      S(1) => \counter_R_reg_n_2_[2]\,
      S(0) => \counter_R_reg_n_2_[1]\
    );
\counter_R_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[5]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[5]\
    );
\counter_R_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(5),
      O => \counter_R_reg[5]_i_1_n_2\
    );
\counter_R_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[6]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[6]\
    );
\counter_R_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(6),
      O => \counter_R_reg[6]_i_1_n_2\
    );
\counter_R_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[7]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[7]\
    );
\counter_R_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(7),
      O => \counter_R_reg[7]_i_1_n_2\
    );
\counter_R_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[8]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[8]\
    );
\counter_R_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(8),
      O => \counter_R_reg[8]_i_1_n_2\
    );
\counter_R_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_R_reg[4]_i_2_n_2\,
      CO(3) => \counter_R_reg[8]_i_2_n_2\,
      CO(2) => \counter_R_reg[8]_i_2_n_3\,
      CO(1) => \counter_R_reg[8]_i_2_n_4\,
      CO(0) => \counter_R_reg[8]_i_2_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter_R0(8 downto 5),
      S(3) => \counter_R_reg_n_2_[8]\,
      S(2) => \counter_R_reg_n_2_[7]\,
      S(1) => \counter_R_reg_n_2_[6]\,
      S(0) => \counter_R_reg_n_2_[5]\
    );
\counter_R_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \counter_R_reg[9]_i_1_n_2\,
      G => n_0_65_BUFG,
      GE => '1',
      Q => \counter_R_reg_n_2_[9]\
    );
\counter_R_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => readed,
      I1 => finished_read,
      I2 => counter_R0(9),
      O => \counter_R_reg[9]_i_1_n_2\
    );
\counter_T_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_42,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[0]\
    );
\counter_T_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_32,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[10]\
    );
\counter_T_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_31,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[11]\
    );
\counter_T_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_30,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[12]\
    );
\counter_T_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_T_reg[8]_i_2_n_2\,
      CO(3) => \counter_T_reg[12]_i_2_n_2\,
      CO(2) => \counter_T_reg[12]_i_2_n_3\,
      CO(1) => \counter_T_reg[12]_i_2_n_4\,
      CO(0) => \counter_T_reg[12]_i_2_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter_T0(12 downto 9),
      S(3) => \counter_T_reg_n_2_[12]\,
      S(2) => \counter_T_reg_n_2_[11]\,
      S(1) => \counter_T_reg_n_2_[10]\,
      S(0) => \counter_T_reg_n_2_[9]\
    );
\counter_T_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_29,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[13]\
    );
\counter_T_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_28,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[14]\
    );
\counter_T_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_27,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[15]\
    );
\counter_T_reg[16]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_26,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[16]\
    );
\counter_T_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_T_reg[12]_i_2_n_2\,
      CO(3) => \counter_T_reg[16]_i_2_n_2\,
      CO(2) => \counter_T_reg[16]_i_2_n_3\,
      CO(1) => \counter_T_reg[16]_i_2_n_4\,
      CO(0) => \counter_T_reg[16]_i_2_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter_T0(16 downto 13),
      S(3) => \counter_T_reg_n_2_[16]\,
      S(2) => \counter_T_reg_n_2_[15]\,
      S(1) => \counter_T_reg_n_2_[14]\,
      S(0) => \counter_T_reg_n_2_[13]\
    );
\counter_T_reg[17]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_25,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[17]\
    );
\counter_T_reg[18]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_24,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[18]\
    );
\counter_T_reg[19]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_23,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[19]\
    );
\counter_T_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_41,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[1]\
    );
\counter_T_reg[20]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_22,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[20]\
    );
\counter_T_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_T_reg[16]_i_2_n_2\,
      CO(3) => \counter_T_reg[20]_i_2_n_2\,
      CO(2) => \counter_T_reg[20]_i_2_n_3\,
      CO(1) => \counter_T_reg[20]_i_2_n_4\,
      CO(0) => \counter_T_reg[20]_i_2_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter_T0(20 downto 17),
      S(3) => \counter_T_reg_n_2_[20]\,
      S(2) => \counter_T_reg_n_2_[19]\,
      S(1) => \counter_T_reg_n_2_[18]\,
      S(0) => \counter_T_reg_n_2_[17]\
    );
\counter_T_reg[21]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_21,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[21]\
    );
\counter_T_reg[22]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_20,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[22]\
    );
\counter_T_reg[23]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_19,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[23]\
    );
\counter_T_reg[24]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_18,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[24]\
    );
\counter_T_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_T_reg[20]_i_2_n_2\,
      CO(3) => \counter_T_reg[24]_i_2_n_2\,
      CO(2) => \counter_T_reg[24]_i_2_n_3\,
      CO(1) => \counter_T_reg[24]_i_2_n_4\,
      CO(0) => \counter_T_reg[24]_i_2_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter_T0(24 downto 21),
      S(3) => \counter_T_reg_n_2_[24]\,
      S(2) => \counter_T_reg_n_2_[23]\,
      S(1) => \counter_T_reg_n_2_[22]\,
      S(0) => \counter_T_reg_n_2_[21]\
    );
\counter_T_reg[25]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_17,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[25]\
    );
\counter_T_reg[26]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_16,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[26]\
    );
\counter_T_reg[27]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_15,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[27]\
    );
\counter_T_reg[28]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_14,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[28]\
    );
\counter_T_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_T_reg[24]_i_2_n_2\,
      CO(3) => \counter_T_reg[28]_i_2_n_2\,
      CO(2) => \counter_T_reg[28]_i_2_n_3\,
      CO(1) => \counter_T_reg[28]_i_2_n_4\,
      CO(0) => \counter_T_reg[28]_i_2_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter_T0(28 downto 25),
      S(3) => \counter_T_reg_n_2_[28]\,
      S(2) => \counter_T_reg_n_2_[27]\,
      S(1) => \counter_T_reg_n_2_[26]\,
      S(0) => \counter_T_reg_n_2_[25]\
    );
\counter_T_reg[29]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_13,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[29]\
    );
\counter_T_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_40,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[2]\
    );
\counter_T_reg[30]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_12,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[30]\
    );
\counter_T_reg[31]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_11,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[31]\
    );
\counter_T_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_T_reg[28]_i_2_n_2\,
      CO(3 downto 2) => \NLW_counter_T_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_T_reg[31]_i_2_n_4\,
      CO(0) => \counter_T_reg[31]_i_2_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_T_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => counter_T0(31 downto 29),
      S(3) => '0',
      S(2) => \counter_T_reg_n_2_[31]\,
      S(1) => \counter_T_reg_n_2_[30]\,
      S(0) => \counter_T_reg_n_2_[29]\
    );
\counter_T_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_39,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[3]\
    );
\counter_T_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_38,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[4]\
    );
\counter_T_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_T_reg[4]_i_2_n_2\,
      CO(2) => \counter_T_reg[4]_i_2_n_3\,
      CO(1) => \counter_T_reg[4]_i_2_n_4\,
      CO(0) => \counter_T_reg[4]_i_2_n_5\,
      CYINIT => \counter_T_reg_n_2_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter_T0(4 downto 1),
      S(3) => \counter_T_reg_n_2_[4]\,
      S(2) => \counter_T_reg_n_2_[3]\,
      S(1) => \counter_T_reg_n_2_[2]\,
      S(0) => \counter_T_reg_n_2_[1]\
    );
\counter_T_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_37,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[5]\
    );
\counter_T_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_36,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[6]\
    );
\counter_T_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_35,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[7]\
    );
\counter_T_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_34,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[8]\
    );
\counter_T_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_T_reg[4]_i_2_n_2\,
      CO(3) => \counter_T_reg[8]_i_2_n_2\,
      CO(2) => \counter_T_reg[8]_i_2_n_3\,
      CO(1) => \counter_T_reg[8]_i_2_n_4\,
      CO(0) => \counter_T_reg[8]_i_2_n_5\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter_T0(8 downto 5),
      S(3) => \counter_T_reg_n_2_[8]\,
      S(2) => \counter_T_reg_n_2_[7]\,
      S(1) => \counter_T_reg_n_2_[6]\,
      S(0) => \counter_T_reg_n_2_[5]\
    );
\counter_T_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => uart1_n_33,
      G => n_1_21_BUFG,
      GE => '1',
      Q => \counter_T_reg_n_2_[9]\
    );
\dina_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(0),
      G => \addra_reg[7]_i_1_n_2\,
      GE => '1',
      Q => dina(0)
    );
\dina_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(1),
      G => \addra_reg[7]_i_1_n_2\,
      GE => '1',
      Q => dina(1)
    );
\dina_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(2),
      G => \addra_reg[7]_i_1_n_2\,
      GE => '1',
      Q => dina(2)
    );
\dina_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(3),
      G => \addra_reg[7]_i_1_n_2\,
      GE => '1',
      Q => dina(3)
    );
\dina_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(4),
      G => \addra_reg[7]_i_1_n_2\,
      GE => '1',
      Q => dina(4)
    );
\dina_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(5),
      G => \addra_reg[7]_i_1_n_2\,
      GE => '1',
      Q => dina(5)
    );
\dina_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(6),
      G => \addra_reg[7]_i_1_n_2\,
      GE => '1',
      Q => dina(6)
    );
\dina_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_data(7),
      G => \addra_reg[7]_i_1_n_2\,
      GE => '1',
      Q => dina(7)
    );
finished_read_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => finished_read,
      O => finished_read_BUFG
    );
finished_read_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => finished_read17_out,
      G => clk_IBUF_BUFG,
      GE => '1',
      Q => finished_read
    );
n_0_65_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => n_0_65_BUFG_inst_n_1,
      O => n_0_65_BUFG
    );
n_0_65_BUFG_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800080008000"
    )
        port map (
      I0 => compleated_read_reg_i_6_n_2,
      I1 => compleated_read_reg_i_5_n_2,
      I2 => compleated_read_reg_i_4_n_2,
      I3 => compleated_read_reg_i_3_n_2,
      I4 => clk_IBUF,
      I5 => readed038_out,
      O => n_0_65_BUFG_inst_n_1
    );
n_0_65_BUFG_inst_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => finished_read,
      I1 => readed,
      O => readed038_out
    );
n_1_21_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => n_1_21_BUFG_inst_n_2,
      O => n_1_21_BUFG
    );
n_1_21_BUFG_inst_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \counter_T_reg_n_2_[28]\,
      I1 => \counter_T_reg_n_2_[26]\,
      I2 => \counter_T_reg_n_2_[25]\,
      I3 => \counter_T_reg_n_2_[23]\,
      O => n_1_21_BUFG_inst_i_11_n_2
    );
n_1_21_BUFG_inst_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000230000002323"
    )
        port map (
      I0 => \counter_T_reg_n_2_[25]\,
      I1 => \counter_T_reg_n_2_[26]\,
      I2 => \counter_T_reg_n_2_[24]\,
      I3 => \counter_T_reg_n_2_[22]\,
      I4 => \counter_T_reg_n_2_[23]\,
      I5 => \counter_T_reg_n_2_[21]\,
      O => n_1_21_BUFG_inst_i_12_n_2
    );
n_1_21_BUFG_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => n_1_21_BUFG_inst_i_7_n_2,
      I1 => \counter_T_reg_n_2_[0]\,
      I2 => \counter_T_reg_n_2_[1]\,
      I3 => \counter_T_reg_n_2_[2]\,
      I4 => n_1_21_BUFG_inst_i_8_n_2,
      I5 => n_1_21_BUFG_inst_i_9_n_2,
      O => n_1_21_BUFG_inst_i_2_n_2
    );
n_1_21_BUFG_inst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000230000002323"
    )
        port map (
      I0 => \counter_T_reg_n_2_[13]\,
      I1 => \counter_T_reg_n_2_[14]\,
      I2 => \counter_T_reg_n_2_[12]\,
      I3 => \counter_T_reg_n_2_[10]\,
      I4 => \counter_T_reg_n_2_[11]\,
      I5 => \counter_T_reg_n_2_[9]\,
      O => n_1_21_BUFG_inst_i_3_n_2
    );
n_1_21_BUFG_inst_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000230000002323"
    )
        port map (
      I0 => \counter_T_reg_n_2_[19]\,
      I1 => \counter_T_reg_n_2_[20]\,
      I2 => \counter_T_reg_n_2_[18]\,
      I3 => \counter_T_reg_n_2_[16]\,
      I4 => \counter_T_reg_n_2_[17]\,
      I5 => \counter_T_reg_n_2_[15]\,
      O => n_1_21_BUFG_inst_i_4_n_2
    );
n_1_21_BUFG_inst_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"080A"
    )
        port map (
      I0 => n_1_21_BUFG_inst_i_12_n_2,
      I1 => \counter_T_reg_n_2_[28]\,
      I2 => \counter_T_reg_n_2_[29]\,
      I3 => \counter_T_reg_n_2_[27]\,
      O => n_1_21_BUFG_inst_i_6_n_2
    );
n_1_21_BUFG_inst_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2300230023232300"
    )
        port map (
      I0 => \counter_T_reg_n_2_[7]\,
      I1 => \counter_T_reg_n_2_[8]\,
      I2 => \counter_T_reg_n_2_[6]\,
      I3 => \counter_T_reg_n_2_[5]\,
      I4 => \counter_T_reg_n_2_[3]\,
      I5 => \counter_T_reg_n_2_[4]\,
      O => n_1_21_BUFG_inst_i_7_n_2
    );
n_1_21_BUFG_inst_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \counter_T_reg_n_2_[8]\,
      I1 => \counter_T_reg_n_2_[7]\,
      I2 => \counter_T_reg_n_2_[5]\,
      I3 => \counter_T_reg_n_2_[4]\,
      O => n_1_21_BUFG_inst_i_8_n_2
    );
n_1_21_BUFG_inst_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \counter_T_reg_n_2_[10]\,
      I1 => \counter_T_reg_n_2_[11]\,
      I2 => \counter_T_reg_n_2_[13]\,
      I3 => \counter_T_reg_n_2_[14]\,
      I4 => \counter_T_reg_n_2_[17]\,
      I5 => \counter_T_reg_n_2_[16]\,
      O => n_1_21_BUFG_inst_i_9_n_2
    );
output_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => rx_busy,
      G => output18_out,
      GE => '1',
      Q => output
    );
readed_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => readed0,
      G => readed25_out,
      GE => '1',
      Q => readed_reg_n_2
    );
\readed_reg__0\: unisim.vcomponents.LDPE
    generic map(
      INIT => '0',
      IS_G_INVERTED => '1'
    )
        port map (
      D => finished_read_BUFG,
      G => finished_read_BUFG,
      GE => '1',
      PRE => \addra_reg[7]_i_1_n_2\,
      Q => readed
    );
\tx_data_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => doutb(0),
      G => \tx_data__0\,
      GE => '1',
      Q => tx_data(0)
    );
\tx_data_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => doutb(1),
      G => \tx_data__0\,
      GE => '1',
      Q => tx_data(1)
    );
\tx_data_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => doutb(2),
      G => \tx_data__0\,
      GE => '1',
      Q => tx_data(2)
    );
\tx_data_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => doutb(3),
      G => \tx_data__0\,
      GE => '1',
      Q => tx_data(3)
    );
\tx_data_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => doutb(4),
      G => \tx_data__0\,
      GE => '1',
      Q => tx_data(4)
    );
\tx_data_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => doutb(5),
      G => \tx_data__0\,
      GE => '1',
      Q => tx_data(5)
    );
\tx_data_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => doutb(6),
      G => \tx_data__0\,
      GE => '1',
      Q => tx_data(6)
    );
\tx_data_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => doutb(7),
      G => \tx_data__0\,
      GE => '1',
      Q => tx_data(7)
    );
\tx_data_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => clk_IBUF,
      I1 => clkb,
      O => \tx_data__0\
    );
tx_ena_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => clkb,
      G => tx_ena29_out,
      GE => '1',
      Q => tx_ena
    );
uart1: entity work.uart
     port map (
      D(31) => uart1_n_11,
      D(30) => uart1_n_12,
      D(29) => uart1_n_13,
      D(28) => uart1_n_14,
      D(27) => uart1_n_15,
      D(26) => uart1_n_16,
      D(25) => uart1_n_17,
      D(24) => uart1_n_18,
      D(23) => uart1_n_19,
      D(22) => uart1_n_20,
      D(21) => uart1_n_21,
      D(20) => uart1_n_22,
      D(19) => uart1_n_23,
      D(18) => uart1_n_24,
      D(17) => uart1_n_25,
      D(16) => uart1_n_26,
      D(15) => uart1_n_27,
      D(14) => uart1_n_28,
      D(13) => uart1_n_29,
      D(12) => uart1_n_30,
      D(11) => uart1_n_31,
      D(10) => uart1_n_32,
      D(9) => uart1_n_33,
      D(8) => uart1_n_34,
      D(7) => uart1_n_35,
      D(6) => uart1_n_36,
      D(5) => uart1_n_37,
      D(4) => uart1_n_38,
      D(3) => uart1_n_39,
      D(2) => uart1_n_40,
      D(1) => uart1_n_41,
      D(0) => uart1_n_42,
      E(0) => uart1_n_8,
      Q(6) => \counter_T_reg_n_2_[31]\,
      Q(5) => \counter_T_reg_n_2_[30]\,
      Q(4) => \counter_T_reg_n_2_[29]\,
      Q(3) => \counter_T_reg_n_2_[22]\,
      Q(2) => \counter_T_reg_n_2_[20]\,
      Q(1) => \counter_T_reg_n_2_[19]\,
      Q(0) => \counter_T_reg_n_2_[0]\,
      clk_IBUF => clk_IBUF,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      clk_wait => clk_wait,
      clk_wait5_out => clk_wait5_out,
      \clk_wait__0\ => \clk_wait__0\,
      clk_wait_reg => readed_reg_n_2,
      clkb => clkb,
      clkb0 => clkb0,
      clkb1_out => clkb1_out,
      compleated_read => compleated_read,
      counter_T0(30 downto 0) => counter_T0(31 downto 1),
      finished_read17_out => finished_read17_out,
      n_1_21_BUFG_inst => n_1_21_BUFG_inst_i_2_n_2,
      n_1_21_BUFG_inst_0 => n_1_21_BUFG_inst_i_3_n_2,
      n_1_21_BUFG_inst_1 => n_1_21_BUFG_inst_i_4_n_2,
      n_1_21_BUFG_inst_2 => n_1_21_BUFG_inst_i_6_n_2,
      n_1_21_BUFG_inst_i_1_0 => n_1_21_BUFG_inst_i_11_n_2,
      n_1_21_BUFG_inst_n_2 => n_1_21_BUFG_inst_n_2,
      output => output,
      output18_out => output18_out,
      readed0 => readed0,
      readed25_out => readed25_out,
      rx_busy => rx_busy,
      \rx_data_reg[7]_0\(7 downto 0) => rx_data(7 downto 0),
      \tx_buffer_reg[9]_0\(7 downto 0) => tx_data(7 downto 0),
      tx_ena => tx_ena,
      tx_ena29_out => tx_ena29_out,
      uart_rx_IBUF => uart_rx_IBUF,
      uart_tx_OBUF => uart_tx_OBUF,
      wait_txbusy => wait_txbusy,
      wait_txbusy28_out => wait_txbusy28_out,
      \wait_txbusy__0\ => \wait_txbusy__0\
    );
uart_rx_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => uart_rx,
      O => uart_rx_IBUF
    );
uart_tx_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => uart_tx_OBUF,
      O => uart_tx
    );
wait_txbusy_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \wait_txbusy__0\,
      G => wait_txbusy28_out,
      GE => '1',
      Q => wait_txbusy
    );
written_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \written__0\,
      G => written11_out,
      GE => '1',
      Q => written
    );
written_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => written,
      I1 => readed,
      I2 => finished_read,
      O => \written__0\
    );
written_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40C0"
    )
        port map (
      I0 => written,
      I1 => clk_IBUF,
      I2 => finished_read,
      I3 => readed,
      O => written11_out
    );
end STRUCTURE;
