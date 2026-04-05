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
typedef ap_fixed<16,6> max_pooling2d_accum_t;
typedef nnet::array<ap_fixed<16,6>, 1*1> layer2_t;
typedef nnet::array<ap_fixed<16,6>, 1*1> layer13_t;
typedef ap_fixed<37,17> conv2d_1_accum_t;
typedef nnet::array<ap_fixed<37,17>, 16*1> conv2d_1_result_t;
typedef ap_fixed<16,6> conv2d_1_weight_t;
typedef ap_fixed<16,6> conv2d_1_bias_t;
typedef nnet::array<ap_fixed<16,6>, 16*1> layer5_t;
typedef ap_fixed<37,17> re_lu_1_param_t;
typedef ap_fixed<18,8> re_lu_1_table_t;
typedef ap_fixed<16,6> max_pooling2d_1_accum_t;
typedef nnet::array<ap_fixed<16,6>, 16*1> layer6_t;
typedef nnet::array<ap_fixed<16,6>, 16*1> layer14_t;
typedef ap_fixed<41,21> conv2d_2_accum_t;
typedef nnet::array<ap_fixed<41,21>, 16*1> conv2d_2_result_t;
typedef ap_fixed<16,6> conv2d_2_weight_t;
typedef ap_fixed<16,6> conv2d_2_bias_t;
typedef nnet::array<ap_fixed<16,6>, 16*1> layer9_t;
typedef ap_fixed<41,21> re_lu_2_param_t;
typedef ap_fixed<18,8> re_lu_2_table_t;
typedef ap_fixed<16,6> max_pooling2d_2_accum_t;
typedef nnet::array<ap_fixed<16,6>, 16*1> layer10_t;
typedef nnet::array<ap_fixed<16,6>, 16*1> layer15_t;
typedef ap_fixed<41,21> x_prob_accum_t;
typedef nnet::array<ap_fixed<41,21>, 1*1> x_prob_result_t;
typedef ap_fixed<16,6> x_prob_weight_t;
typedef ap_fixed<16,6> x_prob_bias_t;
typedef nnet::array<ap_fixed<16,6>, 1*1> result_t;
typedef ap_fixed<18,8> x_prob_sigmoid_table_t;

// hls-fpga-machine-learning insert emulator-defines


#endif
