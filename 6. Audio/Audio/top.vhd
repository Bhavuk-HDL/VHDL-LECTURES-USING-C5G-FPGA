--Library
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--Entity
entity top is
port(
		CLK					: in 	std_logic;
		
		START				: in 	std_logic;
		RESET				: in 	std_logic;
		
		SCL					: out 	std_logic;
		SDA					: inout std_logic;
		
		MCLK				: out	std_logic;
		BCLK				: out	std_logic;
		PBLRC				: out	std_logic;
		PBDAT				: out	std_logic
	);
end entity top;

--Architecture
architecture logic of top is
constant CLKFREQ 			: positive := 40000000;
constant I2CFREQ			: positive := 100000;

signal SETUP_DONE			: std_logic := '0';
signal pulse				: std_logic := '0';
signal pll_sysclk			: std_logic := '0';
signal MCLK_sig				: std_logic := '0';

component I2C_config is
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
end component I2C_config;

component audio_config is
port(
		CLK					: in 	std_logic;
		
		START				: in 	std_logic;
		RESET				: in 	std_logic;
		
		BCLK				: out	std_logic;
		PBLRC				: out	std_logic;
		PBDAT				: out	std_logic
	);
end component audio_config;

component pulse_gen is
port (
	Clk						: in 	std_logic;
	Key						: in 	std_logic;
	pulse					: out 	std_logic
	);
end component pulse_gen;

component PLL_SYS is
	port (
		refclk   			: in  std_logic := 'X'; -- clk
		rst      			: in  std_logic := 'X'; -- reset
		outclk_0 			: out std_logic;        -- clk
		locked   			: out std_logic         -- export
	);
end component PLL_SYS;

component CHIP_CLK is
	port (
		refclk   			: in  std_logic := 'X'; -- clk
		rst      			: in  std_logic := 'X'; -- reset
		outclk_0 			: out std_logic;        -- clk
		locked   			: out std_logic         -- export
	);
end component CHIP_CLK;

begin

MCLK						<= MCLK_sig;

I2C : I2C_config
	generic map(
		CLKFREQ				=> CLKFREQ,
		I2CFREQ				=> I2CFREQ
	)
	port map(
		CLK					=> pll_sysclk,
		RESET				=> RESET,
		
		SCL					=> SCL,
		SDA					=> SDA,
		
		START_SETUP			=> pulse,
		SETUP_DONE			=> SETUP_DONE
	);

audio : audio_config
port map(
		CLK					=> MCLK_sig,
		
		START				=> SETUP_DONE,
		RESET				=> RESET,
		
		BCLK				=> BCLK,
		PBLRC				=> PBLRC,
		PBDAT				=> PBDAT
	);

PLL40 : PLL_SYS
	port map(
		refclk   			=> CLK,
		rst      			=> (not RESET),
		outclk_0 			=> pll_sysclk,
		locked   			=> open
	);

XCLK : CHIP_CLK
	port map(
		refclk   			=> CLK,
		rst      			=> (not RESET),
		outclk_0 			=> MCLK_sig,
		locked   			=> open
	);

pulse_inst : pulse_gen
port map(
	Clk						=> pll_sysclk,
	Key						=> START,
	pulse					=> pulse
	);

end architecture logic;