# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7a200tsbg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir W:/ECE532/0327_colors/NexysVideo-master/Projects/hdmi/proj/hdmi.cache/wt [current_project]
set_property parent.project_path W:/ECE532/0327_colors/NexysVideo-master/Projects/hdmi/proj/hdmi.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:nexys_video:part0:1.1 [current_project]
set_property ip_repo_paths {
  w:/ECE532/0327_colors/NexysVideo-master/Projects/hdmi/ip_repo/slave_to_master_1.0
  w:/ECE532/0327_colors/NexysVideo-master/Projects/hdmi/ip_repo/passthrough_1.0
  w:/ECE532/0327_colors/NexysVideo-master/collision_detection
  w:/ECE532/0327_colors/NexysVideo-master/Projects/hdmi/repo
  w:/ECE532/0327_colors/NexysVideo-master/color_threshold
} [current_project]
read_ip -quiet W:/ECE532/0327_colors/NexysVideo-master/Projects/hdmi/proj/hdmi.srcs/sources_1/bd/hdmi/ip/hdmi_xbar_1/hdmi_xbar_1.xci
set_property is_locked true [get_files W:/ECE532/0327_colors/NexysVideo-master/Projects/hdmi/proj/hdmi.srcs/sources_1/bd/hdmi/ip/hdmi_xbar_1/hdmi_xbar_1.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top hdmi_xbar_1 -part xc7a200tsbg484-1 -mode out_of_context

rename_ref -prefix_all hdmi_xbar_1_

write_checkpoint -force -noxdef hdmi_xbar_1.dcp

catch { report_utilization -file hdmi_xbar_1_utilization_synth.rpt -pb hdmi_xbar_1_utilization_synth.pb }

if { [catch {
  file copy -force W:/ECE532/0327_colors/NexysVideo-master/Projects/hdmi/proj/hdmi.runs/hdmi_xbar_1_synth_1/hdmi_xbar_1.dcp W:/ECE532/0327_colors/NexysVideo-master/Projects/hdmi/proj/hdmi.srcs/sources_1/bd/hdmi/ip/hdmi_xbar_1/hdmi_xbar_1.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub W:/ECE532/0327_colors/NexysVideo-master/Projects/hdmi/proj/hdmi.srcs/sources_1/bd/hdmi/ip/hdmi_xbar_1/hdmi_xbar_1_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub W:/ECE532/0327_colors/NexysVideo-master/Projects/hdmi/proj/hdmi.srcs/sources_1/bd/hdmi/ip/hdmi_xbar_1/hdmi_xbar_1_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim W:/ECE532/0327_colors/NexysVideo-master/Projects/hdmi/proj/hdmi.srcs/sources_1/bd/hdmi/ip/hdmi_xbar_1/hdmi_xbar_1_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim W:/ECE532/0327_colors/NexysVideo-master/Projects/hdmi/proj/hdmi.srcs/sources_1/bd/hdmi/ip/hdmi_xbar_1/hdmi_xbar_1_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir W:/ECE532/0327_colors/NexysVideo-master/Projects/hdmi/proj/hdmi.ip_user_files/ip/hdmi_xbar_1]} {
  catch { 
    file copy -force W:/ECE532/0327_colors/NexysVideo-master/Projects/hdmi/proj/hdmi.srcs/sources_1/bd/hdmi/ip/hdmi_xbar_1/hdmi_xbar_1_stub.v W:/ECE532/0327_colors/NexysVideo-master/Projects/hdmi/proj/hdmi.ip_user_files/ip/hdmi_xbar_1
  }
}

if {[file isdir W:/ECE532/0327_colors/NexysVideo-master/Projects/hdmi/proj/hdmi.ip_user_files/ip/hdmi_xbar_1]} {
  catch { 
    file copy -force W:/ECE532/0327_colors/NexysVideo-master/Projects/hdmi/proj/hdmi.srcs/sources_1/bd/hdmi/ip/hdmi_xbar_1/hdmi_xbar_1_stub.vhdl W:/ECE532/0327_colors/NexysVideo-master/Projects/hdmi/proj/hdmi.ip_user_files/ip/hdmi_xbar_1
  }
}
