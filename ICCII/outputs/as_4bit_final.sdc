################################################################################
#
# Design name:  as_4bit
#
# Created by icc2 write_sdc on Sun Apr  5 08:04:49 2026
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: func
# Corner: nom
# Scenario: func::nom

# /home/student/Downloads/Workshop/DC/outputs/as_4bit.sdc, line 9
create_clock -name clk -period 10 -waveform {0 5} [get_ports {clk}]
# Warning: Libcell power domain derates are skipped!

set_clock_uncertainty 0.2 [get_clocks {clk}]
set_clock_transition 0.1 [get_clocks {clk}]
# /home/student/Downloads/Workshop/DC/outputs/as_4bit.sdc, line 15
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {clk}]
# /home/student/Downloads/Workshop/DC/outputs/as_4bit.sdc, line 16
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {rst}]
# /home/student/Downloads/Workshop/DC/outputs/as_4bit.sdc, line 17
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {A[3]}]
# /home/student/Downloads/Workshop/DC/outputs/as_4bit.sdc, line 18
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {A[2]}]
# /home/student/Downloads/Workshop/DC/outputs/as_4bit.sdc, line 19
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {A[1]}]
# /home/student/Downloads/Workshop/DC/outputs/as_4bit.sdc, line 20
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {A[0]}]
# /home/student/Downloads/Workshop/DC/outputs/as_4bit.sdc, line 21
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {B[3]}]
# /home/student/Downloads/Workshop/DC/outputs/as_4bit.sdc, line 22
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {B[2]}]
# /home/student/Downloads/Workshop/DC/outputs/as_4bit.sdc, line 23
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {B[1]}]
# /home/student/Downloads/Workshop/DC/outputs/as_4bit.sdc, line 24
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {B[0]}]
# /home/student/Downloads/Workshop/DC/outputs/as_4bit.sdc, line 25
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {opcode[1]}]
# /home/student/Downloads/Workshop/DC/outputs/as_4bit.sdc, line 26
set_input_delay -clock [get_clocks {clk}] 2 [get_ports {opcode[0]}]
# /home/student/Downloads/Workshop/DC/outputs/as_4bit.sdc, line 27
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {result[3]}]
# /home/student/Downloads/Workshop/DC/outputs/as_4bit.sdc, line 28
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {result[2]}]
# /home/student/Downloads/Workshop/DC/outputs/as_4bit.sdc, line 29
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {result[1]}]
# /home/student/Downloads/Workshop/DC/outputs/as_4bit.sdc, line 30
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {result[0]}]
# /home/student/Downloads/Workshop/DC/outputs/as_4bit.sdc, line 31
set_output_delay -clock [get_clocks {clk}] 2 [get_ports {carry}]
