// Turn on the cache with mrc and mcr instructions
mcr     15, 0, r1, cr1, cr0, {0};   // Read in the control register
orr     r1, r1, #4096;			    // Set the C Bit (bit 12)
mcr     15, 0, r1, cr1, cr0, {0};    