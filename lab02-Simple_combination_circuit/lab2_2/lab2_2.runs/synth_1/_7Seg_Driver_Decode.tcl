# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/xilinx_vivado/projects/lab2-Simple_combination_circuit/lab2_2/lab2_2.cache/wt [current_project]
set_property parent.project_path D:/xilinx_vivado/projects/lab2-Simple_combination_circuit/lab2_2/lab2_2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib D:/xilinx_vivado/projects/lab2-Simple_combination_circuit/lab2_2/lab2_2.srcs/sources_1/new/lab2_2.v
read_xdc D:/xilinx_vivado/projects/lab2-Simple_combination_circuit/lab2_2/lab2_2.srcs/constrs_1/imports/lab2_2/Nexys4DDR_Master.xdc
set_property used_in_implementation false [get_files D:/xilinx_vivado/projects/lab2-Simple_combination_circuit/lab2_2/lab2_2.srcs/constrs_1/imports/lab2_2/Nexys4DDR_Master.xdc]

synth_design -top _7Seg_Driver_Decode -part xc7a100tcsg324-1
write_checkpoint -noxdef _7Seg_Driver_Decode.dcp
catch { report_utilization -file _7Seg_Driver_Decode_utilization_synth.rpt -pb _7Seg_Driver_Decode_utilization_synth.pb }
