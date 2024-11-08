/* Linker script for small-model DOS executables, with
   startup files, without default libraries, and with DPMI
   support.

   Partly derived from elks-separate.ld .  Generated from dos-mx.ld.in.  */

OUTPUT_FORMAT(binary)
ENTRY(_start)
INPUT(-l:crtbegin.o -l:crtend.o -l:dpm-s-c0.o)

MEMORY
  {
    bseglma	(wx) : ORIGIN = 0x00000, LENGTH = 0xa0000
    hdrvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x40020
    csegvma	(wx) : ORIGIN = 0x00020, LENGTH = 0x10000
    ft00segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft01segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft02segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft03segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft04segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft05segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft06segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft07segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft10segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft11segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft12segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft13segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft14segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft15segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft16segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft17segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft20segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft21segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft22segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft23segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft24segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft25segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft26segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft27segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft30segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft31segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft32segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft33segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft34segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft35segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft36segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft37segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft40segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft41segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft42segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft43segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft44segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft45segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft46segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft47segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft50segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft51segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft52segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft53segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft54segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft55segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft56segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft57segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft60segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft61segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft62segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft63segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft64segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft65segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft66segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft67segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft70segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft71segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft72segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft73segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft74segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft75segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft76segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ft77segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    ftXXsegvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr00segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr01segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr02segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr03segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr04segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr05segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr06segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr07segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr10segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr11segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr12segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr13segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr14segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr15segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr16segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr17segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr20segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr21segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr22segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr23segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr24segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr25segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr26segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr27segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr30segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr31segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr32segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr33segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr34segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr35segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr36segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr37segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr40segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr41segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr42segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr43segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr44segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr45segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr46segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr47segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr50segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr51segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr52segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr53segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr54segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr55segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr56segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr57segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr60segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr61segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr62segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr63segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr64segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr65segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr66segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr67segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr70segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr71segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr72segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr73segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr74segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr75segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr76segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fr77segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    frXXsegvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd00segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd01segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd02segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd03segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd04segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd05segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd06segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd07segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd10segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd11segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd12segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd13segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd14segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd15segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd16segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd17segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd20segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd21segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd22segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd23segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd24segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd25segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd26segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd27segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd30segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd31segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd32segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd33segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd34segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd35segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd36segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd37segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd40segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd41segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd42segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd43segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd44segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd45segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd46segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd47segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd50segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd51segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd52segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd53segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd54segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd55segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd56segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd57segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd60segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd61segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd62segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd63segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd64segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd65segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd66segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd67segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd70segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd71segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd72segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd73segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd74segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd75segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd76segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fd77segvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    fdXXsegvma	(wx) : ORIGIN = 0x00000, LENGTH = 0x10000
    dsegvma	(wx) : ORIGIN = 0x00020, LENGTH = 0x10000
  }

SECTIONS
  {
    /* Fabricate a .exe header here.  Although libbfd does have an
       "i386msdos" back-end which produces an "MZ" exe header, it cannot do
       certain things (yet).  In particular, we would like to use the .exe
       header to point %ss to the separate data segment right at startup.

       Note: The section names .msdos_mz_hdr, .msdos_mz_hdr.*,
       .msdos_mz_reloc, and .msdos_mz_reloc.* are special!  I have hacked (my
       fork of) libbfd to use the LMA + size of .msdos_mz_hdr when computing
       paragraph counts at link time; I also intend to hack GNU as and/or
       libbfd to output MZ relocations into .msdos_mz_reloc and
       .msdos_mz_reloc.* at assembly time.  -- tkchia  */
    .msdos_mz_hdr : {
		HIDDEN (__msdos_mz_hdr_start = .);

		/* Signature.  */
		SHORT (0x5a4d)
		/* Bytes in last 512-byte page.  */
		SHORT ((LOADADDR (.data) + SIZEOF (.data)) % 512)
		/* Total number of 512-byte pages.  */
		SHORT ((LOADADDR (.data) + SIZEOF (.data) + 511) / 512)
		/* Relocation entries.  */
		SHORT (__msdos_mz_rels)
		/* Header size in paragraphs.  */
		SHORT (__msdos_mz_hdr_paras)
		/* Minimum extra paragraphs.  */
		SHORT ((0x10000 - SIZEOF (.data) - ADDR (.data)) / 16)
		/* Maximum extra paragraphs.

		   In the normal case, instead of setting this to 0xffff so
		   that the program hogs up all remaining conventional
		   memory, just let the program have memory up to the end of
		   the data segment, and ask for more memory from DOS if it
		   really needs it.

		   However, if we are asked to fail gracefully under MS-DOS
		   v1.x, set this to 0xffff.  DOS 1.x command.com treats
		   this field as a LOADLOW flag (if this is not -1, it will
		   try to place our .exe at the top of conventional memory,
		   which will crash everything).  -- tkchia  */
		SHORT (DEFINED (__msdos_handle_v1) ? 0xffff
		    : (0x10000 - SIZEOF (.data) - ADDR (.data)) / 16)
		/* Initial %ss.  */
		SHORT (LOADADDR (.data) / 16 - __msdos_mz_hdr_paras
		    - ADDR (.data) / 16 + 0x10000)
		/* Initial %sp.  Let it wrap around from 0.  */
		SHORT (0)
		/* Checksum (unused).  */
		SHORT (0)
		/* Initial %cs:%ip.  */
		SHORT (_start)
		SHORT (LOADADDR (.text) / 16 - __msdos_mz_hdr_paras
		    - ADDR (.text) / 16 + 0x10000)
		/* Relocation table offset.  */
		SHORT (__msdos_mz_rel_start - __msdos_mz_hdr_start)
		/* Overlay number.  */
		SHORT (0)
		*(.msdos_mz_hdr .msdos_mz_hdr.*)

		/* Relocations.  */
		HIDDEN (__msdos_mz_rel_start = .);
		*(.msdos_mz_reloc .msdos_mz_reloc.*)
		HIDDEN (__msdos_mz_rel_end = .);
		HIDDEN (__msdos_mz_rels = (. - __msdos_mz_rel_start) / 4);
		/* Padding.  MS-DOS >= 2 will just use whatever paragraph
		   count is given as the header size.  MS-DOS 1.x will round
		   the header size up to a 512-byte boundary though, so take
		   care of this if we need to handle 1.x.  -- tkchia */
		. = DEFINED (__msdos_handle_v1) ? ALIGN (512) : .;
		HIDDEN (__msdos_mz_hdr_paras
			    = (. - __msdos_mz_hdr_start + 15) / 16);
		. = ALIGN (16);

		ASSERT ((__msdos_mz_rel_end - __msdos_mz_rel_start) % 4 == 0,
		    "Error: MZ relocations are not 4-byte aligned");
		ASSERT (__msdos_mz_rels <= 0xffff,
		    "Error: too many MZ relocations");
	} >hdrvma AT>bseglma

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

		/* Make the data segments start on a paragraph boundary.  */
		. = ALIGN (16);
		__etext_padded = .;

		ASSERT(. <= 0x10000,
		    "Error: too large for a small-model .exe file.");

	} >csegvma AT >bseglma
	__ltext = __etext - __stext;
	__ltext_padded = __etext_padded - __stext;

    /* Target far text sections.  These section descriptions are here mainly
       to prepare for adding medium model support (!) to the IA-16 toolchain
       some time.

       It will be nice to be able to give each input .fartext.*,
       .farrodata.*, and .fardata.* section its own output section, along
       with its own LMA and VMA, but (as of writing --- Jun 2018) the linker
       script syntax does not allow this.

       So my work-around is to arrange for GCC to tack some sort of octal
       hash value at the end of each .fartext.*, .farrodata.*, or .fardata.*
       section name, and then arrange for this linker script to distribute
       the sections into a fixed set of "bins", and hope that none of the
       bins are too large (> 64KiB).  -- tkchia */
    .fartext.00$ : { *(.fartext.*00 .fartext.*00$)
			. = ALIGN (16); } >ft00segvma AT >bseglma
    .fartext.01$ : { *(.fartext.*01 .fartext.*01$)
			. = ALIGN (16); } >ft01segvma AT >bseglma
    .fartext.02$ : { *(.fartext.*02 .fartext.*02$)
			. = ALIGN (16); } >ft02segvma AT >bseglma
    .fartext.03$ : { *(.fartext.*03 .fartext.*03$)
			. = ALIGN (16); } >ft03segvma AT >bseglma
    .fartext.04$ : { *(.fartext.*04 .fartext.*04$)
			. = ALIGN (16); } >ft04segvma AT >bseglma
    .fartext.05$ : { *(.fartext.*05 .fartext.*05$)
			. = ALIGN (16); } >ft05segvma AT >bseglma
    .fartext.06$ : { *(.fartext.*06 .fartext.*06$)
			. = ALIGN (16); } >ft06segvma AT >bseglma
    .fartext.07$ : { *(.fartext.*07 .fartext.*07$)
			. = ALIGN (16); } >ft07segvma AT >bseglma
    .fartext.10$ : { *(.fartext.*10 .fartext.*10$)
			. = ALIGN (16); } >ft10segvma AT >bseglma
    .fartext.11$ : { *(.fartext.*11 .fartext.*11$)
			. = ALIGN (16); } >ft11segvma AT >bseglma
    .fartext.12$ : { *(.fartext.*12 .fartext.*12$)
			. = ALIGN (16); } >ft12segvma AT >bseglma
    .fartext.13$ : { *(.fartext.*13 .fartext.*13$)
			. = ALIGN (16); } >ft13segvma AT >bseglma
    .fartext.14$ : { *(.fartext.*14 .fartext.*14$)
			. = ALIGN (16); } >ft14segvma AT >bseglma
    .fartext.15$ : { *(.fartext.*15 .fartext.*15$)
			. = ALIGN (16); } >ft15segvma AT >bseglma
    .fartext.16$ : { *(.fartext.*16 .fartext.*16$)
			. = ALIGN (16); } >ft16segvma AT >bseglma
    .fartext.17$ : { *(.fartext.*17 .fartext.*17$)
			. = ALIGN (16); } >ft17segvma AT >bseglma
    .fartext.20$ : { *(.fartext.*20 .fartext.*20$)
			. = ALIGN (16); } >ft20segvma AT >bseglma
    .fartext.21$ : { *(.fartext.*21 .fartext.*21$)
			. = ALIGN (16); } >ft21segvma AT >bseglma
    .fartext.22$ : { *(.fartext.*22 .fartext.*22$)
			. = ALIGN (16); } >ft22segvma AT >bseglma
    .fartext.23$ : { *(.fartext.*23 .fartext.*23$)
			. = ALIGN (16); } >ft23segvma AT >bseglma
    .fartext.24$ : { *(.fartext.*24 .fartext.*24$)
			. = ALIGN (16); } >ft24segvma AT >bseglma
    .fartext.25$ : { *(.fartext.*25 .fartext.*25$)
			. = ALIGN (16); } >ft25segvma AT >bseglma
    .fartext.26$ : { *(.fartext.*26 .fartext.*26$)
			. = ALIGN (16); } >ft26segvma AT >bseglma
    .fartext.27$ : { *(.fartext.*27 .fartext.*27$)
			. = ALIGN (16); } >ft27segvma AT >bseglma
    .fartext.30$ : { *(.fartext.*30 .fartext.*30$)
			. = ALIGN (16); } >ft30segvma AT >bseglma
    .fartext.31$ : { *(.fartext.*31 .fartext.*31$)
			. = ALIGN (16); } >ft31segvma AT >bseglma
    .fartext.32$ : { *(.fartext.*32 .fartext.*32$)
			. = ALIGN (16); } >ft32segvma AT >bseglma
    .fartext.33$ : { *(.fartext.*33 .fartext.*33$)
			. = ALIGN (16); } >ft33segvma AT >bseglma
    .fartext.34$ : { *(.fartext.*34 .fartext.*34$)
			. = ALIGN (16); } >ft34segvma AT >bseglma
    .fartext.35$ : { *(.fartext.*35 .fartext.*35$)
			. = ALIGN (16); } >ft35segvma AT >bseglma
    .fartext.36$ : { *(.fartext.*36 .fartext.*36$)
			. = ALIGN (16); } >ft36segvma AT >bseglma
    .fartext.37$ : { *(.fartext.*37 .fartext.*37$)
			. = ALIGN (16); } >ft37segvma AT >bseglma
    .fartext.40$ : { *(.fartext.*40 .fartext.*40$)
			. = ALIGN (16); } >ft40segvma AT >bseglma
    .fartext.41$ : { *(.fartext.*41 .fartext.*41$)
			. = ALIGN (16); } >ft41segvma AT >bseglma
    .fartext.42$ : { *(.fartext.*42 .fartext.*42$)
			. = ALIGN (16); } >ft42segvma AT >bseglma
    .fartext.43$ : { *(.fartext.*43 .fartext.*43$)
			. = ALIGN (16); } >ft43segvma AT >bseglma
    .fartext.44$ : { *(.fartext.*44 .fartext.*44$)
			. = ALIGN (16); } >ft44segvma AT >bseglma
    .fartext.45$ : { *(.fartext.*45 .fartext.*45$)
			. = ALIGN (16); } >ft45segvma AT >bseglma
    .fartext.46$ : { *(.fartext.*46 .fartext.*46$)
			. = ALIGN (16); } >ft46segvma AT >bseglma
    .fartext.47$ : { *(.fartext.*47 .fartext.*47$)
			. = ALIGN (16); } >ft47segvma AT >bseglma
    .fartext.50$ : { *(.fartext.*50 .fartext.*50$)
			. = ALIGN (16); } >ft50segvma AT >bseglma
    .fartext.51$ : { *(.fartext.*51 .fartext.*51$)
			. = ALIGN (16); } >ft51segvma AT >bseglma
    .fartext.52$ : { *(.fartext.*52 .fartext.*52$)
			. = ALIGN (16); } >ft52segvma AT >bseglma
    .fartext.53$ : { *(.fartext.*53 .fartext.*53$)
			. = ALIGN (16); } >ft53segvma AT >bseglma
    .fartext.54$ : { *(.fartext.*54 .fartext.*54$)
			. = ALIGN (16); } >ft54segvma AT >bseglma
    .fartext.55$ : { *(.fartext.*55 .fartext.*55$)
			. = ALIGN (16); } >ft55segvma AT >bseglma
    .fartext.56$ : { *(.fartext.*56 .fartext.*56$)
			. = ALIGN (16); } >ft56segvma AT >bseglma
    .fartext.57$ : { *(.fartext.*57 .fartext.*57$)
			. = ALIGN (16); } >ft57segvma AT >bseglma
    .fartext.60$ : { *(.fartext.*60 .fartext.*60$)
			. = ALIGN (16); } >ft60segvma AT >bseglma
    .fartext.61$ : { *(.fartext.*61 .fartext.*61$)
			. = ALIGN (16); } >ft61segvma AT >bseglma
    .fartext.62$ : { *(.fartext.*62 .fartext.*62$)
			. = ALIGN (16); } >ft62segvma AT >bseglma
    .fartext.63$ : { *(.fartext.*63 .fartext.*63$)
			. = ALIGN (16); } >ft63segvma AT >bseglma
    .fartext.64$ : { *(.fartext.*64 .fartext.*64$)
			. = ALIGN (16); } >ft64segvma AT >bseglma
    .fartext.65$ : { *(.fartext.*65 .fartext.*65$)
			. = ALIGN (16); } >ft65segvma AT >bseglma
    .fartext.66$ : { *(.fartext.*66 .fartext.*66$)
			. = ALIGN (16); } >ft66segvma AT >bseglma
    .fartext.67$ : { *(.fartext.*67 .fartext.*67$)
			. = ALIGN (16); } >ft67segvma AT >bseglma
    .fartext.70$ : { *(.fartext.*70 .fartext.*70$)
			. = ALIGN (16); } >ft70segvma AT >bseglma
    .fartext.71$ : { *(.fartext.*71 .fartext.*71$)
			. = ALIGN (16); } >ft71segvma AT >bseglma
    .fartext.72$ : { *(.fartext.*72 .fartext.*72$)
			. = ALIGN (16); } >ft72segvma AT >bseglma
    .fartext.73$ : { *(.fartext.*73 .fartext.*73$)
			. = ALIGN (16); } >ft73segvma AT >bseglma
    .fartext.74$ : { *(.fartext.*74 .fartext.*74$)
			. = ALIGN (16); } >ft74segvma AT >bseglma
    .fartext.75$ : { *(.fartext.*75 .fartext.*75$)
			. = ALIGN (16); } >ft75segvma AT >bseglma
    .fartext.76$ : { *(.fartext.*76 .fartext.*76$)
			. = ALIGN (16); } >ft76segvma AT >bseglma
    .fartext.77$ : { *(.fartext.*77 .fartext.*77$)
			. = ALIGN (16); } >ft77segvma AT >bseglma
    .fartext.XX$ : {
		*(.fartext .fartext$ .fartext.*)
		. = ALIGN (16);
	} >ftXXsegvma AT >bseglma

    /* Target far data sections.  Place the far data sections _before_ the
       near data section (and before near BSS).  -- tkchia  */
    .farrodata.00$ : { *(.farrodata.*00 .farrodata.*00$)
			  . = ALIGN (16); } >fr00segvma AT >bseglma
    .farrodata.01$ : { *(.farrodata.*01 .farrodata.*01$)
			  . = ALIGN (16); } >fr01segvma AT >bseglma
    .farrodata.02$ : { *(.farrodata.*02 .farrodata.*02$)
			  . = ALIGN (16); } >fr02segvma AT >bseglma
    .farrodata.03$ : { *(.farrodata.*03 .farrodata.*03$)
			  . = ALIGN (16); } >fr03segvma AT >bseglma
    .farrodata.04$ : { *(.farrodata.*04 .farrodata.*04$)
			  . = ALIGN (16); } >fr04segvma AT >bseglma
    .farrodata.05$ : { *(.farrodata.*05 .farrodata.*05$)
			  . = ALIGN (16); } >fr05segvma AT >bseglma
    .farrodata.06$ : { *(.farrodata.*06 .farrodata.*06$)
			  . = ALIGN (16); } >fr06segvma AT >bseglma
    .farrodata.07$ : { *(.farrodata.*07 .farrodata.*07$)
			  . = ALIGN (16); } >fr07segvma AT >bseglma
    .farrodata.10$ : { *(.farrodata.*10 .farrodata.*10$)
			  . = ALIGN (16); } >fr10segvma AT >bseglma
    .farrodata.11$ : { *(.farrodata.*11 .farrodata.*11$)
			  . = ALIGN (16); } >fr11segvma AT >bseglma
    .farrodata.12$ : { *(.farrodata.*12 .farrodata.*12$)
			  . = ALIGN (16); } >fr12segvma AT >bseglma
    .farrodata.13$ : { *(.farrodata.*13 .farrodata.*13$)
			  . = ALIGN (16); } >fr13segvma AT >bseglma
    .farrodata.14$ : { *(.farrodata.*14 .farrodata.*14$)
			  . = ALIGN (16); } >fr14segvma AT >bseglma
    .farrodata.15$ : { *(.farrodata.*15 .farrodata.*15$)
			  . = ALIGN (16); } >fr15segvma AT >bseglma
    .farrodata.16$ : { *(.farrodata.*16 .farrodata.*16$)
			  . = ALIGN (16); } >fr16segvma AT >bseglma
    .farrodata.17$ : { *(.farrodata.*17 .farrodata.*17$)
			  . = ALIGN (16); } >fr17segvma AT >bseglma
    .farrodata.20$ : { *(.farrodata.*20 .farrodata.*20$)
			  . = ALIGN (16); } >fr20segvma AT >bseglma
    .farrodata.21$ : { *(.farrodata.*21 .farrodata.*21$)
			  . = ALIGN (16); } >fr21segvma AT >bseglma
    .farrodata.22$ : { *(.farrodata.*22 .farrodata.*22$)
			  . = ALIGN (16); } >fr22segvma AT >bseglma
    .farrodata.23$ : { *(.farrodata.*23 .farrodata.*23$)
			  . = ALIGN (16); } >fr23segvma AT >bseglma
    .farrodata.24$ : { *(.farrodata.*24 .farrodata.*24$)
			  . = ALIGN (16); } >fr24segvma AT >bseglma
    .farrodata.25$ : { *(.farrodata.*25 .farrodata.*25$)
			  . = ALIGN (16); } >fr25segvma AT >bseglma
    .farrodata.26$ : { *(.farrodata.*26 .farrodata.*26$)
			  . = ALIGN (16); } >fr26segvma AT >bseglma
    .farrodata.27$ : { *(.farrodata.*27 .farrodata.*27$)
			  . = ALIGN (16); } >fr27segvma AT >bseglma
    .farrodata.30$ : { *(.farrodata.*30 .farrodata.*30$)
			  . = ALIGN (16); } >fr30segvma AT >bseglma
    .farrodata.31$ : { *(.farrodata.*31 .farrodata.*31$)
			  . = ALIGN (16); } >fr31segvma AT >bseglma
    .farrodata.32$ : { *(.farrodata.*32 .farrodata.*32$)
			  . = ALIGN (16); } >fr32segvma AT >bseglma
    .farrodata.33$ : { *(.farrodata.*33 .farrodata.*33$)
			  . = ALIGN (16); } >fr33segvma AT >bseglma
    .farrodata.34$ : { *(.farrodata.*34 .farrodata.*34$)
			  . = ALIGN (16); } >fr34segvma AT >bseglma
    .farrodata.35$ : { *(.farrodata.*35 .farrodata.*35$)
			  . = ALIGN (16); } >fr35segvma AT >bseglma
    .farrodata.36$ : { *(.farrodata.*36 .farrodata.*36$)
			  . = ALIGN (16); } >fr36segvma AT >bseglma
    .farrodata.37$ : { *(.farrodata.*37 .farrodata.*37$)
			  . = ALIGN (16); } >fr37segvma AT >bseglma
    .farrodata.40$ : { *(.farrodata.*40 .farrodata.*40$)
			  . = ALIGN (16); } >fr40segvma AT >bseglma
    .farrodata.41$ : { *(.farrodata.*41 .farrodata.*41$)
			  . = ALIGN (16); } >fr41segvma AT >bseglma
    .farrodata.42$ : { *(.farrodata.*42 .farrodata.*42$)
			  . = ALIGN (16); } >fr42segvma AT >bseglma
    .farrodata.43$ : { *(.farrodata.*43 .farrodata.*43$)
			  . = ALIGN (16); } >fr43segvma AT >bseglma
    .farrodata.44$ : { *(.farrodata.*44 .farrodata.*44$)
			  . = ALIGN (16); } >fr44segvma AT >bseglma
    .farrodata.45$ : { *(.farrodata.*45 .farrodata.*45$)
			  . = ALIGN (16); } >fr45segvma AT >bseglma
    .farrodata.46$ : { *(.farrodata.*46 .farrodata.*46$)
			  . = ALIGN (16); } >fr46segvma AT >bseglma
    .farrodata.47$ : { *(.farrodata.*47 .farrodata.*47$)
			  . = ALIGN (16); } >fr47segvma AT >bseglma
    .farrodata.50$ : { *(.farrodata.*50 .farrodata.*50$)
			  . = ALIGN (16); } >fr50segvma AT >bseglma
    .farrodata.51$ : { *(.farrodata.*51 .farrodata.*51$)
			  . = ALIGN (16); } >fr51segvma AT >bseglma
    .farrodata.52$ : { *(.farrodata.*52 .farrodata.*52$)
			  . = ALIGN (16); } >fr52segvma AT >bseglma
    .farrodata.53$ : { *(.farrodata.*53 .farrodata.*53$)
			  . = ALIGN (16); } >fr53segvma AT >bseglma
    .farrodata.54$ : { *(.farrodata.*54 .farrodata.*54$)
			  . = ALIGN (16); } >fr54segvma AT >bseglma
    .farrodata.55$ : { *(.farrodata.*55 .farrodata.*55$)
			  . = ALIGN (16); } >fr55segvma AT >bseglma
    .farrodata.56$ : { *(.farrodata.*56 .farrodata.*56$)
			  . = ALIGN (16); } >fr56segvma AT >bseglma
    .farrodata.57$ : { *(.farrodata.*57 .farrodata.*57$)
			  . = ALIGN (16); } >fr57segvma AT >bseglma
    .farrodata.60$ : { *(.farrodata.*60 .farrodata.*60$)
			  . = ALIGN (16); } >fr60segvma AT >bseglma
    .farrodata.61$ : { *(.farrodata.*61 .farrodata.*61$)
			  . = ALIGN (16); } >fr61segvma AT >bseglma
    .farrodata.62$ : { *(.farrodata.*62 .farrodata.*62$)
			  . = ALIGN (16); } >fr62segvma AT >bseglma
    .farrodata.63$ : { *(.farrodata.*63 .farrodata.*63$)
			  . = ALIGN (16); } >fr63segvma AT >bseglma
    .farrodata.64$ : { *(.farrodata.*64 .farrodata.*64$)
			  . = ALIGN (16); } >fr64segvma AT >bseglma
    .farrodata.65$ : { *(.farrodata.*65 .farrodata.*65$)
			  . = ALIGN (16); } >fr65segvma AT >bseglma
    .farrodata.66$ : { *(.farrodata.*66 .farrodata.*66$)
			  . = ALIGN (16); } >fr66segvma AT >bseglma
    .farrodata.67$ : { *(.farrodata.*67 .farrodata.*67$)
			  . = ALIGN (16); } >fr67segvma AT >bseglma
    .farrodata.70$ : { *(.farrodata.*70 .farrodata.*70$)
			  . = ALIGN (16); } >fr70segvma AT >bseglma
    .farrodata.71$ : { *(.farrodata.*71 .farrodata.*71$)
			  . = ALIGN (16); } >fr71segvma AT >bseglma
    .farrodata.72$ : { *(.farrodata.*72 .farrodata.*72$)
			  . = ALIGN (16); } >fr72segvma AT >bseglma
    .farrodata.73$ : { *(.farrodata.*73 .farrodata.*73$)
			  . = ALIGN (16); } >fr73segvma AT >bseglma
    .farrodata.74$ : { *(.farrodata.*74 .farrodata.*74$)
			  . = ALIGN (16); } >fr74segvma AT >bseglma
    .farrodata.75$ : { *(.farrodata.*75 .farrodata.*75$)
			  . = ALIGN (16); } >fr75segvma AT >bseglma
    .farrodata.76$ : { *(.farrodata.*76 .farrodata.*76$)
			  . = ALIGN (16); } >fr76segvma AT >bseglma
    .farrodata.77$ : { *(.farrodata.*77 .farrodata.*77$)
			  . = ALIGN (16); } >fr77segvma AT >bseglma
    .farrodata.XX$ : {
		*(.farrodata .farrodata$ .farrodata.*)
		. = ALIGN (16);
	} >frXXsegvma AT >bseglma
    .fardata.00$ : { *(.fardata.*00 .fardata.*00$)
			. = ALIGN (16); } >fd00segvma AT >bseglma
    .fardata.01$ : { *(.fardata.*01 .fardata.*01$)
			. = ALIGN (16); } >fd01segvma AT >bseglma
    .fardata.02$ : { *(.fardata.*02 .fardata.*02$)
			. = ALIGN (16); } >fd02segvma AT >bseglma
    .fardata.03$ : { *(.fardata.*03 .fardata.*03$)
			. = ALIGN (16); } >fd03segvma AT >bseglma
    .fardata.04$ : { *(.fardata.*04 .fardata.*04$)
			. = ALIGN (16); } >fd04segvma AT >bseglma
    .fardata.05$ : { *(.fardata.*05 .fardata.*05$)
			. = ALIGN (16); } >fd05segvma AT >bseglma
    .fardata.06$ : { *(.fardata.*06 .fardata.*06$)
			. = ALIGN (16); } >fd06segvma AT >bseglma
    .fardata.07$ : { *(.fardata.*07 .fardata.*07$)
			. = ALIGN (16); } >fd07segvma AT >bseglma
    .fardata.10$ : { *(.fardata.*10 .fardata.*10$)
			. = ALIGN (16); } >fd10segvma AT >bseglma
    .fardata.11$ : { *(.fardata.*11 .fardata.*11$)
			. = ALIGN (16); } >fd11segvma AT >bseglma
    .fardata.12$ : { *(.fardata.*12 .fardata.*12$)
			. = ALIGN (16); } >fd12segvma AT >bseglma
    .fardata.13$ : { *(.fardata.*13 .fardata.*13$)
			. = ALIGN (16); } >fd13segvma AT >bseglma
    .fardata.14$ : { *(.fardata.*14 .fardata.*14$)
			. = ALIGN (16); } >fd14segvma AT >bseglma
    .fardata.15$ : { *(.fardata.*15 .fardata.*15$)
			. = ALIGN (16); } >fd15segvma AT >bseglma
    .fardata.16$ : { *(.fardata.*16 .fardata.*16$)
			. = ALIGN (16); } >fd16segvma AT >bseglma
    .fardata.17$ : { *(.fardata.*17 .fardata.*17$)
			. = ALIGN (16); } >fd17segvma AT >bseglma
    .fardata.20$ : { *(.fardata.*20 .fardata.*20$)
			. = ALIGN (16); } >fd20segvma AT >bseglma
    .fardata.21$ : { *(.fardata.*21 .fardata.*21$)
			. = ALIGN (16); } >fd21segvma AT >bseglma
    .fardata.22$ : { *(.fardata.*22 .fardata.*22$)
			. = ALIGN (16); } >fd22segvma AT >bseglma
    .fardata.23$ : { *(.fardata.*23 .fardata.*23$)
			. = ALIGN (16); } >fd23segvma AT >bseglma
    .fardata.24$ : { *(.fardata.*24 .fardata.*24$)
			. = ALIGN (16); } >fd24segvma AT >bseglma
    .fardata.25$ : { *(.fardata.*25 .fardata.*25$)
			. = ALIGN (16); } >fd25segvma AT >bseglma
    .fardata.26$ : { *(.fardata.*26 .fardata.*26$)
			. = ALIGN (16); } >fd26segvma AT >bseglma
    .fardata.27$ : { *(.fardata.*27 .fardata.*27$)
			. = ALIGN (16); } >fd27segvma AT >bseglma
    .fardata.30$ : { *(.fardata.*30 .fardata.*30$)
			. = ALIGN (16); } >fd30segvma AT >bseglma
    .fardata.31$ : { *(.fardata.*31 .fardata.*31$)
			. = ALIGN (16); } >fd31segvma AT >bseglma
    .fardata.32$ : { *(.fardata.*32 .fardata.*32$)
			. = ALIGN (16); } >fd32segvma AT >bseglma
    .fardata.33$ : { *(.fardata.*33 .fardata.*33$)
			. = ALIGN (16); } >fd33segvma AT >bseglma
    .fardata.34$ : { *(.fardata.*34 .fardata.*34$)
			. = ALIGN (16); } >fd34segvma AT >bseglma
    .fardata.35$ : { *(.fardata.*35 .fardata.*35$)
			. = ALIGN (16); } >fd35segvma AT >bseglma
    .fardata.36$ : { *(.fardata.*36 .fardata.*36$)
			. = ALIGN (16); } >fd36segvma AT >bseglma
    .fardata.37$ : { *(.fardata.*37 .fardata.*37$)
			. = ALIGN (16); } >fd37segvma AT >bseglma
    .fardata.40$ : { *(.fardata.*40 .fardata.*40$)
			. = ALIGN (16); } >fd40segvma AT >bseglma
    .fardata.41$ : { *(.fardata.*41 .fardata.*41$)
			. = ALIGN (16); } >fd41segvma AT >bseglma
    .fardata.42$ : { *(.fardata.*42 .fardata.*42$)
			. = ALIGN (16); } >fd42segvma AT >bseglma
    .fardata.43$ : { *(.fardata.*43 .fardata.*43$)
			. = ALIGN (16); } >fd43segvma AT >bseglma
    .fardata.44$ : { *(.fardata.*44 .fardata.*44$)
			. = ALIGN (16); } >fd44segvma AT >bseglma
    .fardata.45$ : { *(.fardata.*45 .fardata.*45$)
			. = ALIGN (16); } >fd45segvma AT >bseglma
    .fardata.46$ : { *(.fardata.*46 .fardata.*46$)
			. = ALIGN (16); } >fd46segvma AT >bseglma
    .fardata.47$ : { *(.fardata.*47 .fardata.*47$)
			. = ALIGN (16); } >fd47segvma AT >bseglma
    .fardata.50$ : { *(.fardata.*50 .fardata.*50$)
			. = ALIGN (16); } >fd50segvma AT >bseglma
    .fardata.51$ : { *(.fardata.*51 .fardata.*51$)
			. = ALIGN (16); } >fd51segvma AT >bseglma
    .fardata.52$ : { *(.fardata.*52 .fardata.*52$)
			. = ALIGN (16); } >fd52segvma AT >bseglma
    .fardata.53$ : { *(.fardata.*53 .fardata.*53$)
			. = ALIGN (16); } >fd53segvma AT >bseglma
    .fardata.54$ : { *(.fardata.*54 .fardata.*54$)
			. = ALIGN (16); } >fd54segvma AT >bseglma
    .fardata.55$ : { *(.fardata.*55 .fardata.*55$)
			. = ALIGN (16); } >fd55segvma AT >bseglma
    .fardata.56$ : { *(.fardata.*56 .fardata.*56$)
			. = ALIGN (16); } >fd56segvma AT >bseglma
    .fardata.57$ : { *(.fardata.*57 .fardata.*57$)
			. = ALIGN (16); } >fd57segvma AT >bseglma
    .fardata.60$ : { *(.fardata.*60 .fardata.*60$)
			. = ALIGN (16); } >fd60segvma AT >bseglma
    .fardata.61$ : { *(.fardata.*61 .fardata.*61$)
			. = ALIGN (16); } >fd61segvma AT >bseglma
    .fardata.62$ : { *(.fardata.*62 .fardata.*62$)
			. = ALIGN (16); } >fd62segvma AT >bseglma
    .fardata.63$ : { *(.fardata.*63 .fardata.*63$)
			. = ALIGN (16); } >fd63segvma AT >bseglma
    .fardata.64$ : { *(.fardata.*64 .fardata.*64$)
			. = ALIGN (16); } >fd64segvma AT >bseglma
    .fardata.65$ : { *(.fardata.*65 .fardata.*65$)
			. = ALIGN (16); } >fd65segvma AT >bseglma
    .fardata.66$ : { *(.fardata.*66 .fardata.*66$)
			. = ALIGN (16); } >fd66segvma AT >bseglma
    .fardata.67$ : { *(.fardata.*67 .fardata.*67$)
			. = ALIGN (16); } >fd67segvma AT >bseglma
    .fardata.70$ : { *(.fardata.*70 .fardata.*70$)
			. = ALIGN (16); } >fd70segvma AT >bseglma
    .fardata.71$ : { *(.fardata.*71 .fardata.*71$)
			. = ALIGN (16); } >fd71segvma AT >bseglma
    .fardata.72$ : { *(.fardata.*72 .fardata.*72$)
			. = ALIGN (16); } >fd72segvma AT >bseglma
    .fardata.73$ : { *(.fardata.*73 .fardata.*73$)
			. = ALIGN (16); } >fd73segvma AT >bseglma
    .fardata.74$ : { *(.fardata.*74 .fardata.*74$)
			. = ALIGN (16); } >fd74segvma AT >bseglma
    .fardata.75$ : { *(.fardata.*75 .fardata.*75$)
			. = ALIGN (16); } >fd75segvma AT >bseglma
    .fardata.76$ : { *(.fardata.*76 .fardata.*76$)
			. = ALIGN (16); } >fd76segvma AT >bseglma
    .fardata.77$ : { *(.fardata.*77 .fardata.*77$)
			. = ALIGN (16); } >fd77segvma AT >bseglma
    .fardata.XX$ : {
		*(.fardata .fardata$ .fardata.*)
		. = ALIGN (16);
	} >fdXXsegvma AT >bseglma

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

		/* GNU ld said
			"section .text VMA [0000000000000020,000000000000002f]
			overlaps section .msdos_mz_hdr VMA [0000000000000000,
			00000000000001ff]"
		   for gcc-ia16's ia16/torture/nostdlib-1.c test, because ld's
		   overlay checks saw only two non-empty overlapping segments,
		   .text and .msdos_mz_hdr, and they did not start at the
		   same address.

		   To work around this, put something inside .data if it might
		   be necessary.  -- tkchia  */
		. = (. == __sdata ? . + 1 : .);

		/* ".../ia16-elf/bin/ld: a.out: R_386_RELSEG16 with
		   unaligned section `.bss'" */
		. = ALIGN (16);
		__edata_padded = .;
	} >dsegvma AT >bseglma

    .bss (NOLOAD) : {
		 __sbss = .;
                *(.bss) *(.bss.*)
                *(COMMON)
                __ebss = .;

                /* Minimum address allowed for sbrk() to use.  */
                __heap_end_minimum = ALIGN(8);

		ASSERT(. <= 0xfd00,
		    "Error: too large for a small-model .exe file.");
		ASSERT (ABSOLUTE (DEFINED ("main!") ? "main!" : 0) == 0,
		    "Error: using non-segelf ld script with segelf program.");
		ASSERT (ABSOLUTE (DEFINED ("environ!") ? "environ!" : 0) == 0,
		    "Error: using non-segelf ld script with segelf library.");
	} >dsegvma AT >bseglma

	__ldata = __edata - __sdata;
	__lbss0 = __ebss - __sbss;
	__lbss1 = __lbss0 + 1;
	__lbss = __lbss1 / 2;

	/* Used by the memory resizing and DPMI initialization code in
	   dos-models-crt0.S.  */
	__msdos_initial_alloc_paras =
	    LOADADDR (.data) / 16 - LOADADDR (.text) / 16 + 0x10
	    + 0x1000 - ADDR (.data) / 16;

    /DISCARD/ : { *(.*) }
  }
