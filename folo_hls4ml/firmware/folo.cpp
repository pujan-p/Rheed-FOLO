#include <iostream>

#include "folo.h"
#include "parameters.h"


void folo(
    hls::stream<input_t> &InputLayer,
    hls::stream<result_t> &layer12_out
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS INTERFACE axis port=InputLayer,layer12_out 
    #pragma HLS DATAFLOW

    // hls-fpga-machine-learning insert load weights
#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        nnet::load_weights_from_txt<conv2d_1_weight_t, 144>(w3, "w3.txt");
        nnet::load_weights_from_txt<conv2d_1_bias_t, 16>(b3, "b3.txt");
        nnet::load_weights_from_txt<conv2d_2_weight_t, 2304>(w7, "w7.txt");
        nnet::load_weights_from_txt<conv2d_2_bias_t, 16>(b7, "b7.txt");
        nnet::load_weights_from_txt<x_prob_weight_t, 144>(w11, "w11.txt");
        nnet::load_weights_from_txt<x_prob_bias_t, 1>(b11, "b11.txt");
        loaded_weights = true;    }
#endif
    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    hls::stream<layer2_t> layer2_out("layer2_out");
    #pragma HLS STREAM variable=layer2_out depth=16384

    hls::stream<layer13_t> layer13_out("layer13_out");
    #pragma HLS STREAM variable=layer13_out depth=16900

    hls::stream<conv2d_1_result_t> layer3_out("layer3_out");
    #pragma HLS STREAM variable=layer3_out depth=16384

    hls::stream<layer5_t> layer5_out("layer5_out");
    #pragma HLS STREAM variable=layer5_out depth=16384

    hls::stream<layer6_t> layer6_out("layer6_out");
    #pragma HLS STREAM variable=layer6_out depth=4096

    hls::stream<layer14_t> layer14_out("layer14_out");
    #pragma HLS STREAM variable=layer14_out depth=4356

    hls::stream<conv2d_2_result_t> layer7_out("layer7_out");
    #pragma HLS STREAM variable=layer7_out depth=4096

    hls::stream<layer9_t> layer9_out("layer9_out");
    #pragma HLS STREAM variable=layer9_out depth=4096

    hls::stream<layer10_t> layer10_out("layer10_out");
    #pragma HLS STREAM variable=layer10_out depth=1024

    hls::stream<layer15_t> layer15_out("layer15_out");
    #pragma HLS STREAM variable=layer15_out depth=1156

    hls::stream<x_prob_result_t> layer11_out("layer11_out");
    #pragma HLS STREAM variable=layer11_out depth=1024

    nnet::pooling2d_cl<input_t, layer2_t, config2>(InputLayer, layer2_out); // max_pooling2d

    nnet::zeropad2d_cl<layer2_t, layer13_t, config13>(layer2_out, layer13_out); // zp2d_conv2d_1

    nnet::conv_2d_cl<layer13_t, conv2d_1_result_t, config3>(layer13_out, layer3_out, w3, b3); // conv2d_1

    nnet::thresholded_relu<conv2d_1_result_t, re_lu_1_param_t, layer5_t, thresholdedrelu_config5>(layer3_out, 0.0, layer5_out); // re_lu_1

    nnet::pooling2d_cl<layer5_t, layer6_t, config6>(layer5_out, layer6_out); // max_pooling2d_1

    nnet::zeropad2d_cl<layer6_t, layer14_t, config14>(layer6_out, layer14_out); // zp2d_conv2d_2

    nnet::conv_2d_cl<layer14_t, conv2d_2_result_t, config7>(layer14_out, layer7_out, w7, b7); // conv2d_2

    nnet::thresholded_relu<conv2d_2_result_t, re_lu_2_param_t, layer9_t, thresholdedrelu_config9>(layer7_out, 0.0, layer9_out); // re_lu_2

    nnet::pooling2d_cl<layer9_t, layer10_t, config10>(layer9_out, layer10_out); // max_pooling2d_2

    nnet::zeropad2d_cl<layer10_t, layer15_t, config15>(layer10_out, layer15_out); // zp2d_x_prob

    nnet::conv_2d_cl<layer15_t, x_prob_result_t, config11>(layer15_out, layer11_out, w11, b11); // x_prob

    nnet::sigmoid<x_prob_result_t, result_t, sigmoid_config12>(layer11_out, layer12_out); // x_prob_sigmoid

}

