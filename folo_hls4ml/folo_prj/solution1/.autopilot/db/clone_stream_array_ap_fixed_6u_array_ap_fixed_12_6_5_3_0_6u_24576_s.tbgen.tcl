set moduleName clone_stream_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_24576_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {clone_stream<array<ap_fixed,6u>,array<ap_fixed<12,6,5,3,0>,6u>,24576>}
set C_modelType { void 0 }
set C_modelArgList {
	{ layer11_out int 72 regular {fifo 0 volatile }  }
	{ layer28_cpy1 int 72 regular {fifo 1 volatile }  }
	{ layer28_cpy2 int 72 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "layer11_out", "interface" : "fifo", "bitwidth" : 72, "direction" : "READONLY"} , 
 	{ "Name" : "layer28_cpy1", "interface" : "fifo", "bitwidth" : 72, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer28_cpy2", "interface" : "fifo", "bitwidth" : 72, "direction" : "WRITEONLY"} ]}
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
	{ layer11_out_dout sc_in sc_lv 72 signal 0 } 
	{ layer11_out_num_data_valid sc_in sc_lv 13 signal 0 } 
	{ layer11_out_fifo_cap sc_in sc_lv 13 signal 0 } 
	{ layer11_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer11_out_read sc_out sc_logic 1 signal 0 } 
	{ layer28_cpy1_din sc_out sc_lv 72 signal 1 } 
	{ layer28_cpy1_num_data_valid sc_in sc_lv 13 signal 1 } 
	{ layer28_cpy1_fifo_cap sc_in sc_lv 13 signal 1 } 
	{ layer28_cpy1_full_n sc_in sc_logic 1 signal 1 } 
	{ layer28_cpy1_write sc_out sc_logic 1 signal 1 } 
	{ layer28_cpy2_din sc_out sc_lv 72 signal 2 } 
	{ layer28_cpy2_num_data_valid sc_in sc_lv 13 signal 2 } 
	{ layer28_cpy2_fifo_cap sc_in sc_lv 13 signal 2 } 
	{ layer28_cpy2_full_n sc_in sc_logic 1 signal 2 } 
	{ layer28_cpy2_write sc_out sc_logic 1 signal 2 } 
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
 	{ "name": "layer11_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "layer11_out", "role": "dout" }} , 
 	{ "name": "layer11_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "layer11_out", "role": "num_data_valid" }} , 
 	{ "name": "layer11_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "layer11_out", "role": "fifo_cap" }} , 
 	{ "name": "layer11_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer11_out", "role": "empty_n" }} , 
 	{ "name": "layer11_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer11_out", "role": "read" }} , 
 	{ "name": "layer28_cpy1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "layer28_cpy1", "role": "din" }} , 
 	{ "name": "layer28_cpy1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "layer28_cpy1", "role": "num_data_valid" }} , 
 	{ "name": "layer28_cpy1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "layer28_cpy1", "role": "fifo_cap" }} , 
 	{ "name": "layer28_cpy1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer28_cpy1", "role": "full_n" }} , 
 	{ "name": "layer28_cpy1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer28_cpy1", "role": "write" }} , 
 	{ "name": "layer28_cpy2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":72, "type": "signal", "bundle":{"name": "layer28_cpy2", "role": "din" }} , 
 	{ "name": "layer28_cpy2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "layer28_cpy2", "role": "num_data_valid" }} , 
 	{ "name": "layer28_cpy2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "layer28_cpy2", "role": "fifo_cap" }} , 
 	{ "name": "layer28_cpy2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer28_cpy2", "role": "full_n" }} , 
 	{ "name": "layer28_cpy2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer28_cpy2", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "clone_stream_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_24576_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer11_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4096", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer11_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer28_cpy1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4096", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer28_cpy1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer28_cpy2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4096", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer28_cpy2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "CloneLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	clone_stream_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_24576_s {
		layer11_out {Type I LastRead 1 FirstWrite -1}
		layer28_cpy1 {Type O LastRead -1 FirstWrite 1}
		layer28_cpy2 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4098", "Max" : "4098"}
	, {"Name" : "Interval", "Min" : "4098", "Max" : "4098"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	layer11_out { ap_fifo {  { layer11_out_dout fifo_data_in 0 72 }  { layer11_out_num_data_valid fifo_status_num_data_valid 0 13 }  { layer11_out_fifo_cap fifo_update 0 13 }  { layer11_out_empty_n fifo_status 0 1 }  { layer11_out_read fifo_port_we 1 1 } } }
	layer28_cpy1 { ap_fifo {  { layer28_cpy1_din fifo_data_in 1 72 }  { layer28_cpy1_num_data_valid fifo_status_num_data_valid 0 13 }  { layer28_cpy1_fifo_cap fifo_update 0 13 }  { layer28_cpy1_full_n fifo_status 0 1 }  { layer28_cpy1_write fifo_port_we 1 1 } } }
	layer28_cpy2 { ap_fifo {  { layer28_cpy2_din fifo_data_in 1 72 }  { layer28_cpy2_num_data_valid fifo_status_num_data_valid 0 13 }  { layer28_cpy2_fifo_cap fifo_update 0 13 }  { layer28_cpy2_full_n fifo_status 0 1 }  { layer28_cpy2_write fifo_port_we 1 1 } } }
}
