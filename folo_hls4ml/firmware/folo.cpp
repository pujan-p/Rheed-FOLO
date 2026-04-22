#include <iostream>

#include "folo.h"
#include "parameters.h"


void folo(
    hls::stream<input_t> &input_layer,
    hls::stream<result_t> &layer26_out
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS INTERFACE axis port=input_layer,layer26_out 
    #pragma HLS DATAFLOW

    // hls-fpga-machine-learning insert load weights
#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        nnet::load_weights_from_txt<model_default_t, 36>(w2, "w2.txt");
        nnet::load_weights_from_txt<bias2_t, 4>(b2, "b2.txt");
        nnet::load_weights_from_txt<model_default_t, 4>(s3, "s3.txt");
        nnet::load_weights_from_txt<model_default_t, 4>(b3, "b3.txt");
        nnet::load_weights_from_txt<model_default_t, 144>(w5, "w5.txt");
        nnet::load_weights_from_txt<bias5_t, 4>(b5, "b5.txt");
        nnet::load_weights_from_txt<model_default_t, 4>(s6, "s6.txt");
        nnet::load_weights_from_txt<model_default_t, 4>(b6, "b6.txt");
        nnet::load_weights_from_txt<model_default_t, 216>(w9, "w9.txt");
        nnet::load_weights_from_txt<bias9_t, 6>(b9, "b9.txt");
        nnet::load_weights_from_txt<model_default_t, 6>(s10, "s10.txt");
        nnet::load_weights_from_txt<model_default_t, 6>(b10, "b10.txt");
        nnet::load_weights_from_txt<model_default_t, 324>(w12, "w12.txt");
        nnet::load_weights_from_txt<bias12_t, 6>(b12, "b12.txt");
        nnet::load_weights_from_txt<model_default_t, 6>(s13, "s13.txt");
        nnet::load_weights_from_txt<model_default_t, 6>(b13, "b13.txt");
        nnet::load_weights_from_txt<model_default_t, 432>(w16, "w16.txt");
        nnet::load_weights_from_txt<bias16_t, 8>(b16, "b16.txt");
        nnet::load_weights_from_txt<model_default_t, 8>(s17, "s17.txt");
        nnet::load_weights_from_txt<model_default_t, 8>(b17, "b17.txt");
        nnet::load_weights_from_txt<model_default_t, 576>(w19, "w19.txt");
        nnet::load_weights_from_txt<bias19_t, 8>(b19, "b19.txt");
        nnet::load_weights_from_txt<model_default_t, 8>(s20, "s20.txt");
        nnet::load_weights_from_txt<model_default_t, 8>(b20, "b20.txt");
        nnet::load_weights_from_txt<model_default_t, 64>(w23, "w23.txt");
        nnet::load_weights_from_txt<model_default_t, 8>(b23, "b23.txt");
        nnet::load_weights_from_txt<model_default_t, 8>(w25, "w25.txt");
        nnet::load_weights_from_txt<model_default_t, 1>(b25, "b25.txt");
        loaded_weights = true;    }
#endif
    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    hls::stream<layer30_t> layer30_out("layer30_out");
    #pragma HLS STREAM variable=layer30_out depth=66049

    hls::stream<layer2_t> layer2_out("layer2_out");
    #pragma HLS STREAM variable=layer2_out depth=16384

    hls::stream<layer3_t> layer3_out("layer3_out");
    #pragma HLS STREAM variable=layer3_out depth=16384

    hls::stream<layer4_t> layer4_out("layer4_out");
    #pragma HLS STREAM variable=layer4_out depth=16384

    hls::stream<layer4_t> layer27_cpy1("layer27_cpy1");
    #pragma HLS STREAM variable=layer27_cpy1 depth=16384

    hls::stream<layer4_t> layer27_cpy2("layer27_cpy2");
    #pragma HLS STREAM variable=layer27_cpy2 depth=16384

    hls::stream<layer31_t> layer31_out("layer31_out");
    #pragma HLS STREAM variable=layer31_out depth=16900

    hls::stream<layer5_t> layer5_out("layer5_out");
    #pragma HLS STREAM variable=layer5_out depth=16384

    hls::stream<layer6_t> layer6_out("layer6_out");
    #pragma HLS STREAM variable=layer6_out depth=16384

    hls::stream<layer7_t> layer7_out("layer7_out");
    #pragma HLS STREAM variable=layer7_out depth=16384

    hls::stream<layer8_t> layer8_out("layer8_out");
    #pragma HLS STREAM variable=layer8_out depth=16384

    hls::stream<layer32_t> layer32_out("layer32_out");
    #pragma HLS STREAM variable=layer32_out depth=16641

    hls::stream<layer9_t> layer9_out("layer9_out");
    #pragma HLS STREAM variable=layer9_out depth=4096

    hls::stream<layer10_t> layer10_out("layer10_out");
    #pragma HLS STREAM variable=layer10_out depth=4096

    hls::stream<layer11_t> layer11_out("layer11_out");
    #pragma HLS STREAM variable=layer11_out depth=4096

    hls::stream<layer11_t> layer28_cpy1("layer28_cpy1");
    #pragma HLS STREAM variable=layer28_cpy1 depth=4096

    hls::stream<layer11_t> layer28_cpy2("layer28_cpy2");
    #pragma HLS STREAM variable=layer28_cpy2 depth=4096

    hls::stream<layer33_t> layer33_out("layer33_out");
    #pragma HLS STREAM variable=layer33_out depth=4356

    hls::stream<layer12_t> layer12_out("layer12_out");
    #pragma HLS STREAM variable=layer12_out depth=4096

    hls::stream<layer13_t> layer13_out("layer13_out");
    #pragma HLS STREAM variable=layer13_out depth=4096

    hls::stream<layer14_t> layer14_out("layer14_out");
    #pragma HLS STREAM variable=layer14_out depth=4096

    hls::stream<layer15_t> layer15_out("layer15_out");
    #pragma HLS STREAM variable=layer15_out depth=4096

    hls::stream<layer34_t> layer34_out("layer34_out");
    #pragma HLS STREAM variable=layer34_out depth=4225

    hls::stream<layer16_t> layer16_out("layer16_out");
    #pragma HLS STREAM variable=layer16_out depth=1024

    hls::stream<layer17_t> layer17_out("layer17_out");
    #pragma HLS STREAM variable=layer17_out depth=1024

    hls::stream<layer18_t> layer18_out("layer18_out");
    #pragma HLS STREAM variable=layer18_out depth=1024

    hls::stream<layer18_t> layer29_cpy1("layer29_cpy1");
    #pragma HLS STREAM variable=layer29_cpy1 depth=1024

    hls::stream<layer18_t> layer29_cpy2("layer29_cpy2");
    #pragma HLS STREAM variable=layer29_cpy2 depth=1024

    hls::stream<layer35_t> layer35_out("layer35_out");
    #pragma HLS STREAM variable=layer35_out depth=1156

    hls::stream<layer19_t> layer19_out("layer19_out");
    #pragma HLS STREAM variable=layer19_out depth=1024

    hls::stream<layer20_t> layer20_out("layer20_out");
    #pragma HLS STREAM variable=layer20_out depth=1024

    hls::stream<layer21_t> layer21_out("layer21_out");
    #pragma HLS STREAM variable=layer21_out depth=1024

    hls::stream<layer22_t> layer22_out("layer22_out");
    #pragma HLS STREAM variable=layer22_out depth=1024

    hls::stream<layer23_t> layer23_out("layer23_out");
    #pragma HLS STREAM variable=layer23_out depth=1024

    hls::stream<layer24_t> layer24_out("layer24_out");
    #pragma HLS STREAM variable=layer24_out depth=1024

    hls::stream<layer25_t> layer25_out("layer25_out");
    #pragma HLS STREAM variable=layer25_out depth=1024

    nnet::zeropad2d_cl<input_t, layer30_t, config30>(input_layer, layer30_out); // zp2d_conv2d

    nnet::conv_2d_cl<layer30_t, layer2_t, config2>(layer30_out, layer2_out, w2, b2); // conv2d

    nnet::normalize<layer2_t, layer3_t, config3>(layer2_out, layer3_out, s3, b3); // batch_normalization

    nnet::thresholded_relu<layer3_t, model_default_t, layer4_t, thresholdedrelu_config4>(layer3_out, 0.0, layer4_out); // re_lu

    nnet::clone_stream<layer4_t, layer4_t, 65536>(layer4_out, layer27_cpy1, layer27_cpy2); // clone_re_lu

    nnet::zeropad2d_cl<layer4_t, layer31_t, config31>(layer27_cpy1, layer31_out); // zp2d_conv2d_1

    nnet::conv_2d_cl<layer31_t, layer5_t, config5>(layer31_out, layer5_out, w5, b5); // conv2d_1

    nnet::normalize<layer5_t, layer6_t, config6>(layer5_out, layer6_out, s6, b6); // batch_normalization_1

    nnet::add<layer4_t, layer6_t, layer7_t, config7>(layer27_cpy2, layer6_out, layer7_out); // add

    nnet::thresholded_relu<layer7_t, model_default_t, layer8_t, thresholdedrelu_config8>(layer7_out, 0.0, layer8_out); // re_lu_1

    nnet::zeropad2d_cl<layer8_t, layer32_t, config32>(layer8_out, layer32_out); // zp2d_conv2d_2

    nnet::conv_2d_cl<layer32_t, layer9_t, config9>(layer32_out, layer9_out, w9, b9); // conv2d_2

    nnet::normalize<layer9_t, layer10_t, config10>(layer9_out, layer10_out, s10, b10); // batch_normalization_2

    nnet::thresholded_relu<layer10_t, model_default_t, layer11_t, thresholdedrelu_config11>(layer10_out, 0.0, layer11_out); // re_lu_2

    nnet::clone_stream<layer11_t, layer11_t, 24576>(layer11_out, layer28_cpy1, layer28_cpy2); // clone_re_lu_2

    nnet::zeropad2d_cl<layer11_t, layer33_t, config33>(layer28_cpy1, layer33_out); // zp2d_conv2d_3

    nnet::conv_2d_cl<layer33_t, layer12_t, config12>(layer33_out, layer12_out, w12, b12); // conv2d_3

    nnet::normalize<layer12_t, layer13_t, config13>(layer12_out, layer13_out, s13, b13); // batch_normalization_3

    nnet::add<layer11_t, layer13_t, layer14_t, config14>(layer28_cpy2, layer13_out, layer14_out); // add_1

    nnet::thresholded_relu<layer14_t, model_default_t, layer15_t, thresholdedrelu_config15>(layer14_out, 0.0, layer15_out); // re_lu_3

    nnet::zeropad2d_cl<layer15_t, layer34_t, config34>(layer15_out, layer34_out); // zp2d_conv2d_4

    nnet::conv_2d_cl<layer34_t, layer16_t, config16>(layer34_out, layer16_out, w16, b16); // conv2d_4

    nnet::normalize<layer16_t, layer17_t, config17>(layer16_out, layer17_out, s17, b17); // batch_normalization_4

    nnet::thresholded_relu<layer17_t, model_default_t, layer18_t, thresholdedrelu_config18>(layer17_out, 0.0, layer18_out); // re_lu_4

    nnet::clone_stream<layer18_t, layer18_t, 8192>(layer18_out, layer29_cpy1, layer29_cpy2); // clone_re_lu_4

    nnet::zeropad2d_cl<layer18_t, layer35_t, config35>(layer29_cpy1, layer35_out); // zp2d_conv2d_5

    nnet::conv_2d_cl<layer35_t, layer19_t, config19>(layer35_out, layer19_out, w19, b19); // conv2d_5

    nnet::normalize<layer19_t, layer20_t, config20>(layer19_out, layer20_out, s20, b20); // batch_normalization_5

    nnet::add<layer18_t, layer20_t, layer21_t, config21>(layer29_cpy2, layer20_out, layer21_out); // add_2

    nnet::thresholded_relu<layer21_t, model_default_t, layer22_t, thresholdedrelu_config22>(layer21_out, 0.0, layer22_out); // re_lu_5

    nnet::pointwise_conv_2d_cl<layer22_t, layer23_t, config36>(layer22_out, layer23_out, w23, b23); // conv2d_6

    nnet::relu<layer23_t, layer24_t, relu_config24>(layer23_out, layer24_out); // conv2d_6_relu

    nnet::pointwise_conv_2d_cl<layer24_t, layer25_t, config37>(layer24_out, layer25_out, w25, b25); // conv2d_7

    nnet::sigmoid<layer25_t, result_t, sigmoid_config26>(layer25_out, layer26_out); // conv2d_7_sigmoid

}

