ldr R1, val0
b next0
val0: .word 0x000c0000
next0: ldr R2, val1
b next1
val1: .word 0x003021e1
next1: str R2, R1
ldr R1, val2
b next2
val2: .word 0x000c0800
next2: ldr R2, val3
b next3
val3: .word 0x00000ff
next3: str R2, R1
