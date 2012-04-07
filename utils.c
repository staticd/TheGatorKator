/*
 * utils.c
 *
 *  Created on: Apr 4, 2012
 *      Author: staticd
 */

#include <gator_kator.h>
#include <dsk6713_dip.h>
#include <dsk6713_led.h>

short playback() {

	row_ind++;
	if (row_ind > row_len) return 0;
	return (short)input_left_buffer[row_ind];
}

void init_buffer() {

	int i, j;

	// initialize input buffers
	for(i = 0; i < row_len; i++) {

		input_left_buffer[i] = 0.0;
		input_right_buffer[i] = 0.0;
	}

	// initialize correlation buffers
	for (i = 0; i < 2*dist_len-1; i++) {

		distance_corr_buffer[i] = 0.0;
	}

	for (i = 0; i < 2*match_len-1; i++) {

		match_corr_buffer[i] = 0.0;
	}

	// initialize data structures
	for ( i=0; i < row_length ; i++ ) {

		for ( j = 0; j < col_length ; j++) {

			real_data_buffer.data[i][j].real = 0.0;
			real_data_buffer.data[i][j].imag = 0.0;
			soi_data_buffer.data[i][j].real = 0.0;
			soi_data_buffer.data[i][j].imag = 0.0;
		}
	}
}

void init_match_array(char *m_a) {

	int i;

	// indexes hard coded
	short init_m[2] = {48, 126};

	for (i = 0; i < 2; i++) {

		m_a[i] = init_m[i];
	}
}

void init_dist_array(char *d_a) {

	int i;

	// indexes hard coded
	short init_d[3] = {48, 48, 48};

	for (i = 0; i < 3; i++) {

		d_a[i] = init_d[i];
	}

}

void init_fft_corr_buffer(float *av_p) {

	int i;

	for (i = 0; i < col_length; i++) {

		av_p[i] = 0.0;
	}
}

void reset_leds() {

	int i;
	for (i = 0; i < 4; i++) {

		DSK6713_LED_off(i);
	}
}

void init_fft_corr_vector (float *fft_corr) {

	int i;

	for (i = 0; i < 2*col_length-1; i++) {

		fft_corr[i] = 0.0;
	}
}

void set_leds() {

	int i;
	for (i = 0; i < 4; i++) {

		DSK6713_LED_on(i);

	}
}

void toggle(int i, int dip) {

	int q = 0;
	int junk = 2;
	while (DSK6713_DIP_get(dip) == 0) {

		DSK6713_LED_toggle(i);
		for (q = 0; q < 800000; q++) junk = junk*junk;
	}
}
