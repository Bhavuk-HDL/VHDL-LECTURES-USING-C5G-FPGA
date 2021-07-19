--Library
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--Entity
entity RX_cntrl is
	generic (
		CLKFREQ					: positive := 50000000;
		UARTFREQ				: positive := 2000000
	);
	port (
		CLK						: in	std_logic;
		RESET_N					: in 	std_logic;
		
		UART_RX					: in	std_logic;
		RX_BUSY					: out	std_logic;
		RX_DATA					: out	std_logic_vector(7 downto 0);
		RX_FLAG					: out 	std_logic
	);
end entity RX_cntrl;

--Architecture
architecture logic of RX_cntrl is
constant prescalar				: positive := (CLKFREQ / (UARTFREQ * 2));
signal counter					: integer  := (prescalar - 1);
signal index					: integer range 0 to 11 := 11;
signal data_register			: std_logic_vector(10 downto 0) := (others => '0');
signal rx_start					: std_logic := '0';
signal rx_clk_st				: std_logic := '0';
signal parity_bit				: std_logic := '0';

begin

process(CLK, RESET_N)
begin
	if (RESET_N = '0') then
		rx_start								<= '0';
		index									<= 11;
		counter									<= prescalar - 1;
		rx_clk_st								<= '0';
		RX_BUSY									<= '0';
		parity_bit								<= '0';
		data_register							<= (others => '0');
	elsif rising_edge(CLK) then
		if ((UART_RX = '1') and (rx_start = '0'))then
			rx_start							<= '0';
			RX_FLAG								<= '0';
		end if;
		if ((UART_RX = '0') and (rx_start = '0'))then
			rx_start							<= '1';
			index								<= 11;
			counter								<= prescalar - 1;
			rx_clk_st							<= '0';
			RX_BUSY								<= '1';
			RX_FLAG								<= '0';
			parity_bit							<= '0';
			data_register						<= (others => '0');
		end if;
		if (rx_start = '1') then
			counter								<= counter - 1;
			if ((counter = 0) and (rx_clk_st = '0')) then
				rx_clk_st						<= '1';
				counter							<= prescalar - 1;
				if (index = 0) then
					index						<= 11;
					rx_start					<= '0';
					RX_BUSY						<= '0';
					if ((data_register(0) = '0') and (data_register(10) = '1') and (data_register(9) = parity_bit)) then
						RX_DATA					<= data_register(8 downto 1);
						RX_FLAG					<= '1';
					end if;
				else
					index						<= index - 1;
					data_register(11 - index)	<= UART_RX;
				end if;
			end if;
			if ((counter = 0) and (rx_clk_st = '1')) then
				rx_clk_st						<= '0';
				counter							<= prescalar - 1;
				if (index = 0) then
					parity_bit					<= (data_register(1) xor data_register(2) xor data_register(3) xor data_register(4) xor 
													data_register(5) xor data_register(6) xor data_register(7) xor data_register(8));
				end if;
			end if;
		end if;
	end if;
end process;

end architecture logic;