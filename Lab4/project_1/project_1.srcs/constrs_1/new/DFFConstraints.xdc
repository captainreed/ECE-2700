# Switch SW [0]:
set_property PACKAGE_PIN V17 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]
# Switch SW [1]:
set_property PACKAGE_PIN V16 [get_ports {d}]
set_property IOSTANDARD LVCMOS33 [get_ports {d}]
# LED 0:
set_property PACKAGE_PIN E19 [get_ports {q}]
set_property IOSTANDARD LVCMOS33 [get_ports {q}]