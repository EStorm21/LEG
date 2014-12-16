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
val15: .word 2
next15: str R1, [sp, #-0]
ldr R1, val16
b next16
val16: .word 3
next16: str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 5
next17: str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 7
next18: str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 11
next19: str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 13
next20: str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 17
next21: str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 19
next22: str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 23
next23: str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 27
next24: str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 29
next25: str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 31
next26: str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 37
next27: str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 41
next28: str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 43
next29: str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 47
next30: str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 53
next31: str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 57
next32: str R1, [sp, #-68]

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


	end:    b end
