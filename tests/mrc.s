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
	mrc p15, 0, r0, c0, c0, 0
	mrc p15, 0, r1, c1, c0, 0
	mrc p15, 0, r2, c2, c0, 0
	mrc p15, 0, r3, c3, c0, 0
	mrc p15, 0, r4, c4, c0, 0
	mrc p15, 0, r5, c5, c0, 0
	mrc p15, 0, r6, c6, c0, 0


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

