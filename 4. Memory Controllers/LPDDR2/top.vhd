--Library
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--Entity
entity top is
port (
	clk125	     : in    std_logic;                                        -- ossc_clk
	reset_n       : in    std_logic;                                        -- system_reset
	
	Uart_tx		  : out	 std_logic;                                        -- UART_Tx
	Uart_rx		  : in	 std_logic;                                        -- UART_Rx
	
	LED_uart		  : out	 std_logic_vector(7 downto 0);  							-- LED_Rx_data`(LEDR0 - LEDR7)
	
	sdram_st_bt	  : in	 std_logic;                                        -- Store_SDRAM_btn  (BTN0)
	sdram_rd_bt	  : in	 std_logic;                                        -- Read_SDRAM_btn   (BTN1)
	sdram_fl_led  : out	 std_logic;                                        -- LED_SDRAM_FULL	  (LEDG7)
	
	mem_ca        : out   std_logic_vector(9 downto 0);                     -- mem_ca
	mem_ck        : out   std_logic_vector(0 downto 0);                     -- mem_ck
	mem_ck_n      : out   std_logic_vector(0 downto 0);                     -- mem_ck_n
	mem_cke       : out   std_logic_vector(0 downto 0);                     -- mem_cke
	mem_cs_n      : out   std_logic_vector(0 downto 0);                     -- mem_cs_n
	mem_dm        : out   std_logic_vector(3 downto 0);                     -- mem_dm
	mem_dq        : inout std_logic_vector(31 downto 0);                    -- mem_dq
	mem_dqs       : inout std_logic_vector(3 downto 0);                     -- mem_dqs
	mem_dqs_n     : inout std_logic_vector(3 downto 0);                     -- mem_dqs_n
	oct_rzqin     : in    std_logic                                         -- rzqin
	);
end entity top;

--Architecture
architecture logic of top is 
--Component Signals
signal outclk_0				: std_logic;
signal locked					: std_logic := '0';
signal pll_clk					: std_logic;
signal clk160					: std_logic;
signal stp_clk					: std_logic;

constant CLKF					: positive := 160000000;	--160MHz
constant UARTF					: positive := 1000000;		--1MHz

signal rx_data		 			: std_logic_vector(7 downto 0);
signal rx_new_data			: std_logic := '0';

signal tx_data		 			: std_logic_vector(7 downto 0);
signal tx_new_data			: std_logic := '0';

signal store_sdram			: std_logic := '0';
signal read_sdram				: std_logic := '0';

constant avl_size_0			: std_logic_vector(2 downto 0) := "001";
signal avl_ready_0			: std_logic;
signal avl_addr_0				: std_logic_vector(27 downto 0) := (others => '0');
signal avl_rdata_valid_0	: std_logic;
signal avl_rdata_0			: std_logic_vector(31 downto 0);
signal avl_wdata_0			: std_logic_vector(31 downto 0) := (others => '0');
signal avl_be_0				: std_logic_vector(3 downto 0) := (others => '0');
signal avl_read_req_0		: std_logic := '0';
signal avl_write_req_0		: std_logic := '0';
signal local_init_done		: std_logic;
signal local_cal_success	: std_logic;
signal local_cal_fail		: std_logic;
	
--Logic Signals
constant sdram_full_addr	: std_logic_vector(27 downto 0) := (others => '1');
signal sdram_read_full		: std_logic := '0';
signal sdram_write_full		: std_logic := '0';
signal sdram_read_addr		: std_logic_vector(27 downto 0) := (others => '0');
signal sdram_write_addr		: std_logic_vector(27 downto 0) := (others => '0');
type state is (idle, busy);
signal read_st : state := idle;

component ALTCLK is
port (
	inclk  : in  std_logic := 'X'; -- inclk
	outclk : out std_logic         -- outclk
	);
end component ALTCLK;

component PLL is
port (
	refclk   : in  std_logic := 'X'; -- clk
	rst      : in  std_logic := 'X'; -- reset
	outclk_0 : out std_logic;        -- clk  (160MHz)
	outclk_1 : out std_logic;        -- clk  (320MHz)
	locked   : out std_logic         -- export
	);
end component PLL;

component Rx is
generic (
	CLKF		 : positive := 320000000;	--160MHz
	UARTF		 : positive := 1000000		--1MHz
	);
port (
	clk		 : in std_logic;
	rx_line	 : in std_logic;
	data	 	 : out std_logic_vector(7 downto 0);
	new_data  : out std_logic;
	busy 		 : out std_logic
	);
end component Rx;

component Tx is
generic (
	CLKF		 : positive := 320000000;	--160MHz
	UARTF		 : positive := 1000000		--1MHz
	);
port(
	clk 		: in std_logic;
	new_data	: in std_logic;
	data	   : in std_logic_vector(7 downto 0);
	tx_line  : out std_logic;
	busy		: out std_logic
	);
end component Tx;

component Pulse_gen is
port (
	Clk	: in std_logic;	--system_clk
	Key	: in std_logic;	--input_sig
	Align : out std_logic	--op_pulse
	);
end component Pulse_gen;

component LPDDR2 is
port (
	pll_ref_clk                : in    std_logic                     := 'X';             -- clk
	global_reset_n             : in    std_logic                     := 'X';             -- reset_n
	soft_reset_n               : in    std_logic                     := 'X';             -- reset_n
	afi_clk                    : out   std_logic;                                        -- clk
	afi_half_clk               : out   std_logic;                                        -- clk
	afi_reset_n                : out   std_logic;                                        -- reset_n
	afi_reset_export_n         : out   std_logic;                                        -- reset_n
	mem_ca                     : out   std_logic_vector(9 downto 0);                     -- mem_ca
	mem_ck                     : out   std_logic_vector(0 downto 0);                     -- mem_ck
	mem_ck_n                   : out   std_logic_vector(0 downto 0);                     -- mem_ck_n
	mem_cke                    : out   std_logic_vector(0 downto 0);                     -- mem_cke
	mem_cs_n                   : out   std_logic_vector(0 downto 0);                     -- mem_cs_n
	mem_dm                     : out   std_logic_vector(3 downto 0);                     -- mem_dm
	mem_dq                     : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
	mem_dqs                    : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
	mem_dqs_n                  : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
	avl_ready_0                : out   std_logic;                                        -- waitrequest_n
	avl_burstbegin_0           : in    std_logic                     := 'X';             -- beginbursttransfer
	avl_addr_0                 : in    std_logic_vector(27 downto 0) := (others => 'X'); -- address
	avl_rdata_valid_0          : out   std_logic;                                        -- readdatavalid
	avl_rdata_0                : out   std_logic_vector(31 downto 0);                    -- readdata
	avl_wdata_0                : in    std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
	avl_be_0                   : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
	avl_read_req_0             : in    std_logic                     := 'X';             -- read
	avl_write_req_0            : in    std_logic                     := 'X';             -- write
	avl_size_0                 : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- burstcount
	mp_cmd_clk_0_clk           : in    std_logic                     := 'X';             -- clk
	mp_cmd_reset_n_0_reset_n   : in    std_logic                     := 'X';             -- reset_n
	mp_rfifo_clk_0_clk         : in    std_logic                     := 'X';             -- clk
	mp_rfifo_reset_n_0_reset_n : in    std_logic                     := 'X';             -- reset_n
	mp_wfifo_clk_0_clk         : in    std_logic                     := 'X';             -- clk
	mp_wfifo_reset_n_0_reset_n : in    std_logic                     := 'X';             -- reset_n
	local_init_done            : out   std_logic;                                        -- local_init_done
	local_cal_success          : out   std_logic;                                        -- local_cal_success
	local_cal_fail             : out   std_logic;                                        -- local_cal_fail
	oct_rzqin                  : in    std_logic                     := 'X';             -- rzqin
	pll_mem_clk                : out   std_logic;                                        -- pll_mem_clk
	pll_write_clk              : out   std_logic;                                        -- pll_write_clk
	pll_locked                 : out   std_logic;                                        -- pll_locked
	pll_write_clk_pre_phy_clk  : out   std_logic;                                        -- pll_write_clk_pre_phy_clk
	pll_addr_cmd_clk           : out   std_logic;                                        -- pll_addr_cmd_clk
	pll_avl_clk                : out   std_logic;                                        -- pll_avl_clk
	pll_config_clk             : out   std_logic;                                        -- pll_config_clk
	pll_mem_phy_clk            : out   std_logic;                                        -- pll_mem_phy_clk
	afi_phy_clk                : out   std_logic;                                        -- afi_phy_clk
	pll_avl_phy_clk            : out   std_logic                                         -- pll_avl_phy_clk
	);
end component LPDDR2;

begin

clk160 <= (locked) and (pll_clk);

ALTCLK_inst : ALTCLK
port map(
	inclk  => clk125,
	outclk => outclk_0
	);

PLL_inst : PLL
port map(
	refclk   => outclk_0,
	rst      => '0',
	outclk_0 => pll_clk,
	outclk_1 => stp_clk,
	locked   => locked
	);

Rx_inst : Rx
generic map(
	CLKF		 => CLKF,
	UARTF		 => UARTF
	)
port map(
	clk		 => clk160,
	rx_line	 => Uart_rx,
	data	 	 => rx_data,
	new_data  => rx_new_data,
	busy 		 => open
	);

Tx_inst : Tx
generic map(
	CLKF		 	=> CLKF,
	UARTF		 	=> UARTF
	)
port map(
	clk 			=> clk160,
	new_data		=> tx_new_data,
	data	   	=> tx_data,
	tx_line  	=> Uart_tx,
	busy			=> open
	);

Pulse_gen_st_sdram : Pulse_gen
port map(
	Clk	=> clk160,
	Key	=> sdram_st_bt,
	Align => store_sdram
	);

Pulse_gen_rd_sdram : Pulse_gen
port map(
	Clk	=> clk160,
	Key	=> sdram_rd_bt,
	Align => read_sdram
	);

LPDDR2_inst : LPDDR2
port map(
	pll_ref_clk                => clk125,                                              -- clk
	global_reset_n             => reset_n,                                             -- reset_n
	soft_reset_n               => reset_n,                                             -- reset_n
	afi_clk                    => open,                                                -- clk
	afi_half_clk               => open,                                                -- clk
	afi_reset_n                => open,                                                -- reset_n
	afi_reset_export_n         => open,                                                -- reset_n
	mem_ca                     => mem_ca,                                              -- mem_ca
	mem_ck                     => mem_ck,                                              -- mem_ck
	mem_ck_n                   => mem_ck_n,                                            -- mem_ck_n
	mem_cke                    => mem_cke,                                             -- mem_cke
	mem_cs_n                   => mem_cs_n,                                            -- mem_cs_n
	mem_dm                     => mem_dm,                                              -- mem_dm
	mem_dq                     => mem_dq,                                              -- mem_dq
	mem_dqs                    => mem_dqs,                                             -- mem_dqs
	mem_dqs_n                  => mem_dqs_n,                                           -- mem_dqs_n
	avl_ready_0                => avl_ready_0,                                         -- waitrequest_n
	avl_burstbegin_0           => avl_write_req_0,                                     -- beginbursttransfer
	avl_addr_0                 => avl_addr_0,                                          -- address
	avl_rdata_valid_0          => avl_rdata_valid_0,                                   -- readdatavalid
	avl_rdata_0                => avl_rdata_0,                                         -- readdata
	avl_wdata_0                => avl_wdata_0,                                         -- writedata
	avl_be_0                   => avl_be_0,                                            -- byteenable
	avl_read_req_0             => avl_read_req_0,                                      -- read
	avl_write_req_0            => avl_write_req_0,                                     -- write
	avl_size_0                 => avl_size_0,                                          -- burstcount
	mp_cmd_clk_0_clk           => clk160,                                              -- clk
	mp_cmd_reset_n_0_reset_n   => reset_n,                                             -- reset_n
	mp_rfifo_clk_0_clk         => clk160,                                              -- clk
	mp_rfifo_reset_n_0_reset_n => reset_n,                                             -- reset_n
	mp_wfifo_clk_0_clk         => clk160,                                              -- clk
	mp_wfifo_reset_n_0_reset_n => reset_n,                                             -- reset_n
	local_init_done            => local_init_done,                                     -- local_init_done
	local_cal_success          => local_cal_success,                                   -- local_cal_success
	local_cal_fail             => local_cal_fail,                                      -- local_cal_fail
	oct_rzqin                  => oct_rzqin,                                           -- rzqin
	pll_mem_clk                => open,                                                -- pll_mem_clk
	pll_write_clk              => open,                                                -- pll_write_clk
	pll_locked                 => open,                                                -- pll_locked
	pll_write_clk_pre_phy_clk  => open,                                                -- pll_write_clk_pre_phy_clk
	pll_addr_cmd_clk           => open,                                                -- pll_addr_cmd_clk
	pll_avl_clk                => open,                                                -- pll_avl_clk
	pll_config_clk             => open,                                                -- pll_config_clk
	pll_mem_phy_clk            => open,                                                -- pll_mem_phy_clk
	afi_phy_clk                => open,                                                -- afi_phy_clk
	pll_avl_phy_clk            => open                                                 -- pll_avl_phy_clk
	);

process(reset_n, clk160)
begin
	if (reset_n = '0') then

		tx_new_data			<= '0';
		tx_data				<= (others => '0');
		avl_addr_0			<= (others => '0');
		avl_wdata_0			<= (others => '0');
		avl_be_0				<= (others => '0');
		avl_read_req_0		<= '0';
		avl_write_req_0	<= '0';
		sdram_read_addr	<= (others => '0');
		sdram_write_addr	<= (others => '0');
		read_st				<= idle;
		sdram_read_full	<= '0';
		sdram_write_full	<= '0';
		sdram_fl_led		<= '0';
		
	elsif rising_edge(clk160) then
		sdram_fl_led	 <= (sdram_write_full) or (sdram_read_full);
		avl_read_req_0  <= read_sdram;
		avl_write_req_0 <= store_sdram;
		avl_be_0			 <= (others => '1');
		
		if (sdram_write_addr = sdram_full_addr) then
			sdram_write_full <= '1';
		else
			sdram_write_full <= '0';
		end if;
		
		if (sdram_read_addr = sdram_full_addr) then
			sdram_read_full <= '1';
		else
			sdram_read_full <= '0';
		end if;
		
		if (sdram_write_full <= '0') and (rx_new_data = '1') and (avl_ready_0 = '1') then	--write
			avl_wdata_0(31 downto 0)		<= (others => '0');
			avl_wdata_0(7 downto 0)			<= rx_data;
			avl_addr_0							<= sdram_write_addr;
			sdram_write_addr					<= std_logic_vector(unsigned(sdram_write_addr) + 1);
			LED_uart <= rx_data;
		end if;
		
		if (sdram_read_full <= '0') and (read_sdram = '1') and (avl_ready_0 = '1') then		--read
			avl_addr_0							<= sdram_read_addr;
			sdram_read_addr					<= std_logic_vector(unsigned(sdram_read_addr) + 1);
			read_st								<= busy;
		end if;
		
		if (read_st = busy) then
			if (avl_rdata_valid_0 = '1') and (avl_ready_0 = '1') then
				tx_data							<= avl_rdata_0(7 downto 0);
				LED_uart							<= avl_rdata_0(7 downto 0);
				tx_new_data						<= '1';
				read_st							<= idle;
			end if;
		end if;
		
		if (read_st = idle) then
			tx_new_data						<= '0';
		end if;
		
	end if;
end process;

end architecture logic;