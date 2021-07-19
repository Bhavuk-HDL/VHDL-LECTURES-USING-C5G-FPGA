--Library
library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.numeric_std.all;

--Entity
entity ram_init is
	generic(
				DATA_WIDTH	: positive := 32;
				ADDR_WIDTH	: positive := 27;
				MEM_DEPTH	: std_logic_vector(26 downto 0) := "100000000000000000000000000";
				BE				: std_logic_vector(3 downto 0) := "0111"
			 );
	port	(
				wr_data_0	:	in std_logic_vector((DATA_WIDTH - 1) downto 0);
				wr_data_1	:	in std_logic_vector((DATA_WIDTH - 1) downto 0);
				wr_data_2	:	in std_logic_vector((DATA_WIDTH - 1) downto 0);
				wr_data_3	:	in std_logic_vector((DATA_WIDTH - 1) downto 0);
				
				clk_50m		:	in std_logic;
				clk			:	in std_logic;
				reset			:	in std_logic;
				
				av1_write_req_0	:	in std_logic;
				av1_read_req_0		:	in std_logic;
				av1_write_req_1	:	in std_logic;
				av1_read_req_1		:	in std_logic;
				av1_write_req_2	:	in std_logic;
				av1_read_req_2		:	in std_logic;
				av1_write_req_3	:	in std_logic;
				av1_read_req_3		:	in std_logic;
				
				rd_data_valid_0	:	out std_logic;
				rd_data_valid_1	:	out std_logic;
				rd_data_valid_2	:	out std_logic;
				rd_data_valid_3	:	out std_logic;
				
				ram_rdy				:	out std_logic;
				
				av1_ready_0_fl		:	out std_logic;
				av1_ready_1_fl		:	out std_logic;
				av1_ready_2_fl		:	out std_logic;
				av1_ready_3_fl		:	out std_logic;
				
				av1_addr_0			:	in std_logic_vector((ADDR_WIDTH - 1) downto 0);
				av1_addr_1			:	in std_logic_vector((ADDR_WIDTH - 1) downto 0);
				av1_addr_2			:	in std_logic_vector((ADDR_WIDTH - 1) downto 0);
				av1_addr_3			:	in std_logic_vector((ADDR_WIDTH - 1) downto 0);
				
				rd_data_0			:	out std_logic_vector((DATA_WIDTH - 1) downto 0);
				rd_data_1			:	out std_logic_vector((DATA_WIDTH - 1) downto 0);
				rd_data_2			:	out std_logic_vector((DATA_WIDTH - 1) downto 0);
				rd_data_3			:	out std_logic_vector((DATA_WIDTH - 1) downto 0);
				
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
end ram_init;

--Architecture
architecture logic of ram_init is

constant ASSERT_L		: std_logic := '0';
constant DEASSERT_L	: std_logic := '1';
constant ASSERT_H		: std_logic := '1';
constant DEASSERT_H	: std_logic := '0';

--Declarations for Hard Memory Controller IP
signal pll_locked_ddr			: std_logic;
signal local_cal_success_fl	: std_logic register;

signal av1_burstbegin_0			: std_logic register;
signal av1_ready_0				: std_logic;
signal av1_be_0					: std_logic_vector(3 downto 0);
signal av1_rdata_valid_0		: std_logic;
signal av1_size_0					: std_logic_vector(2 downto 0) register;

signal av1_burstbegin_1			: std_logic register;
signal av1_ready_1				: std_logic;
signal av1_be_1					: std_logic_vector(3 downto 0);
signal av1_rdata_valid_1		: std_logic;
signal av1_size_1					: std_logic_vector(2 downto 0) register;

signal av1_burstbegin_2			: std_logic register;
signal av1_ready_2				: std_logic;
signal av1_be_2					: std_logic_vector(3 downto 0);
signal av1_rdata_valid_2		: std_logic;
signal av1_size_2					: std_logic_vector(2 downto 0) register;

signal av1_burstbegin_3			: std_logic register;
signal av1_ready_3				: std_logic;
signal av1_be_3					: std_logic_vector(3 downto 0);
signal av1_rdata_valid_3		: std_logic;
signal av1_size_3					: std_logic_vector(2 downto 0) register;

signal rst_controller_reset_out_reset		: std_logic;
signal pll0_reset_out_reset					: std_logic;
signal rst_controller_001_reset_out_reset : std_logic;
signal rst_controller_002_reset_out_reset : std_logic;
signal rst_controller_003_reset_out_reset : std_logic;
signal rst_controller_004_reset_out_reset : std_logic;
signal rst_controller_005_reset_out_reset : std_logic;
signal rst_controller_006_reset_out_reset : std_logic;
signal rst_controller_007_reset_out_reset : std_logic;
signal rst_controller_008_reset_out_reset : std_logic;
signal rst_controller_009_reset_out_reset : std_logic;
signal rst_controller_010_reset_out_reset : std_logic;
signal rst_controller_011_reset_out_reset : std_logic;

signal local_cal_fail	: std_logic;
signal local_cal_success: std_logic;
signal local_init_done	: std_logic;

signal global_reset_n	: std_logic register;
signal soft_reset_n		: std_logic register;

type states is (INIT, IDLE);
signal curr_state : states := INIT;

--Component Declaration

component LPDDR2 is
	port (
		pll_ref_clk                : in    std_logic                     := 'X';             -- clk
		global_reset_n             : in    std_logic                     := 'X';             -- reset_n
		soft_reset_n               : in    std_logic                     := 'X';             -- reset_n
		afi_clk                    : out   std_logic;                                        -- clk
		afi_half_clk               : out   std_logic;                                        -- clk
		afi_reset_n                : out   std_logic;                                        -- reset_n
		afi_reset_export_n         : out   std_logic;                                        -- reset_n
		seq_debug_clk              : in    std_logic                     := 'X';             -- clk
		seq_debug_reset_n          : in    std_logic                     := 'X';             -- reset_n
		mem_ca                     : out   std_logic_vector(9 downto 0);                     -- mem_ca
		mem_ck                     : out   std_logic_vector(0 downto 0);	                   -- mem_ck
		mem_ck_n                   : out   std_logic_vector(0 downto 0);	                   -- mem_ck_n
		mem_cke                    : out   std_logic_vector(0 downto 0); 	                   -- mem_cke
		mem_cs_n                   : out   std_logic_vector(0 downto 0);		                -- mem_cs_n
		mem_dm                     : out   std_logic_vector(3 downto 0);                     -- mem_dm
		mem_dq                     : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
		mem_dqs                    : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
		mem_dqs_n                  : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
		avl_ready_0                : out   std_logic;                                        -- waitrequest_n
		avl_burstbegin_0           : in    std_logic                     := 'X';             -- beginbursttransfer
		avl_addr_0                 : in    std_logic_vector(26 downto 0) := (others => 'X'); -- address
		avl_rdata_valid_0          : out   std_logic;                                        -- readdatavalid
		avl_rdata_0                : out   std_logic_vector(31 downto 0);                    -- readdata
		avl_wdata_0                : in    std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
		avl_be_0                   : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
		avl_read_req_0             : in    std_logic                     := 'X';             -- read
		avl_write_req_0            : in    std_logic                     := 'X';             -- write
		avl_size_0                 : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- burstcount
		avl_ready_1                : out   std_logic;                                        -- waitrequest_n
		avl_burstbegin_1           : in    std_logic                     := 'X';             -- beginbursttransfer
		avl_addr_1                 : in    std_logic_vector(26 downto 0) := (others => 'X'); -- address
		avl_rdata_valid_1          : out   std_logic;                                        -- readdatavalid
		avl_rdata_1                : out   std_logic_vector(31 downto 0);                    -- readdata
		avl_wdata_1                : in    std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
		avl_be_1                   : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
		avl_read_req_1             : in    std_logic                     := 'X';             -- read
		avl_write_req_1            : in    std_logic                     := 'X';             -- write
		avl_size_1                 : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- burstcount
		avl_ready_2                : out   std_logic;                                        -- waitrequest_n
		avl_burstbegin_2           : in    std_logic                     := 'X';             -- beginbursttransfer
		avl_addr_2                 : in    std_logic_vector(26 downto 0) := (others => 'X'); -- address
		avl_rdata_valid_2          : out   std_logic;                                        -- readdatavalid
		avl_rdata_2                : out   std_logic_vector(31 downto 0);                    -- readdata
		avl_wdata_2                : in    std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
		avl_be_2                   : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
		avl_read_req_2             : in    std_logic                     := 'X';             -- read
		avl_write_req_2            : in    std_logic                     := 'X';             -- write
		avl_size_2                 : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- burstcount
		avl_ready_3                : out   std_logic;                                        -- waitrequest_n
		avl_burstbegin_3           : in    std_logic                     := 'X';             -- beginbursttransfer
		avl_addr_3                 : in    std_logic_vector(26 downto 0) := (others => 'X'); -- address
		avl_rdata_valid_3          : out   std_logic;                                        -- readdatavalid
		avl_rdata_3                : out   std_logic_vector(31 downto 0);                    -- readdata
		avl_wdata_3                : in    std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
		avl_be_3                   : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
		avl_read_req_3             : in    std_logic                     := 'X';             -- read
		avl_write_req_3            : in    std_logic                     := 'X';             -- write
		avl_size_3                 : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- burstcount
		mp_cmd_clk_0_clk           : in    std_logic                     := 'X';             -- clk
		mp_cmd_reset_n_0_reset_n   : in    std_logic                     := 'X';             -- reset_n
		mp_cmd_clk_1_clk           : in    std_logic                     := 'X';             -- clk
		mp_cmd_reset_n_1_reset_n   : in    std_logic                     := 'X';             -- reset_n
		mp_cmd_clk_2_clk           : in    std_logic                     := 'X';             -- clk
		mp_cmd_reset_n_2_reset_n   : in    std_logic                     := 'X';             -- reset_n
		mp_cmd_clk_3_clk           : in    std_logic                     := 'X';             -- clk
		mp_cmd_reset_n_3_reset_n   : in    std_logic                     := 'X';             -- reset_n
		mp_rfifo_clk_0_clk         : in    std_logic                     := 'X';             -- clk
		mp_rfifo_reset_n_0_reset_n : in    std_logic                     := 'X';             -- reset_n
		mp_wfifo_clk_0_clk         : in    std_logic                     := 'X';             -- clk
		mp_wfifo_reset_n_0_reset_n : in    std_logic                     := 'X';             -- reset_n
		mp_rfifo_clk_1_clk         : in    std_logic                     := 'X';             -- clk
		mp_rfifo_reset_n_1_reset_n : in    std_logic                     := 'X';             -- reset_n
		mp_wfifo_clk_1_clk         : in    std_logic                     := 'X';             -- clk
		mp_wfifo_reset_n_1_reset_n : in    std_logic                     := 'X';             -- reset_n
		mp_rfifo_clk_2_clk         : in    std_logic                     := 'X';             -- clk
		mp_rfifo_reset_n_2_reset_n : in    std_logic                     := 'X';             -- reset_n
		mp_wfifo_clk_2_clk         : in    std_logic                     := 'X';             -- clk
		mp_wfifo_reset_n_2_reset_n : in    std_logic                     := 'X';             -- reset_n
		mp_rfifo_clk_3_clk         : in    std_logic                     := 'X';             -- clk
		mp_rfifo_reset_n_3_reset_n : in    std_logic                     := 'X';             -- reset_n
		mp_wfifo_clk_3_clk         : in    std_logic                     := 'X';             -- clk
		mp_wfifo_reset_n_3_reset_n : in    std_logic                     := 'X';             -- reset_n
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
		pll_avl_phy_clk            : out   std_logic;                                        -- pll_avl_phy_clk
		seq_debug_addr             : in    std_logic_vector(19 downto 0) := (others => 'X'); -- address
		seq_debug_read_req         : in    std_logic                     := 'X';             -- read
		seq_debug_rdata            : out   std_logic_vector(31 downto 0);                    -- readdata
		seq_debug_write_req        : in    std_logic                     := 'X';             -- write
		seq_debug_wdata            : in    std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
		seq_debug_waitrequest      : out   std_logic;                                        -- waitrequest
		seq_debug_be               : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
		seq_debug_rdata_valid      : out   std_logic                                         -- readdatavalid
	);
end component LPDDR2;

component altera_reset_controller 
	generic(
		constant NUM_RESET_INPUTS       		: integer := 2;
		constant USE_RESET_REQUEST_IN0  		: integer := 0;
		constant USE_RESET_REQUEST_IN1  		: integer := 0;
		constant USE_RESET_REQUEST_IN2  		: integer := 0;
		constant USE_RESET_REQUEST_IN3  		: integer := 0;
		constant USE_RESET_REQUEST_IN4  		: integer := 0;
		constant USE_RESET_REQUEST_IN5  		: integer := 0;
		constant USE_RESET_REQUEST_IN6  		: integer := 0;
		constant USE_RESET_REQUEST_IN7  		: integer := 0;
		constant USE_RESET_REQUEST_IN8  		: integer := 0;
		constant USE_RESET_REQUEST_IN9  		: integer := 0;
		constant USE_RESET_REQUEST_IN10 		: integer := 0;
		constant USE_RESET_REQUEST_IN11 		: integer := 0;
		constant USE_RESET_REQUEST_IN12 		: integer := 0;
		constant USE_RESET_REQUEST_IN13 		: integer := 0;
		constant USE_RESET_REQUEST_IN14 		: integer := 0;
		constant USE_RESET_REQUEST_IN15 		: integer := 0;
		constant OUTPUT_RESET_SYNC_EDGES		: string(4 downto 1) := "none";
		constant SYNC_DEPTH             		: integer := 2;
		constant RESET_REQUEST_PRESENT  		: integer := 0;
		constant RESET_REQ_WAIT_TIME    		: integer := 1;
		constant MIN_RST_ASSERTION_TIME 		: integer := 3;
		constant RESET_REQ_EARLY_DSRT_TIME  : integer := 1;
		constant ADAPT_RESET_REQUEST        : integer := 0
	);  
	port(
		 reset_in0			: in std_logic;
		 reset_in1			: in std_logic;
		 reset_in2			: in std_logic;
		 reset_in3			: in std_logic;
		 reset_in4			: in std_logic;
		 reset_in5			: in std_logic;
		 reset_in6			: in std_logic;
		 reset_in7			: in std_logic;
		 reset_in8			: in std_logic;
		 reset_in9			: in std_logic;
		 reset_in10			: in std_logic;
		 reset_in11			: in std_logic;
		 reset_in12			: in std_logic;
		 reset_in13			: in std_logic;
		 reset_in14			: in std_logic;
		 reset_in15			: in std_logic;
		 reset_req_in0		: in std_logic;
		 reset_req_in1		: in std_logic;
		 reset_req_in2		: in std_logic;
		 reset_req_in3		: in std_logic;
		 reset_req_in4		: in std_logic;
		 reset_req_in5		: in std_logic;
		 reset_req_in6		: in std_logic;
		 reset_req_in7		: in std_logic;
		 reset_req_in8		: in std_logic;
		 reset_req_in9		: in std_logic;
		 reset_req_in10	: in std_logic;
		 reset_req_in11	: in std_logic;
		 reset_req_in12	: in std_logic;
		 reset_req_in13	: in std_logic;
		 reset_req_in14	: in std_logic;
		 reset_req_in15	: in std_logic;
		 clk					: in std_logic	 := 'X';
		 reset_out			: out std_logic;
		 reset_req			: out std_logic := 'X'
	);
end component altera_reset_controller;


begin

rd_data_valid_0 <= av1_rdata_valid_0;
rd_data_valid_1 <= av1_rdata_valid_1;
rd_data_valid_2 <= av1_rdata_valid_2;
rd_data_valid_3 <= av1_rdata_valid_3;

process(clk)
begin
	if rising_edge(clk) then
		local_cal_success_fl <= local_cal_success;
		
		av1_ready_0_fl <= av1_ready_0;
		av1_ready_1_fl <= av1_ready_1;
		av1_ready_2_fl <= av1_ready_2;
		av1_ready_3_fl <= av1_ready_3;
		
		if (reset = '0') then
			global_reset_n <= ASSERT_L;
			soft_reset_n <= ASSERT_L;
			curr_state <= INIT;
			
			av1_burstbegin_0 <= DEASSERT_H;
			av1_size_0 <= "001";
			
			av1_burstbegin_1 <= DEASSERT_H;
			av1_size_1 <= "001";
			
			av1_burstbegin_2 <= DEASSERT_H;
			av1_size_2 <= "001";
			
			av1_burstbegin_3 <= DEASSERT_H;
			av1_size_3 <= "001";
			
			ram_rdy <= DEASSERT_H;
	
		else
			ram_rdy <= DEASSERT_H;
			case(curr_state) is
				when INIT =>
					global_reset_n <= DEASSERT_L;
					if (pll_locked_ddr = ASSERT_H) then
						soft_reset_n <= DEASSERT_L;
						curr_state <= INIT;
					else
						curr_state <= INIT;
					end if;
					if (local_cal_success_fl = ASSERT_H) and (soft_reset_n = DEASSERT_L) then
						curr_state <= IDLE;
					else
						curr_state <= INIT;
					end if;
				
				when IDLE =>
					curr_state <= IDLE;
					ram_rdy <= ASSERT_H;
			end case;
		end if;
	end if;
end process;

av1_be_0 <= BE;
av1_be_1 <= BE;
av1_be_2 <= BE;
av1_be_3 <= BE;

--IP Instantiations
LPDDR2_inst	:	LPDDR2
	port map (
		pll_ref_clk                => clk_50m,             --        pll_ref_clk.clk
		global_reset_n             => global_reset_n,             --       global_reset.reset_n
		soft_reset_n               => soft_reset_n,             --         soft_reset.reset_n
		afi_clk                    => open,                                        --            afi_clk.clk
		afi_half_clk               => open,                                        --       afi_half_clk.clk
		afi_reset_n                => open,                                        --          afi_reset.reset_n
		afi_reset_export_n         => open,                                        --   afi_reset_export.reset_n
		seq_debug_clk              => open,             --      seq_debug_clk.clk
		seq_debug_reset_n          => open,             -- seq_debug_reset_in.reset_n
		mem_ca                     => mem_ca,                     --             memory.mem_ca
		mem_ck                     => mem_ck,                     --                   .mem_ck
		mem_ck_n                   => mem_ck_n,                     --                   .mem_ck_n
		mem_cke                    => mem_cke,                     --                   .mem_cke
		mem_cs_n                   => mem_cs_n,                     --                   .mem_cs_n
		mem_dm                     => mem_dm,                     --                   .mem_dm
		mem_dq                     => mem_dq, --                   .mem_dq
		mem_dqs                    => mem_dqs, --                   .mem_dqs
		mem_dqs_n                  => mem_dqs_n, --                   .mem_dqs_n
		avl_ready_0                => av1_ready_0,                                        --              avl_0.waitrequest_n
		avl_burstbegin_0           => av1_burstbegin_0,             --                   .beginbursttransfer
		avl_addr_0                 => av1_addr_0, --                   .address
		avl_rdata_valid_0          => av1_rdata_valid_0,                                        --                   .readdatavalid
		avl_rdata_0                => rd_data_0,                    --                   .readdata
		avl_wdata_0                => wr_data_0, --                   .writedata
		avl_be_0                   => av1_be_0, --                   .byteenable
		avl_read_req_0             => av1_read_req_0,             --                   .read
		avl_write_req_0            => av1_write_req_0,             --                   .write
		avl_size_0                 => av1_size_0, --                   .burstcount
		avl_ready_1                => av1_ready_1,                                        --              avl_1.waitrequest_n
		avl_burstbegin_1           => av1_burstbegin_1,             --                   .beginbursttransfer
		avl_addr_1                 => av1_addr_1, --                   .address
		avl_rdata_valid_1          => av1_rdata_valid_1,                                        --                   .readdatavalid
		avl_rdata_1                => rd_data_1,                    --                   .readdata
		avl_wdata_1                => wr_data_1, --                   .writedata
		avl_be_1                   => av1_be_1, --                   .byteenable
		avl_read_req_1             => av1_read_req_1,             --                   .read
		avl_write_req_1            => av1_write_req_1,             --                   .write
		avl_size_1                 => av1_size_1, --                   .burstcount
		avl_ready_2                => av1_ready_2,                                        --              avl_2.waitrequest_n
		avl_burstbegin_2           => av1_burstbegin_2,             --                   .beginbursttransfer
		avl_addr_2                 => av1_addr_2, --                   .address
		avl_rdata_valid_2          => av1_rdata_valid_2,                                        --                   .readdatavalid
		avl_rdata_2                => rd_data_2,                    --                   .readdata
		avl_wdata_2                => wr_data_2, --                   .writedata
		avl_be_2                   => av1_be_2, --                   .byteenable
		avl_read_req_2             => av1_read_req_2,             --                   .read
		avl_write_req_2            => av1_write_req_2,             --                   .write
		avl_size_2                 => av1_size_2, --                   .burstcount
		avl_ready_3                => av1_ready_3,                                        --              avl_3.waitrequest_n
		avl_burstbegin_3           => av1_burstbegin_3,             --                   .beginbursttransfer
		avl_addr_3                 => av1_addr_3, --                   .address
		avl_rdata_valid_3          => av1_rdata_valid_3,                                        --                   .readdatavalid
		avl_rdata_3                => rd_data_3,                    --                   .readdata
		avl_wdata_3                => wr_data_3, --                   .writedata
		avl_be_3                   => av1_be_3, --                   .byteenable
		avl_read_req_3             => av1_read_req_3,             --                   .read
		avl_write_req_3            => av1_write_req_3,             --                   .write
		avl_size_3                 => av1_size_3, --                   .burstcount
		mp_cmd_clk_0_clk           => clk,             --       mp_cmd_clk_0.clk
		mp_cmd_reset_n_0_reset_n   => (not rst_controller_reset_out_reset),             --   mp_cmd_reset_n_0.reset_n
		mp_cmd_clk_1_clk           => clk,             --       mp_cmd_clk_1.clk
		mp_cmd_reset_n_1_reset_n   => (not rst_controller_001_reset_out_reset),             --   mp_cmd_reset_n_1.reset_n
		mp_cmd_clk_2_clk           => clk,             --       mp_cmd_clk_2.clk
		mp_cmd_reset_n_2_reset_n   => (not rst_controller_002_reset_out_reset),             --   mp_cmd_reset_n_2.reset_n
		mp_cmd_clk_3_clk           => clk,             --       mp_cmd_clk_3.clk
		mp_cmd_reset_n_3_reset_n   => (not rst_controller_003_reset_out_reset),             --   mp_cmd_reset_n_3.reset_n
		mp_rfifo_clk_0_clk         => clk,             --     mp_rfifo_clk_0.clk
		mp_rfifo_reset_n_0_reset_n => (not rst_controller_004_reset_out_reset),             -- mp_rfifo_reset_n_0.reset_n
		mp_wfifo_clk_0_clk         => clk,             --     mp_wfifo_clk_0.clk
		mp_wfifo_reset_n_0_reset_n => (not rst_controller_005_reset_out_reset),             -- mp_wfifo_reset_n_0.reset_n
		mp_rfifo_clk_1_clk         => clk,             --     mp_rfifo_clk_1.clk
		mp_rfifo_reset_n_1_reset_n => (not rst_controller_006_reset_out_reset),             -- mp_rfifo_reset_n_1.reset_n
		mp_wfifo_clk_1_clk         => clk,             --     mp_wfifo_clk_1.clk
		mp_wfifo_reset_n_1_reset_n => (not rst_controller_007_reset_out_reset),             -- mp_wfifo_reset_n_1.reset_n
		mp_rfifo_clk_2_clk         => clk,             --     mp_rfifo_clk_2.clk
		mp_rfifo_reset_n_2_reset_n => (not rst_controller_008_reset_out_reset),             -- mp_rfifo_reset_n_2.reset_n
		mp_wfifo_clk_2_clk         => clk,             --     mp_wfifo_clk_2.clk
		mp_wfifo_reset_n_2_reset_n => (not rst_controller_009_reset_out_reset),             -- mp_wfifo_reset_n_2.reset_n
		mp_rfifo_clk_3_clk         => clk,             --     mp_rfifo_clk_3.clk
		mp_rfifo_reset_n_3_reset_n => (not rst_controller_010_reset_out_reset),             -- mp_rfifo_reset_n_3.reset_n
		mp_wfifo_clk_3_clk         => clk,             --     mp_wfifo_clk_3.clk
		mp_wfifo_reset_n_3_reset_n => (not rst_controller_011_reset_out_reset),             -- mp_wfifo_reset_n_3.reset_n
		local_init_done            => local_init_done,                                        --             status.local_init_done
		local_cal_success          => local_cal_success,                                        --                   .local_cal_success
		local_cal_fail             => local_cal_fail,                                        --                   .local_cal_fail
		oct_rzqin                  => oct_rzqin,             --                oct.rzqin
		pll_mem_clk                => open,                                        --        pll_sharing.pll_mem_clk
		pll_write_clk              => open,                                        --                   .pll_write_clk
		pll_locked                 => pll_locked_ddr,                                        --                   .pll_locked
		pll_write_clk_pre_phy_clk  => open,                                        --                   .pll_write_clk_pre_phy_clk
		pll_addr_cmd_clk           => open,                                        --                   .pll_addr_cmd_clk
		pll_avl_clk                => open,                                        --                   .pll_avl_clk
		pll_config_clk             => open,                                        --                   .pll_config_clk
		pll_mem_phy_clk            => open,                                        --                   .pll_mem_phy_clk
		afi_phy_clk                => open,                                        --                   .afi_phy_clk
		pll_avl_phy_clk            => open,                                        --                   .pll_avl_phy_clk
		seq_debug_addr             => open, --          seq_debug.address
		seq_debug_read_req         => open,             --                   .read
		seq_debug_rdata            => open,                    --                   .readdata
		seq_debug_write_req        => open,             --                   .write
		seq_debug_wdata            => open, --                   .writedata
		seq_debug_waitrequest      => open,                                        --                   .waitrequest
		seq_debug_be               => open, --                   .byteenable
		seq_debug_rdata_valid      => open                                        --                   .readdatavalid
	);
	
	rst_controller : altera_reset_controller 
	generic map(
		NUM_RESET_INPUTS       		=> 2,
		USE_RESET_REQUEST_IN0  		=> 0,
		USE_RESET_REQUEST_IN1  		=> 0,
		USE_RESET_REQUEST_IN2  		=> 0,
		USE_RESET_REQUEST_IN3  		=> 0,
		USE_RESET_REQUEST_IN4  		=> 0,
		USE_RESET_REQUEST_IN5  		=> 0,
		USE_RESET_REQUEST_IN6  		=> 0,
		USE_RESET_REQUEST_IN7  		=> 0,
		USE_RESET_REQUEST_IN8  		=> 0,
		USE_RESET_REQUEST_IN9  		=> 0,
		USE_RESET_REQUEST_IN10 		=> 0,
		USE_RESET_REQUEST_IN11 		=> 0,
		USE_RESET_REQUEST_IN12 		=> 0,
		USE_RESET_REQUEST_IN13 		=> 0,
		USE_RESET_REQUEST_IN14 		=> 0,
		USE_RESET_REQUEST_IN15 		=> 0,
		OUTPUT_RESET_SYNC_EDGES		=> "none",
		SYNC_DEPTH             		=> 2,
		RESET_REQUEST_PRESENT  		=> 0,
		RESET_REQ_WAIT_TIME    		=> 1,
		MIN_RST_ASSERTION_TIME 		=> 3,
		RESET_REQ_EARLY_DSRT_TIME   => 1,
		ADAPT_RESET_REQUEST         => 0
	)  
	port map (
		reset_in0		=> (not global_reset_n),	-- reset_in0.reset
		reset_in1		=> (not soft_reset_n),		-- reset_in1.reset
		reset_in2		=> '0',						-- (terminated)
		reset_in3		=> '0',						-- (terminated)
		reset_in4		=> '0',						-- (terminated)
		reset_in5		=> '0',						-- (terminated)
		reset_in6		=> '0',						-- (terminated)
		reset_in7		=> '0',						-- (terminated)
		reset_in8		=> '0',						-- (terminated)
		reset_in9		=> '0',						-- (terminated)
		reset_in10		=> '0',						-- (terminated)
		reset_in11		=> '0',						-- (terminated)
		reset_in12		=> '0',						-- (terminated)
		reset_in13		=> '0',						-- (terminated)
		reset_in14		=> '0',						-- (terminated)
		reset_in15		=> '0',						-- (terminated)
		reset_req_in0	=> '0',						-- (terminated)
		reset_req_in1	=> '0',						-- (terminated)
		reset_req_in2	=> '0',						-- (terminated)
		reset_req_in3	=> '0',						-- (terminated)
		reset_req_in4	=> '0',						-- (terminated)
		reset_req_in5	=> '0',						-- (terminated)
		reset_req_in6	=> '0',						-- (terminated)
		reset_req_in7	=> '0',						-- (terminated)
		reset_req_in8	=> '0',						-- (terminated)
		reset_req_in9	=> '0',						-- (terminated)
		reset_req_in10	=> '0',						-- (terminated)
		reset_req_in11	=> '0',						-- (terminated)
		reset_req_in12	=> '0',						-- (terminated)
		reset_req_in13	=> '0',						-- (terminated)
		reset_req_in14	=> '0',						-- (terminated)
		reset_req_in15	=> '0',						-- (terminated)
		clk				=> open,					-- clk.clk
		reset_out		=> rst_controller_reset_out_reset, --reset_out.reset
		reset_req		=> open						-- (terminated)
	);
	
	rst_controller_001 : altera_reset_controller 
	generic map(
		NUM_RESET_INPUTS       		=> 2,
		USE_RESET_REQUEST_IN0  		=> 0,
		USE_RESET_REQUEST_IN1  		=> 0,
		USE_RESET_REQUEST_IN2  		=> 0,
		USE_RESET_REQUEST_IN3  		=> 0,
		USE_RESET_REQUEST_IN4  		=> 0,
		USE_RESET_REQUEST_IN5  		=> 0,
		USE_RESET_REQUEST_IN6  		=> 0,
		USE_RESET_REQUEST_IN7  		=> 0,
		USE_RESET_REQUEST_IN8  		=> 0,
		USE_RESET_REQUEST_IN9  		=> 0,
		USE_RESET_REQUEST_IN10 		=> 0,
		USE_RESET_REQUEST_IN11 		=> 0,
		USE_RESET_REQUEST_IN12 		=> 0,
		USE_RESET_REQUEST_IN13 		=> 0,
		USE_RESET_REQUEST_IN14 		=> 0,
		USE_RESET_REQUEST_IN15 		=> 0,
		OUTPUT_RESET_SYNC_EDGES		=> "none",
		SYNC_DEPTH             		=> 2,
		RESET_REQUEST_PRESENT  		=> 0,
		RESET_REQ_WAIT_TIME    		=> 1,
		MIN_RST_ASSERTION_TIME 		=> 3,
		RESET_REQ_EARLY_DSRT_TIME   => 1,
		ADAPT_RESET_REQUEST         => 0
	)  
	port map (
		reset_in0		=> (not global_reset_n),	-- reset_in0.reset
		reset_in1		=> (not soft_reset_n),		-- reset_in1.reset
		reset_in2		=> '0',						-- (terminated)
		reset_in3		=> '0',						-- (terminated)
		reset_in4		=> '0',						-- (terminated)
		reset_in5		=> '0',						-- (terminated)
		reset_in6		=> '0',						-- (terminated)
		reset_in7		=> '0',						-- (terminated)
		reset_in8		=> '0',						-- (terminated)
		reset_in9		=> '0',						-- (terminated)
		reset_in10		=> '0',						-- (terminated)
		reset_in11		=> '0',						-- (terminated)
		reset_in12		=> '0',						-- (terminated)
		reset_in13		=> '0',						-- (terminated)
		reset_in14		=> '0',						-- (terminated)
		reset_in15		=> '0',						-- (terminated)
		reset_req_in0	=> '0',						-- (terminated)
		reset_req_in1	=> '0',						-- (terminated)
		reset_req_in2	=> '0',						-- (terminated)
		reset_req_in3	=> '0',						-- (terminated)
		reset_req_in4	=> '0',						-- (terminated)
		reset_req_in5	=> '0',						-- (terminated)
		reset_req_in6	=> '0',						-- (terminated)
		reset_req_in7	=> '0',						-- (terminated)
		reset_req_in8	=> '0',						-- (terminated)
		reset_req_in9	=> '0',						-- (terminated)
		reset_req_in10	=> '0',						-- (terminated)
		reset_req_in11	=> '0',						-- (terminated)
		reset_req_in12	=> '0',						-- (terminated)
		reset_req_in13	=> '0',						-- (terminated)
		reset_req_in14	=> '0',						-- (terminated)
		reset_req_in15	=> '0',						-- (terminated)
		clk				=> open,					-- clk.clk
		reset_out		=> rst_controller_001_reset_out_reset, --reset_out.reset
		reset_req		=> open						-- (terminated)
	);
	
	rst_controller_002 : altera_reset_controller 
	generic map(
		NUM_RESET_INPUTS       		=> 2,
		USE_RESET_REQUEST_IN0  		=> 0,
		USE_RESET_REQUEST_IN1  		=> 0,
		USE_RESET_REQUEST_IN2  		=> 0,
		USE_RESET_REQUEST_IN3  		=> 0,
		USE_RESET_REQUEST_IN4  		=> 0,
		USE_RESET_REQUEST_IN5  		=> 0,
		USE_RESET_REQUEST_IN6  		=> 0,
		USE_RESET_REQUEST_IN7  		=> 0,
		USE_RESET_REQUEST_IN8  		=> 0,
		USE_RESET_REQUEST_IN9  		=> 0,
		USE_RESET_REQUEST_IN10 		=> 0,
		USE_RESET_REQUEST_IN11 		=> 0,
		USE_RESET_REQUEST_IN12 		=> 0,
		USE_RESET_REQUEST_IN13 		=> 0,
		USE_RESET_REQUEST_IN14 		=> 0,
		USE_RESET_REQUEST_IN15 		=> 0,
		OUTPUT_RESET_SYNC_EDGES		=> "none",
		SYNC_DEPTH             		=> 2,
		RESET_REQUEST_PRESENT  		=> 0,
		RESET_REQ_WAIT_TIME    		=> 1,
		MIN_RST_ASSERTION_TIME 		=> 3,
		RESET_REQ_EARLY_DSRT_TIME   => 1,
		ADAPT_RESET_REQUEST         => 0
	)  
	port map (
		reset_in0		=> (not global_reset_n),	-- reset_in0.reset
		reset_in1		=> (not soft_reset_n),		-- reset_in1.reset
		reset_in2		=> '0',						-- (terminated)
		reset_in3		=> '0',						-- (terminated)
		reset_in4		=> '0',						-- (terminated)
		reset_in5		=> '0',						-- (terminated)
		reset_in6		=> '0',						-- (terminated)
		reset_in7		=> '0',						-- (terminated)
		reset_in8		=> '0',						-- (terminated)
		reset_in9		=> '0',						-- (terminated)
		reset_in10		=> '0',						-- (terminated)
		reset_in11		=> '0',						-- (terminated)
		reset_in12		=> '0',						-- (terminated)
		reset_in13		=> '0',						-- (terminated)
		reset_in14		=> '0',						-- (terminated)
		reset_in15		=> '0',						-- (terminated)
		reset_req_in0	=> '0',						-- (terminated)
		reset_req_in1	=> '0',						-- (terminated)
		reset_req_in2	=> '0',						-- (terminated)
		reset_req_in3	=> '0',						-- (terminated)
		reset_req_in4	=> '0',						-- (terminated)
		reset_req_in5	=> '0',						-- (terminated)
		reset_req_in6	=> '0',						-- (terminated)
		reset_req_in7	=> '0',						-- (terminated)
		reset_req_in8	=> '0',						-- (terminated)
		reset_req_in9	=> '0',						-- (terminated)
		reset_req_in10	=> '0',						-- (terminated)
		reset_req_in11	=> '0',						-- (terminated)
		reset_req_in12	=> '0',						-- (terminated)
		reset_req_in13	=> '0',						-- (terminated)
		reset_req_in14	=> '0',						-- (terminated)
		reset_req_in15	=> '0',						-- (terminated)
		clk				=> open,					-- clk.clk
		reset_out		=> rst_controller_002_reset_out_reset, --reset_out.reset
		reset_req		=> open						-- (terminated)
	);
	
	rst_controller_003 : altera_reset_controller 
	generic map(
		NUM_RESET_INPUTS       		=> 2,
		USE_RESET_REQUEST_IN0  		=> 0,
		USE_RESET_REQUEST_IN1  		=> 0,
		USE_RESET_REQUEST_IN2  		=> 0,
		USE_RESET_REQUEST_IN3  		=> 0,
		USE_RESET_REQUEST_IN4  		=> 0,
		USE_RESET_REQUEST_IN5  		=> 0,
		USE_RESET_REQUEST_IN6  		=> 0,
		USE_RESET_REQUEST_IN7  		=> 0,
		USE_RESET_REQUEST_IN8  		=> 0,
		USE_RESET_REQUEST_IN9  		=> 0,
		USE_RESET_REQUEST_IN10 		=> 0,
		USE_RESET_REQUEST_IN11 		=> 0,
		USE_RESET_REQUEST_IN12 		=> 0,
		USE_RESET_REQUEST_IN13 		=> 0,
		USE_RESET_REQUEST_IN14 		=> 0,
		USE_RESET_REQUEST_IN15 		=> 0,
		OUTPUT_RESET_SYNC_EDGES		=> "none",
		SYNC_DEPTH             		=> 2,
		RESET_REQUEST_PRESENT  		=> 0,
		RESET_REQ_WAIT_TIME    		=> 1,
		MIN_RST_ASSERTION_TIME 		=> 3,
		RESET_REQ_EARLY_DSRT_TIME   => 1,
		ADAPT_RESET_REQUEST         => 0
	)  
	port map (
		reset_in0		=> (not global_reset_n),	-- reset_in0.reset
		reset_in1		=> (not soft_reset_n),		-- reset_in1.reset
		reset_in2		=> '0',						-- (terminated)
		reset_in3		=> '0',						-- (terminated)
		reset_in4		=> '0',						-- (terminated)
		reset_in5		=> '0',						-- (terminated)
		reset_in6		=> '0',						-- (terminated)
		reset_in7		=> '0',						-- (terminated)
		reset_in8		=> '0',						-- (terminated)
		reset_in9		=> '0',						-- (terminated)
		reset_in10		=> '0',						-- (terminated)
		reset_in11		=> '0',						-- (terminated)
		reset_in12		=> '0',						-- (terminated)
		reset_in13		=> '0',						-- (terminated)
		reset_in14		=> '0',						-- (terminated)
		reset_in15		=> '0',						-- (terminated)
		reset_req_in0	=> '0',						-- (terminated)
		reset_req_in1	=> '0',						-- (terminated)
		reset_req_in2	=> '0',						-- (terminated)
		reset_req_in3	=> '0',						-- (terminated)
		reset_req_in4	=> '0',						-- (terminated)
		reset_req_in5	=> '0',						-- (terminated)
		reset_req_in6	=> '0',						-- (terminated)
		reset_req_in7	=> '0',						-- (terminated)
		reset_req_in8	=> '0',						-- (terminated)
		reset_req_in9	=> '0',						-- (terminated)
		reset_req_in10	=> '0',						-- (terminated)
		reset_req_in11	=> '0',						-- (terminated)
		reset_req_in12	=> '0',						-- (terminated)
		reset_req_in13	=> '0',						-- (terminated)
		reset_req_in14	=> '0',						-- (terminated)
		reset_req_in15	=> '0',						-- (terminated)
		clk				=> open,					-- clk.clk
		reset_out		=> rst_controller_003_reset_out_reset, --reset_out.reset
		reset_req		=> open						-- (terminated)
	);
	
	rst_controller_004 : altera_reset_controller 
	generic map(
		NUM_RESET_INPUTS       		=> 2,
		USE_RESET_REQUEST_IN0  		=> 0,
		USE_RESET_REQUEST_IN1  		=> 0,
		USE_RESET_REQUEST_IN2  		=> 0,
		USE_RESET_REQUEST_IN3  		=> 0,
		USE_RESET_REQUEST_IN4  		=> 0,
		USE_RESET_REQUEST_IN5  		=> 0,
		USE_RESET_REQUEST_IN6  		=> 0,
		USE_RESET_REQUEST_IN7  		=> 0,
		USE_RESET_REQUEST_IN8  		=> 0,
		USE_RESET_REQUEST_IN9  		=> 0,
		USE_RESET_REQUEST_IN10 		=> 0,
		USE_RESET_REQUEST_IN11 		=> 0,
		USE_RESET_REQUEST_IN12 		=> 0,
		USE_RESET_REQUEST_IN13 		=> 0,
		USE_RESET_REQUEST_IN14 		=> 0,
		USE_RESET_REQUEST_IN15 		=> 0,
		OUTPUT_RESET_SYNC_EDGES		=> "none",
		SYNC_DEPTH             		=> 2,
		RESET_REQUEST_PRESENT  		=> 0,
		RESET_REQ_WAIT_TIME    		=> 1,
		MIN_RST_ASSERTION_TIME 		=> 3,
		RESET_REQ_EARLY_DSRT_TIME   => 1,
		ADAPT_RESET_REQUEST         => 0
	)  
	port map (
		reset_in0		=> (not global_reset_n),	-- reset_in0.reset
		reset_in1		=> (not soft_reset_n),		-- reset_in1.reset
		reset_in2		=> '0',						-- (terminated)
		reset_in3		=> '0',						-- (terminated)
		reset_in4		=> '0',						-- (terminated)
		reset_in5		=> '0',						-- (terminated)
		reset_in6		=> '0',						-- (terminated)
		reset_in7		=> '0',						-- (terminated)
		reset_in8		=> '0',						-- (terminated)
		reset_in9		=> '0',						-- (terminated)
		reset_in10		=> '0',						-- (terminated)
		reset_in11		=> '0',						-- (terminated)
		reset_in12		=> '0',						-- (terminated)
		reset_in13		=> '0',						-- (terminated)
		reset_in14		=> '0',						-- (terminated)
		reset_in15		=> '0',						-- (terminated)
		reset_req_in0	=> '0',						-- (terminated)
		reset_req_in1	=> '0',						-- (terminated)
		reset_req_in2	=> '0',						-- (terminated)
		reset_req_in3	=> '0',						-- (terminated)
		reset_req_in4	=> '0',						-- (terminated)
		reset_req_in5	=> '0',						-- (terminated)
		reset_req_in6	=> '0',						-- (terminated)
		reset_req_in7	=> '0',						-- (terminated)
		reset_req_in8	=> '0',						-- (terminated)
		reset_req_in9	=> '0',						-- (terminated)
		reset_req_in10	=> '0',						-- (terminated)
		reset_req_in11	=> '0',						-- (terminated)
		reset_req_in12	=> '0',						-- (terminated)
		reset_req_in13	=> '0',						-- (terminated)
		reset_req_in14	=> '0',						-- (terminated)
		reset_req_in15	=> '0',						-- (terminated)
		clk				=> open,					-- clk.clk
		reset_out		=> rst_controller_004_reset_out_reset, --reset_out.reset
		reset_req		=> open						-- (terminated)
	);
	
	rst_controller_005 : altera_reset_controller 
	generic map(
		NUM_RESET_INPUTS       		=> 2,
		USE_RESET_REQUEST_IN0  		=> 0,
		USE_RESET_REQUEST_IN1  		=> 0,
		USE_RESET_REQUEST_IN2  		=> 0,
		USE_RESET_REQUEST_IN3  		=> 0,
		USE_RESET_REQUEST_IN4  		=> 0,
		USE_RESET_REQUEST_IN5  		=> 0,
		USE_RESET_REQUEST_IN6  		=> 0,
		USE_RESET_REQUEST_IN7  		=> 0,
		USE_RESET_REQUEST_IN8  		=> 0,
		USE_RESET_REQUEST_IN9  		=> 0,
		USE_RESET_REQUEST_IN10 		=> 0,
		USE_RESET_REQUEST_IN11 		=> 0,
		USE_RESET_REQUEST_IN12 		=> 0,
		USE_RESET_REQUEST_IN13 		=> 0,
		USE_RESET_REQUEST_IN14 		=> 0,
		USE_RESET_REQUEST_IN15 		=> 0,
		OUTPUT_RESET_SYNC_EDGES		=> "none",
		SYNC_DEPTH             		=> 2,
		RESET_REQUEST_PRESENT  		=> 0,
		RESET_REQ_WAIT_TIME    		=> 1,
		MIN_RST_ASSERTION_TIME 		=> 3,
		RESET_REQ_EARLY_DSRT_TIME   => 1,
		ADAPT_RESET_REQUEST         => 0
	)  
	port map (
		reset_in0		=> (not global_reset_n),	-- reset_in0.reset
		reset_in1		=> (not soft_reset_n),		-- reset_in1.reset
		reset_in2		=> '0',						-- (terminated)
		reset_in3		=> '0',						-- (terminated)
		reset_in4		=> '0',						-- (terminated)
		reset_in5		=> '0',						-- (terminated)
		reset_in6		=> '0',						-- (terminated)
		reset_in7		=> '0',						-- (terminated)
		reset_in8		=> '0',						-- (terminated)
		reset_in9		=> '0',						-- (terminated)
		reset_in10		=> '0',						-- (terminated)
		reset_in11		=> '0',						-- (terminated)
		reset_in12		=> '0',						-- (terminated)
		reset_in13		=> '0',						-- (terminated)
		reset_in14		=> '0',						-- (terminated)
		reset_in15		=> '0',						-- (terminated)
		reset_req_in0	=> '0',						-- (terminated)
		reset_req_in1	=> '0',						-- (terminated)
		reset_req_in2	=> '0',						-- (terminated)
		reset_req_in3	=> '0',						-- (terminated)
		reset_req_in4	=> '0',						-- (terminated)
		reset_req_in5	=> '0',						-- (terminated)
		reset_req_in6	=> '0',						-- (terminated)
		reset_req_in7	=> '0',						-- (terminated)
		reset_req_in8	=> '0',						-- (terminated)
		reset_req_in9	=> '0',						-- (terminated)
		reset_req_in10	=> '0',						-- (terminated)
		reset_req_in11	=> '0',						-- (terminated)
		reset_req_in12	=> '0',						-- (terminated)
		reset_req_in13	=> '0',						-- (terminated)
		reset_req_in14	=> '0',						-- (terminated)
		reset_req_in15	=> '0',						-- (terminated)
		clk				=> open,					-- clk.clk
		reset_out		=> rst_controller_005_reset_out_reset, --reset_out.reset
		reset_req		=> open						-- (terminated)
	);
	
	rst_controller_006 : altera_reset_controller 
	generic map(
		NUM_RESET_INPUTS       		=> 2,
		USE_RESET_REQUEST_IN0  		=> 0,
		USE_RESET_REQUEST_IN1  		=> 0,
		USE_RESET_REQUEST_IN2  		=> 0,
		USE_RESET_REQUEST_IN3  		=> 0,
		USE_RESET_REQUEST_IN4  		=> 0,
		USE_RESET_REQUEST_IN5  		=> 0,
		USE_RESET_REQUEST_IN6  		=> 0,
		USE_RESET_REQUEST_IN7  		=> 0,
		USE_RESET_REQUEST_IN8  		=> 0,
		USE_RESET_REQUEST_IN9  		=> 0,
		USE_RESET_REQUEST_IN10 		=> 0,
		USE_RESET_REQUEST_IN11 		=> 0,
		USE_RESET_REQUEST_IN12 		=> 0,
		USE_RESET_REQUEST_IN13 		=> 0,
		USE_RESET_REQUEST_IN14 		=> 0,
		USE_RESET_REQUEST_IN15 		=> 0,
		OUTPUT_RESET_SYNC_EDGES		=> "none",
		SYNC_DEPTH             		=> 2,
		RESET_REQUEST_PRESENT  		=> 0,
		RESET_REQ_WAIT_TIME    		=> 1,
		MIN_RST_ASSERTION_TIME 		=> 3,
		RESET_REQ_EARLY_DSRT_TIME   => 1,
		ADAPT_RESET_REQUEST         => 0
	)  
	port map (
		reset_in0		=> (not global_reset_n),	-- reset_in0.reset
		reset_in1		=> (not soft_reset_n),		-- reset_in1.reset
		reset_in2		=> '0',						-- (terminated)
		reset_in3		=> '0',						-- (terminated)
		reset_in4		=> '0',						-- (terminated)
		reset_in5		=> '0',						-- (terminated)
		reset_in6		=> '0',						-- (terminated)
		reset_in7		=> '0',						-- (terminated)
		reset_in8		=> '0',						-- (terminated)
		reset_in9		=> '0',						-- (terminated)
		reset_in10		=> '0',						-- (terminated)
		reset_in11		=> '0',						-- (terminated)
		reset_in12		=> '0',						-- (terminated)
		reset_in13		=> '0',						-- (terminated)
		reset_in14		=> '0',						-- (terminated)
		reset_in15		=> '0',						-- (terminated)
		reset_req_in0	=> '0',						-- (terminated)
		reset_req_in1	=> '0',						-- (terminated)
		reset_req_in2	=> '0',						-- (terminated)
		reset_req_in3	=> '0',						-- (terminated)
		reset_req_in4	=> '0',						-- (terminated)
		reset_req_in5	=> '0',						-- (terminated)
		reset_req_in6	=> '0',						-- (terminated)
		reset_req_in7	=> '0',						-- (terminated)
		reset_req_in8	=> '0',						-- (terminated)
		reset_req_in9	=> '0',						-- (terminated)
		reset_req_in10	=> '0',						-- (terminated)
		reset_req_in11	=> '0',						-- (terminated)
		reset_req_in12	=> '0',						-- (terminated)
		reset_req_in13	=> '0',						-- (terminated)
		reset_req_in14	=> '0',						-- (terminated)
		reset_req_in15	=> '0',						-- (terminated)
		clk				=> open,					-- clk.clk
		reset_out		=> rst_controller_006_reset_out_reset, --reset_out.reset
		reset_req		=> open						-- (terminated)
	);
	
	rst_controller_007 : altera_reset_controller 
	generic map(
		NUM_RESET_INPUTS       		=> 2,
		USE_RESET_REQUEST_IN0  		=> 0,
		USE_RESET_REQUEST_IN1  		=> 0,
		USE_RESET_REQUEST_IN2  		=> 0,
		USE_RESET_REQUEST_IN3  		=> 0,
		USE_RESET_REQUEST_IN4  		=> 0,
		USE_RESET_REQUEST_IN5  		=> 0,
		USE_RESET_REQUEST_IN6  		=> 0,
		USE_RESET_REQUEST_IN7  		=> 0,
		USE_RESET_REQUEST_IN8  		=> 0,
		USE_RESET_REQUEST_IN9  		=> 0,
		USE_RESET_REQUEST_IN10 		=> 0,
		USE_RESET_REQUEST_IN11 		=> 0,
		USE_RESET_REQUEST_IN12 		=> 0,
		USE_RESET_REQUEST_IN13 		=> 0,
		USE_RESET_REQUEST_IN14 		=> 0,
		USE_RESET_REQUEST_IN15 		=> 0,
		OUTPUT_RESET_SYNC_EDGES		=> "none",
		SYNC_DEPTH             		=> 2,
		RESET_REQUEST_PRESENT  		=> 0,
		RESET_REQ_WAIT_TIME    		=> 1,
		MIN_RST_ASSERTION_TIME 		=> 3,
		RESET_REQ_EARLY_DSRT_TIME   => 1,
		ADAPT_RESET_REQUEST         => 0
	)  
	port map (
		reset_in0		=> (not global_reset_n),	-- reset_in0.reset
		reset_in1		=> (not soft_reset_n),		-- reset_in1.reset
		reset_in2		=> '0',						-- (terminated)
		reset_in3		=> '0',						-- (terminated)
		reset_in4		=> '0',						-- (terminated)
		reset_in5		=> '0',						-- (terminated)
		reset_in6		=> '0',						-- (terminated)
		reset_in7		=> '0',						-- (terminated)
		reset_in8		=> '0',						-- (terminated)
		reset_in9		=> '0',						-- (terminated)
		reset_in10		=> '0',						-- (terminated)
		reset_in11		=> '0',						-- (terminated)
		reset_in12		=> '0',						-- (terminated)
		reset_in13		=> '0',						-- (terminated)
		reset_in14		=> '0',						-- (terminated)
		reset_in15		=> '0',						-- (terminated)
		reset_req_in0	=> '0',						-- (terminated)
		reset_req_in1	=> '0',						-- (terminated)
		reset_req_in2	=> '0',						-- (terminated)
		reset_req_in3	=> '0',						-- (terminated)
		reset_req_in4	=> '0',						-- (terminated)
		reset_req_in5	=> '0',						-- (terminated)
		reset_req_in6	=> '0',						-- (terminated)
		reset_req_in7	=> '0',						-- (terminated)
		reset_req_in8	=> '0',						-- (terminated)
		reset_req_in9	=> '0',						-- (terminated)
		reset_req_in10	=> '0',						-- (terminated)
		reset_req_in11	=> '0',						-- (terminated)
		reset_req_in12	=> '0',						-- (terminated)
		reset_req_in13	=> '0',						-- (terminated)
		reset_req_in14	=> '0',						-- (terminated)
		reset_req_in15	=> '0',						-- (terminated)
		clk				=> open,					-- clk.clk
		reset_out		=> rst_controller_007_reset_out_reset, --reset_out.reset
		reset_req		=> open						-- (terminated)
	);
	
	rst_controller_008 : altera_reset_controller 
	generic map(
		NUM_RESET_INPUTS       		=> 2,
		USE_RESET_REQUEST_IN0  		=> 0,
		USE_RESET_REQUEST_IN1  		=> 0,
		USE_RESET_REQUEST_IN2  		=> 0,
		USE_RESET_REQUEST_IN3  		=> 0,
		USE_RESET_REQUEST_IN4  		=> 0,
		USE_RESET_REQUEST_IN5  		=> 0,
		USE_RESET_REQUEST_IN6  		=> 0,
		USE_RESET_REQUEST_IN7  		=> 0,
		USE_RESET_REQUEST_IN8  		=> 0,
		USE_RESET_REQUEST_IN9  		=> 0,
		USE_RESET_REQUEST_IN10 		=> 0,
		USE_RESET_REQUEST_IN11 		=> 0,
		USE_RESET_REQUEST_IN12 		=> 0,
		USE_RESET_REQUEST_IN13 		=> 0,
		USE_RESET_REQUEST_IN14 		=> 0,
		USE_RESET_REQUEST_IN15 		=> 0,
		OUTPUT_RESET_SYNC_EDGES		=> "none",
		SYNC_DEPTH             		=> 2,
		RESET_REQUEST_PRESENT  		=> 0,
		RESET_REQ_WAIT_TIME    		=> 1,
		MIN_RST_ASSERTION_TIME 		=> 3,
		RESET_REQ_EARLY_DSRT_TIME   => 1,
		ADAPT_RESET_REQUEST         => 0
	)  
	port map (
		reset_in0		=> (not global_reset_n),	-- reset_in0.reset
		reset_in1		=> (not soft_reset_n),		-- reset_in1.reset
		reset_in2		=> '0',						-- (terminated)
		reset_in3		=> '0',						-- (terminated)
		reset_in4		=> '0',						-- (terminated)
		reset_in5		=> '0',						-- (terminated)
		reset_in6		=> '0',						-- (terminated)
		reset_in7		=> '0',						-- (terminated)
		reset_in8		=> '0',						-- (terminated)
		reset_in9		=> '0',						-- (terminated)
		reset_in10		=> '0',						-- (terminated)
		reset_in11		=> '0',						-- (terminated)
		reset_in12		=> '0',						-- (terminated)
		reset_in13		=> '0',						-- (terminated)
		reset_in14		=> '0',						-- (terminated)
		reset_in15		=> '0',						-- (terminated)
		reset_req_in0	=> '0',						-- (terminated)
		reset_req_in1	=> '0',						-- (terminated)
		reset_req_in2	=> '0',						-- (terminated)
		reset_req_in3	=> '0',						-- (terminated)
		reset_req_in4	=> '0',						-- (terminated)
		reset_req_in5	=> '0',						-- (terminated)
		reset_req_in6	=> '0',						-- (terminated)
		reset_req_in7	=> '0',						-- (terminated)
		reset_req_in8	=> '0',						-- (terminated)
		reset_req_in9	=> '0',						-- (terminated)
		reset_req_in10	=> '0',						-- (terminated)
		reset_req_in11	=> '0',						-- (terminated)
		reset_req_in12	=> '0',						-- (terminated)
		reset_req_in13	=> '0',						-- (terminated)
		reset_req_in14	=> '0',						-- (terminated)
		reset_req_in15	=> '0',						-- (terminated)
		clk				=> open,					-- clk.clk
		reset_out		=> rst_controller_008_reset_out_reset, --reset_out.reset
		reset_req		=> open						-- (terminated)
	);
	
	rst_controller_009 : altera_reset_controller 
	generic map(
		NUM_RESET_INPUTS       		=> 2,
		USE_RESET_REQUEST_IN0  		=> 0,
		USE_RESET_REQUEST_IN1  		=> 0,
		USE_RESET_REQUEST_IN2  		=> 0,
		USE_RESET_REQUEST_IN3  		=> 0,
		USE_RESET_REQUEST_IN4  		=> 0,
		USE_RESET_REQUEST_IN5  		=> 0,
		USE_RESET_REQUEST_IN6  		=> 0,
		USE_RESET_REQUEST_IN7  		=> 0,
		USE_RESET_REQUEST_IN8  		=> 0,
		USE_RESET_REQUEST_IN9  		=> 0,
		USE_RESET_REQUEST_IN10 		=> 0,
		USE_RESET_REQUEST_IN11 		=> 0,
		USE_RESET_REQUEST_IN12 		=> 0,
		USE_RESET_REQUEST_IN13 		=> 0,
		USE_RESET_REQUEST_IN14 		=> 0,
		USE_RESET_REQUEST_IN15 		=> 0,
		OUTPUT_RESET_SYNC_EDGES		=> "none",
		SYNC_DEPTH             		=> 2,
		RESET_REQUEST_PRESENT  		=> 0,
		RESET_REQ_WAIT_TIME    		=> 1,
		MIN_RST_ASSERTION_TIME 		=> 3,
		RESET_REQ_EARLY_DSRT_TIME   => 1,
		ADAPT_RESET_REQUEST         => 0
	)  
	port map (
		reset_in0		=> (not global_reset_n),	-- reset_in0.reset
		reset_in1		=> (not soft_reset_n),		-- reset_in1.reset
		reset_in2		=> '0',						-- (terminated)
		reset_in3		=> '0',						-- (terminated)
		reset_in4		=> '0',						-- (terminated)
		reset_in5		=> '0',						-- (terminated)
		reset_in6		=> '0',						-- (terminated)
		reset_in7		=> '0',						-- (terminated)
		reset_in8		=> '0',						-- (terminated)
		reset_in9		=> '0',						-- (terminated)
		reset_in10		=> '0',						-- (terminated)
		reset_in11		=> '0',						-- (terminated)
		reset_in12		=> '0',						-- (terminated)
		reset_in13		=> '0',						-- (terminated)
		reset_in14		=> '0',						-- (terminated)
		reset_in15		=> '0',						-- (terminated)
		reset_req_in0	=> '0',						-- (terminated)
		reset_req_in1	=> '0',						-- (terminated)
		reset_req_in2	=> '0',						-- (terminated)
		reset_req_in3	=> '0',						-- (terminated)
		reset_req_in4	=> '0',						-- (terminated)
		reset_req_in5	=> '0',						-- (terminated)
		reset_req_in6	=> '0',						-- (terminated)
		reset_req_in7	=> '0',						-- (terminated)
		reset_req_in8	=> '0',						-- (terminated)
		reset_req_in9	=> '0',						-- (terminated)
		reset_req_in10	=> '0',						-- (terminated)
		reset_req_in11	=> '0',						-- (terminated)
		reset_req_in12	=> '0',						-- (terminated)
		reset_req_in13	=> '0',						-- (terminated)
		reset_req_in14	=> '0',						-- (terminated)
		reset_req_in15	=> '0',						-- (terminated)
		clk				=> open,					-- clk.clk
		reset_out		=> rst_controller_009_reset_out_reset, --reset_out.reset
		reset_req		=> open						-- (terminated)
	);
	
	rst_controller_010 : altera_reset_controller 
	generic map(
		NUM_RESET_INPUTS       		=> 2,
		USE_RESET_REQUEST_IN0  		=> 0,
		USE_RESET_REQUEST_IN1  		=> 0,
		USE_RESET_REQUEST_IN2  		=> 0,
		USE_RESET_REQUEST_IN3  		=> 0,
		USE_RESET_REQUEST_IN4  		=> 0,
		USE_RESET_REQUEST_IN5  		=> 0,
		USE_RESET_REQUEST_IN6  		=> 0,
		USE_RESET_REQUEST_IN7  		=> 0,
		USE_RESET_REQUEST_IN8  		=> 0,
		USE_RESET_REQUEST_IN9  		=> 0,
		USE_RESET_REQUEST_IN10 		=> 0,
		USE_RESET_REQUEST_IN11 		=> 0,
		USE_RESET_REQUEST_IN12 		=> 0,
		USE_RESET_REQUEST_IN13 		=> 0,
		USE_RESET_REQUEST_IN14 		=> 0,
		USE_RESET_REQUEST_IN15 		=> 0,
		OUTPUT_RESET_SYNC_EDGES		=> "none",
		SYNC_DEPTH             		=> 2,
		RESET_REQUEST_PRESENT  		=> 0,
		RESET_REQ_WAIT_TIME    		=> 1,
		MIN_RST_ASSERTION_TIME 		=> 3,
		RESET_REQ_EARLY_DSRT_TIME   => 1,
		ADAPT_RESET_REQUEST         => 0
	)  
	port map (
		reset_in0		=> (not global_reset_n),	-- reset_in0.reset
		reset_in1		=> (not soft_reset_n),		-- reset_in1.reset
		reset_in2		=> '0',						-- (terminated)
		reset_in3		=> '0',						-- (terminated)
		reset_in4		=> '0',						-- (terminated)
		reset_in5		=> '0',						-- (terminated)
		reset_in6		=> '0',						-- (terminated)
		reset_in7		=> '0',						-- (terminated)
		reset_in8		=> '0',						-- (terminated)
		reset_in9		=> '0',						-- (terminated)
		reset_in10		=> '0',						-- (terminated)
		reset_in11		=> '0',						-- (terminated)
		reset_in12		=> '0',						-- (terminated)
		reset_in13		=> '0',						-- (terminated)
		reset_in14		=> '0',						-- (terminated)
		reset_in15		=> '0',						-- (terminated)
		reset_req_in0	=> '0',						-- (terminated)
		reset_req_in1	=> '0',						-- (terminated)
		reset_req_in2	=> '0',						-- (terminated)
		reset_req_in3	=> '0',						-- (terminated)
		reset_req_in4	=> '0',						-- (terminated)
		reset_req_in5	=> '0',						-- (terminated)
		reset_req_in6	=> '0',						-- (terminated)
		reset_req_in7	=> '0',						-- (terminated)
		reset_req_in8	=> '0',						-- (terminated)
		reset_req_in9	=> '0',						-- (terminated)
		reset_req_in10	=> '0',						-- (terminated)
		reset_req_in11	=> '0',						-- (terminated)
		reset_req_in12	=> '0',						-- (terminated)
		reset_req_in13	=> '0',						-- (terminated)
		reset_req_in14	=> '0',						-- (terminated)
		reset_req_in15	=> '0',						-- (terminated)
		clk				=> open,					-- clk.clk
		reset_out		=> rst_controller_010_reset_out_reset, --reset_out.reset
		reset_req		=> open						-- (terminated)
	);
	
	rst_controller_011 : altera_reset_controller 
	generic map(
		NUM_RESET_INPUTS       		=> 2,
		USE_RESET_REQUEST_IN0  		=> 0,
		USE_RESET_REQUEST_IN1  		=> 0,
		USE_RESET_REQUEST_IN2  		=> 0,
		USE_RESET_REQUEST_IN3  		=> 0,
		USE_RESET_REQUEST_IN4  		=> 0,
		USE_RESET_REQUEST_IN5  		=> 0,
		USE_RESET_REQUEST_IN6  		=> 0,
		USE_RESET_REQUEST_IN7  		=> 0,
		USE_RESET_REQUEST_IN8  		=> 0,
		USE_RESET_REQUEST_IN9  		=> 0,
		USE_RESET_REQUEST_IN10 		=> 0,
		USE_RESET_REQUEST_IN11 		=> 0,
		USE_RESET_REQUEST_IN12 		=> 0,
		USE_RESET_REQUEST_IN13 		=> 0,
		USE_RESET_REQUEST_IN14 		=> 0,
		USE_RESET_REQUEST_IN15 		=> 0,
		OUTPUT_RESET_SYNC_EDGES		=> "none",
		SYNC_DEPTH             		=> 2,
		RESET_REQUEST_PRESENT  		=> 0,
		RESET_REQ_WAIT_TIME    		=> 1,
		MIN_RST_ASSERTION_TIME 		=> 3,
		RESET_REQ_EARLY_DSRT_TIME   => 1,
		ADAPT_RESET_REQUEST         => 0
	)  
	port map (
		reset_in0		=> (not global_reset_n),	-- reset_in0.reset
		reset_in1		=> (not soft_reset_n),		-- reset_in1.reset
		reset_in2		=> '0',						-- (terminated)
		reset_in3		=> '0',						-- (terminated)
		reset_in4		=> '0',						-- (terminated)
		reset_in5		=> '0',						-- (terminated)
		reset_in6		=> '0',						-- (terminated)
		reset_in7		=> '0',						-- (terminated)
		reset_in8		=> '0',						-- (terminated)
		reset_in9		=> '0',						-- (terminated)
		reset_in10		=> '0',						-- (terminated)
		reset_in11		=> '0',						-- (terminated)
		reset_in12		=> '0',						-- (terminated)
		reset_in13		=> '0',						-- (terminated)
		reset_in14		=> '0',						-- (terminated)
		reset_in15		=> '0',						-- (terminated)
		reset_req_in0	=> '0',						-- (terminated)
		reset_req_in1	=> '0',						-- (terminated)
		reset_req_in2	=> '0',						-- (terminated)
		reset_req_in3	=> '0',						-- (terminated)
		reset_req_in4	=> '0',						-- (terminated)
		reset_req_in5	=> '0',						-- (terminated)
		reset_req_in6	=> '0',						-- (terminated)
		reset_req_in7	=> '0',						-- (terminated)
		reset_req_in8	=> '0',						-- (terminated)
		reset_req_in9	=> '0',						-- (terminated)
		reset_req_in10	=> '0',						-- (terminated)
		reset_req_in11	=> '0',						-- (terminated)
		reset_req_in12	=> '0',						-- (terminated)
		reset_req_in13	=> '0',						-- (terminated)
		reset_req_in14	=> '0',						-- (terminated)
		reset_req_in15	=> '0',						-- (terminated)
		clk				=> open,					-- clk.clk
		reset_out		=> rst_controller_011_reset_out_reset, --reset_out.reset
		reset_req		=> open						-- (terminated)
	);
	
end logic;