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
	msr CPSR_xc,  r1
	mrs R8, CPSR
	msr CPSR_cxsf, r3
	mrs r9, CPSR
	msr CPSR_f,  #7
	mrs r10, CPSR
	msr CPSR, #1024
	mrs r11, CPSR

stop:	 b stop
