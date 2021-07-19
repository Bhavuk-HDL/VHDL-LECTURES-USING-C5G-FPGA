--Library
library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.numeric_std.all;

--Entity
entity top is
port(
		--Clock
		CLOCK_50_B5B		: in std_logic;
		CLOCK_50_B6A		: in std_logic;
		--Reset
		CPU_RESET_n			: in std_logic;
		--Status Leds
		LEDR				: out std_logic_vector(9 downto 0);
		--LEDG				: out std_logic_vector(7 downto 0);
		--Keys and Switches
		KEY					: in std_logic_vector(4 downto 0);
		SW					: in std_logic_vector(9 downto 0);
		--Memory ports
		mem_ca				:	out std_logic_vector(9 downto 0);
		mem_ck				:	out std_logic_vector(0 downto 0);
		mem_ck_n				:	out std_logic_vector(0 downto 0);
		mem_cke				:	out std_logic_vector(0 downto 0);
		mem_cs_n				:	out std_logic_vector(0 downto 0);
		mem_dm				:	out std_logic_vector(3 downto 0);
		mem_dq				:	inout std_logic_vector(31 downto 0);
		mem_dqs				:	inout std_logic_vector(3 downto 0);
		mem_dqs_n			:	inout std_logic_vector(3 downto 0);
		oct_rzqin			:	in std_logic	
	);
end top;

--Architecture
architecture logic of top is

constant ASSERT_L		: std_logic := '0';
constant DEASSERT_L	: std_logic := '1';
constant ASSERT_H		: std_logic := '1';
constant DEASSERT_H	: std_logic := '0';

-- Interconnects Declaration
--SDRAM
constant SDRAM_DATA_WIDTH	: positive := 32;
constant SDRAM_ADDR_WIDTH	: positive := 27;
constant SDRAM_MEM_DEPTH	: std_logic_vector((SDRAM_ADDR_WIDTH - 1) downto 0) := "100000000000000000000000000";
constant SDRAM_BE			: std_logic_vector(3 downto 0) := "0111";
constant SDRAM_BASE_ADDR	: std_logic_vector((SDRAM_ADDR_WIDTH - 1) downto 0) := "000000000000000000000000010";

signal fb_data_in		: std_logic_vector(31 downto 0) register;
signal fb_data_out		: std_logic_vector(31 downto 0);
signal wr_data_2		: std_logic_vector(31 downto 0);
signal wr_data_3		: std_logic_vector(31 downto 0);
signal rd_data_0		: std_logic_vector(31 downto 0);
signal rd_data_1		: std_logic_vector(31 downto 0);
signal rd_data_2		: std_logic_vector(31 downto 0);
signal rd_data_3		: std_logic_vector(31 downto 0);
signal av1_write_req_0	: std_logic;
signal av1_read_req_0	: std_logic;
signal av1_write_req_1	: std_logic;
signal av1_read_req_1	: std_logic;
signal av1_write_req_2	: std_logic;
signal av1_read_req_2	: std_logic;
signal av1_write_req_3	: std_logic;
signal av1_read_req_3	: std_logic;
signal rd_data_valid_0	: std_logic;
signal rd_data_valid_1	: std_logic;
signal rd_data_valid_2	: std_logic;
signal rd_data_valid_3	: std_logic;
signal ram_rdy			: std_logic;
signal av1_ready_0		: std_logic;
signal av1_ready_1		: std_logic;
signal av1_ready_2		: std_logic;
signal av1_ready_3		: std_logic;
signal av1_addr_0		: std_logic_vector(26 downto 0);
signal av1_addr_1		: std_logic_vector(26 downto 0);
signal av1_addr_2		: std_logic_vector(26 downto 0);
signal av1_addr_3		: std_logic_vector(26 downto 0);

signal full_0			: std_logic;
signal full_1			: std_logic;
signal rd_done_0		: std_logic;
signal rd_done_1		: std_logic;
signal wr_en_0			: std_logic;
signal wr_en_1			: std_logic;
signal rd_en_0			: std_logic;
signal rd_en_1			: std_logic;
--PLL
signal clk_50_4m_locked	: std_logic;
signal clk_50_4m		: std_logic;
signal pll_locked		: std_logic;
--General
signal reset			: std_logic;

--Component Declaration

component ram_init
	generic(
				constant DATA_WIDTH	: positive;
				constant ADDR_WIDTH	: positive;
				constant MEM_DEPTH	: std_logic_vector(26 downto 0);
				constant BE				: std_logic_vector(3 downto 0)
			 );
	port	(
				wr_data_0	:	in std_logic_vector((DATA_WIDTH - 1) downto 0);
				wr_data_1	:	in std_logic_vector((DATA_WIDTH - 1) downto 0) := (others => 'X');
				wr_data_2	:	in std_logic_vector((DATA_WIDTH - 1) downto 0) := (others => 'X');
				wr_data_3	:	in std_logic_vector((DATA_WIDTH - 1) downto 0) := (others => 'X');
				
				clk_50m		:	in std_logic;
				clk			:	in std_logic;
				reset			:	in std_logic;
				
				av1_write_req_0	:	in std_logic;
				av1_read_req_0		:	in std_logic;
				av1_write_req_1	:	in std_logic := 'X';
				av1_read_req_1		:	in std_logic := 'X';
				av1_write_req_2	:	in std_logic := 'X';
				av1_read_req_2		:	in std_logic := 'X';
				av1_write_req_3	:	in std_logic := 'X';
				av1_read_req_3		:	in std_logic := 'X';
				
				rd_data_valid_0	:	out std_logic;
				rd_data_valid_1	:	out std_logic := 'X';
				rd_data_valid_2	:	out std_logic := 'X';
				rd_data_valid_3	:	out std_logic := 'X';
				
				ram_rdy				:	out std_logic;
				
				av1_ready_0_fl		:	out std_logic;
				av1_ready_1_fl		:	out std_logic := 'X';
				av1_ready_2_fl		:	out std_logic := 'X';
				av1_ready_3_fl		:	out std_logic := 'X';
				
				av1_addr_0			:	in std_logic_vector((ADDR_WIDTH - 1) downto 0);
				av1_addr_1			:	in std_logic_vector((ADDR_WIDTH - 1) downto 0) := (others => 'X');
				av1_addr_2			:	in std_logic_vector((ADDR_WIDTH - 1) downto 0) := (others => 'X');
				av1_addr_3			:	in std_logic_vector((ADDR_WIDTH - 1) downto 0) := (others => 'X');
				
				rd_data_0			:	out std_logic_vector((DATA_WIDTH - 1) downto 0);
				rd_data_1			:	out std_logic_vector((DATA_WIDTH - 1) downto 0) := (others => 'X');
				rd_data_2			:	out std_logic_vector((DATA_WIDTH - 1) downto 0) := (others => 'X');
				rd_data_3			:	out std_logic_vector((DATA_WIDTH - 1) downto 0) := (others => 'X');
				
				mem_ca				:	out std_logic_vector(9 downto 0);
				mem_ck				:	out std_logic_vector(0 downto 0);
				mem_ck_n				:	out std_logic_vector(0 downto 0);
				mem_cke				:	out std_logic_vector(0 downto 0);
				mem_cs_n				:	out std_logic_vector(0 downto 0);
				mem_dm				:	out std_logic_vector(3 downto 0);
				mem_dq				:	inout std_logic_vector(31 downto 0);
				mem_dqs				:	inout std_logic_vector(3 downto 0);
				mem_dqs_n			:	inout std_logic_vector(3 downto 0);
				oct_rzqin			:	in std_logic
			);
end component ram_init;

component mem_op is
	generic(
				DATA_WIDTH	: positive;
				ADDR_WIDTH	: positive;
				MEM_DEPTH	: std_logic_vector((SDRAM_ADDR_WIDTH - 1) downto 0);
				BASE_ADDR	: std_logic_vector((SDRAM_ADDR_WIDTH - 1) downto 0)
			);
	port	(
				clk			: in std_logic;
				reset		: in std_logic;
				
				wr_en		: in std_logic;	--KEY[0]
				rd_en		: in std_logic; --KEY[1]
				addr_lat	: in std_logic; --KEY[2]
				data_lat	: in std_logic; --KEY[3]
				
				ram_rdy		: in std_logic;
				av1_ready	: in std_logic;
				
				read_data_valid	: in std_logic;
				
				av1_write_req	: out std_logic;
				av1_read_req	: out std_logic;
				
				full		: out std_logic;
				rd_done		: out std_logic;
				
				av1_addr	: out std_logic_vector((ADDR_WIDTH - 1) downto 0);
				wr_data		: out std_logic_vector((DATA_WIDTH - 1) downto 0);
				rd_data		: in std_logic_vector((DATA_WIDTH - 1) downto 0);
				
				SW			: in std_logic_vector(9 downto 0);
				
				LEDR		: out std_logic_vector(9 downto 0)
				--LEDG		: out std_logic_vector(7 downto 0);
			
			);
end component mem_op;

component pll is
	port (
		refclk   : in  std_logic := 'X'; -- clk
		rst      : in  std_logic := 'X'; -- reset
		outclk_0 : out std_logic;        -- clk
		locked   : out std_logic         -- export
	);
end component pll;

begin
reset <= KEY(4);
clk_50_4m_locked <= clk_50_4m;
--IP Instantiations
pll_clk	:	pll
	port map(
		refclk   => CLOCK_50_B6A, -- clk
		rst      => (not reset), -- reset
		outclk_0 => clk_50_4m,        -- clk
		locked   => pll_locked        -- export
	);

ram_init_inst	:	ram_init
	generic map(
				DATA_WIDTH	=> SDRAM_DATA_WIDTH,
				ADDR_WIDTH	=> SDRAM_ADDR_WIDTH,
				MEM_DEPTH	=> SDRAM_MEM_DEPTH,
				BE			=> SDRAM_BE
			 )
	port map(
				wr_data_0	=> fb_data_in,
				wr_data_1	=> open,
				wr_data_2	=> open,
				wr_data_3	=> open,
				
				clk_50m		=> CLOCK_50_B5B,
				clk			=> clk_50_4m_locked,
				reset		=> reset,
				
				av1_write_req_0	=> av1_write_req_0,
				av1_read_req_0	=> av1_read_req_0,
				av1_write_req_1	=> open,
				av1_read_req_1	=> open,
				av1_write_req_2	=> open,
				av1_read_req_2	=> open,
				av1_write_req_3	=> open,
				av1_read_req_3	=> open,
				
				rd_data_valid_0	=> rd_data_valid_0,
				rd_data_valid_1	=> open,
				rd_data_valid_2	=> open,
				rd_data_valid_3	=> open,
				
				ram_rdy				=> ram_rdy,
				
				av1_ready_0_fl		=> av1_ready_0,
				av1_ready_1_fl		=> open,
				av1_ready_2_fl		=> open,
				av1_ready_3_fl		=> open,
				
				av1_addr_0			=> av1_addr_0,
				av1_addr_1			=> open,
				av1_addr_2			=> open,
				av1_addr_3			=> open,
				
				rd_data_0			=> rd_data_0,
				rd_data_1			=> open,
				rd_data_2			=> open,
				rd_data_3			=> open,
				
				mem_ca				=> mem_ca,
				mem_ck				=> mem_ck,
				mem_ck_n			=> mem_ck_n,
				mem_cke				=> mem_cke,
				mem_cs_n			=> mem_cs_n,
				mem_dm				=> mem_dm,
				mem_dq				=> mem_dq,
				mem_dqs				=> mem_dqs,
				mem_dqs_n			=> mem_dqs_n,
				oct_rzqin			=> oct_rzqin
			);


mem_op_inst_0 : mem_op
	generic map(
				DATA_WIDTH	=> SDRAM_DATA_WIDTH,
				ADDR_WIDTH	=> SDRAM_ADDR_WIDTH,
				MEM_DEPTH	=> SDRAM_MEM_DEPTH,
				BASE_ADDR	=> SDRAM_BASE_ADDR
			)
	port map(
				clk			=> clk_50_4m_locked,
				reset		=> reset,
				
				wr_en		=> KEY(0), --KEY[0]
				rd_en		=> KEY(1), --KEY[1]
				addr_lat	=> KEY(2), --KEY[2]
				data_lat	=> KEY(3), --KEY[3]
				
				ram_rdy		=> ram_rdy,
				av1_ready	=> av1_ready_0,
				
				read_data_valid	=> rd_data_valid_0,
				
				av1_write_req	=> av1_write_req_0,
				av1_read_req	=> av1_read_req_0,
				
				full		=> full_0,
				rd_done		=> rd_done_0,
				
				av1_addr	=> av1_addr_0,
				wr_data		=> fb_data_in,
				rd_data		=> rd_data_0,
				
				SW			=> SW,
				
				LEDR		=> LEDR
				--LEDG		=> LEDG
			
			);

end logic;