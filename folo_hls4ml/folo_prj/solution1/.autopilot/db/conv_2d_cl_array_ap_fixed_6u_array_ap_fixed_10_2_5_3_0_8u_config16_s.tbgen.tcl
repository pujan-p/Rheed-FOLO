set moduleName conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_10_2_5_3_0_8u_config16_s
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
set C_modelName {conv_2d_cl<array<ap_fixed,6u>,array<ap_fixed<10,2,5,3,0>,8u>,config16>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ layer34_out int 60 regular {fifo 0 volatile }  }
	{ layer16_out int 80 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "layer34_out", "interface" : "fifo", "bitwidth" : 60, "direction" : "READONLY"} , 
 	{ "Name" : "layer16_out", "interface" : "fifo", "bitwidth" : 80, "direction" : "WRITEONLY"} ]}
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
	{ layer34_out_dout sc_in sc_lv 60 signal 0 } 
	{ layer34_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer34_out_read sc_out sc_logic 1 signal 0 } 
	{ layer34_out_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ layer34_out_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ layer16_out_din sc_out sc_lv 80 signal 1 } 
	{ layer16_out_full_n sc_in sc_logic 1 signal 1 } 
	{ layer16_out_write sc_out sc_logic 1 signal 1 } 
	{ layer16_out_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ layer16_out_fifo_cap sc_in sc_lv 2 signal 1 } 
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
 	{ "name": "layer34_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":60, "type": "signal", "bundle":{"name": "layer34_out", "role": "dout" }} , 
 	{ "name": "layer34_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer34_out", "role": "empty_n" }} , 
 	{ "name": "layer34_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer34_out", "role": "read" }} , 
 	{ "name": "layer34_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "layer34_out", "role": "num_data_valid" }} , 
 	{ "name": "layer34_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "layer34_out", "role": "fifo_cap" }} , 
 	{ "name": "layer16_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":80, "type": "signal", "bundle":{"name": "layer16_out", "role": "din" }} , 
 	{ "name": "layer16_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer16_out", "role": "full_n" }} , 
 	{ "name": "layer16_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer16_out", "role": "write" }} , 
 	{ "name": "layer16_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer16_out", "role": "num_data_valid" }} , 
 	{ "name": "layer16_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer16_out", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_10_2_5_3_0_8u_config16_s {
		layer34_out {Type I LastRead 1 FirstWrite -1}
		layer16_out {Type O LastRead -1 FirstWrite 6}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_201 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_202 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_215 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_209 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_216 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_210 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_217 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_211 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_218 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_212 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_219 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_213 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_220 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_214 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_233 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_227 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_234 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_228 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_235 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_229 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_236 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_230 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_237 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_231 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_238 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_232 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_203 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_204 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_205 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_206 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_207 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_208 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_221 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_222 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_223 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_224 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_225 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_226 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_239 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_240 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_241 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_242 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_243 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_244 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_39 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_33 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_38 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_32 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_37 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_31 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_36 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_30 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_35 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_29 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_34 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_28 {Type X LastRead -1 FirstWrite -1}
		sX_3 {Type IO LastRead -1 FirstWrite -1}
		sY_3 {Type IO LastRead -1 FirstWrite -1}
		pY_3 {Type IO LastRead -1 FirstWrite -1}
		pX_3 {Type IO LastRead -1 FirstWrite -1}}
	compute_output_buffer_2d_array_array_ap_fixed_10_2_5_3_0_8u_config16_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		layer16_out {Type O LastRead -1 FirstWrite 6}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_201 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_202 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_215 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_209 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_216 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_210 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_217 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_211 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_218 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_212 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_219 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_213 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_220 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_214 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_233 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_227 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_234 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_228 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_235 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_229 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_236 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_230 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_237 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_231 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_238 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_232 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_203 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_204 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_205 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_206 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_207 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_208 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_221 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_222 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_223 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_224 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_225 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_226 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_239 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_240 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_241 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_242 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_243 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_244 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_39 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_33 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_38 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_32 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_37 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_31 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_36 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_30 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_35 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_29 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_34 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_28 {Type X LastRead -1 FirstWrite -1}
		sX_3 {Type IO LastRead -1 FirstWrite -1}
		sY_3 {Type IO LastRead -1 FirstWrite -1}
		pY_3 {Type IO LastRead -1 FirstWrite -1}
		pX_3 {Type IO LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_10_2_5_3_0_6u_config16_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_201 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_202 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_215 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_209 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_216 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_210 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_217 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_211 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_218 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_212 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_219 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_213 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_220 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_214 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_233 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_227 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_234 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_228 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_235 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_229 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_236 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_230 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_237 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_231 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_238 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_232 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_203 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_204 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_205 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_206 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_207 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_208 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_221 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_222 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_223 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_224 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_225 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_226 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_239 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_240 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_241 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_242 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_243 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_244 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_39 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_33 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_38 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_32 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_37 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_31 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_36 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_30 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_35 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_29 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_34 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet25conv_2d_buffer_latency_clINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL_28 {Type X LastRead -1 FirstWrite -1}}
	dense_latency_ap_fixed_10_2_5_3_0_ap_fixed_10_2_5_3_0_config16_mult_s {
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30 {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_201 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_202 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_203 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_204 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_205 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_206 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_207 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_208 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_209 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_210 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_211 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_212 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_213 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_214 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_215 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_216 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_217 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_218 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_219 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_220 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_221 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_222 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_223 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_224 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_225 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_226 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_227 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_228 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_229 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_230 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_231 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_232 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_233 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_234 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_235 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_236 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_237 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_238 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_239 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_240 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_241 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_242 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_243 {Type I LastRead 2 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi10ELi2EL9ap_q_mode5EL9_244 {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "33801", "Max" : "33801"}
	, {"Name" : "Interval", "Min" : "33800", "Max" : "33800"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	layer34_out { ap_fifo {  { layer34_out_dout fifo_data_out 0 60 }  { layer34_out_empty_n fifo_status_empty 0 1 }  { layer34_out_read fifo_data_in 1 1 }  { layer34_out_num_data_valid fifo_update 0 7 }  { layer34_out_fifo_cap fifo_data 0 7 } } }
	layer16_out { ap_fifo {  { layer16_out_din fifo_data_out 1 80 }  { layer16_out_full_n fifo_status_empty 0 1 }  { layer16_out_write fifo_data_in 1 1 }  { layer16_out_num_data_valid fifo_update 0 2 }  { layer16_out_fifo_cap fifo_data 0 2 } } }
}
