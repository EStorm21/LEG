.global main
main:

# INITIALIZING R0 and SP

subs R0, R15, R15
ldr sp, val
b next
val: .word 0xbefffae8

# INITIALIZING REGISTERS
next: ldr R1, val1
b next1
val1: .word 11111
next1: ldr R2, val2
b next2
val2: .word 222222
next2: ldr R3, val3
b next3
val3: .word 3333333
next3: ldr R4, val4
b next4
val4: .word 4444444
next4: ldr R5, val5
b next5
val5: .word 5555555
next5: ldr R6, val6
b next6
val6: .word 6666666
next6: ldr R7, val7
b next7
val7: .word 7777777
next7: ldr R8, val8
b next8
val8: .word 8888888
next8: ldr R9, val9
b next9
val9: .word 9999999
next9: ldr R10, val10
b next10
val10: .word 10101010
next10: ldr R11, val11
b next11
val11: .word 111111111
next11: ldr R12, val12
b next12
val12: .word 1212121212
next12: ldr R14, val14
b next14
val14: .word 1414141414
next14:

# MAIN PROGRAM
str R0,  [sp, #-0]
ldrh r1, [sp, #-0]
ldrh r2, [sp, #2]
str r0, [sp, #128]
str r0, [sp, #126]
ldrh r4, [sp, #128]
ldrh r5, [sp, #130]
strh r3, [sp, #-0]
strh r4, [sp, #-2]
strh r5, [sp, #2]
strh r3, [sp, #130]
ldr r3, [sp, #-0]
ldrh r4, [sp, #130]

#r type
sub r14, r14, r14
add r14, r14, #4
str r6, [sp, r14]
str r6, [sp, -r14]
ldrh r12, [sp, -r14]
add r14, r14, #2
ldrh r11, [sp, r14]
strh r0, [sp, r14]
strh r1, [sp, -r14]
ldrh r10, [sp, r14]
sub r14, r14, #2
ldrh r9, [sp, -r14]

end: b end
