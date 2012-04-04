/*
 * power_spectrum.c
 *
 *  Created on: Apr 1, 2012
 *      Author: staticd
 */

#include <gator_kator.h>
#include <math.h>

power_spectrum(struct complex_buffer *fft_data) {

	int i,j;

	for (i = 0; i < row_length; i++) {

		//for each frame
		for ( j=0; j < col_length; j++) {

			// power: sqrt((real)^2 + (imaginary)^2)
			fft_data->data[i][j].real = sqrt(((fft_data->data[i][j].real)*(fft_data->data[i][j].real)) + ((fft_data->data[i][j].imag)*(fft_data->data[i][j].imag)));
		}
	}

	// TODO: need to normalize before return

	return; /* Return back to Main Function */
}
