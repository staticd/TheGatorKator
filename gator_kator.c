// dsk includes
#include <C6713dskinit.h>
#include <dsk6713_dip.h>
#include <dsk6713_led.h>

// library call includes
#include <stdio.h>

// custom includes
#include <frame_and_filter.h>
#include <xcorr.h>
#include <emif_lcd.h>

#define DSK6713_AIC23_INPUT_MIC 0x0015
#define DSK6713_AIC23_INPUT_LINE 0x0011

// this value should correspond with number of samples in correlation vector
#define row_len 2000

// set sample rate and input source
Uint32 fs = DSK6713_AIC23_FREQ_8KHZ; // set sampling rate
Uint16 inputsource = DSK6713_AIC23_INPUT_LINE; // select input source

/*****************************************************************************
 * Variable Declarations
 *****************************************************************************/
volatile int signal_status;
volatile int program_control;
int row_ind = 0;

/*****************************************************************************
 * Data Buffer Declarations
 *****************************************************************************/
#pragma DATA_SECTION(input_buffer, ".EXTRAM")
float input_buffer[row_len];

/*****************************************************************************
 * Function Prototypes
 *****************************************************************************/
short playback();

// interrupt service routine
interrupt void c_int11() {

	short sample_data;
	short out_sample;

	if (program_control == 0) {

		sample_data = input_left_sample();
		//printf("sample: %d\n", sample_data);
		signal_status = frame_and_filter(sample_data, input_buffer);
		out_sample = sample_data;
		if (signal_status > 0) {

			program_control = 1;
		}
		output_sample(out_sample);
	}

	if (program_control == 1) {

		out_sample = playback();
		output_sample(out_sample);
	}

	return;
}

void main() {

	comm_intr();	// initialize interrupts from c6713DSKinit.asm (codec, McBSP, and DSK)
	DSK6713_LED_init();	// initialize LEDs from dsk6713bsl.lib
	DSK6713_DIP_init();	// initialize DIP switches from dsk6713bsl.lib
	init_LCD(); // init LCD
	delay();
	send_LCD_characters();

	int i;
//	double match;
	program_control = 0;

	// initialize input buffer
	for(i = 0; i < row_len; i++) {

		input_buffer[i] = 0.0;
	}

	/*************************
	 * step 1: collect samples
	 *************************/

	// turn LED 0 on to signify beginning of interrupt service routine (ISR)
	DSK6713_LED_on(0);

	// collect samples
	while (program_control == 0);

	/*********************************************
	 * step 2: playback samples
	 * note: this will not be part of the release!
	 *********************************************/

	// turn LED 1 on to signify beginning of sample playback
	DSK6713_LED_on(1);

	// playback samples
	while (program_control == 1);

	/********************************************
	 * step 3: find cross-correlation coefficient
	 ********************************************/

	// turn led 2 on to signify beginning of cross-correlation for match
	DSK6713_LED_on(2);

//	match = xcorr(input_buffer);
//	printf("match is: %f", match);

	// show that we are done here!
	for (i = 0; i < 4; i++) {

		DSK6713_LED_toggle(i);
	}
}

short playback() {

	row_ind++;

	if (row_ind == row_len) program_control++;
	return (short)input_buffer[row_ind];
}


