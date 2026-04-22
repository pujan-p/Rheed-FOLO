set SynModuleInfo {
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,1u>,config30>_Pipeline_PadMain_CopyMain MODELNAME zeropad2d_cl_array_array_ap_fixed_1u_config30_Pipeline_PadMain_CopyMain RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_1u_config30_Pipeline_PadMain_CopyMain
    SUBMODULES {
      {MODELNAME folo_flow_control_loop_pipe_sequential_init RTLNAME folo_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME folo_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,1u>,config30>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_1u_config30_Pipeline_PadBottomWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_1u_config30_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array<ap_fixed,1u>,array<ap_fixed<12,6,5,3,0>,1u>,config30> MODELNAME zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_12_6_5_3_0_1u_config30_s RTLNAME folo_zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_12_6_5_3_0_1u_config30_s
    SUBMODULES {
      {MODELNAME folo_regslice_both RTLNAME folo_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME folo_regslice_both_U}
    }
  }
  {SRCNAME {shift_line_buffer<array<ap_fixed<12, 6, 5, 3, 0>, 1u>, config2>} MODELNAME shift_line_buffer_array_ap_fixed_12_6_5_3_0_1u_config2_s RTLNAME folo_shift_line_buffer_array_ap_fixed_12_6_5_3_0_1u_config2_s
    SUBMODULES {
      {MODELNAME folo_shift_line_buffer_array_ap_fixed_12_6_5_3_0_1u_config2_s_void_conv_2d_buffer_bkb RTLNAME folo_shift_line_buffer_array_ap_fixed_12_6_5_3_0_1u_config2_s_void_conv_2d_buffer_bkb BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_resource_rf_gt_nin_rem0<ap_fixed,ap_fixed<12,6,5,3,0>,config2_mult> MODELNAME dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_12_6_5_3_0_config2_mult_s RTLNAME folo_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_12_6_5_3_0_config2_mult_s
    SUBMODULES {
      {MODELNAME folo_sparsemux_19_4_12_1_1 RTLNAME folo_sparsemux_19_4_12_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME folo_mul_12s_12s_18_1_1 RTLNAME folo_mul_12s_12s_18_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_12s_5s_17_1_1 RTLNAME folo_mul_12s_5s_17_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_12_6_5_3_0_config2_mult_s_outdEe RTLNAME folo_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_12_6_5_3_0_config2_mult_s_outdEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME folo_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_12_6_5_3_0_config2_mult_s_w2_eOg RTLNAME folo_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_12_6_5_3_0_config2_mult_s_w2_eOg BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME folo_flow_control_loop_pipe_no_ap_cont RTLNAME folo_flow_control_loop_pipe_no_ap_cont BINDTYPE interface TYPE internal_upc_flow_control INSTNAME folo_flow_control_loop_pipe_no_ap_cont_U}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<12,6,5,3,0>,4u>,config2> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_4u_config2_s RTLNAME folo_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_4u_config2_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,1u>,array<ap_fixed<12,6,5,3,0>,4u>,config2> MODELNAME conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_12_6_5_3_0_4u_config2_s RTLNAME folo_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_12_6_5_3_0_4u_config2_s}
  {SRCNAME normalize<array<ap_fixed,4u>,array<ap_fixed<12,6,5,3,0>,4u>,config3> MODELNAME normalize_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config3_s RTLNAME folo_normalize_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config3_s
    SUBMODULES {
      {MODELNAME folo_mul_12s_11ns_18_1_1 RTLNAME folo_mul_12s_11ns_18_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_12s_12ns_18_1_1 RTLNAME folo_mul_12s_12ns_18_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_flow_control_loop_pipe RTLNAME folo_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME folo_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME thresholded_relu<array,ap_fixed,array<ap_fixed,4u>,thresholdedrelu_config4> MODELNAME thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_config4_s RTLNAME folo_thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_config4_s}
  {SRCNAME clone_stream<array<ap_fixed,4u>,array<ap_fixed<12,6,5,3,0>,4u>,65536> MODELNAME clone_stream_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_65536_s RTLNAME folo_clone_stream_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_65536_s}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<12,6,5,3,0>,4u>,config31>_Pipeline_PadTopWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_12_6_5_3_0_4u_config31_Pipeline_PadTopWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_12_6_5_3_0_4u_config31_Pipeline_PadTopWidth}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,4u>,config31>_Pipeline_PadMain_CopyMain MODELNAME zeropad2d_cl_array_array_ap_fixed_4u_config31_Pipeline_PadMain_CopyMain RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_4u_config31_Pipeline_PadMain_CopyMain}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,4u>,config31>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_4u_config31_Pipeline_PadBottomWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_4u_config31_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array<ap_fixed,4u>,array<ap_fixed<12,6,5,3,0>,4u>,config31> MODELNAME zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config31_s RTLNAME folo_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config31_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<12, 6, 5, 3, 0>, 4u>, config5>} MODELNAME shift_line_buffer_array_ap_fixed_12_6_5_3_0_4u_config5_s RTLNAME folo_shift_line_buffer_array_ap_fixed_12_6_5_3_0_4u_config5_s
    SUBMODULES {
      {MODELNAME folo_shift_line_buffer_array_ap_fixed_12_6_5_3_0_4u_config5_s_p_ZZN4nnet26conv_2d_fYi RTLNAME folo_shift_line_buffer_array_ap_fixed_12_6_5_3_0_4u_config5_s_p_ZZN4nnet26conv_2d_fYi BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_resource_rf_leq_nin<ap_fixed,ap_fixed<12,6,5,3,0>,config5_mult> MODELNAME dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config5_mult_s RTLNAME folo_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config5_mult_s
    SUBMODULES {
      {MODELNAME folo_sparsemux_37_5_12_1_1 RTLNAME folo_sparsemux_37_5_12_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME folo_mul_12s_6s_18_1_1 RTLNAME folo_mul_12s_6s_18_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config5_mult_s_w5_ROM_ncg RTLNAME folo_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config5_mult_s_w5_ROM_ncg BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<12,6,5,3,0>,4u>,config5> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_4u_config5_s RTLNAME folo_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_4u_config5_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,4u>,array<ap_fixed<12,6,5,3,0>,4u>,config5> MODELNAME conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config5_s RTLNAME folo_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config5_s}
  {SRCNAME normalize<array<ap_fixed,4u>,array<ap_fixed<12,6,5,3,0>,4u>,config6> MODELNAME normalize_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config6_s RTLNAME folo_normalize_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config6_s}
  {SRCNAME add<array,array<ap_fixed,4u>,array<ap_fixed<12,6,5,3,0>,4u>,config7> MODELNAME add_array_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config7_s RTLNAME folo_add_array_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config7_s}
  {SRCNAME thresholded_relu<array,ap_fixed,array<ap_fixed,4u>,thresholdedrelu_config8> MODELNAME thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_config8_s RTLNAME folo_thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_config8_s}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,4u>,config32>_Pipeline_PadMain_CopyMain MODELNAME zeropad2d_cl_array_array_ap_fixed_4u_config32_Pipeline_PadMain_CopyMain RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_4u_config32_Pipeline_PadMain_CopyMain}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,4u>,config32>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_4u_config32_Pipeline_PadBottomWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_4u_config32_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array<ap_fixed,4u>,array<ap_fixed<12,6,5,3,0>,4u>,config32> MODELNAME zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config32_s RTLNAME folo_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config32_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<12, 6, 5, 3, 0>, 4u>, config9>} MODELNAME shift_line_buffer_array_ap_fixed_12_6_5_3_0_4u_config9_s RTLNAME folo_shift_line_buffer_array_ap_fixed_12_6_5_3_0_4u_config9_s
    SUBMODULES {
      {MODELNAME folo_shift_line_buffer_array_ap_fixed_12_6_5_3_0_4u_config9_s_p_ZZN4nnet26conv_2d_ocq RTLNAME folo_shift_line_buffer_array_ap_fixed_12_6_5_3_0_4u_config9_s_p_ZZN4nnet26conv_2d_ocq BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_resource_rf_leq_nin<ap_fixed,ap_fixed<12,6,5,3,0>,config9_mult> MODELNAME dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config9_mult_s RTLNAME folo_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config9_mult_s
    SUBMODULES {
      {MODELNAME folo_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config9_mult_s_w9_ROM_wdI RTLNAME folo_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config9_mult_s_w9_ROM_wdI BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<12,6,5,3,0>,6u>,config9> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_6u_config9_s RTLNAME folo_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_6u_config9_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,4u>,array<ap_fixed<12,6,5,3,0>,6u>,config9> MODELNAME conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_6u_config9_s RTLNAME folo_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_6u_config9_s}
  {SRCNAME normalize<array<ap_fixed,6u>,array<ap_fixed<12,6,5,3,0>,6u>,config10> MODELNAME normalize_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config10_s RTLNAME folo_normalize_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config10_s
    SUBMODULES {
      {MODELNAME folo_mul_12s_7ns_18_1_1 RTLNAME folo_mul_12s_7ns_18_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_12s_8ns_18_1_1 RTLNAME folo_mul_12s_8ns_18_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME thresholded_relu<array,ap_fixed,array<ap_fixed,6u>,thresholdedrelu_config11> MODELNAME thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_config11_s RTLNAME folo_thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_config11_s}
  {SRCNAME clone_stream<array<ap_fixed,6u>,array<ap_fixed<12,6,5,3,0>,6u>,24576> MODELNAME clone_stream_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_24576_s RTLNAME folo_clone_stream_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_24576_s}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<12,6,5,3,0>,6u>,config33>_Pipeline_PadTopWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_12_6_5_3_0_6u_config33_Pipeline_PadTopWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_12_6_5_3_0_6u_config33_Pipeline_PadTopWidth}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<12,6,5,3,0>,6u>,config33>_Pipeline_PadMain MODELNAME zeropad2d_cl_array_array_ap_fixed_12_6_5_3_0_6u_config33_Pipeline_PadMain RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_12_6_5_3_0_6u_config33_Pipeline_PadMain}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,6u>,config33>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_6u_config33_Pipeline_PadBottomWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_6u_config33_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array<ap_fixed,6u>,array<ap_fixed<12,6,5,3,0>,6u>,config33> MODELNAME zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config33_s RTLNAME folo_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config33_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<12, 6, 5, 3, 0>, 6u>, config12>} MODELNAME shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config12_s RTLNAME folo_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config12_s
    SUBMODULES {
      {MODELNAME folo_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config12_s_p_ZZN4nnet26conv_2dxdS RTLNAME folo_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config12_s_p_ZZN4nnet26conv_2dxdS BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_resource_rf_leq_nin<ap_fixed,ap_fixed<12,6,5,3,0>,config12_mult> MODELNAME dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config12_mult_s RTLNAME folo_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config12_mult_s
    SUBMODULES {
      {MODELNAME folo_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config12_mult_s_w12_ROJfO RTLNAME folo_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config12_mult_s_w12_ROJfO BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<12,6,5,3,0>,6u>,config12> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_6u_config12_s RTLNAME folo_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_6u_config12_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,6u>,array<ap_fixed<12,6,5,3,0>,6u>,config12> MODELNAME conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config12_s RTLNAME folo_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config12_s}
  {SRCNAME normalize<array<ap_fixed,6u>,array<ap_fixed<12,6,5,3,0>,6u>,config13> MODELNAME normalize_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config13_s RTLNAME folo_normalize_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config13_s}
  {SRCNAME add<array,array<ap_fixed,6u>,array<ap_fixed<12,6,5,3,0>,6u>,config14> MODELNAME add_array_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config14_s RTLNAME folo_add_array_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config14_s}
  {SRCNAME thresholded_relu<array,ap_fixed,array<ap_fixed,6u>,thresholdedrelu_config15> MODELNAME thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_config15_s RTLNAME folo_thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_config15_s}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<12,6,5,3,0>,6u>,config34>_Pipeline_PadMain MODELNAME zeropad2d_cl_array_array_ap_fixed_12_6_5_3_0_6u_config34_Pipeline_PadMain RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_12_6_5_3_0_6u_config34_Pipeline_PadMain}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,6u>,config34>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_6u_config34_Pipeline_PadBottomWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_6u_config34_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array<ap_fixed,6u>,array<ap_fixed<12,6,5,3,0>,6u>,config34> MODELNAME zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config34_s RTLNAME folo_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config34_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<12, 6, 5, 3, 0>, 6u>, config16>} MODELNAME shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s RTLNAME folo_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s
    SUBMODULES {
      {MODELNAME folo_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_p_ZZN4nnet26conv_2dKfY RTLNAME folo_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_p_ZZN4nnet26conv_2dKfY BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_resource_rf_leq_nin<ap_fixed,ap_fixed<12,6,5,3,0>,config16_mult> MODELNAME dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s RTLNAME folo_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s
    SUBMODULES {
      {MODELNAME folo_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_w16_ROWhU RTLNAME folo_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_w16_ROWhU BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<12,6,5,3,0>,8u>,config16> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s RTLNAME folo_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,6u>,array<ap_fixed<12,6,5,3,0>,8u>,config16> MODELNAME conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_8u_config16_s RTLNAME folo_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_8u_config16_s}
  {SRCNAME normalize<array<ap_fixed,8u>,array<ap_fixed<12,6,5,3,0>,8u>,config17> MODELNAME normalize_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config17_s RTLNAME folo_normalize_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config17_s
    SUBMODULES {
      {MODELNAME folo_mul_12s_6ns_17_1_1 RTLNAME folo_mul_12s_6ns_17_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME thresholded_relu<array,ap_fixed,array<ap_fixed,8u>,thresholdedrelu_config18> MODELNAME thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_config18_s RTLNAME folo_thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_config18_s}
  {SRCNAME clone_stream<array<ap_fixed,8u>,array<ap_fixed<12,6,5,3,0>,8u>,8192> MODELNAME clone_stream_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_8192_s RTLNAME folo_clone_stream_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_8192_s}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<12,6,5,3,0>,8u>,config35>_Pipeline_PadTopWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_12_6_5_3_0_8u_config35_Pipeline_PadTopWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_12_6_5_3_0_8u_config35_Pipeline_PadTopWidth}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<12,6,5,3,0>,8u>,config35>_Pipeline_PadMain MODELNAME zeropad2d_cl_array_array_ap_fixed_12_6_5_3_0_8u_config35_Pipeline_PadMain RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_12_6_5_3_0_8u_config35_Pipeline_PadMain}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,8u>,config35>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_8u_config35_Pipeline_PadBottomWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_8u_config35_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array<ap_fixed,8u>,array<ap_fixed<12,6,5,3,0>,8u>,config35> MODELNAME zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config35_s RTLNAME folo_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config35_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<12, 6, 5, 3, 0>, 8u>, config19>} MODELNAME shift_line_buffer_array_ap_fixed_12_6_5_3_0_8u_config19_s RTLNAME folo_shift_line_buffer_array_ap_fixed_12_6_5_3_0_8u_config19_s
    SUBMODULES {
      {MODELNAME folo_shift_line_buffer_array_ap_fixed_12_6_5_3_0_8u_config19_s_p_ZZN4nnet26conv_2dXh4 RTLNAME folo_shift_line_buffer_array_ap_fixed_12_6_5_3_0_8u_config19_s_p_ZZN4nnet26conv_2dXh4 BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_resource_rf_leq_nin<ap_fixed,ap_fixed<12,6,5,3,0>,config19_mult> MODELNAME dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config19_mult_s RTLNAME folo_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config19_mult_s
    SUBMODULES {
      {MODELNAME folo_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config19_mult_s_w19_RObdk RTLNAME folo_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config19_mult_s_w19_RObdk BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<12,6,5,3,0>,8u>,config19> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config19_s RTLNAME folo_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config19_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,8u>,array<ap_fixed<12,6,5,3,0>,8u>,config19> MODELNAME conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config19_s RTLNAME folo_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config19_s}
  {SRCNAME normalize<array<ap_fixed,8u>,array<ap_fixed<12,6,5,3,0>,8u>,config20> MODELNAME normalize_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config20_s RTLNAME folo_normalize_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config20_s}
  {SRCNAME add<array,array<ap_fixed,8u>,array<ap_fixed<12,6,5,3,0>,8u>,config21> MODELNAME add_array_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config21_s RTLNAME folo_add_array_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config21_s}
  {SRCNAME thresholded_relu<array,ap_fixed,array<ap_fixed,8u>,thresholdedrelu_config22> MODELNAME thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_config22_s RTLNAME folo_thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_config22_s}
  {SRCNAME dense_resource_rf_gt_nin_rem0<ap_fixed,ap_fixed<12,6,5,3,0>,config36_mult> MODELNAME dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_12_6_5_3_0_config36_mult_s RTLNAME folo_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_12_6_5_3_0_config36_mult_s
    SUBMODULES {
      {MODELNAME folo_sparsemux_17_3_12_1_1 RTLNAME folo_sparsemux_17_3_12_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME folo_sparsemux_33_4_7_1_1 RTLNAME folo_sparsemux_33_4_7_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME folo_mul_12s_7s_18_1_1 RTLNAME folo_mul_12s_7s_18_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_12_6_5_3_0_config36_mult_s_oubek RTLNAME folo_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_12_6_5_3_0_config36_mult_s_oubek BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pointwise_conv_2d_cl<array,array<ap_fixed<12,6,5,3,0>,8u>,config36> MODELNAME pointwise_conv_2d_cl_array_array_ap_fixed_12_6_5_3_0_8u_config36_s RTLNAME folo_pointwise_conv_2d_cl_array_array_ap_fixed_12_6_5_3_0_8u_config36_s}
  {SRCNAME relu<array<ap_fixed,8u>,array<ap_fixed<12,6,5,3,0>,8u>,relu_config24> MODELNAME relu_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_relu_config24_s RTLNAME folo_relu_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_relu_config24_s}
  {SRCNAME dense_resource_rf_leq_nin<ap_fixed,ap_fixed<12,6,5,3,0>,config37_mult> MODELNAME dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config37_mult_s RTLNAME folo_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config37_mult_s
    SUBMODULES {
      {MODELNAME folo_sparsemux_17_3_8_1_1 RTLNAME folo_sparsemux_17_3_8_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME folo_mul_12s_8s_18_1_1 RTLNAME folo_mul_12s_8s_18_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pointwise_conv_2d_cl<array,array<ap_fixed<12,6,5,3,0>,1u>,config37> MODELNAME pointwise_conv_2d_cl_array_array_ap_fixed_12_6_5_3_0_1u_config37_s RTLNAME folo_pointwise_conv_2d_cl_array_array_ap_fixed_12_6_5_3_0_1u_config37_s}
  {SRCNAME sigmoid<array,array<ap_fixed<12,6,5,3,0>,1u>,sigmoid_config26> MODELNAME sigmoid_array_array_ap_fixed_12_6_5_3_0_1u_sigmoid_config26_s RTLNAME folo_sigmoid_array_array_ap_fixed_12_6_5_3_0_1u_sigmoid_config26_s
    SUBMODULES {
      {MODELNAME folo_sigmoid_array_array_ap_fixed_12_6_5_3_0_1u_sigmoid_config26_s_sigmoid_table_Rbfk RTLNAME folo_sigmoid_array_array_ap_fixed_12_6_5_3_0_1u_sigmoid_config26_s_sigmoid_table_Rbfk BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME folo MODELNAME folo RTLNAME folo IS_TOP 1
    SUBMODULES {
      {MODELNAME folo_fifo_w12_d66049_A RTLNAME folo_fifo_w12_d66049_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer30_out_U}
      {MODELNAME folo_fifo_w48_d16384_A RTLNAME folo_fifo_w48_d16384_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer2_out_U}
      {MODELNAME folo_fifo_w48_d16384_A RTLNAME folo_fifo_w48_d16384_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer3_out_U}
      {MODELNAME folo_fifo_w48_d16384_A RTLNAME folo_fifo_w48_d16384_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer4_out_U}
      {MODELNAME folo_fifo_w48_d16384_A RTLNAME folo_fifo_w48_d16384_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer27_cpy1_U}
      {MODELNAME folo_fifo_w48_d16384_A RTLNAME folo_fifo_w48_d16384_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer27_cpy2_U}
      {MODELNAME folo_fifo_w48_d16900_A RTLNAME folo_fifo_w48_d16900_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer31_out_U}
      {MODELNAME folo_fifo_w48_d16384_A RTLNAME folo_fifo_w48_d16384_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer5_out_U}
      {MODELNAME folo_fifo_w48_d16384_A RTLNAME folo_fifo_w48_d16384_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer6_out_U}
      {MODELNAME folo_fifo_w48_d16384_A RTLNAME folo_fifo_w48_d16384_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer7_out_U}
      {MODELNAME folo_fifo_w48_d16384_A RTLNAME folo_fifo_w48_d16384_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer8_out_U}
      {MODELNAME folo_fifo_w48_d16641_A RTLNAME folo_fifo_w48_d16641_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer32_out_U}
      {MODELNAME folo_fifo_w72_d4096_A RTLNAME folo_fifo_w72_d4096_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer9_out_U}
      {MODELNAME folo_fifo_w72_d4096_A RTLNAME folo_fifo_w72_d4096_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer10_out_U}
      {MODELNAME folo_fifo_w72_d4096_A RTLNAME folo_fifo_w72_d4096_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer11_out_U}
      {MODELNAME folo_fifo_w72_d4096_A RTLNAME folo_fifo_w72_d4096_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer28_cpy1_U}
      {MODELNAME folo_fifo_w72_d4096_A RTLNAME folo_fifo_w72_d4096_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer28_cpy2_U}
      {MODELNAME folo_fifo_w72_d4356_A RTLNAME folo_fifo_w72_d4356_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer33_out_U}
      {MODELNAME folo_fifo_w72_d4096_A RTLNAME folo_fifo_w72_d4096_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer12_out_U}
      {MODELNAME folo_fifo_w72_d4096_A RTLNAME folo_fifo_w72_d4096_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer13_out_U}
      {MODELNAME folo_fifo_w72_d4096_A RTLNAME folo_fifo_w72_d4096_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer14_out_U}
      {MODELNAME folo_fifo_w72_d4096_A RTLNAME folo_fifo_w72_d4096_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer15_out_U}
      {MODELNAME folo_fifo_w72_d4225_A RTLNAME folo_fifo_w72_d4225_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer34_out_U}
      {MODELNAME folo_fifo_w96_d1024_A RTLNAME folo_fifo_w96_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer16_out_U}
      {MODELNAME folo_fifo_w96_d1024_A RTLNAME folo_fifo_w96_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer17_out_U}
      {MODELNAME folo_fifo_w96_d1024_A RTLNAME folo_fifo_w96_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer18_out_U}
      {MODELNAME folo_fifo_w96_d1024_A RTLNAME folo_fifo_w96_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer29_cpy1_U}
      {MODELNAME folo_fifo_w96_d1024_A RTLNAME folo_fifo_w96_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer29_cpy2_U}
      {MODELNAME folo_fifo_w96_d1156_A RTLNAME folo_fifo_w96_d1156_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer35_out_U}
      {MODELNAME folo_fifo_w96_d1024_A RTLNAME folo_fifo_w96_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer19_out_U}
      {MODELNAME folo_fifo_w96_d1024_A RTLNAME folo_fifo_w96_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer20_out_U}
      {MODELNAME folo_fifo_w96_d1024_A RTLNAME folo_fifo_w96_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer21_out_U}
      {MODELNAME folo_fifo_w96_d1024_A RTLNAME folo_fifo_w96_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer22_out_U}
      {MODELNAME folo_fifo_w96_d1024_A RTLNAME folo_fifo_w96_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer23_out_U}
      {MODELNAME folo_fifo_w96_d1024_A RTLNAME folo_fifo_w96_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer24_out_U}
      {MODELNAME folo_fifo_w12_d1024_A RTLNAME folo_fifo_w12_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer25_out_U}
      {MODELNAME folo_start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_12_6_5_3_0_4u_config2_U0 RTLNAME folo_start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_12_6_5_3_0_4u_config2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_12_6_5_3_0_4u_config2_U0_U}
      {MODELNAME folo_start_for_normalize_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config3_U0 RTLNAME folo_start_for_normalize_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config3_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config3_U0_U}
      {MODELNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_cbgk RTLNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_cbgk BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_cbgk_U}
      {MODELNAME folo_start_for_clone_stream_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_65536_U0 RTLNAME folo_start_for_clone_stream_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_65536_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_clone_stream_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_65536_U0_U}
      {MODELNAME folo_start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config3bhl RTLNAME folo_start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config3bhl BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config3bhl_U}
      {MODELNAME folo_start_for_add_array_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config7_U0 RTLNAME folo_start_for_add_array_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config7_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_add_array_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config7_U0_U}
      {MODELNAME folo_start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config5_U0 RTLNAME folo_start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config5_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config5_U0_U}
      {MODELNAME folo_start_for_normalize_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config6_U0 RTLNAME folo_start_for_normalize_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config6_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config6_U0_U}
      {MODELNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_cbil RTLNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_cbil BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_cbil_U}
      {MODELNAME folo_start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config3bjl RTLNAME folo_start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config3bjl BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config3bjl_U}
      {MODELNAME folo_start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_6u_config9_U0 RTLNAME folo_start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_6u_config9_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_6u_config9_U0_U}
      {MODELNAME folo_start_for_normalize_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config10_U0 RTLNAME folo_start_for_normalize_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config10_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config10_U0_U}
      {MODELNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_cbkl RTLNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_cbkl BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_cbkl_U}
      {MODELNAME folo_start_for_clone_stream_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_24576_U0 RTLNAME folo_start_for_clone_stream_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_24576_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_clone_stream_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_24576_U0_U}
      {MODELNAME folo_start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config3bll RTLNAME folo_start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config3bll BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config3bll_U}
      {MODELNAME folo_start_for_add_array_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config14_U0 RTLNAME folo_start_for_add_array_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config14_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_add_array_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config14_U0_U}
      {MODELNAME folo_start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config12_U0 RTLNAME folo_start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config12_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config12_U0_U}
      {MODELNAME folo_start_for_normalize_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config13_U0 RTLNAME folo_start_for_normalize_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config13_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config13_U0_U}
      {MODELNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_cbml RTLNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_cbml BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_cbml_U}
      {MODELNAME folo_start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config3bnm RTLNAME folo_start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config3bnm BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config3bnm_U}
      {MODELNAME folo_start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_8u_config16_U0 RTLNAME folo_start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_8u_config16_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_8u_config16_U0_U}
      {MODELNAME folo_start_for_normalize_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config17_U0 RTLNAME folo_start_for_normalize_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config17_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config17_U0_U}
      {MODELNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_cbom RTLNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_cbom BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_cbom_U}
      {MODELNAME folo_start_for_clone_stream_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_8192_U0 RTLNAME folo_start_for_clone_stream_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_8192_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_clone_stream_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_8192_U0_U}
      {MODELNAME folo_start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config3bpm RTLNAME folo_start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config3bpm BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config3bpm_U}
      {MODELNAME folo_start_for_add_array_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config21_U0 RTLNAME folo_start_for_add_array_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config21_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_add_array_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config21_U0_U}
      {MODELNAME folo_start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config19_U0 RTLNAME folo_start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config19_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config19_U0_U}
      {MODELNAME folo_start_for_normalize_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config20_U0 RTLNAME folo_start_for_normalize_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config20_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config20_U0_U}
      {MODELNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_cbqm RTLNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_cbqm BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_cbqm_U}
      {MODELNAME folo_start_for_pointwise_conv_2d_cl_array_array_ap_fixed_12_6_5_3_0_8u_config36_U0 RTLNAME folo_start_for_pointwise_conv_2d_cl_array_array_ap_fixed_12_6_5_3_0_8u_config36_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pointwise_conv_2d_cl_array_array_ap_fixed_12_6_5_3_0_8u_config36_U0_U}
      {MODELNAME folo_start_for_relu_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_relu_config24_U0 RTLNAME folo_start_for_relu_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_relu_config24_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_relu_config24_U0_U}
      {MODELNAME folo_start_for_pointwise_conv_2d_cl_array_array_ap_fixed_12_6_5_3_0_1u_config37_U0 RTLNAME folo_start_for_pointwise_conv_2d_cl_array_array_ap_fixed_12_6_5_3_0_1u_config37_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pointwise_conv_2d_cl_array_array_ap_fixed_12_6_5_3_0_1u_config37_U0_U}
      {MODELNAME folo_start_for_sigmoid_array_array_ap_fixed_12_6_5_3_0_1u_sigmoid_config26_U0 RTLNAME folo_start_for_sigmoid_array_array_ap_fixed_12_6_5_3_0_1u_sigmoid_config26_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_sigmoid_array_array_ap_fixed_12_6_5_3_0_1u_sigmoid_config26_U0_U}
    }
  }
}
