.text
	.code 32
	.global vectors_start

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
		LDR sp, =stack_top
		MRS r0, cpsr
		/* go in IRQ mode */
		BIC r1, r0, #0x1F
		ORR r1, r1, #0x12
		MSR cpsr, r1
		/* set IRQ stack */
		LDR sp, =irq_stack_top

		BIC r0, r0, #0x80 /* Enable IRQs */
		# BIC r0, r0, #0x40 /* Enable FIQs */

		/* go back in Supervisor mode */
		MSR cpsr, r0
		/* jump to main */
		BL main
		B .

	.end