/*
 * gator_kator.h
 *
 *  Created on: Apr 1, 2012
 *      Author: staticd
 */

#ifndef GATOR_KATOR_H_
#define GATOR_KATOR_H_

#define row_len 16384

// structure tag declarations
struct complex {

	float real;
	float imag;
};

struct buffer {

	struct complex data[row_len];
};

#endif /* GATOR_KATOR_H_ */
