//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================
`timescale 1ns/1ps 

`ifndef FOLO_SUBSYSTEM_PKG__SV          
    `define FOLO_SUBSYSTEM_PKG__SV      
                                                     
    package folo_subsystem_pkg;               
                                                     
        import uvm_pkg::*;                           
        import file_agent_pkg::*;                    
        import svr_pkg::*;
                                                     
        `include "uvm_macros.svh"                  
                                                     
        `include "folo_config.sv"           
        `include "folo_reference_model.sv"  
        `include "folo_scoreboard.sv"       
        `include "folo_subsystem_monitor.sv"
        `include "folo_virtual_sequencer.sv"
        `include "folo_pkg_sequence_lib.sv" 
        `include "folo_env.sv"              
                                                     
    endpackage                                       
                                                     
`endif                                               
