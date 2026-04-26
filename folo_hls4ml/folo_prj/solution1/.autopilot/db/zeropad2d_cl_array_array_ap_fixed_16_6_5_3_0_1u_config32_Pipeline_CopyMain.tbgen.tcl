set moduleName zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config32_Pipeline_CopyMain
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
set C_modelName {zeropad2d_cl<array,array<ap_fixed<16,6,5,3,0>,1u>,config32>_Pipeline_CopyMain}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ input_2 int 16 regular {axi_s 0 volatile  { input_2 Data } }  }
	{ layer32_out int 16 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "input_2", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "layer32_out", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_2_TVALID sc_in sc_logic 1 invld 0 } 
	{ layer32_out_din sc_out sc_lv 16 signal 1 } 
	{ layer32_out_full_n sc_in sc_logic 1 signal 1 } 
	{ layer32_out_write sc_out sc_logic 1 signal 1 } 
	{ layer32_out_num_data_valid sc_in sc_lv 18 signal 1 } 
	{ layer32_out_fifo_cap sc_in sc_lv 18 signal 1 } 
	{ input_2_TDATA sc_in sc_lv 16 signal 0 } 
	{ input_2_TREADY sc_out sc_logic 1 inacc 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_2_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_2", "role": "TVALID" }} , 
 	{ "name": "layer32_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer32_out", "role": "din" }} , 
 	{ "name": "layer32_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer32_out", "role": "full_n" }} , 
 	{ "name": "layer32_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer32_out", "role": "write" }} , 
 	{ "name": "layer32_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "layer32_out", "role": "num_data_valid" }} , 
 	{ "name": "layer32_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "layer32_out", "role": "fifo_cap" }} , 
 	{ "name": "input_2_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_2", "role": "TDATA" }} , 
 	{ "name": "input_2_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_2", "role": "TREADY" }}  ]}

set ArgLastReadFirstWriteLatency {
	zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config32_Pipeline_CopyMain {
		input_2 {Type I LastRead 1 FirstWrite -1}
		layer32_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "258", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "257", "Max" : "257"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_2 { axis {  { input_2_TVALID in_vld 0 1 }  { input_2_TDATA in_data 0 16 }  { input_2_TREADY in_acc 1 1 } } }
	layer32_out { ap_fifo {  { layer32_out_din fifo_data_out 1 16 }  { layer32_out_full_n fifo_status_empty 0 1 }  { layer32_out_write fifo_data_in 1 1 }  { layer32_out_num_data_valid fifo_update 0 18 }  { layer32_out_fifo_cap fifo_data 0 18 } } }
}
