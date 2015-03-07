.text
start:
	mov r0, #5
	mov r1, #4
	add r2, r1, r0
	mrs R3, CPSR
	mrseq R4, CPSR
	mrsne R5, CPSR
	subs R6, r1, r0
	mrsmi R7, CPSR
	msr CPSR_xc,  r1
	mrs R8, CPSR

stop:	 b stop
