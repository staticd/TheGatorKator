/*
 * xcorr.c
 *
 *  Created on: Mar 11, 2012
 *      Author: staticd
 */

#include <xcorr.h>
#include <math.h>

int i, j;
int delay = 0;
double mx, my, sx, sy, sxy, denom;

void xcorr(float *x, float *y, int length, float *r) {

	int maxdelay = length/2;
	/* Calculate the mean of the two series x[], y[] */
	mx = 0;
	my = 0;
	for (i = 0; i < length; i++) {

		mx += x[i];

		my += y[i];
	}

	mx /= length;
	my /= length;

	/* Calculate the denominator */
	sx = 0;
	sy = 0;

	for (i = 0; i < length; i++) {

		sx += (x[i] - mx) * (x[i] - mx);
		sy += (y[i] - my) * (y[i] - my);
	}

	denom = sqrt(sx*sy);

	/* Calculate the correlation series */
	for (delay = -maxdelay; delay < maxdelay; delay++) {

		sxy = 0;

		for (i=0 ; i < length; i++) {

			j = i + delay;

			if (j < 0 || j >= length)
				continue;
			else
				sxy += (x[i] - mx) * (y[j] - my);

		}

		r[delay + maxdelay] = sxy / denom;
	}
}
