create_clock -period 60 [get_ports clk]

set_clock_latency -source -max 0.7 [get_clocks clk]
set_clock_latency -source -min 0.05 [get_clocks clk]

set_clock_uncertainty -setup 0.8 [get_clocks clk]
set_clock_uncertainty -hold 0.05 [get_clocks clk]

set_input_delay -max 0.5 -clock clk [all_inputs]
set_input_delay -min 0.5 -clock clk [all_inputs]

set_output_delay -max 0.9 -clock clk [all_outputs]
set_output_delay -min 0.5 -clock clk [all_outputs]