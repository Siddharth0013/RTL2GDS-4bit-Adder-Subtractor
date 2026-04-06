###################################################################

# Created by write_sdc on Sun Apr  5 07:32:37 2026

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
create_clock [get_ports clk]  -period 10  -waveform {0 5}
set_clock_uncertainty 0.2  [get_clocks clk]
set_clock_transition -max -rise 0.1 [get_clocks clk]
set_clock_transition -max -fall 0.1 [get_clocks clk]
set_clock_transition -min -rise 0.1 [get_clocks clk]
set_clock_transition -min -fall 0.1 [get_clocks clk]
set_input_delay -clock clk  2  [get_ports clk]
set_input_delay -clock clk  2  [get_ports rst]
set_input_delay -clock clk  2  [get_ports {A[3]}]
set_input_delay -clock clk  2  [get_ports {A[2]}]
set_input_delay -clock clk  2  [get_ports {A[1]}]
set_input_delay -clock clk  2  [get_ports {A[0]}]
set_input_delay -clock clk  2  [get_ports {B[3]}]
set_input_delay -clock clk  2  [get_ports {B[2]}]
set_input_delay -clock clk  2  [get_ports {B[1]}]
set_input_delay -clock clk  2  [get_ports {B[0]}]
set_input_delay -clock clk  2  [get_ports {opcode[1]}]
set_input_delay -clock clk  2  [get_ports {opcode[0]}]
set_output_delay -clock clk  2  [get_ports {result[3]}]
set_output_delay -clock clk  2  [get_ports {result[2]}]
set_output_delay -clock clk  2  [get_ports {result[1]}]
set_output_delay -clock clk  2  [get_ports {result[0]}]
set_output_delay -clock clk  2  [get_ports carry]
