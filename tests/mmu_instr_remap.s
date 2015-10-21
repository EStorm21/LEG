.text
# Initialize the coprocessor
     # S = 1 
     # R = 1
     # MMU disabled
     # Caches disabled
    ldr     r1, =0x00000300;
    mcr     p15, 0, r1, cr1, cr0, 0;    # disable MMU

    # Include an address offset in the instruction memory
    # ***pagetable.asm***
    LDR R1, =0x00300000
    LDR R2, =0x00100c0e
    STR R2, [R1]

    # Write two instructions instruction at next instruction physical address
    LDR r1, =0x00100054; 
    LDR r2, =0xe2801f7d; # Add immediate 500
    STR R2, [R1];
    LDR r1, =0x00100058; 
    LDR r2, =0xe2802f7e; # Add immediate 504 to r2
    STR R2, [R1];
    LDR r1, =0x0010005c; 
    LDR r2, =0xeafffffe; # Branch to self
    STR R2, [R1];

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

    # Change register values to detect the bug
    add r4, r0, #15;

    # Enable the I$
    mrc     p15, 0, r1, cr1, cr0, 0;   # Read in the control register
    orr     r1, r1, #4096;             # Set the I Bit (bit 12)
    mcr     p15, 0, r1, cr1, cr0, 0;

    # Enable D$
    mrc     15, 0, r1, cr1, cr0, 0;    # Read in the control register
    orr     r1, r1, #4;                # Set the C Bit (bit 2)
    mcr     15, 0, r1, cr1, cr0, 0;  

    # Run other tests (i.e. ldrstri) 
    mov r0, #0
    add r4, r0, #1
    add r1, r0, #500;  
    add r2, r0, #504; 
    add r3, r0, #256;
    add r4, r0, #260;  
    str r1, [r3];
    str r2, [r4];
    ldr r5, [r3];
    ldr r6, [r4];

stop:    b stop
