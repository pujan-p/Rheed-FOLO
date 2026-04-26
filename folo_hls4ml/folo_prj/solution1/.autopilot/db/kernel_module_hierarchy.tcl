set ModuleHierarchy {[{
"Name" : "folo", "RefName" : "folo","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config32_U0", "RefName" : "zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config32_s","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_1u_config32_Pipeline_PadBottomWidth_fu_64", "RefName" : "zeropad2d_cl_array_array_ap_fixed_1u_config32_Pipeline_PadBottomWidth","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","RefName" : "PadBottomWidth","ID" : "3","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "PadMain","RefName" : "PadMain","ID" : "4","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config32_Pipeline_CopyMain_fu_56", "RefName" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config32_Pipeline_CopyMain","ID" : "5","Type" : "sequential",
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
	{"Name" : "relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_U0", "RefName" : "relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config4_s","ID" : "12","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","RefName" : "ReLUActLoop","ID" : "13","Type" : "pipeline"},]},
	{"Name" : "clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_U0", "RefName" : "clone_stream_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_65536_s","ID" : "14","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CloneLoop","RefName" : "CloneLoop","ID" : "15","Type" : "pipeline"},]},
	{"Name" : "zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_U0", "RefName" : "zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config33_s","ID" : "16","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config33_Pipeline_PadTopWidth_fu_54", "RefName" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config33_Pipeline_PadTopWidth","ID" : "17","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadTopWidth","RefName" : "PadTopWidth","ID" : "18","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_4u_config33_Pipeline_PadBottomWidth_fu_60", "RefName" : "zeropad2d_cl_array_array_ap_fixed_4u_config33_Pipeline_PadBottomWidth","ID" : "19","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","RefName" : "PadBottomWidth","ID" : "20","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "PadMain","RefName" : "PadMain","ID" : "21","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config33_Pipeline_CopyMain_fu_66", "RefName" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config33_Pipeline_CopyMain","ID" : "22","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "CopyMain","RefName" : "CopyMain","ID" : "23","Type" : "pipeline"},]},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_U0", "RefName" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config5_s","ID" : "24","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","RefName" : "ReadInputHeight_ReadInputWidth","ID" : "25","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config5_s_fu_156", "RefName" : "compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config5_s","ID" : "26","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config5_s_fu_180", "RefName" : "shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config5_s","ID" : "27","Type" : "pipeline"},
				{"Name" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config5_mult_s_fu_280", "RefName" : "dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config5_mult_s","ID" : "28","Type" : "pipeline"},]},]},]},
	{"Name" : "add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_U0", "RefName" : "add_array_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config7_s","ID" : "29","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "AddLoop","RefName" : "AddLoop","ID" : "30","Type" : "pipeline"},]},
	{"Name" : "relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_U0", "RefName" : "relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_relu_config8_s","ID" : "31","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","RefName" : "ReLUActLoop","ID" : "32","Type" : "pipeline"},]},
	{"Name" : "zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_U0", "RefName" : "zeropad2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config34_s","ID" : "33","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_4u_config34_Pipeline_PadBottomWidth_fu_60", "RefName" : "zeropad2d_cl_array_array_ap_fixed_4u_config34_Pipeline_PadBottomWidth","ID" : "34","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","RefName" : "PadBottomWidth","ID" : "35","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "PadMain","RefName" : "PadMain","ID" : "36","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config34_Pipeline_CopyMain_fu_52", "RefName" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_4u_config34_Pipeline_CopyMain","ID" : "37","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "CopyMain","RefName" : "CopyMain","ID" : "38","Type" : "pipeline"},]},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_U0", "RefName" : "conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_6u_config9_s","ID" : "39","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","RefName" : "ReadInputHeight_ReadInputWidth","ID" : "40","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_6u_config9_s_fu_156", "RefName" : "compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_6u_config9_s","ID" : "41","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config9_s_fu_180", "RefName" : "shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config9_s","ID" : "42","Type" : "pipeline"},
				{"Name" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config9_mult_s_fu_280", "RefName" : "dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config9_mult_s","ID" : "43","Type" : "pipeline"},]},]},]},
	{"Name" : "relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_U0", "RefName" : "relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config11_s","ID" : "44","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","RefName" : "ReLUActLoop","ID" : "45","Type" : "pipeline"},]},
	{"Name" : "clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_U0", "RefName" : "clone_stream_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_24576_s","ID" : "46","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CloneLoop","RefName" : "CloneLoop","ID" : "47","Type" : "pipeline"},]},
	{"Name" : "zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_U0", "RefName" : "zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config35_s","ID" : "48","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config35_Pipeline_PadTopWidth_fu_22", "RefName" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config35_Pipeline_PadTopWidth","ID" : "49","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadTopWidth","RefName" : "PadTopWidth","ID" : "50","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config35_Pipeline_PadMain_fu_28", "RefName" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config35_Pipeline_PadMain","ID" : "51","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadMain","RefName" : "PadMain","ID" : "52","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_6u_config35_Pipeline_PadBottomWidth_fu_36", "RefName" : "zeropad2d_cl_array_array_ap_fixed_6u_config35_Pipeline_PadBottomWidth","ID" : "53","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","RefName" : "PadBottomWidth","ID" : "54","Type" : "pipeline"},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_U0", "RefName" : "conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config12_s","ID" : "55","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","RefName" : "ReadInputHeight_ReadInputWidth","ID" : "56","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_6u_config12_s_fu_208", "RefName" : "compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_6u_config12_s","ID" : "57","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_6u_config12_s_fu_240", "RefName" : "shift_line_buffer_array_ap_fixed_16_6_5_3_0_6u_config12_s","ID" : "58","Type" : "pipeline"},
				{"Name" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config12_mult_s_fu_388", "RefName" : "dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config12_mult_s","ID" : "59","Type" : "pipeline"},]},]},]},
	{"Name" : "add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_U0", "RefName" : "add_array_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config14_s","ID" : "60","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "AddLoop","RefName" : "AddLoop","ID" : "61","Type" : "pipeline"},]},
	{"Name" : "relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_U0", "RefName" : "relu_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_relu_config15_s","ID" : "62","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","RefName" : "ReLUActLoop","ID" : "63","Type" : "pipeline"},]},
	{"Name" : "zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_U0", "RefName" : "zeropad2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_6u_config36_s","ID" : "64","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config36_Pipeline_PadMain_fu_20", "RefName" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_6u_config36_Pipeline_PadMain","ID" : "65","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadMain","RefName" : "PadMain","ID" : "66","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_6u_config36_Pipeline_PadBottomWidth_fu_28", "RefName" : "zeropad2d_cl_array_array_ap_fixed_6u_config36_Pipeline_PadBottomWidth","ID" : "67","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","RefName" : "PadBottomWidth","ID" : "68","Type" : "pipeline"},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_U0", "RefName" : "conv_2d_cl_array_ap_fixed_6u_array_ap_fixed_16_6_5_3_0_8u_config16_s","ID" : "69","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","RefName" : "ReadInputHeight_ReadInputWidth","ID" : "70","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config16_s_fu_208", "RefName" : "compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config16_s","ID" : "71","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_6u_config16_s_fu_240", "RefName" : "shift_line_buffer_array_ap_fixed_16_6_5_3_0_6u_config16_s","ID" : "72","Type" : "pipeline"},
				{"Name" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config16_mult_s_fu_388", "RefName" : "dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config16_mult_s","ID" : "73","Type" : "pipeline"},]},]},]},
	{"Name" : "relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_U0", "RefName" : "relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config18_s","ID" : "74","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","RefName" : "ReLUActLoop","ID" : "75","Type" : "pipeline"},]},
	{"Name" : "clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_U0", "RefName" : "clone_stream_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_8192_s","ID" : "76","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "CloneLoop","RefName" : "CloneLoop","ID" : "77","Type" : "pipeline"},]},
	{"Name" : "zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_U0", "RefName" : "zeropad2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config37_s","ID" : "78","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config37_Pipeline_PadTopWidth_fu_22", "RefName" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config37_Pipeline_PadTopWidth","ID" : "79","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadTopWidth","RefName" : "PadTopWidth","ID" : "80","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config37_Pipeline_PadMain_fu_28", "RefName" : "zeropad2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config37_Pipeline_PadMain","ID" : "81","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadMain","RefName" : "PadMain","ID" : "82","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_8u_config37_Pipeline_PadBottomWidth_fu_36", "RefName" : "zeropad2d_cl_array_array_ap_fixed_8u_config37_Pipeline_PadBottomWidth","ID" : "83","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","RefName" : "PadBottomWidth","ID" : "84","Type" : "pipeline"},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_U0", "RefName" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config19_s","ID" : "85","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","RefName" : "ReadInputHeight_ReadInputWidth","ID" : "86","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config19_s_fu_260", "RefName" : "compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config19_s","ID" : "87","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_8u_config19_s_fu_300", "RefName" : "shift_line_buffer_array_ap_fixed_16_6_5_3_0_8u_config19_s","ID" : "88","Type" : "pipeline"},
				{"Name" : "grp_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config19_mult_s_fu_496", "RefName" : "dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config19_mult_s","ID" : "89","Type" : "pipeline"},]},]},]},
	{"Name" : "add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_U0", "RefName" : "add_array_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config21_s","ID" : "90","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "AddLoop","RefName" : "AddLoop","ID" : "91","Type" : "pipeline"},]},
	{"Name" : "relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_U0", "RefName" : "relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config22_s","ID" : "92","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","RefName" : "ReLUActLoop","ID" : "93","Type" : "pipeline"},]},
	{"Name" : "pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_U0", "RefName" : "pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_8u_config38_s","ID" : "94","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","RefName" : "ReadInputHeight_ReadInputWidth","ID" : "95","Type" : "pipeline"},]},
	{"Name" : "relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_U0", "RefName" : "relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_relu_config25_s","ID" : "96","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","RefName" : "ReLUActLoop","ID" : "97","Type" : "pipeline"},]},
	{"Name" : "pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_U0", "RefName" : "pointwise_conv_2d_cl_array_array_ap_fixed_16_6_5_3_0_1u_config39_s","ID" : "98","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","RefName" : "ReadInputHeight_ReadInputWidth","ID" : "99","Type" : "pipeline"},]},
	{"Name" : "sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_U0", "RefName" : "sigmoid_array_array_ap_fixed_16_6_5_3_0_1u_sigmoid_config28_s","ID" : "100","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "SigmoidActLoop","RefName" : "SigmoidActLoop","ID" : "101","Type" : "pipeline"},]},]
}]}