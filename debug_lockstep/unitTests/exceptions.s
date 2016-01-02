vectors_start:
b main
b undef_handler
b swi_handler
b prefetch_handler
b dataAbt_handler
b .
b irq_handler
# FIQ handler immediately after vector table
fiq_handler:
stmfd sp!, {r4-r9, r12}
ldmfd sp, {r5-r10, r12}^
subs pc,r14,#4

undef_handler:
push {r4}
ldr r4, [r14, #-4]
pop {r4}
movs pc, r14

swi_handler:
stmfd sp!, {r0-r3, r12, r14}
ldr r0, [r14, #-4]
bic r0, r0, #0xff000000
l0: .word 0b00100111110100101100110000010100
ldmfd sp!, {r0-r3, r12, pc}^

prefetch_handler:
push {r3}
ldr r3, [r14, #-4]
pop {r3}
movs pc, r14

dataAbt_handler:
push {r5}
ldr r5, [r14, #-8]
mov r5, #0
str r5, [r14, #-8]
pop {r5}
subs pc, r14, #8

irq_handler:
push {r1}
stmfd sp, {r13}^
ldr r1, UART_DR
str r1, [r1]
ldmfd sp, {r1}
pop {r1}
subs pc,r14,#4


UART_DR: .word 0x16000000
PIC_IRQ_ENCLR: .word 0x1400000c
UART0_IMSC: .word 0x16000038
PIC_IRQ_ENSET: .word 0x14000008

main:
# INTERRUPT I/O INITIALIZATION
ldr	r3, PIC_IRQ_ENCLR
mov	r2, #2
str	r2, [r3]
ldr	r3, UART0_IMSC
mov	r2, #16
str	r2, [r3]
ldr	r3, PIC_IRQ_ENSET
mov	r2, #2
str	r2, [r3]

# INITIALIZING REGISTERS
# Switching to mode sys
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0x1f
MSR cpsr, r0
reg_0_sys: ldr R0, reg_0_sys_val
b reg_1_sys
reg_0_sys_val: .word 3135753373
reg_1_sys: ldr R1, reg_1_sys_val
b reg_2_sys
reg_1_sys_val: .word 3951822592
reg_2_sys: ldr R2, reg_2_sys_val
b reg_3_sys
reg_2_sys_val: .word 281558753
reg_3_sys: ldr R3, reg_3_sys_val
b reg_4_sys
reg_3_sys_val: .word 1539154174
reg_4_sys: ldr R4, reg_4_sys_val
b reg_5_sys
reg_4_sys_val: .word 4232394401
reg_5_sys: ldr R5, reg_5_sys_val
b reg_6_sys
reg_5_sys_val: .word 3873805099
reg_6_sys: ldr R6, reg_6_sys_val
b reg_7_sys
reg_6_sys_val: .word 3766667126
reg_7_sys: ldr R7, reg_7_sys_val
b reg_8_sys
reg_7_sys_val: .word 3369189721
reg_8_sys: ldr R8, reg_8_sys_val
b reg_9_sys
reg_8_sys_val: .word 3793446127
reg_9_sys: ldr R9, reg_9_sys_val
b reg_10_sys
reg_9_sys_val: .word 3830023670
reg_10_sys: ldr R10, reg_10_sys_val
b reg_11_sys
reg_10_sys_val: .word 1252909516
reg_11_sys: ldr R11, reg_11_sys_val
b reg_12_sys
reg_11_sys_val: .word 2034635604
reg_12_sys: ldr R12, reg_12_sys_val
b reg_13_sys
reg_12_sys_val: .word 83983201
reg_13_sys: ldr R13, reg_13_sys_val
b reg_14_sys
reg_13_sys_val: .word 0x0ffff0
reg_14_sys: ldr R14, reg_14_sys_val
b reg_14_sys_end
reg_14_sys_val: .word 4262879951
reg_14_sys_end: nop
# Switching to mode fiq
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0xd1
MSR cpsr, r0
reg_8_fiq: ldr R8, reg_8_fiq_val
b reg_9_fiq
reg_8_fiq_val: .word 2660722620
reg_9_fiq: ldr R9, reg_9_fiq_val
b reg_10_fiq
reg_9_fiq_val: .word 177435696
reg_10_fiq: ldr R10, reg_10_fiq_val
b reg_11_fiq
reg_10_fiq_val: .word 3103418266
reg_11_fiq: ldr R11, reg_11_fiq_val
b reg_12_fiq
reg_11_fiq_val: .word 3678893072
reg_12_fiq: ldr R12, reg_12_fiq_val
b reg_13_fiq
reg_12_fiq_val: .word 3576330967
reg_13_fiq: ldr R13, reg_13_fiq_val
b reg_14_fiq
reg_13_fiq_val: .word 0x1ffff0
reg_14_fiq: ldr R14, reg_14_fiq_val
b reg_14_fiq_end
reg_14_fiq_val: .word 3352786289
reg_14_fiq_end: nop
# Switching to mode irq
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0x92
MSR cpsr, r0
reg_13_irq: ldr R13, reg_13_irq_val
b reg_14_irq
reg_13_irq_val: .word 0x2ffff0
reg_14_irq: ldr R14, reg_14_irq_val
b reg_14_irq_end
reg_14_irq_val: .word 1986450444
reg_14_irq_end: nop
# Switching to mode undef
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0x1b
MSR cpsr, r0
reg_13_undef: ldr R13, reg_13_undef_val
b reg_14_undef
reg_13_undef_val: .word 0x3ffff0
reg_14_undef: ldr R14, reg_14_undef_val
b reg_14_undef_end
reg_14_undef_val: .word 368643509
reg_14_undef_end: nop
# Switching to mode abort
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0x17
MSR cpsr, r0
reg_13_abort: ldr R13, reg_13_abort_val
b reg_14_abort
reg_13_abort_val: .word 0x4ffff0
reg_14_abort: ldr R14, reg_14_abort_val
b reg_14_abort_end
reg_14_abort_val: .word 2568991196
reg_14_abort_end: nop
# Switching to mode svc
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0x13
MSR cpsr, r0
reg_13_svc: ldr R13, reg_13_svc_val
b reg_14_svc
reg_13_svc_val: .word 0x5ffff0
reg_14_svc: ldr R14, reg_14_svc_val
b reg_14_svc_end
reg_14_svc_val: .word 2782486957
reg_14_svc_end: nop

# INITIALIZING STACK
# Switching to mode sys
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0x1f
MSR cpsr, r0
ldr R1, stack_0_val
b stack_0
stack_0_val: .word 2380843468
stack_0: str R1, [sp, #0]
ldr R1, stack_1_val
b stack_1
stack_1_val: .word 933830555
stack_1: str R1, [sp, #-4]
ldr R1, stack_2_val
b stack_2
stack_2_val: .word 2635529892
stack_2: str R1, [sp, #-8]
ldr R1, stack_3_val
b stack_3
stack_3_val: .word 2182149234
stack_3: str R1, [sp, #-12]
ldr R1, stack_4_val
b stack_4
stack_4_val: .word 3404598799
stack_4: str R1, [sp, #-16]
ldr R1, stack_5_val
b stack_5
stack_5_val: .word 1660345492
stack_5: str R1, [sp, #-20]
ldr R1, stack_6_val
b stack_6
stack_6_val: .word 923046167
stack_6: str R1, [sp, #-24]
ldr R1, stack_7_val
b stack_7
stack_7_val: .word 277298446
stack_7: str R1, [sp, #-28]
ldr R1, stack_8_val
b stack_8
stack_8_val: .word 1211124261
stack_8: str R1, [sp, #-32]
ldr R1, stack_9_val
b stack_9
stack_9_val: .word 2923300763
stack_9: str R1, [sp, #-36]
ldr R1, stack_10_val
b stack_10
stack_10_val: .word 1356998174
stack_10: str R1, [sp, #-40]
ldr R1, stack_11_val
b stack_11
stack_11_val: .word 3231109435
stack_11: str R1, [sp, #-44]
ldr R1, stack_12_val
b stack_12
stack_12_val: .word 3033037692
stack_12: str R1, [sp, #-48]
ldr R1, stack_13_val
b stack_13
stack_13_val: .word 4251205598
stack_13: str R1, [sp, #-52]
ldr R1, stack_14_val
b stack_14
stack_14_val: .word 2108257945
stack_14: str R1, [sp, #-56]
ldr R1, stack_15_val
b stack_15
stack_15_val: .word 442004844
stack_15: str R1, [sp, #-60]
ldr R1, stack_16_val
b stack_16
stack_16_val: .word 487559309
stack_16: str R1, [sp, #-64]
ldr R1, stack_17_val
b stack_17
stack_17_val: .word 304888376
stack_17: str R1, [sp, #-68]
ldr R1, stack_18_val
b stack_18
stack_18_val: .word 4237978108
stack_18: str R1, [sp, #-72]
ldr R1, stack_19_val
b stack_19
stack_19_val: .word 3690704288
stack_19: str R1, [sp, #-76]
ldr R1, stack_20_val
b stack_20
stack_20_val: .word 4106428449
stack_20: str R1, [sp, #-80]


# Switching to mode usr
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0x10
MSR cpsr, r0

# MAIN PROGRAM

interrupt_767: l1: adcCSs R0, R8, #1376
l2: ldrPLh R6, [sp, #-68]
l3: rscVSs R10, R4, R5
l4: swi #8349790
l5: str R10, [sp, #-20]
l6: ldrCCB R6, [sp, #-51]
l7: strh R5, [sp, #-38]
l8: rsbVCs R1, R14, #3920
l9: strVS R11, [sp, #-40]
l10: mov R10, #78
interrupt_933: l11: ldrsh R12, [sp, -R10]
l12: rscVS R4, R0, #35651584
l13: mov R0, #16
interrupt_323: l14: strh R2, [sp, -R0]
interrupt_833: l15: stmDB R13!, {R13}
l16: mov R7, #42
l17: ldrVCsh R5, [sp, -R7]
l18: tst R3, R9, LSL #11
l19: teqMI R1, R12, LSR R6
l20: b l29
l21: teq R10, R1
interrupt_918: l22: adcVSs R10, R0, R5, RRX 
l23: bic R11, R0, R5
l24: clz R3, R2
l25: cmn R8, R9, ROR #22
l26: rscCSs R1, R10, R10, LSR #11
l27: cmp R4, R1, LSL #0
l28: subLT R3, R10, #43776
l29: movVSs R3, R7, RRX 
interrupt_681: l30: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l31: andGTs R0, R3, R4, ROR R11
l32: sbcMI R3, R9, #2496
l33: bVC l40
l34: add R1, R0, #124
l35: mvnPL R5, R4, LSL #14
interrupt_795: l36: tst R6, R15
l37: tstVS R2, R1, LSR R0
l38: addGE R8, R5, R7
l39: b l41
l40: b l35
l41: strLEB R5, [sp, #+15]
l42: sbcVS R14, R4, #61952
l43: ldr R11, l45
l44: b l46
l45: .word 1048480
l46: swp R10, R7, [R11]
l47: subLT R4, R9, R12
l48: swi #10839453
l49: mvnCCs R9, #29184
l50: .word 0b11111111000101000001110101011110
l51: ldr R8, l53
l52: b l54
interrupt_516: l53: .word 1048480
l54: swpb R1, R14, [R8]
interrupt_545: l55: clzPL R0, R5
l56: b l60
l57: add R1, R0, #197
l58: clzMI R2, R3
l59: b l61
l60: b l58
l61: b l63
interrupt_557: l62: mvnCC R8, R14
l63: orrs R4, R7, R11
l64: tstNE R2, R5
l65: movCS R9, R0
l66: ldrPLB R12, [sp, #+18]
l67: ldrsb R0, [sp, #+4]
l68: bicVSs R4, R11, R14
l69: cmnVC R14, R2, RRX 
l70: ldrLT R8, [sp, #-4]
l71: mvnLEs R4, R11
l72: ldrB R11, [sp, #-14]
l73: teqLT R11, #10240
l74: mov R6, #41
l75: ldrLEsb R3, [sp, +R6]
l76: nop
l77: adcLE R2, R9, #503316480
interrupt_231: l78: ldr R6, l80
l79: b l81
l80: .word 1048552
l81: swpb R12, R2, [R6]
l82: ldmDB R13!, {R1, R3, R14}
l83: orrs R8, R0, R0, ROR R10
l84: teqMI R4, R10, RRX 
l85: subLS R2, R3, R6
interrupt_360: l86: mvnLS R9, R4
l87: b l95
l88: add R1, R0, #107
l89: rscVCs R14, R12, #301989888
interrupt_259: l90: sbcGE R8, R1, R6, RRX 
l91: bicLTs R1, R10, #192
l92: sbc R5, R0, #243269632
l93: tstGT R3, R6
l94: b l96
l95: b l89
l96: .word 0b01110111010011010110111101010101
l97: strB R1, [sp, #+40]
l98: mov R11, #8
l99: ldrsh R1, [sp, +R11]
l100: swi #7002090
l101: movs R14, #-1409286143
interrupt_276: l102: orr R14, R1, #3040
l103: .word 0b11111000101000011100011001010101
l104: teqLE R12, #60
interrupt_92: l105: str R4, [sp], #+32
interrupt_143: l106: cmnVC R0, R0, ROR R0
l107: ldrGTsh R12, [sp, #-32]
l108: sub R10, R5, R9, LSL R7
interrupt_819: l109: mvn R7, #805306383
l110: ldr R14, l112
interrupt_74: l111: b l113
l112: .word 1048548
l113: swpb R0, R11, [R14]
l114: subPLs R5, R7, R2
interrupt_530: l115: swi #12373445
l116: swi #6774495
interrupt_505: l117: mov R12, #16
l118: ldr R0, [sp, -R12]!
l119: mvnLS R14, R3, RRX 
l120: adcLT R3, R5, R2
l121: mov R7, R14, LSR #20
l122: .word 0b11111001110001101111111011010101
l123: swi #3056957
l124: tstNE R2, R5, RRX 
l125: mvns R3, R15, ROR #15
l126: ldr R0, l128
interrupt_571: l127: b l129
l128: .word 1048536
l129: swp R12, R11, [R0]
l130: ldr R0, [sp, #-12]!
interrupt_15: l131: bicLEs R2, R6, R1, ASR #30
l132: strEQB R11, [sp, #+28]
l133: swi #15236823
l134: clzEQ R10, R1
l135: ldr R2, l137
l136: b l138
l137: .word 1048544
l138: swpMIb R9, R3, [R2]
l139: subs R2, R15, R6, ASR #13
l140: addGTs R7, R0, R0, ROR R5
interrupt_559: l141: mov R0, #36
l142: ldr R1, [sp], +R0
l143: mov R12, #28
l144: ldrVCB R2, [sp, -R12]
l145: .word 0b11111111111111101100110001111111
l146: ldmHIDA R13, {R2, R5, R6, R8, R11}
interrupt_225: l147: .word 0b11110011010001111001100111110000
l148: str R7, [sp, #-28]
interrupt_223: l149: sbcs R11, R8, R7, ROR #13
l150: rscLT R7, R9, #246415360
l151: add R2, R10, #20480
l152: sbcVS R12, R7, #1073741824
l153: bVC l158
l154: add R1, R0, #188
interrupt_267: l155: cmnMI R14, R11, ROR #31
interrupt_615: l156: clzMI R6, R7
l157: b l159
l158: b l155
interrupt_947: l159: eor R14, R9, #-1862270976
l160: ldrB R3, [sp, #+1]
l161: andMIs R1, R14, #4416
l162: addCC R9, R11, R10, LSL R11
l163: ldrh R8, [sp, #-14]
l164: mov R1, #4
l165: str R3, [sp], +R1
l166: clzGT R1, R7
l167: ldr R9, l169
l168: b l170
l169: .word 1048504
l170: swp R5, R14, [R9]
l171: mov R4, #14
l172: strVSh R5, [sp, +R4]
interrupt_232: l173: cmp R0, #142
interrupt_788: l174: clz R11, R12
l175: b l182
l176: add R1, R0, #30
l177: clz R1, R7
l178: clzGT R12, R0
l179: eors R10, R4, #7424
l180: tstLT R7, R6
l181: b l183
l182: b l177
interrupt_852: l183: strB R2, [sp, #-31]
l184: .word 0b10010110101100001101010110010011
l185: .word 0b11111000010010110000100101101101
l186: subs R3, R0, R3, ROR R11
l187: orr R11, R12, R4
interrupt_185: l188: mov R0, #38
l189: ldrLSsh R0, [sp, -R0]
l190: rscVSs R2, R10, R9, ROR R5
l191: bGT l196
interrupt_869: l192: subMIs R12, R0, R12, ASR R10
l193: subs R4, R11, R6
l194: subLE R2, R4, R5
interrupt_288: l195: rsc R1, R0, R5, LSL R11
l196: adcCS R7, R6, #46080
l197: eorEQ R12, R6, R4, LSL #15
interrupt_718: l198: ands R5, R4, #10813440
l199: swi #11350396
l200: .word 0b11111000000001100001001101001110
l201: strVCh R11, [sp, #+2]
l202: clz R3, R9
l203: tstLT R0, R1
l204: rsb R10, R3, R14
interrupt_102: l205: ldrVSsb R0, [sp, #-25]
interrupt_888: l206: ldmIA R13, {R1, R2, R6, R9}
l207: mov R10, #12
l208: str R9, [sp], -R10
l209: stmDA R13!, {R13}
l210: rscs R0, R10, R8, ASR R1
l211: orr R0, R0, R6
l212: mov R3, #10
interrupt_227: l213: strGEh R2, [sp, -R3]
l214: ldr R14, l216
l215: b l217
l216: .word 1048548
l217: swp R7, R8, [R14]
l218: mov R4, #18
l219: strGTB R1, [sp, -R4]
l220: .word 0b11110001101001010000001101001000
l221: mov R7, #28
l222: ldrsb R5, [sp, +R7]
l223: mvnGEs R0, #30720
l224: andHIs R6, R8, R8
l225: .word 0b00110011010000111001101000001110
l226: swi #15001758
l227: andHI R12, R14, R5
l228: stmIB R13!, {R1, R2, R3, R6, R11, R15}
l229: .word 0b01010110011110001111010111111110
l230: .word 0b00110011010000110001011100011101
interrupt_24: l231: rsb R8, R8, R8, LSR #24
l232: eor R14, R7, R11
l233: clzCC R10, R11
interrupt_657: l234: cmpGT R9, R7, ROR #25
l235: rscVS R12, R7, R5, LSR #23
l236: ldrh R10, [sp, #+10]
l237: mvnCCs R9, R14, ASR R3
l238: clzGT R10, R7
l239: orrHIs R5, R2, R6
l240: ldr R7, l242
l241: b l243
l242: .word 1048504
l243: swpMI R0, R4, [R7]
interrupt_949: l244: orrs R0, R8, #1224736768
l245: nop
interrupt_780: l246: stmIA R13!, {R9}
l247: rscLTs R2, R12, R6, ROR R2
l248: orrLS R6, R15, R1
interrupt_273: l249: clz R12, R8
l250: add R0, R0, R6, ROR #29
l251: swi #15748235
l252: clz R14, R14
l253: subLSs R7, R6, R12, RRX 
l254: ldrB R12, [sp, #-62]
l255: orr R1, R0, R8, RRX 
l256: ldr R12, l258
l257: b l259
interrupt_203: l258: .word 1048488
interrupt_260: l259: swpMIb R4, R9, [R12]
l260: strB R11, [sp, #-48]
l261: mov R9, #45
l262: ldrB R6, [sp, -R9]
l263: addHI R1, R7, R8
l264: subVCs R12, R10, R9, RRX 
l265: b l271
l266: add R1, R0, #3
l267: adc R10, R3, R3, ASR #18
l268: adcCCs R1, R10, #1879048195
l269: eorMIs R7, R2, R10, ASR #5
interrupt_157: l270: b l272
l271: b l267
interrupt_744: l272: mov R9, #58
interrupt_920: l273: ldrPLsh R6, [sp, -R9]
l274: sub R12, R4, R8, ASR R10
l275: adcGE R3, R5, #38144
l276: clzLE R10, R6
interrupt_520: l277: stmDA R13!, {R0, R6, R7, R9, R11, R12, R15}
l278: cmnLE R12, R10
l279: rsc R12, R10, R5
l280: stmLTIB R13, {R2, R4, R5, R7, R8, R9, R10}
interrupt_21: l281: tst R11, R6
l282: mvnPL R3, #65536000
l283: mvn R12, R0
l284: ldr R4, [sp], #-4
l285: andCC R10, R3, R9, LSL #16
l286: ldmIA R13!, {R0, R7, R8, R9, R12, R14}
l287: stmDA R13!, {R0, R4, R5, R12}
l288: mov R4, #16
l289: strh R6, [sp, -R4]
l290: cmpEQ R9, R2, LSR #1
l291: strh R5, [sp, #+20]
l292: swi #6241782
interrupt_155: l293: sbcLTs R10, R11, R2
interrupt_320: l294: .word 0b10000111001000000100111011110011
l295: stmDA R13!, {R9, R10}
l296: ldrsb R6, [sp, #-18]
l297: ldr R2, l299
l298: b l300
l299: .word 1048548
l300: swpNE R14, R0, [R2]
l301: ldmIA R13!, {R1, R5, R6, R7, R8, R11, R14}
l302: ldrNE R11, [sp, #-16]
interrupt_879: l303: cmnLT R10, R4
l304: b l311
l305: sbcs R4, R8, R14, LSL R4
l306: cmnLT R9, R6, LSR R14
l307: rsbCC R11, R8, R14
l308: movs R1, R1, RRX 
l309: andLS R1, R14, R2, LSL R10
l310: clz R2, R8
l311: eorLEs R0, R6, R9, LSR R14
l312: tstCS R12, R14, LSR #30
l313: mov R7, #42
l314: ldrLEsb R11, [sp, -R7]
l315: ldrGTsh R4, [sp, #-42]
interrupt_112: l316: bicLS R11, R2, R1, RRX 
l317: swi #3586302
l318: rscs R11, R2, R0, LSL R6
l319: bGT l325
interrupt_377: l320: mov R8, R2, ROR #18
l321: rscCS R8, R9, R12, LSR R11
l322: adcLS R0, R9, R11, LSR R6
l323: rscHI R6, R7, R9
l324: eorLS R5, R8, #-805306358
l325: sbcCSs R0, R2, R10, LSR #21
l326: cmp R1, R4, ASR #27
interrupt_492: l327: bCS l330
l328: orrLE R14, R14, R4, LSL R4
l329: adcs R8, R14, R9, LSR R0
l330: and R5, R5, R4, LSL R10
l331: orrCS R10, R2, #142606336
l332: addCSs R12, R6, R14, ASR R12
l333: ldrPLsh R7, [sp, #-12]
interrupt_67: l334: cmnEQ R6, R14
interrupt_124: l335: rsbs R10, R10, #56
l336: bic R7, R12, R15, RRX 
l337: mov R9, #9
interrupt_418: l338: ldrCSB R1, [sp, +R9]
l339: .word 0b11111001011001000101111100101011
l340: str R9, [sp], #-40
interrupt_148: l341: subLTs R12, R15, R14, ASR #13
l342: ldrh R5, [sp, #-2]
l343: strMIh R14, [sp, #+22]
l344: sbcLSs R1, R15, R6
l345: .word 0b11110000011010110110110001001101
l346: swi #8738831
l347: ldr R2, l349
l348: b l350
l349: .word 1048512
interrupt_152: l350: swpHI R8, R5, [R2]
l351: and R3, R1, #260096
l352: rsbLEs R1, R0, R7, ASR #19
interrupt_964: l353: mov R11, #10
interrupt_581: l354: ldrsh R4, [sp, +R11]
l355: stmDB R13, {R1, R8, R12}
l356: ldr R6, l358
l357: b l359
l358: .word 1048484
l359: swpHI R8, R10, [R6]
l360: ldr R5, l362
l361: b l363
l362: .word 1048500
l363: swpLS R10, R11, [R5]
l364: andNEs R6, R14, #156237824
l365: eor R10, R14, R5, LSR #26
interrupt_161: l366: strVC R12, [sp, #+44]
interrupt_453: l367: b l374
l368: add R1, R0, #198
l369: bicCCs R5, R7, R6
l370: subVS R8, R8, R2, ROR R9
l371: clzEQ R9, R7
l372: ands R1, R14, R12, LSL R4
l373: b l375
interrupt_436: l374: b l369
l375: cmnNE R11, #233472
interrupt_84: l376: rsb R0, R12, R0
l377: addEQ R9, R8, R8, LSR R0
l378: .word 0b11111000000000111000011100010111
l379: orrCSs R11, R0, #59136
interrupt_158: l380: ldrLEsb R9, [sp, #+14]
l381: sub R8, R10, #15204352
l382: ldr R4, l384
interrupt_14: l383: b l385
interrupt_470: l384: .word 1048512
l385: swpb R12, R9, [R4]
l386: rsb R6, R8, R5, LSL R3
l387: .word 0b11111111101111110101011001111101
l388: stmDA R13!, {R2, R15}
l389: mov R6, #44
l390: strB R3, [sp, +R6]
l391: teq R0, #11264
l392: orrs R10, R5, R7, LSR R2
interrupt_265: l393: swi #11094462
l394: adc R12, R8, R10
l395: ldr R6, l397
l396: b l398
l397: .word 1048548
l398: swpNE R0, R9, [R6]
interrupt_582: l399: movLS R4, R8, LSR #27
l400: subs R9, R12, #11264
interrupt_500: l401: ldr R5, l403
interrupt_685: l402: b l404
l403: .word 1048520
l404: swp R7, R3, [R5]
l405: mov R11, #12
interrupt_601: l406: ldr R7, [sp], -R11
interrupt_12: l407: .word 0b01110110110100001010001110011100
l408: andLS R10, R11, #168
interrupt_742: l409: tstLE R6, R15, ROR #11
l410: bVC l414
l411: add R1, R0, #200
interrupt_810: l412: eors R0, R8, #524
interrupt_343: l413: b l415
l414: b l412
l415: orrPL R0, R14, R0
l416: swi #6204703
l417: .word 0b11110111011111001010001010111000
l418: swi #5187654
interrupt_460: l419: .word 0b01110011010010111110011000010101
l420: ldr R12, l422
l421: b l423
l422: .word 1048500
interrupt_859: l423: swp R2, R8, [R12]
l424: movs R8, R12, RRX 
l425: ldr R0, l427
l426: b l428
l427: .word 1048516
l428: swp R10, R2, [R0]
interrupt_367: l429: clzHI R14, R1
interrupt_293: l430: bics R11, R9, R6
l431: ldrLTh R3, [sp, #+70]
l432: cmn R3, R6, ASR R6
l433: rscCC R11, R6, R4, LSL R3
l434: mov R2, #64
l435: str R3, [sp, +R2]!
l436: mov R10, #60
interrupt_445: l437: ldr R5, [sp], -R10
interrupt_602: l438: ldmIB R13!, {R1, R2, R3, R4, R5, R6, R8, R10, R11, R14}
l439: movLTs R2, #3200
l440: teqLT R0, #73728
interrupt_419: l441: clzVC R12, R9
l442: bics R12, R7, R12, LSL #1
l443: rscGEs R2, R10, #-2147483613
l444: swi #5124012
l445: mov R11, #2
l446: ldrLTsh R7, [sp, -R11]
l447: ldrGTB R0, [sp, #-39]
l448: teqLS R15, R2, RRX 
l449: ldmIB R13!, {R6, R8}
l450: strVCh R7, [sp, #-56]
interrupt_832: l451: adc R12, R8, R4
l452: adcGT R4, R2, R6
l453: b l456
l454: addGEs R10, R11, R15
l455: bicLEs R6, R15, #1952
l456: add R4, R14, R9, ASR R7
interrupt_612: l457: mov R1, #9
l458: ldrVCB R11, [sp, -R1]
interrupt_922: l459: movLE R4, R3, ASR R14
l460: strNEB R10, [sp, #-19]
l461: adcVC R3, R9, R7, LSR R12
l462: add R6, R3, #1019215872
l463: mov R12, #27
interrupt_619: l464: strCCB R8, [sp, -R12]
interrupt_635: l465: rsbLSs R3, R6, R0
l466: tst R10, R1
l467: orrs R1, R5, #940
interrupt_428: l468: b l470
interrupt_707: l469: movEQ R14, R1
l470: eorPLs R7, R14, #156
interrupt_420: l471: orrEQs R0, R12, R10
l472: rsb R12, R3, R0, ASR R10
l473: subHIs R7, R5, #486539264
l474: tst R10, R9, ROR R0
l475: mov R14, #26
l476: ldrEQB R11, [sp, -R14]
l477: mov R0, #40
l478: ldr R0, [sp, -R0]!
interrupt_472: l479: mov R11, #30
l480: strB R11, [sp, +R11]
interrupt_600: l481: swi #824327
l482: swi #2960633
interrupt_690: l483: ands R3, R8, R6
l484: .word 0b11111111011010011110111101111011
l485: adcCSs R4, R12, R7, LSR #9
l486: mvnVC R14, R14, LSL R1
l487: ldrLTsb R9, [sp, #+22]
interrupt_891: l488: swi #9271085
l489: clz R8, R5
l490: mov R11, #51
l491: ldrGEsb R12, [sp, +R11]
l492: nop
l493: mvnVC R3, R8
l494: b l501
interrupt_945: l495: orrMI R7, R7, #436207616
interrupt_253: l496: clz R3, R5
l497: tst R8, R4, LSR #23
l498: bicCC R11, R0, R2
l499: tstGT R5, R5
l500: mov R3, R11, LSL R3
l501: clz R14, R7
l502: mov R6, #8
l503: str R8, [sp], -R6
interrupt_247: l504: mvnGEs R5, R5
l505: ldrVSsb R2, [sp, #+54]
l506: swi #15905852
l507: cmn R6, #-2147483615
l508: clz R2, R12
l509: adcHI R12, R1, R0, RRX 
l510: tst R6, #58880
interrupt_623: l511: .word 0b11111000011110000101101100011001
l512: mov R14, #28
l513: str R2, [sp], +R14
l514: cmp R7, #247463936
l515: bGE l522
l516: add R1, R0, #226
l517: rscLS R2, R4, R2, LSL R12
l518: rsb R7, R4, R0, RRX 
l519: eors R14, R0, #1104
l520: rscMI R7, R7, R14, LSR R14
l521: b l523
interrupt_426: l522: b l517
l523: ldrLEsb R8, [sp, #-16]
l524: bGT l530
l525: add R1, R0, #183
interrupt_526: l526: clzVC R3, R10
interrupt_903: l527: orrGTs R0, R7, R10, ASR R12
l528: cmn R15, R5
l529: b l531
l530: b l526
l531: subLEs R8, R10, R5, ASR #26
l532: ldrsh R0, [sp, #-26]
l533: .word 0b11111111101110100000101000110011
l534: ldmLTIB R13, {R0, R3, R4, R11, R12}
interrupt_562: l535: mov R1, #19
l536: ldrLTB R4, [sp, +R1]
l537: rscs R5, R3, R8
l538: subs R0, R10, R5, ASR #26
l539: subPL R9, R5, R14, LSL #22
l540: rsbLE R3, R7, R10
l541: mov R12, #18
l542: strLSB R3, [sp, -R12]
l543: add R2, R12, R6, RRX 
l544: andVSs R3, R0, #13568
l545: clzCS R11, R8
l546: bHI l549
l547: subGEs R0, R5, R4, RRX 
l548: rsbPLs R12, R4, R9, ASR #8
l549: rsbVCs R14, R1, R1, RRX 
l550: sbcMI R5, R11, #6144
interrupt_686: l551: addMI R5, R2, R0, RRX 
l552: bNE l559
l553: add R1, R0, #90
l554: eors R2, R2, #44032
l555: cmpNE R15, R4, RRX 
l556: tst R8, R7, ROR #24
l557: clzVS R12, R7
l558: b l560
l559: b l554
l560: rscPLs R11, R7, R3
interrupt_275: l561: eor R3, R5, #-1073741770
l562: .word 0b00110011000000111100110101000101
l563: .word 0b11111001100101001100010010011010
interrupt_760: l564: mov R11, #8
interrupt_457: l565: ldrLEsb R11, [sp, +R11]
l566: cmp R3, #10682368
l567: cmpNE R4, R11, LSR #12
l568: mov R6, #8
l569: ldrMIh R14, [sp, -R6]
l570: bPL l574
l571: subLT R0, R3, R6, RRX 
l572: teqNE R5, R4, ROR R4
l573: mvnGE R9, R9, LSR R5
l574: eorGTs R1, R4, R9
l575: cmn R1, #3808
l576: andCCs R14, R4, R7
l577: andCC R0, R2, R0, ASR R5
l578: clz R9, R3
l579: mov R6, #0
l580: str R0, [sp, +R6]
interrupt_525: l581: clzGT R6, R3
l582: adcGTs R1, R3, R8
l583: eor R9, R11, R5
l584: subHI R6, R6, R14
l585: mvnGT R12, #4160
interrupt_628: l586: adcMI R7, R6, R4, ROR #24
l587: swi #10612641
l588: mov R2, #1
l589: ldrB R6, [sp, +R2]
l590: teq R14, R1
interrupt_996: l591: adc R4, R11, #58
l592: mov R4, #10
l593: ldrsb R10, [sp, -R4]
l594: subLSs R10, R15, R14, ROR #7
l595: .word 0b11110101110111011000011110100110
l596: mvnGE R14, R14
l597: ldrh R6, [sp, #+12]
l598: ldrGEsh R14, [sp, #-26]
interrupt_893: l599: subs R11, R2, R15
l600: orrPL R11, R9, #759169024
interrupt_106: l601: ldr R12, l603
l602: b l604
l603: .word 1048500
l604: swpLEb R8, R6, [R12]
l605: clzCS R1, R5
l606: strB R1, [sp, #-18]
l607: stmEQDB R13, {R0, R2, R4, R10, R12}
l608: .word 0b11111001001000000001001001001001
l609: movLE R0, R5
l610: tstEQ R5, R8, ASR R4
l611: mov R10, #12
l612: ldrh R0, [sp, +R10]
l613: cmp R6, #8640
l614: str R5, [sp, #+12]!
l615: adcCCs R0, R1, R6, LSR R7
l616: and R4, R12, R7, ROR #10
l617: mov R14, #3
l618: ldrsb R1, [sp, +R14]
l619: ldrVSsb R8, [sp, #+20]
interrupt_349: l620: ldmIB R13!, {R2, R7, R9, R11}
l621: and R6, R4, R4
l622: bicGE R1, R9, R5, ROR #5
l623: clz R8, R2
l624: clzCC R6, R14
l625: strh R7, [sp, #-36]
interrupt_503: l626: eor R9, R8, R3, ASR R5
l627: mvns R1, R5, ASR R14
interrupt_925: l628: b l629
l629: cmp R7, R10
l630: ldrGTh R3, [sp, #-18]
l631: mov R14, #6
l632: ldrsb R0, [sp, +R14]
l633: swi #13073887
l634: swi #11175258
l635: mov R12, #39
l636: ldrsb R14, [sp, -R12]
l637: .word 0b11110000101011000001000011010111
l638: mvnCCs R2, #479232
l639: rsbCSs R2, R11, R14
l640: and R1, R7, R5
interrupt_222: l641: swi #9461257
l642: rscMI R5, R0, R5
l643: strEQB R8, [sp, #-13]
l644: rscVSs R10, R12, R7
l645: adcEQ R0, R6, #152043520
l646: ldrNEsh R5, [sp, #-36]
l647: mvnVC R5, R15, LSR #26
l648: ldr R2, l650
l649: b l651
l650: .word 1048508
l651: swpHIb R1, R5, [R2]
l652: .word 0b11111111101100001110110111111011
interrupt_224: l653: bCC l661
interrupt_840: l654: orrs R0, R4, R9, RRX 
l655: andVC R10, R15, R14
interrupt_125: l656: tst R15, R7
interrupt_585: l657: eor R2, R5, R15
l658: subHIs R10, R1, R3, LSR #19
l659: adcs R14, R4, #3584
l660: orrNE R9, R15, R2, RRX 
l661: bicGTs R11, R8, R14, RRX 
l662: ldr R11, l664
l663: b l665
interrupt_350: l664: .word 1048492
l665: swpHI R6, R3, [R11]
interrupt_121: l666: swi #3541598
l667: cmpVS R10, R4, ROR #17
l668: adcs R9, R10, R8, LSR R5
l669: eorGTs R12, R14, R3, ROR R0
l670: adcGTs R12, R9, R9
l671: ands R12, R8, R11, LSL R6
l672: bicEQ R5, R1, R9, RRX 
interrupt_370: l673: stmDA R13!, {R13, R14, R15}
l674: mov R5, #52
interrupt_549: l675: ldrPLsb R3, [sp, -R5]
l676: bLE l678
l677: clzGT R10, R6
l678: movCC R8, R5
l679: subCSs R1, R0, R8, LSR #15
l680: addPL R12, R14, R8, ASR #17
l681: clzVS R0, R12
interrupt_773: l682: mov R9, #20
l683: ldrPLsh R0, [sp, +R9]
l684: eors R1, R11, R3, LSR R0
l685: mov R8, #21
l686: ldrsb R5, [sp, +R8]
l687: clzLE R1, R2
l688: mov R6, #0
l689: str R1, [sp, +R6]!
l690: tstEQ R2, #462848
interrupt_396: l691: clzGT R0, R12
l692: stmIA R13!, {R1, R6, R8, R10, R15}
interrupt_423: l693: adds R8, R10, R3
l694: mvnHI R12, #856064
l695: mov R4, #53
l696: ldrNEsb R8, [sp, -R4]
l697: mov R11, #56
interrupt_319: l698: ldr R7, [sp, -R11]!
interrupt_515: l699: subVSs R12, R15, R6, RRX 
interrupt_837: l700: subPL R7, R2, #-134217728
l701: sbc R9, R11, #13434880
interrupt_486: l702: b l708
interrupt_826: l703: eorEQ R0, R11, R10, LSL #22
l704: bic R12, R4, R2, ROR R11
l705: mvnLSs R4, R9, ASR R10
l706: cmn R5, R3, ROR R11
interrupt_697: l707: add R7, R2, R12
l708: movEQ R7, R11, LSR R8
l709: and R12, R10, R14, LSR R8
l710: addLT R1, R3, R11, ROR #29
interrupt_567: l711: strNEh R1, [sp, #+14]
interrupt_916: l712: subEQs R3, R5, R6, LSL R12
l713: adcVCs R2, R9, R8, ASR #27
interrupt_531: l714: sbcMI R3, R12, R9, ASR #31
l715: swi #9728360
l716: orr R11, R8, R6
l717: rsbs R2, R10, R14, LSR #7
l718: addVSs R7, R6, R6
l719: subs R14, R5, R4, LSL #21
interrupt_108: l720: stmIB R13!, {R3, R4, R5, R6, R7}
l721: ldrGTsh R6, [sp, #-26]
l722: sbcLSs R14, R0, R15, RRX 
l723: swi #1920035
interrupt_315: l724: orrs R11, R14, R15
l725: swi #12448173
interrupt_105: l726: strGEB R3, [sp, #-28]
l727: ldrCCh R4, [sp, #+6]
l728: ldr R0, l730
interrupt_123: l729: b l731
l730: .word 1048508
interrupt_650: l731: swp R12, R5, [R0]
l732: and R9, R7, #528482304
l733: ldrCCsh R10, [sp, #+36]
l734: cmpMI R15, #384
l735: teqVC R15, R3
l736: tstMI R8, R8, ASR #7
interrupt_648: l737: rsc R2, R14, R1, ASR R9
interrupt_865: l738: addEQ R6, R2, R14, LSR R5
interrupt_266: l739: cmnVS R14, R8
l740: add R10, R2, R0, ROR #10
l741: stmDB R13!, {R13, R15}
interrupt_943: l742: sub R7, R2, R12, ASR #21
l743: rsbHIs R8, R4, R1, ASR #16
l744: adcHI R9, R2, R6, ASR #20
l745: ldmIB R13!, {R2, R5, R6, R7, R8, R9, R11, R12, R14}
l746: ldr R12, l748
l747: b l749
l748: .word 1048480
l749: swpLTb R14, R10, [R12]
l750: b l758
interrupt_363: l751: add R1, R0, #248
interrupt_137: l752: bics R3, R6, R9, ASR R5
l753: clzVC R5, R5
l754: clzVC R12, R5
l755: eorLS R6, R1, R1, LSR R0
l756: rscGTs R6, R10, R6
l757: b l759
interrupt_75: l758: b l752
l759: ldr R3, l761
l760: b l762
interrupt_407: l761: .word 1048508
l762: swpb R4, R11, [R3]
l763: rsbs R14, R6, R6, LSR R5
l764: cmp R12, R2, ASR R14
interrupt_527: l765: subLS R3, R12, R10, ROR #12
l766: swi #4689514
l767: ldrGTsb R2, [sp, #-19]
l768: swi #9140721
l769: sbcLSs R11, R2, #24903680
interrupt_610: l770: cmn R14, R6, ROR #22
l771: andMI R3, R10, #1124073472
interrupt_331: l772: strEQB R12, [sp, #-3]
l773: movPL R11, R14, LSR R7
l774: cmn R6, #39936
interrupt_400: l775: subLTs R7, R4, R8, ROR R1
l776: .word 0b11110110010011111101110111111111
l777: strLTh R1, [sp, #-10]
l778: movGE R6, #87
l779: swi #16689953
l780: sbc R4, R14, R14, ASR R5
l781: b l789
l782: add R1, R0, #234
l783: cmnLS R8, R6, RRX 
l784: eorVSs R12, R5, #111149056
l785: clzVC R9, R0
l786: clzNE R0, R12
l787: cmpLT R3, R14, ROR R10
l788: b l790
l789: b l783
l790: tstHI R2, R4, ROR R11
l791: strGTB R0, [sp, #-16]
l792: mov R12, #2
interrupt_194: l793: strMIh R8, [sp, -R12]
l794: ldrHIsh R0, [sp, #-32]
l795: ldrMIB R8, [sp, #-16]
interrupt_860: l796: swi #1324719
l797: ldrLTh R4, [sp, #-24]
interrupt_468: l798: addGTs R1, R11, #-2147483625
interrupt_261: l799: strVCB R1, [sp, #-61]
l800: tst R10, R12, LSL R1
l801: eor R1, R15, #293601280
interrupt_842: l802: rsbLE R14, R14, R3, LSL R6
l803: ldr R4, l805
l804: b l806
l805: .word 1048480
l806: swpVC R6, R9, [R4]
l807: tstHI R1, #10112
l808: rscMI R1, R6, R5, RRX 
l809: addLT R9, R15, R9, LSL #11
l810: ldrPLh R9, [sp, #+6]
l811: swi #13638361
l812: cmpHI R8, #35840
interrupt_880: l813: .word 0b00110111111110101000001011110100
interrupt_912: l814: ldmDB R13!, {R1, R2, R4, R5, R8, R9, R12, R14}
l815: orrCS R14, R14, R0, LSL #21
l816: ldrEQsh R7, [sp, #-4]
l817: adc R0, R10, #344064
l818: tst R14, R14, LSR #0
l819: adcGTs R0, R14, #1073741827
l820: addGT R6, R9, #511705088
l821: clz R6, R11
l822: adcs R2, R6, #-2147483597
l823: mov R5, #8
interrupt_618: l824: ldrh R4, [sp, -R5]
l825: strB R9, [sp, #+16]
interrupt_871: l826: teq R9, #268435465
l827: teq R8, R5
interrupt_488: l828: clzLE R8, R4
l829: ldr R6, l831
l830: b l832
l831: .word 1048512
l832: swpLT R5, R2, [R6]
interrupt_915: l833: orrMI R6, R3, R14, LSL R14
l834: clzEQ R3, R8
l835: swi #1451726
l836: ldr R4, l838
l837: b l839
l838: .word 1048544
l839: swpb R9, R3, [R4]
l840: adcLT R14, R9, #-469762046
l841: subHI R3, R9, R2, LSR #25
interrupt_726: l842: clz R8, R4
interrupt_250: l843: b l849
interrupt_178: l844: add R1, R0, #16
l845: rsbs R6, R5, #57147392
interrupt_671: l846: rsc R12, R1, R9, ASR #19
interrupt_589: l847: cmpNE R3, R12, RRX 
l848: b l850
interrupt_518: l849: b l845
l850: mov R0, #43
l851: ldrLEB R6, [sp, +R0]
l852: stmIB R13!, {R0, R1, R3, R4, R6, R10, R11, R12, R14, R15}
l853: sbcEQ R12, R0, R7
interrupt_212: l854: clz R2, R3
l855: mov R10, #17
l856: ldrGEB R11, [sp, -R10]
l857: ldr R3, [sp], #-20
l858: .word 0b11111000010100100110111000100011
l859: strLTh R2, [sp, #-8]
l860: mov R11, #23
l861: ldrB R0, [sp, -R11]
l862: swi #12865717
l863: ldr R6, [sp], #-28
l864: .word 0b11111000101110010010010100101010
l865: swi #1642966
l866: ldrVSh R14, [sp, #+20]
l867: rsb R12, R4, R14, RRX 
l868: mov R6, #22
interrupt_1: l869: strLEB R0, [sp, -R6]
l870: mvnLSs R12, R3
interrupt_804: l871: swi #16616687
l872: mov R9, #2
l873: ldrCCh R11, [sp, +R9]
l874: bVS l883
l875: cmp R2, #-1342177280
interrupt_895: l876: tst R8, #71303168
l877: sbcs R12, R2, R10
l878: movCSs R1, R11
interrupt_179: l879: subGEs R4, R0, #1073741824
l880: addPL R4, R7, #57147392
l881: cmpGE R2, R5
l882: eor R11, R9, R7, ASR R8
l883: bics R9, R2, R6, RRX 
l884: teq R15, R14
l885: sbcMIs R12, R10, R4, LSR R5
interrupt_3: l886: mov R12, #16
l887: ldrB R4, [sp, +R12]
l888: rscEQ R11, R4, R1, LSR #31
l889: mov R12, #50
l890: ldrCSB R5, [sp, +R12]
interrupt_739: l891: ldr R2, l893
interrupt_645: l892: b l894
l893: .word 1048532
l894: swp R7, R3, [R2]
l895: stmIA R13, {R8, R9, R10, R11}
l896: ldrB R0, [sp, #+35]
interrupt_101: l897: ldmIA R13!, {R2, R5, R6, R8, R9}
l898: cmnMI R4, R3, RRX 
l899: mvnVCs R9, R4
l900: adcEQs R0, R9, #104448
l901: strh R1, [sp, #-20]
l902: stmIA R13!, {R6, R15}
l903: swi #12380323
l904: stmDA R13!, {R3, R5, R6, R7, R9, R10, R11, R14, R15}
l905: cmnCC R14, R0, LSR R10
l906: mvn R1, #1073741842
l907: mov R8, #16
l908: ldr R14, [sp], -R8
l909: bMI l916
l910: add R1, R0, #225
interrupt_892: l911: tst R6, R9
l912: adds R12, R3, #859832320
interrupt_828: l913: sub R14, R5, R15
l914: tstNE R12, R7, ASR #28
interrupt_776: l915: b l917
l916: b l911
l917: and R6, R2, R3, LSL R7
l918: sbcGEs R10, R5, R3, ASR #9
l919: bics R1, R2, R11
l920: .word 0b01010111110110000100100111010101
interrupt_758: l921: mvnEQs R5, #177
l922: cmpHI R5, R1, LSL R14
interrupt_576: l923: ldrLTsh R11, [sp, #+16]
interrupt_183: l924: eorLS R10, R10, #187392
l925: ldrh R10, [sp, #+32]
l926: strB R10, [sp, #+67]
l927: rscs R3, R15, R15, LSL #30
l928: ldr R11, l930
l929: b l931
l930: .word 1048532
interrupt_167: l931: swpMIb R2, R7, [R11]
l932: rsbVS R9, R0, R14
interrupt_877: l933: str R4, [sp], #+0
l934: ldr R3, l936
l935: b l937
l936: .word 1048512
l937: swpVS R4, R5, [R3]
l938: sbcs R8, R3, R9
l939: cmnMI R4, R0
l940: bVC l946
l941: add R1, R0, #209
l942: tst R11, R9, LSL R2
l943: mvns R2, R12
l944: teq R10, R9, LSL R14
l945: b l947
l946: b l942
l947: ldmIA R13!, {R7, R8}
l948: teqCS R10, R12
interrupt_873: l949: ldrLSsb R0, [sp, #+27]
l950: adds R0, R8, R11, LSR #2
interrupt_475: l951: sbcs R8, R0, R6, ROR R3
interrupt_521: l952: andHIs R4, R11, R2
l953: rsbs R11, R11, R14, ASR #11
l954: ldmMIIA R13, {R0, R1, R3, R4, R5, R7, R11, R12}
l955: ldr R8, l957
interrupt_956: l956: b l958
l957: .word 1048552
l958: swpGE R1, R6, [R8]
l959: mov R5, #0
interrupt_409: l960: strHI R6, [sp, +R5]
l961: ldr R12, l963
l962: b l964
l963: .word 1048480
interrupt_87: l964: swp R3, R2, [R12]
interrupt_422: l965: ldrVSh R14, [sp, #+60]
l966: mov R5, #36
l967: ldrsh R1, [sp, +R5]
l968: mov R12, #5
l969: ldrB R11, [sp, -R12]
l970: rsb R10, R14, R15, RRX 
interrupt_49: l971: rsbs R11, R15, R6
l972: swi #13461934
l973: bicVS R0, R4, #536870926
interrupt_181: l974: ldr R4, l976
l975: b l977
interrupt_782: l976: .word 1048540
interrupt_854: l977: swpLEb R6, R2, [R4]
l978: bGT l988
l979: sbc R9, R5, R2, LSL #28
l980: tstLT R4, #977272832
l981: orrVCs R12, R7, R5
l982: mvnCS R1, R10, LSL R11
interrupt_62: l983: subs R11, R1, R7, ROR #10
l984: teqCS R3, #67
l985: rscs R7, R1, R6, LSR #29
l986: clz R8, R11
interrupt_728: l987: movLTs R14, #322961408
l988: cmn R1, R0, RRX 
l989: orrLEs R12, R14, R9, ROR #24
l990: str R2, [sp], #+32
l991: mov R14, #16
l992: ldrLS R6, [sp, -R14]
interrupt_662: l993: adcLS R12, R0, R4, LSL R3
l994: swi #15823908
l995: mov R5, #39
l996: ldrCCB R2, [sp, -R5]
l997: mvnGE R14, #15138816
interrupt_214: l998: ldr R7, l1000
l999: b l1001
l1000: .word 1048532
l1001: swp R14, R3, [R7]
l1002: bVS l1012
l1003: movMIs R3, R9
l1004: movVSs R10, R14, ROR #30
l1005: and R5, R3, R14, LSR R1
l1006: eorCC R12, R9, R8, RRX 
interrupt_149: l1007: subs R8, R3, R2, ASR R9
l1008: rsb R0, R1, R7, LSL #30
l1009: clzHI R5, R6
l1010: rscGT R3, R14, #10223616
interrupt_448: l1011: subNE R8, R6, R8, RRX 
l1012: tst R11, R4, LSR #20
l1013: subGT R10, R11, R15, RRX 
l1014: andNEs R4, R2, #11264
l1015: subMIs R3, R9, R7, ROR R7
l1016: rsbLT R14, R8, #2097152
l1017: mov R12, #4
l1018: ldrPLB R14, [sp, -R12]
l1019: ldmLSIA R13, {R4, R7, R8, R9}
l1020: mov R14, #32
l1021: strGTh R7, [sp, +R14]
l1022: clz R11, R1
interrupt_759: l1023: mvns R9, #136
l1024: b l1028
interrupt_824: l1025: add R1, R0, #62
l1026: and R10, R5, R5, LSL R3
l1027: b l1029
l1028: b l1026
l1029: mov R7, #25
l1030: ldrsb R6, [sp, +R7]
interrupt_414: l1031: ldrLSsh R4, [sp, #-12]
l1032: bicGTs R2, R15, #204800
l1033: mvns R4, R12
l1034: mov R9, #32
l1035: str R9, [sp], -R9
l1036: ldr R3, [sp], #+4
l1037: mov R4, R9, LSL #17
l1038: sbc R0, R6, R9
l1039: rscHI R4, R0, R3, LSR R6
l1040: mov R9, #48
interrupt_539: l1041: ldr R9, [sp], +R9
l1042: rscVS R14, R5, R3
l1043: swi #522459
l1044: subs R1, R7, R4
interrupt_625: l1045: mov R3, #0
l1046: strEQB R9, [sp, +R3]
l1047: ldrh R10, [sp, #-10]
l1048: mov R10, #44
l1049: strh R10, [sp, -R10]
interrupt_388: l1050: bMI l1056
interrupt_975: l1051: movVC R3, R4, ASR R11
l1052: eorGE R5, R5, R4, ROR #13
l1053: sbcNE R4, R11, R9, ROR R11
l1054: clzHI R1, R4
l1055: orrHI R9, R14, R9, ROR R0
l1056: subs R6, R9, R1, ROR R0
l1057: swi #4671340
interrupt_93: l1058: cmn R6, R1, ASR R0
l1059: sbcHIs R5, R14, R1, LSL R0
l1060: clz R8, R1
l1061: sub R4, R8, R7, ASR R10
l1062: mov R6, #0
l1063: strPLB R14, [sp, +R6]
interrupt_73: l1064: ldr R4, l1066
l1065: b l1067
l1066: .word 1048532
l1067: swpb R12, R1, [R4]
l1068: ldmDB R13!, {R1, R2, R3, R5, R6, R7, R9, R11, R12, R14}
l1069: rscCCs R0, R15, R7
interrupt_485: l1070: bicHI R3, R10, R7
interrupt_196: l1071: mvnLEs R1, R14, LSL R5
l1072: clz R12, R2
l1073: .word 0b00000110010010010110000100111001
l1074: clzLT R5, R4
l1075: .word 0b11111000010110111010000111010001
l1076: rscs R1, R0, R4, RRX 
l1077: movs R7, R12, RRX 
l1078: movNE R2, R12, ROR #30
l1079: cmnNE R5, R3, RRX 
l1080: swi #7322716
interrupt_583: l1081: cmn R4, R7, ASR R3
interrupt_433: l1082: adcLT R1, R8, #40370176
l1083: eor R10, R12, R8, RRX 
l1084: subEQs R7, R5, #6656
interrupt_997: l1085: teq R10, #-1073741814
l1086: addMIs R6, R3, R9, LSL #26
interrupt_346: l1087: clz R6, R11
l1088: rsbNEs R4, R10, R15, LSR #7
l1089: subLTs R5, R0, R0, LSR #2
l1090: addMIs R4, R15, #150994944
l1091: strNE R0, [sp, #+44]
interrupt_34: l1092: mov R8, #52
l1093: ldrh R6, [sp, +R8]
l1094: swi #13924020
l1095: mov R2, #12
l1096: ldrVCsh R11, [sp, -R2]
l1097: bEQ l1101
l1098: add R1, R0, #1
l1099: bicGE R12, R7, R3
l1100: b l1102
l1101: b l1099
l1102: sbcCCs R5, R9, R6, LSR #10
l1103: strPLh R11, [sp, #-6]
interrupt_452: l1104: mvnNE R10, #2960
l1105: addMIs R6, R4, R12, LSL #19
l1106: strGT R1, [sp, #+8]
interrupt_139: l1107: mov R2, #16
interrupt_127: l1108: strEQB R10, [sp, -R2]
l1109: mov R0, #50
l1110: strB R3, [sp, +R0]
l1111: rsbCC R7, R8, R3, ASR R1
l1112: eorMI R14, R7, R0, ROR #7
l1113: nop
interrupt_42: l1114: ldrB R3, [sp, #+22]
l1115: clzLT R4, R8
l1116: teq R7, #1879048194
l1117: bicVCs R11, R9, #3932160
l1118: adcVS R14, R1, R15, ASR #19
l1119: bicPLs R6, R2, R2, ROR R4
l1120: ldr R2, l1122
l1121: b l1123
l1122: .word 1048544
l1123: swpMI R4, R1, [R2]
l1124: swi #9624839
l1125: bVS l1135
l1126: subCCs R4, R8, R7, LSL #27
interrupt_8: l1127: orr R4, R6, R12
l1128: cmnLS R5, R1
l1129: tstHI R1, R9, LSR R4
interrupt_630: l1130: cmn R10, #9920
l1131: andEQs R8, R1, R4
l1132: cmpCS R1, R3
l1133: teq R8, R9, ASR #16
l1134: rsc R12, R3, R9, ASR R4
l1135: bic R12, R14, R12
l1136: ldrGTh R7, [sp, #-10]
l1137: rscGEs R11, R3, R3
l1138: clz R14, R6
l1139: bMI l1147
l1140: add R1, R0, #190
l1141: eor R8, R4, #11328
l1142: rsbLTs R6, R5, R5, RRX 
l1143: ands R5, R12, R8
l1144: bicPL R1, R15, R3
l1145: cmpLE R10, #230400
l1146: b l1148
l1147: b l1141
l1148: subs R5, R0, R11
l1149: teq R12, #126877696
interrupt_928: l1150: stmLTIA R13, {R2, R3}
interrupt_940: l1151: .word 0b11110000100000110100010110000111
l1152: orrEQs R5, R14, #140509184
l1153: swi #14585450
l1154: swi #15222551
l1155: orrGT R1, R14, #235520
l1156: rscs R4, R2, R2, LSR R3
l1157: rsb R3, R2, #14464
l1158: addVSs R7, R7, #-2147483586
l1159: tstEQ R8, R3, ASR #12
l1160: mov R6, #55
l1161: strGEB R6, [sp, +R6]
interrupt_499: l1162: sub R3, R4, R10, LSL #21
interrupt_406: l1163: ldr R4, l1165
l1164: b l1166
interrupt_314: l1165: .word 1048528
l1166: swpb R12, R1, [R4]
l1167: andLTs R11, R3, R15, RRX 
l1168: clzGT R0, R8
interrupt_230: l1169: mov R6, #18
l1170: ldrCCh R4, [sp, +R6]
l1171: teqNE R2, R1, LSL R6
interrupt_191: l1172: ldrsb R8, [sp, #-20]
l1173: teqGE R12, R2, ASR #5
l1174: movs R10, R2
l1175: addNEs R4, R0, R8, ROR #2
l1176: adds R11, R8, #1024
interrupt_46: l1177: stmIB R13, {R2}
l1178: sbcGT R12, R12, R6
l1179: ldrh R0, [sp, #+22]
interrupt_544: l1180: mvnNE R12, #826277888
l1181: bVC l1184
l1182: adcGT R11, R2, R14, LSL R9
l1183: mvn R6, R1
interrupt_787: l1184: and R3, R3, R7, ROR #26
l1185: bLT l1187
l1186: subs R14, R6, R6, RRX 
interrupt_70: l1187: rscGEs R9, R3, #3342336
l1188: adcs R12, R8, R1, RRX 
interrupt_477: l1189: rscPL R10, R12, R7, ASR #25
l1190: clzEQ R5, R14
l1191: mvnLE R6, R3, LSR R6
l1192: cmpGT R4, R15, RRX 
interrupt_244: l1193: clz R14, R10
l1194: movVCs R12, #-536870899
interrupt_454: l1195: rsbs R10, R6, #808
l1196: stmDA R13!, {R0, R11, R15}
l1197: bLT l1206
l1198: add R1, R0, #24
l1199: clzLE R12, R4
l1200: cmnLE R5, #-1610612733
l1201: subs R3, R14, #764
l1202: mvnCSs R7, #288
l1203: subNE R3, R2, R4
l1204: subNEs R1, R14, R11, LSR #24
interrupt_18: l1205: b l1207
l1206: b l1199
l1207: and R14, R6, R7
interrupt_801: l1208: bVC l1217
interrupt_356: l1209: clz R12, R2
l1210: sbcVCs R11, R14, R7, RRX 
l1211: mvnMIs R6, R4
l1212: clzCS R11, R1
interrupt_660: l1213: bic R10, R7, #47710208
l1214: subHIs R6, R10, #-738197501
l1215: subVC R9, R8, R7, ASR R4
l1216: rscCCs R4, R4, R2, LSL #27
l1217: movEQs R3, R2
l1218: strGEh R10, [sp, #+40]
interrupt_206: l1219: strB R0, [sp, #+26]
l1220: swi #6789656
interrupt_980: l1221: addNEs R5, R15, R2, RRX 
interrupt_775: l1222: bLS l1230
l1223: add R1, R0, #52
interrupt_861: l1224: orrVSs R8, R1, #985661440
l1225: addHIs R3, R2, #-2147483606
l1226: cmpVC R6, R11
l1227: mvn R1, #-402653184
l1228: rsbEQ R0, R15, #22806528
interrupt_528: l1229: b l1231
l1230: b l1224
l1231: clz R3, R6
l1232: cmnEQ R14, R12
interrupt_570: l1233: stmIA R13!, {R3}
l1234: clz R2, R0
interrupt_43: l1235: mov R10, #51
l1236: ldrB R5, [sp, +R10]
l1237: teqLS R11, #-1342177277
l1238: stmIA R13!, {R13}
l1239: bEQ l1248
l1240: add R1, R0, #235
l1241: add R4, R0, #30
interrupt_264: l1242: eorLTs R2, R4, R5
l1243: eorVSs R6, R4, R15
l1244: clzVC R0, R9
l1245: orr R4, R7, #3211264
interrupt_708: l1246: andHI R5, R0, R14
l1247: b l1249
l1248: b l1241
interrupt_565: l1249: sbcVCs R11, R7, #3
l1250: .word 0b10100011010001111101001110010100
l1251: mov R9, #34
l1252: ldrsh R4, [sp, +R9]
l1253: cmp R10, R12
interrupt_195: l1254: mvnLS R0, R7, LSL R7
l1255: and R6, R1, R12, LSL #27
l1256: ldrCSsb R0, [sp, #+40]
l1257: sbc R7, R8, R0, RRX 
interrupt_144: l1258: mov R2, #13
l1259: ldrMIB R0, [sp, +R2]
l1260: mvns R2, R8, ASR #5
interrupt_812: l1261: adcGEs R9, R1, R8, RRX 
l1262: addLE R5, R11, #1031798784
l1263: mov R9, #48
l1264: ldrVSh R8, [sp, +R9]
l1265: .word 0b11111111111011000000111100000000
l1266: eorCS R0, R14, #1073741880
l1267: ldrPLh R8, [sp, #+22]
l1268: cmnLS R14, R11, RRX 
l1269: ands R11, R6, R12, RRX 
l1270: ldr R7, l1272
l1271: b l1273
l1272: .word 1048524
l1273: swpb R1, R10, [R7]
interrupt_54: l1274: mov R3, #10
l1275: ldrsb R14, [sp, +R3]
l1276: eorLT R10, R10, R6, ASR R6
l1277: clzGT R0, R12
l1278: ldrB R1, [sp, #+42]
l1279: rscPL R7, R10, R8, RRX 
l1280: str R15, [sp], #+32
l1281: .word 0b11110010011100010010100111010000
interrupt_667: l1282: .word 0b11111000100100000001000011010010
l1283: tst R7, R7, ASR R14
l1284: eor R7, R9, R15
l1285: clzPL R12, R7
l1286: .word 0b10010110111101001111110111010100
l1287: ldrB R5, [sp, #-11]
l1288: mov R4, #30
l1289: ldrVCsh R9, [sp, -R4]
l1290: .word 0b11111001101010100011000101101010
l1291: bic R10, R0, R5, ROR R6
l1292: bCC l1297
l1293: orrPLs R12, R4, R11, ROR R7
l1294: mov R1, R4, LSL #16
l1295: cmpVS R9, R8, RRX 
l1296: teq R2, #204
l1297: movCS R3, R4
interrupt_417: l1298: strB R6, [sp, #-2]
l1299: mov R1, #20
interrupt_751: l1300: ldr R2, [sp], -R1
interrupt_51: l1301: cmp R14, R14, RRX 
l1302: mvnLSs R9, R2, ROR R0
l1303: ldrB R5, [sp, #+3]
interrupt_679: l1304: subGE R5, R12, R5, ROR #30
l1305: adc R3, R8, R12, LSL R10
l1306: ldr R7, l1308
l1307: b l1309
l1308: .word 1048528
interrupt_910: l1309: swpNE R6, R5, [R7]
interrupt_901: l1310: ands R2, R4, R3
l1311: swi #8260581
l1312: mvnVSs R0, R2
interrupt_235: l1313: sbc R5, R14, #151
l1314: ldr R5, [sp, #-16]!
l1315: cmn R5, R8, ROR R6
l1316: cmpVS R8, R5, ROR #14
l1317: swi #12295639
l1318: rsbCC R10, R4, R7, LSL #22
interrupt_803: l1319: mov R6, #46
l1320: strB R11, [sp, +R6]
l1321: ldr R10, l1323
l1322: b l1324
interrupt_913: l1323: .word 1048512
interrupt_597: l1324: swpGEb R14, R2, [R10]
interrupt_817: l1325: cmnVC R11, R0, LSR #28
l1326: bLT l1332
l1327: add R1, R0, #23
l1328: eors R7, R15, R15
l1329: sbcEQ R1, R3, R0, ASR #22
l1330: cmn R11, R15
interrupt_811: l1331: b l1333
interrupt_180: l1332: b l1328
interrupt_41: l1333: rsbEQs R10, R11, R0, ASR #17
l1334: strh R14, [sp, #+14]
l1335: mov R0, #24
interrupt_274: l1336: str R12, [sp], +R0
interrupt_838: l1337: tst R5, R2, LSR #4
l1338: eor R3, R3, R0, LSR #2
l1339: .word 0b11111000010010100011010000101111
l1340: ldr R11, l1342
interrupt_154: l1341: b l1343
l1342: .word 1048548
l1343: swpMIb R1, R10, [R11]
l1344: subNE R4, R14, #1946157056
interrupt_799: l1345: ldr R4, [sp], #-24
l1346: sbc R10, R6, R5
l1347: tstVS R11, R5, ROR #15
l1348: ldr R9, l1350
l1349: b l1351
l1350: .word 1048524
l1351: swp R0, R12, [R9]
l1352: ldr R5, [sp, #+40]
l1353: subs R3, R2, R1, ASR R1
interrupt_890: l1354: subs R12, R2, R4, LSR R0
interrupt_548: l1355: .word 0b11111001100111100111111000110101
l1356: stmDA R13!, {R14}
l1357: mvnVS R10, #184
interrupt_512: l1358: nop
interrupt_514: l1359: mov R10, #44
l1360: ldr R9, [sp, +R10]
l1361: ldr R4, l1363
interrupt_741: l1362: b l1364
l1363: .word 1048508
l1364: swpb R0, R14, [R4]
interrupt_304: l1365: ldrEQB R5, [sp, #+34]
l1366: strGEB R8, [sp, #-3]
l1367: stmIB R13, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R12, R13, R15}
l1368: adc R7, R2, R15
l1369: ldrsh R12, [sp, #+38]
l1370: ldr R11, l1372
l1371: b l1373
l1372: .word 1048524
l1373: swpPLb R10, R14, [R11]
interrupt_489: l1374: nop
l1375: nop
l1376: .word 0b11110101001010011011010010101111
l1377: clzPL R1, R0
l1378: mov R0, #16
l1379: strLEh R8, [sp, +R0]
l1380: eorVCs R10, R6, R1
l1381: subs R5, R2, #39
l1382: bNE l1389
interrupt_684: l1383: add R1, R0, #118
interrupt_845: l1384: bicPLs R3, R12, R9, LSL R1
interrupt_986: l1385: subHIs R1, R11, R8, LSR R1
l1386: rscs R12, R9, R9, ASR R12
interrupt_480: l1387: teq R5, R4
l1388: b l1390
l1389: b l1384
l1390: mov R2, #32
l1391: ldrB R6, [sp, +R2]
l1392: tstVS R10, R1, RRX 
l1393: mov R10, #22
l1394: strh R12, [sp, +R10]
l1395: ldr R2, l1397
l1396: b l1398
interrupt_291: l1397: .word 1048516
interrupt_338: l1398: swpVS R8, R10, [R2]
l1399: str R9, [sp, #-4]!
l1400: ldrsb R14, [sp, #-2]
l1401: swi #12096165
interrupt_668: l1402: cmpGT R9, #-2147483647
interrupt_65: l1403: adcLS R3, R0, R4, RRX 
l1404: b l1410
l1405: add R1, R0, #194
l1406: addCSs R8, R1, R12, ROR #7
l1407: teqLE R1, R11
l1408: subVSs R3, R10, R1, LSR R3
l1409: b l1411
interrupt_126: l1410: b l1406
l1411: swi #5630411
l1412: mov R3, #32
interrupt_59: l1413: ldrsh R8, [sp, +R3]
l1414: bicGE R0, R7, #6144
interrupt_863: l1415: andCC R12, R15, R8
l1416: ldr R10, l1418
l1417: b l1419
l1418: .word 1048528
l1419: swpb R7, R6, [R10]
l1420: clzVS R3, R3
interrupt_205: l1421: rsbPL R10, R12, R10
l1422: .word 0b11111000000000001111000100101001
l1423: eorLT R5, R9, R12, LSR #26
l1424: adcGEs R11, R8, R6
l1425: swi #9647397
interrupt_560: l1426: sbcNEs R12, R7, R11, ASR #3
l1427: teqGE R2, #32768
l1428: ldr R5, l1430
l1429: b l1431
l1430: .word 1048480
l1431: swpCC R7, R10, [R5]
l1432: ldrPL R11, [sp, #+60]
l1433: mov R14, #44
l1434: strVC R10, [sp, +R14]
l1435: ldr R9, l1437
l1436: b l1438
l1437: .word 1048524
interrupt_151: l1438: swp R6, R14, [R9]
l1439: sbcs R7, R0, R9, LSL #13
l1440: ldrVCh R2, [sp, #+10]
l1441: rsb R11, R7, R7, LSL R9
interrupt_465: l1442: subEQ R3, R7, #247
l1443: clzVS R9, R1
l1444: b l1450
l1445: add R1, R0, #31
l1446: eor R11, R11, R9, ASR #15
l1447: subLS R1, R15, R10, ASR #12
interrupt_337: l1448: tst R11, R14
l1449: b l1451
l1450: b l1446
interrupt_937: l1451: mov R10, #36
interrupt_958: l1452: ldrB R7, [sp, +R10]
l1453: ldmGEIA R13, {R7}
interrupt_427: l1454: stmEQIA R13, {R9, R11}
interrupt_408: l1455: ldrLSsh R7, [sp, #+68]
l1456: subCSs R1, R10, R9, ROR #18
l1457: rsb R14, R6, #192
l1458: rsbHI R1, R12, #17920
l1459: str R9, [sp], #+68
l1460: ldr R5, l1462
l1461: b l1463
interrupt_960: l1462: .word 1048548
l1463: swpCC R12, R4, [R5]
interrupt_836: l1464: andCS R9, R4, R6, ASR R10
l1465: sbcs R1, R15, R8
l1466: ldr R14, [sp, #-68]!
l1467: mvnLEs R0, #394264576
l1468: tstVC R9, R10, RRX 
interrupt_290: l1469: sbcVS R10, R14, R7, RRX 
l1470: stmIB R13!, {R6, R14}
interrupt_91: l1471: rscVC R5, R10, #122880
l1472: and R10, R5, R10, LSR R5
l1473: tstGT R2, R4, ROR #14
l1474: ldr R14, l1476
l1475: b l1477
l1476: .word 1048520
l1477: swpb R1, R7, [R14]
interrupt_950: l1478: sub R1, R12, R7
l1479: adcLT R10, R5, R2
interrupt_676: l1480: ldrh R11, [sp, #-2]
l1481: ldr R12, l1483
l1482: b l1484
l1483: .word 1048488
l1484: swp R2, R6, [R12]
l1485: teq R12, R15
l1486: adc R1, R8, #116
l1487: sub R2, R6, R9, ASR #25
interrupt_133: l1488: adc R14, R4, #2032
l1489: bic R9, R9, R4, LSR R6
l1490: rsbGE R6, R11, R11, ROR #23
l1491: adcNE R0, R12, R9, LSL R7
l1492: cmnVS R14, R6, LSL R3
l1493: rscs R7, R5, #1073741852
l1494: strB R7, [sp, #+3]
l1495: subNE R0, R14, R12, LSR R0
l1496: cmn R11, R15, RRX 
l1497: swi #5920870
l1498: strB R11, [sp, #+21]
l1499: ldr R8, l1501
l1500: b l1502
l1501: .word 1048480
l1502: swp R10, R0, [R8]
l1503: ldrPLsh R4, [sp, #+44]
l1504: .word 0b11110010000000111011001100101101
l1505: b l1512
l1506: rsbPLs R0, R4, R3, ROR R9
l1507: teq R12, #1966080
l1508: orr R9, R1, R6, ROR #13
l1509: mvnLEs R2, R0
l1510: andPL R8, R14, R5, LSL #29
l1511: andLTs R0, R14, R9
l1512: bicLSs R3, R8, #-67108862
l1513: mov R0, #28
interrupt_249: l1514: str R6, [sp, +R0]!
l1515: swi #3928018
interrupt_699: l1516: b l1521
l1517: tstMI R10, R4, LSL R11
l1518: tst R4, R3
l1519: clzCC R6, R2
l1520: clzLT R4, R7
l1521: cmn R3, R5, ASR R5
l1522: mvn R12, R7, ROR R1
l1523: clzEQ R10, R12
l1524: orrVCs R14, R6, R5
l1525: rsb R9, R5, R4, ROR R2
l1526: stmIB R13!, {R0, R2, R4, R5, R8, R14}
l1527: mov R2, #20
l1528: ldr R5, [sp], -R2
interrupt_672: l1529: clzVS R11, R10
l1530: tst R2, R1
l1531: rsbPL R0, R12, #126976
l1532: ldmGEIA R13, {R8, R9}
l1533: ldr R9, l1535
l1534: b l1536
l1535: .word 1048528
l1536: swp R3, R6, [R9]
l1537: adcHIs R11, R3, #16384
l1538: rsc R8, R6, #-1006632960
l1539: tst R5, #207872
l1540: sbcVS R11, R7, R4, ASR #29
l1541: strLTh R8, [sp, #-24]
l1542: eorGEs R11, R12, R4, LSL R9
l1543: b l1550
l1544: addCSs R6, R3, R8
l1545: rsb R3, R1, R14
l1546: movEQ R11, R11, LSR R0
l1547: sub R6, R6, R15
l1548: mov R12, R6, LSL R5
interrupt_990: l1549: sbcMIs R14, R2, R2
l1550: rscLS R12, R0, R4, LSR #14
l1551: str R10, [sp], #-28
l1552: mvns R5, #872415233
l1553: orrs R4, R9, R11, RRX 
l1554: ldr R11, l1556
l1555: b l1557
l1556: .word 1048516
l1557: swpGTb R6, R6, [R11]
interrupt_129: l1558: nop
interrupt_78: l1559: cmnVS R7, R8
l1560: .word 0b10000110101101110101100010011010
interrupt_300: l1561: swi #6252319
l1562: clzCC R2, R3
l1563: bicPL R2, R9, R7, LSR R8
l1564: cmpLT R7, #32000
l1565: bic R10, R10, R11
interrupt_644: l1566: orrCC R9, R9, R7, LSR #14
interrupt_677: l1567: movNEs R1, #1476395008
l1568: movCSs R10, R8, ASR R10
l1569: ldr R6, l1571
l1570: b l1572
interrupt_77: l1571: .word 1048492
l1572: swpb R3, R1, [R6]
l1573: adcCS R6, R4, #212860928
l1574: subPLs R5, R10, R6, ROR #21
l1575: teqLE R11, #746586112
l1576: tst R11, #926941184
l1577: cmn R4, R15, LSR #28
l1578: subGTs R11, R10, #1456
l1579: adcs R11, R6, #149504
interrupt_876: l1580: tst R5, R3, RRX 
l1581: movMI R5, R1, LSR #22
l1582: adc R7, R6, R10, ROR #13
l1583: andGE R5, R3, R12
l1584: ldrsh R3, [sp, #+18]
l1585: clzLS R0, R8
l1586: .word 0b11110011010101000101000110111001
l1587: teqLE R11, R9, ASR #18
l1588: mov R6, #16
interrupt_351: l1589: ldrLEh R10, [sp, +R6]
l1590: mov R10, #53
l1591: ldrVSsb R0, [sp, +R10]
l1592: subHIs R4, R5, R1, ROR #9
l1593: ldr R9, l1595
l1594: b l1596
l1595: .word 1048544
l1596: swpGEb R12, R7, [R9]
l1597: eorNEs R14, R2, R15, LSR #29
l1598: teqCS R3, R3
l1599: mov R7, #4
l1600: ldrh R14, [sp, +R7]
l1601: subCS R2, R5, R3, LSR R0
l1602: teqLE R4, R3, LSR R7
l1603: ldr R11, l1605
interrupt_493: l1604: b l1606
l1605: .word 1048484
interrupt_28: l1606: swp R3, R10, [R11]
interrupt_53: l1607: nop
l1608: mvns R4, #8257536
l1609: cmnPL R2, R0
l1610: eorVCs R4, R2, R9, ROR #15
l1611: andNEs R1, R7, #-1728053248
l1612: bCS l1618
l1613: add R1, R0, #71
l1614: rscCS R2, R0, R0, LSR #12
l1615: rscEQ R10, R0, R8, RRX 
interrupt_976: l1616: subs R8, R6, R4, ROR #7
l1617: b l1619
interrupt_373: l1618: b l1614
interrupt_695: l1619: sbcVSs R6, R0, R8
interrupt_798: l1620: mov R2, #44
l1621: ldrsh R12, [sp, +R2]
l1622: eorNEs R2, R14, R9, RRX 
l1623: bLT l1629
l1624: add R1, R0, #105
l1625: eor R11, R14, R11
l1626: cmpNE R10, R10
l1627: tst R6, R3, ROR R8
l1628: b l1630
l1629: b l1625
l1630: ldrVS R12, [sp, #+24]
l1631: ldmIB R13, {R3, R4, R9, R10}
l1632: str R4, [sp, #+40]!
l1633: ldr R12, l1635
l1634: b l1636
l1635: .word 1048532
l1636: swpGE R2, R9, [R12]
l1637: cmpNE R14, R6, LSR #26
l1638: orrPL R12, R5, R2, LSL R1
l1639: sub R11, R8, #-536870903
l1640: swi #16416611
l1641: bicLS R4, R15, #228
l1642: clzCS R14, R5
l1643: movCSs R4, #679477248
l1644: movNEs R5, R5, LSL #5
interrupt_951: l1645: ldrVSh R11, [sp, #-40]
interrupt_134: l1646: adds R3, R0, #12928
l1647: mov R12, #8
l1648: strMIB R0, [sp, +R12]
l1649: adds R3, R10, R6, ROR #27
l1650: nop
l1651: sbcGE R12, R2, R3
l1652: movs R12, R7
l1653: b l1662
l1654: add R1, R0, #79
l1655: bicVCs R10, R5, R4, ROR #15
l1656: sub R12, R12, R0, LSL #24
l1657: rsbNEs R3, R4, R3, RRX 
l1658: clzNE R9, R6
l1659: sbcCS R5, R1, R6, RRX 
l1660: sbcCC R3, R15, R14
l1661: b l1663
l1662: b l1655
l1663: strMIh R2, [sp, #-52]
l1664: orrPL R12, R2, #199
l1665: swi #9373320
interrupt_184: l1666: mov R1, #56
l1667: ldr R14, [sp, -R1]!
l1668: eor R7, R3, R11, LSL R5
interrupt_413: l1669: ldmGTIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l1670: swi #331654
l1671: ldr R4, l1673
l1672: b l1674
l1673: .word 1048552
l1674: swpb R0, R1, [R4]
l1675: ldrLEsh R6, [sp, #+56]
interrupt_593: l1676: ldr R8, [sp, #+52]
l1677: rscs R0, R5, R2, ASR #14
l1678: rscCC R5, R1, #6553600
l1679: mvnNEs R3, R12, LSL #12
l1680: bLT l1683
l1681: mvnGTs R14, R6
interrupt_886: l1682: adcLS R11, R12, #2080374785
l1683: tstPL R5, #-1258291200
l1684: cmnGT R7, #40960
l1685: b l1692
l1686: add R1, R0, #159
l1687: clzMI R9, R1
l1688: movNEs R3, R7, LSR R0
l1689: mvn R12, R11
l1690: subLE R10, R1, R14, ASR #5
interrupt_774: l1691: b l1693
l1692: b l1687
l1693: movs R6, R2, RRX 
l1694: bicLTs R9, R12, #-1073741768
l1695: teq R12, R9, ASR R10
l1696: mov R10, #64
l1697: ldrGT R2, [sp, +R10]
l1698: sbcNE R2, R15, R11, LSR #15
l1699: swi #9963987
l1700: ldr R0, l1702
interrupt_911: l1701: b l1703
l1702: .word 1048532
l1703: swpVS R3, R4, [R0]
l1704: swi #1241011
l1705: strB R8, [sp, #+47]
interrupt_973: l1706: swi #1143317
l1707: bicCC R3, R4, R8
l1708: mov R11, #44
l1709: str R15, [sp], +R11
l1710: rsc R3, R8, R4, ROR #29
l1711: adds R11, R6, #308
l1712: swi #7205997
l1713: orr R12, R2, R1, RRX 
l1714: ldrGTsb R5, [sp, #-8]
l1715: cmpCS R14, R9, ASR R9
interrupt_675: l1716: eors R7, R4, R4, ASR #21
interrupt_136: l1717: eorLSs R10, R15, R4
l1718: adcGE R0, R8, R4, RRX 
l1719: and R11, R10, #-738197504
l1720: tst R4, R8, RRX 
l1721: rscCC R5, R4, R3, LSR #7
l1722: rscs R7, R11, R7, LSL R3
l1723: mov R10, #10
l1724: strGEh R9, [sp, +R10]
l1725: strh R12, [sp, #+20]
l1726: strLSB R7, [sp, #-31]
l1727: ands R10, R4, R7, ASR R7
l1728: andVCs R10, R15, R8
l1729: rsb R7, R14, #-402653182
l1730: adds R12, R8, R11
l1731: orrs R5, R8, R7, RRX 
l1732: cmpLT R7, R2, ASR R11
l1733: strGE R2, [sp, #-8]
l1734: subs R12, R10, R11
l1735: ldr R5, l1737
l1736: b l1738
l1737: .word 1048552
l1738: swpVCb R7, R8, [R5]
l1739: mov R9, #16
l1740: strMI R7, [sp, +R9]
interrupt_835: l1741: str R9, [sp, #-44]
l1742: subHI R2, R12, #121
l1743: mov R10, #27
interrupt_279: l1744: ldrGEB R5, [sp, -R10]
l1745: subGE R1, R1, #176160768
l1746: eorGT R3, R9, R11, ROR #26
l1747: tstMI R5, R2, LSL #13
l1748: bNE l1754
interrupt_329: l1749: orrVC R12, R12, R3, LSL #30
interrupt_299: l1750: cmpLE R10, #217055232
interrupt_629: l1751: clzVC R4, R2
l1752: clzLT R9, R3
l1753: teqGE R2, #13824
l1754: rscs R10, R0, R15, RRX 
l1755: mov R8, #0
l1756: str R9, [sp], +R8
interrupt_536: l1757: mov R7, #4
l1758: str R4, [sp], -R7
l1759: subLT R4, R15, R0
interrupt_754: l1760: tstVS R3, R14
l1761: adds R4, R6, R1, RRX 
interrupt_311: l1762: sub R2, R12, R6, LSR R1
interrupt_507: l1763: andGEs R8, R1, R5, ROR R8
interrupt_932: l1764: tst R12, #504
l1765: clz R14, R0
l1766: ldmIA R13, {R0, R2, R3, R5, R7, R11, R14}
l1767: teq R8, R10, LSR #26
l1768: stmGTIB R13, {R9, R14, R15}
l1769: ldr R7, l1771
l1770: b l1772
interrupt_627: l1771: .word 1048480
l1772: swpGTb R1, R1, [R7]
l1773: ldrsh R1, [sp, #+26]
l1774: swi #4731849
l1775: ands R14, R7, R15, RRX 
l1776: adcs R10, R14, R7, ASR #25
interrupt_805: l1777: bGT l1786
l1778: add R1, R0, #241
l1779: clz R1, R7
interrupt_236: l1780: subNE R6, R4, R6, ROR R5
l1781: sbc R8, R11, R0
interrupt_30: l1782: clzHI R0, R11
l1783: adcs R8, R14, R14, ASR R9
l1784: andCS R6, R14, R5
l1785: b l1787
l1786: b l1779
interrupt_970: l1787: swi #5213522
l1788: addCC R7, R7, R7, ASR R1
interrupt_64: l1789: ldmDA R13!, {R1, R5, R7, R9, R11}
l1790: swi #14799418
l1791: teqCC R15, R6, ASR #19
interrupt_793: l1792: subEQ R5, R4, R1, ROR #26
interrupt_830: l1793: ldr R2, [sp], #+44
l1794: str R6, [sp, #-40]
l1795: swi #8257276
interrupt_666: l1796: rsbs R1, R1, R15, ASR #26
l1797: ands R11, R4, #800
l1798: rsbCCs R2, R6, R9
l1799: rsb R2, R8, R2
interrupt_608: l1800: subNE R1, R5, R1, LSR R7
interrupt_421: l1801: subVC R2, R14, R0, RRX 
l1802: strVSh R5, [sp, #-10]
l1803: and R2, R9, R5
l1804: sbc R3, R9, R3
l1805: subs R9, R1, R12, LSL R4
l1806: ldr R12, l1808
l1807: b l1809
interrupt_504: l1808: .word 1048532
l1809: swpLEb R6, R5, [R12]
l1810: eors R7, R12, R8, RRX 
l1811: subs R14, R1, #268435471
l1812: subVSs R12, R3, #126976
l1813: .word 0b01000111010010100111011011111000
l1814: sbcs R14, R10, R5, ASR #2
interrupt_345: l1815: ldrGTh R5, [sp, #-64]
interrupt_831: l1816: tst R1, R3
l1817: ands R3, R6, R15, ASR #27
l1818: bicCSs R8, R11, R11, ASR R0
l1819: adcLSs R5, R14, R14, LSR #13
l1820: cmp R12, R4, LSL #30
interrupt_724: l1821: ldrB R12, [sp, #-40]
l1822: andVSs R0, R4, R14, LSL #6
l1823: cmnMI R5, R12, LSL #29
l1824: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R7, R8, R10, R11, R12, R14}
interrupt_284: l1825: andCSs R12, R2, #-1073741775
l1826: teq R0, R7, LSL #29
l1827: teqNE R3, R7, LSR R5
l1828: ldr R12, l1830
l1829: b l1831
l1830: .word 1048532
interrupt_762: l1831: swpMIb R10, R1, [R12]
interrupt_378: l1832: subMI R10, R12, R11
interrupt_285: l1833: ldr R8, l1835
interrupt_749: l1834: b l1836
l1835: .word 1048516
l1836: swpNEb R9, R6, [R8]
l1837: teq R6, R7, ROR #23
l1838: tst R7, #80
l1839: adcLSs R7, R14, R1, ROR #25
interrupt_318: l1840: ldr R14, [sp, #+40]
l1841: andLSs R7, R7, R3, ASR #12
l1842: ands R8, R0, R3
l1843: orrs R14, R4, R9, LSR R2
l1844: ands R10, R7, R7, ASR #15
l1845: mov R7, #56
l1846: str R11, [sp], +R7
l1847: mov R6, #28
l1848: ldrsh R2, [sp, -R6]
l1849: ldr R14, l1851
l1850: b l1852
l1851: .word 1048536
l1852: swpCSb R10, R0, [R14]
interrupt_372: l1853: rscLE R0, R6, R11, RRX 
l1854: mov R8, #24
l1855: ldrh R9, [sp, -R8]
interrupt_829: l1856: mov R8, #72
l1857: strh R6, [sp, -R8]
interrupt_731: l1858: subs R14, R10, R15
interrupt_169: l1859: tstLS R15, R11
l1860: mov R4, #42
interrupt_295: l1861: ldrMIsb R2, [sp, -R4]
l1862: ldrVSsh R6, [sp, #-70]
l1863: cmpCS R3, #696320
interrupt_692: l1864: ldmEQDB R13, {R1, R2, R7, R8, R9, R11, R14}
l1865: ldr R11, l1867
interrupt_523: l1866: b l1868
l1867: .word 1048504
l1868: swpLTb R9, R7, [R11]
l1869: strLSB R10, [sp, #-5]
l1870: mov R9, #48
interrupt_981: l1871: ldrVS R3, [sp, -R9]
l1872: mov R9, #36
l1873: ldrPLh R6, [sp, -R9]
l1874: swi #14246234
l1875: clzGT R5, R5
l1876: .word 0b11110001110100111101100011101010
interrupt_944: l1877: tstLE R11, R10, ROR #24
l1878: swi #471455
l1879: tstMI R14, R12
l1880: tstLE R0, R7
interrupt_541: l1881: .word 0b10000111001110101011101100111001
interrupt_621: l1882: tstLE R10, R2, ASR #1
l1883: bicHIs R5, R10, R9, ROR R14
l1884: .word 0b11111001010110010001100110000010
interrupt_251: l1885: mov R0, #3
l1886: strLTB R1, [sp, +R0]
l1887: cmp R5, R4, RRX 
interrupt_382: l1888: bMI l1889
l1889: rsbVS R7, R8, R4
l1890: mvn R2, R9
interrupt_634: l1891: andPLs R0, R6, #205520896
l1892: ldr R3, l1894
l1893: b l1895
l1894: .word 1048536
l1895: swpb R6, R12, [R3]
l1896: mov R1, #12
l1897: str R12, [sp], -R1
interrupt_868: l1898: bPL l1901
l1899: rsbs R11, R0, #411041792
l1900: movs R12, R6, LSR R10
l1901: rscCS R7, R3, #228352
l1902: tst R8, R12, RRX 
l1903: bCS l1909
l1904: sub R4, R7, R5
l1905: cmpMI R3, R2, ASR #31
interrupt_451: l1906: andNEs R11, R1, R1, LSR #21
l1907: orrLEs R1, R5, R3
l1908: orr R3, R7, #40
l1909: cmpLE R12, R2, LSL R1
interrupt_497: l1910: swi #11019310
l1911: mov R4, #42
l1912: ldrh R3, [sp, -R4]
l1913: rsbs R14, R5, R11
l1914: mov R7, #34
l1915: strCSh R2, [sp, -R7]
l1916: movs R5, #205824
l1917: orrCCs R14, R15, R9, ASR #29
l1918: tstLT R5, #3620864
l1919: orrs R0, R4, R3
l1920: mov R6, #8
l1921: ldrsh R9, [sp, -R6]
l1922: adc R3, R10, R15
l1923: strB R8, [sp, #+3]
l1924: bLS l1927
l1925: orr R7, R4, R14
l1926: tstPL R4, #-83886080
l1927: rscs R0, R0, #2
interrupt_704: l1928: eorNEs R14, R0, R6, RRX 
l1929: mov R1, #60
l1930: ldrVSsh R14, [sp, -R1]
l1931: swi #11679399
interrupt_979: l1932: subLE R3, R0, #259072
l1933: swi #13025967
l1934: ldr R9, l1936
l1935: b l1937
l1936: .word 1048540
l1937: swp R10, R1, [R9]
l1938: clzLE R3, R0
l1939: rsbCSs R4, R2, R1
interrupt_743: l1940: sbcCCs R9, R15, #-2147483623
l1941: .word 0b11111001011011110000011010100000
l1942: mov R7, #4
l1943: ldr R7, [sp, +R7]
l1944: mvn R8, R10
l1945: sbcs R14, R11, R12, RRX 
l1946: stmDA R13!, {R13}
l1947: subGTs R6, R8, R3, LSR R12
l1948: cmnMI R11, R11, ROR R1
interrupt_649: l1949: ldmIA R13!, {R7, R9, R14}
interrupt_269: l1950: andNEs R11, R1, R1, ROR #1
l1951: strh R14, [sp, #-18]
l1952: cmp R0, R0, ROR #20
l1953: ldrsb R6, [sp, #-9]
interrupt_959: l1954: clzLS R6, R7
l1955: tstLE R2, #578813952
l1956: sub R10, R5, #260046848
l1957: clzEQ R6, R7
l1958: addLE R10, R0, #6750208
l1959: cmn R14, R6
l1960: cmpLT R0, R8, RRX 
l1961: rscLTs R14, R4, R3, RRX 
l1962: bics R6, R0, #249856
l1963: cmp R4, #-587202560
l1964: sub R1, R14, R2, ASR R7
interrupt_843: l1965: ldmDA R13!, {R0, R1, R3, R4, R5, R9, R10, R12, R14}
l1966: mov R1, #41
l1967: ldrB R1, [sp, +R1]
l1968: strCCB R0, [sp, #+10]
l1969: ldr R4, [sp], #+0
l1970: mov R4, #10
l1971: strGEh R1, [sp, +R4]
l1972: ldrGEh R3, [sp, #+8]
l1973: bicNEs R11, R12, R15, ROR #5
interrupt_140: l1974: cmn R2, R9, LSL R5
l1975: swi #3996048
l1976: .word 0b11111111100001010000100000000010
l1977: cmnCS R12, R1, ASR R10
l1978: addGTs R6, R11, #2752512
l1979: rsbLTs R8, R7, R4
interrupt_715: l1980: swi #12541042
interrupt_594: l1981: movLTs R12, R2
l1982: ldr R11, l1984
l1983: b l1985
l1984: .word 1048532
l1985: swpNE R2, R2, [R11]
l1986: subs R4, R10, R15, RRX 
l1987: .word 0b10110110101001001110110000010011
l1988: ldmDA R13!, {R5, R7}
l1989: rscLTs R11, R1, R1, ASR R8
l1990: swi #12281815
interrupt_202: l1991: .word 0b11111001111011101111110001101110
l1992: bicNE R7, R6, R10, RRX 
l1993: cmpPL R14, R14, ASR #21
l1994: subHIs R3, R7, R5, LSL #17
l1995: mvnCCs R8, #0
interrupt_210: l1996: clzEQ R4, R2
l1997: stmIB R13!, {R13, R14, R15}
l1998: swi #13841425
l1999: ldr R6, [sp, #-8]
interrupt_721: l2000: strGEh R9, [sp, #-8]
l2001: tst R12, R8, LSR R4
l2002: bVS l2007
l2003: rsbCCs R6, R4, R5, ROR #11
l2004: sub R9, R5, #-620756992
interrupt_221: l2005: and R6, R6, R8, LSL R9
l2006: tstCS R14, R14, RRX 
interrupt_821: l2007: teqNE R9, R1
l2008: ldr R0, l2010
l2009: b l2011
l2010: .word 1048552
l2011: swpLT R6, R10, [R0]
l2012: clz R7, R3
l2013: swi #3172973
l2014: nop
l2015: orr R10, R0, R2, ROR R1
interrupt_19: l2016: rsbHIs R2, R0, R11, ASR #25
interrupt_935: l2017: orrLT R9, R5, R9, RRX 
l2018: teqVC R1, R1, ROR #4
l2019: strLSh R11, [sp, #+30]
l2020: ldr R3, l2022
l2021: b l2023
l2022: .word 1048520
l2023: swpb R14, R4, [R3]
l2024: sub R3, R10, R3
l2025: rsc R4, R7, #40448
l2026: subs R9, R9, R9, ASR R8
l2027: stmIB R13, {R3, R4, R6, R8, R9, R12, R13, R14, R15}
l2028: mov R7, #36
l2029: ldr R2, [sp, +R7]!
l2030: .word 0b11100011000011111001011011000010
l2031: rscLT R0, R11, R10, ROR #1
interrupt_325: l2032: .word 0b11110101100010001001111011001011
interrupt_867: l2033: sub R6, R11, R12, LSL R4
l2034: mov R10, #954368
l2035: mov R10, #20
interrupt_458: l2036: ldrh R6, [sp, -R10]
l2037: nop
l2038: and R11, R0, R6, RRX 
l2039: mov R12, #36
l2040: strCCh R10, [sp, -R12]
l2041: nop
interrupt_558: l2042: ldr R9, l2044
l2043: b l2045
l2044: .word 1048504
l2045: swpGEb R3, R6, [R9]
l2046: subHI R10, R2, #1073741828
l2047: ldrVSsb R6, [sp, #-65]
l2048: mov R7, #10
l2049: strNEB R1, [sp, -R7]
interrupt_182: l2050: ldrVSsb R1, [sp, #-40]
l2051: movHI R6, R0
l2052: teqNE R9, R1
l2053: .word 0b11000011000001011000111011100101
interrupt_522: l2054: .word 0b11111111100011111010111111111111
interrupt_700: l2055: cmpLS R14, R2
l2056: ldrCCh R10, [sp, #-10]
l2057: stmDA R13!, {R2, R3, R4, R7}
l2058: swi #12700238
l2059: .word 0b11110111110010101110100100000001
l2060: mov R7, #4
l2061: ldr R4, [sp], -R7
l2062: sbcNEs R3, R7, R8, ROR R2
l2063: andEQs R12, R5, R3, ROR #12
l2064: ldr R5, l2066
interrupt_263: l2065: b l2067
l2066: .word 1048524
l2067: swpLSb R9, R4, [R5]
l2068: bGT l2070
l2069: mvnLEs R7, R11
l2070: eors R6, R2, R8, ASR R2
l2071: tst R8, #111616
l2072: cmpHI R3, R1
l2073: ldrsb R14, [sp, #-46]
l2074: cmp R12, #-469762048
l2075: teq R10, #-805306358
l2076: bicLS R5, R11, #520093696
interrupt_939: l2077: bic R3, R0, #606208
l2078: clzCS R0, R14
interrupt_849: l2079: cmp R10, R3, ROR #20
l2080: ldrCSh R1, [sp, #-22]
interrupt_94: l2081: movCCs R12, R15, ASR #13
interrupt_736: l2082: subEQs R14, R2, R10
l2083: str R3, [sp], #-16
l2084: subs R1, R12, R6, LSL #23
l2085: strVSB R7, [sp, #-32]
l2086: andLT R6, R5, #1408
interrupt_770: l2087: ldr R14, l2089
interrupt_954: l2088: b l2090
interrupt_752: l2089: .word 1048548
l2090: swpCSb R7, R6, [R14]
l2091: ldr R11, l2093
l2092: b l2094
l2093: .word 1048516
interrupt_146: l2094: swpb R3, R8, [R11]
l2095: clzCC R9, R4
interrupt_98: l2096: ldr R2, l2098
l2097: b l2099
l2098: .word 1048492
l2099: swpGT R8, R7, [R2]
l2100: rscLS R2, R11, R2, ASR R6
l2101: mov R8, #36
interrupt_546: l2102: ldrNEsh R2, [sp, +R8]
l2103: addGTs R12, R7, R6, ASR R7
l2104: swi #6509707
l2105: sbcGTs R12, R15, R7, LSR #17
l2106: clzPL R10, R14
l2107: orr R10, R2, R14, LSL #1
l2108: strHIB R0, [sp, #+6]
l2109: mov R7, #18
interrupt_696: l2110: ldrPLh R9, [sp, -R7]
l2111: swi #11229506
l2112: teq R7, R0, RRX 
l2113: rsbPL R14, R4, R9, RRX 
l2114: subMI R1, R10, R1, LSL R7
l2115: .word 0b11000011000000011111010011000011
l2116: b l2120
l2117: mvnCSs R0, R9, ASR R9
l2118: bicMIs R11, R12, R1, LSR #16
l2119: cmnLS R0, R14
l2120: cmnCS R2, R15, LSL #7
l2121: ldrsb R12, [sp, #+38]
l2122: tst R10, R9, LSL #28
l2123: rsb R10, R6, R12, LSL R2
l2124: bicEQ R1, R7, R4
l2125: mov R7, #8
l2126: ldrsh R14, [sp, +R7]
l2127: teq R12, R1, ASR R8
l2128: cmpCS R8, #25344
l2129: teqGT R10, R14, ROR R4
l2130: movCSs R6, R0, ROR #29
interrupt_595: l2131: swi #10871166
l2132: ands R10, R0, R4
l2133: swi #12748162
l2134: tstCS R2, R4, RRX 
l2135: mov R8, #16
l2136: ldrLE R0, [sp, -R8]
l2137: mvn R12, #11665408
l2138: ldr R14, l2140
l2139: b l2141
l2140: .word 1048516
l2141: swpLSb R5, R8, [R14]
l2142: cmp R2, R3, LSL R10
l2143: sbcEQs R1, R9, R2, ROR R10
l2144: ldr R5, l2146
l2145: b l2147
l2146: .word 1048528
l2147: swp R3, R7, [R5]
l2148: andMI R0, R11, #192937984
interrupt_641: l2149: mvns R4, #46
l2150: bGE l2158
l2151: add R1, R0, #32
l2152: rsb R2, R5, #36
l2153: cmn R5, R0, LSL R0
interrupt_26: l2154: sbcLS R9, R6, R3, RRX 
l2155: subVCs R12, R3, R10, ASR #11
l2156: movLS R1, #10624
l2157: b l2159
l2158: b l2152
l2159: ldrHIB R2, [sp, #+12]
l2160: .word 0b11111111110000001111010100011110
l2161: mov R14, #2
l2162: ldrsh R11, [sp, +R14]
l2163: ldr R1, l2165
l2164: b l2166
l2165: .word 1048544
l2166: swpEQb R2, R6, [R1]
l2167: mov R1, #14
l2168: strEQB R5, [sp, +R1]
l2169: adcVC R1, R2, R9, RRX 
interrupt_498: l2170: swi #12240014
l2171: mov R0, #18
l2172: ldrCSB R3, [sp, +R0]
l2173: teqMI R2, R14, ROR #11
l2174: cmpCC R3, R12, ROR R12
l2175: teqPL R14, R0, RRX 
l2176: ldr R8, l2178
interrupt_153: l2177: b l2179
l2178: .word 1048504
l2179: swpCS R5, R11, [R8]
l2180: tstGT R10, R10
l2181: .word 0b10010011000000000011001101101101
l2182: rscLS R3, R3, #624
l2183: mov R11, #20
l2184: ldr R7, [sp, +R11]
l2185: strEQh R0, [sp, #+8]
interrupt_513: l2186: cmpMI R0, #-1895825408
l2187: orrLS R10, R5, R8, ASR R9
interrupt_354: l2188: swi #8621603
l2189: orrs R0, R2, #27262976
l2190: movs R14, #58
l2191: subVSs R4, R1, #194
l2192: rsb R9, R11, R8, ROR R4
l2193: .word 0b11111111011111010010101110010010
l2194: mvn R0, R9, LSL R4
interrupt_425: l2195: sbcEQs R5, R12, R4
l2196: nop
l2197: teqPL R4, #1610612740
l2198: .word 0b11010110100010001011010001110001
l2199: swi #2384093
l2200: eorLSs R7, R11, R14
l2201: ldr R14, l2203
l2202: b l2204
interrupt_607: l2203: .word 1048512
interrupt_362: l2204: swp R4, R6, [R14]
l2205: subLEs R7, R15, #-1342177269
l2206: adds R3, R1, R7, ASR R1
l2207: mvnGT R6, #-1073741812
l2208: bGE l2214
l2209: add R1, R0, #188
l2210: mov R1, R11, LSR R11
l2211: mvnLSs R0, R1
l2212: andMIs R0, R11, R2, RRX 
l2213: b l2215
interrupt_298: l2214: b l2210
l2215: tstNE R10, R11, ASR R3
l2216: subs R9, R12, #-1879048192
l2217: stmIA R13!, {R3, R6}
l2218: nop
l2219: bLS l2225
interrupt_533: l2220: add R1, R0, #33
interrupt_440: l2221: cmnVC R10, R0, LSL R10
l2222: cmnCC R4, R2
interrupt_13: l2223: mvnCCs R3, #-1073741810
l2224: b l2226
l2225: b l2221
l2226: mov R11, #8
l2227: ldrNEB R10, [sp, -R11]
l2228: bNE l2236
interrupt_678: l2229: add R1, R0, #150
l2230: andPL R5, R15, R15, LSR #7
l2231: andPL R8, R14, R7, ROR R12
l2232: adcHI R6, R14, R10, LSL #8
l2233: addEQs R2, R14, #27392
interrupt_272: l2234: mvnGE R5, R7, LSL R1
l2235: b l2237
l2236: b l2230
l2237: ldr R6, l2239
l2238: b l2240
l2239: .word 1048504
l2240: swpLSb R9, R8, [R6]
interrupt_165: l2241: eorVS R14, R6, #159
l2242: rscVSs R11, R5, R2
l2243: ldmIA R13, {R2, R3, R4, R5, R6}
l2244: ldmIB R13!, {R0, R1, R4, R9, R10, R14}
interrupt_233: l2245: ldrPLsb R0, [sp, #-3]
l2246: ldr R8, l2248
l2247: b l2249
l2248: .word 1048484
l2249: swpVS R6, R4, [R8]
interrupt_626: l2250: mov R1, R0
l2251: ldr R0, l2253
interrupt_122: l2252: b l2254
l2253: .word 1048488
l2254: swpLT R7, R6, [R0]
l2255: .word 0b00000111001000111111101000010010
interrupt_278: l2256: subs R8, R14, R5, RRX 
l2257: tstVS R4, R9
l2258: swi #14122926
interrupt_946: l2259: strPLB R1, [sp, #+4]
l2260: teq R3, R1, LSR R8
interrupt_587: l2261: .word 0b11111000011000110101000011001001
l2262: ldmDB R13, {R2, R4, R7, R8, R9, R10, R11, R14}
l2263: rscCS R14, R14, R10, LSR R14
l2264: movs R14, #180224
l2265: mov R0, #58
l2266: strLEB R9, [sp, -R0]
l2267: movMIs R4, R2, ASR R4
l2268: strLEh R14, [sp, #-26]
interrupt_306: l2269: ldr R2, l2271
l2270: b l2272
interrupt_99: l2271: .word 1048484
l2272: swpLE R0, R10, [R2]
l2273: movVC R11, R1
l2274: orrVC R3, R11, R6, LSL R8
l2275: bicCCs R1, R15, R5, LSL #2
l2276: adcVCs R7, R9, #58368
l2277: str R9, [sp], #-44
l2278: ldmDB R13!, {R1, R3, R10, R11}
interrupt_189: l2279: adcLSs R5, R14, #604
interrupt_564: l2280: subMI R9, R2, R1
l2281: bHI l2287
interrupt_717: l2282: add R1, R0, #142
interrupt_71: l2283: adds R5, R14, R0
l2284: bicHI R0, R1, R4, ASR #24
l2285: addMIs R7, R9, R15, RRX 
l2286: b l2288
l2287: b l2283
l2288: ldrB R3, [sp, #-6]
l2289: ldrVCh R3, [sp, #+34]
l2290: sbcGT R2, R11, R8, ROR R9
interrupt_114: l2291: .word 0b11110101100110110100101100101101
l2292: mov R0, #4
l2293: strNE R6, [sp, -R0]
interrupt_572: l2294: ldrh R4, [sp, #+0]
l2295: .word 0b11111001001000101100101110000010
l2296: ldr R3, l2298
l2297: b l2299
l2298: .word 1048536
l2299: swpPLb R14, R7, [R3]
l2300: mvns R11, R3
interrupt_164: l2301: ldr R0, [sp, #+4]!
l2302: ldrNEsb R6, [sp, #+51]
interrupt_579: l2303: movs R3, #181
l2304: cmpEQ R6, #-2147483623
l2305: .word 0b01000110001011100110110110010101
l2306: ldr R2, l2308
l2307: b l2309
interrupt_705: l2308: .word 1048520
l2309: swpCSb R10, R1, [R2]
interrupt_61: l2310: swi #14566774
l2311: subLE R7, R4, R14, RRX 
l2312: movs R5, R1
l2313: mov R4, #48
l2314: ldrGTB R14, [sp, +R4]
l2315: swi #13647180
l2316: mov R2, #60
l2317: ldrVC R0, [sp, +R2]
l2318: mov R0, #40
l2319: ldr R9, [sp, +R0]!
l2320: cmnVC R8, R8
l2321: rscVS R4, R15, R8
l2322: ldr R1, [sp, #+20]
l2323: clzLS R12, R9
l2324: rsbNE R5, R9, R4, ROR #23
l2325: teq R5, R10, LSL R14
l2326: .word 0b11111001011011100001011111000100
interrupt_168: l2327: sub R10, R10, #663552
l2328: clzVC R14, R6
l2329: mov R5, #44
interrupt_481: l2330: str R5, [sp], -R5
l2331: adcGE R9, R2, R5, RRX 
l2332: rsbPLs R5, R8, R11, LSR #5
l2333: adcs R2, R2, #17039360
l2334: addLSs R1, R9, R9, RRX 
l2335: mov R1, #44
interrupt_765: l2336: ldrsh R5, [sp, +R1]
l2337: eors R0, R10, R7
l2338: swi #13262139
l2339: ldr R14, l2341
l2340: b l2342
l2341: .word 1048492
interrupt_324: l2342: swp R6, R12, [R14]
l2343: ands R6, R4, R9, LSL R14
interrupt_737: l2344: tst R5, #872415232
l2345: stmIA R13!, {R5, R6, R7, R8, R9, R15}
l2346: orrGT R8, R10, R0
l2347: bVC l2351
l2348: add R1, R0, #106
l2349: rsbGTs R2, R10, R8
l2350: b l2352
interrupt_875: l2351: b l2349
l2352: stmGTIB R13, {R5, R9, R11, R15}
l2353: stmDA R13!, {R13}
l2354: b l2358
l2355: cmpHI R0, #0
l2356: bicGEs R14, R4, R5, LSL #24
l2357: tstEQ R12, R9, ASR #20
l2358: sbcVC R11, R10, R10, LSR R2
l2359: mov R2, #22
l2360: ldrLTh R7, [sp, +R2]
l2361: ldrCCh R9, [sp, #-8]
l2362: mov R14, #38
l2363: strVSh R12, [sp, +R14]
l2364: cmpLS R12, #24576
interrupt_578: l2365: addVC R3, R3, R7, RRX 
l2366: subMIs R0, R8, #262144
l2367: ands R5, R3, R2
l2368: movLTs R8, #1168
l2369: subCSs R14, R1, R9, LSR #18
interrupt_72: l2370: .word 0b11111000000101001101101001011010
l2371: tstNE R14, R6, LSR R10
l2372: ldrEQsh R1, [sp, #-26]
l2373: bHI l2379
l2374: cmpGT R15, #1879048192
interrupt_642: l2375: sbcCS R6, R6, R9, ROR #22
l2376: mvn R6, R5, LSL #13
l2377: teqVC R2, R15, LSR #26
l2378: rscGTs R4, R10, #798720
interrupt_655: l2379: cmp R9, R15, LSL #27
l2380: str R10, [sp], #-8
interrupt_982: l2381: mov R10, #46
l2382: ldrGTsh R12, [sp, +R10]
l2383: sbcMI R5, R6, R14
l2384: strHIh R8, [sp, #+32]
l2385: swi #12933695
interrupt_733: l2386: ldrNEB R8, [sp, #-2]
l2387: andLS R0, R0, R1, ROR R12
l2388: sub R7, R11, R8
interrupt_850: l2389: eor R11, R15, #1179648
l2390: addMI R6, R11, #1232
l2391: sbcCC R10, R0, R6
l2392: sbcLE R4, R14, R6, LSL R14
l2393: strEQB R7, [sp, #+41]
l2394: .word 0b00010011000001000101001101001101
l2395: teqLT R3, R5, LSL #9
l2396: mov R0, R7, RRX 
l2397: b l2406
interrupt_577: l2398: bic R0, R0, R7, ROR R6
l2399: adc R9, R14, R11
l2400: sbcGEs R8, R4, #289406976
l2401: rsbs R6, R9, #828
interrupt_738: l2402: mvnGE R8, R14, RRX 
l2403: andCC R12, R0, #536870914
l2404: rscCSs R7, R1, #9437184
l2405: andEQs R5, R3, R9, LSR #3
l2406: orr R3, R11, R9, LSL #14
l2407: str R9, [sp, #-16]
l2408: sub R4, R4, R3
l2409: mvnGT R10, #580
interrupt_188: l2410: rsbs R7, R3, R9, LSR R7
interrupt_802: l2411: clzGE R14, R10
l2412: subGE R14, R15, R10
l2413: orrEQs R7, R4, R9
l2414: ldr R6, l2416
l2415: b l2417
l2416: .word 1048496
interrupt_510: l2417: swpEQ R3, R12, [R6]
interrupt_907: l2418: ldrHIsb R14, [sp, #+4]
l2419: rscNE R0, R3, #99614720
interrupt_283: l2420: swi #16019848
l2421: strEQh R11, [sp, #+36]
l2422: movs R14, R12
interrupt_469: l2423: mov R1, #20
l2424: ldrCC R0, [sp, +R1]
l2425: bics R10, R15, R6, RRX 
l2426: clz R2, R0
l2427: ldrsb R2, [sp, #+10]
l2428: sbcMI R11, R7, R10
interrupt_333: l2429: and R0, R4, #5767168
interrupt_147: l2430: .word 0b11111001011101011111000011100001
l2431: teqCC R15, #73728
interrupt_606: l2432: mov R3, #20
l2433: ldr R14, [sp, +R3]
l2434: swi #14239241
l2435: mvn R8, R9
l2436: strEQh R1, [sp, #-8]
interrupt_543: l2437: rsbVSs R10, R12, R10
l2438: bics R4, R14, R11, LSR R10
l2439: orrPL R4, R3, R9
l2440: clzCC R9, R8
l2441: rsbGT R11, R3, R5, ASR #16
l2442: .word 0b11111111100101110100111010100000
interrupt_532: l2443: bics R0, R12, R11
l2444: mov R4, #20
l2445: ldr R6, [sp], -R4
l2446: subGT R5, R9, R6, LSL #15
l2447: rsc R14, R14, #93
l2448: ldr R0, l2450
l2449: b l2451
l2450: .word 1048504
l2451: swpLS R5, R6, [R0]
l2452: ldmIA R13!, {R0, R1, R2, R3, R7, R8, R9, R10, R14}
l2453: bVC l2457
l2454: add R1, R0, #224
interrupt_592: l2455: subs R14, R7, R7, LSL R9
interrupt_822: l2456: b l2458
l2457: b l2455
interrupt_624: l2458: subVSs R9, R15, R14, RRX 
l2459: mov R11, #36
l2460: ldrsh R1, [sp, -R11]
l2461: mov R4, #28
l2462: strMIh R11, [sp, +R4]
l2463: ldmDA R13!, {R2, R10, R11}
l2464: ldrMIsh R5, [sp, #-20]
l2465: ldrLT R4, [sp, #-20]
l2466: swi #12611761
l2467: clzGE R12, R9
l2468: subLS R4, R15, R14
l2469: sub R6, R6, #181403648
interrupt_994: l2470: b l2475
l2471: cmp R6, R10, RRX 
interrupt_814: l2472: clzCS R9, R8
interrupt_611: l2473: teqHI R11, R2, ASR R10
l2474: cmnLS R6, #264241152
interrupt_550: l2475: adds R3, R14, R4
interrupt_462: l2476: orrLE R1, R8, R7, LSL #28
interrupt_357: l2477: swi #13656896
interrupt_58: l2478: cmnMI R15, R1, RRX 
l2479: movVC R8, R6, ROR #26
l2480: ldr R7, l2482
l2481: b l2483
l2482: .word 1048532
l2483: swp R5, R2, [R7]
interrupt_622: l2484: clzCS R7, R11
l2485: nop
l2486: sub R10, R7, R7, ROR #13
l2487: mov R1, #35
l2488: strB R11, [sp, +R1]
l2489: ldrB R5, [sp, #+30]
l2490: strLSh R3, [sp, #-22]
l2491: nop
l2492: strB R6, [sp, #+18]
l2493: mov R2, #20
l2494: strLEh R2, [sp, +R2]
interrupt_86: l2495: eor R5, R0, R5, ASR R10
l2496: and R9, R3, R2
l2497: mvn R7, R12, ROR R11
l2498: nop
interrupt_931: l2499: teqCC R7, R15, LSL #1
l2500: ldr R4, l2502
l2501: b l2503
l2502: .word 1048548
l2503: swpCCb R5, R11, [R4]
interrupt_116: l2504: bicLE R11, R2, R4, LSR R3
l2505: ldr R2, l2507
l2506: b l2508
l2507: .word 1048500
l2508: swpHIb R10, R9, [R2]
l2509: ldrsb R3, [sp, #+32]
l2510: rsc R3, R11, R0, RRX 
l2511: cmp R0, #212860928
interrupt_383: l2512: cmp R8, R14, LSL #14
l2513: mov R2, #24
l2514: str R11, [sp, +R2]!
l2515: cmp R0, R10, LSR R7
l2516: ldr R9, l2518
l2517: b l2519
l2518: .word 1048488
l2519: swp R3, R3, [R9]
l2520: mov R9, #39
l2521: strB R2, [sp, -R9]
l2522: adcs R8, R5, #588
l2523: stmIA R13!, {R2, R12}
l2524: mvnEQs R0, R4
l2525: addNEs R3, R12, R2
l2526: ldr R14, l2528
l2527: b l2529
l2528: .word 1048520
l2529: swpCC R0, R0, [R14]
l2530: swi #9470647
l2531: ldrPLh R5, [sp, #-6]
l2532: clzEQ R14, R6
l2533: .word 0b11111001110110011001011000100101
l2534: .word 0b11110110011001010101101000011010
l2535: swi #11514954
l2536: b l2543
l2537: add R1, R0, #197
l2538: tst R6, #-805306368
l2539: add R2, R15, R10, RRX 
l2540: eorGTs R4, R3, R1, LSL #30
l2541: sbcCS R9, R14, R4, LSL #24
l2542: b l2544
l2543: b l2538
l2544: swi #16339298
l2545: .word 0b11100110011011111001111111011001
interrupt_998: l2546: tst R1, #239616
l2547: stmDA R13!, {R0, R5, R6, R7, R8, R14, R15}
interrupt_60: l2548: mov R1, #33
l2549: ldrNEB R11, [sp, +R1]
l2550: movPL R10, R14
l2551: subCS R8, R15, R10
l2552: mvnCC R4, R11, LSR R5
l2553: eorLS R8, R1, R9
l2554: ldrB R14, [sp, #+11]
l2555: nop
l2556: ldr R7, [sp], #-20
l2557: mov R7, #2384
l2558: mov R11, #34
interrupt_159: l2559: strB R14, [sp, +R11]
l2560: b l2564
l2561: orrVC R0, R7, R3
l2562: eorEQs R5, R12, R2
l2563: bicLS R8, R4, #11520
l2564: subLT R5, R7, #428
l2565: mov R11, #7
l2566: strB R0, [sp, -R11]
interrupt_756: l2567: ldrHIsb R3, [sp, #+58]
interrupt_172: l2568: mov R6, #56
l2569: ldrh R2, [sp, +R6]
l2570: tst R3, R5
interrupt_882: l2571: mov R1, #50
l2572: ldrCSh R8, [sp, +R1]
l2573: tst R4, R7
l2574: movEQs R11, #750780416
interrupt_575: l2575: mov R8, #22
l2576: ldrLEsh R6, [sp, +R8]
l2577: ldr R12, l2579
l2578: b l2580
l2579: .word 1048512
l2580: swpHIb R0, R3, [R12]
l2581: orrs R3, R14, #851968
interrupt_380: l2582: ldrHIh R7, [sp, #+16]
l2583: cmpCS R8, R6, LSR R9
l2584: swi #6653344
l2585: sbcNEs R10, R3, R2, ROR #21
l2586: mov R4, #8
l2587: ldrMIsh R2, [sp, -R4]
l2588: ldr R7, l2590
l2589: b l2591
interrupt_118: l2590: .word 1048544
l2591: swpLSb R3, R2, [R7]
l2592: mvns R3, #5632
l2593: andLEs R10, R9, R3
l2594: b l2602
l2595: add R1, R0, #235
l2596: rsbs R5, R3, R6, ASR #10
interrupt_942: l2597: sbcMI R8, R4, #479232
l2598: mvn R12, #40370176
l2599: rsbNEs R6, R2, R0
l2600: subGTs R6, R1, R9, RRX 
interrupt_992: l2601: b l2603
l2602: b l2596
l2603: ldr R14, l2605
interrupt_827: l2604: b l2606
l2605: .word 1048552
interrupt_825: l2606: swpLE R2, R0, [R14]
l2607: eor R14, R12, R6, LSR R9
l2608: tstPL R1, R6
l2609: .word 0b11111111101101101010101101100011
interrupt_2: l2610: addHIs R14, R10, R12, ASR #30
l2611: mov R14, #12
l2612: ldr R6, [sp, +R14]!
interrupt_431: l2613: rsbEQs R9, R2, R0
l2614: eorNE R7, R7, R2
interrupt_941: l2615: adcLE R1, R2, #8512
l2616: ldrh R14, [sp, #+28]
l2617: teq R10, R10, RRX 
l2618: teqVC R12, R8
interrupt_853: l2619: eorCS R4, R4, #19712
l2620: mov R8, #18
l2621: ldrh R11, [sp, +R8]
l2622: swi #6477935
l2623: adcCC R1, R15, R0, ROR #4
l2624: teqVS R9, #125952
l2625: cmpVS R10, R0
l2626: cmnEQ R5, R1, ASR #23
l2627: swi #12558030
l2628: bicPL R7, R14, R10, LSR #8
interrupt_896: l2629: mov R12, #22
interrupt_219: l2630: ldrGTsh R1, [sp, +R12]
l2631: clzEQ R0, R11
l2632: subNE R0, R10, R5
l2633: adcLS R2, R9, #1644167168
l2634: andLT R11, R3, R7, RRX 
l2635: ldr R1, l2637
interrupt_574: l2636: b l2638
l2637: .word 1048500
l2638: swpEQb R10, R8, [R1]
interrupt_355: l2639: cmp R14, R1, LSL #18
l2640: rsbs R7, R5, #35840
interrupt_670: l2641: cmnVS R12, R1
interrupt_399: l2642: ldr R7, l2644
l2643: b l2645
l2644: .word 1048520
l2645: swpPLb R0, R2, [R7]
l2646: teqMI R6, R1, ASR #4
l2647: .word 0b11111111000001100100000010010001
interrupt_540: l2648: mov R0, #20
l2649: ldrVSsh R8, [sp, +R0]
l2650: sub R14, R10, R5, LSR #5
l2651: ldr R11, l2653
l2652: b l2654
interrupt_204: l2653: .word 1048544
l2654: swpLT R6, R1, [R11]
l2655: mov R1, #1
l2656: strGTB R11, [sp, -R1]
l2657: b l2658
l2658: teq R9, #2097152
l2659: ldrVCsh R8, [sp, #+30]
l2660: subGE R9, R11, R2
l2661: mov R9, #42
l2662: ldrh R2, [sp, +R9]
l2663: swi #2077195
l2664: rscVSs R0, R6, #39168
l2665: subHIs R0, R11, R7
l2666: mov R6, #48
l2667: ldr R14, [sp, +R6]!
l2668: teq R11, R6, RRX 
l2669: ands R4, R9, R10, RRX 
l2670: mov R11, #67
l2671: ldrB R4, [sp, -R11]
interrupt_971: l2672: bLE l2681
l2673: cmpVS R5, R3
interrupt_192: l2674: sbcVS R5, R5, #638976
l2675: mov R7, R12
l2676: subGE R12, R1, R11, LSR R5
interrupt_82: l2677: rsbVSs R7, R12, R14, LSR R2
interrupt_322: l2678: rsb R14, R14, R2
l2679: cmpEQ R5, R10, ASR #14
l2680: tstLE R12, R6
interrupt_95: l2681: addVS R1, R0, R7, LSL R2
interrupt_848: l2682: rscCCs R11, R1, R0, LSR R7
interrupt_455: l2683: stmIA R13!, {R13}
l2684: clz R5, R7
l2685: mov R3, #38
l2686: ldrGTsh R9, [sp, -R3]
l2687: mvns R3, #55574528
interrupt_580: l2688: sub R5, R9, R12, LSR R1
l2689: ldmDA R13, {R0, R1, R2, R3, R4, R5, R7, R8, R9, R10, R11, R12, R14}
l2690: stmLEDA R13, {R1, R2, R4, R5, R6, R7, R8, R9, R11, R13, R14, R15}
interrupt_820: l2691: eors R14, R8, #7
l2692: mov R0, #56
l2693: ldrLE R14, [sp, -R0]
l2694: mov R4, #70
l2695: ldrGTsh R6, [sp, -R4]
interrupt_800: l2696: nop
l2697: movs R1, #2375680
l2698: .word 0b11010111000010100011000100010111
l2699: orrs R10, R9, R10, ASR #25
interrupt_553: l2700: and R8, R4, #-1879048179
interrupt_379: l2701: bGT l2708
l2702: rsbEQs R3, R2, R0, ASR R11
l2703: ands R5, R9, R4, ASR R7
interrupt_823: l2704: eor R0, R1, #128974848
l2705: cmnGT R2, R5
l2706: mvnVSs R11, R7, ROR R14
l2707: rsbs R1, R8, #3088
l2708: eors R8, R9, R15, ASR #4
l2709: teq R1, R10, ROR #13
l2710: sbcs R2, R8, #47104
l2711: sbc R12, R10, R4, LSR #10
l2712: sub R3, R9, #-536870912
l2713: rsbLS R11, R10, R1, LSL R10
l2714: ldrNEsb R12, [sp, #-22]
interrupt_703: l2715: mvnGEs R3, R15, LSL #21
l2716: .word 0b11111000100010111111000011100000
interrupt_430: l2717: mvns R11, R11, ASR #13
l2718: mov R6, #66
interrupt_220: l2719: ldrVCsh R3, [sp, -R6]
l2720: ands R14, R5, R1, ASR R9
l2721: adcPLs R8, R2, R0, LSR #5
l2722: adc R11, R10, R8, LSR R4
l2723: bCC l2731
l2724: add R1, R0, #241
l2725: sub R7, R10, R14
l2726: orrPLs R11, R2, R1
l2727: orrs R10, R9, R11, LSR R5
l2728: orrGT R5, R3, R4
l2729: andVCs R10, R7, R12, ASR #21
l2730: b l2732
l2731: b l2725
l2732: tstGE R12, #81788928
l2733: addGE R1, R9, R15, RRX 
l2734: bicMIs R6, R4, R0, RRX 
interrupt_885: l2735: strB R8, [sp, #-63]
l2736: and R11, R2, R3, RRX 
l2737: stmDB R13!, {R0, R1, R5, R7, R8, R9, R11, R12, R14, R15}
l2738: addCSs R3, R1, R0, LSL #13
l2739: mov R5, #50688
l2740: orrVS R7, R1, #-1073741800
l2741: mov R6, #18
l2742: strGTh R8, [sp, -R6]
l2743: .word 0b11111000001011001000110011100111
l2744: stmDB R13!, {R2, R9}
interrupt_914: l2745: mov R5, #13
l2746: strB R10, [sp, -R5]
l2747: teqCS R7, R0
interrupt_117: l2748: sub R11, R2, R7, ROR R8
interrupt_335: l2749: mvnGEs R9, R9
interrupt_727: l2750: eorHI R9, R7, R12
l2751: mov R8, #14
l2752: ldrLTsb R14, [sp, -R8]
interrupt_790: l2753: mov R1, #10
l2754: ldrLEh R7, [sp, +R1]
l2755: ldr R8, l2757
l2756: b l2758
l2757: .word 1048492
l2758: swpHI R7, R11, [R8]
l2759: ldmHIDA R13, {R4, R5}
interrupt_9: l2760: strh R4, [sp, #-22]
l2761: mov R11, #34
l2762: strGTh R5, [sp, +R11]
l2763: ldr R10, l2765
l2764: b l2766
l2765: .word 1048520
l2766: swp R12, R6, [R10]
l2767: rsc R1, R3, R3, RRX 
l2768: swi #10363938
l2769: teq R0, R6, ASR #26
l2770: mov R5, #28
interrupt_476: l2771: str R8, [sp], +R5
l2772: ldmDB R13!, {R2, R3, R4, R5, R8, R12, R14}
interrupt_270: l2773: mov R8, #4
interrupt_995: l2774: ldr R7, [sp, +R8]!
l2775: teq R4, R3
l2776: ldrHIB R5, [sp, #+22]
l2777: ldrsb R4, [sp, #+8]
l2778: ldr R6, l2780
l2779: b l2781
interrupt_647: l2780: .word 1048504
l2781: swpCS R7, R7, [R6]
l2782: clz R14, R10
l2783: tstVC R12, R12, ASR R3
interrupt_239: l2784: adcNE R10, R4, #239075328
interrupt_855: l2785: ands R6, R3, R4, LSL R9
interrupt_85: l2786: cmn R7, #50
l2787: rscLS R1, R12, R3
l2788: adds R9, R9, R9
l2789: tst R3, #51
l2790: .word 0b11111111011001001110100000101001
l2791: adcLS R1, R2, R2, ASR #14
l2792: ldrh R6, [sp, #-6]
l2793: rsc R1, R12, R6
l2794: mov R5, #44
l2795: ldrCS R11, [sp, +R5]
l2796: eorLE R14, R14, R4
l2797: rsbHI R6, R6, R14
l2798: orrs R1, R11, R14
l2799: cmpCC R6, R14, LSL R3
interrupt_815: l2800: ldrVSsb R1, [sp, #+25]
interrupt_484: l2801: strB R3, [sp, #+30]
l2802: mov R5, #22
l2803: strh R0, [sp, -R5]
l2804: clzEQ R14, R10
l2805: swi #6954605
interrupt_794: l2806: stmCSDA R13, {R2, R11, R12, R15}
interrupt_902: l2807: strh R14, [sp, #-2]
interrupt_691: l2808: orr R6, R8, #908
l2809: movGEs R1, R5, ASR R2
l2810: mov R5, #16
l2811: ldrNEsh R3, [sp, -R5]
l2812: cmn R3, R6, ROR R5
l2813: teq R6, #164864
l2814: adds R6, R14, #675282944
l2815: rsbLE R12, R0, R14
interrupt_851: l2816: strVCB R8, [sp, #-11]
l2817: tstHI R5, R9, ROR #3
l2818: swi #16679999
interrupt_938: l2819: eorLTs R8, R14, R3
l2820: cmp R1, #44032
l2821: ldr R7, [sp], #+36
l2822: mov R10, #12
l2823: ldrHIsh R10, [sp, -R10]
interrupt_242: l2824: rsb R7, R2, R3, RRX 
l2825: tstLS R2, R10, ROR R0
interrupt_779: l2826: cmpEQ R15, R7, ASR #25
l2827: mov R4, #9
l2828: ldrB R6, [sp, -R4]
l2829: movGE R10, R8
l2830: tstNE R0, R1, RRX 
l2831: ldrHIh R8, [sp, #-56]
l2832: subs R4, R8, R11
l2833: bGE l2836
interrupt_176: l2834: tstGE R15, R1
l2835: cmn R8, R11, LSL R14
l2836: sbcVS R1, R5, #944
l2837: mov R12, #40
interrupt_584: l2838: str R12, [sp, -R12]!
l2839: swi #13663781
l2840: ldr R1, l2842
l2841: b l2843
l2842: .word 1048552
l2843: swp R14, R8, [R1]
l2844: sbcEQ R6, R5, R0, ROR #30
interrupt_16: l2845: tstNE R8, R14
l2846: orrCCs R10, R1, R5
l2847: addGTs R9, R7, R1
l2848: mov R7, #34
l2849: ldrh R9, [sp, +R7]
l2850: cmpEQ R1, R3, ROR R11
l2851: stmDA R13, {R15}
interrupt_474: l2852: strHIh R2, [sp, #+4]
l2853: teqLE R11, R12, LSR #24
interrupt_44: l2854: ldrsb R5, [sp, #+24]
l2855: rsb R8, R9, R2, LSL R11
l2856: subCCs R7, R0, R1, LSL R14
l2857: orrCS R11, R0, R14, ROR #17
l2858: ldr R2, l2860
l2859: b l2861
l2860: .word 1048480
l2861: swpb R8, R6, [R2]
l2862: ands R9, R10, #6029312
l2863: sub R11, R3, R6, LSL #14
interrupt_190: l2864: cmn R0, R1, LSR R10
l2865: bLS l2869
l2866: add R1, R0, #14
l2867: adc R12, R2, R2, ASR #8
l2868: b l2870
l2869: b l2867
l2870: adcs R0, R12, R4, ROR R3
l2871: mov R4, #4
l2872: strLE R2, [sp, -R4]
l2873: ldr R12, l2875
l2874: b l2876
l2875: .word 1048536
l2876: swpVC R14, R3, [R12]
interrupt_948: l2877: rsc R6, R10, R7
l2878: strB R4, [sp, #+3]
l2879: ldrh R6, [sp, #-20]
interrupt_456: l2880: tst R3, #12288
interrupt_899: l2881: strVCB R12, [sp, #+46]
interrupt_674: l2882: .word 0b11010011000011010001101001001110
l2883: ldr R3, l2885
l2884: b l2886
interrupt_616: l2885: .word 1048528
l2886: swpVS R12, R12, [R3]
l2887: ldrLEh R6, [sp, #-20]
l2888: adds R9, R8, R2, RRX 
l2889: bicGTs R11, R4, R5
l2890: subGT R2, R4, #5242880
l2891: cmn R5, R2
l2892: andCS R7, R9, R12
interrupt_317: l2893: mov R2, #16
interrupt_993: l2894: ldr R7, [sp, -R2]!
l2895: subMIs R2, R9, R11
interrupt_862: l2896: mov R4, #5
l2897: ldrB R7, [sp, +R4]
l2898: orrs R10, R1, R11
l2899: mvnNEs R7, R0, ASR R10
l2900: addMI R1, R4, #169984
l2901: ldr R5, l2903
l2902: b l2904
l2903: .word 1048512
l2904: swpVCb R4, R4, [R5]
l2905: subCSs R4, R12, R9, ROR R10
interrupt_282: l2906: strh R1, [sp, #+4]
interrupt_390: l2907: tstCS R12, R14
l2908: clzLS R4, R2
l2909: ldr R12, l2911
l2910: b l2912
l2911: .word 1048552
l2912: swpGEb R1, R8, [R12]
interrupt_366: l2913: ldr R12, l2915
l2914: b l2916
l2915: .word 1048492
l2916: swpVS R8, R6, [R12]
l2917: mov R2, #56
interrupt_766: l2918: strPL R7, [sp, +R2]
l2919: nop
l2920: mvnCSs R14, #104857600
interrupt_110: l2921: swi #5553402
l2922: .word 0b00010111101000001001010011010100
l2923: mov R11, #2
l2924: ldrsh R10, [sp, -R11]
l2925: movCS R10, #5767168
l2926: ldrLEB R11, [sp, #+44]
l2927: teq R7, R0
l2928: adcCS R12, R8, R7
l2929: cmn R12, #-1543503870
l2930: cmpPL R2, R5, LSR R8
l2931: andGEs R3, R2, R14
l2932: sbc R8, R14, R12, ASR R10
l2933: clz R5, R3
interrupt_109: l2934: ldr R2, l2936
l2935: b l2937
l2936: .word 1048488
l2937: swpVSb R1, R8, [R2]
interrupt_381: l2938: mvn R1, #-805306354
interrupt_442: l2939: mov R2, #25
l2940: ldrGEsb R1, [sp, +R2]
l2941: ldr R8, l2943
interrupt_603: l2942: b l2944
l2943: .word 1048520
l2944: swp R1, R6, [R8]
l2945: mov R6, #32
interrupt_926: l2946: ldrB R12, [sp, +R6]
interrupt_79: l2947: teqEQ R1, R9, LSR #29
l2948: subs R6, R0, #-1073741820
l2949: b l2958
interrupt_883: l2950: cmpHI R3, R11
interrupt_506: l2951: cmpMI R12, #688
l2952: movEQs R0, R8
l2953: teq R4, R3, ROR #13
l2954: sbcPLs R10, R3, R15, RRX 
l2955: eorCC R11, R1, R1, ASR R12
l2956: rsbVCs R5, R14, #104448
l2957: sbcVC R1, R9, R8
l2958: eorEQs R6, R6, R0, LSR #26
l2959: orr R5, R9, #14811136
l2960: ldrsh R8, [sp, #+50]
l2961: clz R5, R9
l2962: bLT l2963
l2963: orrMIs R3, R10, R4, RRX 
l2964: ldr R5, l2966
l2965: b l2967
l2966: .word 1048524
l2967: swpNE R0, R11, [R5]
l2968: swi #10090966
l2969: nop
l2970: rsbs R0, R6, R12, LSL R8
l2971: mov R9, #42
interrupt_605: l2972: strLTh R14, [sp, +R9]
l2973: mov R8, #32
l2974: ldrLSB R6, [sp, +R8]
l2975: mov R0, #18
l2976: ldrB R0, [sp, +R0]
l2977: bicHIs R11, R8, R9, LSL #2
interrupt_450: l2978: swi #14314766
l2979: mov R1, #62
l2980: ldrGEh R4, [sp, +R1]
l2981: cmnGT R8, #-201326590
l2982: adcNE R5, R8, R10, ROR #19
l2983: clz R9, R0
l2984: ldr R7, l2986
l2985: b l2987
interrupt_517: l2986: .word 1048520
l2987: swpGEb R5, R9, [R7]
l2988: adc R0, R11, #123904
l2989: addHI R10, R9, R7, ASR #7
l2990: .word 0b11110010011101110001011100110101
l2991: mov R10, #10
l2992: ldrGTsh R2, [sp, +R10]
interrupt_166: l2993: .word 0b11110101101001110110111001000100
l2994: .word 0b11110011010001000111110111111001
l2995: ldr R14, l2997
l2996: b l2998
interrupt_237: l2997: .word 1048528
l2998: swpPL R5, R2, [R14]
l2999: ldrLEsh R3, [sp, #+50]
interrupt_905: l3000: mov R12, #60
l3001: ldrsh R6, [sp, +R12]
l3002: orrGTs R0, R5, #55040
l3003: swi #6207496
l3004: orrMIs R8, R5, #794624
l3005: ldrLTB R9, [sp, #+2]
l3006: cmp R3, R11, RRX 
interrupt_479: l3007: ldr R8, [sp, #+48]!
interrupt_467: l3008: adc R5, R1, R3
interrupt_330: l3009: mov R11, #24
l3010: ldrLTh R7, [sp, -R11]
l3011: mov R7, #44
l3012: ldrHI R14, [sp, -R7]
l3013: bLE l3023
interrupt_730: l3014: clzNE R8, R5
l3015: bicGT R5, R11, #234881024
interrupt_45: l3016: teq R2, R9
interrupt_519: l3017: rsbPL R14, R7, R11
interrupt_719: l3018: eorCCs R11, R12, R3, LSR #21
l3019: bic R5, R14, R9
l3020: cmpVS R7, R4, LSR #29
l3021: mvnHI R14, R4, LSR #13
l3022: rscGE R2, R7, R9
l3023: rsc R1, R1, R5
l3024: ldr R2, l3026
interrupt_857: l3025: b l3027
l3026: .word 1048540
l3027: swpb R4, R8, [R2]
interrupt_17: l3028: .word 0b11111001111010001010001111110100
interrupt_103: l3029: b l3038
l3030: rsbGT R8, R2, R4, RRX 
l3031: sbcs R3, R3, R5, ROR #3
l3032: mvnGEs R0, R6, LSR R9
interrupt_120: l3033: mvnLE R11, R4, ASR R9
l3034: orrLEs R9, R1, R9, ROR #7
l3035: clzEQ R12, R5
l3036: cmpNE R7, R2, ROR #27
l3037: orrs R7, R15, R2, LSR #30
l3038: rscEQ R8, R5, R10, ASR #28
interrupt_415: l3039: mov R14, #25
l3040: ldrEQsb R3, [sp, -R14]
l3041: bLT l3045
l3042: cmnCS R1, R1, ASR R5
l3043: subLSs R1, R1, R11, ASR #21
interrupt_437: l3044: mov R9, #182452224
l3045: rsbCS R7, R15, #52224
l3046: sbcLSs R5, R1, R6, LSR R9
l3047: rsbs R4, R4, #27525120
interrupt_866: l3048: mov R3, #12
l3049: ldrHIh R0, [sp, +R3]
interrupt_368: l3050: sbcs R11, R11, #1006632961
l3051: cmn R7, #9152
l3052: mov R8, #10
l3053: ldrsh R7, [sp, -R8]
l3054: and R12, R4, R11, LSR #8
l3055: teq R11, R5
l3056: mov R11, #44
l3057: ldrsh R8, [sp, -R11]
l3058: teq R2, R11, ROR R8
l3059: rscGTs R11, R3, R4, LSR #25
l3060: mvnEQs R6, R2
l3061: stmIA R13, {R0, R9}
interrupt_792: l3062: cmpLT R8, #35389440
l3063: ldmDB R13!, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l3064: ldrVSsb R5, [sp, #-5]
l3065: rsbs R6, R3, #398458880
l3066: ldr R7, l3068
l3067: b l3069
l3068: .word 1048500
l3069: swpLE R8, R2, [R7]
l3070: ldr R3, l3072
interrupt_656: l3071: b l3073
l3072: .word 1048484
l3073: swpb R1, R6, [R3]
interrupt_591: l3074: clz R4, R10
l3075: orrs R4, R12, R4
l3076: mov R8, #28
interrupt_160: l3077: ldrh R12, [sp, +R8]
l3078: tst R9, R3
l3079: cmn R7, R2, LSR R2
interrupt_186: l3080: adcCCs R5, R6, R4
l3081: movs R11, R10, RRX 
interrupt_156: l3082: strLTh R12, [sp, #+40]
l3083: adcs R6, R14, R15, RRX 
l3084: orrGTs R5, R7, #1264
interrupt_963: l3085: .word 0b11111000001000101110111010010000
l3086: swi #2917181
l3087: .word 0b11110011100111000101111011111111
l3088: cmp R6, R7, ROR #2
l3089: eorGEs R5, R14, R3, ROR R10
interrupt_663: l3090: tstNE R14, #3328
l3091: ldrLEB R8, [sp, #+67]
l3092: clzNE R6, R5
l3093: and R9, R4, #27648
l3094: andCC R11, R3, R4, LSL #10
l3095: tstPL R12, R15, RRX 
l3096: cmpCS R12, R8, RRX 
l3097: cmpVC R0, R11, ROR #13
interrupt_563: l3098: swi #11688970
l3099: ldr R11, l3101
interrupt_884: l3100: b l3102
l3101: .word 1048548
l3102: swpb R12, R2, [R11]
l3103: b l3108
l3104: add R1, R0, #238
l3105: rscGE R2, R6, R2, LSR R1
l3106: rscMI R0, R10, R11, LSR R1
l3107: b l3109
l3108: b l3105
l3109: cmpNE R3, #-402653181
l3110: bics R6, R5, #2031616
interrupt_145: l3111: mov R7, #34
l3112: strLTh R8, [sp, +R7]
l3113: orrMI R1, R9, R12, ROR R6
l3114: .word 0b11111001101100001000001000110001
l3115: ldr R1, [sp], #+52
l3116: strCCB R5, [sp, #-15]
interrupt_535: l3117: ldrNEh R7, [sp, #-4]
l3118: rsbLT R6, R11, #84
l3119: subLS R8, R1, R2, LSL #30
interrupt_113: l3120: clz R11, R5
l3121: mov R14, #12
l3122: strB R10, [sp, -R14]
l3123: swi #5533145
interrupt_701: l3124: sbcGEs R10, R9, R1, ROR #4
l3125: bLT l3134
l3126: add R1, R0, #204
interrupt_889: l3127: eorEQs R6, R14, R3, RRX 
interrupt_328: l3128: clz R3, R10
l3129: orrs R5, R9, R0
l3130: mvn R6, R8, ASR R9
l3131: eors R6, R2, R10, LSL #5
l3132: subNE R11, R15, R15
l3133: b l3135
interrupt_240: l3134: b l3127
l3135: cmn R10, R9, RRX 
interrupt_745: l3136: bPL l3138
l3137: clz R1, R3
l3138: rsbCC R3, R14, R8, ASR #17
l3139: subVCs R3, R8, R15, ASR #24
l3140: subEQs R12, R6, R1, LSR R9
l3141: eorGEs R10, R3, #-536870909
l3142: andCSs R7, R4, R14, LSR R6
l3143: subVCs R10, R8, #35072
l3144: subCC R11, R3, #1073741845
l3145: swi #14773269
l3146: subs R10, R11, R15
l3147: ldr R11, [sp, #+0]
l3148: subMI R5, R4, R15
l3149: subs R5, R1, R9, LSR R8
l3150: rscPLs R7, R4, R15, RRX 
interrupt_551: l3151: mov R3, #23
l3152: strMIB R7, [sp, -R3]
l3153: orrMIs R7, R8, R9, ASR #19
interrupt_482: l3154: ldrsh R7, [sp, #-46]
l3155: cmn R14, R12, LSR R11
l3156: subVSs R9, R2, R4
interrupt_339: l3157: subs R2, R12, R11
l3158: adcLT R14, R6, #39680
l3159: cmnGE R8, #5312
l3160: swi #5245586
l3161: clz R5, R12
l3162: sub R9, R5, R9, LSL #31
l3163: bCC l3168
l3164: add R1, R0, #240
l3165: and R3, R15, #10176
interrupt_297: l3166: rscNEs R9, R7, R8, LSR #16
l3167: b l3169
l3168: b l3165
l3169: subs R10, R5, R8, RRX 
l3170: mov R10, #48
l3171: ldr R12, [sp, -R10]!
l3172: swi #5899003
l3173: subs R12, R9, #15360
l3174: addLS R9, R3, R3
l3175: sbcMIs R14, R9, #6225920
l3176: bVC l3182
l3177: add R1, R0, #112
interrupt_412: l3178: sbcs R14, R7, R3, ROR R14
l3179: tstEQ R15, R9
l3180: orrGT R0, R12, R5
interrupt_177: l3181: b l3183
l3182: b l3178
l3183: b l3192
l3184: add R1, R0, #68
l3185: orrVCs R7, R4, R4
interrupt_978: l3186: rsc R1, R3, R1, ASR R12
interrupt_76: l3187: rscMIs R2, R9, R12, LSL R7
l3188: adcGT R5, R0, #163840
l3189: cmnGE R9, R2, LSR R0
l3190: tstMI R2, #896
l3191: b l3193
l3192: b l3185
interrupt_27: l3193: mov R2, #36
l3194: strGTh R5, [sp, +R2]
interrupt_439: l3195: nop
l3196: eor R2, R11, R9
l3197: cmpEQ R8, R7, ROR #8
l3198: cmn R7, R2, LSR R14
l3199: ldr R8, l3201
l3200: b l3202
l3201: .word 1048516
l3202: swpb R10, R0, [R8]
l3203: rsc R8, R9, R8, LSL R14
l3204: mov R4, R9, LSR #27
l3205: rscGEs R10, R4, R12, LSR #1
l3206: ldr R14, [sp], #+20
l3207: bics R10, R9, R9, LSR R7
l3208: ldr R11, l3210
l3209: b l3211
l3210: .word 1048532
l3211: swpCSb R8, R8, [R11]
l3212: bicMI R0, R11, R5, LSL #0
l3213: ldr R7, l3215
interrupt_365: l3214: b l3216
l3215: .word 1048548
l3216: swp R8, R2, [R7]
l3217: movLEs R1, R11
l3218: movs R2, R2, RRX 
l3219: cmp R8, R3, LSR R8
l3220: swi #16630134
l3221: bVC l3227
interrupt_757: l3222: tstPL R7, R3
l3223: tst R6, R8, RRX 
l3224: rsc R8, R10, #179
l3225: eorVS R9, R5, R7, LSR #4
l3226: cmnHI R14, #3584
interrupt_785: l3227: tst R11, R4
l3228: movVC R4, R12, ROR R4
interrupt_471: l3229: sub R2, R2, #1015021568
l3230: ldrVCsb R6, [sp, #-10]
l3231: .word 0b00110111100100010110100010011000
interrupt_659: l3232: swi #446423
l3233: ldr R5, l3235
l3234: b l3236
interrupt_246: l3235: .word 1048512
interrupt_614: l3236: swpCSb R11, R3, [R5]
interrupt_63: l3237: sbcHI R14, R6, R7, LSR #18
l3238: rsbEQ R14, R14, R15, LSR #19
l3239: bEQ l3246
l3240: rscMIs R14, R3, R4, LSR R4
l3241: rscGEs R14, R3, R10, ROR R8
l3242: clz R6, R3
l3243: clz R14, R8
interrupt_394: l3244: clzPL R3, R14
l3245: cmnMI R11, R15
l3246: clzCC R8, R1
l3247: bics R11, R6, #1476395010
l3248: ldr R6, l3250
l3249: b l3251
interrupt_332: l3250: .word 1048516
interrupt_88: l3251: swpLTb R7, R9, [R6]
l3252: mov R8, #20
l3253: strLT R12, [sp, +R8]
l3254: bLE l3262
l3255: bic R3, R10, #104857600
l3256: cmn R4, R7, LSR #12
l3257: sbcs R1, R3, R4, ROR R11
l3258: addLSs R3, R12, R11
l3259: bics R8, R4, R15, LSR #31
l3260: andVCs R4, R8, R14
interrupt_763: l3261: cmp R8, R11
l3262: addVS R6, R0, #72
l3263: adcs R4, R5, R12
l3264: strh R8, [sp, #+40]
interrupt_392: l3265: stmLSDB R13, {R3, R6}
interrupt_673: l3266: ldr R12, l3268
interrupt_490: l3267: b l3269
l3268: .word 1048508
l3269: swp R8, R5, [R12]
interrupt_874: l3270: strVCB R12, [sp, #+33]
l3271: str R14, [sp, #+0]!
l3272: rsbLT R4, R3, R12
l3273: .word 0b11110110100101100001110011111110
l3274: sbc R5, R11, #3162112
l3275: stmDB R13, {R0, R15}
l3276: b l3282
l3277: tstCC R1, #11008
l3278: andHIs R6, R8, R3, RRX 
l3279: teq R11, #29360128
interrupt_216: l3280: orrs R8, R6, R9, ROR R12
l3281: andLS R0, R6, #9699328
l3282: rsbs R5, R3, R1
l3283: .word 0b11111111111000010110110111110011
l3284: rsbs R8, R0, R1
l3285: ldmGEIA R13, {R0, R5, R6, R7, R8, R9, R11, R14}
l3286: mvnEQs R11, R2, LSR #0
l3287: b l3295
l3288: add R1, R0, #48
interrupt_680: l3289: cmpPL R6, R0
l3290: cmpLE R8, R0
l3291: clzCS R7, R0
l3292: eorEQ R2, R3, R14, ASR #4
l3293: bicCC R0, R7, R10, ROR R6
l3294: b l3296
l3295: b l3289
l3296: swi #13224942
interrupt_173: l3297: mov R10, R6, ROR #2
l3298: strLSh R5, [sp, #-22]
l3299: mov R3, #20
l3300: strMIh R1, [sp, -R3]
l3301: .word 0b11111111100111011001011010111100
l3302: mov R7, #16
l3303: strVCh R7, [sp, +R7]
l3304: subs R1, R9, R2, LSL R0
l3305: .word 0b11110111001000001011101010110110
l3306: .word 0b11110001111111111001000001100001
l3307: movLEs R3, R3
l3308: .word 0b11111111100010001001100101000111
l3309: stmVCDB R13, {R1, R5, R8, R9, R14, R15}
l3310: ldrGEsh R2, [sp, #-2]
l3311: mvnNE R12, R11, LSR R1
l3312: ldr R0, l3314
l3313: b l3315
l3314: .word 1048516
l3315: swpPL R6, R6, [R0]
interrupt_552: l3316: ldrNE R8, [sp, #+28]
l3317: bicLE R2, R15, R0
l3318: .word 0b11111001010101100010110101111010
l3319: movCCs R3, R14, LSR #30
l3320: tst R0, R14, ROR #2
l3321: mvnPL R14, R5
l3322: ldr R9, l3324
l3323: b l3325
l3324: .word 1048488
l3325: swpb R1, R7, [R9]
l3326: add R14, R5, #1792
l3327: ldrsb R10, [sp, #-31]
interrupt_361: l3328: swi #11501479
interrupt_966: l3329: ldr R2, l3331
l3330: b l3332
l3331: .word 1048532
l3332: swpGEb R9, R6, [R2]
l3333: swi #10097118
interrupt_643: l3334: .word 0b00010011010011110001100000100100
l3335: mov R4, #16
l3336: str R15, [sp, +R4]!
l3337: b l3345
l3338: cmnLS R10, R12
l3339: adcs R9, R11, #41472
l3340: addGEs R3, R1, #9764864
l3341: tstVC R6, R6
interrupt_37: l3342: andNEs R9, R15, #-1610612733
l3343: subs R6, R1, R8, RRX 
l3344: orrs R4, R3, #137216
l3345: subs R2, R14, R11, LSR R9
l3346: clzNE R4, R11
l3347: mov R1, #32
interrupt_713: l3348: strh R3, [sp, -R1]
l3349: ldr R7, l3351
l3350: b l3352
l3351: .word 1048480
l3352: swpCS R3, R9, [R7]
l3353: teq R11, #1073741826
l3354: str R14, [sp, #-12]
l3355: .word 0b11000111001011111010010111010010
l3356: mvnPLs R6, R3
l3357: eors R9, R8, R6
l3358: b l3368
l3359: orrGEs R8, R7, #1174405120
interrupt_321: l3360: mvns R11, R5, LSR R1
interrupt_187: l3361: subCC R14, R6, R7, RRX 
interrupt_791: l3362: sbcVSs R10, R2, R4, ASR R5
l3363: adcMI R1, R2, #2224
l3364: sub R2, R1, R7, ASR #25
l3365: movLT R1, R9, LSL #24
l3366: subHI R14, R11, #1207959552
l3367: adcLTs R0, R14, R8, ASR #2
l3368: add R10, R12, R8, LSR R14
l3369: mov R11, #16
l3370: strVSh R4, [sp, +R11]
l3371: ldrMIh R14, [sp, #-26]
l3372: andEQ R6, R6, R0, RRX 
l3373: orrGEs R6, R2, R0, LSL R4
l3374: mov R9, #41
l3375: ldrVCsb R9, [sp, -R9]
interrupt_661: l3376: teqMI R14, R10
l3377: cmpGT R14, #3424256
l3378: andLSs R9, R11, R10
l3379: cmpCC R14, R11, RRX 
l3380: ldr R3, [sp], #+4
l3381: stmGEDA R13, {R3, R5, R7, R10, R12, R14, R15}
l3382: mov R0, #42
interrupt_23: l3383: ldrMIsh R12, [sp, -R0]
l3384: subs R5, R15, #-1342177279
l3385: swi #280815
l3386: eorMIs R6, R4, #6
l3387: ldmIA R13!, {R12, R14}
l3388: swi #13562537
l3389: eor R10, R0, R10, LSL #22
interrupt_908: l3390: cmn R14, R10
interrupt_952: l3391: ldrPLB R6, [sp, #-42]
l3392: mov R8, #2
interrupt_52: l3393: strCCB R3, [sp, +R8]
interrupt_633: l3394: rsbPL R6, R11, R1
l3395: addVS R14, R2, R3, LSL R14
interrupt_806: l3396: subHIs R5, R8, R1
interrupt_714: l3397: cmnVS R11, R15
l3398: sbcVCs R4, R14, R11, ASR R10
interrupt_556: l3399: eorHIs R7, R6, R4, RRX 
interrupt_586: l3400: mov R11, #54
l3401: ldrVSB R11, [sp, -R11]
l3402: strh R3, [sp, #-22]
l3403: cmpHI R11, R6, ROR R5
l3404: stmLEIB R13, {R1, R3, R10}
l3405: teq R5, R9
l3406: mov R3, #36
l3407: str R2, [sp, -R3]!
l3408: adcGE R2, R2, R9
interrupt_984: l3409: ldr R9, l3411
l3410: b l3412
l3411: .word 1048484
l3412: swpb R11, R3, [R9]
l3413: movPLs R10, R15
interrupt_10: l3414: sbcNEs R7, R11, R2, ROR R4
interrupt_307: l3415: rsbs R2, R14, R15
interrupt_930: l3416: sbcLTs R9, R8, R15
l3417: strVCB R0, [sp, #+21]
l3418: rscs R7, R0, #171966464
l3419: str R8, [sp], #+48
l3420: adc R11, R2, R0, RRX 
interrupt_55: l3421: bicVCs R3, R3, #37888
l3422: b l3425
l3423: cmnMI R10, R8, LSR R4
l3424: orrs R12, R8, R4, RRX 
l3425: bics R3, R2, R7, ROR #31
interrupt_764: l3426: mov R3, #66
l3427: ldrMIsh R8, [sp, -R3]
l3428: eor R12, R5, R10, ASR #31
l3429: eors R8, R2, #91136
l3430: adds R14, R0, R6
l3431: tst R15, R6, LSR #30
l3432: strCSh R11, [sp, #-26]
l3433: mov R8, #41
l3434: strB R6, [sp, -R8]
interrupt_262: l3435: andGE R2, R14, #640
l3436: clz R8, R7
l3437: adds R0, R12, #2880
l3438: clzVS R2, R6
l3439: strMIh R7, [sp, #-60]
l3440: bicCS R7, R3, R1, LSL #26
l3441: .word 0b11100111001100100100010011010011
l3442: .word 0b11110011100111101000001110011001
l3443: mov R7, #0
l3444: ldr R9, [sp], +R7
l3445: sub R14, R5, R4, LSL R0
l3446: adcNE R6, R3, R11, ROR #8
l3447: adcEQ R2, R3, R5, ROR R14
l3448: swi #8431406
interrupt_784: l3449: mvn R2, #1073741846
l3450: sub R7, R14, #2560
l3451: cmp R6, R8
l3452: addCC R6, R1, #448790528
interrupt_334: l3453: ldr R6, l3455
l3454: b l3456
l3455: .word 1048516
l3456: swpLT R4, R2, [R6]
interrupt_561: l3457: orrLEs R1, R4, R15, ASR #4
l3458: ldr R6, [sp, #-36]
l3459: bNE l3464
l3460: cmnNE R10, R9, ROR #3
interrupt_598: l3461: adcGT R7, R15, R6, RRX 
l3462: sub R2, R2, R11, RRX 
interrupt_689: l3463: adc R14, R12, R11
interrupt_904: l3464: orr R8, R11, R12
l3465: rsb R7, R14, R10
interrupt_20: l3466: andMI R5, R11, R12, ASR R11
l3467: swi #14186152
l3468: cmnGT R11, R10
l3469: ldrsb R12, [sp, #-49]
l3470: swi #145231
l3471: mov R8, #24
l3472: ldr R3, [sp, -R8]!
l3473: orrCSs R3, R12, #1644167168
l3474: ldrsh R0, [sp, #+10]
l3475: adcMIs R8, R4, #720
l3476: bVS l3477
l3477: eorEQ R11, R2, #-2013265920
l3478: sbc R9, R14, R1, ASR R4
l3479: ldrPLh R8, [sp, #+18]
l3480: subs R2, R4, #716800
l3481: bPL l3482
l3482: sub R5, R3, #3
interrupt_809: l3483: cmpMI R6, #81
l3484: b l3490
l3485: add R1, R0, #151
l3486: rsbVCs R14, R0, #-1342177274
l3487: rsb R9, R15, R3, LSL #8
interrupt_538: l3488: sub R12, R6, R0
l3489: b l3491
interrupt_208: l3490: b l3486
l3491: .word 0b11110000101010001100111110011110
interrupt_376: l3492: bic R5, R4, R10
l3493: mov R0, #21
l3494: strB R11, [sp, -R0]
interrupt_709: l3495: mov R5, #2
l3496: strLEh R7, [sp, +R5]
l3497: tstHI R12, #4145152
l3498: mov R14, #14
l3499: ldrGEsh R3, [sp, +R14]
l3500: cmnHI R5, #-1073741767
interrupt_566: l3501: subLEs R14, R10, #35840
l3502: rsbGEs R7, R1, R5, ROR R1
l3503: rscs R12, R11, #-1660944384
l3504: cmnCS R11, R11, LSL R0
interrupt_955: l3505: swi #1759107
l3506: ldmDA R13!, {R1, R2, R6}
l3507: b l3516
l3508: add R1, R0, #135
l3509: subGE R3, R5, R5, LSR R14
interrupt_965: l3510: and R0, R3, R9, ASR #11
l3511: teqNE R1, R4, ROR R0
interrupt_534: l3512: teq R7, R4
l3513: teq R12, R3, LSL R2
l3514: rsb R2, R0, R10, ASR R4
interrupt_96: l3515: b l3517
interrupt_927: l3516: b l3509
l3517: rscEQs R5, R3, R8, ROR R1
l3518: orr R10, R15, R5, RRX 
interrupt_983: l3519: ands R8, R11, R0, ROR R1
l3520: rsb R2, R7, R6
interrupt_226: l3521: eorCC R10, R3, R9
l3522: addPLs R0, R3, R1
l3523: rsbVC R10, R15, R10, RRX 
l3524: subLE R7, R12, R5, RRX 
l3525: .word 0b01010111000101011000010010010010
l3526: bicCS R1, R11, R0, ROR R14
l3527: rsbVSs R1, R5, R10
l3528: cmn R7, R1, ROR R5
l3529: orrCC R12, R14, R1, ASR #18
l3530: rsbs R4, R7, #92274688
l3531: bicMI R4, R4, R11, RRX 
l3532: subLE R7, R8, R5, ROR R3
interrupt_664: l3533: strB R10, [sp, #-13]
interrupt_568: l3534: ldmDA R13!, {R4, R5, R8}
l3535: ldrHIh R5, [sp, #+38]
l3536: mov R6, #8
interrupt_463: l3537: ldr R1, [sp], +R6
l3538: mov R1, #22
interrupt_241: l3539: strVCh R4, [sp, +R1]
l3540: cmn R14, R3
interrupt_755: l3541: tst R12, R10, ROR R14
l3542: mvnGTs R8, R8, RRX 
interrupt_929: l3543: addLE R14, R5, R4, ASR R11
l3544: rsc R12, R11, R0, RRX 
l3545: tst R5, R15, LSR #17
l3546: ldr R10, l3548
l3547: b l3549
interrupt_97: l3548: .word 1048504
interrupt_128: l3549: swpGE R11, R12, [R10]
l3550: tst R8, #8257536
l3551: stmMIIA R13, {R0, R1, R2, R4, R7, R8, R10, R13, R14}
l3552: .word 0b11111111110011000101000111101000
l3553: orr R8, R12, R1
l3554: swi #15747400
l3555: bVS l3561
l3556: add R1, R0, #252
interrupt_131: l3557: tstGE R15, R0, LSR #9
l3558: rscLEs R12, R2, R6, ROR R6
l3559: andNEs R3, R10, R11, LSR R5
interrupt_777: l3560: b l3562
l3561: b l3557
l3562: cmpHI R1, R1, LSL R1
l3563: mov R14, #4
l3564: strVSh R11, [sp, +R14]
l3565: nop
l3566: ldr R4, l3568
interrupt_342: l3567: b l3569
l3568: .word 1048500
l3569: swpGT R11, R6, [R4]
l3570: swi #14288703
l3571: tst R11, R10, ASR #15
l3572: subs R2, R9, R10, LSR R6
interrupt_271: l3573: subGE R11, R8, R0, LSL R10
l3574: ldr R14, l3576
l3575: b l3577
l3576: .word 1048552
interrupt_258: l3577: swpCSb R7, R11, [R14]
l3578: ldrHIsb R2, [sp, #+42]
l3579: mov R14, #30
l3580: ldrEQsb R4, [sp, -R14]
l3581: swi #7787193
l3582: adcNEs R10, R15, R1
l3583: teqHI R8, R10, LSR #9
l3584: rsbs R11, R14, R8, RRX 
l3585: mvn R5, R10, LSR R5
interrupt_620: l3586: strCSB R3, [sp, #+4]
l3587: mov R10, #10
l3588: ldrPLB R0, [sp, -R10]
l3589: subPLs R3, R5, R2, RRX 
l3590: ands R1, R6, R3
l3591: orrCS R14, R15, #796
interrupt_389: l3592: .word 0b11111111010001101111010001001110
l3593: swi #13922845
l3594: adds R6, R14, R2, LSR #11
l3595: stmGEIA R13, {R0, R4, R6, R7, R9, R10, R13}
l3596: sbcMI R4, R5, R0
l3597: swi #4302585
l3598: ldr R9, l3600
l3599: b l3601
l3600: .word 1048504
l3601: swp R10, R11, [R9]
l3602: sub R12, R12, R9, RRX 
l3603: add R11, R14, R2, LSL R7
l3604: rscNEs R2, R8, R10
l3605: mvns R4, R8, ROR #30
interrupt_808: l3606: cmpGE R9, #416
l3607: teq R8, R2, RRX 
l3608: tst R7, R8
l3609: swi #15038516
l3610: subLS R12, R5, R9, ROR #7
l3611: addPL R10, R11, R7, LSR R11
l3612: adcHI R8, R8, #987136
l3613: rscLEs R1, R11, R0, ASR R11
l3614: ands R1, R4, #943718400
interrupt_897: l3615: ldr R6, l3617
l3616: b l3618
l3617: .word 1048536
l3618: swpCCb R14, R1, [R6]
l3619: swi #12306037
l3620: andLTs R0, R9, R1, RRX 
interrupt_923: l3621: cmp R5, #1073741872
l3622: mov R5, #28
l3623: ldr R7, [sp, -R5]
l3624: ldr R12, [sp], #+8
l3625: ldrB R11, [sp, #-11]
interrupt_702: l3626: orrGT R6, R12, R8
l3627: .word 0b00010110010100000011101011110110
l3628: bCC l3637
l3629: add R1, R0, #198
interrupt_238: l3630: tst R5, R2, RRX 
l3631: orrLT R2, R1, #165
l3632: subLE R12, R3, R0
l3633: mvnEQs R6, R15, ASR #19
l3634: mov R7, #6144
l3635: add R1, R11, R2
l3636: b l3638
l3637: b l3630
l3638: .word 0b10000011000011100111101001110000
l3639: ldrGEh R4, [sp, #-24]
l3640: ldmIA R13!, {R0, R4, R7, R8, R12}
l3641: and R14, R14, R7, LSR #13
interrupt_936: l3642: bLE l3647
interrupt_213: l3643: subCCs R12, R10, R10, LSL R14
l3644: mvnCC R4, R9, LSL #7
interrupt_395: l3645: subCSs R10, R10, R1, RRX 
l3646: cmpVS R5, R1, LSL #22
l3647: cmp R11, #139
l3648: sbcs R2, R6, R3
l3649: subs R1, R1, #1476395008
l3650: rscVCs R9, R4, R14, RRX 
l3651: orrEQ R3, R7, #30146560
l3652: bPL l3658
interrupt_111: l3653: sub R10, R14, R14, LSL R0
l3654: teqLS R10, R6
l3655: teqEQ R14, #15728640
interrupt_5: l3656: cmn R15, R1, LSR #4
interrupt_107: l3657: clz R10, R10
l3658: subEQ R14, R8, R15
l3659: sbcs R8, R8, #507904
interrupt_917: l3660: ldr R6, l3662
l3661: b l3663
l3662: .word 1048524
l3663: swp R9, R9, [R6]
l3664: adc R8, R10, R7
interrupt_294: l3665: strVCB R3, [sp, #-8]
l3666: subs R9, R10, R0
l3667: clz R14, R5
l3668: teq R0, R5, ASR R5
l3669: mvns R0, R4, ASR R3
l3670: mov R12, #34
l3671: ldrGTh R4, [sp, -R12]
interrupt_308: l3672: cmnGT R6, R4
l3673: sbcs R10, R12, R3, RRX 
l3674: .word 0b11110011001110011111010000100001
l3675: ldrLTh R12, [sp, #-2]
interrupt_529: l3676: sbcEQ R5, R15, R7, LSL #15
interrupt_6: l3677: sub R8, R5, R7
l3678: str R0, [sp], #-36
l3679: strh R9, [sp, #+16]
l3680: ldmDA R13!, {R1, R6, R7, R8}
l3681: .word 0b11111000000001010011000110000111
l3682: .word 0b11111111011011001011011000100000
l3683: strGEh R8, [sp, #+40]
l3684: ldr R1, l3686
l3685: b l3687
l3686: .word 1048552
interrupt_229: l3687: swpLSb R6, R4, [R1]
l3688: swi #2967789
l3689: ldrsh R3, [sp, #+36]
l3690: andNE R8, R3, R14, ROR R4
l3691: bicHI R14, R4, #3712
l3692: teq R2, R8
l3693: ldr R12, l3695
interrupt_688: l3694: b l3696
l3695: .word 1048544
l3696: swpb R1, R1, [R12]
l3697: .word 0b11110100100101001011100000110110
l3698: rscCSs R8, R15, R2
l3699: orrLT R14, R3, R2
l3700: teq R10, R10, LSL R7
l3701: swi #266640
l3702: ldr R11, l3704
l3703: b l3705
l3704: .word 1048540
l3705: swpNEb R0, R10, [R11]
l3706: adc R4, R15, R15
l3707: ldrPL R10, [sp, #+64]
l3708: strB R2, [sp, #-5]
l3709: strGEh R10, [sp, #+20]
interrupt_387: l3710: cmn R3, #-1073741803
l3711: rscs R10, R2, #-2013265918
l3712: swi #353828
l3713: ldr R6, l3715
l3714: b l3716
l3715: .word 1048520
l3716: swpb R2, R9, [R6]
l3717: stmIB R13!, {R13, R15}
l3718: strB R1, [sp, #+36]
l3719: swi #11034038
l3720: ldrNEB R9, [sp, #+41]
interrupt_211: l3721: orrs R12, R7, R4
l3722: sub R10, R5, R0, LSL R14
l3723: movLE R11, R7, LSR #19
interrupt_732: l3724: sbcGEs R9, R8, R3
l3725: b l3733
interrupt_491: l3726: add R1, R0, #239
interrupt_750: l3727: cmnLS R4, R7
interrupt_658: l3728: sub R14, R0, R15
interrupt_841: l3729: cmnLS R3, R0, LSR #3
l3730: teq R2, #2686976
l3731: mvnCSs R1, R4, LSR #10
l3732: b l3734
l3733: b l3727
l3734: mov R12, #36
l3735: ldr R12, [sp, +R12]!
l3736: clzEQ R1, R1
l3737: ldmDA R13!, {R0, R6, R12}
l3738: bicLS R1, R8, R12, ROR R0
interrupt_163: l3739: ldrHIh R3, [sp, #-6]
interrupt_132: l3740: ldrsb R4, [sp, #-30]
interrupt_29: l3741: ldr R12, l3743
interrupt_789: l3742: b l3744
l3743: .word 1048496
l3744: swpVS R3, R4, [R12]
l3745: .word 0b01000011010001110001001110001111
interrupt_967: l3746: add R1, R1, R6, RRX 
interrupt_411: l3747: rsbs R10, R5, R4, LSR #27
l3748: mov R4, #2
l3749: ldrB R11, [sp, +R4]
l3750: adcs R1, R7, R0, LSR R11
interrupt_432: l3751: mvnLS R14, R7
interrupt_4: l3752: clz R2, R9
l3753: tst R12, #139264
l3754: cmn R10, R1
l3755: .word 0b01110011000001100010010001100010
l3756: .word 0b11110011000011010111101001110101
l3757: strLSB R10, [sp, #+1]
l3758: .word 0b11111111111010101110010011110001
l3759: mov R2, #32
interrupt_746: l3760: strMIh R12, [sp, -R2]
interrupt_57: l3761: cmnLS R4, R10, ASR #10
l3762: mvnNE R11, #253755392
l3763: stmDA R13!, {R0}
l3764: teq R3, #104857600
l3765: mov R12, #22
l3766: ldrGEsh R1, [sp, -R12]
l3767: rsbCC R9, R4, R15, LSL #24
interrupt_887: l3768: orrs R10, R6, R9, LSR #18
l3769: subs R11, R15, #11403264
l3770: sbcVCs R7, R1, R0, ROR R12
interrupt_310: l3771: swi #11732004
l3772: adc R9, R3, #50688
l3773: sbcVS R8, R1, R2, LSL #15
l3774: ldrh R6, [sp, #+34]
l3775: subGTs R12, R4, R9, LSL #15
interrupt_47: l3776: mvnCSs R5, R8, ASR #3
l3777: ldmNEDA R13, {R3}
interrupt_374: l3778: stmDB R13!, {R13}
interrupt_919: l3779: mov R14, #42
l3780: strh R0, [sp, +R14]
l3781: orrs R1, R9, R2
l3782: teq R8, R12, LSL R11
l3783: mov R1, #20
l3784: ldrsb R1, [sp, +R1]
l3785: ldrsh R1, [sp, #-28]
interrupt_495: l3786: rsbLSs R10, R4, R1, LSR #0
l3787: swi #1014784
l3788: .word 0b01110110100101111100100000011110
l3789: ldmIB R13!, {R1, R2, R3, R4, R5, R6, R8, R9}
l3790: teq R5, R7, ROR #8
interrupt_50: l3791: ldr R3, [sp], #-52
l3792: swi #14925459
interrupt_720: l3793: mov R12, #35
l3794: ldrB R14, [sp, +R12]
interrupt_66: l3795: cmp R12, #155648
l3796: ldr R9, [sp], #+44
l3797: eorVS R11, R3, R7
l3798: ldrsh R1, [sp, #-56]
l3799: subLT R8, R15, R7
interrupt_665: l3800: strPLB R4, [sp, #-45]
l3801: stmDB R13, {R0, R3, R4, R5, R8, R13, R14, R15}
l3802: .word 0b00110110010110100010100101110110
l3803: adcNE R8, R5, #56064
l3804: bHI l3807
l3805: rscVSs R11, R5, R6
l3806: clz R3, R3
l3807: bic R9, R1, R6, LSL #28
interrupt_834: l3808: cmpGT R14, #-1476395008
l3809: ldrh R10, [sp, #-12]
l3810: mov R3, #13
l3811: strB R7, [sp, -R3]
l3812: orrPL R10, R6, #10420224
interrupt_31: l3813: tst R9, #-268435447
l3814: sbc R8, R9, #746586112
l3815: andNE R6, R0, R1
l3816: mov R12, #47
l3817: ldrsb R8, [sp, -R12]
l3818: mov R14, #30
l3819: ldrsh R7, [sp, -R14]
l3820: swi #3210983
l3821: mov R3, #0
l3822: ldrVCh R10, [sp, +R3]
interrupt_924: l3823: ldrEQB R14, [sp, #-5]
interrupt_256: l3824: mov R12, #24
l3825: ldrsb R7, [sp, -R12]
l3826: mov R14, #22
l3827: ldrsh R9, [sp, -R14]
l3828: tstGT R12, R3, LSL R5
l3829: ldrB R2, [sp, #+11]
l3830: cmpEQ R5, #94
l3831: stmDA R13!, {R13}
l3832: strCSh R6, [sp, #+8]
l3833: ldr R1, [sp], #-52
l3834: orrs R0, R1, R4, RRX 
l3835: .word 0b11110100001101011000001110010111
l3836: rsbVSs R1, R6, #-2147483637
l3837: bics R6, R0, #228589568
l3838: mov R10, #60
l3839: ldr R1, [sp, +R10]!
interrupt_864: l3840: swi #5464596
l3841: mov R5, #26
interrupt_753: l3842: ldrsh R12, [sp, -R5]
l3843: b l3850
l3844: subs R1, R0, R10
l3845: movEQ R8, R1
l3846: cmn R5, R11
l3847: tstPL R9, R14, ASR #27
l3848: mvnVS R1, R12
interrupt_459: l3849: mvn R7, #1073741827
l3850: cmpGT R2, #207
l3851: cmnLS R14, R12, ROR #8
l3852: adc R10, R1, R3, ROR #6
l3853: swi #14780544
interrupt_341: l3854: cmp R14, #21760
l3855: cmn R3, R9, ASR #3
l3856: ldrB R1, [sp, #+6]
l3857: mov R6, #48
l3858: ldrLEsh R4, [sp, -R6]
l3859: clzEQ R14, R7
interrupt_199: l3860: ldr R4, l3862
interrupt_7: l3861: b l3863
l3862: .word 1048508
l3863: swpVSb R7, R0, [R4]
l3864: .word 0b11111000101001111011001011001011
l3865: tst R14, R1
interrupt_393: l3866: ldr R5, l3868
l3867: b l3869
l3868: .word 1048516
l3869: swpPL R10, R8, [R5]
l3870: ldr R9, [sp], #+8
l3871: cmpGT R2, R10, LSR #6
l3872: mov R2, #12
interrupt_402: l3873: ldr R11, [sp], -R2
l3874: subCC R12, R6, R0, RRX 
l3875: ldrLTh R9, [sp, #-14]
l3876: rscVC R2, R1, R6
l3877: subLE R1, R14, R9, ROR R10
l3878: eors R6, R11, R0, ROR R0
l3879: ldr R7, l3881
interrupt_847: l3880: b l3882
l3881: .word 1048532
interrupt_313: l3882: swpVS R2, R11, [R7]
l3883: mov R4, #48
l3884: ldrsb R14, [sp, -R4]
l3885: mov R12, #0
l3886: ldrGTh R14, [sp, +R12]
l3887: ldr R6, l3889
l3888: b l3890
l3889: .word 1048520
l3890: swpHI R8, R5, [R6]
l3891: teq R12, R3, ASR #25
l3892: swi #15093559
l3893: swi #3967066
interrupt_340: l3894: ldr R0, l3896
interrupt_289: l3895: b l3897
l3896: .word 1048548
l3897: swpGT R11, R9, [R0]
l3898: ldrsh R12, [sp, #+6]
l3899: ldrLEB R6, [sp, #-9]
l3900: subMI R3, R14, R1
l3901: mvnLT R7, R7, LSR R12
l3902: subPLs R4, R10, #654311424
l3903: bicGT R1, R1, R7
l3904: teq R1, R2
l3905: subLT R6, R0, R0, ASR #13
interrupt_483: l3906: bNE l3913
l3907: add R1, R0, #228
l3908: mvn R0, #156672
l3909: mvnVSs R3, #6815744
l3910: rsc R0, R0, R9
l3911: sub R4, R6, R0, ASR #17
l3912: b l3914
l3913: b l3908
l3914: eors R3, R6, #2883584
l3915: strVCB R10, [sp, #-53]
l3916: b l3923
l3917: add R1, R0, #73
l3918: bicEQs R12, R11, R5, LSR R0
l3919: rsb R10, R6, R10, RRX 
l3920: sbcs R11, R1, R11, ROR #29
l3921: orrPLs R7, R1, #40960
l3922: b l3924
l3923: b l3918
l3924: andNEs R6, R14, #53248
l3925: orr R14, R3, R7
interrupt_461: l3926: mov R5, R8
l3927: ldrLS R8, [sp, #-48]
l3928: eor R9, R0, R15
l3929: adcs R10, R3, R4, LSL R10
interrupt_496: l3930: sbcMIs R3, R9, R1
l3931: add R14, R2, R12, LSL #13
l3932: andHIs R12, R5, R1, LSL #19
l3933: subGE R2, R15, R14, RRX 
l3934: adcs R6, R0, R10, ROR R4
l3935: ldr R12, l3937
l3936: b l3938
l3937: .word 1048536
l3938: swp R1, R4, [R12]
interrupt_509: l3939: mov R2, #50
interrupt_69: l3940: strh R3, [sp, -R2]
l3941: bGT l3951
l3942: clz R6, R9
l3943: subVC R7, R7, R1, LSR R10
l3944: teq R5, R10, ROR #13
l3945: movs R10, #14528
l3946: mvnVS R11, R14
l3947: subs R10, R9, R7, LSL R1
l3948: sbc R1, R15, R10
interrupt_807: l3949: mvnVS R9, R14, ROR R4
l3950: clzGT R9, R3
l3951: cmn R4, R8, LSL R8
interrupt_722: l3952: clzMI R10, R2
l3953: ldrLEB R7, [sp, #-33]
l3954: subMIs R3, R15, #11534336
l3955: movLSs R12, #296
l3956: subVC R3, R0, R11, ROR R9
interrupt_405: l3957: ldrsh R10, [sp, #-2]
l3958: addCSs R10, R0, R15, ROR #12
l3959: bicLEs R4, R8, R3, LSR #4
interrupt_218: l3960: stmVCDB R13, {R13}
l3961: strGTB R7, [sp, #-42]
l3962: clz R8, R3
l3963: clz R5, R14
l3964: swi #11189776
interrupt_286: l3965: eors R3, R1, #1392640
l3966: ldmIB R13!, {R3, R5}
l3967: swi #13283589
l3968: ands R10, R7, R2
interrupt_652: l3969: adc R3, R12, R4
l3970: addGEs R6, R11, #24832
l3971: strh R3, [sp, #-40]
l3972: subLS R6, R11, #253952
interrupt_371: l3973: ldmIB R13!, {R6}
l3974: mov R4, #13
l3975: strLSB R2, [sp, -R4]
l3976: orrLS R4, R11, R11, LSL #7
l3977: orrPL R6, R11, R4, LSL #11
l3978: strh R3, [sp, #-64]
l3979: eorGEs R2, R12, R3
l3980: orrVCs R7, R6, R2, LSR R7
interrupt_353: l3981: mov R8, #25
interrupt_856: l3982: strLSB R12, [sp, -R8]
l3983: stmIA R13!, {R5}
interrupt_391: l3984: stmDA R13!, {R0, R1, R3, R4, R6, R9, R10, R12, R14}
interrupt_359: l3985: cmn R4, R12, LSR R3
l3986: orr R5, R11, R4
l3987: rsbEQs R12, R15, R7
l3988: mov R9, #28
l3989: ldr R10, [sp], +R9
l3990: cmpVC R7, R4
l3991: subGE R7, R14, #29360128
l3992: mov R9, #2
l3993: ldrsb R7, [sp, -R9]
interrupt_487: l3994: clzVS R10, R7
interrupt_508: l3995: b l4004
l3996: add R1, R0, #239
l3997: rscGE R14, R9, R1
l3998: clzLT R4, R5
l3999: tst R8, #-973078528
l4000: eorPLs R8, R12, #549453824
interrupt_358: l4001: eorVC R11, R5, R14, RRX 
l4002: cmnEQ R12, R1
interrupt_384: l4003: b l4005
l4004: b l3997
interrupt_138: l4005: and R6, R6, R6, ROR #6
l4006: mov R12, #4
l4007: ldrPL R6, [sp, -R12]
interrupt_444: l4008: subGEs R11, R11, R2
interrupt_637: l4009: mov R4, #8
l4010: strCCh R4, [sp, -R4]
l4011: strh R9, [sp, #+8]
l4012: ldrh R7, [sp, #+10]
l4013: swi #2185117
interrupt_277: l4014: rsb R8, R0, R12, ROR R1
interrupt_254: l4015: sbcHIs R6, R8, R3, LSR #0
interrupt_735: l4016: cmnMI R9, #475136
l4017: tst R11, #219136
l4018: b l4022
l4019: add R1, R0, #93
l4020: bicLTs R10, R10, #114688
l4021: b l4023
l4022: b l4020
l4023: ldmIA R13!, {R3}
l4024: adcs R10, R1, R12, RRX 
l4025: rsc R5, R10, R3, ROR R4
l4026: ldr R7, l4028
interrupt_501: l4027: b l4029
interrupt_35: l4028: .word 1048548
l4029: swpb R9, R2, [R7]
l4030: subLE R9, R11, R8, ROR #25
interrupt_347: l4031: ldr R1, l4033
l4032: b l4034
l4033: .word 1048520
l4034: swpb R2, R4, [R1]
interrupt_962: l4035: bics R7, R2, R5, LSL R12
l4036: bEQ l4039
l4037: clzGE R5, R7
interrupt_326: l4038: adcHI R14, R0, R3, LSR #23
l4039: teqCS R7, R14, RRX 
interrupt_292: l4040: rscLTs R2, R2, R1
interrupt_464: l4041: bicVCs R12, R0, R6
interrupt_613: l4042: .word 0b11110101110111100101011000010001
l4043: orrs R10, R8, #26368
l4044: b l4050
l4045: add R1, R0, #188
l4046: tstLE R0, R1, ASR R9
l4047: mvns R0, R0
l4048: movPLs R2, R8, LSR #15
l4049: b l4051
l4050: b l4046
l4051: andPLs R11, R3, R5, LSR #15
l4052: mov R10, #36
interrupt_80: l4053: ldrCSh R11, [sp, -R10]
interrupt_68: l4054: rsc R11, R2, R12, RRX 
l4055: str R0, [sp, #-40]!
l4056: mov R1, #28
l4057: strLSB R3, [sp, +R1]
l4058: eor R4, R11, R14, RRX 
l4059: cmp R10, R5, ASR R3
interrupt_638: l4060: eorNEs R5, R6, #2
interrupt_369: l4061: rscVS R6, R12, R3
l4062: subs R9, R10, #105
interrupt_934: l4063: rsbs R9, R8, R8
l4064: ldr R2, l4066
l4065: b l4067
l4066: .word 1048512
l4067: swp R7, R8, [R2]
l4068: adcGT R11, R0, R12, LSL R0
l4069: mvnVCs R10, R10, ASR R12
l4070: ldr R1, l4072
l4071: b l4073
interrupt_761: l4072: .word 1048536
interrupt_683: l4073: swpCSb R10, R5, [R1]
l4074: orrLEs R5, R2, R15
l4075: .word 0b11111000011011010111110001000110
l4076: cmn R1, R11, ASR #24
l4077: cmn R1, R5
l4078: cmpCC R12, R4, ROR R8
l4079: ldrsb R4, [sp, #+10]
l4080: b l4085
l4081: cmnLE R14, R10, LSR R11
l4082: cmnLS R3, R6, ROR #23
l4083: clzCC R11, R5
l4084: clzLE R2, R11
l4085: rsbCS R3, R0, R4, ASR R3
l4086: swi #11071391
l4087: strCCh R5, [sp, #+8]
l4088: ands R14, R5, R14, ROR R10
interrupt_11: l4089: mov R14, #25
l4090: ldrsb R4, [sp, -R14]
l4091: adcLT R9, R1, #-905969664
l4092: teq R4, R1
l4093: cmp R6, R6, LSR R10
interrupt_977: l4094: subs R11, R10, #16580608
l4095: rsbs R12, R4, R1, RRX 
l4096: orrPLs R14, R12, R4, ROR R11
l4097: teqMI R0, R10, LSR #4
l4098: cmp R11, #428
l4099: mvnGTs R1, R6, LSR #25
interrupt_898: l4100: ldrLTsh R7, [sp, #+30]
interrupt_200: l4101: mov R14, R14
l4102: strVCh R8, [sp, #-18]
l4103: str R5, [sp], #-16
l4104: sbcs R9, R3, R4
l4105: mov R8, #20
interrupt_669: l4106: strGTB R6, [sp, +R8]
interrupt_712: l4107: ldr R5, l4109
interrupt_209: l4108: b l4110
l4109: .word 1048488
l4110: swpb R3, R1, [R5]
l4111: adcGEs R7, R5, R15
l4112: bicPLs R7, R14, R11, ROR #10
l4113: movs R0, R15
l4114: mov R1, R1, ROR R12
l4115: mov R9, #12
interrupt_987: l4116: strLEB R12, [sp, -R9]
interrupt_33: l4117: orrs R11, R12, #48640
l4118: mov R10, #26
l4119: strCSB R14, [sp, +R10]
l4120: .word 0b11111000001110010111100101101100
l4121: subCS R9, R7, R10
l4122: cmn R4, R6, RRX 
interrupt_740: l4123: cmnLS R1, R6
interrupt_90: l4124: adc R1, R5, R10, RRX 
l4125: ldr R7, l4127
l4126: b l4128
l4127: .word 1048532
l4128: swpLTb R12, R6, [R7]
interrupt_248: l4129: mov R3, #31
l4130: strCCB R9, [sp, +R3]
l4131: add R4, R4, R8
l4132: clzLT R0, R3
l4133: teqHI R2, R5, ASR R6
l4134: mov R4, #21
l4135: strB R8, [sp, +R4]
l4136: andGE R3, R12, #230686720
l4137: movVC R11, R15
interrupt_198: l4138: cmnCS R8, R10, LSL #8
l4139: teq R5, R10, RRX 
l4140: ldr R1, l4142
interrupt_969: l4141: b l4143
interrupt_573: l4142: .word 1048520
l4143: swpb R3, R5, [R1]
l4144: cmnVC R6, R0, LSR R5
interrupt_796: l4145: subLSs R2, R4, R12, ROR #28
l4146: adc R6, R8, R11, RRX 
l4147: cmpLE R0, #166912
interrupt_989: l4148: strNEh R5, [sp, #+60]
interrupt_215: l4149: orrs R8, R14, R0
l4150: mov R4, #34
l4151: ldrsh R6, [sp, +R4]
l4152: swi #12857486
l4153: tst R14, R11
l4154: eor R3, R0, R14, ROR R5
l4155: adcLTs R0, R12, #16000
l4156: mov R0, #22
l4157: strMIh R10, [sp, +R0]
l4158: bic R3, R1, R6, LSR #22
l4159: eors R1, R0, R0, RRX 
l4160: sbcVSs R5, R14, R7, RRX 
l4161: ldr R4, l4163
l4162: b l4164
l4163: .word 1048500
l4164: swpNE R1, R8, [R4]
l4165: subHIs R3, R9, R2, RRX 
interrupt_207: l4166: .word 0b11111001001011000000110010100001
l4167: mvn R5, R8
l4168: strVSh R4, [sp, #+36]
l4169: strLSh R12, [sp, #+28]
interrupt_542: l4170: andMI R8, R11, R11, ASR #1
l4171: cmp R15, R3, LSL #22
l4172: orrLEs R11, R7, #62128128
interrupt_398: l4173: movGT R5, R0
l4174: orrs R1, R6, R8, ASR R2
l4175: subCCs R14, R4, #13504
l4176: ldr R11, l4178
l4177: b l4179
l4178: .word 1048528
l4179: swpMIb R6, R1, [R11]
l4180: eorHIs R8, R6, R12, LSL #0
l4181: bEQ l4188
l4182: add R1, R0, #40
interrupt_974: l4183: mvn R1, R4, ASR #30
l4184: subMI R0, R1, #448
l4185: bics R5, R8, R1, ASR R8
interrupt_778: l4186: movs R12, R6
l4187: b l4189
l4188: b l4183
l4189: adc R5, R11, R9
interrupt_171: l4190: clz R1, R8
l4191: mov R10, #8
l4192: strLTh R6, [sp, -R10]
l4193: strB R2, [sp, #+18]
l4194: strMIh R0, [sp, #+42]
l4195: cmnCS R6, R14
l4196: .word 0b11111111011001001100110111111001
l4197: swi #6778809
l4198: ldrHIB R0, [sp, #-8]
l4199: cmpVC R12, #62
l4200: rscHIs R7, R4, R3
l4201: clz R0, R2
l4202: cmn R4, #188416
l4203: str R10, [sp, #+28]!
l4204: addHI R9, R9, R8, ASR #10
l4205: cmp R9, #8
l4206: bVC l4216
l4207: cmnLS R14, R3
l4208: movs R6, R2, RRX 
l4209: teq R11, R10
l4210: sbcGE R8, R4, R3
interrupt_748: l4211: cmn R6, R5
l4212: sbcs R0, R5, R4, RRX 
l4213: clz R14, R11
l4214: adc R1, R6, R2, ASR R6
l4215: rsbHIs R11, R11, R14, LSR R8
interrupt_305: l4216: sub R3, R6, #241
l4217: teqVS R11, R12
l4218: stmIB R13!, {R13, R15}
l4219: ldmDA R13!, {R0}
l4220: adds R12, R2, R4
l4221: strh R7, [sp, #-8]
l4222: cmp R10, R9
l4223: mov R7, #12
interrupt_255: l4224: ldr R14, [sp], -R7
l4225: rsbs R10, R10, #-1946157056
interrupt_39: l4226: strCCh R11, [sp, #+18]
l4227: mov R10, #26
l4228: strh R2, [sp, -R10]
l4229: strB R14, [sp, #+23]
l4230: strLTB R14, [sp, #-25]
interrupt_228: l4231: ldrNEh R4, [sp, #+14]
l4232: mov R7, #6
l4233: strLTB R5, [sp, +R7]
l4234: .word 0b10110111111011110110011000110100
l4235: ldrLTh R9, [sp, #-22]
l4236: movs R1, R3, RRX 
l4237: strMI R0, [sp, #-24]
interrupt_175: l4238: subCC R1, R1, R2
l4239: teq R0, R9
l4240: ldrLTsh R11, [sp, #+30]
l4241: clzHI R1, R7
l4242: .word 0b11110110110011001011110011011010
l4243: orrs R7, R1, #450560
l4244: .word 0b01000111001100100111101000111101
l4245: teqCC R1, R6, RRX 
l4246: mov R0, #8
l4247: str R10, [sp, +R0]
l4248: mov R11, #25
l4249: strCSB R10, [sp, +R11]
l4250: .word 0b11110101111010011110101011011011
interrupt_32: l4251: mov R12, #30
interrupt_301: l4252: strGTB R7, [sp, +R12]
l4253: ldrNEsb R3, [sp, #+0]
l4254: tst R3, R5, ASR R6
l4255: mov R7, #8
l4256: ldrB R14, [sp, +R7]
l4257: adds R1, R10, R0
l4258: rscLT R12, R0, #201326595
l4259: mvns R7, #2352
l4260: adc R7, R7, R5
l4261: bVS l4269
l4262: add R1, R0, #127
l4263: subGE R8, R12, R12
l4264: rsc R11, R7, #1677721601
l4265: mvnMIs R12, R15, LSR #18
l4266: adds R0, R4, R5, ROR #17
l4267: adds R5, R3, R4, LSR #18
l4268: b l4270
l4269: b l4263
interrupt_772: l4270: movVS R9, #218
l4271: ldrCCsh R14, [sp, #-16]
l4272: ldr R12, l4274
l4273: b l4275
l4274: .word 1048548
l4275: swp R2, R5, [R12]
l4276: ldr R8, l4278
interrupt_687: l4277: b l4279
l4278: .word 1048536
l4279: swp R11, R7, [R8]
interrupt_569: l4280: teqGE R2, #14221312
l4281: ldrEQsb R12, [sp, #+25]
l4282: .word 0b11111000000101001100000110110010
l4283: .word 0b10100110100000100001110010111111
l4284: subGEs R12, R8, R15, RRX 
l4285: rscMI R12, R7, R2
l4286: b l4290
interrupt_631: l4287: add R1, R0, #224
l4288: bic R10, R14, R2, ASR R10
interrupt_706: l4289: b l4291
l4290: b l4288
l4291: b l4296
l4292: add R1, R0, #137
l4293: orrLS R2, R9, #14417920
l4294: movs R12, #3735552
l4295: b l4297
interrupt_119: l4296: b l4293
l4297: rsbs R8, R12, #1048576000
l4298: rsb R9, R4, R15, LSL #10
interrupt_494: l4299: ldr R7, l4301
l4300: b l4302
l4301: .word 1048536
l4302: swp R0, R6, [R7]
l4303: stmIA R13!, {R2, R3, R4, R5, R6, R8, R10, R11, R12}
l4304: addCC R14, R7, #4992
l4305: stmDB R13!, {R13, R14}
l4306: bic R7, R9, R11, ASR #26
l4307: sbcGEs R8, R12, R7, ROR R10
l4308: ldmDA R13!, {R5}
l4309: clzVC R9, R10
l4310: ldrLTsb R12, [sp, #+0]
interrupt_547: l4311: b l4319
l4312: add R1, R0, #201
interrupt_201: l4313: cmn R8, R4, RRX 
l4314: cmnVC R5, R12
interrupt_142: l4315: cmpMI R12, R4, LSR R7
l4316: tstMI R8, R3, RRX 
l4317: eorHI R11, R14, #264241152
l4318: b l4320
l4319: b l4313
l4320: .word 0b11100011000010011101100001010111
l4321: bHI l4326
l4322: adcs R4, R15, #624
interrupt_991: l4323: rsbVC R9, R14, R11, LSL #20
interrupt_723: l4324: sbcs R1, R12, #32512
l4325: rsb R0, R6, #123904
interrupt_115: l4326: cmpVS R0, R7
l4327: mov R0, #21
l4328: strGEB R2, [sp, -R0]
l4329: eors R12, R11, #21495808
l4330: bic R3, R7, R2
l4331: eor R6, R12, #-402653184
interrupt_170: l4332: sbcs R12, R2, R5, RRX 
interrupt_771: l4333: rsbCCs R8, R8, R9, RRX 
l4334: bics R1, R14, R7, ASR #28
interrupt_385: l4335: subCS R9, R15, #5888
l4336: mov R4, #0
l4337: ldrGTsh R12, [sp, +R4]
l4338: ldrGEB R6, [sp, #-42]
l4339: ldr R4, l4341
l4340: b l4342
l4341: .word 1048512
l4342: swpHI R0, R7, [R4]
l4343: bics R4, R12, R5
interrupt_900: l4344: adcPL R9, R1, R10, ASR #12
l4345: ldr R14, l4347
l4346: b l4348
l4347: .word 1048548
l4348: swpHI R9, R11, [R14]
l4349: cmpCS R9, R5, ASR R14
l4350: mov R12, #14
l4351: ldrMIsh R7, [sp, -R12]
l4352: ldr R5, l4354
l4353: b l4355
l4354: .word 1048524
l4355: swpb R14, R7, [R5]
l4356: ldr R11, [sp], #-56
l4357: subLE R1, R2, R8
l4358: mov R2, #64
interrupt_878: l4359: ldrh R14, [sp, +R2]
l4360: bCS l4369
l4361: add R1, R0, #237
l4362: clzLS R11, R3
l4363: cmp R4, R6, ASR R9
l4364: adcVS R14, R10, R6, LSL R2
l4365: mvnGT R14, R6
l4366: adc R3, R14, R10, ROR R7
l4367: orrGEs R6, R0, R11, LSL #5
l4368: b l4370
l4369: b l4362
l4370: orrNEs R11, R0, #952
interrupt_906: l4371: .word 0b11111000000110000101011010011010
l4372: mov R5, #60
l4373: strCC R7, [sp, +R5]
l4374: cmnLE R9, R0, RRX 
l4375: orr R4, R10, #25952256
l4376: rsb R10, R4, R8, LSL R11
interrupt_193: l4377: tst R2, R2
l4378: andMI R5, R12, #13568
l4379: swi #10492958
l4380: b l4385
l4381: add R1, R0, #73
l4382: bicGT R14, R10, R9, ROR R1
l4383: cmpGT R14, R4, LSL R14
l4384: b l4386
l4385: b l4382
l4386: mov R10, R2, RRX 
l4387: ldrVCsh R1, [sp, #+72]
interrupt_446: l4388: ldrsb R0, [sp, #+49]
l4389: ldrh R8, [sp, #+0]
l4390: mov R11, #68
l4391: str R2, [sp, +R11]
l4392: b l4395
l4393: ands R5, R1, R2
l4394: rsb R9, R12, R2, ROR R6
l4395: subHI R4, R15, R11, RRX 
l4396: rsc R1, R15, R1
l4397: ldr R4, l4399
l4398: b l4400
l4399: .word 1048520
l4400: swpb R0, R5, [R4]
l4401: sbcLT R14, R9, #89128960
l4402: orrLSs R3, R8, R4
interrupt_83: l4403: eorPL R12, R10, R14, ASR R5
l4404: clzCC R9, R3
l4405: ldrB R10, [sp, #+20]
interrupt_435: l4406: ldr R0, l4408
l4407: b l4409
l4408: .word 1048536
l4409: swpLEb R9, R12, [R0]
l4410: .word 0b11111001000001010001001110101001
interrupt_252: l4411: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R12, R14}
interrupt_478: l4412: mov R7, #50
interrupt_386: l4413: ldrB R7, [sp, -R7]
l4414: adcCC R7, R14, #203
l4415: swi #3883179
l4416: mov R14, #48
l4417: ldr R12, [sp], -R14
l4418: orrGTs R4, R4, R9, RRX 
l4419: eorLT R10, R6, #7798784
l4420: stmIA R13!, {R13, R14, R15}
l4421: ldrVSh R14, [sp, #-2]
l4422: mov R8, #8
l4423: ldrsb R4, [sp, -R8]
l4424: b l4431
interrupt_401: l4425: rscs R6, R5, R4, RRX 
l4426: bics R14, R9, #8716288
l4427: tst R11, #768
l4428: subs R9, R9, R9, ASR #27
l4429: cmnHI R14, R9, LSR R7
interrupt_100: l4430: cmnNE R1, R11
interrupt_604: l4431: subHI R0, R0, R6
l4432: rscGEs R2, R15, #148
l4433: cmp R7, R9, ROR R10
l4434: orrLS R10, R4, R9, ASR R10
l4435: mov R5, #14
l4436: strB R6, [sp, -R5]
l4437: bic R5, R11, R0, LSR R1
l4438: subs R12, R0, #746586112
l4439: eorVSs R4, R0, #2457600
l4440: movGT R8, #12779520
l4441: strB R1, [sp, #+54]
l4442: orrLEs R5, R4, R15, RRX 
l4443: bCC l4451
l4444: add R1, R0, #214
l4445: cmpNE R2, R8, RRX 
l4446: orr R10, R2, R8
l4447: adc R0, R8, #1376256
l4448: andCS R10, R3, R5, RRX 
l4449: bicNEs R3, R7, R5
l4450: b l4452
l4451: b l4445
l4452: ldr R2, l4454
l4453: b l4455
l4454: .word 1048512
l4455: swpLTb R12, R7, [R2]
l4456: clzGE R9, R5
l4457: sbcVC R6, R5, R8, LSL #10
l4458: cmn R4, R5
l4459: tst R2, R10, RRX 
interrupt_466: l4460: bCC l4462
interrupt_348: l4461: mvnLE R9, R3
l4462: bicNE R10, R0, R0, LSR #5
l4463: teqNE R11, R8, ROR R5
l4464: ldrh R9, [sp, #+46]
interrupt_769: l4465: sbcCSs R6, R11, R4, RRX 
l4466: b l4473
interrupt_844: l4467: add R1, R0, #49
l4468: tst R11, R10, LSL #22
interrupt_858: l4469: subs R10, R2, R8, LSR #13
l4470: subLEs R8, R12, R6, RRX 
interrupt_725: l4471: mvns R6, R7, ASR R1
l4472: b l4474
interrupt_909: l4473: b l4468
l4474: addVS R8, R7, R0
l4475: .word 0b11111000101011010000001100011001
l4476: adcs R12, R5, R3, ROR #21
l4477: ldrLEB R7, [sp, #+52]
l4478: add R6, R7, R9
l4479: andEQs R1, R3, R14, LSR R4
interrupt_434: l4480: rscCC R9, R12, R6
l4481: clz R10, R4
l4482: strh R3, [sp, #+32]
l4483: mov R5, #20
interrupt_336: l4484: ldrVC R14, [sp, +R5]
interrupt_524: l4485: ldr R3, l4487
l4486: b l4488
l4487: .word 1048528
l4488: swp R9, R6, [R3]
interrupt_999: l4489: stmDA R13!, {R5}
interrupt_280: l4490: sbcLT R6, R6, R12, ROR #18
l4491: ldr R1, [sp, #+40]!
l4492: .word 0b11110110000011110100111110111110
l4493: adcLSs R0, R14, R12
l4494: addGT R2, R4, #888
l4495: b l4503
l4496: add R1, R0, #151
l4497: sbc R14, R10, R8, RRX 
l4498: teqEQ R2, #486539264
interrupt_245: l4499: teqMI R6, R9, RRX 
l4500: mvnMI R5, R10, ROR #5
interrupt_894: l4501: andNEs R7, R7, R1, ASR R5
interrupt_48: l4502: b l4504
l4503: b l4497
l4504: rscEQ R11, R2, R9, RRX 
interrupt_818: l4505: sub R8, R11, R11, LSL #3
interrupt_609: l4506: adcCC R5, R10, #11337728
l4507: teqVC R15, R7, RRX 
interrupt_257: l4508: ldmNEIA R13, {R1, R8, R11}
l4509: and R11, R12, R9
l4510: nop
interrupt_711: l4511: mov R5, #8
l4512: ldrB R12, [sp, +R5]
l4513: ldr R11, [sp, #-24]!
l4514: str R4, [sp, #-24]!
l4515: ldrLTh R1, [sp, #-4]
l4516: sbcGT R10, R8, R8, LSL #6
l4517: rsbCC R1, R12, R12, ROR #30
l4518: ldr R14, l4520
l4519: b l4521
l4520: .word 1048496
l4521: swpLTb R1, R10, [R14]
l4522: ldr R7, [sp, #+12]!
l4523: orrCS R14, R7, R15, LSR #26
l4524: cmpCS R9, #77
l4525: cmn R11, #-889192448
interrupt_316: l4526: rsbLSs R0, R8, #38400
l4527: b l4529
l4528: teqGE R4, R4
l4529: bicMI R5, R14, R2, LSL #1
interrupt_397: l4530: b l4531
l4531: subLTs R9, R1, R3
l4532: sbcGE R7, R7, R9
l4533: clz R10, R2
l4534: clzPL R7, R2
l4535: movVC R10, R4
l4536: rscs R5, R11, #169984
l4537: strB R9, [sp, #+26]
interrupt_403: l4538: teqNE R14, R9
interrupt_296: l4539: strGTh R12, [sp, #+52]
interrupt_81: l4540: teqCS R3, #1073741873
interrupt_872: l4541: ldr R8, l4543
l4542: b l4544
interrupt_287: l4543: .word 1048500
interrupt_303: l4544: swpLT R11, R11, [R8]
interrupt_281: l4545: clzCC R3, R3
l4546: ldr R10, [sp, #+8]!
l4547: mov R3, #38
l4548: ldrGTh R1, [sp, +R3]
l4549: mvn R9, #-1476395008
l4550: teqLS R2, R12, ASR R12
l4551: adds R12, R2, R12
l4552: mov R14, #49
l4553: strB R6, [sp, +R14]
l4554: bHI l4563
interrupt_502: l4555: add R1, R0, #120
l4556: cmnNE R1, R7
l4557: teqLE R5, R11
l4558: bics R4, R4, R0, LSR #18
l4559: movVCs R5, #186646528
l4560: tst R4, R7, LSL #8
l4561: eors R2, R14, R14
l4562: b l4564
l4563: b l4556
l4564: mov R14, #10
l4565: ldrsh R4, [sp, -R14]
l4566: swi #2344928
interrupt_846: l4567: teqGE R4, R11
l4568: mov R1, #16
interrupt_698: l4569: ldr R9, [sp, -R1]!
interrupt_588: l4570: str R6, [sp, #+16]!
l4571: ldr R1, l4573
l4572: b l4574
l4573: .word 1048552
l4574: swpMIb R10, R7, [R1]
interrupt_921: l4575: ldmDA R13!, {R3, R10, R12}
l4576: strLTB R1, [sp, #+49]
l4577: ldr R14, l4579
interrupt_781: l4578: b l4580
l4579: .word 1048536
l4580: swp R4, R7, [R14]
l4581: orrLT R8, R3, #536870913
l4582: mov R2, #0
l4583: ldrLSB R0, [sp, +R2]
l4584: sbcLTs R7, R8, R15, ROR #23
l4585: eorEQs R0, R1, #249856
l4586: movLS R11, #-2147483602
interrupt_813: l4587: ldr R5, l4589
l4588: b l4590
interrupt_797: l4589: .word 1048552
l4590: swpVS R9, R3, [R5]
l4591: rsbMI R10, R9, R0, ASR #13
l4592: adcEQ R14, R1, R9, LSL R5
l4593: sub R3, R12, R5
interrupt_985: l4594: strh R9, [sp, #+2]
l4595: orrs R1, R0, R10
l4596: rscGE R10, R0, R3, RRX 
l4597: eorNE R14, R9, R3
l4598: mvn R12, R5
l4599: .word 0b11110001011111111001110110101101
l4600: cmpVS R8, #2720
l4601: b l4608
l4602: clz R1, R2
l4603: rsbLS R7, R4, R11
l4604: tstLT R2, R8, LSL R2
l4605: movMI R2, R11
l4606: rscGE R7, R15, R10
l4607: sbcEQs R4, R12, R10, ASR #18
l4608: orrs R0, R6, R3, ASR R0
interrupt_234: l4609: swi #12191618
interrupt_40: l4610: clzLE R7, R14
l4611: .word 0b00010011010001110111011111110010
l4612: ldrNEB R10, [sp, #+59]
l4613: .word 0b00110110010101001000011000110001
l4614: mov R14, #60
l4615: ldrCSB R1, [sp, +R14]
l4616: ldrNEsb R2, [sp, #+23]
l4617: ldr R12, l4619
l4618: b l4620
l4619: .word 1048528
l4620: swpVS R11, R8, [R12]
l4621: swi #3612768
l4622: sbc R9, R4, R5
interrupt_734: l4623: mov R5, #106496
interrupt_327: l4624: cmnPL R12, R10
interrupt_174: l4625: ldr R14, l4627
l4626: b l4628
l4627: .word 1048516
l4628: swpVC R2, R9, [R14]
l4629: .word 0b00000111101110010001010110011100
l4630: rsc R14, R4, R2, LSL #12
l4631: .word 0b10100011000010010000011101011000
l4632: .word 0b11000011010011100100011101000001
l4633: bics R10, R14, R8, LSL R10
l4634: ldr R5, l4636
l4635: b l4637
l4636: .word 1048536
interrupt_130: l4637: swp R7, R2, [R5]
l4638: cmnMI R7, #792
interrupt_473: l4639: subHI R0, R6, R0, LSL R4
l4640: swi #14289211
l4641: cmpLT R7, R1, ASR R5
interrupt_141: l4642: teq R2, R3, LSL #6
l4643: swi #7536451
l4644: ldr R10, l4646
l4645: b l4647
l4646: .word 1048540
l4647: swpb R2, R14, [R10]
l4648: ldrsb R10, [sp, #+19]
l4649: nop
interrupt_511: l4650: bicPL R6, R1, #1280
l4651: mvnNE R1, R1, LSL R0
l4652: .word 0b11110111001110000001110111111100
l4653: subVCs R6, R4, R10, RRX 
l4654: adc R12, R3, R6
l4655: orrs R6, R7, #37
interrupt_364: l4656: swi #9511846
interrupt_599: l4657: mov R1, #48
interrupt_89: l4658: ldr R0, [sp, +R1]!
l4659: mvnCCs R0, R6, RRX 
l4660: bLT l4667
l4661: teq R6, #469762048
l4662: mov R9, R7, RRX 
l4663: eors R8, R1, R14, LSL #14
l4664: clz R7, R14
l4665: orrMI R8, R0, #624951296
l4666: tstCC R11, R4
l4667: mvnCSs R11, #13568
l4668: bicCSs R3, R1, R1, ROR R11
interrupt_344: l4669: teqEQ R11, R6
l4670: rscs R1, R9, R1
l4671: orr R5, R1, R7
l4672: ldrB R7, [sp, #-38]
l4673: subs R2, R0, R6
l4674: ldmDA R13, {R4, R5, R7}
l4675: ldr R14, l4677
interrupt_640: l4676: b l4678
l4677: .word 1048548
interrupt_243: l4678: swpGT R4, R7, [R14]
l4679: andVC R6, R10, R8, ROR R6
l4680: swi #7040873
l4681: rsbs R2, R2, R4
l4682: ldr R7, l4684
l4683: b l4685
l4684: .word 1048504
l4685: swpVCb R9, R0, [R7]
l4686: mvns R10, R14, LSR #25
l4687: movGE R14, R14, LSR #31
l4688: rscMIs R12, R4, #90
interrupt_590: l4689: swi #4271905
l4690: rsbVCs R12, R5, R11, LSL #6
l4691: bVC l4700
l4692: add R1, R0, #143
l4693: addCCs R4, R11, R2, LSR R7
l4694: rsbs R3, R10, R7, ASR #14
l4695: subCC R5, R8, R11, RRX 
l4696: ands R14, R11, R5, LSL R10
l4697: subNE R2, R5, R4, ROR R12
l4698: sbcs R4, R7, #54525952
l4699: b l4701
l4700: b l4693
l4701: bLE l4708
l4702: add R1, R0, #248
l4703: mvnGT R3, R10, RRX 
l4704: cmp R3, R12
interrupt_441: l4705: tst R2, R9, ASR R0
l4706: andCS R12, R0, #1130496
interrupt_429: l4707: b l4709
interrupt_783: l4708: b l4703
l4709: subEQ R10, R2, #924
l4710: mvnPLs R3, R0, LSR #30
interrupt_716: l4711: stmDA R13, {R1, R3, R4, R6, R14}
l4712: swi #2796038
l4713: mvns R10, R3, ROR R0
l4714: strh R9, [sp, #-48]
l4715: bEQ l4717
l4716: subEQs R0, R4, #1073741832
l4717: tstVC R14, R10, ASR R0
l4718: mov R0, #11
interrupt_747: l4719: strB R11, [sp, +R0]
interrupt_438: l4720: teq R10, R9, LSL #2
l4721: eor R11, R8, R7, LSR R5
l4722: .word 0b11010110101111110100111000110111
l4723: movCC R11, R3, LSL R4
l4724: ldr R7, l4726
l4725: b l4727
l4726: .word 1048508
l4727: swpEQ R0, R6, [R7]
l4728: stmHIDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R14, R15}
l4729: mov R7, #14
interrupt_768: l4730: ldrEQB R0, [sp, +R7]
l4731: bCS l4734
interrupt_646: l4732: cmpEQ R4, R10, LSR R5
l4733: cmn R4, #16711680
l4734: and R9, R12, R2, ROR #8
l4735: ldrsb R5, [sp, #-8]
l4736: ldmIA R13, {R6}
l4737: subs R1, R7, R11, LSL #26
interrupt_596: l4738: ldr R5, l4740
l4739: b l4741
l4740: .word 1048552
l4741: swpb R3, R12, [R5]
l4742: mov R14, #3
l4743: strB R5, [sp, +R14]
l4744: swi #6529848
l4745: orrVC R3, R6, #63
l4746: bNE l4754
l4747: add R1, R0, #68
l4748: subs R0, R9, R1, RRX 
l4749: subVCs R10, R11, R4, RRX 
l4750: subCS R11, R2, R0, LSL R2
l4751: subPLs R1, R3, R9, LSL R14
interrupt_653: l4752: cmn R1, R11
l4753: b l4755
l4754: b l4748
l4755: clzPL R6, R8
l4756: add R7, R4, #52166656
l4757: stmDA R13!, {R1, R3, R5}
l4758: tstVC R9, R11, ROR R9
l4759: str R11, [sp, #-36]!
l4760: subMI R5, R11, #4080
l4761: .word 0b11111111101000110101101111010101
l4762: ldr R1, l4764
l4763: b l4765
l4764: .word 1048552
l4765: swpNEb R9, R4, [R1]
interrupt_651: l4766: mov R12, #40
l4767: str R1, [sp, +R12]!
l4768: ldr R7, [sp, #-16]!
interrupt_636: l4769: clz R0, R14
l4770: mov R5, R8, ROR R10
l4771: mov R7, #0
l4772: ldrCSsb R8, [sp, +R7]
l4773: ldrLEsh R9, [sp, #+10]
l4774: swi #10223362
l4775: bicCCs R2, R4, R12, LSL #9
l4776: subGTs R5, R2, R1
interrupt_447: l4777: stmDB R13!, {R11, R12}
l4778: strNEh R8, [sp, #+34]
l4779: str R11, [sp, #-20]
l4780: rsc R0, R15, #268435458
l4781: ldrMIsh R10, [sp, #+18]
interrupt_404: l4782: ldr R5, l4784
l4783: b l4785
interrupt_410: l4784: .word 1048532
l4785: swp R3, R2, [R5]
l4786: b l4787
l4787: rscMIs R9, R2, R8, RRX 
l4788: orrVC R9, R11, R8, ROR R8
interrupt_302: l4789: swi #4739683
interrupt_352: l4790: mvnPLs R0, #450560
interrupt_693: l4791: ldr R5, l4793
l4792: b l4794
l4793: .word 1048540
l4794: swpLEb R2, R4, [R5]
l4795: mov R12, #28
l4796: str R0, [sp], +R12
l4797: stmDB R13!, {R5, R10}
l4798: teq R14, R4, ROR R4
l4799: cmn R2, R7, ASR #9
l4800: b l4805
l4801: add R1, R0, #122
l4802: teqPL R5, R8, ASR R10
l4803: rsbLSs R11, R15, R0
l4804: b l4806
interrupt_957: l4805: b l4802
l4806: ldrPLsb R11, [sp, #-41]
interrupt_870: l4807: rsb R12, R12, R6, ROR #9
interrupt_968: l4808: strVCB R7, [sp, #-19]
interrupt_375: l4809: subHI R4, R7, R8, LSR R2
l4810: b l4814
l4811: add R1, R0, #59
l4812: subEQs R0, R1, R6
interrupt_162: l4813: b l4815
l4814: b l4812
l4815: adds R9, R15, #14680064
l4816: .word 0b11111000111101111101011001110011
l4817: cmnVC R2, R6
l4818: mvn R7, R15, ASR #11
l4819: ldr R5, l4821
l4820: b l4822
l4821: .word 1048504
interrupt_197: l4822: swpb R4, R1, [R5]
interrupt_632: l4823: clzGT R6, R5
l4824: addGTs R14, R11, R7, ROR #28
l4825: strB R1, [sp, #-24]
interrupt_268: l4826: adcs R6, R1, R8, LSR #8
l4827: ldmIB R13, {R0, R3, R5, R6}
l4828: mov R4, #8
interrupt_682: l4829: strB R10, [sp, -R4]
l4830: ldr R3, l4832
l4831: b l4833
l4832: .word 1048540
l4833: swpVC R11, R12, [R3]
l4834: tstMI R9, R10
l4835: bCS l4840
l4836: add R1, R0, #210
l4837: rsbVS R9, R8, R4, LSL #9
l4838: cmp R6, R10, RRX 
l4839: b l4841
interrupt_537: l4840: b l4837
l4841: movGEs R4, R1, RRX 
l4842: cmp R11, R0, LSL R4
l4843: mov R3, #26
l4844: ldrGEh R3, [sp, -R3]
interrupt_710: l4845: bPL l4848
l4846: teq R4, R2, ROR #10
l4847: bicMIs R10, R8, R7, LSR #27
l4848: clzLT R4, R3
l4849: rsbVSs R4, R0, R12, LSR R9
interrupt_150: l4850: stmDB R13!, {R0, R2, R4, R5, R12, R14, R15}
l4851: rsbLSs R3, R7, R3, ROR #23
l4852: subs R0, R14, R11
l4853: orrNE R2, R10, R5, RRX 
l4854: rscEQ R6, R14, #1476395010
l4855: ldrGEh R9, [sp, #+22]
interrupt_309: l4856: mov R5, #20
l4857: ldr R0, [sp], +R5
l4858: stmMIDB R13, {R2, R3, R5, R8, R9, R11, R12, R15}
interrupt_953: l4859: sub R3, R15, R4
l4860: mov R5, #22
l4861: strPLh R14, [sp, +R5]
l4862: ldr R4, l4864
l4863: b l4865
interrupt_555: l4864: .word 1048528
l4865: swp R1, R11, [R4]
l4866: bCC l4874
l4867: add R1, R0, #225
interrupt_25: l4868: cmnGE R4, #3391488
l4869: rsb R2, R11, #2097152
l4870: bic R12, R10, R2, ASR R14
l4871: cmp R14, R12
l4872: tst R0, #-805306356
l4873: b l4875
interrupt_729: l4874: b l4868
l4875: bVC l4879
interrupt_972: l4876: add R1, R0, #43
l4877: teq R15, R3, LSR #28
l4878: b l4880
l4879: b l4877
l4880: bCS l4886
l4881: clzVS R1, R11
l4882: clz R3, R14
l4883: eors R1, R14, R12, LSR R9
l4884: subs R5, R11, #176160768
l4885: clz R2, R8
l4886: movCCs R7, R15, RRX 
l4887: bicGT R11, R10, R4, RRX 
interrupt_554: l4888: subCSs R0, R6, R5
l4889: rsbHIs R8, R6, R9
l4890: clzHI R14, R9
interrupt_56: l4891: andMIs R3, R15, #59
l4892: mov R4, #26
l4893: ldrsb R6, [sp, +R4]
l4894: tst R1, R0, LSL R4
l4895: tst R3, R14
l4896: mov R12, #4
l4897: strLSh R12, [sp, -R12]
l4898: tst R1, R6
l4899: stmIA R13, {R1, R2, R4, R15}
interrupt_22: l4900: ldr R11, l4902
l4901: b l4903
l4902: .word 1048520
l4903: swp R1, R4, [R11]
l4904: swi #12521157
interrupt_312: l4905: adcLSs R12, R10, #248
l4906: rsbs R10, R3, #804
l4907: andHI R5, R8, R7, ASR R4
interrupt_104: l4908: stmMIIA R13, {R2, R7, R8, R9, R11, R12, R13, R15}
l4909: bicCSs R14, R7, R7, LSR R14
l4910: eorVCs R9, R7, R4
l4911: cmpVC R3, R15
l4912: rsc R2, R14, R7, LSR R0
l4913: adcLT R11, R7, #3568
l4914: ldr R4, l4916
interrupt_654: l4915: b l4917
l4916: .word 1048504
l4917: swpb R5, R3, [R4]
l4918: ldrsh R1, [sp, #+22]
l4919: .word 0b11111111110000010010101101001110
l4920: bLS l4922
l4921: tst R4, R8, ASR R10
l4922: teqLT R5, R5, LSR R1
interrupt_786: l4923: andLTs R5, R1, R12, ASR R5
l4924: adds R11, R4, R1, RRX 
l4925: nop
l4926: str R6, [sp, #+16]!
l4927: swi #16304798
l4928: subGTs R11, R7, R3, ASR R5
l4929: cmp R0, #-1073741807
l4930: rscCCs R5, R14, #427819008
l4931: mov R8, R4, ROR R4
l4932: subMI R2, R2, R11, LSR R6
l4933: clz R5, R3
l4934: orrCCs R6, R6, R12, ASR #22
l4935: strMI R5, [sp, #-48]
l4936: rscEQs R3, R10, R0, LSR #19
interrupt_961: l4937: mov R1, #16
l4938: ldrPLsh R9, [sp, +R1]
l4939: .word 0b11111000100101011100001100111110
interrupt_443: l4940: ldrCCsb R8, [sp, #-10]
l4941: adds R11, R7, R6, RRX 
l4942: mov R11, #10
interrupt_135: l4943: ldrGTsh R11, [sp, +R11]
l4944: eors R7, R15, R10
l4945: swi #15698626
l4946: and R8, R7, R2, ROR #14
l4947: ldrLTB R9, [sp, #+10]
l4948: strLTB R12, [sp, #-4]
l4949: swi #12247776
l4950: tstHI R1, #268435470
l4951: mov R1, #19
interrupt_38: l4952: ldrVCB R3, [sp, -R1]
l4953: tstPL R2, R10
l4954: swi #7055809
l4955: sbc R5, R9, R3, ROR #18
l4956: bCC l4962
l4957: sbc R8, R8, #2800
interrupt_217: l4958: subCSs R8, R7, R1, ASR #22
l4959: rsbLT R8, R14, R0, LSR #11
l4960: adds R0, R8, R2, RRX 
l4961: clz R0, R5
l4962: orrLSs R6, R10, R1, ROR R8
l4963: ldr R8, l4965
l4964: b l4966
interrupt_424: l4965: .word 1048532
l4966: swp R5, R4, [R8]
l4967: orrLE R14, R12, #3840
l4968: swi #2660455
interrupt_36: l4969: tst R1, R14, ROR #1
l4970: .word 0b00100011000011111101110111000110
l4971: bicVS R3, R6, R5
l4972: mov R14, #5
l4973: strB R2, [sp, +R14]
interrupt_416: l4974: movs R10, R10, RRX 
interrupt_0: l4975: cmnCC R0, R8, RRX 
interrupt_617: l4976: rscLEs R7, R9, R3, LSL R10
interrupt_639: l4977: cmn R2, R4, ROR R7
l4978: mov R4, #12
l4979: str R0, [sp, -R4]!
l4980: cmn R15, R1, RRX 
l4981: orrs R14, R5, R6, ROR R4
l4982: str R9, [sp], #-40
interrupt_449: l4983: clz R9, R4
interrupt_988: l4984: sbcs R1, R11, R0, LSR #8
l4985: ldrsh R7, [sp, #+70]
l4986: swi #8727767
l4987: cmn R7, R14, ROR #29
l4988: str R14, [sp, #+68]!
l4989: adcs R7, R4, #-1946157054
l4990: ldr R3, l4992
l4991: b l4993
interrupt_694: l4992: .word 1048492
interrupt_839: l4993: swp R0, R2, [R3]
l4994: clzLS R6, R6
l4995: ldrsh R11, [sp, #-66]
interrupt_881: l4996: mov R8, #52
l4997: str R11, [sp], -R8
l4998: nop
l4999: .word 0b10000110101011010011000010111101
interrupt_816: l5000: mvnNE R5, R8
end: b end

