//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`ifndef FOLO_VIRTUAL_SEQUENCER__SV                        
    `define FOLO_VIRTUAL_SEQUENCER__SV                    
                                                                       
    class folo_virtual_sequencer extends uvm_sequencer;         
        svr_master_sequencer#(16) svr_port_input_2_sqr;
        svr_slave_sequencer#(16) svr_port_layer28_out_sqr;
 
        function new (string name, uvm_component parent);              
            super.new(name, parent);                                   
            //`uvm_info(this.get_full_name(), "new is called", UVM_LOW)
        endfunction                                                    
                                                                       
        `uvm_component_utils_begin(folo_virtual_sequencer)      
        `uvm_component_utils_end                                       
                                                                       
    endclass

`endif
