--Library
Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.numeric_std.all;

--Entity
entity ADC_test is
port(
	SDI		:	out	std_logic;
	SDO		:	in	std_logic;
	SCK		:	out	std_logic;
	CONVST	:	out	std_logic;
	
	clock	:	in	std_logic;	--50MHz
	
	led_data		:	out	std_logic_vector(11 downto 0);
	led_nthing	:	out	std_logic;
	led_rx_pulse:	out	std_logic;
	led_channel	:	out	std_logic_vector(3 downto 0);
	
	start		:	in std_logic;
	reset_all:	in std_logic;
	
	UART_Tx	:	out std_logic;
	UART_Rx	:	in std_logic

	);
end entity;

--Architecture
architecture logic of ADC_test is
constant tx_size	:	integer := 500;
constant write_cmd	:	std_logic_vector(7 downto 0) := "01010111";	-- 57: 'W'

type channel is (CH1, CH2, CH3, CH4, CH5, CH6, CH7, CH8);
signal cmd_ch	:	channel := CH1;
signal cmd	:	std_logic_vector(5 downto 0) := "100010";	
signal channel_no	:	std_logic_vector(3 downto 0) := "0001";

signal data_adc:	std_logic_vector(11 downto 0);

signal   reset		: std_logic;
signal	clkpll	: std_logic;

signal	ready		: std_logic;
signal	led_stat : std_logic;
signal	wait_time:	integer := 400000;

signal Tx_data : std_logic_vector(11 downto 0);
signal Tx_start : std_logic := '0';
signal Tx_busy : std_logic;
signal tx_count : std_logic;
signal tx_num	: integer := tx_size - 1;

signal Rx_data : std_logic_vector(7 downto 0);
signal Rx_busy : std_logic;
signal rx_pulse : std_logic;
----------------------------------------------

component ADC
port(
	-- With ADC Chip
	SDI		:	out	std_logic;
	SDO		:	in		std_logic;
	SCK		:	out	std_logic;
	CONVST	:	out	std_logic;
	
	-- With External
	clk	:	in	std_logic;	--40MHz
	start	:	in	std_logic;
	reset	:	in	std_logic;

	data	:	out	std_logic_vector(11 downto 0);
	command	:	in	std_logic_vector(5 downto 0);
	blink	:	out std_logic
	);
	end component;

----------------------------------------------

component Tx
port(
	clk : in std_logic;
	start : in std_logic;
	busy : out std_logic;
	data : in std_logic_vector(11 downto 0);
	ch_no : in std_logic_vector(3 downto 0);
	Tx_line : out std_logic
	);
end component Tx;

----------------------------------------------

component Rx
port(
	clk : in std_logic;
	rx_line : in std_logic;
	data : out std_logic_vector(7 downto 0);
	rx_cmd : in std_logic_vector(7 downto 0);
	pulse	: out std_logic;
	busy : out std_logic);
end component Rx;

----------------------------------------------

component pll is
	port (
		refclk   : in  std_logic := 'X'; -- clk
		rst      : in  std_logic := 'X'; -- reset
		outclk_0 : out std_logic         -- clk
	);
end component pll;

----------------------------------------------
	
begin
C0 : ADC port map(SDI, SDO, SCK, CONVST, clkpll, start, reset, data_adc, cmd, ready);
C1 : Tx port map(clkpll, Tx_start, Tx_busy, Tx_data, channel_no, UART_Tx);
C2	: Rx port map(clkpll, UART_Rx, Rx_data, write_cmd, rx_pulse, Rx_busy);
C3 : pll port map(clock, reset, clkpll);

process(reset_all)
begin
	if (reset_all = '0') then
		reset <= '1';
	else
		reset <= '0';
	end if;
end process;

process(clkpll)
begin
	if rising_edge(clkpll) then
		led_rx_pulse <= rx_pulse;
		if (reset = '0') then
			led_data(11 downto 0) <= data_adc(11 downto 0);
			led_nthing <= led_stat;
			led_rx_pulse <= '0';
			led_channel <= channel_no;
		end if;
	end if;
	
	if rising_edge(ready) then
		wait_time <= wait_time - 1;
		if wait_time < 1 then
			wait_time <= 400000;
			led_stat <= not led_stat;
		end if;
	end if;
end process;



process(clkpll)
begin
	if rising_edge(clkpll) then
		if (Tx_busy = '0') and (ready = '1') and (start = '1') and (reset = '0') and (tx_count = '1')then
			Tx_start <= '1';
			Tx_data(11 downto 0) <= data_adc(11 downto 0);
			tx_num <= tx_num - 1;
			if (tx_num < 1) then
				tx_count <= '0';
				tx_num <= tx_size - 1;
				
				case(cmd_ch) is
				when CH1 =>
					cmd <= "110010";
					cmd_ch <= CH2;
					channel_no <= "0010";
				when CH2 =>
					cmd <= "100110";
					cmd_ch <= CH3;
					channel_no <= "0011";
				when CH3 =>
					cmd <= "110110";
					cmd_ch <= CH4;
					channel_no <= "0100";
				when CH4 =>
					cmd <= "101010";
					cmd_ch <= CH5;
					channel_no <= "0101";
				when CH5 =>
					cmd <= "111010";
					cmd_ch <= CH6;
					channel_no <= "0110";
				when CH6 =>
					cmd <= "101110";
					cmd_ch <= CH7;
					channel_no <= "0111";
				when CH7 =>
					cmd <= "111110";
					cmd_ch <= CH8;
					channel_no <= "1000";
				when CH8 =>
					cmd <= "100010";
					cmd_ch <= CH1;
					channel_no <= "0001";
			end case;
			
			end if;
		else
			Tx_start <= '0';
		end if;
		
		if (rx_pulse = '1') then
			tx_count <= '1';		
		end if;
	end if;
end process;

end logic;