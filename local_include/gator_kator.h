/*
 * gator_kator.h
 *
 *  Created on: Apr 1, 2012
 *      Author: staticd
 */

#ifndef GATOR_KATOR_H_
#define GATOR_KATOR_H_

#define row_len 16384
#define row_length 128
#define col_length 256

// structure tag declarations
struct complex {

	float real;
	float imag;
};

struct buffer {

	struct complex data[row_len];
};

struct complex_buffer {

	struct complex data[row_length][col_length];
};

#endif /* GATOR_KATOR_H_ */
