--Library
Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.numeric_std.all;

--Entity
entity ADC_cntrl is
port(
	SDI		:	out	std_logic;
	SDO		:	in	std_logic;
	SCK		:	out	std_logic;
	CONVST	:	out	std_logic;
	
	clk		:	in	std_logic;	--40MHz
	
	led_data		:	out	std_logic_vector(11 downto 0);
	led_channel	:	out	std_logic_vector(2 downto 0);
	led_blink	:	out	std_logic;
	
	channel_select : in	std_logic_vector(2 downto 0);
	
	start		:	in std_logic;
	reset_all:	in std_logic

	);
end entity;

--Architecture
architecture logic of ADC_cntrl is
signal data		: std_logic_vector(11 downto 0);
signal command	: std_logic_vector(5 downto 0);
signal ready	: std_logic;

signal wait_time:	integer := 400000;
signal working	: std_logic := '0';

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
	reset_all	:	in	std_logic;

	data	:	out	std_logic_vector(11 downto 0);
	command	:	in	std_logic_vector(5 downto 0);
	blink	:	out std_logic
	);
end component;

----------------------------------------------
	
begin

----------------------------------------------

ADC_inst :  ADC
port map(
	SDI			=> SDI,
	SDO			=> SDO,
	SCK			=> SCK,
	CONVST		=> CONVST,
	clk			=> clk,
	start			=> start,
	reset_all	=> reset_all,
	data			=> data,
	command		=> command,
	blink			=> ready
	);

----------------------------------------------
led_blink <= working;

	process(reset_all, clk)
	begin
		if (reset_all = '0') then
			command <= "000000";
			led_data <= (others => '0');
			led_channel <= (others => '0');
			working <= '0';
		elsif (rising_edge(clk)) then
			led_channel <= channel_select;
			
			case(channel_select) is
				when "000" =>
					command <= "100010";
				
				when "001" =>
					command <= "110010";
				
				when "010" =>
					command <= "100110";
				
				when "011" =>
					command <= "110110";
				
				when "100" =>
					command <= "101010";
				
				when "101" =>
					command <= "111010";
				
				when "110" =>
					command <= "101110";
				
				when "111" =>
					command <= "111110";	
			end case;
			
			if (ready = '1') then
				led_data <= data;
				wait_time <= wait_time - 1;
				if (wait_time < 1) then
					wait_time <= 400000;
					working <= not working;
				end if;
			end if;
			
		end if;
	end process;
end logic;