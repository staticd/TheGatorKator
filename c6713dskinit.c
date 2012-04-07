//C6713dskinit.c Includes functions from TI in the C6713 CSL and C6713DSK BSL

#include <C6713dskinit.h>

#define using_bios // if BIOS don't use top of vector table

extern Uint32 fs; // for sampling frequency
extern Uint16 inputsource;

union data_union AIC_data;

MCBSP_Config AIC23CfgData = {
        MCBSP_FMKS(SPCR, FREE, NO)              |
        MCBSP_FMKS(SPCR, SOFT, NO)              |
        MCBSP_FMKS(SPCR, FRST, YES)             |
        MCBSP_FMKS(SPCR, GRST, YES)             |
        MCBSP_FMKS(SPCR, XINTM, XRDY)           |
        MCBSP_FMKS(SPCR, XSYNCERR, NO)          |
        MCBSP_FMKS(SPCR, XRST, YES)             |
        MCBSP_FMKS(SPCR, DLB, OFF)              |
        MCBSP_FMKS(SPCR, RJUST, RZF)            |
        MCBSP_FMKS(SPCR, CLKSTP, DISABLE)       |
        MCBSP_FMKS(SPCR, DXENA, OFF)            |
        MCBSP_FMKS(SPCR, RINTM, RRDY)           |
        MCBSP_FMKS(SPCR, RSYNCERR, NO)          |
        MCBSP_FMKS(SPCR, RRST, YES),

        MCBSP_FMKS(RCR, RPHASE, SINGLE)         |
        MCBSP_FMKS(RCR, RFRLEN2, DEFAULT)       |
        MCBSP_FMKS(RCR, RWDLEN2, DEFAULT)       |
        MCBSP_FMKS(RCR, RCOMPAND, MSB)          |
        MCBSP_FMKS(RCR, RFIG, NO)               |
        MCBSP_FMKS(RCR, RDATDLY, 0BIT)          |
        MCBSP_FMKS(RCR, RFRLEN1, OF(0))         | // This changes to 1 FRAME
        MCBSP_FMKS(RCR, RWDLEN1, 32BIT)         | // This changes to 32 bits per frame
        MCBSP_FMKS(RCR, RWDREVRS, DISABLE),

        MCBSP_FMKS(XCR, XPHASE, SINGLE)         |
        MCBSP_FMKS(XCR, XFRLEN2, DEFAULT)       |
        MCBSP_FMKS(XCR, XWDLEN2, DEFAULT)       |
        MCBSP_FMKS(XCR, XCOMPAND, MSB)          |
        MCBSP_FMKS(XCR, XFIG, NO)               |
        MCBSP_FMKS(XCR, XDATDLY, 0BIT)          |
        MCBSP_FMKS(XCR, XFRLEN1, OF(0))         | // This changes to 1 FRAME
        MCBSP_FMKS(XCR, XWDLEN1, 32BIT)         | // This changes to 32 bits per frame
        MCBSP_FMKS(XCR, XWDREVRS, DISABLE),

        MCBSP_FMKS(SRGR, GSYNC, DEFAULT)        |
        MCBSP_FMKS(SRGR, CLKSP, DEFAULT)        |
        MCBSP_FMKS(SRGR, CLKSM, DEFAULT)        |
        MCBSP_FMKS(SRGR, FSGM, DEFAULT)         |
        MCBSP_FMKS(SRGR, FPER, DEFAULT)         |
        MCBSP_FMKS(SRGR, FWID, DEFAULT)         |
        MCBSP_FMKS(SRGR, CLKGDV, DEFAULT),

        MCBSP_MCR_DEFAULT,
        MCBSP_RCER_DEFAULT,
        MCBSP_XCER_DEFAULT,

        MCBSP_FMKS(PCR, XIOEN, SP)              |
        MCBSP_FMKS(PCR, RIOEN, SP)              |
        MCBSP_FMKS(PCR, FSXM, EXTERNAL)         |
        MCBSP_FMKS(PCR, FSRM, EXTERNAL)         |
        MCBSP_FMKS(PCR, CLKXM, INPUT)           |
        MCBSP_FMKS(PCR, CLKRM, INPUT)           |
        MCBSP_FMKS(PCR, CLKSSTAT, DEFAULT)      |
        MCBSP_FMKS(PCR, DXSTAT, DEFAULT)        |
        MCBSP_FMKS(PCR, FSXP, ACTIVEHIGH)       |
        MCBSP_FMKS(PCR, FSRP, ACTIVEHIGH)       |
        MCBSP_FMKS(PCR, CLKXP, FALLING)         |
        MCBSP_FMKS(PCR, CLKRP, RISING)
};

/*
 * Line input gain:
 * 0x0017 is 0 dB gain
 * 0x0019 is 3 dB gain
 * 0x001B is 6 dB gain
 * 0x001F is 12 dB gain
 */
DSK6713_AIC23_Config config = { \
    0x0019, /* Set-Up Reg 0       Left line input channel volume control */  \
            /* LRS     0          simultaneous left/right volume: disabled */\
            /* LIM     0          left line input mute: disabled */          \
            /* XX      00         reserved */                                \
            /* LIV     10111      left line input volume: 0 dB */            \
                                                                             \
    0x0019, /* Set-Up Reg 1       Right line input channel volume control */ \
            /* RLS     0          simultaneous right/left volume: disabled */\
            /* RIM     0          right line input mute: disabled */         \
            /* XX      00         reserved */                                \
            /* RIV     10111      right line input volume: 0 dB */           \
                                                                             \
    0x01f9, /* Set-Up Reg 2       Left channel headphone volume control */   \
            /* LRS     1          simultaneous left/right volume: enabled */ \
            /* LZC     1          left channel zero-cross detect: enabled */ \
            /* LHV     1111001    left headphone volume: 0 dB */             \
                                                                             \
    0x01f9, /* Set-Up Reg 3       Right channel headphone volume control */  \
            /* RLS     1          simultaneous right/left volume: enabled */ \
            /* RZC     1          right channel zero-cross detect: enabled */\
            /* RHV     1111001    right headphone volume: 0 dB */            \
                                                                             \
    0x0015, /* Set-Up Reg 4       Analog audio path control */               \
            /* X       0          reserved */                                \
            /* STA     00         sidetone attenuation: -6 dB */             \
            /* STE     0          sidetone: disabled */                      \
            /* DAC     1          DAC: selected */                           \
            /* BYP     0          bypass: off */                             \
            /* INSEL   0          input select for ADC: line */              \
            /* MICM    0          microphone mute: disabled */               \
            /* MICB    1          microphone boost: enabled */               \
                                                                             \
    0x0000, /* Set-Up Reg 5       Digital audio path control */              \
            /* XXXXX   00000      reserved */                                \
            /* DACM    0          DAC soft mute: disabled */                 \
            /* DEEMP   00         deemphasis control: disabled */            \
            /* ADCHP   0          ADC high-pass filter: disabled */          \
                                                                             \
    0x0000, /* Set-Up Reg 6       Power down control */                      \
            /* X       0          reserved */                                \
            /* OFF     0          device power: on (i.e. not off) */         \
            /* CLK     0          clock: on */                               \
            /* OSC     0          oscillator: on */                          \
            /* OUT     0          outputs: on */                             \
            /* DAC     0          DAC: on */                                 \
            /* ADC     0          ADC: on */                                 \
            /* MIC     0          microphone: on */                          \
            /* LINE    0          line input: on */                          \
                                                                             \
    0x0043, /* Set-Up Reg 7       Digital audio interface format */          \
            /* XX      00         reserved */                                \
            /* MS      1          master/slave mode: master */               \
            /* LRSWAP  0          DAC left/right swap: disabled */           \
            /* LRP     0          DAC lrp: MSB on 1st BCLK */                \
            /* IWL     00         input bit length: 16 bit */                \
            /* FOR     11         data format: DSP format */                 \
                                                                             \
    0x0081, /* Set-Up Reg 8       Sample rate control */                     \
            /* X       0          reserved */                                \
            /* CLKOUT  1          clock output divider: 2 (MCLK/2) */        \
            /* CLKIN   0          clock input divider: 2 (MCLK/2) */         \
            /* SR,BOSR 00000      sampling rate: ADC  48 kHz DAC  48 kHz */  \
            /* USB/N   1          clock mode select (USB/normal): USB */     \
                                                                             \
    0x0001  /* Set-Up Reg 9       Digital interface activation */            \
            /* XX..X   00000000   reserved */                                \
            /* ACT     1          active */                                  \
};

DSK6713_AIC23_CodecHandle hAIC23_handle;

// dsp-peripheral initialization
void c6713_dsk_init() {

	// call BSL to init DSK-EMIF,PLL)
	DSK6713_init();

	// handle(pointer) to codec
	hAIC23_handle=DSK6713_AIC23_openCodec(0, &config);

	// set sample rate
	DSK6713_AIC23_setFreq(hAIC23_handle, fs);

	// choose mic or line in
	DSK6713_AIC23_rset(hAIC23_handle, 0x0004, inputsource);

	// interface 32 bits toAIC23
	MCBSP_config(DSK6713_AIC23_DATAHANDLE,&AIC23CfgData);

	// start data channel again
	MCBSP_start(DSK6713_AIC23_DATAHANDLE, MCBSP_XMIT_START | MCBSP_RCV_START |
			MCBSP_SRGR_START | MCBSP_SRGR_FRAMESYNC, 220);
}

// added for communication/init using polling
void comm_poll() {

	// 1 if using polling
	poll=1;

	// init DSP and codec
	c6713_dsk_init();
}

// for communication/init using interrupt
void comm_intr() {

	// 0 since not polling
	poll=0;

   	// disable interrupts
	IRQ_globalDisable();

	// init DSP and codec
	c6713_dsk_init();

	// McBSP1 Xmit
	CODECEventId=MCBSP_getXmtEventId(DSK6713_AIC23_codecdatahandle);

	// do not need to point to vector table
	#ifndef using_bios
	// point to the IRQ vector table
	IRQ_setVecs(vectors);
	// since interrupt vector handles this
	#endif

	// map McBSP1 Xmit to INT11
  	IRQ_map(CODECEventId, 11);

 	// reset codec INT 11
  	IRQ_reset(CODECEventId);

  	// globally enable interrupts
  	IRQ_globalEnable();

	// enable NMI interrupt
  	IRQ_nmiEnable();

  	// enable CODEC eventXmit INT11
  	IRQ_enable(CODECEventId);

	// start McBSP interrupt outputting a sample
	output_sample(0);
}

// for out to Left and Right channels
void output_sample(int out_data) {

	short CHANNEL_data;

    // clear data structure
	AIC_data.uint=0;

    // 32-bit data -->data structure
	AIC_data.uint=out_data;


	/********************************************************************************
	 *  The existing interface defaults to right channel. To default instead to the
	 * left channel and use output_sample(short), left and right channels are swapped
	 * In main source program use LEFT 0 and RIGHT 1 (opposite of what is used here)
	 ********************************************************************************/
	// swap left and right channels
	CHANNEL_data=AIC_data.channel[RIGHT];
	AIC_data.channel[RIGHT]=AIC_data.channel[LEFT];
	AIC_data.channel[LEFT]=CHANNEL_data;

	// if ready to transmit
	if (poll) while(!MCBSP_xrdy(DSK6713_AIC23_DATAHANDLE));

	// write/output data
	MCBSP_write(DSK6713_AIC23_DATAHANDLE,AIC_data.uint);
}

// for output from left channel
void output_left_sample(short out_data) {

    // clear data structure
	AIC_data.uint=0;

	// data from Left channel -->data structure
	AIC_data.channel[LEFT]=out_data;

	// if ready to transmit
	if (poll) while(!MCBSP_xrdy(DSK6713_AIC23_DATAHANDLE));

	// output left channel
	MCBSP_write(DSK6713_AIC23_DATAHANDLE,AIC_data.uint);
}

//for output from right channel
void output_right_sample(short out_data) {

    // clear data structure
	AIC_data.uint=0;

	// data from Right channel -->data structure
	AIC_data.channel[RIGHT]=out_data;

	// if ready to transmit
	if (poll) while(!MCBSP_xrdy(DSK6713_AIC23_DATAHANDLE));

	// output right channel
	MCBSP_write(DSK6713_AIC23_DATAHANDLE,AIC_data.uint);
}

// for 32-bit input
Uint32 input_sample() {

	short CHANNEL_data;

	// if ready to receive
	if (poll) while(!MCBSP_rrdy(DSK6713_AIC23_DATAHANDLE));

	// read data
	AIC_data.uint=MCBSP_read(DSK6713_AIC23_DATAHANDLE);

	/********************************************************************
	 * Swapping left and right channels (see comments in output_sample())
	 ********************************************************************/

	// swap left and right channel
	CHANNEL_data=AIC_data.channel[RIGHT];
	AIC_data.channel[RIGHT]=AIC_data.channel[LEFT];
	AIC_data.channel[LEFT]=CHANNEL_data;

	return(AIC_data.uint);
}

// input to left channel
short input_left_sample() {

	// if ready to receive
	if (poll) while(!MCBSP_rrdy(DSK6713_AIC23_DATAHANDLE));

	// read into left channel
	AIC_data.uint=MCBSP_read(DSK6713_AIC23_DATAHANDLE);

	// return left channel data
	return(AIC_data.channel[LEFT]);
}


// input to right channel
short input_right_sample() {

	// if ready to receive
	if (poll) while(!MCBSP_rrdy(DSK6713_AIC23_DATAHANDLE));

	// read into right channel
	AIC_data.uint=MCBSP_read(DSK6713_AIC23_DATAHANDLE);

	// return right channel data
	return(AIC_data.channel[RIGHT]);
}
