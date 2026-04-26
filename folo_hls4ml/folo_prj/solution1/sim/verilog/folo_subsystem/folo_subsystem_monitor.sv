//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef FOLO_SUBSYSTEM_MONITOR_SV
`define FOLO_SUBSYSTEM_MONITOR_SV

`uvm_analysis_imp_decl(_svr_master_input_2)
`uvm_analysis_imp_decl(_svr_slave_layer28_out)

class folo_subsystem_monitor extends uvm_component;

    folo_reference_model refm;
    folo_scoreboard scbd;

    `uvm_component_utils_begin(folo_subsystem_monitor)
    `uvm_component_utils_end

    uvm_analysis_imp_svr_master_input_2#(svr_pkg::svr_transfer#(16), folo_subsystem_monitor) svr_master_input_2_imp;
    uvm_analysis_imp_svr_slave_layer28_out#(svr_pkg::svr_transfer#(16), folo_subsystem_monitor) svr_slave_layer28_out_imp;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db#(folo_reference_model)::get(this, "", "refm", refm))
            `uvm_fatal(this.get_full_name(), "No refm from high level")
        `uvm_info(this.get_full_name(), "get reference model by uvm_config_db", UVM_MEDIUM)
        scbd = folo_scoreboard::type_id::create("scbd", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
    endfunction

    function new (string name = "", uvm_component parent = null);
        super.new(name, parent);
        svr_master_input_2_imp = new("svr_master_input_2_imp", this);
        svr_slave_layer28_out_imp = new("svr_slave_layer28_out_imp", this);
    endfunction

    virtual function void write_svr_master_input_2(svr_transfer#(16) tr);
        refm.write_svr_master_input_2(tr);
        scbd.write_svr_master_input_2(tr);
    endfunction

    virtual function void write_svr_slave_layer28_out(svr_transfer#(16) tr);
        refm.write_svr_slave_layer28_out(tr);
        scbd.write_svr_slave_layer28_out(tr);
    endfunction
endclass
`endif
