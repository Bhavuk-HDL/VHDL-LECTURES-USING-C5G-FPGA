--Library
library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.numeric_std.all;

--Entity
Entity Tx is
port(
	clk : in std_logic;
	start : in std_logic;
	busy : out std_logic;
	data : in std_logic_vector(11 downto 0);
	ch_no : in std_logic_vector(3 downto 0);
	Tx_line : out std_logic);
end Tx;

--Architecture
architecture main of Tx is

signal prscl : integer range 0 to 347 := 0;	-- for baud rate = 115200
signal index : integer range 0 to 19 := 0;
signal datafll : std_logic_vector(19 downto 0);
signal tx_flag : std_logic := '0';

begin
	process(clk)
	begin
		if rising_edge(clk) then
		
			if (tx_flag = '0' and start = '1') then
				tx_flag <= '1';
				busy <= '1';
				
				datafll(0) <= '0';		-- start bit
				datafll(8 downto 1) <= data(7 downto 0);
				datafll(9) <= '1';		-- stop bit
				datafll(10) <= '0';		-- start bit
				datafll(14 downto 11) <= data(11 downto 8);
				datafll(18 downto 15) <= ch_no(3 downto 0);
				datafll(19) <= '1';		-- stop bit
				
 			end if;
			if (tx_flag = '1') then
				if (prscl < 346) then
					prscl <= prscl + 1;
				else
					prscl <= 0;
				end if;
				if (prscl = 175) then
					Tx_line <= datafll(index);
					if (index < 19) then
						index <= index + 1;
					else
						tx_flag <= '0';
						busy <= '0';
						index <= 0;
						datafll <= (others => '1');
					end if;
				end if;
			end if;
		end if;
	end process;
end main;