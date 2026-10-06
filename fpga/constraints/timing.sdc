

#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {MAX10_CLK1_50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {MAX10_CLK1_50}]
derive_clock_uncertainty


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

#derive clock_uncertainty

#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#set_false_path -from [get_registers *] -to [get_ports {ssi_clk}]
set_false_path -from [get_ports {SW*}] -to  [get_registers *]
set_false_path -from [get_ports {GPIO_data*}] -to  [get_registers *]
set_false_path -from [get_ports {GPIO*}] -to  [get_registers *]
set_false_path -from [get_ports {GSENSOR_SDO*}] -to  [get_registers *]
set_false_path -from [get_ports {reset_nrst*}] -to  [get_registers *]

set_false_path -from [get_registers *] -to [get_ports {GSENSOR_SDI}]
set_false_path -from [get_registers *] -to [get_ports {GPIO_data}]
set_false_path -from [get_registers *] -to [get_ports {LEDR[*]}]
set_false_path -from [get_registers *] -to [get_ports {GSENSOR_CS_N}]
set_false_path -from [get_registers *] -to [get_ports {GSENSOR_SCLK}]





#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

