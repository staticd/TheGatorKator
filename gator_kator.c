// TODO: Add sample data and scripts to project

// dsk includes
#include <C6713dskinit.h>
#include <dsk6713_dip.h>
#include <dsk6713_led.h>

// library call includes
#include <stdio.h>
#include <math.h>

// custom includes
#include <gator_kator.h>
#include <frame_and_filter.h>
#include <xcorr.h>
#include <emif_lcd.h>
#include <find_max.h>
#include <find_distance.h>
#include <soi.h>
#include <copy_to_struct.h>
#include <fft.h>
#include <power_spectrum.h>
#include <normalize_real.h>
#include <utils.h>

#define DSK6713_AIC23_INPUT_MIC 0x0015
#define DSK6713_AIC23_INPUT_LINE 0x0011

/******************************************************************
 * This is the max delay for distance finding correlation (samples)
 ******************************************************************/
#define dist_len 1024

/************************************************************************
 * This is the max delay for match finding correlation (samples)
 * -takes ~60 seconds to perform time domain correlation with this length
 ************************************************************************/
#define match_len row_len/4

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
volatile short program_control = 0;
volatile int lcd_control = 0;

// LCD strings
// TODO: need more granularity here
int collecting_top[16] = {67, 111, 108, 108, 101, 99, 116, 105, 110, 103, 32, 32, 32, 32, 32, 32}; // "Collecting"
int collecting_bot[16] = {83, 97, 109, 112, 108, 101, 115, 32, 32, 32, 32, 32, 32, 32, 32, 32}; // "Samples"
int signal_detected_top[16] = {83, 105, 103, 110, 97, 108, 32, 68, 101, 116, 101, 99, 116, 101, 100, 33}; // "Signal Detected!"
int signal_detected_bot[16] = {45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45}; // "----"
int distance_top[16] = {70, 105, 110, 100, 105, 110, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32}; // "Finding"
int distance_bot[16] = {68, 105, 115, 116, 97, 110, 99, 101, 32, 32, 32, 32, 32, 32, 32, 32}; // "Distance"
int match_top[16] = {70, 105, 110, 100, 105, 110, 103, 32, 32, 32, 32, 32, 32, 32, 32, 32}; // "Finding"
int match_bot[16] = {77, 97, 116, 99, 104, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32}; // "Match"
int match_percent_top[16] = {77, 97, 116, 99, 104, 58, 32, 88, 88, 37, 32, 32, 32, 32, 32, 32}; // "Match: XX%"
int match_percent_bot[16] = {68, 105, 115, 116, 97, 110, 99, 101, 58, 32, 48, 48, 48, 32, 102, 116}; // "Distance: xx ft"

/*****************************************************************************
 * Data Buffer Declarations
 *****************************************************************************/
#pragma DATA_SECTION(input_left_buffer, ".EXTRAM")
float input_left_buffer[row_len];

#pragma DATA_SECTION(input_right_buffer, ".EXTRAM")
float input_right_buffer[row_len];

// correlation vector length: 2*dist_len-1
#pragma DATA_SECTION(distance_corr_buffer, ".EXTRAM")
float distance_corr_buffer[2*dist_len-1];

// correlation vector length: 2*match_len-1
#pragma DATA_SECTION(match_corr_buffer, ".EXTRAM")
float match_corr_buffer[2*match_len-1];

#pragma DATA_SECTION(real_data_buffer, ".EXTRAM")
struct complex_buffer real_data_buffer;

#pragma DATA_SECTION(soi_data_buffer, ".EXTRAM")
struct complex_buffer soi_data_buffer;

void main() {

	comm_poll(); // initialize interrupts from c6713DSKinit.asm (codec, McBSP, and DSK)
	DSK6713_LED_init(); // initialize LEDs from dsk6713bsl.lib
	DSK6713_DIP_init(); // initialize DIP switches from dsk6713bsl.lib
	init_LCD(); // init LCD
	send_LCD_characters();

	// declare local variables
	short left_sample_data;
	short right_sample_data;
	float dist_max_buffer[2]; // 0-max, 1-lag
	float *dmb;
	float match_max_buffer[2]; // 0-max, 1-lag
	float *mmb;
	int match_percent;
	char match_array[2];
	char dist_array[3] = {48, 48, 48};
	int stages = 1;

	// initialize sample input buffers
	init_buffer();

	/*
	 * TODO: I think we realize now that the best way to find a match is with
	 * the use of the FFT.  If we don't do this, we are going to be continuously
	 * searching for this perfect match in time between the sample you have in
	 * soi.h and whatever samples you collect.
	 *
	 * A good approach might be to evaluate the two FFT vectors against each
	 * other and see what that gets you.
	 *
	 */

	// initialize soi_data_buffer
	copy_to_struct(soi, &soi_data_buffer); // copy soi to struct for fft
	fft(&soi_data_buffer, col_length, stages); // take fft of soi


	// TODO: you will have to change power spectrum to only take an array instead of the struct since that's what
	// we're after here.
	// TODO: get average for cross-correlation
	power_spectrum(&soi_data_buffer);

	// begin infinite process
	while(1) {

		// collect samples
		if ((DSK6713_DIP_get(0) == 0) && program_control == 0) {

			if (lcd_control == 0) {

				set_LCD_characters(collecting_top, collecting_bot);
				send_LCD_characters();
				lcd_control = 1;
			}

			if ((row_index > 0) && (lcd_control == 1)) {

				set_LCD_characters(signal_detected_top, signal_detected_bot);
				send_LCD_characters();
				lcd_control = 2;
			}

			// collect samples
			left_sample_data = input_left_sample();
			right_sample_data = input_right_sample();

			// pass samples to frame_and_filter until buffer is full
			left_signal_status = frame_and_filter(left_sample_data, input_left_buffer);
			right_signal_status = frame_and_filter(right_sample_data, input_right_buffer);

			signal_status = left_signal_status + right_signal_status;

			// show collecting samples is complete
			if (signal_status >= (2 * row_len)) {

				// normalize data for near scale invariant correlation
				normalize_real(input_left_buffer);
				/*
				 * TODO: We don't need to normalize input_right_buffer.  We
				 * should just copy input_left_buffer to a different array
				 * for the cross correlation that we do for distance later on
				 * in the signal processing path.  However, let's just keep it
				 * simple for now.
				 */
				normalize_real(input_right_buffer);

				// copy input_left_buffer to struct for fft processing
				copy_to_struct(input_left_buffer, &real_data_buffer);

				// take fft of real_data_buffer
				fft(&real_data_buffer, col_length, stages);

				// get power spectrum
				power_spectrum(&real_data_buffer);
				// TODO: take average of power spectrum

				DSK6713_LED_on(0);
				program_control = 1;
			}
		}

		// cross correlate left and right channels to get tau
		if ((DSK6713_DIP_get(1) == 0) && program_control == 1) {

			if (lcd_control == 2) {

				set_LCD_characters(distance_top, distance_bot);
				send_LCD_characters();
				lcd_control = 3;
			}

			// pass left and right buffers to xcorr
			xcorr(input_left_buffer, input_right_buffer, dist_len, distance_corr_buffer);

			// pointer gets reference to populated correlation vector with max value and its index
			dmb = find_max(distance_corr_buffer, 2*dist_len-1, dist_max_buffer);
			// printf("max corr: %f\n", dmb[0]);
			// printf("lag: %f\n", dmb[1]);
			// printf("distance: %f\n", find_distance(dmb[1]));

			program_control = 2;
			DSK6713_LED_on(1);
		}

		// cross correlate left channel with soi.h to get match
		if ((DSK6713_DIP_get(2) == 0) && program_control == 2) {

			if (lcd_control == 3) {

				set_LCD_characters(match_top, match_bot);
				send_LCD_characters();
				lcd_control = 4;
			}
			xcorr(input_left_buffer, soi, match_len, match_corr_buffer);
			mmb = find_max(match_corr_buffer, 2*match_len-1, match_max_buffer);
			// printf("match max corr: %f\n", mmb[0]);
			// printf("match lag: %f\n", mmb[1]);

			// convert mmb[0] to ascii for display on LCD
			match_percent = (int)floor((mmb[0] * 100));

			// NOTE: This can be tricky so watch for anomalies!
			sprintf(match_array, "%d", match_percent);

			// convert dmb[1] to ascii for display on LCD
			sprintf(dist_array, "%d", ceil(find_distance(dmb[1])));

			if (lcd_control == 4) {

				// populate top row values
				match_percent_top[7] = match_array[0];
				match_percent_top[8] = match_array[1];

				// Positions are [10] (100s) [11] (10s) [12] (1s)
				if (dist_array[0] == 48) {

					// 42 is `*' in ASCII we do this to denote the distance value is basically garbage right now
					match_percent_bot[10] = 42;
					// printf("**********dist_array: %s\n", dist_array);
				}
				else {

					// TODO: populate the reset when we can calculate distance!
				}

				set_LCD_characters(match_percent_top, match_percent_bot);
				send_LCD_characters();
				lcd_control = 5;
			}

			// TODO: cross correlate input spectrum with SOI spectrum to determine match

			program_control = 3;
			DSK6713_LED_on(2);
		}

		// reset
		if (DSK6713_DIP_get(3) == 0) {

			// TODO: reset does not work, must fix
			DSK6713_LED_on(3);
			program_control = -1;
			reset_leds();
			//toggle(3, 3);
			init_buffer();
			row_ind = 0;
			signal_status = 0;
			signal_on = 0; // frame_and_filter global
			row_index = 0; // frame_and_filter global
			program_control = 0;
			lcd_control = 0;
			DSK6713_LED_off(3);
		}
	}
}

