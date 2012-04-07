/*
 * find_max.c
 *
 *  Created on: Mar 29, 2012
 *      Author: staticd
 */

#include <math.h>
#include <stdio.h>

// test move back in scope--ccs global
float index = 0.0;
// test move back in scope--ccs global

float *find_max(float *a, int length, float *ret_buffer) {

	float max = a[0];

	float lag = 0.0;
	int i;
	float temp;
	const float samp_rate = 8000.0;

	for (i = 0; i < length; i++) {

		if (a[i] > max) {

			max = a[i];
			index = (float)i;

			// debug
			// printf("%f\n", index);
		}
	}

	ret_buffer[0] = max; // this is the max correlation coeff
	temp = index; //((float)(length/2) - index) * (1/samp_rate);

	// debug
	// printf("temp: %f\n", temp);
	// printf("index: %f\n", index);

	lag = fabsf(temp);
	ret_buffer[1] = lag;

	return ret_buffer;
}
