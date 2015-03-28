
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
	mrs r13, cpsr
	msr CPSR_c, #23
	mrs r13, cpsr

stop:    b stop

reset: b prog
swi:
        add r2, r1, r2
        mov r1, r2
        movs r15, r14
undef: b prog
pfa: b prog
da: 
	mrs r13, cpsr
	b prog
irq: b prog
fiq: b prog

