set moduleName conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_8u_config16_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {conv_2d_cl<array<ap_fixed,6u>,array<ap_fixed<12,6,5,3,0>,8u>,config16>}
set C_modelType { void 0 }
set C_modelArgList {
	{ layer34_out int 72 regular {fifo 0 volatile }  }
	{ layer16_out int 96 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "layer34_out", "interface" : "fifo", "bitwidth" : 72, "direction" : "READONLY"} , 
 	{ "Name" : "layer16_out", "interface" : "fifo", "bitwidth" : 96, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ layer34_out_dout sc_in sc_lv 72 signal 0 } 
	{ layer34_out_num_data_valid sc_in sc_lv 14 signal 0 } 
	{ layer34_out_fifo_cap sc_in sc_lv 14 signal 0 } 
	{ layer34_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer34_out_read sc_out sc_logic 1 signal 0 } 
	{ layer16_out_din sc_out sc_lv 96 signal 1 } 
	{ layer16_out_num_data_valid sc_in sc_lv 11 signal 1 } 
	{ layer16_out_fifo_cap sc_in sc_lv 11 signal 1 } 
	{ layer16_out_full_n sc_in sc_logic 1 signal 1 } 
	{ layer16_out_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "layer34_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "layer34_out", "role": "dout" }} , 
 	{ "name": "layer34_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "layer34_out", "role": "num_data_valid" }} , 
 	{ "name": "layer34_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "layer34_out", "role": "fifo_cap" }} , 
 	{ "name": "layer34_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer34_out", "role": "empty_n" }} , 
 	{ "name": "layer34_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer34_out", "role": "read" }} , 
 	{ "name": "layer16_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "layer16_out", "role": "din" }} , 
 	{ "name": "layer16_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "layer16_out", "role": "num_data_valid" }} , 
 	{ "name": "layer16_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "layer16_out", "role": "fifo_cap" }} , 
 	{ "name": "layer16_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer16_out", "role": "full_n" }} , 
 	{ "name": "layer16_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer16_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_8u_config16_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16901", "EstimateLatencyMax" : "109851",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer34_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4225", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer34_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer16_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "layer16_out", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_253", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_253", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_254", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_254", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_267", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_267", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_261", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_261", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_268", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_268", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_262", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_262", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_269", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_269", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_263", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_263", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_270", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_270", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_264", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_264", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_271", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_271", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_265", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_265", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_272", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_272", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_266", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_266", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_285", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_285", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_279", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_279", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_286", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_286", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_280", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_280", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_287", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_287", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_281", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_281", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_288", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_288", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_282", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_282", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_289", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_289", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_283", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_283", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_290", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_290", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_284", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_284", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_255", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_255", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_256", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_256", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_257", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_257", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_258", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_258", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_259", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_259", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_260", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_260", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_273", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_273", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_274", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_274", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_275", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_275", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_276", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_276", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_277", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_277", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_278", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_278", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_291", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_291", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_292", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_292", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_293", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_293", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_294", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_294", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_295", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_295", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_296", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_296", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_39", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_39", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_33", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_33", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_38", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_38", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_32", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_32", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_37", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_37", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_31", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_31", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_36", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_36", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_30", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_30", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_35", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_35", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_29", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_29", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_34", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_34", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_28", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_28", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sX_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "sX_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sY_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "sY_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pY_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "pY_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pX_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "pX_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "w16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Port" : "w16", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "ReadInputHeight_ReadInputWidth", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208", "Parent" : "0", "Child" : ["2", "15"],
		"CDFG" : "compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "24",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer16_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer16_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_253", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_253", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_253", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_254", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_254", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_254", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_267", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_267", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_267", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_261", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_261", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_261", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_268", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_268", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_268", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_262", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_262", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_262", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_269", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_269", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_269", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_263", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_263", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_263", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_270", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_270", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_270", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_264", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_264", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_264", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_271", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_271", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_271", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_265", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_265", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_265", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_272", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_272", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_272", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_266", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_266", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_266", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_285", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_285", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_285", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_279", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_279", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_279", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_286", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_286", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_286", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_280", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_280", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_280", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_287", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_287", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_287", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_281", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_281", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_281", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_288", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_288", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_288", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_282", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_282", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_282", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_289", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_289", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_289", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_283", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_283", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_283", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_290", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_290", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_290", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_284", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_284", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_284", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_255", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_255", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_255", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_256", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_256", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_256", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_257", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_257", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_257", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_258", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_258", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_258", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_259", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_259", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_259", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_260", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_260", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_260", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_273", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_273", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_273", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_274", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_274", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_274", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_275", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_275", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_275", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_276", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_276", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_276", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_277", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_277", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_277", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_278", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_278", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_278", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_291", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_291", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_291", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_292", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_292", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_292", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_293", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_293", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_293", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_294", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_294", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_294", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_295", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_295", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_295", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_296", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_296", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_296", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_39", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_39", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_33", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_33", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_38", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_38", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_32", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_32", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_37", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_37", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_31", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_31", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_36", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_36", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_30", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_30", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_35", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_35", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_29", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_29", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_34", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_34", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_28", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_28", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "sX_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "w16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Port" : "w16", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_253", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_254", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_267", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_261", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_268", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_262", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_269", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_263", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_270", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_264", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_271", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_265", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_272", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_266", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_285", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_279", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_286", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_280", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_287", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_281", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_288", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_282", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_289", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_283", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_290", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_284", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_255", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_256", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_257", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_258", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_259", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_260", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_273", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_274", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_275", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_276", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_277", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_278", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_291", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_292", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_293", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_294", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_295", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_296", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_39", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_33", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_38", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_32", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_37", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_31", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_36", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_30", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_35", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_29", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_34", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_28", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_39_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_33_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_38_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_32_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_37_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_31_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_36_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_30_U", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_35_U", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_29_U", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_34_U", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_28_U", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389", "Parent" : "1", "Child" : ["16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44"],
		"CDFG" : "dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "w16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_253", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_254", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_255", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_256", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_257", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_258", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_259", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_260", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_261", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_262", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_263", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_264", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_265", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_266", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_267", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_268", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_269", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_270", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_271", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_272", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_273", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_274", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_275", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_276", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_277", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_278", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_279", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_280", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_281", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_282", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_283", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_284", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_285", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_286", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_287", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_288", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_289", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_290", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_291", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_292", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_293", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_294", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_295", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_296", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.w16_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.sparsemux_37_5_12_1_1_U513", "Parent" : "15"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.sparsemux_37_5_12_1_1_U514", "Parent" : "15"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.sparsemux_37_5_12_1_1_U515", "Parent" : "15"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U516", "Parent" : "15"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U517", "Parent" : "15"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U518", "Parent" : "15"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U519", "Parent" : "15"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U520", "Parent" : "15"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U521", "Parent" : "15"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U522", "Parent" : "15"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U523", "Parent" : "15"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U524", "Parent" : "15"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U525", "Parent" : "15"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U526", "Parent" : "15"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U527", "Parent" : "15"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U528", "Parent" : "15"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U529", "Parent" : "15"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U530", "Parent" : "15"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U531", "Parent" : "15"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U532", "Parent" : "15"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U533", "Parent" : "15"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U534", "Parent" : "15"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U535", "Parent" : "15"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U536", "Parent" : "15"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U537", "Parent" : "15"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_12s_18_1_1_U538", "Parent" : "15"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.mul_12s_6s_18_1_1_U539", "Parent" : "15"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208.grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389.flow_control_loop_pipe_no_ap_cont_U", "Parent" : "15"}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_8u_config16_s {
		layer34_out {Type I LastRead 1 FirstWrite -1}
		layer16_out {Type O LastRead -1 FirstWrite 3}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_253 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_254 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_267 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_261 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_268 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_262 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_269 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_263 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_270 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_264 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_271 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_265 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_272 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_266 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_285 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_279 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_286 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_280 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_287 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_281 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_288 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_282 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_289 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_283 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_290 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_284 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_255 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_256 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_257 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_258 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_259 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_260 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_273 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_274 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_275 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_276 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_277 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_278 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_291 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_292 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_293 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_294 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_295 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_296 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_39 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_33 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_38 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_32 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_37 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_31 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_36 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_30 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_35 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_29 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_34 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_28 {Type X LastRead -1 FirstWrite -1}
		sX_1 {Type IO LastRead -1 FirstWrite -1}
		sY_1 {Type IO LastRead -1 FirstWrite -1}
		pY_1 {Type IO LastRead -1 FirstWrite -1}
		pX_1 {Type IO LastRead -1 FirstWrite -1}
		w16 {Type I LastRead -1 FirstWrite -1}}
	compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		layer16_out {Type O LastRead -1 FirstWrite 3}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_253 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_254 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_267 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_261 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_268 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_262 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_269 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_263 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_270 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_264 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_271 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_265 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_272 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_266 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_285 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_279 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_286 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_280 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_287 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_281 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_288 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_282 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_289 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_283 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_290 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_284 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_255 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_256 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_257 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_258 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_259 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_260 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_273 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_274 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_275 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_276 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_277 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_278 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_291 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_292 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_293 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_294 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_295 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_296 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_39 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_33 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_38 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_32 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_37 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_31 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_36 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_30 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_35 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_29 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_34 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_28 {Type X LastRead -1 FirstWrite -1}
		sX_1 {Type IO LastRead -1 FirstWrite -1}
		sY_1 {Type IO LastRead -1 FirstWrite -1}
		pY_1 {Type IO LastRead -1 FirstWrite -1}
		pX_1 {Type IO LastRead -1 FirstWrite -1}
		w16 {Type I LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_253 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_254 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_267 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_261 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_268 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_262 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_269 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_263 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_270 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_264 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_271 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_265 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_272 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_266 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_285 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_279 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_286 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_280 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_287 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_281 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_288 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_282 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_289 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_283 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_290 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_284 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_255 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_256 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_257 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_258 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_259 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_260 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_273 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_274 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_275 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_276 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_277 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_278 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_291 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_292 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_293 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_294 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_295 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_296 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_39 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_33 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_38 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_32 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_37 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_31 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_36 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_30 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_35 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_29 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_34 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5E_28 {Type X LastRead -1 FirstWrite -1}}
	dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s {
		w16 {Type I LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_253 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_254 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_255 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_256 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_257 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_258 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_259 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_260 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_261 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_262 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_263 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_264 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_265 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_266 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_267 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_268 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_269 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_270 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_271 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_272 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_273 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_274 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_275 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_276 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_277 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_278 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_279 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_280 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_281 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_282 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_283 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_284 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_285 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_286 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_287 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_288 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_289 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_290 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_291 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_292 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_293 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_294 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_295 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi12ELi6EL9ap_q_mode5EL9_296 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16901", "Max" : "109851"}
	, {"Name" : "Interval", "Min" : "16901", "Max" : "109851"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	layer34_out { ap_fifo {  { layer34_out_dout fifo_data_in 0 72 }  { layer34_out_num_data_valid fifo_status_num_data_valid 0 14 }  { layer34_out_fifo_cap fifo_update 0 14 }  { layer34_out_empty_n fifo_status 0 1 }  { layer34_out_read fifo_port_we 1 1 } } }
	layer16_out { ap_fifo {  { layer16_out_din fifo_data_in 1 96 }  { layer16_out_num_data_valid fifo_status_num_data_valid 0 11 }  { layer16_out_fifo_cap fifo_update 0 11 }  { layer16_out_full_n fifo_status 0 1 }  { layer16_out_write fifo_port_we 1 1 } } }
}
