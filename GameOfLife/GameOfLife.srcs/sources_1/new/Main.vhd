----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.07.2020 08:42:34
-- Design Name: 
-- Module Name: Main - Behavioral
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

entity Main is
    Port 
    (
        clk     : in  STD_LOGIC;
        uart_tx : out STD_LOGIC;
        uart_rx : in  STD_LOGIC;
        led     : out STD_LOGIC_VECTOR(3 downto 0) := (others => '0')
    );
end Main;

architecture Behavioral of Main is

type Status is (Reception, FinishReception, Compute, Transmision, Reset, EndReset);
signal estado: Status := Reset;


constant bram_size          : INTEGER   := 10; -- ACTUAL 180
constant d_width            : INTEGER   := 8;
signal counter_R            : INTEGER   := 0;
signal counter_T            : INTEGER   := 0;
signal compleated_read      : STD_LOGIC := '0';
signal begin_transion       : STD_LOGIC := '0';
signal begin_process        : STD_LOGIC := '0';
signal finished_transmision : STD_LOGIC := '0';
signal finished_process     : STD_LOGIC := '0';
signal reset_transmision    : STD_LOGIC := '0';
signal reset_reception      : STD_LOGIC := '0';
signal probe                : STD_LOGIC := '0';

component UART
    generic
    (
        clk_freq	:	INTEGER		:= 12_000_000;	                    --frequency of system clock in Hertz
		baud_rate	:	INTEGER		:= 9_600;--9_600                   --data link baud rate in bits/second
		os_rate		:	INTEGER		:= 8;			                    --oversampling rate to find center of receive bits (in samples per baud period)
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
signal tx_ena, rx_busy, rx_error, tx_busy : STD_LOGIC := '0';
signal tx_data,rx_data,tmp : STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);

component GameOfLife is
    port 
    (
        ap_clk  : IN STD_LOGIC;
        ap_rst  : IN STD_LOGIC;
        ap_start: IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready: OUT STD_LOGIC;
        a_Addr_A: OUT STD_LOGIC_VECTOR (31 downto 0);
        a_EN_A  : OUT STD_LOGIC;
        a_WEN_A : OUT STD_LOGIC_VECTOR (0 downto 0);
        a_Din_A : OUT STD_LOGIC_VECTOR (7 downto 0);
        a_Dout_A: IN STD_LOGIC_VECTOR (7 downto 0);
        a_Clk_A : OUT STD_LOGIC;
        a_Rst_A : OUT STD_LOGIC;
        b_Addr_A: OUT STD_LOGIC_VECTOR (31 downto 0);
        b_EN_A  : OUT STD_LOGIC;
        b_WEN_A : OUT STD_LOGIC_VECTOR (0 downto 0);
        b_Din_A : OUT STD_LOGIC_VECTOR (7 downto 0);
        b_Dout_A: IN STD_LOGIC_VECTOR (7 downto 0);
        b_Clk_A : OUT STD_LOGIC;
        b_Rst_A : OUT STD_LOGIC 
    );
end component;
signal ap_rst,ap_start,ap_done,ap_idle,ap_ready,a_EN_A,a_Clk_A,a_Rst_A,b_EN_A,b_Clk_A,b_Rst_A : STD_LOGIC := '0';
signal a_Addr_A, b_Addr_A : STD_LOGIC_VECTOR (31 downto 0);
signal a_Din_A, a_Dout_A, b_Din_A, b_Dout_A : STD_LOGIC_VECTOR (7 downto 0);
signal a_WEN_A, b_WEN_A : STD_LOGIC_VECTOR (0 downto 0);


component blk_mem_8x180 IS
    PORT (
        clka    : IN STD_LOGIC;
        ena     : IN STD_LOGIC;
        wea     : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra   : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        dina    : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        douta   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        clkb    : IN STD_LOGIC;
        enb     : IN STD_LOGIC;
        web     : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addrb   : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        dinb    : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        doutb   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END component;
signal ena, enb: STD_LOGIC := '0';
signal clka, clkb : STD_LOGIC := '0';
signal wea,web : STD_LOGIC_VECTOR(0 DOWNTO 0);
signal addra, dina, douta, addrb, dinb, doutb : STD_LOGIC_VECTOR(7 DOWNTO 0);
--Transmision
signal tclka, tclkb : STD_LOGIC := '0';
signal taddra, tdina, tdouta, taddrb, tdinb, tdoutb : STD_LOGIC_VECTOR(7 DOWNTO 0);
--Processing
signal pclka, pclkb : STD_LOGIC := '0';
signal paddra, pdina, pdouta, paddrb, pdinb, pdoutb : STD_LOGIC_VECTOR(7 DOWNTO 0);

begin
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


bram1 : blk_mem_8x180
    port map
    (
        clka    =>  clka,
        ena     =>  '1',
        wea     =>  "1",
        addra   =>  addra,
        dina    =>  dina,
        douta   =>  douta,
        clkb    =>  clkb,
        enb     =>  '1',
        web     =>  "0",
        addrb   =>  addrb,
        dinb    =>  (others => '0'),
        doutb   =>  doutb
    );


-- Read automaton, from 0 to bram_size
process is
variable readed         : STD_LOGIC := '0';
variable written        : STD_LOGIC := '0';
variable clocked        : STD_LOGIC := '0';
variable finished_read  : STD_LOGIC := '0';
variable output         : STD_LOGIC := '0';
begin
    wait until rising_edge(clk);
    if compleated_read = '0' then
        if finished_read = '0' then
            readed := '0';
        end if;
        if written = '1' and clocked = '0' then
            clocked := '1';
            tclka <= '0';
            if counter_R = bram_size then
                compleated_read <= '1';
                counter_R <= 0;
            end if;
        end if;
        if readed = '1' and written = '0' then
            tclka <= '1';
            written := '1';
        end if;
        if finished_read = '1' and readed = '0' then
            readed := '1';
            written := '0';
            clocked := '0';
            tdina <= rx_data;
            counter_R <= counter_R + 1;
            led <= std_logic_vector(to_unsigned(counter_R,led'length));
            taddra <= std_logic_vector(to_unsigned(counter_R,taddra'length));
        end if;
        if rx_busy = '1' then
            finished_read := '0';
            output := '1';
        elsif rx_busy = '0' then
            finished_read := output;
        end if;
    elsif reset_reception='1' then
        compleated_read <= '0';
        readed := '0';
        written := '0';
        clocked := '0';
        finished_read := '0';
        output := '1';
    end if;
end process;


--Intermediate automaton, controls ports use and activation of ip block
process is
    variable status : STD_LOGIC := '0';
    variable transition : STD_LOGIC := '0';
    variable reception_transmision : STD_LOGIC := '0';
    variable counter    : INTEGER := 0;
    constant ResetCount : INTEGER := 10;
    procedure SetIO is
    begin
        clka <= tclka;
        clkb <= tclkb;
        addra <= taddra;
        dina <= tdina;
        tdouta <= douta;
        addrb <= taddrb;
        dinb <= tdinb;
        tdoutb <= doutb;
    end procedure;
    
    procedure SetCP is
    begin
        clka <= pclka;
        clkb <= pclkb;
        addra <= paddra;
        dina <= pdina;
        pdouta <= douta;
        addrb <= paddrb;
        dinb <= pdinb;
        pdoutb <= doutb;
    end procedure;
begin
    wait until rising_edge(clk);
    case estado is
    
        when Reset =>
            begin_process <= '0';
            begin_transion <= '0';
            reset_reception <= '1';
            reset_transmision <= '1';
            estado <= EndReset;
            counter := 0;
            
        when EndReset =>
            counter := counter + 1;
            if counter = ResetCount then
                SetIO;
                reset_reception <= '0';
                reset_transmision <= '0';
                estado <= Reception;
            end if;
            
        when Reception =>
            SetIO;
            reset_reception <= '0';
            if compleated_read='1' then
                estado <= FinishReception;
                SetCP;
            end if;
            
        when FinishReception =>
            estado <= Compute;
            
        when Compute =>
            begin_transion <= '1';
            estado <= Transmision;
            
        when Transmision =>
            SetIO;
            if finished_transmision='1' then
                estado <= Reset;
            end if;
            
        when Others =>
            estado <= Reset;
    end case;
end process;


-- Write automaton, from 0 to bram_size
process is
variable start_write    : STD_LOGIC := '0';
variable readed         : STD_LOGIC := '0';
variable wait_txbusy    : STD_LOGIC := '0';
variable clk_wait       : STD_LOGIC := '0';
variable finished       : STD_LOGIC := '0';
begin
    wait until rising_edge(clk);
    if reset_transmision='1' then
        finished := '0';
        counter_T <= 0;
        finished_transmision <= '0';
    elsif begin_transion = '1' then
        if wait_txbusy = '1' and tx_busy = '0' then
            readed := '0';
            if counter_T = bram_size then
                finished_transmision <= '1';
                counter_T <= 0;
                finished := '1';
            end if;
        end if;
        if tx_ena = '1' and tx_busy = '1' then
            tx_ena <= '0';
            wait_txbusy := '1';
        end if;
        if tclkb = '1' then
            tclkb <= '0';
            tx_data <= doutb;
            tx_ena <= '1';
        end if;
        if readed = '1' and clk_wait = '0' then
            clk_wait := '1';
            tclkb <= '1';
        end if;
        if readed = '0' and finished = '0' then
            readed := '1';
            wait_txbusy := '0';
            clk_wait := '0';
            counter_T <= counter_T + 1;
            taddrb <= std_logic_vector(to_unsigned(counter_T,taddrb'length));
        end if;
    end if;
end process;

end Behavioral;
