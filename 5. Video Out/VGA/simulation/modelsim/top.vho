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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.1 Build 646 04/11/2019 SJ Lite Edition"

-- DATE "06/23/2021 22:24:53"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	CLK : IN std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_R : OUT std_logic;
	VGA_G : OUT std_logic;
	VGA_B : OUT std_logic;
	START : IN std_logic
	);
END top;

-- Design Ports Information
-- VGA_HS	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- VGA_VS	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- VGA_R	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- VGA_G	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- VGA_B	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- START	=>  Location: PIN_AC9,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_R : std_logic;
SIGNAL ww_VGA_G : std_logic;
SIGNAL ww_VGA_B : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \START~input_o\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \pllclk~combout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \counterx[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \counterx[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \counterx[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \counterx[6]~feeder_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \VGA_R~0_combout\ : std_logic;
SIGNAL \VGA_R~7_combout\ : std_logic;
SIGNAL \VGA_R~6_combout\ : std_logic;
SIGNAL \VGA_R~8_combout\ : std_logic;
SIGNAL \VGA_R~9_combout\ : std_logic;
SIGNAL \VGA_R~2_combout\ : std_logic;
SIGNAL \VGA_R~4_combout\ : std_logic;
SIGNAL \VGA_R~3_combout\ : std_logic;
SIGNAL \VGA_R~12_combout\ : std_logic;
SIGNAL \VGA_R~5_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \VGA_R~10_combout\ : std_logic;
SIGNAL \VGA_R~1_combout\ : std_logic;
SIGNAL \VGA_R~16_combout\ : std_logic;
SIGNAL \VGA_R~11_combout\ : std_logic;
SIGNAL \VGA_G~0_combout\ : std_logic;
SIGNAL \VGA_B~0_combout\ : std_logic;
SIGNAL counterx : std_logic_vector(9 DOWNTO 0);
SIGNAL \pixel_clk|pll_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL countery : std_logic_vector(9 DOWNTO 0);
SIGNAL \pixel_clk|pll_inst|altera_pll_i|locked_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pixel_clk|pll_inst|altera_pll_i|outclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_counterx[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counterx[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_counterx[6]~DUPLICATE_q\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \pixel_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_START~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_VGA_R~10_combout\ : std_logic;
SIGNAL \ALT_INV_VGA_R~9_combout\ : std_logic;
SIGNAL \ALT_INV_VGA_R~8_combout\ : std_logic;
SIGNAL \ALT_INV_VGA_R~7_combout\ : std_logic;
SIGNAL \ALT_INV_VGA_R~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_VGA_R~5_combout\ : std_logic;
SIGNAL \ALT_INV_VGA_R~4_combout\ : std_logic;
SIGNAL \ALT_INV_VGA_R~3_combout\ : std_logic;
SIGNAL \ALT_INV_VGA_R~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \ALT_INV_VGA_R~1_combout\ : std_logic;
SIGNAL \ALT_INV_VGA_R~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_VGA_R~16_combout\ : std_logic;
SIGNAL \ALT_INV_VGA_R~12_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL ALT_INV_countery : std_logic_vector(9 DOWNTO 0);
SIGNAL ALT_INV_counterx : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
ww_START <= START;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \CLK~input_o\);

\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & 
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & 
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\ <= \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(6);

\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
\ALT_INV_counterx[7]~DUPLICATE_q\ <= NOT \counterx[7]~DUPLICATE_q\;
\ALT_INV_counterx[9]~DUPLICATE_q\ <= NOT \counterx[9]~DUPLICATE_q\;
\ALT_INV_counterx[6]~DUPLICATE_q\ <= NOT \counterx[6]~DUPLICATE_q\;
\pixel_clk|pll_inst|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\ <= NOT \pixel_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\;
\pixel_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0) <= NOT \pixel_clk|pll_inst|altera_pll_i|locked_wire\(0);
\ALT_INV_START~input_o\ <= NOT \START~input_o\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_VGA_R~10_combout\ <= NOT \VGA_R~10_combout\;
\ALT_INV_VGA_R~9_combout\ <= NOT \VGA_R~9_combout\;
\ALT_INV_VGA_R~8_combout\ <= NOT \VGA_R~8_combout\;
\ALT_INV_VGA_R~7_combout\ <= NOT \VGA_R~7_combout\;
\ALT_INV_VGA_R~6_combout\ <= NOT \VGA_R~6_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_VGA_R~5_combout\ <= NOT \VGA_R~5_combout\;
\ALT_INV_VGA_R~4_combout\ <= NOT \VGA_R~4_combout\;
\ALT_INV_VGA_R~3_combout\ <= NOT \VGA_R~3_combout\;
\ALT_INV_VGA_R~2_combout\ <= NOT \VGA_R~2_combout\;
\ALT_INV_LessThan6~1_combout\ <= NOT \LessThan6~1_combout\;
\ALT_INV_VGA_R~1_combout\ <= NOT \VGA_R~1_combout\;
\ALT_INV_VGA_R~0_combout\ <= NOT \VGA_R~0_combout\;
\ALT_INV_LessThan6~0_combout\ <= NOT \LessThan6~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_VGA_R~16_combout\ <= NOT \VGA_R~16_combout\;
\ALT_INV_VGA_R~12_combout\ <= NOT \VGA_R~12_combout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
ALT_INV_countery(0) <= NOT countery(0);
ALT_INV_countery(5) <= NOT countery(5);
ALT_INV_countery(7) <= NOT countery(7);
ALT_INV_countery(1) <= NOT countery(1);
ALT_INV_countery(2) <= NOT countery(2);
ALT_INV_countery(4) <= NOT countery(4);
ALT_INV_countery(6) <= NOT countery(6);
ALT_INV_countery(8) <= NOT countery(8);
ALT_INV_countery(3) <= NOT countery(3);
ALT_INV_countery(9) <= NOT countery(9);
ALT_INV_counterx(7) <= NOT counterx(7);
ALT_INV_counterx(9) <= NOT counterx(9);
ALT_INV_counterx(8) <= NOT counterx(8);
ALT_INV_counterx(5) <= NOT counterx(5);
ALT_INV_counterx(6) <= NOT counterx(6);
ALT_INV_counterx(1) <= NOT counterx(1);
ALT_INV_counterx(2) <= NOT counterx(2);
ALT_INV_counterx(0) <= NOT counterx(0);
ALT_INV_counterx(3) <= NOT counterx(3);
ALT_INV_counterx(4) <= NOT counterx(4);

-- Location: IOOBUF_X68_Y14_N45
\VGA_HS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan1~2_combout\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X68_Y37_N39
\VGA_VS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan3~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X68_Y40_N45
\VGA_R~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~11_combout\,
	devoe => ww_devoe,
	o => ww_VGA_R);

-- Location: IOOBUF_X68_Y37_N56
\VGA_G~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_G);

-- Location: IOOBUF_X68_Y40_N62
\VGA_B~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~0_combout\,
	devoe => ww_devoe,
	o => ww_VGA_B);

-- Location: IOIBUF_X38_Y61_N1
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: PLLREFCLKSELECT_X68_Y60_N0
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: IOIBUF_X14_Y0_N35
\START~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_START,
	o => \START~input_o\);

-- Location: FRACTIONALPLL_X68_Y54_N0
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "none",
	nreset_invert => "true",
	output_clock_frequency => "426.699999 mhz",
	pll_atb => 0,
	pll_bwctrl => 4000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 20,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "1st_order",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "m_cnt",
	pll_fractional_carry_out => 32,
	pll_fractional_division => -2001454846,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 4,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 4,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 0,
	pll_m_cnt_prst => 1,
	pll_n_cnt_bypass_en => "true",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 256,
	pll_n_cnt_lo_div => 256,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 2,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "50.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \pixel_clk|pll_inst|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => \ALT_INV_START~input_o\,
	refclkin => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \pixel_clk|pll_inst|altera_pll_i|fboutclk_wire\(0),
	lock => \pixel_clk|pll_inst|altera_pll_i|locked_wire\(0),
	tclk => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X68_Y58_N0
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X68_Y55_N1
\pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 9,
	dprio0_cnt_lo_div => 8,
	dprio0_cnt_odd_div_even_duty_en => "true",
	duty_cycle => 50,
	output_clock_frequency => "25.1 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 6)
-- pragma translate_on
PORT MAP (
	nen0 => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\,
	tclk0 => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \pixel_clk|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \pixel_clk|pll_inst|altera_pll_i|outclk_wire\(0));

-- Location: CLKCTRL_G12
\pixel_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \pixel_clk|pll_inst|altera_pll_i|outclk_wire\(0),
	outclk => \pixel_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\);

-- Location: LABCELL_X59_Y29_N39
pllclk : cyclonev_lcell_comb
-- Equation(s):
-- \pllclk~combout\ = LCELL(( GLOBAL(\pixel_clk|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\) & ( \pixel_clk|pll_inst|altera_pll_i|locked_wire\(0) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \pixel_clk|pll_inst|altera_pll_i|ALT_INV_locked_wire\(0),
	dataf => \pixel_clk|pll_inst|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	combout => \pllclk~combout\);

-- Location: LABCELL_X58_Y31_N0
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( counterx(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~10\ = CARRY(( counterx(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counterx(0),
	cin => GND,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X58_Y31_N32
\counterx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add0~9_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterx(0));

-- Location: LABCELL_X58_Y31_N3
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( counterx(1) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~18\ = CARRY(( counterx(1) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counterx(1),
	cin => \Add0~10\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X58_Y31_N47
\counterx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add0~17_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterx(1));

-- Location: LABCELL_X58_Y31_N6
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( counterx(2) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( counterx(2) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counterx(2),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X58_Y31_N41
\counterx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add0~13_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterx(2));

-- Location: LABCELL_X58_Y31_N9
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( counterx(3) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~6\ = CARRY(( counterx(3) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counterx(3),
	cin => \Add0~14\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X60_Y29_N38
\counterx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add0~5_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterx(3));

-- Location: LABCELL_X58_Y31_N12
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( counterx(4) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~2\ = CARRY(( counterx(4) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counterx(4),
	cin => \Add0~6\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X60_Y29_N2
\counterx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add0~1_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterx(4));

-- Location: LABCELL_X58_Y31_N15
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( counterx(5) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~26\ = CARRY(( counterx(5) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counterx(5),
	cin => \Add0~2\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X60_Y29_N13
\counterx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add0~25_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterx(5));

-- Location: LABCELL_X58_Y31_N18
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \counterx[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( \counterx[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counterx[6]~DUPLICATE_q\,
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X58_Y31_N21
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \counterx[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~38\ = CARRY(( \counterx[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counterx[7]~DUPLICATE_q\,
	cin => \Add0~22\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X60_Y29_N40
\counterx[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add0~37_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterx[7]~DUPLICATE_q\);

-- Location: LABCELL_X58_Y31_N24
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( counterx(8) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~30\ = CARRY(( counterx(8) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counterx(8),
	cin => \Add0~38\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X60_Y29_N52
\counterx[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add0~29_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterx(8));

-- Location: LABCELL_X58_Y31_N27
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \counterx[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_counterx[9]~DUPLICATE_q\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\);

-- Location: FF_X60_Y29_N25
\counterx[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add0~33_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterx[9]~DUPLICATE_q\);

-- Location: LABCELL_X58_Y31_N33
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( counterx(3) & ( (counterx(4) & (\counterx[9]~DUPLICATE_q\ & (counterx(0) & counterx(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counterx(4),
	datab => \ALT_INV_counterx[9]~DUPLICATE_q\,
	datac => ALT_INV_counterx(0),
	datad => ALT_INV_counterx(8),
	datae => ALT_INV_counterx(3),
	combout => \Equal0~1_combout\);

-- Location: FF_X60_Y29_N41
\counterx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add0~37_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterx(7));

-- Location: MLABCELL_X60_Y29_N18
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !counterx(5) & ( (!counterx(7) & !counterx(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counterx(7),
	datac => ALT_INV_counterx(6),
	dataf => ALT_INV_counterx(5),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X58_Y31_N54
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \Equal0~0_combout\ & ( (counterx(1) & (counterx(2) & \Equal0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counterx(1),
	datab => ALT_INV_counterx(2),
	datac => \ALT_INV_Equal0~1_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: FF_X60_Y29_N4
\counterx[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	d => \counterx[6]~feeder_combout\,
	clrn => \START~input_o\,
	sclr => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counterx[6]~DUPLICATE_q\);

-- Location: MLABCELL_X60_Y29_N3
\counterx[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \counterx[6]~feeder_combout\ = ( \Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \counterx[6]~feeder_combout\);

-- Location: FF_X60_Y29_N5
\counterx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	d => \counterx[6]~feeder_combout\,
	clrn => \START~input_o\,
	sclr => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterx(6));

-- Location: FF_X60_Y29_N26
\counterx[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add0~33_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counterx(9));

-- Location: MLABCELL_X60_Y29_N45
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( !counterx(9) & ( (!counterx(7) & !counterx(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counterx(7),
	datad => ALT_INV_counterx(8),
	dataf => ALT_INV_counterx(9),
	combout => \LessThan1~1_combout\);

-- Location: LABCELL_X58_Y31_N51
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( !counterx(3) & ( !counterx(0) & ( (!counterx(2) & !counterx(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counterx(2),
	datac => ALT_INV_counterx(1),
	datae => ALT_INV_counterx(3),
	dataf => ALT_INV_counterx(0),
	combout => \LessThan1~0_combout\);

-- Location: MLABCELL_X60_Y29_N42
\LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ( \LessThan1~0_combout\ & ( (!\LessThan1~1_combout\) # ((counterx(6) & (counterx(5) & counterx(4)))) ) ) # ( !\LessThan1~0_combout\ & ( (!\LessThan1~1_combout\) # ((counterx(6) & counterx(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100010001111111110001000111111111000000011111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counterx(6),
	datab => ALT_INV_counterx(5),
	datac => ALT_INV_counterx(4),
	datad => \ALT_INV_LessThan1~1_combout\,
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LABCELL_X59_Y29_N0
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( countery(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~38\ = CARRY(( countery(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_countery(0),
	cin => GND,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: LABCELL_X59_Y29_N54
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !countery(4) & ( (!countery(7) & (!countery(5) & (!countery(1) & !countery(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_countery(7),
	datab => ALT_INV_countery(5),
	datac => ALT_INV_countery(1),
	datad => ALT_INV_countery(2),
	dataf => ALT_INV_countery(4),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X59_Y29_N24
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( countery(8) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~10\ = CARRY(( countery(8) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_countery(8),
	cin => \Add1~30\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X59_Y29_N27
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( countery(9) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_countery(9),
	cin => \Add1~10\,
	sumout => \Add1~1_sumout\);

-- Location: FF_X59_Y29_N17
\countery[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add1~1_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal1~1_combout\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countery(9));

-- Location: LABCELL_X59_Y29_N48
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !countery(0) & ( countery(9) & ( (countery(3) & (!countery(6) & (\Equal1~0_combout\ & !countery(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_countery(3),
	datab => ALT_INV_countery(6),
	datac => \ALT_INV_Equal1~0_combout\,
	datad => ALT_INV_countery(8),
	datae => ALT_INV_countery(0),
	dataf => ALT_INV_countery(9),
	combout => \Equal1~1_combout\);

-- Location: FF_X59_Y29_N50
\countery[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add1~37_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal1~1_combout\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countery(0));

-- Location: LABCELL_X59_Y29_N3
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( countery(1) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~26\ = CARRY(( countery(1) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_countery(1),
	cin => \Add1~38\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X59_Y29_N38
\countery[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add1~25_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal1~1_combout\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countery(1));

-- Location: LABCELL_X59_Y29_N6
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( countery(2) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( countery(2) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_countery(2),
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X59_Y29_N56
\countery[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add1~21_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal1~1_combout\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countery(2));

-- Location: LABCELL_X59_Y29_N9
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( countery(3) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~6\ = CARRY(( countery(3) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_countery(3),
	cin => \Add1~22\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X59_Y29_N41
\countery[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add1~5_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal1~1_combout\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countery(3));

-- Location: LABCELL_X59_Y29_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( countery(4) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~18\ = CARRY(( countery(4) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_countery(4),
	cin => \Add1~6\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X59_Y29_N53
\countery[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add1~17_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal1~1_combout\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countery(4));

-- Location: LABCELL_X59_Y29_N15
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( countery(5) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~34\ = CARRY(( countery(5) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_countery(5),
	cin => \Add1~18\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X59_Y29_N47
\countery[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add1~33_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal1~1_combout\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countery(5));

-- Location: LABCELL_X59_Y29_N18
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( countery(6) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~14\ = CARRY(( countery(6) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_countery(6),
	cin => \Add1~34\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X59_Y29_N59
\countery[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add1~13_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal1~1_combout\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countery(6));

-- Location: LABCELL_X59_Y29_N21
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( countery(7) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~30\ = CARRY(( countery(7) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_countery(7),
	cin => \Add1~14\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X59_Y29_N35
\countery[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add1~29_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal1~1_combout\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countery(7));

-- Location: FF_X59_Y29_N32
\countery[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pllclk~combout\,
	asdata => \Add1~9_sumout\,
	clrn => \START~input_o\,
	sclr => \Equal1~1_combout\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countery(8));

-- Location: LABCELL_X59_Y29_N42
\LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ( countery(3) ) # ( !countery(3) & ( (((!\Equal1~0_combout\) # (countery(9))) # (countery(6))) # (countery(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_countery(8),
	datab => ALT_INV_countery(6),
	datac => \ALT_INV_Equal1~0_combout\,
	datad => ALT_INV_countery(9),
	dataf => ALT_INV_countery(3),
	combout => \LessThan3~0_combout\);

-- Location: LABCELL_X59_Y29_N36
\LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = ( countery(3) & ( (countery(4) & (countery(2) & (countery(0) & countery(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_countery(4),
	datab => ALT_INV_countery(2),
	datac => ALT_INV_countery(0),
	datad => ALT_INV_countery(1),
	dataf => ALT_INV_countery(3),
	combout => \LessThan6~0_combout\);

-- Location: LABCELL_X59_Y29_N45
\VGA_R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R~0_combout\ = ( countery(7) & ( countery(8) ) ) # ( !countery(7) & ( (!countery(8) & (!countery(6) & (!\LessThan6~0_combout\ & !countery(5)))) # (countery(8) & (countery(6) & ((countery(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000010001100000000001000101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_countery(8),
	datab => ALT_INV_countery(6),
	datac => \ALT_INV_LessThan6~0_combout\,
	datad => ALT_INV_countery(5),
	dataf => ALT_INV_countery(7),
	combout => \VGA_R~0_combout\);

-- Location: MLABCELL_X60_Y29_N54
\VGA_R~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R~7_combout\ = (!counterx(7) & (!counterx(6) & !counterx(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counterx(7),
	datac => ALT_INV_counterx(6),
	datad => ALT_INV_counterx(8),
	combout => \VGA_R~7_combout\);

-- Location: LABCELL_X58_Y31_N45
\VGA_R~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R~6_combout\ = ( counterx(4) & ( (counterx(3) & ((counterx(1)) # (counterx(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000011110000001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counterx(2),
	datac => ALT_INV_counterx(3),
	datad => ALT_INV_counterx(1),
	dataf => ALT_INV_counterx(4),
	combout => \VGA_R~6_combout\);

-- Location: MLABCELL_X60_Y30_N33
\VGA_R~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R~8_combout\ = ( counterx(5) & ( \counterx[6]~DUPLICATE_q\ & ( (!counterx(8) & \counterx[9]~DUPLICATE_q\) ) ) ) # ( !counterx(5) & ( \counterx[6]~DUPLICATE_q\ & ( (!counterx(8) & \counterx[9]~DUPLICATE_q\) ) ) ) # ( counterx(5) & ( 
-- !\counterx[6]~DUPLICATE_q\ & ( (!counterx(8) & \counterx[9]~DUPLICATE_q\) ) ) ) # ( !counterx(5) & ( !\counterx[6]~DUPLICATE_q\ & ( (\counterx[9]~DUPLICATE_q\ & ((!\counterx[7]~DUPLICATE_q\) # (!counterx(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_counterx[7]~DUPLICATE_q\,
	datac => ALT_INV_counterx(8),
	datad => \ALT_INV_counterx[9]~DUPLICATE_q\,
	datae => ALT_INV_counterx(5),
	dataf => \ALT_INV_counterx[6]~DUPLICATE_q\,
	combout => \VGA_R~8_combout\);

-- Location: MLABCELL_X60_Y29_N48
\VGA_R~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R~9_combout\ = ( counterx(4) & ( \VGA_R~8_combout\ & ( (!\Equal0~0_combout\ & (((!\VGA_R~7_combout\) # (\VGA_R~6_combout\)))) # (\Equal0~0_combout\ & (\LessThan1~0_combout\ & ((!\VGA_R~7_combout\) # (\VGA_R~6_combout\)))) ) ) ) # ( !counterx(4) & ( 
-- \VGA_R~8_combout\ & ( (!\VGA_R~7_combout\) # (\VGA_R~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111111111011000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_LessThan1~0_combout\,
	datac => \ALT_INV_VGA_R~7_combout\,
	datad => \ALT_INV_VGA_R~6_combout\,
	datae => ALT_INV_counterx(4),
	dataf => \ALT_INV_VGA_R~8_combout\,
	combout => \VGA_R~9_combout\);

-- Location: LABCELL_X58_Y31_N42
\VGA_R~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R~2_combout\ = ( counterx(0) & ( (counterx(1)) # (counterx(2)) ) ) # ( !counterx(0) & ( counterx(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counterx(2),
	datad => ALT_INV_counterx(1),
	dataf => ALT_INV_counterx(0),
	combout => \VGA_R~2_combout\);

-- Location: MLABCELL_X60_Y29_N27
\VGA_R~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R~4_combout\ = ( counterx(8) & ( ((!counterx(7) & ((!counterx(5)) # (!counterx(6))))) # (counterx(9)) ) ) # ( !counterx(8) & ( (!counterx(9)) # ((counterx(6)) # (counterx(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111111111101011101010110101111111111111111010111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counterx(9),
	datab => ALT_INV_counterx(5),
	datac => ALT_INV_counterx(7),
	datad => ALT_INV_counterx(6),
	datae => ALT_INV_counterx(8),
	combout => \VGA_R~4_combout\);

-- Location: LABCELL_X58_Y31_N36
\VGA_R~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R~3_combout\ = ( counterx(1) & ( !\counterx[9]~DUPLICATE_q\ & ( (!\counterx[7]~DUPLICATE_q\ & !counterx(2)) ) ) ) # ( !counterx(1) & ( !\counterx[9]~DUPLICATE_q\ & ( (!\counterx[7]~DUPLICATE_q\ & ((!counterx(0)) # (!counterx(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counterx(0),
	datac => \ALT_INV_counterx[7]~DUPLICATE_q\,
	datad => ALT_INV_counterx(2),
	datae => ALT_INV_counterx(1),
	dataf => \ALT_INV_counterx[9]~DUPLICATE_q\,
	combout => \VGA_R~3_combout\);

-- Location: MLABCELL_X60_Y29_N30
\VGA_R~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R~12_combout\ = ( !counterx(3) & ( ((((!counterx(4) & \VGA_R~3_combout\)) # (\VGA_R~4_combout\))) ) ) # ( counterx(3) & ( ((counterx(4) & (!counterx(8) & (\VGA_R~2_combout\ & counterx(5))))) # (\VGA_R~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000000000000010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counterx(4),
	datab => ALT_INV_counterx(8),
	datac => \ALT_INV_VGA_R~2_combout\,
	datad => ALT_INV_counterx(5),
	datae => ALT_INV_counterx(3),
	dataf => \ALT_INV_VGA_R~4_combout\,
	datag => \ALT_INV_VGA_R~3_combout\,
	combout => \VGA_R~12_combout\);

-- Location: LABCELL_X59_Y29_N57
\VGA_R~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R~5_combout\ = ( countery(8) & ( (!countery(7) & ((!countery(5)) # (!countery(6)))) ) ) # ( !countery(8) & ( (countery(7) & (((countery(5) & \LessThan6~0_combout\)) # (countery(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101000000010101010110101010100010001010101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_countery(7),
	datab => ALT_INV_countery(5),
	datac => \ALT_INV_LessThan6~0_combout\,
	datad => ALT_INV_countery(6),
	dataf => ALT_INV_countery(8),
	combout => \VGA_R~5_combout\);

-- Location: LABCELL_X59_Y29_N30
\LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = ( countery(8) & ( \LessThan6~0_combout\ & ( (countery(7)) # (countery(6)) ) ) ) # ( countery(8) & ( !\LessThan6~0_combout\ & ( ((countery(6) & countery(5))) # (countery(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110011111100000000000000000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_countery(6),
	datac => ALT_INV_countery(7),
	datad => ALT_INV_countery(5),
	datae => ALT_INV_countery(8),
	dataf => \ALT_INV_LessThan6~0_combout\,
	combout => \LessThan6~1_combout\);

-- Location: MLABCELL_X60_Y29_N21
\VGA_R~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R~10_combout\ = ( \LessThan6~1_combout\ & ( (!\VGA_R~12_combout\) # ((\VGA_R~9_combout\ & \VGA_R~5_combout\)) ) ) # ( !\LessThan6~1_combout\ & ( (\VGA_R~9_combout\ & \VGA_R~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111110000111101011111000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VGA_R~9_combout\,
	datac => \ALT_INV_VGA_R~12_combout\,
	datad => \ALT_INV_VGA_R~5_combout\,
	dataf => \ALT_INV_LessThan6~1_combout\,
	combout => \VGA_R~10_combout\);

-- Location: LABCELL_X58_Y31_N57
\VGA_R~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R~1_combout\ = ( counterx(4) ) # ( !counterx(4) & ( ((counterx(1) & counterx(2))) # (counterx(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counterx(1),
	datac => ALT_INV_counterx(2),
	datad => ALT_INV_counterx(3),
	dataf => ALT_INV_counterx(4),
	combout => \VGA_R~1_combout\);

-- Location: MLABCELL_X60_Y29_N6
\VGA_R~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R~16_combout\ = ( !\counterx[7]~DUPLICATE_q\ & ( (!counterx(8)) # (((counterx(6) & (counterx(5) & \VGA_R~1_combout\))) # (counterx(9))) ) ) # ( \counterx[7]~DUPLICATE_q\ & ( (((!counterx(6) & (!counterx(5) & !counterx(4)))) # (counterx(9))) # 
-- (counterx(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111100000001100000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counterx(6),
	datab => ALT_INV_counterx(5),
	datac => ALT_INV_counterx(4),
	datad => ALT_INV_counterx(8),
	datae => \ALT_INV_counterx[7]~DUPLICATE_q\,
	dataf => ALT_INV_counterx(9),
	datag => \ALT_INV_VGA_R~1_combout\,
	combout => \VGA_R~16_combout\);

-- Location: MLABCELL_X60_Y29_N57
\VGA_R~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R~11_combout\ = ( \VGA_R~16_combout\ & ( (!countery(9) & \VGA_R~10_combout\) ) ) # ( !\VGA_R~16_combout\ & ( (!countery(9) & ((!\VGA_R~0_combout\) # (\VGA_R~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110000101000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VGA_R~0_combout\,
	datac => ALT_INV_countery(9),
	datad => \ALT_INV_VGA_R~10_combout\,
	dataf => \ALT_INV_VGA_R~16_combout\,
	combout => \VGA_R~11_combout\);

-- Location: MLABCELL_X60_Y29_N15
\VGA_G~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_G~0_combout\ = ( \VGA_R~5_combout\ & ( \VGA_R~9_combout\ & ( (!countery(9) & ((!\VGA_R~0_combout\) # (!\VGA_R~12_combout\))) ) ) ) # ( !\VGA_R~5_combout\ & ( \VGA_R~9_combout\ & ( (!countery(9) & ((!\VGA_R~0_combout\) # ((!\VGA_R~12_combout\ & 
-- \LessThan6~1_combout\)))) ) ) ) # ( \VGA_R~5_combout\ & ( !\VGA_R~9_combout\ & ( (!\VGA_R~12_combout\ & !countery(9)) ) ) ) # ( !\VGA_R~5_combout\ & ( !\VGA_R~9_combout\ & ( (!\VGA_R~12_combout\ & (!countery(9) & \LessThan6~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000110000001100000010100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VGA_R~0_combout\,
	datab => \ALT_INV_VGA_R~12_combout\,
	datac => ALT_INV_countery(9),
	datad => \ALT_INV_LessThan6~1_combout\,
	datae => \ALT_INV_VGA_R~5_combout\,
	dataf => \ALT_INV_VGA_R~9_combout\,
	combout => \VGA_G~0_combout\);

-- Location: MLABCELL_X60_Y29_N36
\VGA_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_B~0_combout\ = ( \VGA_R~5_combout\ & ( \VGA_R~12_combout\ & ( (!\VGA_R~16_combout\ & !countery(9)) ) ) ) # ( \VGA_R~5_combout\ & ( !\VGA_R~12_combout\ & ( (!countery(9) & (((!\VGA_R~16_combout\) # (!\VGA_R~0_combout\)) # (\LessThan6~1_combout\))) ) ) 
-- ) # ( !\VGA_R~5_combout\ & ( !\VGA_R~12_combout\ & ( (!countery(9) & ((!\VGA_R~0_combout\) # (\LessThan6~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000000111111010000000000000000000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan6~1_combout\,
	datab => \ALT_INV_VGA_R~16_combout\,
	datac => \ALT_INV_VGA_R~0_combout\,
	datad => ALT_INV_countery(9),
	datae => \ALT_INV_VGA_R~5_combout\,
	dataf => \ALT_INV_VGA_R~12_combout\,
	combout => \VGA_B~0_combout\);

-- Location: LABCELL_X58_Y47_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;


