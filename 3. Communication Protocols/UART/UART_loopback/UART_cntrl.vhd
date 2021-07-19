--Library
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--Entity
entity UART_cntrl is
	generic (
		CLKFREQ					: positive := 50000000;
		UARTFREQ				: positive := 2000000
	);
	port (
		CLK						: in	std_logic;
		RESET_N					: in 	std_logic;
		
		UART_TX					: out	std_logic;
		UART_RX					: in	std_logic
	);
end entity UART_cntrl;

--Architecture
architecture logic of UART_cntrl is
signal TX_FLAG					: std_logic := '0';
signal RX_FLAG					: std_logic := '0';
signal TX_BUSY					: std_logic := '0';
signal RX_BUSY					: std_logic := '0';
signal TX_DATA					: std_logic_vector(31 downto 0) := (others => '0');
signal RX_DATA					: std_logic_vector(7 downto 0) := (others => '0');
signal tx_busy_local			: std_logic := '0';
signal tx_flag_local			: std_logic := '0';
signal tx_data_local			: std_logic_vector(7 downto 0) := (others => '0');
signal tx_start					: std_logic := '0';
signal tx_num					: integer range 0 to 4 := 4;
type state is (idle, sending, signaling, waiting);
signal tx_state					: state := idle;

component RX_cntrl is
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
end component RX_cntrl;

component TX_cntrl is
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
end component TX_cntrl;

begin
TX_FLAG <= RX_FLAG;
TX_DATA <= (RX_DATA & RX_DATA & RX_DATA & RX_DATA);

RX_cntrl_inst : RX_cntrl
	generic map(
		CLKFREQ					=> CLKFREQ,
		UARTFREQ				=> UARTFREQ
	)
	port map(
		CLK						=> CLK,
		RESET_N					=> RESET_N,
		
		UART_RX					=> UART_RX,
		RX_BUSY					=> RX_BUSY,
		RX_DATA					=> RX_DATA,
		RX_FLAG					=> RX_FLAG
	);

TX_cntrl_inst : TX_cntrl
	generic map(
		CLKFREQ					=> CLKFREQ,
		UARTFREQ				=> UARTFREQ
	)
	port map(
		CLK						=> CLK,
		RESET_N					=> RESET_N,
		
		UART_TX					=> UART_TX,
		TX_BUSY					=> tx_busy_local,
		TX_DATA					=> tx_data_local,
		TX_FLAG					=> tx_flag_local
	);

process(RESET_N, CLK)
begin
	if (RESET_N = '0') then
		tx_start					<= '0';
		tx_num						<= 4;
		tx_data_local				<= (others => '0');
		tx_state					<= idle;
	elsif rising_edge(CLK) then
		if (TX_FLAG = '1') then
			tx_start				<= '1';
		end if;
		if (tx_start = '1') then
			case(tx_num) is
				when 0 =>
					tx_data_local	<= (others => '0');
				when 1 =>
					tx_data_local	<= TX_DATA(31 downto 24);
				when 2 =>
					tx_data_local	<= TX_DATA(23 downto 16);
				when 3 =>
					tx_data_local	<= TX_DATA(15 downto 8);
				when 4 =>
					tx_data_local	<= TX_DATA(7 downto 0);
			end case;
		end if;
		case(tx_state) is
			when idle =>
				tx_flag_local		<= '0';
				if ((tx_start = '1') and (tx_busy_local = '0')) then
					tx_state		<= sending;
					TX_BUSY			<= '1';
					tx_num			<= 4;
				end if;
			when sending =>
				tx_flag_local		<= '1';
				tx_state			<= signaling;
			when signaling =>
				tx_flag_local		<= '0';
				tx_num				<= tx_num - 1;
				tx_state			<= waiting;
			when waiting =>
				if ((tx_num /=0) and (tx_busy_local = '0')) then
					tx_state		<= sending;
				end if;
				if ((tx_num = 0) and (tx_busy_local = '0')) then
					tx_state		<= idle;
					TX_BUSY			<= '0';
					tx_start		<= '0';
				end if;
		end case;
	end if;
end process;

end architecture logic;