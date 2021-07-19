--Library
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--Entity
entity top is
	port(
		CLK		: in std_logic;	--50MHz
		
		VGA_HS	: out std_logic;	--GPIO[0] (31.5KHz)	Orange
		VGA_VS	: out std_logic;	--GPIO[1] (59.5Hz)	Yellow
											--Ground					Brown
		VGA_R		: out std_logic;	--GPIO[2]				Red
		VGA_G		: out std_logic;	--GPIO[3]				Green
		VGA_B		: out std_logic;	--GPIO[4]				Blue
		
		START		: in std_logic		--SW[0]
	);
end entity top;

--Architecture
architecture logic of top is
	--pll
signal outclk_0		: std_logic;
signal locked			: std_logic;
signal pllclk			: std_logic;
	--logic
constant countx		: positive := 800;
constant county		: positive := 521;
signal counterx		: integer range 0 to countx := 0;
signal countery		: integer range 0 to county := 0;
signal ver_blank		: std_logic;
signal hor_blank		: std_logic;

component pll is
	port (
		refclk   : in  std_logic := 'X'; -- clk
		rst      : in  std_logic := 'X'; -- reset
		outclk_0 : out std_logic;        -- clk
		locked   : out std_logic         -- export
	);
end component pll;

begin

pllclk <= (locked) and (outclk_0);

pixel_clk : pll
	port map(
		refclk   => CLK,
		rst      => (not START),
		outclk_0 => outclk_0,
		locked   => locked
	);

process(START, pllclk)
begin
	if(START = '0') then
		counterx		<= 0;
		countery		<= 0;
	elsif rising_edge(pllclk) then
		counterx <= counterx + 1;
		if (counterx = (countx - 1)) then
			counterx	<= 0;
			countery <= countery + 1;
			if (countery = (county - 1)) then
				countery <= 0;
			end if;
		end if;
	end if;
end process;

hor_blank <= '1' when ((counterx <= 146) or (counterx >= 784)) else '0';
ver_blank <= '1' when ((countery <= 31)  or (countery >= 511)) else '0';

VGA_HS	 <= '0' when ((counterx >= 0) and (counterx <= 96)) else '1';
VGA_VS    <= '0' when ((countery >= 0) and (countery <= 1))  else '1';

--Square Blocks
VGA_R		 <= '1' when (((counterx >= 144) and (counterx <= 357)) and ((countery >= 31) and (countery <= 351)))  else
				 '1' when (((counterx >= 570) and (counterx <= 784)) and ((countery >= 191) and (countery <= 351))) else
				 '1' when (((counterx >= 357) and (counterx <= 570)) and ((countery >= 351) and (countery <= 511))) else
				 '0';
VGA_G		 <= '1' when (((counterx >= 570) and (counterx <= 784)) and ((countery >= 31) and (countery <= 351)))  else
				 '1' when (((counterx >= 357) and (counterx <= 570)) and ((countery >= 191) and (countery <= 351))) else
				 '1' when (((counterx >= 357) and (counterx <= 570)) and ((countery >= 351) and (countery <= 511))) else
				 '0';
VGA_B		 <= '1' when (((counterx >= 357) and (counterx <= 570)) and ((countery >= 31) and (countery <= 351)))  else
				 '1' when (((counterx >= 144) and (counterx <= 357)) and ((countery >= 191) and (countery <= 351))) else
				 '1' when (((counterx >= 357) and (counterx <= 570)) and ((countery >= 351) and (countery <= 511))) else
				 '0';
end architecture logic;