/*
 * power_spectrum.c
 *
 *  Created on: Apr 1, 2012
 *      Author: staticd
 */

#include <gator_kator.h>

void power_spectrum (struct buffer *fft_data) {

	int ii;
	for (ii = 0; ii < row_len; ii++) {

		fft_data->data[ii].real = ((fft_data->data[ii].real)*(fft_data->data[ii].real))+ ((fft_data->data[ii].imag)*(fft_data->data[ii].imag));
	}

	return;
}
