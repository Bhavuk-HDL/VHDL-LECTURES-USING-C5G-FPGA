--Library
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--Entity
entity top is
port(
		clk		: in std_logic;	--40MHz
		reset		: in std_logic;
		
		start_seq : in std_logic;
		
		scl		: out std_logic;
		sda		: inout std_logic
	);
end entity top;

--Architecture
architecture logic of top is
constant main_clk : integer := 40000000;
constant i2c_clk	: integer := 100000;

signal default_addr	 : std_logic_vector(7 downto 0);
signal base_addr	 : std_logic_vector(7 downto 0);
signal base_data	 : std_logic_vector(7 downto 0);

signal ack		 : std_logic;
signal end_seq	 : std_logic;


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
		CLKFREQ				=> main_clk,
		I2CFREQ				=> i2c_clk
	)
	port map(
		CLK					=> clk,
		RESET				=> reset,
		
		SCL					=> scl,
		SDA					=> sda,
		
		SLAVE_ADDRESS		=> default_addr,
		BASE_ADDRESS		=> base_addr,
		DATA_BYTE			=> base_data,
		
		START_SEQ			=> start_seq,
		COMP_SEQ			=> end_seq,
		ACK_N				=> ack
	);


end architecture logic;