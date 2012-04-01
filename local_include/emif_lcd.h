/*
 * emif_lcd.h
 *
 *  Created on: Mar 15, 2012
 *      Author: staticd
 */

#ifndef EMIF_LCD_H_
#define EMIF_LCD_H_

void set_LCD_characters(int t[], int b[]);
void send_LCD_characters();
void init_LCD();
void LCD_PUT_CMD(int data);
void LCD_PUT_CHAR(int data);
void delay_lcd();
void lcd_test();

#endif /* EMIF_LCD_H_ */
