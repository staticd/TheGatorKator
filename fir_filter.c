/*
 * fir_filter.c
 *
 *  Created on: Mar 4, 2012
 *      Author: staticd
 */

#include "four_k_lpf.h"
#include "fir_filter.h"

float x[204];	// this hard coded from NUMTAPS in four_k_lpf.h

float filter_signal(short sample) {

	float yn = 0.0;
	int i;
	x[0] = (float)(sample); // x[0] = sample --> block dc --> detect envelope

	for (i = 0; i < NUMTAPS; i++) yn += (taps[i] * x[i]); // y(n) = sum[ filter_coeff * x(n-i) ]

	for (i = NUMTAPS - 1; i > 0; i--) x[i] = x[i - 1]; // shift each input so we feed the transfer function

	return yn;
}


