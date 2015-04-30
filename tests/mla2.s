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
	mov r0, #0x124
	mov r2, #12
	mov r1, #0xc0000000
	add r1, r1, #0x00580000
	add r1, r1, #0x0000f200
	add r1, r1, #0x00000004
	mov r12, r1
	mov r2, #0
	mov r0, #20
	mla r3, r0, r2, r12

stop:    b stop

reset: mov r1, #0
	mov r2, #0
	subs r0, r0, r0
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

