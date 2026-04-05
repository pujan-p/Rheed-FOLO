#ifndef FOLO_H_
#define FOLO_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"

#include "defines.h"


// Prototype of top level function for C-synthesis
void folo(
    hls::stream<input_t> &InputLayer,
    hls::stream<result_t> &layer12_out
);

// hls-fpga-machine-learning insert emulator-defines


#endif
