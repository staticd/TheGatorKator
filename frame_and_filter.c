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

//test
#include <stdio.h>

#define row_len 20000
#define threshold 1500 // set with max amp input and loudest audio to trigger sampling

int signal_on = 0;
int row_index = 0;
int call_count = 0;

int frame_and_filter(short sample, float *data) {

	int signal;
	int ret = 0;

	signal = detect_envelope(block_dc(sample));
//	printf("signal: %d\n", signal);

	if (signal_on) {

		if (row_index < row_len) {

			data[row_index] = filter_signal(sample);
//			printf("sample: %f\n", data[row_index]);
			call_count++;
//			printf("call_count: %d\n", call_count);
			if (call_count == 2) {

				row_index++;
				call_count = 0;
			}
		}
	}
	else if (signal > threshold) {

		signal_on = 1;
//		printf("signal: %d\n", signal);
	}

	if (row_index == row_len) {

		ret = row_index;
	}

	return ret;
}


