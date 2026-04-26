set moduleName add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_s
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
set cdfgNum 64
set C_modelName {add<array,array<ap_fixed,8u>,array<ap_fixed<16,6,5,3,0>,8u>,config21>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ layer31_cpy2 int 128 regular {fifo 0 volatile }  }
	{ layer19_out int 128 regular {fifo 0 volatile }  }
	{ layer21_out int 128 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "layer31_cpy2", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "layer19_out", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "layer21_out", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer31_cpy2_dout sc_in sc_lv 128 signal 0 } 
	{ layer31_cpy2_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer31_cpy2_read sc_out sc_logic 1 signal 0 } 
	{ layer31_cpy2_num_data_valid sc_in sc_lv 18 signal 0 } 
	{ layer31_cpy2_fifo_cap sc_in sc_lv 18 signal 0 } 
	{ layer19_out_dout sc_in sc_lv 128 signal 1 } 
	{ layer19_out_empty_n sc_in sc_logic 1 signal 1 } 
	{ layer19_out_read sc_out sc_logic 1 signal 1 } 
	{ layer19_out_num_data_valid sc_in sc_lv 18 signal 1 } 
	{ layer19_out_fifo_cap sc_in sc_lv 18 signal 1 } 
	{ layer21_out_din sc_out sc_lv 128 signal 2 } 
	{ layer21_out_full_n sc_in sc_logic 1 signal 2 } 
	{ layer21_out_write sc_out sc_logic 1 signal 2 } 
	{ layer21_out_num_data_valid sc_in sc_lv 32 signal 2 } 
	{ layer21_out_fifo_cap sc_in sc_lv 32 signal 2 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "layer31_cpy2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "layer31_cpy2", "role": "dout" }} , 
 	{ "name": "layer31_cpy2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer31_cpy2", "role": "empty_n" }} , 
 	{ "name": "layer31_cpy2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer31_cpy2", "role": "read" }} , 
 	{ "name": "layer31_cpy2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "layer31_cpy2", "role": "num_data_valid" }} , 
 	{ "name": "layer31_cpy2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "layer31_cpy2", "role": "fifo_cap" }} , 
 	{ "name": "layer19_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "layer19_out", "role": "dout" }} , 
 	{ "name": "layer19_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer19_out", "role": "empty_n" }} , 
 	{ "name": "layer19_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer19_out", "role": "read" }} , 
 	{ "name": "layer19_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "layer19_out", "role": "num_data_valid" }} , 
 	{ "name": "layer19_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "layer19_out", "role": "fifo_cap" }} , 
 	{ "name": "layer21_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "layer21_out", "role": "din" }} , 
 	{ "name": "layer21_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer21_out", "role": "full_n" }} , 
 	{ "name": "layer21_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer21_out", "role": "write" }} , 
 	{ "name": "layer21_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer21_out", "role": "num_data_valid" }} , 
 	{ "name": "layer21_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer21_out", "role": "fifo_cap" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_s {
		layer31_cpy2 {Type I LastRead 0 FirstWrite -1}
		layer19_out {Type I LastRead 0 FirstWrite -1}
		layer21_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1026", "Max" : "1026"}
	, {"Name" : "Interval", "Min" : "1024", "Max" : "1024"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	layer31_cpy2 { ap_fifo {  { layer31_cpy2_dout fifo_data_out 0 128 }  { layer31_cpy2_empty_n fifo_status_empty 0 1 }  { layer31_cpy2_read fifo_data_in 1 1 }  { layer31_cpy2_num_data_valid fifo_update 0 18 }  { layer31_cpy2_fifo_cap fifo_data 0 18 } } }
	layer19_out { ap_fifo {  { layer19_out_dout fifo_data_out 0 128 }  { layer19_out_empty_n fifo_status_empty 0 1 }  { layer19_out_read fifo_data_in 1 1 }  { layer19_out_num_data_valid fifo_update 0 18 }  { layer19_out_fifo_cap fifo_data 0 18 } } }
	layer21_out { ap_fifo {  { layer21_out_din fifo_data_out 1 128 }  { layer21_out_full_n fifo_status_empty 0 1 }  { layer21_out_write fifo_data_in 1 1 }  { layer21_out_num_data_valid fifo_update 0 32 }  { layer21_out_fifo_cap fifo_data 0 32 } } }
}
