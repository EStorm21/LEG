ENTRY(vectors_start)
SECTIONS
{
	. = 0x0;
	.text : {
	iotest_vects.o
	*(.text .rodata)
	}
	.data : { *(.data) }
	.bss : { *(.bss) }
	. = ALIGN(8);
	. = . + 0x1000; /* 4kB of stack memory */
	stack_top = .;
	. = . + 0x1000; /* 4kB of irq stack memory */
	irq_stack_top = .;
}