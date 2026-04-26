
 
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(axis) -into $coutputgroup]
add_wave /apatb_folo_top/AESL_inst_folo/layer28_out_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_folo_top/AESL_inst_folo/layer28_out_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_folo_top/AESL_inst_folo/layer28_out_TDATA -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(axis) -into $cinputgroup]
add_wave /apatb_folo_top/AESL_inst_folo/input_2_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_folo_top/AESL_inst_folo/input_2_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_folo_top/AESL_inst_folo/input_2_TDATA -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_folo_top/AESL_inst_folo/ap_start -into $blocksiggroup
add_wave /apatb_folo_top/AESL_inst_folo/ap_done -into $blocksiggroup
add_wave /apatb_folo_top/AESL_inst_folo/ap_ready -into $blocksiggroup
add_wave /apatb_folo_top/AESL_inst_folo/ap_idle -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_folo_top/AESL_inst_folo/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_folo_top/AESL_inst_folo/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_folo_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_folo_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_folo_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_folo_top/LENGTH_input_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_folo_top/LENGTH_layer28_out -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(axis) -into $tbcoutputgroup]
add_wave /apatb_folo_top/layer28_out_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_folo_top/layer28_out_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_folo_top/layer28_out_TDATA -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(axis) -into $tbcinputgroup]
add_wave /apatb_folo_top/input_2_TREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_folo_top/input_2_TVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_folo_top/input_2_TDATA -into $tb_return_group -radix hex
save_wave_config folo.wcfg
run all
quit

