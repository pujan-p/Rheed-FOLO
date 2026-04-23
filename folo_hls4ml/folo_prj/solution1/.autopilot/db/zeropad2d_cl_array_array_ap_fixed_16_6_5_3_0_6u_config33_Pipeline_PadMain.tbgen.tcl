set moduleName zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config33_Pipeline_PadMain
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
set cdfgNum 70
set C_modelName {zeropad2d_cl<array,array<ap_fixed<16,6,5,3,0>,6u>,config33>_Pipeline_PadMain}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ layer33_out int 96 regular {fifo 1 volatile }  }
	{ layer28_cpy1 int 96 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "layer33_out", "interface" : "fifo", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer28_cpy1", "interface" : "fifo", "bitwidth" : 96, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer33_out_din sc_out sc_lv 96 signal 0 } 
	{ layer33_out_full_n sc_in sc_logic 1 signal 0 } 
	{ layer33_out_write sc_out sc_logic 1 signal 0 } 
	{ layer33_out_num_data_valid sc_in sc_lv 32 signal 0 } 
	{ layer33_out_fifo_cap sc_in sc_lv 32 signal 0 } 
	{ layer28_cpy1_dout sc_in sc_lv 96 signal 1 } 
	{ layer28_cpy1_empty_n sc_in sc_logic 1 signal 1 } 
	{ layer28_cpy1_read sc_out sc_logic 1 signal 1 } 
	{ layer28_cpy1_num_data_valid sc_in sc_lv 4 signal 1 } 
	{ layer28_cpy1_fifo_cap sc_in sc_lv 4 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "layer33_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "layer33_out", "role": "din" }} , 
 	{ "name": "layer33_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer33_out", "role": "full_n" }} , 
 	{ "name": "layer33_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer33_out", "role": "write" }} , 
 	{ "name": "layer33_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer33_out", "role": "num_data_valid" }} , 
 	{ "name": "layer33_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer33_out", "role": "fifo_cap" }} , 
 	{ "name": "layer28_cpy1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "layer28_cpy1", "role": "dout" }} , 
 	{ "name": "layer28_cpy1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer28_cpy1", "role": "empty_n" }} , 
 	{ "name": "layer28_cpy1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer28_cpy1", "role": "read" }} , 
 	{ "name": "layer28_cpy1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "layer28_cpy1", "role": "num_data_valid" }} , 
 	{ "name": "layer28_cpy1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "layer28_cpy1", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config33_Pipeline_PadMain {
		layer33_out {Type O LastRead -1 FirstWrite 1}
		layer28_cpy1 {Type I LastRead 64 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4226", "Max" : "4226"}
	, {"Name" : "Interval", "Min" : "4225", "Max" : "4225"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	layer33_out { ap_fifo {  { layer33_out_din fifo_data_out 1 96 }  { layer33_out_full_n fifo_status_empty 0 1 }  { layer33_out_write fifo_data_in 1 1 }  { layer33_out_num_data_valid fifo_update 0 32 }  { layer33_out_fifo_cap fifo_data 0 32 } } }
	layer28_cpy1 { ap_fifo {  { layer28_cpy1_dout fifo_data_out 0 96 }  { layer28_cpy1_empty_n fifo_status_empty 0 1 }  { layer28_cpy1_read fifo_data_in 1 1 }  { layer28_cpy1_num_data_valid fifo_update 0 4 }  { layer28_cpy1_fifo_cap fifo_data 0 4 } } }
}
