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
	mov r0, #0
	add r4, r0, #1
	add r2, r0, #0x100
	add r3, r3, #160
	str r0, [r3, #4]	
	strb r3, [r3, r4, lsl #2]
	ldrb r1, [r3, r4, lsl #2]
	mov r3, #0x40
	str r3, [r3, r4, lsl #2]
	ldr r5, [r3, r4, lsl #2]
	str r3, [r3, #0]
	ldrb r6, [r3, #1]!
	ldrb r7, [r3], #1	
	mov r3, #0x40
	ldr r8, [r3], #4
	ldr r9, [r3, #-4]!

stop:    b stop

reset: mov r1, #0
	mov r2, #0
	b prog

swi:
        add r2, r1, r2
        mov r1, r2
        movs r15, r14
undef: b prog
pfa: b prog
da: b prog
irq: b prog
fiq: b prog

