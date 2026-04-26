#include <iostream>

#include "folo.h"
#include "parameters.h"


void folo(
    hls::stream<input_t> &input_2,
    hls::stream<result_t> &layer28_out
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS INTERFACE axis port=input_2,layer28_out 
    #pragma HLS DATAFLOW

    // hls-fpga-machine-learning insert load weights
#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        nnet::load_weights_from_txt<weight2_t, 36>(w2, "w2.txt");
        nnet::load_weights_from_txt<bias2_t, 4>(b2, "b2.txt");
        nnet::load_weights_from_txt<weight5_t, 144>(w5, "w5.txt");
        nnet::load_weights_from_txt<bias5_t, 4>(b5, "b5.txt");
        nnet::load_weights_from_txt<weight9_t, 216>(w9, "w9.txt");
        nnet::load_weights_from_txt<bias9_t, 6>(b9, "b9.txt");
        nnet::load_weights_from_txt<weight12_t, 324>(w12, "w12.txt");
        nnet::load_weights_from_txt<bias12_t, 6>(b12, "b12.txt");
        nnet::load_weights_from_txt<weight16_t, 432>(w16, "w16.txt");
        nnet::load_weights_from_txt<bias16_t, 8>(b16, "b16.txt");
        nnet::load_weights_from_txt<weight19_t, 576>(w19, "w19.txt");
        nnet::load_weights_from_txt<bias19_t, 8>(b19, "b19.txt");
        nnet::load_weights_from_txt<model_default_t, 64>(w23, "w23.txt");
        nnet::load_weights_from_txt<model_default_t, 8>(b23, "b23.txt");
        nnet::load_weights_from_txt<model_default_t, 8>(w26, "w26.txt");
        nnet::load_weights_from_txt<model_default_t, 1>(b26, "b26.txt");
        loaded_weights = true;    }
#endif
    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    hls::stream<layer32_t> layer32_out("layer32_out");
    #pragma HLS STREAM variable=layer32_out depth=100000

    hls::stream<layer2_t> layer2_out("layer2_out");
    #pragma HLS STREAM variable=layer2_out depth=1

    hls::stream<layer4_t> layer4_out("layer4_out");
    #pragma HLS STREAM variable=layer4_out depth=2

    hls::stream<layer4_t> layer29_cpy1("layer29_cpy1");
    #pragma HLS STREAM variable=layer29_cpy1 depth=45

    hls::stream<layer4_t> layer29_cpy2("layer29_cpy2");
    #pragma HLS STREAM variable=layer29_cpy2 depth=135

    hls::stream<layer33_t> layer33_out("layer33_out");
    #pragma HLS STREAM variable=layer33_out depth=236

    hls::stream<layer5_t> layer5_out("layer5_out");
    #pragma HLS STREAM variable=layer5_out depth=1

    hls::stream<layer7_t> layer7_out("layer7_out");
    #pragma HLS STREAM variable=layer7_out depth=2

    hls::stream<layer8_t> layer8_out("layer8_out");
    #pragma HLS STREAM variable=layer8_out depth=25

    hls::stream<layer34_t> layer34_out("layer34_out");
    #pragma HLS STREAM variable=layer34_out depth=120

    hls::stream<layer9_t> layer9_out("layer9_out");
    #pragma HLS STREAM variable=layer9_out depth=1

    hls::stream<layer11_t> layer11_out("layer11_out");
    #pragma HLS STREAM variable=layer11_out depth=2

    hls::stream<layer11_t> layer30_cpy1("layer30_cpy1");
    #pragma HLS STREAM variable=layer30_cpy1 depth=11

    hls::stream<layer11_t> layer30_cpy2("layer30_cpy2");
    #pragma HLS STREAM variable=layer30_cpy2 depth=69

    hls::stream<layer35_t> layer35_out("layer35_out");
    #pragma HLS STREAM variable=layer35_out depth=109

    hls::stream<layer12_t> layer12_out("layer12_out");
    #pragma HLS STREAM variable=layer12_out depth=1

    hls::stream<layer14_t> layer14_out("layer14_out");
    #pragma HLS STREAM variable=layer14_out depth=2

    hls::stream<layer15_t> layer15_out("layer15_out");
    #pragma HLS STREAM variable=layer15_out depth=6

    hls::stream<layer36_t> layer36_out("layer36_out");
    #pragma HLS STREAM variable=layer36_out depth=54

    hls::stream<layer16_t> layer16_out("layer16_out");
    #pragma HLS STREAM variable=layer16_out depth=1

    hls::stream<layer18_t> layer18_out("layer18_out");
    #pragma HLS STREAM variable=layer18_out depth=2

    hls::stream<layer18_t> layer31_cpy1("layer31_cpy1");
    #pragma HLS STREAM variable=layer31_cpy1 depth=3

    hls::stream<layer18_t> layer31_cpy2("layer31_cpy2");
    #pragma HLS STREAM variable=layer31_cpy2 depth=37

    hls::stream<layer37_t> layer37_out("layer37_out");
    #pragma HLS STREAM variable=layer37_out depth=61

    hls::stream<layer19_t> layer19_out("layer19_out");
    #pragma HLS STREAM variable=layer19_out depth=1

    hls::stream<layer21_t> layer21_out("layer21_out");
    #pragma HLS STREAM variable=layer21_out depth=2

    hls::stream<layer22_t> layer22_out("layer22_out");
    #pragma HLS STREAM variable=layer22_out depth=2

    hls::stream<layer23_t> layer23_out("layer23_out");
    #pragma HLS STREAM variable=layer23_out depth=2

    hls::stream<layer25_t> layer25_out("layer25_out");
    #pragma HLS STREAM variable=layer25_out depth=2

    hls::stream<layer26_t> layer26_out("layer26_out");
    #pragma HLS STREAM variable=layer26_out depth=2

    nnet::zeropad2d_cl<input_t, layer32_t, config32>(input_2, layer32_out); // zp2d_qconv2d_1_1

    nnet::conv_2d_cl<layer32_t, layer2_t, config2>(layer32_out, layer2_out, w2, b2); // qconv2d_1_1

    nnet::relu<layer2_t, layer4_t, relu_config4>(layer2_out, layer4_out); // qact_1_1

    nnet::clone_stream<layer4_t, layer4_t, 65536>(layer4_out, layer29_cpy1, layer29_cpy2); // clone_qact_1_1

    nnet::zeropad2d_cl<layer4_t, layer33_t, config33>(layer29_cpy1, layer33_out); // zp2d_qconv2d_1_2

    nnet::conv_2d_cl<layer33_t, layer5_t, config5>(layer33_out, layer5_out, w5, b5); // qconv2d_1_2

    nnet::add<layer4_t, layer5_t, layer7_t, config7>(layer29_cpy2, layer5_out, layer7_out); // add_1

    nnet::relu<layer7_t, layer8_t, relu_config8>(layer7_out, layer8_out); // qact_1_2

    nnet::zeropad2d_cl<layer8_t, layer34_t, config34>(layer8_out, layer34_out); // zp2d_qconv2d_2_1

    nnet::conv_2d_cl<layer34_t, layer9_t, config9>(layer34_out, layer9_out, w9, b9); // qconv2d_2_1

    nnet::relu<layer9_t, layer11_t, relu_config11>(layer9_out, layer11_out); // qact_2_1

    nnet::clone_stream<layer11_t, layer11_t, 24576>(layer11_out, layer30_cpy1, layer30_cpy2); // clone_qact_2_1

    nnet::zeropad2d_cl<layer11_t, layer35_t, config35>(layer30_cpy1, layer35_out); // zp2d_qconv2d_2_2

    nnet::conv_2d_cl<layer35_t, layer12_t, config12>(layer35_out, layer12_out, w12, b12); // qconv2d_2_2

    nnet::add<layer11_t, layer12_t, layer14_t, config14>(layer30_cpy2, layer12_out, layer14_out); // add_2

    nnet::relu<layer14_t, layer15_t, relu_config15>(layer14_out, layer15_out); // qact_2_2

    nnet::zeropad2d_cl<layer15_t, layer36_t, config36>(layer15_out, layer36_out); // zp2d_qconv2d_3_1

    nnet::conv_2d_cl<layer36_t, layer16_t, config16>(layer36_out, layer16_out, w16, b16); // qconv2d_3_1

    nnet::relu<layer16_t, layer18_t, relu_config18>(layer16_out, layer18_out); // qact_3_1

    nnet::clone_stream<layer18_t, layer18_t, 8192>(layer18_out, layer31_cpy1, layer31_cpy2); // clone_qact_3_1

    nnet::zeropad2d_cl<layer18_t, layer37_t, config37>(layer31_cpy1, layer37_out); // zp2d_qconv2d_3_2

    nnet::conv_2d_cl<layer37_t, layer19_t, config19>(layer37_out, layer19_out, w19, b19); // qconv2d_3_2

    nnet::add<layer18_t, layer19_t, layer21_t, config21>(layer31_cpy2, layer19_out, layer21_out); // add_3

    nnet::relu<layer21_t, layer22_t, relu_config22>(layer21_out, layer22_out); // qact_3_2

    nnet::pointwise_conv_2d_cl<layer22_t, layer23_t, config38>(layer22_out, layer23_out, w23, b23); // qconv2d_4

    nnet::relu<layer23_t, layer25_t, relu_config25>(layer23_out, layer25_out); // qact_4

    nnet::pointwise_conv_2d_cl<layer25_t, layer26_t, config39>(layer25_out, layer26_out, w26, b26); // qconv2d_5

    nnet::sigmoid<layer26_t, result_t, sigmoid_config28>(layer26_out, layer28_out); // sigmoid_out

}

