//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef FOLO_REFERENCE_MODEL_SV
`define FOLO_REFERENCE_MODEL_SV

class folo_reference_model extends uvm_component;
    event allsvr_input_done;
    event allsvr_output_done;
    int trans_num_total = 5;
    int trans_num_idx;
    int ap_done_cnt=1;
    event dut2tb_ap_ready;
    event dut2tb_ap_done;
    event ap_ready_for_nexttrans;
    event ap_done_for_nexttrans;
    event finish;
    folo_config folo_cfg;
    virtual interface misc_interface misc_if;

    int svr_input_2_delay;
    covergroup svr_input_2_cov;
        delay: coverpoint svr_input_2_delay
        {
            bins norm[257] = { [0 : 256] };
        }
    endgroup
    int svr_layer28_out_delay;
    covergroup svr_layer28_out_cov;
        delay: coverpoint svr_layer28_out_delay
        {
            bins norm[257] = { [0 : 256] };
        }
    endgroup
    
    `uvm_component_utils_begin(folo_reference_model)
        `uvm_field_int (trans_num_idx, UVM_DEFAULT)
    `uvm_component_utils_end

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if(!uvm_config_db#(virtual misc_interface)::get(this, "", "misc_if", misc_if))
            `uvm_fatal(this.get_full_name(), "No misc_if from high level")
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new (name, parent);
        svr_input_2_cov = new;
        svr_layer28_out_cov = new;
        trans_num_idx= 0;
    endfunction

    virtual task run_phase(uvm_phase phase);
        string fpath[$];
        fork
            forever begin
                //this is pipeline case
                forever begin
                    @(negedge misc_if.clock);
                    if(misc_if.dut2tb_ap_ready===1) break;
                end
                @(posedge misc_if.clock);
                fork
                    begin
                        @(negedge misc_if.clock);
                        -> misc_if.dut2tb_ap_ready_evt;
                    end
                join_none
                -> ap_ready_for_nexttrans;
                `uvm_info(this.get_full_name(), "trigger event ap_ready_for_nexttrans", UVM_LOW)
                fork
                    begin
                        misc_if.ap_ready_for_nexttrans = 1;
                        @(posedge misc_if.clock);
                        misc_if.ap_ready_for_nexttrans = 0;
                    end
                join_none
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if(misc_if.dut2tb_ap_done===1) break;
                end
                @(posedge misc_if.clock);
                fork
                    begin
                        @(negedge misc_if.clock);
                        -> misc_if.dut2tb_ap_done_evt;
                    end
                join_none
                -> ap_done_for_nexttrans;
                `uvm_info(this.get_full_name(), "trigger event ap_done_for_nexttrans", UVM_LOW)
                fork
                    begin
                        misc_if.ap_done_for_nexttrans = 1;
                        @(posedge misc_if.clock);
                        misc_if.ap_done_for_nexttrans = 0;
                    end
                join_none
            end

            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if (misc_if.dut2tb_ap_done===1)   break;
                end
                @(posedge misc_if.clock);
                -> dut2tb_ap_done;
                `uvm_info(this.get_full_name(), "trigger event DUT2TB_AP_DONE", UVM_LOW)
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if (misc_if.dut2tb_ap_ready === 1)   break;
                end
                @(posedge misc_if.clock);
                `uvm_info(this.get_full_name(), "trigger event DUT2TB_AP_READY", UVM_LOW)
                -> dut2tb_ap_ready;
            end
            forever begin
                forever begin
                    @(negedge misc_if.clock);
                    if (misc_if.dut2tb_ap_done_kernel === 1)   break;
                end
                @(posedge misc_if.clock);
                fork
                    begin
                        @(negedge misc_if.clock);
                        `uvm_info(this.get_full_name(), "trigger event dut2tb_ap_done_kernel_evt", UVM_LOW)
                        -> misc_if.dut2tb_ap_done_kernel_evt;
                    end
                join_none
            end
        join
    endtask

    virtual function void write_svr_master_input_2(svr_transfer#(16) tr);
    //  trans_size++;
        svr_input_2_delay = tr.delay;
        svr_input_2_cov.sample();
        `uvm_info(this.get_full_name(), "port a collected one pkt", UVM_DEBUG);
    endfunction

    virtual function void write_svr_slave_layer28_out(svr_transfer#(16) tr);
    //  trans_size++;
        svr_layer28_out_delay = tr.delay;
        svr_layer28_out_cov.sample();
        `uvm_info(this.get_full_name(), "port a collected one pkt", UVM_DEBUG);
    endfunction
endclass
`endif
