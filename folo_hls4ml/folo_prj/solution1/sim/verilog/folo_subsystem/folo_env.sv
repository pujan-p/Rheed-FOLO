//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef FOLO_ENV__SV                                                                                   
    `define FOLO_ENV__SV                                                                               
                                                                                                                    
                                                                                                                    
    class folo_env extends uvm_env;                                                                          
                                                                                                                    
        folo_virtual_sequencer folo_virtual_sqr;                                                      
        folo_config folo_cfg;                                                                         
                                                                                                                    
        svr_pkg::svr_env#(16) env_master_svr_input_2;
        svr_pkg::svr_env#(16) env_slave_svr_layer28_out;
                                                                                                                    
        folo_reference_model   refm;                                                                         
                                                                                                                    
        folo_subsystem_monitor subsys_mon;                                                                   
                                                                                                                    
        `uvm_component_utils_begin(folo_env)                                                                 
        `uvm_field_object (env_master_svr_input_2,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (env_slave_svr_layer28_out,  UVM_DEFAULT | UVM_REFERENCE)
        `uvm_field_object (refm, UVM_DEFAULT | UVM_REFERENCE)                                                       
        `uvm_field_object (folo_virtual_sqr, UVM_DEFAULT | UVM_REFERENCE)                                    
        `uvm_field_object (folo_cfg        , UVM_DEFAULT)                                                    
        `uvm_component_utils_end                                                                                    
                                                                                                                    
        function new (string name = "folo_env", uvm_component parent = null);                              
            super.new(name, parent);                                                                                
        endfunction                                                                                                 
                                                                                                                    
        extern virtual function void build_phase(uvm_phase phase);                                                  
        extern virtual function void connect_phase(uvm_phase phase);                                                
        extern virtual task          run_phase(uvm_phase phase);                                                    
                                                                                                                    
    endclass                                                                                                        
                                                                                                                    
    function void folo_env::build_phase(uvm_phase phase);                                                    
        super.build_phase(phase);                                                                                   
        folo_cfg = folo_config::type_id::create("folo_cfg", this);                           
                                                                                                                    
        folo_cfg.port_input_2_cfg.svr_type = svr_pkg::SVR_MASTER ;
        env_master_svr_input_2  = svr_env#(16)::type_id::create("env_master_svr_input_2", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_master_svr_input_2*", "cfg", folo_cfg.port_input_2_cfg);
        folo_cfg.port_input_2_cfg.prt_type = svr_pkg::AXIS;
        folo_cfg.port_input_2_cfg.is_active = svr_pkg::SVR_ACTIVE;
        folo_cfg.port_input_2_cfg.spec_cfg = svr_pkg::NORMAL;
        folo_cfg.port_input_2_cfg.reset_level = svr_pkg::RESET_LEVEL_LOW;
 
        folo_cfg.port_layer28_out_cfg.svr_type = svr_pkg::SVR_SLAVE ;
        env_slave_svr_layer28_out  = svr_env#(16)::type_id::create("env_slave_svr_layer28_out", this);
        uvm_config_db#(svr_pkg::svr_config)::set(this, "env_slave_svr_layer28_out*", "cfg", folo_cfg.port_layer28_out_cfg);
        folo_cfg.port_layer28_out_cfg.prt_type = svr_pkg::AXIS;
        folo_cfg.port_layer28_out_cfg.is_active = svr_pkg::SVR_ACTIVE;
        folo_cfg.port_layer28_out_cfg.spec_cfg = svr_pkg::NORMAL;
        folo_cfg.port_layer28_out_cfg.reset_level = svr_pkg::RESET_LEVEL_LOW;
 



        refm = folo_reference_model::type_id::create("refm", this);


        uvm_config_db#(folo_reference_model)::set(this, "*", "refm", refm);


        `uvm_info(this.get_full_name(), "set reference model by uvm_config_db", UVM_LOW)


        subsys_mon = folo_subsystem_monitor::type_id::create("subsys_mon", this);


        folo_virtual_sqr = folo_virtual_sequencer::type_id::create("folo_virtual_sqr", this);
        `uvm_info(this.get_full_name(), "build_phase done", UVM_LOW)
    endfunction


    function void folo_env::connect_phase(uvm_phase phase);
        super.connect_phase(phase);


        folo_virtual_sqr.svr_port_input_2_sqr = env_master_svr_input_2.m_agt.sqr;
        env_master_svr_input_2.m_agt.mon.item_collect_port.connect(subsys_mon.svr_master_input_2_imp);
 
        folo_virtual_sqr.svr_port_layer28_out_sqr = env_slave_svr_layer28_out.s_agt.sqr;
        env_slave_svr_layer28_out.s_agt.mon.item_collect_port.connect(subsys_mon.svr_slave_layer28_out_imp);
 
        refm.folo_cfg = folo_cfg;
        `uvm_info(this.get_full_name(), "connect phase done", UVM_LOW)
    endfunction


    task folo_env::run_phase(uvm_phase phase);
        `uvm_info(this.get_full_name(), "folo_env is running", UVM_LOW)
    endtask


`endif
