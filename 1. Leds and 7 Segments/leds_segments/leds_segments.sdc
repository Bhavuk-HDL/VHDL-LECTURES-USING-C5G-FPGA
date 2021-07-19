# Constrain clock ports clk with requirement

create_clock -name clk_led -period 20 [get_ports {clk_led}]
create_clock -name clk_segment -period 10 [get_ports {clk_segment}]

# Automatically apply a generate clock on the output of phase-locked loops (PLLs)
# This command can be safely left in the SDC even if no PLLs exist in the design

derive_pll_clocks

# Constrain the input I/O path

# set_input_delay -clock clk -max 3 [all_inputs]

# set_input_delay -clock clk -min 2 [all_inputs]

# Constrain the output I/O path

set_output_delay -clock {clk_led} -max 2 [get_ports LED*]

set_output_delay -clock {clk_led} -min 1 [get_ports LED*]

set_output_delay -clock {clk_segment} -max 1 [get_ports segment*]

set_output_delay -clock {clk_segment} -min 0.5 [get_ports segment*]