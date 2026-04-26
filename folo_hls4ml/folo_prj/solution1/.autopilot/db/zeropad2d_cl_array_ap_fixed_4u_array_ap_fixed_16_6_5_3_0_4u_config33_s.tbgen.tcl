set moduleName zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
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
set C_modelName {zeropad2d_cl<array<ap_fixed,4u>,array<ap_fixed<16,6,5,3,0>,4u>,config33>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ layer29_cpy1 int 64 regular {fifo 0 volatile }  }
	{ layer33_out int 64 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "layer29_cpy1", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "layer33_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
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
	{ layer29_cpy1_dout sc_in sc_lv 64 signal 0 } 
	{ layer29_cpy1_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer29_cpy1_read sc_out sc_logic 1 signal 0 } 
	{ layer29_cpy1_num_data_valid sc_in sc_lv 18 signal 0 } 
	{ layer29_cpy1_fifo_cap sc_in sc_lv 18 signal 0 } 
	{ layer33_out_din sc_out sc_lv 64 signal 1 } 
	{ layer33_out_full_n sc_in sc_logic 1 signal 1 } 
	{ layer33_out_write sc_out sc_logic 1 signal 1 } 
	{ layer33_out_num_data_valid sc_in sc_lv 32 signal 1 } 
	{ layer33_out_fifo_cap sc_in sc_lv 32 signal 1 } 
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
 	{ "name": "layer29_cpy1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer29_cpy1", "role": "dout" }} , 
 	{ "name": "layer29_cpy1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer29_cpy1", "role": "empty_n" }} , 
 	{ "name": "layer29_cpy1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer29_cpy1", "role": "read" }} , 
 	{ "name": "layer29_cpy1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "layer29_cpy1", "role": "num_data_valid" }} , 
 	{ "name": "layer29_cpy1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "layer29_cpy1", "role": "fifo_cap" }} , 
 	{ "name": "layer33_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer33_out", "role": "din" }} , 
 	{ "name": "layer33_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer33_out", "role": "full_n" }} , 
 	{ "name": "layer33_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer33_out", "role": "write" }} , 
 	{ "name": "layer33_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer33_out", "role": "num_data_valid" }} , 
 	{ "name": "layer33_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer33_out", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_s {
		layer29_cpy1 {Type I LastRead 1 FirstWrite -1}
		layer33_out {Type O LastRead -1 FirstWrite 1}}
	zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config33_Pipeline_PadTopWidth {
		layer33_out {Type O LastRead -1 FirstWrite 1}}
	zeropad2d_cl_array_array_ap_fixed_4u_config33_Pipeline_PadBottomWidth {
		layer33_out {Type O LastRead -1 FirstWrite 1}}
	zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config33_Pipeline_CopyMain {
		layer29_cpy1 {Type I LastRead 1 FirstWrite -1}
		layer33_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17420", "Max" : "17420"}
	, {"Name" : "Interval", "Min" : "17420", "Max" : "17420"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	layer29_cpy1 { ap_fifo {  { layer29_cpy1_dout fifo_data_out 0 64 }  { layer29_cpy1_empty_n fifo_status_empty 0 1 }  { layer29_cpy1_read fifo_data_in 1 1 }  { layer29_cpy1_num_data_valid fifo_update 0 18 }  { layer29_cpy1_fifo_cap fifo_data 0 18 } } }
	layer33_out { ap_fifo {  { layer33_out_din fifo_data_out 1 64 }  { layer33_out_full_n fifo_status_empty 0 1 }  { layer33_out_write fifo_data_in 1 1 }  { layer33_out_num_data_valid fifo_update 0 32 }  { layer33_out_fifo_cap fifo_data 0 32 } } }
}
