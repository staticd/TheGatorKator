/*C6713dsk.cmd  Linker command file*/

// options
// 0x20000 is 8 kBits
-stack 0x2000	// default stack size: 0x400 (1 kBits)
-heap 0x400	// default heap size is 0x400 (1 kBits)
// options

MEMORY
{
  IVECS:    org=0h,  		len=0x220
  IRAM:		org=0x00000220,	len=0x0002FDE0 /*internal memory*/
  SDRAM:	org=0x80000000, len=0x01000000 /*external memory*/
  FLASH:	org=0x90000000, len=0x00020000 /*flash memory*/                    
}

SECTIONS
{
  .EXTRAM :> SDRAM
  .vectors :> IVECS	/*in vector file*/
  .text    :> IRAM	/*Created by C Compiler*/
  .bss     :> IRAM
  .cinit   :> IRAM
  .stack   :> IRAM
  .sysmem  :> IRAM
  .const   :> IRAM
  .switch  :> IRAM
  .far     :> SDRAM
  .cio     :> IRAM
  .csldata :> IRAM
}
