/*
 * average_fft_magnitude.c
 *
 *  Created on: Apr 3, 2012
 *      Author: staticd
 */

#include <gator_kator.h>

void average_fft_magnitude (struct complex_buffer *input) {

	/*
	 * There are 128 frames and 256 samples/frame.  We want to return the
	 * reference to an array that holds the average value for over each frame.
	 * This should give us a better idea as to the spectral content of the
	 * input signal and therefore a better use for our matching algorithm.
	 *
	 */
}
