--Library
library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.numeric_std.all;

--Entity
Entity Tx is
generic (
	CLKF		 : positive := 160000000;	--160MHz
	UARTF		 : positive := 1000000		--1MHz
	);
port(
	clk 		: in std_logic;
	new_data	: in std_logic;
	data	   : in std_logic_vector(7 downto 0);
	tx_line  : out std_logic;
	busy		: out std_logic
	);
end entity Tx;

--Architecture
architecture logic of Tx is
constant baud_rate : positive := (CLKF / UARTF);
signal prscl : integer range 0 to baud_rate := 0;
signal index : integer range 0 to 9 := 0;
signal datafll : std_logic_vector(9 downto 0);
signal tx_flag : std_logic := '0';

begin
	process(clk)
	begin
		if rising_edge(clk) then
		
			if (tx_flag = '0' and new_data = '1') then
				tx_flag <= '1';
				busy <= '1';
				
				--Data Byte
				datafll(0)  <= '0';		-- start bit
				datafll(8 downto 1)   <= data(7 downto 0);
				datafll(9)  <= '1';		-- stop bit
				
 			end if;
			if (tx_flag = '1') then
				if (prscl < (baud_rate - 1)) then
					prscl <= prscl + 1;
				else
					prscl <= 0;
				end if;
				if (prscl = (baud_rate / 2)) then
					tx_line <= datafll(index);
					if (index < 9) then
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
end architecture logic;