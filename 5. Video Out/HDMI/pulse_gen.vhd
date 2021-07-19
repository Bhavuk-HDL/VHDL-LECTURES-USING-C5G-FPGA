--Library
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--Entity
entity pulse_gen is
port (
	Clk	: in std_logic;
	Key	: in std_logic;
	pulse : out std_logic
	);
end entity pulse_gen;

--Architecture
architecture logic of pulse_gen is
type status is (ONE, ZERO, WAIT0);
signal stat : status := ONE;
signal op	: std_logic;
begin
	process(Key, Clk)
	begin
		if rising_edge(Clk) then
			if (stat = ZERO) then
				op <= '1';
				pulse <= '1';
			end if;
			if (stat = WAIT0) then
				pulse <= '0';
			end if;
			if (Key = '1') then
				op <= '0';
			end if;
			
			if ((Key = '1') and (op = '0')) then
				stat <= ONE;
			end if;
			if ((Key = '0') and (op = '0')) then
				stat <= ZERO;
			end if;
			if ((stat = ZERO) and (op = '1')) then
				stat <= WAIT0;
			end if;
		end if;
	end process;
end architecture logic;