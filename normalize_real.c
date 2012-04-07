/*
 * normalize_real.c
 *
 *  Created on: Apr 3, 2012
 *      Author: staticd
 */

#include <gator_kator.h>

void normalize_real (float *data) {

	/**************************************************************************
	 * In this function, we want to normalize the signal so that the maximum
	 * amplitude is one.  We will do this prior to performing any other action.
	 *
	 * Therefore, the signal of interest (SOI) must be normalized, as well as
	 * the input signal for cross correlation.
	 *
	 * We are doing this to attempt a scaled invariant cross-correlation.
	 **************************************************************************/

	int ii;
	float max = 0.0;

	// find the maximum value in the array.
	for (ii = 0; ii < row_len; ii++) {

		if (data[ii] > max) {

			max = data[ii];
		}
	}

	// divide each element by the maximum.
	for (ii = 0; ii < row_len; ii++) {

		data[ii] = data[ii]/max;
	}

	return;
}
