set SynModuleInfo {
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 6, 5, 3, 0>, 1u>, config2>} MODELNAME shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s
    SUBMODULES {
      {MODELNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_void_pooling2d_cl_stbkb RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_void_pooling2d_cl_stbkb BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pooling2d_cl<array<ap_fixed,1u>,array<ap_fixed<16,6,5,3,0>,1u>,config2> MODELNAME pooling2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config2_s RTLNAME folo_pooling2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config2_s
    SUBMODULES {
      {MODELNAME folo_regslice_both RTLNAME folo_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME folo_regslice_both_U}
      {MODELNAME folo_flow_control_loop_pipe RTLNAME folo_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME folo_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<16,6,5,3,0>,1u>,config13>_Pipeline_PadTopWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config13_Pipeline_PadTopWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config13_Pipeline_PadTopWidth
    SUBMODULES {
      {MODELNAME folo_flow_control_loop_pipe_sequential_init RTLNAME folo_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME folo_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,1u>,config13>_Pipeline_PadMain_CopyMain MODELNAME zeropad2d_cl_array_array_ap_fixed_1u_config13_Pipeline_PadMain_CopyMain RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_1u_config13_Pipeline_PadMain_CopyMain}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,1u>,config13>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_1u_config13_Pipeline_PadBottomWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_1u_config13_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array<ap_fixed,1u>,array<ap_fixed<16,6,5,3,0>,1u>,config13> MODELNAME zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config13_s RTLNAME folo_zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config13_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 6, 5, 3, 0>, 1u>, config3>} MODELNAME shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s
    SUBMODULES {
      {MODELNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_void_conv_2d_buffer_cud RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_void_conv_2d_buffer_cud BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {dense_latency<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<37, 17, 5, 3, 0>, config3_mult>} MODELNAME dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s RTLNAME folo_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s
    SUBMODULES {
      {MODELNAME folo_mul_16s_13ns_29_1_0 RTLNAME folo_mul_16s_13ns_29_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_9ns_25_1_0 RTLNAME folo_mul_16s_9ns_25_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_12ns_27_1_0 RTLNAME folo_mul_16s_12ns_27_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_11s_27_1_0 RTLNAME folo_mul_16s_11s_27_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_9s_25_1_0 RTLNAME folo_mul_16s_9s_25_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_10s_26_1_0 RTLNAME folo_mul_16s_10s_26_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_8s_23_1_0 RTLNAME folo_mul_16s_8s_23_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_10ns_26_1_0 RTLNAME folo_mul_16s_10ns_26_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_7ns_23_1_0 RTLNAME folo_mul_16s_7ns_23_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_6ns_22_1_0 RTLNAME folo_mul_16s_6ns_22_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_12ns_28_1_0 RTLNAME folo_mul_16s_12ns_28_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_8s_24_1_0 RTLNAME folo_mul_16s_8s_24_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_8ns_24_1_0 RTLNAME folo_mul_16s_8ns_24_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_9s_24_1_0 RTLNAME folo_mul_16s_9s_24_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_11ns_27_1_0 RTLNAME folo_mul_16s_11ns_27_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_9ns_24_1_0 RTLNAME folo_mul_16s_9ns_24_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_10s_25_1_0 RTLNAME folo_mul_16s_10s_25_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_11s_26_1_0 RTLNAME folo_mul_16s_11s_26_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_7s_23_1_0 RTLNAME folo_mul_16s_7s_23_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_7ns_22_1_0 RTLNAME folo_mul_16s_7ns_22_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_7s_22_1_0 RTLNAME folo_mul_16s_7s_22_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_8ns_23_1_0 RTLNAME folo_mul_16s_8ns_23_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_13ns_28_1_0 RTLNAME folo_mul_16s_13ns_28_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_14ns_29_1_0 RTLNAME folo_mul_16s_14ns_29_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_10ns_25_1_0 RTLNAME folo_mul_16s_10ns_25_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<37,17,5,3,0>,16u>,config3> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s RTLNAME folo_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,1u>,array<ap_fixed<37,17,5,3,0>,16u>,config3> MODELNAME conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_37_17_5_3_0_16u_config3_s RTLNAME folo_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_37_17_5_3_0_16u_config3_s}
  {SRCNAME thresholded_relu<array,ap_fixed,array<ap_fixed,16u>,thresholdedrelu_config5> MODELNAME thresholded_relu_array_ap_fixed_array_ap_fixed_16u_thresholdedrelu_config5_s RTLNAME folo_thresholded_relu_array_ap_fixed_array_ap_fixed_16u_thresholdedrelu_config5_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 6, 5, 3, 0>, 16u>, config6>} MODELNAME shift_line_buffer_array_ap_fixed_16_6_5_3_0_16u_config6_s RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_16u_config6_s
    SUBMODULES {
      {MODELNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_16u_config6_s_void_pooling2d_cl_seOg RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_16u_config6_s_void_pooling2d_cl_seOg BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pooling2d_cl<array,array<ap_fixed<16,6,5,3,0>,16u>,config6> MODELNAME pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config6_s RTLNAME folo_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config6_s}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,16u>,config14>_Pipeline_PadTopWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_16u_config14_Pipeline_PadTopWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_16u_config14_Pipeline_PadTopWidth}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<16,6,5,3,0>,16u>,config14>_Pipeline_PadMain MODELNAME zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config14_Pipeline_PadMain RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config14_Pipeline_PadMain}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,16u>,config14>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_16u_config14_Pipeline_PadBottomWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_16u_config14_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<16,6,5,3,0>,16u>,config14> MODELNAME zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config14_s RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config14_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 6, 5, 3, 0>, 16u>, config7>} MODELNAME shift_line_buffer_array_ap_fixed_16_6_5_3_0_16u_config7_s RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_16u_config7_s
    SUBMODULES {
      {MODELNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_16u_config7_s_p_ZZN4nnet25conv_2dudo RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_16u_config7_s_p_ZZN4nnet25conv_2dudo BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {dense_latency<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<41, 21, 5, 3, 0>, config7_mult>} MODELNAME dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_41_21_5_3_0_config7_mult_s RTLNAME folo_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_41_21_5_3_0_config7_mult_s
    SUBMODULES {
      {MODELNAME folo_mul_16s_6s_22_1_0 RTLNAME folo_mul_16s_6s_22_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_12s_28_1_0 RTLNAME folo_mul_16s_12s_28_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_17s_7s_23_1_0 RTLNAME folo_mul_17s_7s_23_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_12s_27_1_0 RTLNAME folo_mul_16s_12s_27_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_5s_20_1_0 RTLNAME folo_mul_16s_5s_20_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_5s_21_1_0 RTLNAME folo_mul_16s_5s_21_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_17s_9ns_25_1_0 RTLNAME folo_mul_17s_9ns_25_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_11ns_26_1_0 RTLNAME folo_mul_16s_11ns_26_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_5ns_21_1_0 RTLNAME folo_mul_16s_5ns_21_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_17s_8s_24_1_0 RTLNAME folo_mul_17s_8s_24_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_17s_6s_22_1_0 RTLNAME folo_mul_17s_6s_22_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_17s_9s_25_1_0 RTLNAME folo_mul_17s_9s_25_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_17s_7ns_23_1_0 RTLNAME folo_mul_17s_7ns_23_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_6ns_21_1_0 RTLNAME folo_mul_16s_6ns_21_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_17s_10ns_26_1_0 RTLNAME folo_mul_17s_10ns_26_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME folo_mul_16s_5ns_20_1_0 RTLNAME folo_mul_16s_5ns_20_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<41,21,5,3,0>,16u>,config7> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_41_21_5_3_0_16u_config7_s RTLNAME folo_compute_output_buffer_2d_array_array_ap_fixed_41_21_5_3_0_16u_config7_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,16u>,array<ap_fixed<41,21,5,3,0>,16u>,config7> MODELNAME conv_2d_cl_array_ap_fixed_16u_array_ap_fixed_41_21_5_3_0_16u_config7_s RTLNAME folo_conv_2d_cl_array_ap_fixed_16u_array_ap_fixed_41_21_5_3_0_16u_config7_s}
  {SRCNAME thresholded_relu<array,ap_fixed,array<ap_fixed,16u>,thresholdedrelu_config9> MODELNAME thresholded_relu_array_ap_fixed_array_ap_fixed_16u_thresholdedrelu_config9_s RTLNAME folo_thresholded_relu_array_ap_fixed_array_ap_fixed_16u_thresholdedrelu_config9_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 6, 5, 3, 0>, 16u>, config10>} MODELNAME shift_line_buffer_array_ap_fixed_16_6_5_3_0_16u_config10_s RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_16u_config10_s
    SUBMODULES {
      {MODELNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_16u_config10_s_void_pooling2d_cl_0iy RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_16u_config10_s_void_pooling2d_cl_0iy BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pooling2d_cl<array,array<ap_fixed<16,6,5,3,0>,16u>,config10> MODELNAME pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config10_s RTLNAME folo_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config10_s}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,16u>,config15>_Pipeline_PadTopWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_16u_config15_Pipeline_PadTopWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_16u_config15_Pipeline_PadTopWidth}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<16,6,5,3,0>,16u>,config15>_Pipeline_PadMain MODELNAME zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config15_Pipeline_PadMain RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config15_Pipeline_PadMain}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,16u>,config15>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_16u_config15_Pipeline_PadBottomWidth RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_16u_config15_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<16,6,5,3,0>,16u>,config15> MODELNAME zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config15_s RTLNAME folo_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config15_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 6, 5, 3, 0>, 16u>, config11>} MODELNAME shift_line_buffer_array_ap_fixed_16_6_5_3_0_16u_config11_s RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_16u_config11_s
    SUBMODULES {
      {MODELNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_16u_config11_s_p_ZZN4nnet25conv_2bgk RTLNAME folo_shift_line_buffer_array_ap_fixed_16_6_5_3_0_16u_config11_s_p_ZZN4nnet25conv_2bgk BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_latency<ap_fixed,ap_fixed<41,21,5,3,0>,config11_mult> MODELNAME dense_latency_ap_fixed_ap_fixed_41_21_5_3_0_config11_mult_s RTLNAME folo_dense_latency_ap_fixed_ap_fixed_41_21_5_3_0_config11_mult_s}
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<41,21,5,3,0>,1u>,config11> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_41_21_5_3_0_1u_config11_s RTLNAME folo_compute_output_buffer_2d_array_array_ap_fixed_41_21_5_3_0_1u_config11_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,16u>,array<ap_fixed<41,21,5,3,0>,1u>,config11> MODELNAME conv_2d_cl_array_ap_fixed_16u_array_ap_fixed_41_21_5_3_0_1u_config11_s RTLNAME folo_conv_2d_cl_array_ap_fixed_16u_array_ap_fixed_41_21_5_3_0_1u_config11_s}
  {SRCNAME sigmoid<array,array<ap_fixed<16,6,5,3,0>,1u>,sigmoid_config12> MODELNAME sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config12_s RTLNAME folo_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config12_s
    SUBMODULES {
      {MODELNAME folo_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config12_s_sigmoid_table_RbMq RTLNAME folo_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config12_s_sigmoid_table_RbMq BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME folo MODELNAME folo RTLNAME folo IS_TOP 1
    SUBMODULES {
      {MODELNAME folo_fifo_w16_d16384_A RTLNAME folo_fifo_w16_d16384_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer2_out_U}
      {MODELNAME folo_fifo_w16_d16900_A RTLNAME folo_fifo_w16_d16900_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer13_out_U}
      {MODELNAME folo_fifo_w592_d16384_A RTLNAME folo_fifo_w592_d16384_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer3_out_U}
      {MODELNAME folo_fifo_w256_d16384_A RTLNAME folo_fifo_w256_d16384_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer5_out_U}
      {MODELNAME folo_fifo_w256_d4096_A RTLNAME folo_fifo_w256_d4096_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer6_out_U}
      {MODELNAME folo_fifo_w256_d4356_A RTLNAME folo_fifo_w256_d4356_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer14_out_U}
      {MODELNAME folo_fifo_w656_d4096_A RTLNAME folo_fifo_w656_d4096_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer7_out_U}
      {MODELNAME folo_fifo_w256_d4096_A RTLNAME folo_fifo_w256_d4096_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer9_out_U}
      {MODELNAME folo_fifo_w256_d1024_A RTLNAME folo_fifo_w256_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer10_out_U}
      {MODELNAME folo_fifo_w256_d1156_A RTLNAME folo_fifo_w256_d1156_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer15_out_U}
      {MODELNAME folo_fifo_w41_d1024_A RTLNAME folo_fifo_w41_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer11_out_U}
      {MODELNAME folo_start_for_zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config1bNq RTLNAME folo_start_for_zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config1bNq BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config1bNq_U}
      {MODELNAME folo_start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_37_17_5_3_0_16u_config3bOq RTLNAME folo_start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_37_17_5_3_0_16u_config3bOq BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_37_17_5_3_0_16u_config3bOq_U}
      {MODELNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_16u_thresholdedrelu_bPq RTLNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_16u_thresholdedrelu_bPq BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_16u_thresholdedrelu_bPq_U}
      {MODELNAME folo_start_for_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config6_U0 RTLNAME folo_start_for_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config6_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config6_U0_U}
      {MODELNAME folo_start_for_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config14_U0 RTLNAME folo_start_for_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config14_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config14_U0_U}
      {MODELNAME folo_start_for_conv_2d_cl_array_ap_fixed_16u_array_ap_fixed_41_21_5_3_0_16u_configbQq RTLNAME folo_start_for_conv_2d_cl_array_ap_fixed_16u_array_ap_fixed_41_21_5_3_0_16u_configbQq BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_16u_array_ap_fixed_41_21_5_3_0_16u_configbQq_U}
      {MODELNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_16u_thresholdedrelu_bRq RTLNAME folo_start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_16u_thresholdedrelu_bRq BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_thresholded_relu_array_ap_fixed_array_ap_fixed_16u_thresholdedrelu_bRq_U}
      {MODELNAME folo_start_for_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config10_U0 RTLNAME folo_start_for_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config10_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config10_U0_U}
      {MODELNAME folo_start_for_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config15_U0 RTLNAME folo_start_for_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config15_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config15_U0_U}
      {MODELNAME folo_start_for_conv_2d_cl_array_ap_fixed_16u_array_ap_fixed_41_21_5_3_0_1u_config1bSr RTLNAME folo_start_for_conv_2d_cl_array_ap_fixed_16u_array_ap_fixed_41_21_5_3_0_1u_config1bSr BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_16u_array_ap_fixed_41_21_5_3_0_1u_config1bSr_U}
      {MODELNAME folo_start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config12_U0 RTLNAME folo_start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config12_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config12_U0_U}
    }
  }
}
