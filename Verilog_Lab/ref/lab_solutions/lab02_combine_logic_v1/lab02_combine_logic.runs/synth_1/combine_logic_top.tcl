# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Temp/lab02_combine_logic_v1/lab02_combine_logic.cache/wt [current_project]
set_property parent.project_path C:/Temp/lab02_combine_logic_v1/lab02_combine_logic.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
read_verilog -library xil_defaultlib {
  C:/Temp/lab02_combine_logic_v1/lab02_combine_logic.srcs/sources_1/new/digital_dec.v
  C:/Temp/lab02_combine_logic_v1/lab02_combine_logic.srcs/sources_1/new/sevenseg_dec.v
  C:/Temp/lab02_combine_logic_v1/lab02_combine_logic.srcs/sources_1/new/display_decoder.v
  C:/Temp/lab02_combine_logic_v1/lab02_combine_logic.srcs/sources_1/new/combine_logic_top.v
}
read_xdc C:/Temp/lab02_combine_logic_v1/lab02_combine_logic.srcs/constrs_1/new/combine_logic.xdc
set_property used_in_implementation false [get_files C:/Temp/lab02_combine_logic_v1/lab02_combine_logic.srcs/constrs_1/new/combine_logic.xdc]

synth_design -top combine_logic_top -part xc7a100tcsg324-1
write_checkpoint -noxdef combine_logic_top.dcp
catch { report_utilization -file combine_logic_top_utilization_synth.rpt -pb combine_logic_top_utilization_synth.pb }
