//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef SV_MODULE_TOP_SV
`define SV_MODULE_TOP_SV


`timescale 1ns/1ps


`include "uvm_macros.svh"
import uvm_pkg::*;
import file_agent_pkg::*;
import svr_pkg::*;
import folo_subsystem_pkg::*;
`include "folo_subsys_test_sequence_lib.sv"
`include "folo_test_lib.sv"


module sv_module_top;


    misc_interface              misc_if ( .clock(apatb_folo_top.AESL_clock), .reset(apatb_folo_top.AESL_reset) );
    assign apatb_folo_top.ap_start = misc_if.tb2dut_ap_start;
    assign misc_if.dut2tb_ap_done = apatb_folo_top.ap_done;
    assign misc_if.dut2tb_ap_ready = apatb_folo_top.ap_ready;
    initial begin
        uvm_config_db #(virtual misc_interface)::set(null, "uvm_test_top.top_env.*", "misc_if", misc_if);
    end


    svr_if #(16)  svr_input_2_if    (.clk  (apatb_folo_top.AESL_clock), .rst(apatb_folo_top.AESL_reset));
    assign svr_input_2_if.ready = apatb_folo_top.input_2_TREADY;
    assign apatb_folo_top.input_2_TVALID = svr_input_2_if.valid;
    assign apatb_folo_top.input_2_TDATA = svr_input_2_if.data[15:0];
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_master_svr_input_2.*", "vif", svr_input_2_if);
    end


    svr_if #(16)  svr_layer28_out_if    (.clk  (apatb_folo_top.AESL_clock), .rst(apatb_folo_top.AESL_reset));
    assign apatb_folo_top.layer28_out_TREADY = svr_layer28_out_if.ready;
    assign svr_layer28_out_if.valid = apatb_folo_top.layer28_out_TVALID;
    assign svr_layer28_out_if.data[15:0] = apatb_folo_top.layer28_out_TDATA;
    initial begin
        uvm_config_db #( virtual svr_if#(16) )::set(null, "uvm_test_top.top_env.env_slave_svr_layer28_out.*", "vif", svr_layer28_out_if);
    end


    initial begin
        run_test();
    end
endmodule
`endif
