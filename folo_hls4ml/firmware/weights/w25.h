//Numpy array shape [1, 1, 8, 1]
//Min -1.398516297340
//Max 0.368398219347
//Number of zeros 0

#ifndef W25_H_
#define W25_H_

#ifndef __SYNTHESIS__
conv2d_5_weight_t w25[8];
#else
conv2d_5_weight_t w25[8] = {0.3683982193, 0.2741602957, -1.3985162973, -0.6020431519, -0.2315986305, -0.4620798230, -0.3905901611, -0.6291933060};

#endif

#endif
