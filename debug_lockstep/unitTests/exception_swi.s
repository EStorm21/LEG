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
ldr r5, UART_DR
ldr r5, [r5]
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
ldr r1, [r1]
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
reg_0_sys_val: .word 1866036866
reg_1_sys: ldr R1, reg_1_sys_val
b reg_2_sys
reg_1_sys_val: .word 3856147751
reg_2_sys: ldr R2, reg_2_sys_val
b reg_3_sys
reg_2_sys_val: .word 1000504953
reg_3_sys: ldr R3, reg_3_sys_val
b reg_4_sys
reg_3_sys_val: .word 2815758519
reg_4_sys: ldr R4, reg_4_sys_val
b reg_5_sys
reg_4_sys_val: .word 4046646955
reg_5_sys: ldr R5, reg_5_sys_val
b reg_6_sys
reg_5_sys_val: .word 3370247774
reg_6_sys: ldr R6, reg_6_sys_val
b reg_7_sys
reg_6_sys_val: .word 2519348825
reg_7_sys: ldr R7, reg_7_sys_val
b reg_8_sys
reg_7_sys_val: .word 3225939608
reg_8_sys: ldr R8, reg_8_sys_val
b reg_9_sys
reg_8_sys_val: .word 102632720
reg_9_sys: ldr R9, reg_9_sys_val
b reg_10_sys
reg_9_sys_val: .word 3737324779
reg_10_sys: ldr R10, reg_10_sys_val
b reg_11_sys
reg_10_sys_val: .word 885161304
reg_11_sys: ldr R11, reg_11_sys_val
b reg_12_sys
reg_11_sys_val: .word 2496324596
reg_12_sys: ldr R12, reg_12_sys_val
b reg_13_sys
reg_12_sys_val: .word 2724403041
reg_13_sys: ldr R13, reg_13_sys_val
b reg_14_sys
reg_13_sys_val: .word 0x0ffff0
reg_14_sys: ldr R14, reg_14_sys_val
b reg_14_sys_end
reg_14_sys_val: .word 2689920407
reg_14_sys_end: nop
# Switching to mode fiq
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0xd1
MSR cpsr, r0
reg_8_fiq: ldr R8, reg_8_fiq_val
b reg_9_fiq
reg_8_fiq_val: .word 1984430134
reg_9_fiq: ldr R9, reg_9_fiq_val
b reg_10_fiq
reg_9_fiq_val: .word 3015997222
reg_10_fiq: ldr R10, reg_10_fiq_val
b reg_11_fiq
reg_10_fiq_val: .word 2257660033
reg_11_fiq: ldr R11, reg_11_fiq_val
b reg_12_fiq
reg_11_fiq_val: .word 2648915091
reg_12_fiq: ldr R12, reg_12_fiq_val
b reg_13_fiq
reg_12_fiq_val: .word 1604990810
reg_13_fiq: ldr R13, reg_13_fiq_val
b reg_14_fiq
reg_13_fiq_val: .word 0x1ffff0
reg_14_fiq: ldr R14, reg_14_fiq_val
b reg_14_fiq_end
reg_14_fiq_val: .word 1680584000
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
reg_14_irq_val: .word 1774729342
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
reg_14_undef_val: .word 1384062201
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
reg_14_abort_val: .word 4222958394
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
reg_14_svc_val: .word 1856521433
reg_14_svc_end: nop

# INITIALIZING STACK
# Switching to mode sys
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0x1f
MSR cpsr, r0
ldr R1, stack_0_val
b stack_0
stack_0_val: .word 511600366
stack_0: str R1, [sp, #0]
ldr R1, stack_1_val
b stack_1
stack_1_val: .word 469602688
stack_1: str R1, [sp, #-4]
ldr R1, stack_2_val
b stack_2
stack_2_val: .word 2187653869
stack_2: str R1, [sp, #-8]
ldr R1, stack_3_val
b stack_3
stack_3_val: .word 3790300060
stack_3: str R1, [sp, #-12]
ldr R1, stack_4_val
b stack_4
stack_4_val: .word 395203980
stack_4: str R1, [sp, #-16]
ldr R1, stack_5_val
b stack_5
stack_5_val: .word 2354934057
stack_5: str R1, [sp, #-20]
ldr R1, stack_6_val
b stack_6
stack_6_val: .word 3137139539
stack_6: str R1, [sp, #-24]
ldr R1, stack_7_val
b stack_7
stack_7_val: .word 2535695661
stack_7: str R1, [sp, #-28]
ldr R1, stack_8_val
b stack_8
stack_8_val: .word 3388336096
stack_8: str R1, [sp, #-32]
ldr R1, stack_9_val
b stack_9
stack_9_val: .word 743961275
stack_9: str R1, [sp, #-36]
ldr R1, stack_10_val
b stack_10
stack_10_val: .word 1491039431
stack_10: str R1, [sp, #-40]
ldr R1, stack_11_val
b stack_11
stack_11_val: .word 1989681550
stack_11: str R1, [sp, #-44]
ldr R1, stack_12_val
b stack_12
stack_12_val: .word 3891352993
stack_12: str R1, [sp, #-48]
ldr R1, stack_13_val
b stack_13
stack_13_val: .word 368213033
stack_13: str R1, [sp, #-52]
ldr R1, stack_14_val
b stack_14
stack_14_val: .word 4217200024
stack_14: str R1, [sp, #-56]
ldr R1, stack_15_val
b stack_15
stack_15_val: .word 2893948220
stack_15: str R1, [sp, #-60]
ldr R1, stack_16_val
b stack_16
stack_16_val: .word 871932076
stack_16: str R1, [sp, #-64]
ldr R1, stack_17_val
b stack_17
stack_17_val: .word 3859681263
stack_17: str R1, [sp, #-68]
ldr R1, stack_18_val
b stack_18
stack_18_val: .word 3194346849
stack_18: str R1, [sp, #-72]
ldr R1, stack_19_val
b stack_19
stack_19_val: .word 989247479
stack_19: str R1, [sp, #-76]
ldr R1, stack_20_val
b stack_20
stack_20_val: .word 1071690092
stack_20: str R1, [sp, #-80]


# Switching to mode usr
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0x10
MSR cpsr, r0

# MAIN PROGRAM
interrupt_394: 
l1: addCS R1, R5, R1, ROR #13
l2: mov R9, #16
l3: ldrCS R7, [sp, -R9]
l4: movGT R14, R6, ROR R2
l5: stmVCDB R13, {R0, R1, R2, R3, R4, R6, R8, R9, R10, R11, R12, R13, R14, R15}
l6: swi #5631939
l7: bCC l13
l8: eors R10, R0, R12
l9: add R5, R7, R10, LSL R7
l10: tstVS R14, R6, LSR R11
l11: mvnEQs R6, R10
l12: tstVC R15, R7
l13: clzVS R0, R8
interrupt_328: l14: swi #7937123
interrupt_111: l15: sub R0, R15, R15
l16: orrs R4, R10, R0, ROR R3
l17: ldr R7, [sp, #-36]!
l18: adc R4, R7, R15, RRX 
l19: bLE l25
interrupt_849: l20: add R1, R0, #13
l21: clz R14, R10
l22: cmp R15, R2, LSR #11
l23: teqVC R7, R11, ASR #28
l24: b l26
l25: b l21
l26: bNE l34
l27: add R1, R0, #12
l28: sbcCCs R9, R12, #1644167168
l29: orrLEs R7, R11, R9, ASR #22
l30: clzEQ R4, R1
l31: orrPLs R2, R3, #1146880
l32: sub R5, R10, #36962304
l33: b l35
l34: b l28
interrupt_703: l35: ldrh R8, [sp, #-14]
l36: tst R0, R1, LSL R14
interrupt_101: l37: b l44
l38: add R1, R0, #241
l39: rscGEs R11, R7, R15, LSR #19
l40: subNE R5, R1, R9, LSL #10
l41: sub R2, R6, R6, ASR R14
l42: bicCSs R1, R6, R15, LSR #28
l43: b l45
l44: b l39
interrupt_989: l45: ldrB R12, [sp, #+0]
l46: mov R8, #16
interrupt_921: l47: str R0, [sp], +R8
l48: b l54
l49: add R1, R0, #100
l50: rscGEs R0, R6, R7, LSR #7
l51: orrEQ R3, R8, R2
interrupt_254: l52: subVCs R10, R10, R5, ROR R2
l53: b l55
l54: b l50
l55: clz R8, R6
l56: tstMI R5, R9, ASR #18
interrupt_144: l57: ldmLSIA R13, {R10, R14}
interrupt_666: l58: bGT l62
l59: rsbLEs R10, R8, R6, ASR R5
l60: sbcVCs R7, R7, R1, ROR R1
l61: bicGTs R9, R3, R10
l62: subVSs R0, R5, R5, ROR #28
interrupt_975: l63: teqGT R12, #1073741834
l64: teq R7, R2, RRX 
l65: ldr R12, l67
interrupt_355: l66: b l68
interrupt_363: l67: .word 1048488
l68: swpLTb R3, R8, [R12]
l69: addGTs R3, R9, R14, LSL #25
l70: mvnHI R4, #12352
l71: ldmDA R13!, {R0, R1, R2, R3, R6, R7, R8, R9, R12, R14}
l72: andCC R12, R7, R6
l73: mov R5, #40
l74: str R4, [sp], +R5
l75: orrNE R14, R1, R1, LSR #5
l76: swi #15610467
l77: tstVS R0, #68608
l78: andNE R11, R9, R10, ROR R0
l79: mvnVSs R8, #2867200
l80: clzCC R11, R11
l81: tstGT R3, R5, LSR R1
interrupt_977: l82: mov R2, #50
l83: strVCh R7, [sp, -R2]
l84: mvn R4, #495616
l85: swi #2092325
l86: andGE R9, R2, R10
l87: ldr R0, l89
l88: b l90
l89: .word 1048520
l90: swpLTb R12, R11, [R0]
l91: bPL l99
interrupt_852: l92: subEQs R0, R9, R8, RRX 
l93: mov R8, R12, ROR R0
l94: adds R5, R14, R5
l95: bicMIs R1, R10, R2
l96: sbcCSs R10, R6, R12, LSR R2
l97: rsb R3, R15, #167936
l98: orrCS R2, R0, R14, ROR #24
l99: movLT R4, R0
l100: mvnLTs R7, #10240
l101: ldr R2, l103
l102: b l104
l103: .word 1048492
l104: swpHIb R1, R14, [R2]
l105: bLS l114
l106: orrs R14, R15, #92
l107: ands R0, R5, R2, ROR R1
interrupt_607: l108: rsbEQ R5, R7, R11, RRX 
l109: cmp R7, #8454144
l110: subCCs R9, R0, R1
l111: orrs R9, R8, #134217728
l112: orrs R3, R5, R1, LSL #17
interrupt_331: l113: tstNE R12, #1104
l114: cmp R0, R8
l115: str R3, [sp], #+4
l116: strEQB R10, [sp, #+6]
l117: cmpLE R9, R6
l118: str R6, [sp, #-20]!
l119: bic R4, R4, #824
l120: add R12, R4, #13632
l121: sbcVCs R12, R14, R4
l122: tstNE R1, R12, LSR #30
l123: bEQ l129
l124: tstGT R14, R10
l125: subs R1, R4, R14, ROR #15
l126: clz R4, R3
l127: cmpEQ R11, R2
l128: teqPL R7, R5
l129: movCC R1, R5
interrupt_959: l130: str R7, [sp, #-12]!
l131: ldr R6, l133
l132: b l134
l133: .word 1048536
l134: swp R12, R8, [R6]
l135: orrPLs R8, R9, R2
l136: stmDB R13!, {R2}
l137: mvnPL R14, R6, ROR #21
l138: subVCs R8, R11, R15, ROR #14
l139: cmn R6, R9
l140: ldr R3, [sp], #-28
interrupt_585: l141: sbc R3, R10, R10, LSL #24
l142: orrs R11, R11, R15, LSR #18
l143: ldr R7, l145
l144: b l146
interrupt_501: l145: .word 1048540
l146: swpGE R10, R0, [R7]
l147: sub R5, R14, R12, RRX 
interrupt_180: l148: ldr R5, l150
l149: b l151
l150: .word 1048480
l151: swpLTb R1, R9, [R5]
l152: swi #16158625
l153: mov R14, #46
l154: ldrGEh R11, [sp, +R14]
interrupt_286: l155: sbcHIs R3, R5, R0
l156: subHIs R14, R1, R12, ASR R6
l157: movs R3, R0, LSL R8
l158: adc R6, R5, R6, RRX 
l159: clzNE R9, R10
l160: mvnGE R5, R3
l161: tst R0, #260046848
interrupt_543: l162: mvns R7, R14, RRX 
l163: clzVS R11, R7
l164: clzGT R0, R5
l165: tstVS R7, R5
l166: bLS l175
l167: add R1, R0, #119
l168: subGT R2, R0, R2
interrupt_700: l169: mvnLE R3, R0
l170: mvnEQ R3, R7, LSL R14
l171: mvnPL R5, #1811939330
interrupt_893: l172: addVS R8, R2, R8, ROR #26
l173: cmpLT R10, R9
l174: b l176
interrupt_446: l175: b l168
l176: ldmIA R13, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R10, R11, R12}
l177: andLEs R3, R7, R6, ASR R9
l178: mov R0, #28
l179: ldrPLsb R3, [sp, +R0]
l180: b l189
interrupt_699: l181: tstLE R9, R10, ROR R4
l182: eors R4, R15, R1
l183: movLE R10, #7680
l184: orrMI R11, R15, #1856
l185: clzHI R4, R0
interrupt_153: l186: eor R4, R1, R3
l187: tst R5, R1, ASR R3
l188: orr R8, R12, R15, RRX 
l189: rsc R1, R9, R9
l190: swi #4738907
l191: cmn R9, R9
l192: sbcGEs R4, R1, R6
l193: tstPL R9, R12, ROR R2
l194: sub R2, R1, R7
interrupt_762: l195: subCC R7, R6, R9, ASR #20
l196: b l205
interrupt_659: l197: add R1, R0, #108
l198: andVSs R7, R2, R12, RRX 
l199: cmnLS R11, R11
l200: sbcs R14, R10, R12, ASR R11
l201: orrs R6, R1, #-67108863
l202: orrHIs R5, R8, R5
l203: eorNE R12, R5, #-1342177279
l204: b l206
l205: b l198
interrupt_63: l206: ldmIA R13!, {R0, R2, R3, R5, R6, R8, R11, R12, R14}
l207: mov R0, #8
l208: ldrVCsh R2, [sp, -R0]
l209: sbcCC R3, R14, R11, ASR #29
l210: subLS R8, R10, R5, LSR #31
l211: bicGT R10, R4, R8, RRX 
l212: rsb R9, R7, R8, ASR #6
l213: ldrsh R3, [sp, #+14]
l214: mov R10, #12
interrupt_685: l215: ldrh R5, [sp, -R10]
l216: bicCSs R9, R6, R5
l217: ldmIB R13!, {R3, R4, R6, R7, R10, R12, R14}
interrupt_278: l218: eor R10, R11, R2, ASR #1
interrupt_719: l219: add R7, R10, R14
l220: cmn R12, R10, LSL #1
l221: stmDA R13, {R4, R7, R10}
l222: mov R6, #64
l223: ldrLS R12, [sp, -R6]
l224: eorMI R5, R12, #-469762046
l225: sbcs R6, R6, R10
l226: bGE l236
interrupt_763: l227: cmp R10, R8, LSR R1
l228: sbcPL R9, R3, R8, ASR R12
l229: rsbLT R14, R3, R9
interrupt_903: l230: rscMIs R3, R5, #68157440
l231: rsbMIs R3, R6, #44288
l232: cmpVS R10, R5
l233: cmn R4, #186
l234: orr R1, R8, R5, LSR R11
l235: adcGTs R0, R6, R1
l236: addPLs R5, R4, R6, LSR R0
l237: adcMI R3, R14, R8, ROR R12
l238: movCCs R7, #1490944
l239: str R14, [sp], #-32
l240: tstHI R15, #-2147483635
l241: mov R10, #4
l242: ldrPLB R12, [sp, +R10]
l243: clzLT R2, R6
interrupt_667: l244: ldrh R1, [sp, #+40]
l245: tstEQ R10, R2, ROR #7
l246: eor R1, R14, #-1073741824
l247: eorGE R3, R7, R15, ROR #16
l248: mov R12, #7
interrupt_398: l249: ldrEQsb R0, [sp, +R12]
interrupt_902: l250: rscGE R7, R7, R6
l251: orrVSs R9, R3, R14
l252: swi #4606968
interrupt_680: l253: eorNE R1, R1, #2310144
l254: teqEQ R7, R2, LSL #28
l255: mov R11, #25
l256: ldrEQB R10, [sp, -R11]
interrupt_936: l257: ldr R11, [sp], #+8
l258: stmDA R13!, {R11}
l259: ldmPLDA R13, {R5, R8, R10}
l260: rscVCs R8, R5, R15, ROR #8
l261: mvnLEs R14, #248
l262: mov R0, #8
l263: strHIB R14, [sp, +R0]
l264: eorVC R3, R11, R9, ROR R0
l265: adcGEs R0, R15, R15, RRX 
l266: str R6, [sp, #+16]!
interrupt_969: l267: bicMIs R14, R8, #452984832
l268: ldr R6, l270
l269: b l271
l270: .word 1048536
l271: swpGE R5, R11, [R6]
l272: swi #10147399
l273: cmnLE R12, R3, RRX 
interrupt_958: l274: sub R6, R0, R12, LSR #10
l275: mov R3, #32
interrupt_311: l276: ldrh R12, [sp, -R3]
l277: ldr R11, l279
l278: b l280
l279: .word 1048548
l280: swpb R0, R1, [R11]
interrupt_479: l281: mov R12, #14
l282: ldrGTsh R4, [sp, -R12]
interrupt_32: l283: ldr R12, l285
l284: b l286
l285: .word 1048480
l286: swpPLb R11, R4, [R12]
l287: rscs R2, R1, R3, ROR R10
l288: mov R1, #22
l289: strPLB R11, [sp, +R1]
l290: movs R3, R12
l291: ldr R4, l293
l292: b l294
l293: .word 1048504
l294: swpNE R6, R12, [R4]
interrupt_520: l295: adcNE R14, R6, R5, LSL #31
interrupt_516: l296: and R12, R12, #40370176
l297: sub R12, R8, R10, RRX 
l298: ldrLTsh R12, [sp, #-50]
l299: bic R14, R5, R8
l300: b l307
l301: add R1, R0, #230
l302: rsbGT R5, R7, R9, RRX 
interrupt_657: l303: subs R10, R4, R15
interrupt_24: l304: tstEQ R6, R5, LSL R6
interrupt_164: l305: eors R12, R11, #3248
l306: b l308
l307: b l302
interrupt_716: l308: strVCh R1, [sp, #-46]
interrupt_489: l309: str R12, [sp, #-16]!
interrupt_267: l310: ldrB R14, [sp, #-10]
l311: strCSh R14, [sp, #+8]
l312: clz R7, R10
interrupt_746: l313: mov R11, #22
l314: strLTB R7, [sp, +R11]
l315: stmDB R13!, {R9, R10, R14}
l316: orrLS R12, R1, R7, LSL #28
l317: swi #11732605
interrupt_54: l318: subLT R6, R12, R15, RRX 
l319: cmpCC R14, R9, LSL #18
l320: nop
interrupt_481: l321: mov R2, #15
l322: ldrsb R0, [sp, -R2]
l323: addGE R6, R2, R3, ASR R1
l324: strVSh R14, [sp, #-22]
l325: bGT l332
interrupt_343: l326: add R1, R0, #232
l327: subMIs R6, R5, R9
l328: clz R10, R3
l329: rsbEQ R7, R8, R0, RRX 
l330: bics R5, R9, R2, ROR #1
l331: b l333
interrupt_797: l332: b l327
interrupt_98: l333: b l337
l334: add R1, R0, #141
l335: adcCCs R0, R11, #652
l336: b l338
l337: b l335
interrupt_656: l338: mov R6, #17
l339: strLSB R12, [sp, -R6]
l340: adcGTs R2, R0, R5, ROR #19
l341: b l348
l342: add R1, R0, #55
interrupt_854: l343: tstGE R15, R6, ASR #13
l344: mvn R11, R0, ROR R9
l345: mvn R3, #99328
interrupt_340: l346: rscs R4, R2, R11, ROR R0
interrupt_308: l347: b l349
l348: b l343
l349: rsbEQs R4, R5, #11534336
l350: bic R10, R8, #2560
l351: movs R14, #40704
l352: adcLE R1, R14, R8
l353: ldrLSB R8, [sp, #+3]
l354: swi #361241
interrupt_711: l355: cmpVS R11, R6, LSL #27
interrupt_61: l356: bLS l366
l357: subVS R4, R9, R9, ASR #1
l358: tstVS R10, R10, ROR #11
l359: adc R5, R0, #41
l360: adcs R10, R7, #11392
interrupt_492: l361: cmp R2, R11, RRX 
interrupt_981: l362: sbcCS R3, R0, R15, RRX 
interrupt_734: l363: subLT R8, R0, #86016
l364: teqLS R7, R5
l365: teqEQ R11, R5
l366: orrs R3, R9, R7
l367: mov R0, #22
l368: ldrCCsb R9, [sp, -R0]
l369: tst R12, R0, ASR #2
l370: ldrh R14, [sp, #+44]
l371: sbcLT R0, R0, R3
l372: str R8, [sp], #+28
l373: b l380
l374: add R1, R0, #76
l375: subGE R1, R0, R11, LSL R3
l376: tstLE R2, #15532032
l377: tstLS R8, R9, ROR #2
l378: rsbVCs R0, R6, #197132288
interrupt_395: l379: b l381
l380: b l375
l381: bLS l389
l382: rsbs R5, R14, #500
l383: clz R5, R0
l384: bicCCs R6, R0, #557842432
l385: ands R9, R1, #44032
l386: bic R5, R11, #-1073741815
l387: mvns R5, R5, LSL R8
l388: bic R7, R14, R4, ASR #4
l389: orrs R0, R2, #1296
l390: ldrHIsb R2, [sp, #+2]
l391: tstPL R14, R14
l392: stmIB R13!, {R4, R15}
l393: bPL l397
interrupt_436: l394: add R1, R0, #242
l395: adcs R11, R2, R8
l396: b l398
l397: b l395
interrupt_81: l398: teq R1, #268435459
interrupt_595: l399: swi #8737635
interrupt_945: l400: teq R1, R0
interrupt_303: l401: add R9, R1, R5, LSL #24
l402: orrs R8, R4, #4480
interrupt_264: l403: cmpVS R10, R5
l404: stmDB R13!, {R13, R14}
l405: ldr R14, l407
interrupt_712: l406: b l408
l407: .word 1048532
l408: swpb R1, R10, [R14]
l409: b l416
l410: subGTs R8, R12, R11, LSL #18
l411: tstVC R1, R5, LSR R3
l412: rsbLEs R9, R14, #805306382
l413: eor R2, R6, R12, RRX 
l414: addLTs R9, R6, R4
l415: addCSs R9, R2, R14
l416: cmnLT R14, R9, RRX 
interrupt_863: l417: ldr R11, l419
l418: b l420
l419: .word 1048500
l420: swpLTb R5, R10, [R11]
l421: bicLTs R0, R3, R3, RRX 
l422: rsbVC R6, R14, #10944
l423: tstPL R7, #1073741832
l424: mov R8, #44
interrupt_420: l425: str R5, [sp], -R8
l426: swi #12503487
interrupt_799: l427: movLTs R2, R0, LSR R6
l428: bLT l432
l429: add R1, R0, #156
interrupt_820: l430: mvnPL R1, R14, ROR #6
interrupt_298: l431: b l433
l432: b l430
l433: subs R2, R3, R7, LSR #28
l434: adcGT R6, R14, R0
l435: ands R3, R7, R3, RRX 
l436: tst R6, R2, LSR #26
l437: mov R3, #43
l438: ldrHIB R4, [sp, +R3]
l439: mvnGE R2, R12
l440: adcLTs R11, R1, R9, LSL R8
l441: mov R11, #20
interrupt_890: l442: ldr R8, [sp, +R11]!
l443: ldrHIsb R8, [sp, #+28]
interrupt_266: l444: subLEs R10, R10, #130023424
interrupt_616: l445: swi #4352540
l446: ldrsb R9, [sp, #+35]
l447: adcNE R7, R14, R7, ASR #1
interrupt_310: l448: rsbs R0, R3, R8, RRX 
l449: ldrsb R1, [sp, #-5]
l450: tstGE R3, R4
interrupt_67: l451: rsc R4, R14, R1
l452: mov R2, #22
interrupt_205: l453: strGTh R2, [sp, +R2]
interrupt_477: l454: clzLE R7, R10
l455: ldmDB R13, {R11, R12}
l456: mov R3, #2
l457: ldrh R2, [sp, -R3]
interrupt_77: l458: b l466
l459: sbcLS R14, R2, R4
l460: clz R12, R4
interrupt_726: l461: cmp R4, #872
l462: orrVS R0, R6, #545259520
interrupt_920: l463: subVS R14, R9, R0
interrupt_430: l464: rscLEs R6, R1, #21248
l465: andCS R11, R15, R9, LSL #30
l466: sub R9, R5, R15
l467: tstCC R14, R0, ROR #16
interrupt_964: l468: andMIs R5, R10, R9, ROR #14
l469: teqLE R9, R1, ASR #5
l470: mov R9, #16
l471: ldrNEh R7, [sp, -R9]
l472: sbcPLs R5, R14, #1261568
l473: mov R1, #21
l474: ldrB R6, [sp, -R1]
l475: rsbVCs R2, R12, R15
l476: rsbVSs R3, R3, R2
interrupt_831: l477: swi #11353796
l478: mov R11, #4
l479: ldrB R14, [sp, +R11]
l480: mov R9, #11
l481: ldrMIB R1, [sp, +R9]
interrupt_348: l482: andMI R5, R4, R8, LSR #28
l483: eorPL R10, R4, R11, ASR #4
l484: cmpHI R2, R2, ASR #26
interrupt_368: l485: mov R11, #20
l486: strCS R8, [sp, +R11]
l487: eorLT R11, R8, R8, LSR R14
l488: ands R14, R4, #27648
l489: cmn R4, #254976
l490: mov R14, #32
l491: ldr R11, [sp], +R14
l492: addLSs R12, R11, R11, RRX 
l493: and R11, R1, #2490368
l494: teqLS R10, R3
l495: orr R8, R15, #1120
l496: mov R11, #2
interrupt_413: l497: ldrsb R11, [sp, -R11]
l498: movGE R3, R7, RRX 
l499: strB R12, [sp, #-38]
l500: orrLSs R0, R10, R15
interrupt_894: l501: rsbPLs R11, R8, R11, ROR R0
l502: adcLTs R2, R9, R6, ASR #4
l503: clz R7, R1
l504: subLS R8, R8, R14
l505: stmVCIA R13, {R1, R10}
l506: rscLE R7, R15, R1
l507: tstVS R15, R10, LSR #5
l508: stmDB R13, {R0, R1, R3, R4, R5, R7, R11, R13, R14}
l509: rsbHI R12, R3, R0, LSR #31
interrupt_747: l510: ldrB R4, [sp, #-55]
l511: eors R1, R8, R7
l512: stmIA R13!, {R2, R3, R11}
l513: ldrPLB R5, [sp, #-42]
l514: subPLs R0, R4, R8, LSR #10
l515: swi #14954550
l516: strVSh R2, [sp, #-24]
l517: nop
l518: ldrB R6, [sp, #-70]
l519: sub R9, R9, #40960
l520: swi #10875807
l521: mov R7, #52
l522: ldrGEsh R14, [sp, -R7]
l523: mov R9, #36
l524: strHIh R1, [sp, -R9]
l525: tstHI R10, R1, ROR #26
interrupt_21: l526: rscLSs R0, R4, R12, LSR #13
l527: eor R8, R8, #5
l528: strB R3, [sp, #-43]
l529: movLT R6, R14
l530: nop
l531: rsbs R7, R11, #557056
l532: bGE l541
l533: and R4, R2, R9, ROR R4
interrupt_439: l534: adcEQs R8, R8, R14, LSL #5
l535: andLS R8, R11, #638976
l536: orrLS R2, R7, #620756992
interrupt_296: l537: eor R9, R5, #1073741857
interrupt_847: l538: teq R14, R12
l539: tstVC R15, R9, ASR #2
l540: orrLTs R0, R11, #592
l541: sub R12, R3, R2, ROR #22
interrupt_155: l542: sbcLE R7, R9, #536870914
interrupt_415: l543: orrLTs R3, R2, #1020
l544: eorEQ R3, R0, #42
l545: mov R6, #33
l546: ldrPLB R5, [sp, -R6]
l547: teqCS R15, R7, RRX 
l548: mvnEQ R3, R15, LSL #12
l549: bicLTs R10, R10, R2
l550: add R1, R1, R3, RRX 
interrupt_536: l551: cmpEQ R11, R0, RRX 
l552: rscs R9, R15, R1
l553: tstPL R1, R4
l554: cmpMI R8, #61079552
l555: clz R1, R2
l556: tst R4, #9961472
l557: clzHI R4, R7
l558: mov R9, #41
l559: strB R7, [sp, -R9]
l560: b l564
l561: add R1, R0, #49
l562: sub R11, R8, #18874368
l563: b l565
l564: b l562
l565: b l575
l566: andGEs R5, R14, R12
l567: eorGTs R5, R4, R4, LSL #28
l568: teqLT R8, R7, LSL R5
l569: adc R14, R9, R2
interrupt_725: l570: andCS R11, R5, R1, ASR #10
l571: subLSs R12, R7, R2, ROR R12
l572: teqLT R10, R5, ROR #7
l573: eor R1, R10, R5
l574: addGE R12, R2, R0, LSR R2
l575: subVCs R2, R2, #768
l576: nop
l577: movLTs R5, #1073741831
l578: strCSB R1, [sp, #-16]
l579: orrs R3, R11, #-1811939328
interrupt_90: l580: addGE R1, R0, R15, LSL #11
interrupt_996: l581: ldr R7, l583
l582: b l584
l583: .word 1048552
l584: swpVCb R3, R12, [R7]
l585: mvnLSs R5, R6, ROR #25
l586: ldr R6, [sp], #-4
l587: bicHI R6, R1, R1
interrupt_775: l588: mov R6, #2
l589: ldrsh R1, [sp, -R6]
interrupt_999: l590: ldrh R6, [sp, #-58]
l591: swi #2233334
l592: ands R0, R3, R8, ASR #18
interrupt_806: l593: ldrCCh R11, [sp, #-20]
l594: cmp R7, R12, ASR #5
l595: subPLs R7, R6, R7, LSL #5
l596: bCC l601
l597: add R1, R0, #75
l598: rsbCCs R11, R7, R0
l599: adds R5, R5, R6, ROR #13
l600: b l602
l601: b l598
l602: subGTs R8, R14, R6
l603: adc R10, R10, R12, LSL R14
l604: mov R9, #44
l605: ldrh R5, [sp, -R9]
l606: ldmDB R13!, {R0, R3, R5, R6, R8, R9, R11, R12, R14}
l607: bNE l616
l608: cmn R5, R3
l609: subHIs R0, R14, #45056
l610: clz R11, R9
l611: tst R11, #221
l612: clz R5, R2
l613: movCS R10, R12, RRX 
l614: clzNE R9, R10
l615: rsc R8, R6, #18087936
l616: movLE R5, #1811939330
l617: rsc R1, R1, R6
interrupt_26: l618: bPL l621
l619: teq R3, R8, RRX 
l620: rsc R0, R11, #193
l621: tstLS R6, R6, LSR R3
l622: sbcGE R10, R4, R4, ASR R3
l623: mvnCSs R7, R7
l624: mov R4, #0
l625: strGE R8, [sp, +R4]
interrupt_636: l626: ldrB R14, [sp, #+3]
l627: mov R8, #6
l628: ldrNEsh R2, [sp, +R8]
interrupt_370: l629: orrs R11, R11, R11, LSL R7
l630: cmnVS R0, #2013265920
l631: bicVCs R5, R15, R8
l632: andGTs R3, R15, R12
l633: clzMI R8, R7
l634: rsb R12, R14, R2, LSL R12
l635: ldrLSB R5, [sp, #+7]
l636: teqGE R1, R0, LSL #17
interrupt_815: l637: eorLE R3, R1, R9, LSR R3
l638: mov R12, #40
l639: str R6, [sp, +R12]
l640: rscLS R4, R15, R5, ROR #18
interrupt_570: l641: cmn R2, R3, ASR R1
l642: ldrCCsh R6, [sp, #+22]
interrupt_319: l643: clzGE R12, R4
l644: subEQ R14, R14, R15
l645: orrs R6, R10, #0
interrupt_401: l646: ldrPLsh R8, [sp, #-10]
interrupt_66: l647: movHI R2, #3008
l648: ldrHIB R3, [sp, #+31]
l649: rscCC R1, R4, R8
l650: andGEs R4, R1, R4
l651: rscGT R4, R1, R11, ROR R14
l652: ldrGEsh R6, [sp, #+32]
l653: ldmIA R13!, {R3, R4, R6, R8, R12}
l654: b l662
l655: subLTs R10, R11, R15
l656: subLS R7, R5, R6, LSR R4
l657: clzPL R14, R8
l658: tstVS R8, R6
interrupt_444: l659: cmn R10, R5, ASR R11
l660: adcMIs R9, R7, R3, ASR #13
l661: andLS R6, R14, R15
l662: teqNE R9, R12, ASR #13
l663: movGE R9, #-1342177278
interrupt_850: l664: ldr R4, l666
l665: b l667
interrupt_235: l666: .word 1048540
l667: swpCSb R14, R9, [R4]
l668: mov R6, R14
l669: subs R8, R9, R4, ROR R11
l670: andCSs R9, R4, R7, LSL R7
l671: mov R3, #32
l672: ldr R5, [sp, -R3]
l673: ldr R4, l675
interrupt_611: l674: b l676
l675: .word 1048512
l676: swpLE R1, R12, [R4]
l677: strVCB R11, [sp, #+17]
l678: cmpNE R3, #73728
l679: orr R8, R1, R11, LSL #5
l680: mov R7, #52
l681: str R15, [sp, -R7]
l682: cmp R1, #2949120
l683: tst R0, R11, ASR R5
l684: mov R10, #7
l685: ldrsb R0, [sp, -R10]
l686: bCS l694
l687: teqLS R11, #684032
l688: sbcVSs R10, R8, R4, LSL R0
l689: orrPLs R12, R9, R2, ASR R10
l690: teqVC R11, R8, LSR #13
l691: adcGTs R2, R6, R6, ROR #18
l692: addEQs R14, R0, R7, LSL R6
l693: sub R9, R9, R8, ROR R3
l694: teq R0, R2, LSL #19
l695: teqLT R12, R2, LSR R8
l696: nop
l697: swi #15984373
interrupt_375: l698: mov R10, #12
l699: ldrCCB R12, [sp, +R10]
l700: subLE R14, R2, R6, RRX 
l701: cmnGE R15, #10223616
l702: strHIB R11, [sp, #-13]
l703: mov R4, #6
interrupt_465: l704: strVCh R4, [sp, -R4]
l705: clzPL R10, R12
l706: ldrLSsh R2, [sp, #-44]
l707: mov R0, R11, ASR #28
interrupt_280: l708: cmp R4, R15
l709: mov R6, #18
l710: ldrLSB R10, [sp, +R6]
l711: ldrVCsb R4, [sp, #-13]
l712: cmp R14, R11, LSR #31
l713: bicNE R4, R12, R10, RRX 
l714: swi #114739
l715: rsbLE R7, R14, R11, ASR R10
l716: teqVS R0, R6, LSL #13
l717: b l721
interrupt_366: l718: subPL R3, R10, R12
l719: eorLEs R4, R12, R2
l720: clzCC R3, R0
l721: adc R14, R1, R15
l722: ldrNEsb R11, [sp, #-47]
l723: movs R12, R4
l724: mov R4, #19
l725: strB R1, [sp, -R4]
interrupt_529: l726: clzVC R6, R10
l727: swi #9733871
l728: tstEQ R4, R3
l729: mov R3, #24
l730: str R10, [sp, -R3]!
l731: ldrsb R0, [sp, #-21]
l732: sbc R8, R8, #1916928
interrupt_944: l733: nop
l734: tstVC R14, R8, ROR R3
l735: ldr R11, l737
l736: b l738
l737: .word 1048536
l738: swpVS R6, R10, [R11]
l739: mov R1, #44
l740: ldr R12, [sp, +R1]!
l741: adcMIs R12, R3, R7
l742: nop
interrupt_326: l743: ldr R9, l745
l744: b l746
l745: .word 1048536
l746: swpMIb R11, R10, [R9]
l747: eorNE R7, R2, R3
l748: adds R12, R9, R14, LSL R5
l749: clzPL R9, R12
l750: bicEQs R1, R1, R5
l751: cmpVS R6, R14
interrupt_438: l752: andNEs R14, R11, R3, RRX 
l753: mov R4, #16
l754: strB R11, [sp, -R4]
l755: ldr R6, l757
l756: b l758
interrupt_48: l757: .word 1048540
l758: swpb R10, R2, [R6]
l759: ldrNEB R12, [sp, #-69]
l760: movs R8, R7
l761: strPLh R2, [sp, #-32]
interrupt_754: l762: ldrB R1, [sp, #-44]
l763: cmpPL R9, R0
l764: tst R2, R10, ASR #30
l765: mov R2, R10, LSR #15
l766: teq R8, R1
l767: str R1, [sp, #-60]!
l768: swi #9523165
l769: ldrVSsb R9, [sp, #+60]
interrupt_15: l770: bics R9, R9, #852
l771: ldmDB R13!, {R11}
l772: mov R10, #12
l773: ldrh R14, [sp, +R10]
l774: nop
l775: rsbNEs R0, R2, #14
l776: mvnPL R2, #-788529152
l777: swi #6478357
l778: movVCs R8, R5
l779: bHI l787
interrupt_494: l780: teqLT R3, R12, RRX 
l781: rsbCS R4, R12, R9
interrupt_559: l782: rsbs R3, R12, R3
l783: orrHIs R5, R7, R14
l784: addCC R4, R15, R2, ROR #8
l785: andHI R9, R14, R11
interrupt_339: l786: addHI R0, R4, #9472
l787: rsb R7, R0, R4, RRX 
interrupt_960: l788: mov R12, #50
l789: strLEB R2, [sp, +R12]
l790: bicNE R7, R10, R7, LSR R10
l791: stmIB R13, {R1, R5, R6, R7, R9, R13, R15}
l792: orrMIs R5, R11, #570425344
l793: movPLs R2, R2, LSL #28
interrupt_196: l794: ldr R0, l796
interrupt_770: l795: b l797
l796: .word 1048540
interrupt_379: l797: swpNE R14, R3, [R0]
l798: ldmIA R13!, {R0, R1, R6, R7, R8, R10}
l799: mov R6, #32
l800: ldrh R11, [sp, +R6]
l801: ldrHIsh R4, [sp, #+14]
interrupt_848: l802: swi #9460836
l803: clz R5, R3
l804: eors R2, R7, R1, LSR R2
l805: ldmDB R13!, {R0, R1, R6, R7, R10, R14}
l806: ldr R4, [sp, #+4]!
l807: cmnHI R5, R2, LSL R8
l808: mov R14, #4
interrupt_972: l809: ldr R0, [sp, -R14]
l810: mov R10, R9, LSL R14
l811: ldrVSsb R2, [sp, #+37]
l812: sbcs R5, R10, R2
l813: movVCs R8, R14
l814: subs R2, R1, R0
l815: str R2, [sp, #+48]!
l816: bLT l824
l817: cmn R9, #8
l818: teqVS R8, #1761607680
l819: sbcVSs R7, R9, R3, LSL #3
l820: adcGEs R8, R15, R10, LSL #15
l821: sub R5, R5, R1
interrupt_735: l822: mvnLTs R0, #868
interrupt_596: l823: cmpCS R3, #-1946157055
l824: bics R5, R12, R3, LSL #7
l825: subEQ R11, R9, #29360128
l826: ands R9, R1, R9, LSR R14
l827: sbcHIs R8, R9, R3, LSL R14
l828: eor R5, R10, R2
l829: mov R4, #23
l830: ldrsb R0, [sp, -R4]
l831: adc R7, R14, R10, ROR R14
l832: ldr R11, l834
l833: b l835
l834: .word 1048508
l835: swpCS R6, R9, [R11]
l836: adcs R7, R9, R6, RRX 
l837: rscLSs R1, R3, R9, ASR R5
l838: teqGE R9, R10, RRX 
l839: ldrVCsh R9, [sp, #+8]
interrupt_608: l840: subs R9, R2, #4032
interrupt_279: l841: strB R14, [sp, #+11]
l842: stmDA R13!, {R13, R14, R15}
l843: addGTs R14, R6, R0, ASR R2
l844: orrs R1, R8, #-1207959552
l845: cmpPL R8, R6
l846: ldr R14, l848
l847: b l849
interrupt_631: l848: .word 1048544
l849: swpMIb R1, R2, [R14]
l850: cmnPL R12, R10, ASR R4
l851: subLSs R10, R15, R4, RRX 
interrupt_55: l852: mov R12, #4
l853: ldrsb R1, [sp, +R12]
l854: ldr R7, [sp, #-16]
l855: adds R0, R11, #-2147483645
l856: ldmDB R13!, {R2, R7, R8, R10, R11}
l857: andEQs R11, R15, R9, LSL #28
l858: swi #1853337
l859: ldr R9, l861
l860: b l862
l861: .word 1048552
l862: swpEQb R7, R2, [R9]
l863: ldrVSh R1, [sp, #-26]
l864: b l872
interrupt_376: l865: add R1, R0, #202
l866: eorLS R8, R9, R12, LSL R9
interrupt_184: l867: cmp R7, R3, RRX 
l868: sbc R9, R3, R11
l869: mvnVCs R12, #3200
l870: teqPL R8, R15
l871: b l873
l872: b l866
l873: eorPL R8, R2, R10, ASR R8
l874: sbcLEs R5, R5, R8, ROR #13
l875: cmnLS R7, R12, RRX 
l876: ldrLEsh R10, [sp, #+20]
l877: tstLE R12, #1644167168
l878: strMIh R9, [sp, #+24]
l879: swi #15202489
l880: addCSs R12, R1, #754974720
interrupt_803: l881: rsb R7, R8, R7, ASR #24
l882: rsbLTs R3, R1, #6881280
l883: tstCS R10, R10
l884: bLE l894
l885: sbcVC R4, R3, R0, ROR R14
l886: sub R1, R9, #-2147483589
l887: mvns R11, R11, ASR R10
l888: cmn R5, R0, LSL R10
l889: eorVCs R7, R4, R11
l890: rsbPL R4, R6, R7, LSL R2
l891: rscs R0, R15, #286720
interrupt_31: l892: mov R14, #41472
interrupt_648: l893: cmn R7, R5
interrupt_755: l894: subPL R0, R0, #1073741860
l895: mov R5, #8
l896: str R1, [sp, +R5]!
l897: adcVC R0, R8, R4, ASR R7
l898: sub R9, R9, R2, LSR #9
interrupt_748: l899: subs R14, R5, #9600
l900: mov R7, #36
l901: ldrPLsh R12, [sp, -R7]
l902: ldr R2, l904
l903: b l905
l904: .word 1048532
l905: swp R8, R11, [R2]
interrupt_75: l906: movHIs R5, R6, ASR #3
interrupt_74: l907: bVC l912
l908: add R1, R0, #205
l909: adcEQs R10, R4, R9, ASR R14
l910: bicHI R0, R9, R4, ASR R5
l911: b l913
l912: b l909
interrupt_994: l913: mov R14, R4
l914: swi #9109727
l915: adds R11, R4, R9, ROR R5
l916: bicGEs R3, R0, #2392064
l917: movs R1, R7
interrupt_583: l918: stmDB R13!, {R3, R4, R6, R8, R11, R12, R14}
l919: rsbPL R4, R4, R4, LSR R8
l920: mov R12, #2
l921: strVCh R2, [sp, -R12]
l922: orrMIs R3, R11, R7, ASR R1
l923: clzNE R1, R12
l924: add R5, R11, R3, LSL R8
l925: ldr R3, l927
l926: b l928
l927: .word 1048508
l928: swpb R1, R9, [R3]
l929: andLTs R12, R3, R15
l930: nop
interrupt_816: l931: subVSs R3, R12, R5, ROR #22
interrupt_122: l932: cmnNE R6, R8
l933: clzCC R5, R4
l934: tstEQ R6, R2, ROR R8
l935: teq R7, #35840
interrupt_621: l936: subs R8, R11, R9, ROR #27
l937: ldrHIsb R11, [sp, #+23]
l938: nop
interrupt_834: l939: addGE R1, R15, R8, LSR #14
interrupt_115: l940: mvn R0, R7
l941: teqVC R7, R12, RRX 
interrupt_691: l942: b l945
l943: subLSs R12, R10, R0
l944: mov R10, R0
l945: cmpVS R1, R3, ASR R5
l946: andVCs R5, R7, #72
l947: b l957
l948: sbcNEs R14, R7, #752
l949: sbcGT R4, R2, #-1342177273
interrupt_197: l950: mvnCC R5, R15, RRX 
l951: orr R8, R11, R7, LSR R4
l952: orrs R8, R10, #1474560
l953: teqGT R9, #77824
l954: addGTs R6, R12, R0, LSL #11
l955: teqHI R5, #-1073741799
l956: sub R3, R15, #65536
interrupt_116: l957: teqMI R4, R2, LSR R1
interrupt_458: l958: mov R6, #4
l959: strEQB R4, [sp, -R6]
interrupt_89: l960: andGEs R12, R11, R14
l961: orrVC R5, R6, #1409286147
l962: ldrPLsh R11, [sp, #+10]
l963: adcLEs R1, R1, R2
l964: bicVCs R3, R2, R8, ROR R7
l965: b l969
interrupt_571: l966: rsbMIs R14, R0, R5, LSR R3
l967: tstNE R12, R3, LSR R14
l968: subVC R11, R8, R2
interrupt_163: l969: mvnLE R1, R3, RRX 
l970: bVC l975
l971: add R1, R0, #6
l972: teqLS R3, R2, ASR R4
l973: tst R5, R8, RRX 
l974: b l976
l975: b l972
l976: bicCS R9, R12, R12, ASR #22
l977: movs R8, R14, LSR R0
l978: mov R6, #26
interrupt_412: l979: strPLh R10, [sp, +R6]
l980: sbcs R5, R4, R7, LSL #19
interrupt_210: l981: strCCh R6, [sp, #+12]
l982: nop
interrupt_687: l983: strGEh R11, [sp, #+46]
interrupt_899: l984: ldrsb R5, [sp, #+51]
l985: eor R7, R5, R11
interrupt_187: l986: mov R11, #27
l987: strB R0, [sp, +R11]
interrupt_8: l988: mvnLS R2, R4, RRX 
interrupt_87: l989: tstLS R4, R10, RRX 
l990: nop
l991: nop
l992: cmpCC R12, R10
l993: cmnCC R8, R0, LSR #19
l994: eor R0, R10, R2
l995: ldr R11, l997
l996: b l998
l997: .word 1048484
l998: swpMIb R3, R12, [R11]
interrupt_237: l999: cmpHI R0, R5, LSR R14
l1000: ldr R0, l1002
l1001: b l1003
l1002: .word 1048540
l1003: swpLTb R9, R11, [R0]
l1004: strh R11, [sp, #+54]
l1005: tst R14, R9, ROR #14
l1006: mov R14, #36
l1007: str R6, [sp, +R14]!
l1008: subCCs R1, R10, R12, ROR #25
interrupt_460: l1009: ldrGEsb R7, [sp, #-29]
l1010: adcGE R1, R1, #2416
l1011: mov R8, #2
interrupt_794: l1012: ldrh R7, [sp, -R8]
l1013: orrs R5, R3, #188416
l1014: adcVSs R3, R15, R4
l1015: ldrsh R10, [sp, #+4]
l1016: ldr R0, l1018
l1017: b l1019
l1018: .word 1048492
l1019: swpLSb R9, R11, [R0]
l1020: mov R8, #18
l1021: ldrCCh R7, [sp, +R8]
interrupt_542: l1022: addHIs R4, R2, R6, LSL #3
l1023: tst R3, R2
interrupt_405: l1024: ands R0, R2, R11, LSL R2
l1025: ldrh R8, [sp, #-24]
l1026: orrPL R3, R5, #256901120
l1027: mov R2, #28
interrupt_73: l1028: strEQh R6, [sp, -R2]
interrupt_753: l1029: sbc R3, R11, #117
l1030: nop
l1031: swi #464624
l1032: subGT R1, R6, #2998272
l1033: ldrGTh R10, [sp, #-44]
l1034: teqLE R11, R11, LSL R7
l1035: ldrLTsb R10, [sp, #+8]
l1036: mvnNE R8, R14
l1037: movCCs R6, R2
l1038: nop
l1039: bVS l1045
l1040: add R1, R0, #203
l1041: cmpPL R8, #-805306362
l1042: mvnLSs R7, #48128
l1043: mvns R3, R12
interrupt_499: l1044: b l1046
l1045: b l1041
l1046: mov R11, #14
l1047: ldrB R7, [sp, -R11]
l1048: cmpLE R4, R7, LSL R3
interrupt_723: l1049: mov R7, #7
l1050: strB R10, [sp, -R7]
l1051: cmn R2, R15, LSR #28
l1052: orrs R0, R12, R10, LSR R2
l1053: mov R6, #16
l1054: ldrsb R14, [sp, +R6]
interrupt_701: l1055: sbcPLs R0, R4, R8, LSR R11
l1056: tstLE R9, #260046848
l1057: swi #2535958
l1058: adc R11, R0, #-1073741804
interrupt_613: l1059: mov R2, #6
l1060: strh R12, [sp, +R2]
interrupt_464: l1061: bEQ l1068
l1062: rsbVS R12, R15, R1
l1063: clz R8, R1
interrupt_874: l1064: rscEQ R14, R11, R14, LSR #27
l1065: adc R5, R12, R5, ROR R0
l1066: bicGEs R1, R11, R8, LSR #25
l1067: sbcs R11, R15, #-1073741767
l1068: movCSs R5, R5
l1069: swi #2677760
l1070: mov R6, #5
l1071: ldrVSsb R2, [sp, -R6]
l1072: mov R11, #36
interrupt_221: l1073: str R5, [sp, -R11]!
l1074: adcs R7, R4, #-1258291200
l1075: mov R1, #63
l1076: strB R12, [sp, +R1]
interrupt_622: l1077: movs R11, R6, LSR #26
l1078: str R2, [sp, #+16]!
l1079: mov R4, #24
l1080: strLSh R1, [sp, -R4]
interrupt_341: l1081: rsbEQs R5, R9, R3, LSR R2
l1082: stmDB R13!, {R4, R5, R6, R12}
interrupt_474: l1083: mov R10, #65
l1084: ldrB R11, [sp, +R10]
l1085: adcPL R11, R11, R9
interrupt_677: l1086: orr R10, R8, #872415235
interrupt_88: l1087: cmn R14, #66060288
l1088: mov R1, #1
l1089: ldrsb R1, [sp, +R1]
l1090: andMIs R4, R4, R4, LSL R5
l1091: ldrHIB R5, [sp, #+8]
l1092: orrPLs R9, R7, R5
l1093: subLS R3, R5, #1069547520
interrupt_35: l1094: nop
l1095: andLSs R10, R3, #236
l1096: ldrB R0, [sp, #+44]
l1097: strh R5, [sp, #+16]
l1098: teq R2, #1207959552
l1099: mvn R11, R2
l1100: ldr R9, l1102
interrupt_484: l1101: b l1103
l1102: .word 1048544
interrupt_118: l1103: swpGT R8, R3, [R9]
l1104: tstCS R9, #1610612738
l1105: swi #11495568
interrupt_760: l1106: eorMI R9, R2, R9, LSR #28
l1107: cmnCS R12, #-2147483647
l1108: cmnLE R3, R3, LSL R4
l1109: bicVS R10, R3, R0, LSR #23
l1110: ldrEQsb R0, [sp, #+5]
l1111: strh R12, [sp, #+30]
l1112: mov R8, #32
l1113: strPLh R4, [sp, +R8]
l1114: swi #2701303
interrupt_2: l1115: mvnLSs R6, R4
l1116: swi #677377
l1117: adcVC R6, R11, #50944
l1118: clzCS R5, R4
l1119: adc R5, R10, R1, ASR #24
l1120: adcLT R10, R10, #-2147483635
l1121: mov R2, #8
l1122: strNE R4, [sp, -R2]
interrupt_437: l1123: cmn R10, R6
interrupt_573: l1124: mov R12, #2
l1125: strh R11, [sp, -R12]
l1126: ldr R1, l1128
l1127: b l1129
interrupt_857: l1128: .word 1048540
l1129: swp R0, R6, [R1]
l1130: adcEQ R11, R12, #-268435442
interrupt_661: l1131: ldmIB R13!, {R2}
l1132: movs R8, R11
l1133: ldrh R14, [sp, #+18]
l1134: mov R10, #14
l1135: strGTB R5, [sp, +R10]
l1136: strNEh R5, [sp, #+8]
l1137: strB R7, [sp, #+21]
interrupt_335: l1138: mov R7, #805306371
l1139: swi #952531
l1140: rscCS R4, R10, R4, LSL R2
l1141: cmnLS R0, R8
l1142: subCSs R8, R5, R14
l1143: teqGE R0, R1, ROR #24
interrupt_215: l1144: bicGE R4, R11, R6, LSR R9
l1145: ldrGEh R11, [sp, #+62]
interrupt_953: l1146: ldr R5, [sp, #+28]!
l1147: mov R5, #12
interrupt_318: l1148: ldrCSB R8, [sp, -R5]
interrupt_329: l1149: ldmDA R13!, {R3, R9, R12}
l1150: sub R2, R10, #3588096
l1151: rsbMI R14, R5, R10, LSL #6
l1152: stmPLIA R13, {R3, R5, R6, R10, R15}
interrupt_870: l1153: tst R1, R5, ROR #21
l1154: ldr R12, l1156
l1155: b l1157
l1156: .word 1048496
interrupt_38: l1157: swpb R1, R9, [R12]
l1158: cmp R9, R7, ASR R14
l1159: mov R7, #38
l1160: strCCB R12, [sp, +R7]
l1161: stmIA R13!, {R13, R14, R15}
l1162: rsb R3, R2, #268435459
interrupt_352: l1163: eor R2, R9, R6
interrupt_990: l1164: movCC R14, R7, LSL #27
l1165: sbc R3, R5, R2, LSR #23
l1166: eorCS R4, R3, #12648448
l1167: cmp R9, R6, RRX 
interrupt_177: l1168: ldr R5, l1170
l1169: b l1171
l1170: .word 1048528
l1171: swpb R12, R2, [R5]
l1172: bLT l1173
l1173: mvnVS R7, R11, RRX 
l1174: addMI R7, R7, R0, ASR #21
l1175: ldr R5, l1177
l1176: b l1178
l1177: .word 1048488
l1178: swp R7, R9, [R5]
l1179: clzGT R12, R9
l1180: sub R1, R2, R9
l1181: ldmDA R13!, {R1, R5, R6, R7, R11, R12, R14}
l1182: clzLE R12, R12
l1183: stmIA R13!, {R0, R3, R4, R5, R6, R7, R9, R15}
l1184: clzNE R5, R2
l1185: ldmDB R13!, {R10, R12}
interrupt_892: l1186: ldr R7, l1188
l1187: b l1189
l1188: .word 1048492
l1189: swpb R8, R9, [R7]
l1190: eor R6, R1, R9, ROR R11
interrupt_234: l1191: tstHI R5, R4
interrupt_626: l1192: ldr R14, [sp, #-20]
l1193: rsbEQs R14, R8, R8
l1194: mov R0, #8
l1195: ldrsh R0, [sp, +R0]
l1196: tst R5, R3, LSR R14
l1197: b l1203
l1198: mvnVCs R7, R8, RRX 
interrupt_271: l1199: rscLT R8, R7, #13303808
interrupt_764: l1200: subLE R0, R2, R6
interrupt_36: l1201: movGE R1, #77824
l1202: rscPLs R1, R8, R10, ASR #15
l1203: subPL R5, R15, R2, LSL #2
l1204: ldmGEIB R13, {R0, R1, R2, R3, R8, R11, R14}
l1205: clzNE R0, R5
l1206: ldrsh R1, [sp, #-4]
l1207: eor R1, R7, R12, RRX 
interrupt_149: l1208: mov R8, #24
l1209: ldrh R5, [sp, -R8]
l1210: swi #14412959
l1211: teqEQ R9, R1, LSR R2
l1212: swi #15251653
l1213: mov R11, #34
l1214: strVSh R14, [sp, -R11]
interrupt_58: l1215: str R5, [sp, #+32]!
interrupt_796: l1216: teqVC R12, R3, ROR #28
interrupt_809: l1217: sub R1, R15, R8, RRX 
interrupt_138: l1218: mov R2, #56
interrupt_581: l1219: strh R4, [sp, -R2]
l1220: stmDB R13!, {R1, R5, R7, R8, R14}
l1221: rsbHI R3, R8, R12, ROR #18
l1222: rsbs R9, R10, R9, ASR #24
l1223: mov R0, #14
l1224: ldrHIsh R9, [sp, -R0]
l1225: mov R1, #14
l1226: ldrGTh R8, [sp, +R1]
interrupt_788: l1227: and R6, R6, R11, ASR R6
l1228: tstMI R4, R14
l1229: sbcHI R3, R8, R8, ROR R6
l1230: tst R9, R14
l1231: ldrB R4, [sp, #+10]
l1232: stmIB R13, {R5, R7, R10, R13, R15}
interrupt_248: l1233: andMIs R6, R6, R6
interrupt_79: l1234: eorCS R9, R11, #120
l1235: stmMIDB R13, {R3, R6, R12}
l1236: mov R0, #28
l1237: ldrHIsb R11, [sp, -R0]
l1238: swi #4223994
l1239: sbcMIs R12, R10, R2
l1240: sbcLSs R11, R1, #1023410176
l1241: ldmDA R13!, {R1, R6, R7, R8}
l1242: ldmDB R13!, {R4, R5, R8, R9, R12}
l1243: mov R10, #17
l1244: ldrB R14, [sp, +R10]
l1245: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R10, R11, R14}
l1246: ldr R7, l1248
l1247: b l1249
l1248: .word 1048536
interrupt_421: l1249: swpEQb R2, R5, [R7]
l1250: bHI l1259
interrupt_168: l1251: sbcEQ R2, R3, R3
l1252: rsbMIs R5, R2, R11
interrupt_832: l1253: mvn R10, #492
interrupt_62: l1254: adcNE R2, R10, #18432
interrupt_106: l1255: addLEs R14, R10, R5
l1256: eorEQs R9, R4, R1, ASR #29
l1257: bicLSs R6, R1, #-805306365
interrupt_137: l1258: sbc R6, R11, R14, RRX 
l1259: teqCC R5, R4, ROR R6
interrupt_727: l1260: bic R10, R3, R3, ROR R9
interrupt_147: l1261: strNE R9, [sp, #+12]
l1262: bicEQ R11, R7, R12
l1263: mov R7, #18
l1264: ldrsb R4, [sp, -R7]
interrupt_449: l1265: bEQ l1268
l1266: orrLEs R9, R1, #3088
l1267: rsbMIs R14, R5, R5, LSL #3
interrupt_493: l1268: teqLT R14, #34560
interrupt_269: l1269: tstGE R8, R12, ROR R12
l1270: mvnNE R3, #1342177280
l1271: b l1278
l1272: add R1, R0, #119
l1273: movVC R7, #268435468
l1274: andMI R6, R10, R10
l1275: bics R3, R5, #187695104
interrupt_263: l1276: rscVCs R4, R15, R12
l1277: b l1279
l1278: b l1273
l1279: sub R14, R8, R2
interrupt_629: l1280: mov R14, #18
l1281: ldrEQh R1, [sp, -R14]
l1282: sbc R6, R5, #608
interrupt_351: l1283: eor R3, R1, R8, LSL R10
interrupt_898: l1284: ldr R3, l1286
interrupt_926: l1285: b l1287
l1286: .word 1048492
interrupt_64: l1287: swp R12, R2, [R3]
l1288: b l1290
l1289: cmn R7, R14
interrupt_179: l1290: cmp R1, R0
l1291: ldrLTB R4, [sp, #-60]
l1292: clz R1, R5
l1293: mov R2, #3
l1294: ldrLSsb R11, [sp, +R2]
l1295: teqHI R4, R9
l1296: ldr R4, l1298
l1297: b l1299
l1298: .word 1048552
l1299: swp R1, R7, [R4]
interrupt_404: l1300: orrs R7, R12, R8, ROR R7
l1301: orrNE R7, R1, R2, ROR R8
interrupt_584: l1302: stmDB R13, {R9, R11}
l1303: mov R1, #36
l1304: ldrsb R3, [sp, -R1]
l1305: cmn R6, R4, ASR #13
l1306: adds R4, R5, R11, RRX 
l1307: mov R7, #0
l1308: ldr R3, [sp, +R7]!
l1309: ldrGE R11, [sp, #-60]
interrupt_556: l1310: teqEQ R6, #1835008
l1311: andNE R12, R6, #55808
l1312: subVC R0, R3, R11, ASR #28
interrupt_173: l1313: ldr R2, l1315
interrupt_968: l1314: b l1316
l1315: .word 1048512
l1316: swpb R0, R9, [R2]
l1317: stmIB R13!, {R1, R5}
l1318: ldr R9, l1320
l1319: b l1321
l1320: .word 1048520
l1321: swpVCb R5, R11, [R9]
l1322: teqMI R3, #-1459617792
l1323: bicHIs R11, R14, #-1526726656
l1324: teqPL R12, R0
l1325: subLSs R14, R1, R3
l1326: addGTs R14, R0, R0
l1327: rsb R5, R4, #30670848
l1328: ldrNEB R7, [sp, #+0]
interrupt_540: l1329: movMIs R3, R6, ASR R6
interrupt_786: l1330: mov R5, #55
interrupt_359: l1331: ldrVSsb R11, [sp, -R5]
l1332: bHI l1336
l1333: add R1, R0, #195
l1334: rsbGEs R14, R14, R9
l1335: b l1337
interrupt_845: l1336: b l1334
l1337: ldr R0, l1339
interrupt_518: l1338: b l1340
l1339: .word 1048548
l1340: swp R10, R6, [R0]
interrupt_11: l1341: tst R9, R15, ROR #20
l1342: sbcPLs R10, R3, R15, RRX 
interrupt_554: l1343: addGT R4, R2, R10, ASR R4
l1344: stmDB R13!, {R13, R15}
l1345: cmpMI R11, R6
l1346: ldr R14, l1348
interrupt_886: l1347: b l1349
l1348: .word 1048496
l1349: swpCS R2, R6, [R14]
l1350: movLE R9, R6
interrupt_45: l1351: tstCS R12, #163577856
l1352: orrEQ R6, R8, R2, ROR R0
l1353: mov R12, #8
l1354: ldrCSsh R3, [sp, -R12]
interrupt_338: l1355: mov R2, #48
l1356: strB R1, [sp, -R2]
l1357: subs R5, R3, R15, RRX 
interrupt_381: l1358: adc R5, R8, R7
l1359: ldrh R11, [sp, #-46]
l1360: cmn R15, R0, ASR #24
interrupt_284: l1361: clz R0, R11
l1362: teq R14, R11, RRX 
l1363: mov R6, #14
l1364: ldrLTB R12, [sp, -R6]
l1365: strPLB R10, [sp, #-56]
l1366: bics R2, R9, R9, RRX 
l1367: adds R8, R0, R8, LSL R0
l1368: mvn R6, #208
l1369: addGEs R9, R15, R5, ASR #15
l1370: mov R4, #6
l1371: ldrNEh R5, [sp, +R4]
l1372: b l1379
l1373: andLT R0, R8, R3, ASR #28
l1374: mov R3, R15
l1375: eors R7, R7, R9, LSR R6
l1376: cmp R15, R12, RRX 
l1377: adds R3, R11, R4, LSL R9
l1378: subCC R12, R12, R11, ASR R8
interrupt_80: l1379: andGEs R3, R1, R5
interrupt_732: l1380: tstPL R8, R8
l1381: subs R10, R0, R14, LSL R1
l1382: ldr R2, [sp, #+0]!
l1383: mov R3, #52
l1384: ldr R12, [sp, -R3]!
l1385: bEQ l1393
l1386: add R1, R0, #9
l1387: rscHI R6, R5, R2, LSR R10
interrupt_447: l1388: ands R0, R5, R12
interrupt_148: l1389: rsc R2, R12, #251658240
interrupt_825: l1390: orr R6, R10, R10
interrupt_132: l1391: tst R0, R4
l1392: b l1394
l1393: b l1387
l1394: bics R2, R2, R15, RRX 
interrupt_722: l1395: cmpGE R8, #69632
l1396: movGT R12, R6, ROR R6
l1397: ldr R12, [sp], #+24
interrupt_336: l1398: rscLTs R9, R6, R14, LSR #22
l1399: clz R2, R8
l1400: mov R5, #1
interrupt_369: l1401: strMIB R14, [sp, +R5]
l1402: ldmIA R13!, {R7, R8, R11}
l1403: ldrLSh R7, [sp, #-10]
l1404: ldrB R14, [sp, #-18]
interrupt_506: l1405: ldrEQB R3, [sp, #+31]
l1406: movLEs R9, R12, LSR #28
l1407: bMI l1412
l1408: add R1, R0, #121
l1409: teqGE R8, R1, ROR #9
l1410: subs R12, R6, #92
l1411: b l1413
l1412: b l1409
interrupt_317: l1413: mvn R5, R1, ASR R1
l1414: orr R3, R0, #25690112
interrupt_46: l1415: tstNE R3, R2, LSR #27
interrupt_961: l1416: mov R9, #40
l1417: strLSB R2, [sp, -R9]
interrupt_550: l1418: bicLE R6, R3, R14, ROR R10
l1419: ldr R3, [sp], #+24
l1420: mov R4, #9
l1421: ldrB R4, [sp, -R4]
l1422: clzLT R10, R1
interrupt_586: l1423: cmpLT R10, R3, ASR R6
l1424: rsbPLs R12, R9, R0
interrupt_589: l1425: orrVCs R4, R10, R2, LSL R0
l1426: mov R0, #16
l1427: str R8, [sp, -R0]!
l1428: mov R11, #49
l1429: strCSB R11, [sp, -R11]
l1430: ldrPLsb R6, [sp, #+23]
l1431: mvn R3, R8
l1432: teqEQ R6, R12, LSL #30
interrupt_545: l1433: str R1, [sp], #+4
interrupt_777: l1434: ldr R2, [sp, #-8]
l1435: orrs R3, R3, R4, ASR #4
l1436: sbcEQ R8, R2, #2013265920
interrupt_217: l1437: bNE l1445
l1438: mvnLSs R12, #1627389952
l1439: sbcs R4, R4, #630784
interrupt_119: l1440: rscPL R4, R7, #56832
l1441: eors R11, R12, R11
l1442: rscNEs R11, R9, R8
l1443: rsc R4, R7, R1, RRX 
l1444: teq R4, #11862016
l1445: sub R14, R0, R7, RRX 
interrupt_344: l1446: mov R6, #16
interrupt_970: l1447: strGTB R5, [sp, +R6]
l1448: strVC R12, [sp, #-24]
l1449: subPLs R8, R11, R4, LSL R10
l1450: teqHI R4, #3735552
l1451: ldr R11, l1453
interrupt_713: l1452: b l1454
interrupt_434: l1453: .word 1048496
l1454: swp R8, R10, [R11]
l1455: swi #6195314
l1456: bNE l1466
l1457: orrMI R11, R3, R8
l1458: tst R4, R4
l1459: bic R12, R3, #42729472
l1460: eorEQ R14, R4, R10
l1461: cmp R2, R8
l1462: rsc R0, R1, R9, ASR #19
l1463: orrNEs R11, R5, R6, LSL #9
l1464: cmpPL R4, R7, ROR R4
l1465: adcs R11, R5, #-536870909
l1466: adcCS R8, R11, R3, ASR #29
l1467: b l1471
l1468: add R14, R6, #5952
l1469: clz R14, R6
l1470: mvns R4, #215
l1471: adcGT R0, R9, R3, RRX 
l1472: bNE l1480
l1473: bic R14, R8, R1, LSL #21
interrupt_869: l1474: andHI R9, R5, R0, ASR #21
l1475: rsbPLs R10, R3, R9, LSR R10
interrupt_602: l1476: rscCC R14, R7, R0, ASR #13
l1477: eor R9, R14, #42240
l1478: cmn R10, #20224
l1479: addEQs R4, R6, R14
l1480: subCCs R1, R1, #29952
l1481: eors R7, R11, R5, ROR R3
l1482: adds R9, R15, R1
interrupt_856: l1483: ldrsh R14, [sp, #-42]
l1484: stmIB R13, {R0, R9, R13}
l1485: mov R4, #995328
interrupt_510: l1486: rsbCSs R12, R8, R0, LSL R4
l1487: tstHI R1, #536870915
interrupt_943: l1488: subHIs R11, R14, #4096000
l1489: tst R6, #-1140850688
l1490: subVSs R7, R2, R2, RRX 
l1491: ldrCCh R11, [sp, #-26]
l1492: mov R11, #50
interrupt_57: l1493: ldrh R8, [sp, -R11]
l1494: stmIB R13, {R12}
l1495: mov R0, #7
l1496: strB R14, [sp, -R0]
l1497: add R7, R3, #1140850690
l1498: mov R2, #4
l1499: ldrB R3, [sp, -R2]
interrupt_241: l1500: ldr R5, [sp, #-44]!
l1501: ldrsb R11, [sp, #+47]
l1502: ldr R11, l1504
interrupt_843: l1503: b l1505
l1504: .word 1048496
l1505: swpLTb R8, R14, [R11]
l1506: ldr R12, l1508
l1507: b l1509
interrupt_410: l1508: .word 1048552
l1509: swpHIb R6, R11, [R12]
l1510: orrPLs R8, R0, R14, ASR #25
l1511: clzCC R9, R3
l1512: sub R14, R8, R15, ASR #21
l1513: nop
l1514: adc R9, R10, R14, LSL R2
l1515: b l1522
l1516: bics R12, R2, R11, LSR #9
l1517: subGE R8, R12, R15, LSL #15
l1518: clzPL R6, R6
interrupt_623: l1519: adc R2, R8, R14
l1520: rsbEQ R11, R3, R14
l1521: adc R2, R7, #14483456
interrupt_772: l1522: eors R6, R14, R6, ROR #30
l1523: mov R0, #16
l1524: ldrsh R0, [sp, +R0]
l1525: rscVCs R11, R2, R6, ASR R9
l1526: rsbPL R1, R3, R0
l1527: eorLEs R5, R3, R15
l1528: subs R2, R2, R11
l1529: ldr R4, l1531
l1530: b l1532
l1531: .word 1048536
l1532: swpVSb R12, R2, [R4]
interrupt_146: l1533: rscLSs R6, R2, #856
interrupt_97: l1534: tst R15, R1, RRX 
interrupt_383: l1535: teq R3, R1, LSL #9
l1536: stmIB R13!, {R13, R14}
l1537: ldr R7, [sp, #+8]!
l1538: rscHI R1, R1, #61341696
l1539: mov R8, #40
l1540: str R3, [sp, +R8]!
l1541: clzVC R4, R4
interrupt_361: l1542: movGEs R5, R3, ROR #26
l1543: bPL l1549
l1544: add R1, R0, #80
l1545: rscs R8, R5, R7
l1546: cmnCS R4, R1, ASR R3
l1547: eorLSs R4, R10, R3
l1548: b l1550
l1549: b l1545
l1550: ldrh R8, [sp, #-58]
l1551: mov R3, #61
l1552: strB R0, [sp, -R3]
interrupt_273: l1553: mov R2, #4
l1554: ldrMIh R11, [sp, +R2]
l1555: and R3, R5, R8, LSR #9
interrupt_19: l1556: teqCC R3, R15, RRX 
l1557: b l1566
l1558: eors R4, R1, #4288
l1559: subHI R12, R10, R0, ROR #21
interrupt_995: l1560: tst R7, R2, RRX 
l1561: addVS R3, R4, R5, ROR #25
l1562: orrs R7, R2, R10, RRX 
l1563: rscVCs R2, R1, R9, LSL #16
l1564: cmpEQ R14, R0, RRX 
l1565: andPLs R7, R0, #-2147483586
l1566: subs R1, R4, #716800
l1567: adcs R7, R0, R10, ASR #29
interrupt_282: l1568: sbc R1, R4, R12, LSL R4
l1569: orr R6, R9, R3, LSR R5
l1570: b l1573
interrupt_904: l1571: cmnCS R1, R2, ASR #18
interrupt_830: l1572: rsbLE R9, R6, #41
l1573: cmpVC R14, R12
l1574: sbcGE R2, R2, R6, LSR R11
l1575: adcLE R11, R15, #-1543503870
l1576: addVC R7, R7, #42729472
interrupt_433: l1577: nop
l1578: stmVCIB R13, {R4}
l1579: stmLEDA R13, {R5, R6, R13}
interrupt_566: l1580: ldrPLB R7, [sp, #-49]
l1581: b l1587
l1582: cmpLT R15, R8, RRX 
l1583: teqMI R4, R1
l1584: sbc R10, R0, #855638016
l1585: mvnMI R14, R6
interrupt_530: l1586: cmp R5, #-536870897
l1587: andGT R8, R6, R11, LSL #22
interrupt_246: l1588: adcGT R12, R10, R0, ROR #13
l1589: ldr R12, l1591
l1590: b l1592
l1591: .word 1048552
l1592: swpLS R7, R10, [R12]
interrupt_399: l1593: ldr R14, l1595
interrupt_829: l1594: b l1596
interrupt_229: l1595: .word 1048488
l1596: swpb R2, R10, [R14]
l1597: ldr R7, [sp, #-60]!
l1598: cmn R8, R12
l1599: cmpLS R10, R2
l1600: subMI R3, R15, R15
interrupt_547: l1601: adcs R0, R9, R2
l1602: mov R1, #0
interrupt_941: l1603: strVCh R4, [sp, +R1]
l1604: ldrB R6, [sp, #+13]
l1605: cmnNE R5, R3, LSR R14
interrupt_397: l1606: rsbNE R4, R0, R8, ASR R5
interrupt_230: l1607: bLS l1614
l1608: add R1, R0, #216
interrupt_209: l1609: tstLT R15, R1
l1610: adcMIs R6, R2, R5, ASR R4
l1611: orr R5, R4, R2, ROR #16
l1612: sbc R14, R1, R5
l1613: b l1615
l1614: b l1609
l1615: ldr R9, l1617
l1616: b l1618
l1617: .word 1048548
interrupt_503: l1618: swp R14, R10, [R9]
l1619: nop
l1620: bics R12, R0, R0, LSR R12
l1621: subMIs R8, R10, #159
interrupt_593: l1622: subs R11, R0, R10, ROR R5
interrupt_249: l1623: nop
l1624: sub R2, R9, R9
l1625: ldrVSsb R9, [sp, #-7]
l1626: cmp R7, R8, LSL R9
l1627: movGE R9, #41
l1628: nop
l1629: eorCS R3, R14, #7424
l1630: ldrNEsh R0, [sp, #-6]
l1631: orr R4, R5, R15
l1632: rsbCSs R5, R0, #2572288
l1633: strHI R7, [sp, #+56]
l1634: ldrCSsb R12, [sp, #+64]
l1635: mov R0, #1
l1636: ldrB R2, [sp, -R0]
interrupt_879: l1637: strHI R0, [sp, #+52]
l1638: sub R0, R0, R3, LSR #8
l1639: rsb R14, R9, R2, LSR #11
l1640: ldr R2, l1642
interrupt_212: l1641: b l1643
l1642: .word 1048508
l1643: swp R3, R10, [R2]
interrupt_950: l1644: mov R10, #16
l1645: strVCh R8, [sp, +R10]
l1646: adcEQs R0, R5, #753664
l1647: nop
interrupt_919: l1648: rscs R10, R11, R8
l1649: rsbVS R1, R11, #-603979775
l1650: ands R7, R11, R3, LSR #24
l1651: movHI R12, R9, LSL #8
l1652: bPL l1657
l1653: add R1, R0, #203
l1654: clzGE R14, R10
interrupt_385: l1655: sub R9, R0, R15, RRX 
l1656: b l1658
l1657: b l1654
l1658: nop
l1659: adcLE R7, R1, #235
l1660: ldrHIh R9, [sp, #+50]
l1661: bicGEs R2, R12, R5, LSL R3
l1662: ldrCSh R9, [sp, #+10]
l1663: swi #2471517
l1664: ldrGT R6, [sp, #+44]
l1665: orr R7, R5, #267386880
l1666: rsc R5, R3, R15, RRX 
l1667: adcNEs R3, R0, R12, RRX 
l1668: addNE R3, R11, R1, ROR #12
l1669: ldrNEsb R2, [sp, #+52]
l1670: adcHIs R0, R7, R3, RRX 
l1671: adcGEs R7, R4, R10
l1672: clzCC R6, R12
l1673: ldrVSsh R5, [sp, #+30]
l1674: sub R9, R6, #830472192
l1675: bics R2, R9, R5, ASR R12
interrupt_938: l1676: mov R0, #4
l1677: ldrCCsb R0, [sp, -R0]
l1678: mvns R1, R0, ROR #3
interrupt_47: l1679: cmn R10, #394264576
l1680: mov R7, #4
l1681: ldrMIh R6, [sp, +R7]
l1682: ldrNEsb R11, [sp, #+18]
l1683: mov R7, #52
l1684: ldr R1, [sp], +R7
l1685: rsbNE R14, R1, #2162688
l1686: ldrh R5, [sp, #-40]
l1687: addLT R12, R4, #2179072
interrupt_244: l1688: swi #14161029
l1689: tstEQ R7, R2, ROR #15
interrupt_403: l1690: sbcVS R5, R12, R5, LSR R9
interrupt_487: l1691: swi #14690775
l1692: cmnLT R0, #2048
l1693: b l1698
l1694: add R1, R0, #131
l1695: eorCC R14, R7, #133169152
l1696: andNEs R6, R4, R0
l1697: b l1699
l1698: b l1695
l1699: mov R4, #16
l1700: ldrVSsh R8, [sp, -R4]
l1701: mov R4, #60
l1702: str R5, [sp], -R4
l1703: ldmIA R13!, {R2}
l1704: ldrh R4, [sp, #+54]
l1705: cmpCC R9, #2192
l1706: rsbGT R8, R6, R14, ASR R11
l1707: b l1716
l1708: cmn R5, #165
l1709: tstVS R7, R15, LSL #0
l1710: movVS R3, R11, LSR #19
l1711: tstCS R12, #13312
l1712: addLE R1, R12, R0, LSL #23
interrupt_878: l1713: eors R3, R4, #164626432
l1714: clzVS R8, R5
interrupt_597: l1715: sbcGT R6, R3, R14, ASR #14
l1716: adcs R14, R15, R15
l1717: mvns R11, R7
l1718: rscVSs R5, R10, R11
l1719: nop
l1720: ldrh R9, [sp, #+2]
interrupt_564: l1721: sub R0, R11, #76
l1722: andLSs R4, R10, R5, LSR R1
l1723: sbcMIs R8, R11, R4, LSR R14
interrupt_291: l1724: eorVSs R8, R0, #889192448
l1725: mov R6, #4
l1726: ldrCSsb R14, [sp, +R6]
l1727: ldrGEh R6, [sp, #+44]
l1728: cmp R8, R0
l1729: swi #6728419
l1730: eorLEs R1, R10, R5, LSL #18
l1731: b l1736
l1732: add R1, R0, #36
l1733: rsbGEs R8, R9, R7, LSL R12
l1734: bicEQ R0, R12, R1
l1735: b l1737
interrupt_472: l1736: b l1733
l1737: mov R1, #42
l1738: strMIh R14, [sp, +R1]
l1739: sub R8, R11, #738197505
l1740: clz R4, R12
l1741: bicGT R2, R1, #38797312
l1742: swi #9272989
l1743: subLEs R9, R10, #157696
l1744: adds R10, R3, R4, ASR #23
l1745: ldmMIIB R13, {R2, R10}
l1746: bGE l1754
l1747: cmpCC R15, R8, RRX 
l1748: adds R12, R8, R14
interrupt_204: l1749: subLSs R0, R15, R15, LSR #10
interrupt_749: l1750: tst R6, R3
l1751: orr R6, R7, R14, ASR #7
l1752: and R12, R9, R4, LSR #23
l1753: tstEQ R0, R9, LSL R12
interrupt_654: l1754: tstPL R15, R5, ROR #10
l1755: mov R2, #40
interrupt_801: l1756: strh R5, [sp, +R2]
l1757: ldmIB R13!, {R0, R1}
interrupt_563: l1758: ldr R4, l1760
l1759: b l1761
l1760: .word 1048480
l1761: swpMI R8, R1, [R4]
l1762: and R3, R7, R1
l1763: str R9, [sp, #+60]
l1764: eorGTs R7, R6, #64
l1765: teqHI R1, R5
l1766: bPL l1774
l1767: sbcVS R11, R0, R5
l1768: bicLSs R11, R14, R12, RRX 
l1769: adcMIs R1, R9, R14, LSR R12
interrupt_260: l1770: mvnHIs R10, R6, LSR R0
interrupt_512: l1771: subLTs R9, R4, R10, LSL R6
l1772: clz R3, R2
l1773: orrs R14, R1, R7
interrupt_422: l1774: rsbNE R0, R9, #34865152
l1775: ldrh R4, [sp, #+58]
interrupt_653: l1776: mov R0, #28
l1777: ldr R8, [sp, +R0]
interrupt_3: l1778: strGTh R11, [sp, #+26]
interrupt_876: l1779: teq R1, #622592
l1780: subLE R8, R8, R15, LSR #18
l1781: sub R1, R7, R14, ROR R2
l1782: ldr R1, l1784
l1783: b l1785
l1784: .word 1048528
l1785: swpVC R0, R9, [R1]
l1786: mov R5, #56
interrupt_744: l1787: strh R12, [sp, +R5]
l1788: mov R10, #12
l1789: str R6, [sp], -R10
l1790: sbc R12, R15, R2
l1791: ldmIA R13, {R0, R2, R3, R4, R6, R7, R9, R11, R12}
l1792: ldmIA R13!, {R1, R2}
interrupt_562: l1793: bic R9, R12, #107520
l1794: andVSs R10, R4, #-1677721599
l1795: ldr R3, l1797
l1796: b l1798
interrupt_709: l1797: .word 1048492
l1798: swpb R4, R6, [R3]
l1799: orrs R9, R3, #14417920
l1800: adcs R6, R14, #36864
interrupt_759: l1801: bics R4, R10, #22020096
interrupt_800: l1802: orrLS R5, R7, R6, ROR R9
l1803: mov R7, #42
l1804: ldrPLsb R10, [sp, +R7]
l1805: clzPL R9, R6
interrupt_752: l1806: strLEB R14, [sp, #+17]
l1807: ldmIB R13!, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l1808: bGE l1814
l1809: add R1, R0, #154
l1810: sbcVSs R7, R11, R15
l1811: eors R8, R0, #-385875968
l1812: cmn R9, R5, ROR #8
l1813: b l1815
l1814: b l1810
l1815: b l1820
l1816: add R1, R0, #77
l1817: bic R3, R5, #121634816
l1818: orr R11, R8, #11776
l1819: b l1821
l1820: b l1817
interrupt_836: l1821: swi #7939645
l1822: ldmDB R13!, {R2}
l1823: tstVS R3, #220160
interrupt_872: l1824: ldmIB R13!, {R7}
l1825: mov R6, #24
l1826: ldrsh R0, [sp, -R6]
l1827: sbcVS R12, R14, R9, LSR #5
l1828: addCSs R2, R1, #991232
l1829: mov R14, #11
l1830: strB R11, [sp, +R14]
l1831: mov R5, #57
interrupt_290: l1832: ldrsb R2, [sp, -R5]
l1833: mov R7, #60
l1834: str R3, [sp, -R7]!
l1835: mvnLTs R6, R10
l1836: mov R6, #28
l1837: ldrsh R2, [sp, +R6]
l1838: andEQs R2, R14, R9, ASR R14
l1839: adcLTs R10, R2, R6, LSL #16
l1840: bPL l1845
interrupt_253: l1841: rsbs R2, R4, R6, LSL #23
l1842: add R11, R6, R6, LSL R1
interrupt_297: l1843: movHI R14, R10, LSL #24
l1844: teq R6, #17
l1845: rsbVSs R0, R12, R12, RRX 
l1846: tst R9, R3, LSR R5
l1847: clz R14, R2
l1848: strLTh R14, [sp, #+52]
interrupt_107: l1849: eorCS R9, R2, R1, ROR R10
l1850: eorLT R0, R8, #12608
l1851: b l1855
l1852: add R1, R0, #143
l1853: cmpLT R8, R2, RRX 
l1854: b l1856
l1855: b l1853
l1856: mov R0, #73
l1857: ldrsb R12, [sp, +R0]
interrupt_980: l1858: mov R10, #68
interrupt_790: l1859: strPLh R1, [sp, +R10]
interrupt_113: l1860: ldrh R3, [sp, #+12]
interrupt_811: l1861: ldr R7, l1863
l1862: b l1864
l1863: .word 1048540
l1864: swpPLb R5, R9, [R7]
l1865: cmn R10, R7, ASR #11
l1866: mov R14, R2, ROR R12
l1867: ldrLEh R0, [sp, #+6]
l1868: mov R10, #55
l1869: strVCB R10, [sp, +R10]
l1870: cmnMI R2, R9, ROR R12
l1871: swi #4320277
l1872: mov R10, #3
l1873: strB R0, [sp, +R10]
interrupt_390: l1874: sbc R2, R6, R7
l1875: swi #15964655
interrupt_987: l1876: mov R4, #43
l1877: ldrB R3, [sp, +R4]
l1878: eors R12, R3, R11, LSL #17
l1879: mov R4, #39
l1880: ldrMIB R5, [sp, +R4]
l1881: mov R0, #0
l1882: ldrsh R14, [sp, +R0]
l1883: cmpHI R1, #44826624
l1884: adc R12, R15, R15
l1885: add R4, R4, R5, LSR R1
l1886: ldr R9, l1888
l1887: b l1889
l1888: .word 1048480
l1889: swpb R0, R10, [R9]
interrupt_962: l1890: ldr R0, l1892
l1891: b l1893
l1892: .word 1048552
l1893: swpLT R4, R9, [R0]
l1894: swi #7004465
interrupt_663: l1895: orrVCs R10, R11, #6815744
l1896: eors R10, R14, #9961472
l1897: rsb R5, R3, R4, ROR R1
l1898: clzGT R0, R12
l1899: teq R2, #240
l1900: b l1904
l1901: add R1, R0, #57
interrupt_407: l1902: rsc R8, R9, R7, LSL #29
l1903: b l1905
l1904: b l1902
l1905: ldrsh R12, [sp, #+68]
l1906: mvnLS R12, R7
l1907: str R6, [sp, #+36]!
l1908: sbc R1, R7, R3, ROR R12
l1909: str R8, [sp], #-24
interrupt_652: l1910: cmp R10, R10
l1911: swi #10677590
l1912: bics R6, R1, #568
l1913: mov R2, #20
l1914: ldr R10, [sp, +R2]!
l1915: mov R8, #10
l1916: ldrB R6, [sp, -R8]
interrupt_924: l1917: cmpPL R9, R2, ROR R5
l1918: clzMI R14, R5
l1919: rscGE R3, R3, R15
l1920: ldr R8, l1922
l1921: b l1923
interrupt_912: l1922: .word 1048552
l1923: swp R1, R9, [R8]
l1924: tstLE R4, R11
l1925: clz R4, R3
l1926: mov R8, #40
interrupt_108: l1927: strNEh R7, [sp, +R8]
l1928: adcs R14, R1, #15728640
l1929: mov R10, #32
l1930: str R12, [sp], -R10
l1931: mov R9, #56
interrupt_37: l1932: ldrCCh R11, [sp, +R9]
l1933: mov R5, #74
l1934: strPLh R11, [sp, +R5]
interrupt_946: l1935: mov R1, #20
l1936: strB R5, [sp, +R1]
l1937: ldrLTsb R3, [sp, #+21]
interrupt_728: l1938: rscLE R9, R9, R10, LSR R3
l1939: teq R11, #1867776
l1940: clzGT R1, R10
l1941: bHI l1950
l1942: bicCSs R14, R11, #974848
l1943: rsbs R3, R5, R6, ROR #14
l1944: rsb R8, R7, R3, LSL R4
l1945: mvnGT R14, R5, LSL R2
l1946: cmnCC R10, R4, ASR #6
l1947: rscNE R6, R6, R14, LSR R14
l1948: movNE R9, R1, RRX 
l1949: cmnVS R1, R9
l1950: mvns R6, R8
l1951: subs R11, R5, R4, ASR #14
l1952: bLE l1955
interrupt_128: l1953: tst R1, R9, ROR R12
l1954: and R7, R4, R12, RRX 
l1955: teqCC R11, #16777216
l1956: swi #11906836
interrupt_940: l1957: adcCSs R14, R15, R9, RRX 
l1958: b l1967
interrupt_285: l1959: clzGE R8, R2
l1960: adc R6, R9, R7, ASR R8
l1961: subHIs R7, R3, #-939524096
l1962: sbcGT R9, R8, R3, ASR #16
l1963: clzPL R3, R8
l1964: teq R8, R14
l1965: adcEQs R11, R2, R9, LSL R11
l1966: addEQs R9, R0, R3, LSL #3
l1967: subs R7, R14, R15
interrupt_227: l1968: mov R5, #8
interrupt_408: l1969: ldrPL R7, [sp, +R5]
l1970: b l1979
interrupt_289: l1971: add R1, R0, #190
l1972: subGT R10, R9, R8, RRX 
l1973: rsbLSs R8, R10, R9, ROR R9
l1974: cmnCS R7, R14, ASR R7
interrupt_43: l1975: orr R8, R14, R10, LSL #30
l1976: orrGEs R11, R11, R7
l1977: teqGT R5, #38273024
interrupt_757: l1978: b l1980
l1979: b l1972
l1980: subs R8, R5, R6, LSR #0
l1981: teqNE R15, R10
l1982: orrLTs R1, R11, R8
interrupt_789: l1983: ldr R8, l1985
l1984: b l1986
l1985: .word 1048540
l1986: swpb R11, R12, [R8]
interrupt_710: l1987: sub R5, R11, R5
l1988: swi #14477770
interrupt_948: l1989: cmn R14, R7, ROR R11
l1990: orr R11, R8, #294912
interrupt_580: l1991: subVC R5, R8, #784334848
l1992: subLE R0, R6, R0
l1993: andLSs R12, R10, R11, LSL #30
l1994: eorLT R1, R3, #147456
interrupt_649: l1995: adcPL R6, R15, R6
l1996: cmpMI R1, #-822083584
l1997: sbcLSs R3, R3, R12, ROR R9
l1998: eorVC R9, R2, R2, LSL #0
l1999: b l2002
l2000: cmnLE R12, R14, ASR R9
l2001: rsbs R10, R6, #2113929216
interrupt_783: l2002: sbcNEs R11, R3, R5
l2003: bVS l2012
l2004: rsbHI R11, R14, R5
l2005: adds R6, R12, R11, ASR #14
interrupt_265: l2006: mvnMIs R2, R3
interrupt_86: l2007: tst R4, R2, ASR R7
l2008: adc R14, R14, R10, ASR R4
interrupt_95: l2009: bicCCs R1, R6, R4
l2010: adcLE R4, R6, R4, ROR R1
l2011: mvns R14, R7, LSR R2
l2012: cmpPL R0, R1, ASR R6
l2013: adcs R4, R5, R8
l2014: ldmIB R13!, {R0, R1, R2, R3, R7, R8}
l2015: cmnCC R8, #17664
l2016: rsbGTs R3, R3, #1808
l2017: ldr R14, [sp, #-12]!
interrupt_933: l2018: swi #11311734
l2019: cmpVC R5, #-805306359
l2020: cmp R3, R11, RRX 
l2021: str R2, [sp, #+8]!
l2022: orr R6, R12, R3
l2023: ldrPLB R12, [sp, #+13]
l2024: ldrLEsb R10, [sp, #+13]
interrupt_673: l2025: str R10, [sp], #-8
l2026: sub R7, R5, R9, ROR #11
l2027: teqGT R14, R6, ASR #18
l2028: tstGT R6, #-1073741821
l2029: bVS l2033
l2030: orrVC R14, R12, R3, RRX 
l2031: movCS R12, R1, RRX 
l2032: cmnGE R11, R5
interrupt_539: l2033: cmnVC R1, R14, ASR #20
l2034: andNE R12, R1, R8, ASR R8
l2035: nop
l2036: mvn R3, #81
l2037: cmnMI R2, R12, LSL R7
l2038: sub R1, R5, R11, LSL #19
interrupt_256: l2039: bLT l2046
l2040: add R1, R0, #161
interrupt_817: l2041: sbcCCs R6, R5, R12, LSR R8
l2042: rsbs R2, R1, #6881280
l2043: mvnLEs R14, R6
interrupt_864: l2044: mvns R5, R9, ASR #26
l2045: b l2047
l2046: b l2041
l2047: mvns R3, R10
l2048: teqHI R3, R8, LSR R0
l2049: ldr R10, l2051
l2050: b l2052
l2051: .word 1048532
l2052: swpPLb R8, R7, [R10]
l2053: strLTB R6, [sp, #+36]
l2054: sub R8, R4, R6, LSL R3
l2055: mov R10, #38
l2056: strB R6, [sp, +R10]
l2057: cmp R4, R14
l2058: rsbVC R6, R5, R10, LSL R6
l2059: adc R12, R0, R6, RRX 
l2060: mov R2, #6
interrupt_347: l2061: strh R8, [sp, -R2]
l2062: rsbCSs R2, R12, R1, RRX 
l2063: mov R8, #44
interrupt_141: l2064: ldrGE R4, [sp, +R8]
l2065: clzLS R5, R1
interrupt_443: l2066: movVSs R5, R4
interrupt_974: l2067: cmp R11, #-1073741779
l2068: orrLE R7, R8, R6, ASR R10
l2069: bLE l2073
l2070: add R1, R0, #254
l2071: cmp R5, R10, LSL R8
l2072: b l2074
interrupt_627: l2073: b l2071
l2074: sub R2, R8, R7, LSR R2
l2075: teqVC R5, #-1744830463
l2076: tstEQ R4, R1, ROR R11
l2077: mov R12, #16
l2078: ldr R0, [sp, +R12]!
l2079: swi #3762526
l2080: eors R11, R15, R7
l2081: tstGT R5, R6, ASR #1
l2082: stmIB R13!, {R0, R1, R2, R3, R5, R9, R10, R11, R14}
interrupt_619: l2083: swi #5551409
l2084: sbcEQs R2, R14, R4, ROR R14
l2085: adc R6, R5, R9, ASR R9
interrupt_354: l2086: bMI l2091
l2087: add R1, R0, #92
l2088: movGTs R12, R8
interrupt_482: l2089: sbc R9, R5, R2, LSL R5
l2090: b l2092
l2091: b l2088
interrupt_189: l2092: orrs R5, R14, #1032192
l2093: stmDA R13!, {R1, R15}
interrupt_337: l2094: rsb R5, R4, R11
l2095: ldmIB R13!, {R4, R5, R7, R14}
l2096: tst R0, R6, LSL R11
l2097: nop
interrupt_511: l2098: teqLE R2, R15
l2099: orr R8, R1, R2, LSL R3
l2100: swi #2115002
l2101: tstLS R1, R12
l2102: mov R1, #44
l2103: ldr R0, [sp, -R1]!
l2104: stmVCIA R13, {R0, R2, R3, R8, R9, R11, R12, R15}
l2105: mov R6, #31
l2106: ldrsb R9, [sp, +R6]
l2107: cmnLT R0, R1, ROR R7
l2108: rsbGTs R1, R9, R4, ASR #22
l2109: bLS l2113
l2110: add R1, R0, #57
l2111: rscLSs R3, R2, R0, ROR #14
interrupt_954: l2112: b l2114
interrupt_804: l2113: b l2111
l2114: addLEs R12, R14, R7, ASR R6
interrupt_461: l2115: mov R1, #4
l2116: ldrsb R2, [sp, +R1]
l2117: clzHI R5, R7
l2118: teqMI R1, R11, ROR R8
interrupt_51: l2119: teqMI R14, R12
l2120: mov R0, #6
l2121: ldrh R0, [sp, +R0]
l2122: movHI R0, R6
l2123: eorGTs R3, R5, R4
l2124: movMI R14, R8, ASR #1
interrupt_688: l2125: b l2133
l2126: orrCC R6, R2, R10
l2127: eorLS R7, R6, R0
l2128: orrs R8, R10, R7
l2129: sbcLS R6, R0, #1124073472
l2130: add R6, R14, R11, RRX 
interrupt_665: l2131: rsbGT R7, R9, R5, ROR #7
interrupt_123: l2132: addGE R11, R8, R6, ASR R9
l2133: movEQs R4, R6, LSL #20
l2134: and R10, R3, R6, ASR #16
l2135: swi #12004690
l2136: eorLTs R8, R9, R15
l2137: ldr R11, l2139
l2138: b l2140
l2139: .word 1048528
l2140: swpLSb R1, R12, [R11]
l2141: mvn R5, R7, ROR R0
interrupt_544: l2142: mov R2, #36
l2143: ldrVC R12, [sp, +R2]
l2144: swi #2559454
interrupt_16: l2145: bics R12, R12, R14
l2146: cmpVS R2, R5, ROR R3
l2147: mov R7, #34
l2148: ldrB R2, [sp, +R7]
l2149: stmDB R13!, {R6, R15}
l2150: tst R14, R14, LSL #20
l2151: tstLS R9, R7
interrupt_708: l2152: orrs R7, R0, R7, ROR R5
l2153: ldr R9, l2155
l2154: b l2156
l2155: .word 1048492
l2156: swpCCb R11, R6, [R9]
interrupt_838: l2157: subLTs R12, R14, R6
l2158: subs R9, R2, R11, ROR R7
l2159: adcGTs R14, R0, #62720
l2160: eorLS R1, R9, R12, ASR R9
l2161: ldrVCB R2, [sp, #+23]
interrupt_372: l2162: teqGE R10, R10
l2163: str R11, [sp, #+12]!
interrupt_633: l2164: b l2170
l2165: add R1, R0, #135
interrupt_356: l2166: adcLEs R2, R1, R3, ASR #28
l2167: orrPL R11, R15, #2752
l2168: clzPL R7, R0
l2169: b l2171
l2170: b l2166
l2171: stmDB R13!, {R1, R8, R15}
interrupt_231: l2172: rscs R8, R9, #235520
l2173: mov R7, #19
l2174: ldrsb R14, [sp, +R7]
l2175: mov R10, #8
l2176: ldr R1, [sp], +R10
l2177: ldr R11, [sp], #+4
l2178: ldrHIh R5, [sp, #-18]
l2179: b l2186
l2180: teqEQ R0, R4, ASR #29
l2181: tstHI R14, R11, RRX 
l2182: orrEQs R12, R1, R11
l2183: sbc R10, R9, #2686976
interrupt_560: l2184: rscs R14, R4, R1, ROR R10
l2185: subMIs R10, R2, #643072
l2186: subGT R8, R1, R0
l2187: mov R4, #14
l2188: ldrCCsh R5, [sp, +R4]
interrupt_662: l2189: movs R5, R14
l2190: stmPLDB R13, {R0, R5, R7, R11, R12, R15}
l2191: strVCB R11, [sp, #+7]
l2192: subs R6, R6, R12, ASR #29
l2193: swi #206633
interrupt_574: l2194: b l2198
interrupt_56: l2195: add R1, R0, #203
l2196: ands R11, R15, #41943040
l2197: b l2199
l2198: b l2196
l2199: mov R4, #26
l2200: ldrCSh R10, [sp, -R4]
l2201: mvnVSs R5, R8
l2202: swi #5888525
l2203: b l2211
l2204: teqGE R14, R3, ROR #15
interrupt_567: l2205: rscLE R1, R1, #51200
l2206: sbcs R3, R15, R8
interrupt_104: l2207: subLSs R11, R0, R0
l2208: subEQ R0, R7, #616
l2209: eorMIs R6, R7, #3145728
l2210: orrPL R8, R3, R8, RRX 
l2211: bics R0, R6, R6, RRX 
l2212: strGEh R6, [sp, #-2]
l2213: ldmIB R13!, {R0, R2, R4, R6, R8, R14}
l2214: b l2222
l2215: bics R5, R3, R11
interrupt_457: l2216: cmpVS R14, R2, LSL R10
interrupt_880: l2217: rscVC R12, R10, #29360128
l2218: andGE R3, R6, R6, ROR R12
l2219: movPLs R11, R10, ROR R7
l2220: cmnGT R12, R0, RRX 
l2221: sub R10, R8, #-1392508928
interrupt_917: l2222: andVSs R11, R6, #57344
l2223: swi #7213347
l2224: teq R9, R14, RRX 
l2225: ldmIB R13!, {R0, R2, R11, R14}
interrupt_606: l2226: ldr R3, [sp, #-56]!
interrupt_802: l2227: clzMI R0, R10
l2228: stmMIDA R13, {R8, R13}
l2229: cmnLS R5, R4, LSR R2
l2230: eorCC R12, R15, R6, LSR #0
l2231: orrEQs R5, R5, R10
l2232: cmn R1, R4, ASR R8
l2233: swi #13224956
l2234: teqCC R5, R8, ROR R14
l2235: rsbMI R1, R10, R7, ROR R6
l2236: mov R7, #21
l2237: ldrVSB R0, [sp, +R7]
interrupt_93: l2238: stmPLIA R13, {R0, R1, R2, R3, R4, R6, R7, R9, R10, R11, R12, R13, R15}
l2239: adcs R12, R7, R14
l2240: ldmDA R13!, {R4, R11}
interrupt_72: l2241: teqLS R6, R8, ROR #25
l2242: ldr R12, l2244
l2243: b l2245
l2244: .word 1048536
l2245: swpVC R4, R8, [R12]
l2246: cmpMI R1, R6, LSL #14
l2247: cmnGT R5, #712
l2248: ldrGEsb R1, [sp, #+4]
interrupt_18: l2249: movNEs R7, #2304
interrupt_159: l2250: rsbs R3, R1, #-2147483613
l2251: strHIh R9, [sp, #+26]
l2252: add R4, R10, R9, ASR #13
l2253: ldr R0, [sp], #+56
l2254: stmDA R13!, {R1, R2, R3, R9, R10, R11}
interrupt_309: l2255: rsbVC R3, R10, #948
l2256: andEQ R7, R6, R14, RRX 
l2257: ldrh R12, [sp, #-2]
l2258: rsbPLs R12, R1, R9, ASR R14
l2259: teqCC R1, #111149056
l2260: nop
l2261: andNE R10, R7, R15
interrupt_791: l2262: swi #16204818
l2263: ldmIB R13!, {R0, R10}
l2264: ldrPLsb R14, [sp, #-32]
l2265: sbcs R9, R11, R0
interrupt_158: l2266: eorVC R10, R10, #1073741832
l2267: adc R10, R8, #6946816
l2268: bics R12, R5, R10, ASR #11
interrupt_927: l2269: ldrLEB R0, [sp, #-18]
l2270: orrVCs R8, R9, R3
interrupt_822: l2271: ldrB R9, [sp, #+8]
l2272: ldr R8, l2274
interrupt_861: l2273: b l2275
l2274: .word 1048484
l2275: swpLS R10, R5, [R8]
l2276: strCSh R14, [sp, #+4]
l2277: mov R6, #18
l2278: strCSh R9, [sp, -R6]
l2279: subPL R7, R5, R1, LSL #21
interrupt_706: l2280: teqGE R1, R14, LSL R2
l2281: bVC l2290
l2282: orrs R12, R14, R4, LSR R8
interrupt_730: l2283: subs R10, R5, #17
interrupt_675: l2284: rscCC R11, R6, #11337728
l2285: adds R7, R2, R10, ROR #2
l2286: clzMI R5, R6
l2287: clzGT R7, R1
l2288: orrHI R5, R4, R14, LSR #30
l2289: addVCs R10, R10, R11, LSL #6
interrupt_979: l2290: clz R11, R4
interrupt_693: l2291: subCSs R2, R4, R10, LSL #13
l2292: orrEQs R0, R4, R1
l2293: b l2297
l2294: add R1, R0, #247
l2295: teqLS R9, R11, ROR R7
l2296: b l2298
l2297: b l2295
l2298: bicNEs R4, R15, R6, RRX 
l2299: strh R4, [sp, #+18]
l2300: eors R12, R10, R7, ASR #1
l2301: eor R11, R4, R5, RRX 
l2302: movVCs R0, R7
l2303: ldmDA R13, {R0, R1, R3, R4, R5, R6, R9, R14}
l2304: andGE R7, R2, R15, RRX 
interrupt_695: l2305: b l2309
interrupt_491: l2306: add R1, R0, #197
interrupt_918: l2307: bicLTs R5, R12, R4, ASR R14
l2308: b l2310
l2309: b l2307
interrupt_194: l2310: adds R0, R7, R0, ROR R8
l2311: ldrB R4, [sp, #-45]
l2312: tst R3, R9
l2313: subLE R8, R1, R10, ROR #11
interrupt_625: l2314: subLTs R1, R15, #380
l2315: mov R12, #8
l2316: strEQh R0, [sp, -R12]
l2317: sbcLE R8, R10, R9, RRX 
interrupt_515: l2318: teqLT R0, R12, RRX 
interrupt_110: l2319: mov R10, #24
l2320: ldr R14, [sp], -R10
l2321: ldr R11, l2323
l2322: b l2324
l2323: .word 1048504
interrupt_117: l2324: swpMI R2, R8, [R11]
l2325: addGE R9, R0, R6, LSL R2
l2326: swi #14127803
interrupt_324: l2327: eor R4, R14, R12
l2328: bicHIs R7, R4, R9
l2329: mvnEQ R4, R15
l2330: ldmCSDA R13, {R5}
l2331: tst R10, R1, LSL R14
interrupt_325: l2332: sbcs R2, R3, R8, ASR #28
l2333: subLT R0, R6, R12, ROR #13
l2334: subLS R1, R6, R2, ASR R9
l2335: bCS l2339
l2336: add R1, R0, #126
l2337: eorLSs R10, R0, R6
l2338: b l2340
interrupt_823: l2339: b l2337
l2340: strh R12, [sp, #+14]
interrupt_85: l2341: rscPLs R0, R6, R11, ASR #16
l2342: sbc R5, R11, R0, LSL R3
interrupt_480: l2343: b l2350
interrupt_211: l2344: subLEs R1, R10, R9, ASR #14
l2345: cmp R15, R7
l2346: orrHIs R2, R3, R6, LSL #18
l2347: adcs R0, R11, R5
interrupt_915: l2348: tstVS R12, R3
l2349: andGE R2, R9, R3, LSL R11
l2350: adcPLs R1, R8, #-2147483633
interrupt_641: l2351: ldr R0, [sp], #+20
l2352: bMI l2360
l2353: add R1, R0, #168
l2354: orrGTs R10, R1, R2
l2355: cmnNE R7, R1, LSR #17
l2356: addEQs R9, R5, R0, ASR R11
l2357: ands R9, R6, R7, LSR R2
l2358: rsc R0, R1, R15, RRX 
l2359: b l2361
l2360: b l2354
l2361: adcNE R0, R12, R8, LSL R1
l2362: mov R9, #52953088
l2363: ldr R0, l2365
l2364: b l2366
interrupt_114: l2365: .word 1048520
l2366: swpVSb R3, R1, [R0]
l2367: tst R6, R7, LSL R1
l2368: str R11, [sp], #+28
l2369: b l2370
l2370: cmp R11, R8
l2371: ldmDB R13!, {R1, R6, R7, R9, R14}
l2372: swi #9573150
interrupt_531: l2373: adcGTs R5, R9, #2013265920
l2374: sbcs R9, R4, #1644167168
l2375: subs R7, R15, #12451840
l2376: mvn R0, R9, LSL #9
interrupt_632: l2377: bHI l2380
l2378: rsbPLs R1, R4, R0
interrupt_533: l2379: cmpMI R2, R14
l2380: sbc R8, R8, R4, RRX 
l2381: ldrNEB R11, [sp, #+14]
interrupt_639: l2382: andNE R0, R7, R10, ROR #5
l2383: bics R14, R1, R3, ROR R6
l2384: ldmDA R13, {R0, R1, R4, R5, R6, R8, R9, R10, R11, R12, R14}
l2385: cmp R4, R11
l2386: ands R3, R8, #34816
l2387: mov R7, #52
l2388: str R0, [sp, -R7]
interrupt_435: l2389: mvnNEs R2, R8
l2390: mov R5, #12
interrupt_558: l2391: str R1, [sp], +R5
l2392: strCSh R2, [sp, #+8]
l2393: mov R4, #52
l2394: ldrCS R3, [sp, -R4]
l2395: sbcCS R11, R15, #1073741834
interrupt_756: l2396: cmn R6, R1, ASR R10
l2397: orrPL R2, R2, R3
l2398: mov R3, #44
l2399: str R7, [sp, -R3]
l2400: b l2409
l2401: rscVCs R9, R15, R0
l2402: mvnCSs R1, R9
l2403: rscLS R6, R7, #-201326590
interrupt_213: l2404: andLSs R11, R6, R8
l2405: subVC R8, R9, R11, LSR R11
l2406: bics R2, R8, R6, RRX 
l2407: cmpVS R9, R3
interrupt_882: l2408: clzCC R8, R7
interrupt_71: l2409: movGTs R8, R14, LSR #28
l2410: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R7, R8, R9, R12, R14}
l2411: bLT l2417
l2412: sbcLT R9, R9, R1, LSR #0
l2413: movCC R2, R12, LSL R12
l2414: tstEQ R8, R14, RRX 
interrupt_955: l2415: tst R7, #6848
interrupt_696: l2416: mov R2, R15, RRX 
interrupt_973: l2417: addLS R3, R6, R8, RRX 
l2418: mov R2, #16
l2419: ldr R14, [sp, -R2]!
l2420: tstMI R8, R4, LSR #4
l2421: sbcHI R11, R1, R7
l2422: mov R9, #9
l2423: ldrLSB R8, [sp, +R9]
interrupt_784: l2424: ldr R14, l2426
interrupt_134: l2425: b l2427
l2426: .word 1048504
l2427: swpCC R4, R8, [R14]
l2428: rsc R4, R11, R12, LSL R8
interrupt_909: l2429: ldr R1, l2431
l2430: b l2432
l2431: .word 1048488
l2432: swpLSb R2, R11, [R1]
l2433: cmp R3, R10, LSR R7
l2434: swi #1753988
interrupt_172: l2435: b l2440
interrupt_377: l2436: add R1, R0, #72
l2437: subPL R10, R14, R8
l2438: cmn R7, R0, LSL #9
interrupt_761: l2439: b l2441
l2440: b l2437
interrupt_766: l2441: b l2447
l2442: subCC R4, R6, R3, RRX 
l2443: andCCs R11, R15, #1808
interrupt_873: l2444: sbcNEs R0, R5, #406847488
l2445: clzCS R9, R14
interrupt_524: l2446: adcVS R4, R1, R15
l2447: rsbs R14, R7, #1073741827
l2448: swi #10423416
interrupt_140: l2449: ands R5, R0, R4, LSR R9
l2450: rsbs R5, R3, R0, ROR R10
l2451: str R9, [sp], #+36
l2452: cmpLE R7, R1, RRX 
l2453: eors R2, R11, #60555264
l2454: mov R11, #21
l2455: strLTB R3, [sp, +R11]
l2456: teq R7, R6
l2457: teq R8, R7
l2458: mov R2, #7
l2459: strB R3, [sp, -R2]
l2460: mov R0, #6
l2461: ldrLEsh R9, [sp, -R0]
interrupt_478: l2462: mov R0, #0
l2463: ldr R3, [sp, +R0]!
l2464: swi #2879900
l2465: bVS l2472
interrupt_907: l2466: mvn R6, R10
interrupt_156: l2467: clz R6, R0
l2468: clz R14, R8
interrupt_769: l2469: cmpGT R10, R3
l2470: subCS R10, R2, R11, LSL #19
interrupt_737: l2471: movs R3, R12, ASR R11
interrupt_190: l2472: add R0, R10, #1376256
l2473: ldr R10, l2475
l2474: b l2476
l2475: .word 1048544
l2476: swpGE R6, R3, [R10]
l2477: teqMI R3, #4080
interrupt_178: l2478: adcs R6, R7, #8384
l2479: bicLTs R5, R0, R5, LSR R11
l2480: orrHI R0, R4, #208
l2481: subGE R1, R6, #268435459
l2482: mvn R2, #-1811939328
l2483: orrEQs R4, R1, R2
interrupt_795: l2484: addPL R8, R14, R1, LSL R8
l2485: teqVC R11, #1073741879
l2486: stmDB R13!, {R0, R1, R2, R9, R10, R11, R14, R15}
l2487: sbcLT R11, R4, R14, LSR R10
l2488: b l2496
l2489: add R1, R0, #84
l2490: mvnLEs R11, R5, ASR #3
l2491: andEQs R4, R14, R5, RRX 
l2492: rsbGT R9, R7, R12, LSR R10
l2493: subLT R14, R14, #150994944
l2494: sbcs R8, R1, R15, LSL #0
l2495: b l2497
l2496: b l2490
interrupt_176: l2497: orrs R9, R1, R15, RRX 
interrupt_305: l2498: rscHIs R0, R9, R0, ROR #14
l2499: addLEs R0, R0, R4
l2500: swi #2542422
l2501: rsbVCs R6, R9, R4
l2502: and R4, R1, R15, LSL #19
l2503: ldmIB R13!, {R0, R1, R3, R4, R5, R9, R11, R12}
l2504: swi #159146
interrupt_12: l2505: rscs R9, R4, R14, LSR #19
l2506: swi #2789355
l2507: ldrEQ R4, [sp, #+16]
l2508: cmnGE R10, R10, ROR R9
l2509: cmnLS R12, R9, RRX 
interrupt_169: l2510: bicLS R1, R11, R12, LSL R7
l2511: sub R9, R2, R2, LSL R8
l2512: strh R11, [sp, #-18]
l2513: stmIB R13!, {R2, R3, R4, R6, R7, R12}
l2514: cmp R4, #-570425344
l2515: addCSs R10, R4, #21504
l2516: rsbNE R8, R1, R4
interrupt_130: l2517: mvnLS R4, R4, RRX 
l2518: mov R4, #53
l2519: ldrLTsb R9, [sp, -R4]
l2520: rscMI R0, R14, R8, LSR R12
l2521: swi #15823654
l2522: rsc R9, R3, R3, ASR R14
l2523: movLS R9, #14016
l2524: ldmIA R13!, {R1}
l2525: stmHIDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12, R13, R14, R15}
l2526: cmn R3, R2, ROR #2
interrupt_207: l2527: tstCC R4, R10
l2528: ldrVSsb R11, [sp, #+2]
l2529: cmp R0, R15
l2530: ands R10, R9, #1296
l2531: sbcLTs R5, R7, R15
l2532: addNE R6, R4, R1, LSL #7
l2533: teqLT R0, R3, ROR R0
l2534: swi #1915098
l2535: ldrsh R10, [sp, #-56]
interrupt_733: l2536: andVSs R9, R1, #39321600
l2537: b l2541
interrupt_454: l2538: add R1, R0, #229
l2539: cmn R0, R11, LSL R11
l2540: b l2542
l2541: b l2539
l2542: ldr R12, [sp, #+0]
l2543: mov R3, #26
l2544: ldrLEsb R6, [sp, -R3]
l2545: ldr R9, l2547
l2546: b l2548
l2547: .word 1048532
l2548: swp R11, R14, [R9]
l2549: sbc R14, R0, R4, LSL R1
l2550: mov R9, #32
l2551: ldr R8, [sp], -R9
l2552: sbcGEs R3, R8, #31232
l2553: movs R10, R1, ASR #11
l2554: ldr R11, l2556
interrupt_655: l2555: b l2557
l2556: .word 1048500
l2557: swpLE R0, R5, [R11]
l2558: strVSB R4, [sp, #+35]
l2559: movHIs R1, R3, LSL #24
l2560: teqVS R4, R10, RRX 
interrupt_905: l2561: adcs R1, R10, R2, RRX 
l2562: mov R4, #20
l2563: ldrh R2, [sp, +R4]
l2564: addGEs R2, R4, R6, RRX 
l2565: addVC R0, R7, R3, LSL #22
l2566: strB R10, [sp, #+10]
interrupt_956: l2567: mov R6, #16
interrupt_157: l2568: strh R6, [sp, -R6]
l2569: ldr R12, [sp], #+28
l2570: ldr R9, l2572
l2571: b l2573
l2572: .word 1048504
interrupt_900: l2573: swpb R12, R2, [R9]
l2574: mvns R0, R4
l2575: rsbVCs R10, R9, R12
interrupt_672: l2576: bLE l2581
l2577: add R1, R0, #223
interrupt_300: l2578: subCCs R4, R9, R11, ROR #1
interrupt_402: l2579: rscCS R0, R14, #536870913
l2580: b l2582
interrupt_721: l2581: b l2578
l2582: ldrMIB R12, [sp, #-16]
l2583: ldr R11, [sp, #-28]!
l2584: ldr R6, l2586
l2585: b l2587
l2586: .word 1048484
l2587: swpLT R5, R4, [R6]
l2588: swi #10171203
l2589: sbcNE R6, R0, R3
l2590: mov R10, #8
interrupt_853: l2591: str R7, [sp, +R10]!
l2592: ldmDB R13!, {R14}
interrupt_251: l2593: strCSB R11, [sp, #+24]
interrupt_136: l2594: nop
l2595: subLTs R5, R3, R11, ROR R11
l2596: cmp R14, R12, LSR R7
l2597: swi #6690370
l2598: rsbHI R2, R15, R5, ROR #19
l2599: mov R10, #20
l2600: strVCh R4, [sp, +R10]
interrupt_166: l2601: tst R2, R11, ROR #13
l2602: swi #670587
l2603: strB R11, [sp, #+30]
l2604: rscLS R8, R0, #5
interrupt_490: l2605: b l2613
l2606: add R1, R0, #147
interrupt_689: l2607: orr R1, R14, R3
l2608: movEQ R12, R5, ROR #23
interrupt_569: l2609: orr R1, R0, #14024704
interrupt_362: l2610: orrEQs R4, R7, #48234496
l2611: tst R0, R10, ROR #28
interrupt_452: l2612: b l2614
l2613: b l2607
l2614: and R4, R14, R5
interrupt_988: l2615: mov R1, #28
interrupt_805: l2616: ldrsb R7, [sp, -R1]
l2617: mov R0, #6
interrupt_188: l2618: ldrEQh R6, [sp, -R0]
l2619: cmn R12, #53248
l2620: rscPLs R0, R3, R10, ASR #17
l2621: cmpLT R4, R4
l2622: bic R11, R3, R8, LSR R11
l2623: ldrCSsh R7, [sp, #+10]
l2624: clz R11, R14
l2625: ldrB R7, [sp, #-20]
l2626: strGEh R14, [sp, #+10]
l2627: rsc R11, R3, R11, LSR #25
interrupt_69: l2628: ldrsb R11, [sp, #-29]
l2629: cmnNE R3, R0, LSR R11
l2630: eors R14, R10, #-536870912
interrupt_997: l2631: ldrh R14, [sp, #+14]
l2632: mvnVSs R11, #16252928
l2633: mov R12, #16
interrupt_292: l2634: str R10, [sp, +R12]
l2635: mov R5, #10
l2636: ldrLSh R1, [sp, -R5]
interrupt_774: l2637: ldr R3, l2639
l2638: b l2640
l2639: .word 1048548
interrupt_389: l2640: swpNE R0, R2, [R3]
l2641: subLS R0, R4, R6, ASR #9
l2642: ldrB R12, [sp, #+26]
l2643: and R3, R7, R1
l2644: cmpPL R9, R14, RRX 
l2645: subEQ R8, R0, #452984832
l2646: sbcs R14, R1, R14, LSL R4
interrupt_889: l2647: nop
l2648: cmnCC R9, R7, ROR #14
interrupt_322: l2649: ldr R11, l2651
l2650: b l2652
l2651: .word 1048504
l2652: swpHI R4, R1, [R11]
l2653: mov R12, R10
l2654: subLEs R6, R4, R1
l2655: nop
l2656: rscs R6, R1, R2, ASR R10
l2657: andPL R12, R9, R6, ASR #9
interrupt_281: l2658: teq R8, R0, LSL R11
l2659: subs R0, R4, R15, LSL #7
l2660: swi #14120912
interrupt_781: l2661: addVS R14, R3, R5, LSR R2
l2662: stmDA R13!, {R13}
l2663: nop
interrupt_767: l2664: bicMIs R11, R14, R3, ASR R3
l2665: ldrCSsh R11, [sp, #-2]
interrupt_440: l2666: mov R2, #25
l2667: ldrMIsb R4, [sp, +R2]
l2668: ldmDA R13, {R0, R4, R6, R8, R9, R12}
l2669: cmnLT R9, R9
l2670: strB R2, [sp, #+2]
interrupt_738: l2671: bicLTs R11, R10, #219152384
l2672: mov R3, #10
l2673: ldrh R8, [sp, +R3]
l2674: mov R9, #2
l2675: ldrNEB R14, [sp, +R9]
l2676: ldr R10, l2678
l2677: b l2679
l2678: .word 1048520
interrupt_431: l2679: swpLS R5, R3, [R10]
l2680: sbcNE R11, R6, R3, RRX 
l2681: bCS l2691
l2682: teqLT R14, R11, ASR #1
l2683: tstNE R6, R2, ROR #2
l2684: subMI R11, R11, #8388608
l2685: mvnPLs R3, R10
l2686: clz R6, R0
l2687: adcs R14, R11, R8, RRX 
interrupt_729: l2688: movGTs R11, #4325376
l2689: bic R4, R0, R5, LSL R7
l2690: orrVS R7, R14, R15
l2691: orrNE R8, R10, R9, ASR R3
interrupt_505: l2692: bicVSs R7, R2, #229638144
l2693: mvnMI R1, R7
l2694: bicHI R7, R10, R5, LSR #15
l2695: strLEB R14, [sp, #-4]
l2696: b l2698
interrupt_450: l2697: adc R8, R8, R4, RRX 
l2698: tstLS R3, R1
l2699: ldr R5, [sp, #-24]
l2700: tstGT R4, R8, RRX 
l2701: ldr R6, l2703
l2702: b l2704
l2703: .word 1048544
l2704: swpb R9, R8, [R6]
l2705: ldr R9, [sp, #+0]
l2706: swi #7770935
l2707: clzCC R7, R9
l2708: mov R8, #34
l2709: ldrCSB R10, [sp, +R8]
l2710: sbcNEs R8, R3, R11, ROR R0
l2711: mov R8, #28
l2712: ldr R11, [sp], +R8
l2713: sub R5, R12, #216006656
l2714: teq R5, R1, ASR R1
l2715: ldr R7, l2717
interrupt_833: l2716: b l2718
interrupt_780: l2717: .word 1048536
interrupt_127: l2718: swp R11, R11, [R7]
l2719: mov R2, #16
interrupt_534: l2720: ldrLEh R2, [sp, -R2]
l2721: rscs R5, R0, R0
l2722: swi #4526239
l2723: nop
l2724: movs R8, #958464
interrupt_650: l2725: add R12, R5, R8, ROR R12
l2726: orr R3, R2, R12, LSL R5
interrupt_658: l2727: ldr R14, l2729
l2728: b l2730
interrupt_634: l2729: .word 1048500
l2730: swp R4, R8, [R14]
l2731: sbcGT R10, R6, R9, LSR R10
l2732: orrVCs R8, R15, R10, ASR #20
l2733: mov R12, #23
l2734: strB R8, [sp, -R12]
l2735: bic R3, R4, R8, LSL R14
l2736: swi #11271480
l2737: cmpGT R14, R7, RRX 
l2738: bics R12, R15, R10
l2739: teq R5, #1589248
interrupt_963: l2740: tst R14, R15
interrupt_528: l2741: bLS l2744
l2742: movCSs R7, R10, RRX 
l2743: bics R11, R6, R12, LSR #25
l2744: mov R5, #211968
l2745: mov R11, #60
l2746: str R3, [sp, -R11]!
l2747: mvnCS R0, R1, ROR R8
l2748: rsbLSs R14, R7, R9
l2749: ldmIB R13!, {R2, R10, R14}
l2750: cmn R9, #905969664
l2751: tst R3, R10, LSL R9
interrupt_785: l2752: swi #4473296
l2753: mov R4, #16
interrupt_277: l2754: ldrCC R14, [sp, -R4]
interrupt_469: l2755: mov R12, #15
l2756: ldrB R3, [sp, -R12]
l2757: swi #7393540
l2758: ldrh R6, [sp, #+18]
interrupt_485: l2759: mov R6, #36
l2760: ldr R12, [sp, +R6]!
l2761: ldrB R12, [sp, #-34]
l2762: mov R7, #5
l2763: ldrGTB R10, [sp, -R7]
l2764: mov R6, R3, LSR #5
l2765: bicMIs R0, R3, R3, LSR R10
l2766: ldrCCsb R3, [sp, #-39]
l2767: eorPLs R9, R9, R11, RRX 
l2768: tstMI R10, R14, RRX 
l2769: ldr R3, l2771
l2770: b l2772
interrupt_502: l2771: .word 1048512
l2772: swpHI R4, R8, [R3]
l2773: bicLE R4, R4, R12, LSR R3
l2774: cmn R3, R10
l2775: orrs R1, R11, #1720320
l2776: clz R1, R2
l2777: tst R3, R10
interrupt_384: l2778: mov R9, #14
l2779: ldrGEh R10, [sp, -R9]
l2780: mov R14, #31
l2781: strB R7, [sp, -R14]
l2782: teq R11, R8, LSL R3
l2783: clz R9, R8
l2784: strLEB R9, [sp, #-26]
l2785: b l2787
interrupt_41: l2786: teq R2, R5, RRX 
l2787: sub R4, R4, R6, ROR R4
l2788: rscCC R5, R3, R4
l2789: orrs R2, R7, R7, ASR #0
interrupt_982: l2790: ldrEQsh R11, [sp, #+8]
l2791: ldmDB R13!, {R3, R4, R5, R7, R8, R9, R11, R12}
l2792: bicHI R14, R3, R0, RRX 
l2793: adc R4, R10, R4, RRX 
interrupt_523: l2794: ldr R10, l2796
l2795: b l2797
l2796: .word 1048484
l2797: swpMI R5, R8, [R10]
l2798: and R5, R9, R0, ASR R11
interrupt_897: l2799: adc R8, R1, R4
l2800: teq R8, R10, ROR R4
l2801: adc R0, R2, R2
interrupt_236: l2802: mov R8, #49
l2803: ldrCSB R6, [sp, +R8]
l2804: teq R1, #1358954496
l2805: mov R9, #50
interrupt_758: l2806: strh R3, [sp, +R9]
l2807: rscCCs R5, R9, R1, LSR #6
interrupt_885: l2808: mov R14, #36
l2809: ldrB R1, [sp, +R14]
l2810: swi #11708926
l2811: ldrsh R1, [sp, #+6]
l2812: mov R14, #16
l2813: ldrVC R10, [sp, -R14]
l2814: ldr R6, l2816
l2815: b l2817
interrupt_895: l2816: .word 1048524
l2817: swpb R10, R9, [R6]
l2818: ldr R8, l2820
l2819: b l2821
interrupt_154: l2820: .word 1048532
l2821: swpb R11, R5, [R8]
interrupt_373: l2822: mvns R2, R5
l2823: strVSh R0, [sp, #+52]
l2824: rsc R3, R3, #223346688
l2825: addLEs R1, R3, R12, RRX 
l2826: bVS l2831
l2827: sbcs R4, R6, R1, LSL #2
l2828: cmn R4, #-2097152000
l2829: rsb R3, R3, R0, ROR #3
l2830: mvnGT R9, R6
l2831: rscVC R12, R2, #43515904
l2832: tstLT R11, R5, LSL #20
l2833: ldmLEIA R13, {R1, R14}
l2834: subGTs R14, R9, R9, ROR #11
l2835: sub R10, R14, R11, ROR R14
l2836: ldrsh R12, [sp, #+10]
l2837: eors R0, R1, R5
l2838: orr R4, R12, R10, LSR R1
l2839: nop
l2840: swi #11554337
interrupt_9: l2841: swi #4581509
interrupt_819: l2842: andPL R6, R7, #10752
l2843: ldrB R1, [sp, #+22]
l2844: strLTB R11, [sp, #+21]
interrupt_301: l2845: orr R2, R6, R8, LSR R5
l2846: strVCB R0, [sp, #+8]
l2847: movVS R12, R4, ROR R8
l2848: mvnHI R7, R1, LSR R4
l2849: sub R7, R4, R9, RRX 
l2850: mov R10, #54
l2851: ldrsh R0, [sp, +R10]
l2852: orrLTs R6, R7, #15859712
l2853: orr R6, R14, #4046848
interrupt_171: l2854: ldrGTB R2, [sp, #+51]
l2855: ldr R4, l2857
l2856: b l2858
l2857: .word 1048548
l2858: swp R1, R6, [R4]
l2859: adcMI R2, R14, #149504
l2860: subs R12, R5, R11, LSR R14
l2861: mvnLSs R5, R8, LSL #0
l2862: subNEs R9, R0, #184549376
interrupt_702: l2863: mov R12, #20
interrupt_835: l2864: str R4, [sp], -R12
l2865: sub R8, R10, R2
l2866: swi #4723780
l2867: rscPL R0, R6, R3
l2868: mov R4, #29
l2869: ldrsb R5, [sp, +R4]
l2870: strEQh R2, [sp, #+28]
l2871: cmn R3, R1, RRX 
interrupt_302: l2872: rsbGT R10, R7, R7, ROR R11
l2873: mov R11, #62
l2874: ldrHIB R0, [sp, +R11]
l2875: addVC R9, R2, #1408
l2876: mov R9, R1, LSL R5
l2877: b l2882
l2878: add R1, R0, #185
interrupt_448: l2879: cmpGT R8, R4, LSR #27
l2880: movs R1, #16187392
interrupt_150: l2881: b l2883
l2882: b l2879
interrupt_272: l2883: rscs R14, R6, #2240
l2884: strPLB R10, [sp, #+28]
interrupt_615: l2885: mov R2, #70
l2886: strEQh R6, [sp, +R2]
l2887: stmIA R13!, {R13}
interrupt_986: l2888: subEQs R6, R11, R6, RRX 
l2889: sub R12, R4, #4128768
l2890: ldrCCh R11, [sp, #+14]
l2891: stmIA R13!, {R0, R3, R4, R5, R6, R7, R10, R12, R14}
interrupt_124: l2892: swi #6732691
interrupt_6: l2893: teqLS R2, R5
l2894: mov R7, #4
l2895: ldr R3, [sp, -R7]
interrupt_645: l2896: mov R5, #18
l2897: strEQh R3, [sp, +R5]
l2898: adds R6, R14, R6
interrupt_50: l2899: str R5, [sp, #-32]!
l2900: clz R4, R4
l2901: swi #12246417
l2902: bVS l2906
l2903: tstEQ R10, R6, ROR R12
l2904: teqVS R10, R8, ROR R5
l2905: clzGE R1, R9
l2906: teq R8, R0, ROR #8
interrupt_966: l2907: sub R10, R5, R1, LSR R9
l2908: strPLh R4, [sp, #+58]
l2909: rscs R14, R3, R6
l2910: rscLEs R7, R0, R10, ROR R3
l2911: cmn R11, R9, LSL R14
l2912: rscs R2, R9, R11, LSR #5
l2913: swi #3714394
l2914: ldrMIh R4, [sp, #+32]
l2915: mvns R14, #153092096
l2916: sbc R6, R9, #45613056
interrupt_594: l2917: strh R4, [sp, #+64]
l2918: bVS l2926
l2919: add R1, R0, #135
l2920: adds R1, R7, R8
l2921: teq R3, R3, ROR R10
l2922: addHIs R9, R0, R9
l2923: clzGE R3, R9
l2924: movVC R2, #1073741870
l2925: b l2927
l2926: b l2920
interrupt_967: l2927: swi #12896723
l2928: teq R9, R15, ASR #31
l2929: nop
l2930: nop
interrupt_906: l2931: swi #11619661
interrupt_365: l2932: mvn R12, #132096
l2933: ldrB R11, [sp, #+16]
l2934: rsbLE R3, R14, R15
l2935: mov R12, #64
l2936: ldrMIsh R5, [sp, +R12]
l2937: cmn R6, R2, RRX 
l2938: tst R3, R14, ROR R1
l2939: adc R0, R5, R0
l2940: teqNE R2, R4, ASR R2
l2941: ldr R1, l2943
l2942: b l2944
interrupt_908: l2943: .word 1048524
l2944: swpLE R12, R0, [R1]
l2945: mov R14, #13
l2946: ldrsb R7, [sp, +R14]
l2947: rsbs R7, R11, R1, ASR R0
l2948: ldrB R12, [sp, #+13]
l2949: mov R3, #40
interrupt_203: l2950: strLSB R6, [sp, +R3]
l2951: subEQ R5, R10, R6, ROR #6
interrupt_736: l2952: tstEQ R8, #215
interrupt_814: l2953: addHI R12, R4, #15728640
l2954: ldr R4, l2956
l2955: b l2957
interrupt_812: l2956: .word 1048524
l2957: swpb R7, R12, [R4]
l2958: ldmIB R13!, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R11, R12}
l2959: swi #5747327
interrupt_881: l2960: strGEh R3, [sp, #+8]
l2961: ldr R7, [sp, #-40]
l2962: tstGE R1, R8, RRX 
l2963: ldrB R11, [sp, #+0]
l2964: mov R11, #20
l2965: strB R0, [sp, -R11]
l2966: mov R1, #34
interrupt_992: l2967: ldrGEh R6, [sp, -R1]
l2968: swi #6244421
l2969: mov R1, #22
l2970: ldrsb R11, [sp, +R1]
l2971: movCS R1, R11, ROR #16
l2972: bLE l2976
l2973: subLTs R12, R12, R14, ROR R5
l2974: mvns R8, R4, LSL #22
l2975: orrNE R8, R4, #216
l2976: mvn R0, R14, LSR #31
l2977: str R3, [sp], #-8
interrupt_635: l2978: mov R4, #38
l2979: ldrsb R7, [sp, -R4]
l2980: bHI l2987
l2981: add R1, R0, #156
l2982: cmpPL R15, #17
l2983: tst R8, R15, RRX 
l2984: subs R12, R10, R3, ASR #2
l2985: ands R6, R0, R0, RRX 
interrupt_513: l2986: b l2988
l2987: b l2982
l2988: bicMI R1, R12, R15, ASR #26
l2989: mov R10, #24
l2990: strVCh R1, [sp, +R10]
l2991: subLEs R12, R4, R1, LSR #12
l2992: str R6, [sp, #-40]
interrupt_686: l2993: ldmDA R13, {R0, R2, R5, R7, R10}
l2994: cmnPL R15, R15
interrupt_984: l2995: ldrB R11, [sp, #+18]
l2996: ldrsb R3, [sp, #+13]
l2997: subNEs R4, R3, R8, LSR #30
l2998: bicGT R6, R7, R4, RRX 
l2999: bCC l3004
l3000: mvn R11, R0, LSR R12
l3001: eors R7, R12, R0, ROR #28
interrupt_429: l3002: clzVC R12, R3
l3003: subGE R5, R11, R3, LSR #28
l3004: bicNEs R1, R2, #1073741850
l3005: subLSs R2, R5, R0, ASR R9
l3006: ldr R7, l3008
l3007: b l3009
interrupt_262: l3008: .word 1048536
l3009: swpNEb R6, R9, [R7]
l3010: sbcNE R7, R11, R9, ASR #28
l3011: stmDA R13!, {R13}
l3012: movCS R5, R7, ROR #21
interrupt_612: l3013: mov R10, #7
l3014: ldrNEsb R8, [sp, +R10]
l3015: strPL R3, [sp, #-28]
l3016: mov R6, #35
l3017: ldrEQB R3, [sp, -R6]
l3018: cmp R8, R6
interrupt_417: l3019: adcLE R10, R3, #671088640
l3020: subGT R2, R4, R7, ASR #19
interrupt_349: l3021: mov R3, #26
l3022: ldrGEB R2, [sp, -R3]
interrupt_855: l3023: mov R9, #27
l3024: strB R10, [sp, +R9]
l3025: b l3032
l3026: adcEQs R7, R10, #11136
interrupt_851: l3027: eor R4, R14, R5
l3028: rsc R11, R1, R5, RRX 
l3029: cmnLE R3, R0, LSL #7
interrupt_242: l3030: mov R9, R0
l3031: clzLS R0, R4
l3032: sbcVCs R14, R4, #-1493172224
interrupt_901: l3033: b l3043
l3034: adcEQ R2, R7, #14208
l3035: teq R0, R11, RRX 
l3036: adds R11, R9, R9
l3037: mvnLE R6, #1174405120
l3038: andLT R7, R1, R2, ASR R12
l3039: sbcLS R11, R4, #3216
interrupt_293: l3040: rsb R4, R10, R0, ROR R8
l3041: sbcs R8, R14, R11, LSL #18
l3042: rsbNE R14, R12, R15
l3043: adc R2, R3, R2, LSR R0
interrupt_409: l3044: clzNE R14, R11
l3045: mov R10, #18
interrupt_884: l3046: ldrHIsh R8, [sp, -R10]
l3047: ldrh R11, [sp, #-24]
l3048: strB R9, [sp, #-27]
l3049: str R14, [sp, #+32]
l3050: mov R6, #18
l3051: ldrLSsh R11, [sp, -R6]
l3052: swi #16308439
l3053: ldmDA R13!, {R0, R2, R3, R6, R7, R8, R11, R12}
interrupt_514: l3054: mov R7, #0
l3055: ldrNEsh R14, [sp, +R7]
interrupt_471: l3056: mov R4, #7
l3057: ldrVSsb R6, [sp, +R4]
l3058: movMI R5, R12, ASR #14
l3059: ldrCCh R0, [sp, #+18]
l3060: mov R9, #32
l3061: str R11, [sp], +R9
interrupt_364: l3062: subCCs R11, R14, R10, RRX 
l3063: b l3064
interrupt_846: l3064: movs R14, R12
l3065: swi #1359927
l3066: orrs R1, R2, #591396864
l3067: cmn R15, R2
l3068: movLSs R5, R7, RRX 
l3069: movs R6, R8
interrupt_930: l3070: ldr R4, l3072
l3071: b l3073
l3072: .word 1048500
interrupt_507: l3073: swpLEb R9, R7, [R4]
l3074: swi #6927629
l3075: ldr R5, l3077
interrupt_333: l3076: b l3078
l3077: .word 1048492
interrupt_316: l3078: swpb R4, R8, [R5]
l3079: eor R0, R3, R15
l3080: mvns R5, R2, LSR #7
interrupt_387: l3081: strEQ R9, [sp, #-8]
l3082: swi #11950039
l3083: strGTh R10, [sp, #-24]
l3084: subNE R9, R3, R3, ROR R7
l3085: ldrVS R4, [sp, #+8]
l3086: mvns R1, R1, LSR #12
interrupt_463: l3087: cmp R0, R9, LSR R2
l3088: eors R2, R5, #41418752
l3089: orrs R10, R4, R10
l3090: mov R2, #36
l3091: strLEh R0, [sp, -R2]
l3092: cmnVS R0, R9, LSL R2
l3093: mov R10, #34
l3094: strHIh R11, [sp, -R10]
l3095: ldrHIsb R12, [sp, #+22]
l3096: cmn R11, #3342336
l3097: tstLE R5, #154624
l3098: tstCC R0, R10, RRX 
interrupt_707: l3099: sbcEQs R14, R10, #131
l3100: bics R11, R9, #1064960
interrupt_121: l3101: ands R10, R8, R2, LSR #1
interrupt_690: l3102: movPLs R12, R5
l3103: bGT l3109
l3104: sub R9, R3, R11, ROR #17
l3105: and R1, R7, R14, LSR R14
l3106: orrLEs R5, R7, #76
interrupt_628: l3107: clzGE R0, R0
l3108: addVC R0, R14, R12
l3109: rsb R2, R3, R1, ASR #14
l3110: cmp R3, R4, LSR #8
l3111: strNEB R5, [sp, #-6]
l3112: andGE R14, R11, R0, LSL R4
l3113: ldrh R12, [sp, #-8]
interrupt_441: l3114: movEQ R14, R12, LSL R6
l3115: swi #7823679
interrupt_624: l3116: bic R6, R6, R14
l3117: tstHI R2, R11, LSR R7
l3118: cmnHI R7, R6, RRX 
l3119: mov R8, #0
interrupt_617: l3120: str R9, [sp, +R8]!
interrupt_288: l3121: b l3129
l3122: add R1, R0, #47
l3123: bic R5, R1, R11
l3124: rscs R1, R14, #7864320
l3125: movVC R7, R7
l3126: cmnGE R3, R6, RRX 
interrupt_731: l3127: tst R7, #16
l3128: b l3130
l3129: b l3123
l3130: rsbPLs R8, R0, #2640
l3131: bics R0, R8, R2, ASR R3
interrupt_4: l3132: mov R11, #4
interrupt_451: l3133: str R14, [sp, +R11]!
l3134: ldr R6, l3136
l3135: b l3137
interrupt_419: l3136: .word 1048480
l3137: swp R7, R10, [R6]
l3138: sbcNEs R10, R6, R6, LSL R4
l3139: bics R11, R2, R4, RRX 
l3140: adc R4, R8, R8
l3141: stmDB R13!, {R2}
l3142: clz R0, R6
l3143: stmDB R13!, {R13}
l3144: strPL R5, [sp, #+16]
l3145: subVC R5, R8, R11
l3146: strGTB R2, [sp, #-3]
l3147: ldrVSsh R4, [sp, #+2]
interrupt_827: l3148: bicHI R9, R7, R14, ROR #13
interrupt_76: l3149: swi #819639
l3150: bicGEs R6, R7, #38
l3151: ldr R8, l3153
l3152: b l3154
l3153: .word 1048512
l3154: swpb R9, R4, [R8]
l3155: ldr R2, l3157
l3156: b l3158
l3157: .word 1048532
l3158: swpPLb R10, R14, [R2]
l3159: bHI l3163
l3160: sbcLEs R4, R8, #2896
l3161: subEQ R6, R6, R5
l3162: add R4, R4, #-805306359
l3163: subGE R1, R5, #616562688
l3164: ldrB R5, [sp, #+33]
l3165: bLE l3174
interrupt_792: l3166: add R1, R0, #28
l3167: mvns R12, #-2147483599
l3168: bicLTs R11, R0, R1
l3169: movGTs R4, R1, ROR #13
l3170: rscVS R7, R10, R8, ROR #8
l3171: mvnLE R0, R11, LSR #20
l3172: adcs R6, R14, #-1174405120
l3173: b l3175
l3174: b l3167
l3175: eor R8, R4, R2
l3176: b l3180
l3177: add R1, R0, #44
l3178: rscVCs R8, R2, R14, ASR #18
interrupt_724: l3179: b l3181
interrupt_525: l3180: b l3178
l3181: sub R10, R1, R3, LSR R5
l3182: mov R9, #6
l3183: ldrsh R8, [sp, +R9]
interrupt_742: l3184: rsb R4, R10, R10
l3185: cmpGE R9, R9, ASR #24
l3186: mvnGE R12, R0, LSR R5
l3187: ldmDB R13!, {R0, R1, R3, R7, R8, R10}
l3188: subs R2, R1, R4
interrupt_646: l3189: orrPLs R8, R1, R0, RRX 
l3190: mvnCSs R0, R8, LSL R8
l3191: addLEs R14, R12, R4, ROR #5
l3192: mov R0, #38
l3193: ldrPLh R6, [sp, +R0]
interrupt_396: l3194: cmpLS R1, R11, ROR #13
l3195: bCC l3203
l3196: add R1, R0, #229
l3197: mov R9, #15400960
l3198: adcMIs R10, R4, R12, LSL #25
l3199: adcPL R11, R1, #4030464
l3200: sbc R11, R2, R11, ASR #30
l3201: eorLE R9, R0, R3, LSR R7
l3202: b l3204
l3203: b l3197
l3204: strGEh R10, [sp, #+0]
interrupt_714: l3205: bCC l3211
interrupt_896: l3206: add R1, R0, #138
interrupt_466: l3207: rscGEs R4, R14, #8576
l3208: adcHIs R6, R9, #851968
l3209: teqPL R8, R5
l3210: b l3212
l3211: b l3207
l3212: movNEs R2, R15, RRX 
l3213: adcGEs R5, R3, #7864320
l3214: ldmIB R13!, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l3215: cmpPL R6, R2
l3216: ldrMIh R7, [sp, #-32]
l3217: bics R1, R4, R9, LSL R11
l3218: teqVC R6, R6, RRX 
interrupt_952: l3219: eorHIs R14, R5, R6, LSL R11
l3220: rscLEs R9, R3, R14, LSR R9
l3221: sub R4, R14, #884736
l3222: addGE R3, R10, R10, ASR #22
interrupt_312: l3223: ldr R7, l3225
l3224: b l3226
l3225: .word 1048552
l3226: swpb R12, R8, [R7]
interrupt_750: l3227: sbcs R12, R10, R5
l3228: ldr R3, l3230
l3229: b l3231
l3230: .word 1048540
l3231: swpCSb R8, R7, [R3]
l3232: adc R10, R2, R9, ASR R4
l3233: clzNE R6, R7
l3234: orrCC R12, R5, R9, ASR R4
l3235: teqMI R3, R12, ASR R10
interrupt_561: l3236: rsbPL R5, R12, #935329792
l3237: eorVCs R11, R11, R15, LSL #27
l3238: sub R0, R12, R0, RRX 
l3239: ldr R5, l3241
l3240: b l3242
l3241: .word 1048508
l3242: swpGE R12, R9, [R5]
l3243: b l3248
interrupt_965: l3244: adds R10, R3, R8
l3245: rscGT R0, R2, R1
l3246: sbc R11, R10, R15
l3247: teq R2, R12, RRX 
l3248: bics R3, R4, R9
l3249: andGE R10, R7, #344
interrupt_33: l3250: ldrsh R3, [sp, #-14]
l3251: mov R14, R4
l3252: mov R0, #38
l3253: ldrPLsh R4, [sp, -R0]
l3254: ldr R5, l3256
l3255: b l3257
l3256: .word 1048504
l3257: swpLEb R10, R3, [R5]
l3258: rscGEs R8, R7, #629145600
l3259: cmn R3, R3
l3260: ldr R6, l3262
l3261: b l3263
l3262: .word 1048492
interrupt_844: l3263: swpEQb R7, R4, [R6]
l3264: subEQ R7, R9, #176160768
l3265: swi #6650490
l3266: bVC l3275
interrupt_126: l3267: add R1, R0, #65
l3268: subCCs R4, R1, #2080
l3269: addPL R0, R4, R7, LSL #30
l3270: andLEs R11, R10, #174063616
l3271: rsbLEs R14, R3, R5, LSR #4
l3272: and R8, R9, R7, LSR R8
l3273: bics R10, R12, R7, RRX 
l3274: b l3276
interrupt_78: l3275: b l3268
l3276: movVSs R12, R3, LSR #30
l3277: teqLE R4, R15, RRX 
l3278: cmnLE R0, R11
l3279: sbc R14, R9, R0, LSL R11
l3280: strCSh R10, [sp, #+0]
l3281: swi #696629
l3282: strLEB R9, [sp, #-56]
l3283: ldmIA R13!, {R6}
l3284: sbcs R4, R5, R5
interrupt_614: l3285: ldmDB R13!, {R1, R5, R6, R8, R9, R10, R11, R12, R14}
l3286: mov R7, #28
l3287: str R9, [sp, -R7]!
l3288: ldmIB R13!, {R0, R2, R4, R6, R9, R10, R12}
l3289: bicMIs R11, R6, R0, ROR R7
l3290: ldr R2, l3292
l3291: b l3293
l3292: .word 1048492
l3293: swpVC R6, R11, [R2]
l3294: subs R4, R4, #218103808
l3295: ldr R12, [sp, #+28]
l3296: bMI l3302
l3297: clzVS R14, R2
l3298: rsbPL R7, R6, #1
l3299: clzVS R7, R0
l3300: andGT R6, R14, R15, ROR #23
l3301: adcLTs R14, R3, #-805306362
interrupt_674: l3302: sbcCSs R8, R3, #-2147483637
l3303: mov R3, #26
interrupt_378: l3304: ldrh R0, [sp, +R3]
l3305: swi #6836853
l3306: bHI l3313
l3307: add R1, R0, #77
l3308: cmn R10, R2
l3309: mvnMIs R4, R6
l3310: tst R2, R0
l3311: addPL R14, R14, R10, LSR #28
interrupt_842: l3312: b l3314
interrupt_145: l3313: b l3308
l3314: ldrsh R14, [sp, #-14]
l3315: swi #11491092
interrupt_314: l3316: ldr R9, l3318
l3317: b l3319
l3318: .word 1048504
l3319: swpb R14, R7, [R9]
l3320: bEQ l3324
l3321: sub R2, R6, R10, ROR #6
l3322: adcs R9, R14, R14
l3323: rscMI R2, R6, R10, LSR #0
l3324: mvnVCs R7, R9, RRX 
l3325: sub R14, R2, R7, ROR R12
l3326: bicGE R10, R8, R5, ASR #28
l3327: ldr R9, l3329
l3328: b l3330
l3329: .word 1048548
l3330: swpMIb R4, R11, [R9]
interrupt_334: l3331: teq R0, R8, ASR R3
interrupt_576: l3332: orrPLs R2, R0, #30146560
l3333: b l3337
interrupt_268: l3334: add R1, R0, #84
l3335: teq R10, R14
interrupt_214: l3336: b l3338
interrupt_651: l3337: b l3335
interrupt_911: l3338: orrLE R4, R11, R3
l3339: eor R7, R6, #536870925
interrupt_638: l3340: ldmIB R13!, {R0, R1, R2, R4, R6, R7, R8, R11}
l3341: mvnGE R0, R4, ASR #18
interrupt_637: l3342: mov R4, #16
interrupt_320: l3343: ldrLTh R1, [sp, -R4]
l3344: b l3353
l3345: bicVSs R5, R9, R15, ROR #30
l3346: orrHI R12, R14, R0, ROR R6
l3347: eor R2, R1, R8, ASR R0
interrupt_810: l3348: teq R14, R4, LSR #15
l3349: eorVSs R2, R2, R10, RRX 
interrupt_519: l3350: eorNEs R2, R11, R8, LSL #4
l3351: cmn R14, R9
interrupt_23: l3352: andVSs R5, R1, #49283072
l3353: orrVC R3, R3, R2, LSL R10
l3354: bicNEs R0, R2, R9, ROR #30
l3355: mvn R4, #38797312
l3356: swi #7721823
l3357: ldr R0, l3359
l3358: b l3360
l3359: .word 1048488
l3360: swpGE R7, R11, [R0]
l3361: sbcs R10, R6, R11, LSR R8
l3362: subGTs R10, R12, #944
l3363: str R8, [sp, #-36]!
interrupt_891: l3364: bics R14, R10, #805306372
l3365: bicCC R4, R4, R5
interrupt_488: l3366: strLTB R7, [sp, #+36]
l3367: mvnCS R12, R12, ROR #6
l3368: tstLE R5, R7, RRX 
l3369: bicCS R7, R7, R15
l3370: mov R5, #4
interrupt_424: l3371: strGE R15, [sp, -R5]
interrupt_261: l3372: nop
l3373: rsbLEs R10, R14, R10, ASR #20
l3374: ldrsh R3, [sp, #-20]
l3375: rsc R0, R10, R1, ROR R0
l3376: rscPL R6, R9, R14, LSL #6
interrupt_694: l3377: cmn R4, R10, LSR R3
l3378: subNE R8, R11, R5, RRX 
l3379: cmpLS R10, #1441792
l3380: adcs R0, R11, R9, LSL R9
l3381: ldr R12, [sp, #-12]!
l3382: swi #8868115
l3383: teq R11, #1984
l3384: ldrGEB R8, [sp, #+8]
interrupt_535: l3385: clz R12, R2
l3386: mvnLS R7, #46080
l3387: ldr R12, l3389
l3388: b l3390
interrupt_603: l3389: .word 1048496
l3390: swpVSb R10, R9, [R12]
l3391: bic R8, R8, R3, RRX 
l3392: ldr R4, [sp], #+16
l3393: mov R7, #8
l3394: ldrLSB R6, [sp, -R7]
l3395: cmp R5, R2
l3396: cmp R11, R8, ROR #1
l3397: ldrB R3, [sp, #+3]
l3398: mov R8, #20
l3399: str R5, [sp, +R8]!
l3400: tstVC R15, #1140850688
l3401: adcs R8, R12, R12
l3402: tstLS R6, R14, ASR R4
l3403: cmpEQ R5, R1, ROR R8
l3404: ldrNEsh R7, [sp, #-2]
interrupt_509: l3405: mov R14, #49
interrupt_877: l3406: ldrsb R11, [sp, -R14]
interrupt_426: l3407: movEQ R7, R15
l3408: rsbs R11, R9, R1, LSL #25
l3409: mov R9, #16
interrupt_942: l3410: strHIB R0, [sp, -R9]
l3411: ldr R5, l3413
interrupt_862: l3412: b l3414
l3413: .word 1048484
interrupt_935: l3414: swpb R10, R1, [R5]
l3415: orrLEs R1, R14, R7
l3416: addHIs R0, R10, R7, ASR #17
l3417: addLEs R0, R11, R5, RRX 
l3418: eors R2, R3, R4, ASR #24
interrupt_522: l3419: cmn R14, R7, LSL #9
l3420: ldr R9, [sp], #-40
l3421: nop
l3422: bNE l3429
l3423: bic R7, R3, R11, LSL R9
l3424: eorMI R8, R11, #236
interrupt_826: l3425: mvnGEs R3, R6
l3426: rscMI R6, R8, R3, LSR #16
l3427: rsbEQs R0, R6, #195035136
l3428: subs R2, R15, R10, ROR #11
l3429: teqPL R6, R4, ROR #23
interrupt_620: l3430: subGEs R12, R0, R1
l3431: mov R7, #4
l3432: strh R2, [sp, +R7]
l3433: sbcPL R1, R14, R7
l3434: mov R8, #6
l3435: strh R7, [sp, +R8]
l3436: orrVS R0, R14, #54788096
l3437: bVS l3438
l3438: adcNEs R12, R11, R12, LSL #0
l3439: swi #9777055
l3440: adcPL R2, R7, R3
interrupt_276: l3441: swi #3383025
l3442: adc R2, R14, R3, ASR R3
l3443: cmp R2, R5, LSR #12
l3444: teqNE R0, R10, ROR R4
l3445: eorGT R14, R5, R10
interrupt_200: l3446: and R0, R10, R1
interrupt_643: l3447: strB R1, [sp, #+39]
l3448: mov R11, #44
l3449: ldrh R14, [sp, +R11]
l3450: rsbCC R9, R15, #994050048
l3451: b l3460
l3452: add R1, R0, #55
l3453: rsbCC R12, R2, #312
l3454: mvns R8, #73
interrupt_96: l3455: addCS R7, R2, R7, ROR R6
l3456: sub R2, R11, R4, LSR #16
l3457: sbcPL R6, R9, R9, ASR R0
l3458: sub R4, R7, R10, LSR R3
interrupt_684: l3459: b l3461
l3460: b l3453
l3461: andGE R11, R8, R11, LSL #5
l3462: stmIA R13, {R1, R3, R4, R7, R8, R9, R10, R11, R12, R13, R14}
l3463: sbcGEs R7, R10, #7
l3464: b l3472
l3465: add R1, R0, #63
l3466: rscs R2, R3, R6, RRX 
l3467: sbc R12, R2, R12, ASR #22
l3468: mvn R11, #45056
l3469: rscVC R5, R1, R8, LSL R2
interrupt_255: l3470: eorLSs R11, R10, R11, LSL #10
interrupt_238: l3471: b l3473
interrupt_983: l3472: b l3466
l3473: stmNEIB R13, {R1, R2, R3, R5, R6, R9, R11, R13, R14, R15}
l3474: add R2, R12, #15597568
l3475: ldrLSB R4, [sp, #+54]
l3476: cmpCS R5, R7
l3477: rscs R5, R0, #6094848
l3478: clzCC R2, R14
l3479: clzCS R8, R6
l3480: bic R3, R11, R1, LSR #21
interrupt_976: l3481: strLTh R0, [sp, #+16]
interrupt_28: l3482: sbcLE R10, R15, R15, RRX 
l3483: rsc R7, R4, R2, ASR #4
interrupt_865: l3484: stmDB R13, {R4}
l3485: stmIB R13!, {R1, R2, R3, R4, R5, R7, R8, R9, R10, R12, R15}
l3486: ldr R8, l3488
l3487: b l3489
l3488: .word 1048488
l3489: swp R2, R3, [R8]
l3490: sbcVS R3, R11, R6, RRX 
interrupt_247: l3491: swi #8269429
l3492: rsbHI R0, R5, #-805306354
l3493: stmDA R13!, {R6}
l3494: mov R3, #18
l3495: ldrh R7, [sp, +R3]
interrupt_888: l3496: andGT R4, R12, R7
l3497: swi #7029750
l3498: andLE R1, R6, R14
l3499: cmpGE R0, R15, RRX 
interrupt_590: l3500: ldmDA R13!, {R2, R4, R6, R7, R9, R10, R14}
l3501: swi #9487388
l3502: ldrMIsb R8, [sp, #+38]
l3503: str R3, [sp, #+44]!
interrupt_840: l3504: subs R1, R14, R2
l3505: swi #7436006
l3506: rsc R4, R10, R6, ROR R6
l3507: cmn R12, R7
l3508: clzMI R9, R0
l3509: teq R6, R0
interrupt_546: l3510: ldr R8, l3512
l3511: b l3513
interrupt_239: l3512: .word 1048520
interrupt_287: l3513: swpEQb R9, R3, [R8]
l3514: adcVC R10, R11, R7, LSR R11
l3515: strLTh R3, [sp, #-46]
l3516: mov R12, #6
l3517: strPLB R9, [sp, +R12]
l3518: ldrsb R3, [sp, #-41]
l3519: subLSs R2, R4, R1, LSR #11
l3520: bLT l3529
l3521: adcs R10, R15, #1459617792
l3522: adds R9, R5, R3, ROR #9
l3523: clzHI R10, R7
l3524: clzLT R1, R8
l3525: rsb R12, R9, #-2147483599
l3526: teqGE R9, R8, LSR R8
l3527: movCS R0, #638976
l3528: orrMI R1, R10, #157696
l3529: sbcLS R8, R12, #922746880
l3530: stmDA R13!, {R4, R6}
l3531: subs R10, R10, R15, ASR #19
l3532: cmpEQ R2, R7, RRX 
l3533: subLEs R12, R12, R7, LSR #17
l3534: bics R4, R11, #6684672
interrupt_60: l3535: str R3, [sp], #-12
interrupt_860: l3536: cmp R2, R8
l3537: mov R0, #0
l3538: ldrGTsh R1, [sp, +R0]
l3539: mvnVC R9, R6
l3540: subs R8, R8, R4
interrupt_201: l3541: rsbCS R5, R0, #4064
interrupt_22: l3542: movVSs R11, R6, LSL #2
l3543: ldr R12, l3545
interrupt_151: l3544: b l3546
l3545: .word 1048508
l3546: swpCSb R10, R7, [R12]
l3547: orrEQs R14, R11, #876609536
l3548: mvnGE R0, R8, ROR R8
l3549: rsc R4, R4, R3, ASR #29
interrupt_467: l3550: tst R8, R6
l3551: ldrsh R14, [sp, #-30]
l3552: addEQs R12, R14, R14, RRX 
interrupt_202: l3553: subs R7, R15, R4, RRX 
interrupt_345: l3554: swi #12226322
l3555: strEQh R7, [sp, #+8]
l3556: mov R5, #8
l3557: ldrsh R8, [sp, -R5]
l3558: mov R8, #10
l3559: ldrHIh R10, [sp, -R8]
l3560: stmDB R13!, {R13, R15}
l3561: str R7, [sp, #-4]
l3562: addLE R5, R6, R10, ROR R0
l3563: cmn R7, #55574528
l3564: mov R6, #0
l3565: ldrh R7, [sp, +R6]
l3566: eors R0, R3, R5, LSR R6
l3567: subMI R8, R9, R5, ASR R9
l3568: sbcGEs R10, R14, R2, LSR R9
l3569: ldrHIsh R3, [sp, #-26]
l3570: orrGT R5, R15, R11
l3571: cmp R9, R1, LSR R7
l3572: subs R5, R3, R9
l3573: strh R7, [sp, #-32]
interrupt_174: l3574: bHI l3578
interrupt_538: l3575: add R1, R0, #254
l3576: rsbGTs R5, R4, R4, RRX 
interrupt_388: l3577: b l3579
l3578: b l3576
l3579: addCSs R4, R6, R11, ROR #2
interrupt_219: l3580: orrLEs R0, R8, #6336
interrupt_828: l3581: stmDA R13, {R1, R7}
l3582: ldr R6, l3584
l3583: b l3585
l3584: .word 1048520
l3585: swpPL R12, R5, [R6]
l3586: swi #13132528
interrupt_568: l3587: mov R14, #6
l3588: strh R11, [sp, -R14]
l3589: stmHIDB R13, {R0, R6, R8, R9, R15}
l3590: clz R2, R0
l3591: tstHI R3, R4, RRX 
l3592: ldr R0, l3594
l3593: b l3595
l3594: .word 1048544
l3595: swp R12, R8, [R0]
l3596: mvnVS R2, #65024
l3597: mov R1, #1
l3598: ldrEQsb R6, [sp, +R1]
l3599: cmp R10, #1523712
l3600: ldmDA R13!, {R0, R4, R11}
l3601: mov R10, #11
l3602: ldrLEB R14, [sp, -R10]
l3603: adcGTs R0, R14, #11534336
l3604: strLEh R12, [sp, #-10]
l3605: ldr R14, l3607
interrupt_224: l3606: b l3608
l3607: .word 1048496
l3608: swpb R11, R1, [R14]
l3609: b l3613
interrupt_34: l3610: rsbVS R12, R15, #3997696
interrupt_537: l3611: sbcHI R9, R15, #7
interrupt_913: l3612: bicLE R10, R6, #3260416
l3613: eors R8, R1, #50855936
interrupt_555: l3614: ldmDB R13!, {R4, R5, R8, R12}
interrupt_839: l3615: mov R11, #22
l3616: strMIh R0, [sp, +R11]
interrupt_425: l3617: bCC l3623
l3618: add R1, R0, #60
l3619: clz R9, R0
interrupt_142: l3620: eors R2, R2, #536870922
l3621: mov R12, R7
l3622: b l3624
l3623: b l3619
l3624: andNEs R6, R1, R8
l3625: swi #5653321
l3626: stmIB R13, {R2, R4, R5, R6, R7, R9, R10, R11, R12, R14}
l3627: movPLs R4, R0
l3628: teqEQ R11, R9, LSL #13
l3629: cmp R3, R15, RRX 
l3630: sbc R3, R11, R0, LSR #15
l3631: adc R8, R9, #-889192448
l3632: cmp R3, R10, LSR #17
l3633: orrLS R12, R6, R10, ASR #21
l3634: ands R3, R15, #16384
l3635: mov R3, #4
interrupt_821: l3636: strh R11, [sp, -R3]
l3637: ldrLSsb R8, [sp, #-4]
l3638: andLS R14, R6, #61696
l3639: eors R5, R7, R5, ASR R9
l3640: adcMIs R14, R11, #46
l3641: ldrEQsh R10, [sp, #+58]
l3642: mvnLE R4, R1, RRX 
interrupt_715: l3643: ldr R7, [sp], #-12
l3644: subGTs R12, R11, R5, RRX 
l3645: ldr R11, l3647
l3646: b l3648
l3647: .word 1048496
l3648: swpHI R10, R8, [R11]
l3649: teq R11, R2
interrupt_669: l3650: cmpLS R0, R11, LSL R0
interrupt_575: l3651: mov R7, #18
interrupt_428: l3652: ldrh R7, [sp, +R7]
l3653: subVCs R12, R7, R8, RRX 
l3654: orrMIs R5, R10, R1, RRX 
l3655: rscs R5, R4, R6, ROR R4
interrupt_109: l3656: strB R7, [sp, #+55]
interrupt_765: l3657: nop
l3658: b l3662
l3659: add R1, R0, #211
interrupt_418: l3660: addLT R7, R6, R6, ASR R9
l3661: b l3663
l3662: b l3660
l3663: swi #14446511
l3664: b l3670
l3665: add R1, R0, #141
l3666: tstNE R12, R14
l3667: mvns R8, R9
interrupt_327: l3668: rsbs R14, R8, R9
interrupt_931: l3669: b l3671
l3670: b l3666
l3671: mvn R1, R0, ASR #17
interrupt_508: l3672: mov R9, #73
l3673: strB R9, [sp, +R9]
l3674: strVSB R11, [sp, #+49]
l3675: clz R9, R5
l3676: subMIs R7, R1, #-2147483609
l3677: ldmIA R13!, {R3, R4, R5, R6, R8, R9, R10, R11, R12}
l3678: swi #13075333
l3679: mov R9, #13
l3680: strB R12, [sp, +R9]
l3681: ldr R9, l3683
interrupt_49: l3682: b l3684
l3683: .word 1048512
interrupt_186: l3684: swpLEb R11, R2, [R9]
l3685: mov R4, #39
interrupt_705: l3686: ldrLEB R7, [sp, +R4]
l3687: swi #12394771
l3688: eorEQ R10, R14, R3, ASR #8
interrupt_453: l3689: bPL l3693
interrupt_59: l3690: eor R5, R5, R9, RRX 
interrupt_198: l3691: mov R0, R0, LSR R5
l3692: cmpCS R8, R5
l3693: subGTs R6, R15, R0
l3694: ldrh R10, [sp, #-8]
l3695: subNEs R1, R10, R3
l3696: ldmDB R13!, {R3, R4}
interrupt_541: l3697: mvns R4, #1946157056
l3698: swi #14769855
l3699: cmpHI R0, R14, LSR R11
l3700: mov R12, R14, ASR R5
interrupt_275: l3701: subPLs R0, R7, R4, RRX 
interrupt_393: l3702: mov R3, #15
l3703: strB R2, [sp, +R3]
l3704: addPL R5, R10, R5, ASR R2
l3705: bicCSs R6, R10, R11, ROR #7
l3706: ldr R12, l3708
l3707: b l3709
l3708: .word 1048540
l3709: swpLSb R1, R10, [R12]
l3710: adcHIs R10, R6, #77824
interrupt_934: l3711: mov R8, #6
l3712: ldrLEh R14, [sp, -R8]
l3713: eorEQ R9, R7, R3, RRX 
l3714: cmpVS R2, R10, LSL #15
l3715: mvnVC R14, R7
l3716: rsbLT R9, R12, R1, ROR R8
l3717: mov R3, #4
interrupt_406: l3718: strh R2, [sp, -R3]
l3719: movGT R8, #2032
l3720: ldmDA R13!, {R10, R12, R14}
interrupt_681: l3721: tstLT R6, #244736
l3722: stmIA R13!, {R3, R7}
l3723: ldmIB R13!, {R5}
l3724: strPLB R6, [sp, #-6]
interrupt_332: l3725: mov R8, #42
l3726: strVSh R0, [sp, +R8]
l3727: clz R6, R12
l3728: rsb R8, R10, R1
interrupt_382: l3729: mov R2, #44
l3730: ldrB R0, [sp, +R2]
l3731: ldrsb R12, [sp, #+30]
interrupt_866: l3732: stmVCIA R13, {R0, R3, R9, R12, R14}
l3733: sbcLTs R11, R7, #-889192448
l3734: sub R10, R3, #-805306362
l3735: rscHIs R10, R14, R2, LSL R14
l3736: mov R3, #4
l3737: strMIB R2, [sp, -R3]
l3738: cmnGT R5, #-268435450
interrupt_307: l3739: mvn R4, #40960
l3740: bicNE R4, R10, R8, ROR R6
l3741: mvnLE R14, R14, RRX 
l3742: sbcs R8, R9, #56623104
l3743: andLEs R2, R10, R5, ROR #15
l3744: adcs R6, R3, R14, LSL #2
l3745: cmnGE R2, R3, LSR R6
l3746: subVC R9, R15, #-1610612735
l3747: bic R8, R14, #36
l3748: cmnGT R4, #-1879048189
l3749: strCS R11, [sp, #+0]
interrupt_549: l3750: cmnCS R15, R8
l3751: and R9, R9, #1002438656
l3752: mov R6, #20
l3753: strLT R9, [sp, -R6]
l3754: mov R2, #16
l3755: ldrLTh R14, [sp, -R2]
l3756: ldrNEB R0, [sp, #+3]
l3757: b l3761
l3758: addLSs R2, R12, R12, ROR #14
l3759: cmp R8, R5, LSL R12
interrupt_548: l3760: rsbVCs R11, R12, R15
l3761: cmnGT R6, R14
interrupt_630: l3762: subLE R10, R7, R5, RRX 
l3763: movMIs R6, R8
l3764: ldrsh R1, [sp, #-22]
l3765: bicHI R9, R7, R12
l3766: stmDB R13, {R2, R7, R8, R10}
l3767: clzLE R3, R12
l3768: eors R1, R11, R12, ASR R8
l3769: mvnPL R0, #57
interrupt_170: l3770: clzEQ R7, R6
l3771: movHI R8, R6, LSL R5
interrupt_718: l3772: teqLE R2, R2, RRX 
l3773: ldr R3, l3775
l3774: b l3776
l3775: .word 1048480
l3776: swpb R9, R0, [R3]
l3777: b l3785
interrupt_299: l3778: add R1, R0, #133
l3779: rscLTs R10, R11, R10, ASR R3
l3780: teq R9, R0, ASR R9
l3781: teq R1, R8, ROR R14
l3782: sbc R11, R12, R11, ASR #3
l3783: mvnMIs R4, R11, LSL R12
l3784: b l3786
interrupt_818: l3785: b l3779
l3786: cmnPL R5, R4, LSL #26
l3787: subLTs R11, R0, R10
l3788: swi #8988666
l3789: sub R0, R3, R15, LSR #13
l3790: mov R7, #16
l3791: ldrh R8, [sp, +R7]
l3792: cmn R2, #-2147483595
l3793: ldr R4, [sp], #+8
l3794: strMIB R14, [sp, #-14]
l3795: subs R10, R9, R8, RRX 
l3796: ldr R7, l3798
l3797: b l3799
l3798: .word 1048480
l3799: swpb R3, R9, [R7]
interrupt_498: l3800: stmIB R13!, {R13, R15}
l3801: mov R4, #8
l3802: ldr R11, [sp], +R4
l3803: mov R8, #20
l3804: str R4, [sp], +R8
l3805: adcPL R10, R9, R1
l3806: ldrB R6, [sp, #-41]
interrupt_745: l3807: mov R4, #44
l3808: strh R0, [sp, -R4]
interrupt_139: l3809: ldr R11, l3811
l3810: b l3812
interrupt_313: l3811: .word 1048548
interrupt_193: l3812: swpb R4, R0, [R11]
l3813: cmpVC R8, R4, RRX 
interrupt_226: l3814: stmDB R13, {R0, R3, R4, R6, R7, R8, R9, R10, R12, R13, R14, R15}
l3815: adcCSs R3, R14, R9, LSL R4
l3816: mvnGT R5, #18874368
l3817: nop
l3818: clz R1, R0
l3819: mvnMIs R7, R4
l3820: movNEs R0, R8, LSL #17
l3821: rsb R11, R2, R3, LSR #6
l3822: rsbLTs R9, R7, R0, ROR #14
l3823: sub R1, R2, R15, RRX 
l3824: ldr R7, l3826
interrupt_84: l3825: b l3827
l3826: .word 1048492
interrupt_743: l3827: swpb R5, R2, [R7]
l3828: mov R0, #47
l3829: ldrLSsb R7, [sp, -R0]
interrupt_808: l3830: subPLs R6, R7, R11
l3831: str R3, [sp, #-20]
l3832: mov R9, R14, RRX 
interrupt_228: l3833: ldrVSsh R9, [sp, #-2]
l3834: mov R3, #34
l3835: strh R6, [sp, -R3]
l3836: ldr R3, l3838
l3837: b l3839
l3838: .word 1048548
l3839: swpNE R5, R11, [R3]
l3840: swi #600969
l3841: andLSs R2, R2, #376
l3842: bicPL R5, R0, #57147392
l3843: tst R3, R5, LSR R10
l3844: ldrLSB R0, [sp, #-52]
l3845: addVS R12, R4, R15
l3846: b l3848
l3847: orrCCs R4, R6, R5, LSL #6
l3848: mov R12, #125952
l3849: subHI R3, R4, R14, LSL #5
interrupt_342: l3850: ldr R4, l3852
l3851: b l3853
l3852: .word 1048512
l3853: swpNEb R11, R8, [R4]
l3854: cmp R10, R3, LSL #0
l3855: bicHI R12, R1, R12, ASR #3
l3856: tst R10, R3
l3857: mov R1, #60
l3858: ldrh R6, [sp, -R1]
l3859: rscEQ R1, R7, R6, ROR #26
l3860: ldrVSB R2, [sp, #-4]
interrupt_346: l3861: adcCS R8, R15, #86016
l3862: mov R10, #12
l3863: ldrLTh R10, [sp, -R10]
interrupt_798: l3864: ldr R14, [sp, #-24]
l3865: eorCSs R11, R9, R1, ASR R4
l3866: str R11, [sp, #-8]
l3867: clz R14, R11
interrupt_258: l3868: bicVC R4, R15, R8, ROR #31
interrupt_578: l3869: ldr R9, l3871
l3870: b l3872
l3871: .word 1048508
l3872: swpGE R7, R10, [R9]
l3873: mov R3, #12
interrupt_859: l3874: ldrHI R12, [sp, -R3]
l3875: cmn R4, #116
l3876: strLTh R3, [sp, #-38]
l3877: subPLs R5, R0, #6016
l3878: movLSs R10, R11, RRX 
l3879: ldr R5, l3881
l3880: b l3882
l3881: .word 1048548
l3882: swpLT R7, R4, [R5]
l3883: swi #7927135
l3884: mov R4, R6, RRX 
l3885: adcVSs R9, R1, #228
l3886: nop
interrupt_306: l3887: adds R12, R2, R5, LSL R12
interrupt_456: l3888: orrLT R9, R9, R9, LSL #7
l3889: mov R6, #24
l3890: strHI R5, [sp, -R6]
l3891: rsbLTs R10, R3, R2
l3892: ldr R8, l3894
l3893: b l3895
l3894: .word 1048512
l3895: swpb R12, R7, [R8]
l3896: ldr R1, l3898
l3897: b l3899
l3898: .word 1048488
l3899: swpb R3, R5, [R1]
l3900: ldr R6, l3902
l3901: b l3903
l3902: .word 1048536
l3903: swpb R3, R11, [R6]
l3904: nop
l3905: swi #13014636
l3906: rsc R10, R2, R1
l3907: nop
l3908: clz R1, R0
l3909: rsbPLs R2, R2, #257024
l3910: mov R1, #4
l3911: ldr R12, [sp, -R1]!
l3912: swi #9602354
l3913: mov R4, #1584
l3914: rsc R14, R1, R0, RRX 
interrupt_497: l3915: teqGT R15, #50
l3916: mov R12, #14
l3917: strh R12, [sp, -R12]
l3918: movs R12, #973078528
l3919: adcs R2, R4, R14
l3920: swi #6212889
l3921: eorGTs R14, R6, R15
l3922: b l3929
l3923: cmn R15, #323584
l3924: ands R4, R11, R9, ASR #4
l3925: mov R4, R5
l3926: sbcs R11, R6, R4
l3927: mvns R12, R3, ASR R1
interrupt_133: l3928: orrGTs R7, R3, #7680
l3929: rsb R6, R4, R3, ASR #29
l3930: orrNEs R11, R6, R8
l3931: ldmPLDB R13, {R1, R9, R12}
l3932: sbcVSs R0, R2, R10
l3933: rsc R8, R7, R10
l3934: teq R14, #1342177286
l3935: adds R9, R11, R1, LSL #24
l3936: b l3942
l3937: add R1, R0, #227
interrupt_588: l3938: teq R1, #56
l3939: rsbLSs R3, R9, R14, RRX 
l3940: cmn R9, #888832
interrupt_185: l3941: b l3943
l3942: b l3938
l3943: mov R8, #14
l3944: ldrCCh R9, [sp, -R8]
l3945: mvnVS R5, R9, RRX 
interrupt_7: l3946: sbcNEs R5, R2, R12, LSL #3
l3947: mov R10, #3
l3948: ldrsb R10, [sp, +R10]
l3949: strB R2, [sp, #-46]
l3950: nop
l3951: rscLEs R1, R2, R0
l3952: swi #8923616
l3953: stmIA R13!, {R11}
interrupt_220: l3954: cmp R10, R11, LSR #8
l3955: teq R12, R11, RRX 
interrupt_459: l3956: sbcEQ R10, R8, R2
l3957: eors R10, R12, R8
l3958: rscCC R8, R11, R12
l3959: ldr R10, [sp], #-64
l3960: ldr R3, [sp, #-8]
l3961: subLTs R3, R12, R10, LSR R4
l3962: adcCS R3, R9, R4
interrupt_647: l3963: swi #4765743
l3964: bics R8, R15, R9, LSL #17
interrupt_768: l3965: nop
interrupt_883: l3966: cmnLE R12, R10
l3967: ldrB R8, [sp, #+26]
l3968: cmn R12, R6, LSR #4
l3969: stmIB R13, {R3, R4, R7, R10, R11, R12, R13, R14, R15}
interrupt_304: l3970: ldr R5, l3972
interrupt_868: l3971: b l3973
l3972: .word 1048488
l3973: swpGEb R0, R0, [R5]
l3974: teq R3, R7
l3975: teqLT R9, R12, ASR R12
l3976: cmn R1, #-1073741813
l3977: orrVS R12, R14, R7, ASR #31
interrupt_252: l3978: eorMI R2, R4, R3, ASR R14
l3979: bCC l3980
l3980: sbc R3, R2, #-2147483591
l3981: adds R10, R15, R14, ROR #12
l3982: mov R0, #28
l3983: ldrsb R4, [sp, +R0]
l3984: rscs R1, R8, #238
interrupt_937: l3985: bEQ l3992
interrupt_39: l3986: add R1, R0, #200
l3987: cmnNE R0, R8
l3988: subEQ R8, R14, #672
l3989: adds R14, R0, #13696
l3990: adc R0, R7, R8, LSR R4
l3991: b l3993
l3992: b l3987
interrupt_577: l3993: teqLE R6, R3, RRX 
l3994: tst R9, R12
l3995: ldr R14, l3997
l3996: b l3998
interrupt_521: l3997: .word 1048536
l3998: swpLT R9, R10, [R14]
l3999: ldrLTh R12, [sp, #+34]
l4000: clzEQ R0, R10
l4001: tst R2, #2368
l4002: teqCS R9, R12, ASR #30
l4003: swi #7484425
l4004: clz R10, R1
l4005: subHIs R14, R12, R2, ASR R0
l4006: teqGT R11, #245366784
l4007: swi #752248
l4008: cmpLE R5, R8
l4009: b l4018
l4010: add R1, R0, #141
l4011: add R6, R2, R10, LSR #0
l4012: orrVSs R14, R1, R5
interrupt_182: l4013: sbc R14, R7, #-268435453
interrupt_500: l4014: and R2, R0, #245760
interrupt_553: l4015: rscs R2, R5, R12
interrupt_103: l4016: rsbs R12, R9, R6, RRX 
l4017: b l4019
l4018: b l4011
l4019: str R0, [sp, #+12]
l4020: eorEQs R10, R10, R6, LSR R12
interrupt_42: l4021: swi #16762136
l4022: eorCCs R10, R2, #42991616
l4023: nop
l4024: cmpCC R15, R1, LSR #12
interrupt_496: l4025: teqVS R4, R14, ROR R6
l4026: movCCs R7, R7
l4027: ldr R1, l4029
l4028: b l4030
l4029: .word 1048524
interrupt_91: l4030: swp R5, R2, [R1]
l4031: swi #12690300
l4032: mov R0, #45
l4033: strB R3, [sp, +R0]
l4034: mov R6, #12
l4035: ldrHIsh R12, [sp, +R6]
l4036: mov R9, #44
interrupt_517: l4037: ldr R6, [sp, +R9]
l4038: subGT R1, R4, R2, LSR #11
interrupt_609: l4039: andVC R0, R3, R1
l4040: movVSs R2, R10, ASR #13
l4041: cmnGE R10, R11, LSR #31
interrupt_129: l4042: ldrsb R11, [sp, #+63]
l4043: movVSs R14, R4, RRX 
interrupt_676: l4044: eors R14, R0, R0, ASR R7
l4045: mvn R2, R11, LSL R4
l4046: andCSs R8, R15, R11, ASR #13
l4047: ldr R2, l4049
l4048: b l4050
l4049: .word 1048504
l4050: swpPL R1, R9, [R2]
l4051: mov R4, #58
l4052: strMIh R1, [sp, +R4]
l4053: orrNEs R1, R15, R3, ROR #13
l4054: teq R10, R14, ROR R5
l4055: ldr R14, l4057
l4056: b l4058
l4057: .word 1048480
l4058: swpb R11, R11, [R14]
l4059: rsbLS R14, R9, R0
interrupt_243: l4060: sbcMI R2, R8, R2
l4061: strB R0, [sp, #+7]
interrupt_470: l4062: swi #770731
l4063: cmpPL R9, R5
interrupt_416: l4064: rsbs R5, R15, R9, RRX 
interrupt_776: l4065: b l4075
l4066: eorEQ R10, R4, R15
l4067: andPLs R4, R2, R12, LSR R0
l4068: orr R9, R9, #348
interrupt_208: l4069: addCSs R11, R5, R10
l4070: eors R3, R9, R5, LSL #18
l4071: addGT R12, R3, R3, ROR #15
l4072: orrLSs R7, R7, R5, ROR #30
l4073: mov R7, #704512
l4074: clz R5, R0
l4075: subs R10, R0, R9, LSR R7
interrupt_787: l4076: adcPLs R5, R0, R10, ASR #2
l4077: and R7, R4, #135168
interrupt_591: l4078: cmpNE R8, R2, LSR #10
l4079: mov R6, #64
l4080: ldr R7, [sp], +R6
interrupt_604: l4081: ands R1, R4, R2
l4082: teq R3, #2
interrupt_928: l4083: add R4, R11, R11, ROR #5
l4084: tst R12, R0, ASR R3
l4085: b l4093
l4086: add R1, R0, #34
l4087: sbcLS R11, R11, R9, ASR #27
interrupt_315: l4088: rscPLs R4, R7, #192512
interrupt_704: l4089: orrLEs R0, R7, R12
interrupt_610: l4090: addGEs R12, R8, R6
interrupt_20: l4091: tst R14, R11, RRX 
l4092: b l4094
l4093: b l4087
l4094: bicLS R7, R8, R4, ASR R6
l4095: ldrsh R9, [sp, #-24]
l4096: mov R12, #24
l4097: ldrEQB R12, [sp, -R12]
l4098: ldrLT R11, [sp, #-36]
l4099: mov R2, #14
interrupt_30: l4100: ldrLTh R3, [sp, -R2]
l4101: mov R5, #52
interrupt_10: l4102: strGTh R0, [sp, -R5]
l4103: strHI R2, [sp, #-24]
l4104: mov R4, #31
interrupt_978: l4105: ldrVCB R14, [sp, -R4]
l4106: nop
l4107: ldr R14, l4109
l4108: b l4110
l4109: .word 1048532
l4110: swpMIb R12, R12, [R14]
interrupt_793: l4111: ldrLS R1, [sp, #-32]
l4112: mov R3, #27
interrupt_250: l4113: ldrsb R10, [sp, -R3]
l4114: ldrLEh R2, [sp, #-18]
l4115: subLT R4, R12, #1409286147
interrupt_218: l4116: cmpMI R6, R14, LSL R10
l4117: bPL l4120
l4118: clz R5, R11
interrupt_462: l4119: rsbCSs R3, R0, R14
l4120: rscVS R2, R9, R4
l4121: subs R8, R12, #901120
l4122: bicPLs R3, R3, R7, ASR R9
l4123: ldr R14, l4125
l4124: b l4126
l4125: .word 1048500
interrupt_353: l4126: swpEQb R12, R0, [R14]
l4127: ldr R10, l4129
l4128: b l4130
l4129: .word 1048548
l4130: swpMIb R14, R6, [R10]
l4131: mov R9, #44
interrupt_682: l4132: ldrB R5, [sp, -R9]
interrupt_605: l4133: ldrh R7, [sp, #-64]
interrupt_551: l4134: rscGTs R2, R7, R14
l4135: movVCs R3, R8, RRX 
l4136: ldrh R11, [sp, #-22]
l4137: cmnLT R5, R1
l4138: rscVC R2, R7, #-2147483601
l4139: cmn R5, R0
interrupt_386: l4140: bicGEs R9, R0, R5
l4141: mov R8, #52
l4142: strLE R9, [sp, -R8]
l4143: teqCS R11, #1769472
l4144: strPL R15, [sp, #-56]
l4145: strh R7, [sp, #-4]
l4146: b l4150
l4147: add R1, R0, #192
l4148: rscs R1, R10, R2
l4149: b l4151
l4150: b l4148
l4151: rscGT R4, R12, #679477248
l4152: tstLT R3, R12, LSR R14
l4153: bEQ l4155
l4154: subNEs R0, R8, R12
l4155: ands R8, R1, R1
l4156: subGEs R3, R4, R8
l4157: swi #5588204
interrupt_222: l4158: bHI l4164
l4159: add R1, R0, #100
l4160: andLS R5, R6, R9
l4161: eorEQs R0, R11, R6, ROR #11
l4162: orrLEs R7, R6, R14, LSL #23
l4163: b l4165
l4164: b l4160
l4165: teq R3, R6, RRX 
l4166: ldr R9, l4168
l4167: b l4169
l4168: .word 1048484
l4169: swp R2, R11, [R9]
interrupt_44: l4170: orrs R7, R10, R10, RRX 
l4171: ldrEQ R14, [sp, #-12]
l4172: mov R10, #36
l4173: ldr R6, [sp, -R10]
l4174: mov R12, #66
l4175: ldrLTsh R11, [sp, -R12]
l4176: cmpVC R14, #1073741851
l4177: strLEh R8, [sp, #-64]
l4178: mov R14, #20
l4179: str R11, [sp], -R14
l4180: ldmDB R13!, {R0, R3, R5, R8, R11, R12}
l4181: mov R4, #11
l4182: strGEB R5, [sp, -R4]
l4183: ldrLSB R10, [sp, #+47]
l4184: clz R1, R4
l4185: movMIs R1, #1007616
l4186: mov R0, #16
l4187: ldrh R5, [sp, +R0]
l4188: b l4192
l4189: add R1, R0, #77
l4190: mvnCCs R4, R8, ASR #2
interrupt_807: l4191: b l4193
l4192: b l4190
interrupt_92: l4193: strGT R6, [sp, #+0]
l4194: swi #11492153
l4195: ldmDA R13!, {R10, R12}
l4196: mvnVC R10, R7
l4197: andGTs R7, R0, #158
l4198: ldmEQIA R13, {R0, R2, R3, R4, R7, R14}
l4199: ldrGEsb R1, [sp, #+5]
l4200: adcLEs R12, R1, R1, RRX 
l4201: eorPL R1, R4, R4, ROR R3
l4202: stmDA R13!, {R1, R8}
l4203: nop
l4204: rsbs R11, R2, R9, ROR R7
interrupt_357: l4205: mvnHI R4, R4
l4206: ldrh R14, [sp, #+14]
interrupt_175: l4207: ldr R14, l4209
l4208: b l4210
l4209: .word 1048504
interrupt_824: l4210: swpLT R10, R5, [R14]
l4211: ldr R3, l4213
l4212: b l4214
l4213: .word 1048484
l4214: swp R8, R4, [R3]
l4215: ldr R8, l4217
l4216: b l4218
l4217: .word 1048508
l4218: swp R4, R10, [R8]
interrupt_125: l4219: mov R0, #11
l4220: ldrNEsb R0, [sp, -R0]
l4221: cmn R5, R3, ASR #10
l4222: ldr R12, l4224
l4223: b l4225
l4224: .word 1048528
interrupt_195: l4225: swp R7, R9, [R12]
interrupt_929: l4226: bVC l4232
l4227: add R1, R0, #107
l4228: cmp R10, R5
l4229: tstPL R11, R4
l4230: rsc R3, R6, R0, RRX 
l4231: b l4233
l4232: b l4228
l4233: ldr R6, l4235
l4234: b l4236
l4235: .word 1048532
l4236: swpLTb R11, R7, [R6]
l4237: ldrLSsh R11, [sp, #+8]
interrupt_922: l4238: mvnGE R7, R2, ASR #24
l4239: cmn R4, R11, LSR R8
l4240: swi #2232133
l4241: andLTs R12, R2, R1, RRX 
l4242: stmIB R13!, {R2, R3, R5, R6, R9, R11, R14}
l4243: ldrGTsb R2, [sp, #-40]
l4244: strLSB R7, [sp, #-15]
l4245: mov R0, #16
l4246: strB R12, [sp, +R0]
l4247: and R2, R10, R3, RRX 
l4248: stmDB R13!, {R11, R12}
l4249: teqHI R8, R2
l4250: mvnPLs R10, R3, RRX 
l4251: tst R6, R3, ROR #24
l4252: strB R10, [sp, #-15]
l4253: movs R4, R10, LSL #10
interrupt_40: l4254: mov R9, #18
l4255: ldrsb R10, [sp, +R9]
l4256: andPLs R2, R11, R15
interrupt_668: l4257: stmDB R13!, {R2, R5}
l4258: rsb R8, R4, R1
l4259: tstVS R9, #52224
l4260: bLT l4268
l4261: cmp R15, #672
l4262: eors R10, R8, R15
interrupt_473: l4263: cmn R5, R0
interrupt_295: l4264: orrs R12, R7, R6, ROR #17
interrupt_642: l4265: cmp R15, #100
interrupt_640: l4266: adcs R4, R11, R6
interrupt_773: l4267: andLE R1, R14, R7, LSR #15
l4268: tst R6, R12, ROR #22
l4269: strh R4, [sp, #+44]
interrupt_887: l4270: andLEs R12, R10, R8, LSL R11
l4271: adcVC R14, R8, R7, ROR R12
l4272: mov R6, #28
interrupt_82: l4273: ldrGTB R9, [sp, +R6]
l4274: adc R6, R12, R0, ROR #2
interrupt_53: l4275: cmpCS R7, R5
l4276: ldr R7, l4278
l4277: b l4279
interrupt_131: l4278: .word 1048544
interrupt_947: l4279: swpb R9, R4, [R7]
interrupt_411: l4280: ldmDA R13!, {R3, R4, R10}
l4281: eorCS R7, R10, R1
l4282: mov R11, #40
l4283: str R0, [sp, +R11]
l4284: strh R1, [sp, #-2]
l4285: and R14, R6, R7, ASR R5
l4286: cmpVC R14, R3, ASR #6
l4287: cmn R3, R9, ROR #7
l4288: tstHI R10, R9
l4289: swi #3073863
interrupt_183: l4290: cmp R5, R15, ROR #26
l4291: ldr R4, l4293
l4292: b l4294
l4293: .word 1048500
l4294: swpNEb R3, R6, [R4]
l4295: sbcs R10, R9, R7
l4296: mov R1, #50
l4297: ldrLEB R8, [sp, +R1]
interrupt_678: l4298: adc R6, R12, R3, LSL R5
l4299: adds R12, R15, #570425344
l4300: mov R5, #52
l4301: ldrLT R6, [sp, +R5]
l4302: mvns R9, R3
interrupt_991: l4303: mov R8, #62
l4304: ldrGTB R10, [sp, +R8]
l4305: clzEQ R10, R1
l4306: mov R7, #8
interrupt_259: l4307: ldr R11, [sp], +R7
interrupt_858: l4308: bics R5, R8, R10
l4309: ldr R7, l4311
interrupt_17: l4310: b l4312
interrupt_939: l4311: .word 1048544
l4312: swpGEb R14, R1, [R7]
interrupt_475: l4313: andCS R14, R12, #37
interrupt_526: l4314: stmIA R13!, {R15}
l4315: mvnLT R7, R7, ROR R1
l4316: swi #6365775
l4317: cmpLE R3, R5, LSR #22
l4318: rsc R14, R7, R15
l4319: cmnMI R7, R4, ASR R12
l4320: tstHI R9, R2, RRX 
l4321: ldr R10, l4323
l4322: b l4324
l4323: .word 1048548
l4324: swp R3, R1, [R10]
l4325: eorEQs R9, R8, R0, LSR #31
l4326: addCS R1, R14, R10, LSR #3
interrupt_778: l4327: cmpGE R1, R1
interrupt_916: l4328: stmDB R13!, {R13}
l4329: subLT R3, R8, R1, LSL #5
l4330: tstCC R10, #-251658240
l4331: mov R2, #25
interrupt_14: l4332: strB R5, [sp, +R2]
l4333: swi #8025253
interrupt_739: l4334: strGTB R6, [sp, #-4]
l4335: cmp R1, R9, LSR #24
l4336: rscs R12, R2, R5
l4337: b l4342
l4338: add R1, R0, #114
l4339: movVSs R10, R2, LSL R8
l4340: eorGEs R6, R3, R3, LSR R4
l4341: b l4343
interrupt_283: l4342: b l4339
interrupt_25: l4343: b l4345
l4344: bics R3, R11, R8
l4345: sbcCCs R7, R11, R8, RRX 
l4346: rsbHI R9, R15, R3
interrupt_100: l4347: mov R9, #12
l4348: ldrGEsb R12, [sp, +R9]
l4349: subGEs R4, R3, R2, ASR #21
l4350: addGE R6, R3, R1
l4351: addEQs R2, R1, R1, RRX 
l4352: ldr R14, l4354
l4353: b l4355
l4354: .word 1048540
l4355: swpLSb R2, R7, [R14]
l4356: sbcs R11, R2, R5, LSR R14
l4357: subHIs R14, R3, R0
l4358: rsbLSs R9, R5, R0, ASR R5
l4359: ldrsb R7, [sp, #+30]
l4360: mov R3, #20
l4361: str R10, [sp], +R3
l4362: teq R14, R14, RRX 
l4363: tst R9, R4, ASR #13
l4364: rscLTs R8, R6, #134217728
l4365: ldr R2, [sp], #-28
interrupt_557: l4366: cmn R4, R11, LSL R2
l4367: movGEs R5, R2, LSR R5
interrupt_599: l4368: b l4373
l4369: add R1, R0, #246
l4370: subVCs R6, R10, R7, LSL #7
l4371: subGE R7, R8, R1, ASR R9
l4372: b l4374
l4373: b l4370
l4374: nop
l4375: addLE R0, R12, #3801088
l4376: addCC R11, R4, #872448
l4377: swi #9823657
l4378: andGE R3, R0, R2, ROR R10
interrupt_70: l4379: cmp R11, R5
interrupt_68: l4380: tst R10, R6
l4381: b l4382
l4382: tstCC R1, #1879048195
l4383: orrs R9, R5, R5, ROR R10
interrupt_245: l4384: rscs R7, R12, R7, LSL #29
l4385: rsbLT R14, R6, R6
l4386: bicHIs R2, R8, #2352
l4387: eors R9, R12, #3145728
l4388: tst R14, R3
l4389: cmnGT R12, R15
interrupt_94: l4390: b l4393
l4391: orr R3, R4, #-2147483610
l4392: mvnHI R11, #4672
l4393: subs R10, R6, R7, LSL R8
l4394: sbcCSs R4, R4, R3
l4395: ldr R5, l4397
l4396: b l4398
l4397: .word 1048496
l4398: swpLE R2, R7, [R5]
l4399: strh R6, [sp, #+34]
l4400: teqLE R6, #14745600
l4401: ldrsb R3, [sp, #+29]
l4402: adcLEs R7, R6, R3
interrupt_779: l4403: swi #2107505
l4404: mvns R2, R1, ROR R11
l4405: adcPL R9, R8, #6094848
l4406: mvn R1, R5, ASR R9
l4407: subCC R11, R15, R12, ROR #10
l4408: ldr R3, l4410
l4409: b l4411
l4410: .word 1048488
l4411: swpGTb R5, R11, [R3]
interrupt_587: l4412: swi #3820846
l4413: stmIA R13!, {R1, R2, R3, R4, R8, R11, R14, R15}
l4414: adcHI R1, R15, R11, ROR #2
l4415: swi #4479127
l4416: rsbVC R3, R0, #-2063597568
l4417: andHIs R1, R8, R14, ASR #16
l4418: mov R6, R8, LSR R8
l4419: subCSs R2, R12, R1, RRX 
l4420: mov R5, #36
interrupt_837: l4421: strVC R8, [sp, -R5]
l4422: teqHI R6, R10
l4423: eor R8, R0, R14, LSL #23
l4424: subGT R6, R11, R15, RRX 
l4425: tst R12, R0, ASR #0
l4426: orrGT R4, R3, R8, LSL R14
l4427: tst R7, R12, LSR #16
l4428: ldr R3, l4430
l4429: b l4431
l4430: .word 1048532
l4431: swpNEb R7, R2, [R3]
interrupt_993: l4432: subGT R8, R1, R8
interrupt_120: l4433: mvnEQs R12, #222208
l4434: ldr R7, l4436
l4435: b l4437
l4436: .word 1048524
interrupt_199: l4437: swpb R9, R11, [R7]
l4438: ldrB R3, [sp, #-16]
l4439: adcs R1, R14, R0, RRX 
l4440: mvnLSs R4, R4, LSR #9
l4441: rscMI R14, R0, R5, LSL #10
l4442: ldr R3, l4444
l4443: b l4445
l4444: .word 1048488
l4445: swp R1, R0, [R3]
interrupt_152: l4446: mvnVC R8, R0, ROR R2
l4447: sbcVS R2, R7, #-1744830463
l4448: mvnCC R10, R1, ROR R0
l4449: ldrMIB R9, [sp, #-38]
l4450: clz R0, R8
l4451: ldr R5, l4453
l4452: b l4454
l4453: .word 1048524
l4454: swpVC R10, R0, [R5]
l4455: cmpCC R1, R12, RRX 
l4456: ldmDB R13!, {R6, R7, R9, R10, R12}
interrupt_683: l4457: stmCSDB R13, {R1, R2, R6, R11}
l4458: teqHI R10, R1, RRX 
l4459: sbcLTs R6, R9, R4, ASR #15
l4460: ldrLSB R0, [sp, #+50]
l4461: bHI l4468
l4462: add R1, R0, #133
l4463: cmnLT R4, R6, ROR #17
l4464: mvnEQs R8, R11, LSL #0
l4465: orrVCs R7, R14, R14
l4466: movLE R5, R11, RRX 
l4467: b l4469
interrupt_232: l4468: b l4463
interrupt_601: l4469: mov R1, #8
l4470: ldrh R4, [sp, -R1]
l4471: bic R5, R1, #496
l4472: orrCS R3, R14, R12, LSL R3
l4473: stmDA R13!, {R4, R11, R15}
l4474: stmLSDB R13, {R3}
interrupt_455: l4475: strNEh R14, [sp, #+12]
l4476: sbcVS R1, R8, R4, LSL #28
l4477: ldrh R12, [sp, #+42]
l4478: orrMI R10, R14, R15
l4479: teq R8, #2899968
l4480: swi #3692773
l4481: str R12, [sp, #+32]
l4482: ldr R9, l4484
l4483: b l4485
interrupt_720: l4484: .word 1048548
l4485: swp R7, R0, [R9]
l4486: teq R14, R10
l4487: mov R6, #2
l4488: ldrsh R11, [sp, +R6]
l4489: swi #15783839
l4490: mov R11, #13
l4491: ldrB R0, [sp, +R11]
interrupt_679: l4492: rscPLs R5, R14, R14
interrupt_771: l4493: rsbPLs R5, R0, R11, RRX 
interrupt_223: l4494: strh R3, [sp, #+62]
l4495: clzMI R7, R0
interrupt_782: l4496: b l4503
interrupt_698: l4497: add R1, R0, #26
l4498: rsb R11, R2, #-1342177278
l4499: addEQ R3, R5, R6, LSR #18
l4500: eorLE R14, R3, R8, RRX 
l4501: movs R3, R2, RRX 
l4502: b l4504
l4503: b l4498
l4504: orr R8, R11, R8, LSR #23
interrupt_99: l4505: rsb R2, R5, R15, ASR #20
l4506: ldrh R3, [sp, #+42]
l4507: rscEQs R0, R7, R1, ROR #20
l4508: mov R5, #25
l4509: ldrsb R2, [sp, +R5]
l4510: subCCs R6, R8, #-1140850686
l4511: ldr R11, l4513
interrupt_592: l4512: b l4514
l4513: .word 1048508
l4514: swp R8, R12, [R11]
l4515: stmIB R13!, {R7, R12, R14, R15}
interrupt_374: l4516: bics R11, R6, #-1392508928
l4517: cmp R2, R4
l4518: stmIA R13!, {R0, R2, R3, R5, R7, R8, R9, R10, R11, R14, R15}
l4519: addHIs R14, R11, R4
l4520: ldr R6, l4522
interrupt_83: l4521: b l4523
l4522: .word 1048508
l4523: swp R10, R4, [R6]
l4524: adcNEs R0, R4, #3833856
l4525: mov R3, #20
l4526: strLEB R1, [sp, -R3]
interrupt_13: l4527: nop
l4528: mov R11, #4
l4529: ldrLTsh R9, [sp, -R11]
interrupt_486: l4530: bEQ l4535
l4531: add R1, R0, #100
l4532: clzCC R2, R9
l4533: teqHI R1, R1, RRX 
l4534: b l4536
l4535: b l4532
l4536: orr R1, R11, R2
l4537: ldr R10, l4539
interrupt_427: l4538: b l4540
l4539: .word 1048540
l4540: swpMIb R5, R2, [R10]
interrupt_380: l4541: andLTs R2, R10, R3
l4542: swi #10404374
l4543: andLEs R2, R11, #13248
l4544: rsbGEs R1, R6, R6, RRX 
interrupt_181: l4545: tstHI R10, R4, ASR #9
l4546: tstCC R3, R9, LSR R10
interrupt_582: l4547: swi #14287534
l4548: tst R6, R4
l4549: subLS R14, R14, R7
l4550: eorVS R4, R7, #58368
interrupt_951: l4551: mov R1, #8
l4552: ldrVSh R5, [sp, -R1]
interrupt_423: l4553: cmnLS R5, R6
l4554: mov R3, #70
l4555: ldrLEh R2, [sp, -R3]
l4556: swi #11682881
interrupt_350: l4557: swi #14306663
l4558: eorCSs R14, R11, R2, RRX 
l4559: cmnGT R1, R10, ASR R12
l4560: ldrh R9, [sp, #-56]
l4561: rscLT R0, R6, #47185920
l4562: tstMI R1, R8, RRX 
l4563: subPLs R11, R14, #14417920
l4564: swi #13143435
interrupt_875: l4565: orrs R14, R10, R11, ASR #23
interrupt_330: l4566: eorNE R1, R7, R6
interrupt_660: l4567: mov R10, #60
interrupt_206: l4568: ldrVCsh R8, [sp, -R10]
interrupt_483: l4569: bicNEs R1, R6, R4, LSL R12
l4570: b l4577
l4571: add R1, R0, #27
l4572: rsc R6, R12, R10
l4573: eorLE R9, R11, R2
l4574: adc R9, R1, #18176
l4575: ands R2, R8, R10
interrupt_600: l4576: b l4578
l4577: b l4572
l4578: subEQs R14, R14, #206
interrupt_1: l4579: clz R2, R5
interrupt_717: l4580: subGTs R9, R9, R9, RRX 
l4581: nop
l4582: ldr R14, l4584
l4583: b l4585
l4584: .word 1048532
l4585: swpLEb R7, R9, [R14]
interrupt_105: l4586: ldr R12, l4588
l4587: b l4589
l4588: .word 1048524
l4589: swpGT R9, R14, [R12]
l4590: eors R1, R9, R1
l4591: bVC l4598
l4592: sbc R11, R11, R5, ROR #27
l4593: mvnEQs R9, R9, ROR #13
interrupt_998: l4594: cmnMI R15, R11, ROR #21
l4595: addHIs R6, R8, R8, RRX 
interrupt_112: l4596: sbcCC R14, R1, #2539520
l4597: cmpVC R15, #16064
l4598: teq R3, R0
l4599: orr R11, R9, R11, LSR R9
l4600: bicPL R9, R7, R2, ROR R8
l4601: teq R3, #2785280
l4602: rsbs R4, R7, #-1157627904
l4603: b l4611
l4604: add R1, R0, #232
l4605: adds R3, R1, #13369344
l4606: rsbLS R14, R12, R5, LSL #27
l4607: cmn R11, #788
l4608: subLT R7, R1, R12, LSR R9
interrupt_5: l4609: subs R1, R4, #62652416
l4610: b l4612
interrupt_925: l4611: b l4605
l4612: strLEB R5, [sp, #-56]
l4613: ldr R4, l4615
l4614: b l4616
l4615: .word 1048520
l4616: swpLSb R5, R10, [R4]
interrupt_957: l4617: tst R14, R5
l4618: strB R1, [sp, #-46]
l4619: eorHIs R12, R6, R14
l4620: swi #13084124
l4621: ldr R1, l4623
l4622: b l4624
l4623: .word 1048552
l4624: swpEQb R6, R10, [R1]
l4625: ands R4, R0, R6
l4626: mov R8, #48
l4627: ldr R2, [sp], -R8
l4628: cmn R5, R7, RRX 
l4629: ldr R10, l4631
l4630: b l4632
l4631: .word 1048484
interrupt_871: l4632: swp R0, R4, [R10]
l4633: sub R0, R3, #23552
l4634: str R5, [sp], #+8
l4635: movHI R10, R5, RRX 
interrupt_527: l4636: mov R14, #3
l4637: ldrLEsb R1, [sp, +R14]
l4638: stmDB R13!, {R7, R15}
l4639: swi #4516258
l4640: tst R5, R1, RRX 
l4641: adcs R9, R5, R7, LSR #31
l4642: cmpVC R6, #-268435450
l4643: cmp R9, R9
l4644: addEQs R0, R6, R2, RRX 
l4645: swi #3046556
l4646: andHI R3, R14, #208
l4647: str R11, [sp], #+8
l4648: tst R11, R7, RRX 
interrupt_143: l4649: rsc R1, R4, R3, ASR R9
interrupt_52: l4650: ldrVCh R8, [sp, #-12]
l4651: ldmCCIB R13, {R0, R3, R5, R6, R7, R8, R9, R14}
l4652: eor R4, R9, R2, RRX 
l4653: mov R11, #30
l4654: ldrGEsh R4, [sp, +R11]
l4655: cmp R15, R8
l4656: movLTs R3, #2080
l4657: rscs R0, R9, #9024
l4658: ldrh R7, [sp, #+4]
l4659: mov R8, #16
l4660: ldrLEsh R2, [sp, +R8]
l4661: mvnMIs R11, R5, RRX 
l4662: mov R3, #31
l4663: ldrB R9, [sp, -R3]
l4664: cmnEQ R6, R3, ROR #28
l4665: mov R14, #32
l4666: strh R10, [sp, -R14]
interrupt_671: l4667: sub R8, R9, #392
interrupt_598: l4668: tstLT R5, #36096
l4669: mov R6, #8
l4670: ldrHI R4, [sp, +R6]
l4671: teqCC R12, R15, RRX 
interrupt_191: l4672: clzPL R11, R12
interrupt_270: l4673: mvnEQs R1, R5, RRX 
l4674: mvn R2, R0, LSR R6
l4675: rsbGEs R1, R14, R5
l4676: adcs R2, R14, #13056
l4677: movs R3, R10
interrupt_751: l4678: teqHI R2, R9, ASR #5
l4679: subGT R6, R11, R8, RRX 
l4680: strB R3, [sp, #+14]
l4681: rscVSs R0, R8, R5
l4682: ldr R5, l4684
interrupt_867: l4683: b l4685
l4684: .word 1048484
l4685: swp R9, R6, [R5]
l4686: ldrHIsb R10, [sp, #+9]
l4687: orrs R4, R11, R9, ASR R11
l4688: mvnLS R9, R1, ROR #30
l4689: mov R12, #40
l4690: strMI R2, [sp, +R12]
interrupt_27: l4691: add R2, R4, R2
interrupt_813: l4692: eorGT R7, R4, R14
interrupt_692: l4693: ldrsb R2, [sp, #+30]
l4694: nop
l4695: tstHI R10, R9, RRX 
l4696: subGT R3, R2, R12, RRX 
interrupt_392: l4697: str R10, [sp, #-28]
l4698: mov R5, #4
l4699: strGEh R7, [sp, -R5]
l4700: mov R1, #37
l4701: ldrB R8, [sp, +R1]
l4702: movCSs R9, #634880
interrupt_741: l4703: eor R11, R5, #335544320
l4704: cmp R4, R15
l4705: swi #2309816
l4706: bCS l4713
l4707: add R1, R0, #59
l4708: cmpLT R14, #-2147483596
l4709: orr R5, R12, R14, ASR #27
l4710: subEQ R1, R12, R2, LSR #10
l4711: subLSs R7, R11, #116
interrupt_504: l4712: b l4714
l4713: b l4708
interrupt_670: l4714: orrGTs R12, R5, R4
l4715: teqCC R5, #193986560
l4716: swi #10197066
l4717: adcHIs R12, R0, #6160384
l4718: ldrHIsb R6, [sp, #-15]
l4719: subs R6, R1, #5632
l4720: sub R9, R1, R1, LSL #12
interrupt_618: l4721: clzMI R8, R2
l4722: sub R3, R10, R3, LSL R1
l4723: clz R9, R4
interrupt_240: l4724: mov R4, #23
l4725: ldrB R4, [sp, -R4]
l4726: mov R2, #0
l4727: ldrsh R12, [sp, +R2]
l4728: ldmDB R13, {R1, R6, R11, R12}
interrupt_697: l4729: ldr R14, l4731
l4730: b l4732
l4731: .word 1048528
l4732: swp R9, R9, [R14]
l4733: rsbVS R8, R3, R0
l4734: movGT R9, R1, LSR R14
l4735: ldrLSsb R1, [sp, #-4]
l4736: swi #80871
l4737: subGE R11, R3, R9, ROR R8
interrupt_65: l4738: ldr R0, l4740
l4739: b l4741
l4740: .word 1048484
l4741: swpCSb R9, R3, [R0]
interrupt_579: l4742: cmpNE R9, R4
l4743: sbcPL R5, R15, #973078528
l4744: tstCS R11, R3, RRX 
l4745: tstCS R11, R6
interrupt_565: l4746: mov R8, #28
interrupt_160: l4747: ldrVCsh R14, [sp, +R8]
l4748: swi #12435646
l4749: ldrLE R6, [sp, #+24]
interrupt_162: l4750: orrs R12, R1, R15, ASR #21
l4751: rscGEs R0, R12, R11
interrupt_914: l4752: ands R0, R4, R12, ASR #2
l4753: mov R6, #12
l4754: ldrsh R1, [sp, +R6]
l4755: cmnHI R2, R0, ROR R8
l4756: andLE R10, R15, R1, ROR #25
interrupt_360: l4757: cmnGT R3, R8, RRX 
l4758: andNEs R2, R14, R14, LSL #27
l4759: strGTB R4, [sp, #+39]
l4760: ldr R5, l4762
l4761: b l4763
l4762: .word 1048504
interrupt_257: l4763: swpb R9, R10, [R5]
l4764: sbcLE R7, R5, R14, ROR #8
l4765: clzNE R7, R12
interrupt_233: l4766: adcs R0, R11, R6, RRX 
l4767: mov R7, #20
l4768: ldr R4, [sp, +R7]!
interrupt_664: l4769: cmpGT R14, #409600
l4770: bic R0, R0, R4
interrupt_476: l4771: strNEh R10, [sp, #+4]
l4772: str R12, [sp, #-52]!
l4773: ldmIB R13!, {R0, R1, R2, R5, R6, R9, R10, R11, R14}
interrupt_135: l4774: mov R6, #12
l4775: str R15, [sp], -R6
l4776: mvn R3, R14, RRX 
interrupt_932: l4777: ldmDB R13!, {R3, R11, R14}
interrupt_0: l4778: strNE R1, [sp, #+28]
interrupt_400: l4779: strLSB R12, [sp, #+23]
l4780: swi #4948565
l4781: andGTs R9, R5, #23808
interrupt_923: l4782: adds R0, R6, R7, ASR R9
l4783: clz R14, R7
l4784: orr R1, R7, R0
l4785: ldrCSsb R11, [sp, #+54]
l4786: teqEQ R9, R6
l4787: sbcGTs R14, R2, R7, LSR R6
l4788: b l4793
interrupt_161: l4789: add R1, R0, #137
l4790: movEQs R1, R4, ROR R0
l4791: subCSs R1, R1, R11, RRX 
l4792: b l4794
l4793: b l4790
l4794: cmnHI R1, R12, ROR #7
l4795: ldrB R4, [sp, #+31]
l4796: subs R8, R12, R3, ASR R3
l4797: mov R9, #8
interrupt_841: l4798: ldrh R6, [sp, -R9]
l4799: bHI l4800
l4800: adcGT R4, R7, R8, LSR #7
l4801: mov R11, #29
l4802: ldrGEsb R3, [sp, +R11]
interrupt_102: l4803: tst R14, #15616
l4804: teqEQ R3, R4
l4805: adds R8, R3, R4
l4806: rsbLSs R5, R12, #105906176
l4807: rsbGE R12, R11, R12
l4808: ldr R12, l4810
l4809: b l4811
l4810: .word 1048508
l4811: swpb R14, R2, [R12]
l4812: cmp R6, #651264
l4813: ldr R3, l4815
l4814: b l4816
interrupt_371: l4815: .word 1048520
l4816: swpEQb R6, R4, [R3]
l4817: andPL R4, R10, R4, LSL R4
l4818: teq R5, R9, ASR R8
l4819: ldrMIh R8, [sp, #-10]
l4820: mov R1, #53
l4821: strVCB R9, [sp, +R1]
l4822: orr R6, R1, R14
l4823: subCS R0, R12, R4, RRX 
l4824: eors R9, R14, #15073280
l4825: ldrsb R5, [sp, #+46]
l4826: bics R0, R11, R4
l4827: tst R5, R2
l4828: clzVS R12, R12
l4829: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R8, R10, R12}
l4830: clz R14, R14
l4831: cmp R4, R2, RRX 
l4832: strh R10, [sp, #+6]
l4833: mov R4, #2
l4834: ldrVSh R12, [sp, +R4]
l4835: bVC l4839
l4836: add R1, R0, #5
l4837: subs R4, R14, #8060928
l4838: b l4840
interrupt_167: l4839: b l4837
l4840: mov R2, #20
l4841: ldr R1, [sp, +R2]!
interrupt_552: l4842: ldr R4, l4844
l4843: b l4845
l4844: .word 1048488
interrupt_29: l4845: swpGTb R1, R14, [R4]
interrupt_468: l4846: teqGE R10, R3, ASR R2
l4847: ldr R9, [sp], #-60
l4848: ldr R14, l4850
l4849: b l4851
l4850: .word 1048516
l4851: swp R5, R9, [R14]
l4852: subGE R4, R8, R10
l4853: ldrLSh R3, [sp, #+48]
l4854: cmpMI R0, R1, ROR #29
l4855: bCC l4864
interrupt_949: l4856: adcLSs R3, R2, #-268435450
l4857: subCSs R9, R5, R5, ROR R12
l4858: orrHIs R9, R6, R5
interrupt_442: l4859: subs R1, R3, #-1191182336
l4860: and R9, R8, #-402653183
l4861: adcs R12, R12, R0, RRX 
l4862: movPLs R8, #839680
l4863: orr R1, R7, R9, ASR R0
l4864: orr R2, R3, R10, RRX 
l4865: ldrVSsb R4, [sp, #-6]
interrupt_165: l4866: subHI R5, R6, #1504
l4867: ldmGEIB R13, {R0, R1, R4, R5}
l4868: teqVS R4, #1536
l4869: swi #8126290
l4870: adc R5, R15, R8, LSL #12
l4871: mov R3, #64
l4872: ldrCS R14, [sp, +R3]
l4873: swi #8434583
l4874: bMI l4880
l4875: add R1, R0, #2
l4876: teqVC R7, R3, ASR #9
l4877: mvns R7, R3
l4878: subs R2, R11, R5, LSR #16
l4879: b l4881
l4880: b l4876
l4881: bic R4, R7, R12
l4882: ldr R8, l4884
l4883: b l4885
l4884: .word 1048488
l4885: swpPLb R4, R4, [R8]
l4886: stmIB R13!, {R0, R1, R3, R4, R8, R9, R10}
l4887: ldr R2, l4889
l4888: b l4890
l4889: .word 1048520
interrupt_294: l4890: swp R6, R1, [R2]
l4891: b l4899
l4892: add R1, R0, #5
l4893: addVCs R12, R10, R4
l4894: teqLS R11, R7
interrupt_367: l4895: clzLS R11, R11
l4896: andLT R11, R7, #-2147483615
l4897: clz R8, R5
l4898: b l4900
l4899: b l4893
l4900: mvns R1, R6, ROR #19
l4901: strh R14, [sp, #-16]
l4902: mov R14, #32
l4903: ldrHIsh R0, [sp, +R14]
interrupt_192: l4904: stmIA R13, {R6, R7}
l4905: bGT l4913
interrupt_740: l4906: orrPL R7, R9, R4, ROR #19
l4907: subEQs R8, R11, R14, LSL #8
l4908: sbcCCs R12, R7, R9, ASR #27
l4909: subLE R10, R6, R9
l4910: sbcs R10, R3, R7, ROR #29
l4911: addMI R3, R7, #742391808
interrupt_572: l4912: subLTs R4, R11, R5, ASR #15
l4913: subs R6, R8, R3, LSR #24
interrupt_495: l4914: orrGTs R12, R10, #13376
interrupt_910: l4915: ldmLTIB R13, {R1, R2, R6}
l4916: mov R4, #32
l4917: ldrVCB R10, [sp, -R4]
l4918: ldr R7, l4920
l4919: b l4921
l4920: .word 1048528
l4921: swpLS R14, R10, [R7]
l4922: swi #12796368
l4923: adcs R14, R7, R11, ASR R12
l4924: stmDB R13!, {R0, R4, R8, R9, R10}
l4925: rsb R0, R14, R15, ASR #0
interrupt_216: l4926: mov R6, #46
l4927: strMIh R7, [sp, +R6]
l4928: addCCs R2, R1, R9
l4929: movs R3, #9371648
interrupt_644: l4930: bLS l4935
l4931: addVC R10, R14, #236978176
interrupt_391: l4932: sbc R4, R6, R9, RRX 
l4933: bicVSs R7, R2, R8
l4934: adcVS R8, R1, R8, ASR R8
l4935: teqVC R10, R2
l4936: andEQ R9, R9, #1425408
l4937: cmnVS R2, #39059456
interrupt_321: l4938: addPLs R1, R6, R15, RRX 
l4939: movVCs R0, R5
interrupt_414: l4940: sbc R8, R5, R7, ASR #13
l4941: ldr R9, l4943
l4942: b l4944
l4943: .word 1048504
l4944: swpHI R3, R1, [R9]
l4945: bLS l4953
l4946: bicVC R6, R6, R9
interrupt_971: l4947: adcs R3, R9, #-2147483618
l4948: orrCCs R7, R4, #851968
l4949: clzLS R9, R7
l4950: eorHI R1, R10, R12, RRX 
l4951: orrVCs R7, R0, R1, LSR R12
l4952: subPL R12, R14, R11
l4953: subGEs R4, R3, R3
l4954: strLSB R12, [sp, #+4]
l4955: sbc R5, R7, R12, LSL R5
l4956: mov R0, #33
l4957: strB R14, [sp, +R0]
l4958: b l4963
l4959: add R1, R0, #232
l4960: ands R10, R8, R12, LSR R5
l4961: ands R3, R4, #684032
interrupt_225: l4962: b l4964
l4963: b l4960
l4964: orrCCs R1, R5, #232
l4965: mov R14, #16
interrupt_985: l4966: strCS R1, [sp, +R14]
l4967: ldr R11, l4969
l4968: b l4970
l4969: .word 1048492
l4970: swpb R8, R10, [R11]
l4971: sub R10, R11, #25952256
l4972: mov R12, #4
l4973: ldrCSsh R2, [sp, +R12]
l4974: ldrB R7, [sp, #-10]
l4975: ldr R2, l4977
l4976: b l4978
l4977: .word 1048552
l4978: swpVCb R9, R9, [R2]
l4979: subLT R14, R8, R12
l4980: mov R10, #8
interrupt_432: l4981: ldrVCh R6, [sp, -R10]
l4982: bicVC R14, R2, #-2147483634
interrupt_274: l4983: ldmVSDB R13, {R5}
interrupt_532: l4984: cmpEQ R3, R5, RRX 
l4985: rsbs R4, R7, R10
l4986: rsc R0, R4, R0, ROR R9
interrupt_445: l4987: mov R11, #22
l4988: ldrh R5, [sp, +R11]
l4989: mov R5, #32
l4990: ldr R2, [sp], +R5
l4991: ldmIB R13, {R3, R6, R8, R9, R10, R14}
l4992: andMIs R11, R15, R3
l4993: ands R8, R1, #7488
l4994: rsbVC R8, R1, R0
l4995: mov R8, R7
l4996: mvns R2, R1
l4997: nop
l4998: ldr R2, l5000
l4999: b l5001
interrupt_358: l5000: .word 1048528
l5001: swpNE R1, R3, [R2]
interrupt_323: end: b end

