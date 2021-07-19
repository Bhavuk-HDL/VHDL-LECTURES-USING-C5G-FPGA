--Library
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--Entity
entity top is
port(
		CLK			: in std_logic;
		CLK1		: in std_logic;
		
		START		: in std_logic;
		RESET		: in std_logic;
		
		SCL			: out 	std_logic;
		SDA			: inout std_logic;
		
		HSYNC		: out std_logic;
		VSYNC		: out std_logic;
		DATAENABLE	: out std_logic;
		HDMICLK		: out std_logic;
		HDMIDATA	: out std_logic_vector(23 downto 0)
	);
end entity top;

--Architecture
architecture logic of top is
constant CLKFREQ 	: positive := 40000000;
constant I2CFREQ	: positive := 100000;

signal SETUP_DONE	: std_logic;
signal outclk_40	: std_logic;
signal outclk_hdmi	: std_logic;
signal pulse		: std_logic;

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

component HDMI_cntrl is
port(
		CLK			: in std_logic;
		
		START		: in std_logic;
		
		HSYNC		: out std_logic;
		VSYNC		: out std_logic;
		DATAENABLE	: out std_logic;
		HDMICLK		: out std_logic;
		HDMIDATA	: out std_logic_vector(23 downto 0)
	);
end component HDMI_cntrl;

component pll is
port (
	refclk   : in  std_logic := 'X'; -- clk
	rst      : in  std_logic := 'X'; -- reset
	outclk_0 : out std_logic         -- clk40
	);
end component pll;

component pllhdmi is
port (
	refclk   : in  std_logic := 'X'; -- clk
	rst      : in  std_logic := 'X'; -- reset
	outclk_0 : out std_logic         -- clk148.5
	);
end component pllhdmi;

component pulse_gen is
port (
	Clk		: in std_logic;
	Key		: in std_logic;
	pulse	: out std_logic
	);
end component pulse_gen;

begin

I2C : I2C_config
	generic map(
		CLKFREQ				=> CLKFREQ,
		I2CFREQ				=> I2CFREQ
	)
	port map(
		CLK					=> outclk_40,
		RESET				=> RESET,
		
		SCL					=> SCL,
		SDA					=> SDA,
		
		START_SETUP			=> pulse,
		SETUP_DONE			=> SETUP_DONE
	);

HDMI : HDMI_cntrl
	port map(
		CLK			=> outclk_hdmi,
		
		START		=> SETUP_DONE,
		
		HSYNC		=> HSYNC,
		VSYNC		=> VSYNC,
		DATAENABLE	=> DATAENABLE,
		HDMICLK		=> HDMICLK,
		HDMIDATA	=> HDMIDATA
	);

pll_inst : pll
	port map(
		refclk   => CLK1,
		rst      => (not RESET),
		outclk_0 => outclk_40
	);

hdmipll : pllhdmi
	port map(
		refclk   => CLK,
		rst      => (not RESET),
		outclk_0 => outclk_hdmi
	);

pulse_inst : pulse_gen
port map(
	Clk		=> outclk_40,
	Key		=> START,
	pulse	=> pulse
	);

end architecture logic;