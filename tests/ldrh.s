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
        add r3, r0, #256
        add r2, r3, #16711680
	strh r2, [r3, #2]
	ldrh    r1, [r3, #2]!	

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


