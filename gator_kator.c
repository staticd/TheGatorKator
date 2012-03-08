#include <DSK6713_aic23.h>	// codec support
#include <C6713dskinit.h>	// function support
#include <fir_filter.h>	// filter support

#define DSK6713_AIC23_INPUT_MIC 0x0015	// as defined in C6713dskinit.h
Uint32 fs = DSK6713_AIC23_FREQ_8KHZ;	// set sampling rate
Uint16 inputsource = DSK6713_AIC23_INPUT_MIC;	// select input
//
short left_sample, right_sample;

interrupt void c_int11() {

	left_sample = filter_signal(input_left_sample());
	right_sample = filter_signal(input_right_sample());
	output_left_sample(left_sample);
	output_right_sample(right_sample);

}

void main() {

	comm_intr(); // initialize interrupts from c6713DSKinit.asm (codec, McBSP, and DSK)
	DSK6713_LED_init(); // initialize LEDs from dsk6713bsl.lib
	DSK6713_DIP_init(); // initialize DIP switches from dsk6713bsl.lib

	while(1){};

}
