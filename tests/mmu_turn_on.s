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

    # Stop loop
    loop:
    b loop;
