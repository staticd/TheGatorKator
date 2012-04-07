/*
 * gator_kator.h
 *
 *  Created on: Apr 1, 2012
 *      Author: staticd
 */

#ifndef GATOR_KATOR_H_
#define GATOR_KATOR_H_

#define row_len 16384
#define row_length 128 // number of frames
#define col_length 256 // samples per frame

#define DSK6713_AIC23_INPUT_MIC 0x0015
#define DSK6713_AIC23_INPUT_LINE 0x0011

/******************************************************************
 * This is the max delay for distance finding correlation (samples)
 ******************************************************************/
#define dist_len 1024

/************************************************************************
 * This is the max delay for match finding correlation (samples)
 * -takes ~60 seconds to perform time domain correlation with this length
 ************************************************************************/
#define match_len row_len/4

// structure tag declarations
struct complex {

	float real;
	float imag;
};

struct buffer {

	struct complex data[row_len];
};

struct complex_buffer {

	struct complex data[row_length][col_length]; // 128 frames @ 256 samples/frame
};

// extern variables for utils
extern float input_left_buffer[row_len];
extern float input_right_buffer[row_len];
extern float distance_corr_buffer[2*dist_len-1];
extern float match_corr_buffer[2*match_len-1];
extern struct complex_buffer real_data_buffer;
extern struct complex_buffer soi_data_buffer;
extern volatile int row_ind;

#endif /* GATOR_KATOR_H_ */
