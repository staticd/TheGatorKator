/*
 * fir_filter.c
 *
 *  Created on: Mar 8, 2012
 *      Author: staticd
 */

#include <four_k_lpf.h>	// lpf filter coeffs type: short
#include <detect_envelope.h>

float x[N];	// initialize storage array

/*************************************************
 * Function: filter_signal is based on FIR4types.c
 * Written by Rulph Chassaing
 *************************************************/
float filter_signal(short sample) {

	float yn = 0.0;
	int i;

	x[0] = (float)detect_envelope(block_dc(sample));	// x[0] = sample --> block dc --> detect envelope

	for (i = 0; i < N; i++) yn += (h[i] * x[i]); // y(n) = sum[ filter_coeff * x(n-i) ]

	for (i = N -1; i > 0; i--) x[i] = x[i - 1];	// shift each input so we feed the transfer function

	return yn;
}
