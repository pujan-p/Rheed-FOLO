# Inferred from syn.compile.pipeline_loops=64
set_directive_pipeline nnet::zeropad2d_cl<nnet::array<ap_fixed<10, 2, (ap_q_mode)5, (ap_o_mode)3, 0>, 8u>, nnet::array<ap_fixed<10, 2, (ap_q_mode)5, (ap_o_mode)3, 0>, 8u>, config35>/PadTopWidth
set_directive_pipeline nnet::zeropad2d_cl<nnet::array<ap_fixed<10, 2, (ap_q_mode)5, (ap_o_mode)3, 0>, 8u>, nnet::array<ap_fixed<10, 2, (ap_q_mode)5, (ap_o_mode)3, 0>, 8u>, config35>/PadMain
set_directive_pipeline nnet::zeropad2d_cl<nnet::array<ap_fixed<10, 2, (ap_q_mode)5, (ap_o_mode)3, 0>, 8u>, nnet::array<ap_fixed<10, 2, (ap_q_mode)5, (ap_o_mode)3, 0>, 8u>, config35>/PadBottomWidth
set_directive_pipeline nnet::zeropad2d_cl<nnet::array<ap_fixed<10, 2, (ap_q_mode)5, (ap_o_mode)3, 0>, 4u>, nnet::array<ap_fixed<10, 2, (ap_q_mode)5, (ap_o_mode)3, 0>, 4u>, config32>/CopyMain
# Inferred from performance & pipeline pragmas/directives
set_directive_loop_flatten nnet::conv_2d_cl<nnet::array<ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0>, 4u>, nnet::array<ap_fixed<10, 2, (ap_q_mode)5, (ap_o_mode)3, 0>, 4u>, config5>/ReadInputHeight
set_directive_loop_flatten nnet::pointwise_conv_2d_cl<nnet::array<ap_fixed<16, 6, (ap_q_mode)5, (ap_o_mode)3, 0>, 8u>, nnet::array<ap_fixed<36, 16, (ap_q_mode)5, (ap_o_mode)3, 0>, 1u>, config37>/ReadInputHeight
