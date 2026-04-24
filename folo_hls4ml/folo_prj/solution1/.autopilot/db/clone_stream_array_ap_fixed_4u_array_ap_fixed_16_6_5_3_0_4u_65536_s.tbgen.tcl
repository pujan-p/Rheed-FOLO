set moduleName clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_s
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
set C_modelName {clone_stream<array<ap_fixed,4u>,array<ap_fixed<16,6,5,3,0>,4u>,65536>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ layer4_out int 64 regular {fifo 0 volatile }  }
	{ layer27_cpy1 int 64 regular {fifo 1 volatile }  }
	{ layer27_cpy2 int 64 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "layer4_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "layer27_cpy1", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer27_cpy2", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
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
	{ layer4_out_dout sc_in sc_lv 64 signal 0 } 
	{ layer4_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer4_out_read sc_out sc_logic 1 signal 0 } 
	{ layer4_out_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ layer4_out_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ layer27_cpy1_din sc_out sc_lv 64 signal 1 } 
	{ layer27_cpy1_full_n sc_in sc_logic 1 signal 1 } 
	{ layer27_cpy1_write sc_out sc_logic 1 signal 1 } 
	{ layer27_cpy1_num_data_valid sc_in sc_lv 5 signal 1 } 
	{ layer27_cpy1_fifo_cap sc_in sc_lv 5 signal 1 } 
	{ layer27_cpy2_din sc_out sc_lv 64 signal 2 } 
	{ layer27_cpy2_full_n sc_in sc_logic 1 signal 2 } 
	{ layer27_cpy2_write sc_out sc_logic 1 signal 2 } 
	{ layer27_cpy2_num_data_valid sc_in sc_lv 9 signal 2 } 
	{ layer27_cpy2_fifo_cap sc_in sc_lv 9 signal 2 } 
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
 	{ "name": "layer4_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer4_out", "role": "dout" }} , 
 	{ "name": "layer4_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer4_out", "role": "empty_n" }} , 
 	{ "name": "layer4_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer4_out", "role": "read" }} , 
 	{ "name": "layer4_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer4_out", "role": "num_data_valid" }} , 
 	{ "name": "layer4_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer4_out", "role": "fifo_cap" }} , 
 	{ "name": "layer27_cpy1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer27_cpy1", "role": "din" }} , 
 	{ "name": "layer27_cpy1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer27_cpy1", "role": "full_n" }} , 
 	{ "name": "layer27_cpy1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer27_cpy1", "role": "write" }} , 
 	{ "name": "layer27_cpy1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "layer27_cpy1", "role": "num_data_valid" }} , 
 	{ "name": "layer27_cpy1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "layer27_cpy1", "role": "fifo_cap" }} , 
 	{ "name": "layer27_cpy2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer27_cpy2", "role": "din" }} , 
 	{ "name": "layer27_cpy2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer27_cpy2", "role": "full_n" }} , 
 	{ "name": "layer27_cpy2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer27_cpy2", "role": "write" }} , 
 	{ "name": "layer27_cpy2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "layer27_cpy2", "role": "num_data_valid" }} , 
 	{ "name": "layer27_cpy2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "layer27_cpy2", "role": "fifo_cap" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_s {
		layer4_out {Type I LastRead 0 FirstWrite -1}
		layer27_cpy1 {Type O LastRead -1 FirstWrite 0}
		layer27_cpy2 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16385", "Max" : "16385"}
	, {"Name" : "Interval", "Min" : "16384", "Max" : "16384"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	layer4_out { ap_fifo {  { layer4_out_dout fifo_data_out 0 64 }  { layer4_out_empty_n fifo_status_empty 0 1 }  { layer4_out_read fifo_data_in 1 1 }  { layer4_out_num_data_valid fifo_update 0 3 }  { layer4_out_fifo_cap fifo_data 0 3 } } }
	layer27_cpy1 { ap_fifo {  { layer27_cpy1_din fifo_data_out 1 64 }  { layer27_cpy1_full_n fifo_status_empty 0 1 }  { layer27_cpy1_write fifo_data_in 1 1 }  { layer27_cpy1_num_data_valid fifo_update 0 5 }  { layer27_cpy1_fifo_cap fifo_data 0 5 } } }
	layer27_cpy2 { ap_fifo {  { layer27_cpy2_din fifo_data_out 1 64 }  { layer27_cpy2_full_n fifo_status_empty 0 1 }  { layer27_cpy2_write fifo_data_in 1 1 }  { layer27_cpy2_num_data_valid fifo_update 0 9 }  { layer27_cpy2_fifo_cap fifo_data 0 9 } } }
}
