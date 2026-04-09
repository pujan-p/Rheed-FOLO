#ifndef FOLO-QUINLYN_H_
#define FOLO-QUINLYN_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"

#include "defines.h"


// Prototype of top level function for C-synthesis
void folo-quinlyn(
    hls::stream<input_t> &InputLayer,
    hls::stream<result_t> &layer15_out
);

// hls-fpga-machine-learning insert emulator-defines


#endif
