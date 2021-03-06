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
set_property webtalk.parent_dir W:/feed_through/NexysVideo-master/Projects/hdmi/proj/hdmi.cache/wt [current_project]
set_property parent.project_path W:/feed_through/NexysVideo-master/Projects/hdmi/proj/hdmi.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:nexys_video:part0:1.1 [current_project]
set_property ip_repo_paths {
  w:/feed_through/NexysVideo-master/Projects/hdmi/ip_repo/slave_to_master_1.0
  w:/feed_through/NexysVideo-master/Projects/hdmi/ip_repo/passthrough_1.0
  w:/feed_through/NexysVideo-master/Projects/hdmi/repo
  w:/feed_through/NexysVideo-master/collision_detection
} [current_project]
read_ip -quiet W:/feed_through/NexysVideo-master/Projects/hdmi/proj/hdmi.srcs/sources_1/bd/hdmi/ip/hdmi_xlconstant_2_0/hdmi_xlconstant_2_0.xci
set_property is_locked true [get_files W:/feed_through/NexysVideo-master/Projects/hdmi/proj/hdmi.srcs/sources_1/bd/hdmi/ip/hdmi_xlconstant_2_0/hdmi_xlconstant_2_0.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top hdmi_xlconstant_2_0 -part xc7a200tsbg484-1 -mode out_of_context

rename_ref -prefix_all hdmi_xlconstant_2_0_

write_checkpoint -force -noxdef hdmi_xlconstant_2_0.dcp

catch { report_utilization -file hdmi_xlconstant_2_0_utilization_synth.rpt -pb hdmi_xlconstant_2_0_utilization_synth.pb }

if { [catch {
  file copy -force W:/feed_through/NexysVideo-master/Projects/hdmi/proj/hdmi.runs/hdmi_xlconstant_2_0_synth_1/hdmi_xlconstant_2_0.dcp W:/feed_through/NexysVideo-master/Projects/hdmi/proj/hdmi.srcs/sources_1/bd/hdmi/ip/hdmi_xlconstant_2_0/hdmi_xlconstant_2_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub W:/feed_through/NexysVideo-master/Projects/hdmi/proj/hdmi.srcs/sources_1/bd/hdmi/ip/hdmi_xlconstant_2_0/hdmi_xlconstant_2_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub W:/feed_through/NexysVideo-master/Projects/hdmi/proj/hdmi.srcs/sources_1/bd/hdmi/ip/hdmi_xlconstant_2_0/hdmi_xlconstant_2_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim W:/feed_through/NexysVideo-master/Projects/hdmi/proj/hdmi.srcs/sources_1/bd/hdmi/ip/hdmi_xlconstant_2_0/hdmi_xlconstant_2_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim W:/feed_through/NexysVideo-master/Projects/hdmi/proj/hdmi.srcs/sources_1/bd/hdmi/ip/hdmi_xlconstant_2_0/hdmi_xlconstant_2_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir W:/feed_through/NexysVideo-master/Projects/hdmi/proj/hdmi.ip_user_files/ip/hdmi_xlconstant_2_0]} {
  catch { 
    file copy -force W:/feed_through/NexysVideo-master/Projects/hdmi/proj/hdmi.srcs/sources_1/bd/hdmi/ip/hdmi_xlconstant_2_0/hdmi_xlconstant_2_0_stub.v W:/feed_through/NexysVideo-master/Projects/hdmi/proj/hdmi.ip_user_files/ip/hdmi_xlconstant_2_0
  }
}

if {[file isdir W:/feed_through/NexysVideo-master/Projects/hdmi/proj/hdmi.ip_user_files/ip/hdmi_xlconstant_2_0]} {
  catch { 
    file copy -force W:/feed_through/NexysVideo-master/Projects/hdmi/proj/hdmi.srcs/sources_1/bd/hdmi/ip/hdmi_xlconstant_2_0/hdmi_xlconstant_2_0_stub.vhdl W:/feed_through/NexysVideo-master/Projects/hdmi/proj/hdmi.ip_user_files/ip/hdmi_xlconstant_2_0
  }
}
