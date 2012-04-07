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
#include <gator_kator.h>
#include <stdio.h>

#define threshold 1500 // set with max amp input and loudest audio to trigger sampling

int signal_on = 0;
int row_index = 0;

/****************************************************************************
 * We have instantiated the use of call_count to avoid having every other
 * sample equal 0.0.  This is because we are incrementing row_index each time
 * we call frame_and_filter and therefore have to account that we want the
 * appropriate sample put in the appropriate index of the buffer.
 *
 * This also ensures that we are not actually decimating by two and therefore
 * causing aliasing because we are then over sampling in that case.
 ****************************************************************************/
int call_count = 0;

int frame_and_filter(short sample, float *data) {

	int signal;
	int ret = 0;

	signal = detect_envelope(block_dc(sample));

	// debug
	// printf("signal: %d\n", signal);

	if (signal_on) {

		if (row_index < row_len) {

			data[row_index] = filter_signal(sample);

			// debug
			// printf("sample: %f\n", data[row_index]);
			call_count++;

			// debug
			// printf("call_count: %d\n", call_count);

			if (call_count == 2) {

				row_index++;
				call_count = 0;
			}
		}
	}
	else if (signal > threshold) {

		signal_on = 1;

		// debug
		// printf("signal: %d\n", signal);
	}

	if (row_index == row_len) {

		ret = row_index;
	}

	return ret;
}
