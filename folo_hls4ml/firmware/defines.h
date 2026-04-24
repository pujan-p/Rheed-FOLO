#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <array>
#include <cstddef>
#include <cstdio>
#include <tuple>
#include <tuple>


// hls-fpga-machine-learning insert numbers

// hls-fpga-machine-learning insert layer-precision
typedef nnet::array<ap_fixed<16,6>, 1*1> input_t;
typedef nnet::array<ap_fixed<16,6>, 1*1> layer30_t;
typedef ap_fixed<10,2> conv2d_1_1_accum_t;
typedef nnet::array<ap_fixed<10,2>, 4*1> layer2_t;
typedef ap_fixed<10,2> conv2d_1_1_weight_t;
typedef ap_uint<1> bias2_t;
typedef nnet::array<ap_fixed<27,9>, 4*1> b_1_1_result_t;
typedef ap_fixed<16,6> b_1_1_scale_t;
typedef ap_fixed<16,6> b_1_1_bias_t;
typedef nnet::array<ap_fixed<16,6>, 4*1> layer4_t;
typedef ap_fixed<27,9> re_lu_param_t;
typedef ap_fixed<18,8> re_lu_table_t;
typedef nnet::array<ap_fixed<16,6>, 4*1> layer31_t;
typedef ap_fixed<10,2> conv2d_1_2_accum_t;
typedef nnet::array<ap_fixed<10,2>, 4*1> layer5_t;
typedef ap_fixed<10,2> conv2d_1_2_weight_t;
typedef ap_uint<1> bias5_t;
typedef nnet::array<ap_fixed<27,9>, 4*1> b_1_2_result_t;
typedef ap_fixed<16,6> b_1_2_scale_t;
typedef ap_fixed<16,6> b_1_2_bias_t;
typedef nnet::array<ap_fixed<28,10>, 4*1> add_result_t;
typedef nnet::array<ap_fixed<10,2>, 4*1> layer8_t;
typedef ap_fixed<10,2> re_lu_1_param_t;
typedef ap_fixed<18,8> re_lu_1_table_t;
typedef nnet::array<ap_fixed<10,2>, 4*1> layer32_t;
typedef ap_fixed<10,2> conv2d_2_1_accum_t;
typedef nnet::array<ap_fixed<10,2>, 6*1> layer9_t;
typedef ap_fixed<10,2> conv2d_2_1_weight_t;
typedef ap_uint<1> bias9_t;
typedef nnet::array<ap_fixed<27,9>, 6*1> b_2_1_result_t;
typedef ap_fixed<16,6> b_2_1_scale_t;
typedef ap_fixed<16,6> b_2_1_bias_t;
typedef nnet::array<ap_fixed<10,2>, 6*1> layer11_t;
typedef ap_fixed<10,2> re_lu_2_param_t;
typedef ap_fixed<18,8> re_lu_2_table_t;
typedef nnet::array<ap_fixed<10,2>, 6*1> layer33_t;
typedef ap_fixed<10,2> conv2d_2_2_accum_t;
typedef nnet::array<ap_fixed<10,2>, 6*1> layer12_t;
typedef ap_fixed<10,2> conv2d_2_2_weight_t;
typedef ap_uint<1> bias12_t;
typedef nnet::array<ap_fixed<27,9>, 6*1> b_2_2_result_t;
typedef ap_fixed<16,6> b_2_2_scale_t;
typedef ap_fixed<16,6> b_2_2_bias_t;
typedef nnet::array<ap_fixed<28,10>, 6*1> add_1_result_t;
typedef nnet::array<ap_fixed<10,2>, 6*1> layer15_t;
typedef ap_fixed<10,2> re_lu_3_param_t;
typedef ap_fixed<18,8> re_lu_3_table_t;
typedef nnet::array<ap_fixed<10,2>, 6*1> layer34_t;
typedef ap_fixed<10,2> conv2d_3_1_accum_t;
typedef nnet::array<ap_fixed<10,2>, 8*1> layer16_t;
typedef ap_fixed<10,2> conv2d_3_1_weight_t;
typedef ap_uint<1> bias16_t;
typedef nnet::array<ap_fixed<27,9>, 8*1> b_3_1_result_t;
typedef ap_fixed<16,6> b_3_1_scale_t;
typedef ap_fixed<16,6> b_3_1_bias_t;
typedef nnet::array<ap_fixed<10,2>, 8*1> layer18_t;
typedef ap_fixed<10,2> re_lu_4_param_t;
typedef ap_fixed<18,8> re_lu_4_table_t;
typedef nnet::array<ap_fixed<10,2>, 8*1> layer35_t;
typedef ap_fixed<10,2> conv2d_3_2_accum_t;
typedef nnet::array<ap_fixed<10,2>, 8*1> layer19_t;
typedef ap_fixed<10,2> conv2d_3_2_weight_t;
typedef ap_uint<1> bias19_t;
typedef nnet::array<ap_fixed<27,9>, 8*1> b_3_2_result_t;
typedef ap_fixed<16,6> b_3_2_scale_t;
typedef ap_fixed<16,6> b_3_2_bias_t;
typedef nnet::array<ap_fixed<28,10>, 8*1> add_2_result_t;
typedef nnet::array<ap_fixed<10,2>, 8*1> layer22_t;
typedef ap_fixed<10,2> re_lu_5_param_t;
typedef ap_fixed<18,8> re_lu_5_table_t;
typedef ap_fixed<30,12> conv2d_4_accum_t;
typedef nnet::array<ap_fixed<30,12>, 8*1> conv2d_4_result_t;
typedef ap_fixed<16,6> conv2d_4_weight_t;
typedef ap_fixed<16,6> conv2d_4_bias_t;
typedef nnet::array<ap_fixed<16,6>, 8*1> layer24_t;
typedef ap_fixed<18,8> conv2d_4_relu_table_t;
typedef ap_fixed<36,16> conv2d_5_accum_t;
typedef nnet::array<ap_fixed<36,16>, 1*1> conv2d_5_result_t;
typedef ap_fixed<16,6> conv2d_5_weight_t;
typedef ap_fixed<16,6> conv2d_5_bias_t;
typedef nnet::array<ap_fixed<16,6>, 1*1> result_t;
typedef ap_fixed<18,8> conv2d_5_sigmoid_table_t;

// hls-fpga-machine-learning insert emulator-defines


#endif
