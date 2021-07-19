--Library
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--Entity
entity I2C is
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
end entity I2C;

--Architecture
architecture logic of I2C is
constant prescaler			: positive := (CLKFREQ / (I2CFREQ * 2));
signal SCL_count			: integer := prescaler - 1;
signal index				: integer range 0 to 8:= 8;
signal byte_num				: integer range 0 to 2 := 2;
signal SDA_byte				: std_logic_vector(7 downto 0) := (others => '0');
signal SDA_data				: std_logic_vector(15 downto 0) := (others => '0');
type I2C_st is (idle, start, sending, ack, stop);
signal curr_state			: I2C_st := idle;
signal SCL_state			: std_logic := '1';

begin

process(CLK, RESET)
begin
	if (RESET = '0') then
		curr_state <= idle;
	elsif rising_edge(CLK) then
		case(curr_state) is
			when idle =>
				SCL			<= '1';
				SDA			<= '1';
				ACK_N		<= '1';
				SCL_count 	<= prescaler - 1;
				index		<= 8;
				byte_num	<= 2;
				SCL_state	<= '1';
				COMP_SEQ	<= '0';
				SDA_byte	<= (others => '0');
				SDA_data	<= (others => '0');
				if (START_SEQ = '1') then
					curr_state		<= start;
					COMP_SEQ		<= '0';
					SDA_data		<= (DATA_BYTE & BASE_ADDRESS);
					SDA_byte		<= SLAVE_ADDRESS;
				end if;
			when start =>
				SCL_count	<= SCL_count - 1;
				if (SCL_count = (prescaler / 2)) then
					SDA				<= '0';
				end if;
				if (SCL_count = 0) then
					SCL				<= '0';
					SCL_state		<= '0';
					SCL_count		<= prescaler - 1;
					curr_state		<= sending;
				end if;
			when sending =>
				SCL_count	<= SCL_count - 1;
				if (SCL_count = (prescaler / 2) and (SCL_state = '0') and (index /= 0)) then
					SDA				<= SDA_byte(index - 1);
					index			<= index - 1;
				end if;
				if ((SCL_count = 0) and (SCL_state = '0')) then
					SCL				<= '1';
					SCL_state		<= '1';
					SCL_count		<= prescaler - 1;
				end if;
				if ((SCL_count = 0) and (SCL_state = '1')) then
					SCL				<= '0';
					SCL_state		<= '0';
					SCL_count		<= prescaler - 1;
				end if;
				if (SCL_count = (prescaler / 2) and (SCL_state = '0') and (index = 0)) then
					index			<= 8;
					SDA				<= 'Z';
					curr_state		<= ack;
					if (byte_num = 0) then
						SDA				<= '0';
						curr_state		<= stop;
					end if;
				end if;
			when ack =>
				SCL_count	<= SCL_count - 1;
				if ((SCL_count = 0) and (SCL_state = '0')) then
					SCL				<= '1';
					SCL_state		<= '1';
					SCL_count		<= prescaler - 1;
				end if;
				if ((SCL_count = 0) and (SCL_state = '1')) then
					SCL				<= '0';
					SCL_state		<= '0';
					SCL_count		<= prescaler - 1;
				end if;
				if (SCL_count = (prescaler / 2) and (SCL_state = '1')) then
					ACK_N			<= SDA;
				end if;
				if (SCL_count = ((prescaler / 2) + 1) and (SCL_state = '0')) then
					if (byte_num = 2) then
						curr_state		<= sending;
						byte_num		<= byte_num - 1;
						SDA_byte		<= SDA_data(7 downto 0);
					end if;
					if (byte_num = 1) then
						curr_state		<= sending;
						byte_num		<= byte_num - 1;
						SDA_byte		<= SDA_data(15 downto 8);
					end if;
				end if;
			when stop =>
				SCL_count	<= SCL_count - 1;
				if ((SCL_count = 0) and (SCL_state = '0')) then
					SCL				<= '1';
					SCL_state		<= '1';
					SCL_count		<= prescaler - 1;
				end if;
				if (SCL_count = (prescaler / 2) and (SCL_state = '1')) then
					SDA				<= '1';
					COMP_SEQ		<= '1';
					curr_state		<= idle;
				end if;
		end case;
	end if;
end process;

end architecture logic;