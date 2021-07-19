--Library
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--Entity
entity HDMI_cntrl is
port(
		CLK			: in std_logic;
		
		START		: in std_logic;
		
		HSYNC		: out std_logic;
		VSYNC		: out std_logic;
		DATAENABLE	: out std_logic;
		HDMICLK		: out std_logic;
		HDMIDATA	: out std_logic_vector(23 downto 0)
	);
end entity HDMI_cntrl;
--1918x1079
--Architecture
architecture logic of HDMI_cntrl is
	--logic
constant countx		: positive := 2200;
constant county		: positive := 1125;
signal counterx		: integer range 0 to countx := 0;
signal countery		: integer range 0 to county := 0;
signal ver_blank	: std_logic;
signal hor_blank	: std_logic;

begin

process(START, CLK)
begin
	if(START = '0') then
		counterx			<= 0;
		countery			<= 0;
	elsif rising_edge(CLK) then
		counterx 			<= counterx + 1;
		if (DATAENABLE = '1') then
			HDMIDATA			<= std_logic_vector(unsigned(HDMIDATA) + 8);
		end if;
		if (counterx = (countx - 1)) then
			counterx		<= 0;
			countery 		<= countery + 1;
			if (countery = (county - 1)) then
				countery 	<= 0;
				HDMIDATA	<= (others => '0');
			end if;
		end if;
	end if;
end process;

hor_blank 	<= '1' when ((counterx <= 192) or (counterx >= 2112)) else '0';
ver_blank 	<= '1' when ((countery <= 41)  or (countery >= 1121)) else '0';

DATAENABLE	<= '1' when ((hor_blank = '0') and (ver_blank = '0')) else '0';

HSYNC		<= '0' when ((counterx >= 0) and (counterx <= 44)) else '1';
VSYNC    	<= '0' when ((countery >= 0) and (countery <= 5))  else '1';
/*
--Square Blocks for 640x480
HDMIDATA(23 downto 16)	 <= X"FF" when (((counterx >= 144) and (counterx <= 357)) and ((countery >= 31) and (countery <= 191)))  else
							X"FD" when (((counterx >= 144) and (counterx <= 357)) and ((countery >= 191) and (countery <= 351)))  else
							X"A5" when (((counterx >= 144) and (counterx <= 357)) and ((countery >= 351) and (countery <= 511)))  else
							X"F0" when (((counterx >= 357) and (counterx <= 570)) and ((countery >= 31) and (countery <= 191)))  else
							X"AA" when (((counterx >= 357) and (counterx <= 570)) and ((countery >= 191) and (countery <= 351)))  else
							X"0F" when (((counterx >= 357) and (counterx <= 570)) and ((countery >= 351) and (countery <= 511)))  else
							X"5A" when (((counterx >= 570) and (counterx <= 784)) and ((countery >= 31) and (countery <= 191)))  else
							X"0D" when (((counterx >= 570) and (counterx <= 784)) and ((countery >= 191) and (countery <= 351)))  else
							X"00";
HDMIDATA(15 downto 8)	 <= X"00" when (((counterx >= 144) and (counterx <= 357)) and ((countery >= 31) and (countery <= 191)))  else
							X"0D" when (((counterx >= 144) and (counterx <= 357)) and ((countery >= 191) and (countery <= 351)))  else
							X"5A" when (((counterx >= 144) and (counterx <= 357)) and ((countery >= 351) and (countery <= 511)))  else
							X"0F" when (((counterx >= 357) and (counterx <= 570)) and ((countery >= 31) and (countery <= 191)))  else
							X"AA" when (((counterx >= 357) and (counterx <= 570)) and ((countery >= 191) and (countery <= 351)))  else
							X"F0" when (((counterx >= 357) and (counterx <= 570)) and ((countery >= 351) and (countery <= 511)))  else
							X"A5" when (((counterx >= 570) and (counterx <= 784)) and ((countery >= 31) and (countery <= 191)))  else
							X"FD" when (((counterx >= 570) and (counterx <= 784)) and ((countery >= 191) and (countery <= 351)))  else
							X"FF";
HDMIDATA(7 downto 0)		 <= X"0F" when (((counterx >= 144) and (counterx <= 357)) and ((countery >= 31) and (countery <= 191)))  else
							X"5A" when (((counterx >= 144) and (counterx <= 357)) and ((countery >= 191) and (countery <= 351)))  else
							X"0D" when (((counterx >= 144) and (counterx <= 357)) and ((countery >= 351) and (countery <= 511)))  else
							X"00" when (((counterx >= 357) and (counterx <= 570)) and ((countery >= 31) and (countery <= 191)))  else
							X"FF" when (((counterx >= 357) and (counterx <= 570)) and ((countery >= 191) and (countery <= 351)))  else
							X"FD" when (((counterx >= 357) and (counterx <= 570)) and ((countery >= 351) and (countery <= 511)))  else
							X"A5" when (((counterx >= 570) and (counterx <= 784)) and ((countery >= 31) and (countery <= 191)))  else
							X"F0" when (((counterx >= 570) and (counterx <= 784)) and ((countery >= 191) and (countery <= 351)))  else
							X"AA";
*/
HDMICLK <= CLK when (START = '1') else '0';

end architecture logic;