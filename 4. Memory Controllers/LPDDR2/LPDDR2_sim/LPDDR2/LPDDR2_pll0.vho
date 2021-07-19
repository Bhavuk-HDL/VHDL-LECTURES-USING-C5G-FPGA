--IP Functional Simulation Model
--VERSION_BEGIN 18.1 cbx_mgl 2019:04:11:16:07:46:SJ cbx_simgen 2019:04:11:16:04:12:SJ  VERSION_END


-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- You may only use these simulation model output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event Intel disclaims all warranties of any kind).


--synopsys translate_off

 LIBRARY altera_lnsim;
 USE altera_lnsim.altera_lnsim_components.all;

--synthesis_resources = generic_pll 9 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  LPDDR2_pll0 IS 
	 PORT 
	 ( 
		 afi_clk	:	OUT  STD_LOGIC;
		 afi_half_clk	:	OUT  STD_LOGIC;
		 afi_phy_clk	:	OUT  STD_LOGIC;
		 global_reset_n	:	IN  STD_LOGIC;
		 pll_addr_cmd_clk	:	OUT  STD_LOGIC;
		 pll_avl_clk	:	OUT  STD_LOGIC;
		 pll_avl_phy_clk	:	OUT  STD_LOGIC;
		 pll_config_clk	:	OUT  STD_LOGIC;
		 pll_locked	:	OUT  STD_LOGIC;
		 pll_mem_clk	:	OUT  STD_LOGIC;
		 pll_mem_phy_clk	:	OUT  STD_LOGIC;
		 pll_ref_clk	:	IN  STD_LOGIC;
		 pll_write_clk	:	OUT  STD_LOGIC;
		 pll_write_clk_pre_phy_clk	:	OUT  STD_LOGIC
	 ); 
 END LPDDR2_pll0;

 ARCHITECTURE RTL OF LPDDR2_pll0 IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL  wire_lpddr2_pll0_generic_pll_pll1_56_fboutclk	:	STD_LOGIC;
	 SIGNAL  wire_lpddr2_pll0_generic_pll_pll1_56_locked	:	STD_LOGIC;
	 SIGNAL  wire_lpddr2_pll0_generic_pll_pll1_56_outclk	:	STD_LOGIC;
	 SIGNAL  wire_lpddr2_pll0_generic_pll_pll1_56_rst	:	STD_LOGIC;
	 SIGNAL  wire_lpddr2_pll0_generic_pll_pll1_phy_58_outclk	:	STD_LOGIC;
	 SIGNAL  wire_lpddr2_pll0_generic_pll_pll1_phy_58_rst	:	STD_LOGIC;
	 SIGNAL  wire_lpddr2_pll0_generic_pll_pll2_60_outclk	:	STD_LOGIC;
	 SIGNAL  wire_lpddr2_pll0_generic_pll_pll2_60_rst	:	STD_LOGIC;
	 SIGNAL  wire_lpddr2_pll0_generic_pll_pll2_phy_62_outclk	:	STD_LOGIC;
	 SIGNAL  wire_lpddr2_pll0_generic_pll_pll2_phy_62_rst	:	STD_LOGIC;
	 SIGNAL  wire_lpddr2_pll0_generic_pll_pll3_64_outclk	:	STD_LOGIC;
	 SIGNAL  wire_lpddr2_pll0_generic_pll_pll3_64_rst	:	STD_LOGIC;
	 SIGNAL  wire_lpddr2_pll0_generic_pll_pll4_66_outclk	:	STD_LOGIC;
	 SIGNAL  wire_lpddr2_pll0_generic_pll_pll4_66_rst	:	STD_LOGIC;
	 SIGNAL  wire_lpddr2_pll0_generic_pll_pll6_68_outclk	:	STD_LOGIC;
	 SIGNAL  wire_lpddr2_pll0_generic_pll_pll6_68_rst	:	STD_LOGIC;
	 SIGNAL  wire_lpddr2_pll0_generic_pll_pll6_phy_70_outclk	:	STD_LOGIC;
	 SIGNAL  wire_lpddr2_pll0_generic_pll_pll6_phy_70_rst	:	STD_LOGIC;
	 SIGNAL  wire_lpddr2_pll0_generic_pll_pll7_72_outclk	:	STD_LOGIC;
	 SIGNAL  wire_lpddr2_pll0_generic_pll_pll7_72_rst	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_global_reset_n1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_w_lg_global_reset_n1w(0) <= NOT global_reset_n;
	afi_clk <= wire_lpddr2_pll0_generic_pll_pll1_56_outclk;
	afi_half_clk <= '0';
	afi_phy_clk <= wire_lpddr2_pll0_generic_pll_pll1_phy_58_outclk;
	pll_addr_cmd_clk <= wire_lpddr2_pll0_generic_pll_pll4_66_outclk;
	pll_avl_clk <= wire_lpddr2_pll0_generic_pll_pll6_68_outclk;
	pll_avl_phy_clk <= wire_lpddr2_pll0_generic_pll_pll6_phy_70_outclk;
	pll_config_clk <= wire_lpddr2_pll0_generic_pll_pll7_72_outclk;
	pll_locked <= wire_lpddr2_pll0_generic_pll_pll1_56_locked;
	pll_mem_clk <= wire_lpddr2_pll0_generic_pll_pll2_60_outclk;
	pll_mem_phy_clk <= wire_lpddr2_pll0_generic_pll_pll2_phy_62_outclk;
	pll_write_clk <= wire_lpddr2_pll0_generic_pll_pll3_64_outclk;
	pll_write_clk_pre_phy_clk <= wire_lpddr2_pll0_generic_pll_pll3_64_outclk;
	wire_lpddr2_pll0_generic_pll_pll1_56_rst <= wire_w_lg_global_reset_n1w(0);
	lpddr2_pll0_generic_pll_pll1_56 :  generic_pll
	  GENERIC MAP (
		duty_cycle => 50,
		output_clock_frequency => "3126 ps",
		phase_shift => "0 ps",
		reference_clock_frequency => "125.0 MHz"
	  )
	  PORT MAP ( 
		fbclk => wire_lpddr2_pll0_generic_pll_pll1_56_fboutclk,
		fboutclk => wire_lpddr2_pll0_generic_pll_pll1_56_fboutclk,
		locked => wire_lpddr2_pll0_generic_pll_pll1_56_locked,
		outclk => wire_lpddr2_pll0_generic_pll_pll1_56_outclk,
		refclk => pll_ref_clk,
		rst => wire_lpddr2_pll0_generic_pll_pll1_56_rst
	  );
	wire_lpddr2_pll0_generic_pll_pll1_phy_58_rst <= wire_w_lg_global_reset_n1w(0);
	lpddr2_pll0_generic_pll_pll1_phy_58 :  generic_pll
	  GENERIC MAP (
		duty_cycle => 50,
		output_clock_frequency => "3126 ps",
		phase_shift => "0 ps",
		reference_clock_frequency => "125.0 MHz"
	  )
	  PORT MAP ( 
		fbclk => wire_lpddr2_pll0_generic_pll_pll1_56_fboutclk,
		outclk => wire_lpddr2_pll0_generic_pll_pll1_phy_58_outclk,
		refclk => pll_ref_clk,
		rst => wire_lpddr2_pll0_generic_pll_pll1_phy_58_rst
	  );
	wire_lpddr2_pll0_generic_pll_pll2_60_rst <= wire_w_lg_global_reset_n1w(0);
	lpddr2_pll0_generic_pll_pll2_60 :  generic_pll
	  GENERIC MAP (
		duty_cycle => 50,
		output_clock_frequency => "3126 ps",
		phase_shift => "0 ps",
		reference_clock_frequency => "125.0 MHz"
	  )
	  PORT MAP ( 
		fbclk => wire_lpddr2_pll0_generic_pll_pll1_56_fboutclk,
		outclk => wire_lpddr2_pll0_generic_pll_pll2_60_outclk,
		refclk => pll_ref_clk,
		rst => wire_lpddr2_pll0_generic_pll_pll2_60_rst
	  );
	wire_lpddr2_pll0_generic_pll_pll2_phy_62_rst <= wire_w_lg_global_reset_n1w(0);
	lpddr2_pll0_generic_pll_pll2_phy_62 :  generic_pll
	  GENERIC MAP (
		duty_cycle => 50,
		output_clock_frequency => "3126 ps",
		phase_shift => "0 ps",
		reference_clock_frequency => "125.0 MHz"
	  )
	  PORT MAP ( 
		fbclk => wire_lpddr2_pll0_generic_pll_pll1_56_fboutclk,
		outclk => wire_lpddr2_pll0_generic_pll_pll2_phy_62_outclk,
		refclk => pll_ref_clk,
		rst => wire_lpddr2_pll0_generic_pll_pll2_phy_62_rst
	  );
	wire_lpddr2_pll0_generic_pll_pll3_64_rst <= wire_w_lg_global_reset_n1w(0);
	lpddr2_pll0_generic_pll_pll3_64 :  generic_pll
	  GENERIC MAP (
		duty_cycle => 50,
		output_clock_frequency => "3126 ps",
		phase_shift => "2344 ps",
		reference_clock_frequency => "125.0 MHz"
	  )
	  PORT MAP ( 
		fbclk => wire_lpddr2_pll0_generic_pll_pll1_56_fboutclk,
		outclk => wire_lpddr2_pll0_generic_pll_pll3_64_outclk,
		refclk => pll_ref_clk,
		rst => wire_lpddr2_pll0_generic_pll_pll3_64_rst
	  );
	wire_lpddr2_pll0_generic_pll_pll4_66_rst <= wire_w_lg_global_reset_n1w(0);
	lpddr2_pll0_generic_pll_pll4_66 :  generic_pll
	  GENERIC MAP (
		duty_cycle => 50,
		output_clock_frequency => "3126 ps",
		phase_shift => "2344 ps",
		reference_clock_frequency => "125.0 MHz"
	  )
	  PORT MAP ( 
		fbclk => wire_lpddr2_pll0_generic_pll_pll1_56_fboutclk,
		outclk => wire_lpddr2_pll0_generic_pll_pll4_66_outclk,
		refclk => pll_ref_clk,
		rst => wire_lpddr2_pll0_generic_pll_pll4_66_rst
	  );
	wire_lpddr2_pll0_generic_pll_pll6_68_rst <= wire_w_lg_global_reset_n1w(0);
	lpddr2_pll0_generic_pll_pll6_68 :  generic_pll
	  GENERIC MAP (
		duty_cycle => 50,
		output_clock_frequency => "15630 ps",
		phase_shift => "15390 ps",
		reference_clock_frequency => "125.0 MHz"
	  )
	  PORT MAP ( 
		fbclk => wire_lpddr2_pll0_generic_pll_pll1_56_fboutclk,
		outclk => wire_lpddr2_pll0_generic_pll_pll6_68_outclk,
		refclk => pll_ref_clk,
		rst => wire_lpddr2_pll0_generic_pll_pll6_68_rst
	  );
	wire_lpddr2_pll0_generic_pll_pll6_phy_70_rst <= wire_w_lg_global_reset_n1w(0);
	lpddr2_pll0_generic_pll_pll6_phy_70 :  generic_pll
	  GENERIC MAP (
		duty_cycle => 50,
		output_clock_frequency => "15630 ps",
		phase_shift => "15390 ps",
		reference_clock_frequency => "125.0 MHz"
	  )
	  PORT MAP ( 
		fbclk => wire_lpddr2_pll0_generic_pll_pll1_56_fboutclk,
		outclk => wire_lpddr2_pll0_generic_pll_pll6_phy_70_outclk,
		refclk => pll_ref_clk,
		rst => wire_lpddr2_pll0_generic_pll_pll6_phy_70_rst
	  );
	wire_lpddr2_pll0_generic_pll_pll7_72_rst <= wire_w_lg_global_reset_n1w(0);
	lpddr2_pll0_generic_pll_pll7_72 :  generic_pll
	  GENERIC MAP (
		duty_cycle => 50,
		output_clock_frequency => "46890 ps",
		phase_shift => "0 ps",
		reference_clock_frequency => "125.0 MHz"
	  )
	  PORT MAP ( 
		fbclk => wire_lpddr2_pll0_generic_pll_pll1_56_fboutclk,
		outclk => wire_lpddr2_pll0_generic_pll_pll7_72_outclk,
		refclk => pll_ref_clk,
		rst => wire_lpddr2_pll0_generic_pll_pll7_72_rst
	  );

 END RTL; --LPDDR2_pll0
--synopsys translate_on
--VALID FILE
