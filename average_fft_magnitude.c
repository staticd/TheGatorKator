/*
 * average_fft_magnitude.c
 *
 *  Created on: Apr 3, 2012
 *      Author: staticd
 */

#include <gator_kator.h>

float *average_fft_magnitude (struct complex_buffer *input, float *ret_buffer) {

	/*
	 * There are 128 frames and 256 samples/frame, with no overlap.  We want
	 * to return the reference to an array that holds the average value for
	 * over each frame.  This should give us a better idea as to the spectral
	 * content of the input signal and therefore a better use for our matching
	 * algorithm.
	 *
	 */

	int ii, jj;
	float sum = 0;

	/*
	 * TODO: This average looks like garbage because you are getting a bunch of
	 * #QNAN and #NAN values over the fft results.  This must be fixed.
	 */

	// find average along each column after computing power spectrum in power_spectrum.c
	for (ii = 0; ii < row_length; ii++) {

		for (jj = 0; jj < col_length; jj++) {

			sum += input->data[ii][jj].real;
		}

		ret_buffer[ii] = sum/col_length;
		sum = 0;
	}

	return ret_buffer;
}
