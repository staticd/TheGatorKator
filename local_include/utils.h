/*
 * utils.h
 *
 *  Created on: Apr 4, 2012
 *      Author: staticd
 */

#ifndef UTILS_H_
#define UTILS_H_

short playback();
void init_buffer();
void init_match_array(char m_a[2]);
void init_dist_array(char d_a[3]);
void init_fft_corr_buffer(float av_p[col_length]);
void init_fft_corr_vector(float fft_corr[2*col_length-1]);
void reset_leds();
void set_leds();
void toggle(int, int);

#endif /* UTILS_H_ */
