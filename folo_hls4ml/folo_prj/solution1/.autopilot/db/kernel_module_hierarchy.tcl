set ModuleHierarchy {[{
"Name" : "folo","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "pooling2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config2_U0","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "2","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "call_ln52_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_fu_92","ID" : "3","Type" : "pipeline"},]},]},
	{"Name" : "zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config13_U0","ID" : "4","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config13_Pipeline_PadTopWidth_fu_22","ID" : "5","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadTopWidth","ID" : "6","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_1u_config13_Pipeline_PadMain_CopyMain_fu_28","ID" : "7","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadMain_CopyMain","ID" : "8","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_1u_config13_Pipeline_PadBottomWidth_fu_36","ID" : "9","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","ID" : "10","Type" : "pipeline"},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_37_17_5_3_0_16u_config3_U0","ID" : "11","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "12","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_37_17_5_3_0_16u_config3_s_fu_76","ID" : "13","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_fu_90","ID" : "14","Type" : "pipeline"},
				{"Name" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_37_17_5_3_0_config3_mult_s_fu_118","ID" : "15","Type" : "pipeline"},]},]},]},
	{"Name" : "thresholded_relu_array_ap_fixed_array_ap_fixed_16u_thresholdedrelu_config5_U0","ID" : "16","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ThresholdedReLUActLoop","ID" : "17","Type" : "pipeline"},]},
	{"Name" : "pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config6_U0","ID" : "18","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "19","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "call_ln52_shift_line_buffer_array_ap_fixed_16_6_5_3_0_16u_config6_s_fu_300","ID" : "20","Type" : "pipeline"},]},]},
	{"Name" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config14_U0","ID" : "21","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16u_config14_Pipeline_PadTopWidth_fu_22","ID" : "22","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadTopWidth","ID" : "23","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config14_Pipeline_PadMain_fu_28","ID" : "24","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadMain","ID" : "25","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16u_config14_Pipeline_PadBottomWidth_fu_36","ID" : "26","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","ID" : "27","Type" : "pipeline"},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_16u_array_ap_fixed_41_21_5_3_0_16u_config7_U0","ID" : "28","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "29","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_41_21_5_3_0_16u_config7_s_fu_468","ID" : "30","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_16u_config7_s_fu_540","ID" : "31","Type" : "pipeline"},
				{"Name" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_41_21_5_3_0_config7_mult_s_fu_928","ID" : "32","Type" : "pipeline"},]},]},]},
	{"Name" : "thresholded_relu_array_ap_fixed_array_ap_fixed_16u_thresholdedrelu_config9_U0","ID" : "33","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ThresholdedReLUActLoop","ID" : "34","Type" : "pipeline"},]},
	{"Name" : "pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config10_U0","ID" : "35","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "36","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "call_ln52_shift_line_buffer_array_ap_fixed_16_6_5_3_0_16u_config10_s_fu_300","ID" : "37","Type" : "pipeline"},]},]},
	{"Name" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config15_U0","ID" : "38","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16u_config15_Pipeline_PadTopWidth_fu_22","ID" : "39","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadTopWidth","ID" : "40","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config15_Pipeline_PadMain_fu_28","ID" : "41","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadMain","ID" : "42","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16u_config15_Pipeline_PadBottomWidth_fu_36","ID" : "43","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","ID" : "44","Type" : "pipeline"},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_16u_array_ap_fixed_41_21_5_3_0_1u_config11_U0","ID" : "45","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "46","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_41_21_5_3_0_1u_config11_s_fu_468","ID" : "47","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_16u_config11_s_fu_538","ID" : "48","Type" : "pipeline"},
				{"Name" : "grp_dense_latency_ap_fixed_ap_fixed_41_21_5_3_0_config11_mult_s_fu_926","ID" : "49","Type" : "pipeline"},]},]},]},
	{"Name" : "sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config12_U0","ID" : "50","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "SigmoidActLoop","ID" : "51","Type" : "pipeline"},]},]
}]}