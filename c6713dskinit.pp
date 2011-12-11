

 




 






 









 
 








 







 
 








 







 
 






 







 
 






 



 


   
   
   









   
   
   







   
   
   






 


 




 

 

 
 
 




 
typedef unsigned char    Uint8;
typedef unsigned short   Uint16;
typedef unsigned int     Uint32;
typedef unsigned long    Uint40;
typedef char             Int8;
typedef short            Int16;
typedef int              Int32;
typedef long             Int40;


 



 



 








 
 









































 




 
























 
 
 
 
 
 
 
 
 
 
 
 



 



 

   
   
   


 
 
   
   
   








 



















 
  extern far cregister volatile unsigned int CSR;



























 
  extern far cregister volatile unsigned int IFR;



















 
  extern far cregister volatile unsigned int ISR;



















 
  extern far cregister volatile unsigned int ICR;



















 
  extern far cregister volatile unsigned int IER;




















 
  extern far cregister volatile unsigned int ISTP;




















 
  extern far cregister volatile unsigned int IRP;



















 
  extern far cregister volatile unsigned int NRP;




























 
  extern far cregister volatile unsigned int AMR;































 














 

































 



































 

































 













 













 













 














 































 
  







  
  






 


















 
















 
  















 


 

 







 
 




















 







 
 








 

 



 



 

   
   
   


 
 
   
   
   






 
 
   
   
   


































 



















































 




  


  
 





































 


  
  
  
  



























 



  

































 





















 


 




 





 


 




 





 

typedef struct{
   Uint32 devcfg;
} CHIP_Config; 


 



 



 
extern far Uint32 CHIP_getCpuId();
extern far Uint32 CHIP_getRevId();
extern far Uint32 CHIP_getSiliconRevId();
extern far int    CHIP_getEndian();
extern far int    CHIP_getMapMode();

extern far void   CHIP_config(CHIP_Config *config);
extern far void   CHIP_configArgs(Uint32 devcfg);
extern far void   CHIP_getConfig(CHIP_Config *config); 


 



 







 
 







 







 
 













 



 



 

   
   
   


 
 
   
   
   






 
 
   
   
   






















 





























 
























 









 


 




 





 

 

 


 

 


 



 
typedef struct {
  void   *funcAddr;
  Uint32 ieMask;
  Uint32 ccMask;
  Uint32 funcArg;
} _IRQ_Dispatch;

typedef struct {
  void   *funcAddr;
  Uint32 funcArg;
  Uint32 ccMask;
  Uint32 ieMask;
} IRQ_Config;



 

 
extern far Uint32 _IRQ_eventTable[32+1];
extern far Uint32 _IRQ_intTable[16];
extern far _IRQ_Dispatch _IRQ_internalDispatchTable[(16)];
extern far _IRQ_Dispatch *_IRQ_dispatchTable;


 

 
extern far void _IRQ_init(Uint32 biosPresent, _IRQ_Dispatch *dispatchTable);

 
extern far void IRQ_map(Uint32 eventId, Uint32 intNumber);
extern far void *IRQ_setVecs(void *vecs);
extern far Uint32 IRQ_biosPresent();
extern far void IRQ_hook(int intNum, void *func);

 
extern far void IRQ_config(Uint32 eventId, IRQ_Config *config);
extern far void IRQ_configArgs(Uint32 eventId, void *funcAddr, Uint32 funcArg,
  Uint32 ccMask, Uint32 ieMask);
extern far void IRQ_getConfig(Uint32 eventId, IRQ_Config *config);
extern far Uint32 IRQ_getArg(Uint32 eventId);
extern far void IRQ_setArg(Uint32 eventId, Uint32 arg);



 
extern far void IRQ_enable(Uint32 eventId);
extern far Uint32 IRQ_disable(Uint32 eventId);
extern far void IRQ_restore(Uint32 eventId, Uint32 ie);
extern far void IRQ_set(Uint32 eventId);
extern far void IRQ_clear(Uint32 eventId);
extern far Uint32 IRQ_test(Uint32 eventId);
extern far void IRQ_reset(Uint32 eventId);
extern far void IRQ_resetAll();

extern far void IRQ_globalEnable();
extern far Uint32 IRQ_globalDisable();
extern far void IRQ_globalRestore(Uint32 gie);

extern far void IRQ_nmiEnable();
extern far void IRQ_nmiDisable();



 



 







 
 






 







 
 





















 



 





 

   
   
   


 
 
   
   
   






 
 
   
   
   







   
   
   





































 





































 



























 













 


 




 





 

 

 



 

 
typedef struct {
  Uint32 allocated;
  Uint32 eventId;
  volatile Uint32 *baseAddr;
} TIMER_Obj, *TIMER_Handle;

 
typedef struct {
  Uint32 ctl;
  Uint32 prd;
  Uint32 cnt;
} TIMER_Config;



 

 
extern far TIMER_Handle _TIMER_hDev0;
extern far TIMER_Handle _TIMER_hDev1;
extern far TIMER_Handle _TIMER_hBios;



 
extern far TIMER_Handle TIMER_getBiosHandle(); 

extern far void TIMER_reset(TIMER_Handle hTimer);
extern far void TIMER_resetAll();

extern far TIMER_Handle TIMER_open(int devNum, Uint32 flags);
extern far void TIMER_close(TIMER_Handle hTimer);



 
extern far Uint32 TIMER_getEventId(TIMER_Handle hTimer);

extern far void TIMER_start(TIMER_Handle hTimer);
extern far void TIMER_pause(TIMER_Handle hTimer);
extern far void TIMER_resume(TIMER_Handle hTimer);

extern far Uint32 TIMER_getPeriod(TIMER_Handle hTimer);
extern far void   TIMER_setPeriod(TIMER_Handle hTimer, Uint32 period);
extern far Uint32 TIMER_getCount(TIMER_Handle hTimer);
extern far void   TIMER_setCount(TIMER_Handle hTimer, Uint32 count);

extern far int  TIMER_getDatIn(TIMER_Handle hTimer);
extern far void TIMER_setDatOut(TIMER_Handle hTimer, int Val);
extern far int  TIMER_getTstat(TIMER_Handle hTimer);

extern far void TIMER_config(TIMER_Handle hTimer, TIMER_Config *config);
extern far void TIMER_configArgs(TIMER_Handle hTimer, Uint32 ctl, Uint32 prd, 
  Uint32 cnt);
extern far void TIMER_getConfig(TIMER_Handle hTimer, TIMER_Config *config);



 



 




 





 



 

 
typedef union {
  struct {
    Uint32 biosPresent;
    _IRQ_Dispatch *dispatchTable;
    Uint32 timerUsed;
    Uint32 timerNum;
  } args;
  struct {
    TIMER_Handle hTimer;
    Uint32 *event2IntTbl;
    Uint32 *int2EventTbl;
  } ret;
} _CSL_Config;



 



 
extern far void _CSL_init(_CSL_Config *config);

extern far void CSL6201_LIB_();
extern far void CSL6202_LIB_();
extern far void CSL6203_LIB_();
extern far void CSL6204_LIB_();
extern far void CSL6205_LIB_();
extern far void CSL6211_LIB_();
extern far void CSL6701_LIB_();
extern far void CSL6711_LIB_();
extern far void CSL6712_LIB_();
extern far void CSL6713_LIB_();
extern far void CSLDA610_LIB_();
extern far void CSLDM642_LIB_();
extern far void CSL6412_LIB_();
extern far void CSL6414_LIB_();
extern far void CSL6415_LIB_();
extern far void CSL6416_LIB_();


 



 

 
 

static inline void CSL_init() {

    CSL6713_LIB_();


  _CSL_init((_CSL_Config*)((void*)(-1)));
}

 



 



 






 

 

 

 

 


 
void DSK6713_init();

 
Uint8 DSK6713_rget(Int16 regnum);

 
void DSK6713_rset(Int16 regnum, Uint8 regval);

 
void DSK6713_wait(Uint32 delay);

 
void DSK6713_waitusec(Uint32 delay);

 
Int16 DSK6713_getVersion();





 
 




 








 
 







 







 
 




































































 



 




 

   
   
   




   
   
   








   
   
   







   
   
   



























 





























 




  








  

































 




  




















































 















































 











































 












































 








































 






























 














 














 

 












 
















 

















  












 














 

 












 














 



























 


























 


 




 





 

 

 


 

 

 

 


 

 
typedef struct {
  Uint32 allocated;
  Uint32 xmtEventId;
  Uint32 rcvEventId;
  volatile Uint32 *baseAddr;
  Uint32 drrAddr;
  Uint32 dxrAddr;
} MCBSP_Obj, *MCBSP_Handle;

 
typedef struct {
  Uint32 spcr;
  Uint32 rcr;
  Uint32 xcr;
  Uint32 srgr;
  Uint32 mcr;
  Uint32 rcer; 
  Uint32 xcer;
  Uint32 pcr;
} MCBSP_Config;


 

 
extern far MCBSP_Handle _MCBSP_hDev0;
extern far MCBSP_Handle _MCBSP_hDev1;




 
extern far void MCBSP_reset(MCBSP_Handle hMcbsp);
extern far void MCBSP_resetAll();
extern far void MCBSP_start(MCBSP_Handle hMcbsp, Uint32 startMask, Uint32 sampleratedelay); 

extern far MCBSP_Handle MCBSP_open(int devNum, Uint32 flags);
extern far void MCBSP_close(MCBSP_Handle hMcbsp);

extern far Uint32 MCBSP_getPins(MCBSP_Handle hMcbsp);
extern far void MCBSP_setPins(MCBSP_Handle hMcbsp, Uint32 pins);



 
extern far Uint32 MCBSP_getXmtAddr(MCBSP_Handle hMcbsp);
extern far Uint32 MCBSP_getRcvAddr(MCBSP_Handle hMcbsp);
extern far Uint32 MCBSP_getXmtEventId(MCBSP_Handle hMcbsp);
extern far Uint32 MCBSP_getRcvEventId(MCBSP_Handle hMcbsp);

extern far Uint32 MCBSP_read(MCBSP_Handle hMcbsp);
extern far void   MCBSP_write(MCBSP_Handle hMcbsp, Uint32 val);

extern far void   MCBSP_enableXmt(MCBSP_Handle hMcbsp);
extern far void   MCBSP_enableRcv(MCBSP_Handle hMcbsp);
extern far void   MCBSP_enableFsync(MCBSP_Handle hMcbsp);
extern far void   MCBSP_enableSrgr(MCBSP_Handle hMcbsp);

extern far Uint32 MCBSP_xrdy(MCBSP_Handle hMcbsp);
extern far Uint32 MCBSP_rrdy(MCBSP_Handle hMcbsp);
extern far Uint32 MCBSP_xempty(MCBSP_Handle hMcbsp);
extern far Uint32 MCBSP_rfull(MCBSP_Handle hMcbsp);
extern far Uint32 MCBSP_xsyncerr(MCBSP_Handle hMcbsp);
extern far Uint32 MCBSP_rsyncerr(MCBSP_Handle hMcbsp);

extern far void MCBSP_config(MCBSP_Handle hMcbsp, MCBSP_Config *config);

extern far void MCBSP_configArgs(MCBSP_Handle hMcbsp, Uint32 spcr, Uint32 rcr, 
  Uint32 xcr, Uint32 srgr, Uint32 mcr, Uint32 rcer, Uint32 xcer, Uint32 pcr);

extern far void MCBSP_getConfig(MCBSP_Handle hMcbsp, MCBSP_Config *config);



 



 


 

 
extern MCBSP_Handle DSK6713_AIC23_codecdatahandle;
extern MCBSP_Handle DSK6713_AIC23_codeccontrolhandle;

 

 

 
typedef int DSK6713_AIC23_CodecHandle;

 
typedef struct DSK6713_AIC23_Config {
    int regs[10];
} DSK6713_AIC23_Config;


 
void DSK6713_AIC23_rset(DSK6713_AIC23_CodecHandle hCodec, Uint16 regnum, Uint16 regval);

 
Uint16 DSK6713_AIC23_rget(DSK6713_AIC23_CodecHandle hCodec, Uint16 regnum);

 
DSK6713_AIC23_CodecHandle DSK6713_AIC23_openCodec(int id, DSK6713_AIC23_Config *Config);

 
void DSK6713_AIC23_closeCodec(DSK6713_AIC23_CodecHandle hCodec);

 
void DSK6713_AIC23_config(DSK6713_AIC23_CodecHandle hCodec, DSK6713_AIC23_Config *Config);

 
Int16 DSK6713_AIC23_write(DSK6713_AIC23_CodecHandle hCodec, Uint32 val);

 
Int16 DSK6713_AIC23_read(DSK6713_AIC23_CodecHandle hCodec, Uint32 *val);

 
void DSK6713_AIC23_outGain(DSK6713_AIC23_CodecHandle hCodec, Uint16 outGain);

 
void DSK6713_AIC23_loopback(DSK6713_AIC23_CodecHandle hCodec, Int16 mode);

 
void DSK6713_AIC23_mute(DSK6713_AIC23_CodecHandle hCodec, Int16 mode);

 
void DSK6713_AIC23_powerDown(DSK6713_AIC23_CodecHandle hCodec, Uint16 sect);

 
void DSK6713_AIC23_setFreq(DSK6713_AIC23_CodecHandle hCodec, Uint32 freq);





union {
	Uint32 uint;
	short channel[2];
	} AIC_data; 

extern far void vectors();         

static Uint32 CODECEventId, poll;



MCBSP_Config AIC23CfgData = {
        ( (0x00000000u<<0x00000019u) &0x02000000u )              |
        ( (0x00000000u<<0x00000018u) &0x01000000u )              |
        ( (0x00000000u<<0x00000017u) &0x00800000u )             |
        ( (0x00000000u<<0x00000016u) &0x00400000u )             |
        ( (0x00000000u<<0x00000014u) &0x00300000u )           |
        ( (0x00000000u<<0x00000013u) &0x00080000u )          |
        ( (0x00000000u<<0x00000010u) &0x00010000u )             |
        ( (0x00000000u<<0x0000000Fu) &0x00008000u )              |
        ( (0x00000000u<<0x0000000Du) &0x00006000u )            |
        ( (0x00000000u<<0x0000000Bu) &0x00001800u )       |
        ( (0x00000000u<<0x00000007u) &0x00000080u )            |
        ( (0x00000000u<<0x00000004u) &0x00000030u )           |
        ( (0x00000000u<<0x00000003u) &0x00000008u )          |
        ( (0x00000000u<<0x00000000u) &0x00000001u ),

        ( (0x00000000u<<0x0000001Fu) &0x80000000u )         |
        ( (0x00000000u<<0x00000018u) &0x7F000000u )       |
        ( (0x00000000u<<0x00000015u) &0x00E00000u )       |
        ( (0x00000000u<<0x00000013u) &0x00180000u )          |
        ( (0x00000000u<<0x00000012u) &0x00040000u )               |
        ( (0x00000000u<<0x00000010u) &0x00030000u )          |
        ( (((Uint32)(0))<<0x00000008u) &0x00007F00u )         | 
        ( (0x00000005u<<0x00000005u) &0x000000E0u )         | 
        ( (0x00000000u<<0x00000004u) &0x00000010u ),

        ( (0x00000000u<<0x0000001Fu) &0x80000000u )         |
        ( (0x00000000u<<0x00000018u) &0x7F000000u )       |
        ( (0x00000000u<<0x00000015u) &0x00E00000u )       |
        ( (0x00000000u<<0x00000013u) &0x00180000u )          |
        ( (0x00000000u<<0x00000012u) &0x00040000u )               |
        ( (0x00000000u<<0x00000010u) &0x00030000u )          |
        ( (((Uint32)(0))<<0x00000008u) &0x00007F00u )         | 
        ( (0x00000005u<<0x00000005u) &0x000000E0u )         | 
        ( (0x00000000u<<0x00000004u) &0x00000010u ),
        
        ( (0x00000000u<<0x0000001Fu) &0x80000000u )        |
        ( (0x00000000u<<0x0000001Eu) &0x40000000u )        |
        ( (0x00000001u<<0x0000001Du) &0x20000000u )        |
        ( (0x00000000u<<0x0000001Cu) &0x10000000u )         |
        ( (0x00000000u<<0x00000010u) &0x0FFF0000u )         |
        ( (0x00000000u<<0x00000008u) &0x0000FF00u )         |
        ( (0x00000001u<<0x00000000u) &0x000000FFu ),

        (Uint32)( ((0x00000000u << 0x00000017u) & 0x01800000u) |((0x00000000u << 0x00000015u) & 0x00600000u) |((0x00000000u << 0x00000012u) & 0x001C0000u) |((0x00000000u << 0x00000010u) & 0x00030000u) |((0x00000000u << 0x00000007u) & 0x00000180u) |((0x00000000u << 0x00000005u) & 0x00000060u) |((0x00000000u << 0x00000002u) & 0x0000001Cu) |((0x00000000u << 0x00000000u) & 0x00000001u) ),
        (Uint32)( ((0x00000000u << 0x00000010u) & 0xFFFF0000u) |((0x00000000u << 0x00000000u) & 0x0000FFFFu) ),
        (Uint32)( ((0x00000000u << 0x00000010u) & 0xFFFF0000u) |((0x00000000u << 0x00000000u) & 0x0000FFFFu) ),

        ( (0x00000000u<<0x0000000Du) &0x00002000u )              |
        ( (0x00000000u<<0x0000000Cu) &0x00001000u )              |
        ( (0x00000000u<<0x0000000Bu) &0x00000800u )         |
        ( (0x00000000u<<0x0000000Au) &0x00000400u )         |
        ( (0x00000000u<<0x00000009u) &0x00000200u )           |
        ( (0x00000000u<<0x00000008u) &0x00000100u )           |
        ( (0x00000000u<<0x00000006u) &0x00000040u )      |
        ( (0x00000000u<<0x00000005u) &0x00000020u )        |
        ( (0x00000000u<<0x00000003u) &0x00000008u )       |
        ( (0x00000000u<<0x00000002u) &0x00000004u )       |
        ( (0x00000001u<<0x00000001u) &0x00000002u )         |
        ( (0x00000001u<<0x00000000u) &0x00000001u )
    };


DSK6713_AIC23_Config config = {     0x0017,                                                                                                                                                                                               0x0017,                                                                                                                                                                                            0x01f9,                                                                                                                                            0x01f9,                                                                                                                                         0x0015,                                                                                                                                                                                                                                                                                                                                                                                 0x0000,                                                                                                                                                                                                                            0x0000,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   0x0043,                                                                                                                                                                                                                                                                                      0x0081,                                                                                                                                                                                                                                 0x0001                                                                                                           };

DSK6713_AIC23_CodecHandle hAIC23_handle;

void c6713_dsk_init();
void comm_poll();
void comm_intr();
void output_sample(int);
void output_left_sample(short);
void output_right_sample(short);
Uint32 input_sample();
short input_left_sample();
short input_right_sample();
extern Uint32 fs;            			
extern Uint16 inputsource;

void c6713_dsk_init()       			
{
DSK6713_init();                   	

hAIC23_handle=DSK6713_AIC23_openCodec(0, &config);
DSK6713_AIC23_setFreq(hAIC23_handle, fs);  
DSK6713_AIC23_rset(hAIC23_handle, 0x0004, inputsource);  
MCBSP_config(DSK6713_AIC23_codecdatahandle,&AIC23CfgData);

MCBSP_start(DSK6713_AIC23_codecdatahandle, (2u) | (1u) |
	(4u) | (8u), 220);
}

void comm_poll()					 		
{
	poll=1;              				
   c6713_dsk_init();    				
}

void comm_intr()						 	
{
	poll=0;                        	
   IRQ_globalDisable();           	
	c6713_dsk_init(); 					
	CODECEventId=MCBSP_getXmtEventId(DSK6713_AIC23_codecdatahandle);


  	IRQ_map(CODECEventId, 11);			
  	IRQ_reset(CODECEventId);    		
   IRQ_globalEnable();       			
  	IRQ_nmiEnable();          			
   IRQ_enable(CODECEventId);			

	output_sample(0);        			
}

void output_sample(int out_data)    
{
	short CHANNEL_data;

	AIC_data.uint=0;                 
	AIC_data.uint=out_data;          




	CHANNEL_data=AIC_data.channel[0]; 			
	AIC_data.channel[0]=AIC_data.channel[1];
	AIC_data.channel[1]=CHANNEL_data;
   if (poll) while(!MCBSP_xrdy(DSK6713_AIC23_codecdatahandle));
		MCBSP_write(DSK6713_AIC23_codecdatahandle,AIC_data.uint);
}

void output_left_sample(short out_data)     	  	 
{
	AIC_data.uint=0;                              
	AIC_data.channel[1]=out_data;   

	if (poll) while(!MCBSP_xrdy(DSK6713_AIC23_codecdatahandle));
		MCBSP_write(DSK6713_AIC23_codecdatahandle,AIC_data.uint);
}

void output_right_sample(short out_data)  		
{
	AIC_data.uint=0;                             
	AIC_data.channel[0]=out_data; 

	if (poll) while(!MCBSP_xrdy(DSK6713_AIC23_codecdatahandle));
		MCBSP_write(DSK6713_AIC23_codecdatahandle,AIC_data.uint);
}

Uint32 input_sample()                      	  	
{
	short CHANNEL_data;

	if (poll) while(!MCBSP_rrdy(DSK6713_AIC23_codecdatahandle));
		 AIC_data.uint=MCBSP_read(DSK6713_AIC23_codecdatahandle);


	CHANNEL_data=AIC_data.channel[0]; 			
	AIC_data.channel[0]=AIC_data.channel[1];
	AIC_data.channel[1]=CHANNEL_data;

	return(AIC_data.uint);
}

short input_left_sample()                   		
{
	if (poll) while(!MCBSP_rrdy(DSK6713_AIC23_codecdatahandle));
	 AIC_data.uint=MCBSP_read(DSK6713_AIC23_codecdatahandle);
	return(AIC_data.channel[1]);					
}

short input_right_sample()                  		
{
	if (poll) while(!MCBSP_rrdy(DSK6713_AIC23_codecdatahandle));
	 AIC_data.uint=MCBSP_read(DSK6713_AIC23_codecdatahandle);
	return(AIC_data.channel[0]); 				
}
