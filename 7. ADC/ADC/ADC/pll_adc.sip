set_global_assignment -entity "pll_adc" -library "lib_pll_adc" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "pll_adc" -library "lib_pll_adc" -name IP_TOOL_VERSION "16.1"
set_global_assignment -entity "pll_adc" -library "lib_pll_adc" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_pll_adc" -name SPD_FILE [file join $::quartus(sip_path) "pll_adc.spd"]

set_global_assignment -library "lib_pll_adc" -name MISC_FILE [file join $::quartus(sip_path) "pll_adc_sim/pll_adc.vho"]
