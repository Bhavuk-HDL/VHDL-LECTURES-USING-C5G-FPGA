--Library
library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.numeric_std.all;

--Entity
entity SRAM_test is
port(
		clock		:	in		std_logic;
		rst_all	:	in		std_logic;
		
		adr		:	out	std_logic_vector(17 downto 0);
		dq			:	inout	std_logic_vector(15 downto 0);
		ce			:	out	std_logic;
		oe			:	out	std_logic;
		we			:	out	std_logic;
		ub			:	out	std_logic;
		lb			:	out	std_logic;
		
		UART_Tx	:	out	std_logic;
		UART_Rx	:	in		std_logic;
		
		sw_addr	:	in		std_logic; --0
		sw_data	:	in		std_logic; --1
		sw_read	:	in		std_logic; --2
		sw_write	:	in		std_logic; --3
		sw_snd	:	in		std_logic; --4
		
		led_rst	:	out	std_logic;
		led_adr  :  out   std_logic_vector(7 downto 0);
		led_rx	:	out	std_logic_vector(7 downto 0)
	);
end entity;

--Architecture
architecture logic of SRAM_test is

signal sram_data_in : std_logic_vector(15 downto 0);
signal sram_data_out : std_logic_vector(15 downto 0);
signal sram_addr_in	: std_logic_vector(17 downto 0);
signal sram_rd_act, sram_we_act : std_logic;
signal reset : std_logic;

signal Tx_data : std_logic_vector(7 downto 0);
signal Tx_start : std_logic := '0';
signal Tx_busy : std_logic;

signal Rx_data : std_logic_vector(7 downto 0);
signal Rx_busy : std_logic;

signal tx_dat	: std_logic;
signal rx_dat	: std_logic;
signal rx_adr	: std_logic;

----------------------------------------------

component Tx
port(
	clk : in std_logic;
	start : in std_logic;
	busy : out std_logic;
	data : in std_logic_vector(7 downto 0);
	Tx_line : out std_logic);
end component Tx;

----------------------------------------------

component Rx
port(
	clk : in std_logic;
	rx_line : in std_logic;
	data : out std_logic_vector(7 downto 0);
	busy : out std_logic);
end component Rx;

-----------------------------------------------------------

component sram_cntrl
port(
		clk		:	in		std_logic;
		reset		:	in		std_logic;
		
		data_in	:	in 	std_logic_vector(15 downto 0);
		data_out	:	out 	std_logic_vector(15 downto 0);
		addr_in	:	in 	std_logic_vector(17 downto 0);
		
		rd_act	:	in		std_logic;
		we_act	:	in		std_logic;
		
		sram_adr	:	out	std_logic_vector(17 downto 0);
		sram_dq	:	inout	std_logic_vector(15 downto 0);
		sram_ce	:	out	std_logic;
		sram_oe	:	out	std_logic;
		sram_we	:	out	std_logic;
		sram_ub	:	out	std_logic;
		sram_lb	:	out	std_logic
	);
end component;

-------------------------------------------------------------

begin
C0 : sram_cntrl port map(clock, reset, sram_data_in, sram_data_out, sram_addr_in, sram_rd_act, sram_we_act, adr, dq, ce, oe, we, ub, lb);
C1 : Tx port map(clock, Tx_start, Tx_busy, Tx_data, UART_Tx);
C2 : Rx port map(clock, UART_Rx, Rx_data, Rx_busy);

led_rst <= rst_all;
led_adr <= sram_addr_in(7 downto 0);

process(clock)
begin
	if rising_edge(clock) then
		if rst_all = '0' then
			reset <= '1';
		else
			reset <= '0';
		end if;
	end if;
end process;

process(clock)
begin
	if rising_edge(clock) then
		rx_dat <= '0';
		rx_adr <= '0';
		sram_rd_act <= '0';
		sram_we_act <= '0';
		tx_dat <= '0';
		if (sw_addr = '1') then			--adr
			rx_adr <= '1';
		elsif (sw_data = '1') then		--dat
			rx_dat <= '1';
		elsif (sw_snd = '1') then		--tx
			tx_dat <= '1';
		elsif (sw_read = '1') then		--rd
			sram_rd_act <= '1';
		elsif (sw_write = '1') then	--wr
			sram_we_act <= '1';
		end if;
		
		if Tx_busy = '0' then
			led_rx <= Rx_data;
		end if;
		
		if rx_adr = '1' then
			sram_addr_in <= "0000000000" & Rx_data;
		elsif rx_dat = '1' then
			sram_data_in <= "00000000" & Rx_data;
		end if;
	end if;
end process;

process(tx_dat, clock)
begin
	if rising_edge(tx_dat) then	--4
		if Tx_busy = '0' then
			Tx_start <= '1';
			Tx_data	<= sram_data_out(7 downto 0);
		else
			Tx_start <= '0';
		end if;
	end if;
end process;

end logic;