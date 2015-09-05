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
     # Initialize the coprocessor
     # S = 1 
     # R = 1
     # MMU disabled
     # Caches disabled
    ldr     r1, =0x00000300;
    mcr     p15, 0, r1, cr1, cr0, 0;    # disable MMU

    # ***pagetable.asm***
    LDR R1, =0x00300000
    LDR R2, =0x0003fdee
    STR R2, [R1]
    LDR R1, =0x00300004
    LDR R2, =0x0423fdee
    STR R2, [R1]
    LDR R1, =0x00300008
    LDR R2, =0x0833fdee
    STR R2, [R1]
    # ***end pagetable.asm***

    # Set the pagetable base
    ldr     r1, =0x00300000;            # pagetable base
    mcr     p15, 0, r1, cr2, cr0, 0;    # store the pagetable in the coprocessor

    # Turn on the MMU
    mcr     p15, 0, r1, cr1, cr0, 0;    # Read in the control register
    orr     r1, r1, #1;
    mcr     p15, 0, r1, cr1, cr0, 0;    # Turn on the MMU for translation

    # Run other tests (i.e. ldrstri) 
    ldr r5, =0x11112222;                # Value to store
    ldr r4, =0x00210000;                # address
    str r5, [r4];                       # store 0x11112222 virt addr 0x00010000

    
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
