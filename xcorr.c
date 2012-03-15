/*
 * xcorr.c
 *
 *  Created on: Mar 11, 2012
 *      Author: staticd
 */

#include <xcorr.h>
#include <signal_of_interest.h>
#include <math.h>

int i, j;
double mx, my, sx, sy, sxy, denom, r;

double xcorr(float *x) {

	int delay = 0;
	int maxdelay = n/2;
	/* Calculate the mean of the two series x[], y[] */
	mx = 0;
	my = 0;
	for (i = 0; i < n; i++) {

		mx += x[i];

		my += y[i];
	}

	mx /= n;
	my /= n;

	/* Calculate the denominator */
	sx = 0;
	sy = 0;

	for (i = 0; i < n; i++) {

		sx += (x[i] - mx) * (x[i] - mx);
		sy += (y[i] - my) * (y[i] - my);
	}

	denom = sqrt(sx*sy);

	/* Calculate the correlation series */
	for (delay = -maxdelay; delay < maxdelay; delay++) {

		sxy = 0;

		for (i=0 ; i < n; i++) {

			j = i + delay;

			while (j < 0) j += n;

			j %= n;

			sxy += (x[i] - mx) * (y[j] - my);

		}

		/* r is the correlation coefficient at "delay" */
		r = sxy / denom;
	}

	return r;
}

