vectors_start:
	b reset_handler
	b undef_handler
	b swi_handler
	b pfa_handler
	b da_handler
	b .
	b irq_handler
	b fiq_handler

reset_handler:
	/* set Supervisor stack */
	LDR sp, stack_top
	MRS r0, cpsr
	/* go in IRQ mode */
	BIC r1, r0, #0x1F
	ORR r1, r1, #0x12
	MSR cpsr, r1
	/* set IRQ stack */
	LDR sp, irq_stack_top
	/* Enable IRQs */
	BIC r0, r0, #0x80
	/* go back in Supervisor mode */
	MSR cpsr, r0
	/* jump to main */
	BL main
	B .

undef_handler:
	b .
swi_handler:
	b .
pfa_handler:
	b .
da_handler:
	b .
fiq_handler:
	b .

stack_top: .word 0xffff0
irq_stack_top: .word 0x1ffff0
PIC_IRQ_ENCLR: .word 0x1400000c
UART0_IMSC: .word 0x16000038
PIC_IRQ_ENSET: .word 0x14000008


irq_handler:
	b .

main:
	push	{r11}		// (str r11, [sp, #-4]!)
	add	r11, sp, #0
	ldr	r3, PIC_IRQ_ENCLR
	mov	r2, #2
	str	r2, [r3]
	ldr	r3, UART0_IMSC
	mov	r2, #16
	str	r2, [r3]
	ldr	r3, PIC_IRQ_ENSET
	mov	r2, #2
	str	r2, [r3]
	nop
	nop
	nop
	interrupt_0: nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	interrupt_1: nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	b .
