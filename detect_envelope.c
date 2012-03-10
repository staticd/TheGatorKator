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

	if (sample < 0) sample = -sample;	// rectify the signal

	word1 = envelope >> 15;	// high-order word
	word2 = envelope & 0x00007fff;	// low-order word

	// envelope = envelope*(1-coeff) + sample*coeff
	envelope = (word1 * (32768 - env_coeff)) +
					((word2 * (32768 - env_coeff)) >> 15) +
						sample * env_coeff;

	return envelope >> 15;
}
