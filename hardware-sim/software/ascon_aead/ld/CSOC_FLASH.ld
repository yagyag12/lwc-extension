OUTPUT_ARCH("riscv")

/* Entry Point */
ENTRY(reset_handler)

/* Memories definition */
MEMORY
{
  RAM (xrw) : ORIGIN = 0x00100000,  LENGTH = 64K
}

/* Sections */
SECTIONS
{
  .isr_vector :
  {
    KEEP(*(.isr_vector))
    . = ALIGN(32);
  } > RAM

  .text :
  { 
	  *(.init)
    *(.text)
	  *(.text.*)
	  *(.fini)
	  *(.rodata)
	  *(.rodata.*)
	  . = ALIGN(32);
	  _etext = .;
  } > RAM
  
  .data :
  {
    *(.data)
    *(.data.*)
    . = ALIGN(32);
  } > RAM
  
  .bss :
  {
	  *(.bss)
	  *(.bss.*)
	  *(COMMON)
	  . = ALIGN(32);
    end = .;
	  __end__ = .;
  } > RAM 

  PROVIDE( _vectors_start = ADDR(.isr_vector) );

  PROVIDE( _stack_start   = ORIGIN(RAM) + LENGTH(RAM)     );
  PROVIDE( _estack        = ORIGIN(RAM) + LENGTH(RAM)     );    /* TO CHECK                */
  PROVIDE( _bss_start     = ADDR(.bss)                    );
  PROVIDE( _bss_end       = ADDR(.bss)  + SIZEOF(.bss)    );
  PROVIDE( _data_start    = ADDR(.data)                   );
  PROVIDE( _data_end      = ADDR(.data) + SIZEOF(.data)   );
}
