set moduleName sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config12_s
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
set C_modelName {sigmoid<array,array<ap_fixed<16,6,5,3,0>,1u>,sigmoid_config12>}
set C_modelType { void 0 }
set C_modelArgList {
	{ layer11_out int 41 regular {fifo 0 volatile }  }
	{ layer12_out int 16 regular {axi_s 1 volatile  { layer12_out Data } }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "layer11_out", "interface" : "fifo", "bitwidth" : 41, "direction" : "READONLY"} , 
 	{ "Name" : "layer12_out", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer11_out_dout sc_in sc_lv 41 signal 0 } 
	{ layer11_out_num_data_valid sc_in sc_lv 11 signal 0 } 
	{ layer11_out_fifo_cap sc_in sc_lv 11 signal 0 } 
	{ layer11_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer11_out_read sc_out sc_logic 1 signal 0 } 
	{ layer12_out_TREADY sc_in sc_logic 1 outacc 1 } 
	{ layer12_out_TDATA sc_out sc_lv 16 signal 1 } 
	{ layer12_out_TVALID sc_out sc_logic 1 outvld 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "layer11_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":41, "type": "signal", "bundle":{"name": "layer11_out", "role": "dout" }} , 
 	{ "name": "layer11_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "layer11_out", "role": "num_data_valid" }} , 
 	{ "name": "layer11_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "layer11_out", "role": "fifo_cap" }} , 
 	{ "name": "layer11_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer11_out", "role": "empty_n" }} , 
 	{ "name": "layer11_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer11_out", "role": "read" }} , 
 	{ "name": "layer12_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer12_out", "role": "TREADY" }} , 
 	{ "name": "layer12_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "layer12_out", "role": "TDATA" }} , 
 	{ "name": "layer12_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer12_out", "role": "TVALID" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config12_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1030", "EstimateLatencyMax" : "1030",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer11_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1024", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer11_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer12_out", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer12_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sigmoid_table", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "SigmoidActLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sigmoid_table_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_layer12_out_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config12_s {
		layer11_out {Type I LastRead 1 FirstWrite -1}
		layer12_out {Type O LastRead -1 FirstWrite 4}
		sigmoid_table {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1030", "Max" : "1030"}
	, {"Name" : "Interval", "Min" : "1030", "Max" : "1030"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	layer11_out { ap_fifo {  { layer11_out_dout fifo_data_in 0 41 }  { layer11_out_num_data_valid fifo_status_num_data_valid 0 11 }  { layer11_out_fifo_cap fifo_update 0 11 }  { layer11_out_empty_n fifo_status 0 1 }  { layer11_out_read fifo_port_we 1 1 } } }
	layer12_out { axis {  { layer12_out_TREADY out_acc 0 1 }  { layer12_out_TDATA out_data 1 16 }  { layer12_out_TVALID out_vld 1 1 } } }
}
