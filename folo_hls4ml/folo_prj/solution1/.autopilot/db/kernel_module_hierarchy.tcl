set ModuleHierarchy {[{
"Name" : "folo","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_12_6_5_3_0_1u_config30_U0","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_1u_config30_Pipeline_PadMain_CopyMain_fu_26","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadMain_CopyMain","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_1u_config30_Pipeline_PadBottomWidth_fu_34","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","ID" : "5","Type" : "pipeline"},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_12_6_5_3_0_4u_config2_U0","ID" : "6","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "7","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_4u_config2_s_fu_78","ID" : "8","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_1u_config2_s_fu_93","ID" : "9","Type" : "pipeline"},
				{"Name" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_12_6_5_3_0_config2_mult_s_fu_121","ID" : "10","Type" : "pipeline",
					"SubLoops" : [
					{"Name" : "ReuseLoop","ID" : "11","Type" : "pipeline"},]},]},]},]},
	{"Name" : "normalize_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config3_U0","ID" : "12","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "BatchNormLoop","ID" : "13","Type" : "pipeline"},]},
	{"Name" : "thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_config4_U0","ID" : "14","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ThresholdedReLUActLoop","ID" : "15","Type" : "pipeline"},]},
	{"Name" : "clone_stream_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_65536_U0","ID" : "16","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CloneLoop","ID" : "17","Type" : "pipeline"},]},
	{"Name" : "zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config31_U0","ID" : "18","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_12_6_5_3_0_4u_config31_Pipeline_PadTopWidth_fu_22","ID" : "19","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadTopWidth","ID" : "20","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_4u_config31_Pipeline_PadMain_CopyMain_fu_28","ID" : "21","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadMain_CopyMain","ID" : "22","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_4u_config31_Pipeline_PadBottomWidth_fu_36","ID" : "23","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","ID" : "24","Type" : "pipeline"},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config5_U0","ID" : "25","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "26","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_4u_config5_s_fu_156","ID" : "27","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_4u_config5_s_fu_181","ID" : "28","Type" : "pipeline"},
				{"Name" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config5_mult_s_fu_281","ID" : "29","Type" : "pipeline",
					"SubLoops" : [
					{"Name" : "ReuseLoop","ID" : "30","Type" : "pipeline"},]},]},]},]},
	{"Name" : "normalize_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config6_U0","ID" : "31","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "BatchNormLoop","ID" : "32","Type" : "pipeline"},]},
	{"Name" : "add_array_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config7_U0","ID" : "33","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "AddLoop","ID" : "34","Type" : "pipeline"},]},
	{"Name" : "thresholded_relu_array_ap_fixed_array_ap_fixed_4u_thresholdedrelu_config8_U0","ID" : "35","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ThresholdedReLUActLoop","ID" : "36","Type" : "pipeline"},]},
	{"Name" : "zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_4u_config32_U0","ID" : "37","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_4u_config32_Pipeline_PadMain_CopyMain_fu_20","ID" : "38","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadMain_CopyMain","ID" : "39","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_4u_config32_Pipeline_PadBottomWidth_fu_28","ID" : "40","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","ID" : "41","Type" : "pipeline"},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_12_6_5_3_0_6u_config9_U0","ID" : "42","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "43","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_6u_config9_s_fu_156","ID" : "44","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_4u_config9_s_fu_181","ID" : "45","Type" : "pipeline"},
				{"Name" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config9_mult_s_fu_281","ID" : "46","Type" : "pipeline",
					"SubLoops" : [
					{"Name" : "ReuseLoop","ID" : "47","Type" : "pipeline"},]},]},]},]},
	{"Name" : "normalize_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config10_U0","ID" : "48","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "BatchNormLoop","ID" : "49","Type" : "pipeline"},]},
	{"Name" : "thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_config11_U0","ID" : "50","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ThresholdedReLUActLoop","ID" : "51","Type" : "pipeline"},]},
	{"Name" : "clone_stream_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_24576_U0","ID" : "52","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CloneLoop","ID" : "53","Type" : "pipeline"},]},
	{"Name" : "zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config33_U0","ID" : "54","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_12_6_5_3_0_6u_config33_Pipeline_PadTopWidth_fu_22","ID" : "55","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadTopWidth","ID" : "56","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_12_6_5_3_0_6u_config33_Pipeline_PadMain_fu_28","ID" : "57","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadMain","ID" : "58","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_6u_config33_Pipeline_PadBottomWidth_fu_36","ID" : "59","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","ID" : "60","Type" : "pipeline"},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config12_U0","ID" : "61","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "62","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_6u_config12_s_fu_208","ID" : "63","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config12_s_fu_241","ID" : "64","Type" : "pipeline"},
				{"Name" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config12_mult_s_fu_389","ID" : "65","Type" : "pipeline",
					"SubLoops" : [
					{"Name" : "ReuseLoop","ID" : "66","Type" : "pipeline"},]},]},]},]},
	{"Name" : "normalize_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config13_U0","ID" : "67","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "BatchNormLoop","ID" : "68","Type" : "pipeline"},]},
	{"Name" : "add_array_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config14_U0","ID" : "69","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "AddLoop","ID" : "70","Type" : "pipeline"},]},
	{"Name" : "thresholded_relu_array_ap_fixed_array_ap_fixed_6u_thresholdedrelu_config15_U0","ID" : "71","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ThresholdedReLUActLoop","ID" : "72","Type" : "pipeline"},]},
	{"Name" : "zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_6u_config34_U0","ID" : "73","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_12_6_5_3_0_6u_config34_Pipeline_PadMain_fu_20","ID" : "74","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadMain","ID" : "75","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_6u_config34_Pipeline_PadBottomWidth_fu_28","ID" : "76","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","ID" : "77","Type" : "pipeline"},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_12_6_5_3_0_8u_config16_U0","ID" : "78","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "79","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config16_s_fu_208","ID" : "80","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_6u_config16_s_fu_241","ID" : "81","Type" : "pipeline"},
				{"Name" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config16_mult_s_fu_389","ID" : "82","Type" : "pipeline",
					"SubLoops" : [
					{"Name" : "ReuseLoop","ID" : "83","Type" : "pipeline"},]},]},]},]},
	{"Name" : "normalize_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config17_U0","ID" : "84","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "BatchNormLoop","ID" : "85","Type" : "pipeline"},]},
	{"Name" : "thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_config18_U0","ID" : "86","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ThresholdedReLUActLoop","ID" : "87","Type" : "pipeline"},]},
	{"Name" : "clone_stream_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_8192_U0","ID" : "88","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CloneLoop","ID" : "89","Type" : "pipeline"},]},
	{"Name" : "zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config35_U0","ID" : "90","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_12_6_5_3_0_8u_config35_Pipeline_PadTopWidth_fu_22","ID" : "91","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadTopWidth","ID" : "92","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_12_6_5_3_0_8u_config35_Pipeline_PadMain_fu_28","ID" : "93","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadMain","ID" : "94","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_8u_config35_Pipeline_PadBottomWidth_fu_36","ID" : "95","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","ID" : "96","Type" : "pipeline"},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config19_U0","ID" : "97","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "98","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_12_6_5_3_0_8u_config19_s_fu_260","ID" : "99","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_12_6_5_3_0_8u_config19_s_fu_301","ID" : "100","Type" : "pipeline"},
				{"Name" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config19_mult_s_fu_497","ID" : "101","Type" : "pipeline",
					"SubLoops" : [
					{"Name" : "ReuseLoop","ID" : "102","Type" : "pipeline"},]},]},]},]},
	{"Name" : "normalize_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config20_U0","ID" : "103","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "BatchNormLoop","ID" : "104","Type" : "pipeline"},]},
	{"Name" : "add_array_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_config21_U0","ID" : "105","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "AddLoop","ID" : "106","Type" : "pipeline"},]},
	{"Name" : "thresholded_relu_array_ap_fixed_array_ap_fixed_8u_thresholdedrelu_config22_U0","ID" : "107","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ThresholdedReLUActLoop","ID" : "108","Type" : "pipeline"},]},
	{"Name" : "pointwise_conv_2d_cl_array_array_ap_fixed_12_6_5_3_0_8u_config36_U0","ID" : "109","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeightSerial_ReadInputWidthSerial","ID" : "110","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_12_6_5_3_0_config36_mult_s_fu_87","ID" : "111","Type" : "pipeline",
				"SubLoops" : [
				{"Name" : "ReuseLoop","ID" : "112","Type" : "pipeline"},]},]},]},
	{"Name" : "relu_array_ap_fixed_8u_array_ap_fixed_12_6_5_3_0_8u_relu_config24_U0","ID" : "113","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","ID" : "114","Type" : "pipeline"},]},
	{"Name" : "pointwise_conv_2d_cl_array_array_ap_fixed_12_6_5_3_0_1u_config37_U0","ID" : "115","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeightSerial_ReadInputWidthSerial","ID" : "116","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_12_6_5_3_0_config37_mult_s_fu_83","ID" : "117","Type" : "pipeline",
				"SubLoops" : [
				{"Name" : "ReuseLoop","ID" : "118","Type" : "pipeline"},]},]},]},
	{"Name" : "sigmoid_array_array_ap_fixed_12_6_5_3_0_1u_sigmoid_config26_U0","ID" : "119","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "SigmoidActLoop","ID" : "120","Type" : "pipeline"},]},]
}]}