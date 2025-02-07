# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param tcl.collectionResultDisplayLimit 0
set_param xicom.use_bs_reader 1
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.cache/wt [current_project]
set_property parent.project_path D:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:zybo:part0:2.0 [current_project]
set_property ip_repo_paths d:/Kishore_Sir_Project/IP_repo [current_project]
set_property ip_output_repo d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib D:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/hdl/imageProcSystem_wrapper.v
add_files D:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/imageProcSystem.bd
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_processing_system7_0_0/imageProcSystem_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_dma_0_0/imageProcSystem_axi_dma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_dma_0_0/imageProcSystem_axi_dma_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_dma_0_0/imageProcSystem_axi_dma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/Kishore_Sir_Project/IP_repo/imageProc/imageProc.srcs/sources_1/ip/outputBuffer/outputBuffer.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_rst_ps7_0_100M_0/imageProcSystem_rst_ps7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_rst_ps7_0_100M_0/imageProcSystem_rst_ps7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_rst_ps7_0_100M_0/imageProcSystem_rst_ps7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axis_dwidth_converter_0_0/imageProcSystem_axis_dwidth_converter_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/bd_0/ip/ip_10/bd_c38f_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/bd_0/ip/ip_16/bd_c38f_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/bd_0/ip/ip_20/bd_c38f_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/bd_0/ip/ip_21/bd_c38f_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/bd_0/ip/ip_22/bd_c38f_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/bd_0/ip/ip_23/bd_c38f_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/bd_0/ip/ip_24/bd_c38f_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/bd_0/ip/ip_25/bd_c38f_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/bd_0/ip/ip_17/bd_c38f_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/bd_0/ip/ip_18/bd_c38f_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/bd_0/ip/ip_19/bd_c38f_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/bd_0/ip/ip_11/bd_c38f_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/bd_0/ip/ip_12/bd_c38f_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/bd_0/ip/ip_2/bd_c38f_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/bd_0/ip/ip_3/bd_c38f_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/bd_0/ip/ip_4/bd_c38f_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/bd_0/ip/ip_5/bd_c38f_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/bd_0/ip/ip_6/bd_c38f_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/bd_0/ip/ip_1/bd_c38f_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/bd_0/ip/ip_1/bd_c38f_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_axi_smc_0/ooc.xdc]
set_property used_in_synthesis false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_system_ila_0_0/bd_0/ip/ip_0/bd_6800_ila_lib_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_system_ila_0_0/bd_0/bd_6800_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_system_ila_0_0/imageProcSystem_system_ila_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/ip/imageProcSystem_auto_pc_0/imageProcSystem_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all D:/Kishore_Sir_Project/imageProcSystem/imageProcSystem.srcs/sources_1/bd/imageProcSystem/imageProcSystem_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top imageProcSystem_wrapper -part xc7z010clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef imageProcSystem_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file imageProcSystem_wrapper_utilization_synth.rpt -pb imageProcSystem_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
