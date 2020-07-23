----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.07.2020 09:49:49
-- Design Name: 
-- Module Name: MainSim - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity MainSim is
end MainSim;

architecture Behavioral of MainSim is

signal clk : STD_LOGIC := '1';

component main
    Port 
    (
        clk     : in STD_LOGIC;
        uart_tx : out STD_LOGIC;
        uart_rx : in STD_LOGIC
    );
end component;
signal uart_tx, uart_rx : STD_LOGIC;
constant size       : INTEGER   := 1;
constant bram_size  : INTEGER   := 10; --ACTUAL SIZE 180
constant d_width    : INTEGER   := 8;
component UART
    generic
    (
        clk_freq	:	INTEGER		:= 12_000_000;	                    --frequency of system clock in Hertz
		baud_rate	:	INTEGER		:= 9_600;		                    --data link baud rate in bits/second
		os_rate		:	INTEGER		:= 16;			                    --oversampling rate to find center of receive bits (in samples per baud period)
		d_width		:	INTEGER		:= d_width; 			                    --data bus width
		parity		:	INTEGER		:= 1;			                    --0 for no parity, 1 for parity
		parity_eo	:	STD_LOGIC	:= '0'                              --'0' for even, '1' for odd parity
	);
    port
    (
        clk		:	IN	STD_LOGIC;										--system clock
		reset_n	:	IN	STD_LOGIC;										--ascynchronous reset
		tx_ena	:	IN	STD_LOGIC;										--initiate transmission
		tx_data	:	IN	STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);           --data to transmit
		rx		:	IN	STD_LOGIC;										--receive pin
		rx_busy	:	OUT	STD_LOGIC;										--data reception in progress
		rx_error:	OUT	STD_LOGIC;										--start, parity, or stop bit error detected
		rx_data	:	OUT	STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);	        --data received
		tx_busy	:	OUT	STD_LOGIC;  									--transmission in progress
		tx		:	OUT	STD_LOGIC										--transmit pin
    ); 
end component;
signal tx_ena, rx_busy, rx_error, tx_busy : STD_LOGIC;
signal tx_data,rx_data,tmp : STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);


type array_transfer is array (0 to bram_size-1) of std_logic_vector(d_width-1 downto 0);
signal data_transfer : array_transfer := (
    "00000000", 
    "11111111",
    "01010101", 
    "10101010",
    "01011010",
    "10100101",
    "00001111",
    "11110000",
    "00110011",
    "11001100"
);
begin
clk <= not clk after 5 ns;
uart1 : UART
    generic map
    (
        clk_freq	=>	12_000_000,
		baud_rate	=>	9_600,
		os_rate		=>	16,
		d_width		=>	8,
		parity		=>	1,
		parity_eo	=>	'0'
	)
    port map
    (
        clk		=>    clk,
		reset_n	=>    '1',
		tx_ena	=>    tx_ena,
		tx_data	=>    tx_data,
		rx		=>    uart_rx,
		rx_busy	=>    rx_busy,
		rx_error=>    rx_error,
		rx_data	=>    rx_data,
		tx_busy	=>    tx_busy,
		tx		=>    uart_tx
    );
    
main1 : main
    port map
    (
        clk => clk,
        uart_tx => uart_rx,
        uart_rx => uart_tx
    );

process is
variable i : INTEGER := 0;
begin
    tx_ena <= '0';
    for i in data_transfer' range loop
        tx_data <= data_transfer(i);
        wait until clk='1';
        tx_ena <= '1';
        wait until tx_busy='1';
        tx_ena <= '0';
        wait until tx_busy='0';
    end loop;
    for i in data_transfer' range loop
        wait until rx_busy='1';
        wait until rx_busy='0';
    end loop;
    tx_ena <= '0';
    for i in data_transfer'REVERSE_RANGE loop
        tx_data <= data_transfer(i);
        wait until clk='1';
        tx_ena <= '1';
        wait until tx_busy='1';
        tx_ena <= '0';
        wait until tx_busy='0';
    end loop;
    for i in data_transfer' range loop
        wait until rx_busy='1';
        wait until rx_busy='0';
    end loop;
end process;

end Behavioral;
