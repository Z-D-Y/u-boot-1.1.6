SECTIONS {
    . = 0x33f80000; /* 程序的链接地址，与SDRAM的最高地址相差512K */
    .text : { *(.text) }
    
    . = ALIGN(4);
    .rodata : {*(.rodata*)} 
    
    . = ALIGN(4);
    .data : { *(.data) }
    
    . = ALIGN(4);
    __bss_start = .;
    .bss : { *(.bss)  *(COMMON) }
    __bss_end = .;
}