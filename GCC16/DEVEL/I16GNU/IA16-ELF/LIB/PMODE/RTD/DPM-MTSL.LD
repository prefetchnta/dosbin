/* Linker script for DOS executables with combined data and text segment,
   with startup files, with default libraries, and with
   DPMI support.

   Generated from dos-mt.ld.in.  */

OUTPUT_FORMAT(binary)
ENTRY(_start)
INPUT(-l:crtbegin.o -l:crtend.o -l:dpm-t-c0.o)
GROUP(-lc -lgcc -ldos-t -lm)

SECTIONS
  {
    . = SEGMENT_START ("text-segment", 0x100);
    /* Target text sections.  */
    .text : {
		__stext = .;
		*(.startupA)
		*(.startupB)
		*(.msdos_init) *(.msdos_init.*)
		*(.startupC)
		*(.init)
		*(.startupD)
		*(.exitA)
		*(.fini)
		*(.exitB)
		*(.text) *(.text.*)
		__etext = .;
	}
	__ltext = __etext - __stext;

    /* Target data sections.  */
    .data : {
		__sdata = .;

		/* Build lists of constructors and destructors.  */
		KEEP (*crtbegin*.o(.ctors))
		KEEP (*(EXCLUDE_FILE (*crtend*.o ) .ctors))
		KEEP (*(SORT(.ctors.*)))
		KEEP (*(.ctors))

		KEEP (*crtbegin*.o(.dtors))
		KEEP (*(EXCLUDE_FILE (*crtend*.o ) .dtors))
		KEEP (*(SORT(.dtors.*)))
		KEEP (*(.dtors))

		*(.msdos_init_rodata) *(.msdos_init_rodata.*)
		*(.rodata) *(.rodata.*)
		*(.data) *(.data.*)
		*(.gcc_except_table)
		__edata = .;
	}

    .bss (NOLOAD) : {
		 __sbss = .;
                *(.bss) *(.bss.*)
                *(COMMON)
                __ebss = .;

                /* Minimum address allowed for sbrk() to use.  */
                __heap_end_minimum = ALIGN(8);
	}

	__ldata = __edata - __sdata;
	__lbss0 = __ebss - __sbss;
	__lbss1 = __lbss0 + 1;
	__lbss = __lbss1 / 2;

    ASSERT(. <= 0xfd00, "Error: too large for a .com file.")

    /* Used by the memory resizing and DPMI initialization code in
       dos-models-crt0.S.  */
    __msdos_initial_alloc_paras = 0x1000;

    /DISCARD/ : { *(.*) }
  }
