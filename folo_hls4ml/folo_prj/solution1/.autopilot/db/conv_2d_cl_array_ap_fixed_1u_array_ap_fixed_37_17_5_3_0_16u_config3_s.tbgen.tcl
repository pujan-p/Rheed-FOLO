set moduleName conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_37_17_5_3_0_16u_config3_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {conv_2d_cl<array<ap_fixed,1u>,array<ap_fixed<37,17,5,3,0>,16u>,config3>}
set C_modelType { void 0 }
set C_modelArgList {
	{ layer13_out int 16 regular {fifo 0 volatile }  }
	{ layer3_out int 592 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "layer13_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "layer3_out", "interface" : "fifo", "bitwidth" : 592, "direction" : "WRITEONLY"} ]}
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
	{ layer13_out_dout sc_in sc_lv 16 signal 0 } 
	{ layer13_out_num_data_valid sc_in sc_lv 16 signal 0 } 
	{ layer13_out_fifo_cap sc_in sc_lv 16 signal 0 } 
	{ layer13_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer13_out_read sc_out sc_logic 1 signal 0 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ layer3_out_din sc_out sc_lv 592 signal 1 } 
	{ layer3_out_num_data_valid sc_in sc_lv 15 signal 1 } 
	{ layer3_out_fifo_cap sc_in sc_lv 15 signal 1 } 
	{ layer3_out_full_n sc_in sc_logic 1 signal 1 } 
	{ layer3_out_write sc_out sc_logic 1 signal 1 } 
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
 	{ "name": "layer13_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer13_out", "role": "dout" }} , 
 	{ "name": "layer13_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer13_out", "role": "num_data_valid" }} , 
 	{ "name": "layer13_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer13_out", "role": "fifo_cap" }} , 
 	{ "name": "layer13_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer13_out", "role": "empty_n" }} , 
 	{ "name": "layer13_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer13_out", "role": "read" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "layer3_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":592, "type": "signal", "bundle":{"name": "layer3_out", "role": "din" }} , 
 	{ "name": "layer3_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "layer3_out", "role": "num_data_valid" }} , 
 	{ "name": "layer3_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "layer3_out", "role": "fifo_cap" }} , 
 	{ "name": "layer3_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer3_out", "role": "full_n" }} , 
 	{ "name": "layer3_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer3_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "136"],
		"CDFG" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_37_17_5_3_0_16u_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "101403", "EstimateLatencyMax" : "101403",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer13_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16900", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer13_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer3_out_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76", "Port" : "layer3_out", "Inst_start_state" : "2", "Inst_end_state" : "8"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Inst_start_state" : "2", "Inst_end_state" : "8"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Inst_start_state" : "2", "Inst_end_state" : "8"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Inst_start_state" : "2", "Inst_end_state" : "8"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Inst_start_state" : "2", "Inst_end_state" : "8"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Inst_start_state" : "2", "Inst_end_state" : "8"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Inst_start_state" : "2", "Inst_end_state" : "8"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Inst_start_state" : "2", "Inst_end_state" : "8"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Inst_start_state" : "2", "Inst_end_state" : "8"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Inst_start_state" : "2", "Inst_end_state" : "8"}]},
			{"Name" : "void_conv_2d_buffer_latency_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76", "Port" : "void_conv_2d_buffer_latency_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Inst_start_state" : "2", "Inst_end_state" : "8"}]},
			{"Name" : "void_conv_2d_buffer_latency_cl_stream_stream_weight_t_bias_t_line_buffer", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76", "Port" : "void_conv_2d_buffer_latency_cl_stream_stream_weight_t_bias_t_line_buffer", "Inst_start_state" : "2", "Inst_end_state" : "8"}]},
			{"Name" : "sX_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76", "Port" : "sX_3", "Inst_start_state" : "2", "Inst_end_state" : "8"}]},
			{"Name" : "sY_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76", "Port" : "sY_3", "Inst_start_state" : "2", "Inst_end_state" : "8"}]},
			{"Name" : "pY_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76", "Port" : "pY_3", "Inst_start_state" : "2", "Inst_end_state" : "8"}]},
			{"Name" : "pX_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76", "Port" : "pX_3", "Inst_start_state" : "2", "Inst_end_state" : "8"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76", "SubBlockPort" : ["layer3_out_blk_n"]}],
		"Loop" : [
			{"Name" : "ReadInputHeight_ReadInputWidth", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76", "Parent" : "0", "Child" : ["2", "5"],
		"CDFG" : "compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "6",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_elem_0_0_0_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer3_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer3_out_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_fu_90", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7"},
					{"ID" : "5", "SubInstance" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_fu_90", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8"},
					{"ID" : "5", "SubInstance" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_fu_90", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4"},
					{"ID" : "5", "SubInstance" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_fu_90", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5"},
					{"ID" : "5", "SubInstance" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_fu_90", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1"},
					{"ID" : "5", "SubInstance" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_fu_90", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2"},
					{"ID" : "5", "SubInstance" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_fu_90", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6"},
					{"ID" : "5", "SubInstance" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_fu_90", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3"},
					{"ID" : "5", "SubInstance" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_fu_90", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig"},
					{"ID" : "5", "SubInstance" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig"}]},
			{"Name" : "void_conv_2d_buffer_latency_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_fu_90", "Port" : "void_conv_2d_buffer_latency_cl_stream_stream_weight_t_bias_t_line_buffer_1"}]},
			{"Name" : "void_conv_2d_buffer_latency_cl_stream_stream_weight_t_bias_t_line_buffer", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_fu_90", "Port" : "void_conv_2d_buffer_latency_cl_stream_stream_weight_t_bias_t_line_buffer"}]},
			{"Name" : "sX_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_3", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_fu_90", "Parent" : "1", "Child" : ["3", "4"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_elem_0_0_0_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_conv_2d_buffer_latency_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_conv_2d_buffer_latency_cl_stream_stream_weight_t_bias_t_line_buffer", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_fu_90.void_conv_2d_buffer_latency_cl_stream_stream_weight_t_bias_t_line_buffer_1_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_fu_90.void_conv_2d_buffer_latency_cl_stream_stream_weight_t_bias_t_line_buffer_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118", "Parent" : "1", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135"],
		"CDFG" : "dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_13ns_29_1_0_U27", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9ns_25_1_0_U28", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_12ns_27_1_0_U29", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_27_1_0_U30", "Parent" : "5"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9s_25_1_0_U31", "Parent" : "5"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_26_1_0_U32", "Parent" : "5"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_26_1_0_U33", "Parent" : "5"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_26_1_0_U34", "Parent" : "5"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_13ns_29_1_0_U35", "Parent" : "5"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_12ns_27_1_0_U36", "Parent" : "5"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9s_25_1_0_U37", "Parent" : "5"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_8s_23_1_0_U38", "Parent" : "5"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10ns_26_1_0_U39", "Parent" : "5"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_7ns_23_1_0_U40", "Parent" : "5"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9ns_25_1_0_U41", "Parent" : "5"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_27_1_0_U42", "Parent" : "5"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_27_1_0_U43", "Parent" : "5"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10ns_26_1_0_U44", "Parent" : "5"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_6ns_22_1_0_U45", "Parent" : "5"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_6ns_22_1_0_U46", "Parent" : "5"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_12ns_28_1_0_U47", "Parent" : "5"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_8s_24_1_0_U48", "Parent" : "5"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_8ns_24_1_0_U49", "Parent" : "5"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9ns_25_1_0_U50", "Parent" : "5"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9s_25_1_0_U51", "Parent" : "5"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_12ns_28_1_0_U52", "Parent" : "5"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_27_1_0_U53", "Parent" : "5"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9s_24_1_0_U54", "Parent" : "5"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_8s_24_1_0_U55", "Parent" : "5"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_6ns_22_1_0_U56", "Parent" : "5"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_8s_24_1_0_U57", "Parent" : "5"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11ns_27_1_0_U58", "Parent" : "5"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9s_25_1_0_U59", "Parent" : "5"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9ns_24_1_0_U60", "Parent" : "5"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9s_24_1_0_U61", "Parent" : "5"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_26_1_0_U62", "Parent" : "5"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_8s_23_1_0_U63", "Parent" : "5"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_25_1_0_U64", "Parent" : "5"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10ns_26_1_0_U65", "Parent" : "5"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_26_1_0_U66", "Parent" : "5"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9ns_25_1_0_U67", "Parent" : "5"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_13ns_29_1_0_U68", "Parent" : "5"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_13ns_29_1_0_U69", "Parent" : "5"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_26_1_0_U70", "Parent" : "5"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_8ns_24_1_0_U71", "Parent" : "5"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_27_1_0_U72", "Parent" : "5"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9s_25_1_0_U73", "Parent" : "5"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9s_25_1_0_U74", "Parent" : "5"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_12ns_28_1_0_U75", "Parent" : "5"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_26_1_0_U76", "Parent" : "5"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_26_1_0_U77", "Parent" : "5"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_26_1_0_U78", "Parent" : "5"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_25_1_0_U79", "Parent" : "5"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_27_1_0_U80", "Parent" : "5"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_27_1_0_U81", "Parent" : "5"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9s_24_1_0_U82", "Parent" : "5"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9s_25_1_0_U83", "Parent" : "5"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_8ns_24_1_0_U84", "Parent" : "5"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_26_1_0_U85", "Parent" : "5"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_27_1_0_U86", "Parent" : "5"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_27_1_0_U87", "Parent" : "5"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_26_1_0_U88", "Parent" : "5"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_26_1_0_U89", "Parent" : "5"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10ns_26_1_0_U90", "Parent" : "5"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_25_1_0_U91", "Parent" : "5"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10ns_26_1_0_U92", "Parent" : "5"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_7s_23_1_0_U93", "Parent" : "5"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10ns_26_1_0_U94", "Parent" : "5"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_27_1_0_U95", "Parent" : "5"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_25_1_0_U96", "Parent" : "5"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_8s_24_1_0_U97", "Parent" : "5"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_26_1_0_U98", "Parent" : "5"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_26_1_0_U99", "Parent" : "5"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_27_1_0_U100", "Parent" : "5"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_12ns_27_1_0_U101", "Parent" : "5"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_26_1_0_U102", "Parent" : "5"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_26_1_0_U103", "Parent" : "5"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_6ns_22_1_0_U104", "Parent" : "5"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_7ns_22_1_0_U105", "Parent" : "5"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9ns_24_1_0_U106", "Parent" : "5"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9s_24_1_0_U107", "Parent" : "5"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_13ns_29_1_0_U108", "Parent" : "5"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9s_24_1_0_U109", "Parent" : "5"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9s_25_1_0_U110", "Parent" : "5"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_7s_22_1_0_U111", "Parent" : "5"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_7ns_23_1_0_U112", "Parent" : "5"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_26_1_0_U113", "Parent" : "5"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_26_1_0_U114", "Parent" : "5"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_26_1_0_U115", "Parent" : "5"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_8ns_23_1_0_U116", "Parent" : "5"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_27_1_0_U117", "Parent" : "5"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9ns_25_1_0_U118", "Parent" : "5"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_26_1_0_U119", "Parent" : "5"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_26_1_0_U120", "Parent" : "5"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_25_1_0_U121", "Parent" : "5"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10ns_26_1_0_U122", "Parent" : "5"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_8ns_24_1_0_U123", "Parent" : "5"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9ns_25_1_0_U124", "Parent" : "5"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_12ns_28_1_0_U125", "Parent" : "5"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_12ns_28_1_0_U126", "Parent" : "5"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9ns_25_1_0_U127", "Parent" : "5"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9s_24_1_0_U128", "Parent" : "5"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_26_1_0_U129", "Parent" : "5"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_12ns_27_1_0_U130", "Parent" : "5"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_12ns_28_1_0_U131", "Parent" : "5"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9ns_25_1_0_U132", "Parent" : "5"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_13ns_28_1_0_U133", "Parent" : "5"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9ns_25_1_0_U134", "Parent" : "5"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_26_1_0_U135", "Parent" : "5"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9ns_25_1_0_U136", "Parent" : "5"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_12ns_27_1_0_U137", "Parent" : "5"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9ns_24_1_0_U138", "Parent" : "5"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10ns_26_1_0_U139", "Parent" : "5"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_8ns_23_1_0_U140", "Parent" : "5"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_8ns_23_1_0_U141", "Parent" : "5"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_14ns_29_1_0_U142", "Parent" : "5"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10ns_25_1_0_U143", "Parent" : "5"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_26_1_0_U144", "Parent" : "5"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10ns_25_1_0_U145", "Parent" : "5"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_26_1_0_U146", "Parent" : "5"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9ns_25_1_0_U147", "Parent" : "5"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10ns_25_1_0_U148", "Parent" : "5"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_8ns_24_1_0_U149", "Parent" : "5"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_26_1_0_U150", "Parent" : "5"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_8s_24_1_0_U151", "Parent" : "5"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10s_25_1_0_U152", "Parent" : "5"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9ns_25_1_0_U153", "Parent" : "5"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_11s_26_1_0_U154", "Parent" : "5"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_10ns_26_1_0_U155", "Parent" : "5"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76.grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118.mul_16s_9s_25_1_0_U156", "Parent" : "5"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_37_17_5_3_0_16u_config3_s {
		layer13_out {Type I LastRead 1 FirstWrite -1}
		layer3_out {Type O LastRead -1 FirstWrite 6}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig {Type IO LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_latency_cl_stream_stream_weight_t_bias_t_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_latency_cl_stream_stream_weight_t_bias_t_line_buffer {Type X LastRead -1 FirstWrite -1}
		sX_3 {Type IO LastRead -1 FirstWrite -1}
		sY_3 {Type IO LastRead -1 FirstWrite -1}
		pY_3 {Type IO LastRead -1 FirstWrite -1}
		pX_3 {Type IO LastRead -1 FirstWrite -1}}
	compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s {
		in_elem_0_0_0_0_0_val {Type I LastRead 0 FirstWrite -1}
		layer3_out {Type O LastRead -1 FirstWrite 6}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig {Type IO LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_latency_cl_stream_stream_weight_t_bias_t_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_latency_cl_stream_stream_weight_t_bias_t_line_buffer {Type X LastRead -1 FirstWrite -1}
		sX_3 {Type IO LastRead -1 FirstWrite -1}
		sY_3 {Type IO LastRead -1 FirstWrite -1}
		pY_3 {Type IO LastRead -1 FirstWrite -1}
		pX_3 {Type IO LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s {
		in_elem_0_0_0_0_0_val {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig {Type IO LastRead 0 FirstWrite 0}
		void_conv_2d_buffer_latency_cl_stream_stream_weight_t_bias_t_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_latency_cl_stream_stream_weight_t_bias_t_line_buffer {Type X LastRead -1 FirstWrite -1}}
	dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s {
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "101403", "Max" : "101403"}
	, {"Name" : "Interval", "Min" : "101403", "Max" : "101403"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	layer13_out { ap_fifo {  { layer13_out_dout fifo_data_in 0 16 }  { layer13_out_num_data_valid fifo_status_num_data_valid 0 16 }  { layer13_out_fifo_cap fifo_update 0 16 }  { layer13_out_empty_n fifo_status 0 1 }  { layer13_out_read fifo_port_we 1 1 } } }
	layer3_out { ap_fifo {  { layer3_out_din fifo_data_in 1 592 }  { layer3_out_num_data_valid fifo_status_num_data_valid 0 15 }  { layer3_out_fifo_cap fifo_update 0 15 }  { layer3_out_full_n fifo_status 0 1 }  { layer3_out_write fifo_port_we 1 1 } } }
}
