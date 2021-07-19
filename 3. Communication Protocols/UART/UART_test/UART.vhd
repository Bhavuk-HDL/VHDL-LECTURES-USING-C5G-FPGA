--Library
library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.numeric_std.all;

--Entity
entity UART is
	generic (
		MAINCLKF	: positive := 40000000;	--40MHz
		UARTCLK		: positive := 1000000	--1MHz
	);
	port (
		clk 		: in 	std_logic;
		reset		: in	std_logic;
		txstart		: in 	std_logic;
		rxstart		: in 	std_logic;
		tx_busy		: out	std_logic;
		rx_busy		: out	std_logic;
		tx_data	    : in 	std_logic_vector(31 downto 0);
		rx_data	    : out 	std_logic_vector(7 downto 0);
		tx_line  	: out 	std_logic;
		rx_line		: in 	std_logic;
		rx_new_data : out 	std_logic
	);
end entity UART;

--Architecture
architecture logic of UART is
signal tx_running	: std_logic := '0';
signal tx_data_in	: std_logic_vector(7 downto 0) := (others => '0');
signal tx_busy_out	: std_logic;
signal tx_done		: std_logic;
signal txstart_out	: std_logic := '0';
signal tx_count		: std_logic_vector(1 downto 0) := "11";

component Rx is
	generic (
		MAINCLKF	: positive := 40000000;	--40MHz
		UARTCLK		: positive := 1000000	--1MHz
	);
	port (
		clk 		: in  std_logic;
		start		: in  std_logic;
		rx_line		: in  std_logic;
		data 		: out std_logic_vector(7 downto 0);
		new_data	: out std_logic;
		busy 		: out std_logic
	);
end component Rx;

component Tx is
	generic (
		MAINCLKF	: positive := 40000000;	--40MHz
		UARTCLK		: positive := 1000000	--1MHz
	);
	port (
		clk 		: in  std_logic;
		start 		: in  std_logic;
		busy		: out std_logic;
		done		: out std_logic;
		data	    : in  std_logic_vector(7 downto 0);
		tx_line  	: out std_logic
	);
end component Tx;

begin

Rx_inst : Rx
	generic map(
		MAINCLKF	=> MAINCLKF,
		UARTCLK		=> UARTCLK
	)
	port map(
		clk 		=> clk,
		start		=> rxstart,
		rx_line		=> rx_line,
		data 		=> rx_data,
		new_data	=> rx_new_data,
		busy 		=> rx_busy
	);

Tx_inst : Tx
	generic map(
		MAINCLKF	=> MAINCLKF,
		UARTCLK		=> UARTCLK
	)
	port map(
		clk 		=> clk,
		start 		=> txstart_out,
		busy		=> tx_busy_out,
		done 		=> tx_done,
		data	    => tx_data_in,
		tx_line  	=> tx_line
	);

	process(reset ,clk)
	begin
		if (reset = '0') then
			tx_count		<= "11";
			txstart_out		<= '0';
			tx_running		<= '0';
		elsif rising_edge(clk) then
			if (txstart = '1') then
				tx_count		<= "11";
				txstart_out		<= '0';
				tx_running		<= '1';
				tx_busy			<= '1';
			end if;
			if (tx_running = '1') then
				case(tx_count) is
					when "11" =>
						txstart_out <= '0';
						if (tx_done = '0' and tx_busy_out = '0') then
							txstart_out <= '1';
							tx_data_in <= tx_data(7 downto 0);
							tx_count <= "10";
						end if;
						if (tx_done = '1' and tx_busy_out = '0') then
							tx_busy <= '0';
						end if;
					when "10" =>
						txstart_out <= '0';
						if (tx_done = '1' and tx_busy_out = '0') then
							txstart_out <= '1';
							tx_data_in <= tx_data(15 downto 8);
							tx_count <= "01";
						end if;
					when "01" =>
						txstart_out <= '0';
						if (tx_done = '1' and tx_busy_out = '0') then
							txstart_out <= '1';
							tx_data_in <= tx_data(23 downto 16);
							tx_count <= "00";
						end if;
					when "00" =>
						txstart_out <= '0';
						if (tx_done = '1' and tx_busy_out = '0') then
							txstart_out <= '1';
							tx_data_in <= tx_data(31 downto 24);
							tx_count <= "11";
							tx_running <= '0';
						end if;
					when others =>
						tx_count <= "11";
				end case;
			else
				tx_count		<= "11";
				txstart_out		<= '0';
			end if;
		end if;
	end process;
end architecture logic;