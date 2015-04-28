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
prog:	ldr r2, =goto
	mov sp, #0x40000
	str r2, [sp, #0]
	ldmfd sp!, {pc}
	b stop
goto: 	mov r1, #1

stop:    b stop

reset: mov r1, #0
	mov r2, #0
	subs r0, r0, r0
	b prog

swi:
        add r2, r1, r2
	mov r4, #7
        mov r1, r2
        movs r15, r14
undef: b prog
pfa: b prog
da: b prog
irq: b prog
fiq: b prog

