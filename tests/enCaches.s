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
    ldr r13, [r5], r4, lsl #2

    # Test for storing to all the bytes individually
    mov r3, #0x200;
    ldr r5, =0xffee1122;
    str r5, [r3];           # store 0xffee1122 into r3
    ldr r5, =0x33445566;
    strb r5, [r3, #3];  
    ldr r0, [r3];           # load 0x66ee1122 into r0
    ldr r5, =0x334455aa;
    strb r5, [r3, #2];      
    ldr r0, [r3];           # load 0x66661122 into r0
    strb r5, [r3, #1];     
    ldr r0, [r3];           # load 0x66666622 into r0
    strb r5, [r3];      
    ldr r0, [r3];           # load 0x66666666 into r0

    # Test loading byte into r5
    ldrb r0, [r3, #2];      # load 0x00440000 into r0

    # Test storing twice from the same way
    ldr r6, =0x00ff1200;
    ldr r5, =0x11223344; 
    strb r5, [r6];       # Store ffff1244 into addr 0xffff1200;
    ldr r0, [r6];        # Load 0x00000044 into r0;

    # Loads and stores from linux kernel code
    mov r3, #0x200
    ldrb    r2, [r3], #1

    
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