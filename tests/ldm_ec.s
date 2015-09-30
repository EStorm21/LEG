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

    # Enable the I$
    mcr     p15, 0, r1, cr1, cr0, 0;   # Read in the control register
    orr     r1, r1, #4096;             # Set the I Bit (bit 12)
    mcr     p15, 0, r1, cr1, cr0, 0;

    # Enable D$
    mcr     15, 0, r1, cr1, cr0, 0;    # Read in the control register
    orr     r1, r1, #4;                # Set the C Bit (bit 2)
    mcr     15, 0, r1, cr1, cr0, 0;  

    # Run other tests (i.e. ldrstri) 
    ldrb r1, [r3, r4, lsl #2]

# ldm test
    #all, increment after
    ldmda r13!, {r0 - r12,r14}
    add r1, r1, r1
    add r1, r1, r2
    sub r0, r0, r0
    add r2, r0, #2
    mul r3, r3, r2
    add r1, r1, r3
    add r2, r0, #3
    mul r4, r4, r2
    add r1, r1, r4
    add r2, r0, #4
    mul r5, r5, r2
    add r1, r1, r5
    add r2, r0, #5
    mul r6, r6, r2
    add r1, r1, r6
    add r2, r0, #6
    mul r7, r7, r2
    add r1, r1, r7
    add r2, r0, #7
    mul r8, r8, r2
    add r1, r1, r8
    add r2, r0, #8
    mul r9, r9, r2
    add r1, r1, r9
    add r2, r0, #9
    mul r10, r10, r2
    add r1, r1, r10
    add r2, r0, #10
    mul r11, r11, r2
    add r1, r1, r11
    add r2, r0, #11
    mul r12, r12, r2
    add r1, r1, r12
    add r2, r0, #12
    mul r13, r13, r2
    add r1, r1, r13
    add r2, r0, #13
    mul r14, r14, r2
    add r1, r1, r14
    add r1, r1, r13

    #conditional test
    ldr sp, val
    ldmeqdb r13, {r4, r8-r10}
    add r2, r0, #14
    mul r4, r4, r2
    add r1, r1, r4
    add r2, r0, #15
    mul r8, r8, r2
    add r1, r1, r8
    add r2, r0, #16
    mul r9, r9, r2
    add r1, r1, r9
    add r2, r0, #17
    mul r10, r10, r2
    add r1, r1, r10

    stmia r13, {r0-r14}
    add r1, r1, r1
    add r1, r1, r2
    sub r0, r0, r0
    add r2, r0, #2
    mul r3, r3, r2
    add r1, r1, r3
    add r2, r0, #3
    mul r4, r4, r2
    add r1, r1, r4
    add r2, r0, #4
    mul r5, r5, r2
    add r1, r1, r5
    add r2, r0, #5
    mul r6, r6, r2
    add r1, r1, r6
    add r2, r0, #6
    mul r7, r7, r2
    add r1, r1, r7
    add r2, r0, #7
    mul r8, r8, r2
    add r1, r1, r8
    add r2, r0, #8
    mul r9, r9, r2
    add r1, r1, r9
    add r2, r0, #9
    mul r10, r10, r2
    add r1, r1, r10
    add r2, r0, #10
    mul r11, r11, r2
    add r1, r1, r11
    add r2, r0, #11
    mul r12, r12, r2
    add r1, r1, r12
    add r2, r0, #12
    mul r13, r13, r2
    add r1, r1, r13
    add r2, r0, #13
    mul r14, r14, r2
    add r1, r1, r14
    ldr sp, val
    ldmia r13, {r0}
    add r5, r5, r5
    ldmib r13!, {r2-r3}


    
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