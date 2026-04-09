#include <iostream>

#include "folo.h"
#include "parameters.h"


void folo(
    hls::stream<input_t> &InputLayer,
    hls::stream<result_t> &layer15_out
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS INTERFACE axis port=InputLayer,layer15_out 
    #pragma HLS DATAFLOW

    // hls-fpga-machine-learning insert load weights
#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        nnet::load_weights_from_txt<model_default_t, 144>(w2, "w2.txt");
        nnet::load_weights_from_txt<model_default_t, 16>(b2, "b2.txt");
        nnet::load_weights_from_txt<model_default_t, 16>(s3, "s3.txt");
        nnet::load_weights_from_txt<model_default_t, 16>(b3, "b3.txt");
        nnet::load_weights_from_txt<model_default_t, 2304>(w6, "w6.txt");
        nnet::load_weights_from_txt<model_default_t, 16>(b6, "b6.txt");
        nnet::load_weights_from_txt<model_default_t, 16>(s7, "s7.txt");
        nnet::load_weights_from_txt<model_default_t, 16>(b7, "b7.txt");
        nnet::load_weights_from_txt<model_default_t, 2304>(w10, "w10.txt");
        nnet::load_weights_from_txt<model_default_t, 16>(b10, "b10.txt");
        nnet::load_weights_from_txt<model_default_t, 16>(s11, "s11.txt");
        nnet::load_weights_from_txt<model_default_t, 16>(b11, "b11.txt");
        nnet::load_weights_from_txt<model_default_t, 144>(w14, "w14.txt");
        nnet::load_weights_from_txt<model_default_t, 1>(b14, "b14.txt");
        loaded_weights = true;    }
#endif
    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    hls::stream<layer16_t> layer16_out("layer16_out");
    #pragma HLS STREAM variable=layer16_out depth=66564

    hls::stream<layer2_t> layer2_out("layer2_out");
    #pragma HLS STREAM variable=layer2_out depth=65536

    hls::stream<layer3_t> layer3_out("layer3_out");
    #pragma HLS STREAM variable=layer3_out depth=65536

    hls::stream<layer4_t> layer4_out("layer4_out");
    #pragma HLS STREAM variable=layer4_out depth=65536

    hls::stream<layer5_t> layer5_out("layer5_out");
    #pragma HLS STREAM variable=layer5_out depth=16384

    hls::stream<layer17_t> layer17_out("layer17_out");
    #pragma HLS STREAM variable=layer17_out depth=16900

    hls::stream<layer6_t> layer6_out("layer6_out");
    #pragma HLS STREAM variable=layer6_out depth=16384

    hls::stream<layer7_t> layer7_out("layer7_out");
    #pragma HLS STREAM variable=layer7_out depth=16384

    hls::stream<layer8_t> layer8_out("layer8_out");
    #pragma HLS STREAM variable=layer8_out depth=16384

    hls::stream<layer9_t> layer9_out("layer9_out");
    #pragma HLS STREAM variable=layer9_out depth=4096

    hls::stream<layer18_t> layer18_out("layer18_out");
    #pragma HLS STREAM variable=layer18_out depth=4356

    hls::stream<layer10_t> layer10_out("layer10_out");
    #pragma HLS STREAM variable=layer10_out depth=4096

    hls::stream<layer11_t> layer11_out("layer11_out");
    #pragma HLS STREAM variable=layer11_out depth=4096

    hls::stream<layer12_t> layer12_out("layer12_out");
    #pragma HLS STREAM variable=layer12_out depth=4096

    hls::stream<layer13_t> layer13_out("layer13_out");
    #pragma HLS STREAM variable=layer13_out depth=1024

    hls::stream<layer19_t> layer19_out("layer19_out");
    #pragma HLS STREAM variable=layer19_out depth=1156

    hls::stream<layer14_t> layer14_out("layer14_out");
    #pragma HLS STREAM variable=layer14_out depth=1024

    nnet::zeropad2d_cl<input_t, layer16_t, config16>(InputLayer, layer16_out); // zp2d_conv2d

    nnet::conv_2d_cl<layer16_t, layer2_t, config2>(layer16_out, layer2_out, w2, b2); // conv2d

    nnet::normalize<layer2_t, layer3_t, config3>(layer2_out, layer3_out, s3, b3); // batch_normalization

    nnet::thresholded_relu<layer3_t, model_default_t, layer4_t, thresholdedrelu_config4>(layer3_out, 0.0, layer4_out); // re_lu

    nnet::pooling2d_cl<layer4_t, layer5_t, config5>(layer4_out, layer5_out); // max_pooling2d

    nnet::zeropad2d_cl<layer5_t, layer17_t, config17>(layer5_out, layer17_out); // zp2d_conv2d_1

    nnet::conv_2d_cl<layer17_t, layer6_t, config6>(layer17_out, layer6_out, w6, b6); // conv2d_1

    nnet::normalize<layer6_t, layer7_t, config7>(layer6_out, layer7_out, s7, b7); // batch_normalization_1

    nnet::thresholded_relu<layer7_t, model_default_t, layer8_t, thresholdedrelu_config8>(layer7_out, 0.0, layer8_out); // re_lu_1

    nnet::pooling2d_cl<layer8_t, layer9_t, config9>(layer8_out, layer9_out); // max_pooling2d_1

    nnet::zeropad2d_cl<layer9_t, layer18_t, config18>(layer9_out, layer18_out); // zp2d_conv2d_2

    nnet::conv_2d_cl<layer18_t, layer10_t, config10>(layer18_out, layer10_out, w10, b10); // conv2d_2

    nnet::normalize<layer10_t, layer11_t, config11>(layer10_out, layer11_out, s11, b11); // batch_normalization_2

    nnet::thresholded_relu<layer11_t, model_default_t, layer12_t, thresholdedrelu_config12>(layer11_out, 0.0, layer12_out); // re_lu_2

    nnet::pooling2d_cl<layer12_t, layer13_t, config13>(layer12_out, layer13_out); // max_pooling2d_2

    nnet::zeropad2d_cl<layer13_t, layer19_t, config19>(layer13_out, layer19_out); // zp2d_x_prob

    nnet::conv_2d_cl<layer19_t, layer14_t, config14>(layer19_out, layer14_out, w14, b14); // x_prob

    nnet::sigmoid<layer14_t, result_t, sigmoid_config15>(layer14_out, layer15_out); // x_prob_sigmoid

}

