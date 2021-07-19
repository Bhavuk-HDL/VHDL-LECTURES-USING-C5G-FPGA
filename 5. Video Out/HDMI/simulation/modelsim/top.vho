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

-- DATE "07/11/2021 22:46:01"

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
	CLK1 : IN std_logic;
	START : IN std_logic;
	RESET : IN std_logic;
	SCL : BUFFER std_logic;
	SDA : BUFFER std_logic;
	HSYNC : BUFFER std_logic;
	VSYNC : BUFFER std_logic;
	DATAENABLE : BUFFER std_logic;
	HDMICLK : BUFFER std_logic;
	HDMIDATA : BUFFER std_logic_vector(23 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- SCL	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSYNC	=>  Location: PIN_U26,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- VSYNC	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- DATAENABLE	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMICLK	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[0]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[1]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[2]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[4]	=>  Location: PIN_V24,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[5]	=>  Location: PIN_V25,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[6]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[7]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[8]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[9]	=>  Location: PIN_T26,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[10]	=>  Location: PIN_R23,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[11]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[12]	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[13]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[14]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[15]	=>  Location: PIN_P26,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[16]	=>  Location: PIN_P21,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[17]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[18]	=>  Location: PIN_R26,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[19]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[20]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[21]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[22]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- HDMIDATA[23]	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- SDA	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- CLK	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- CLK1	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- START	=>  Location: PIN_Y16,	 I/O Standard: 1.2 V,	 Current Strength: Default


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
SIGNAL ww_CLK1 : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_SCL : std_logic;
SIGNAL ww_SDA : std_logic;
SIGNAL ww_HSYNC : std_logic;
SIGNAL ww_VSYNC : std_logic;
SIGNAL ww_DATAENABLE : std_logic;
SIGNAL ww_HDMICLK : std_logic;
SIGNAL ww_HDMIDATA : std_logic_vector(23 DOWNTO 0);
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK1~input_o\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN2\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \I2C|I2C_inst|Equal0~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~42\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~109_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~121_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector40~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|SCL_state~q\ : std_logic;
SIGNAL \SDA~input_o\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector1~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ACK_N~q\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector41~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|COMP_SEQ~q\ : std_logic;
SIGNAL \I2C|state.ack~q\ : std_logic;
SIGNAL \I2C|Selector7~0_combout\ : std_logic;
SIGNAL \I2C|Selector5~0_combout\ : std_logic;
SIGNAL \I2C|Selector4~0_combout\ : std_logic;
SIGNAL \I2C|Selector3~0_combout\ : std_logic;
SIGNAL \I2C|Selector2~0_combout\ : std_logic;
SIGNAL \I2C|Add0~0_combout\ : std_logic;
SIGNAL \I2C|Selector1~0_combout\ : std_logic;
SIGNAL \I2C|Selector0~0_combout\ : std_logic;
SIGNAL \I2C|Equal0~0_combout\ : std_logic;
SIGNAL \START~input_o\ : std_logic;
SIGNAL \pulse_inst|stat~7_combout\ : std_logic;
SIGNAL \pulse_inst|stat.ZERO~q\ : std_logic;
SIGNAL \pulse_inst|op~1_combout\ : std_logic;
SIGNAL \pulse_inst|op~q\ : std_logic;
SIGNAL \pulse_inst|stat.ONE~0_combout\ : std_logic;
SIGNAL \pulse_inst|stat.ONE~q\ : std_logic;
SIGNAL \pulse_inst|stat~6_combout\ : std_logic;
SIGNAL \pulse_inst|stat.WAIT0~q\ : std_logic;
SIGNAL \pulse_inst|pulse~1_combout\ : std_logic;
SIGNAL \pulse_inst|pulse~q\ : std_logic;
SIGNAL \I2C|Selector5~1_combout\ : std_logic;
SIGNAL \I2C|state.idle~q\ : std_logic;
SIGNAL \I2C|Selector6~0_combout\ : std_logic;
SIGNAL \I2C|state.send~q\ : std_logic;
SIGNAL \I2C|START_SEQ~q\ : std_logic;
SIGNAL \I2C|I2C_inst|curr_state.stop~DUPLICATE_q\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector50~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|curr_state.idle~q\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector33~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|process_0~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector37~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector36~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add1~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector35~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector34~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|index[3]~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Equal1~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|process_0~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector39~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Equal2~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector57~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector52~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector54~5_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector53~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector54~2_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector52~4_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector54~3_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector54~4_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector53~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|curr_state.ack~q\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector38~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Equal5~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector52~5_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector56~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector52~3_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector52~2_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector52~6_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector52~7_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|curr_state.sending~q\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector51~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector51~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|curr_state.start~q\ : std_logic;
SIGNAL \I2C|I2C_inst|SCL_count[7]~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|SCL_count[7]~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~110\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~105_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~106\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~101_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~102\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~97_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~98\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~93_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~94\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~89_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~90\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~85_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~86\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~81_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~82\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~77_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~122\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~69_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector32~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~78\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~73_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Equal0~3_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~70\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~117_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector31~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~118\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~9_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~10\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~5_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Equal0~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Equal0~4_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~6\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~125_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~126\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~113_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector27~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Equal0~5_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Equal0~6_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~114\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~65_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector26~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~66\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~1_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~2\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~37_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~38\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~33_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~34\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~29_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~30\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~25_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~26\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~21_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~22\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~17_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~18\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~61_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~62\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~13_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~14\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~57_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~58\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~53_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~54\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~49_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~50\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~45_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~46\ : std_logic;
SIGNAL \I2C|I2C_inst|Add0~41_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|Equal0~2_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Equal6~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Equal6~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector54~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector54~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector54~6_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|curr_state.stop~q\ : std_logic;
SIGNAL \I2C|I2C_inst|process_0~2_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|SDA_byte[5]~0_combout\ : std_logic;
SIGNAL \I2C|Ram1~5_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|SDA_data[6]~0_combout\ : std_logic;
SIGNAL \I2C|Ram0~4_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector47~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector47~1_combout\ : std_logic;
SIGNAL \I2C|Ram1~7_combout\ : std_logic;
SIGNAL \I2C|Ram0~6_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|SDA_data[3]~feeder_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector46~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector46~1_combout\ : std_logic;
SIGNAL \I2C|Ram0~3_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|SDA_data[0]~feeder_combout\ : std_logic;
SIGNAL \I2C|Ram1~4_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector49~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector49~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Add1~1_combout\ : std_logic;
SIGNAL \I2C|Ram1~6_combout\ : std_logic;
SIGNAL \I2C|Ram0~5_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|SDA_data[1]~feeder_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector48~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|SDA_byte[6]~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Mux0~4_combout\ : std_logic;
SIGNAL \I2C|Ram0~0_combout\ : std_logic;
SIGNAL \I2C|Ram1~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|SDA_data[12]~feeder_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector45~0_combout\ : std_logic;
SIGNAL \I2C|Ram0~7_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|SDA_data[7]~feeder_combout\ : std_logic;
SIGNAL \I2C|Ram1~3_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector42~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector42~1_combout\ : std_logic;
SIGNAL \I2C|Ram1~1_combout\ : std_logic;
SIGNAL \I2C|Ram0~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector43~0_combout\ : std_logic;
SIGNAL \I2C|Ram1~2_combout\ : std_logic;
SIGNAL \I2C|Ram0~2_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector44~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Mux0~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector56~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|SDA~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|SDA~2_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|SDA~reg0_q\ : std_logic;
SIGNAL \I2C|I2C_inst|SDA~en_q\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector0~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|Selector0~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|SCL~q\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN5\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \HDMI|Add0~29_sumout\ : std_logic;
SIGNAL \I2C|SETUP_DONE~0_combout\ : std_logic;
SIGNAL \I2C|SETUP_DONE~q\ : std_logic;
SIGNAL \HDMI|Add0~10\ : std_logic;
SIGNAL \HDMI|Add0~5_sumout\ : std_logic;
SIGNAL \HDMI|Equal0~1_combout\ : std_logic;
SIGNAL \HDMI|Add0~6\ : std_logic;
SIGNAL \HDMI|Add0~45_sumout\ : std_logic;
SIGNAL \HDMI|Add0~46\ : std_logic;
SIGNAL \HDMI|Add0~41_sumout\ : std_logic;
SIGNAL \HDMI|Add0~42\ : std_logic;
SIGNAL \HDMI|Add0~37_sumout\ : std_logic;
SIGNAL \HDMI|Add0~38\ : std_logic;
SIGNAL \HDMI|Add0~1_sumout\ : std_logic;
SIGNAL \HDMI|counterx[11]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|Equal0~2_combout\ : std_logic;
SIGNAL \HDMI|Equal0~3_combout\ : std_logic;
SIGNAL \HDMI|Add0~30\ : std_logic;
SIGNAL \HDMI|Add0~33_sumout\ : std_logic;
SIGNAL \HDMI|counterx[1]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|Add0~34\ : std_logic;
SIGNAL \HDMI|Add0~25_sumout\ : std_logic;
SIGNAL \HDMI|counterx[2]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|Add0~26\ : std_logic;
SIGNAL \HDMI|Add0~21_sumout\ : std_logic;
SIGNAL \HDMI|Add0~22\ : std_logic;
SIGNAL \HDMI|Add0~17_sumout\ : std_logic;
SIGNAL \HDMI|counterx[4]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|Add0~18\ : std_logic;
SIGNAL \HDMI|Add0~13_sumout\ : std_logic;
SIGNAL \HDMI|Add0~14\ : std_logic;
SIGNAL \HDMI|Add0~9_sumout\ : std_logic;
SIGNAL \HDMI|counterx[8]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|Equal0~0_combout\ : std_logic;
SIGNAL \HDMI|LessThan5~0_combout\ : std_logic;
SIGNAL \HDMI|LessThan5~1_combout\ : std_logic;
SIGNAL \HDMI|countery[9]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|Add2~41_sumout\ : std_logic;
SIGNAL \HDMI|countery[0]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|Add2~42\ : std_logic;
SIGNAL \HDMI|Add2~5_sumout\ : std_logic;
SIGNAL \HDMI|countery[1]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|Add2~6\ : std_logic;
SIGNAL \HDMI|Add2~1_sumout\ : std_logic;
SIGNAL \HDMI|countery[2]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|Add2~2\ : std_logic;
SIGNAL \HDMI|Add2~21_sumout\ : std_logic;
SIGNAL \HDMI|countery[3]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|Add2~22\ : std_logic;
SIGNAL \HDMI|Add2~25_sumout\ : std_logic;
SIGNAL \HDMI|countery[4]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|Add2~26\ : std_logic;
SIGNAL \HDMI|Add2~17_sumout\ : std_logic;
SIGNAL \HDMI|countery[5]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|Add2~18\ : std_logic;
SIGNAL \HDMI|Add2~13_sumout\ : std_logic;
SIGNAL \HDMI|countery[6]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|Add2~14\ : std_logic;
SIGNAL \HDMI|Add2~37_sumout\ : std_logic;
SIGNAL \HDMI|countery[7]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|Add2~38\ : std_logic;
SIGNAL \HDMI|Add2~33_sumout\ : std_logic;
SIGNAL \HDMI|countery[8]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|Add2~34\ : std_logic;
SIGNAL \HDMI|Add2~29_sumout\ : std_logic;
SIGNAL \HDMI|Equal1~0_combout\ : std_logic;
SIGNAL \HDMI|Equal1~2_combout\ : std_logic;
SIGNAL \HDMI|Equal1~3_combout\ : std_logic;
SIGNAL \HDMI|countery[10]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|Add2~30\ : std_logic;
SIGNAL \HDMI|Add2~9_sumout\ : std_logic;
SIGNAL \HDMI|LessThan7~0_combout\ : std_logic;
SIGNAL \HDMI|counterx[7]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|DATAENABLE~0_combout\ : std_logic;
SIGNAL \HDMI|counterx[3]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|counterx[5]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|DATAENABLE~1_combout\ : std_logic;
SIGNAL \HDMI|DATAENABLE~2_combout\ : std_logic;
SIGNAL \HDMI|Equal1~1_combout\ : std_logic;
SIGNAL \HDMI|DATAENABLE~3_combout\ : std_logic;
SIGNAL \HDMI|DATAENABLE~4_combout\ : std_logic;
SIGNAL \HDMI|DATAENABLE~5_combout\ : std_logic;
SIGNAL \HDMI|HDMICLK~0_combout\ : std_logic;
SIGNAL \HDMI|Add1~1_sumout\ : std_logic;
SIGNAL \HDMI|HDMIDATA[3]~feeder_combout\ : std_logic;
SIGNAL \HDMI|HDMIDATA~0_combout\ : std_logic;
SIGNAL \HDMI|HDMIDATA[3]~1_combout\ : std_logic;
SIGNAL \HDMI|Add1~2\ : std_logic;
SIGNAL \HDMI|Add1~5_sumout\ : std_logic;
SIGNAL \HDMI|Add1~6\ : std_logic;
SIGNAL \HDMI|Add1~9_sumout\ : std_logic;
SIGNAL \HDMI|Add1~10\ : std_logic;
SIGNAL \HDMI|Add1~13_sumout\ : std_logic;
SIGNAL \HDMI|HDMIDATA[6]~feeder_combout\ : std_logic;
SIGNAL \HDMI|Add1~14\ : std_logic;
SIGNAL \HDMI|Add1~17_sumout\ : std_logic;
SIGNAL \HDMI|HDMIDATA[7]~feeder_combout\ : std_logic;
SIGNAL \HDMI|Add1~18\ : std_logic;
SIGNAL \HDMI|Add1~21_sumout\ : std_logic;
SIGNAL \HDMI|HDMIDATA[8]~feeder_combout\ : std_logic;
SIGNAL \HDMI|Add1~22\ : std_logic;
SIGNAL \HDMI|Add1~25_sumout\ : std_logic;
SIGNAL \HDMI|Add1~26\ : std_logic;
SIGNAL \HDMI|Add1~29_sumout\ : std_logic;
SIGNAL \HDMI|HDMIDATA[10]~feeder_combout\ : std_logic;
SIGNAL \HDMI|Add1~30\ : std_logic;
SIGNAL \HDMI|Add1~33_sumout\ : std_logic;
SIGNAL \HDMI|Add1~34\ : std_logic;
SIGNAL \HDMI|Add1~37_sumout\ : std_logic;
SIGNAL \HDMI|Add1~38\ : std_logic;
SIGNAL \HDMI|Add1~41_sumout\ : std_logic;
SIGNAL \HDMI|Add1~42\ : std_logic;
SIGNAL \HDMI|Add1~45_sumout\ : std_logic;
SIGNAL \HDMI|Add1~46\ : std_logic;
SIGNAL \HDMI|Add1~49_sumout\ : std_logic;
SIGNAL \HDMI|Add1~50\ : std_logic;
SIGNAL \HDMI|Add1~53_sumout\ : std_logic;
SIGNAL \HDMI|Add1~54\ : std_logic;
SIGNAL \HDMI|Add1~57_sumout\ : std_logic;
SIGNAL \HDMI|Add1~58\ : std_logic;
SIGNAL \HDMI|Add1~61_sumout\ : std_logic;
SIGNAL \HDMI|Add1~62\ : std_logic;
SIGNAL \HDMI|Add1~65_sumout\ : std_logic;
SIGNAL \HDMI|Add1~66\ : std_logic;
SIGNAL \HDMI|Add1~69_sumout\ : std_logic;
SIGNAL \HDMI|Add1~70\ : std_logic;
SIGNAL \HDMI|Add1~73_sumout\ : std_logic;
SIGNAL \HDMI|Add1~74\ : std_logic;
SIGNAL \HDMI|Add1~77_sumout\ : std_logic;
SIGNAL \HDMI|Add1~78\ : std_logic;
SIGNAL \HDMI|Add1~81_sumout\ : std_logic;
SIGNAL \I2C|index\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \pll_inst|pll_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \I2C|I2C_inst|SDA_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \HDMI|counterx\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \I2C|I2C_inst|SDA_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \HDMI|countery\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \I2C|I2C_inst|SCL_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \HDMI|HDMIDATA\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \I2C|BASE_ADDRESS\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll_inst|pll_inst|altera_pll_i|outclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \I2C|I2C_inst|byte_num\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \I2C|I2C_inst|index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I2C|DATA_BYTE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \I2C|I2C_inst|ALT_INV_curr_state.sending~DUPLICATE_q\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_curr_state.stop~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|ALT_INV_countery[0]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|ALT_INV_countery[7]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|ALT_INV_countery[8]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|ALT_INV_countery[9]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|ALT_INV_countery[4]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|ALT_INV_countery[3]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|ALT_INV_countery[5]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|ALT_INV_countery[6]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|ALT_INV_countery[10]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|ALT_INV_countery[1]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|ALT_INV_countery[2]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|ALT_INV_counterx[8]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|ALT_INV_counterx[1]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|ALT_INV_counterx[2]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|ALT_INV_counterx[3]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|ALT_INV_counterx[4]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|ALT_INV_counterx[5]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|ALT_INV_counterx[7]~DUPLICATE_q\ : std_logic;
SIGNAL \HDMI|ALT_INV_counterx[11]~DUPLICATE_q\ : std_logic;
SIGNAL \hdmipll|pllhdmi_inst|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_START~input_o\ : std_logic;
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;
SIGNAL \ALT_INV_SDA~input_o\ : std_logic;
SIGNAL \I2C|ALT_INV_BASE_ADDRESS\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \I2C|I2C_inst|ALT_INV_Selector46~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Selector47~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Selector49~0_combout\ : std_logic;
SIGNAL \I2C|ALT_INV_DATA_BYTE\ : std_logic_vector(4 DOWNTO 4);
SIGNAL \I2C|I2C_inst|ALT_INV_Selector42~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_SDA_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \I2C|I2C_inst|ALT_INV_SDA_byte[5]~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_SDA~1_combout\ : std_logic;
SIGNAL \pulse_inst|ALT_INV_stat.ONE~q\ : std_logic;
SIGNAL \pulse_inst|ALT_INV_op~q\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \I2C|ALT_INV_state.idle~q\ : std_logic;
SIGNAL \pulse_inst|ALT_INV_stat.ZERO~q\ : std_logic;
SIGNAL \pulse_inst|ALT_INV_stat.WAIT0~q\ : std_logic;
SIGNAL \I2C|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_ACK_N~q\ : std_logic;
SIGNAL \I2C|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Selector57~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Selector53~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Selector52~6_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Selector56~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Selector52~5_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Selector54~5_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Selector54~4_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Selector54~3_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Selector54~2_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Selector52~4_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Selector54~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Selector54~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I2C|I2C_inst|ALT_INV_Selector51~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Selector52~3_combout\ : std_logic;
SIGNAL \I2C|ALT_INV_START_SEQ~q\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Selector52~2_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Selector52~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Equal6~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Equal5~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_byte_num\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \I2C|I2C_inst|ALT_INV_SCL_count[7]~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_curr_state.idle~q\ : std_logic;
SIGNAL \HDMI|ALT_INV_HDMIDATA~0_combout\ : std_logic;
SIGNAL \I2C|ALT_INV_state.send~q\ : std_logic;
SIGNAL \pulse_inst|ALT_INV_pulse~q\ : std_logic;
SIGNAL \I2C|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \I2C|ALT_INV_index\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \I2C|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_COMP_SEQ~q\ : std_logic;
SIGNAL \I2C|ALT_INV_state.ack~q\ : std_logic;
SIGNAL \HDMI|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \HDMI|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \HDMI|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_curr_state.ack~q\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_curr_state.sending~q\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_curr_state.stop~q\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_SCL_state~q\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_curr_state.start~q\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_SCL_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \I2C|I2C_inst|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \I2C|ALT_INV_SETUP_DONE~q\ : std_logic;
SIGNAL \HDMI|ALT_INV_DATAENABLE~5_combout\ : std_logic;
SIGNAL \HDMI|ALT_INV_DATAENABLE~4_combout\ : std_logic;
SIGNAL \HDMI|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \HDMI|ALT_INV_DATAENABLE~3_combout\ : std_logic;
SIGNAL \HDMI|ALT_INV_DATAENABLE~2_combout\ : std_logic;
SIGNAL \HDMI|ALT_INV_DATAENABLE~1_combout\ : std_logic;
SIGNAL \HDMI|ALT_INV_DATAENABLE~0_combout\ : std_logic;
SIGNAL \HDMI|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \HDMI|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \HDMI|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_SCL~q\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Selector34~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_SDA_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \I2C|I2C_inst|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \I2C|I2C_inst|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \HDMI|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \HDMI|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \HDMI|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \HDMI|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \HDMI|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \HDMI|ALT_INV_HDMIDATA\ : std_logic_vector(23 DOWNTO 3);
SIGNAL \HDMI|ALT_INV_countery\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \HDMI|ALT_INV_counterx\ : std_logic_vector(11 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_CLK1 <= CLK1;
ww_START <= START;
ww_RESET <= RESET;
SCL <= ww_SCL;
SDA <= ww_SDA;
HSYNC <= ww_HSYNC;
VSYNC <= ww_VSYNC;
DATAENABLE <= ww_DATAENABLE;
HDMICLK <= ww_HDMICLK;
HDMIDATA <= ww_HDMIDATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & \CLK~input_o\ & gnd & gnd);

\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & 
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & 
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN5\ <= \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(5);

\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);

\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \CLK1~input_o\);

\pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & 
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & 
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN2\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(2);

\pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
\I2C|I2C_inst|ALT_INV_curr_state.sending~DUPLICATE_q\ <= NOT \I2C|I2C_inst|curr_state.sending~DUPLICATE_q\;
\I2C|I2C_inst|ALT_INV_curr_state.stop~DUPLICATE_q\ <= NOT \I2C|I2C_inst|curr_state.stop~DUPLICATE_q\;
\HDMI|ALT_INV_countery[0]~DUPLICATE_q\ <= NOT \HDMI|countery[0]~DUPLICATE_q\;
\HDMI|ALT_INV_countery[7]~DUPLICATE_q\ <= NOT \HDMI|countery[7]~DUPLICATE_q\;
\HDMI|ALT_INV_countery[8]~DUPLICATE_q\ <= NOT \HDMI|countery[8]~DUPLICATE_q\;
\HDMI|ALT_INV_countery[9]~DUPLICATE_q\ <= NOT \HDMI|countery[9]~DUPLICATE_q\;
\HDMI|ALT_INV_countery[4]~DUPLICATE_q\ <= NOT \HDMI|countery[4]~DUPLICATE_q\;
\HDMI|ALT_INV_countery[3]~DUPLICATE_q\ <= NOT \HDMI|countery[3]~DUPLICATE_q\;
\HDMI|ALT_INV_countery[5]~DUPLICATE_q\ <= NOT \HDMI|countery[5]~DUPLICATE_q\;
\HDMI|ALT_INV_countery[6]~DUPLICATE_q\ <= NOT \HDMI|countery[6]~DUPLICATE_q\;
\HDMI|ALT_INV_countery[10]~DUPLICATE_q\ <= NOT \HDMI|countery[10]~DUPLICATE_q\;
\HDMI|ALT_INV_countery[1]~DUPLICATE_q\ <= NOT \HDMI|countery[1]~DUPLICATE_q\;
\HDMI|ALT_INV_countery[2]~DUPLICATE_q\ <= NOT \HDMI|countery[2]~DUPLICATE_q\;
\HDMI|ALT_INV_counterx[8]~DUPLICATE_q\ <= NOT \HDMI|counterx[8]~DUPLICATE_q\;
\HDMI|ALT_INV_counterx[1]~DUPLICATE_q\ <= NOT \HDMI|counterx[1]~DUPLICATE_q\;
\HDMI|ALT_INV_counterx[2]~DUPLICATE_q\ <= NOT \HDMI|counterx[2]~DUPLICATE_q\;
\HDMI|ALT_INV_counterx[3]~DUPLICATE_q\ <= NOT \HDMI|counterx[3]~DUPLICATE_q\;
\HDMI|ALT_INV_counterx[4]~DUPLICATE_q\ <= NOT \HDMI|counterx[4]~DUPLICATE_q\;
\HDMI|ALT_INV_counterx[5]~DUPLICATE_q\ <= NOT \HDMI|counterx[5]~DUPLICATE_q\;
\HDMI|ALT_INV_counterx[7]~DUPLICATE_q\ <= NOT \HDMI|counterx[7]~DUPLICATE_q\;
\HDMI|ALT_INV_counterx[11]~DUPLICATE_q\ <= NOT \HDMI|counterx[11]~DUPLICATE_q\;
\hdmipll|pllhdmi_inst|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\ <= NOT \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\;
\ALT_INV_START~input_o\ <= NOT \START~input_o\;
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
\ALT_INV_SDA~input_o\ <= NOT \SDA~input_o\;
\I2C|ALT_INV_BASE_ADDRESS\(3) <= NOT \I2C|BASE_ADDRESS\(3);
\I2C|ALT_INV_BASE_ADDRESS\(1) <= NOT \I2C|BASE_ADDRESS\(1);
\I2C|ALT_INV_BASE_ADDRESS\(0) <= NOT \I2C|BASE_ADDRESS\(0);
\I2C|ALT_INV_BASE_ADDRESS\(7) <= NOT \I2C|BASE_ADDRESS\(7);
\I2C|I2C_inst|ALT_INV_Selector46~0_combout\ <= NOT \I2C|I2C_inst|Selector46~0_combout\;
\I2C|I2C_inst|ALT_INV_Selector47~0_combout\ <= NOT \I2C|I2C_inst|Selector47~0_combout\;
\I2C|I2C_inst|ALT_INV_Selector49~0_combout\ <= NOT \I2C|I2C_inst|Selector49~0_combout\;
\I2C|ALT_INV_DATA_BYTE\(4) <= NOT \I2C|DATA_BYTE\(4);
\I2C|I2C_inst|ALT_INV_Selector42~0_combout\ <= NOT \I2C|I2C_inst|Selector42~0_combout\;
\I2C|I2C_inst|ALT_INV_process_0~2_combout\ <= NOT \I2C|I2C_inst|process_0~2_combout\;
\I2C|I2C_inst|ALT_INV_SDA_byte\(3) <= NOT \I2C|I2C_inst|SDA_byte\(3);
\I2C|I2C_inst|ALT_INV_SDA_byte\(2) <= NOT \I2C|I2C_inst|SDA_byte\(2);
\I2C|I2C_inst|ALT_INV_SDA_byte\(0) <= NOT \I2C|I2C_inst|SDA_byte\(0);
\I2C|I2C_inst|ALT_INV_SDA_byte[5]~0_combout\ <= NOT \I2C|I2C_inst|SDA_byte[5]~0_combout\;
\I2C|I2C_inst|ALT_INV_SDA_byte\(7) <= NOT \I2C|I2C_inst|SDA_byte\(7);
\I2C|I2C_inst|ALT_INV_Add1~1_combout\ <= NOT \I2C|I2C_inst|Add1~1_combout\;
\I2C|I2C_inst|ALT_INV_SDA~1_combout\ <= NOT \I2C|I2C_inst|SDA~1_combout\;
\pulse_inst|ALT_INV_stat.ONE~q\ <= NOT \pulse_inst|stat.ONE~q\;
\pulse_inst|ALT_INV_op~q\ <= NOT \pulse_inst|op~q\;
\I2C|I2C_inst|ALT_INV_Add1~0_combout\ <= NOT \I2C|I2C_inst|Add1~0_combout\;
\I2C|ALT_INV_state.idle~q\ <= NOT \I2C|state.idle~q\;
\pulse_inst|ALT_INV_stat.ZERO~q\ <= NOT \pulse_inst|stat.ZERO~q\;
\pulse_inst|ALT_INV_stat.WAIT0~q\ <= NOT \pulse_inst|stat.WAIT0~q\;
\I2C|ALT_INV_Add0~0_combout\ <= NOT \I2C|Add0~0_combout\;
\I2C|I2C_inst|ALT_INV_ACK_N~q\ <= NOT \I2C|I2C_inst|ACK_N~q\;
\I2C|ALT_INV_Selector7~0_combout\ <= NOT \I2C|Selector7~0_combout\;
\I2C|I2C_inst|ALT_INV_Selector57~0_combout\ <= NOT \I2C|I2C_inst|Selector57~0_combout\;
\I2C|I2C_inst|ALT_INV_Selector53~0_combout\ <= NOT \I2C|I2C_inst|Selector53~0_combout\;
\I2C|I2C_inst|ALT_INV_Selector52~6_combout\ <= NOT \I2C|I2C_inst|Selector52~6_combout\;
\I2C|I2C_inst|ALT_INV_Selector56~0_combout\ <= NOT \I2C|I2C_inst|Selector56~0_combout\;
\I2C|I2C_inst|ALT_INV_Selector52~5_combout\ <= NOT \I2C|I2C_inst|Selector52~5_combout\;
\I2C|I2C_inst|ALT_INV_Selector54~5_combout\ <= NOT \I2C|I2C_inst|Selector54~5_combout\;
\I2C|I2C_inst|ALT_INV_Selector54~4_combout\ <= NOT \I2C|I2C_inst|Selector54~4_combout\;
\I2C|I2C_inst|ALT_INV_Selector54~3_combout\ <= NOT \I2C|I2C_inst|Selector54~3_combout\;
\I2C|I2C_inst|ALT_INV_Selector54~2_combout\ <= NOT \I2C|I2C_inst|Selector54~2_combout\;
\I2C|I2C_inst|ALT_INV_Selector52~4_combout\ <= NOT \I2C|I2C_inst|Selector52~4_combout\;
\I2C|I2C_inst|ALT_INV_Selector54~1_combout\ <= NOT \I2C|I2C_inst|Selector54~1_combout\;
\I2C|I2C_inst|ALT_INV_Equal2~0_combout\ <= NOT \I2C|I2C_inst|Equal2~0_combout\;
\I2C|I2C_inst|ALT_INV_Selector54~0_combout\ <= NOT \I2C|I2C_inst|Selector54~0_combout\;
\I2C|I2C_inst|ALT_INV_process_0~1_combout\ <= NOT \I2C|I2C_inst|process_0~1_combout\;
\I2C|I2C_inst|ALT_INV_Equal1~0_combout\ <= NOT \I2C|I2C_inst|Equal1~0_combout\;
\I2C|I2C_inst|ALT_INV_index\(0) <= NOT \I2C|I2C_inst|index\(0);
\I2C|I2C_inst|ALT_INV_index\(1) <= NOT \I2C|I2C_inst|index\(1);
\I2C|I2C_inst|ALT_INV_index\(2) <= NOT \I2C|I2C_inst|index\(2);
\I2C|I2C_inst|ALT_INV_index\(3) <= NOT \I2C|I2C_inst|index\(3);
\I2C|I2C_inst|ALT_INV_Selector51~0_combout\ <= NOT \I2C|I2C_inst|Selector51~0_combout\;
\I2C|I2C_inst|ALT_INV_Selector52~3_combout\ <= NOT \I2C|I2C_inst|Selector52~3_combout\;
\I2C|ALT_INV_START_SEQ~q\ <= NOT \I2C|START_SEQ~q\;
\I2C|I2C_inst|ALT_INV_Selector52~2_combout\ <= NOT \I2C|I2C_inst|Selector52~2_combout\;
\I2C|I2C_inst|ALT_INV_Selector52~1_combout\ <= NOT \I2C|I2C_inst|Selector52~1_combout\;
\I2C|I2C_inst|ALT_INV_process_0~0_combout\ <= NOT \I2C|I2C_inst|process_0~0_combout\;
\I2C|I2C_inst|ALT_INV_Equal6~1_combout\ <= NOT \I2C|I2C_inst|Equal6~1_combout\;
\I2C|I2C_inst|ALT_INV_Equal6~0_combout\ <= NOT \I2C|I2C_inst|Equal6~0_combout\;
\I2C|I2C_inst|ALT_INV_Equal5~0_combout\ <= NOT \I2C|I2C_inst|Equal5~0_combout\;
\I2C|I2C_inst|ALT_INV_byte_num\(0) <= NOT \I2C|I2C_inst|byte_num\(0);
\I2C|I2C_inst|ALT_INV_byte_num\(1) <= NOT \I2C|I2C_inst|byte_num\(1);
\I2C|I2C_inst|ALT_INV_SCL_count[7]~0_combout\ <= NOT \I2C|I2C_inst|SCL_count[7]~0_combout\;
\I2C|I2C_inst|ALT_INV_curr_state.idle~q\ <= NOT \I2C|I2C_inst|curr_state.idle~q\;
\HDMI|ALT_INV_HDMIDATA~0_combout\ <= NOT \HDMI|HDMIDATA~0_combout\;
\I2C|ALT_INV_state.send~q\ <= NOT \I2C|state.send~q\;
\pulse_inst|ALT_INV_pulse~q\ <= NOT \pulse_inst|pulse~q\;
\I2C|ALT_INV_Equal0~0_combout\ <= NOT \I2C|Equal0~0_combout\;
\I2C|ALT_INV_index\(1) <= NOT \I2C|index\(1);
\I2C|ALT_INV_index\(2) <= NOT \I2C|index\(2);
\I2C|ALT_INV_index\(3) <= NOT \I2C|index\(3);
\I2C|ALT_INV_index\(4) <= NOT \I2C|index\(4);
\I2C|ALT_INV_index\(0) <= NOT \I2C|index\(0);
\I2C|ALT_INV_Selector5~0_combout\ <= NOT \I2C|Selector5~0_combout\;
\I2C|I2C_inst|ALT_INV_COMP_SEQ~q\ <= NOT \I2C|I2C_inst|COMP_SEQ~q\;
\I2C|ALT_INV_state.ack~q\ <= NOT \I2C|state.ack~q\;
\HDMI|ALT_INV_Equal1~2_combout\ <= NOT \HDMI|Equal1~2_combout\;
\HDMI|ALT_INV_Equal0~2_combout\ <= NOT \HDMI|Equal0~2_combout\;
\HDMI|ALT_INV_Equal0~1_combout\ <= NOT \HDMI|Equal0~1_combout\;
\I2C|I2C_inst|ALT_INV_Selector0~0_combout\ <= NOT \I2C|I2C_inst|Selector0~0_combout\;
\I2C|I2C_inst|ALT_INV_curr_state.ack~q\ <= NOT \I2C|I2C_inst|curr_state.ack~q\;
\I2C|I2C_inst|ALT_INV_curr_state.sending~q\ <= NOT \I2C|I2C_inst|curr_state.sending~q\;
\I2C|I2C_inst|ALT_INV_curr_state.stop~q\ <= NOT \I2C|I2C_inst|curr_state.stop~q\;
\I2C|I2C_inst|ALT_INV_SCL_state~q\ <= NOT \I2C|I2C_inst|SCL_state~q\;
\I2C|I2C_inst|ALT_INV_curr_state.start~q\ <= NOT \I2C|I2C_inst|curr_state.start~q\;
\I2C|I2C_inst|ALT_INV_Equal0~6_combout\ <= NOT \I2C|I2C_inst|Equal0~6_combout\;
\I2C|I2C_inst|ALT_INV_Equal0~5_combout\ <= NOT \I2C|I2C_inst|Equal0~5_combout\;
\I2C|I2C_inst|ALT_INV_SCL_count\(0) <= NOT \I2C|I2C_inst|SCL_count\(0);
\I2C|I2C_inst|ALT_INV_SCL_count\(2) <= NOT \I2C|I2C_inst|SCL_count\(2);
\I2C|I2C_inst|ALT_INV_SCL_count\(6) <= NOT \I2C|I2C_inst|SCL_count\(6);
\I2C|I2C_inst|ALT_INV_Equal0~4_combout\ <= NOT \I2C|I2C_inst|Equal0~4_combout\;
\I2C|I2C_inst|ALT_INV_Equal0~3_combout\ <= NOT \I2C|I2C_inst|Equal0~3_combout\;
\I2C|I2C_inst|ALT_INV_SCL_count\(1) <= NOT \I2C|I2C_inst|SCL_count\(1);
\I2C|I2C_inst|ALT_INV_SCL_count\(7) <= NOT \I2C|I2C_inst|SCL_count\(7);
\I2C|I2C_inst|ALT_INV_Equal0~2_combout\ <= NOT \I2C|I2C_inst|Equal0~2_combout\;
\I2C|I2C_inst|ALT_INV_Equal0~1_combout\ <= NOT \I2C|I2C_inst|Equal0~1_combout\;
\I2C|I2C_inst|ALT_INV_Equal0~0_combout\ <= NOT \I2C|I2C_inst|Equal0~0_combout\;
\I2C|ALT_INV_SETUP_DONE~q\ <= NOT \I2C|SETUP_DONE~q\;
\HDMI|ALT_INV_DATAENABLE~5_combout\ <= NOT \HDMI|DATAENABLE~5_combout\;
\HDMI|ALT_INV_DATAENABLE~4_combout\ <= NOT \HDMI|DATAENABLE~4_combout\;
\HDMI|ALT_INV_Equal1~1_combout\ <= NOT \HDMI|Equal1~1_combout\;
\HDMI|ALT_INV_DATAENABLE~3_combout\ <= NOT \HDMI|DATAENABLE~3_combout\;
\HDMI|ALT_INV_DATAENABLE~2_combout\ <= NOT \HDMI|DATAENABLE~2_combout\;
\HDMI|ALT_INV_DATAENABLE~1_combout\ <= NOT \HDMI|DATAENABLE~1_combout\;
\HDMI|ALT_INV_DATAENABLE~0_combout\ <= NOT \HDMI|DATAENABLE~0_combout\;
\HDMI|ALT_INV_Equal1~0_combout\ <= NOT \HDMI|Equal1~0_combout\;
\HDMI|ALT_INV_Equal0~0_combout\ <= NOT \HDMI|Equal0~0_combout\;
\HDMI|ALT_INV_LessThan5~0_combout\ <= NOT \HDMI|LessThan5~0_combout\;
\I2C|I2C_inst|ALT_INV_SCL~q\ <= NOT \I2C|I2C_inst|SCL~q\;
\I2C|I2C_inst|ALT_INV_Selector34~0_combout\ <= NOT \I2C|I2C_inst|Selector34~0_combout\;
\I2C|I2C_inst|ALT_INV_SDA_data\(11) <= NOT \I2C|I2C_inst|SDA_data\(11);
\I2C|I2C_inst|ALT_INV_SDA_data\(3) <= NOT \I2C|I2C_inst|SDA_data\(3);
\I2C|I2C_inst|ALT_INV_SDA_data\(9) <= NOT \I2C|I2C_inst|SDA_data\(9);
\I2C|I2C_inst|ALT_INV_SDA_data\(1) <= NOT \I2C|I2C_inst|SDA_data\(1);
\I2C|I2C_inst|ALT_INV_SDA_data\(10) <= NOT \I2C|I2C_inst|SDA_data\(10);
\I2C|I2C_inst|ALT_INV_SDA_data\(2) <= NOT \I2C|I2C_inst|SDA_data\(2);
\I2C|I2C_inst|ALT_INV_SDA_data\(8) <= NOT \I2C|I2C_inst|SDA_data\(8);
\I2C|I2C_inst|ALT_INV_SDA_data\(0) <= NOT \I2C|I2C_inst|SDA_data\(0);
\I2C|I2C_inst|ALT_INV_SDA_data\(15) <= NOT \I2C|I2C_inst|SDA_data\(15);
\I2C|I2C_inst|ALT_INV_SDA_data\(7) <= NOT \I2C|I2C_inst|SDA_data\(7);
\I2C|I2C_inst|ALT_INV_SDA_byte\(1) <= NOT \I2C|I2C_inst|SDA_byte\(1);
\I2C|I2C_inst|ALT_INV_SDA_data\(13) <= NOT \I2C|I2C_inst|SDA_data\(13);
\I2C|I2C_inst|ALT_INV_SDA_data\(5) <= NOT \I2C|I2C_inst|SDA_data\(5);
\I2C|I2C_inst|ALT_INV_SDA_data\(14) <= NOT \I2C|I2C_inst|SDA_data\(14);
\I2C|I2C_inst|ALT_INV_SDA_data\(6) <= NOT \I2C|I2C_inst|SDA_data\(6);
\I2C|I2C_inst|ALT_INV_SDA_data\(12) <= NOT \I2C|I2C_inst|SDA_data\(12);
\I2C|I2C_inst|ALT_INV_SDA_data\(4) <= NOT \I2C|I2C_inst|SDA_data\(4);
\I2C|I2C_inst|ALT_INV_Mux0~4_combout\ <= NOT \I2C|I2C_inst|Mux0~4_combout\;
\I2C|I2C_inst|ALT_INV_SDA_byte\(5) <= NOT \I2C|I2C_inst|SDA_byte\(5);
\I2C|I2C_inst|ALT_INV_SDA_byte\(6) <= NOT \I2C|I2C_inst|SDA_byte\(6);
\I2C|I2C_inst|ALT_INV_SDA_byte\(4) <= NOT \I2C|I2C_inst|SDA_byte\(4);
\I2C|I2C_inst|ALT_INV_Mux0~0_combout\ <= NOT \I2C|I2C_inst|Mux0~0_combout\;
\I2C|I2C_inst|ALT_INV_Add0~121_sumout\ <= NOT \I2C|I2C_inst|Add0~121_sumout\;
\I2C|I2C_inst|ALT_INV_Add0~117_sumout\ <= NOT \I2C|I2C_inst|Add0~117_sumout\;
\I2C|I2C_inst|ALT_INV_Add0~113_sumout\ <= NOT \I2C|I2C_inst|Add0~113_sumout\;
\I2C|I2C_inst|ALT_INV_Add0~69_sumout\ <= NOT \I2C|I2C_inst|Add0~69_sumout\;
\I2C|I2C_inst|ALT_INV_Add0~65_sumout\ <= NOT \I2C|I2C_inst|Add0~65_sumout\;
\HDMI|ALT_INV_Add1~29_sumout\ <= NOT \HDMI|Add1~29_sumout\;
\HDMI|ALT_INV_Add1~21_sumout\ <= NOT \HDMI|Add1~21_sumout\;
\HDMI|ALT_INV_Add1~17_sumout\ <= NOT \HDMI|Add1~17_sumout\;
\HDMI|ALT_INV_Add1~13_sumout\ <= NOT \HDMI|Add1~13_sumout\;
\HDMI|ALT_INV_Add1~1_sumout\ <= NOT \HDMI|Add1~1_sumout\;
\I2C|I2C_inst|ALT_INV_SCL_count\(5) <= NOT \I2C|I2C_inst|SCL_count\(5);
\I2C|I2C_inst|ALT_INV_SCL_count\(22) <= NOT \I2C|I2C_inst|SCL_count\(22);
\I2C|I2C_inst|ALT_INV_SCL_count\(23) <= NOT \I2C|I2C_inst|SCL_count\(23);
\I2C|I2C_inst|ALT_INV_SCL_count\(24) <= NOT \I2C|I2C_inst|SCL_count\(24);
\I2C|I2C_inst|ALT_INV_SCL_count\(25) <= NOT \I2C|I2C_inst|SCL_count\(25);
\I2C|I2C_inst|ALT_INV_SCL_count\(26) <= NOT \I2C|I2C_inst|SCL_count\(26);
\I2C|I2C_inst|ALT_INV_SCL_count\(27) <= NOT \I2C|I2C_inst|SCL_count\(27);
\I2C|I2C_inst|ALT_INV_SCL_count\(28) <= NOT \I2C|I2C_inst|SCL_count\(28);
\I2C|I2C_inst|ALT_INV_SCL_count\(29) <= NOT \I2C|I2C_inst|SCL_count\(29);
\I2C|I2C_inst|ALT_INV_SCL_count\(30) <= NOT \I2C|I2C_inst|SCL_count\(30);
\I2C|I2C_inst|ALT_INV_SCL_count\(31) <= NOT \I2C|I2C_inst|SCL_count\(31);
\I2C|I2C_inst|ALT_INV_SCL_count\(15) <= NOT \I2C|I2C_inst|SCL_count\(15);
\I2C|I2C_inst|ALT_INV_SCL_count\(17) <= NOT \I2C|I2C_inst|SCL_count\(17);
\I2C|I2C_inst|ALT_INV_SCL_count\(18) <= NOT \I2C|I2C_inst|SCL_count\(18);
\I2C|I2C_inst|ALT_INV_SCL_count\(19) <= NOT \I2C|I2C_inst|SCL_count\(19);
\I2C|I2C_inst|ALT_INV_SCL_count\(20) <= NOT \I2C|I2C_inst|SCL_count\(20);
\I2C|I2C_inst|ALT_INV_SCL_count\(21) <= NOT \I2C|I2C_inst|SCL_count\(21);
\I2C|I2C_inst|ALT_INV_SCL_count\(9) <= NOT \I2C|I2C_inst|SCL_count\(9);
\I2C|I2C_inst|ALT_INV_SCL_count\(10) <= NOT \I2C|I2C_inst|SCL_count\(10);
\I2C|I2C_inst|ALT_INV_SCL_count\(11) <= NOT \I2C|I2C_inst|SCL_count\(11);
\I2C|I2C_inst|ALT_INV_SCL_count\(12) <= NOT \I2C|I2C_inst|SCL_count\(12);
\I2C|I2C_inst|ALT_INV_SCL_count\(13) <= NOT \I2C|I2C_inst|SCL_count\(13);
\I2C|I2C_inst|ALT_INV_SCL_count\(14) <= NOT \I2C|I2C_inst|SCL_count\(14);
\I2C|I2C_inst|ALT_INV_SCL_count\(16) <= NOT \I2C|I2C_inst|SCL_count\(16);
\I2C|I2C_inst|ALT_INV_SCL_count\(3) <= NOT \I2C|I2C_inst|SCL_count\(3);
\I2C|I2C_inst|ALT_INV_SCL_count\(4) <= NOT \I2C|I2C_inst|SCL_count\(4);
\I2C|I2C_inst|ALT_INV_SCL_count\(8) <= NOT \I2C|I2C_inst|SCL_count\(8);
\HDMI|ALT_INV_HDMIDATA\(23) <= NOT \HDMI|HDMIDATA\(23);
\HDMI|ALT_INV_HDMIDATA\(22) <= NOT \HDMI|HDMIDATA\(22);
\HDMI|ALT_INV_HDMIDATA\(21) <= NOT \HDMI|HDMIDATA\(21);
\HDMI|ALT_INV_HDMIDATA\(20) <= NOT \HDMI|HDMIDATA\(20);
\HDMI|ALT_INV_HDMIDATA\(19) <= NOT \HDMI|HDMIDATA\(19);
\HDMI|ALT_INV_HDMIDATA\(18) <= NOT \HDMI|HDMIDATA\(18);
\HDMI|ALT_INV_HDMIDATA\(17) <= NOT \HDMI|HDMIDATA\(17);
\HDMI|ALT_INV_HDMIDATA\(16) <= NOT \HDMI|HDMIDATA\(16);
\HDMI|ALT_INV_HDMIDATA\(15) <= NOT \HDMI|HDMIDATA\(15);
\HDMI|ALT_INV_HDMIDATA\(14) <= NOT \HDMI|HDMIDATA\(14);
\HDMI|ALT_INV_HDMIDATA\(13) <= NOT \HDMI|HDMIDATA\(13);
\HDMI|ALT_INV_HDMIDATA\(12) <= NOT \HDMI|HDMIDATA\(12);
\HDMI|ALT_INV_HDMIDATA\(11) <= NOT \HDMI|HDMIDATA\(11);
\HDMI|ALT_INV_HDMIDATA\(10) <= NOT \HDMI|HDMIDATA\(10);
\HDMI|ALT_INV_HDMIDATA\(9) <= NOT \HDMI|HDMIDATA\(9);
\HDMI|ALT_INV_HDMIDATA\(8) <= NOT \HDMI|HDMIDATA\(8);
\HDMI|ALT_INV_HDMIDATA\(7) <= NOT \HDMI|HDMIDATA\(7);
\HDMI|ALT_INV_HDMIDATA\(6) <= NOT \HDMI|HDMIDATA\(6);
\HDMI|ALT_INV_HDMIDATA\(5) <= NOT \HDMI|HDMIDATA\(5);
\HDMI|ALT_INV_HDMIDATA\(4) <= NOT \HDMI|HDMIDATA\(4);
\HDMI|ALT_INV_HDMIDATA\(3) <= NOT \HDMI|HDMIDATA\(3);
\HDMI|ALT_INV_countery\(0) <= NOT \HDMI|countery\(0);
\HDMI|ALT_INV_countery\(7) <= NOT \HDMI|countery\(7);
\HDMI|ALT_INV_countery\(8) <= NOT \HDMI|countery\(8);
\HDMI|ALT_INV_countery\(9) <= NOT \HDMI|countery\(9);
\HDMI|ALT_INV_countery\(4) <= NOT \HDMI|countery\(4);
\HDMI|ALT_INV_countery\(3) <= NOT \HDMI|countery\(3);
\HDMI|ALT_INV_countery\(5) <= NOT \HDMI|countery\(5);
\HDMI|ALT_INV_countery\(6) <= NOT \HDMI|countery\(6);
\HDMI|ALT_INV_countery\(10) <= NOT \HDMI|countery\(10);
\HDMI|ALT_INV_countery\(1) <= NOT \HDMI|countery\(1);
\HDMI|ALT_INV_countery\(2) <= NOT \HDMI|countery\(2);
\HDMI|ALT_INV_counterx\(8) <= NOT \HDMI|counterx\(8);
\HDMI|ALT_INV_counterx\(9) <= NOT \HDMI|counterx\(9);
\HDMI|ALT_INV_counterx\(10) <= NOT \HDMI|counterx\(10);
\HDMI|ALT_INV_counterx\(1) <= NOT \HDMI|counterx\(1);
\HDMI|ALT_INV_counterx\(0) <= NOT \HDMI|counterx\(0);
\HDMI|ALT_INV_counterx\(2) <= NOT \HDMI|counterx\(2);
\HDMI|ALT_INV_counterx\(3) <= NOT \HDMI|counterx\(3);
\HDMI|ALT_INV_counterx\(4) <= NOT \HDMI|counterx\(4);
\HDMI|ALT_INV_counterx\(5) <= NOT \HDMI|counterx\(5);
\HDMI|ALT_INV_counterx\(6) <= NOT \HDMI|counterx\(6);
\HDMI|ALT_INV_counterx\(7) <= NOT \HDMI|counterx\(7);
\HDMI|ALT_INV_counterx\(11) <= NOT \HDMI|counterx\(11);

-- Location: IOOBUF_X19_Y61_N53
\SCL~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I2C|I2C_inst|SCL~q\,
	devoe => ww_devoe,
	o => ww_SCL);

-- Location: IOOBUF_X68_Y27_N56
\HSYNC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|LessThan5~1_combout\,
	devoe => ww_devoe,
	o => ww_HSYNC);

-- Location: IOOBUF_X68_Y27_N39
\VSYNC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|LessThan7~0_combout\,
	devoe => ww_devoe,
	o => ww_VSYNC);

-- Location: IOOBUF_X68_Y24_N56
\DATAENABLE~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|ALT_INV_DATAENABLE~5_combout\,
	devoe => ww_devoe,
	o => ww_DATAENABLE);

-- Location: IOOBUF_X68_Y24_N39
\HDMICLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMICLK~0_combout\,
	devoe => ww_devoe,
	o => ww_HDMICLK);

-- Location: IOOBUF_X68_Y14_N79
\HDMIDATA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMIDATA(0));

-- Location: IOOBUF_X68_Y22_N96
\HDMIDATA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMIDATA(1));

-- Location: IOOBUF_X68_Y26_N39
\HDMIDATA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HDMIDATA(2));

-- Location: IOOBUF_X68_Y26_N56
\HDMIDATA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(3),
	devoe => ww_devoe,
	o => ww_HDMIDATA(3));

-- Location: IOOBUF_X68_Y14_N96
\HDMIDATA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(4),
	devoe => ww_devoe,
	o => ww_HDMIDATA(4));

-- Location: IOOBUF_X68_Y19_N56
\HDMIDATA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(5),
	devoe => ww_devoe,
	o => ww_HDMIDATA(5));

-- Location: IOOBUF_X68_Y19_N39
\HDMIDATA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(6),
	devoe => ww_devoe,
	o => ww_HDMIDATA(6));

-- Location: IOOBUF_X68_Y16_N5
\HDMIDATA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(7),
	devoe => ww_devoe,
	o => ww_HDMIDATA(7));

-- Location: IOOBUF_X68_Y16_N22
\HDMIDATA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(8),
	devoe => ww_devoe,
	o => ww_HDMIDATA(8));

-- Location: IOOBUF_X68_Y24_N5
\HDMIDATA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(9),
	devoe => ww_devoe,
	o => ww_HDMIDATA(9));

-- Location: IOOBUF_X68_Y17_N5
\HDMIDATA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(10),
	devoe => ww_devoe,
	o => ww_HDMIDATA(10));

-- Location: IOOBUF_X68_Y19_N22
\HDMIDATA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(11),
	devoe => ww_devoe,
	o => ww_HDMIDATA(11));

-- Location: IOOBUF_X68_Y26_N22
\HDMIDATA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(12),
	devoe => ww_devoe,
	o => ww_HDMIDATA(12));

-- Location: IOOBUF_X68_Y17_N22
\HDMIDATA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(13),
	devoe => ww_devoe,
	o => ww_HDMIDATA(13));

-- Location: IOOBUF_X68_Y27_N5
\HDMIDATA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(14),
	devoe => ww_devoe,
	o => ww_HDMIDATA(14));

-- Location: IOOBUF_X68_Y27_N22
\HDMIDATA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(15),
	devoe => ww_devoe,
	o => ww_HDMIDATA(15));

-- Location: IOOBUF_X68_Y26_N5
\HDMIDATA[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(16),
	devoe => ww_devoe,
	o => ww_HDMIDATA(16));

-- Location: IOOBUF_X68_Y19_N5
\HDMIDATA[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(17),
	devoe => ww_devoe,
	o => ww_HDMIDATA(17));

-- Location: IOOBUF_X68_Y24_N22
\HDMIDATA[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(18),
	devoe => ww_devoe,
	o => ww_HDMIDATA(18));

-- Location: IOOBUF_X68_Y22_N79
\HDMIDATA[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(19),
	devoe => ww_devoe,
	o => ww_HDMIDATA(19));

-- Location: IOOBUF_X68_Y16_N39
\HDMIDATA[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(20),
	devoe => ww_devoe,
	o => ww_HDMIDATA(20));

-- Location: IOOBUF_X68_Y16_N56
\HDMIDATA[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(21),
	devoe => ww_devoe,
	o => ww_HDMIDATA(21));

-- Location: IOOBUF_X68_Y17_N56
\HDMIDATA[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(22),
	devoe => ww_devoe,
	o => ww_HDMIDATA(22));

-- Location: IOOBUF_X68_Y17_N39
\HDMIDATA[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HDMI|HDMIDATA\(23),
	devoe => ww_devoe,
	o => ww_HDMIDATA(23));

-- Location: IOOBUF_X38_Y61_N19
\SDA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \I2C|I2C_inst|SDA~reg0_q\,
	oe => \I2C|I2C_inst|SDA~en_q\,
	devoe => ww_devoe,
	o => ww_SDA);

-- Location: IOIBUF_X38_Y61_N1
\CLK1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK1,
	o => \CLK1~input_o\);

-- Location: PLLREFCLKSELECT_X68_Y60_N0
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
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
	clkin => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: IOIBUF_X68_Y12_N55
\RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FRACTIONALPLL_X68_Y54_N0
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "none",
	nreset_invert => "true",
	output_clock_frequency => "320.0 mhz",
	pll_atb => 0,
	pll_bwctrl => 6000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 20,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "m_cnt",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 16,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 16,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 2,
	pll_m_cnt_prst => 4,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 3,
	pll_n_cnt_lo_div => 2,
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
	coreclkfb => \pll_inst|pll_inst|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => \ALT_INV_RESET~input_o\,
	refclkin => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \pll_inst|pll_inst|altera_pll_i|fboutclk_wire\(0),
	tclk => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X68_Y58_N0
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X68_Y59_N1
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 4,
	dprio0_cnt_lo_div => 4,
	dprio0_cnt_odd_div_even_duty_en => "false",
	duty_cycle => 50,
	output_clock_frequency => "40.0 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 2)
-- pragma translate_on
PORT MAP (
	nen0 => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN2\,
	tclk0 => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \pll_inst|pll_inst|altera_pll_i|outclk_wire\(0));

-- Location: CLKCTRL_G8
\pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \pll_inst|pll_inst|altera_pll_i|outclk_wire\(0),
	outclk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\);

-- Location: LABCELL_X64_Y18_N6
\I2C|I2C_inst|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Equal0~1_combout\ = ( !\I2C|I2C_inst|SCL_count\(10) & ( !\I2C|I2C_inst|SCL_count\(9) & ( (!\I2C|I2C_inst|SCL_count\(13) & (!\I2C|I2C_inst|SCL_count\(12) & (!\I2C|I2C_inst|SCL_count\(11) & !\I2C|I2C_inst|SCL_count\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count\(13),
	datab => \I2C|I2C_inst|ALT_INV_SCL_count\(12),
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(11),
	datad => \I2C|I2C_inst|ALT_INV_SCL_count\(14),
	datae => \I2C|I2C_inst|ALT_INV_SCL_count\(10),
	dataf => \I2C|I2C_inst|ALT_INV_SCL_count\(9),
	combout => \I2C|I2C_inst|Equal0~1_combout\);

-- Location: LABCELL_X64_Y16_N3
\I2C|I2C_inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~41_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(21) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~46\ ))
-- \I2C|I2C_inst|Add0~42\ = CARRY(( \I2C|I2C_inst|SCL_count\(21) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count\(21),
	cin => \I2C|I2C_inst|Add0~46\,
	sumout => \I2C|I2C_inst|Add0~41_sumout\,
	cout => \I2C|I2C_inst|Add0~42\);

-- Location: LABCELL_X64_Y16_N6
\I2C|I2C_inst|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~109_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(22) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~42\ ))
-- \I2C|I2C_inst|Add0~110\ = CARRY(( \I2C|I2C_inst|SCL_count\(22) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C|I2C_inst|ALT_INV_SCL_count\(22),
	cin => \I2C|I2C_inst|Add0~42\,
	sumout => \I2C|I2C_inst|Add0~109_sumout\,
	cout => \I2C|I2C_inst|Add0~110\);

-- Location: LABCELL_X64_Y17_N0
\I2C|I2C_inst|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~121_sumout\ = SUM(( !\I2C|I2C_inst|SCL_count\(0) ) + ( VCC ) + ( !VCC ))
-- \I2C|I2C_inst|Add0~122\ = CARRY(( !\I2C|I2C_inst|SCL_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(0),
	cin => GND,
	sumout => \I2C|I2C_inst|Add0~121_sumout\,
	cout => \I2C|I2C_inst|Add0~122\);

-- Location: LABCELL_X61_Y18_N30
\I2C|I2C_inst|Selector40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector40~0_combout\ = ( \I2C|I2C_inst|SCL_state~q\ & ( \I2C|I2C_inst|curr_state.start~q\ ) ) # ( !\I2C|I2C_inst|SCL_state~q\ & ( \I2C|I2C_inst|curr_state.start~q\ & ( \I2C|I2C_inst|Equal0~6_combout\ ) ) ) # ( \I2C|I2C_inst|SCL_state~q\ & ( 
-- !\I2C|I2C_inst|curr_state.start~q\ & ( (!\I2C|I2C_inst|Equal0~6_combout\ & (((\I2C|I2C_inst|curr_state.ack~q\) # (\I2C|I2C_inst|curr_state.stop~q\)) # (\I2C|I2C_inst|curr_state.sending~q\))) ) ) ) # ( !\I2C|I2C_inst|SCL_state~q\ & ( 
-- !\I2C|I2C_inst|curr_state.start~q\ & ( (\I2C|I2C_inst|Equal0~6_combout\ & ((\I2C|I2C_inst|curr_state.ack~q\) # (\I2C|I2C_inst|curr_state.sending~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011010011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_curr_state.sending~q\,
	datab => \I2C|I2C_inst|ALT_INV_Equal0~6_combout\,
	datac => \I2C|I2C_inst|ALT_INV_curr_state.stop~q\,
	datad => \I2C|I2C_inst|ALT_INV_curr_state.ack~q\,
	datae => \I2C|I2C_inst|ALT_INV_SCL_state~q\,
	dataf => \I2C|I2C_inst|ALT_INV_curr_state.start~q\,
	combout => \I2C|I2C_inst|Selector40~0_combout\);

-- Location: FF_X61_Y18_N32
\I2C|I2C_inst|SCL_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector40~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_state~q\);

-- Location: IOIBUF_X38_Y61_N18
\SDA~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDA,
	o => \SDA~input_o\);

-- Location: LABCELL_X63_Y19_N48
\I2C|I2C_inst|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector1~0_combout\ = ( !\I2C|I2C_inst|curr_state.ack~q\ & ( (((!\I2C|I2C_inst|curr_state.idle~q\)) # (\I2C|I2C_inst|ACK_N~q\)) ) ) # ( \I2C|I2C_inst|curr_state.ack~q\ & ( (!\I2C|I2C_inst|SCL_count\(0) & (\I2C|I2C_inst|ACK_N~q\)) # 
-- (\I2C|I2C_inst|SCL_count\(0) & ((!\I2C|I2C_inst|SCL_state~q\ & ((!\I2C|I2C_inst|Equal6~1_combout\ & (\I2C|I2C_inst|ACK_N~q\)) # (\I2C|I2C_inst|Equal6~1_combout\ & ((\SDA~input_o\))))) # (\I2C|I2C_inst|SCL_state~q\ & (\I2C|I2C_inst|ACK_N~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111001111110011001100110011001111110011111100110010011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count\(0),
	datab => \I2C|I2C_inst|ALT_INV_ACK_N~q\,
	datac => \ALT_INV_SDA~input_o\,
	datad => \I2C|I2C_inst|ALT_INV_SCL_state~q\,
	datae => \I2C|I2C_inst|ALT_INV_curr_state.ack~q\,
	dataf => \I2C|I2C_inst|ALT_INV_Equal6~1_combout\,
	datag => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	combout => \I2C|I2C_inst|Selector1~0_combout\);

-- Location: FF_X63_Y19_N50
\I2C|I2C_inst|ACK_N\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector1~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|ACK_N~q\);

-- Location: LABCELL_X63_Y19_N0
\I2C|I2C_inst|Selector41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector41~0_combout\ = ( \I2C|I2C_inst|COMP_SEQ~q\ & ( \I2C|I2C_inst|curr_state.idle~q\ ) ) # ( !\I2C|I2C_inst|COMP_SEQ~q\ & ( \I2C|I2C_inst|curr_state.idle~q\ & ( (\I2C|I2C_inst|SCL_count\(0) & (!\I2C|I2C_inst|SCL_state~q\ & 
-- (\I2C|I2C_inst|Equal6~1_combout\ & \I2C|I2C_inst|curr_state.stop~q\))) ) ) ) # ( \I2C|I2C_inst|COMP_SEQ~q\ & ( !\I2C|I2C_inst|curr_state.idle~q\ & ( \I2C|I2C_inst|curr_state.stop~q\ ) ) ) # ( !\I2C|I2C_inst|COMP_SEQ~q\ & ( 
-- !\I2C|I2C_inst|curr_state.idle~q\ & ( (\I2C|I2C_inst|SCL_count\(0) & (!\I2C|I2C_inst|SCL_state~q\ & (\I2C|I2C_inst|Equal6~1_combout\ & \I2C|I2C_inst|curr_state.stop~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000001111111100000000000001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count\(0),
	datab => \I2C|I2C_inst|ALT_INV_SCL_state~q\,
	datac => \I2C|I2C_inst|ALT_INV_Equal6~1_combout\,
	datad => \I2C|I2C_inst|ALT_INV_curr_state.stop~q\,
	datae => \I2C|I2C_inst|ALT_INV_COMP_SEQ~q\,
	dataf => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	combout => \I2C|I2C_inst|Selector41~0_combout\);

-- Location: FF_X63_Y19_N2
\I2C|I2C_inst|COMP_SEQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector41~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|COMP_SEQ~q\);

-- Location: FF_X61_Y19_N7
\I2C|state.ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \I2C|Selector7~0_combout\,
	clrn => \RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.ack~q\);

-- Location: LABCELL_X61_Y19_N9
\I2C|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Selector7~0_combout\ = ( \I2C|state.ack~q\ & ( \I2C|state.send~q\ ) ) # ( !\I2C|state.ack~q\ & ( \I2C|state.send~q\ ) ) # ( \I2C|state.ack~q\ & ( !\I2C|state.send~q\ & ( !\I2C|I2C_inst|COMP_SEQ~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_COMP_SEQ~q\,
	datae => \I2C|ALT_INV_state.ack~q\,
	dataf => \I2C|ALT_INV_state.send~q\,
	combout => \I2C|Selector7~0_combout\);

-- Location: LABCELL_X61_Y19_N27
\I2C|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Selector5~0_combout\ = (\I2C|I2C_inst|COMP_SEQ~q\ & \I2C|state.ack~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_COMP_SEQ~q\,
	datad => \I2C|ALT_INV_state.ack~q\,
	combout => \I2C|Selector5~0_combout\);

-- Location: LABCELL_X61_Y19_N24
\I2C|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Selector4~0_combout\ = ( \I2C|Selector5~0_combout\ & ( (!\I2C|I2C_inst|ACK_N~q\ & ((!\I2C|index\(0)) # (\I2C|Selector7~0_combout\))) # (\I2C|I2C_inst|ACK_N~q\ & ((\I2C|index\(0)))) ) ) # ( !\I2C|Selector5~0_combout\ & ( (\I2C|Selector7~0_combout\ & 
-- \I2C|index\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111001100001111111100110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C|I2C_inst|ALT_INV_ACK_N~q\,
	datac => \I2C|ALT_INV_Selector7~0_combout\,
	datad => \I2C|ALT_INV_index\(0),
	dataf => \I2C|ALT_INV_Selector5~0_combout\,
	combout => \I2C|Selector4~0_combout\);

-- Location: FF_X61_Y19_N26
\I2C|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Selector4~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|index\(0));

-- Location: LABCELL_X61_Y19_N21
\I2C|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Selector3~0_combout\ = ( \I2C|Selector5~0_combout\ & ( (!\I2C|index\(0) & (((\I2C|index\(1))))) # (\I2C|index\(0) & ((!\I2C|I2C_inst|ACK_N~q\ & ((!\I2C|index\(1)) # (\I2C|Selector7~0_combout\))) # (\I2C|I2C_inst|ACK_N~q\ & ((\I2C|index\(1)))))) ) ) # 
-- ( !\I2C|Selector5~0_combout\ & ( (\I2C|Selector7~0_combout\ & \I2C|index\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101000100101111110100010010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_index\(0),
	datab => \I2C|I2C_inst|ALT_INV_ACK_N~q\,
	datac => \I2C|ALT_INV_Selector7~0_combout\,
	datad => \I2C|ALT_INV_index\(1),
	dataf => \I2C|ALT_INV_Selector5~0_combout\,
	combout => \I2C|Selector3~0_combout\);

-- Location: FF_X61_Y19_N23
\I2C|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Selector3~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|index\(1));

-- Location: LABCELL_X61_Y19_N12
\I2C|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Selector2~0_combout\ = ( \I2C|index\(2) & ( \I2C|Selector5~0_combout\ & ( (!\I2C|index\(0)) # (((!\I2C|index\(1)) # (\I2C|Selector7~0_combout\)) # (\I2C|I2C_inst|ACK_N~q\)) ) ) ) # ( !\I2C|index\(2) & ( \I2C|Selector5~0_combout\ & ( (\I2C|index\(0) & 
-- (!\I2C|I2C_inst|ACK_N~q\ & \I2C|index\(1))) ) ) ) # ( \I2C|index\(2) & ( !\I2C|Selector5~0_combout\ & ( \I2C|Selector7~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000100000001001111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_index\(0),
	datab => \I2C|I2C_inst|ALT_INV_ACK_N~q\,
	datac => \I2C|ALT_INV_index\(1),
	datad => \I2C|ALT_INV_Selector7~0_combout\,
	datae => \I2C|ALT_INV_index\(2),
	dataf => \I2C|ALT_INV_Selector5~0_combout\,
	combout => \I2C|Selector2~0_combout\);

-- Location: FF_X61_Y19_N14
\I2C|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Selector2~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|index\(2));

-- Location: LABCELL_X61_Y19_N18
\I2C|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Add0~0_combout\ = ( \I2C|index\(2) & ( (\I2C|index\(0) & (!\I2C|I2C_inst|ACK_N~q\ & \I2C|index\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_index\(0),
	datab => \I2C|I2C_inst|ALT_INV_ACK_N~q\,
	datac => \I2C|ALT_INV_index\(1),
	dataf => \I2C|ALT_INV_index\(2),
	combout => \I2C|Add0~0_combout\);

-- Location: LABCELL_X61_Y19_N57
\I2C|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Selector1~0_combout\ = ( \I2C|Selector7~0_combout\ & ( ((\I2C|Selector5~0_combout\ & \I2C|Add0~0_combout\)) # (\I2C|index\(3)) ) ) # ( !\I2C|Selector7~0_combout\ & ( (\I2C|Selector5~0_combout\ & (!\I2C|Add0~0_combout\ $ (!\I2C|index\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_Selector5~0_combout\,
	datac => \I2C|ALT_INV_Add0~0_combout\,
	datad => \I2C|ALT_INV_index\(3),
	dataf => \I2C|ALT_INV_Selector7~0_combout\,
	combout => \I2C|Selector1~0_combout\);

-- Location: FF_X61_Y19_N59
\I2C|index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Selector1~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|index\(3));

-- Location: LABCELL_X61_Y19_N54
\I2C|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Selector0~0_combout\ = ( \I2C|index\(3) & ( (!\I2C|index\(4) & (\I2C|Selector5~0_combout\ & ((\I2C|Add0~0_combout\)))) # (\I2C|index\(4) & (((\I2C|Selector5~0_combout\ & !\I2C|Add0~0_combout\)) # (\I2C|Selector7~0_combout\))) ) ) # ( !\I2C|index\(3) 
-- & ( (\I2C|index\(4) & ((\I2C|Selector7~0_combout\) # (\I2C|Selector5~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000101011100110000010101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_Selector5~0_combout\,
	datab => \I2C|ALT_INV_Selector7~0_combout\,
	datac => \I2C|ALT_INV_Add0~0_combout\,
	datad => \I2C|ALT_INV_index\(4),
	dataf => \I2C|ALT_INV_index\(3),
	combout => \I2C|Selector0~0_combout\);

-- Location: FF_X61_Y19_N56
\I2C|index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Selector0~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|index\(4));

-- Location: LABCELL_X61_Y19_N3
\I2C|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Equal0~0_combout\ = ( \I2C|index\(2) & ( ((!\I2C|index\(1)) # ((!\I2C|index\(3)) # (!\I2C|index\(4)))) # (\I2C|index\(0)) ) ) # ( !\I2C|index\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_index\(0),
	datab => \I2C|ALT_INV_index\(1),
	datac => \I2C|ALT_INV_index\(3),
	datad => \I2C|ALT_INV_index\(4),
	dataf => \I2C|ALT_INV_index\(2),
	combout => \I2C|Equal0~0_combout\);

-- Location: IOIBUF_X46_Y0_N18
\START~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_START,
	o => \START~input_o\);

-- Location: LABCELL_X59_Y7_N54
\pulse_inst|stat~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_inst|stat~7_combout\ = ( !\pulse_inst|op~q\ & ( !\START~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_START~input_o\,
	dataf => \pulse_inst|ALT_INV_op~q\,
	combout => \pulse_inst|stat~7_combout\);

-- Location: FF_X59_Y7_N56
\pulse_inst|stat.ZERO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \pulse_inst|stat~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_inst|stat.ZERO~q\);

-- Location: LABCELL_X59_Y7_N27
\pulse_inst|op~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_inst|op~1_combout\ = ( \pulse_inst|stat.ZERO~q\ & ( !\START~input_o\ ) ) # ( !\pulse_inst|stat.ZERO~q\ & ( (!\START~input_o\ & \pulse_inst|op~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_START~input_o\,
	datad => \pulse_inst|ALT_INV_op~q\,
	dataf => \pulse_inst|ALT_INV_stat.ZERO~q\,
	combout => \pulse_inst|op~1_combout\);

-- Location: FF_X59_Y7_N29
\pulse_inst|op\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \pulse_inst|op~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_inst|op~q\);

-- Location: LABCELL_X59_Y7_N24
\pulse_inst|stat.ONE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_inst|stat.ONE~0_combout\ = ( \pulse_inst|op~q\ & ( \pulse_inst|stat.ONE~q\ ) ) # ( !\pulse_inst|op~q\ & ( \START~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_START~input_o\,
	datad => \pulse_inst|ALT_INV_stat.ONE~q\,
	dataf => \pulse_inst|ALT_INV_op~q\,
	combout => \pulse_inst|stat.ONE~0_combout\);

-- Location: FF_X59_Y7_N26
\pulse_inst|stat.ONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \pulse_inst|stat.ONE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_inst|stat.ONE~q\);

-- Location: LABCELL_X59_Y7_N15
\pulse_inst|stat~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_inst|stat~6_combout\ = ( \pulse_inst|op~q\ & ( \pulse_inst|stat.ONE~q\ ) ) # ( !\pulse_inst|op~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pulse_inst|ALT_INV_stat.ONE~q\,
	dataf => \pulse_inst|ALT_INV_op~q\,
	combout => \pulse_inst|stat~6_combout\);

-- Location: FF_X59_Y7_N17
\pulse_inst|stat.WAIT0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \pulse_inst|stat~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_inst|stat.WAIT0~q\);

-- Location: LABCELL_X59_Y7_N12
\pulse_inst|pulse~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pulse_inst|pulse~1_combout\ = ( \pulse_inst|stat.ZERO~q\ & ( \pulse_inst|stat.WAIT0~q\ ) ) # ( !\pulse_inst|stat.ZERO~q\ & ( (\pulse_inst|stat.WAIT0~q\ & \pulse_inst|pulse~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pulse_inst|ALT_INV_stat.WAIT0~q\,
	datad => \pulse_inst|ALT_INV_pulse~q\,
	dataf => \pulse_inst|ALT_INV_stat.ZERO~q\,
	combout => \pulse_inst|pulse~1_combout\);

-- Location: FF_X59_Y7_N13
\pulse_inst|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \pulse_inst|pulse~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse_inst|pulse~q\);

-- Location: LABCELL_X61_Y19_N30
\I2C|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Selector5~1_combout\ = ( \I2C|Selector5~0_combout\ & ( (\I2C|Equal0~0_combout\ & ((\I2C|state.idle~q\) # (\pulse_inst|pulse~q\))) ) ) # ( !\I2C|Selector5~0_combout\ & ( (\I2C|state.idle~q\) # (\pulse_inst|pulse~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100010001010101010001000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_Equal0~0_combout\,
	datab => \pulse_inst|ALT_INV_pulse~q\,
	datad => \I2C|ALT_INV_state.idle~q\,
	dataf => \I2C|ALT_INV_Selector5~0_combout\,
	combout => \I2C|Selector5~1_combout\);

-- Location: FF_X61_Y19_N31
\I2C|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Selector5~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.idle~q\);

-- Location: LABCELL_X61_Y19_N33
\I2C|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Selector6~0_combout\ = ( \I2C|state.idle~q\ & ( (\I2C|Equal0~0_combout\ & \I2C|Selector5~0_combout\) ) ) # ( !\I2C|state.idle~q\ & ( ((\I2C|Equal0~0_combout\ & \I2C|Selector5~0_combout\)) # (\pulse_inst|pulse~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111001100110111011100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_Equal0~0_combout\,
	datab => \pulse_inst|ALT_INV_pulse~q\,
	datad => \I2C|ALT_INV_Selector5~0_combout\,
	dataf => \I2C|ALT_INV_state.idle~q\,
	combout => \I2C|Selector6~0_combout\);

-- Location: FF_X61_Y19_N35
\I2C|state.send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Selector6~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|state.send~q\);

-- Location: FF_X61_Y18_N35
\I2C|START_SEQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \I2C|state.send~q\,
	sload => VCC,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|START_SEQ~q\);

-- Location: FF_X63_Y17_N25
\I2C|I2C_inst|curr_state.stop~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector54~6_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|curr_state.stop~DUPLICATE_q\);

-- Location: LABCELL_X63_Y17_N0
\I2C|I2C_inst|Selector50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector50~0_combout\ = ( \I2C|I2C_inst|curr_state.idle~q\ & ( \I2C|I2C_inst|curr_state.stop~DUPLICATE_q\ & ( ((!\I2C|I2C_inst|SCL_count\(0)) # (!\I2C|I2C_inst|Equal6~1_combout\)) # (\I2C|I2C_inst|SCL_state~q\) ) ) ) # ( 
-- !\I2C|I2C_inst|curr_state.idle~q\ & ( \I2C|I2C_inst|curr_state.stop~DUPLICATE_q\ & ( (\I2C|START_SEQ~q\ & (((!\I2C|I2C_inst|SCL_count\(0)) # (!\I2C|I2C_inst|Equal6~1_combout\)) # (\I2C|I2C_inst|SCL_state~q\))) ) ) ) # ( \I2C|I2C_inst|curr_state.idle~q\ & 
-- ( !\I2C|I2C_inst|curr_state.stop~DUPLICATE_q\ ) ) # ( !\I2C|I2C_inst|curr_state.idle~q\ & ( !\I2C|I2C_inst|curr_state.stop~DUPLICATE_q\ & ( \I2C|START_SEQ~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000111111011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_state~q\,
	datab => \I2C|I2C_inst|ALT_INV_SCL_count\(0),
	datac => \I2C|I2C_inst|ALT_INV_Equal6~1_combout\,
	datad => \I2C|ALT_INV_START_SEQ~q\,
	datae => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	dataf => \I2C|I2C_inst|ALT_INV_curr_state.stop~DUPLICATE_q\,
	combout => \I2C|I2C_inst|Selector50~0_combout\);

-- Location: FF_X63_Y17_N1
\I2C|I2C_inst|curr_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector50~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|curr_state.idle~q\);

-- Location: LABCELL_X63_Y17_N57
\I2C|I2C_inst|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector33~0_combout\ = ( \I2C|I2C_inst|curr_state.idle~q\ & ( (!\I2C|I2C_inst|Add0~121_sumout\ & ((!\I2C|I2C_inst|Equal0~6_combout\) # (\I2C|I2C_inst|SCL_count[7]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011101000000001101110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count[7]~0_combout\,
	datab => \I2C|I2C_inst|ALT_INV_Equal0~6_combout\,
	datad => \I2C|I2C_inst|ALT_INV_Add0~121_sumout\,
	dataf => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	combout => \I2C|I2C_inst|Selector33~0_combout\);

-- Location: FF_X63_Y17_N59
\I2C|I2C_inst|SCL_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector33~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(0));

-- Location: LABCELL_X61_Y18_N51
\I2C|I2C_inst|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|process_0~1_combout\ = ( \I2C|I2C_inst|SCL_state~q\ & ( (!\I2C|I2C_inst|Equal6~1_combout\) # (!\I2C|I2C_inst|SCL_count\(0)) ) ) # ( !\I2C|I2C_inst|SCL_state~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_Equal6~1_combout\,
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(0),
	dataf => \I2C|I2C_inst|ALT_INV_SCL_state~q\,
	combout => \I2C|I2C_inst|process_0~1_combout\);

-- Location: FF_X61_Y18_N25
\I2C|I2C_inst|curr_state.sending~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector52~7_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|curr_state.sending~DUPLICATE_q\);

-- Location: LABCELL_X63_Y19_N36
\I2C|I2C_inst|Selector37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector37~0_combout\ = ( \I2C|I2C_inst|Equal1~0_combout\ & ( (\I2C|I2C_inst|index\(0) & ((!\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & (\I2C|I2C_inst|curr_state.idle~q\)) # (\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & 
-- ((\I2C|I2C_inst|process_0~1_combout\))))) ) ) # ( !\I2C|I2C_inst|Equal1~0_combout\ & ( (!\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & (\I2C|I2C_inst|curr_state.idle~q\ & ((\I2C|I2C_inst|index\(0))))) # (\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & 
-- ((!\I2C|I2C_inst|process_0~1_combout\ $ (\I2C|I2C_inst|index\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001000111001100000100011100000000010001110000000001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	datab => \I2C|I2C_inst|ALT_INV_curr_state.sending~DUPLICATE_q\,
	datac => \I2C|I2C_inst|ALT_INV_process_0~1_combout\,
	datad => \I2C|I2C_inst|ALT_INV_index\(0),
	dataf => \I2C|I2C_inst|ALT_INV_Equal1~0_combout\,
	combout => \I2C|I2C_inst|Selector37~0_combout\);

-- Location: FF_X63_Y19_N38
\I2C|I2C_inst|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector37~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|index\(0));

-- Location: LABCELL_X63_Y19_N24
\I2C|I2C_inst|Selector36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector36~0_combout\ = ( \I2C|I2C_inst|index\(1) & ( \I2C|I2C_inst|index\(0) & ( (!\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & (((\I2C|I2C_inst|curr_state.idle~q\)))) # (\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & 
-- ((!\I2C|I2C_inst|Equal1~0_combout\) # ((\I2C|I2C_inst|process_0~1_combout\)))) ) ) ) # ( \I2C|I2C_inst|index\(1) & ( !\I2C|I2C_inst|index\(0) & ( (!\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & ((\I2C|I2C_inst|curr_state.idle~q\))) # 
-- (\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & (\I2C|I2C_inst|process_0~1_combout\)) ) ) ) # ( !\I2C|I2C_inst|index\(1) & ( !\I2C|I2C_inst|index\(0) & ( (\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & (!\I2C|I2C_inst|Equal1~0_combout\ & 
-- !\I2C|I2C_inst|process_0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000001011010111100000000000000000100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_curr_state.sending~DUPLICATE_q\,
	datab => \I2C|I2C_inst|ALT_INV_Equal1~0_combout\,
	datac => \I2C|I2C_inst|ALT_INV_process_0~1_combout\,
	datad => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	datae => \I2C|I2C_inst|ALT_INV_index\(1),
	dataf => \I2C|I2C_inst|ALT_INV_index\(0),
	combout => \I2C|I2C_inst|Selector36~0_combout\);

-- Location: FF_X63_Y19_N26
\I2C|I2C_inst|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector36~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|index\(1));

-- Location: LABCELL_X63_Y19_N57
\I2C|I2C_inst|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add1~0_combout\ = ( \I2C|I2C_inst|index\(1) & ( \I2C|I2C_inst|index\(2) ) ) # ( !\I2C|I2C_inst|index\(1) & ( !\I2C|I2C_inst|index\(2) $ (\I2C|I2C_inst|index\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_index\(2),
	datad => \I2C|I2C_inst|ALT_INV_index\(0),
	dataf => \I2C|I2C_inst|ALT_INV_index\(1),
	combout => \I2C|I2C_inst|Add1~0_combout\);

-- Location: LABCELL_X63_Y19_N6
\I2C|I2C_inst|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector35~0_combout\ = ( \I2C|I2C_inst|index\(2) & ( \I2C|I2C_inst|Equal1~0_combout\ & ( (!\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & ((\I2C|I2C_inst|curr_state.idle~q\))) # (\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & 
-- (\I2C|I2C_inst|process_0~1_combout\)) ) ) ) # ( \I2C|I2C_inst|index\(2) & ( !\I2C|I2C_inst|Equal1~0_combout\ & ( (!\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & (((\I2C|I2C_inst|curr_state.idle~q\)))) # (\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & 
-- (((\I2C|I2C_inst|process_0~1_combout\)) # (\I2C|I2C_inst|Add1~0_combout\))) ) ) ) # ( !\I2C|I2C_inst|index\(2) & ( !\I2C|I2C_inst|Equal1~0_combout\ & ( (\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & (\I2C|I2C_inst|Add1~0_combout\ & 
-- !\I2C|I2C_inst|process_0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000101011011111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_curr_state.sending~DUPLICATE_q\,
	datab => \I2C|I2C_inst|ALT_INV_Add1~0_combout\,
	datac => \I2C|I2C_inst|ALT_INV_process_0~1_combout\,
	datad => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	datae => \I2C|I2C_inst|ALT_INV_index\(2),
	dataf => \I2C|I2C_inst|ALT_INV_Equal1~0_combout\,
	combout => \I2C|I2C_inst|Selector35~0_combout\);

-- Location: FF_X63_Y19_N8
\I2C|I2C_inst|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector35~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|index\(2));

-- Location: LABCELL_X63_Y19_N42
\I2C|I2C_inst|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector34~0_combout\ = ( !\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & ( ((!\I2C|I2C_inst|index\(3)) # ((!\I2C|I2C_inst|curr_state.idle~q\))) ) ) # ( \I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & ( !\I2C|I2C_inst|index\(3) $ 
-- (((!\I2C|I2C_inst|process_0~1_combout\ & (!\I2C|I2C_inst|index\(0) & (!\I2C|I2C_inst|index\(2) & !\I2C|I2C_inst|index\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111110011111100011011001100110011111100111111001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_process_0~1_combout\,
	datab => \I2C|I2C_inst|ALT_INV_index\(3),
	datac => \I2C|I2C_inst|ALT_INV_index\(0),
	datad => \I2C|I2C_inst|ALT_INV_index\(2),
	datae => \I2C|I2C_inst|ALT_INV_curr_state.sending~DUPLICATE_q\,
	dataf => \I2C|I2C_inst|ALT_INV_index\(1),
	datag => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	combout => \I2C|I2C_inst|Selector34~0_combout\);

-- Location: LABCELL_X63_Y19_N39
\I2C|I2C_inst|index[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|index[3]~0_combout\ = ( !\I2C|I2C_inst|Selector34~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \I2C|I2C_inst|ALT_INV_Selector34~0_combout\,
	combout => \I2C|I2C_inst|index[3]~0_combout\);

-- Location: FF_X63_Y19_N41
\I2C|I2C_inst|index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|index[3]~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|index\(3));

-- Location: LABCELL_X63_Y19_N21
\I2C|I2C_inst|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Equal1~0_combout\ = ( !\I2C|I2C_inst|index\(1) & ( (\I2C|I2C_inst|index\(3) & (!\I2C|I2C_inst|index\(2) & !\I2C|I2C_inst|index\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C|I2C_inst|ALT_INV_index\(3),
	datac => \I2C|I2C_inst|ALT_INV_index\(2),
	datad => \I2C|I2C_inst|ALT_INV_index\(0),
	dataf => \I2C|I2C_inst|ALT_INV_index\(1),
	combout => \I2C|I2C_inst|Equal1~0_combout\);

-- Location: LABCELL_X61_Y18_N21
\I2C|I2C_inst|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|process_0~0_combout\ = ( !\I2C|I2C_inst|SCL_count\(0) & ( \I2C|I2C_inst|SCL_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_SCL_state~q\,
	dataf => \I2C|I2C_inst|ALT_INV_SCL_count\(0),
	combout => \I2C|I2C_inst|process_0~0_combout\);

-- Location: LABCELL_X61_Y17_N24
\I2C|I2C_inst|Selector39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector39~0_combout\ = ( \I2C|I2C_inst|byte_num\(0) & ( \I2C|I2C_inst|byte_num\(1) & ( (!\I2C|I2C_inst|curr_state.ack~q\ & (((\I2C|I2C_inst|curr_state.idle~q\)))) # (\I2C|I2C_inst|curr_state.ack~q\ & ((!\I2C|I2C_inst|Equal6~1_combout\) # 
-- ((!\I2C|I2C_inst|process_0~0_combout\)))) ) ) ) # ( \I2C|I2C_inst|byte_num\(0) & ( !\I2C|I2C_inst|byte_num\(1) & ( (\I2C|I2C_inst|curr_state.idle~q\) # (\I2C|I2C_inst|curr_state.ack~q\) ) ) ) # ( !\I2C|I2C_inst|byte_num\(0) & ( !\I2C|I2C_inst|byte_num\(1) 
-- & ( (\I2C|I2C_inst|curr_state.ack~q\ & (\I2C|I2C_inst|Equal6~1_combout\ & \I2C|I2C_inst|process_0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001010101011111111100000000000000000101010011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_curr_state.ack~q\,
	datab => \I2C|I2C_inst|ALT_INV_Equal6~1_combout\,
	datac => \I2C|I2C_inst|ALT_INV_process_0~0_combout\,
	datad => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	datae => \I2C|I2C_inst|ALT_INV_byte_num\(0),
	dataf => \I2C|I2C_inst|ALT_INV_byte_num\(1),
	combout => \I2C|I2C_inst|Selector39~0_combout\);

-- Location: FF_X61_Y17_N26
\I2C|I2C_inst|byte_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector39~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|byte_num\(0));

-- Location: LABCELL_X61_Y18_N0
\I2C|I2C_inst|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Equal2~0_combout\ = ( \I2C|I2C_inst|byte_num\(1) & ( !\I2C|I2C_inst|byte_num\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C|I2C_inst|ALT_INV_byte_num\(0),
	dataf => \I2C|I2C_inst|ALT_INV_byte_num\(1),
	combout => \I2C|I2C_inst|Equal2~0_combout\);

-- Location: LABCELL_X63_Y19_N12
\I2C|I2C_inst|Selector57~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector57~0_combout\ = ( \I2C|I2C_inst|Equal2~0_combout\ & ( \I2C|I2C_inst|Equal6~1_combout\ ) ) # ( !\I2C|I2C_inst|Equal2~0_combout\ & ( \I2C|I2C_inst|Equal6~1_combout\ & ( (!\I2C|I2C_inst|SCL_count\(0)) # 
-- ((!\I2C|I2C_inst|Equal1~0_combout\) # ((!\I2C|I2C_inst|SCL_state~q\) # (!\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\))) ) ) ) # ( \I2C|I2C_inst|Equal2~0_combout\ & ( !\I2C|I2C_inst|Equal6~1_combout\ ) ) # ( !\I2C|I2C_inst|Equal2~0_combout\ & ( 
-- !\I2C|I2C_inst|Equal6~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count\(0),
	datab => \I2C|I2C_inst|ALT_INV_Equal1~0_combout\,
	datac => \I2C|I2C_inst|ALT_INV_SCL_state~q\,
	datad => \I2C|I2C_inst|ALT_INV_curr_state.sending~DUPLICATE_q\,
	datae => \I2C|I2C_inst|ALT_INV_Equal2~0_combout\,
	dataf => \I2C|I2C_inst|ALT_INV_Equal6~1_combout\,
	combout => \I2C|I2C_inst|Selector57~0_combout\);

-- Location: LABCELL_X61_Y18_N18
\I2C|I2C_inst|Selector52~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector52~1_combout\ = ( \I2C|I2C_inst|Equal6~1_combout\ & ( (\I2C|I2C_inst|Equal5~0_combout\ & (\I2C|I2C_inst|process_0~0_combout\ & \I2C|I2C_inst|curr_state.ack~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C|I2C_inst|ALT_INV_Equal5~0_combout\,
	datac => \I2C|I2C_inst|ALT_INV_process_0~0_combout\,
	datad => \I2C|I2C_inst|ALT_INV_curr_state.ack~q\,
	dataf => \I2C|I2C_inst|ALT_INV_Equal6~1_combout\,
	combout => \I2C|I2C_inst|Selector52~1_combout\);

-- Location: LABCELL_X61_Y18_N45
\I2C|I2C_inst|Selector54~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector54~5_combout\ = ( \I2C|I2C_inst|Equal5~0_combout\ & ( (!\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & !\I2C|I2C_inst|curr_state.ack~q\) ) ) # ( !\I2C|I2C_inst|Equal5~0_combout\ & ( (!\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & 
-- ((!\I2C|I2C_inst|curr_state.ack~q\) # ((\I2C|I2C_inst|Equal6~1_combout\ & \I2C|I2C_inst|process_0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000100110000001100010011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_Equal6~1_combout\,
	datab => \I2C|I2C_inst|ALT_INV_curr_state.sending~DUPLICATE_q\,
	datac => \I2C|I2C_inst|ALT_INV_curr_state.ack~q\,
	datad => \I2C|I2C_inst|ALT_INV_process_0~0_combout\,
	dataf => \I2C|I2C_inst|ALT_INV_Equal5~0_combout\,
	combout => \I2C|I2C_inst|Selector54~5_combout\);

-- Location: LABCELL_X63_Y17_N15
\I2C|I2C_inst|Selector53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector53~0_combout\ = ( \I2C|I2C_inst|Equal1~0_combout\ & ( \I2C|I2C_inst|curr_state.ack~q\ & ( (!\I2C|I2C_inst|SCL_state~q\) # ((!\I2C|I2C_inst|SCL_count\(0)) # ((!\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\) # 
-- (!\I2C|I2C_inst|Equal6~1_combout\))) ) ) ) # ( !\I2C|I2C_inst|Equal1~0_combout\ & ( \I2C|I2C_inst|curr_state.ack~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_state~q\,
	datab => \I2C|I2C_inst|ALT_INV_SCL_count\(0),
	datac => \I2C|I2C_inst|ALT_INV_curr_state.sending~DUPLICATE_q\,
	datad => \I2C|I2C_inst|ALT_INV_Equal6~1_combout\,
	datae => \I2C|I2C_inst|ALT_INV_Equal1~0_combout\,
	dataf => \I2C|I2C_inst|ALT_INV_curr_state.ack~q\,
	combout => \I2C|I2C_inst|Selector53~0_combout\);

-- Location: LABCELL_X63_Y17_N18
\I2C|I2C_inst|Selector54~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector54~2_combout\ = ( \I2C|I2C_inst|curr_state.idle~q\ & ( !\I2C|I2C_inst|curr_state.start~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C|I2C_inst|ALT_INV_curr_state.start~q\,
	dataf => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	combout => \I2C|I2C_inst|Selector54~2_combout\);

-- Location: LABCELL_X61_Y17_N39
\I2C|I2C_inst|Selector52~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector52~4_combout\ = ( !\I2C|I2C_inst|byte_num\(1) & ( !\I2C|I2C_inst|byte_num\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_byte_num\(0),
	dataf => \I2C|I2C_inst|ALT_INV_byte_num\(1),
	combout => \I2C|I2C_inst|Selector52~4_combout\);

-- Location: LABCELL_X63_Y17_N42
\I2C|I2C_inst|Selector54~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector54~3_combout\ = ( !\I2C|I2C_inst|SCL_state~q\ & ( \I2C|I2C_inst|curr_state.stop~DUPLICATE_q\ & ( (\I2C|I2C_inst|Selector54~2_combout\ & (\I2C|I2C_inst|SCL_count\(0) & \I2C|I2C_inst|Equal6~1_combout\)) ) ) ) # ( 
-- \I2C|I2C_inst|SCL_state~q\ & ( !\I2C|I2C_inst|curr_state.stop~DUPLICATE_q\ & ( (\I2C|I2C_inst|Selector54~2_combout\ & \I2C|I2C_inst|Selector52~4_combout\) ) ) ) # ( !\I2C|I2C_inst|SCL_state~q\ & ( !\I2C|I2C_inst|curr_state.stop~DUPLICATE_q\ & ( 
-- (\I2C|I2C_inst|Selector54~2_combout\ & \I2C|I2C_inst|Selector52~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000001000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_Selector54~2_combout\,
	datab => \I2C|I2C_inst|ALT_INV_SCL_count\(0),
	datac => \I2C|I2C_inst|ALT_INV_Equal6~1_combout\,
	datad => \I2C|I2C_inst|ALT_INV_Selector52~4_combout\,
	datae => \I2C|I2C_inst|ALT_INV_SCL_state~q\,
	dataf => \I2C|I2C_inst|ALT_INV_curr_state.stop~DUPLICATE_q\,
	combout => \I2C|I2C_inst|Selector54~3_combout\);

-- Location: LABCELL_X63_Y17_N30
\I2C|I2C_inst|Selector54~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector54~4_combout\ = ( \I2C|START_SEQ~q\ & ( (!\I2C|I2C_inst|curr_state.idle~q\) # ((\I2C|I2C_inst|curr_state.start~q\ & \I2C|I2C_inst|Equal0~6_combout\)) ) ) # ( !\I2C|START_SEQ~q\ & ( (\I2C|I2C_inst|curr_state.idle~q\ & 
-- (\I2C|I2C_inst|curr_state.start~q\ & \I2C|I2C_inst|Equal0~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011110011001100111100000000000000111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	datac => \I2C|I2C_inst|ALT_INV_curr_state.start~q\,
	datad => \I2C|I2C_inst|ALT_INV_Equal0~6_combout\,
	datae => \I2C|ALT_INV_START_SEQ~q\,
	combout => \I2C|I2C_inst|Selector54~4_combout\);

-- Location: LABCELL_X63_Y17_N6
\I2C|I2C_inst|Selector53~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector53~1_combout\ = ( \I2C|I2C_inst|Selector54~3_combout\ & ( \I2C|I2C_inst|Selector54~4_combout\ & ( (!\I2C|I2C_inst|Selector52~1_combout\ & (!\I2C|I2C_inst|Selector54~5_combout\ & ((!\I2C|I2C_inst|Selector57~0_combout\) # 
-- (\I2C|I2C_inst|Selector53~0_combout\)))) ) ) ) # ( !\I2C|I2C_inst|Selector54~3_combout\ & ( \I2C|I2C_inst|Selector54~4_combout\ & ( (!\I2C|I2C_inst|Selector52~1_combout\ & (!\I2C|I2C_inst|Selector54~5_combout\ & ((!\I2C|I2C_inst|Selector57~0_combout\) # 
-- (\I2C|I2C_inst|Selector53~0_combout\)))) ) ) ) # ( \I2C|I2C_inst|Selector54~3_combout\ & ( !\I2C|I2C_inst|Selector54~4_combout\ & ( (!\I2C|I2C_inst|Selector52~1_combout\ & (!\I2C|I2C_inst|Selector54~5_combout\ & ((!\I2C|I2C_inst|Selector57~0_combout\) # 
-- (\I2C|I2C_inst|Selector53~0_combout\)))) ) ) ) # ( !\I2C|I2C_inst|Selector54~3_combout\ & ( !\I2C|I2C_inst|Selector54~4_combout\ & ( (!\I2C|I2C_inst|Selector52~1_combout\ & ((!\I2C|I2C_inst|Selector57~0_combout\) # (\I2C|I2C_inst|Selector53~0_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011001100100000001100000010000000110000001000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_Selector57~0_combout\,
	datab => \I2C|I2C_inst|ALT_INV_Selector52~1_combout\,
	datac => \I2C|I2C_inst|ALT_INV_Selector54~5_combout\,
	datad => \I2C|I2C_inst|ALT_INV_Selector53~0_combout\,
	datae => \I2C|I2C_inst|ALT_INV_Selector54~3_combout\,
	dataf => \I2C|I2C_inst|ALT_INV_Selector54~4_combout\,
	combout => \I2C|I2C_inst|Selector53~1_combout\);

-- Location: FF_X63_Y17_N8
\I2C|I2C_inst|curr_state.ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector53~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|curr_state.ack~q\);

-- Location: LABCELL_X61_Y17_N6
\I2C|I2C_inst|Selector38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector38~0_combout\ = ( \I2C|I2C_inst|byte_num\(1) & ( \I2C|I2C_inst|process_0~0_combout\ & ( (\I2C|I2C_inst|curr_state.idle~q\) # (\I2C|I2C_inst|curr_state.ack~q\) ) ) ) # ( !\I2C|I2C_inst|byte_num\(1) & ( 
-- \I2C|I2C_inst|process_0~0_combout\ & ( (\I2C|I2C_inst|curr_state.ack~q\ & (!\I2C|I2C_inst|byte_num\(0) & \I2C|I2C_inst|Equal6~1_combout\)) ) ) ) # ( \I2C|I2C_inst|byte_num\(1) & ( !\I2C|I2C_inst|process_0~0_combout\ & ( (\I2C|I2C_inst|curr_state.idle~q\) 
-- # (\I2C|I2C_inst|curr_state.ack~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111011100000000010100000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_curr_state.ack~q\,
	datab => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	datac => \I2C|I2C_inst|ALT_INV_byte_num\(0),
	datad => \I2C|I2C_inst|ALT_INV_Equal6~1_combout\,
	datae => \I2C|I2C_inst|ALT_INV_byte_num\(1),
	dataf => \I2C|I2C_inst|ALT_INV_process_0~0_combout\,
	combout => \I2C|I2C_inst|Selector38~0_combout\);

-- Location: FF_X61_Y17_N8
\I2C|I2C_inst|byte_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector38~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|byte_num\(1));

-- Location: LABCELL_X61_Y18_N15
\I2C|I2C_inst|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Equal5~0_combout\ = (\I2C|I2C_inst|byte_num\(1) & \I2C|I2C_inst|byte_num\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_byte_num\(1),
	datac => \I2C|I2C_inst|ALT_INV_byte_num\(0),
	combout => \I2C|I2C_inst|Equal5~0_combout\);

-- Location: LABCELL_X61_Y18_N48
\I2C|I2C_inst|Selector52~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector52~5_combout\ = ( !\I2C|I2C_inst|curr_state.start~q\ & ( (!\I2C|I2C_inst|Equal6~1_combout\) # (((!\I2C|I2C_inst|process_0~0_combout\) # (!\I2C|I2C_inst|curr_state.ack~q\)) # (\I2C|I2C_inst|Equal5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111011111111111111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_Equal6~1_combout\,
	datab => \I2C|I2C_inst|ALT_INV_Equal5~0_combout\,
	datac => \I2C|I2C_inst|ALT_INV_process_0~0_combout\,
	datad => \I2C|I2C_inst|ALT_INV_curr_state.ack~q\,
	dataf => \I2C|I2C_inst|ALT_INV_curr_state.start~q\,
	combout => \I2C|I2C_inst|Selector52~5_combout\);

-- Location: LABCELL_X61_Y18_N42
\I2C|I2C_inst|Selector56~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector56~0_combout\ = ( \I2C|I2C_inst|SCL_state~q\ & ( (\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & ((!\I2C|I2C_inst|Equal6~1_combout\) # ((!\I2C|I2C_inst|Equal1~0_combout\) # (!\I2C|I2C_inst|SCL_count\(0))))) ) ) # ( 
-- !\I2C|I2C_inst|SCL_state~q\ & ( \I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100100011001100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_Equal6~1_combout\,
	datab => \I2C|I2C_inst|ALT_INV_curr_state.sending~DUPLICATE_q\,
	datac => \I2C|I2C_inst|ALT_INV_Equal1~0_combout\,
	datad => \I2C|I2C_inst|ALT_INV_SCL_count\(0),
	dataf => \I2C|I2C_inst|ALT_INV_SCL_state~q\,
	combout => \I2C|I2C_inst|Selector56~0_combout\);

-- Location: LABCELL_X61_Y18_N3
\I2C|I2C_inst|Selector52~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector52~3_combout\ = ( \I2C|START_SEQ~q\ & ( !\I2C|I2C_inst|curr_state.idle~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	dataf => \I2C|ALT_INV_START_SEQ~q\,
	combout => \I2C|I2C_inst|Selector52~3_combout\);

-- Location: LABCELL_X63_Y19_N33
\I2C|I2C_inst|Selector52~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector52~2_combout\ = ( \I2C|I2C_inst|Equal6~1_combout\ & ( (\I2C|I2C_inst|SCL_count\(0) & (\I2C|I2C_inst|curr_state.stop~q\ & !\I2C|I2C_inst|SCL_state~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count\(0),
	datab => \I2C|I2C_inst|ALT_INV_curr_state.stop~q\,
	datad => \I2C|I2C_inst|ALT_INV_SCL_state~q\,
	dataf => \I2C|I2C_inst|ALT_INV_Equal6~1_combout\,
	combout => \I2C|I2C_inst|Selector52~2_combout\);

-- Location: LABCELL_X61_Y18_N54
\I2C|I2C_inst|Selector52~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector52~6_combout\ = ( \I2C|I2C_inst|curr_state.ack~q\ & ( (!\I2C|I2C_inst|Selector52~3_combout\ & (!\I2C|I2C_inst|curr_state.sending~q\ & \I2C|I2C_inst|Selector52~4_combout\)) ) ) # ( !\I2C|I2C_inst|curr_state.ack~q\ & ( 
-- (!\I2C|I2C_inst|Selector52~3_combout\ & (\I2C|I2C_inst|Equal0~6_combout\ & !\I2C|I2C_inst|curr_state.sending~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_Selector52~3_combout\,
	datab => \I2C|I2C_inst|ALT_INV_Equal0~6_combout\,
	datac => \I2C|I2C_inst|ALT_INV_curr_state.sending~q\,
	datad => \I2C|I2C_inst|ALT_INV_Selector52~4_combout\,
	dataf => \I2C|I2C_inst|ALT_INV_curr_state.ack~q\,
	combout => \I2C|I2C_inst|Selector52~6_combout\);

-- Location: LABCELL_X61_Y18_N24
\I2C|I2C_inst|Selector52~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector52~7_combout\ = ( \I2C|I2C_inst|Selector52~6_combout\ & ( \I2C|I2C_inst|Selector52~1_combout\ & ( !\I2C|I2C_inst|Selector52~2_combout\ ) ) ) # ( !\I2C|I2C_inst|Selector52~6_combout\ & ( \I2C|I2C_inst|Selector52~1_combout\ & ( 
-- !\I2C|I2C_inst|Selector52~2_combout\ ) ) ) # ( \I2C|I2C_inst|Selector52~6_combout\ & ( !\I2C|I2C_inst|Selector52~1_combout\ & ( (!\I2C|I2C_inst|Selector52~2_combout\ & ((!\I2C|I2C_inst|Selector52~5_combout\) # ((\I2C|I2C_inst|Selector56~0_combout\ & 
-- !\I2C|I2C_inst|Selector52~3_combout\)))) ) ) ) # ( !\I2C|I2C_inst|Selector52~6_combout\ & ( !\I2C|I2C_inst|Selector52~1_combout\ & ( (\I2C|I2C_inst|Selector56~0_combout\ & (!\I2C|I2C_inst|Selector52~3_combout\ & !\I2C|I2C_inst|Selector52~2_combout\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000101110100000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_Selector52~5_combout\,
	datab => \I2C|I2C_inst|ALT_INV_Selector56~0_combout\,
	datac => \I2C|I2C_inst|ALT_INV_Selector52~3_combout\,
	datad => \I2C|I2C_inst|ALT_INV_Selector52~2_combout\,
	datae => \I2C|I2C_inst|ALT_INV_Selector52~6_combout\,
	dataf => \I2C|I2C_inst|ALT_INV_Selector52~1_combout\,
	combout => \I2C|I2C_inst|Selector52~7_combout\);

-- Location: FF_X61_Y18_N26
\I2C|I2C_inst|curr_state.sending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector52~7_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|curr_state.sending~q\);

-- Location: LABCELL_X61_Y18_N57
\I2C|I2C_inst|Selector51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector51~0_combout\ = ( \I2C|I2C_inst|curr_state.start~q\ & ( (!\I2C|I2C_inst|Selector52~3_combout\ & \I2C|I2C_inst|Equal0~6_combout\) ) ) # ( !\I2C|I2C_inst|curr_state.start~q\ & ( !\I2C|I2C_inst|Selector52~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_Selector52~3_combout\,
	datab => \I2C|I2C_inst|ALT_INV_Equal0~6_combout\,
	dataf => \I2C|I2C_inst|ALT_INV_curr_state.start~q\,
	combout => \I2C|I2C_inst|Selector51~0_combout\);

-- Location: LABCELL_X61_Y18_N36
\I2C|I2C_inst|Selector51~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector51~1_combout\ = ( \I2C|I2C_inst|Equal1~0_combout\ & ( !\I2C|I2C_inst|Selector52~1_combout\ & ( (!\I2C|I2C_inst|Selector52~2_combout\ & (!\I2C|I2C_inst|Selector51~0_combout\ & ((!\I2C|I2C_inst|curr_state.sending~q\) # 
-- (\I2C|I2C_inst|process_0~1_combout\)))) ) ) ) # ( !\I2C|I2C_inst|Equal1~0_combout\ & ( !\I2C|I2C_inst|Selector52~1_combout\ & ( (!\I2C|I2C_inst|Selector52~2_combout\ & !\I2C|I2C_inst|Selector51~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000100011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_curr_state.sending~q\,
	datab => \I2C|I2C_inst|ALT_INV_Selector52~2_combout\,
	datac => \I2C|I2C_inst|ALT_INV_process_0~1_combout\,
	datad => \I2C|I2C_inst|ALT_INV_Selector51~0_combout\,
	datae => \I2C|I2C_inst|ALT_INV_Equal1~0_combout\,
	dataf => \I2C|I2C_inst|ALT_INV_Selector52~1_combout\,
	combout => \I2C|I2C_inst|Selector51~1_combout\);

-- Location: FF_X61_Y18_N37
\I2C|I2C_inst|curr_state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector51~1_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|curr_state.start~q\);

-- Location: LABCELL_X63_Y17_N21
\I2C|I2C_inst|SCL_count[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|SCL_count[7]~0_combout\ = ( !\I2C|I2C_inst|curr_state.ack~q\ & ( (!\I2C|I2C_inst|curr_state.start~q\ & (!\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & !\I2C|I2C_inst|SCL_state~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C|I2C_inst|ALT_INV_curr_state.start~q\,
	datac => \I2C|I2C_inst|ALT_INV_curr_state.sending~DUPLICATE_q\,
	datad => \I2C|I2C_inst|ALT_INV_SCL_state~q\,
	dataf => \I2C|I2C_inst|ALT_INV_curr_state.ack~q\,
	combout => \I2C|I2C_inst|SCL_count[7]~0_combout\);

-- Location: LABCELL_X63_Y17_N48
\I2C|I2C_inst|SCL_count[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|SCL_count[7]~1_combout\ = ( \I2C|I2C_inst|curr_state.idle~q\ & ( (!\I2C|I2C_inst|SCL_count[7]~0_combout\ & \I2C|I2C_inst|Equal0~6_combout\) ) ) # ( !\I2C|I2C_inst|curr_state.idle~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count[7]~0_combout\,
	datab => \I2C|I2C_inst|ALT_INV_Equal0~6_combout\,
	dataf => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	combout => \I2C|I2C_inst|SCL_count[7]~1_combout\);

-- Location: FF_X64_Y16_N8
\I2C|I2C_inst|SCL_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~109_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(22));

-- Location: LABCELL_X64_Y16_N9
\I2C|I2C_inst|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~105_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(23) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~110\ ))
-- \I2C|I2C_inst|Add0~106\ = CARRY(( \I2C|I2C_inst|SCL_count\(23) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(23),
	cin => \I2C|I2C_inst|Add0~110\,
	sumout => \I2C|I2C_inst|Add0~105_sumout\,
	cout => \I2C|I2C_inst|Add0~106\);

-- Location: FF_X64_Y16_N11
\I2C|I2C_inst|SCL_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~105_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(23));

-- Location: LABCELL_X64_Y16_N12
\I2C|I2C_inst|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~101_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(24) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~106\ ))
-- \I2C|I2C_inst|Add0~102\ = CARRY(( \I2C|I2C_inst|SCL_count\(24) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C|I2C_inst|ALT_INV_SCL_count\(24),
	cin => \I2C|I2C_inst|Add0~106\,
	sumout => \I2C|I2C_inst|Add0~101_sumout\,
	cout => \I2C|I2C_inst|Add0~102\);

-- Location: FF_X64_Y16_N14
\I2C|I2C_inst|SCL_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~101_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(24));

-- Location: LABCELL_X64_Y16_N15
\I2C|I2C_inst|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~97_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(25) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~102\ ))
-- \I2C|I2C_inst|Add0~98\ = CARRY(( \I2C|I2C_inst|SCL_count\(25) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(25),
	cin => \I2C|I2C_inst|Add0~102\,
	sumout => \I2C|I2C_inst|Add0~97_sumout\,
	cout => \I2C|I2C_inst|Add0~98\);

-- Location: FF_X64_Y16_N17
\I2C|I2C_inst|SCL_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~97_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(25));

-- Location: LABCELL_X64_Y16_N18
\I2C|I2C_inst|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~93_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(26) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~98\ ))
-- \I2C|I2C_inst|Add0~94\ = CARRY(( \I2C|I2C_inst|SCL_count\(26) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(26),
	cin => \I2C|I2C_inst|Add0~98\,
	sumout => \I2C|I2C_inst|Add0~93_sumout\,
	cout => \I2C|I2C_inst|Add0~94\);

-- Location: FF_X64_Y16_N20
\I2C|I2C_inst|SCL_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~93_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(26));

-- Location: LABCELL_X64_Y16_N21
\I2C|I2C_inst|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~89_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(27) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~94\ ))
-- \I2C|I2C_inst|Add0~90\ = CARRY(( \I2C|I2C_inst|SCL_count\(27) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count\(27),
	cin => \I2C|I2C_inst|Add0~94\,
	sumout => \I2C|I2C_inst|Add0~89_sumout\,
	cout => \I2C|I2C_inst|Add0~90\);

-- Location: FF_X64_Y16_N23
\I2C|I2C_inst|SCL_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~89_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(27));

-- Location: LABCELL_X64_Y16_N24
\I2C|I2C_inst|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~85_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(28) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~90\ ))
-- \I2C|I2C_inst|Add0~86\ = CARRY(( \I2C|I2C_inst|SCL_count\(28) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(28),
	cin => \I2C|I2C_inst|Add0~90\,
	sumout => \I2C|I2C_inst|Add0~85_sumout\,
	cout => \I2C|I2C_inst|Add0~86\);

-- Location: FF_X64_Y16_N26
\I2C|I2C_inst|SCL_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~85_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(28));

-- Location: LABCELL_X64_Y16_N27
\I2C|I2C_inst|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~81_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(29) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~86\ ))
-- \I2C|I2C_inst|Add0~82\ = CARRY(( \I2C|I2C_inst|SCL_count\(29) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count\(29),
	cin => \I2C|I2C_inst|Add0~86\,
	sumout => \I2C|I2C_inst|Add0~81_sumout\,
	cout => \I2C|I2C_inst|Add0~82\);

-- Location: FF_X64_Y16_N29
\I2C|I2C_inst|SCL_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~81_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(29));

-- Location: LABCELL_X64_Y16_N30
\I2C|I2C_inst|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~77_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(30) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~82\ ))
-- \I2C|I2C_inst|Add0~78\ = CARRY(( \I2C|I2C_inst|SCL_count\(30) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C|I2C_inst|ALT_INV_SCL_count\(30),
	cin => \I2C|I2C_inst|Add0~82\,
	sumout => \I2C|I2C_inst|Add0~77_sumout\,
	cout => \I2C|I2C_inst|Add0~78\);

-- Location: FF_X64_Y16_N32
\I2C|I2C_inst|SCL_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~77_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(30));

-- Location: LABCELL_X64_Y17_N3
\I2C|I2C_inst|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~69_sumout\ = SUM(( !\I2C|I2C_inst|SCL_count\(1) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~122\ ))
-- \I2C|I2C_inst|Add0~70\ = CARRY(( !\I2C|I2C_inst|SCL_count\(1) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count\(1),
	cin => \I2C|I2C_inst|Add0~122\,
	sumout => \I2C|I2C_inst|Add0~69_sumout\,
	cout => \I2C|I2C_inst|Add0~70\);

-- Location: LABCELL_X64_Y16_N54
\I2C|I2C_inst|Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector32~0_combout\ = ( \I2C|I2C_inst|curr_state.idle~q\ & ( (!\I2C|I2C_inst|Add0~69_sumout\ & ((!\I2C|I2C_inst|Equal0~6_combout\) # (\I2C|I2C_inst|SCL_count[7]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_Equal0~6_combout\,
	datab => \I2C|I2C_inst|ALT_INV_SCL_count[7]~0_combout\,
	datac => \I2C|I2C_inst|ALT_INV_Add0~69_sumout\,
	dataf => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	combout => \I2C|I2C_inst|Selector32~0_combout\);

-- Location: FF_X64_Y16_N56
\I2C|I2C_inst|SCL_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector32~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(1));

-- Location: LABCELL_X64_Y16_N33
\I2C|I2C_inst|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~73_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(31) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count\(31),
	cin => \I2C|I2C_inst|Add0~78\,
	sumout => \I2C|I2C_inst|Add0~73_sumout\);

-- Location: FF_X64_Y16_N35
\I2C|I2C_inst|SCL_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~73_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(31));

-- Location: LABCELL_X64_Y16_N48
\I2C|I2C_inst|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Equal0~3_combout\ = ( !\I2C|I2C_inst|SCL_count\(29) & ( !\I2C|I2C_inst|SCL_count\(31) & ( (!\I2C|I2C_inst|SCL_count\(28) & (!\I2C|I2C_inst|SCL_count\(30) & (\I2C|I2C_inst|SCL_count\(1) & \I2C|I2C_inst|SCL_count\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count\(28),
	datab => \I2C|I2C_inst|ALT_INV_SCL_count\(30),
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(1),
	datad => \I2C|I2C_inst|ALT_INV_SCL_count\(7),
	datae => \I2C|I2C_inst|ALT_INV_SCL_count\(29),
	dataf => \I2C|I2C_inst|ALT_INV_SCL_count\(31),
	combout => \I2C|I2C_inst|Equal0~3_combout\);

-- Location: LABCELL_X64_Y17_N6
\I2C|I2C_inst|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~117_sumout\ = SUM(( !\I2C|I2C_inst|SCL_count\(2) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~70\ ))
-- \I2C|I2C_inst|Add0~118\ = CARRY(( !\I2C|I2C_inst|SCL_count\(2) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(2),
	cin => \I2C|I2C_inst|Add0~70\,
	sumout => \I2C|I2C_inst|Add0~117_sumout\,
	cout => \I2C|I2C_inst|Add0~118\);

-- Location: LABCELL_X63_Y17_N54
\I2C|I2C_inst|Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector31~0_combout\ = ( \I2C|I2C_inst|curr_state.idle~q\ & ( (!\I2C|I2C_inst|Add0~117_sumout\ & ((!\I2C|I2C_inst|Equal0~6_combout\) # (\I2C|I2C_inst|SCL_count[7]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count[7]~0_combout\,
	datab => \I2C|I2C_inst|ALT_INV_Equal0~6_combout\,
	datac => \I2C|I2C_inst|ALT_INV_Add0~117_sumout\,
	dataf => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	combout => \I2C|I2C_inst|Selector31~0_combout\);

-- Location: FF_X63_Y17_N56
\I2C|I2C_inst|SCL_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector31~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(2));

-- Location: LABCELL_X64_Y17_N9
\I2C|I2C_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~9_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(3) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~118\ ))
-- \I2C|I2C_inst|Add0~10\ = CARRY(( \I2C|I2C_inst|SCL_count\(3) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(3),
	cin => \I2C|I2C_inst|Add0~118\,
	sumout => \I2C|I2C_inst|Add0~9_sumout\,
	cout => \I2C|I2C_inst|Add0~10\);

-- Location: FF_X64_Y17_N11
\I2C|I2C_inst|SCL_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~9_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(3));

-- Location: LABCELL_X64_Y17_N12
\I2C|I2C_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~5_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(4) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~10\ ))
-- \I2C|I2C_inst|Add0~6\ = CARRY(( \I2C|I2C_inst|SCL_count\(4) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C|I2C_inst|ALT_INV_SCL_count\(4),
	cin => \I2C|I2C_inst|Add0~10\,
	sumout => \I2C|I2C_inst|Add0~5_sumout\,
	cout => \I2C|I2C_inst|Add0~6\);

-- Location: FF_X64_Y17_N14
\I2C|I2C_inst|SCL_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~5_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(4));

-- Location: LABCELL_X64_Y18_N48
\I2C|I2C_inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Equal0~0_combout\ = ( !\I2C|I2C_inst|SCL_count\(4) & ( (!\I2C|I2C_inst|SCL_count\(8) & (!\I2C|I2C_inst|SCL_count\(3) & !\I2C|I2C_inst|SCL_count\(16))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C|I2C_inst|ALT_INV_SCL_count\(8),
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(3),
	datad => \I2C|I2C_inst|ALT_INV_SCL_count\(16),
	dataf => \I2C|I2C_inst|ALT_INV_SCL_count\(4),
	combout => \I2C|I2C_inst|Equal0~0_combout\);

-- Location: LABCELL_X64_Y16_N42
\I2C|I2C_inst|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Equal0~4_combout\ = ( !\I2C|I2C_inst|SCL_count\(27) & ( !\I2C|I2C_inst|SCL_count\(25) & ( (!\I2C|I2C_inst|SCL_count\(23) & (!\I2C|I2C_inst|SCL_count\(22) & (!\I2C|I2C_inst|SCL_count\(26) & !\I2C|I2C_inst|SCL_count\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count\(23),
	datab => \I2C|I2C_inst|ALT_INV_SCL_count\(22),
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(26),
	datad => \I2C|I2C_inst|ALT_INV_SCL_count\(24),
	datae => \I2C|I2C_inst|ALT_INV_SCL_count\(27),
	dataf => \I2C|I2C_inst|ALT_INV_SCL_count\(25),
	combout => \I2C|I2C_inst|Equal0~4_combout\);

-- Location: LABCELL_X64_Y17_N15
\I2C|I2C_inst|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~125_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(5) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~6\ ))
-- \I2C|I2C_inst|Add0~126\ = CARRY(( \I2C|I2C_inst|SCL_count\(5) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(5),
	cin => \I2C|I2C_inst|Add0~6\,
	sumout => \I2C|I2C_inst|Add0~125_sumout\,
	cout => \I2C|I2C_inst|Add0~126\);

-- Location: FF_X64_Y17_N17
\I2C|I2C_inst|SCL_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~125_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(5));

-- Location: LABCELL_X64_Y17_N18
\I2C|I2C_inst|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~113_sumout\ = SUM(( !\I2C|I2C_inst|SCL_count\(6) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~126\ ))
-- \I2C|I2C_inst|Add0~114\ = CARRY(( !\I2C|I2C_inst|SCL_count\(6) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(6),
	cin => \I2C|I2C_inst|Add0~126\,
	sumout => \I2C|I2C_inst|Add0~113_sumout\,
	cout => \I2C|I2C_inst|Add0~114\);

-- Location: LABCELL_X63_Y17_N51
\I2C|I2C_inst|Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector27~0_combout\ = ( \I2C|I2C_inst|curr_state.idle~q\ & ( (!\I2C|I2C_inst|Add0~113_sumout\ & ((!\I2C|I2C_inst|Equal0~6_combout\) # (\I2C|I2C_inst|SCL_count[7]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011010000110100001101000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count[7]~0_combout\,
	datab => \I2C|I2C_inst|ALT_INV_Equal0~6_combout\,
	datac => \I2C|I2C_inst|ALT_INV_Add0~113_sumout\,
	dataf => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	combout => \I2C|I2C_inst|Selector27~0_combout\);

-- Location: FF_X63_Y17_N53
\I2C|I2C_inst|SCL_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector27~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(6));

-- Location: LABCELL_X64_Y18_N51
\I2C|I2C_inst|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Equal0~5_combout\ = ( !\I2C|I2C_inst|SCL_count\(5) & ( (\I2C|I2C_inst|SCL_count\(0) & (\I2C|I2C_inst|SCL_count\(6) & \I2C|I2C_inst|SCL_count\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count\(0),
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(6),
	datad => \I2C|I2C_inst|ALT_INV_SCL_count\(2),
	dataf => \I2C|I2C_inst|ALT_INV_SCL_count\(5),
	combout => \I2C|I2C_inst|Equal0~5_combout\);

-- Location: LABCELL_X64_Y18_N39
\I2C|I2C_inst|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Equal0~6_combout\ = ( \I2C|I2C_inst|Equal0~4_combout\ & ( \I2C|I2C_inst|Equal0~5_combout\ & ( (\I2C|I2C_inst|Equal0~2_combout\ & (\I2C|I2C_inst|Equal0~1_combout\ & (\I2C|I2C_inst|Equal0~3_combout\ & \I2C|I2C_inst|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_Equal0~2_combout\,
	datab => \I2C|I2C_inst|ALT_INV_Equal0~1_combout\,
	datac => \I2C|I2C_inst|ALT_INV_Equal0~3_combout\,
	datad => \I2C|I2C_inst|ALT_INV_Equal0~0_combout\,
	datae => \I2C|I2C_inst|ALT_INV_Equal0~4_combout\,
	dataf => \I2C|I2C_inst|ALT_INV_Equal0~5_combout\,
	combout => \I2C|I2C_inst|Equal0~6_combout\);

-- Location: LABCELL_X64_Y17_N21
\I2C|I2C_inst|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~65_sumout\ = SUM(( !\I2C|I2C_inst|SCL_count\(7) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~114\ ))
-- \I2C|I2C_inst|Add0~66\ = CARRY(( !\I2C|I2C_inst|SCL_count\(7) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(7),
	cin => \I2C|I2C_inst|Add0~114\,
	sumout => \I2C|I2C_inst|Add0~65_sumout\,
	cout => \I2C|I2C_inst|Add0~66\);

-- Location: LABCELL_X64_Y16_N57
\I2C|I2C_inst|Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector26~0_combout\ = ( \I2C|I2C_inst|curr_state.idle~q\ & ( (!\I2C|I2C_inst|Add0~65_sumout\ & ((!\I2C|I2C_inst|Equal0~6_combout\) # (\I2C|I2C_inst|SCL_count[7]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_Equal0~6_combout\,
	datab => \I2C|I2C_inst|ALT_INV_SCL_count[7]~0_combout\,
	datac => \I2C|I2C_inst|ALT_INV_Add0~65_sumout\,
	dataf => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	combout => \I2C|I2C_inst|Selector26~0_combout\);

-- Location: FF_X64_Y16_N59
\I2C|I2C_inst|SCL_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector26~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(7));

-- Location: LABCELL_X64_Y17_N24
\I2C|I2C_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~1_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(8) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~66\ ))
-- \I2C|I2C_inst|Add0~2\ = CARRY(( \I2C|I2C_inst|SCL_count\(8) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(8),
	cin => \I2C|I2C_inst|Add0~66\,
	sumout => \I2C|I2C_inst|Add0~1_sumout\,
	cout => \I2C|I2C_inst|Add0~2\);

-- Location: FF_X64_Y17_N26
\I2C|I2C_inst|SCL_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~1_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(8));

-- Location: LABCELL_X64_Y17_N27
\I2C|I2C_inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~37_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(9) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~2\ ))
-- \I2C|I2C_inst|Add0~38\ = CARRY(( \I2C|I2C_inst|SCL_count\(9) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count\(9),
	cin => \I2C|I2C_inst|Add0~2\,
	sumout => \I2C|I2C_inst|Add0~37_sumout\,
	cout => \I2C|I2C_inst|Add0~38\);

-- Location: FF_X64_Y17_N29
\I2C|I2C_inst|SCL_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~37_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(9));

-- Location: LABCELL_X64_Y17_N30
\I2C|I2C_inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~33_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(10) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~38\ ))
-- \I2C|I2C_inst|Add0~34\ = CARRY(( \I2C|I2C_inst|SCL_count\(10) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C|I2C_inst|ALT_INV_SCL_count\(10),
	cin => \I2C|I2C_inst|Add0~38\,
	sumout => \I2C|I2C_inst|Add0~33_sumout\,
	cout => \I2C|I2C_inst|Add0~34\);

-- Location: FF_X64_Y17_N32
\I2C|I2C_inst|SCL_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~33_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(10));

-- Location: LABCELL_X64_Y17_N33
\I2C|I2C_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~29_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(11) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~34\ ))
-- \I2C|I2C_inst|Add0~30\ = CARRY(( \I2C|I2C_inst|SCL_count\(11) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count\(11),
	cin => \I2C|I2C_inst|Add0~34\,
	sumout => \I2C|I2C_inst|Add0~29_sumout\,
	cout => \I2C|I2C_inst|Add0~30\);

-- Location: FF_X64_Y17_N35
\I2C|I2C_inst|SCL_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~29_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(11));

-- Location: LABCELL_X64_Y17_N36
\I2C|I2C_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~25_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(12) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~30\ ))
-- \I2C|I2C_inst|Add0~26\ = CARRY(( \I2C|I2C_inst|SCL_count\(12) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(12),
	cin => \I2C|I2C_inst|Add0~30\,
	sumout => \I2C|I2C_inst|Add0~25_sumout\,
	cout => \I2C|I2C_inst|Add0~26\);

-- Location: FF_X64_Y17_N38
\I2C|I2C_inst|SCL_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~25_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(12));

-- Location: LABCELL_X64_Y17_N39
\I2C|I2C_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~21_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(13) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~26\ ))
-- \I2C|I2C_inst|Add0~22\ = CARRY(( \I2C|I2C_inst|SCL_count\(13) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(13),
	cin => \I2C|I2C_inst|Add0~26\,
	sumout => \I2C|I2C_inst|Add0~21_sumout\,
	cout => \I2C|I2C_inst|Add0~22\);

-- Location: FF_X64_Y17_N41
\I2C|I2C_inst|SCL_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~21_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(13));

-- Location: LABCELL_X64_Y17_N42
\I2C|I2C_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~17_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(14) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~22\ ))
-- \I2C|I2C_inst|Add0~18\ = CARRY(( \I2C|I2C_inst|SCL_count\(14) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C|I2C_inst|ALT_INV_SCL_count\(14),
	cin => \I2C|I2C_inst|Add0~22\,
	sumout => \I2C|I2C_inst|Add0~17_sumout\,
	cout => \I2C|I2C_inst|Add0~18\);

-- Location: FF_X64_Y17_N44
\I2C|I2C_inst|SCL_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~17_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(14));

-- Location: LABCELL_X64_Y17_N45
\I2C|I2C_inst|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~61_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(15) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~18\ ))
-- \I2C|I2C_inst|Add0~62\ = CARRY(( \I2C|I2C_inst|SCL_count\(15) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(15),
	cin => \I2C|I2C_inst|Add0~18\,
	sumout => \I2C|I2C_inst|Add0~61_sumout\,
	cout => \I2C|I2C_inst|Add0~62\);

-- Location: FF_X64_Y17_N47
\I2C|I2C_inst|SCL_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~61_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(15));

-- Location: LABCELL_X64_Y17_N48
\I2C|I2C_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~13_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(16) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~62\ ))
-- \I2C|I2C_inst|Add0~14\ = CARRY(( \I2C|I2C_inst|SCL_count\(16) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(16),
	cin => \I2C|I2C_inst|Add0~62\,
	sumout => \I2C|I2C_inst|Add0~13_sumout\,
	cout => \I2C|I2C_inst|Add0~14\);

-- Location: FF_X64_Y17_N50
\I2C|I2C_inst|SCL_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~13_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(16));

-- Location: LABCELL_X64_Y17_N51
\I2C|I2C_inst|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~57_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(17) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~14\ ))
-- \I2C|I2C_inst|Add0~58\ = CARRY(( \I2C|I2C_inst|SCL_count\(17) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count\(17),
	cin => \I2C|I2C_inst|Add0~14\,
	sumout => \I2C|I2C_inst|Add0~57_sumout\,
	cout => \I2C|I2C_inst|Add0~58\);

-- Location: FF_X64_Y17_N53
\I2C|I2C_inst|SCL_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~57_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(17));

-- Location: LABCELL_X64_Y17_N54
\I2C|I2C_inst|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~53_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(18) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~58\ ))
-- \I2C|I2C_inst|Add0~54\ = CARRY(( \I2C|I2C_inst|SCL_count\(18) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(18),
	cin => \I2C|I2C_inst|Add0~58\,
	sumout => \I2C|I2C_inst|Add0~53_sumout\,
	cout => \I2C|I2C_inst|Add0~54\);

-- Location: FF_X64_Y17_N56
\I2C|I2C_inst|SCL_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~53_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(18));

-- Location: LABCELL_X64_Y17_N57
\I2C|I2C_inst|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~49_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(19) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~54\ ))
-- \I2C|I2C_inst|Add0~50\ = CARRY(( \I2C|I2C_inst|SCL_count\(19) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(19),
	cin => \I2C|I2C_inst|Add0~54\,
	sumout => \I2C|I2C_inst|Add0~49_sumout\,
	cout => \I2C|I2C_inst|Add0~50\);

-- Location: FF_X64_Y17_N59
\I2C|I2C_inst|SCL_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~49_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(19));

-- Location: LABCELL_X64_Y16_N0
\I2C|I2C_inst|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add0~45_sumout\ = SUM(( \I2C|I2C_inst|SCL_count\(20) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~50\ ))
-- \I2C|I2C_inst|Add0~46\ = CARRY(( \I2C|I2C_inst|SCL_count\(20) ) + ( VCC ) + ( \I2C|I2C_inst|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(20),
	cin => \I2C|I2C_inst|Add0~50\,
	sumout => \I2C|I2C_inst|Add0~45_sumout\,
	cout => \I2C|I2C_inst|Add0~46\);

-- Location: FF_X64_Y16_N2
\I2C|I2C_inst|SCL_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~45_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(20));

-- Location: FF_X64_Y16_N5
\I2C|I2C_inst|SCL_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Add0~41_sumout\,
	sclr => \I2C|I2C_inst|SCL_count[7]~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL_count\(21));

-- Location: LABCELL_X64_Y16_N36
\I2C|I2C_inst|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Equal0~2_combout\ = ( !\I2C|I2C_inst|SCL_count\(17) & ( !\I2C|I2C_inst|SCL_count\(18) & ( (!\I2C|I2C_inst|SCL_count\(21) & (!\I2C|I2C_inst|SCL_count\(19) & (!\I2C|I2C_inst|SCL_count\(20) & !\I2C|I2C_inst|SCL_count\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_count\(21),
	datab => \I2C|I2C_inst|ALT_INV_SCL_count\(19),
	datac => \I2C|I2C_inst|ALT_INV_SCL_count\(20),
	datad => \I2C|I2C_inst|ALT_INV_SCL_count\(15),
	datae => \I2C|I2C_inst|ALT_INV_SCL_count\(17),
	dataf => \I2C|I2C_inst|ALT_INV_SCL_count\(18),
	combout => \I2C|I2C_inst|Equal0~2_combout\);

-- Location: LABCELL_X64_Y18_N42
\I2C|I2C_inst|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Equal6~0_combout\ = ( !\I2C|I2C_inst|SCL_count\(2) & ( \I2C|I2C_inst|SCL_count\(5) & ( !\I2C|I2C_inst|SCL_count\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C|I2C_inst|ALT_INV_SCL_count\(6),
	datae => \I2C|I2C_inst|ALT_INV_SCL_count\(2),
	dataf => \I2C|I2C_inst|ALT_INV_SCL_count\(5),
	combout => \I2C|I2C_inst|Equal6~0_combout\);

-- Location: LABCELL_X64_Y18_N36
\I2C|I2C_inst|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Equal6~1_combout\ = ( \I2C|I2C_inst|Equal0~4_combout\ & ( \I2C|I2C_inst|Equal6~0_combout\ & ( (\I2C|I2C_inst|Equal0~2_combout\ & (\I2C|I2C_inst|Equal0~1_combout\ & (\I2C|I2C_inst|Equal0~0_combout\ & \I2C|I2C_inst|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_Equal0~2_combout\,
	datab => \I2C|I2C_inst|ALT_INV_Equal0~1_combout\,
	datac => \I2C|I2C_inst|ALT_INV_Equal0~0_combout\,
	datad => \I2C|I2C_inst|ALT_INV_Equal0~3_combout\,
	datae => \I2C|I2C_inst|ALT_INV_Equal0~4_combout\,
	dataf => \I2C|I2C_inst|ALT_INV_Equal6~0_combout\,
	combout => \I2C|I2C_inst|Equal6~1_combout\);

-- Location: LABCELL_X63_Y17_N36
\I2C|I2C_inst|Selector54~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector54~1_combout\ = ( \I2C|I2C_inst|Equal1~0_combout\ & ( \I2C|I2C_inst|SCL_count\(0) & ( (\I2C|I2C_inst|Equal6~1_combout\ & (\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & (\I2C|I2C_inst|SCL_state~q\ & 
-- \I2C|I2C_inst|Equal2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_Equal6~1_combout\,
	datab => \I2C|I2C_inst|ALT_INV_curr_state.sending~DUPLICATE_q\,
	datac => \I2C|I2C_inst|ALT_INV_SCL_state~q\,
	datad => \I2C|I2C_inst|ALT_INV_Equal2~0_combout\,
	datae => \I2C|I2C_inst|ALT_INV_Equal1~0_combout\,
	dataf => \I2C|I2C_inst|ALT_INV_SCL_count\(0),
	combout => \I2C|I2C_inst|Selector54~1_combout\);

-- Location: LABCELL_X63_Y17_N12
\I2C|I2C_inst|Selector54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector54~0_combout\ = ( \I2C|I2C_inst|Equal1~0_combout\ & ( \I2C|I2C_inst|curr_state.stop~DUPLICATE_q\ & ( (!\I2C|I2C_inst|SCL_state~q\) # ((!\I2C|I2C_inst|SCL_count\(0)) # ((!\I2C|I2C_inst|Equal6~1_combout\) # 
-- (!\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\))) ) ) ) # ( !\I2C|I2C_inst|Equal1~0_combout\ & ( \I2C|I2C_inst|curr_state.stop~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SCL_state~q\,
	datab => \I2C|I2C_inst|ALT_INV_SCL_count\(0),
	datac => \I2C|I2C_inst|ALT_INV_Equal6~1_combout\,
	datad => \I2C|I2C_inst|ALT_INV_curr_state.sending~DUPLICATE_q\,
	datae => \I2C|I2C_inst|ALT_INV_Equal1~0_combout\,
	dataf => \I2C|I2C_inst|ALT_INV_curr_state.stop~DUPLICATE_q\,
	combout => \I2C|I2C_inst|Selector54~0_combout\);

-- Location: LABCELL_X63_Y17_N24
\I2C|I2C_inst|Selector54~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector54~6_combout\ = ( \I2C|I2C_inst|Selector54~3_combout\ & ( \I2C|I2C_inst|Selector54~4_combout\ & ( (!\I2C|I2C_inst|Selector54~5_combout\ & (!\I2C|I2C_inst|Selector52~1_combout\ & ((\I2C|I2C_inst|Selector54~0_combout\) # 
-- (\I2C|I2C_inst|Selector54~1_combout\)))) ) ) ) # ( !\I2C|I2C_inst|Selector54~3_combout\ & ( \I2C|I2C_inst|Selector54~4_combout\ & ( (!\I2C|I2C_inst|Selector54~5_combout\ & (!\I2C|I2C_inst|Selector52~1_combout\ & ((\I2C|I2C_inst|Selector54~0_combout\) # 
-- (\I2C|I2C_inst|Selector54~1_combout\)))) ) ) ) # ( \I2C|I2C_inst|Selector54~3_combout\ & ( !\I2C|I2C_inst|Selector54~4_combout\ & ( (!\I2C|I2C_inst|Selector54~5_combout\ & (!\I2C|I2C_inst|Selector52~1_combout\ & ((\I2C|I2C_inst|Selector54~0_combout\) # 
-- (\I2C|I2C_inst|Selector54~1_combout\)))) ) ) ) # ( !\I2C|I2C_inst|Selector54~3_combout\ & ( !\I2C|I2C_inst|Selector54~4_combout\ & ( (!\I2C|I2C_inst|Selector52~1_combout\ & ((\I2C|I2C_inst|Selector54~0_combout\) # (\I2C|I2C_inst|Selector54~1_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100000000011100000000000001110000000000000111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_Selector54~1_combout\,
	datab => \I2C|I2C_inst|ALT_INV_Selector54~0_combout\,
	datac => \I2C|I2C_inst|ALT_INV_Selector54~5_combout\,
	datad => \I2C|I2C_inst|ALT_INV_Selector52~1_combout\,
	datae => \I2C|I2C_inst|ALT_INV_Selector54~3_combout\,
	dataf => \I2C|I2C_inst|ALT_INV_Selector54~4_combout\,
	combout => \I2C|I2C_inst|Selector54~6_combout\);

-- Location: FF_X63_Y17_N26
\I2C|I2C_inst|curr_state.stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector54~6_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|curr_state.stop~q\);

-- Location: LABCELL_X61_Y17_N51
\I2C|I2C_inst|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|process_0~2_combout\ = ( \I2C|I2C_inst|process_0~0_combout\ & ( \I2C|I2C_inst|Equal6~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_Equal6~1_combout\,
	dataf => \I2C|I2C_inst|ALT_INV_process_0~0_combout\,
	combout => \I2C|I2C_inst|process_0~2_combout\);

-- Location: LABCELL_X61_Y17_N48
\I2C|I2C_inst|SDA_byte[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|SDA_byte[5]~0_combout\ = ( \I2C|I2C_inst|byte_num\(1) & ( \I2C|I2C_inst|byte_num\(0) ) ) # ( !\I2C|I2C_inst|byte_num\(1) & ( !\I2C|I2C_inst|byte_num\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|I2C_inst|ALT_INV_byte_num\(0),
	dataf => \I2C|I2C_inst|ALT_INV_byte_num\(1),
	combout => \I2C|I2C_inst|SDA_byte[5]~0_combout\);

-- Location: MLABCELL_X60_Y17_N27
\I2C|Ram1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Ram1~5_combout\ = ( \I2C|index\(0) & ( (!\I2C|index\(4) & (\I2C|index\(2) & ((\I2C|index\(3)) # (\I2C|index\(1))))) # (\I2C|index\(4) & ((!\I2C|index\(3) $ (!\I2C|index\(2))))) ) ) # ( !\I2C|index\(0) & ( (\I2C|index\(1) & (\I2C|index\(2) & 
-- ((\I2C|index\(3)) # (\I2C|index\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101000000000001010100000011011111000000001101111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_index\(1),
	datab => \I2C|ALT_INV_index\(4),
	datac => \I2C|ALT_INV_index\(3),
	datad => \I2C|ALT_INV_index\(2),
	dataf => \I2C|ALT_INV_index\(0),
	combout => \I2C|Ram1~5_combout\);

-- Location: FF_X60_Y17_N28
\I2C|DATA_BYTE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Ram1~5_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|DATA_BYTE\(2));

-- Location: MLABCELL_X60_Y17_N18
\I2C|I2C_inst|SDA_data[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|SDA_data[6]~0_combout\ = ( !\I2C|I2C_inst|curr_state.idle~q\ & ( \RESET~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_RESET~input_o\,
	dataf => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	combout => \I2C|I2C_inst|SDA_data[6]~0_combout\);

-- Location: FF_X61_Y17_N44
\I2C|I2C_inst|SDA_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \I2C|DATA_BYTE\(2),
	sclr => \I2C|ALT_INV_START_SEQ~q\,
	sload => VCC,
	ena => \I2C|I2C_inst|SDA_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_data\(10));

-- Location: LABCELL_X61_Y19_N39
\I2C|Ram0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Ram0~4_combout\ = ( \I2C|index\(3) & ( (!\I2C|index\(1) & (((\I2C|index\(0) & \I2C|index\(4))) # (\I2C|index\(2)))) # (\I2C|index\(1) & (\I2C|index\(0) & ((!\I2C|index\(4))))) ) ) # ( !\I2C|index\(3) & ( (!\I2C|index\(0) & (\I2C|index\(2) & 
-- ((!\I2C|index\(1)) # (!\I2C|index\(4))))) # (\I2C|index\(0) & ((!\I2C|index\(1) & (\I2C|index\(2) & !\I2C|index\(4))) # (\I2C|index\(1) & ((\I2C|index\(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011001000011100001100100011101010011000001110101001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_index\(0),
	datab => \I2C|ALT_INV_index\(1),
	datac => \I2C|ALT_INV_index\(2),
	datad => \I2C|ALT_INV_index\(4),
	dataf => \I2C|ALT_INV_index\(3),
	combout => \I2C|Ram0~4_combout\);

-- Location: FF_X61_Y19_N40
\I2C|BASE_ADDRESS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Ram0~4_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|BASE_ADDRESS\(2));

-- Location: FF_X61_Y17_N17
\I2C|I2C_inst|SDA_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \I2C|BASE_ADDRESS\(2),
	sclr => \I2C|ALT_INV_START_SEQ~q\,
	sload => VCC,
	ena => \I2C|I2C_inst|SDA_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_data\(2));

-- Location: LABCELL_X61_Y17_N42
\I2C|I2C_inst|Selector47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector47~0_combout\ = ( \I2C|I2C_inst|SDA_data\(2) & ( (!\I2C|I2C_inst|byte_num\(0)) # ((!\I2C|I2C_inst|byte_num\(1)) # (\I2C|I2C_inst|SDA_data\(10))) ) ) # ( !\I2C|I2C_inst|SDA_data\(2) & ( (\I2C|I2C_inst|byte_num\(0) & 
-- (\I2C|I2C_inst|byte_num\(1) & \I2C|I2C_inst|SDA_data\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000111101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_byte_num\(0),
	datab => \I2C|I2C_inst|ALT_INV_byte_num\(1),
	datad => \I2C|I2C_inst|ALT_INV_SDA_data\(10),
	dataf => \I2C|I2C_inst|ALT_INV_SDA_data\(2),
	combout => \I2C|I2C_inst|Selector47~0_combout\);

-- Location: LABCELL_X61_Y17_N54
\I2C|I2C_inst|Selector47~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector47~1_combout\ = ( \I2C|I2C_inst|SDA_byte\(2) & ( \I2C|I2C_inst|Selector47~0_combout\ & ( (\I2C|I2C_inst|curr_state.idle~q\) # (\I2C|I2C_inst|curr_state.ack~q\) ) ) ) # ( !\I2C|I2C_inst|SDA_byte\(2) & ( 
-- \I2C|I2C_inst|Selector47~0_combout\ & ( (\I2C|I2C_inst|curr_state.ack~q\ & (\I2C|I2C_inst|process_0~2_combout\ & \I2C|I2C_inst|SDA_byte[5]~0_combout\)) ) ) ) # ( \I2C|I2C_inst|SDA_byte\(2) & ( !\I2C|I2C_inst|Selector47~0_combout\ & ( 
-- (!\I2C|I2C_inst|curr_state.ack~q\ & (\I2C|I2C_inst|curr_state.idle~q\)) # (\I2C|I2C_inst|curr_state.ack~q\ & (((!\I2C|I2C_inst|process_0~2_combout\) # (!\I2C|I2C_inst|SDA_byte[5]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111001000000000000001010111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_curr_state.ack~q\,
	datab => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	datac => \I2C|I2C_inst|ALT_INV_process_0~2_combout\,
	datad => \I2C|I2C_inst|ALT_INV_SDA_byte[5]~0_combout\,
	datae => \I2C|I2C_inst|ALT_INV_SDA_byte\(2),
	dataf => \I2C|I2C_inst|ALT_INV_Selector47~0_combout\,
	combout => \I2C|I2C_inst|Selector47~1_combout\);

-- Location: FF_X61_Y17_N55
\I2C|I2C_inst|SDA_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector47~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_byte\(2));

-- Location: MLABCELL_X60_Y17_N33
\I2C|Ram1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Ram1~7_combout\ = ( \I2C|index\(0) & ( (\I2C|index\(1) & (\I2C|index\(3) & (!\I2C|index\(2) $ (!\I2C|index\(4))))) ) ) # ( !\I2C|index\(0) & ( (!\I2C|index\(2) & (\I2C|index\(1) & ((!\I2C|index\(4))))) # (\I2C|index\(2) & (\I2C|index\(3) & 
-- (!\I2C|index\(1) $ (\I2C|index\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011000000001010001100000000100000001000001000000000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_index\(1),
	datab => \I2C|ALT_INV_index\(2),
	datac => \I2C|ALT_INV_index\(3),
	datad => \I2C|ALT_INV_index\(4),
	dataf => \I2C|ALT_INV_index\(0),
	combout => \I2C|Ram1~7_combout\);

-- Location: FF_X60_Y17_N34
\I2C|DATA_BYTE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Ram1~7_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|DATA_BYTE\(3));

-- Location: FF_X61_Y17_N47
\I2C|I2C_inst|SDA_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \I2C|DATA_BYTE\(3),
	sclr => \I2C|ALT_INV_START_SEQ~q\,
	sload => VCC,
	ena => \I2C|I2C_inst|SDA_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_data\(11));

-- Location: MLABCELL_X60_Y17_N45
\I2C|Ram0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Ram0~6_combout\ = ( \I2C|index\(0) & ( (!\I2C|index\(2) & (\I2C|index\(4) & ((!\I2C|index\(1)) # (!\I2C|index\(3))))) # (\I2C|index\(2) & (\I2C|index\(1) & (!\I2C|index\(3) $ (\I2C|index\(4))))) ) ) # ( !\I2C|index\(0) & ( (!\I2C|index\(2) & 
-- ((!\I2C|index\(1) $ (\I2C|index\(3))) # (\I2C|index\(4)))) # (\I2C|index\(2) & (\I2C|index\(4) & ((!\I2C|index\(1)) # (\I2C|index\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010011101111100001001110111100010000110010010001000011001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_index\(1),
	datab => \I2C|ALT_INV_index\(2),
	datac => \I2C|ALT_INV_index\(3),
	datad => \I2C|ALT_INV_index\(4),
	dataf => \I2C|ALT_INV_index\(0),
	combout => \I2C|Ram0~6_combout\);

-- Location: FF_X60_Y17_N46
\I2C|BASE_ADDRESS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Ram0~6_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|BASE_ADDRESS\(3));

-- Location: LABCELL_X61_Y17_N18
\I2C|I2C_inst|SDA_data[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|SDA_data[3]~feeder_combout\ = \I2C|BASE_ADDRESS\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|ALT_INV_BASE_ADDRESS\(3),
	combout => \I2C|I2C_inst|SDA_data[3]~feeder_combout\);

-- Location: FF_X61_Y17_N20
\I2C|I2C_inst|SDA_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|SDA_data[3]~feeder_combout\,
	sclr => \I2C|ALT_INV_START_SEQ~q\,
	ena => \I2C|I2C_inst|SDA_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_data\(3));

-- Location: LABCELL_X61_Y17_N45
\I2C|I2C_inst|Selector46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector46~0_combout\ = ( \I2C|I2C_inst|SDA_data\(3) & ( (!\I2C|I2C_inst|byte_num\(0)) # ((!\I2C|I2C_inst|byte_num\(1)) # (\I2C|I2C_inst|SDA_data\(11))) ) ) # ( !\I2C|I2C_inst|SDA_data\(3) & ( (\I2C|I2C_inst|byte_num\(0) & 
-- (\I2C|I2C_inst|byte_num\(1) & \I2C|I2C_inst|SDA_data\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000111101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_byte_num\(0),
	datab => \I2C|I2C_inst|ALT_INV_byte_num\(1),
	datad => \I2C|I2C_inst|ALT_INV_SDA_data\(11),
	dataf => \I2C|I2C_inst|ALT_INV_SDA_data\(3),
	combout => \I2C|I2C_inst|Selector46~0_combout\);

-- Location: MLABCELL_X60_Y17_N51
\I2C|I2C_inst|Selector46~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector46~1_combout\ = ( \I2C|I2C_inst|SDA_byte\(3) & ( \I2C|I2C_inst|Selector46~0_combout\ & ( (\I2C|I2C_inst|curr_state.idle~q\) # (\I2C|I2C_inst|curr_state.ack~q\) ) ) ) # ( !\I2C|I2C_inst|SDA_byte\(3) & ( 
-- \I2C|I2C_inst|Selector46~0_combout\ & ( (\I2C|I2C_inst|curr_state.ack~q\ & (\I2C|I2C_inst|SDA_byte[5]~0_combout\ & \I2C|I2C_inst|process_0~2_combout\)) ) ) ) # ( \I2C|I2C_inst|SDA_byte\(3) & ( !\I2C|I2C_inst|Selector46~0_combout\ & ( 
-- (!\I2C|I2C_inst|curr_state.ack~q\ & (\I2C|I2C_inst|curr_state.idle~q\)) # (\I2C|I2C_inst|curr_state.ack~q\ & (((!\I2C|I2C_inst|SDA_byte[5]~0_combout\) # (!\I2C|I2C_inst|process_0~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111001000000000000001010111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_curr_state.ack~q\,
	datab => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	datac => \I2C|I2C_inst|ALT_INV_SDA_byte[5]~0_combout\,
	datad => \I2C|I2C_inst|ALT_INV_process_0~2_combout\,
	datae => \I2C|I2C_inst|ALT_INV_SDA_byte\(3),
	dataf => \I2C|I2C_inst|ALT_INV_Selector46~0_combout\,
	combout => \I2C|I2C_inst|Selector46~1_combout\);

-- Location: FF_X60_Y17_N53
\I2C|I2C_inst|SDA_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector46~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_byte\(3));

-- Location: LABCELL_X61_Y19_N42
\I2C|Ram0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Ram0~3_combout\ = ( \I2C|index\(2) & ( (!\I2C|index\(3) & (!\I2C|index\(4) $ (((!\I2C|index\(0)) # (\I2C|index\(1)))))) # (\I2C|index\(3) & (!\I2C|index\(4) & (\I2C|index\(1) & !\I2C|index\(0)))) ) ) # ( !\I2C|index\(2) & ( (!\I2C|index\(0) & 
-- (\I2C|index\(3) & (!\I2C|index\(4) $ (!\I2C|index\(1))))) # (\I2C|index\(0) & ((!\I2C|index\(4)) # ((!\I2C|index\(1)) # (\I2C|index\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111001101111000011100110111101011001001000000101100100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_index\(4),
	datab => \I2C|ALT_INV_index\(1),
	datac => \I2C|ALT_INV_index\(0),
	datad => \I2C|ALT_INV_index\(3),
	dataf => \I2C|ALT_INV_index\(2),
	combout => \I2C|Ram0~3_combout\);

-- Location: FF_X61_Y19_N43
\I2C|BASE_ADDRESS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Ram0~3_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|BASE_ADDRESS\(0));

-- Location: LABCELL_X61_Y17_N21
\I2C|I2C_inst|SDA_data[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|SDA_data[0]~feeder_combout\ = ( \I2C|BASE_ADDRESS\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \I2C|ALT_INV_BASE_ADDRESS\(0),
	combout => \I2C|I2C_inst|SDA_data[0]~feeder_combout\);

-- Location: FF_X61_Y17_N22
\I2C|I2C_inst|SDA_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|SDA_data[0]~feeder_combout\,
	sclr => \I2C|ALT_INV_START_SEQ~q\,
	ena => \I2C|I2C_inst|SDA_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_data\(0));

-- Location: MLABCELL_X60_Y17_N30
\I2C|Ram1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Ram1~4_combout\ = ( \I2C|index\(0) & ( (\I2C|index\(1) & (\I2C|index\(3) & ((\I2C|index\(4)) # (\I2C|index\(2))))) ) ) # ( !\I2C|index\(0) & ( (!\I2C|index\(1) & (!\I2C|index\(3) & ((!\I2C|index\(2)) # (\I2C|index\(4))))) # (\I2C|index\(1) & 
-- (\I2C|index\(2) & (\I2C|index\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000110100001100000011010000100000001000001010000000100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_index\(1),
	datab => \I2C|ALT_INV_index\(2),
	datac => \I2C|ALT_INV_index\(3),
	datad => \I2C|ALT_INV_index\(4),
	dataf => \I2C|ALT_INV_index\(0),
	combout => \I2C|Ram1~4_combout\);

-- Location: FF_X60_Y17_N31
\I2C|DATA_BYTE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Ram1~4_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|DATA_BYTE\(0));

-- Location: FF_X61_Y17_N35
\I2C|I2C_inst|SDA_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \I2C|DATA_BYTE\(0),
	sclr => \I2C|ALT_INV_START_SEQ~q\,
	sload => VCC,
	ena => \I2C|I2C_inst|SDA_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_data\(8));

-- Location: LABCELL_X61_Y17_N33
\I2C|I2C_inst|Selector49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector49~0_combout\ = (!\I2C|I2C_inst|byte_num\(0) & (((\I2C|I2C_inst|SDA_data\(0))))) # (\I2C|I2C_inst|byte_num\(0) & ((!\I2C|I2C_inst|byte_num\(1) & (\I2C|I2C_inst|SDA_data\(0))) # (\I2C|I2C_inst|byte_num\(1) & 
-- ((\I2C|I2C_inst|SDA_data\(8))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_byte_num\(0),
	datab => \I2C|I2C_inst|ALT_INV_byte_num\(1),
	datac => \I2C|I2C_inst|ALT_INV_SDA_data\(0),
	datad => \I2C|I2C_inst|ALT_INV_SDA_data\(8),
	combout => \I2C|I2C_inst|Selector49~0_combout\);

-- Location: LABCELL_X61_Y17_N57
\I2C|I2C_inst|Selector49~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector49~1_combout\ = ( \I2C|I2C_inst|SDA_byte\(0) & ( \I2C|I2C_inst|Selector49~0_combout\ & ( (\I2C|I2C_inst|curr_state.idle~q\) # (\I2C|I2C_inst|curr_state.ack~q\) ) ) ) # ( !\I2C|I2C_inst|SDA_byte\(0) & ( 
-- \I2C|I2C_inst|Selector49~0_combout\ & ( (\I2C|I2C_inst|curr_state.ack~q\ & (\I2C|I2C_inst|SDA_byte[5]~0_combout\ & \I2C|I2C_inst|process_0~2_combout\)) ) ) ) # ( \I2C|I2C_inst|SDA_byte\(0) & ( !\I2C|I2C_inst|Selector49~0_combout\ & ( 
-- (!\I2C|I2C_inst|curr_state.ack~q\ & (\I2C|I2C_inst|curr_state.idle~q\)) # (\I2C|I2C_inst|curr_state.ack~q\ & (((!\I2C|I2C_inst|SDA_byte[5]~0_combout\) # (!\I2C|I2C_inst|process_0~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111001000000000000001010111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_curr_state.ack~q\,
	datab => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	datac => \I2C|I2C_inst|ALT_INV_SDA_byte[5]~0_combout\,
	datad => \I2C|I2C_inst|ALT_INV_process_0~2_combout\,
	datae => \I2C|I2C_inst|ALT_INV_SDA_byte\(0),
	dataf => \I2C|I2C_inst|ALT_INV_Selector49~0_combout\,
	combout => \I2C|I2C_inst|Selector49~1_combout\);

-- Location: FF_X61_Y17_N58
\I2C|I2C_inst|SDA_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector49~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_byte\(0));

-- Location: MLABCELL_X60_Y17_N54
\I2C|I2C_inst|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Add1~1_combout\ = !\I2C|I2C_inst|index\(0) $ (\I2C|I2C_inst|index\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C|I2C_inst|ALT_INV_index\(0),
	datac => \I2C|I2C_inst|ALT_INV_index\(1),
	combout => \I2C|I2C_inst|Add1~1_combout\);

-- Location: MLABCELL_X60_Y17_N12
\I2C|Ram1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Ram1~6_combout\ = ( \I2C|index\(0) & ( (!\I2C|index\(4) & (\I2C|index\(2) & ((\I2C|index\(3)) # (\I2C|index\(1))))) # (\I2C|index\(4) & ((!\I2C|index\(1) & ((!\I2C|index\(2)))) # (\I2C|index\(1) & (\I2C|index\(3))))) ) ) # ( !\I2C|index\(0) & ( 
-- (!\I2C|index\(1) & (((!\I2C|index\(3) & !\I2C|index\(2))))) # (\I2C|index\(1) & (!\I2C|index\(4) & (\I2C|index\(3) & \I2C|index\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000100101000000000010000100011010011010010001101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_index\(1),
	datab => \I2C|ALT_INV_index\(4),
	datac => \I2C|ALT_INV_index\(3),
	datad => \I2C|ALT_INV_index\(2),
	dataf => \I2C|ALT_INV_index\(0),
	combout => \I2C|Ram1~6_combout\);

-- Location: FF_X60_Y17_N13
\I2C|DATA_BYTE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Ram1~6_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|DATA_BYTE\(1));

-- Location: FF_X61_Y17_N49
\I2C|I2C_inst|SDA_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \I2C|DATA_BYTE\(1),
	sclr => \I2C|ALT_INV_START_SEQ~q\,
	sload => VCC,
	ena => \I2C|I2C_inst|SDA_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_data\(9));

-- Location: LABCELL_X61_Y19_N45
\I2C|Ram0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Ram0~5_combout\ = ( \I2C|index\(0) & ( (!\I2C|index\(4) & ((!\I2C|index\(2) & (\I2C|index\(1) & !\I2C|index\(3))) # (\I2C|index\(2) & ((\I2C|index\(3)))))) # (\I2C|index\(4) & (!\I2C|index\(1) & (!\I2C|index\(2) $ (!\I2C|index\(3))))) ) ) # ( 
-- !\I2C|index\(0) & ( (!\I2C|index\(3) & (((\I2C|index\(1))))) # (\I2C|index\(3) & (((\I2C|index\(2))) # (\I2C|index\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101011111001100110101111100100100010010100010010001001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_index\(4),
	datab => \I2C|ALT_INV_index\(1),
	datac => \I2C|ALT_INV_index\(2),
	datad => \I2C|ALT_INV_index\(3),
	dataf => \I2C|ALT_INV_index\(0),
	combout => \I2C|Ram0~5_combout\);

-- Location: FF_X61_Y19_N46
\I2C|BASE_ADDRESS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Ram0~5_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|BASE_ADDRESS\(1));

-- Location: LABCELL_X61_Y17_N0
\I2C|I2C_inst|SDA_data[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|SDA_data[1]~feeder_combout\ = ( \I2C|BASE_ADDRESS\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \I2C|ALT_INV_BASE_ADDRESS\(1),
	combout => \I2C|I2C_inst|SDA_data[1]~feeder_combout\);

-- Location: FF_X61_Y17_N1
\I2C|I2C_inst|SDA_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|SDA_data[1]~feeder_combout\,
	sclr => \I2C|ALT_INV_START_SEQ~q\,
	ena => \I2C|I2C_inst|SDA_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_data\(1));

-- Location: MLABCELL_X60_Y17_N57
\I2C|I2C_inst|Selector48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector48~0_combout\ = ( \I2C|I2C_inst|SDA_data\(1) & ( (!\I2C|I2C_inst|Equal5~0_combout\) # (\I2C|I2C_inst|SDA_data\(9)) ) ) # ( !\I2C|I2C_inst|SDA_data\(1) & ( (\I2C|I2C_inst|Equal5~0_combout\ & \I2C|I2C_inst|SDA_data\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_Equal5~0_combout\,
	datad => \I2C|I2C_inst|ALT_INV_SDA_data\(9),
	dataf => \I2C|I2C_inst|ALT_INV_SDA_data\(1),
	combout => \I2C|I2C_inst|Selector48~0_combout\);

-- Location: LABCELL_X61_Y17_N12
\I2C|I2C_inst|SDA_byte[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|SDA_byte[6]~1_combout\ = ( \RESET~input_o\ & ( \I2C|I2C_inst|SDA_byte[5]~0_combout\ & ( (!\I2C|I2C_inst|curr_state.ack~q\ & (((!\I2C|I2C_inst|curr_state.idle~q\)))) # (\I2C|I2C_inst|curr_state.ack~q\ & (\I2C|I2C_inst|process_0~0_combout\ & 
-- (\I2C|I2C_inst|Equal6~1_combout\))) ) ) ) # ( \RESET~input_o\ & ( !\I2C|I2C_inst|SDA_byte[5]~0_combout\ & ( (!\I2C|I2C_inst|curr_state.ack~q\ & !\I2C|I2C_inst|curr_state.idle~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001111000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_process_0~0_combout\,
	datab => \I2C|I2C_inst|ALT_INV_Equal6~1_combout\,
	datac => \I2C|I2C_inst|ALT_INV_curr_state.ack~q\,
	datad => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	datae => \ALT_INV_RESET~input_o\,
	dataf => \I2C|I2C_inst|ALT_INV_SDA_byte[5]~0_combout\,
	combout => \I2C|I2C_inst|SDA_byte[6]~1_combout\);

-- Location: FF_X60_Y17_N59
\I2C|I2C_inst|SDA_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector48~0_combout\,
	asdata => \I2C|START_SEQ~q\,
	sload => \I2C|I2C_inst|ALT_INV_curr_state.ack~q\,
	ena => \I2C|I2C_inst|SDA_byte[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_byte\(1));

-- Location: MLABCELL_X60_Y17_N36
\I2C|I2C_inst|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Mux0~4_combout\ = ( !\I2C|I2C_inst|Add1~1_combout\ & ( ((!\I2C|I2C_inst|index\(0) & (\I2C|I2C_inst|SDA_byte\(1) & ((!\I2C|I2C_inst|Add1~0_combout\)))) # (\I2C|I2C_inst|index\(0) & (((\I2C|I2C_inst|Add1~0_combout\) # 
-- (\I2C|I2C_inst|SDA_byte\(0)))))) ) ) # ( \I2C|I2C_inst|Add1~1_combout\ & ( (!\I2C|I2C_inst|index\(0) & (((\I2C|I2C_inst|SDA_byte\(3) & ((!\I2C|I2C_inst|Add1~0_combout\)))))) # (\I2C|I2C_inst|index\(0) & ((((\I2C|I2C_inst|Add1~0_combout\))) # 
-- (\I2C|I2C_inst|SDA_byte\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111000111010001110100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SDA_byte\(2),
	datab => \I2C|I2C_inst|ALT_INV_index\(0),
	datac => \I2C|I2C_inst|ALT_INV_SDA_byte\(3),
	datad => \I2C|I2C_inst|ALT_INV_SDA_byte\(0),
	datae => \I2C|I2C_inst|ALT_INV_Add1~1_combout\,
	dataf => \I2C|I2C_inst|ALT_INV_Add1~0_combout\,
	datag => \I2C|I2C_inst|ALT_INV_SDA_byte\(1),
	combout => \I2C|I2C_inst|Mux0~4_combout\);

-- Location: LABCELL_X61_Y19_N51
\I2C|Ram0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Ram0~0_combout\ = ( \I2C|index\(0) & ( (!\I2C|index\(3) & (!\I2C|index\(4) $ ((!\I2C|index\(2))))) # (\I2C|index\(3) & (((!\I2C|index\(4) & \I2C|index\(2))) # (\I2C|index\(1)))) ) ) # ( !\I2C|index\(0) & ( (!\I2C|index\(2) & ((!\I2C|index\(1) & 
-- ((!\I2C|index\(3)))) # (\I2C|index\(1) & (\I2C|index\(4))))) # (\I2C|index\(2) & ((!\I2C|index\(4)) # ((!\I2C|index\(1)) # (\I2C|index\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001101100111111100110110011101100010011011110110001001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_index\(4),
	datab => \I2C|ALT_INV_index\(2),
	datac => \I2C|ALT_INV_index\(3),
	datad => \I2C|ALT_INV_index\(1),
	dataf => \I2C|ALT_INV_index\(0),
	combout => \I2C|Ram0~0_combout\);

-- Location: FF_X61_Y19_N52
\I2C|BASE_ADDRESS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Ram0~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|BASE_ADDRESS\(4));

-- Location: FF_X63_Y17_N41
\I2C|I2C_inst|SDA_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \I2C|BASE_ADDRESS\(4),
	sclr => \I2C|ALT_INV_START_SEQ~q\,
	sload => VCC,
	ena => \I2C|I2C_inst|SDA_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_data\(4));

-- Location: MLABCELL_X60_Y17_N24
\I2C|Ram1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Ram1~0_combout\ = ( \I2C|index\(0) & ( (!\I2C|index\(4) & (((\I2C|index\(3))))) # (\I2C|index\(4) & (!\I2C|index\(2) & ((\I2C|index\(3)) # (\I2C|index\(1))))) ) ) # ( !\I2C|index\(0) & ( (!\I2C|index\(4) & (!\I2C|index\(3) & ((\I2C|index\(2)) # 
-- (\I2C|index\(1))))) # (\I2C|index\(4) & (((\I2C|index\(3) & \I2C|index\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000011010000001100001100011111000011000001111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_index\(1),
	datab => \I2C|ALT_INV_index\(4),
	datac => \I2C|ALT_INV_index\(3),
	datad => \I2C|ALT_INV_index\(2),
	dataf => \I2C|ALT_INV_index\(0),
	combout => \I2C|Ram1~0_combout\);

-- Location: FF_X60_Y17_N25
\I2C|DATA_BYTE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Ram1~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|DATA_BYTE\(4));

-- Location: LABCELL_X61_Y17_N3
\I2C|I2C_inst|SDA_data[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|SDA_data[12]~feeder_combout\ = ( \I2C|DATA_BYTE\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \I2C|ALT_INV_DATA_BYTE\(4),
	combout => \I2C|I2C_inst|SDA_data[12]~feeder_combout\);

-- Location: FF_X61_Y17_N5
\I2C|I2C_inst|SDA_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|SDA_data[12]~feeder_combout\,
	sclr => \I2C|ALT_INV_START_SEQ~q\,
	ena => \I2C|I2C_inst|SDA_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_data\(12));

-- Location: MLABCELL_X60_Y17_N6
\I2C|I2C_inst|Selector45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector45~0_combout\ = (!\I2C|I2C_inst|Equal5~0_combout\ & (\I2C|I2C_inst|SDA_data\(4))) # (\I2C|I2C_inst|Equal5~0_combout\ & ((\I2C|I2C_inst|SDA_data\(12))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_Equal5~0_combout\,
	datab => \I2C|I2C_inst|ALT_INV_SDA_data\(4),
	datac => \I2C|I2C_inst|ALT_INV_SDA_data\(12),
	combout => \I2C|I2C_inst|Selector45~0_combout\);

-- Location: FF_X60_Y17_N8
\I2C|I2C_inst|SDA_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector45~0_combout\,
	asdata => \I2C|START_SEQ~q\,
	sload => \I2C|I2C_inst|ALT_INV_curr_state.ack~q\,
	ena => \I2C|I2C_inst|SDA_byte[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_byte\(4));

-- Location: MLABCELL_X60_Y17_N21
\I2C|Ram0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Ram0~7_combout\ = ( \I2C|index\(1) & ( \I2C|index\(4) ) ) # ( !\I2C|index\(1) & ( ((!\I2C|index\(2) & (!\I2C|index\(3) & !\I2C|index\(0))) # (\I2C|index\(2) & (\I2C|index\(3) & \I2C|index\(0)))) # (\I2C|index\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000111111111100000011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_index\(2),
	datab => \I2C|ALT_INV_index\(3),
	datac => \I2C|ALT_INV_index\(0),
	datad => \I2C|ALT_INV_index\(4),
	dataf => \I2C|ALT_INV_index\(1),
	combout => \I2C|Ram0~7_combout\);

-- Location: FF_X60_Y17_N22
\I2C|BASE_ADDRESS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Ram0~7_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|BASE_ADDRESS\(7));

-- Location: LABCELL_X61_Y17_N36
\I2C|I2C_inst|SDA_data[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|SDA_data[7]~feeder_combout\ = \I2C|BASE_ADDRESS\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I2C|ALT_INV_BASE_ADDRESS\(7),
	combout => \I2C|I2C_inst|SDA_data[7]~feeder_combout\);

-- Location: FF_X61_Y17_N37
\I2C|I2C_inst|SDA_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|SDA_data[7]~feeder_combout\,
	sclr => \I2C|ALT_INV_START_SEQ~q\,
	ena => \I2C|I2C_inst|SDA_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_data\(7));

-- Location: LABCELL_X61_Y19_N48
\I2C|Ram1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Ram1~3_combout\ = ( \I2C|index\(0) & ( (!\I2C|index\(2) & (\I2C|index\(4) & (\I2C|index\(1) & \I2C|index\(3)))) # (\I2C|index\(2) & (!\I2C|index\(1) & (!\I2C|index\(4) $ (!\I2C|index\(3))))) ) ) # ( !\I2C|index\(0) & ( (!\I2C|index\(4) & 
-- (!\I2C|index\(2) & ((\I2C|index\(3))))) # (\I2C|index\(4) & (((\I2C|index\(1) & !\I2C|index\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001000000001011000100000010000001001000001000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_index\(4),
	datab => \I2C|ALT_INV_index\(2),
	datac => \I2C|ALT_INV_index\(1),
	datad => \I2C|ALT_INV_index\(3),
	dataf => \I2C|ALT_INV_index\(0),
	combout => \I2C|Ram1~3_combout\);

-- Location: FF_X61_Y19_N49
\I2C|DATA_BYTE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Ram1~3_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|DATA_BYTE\(7));

-- Location: FF_X61_Y17_N32
\I2C|I2C_inst|SDA_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \I2C|DATA_BYTE\(7),
	sclr => \I2C|ALT_INV_START_SEQ~q\,
	sload => VCC,
	ena => \I2C|I2C_inst|SDA_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_data\(15));

-- Location: LABCELL_X61_Y17_N30
\I2C|I2C_inst|Selector42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector42~0_combout\ = (!\I2C|I2C_inst|byte_num\(0) & (((\I2C|I2C_inst|SDA_data\(7))))) # (\I2C|I2C_inst|byte_num\(0) & ((!\I2C|I2C_inst|byte_num\(1) & (\I2C|I2C_inst|SDA_data\(7))) # (\I2C|I2C_inst|byte_num\(1) & 
-- ((\I2C|I2C_inst|SDA_data\(15))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_byte_num\(0),
	datab => \I2C|I2C_inst|ALT_INV_byte_num\(1),
	datac => \I2C|I2C_inst|ALT_INV_SDA_data\(7),
	datad => \I2C|I2C_inst|ALT_INV_SDA_data\(15),
	combout => \I2C|I2C_inst|Selector42~0_combout\);

-- Location: MLABCELL_X60_Y17_N48
\I2C|I2C_inst|Selector42~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector42~1_combout\ = ( \I2C|I2C_inst|SDA_byte\(7) & ( \I2C|I2C_inst|Selector42~0_combout\ & ( (\I2C|I2C_inst|curr_state.idle~q\) # (\I2C|I2C_inst|curr_state.ack~q\) ) ) ) # ( !\I2C|I2C_inst|SDA_byte\(7) & ( 
-- \I2C|I2C_inst|Selector42~0_combout\ & ( (\I2C|I2C_inst|curr_state.ack~q\ & (\I2C|I2C_inst|process_0~2_combout\ & \I2C|I2C_inst|SDA_byte[5]~0_combout\)) ) ) ) # ( \I2C|I2C_inst|SDA_byte\(7) & ( !\I2C|I2C_inst|Selector42~0_combout\ & ( 
-- (!\I2C|I2C_inst|curr_state.ack~q\ & (\I2C|I2C_inst|curr_state.idle~q\)) # (\I2C|I2C_inst|curr_state.ack~q\ & (((!\I2C|I2C_inst|process_0~2_combout\) # (!\I2C|I2C_inst|SDA_byte[5]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111001000000000000001010111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_curr_state.ack~q\,
	datab => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	datac => \I2C|I2C_inst|ALT_INV_process_0~2_combout\,
	datad => \I2C|I2C_inst|ALT_INV_SDA_byte[5]~0_combout\,
	datae => \I2C|I2C_inst|ALT_INV_SDA_byte\(7),
	dataf => \I2C|I2C_inst|ALT_INV_Selector42~0_combout\,
	combout => \I2C|I2C_inst|Selector42~1_combout\);

-- Location: FF_X60_Y17_N50
\I2C|I2C_inst|SDA_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector42~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_byte\(7));

-- Location: MLABCELL_X60_Y17_N42
\I2C|Ram1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Ram1~1_combout\ = ( \I2C|index\(0) & ( (!\I2C|index\(4) & (\I2C|index\(2) & (!\I2C|index\(1) $ (!\I2C|index\(3))))) # (\I2C|index\(4) & (\I2C|index\(3) & (!\I2C|index\(1) $ (!\I2C|index\(2))))) ) ) # ( !\I2C|index\(0) & ( (!\I2C|index\(1) & 
-- ((!\I2C|index\(2) & (\I2C|index\(3) & \I2C|index\(4))) # (\I2C|index\(2) & (!\I2C|index\(3))))) # (\I2C|index\(1) & (\I2C|index\(4) & ((!\I2C|index\(2)) # (\I2C|index\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001101101001000000110110100010010000001100001001000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_index\(1),
	datab => \I2C|ALT_INV_index\(2),
	datac => \I2C|ALT_INV_index\(3),
	datad => \I2C|ALT_INV_index\(4),
	dataf => \I2C|ALT_INV_index\(0),
	combout => \I2C|Ram1~1_combout\);

-- Location: FF_X60_Y17_N43
\I2C|DATA_BYTE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Ram1~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|DATA_BYTE\(6));

-- Location: FF_X61_Y17_N19
\I2C|I2C_inst|SDA_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \I2C|DATA_BYTE\(6),
	sclr => \I2C|ALT_INV_START_SEQ~q\,
	sload => VCC,
	ena => \I2C|I2C_inst|SDA_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_data\(14));

-- Location: LABCELL_X61_Y19_N36
\I2C|Ram0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Ram0~1_combout\ = ( \I2C|index\(2) & ( (!\I2C|index\(0)) # (!\I2C|index\(1) $ (!\I2C|index\(4))) ) ) # ( !\I2C|index\(2) & ( (!\I2C|index\(4)) # ((\I2C|index\(0) & \I2C|index\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000101111111110000010110101111111110101010111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_index\(0),
	datac => \I2C|ALT_INV_index\(1),
	datad => \I2C|ALT_INV_index\(4),
	dataf => \I2C|ALT_INV_index\(2),
	combout => \I2C|Ram0~1_combout\);

-- Location: FF_X61_Y19_N37
\I2C|BASE_ADDRESS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Ram0~1_combout\,
	sclr => \I2C|ALT_INV_index\(3),
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|BASE_ADDRESS\(6));

-- Location: FF_X63_Y17_N35
\I2C|I2C_inst|SDA_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \I2C|BASE_ADDRESS\(6),
	sclr => \I2C|ALT_INV_START_SEQ~q\,
	sload => VCC,
	ena => \I2C|I2C_inst|SDA_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_data\(6));

-- Location: LABCELL_X61_Y18_N12
\I2C|I2C_inst|Selector43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector43~0_combout\ = ( \I2C|I2C_inst|SDA_data\(6) & ( (!\I2C|I2C_inst|Equal5~0_combout\) # (\I2C|I2C_inst|SDA_data\(14)) ) ) # ( !\I2C|I2C_inst|SDA_data\(6) & ( (\I2C|I2C_inst|Equal5~0_combout\ & \I2C|I2C_inst|SDA_data\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C|I2C_inst|ALT_INV_Equal5~0_combout\,
	datac => \I2C|I2C_inst|ALT_INV_SDA_data\(14),
	dataf => \I2C|I2C_inst|ALT_INV_SDA_data\(6),
	combout => \I2C|I2C_inst|Selector43~0_combout\);

-- Location: FF_X61_Y18_N13
\I2C|I2C_inst|SDA_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector43~0_combout\,
	asdata => \I2C|START_SEQ~q\,
	sload => \I2C|I2C_inst|ALT_INV_curr_state.ack~q\,
	ena => \I2C|I2C_inst|SDA_byte[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_byte\(6));

-- Location: MLABCELL_X60_Y17_N15
\I2C|Ram1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Ram1~2_combout\ = ( \I2C|index\(0) & ( (!\I2C|index\(1) & ((\I2C|index\(2)))) # (\I2C|index\(1) & (\I2C|index\(4) & !\I2C|index\(2))) ) ) # ( !\I2C|index\(0) & ( (!\I2C|index\(1) & (((!\I2C|index\(3) & \I2C|index\(2))))) # (\I2C|index\(1) & 
-- ((!\I2C|index\(3) $ (!\I2C|index\(2))) # (\I2C|index\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010111110001000101011111000100010001101010100001000110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_index\(1),
	datab => \I2C|ALT_INV_index\(4),
	datac => \I2C|ALT_INV_index\(3),
	datad => \I2C|ALT_INV_index\(2),
	dataf => \I2C|ALT_INV_index\(0),
	combout => \I2C|Ram1~2_combout\);

-- Location: FF_X60_Y17_N16
\I2C|DATA_BYTE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Ram1~2_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|DATA_BYTE\(5));

-- Location: FF_X61_Y17_N23
\I2C|I2C_inst|SDA_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \I2C|DATA_BYTE\(5),
	sclr => \I2C|ALT_INV_START_SEQ~q\,
	sload => VCC,
	ena => \I2C|I2C_inst|SDA_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_data\(13));

-- Location: LABCELL_X61_Y19_N0
\I2C|Ram0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|Ram0~2_combout\ = ( \I2C|index\(2) & ( (!\I2C|index\(0) & (\I2C|index\(1) & ((\I2C|index\(3)) # (\I2C|index\(4))))) # (\I2C|index\(0) & (!\I2C|index\(4) $ (((!\I2C|index\(1)) # (!\I2C|index\(3)))))) ) ) # ( !\I2C|index\(2) & ( (\I2C|index\(4) & 
-- (\I2C|index\(3) & ((!\I2C|index\(0)) # (!\I2C|index\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001110000000000000111000000111001101100000011100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|ALT_INV_index\(0),
	datab => \I2C|ALT_INV_index\(1),
	datac => \I2C|ALT_INV_index\(4),
	datad => \I2C|ALT_INV_index\(3),
	dataf => \I2C|ALT_INV_index\(2),
	combout => \I2C|Ram0~2_combout\);

-- Location: FF_X61_Y19_N1
\I2C|BASE_ADDRESS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|Ram0~2_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|BASE_ADDRESS\(5));

-- Location: FF_X61_Y17_N38
\I2C|I2C_inst|SDA_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \I2C|BASE_ADDRESS\(5),
	sclr => \I2C|ALT_INV_START_SEQ~q\,
	sload => VCC,
	ena => \I2C|I2C_inst|SDA_data[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_data\(5));

-- Location: MLABCELL_X60_Y17_N9
\I2C|I2C_inst|Selector44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector44~0_combout\ = ( \I2C|I2C_inst|SDA_data\(5) & ( (!\I2C|I2C_inst|Equal5~0_combout\) # (\I2C|I2C_inst|SDA_data\(13)) ) ) # ( !\I2C|I2C_inst|SDA_data\(5) & ( (\I2C|I2C_inst|Equal5~0_combout\ & \I2C|I2C_inst|SDA_data\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_Equal5~0_combout\,
	datad => \I2C|I2C_inst|ALT_INV_SDA_data\(13),
	dataf => \I2C|I2C_inst|ALT_INV_SDA_data\(5),
	combout => \I2C|I2C_inst|Selector44~0_combout\);

-- Location: FF_X60_Y17_N10
\I2C|I2C_inst|SDA_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector44~0_combout\,
	asdata => \I2C|START_SEQ~q\,
	sload => \I2C|I2C_inst|ALT_INV_curr_state.ack~q\,
	ena => \I2C|I2C_inst|SDA_byte[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA_byte\(5));

-- Location: MLABCELL_X60_Y17_N0
\I2C|I2C_inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Mux0~0_combout\ = ( !\I2C|I2C_inst|Add1~1_combout\ & ( (!\I2C|I2C_inst|Mux0~4_combout\ & (((\I2C|I2C_inst|SDA_byte\(5) & ((\I2C|I2C_inst|Add1~0_combout\)))))) # (\I2C|I2C_inst|Mux0~4_combout\ & ((((!\I2C|I2C_inst|Add1~0_combout\))) # 
-- (\I2C|I2C_inst|SDA_byte\(4)))) ) ) # ( \I2C|I2C_inst|Add1~1_combout\ & ( (!\I2C|I2C_inst|Mux0~4_combout\ & (((\I2C|I2C_inst|SDA_byte\(7) & ((\I2C|I2C_inst|Add1~0_combout\)))))) # (\I2C|I2C_inst|Mux0~4_combout\ & ((((!\I2C|I2C_inst|Add1~0_combout\) # 
-- (\I2C|I2C_inst|SDA_byte\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101010101010101010101010100011011000110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_Mux0~4_combout\,
	datab => \I2C|I2C_inst|ALT_INV_SDA_byte\(4),
	datac => \I2C|I2C_inst|ALT_INV_SDA_byte\(7),
	datad => \I2C|I2C_inst|ALT_INV_SDA_byte\(6),
	datae => \I2C|I2C_inst|ALT_INV_Add1~1_combout\,
	dataf => \I2C|I2C_inst|ALT_INV_Add1~0_combout\,
	datag => \I2C|I2C_inst|ALT_INV_SDA_byte\(5),
	combout => \I2C|I2C_inst|Mux0~0_combout\);

-- Location: LABCELL_X63_Y19_N30
\I2C|I2C_inst|Selector56~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector56~1_combout\ = ( \I2C|I2C_inst|Selector56~0_combout\ & ( ((!\I2C|I2C_inst|curr_state.idle~q\) # (\I2C|I2C_inst|Mux0~0_combout\)) # (\I2C|I2C_inst|curr_state.stop~q\) ) ) # ( !\I2C|I2C_inst|Selector56~0_combout\ & ( 
-- (!\I2C|I2C_inst|curr_state.idle~q\) # (\I2C|I2C_inst|curr_state.stop~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111110011111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C|I2C_inst|ALT_INV_curr_state.stop~q\,
	datac => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	datad => \I2C|I2C_inst|ALT_INV_Mux0~0_combout\,
	dataf => \I2C|I2C_inst|ALT_INV_Selector56~0_combout\,
	combout => \I2C|I2C_inst|Selector56~1_combout\);

-- Location: LABCELL_X63_Y19_N18
\I2C|I2C_inst|SDA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|SDA~1_combout\ = ( \I2C|I2C_inst|Equal6~1_combout\ & ( (\I2C|I2C_inst|curr_state.idle~q\ & ((!\I2C|I2C_inst|curr_state.start~q\) # (!\I2C|I2C_inst|SCL_count\(0)))) ) ) # ( !\I2C|I2C_inst|Equal6~1_combout\ & ( \I2C|I2C_inst|curr_state.idle~q\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000010100000111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_curr_state.start~q\,
	datac => \I2C|I2C_inst|ALT_INV_curr_state.idle~q\,
	datad => \I2C|I2C_inst|ALT_INV_SCL_count\(0),
	dataf => \I2C|I2C_inst|ALT_INV_Equal6~1_combout\,
	combout => \I2C|I2C_inst|SDA~1_combout\);

-- Location: LABCELL_X63_Y19_N54
\I2C|I2C_inst|SDA~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|SDA~2_combout\ = ( \I2C|I2C_inst|Selector52~2_combout\ & ( \RESET~input_o\ ) ) # ( !\I2C|I2C_inst|Selector52~2_combout\ & ( (\RESET~input_o\ & ((!\I2C|I2C_inst|SDA~1_combout\) # ((\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & 
-- !\I2C|I2C_inst|process_0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001010000010110000101000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_SDA~1_combout\,
	datab => \I2C|I2C_inst|ALT_INV_curr_state.sending~DUPLICATE_q\,
	datac => \ALT_INV_RESET~input_o\,
	datad => \I2C|I2C_inst|ALT_INV_process_0~1_combout\,
	dataf => \I2C|I2C_inst|ALT_INV_Selector52~2_combout\,
	combout => \I2C|I2C_inst|SDA~2_combout\);

-- Location: FF_X63_Y19_N32
\I2C|I2C_inst|SDA~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector56~1_combout\,
	ena => \I2C|I2C_inst|SDA~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA~reg0_q\);

-- Location: FF_X63_Y19_N13
\I2C|I2C_inst|SDA~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector57~0_combout\,
	ena => \I2C|I2C_inst|SDA~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SDA~en_q\);

-- Location: LABCELL_X61_Y18_N6
\I2C|I2C_inst|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector0~0_combout\ = ( !\I2C|I2C_inst|curr_state.sending~DUPLICATE_q\ & ( (!\I2C|I2C_inst|curr_state.ack~q\ & ((!\I2C|I2C_inst|curr_state.stop~q\) # (\I2C|I2C_inst|SCL~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000000111100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I2C|I2C_inst|ALT_INV_SCL~q\,
	datac => \I2C|I2C_inst|ALT_INV_curr_state.stop~q\,
	datad => \I2C|I2C_inst|ALT_INV_curr_state.ack~q\,
	dataf => \I2C|I2C_inst|ALT_INV_curr_state.sending~DUPLICATE_q\,
	combout => \I2C|I2C_inst|Selector0~0_combout\);

-- Location: LABCELL_X61_Y18_N9
\I2C|I2C_inst|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|I2C_inst|Selector0~1_combout\ = ( \I2C|I2C_inst|curr_state.start~q\ & ( (\I2C|I2C_inst|SCL~q\ & !\I2C|I2C_inst|Equal0~6_combout\) ) ) # ( !\I2C|I2C_inst|curr_state.start~q\ & ( ((!\I2C|I2C_inst|Equal0~6_combout\ & (\I2C|I2C_inst|SCL~q\)) # 
-- (\I2C|I2C_inst|Equal0~6_combout\ & ((\I2C|I2C_inst|SCL_state~q\)))) # (\I2C|I2C_inst|Selector0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101011111011101110101111100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_Selector0~0_combout\,
	datab => \I2C|I2C_inst|ALT_INV_SCL~q\,
	datac => \I2C|I2C_inst|ALT_INV_SCL_state~q\,
	datad => \I2C|I2C_inst|ALT_INV_Equal0~6_combout\,
	dataf => \I2C|I2C_inst|ALT_INV_curr_state.start~q\,
	combout => \I2C|I2C_inst|Selector0~1_combout\);

-- Location: FF_X61_Y18_N11
\I2C|I2C_inst|SCL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \I2C|I2C_inst|Selector0~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|I2C_inst|SCL~q\);

-- Location: IOIBUF_X68_Y22_N44
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: PLLREFCLKSELECT_X68_Y7_N0
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_2",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: FRACTIONALPLL_X68_Y1_N0
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "none",
	nreset_invert => "true",
	output_clock_frequency => "445.499999 mhz",
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
	pll_fractional_division => -386547143,
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
  fractional_pll_index => 1)
-- pragma translate_on
PORT MAP (
	coreclkfb => \hdmipll|pllhdmi_inst|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => \ALT_INV_RESET~input_o\,
	refclkin => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \hdmipll|pllhdmi_inst|altera_pll_i|fboutclk_wire\(0),
	tclk => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X68_Y5_N0
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 1)
-- pragma translate_on
PORT MAP (
	cntnen => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X68_Y5_N1
\hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 2,
	dprio0_cnt_lo_div => 1,
	dprio0_cnt_odd_div_even_duty_en => "true",
	duty_cycle => 50,
	output_clock_frequency => "148.5 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 1,
  output_counter_index => 5)
-- pragma translate_on
PORT MAP (
	nen0 => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN5\,
	tclk0 => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \hdmipll|pllhdmi_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire\(0));

-- Location: CLKCTRL_G4
\hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire\(0),
	outclk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\);

-- Location: LABCELL_X65_Y23_N0
\HDMI|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add0~29_sumout\ = SUM(( \HDMI|counterx\(0) ) + ( VCC ) + ( !VCC ))
-- \HDMI|Add0~30\ = CARRY(( \HDMI|counterx\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \HDMI|ALT_INV_counterx\(0),
	cin => GND,
	sumout => \HDMI|Add0~29_sumout\,
	cout => \HDMI|Add0~30\);

-- Location: MLABCELL_X60_Y21_N48
\I2C|SETUP_DONE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I2C|SETUP_DONE~0_combout\ = ( !\I2C|state.ack~q\ & ( ((\I2C|SETUP_DONE~q\ & (((!\pulse_inst|pulse~q\) # (!\RESET~input_o\)) # (\I2C|state.send~q\)))) ) ) # ( \I2C|state.ack~q\ & ( (((\I2C|I2C_inst|COMP_SEQ~q\ & (!\I2C|Equal0~0_combout\ & 
-- \RESET~input_o\))) # (\I2C|SETUP_DONE~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100000000111100110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I2C|I2C_inst|ALT_INV_COMP_SEQ~q\,
	datab => \I2C|ALT_INV_state.send~q\,
	datac => \I2C|ALT_INV_Equal0~0_combout\,
	datad => \I2C|ALT_INV_SETUP_DONE~q\,
	datae => \I2C|ALT_INV_state.ack~q\,
	dataf => \ALT_INV_RESET~input_o\,
	datag => \pulse_inst|ALT_INV_pulse~q\,
	combout => \I2C|SETUP_DONE~0_combout\);

-- Location: FF_X65_Y23_N53
\I2C|SETUP_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \I2C|SETUP_DONE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I2C|SETUP_DONE~q\);

-- Location: FF_X65_Y23_N4
\HDMI|counterx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add0~33_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|counterx\(1));

-- Location: FF_X65_Y23_N7
\HDMI|counterx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add0~25_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|counterx\(2));

-- Location: LABCELL_X65_Y23_N18
\HDMI|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add0~9_sumout\ = SUM(( \HDMI|counterx\(6) ) + ( GND ) + ( \HDMI|Add0~14\ ))
-- \HDMI|Add0~10\ = CARRY(( \HDMI|counterx\(6) ) + ( GND ) + ( \HDMI|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_counterx\(6),
	cin => \HDMI|Add0~14\,
	sumout => \HDMI|Add0~9_sumout\,
	cout => \HDMI|Add0~10\);

-- Location: LABCELL_X65_Y23_N21
\HDMI|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add0~5_sumout\ = SUM(( \HDMI|counterx\(7) ) + ( GND ) + ( \HDMI|Add0~10\ ))
-- \HDMI|Add0~6\ = CARRY(( \HDMI|counterx\(7) ) + ( GND ) + ( \HDMI|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_counterx\(7),
	cin => \HDMI|Add0~10\,
	sumout => \HDMI|Add0~5_sumout\,
	cout => \HDMI|Add0~6\);

-- Location: FF_X65_Y23_N22
\HDMI|counterx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add0~5_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|counterx\(7));

-- Location: LABCELL_X65_Y23_N36
\HDMI|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Equal0~1_combout\ = ( \HDMI|counterx\(7) & ( (\HDMI|counterx\(2) & (\HDMI|counterx[4]~DUPLICATE_q\ & (!\HDMI|counterx\(6) & \HDMI|counterx\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HDMI|ALT_INV_counterx\(2),
	datab => \HDMI|ALT_INV_counterx[4]~DUPLICATE_q\,
	datac => \HDMI|ALT_INV_counterx\(6),
	datad => \HDMI|ALT_INV_counterx\(0),
	dataf => \HDMI|ALT_INV_counterx\(7),
	combout => \HDMI|Equal0~1_combout\);

-- Location: LABCELL_X65_Y23_N24
\HDMI|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add0~45_sumout\ = SUM(( \HDMI|counterx\(8) ) + ( GND ) + ( \HDMI|Add0~6\ ))
-- \HDMI|Add0~46\ = CARRY(( \HDMI|counterx\(8) ) + ( GND ) + ( \HDMI|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HDMI|ALT_INV_counterx\(8),
	cin => \HDMI|Add0~6\,
	sumout => \HDMI|Add0~45_sumout\,
	cout => \HDMI|Add0~46\);

-- Location: FF_X65_Y23_N25
\HDMI|counterx[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add0~45_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|counterx\(8));

-- Location: LABCELL_X65_Y23_N27
\HDMI|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add0~41_sumout\ = SUM(( \HDMI|counterx\(9) ) + ( GND ) + ( \HDMI|Add0~46\ ))
-- \HDMI|Add0~42\ = CARRY(( \HDMI|counterx\(9) ) + ( GND ) + ( \HDMI|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_counterx\(9),
	cin => \HDMI|Add0~46\,
	sumout => \HDMI|Add0~41_sumout\,
	cout => \HDMI|Add0~42\);

-- Location: FF_X65_Y23_N29
\HDMI|counterx[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add0~41_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|counterx\(9));

-- Location: LABCELL_X65_Y23_N30
\HDMI|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add0~37_sumout\ = SUM(( \HDMI|counterx\(10) ) + ( GND ) + ( \HDMI|Add0~42\ ))
-- \HDMI|Add0~38\ = CARRY(( \HDMI|counterx\(10) ) + ( GND ) + ( \HDMI|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_counterx\(10),
	cin => \HDMI|Add0~42\,
	sumout => \HDMI|Add0~37_sumout\,
	cout => \HDMI|Add0~38\);

-- Location: FF_X65_Y23_N32
\HDMI|counterx[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add0~37_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|counterx\(10));

-- Location: FF_X65_Y23_N35
\HDMI|counterx[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add0~1_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|counterx\(11));

-- Location: LABCELL_X65_Y23_N33
\HDMI|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add0~1_sumout\ = SUM(( \HDMI|counterx\(11) ) + ( GND ) + ( \HDMI|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HDMI|ALT_INV_counterx\(11),
	cin => \HDMI|Add0~38\,
	sumout => \HDMI|Add0~1_sumout\);

-- Location: FF_X65_Y23_N34
\HDMI|counterx[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add0~1_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|counterx[11]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y23_N51
\HDMI|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Equal0~2_combout\ = ( !\HDMI|counterx\(3) & ( \HDMI|counterx[11]~DUPLICATE_q\ & ( (!\HDMI|counterx\(10) & (!\HDMI|counterx\(5) & (!\HDMI|counterx\(8) & !\HDMI|counterx\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HDMI|ALT_INV_counterx\(10),
	datab => \HDMI|ALT_INV_counterx\(5),
	datac => \HDMI|ALT_INV_counterx\(8),
	datad => \HDMI|ALT_INV_counterx\(9),
	datae => \HDMI|ALT_INV_counterx\(3),
	dataf => \HDMI|ALT_INV_counterx[11]~DUPLICATE_q\,
	combout => \HDMI|Equal0~2_combout\);

-- Location: LABCELL_X65_Y24_N36
\HDMI|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Equal0~3_combout\ = ( \HDMI|Equal0~1_combout\ & ( \HDMI|Equal0~2_combout\ & ( \HDMI|counterx\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_counterx\(1),
	datae => \HDMI|ALT_INV_Equal0~1_combout\,
	dataf => \HDMI|ALT_INV_Equal0~2_combout\,
	combout => \HDMI|Equal0~3_combout\);

-- Location: FF_X65_Y23_N38
\HDMI|counterx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \HDMI|Add0~29_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|counterx\(0));

-- Location: LABCELL_X65_Y23_N3
\HDMI|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add0~33_sumout\ = SUM(( \HDMI|counterx[1]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add0~30\ ))
-- \HDMI|Add0~34\ = CARRY(( \HDMI|counterx[1]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \HDMI|ALT_INV_counterx[1]~DUPLICATE_q\,
	cin => \HDMI|Add0~30\,
	sumout => \HDMI|Add0~33_sumout\,
	cout => \HDMI|Add0~34\);

-- Location: FF_X65_Y23_N5
\HDMI|counterx[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add0~33_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|counterx[1]~DUPLICATE_q\);

-- Location: LABCELL_X65_Y23_N6
\HDMI|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add0~25_sumout\ = SUM(( \HDMI|counterx[2]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add0~34\ ))
-- \HDMI|Add0~26\ = CARRY(( \HDMI|counterx[2]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_counterx[2]~DUPLICATE_q\,
	cin => \HDMI|Add0~34\,
	sumout => \HDMI|Add0~25_sumout\,
	cout => \HDMI|Add0~26\);

-- Location: FF_X65_Y23_N8
\HDMI|counterx[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add0~25_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|counterx[2]~DUPLICATE_q\);

-- Location: LABCELL_X65_Y23_N9
\HDMI|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add0~21_sumout\ = SUM(( \HDMI|counterx\(3) ) + ( GND ) + ( \HDMI|Add0~26\ ))
-- \HDMI|Add0~22\ = CARRY(( \HDMI|counterx\(3) ) + ( GND ) + ( \HDMI|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_counterx\(3),
	cin => \HDMI|Add0~26\,
	sumout => \HDMI|Add0~21_sumout\,
	cout => \HDMI|Add0~22\);

-- Location: FF_X65_Y23_N11
\HDMI|counterx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add0~21_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|counterx\(3));

-- Location: LABCELL_X65_Y23_N12
\HDMI|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add0~17_sumout\ = SUM(( \HDMI|counterx[4]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add0~22\ ))
-- \HDMI|Add0~18\ = CARRY(( \HDMI|counterx[4]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HDMI|ALT_INV_counterx[4]~DUPLICATE_q\,
	cin => \HDMI|Add0~22\,
	sumout => \HDMI|Add0~17_sumout\,
	cout => \HDMI|Add0~18\);

-- Location: FF_X65_Y23_N14
\HDMI|counterx[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add0~17_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|counterx[4]~DUPLICATE_q\);

-- Location: LABCELL_X65_Y23_N15
\HDMI|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add0~13_sumout\ = SUM(( \HDMI|counterx\(5) ) + ( GND ) + ( \HDMI|Add0~18\ ))
-- \HDMI|Add0~14\ = CARRY(( \HDMI|counterx\(5) ) + ( GND ) + ( \HDMI|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_counterx\(5),
	cin => \HDMI|Add0~18\,
	sumout => \HDMI|Add0~13_sumout\,
	cout => \HDMI|Add0~14\);

-- Location: FF_X65_Y23_N17
\HDMI|counterx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add0~13_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|counterx\(5));

-- Location: FF_X65_Y23_N20
\HDMI|counterx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add0~9_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|counterx\(6));

-- Location: FF_X65_Y23_N26
\HDMI|counterx[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add0~45_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|counterx[8]~DUPLICATE_q\);

-- Location: LABCELL_X65_Y23_N45
\HDMI|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Equal0~0_combout\ = ( !\HDMI|counterx[8]~DUPLICATE_q\ & ( (!\HDMI|counterx\(10) & !\HDMI|counterx\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_counterx\(10),
	datad => \HDMI|ALT_INV_counterx\(9),
	dataf => \HDMI|ALT_INV_counterx[8]~DUPLICATE_q\,
	combout => \HDMI|Equal0~0_combout\);

-- Location: LABCELL_X65_Y23_N39
\HDMI|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|LessThan5~0_combout\ = ( \HDMI|counterx\(1) & ( (!\HDMI|counterx[4]~DUPLICATE_q\ & ((!\HDMI|counterx\(2)) # (!\HDMI|counterx\(3)))) ) ) # ( !\HDMI|counterx\(1) & ( (!\HDMI|counterx[4]~DUPLICATE_q\ & ((!\HDMI|counterx\(2)) # ((!\HDMI|counterx\(3)) # 
-- (!\HDMI|counterx\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001000110011001100100011001000110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HDMI|ALT_INV_counterx\(2),
	datab => \HDMI|ALT_INV_counterx[4]~DUPLICATE_q\,
	datac => \HDMI|ALT_INV_counterx\(3),
	datad => \HDMI|ALT_INV_counterx\(0),
	dataf => \HDMI|ALT_INV_counterx\(1),
	combout => \HDMI|LessThan5~0_combout\);

-- Location: LABCELL_X65_Y23_N57
\HDMI|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|LessThan5~1_combout\ = ( \HDMI|Equal0~0_combout\ & ( \HDMI|LessThan5~0_combout\ & ( ((\HDMI|counterx\(11)) # (\HDMI|counterx\(7))) # (\HDMI|counterx\(6)) ) ) ) # ( !\HDMI|Equal0~0_combout\ & ( \HDMI|LessThan5~0_combout\ ) ) # ( 
-- \HDMI|Equal0~0_combout\ & ( !\HDMI|LessThan5~0_combout\ & ( (((\HDMI|counterx\(11)) # (\HDMI|counterx\(7))) # (\HDMI|counterx\(5))) # (\HDMI|counterx\(6)) ) ) ) # ( !\HDMI|Equal0~0_combout\ & ( !\HDMI|LessThan5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011111111111111111111111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HDMI|ALT_INV_counterx\(6),
	datab => \HDMI|ALT_INV_counterx\(5),
	datac => \HDMI|ALT_INV_counterx\(7),
	datad => \HDMI|ALT_INV_counterx\(11),
	datae => \HDMI|ALT_INV_Equal0~0_combout\,
	dataf => \HDMI|ALT_INV_LessThan5~0_combout\,
	combout => \HDMI|LessThan5~1_combout\);

-- Location: FF_X64_Y23_N28
\HDMI|countery[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add2~29_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery[9]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y23_N0
\HDMI|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add2~41_sumout\ = SUM(( \HDMI|countery[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \HDMI|Add2~42\ = CARRY(( \HDMI|countery[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \HDMI|ALT_INV_countery[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \HDMI|Add2~41_sumout\,
	cout => \HDMI|Add2~42\);

-- Location: FF_X64_Y23_N37
\HDMI|countery[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \HDMI|Add2~41_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	sload => VCC,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery[0]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y23_N3
\HDMI|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add2~5_sumout\ = SUM(( \HDMI|countery[1]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add2~42\ ))
-- \HDMI|Add2~6\ = CARRY(( \HDMI|countery[1]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \HDMI|ALT_INV_countery[1]~DUPLICATE_q\,
	cin => \HDMI|Add2~42\,
	sumout => \HDMI|Add2~5_sumout\,
	cout => \HDMI|Add2~6\);

-- Location: FF_X64_Y23_N4
\HDMI|countery[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add2~5_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery[1]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y23_N6
\HDMI|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add2~1_sumout\ = SUM(( \HDMI|countery[2]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add2~6\ ))
-- \HDMI|Add2~2\ = CARRY(( \HDMI|countery[2]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HDMI|ALT_INV_countery[2]~DUPLICATE_q\,
	cin => \HDMI|Add2~6\,
	sumout => \HDMI|Add2~1_sumout\,
	cout => \HDMI|Add2~2\);

-- Location: FF_X64_Y23_N7
\HDMI|countery[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add2~1_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery[2]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y23_N9
\HDMI|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add2~21_sumout\ = SUM(( \HDMI|countery[3]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add2~2\ ))
-- \HDMI|Add2~22\ = CARRY(( \HDMI|countery[3]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \HDMI|ALT_INV_countery[3]~DUPLICATE_q\,
	cin => \HDMI|Add2~2\,
	sumout => \HDMI|Add2~21_sumout\,
	cout => \HDMI|Add2~22\);

-- Location: FF_X64_Y23_N10
\HDMI|countery[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add2~21_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery[3]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y23_N12
\HDMI|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add2~25_sumout\ = SUM(( \HDMI|countery[4]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add2~22\ ))
-- \HDMI|Add2~26\ = CARRY(( \HDMI|countery[4]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HDMI|ALT_INV_countery[4]~DUPLICATE_q\,
	cin => \HDMI|Add2~22\,
	sumout => \HDMI|Add2~25_sumout\,
	cout => \HDMI|Add2~26\);

-- Location: FF_X64_Y23_N13
\HDMI|countery[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add2~25_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery[4]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y23_N15
\HDMI|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add2~17_sumout\ = SUM(( \HDMI|countery[5]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add2~26\ ))
-- \HDMI|Add2~18\ = CARRY(( \HDMI|countery[5]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_countery[5]~DUPLICATE_q\,
	cin => \HDMI|Add2~26\,
	sumout => \HDMI|Add2~17_sumout\,
	cout => \HDMI|Add2~18\);

-- Location: FF_X64_Y23_N17
\HDMI|countery[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add2~17_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery[5]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y23_N18
\HDMI|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add2~13_sumout\ = SUM(( \HDMI|countery[6]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add2~18\ ))
-- \HDMI|Add2~14\ = CARRY(( \HDMI|countery[6]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_countery[6]~DUPLICATE_q\,
	cin => \HDMI|Add2~18\,
	sumout => \HDMI|Add2~13_sumout\,
	cout => \HDMI|Add2~14\);

-- Location: FF_X64_Y23_N20
\HDMI|countery[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add2~13_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery[6]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y23_N21
\HDMI|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add2~37_sumout\ = SUM(( \HDMI|countery[7]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add2~14\ ))
-- \HDMI|Add2~38\ = CARRY(( \HDMI|countery[7]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_countery[7]~DUPLICATE_q\,
	cin => \HDMI|Add2~14\,
	sumout => \HDMI|Add2~37_sumout\,
	cout => \HDMI|Add2~38\);

-- Location: FF_X64_Y23_N22
\HDMI|countery[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add2~37_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery[7]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y23_N24
\HDMI|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add2~33_sumout\ = SUM(( \HDMI|countery[8]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add2~38\ ))
-- \HDMI|Add2~34\ = CARRY(( \HDMI|countery[8]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HDMI|ALT_INV_countery[8]~DUPLICATE_q\,
	cin => \HDMI|Add2~38\,
	sumout => \HDMI|Add2~33_sumout\,
	cout => \HDMI|Add2~34\);

-- Location: FF_X64_Y23_N25
\HDMI|countery[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add2~33_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery[8]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y23_N27
\HDMI|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add2~29_sumout\ = SUM(( \HDMI|countery[9]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add2~34\ ))
-- \HDMI|Add2~30\ = CARRY(( \HDMI|countery[9]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_countery[9]~DUPLICATE_q\,
	cin => \HDMI|Add2~34\,
	sumout => \HDMI|Add2~29_sumout\,
	cout => \HDMI|Add2~30\);

-- Location: FF_X64_Y23_N29
\HDMI|countery[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add2~29_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery\(9));

-- Location: FF_X64_Y23_N11
\HDMI|countery[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add2~21_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery\(3));

-- Location: FF_X64_Y23_N26
\HDMI|countery[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add2~33_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery\(8));

-- Location: FF_X64_Y23_N23
\HDMI|countery[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add2~37_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery\(7));

-- Location: FF_X64_Y23_N14
\HDMI|countery[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add2~25_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery\(4));

-- Location: LABCELL_X64_Y23_N54
\HDMI|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Equal1~0_combout\ = ( !\HDMI|countery\(4) & ( (!\HDMI|countery\(9) & (!\HDMI|countery\(3) & (!\HDMI|countery\(8) & !\HDMI|countery\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HDMI|ALT_INV_countery\(9),
	datab => \HDMI|ALT_INV_countery\(3),
	datac => \HDMI|ALT_INV_countery\(8),
	datad => \HDMI|ALT_INV_countery\(7),
	dataf => \HDMI|ALT_INV_countery\(4),
	combout => \HDMI|Equal1~0_combout\);

-- Location: LABCELL_X64_Y23_N45
\HDMI|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Equal1~2_combout\ = ( !\HDMI|countery[0]~DUPLICATE_q\ & ( \HDMI|countery[2]~DUPLICATE_q\ & ( (\HDMI|countery[6]~DUPLICATE_q\ & (\HDMI|countery[5]~DUPLICATE_q\ & (\HDMI|countery[10]~DUPLICATE_q\ & !\HDMI|countery[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HDMI|ALT_INV_countery[6]~DUPLICATE_q\,
	datab => \HDMI|ALT_INV_countery[5]~DUPLICATE_q\,
	datac => \HDMI|ALT_INV_countery[10]~DUPLICATE_q\,
	datad => \HDMI|ALT_INV_countery[1]~DUPLICATE_q\,
	datae => \HDMI|ALT_INV_countery[0]~DUPLICATE_q\,
	dataf => \HDMI|ALT_INV_countery[2]~DUPLICATE_q\,
	combout => \HDMI|Equal1~2_combout\);

-- Location: LABCELL_X67_Y23_N45
\HDMI|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Equal1~3_combout\ = ( \HDMI|Equal1~2_combout\ & ( \HDMI|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_Equal1~0_combout\,
	datae => \HDMI|ALT_INV_Equal1~2_combout\,
	combout => \HDMI|Equal1~3_combout\);

-- Location: FF_X64_Y23_N32
\HDMI|countery[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add2~9_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery[10]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y23_N30
\HDMI|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add2~9_sumout\ = SUM(( \HDMI|countery[10]~DUPLICATE_q\ ) + ( GND ) + ( \HDMI|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HDMI|ALT_INV_countery[10]~DUPLICATE_q\,
	cin => \HDMI|Add2~30\,
	sumout => \HDMI|Add2~9_sumout\);

-- Location: FF_X64_Y23_N31
\HDMI|countery[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add2~9_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery\(10));

-- Location: FF_X64_Y23_N16
\HDMI|countery[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add2~17_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery\(5));

-- Location: FF_X64_Y23_N19
\HDMI|countery[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add2~13_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery\(6));

-- Location: LABCELL_X65_Y23_N48
\HDMI|LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|LessThan7~0_combout\ = ( \HDMI|countery[2]~DUPLICATE_q\ & ( \HDMI|Equal1~0_combout\ & ( (((\HDMI|countery\(6)) # (\HDMI|countery\(5))) # (\HDMI|countery[1]~DUPLICATE_q\)) # (\HDMI|countery\(10)) ) ) ) # ( !\HDMI|countery[2]~DUPLICATE_q\ & ( 
-- \HDMI|Equal1~0_combout\ & ( ((\HDMI|countery\(6)) # (\HDMI|countery\(5))) # (\HDMI|countery\(10)) ) ) ) # ( \HDMI|countery[2]~DUPLICATE_q\ & ( !\HDMI|Equal1~0_combout\ ) ) # ( !\HDMI|countery[2]~DUPLICATE_q\ & ( !\HDMI|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101011111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HDMI|ALT_INV_countery\(10),
	datab => \HDMI|ALT_INV_countery[1]~DUPLICATE_q\,
	datac => \HDMI|ALT_INV_countery\(5),
	datad => \HDMI|ALT_INV_countery\(6),
	datae => \HDMI|ALT_INV_countery[2]~DUPLICATE_q\,
	dataf => \HDMI|ALT_INV_Equal1~0_combout\,
	combout => \HDMI|LessThan7~0_combout\);

-- Location: FF_X65_Y23_N23
\HDMI|counterx[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add0~5_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|counterx[7]~DUPLICATE_q\);

-- Location: LABCELL_X65_Y23_N42
\HDMI|DATAENABLE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|DATAENABLE~0_combout\ = ( \HDMI|counterx\(6) & ( (!\HDMI|counterx[8]~DUPLICATE_q\ & (!\HDMI|counterx\(10) & (!\HDMI|counterx\(9) & !\HDMI|counterx[7]~DUPLICATE_q\))) ) ) # ( !\HDMI|counterx\(6) & ( (!\HDMI|counterx[8]~DUPLICATE_q\ & 
-- (!\HDMI|counterx\(10) & !\HDMI|counterx\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HDMI|ALT_INV_counterx[8]~DUPLICATE_q\,
	datab => \HDMI|ALT_INV_counterx\(10),
	datac => \HDMI|ALT_INV_counterx\(9),
	datad => \HDMI|ALT_INV_counterx[7]~DUPLICATE_q\,
	dataf => \HDMI|ALT_INV_counterx\(6),
	combout => \HDMI|DATAENABLE~0_combout\);

-- Location: FF_X65_Y23_N10
\HDMI|counterx[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add0~21_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|counterx[3]~DUPLICATE_q\);

-- Location: FF_X65_Y23_N16
\HDMI|counterx[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add0~13_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|counterx[5]~DUPLICATE_q\);

-- Location: FF_X65_Y23_N13
\HDMI|counterx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add0~17_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|counterx\(4));

-- Location: LABCELL_X67_Y24_N6
\HDMI|DATAENABLE~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|DATAENABLE~1_combout\ = ( !\HDMI|counterx\(4) & ( !\HDMI|counterx\(1) & ( (!\HDMI|counterx\(2) & (!\HDMI|counterx\(0) & (!\HDMI|counterx[3]~DUPLICATE_q\ & !\HDMI|counterx[5]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HDMI|ALT_INV_counterx\(2),
	datab => \HDMI|ALT_INV_counterx\(0),
	datac => \HDMI|ALT_INV_counterx[3]~DUPLICATE_q\,
	datad => \HDMI|ALT_INV_counterx[5]~DUPLICATE_q\,
	datae => \HDMI|ALT_INV_counterx\(4),
	dataf => \HDMI|ALT_INV_counterx\(1),
	combout => \HDMI|DATAENABLE~1_combout\);

-- Location: LABCELL_X67_Y24_N3
\HDMI|DATAENABLE~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|DATAENABLE~2_combout\ = ( \HDMI|DATAENABLE~1_combout\ & ( \HDMI|Equal0~0_combout\ & ( (\HDMI|counterx[11]~DUPLICATE_q\ & !\HDMI|counterx\(7)) ) ) ) # ( !\HDMI|DATAENABLE~1_combout\ & ( \HDMI|Equal0~0_combout\ & ( (\HDMI|counterx[11]~DUPLICATE_q\ & 
-- (!\HDMI|counterx\(6) & !\HDMI|counterx\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HDMI|ALT_INV_counterx[11]~DUPLICATE_q\,
	datac => \HDMI|ALT_INV_counterx\(6),
	datad => \HDMI|ALT_INV_counterx\(7),
	datae => \HDMI|ALT_INV_DATAENABLE~1_combout\,
	dataf => \HDMI|ALT_INV_Equal0~0_combout\,
	combout => \HDMI|DATAENABLE~2_combout\);

-- Location: LABCELL_X64_Y23_N57
\HDMI|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Equal1~1_combout\ = ( !\HDMI|countery\(8) & ( (!\HDMI|countery[9]~DUPLICATE_q\ & !\HDMI|countery\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_countery[9]~DUPLICATE_q\,
	datad => \HDMI|ALT_INV_countery\(7),
	dataf => \HDMI|ALT_INV_countery\(8),
	combout => \HDMI|Equal1~1_combout\);

-- Location: FF_X64_Y23_N8
\HDMI|countery[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add2~1_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery\(2));

-- Location: FF_X64_Y23_N38
\HDMI|countery[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \HDMI|Add2~41_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	sload => VCC,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery\(0));

-- Location: FF_X64_Y23_N5
\HDMI|countery[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add2~5_sumout\,
	clrn => \I2C|SETUP_DONE~q\,
	sclr => \HDMI|Equal1~3_combout\,
	ena => \HDMI|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|countery\(1));

-- Location: LABCELL_X64_Y23_N39
\HDMI|DATAENABLE~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|DATAENABLE~3_combout\ = ( \HDMI|countery\(1) & ( !\HDMI|countery\(4) & ( !\HDMI|countery\(3) ) ) ) # ( !\HDMI|countery\(1) & ( !\HDMI|countery\(4) & ( (!\HDMI|countery\(3)) # ((!\HDMI|countery\(2) & !\HDMI|countery\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HDMI|ALT_INV_countery\(2),
	datac => \HDMI|ALT_INV_countery\(3),
	datad => \HDMI|ALT_INV_countery\(0),
	datae => \HDMI|ALT_INV_countery\(1),
	dataf => \HDMI|ALT_INV_countery\(4),
	combout => \HDMI|DATAENABLE~3_combout\);

-- Location: LABCELL_X64_Y23_N48
\HDMI|DATAENABLE~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|DATAENABLE~4_combout\ = ( \HDMI|Equal1~1_combout\ & ( \HDMI|DATAENABLE~3_combout\ & ( (!\HDMI|countery[6]~DUPLICATE_q\ & ((!\HDMI|countery[10]~DUPLICATE_q\))) # (\HDMI|countery[6]~DUPLICATE_q\ & (\HDMI|countery[5]~DUPLICATE_q\ & 
-- \HDMI|countery[10]~DUPLICATE_q\)) ) ) ) # ( !\HDMI|Equal1~1_combout\ & ( \HDMI|DATAENABLE~3_combout\ & ( \HDMI|countery[10]~DUPLICATE_q\ ) ) ) # ( \HDMI|Equal1~1_combout\ & ( !\HDMI|DATAENABLE~3_combout\ & ( (!\HDMI|countery[5]~DUPLICATE_q\ & 
-- (!\HDMI|countery[6]~DUPLICATE_q\ & !\HDMI|countery[10]~DUPLICATE_q\)) # (\HDMI|countery[5]~DUPLICATE_q\ & (\HDMI|countery[6]~DUPLICATE_q\ & \HDMI|countery[10]~DUPLICATE_q\)) ) ) ) # ( !\HDMI|Equal1~1_combout\ & ( !\HDMI|DATAENABLE~3_combout\ & ( 
-- \HDMI|countery[10]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111110000000000001100000000111111111111000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HDMI|ALT_INV_countery[5]~DUPLICATE_q\,
	datac => \HDMI|ALT_INV_countery[6]~DUPLICATE_q\,
	datad => \HDMI|ALT_INV_countery[10]~DUPLICATE_q\,
	datae => \HDMI|ALT_INV_Equal1~1_combout\,
	dataf => \HDMI|ALT_INV_DATAENABLE~3_combout\,
	combout => \HDMI|DATAENABLE~4_combout\);

-- Location: LABCELL_X67_Y24_N18
\HDMI|DATAENABLE~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|DATAENABLE~5_combout\ = ( \HDMI|DATAENABLE~2_combout\ & ( \HDMI|DATAENABLE~4_combout\ ) ) # ( !\HDMI|DATAENABLE~2_combout\ & ( \HDMI|DATAENABLE~4_combout\ & ( (!\HDMI|DATAENABLE~0_combout\ & !\HDMI|counterx[11]~DUPLICATE_q\) ) ) ) # ( 
-- \HDMI|DATAENABLE~2_combout\ & ( !\HDMI|DATAENABLE~4_combout\ ) ) # ( !\HDMI|DATAENABLE~2_combout\ & ( !\HDMI|DATAENABLE~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_DATAENABLE~0_combout\,
	datad => \HDMI|ALT_INV_counterx[11]~DUPLICATE_q\,
	datae => \HDMI|ALT_INV_DATAENABLE~2_combout\,
	dataf => \HDMI|ALT_INV_DATAENABLE~4_combout\,
	combout => \HDMI|DATAENABLE~5_combout\);

-- Location: LABCELL_X67_Y24_N12
\HDMI|HDMICLK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|HDMICLK~0_combout\ = ( GLOBAL(\hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\) & ( \I2C|SETUP_DONE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \hdmipll|pllhdmi_inst|altera_pll_i|ALT_INV_outclk_wire[0]~CLKENA0_outclk\,
	dataf => \I2C|ALT_INV_SETUP_DONE~q\,
	combout => \HDMI|HDMICLK~0_combout\);

-- Location: LABCELL_X67_Y24_N30
\HDMI|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~1_sumout\ = SUM(( \HDMI|HDMIDATA\(3) ) + ( VCC ) + ( !VCC ))
-- \HDMI|Add1~2\ = CARRY(( \HDMI|HDMIDATA\(3) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_HDMIDATA\(3),
	cin => GND,
	sumout => \HDMI|Add1~1_sumout\,
	cout => \HDMI|Add1~2\);

-- Location: LABCELL_X67_Y24_N24
\HDMI|HDMIDATA[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|HDMIDATA[3]~feeder_combout\ = ( \HDMI|Add1~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \HDMI|ALT_INV_Add1~1_sumout\,
	combout => \HDMI|HDMIDATA[3]~feeder_combout\);

-- Location: LABCELL_X67_Y23_N36
\HDMI|HDMIDATA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|HDMIDATA~0_combout\ = ( \HDMI|Equal1~2_combout\ & ( \HDMI|Equal0~1_combout\ & ( (\HDMI|Equal0~2_combout\ & (\HDMI|Equal1~0_combout\ & \HDMI|counterx[1]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HDMI|ALT_INV_Equal0~2_combout\,
	datab => \HDMI|ALT_INV_Equal1~0_combout\,
	datac => \HDMI|ALT_INV_counterx[1]~DUPLICATE_q\,
	datae => \HDMI|ALT_INV_Equal1~2_combout\,
	dataf => \HDMI|ALT_INV_Equal0~1_combout\,
	combout => \HDMI|HDMIDATA~0_combout\);

-- Location: LABCELL_X67_Y23_N54
\HDMI|HDMIDATA[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|HDMIDATA[3]~1_combout\ = ( \HDMI|HDMIDATA~0_combout\ & ( \I2C|SETUP_DONE~q\ ) ) # ( !\HDMI|HDMIDATA~0_combout\ & ( \I2C|SETUP_DONE~q\ & ( (\HDMI|DATAENABLE~4_combout\ & (!\HDMI|DATAENABLE~2_combout\ & ((\HDMI|DATAENABLE~0_combout\) # 
-- (\HDMI|counterx[11]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010011000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HDMI|ALT_INV_counterx[11]~DUPLICATE_q\,
	datab => \HDMI|ALT_INV_DATAENABLE~4_combout\,
	datac => \HDMI|ALT_INV_DATAENABLE~0_combout\,
	datad => \HDMI|ALT_INV_DATAENABLE~2_combout\,
	datae => \HDMI|ALT_INV_HDMIDATA~0_combout\,
	dataf => \I2C|ALT_INV_SETUP_DONE~q\,
	combout => \HDMI|HDMIDATA[3]~1_combout\);

-- Location: FF_X67_Y24_N26
\HDMI|HDMIDATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|HDMIDATA[3]~feeder_combout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(3));

-- Location: LABCELL_X67_Y24_N33
\HDMI|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~5_sumout\ = SUM(( \HDMI|HDMIDATA\(4) ) + ( GND ) + ( \HDMI|Add1~2\ ))
-- \HDMI|Add1~6\ = CARRY(( \HDMI|HDMIDATA\(4) ) + ( GND ) + ( \HDMI|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HDMI|ALT_INV_HDMIDATA\(4),
	cin => \HDMI|Add1~2\,
	sumout => \HDMI|Add1~5_sumout\,
	cout => \HDMI|Add1~6\);

-- Location: FF_X67_Y24_N35
\HDMI|HDMIDATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add1~5_sumout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(4));

-- Location: LABCELL_X67_Y24_N36
\HDMI|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~9_sumout\ = SUM(( \HDMI|HDMIDATA\(5) ) + ( GND ) + ( \HDMI|Add1~6\ ))
-- \HDMI|Add1~10\ = CARRY(( \HDMI|HDMIDATA\(5) ) + ( GND ) + ( \HDMI|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \HDMI|ALT_INV_HDMIDATA\(5),
	cin => \HDMI|Add1~6\,
	sumout => \HDMI|Add1~9_sumout\,
	cout => \HDMI|Add1~10\);

-- Location: FF_X67_Y23_N44
\HDMI|HDMIDATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \HDMI|Add1~9_sumout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	sload => VCC,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(5));

-- Location: LABCELL_X67_Y24_N39
\HDMI|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~13_sumout\ = SUM(( \HDMI|HDMIDATA\(6) ) + ( GND ) + ( \HDMI|Add1~10\ ))
-- \HDMI|Add1~14\ = CARRY(( \HDMI|HDMIDATA\(6) ) + ( GND ) + ( \HDMI|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_HDMIDATA\(6),
	cin => \HDMI|Add1~10\,
	sumout => \HDMI|Add1~13_sumout\,
	cout => \HDMI|Add1~14\);

-- Location: LABCELL_X67_Y22_N18
\HDMI|HDMIDATA[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|HDMIDATA[6]~feeder_combout\ = ( \HDMI|Add1~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \HDMI|ALT_INV_Add1~13_sumout\,
	combout => \HDMI|HDMIDATA[6]~feeder_combout\);

-- Location: FF_X67_Y22_N20
\HDMI|HDMIDATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|HDMIDATA[6]~feeder_combout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(6));

-- Location: LABCELL_X67_Y24_N42
\HDMI|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~17_sumout\ = SUM(( \HDMI|HDMIDATA\(7) ) + ( GND ) + ( \HDMI|Add1~14\ ))
-- \HDMI|Add1~18\ = CARRY(( \HDMI|HDMIDATA\(7) ) + ( GND ) + ( \HDMI|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_HDMIDATA\(7),
	cin => \HDMI|Add1~14\,
	sumout => \HDMI|Add1~17_sumout\,
	cout => \HDMI|Add1~18\);

-- Location: LABCELL_X67_Y16_N27
\HDMI|HDMIDATA[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|HDMIDATA[7]~feeder_combout\ = ( \HDMI|Add1~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \HDMI|ALT_INV_Add1~17_sumout\,
	combout => \HDMI|HDMIDATA[7]~feeder_combout\);

-- Location: FF_X67_Y16_N29
\HDMI|HDMIDATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|HDMIDATA[7]~feeder_combout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(7));

-- Location: LABCELL_X67_Y24_N45
\HDMI|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~21_sumout\ = SUM(( \HDMI|HDMIDATA\(8) ) + ( GND ) + ( \HDMI|Add1~18\ ))
-- \HDMI|Add1~22\ = CARRY(( \HDMI|HDMIDATA\(8) ) + ( GND ) + ( \HDMI|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \HDMI|ALT_INV_HDMIDATA\(8),
	cin => \HDMI|Add1~18\,
	sumout => \HDMI|Add1~21_sumout\,
	cout => \HDMI|Add1~22\);

-- Location: LABCELL_X67_Y20_N27
\HDMI|HDMIDATA[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|HDMIDATA[8]~feeder_combout\ = ( \HDMI|Add1~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \HDMI|ALT_INV_Add1~21_sumout\,
	combout => \HDMI|HDMIDATA[8]~feeder_combout\);

-- Location: FF_X67_Y20_N29
\HDMI|HDMIDATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|HDMIDATA[8]~feeder_combout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(8));

-- Location: LABCELL_X67_Y24_N48
\HDMI|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~25_sumout\ = SUM(( \HDMI|HDMIDATA\(9) ) + ( GND ) + ( \HDMI|Add1~22\ ))
-- \HDMI|Add1~26\ = CARRY(( \HDMI|HDMIDATA\(9) ) + ( GND ) + ( \HDMI|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_HDMIDATA\(9),
	cin => \HDMI|Add1~22\,
	sumout => \HDMI|Add1~25_sumout\,
	cout => \HDMI|Add1~26\);

-- Location: FF_X67_Y24_N50
\HDMI|HDMIDATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add1~25_sumout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(9));

-- Location: LABCELL_X67_Y24_N51
\HDMI|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~29_sumout\ = SUM(( \HDMI|HDMIDATA\(10) ) + ( GND ) + ( \HDMI|Add1~26\ ))
-- \HDMI|Add1~30\ = CARRY(( \HDMI|HDMIDATA\(10) ) + ( GND ) + ( \HDMI|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_HDMIDATA\(10),
	cin => \HDMI|Add1~26\,
	sumout => \HDMI|Add1~29_sumout\,
	cout => \HDMI|Add1~30\);

-- Location: LABCELL_X67_Y20_N18
\HDMI|HDMIDATA[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|HDMIDATA[10]~feeder_combout\ = ( \HDMI|Add1~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \HDMI|ALT_INV_Add1~29_sumout\,
	combout => \HDMI|HDMIDATA[10]~feeder_combout\);

-- Location: FF_X67_Y20_N20
\HDMI|HDMIDATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|HDMIDATA[10]~feeder_combout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(10));

-- Location: LABCELL_X67_Y24_N54
\HDMI|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~33_sumout\ = SUM(( \HDMI|HDMIDATA\(11) ) + ( GND ) + ( \HDMI|Add1~30\ ))
-- \HDMI|Add1~34\ = CARRY(( \HDMI|HDMIDATA\(11) ) + ( GND ) + ( \HDMI|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_HDMIDATA\(11),
	cin => \HDMI|Add1~30\,
	sumout => \HDMI|Add1~33_sumout\,
	cout => \HDMI|Add1~34\);

-- Location: FF_X67_Y24_N56
\HDMI|HDMIDATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add1~33_sumout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(11));

-- Location: LABCELL_X67_Y24_N57
\HDMI|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~37_sumout\ = SUM(( \HDMI|HDMIDATA\(12) ) + ( GND ) + ( \HDMI|Add1~34\ ))
-- \HDMI|Add1~38\ = CARRY(( \HDMI|HDMIDATA\(12) ) + ( GND ) + ( \HDMI|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_HDMIDATA\(12),
	cin => \HDMI|Add1~34\,
	sumout => \HDMI|Add1~37_sumout\,
	cout => \HDMI|Add1~38\);

-- Location: FF_X67_Y24_N59
\HDMI|HDMIDATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add1~37_sumout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(12));

-- Location: LABCELL_X67_Y23_N0
\HDMI|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~41_sumout\ = SUM(( \HDMI|HDMIDATA\(13) ) + ( GND ) + ( \HDMI|Add1~38\ ))
-- \HDMI|Add1~42\ = CARRY(( \HDMI|HDMIDATA\(13) ) + ( GND ) + ( \HDMI|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_HDMIDATA\(13),
	cin => \HDMI|Add1~38\,
	sumout => \HDMI|Add1~41_sumout\,
	cout => \HDMI|Add1~42\);

-- Location: FF_X67_Y23_N2
\HDMI|HDMIDATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add1~41_sumout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(13));

-- Location: LABCELL_X67_Y23_N3
\HDMI|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~45_sumout\ = SUM(( \HDMI|HDMIDATA\(14) ) + ( GND ) + ( \HDMI|Add1~42\ ))
-- \HDMI|Add1~46\ = CARRY(( \HDMI|HDMIDATA\(14) ) + ( GND ) + ( \HDMI|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \HDMI|ALT_INV_HDMIDATA\(14),
	cin => \HDMI|Add1~42\,
	sumout => \HDMI|Add1~45_sumout\,
	cout => \HDMI|Add1~46\);

-- Location: FF_X67_Y23_N5
\HDMI|HDMIDATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add1~45_sumout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(14));

-- Location: LABCELL_X67_Y23_N6
\HDMI|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~49_sumout\ = SUM(( \HDMI|HDMIDATA\(15) ) + ( GND ) + ( \HDMI|Add1~46\ ))
-- \HDMI|Add1~50\ = CARRY(( \HDMI|HDMIDATA\(15) ) + ( GND ) + ( \HDMI|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HDMI|ALT_INV_HDMIDATA\(15),
	cin => \HDMI|Add1~46\,
	sumout => \HDMI|Add1~49_sumout\,
	cout => \HDMI|Add1~50\);

-- Location: FF_X67_Y23_N8
\HDMI|HDMIDATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add1~49_sumout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(15));

-- Location: LABCELL_X67_Y23_N9
\HDMI|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~53_sumout\ = SUM(( \HDMI|HDMIDATA\(16) ) + ( GND ) + ( \HDMI|Add1~50\ ))
-- \HDMI|Add1~54\ = CARRY(( \HDMI|HDMIDATA\(16) ) + ( GND ) + ( \HDMI|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_HDMIDATA\(16),
	cin => \HDMI|Add1~50\,
	sumout => \HDMI|Add1~53_sumout\,
	cout => \HDMI|Add1~54\);

-- Location: FF_X67_Y23_N11
\HDMI|HDMIDATA[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add1~53_sumout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(16));

-- Location: LABCELL_X67_Y23_N12
\HDMI|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~57_sumout\ = SUM(( \HDMI|HDMIDATA\(17) ) + ( GND ) + ( \HDMI|Add1~54\ ))
-- \HDMI|Add1~58\ = CARRY(( \HDMI|HDMIDATA\(17) ) + ( GND ) + ( \HDMI|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HDMI|ALT_INV_HDMIDATA\(17),
	cin => \HDMI|Add1~54\,
	sumout => \HDMI|Add1~57_sumout\,
	cout => \HDMI|Add1~58\);

-- Location: FF_X67_Y23_N14
\HDMI|HDMIDATA[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add1~57_sumout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(17));

-- Location: LABCELL_X67_Y23_N15
\HDMI|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~61_sumout\ = SUM(( \HDMI|HDMIDATA\(18) ) + ( GND ) + ( \HDMI|Add1~58\ ))
-- \HDMI|Add1~62\ = CARRY(( \HDMI|HDMIDATA\(18) ) + ( GND ) + ( \HDMI|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_HDMIDATA\(18),
	cin => \HDMI|Add1~58\,
	sumout => \HDMI|Add1~61_sumout\,
	cout => \HDMI|Add1~62\);

-- Location: FF_X67_Y23_N17
\HDMI|HDMIDATA[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add1~61_sumout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(18));

-- Location: LABCELL_X67_Y23_N18
\HDMI|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~65_sumout\ = SUM(( \HDMI|HDMIDATA\(19) ) + ( GND ) + ( \HDMI|Add1~62\ ))
-- \HDMI|Add1~66\ = CARRY(( \HDMI|HDMIDATA\(19) ) + ( GND ) + ( \HDMI|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_HDMIDATA\(19),
	cin => \HDMI|Add1~62\,
	sumout => \HDMI|Add1~65_sumout\,
	cout => \HDMI|Add1~66\);

-- Location: FF_X67_Y23_N20
\HDMI|HDMIDATA[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add1~65_sumout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(19));

-- Location: LABCELL_X67_Y23_N21
\HDMI|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~69_sumout\ = SUM(( \HDMI|HDMIDATA\(20) ) + ( GND ) + ( \HDMI|Add1~66\ ))
-- \HDMI|Add1~70\ = CARRY(( \HDMI|HDMIDATA\(20) ) + ( GND ) + ( \HDMI|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HDMI|ALT_INV_HDMIDATA\(20),
	cin => \HDMI|Add1~66\,
	sumout => \HDMI|Add1~69_sumout\,
	cout => \HDMI|Add1~70\);

-- Location: FF_X67_Y23_N23
\HDMI|HDMIDATA[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add1~69_sumout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(20));

-- Location: LABCELL_X67_Y23_N24
\HDMI|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~73_sumout\ = SUM(( \HDMI|HDMIDATA\(21) ) + ( GND ) + ( \HDMI|Add1~70\ ))
-- \HDMI|Add1~74\ = CARRY(( \HDMI|HDMIDATA\(21) ) + ( GND ) + ( \HDMI|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \HDMI|ALT_INV_HDMIDATA\(21),
	cin => \HDMI|Add1~70\,
	sumout => \HDMI|Add1~73_sumout\,
	cout => \HDMI|Add1~74\);

-- Location: FF_X67_Y23_N26
\HDMI|HDMIDATA[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add1~73_sumout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(21));

-- Location: LABCELL_X67_Y23_N27
\HDMI|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~77_sumout\ = SUM(( \HDMI|HDMIDATA\(22) ) + ( GND ) + ( \HDMI|Add1~74\ ))
-- \HDMI|Add1~78\ = CARRY(( \HDMI|HDMIDATA\(22) ) + ( GND ) + ( \HDMI|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \HDMI|ALT_INV_HDMIDATA\(22),
	cin => \HDMI|Add1~74\,
	sumout => \HDMI|Add1~77_sumout\,
	cout => \HDMI|Add1~78\);

-- Location: FF_X67_Y23_N29
\HDMI|HDMIDATA[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add1~77_sumout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(22));

-- Location: LABCELL_X67_Y23_N30
\HDMI|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \HDMI|Add1~81_sumout\ = SUM(( \HDMI|HDMIDATA\(23) ) + ( GND ) + ( \HDMI|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \HDMI|ALT_INV_HDMIDATA\(23),
	cin => \HDMI|Add1~78\,
	sumout => \HDMI|Add1~81_sumout\);

-- Location: FF_X67_Y23_N32
\HDMI|HDMIDATA[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hdmipll|pllhdmi_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \HDMI|Add1~81_sumout\,
	sclr => \HDMI|HDMIDATA~0_combout\,
	ena => \HDMI|HDMIDATA[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HDMI|HDMIDATA\(23));

-- Location: LABCELL_X49_Y43_N0
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
      number_of_fplls => 2);
-- pragma translate_on
END structure;


