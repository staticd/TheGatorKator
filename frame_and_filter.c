/*
 * frame_and_filter.c
 *
 *  Created on: Mar 10, 2012
 *      Author: staticd
 */

#include <frame_and_filter.h>
#include <detect_envelope.h>
#include <block_dc.h>
#include <fir_filter.h>

#define row_len 23000
#define threshold 400

int signal_on = 0;
int row_index = 0;

int frame_and_filter(short sample, float *data) {

	int signal;
	int ret = 0;

	signal = detect_envelope(block_dc(sample));

	if (signal_on) {

		if (row_index < row_len) {

			data[row_index] = filter_signal(sample);
			row_index++;
		}
	}
	else if (signal > threshold) {

		signal_on = 1;
	}

	if (row_index == row_len) {

		ret = row_index;
	}

	return ret;
}


