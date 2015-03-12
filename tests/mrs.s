
.text
start:
	subs r0, r0, r0
	mov r0, #5
	mov r1, #4
	add r2, r1, r0
	mrs R3, CPSR
	mrseq R4, CPSR
	mrsne R5, CPSR
	subs R6, r1, r0
	mrsmi R7, CPSR
	msr CPSR_xc, #4
	mrs R8, CPSR
	msr CPSR_cxsf, r3
	mrs r9, CPSR
	msr CPSR_f,  #7
	mrs r10, CPSR
	msr CPSR, #2147483675
	mrs r11, CPSR
	msr SPSR_c, #219
	mrs r12, SPSR
	msr CPSR_c, #16 //change to user mode
	mrs r0, CPSR
	msr CPSR_c, #31 //try to go to supervisor mode
	mrs r2, CPSR
stop:	 b stop
