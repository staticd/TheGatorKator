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
volatile int left_signal_status;
volatile int right_signal_status;
volatile int signal_status;
volatile int row_ind = 0;

/*****************************************************************************
 * Data Buffer Declarations
 *****************************************************************************/
#pragma DATA_SECTION(input_left_buffer, ".EXTRAM")
float input_left_buffer[row_len];

#pragma DATA_SECTION(input_right_buffer, ".EXTRAM")
float input_right_buffer[row_len];

/*****************************************************************************
 * Function Prototypes
 *****************************************************************************/
short playback();
void init_buffer();

void main() {

	comm_poll();	// initialize interrupts from c6713DSKinit.asm (codec, McBSP, and DSK)
	DSK6713_LED_init();	// initialize LEDs from dsk6713bsl.lib
	DSK6713_DIP_init();	// initialize DIP switches from dsk6713bsl.lib
	init_LCD(); // init LCD
	delay();
	send_LCD_characters();

	// declare local variables
	short left_sample_data;
	short right_sample_data;

	init_buffer();

	// begin infinite process
	while(1) {

		if (DSK6713_DIP_get(0) == 0) {

			// collect samples
			left_sample_data = input_left_sample();
			right_sample_data = input_right_sample();

			// pass samples to fram_and_filter until buffer is full
			left_signal_status = frame_and_filter(left_sample_data, input_left_buffer);
			right_signal_status = frame_and_filter(right_sample_data, input_right_buffer);
			signal_status = left_signal_status + right_signal_status;

			if (signal_status == (2 * row_len)) {

				DSK6713_LED_on(0);
				playback();
			}
		}

		if (DSK6713_DIP_get(3)) {

			init_buffer();
			row_ind = 0;
		}
	}
}

short playback() {

	row_ind++;
	if (row_ind > row_len) return 0;
	return (short)input_left_buffer[row_ind];
}

void init_buffer() {

	int i;

	// initialize input buffer
	for(i = 0; i < row_len; i++) {

		input_left_buffer[i] = 0.0;
		input_right_buffer[i] = 0.0;
	}
}


