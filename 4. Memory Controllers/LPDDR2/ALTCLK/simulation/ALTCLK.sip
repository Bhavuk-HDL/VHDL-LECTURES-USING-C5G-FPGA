set_global_assignment -entity "ALTCLK" -library "lib_ALTCLK" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "ALTCLK" -library "lib_ALTCLK" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "ALTCLK" -library "lib_ALTCLK" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_ALTCLK" -name SPD_FILE [file join $::quartus(sip_path) "../ALTCLK.spd"]
set_global_assignment -library "lib_ALTCLK" -name MISC_FILE [file join $::quartus(sip_path) "../../ALTCLK.qsys"]

set_global_assignment -library "lib_ALTCLK" -name MISC_FILE [file join $::quartus(sip_path) "ALTCLK.vhd"]
set_global_assignment -library "lib_ALTCLK" -name MISC_FILE [file join $::quartus(sip_path) "submodules/ALTCLK_altclkctrl_0.vhd"]
