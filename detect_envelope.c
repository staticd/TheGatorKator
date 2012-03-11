/*
 * detect_envelope.c
 *
 *  Created on: Mar 8, 2012
 *      Author: staticd
 */

#include <detect_envelope.h>
#include <block_dc.h>

// detect_envelope
#define env_coeff 4000	// 32768  envelope filter parameter
int envelope = 0;	// current sample of the signal envelope (32-bit)
// detect_envelope

/*********************************************************
 * Function: detect_envelope is based on detect_envelope.c
 * Written by Vasanthan Rangan and Sowmya Narayanan
 *********************************************************/
short detect_envelope(short sample)
{
	/*************************************
	 * If sample = 32767, envelope = 4065
	 * if sample = -32768, envelope = -431
	 *************************************/
	short word1,word2;

	// rectify the signal
	if (sample < 0) sample = -sample;

	// high-order word
	word1 = envelope >> 15;
	// low-order word
	word2 = envelope & 0x00007fff;

	// envelope = envelope*(1-coeff) + sample*coeff
	envelope = (word1 * (32768 - env_coeff)) +
					((word2 * (32768 - env_coeff)) >> 15) +
						sample * env_coeff;

	return envelope >> 15;
}
