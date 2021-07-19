--Library
Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.numeric_std.all;

--Entity
entity top is
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
architecture logic of top is
signal clk_40		: std_logic;
signal pll_clk_40	: std_logic;
signal pll_lock_40: std_logic;

-----------------------------------

component pll_adc is
	port (
		refclk   : in  std_logic := 'X'; -- clk
		rst      : in  std_logic := 'X'; -- reset
		outclk_0 : out std_logic;        -- clk
		locked   : out std_logic         -- export
	);
end component pll_adc;

-----------------------------------

component ADC_cntrl is
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
end component;

-----------------------------------

begin

pll_clk_40 <= (pll_lock_40) and (clk_40);

-----------------------------------

pll_adc_inst : pll_adc
port map(
		refclk   => clk,
		rst      => (not reset_all),
		outclk_0 => clk_40,
		locked   => pll_lock_40
	);

-----------------------------------

ADC_cntrl_inst :  ADC_cntrl
port map(
	SDI				=> SDI,
	SDO				=> SDO,
	SCK				=> SCK,
	CONVST			=> CONVST,
	clk				=> pll_clk_40,
	led_data			=> led_data,
	led_channel		=> led_channel,
	led_blink		=> led_blink,
	channel_select => channel_select,
	start				=> start,
	reset_all		=> reset_all
	);

-----------------------------------

end logic;