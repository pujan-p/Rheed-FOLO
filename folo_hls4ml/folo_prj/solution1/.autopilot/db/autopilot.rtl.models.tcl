set SynModuleInfo {
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<16,6,5,3,0>,1u>,config30>_Pipeline_CopyMain MODELNAME zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config30_Pipeline_CopyMain RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config30_Pipeline_CopyMain
    SUBMODULES {
      {MODELNAME folo_flow_control_loop_pipe_sequential_init RTLNAME folo_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME folo_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,1u>,config30>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_1u_config30_Pipeline_PadBottomWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_1u_config30_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array<ap_fixed,1u>,array<ap_fixed<16,6,5,3,0>,1u>,config30> MODELNAME zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config30_s RTLNAME folo_zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config30_s
    SUBMODULES {
      {MODELNAME folo_regslice_both RTLNAME folo_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 6, 5, 3, 0>, 1u>, config2>} MODELNAME shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s
    SUBMODULES {
      {MODELNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_void_conv_2d_buffer_bkb RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_void_conv_2d_buffer_bkb BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {dense_latency<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<16, 6, 5, 3, 0>, config2_mult>} MODELNAME dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s RTLNAME folo_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s
    SUBMODULES {
      {MODELNAME folo_mul_16s_7s_23_1_1 RTLNAME folo_mul_16s_7s_23_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_8ns_24_1_1 RTLNAME folo_mul_16s_8ns_24_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_9ns_25_1_1 RTLNAME folo_mul_16s_9ns_25_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_10s_26_1_1 RTLNAME folo_mul_16s_10s_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_10ns_26_1_1 RTLNAME folo_mul_16s_10ns_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_9s_25_1_1 RTLNAME folo_mul_16s_9s_25_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_8s_24_1_1 RTLNAME folo_mul_16s_8s_24_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<16,6,5,3,0>,4u>,config2> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s RTLNAME folo_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,1u>,array<ap_fixed<16,6,5,3,0>,4u>,config2> MODELNAME conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_s RTLNAME folo_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_s
    SUBMODULES {
      {MODELNAME folo_flow_control_loop_pipe RTLNAME folo_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME folo_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME normalize<array<ap_fixed,4u>,array<ap_fixed<16,6,5,3,0>,4u>,config3> MODELNAME normalize_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config3_s RTLNAME folo_normalize_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config3_s
    SUBMODULES {
      {MODELNAME folo_mul_16s_14ns_26_1_1 RTLNAME folo_mul_16s_14ns_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_13ns_26_1_1 RTLNAME folo_mul_16s_13ns_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME thresholded_relu<array,ap_fixed,array<ap_fixed,4u>,thresholdedrelu_config4> MODELNAME thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_config4_s RTLNAME folo_thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_config4_s}
  {SRCNAME clone_stream<array<ap_fixed,4u>,array<ap_fixed<16,6,5,3,0>,4u>,65536> MODELNAME clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_s RTLNAME folo_clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_s}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<16,6,5,3,0>,4u>,config31>_Pipeline_PadTopWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config31_Pipeline_PadTopWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config31_Pipeline_PadTopWidth}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<16,6,5,3,0>,4u>,config31>_Pipeline_CopyMain MODELNAME zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config31_Pipeline_CopyMain RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config31_Pipeline_CopyMain}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,4u>,config31>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_4u_config31_Pipeline_PadBottomWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_4u_config31_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array<ap_fixed,4u>,array<ap_fixed<16,6,5,3,0>,4u>,config31> MODELNAME zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config31_s RTLNAME folo_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config31_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 6, 5, 3, 0>, 4u>, config5>} MODELNAME shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config5_s RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config5_s
    SUBMODULES {
      {MODELNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config5_s_p_ZZN4nnet25conv_2d_dEe RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config5_s_p_ZZN4nnet25conv_2d_dEe BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {dense_latency<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<16, 6, 5, 3, 0>, config5_mult>} MODELNAME dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config5_mult_s RTLNAME folo_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config5_mult_s
    SUBMODULES {
      {MODELNAME folo_mul_16s_6ns_22_1_0 RTLNAME folo_mul_16s_6ns_22_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_5ns_21_1_0 RTLNAME folo_mul_16s_5ns_21_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_6s_22_1_0 RTLNAME folo_mul_16s_6s_22_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_7ns_23_1_0 RTLNAME folo_mul_16s_7ns_23_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<16,6,5,3,0>,4u>,config5> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config5_s RTLNAME folo_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config5_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,4u>,array<ap_fixed<16,6,5,3,0>,4u>,config5> MODELNAME conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_s RTLNAME folo_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_s}
  {SRCNAME normalize<array<ap_fixed,4u>,array<ap_fixed<16,6,5,3,0>,4u>,config6> MODELNAME normalize_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config6_s RTLNAME folo_normalize_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config6_s
    SUBMODULES {
      {MODELNAME folo_mul_16s_12ns_26_1_1 RTLNAME folo_mul_16s_12ns_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME add<array,array<ap_fixed,4u>,array<ap_fixed<16,6,5,3,0>,4u>,config7> MODELNAME add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_s RTLNAME folo_add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_s}
  {SRCNAME thresholded_relu<array,ap_fixed,array<ap_fixed,4u>,thresholdedrelu_config8> MODELNAME thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_config8_s RTLNAME folo_thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_config8_s}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<16,6,5,3,0>,4u>,config32>_Pipeline_CopyMain MODELNAME zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config32_Pipeline_CopyMain RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config32_Pipeline_CopyMain}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,4u>,config32>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_4u_config32_Pipeline_PadBottomWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_4u_config32_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array<ap_fixed,4u>,array<ap_fixed<16,6,5,3,0>,4u>,config32> MODELNAME zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config32_s RTLNAME folo_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config32_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 6, 5, 3, 0>, 4u>, config9>} MODELNAME shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config9_s RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config9_s
    SUBMODULES {
      {MODELNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config9_s_p_ZZN4nnet25conv_2d_lbW RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config9_s_p_ZZN4nnet25conv_2d_lbW BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {dense_latency<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<16, 6, 5, 3, 0>, config9_mult>} MODELNAME dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config9_mult_s RTLNAME folo_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config9_mult_s}
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<16,6,5,3,0>,6u>,config9> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_6u_config9_s RTLNAME folo_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_6u_config9_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,4u>,array<ap_fixed<16,6,5,3,0>,6u>,config9> MODELNAME conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_s RTLNAME folo_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_s}
  {SRCNAME normalize<array<ap_fixed,6u>,array<ap_fixed<16,6,5,3,0>,6u>,config10> MODELNAME normalize_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config10_s RTLNAME folo_normalize_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config10_s
    SUBMODULES {
      {MODELNAME folo_mul_16s_11ns_26_1_1 RTLNAME folo_mul_16s_11ns_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME thresholded_relu<array,ap_fixed,array<ap_fixed,6u>,thresholdedrelu_config11> MODELNAME thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_config11_s RTLNAME folo_thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_config11_s}
  {SRCNAME clone_stream<array<ap_fixed,6u>,array<ap_fixed<16,6,5,3,0>,6u>,24576> MODELNAME clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_s RTLNAME folo_clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_s}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<16,6,5,3,0>,6u>,config33>_Pipeline_PadTopWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config33_Pipeline_PadTopWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config33_Pipeline_PadTopWidth}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<16,6,5,3,0>,6u>,config33>_Pipeline_PadMain MODELNAME zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config33_Pipeline_PadMain RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config33_Pipeline_PadMain}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,6u>,config33>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_6u_config33_Pipeline_PadBottomWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_6u_config33_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array<ap_fixed,6u>,array<ap_fixed<16,6,5,3,0>,6u>,config33> MODELNAME zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config33_s RTLNAME folo_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config33_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 6, 5, 3, 0>, 6u>, config12>} MODELNAME shift_line_buffer_array_ap_fixed_16_6_5_3_0_6u_config12_s RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_6u_config12_s
    SUBMODULES {
      {MODELNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_6u_config12_s_p_ZZN4nnet25conv_2dtde RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_6u_config12_s_p_ZZN4nnet25conv_2dtde BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {dense_latency<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<16, 6, 5, 3, 0>, config12_mult>} MODELNAME dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config12_mult_s RTLNAME folo_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config12_mult_s}
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<16,6,5,3,0>,6u>,config12> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_6u_config12_s RTLNAME folo_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_6u_config12_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,6u>,array<ap_fixed<16,6,5,3,0>,6u>,config12> MODELNAME conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_s RTLNAME folo_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_s}
  {SRCNAME normalize<array<ap_fixed,6u>,array<ap_fixed<16,6,5,3,0>,6u>,config13> MODELNAME normalize_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config13_s RTLNAME folo_normalize_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config13_s}
  {SRCNAME add<array,array<ap_fixed,6u>,array<ap_fixed<16,6,5,3,0>,6u>,config14> MODELNAME add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_s RTLNAME folo_add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_s}
  {SRCNAME thresholded_relu<array,ap_fixed,array<ap_fixed,6u>,thresholdedrelu_config15> MODELNAME thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_config15_s RTLNAME folo_thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_config15_s}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<16,6,5,3,0>,6u>,config34>_Pipeline_PadMain MODELNAME zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config34_Pipeline_PadMain RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config34_Pipeline_PadMain}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,6u>,config34>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_6u_config34_Pipeline_PadBottomWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_6u_config34_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array<ap_fixed,6u>,array<ap_fixed<16,6,5,3,0>,6u>,config34> MODELNAME zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config34_s RTLNAME folo_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config34_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 6, 5, 3, 0>, 6u>, config16>} MODELNAME shift_line_buffer_array_ap_fixed_16_6_5_3_0_6u_config16_s RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_6u_config16_s
    SUBMODULES {
      {MODELNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_6u_config16_s_p_ZZN4nnet25conv_2dFfa RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_6u_config16_s_p_ZZN4nnet25conv_2dFfa BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {dense_latency<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<16, 6, 5, 3, 0>, config16_mult>} MODELNAME dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config16_mult_s RTLNAME folo_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config16_mult_s
    SUBMODULES {
      {MODELNAME folo_mul_16s_5s_21_1_0 RTLNAME folo_mul_16s_5s_21_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<16,6,5,3,0>,8u>,config16> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config16_s RTLNAME folo_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config16_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,6u>,array<ap_fixed<16,6,5,3,0>,8u>,config16> MODELNAME conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_s RTLNAME folo_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_s}
  {SRCNAME normalize<array<ap_fixed,8u>,array<ap_fixed<16,6,5,3,0>,8u>,config17> MODELNAME normalize_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config17_s RTLNAME folo_normalize_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config17_s
    SUBMODULES {
      {MODELNAME folo_mul_16s_10ns_25_1_1 RTLNAME folo_mul_16s_10ns_25_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME thresholded_relu<array,ap_fixed,array<ap_fixed,8u>,thresholdedrelu_config18> MODELNAME thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_config18_s RTLNAME folo_thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_config18_s}
  {SRCNAME clone_stream<array<ap_fixed,8u>,array<ap_fixed<16,6,5,3,0>,8u>,8192> MODELNAME clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_s RTLNAME folo_clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_s}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<16,6,5,3,0>,8u>,config35>_Pipeline_PadTopWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config35_Pipeline_PadTopWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config35_Pipeline_PadTopWidth}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<16,6,5,3,0>,8u>,config35>_Pipeline_PadMain MODELNAME zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config35_Pipeline_PadMain RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config35_Pipeline_PadMain}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,8u>,config35>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_8u_config35_Pipeline_PadBottomWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_8u_config35_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array<ap_fixed,8u>,array<ap_fixed<16,6,5,3,0>,8u>,config35> MODELNAME zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config35_s RTLNAME folo_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config35_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 6, 5, 3, 0>, 8u>, config19>} MODELNAME shift_line_buffer_array_ap_fixed_16_6_5_3_0_8u_config19_s RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_8u_config19_s
    SUBMODULES {
      {MODELNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_8u_config19_s_p_ZZN4nnet25conv_2dRg6 RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_8u_config19_s_p_ZZN4nnet25conv_2dRg6 BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {dense_latency<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<16, 6, 5, 3, 0>, config19_mult>} MODELNAME dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config19_mult_s RTLNAME folo_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config19_mult_s
    SUBMODULES {
      {MODELNAME folo_mul_16s_11s_26_1_0 RTLNAME folo_mul_16s_11s_26_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<16,6,5,3,0>,8u>,config19> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config19_s RTLNAME folo_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config19_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,8u>,array<ap_fixed<16,6,5,3,0>,8u>,config19> MODELNAME conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_s RTLNAME folo_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_s}
  {SRCNAME normalize<array<ap_fixed,8u>,array<ap_fixed<16,6,5,3,0>,8u>,config20> MODELNAME normalize_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config20_s RTLNAME folo_normalize_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config20_s}
  {SRCNAME add<array,array<ap_fixed,8u>,array<ap_fixed<16,6,5,3,0>,8u>,config21> MODELNAME add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_s RTLNAME folo_add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_s}
  {SRCNAME thresholded_relu<array,ap_fixed,array<ap_fixed,8u>,thresholdedrelu_config22> MODELNAME thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_config22_s RTLNAME folo_thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_config22_s}
  {SRCNAME pointwise_conv_2d_cl<array,array<ap_fixed<16,6,5,3,0>,8u>,config36> MODELNAME pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config36_s RTLNAME folo_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config36_s}
  {SRCNAME relu<array<ap_fixed,8u>,array<ap_fixed<16,6,5,3,0>,8u>,relu_config24> MODELNAME relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config24_s RTLNAME folo_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config24_s}
  {SRCNAME pointwise_conv_2d_cl<array,array<ap_fixed<16,6,5,3,0>,1u>,config37> MODELNAME pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config37_s RTLNAME folo_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config37_s
    SUBMODULES {
      {MODELNAME folo_mul_16s_12s_26_1_1 RTLNAME folo_mul_16s_12s_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME sigmoid<array,array<ap_fixed<16,6,5,3,0>,1u>,sigmoid_config26> MODELNAME sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config26_s RTLNAME folo_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config26_s
    SUBMODULES {
      {MODELNAME folo_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config26_s_sigmoid_table_R7jG RTLNAME folo_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config26_s_sigmoid_table_R7jG BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME folo MODELNAME folo RTLNAME folo IS_TOP 1
    SUBMODULES {
      {MODELNAME folo_fifo_w16_d100000_A RTLNAME folo_fifo_w16_d100000_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer30_out_U}
      {MODELNAME folo_fifo_w64_d1_S RTLNAME folo_fifo_w64_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_U}
      {MODELNAME folo_fifo_w64_d2_S RTLNAME folo_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_U}
      {MODELNAME folo_fifo_w64_d2_S RTLNAME folo_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_U}
      {MODELNAME folo_fifo_w64_d33_A RTLNAME folo_fifo_w64_d33_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer27_cpy1_U}
      {MODELNAME folo_fifo_w64_d170_A RTLNAME folo_fifo_w64_d170_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer27_cpy2_U}
      {MODELNAME folo_fifo_w64_d250_A RTLNAME folo_fifo_w64_d250_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer31_out_U}
      {MODELNAME folo_fifo_w64_d1_S RTLNAME folo_fifo_w64_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_U}
      {MODELNAME folo_fifo_w64_d2_S RTLNAME folo_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer6_out_U}
      {MODELNAME folo_fifo_w64_d2_S RTLNAME folo_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer7_out_U}
      {MODELNAME folo_fifo_w64_d22_A RTLNAME folo_fifo_w64_d22_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer8_out_U}
      {MODELNAME folo_fifo_w64_d131_A RTLNAME folo_fifo_w64_d131_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer32_out_U}
      {MODELNAME folo_fifo_w96_d1_S RTLNAME folo_fifo_w96_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_U}
      {MODELNAME folo_fifo_w96_d2_S RTLNAME folo_fifo_w96_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_U}
      {MODELNAME folo_fifo_w96_d2_S RTLNAME folo_fifo_w96_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer11_out_U}
      {MODELNAME folo_fifo_w96_d8_S RTLNAME folo_fifo_w96_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer28_cpy1_U}
      {MODELNAME folo_fifo_w96_d73_A RTLNAME folo_fifo_w96_d73_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer28_cpy2_U}
      {MODELNAME folo_fifo_w96_d119_A RTLNAME folo_fifo_w96_d119_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer33_out_U}
      {MODELNAME folo_fifo_w96_d1_S RTLNAME folo_fifo_w96_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer12_out_U}
      {MODELNAME folo_fifo_w96_d2_S RTLNAME folo_fifo_w96_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer13_out_U}
      {MODELNAME folo_fifo_w96_d2_S RTLNAME folo_fifo_w96_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer14_out_U}
      {MODELNAME folo_fifo_w96_d4_S RTLNAME folo_fifo_w96_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer15_out_U}
      {MODELNAME folo_fifo_w96_d60_A RTLNAME folo_fifo_w96_d60_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer34_out_U}
      {MODELNAME folo_fifo_w128_d1_S RTLNAME folo_fifo_w128_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer16_out_U}
      {MODELNAME folo_fifo_w128_d2_S RTLNAME folo_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer17_out_U}
      {MODELNAME folo_fifo_w128_d2_S RTLNAME folo_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer18_out_U}
      {MODELNAME folo_fifo_w128_d2_S RTLNAME folo_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer29_cpy1_U}
      {MODELNAME folo_fifo_w128_d40_A RTLNAME folo_fifo_w128_d40_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer29_cpy2_U}
      {MODELNAME folo_fifo_w128_d60_A RTLNAME folo_fifo_w128_d60_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer35_out_U}
      {MODELNAME folo_fifo_w128_d1_S RTLNAME folo_fifo_w128_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer19_out_U}
      {MODELNAME folo_fifo_w128_d2_S RTLNAME folo_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer20_out_U}
      {MODELNAME folo_fifo_w128_d2_S RTLNAME folo_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer21_out_U}
      {MODELNAME folo_fifo_w128_d2_S RTLNAME folo_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer22_out_U}
      {MODELNAME folo_fifo_w128_d2_S RTLNAME folo_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer23_out_U}
      {MODELNAME folo_fifo_w128_d2_S RTLNAME folo_fifo_w128_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer24_out_U}
      {MODELNAME folo_fifo_w16_d2_S RTLNAME folo_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer25_out_U}
      {MODELNAME folo_start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0 RTLNAME folo_start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0_U}
      {MODELNAME folo_start_for_normalize_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config3_U0 RTLNAME folo_start_for_normalize_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config3_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config3_U0_U}
      {MODELNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_c8jQ RTLNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_c8jQ BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_c8jQ_U}
      {MODELNAME folo_start_for_clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0 RTLNAME folo_start_for_clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0_U}
      {MODELNAME folo_start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config39j0 RTLNAME folo_start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config39j0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config39j0_U}
      {MODELNAME folo_start_for_add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0 RTLNAME folo_start_for_add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0_U}
      {MODELNAME folo_start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0 RTLNAME folo_start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0_U}
      {MODELNAME folo_start_for_normalize_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config6_U0 RTLNAME folo_start_for_normalize_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config6_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config6_U0_U}
      {MODELNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_cbak RTLNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_cbak BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_cbak_U}
      {MODELNAME folo_start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config3bbk RTLNAME folo_start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config3bbk BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config3bbk_U}
      {MODELNAME folo_start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0 RTLNAME folo_start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0_U}
      {MODELNAME folo_start_for_normalize_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config10_U0 RTLNAME folo_start_for_normalize_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config10_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config10_U0_U}
      {MODELNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_cbck RTLNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_cbck BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_cbck_U}
      {MODELNAME folo_start_for_clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0 RTLNAME folo_start_for_clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0_U}
      {MODELNAME folo_start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bdk RTLNAME folo_start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bdk BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bdk_U}
      {MODELNAME folo_start_for_add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0 RTLNAME folo_start_for_add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0_U}
      {MODELNAME folo_start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0 RTLNAME folo_start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0_U}
      {MODELNAME folo_start_for_normalize_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config13_U0 RTLNAME folo_start_for_normalize_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config13_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config13_U0_U}
      {MODELNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_cbek RTLNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_cbek BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_cbek_U}
      {MODELNAME folo_start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bfk RTLNAME folo_start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bfk BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config3bfk_U}
      {MODELNAME folo_start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0 RTLNAME folo_start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0_U}
      {MODELNAME folo_start_for_normalize_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config17_U0 RTLNAME folo_start_for_normalize_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config17_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config17_U0_U}
      {MODELNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_cbgk RTLNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_cbgk BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_cbgk_U}
      {MODELNAME folo_start_for_clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0 RTLNAME folo_start_for_clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0_U}
      {MODELNAME folo_start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config3bhl RTLNAME folo_start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config3bhl BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config3bhl_U}
      {MODELNAME folo_start_for_add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0 RTLNAME folo_start_for_add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0_U}
      {MODELNAME folo_start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0 RTLNAME folo_start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0_U}
      {MODELNAME folo_start_for_normalize_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config20_U0 RTLNAME folo_start_for_normalize_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config20_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config20_U0_U}
      {MODELNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_cbil RTLNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_cbil BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_cbil_U}
      {MODELNAME folo_start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config36_U0 RTLNAME folo_start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config36_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config36_U0_U}
      {MODELNAME folo_start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config24_U0 RTLNAME folo_start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config24_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config24_U0_U}
      {MODELNAME folo_start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config37_U0 RTLNAME folo_start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config37_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config37_U0_U}
      {MODELNAME folo_start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config26_U0 RTLNAME folo_start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config26_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config26_U0_U}
    }
  }
}
