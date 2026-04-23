set ModuleHierarchy {[{
"Name" : "folo", "RefName" : "folo","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config30_U0", "RefName" : "zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config30_s","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_1u_config30_Pipeline_PadBottomWidth_fu_64", "RefName" : "zeropad2d_cl_array_array_ap_fixed_1u_config30_Pipeline_PadBottomWidth","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","RefName" : "PadBottomWidth","ID" : "3","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "PadMain","RefName" : "PadMain","ID" : "4","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config30_Pipeline_CopyMain_fu_56", "RefName" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config30_Pipeline_CopyMain","ID" : "5","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "CopyMain","RefName" : "CopyMain","ID" : "6","Type" : "pipeline"},]},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_U0", "RefName" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config2_s","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","RefName" : "ReadInputHeight_ReadInputWidth","ID" : "8","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s_fu_76", "RefName" : "compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config2_s","ID" : "9","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s_fu_90", "RefName" : "shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config2_s","ID" : "10","Type" : "pipeline"},
				{"Name" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s_fu_118", "RefName" : "dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config2_mult_s","ID" : "11","Type" : "pipeline"},]},]},]},
	{"Name" : "normalize_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config3_U0", "RefName" : "normalize_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config3_s","ID" : "12","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "BatchNormLoop","RefName" : "BatchNormLoop","ID" : "13","Type" : "pipeline"},]},
	{"Name" : "thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_config4_U0", "RefName" : "thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_config4_s","ID" : "14","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ThresholdedReLUActLoop","RefName" : "ThresholdedReLUActLoop","ID" : "15","Type" : "pipeline"},]},
	{"Name" : "clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0", "RefName" : "clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_s","ID" : "16","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CloneLoop","RefName" : "CloneLoop","ID" : "17","Type" : "pipeline"},]},
	{"Name" : "zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config31_U0", "RefName" : "zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config31_s","ID" : "18","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config31_Pipeline_PadTopWidth_fu_54", "RefName" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config31_Pipeline_PadTopWidth","ID" : "19","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadTopWidth","RefName" : "PadTopWidth","ID" : "20","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_4u_config31_Pipeline_PadBottomWidth_fu_60", "RefName" : "zeropad2d_cl_array_array_ap_fixed_4u_config31_Pipeline_PadBottomWidth","ID" : "21","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","RefName" : "PadBottomWidth","ID" : "22","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "PadMain","RefName" : "PadMain","ID" : "23","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config31_Pipeline_CopyMain_fu_66", "RefName" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config31_Pipeline_CopyMain","ID" : "24","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "CopyMain","RefName" : "CopyMain","ID" : "25","Type" : "pipeline"},]},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0", "RefName" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_s","ID" : "26","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","RefName" : "ReadInputHeight_ReadInputWidth","ID" : "27","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config5_s_fu_156", "RefName" : "compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config5_s","ID" : "28","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config5_s_fu_180", "RefName" : "shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config5_s","ID" : "29","Type" : "pipeline"},
				{"Name" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config5_mult_s_fu_280", "RefName" : "dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config5_mult_s","ID" : "30","Type" : "pipeline"},]},]},]},
	{"Name" : "normalize_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config6_U0", "RefName" : "normalize_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config6_s","ID" : "31","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "BatchNormLoop","RefName" : "BatchNormLoop","ID" : "32","Type" : "pipeline"},]},
	{"Name" : "add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0", "RefName" : "add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_s","ID" : "33","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "AddLoop","RefName" : "AddLoop","ID" : "34","Type" : "pipeline"},]},
	{"Name" : "thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_config8_U0", "RefName" : "thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_config8_s","ID" : "35","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ThresholdedReLUActLoop","RefName" : "ThresholdedReLUActLoop","ID" : "36","Type" : "pipeline"},]},
	{"Name" : "zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config32_U0", "RefName" : "zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config32_s","ID" : "37","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_4u_config32_Pipeline_PadBottomWidth_fu_60", "RefName" : "zeropad2d_cl_array_array_ap_fixed_4u_config32_Pipeline_PadBottomWidth","ID" : "38","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","RefName" : "PadBottomWidth","ID" : "39","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "PadMain","RefName" : "PadMain","ID" : "40","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config32_Pipeline_CopyMain_fu_52", "RefName" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config32_Pipeline_CopyMain","ID" : "41","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "CopyMain","RefName" : "CopyMain","ID" : "42","Type" : "pipeline"},]},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0", "RefName" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_s","ID" : "43","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","RefName" : "ReadInputHeight_ReadInputWidth","ID" : "44","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_6u_config9_s_fu_156", "RefName" : "compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_6u_config9_s","ID" : "45","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config9_s_fu_180", "RefName" : "shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config9_s","ID" : "46","Type" : "pipeline"},
				{"Name" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config9_mult_s_fu_280", "RefName" : "dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config9_mult_s","ID" : "47","Type" : "pipeline"},]},]},]},
	{"Name" : "normalize_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config10_U0", "RefName" : "normalize_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config10_s","ID" : "48","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "BatchNormLoop","RefName" : "BatchNormLoop","ID" : "49","Type" : "pipeline"},]},
	{"Name" : "thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_config11_U0", "RefName" : "thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_config11_s","ID" : "50","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ThresholdedReLUActLoop","RefName" : "ThresholdedReLUActLoop","ID" : "51","Type" : "pipeline"},]},
	{"Name" : "clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0", "RefName" : "clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_s","ID" : "52","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CloneLoop","RefName" : "CloneLoop","ID" : "53","Type" : "pipeline"},]},
	{"Name" : "zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config33_U0", "RefName" : "zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config33_s","ID" : "54","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config33_Pipeline_PadTopWidth_fu_22", "RefName" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config33_Pipeline_PadTopWidth","ID" : "55","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadTopWidth","RefName" : "PadTopWidth","ID" : "56","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config33_Pipeline_PadMain_fu_28", "RefName" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config33_Pipeline_PadMain","ID" : "57","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadMain","RefName" : "PadMain","ID" : "58","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_6u_config33_Pipeline_PadBottomWidth_fu_36", "RefName" : "zeropad2d_cl_array_array_ap_fixed_6u_config33_Pipeline_PadBottomWidth","ID" : "59","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","RefName" : "PadBottomWidth","ID" : "60","Type" : "pipeline"},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0", "RefName" : "conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_s","ID" : "61","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","RefName" : "ReadInputHeight_ReadInputWidth","ID" : "62","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_6u_config12_s_fu_208", "RefName" : "compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_6u_config12_s","ID" : "63","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_6u_config12_s_fu_240", "RefName" : "shift_line_buffer_array_ap_fixed_16_6_5_3_0_6u_config12_s","ID" : "64","Type" : "pipeline"},
				{"Name" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config12_mult_s_fu_388", "RefName" : "dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config12_mult_s","ID" : "65","Type" : "pipeline"},]},]},]},
	{"Name" : "normalize_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config13_U0", "RefName" : "normalize_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config13_s","ID" : "66","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "BatchNormLoop","RefName" : "BatchNormLoop","ID" : "67","Type" : "pipeline"},]},
	{"Name" : "add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0", "RefName" : "add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_s","ID" : "68","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "AddLoop","RefName" : "AddLoop","ID" : "69","Type" : "pipeline"},]},
	{"Name" : "thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_config15_U0", "RefName" : "thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_config15_s","ID" : "70","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ThresholdedReLUActLoop","RefName" : "ThresholdedReLUActLoop","ID" : "71","Type" : "pipeline"},]},
	{"Name" : "zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config34_U0", "RefName" : "zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config34_s","ID" : "72","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config34_Pipeline_PadMain_fu_20", "RefName" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config34_Pipeline_PadMain","ID" : "73","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadMain","RefName" : "PadMain","ID" : "74","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_6u_config34_Pipeline_PadBottomWidth_fu_28", "RefName" : "zeropad2d_cl_array_array_ap_fixed_6u_config34_Pipeline_PadBottomWidth","ID" : "75","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","RefName" : "PadBottomWidth","ID" : "76","Type" : "pipeline"},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0", "RefName" : "conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_s","ID" : "77","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","RefName" : "ReadInputHeight_ReadInputWidth","ID" : "78","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config16_s_fu_208", "RefName" : "compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config16_s","ID" : "79","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_6u_config16_s_fu_240", "RefName" : "shift_line_buffer_array_ap_fixed_16_6_5_3_0_6u_config16_s","ID" : "80","Type" : "pipeline"},
				{"Name" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config16_mult_s_fu_388", "RefName" : "dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config16_mult_s","ID" : "81","Type" : "pipeline"},]},]},]},
	{"Name" : "normalize_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config17_U0", "RefName" : "normalize_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config17_s","ID" : "82","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "BatchNormLoop","RefName" : "BatchNormLoop","ID" : "83","Type" : "pipeline"},]},
	{"Name" : "thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_config18_U0", "RefName" : "thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_config18_s","ID" : "84","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ThresholdedReLUActLoop","RefName" : "ThresholdedReLUActLoop","ID" : "85","Type" : "pipeline"},]},
	{"Name" : "clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0", "RefName" : "clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_s","ID" : "86","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CloneLoop","RefName" : "CloneLoop","ID" : "87","Type" : "pipeline"},]},
	{"Name" : "zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config35_U0", "RefName" : "zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config35_s","ID" : "88","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config35_Pipeline_PadTopWidth_fu_22", "RefName" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config35_Pipeline_PadTopWidth","ID" : "89","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadTopWidth","RefName" : "PadTopWidth","ID" : "90","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config35_Pipeline_PadMain_fu_28", "RefName" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config35_Pipeline_PadMain","ID" : "91","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadMain","RefName" : "PadMain","ID" : "92","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_8u_config35_Pipeline_PadBottomWidth_fu_36", "RefName" : "zeropad2d_cl_array_array_ap_fixed_8u_config35_Pipeline_PadBottomWidth","ID" : "93","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","RefName" : "PadBottomWidth","ID" : "94","Type" : "pipeline"},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0", "RefName" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_s","ID" : "95","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","RefName" : "ReadInputHeight_ReadInputWidth","ID" : "96","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config19_s_fu_260", "RefName" : "compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config19_s","ID" : "97","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_8u_config19_s_fu_299", "RefName" : "shift_line_buffer_array_ap_fixed_16_6_5_3_0_8u_config19_s","ID" : "98","Type" : "pipeline"},
				{"Name" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config19_mult_s_fu_495", "RefName" : "dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config19_mult_s","ID" : "99","Type" : "pipeline"},]},]},]},
	{"Name" : "normalize_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config20_U0", "RefName" : "normalize_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config20_s","ID" : "100","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "BatchNormLoop","RefName" : "BatchNormLoop","ID" : "101","Type" : "pipeline"},]},
	{"Name" : "add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0", "RefName" : "add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_s","ID" : "102","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "AddLoop","RefName" : "AddLoop","ID" : "103","Type" : "pipeline"},]},
	{"Name" : "thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_config22_U0", "RefName" : "thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_config22_s","ID" : "104","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ThresholdedReLUActLoop","RefName" : "ThresholdedReLUActLoop","ID" : "105","Type" : "pipeline"},]},
	{"Name" : "pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config36_U0", "RefName" : "pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config36_s","ID" : "106","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","RefName" : "ReadInputHeight_ReadInputWidth","ID" : "107","Type" : "pipeline"},]},
	{"Name" : "relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config24_U0", "RefName" : "relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config24_s","ID" : "108","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","RefName" : "ReLUActLoop","ID" : "109","Type" : "pipeline"},]},
	{"Name" : "pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config37_U0", "RefName" : "pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config37_s","ID" : "110","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","RefName" : "ReadInputHeight_ReadInputWidth","ID" : "111","Type" : "pipeline"},]},
	{"Name" : "sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config26_U0", "RefName" : "sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config26_s","ID" : "112","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "SigmoidActLoop","RefName" : "SigmoidActLoop","ID" : "113","Type" : "pipeline"},]},]
}]}