set moduleName normalize_array_ap_fixed_8u_array_ap_fixed_27_9_5_3_0_8u_config20_s
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
set C_modelName {normalize<array<ap_fixed,8u>,array<ap_fixed<27,9,5,3,0>,8u>,config20>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ layer19_out int 80 regular {fifo 0 volatile }  }
	{ layer20_out int 216 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "layer19_out", "interface" : "fifo", "bitwidth" : 80, "direction" : "READONLY"} , 
 	{ "Name" : "layer20_out", "interface" : "fifo", "bitwidth" : 216, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer20_out_din sc_out sc_lv 216 signal 1 } 
	{ layer20_out_full_n sc_in sc_logic 1 signal 1 } 
	{ layer20_out_write sc_out sc_logic 1 signal 1 } 
	{ layer20_out_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ layer20_out_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ layer19_out_dout sc_in sc_lv 80 signal 0 } 
	{ layer19_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer19_out_read sc_out sc_logic 1 signal 0 } 
	{ layer19_out_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ layer19_out_fifo_cap sc_in sc_lv 2 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "layer20_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":216, "type": "signal", "bundle":{"name": "layer20_out", "role": "din" }} , 
 	{ "name": "layer20_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer20_out", "role": "full_n" }} , 
 	{ "name": "layer20_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer20_out", "role": "write" }} , 
 	{ "name": "layer20_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer20_out", "role": "num_data_valid" }} , 
 	{ "name": "layer20_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer20_out", "role": "fifo_cap" }} , 
 	{ "name": "layer19_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":80, "type": "signal", "bundle":{"name": "layer19_out", "role": "dout" }} , 
 	{ "name": "layer19_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer19_out", "role": "empty_n" }} , 
 	{ "name": "layer19_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer19_out", "role": "read" }} , 
 	{ "name": "layer19_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer19_out", "role": "num_data_valid" }} , 
 	{ "name": "layer19_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer19_out", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	normalize_array_ap_fixed_8u_array_ap_fixed_27_9_5_3_0_8u_config20_s {
		layer19_out {Type I LastRead 0 FirstWrite -1}
		layer20_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3073", "Max" : "3073"}
	, {"Name" : "Interval", "Min" : "3072", "Max" : "3072"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	layer19_out { ap_fifo {  { layer19_out_dout fifo_data_out 0 80 }  { layer19_out_empty_n fifo_status_empty 0 1 }  { layer19_out_read fifo_data_in 1 1 }  { layer19_out_num_data_valid fifo_update 0 2 }  { layer19_out_fifo_cap fifo_data 0 2 } } }
	layer20_out { ap_fifo {  { layer20_out_din fifo_data_out 1 216 }  { layer20_out_full_n fifo_status_empty 0 1 }  { layer20_out_write fifo_data_in 1 1 }  { layer20_out_num_data_valid fifo_update 0 2 }  { layer20_out_fifo_cap fifo_data 0 2 } } }
}
