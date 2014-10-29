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
val1: .word 577090035
next1: ldr R2, val2
b next2
val2: .word 3639700185
next2: ldr R3, val3
b next3
val3: .word 3280387010
next3: ldr R4, val4
b next4
val4: .word 1095513124
next4: ldr R5, val5
b next5
val5: .word 2127877496
next5: ldr R6, val6
b next6
val6: .word 1930549423
next6: ldr R7, val7
b next7
val7: .word 2798570508
next7: ldr R8, val8
b next8
val8: .word 3387540998
next8: ldr R9, val9
b next9
val9: .word 403123856
next9: ldr R10, val10
b next10
val10: .word 121751485
next10: ldr R11, val11
b next11
val11: .word 3589583788
next11: ldr R12, val12
b next12
val12: .word 1858720404
next12: ldr R14, val14
b next14
val14: .word 3273968024
next14:
		add r2, r0, #11
  		add r3, r0, #12          @ initialize r3 = 12       
#mov test
		mov r3, r2
		addeq r4, r2, #1
		addne r5, r2, #1
		addcs r6, r2, #1
		addcc r7, r2, #1
		addmi r8, r2, #1
		addpl r9, r2, #1
		addvs r10, r2, #1
		addvc r11, r2, #1

		mov r3, r2, LSL #2
		addeq r4, r2, #2
		addne r5, r2, #2
		addcs r6, r2, #2
		addcc r7, r2, #2
		addmi r8, r2, #2
		addpl r9, r2, #2
		addvs r10, r2, #2
		addvc r11, r2, #2

		mov r2, r3
		mov r3, R2, ASR #2
		addeq r4, r2, #4
		addne r5, r2, #4
		addcs r6, r2, #4
		addcc r7, r2, #4
		addmi r8, r2, #4
		addpl r9, r2, #4
		addvs r10, r2, #4
		addvc r11, r2, #4

		mov r2, r3
		mov r3, R2, LSR #2
		addeq r4, r2, #8
		addne r5, r2, #8
		addcs r6, r2, #8
		addcc r7, r2, #8
		addmi r8, r2, #8
		addpl r9, r2, #8
		addvs r10, r2, #8
		addvc r11, r2, #8

		mov r2, r3
		mov r3, R2, ROR #2
		addeq r4, r2, #16
		addne r5, r2, #16
		addcs r6, r2, #16
		addcc r7, r2, #16
		addmi r8, r2, #16
		addpl r9, r2, #16
		addvs r10, r2, #16
		addvc r11, r2, #16

		mov r2, r3
		mov r3, r2, RRX
		addeq r4, r2, #32
		addne r5, r2, #32
		addcs r6, r2, #32
		addcc r7, r2, #32
		addmi r8, r2, #32
		addpl r9, r2, #32
		addvs r10, r2, #32
		addvc r11, r2, #32

		add r14, r0, #-1

		mov r3, r2, LSL r14
		addeq r4, r2, #64
		addne r5, r2, #64
		addcs r6, r2, #64
		addcc r7, r2, #64
		addmi r8, r2, #64
		addpl r9, r2, #64
		addvs r10, r2, #64
		addvc r11, r2, #64

		mov r2, r3
		mov r3, r2, ASR r14
		addeq r4, r2, #128
		addne r5, r2, #128
		addcs r6, r2, #128
		addcc r7, r2, #128
		addmi r8, r2, #128
		addpl r9, r2, #128
		addvs r10, r2, #128
		addvc r11, r2, #128

		mov r2, r3
		mov r3, r2, LSR r14
		addeq r4, r2, #256
		addne r5, r2, #256
		addcs r6, r2, #256
		addcc r7, r2, #256
		addmi r8, r2, #256
		addpl r9, r2, #256
		addvs r10, r2, #256
		addvc r11, r2, #256

		mov r2, r3
		mov r3, r2, ROR r14
		addeq r4, r2, #1
		addne r5, r2, #2
		addcs r6, r2, #3
		addcc r7, r2, #4
		addmi r8, r2, #5
		addpl r9, r2, #6
		addvs r10, r2, #7
		addvc r11, r2, #8


end:	b end				@ stay at end
