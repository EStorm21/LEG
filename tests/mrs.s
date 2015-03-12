
.text
start:
	b reset
	b undef
	b swi
	b pfa
	b da
	nop
	b irq
	b fiq
prog:
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
	add r4, r4, #1
	swi #1
	add r4, r4, #2
	mrs r1, CPSR
	add r2, r2, r0
	mrs r0, SPSR
	add r0, r0, r1
	


 
stop:	 b stop

reset: b prog
swi: 
	add r2, r1, r2
	mov r1, r2
	movs r15, r14
undef: b prog
pfa: b prog
da: b prog
irq: b prog
fiq: b prog
