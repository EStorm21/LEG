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
	add r1, r0, #-2
	add r14, r0, #0x40000
	str r1, [r14, #0]
	ldrh r2, [r14, #0]
	ldrsh r3, [r14, #0]
	ldrsb r4, [r14, #0]
	ldrsh r5, [r14, #2]
	ldrnesh r11, [r14, #0]
	add r1, r0, #2
	str r1, [r14, #0]
	ldrsh r6, [r14, #0]
	ldrsh r7, [r14, #2]
	ldrsb r8, [r14, #0]
	ldrsb r9, [r14, #3]
	ldrnesh r10, [r14, #0]

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

