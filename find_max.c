/*
 * find_max.c
 *
 *  Created on: Mar 29, 2012
 *      Author: staticd
 */

#include <math.h>
#include <stdio.h>

float *find_max(float *a, int length, float *ret_buffer) {

	float max = a[0];
	int index = 0;
	float lag = 0.0;
	int i;
	float temp;
	const int samp_rate = 8000;

	for (i = 0; i < length; i++) {

		if (a[i] > max) {

			max = a[i];
			index = i;
		}
	}

	ret_buffer[0] = max; // this is the max correlation coeff

	temp = (length/2 - index) * (1/samp_rate);
	printf("temp: %f\n", temp);
	lag = fabsf(temp);

	ret_buffer[1] = lag;

	return ret_buffer;
}
