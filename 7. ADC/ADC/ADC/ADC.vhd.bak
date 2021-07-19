--Library
Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.numeric_std.all;

--Entity
Entity ADC is
port(
	-- With ADC Chip
	SDI		:	out	std_logic;
	SDO		:	in		std_logic;
	SCK		:	out	std_logic;
	CONVST	:	out	std_logic;
	
	-- With External
	clk	:	in	std_logic;	--40MHz
	start	:	in	std_logic;
	reset	:	in	std_logic;

	data	:	out	std_logic_vector(11 downto 0);
	command	:	in	std_logic_vector(5 downto 0);
	blink	:	out std_logic
	);
end entity;

--Architecture
architecture logic of ADC is

constant data_w	:	integer := 12;
constant pulse_w	:	integer := 12;
constant	wait1_tm	:	integer := 64;
constant	wait0_tm	:	integer := 4;
constant cmd_w		:	integer := 6;
constant conv_tm	:	integer := 2;

signal	data_ind	:	integer := data_w - 1;
signal	pulses	:	integer := pulse_w;
signal	cmd_ind	:	integer := cmd_w -1;
signal	wait1_scl:	integer := wait1_tm - 1;
signal	wait0_scl:	integer := wait0_tm - 1;
signal	conv_scl	:	integer := conv_tm - 1;

signal	SCK_st	:	std_logic := '0';

signal data_in			: std_logic_vector(11 downto 0);
signal command_in		: std_logic_vector(5 downto 0) := command;

type ADC_mode is (idle, pulse, wait0, conv, wait1);
signal current_mode: ADC_mode := idle;

begin
	process(reset, clk, start)
	begin
		if (reset = '1') then
			current_mode <= idle;
		elsif (rising_edge(clk)) then
			case (current_mode) is
			
				when idle =>
					current_mode <= idle;
					data_in <= "000000000000";
					command_in <= command;
					SCK_st <= '0';
					blink <= '0';
					pulses <= pulse_w;
					wait1_scl <= wait1_tm - 1;
					wait0_scl <= wait0_tm - 1;
					conv_scl <= conv_tm - 1;
					if (start = '1') then
						current_mode <= pulse;
					end if;
					
				when pulse =>
					SCK_st <= '1';
					data_in(data_ind) <= SDO;
					pulses <= pulses - 1;
					if (pulses < 1) then
						pulses <= pulse_w;
						SCK_st <= '0';
						current_mode <= wait0;
						data(11 downto 0) <= data_in(11 downto 0);
					end if;
					
				when wait0 =>
					wait0_scl <= wait0_scl - 1;
					if (wait0_scl < 1) then
						wait0_scl <= wait0_tm - 1;
						current_mode <= conv;
						blink <= '1';
						CONVST <= '1';
					end if;
					
				when conv =>
					conv_scl <= conv_scl - 1;
					blink <= '0';
					if (conv_scl < 1) then
						conv_scl <= conv_tm - 1;
						CONVST <= '0';
						current_mode <= wait1;
					end if;
					
				when wait1 =>
					wait1_scl <= wait1_scl - 1;
					if (wait1_scl < 1) then
						wait1_scl <= wait1_tm - 1;
						current_mode <= idle;
					end if;
					
			end case;
		end if;
		
		if falling_edge(clk) then
			cmd_ind <= cmd_w -1;
			SDI <= '0';
			data_ind <= data_w - 1;
			if (current_mode = pulse) then
				SDI <= command_in(cmd_ind);
				cmd_ind <= cmd_ind - 1;
				if (SCK_st = '1') then
					data_ind <= data_ind - 1;
				end if;
				if (cmd_ind < 1) then
					cmd_ind <= 0;
				end if;
				if (data_ind < 1) then
					data_ind <= 0;
				end if;
			end if;
		end if;
	end process;
	
	process(clk, SCK_st)
	begin
			SCK <= (SCK_st) and (clk);
	end process;
	
end logic;