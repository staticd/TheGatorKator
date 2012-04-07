/*
 * TODO:
 * -what is c6flo diagram?
 * -average power spectrum and correlate, compare with time domain
 */

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
#include <average_fft_magnitude.h>

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
int match_bot[16] = {77, 97, 116, 99, 104, 32, 40, 116, 105, 109, 101, 41, 32, 32, 32, 32}; // "Match (time)"
int match_bot1[16] = {77, 97, 116, 99, 104, 32, 40, 102, 114, 101, 113, 41, 32, 32, 32, 32}; // "Match (freq)"
int match_percent_top[16] = {77, 97, 116, 99, 104, 58, 32, 88, 88, 37, 32, 32, 32, 32, 32, 32}; // "Match: XX%"
int match_percent_bot[16] = {68, 105, 115, 116, 97, 110, 99, 101, 58, 32, 48, 48, 48, 32, 102, 116}; // "Distance: xx ft"
int reset_top[16] = {82, 101, 97, 100, 121, 33, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32}; // "Ready!"
int reset_bot[16] = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32}; // "[:space:]"
int ident_top[16] = {84, 104, 97, 116, 32, 115, 111, 117, 110, 100, 32, 32, 32, 32, 32, 32}; // "That sound"
int ident_bot[16] = {116, 104, 101, 114, 101, 39, 115, 32, 97, 32, 103, 97, 116, 111, 114, 33}; // "there's a gator!"
int ident_bot1[16] = {97, 105, 110, 39, 116, 32, 110, 111, 32, 103, 97, 116, 111, 114, 33, 32}; // "ain't no gator"

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

// test move back to main--for graphing globals in CCS
float average_fft_power_input[col_length];
float average_fft_power_soi[col_length];
float fft_corr_buffer[2*col_length-1];
// test move back to main

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
	char match_array[2] = {48, 126};
	char dist_array[3] = {48, 48, 48};
	int stages = 1;
	float *av_fft_power_soi;
	float *av_fft_power_input;
	int i;
	const int match_threshold = 55;

	// initialize sample input buffers
	init_buffer();

	// initialize soi_data_buffer
	copy_to_struct(soi, &soi_data_buffer); // copy soi to struct for fft
	fft(&soi_data_buffer, col_length, stages); // take fft of soi
	power_spectrum(&soi_data_buffer); // put power spectrum in real member
	av_fft_power_soi = average_fft_magnitude(&soi_data_buffer, average_fft_power_soi); // find average of 256 point fft

	// begin infinite process
	while(1) {

		// collect samples
		if ((DSK6713_DIP_get(0) == 0) && program_control == 0) {

			// indicate status to the user
			if (lcd_control == 0) {

				set_LCD_characters(collecting_top, collecting_bot);
				send_LCD_characters();
				lcd_control = 1;
			}

			// indicate status to the user
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

				fft(&real_data_buffer, col_length, stages); // take fft of real_data_buffer
				power_spectrum(&real_data_buffer); // get power spectrum
				av_fft_power_input = average_fft_magnitude(&real_data_buffer, average_fft_power_input); // find average of 256 point fft

				// indicate we are ready for the next stage
				DSK6713_LED_on(0);

				// move to the next stage
				program_control = 1;
			}
		}

		// cross correlate left and right channels to get tau and best match coefficients
		if ((DSK6713_DIP_get(1) == 0) && program_control == 1) {

			// indicate status to the user
			if (lcd_control == 2) {

				set_LCD_characters(distance_top, distance_bot);
				send_LCD_characters();
				lcd_control = 3;
			}

			// pass left and right buffers to xcorr to find lag for distance calculation
			xcorr(input_left_buffer, input_right_buffer, dist_len, distance_corr_buffer);

			// pointer gets reference to populated correlation vector with max value and its index
			dmb = find_max(distance_corr_buffer, 2*dist_len-1, dist_max_buffer);

			// debug
			// printf("max corr: %f\n", dmb[0]);
			// printf("lag: %f\n", dmb[1]);
			// printf("distance: %f\n", find_distance(dmb[1]));

			// indicate we are ready for the next stage
			DSK6713_LED_on(1);

			// move to the next stage
			program_control = 2;
		}

		// cross correlate left channel with soi.h to get match
		if ((DSK6713_DIP_get(2) == 0) && program_control == 2) {



			// if dip 0 and 1 and 2 are down, use fft correlation
			if ((DSK6713_DIP_get(0) == 0) && (DSK6713_DIP_get(1) == 0)) {

				// indicate status to the user
				if (lcd_control == 3) {

					set_LCD_characters(match_top, match_bot1);
					send_LCD_characters();
					lcd_control = 4;
				}

				xcorr(av_fft_power_input, av_fft_power_soi, 60, fft_corr_buffer);
				mmb = find_max(fft_corr_buffer, 2*col_length-1, match_max_buffer);
			}

			// if dip 0 is up, use time domain correlation
			else if (DSK6713_DIP_get(0) == 1) {

				// indicate status to the user
				if (lcd_control == 3) {

					set_LCD_characters(match_top, match_bot);
					send_LCD_characters();
					lcd_control = 4;
				}

				xcorr(input_left_buffer, soi, match_len, match_corr_buffer);
				mmb = find_max(match_corr_buffer, 2*match_len-1, match_max_buffer);
			}

			// debug
			// printf("match max corr: %f\n", mmb[0]);
			// printf("match lag: %f\n", mmb[1]);

			// convert mmb[0] to ascii for display on LCD
			match_percent = (int)floor((mmb[0] * 100));
			sprintf(match_array, "%d", match_percent);

			// convert dmb[1] to ascii for display on LCD
			sprintf(dist_array, "%d", ceil(find_distance(dmb[1])));

			if (lcd_control == 4) {

				// populate top row values
				if (match_array[1] == 0) { // only valid if behavior of sprintf is consistent

					// we do this to account for single digit percentages
					match_percent_top[7] = 32;
					match_percent_top[8] = match_array[0];
				}
				else {

					match_percent_top[7] = match_array[0];
					match_percent_top[8] = match_array[1];
				}


				// Positions are [10] (100s) [11] (10s) [12] (1s)
				if (dist_array[0] == 48) {

					// 42 is `*' in ASCII we do this to denote the distance value is basically garbage right now
					match_percent_bot[10] = 42;

					// debug
					// printf("**********dist_array: %s\n", dist_array);
				}
				else {

					// TODO: populate the reset when we can calculate distance!
				}

				set_LCD_characters(match_percent_top, match_percent_bot);
				send_LCD_characters();
				lcd_control = 5;
			}

			program_control = 3;
			DSK6713_LED_on(2);

			// delay display and move on
			for (i = 0; i <= 1000; i++) {

				delay_lcd();
			}

			if (match_percent >= match_threshold) {

				set_LCD_characters(ident_top, ident_bot);
				send_LCD_characters();
			}
			else {

				set_LCD_characters(ident_top, ident_bot1);
				send_LCD_characters();
			}
		}

		// reset
		if ((DSK6713_DIP_get(3) == 0) && (program_control != 0)) {

			reset_leds();
			DSK6713_LED_on(3);
			program_control = -1;
			init_buffer();
			init_match_array(match_array);
			init_dist_array(dist_array);
			init_fft_corr_buffer(average_fft_power_input);
			row_ind = 0;
			signal_status = 0;
			signal_on = 0; // frame_and_filter global
			row_index = 0; // frame_and_filter global
			program_control = 0;
			lcd_control = 0;
			DSK6713_LED_off(3);
			set_LCD_characters(reset_top, reset_bot);
			send_LCD_characters();
		}
	}
}
