/*
 * average_fft_magnitude.c
 *
 *  Created on: Apr 3, 2012
 *      Author: staticd
 */

#include <gator_kator.h>

float *average_fft_magnitude (struct complex_buffer *input, float *ret_buffer) {

	/*
	 * There are 128 frames and 256 samples/frame.  We want to return the
	 * reference to an array that holds the average value for over each frame.
	 * This should give us a better idea as to the spectral content of the
	 * input signal and therefore a better use for our matching algorithm.
	 *
	 */

	int ii, jj;
	float sum = 0;

	// find average along each column
	for (ii = 0; ii < col_length; ii++) {

		for (jj = 0; jj < row_length; jj++) {

			sum += input->data[jj][ii].real;
		}

		ret_buffer[ii] = sum/col_length;
	}

	return ret_buffer;
}
