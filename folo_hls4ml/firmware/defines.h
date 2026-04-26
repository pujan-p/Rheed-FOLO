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
typedef nnet::array<ap_fixed<16,6>, 1*1> layer32_t;
typedef ap_fixed<16,6> model_default_t;
typedef nnet::array<ap_fixed<16,6>, 4*1> layer2_t;
typedef ap_fixed<8,1> weight2_t;
typedef ap_uint<1> bias2_t;
typedef nnet::array<ap_fixed<16,6>, 4*1> layer4_t;
typedef ap_fixed<18,8> qact_1_1_table_t;
typedef nnet::array<ap_fixed<16,6>, 4*1> layer33_t;
typedef nnet::array<ap_fixed<16,6>, 4*1> layer5_t;
typedef ap_fixed<8,1> weight5_t;
typedef ap_uint<1> bias5_t;
typedef nnet::array<ap_fixed<16,6>, 4*1> layer7_t;
typedef nnet::array<ap_fixed<16,6>, 4*1> layer8_t;
typedef ap_fixed<18,8> qact_1_2_table_t;
typedef nnet::array<ap_fixed<16,6>, 4*1> layer34_t;
typedef nnet::array<ap_fixed<16,6>, 6*1> layer9_t;
typedef ap_fixed<8,1> weight9_t;
typedef ap_uint<1> bias9_t;
typedef nnet::array<ap_fixed<16,6>, 6*1> layer11_t;
typedef ap_fixed<18,8> qact_2_1_table_t;
typedef nnet::array<ap_fixed<16,6>, 6*1> layer35_t;
typedef nnet::array<ap_fixed<16,6>, 6*1> layer12_t;
typedef ap_fixed<8,1> weight12_t;
typedef ap_uint<1> bias12_t;
typedef nnet::array<ap_fixed<16,6>, 6*1> layer14_t;
typedef nnet::array<ap_fixed<16,6>, 6*1> layer15_t;
typedef ap_fixed<18,8> qact_2_2_table_t;
typedef nnet::array<ap_fixed<16,6>, 6*1> layer36_t;
typedef nnet::array<ap_fixed<16,6>, 8*1> layer16_t;
typedef ap_fixed<8,1> weight16_t;
typedef ap_uint<1> bias16_t;
typedef nnet::array<ap_fixed<16,6>, 8*1> layer18_t;
typedef ap_fixed<18,8> qact_3_1_table_t;
typedef nnet::array<ap_fixed<16,6>, 8*1> layer37_t;
typedef nnet::array<ap_fixed<16,6>, 8*1> layer19_t;
typedef ap_fixed<8,1> weight19_t;
typedef ap_uint<1> bias19_t;
typedef nnet::array<ap_fixed<16,6>, 8*1> layer21_t;
typedef nnet::array<ap_fixed<16,6>, 8*1> layer22_t;
typedef ap_fixed<18,8> qact_3_2_table_t;
typedef nnet::array<ap_fixed<16,6>, 8*1> layer23_t;
typedef nnet::array<ap_fixed<16,6>, 8*1> layer25_t;
typedef ap_fixed<18,8> qact_4_table_t;
typedef nnet::array<ap_fixed<16,6>, 1*1> layer26_t;
typedef nnet::array<ap_fixed<16,6>, 1*1> result_t;
typedef ap_fixed<18,8> sigmoid_out_table_t;

// hls-fpga-machine-learning insert emulator-defines


#endif
