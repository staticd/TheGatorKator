;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v6.0.8 *
;* Date/Time created: Mon Aug 29 15:24:04 2011                                *
;******************************************************************************
	.compiler_opts --c64p_l1d_workaround=default --endian=little --hll_source=on --mem_model:code=near --mem_model:data=far --silicon_version=6710 --symdebug:dwarf 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C671x                                          *
;*   Optimization      : Disabled                                             *
;*   Optimizing for    : Compile time, Ease of Development                    *
;*                       Based on options: no -o, no -ms                      *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far                                                  *
;*   Pipelining        : Disabled                                             *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : DWARF Debug                                          *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("c6713dskinit.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v6.0.8 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
;*****************************************************************************
;* CINIT RECORDS                                                             *
;*****************************************************************************
	.sect	".cinit"
	.align	8
	.field  	$C$IR_1,32
	.field  	_AIC23CfgData+0,32
	.field  	0,32			; _AIC23CfgData._spcr @ 0
	.field  	160,32			; _AIC23CfgData._rcr @ 32
	.field  	160,32			; _AIC23CfgData._xcr @ 64
	.field  	536870913,32			; _AIC23CfgData._srgr @ 96
	.field  	0,32			; _AIC23CfgData._mcr @ 128
	.field  	0,32			; _AIC23CfgData._rcer @ 160
	.field  	0,32			; _AIC23CfgData._xcer @ 192
	.field  	3,32			; _AIC23CfgData._pcr @ 224
$C$IR_1:	.set	32

	.sect	".cinit"
	.align	8
	.field  	$C$IR_2,32
	.field  	_config+0,32
	.field  	23,32			; _config._regs[0] @ 0
	.field  	23,32			; _config._regs[1] @ 32
	.field  	505,32			; _config._regs[2] @ 64
	.field  	505,32			; _config._regs[3] @ 96
	.field  	21,32			; _config._regs[4] @ 128
	.field  	0,32			; _config._regs[5] @ 160
	.field  	0,32			; _config._regs[6] @ 192
	.field  	67,32			; _config._regs[7] @ 224
	.field  	129,32			; _config._regs[8] @ 256
	.field  	1,32			; _config._regs[9] @ 288
$C$IR_2:	.set	40


$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_map")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_IRQ_map")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
$C$DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$1


$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_enable")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_IRQ_enable")
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
$C$DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$4


$C$DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_reset")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_IRQ_reset")
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
$C$DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$6


$C$DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_globalEnable")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_IRQ_globalEnable")
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external

$C$DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_globalDisable")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_IRQ_globalDisable")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external

$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_nmiEnable")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_IRQ_nmiEnable")
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external

$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_init")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_DSK6713_init")
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external

$C$DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("MCBSP_start")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_MCBSP_start")
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
$C$DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$49)
$C$DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
$C$DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$12


$C$DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("MCBSP_getXmtEventId")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_MCBSP_getXmtEventId")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
$C$DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$49)
	.dwendtag $C$DW$16


$C$DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("MCBSP_read")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_MCBSP_read")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
$C$DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$49)
	.dwendtag $C$DW$18


$C$DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("MCBSP_write")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_MCBSP_write")
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
$C$DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$49)
$C$DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$20


$C$DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("MCBSP_xrdy")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_MCBSP_xrdy")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$23, DW_AT_declaration
	.dwattr $C$DW$23, DW_AT_external
$C$DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$49)
	.dwendtag $C$DW$23


$C$DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("MCBSP_rrdy")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_MCBSP_rrdy")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_external
$C$DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$49)
	.dwendtag $C$DW$25


$C$DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("MCBSP_config")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_MCBSP_config")
	.dwattr $C$DW$27, DW_AT_declaration
	.dwattr $C$DW$27, DW_AT_external
$C$DW$28	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$49)
$C$DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$55)
	.dwendtag $C$DW$27


$C$DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_rset")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_DSK6713_AIC23_rset")
	.dwattr $C$DW$30, DW_AT_declaration
	.dwattr $C$DW$30, DW_AT_external
$C$DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$58)
$C$DW$32	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$59)
$C$DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$59)
	.dwendtag $C$DW$30


$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_openCodec")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_DSK6713_AIC23_openCodec")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
$C$DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$74)
	.dwendtag $C$DW$34


$C$DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("DSK6713_AIC23_setFreq")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_DSK6713_AIC23_setFreq")
	.dwattr $C$DW$37, DW_AT_declaration
	.dwattr $C$DW$37, DW_AT_external
$C$DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$58)
$C$DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$37

$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("DSK6713_AIC23_codecdatahandle")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_DSK6713_AIC23_codecdatahandle")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$40, DW_AT_declaration
	.dwattr $C$DW$40, DW_AT_external
	.global	_AIC_data
_AIC_data:	.usect	".far",4,4
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("AIC_data")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_AIC_data")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_addr _AIC_data]
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$41, DW_AT_external
_CODECEventId:	.usect	".far",4,4
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("CODECEventId")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_CODECEventId")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_addr _CODECEventId]
_poll:	.usect	".far",4,4
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("poll")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_poll")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_addr _poll]
	.global	_AIC23CfgData
_AIC23CfgData:	.usect	".far",32,4
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("AIC23CfgData")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_AIC23CfgData")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_addr _AIC23CfgData]
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$44, DW_AT_external
	.global	_config
_config:	.usect	".far",40,4
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("config")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_config")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_addr _config]
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$45, DW_AT_external
	.global	_hAIC23_handle
_hAIC23_handle:	.usect	".far",4,4
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("hAIC23_handle")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_hAIC23_handle")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_addr _hAIC23_handle]
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$46, DW_AT_external
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("fs")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_fs")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$47, DW_AT_declaration
	.dwattr $C$DW$47, DW_AT_external
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("inputsource")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_inputsource")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$48, DW_AT_declaration
	.dwattr $C$DW$48, DW_AT_external
;	C:\CCStudio_v3.3\C6000\cgtools\bin\acp6x.exe -@C:\WINDOWS\TEMP\0338012 
	.sect	".text"
	.global	_c6713_dsk_init

$C$DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("c6713_dsk_init")
	.dwattr $C$DW$49, DW_AT_low_pc(_c6713_dsk_init)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_c6713_dsk_init")
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_TI_begin_file("c6713dskinit.c")
	.dwattr $C$DW$49, DW_AT_TI_begin_line(0x08)
	.dwattr $C$DW$49, DW_AT_TI_begin_column(0x06)
	.dwpsn	file "c6713dskinit.c",line 9,column 1,is_stmt,address _c6713_dsk_init

	.dwfde $C$DW$CIE, _c6713_dsk_init
;----------------------------------------------------------------------
;   8 | void c6713_dsk_init()                           //dsp-peripheral initia
;     | lization                                                               
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: c6713_dsk_init                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_c6713_dsk_init:
;** --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |9| 
           NOP             2
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
	.dwpsn	file "c6713dskinit.c",line 10,column 1,is_stmt
;----------------------------------------------------------------------
;  10 | DSK6713_init();                         //call BSL to init DSK-EMIF,PLL
;     | )                                                                      
;----------------------------------------------------------------------
           CALL    .S1     _DSK6713_init     ; |10| 
           MVKL    .S2     $C$RL0,B3         ; |10| 
           MVKH    .S2     $C$RL0,B3         ; |10| 
           NOP             3
$C$RL0:    ; CALL OCCURS {_DSK6713_init}     ; |10| 
	.dwpsn	file "c6713dskinit.c",line 12,column 1,is_stmt
;----------------------------------------------------------------------
;  12 | hAIC23_handle=DSK6713_AIC23_openCodec(0, &config);//handle(pointer) to
;     | codec                                                                  
;----------------------------------------------------------------------
           CALL    .S1     _DSK6713_AIC23_openCodec ; |12| 
           MVKL    .S2     _config,B4
           MVKL    .S2     $C$RL1,B3         ; |12| 
           MVKH    .S2     _config,B4
           MVKH    .S2     $C$RL1,B3         ; |12| 
           ZERO    .L1     A4                ; |12| 
$C$RL1:    ; CALL OCCURS {_DSK6713_AIC23_openCodec}  ; |12| 
           MVKL    .S1     _hAIC23_handle,A3

           MVKH    .S1     _hAIC23_handle,A3
||         MV      .L2X    A4,B4             ; |12| 

           STW     .D1T2   B4,*A3            ; |12| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 13,column 1,is_stmt
;----------------------------------------------------------------------
;  13 | DSK6713_AIC23_setFreq(hAIC23_handle, fs);  //set sample rate           
;----------------------------------------------------------------------
           MVKL    .S2     _fs,B4

           MVKH    .S2     _fs,B4
||         CALL    .S1     _DSK6713_AIC23_setFreq ; |13| 

           LDW     .D2T2   *B4,B4            ; |13| 
||         LDW     .D1T1   *A3,A4            ; |13| 

           MVKL    .S2     $C$RL2,B3         ; |13| 
           MVKH    .S2     $C$RL2,B3         ; |13| 
           NOP             2
$C$RL2:    ; CALL OCCURS {_DSK6713_AIC23_setFreq}  ; |13| 
	.dwpsn	file "c6713dskinit.c",line 14,column 1,is_stmt
;----------------------------------------------------------------------
;  14 | DSK6713_AIC23_rset(hAIC23_handle, 0x0004, inputsource);  // choose mic
;     | or line in                                                             
;----------------------------------------------------------------------
           MVKL    .S1     _inputsource,A4
           MVKL    .S1     _hAIC23_handle,A3
           MVKH    .S1     _inputsource,A4

           MVKH    .S1     _hAIC23_handle,A3
||         CALL    .S2     _DSK6713_AIC23_rset ; |14| 
||         LDHU    .D1T1   *A4,A6            ; |14| 

           LDW     .D1T1   *A3,A4            ; |14| 
           MVKL    .S2     $C$RL3,B3         ; |14| 
           MVK     .S2     0x4,B4            ; |14| 
           MVKH    .S2     $C$RL3,B3         ; |14| 
           NOP             1
$C$RL3:    ; CALL OCCURS {_DSK6713_AIC23_rset}  ; |14| 
	.dwpsn	file "c6713dskinit.c",line 15,column 1,is_stmt
;----------------------------------------------------------------------
;  15 | MCBSP_config(DSK6713_AIC23_DATAHANDLE,&AIC23CfgData);//interface 32 bit
;     | s toAIC23                                                              
;----------------------------------------------------------------------

           MVKL    .S1     _MCBSP_config,A3  ; |15| 
||         MVKL    .S2     _DSK6713_AIC23_codecdatahandle,B5

           MVKH    .S1     _MCBSP_config,A3  ; |15| 
||         MVKH    .S2     _DSK6713_AIC23_codecdatahandle,B5

           CALL    .S2X    A3                ; |15| 
           LDW     .D2T1   *B5,A4            ; |15| 
           MVKL    .S2     $C$RL4,B3         ; |15| 
           MVKL    .S2     _AIC23CfgData,B4
           MVKH    .S2     $C$RL4,B3         ; |15| 
           MVKH    .S2     _AIC23CfgData,B4
$C$RL4:    ; CALL OCCURS {_MCBSP_config}     ; |15| 
	.dwpsn	file "c6713dskinit.c",line 17,column 1,is_stmt
;----------------------------------------------------------------------
;  17 | MCBSP_start(DSK6713_AIC23_DATAHANDLE, MCBSP_XMIT_START | MCBSP_RCV_STAR
;     | T |                                                                    
;  18 | MCBSP_SRGR_START | MCBSP_SRGR_FRAMESYNC, 220);//start data channel agai
;     | n                                                                      
;----------------------------------------------------------------------
           MVKL    .S2     _MCBSP_start,B5   ; |17| 

           MVKH    .S2     _MCBSP_start,B5   ; |17| 
||         MVKL    .S1     _DSK6713_AIC23_codecdatahandle,A3

           CALL    .S2     B5                ; |17| 
||         MVKH    .S1     _DSK6713_AIC23_codecdatahandle,A3

           LDW     .D1T1   *A3,A4            ; |17| 
           MVKL    .S2     $C$RL5,B3         ; |17| 
           MVK     .S2     0xf,B4            ; |17| 
           MVKH    .S2     $C$RL5,B3         ; |17| 
           MVK     .S1     0xdc,A6           ; |17| 
$C$RL5:    ; CALL OCCURS {_MCBSP_start}      ; |17| 
	.dwpsn	file "c6713dskinit.c",line 19,column 1,is_stmt
           LDW     .D2T2   *++SP(8),B3       ; |19| 
           NOP             4
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
           RET     .S2     B3                ; |19| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |19| 
	.dwattr $C$DW$49, DW_AT_TI_end_file("c6713dskinit.c")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x13)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text"
	.global	_comm_poll

$C$DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("comm_poll")
	.dwattr $C$DW$50, DW_AT_low_pc(_comm_poll)
	.dwattr $C$DW$50, DW_AT_high_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_comm_poll")
	.dwattr $C$DW$50, DW_AT_external
	.dwattr $C$DW$50, DW_AT_TI_begin_file("c6713dskinit.c")
	.dwattr $C$DW$50, DW_AT_TI_begin_line(0x15)
	.dwattr $C$DW$50, DW_AT_TI_begin_column(0x06)
	.dwpsn	file "c6713dskinit.c",line 22,column 1,is_stmt,address _comm_poll

	.dwfde $C$DW$CIE, _comm_poll
;----------------------------------------------------------------------
;  21 | void comm_poll()
;     |  //added for communication/init using polling                          
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: comm_poll                                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_comm_poll:
;** --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |22| 
           NOP             2
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
	.dwpsn	file "c6713dskinit.c",line 23,column 2,is_stmt
;----------------------------------------------------------------------
;  23 | poll=1;                                         //1 if using polling   
;----------------------------------------------------------------------
           MVKL    .S1     _poll,A3

           MVKH    .S1     _poll,A3
||         MVK     .S2     1,B4              ; |23| 

           STW     .D1T2   B4,*A3            ; |23| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 24,column 4,is_stmt
;----------------------------------------------------------------------
;  24 | c6713_dsk_init();                                    //init DSP and cod
;     | ec                                                                     
;----------------------------------------------------------------------
           CALL    .S1     _c6713_dsk_init   ; |24| 
           MVKL    .S2     $C$RL6,B3         ; |24| 
           MVKH    .S2     $C$RL6,B3         ; |24| 
           NOP             3
$C$RL6:    ; CALL OCCURS {_c6713_dsk_init}   ; |24| 
	.dwpsn	file "c6713dskinit.c",line 25,column 1,is_stmt
           LDW     .D2T2   *++SP(8),B3       ; |25| 
           NOP             4
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
           RET     .S2     B3                ; |25| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |25| 
	.dwattr $C$DW$50, DW_AT_TI_end_file("c6713dskinit.c")
	.dwattr $C$DW$50, DW_AT_TI_end_line(0x19)
	.dwattr $C$DW$50, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$50

	.sect	".text"
	.global	_comm_intr

$C$DW$51	.dwtag  DW_TAG_subprogram, DW_AT_name("comm_intr")
	.dwattr $C$DW$51, DW_AT_low_pc(_comm_intr)
	.dwattr $C$DW$51, DW_AT_high_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_comm_intr")
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_TI_begin_file("c6713dskinit.c")
	.dwattr $C$DW$51, DW_AT_TI_begin_line(0x1b)
	.dwattr $C$DW$51, DW_AT_TI_begin_column(0x06)
	.dwpsn	file "c6713dskinit.c",line 28,column 1,is_stmt,address _comm_intr

	.dwfde $C$DW$CIE, _comm_intr
;----------------------------------------------------------------------
;  27 | void comm_intr()
;     |  //for communication/init using interrupt                              
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: comm_intr                                                   *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_comm_intr:
;** --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |28| 
           NOP             2
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
	.dwpsn	file "c6713dskinit.c",line 29,column 2,is_stmt
;----------------------------------------------------------------------
;  29 | poll=0;                         //0 since not polling                  
;----------------------------------------------------------------------
           MVKL    .S2     _poll,B5

           MVKH    .S2     _poll,B5
||         ZERO    .L2     B4                ; |29| 

           STW     .D2T2   B4,*B5            ; |29| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 30,column 4,is_stmt
;----------------------------------------------------------------------
;  30 | IRQ_globalDisable();                 //disable interrupts              
;----------------------------------------------------------------------
           MVKL    .S1     _IRQ_globalDisable,A3 ; |30| 
           MVKH    .S1     _IRQ_globalDisable,A3 ; |30| 
           CALL    .S2X    A3                ; |30| 
           MVKL    .S2     $C$RL7,B3         ; |30| 
           MVKH    .S2     $C$RL7,B3         ; |30| 
           NOP             3
$C$RL7:    ; CALL OCCURS {_IRQ_globalDisable}  ; |30| 
	.dwpsn	file "c6713dskinit.c",line 31,column 2,is_stmt
;----------------------------------------------------------------------
;  31 | c6713_dsk_init();                                       //init DSP and
;     | codec                                                                  
;----------------------------------------------------------------------
           CALL    .S1     _c6713_dsk_init   ; |31| 
           MVKL    .S2     $C$RL8,B3         ; |31| 
           MVKH    .S2     $C$RL8,B3         ; |31| 
           NOP             3
$C$RL8:    ; CALL OCCURS {_c6713_dsk_init}   ; |31| 
	.dwpsn	file "c6713dskinit.c",line 32,column 2,is_stmt
;----------------------------------------------------------------------
;  32 | CODECEventId=MCBSP_getXmtEventId(DSK6713_AIC23_codecdatahandle);//McBSP
;     | 1 Xmit                                                                 
;  34 | #ifndef using_bios                                              //do no
;     | t need to point to vector table                                        
;  35 | IRQ_setVecs(vectors);                           //point to the IRQ vect
;     | or table                                                               
;  36 | #endif
;     |          //since interrupt vector handles this                         
;----------------------------------------------------------------------
           MVKL    .S1     _MCBSP_getXmtEventId,A3 ; |32| 
           MVKL    .S1     _DSK6713_AIC23_codecdatahandle,A4
           MVKH    .S1     _MCBSP_getXmtEventId,A3 ; |32| 

           CALL    .S2X    A3                ; |32| 
||         MVKH    .S1     _DSK6713_AIC23_codecdatahandle,A4

           LDW     .D1T1   *A4,A4            ; |32| 
           MVKL    .S2     $C$RL9,B3         ; |32| 
           MVKH    .S2     $C$RL9,B3         ; |32| 
           NOP             2
$C$RL9:    ; CALL OCCURS {_MCBSP_getXmtEventId}  ; |32| 
           MVKL    .S2     _CODECEventId,B4
           MVKH    .S2     _CODECEventId,B4
           STW     .D2T1   A4,*B4            ; |32| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 38,column 4,is_stmt
;----------------------------------------------------------------------
;  38 | IRQ_map(CODECEventId, 11);                      //map McBSP1 Xmit to IN
;     | T11                                                                    
;----------------------------------------------------------------------
           MVKL    .S1     _IRQ_map,A3       ; |38| 
           MVKH    .S1     _IRQ_map,A3       ; |38| 

           CALL    .S2X    A3                ; |38| 
||         MV      .L1X    B4,A4

           LDW     .D1T1   *A4,A4            ; |38| 
           MVKL    .S2     $C$RL10,B3        ; |38| 
           MVKH    .S2     $C$RL10,B3        ; |38| 
           MVK     .S2     0xb,B4            ; |38| 
           NOP             1
$C$RL10:   ; CALL OCCURS {_IRQ_map}          ; |38| 
	.dwpsn	file "c6713dskinit.c",line 39,column 4,is_stmt
;----------------------------------------------------------------------
;  39 | IRQ_reset(CODECEventId);                //reset codec INT 11           
;----------------------------------------------------------------------
           MVKL    .S2     _IRQ_reset,B4     ; |39| 
           MVKL    .S2     _CODECEventId,B5
           MVKH    .S2     _IRQ_reset,B4     ; |39| 
           MVKH    .S2     _CODECEventId,B5
           CALL    .S2     B4                ; |39| 
           LDW     .D2T1   *B5,A4            ; |39| 
           MVKL    .S2     $C$RL11,B3        ; |39| 
           MVKH    .S2     $C$RL11,B3        ; |39| 
           NOP             2
$C$RL11:   ; CALL OCCURS {_IRQ_reset}        ; |39| 
	.dwpsn	file "c6713dskinit.c",line 40,column 4,is_stmt
;----------------------------------------------------------------------
;  40 | IRQ_globalEnable();                          //globally enable interrup
;     | ts                                                                     
;----------------------------------------------------------------------
           MVKL    .S1     _IRQ_globalEnable,A3 ; |40| 
           MVKH    .S1     _IRQ_globalEnable,A3 ; |40| 
           CALL    .S2X    A3                ; |40| 
           MVKL    .S2     $C$RL12,B3        ; |40| 
           MVKH    .S2     $C$RL12,B3        ; |40| 
           NOP             3
$C$RL12:   ; CALL OCCURS {_IRQ_globalEnable}  ; |40| 
	.dwpsn	file "c6713dskinit.c",line 41,column 4,is_stmt
;----------------------------------------------------------------------
;  41 | IRQ_nmiEnable();                                //enable NMI interrupt 
;----------------------------------------------------------------------
           MVKL    .S1     _IRQ_nmiEnable,A3 ; |41| 
           MVKH    .S1     _IRQ_nmiEnable,A3 ; |41| 
           CALL    .S2X    A3                ; |41| 
           MVKL    .S2     $C$RL13,B3        ; |41| 
           MVKH    .S2     $C$RL13,B3        ; |41| 
           NOP             3
$C$RL13:   ; CALL OCCURS {_IRQ_nmiEnable}    ; |41| 
	.dwpsn	file "c6713dskinit.c",line 42,column 4,is_stmt
;----------------------------------------------------------------------
;  42 | IRQ_enable(CODECEventId);                    //enable CODEC eventXmit I
;     | NT11                                                                   
;----------------------------------------------------------------------
           MVKL    .S2     _IRQ_enable,B4    ; |42| 

           MVKH    .S2     _IRQ_enable,B4    ; |42| 
||         MVKL    .S1     _CODECEventId,A3

           CALL    .S2     B4                ; |42| 
||         MVKH    .S1     _CODECEventId,A3

           LDW     .D1T1   *A3,A4            ; |42| 
           MVKL    .S2     $C$RL14,B3        ; |42| 
           MVKH    .S2     $C$RL14,B3        ; |42| 
           NOP             2
$C$RL14:   ; CALL OCCURS {_IRQ_enable}       ; |42| 
	.dwpsn	file "c6713dskinit.c",line 44,column 2,is_stmt
;----------------------------------------------------------------------
;  44 | output_sample(0);                               //start McBSP interrupt
;     |  outputting a sample                                                   
;----------------------------------------------------------------------
           CALL    .S1     _output_sample    ; |44| 
           MVKL    .S2     $C$RL15,B3        ; |44| 
           MVKH    .S2     $C$RL15,B3        ; |44| 
           ZERO    .L1     A4                ; |44| 
           NOP             2
$C$RL15:   ; CALL OCCURS {_output_sample}    ; |44| 
	.dwpsn	file "c6713dskinit.c",line 45,column 1,is_stmt
           LDW     .D2T2   *++SP(8),B3       ; |45| 
           NOP             4
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
           RET     .S2     B3                ; |45| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |45| 
	.dwattr $C$DW$51, DW_AT_TI_end_file("c6713dskinit.c")
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x2d)
	.dwattr $C$DW$51, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$51

	.sect	".text"
	.global	_output_sample

$C$DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("output_sample")
	.dwattr $C$DW$52, DW_AT_low_pc(_output_sample)
	.dwattr $C$DW$52, DW_AT_high_pc(0x00)
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_output_sample")
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_TI_begin_file("c6713dskinit.c")
	.dwattr $C$DW$52, DW_AT_TI_begin_line(0x2f)
	.dwattr $C$DW$52, DW_AT_TI_begin_column(0x06)
	.dwpsn	file "c6713dskinit.c",line 48,column 1,is_stmt,address _output_sample

	.dwfde $C$DW$CIE, _output_sample
;----------------------------------------------------------------------
;  47 | void output_sample(int out_data)    //for out to Left and Right channel
;     | s                                                                      
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: output_sample                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Local Frame Size  : 0 Args + 8 Auto + 4 Save = 12 byte                   *
;******************************************************************************
_output_sample:
;** --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(16)      ; |48| 
           NOP             2
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 19, 0
$C$DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out_data")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_out_data")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg4]
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("out_data")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_out_data")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_breg31 4]
$C$DW$55	.dwtag  DW_TAG_variable, DW_AT_name("CHANNEL_data")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_CHANNEL_data")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_breg31 8]
;----------------------------------------------------------------------
;  49 | short CHANNEL_data;                                                    
;----------------------------------------------------------------------
           STW     .D2T1   A4,*+SP(4)        ; |48| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 51,column 2,is_stmt
;----------------------------------------------------------------------
;  51 | AIC_data.uint=0;                 //clear data structure                
;----------------------------------------------------------------------
           MVKL    .S2     _AIC_data,B5

           MVKH    .S2     _AIC_data,B5
||         ZERO    .L2     B4                ; |51| 

           STW     .D2T2   B4,*B5            ; |51| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 52,column 2,is_stmt
;----------------------------------------------------------------------
;  52 | AIC_data.uint=out_data;          //32-bit data -->data structure       
;  54 | //The existing interface defaults to right channel. To default instead
;     | to the                                                                 
;  55 | //left channel and use output_sample(short), left and right channels ar
;     | e swapped                                                              
;  56 | //In main source program use LEFT 0 and RIGHT 1 (opposite of what is us
;     | ed here)                                                               
;----------------------------------------------------------------------
           LDW     .D2T1   *+SP(4),A3        ; |52| 
           MV      .L1X    B5,A4             ; |52| 
           NOP             3
           STW     .D1T1   A3,*A4            ; |52| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 57,column 2,is_stmt
;----------------------------------------------------------------------
;  57 | CHANNEL_data=AIC_data.channel[RIGHT];                   //swap left and
;     |  right channels                                                        
;----------------------------------------------------------------------
           MV      .L2     B5,B4
           LDH     .D2T2   *B4,B4            ; |57| 
           NOP             4
           STH     .D2T2   B4,*+SP(8)        ; |57| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 58,column 2,is_stmt
;----------------------------------------------------------------------
;  58 | AIC_data.channel[RIGHT]=AIC_data.channel[LEFT];                        
;----------------------------------------------------------------------
           ADD     .L1     2,A4,A3
           LDH     .D1T1   *A3,A3            ; |58| 
           MV      .L2     B5,B4             ; |58| 
           NOP             3
           STH     .D2T1   A3,*B4            ; |58| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 59,column 2,is_stmt
;----------------------------------------------------------------------
;  59 | AIC_data.channel[LEFT]=CHANNEL_data;                                   
;----------------------------------------------------------------------
           LDH     .D2T2   *+SP(8),B4        ; |59| 
           ADD     .L1     2,A4,A3
           NOP             3
           STH     .D1T2   B4,*A3            ; |59| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 60,column 4,is_stmt
;----------------------------------------------------------------------
;  60 | if (poll) while(!MCBSP_xrdy(DSK6713_AIC23_DATAHANDLE));//if ready to tr
;     | ansmit                                                                 
;----------------------------------------------------------------------
           MVKL    .S2     _poll,B4
           MVKH    .S2     _poll,B4
           LDW     .D2T2   *B4,B0            ; |60| 
           NOP             4
   [!B0]   B       .S1     $C$L2             ; |60| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L2}         ; |60| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "c6713dskinit.c",line 60,column 20,is_stmt
           MVKL    .S2     _MCBSP_xrdy,B4    ; |60| 

           MVKH    .S2     _MCBSP_xrdy,B4    ; |60| 
||         MVKL    .S1     _DSK6713_AIC23_codecdatahandle,A3

           CALL    .S2     B4                ; |60| 
||         MVKH    .S1     _DSK6713_AIC23_codecdatahandle,A3

           LDW     .D1T1   *A3,A4            ; |60| 
           MVKL    .S2     $C$RL16,B3        ; |60| 
           MVKH    .S2     $C$RL16,B3        ; |60| 
           NOP             2
$C$RL16:   ; CALL OCCURS {_MCBSP_xrdy}       ; |60| 
           MV      .L1     A4,A1             ; |60| 
   [ A1]   B       .S1     $C$L2             ; |60| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L2}         ; |60| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L1:    
$C$DW$L$_output_sample$3$B:
           MVKL    .S2     _MCBSP_xrdy,B4    ; |60| 

           MVKH    .S2     _MCBSP_xrdy,B4    ; |60| 
||         MVKL    .S1     _DSK6713_AIC23_codecdatahandle,A3

           CALL    .S2     B4                ; |60| 
||         MVKH    .S1     _DSK6713_AIC23_codecdatahandle,A3

           LDW     .D1T1   *A3,A4            ; |60| 
           MVKL    .S2     $C$RL17,B3        ; |60| 
           MVKH    .S2     $C$RL17,B3        ; |60| 
           NOP             2
$C$RL17:   ; CALL OCCURS {_MCBSP_xrdy}       ; |60| 
           MV      .L1     A4,A1             ; |60| 
   [!A1]   B       .S1     $C$L1             ; |60| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L1}         ; |60| 
$C$DW$L$_output_sample$3$E:
;** --------------------------------------------------------------------------*
$C$L2:    
	.dwpsn	file "c6713dskinit.c",line 61,column 3,is_stmt
;----------------------------------------------------------------------
;  61 | MCBSP_write(DSK6713_AIC23_DATAHANDLE,AIC_data.uint);//write/output data
;----------------------------------------------------------------------
           MVKL    .S1     _MCBSP_write,A3   ; |61| 

           MVKL    .S2     _AIC_data,B4
||         MVKL    .S1     _DSK6713_AIC23_codecdatahandle,A4

           MVKH    .S1     _MCBSP_write,A3   ; |61| 
||         MVKH    .S2     _AIC_data,B4

           CALL    .S2X    A3                ; |61| 
||         MVKH    .S1     _DSK6713_AIC23_codecdatahandle,A4

           LDW     .D2T2   *B4,B4            ; |61| 
||         LDW     .D1T1   *A4,A4            ; |61| 

           MVKL    .S2     $C$RL18,B3        ; |61| 
           MVKH    .S2     $C$RL18,B3        ; |61| 
           NOP             2
$C$RL18:   ; CALL OCCURS {_MCBSP_write}      ; |61| 
	.dwpsn	file "c6713dskinit.c",line 62,column 1,is_stmt
           LDW     .D2T2   *++SP(16),B3      ; |62| 
           NOP             4
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
           RET     .S2     B3                ; |62| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |62| 

$C$DW$56	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$56, DW_AT_name("E:\dsp-fpga\EEL 4935 DSP_FPGA\disc_contents\C6713\Support\c6713dskinit.asm:$C$L1:1:1314645844")
	.dwattr $C$DW$56, DW_AT_TI_begin_file("c6713dskinit.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0x3c)
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x3c)
$C$DW$57	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$57, DW_AT_low_pc($C$DW$L$_output_sample$3$B)
	.dwattr $C$DW$57, DW_AT_high_pc($C$DW$L$_output_sample$3$E)
	.dwendtag $C$DW$56

	.dwattr $C$DW$52, DW_AT_TI_end_file("c6713dskinit.c")
	.dwattr $C$DW$52, DW_AT_TI_end_line(0x3e)
	.dwattr $C$DW$52, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$52

	.sect	".text"
	.global	_output_left_sample

$C$DW$58	.dwtag  DW_TAG_subprogram, DW_AT_name("output_left_sample")
	.dwattr $C$DW$58, DW_AT_low_pc(_output_left_sample)
	.dwattr $C$DW$58, DW_AT_high_pc(0x00)
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_output_left_sample")
	.dwattr $C$DW$58, DW_AT_external
	.dwattr $C$DW$58, DW_AT_TI_begin_file("c6713dskinit.c")
	.dwattr $C$DW$58, DW_AT_TI_begin_line(0x40)
	.dwattr $C$DW$58, DW_AT_TI_begin_column(0x06)
	.dwpsn	file "c6713dskinit.c",line 65,column 1,is_stmt,address _output_left_sample

	.dwfde $C$DW$CIE, _output_left_sample
;----------------------------------------------------------------------
;  64 | void output_left_sample(short out_data)                  //for output f
;     | rom left channel                                                       
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: output_left_sample                                          *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                    *
;******************************************************************************
_output_left_sample:
;** --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |65| 
           NOP             2
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
$C$DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out_data")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_out_data")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg4]
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("out_data")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_out_data")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_breg31 4]
           STH     .D2T1   A4,*+SP(4)        ; |65| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 66,column 2,is_stmt
;----------------------------------------------------------------------
;  66 | AIC_data.uint=0;                              //clear data structure   
;----------------------------------------------------------------------
           MVKL    .S2     _AIC_data,B5

           MVKH    .S2     _AIC_data,B5
||         ZERO    .L2     B4                ; |66| 

           STW     .D2T2   B4,*B5            ; |66| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 67,column 2,is_stmt
;----------------------------------------------------------------------
;  67 | AIC_data.channel[LEFT]=out_data;   //data from Left channel -->data str
;     | ucture                                                                 
;----------------------------------------------------------------------
           LDH     .D2T2   *+SP(4),B4        ; |67| 
           ADD     .L2     2,B5,B5
           NOP             3
           STH     .D2T2   B4,*B5            ; |67| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 69,column 2,is_stmt
;----------------------------------------------------------------------
;  69 | if (poll) while(!MCBSP_xrdy(DSK6713_AIC23_DATAHANDLE));//if ready to tr
;     | ansmit                                                                 
;----------------------------------------------------------------------
           MVKL    .S1     _poll,A3
           MVKH    .S1     _poll,A3
           LDW     .D1T1   *A3,A1            ; |69| 
           NOP             4
   [!A1]   B       .S1     $C$L4             ; |69| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L4}         ; |69| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "c6713dskinit.c",line 69,column 18,is_stmt
           MVKL    .S2     _MCBSP_xrdy,B4    ; |69| 

           MVKH    .S2     _MCBSP_xrdy,B4    ; |69| 
||         MVKL    .S1     _DSK6713_AIC23_codecdatahandle,A3

           CALL    .S2     B4                ; |69| 
||         MVKH    .S1     _DSK6713_AIC23_codecdatahandle,A3

           LDW     .D1T1   *A3,A4            ; |69| 
           MVKL    .S2     $C$RL19,B3        ; |69| 
           MVKH    .S2     $C$RL19,B3        ; |69| 
           NOP             2
$C$RL19:   ; CALL OCCURS {_MCBSP_xrdy}       ; |69| 
           MV      .L1     A4,A1             ; |69| 
   [ A1]   B       .S1     $C$L4             ; |69| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L4}         ; |69| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L3:    
$C$DW$L$_output_left_sample$3$B:
           MVKL    .S2     _MCBSP_xrdy,B4    ; |69| 

           MVKH    .S2     _MCBSP_xrdy,B4    ; |69| 
||         MVKL    .S1     _DSK6713_AIC23_codecdatahandle,A3

           CALL    .S2     B4                ; |69| 
||         MVKH    .S1     _DSK6713_AIC23_codecdatahandle,A3

           LDW     .D1T1   *A3,A4            ; |69| 
           MVKL    .S2     $C$RL20,B3        ; |69| 
           MVKH    .S2     $C$RL20,B3        ; |69| 
           NOP             2
$C$RL20:   ; CALL OCCURS {_MCBSP_xrdy}       ; |69| 
           MV      .L1     A4,A1             ; |69| 
   [!A1]   B       .S1     $C$L3             ; |69| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L3}         ; |69| 
$C$DW$L$_output_left_sample$3$E:
;** --------------------------------------------------------------------------*
$C$L4:    
	.dwpsn	file "c6713dskinit.c",line 70,column 3,is_stmt
;----------------------------------------------------------------------
;  70 | MCBSP_write(DSK6713_AIC23_DATAHANDLE,AIC_data.uint);//output left chann
;     | el                                                                     
;----------------------------------------------------------------------
           MVKL    .S1     _MCBSP_write,A3   ; |70| 

           MVKL    .S2     _AIC_data,B4
||         MVKL    .S1     _DSK6713_AIC23_codecdatahandle,A4

           MVKH    .S1     _MCBSP_write,A3   ; |70| 
||         MVKH    .S2     _AIC_data,B4

           CALL    .S2X    A3                ; |70| 
||         MVKH    .S1     _DSK6713_AIC23_codecdatahandle,A4

           LDW     .D2T2   *B4,B4            ; |70| 
||         LDW     .D1T1   *A4,A4            ; |70| 

           MVKL    .S2     $C$RL21,B3        ; |70| 
           MVKH    .S2     $C$RL21,B3        ; |70| 
           NOP             2
$C$RL21:   ; CALL OCCURS {_MCBSP_write}      ; |70| 
	.dwpsn	file "c6713dskinit.c",line 71,column 1,is_stmt
           LDW     .D2T2   *++SP(8),B3       ; |71| 
           NOP             4
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
           RET     .S2     B3                ; |71| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |71| 

$C$DW$61	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$61, DW_AT_name("E:\dsp-fpga\EEL 4935 DSP_FPGA\disc_contents\C6713\Support\c6713dskinit.asm:$C$L3:1:1314645844")
	.dwattr $C$DW$61, DW_AT_TI_begin_file("c6713dskinit.c")
	.dwattr $C$DW$61, DW_AT_TI_begin_line(0x45)
	.dwattr $C$DW$61, DW_AT_TI_end_line(0x45)
$C$DW$62	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$62, DW_AT_low_pc($C$DW$L$_output_left_sample$3$B)
	.dwattr $C$DW$62, DW_AT_high_pc($C$DW$L$_output_left_sample$3$E)
	.dwendtag $C$DW$61

	.dwattr $C$DW$58, DW_AT_TI_end_file("c6713dskinit.c")
	.dwattr $C$DW$58, DW_AT_TI_end_line(0x47)
	.dwattr $C$DW$58, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$58

	.sect	".text"
	.global	_output_right_sample

$C$DW$63	.dwtag  DW_TAG_subprogram, DW_AT_name("output_right_sample")
	.dwattr $C$DW$63, DW_AT_low_pc(_output_right_sample)
	.dwattr $C$DW$63, DW_AT_high_pc(0x00)
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_output_right_sample")
	.dwattr $C$DW$63, DW_AT_external
	.dwattr $C$DW$63, DW_AT_TI_begin_file("c6713dskinit.c")
	.dwattr $C$DW$63, DW_AT_TI_begin_line(0x49)
	.dwattr $C$DW$63, DW_AT_TI_begin_column(0x06)
	.dwpsn	file "c6713dskinit.c",line 74,column 1,is_stmt,address _output_right_sample

	.dwfde $C$DW$CIE, _output_right_sample
;----------------------------------------------------------------------
;  73 | void output_right_sample(short out_data)                //for output fr
;     | om right channel                                                       
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: output_right_sample                                         *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                    *
;******************************************************************************
_output_right_sample:
;** --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |74| 
           NOP             2
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
$C$DW$64	.dwtag  DW_TAG_formal_parameter, DW_AT_name("out_data")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_out_data")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg4]
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("out_data")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_out_data")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_breg31 4]
           STH     .D2T1   A4,*+SP(4)        ; |74| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 75,column 2,is_stmt
;----------------------------------------------------------------------
;  75 | AIC_data.uint=0;                             //clear data structure    
;----------------------------------------------------------------------
           MVKL    .S2     _AIC_data,B5

           MVKH    .S2     _AIC_data,B5
||         ZERO    .L2     B4                ; |75| 

           STW     .D2T2   B4,*B5            ; |75| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 76,column 2,is_stmt
;----------------------------------------------------------------------
;  76 | AIC_data.channel[RIGHT]=out_data; //data from Right channel -->data str
;     | ucture                                                                 
;----------------------------------------------------------------------
           LDH     .D2T2   *+SP(4),B4        ; |76| 
           NOP             4
           STH     .D2T2   B4,*B5            ; |76| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 78,column 2,is_stmt
;----------------------------------------------------------------------
;  78 | if (poll) while(!MCBSP_xrdy(DSK6713_AIC23_DATAHANDLE));//if ready to tr
;     | ansmit                                                                 
;----------------------------------------------------------------------
           MVKL    .S1     _poll,A3
           MVKH    .S1     _poll,A3
           LDW     .D1T1   *A3,A1            ; |78| 
           NOP             4
   [!A1]   B       .S1     $C$L6             ; |78| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L6}         ; |78| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "c6713dskinit.c",line 78,column 18,is_stmt
           MVKL    .S2     _MCBSP_xrdy,B4    ; |78| 

           MVKH    .S2     _MCBSP_xrdy,B4    ; |78| 
||         MVKL    .S1     _DSK6713_AIC23_codecdatahandle,A3

           CALL    .S2     B4                ; |78| 
||         MVKH    .S1     _DSK6713_AIC23_codecdatahandle,A3

           LDW     .D1T1   *A3,A4            ; |78| 
           MVKL    .S2     $C$RL22,B3        ; |78| 
           MVKH    .S2     $C$RL22,B3        ; |78| 
           NOP             2
$C$RL22:   ; CALL OCCURS {_MCBSP_xrdy}       ; |78| 
           MV      .L1     A4,A1             ; |78| 
   [ A1]   B       .S1     $C$L6             ; |78| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L6}         ; |78| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L5:    
$C$DW$L$_output_right_sample$3$B:
           MVKL    .S2     _MCBSP_xrdy,B4    ; |78| 

           MVKH    .S2     _MCBSP_xrdy,B4    ; |78| 
||         MVKL    .S1     _DSK6713_AIC23_codecdatahandle,A3

           CALL    .S2     B4                ; |78| 
||         MVKH    .S1     _DSK6713_AIC23_codecdatahandle,A3

           LDW     .D1T1   *A3,A4            ; |78| 
           MVKL    .S2     $C$RL23,B3        ; |78| 
           MVKH    .S2     $C$RL23,B3        ; |78| 
           NOP             2
$C$RL23:   ; CALL OCCURS {_MCBSP_xrdy}       ; |78| 
           MV      .L1     A4,A1             ; |78| 
   [!A1]   B       .S1     $C$L5             ; |78| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L5}         ; |78| 
$C$DW$L$_output_right_sample$3$E:
;** --------------------------------------------------------------------------*
$C$L6:    
	.dwpsn	file "c6713dskinit.c",line 79,column 3,is_stmt
;----------------------------------------------------------------------
;  79 | MCBSP_write(DSK6713_AIC23_DATAHANDLE,AIC_data.uint);//output right chan
;     | nel                                                                    
;----------------------------------------------------------------------
           MVKL    .S1     _MCBSP_write,A3   ; |79| 

           MVKL    .S2     _AIC_data,B4
||         MVKL    .S1     _DSK6713_AIC23_codecdatahandle,A4

           MVKH    .S1     _MCBSP_write,A3   ; |79| 
||         MVKH    .S2     _AIC_data,B4

           CALL    .S2X    A3                ; |79| 
||         MVKH    .S1     _DSK6713_AIC23_codecdatahandle,A4

           LDW     .D2T2   *B4,B4            ; |79| 
||         LDW     .D1T1   *A4,A4            ; |79| 

           MVKL    .S2     $C$RL24,B3        ; |79| 
           MVKH    .S2     $C$RL24,B3        ; |79| 
           NOP             2
$C$RL24:   ; CALL OCCURS {_MCBSP_write}      ; |79| 
	.dwpsn	file "c6713dskinit.c",line 80,column 1,is_stmt
           LDW     .D2T2   *++SP(8),B3       ; |80| 
           NOP             4
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
           RET     .S2     B3                ; |80| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |80| 

$C$DW$66	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$66, DW_AT_name("E:\dsp-fpga\EEL 4935 DSP_FPGA\disc_contents\C6713\Support\c6713dskinit.asm:$C$L5:1:1314645844")
	.dwattr $C$DW$66, DW_AT_TI_begin_file("c6713dskinit.c")
	.dwattr $C$DW$66, DW_AT_TI_begin_line(0x4e)
	.dwattr $C$DW$66, DW_AT_TI_end_line(0x4e)
$C$DW$67	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$67, DW_AT_low_pc($C$DW$L$_output_right_sample$3$B)
	.dwattr $C$DW$67, DW_AT_high_pc($C$DW$L$_output_right_sample$3$E)
	.dwendtag $C$DW$66

	.dwattr $C$DW$63, DW_AT_TI_end_file("c6713dskinit.c")
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x50)
	.dwattr $C$DW$63, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$63

	.sect	".text"
	.global	_input_sample

$C$DW$68	.dwtag  DW_TAG_subprogram, DW_AT_name("input_sample")
	.dwattr $C$DW$68, DW_AT_low_pc(_input_sample)
	.dwattr $C$DW$68, DW_AT_high_pc(0x00)
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_input_sample")
	.dwattr $C$DW$68, DW_AT_external
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$68, DW_AT_TI_begin_file("c6713dskinit.c")
	.dwattr $C$DW$68, DW_AT_TI_begin_line(0x52)
	.dwattr $C$DW$68, DW_AT_TI_begin_column(0x08)
	.dwpsn	file "c6713dskinit.c",line 83,column 1,is_stmt,address _input_sample

	.dwfde $C$DW$CIE, _input_sample
;----------------------------------------------------------------------
;  82 | Uint32 input_sample()                                   //for 32-bit in
;     | put                                                                    
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: input_sample                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Local Frame Size  : 0 Args + 4 Auto + 4 Save = 8 byte                    *
;******************************************************************************
_input_sample:
;** --------------------------------------------------------------------------*
;----------------------------------------------------------------------
;  84 | short CHANNEL_data;                                                    
;----------------------------------------------------------------------
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |83| 
           NOP             2
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
$C$DW$69	.dwtag  DW_TAG_variable, DW_AT_name("CHANNEL_data")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_CHANNEL_data")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_breg31 4]
	.dwpsn	file "c6713dskinit.c",line 86,column 2,is_stmt
;----------------------------------------------------------------------
;  86 | if (poll) while(!MCBSP_rrdy(DSK6713_AIC23_DATAHANDLE));//if ready to re
;     | ceive                                                                  
;----------------------------------------------------------------------
           MVKL    .S1     _poll,A3
           MVKH    .S1     _poll,A3
           LDW     .D1T1   *A3,A1            ; |86| 
           NOP             4
   [!A1]   B       .S1     $C$L8             ; |86| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L8}         ; |86| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "c6713dskinit.c",line 86,column 18,is_stmt
           MVKL    .S2     _MCBSP_rrdy,B4    ; |86| 

           MVKH    .S2     _MCBSP_rrdy,B4    ; |86| 
||         MVKL    .S1     _DSK6713_AIC23_codecdatahandle,A3

           CALL    .S2     B4                ; |86| 
||         MVKH    .S1     _DSK6713_AIC23_codecdatahandle,A3

           LDW     .D1T1   *A3,A4            ; |86| 
           MVKL    .S2     $C$RL25,B3        ; |86| 
           MVKH    .S2     $C$RL25,B3        ; |86| 
           NOP             2
$C$RL25:   ; CALL OCCURS {_MCBSP_rrdy}       ; |86| 
           MV      .L1     A4,A1             ; |86| 
   [ A1]   B       .S1     $C$L8             ; |86| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L8}         ; |86| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L7:    
$C$DW$L$_input_sample$3$B:
           MVKL    .S2     _MCBSP_rrdy,B4    ; |86| 

           MVKH    .S2     _MCBSP_rrdy,B4    ; |86| 
||         MVKL    .S1     _DSK6713_AIC23_codecdatahandle,A3

           CALL    .S2     B4                ; |86| 
||         MVKH    .S1     _DSK6713_AIC23_codecdatahandle,A3

           LDW     .D1T1   *A3,A4            ; |86| 
           MVKL    .S2     $C$RL26,B3        ; |86| 
           MVKH    .S2     $C$RL26,B3        ; |86| 
           NOP             2
$C$RL26:   ; CALL OCCURS {_MCBSP_rrdy}       ; |86| 
           MV      .L1     A4,A1             ; |86| 
   [!A1]   B       .S1     $C$L7             ; |86| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L7}         ; |86| 
$C$DW$L$_input_sample$3$E:
;** --------------------------------------------------------------------------*
$C$L8:    
	.dwpsn	file "c6713dskinit.c",line 87,column 4,is_stmt
;----------------------------------------------------------------------
;  87 | AIC_data.uint=MCBSP_read(DSK6713_AIC23_DATAHANDLE);//read data         
;  89 | //Swapping left and right channels (see comments in output_sample())   
;----------------------------------------------------------------------
           MVKL    .S2     _MCBSP_read,B4    ; |87| 

           MVKH    .S2     _MCBSP_read,B4    ; |87| 
||         MVKL    .S1     _DSK6713_AIC23_codecdatahandle,A3

           CALL    .S2     B4                ; |87| 
||         MVKH    .S1     _DSK6713_AIC23_codecdatahandle,A3

           LDW     .D1T1   *A3,A4            ; |87| 
           MVKL    .S2     $C$RL27,B3        ; |87| 
           MVKH    .S2     $C$RL27,B3        ; |87| 
           NOP             2
$C$RL27:   ; CALL OCCURS {_MCBSP_read}       ; |87| 
           MVKL    .S2     _AIC_data,B4
           MVKH    .S2     _AIC_data,B4
           STW     .D2T1   A4,*B4            ; |87| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 90,column 2,is_stmt
;----------------------------------------------------------------------
;  90 | CHANNEL_data=AIC_data.channel[RIGHT];                   //swap left and
;     |  right channel                                                         
;----------------------------------------------------------------------
           LDH     .D2T2   *B4,B4            ; |90| 
           NOP             4
           STH     .D2T2   B4,*+SP(4)        ; |90| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 91,column 2,is_stmt
;----------------------------------------------------------------------
;  91 | AIC_data.channel[RIGHT]=AIC_data.channel[LEFT];                        
;----------------------------------------------------------------------
           MVKL    .S2     _AIC_data+2,B4
           MVKH    .S2     _AIC_data+2,B4
           LDH     .D2T2   *B4,B4            ; |91| 
           MVKL    .S1     _AIC_data,A3
           MVKH    .S1     _AIC_data,A3
           NOP             2
           STH     .D1T2   B4,*A3            ; |91| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 92,column 2,is_stmt
;----------------------------------------------------------------------
;  92 | AIC_data.channel[LEFT]=CHANNEL_data;                                   
;----------------------------------------------------------------------
           LDH     .D2T2   *+SP(4),B4        ; |92| 
           ADD     .L1     2,A3,A3
           NOP             3
           STH     .D1T2   B4,*A3            ; |92| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 94,column 2,is_stmt
;----------------------------------------------------------------------
;  94 | return(AIC_data.uint);                                                 
;----------------------------------------------------------------------
           ADD     .L1     -2,A3,A3
           LDW     .D1T1   *A3,A4            ; |94| 
           NOP             4
	.dwpsn	file "c6713dskinit.c",line 95,column 1,is_stmt
           LDW     .D2T2   *++SP(8),B3       ; |95| 
           NOP             4
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
           RET     .S2     B3                ; |95| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |95| 

$C$DW$70	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$70, DW_AT_name("E:\dsp-fpga\EEL 4935 DSP_FPGA\disc_contents\C6713\Support\c6713dskinit.asm:$C$L7:1:1314645844")
	.dwattr $C$DW$70, DW_AT_TI_begin_file("c6713dskinit.c")
	.dwattr $C$DW$70, DW_AT_TI_begin_line(0x56)
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x56)
$C$DW$71	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$71, DW_AT_low_pc($C$DW$L$_input_sample$3$B)
	.dwattr $C$DW$71, DW_AT_high_pc($C$DW$L$_input_sample$3$E)
	.dwendtag $C$DW$70

	.dwattr $C$DW$68, DW_AT_TI_end_file("c6713dskinit.c")
	.dwattr $C$DW$68, DW_AT_TI_end_line(0x5f)
	.dwattr $C$DW$68, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$68

	.sect	".text"
	.global	_input_left_sample

$C$DW$72	.dwtag  DW_TAG_subprogram, DW_AT_name("input_left_sample")
	.dwattr $C$DW$72, DW_AT_low_pc(_input_left_sample)
	.dwattr $C$DW$72, DW_AT_high_pc(0x00)
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_input_left_sample")
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$72, DW_AT_TI_begin_file("c6713dskinit.c")
	.dwattr $C$DW$72, DW_AT_TI_begin_line(0x61)
	.dwattr $C$DW$72, DW_AT_TI_begin_column(0x07)
	.dwpsn	file "c6713dskinit.c",line 98,column 1,is_stmt,address _input_left_sample

	.dwfde $C$DW$CIE, _input_left_sample
;----------------------------------------------------------------------
;  97 | short input_left_sample()                               //input to left
;     |  channel                                                               
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: input_left_sample                                           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_input_left_sample:
;** --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |98| 
           NOP             2
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
	.dwpsn	file "c6713dskinit.c",line 99,column 2,is_stmt
;----------------------------------------------------------------------
;  99 | if (poll) while(!MCBSP_rrdy(DSK6713_AIC23_DATAHANDLE));//if ready to re
;     | ceive                                                                  
;----------------------------------------------------------------------
           MVKL    .S1     _poll,A3
           MVKH    .S1     _poll,A3
           LDW     .D1T1   *A3,A1            ; |99| 
           NOP             4
   [!A1]   B       .S1     $C$L10            ; |99| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L10}        ; |99| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "c6713dskinit.c",line 99,column 18,is_stmt
           MVKL    .S2     _MCBSP_rrdy,B4    ; |99| 

           MVKH    .S2     _MCBSP_rrdy,B4    ; |99| 
||         MVKL    .S1     _DSK6713_AIC23_codecdatahandle,A3

           CALL    .S2     B4                ; |99| 
||         MVKH    .S1     _DSK6713_AIC23_codecdatahandle,A3

           LDW     .D1T1   *A3,A4            ; |99| 
           MVKL    .S2     $C$RL28,B3        ; |99| 
           MVKH    .S2     $C$RL28,B3        ; |99| 
           NOP             2
$C$RL28:   ; CALL OCCURS {_MCBSP_rrdy}       ; |99| 
           MV      .L1     A4,A1             ; |99| 
   [ A1]   B       .S1     $C$L10            ; |99| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L10}        ; |99| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L9:    
$C$DW$L$_input_left_sample$3$B:
           MVKL    .S2     _MCBSP_rrdy,B4    ; |99| 

           MVKH    .S2     _MCBSP_rrdy,B4    ; |99| 
||         MVKL    .S1     _DSK6713_AIC23_codecdatahandle,A3

           CALL    .S2     B4                ; |99| 
||         MVKH    .S1     _DSK6713_AIC23_codecdatahandle,A3

           LDW     .D1T1   *A3,A4            ; |99| 
           MVKL    .S2     $C$RL29,B3        ; |99| 
           MVKH    .S2     $C$RL29,B3        ; |99| 
           NOP             2
$C$RL29:   ; CALL OCCURS {_MCBSP_rrdy}       ; |99| 
           MV      .L1     A4,A1             ; |99| 
   [!A1]   B       .S1     $C$L9             ; |99| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L9}         ; |99| 
$C$DW$L$_input_left_sample$3$E:
;** --------------------------------------------------------------------------*
$C$L10:    
	.dwpsn	file "c6713dskinit.c",line 100,column 3,is_stmt
;----------------------------------------------------------------------
; 100 | AIC_data.uint=MCBSP_read(DSK6713_AIC23_DATAHANDLE);//read into left cha
;     | nnel                                                                   
;----------------------------------------------------------------------
           MVKL    .S2     _MCBSP_read,B4    ; |100| 

           MVKH    .S2     _MCBSP_read,B4    ; |100| 
||         MVKL    .S1     _DSK6713_AIC23_codecdatahandle,A3

           CALL    .S2     B4                ; |100| 
||         MVKH    .S1     _DSK6713_AIC23_codecdatahandle,A3

           LDW     .D1T1   *A3,A4            ; |100| 
           MVKL    .S2     $C$RL30,B3        ; |100| 
           MVKH    .S2     $C$RL30,B3        ; |100| 
           NOP             2
$C$RL30:   ; CALL OCCURS {_MCBSP_read}       ; |100| 
           MVKL    .S2     _AIC_data,B4
           MVKH    .S2     _AIC_data,B4
           STW     .D2T1   A4,*B4            ; |100| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 101,column 2,is_stmt
;----------------------------------------------------------------------
; 101 | return(AIC_data.channel[LEFT]);                                 //retur
;     | n left channel data                                                    
;----------------------------------------------------------------------
           ADD     .L1X    2,B4,A3
           LDH     .D1T1   *A3,A4            ; |101| 
           NOP             4
	.dwpsn	file "c6713dskinit.c",line 102,column 1,is_stmt
           LDW     .D2T2   *++SP(8),B3       ; |102| 
           NOP             4
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
           RET     .S2     B3                ; |102| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |102| 

$C$DW$73	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$73, DW_AT_name("E:\dsp-fpga\EEL 4935 DSP_FPGA\disc_contents\C6713\Support\c6713dskinit.asm:$C$L9:1:1314645844")
	.dwattr $C$DW$73, DW_AT_TI_begin_file("c6713dskinit.c")
	.dwattr $C$DW$73, DW_AT_TI_begin_line(0x63)
	.dwattr $C$DW$73, DW_AT_TI_end_line(0x63)
$C$DW$74	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$74, DW_AT_low_pc($C$DW$L$_input_left_sample$3$B)
	.dwattr $C$DW$74, DW_AT_high_pc($C$DW$L$_input_left_sample$3$E)
	.dwendtag $C$DW$73

	.dwattr $C$DW$72, DW_AT_TI_end_file("c6713dskinit.c")
	.dwattr $C$DW$72, DW_AT_TI_end_line(0x66)
	.dwattr $C$DW$72, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$72

	.sect	".text"
	.global	_input_right_sample

$C$DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("input_right_sample")
	.dwattr $C$DW$75, DW_AT_low_pc(_input_right_sample)
	.dwattr $C$DW$75, DW_AT_high_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_input_right_sample")
	.dwattr $C$DW$75, DW_AT_external
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$75, DW_AT_TI_begin_file("c6713dskinit.c")
	.dwattr $C$DW$75, DW_AT_TI_begin_line(0x68)
	.dwattr $C$DW$75, DW_AT_TI_begin_column(0x07)
	.dwpsn	file "c6713dskinit.c",line 105,column 1,is_stmt,address _input_right_sample

	.dwfde $C$DW$CIE, _input_right_sample
;----------------------------------------------------------------------
; 104 | short input_right_sample()                              //input to righ
;     | t channel                                                              
;----------------------------------------------------------------------

;******************************************************************************
;* FUNCTION NAME: input_right_sample                                          *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP                                      *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************
_input_right_sample:
;** --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 0
	.dwcfi	save_reg_to_reg, 228, 19
           STW     .D2T2   B3,*SP--(8)       ; |105| 
           NOP             2
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
	.dwpsn	file "c6713dskinit.c",line 106,column 2,is_stmt
;----------------------------------------------------------------------
; 106 | if (poll) while(!MCBSP_rrdy(DSK6713_AIC23_DATAHANDLE));//if ready to re
;     | ceive                                                                  
;----------------------------------------------------------------------
           MVKL    .S1     _poll,A3
           MVKH    .S1     _poll,A3
           LDW     .D1T1   *A3,A1            ; |106| 
           NOP             4
   [!A1]   B       .S1     $C$L12            ; |106| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L12}        ; |106| 
;** --------------------------------------------------------------------------*
	.dwpsn	file "c6713dskinit.c",line 106,column 18,is_stmt
           MVKL    .S2     _MCBSP_rrdy,B4    ; |106| 

           MVKH    .S2     _MCBSP_rrdy,B4    ; |106| 
||         MVKL    .S1     _DSK6713_AIC23_codecdatahandle,A3

           CALL    .S2     B4                ; |106| 
||         MVKH    .S1     _DSK6713_AIC23_codecdatahandle,A3

           LDW     .D1T1   *A3,A4            ; |106| 
           MVKL    .S2     $C$RL31,B3        ; |106| 
           MVKH    .S2     $C$RL31,B3        ; |106| 
           NOP             2
$C$RL31:   ; CALL OCCURS {_MCBSP_rrdy}       ; |106| 
           MV      .L1     A4,A1             ; |106| 
   [ A1]   B       .S1     $C$L12            ; |106| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L12}        ; |106| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
$C$L11:    
$C$DW$L$_input_right_sample$3$B:
           MVKL    .S2     _MCBSP_rrdy,B4    ; |106| 

           MVKH    .S2     _MCBSP_rrdy,B4    ; |106| 
||         MVKL    .S1     _DSK6713_AIC23_codecdatahandle,A3

           CALL    .S2     B4                ; |106| 
||         MVKH    .S1     _DSK6713_AIC23_codecdatahandle,A3

           LDW     .D1T1   *A3,A4            ; |106| 
           MVKL    .S2     $C$RL32,B3        ; |106| 
           MVKH    .S2     $C$RL32,B3        ; |106| 
           NOP             2
$C$RL32:   ; CALL OCCURS {_MCBSP_rrdy}       ; |106| 
           MV      .L1     A4,A1             ; |106| 
   [!A1]   B       .S1     $C$L11            ; |106| 
           NOP             5
           ; BRANCHCC OCCURS {$C$L11}        ; |106| 
$C$DW$L$_input_right_sample$3$E:
;** --------------------------------------------------------------------------*
$C$L12:    
	.dwpsn	file "c6713dskinit.c",line 107,column 3,is_stmt
;----------------------------------------------------------------------
; 107 | AIC_data.uint=MCBSP_read(DSK6713_AIC23_DATAHANDLE);//read into right ch
;     | annel                                                                  
;----------------------------------------------------------------------
           MVKL    .S2     _MCBSP_read,B4    ; |107| 

           MVKH    .S2     _MCBSP_read,B4    ; |107| 
||         MVKL    .S1     _DSK6713_AIC23_codecdatahandle,A3

           CALL    .S2     B4                ; |107| 
||         MVKH    .S1     _DSK6713_AIC23_codecdatahandle,A3

           LDW     .D1T1   *A3,A4            ; |107| 
           MVKL    .S2     $C$RL33,B3        ; |107| 
           MVKH    .S2     $C$RL33,B3        ; |107| 
           NOP             2
$C$RL33:   ; CALL OCCURS {_MCBSP_read}       ; |107| 
           MVKL    .S2     _AIC_data,B4
           MVKH    .S2     _AIC_data,B4
           STW     .D2T1   A4,*B4            ; |107| 
           NOP             2
	.dwpsn	file "c6713dskinit.c",line 108,column 2,is_stmt
;----------------------------------------------------------------------
; 108 | return(AIC_data.channel[RIGHT]);                                //retur
;     | n right channel data                                                   
;----------------------------------------------------------------------
           MV      .L1X    B4,A3
           LDH     .D1T1   *A3,A4            ; |108| 
           NOP             4
	.dwpsn	file "c6713dskinit.c",line 109,column 1,is_stmt
           LDW     .D2T2   *++SP(8),B3       ; |109| 
           NOP             4
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
           RET     .S2     B3                ; |109| 
           NOP             5
           ; BRANCH OCCURS {B3}              ; |109| 

$C$DW$76	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$76, DW_AT_name("E:\dsp-fpga\EEL 4935 DSP_FPGA\disc_contents\C6713\Support\c6713dskinit.asm:$C$L11:1:1314645844")
	.dwattr $C$DW$76, DW_AT_TI_begin_file("c6713dskinit.c")
	.dwattr $C$DW$76, DW_AT_TI_begin_line(0x6a)
	.dwattr $C$DW$76, DW_AT_TI_end_line(0x6a)
$C$DW$77	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$77, DW_AT_low_pc($C$DW$L$_input_right_sample$3$B)
	.dwattr $C$DW$77, DW_AT_high_pc($C$DW$L$_input_right_sample$3$E)
	.dwendtag $C$DW$76

	.dwattr $C$DW$75, DW_AT_TI_end_file("c6713dskinit.c")
	.dwattr $C$DW$75, DW_AT_TI_end_line(0x6d)
	.dwattr $C$DW$75, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$75

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	_IRQ_map
	.global	_IRQ_enable
	.global	_IRQ_reset
	.global	_IRQ_globalEnable
	.global	_IRQ_globalDisable
	.global	_IRQ_nmiEnable
	.global	_DSK6713_init
	.global	_MCBSP_start
	.global	_MCBSP_getXmtEventId
	.global	_MCBSP_read
	.global	_MCBSP_write
	.global	_MCBSP_xrdy
	.global	_MCBSP_rrdy
	.global	_MCBSP_config
	.global	_DSK6713_AIC23_rset
	.global	_DSK6713_AIC23_openCodec
	.global	_DSK6713_AIC23_setFreq
	.global	_DSK6713_AIC23_codecdatahandle
	.global	_fs
	.global	_inputsource

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("Ptr")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)

$C$DW$T$42	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
$C$DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
$C$DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$T$42


$C$DW$T$44	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
$C$DW$80	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$T$44


$C$DW$T$46	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)

$C$DW$T$50	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
$C$DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$49)
$C$DW$82	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
$C$DW$83	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$T$50


$C$DW$T$52	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
$C$DW$84	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$49)
$C$DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$T$52


$C$DW$T$56	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
$C$DW$86	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$49)
$C$DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$55)
	.dwendtag $C$DW$T$56


$C$DW$T$60	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
$C$DW$88	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$58)
$C$DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$59)
$C$DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$59)
	.dwendtag $C$DW$T$60


$C$DW$T$62	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
$C$DW$91	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$58)
$C$DW$92	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$19)
	.dwendtag $C$DW$T$62


$C$DW$T$64	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
$C$DW$93	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
	.dwendtag $C$DW$T$64


$C$DW$T$66	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
$C$DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$8)
	.dwendtag $C$DW$T$66

$C$DW$T$4	.dwtag  DW_TAG_base_type, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$6	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$67	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
$C$DW$T$7	.dwtag  DW_TAG_base_type, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)

$C$DW$T$26	.dwtag  DW_TAG_array_type, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x04)
$C$DW$95	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$95, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$26


$C$DW$T$68	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
$C$DW$T$70	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
$C$DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
$C$DW$T$72	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$72, DW_AT_language(DW_LANG_C)
$C$DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)

$C$DW$T$24	.dwtag  DW_TAG_array_type, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x28)
$C$DW$96	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$96, DW_AT_upper_bound(0x09)
	.dwendtag $C$DW$T$24

$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_CodecHandle")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)

$C$DW$T$75	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$75, DW_AT_language(DW_LANG_C)
$C$DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$10)
$C$DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$74)
	.dwendtag $C$DW$T$75

$C$DW$T$77	.dwtag  DW_TAG_typedef, DW_AT_name("Int")
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
$C$DW$T$78	.dwtag  DW_TAG_typedef, DW_AT_name("Int32")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$78, DW_AT_language(DW_LANG_C)
$C$DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
$C$DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
$C$DW$T$21	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_address_class(0x20)
$C$DW$T$38	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x20)

$C$DW$T$79	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)

$C$DW$T$81	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$81, DW_AT_language(DW_LANG_C)
$C$DW$99	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*$C$DW$T$49)
	.dwendtag $C$DW$T$81

$C$DW$T$83	.dwtag  DW_TAG_typedef, DW_AT_name("Uns")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$12, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$12, DW_AT_bit_offset(0x18)
$C$DW$T$84	.dwtag  DW_TAG_typedef, DW_AT_name("Int40")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
$C$DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$13, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$13, DW_AT_bit_offset(0x18)
$C$DW$T$85	.dwtag  DW_TAG_typedef, DW_AT_name("Uint40")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
$C$DW$T$14	.dwtag  DW_TAG_base_type, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$15	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$17	.dwtag  DW_TAG_base_type, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$18	.dwtag  DW_TAG_base_type, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x18)
$C$DW$100	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$100, DW_AT_name("allocated")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_allocated")
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$101	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$101, DW_AT_name("xmtEventId")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_xmtEventId")
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$102	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$102, DW_AT_name("rcvEventId")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_rcvEventId")
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$103	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$103, DW_AT_name("baseAddr")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_baseAddr")
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$104	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$104, DW_AT_name("drrAddr")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_drrAddr")
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$105	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$105, DW_AT_name("dxrAddr")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_dxrAddr")
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$22

$C$DW$T$48	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$48, DW_AT_address_class(0x20)
$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("MCBSP_Handle")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
$C$DW$T$86	.dwtag  DW_TAG_typedef, DW_AT_name("MCBSP_Obj")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x20)
$C$DW$106	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$106, DW_AT_name("spcr")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_spcr")
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$107	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$107, DW_AT_name("rcr")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_rcr")
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$108	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$108, DW_AT_name("xcr")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_xcr")
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$109	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$109, DW_AT_name("srgr")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_srgr")
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$110	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$110, DW_AT_name("mcr")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_mcr")
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$111	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_name("rcer")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_rcer")
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$112	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$112, DW_AT_name("xcer")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_xcer")
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$113	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$113, DW_AT_name("pcr")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_pcr")
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$23

$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("MCBSP_Config")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
$C$DW$T$55	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$55, DW_AT_address_class(0x20)

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("DSK6713_AIC23_Config")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x28)
$C$DW$114	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$114, DW_AT_name("regs")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_regs")
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$25

$C$DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("DSK6713_AIC23_Config")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$73, DW_AT_language(DW_LANG_C)
$C$DW$T$74	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_address_class(0x20)

$C$DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x04)
$C$DW$115	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$115, DW_AT_name("uint")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_uint")
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$116	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$116, DW_AT_name("channel")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_channel")
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x04)
$C$DW$117	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$117, DW_AT_name("devcfg")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_devcfg")
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$28

$C$DW$T$92	.dwtag  DW_TAG_typedef, DW_AT_name("CHIP_Config")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x10)
$C$DW$118	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$118, DW_AT_name("funcAddr")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_funcAddr")
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$119	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$119, DW_AT_name("ieMask")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_ieMask")
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$120	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$120, DW_AT_name("ccMask")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_ccMask")
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$121	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$121, DW_AT_name("funcArg")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_funcArg")
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$29

$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("_IRQ_Dispatch")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
$C$DW$T$34	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_address_class(0x20)

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x10)
$C$DW$122	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$122, DW_AT_name("funcAddr")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_funcAddr")
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$123	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$123, DW_AT_name("funcArg")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_funcArg")
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$124	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$124, DW_AT_name("ccMask")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_ccMask")
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$125	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$125, DW_AT_name("ieMask")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_ieMask")
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$30

$C$DW$T$93	.dwtag  DW_TAG_typedef, DW_AT_name("IRQ_Config")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x0c)
$C$DW$126	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$126, DW_AT_name("allocated")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_allocated")
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$127	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$127, DW_AT_name("eventId")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_eventId")
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$128	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$128, DW_AT_name("baseAddr")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_baseAddr")
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$31

$C$DW$T$36	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$36, DW_AT_address_class(0x20)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("TIMER_Handle")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$T$94	.dwtag  DW_TAG_typedef, DW_AT_name("TIMER_Obj")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)

$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x0c)
$C$DW$129	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$129, DW_AT_name("ctl")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_ctl")
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$130	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$130, DW_AT_name("prd")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_prd")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$131	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$131, DW_AT_name("cnt")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_cnt")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$32

$C$DW$T$95	.dwtag  DW_TAG_typedef, DW_AT_name("TIMER_Config")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x10)
$C$DW$132	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$132, DW_AT_name("biosPresent")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_biosPresent")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$133	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$133, DW_AT_name("dispatchTable")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_dispatchTable")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$134	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$134, DW_AT_name("timerUsed")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_timerUsed")
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$135	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$135, DW_AT_name("timerNum")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_timerNum")
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$35


$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x0c)
$C$DW$136	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$136, DW_AT_name("hTimer")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_hTimer")
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$137	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$137, DW_AT_name("event2IntTbl")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_event2IntTbl")
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$138	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$138, DW_AT_name("int2EventTbl")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_int2EventTbl")
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x10)
$C$DW$139	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$139, DW_AT_name("args")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_args")
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)
$C$DW$140	.dwtag  DW_TAG_member, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$140, DW_AT_name("ret")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_ret")
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag $C$DW$T$40

$C$DW$T$96	.dwtag  DW_TAG_typedef, DW_AT_name("_CSL_Config")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)
$C$DW$T$87	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr $C$DW$T$87, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x01)
$C$DW$T$88	.dwtag  DW_TAG_typedef, DW_AT_name("Char")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
$C$DW$T$89	.dwtag  DW_TAG_pointer_type, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$89, DW_AT_address_class(0x20)
$C$DW$T$90	.dwtag  DW_TAG_typedef, DW_AT_name("String")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
$C$DW$T$91	.dwtag  DW_TAG_typedef, DW_AT_name("Int8")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 228
	.dwcfi	cfa_register, 31
	.dwcfi	cfa_offset, 0
	.dwcfi	undefined, 0
	.dwcfi	undefined, 1
	.dwcfi	undefined, 2
	.dwcfi	undefined, 3
	.dwcfi	undefined, 4
	.dwcfi	undefined, 5
	.dwcfi	undefined, 6
	.dwcfi	undefined, 7
	.dwcfi	undefined, 8
	.dwcfi	undefined, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	same_value, 12
	.dwcfi	same_value, 13
	.dwcfi	same_value, 14
	.dwcfi	same_value, 15
	.dwcfi	undefined, 16
	.dwcfi	undefined, 17
	.dwcfi	undefined, 18
	.dwcfi	undefined, 19
	.dwcfi	undefined, 20
	.dwcfi	undefined, 21
	.dwcfi	undefined, 22
	.dwcfi	undefined, 23
	.dwcfi	undefined, 24
	.dwcfi	undefined, 25
	.dwcfi	same_value, 26
	.dwcfi	same_value, 27
	.dwcfi	same_value, 28
	.dwcfi	same_value, 29
	.dwcfi	same_value, 30
	.dwcfi	same_value, 31
	.dwcfi	same_value, 32
	.dwcfi	undefined, 33
	.dwcfi	undefined, 34
	.dwcfi	undefined, 35
	.dwcfi	undefined, 36
	.dwcfi	undefined, 37
	.dwcfi	undefined, 38
	.dwcfi	undefined, 39
	.dwcfi	undefined, 40
	.dwcfi	undefined, 41
	.dwcfi	undefined, 42
	.dwcfi	undefined, 43
	.dwcfi	undefined, 44
	.dwcfi	undefined, 45
	.dwcfi	undefined, 46
	.dwcfi	undefined, 47
	.dwcfi	undefined, 48
	.dwcfi	undefined, 49
	.dwcfi	undefined, 50
	.dwcfi	undefined, 51
	.dwcfi	undefined, 52
	.dwcfi	undefined, 53
	.dwcfi	undefined, 54
	.dwcfi	undefined, 55
	.dwcfi	undefined, 56
	.dwcfi	undefined, 57
	.dwcfi	undefined, 58
	.dwcfi	undefined, 59
	.dwcfi	undefined, 60
	.dwcfi	undefined, 61
	.dwcfi	undefined, 62
	.dwcfi	undefined, 63
	.dwcfi	undefined, 64
	.dwcfi	undefined, 65
	.dwcfi	undefined, 66
	.dwcfi	undefined, 67
	.dwcfi	undefined, 68
	.dwcfi	undefined, 69
	.dwcfi	undefined, 70
	.dwcfi	undefined, 71
	.dwcfi	undefined, 72
	.dwcfi	undefined, 73
	.dwcfi	undefined, 74
	.dwcfi	undefined, 75
	.dwcfi	undefined, 76
	.dwcfi	undefined, 77
	.dwcfi	undefined, 78
	.dwcfi	undefined, 79
	.dwcfi	undefined, 80
	.dwcfi	undefined, 81
	.dwcfi	undefined, 82
	.dwcfi	undefined, 83
	.dwcfi	undefined, 84
	.dwcfi	undefined, 85
	.dwcfi	undefined, 86
	.dwcfi	undefined, 87
	.dwcfi	undefined, 88
	.dwcfi	undefined, 89
	.dwcfi	undefined, 90
	.dwcfi	undefined, 91
	.dwcfi	undefined, 92
	.dwcfi	undefined, 93
	.dwcfi	undefined, 94
	.dwcfi	undefined, 95
	.dwcfi	undefined, 96
	.dwcfi	undefined, 97
	.dwcfi	undefined, 98
	.dwcfi	undefined, 99
	.dwcfi	undefined, 100
	.dwcfi	undefined, 101
	.dwcfi	undefined, 102
	.dwcfi	undefined, 103
	.dwcfi	undefined, 104
	.dwcfi	undefined, 105
	.dwcfi	undefined, 106
	.dwcfi	undefined, 107
	.dwcfi	undefined, 108
	.dwcfi	undefined, 109
	.dwcfi	undefined, 110
	.dwcfi	undefined, 111
	.dwcfi	undefined, 112
	.dwcfi	undefined, 113
	.dwcfi	undefined, 114
	.dwcfi	undefined, 115
	.dwcfi	undefined, 116
	.dwcfi	undefined, 117
	.dwcfi	undefined, 118
	.dwcfi	undefined, 119
	.dwcfi	undefined, 120
	.dwcfi	undefined, 121
	.dwcfi	undefined, 122
	.dwcfi	undefined, 123
	.dwcfi	undefined, 124
	.dwcfi	undefined, 125
	.dwcfi	undefined, 126
	.dwcfi	undefined, 127
	.dwcfi	undefined, 128
	.dwcfi	undefined, 129
	.dwcfi	undefined, 130
	.dwcfi	undefined, 131
	.dwcfi	undefined, 132
	.dwcfi	undefined, 133
	.dwcfi	undefined, 134
	.dwcfi	undefined, 135
	.dwcfi	undefined, 136
	.dwcfi	undefined, 137
	.dwcfi	undefined, 138
	.dwcfi	undefined, 139
	.dwcfi	undefined, 140
	.dwcfi	undefined, 141
	.dwcfi	undefined, 142
	.dwcfi	undefined, 143
	.dwcfi	undefined, 144
	.dwcfi	undefined, 145
	.dwcfi	undefined, 146
	.dwcfi	undefined, 147
	.dwcfi	undefined, 148
	.dwcfi	undefined, 149
	.dwcfi	undefined, 150
	.dwcfi	undefined, 151
	.dwcfi	undefined, 152
	.dwcfi	undefined, 153
	.dwcfi	undefined, 154
	.dwcfi	undefined, 155
	.dwcfi	undefined, 156
	.dwcfi	undefined, 157
	.dwcfi	undefined, 158
	.dwcfi	undefined, 159
	.dwcfi	undefined, 160
	.dwcfi	undefined, 161
	.dwcfi	undefined, 162
	.dwcfi	undefined, 163
	.dwcfi	undefined, 164
	.dwcfi	undefined, 165
	.dwcfi	undefined, 166
	.dwcfi	undefined, 167
	.dwcfi	undefined, 168
	.dwcfi	undefined, 169
	.dwcfi	undefined, 170
	.dwcfi	undefined, 171
	.dwcfi	undefined, 172
	.dwcfi	undefined, 173
	.dwcfi	undefined, 174
	.dwcfi	undefined, 175
	.dwcfi	undefined, 176
	.dwcfi	undefined, 177
	.dwcfi	undefined, 178
	.dwcfi	undefined, 179
	.dwcfi	undefined, 180
	.dwcfi	undefined, 181
	.dwcfi	undefined, 182
	.dwcfi	undefined, 183
	.dwcfi	undefined, 184
	.dwcfi	undefined, 185
	.dwcfi	undefined, 186
	.dwcfi	undefined, 187
	.dwcfi	undefined, 188
	.dwcfi	undefined, 189
	.dwcfi	undefined, 190
	.dwcfi	undefined, 191
	.dwcfi	undefined, 192
	.dwcfi	undefined, 193
	.dwcfi	undefined, 194
	.dwcfi	undefined, 195
	.dwcfi	undefined, 196
	.dwcfi	undefined, 197
	.dwcfi	undefined, 198
	.dwcfi	undefined, 199
	.dwcfi	undefined, 200
	.dwcfi	undefined, 201
	.dwcfi	undefined, 202
	.dwcfi	undefined, 203
	.dwcfi	undefined, 204
	.dwcfi	undefined, 205
	.dwcfi	undefined, 206
	.dwcfi	undefined, 207
	.dwcfi	undefined, 208
	.dwcfi	undefined, 209
	.dwcfi	undefined, 210
	.dwcfi	undefined, 211
	.dwcfi	undefined, 212
	.dwcfi	undefined, 213
	.dwcfi	undefined, 214
	.dwcfi	undefined, 215
	.dwcfi	undefined, 216
	.dwcfi	undefined, 217
	.dwcfi	undefined, 218
	.dwcfi	undefined, 219
	.dwcfi	undefined, 220
	.dwcfi	undefined, 221
	.dwcfi	undefined, 222
	.dwcfi	undefined, 223
	.dwcfi	undefined, 224
	.dwcfi	undefined, 225
	.dwcfi	undefined, 226
	.dwcfi	undefined, 227
	.dwcfi	undefined, 228
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A0")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg0]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A1")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg1]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A2")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg2]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A3")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg3]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A4")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg4]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A5")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg5]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A6")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg6]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A7")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg7]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A8")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg8]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A9")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg9]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A10")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg10]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A11")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg11]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A12")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg12]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A13")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg13]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A14")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg14]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A15")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg15]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B0")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg16]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B1")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg17]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B2")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg18]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B3")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg19]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B4")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg20]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B5")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg21]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B6")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg22]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B7")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg23]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B8")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg24]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B9")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg25]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B10")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_reg26]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B11")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_reg27]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B12")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_reg28]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B13")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_reg29]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DP")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_reg30]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_reg31]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x20]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x21]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IRP")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x22]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IFR")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x23]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NRP")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x24]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A16")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x25]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A17")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x26]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A18")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x27]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A19")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x28]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A20")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x29]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A21")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A22")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A23")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A24")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A25")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A26")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A27")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x30]
$C$DW$190	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A28")
	.dwattr $C$DW$190, DW_AT_location[DW_OP_regx 0x31]
$C$DW$191	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A29")
	.dwattr $C$DW$191, DW_AT_location[DW_OP_regx 0x32]
$C$DW$192	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A30")
	.dwattr $C$DW$192, DW_AT_location[DW_OP_regx 0x33]
$C$DW$193	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("A31")
	.dwattr $C$DW$193, DW_AT_location[DW_OP_regx 0x34]
$C$DW$194	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B16")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_regx 0x35]
$C$DW$195	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B17")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_regx 0x36]
$C$DW$196	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B18")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_regx 0x37]
$C$DW$197	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B19")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_regx 0x38]
$C$DW$198	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B20")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_regx 0x39]
$C$DW$199	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B21")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$200	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B22")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$201	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B23")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$202	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B24")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$203	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B25")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$204	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B26")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$205	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B27")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_regx 0x40]
$C$DW$206	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B28")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_regx 0x41]
$C$DW$207	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B29")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_regx 0x42]
$C$DW$208	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B30")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_regx 0x43]
$C$DW$209	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("B31")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x44]
$C$DW$210	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AMR")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x45]
$C$DW$211	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x46]
$C$DW$212	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISR")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x47]
$C$DW$213	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ICR")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x48]
$C$DW$214	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IER")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x49]
$C$DW$215	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ISTP")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$216	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IN")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$217	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OUT")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$218	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ACR")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$219	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ADR")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$220	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FADCR")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$221	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FAUCR")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_regx 0x50]
$C$DW$222	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FMCR")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_regx 0x51]
$C$DW$223	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GFPGFR")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_regx 0x52]
$C$DW$224	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DIER")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_regx 0x53]
$C$DW$225	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REP")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_regx 0x54]
$C$DW$226	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCL")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_regx 0x55]
$C$DW$227	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSCH")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_regx 0x56]
$C$DW$228	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARP")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_regx 0x57]
$C$DW$229	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ILC")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_regx 0x58]
$C$DW$230	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RILC")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_regx 0x59]
$C$DW$231	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DNUM")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$232	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SSR")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_regx 0x5b]
$C$DW$233	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYA")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_regx 0x5c]
$C$DW$234	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("GPLYB")
	.dwattr $C$DW$234, DW_AT_location[DW_OP_regx 0x5d]
$C$DW$235	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TSR")
	.dwattr $C$DW$235, DW_AT_location[DW_OP_regx 0x5e]
$C$DW$236	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ITSR")
	.dwattr $C$DW$236, DW_AT_location[DW_OP_regx 0x5f]
$C$DW$237	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("NTSR")
	.dwattr $C$DW$237, DW_AT_location[DW_OP_regx 0x60]
$C$DW$238	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("EFR")
	.dwattr $C$DW$238, DW_AT_location[DW_OP_regx 0x61]
$C$DW$239	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ECR")
	.dwattr $C$DW$239, DW_AT_location[DW_OP_regx 0x62]
$C$DW$240	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("IERR")
	.dwattr $C$DW$240, DW_AT_location[DW_OP_regx 0x63]
$C$DW$241	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DMSG")
	.dwattr $C$DW$241, DW_AT_location[DW_OP_regx 0x64]
$C$DW$242	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CMSG")
	.dwattr $C$DW$242, DW_AT_location[DW_OP_regx 0x65]
$C$DW$243	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr $C$DW$243, DW_AT_location[DW_OP_regx 0x66]
$C$DW$244	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr $C$DW$244, DW_AT_location[DW_OP_regx 0x67]
$C$DW$245	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr $C$DW$245, DW_AT_location[DW_OP_regx 0x68]
$C$DW$246	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr $C$DW$246, DW_AT_location[DW_OP_regx 0x69]
$C$DW$247	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr $C$DW$247, DW_AT_location[DW_OP_regx 0x6a]
$C$DW$248	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr $C$DW$248, DW_AT_location[DW_OP_regx 0x6b]
$C$DW$249	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr $C$DW$249, DW_AT_location[DW_OP_regx 0x6c]
$C$DW$250	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr $C$DW$250, DW_AT_location[DW_OP_regx 0x6d]
$C$DW$251	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr $C$DW$251, DW_AT_location[DW_OP_regx 0x6e]
$C$DW$252	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr $C$DW$252, DW_AT_location[DW_OP_regx 0x6f]
$C$DW$253	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr $C$DW$253, DW_AT_location[DW_OP_regx 0x70]
$C$DW$254	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MFREG0")
	.dwattr $C$DW$254, DW_AT_location[DW_OP_regx 0x71]
$C$DW$255	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DBG_STAT")
	.dwattr $C$DW$255, DW_AT_location[DW_OP_regx 0x72]
$C$DW$256	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRK_EN")
	.dwattr $C$DW$256, DW_AT_location[DW_OP_regx 0x73]
$C$DW$257	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr $C$DW$257, DW_AT_location[DW_OP_regx 0x74]
$C$DW$258	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP0")
	.dwattr $C$DW$258, DW_AT_location[DW_OP_regx 0x75]
$C$DW$259	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP1")
	.dwattr $C$DW$259, DW_AT_location[DW_OP_regx 0x76]
$C$DW$260	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP2")
	.dwattr $C$DW$260, DW_AT_location[DW_OP_regx 0x77]
$C$DW$261	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("HWBP3")
	.dwattr $C$DW$261, DW_AT_location[DW_OP_regx 0x78]
$C$DW$262	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("OVERLAY")
	.dwattr $C$DW$262, DW_AT_location[DW_OP_regx 0x79]
$C$DW$263	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC_PROF")
	.dwattr $C$DW$263, DW_AT_location[DW_OP_regx 0x7a]
$C$DW$264	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ATSR")
	.dwattr $C$DW$264, DW_AT_location[DW_OP_regx 0x7b]
$C$DW$265	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRR")
	.dwattr $C$DW$265, DW_AT_location[DW_OP_regx 0x7c]
$C$DW$266	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TCRR")
	.dwattr $C$DW$266, DW_AT_location[DW_OP_regx 0x7d]
$C$DW$267	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DESR")
	.dwattr $C$DW$267, DW_AT_location[DW_OP_regx 0x7e]
$C$DW$268	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("DETR")
	.dwattr $C$DW$268, DW_AT_location[DW_OP_regx 0x7f]
$C$DW$269	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$269, DW_AT_location[DW_OP_regx 0xe4]
	.dwendtag $C$DW$CU

