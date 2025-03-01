/*
 * Linker script for terminate-and-stay-resident (TSR) DOS executables with
 * combined data and text segment, with startup files, and without
 * default libraries.
 *
 * Generated from dtr-mt.ld.in.
 */

OUTPUT_FORMAT(binary)
ENTRY(_start)
INPUT(-l:crtbegin.o -l:crtend.o -l:dtr-t-c0.o)

SECTIONS
  {
    . = SEGMENT_START ("text-segment", 0x100);

    /* Target resident text sections.  */
    .text : {
		__stext_keep = .;
		*(.startupA)
		*(.text) *(.text. .text.[^se]* .text.s[^t]* .text.st[^a]*
			   .text.sta[^r]* .text.star[^t]* .text.start[^u]*
			   .text.startu[^p]* .text.startup[^.]* .text.e[^x]*
			   .text.ex[^i]* .text.exi[^t] .text.exit[^.]*)
		__etext_keep = .;
	}
	__ltext_keep = __etext_keep - __stext_keep;

    /* Target resident data sections.  */
    .data : {
		__sdata_keep = .;
		*(.rodata) *(.rodata. .rodata.[^se]* .rodata.s[^t]*
			     .rodata.st[^a]* .rodata.sta[^r]*
			     .rodata.star[^t]* .rodata.start[^u]*
			     .rodata.startu[^p]* .rodata.startup[^.]*
			     .rodata.e[^x]* .rodata.ex[^i]* .rodata.exi[^t]*
			     .rodata.exit[^.]*)
		*(.data) *(.data. .data.[^se]* .data.s[^t]* .data.st[^a]*
			   .data.sta[^r]* .data.star[^t]* .data.start[^u]*
			   .data.startu[^p]* .data.startup[^.]* .data.e[^x]*
			   .data.ex[^i]* .data.exi[^t]* .data.exit[^.]*)
		*(.gcc_except_table)
		__edata_keep = .;
	}

    .bss (NOLOAD) : {
		__sbss_keep = .;
		*(.bss) *(.bss. .bss.[^se]* .bss.s[^t]* .bss.st[^a]*
			  .bss.sta[^r]* .bss.star[^t]* .bss.start[^u]*
			  .bss.startu[^p]* .bss.startup[^.]* .bss.e[^x]*
			  .bss.ex[^i]* .bss.exi[^t]* .bss.exit[^.]*)
		*(COMMON)
		__ebss_keep = .;

		/* Minimum address allowed for sbrk() to use.  */
		__heap_end_minimum = ALIGN(8);
	}

	__ldata_keep = __edata_keep - __sdata_keep;
	__lbss_keep2 = (__ebss_keep - __sbss_keep + 1) / 2;

    __entry_stklen = 0x100;
    __nokeep_end_maximum = 0x10000 - __entry_stklen;

    /* Size of the transient stack, if the user does not specify one. */
    PROVIDE (__stklen_val_nokeep = 0x300);

    /*
     * Size of the heap, if the user does not specify one.  If the user
     * explicitly specifies a heap size of 0, force a non-zero value.
     *
     * FIXME?  This tries to compute the heap size by calculating section
     * start & end offsets before the sections have been fully laid out ---
     * Andrew Bird has discovered that this method seems to work
     * (https://github.com/tkchia/gcc-ia16/issues/81#issuecomment-932956379).
     * I subtract 0x20 in the final computed heap size to allow some leeway
     * for error.
     *
     * I am not sure if we can really rely on this calculation, but it will
     * have to do for now.  -- tkchia 20211003
     */
    PROVIDE (__heaplen_val = __nokeep_end_maximum - __heap_end_minimum
			     - __lbss_nokeep - __lnokeep - __stklen_val_nokeep
			     - 0x20);
    __heaplen_val = __heaplen_val ? __heaplen_val : 1;
    ASSERT (__heaplen_val > 0, "Error: no space for resident heap.")

    /*
     * .msdos_init_rodata contains error messages which may be used before
     * we move our transient code & data higher up.  Thus it should have VMA
     * == LMA even at program entry.
     */
    .msdos_init_rodata __sbss_keep : {
		*(.msdos_init_rodata) *(.msdos_init_rodata.*)
		__stext_nokeep_load = .;
	}

    /*
     * Target transient text sections.
     *
     * I use the name .text.startup because this is the (input) section name
     * GCC uses by default for startup functions (e.g. static constructors,
     * main (...)).
     */
    .text.startup ALIGN (__heap_end_minimum + __heaplen_val
					    + __stklen_val_nokeep, 2)
		  : AT (__stext_nokeep_load)
	{
		__stext_nokeep = .;
		*(.startupB)
		__stack_end_nokeep = . & -0x10;
		*(.msdos_init) *(.msdos_init.*)
		*(.startupC)
		*(.init)
		*(.startupD)
		*(.text.startup) *(.text.startup.*)
	}
	/*
	 * Distance which the startup code to jump forward by, after we have
	 * copied the code from the LMA to the VMA.
	 */
	__text_nokeep_leap = __stext_nokeep - __stext_nokeep_load;

    .text.exit : {
		*(.exitA)
		*(.fini)
		*(.exitB)
		*(.text.exit) *(.text.exit.*)
		__etext_nokeep = .;
	}

    /* Target transient data sections.  */
    .data.startup : {
		__sdata_nokeep_load = LOADADDR (.data.startup);
		__sdata_nokeep = .;

		/* Build lists of constructors.  */
		KEEP (*crtbegin*.o(.ctors))
		KEEP (*(EXCLUDE_FILE (*crtend*.o ) .ctors))
		KEEP (*(SORT(.ctors.*)))
		KEEP (*(.ctors))

		*(.rodata.startup) *(.rodata.startup.*)
		*(.data.startup) *(.data.startup.*)
	}

    .data.exit : {
		/* Build lists of destructors.  */
		KEEP (*crtbegin*.o(.dtors))
		KEEP (*(EXCLUDE_FILE (*crtend*.o ) .dtors))
		KEEP (*(SORT(.dtors.*)))
		KEEP (*(.dtors))

		*(.rodata.exit) *(.rodata.exit.*)
		*(.data.exit) *(.data.exit.*)

		__edata_nokeep = .;
	}
	__edata_nokeep_load = . + (__sdata_nokeep_load - __sdata_nokeep);
	__lnokeep = __edata_nokeep - __stext_nokeep;
	__lnokeep_to_copy = __edata_nokeep - __stext_nokeep_to_copy;
	__lnokeep_to_copy2 = (__lnokeep_to_copy + 1) / 2;

    .bss.startup (NOLOAD) : {
		__sbss_nokeep = .;
		*(.bss.startup) *(.bss.startup.*)
	}

    .bss.exit (NOLOAD) : {
		*(.bss.exit) *(.bss.exit.*)
		__ebss_nokeep = .;
	}
	__lbss_nokeep = __ebss_nokeep - __sbss_nokeep;
	__lbss_nokeep2 = (__lbss_nokeep + 1) / 2;

	__entry_stack_end_minimum
	  = MIN (ALIGN (__ebss_nokeep + __entry_stklen, 0x10), 0xfffe);

    ASSERT(. <= __nokeep_end_maximum, "Error: too large for a .com file.")
    /*
     * Used by the memory resizing and DPMI initialization code in
     * dos-models-crt0.S.
     */
    __msdos_initial_alloc_paras = (__entry_stack_end_minimum + 15) / 16;

    /DISCARD/ : { *(.*) }
  }
