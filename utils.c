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

	for ( i=0; i < row_length ; i++ ) {

		for ( j = 0; j < col_length ; j++) {

			real_data_buffer.data[i][j].real = 0.0;
			real_data_buffer.data[i][j].imag = 0.0;
			soi_data_buffer.data[i][j].real = 0.0;
			soi_data_buffer.data[i][j].imag = 0.0;
		}
	}
}

void reset_leds() {

	int i;
	for (i = 0; i < 4; i++) {

		DSK6713_LED_off(i);
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

