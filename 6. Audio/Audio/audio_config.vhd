--Library
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--Entity
entity audio_config is
port(
		CLK					: in 	std_logic;
		
		START				: in 	std_logic;
		RESET				: in 	std_logic;
		
		BCLK				: out	std_logic;
		PBLRC				: out	std_logic;
		PBDAT				: out	std_logic
	);
end entity audio_config;

--Architecture
architecture logic of audio_config is
constant CLKFREQ 			: positive := 40000000;
constant I2CFREQ			: positive := 100000;

signal SETUP_DONE			: std_logic;
signal pulse				: std_logic;

constant MCLK_scale			: positive := 12288000;
constant PBLRC_scale		: positive := 48000;
constant BCLK_scale			: positive := 3072000;

constant PBLRC_prescaler	: positive := ((MCLK_scale / (2 * PBLRC_scale)) - 1);
constant BCLK_prescaler		: positive := ((MCLK_scale / (2 * BCLK_scale)) - 1);

signal PBLRC_count			: integer := PBLRC_prescaler;
signal BCLK_count			: integer := BCLK_prescaler;

signal BCLK_sig				: std_logic := '0';
signal PBLRC_sig			: std_logic := '0';
signal PBDAT_sig			: std_logic := '0';

signal SINE110				: std_logic_vector(63 downto 0) := (others => '0');
signal sine_index			: integer range 0 to 32		:= 0;
signal data_index			: integer range 0 to 32		:= 0;

begin

BCLK						<= BCLK_sig;
PBLRC						<= PBLRC_sig;
PBDAT						<= PBDAT_sig;

process(CLK, RESET)
begin
	if (RESET = '0') then
		BCLK_sig			<= '0';
		PBLRC_sig			<= '0';
		BCLK_count			<= BCLK_prescaler;
		PBLRC_count			<= PBLRC_prescaler;
	elsif rising_edge(CLK) then
		if (START = '1') then
			BCLK_count		<= BCLK_count - 1;
			PBLRC_count		<= PBLRC_count - 1;
			if (BCLK_count = 0) then
				BCLK_sig	<= (not BCLK_sig);
				BCLK_count	<= BCLK_prescaler;
			end if;
			if (PBLRC_count = 0) then
				PBLRC_sig	<= (not PBLRC_sig);
				PBLRC_count	<= PBLRC_prescaler;
			end if;
		else
			BCLK_sig		<= '1';
			PBLRC_sig		<= '1';
		end if;
	end if;
end process;

process(BCLK_sig, RESET)
begin
	if (RESET = '0') then
		PBDAT_sig			<= '0';
		data_index			<= 0;
	elsif rising_edge(BCLK_sig) then
		PBDAT_sig			<= SINE110(data_index);
		data_index			<= data_index + 1;
		if (data_index = 31) then
			data_index		<= 0;
		end if;
	end if;
end process;

process(PBLRC_sig, RESET)
begin
	if (RESET = '0') then
		sine_index			<= 0;
	elsif rising_edge(PBLRC_sig) then
		sine_index			<= sine_index + 1;
		if (sine_index = 31) then
			sine_index		<= 0;
		end if;
		
		case(sine_index) is
			when 0 =>
				SINE110				<= X"0000000000000000";
			when 1 =>
				SINE110				<= X"0000004000000040";
			when 2 =>
				SINE110				<= X"0000008000000080";
			when 3 =>
				SINE110				<= X"000000D0000000D0";
			when 4 =>
				SINE110				<= X"0000010000000100";
			when 5 =>
				SINE110				<= X"0000014000000140";
			when 6 =>
				SINE110				<= X"0000018000000180";
			when 7 =>
				SINE110				<= X"000001D0000001D0";
			when 8 =>
				SINE110				<= X"0000020000000200";
			when 9 =>
				SINE110				<= X"0000024000000240";
			when 10 =>
				SINE110				<= X"0000028000000280";
			when 11 =>
				SINE110				<= X"000002D0000002D0";
			when 12 =>
				SINE110				<= X"0000030000000300";
			when 13 =>
				SINE110				<= X"0000034000000340";
			when 14 =>
				SINE110				<= X"0000038000000380";
			when 15 =>
				SINE110				<= X"000003D0000003D0";
			when 16 =>
				SINE110				<= X"0000040000000400";
			when 17 =>
				SINE110				<= X"0000044000000440";
			when 18 =>
				SINE110				<= X"0000048000000480";
			when 19 =>
				SINE110				<= X"000004D0000004D0";
			when 20 =>
				SINE110				<= X"0000050000000500";
			when 21 =>
				SINE110				<= X"0000054000000540";
			when 22 =>
				SINE110				<= X"0000058000000580";
			when 23 =>
				SINE110				<= X"000005D0000005D0";
			when 24 =>
				SINE110				<= X"0000060000000600";
			when 25 =>
				SINE110				<= X"0000064000000640";
			when 26 =>
				SINE110				<= X"0000068000000680";
			when 27 =>
				SINE110				<= X"000006D0000006D0";
			when 28 =>
				SINE110				<= X"0000070000000700";
			when 29 =>
				SINE110				<= X"0000074000000740";
			when 30 =>
				SINE110				<= X"0000078000000780";
			when others =>
				SINE110				<= X"0000000000000000";
		end case;

	end if;
end process;

end architecture logic;