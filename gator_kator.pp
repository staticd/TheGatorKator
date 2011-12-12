














 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


 
 
 

 
 
 
 
 
 

 
 
 

 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



   typedef char *va_list;


 
 
 
 
 


 
 
 



 
 
 
 
 



 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 


 
 
 
 
 
 






 
 
 



 
 
 
typedef unsigned size_t;

typedef struct {
      int fd;                     
      unsigned char* buf;         
      unsigned char* pos;         
      unsigned char* bufend;      
      unsigned char* buff_stop;   
      unsigned int   flags;       
} FILE;

typedef int fpos_t; 

 
 
 
 
 
 



 
 
 









 


 
 
 

extern far FILE _ftable[20];
extern far char _tmpnams[20][16];

 
 
 
 
 
 
extern  int     remove(const char *_file);
extern  int     rename(const char *_old, const char *_new);
extern  FILE   *tmpfile(void);
extern  char   *tmpnam(char *_s);

 
 
 
extern  int     fclose(FILE *_fp); 
extern  FILE   *fopen(const char *_fname, const char *_mode);
extern  FILE   *freopen(const char *_fname, const char *_mode,
			            register FILE *_fp);
extern  void    setbuf(register FILE *_fp, char *_buf);
extern  int     setvbuf(register FILE *_fp, register char *_buf, 
			            register int _type, register size_t _size);
extern  int     fflush(register FILE *_fp); 

 
 
 
extern  int fprintf(FILE *_fp, const char *_format, ...)
               ;
extern  int fscanf(FILE *_fp, const char *_fmt, ...)
               ;
extern  int printf(const char *_format, ...)
               ;
extern  int scanf(const char *_fmt, ...)
               ;
extern  int sprintf(char *_string, const char *_format, ...)
               ;
extern  int snprintf(char *_string, size_t _n, 
				 const char *_format, ...)
               ;
extern  int sscanf(const char *_str, const char *_fmt, ...)
               ;
extern  int vfprintf(FILE *_fp, const char *_format, va_list _ap)
               ;
extern  int vprintf(const char *_format, va_list _ap)
               ;
extern  int vsprintf(char *_string, const char *_format,
				 va_list _ap)
               ;
extern  int vsnprintf(char *_string, size_t _n, 
				  const char *_format, va_list _ap)
               ;

 
 
 
extern  int     fgetc(register FILE *_fp);
extern  char   *fgets(char *_ptr, register int _size,
				  register FILE *_fp);
extern  int     fputc(int _c, register FILE *_fp);
extern  int     fputs(const char *_ptr, register FILE *_fp);
extern  int     getc(FILE *_p);
extern  int     getchar(void);
extern  char   *gets(char *_ptr); 
extern  int     putc(int _x, FILE *_fp);
extern  int     putchar(int _x);
extern  int     puts(const char *_ptr); 
extern  int     ungetc(int _c, register FILE *_fp);

 
 
 
extern  size_t  fread(void *_ptr, size_t _size, size_t _count,
				  FILE *_fp);
extern  size_t  fwrite(const void *_ptr, size_t _size,
				   size_t _count, register FILE *_fp); 

 
 
 
extern  int     fgetpos(FILE *_fp, fpos_t *_pos);
extern  int     fseek(register FILE *_fp, long _offset,
				  int _ptrname);
extern  int     fsetpos(FILE *_fp, const fpos_t *_pos);
extern  long    ftell(FILE *_fp);
extern  void    rewind(register FILE *_fp); 

 
 
 
extern  void    clearerr(FILE *_fp);
extern  int     feof(FILE *_fp);
extern  int     ferror(FILE *_fp);
extern  void    perror(const char *_s);








 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 





 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 
 
 



 


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 





 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 






extern  double sqrt (double x);
extern  double exp  (double x);
extern  double log  (double x);
extern  double log10(double x);
extern  double pow  (double x, double y);
extern  double sin  (double x);
extern  double cos  (double x);
extern  double tan  (double x);
extern  double asin (double x);
extern  double acos (double x);
extern  double atan (double x);
extern  double atan2(double y, double x);
extern  double sinh (double x);
extern  double cosh (double x);
extern  double tanh (double x);

extern  double ceil (double x);
extern  double floor(double x);

extern  double fabs (double x);

extern  double ldexp(double x, int n);
extern  double frexp(double x, int *exp);
extern  double modf (double x, double *ip);
extern  double fmod (double x, double y);

 
 
extern  double _FMOD(double x, double y);

 
extern  double _nround(double x);  
extern  double _trunc(double x);  


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 








extern  float sqrtf (float x);
extern  float expf  (float x);
extern  float logf  (float x);
extern  float log10f(float x);
extern  float powf  (float x, float y);
extern  float sinf  (float x);
extern  float cosf  (float x);
extern  float tanf  (float x);
extern  float asinf (float x);
extern  float acosf (float x);
extern  float atanf (float x);
extern  float atan2f(float y, float x);
extern  float sinhf (float x);
extern  float coshf (float x);
extern  float tanhf (float x);

extern  float ceilf (float x);
extern  float floorf(float x);

extern  float fabsf (float x);

extern  float ldexpf(float x, int n);
extern  float frexpf(float x, int *exp);
extern  float modff (float x, float *ip);
extern  float fmodf (float x, float y);

 
 
extern  float _FMODF(float x, float y);

 
extern  float _roundf(float x);  
extern  float _truncf(float x);  

 
 
 
 
 


extern  float rsqrtf(float x);  
extern  float exp2f (float x);  
extern  float exp10f(float x);  
extern  float log2f (float x);  

extern  float powif (float x, int i);  

extern  float cotf  (float x);
extern  float acotf (float x);
extern  float acot2f(float x, float y);

extern  float cothf (float x);

extern  float asinhf(float x);  
extern  float acoshf(float x);  
extern  float atanhf(float x);  
extern  float acothf(float x);


extern  int __isinff(float x);

extern  int __isnanf(float x);
extern  int __isfinitef(float x);
extern  int __isnormalf(float x);
extern  int __fpclassifyf(float x);










 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 





 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 















 
extern  long double modfl (long double x, long double *ip);












 
 
 
 
 

extern  double rsqrt(double x);  
extern  double exp2 (double x);  
extern  double exp10(double x);  
extern  double log2 (double x);  

extern  double powi(double x, int i);  

extern  double cot  (double x);
extern  double acot (double x);
extern  double acot2(double x, double y);

extern  double coth (double x);

extern  double asinh(double x);  
extern  double acosh(double x);  
extern  double atanh(double x);  
extern  double acoth(double x);


extern  int __isinf(double x);

extern  int __isnan(volatile double x);
extern  int __isfinite(double x);
extern  int __isnormal(double x);
extern  int __fpclassify(double x);









 






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 







typedef unsigned int clock_t;
typedef unsigned int time_t;


struct tm 
{
    int tm_sec;       
    int tm_min;       
    int tm_hour;      
    int tm_mday;      
    int tm_mon;       
    int tm_year;      
    int tm_wday;      
    int tm_yday;      
    int tm_isdst;     

};

 
 
 
typedef struct 
{
    short daylight;
    long  timezone;
    char  tzname[4];
    char  dstname[4];
} TZ;

extern far TZ _tz;

 
 
 
 clock_t    clock(void);             
 time_t     time(time_t *_timer);   
 
 time_t     mktime(struct tm *_tptr);
 double     difftime(time_t _time1, time_t _time0);
      extern  char      *ctime(const time_t *_timer);
 char      *asctime(const struct tm *_timeptr);
 struct tm *gmtime(const time_t *_timer);
 struct tm *localtime(const time_t *_timer);
 size_t     strftime(char *_out, size_t _maxsize, 
				 const char *_format,
				 const struct tm *_timeptr);









 
 




 








 
 








 







 
 








 







 
 






 







 
 






 



 


   
   
   









   
   
   







   
   
   






 


 




 

 

 
 
 




 
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










 








 

 





 







 



 










 

 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 


 















 




 

typedef unsigned char  uchar_T;
typedef unsigned short ushort_T;
typedef unsigned long  ulong_T;








 




















 



 






















 

 typedef signed char int8_T;

 typedef unsigned char uint8_T;


 typedef short int16_T;


 typedef unsigned short uint16_T;


 typedef int int32_T;


 typedef unsigned int uint32_T;







 






 typedef float real32_T;


 typedef double real64_T;






 















 












 


 typedef real64_T real_T;

 typedef real_T time_T;


typedef unsigned char boolean_T;


typedef char char_T;


typedef int int_T;


typedef unsigned uint_T;


typedef unsigned char byte_T;




 

    typedef struct {
      real32_T re, im;
    } creal32_T;

    typedef struct {
      real64_T re, im;
    } creal64_T;

    typedef struct {
      real_T re, im;
    } creal_T;


    typedef struct {
      int8_T re, im;
    } cint8_T;

    typedef struct {
      uint8_T re, im;
    } cuint8_T;

    typedef struct {
      int16_T re, im;
    } cint16_T;

    typedef struct {
      uint16_T re, im;
    } cuint16_T;

    typedef struct {
      int32_T re, im;
    } cint32_T;

    typedef struct {
      uint32_T re, im;
    } cuint32_T;







 

                           
                           





typedef boolean_T bool;







 




 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 




typedef int ptrdiff_t;



typedef unsigned short wchar_t;






 
 
 
 
 
 
 

typedef size_t    mwSize;          
typedef size_t    mwIndex;         
typedef ptrdiff_t mwSignedIndex;   






 


const real64_T h[398] = {
  -0.0006470623807527,-0.0006983845640537,-0.0008070712370539,-0.0006506338736552,
  -0.0001302447475471,0.0007700412617411, 0.001938523001744, 0.003126849747323,
   0.003977887223429, 0.004103492512602, 0.003193552868999,  0.00113361860971,
  -0.001903573972876,-0.005428066110894,-0.008686700645421, -0.01080607899104,
   -0.01099902561434,-0.008791097586962,-0.004204684227092, 0.002154913681687,
    0.00915423268507,  0.01533125134936,  0.01920935220392,   0.0196545373144,
    0.01618951705132, 0.009175791058453,-0.0001948048922124, -0.01011602231629,
   -0.01854999998065, -0.02369177772495, -0.02440035364515, -0.02048573089512,
   -0.01277189640902,-0.002912970324826, 0.006997101818575,  0.01492385083872,
    0.01937276351608,  0.01972596363978,   0.0163484039421,  0.01043907456202,
   0.003672252493297,-0.002268757846427,-0.006134745001068,-0.007408283720895,
  -0.006377953135535, -0.00397649752228,-0.001439718389137, 0.000106407963398,
  3.62800099143e-006,-0.001742522602469,-0.004484495186408,-0.007160242078438,
  -0.008651634677978,-0.008159165384163,-0.005474868503519,-0.001068045802185,
   0.004042280584411, 0.008587395135282,  0.01142690124548,  0.01188650749199,
   0.009951124735586,  0.00625488861846, 0.001874158425201,-0.002009003819936,
  -0.004465151233354,-0.005084869553239,-0.004072811762774,-0.002142915227792,
  -0.0002530529221354,0.0007311283675585,0.0003323156767848,-0.001379155228957,
  -0.003813240235038,-0.006064305179709,-0.007222121288532,-0.006686032623535,
  -0.004377763163013,-0.0007824601482484, 0.003195781788438,   0.0065162094101,
   0.008328639816225, 0.008238097707513, 0.006420485674029, 0.003552398993382,
  0.0005797975620621,-0.001596580516746,-0.002414085450524,-0.001822164033788,
  -0.0002807258187375, 0.001414888604562, 0.002421770704324, 0.002151922045358,
  0.0004862666887468,-0.002172780245796,-0.005028671847736,-0.007155382225599,
  -0.007810118800686,-0.006688106842183,-0.004032755270881,-0.0005630411108498,
   0.002758263516841, 0.005037971311358, 0.005741946220698, 0.004862882696519,
   0.002909616683109,  0.00072166164865,-0.0008277395146995,-0.001138511842132,
  -9.510681254745e-005, 0.001890905309482, 0.004022858433191, 0.005397972143648,
   0.005328165480485, 0.003592051632799,0.0005300529125876,-0.003052613358661,
  -0.006144495874931,-0.007861592961634, -0.00774263438295,-0.005904317936158,
   -0.00300160828014,-4.695988149937e-006, 0.002132624976588, 0.002799922964892,
   0.001939390511529,6.342600354857e-005, -0.00192805717783,-0.003069863618356,
  -0.002683017304462,-0.0006330928682211, 0.002597045323157, 0.006049885522223,
   0.008606837625137, 0.009367936155211, 0.007967526631614, 0.004715065620773,
  0.0005082045078932,-0.003456932032346,-0.006082598177565, -0.00673839062692,
  -0.005473975849851,-0.002998498010184,-0.0004289975904608, 0.001109319211234,
  0.0008942248686653,-0.001115382293832,-0.004236411148273, -0.00727647155746,
  -0.008940066397129,-0.008290252636947,-0.005105867400604,-5.203800997338e-006,
    0.00571624760437,   0.0104887530695,  0.01298144394974,  0.01255195404058,
   0.009474672566872, 0.004860749158191,0.0002869714568731,-0.002747444780019,
  -0.003352449373012,-0.001580124306381, 0.001566527665698, 0.004466614172119,
   0.005455068104287, 0.003446634014166, -0.00160759822902,-0.008602052640515,
   -0.01555930640619, -0.02024010413137, -0.02088944122487, -0.01686900381864,
  -0.008950394698586,0.0008533538398868, 0.009889384281202,  0.01572067030446,
    0.01695804059101,  0.01378056532103, 0.007943141568737, 0.002230896857007,
  -0.0004945387251507,  0.00163792845267, 0.008685270988734,  0.01861492494139,
    0.02772565123495,   0.0316958722392,   0.0269796124302,  0.01213330462276,
   -0.01135765933718, -0.03906327319101, -0.06448915791947, -0.08067069725091,
   -0.08207068195709, -0.06625179849648, -0.03482826857597, 0.006618223542217,
    0.04969234570998,  0.08514139463296,   0.1051125665149,   0.1051125665149,
    0.08514139463296,  0.04969234570998, 0.006618223542217, -0.03482826857597,
   -0.06625179849648, -0.08207068195709, -0.08067069725091, -0.06448915791947,
   -0.03906327319101, -0.01135765933718,  0.01213330462276,   0.0269796124302,
     0.0316958722392,  0.02772565123495,  0.01861492494139, 0.008685270988734,
    0.00163792845267,-0.0004945387251507, 0.002230896857007, 0.007943141568737,
    0.01378056532103,  0.01695804059101,  0.01572067030446, 0.009889384281202,
  0.0008533538398868,-0.008950394698586, -0.01686900381864, -0.02088944122487,
   -0.02024010413137, -0.01555930640619,-0.008602052640515, -0.00160759822902,
   0.003446634014166, 0.005455068104287, 0.004466614172119, 0.001566527665698,
  -0.001580124306381,-0.003352449373012,-0.002747444780019,0.0002869714568731,
   0.004860749158191, 0.009474672566872,  0.01255195404058,  0.01298144394974,
     0.0104887530695,  0.00571624760437,-5.203800997338e-006,-0.005105867400604,
  -0.008290252636947,-0.008940066397129, -0.00727647155746,-0.004236411148273,
  -0.001115382293832,0.0008942248686653, 0.001109319211234,-0.0004289975904608,
  -0.002998498010184,-0.005473975849851, -0.00673839062692,-0.006082598177565,
  -0.003456932032346,0.0005082045078932, 0.004715065620773, 0.007967526631614,
   0.009367936155211, 0.008606837625137, 0.006049885522223, 0.002597045323157,
  -0.0006330928682211,-0.002683017304462,-0.003069863618356, -0.00192805717783,
  6.342600354857e-005, 0.001939390511529, 0.002799922964892, 0.002132624976588,
  -4.695988149937e-006, -0.00300160828014,-0.005904317936158, -0.00774263438295,
  -0.007861592961634,-0.006144495874931,-0.003052613358661,0.0005300529125876,
   0.003592051632799, 0.005328165480485, 0.005397972143648, 0.004022858433191,
   0.001890905309482,-9.510681254745e-005,-0.001138511842132,-0.0008277395146995,
    0.00072166164865, 0.002909616683109, 0.004862882696519, 0.005741946220698,
   0.005037971311358, 0.002758263516841,-0.0005630411108498,-0.004032755270881,
  -0.006688106842183,-0.007810118800686,-0.007155382225599,-0.005028671847736,
  -0.002172780245796,0.0004862666887468, 0.002151922045358, 0.002421770704324,
   0.001414888604562,-0.0002807258187375,-0.001822164033788,-0.002414085450524,
  -0.001596580516746,0.0005797975620621, 0.003552398993382, 0.006420485674029,
   0.008238097707513, 0.008328639816225,   0.0065162094101, 0.003195781788438,
  -0.0007824601482484,-0.004377763163013,-0.006686032623535,-0.007222121288532,
  -0.006064305179709,-0.003813240235038,-0.001379155228957,0.0003323156767848,
  0.0007311283675585,-0.0002530529221354,-0.002142915227792,-0.004072811762774,
  -0.005084869553239,-0.004465151233354,-0.002009003819936, 0.001874158425201,
    0.00625488861846, 0.009951124735586,  0.01188650749199,  0.01142690124548,
   0.008587395135282, 0.004042280584411,-0.001068045802185,-0.005474868503519,
  -0.008159165384163,-0.008651634677978,-0.007160242078438,-0.004484495186408,
  -0.001742522602469,3.62800099143e-006, 0.000106407963398,-0.001439718389137,
   -0.00397649752228,-0.006377953135535,-0.007408283720895,-0.006134745001068,
  -0.002268757846427, 0.003672252493297,  0.01043907456202,   0.0163484039421,
    0.01972596363978,  0.01937276351608,  0.01492385083872, 0.006997101818575,
  -0.002912970324826, -0.01277189640902, -0.02048573089512, -0.02440035364515,
   -0.02369177772495, -0.01854999998065, -0.01011602231629,-0.0001948048922124,
   0.009175791058453,  0.01618951705132,   0.0196545373144,  0.01920935220392,
    0.01533125134936,  0.00915423268507, 0.002154913681687,-0.004204684227092,
  -0.008791097586962, -0.01099902561434, -0.01080607899104,-0.008686700645421,
  -0.005428066110894,-0.001903573972876,  0.00113361860971, 0.003193552868999,
   0.004103492512602, 0.003977887223429, 0.003126849747323, 0.001938523001744,
  0.0007700412617411,-0.0001302447475471,-0.0006506338736552,-0.0008070712370539,
  -0.0006983845640537,-0.0006470623807527
};








 
Uint32 fs = 1;   
Uint16 inputsource = 0x0015;	









 
short sine_table[8]={0,707,1000,707,0,-707,-1000,-707};
short loop = 0;
short gain = 1;
short output_signal;
short temp = 0;
int zero_count = 0;
short zero_count_flag = 0;



float filter_signal(short);	
float x[N];	
short sample_data;	



short block_dc(short);	



short detect_envelope(short);	
int envelope = 0;	




struct complex {
	float real;
	float imag;
};

struct buffer {
	struct complex data[100][1024];
};




 

struct buffer data_buffer;


short signal_on = 0;



short column_index = 0;
short row_index = 0;
short output;
int samples_collected;



short playback();	
short row = 0;
short col = 0;



short program_control = 0;	











 

short input_left_sample();
void output_sample(int);
void comm_intr();


void DSK6713_LED_init();
void DSK6713_LED_on(Uint32);
void DSK6713_LED_off(Uint32);
void DSK6713_LED_toggle(Uint32);



void DSK6713_DIP_init();
Uint32 DSK6713_DIP_get(Uint32);








struct complex w[512];	
void fastFT(struct complex *, int);	


interrupt void c_int11() {

	sample_data = input_left_sample();

	
	if (sample_data > 400) signal_on = 1;

	if ( (signal_on) && (program_control == 0) ) {

		if (column_index < 1024) {


			data_buffer.data[row_index][column_index].real = filter_signal(sample_data);
			column_index++;
		}
		if ( (row_index < 100) && (column_index >= 1024) ) {

			row_index++;	
			column_index = 0;	
			
		}
	}

	if (row_index >= 100) program_control = 1;	
	

	
	if (2 == 0) {

		output_signal = (short)(filter_signal(sample_data)*gain); 
		output_sample( output_signal ); 

		if (output_signal > temp) {

			temp = output_signal;
		}
	}

	

 
	if ( (2 == 2) || (program_control == 1) ) {

		output = playback();
		output_sample(output);
		if ( (output == 0) && (row < 100) && (zero_count_flag == 0) ) {

			zero_count++;

			


 
			if (row >= (100 - 1) ) {

				printf ("Counted %d zeros in collected samples.\n", zero_count);
				zero_count_flag = 1;
			}
		}

	}
	

	return;
}




 

void fastFT(struct complex *Y, int N) {

	struct complex temp1,temp2;	
	int i,j,k;	
	int upper_leg, lower_leg;	
	int leg_diff;	
	int num_stages = 0;	
	int index, step;	
	i = 1;	

	do {

		num_stages +=1;
		i = i*2;
	} while (i!=N);

	leg_diff = N/2; 		     	    
	step = 512/N;   		     	    

	
	for (i = 0;i < num_stages; i++) {
		index = 0;
		for (j = 0; j < leg_diff; j++) {

			for (upper_leg = j; upper_leg < N; upper_leg += (2*leg_diff)) {

				lower_leg = upper_leg+leg_diff;
				temp1.real = (Y[upper_leg]).real + (Y[lower_leg]).real;
				temp1.imag = (Y[upper_leg]).imag + (Y[lower_leg]).imag;
				temp2.real = (Y[upper_leg]).real - (Y[lower_leg]).real;
				temp2.imag = (Y[upper_leg]).imag - (Y[lower_leg]).imag;
				(Y[lower_leg]).real = temp2.real*(w[index]).real
						-temp2.imag*(w[index]).imag;
				(Y[lower_leg]).imag = temp2.real*(w[index]).imag
						+temp2.imag*(w[index]).real;
				(Y[upper_leg]).real = temp1.real;
				(Y[upper_leg]).imag = temp1.imag;
			}

			index += step;
		}

		leg_diff = leg_diff/2;
		step *= 2;
	}
	j = 0;

	
	for (i = 1; i < (N-1); i++) {

		k = N/2;

		while (k <= j) {

			j = j - k;
			k = k/2;
		}

		j = j + k;

		if (i<j) {

			temp1.real = (Y[j]).real;
			temp1.imag = (Y[j]).imag;
			(Y[j]).real = (Y[i]).real;
			(Y[j]).imag = (Y[i]).imag;
			(Y[i]).real = temp1.real;
			(Y[i]).imag = temp1.imag;
		}
	}
}





 
short playback() {

	col++;	
	if (col > 1024) {

		col = 0;
		row++;	
	}
	if (row > 100) {

		row = 0;
	}
	return (short)data_buffer.data[row][col].real;
}




 
float filter_signal(short sample) {

	float yn = 0.0;
	int i;
	x[0] = (float)detect_envelope(block_dc(sample));	
	for (i = 0; i < 398; i++)
		yn += (h[i] * x[i]); 
	for (i = 398 -1; i > 0; i--)
		x[i] = x[i - 1];	
	return yn;
}




 
short block_dc(short sample) {

	int dc = 0;	
	short word1,word2;
	if (dc < 0) {
		word1 = -((-dc) >> 15);	
		word2 = -((-dc) & 0x00007fff);	
	}
	else {

		


 
		word1 = dc >> 15;
		

 
		word2 = dc & 0x00007fff;
	}

	





 
	dc = word1 * (32768 - 10) +
	   ((word2 * (32768 - 10)) >> 15) +
	   sample * 10;	
	return sample - (dc >> 15);	
}




 
short detect_envelope(short sample)
{
	


 
	short word1,word2;
	if (sample < 0)
		sample = -sample;	
	word1 = envelope >> 15;	
	word2 = envelope & 0x00007fff;	

	
	envelope = (word1 * (32768 - 4000)) +
					((word2 * (32768 - 4000)) >> 15) +
						sample * 4000;

	return envelope >> 15;
}

void main() {

	DSK6713_LED_init();	
	DSK6713_DIP_init();	

	int i,j;

	
	for (i = 0; i < N; i++) {
		x[i] = 0;
	}

	
	for (i = 0; i < 100; i++) {

		for (j = 0; j < 1024; j++) {

			data_buffer.data[i][j].real = 0.0;
			data_buffer.data[i][j].imag = 0.0;
		}
	}

	comm_intr();	

	

 

	DSK6713_LED_on(0);	

	while (program_control == 0);	

	if (row_index >= 100) {

		samples_collected = 1024 * 100;	
		printf("Collected %d frames at %d samples per frame and for a total of %d samples (using int samples_collected).\n",row_index,1024,samples_collected);
	}

	

 

	
	while (2 == 1) {

		if (2 == 1) {
			output_sample(sine_table[loop]*gain);	
			if (loop < 7) ++loop;	
			else loop = 0;	
		}
	}
	
}
