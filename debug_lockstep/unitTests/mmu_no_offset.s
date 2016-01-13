.text
# Initialize the coprocessor
     # S = 1 
     # R = 1
     # MMU disabled
     # Caches disabled
    ldr     r1, =0x00000300;
    mcr     p15, 0, r1, cr1, cr0, 0;    # disable MMU

    # ***pagetable.asm***
    LDR R1, =0x00300000
    LDR R2, =0x00000c0e
    STR R2, [R1]

    # Set the pagetable base
    ldr     r1, =0x00300000;            # pagetable base
    mcr     p15, 0, r1, cr2, cr0, 0;    # store the pagetable in the coprocessor

    # Set the domain access permissions
    mov r1, #0x3;
    mcr p15, 0, r1, cr3, cr0, 0;

    # Turn on the MMU
    mrc     p15, 0, r7, cr1, cr0, 0;    # Read in the control register
    orr     r1, r1, #1;
    mcr     p15, 0, r1, cr1, cr0, 0;    # Turn on the MMU for translation

    # Enable the I$
    mrc     p15, 0, r1, cr1, cr0, 0;   # Read in the control register
    orr     r1, r1, #4096;             # Set the I Bit (bit 12)
    mcr     p15, 0, r1, cr1, cr0, 0;

    # Enable D$
    mrc     15, 0, r1, cr1, cr0, 0;    # Read in the control register
    orr     r1, r1, #4;                # Set the C Bit (bit 2)
    mcr     15, 0, r1, cr1, cr0, 0;  

    # Run other tests (i.e. ldrstri) 
    #------------strb2 test--------
    mov r0, #0
    add r4, r0, #1
    add r2, r0, #0x100
    add r3, r3, #0x300
    str r0, [r3, #4]    
    strb r3, [r3, r4, lsl #2]
    ldrb r1, [r3, r4, lsl #2]
    mov r3, #0x200
    str r3, [r3, r4, lsl #2]
    ldr r5, [r3, r4, lsl #2]
    str r3, [r3, #0]
    ldrb r6, [r3, #1]!
    add r11, r3, r11
    ldrb r7, [r3], #1
    add r11, r3, r11
    add r11, r3, r11    
    mov r3, #0x200
    ldr r8, [r3], #4
    add r11, r3, r11
    ldr r9, [r3, #-4]!
    add r11, r3, r11
    ldrb r10, [r3, r4, lsl #2]!
    add r11, r3, r11
    mov r3, #0x200
    strb r3, [r5], r4, lsl #2
    add r11, r3, r11
    mov r3, #0x200
    ldrb r12, [r5], r4, lsl #2 
    add r11, r3, r11
    mov r3, #0x200
    str r3, [r5], r4, lsl #2
    add r11, r3, r11
    mov r3, #0x200
    mov r5, #0x208
    ldr r13, [r5], r4, lsl #2

stop:    b stop
