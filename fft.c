/*
 * fft.c
 *
 *  Created on: Apr 2, 2012
 *      Author: staticd
 */

#include <gator_kator.h>
#include <math.h>
#include <stdio.h>

#define PI 3.1415926

void fft (struct complex_buffer *input_data, int n, int m) {

	//	printf("computing fft\n");

	int n1; // difference between upper and lower
	int n2;
	int i, j, k, l; // counters
	int row_index; // frame counter
	float xt, yt; // temp real and imag variables, respectively
	float c, s; // cos and sin
	float e, a; // input to cos and sin

	// for each frame
	for (row_index = 0; row_index < row_length; row_index++) {

		// loop through each stage
		n2 = n;

		for (k = 0; k < m; k++) {

			n1 = n2;
			n2 = n2/2;
			e = PI/n1;
			// compute Twiddle Factors
			for (j = 0; j < n2; j++) {

				a = j*e;
				c = (float) cos(a);
				s = (float) sin(a);

				// do the Butterflies for all 256 samples
				for (i = j; i < n; i += n1) {

					l = i+n2;
					xt = input_data->data[row_index][i].real - input_data->data[row_index][l].real;
					input_data->data[row_index][i].real = input_data->data[row_index][i].real+input_data->data[row_index][l].real;
					yt = input_data->data[row_index][i].imag - input_data->data[row_index][l].imag;
					input_data->data[row_index][i].imag = input_data->data[row_index][i].imag+input_data->data[row_index][l].imag;
					input_data->data[row_index][l].real = c*xt + s*yt;
					input_data->data[row_index][l].imag = c*yt - s*yt;
				}
			}
		}

		// bit reversal
		j = 0;
		for (i = 0; i < n-1; i++) {

			if (i < j) {

				xt = input_data->data[row_index][j].real;
				input_data->data[row_index][j].real = input_data->data[row_index][i].real;
				input_data->data[row_index][i].real = xt;
				yt = input_data->data[row_index][j].imag;
				input_data->data[row_index][j].imag = input_data->data[row_index][i].imag;
				input_data->data[row_index][i].imag = yt;
			}
		}
	}

//	printf("done!!!\n");
	return;
}
