
########################### Define Top Module ############################
                                                   
set top_module system_top

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

############################# Formality Setup File ##########################
                                                   
set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries and RTL files to the search_path variable
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


set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_format verilog

read_file -format $file_format ALU.v
read_file -format $file_format bit_synchronizer.v
read_file -format $file_format CLK_GATE.v
read_file -format $file_format clock_divider.v
read_file -format $file_format CONFIG_MACROS_Rx.v
read_file -format $file_format CONFIG_MACROS_SYS.v
read_file -format $file_format CONFIG_MACROS_TOP.v
read_file -format $file_format CONFIG_MACROS_Tx.v
read_file -format $file_format CTRL_RX.v
read_file -format $file_format SYS_CTRL.v
read_file -format $file_format CTRL_TX.v
read_file -format $file_format data_sampling.v
read_file -format $file_format data_synchronizer.v
read_file -format $file_format deserializer.v
read_file -format $file_format edge_bit_counter.v
read_file -format $file_format FSM.v
read_file -format $file_format mux.v
read_file -format $file_format parity_calc.v
read_file -format $file_format parity_check.v
read_file -format $file_format RegFile.v
read_file -format $file_format RST_synchronizer.v
read_file -format $file_format Serializer.v
read_file -format $file_format stop_check.v
read_file -format $file_format strt_check.v
read_file -format $file_format system_top.v
read_file -format $file_format Tx_FSM.v
read_file -format $file_format UART_Rx.v
read_file -format $file_format UART_TOP.v
read_file -format $file_format UART_TX.v

###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source ./cons.tcl

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile 

#############################################################################
# Write out files
#############################################################################

write_file -format verilog -hierarchy -output netlists/$top_module.ddc
write_file -format verilog -hierarchy -output netlists/$top_module.v
write_sdf  sdf/$top_module.sdf
write_sdc  -nosplit sdc/$top_module.sdc

####################### reporting ##########################################

report_area -hierarchy > reports/area.rpt
report_power -hierarchy > reports/power.rpt
report_timing -delay_type min -max_paths 20 > reports/hold.rpt
report_timing -delay_type max -max_paths 20 > reports/setup.rpt
report_clock -attributes > reports/clocks.rpt
report_constraint -all_violators -nosplit > reports/constraints.rpt

############################################################################
# DFT Preparation Section
############################################################################

set flops_per_chain 100

set num_flops [sizeof_collection [all_registers -edge_triggered]]

set num_chains [expr $num_flops / $flops_per_chain + 1 ]

################# starting graphical user interface #######################

#gui_start

exit
