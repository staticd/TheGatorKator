/*
 * block_dc.c
 *
 *  Created on: Mar 8, 2012
 *      Author: staticd
 */

#include <block_dc.h>

#define dc_coeff 10	// coefficient for the DC blocking filter

/**************************************************
 * Function: block_dc is based on block_dc.c
 * Written by Vasanthan Rangan and Sowmya Narayanan
 **************************************************/
short block_dc(short sample) {

	int dc = 0;	// current DC estimate (32-bit: SS30-bit)
	short word1,word2;

	if (dc < 0) {

		word1 = -((-dc) >> 15);	// equal to +1 for all values less than 0
		word2 = -((-dc) & 0x00007fff);	// equal to actual sample value
	}
	else {

		/***************************************************************
		 * word1 = high-order 15-bit word of dc ==> this is zero for all
		 * positive integers
		 ***************************************************************/
		word1 = dc >> 15;
		/******************************************************************
		 * word2 = low-order 15-bit word of dc ==> this is the dc value +dc
		 ******************************************************************/
		word2 = dc & 0x00007fff;
	}

	/***********************************************
	 * It turns out that this function just returns:
	 * 	if sample < 0 --> return sample - 1
	 * 	if sample > 0 --> return sample
	 ***********************************************/
	dc = word1 * (32767 - dc_coeff) +
			((word2 * (32767 - dc_coeff)) >> 15) +
				sample * dc_coeff;	// dc = dc*(1-coeff) + sample*coeff

	return sample - (dc >> 15);	// return sample - dc
}
