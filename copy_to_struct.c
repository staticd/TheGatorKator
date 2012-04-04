/*
 * copy_to_struct.c
 *
 *  Created on: Apr 1, 2012
 *      Author: staticd
 */

#include <gator_kator.h>

void copy_to_struct (float *real_data, struct complex_buffer *complex_data) {

	int ii;
	int jj = 0;
	int kk = 0;

	for (ii = 0; ii < row_len; ii++) {

		complex_data->data[jj][kk].real = real_data[ii];

		// jj max 128, kk max 256

		// kk --> fill frame with samples
		if (kk >= 256) {

			kk = 0;
		}
		else  {

			kk++;
		}

		/*
		 * TODO: determine if overlap is necessary for fft implementation
		 */

		// jj --> increment frame count when current frame is full
		// this implies no-overlap
		if ((kk >= 256) && (jj < 128)) {

			jj++;
		}
	}
}
