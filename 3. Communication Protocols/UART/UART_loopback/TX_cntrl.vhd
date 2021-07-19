--Library
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--Entity
entity TX_cntrl is
	generic (
		CLKFREQ					: positive := 50000000;
		UARTFREQ				: positive := 2000000
	);
	port (
		CLK						: in	std_logic;
		RESET_N					: in 	std_logic;
		
		UART_TX					: out	std_logic;
		TX_BUSY					: out	std_logic;
		TX_DATA					: in 	std_logic_vector(7 downto 0);
		TX_FLAG					: in 	std_logic
	);
end entity TX_cntrl;

--Architecture
architecture logic of TX_cntrl is
constant prescalar				: positive := (CLKFREQ / (UARTFREQ * 2));
signal counter					: integer  := (prescalar - 1);
signal index					: integer range 0 to 11 := 11;
signal data_register			: std_logic_vector(10 downto 0) := (others => '0');
signal tx_start					: std_logic := '0';
signal tx_clk_st				: std_logic := '0';

begin

process(CLK, RESET_N)
begin
	if (RESET_N = '0') then
		tx_start					<= '0';
		TX_BUSY						<= '0';
		tx_clk_st					<= '0';
		index						<= 11;
		counter						<= prescalar - 1;
	elsif rising_edge(CLK) then
		if ((tx_start = '0') and (TX_FLAG = '0')) then
			UART_TX						<= '1';
		end if;
		if (TX_FLAG = '1') then
			tx_start					<= '1';
			TX_BUSY						<= '1';
			tx_clk_st					<= '0';
			index						<= 11;
			counter						<= prescalar - 1;
			
			data_register(0)			<= '0';															--START_BIT
			data_register(8 downto 1)	<= TX_DATA;														--DATA_BITS
			data_register(9)			<= (TX_DATA(0) xor TX_DATA(1) xor TX_DATA(2) xor TX_DATA(3) xor
											TX_DATA(4) xor TX_DATA(5) xor TX_DATA(6) xor TX_DATA(7));	--PARITY_BIT_EVEN
			data_register(10)			<= '1';															--STOP_BIT
			
		end if;
		if (tx_start = '1') then
			counter						<= counter - 1;
			if ((counter = 0) and (tx_clk_st = '0')) then
				tx_clk_st				<= '1';
				counter					<= prescalar - 1;
				if (index = 0) then
					index				<= 11;
					tx_start			<= '0';
					TX_BUSY				<= '0';
				else
					index				<= index - 1;
					UART_TX				<= data_register(11 - index);
				end if;
			end if;
			if ((counter = 0) and (tx_clk_st = '1')) then
				tx_clk_st				<= '0';
				counter					<= prescalar - 1;
			end if;
		end if;
	end if;
end process;

end architecture logic;