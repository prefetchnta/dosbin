/* Default linker script, for normal executables */
/* Copyright (C) 2014-2020 Free Software Foundation, Inc.
   Copying and distribution of this script, with or without modification,
   are permitted in any medium without royalty provided the copyright
   notice and this notice are preserved.  */
OUTPUT_FORMAT("elks")
OUTPUT_ARCH(i386)
ENTRY(_start)
SEARCH_DIR("/home/user/.local/build-ia16/prefix-djgpp/ia16-elf/lib");
SECTIONS
{
  . = 0x0;
  .text :
  {
    CREATE_OBJECT_SYMBOLS
    *(.text .text.*)
    . = ALIGN (16);
    etext = .;
    _etext = .;
    __etext = .;
  }
  .fartext 0 : AT(0x10000)
  {
    *(.fartext .fartext.*)
    . = ALIGN (16);
  }
  .data 0 : AT(0x20000)
  {
    *(.rodata .rodata.*)
    *(.data .data.*)
    CONSTRUCTORS
    . = ALIGN (16);
    edata = .;
    _edata = .;
    __edata = .;
  }
  .bss :
  {
    _bss_start = .;
    __bss_start = .;
   *(.bss .bss.*)
   *(COMMON)
    . = ALIGN (16);
   end = . ;
   _end = . ;
   __end = . ;
  }
}
