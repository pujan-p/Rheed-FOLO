set moduleName add_array_array_ap_fixed_4u_array_ap_fixed_28_10_5_3_0_4u_config7_s
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
set C_modelName {add<array,array<ap_fixed,4u>,array<ap_fixed<28,10,5,3,0>,4u>,config7>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ layer27_cpy2 int 64 regular {fifo 0 volatile }  }
	{ layer6_out int 108 regular {fifo 0 volatile }  }
	{ layer7_out int 112 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "layer27_cpy2", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "layer6_out", "interface" : "fifo", "bitwidth" : 108, "direction" : "READONLY"} , 
 	{ "Name" : "layer7_out", "interface" : "fifo", "bitwidth" : 112, "direction" : "WRITEONLY"} ]}
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
	{ layer27_cpy2_dout sc_in sc_lv 64 signal 0 } 
	{ layer27_cpy2_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer27_cpy2_read sc_out sc_logic 1 signal 0 } 
	{ layer27_cpy2_num_data_valid sc_in sc_lv 9 signal 0 } 
	{ layer27_cpy2_fifo_cap sc_in sc_lv 9 signal 0 } 
	{ layer6_out_dout sc_in sc_lv 108 signal 1 } 
	{ layer6_out_empty_n sc_in sc_logic 1 signal 1 } 
	{ layer6_out_read sc_out sc_logic 1 signal 1 } 
	{ layer6_out_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ layer6_out_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ layer7_out_din sc_out sc_lv 112 signal 2 } 
	{ layer7_out_full_n sc_in sc_logic 1 signal 2 } 
	{ layer7_out_write sc_out sc_logic 1 signal 2 } 
	{ layer7_out_num_data_valid sc_in sc_lv 32 signal 2 } 
	{ layer7_out_fifo_cap sc_in sc_lv 32 signal 2 } 
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
 	{ "name": "layer27_cpy2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer27_cpy2", "role": "dout" }} , 
 	{ "name": "layer27_cpy2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer27_cpy2", "role": "empty_n" }} , 
 	{ "name": "layer27_cpy2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer27_cpy2", "role": "read" }} , 
 	{ "name": "layer27_cpy2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "layer27_cpy2", "role": "num_data_valid" }} , 
 	{ "name": "layer27_cpy2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "layer27_cpy2", "role": "fifo_cap" }} , 
 	{ "name": "layer6_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":108, "type": "signal", "bundle":{"name": "layer6_out", "role": "dout" }} , 
 	{ "name": "layer6_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer6_out", "role": "empty_n" }} , 
 	{ "name": "layer6_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer6_out", "role": "read" }} , 
 	{ "name": "layer6_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer6_out", "role": "num_data_valid" }} , 
 	{ "name": "layer6_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer6_out", "role": "fifo_cap" }} , 
 	{ "name": "layer7_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":112, "type": "signal", "bundle":{"name": "layer7_out", "role": "din" }} , 
 	{ "name": "layer7_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer7_out", "role": "full_n" }} , 
 	{ "name": "layer7_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer7_out", "role": "write" }} , 
 	{ "name": "layer7_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer7_out", "role": "num_data_valid" }} , 
 	{ "name": "layer7_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer7_out", "role": "fifo_cap" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	add_array_array_ap_fixed_4u_array_ap_fixed_28_10_5_3_0_4u_config7_s {
		layer27_cpy2 {Type I LastRead 0 FirstWrite -1}
		layer6_out {Type I LastRead 0 FirstWrite -1}
		layer7_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16386", "Max" : "16386"}
	, {"Name" : "Interval", "Min" : "16384", "Max" : "16384"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	layer27_cpy2 { ap_fifo {  { layer27_cpy2_dout fifo_data_out 0 64 }  { layer27_cpy2_empty_n fifo_status_empty 0 1 }  { layer27_cpy2_read fifo_data_in 1 1 }  { layer27_cpy2_num_data_valid fifo_update 0 9 }  { layer27_cpy2_fifo_cap fifo_data 0 9 } } }
	layer6_out { ap_fifo {  { layer6_out_dout fifo_data_out 0 108 }  { layer6_out_empty_n fifo_status_empty 0 1 }  { layer6_out_read fifo_data_in 1 1 }  { layer6_out_num_data_valid fifo_update 0 2 }  { layer6_out_fifo_cap fifo_data 0 2 } } }
	layer7_out { ap_fifo {  { layer7_out_din fifo_data_out 1 112 }  { layer7_out_full_n fifo_status_empty 0 1 }  { layer7_out_write fifo_data_in 1 1 }  { layer7_out_num_data_valid fifo_update 0 32 }  { layer7_out_fifo_cap fifo_data 0 32 } } }
}
