/*
 * find_distance.c
 *
 *  Created on: Mar 29, 2012
 *      Author: staticd
 */

#include <math.h>

/*
 * TODO: deprecate
 * This function is not called.  We can use it when we add a third microphone
 * to the project.
 */

// speed of sound at sea level and room temp (ft/s)
#define SPEED_OF_SOUND 1116.43701

// distance between mics (ft)
#define MIC_DISTANCE 10.0

// this is the bias with no separation
#define DISTANCE_BIAS 61.0

float find_distance(float tau) {

	float t_not = MIC_DISTANCE/SPEED_OF_SOUND;
	float ret = (SPEED_OF_SOUND * fabsf(tau - t_not)) - DISTANCE_BIAS;
	return ret;
}
