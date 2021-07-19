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
constant SLAVE_ADDRESS  	: std_logic_vector(7 downto 0) := x"72";
signal BASE_ADDRESS	 		: std_logic_vector(7 downto 0) := (others => '0');
signal DATA_BYTE	 		: std_logic_vector(7 downto 0) := (others => '0');

signal START_SEQ 			: std_logic;
signal COMP_SEQ	 			: std_logic;
signal ACK_N	 			: std_logic;

type states is (idle, send, ack);
signal state 				: states := idle;
signal index				: integer range 0 to 31 := 0;

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
					if (index = 30) then
						state		<= idle;
						SETUP_DONE	<= '1';
					end if;
				end if; 
		end case;
		case(index) is
			when 0 =>
				BASE_ADDRESS	<= x"98";
				DATA_BYTE		<= x"03";
			when 1 =>
				BASE_ADDRESS	<= x"01";
				DATA_BYTE		<= x"00";
			when 2 =>
				BASE_ADDRESS	<= x"02";
				DATA_BYTE		<= x"18";
			when 3 =>
				BASE_ADDRESS	<= x"03";
				DATA_BYTE		<= x"00";
			when 4 =>
				BASE_ADDRESS	<= x"14";
				DATA_BYTE		<= x"70";
			when 5 =>
				BASE_ADDRESS	<= x"15";
				DATA_BYTE		<= x"20";
			when 6 =>
				BASE_ADDRESS	<= x"16";
				DATA_BYTE		<= x"30";
			when 7 =>
				BASE_ADDRESS	<= x"18";
				DATA_BYTE		<= x"46";
			when 8 =>
				BASE_ADDRESS	<= x"40";
				DATA_BYTE		<= x"80";
			when 9 =>
				BASE_ADDRESS	<= x"41";
				DATA_BYTE		<= x"10";
			when 10 =>
				BASE_ADDRESS	<= x"49";
				DATA_BYTE		<= x"A8";
			when 11 =>
				BASE_ADDRESS	<= x"55";
				DATA_BYTE		<= x"10";
			when 12 =>
				BASE_ADDRESS	<= x"56";
				DATA_BYTE		<= x"08";
			when 13 =>
				BASE_ADDRESS	<= x"96";
				DATA_BYTE		<= x"F6";
			when 14 =>
				BASE_ADDRESS	<= x"73";
				DATA_BYTE		<= x"07";
			when 15 =>
				BASE_ADDRESS	<= x"76";
				DATA_BYTE		<= x"1F";
			when 16 =>
				BASE_ADDRESS	<= x"98";
				DATA_BYTE		<= x"03";
			when 17 =>
				BASE_ADDRESS	<= x"99";
				DATA_BYTE		<= x"02";
			when 18 =>
				BASE_ADDRESS	<= x"9A";
				DATA_BYTE		<= x"E0";
			when 19 =>
				BASE_ADDRESS	<= x"9C";
				DATA_BYTE		<= x"30";
			when 20 =>
				BASE_ADDRESS	<= x"9D";
				DATA_BYTE		<= x"61";
			when 21 =>
				BASE_ADDRESS	<= x"A2";
				DATA_BYTE		<= x"A4";
			when 22 =>
				BASE_ADDRESS	<= x"A3";
				DATA_BYTE		<= x"A4";
			when 23 =>
				BASE_ADDRESS	<= x"A5";
				DATA_BYTE		<= x"04";
			when 24 =>
				BASE_ADDRESS	<= x"AB";
				DATA_BYTE		<= x"40";
			when 25 =>
				BASE_ADDRESS	<= x"AF";
				DATA_BYTE		<= x"16";
			when 26 =>
				BASE_ADDRESS	<= x"BA";
				DATA_BYTE		<= x"60";
			when 27 =>
				BASE_ADDRESS	<= x"D1";
				DATA_BYTE		<= x"FF";
			when 28 =>
				BASE_ADDRESS	<= x"DE";
				DATA_BYTE		<= x"10";
			when 29 =>
				BASE_ADDRESS	<= x"E4";
				DATA_BYTE		<= x"60";
			when 30 =>
				BASE_ADDRESS	<= x"FA";
				DATA_BYTE		<= x"7D";
			when others =>
				BASE_ADDRESS	<= x"98";
				DATA_BYTE		<= x"03";
		end case;
	end if;
end process;
end architecture logic;