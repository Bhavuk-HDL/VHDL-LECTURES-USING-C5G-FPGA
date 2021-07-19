set_global_assignment -entity "CHIP_CLK" -library "lib_CHIP_CLK" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "CHIP_CLK" -library "lib_CHIP_CLK" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "CHIP_CLK" -library "lib_CHIP_CLK" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_CHIP_CLK" -name SPD_FILE [file join $::quartus(sip_path) "CHIP_CLK.spd"]

set_global_assignment -library "lib_CHIP_CLK" -name MISC_FILE [file join $::quartus(sip_path) "CHIP_CLK_sim/CHIP_CLK.vho"]
