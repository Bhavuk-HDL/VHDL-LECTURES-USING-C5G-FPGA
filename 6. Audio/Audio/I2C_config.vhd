--Library
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--Entity
entity I2C_config is
	generic(
		CLKFREQ				: positive := 40000000;	--40MHz
		I2CFREQ				: positive := 100000 	--100KHz
	);
	port(
		CLK					: in 	std_logic;
		RESET				: in 	std_logic;
		
		SCL					: out 	std_logic;
		SDA					: inout std_logic;
		
		START_SETUP			: in 	std_logic;
		SETUP_DONE			: out 	std_logic
		);
end entity I2C_config;

--Architecture
architecture logic of I2C_config is
constant SLAVE_ADDRESS  	: std_logic_vector(7 downto 0) := x"34";
signal BASE_ADDRESS	 		: std_logic_vector(7 downto 0) := (others => '0');
signal DATA_BYTE	 		: std_logic_vector(7 downto 0) := (others => '0');

signal START_SEQ 			: std_logic;
signal COMP_SEQ	 			: std_logic;
signal ACK_N	 			: std_logic;

type states is (idle, send, ack);
signal state 				: states := idle;
signal index				: integer range 0 to 10 := 0;

component I2C is
	generic(
		CLKFREQ				: positive := 40000000;	--40MHz
		I2CFREQ				: positive := 100000 	--100KHz
	);
	port(
		CLK					: in 	std_logic;
		RESET				: in 	std_logic;
		
		SCL					: out 	std_logic;
		SDA					: inout std_logic;
		
		SLAVE_ADDRESS		: in	std_logic_vector(7 downto 0);
		BASE_ADDRESS		: in 	std_logic_vector(7 downto 0);
		DATA_BYTE			: in 	std_logic_vector(7 downto 0);
		
		START_SEQ			: in 	std_logic;
		COMP_SEQ			: out 	std_logic;
		ACK_N				: out 	std_logic
	);
end component I2C;

begin

I2C_inst : I2C
generic map(
		CLKFREQ				=> CLKFREQ,
		I2CFREQ				=> I2CFREQ
	)
	port map(
		CLK					=> CLK,
		RESET				=> RESET,
		
		SCL					=> SCL,
		SDA					=> SDA,
		
		SLAVE_ADDRESS		=> SLAVE_ADDRESS,
		BASE_ADDRESS		=> BASE_ADDRESS,
		DATA_BYTE			=> DATA_BYTE,
		
		START_SEQ			=> START_SEQ,
		COMP_SEQ			=> COMP_SEQ,
		ACK_N				=> ACK_N
	);

process(CLK, RESET)
begin
	if (RESET = '0') then
		state 					<= idle;
	elsif rising_edge(CLK) then
		case(state) is 
			when idle =>
				START_SEQ		<= '0';
				index			<= 0;
				if (START_SETUP = '1') then
					state			<= send;
					SETUP_DONE		<= '0';
				end if;
			when send =>
				START_SEQ		<= '1';
				state			<= ack;
			when ack =>
				START_SEQ		<= '0';
				if (COMP_SEQ = '1') then
					state			<= send;
					if (ACK_N = '0') then
						index		<= index + 1;
					end if;
					if (index = 10) then
						state		<= idle;
						SETUP_DONE	<= '1';
					end if;
				end if; 
		end case;
		case(index) is
			when 0 =>			--LEFT CHANNEL ADC MUTE
				BASE_ADDRESS	<= x"00";
				DATA_BYTE		<= x"97";
			when 1 =>			--RIGHT CHANNEL ADC MUTE
				BASE_ADDRESS	<= x"02";
				DATA_BYTE		<= x"97";
			when 2 =>			--LEFT CHANNEL DAC VOLUME : +2db
				BASE_ADDRESS	<= x"04";
				DATA_BYTE		<= x"7B";
			when 3 =>			--RIGHT CHANNEL DAC VOLUME : +2db
				BASE_ADDRESS	<= x"06";
				DATA_BYTE		<= x"7B";
			when 4 =>			--DAC OUTPUT MIX AT OP
				BASE_ADDRESS	<= x"08";
				DATA_BYTE		<= x"10";
			when 5 =>			--48KHz SAMPLING RATE
				BASE_ADDRESS	<= x"0A";
				DATA_BYTE		<= x"06";
			when 6 =>			--PLAYBACK ONLY
				BASE_ADDRESS	<= x"0C";
				DATA_BYTE		<= x"07";
			when 7 =>			--I2S MODE; 24-BIT WORD LENGTH
				BASE_ADDRESS	<= x"0E";
				DATA_BYTE		<= x"0A";
			when 8 =>			--MCLK : 12.288MHz; PBLRC : 48 MHz; BCLK : 3.072MHz
				BASE_ADDRESS	<= x"10";
				DATA_BYTE		<= x"00";
			when 9 =>			-- DIGITAL CORE ACTIVATED
				BASE_ADDRESS	<= x"12";
				DATA_BYTE		<= x"01";
			when others =>
				BASE_ADDRESS	<= x"14";
				DATA_BYTE		<= x"00";
		end case;
	end if;
end process;
end architecture logic;