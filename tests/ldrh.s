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
        add r3, r0, #256000
        add r2, r3, #16711680
	str r2, [r3, #0]
	ldr r7, [r3, #0]
	ldrh    r1, [r3, #2]!
	add r2, r2, #1
	str r2, [r3, #2]
	ldrh r4, [r3], #2	
	str r8, [r3], #2048
	pop     {r5, r6, r7, r8}


stop:    b stop

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


