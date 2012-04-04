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

#endif /* GATOR_KATOR_H_ */