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
val1: .word 3639700185
next1: ldr R2, val2
b next2
val2: .word 3280387010
next2: ldr R3, val3
b next3
val3: .word 1095513124
next3: ldr R4, val4
b next4
val4: .word 2127877496
next4: ldr R5, val5
b next5
val5: .word 1930549423
next5: ldr R6, val6
b next6
val6: .word 2798570508
next6: ldr R7, val7
b next7
val7: .word 3387540998
next7: ldr R8, val8
b next8
val8: .word 403123856
next8: ldr R9, val9
b next9
val9: .word 121751485
next9: ldr R10, val10
b next10
val10: .word 3589583788
next10: ldr R11, val11
b next11
val11: .word 1858720404
next11: ldr R12, val12
b next12
val12: .word 3273968024
next12: ldr R14, val14
b next14
val14: .word 9045431

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
end: b end
