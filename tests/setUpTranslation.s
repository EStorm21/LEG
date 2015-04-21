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
    LDR R2, =0x0403fdee
    STR R2, [R1]
    LDR R1, =0x00300008
    LDR R2, =0x0803fdee
    STR R2, [R1]
    # ***end pagetable.asm***

    # Set the pagetable base
    ldr     r1, =0x00300000;             # pagetable base
    mcr     p15, 0, r1, cr2, cr0, 0;    # store the pagetable in the coprocessor

    # Turn on the MMU
    mcr     p15, 0, r1, cr1, cr0, 0;    # Read in the control register
    orr     r1, r1, #1;
    mcr     p15, 0, r1, cr1, cr0, 0;    # Turn on the MMU for translation

    # Run other tests (i.e. ldrstri) 

    # INITIALIZING STACK
    next14: ldr R1, val15
    b next15
    val15: .word 1
    next15: str R1, [sp, #-0]
    ldr R1, val16
    b next16
    val16: .word 2
    next16: str R1, [sp, #-4]
    ldr R1, val17
    b next17
    val17: .word 3
    next17: str R1, [sp, #-8]
    ldr R1, val18
    b next18
    val18: .word 4
    next18: str R1, [sp, #-12]
    ldr R1, val19
    b next19
    val19: .word 5
    next19: str R1, [sp, #-16]
    ldr R1, val20
    b next20
    val20: .word 6
    next20: str R1, [sp, #-20]
    ldr R1, val21
    b next21
    val21: .word 7
    next21: str R1, [sp, #-24]
    ldr R1, val22
    b next22
    val22: .word 8
    next22: str R1, [sp, #-28]
    ldr R1, val23
    b next23
    val23: .word 9
    next23: str R1, [sp, #-32]
    ldr R1, val24
    b next24
    val24: .word 10
    next24: str R1, [sp, #-36]
    ldr R1, val25
    b next25
    val25: .word 11
    next25: str R1, [sp, #-40]

    # MAIN PROGRAM
    ldr R0,  [sp, #-0]
    ldr R1,  [sp, #-4]
    ldr R2,  [sp, #-8]
    ldr R3,  [sp, #-12]
    ldr R4,  [sp, #-16]
    ldr R5,  [sp, #-20]
    ldr R6,  [sp, #-24]
    ldr R7,  [sp, #-28]
    ldr R8,  [sp, #-32]
    ldr R9,  [sp, #-36]
    ldr R10, [sp, #-40]
    str R0,  [sp, #-40]
    str R1,  [sp, #-36]
    str R2,  [sp, #-32]
    str R3,  [sp, #-28]
    str R4,  [sp, #-24]
    str R5,  [sp, #-20]
    str R6,  [sp, #-16]
    str R7,  [sp, #-12]
    str R8,  [sp, #-8]
    str R9,  [sp, #-4]
    str R10, [sp, #-0]
    
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
