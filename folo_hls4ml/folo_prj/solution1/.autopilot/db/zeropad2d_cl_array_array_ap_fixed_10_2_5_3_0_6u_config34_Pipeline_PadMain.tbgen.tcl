set moduleName zeropad2d_cl_array_array_ap_fixed_10_2_5_3_0_6u_config34_Pipeline_PadMain
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
set C_modelName {zeropad2d_cl<array,array<ap_fixed<10,2,5,3,0>,6u>,config34>_Pipeline_PadMain}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ layer15_out int 60 regular {fifo 0 volatile }  }
	{ layer34_out int 60 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "layer15_out", "interface" : "fifo", "bitwidth" : 60, "direction" : "READONLY"} , 
 	{ "Name" : "layer34_out", "interface" : "fifo", "bitwidth" : 60, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer34_out_din sc_out sc_lv 60 signal 1 } 
	{ layer34_out_full_n sc_in sc_logic 1 signal 1 } 
	{ layer34_out_write sc_out sc_logic 1 signal 1 } 
	{ layer34_out_num_data_valid sc_in sc_lv 32 signal 1 } 
	{ layer34_out_fifo_cap sc_in sc_lv 32 signal 1 } 
	{ layer15_out_dout sc_in sc_lv 60 signal 0 } 
	{ layer15_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer15_out_read sc_out sc_logic 1 signal 0 } 
	{ layer15_out_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ layer15_out_fifo_cap sc_in sc_lv 3 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "layer34_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":60, "type": "signal", "bundle":{"name": "layer34_out", "role": "din" }} , 
 	{ "name": "layer34_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer34_out", "role": "full_n" }} , 
 	{ "name": "layer34_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer34_out", "role": "write" }} , 
 	{ "name": "layer34_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer34_out", "role": "num_data_valid" }} , 
 	{ "name": "layer34_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer34_out", "role": "fifo_cap" }} , 
 	{ "name": "layer15_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":60, "type": "signal", "bundle":{"name": "layer15_out", "role": "dout" }} , 
 	{ "name": "layer15_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer15_out", "role": "empty_n" }} , 
 	{ "name": "layer15_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer15_out", "role": "read" }} , 
 	{ "name": "layer15_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer15_out", "role": "num_data_valid" }} , 
 	{ "name": "layer15_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer15_out", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	zeropad2d_cl_array_array_ap_fixed_10_2_5_3_0_6u_config34_Pipeline_PadMain {
		layer15_out {Type I LastRead 64 FirstWrite -1}
		layer34_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4162", "Max" : "4162"}
	, {"Name" : "Interval", "Min" : "4161", "Max" : "4161"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	layer15_out { ap_fifo {  { layer15_out_dout fifo_data_out 0 60 }  { layer15_out_empty_n fifo_status_empty 0 1 }  { layer15_out_read fifo_data_in 1 1 }  { layer15_out_num_data_valid fifo_update 0 3 }  { layer15_out_fifo_cap fifo_data 0 3 } } }
	layer34_out { ap_fifo {  { layer34_out_din fifo_data_out 1 60 }  { layer34_out_full_n fifo_status_empty 0 1 }  { layer34_out_write fifo_data_in 1 1 }  { layer34_out_num_data_valid fifo_update 0 32 }  { layer34_out_fifo_cap fifo_data 0 32 } } }
}
