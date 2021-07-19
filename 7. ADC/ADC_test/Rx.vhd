--Library
library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.numeric_std.all;

--Entity
Entity Rx is
port(
	clk : in std_logic;
	rx_line : in std_logic;
	data : out std_logic_vector(7 downto 0);
	rx_cmd : in std_logic_vector(7 downto 0);
	pulse	: out std_logic;
	busy : out std_logic);
end Rx;

--Architecture
architecture main of Rx is

signal datafll : std_logic_vector(9 downto 0);
signal rx_flag : std_logic := '0';
signal prscl : integer range 0 to 347 := 0;	-- for baud rate = 115200
signal index : integer range 0 to 9 := 0;

begin
	process(clk)
	begin
	if rising_edge(clk) then
		if (rx_flag = '0' and rx_line = '0') then
			index <= 0;
			prscl <= 0;
			busy <= '1';
			rx_flag <= '1';
		end if;
		if (rx_flag <= '1') then
			datafll(index) <= rx_line;
			if (prscl < 346) then
				prscl <= prscl + 1;
			else
				prscl <= 0;
			end if;
			if (prscl = 175) then
				if (index < 9) then
					index <= index + 1;
				else
					if (datafll(0) = '0') and (datafll(9) = '1')then		-- Error check
						data <= datafll(8 downto 1);
					else
						data <= (others => '0');
					end if;
					rx_flag <= '0';
					busy <= '0';
					datafll <= (others => '0');
				end if;
			end if;
		end if;
		if (datafll(8 downto 1) = rx_cmd) then
			pulse <= '1';
		else
			pulse <= '0';
		end if;
	end if;
	end process;
end main;