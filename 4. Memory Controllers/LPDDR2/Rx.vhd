--Library
library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.numeric_std.all;

--Entity
Entity Rx is
generic (
	CLKF		 : positive := 160000000;	--160MHz
	UARTF		 : positive := 1000000		--1MHz
	);
port (
	clk		 : in std_logic;
	rx_line	 : in std_logic;
	data	 	 : out std_logic_vector(7 downto 0);
	new_data  : out std_logic;
	busy 		 : out std_logic
	);
end entity Rx;

--Architecture
architecture logic of Rx is
constant baud_rate : positive := (CLKF / UARTF);
signal datafll  : std_logic_vector(9 downto 0);
signal rx_flag  : std_logic := '0';
signal new_dat	 : std_logic := '0';
signal prscl 	 : integer range 0 to baud_rate := 0;
signal index 	 : integer range 0 to 10 := 0;

begin
	process(clk)
	begin
	if rising_edge(clk) then
		new_data <= new_dat;
		if (rx_flag = '0' and rx_line = '1') then
			new_dat <= '0';
			datafll <= (others => '0');
		end if;
		if (rx_flag = '0' and rx_line = '0') then
			index <= 0;
			prscl <= 0;
			busy <= '1';
			rx_flag <= '1';
			datafll <= (others => '0');
		end if;
		if (rx_flag = '1') then
			if (prscl < (baud_rate - 1)) then
				prscl <= prscl + 1;
			else
				prscl <= 0;
			end if;
			if (prscl = (baud_rate / 2)) then
				if (index < 10) then
					datafll(index) <= rx_line;
					index <= index + 1;
				else
					if (datafll(0) = '0') and (datafll(9) = '1')then		-- Error check
						data <= datafll(8 downto 1);
					else
						data <= (others => '0');
					end if;
					rx_flag <= '0';
					busy <= '0';
					new_dat <= '1';
				end if;
			end if;
		end if;
	end if;
	end process;
end architecture logic;