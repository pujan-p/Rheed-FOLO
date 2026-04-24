set moduleName conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_10_2_5_3_0_8u_config19_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 72
set C_modelName {conv_2d_cl<array<ap_fixed,8u>,array<ap_fixed<10,2,5,3,0>,8u>,config19>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ layer35_out int 80 regular {fifo 0 volatile }  }
	{ layer19_out int 80 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "layer35_out", "interface" : "fifo", "bitwidth" : 80, "direction" : "READONLY"} , 
 	{ "Name" : "layer19_out", "interface" : "fifo", "bitwidth" : 80, "direction" : "WRITEONLY"} ]}
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
	{ layer35_out_dout sc_in sc_lv 80 signal 0 } 
	{ layer35_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer35_out_read sc_out sc_logic 1 signal 0 } 
	{ layer35_out_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ layer35_out_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ layer19_out_din sc_out sc_lv 80 signal 1 } 
	{ layer19_out_full_n sc_in sc_logic 1 signal 1 } 
	{ layer19_out_write sc_out sc_logic 1 signal 1 } 
	{ layer19_out_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ layer19_out_fifo_cap sc_in sc_lv 2 signal 1 } 
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
 	{ "name": "layer35_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":80, "type": "signal", "bundle":{"name": "layer35_out", "role": "dout" }} , 
 	{ "name": "layer35_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer35_out", "role": "empty_n" }} , 
 	{ "name": "layer35_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer35_out", "role": "read" }} , 
 	{ "name": "layer35_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "layer35_out", "role": "num_data_valid" }} , 
 	{ "name": "layer35_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "layer35_out", "role": "fifo_cap" }} , 
 	{ "name": "layer19_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":80, "type": "signal", "bundle":{"name": "layer19_out", "role": "din" }} , 
 	{ "name": "layer19_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer19_out", "role": "full_n" }} , 
 	{ "name": "layer19_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer19_out", "role": "write" }} , 
 	{ "name": "layer19_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer19_out", "role": "num_data_valid" }} , 
 	{ "name": "layer19_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer19_out", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_10_2_5_3_0_8u_config19_s {
		layer35_out {Type I LastRead 1 FirstWrite -1}
		layer19_out {Type O LastRead -1 FirstWrite 7}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_61 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_60 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_59 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_58 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_57 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_56 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_39 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_47 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_38 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_46 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_37 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_45 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_36 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_44 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_35 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_43 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_34 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_42 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_33 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_41 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_32 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_40 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_55 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_54 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_53 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_52 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_51 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_50 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_49 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_48 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_31 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_30 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_29 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_28 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_27 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_26 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_15 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_7 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_14 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_6 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_13 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_5 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_12 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_4 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_11 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_3 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_10 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_2 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_9 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_1 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_8 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL {Type X LastRead -1 FirstWrite -1}
		sX_2 {Type IO LastRead -1 FirstWrite -1}
		sY_2 {Type IO LastRead -1 FirstWrite -1}
		pY_2 {Type IO LastRead -1 FirstWrite -1}
		pX_2 {Type IO LastRead -1 FirstWrite -1}}
	compute_output_buffer_2d_array_array_ap_fixed_10_2_5_3_0_8u_config19_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		layer19_out {Type O LastRead -1 FirstWrite 7}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_61 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_60 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_59 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_58 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_57 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_56 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_39 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_47 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_38 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_46 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_37 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_45 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_36 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_44 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_35 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_43 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_34 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_42 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_33 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_41 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_32 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_40 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_55 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_54 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_53 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_52 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_51 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_50 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_49 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_48 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_31 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_30 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_29 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_28 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_27 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_26 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_15 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_7 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_14 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_6 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_13 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_5 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_12 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_4 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_11 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_3 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_10 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_2 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_9 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_1 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_8 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL {Type X LastRead -1 FirstWrite -1}
		sX_2 {Type IO LastRead -1 FirstWrite -1}
		sY_2 {Type IO LastRead -1 FirstWrite -1}
		pY_2 {Type IO LastRead -1 FirstWrite -1}
		pX_2 {Type IO LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_10_2_5_3_0_8u_config19_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_61 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_60 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_59 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_58 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_57 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_56 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_39 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_47 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_38 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_46 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_37 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_45 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_36 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_44 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_35 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_43 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_34 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_42 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_33 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_41 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_32 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_40 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_15 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_23 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_14 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_22 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_13 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_21 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_12 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_20 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_11 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_19 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_10 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_18 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_9 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_17 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_8 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_16 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_55 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_54 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_53 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_52 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_51 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_50 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_49 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_48 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_31 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_30 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_29 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_28 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_27 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_26 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_25 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_24 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_7 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_6 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_5 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_4 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_3 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_2 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_1 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_15 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_7 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_14 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_6 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_13 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_5 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_12 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_4 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_11 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_3 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_10 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_2 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_9 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_1 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_8 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL {Type X LastRead -1 FirstWrite -1}}
	dense_latency_ap_fixed_10_2_5_3_0_ap_fixed_10_2_5_3_0_config19_mult_s {
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27 {Type I LastRead 3 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22 {Type I LastRead 2 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_61 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_60 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_59 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_58 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_57 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_56 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_55 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_54 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_53 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_52 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_51 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_50 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_49 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_48 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_47 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_46 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_45 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_44 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_43 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_42 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_41 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_40 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_39 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_38 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_37 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_36 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_35 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_34 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_33 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_32 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_31 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_30 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_29 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_28 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_27 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_26 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_25 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_24 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_23 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_22 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_21 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_20 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_19 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_18 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_17 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_16 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_15 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_14 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_13 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_12 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_11 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_10 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_9 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_8 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_7 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_6 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_5 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_4 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_3 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_2 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_1 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9 {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9250", "Max" : "9250"}
	, {"Name" : "Interval", "Min" : "9248", "Max" : "9248"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	layer35_out { ap_fifo {  { layer35_out_dout fifo_data_out 0 80 }  { layer35_out_empty_n fifo_status_empty 0 1 }  { layer35_out_read fifo_data_in 1 1 }  { layer35_out_num_data_valid fifo_update 0 7 }  { layer35_out_fifo_cap fifo_data 0 7 } } }
	layer19_out { ap_fifo {  { layer19_out_din fifo_data_out 1 80 }  { layer19_out_full_n fifo_status_empty 0 1 }  { layer19_out_write fifo_data_in 1 1 }  { layer19_out_num_data_valid fifo_update 0 2 }  { layer19_out_fifo_cap fifo_data 0 2 } } }
}
