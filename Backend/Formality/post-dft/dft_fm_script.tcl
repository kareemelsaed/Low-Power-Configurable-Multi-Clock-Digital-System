
########################### Define Top Module ############################
                                                   
set top_module system_top

######################### Formality Setup File ###########################

set synopsys_auto_setup true

set_svf "../../DFT/$top_module.svf"

############################  Search PATH ################################

lappend search_path /home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys
#lappend search_path /home/IC/Projects/System/RTL/ALU
#lappend search_path /home/IC/Projects/System/RTL/Clock_Divider
#lappend search_path /home/IC/Projects/System/RTL/Clock_Gating
#lappend search_path /home/IC/Projects/System/RTL/DATA_SYNC
#lappend search_path /home/IC/Projects/System/RTL/BIT_SYNC
#lappend search_path /home/IC/Projects/System/RTL/RegFile
#lappend search_path /home/IC/Projects/System/RTL/RST_SYNC
#lappend search_path /home/IC/Projects/System/RTL/SYS_CTRL
#lappend search_path /home/IC/Projects/System/RTL/UART/UART_RX
#lappend search_path /home/IC/Projects/System/RTL/UART/UART_TX
#lappend search_path /home/IC/Projects/System/RTL/UART/UART_TOP
lappend search_path /home/IC/Projects/System/RTL

####################### Read Reference tech libs ########################
 

set SSLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

###################  Read Reference Design Files ######################## 
read_verilog -container Ref "ALU.v"
read_verilog -container Ref "bit_synchronizer.v"
read_verilog -container Ref "CLK_GATE.v"
read_verilog -container Ref "clock_divider.v"
read_verilog -container Ref "CONFIG_MACROS_Rx.v"
read_verilog -container Ref "CONFIG_MACROS_SYS.v"
read_verilog -container Ref "CONFIG_MACROS_TOP.v"
read_verilog -container Ref "CONFIG_MACROS_Tx.v"
read_verilog -container Ref "CTRL_RX.v"
read_verilog -container Ref "SYS_CTRL.v"
read_verilog -container Ref "CTRL_TX.v"
read_verilog -container Ref "data_sampling.v"
read_verilog -container Ref "data_synchronizer.v"
read_verilog -container Ref "deserializer.v"
read_verilog -container Ref "edge_bit_counter.v"
read_verilog -container Ref "FSM.v"
read_verilog -container Ref "mux.v"
read_verilog -container Ref "parity_calc.v"
read_verilog -container Ref "parity_check.v"
read_verilog -container Ref "RegFile.v"
read_verilog -container Ref "RST_synchronizer.v"
read_verilog -container Ref "Serializer.v"
read_verilog -container Ref "stop_check.v"
read_verilog -container Ref "strt_check.v"
read_verilog -container Ref "system_top_dft.v"
read_verilog -container Ref "mux2X1.v"
read_verilog -container Ref "Tx_FSM.v"
read_verilog -container Ref "UART_Rx.v"
read_verilog -container Ref "UART_TOP.v"
read_verilog -container Ref "UART_TX.v"

######################## set the top Reference Design ######################## 

set_reference_design system_top
set_top system_top

####################### Read Implementation tech libs ######################## 

read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

#################### Read Implementation Design Files ######################## 

read_verilog -container Imp -netlist "/home/IC/Projects/System/Backend/DFT/netlists/system_top.v"

####################  set the top Implementation Design ######################

set_implementation_design system_top
set_top system_top

############################## Don't verify #################################

# do not verify scan in & scan out ports as a compare point as it is existed only after synthesis and not existed in the RTL

#scan in
set_dont_verify_points -type port Ref:/WORK/*/SI
set_dont_verify_points -type port Imp:/WORK/*/SI

#scan_out
set_dont_verify_points -type port Ref:/WORK/*/SO
set_dont_verify_points -type port Imp:/WORK/*/SO

############################### contants #####################################

# all atpg enable(test_mode, scan_enable) are zero during formal compare

#test_mode
set_constant Ref:/WORK/*/test_mode 0
set_constant Imp:/WORK/*/test_mode 0

#scan_enable
set_constant Ref:/WORK/*/SE 0
set_constant Imp:/WORK/*/SE 0

## matching Compare points
match

## verify
set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"


start_gui
