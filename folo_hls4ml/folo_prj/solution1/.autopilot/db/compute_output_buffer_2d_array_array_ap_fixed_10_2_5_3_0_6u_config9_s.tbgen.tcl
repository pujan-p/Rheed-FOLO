set moduleName compute_output_buffer_2d_array_array_ap_fixed_10_2_5_3_0_6u_config9_s
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
set C_modelName {compute_output_buffer_2d<array,array<ap_fixed<10,2,5,3,0>,6u>,config9>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ p_read int 10 regular  }
	{ p_read1 int 10 regular  }
	{ p_read2 int 10 regular  }
	{ p_read3 int 10 regular  }
	{ layer9_out int 60 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "layer9_out", "interface" : "fifo", "bitwidth" : 60, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
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
	{ layer9_out_din sc_out sc_lv 60 signal 4 } 
	{ layer9_out_full_n sc_in sc_logic 1 signal 4 } 
	{ layer9_out_write sc_out sc_logic 1 signal 4 } 
	{ layer9_out_num_data_valid sc_in sc_lv 2 signal 4 } 
	{ layer9_out_fifo_cap sc_in sc_lv 2 signal 4 } 
	{ layer9_out_blk_n sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "layer9_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":60, "type": "signal", "bundle":{"name": "layer9_out", "role": "din" }} , 
 	{ "name": "layer9_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer9_out", "role": "full_n" }} , 
 	{ "name": "layer9_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer9_out", "role": "write" }} , 
 	{ "name": "layer9_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer9_out", "role": "num_data_valid" }} , 
 	{ "name": "layer9_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer9_out", "role": "fifo_cap" }} , 
 	{ "name": "layer9_out_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer9_out_blk_n", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	compute_output_buffer_2d_array_array_ap_fixed_10_2_5_3_0_6u_config9_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		layer9_out {Type O LastRead -1 FirstWrite 7}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_54 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_58 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_53 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_57 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_52 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_56 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_51 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_55 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_181 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_177 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_182 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_178 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_183 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_179 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_184 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_180 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_193 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_189 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_194 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_190 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_195 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_191 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_196 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_192 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_50 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_49 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_175 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_176 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_185 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_186 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_187 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_188 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_197 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_198 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_199 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_200 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_47 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_43 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_46 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_42 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_45 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_41 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_44 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_40 {Type X LastRead -1 FirstWrite -1}
		sX_5 {Type IO LastRead -1 FirstWrite -1}
		sY_5 {Type IO LastRead -1 FirstWrite -1}
		pY_5 {Type IO LastRead -1 FirstWrite -1}
		pX_5 {Type IO LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_10_2_5_3_0_4u_config9_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_54 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_58 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_53 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_57 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_52 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_56 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_51 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_55 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_181 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_177 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_182 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_178 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_183 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_179 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_184 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_180 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_193 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_189 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_194 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_190 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_195 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_191 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_196 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_192 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_50 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_49 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_175 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_176 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_185 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_186 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_187 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_188 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_197 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_198 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_199 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_200 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_47 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_43 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_46 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_42 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_45 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_41 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_44 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_40 {Type X LastRead -1 FirstWrite -1}}
	dense_latency_ap_fixed_10_2_5_3_0_ap_fixed_10_2_5_3_0_config9_mult_s {
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_58 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_57 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_56 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_55 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_54 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_53 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_52 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_51 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_50 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_49 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_175 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_176 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_177 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_178 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_179 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_180 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_181 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_182 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_183 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_184 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_185 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_186 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_187 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_188 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_189 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_190 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_191 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_192 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_193 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_194 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_195 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_196 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_197 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_198 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_199 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_200 {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "7"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 10 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 10 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 10 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 10 } } }
	layer9_out { ap_fifo {  { layer9_out_din fifo_data_out 1 60 }  { layer9_out_full_n fifo_status_empty 0 1 }  { layer9_out_write fifo_data_in 1 1 }  { layer9_out_num_data_valid fifo_update 0 2 }  { layer9_out_fifo_cap fifo_data 0 2 } } }
}
