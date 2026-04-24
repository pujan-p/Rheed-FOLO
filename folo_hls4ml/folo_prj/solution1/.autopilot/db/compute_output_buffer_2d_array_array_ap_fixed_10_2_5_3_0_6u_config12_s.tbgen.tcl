set moduleName compute_output_buffer_2d_array_array_ap_fixed_10_2_5_3_0_6u_config12_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type function
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
set C_modelName {compute_output_buffer_2d<array,array<ap_fixed<10,2,5,3,0>,6u>,config12>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ p_read int 10 regular  }
	{ p_read1 int 10 regular  }
	{ p_read2 int 10 regular  }
	{ p_read3 int 10 regular  }
	{ p_read4 int 10 regular  }
	{ p_read5 int 10 regular  }
	{ layer12_out int 60 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "layer12_out", "interface" : "fifo", "bitwidth" : 60, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 10 signal 0 } 
	{ p_read1 sc_in sc_lv 10 signal 1 } 
	{ p_read2 sc_in sc_lv 10 signal 2 } 
	{ p_read3 sc_in sc_lv 10 signal 3 } 
	{ p_read4 sc_in sc_lv 10 signal 4 } 
	{ p_read5 sc_in sc_lv 10 signal 5 } 
	{ layer12_out_din sc_out sc_lv 60 signal 6 } 
	{ layer12_out_full_n sc_in sc_logic 1 signal 6 } 
	{ layer12_out_write sc_out sc_logic 1 signal 6 } 
	{ layer12_out_num_data_valid sc_in sc_lv 2 signal 6 } 
	{ layer12_out_fifo_cap sc_in sc_lv 2 signal 6 } 
	{ layer12_out_blk_n sc_out sc_logic 1 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "layer12_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":60, "type": "signal", "bundle":{"name": "layer12_out", "role": "din" }} , 
 	{ "name": "layer12_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer12_out", "role": "full_n" }} , 
 	{ "name": "layer12_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer12_out", "role": "write" }} , 
 	{ "name": "layer12_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer12_out", "role": "num_data_valid" }} , 
 	{ "name": "layer12_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer12_out", "role": "fifo_cap" }} , 
 	{ "name": "layer12_out_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer12_out_blk_n", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	compute_output_buffer_2d_array_array_ap_fixed_10_2_5_3_0_6u_config12_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		layer12_out {Type O LastRead -1 FirstWrite 6}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_42 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_48 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_41 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_47 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_40 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_46 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_39 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_45 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_245 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_44 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_246 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_43 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_91 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_97 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_90 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_96 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_89 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_95 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_88 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_94 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_87 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_93 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_86 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_92 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_73 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_79 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_72 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_78 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_71 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_77 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_70 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_76 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_69 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_75 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_68 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_74 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_247 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_248 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_249 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_250 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_99 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_98 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_85 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_84 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_83 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_82 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_81 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_80 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_67 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_66 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_65 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_64 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_63 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_62 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_27 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_21 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_26 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_20 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_25 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_19 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_24 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_18 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_23 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_17 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_22 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_16 {Type X LastRead -1 FirstWrite -1}
		sX_4 {Type IO LastRead -1 FirstWrite -1}
		sY_4 {Type IO LastRead -1 FirstWrite -1}
		pY_4 {Type IO LastRead -1 FirstWrite -1}
		pX_4 {Type IO LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_10_2_5_3_0_6u_config12_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_42 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_48 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_41 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_47 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_40 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_46 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_39 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_45 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_245 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_44 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_246 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_43 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_91 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_97 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_90 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_96 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_89 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_95 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_88 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_94 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_87 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_93 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_86 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_92 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_73 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_79 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_72 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_78 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_71 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_77 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_70 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_76 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_69 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_75 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_68 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_74 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_247 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_248 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_249 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_250 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_99 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_98 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_85 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_84 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_83 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_82 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_81 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_80 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_67 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_66 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_65 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_64 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_63 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_62 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_27 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_21 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_26 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_20 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_25 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_19 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_24 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_18 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_23 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_17 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_22 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_16 {Type X LastRead -1 FirstWrite -1}}
	dense_latency_ap_fixed_10_2_5_3_0_ap_fixed_10_2_5_3_0_config12_mult_s {
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_48 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_47 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_46 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_45 {Type I LastRead 2 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_44 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_43 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_42 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_41 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_40 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_39 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_245 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_246 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_247 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_248 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_249 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_250 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_99 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_98 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_97 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_96 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_95 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_94 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_93 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_92 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_91 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_90 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_89 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_88 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_87 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_86 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_85 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_84 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_83 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_82 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_81 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_80 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_79 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_78 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_77 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_76 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_75 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_74 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_73 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_72 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_71 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_70 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_69 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_68 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_67 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_66 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_65 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_64 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_63 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_62 {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "7"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 10 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 10 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 10 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 10 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 10 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 10 } } }
	layer12_out { ap_fifo {  { layer12_out_din fifo_data_out 1 60 }  { layer12_out_full_n fifo_status_empty 0 1 }  { layer12_out_write fifo_data_in 1 1 }  { layer12_out_num_data_valid fifo_update 0 2 }  { layer12_out_fifo_cap fifo_data 0 2 } } }
}
