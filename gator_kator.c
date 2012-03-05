/******************************************************************************
 * Program: gator_kator.c
 * Author: Natt Day
 * Description:
 * Notes:
 * +	Any file that is part of the main library file that I intend on
 * changing was formally added to the project.  So far they include:
 * 	. C6713.cmd
 * 	. C6713dskinit.h
 * 	. C6713dskinit.c
 * + Pulse_length * Fs = 1.5 * 8e3 = 12000 samples per pulse
 * + Pause_length * Fs = 2.4 * 8e3 = 19200 samples per pause
 * + Use -ppo option to get preprocessor files and look for errors
 * 	. Just type "preprocessor" into build options search and check -ppo box
 * TODO:
 * + Need to low pass filter before band pass filtering
 * + Figure out how long processes are taking using time.h
 * + Add anti-aliasing filter prior to signal_on detection
 *****************************************************************************/
#include <stdio.h>
#include <math.h>
#include <time.h>

#include "dsk6713_aic23.h"	// codec support
#include "four_k_lpf.h"	// lpf filter coeffs type: short

//f this
#define DSK6713_AIC23_INPUT_MIC 0x0015
#define DSK6713_AIC23_INPUT_LINE 0x0011

/******************************************************************************
 * Here, I set Fs to be 8 kHz.  This is because most of the energy in the nine
 * samples I have is between 0 and 4 kHz.  Now, one of the samples has some
 * frequency componenets out to 12 kHz so that is something to consider down
 * the road.  For now, I set Fs to get as much data into one buffer as possible
 * and that helps make sure the application is very fast.
 *****************************************************************************/
Uint32 fs = DSK6713_AIC23_FREQ_8KHZ;   //set sampling rate
Uint16 inputsource = DSK6713_AIC23_INPUT_MIC;	//select input

// filter_signal
float filter_signal(short);	// function prototype
float x[B];	// initialize samples
// filter_signal

// block_dc
short block_dc(short);	// function prototype
#define dc_coeff 10	// coefficient for the DC blocking filter
// block_dc

// detect_envelope
short detect_envelope(short);	// function prototype
#define env_coeff 4000	// 32768  envelope filter parameter
int envelope = 0;	// current sample of the signal envelope (32-bit)
// detect_envelope

// threshold
#define threshold 400	// for short (data type) samples
// threshold

///////////////////////////////////////////////////////////////////////////////
// function prototypes for C6713init.h and functions defined in csl6713.lib

/*******************************************************************************
 * I have had to manually prototype the functions in C6713init.h because every
 * time I include C6713init.h, there are variables that are not externed.  Thus,
 * I manually add them here to make sure they are called correctly.  Luckily,
 * when c6713dskinit.c compiles, it is referring to the correct header file so
 * there aren't any worries there.
 ******************************************************************************/

short input_left_sample();
void output_sample(int);
void comm_intr();

// found in dsk6713_led.h online, defined in csl6713.lib
void DSK6713_LED_init();
void DSK6713_LED_on(Uint32);
void DSK6713_LED_off(Uint32);
void DSK6713_LED_toggle(Uint32);
// found in dsk6713_led.h online, defined in csl6713.lib

// found in dsk6713_dip.h online, defined in csl6713.lib
void DSK6713_DIP_init();
Uint32 DSK6713_DIP_get(Uint32);
// found in dsk6713_dip.h online, defined in csl6713.lib

// function prototypes for C6713init.h and functions defined in csl6713.lib
///////////////////////////////////////////////////////////////////////////////

interrupt void c_int11() {

	return;
}

/*************************************************
 * Function: filter_signal is based on FIR4types.c
 * Written by Rulph Chassaing
 *************************************************/
float filter_signal(short sample) {

	float yn = 0.0;
	int i;
	x[0] = (float)detect_envelope(block_dc(sample));	// x[0] = sample --> block dc --> detect envelope

	for (i = 0; i < B; i++) yn += (h[i] * x[i]); // y(n) = sum[ filter_coeff * x(n-i) ]

	for (i = B -1; i > 0; i--) x[i] = x[i - 1];	// shift each input so we feed the transfer function

	return yn;
}

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
	 *
	 * We need a much better dc blocker than this!
	 ***********************************************/
	dc = word1 * (32767 - dc_coeff) +
			((word2 * (32767 - dc_coeff)) >> 15) +
				sample * dc_coeff;	// dc = dc*(1-coeff) + sample*coeff

	return sample - (dc >> 15);	// return sample - dc
}

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

void main() {

	comm_intr();	// initialize interrupts from c6713DSKinit.asm (codec, McBSP, and DSK)
	DSK6713_LED_init();	// initialize LEDs from dsk6713bsl.lib
	DSK6713_DIP_init();	// initialize DIP switches from dsk6713bsl.lib

}
