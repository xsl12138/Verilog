# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/xilinx_vivado/projects/lab04-Data_path_and_FSM/FSM/FSM.cache/wt [current_project]
set_property parent.project_path D:/xilinx_vivado/projects/lab04-Data_path_and_FSM/FSM/FSM.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib D:/xilinx_vivado/projects/lab04-Data_path_and_FSM/FSM/FSM.srcs/sources_1/new/FSM.v
read_xdc D:/xilinx_vivado/projects/lab04-Data_path_and_FSM/FSM/FSM.srcs/constrs_1/imports/lab04-Data_path_and_FSM/Nexys4DDR_Master.xdc
set_property used_in_implementation false [get_files D:/xilinx_vivado/projects/lab04-Data_path_and_FSM/FSM/FSM.srcs/constrs_1/imports/lab04-Data_path_and_FSM/Nexys4DDR_Master.xdc]

synth_design -top FSM -part xc7a100tcsg324-1
write_checkpoint -noxdef FSM.dcp
catch { report_utilization -file FSM_utilization_synth.rpt -pb FSM_utilization_synth.pb }
