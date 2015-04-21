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
        mov r12, #1
	mov r6, #6
	stm r0, {r3, r8}
	ldm r0, {r3, r8}
	lsl r6, r12, r6

stop:   mov r1, #0
	mov r2, #0 
	b stop

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


