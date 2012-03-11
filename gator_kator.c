#include <C6713dskinit.h>
#include <fir_filter.h>
#include <frame_and_filter.h>
#include <dsk6713_dip.h>
#include <dsk6713_led.h>
#include <stdio.h>

#define DSK6713_AIC23_INPUT_MIC 0x0015
#define DSK6713_AIC23_INPUT_LINE 0x0011
// this value should correspond with number of samples in correlation vector
#define row_len 23000

// set sample rate and input
Uint32 fs = DSK6713_AIC23_FREQ_8KHZ; // set sampling rate
Uint16 inputsource = DSK6713_AIC23_INPUT_MIC; // select input

/*****************************************************************************
 * Variable Declarations
 *****************************************************************************/
int signal_status;
int program_control;

/*****************************************************************************
 * Data Buffer Declarations
 *****************************************************************************/
#pragma DATA_SECTION(input_buffer, ".EXTRAM")
float input_buffer[row_len];

// interrupt service routine
interrupt void c_int11() {

	short sample_data;
	short out_sample;

	if (program_control == 0) {

		sample_data = input_left_sample();

		signal_status = frame_and_filter(sample_data, input_buffer);

		out_sample = sample_data;
		output_left_sample(out_sample);

		if (signal_status > 0) {

			program_control = 1;
		}
	}

	return;
}

void main() {

	comm_intr();	// initialize interrupts from c6713DSKinit.asm (codec, McBSP, and DSK)
	DSK6713_LED_init();	// initialize LEDs from dsk6713bsl.lib
	DSK6713_DIP_init();	// initialize DIP switches from dsk6713bsl.lib

	int i;
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

	// show that we are done here!
	for (i = 0; i < 4; i++) {

		DSK6713_LED_toggle(i);
	}
}
