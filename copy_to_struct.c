/*
 * copy_to_struct.c
 *
 *  Created on: Apr 1, 2012
 *      Author: staticd
 */

#include <gator_kator.h>

#define row_len 16384 // 2^15

void copy_to_struct (float *real_data, struct buffer *complex_data) {

	int ii;

	//init buffer
	for (ii = 0; ii < row_len; ii++) {

		complex_data->data[ii].real = real_data[ii];
	}
}
