set_global_assignment -entity "pllhdmi" -library "lib_pllhdmi" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "pllhdmi" -library "lib_pllhdmi" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "pllhdmi" -library "lib_pllhdmi" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_pllhdmi" -name SPD_FILE [file join $::quartus(sip_path) "pllhdmi.spd"]

set_global_assignment -library "lib_pllhdmi" -name MISC_FILE [file join $::quartus(sip_path) "pllhdmi_sim/pllhdmi.vho"]
