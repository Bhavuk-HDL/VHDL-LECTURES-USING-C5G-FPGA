--Library
Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.numeric_std.all;

--Entity
Entity SPI_PROG is
generic (
	PLL_CLK		: positive := 80000000; --80MHz
	SPI_CLK		: positive := 10000000  --10MHz
	);
port (
	SEN			: out   std_logic;	--Serial Interface Enable
	SCLK			: out   std_logic;	--Serial Interface Clock
	SDATA			: inout std_logic;	--Serial Interface Data
	
	CLK			: in std_logic;
	RESET			: in std_logic;
	START			: in std_logic;
	COMPLETE		: out std_logic;
	
	ADDRESS		: in std_logic_vector(7 downto 0);
	DATA_IN		: in std_logic_vector(15 downto 0)
	);
end entity SPI_PROG;

--Architecture
architecture logic of SPI_PROG is

constant clk_count		: positive := (PLL_CLK / SPI_CLK);
constant clk_count_hf	: positive := (PLL_CLK / (2 * SPI_CLK));
constant address_w		: positive := 8;
constant data_w			: positive := 16;

signal clk_sig				: std_logic := '0';

signal spiclk_ind			: integer := clk_count - 1;
signal address_ind		: integer := address_w - 1;
signal data_ind			: integer := data_w - 1;

signal address_write		: std_logic_vector(7 downto 0)  := (others => '0');
signal data_write			: std_logic_vector(15 downto 0) := (others => '0');

type SPI is (idle, start_spi, address_spi, data_spi, stop);
signal current_state : SPI := idle;

begin	
	process(RESET, CLK)
	begin
		if (reset = '0') then
			current_state <= idle;
		elsif rising_edge(CLK) then
			case (current_state) is
				when idle =>
					SEN <= '1';
					SCLK <= '1';
					SDATA <= '1';
					
					spiclk_ind <= clk_count - 1;
					address_ind <= address_w - 1;
					data_ind <= data_w - 1;
					address_write <= (others => '0');
					data_write <= (others => '0');
					if (START = '1') then
						COMPLETE <= '0';
						current_state <= start_spi;
						address_write <= ADDRESS;
						data_write <= DATA_IN;
					end if;
				when start_spi =>
					SEN <= '0';
					SCLK <= '0';
					SDATA <= address_write(address_ind);
					spiclk_ind <= spiclk_ind - 1;
					current_state <= address_spi;
				when address_spi =>
					spiclk_ind <= spiclk_ind - 1;
					if (spiclk_ind = clk_count_hf) then
						SCLK <= '1';
						address_ind <= address_ind - 1;
						if (address_ind < 1) then
							current_state <= data_spi;
						end if;
					end if;
					if (spiclk_ind < 1) then
						spiclk_ind <= clk_count - 1;
						SCLK <= '0';
						SDATA <= address_write(address_ind);
					end if;
				when data_spi =>
					spiclk_ind <= spiclk_ind - 1;
					if (spiclk_ind = clk_count_hf) then
						SCLK <= '1';
						data_ind <= data_ind - 1;
						if (data_ind < 1) then
							current_state <= stop;
						end if;
					end if;
					if (spiclk_ind < 1) then
						spiclk_ind <= clk_count - 1;
						SCLK <= '0';
						SDATA <= data_write(data_ind);
					end if;
				when stop =>
					spiclk_ind <= spiclk_ind - 1;
					if (spiclk_ind < 1) then
						SEN <= '1';
						SCLK <= '1';
						SDATA <= '1';
						
						COMPLETE <= '1';
						current_state <= idle;
					end if;
			end case;
		end if;
	end process;
end architecture logic;