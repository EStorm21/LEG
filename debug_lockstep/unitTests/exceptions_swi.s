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
reg_0_sys_val: .word 1656007341
reg_1_sys: ldr R1, reg_1_sys_val
b reg_2_sys
reg_1_sys_val: .word 2988453420
reg_2_sys: ldr R2, reg_2_sys_val
b reg_3_sys
reg_2_sys_val: .word 3484541340
reg_3_sys: ldr R3, reg_3_sys_val
b reg_4_sys
reg_3_sys_val: .word 2422657860
reg_4_sys: ldr R4, reg_4_sys_val
b reg_5_sys
reg_4_sys_val: .word 1415493187
reg_5_sys: ldr R5, reg_5_sys_val
b reg_6_sys
reg_5_sys_val: .word 3602080481
reg_6_sys: ldr R6, reg_6_sys_val
b reg_7_sys
reg_6_sys_val: .word 703794717
reg_7_sys: ldr R7, reg_7_sys_val
b reg_8_sys
reg_7_sys_val: .word 887993586
reg_8_sys: ldr R8, reg_8_sys_val
b reg_9_sys
reg_8_sys_val: .word 766242466
reg_9_sys: ldr R9, reg_9_sys_val
b reg_10_sys
reg_9_sys_val: .word 597088434
reg_10_sys: ldr R10, reg_10_sys_val
b reg_11_sys
reg_10_sys_val: .word 1460808213
reg_11_sys: ldr R11, reg_11_sys_val
b reg_12_sys
reg_11_sys_val: .word 2310648815
reg_12_sys: ldr R12, reg_12_sys_val
b reg_13_sys
reg_12_sys_val: .word 3745857804
reg_13_sys: ldr R13, reg_13_sys_val
b reg_14_sys
reg_13_sys_val: .word 0x0ffff0
reg_14_sys: ldr R14, reg_14_sys_val
b reg_14_sys_end
reg_14_sys_val: .word 3514358319
reg_14_sys_end: nop
# Switching to mode fiq
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0xd1
MSR cpsr, r0
reg_8_fiq: ldr R8, reg_8_fiq_val
b reg_9_fiq
reg_8_fiq_val: .word 363721622
reg_9_fiq: ldr R9, reg_9_fiq_val
b reg_10_fiq
reg_9_fiq_val: .word 3515201468
reg_10_fiq: ldr R10, reg_10_fiq_val
b reg_11_fiq
reg_10_fiq_val: .word 864777429
reg_11_fiq: ldr R11, reg_11_fiq_val
b reg_12_fiq
reg_11_fiq_val: .word 2635801950
reg_12_fiq: ldr R12, reg_12_fiq_val
b reg_13_fiq
reg_12_fiq_val: .word 229403864
reg_13_fiq: ldr R13, reg_13_fiq_val
b reg_14_fiq
reg_13_fiq_val: .word 0x1ffff0
reg_14_fiq: ldr R14, reg_14_fiq_val
b reg_14_fiq_end
reg_14_fiq_val: .word 304711456
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
reg_14_irq_val: .word 2371259789
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
reg_14_undef_val: .word 301827245
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
reg_14_abort_val: .word 3726009232
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
reg_14_svc_val: .word 3905682195
reg_14_svc_end: nop

# INITIALIZING STACK
# Switching to mode sys
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0x1f
MSR cpsr, r0
ldr R1, stack_0_val
b stack_0
stack_0_val: .word 3065388374
stack_0: str R1, [sp, #0]
ldr R1, stack_1_val
b stack_1
stack_1_val: .word 319079296
stack_1: str R1, [sp, #-4]
ldr R1, stack_2_val
b stack_2
stack_2_val: .word 1261968353
stack_2: str R1, [sp, #-8]
ldr R1, stack_3_val
b stack_3
stack_3_val: .word 1376107476
stack_3: str R1, [sp, #-12]
ldr R1, stack_4_val
b stack_4
stack_4_val: .word 3353657010
stack_4: str R1, [sp, #-16]
ldr R1, stack_5_val
b stack_5
stack_5_val: .word 4152327733
stack_5: str R1, [sp, #-20]
ldr R1, stack_6_val
b stack_6
stack_6_val: .word 1105938679
stack_6: str R1, [sp, #-24]
ldr R1, stack_7_val
b stack_7
stack_7_val: .word 924276846
stack_7: str R1, [sp, #-28]
ldr R1, stack_8_val
b stack_8
stack_8_val: .word 2788441994
stack_8: str R1, [sp, #-32]
ldr R1, stack_9_val
b stack_9
stack_9_val: .word 2777803448
stack_9: str R1, [sp, #-36]
ldr R1, stack_10_val
b stack_10
stack_10_val: .word 546740889
stack_10: str R1, [sp, #-40]
ldr R1, stack_11_val
b stack_11
stack_11_val: .word 1866266370
stack_11: str R1, [sp, #-44]
ldr R1, stack_12_val
b stack_12
stack_12_val: .word 1792276492
stack_12: str R1, [sp, #-48]
ldr R1, stack_13_val
b stack_13
stack_13_val: .word 2654807752
stack_13: str R1, [sp, #-52]
ldr R1, stack_14_val
b stack_14
stack_14_val: .word 2463205066
stack_14: str R1, [sp, #-56]
ldr R1, stack_15_val
b stack_15
stack_15_val: .word 3235293507
stack_15: str R1, [sp, #-60]
ldr R1, stack_16_val
b stack_16
stack_16_val: .word 3381107148
stack_16: str R1, [sp, #-64]
ldr R1, stack_17_val
b stack_17
stack_17_val: .word 212439644
stack_17: str R1, [sp, #-68]
ldr R1, stack_18_val
b stack_18
stack_18_val: .word 2754301058
stack_18: str R1, [sp, #-72]
ldr R1, stack_19_val
b stack_19
stack_19_val: .word 2552233089
stack_19: str R1, [sp, #-76]
ldr R1, stack_20_val
b stack_20
stack_20_val: .word 1129138828
stack_20: str R1, [sp, #-80]


# Switching to mode usr
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0x10
MSR cpsr, r0

# MAIN PROGRAM

l1: ldr R3, l3
l2: b l4
interrupt_630: l3: .word 1048504
l4: swpVC R10, R0, [R3]
l5: rsb R8, R4, R2
l6: adcs R11, R9, R7
interrupt_952: l7: ldr R4, l9
l8: b l10
l9: .word 1048504
l10: swp R12, R5, [R4]
l11: teqCS R1, R1, LSR R5
l12: ldr R2, l14
l13: b l15
l14: .word 1048508
l15: swpLT R0, R9, [R2]
l16: b l22
l17: bicVSs R6, R2, R3, ASR R14
l18: rscGTs R0, R11, R9
l19: cmnGT R14, #1073741844
l20: rsbHIs R5, R12, R7, ASR R11
l21: bics R11, R2, R3, LSL R1
interrupt_734: l22: eorCC R3, R3, #84
interrupt_502: l23: tstVS R3, R3, RRX 
l24: add R0, R4, #156237824
l25: bLT l34
l26: add R1, R0, #37
interrupt_72: l27: bicEQs R6, R8, R7, LSL #12
interrupt_367: l28: eorNEs R7, R5, R7, LSL R0
l29: teqVS R6, R8, LSL R8
interrupt_176: l30: rsbCS R10, R14, R7
l31: rscEQs R4, R15, R4, RRX 
l32: eors R3, R9, #196
interrupt_265: l33: b l35
l34: b l27
l35: rscNE R3, R1, R14
interrupt_142: l36: cmpMI R0, R0, LSL R7
l37: swi #6332009
l38: ldmDB R13!, {R0, R1, R2, R8, R11, R14}
l39: eorMIs R14, R9, #10485760
l40: rscGTs R7, R4, R7, ASR #4
l41: mov R1, #15
interrupt_983: l42: strPLB R4, [sp, -R1]
l43: mov R11, #16
l44: ldr R10, [sp, -R11]!
l45: tst R14, R3, ASR #31
l46: ldrsh R6, [sp, #+28]
l47: rsbGE R4, R0, R2, RRX 
l48: sbc R14, R5, #11776
l49: cmnEQ R14, R0
l50: cmn R0, R14, LSR #17
l51: rscs R10, R7, R12
l52: mov R11, #10
l53: ldrLEB R12, [sp, +R11]
l54: ldrHIsb R14, [sp, #+34]
l55: ldr R5, l57
interrupt_906: l56: b l58
interrupt_581: l57: .word 1048524
l58: swpEQ R1, R0, [R5]
l59: eors R7, R14, R6, ASR #2
l60: ldr R6, l62
l61: b l63
l62: .word 1048496
l63: swpEQb R4, R8, [R6]
l64: adcEQs R11, R5, R11, LSL R7
l65: andGTs R8, R12, R0, LSL #14
interrupt_487: l66: ldmCCIA R13, {R1, R4, R9}
l67: cmn R10, R0
l68: cmp R10, R3
l69: cmn R14, R7, LSL R9
l70: tstLS R15, #1124073472
l71: movCC R4, #158
l72: ldr R5, l74
interrupt_837: l73: b l75
l74: .word 1048504
l75: swpMI R4, R7, [R5]
interrupt_174: l76: ldrVSh R5, [sp, #-10]
l77: strGTB R9, [sp, #-8]
l78: subCSs R1, R3, R11, ASR R12
interrupt_189: l79: rsbMIs R14, R1, R0, ROR R7
interrupt_579: l80: ldmDB R13!, {R0, R2, R10, R11, R14}
l81: rscs R11, R8, R2
l82: clzCC R8, R1
l83: and R5, R9, R4, RRX 
l84: rsb R5, R12, R0, ROR #22
l85: mov R4, #12
l86: ldrh R5, [sp, -R4]
interrupt_477: l87: swi #10741207
l88: mov R4, #13
l89: ldrLSB R9, [sp, +R4]
l90: ldrsh R10, [sp, #+50]
l91: mov R4, #21
l92: ldrGEsb R3, [sp, +R4]
l93: mvn R11, R10, ASR #26
l94: strPLh R1, [sp, #+46]
l95: bicLT R4, R7, R0, ASR #30
l96: ldr R9, l98
interrupt_707: l97: b l99
l98: .word 1048548
l99: swpEQb R5, R0, [R9]
l100: mov R5, #16
l101: strLT R10, [sp, +R5]
l102: mov R4, #14
l103: ldrsb R10, [sp, -R4]
l104: mov R8, #8
interrupt_424: l105: ldrh R7, [sp, +R8]
l106: bicNEs R8, R15, #3328
l107: tst R9, R12, ASR R6
l108: nop
l109: rscLT R12, R0, #143
l110: cmpLT R2, #1802240
l111: and R2, R4, R15
l112: tstGE R12, R4
l113: cmpVC R3, R14
l114: sbcLE R7, R4, #1811939331
l115: mov R12, #13
l116: ldrsb R4, [sp, +R12]
l117: mov R10, #12
l118: ldrEQsh R12, [sp, +R10]
interrupt_713: l119: clzLE R7, R10
l120: ldr R9, l122
interrupt_995: l121: b l123
l122: .word 1048484
l123: swpHI R3, R1, [R9]
l124: clzLT R6, R3
l125: stmVSIB R13, {R8, R11, R13, R14}
l126: clzLT R11, R5
l127: cmn R12, R2, LSL R7
l128: mov R6, #12
interrupt_534: l129: str R8, [sp, +R6]!
interrupt_381: l130: ldrVSsh R11, [sp, #+26]
l131: strh R11, [sp, #+10]
l132: ldrh R2, [sp, #-18]
interrupt_92: l133: subs R10, R9, R9, RRX 
l134: tstHI R5, R2, ASR #6
l135: sbcs R11, R11, R14, ASR #18
interrupt_154: l136: ldrsb R9, [sp, #+9]
l137: eorPL R4, R14, R7, ROR R4
l138: mov R10, #38
l139: ldrsh R3, [sp, +R10]
l140: mov R2, #32
l141: str R8, [sp], +R2
l142: subEQ R14, R11, R0, RRX 
l143: ldrsh R12, [sp, #+10]
l144: bHI l150
l145: add R1, R0, #131
interrupt_401: l146: movs R3, #1342177290
l147: addEQ R0, R3, #5376
interrupt_740: l148: eors R4, R10, R3, LSR R9
interrupt_394: l149: b l151
l150: b l146
interrupt_114: l151: mov R4, R15, ASR #2
l152: cmnNE R12, R14, LSL R3
l153: eors R3, R8, #1245184
l154: movNEs R12, R10, LSL R2
l155: subs R11, R5, R1, ROR R14
l156: ldr R12, [sp, #-28]
l157: cmn R5, #384
interrupt_739: l158: adc R8, R0, R6, RRX 
l159: sub R12, R8, R3, LSL R9
l160: eor R0, R6, R1, ASR #14
l161: mov R1, #20
interrupt_231: l162: ldrLSh R1, [sp, -R1]
l163: ldr R6, l165
l164: b l166
l165: .word 1048508
l166: swpb R0, R9, [R6]
l167: bLE l174
l168: and R1, R8, R1, LSR #18
interrupt_520: l169: rsc R6, R3, R11, LSL #2
l170: cmn R8, R7, LSR R0
l171: eorVCs R2, R5, #261120
l172: teqPL R11, R7, ROR #27
l173: sbcEQ R4, R9, #1610612748
interrupt_765: l174: tstGT R14, R6
l175: clz R14, R3
l176: cmn R0, R1
l177: subEQs R12, R6, R0, ROR R3
interrupt_393: l178: addMIs R0, R0, R0, ASR #19
interrupt_853: l179: eorVSs R4, R8, R14, LSL R1
l180: sbcs R7, R2, R6, ROR #23
l181: clzLT R7, R2
interrupt_24: l182: mov R3, #33
l183: strCSB R8, [sp, -R3]
l184: ldrMIsh R4, [sp, #-54]
l185: swi #8482151
l186: cmnCC R4, R2, LSL R12
l187: mov R6, #64
interrupt_149: l188: strh R4, [sp, -R6]
l189: add R6, R10, R0, ASR #9
l190: teq R8, R14, RRX 
l191: sbcLSs R14, R14, #46137344
l192: cmnLE R15, R7
l193: subVSs R1, R7, R14
interrupt_546: l194: ldrNEsb R0, [sp, #-53]
interrupt_418: l195: ldr R6, [sp, #+0]!
l196: ldr R10, l198
l197: b l199
l198: .word 1048516
interrupt_121: l199: swpb R12, R1, [R10]
l200: ldmDB R13!, {R1, R2, R4, R5, R6, R7, R8, R9, R12, R14}
l201: strh R10, [sp, #+44]
l202: rsbMIs R7, R2, #114688
l203: clzVS R11, R0
interrupt_691: l204: ldmPLIB R13, {R10}
interrupt_168: l205: bicVCs R8, R0, R1, ASR #5
l206: bNE l207
l207: rsbs R11, R11, #-1073741817
l208: bicEQs R6, R7, #1073741857
interrupt_988: l209: stmIA R13!, {R2, R5, R6, R9, R11, R14}
l210: andMIs R2, R10, R3, ASR R6
interrupt_440: l211: swi #7073839
l212: orrLS R7, R6, R6, LSL R2
l213: clzMI R5, R11
l214: mov R2, #46
l215: ldrsb R3, [sp, -R2]
l216: bicVC R9, R14, R5
l217: ldmGEIB R13, {R3, R9, R12}
l218: adds R1, R0, #-469762047
l219: movMIs R3, R3, ASR #13
l220: b l221
l221: cmp R3, R12, LSL R14
l222: ldr R4, l224
l223: b l225
l224: .word 1048552
l225: swpCCb R3, R1, [R4]
l226: clzGE R5, R12
l227: eorCS R10, R10, R6, RRX 
l228: swi #11110917
l229: subs R8, R3, #-1342177270
interrupt_771: l230: ldr R9, l232
l231: b l233
l232: .word 1048552
l233: swpLTb R10, R3, [R9]
interrupt_410: l234: ldrCSsh R1, [sp, #-30]
interrupt_86: l235: and R1, R10, R12, ASR R3
l236: addGEs R10, R1, R5, LSL #20
l237: ldrsh R8, [sp, #+26]
l238: ldr R4, [sp], #-4
l239: ldr R10, [sp, #+4]!
l240: bCC l246
l241: add R1, R0, #142
interrupt_267: l242: bics R9, R2, R10, RRX 
interrupt_310: l243: and R5, R8, R2, LSL #6
interrupt_283: l244: rscGT R6, R5, R14
l245: b l247
l246: b l242
interrupt_872: l247: bic R14, R9, R12
l248: bGT l255
l249: add R1, R0, #19
l250: andCSs R4, R0, #2688
l251: mvnLS R3, R0
l252: movs R1, #192
l253: cmnGT R0, R1
l254: b l256
l255: b l250
l256: strh R12, [sp, #-38]
interrupt_473: l257: stmDA R13!, {R4, R7, R8, R14, R15}
l258: swi #16549972
l259: bLT l266
l260: add R1, R0, #140
l261: mvn R8, R4
l262: subPLs R11, R8, #11730944
l263: orrVSs R8, R4, R12, LSR R2
l264: rsbNE R0, R9, R11
l265: b l267
interrupt_631: l266: b l261
l267: subs R7, R2, #172032
l268: eorHI R7, R14, #5177344
interrupt_841: l269: addLT R0, R14, R5, LSR #22
interrupt_809: l270: stmDA R13!, {R13}
l271: swi #14105557
l272: ldmIB R13!, {R2, R6}
l273: ldrMIh R7, [sp, #+14]
l274: rscNE R5, R8, R7, RRX 
l275: ldmIA R13!, {R2, R4, R6, R9}
l276: bLS l285
interrupt_974: l277: subs R12, R11, R12, ASR R3
l278: teqPL R0, R15, ASR #8
l279: sbcHIs R12, R11, R5, LSR #3
l280: subs R5, R9, R10, LSL #20
l281: add R14, R9, R11
interrupt_461: l282: eors R8, R9, R6
l283: eors R4, R8, R14, LSL #17
l284: eor R14, R1, R7, ASR R0
l285: teq R4, #520
l286: mov R6, #21
l287: ldrsb R2, [sp, +R6]
l288: add R14, R8, R14, RRX 
l289: bGT l293
l290: sbcGT R3, R2, #48128
l291: cmpCS R3, R11, RRX 
interrupt_554: l292: clz R6, R3
interrupt_968: l293: eorLSs R12, R14, R4, ROR R3
l294: mov R7, #7
l295: ldrsb R3, [sp, -R7]
l296: mov R8, #26
l297: ldrh R5, [sp, -R8]
l298: cmn R9, R4, ROR #30
l299: cmp R1, #3211264
l300: swi #10400420
l301: subs R4, R8, R0, RRX 
interrupt_828: l302: bicLSs R10, R11, R15, ROR #17
l303: mov R10, #34
interrupt_235: l304: strB R1, [sp, -R10]
l305: ldmDA R13!, {R2, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l306: mvnGEs R6, R1
l307: swi #9445361
l308: nop
interrupt_320: l309: clzHI R6, R7
l310: sbcs R11, R4, R8
interrupt_5: l311: subMI R1, R15, R14, ROR #26
l312: adcs R10, R7, R7, LSR R2
l313: rscCCs R3, R2, R8, LSL #15
l314: sbcEQs R7, R0, R10
l315: rscLSs R8, R11, #7360
l316: clzHI R14, R10
l317: ldr R12, [sp, #+60]!
l318: mov R10, #28
interrupt_626: l319: ldrsb R1, [sp, -R10]
interrupt_810: l320: orrLT R0, R11, R14, LSL R8
l321: nop
l322: mov R3, #53
l323: ldrVSsb R5, [sp, -R3]
l324: ldmDA R13!, {R0, R1, R2, R3, R4, R6, R8, R9, R10, R11, R12, R14}
interrupt_483: l325: mov R11, #50
l326: ldrB R3, [sp, +R11]
interrupt_247: l327: ldr R11, [sp], #+8
l328: stmLTDA R13, {R10}
l329: ldr R1, l331
l330: b l332
interrupt_537: l331: .word 1048532
interrupt_286: l332: swpLSb R9, R8, [R1]
l333: strh R11, [sp, #+0]
l334: ldmIB R13!, {R2, R3, R4, R5, R6, R8, R9, R10, R12, R14}
l335: andNE R4, R0, R1
l336: cmnGT R6, #835584
l337: stmIB R13!, {R6}
interrupt_720: l338: nop
l339: adc R6, R12, #79872
l340: rscLE R4, R8, R5, ASR R11
l341: rscPL R12, R1, R4
interrupt_294: l342: strLS R3, [sp, #-68]
l343: bicMIs R2, R7, R11
l344: ldr R8, [sp], #-44
interrupt_414: l345: swi #13809514
l346: bVC l356
l347: eorVCs R7, R10, #28416
interrupt_129: l348: eorVSs R7, R11, R7
l349: subGE R1, R15, #553648128
l350: bicCSs R10, R3, R2, RRX 
l351: mvnCS R6, R11, LSR R5
l352: rscs R12, R9, R1
l353: sbcEQ R11, R12, #188416
l354: cmpGT R11, R14, LSR #7
l355: adcPL R5, R12, R7
l356: tstPL R11, R5, ASR R3
l357: mov R14, #36
l358: str R6, [sp, +R14]
interrupt_939: l359: b l364
l360: cmp R7, R8, RRX 
l361: subGE R4, R11, R7
l362: adcVCs R1, R14, R10, ROR R8
l363: sbc R9, R7, R9, LSR R6
interrupt_676: l364: mvns R1, R6
l365: ldr R9, l367
l366: b l368
l367: .word 1048480
l368: swp R4, R2, [R9]
l369: ldrHIh R2, [sp, #+16]
l370: rsc R11, R7, R14, ASR R5
interrupt_839: l371: swi #7804667
l372: bics R2, R15, R11, RRX 
l373: ldmIB R13, {R1, R2, R3, R4, R5, R6, R7, R10, R11, R14}
l374: cmnLE R5, #39424
l375: tstLS R14, R12, LSL R9
l376: mov R6, R14, LSR R14
l377: tstLT R9, #206
l378: mvnGEs R11, #1677721602
l379: swi #4807786
l380: mvnGEs R5, R0, ROR #20
l381: ldrB R5, [sp, #-4]
interrupt_863: l382: tstNE R11, R15, RRX 
interrupt_687: l383: ldr R12, l385
interrupt_36: l384: b l386
l385: .word 1048536
l386: swpNE R3, R0, [R12]
l387: adcNE R5, R10, R7
l388: ldrMIsh R1, [sp, #-22]
l389: orrLE R10, R4, R8, LSL R2
l390: eorLSs R2, R6, #-1275068415
interrupt_32: l391: subCC R3, R1, R12
interrupt_795: l392: bLS l394
l393: addCC R11, R11, #4587520
l394: rsb R0, R3, #721420288
interrupt_33: l395: mov R8, #24
l396: ldrEQsh R7, [sp, -R8]
l397: sbcGEs R0, R1, #738197504
l398: addGT R1, R1, #2031616
l399: bicMI R6, R12, R7
interrupt_700: l400: orr R7, R8, R1, ROR R5
l401: ldrB R1, [sp, #-28]
l402: eorNEs R3, R12, R11
l403: stmDB R13, {R7, R10, R11}
l404: ldmDB R13!, {R14}
interrupt_512: l405: adcs R5, R5, R7
l406: mov R12, #43
l407: ldrEQsb R2, [sp, +R12]
l408: mvn R1, #218103808
l409: rscPLs R6, R12, R3, ASR R4
l410: rscHI R0, R6, R9
l411: ldr R4, l413
l412: b l414
l413: .word 1048508
interrupt_458: l414: swpGTb R7, R12, [R4]
l415: subs R10, R0, #9175040
l416: eor R3, R11, R2, LSL R2
l417: subPL R10, R7, R11, ROR R4
interrupt_315: l418: bEQ l425
l419: sbcLTs R12, R15, R10
interrupt_583: l420: orr R7, R12, R14
l421: sbcEQ R8, R3, R10
l422: addEQs R5, R7, R2, ROR R12
l423: bicPL R14, R7, R9, RRX 
interrupt_423: l424: subVSs R9, R11, R1, LSL R3
l425: andCSs R0, R6, R7, ASR #14
l426: mov R0, #49
l427: ldrGTsb R11, [sp, +R0]
interrupt_321: l428: teq R1, R2, ROR #30
l429: eor R10, R11, #12352
interrupt_513: l430: movVC R2, #161480704
l431: sub R4, R9, R8, LSL #1
l432: orrGTs R8, R6, R7
l433: subs R11, R8, R1, ROR #5
l434: mov R10, #31
l435: strB R7, [sp, +R10]
interrupt_997: l436: ldmIA R13!, {R0, R2, R4, R5, R6, R7, R10, R12}
l437: orrEQ R6, R2, R10, RRX 
l438: tstGT R11, R5, LSR R11
interrupt_643: l439: ldrPLsb R14, [sp, #+13]
interrupt_903: l440: teqLS R8, #-1073741805
l441: stmDB R13!, {R13, R15}
interrupt_389: l442: bics R2, R6, #-1409286143
l443: clz R1, R5
l444: tstLT R5, R3
interrupt_83: l445: teqLT R4, R8, ROR #20
l446: strEQB R10, [sp, #+0]
interrupt_690: l447: mov R11, #23
l448: ldrHIsb R3, [sp, -R11]
interrupt_216: l449: tstLE R15, #1610612746
l450: ldr R10, [sp], #-24
l451: sbcCSs R14, R8, R5
interrupt_848: l452: cmnLT R0, #748
l453: ldr R2, l455
l454: b l456
l455: .word 1048488
l456: swpLSb R4, R6, [R2]
interrupt_297: l457: cmp R0, R15
interrupt_84: l458: clzLT R6, R14
l459: subMIs R1, R9, #56320
l460: b l463
l461: mvns R3, R3, ASR R1
l462: sub R0, R15, #196608
l463: sbc R6, R3, R2, LSL R1
interrupt_878: l464: bMI l468
l465: subEQs R10, R1, R0, LSR #18
interrupt_52: l466: adcVSs R2, R12, #790528
l467: and R6, R12, #193
interrupt_963: l468: bic R7, R1, R9, ROR #1
interrupt_913: l469: adc R8, R4, R15
l470: ldr R7, l472
interrupt_75: l471: b l473
interrupt_767: l472: .word 1048528
l473: swpb R0, R10, [R7]
l474: andGEs R4, R7, #19456
l475: cmnEQ R15, R10
interrupt_874: l476: ldmDA R13!, {R6, R10}
interrupt_408: l477: subVCs R9, R6, #8896
l478: mov R6, #52
interrupt_509: l479: ldrLSsh R12, [sp, +R6]
l480: strMIh R6, [sp, #-6]
interrupt_711: l481: cmnGE R11, R5, LSR R12
l482: adcs R8, R11, R11, ROR R11
l483: bMI l484
l484: rsbs R10, R9, R3, LSL #4
l485: eors R7, R10, R14, LSL #12
l486: bics R9, R5, #60
l487: nop
l488: rsbNEs R9, R1, #12736
interrupt_575: l489: ldr R11, l491
l490: b l492
l491: .word 1048524
l492: swpLT R0, R0, [R11]
l493: clzNE R6, R5
l494: eor R5, R4, R9
interrupt_354: l495: mov R0, #48
l496: ldrh R6, [sp, +R0]
l497: cmpHI R7, R5
interrupt_620: l498: ldmVSDA R13, {R5}
l499: ldr R7, l501
l500: b l502
l501: .word 1048552
l502: swpEQb R10, R10, [R7]
l503: orrVSs R8, R12, R12, LSL #0
interrupt_785: l504: bEQ l506
l505: and R5, R8, R11
l506: sbcs R11, R8, R10
l507: ldrh R0, [sp, #+58]
l508: strGEh R4, [sp, #+40]
interrupt_926: l509: bGE l518
l510: add R1, R0, #70
l511: clzVS R4, R12
l512: teq R0, R14, LSL #7
l513: subLEs R9, R3, R9, ASR #7
l514: tstVC R14, R14, ROR #30
l515: andCS R9, R14, R1
l516: subNE R2, R1, R7, LSL #1
l517: b l519
l518: b l511
interrupt_993: l519: sbcCCs R10, R8, #638976
interrupt_769: l520: adcLEs R0, R3, R11, ROR #23
l521: bEQ l530
l522: add R1, R0, #161
l523: rscGT R9, R1, R15, RRX 
l524: subs R14, R7, R3, LSL R4
l525: rscs R7, R6, R0, ASR #30
l526: clz R9, R10
l527: cmp R12, R9
l528: addCS R9, R6, R6, RRX 
interrupt_290: l529: b l531
l530: b l523
l531: cmpVC R12, R15, LSR #27
interrupt_908: l532: mov R7, #28
l533: strB R9, [sp, +R7]
l534: ldrh R8, [sp, #-16]
l535: ldrLSsb R9, [sp, #+19]
l536: bLT l542
l537: teqLS R5, R8, ASR #5
l538: subEQ R2, R2, #37486592
l539: rscLSs R14, R4, R2, ASR R12
l540: rsbs R11, R7, R2
l541: mvn R3, R3, LSR #25
l542: adds R11, R3, #0
interrupt_942: l543: swi #14637222
interrupt_684: l544: ldrsh R6, [sp, #+34]
l545: swi #15416936
l546: ldr R12, l548
l547: b l549
interrupt_793: l548: .word 1048528
l549: swpGEb R0, R5, [R12]
l550: sbcs R11, R15, R14
l551: rsbNE R3, R11, R2
l552: mov R0, R5, ASR R4
interrupt_199: l553: bicGEs R12, R3, #700416
l554: clzCS R2, R11
l555: adcNE R2, R14, R9, LSL R11
interrupt_490: l556: cmpCS R14, R9, LSL R3
l557: cmp R14, #3552
l558: ldrh R12, [sp, #+56]
l559: ldr R10, l561
l560: b l562
l561: .word 1048508
l562: swpLEb R11, R0, [R10]
l563: b l564
l564: eor R1, R1, #-2147483646
l565: orrCCs R6, R5, R8
l566: clz R4, R7
l567: clz R2, R4
l568: clzCS R0, R10
interrupt_838: l569: stmVCIB R13, {R0, R1, R2, R3, R4, R7, R9, R10, R11, R13, R15}
l570: mov R6, #4
l571: str R6, [sp, +R6]
interrupt_3: l572: mov R14, R1, LSR #24
l573: rsbs R6, R15, R0
l574: eors R8, R15, R1, LSR #22
l575: mov R9, #37
l576: strGTB R12, [sp, +R9]
l577: swi #15148161
l578: sub R0, R6, R6
interrupt_307: l579: teqMI R14, R15, RRX 
interrupt_868: l580: swi #12537390
l581: movHIs R3, #15552
l582: clzVC R1, R4
interrupt_950: l583: mov R5, #40
l584: strLTB R11, [sp, +R5]
l585: adcs R12, R2, #2768
l586: orrs R10, R3, #7340032
interrupt_898: l587: swi #6049962
l588: rscGTs R12, R4, R2, RRX 
l589: adcs R5, R0, R8, ROR R1
l590: cmn R4, R1, RRX 
interrupt_650: l591: subLE R14, R1, #104
interrupt_754: l592: mov R1, #34
l593: ldrMIh R1, [sp, +R1]
l594: ldr R1, l596
l595: b l597
l596: .word 1048496
l597: swpCC R9, R11, [R1]
l598: mvnVC R10, R3
l599: ldmCSDA R13, {R1}
l600: cmp R12, R1
l601: tst R1, R1, ASR R0
l602: mov R3, #52
l603: ldrCCsb R14, [sp, +R3]
l604: rsbPLs R2, R14, R4, ASR R12
l605: strB R9, [sp, #+41]
l606: tstCC R0, R14
l607: tst R3, R10, RRX 
l608: sbc R7, R4, R6, LSR #24
l609: addGEs R3, R9, R8, RRX 
l610: bHI l615
interrupt_150: l611: add R1, R0, #52
l612: eor R7, R1, R0
l613: rsc R2, R0, R3, ROR #27
l614: b l616
interrupt_180: l615: b l612
l616: ldr R7, l618
l617: b l619
l618: .word 1048552
l619: swpLEb R10, R14, [R7]
l620: mvns R4, R2, ROR R4
l621: ldr R6, l623
l622: b l624
l623: .word 1048520
interrupt_11: l624: swpEQb R2, R7, [R6]
interrupt_222: l625: subPLs R7, R8, #118489088
l626: ldr R8, [sp, #-4]
l627: ldrHIsh R12, [sp, #+54]
interrupt_888: l628: ldmIB R13!, {R2, R3, R4, R5, R6, R8, R9, R11, R12, R14}
l629: clzMI R5, R11
l630: subNEs R14, R0, R15
l631: cmnGT R5, R0, ROR #2
interrupt_595: l632: teq R0, #223346688
interrupt_304: l633: swi #15248203
l634: cmn R14, #-1879048188
l635: orrs R6, R8, R15
l636: clzVC R3, R8
l637: mvn R4, R5, LSL #25
l638: sbc R8, R14, R11
l639: ldrsb R0, [sp, #-40]
interrupt_229: l640: tst R5, R4, ASR #28
interrupt_112: l641: nop
l642: rscMI R9, R12, #3031040
l643: mvns R10, R1, LSR R1
l644: eors R10, R6, #191488
interrupt_850: l645: teqVC R11, R2, ASR R7
interrupt_200: l646: eorVCs R3, R12, R2, RRX 
interrupt_87: l647: bicGEs R7, R5, R11
l648: ldrEQ R1, [sp, #+0]
l649: ldr R8, l651
l650: b l652
l651: .word 1048512
l652: swpb R2, R14, [R8]
l653: ldr R11, l655
l654: b l656
l655: .word 1048492
interrupt_597: l656: swpVS R4, R9, [R11]
l657: tstLE R8, R1, ASR R6
l658: rsbLSs R0, R4, R0
l659: ldrLSsh R10, [sp, #+2]
interrupt_801: l660: rsbNEs R4, R3, R4, ROR R1
l661: swi #12631400
interrupt_234: l662: rsb R0, R6, R2
l663: bicCC R9, R10, #196608
l664: mov R0, #12
interrupt_552: l665: ldrsh R4, [sp, -R0]
l666: orrCC R11, R1, R3, ASR R2
l667: mov R5, #17
interrupt_314: l668: ldrHIB R4, [sp, -R5]
l669: mov R10, #36
l670: ldr R12, [sp, -R10]
l671: sbcGE R9, R6, R10, RRX 
l672: teqGT R11, R5, RRX 
l673: clzLE R0, R10
l674: movHI R12, R11, LSL #18
l675: mov R11, #50
l676: strB R9, [sp, -R11]
l677: adcVSs R6, R11, R1, LSR #31
l678: strh R2, [sp, #-28]
l679: orrs R5, R2, R4
l680: mov R7, #6
interrupt_429: l681: ldrsh R7, [sp, -R7]
l682: ldrsh R11, [sp, #+16]
interrupt_601: l683: bicHIs R5, R6, R9, LSL R11
l684: ldr R11, l686
l685: b l687
l686: .word 1048536
l687: swp R3, R2, [R11]
l688: mvnCCs R5, R5, ROR R14
interrupt_296: l689: swi #10680173
l690: swi #7864333
l691: eorGEs R9, R0, R0, RRX 
l692: strGEB R7, [sp, #-12]
interrupt_715: l693: subVCs R8, R14, R14, RRX 
interrupt_600: l694: rsc R9, R0, R6, LSR R3
l695: rsb R11, R6, R11, ASR #15
l696: ldr R8, l698
interrupt_135: l697: b l699
l698: .word 1048528
l699: swpNEb R4, R4, [R8]
l700: mov R3, #27
l701: strB R4, [sp, -R3]
l702: sbcs R8, R2, R8, RRX 
l703: adcLS R9, R4, R6
l704: adcMI R6, R4, R5, LSR #9
l705: eorEQs R4, R3, R14, ASR R7
l706: ldmDB R13!, {R4, R10}
interrupt_787: l707: tstCS R7, R3
l708: eors R11, R2, R7, ASR R14
l709: strLSB R1, [sp, #+27]
l710: ldrLSh R8, [sp, #-26]
interrupt_89: l711: clzGE R6, R10
l712: eorMIs R5, R11, R15
l713: tstCC R6, R8, RRX 
l714: andHI R1, R10, R10, LSL #9
interrupt_773: l715: swi #14147110
interrupt_391: l716: orrNEs R14, R1, R4
interrupt_171: l717: movMIs R1, R9
l718: cmn R15, R8
l719: stmIB R13!, {R6}
interrupt_370: l720: movs R2, R9, ROR R11
l721: bics R4, R6, #-536870904
l722: orrGE R14, R7, R0
l723: ldmLEIB R13, {R0, R2, R12}
l724: bicGTs R2, R15, R1, ROR #9
l725: rscCC R12, R6, #2949120
interrupt_531: l726: ldmDB R13, {R5, R10}
l727: ldmVCIA R13, {R0, R3, R12}
l728: ldr R2, l730
l729: b l731
l730: .word 1048548
l731: swpGEb R12, R6, [R2]
l732: swi #14398513
l733: ldr R0, l735
l734: b l736
l735: .word 1048540
l736: swp R7, R12, [R0]
l737: swi #14595328
l738: rscs R6, R4, R15, LSL #7
l739: and R7, R11, R10, LSR R14
interrupt_844: l740: ldrVCB R1, [sp, #+12]
l741: adds R3, R12, #880803840
interrupt_246: l742: mvn R12, R10, ROR #31
l743: clzGT R9, R14
l744: eorGE R4, R3, R14, ROR R11
l745: ldmDB R13!, {R1, R2, R4, R7, R12}
interrupt_274: l746: stmDB R13!, {R2, R8}
l747: clzMI R9, R6
interrupt_399: l748: mov R11, R10
l749: bMI l758
l750: add R1, R0, #212
l751: adc R1, R15, R10, LSR #10
interrupt_292: l752: subEQs R1, R2, R10
interrupt_37: l753: cmpGE R9, R11, ASR #19
interrupt_561: l754: adds R2, R11, #1261568
l755: sbcEQs R1, R5, #335872
interrupt_541: l756: sbc R14, R3, R4
l757: b l759
l758: b l751
l759: swi #10150228
interrupt_13: l760: cmpPL R6, R9, LSL #30
l761: cmpVS R9, R3
l762: ldrsb R1, [sp, #+45]
l763: swi #2534789
l764: sbc R7, R14, R8, ASR #24
l765: nop
l766: mov R4, #22
l767: ldrLSB R2, [sp, +R4]
interrupt_308: l768: ldr R7, l770
l769: b l771
l770: .word 1048492
l771: swp R1, R9, [R7]
l772: mov R6, #23
l773: strB R11, [sp, -R6]
interrupt_468: l774: mov R11, #44
l775: str R4, [sp, +R11]
l776: ldr R6, l778
interrupt_192: l777: b l779
l778: .word 1048552
l779: swpGT R9, R5, [R6]
interrupt_836: l780: str R5, [sp], #+40
l781: sub R8, R5, #2816
l782: mov R7, #16
l783: ldr R10, [sp, -R7]
l784: andEQs R14, R6, R6, LSR R0
interrupt_999: l785: ands R10, R1, #293601280
l786: b l789
interrupt_443: l787: adds R1, R15, R6
l788: adcLS R0, R15, R8
l789: eorHI R12, R0, R14, LSR #19
l790: strB R6, [sp, #+9]
l791: orrs R11, R8, R8, LSL #13
l792: ldr R1, l794
l793: b l795
interrupt_452: l794: .word 1048492
l795: swp R12, R3, [R1]
interrupt_555: l796: movNEs R5, #1310720
l797: addGE R14, R10, R11, ROR R10
interrupt_374: l798: subCSs R3, R10, #3824
l799: bEQ l807
l800: teq R3, R7
l801: cmnLT R6, R6, RRX 
l802: cmpCS R6, R1, ROR R9
interrupt_501: l803: rscGE R1, R12, R6, ROR #8
l804: mov R0, R7
l805: clzCS R14, R4
interrupt_161: l806: adcs R9, R10, #15040
l807: rscVS R7, R1, R14
interrupt_883: l808: rsbMI R1, R2, #5376
l809: movVC R4, R10
l810: strB R4, [sp, #-59]
l811: bNE l815
l812: add R1, R0, #214
l813: ands R3, R15, R3, RRX 
l814: b l816
l815: b l813
l816: mov R2, #64
l817: ldrPLsh R4, [sp, -R2]
interrupt_299: l818: cmp R5, #33280
l819: tstLT R12, #53739520
l820: tstCS R1, R7, ROR #30
l821: add R6, R14, R0, ASR #31
l822: mov R3, #36
l823: ldrNEh R8, [sp, -R3]
l824: nop
l825: bicVSs R10, R15, R12
l826: subVC R12, R10, R6
l827: cmnNE R0, R4, LSL #25
interrupt_115: l828: ldmHIDA R13, {R2, R3, R4, R5, R6, R7, R8, R9}
l829: mov R9, #14
l830: strh R4, [sp, -R9]
l831: tst R7, R5
interrupt_198: l832: addVS R4, R7, R6, ASR R3
l833: subVSs R9, R5, R14, ASR #5
l834: addPLs R3, R8, R12
l835: movVSs R10, R12
l836: teqMI R6, R15
l837: rscVCs R12, R6, R10, ROR R6
l838: bicNEs R3, R5, R3, ROR R7
l839: mov R12, #28
l840: str R4, [sp], -R12
interrupt_138: l841: strLEh R3, [sp, #+24]
l842: ldr R10, l844
l843: b l845
interrupt_862: l844: .word 1048524
interrupt_969: l845: swpNE R4, R14, [R10]
l846: movCC R2, R8, LSR R1
l847: subVS R7, R1, R10, LSR #22
interrupt_446: l848: rscCSs R2, R4, R11, LSR #15
l849: stmDB R13!, {R2, R3}
interrupt_705: l850: mov R11, #10
l851: ldrHIsb R9, [sp, -R11]
l852: ldr R5, l854
interrupt_218: l853: b l855
l854: .word 1048520
l855: swpHIb R9, R10, [R5]
l856: cmn R15, R0, LSL #16
l857: orrPL R9, R9, R2
interrupt_661: l858: addEQs R12, R11, #1008
l859: strPL R8, [sp, #-28]
l860: ldr R3, [sp, #+32]
interrupt_402: l861: swi #3157696
l862: adcLSs R6, R9, #-201326592
l863: stmDA R13!, {R3, R6, R7}
l864: subCCs R8, R7, R10
l865: clz R0, R8
l866: ands R6, R1, R12, RRX 
l867: mov R5, #10
interrupt_312: l868: ldrsb R0, [sp, -R5]
l869: mvns R10, R1, LSL #17
l870: rsbs R11, R12, R7, ASR R0
l871: ldr R3, l873
l872: b l874
interrupt_259: l873: .word 1048536
l874: swpPLb R12, R1, [R3]
l875: bCS l884
l876: add R1, R0, #176
l877: clzGT R11, R0
l878: subEQ R7, R8, #14592
l879: add R9, R2, #223346688
l880: cmnEQ R7, R10, LSR R7
l881: subEQ R4, R14, #24117248
l882: rsbs R0, R12, R3, ASR R2
interrupt_593: l883: b l885
l884: b l877
l885: cmnCS R3, R5
l886: subMI R7, R2, R14
l887: cmnLS R0, R0, ROR #26
l888: bicHIs R11, R9, R5
l889: ldrPLh R0, [sp, #+16]
l890: sub R9, R7, #1280
l891: mov R9, #12
l892: strB R3, [sp, -R9]
l893: mov R4, #44
l894: ldrVCsh R10, [sp, +R4]
l895: ldrEQ R10, [sp, #+28]
l896: cmpVS R2, R15
l897: ldr R7, l899
l898: b l900
l899: .word 1048524
l900: swpVC R8, R5, [R7]
l901: strVSh R5, [sp, #+2]
l902: bics R0, R3, #48496640
interrupt_467: l903: strVCh R9, [sp, #-12]
l904: swi #16676563
l905: tstCC R2, R5, ASR R11
interrupt_945: l906: ldr R3, l908
l907: b l909
l908: .word 1048552
l909: swpb R6, R10, [R3]
l910: tst R1, #8323072
l911: mov R10, #11
l912: strEQB R3, [sp, +R10]
l913: swi #3850230
l914: sbc R0, R1, R11, ASR R1
interrupt_624: l915: orrs R14, R10, R15, LSL #20
interrupt_342: l916: ldr R7, l918
l917: b l919
l918: .word 1048552
l919: swpb R6, R9, [R7]
interrupt_67: l920: cmpLS R5, R15
l921: add R7, R5, R8, RRX 
l922: sbcs R3, R7, R5
l923: teqVC R5, #1073741879
interrupt_343: l924: rsbGE R11, R7, R2
interrupt_186: l925: ldr R11, [sp, #+4]!
l926: b l931
interrupt_586: l927: add R1, R0, #102
l928: cmp R0, R2
l929: bics R6, R11, R5, ROR R10
l930: b l932
l931: b l928
l932: mov R12, #0
l933: ldrMIsh R3, [sp, +R12]
l934: b l940
l935: add R1, R0, #176
interrupt_285: l936: sbc R2, R4, R11, LSL R8
l937: sbcGTs R8, R12, R4, RRX 
interrupt_255: l938: clzHI R9, R7
l939: b l941
l940: b l936
interrupt_257: l941: bLS l945
l942: add R1, R0, #172
l943: eor R14, R11, R9, RRX 
l944: b l946
l945: b l943
l946: rscCSs R3, R7, R11, LSR R3
l947: rscLS R5, R9, #4128768
l948: movs R9, R2, ROR #1
l949: teq R12, R1, ROR R7
l950: subLE R7, R6, R11, ASR R0
l951: strCCh R3, [sp, #+2]
l952: mov R11, #24
l953: strLE R3, [sp, +R11]
interrupt_890: l954: mov R5, #39
l955: ldrCCsb R3, [sp, +R5]
l956: subs R0, R5, #124
l957: ldr R1, l959
l958: b l960
l959: .word 1048532
l960: swpCCb R10, R14, [R1]
l961: cmp R8, R5
l962: bics R0, R3, R6, ASR #1
l963: cmp R12, R10, ROR R14
l964: adc R6, R10, R10, RRX 
l965: rsbVCs R2, R11, R14, ROR #28
l966: clz R4, R7
l967: ldr R9, l969
l968: b l970
l969: .word 1048492
l970: swpVSb R1, R1, [R9]
l971: movCSs R3, R1, RRX 
interrupt_287: l972: subPLs R6, R12, #10158080
l973: mov R14, #20
l974: ldrh R10, [sp, +R14]
l975: mov R5, #37
interrupt_7: l976: ldrsb R9, [sp, +R5]
l977: eor R10, R11, R9
interrupt_623: l978: sub R8, R11, #59392
l979: mov R12, #50
l980: ldrLEsh R1, [sp, +R12]
l981: adcs R7, R11, R11
l982: tst R10, #948
l983: b l984
interrupt_639: l984: eorNEs R14, R15, R11, RRX 
l985: eor R1, R3, R2, ROR #14
l986: mov R12, #20
l987: str R11, [sp], -R12
l988: cmnGT R11, R5, ASR R3
l989: addVCs R6, R7, R0, RRX 
l990: mov R10, #34
interrupt_278: l991: ldrB R10, [sp, +R10]
l992: rscVS R9, R11, #9024
interrupt_34: l993: andVCs R1, R6, R9, LSL #13
l994: b l999
l995: tstLT R0, R7
l996: cmpHI R14, #270336
l997: addHIs R11, R4, #28928
l998: clz R4, R14
l999: mvnVC R8, #792723456
l1000: movLEs R6, #1140850688
l1001: tst R1, R10
l1002: adc R11, R4, R0, LSR #9
l1003: swi #1553988
l1004: swi #6997775
l1005: swi #4135764
l1006: ldrB R9, [sp, #+55]
l1007: mov R7, #15
l1008: ldrCSsb R2, [sp, +R7]
l1009: b l1015
l1010: sub R14, R0, R1, LSL #19
l1011: addMI R12, R4, R4, LSL R10
interrupt_859: l1012: eorNEs R8, R7, R14, RRX 
interrupt_617: l1013: clzGT R5, R11
l1014: subGEs R2, R3, R3
l1015: teqHI R0, R5, LSR R7
l1016: subLSs R4, R8, #228
l1017: teqVS R9, R2
l1018: ldr R5, l1020
l1019: b l1021
l1020: .word 1048484
l1021: swpNEb R1, R3, [R5]
interrupt_409: l1022: ldr R4, l1024
l1023: b l1025
interrupt_64: l1024: .word 1048492
l1025: swpVSb R8, R3, [R4]
l1026: mov R9, #34
interrupt_667: l1027: ldrGTsb R9, [sp, +R9]
l1028: ldr R6, l1030
interrupt_316: l1029: b l1031
l1030: .word 1048480
l1031: swp R1, R10, [R6]
l1032: cmnLS R6, R11, LSL #16
l1033: eorHI R12, R2, R10, RRX 
l1034: bMI l1038
l1035: add R1, R0, #243
l1036: mvnVS R6, R9
l1037: b l1039
interrupt_496: l1038: b l1036
l1039: mov R3, #56
l1040: ldrh R10, [sp, +R3]
l1041: mov R12, #45
l1042: strLTB R1, [sp, +R12]
interrupt_228: l1043: mov R4, #44
l1044: ldr R10, [sp, +R4]!
l1045: clzGE R2, R6
l1046: ldr R1, l1048
l1047: b l1049
l1048: .word 1048488
l1049: swpVS R0, R5, [R1]
l1050: rscs R3, R5, R10, RRX 
l1051: addLSs R1, R0, R7
l1052: mov R6, #20
l1053: strLSh R8, [sp, +R6]
l1054: rsb R8, R11, R2
l1055: swi #4062307
l1056: ldmIA R13!, {R2, R4, R9}
l1057: strLSh R0, [sp, #-24]
l1058: mov R2, #12
l1059: ldr R5, [sp], +R2
l1060: sub R4, R14, R9, ROR R10
l1061: orrLS R6, R15, #26214400
interrupt_433: l1062: mov R4, #61
l1063: strGTB R9, [sp, -R4]
interrupt_140: l1064: swi #14962921
l1065: ldrLSh R5, [sp, #+6]
l1066: swi #15722865
l1067: strPLB R8, [sp, #-10]
l1068: orrs R5, R9, R4, ASR #1
l1069: rsbs R4, R15, #1073741883
l1070: clzLT R0, R0
l1071: tstCS R10, R2, ASR R3
l1072: mov R2, #48
l1073: strLS R14, [sp, -R2]
l1074: mov R7, #60
l1075: ldr R11, [sp, -R7]!
l1076: stmIB R13!, {R13}
interrupt_517: l1077: ldrEQB R5, [sp, #+57]
l1078: bicCC R12, R0, R5, LSR R5
l1079: strPLh R2, [sp, #+60]
l1080: mov R8, #60
l1081: ldrh R11, [sp, +R8]
interrupt_747: l1082: mov R9, #6
interrupt_478: l1083: ldrh R14, [sp, +R9]
l1084: rscs R6, R12, R8
l1085: clz R7, R12
l1086: cmpGT R8, R2, ASR #0
l1087: strh R14, [sp, #+28]
l1088: b l1093
l1089: subs R14, R4, R14, LSR R11
l1090: tstHI R5, R0, RRX 
interrupt_407: l1091: orrVSs R6, R0, R1
l1092: cmp R8, R3, LSL R10
interrupt_566: l1093: sub R7, R11, R8, ASR R12
l1094: mov R2, #4
l1095: ldrCCsh R5, [sp, -R2]
l1096: ldr R12, [sp], #+20
l1097: ldr R4, l1099
l1098: b l1100
l1099: .word 1048536
l1100: swpVSb R10, R9, [R4]
interrupt_341: l1101: addGT R5, R7, R8, RRX 
l1102: ands R3, R9, R2, ROR R11
l1103: bMI l1108
interrupt_851: l1104: mvnGTs R1, R4, ASR R0
interrupt_679: l1105: orrs R11, R14, R8
l1106: bicGT R11, R2, R7, ASR R3
l1107: bics R10, R8, #216
l1108: orr R8, R14, R3
l1109: mov R11, #20
l1110: ldr R0, [sp, +R11]!
interrupt_743: l1111: cmn R12, R3
l1112: orrs R12, R0, #230686720
interrupt_884: l1113: cmnNE R7, R0, RRX 
l1114: ldrB R5, [sp, #-12]
l1115: b l1119
l1116: add R1, R0, #169
l1117: rsbLE R4, R0, R4, ROR R2
l1118: b l1120
l1119: b l1117
l1120: tstGT R15, R8
l1121: subLTs R8, R3, #-1006632960
l1122: rscVCs R6, R3, #624
interrupt_645: l1123: swi #13274122
l1124: tst R3, R14, LSR R9
l1125: tst R0, R2
l1126: bic R11, R2, R2, LSL #3
l1127: orr R3, R9, R9
l1128: mov R4, #0
l1129: strB R7, [sp, +R4]
l1130: cmn R6, #327680
interrupt_723: l1131: subVSs R0, R3, R3
l1132: subNEs R7, R10, R8
l1133: movGTs R9, R11
interrupt_153: l1134: bVC l1142
l1135: add R1, R0, #213
l1136: orr R6, R1, R8, RRX 
l1137: subCC R6, R10, #236
l1138: add R10, R11, R5
l1139: rsbLS R9, R6, #-1459617792
interrupt_680: l1140: clzLS R9, R4
l1141: b l1143
interrupt_893: l1142: b l1136
l1143: sbcs R7, R7, R3, ROR #12
l1144: ldr R1, l1146
l1145: b l1147
l1146: .word 1048496
l1147: swp R9, R6, [R1]
l1148: mov R5, #12
l1149: strLSB R14, [sp, -R5]
l1150: orrVC R8, R15, R0
interrupt_435: l1151: teqLS R1, #3932160
l1152: mov R0, #12
l1153: ldrGTh R3, [sp, -R0]
l1154: addLE R14, R1, R8, LSL #27
l1155: rscCC R11, R14, R4
l1156: cmn R3, R1
l1157: rsbPL R0, R9, #176
l1158: strVS R8, [sp, #+0]
interrupt_395: l1159: tstVC R10, #3801088
l1160: rsbMIs R10, R1, R0, LSR R1
l1161: mov R14, #8
interrupt_101: l1162: ldrNEsb R6, [sp, -R14]
l1163: b l1168
l1164: bic R11, R0, R10, ASR R9
l1165: eorLEs R8, R10, #3952
l1166: adcs R6, R3, R0, RRX 
l1167: clzCC R10, R12
l1168: addGE R11, R3, R9, RRX 
l1169: bGT l1178
l1170: add R1, R0, #116
l1171: cmnEQ R2, R9
l1172: adcHI R3, R15, R7, ASR #26
interrupt_298: l1173: rscMIs R14, R3, #14
interrupt_441: l1174: add R6, R11, R3, ROR R5
interrupt_280: l1175: teqCS R1, #1019215872
l1176: movCCs R9, #11599872
l1177: b l1179
interrupt_958: l1178: b l1171
l1179: swi #12589441
l1180: bics R6, R12, R1
l1181: swi #15937655
l1182: mov R6, #52
l1183: strh R10, [sp, -R6]
l1184: ldr R12, [sp, #-52]
l1185: movLEs R4, #143360
l1186: ldr R3, l1188
l1187: b l1189
l1188: .word 1048548
l1189: swpGT R8, R1, [R3]
l1190: ldr R4, l1192
l1191: b l1193
l1192: .word 1048536
l1193: swp R5, R7, [R4]
l1194: ldmIB R13, {R1, R2, R3}
l1195: ldrCCsh R0, [sp, #+0]
interrupt_811: l1196: movCCs R10, R14, LSL R6
l1197: b l1206
l1198: sbc R8, R14, R9
interrupt_484: l1199: sbcGE R7, R10, R2, ROR R4
interrupt_79: l1200: adds R12, R15, #30408704
interrupt_454: l1201: adcVC R14, R11, R3, ASR #7
interrupt_830: l1202: rsb R6, R15, #540672
l1203: teq R11, R4
l1204: movLE R1, R15
l1205: mov R3, #984
l1206: subs R2, R4, #1632
l1207: ldr R10, l1209
interrupt_123: l1208: b l1210
interrupt_909: l1209: .word 1048524
l1210: swpb R0, R2, [R10]
l1211: b l1219
l1212: add R1, R0, #246
l1213: adcLTs R4, R6, R6, ROR #15
l1214: clzLE R8, R14
interrupt_652: l1215: sbc R0, R8, R14
l1216: rscLEs R3, R2, #3
l1217: addCC R10, R7, #320
l1218: b l1220
l1219: b l1213
l1220: mov R14, #5
l1221: strGTB R3, [sp, +R14]
l1222: movCC R9, R9, ROR R1
l1223: mov R0, #43
interrupt_924: l1224: ldrLSB R0, [sp, -R0]
l1225: mov R12, #24
l1226: ldrsh R4, [sp, -R12]
l1227: cmnVC R9, R3, ROR #28
l1228: ldrNEB R6, [sp, #+23]
interrupt_612: l1229: cmnLT R0, #1073741824
l1230: bCC l1239
l1231: add R1, R0, #172
l1232: mvnNE R10, R3
l1233: cmn R3, R5, ROR R2
l1234: eorLSs R0, R7, R1, ROR #29
l1235: subEQ R4, R6, #763363328
l1236: clzGT R10, R1
l1237: rscs R12, R1, R14, ROR R3
l1238: b l1240
l1239: b l1232
l1240: ldrHIB R10, [sp, #+21]
l1241: eorVCs R8, R4, #44
interrupt_847: l1242: rsbs R12, R7, #-2147483610
l1243: sub R11, R8, R2, ROR R4
l1244: mov R8, #8
l1245: str R11, [sp, -R8]!
l1246: subs R5, R6, R11
l1247: ldr R1, l1249
l1248: b l1250
l1249: .word 1048532
l1250: swpMI R4, R5, [R1]
interrupt_240: l1251: b l1257
l1252: add R1, R0, #17
interrupt_567: l1253: subHI R0, R14, #905969664
l1254: rscVCs R4, R7, R12, LSR #12
l1255: subLEs R2, R4, R12, RRX 
l1256: b l1258
l1257: b l1253
l1258: mov R0, #12
l1259: ldrPLh R3, [sp, +R0]
l1260: rscLTs R2, R1, R12, ASR R1
l1261: ldrB R9, [sp, #-12]
l1262: rscCC R11, R11, R5, LSR #30
l1263: mov R6, #32
l1264: ldrsh R7, [sp, -R6]
l1265: clz R8, R10
l1266: orrPL R8, R6, R2, LSL #8
l1267: and R8, R0, #4194304
l1268: ldrh R5, [sp, #+4]
l1269: mov R4, #8
interrupt_622: l1270: ldrCSB R9, [sp, +R4]
interrupt_709: l1271: ldrMIsb R14, [sp, #+11]
l1272: stmDA R13!, {R2, R8}
l1273: addLS R1, R0, #1280
l1274: subLE R1, R5, #-2147483598
l1275: cmn R2, #2208
l1276: ldr R10, l1278
l1277: b l1279
l1278: .word 1048536
l1279: swp R4, R2, [R10]
l1280: andVS R5, R9, R15
l1281: mov R14, #6
interrupt_472: l1282: ldrLSh R2, [sp, +R14]
l1283: orrVC R5, R4, R7, ASR #9
l1284: ands R4, R1, #188
l1285: rscs R5, R15, R0
interrupt_947: l1286: rscs R6, R12, R14, LSL #28
l1287: mov R9, #24
interrupt_672: l1288: ldrCCh R12, [sp, +R9]
l1289: andVCs R3, R8, R0, ROR #3
l1290: cmpCC R10, R7, LSL #6
interrupt_845: l1291: adcLTs R14, R6, R9, RRX 
interrupt_436: l1292: clz R5, R3
l1293: eor R2, R5, #192937984
l1294: mov R10, #30
l1295: ldrsh R11, [sp, -R10]
interrupt_253: l1296: add R1, R9, R8
interrupt_557: l1297: rsb R1, R4, R2
l1298: andHIs R7, R2, R14, ASR R4
l1299: clzNE R10, R4
l1300: tstEQ R7, #-402653184
l1301: cmnVS R8, #219136
interrupt_15: l1302: swi #277323
l1303: stmDA R13!, {R13}
l1304: subLTs R4, R11, R0
interrupt_543: l1305: sub R6, R5, #458752
l1306: sbcGT R6, R6, #-1962934272
l1307: subs R11, R1, R2, ROR R4
l1308: b l1313
l1309: add R1, R0, #31
l1310: bicHIs R7, R4, R8, ASR R7
interrupt_328: l1311: orr R2, R1, #17039360
l1312: b l1314
l1313: b l1310
l1314: cmnGE R9, R1
l1315: mov R6, #32
l1316: ldr R1, [sp, -R6]!
l1317: bLE l1326
l1318: orrEQ R3, R5, #130048
interrupt_35: l1319: movVS R8, R14, ROR #25
l1320: rsbs R2, R12, #1073741854
l1321: rscLTs R1, R5, R6, LSR R6
l1322: subCSs R12, R4, #123731968
l1323: sbc R11, R10, R0, ASR R4
l1324: sbcEQs R11, R9, R7, ROR #16
l1325: clz R2, R14
l1326: teq R2, #185597952
l1327: sbcs R3, R7, #826277888
interrupt_124: l1328: mov R5, R8
l1329: eor R12, R11, #3072
interrupt_256: l1330: addLTs R8, R2, R11
l1331: bic R3, R2, R9
interrupt_521: l1332: bCS l1341
l1333: add R1, R0, #31
l1334: adcs R10, R9, R11, RRX 
interrupt_689: l1335: teq R6, R2, RRX 
interrupt_311: l1336: cmn R8, #511705088
l1337: rsbs R11, R2, #56623104
l1338: cmn R6, R11, ROR R3
l1339: bicGT R4, R6, #3850240
l1340: b l1342
l1341: b l1334
l1342: andCC R12, R2, #-1879048189
l1343: b l1349
l1344: add R1, R0, #156
interrupt_618: l1345: clzMI R2, R12
l1346: movVSs R14, R9
l1347: addGTs R12, R3, R0, ASR #27
l1348: b l1350
l1349: b l1345
l1350: orr R9, R1, R4, RRX 
l1351: tst R14, R14
interrupt_717: l1352: strCCB R9, [sp, #+26]
l1353: ldrNEsb R12, [sp, #+75]
l1354: ldr R4, l1356
l1355: b l1357
l1356: .word 1048492
interrupt_134: l1357: swp R9, R10, [R4]
l1358: rsb R8, R0, #-1342177268
l1359: mov R10, #73
l1360: strLEB R3, [sp, +R10]
l1361: rscs R3, R9, R0, RRX 
l1362: rsc R5, R12, R4, LSR #18
l1363: tst R7, R0
l1364: strMIB R11, [sp, #+21]
l1365: clz R12, R3
interrupt_843: l1366: eor R5, R14, R1, LSL R10
l1367: str R8, [sp], #+20
l1368: cmnLE R12, R0
l1369: subHI R2, R2, R8
interrupt_271: l1370: movs R7, R8, ASR R3
l1371: sub R9, R11, #-570425344
l1372: and R14, R9, R2, LSL R6
l1373: mov R9, #43
l1374: ldrsb R9, [sp, +R9]
l1375: rsbLTs R3, R8, R7
l1376: mvnPLs R14, R7
l1377: sub R1, R10, R4
l1378: swi #9277157
l1379: mov R12, #10
l1380: ldrEQsb R0, [sp, -R12]
interrupt_674: l1381: mov R3, #40
l1382: str R9, [sp, +R3]!
l1383: eor R5, R12, #49020928
l1384: teqMI R15, #1064960
l1385: ldrsb R7, [sp, #-54]
l1386: andPL R8, R4, #1036288
interrupt_746: l1387: ldrsh R5, [sp, #-56]
l1388: ldr R8, [sp], #-52
l1389: sub R10, R14, R10, RRX 
interrupt_226: l1390: ldrGTh R1, [sp, #+46]
l1391: teq R7, #1073741825
l1392: cmp R11, R2, LSL R6
l1393: ldr R6, l1395
l1394: b l1396
interrupt_499: l1395: .word 1048552
interrupt_946: l1396: swpVCb R1, R11, [R6]
l1397: cmpVS R1, R12, LSR #4
l1398: stmIB R13!, {R0, R3, R4, R6, R7, R11, R12, R14}
interrupt_724: l1399: swi #16351448
l1400: rsbMI R7, R10, R3
l1401: rscs R4, R11, R6, RRX 
l1402: stmGTDB R13, {R1, R2, R5, R6, R8, R11, R14, R15}
l1403: rscPL R4, R2, #162816
l1404: sub R1, R0, R9, ASR R4
interrupt_515: l1405: orr R1, R15, #-1073741814
l1406: ldr R3, l1408
interrupt_688: l1407: b l1409
l1408: .word 1048540
l1409: swpGT R4, R12, [R3]
l1410: ldr R4, l1412
l1411: b l1413
l1412: .word 1048504
l1413: swpNE R11, R8, [R4]
l1414: ldr R14, l1416
interrupt_392: l1415: b l1417
l1416: .word 1048496
l1417: swpLTb R5, R9, [R14]
interrupt_602: l1418: swi #10123644
l1419: ldr R4, [sp], #-4
l1420: mvn R7, R5, LSL R9
l1421: adcVC R5, R15, R10
l1422: tst R4, #63963136
interrupt_181: l1423: bLT l1431
interrupt_74: l1424: add R1, R0, #211
l1425: sbcs R12, R9, R3, LSL R5
l1426: sbcs R5, R2, #-1140850688
l1427: sub R8, R9, R10, LSL #7
interrupt_899: l1428: subCCs R4, R6, #5376
l1429: eorNEs R9, R5, R4
interrupt_897: l1430: b l1432
l1431: b l1425
l1432: ldr R3, l1434
l1433: b l1435
l1434: .word 1048496
l1435: swpb R12, R9, [R3]
interrupt_306: l1436: teqPL R11, R12
l1437: teqVC R4, #262144000
interrupt_426: l1438: movs R9, R9, RRX 
l1439: mov R11, #33
l1440: strB R6, [sp, +R11]
l1441: bVC l1451
interrupt_791: l1442: teq R0, R10, RRX 
l1443: movMI R1, R10
l1444: add R6, R0, R9, LSR R14
l1445: tstNE R11, R3, ASR R11
interrupt_397: l1446: teqCC R7, #-2147483631
l1447: sub R10, R6, R15, RRX 
l1448: cmp R5, #5308416
l1449: clzGT R6, R12
l1450: andGTs R12, R0, #-1426063360
interrupt_507: l1451: rsbPL R7, R4, R3, ASR #28
l1452: addEQ R6, R7, R4, RRX 
l1453: add R8, R2, #55050240
l1454: sbc R2, R0, R6
l1455: ldrsh R4, [sp, #+30]
l1456: ldrB R5, [sp, #-25]
l1457: ldmIB R13!, {R0, R5, R9, R10, R11, R12}
interrupt_832: l1458: eorHIs R8, R11, R8
l1459: eors R12, R2, R2, RRX 
l1460: ands R10, R2, R4
l1461: cmn R7, R9, LSR #6
l1462: mov R10, #32
l1463: strB R4, [sp, -R10]
l1464: ldr R7, l1466
l1465: b l1467
l1466: .word 1048544
l1467: swpb R10, R8, [R7]
interrupt_411: l1468: swi #8529023
l1469: eorLSs R6, R2, #35840
l1470: strh R9, [sp, #-32]
l1471: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R9}
l1472: tstLE R1, R5, ROR #2
l1473: ldrEQh R4, [sp, #-24]
l1474: mov R10, #42
l1475: ldrLEsh R1, [sp, +R10]
l1476: strh R14, [sp, #-10]
interrupt_941: l1477: mvnCS R4, R10
l1478: stmDA R13!, {R1, R5, R11, R12}
l1479: stmIA R13!, {R1, R2, R3, R4, R6, R7, R8, R10, R11}
l1480: swi #12380789
l1481: rsbVCs R12, R8, #360
l1482: sbcs R4, R0, R10, LSR #18
l1483: bPL l1490
l1484: add R1, R0, #25
l1485: bicLS R0, R11, #805306371
l1486: movLT R6, R2, ASR R10
interrupt_143: l1487: cmp R8, R12, ROR R4
l1488: sbcs R10, R10, R11, ROR #22
l1489: b l1491
l1490: b l1485
interrupt_651: l1491: stmDA R13!, {R13}
l1492: ldmNEIA R13, {R3, R8, R11}
l1493: movGTs R1, R8
interrupt_964: l1494: strB R2, [sp, #+21]
l1495: swi #9862955
l1496: mov R0, #6
interrupt_371: l1497: strh R14, [sp, -R0]
l1498: swi #8213046
l1499: mov R6, #6
l1500: ldrLEh R8, [sp, -R6]
l1501: movVS R10, R4
l1502: movLE R10, R9
l1503: cmnCS R9, R3
interrupt_692: l1504: tst R0, R12, LSR R2
l1505: str R0, [sp, #-32]
interrupt_984: l1506: b l1512
interrupt_827: l1507: add R1, R0, #243
l1508: teqLT R3, #10944512
l1509: cmp R11, R6, LSL R9
interrupt_204: l1510: adcEQ R6, R7, R15
interrupt_792: l1511: b l1513
l1512: b l1508
l1513: adcMI R3, R7, R11, LSR R6
l1514: bicEQs R11, R4, R6, ASR R10
interrupt_125: l1515: bics R3, R11, R9
l1516: mov R5, #14
l1517: ldrsh R8, [sp, -R5]
l1518: sub R9, R5, R10
l1519: teqMI R11, #905216
l1520: mov R12, #40
l1521: ldr R0, [sp, -R12]!
l1522: adcCS R12, R3, R11, ROR R3
l1523: subLEs R4, R6, #864
l1524: swi #11681258
l1525: mov R3, #61
l1526: strB R6, [sp, +R3]
interrupt_27: l1527: ldrh R10, [sp, #+28]
interrupt_295: l1528: ldr R8, l1530
interrupt_933: l1529: b l1531
l1530: .word 1048552
l1531: swpMI R5, R5, [R8]
l1532: ldr R1, l1534
l1533: b l1535
interrupt_733: l1534: .word 1048524
l1535: swp R8, R9, [R1]
interrupt_309: l1536: mov R11, #40
l1537: ldr R6, [sp], +R11
interrupt_629: l1538: eorNEs R1, R0, R1, LSL R14
l1539: mov R7, #29
interrupt_276: l1540: ldrGEB R2, [sp, -R7]
l1541: ldrCSsh R0, [sp, #+26]
l1542: swi #8099170
l1543: rscLS R14, R5, #192
l1544: swi #14572830
interrupt_991: l1545: mov R12, #12
l1546: ldrVCh R8, [sp, +R12]
interrupt_920: l1547: b l1557
l1548: tst R6, R3, RRX 
interrupt_822: l1549: bicVS R0, R14, R4, RRX 
l1550: rscLT R12, R4, R3, ROR #8
interrupt_527: l1551: cmpEQ R7, R4, RRX 
l1552: subPLs R7, R0, R7
interrupt_430: l1553: sbcLE R0, R6, #7929856
l1554: cmnVS R1, R3
l1555: teqHI R14, R12
l1556: clz R2, R14
l1557: teqVC R1, #14464
l1558: bCS l1559
l1559: sbcGE R9, R11, R12, RRX 
l1560: mov R4, #48
l1561: ldrLE R8, [sp, -R4]
l1562: movHI R3, R14, ASR #23
l1563: adds R4, R12, #311296
l1564: sbcPL R6, R8, R5, ASR R7
l1565: clzEQ R9, R0
l1566: sub R2, R3, R15, ROR #31
l1567: str R10, [sp], #-4
l1568: bLS l1577
l1569: add R1, R0, #18
l1570: cmnMI R12, #80740352
l1571: subGTs R5, R1, R9, ASR R5
l1572: bicVSs R3, R6, #570425344
l1573: orr R4, R5, R4, RRX 
l1574: movVCs R7, #248512512
interrupt_270: l1575: cmn R2, R5, LSR R10
l1576: b l1578
l1577: b l1570
l1578: tstPL R7, R6, LSR #3
l1579: mvn R10, R14
l1580: clzGT R4, R11
l1581: mvnHIs R12, R12, ASR #27
l1582: cmn R2, R8, LSR R2
l1583: ldrLSsb R12, [sp, #-18]
l1584: cmnVS R6, R0
interrupt_130: l1585: strEQB R12, [sp, #-20]
l1586: mov R4, #0
l1587: str R1, [sp], +R4
l1588: adcs R12, R4, R8, ROR R6
l1589: mov R10, #0
l1590: ldrNE R8, [sp, +R10]
l1591: bic R4, R9, #1543503875
l1592: mvn R8, R7
l1593: mov R7, #27
l1594: strB R12, [sp, -R7]
l1595: swi #13253913
l1596: stmIA R13!, {R13}
l1597: ldrB R4, [sp, #-1]
l1598: cmpNE R10, R9, LSR R0
l1599: mov R12, #12
l1600: strh R7, [sp, +R12]
l1601: strB R10, [sp, #-41]
l1602: tstPL R2, #756
l1603: adcEQs R14, R10, R8, ROR #22
l1604: mov R2, #26
l1605: ldrLTB R11, [sp, -R2]
l1606: eors R5, R8, R7
l1607: nop
l1608: clzMI R9, R12
l1609: mvn R6, R6
l1610: teqGT R4, R5, LSR R2
l1611: ldr R0, l1613
l1612: b l1614
l1613: .word 1048520
interrupt_777: l1614: swpMI R6, R1, [R0]
l1615: mov R4, R2
l1616: andLT R1, R8, R14
l1617: rsb R2, R0, R14
l1618: sub R12, R12, R15
interrupt_683: l1619: bNE l1625
l1620: adcLSs R10, R6, R7
interrupt_54: l1621: cmn R8, R12, ASR #4
l1622: subGEs R2, R15, R6
l1623: adds R0, R4, R10
l1624: sbcCSs R11, R3, #35913728
l1625: rscs R9, R8, R6, RRX 
l1626: mov R4, #25
l1627: strB R12, [sp, +R4]
l1628: bCS l1634
l1629: andVCs R1, R7, R8, ROR R4
l1630: mvns R6, R6, RRX 
l1631: bicHIs R14, R3, #212
l1632: sbcs R5, R7, R15
l1633: orrVSs R14, R9, R5, LSR R3
l1634: subLSs R6, R10, #1664
l1635: ldmMIDB R13, {R1, R2, R3, R7, R9, R10, R11, R12, R14}
l1636: orrVC R9, R7, R9, ASR R11
l1637: addLEs R9, R9, #27525120
l1638: bCS l1646
l1639: adc R12, R14, #2816
l1640: subVSs R6, R1, R4
l1641: cmpNE R10, R1
l1642: mov R14, R3, ROR R7
l1643: sbcMI R1, R12, R2, ROR R6
l1644: sbc R4, R8, R12, ASR #12
l1645: rsbLE R14, R2, R12, ASR #26
l1646: clzPL R0, R0
interrupt_542: l1647: mov R12, #26
l1648: strLTh R3, [sp, -R12]
l1649: cmp R11, R15, RRX 
l1650: cmn R10, #175104
l1651: rscs R0, R8, R5
interrupt_179: l1652: bPL l1661
l1653: and R7, R4, R10, ROR R8
interrupt_625: l1654: addCSs R4, R0, R11
l1655: orr R10, R2, R15, ROR #14
interrupt_735: l1656: mov R4, R6, ASR R14
interrupt_657: l1657: cmnVC R8, R14, RRX 
l1658: clzLE R0, R2
interrupt_971: l1659: addLT R5, R12, R6, ROR #26
l1660: mov R3, R12, ASR R2
l1661: clz R1, R9
l1662: mvnMIs R8, R15, RRX 
l1663: stmDB R13, {R3, R13}
l1664: ldrh R11, [sp, #-16]
l1665: add R0, R10, R9, RRX 
l1666: rsc R0, R0, R3, LSR R2
l1667: mov R2, #20
l1668: ldrh R0, [sp, +R2]
l1669: orrVSs R12, R12, R8, LSR R1
l1670: cmnLE R6, R10, LSR R8
l1671: ldrsb R1, [sp, #-12]
l1672: teq R7, R12, LSR R4
l1673: cmpCS R8, #202
l1674: ldrNEB R0, [sp, #-2]
interrupt_960: l1675: orrMI R14, R12, #193
l1676: clz R10, R6
l1677: bMI l1681
l1678: add R1, R0, #94
l1679: teqCC R15, R8
l1680: b l1682
interrupt_510: l1681: b l1679
l1682: tst R11, R2, ASR #17
l1683: sbc R7, R11, R3
interrupt_910: l1684: bMI l1685
l1685: cmp R15, #824
l1686: bEQ l1690
l1687: add R1, R0, #228
l1688: andCCs R5, R8, R9, LSL R4
l1689: b l1691
l1690: b l1688
l1691: subCS R9, R9, R7, LSR R6
interrupt_759: l1692: bVC l1701
l1693: add R1, R0, #160
l1694: andHIs R10, R9, R3, ROR R14
interrupt_936: l1695: movNEs R6, R7, LSL R0
interrupt_660: l1696: rsb R6, R2, R1, RRX 
interrupt_336: l1697: rscLEs R6, R5, #-671088639
l1698: eorCSs R11, R7, R1, ROR R14
l1699: orrs R12, R5, R2
l1700: b l1702
l1701: b l1694
l1702: cmn R6, R12, LSR #29
interrupt_992: l1703: ldmIB R13!, {R0, R7}
l1704: ldr R1, l1706
l1705: b l1707
l1706: .word 1048488
l1707: swpLSb R6, R9, [R1]
l1708: eorVCs R2, R0, R7, ASR R3
l1709: bCS l1715
l1710: add R1, R0, #64
interrupt_145: l1711: sub R11, R6, #-1879048192
interrupt_849: l1712: orr R11, R0, R2, RRX 
interrupt_481: l1713: cmn R0, R2, ROR R0
l1714: b l1716
l1715: b l1711
l1716: tstNE R5, R2
l1717: rsc R11, R11, R11
interrupt_589: l1718: clzLS R3, R14
l1719: eorVS R14, R0, #-33554432
l1720: subVC R8, R5, R10, LSL R3
l1721: swi #13523991
l1722: bPL l1728
l1723: add R1, R0, #122
l1724: eorHI R9, R8, R9
l1725: subHIs R1, R0, #3072
interrupt_44: l1726: clz R7, R3
l1727: b l1729
l1728: b l1724
l1729: mov R5, #52
l1730: ldrh R11, [sp, -R5]
l1731: clz R9, R1
interrupt_675: l1732: swi #7369329
interrupt_944: l1733: swi #4266029
l1734: subNE R8, R10, R15
l1735: orrCCs R5, R8, #-1140850687
l1736: clz R8, R1
l1737: eorLTs R1, R8, #4
l1738: stmIA R13, {R2, R3, R14}
l1739: bCS l1746
l1740: add R1, R0, #173
interrupt_578: l1741: sbcLSs R10, R1, #192512
l1742: mvnGE R6, R14, ASR R5
l1743: adcs R5, R6, R11
l1744: rsbCSs R10, R6, #47104
interrupt_526: l1745: b l1747
l1746: b l1741
l1747: bPL l1754
interrupt_912: l1748: add R1, R0, #123
l1749: subGTs R5, R6, #6291456
l1750: eorEQ R10, R4, #235520
l1751: tstGE R8, R9
interrupt_108: l1752: subGE R2, R12, R5, ROR #13
l1753: b l1755
l1754: b l1749
interrupt_205: l1755: mov R5, #10
l1756: strGTh R7, [sp, -R5]
interrupt_710: l1757: cmn R2, R3
l1758: eors R8, R14, #-218103808
l1759: andPL R10, R14, R4, ROR R10
l1760: subLTs R14, R6, R4, ASR R14
interrupt_642: l1761: cmnEQ R10, R8
l1762: mvnLT R3, R10
l1763: b l1770
l1764: add R1, R0, #126
l1765: rscNE R9, R5, R1, ASR R6
interrupt_475: l1766: cmnPL R0, R2, RRX 
l1767: tstHI R5, R9, ASR R0
interrupt_332: l1768: mvnVCs R3, R12, ROR R4
l1769: b l1771
l1770: b l1765
l1771: orrLE R11, R8, R6, ROR #20
l1772: stmDB R13!, {R0, R1, R9, R10, R14}
l1773: rsc R8, R1, R7
interrupt_351: l1774: bicMIs R2, R6, R10, LSL R7
interrupt_213: l1775: ldrB R2, [sp, #+8]
l1776: teqVC R9, R4, LSR #29
interrupt_790: l1777: rsbs R3, R11, R2
l1778: bicVS R10, R14, #-469762045
l1779: andCSs R6, R4, R12, LSL R0
l1780: bCC l1788
l1781: add R8, R11, R11
interrupt_701: l1782: subLTs R0, R14, R0
interrupt_613: l1783: cmn R14, #536870912
l1784: cmpPL R7, R4, RRX 
l1785: teqCS R2, #36962304
interrupt_976: l1786: adcMIs R6, R10, R2, LSL #3
l1787: bic R1, R9, R0
interrupt_165: l1788: orrNE R3, R0, R14, RRX 
l1789: rscPLs R9, R6, R11, RRX 
l1790: strCCh R1, [sp, #+28]
l1791: bGT l1799
l1792: bic R10, R12, R10
l1793: mov R14, #112197632
l1794: bicMI R12, R12, R10, RRX 
l1795: tstEQ R4, #211968
l1796: eorLEs R3, R15, R7
l1797: orr R4, R8, R7, ASR #28
l1798: mvn R9, R2, RRX 
l1799: tstEQ R6, #12736
interrupt_232: l1800: mov R8, #7
interrupt_338: l1801: ldrVCsb R9, [sp, -R8]
l1802: teq R11, R4
l1803: movGE R0, R7
l1804: ldrsb R14, [sp, #-24]
l1805: rsc R1, R14, R14, RRX 
l1806: bicGE R12, R5, R11
l1807: bEQ l1814
l1808: cmpGT R11, R7
l1809: adds R6, R7, R10, LSL #3
l1810: cmp R9, R6, RRX 
l1811: mvns R5, R1, LSL R3
l1812: clz R7, R2
l1813: mvnPL R12, R11, RRX 
l1814: sub R4, R0, R3, RRX 
l1815: rscMI R1, R4, R15
interrupt_80: l1816: teq R15, #241664
l1817: rsb R2, R4, R11
l1818: cmnLE R0, R4, ASR R7
l1819: stmDA R13!, {R2, R3, R9}
l1820: ldrsb R5, [sp, #-10]
l1821: subCCs R7, R12, #12032
l1822: mvnGEs R14, R0
l1823: subPL R1, R7, #8716288
l1824: mvnLTs R0, R11, RRX 
l1825: mov R2, #12
l1826: strHI R9, [sp, +R2]
interrupt_916: l1827: subGE R11, R10, R0, ASR R6
l1828: mvnLT R1, R3, LSR #28
l1829: ldr R11, l1831
l1830: b l1832
l1831: .word 1048536
interrupt_766: l1832: swpHIb R14, R14, [R11]
l1833: orr R3, R4, R10
l1834: eors R14, R12, R0
l1835: ldrCCB R8, [sp, #+43]
l1836: adc R12, R3, R0
l1837: mov R1, #48
interrupt_156: l1838: ldrsb R14, [sp, +R1]
l1839: strVCh R0, [sp, #+0]
l1840: eorNEs R8, R5, R14, LSR R8
l1841: addEQ R9, R11, R12, LSL R9
l1842: rsc R8, R3, #1006632961
l1843: stmDB R13, {R2, R6, R11, R15}
l1844: mov R0, #1
l1845: ldrLSB R7, [sp, +R0]
l1846: and R5, R14, R2
l1847: ldr R11, l1849
l1848: b l1850
l1849: .word 1048524
l1850: swpCCb R3, R9, [R11]
l1851: mvnEQ R2, #73728
l1852: clzPL R1, R3
l1853: ldr R14, l1855
l1854: b l1856
l1855: .word 1048480
l1856: swp R0, R7, [R14]
interrupt_61: l1857: swi #1462539
l1858: andNEs R10, R3, R6, RRX 
interrupt_459: l1859: rsbs R5, R2, R6, ASR #25
l1860: subVS R1, R8, R11
interrupt_644: l1861: subs R7, R2, #704512
l1862: cmnNE R7, R15
l1863: ldr R7, l1865
l1864: b l1866
l1865: .word 1048532
l1866: swpb R14, R10, [R7]
l1867: addLEs R10, R15, R4, LSR #18
l1868: cmp R11, #5824
l1869: swi #15277043
l1870: cmp R2, R2, ASR R9
l1871: ldr R5, [sp, #-16]
l1872: sbc R0, R12, R5, ASR R9
l1873: stmIA R13!, {R0, R1, R2, R3, R5, R7, R8, R10, R11, R12, R14, R15}
l1874: swi #1329658
l1875: ldrEQB R1, [sp, #-70]
l1876: mov R3, #52
l1877: ldrsh R3, [sp, -R3]
l1878: mov R2, #60
interrupt_151: l1879: str R11, [sp, -R2]!
l1880: ldr R12, l1882
l1881: b l1883
l1882: .word 1048516
interrupt_450: l1883: swpCS R6, R8, [R12]
l1884: ldrsh R7, [sp, #+6]
l1885: teq R9, R4, LSL #19
l1886: bNE l1894
interrupt_911: l1887: add R1, R0, #213
l1888: sub R0, R11, R0, RRX 
l1889: eors R3, R11, #-1610612727
l1890: addMIs R12, R12, R7, LSL #2
l1891: eorLS R7, R5, R2
l1892: cmn R0, R3, ROR #10
l1893: b l1895
l1894: b l1888
l1895: cmpLE R11, R15
l1896: subMIs R6, R4, #406847488
interrupt_762: l1897: tstVS R10, R12
l1898: stmGEDA R13, {R14}
l1899: swi #1565262
l1900: subs R8, R12, R6
l1901: orrs R11, R0, R7, RRX 
l1902: ldr R14, l1904
l1903: b l1905
l1904: .word 1048496
l1905: swpCSb R6, R2, [R14]
l1906: ands R6, R8, R8, LSL #24
l1907: ldmIB R13!, {R1, R7}
interrupt_346: l1908: ldrLSsb R6, [sp, #+43]
l1909: str R11, [sp, #+4]
l1910: strB R5, [sp, #+40]
l1911: movGTs R8, R9, LSL R1
l1912: teq R14, R9
l1913: subHI R9, R4, R15, LSL #6
l1914: orr R14, R10, R1, LSR #18
l1915: cmn R14, #1648
l1916: bics R8, R5, R6
l1917: mov R6, #44
l1918: str R5, [sp, +R6]!
l1919: movVS R10, R8, LSL #2
l1920: rsbLTs R5, R0, R7, ASR R11
l1921: swi #6137504
l1922: tstVC R0, R11, LSR #21
l1923: rsbNEs R7, R8, #-201326592
interrupt_846: l1924: andMIs R6, R15, R0, RRX 
interrupt_653: l1925: cmn R5, R11
interrupt_282: l1926: teqCC R15, #2013265922
l1927: bCS l1935
l1928: add R1, R0, #30
l1929: teq R3, R6, ROR #18
l1930: teqVS R7, R0
l1931: tstVC R1, R2, ROR #23
l1932: and R3, R12, #320
l1933: addLS R14, R12, R10, RRX 
l1934: b l1936
l1935: b l1929
interrupt_866: l1936: subs R12, R11, #172
l1937: b l1944
l1938: add R1, R0, #242
l1939: teq R14, #22
l1940: bic R6, R14, R3
l1941: subVC R2, R6, R0
interrupt_662: l1942: adcs R11, R14, R12, LSR #26
l1943: b l1945
interrupt_885: l1944: b l1939
l1945: swi #6528970
l1946: swi #12467786
l1947: orrGTs R1, R11, R8
l1948: and R11, R4, R8
l1949: clzGT R9, R8
l1950: swi #15108705
interrupt_126: l1951: bics R14, R7, R7, ROR R1
l1952: mov R0, #4
l1953: ldrh R11, [sp, -R0]
l1954: rsc R9, R4, R7, ROR R0
l1955: ldrLEsh R1, [sp, #-38]
interrupt_471: l1956: cmnGE R11, #143654912
l1957: rsc R11, R8, R12, RRX 
l1958: mov R3, #9
l1959: strB R9, [sp, -R3]
interrupt_373: l1960: mov R7, #28
l1961: ldrh R3, [sp, -R7]
interrupt_281: l1962: ldmIA R13, {R6}
l1963: bLE l1965
l1964: cmp R11, #1006632960
l1965: movs R3, R8
l1966: adcNEs R1, R9, #12648448
l1967: rscVSs R8, R9, R4
l1968: addEQ R11, R10, R15, ROR #27
l1969: swi #7261261
interrupt_584: l1970: movs R4, #264241152
interrupt_131: l1971: ldrB R3, [sp, #-12]
l1972: subLT R0, R14, R2, ROR R6
l1973: movs R2, R15
l1974: bicLEs R2, R7, R10
l1975: ldr R9, l1977
l1976: b l1978
l1977: .word 1048528
l1978: swpGTb R0, R11, [R9]
l1979: ldrh R2, [sp, #+10]
l1980: b l1983
l1981: eorCS R11, R0, R11
l1982: orrs R14, R11, R11
l1983: eors R1, R12, R0, ROR #21
interrupt_361: l1984: ldrMIB R5, [sp, #-44]
interrupt_380: l1985: sbc R14, R6, R9
l1986: ldrEQsh R11, [sp, #-26]
interrupt_760: l1987: adcPL R11, R6, R0, ASR R0
interrupt_678: l1988: sbcLEs R11, R1, R8, RRX 
l1989: mvn R4, R8
l1990: swi #15617785
l1991: adcVS R4, R0, R8, RRX 
l1992: swi #5461984
l1993: cmn R6, R10
l1994: subGE R4, R1, #69632
interrupt_25: l1995: rscGTs R10, R8, #177209344
interrupt_731: l1996: ldr R6, l1998
l1997: b l1999
l1998: .word 1048508
l1999: swpVCb R14, R5, [R6]
interrupt_175: l2000: eorLTs R4, R2, R10, LSL R1
l2001: b l2008
l2002: add R1, R0, #171
interrupt_97: l2003: adcs R3, R8, #222298112
interrupt_780: l2004: eorEQ R11, R9, R2
l2005: mvn R4, R5, ASR #11
l2006: orrCS R0, R6, R9
l2007: b l2009
l2008: b l2003
l2009: adcCCs R10, R8, R5
l2010: eorVCs R2, R14, #675840
interrupt_627: l2011: sub R6, R6, R8, ROR R14
l2012: andVC R5, R8, R5, LSL R3
l2013: clzEQ R2, R7
l2014: cmpMI R11, #29622272
l2015: clz R5, R14
l2016: teq R6, R4, ROR R7
l2017: ldrHIB R7, [sp, #+8]
l2018: tst R3, R3, LSL R0
l2019: clzPL R9, R4
l2020: b l2026
l2021: add R1, R0, #144
l2022: mvnLE R0, R5, LSR R14
l2023: sub R0, R2, R2, LSR #11
l2024: movGE R4, R7, LSL #30
l2025: b l2027
l2026: b l2022
interrupt_317: l2027: bLE l2032
l2028: add R1, R0, #224
l2029: eorLTs R14, R14, R2, LSL #13
l2030: orrs R0, R12, R12, LSL R0
l2031: b l2033
l2032: b l2029
l2033: andHI R2, R9, #11730944
l2034: rsb R9, R10, R1, RRX 
l2035: tst R9, R10, RRX 
l2036: swi #5444125
l2037: adcNE R9, R2, R7, LSL R7
interrupt_833: l2038: mov R11, #56
l2039: ldr R10, [sp], -R11
interrupt_40: l2040: strVCB R2, [sp, #+67]
l2041: cmnLE R2, #236
interrupt_334: l2042: nop
l2043: subs R7, R3, #486539264
l2044: mov R9, #48
l2045: strNEh R14, [sp, +R9]
l2046: str R1, [sp, #+44]!
l2047: mov R0, #36
l2048: str R9, [sp, -R0]
l2049: orrPLs R4, R10, R10, ROR #24
l2050: b l2056
l2051: bicGT R5, R15, #2801664
l2052: mvnGEs R9, R9, LSL #23
interrupt_559: l2053: orrCSs R7, R10, #214016
interrupt_970: l2054: tstVC R14, R6
l2055: cmnEQ R6, #19456
l2056: movs R11, R10, ASR R14
l2057: swi #11137113
interrupt_109: l2058: mov R0, #8
l2059: ldr R1, [sp], +R0
l2060: ldr R11, l2062
l2061: b l2063
l2062: .word 1048500
l2063: swpGEb R4, R9, [R11]
l2064: mov R3, #40
l2065: ldrsb R6, [sp, -R3]
l2066: ldr R5, l2068
interrupt_782: l2067: b l2069
interrupt_816: l2068: .word 1048496
l2069: swp R6, R10, [R5]
l2070: addGTs R3, R12, #25344
l2071: mov R0, #28
l2072: strh R1, [sp, -R0]
l2073: mov R4, #12
interrupt_523: l2074: strVCh R14, [sp, +R4]
l2075: clz R8, R10
l2076: mov R9, #48
interrupt_385: l2077: str R0, [sp], -R9
l2078: teqGE R5, R2, ROR R2
l2079: tstLS R14, #3216
l2080: ldrsh R9, [sp, #+16]
l2081: sbcs R10, R2, R2, RRX 
l2082: strB R5, [sp, #+24]
l2083: ldmIA R13!, {R2, R8, R12, R14}
l2084: sub R14, R15, R11
interrupt_914: l2085: b l2091
l2086: andGEs R1, R4, R0, ASR R14
l2087: sbcLS R11, R0, R6
l2088: rscs R0, R9, R2, ROR R10
l2089: subCC R2, R5, R6, ASR #29
interrupt_750: l2090: cmnCC R9, R15
interrupt_904: l2091: rscs R10, R2, R10, LSR R11
l2092: swi #9548463
l2093: movNEs R2, R5
l2094: sbcGTs R14, R3, R15
l2095: ldmDA R13, {R0, R4, R5, R14}
l2096: ldrh R0, [sp, #+6]
l2097: eorLS R9, R7, R12, RRX 
interrupt_934: l2098: b l2107
l2099: add R1, R0, #190
interrupt_886: l2100: tst R2, R6, ASR R0
l2101: movs R12, R3, RRX 
l2102: adcs R6, R1, R12
interrupt_147: l2103: tst R3, R11
l2104: adds R1, R15, R4, RRX 
interrupt_818: l2105: cmnGE R3, #49
interrupt_302: l2106: b l2108
l2107: b l2100
l2108: mov R2, #0
interrupt_372: l2109: ldr R14, [sp, +R2]!
l2110: ldrsb R2, [sp, #+34]
l2111: sub R3, R4, R2, LSR #8
l2112: cmnLS R12, #-805306359
l2113: bCS l2123
interrupt_778: l2114: mov R3, #141
l2115: cmnVC R4, #1073741868
l2116: bicGT R4, R10, R15
l2117: movCCs R10, R10
interrupt_638: l2118: adcLTs R3, R15, #16000
l2119: cmn R0, #3457024
interrupt_103: l2120: rscs R11, R8, R0
interrupt_840: l2121: teqEQ R12, R9, LSL #22
l2122: clzCC R4, R1
l2123: teqCC R14, R12, LSR #27
interrupt_880: l2124: stmDB R13!, {R1, R4, R5, R6}
interrupt_576: l2125: mov R1, R7
l2126: strCSh R0, [sp, #+8]
l2127: ldmIA R13, {R2, R3, R4, R6, R7, R8, R9, R11}
l2128: mov R14, #8
interrupt_462: l2129: ldrNEh R4, [sp, +R14]
l2130: teqEQ R5, R6, LSR #5
l2131: stmPLDA R13, {R2}
interrupt_648: l2132: rscs R2, R1, R12
l2133: ldmGEIB R13, {R7, R9}
l2134: subLEs R12, R0, R11, ROR #20
l2135: orrs R10, R0, R11
l2136: swi #14528488
l2137: swi #12733646
l2138: movNE R2, R1, ROR #2
interrupt_337: l2139: ldr R8, [sp], #+52
l2140: ldr R3, l2142
interrupt_434: l2141: b l2143
l2142: .word 1048492
l2143: swpLEb R14, R1, [R3]
interrupt_319: l2144: swi #3446695
l2145: cmnHI R3, #1879048192
l2146: cmn R7, #820
l2147: mov R11, #5
l2148: ldrGEsb R2, [sp, -R11]
l2149: orr R2, R10, R1, LSL #21
l2150: ldr R7, l2152
l2151: b l2153
interrupt_834: l2152: .word 1048520
l2153: swpb R5, R2, [R7]
l2154: teqGE R2, R10, ROR #8
l2155: b l2159
l2156: add R1, R0, #206
interrupt_979: l2157: adds R5, R2, #207
l2158: b l2160
l2159: b l2157
l2160: strCSB R11, [sp, #-10]
l2161: swi #5854303
interrupt_119: l2162: mov R5, #26
l2163: strB R8, [sp, -R5]
l2164: adc R6, R11, R10, ROR R3
l2165: mov R4, #12
l2166: ldrsb R7, [sp, -R4]
l2167: ldrsh R11, [sp, #-62]
l2168: mov R14, #30
interrupt_989: l2169: strVCh R12, [sp, -R14]
l2170: sbcPLs R6, R5, #4194304
l2171: rscGTs R12, R7, R9, RRX 
l2172: ldr R7, l2174
interrupt_864: l2173: b l2175
l2174: .word 1048532
l2175: swpCC R6, R3, [R7]
l2176: mov R10, R11, ROR #29
l2177: ldrEQsh R0, [sp, #-52]
l2178: mov R6, #12
l2179: strEQB R10, [sp, -R6]
l2180: b l2188
l2181: add R1, R0, #204
l2182: subGE R6, R1, #58
l2183: eorGTs R11, R10, R1, ROR R11
l2184: bicVCs R0, R1, R12, ROR R7
l2185: rsbPLs R4, R12, R3
interrupt_415: l2186: sub R5, R0, R3
l2187: b l2189
l2188: b l2182
interrupt_122: l2189: ldrNEsh R14, [sp, #-34]
interrupt_636: l2190: eor R4, R6, R1, RRX 
l2191: rsc R10, R9, #-1744830464
l2192: add R8, R4, #2512
l2193: ldr R0, l2195
interrupt_327: l2194: b l2196
l2195: .word 1048484
l2196: swpLTb R9, R10, [R0]
l2197: stmIA R13!, {R1}
l2198: stmDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R13, R14, R15}
l2199: cmnHI R0, R10, ASR R12
l2200: mov R1, #10
l2201: strh R9, [sp, -R1]
interrupt_331: l2202: mov R5, #48
interrupt_895: l2203: ldrh R6, [sp, -R5]
interrupt_668: l2204: nop
l2205: stmDB R13!, {R0, R8, R12, R15}
l2206: orrs R10, R0, R6
l2207: cmnCS R5, R9, ROR R7
l2208: swi #12188977
l2209: clzLE R7, R11
l2210: teqVC R8, #8781824
l2211: eorCSs R11, R1, R2, RRX 
l2212: cmpEQ R1, R4
l2213: mov R3, #18
l2214: ldrVCB R10, [sp, -R3]
l2215: swi #16755905
l2216: teq R7, #1654784
l2217: tstCC R5, R3, LSR #8
l2218: mov R6, #20
l2219: ldr R7, [sp, +R6]
interrupt_209: l2220: teq R4, R8
interrupt_448: l2221: mov R12, #4
l2222: ldrsh R1, [sp, -R12]
l2223: addCCs R2, R10, R4, ASR #6
l2224: str R15, [sp], #+4
l2225: mvns R0, R11
l2226: eorLEs R1, R15, R7
l2227: subs R12, R7, #933888
interrupt_348: l2228: ldr R7, l2230
l2229: b l2231
l2230: .word 1048500
l2231: swp R4, R5, [R7]
l2232: swi #8923265
interrupt_621: l2233: mov R6, #38
l2234: strVCB R0, [sp, -R6]
l2235: ldr R9, [sp, #-36]!
l2236: ldrsb R2, [sp, #-12]
l2237: strh R5, [sp, #+20]
l2238: ldr R10, l2240
l2239: b l2241
l2240: .word 1048520
l2241: swpVCb R5, R1, [R10]
l2242: ands R7, R5, R1, RRX 
l2243: rsbEQs R10, R11, #1982464
l2244: rscLE R14, R10, R6, RRX 
l2245: bLT l2250
l2246: rscVSs R5, R0, R8, RRX 
l2247: and R12, R11, R12, LSL #24
l2248: cmn R8, R14
l2249: mvns R11, #38400
l2250: mvnLTs R12, R4, ASR R4
l2251: swi #4661370
l2252: strEQh R2, [sp, #+12]
l2253: andCS R12, R7, #36700160
l2254: bic R11, R14, R6
l2255: rsbNEs R8, R12, R6, ASR #25
l2256: teqGT R3, R11, LSL #22
l2257: subCSs R0, R2, R4, LSL #7
interrupt_990: l2258: subGT R3, R0, R14, ROR #21
interrupt_564: l2259: ldr R4, [sp, #+16]
l2260: addPL R8, R14, R0, LSR R2
l2261: ldr R3, l2263
l2262: b l2264
l2263: .word 1048496
l2264: swpVSb R5, R7, [R3]
l2265: nop
l2266: nop
l2267: sbcVS R2, R0, R14, LSR #14
l2268: bEQ l2274
l2269: orrLE R1, R12, R7, LSR #17
l2270: eorHIs R14, R2, R12, ROR R3
l2271: movVCs R11, R5
l2272: cmpCS R15, R14
l2273: bicLE R6, R14, R8, ROR R6
l2274: add R2, R5, R4, ASR R6
l2275: rsb R10, R0, R10
l2276: mov R0, #40
interrupt_726: l2277: str R14, [sp, +R0]!
l2278: subGEs R12, R0, R14
l2279: mov R14, #31
l2280: ldrsb R7, [sp, -R14]
l2281: bLE l2288
l2282: eorVC R3, R2, R14, LSL R11
interrupt_825: l2283: sbcLS R9, R4, R3, LSR #27
interrupt_712: l2284: eorLT R7, R14, R6, LSR #1
l2285: tstVS R15, R3
l2286: adcLTs R14, R9, #432
interrupt_535: l2287: adc R2, R7, #12032
l2288: rscs R9, R11, #6016
l2289: str R5, [sp, #-32]!
l2290: mov R9, #8
l2291: ldrsb R6, [sp, -R9]
interrupt_596: l2292: ldr R9, l2294
interrupt_505: l2293: b l2295
l2294: .word 1048532
l2295: swpb R12, R6, [R9]
l2296: bicEQs R6, R0, R11, ASR #25
interrupt_398: l2297: teqCS R4, R11, ASR #30
l2298: ldr R0, l2300
l2299: b l2301
l2300: .word 1048516
l2301: swpVSb R8, R5, [R0]
l2302: mov R10, #16
l2303: strCSh R12, [sp, +R10]
l2304: movMI R5, R8
l2305: sbcLS R1, R7, R8
l2306: subEQ R4, R6, #181
l2307: ldr R14, l2309
l2308: b l2310
l2309: .word 1048496
l2310: swpGTb R3, R1, [R14]
l2311: tstPL R0, R8, ASR R12
l2312: bLS l2322
l2313: tstLE R9, R8
l2314: tstCC R0, R0, LSR R1
l2315: tst R5, #72
l2316: orrs R14, R2, R5
interrupt_6: l2317: cmpVC R0, #44288
l2318: bicMI R10, R10, #4864
l2319: subs R0, R8, R8, ROR #1
l2320: movs R0, R1, LSR R6
l2321: rscs R11, R6, R5, ROR R0
l2322: rsbGEs R7, R0, R3, RRX 
l2323: swi #12414047
l2324: and R9, R6, R4
interrupt_262: l2325: cmpGE R5, R14, LSL R12
interrupt_647: l2326: clzLT R5, R5
l2327: and R2, R1, R10, LSL R1
l2328: mov R14, #16
l2329: ldrB R12, [sp, -R14]
l2330: orrMIs R12, R4, #888832
l2331: stmDA R13!, {R3, R5, R6, R12}
l2332: mov R1, #36
interrupt_208: l2333: strh R3, [sp, +R1]
interrupt_439: l2334: bGE l2338
l2335: subCSs R6, R0, R6
l2336: subCC R4, R15, R14
l2337: rsb R8, R6, R11, LSR #24
interrupt_610: l2338: subs R5, R12, #671088640
l2339: bVS l2346
interrupt_896: l2340: add R1, R0, #224
l2341: sbcs R9, R1, R14, LSL R14
l2342: movs R14, R15, ASR #24
l2343: mvnMI R11, R14, ROR R7
l2344: teqEQ R9, R11
l2345: b l2347
l2346: b l2341
l2347: strB R0, [sp, #+30]
interrupt_322: l2348: ldr R8, l2350
l2349: b l2351
l2350: .word 1048488
l2351: swpNEb R12, R7, [R8]
interrupt_614: l2352: rsbCSs R5, R1, R0, ROR #28
l2353: mov R3, #28
interrupt_202: l2354: strh R14, [sp, +R3]
l2355: cmnLS R15, #700416
l2356: rsb R11, R6, R12, ASR #23
l2357: ldrVCB R12, [sp, #+15]
l2358: teqGE R1, R7, LSL #12
l2359: ldmDA R13!, {R3}
interrupt_485: l2360: clz R14, R7
l2361: ldrGEsh R10, [sp, #+38]
l2362: tst R3, R6, RRX 
l2363: cmpMI R9, #1184
l2364: clzCS R2, R3
l2365: strCC R5, [sp, #+16]
l2366: adc R12, R0, R2, ROR #11
l2367: tst R11, R8, ROR R5
l2368: ldr R11, l2370
l2369: b l2371
l2370: .word 1048512
l2371: swpCC R2, R12, [R11]
l2372: rsbGTs R11, R3, R4, RRX 
interrupt_813: l2373: ands R7, R10, #419430400
interrupt_95: l2374: mov R7, #44
l2375: str R5, [sp], +R7
l2376: eorPL R2, R7, R3, LSR R2
l2377: movHIs R2, R12
l2378: rsbs R10, R12, R1, LSR #28
l2379: cmpHI R12, R3, LSR R4
l2380: teqMI R0, R1
l2381: orrCCs R5, R5, R11
l2382: b l2390
interrupt_173: l2383: addVSs R1, R4, R2, LSR R7
l2384: adds R0, R7, R7, LSR #11
l2385: eors R1, R11, R9
l2386: tst R8, R9, LSR R5
interrupt_788: l2387: addVSs R10, R6, R0
l2388: teq R2, R14
l2389: cmpEQ R0, R12
l2390: tstVS R5, R6
l2391: subVC R1, R7, #2013265921
l2392: andCS R4, R11, R2
l2393: subs R7, R6, R5, LSR #12
l2394: add R3, R15, R14
l2395: clz R5, R6
l2396: mvn R11, R14
l2397: mov R9, #24
l2398: strh R7, [sp, -R9]
l2399: ldr R14, [sp, #+20]!
l2400: stmDA R13!, {R13, R14}
l2401: ldrsb R1, [sp, #-50]
l2402: swi #1352746
l2403: addCCs R11, R2, #7808
l2404: clzGE R8, R7
l2405: rsbMI R8, R2, R12, ROR R7
l2406: mov R3, #30
l2407: ldrCSsb R10, [sp, -R3]
interrupt_347: l2408: b l2416
l2409: eorPL R10, R10, R8, LSR R5
l2410: bicCSs R14, R11, R14, ROR R5
l2411: rscHIs R11, R2, R6, LSL R10
l2412: teqCS R9, R12, ROR R0
l2413: orr R3, R12, #254803968
l2414: rscPL R14, R7, R11
l2415: mvn R14, R6, ROR #10
interrupt_714: l2416: adcs R7, R8, R1, RRX 
l2417: cmp R14, R3, LSL #12
l2418: ldr R5, l2420
l2419: b l2421
interrupt_529: l2420: .word 1048520
l2421: swpHIb R1, R3, [R5]
l2422: mov R5, #58
l2423: ldrh R3, [sp, -R5]
interrupt_456: l2424: clzLT R1, R10
l2425: cmn R7, R7, ASR R0
l2426: ldr R4, l2428
l2427: b l2429
l2428: .word 1048524
l2429: swpb R6, R9, [R4]
l2430: mvnPL R0, #893386752
l2431: ldr R1, l2433
l2432: b l2434
l2433: .word 1048540
interrupt_703: l2434: swpb R10, R2, [R1]
l2435: ldrB R9, [sp, #+5]
l2436: ldrsb R4, [sp, #-2]
l2437: mov R14, #34
l2438: ldrB R12, [sp, -R14]
interrupt_978: l2439: sbcNEs R3, R9, R3
l2440: clzGE R14, R8
l2441: teqHI R5, R6
l2442: rsb R4, R1, R3, LSL #19
l2443: add R4, R4, R7, LSL #16
l2444: bics R1, R14, R4
l2445: swi #5300040
l2446: bLT l2455
l2447: add R1, R0, #43
interrupt_98: l2448: cmpVC R8, R5, RRX 
l2449: cmnNE R2, R0, RRX 
l2450: sbcs R14, R9, R2, RRX 
l2451: mvn R11, R5, LSL #6
l2452: mvns R7, #401408
interrupt_889: l2453: movHIs R2, R14, LSR R9
interrupt_386: l2454: b l2456
l2455: b l2448
interrupt_206: l2456: cmnVC R12, R14, LSL #19
interrupt_4: l2457: adcMI R4, R5, R1, LSR R3
l2458: movMI R2, R14, ASR R11
l2459: andLT R1, R0, R9, RRX 
l2460: ldrGTsb R1, [sp, #-32]
interrupt_858: l2461: mov R14, #56
l2462: ldr R10, [sp], -R14
l2463: swi #10302070
l2464: eors R2, R6, #114688
l2465: mov R10, #35
l2466: strB R0, [sp, +R10]
l2467: bicHI R9, R4, R9
l2468: ldmIA R13, {R1, R2, R3, R5, R8, R10, R11, R12, R14}
l2469: str R12, [sp], #+24
l2470: mov R10, #12
l2471: str R8, [sp, -R10]
l2472: swi #11750595
interrupt_53: l2473: ldr R11, l2475
l2474: b l2476
interrupt_716: l2475: .word 1048488
l2476: swpGTb R0, R3, [R11]
l2477: rsbCCs R4, R10, R12, ROR R8
l2478: b l2479
l2479: cmnLS R4, R10, RRX 
l2480: ldr R7, l2482
l2481: b l2483
l2482: .word 1048520
l2483: swpVCb R2, R3, [R7]
l2484: subLS R12, R9, R6, LSL R4
l2485: cmn R9, #-2147483648
l2486: ldr R5, l2488
l2487: b l2489
l2488: .word 1048528
l2489: swp R10, R4, [R5]
l2490: swi #11515786
interrupt_725: l2491: adds R8, R11, R15, ROR #21
l2492: sbcVC R1, R6, R10, ASR R2
l2493: ldr R6, l2495
l2494: b l2496
l2495: .word 1048504
interrupt_291: l2496: swpCCb R0, R9, [R6]
l2497: bics R9, R1, #23068672
l2498: swi #2099330
l2499: ldrCCB R12, [sp, #+3]
l2500: teqEQ R11, R9, ROR R6
l2501: cmn R7, #973078528
l2502: orrs R4, R12, R2
l2503: ldrsb R0, [sp, #+15]
l2504: stmVSDA R13, {R1, R7, R10}
l2505: rsc R14, R2, R11, LSL R10
l2506: rsbCS R4, R12, R15, LSR #16
l2507: subHIs R1, R6, #52428800
l2508: ldrGEsb R9, [sp, #+20]
interrupt_925: l2509: orrEQs R14, R11, R2
l2510: cmp R11, #-1543503870
l2511: sbcPL R4, R6, R12, LSR R7
interrupt_719: l2512: nop
interrupt_41: l2513: addLS R3, R1, R7
l2514: teqEQ R15, R5
interrupt_609: l2515: stmIB R13!, {R0, R4, R10, R15}
l2516: ldrsb R12, [sp, #-38]
l2517: ldmIB R13, {R1, R6, R8}
l2518: stmDA R13!, {R4, R7, R15}
l2519: subNEs R0, R15, #164
l2520: sbc R1, R12, R6
l2521: sbcs R0, R10, #11665408
l2522: bPL l2532
l2523: eorEQs R7, R7, R15
l2524: mvnEQ R2, R5, LSR #6
l2525: andEQs R4, R7, R1, LSR #1
interrupt_980: l2526: mvn R12, R2, RRX 
interrupt_985: l2527: andGEs R4, R5, #1073741835
l2528: sbcVCs R1, R12, R11
l2529: sbcs R4, R8, #1325400064
l2530: subs R11, R8, R1
l2531: clzVC R6, R3
interrupt_959: l2532: mvnGTs R3, R9, ROR #29
l2533: mov R14, #10
l2534: strh R10, [sp, +R14]
l2535: stmLTIA R13, {R0, R2, R14}
l2536: sbcNE R9, R5, R0, LSL R0
interrupt_738: l2537: rscVSs R1, R9, R8
l2538: sbcLSs R12, R1, R11
interrupt_73: l2539: swi #6850004
l2540: ldmDA R13!, {R2, R3, R5, R7, R8}
l2541: cmnLE R11, R1, RRX 
interrupt_882: l2542: clzHI R5, R10
l2543: mov R5, #26
l2544: ldrGEB R8, [sp, +R5]
interrupt_303: l2545: sub R4, R1, R7
l2546: mov R10, #58
interrupt_447: l2547: ldrsb R7, [sp, +R10]
l2548: ldr R14, l2550
interrupt_548: l2549: b l2551
l2550: .word 1048516
l2551: swpb R12, R6, [R14]
l2552: mov R9, #16
l2553: ldrsh R5, [sp, +R9]
l2554: sbc R12, R1, R6, ASR R6
interrupt_873: l2555: ldrsb R2, [sp, #+22]
l2556: subs R9, R12, #3768320
l2557: ldrsh R14, [sp, #+50]
interrupt_736: l2558: swi #15571954
l2559: stmIA R13, {R0, R3, R8, R13}
l2560: ldrVCsb R4, [sp, #-8]
l2561: mvnNE R7, R11
l2562: mvnLEs R6, R2, RRX 
l2563: mov R10, #16
l2564: ldrsh R1, [sp, -R10]
interrupt_405: l2565: addLSs R6, R12, #-1677721600
l2566: ldrLTB R6, [sp, #+23]
l2567: rscCS R4, R12, R12, ROR #8
l2568: mov R14, #48
l2569: str R1, [sp], +R14
l2570: cmpCS R14, R5
l2571: subs R1, R0, #1408
l2572: ldrsh R4, [sp, #-28]
l2573: subHI R9, R7, R8, LSR R1
l2574: ldrsh R5, [sp, #-38]
l2575: swi #7785379
interrupt_571: l2576: rscLTs R3, R1, #2097152
l2577: orrPLs R3, R15, #65011712
l2578: adcNE R8, R14, R14, LSR #3
interrupt_829: l2579: addLT R6, R12, R11, RRX 
l2580: orr R4, R4, R5
l2581: cmn R4, #155648
l2582: ldrGEh R5, [sp, #-28]
l2583: ands R11, R4, R10, ASR #2
l2584: mov R7, #12
interrupt_876: l2585: str R15, [sp, -R7]
l2586: andEQ R2, R10, R3, LSR R14
l2587: bVC l2597
l2588: cmnLS R7, R4
l2589: sbcs R12, R7, R5, LSL #21
l2590: sbc R3, R15, #-134217725
interrupt_50: l2591: cmp R1, R9
l2592: eor R11, R4, R2, ROR R14
interrupt_183: l2593: cmpMI R3, R8
l2594: mvnEQs R7, R2, LSR R12
l2595: adcNE R11, R12, #53248
l2596: sbcVCs R11, R3, #782336
l2597: bicHIs R5, R14, R9, LSL R14
l2598: strEQh R1, [sp, #-60]
l2599: rscGT R4, R11, R15
interrupt_565: l2600: b l2603
l2601: rscEQs R12, R6, R12, ROR R11
l2602: sbcs R10, R6, #40
l2603: rsbGT R8, R4, R4
l2604: subLTs R0, R4, R2
l2605: clzCC R9, R7
interrupt_563: l2606: swi #669918
l2607: strPLB R11, [sp, #-6]
l2608: movs R14, #192
l2609: mov R1, #40
l2610: str R5, [sp], -R1
l2611: stmCCDA R13, {R2}
l2612: movEQ R11, R0, RRX 
l2613: orr R1, R14, R7
l2614: addNEs R14, R8, R2, LSL R7
l2615: bicNE R3, R9, R10
l2616: cmp R3, R9
l2617: ldr R1, l2619
interrupt_353: l2618: b l2620
l2619: .word 1048484
interrupt_604: l2620: swp R7, R3, [R1]
l2621: swi #8420668
l2622: sbcLSs R2, R11, R14, ROR #24
interrupt_133: l2623: orrGTs R11, R11, R12, ASR R3
l2624: stmDA R13!, {R13}
l2625: cmpGE R3, #388
l2626: sbcs R7, R12, #33280
l2627: bHI l2631
l2628: clzLT R6, R3
l2629: teq R10, R1, LSR R6
l2630: orrLE R10, R5, #29696
l2631: subVSs R2, R3, #9437184
interrupt_900: l2632: swi #5999907
l2633: sbcs R10, R9, R7, ROR #19
l2634: ldr R10, l2636
l2635: b l2637
l2636: .word 1048536
interrupt_413: l2637: swp R12, R7, [R10]
l2638: clz R3, R6
l2639: orr R5, R8, R6
interrupt_802: l2640: mvnEQs R12, R5
interrupt_857: l2641: bicLEs R7, R11, R15, ASR #29
l2642: mov R3, #37
l2643: ldrsb R4, [sp, +R3]
l2644: ldr R3, l2646
interrupt_203: l2645: b l2647
l2646: .word 1048516
l2647: swpb R14, R2, [R3]
l2648: swi #12271446
l2649: clz R0, R4
l2650: rsbVS R11, R2, R2, LSL #9
l2651: swi #269845
l2652: mvns R4, #37632
l2653: rscPLs R4, R7, R7, LSL #19
interrupt_63: l2654: strh R3, [sp, #+38]
interrupt_486: l2655: rscs R1, R12, R14, ROR #18
l2656: teq R10, #471040
l2657: ldrLEsh R4, [sp, #+4]
l2658: mov R7, #47
l2659: ldrEQB R5, [sp, +R7]
l2660: stmDA R13!, {R5}
l2661: mvn R1, #32768
l2662: sbcCS R7, R11, R1, LSR R2
interrupt_786: l2663: mov R8, #4
l2664: str R0, [sp, -R8]!
l2665: subLE R11, R5, R3, ASR #14
l2666: cmpGE R15, R8, RRX 
l2667: ldr R2, [sp], #-12
l2668: b l2676
l2669: add R1, R0, #52
l2670: and R8, R9, R14, ROR R3
l2671: mvnLSs R2, #512
interrupt_474: l2672: tst R12, #1073741879
l2673: cmpMI R3, R12, ROR #18
l2674: and R4, R6, #503316480
l2675: b l2677
l2676: b l2670
l2677: mov R1, #40
l2678: ldrNE R8, [sp, +R1]
l2679: b l2680
l2680: rsb R1, R11, R7, LSL R7
l2681: swi #16546141
l2682: mov R6, #74
l2683: ldrsh R9, [sp, +R6]
interrupt_239: l2684: swi #10835051
l2685: mov R9, #40
interrupt_887: l2686: ldr R0, [sp, +R9]
interrupt_982: l2687: ldrsh R2, [sp, #+40]
l2688: tst R6, #-536870908
l2689: mvnHIs R1, R0, ROR #12
l2690: cmpMI R0, R11
l2691: swi #11727589
interrupt_329: l2692: mvnVSs R14, R4
l2693: stmIB R13!, {R13, R14, R15}
interrupt_954: l2694: bCC l2703
l2695: orrCC R11, R10, R7, LSR #30
l2696: cmn R9, R6, ASR R10
l2697: bicCC R11, R14, R9, ASR #20
l2698: mvn R5, #-603979775
interrupt_451: l2699: sbc R7, R6, R10, LSL #15
l2700: add R3, R15, R0
l2701: subLS R8, R7, R4
l2702: sub R1, R12, R9
l2703: cmp R9, R4, RRX 
interrupt_815: l2704: bLE l2711
interrupt_553: l2705: add R1, R0, #116
l2706: subNE R11, R6, R8, LSL R14
l2707: cmpCS R2, R4, RRX 
l2708: subVS R7, R7, R3, LSR R4
l2709: clzLS R2, R11
l2710: b l2712
l2711: b l2706
l2712: strB R7, [sp, #+53]
l2713: ldrsh R0, [sp, #+6]
l2714: stmIB R13!, {R13, R14, R15}
l2715: ands R5, R7, #16252928
l2716: swi #16064281
l2717: swi #6346384
interrupt_82: l2718: cmpMI R11, R15, RRX 
l2719: stmIA R13!, {R13}
l2720: mov R11, #14
l2721: strLTh R0, [sp, -R11]
l2722: teq R8, R11, LSR R8
interrupt_665: l2723: mov R10, #40
l2724: ldrsh R10, [sp, +R10]
l2725: movMI R7, R7, LSL R7
interrupt_368: l2726: swi #3391487
l2727: cmn R2, R4, LSR R4
interrupt_587: l2728: eor R9, R5, R1, RRX 
l2729: bicLS R11, R5, R11, ROR R11
l2730: ldr R0, l2732
l2731: b l2733
interrupt_261: l2732: .word 1048520
interrupt_524: l2733: swpb R10, R7, [R0]
l2734: movGT R8, R3, ROR R5
l2735: swi #8665290
interrupt_803: l2736: mov R8, #16
l2737: ldrCSh R11, [sp, -R8]
l2738: swi #12299262
l2739: strB R5, [sp, #+18]
l2740: cmn R14, #121634816
l2741: tst R1, R10, LSL R10
l2742: rsbHIs R14, R0, R8
l2743: clzVC R4, R10
interrupt_807: l2744: sbcs R1, R7, R12, ASR #24
l2745: cmpGE R9, R15, RRX 
l2746: andPL R1, R0, R14, ROR #15
l2747: rsb R5, R10, R3, ASR #15
l2748: mov R7, #26
l2749: ldrh R2, [sp, -R7]
l2750: strVSh R6, [sp, #+16]
l2751: mov R9, #16
l2752: ldr R3, [sp], +R9
l2753: ldr R11, l2755
l2754: b l2756
l2755: .word 1048544
l2756: swpb R7, R14, [R11]
l2757: eorCSs R8, R3, R10, LSL R14
l2758: andGEs R10, R15, #2304
l2759: adcEQ R3, R3, #872415234
l2760: and R14, R15, R0
l2761: sub R14, R12, #536870925
l2762: ldr R12, [sp], #-44
l2763: adcs R11, R15, #2192
l2764: ldmIB R13!, {R1, R2, R4, R6, R7, R10, R14}
interrupt_254: l2765: cmp R1, R6, LSL #8
l2766: ldr R2, l2768
l2767: b l2769
l2768: .word 1048508
l2769: swpGT R1, R0, [R2]
interrupt_210: l2770: ldr R3, [sp, #+28]!
l2771: strVSh R6, [sp, #-14]
l2772: ldr R0, l2774
l2773: b l2775
l2774: .word 1048536
l2775: swpMIb R11, R7, [R0]
l2776: ldr R7, l2778
l2777: b l2779
interrupt_549: l2778: .word 1048516
l2779: swpCCb R9, R0, [R7]
l2780: strB R2, [sp, #-6]
l2781: mov R9, #16
l2782: ldr R9, [sp, -R9]!
l2783: mov R3, #28
l2784: ldr R2, [sp, -R3]!
l2785: clzVC R10, R0
l2786: mov R7, #11
l2787: ldrNEB R12, [sp, +R7]
l2788: cmpHI R10, R5, RRX 
interrupt_905: l2789: bicLEs R0, R12, R6, RRX 
l2790: movLEs R14, R8, LSR #25
l2791: clz R5, R3
l2792: mov R6, #34
l2793: ldrEQsb R1, [sp, +R6]
l2794: eorGE R12, R3, R7, ROR R7
l2795: ldr R11, l2797
l2796: b l2798
l2797: .word 1048532
l2798: swp R12, R2, [R11]
l2799: strCSB R2, [sp, #-7]
l2800: stmIB R13!, {R1, R10, R11}
l2801: andNE R7, R4, R5
l2802: cmpNE R1, R8, LSL R8
l2803: strGEB R1, [sp, #-2]
l2804: strB R5, [sp, #+40]
l2805: tstCC R9, R15, LSL #26
interrupt_917: l2806: teqPL R1, R3, LSR #18
l2807: movVC R4, R5, LSL R7
l2808: bHI l2812
l2809: add R1, R0, #99
l2810: bicVC R9, R3, R6
interrupt_28: l2811: b l2813
l2812: b l2810
l2813: sbcVC R8, R1, R6
l2814: swi #12586755
l2815: rsbEQ R9, R10, R4, RRX 
l2816: mov R10, #4
l2817: str R0, [sp], -R10
interrupt_695: l2818: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R10, R11, R12, R14}
l2819: tstHI R1, R3, RRX 
l2820: mov R11, #42
l2821: strh R6, [sp, -R11]
l2822: teq R7, R15
l2823: clzEQ R14, R9
l2824: movMI R0, R3, RRX 
l2825: ands R4, R15, R2
l2826: nop
l2827: str R3, [sp, #-44]
l2828: nop
interrupt_749: l2829: b l2831
interrupt_673: l2830: clz R1, R6
l2831: clz R0, R6
l2832: sbc R11, R14, R15, LSL #24
interrupt_497: l2833: ldr R6, [sp, #-64]
l2834: ldrHIh R6, [sp, #-44]
l2835: swi #8345388
l2836: b l2840
interrupt_632: l2837: add R1, R0, #4
l2838: movGEs R7, #2030043136
l2839: b l2841
l2840: b l2838
l2841: rsb R12, R0, R9, ASR R7
l2842: swi #5659075
interrupt_449: l2843: swi #9395334
l2844: cmpCS R12, R2, LSL #5
l2845: ldr R4, l2847
l2846: b l2848
l2847: .word 1048520
l2848: swp R9, R14, [R4]
l2849: orr R7, R5, R0, LSL #9
l2850: mov R4, #70
l2851: ldrCCB R11, [sp, -R4]
l2852: mvnLSs R12, R0, RRX 
l2853: teq R10, R15
interrupt_58: l2854: sub R14, R10, R9
l2855: ldr R0, l2857
l2856: b l2858
l2857: .word 1048540
interrupt_400: l2858: swpEQb R3, R2, [R0]
l2859: teqEQ R5, R7, ROR R7
l2860: mvns R11, R10, RRX 
l2861: subCSs R3, R0, R14, ROR #11
l2862: bicVSs R11, R9, R1
l2863: str R12, [sp], #-36
l2864: swi #6453082
l2865: ldr R12, l2867
l2866: b l2868
l2867: .word 1048508
l2868: swpLT R8, R7, [R12]
l2869: stmDA R13!, {R13}
interrupt_891: l2870: mov R11, #16
l2871: ldr R4, [sp, +R11]!
interrupt_23: l2872: mov R12, #1600
interrupt_166: l2873: mov R6, #48
l2874: ldrEQsb R0, [sp, -R6]
l2875: ldr R1, l2877
l2876: b l2878
interrupt_18: l2877: .word 1048524
l2878: swp R3, R0, [R1]
l2879: mvn R7, R9, ASR R12
interrupt_789: l2880: cmnLT R6, R11, LSR #6
l2881: mov R1, #16
interrupt_856: l2882: strLT R9, [sp, -R1]
l2883: sub R14, R9, R14, ASR R3
l2884: adcs R8, R8, #-1073741823
l2885: eorGEs R7, R15, R5
l2886: ldrsh R2, [sp, #-46]
l2887: bCC l2896
l2888: eor R9, R9, #-1493172224
l2889: adcCC R1, R3, R5
l2890: rsbPLs R1, R7, R10, RRX 
l2891: cmnLT R2, R9, ASR #15
interrupt_470: l2892: rsbGEs R5, R1, R11, RRX 
l2893: cmpHI R8, R1, ASR #21
l2894: rsbGEs R3, R4, #167936
interrupt_961: l2895: cmpGE R5, R5
l2896: addHIs R11, R9, R9
l2897: adcCCs R6, R15, R7, RRX 
l2898: clzEQ R3, R14
l2899: rsbVCs R0, R10, R6, ASR R4
interrupt_339: l2900: ldr R4, l2902
l2901: b l2903
l2902: .word 1048540
l2903: swpCS R0, R8, [R4]
l2904: mov R2, #24
interrupt_251: l2905: ldrVCsb R1, [sp, +R2]
l2906: mov R4, #16
l2907: str R11, [sp, +R4]!
l2908: subEQ R0, R4, R2, ROR R5
interrupt_732: l2909: mov R10, #34
l2910: ldrh R11, [sp, -R10]
l2911: adcNEs R5, R2, #50
l2912: cmn R5, R4, LSL R3
l2913: ldrsb R9, [sp, #-2]
l2914: add R4, R5, R9, ASR R5
l2915: teqHI R8, #145
interrupt_986: l2916: ldrCSsb R6, [sp, #-54]
l2917: swi #14395306
l2918: eorCCs R9, R7, R2, LSL R0
l2919: cmpEQ R11, R8
l2920: cmpLT R15, R0
interrupt_998: l2921: ldr R9, l2923
interrupt_238: l2922: b l2924
interrupt_268: l2923: .word 1048548
interrupt_369: l2924: swpb R10, R14, [R9]
l2925: eorPLs R1, R14, #179306496
l2926: ldr R10, l2928
interrupt_357: l2927: b l2929
l2928: .word 1048484
l2929: swpb R0, R3, [R10]
l2930: adds R9, R3, R11, RRX 
l2931: rsbs R1, R7, R1
l2932: bGT l2936
l2933: add R1, R0, #205
l2934: subLT R7, R1, #34603008
l2935: b l2937
l2936: b l2934
l2937: sbc R8, R6, #176160768
l2938: ldrEQsh R9, [sp, #-18]
l2939: bLE l2946
l2940: add R1, R0, #18
l2941: orrs R3, R9, R6, LSR #25
l2942: sbc R10, R0, R3, LSL #22
l2943: rscs R3, R14, #-1073741779
l2944: eorCCs R0, R11, R10
l2945: b l2947
l2946: b l2941
l2947: ldmDB R13, {R9, R10, R11}
l2948: mvnCCs R6, R0
l2949: tstCC R4, R6
l2950: bGE l2959
l2951: tstLE R10, R12
l2952: tstLE R12, R4, ROR #27
l2953: cmp R0, R12, LSL R1
interrupt_184: l2954: sub R6, R9, R8
l2955: cmpCC R9, R7, RRX 
l2956: movLEs R5, R15
l2957: subGT R11, R12, R10
l2958: adcs R8, R9, R12, LSR R1
l2959: tstNE R0, R8, LSL R12
interrupt_442: l2960: swi #2797486
l2961: mvns R3, R6, RRX 
l2962: rsc R4, R15, R15, ROR #16
l2963: cmn R3, R5, LSL #28
interrupt_144: l2964: and R2, R1, R9, LSR R0
l2965: addCC R3, R9, R1, ROR R12
interrupt_19: l2966: cmn R14, R8, LSR R9
l2967: strPLB R10, [sp, #-58]
l2968: subCS R1, R12, R2
l2969: teqLS R14, R7, ASR R0
l2970: teqLS R3, R3, RRX 
interrupt_556: l2971: cmpNE R4, R0, LSR R8
l2972: movVSs R14, R3
l2973: b l2981
l2974: add R1, R0, #95
interrupt_550: l2975: orr R4, R10, R7, LSL #6
l2976: bics R11, R5, R4, ASR R8
l2977: bicVCs R7, R5, R14, LSR #26
interrupt_677: l2978: subLE R10, R10, R11, ASR #24
l2979: movMIs R2, #241172480
l2980: b l2982
l2981: b l2975
l2982: swi #6257534
l2983: mov R7, R3, LSR #25
l2984: sub R9, R4, #194
l2985: clz R1, R7
interrupt_744: l2986: ldr R7, [sp], #+4
interrupt_500: l2987: ldr R11, [sp], #-64
l2988: tstVC R12, R2, RRX 
l2989: strNEh R4, [sp, #+30]
interrupt_774: l2990: tstMI R0, R8, RRX 
l2991: andLTs R10, R3, #3473408
l2992: mov R7, #8
l2993: ldrLTsh R3, [sp, +R7]
l2994: mov R11, #58
interrupt_921: l2995: ldrHIsh R4, [sp, +R11]
l2996: sub R6, R6, #11136
l2997: mov R6, #0
l2998: strCCh R0, [sp, +R6]
interrupt_39: l2999: b l3003
interrupt_250: l3000: add R1, R0, #60
l3001: bicVCs R11, R0, #-2147483627
l3002: b l3004
l3003: b l3001
interrupt_962: l3004: movPLs R11, R6
l3005: mov R7, #4
l3006: ldrEQsb R5, [sp, +R7]
l3007: bicEQs R1, R10, #196608
l3008: subHI R2, R3, R3, ASR #4
l3009: mov R4, #40
l3010: ldrLSh R2, [sp, +R4]
interrupt_966: l3011: mov R5, #32
l3012: ldrMIsh R9, [sp, +R5]
l3013: ldmIA R13!, {R0, R5, R7, R8, R9, R10, R11, R12}
l3014: orrNEs R5, R9, #1088
l3015: swi #1914811
l3016: bHI l3019
interrupt_671: l3017: subs R11, R10, R7, RRX 
l3018: mvns R11, R12, LSL #14
l3019: movs R0, R1, ASR #14
l3020: tstVC R2, R15
l3021: bics R10, R0, R15, RRX 
l3022: ldr R6, l3024
l3023: b l3025
l3024: .word 1048552
l3025: swpb R14, R10, [R6]
l3026: str R7, [sp, #+24]!
l3027: ldr R5, l3029
l3028: b l3030
l3029: .word 1048524
interrupt_457: l3030: swpVSb R9, R8, [R5]
l3031: swi #11273808
l3032: subs R4, R1, R8, LSR R11
l3033: eors R1, R5, R1, LSL #30
l3034: bic R8, R6, #3768320
l3035: tst R8, R4, LSR R8
l3036: clzVS R8, R8
l3037: teqVC R4, R1, ASR R8
l3038: stmIA R13!, {R8}
l3039: sbcs R9, R7, R4, ROR R11
l3040: ldrsb R2, [sp, #-7]
l3041: teq R12, R12, ASR #30
interrupt_949: l3042: teqLT R7, #118784
interrupt_162: l3043: swi #8752212
l3044: eorPL R1, R15, R12, LSL #11
l3045: orrMIs R8, R11, #560
l3046: tstMI R4, R7
l3047: rsbMIs R11, R2, R4
l3048: strHIh R12, [sp, #-14]
interrupt_508: l3049: subMI R0, R4, #27262976
l3050: swi #13432444
l3051: swi #12602730
l3052: bGE l3058
interrupt_427: l3053: add R2, R8, R14, LSR R3
l3054: rsbLT R14, R2, #65011712
l3055: addGTs R0, R11, R7, ROR R12
interrupt_696: l3056: add R8, R9, #973078528
l3057: clzGE R7, R14
l3058: mov R9, R9
l3059: mov R3, #58
interrupt_699: l3060: ldrGEsh R12, [sp, -R3]
l3061: ldmDA R13!, {R0, R2, R4, R7, R9, R14}
l3062: subs R14, R12, R0, RRX 
l3063: sbc R2, R11, R11, LSL #11
l3064: mvnPL R2, #4718592
l3065: clz R14, R0
l3066: bic R12, R1, R10, LSR #3
l3067: adcEQs R1, R4, R5, RRX 
interrupt_277: l3068: sbcPLs R9, R8, R0, RRX 
l3069: swi #3565619
l3070: ldr R12, l3072
l3071: b l3073
l3072: .word 1048512
interrupt_506: l3073: swpb R5, R6, [R12]
l3074: subs R5, R10, R4
l3075: cmn R9, R1, LSR R6
l3076: cmp R10, #70
l3077: mov R0, #22
l3078: ldrPLh R1, [sp, +R0]
l3079: swi #1946887
l3080: ldr R14, l3082
interrupt_197: l3081: b l3083
l3082: .word 1048508
interrupt_619: l3083: swpHIb R9, R8, [R14]
l3084: subs R10, R9, R10, RRX 
l3085: subNEs R8, R11, #8448
interrupt_111: l3086: ldr R2, l3088
l3087: b l3089
l3088: .word 1048548
l3089: swpVS R3, R1, [R2]
l3090: ldr R2, l3092
l3091: b l3093
interrupt_569: l3092: .word 1048524
l3093: swpLEb R3, R1, [R2]
l3094: mov R0, #12
l3095: str R6, [sp], -R0
interrupt_382: l3096: strNEh R14, [sp, #+34]
interrupt_326: l3097: eors R10, R3, R12, ASR #9
l3098: ands R11, R14, R2, LSL #4
interrupt_340: l3099: swi #2553834
l3100: subGEs R9, R14, #989855744
interrupt_390: l3101: mov R6, #14
l3102: ldrLEsh R0, [sp, +R6]
l3103: tstCC R5, R10, RRX 
l3104: rscLS R3, R9, R10, RRX 
interrupt_26: l3105: swi #9295041
interrupt_953: l3106: bicLSs R5, R10, #469762051
l3107: bNE l3112
l3108: add R1, R0, #132
interrupt_59: l3109: eor R9, R11, R9, RRX 
l3110: andPL R2, R10, R6, ASR R9
l3111: b l3113
l3112: b l3109
interrupt_494: l3113: adcs R2, R12, R3, LSR R1
l3114: teqGE R11, R15
l3115: ldrVCsb R2, [sp, #+10]
l3116: b l3122
interrupt_987: l3117: add R1, R0, #202
l3118: sbc R5, R12, R15
interrupt_217: l3119: sbcLEs R0, R8, #742391808
interrupt_207: l3120: subLE R8, R4, R14, LSL R8
l3121: b l3123
l3122: b l3118
interrupt_820: l3123: cmpLT R3, R6, LSR #23
l3124: ldr R5, l3126
l3125: b l3127
l3126: .word 1048504
l3127: swpEQb R0, R4, [R5]
l3128: ldrVSsb R1, [sp, #+37]
l3129: orrPL R8, R4, R4
l3130: ldrB R0, [sp, #+31]
interrupt_237: l3131: mov R12, #15
interrupt_325: l3132: ldrsb R10, [sp, +R12]
l3133: ldr R14, l3135
l3134: b l3136
l3135: .word 1048544
l3136: swpEQ R4, R6, [R14]
l3137: bics R8, R1, R2, ASR #22
l3138: bicHIs R4, R12, R1, ASR #29
l3139: mov R8, #20
l3140: strPLB R14, [sp, -R8]
l3141: ldr R9, l3143
l3142: b l3144
l3143: .word 1048488
l3144: swpLT R10, R6, [R9]
l3145: teqEQ R10, #1342177295
interrupt_823: l3146: mov R1, #40
l3147: ldrVCsh R10, [sp, +R1]
l3148: mov R3, R12, LSR R11
l3149: stmDB R13!, {R1, R12}
interrupt_973: l3150: stmIA R13!, {R0, R1, R3, R4, R5, R6, R8, R9, R10, R11, R12, R15}
l3151: stmVSDA R13, {R0, R2, R3, R8, R9, R11, R14}
l3152: addNE R6, R10, R14, ASR #1
l3153: mov R9, #41
l3154: ldrGTsb R7, [sp, -R9]
l3155: ldr R12, [sp, #-52]!
interrupt_591: l3156: adcLS R1, R2, R11
l3157: cmnLS R12, R4
l3158: stmIA R13!, {R0, R7}
l3159: tst R5, #460
l3160: ldmIA R13, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l3161: subLE R7, R12, R4
l3162: swi #13336740
l3163: mov R11, #24
l3164: ldrHIh R7, [sp, -R11]
interrupt_193: l3165: b l3174
l3166: adcNE R11, R14, R9, ROR #7
l3167: tst R5, R5, ASR #28
l3168: movs R4, R2
l3169: cmp R8, R8
l3170: andLS R6, R10, #1245184
l3171: rsb R0, R2, R7, ROR #15
l3172: adcs R6, R5, R2, ASR #19
l3173: eor R7, R6, #385875968
l3174: andLSs R0, R11, R9
interrupt_377: l3175: swi #4142825
l3176: addPL R6, R5, R12, ASR #24
l3177: adcs R2, R14, #145
l3178: mov R4, #16
l3179: ldrsh R7, [sp, -R4]
l3180: mov R2, #12
interrupt_279: l3181: ldrsh R3, [sp, +R2]
l3182: adcs R2, R0, #50
l3183: clz R9, R11
interrupt_463: l3184: addGTs R3, R5, R12, LSL #26
l3185: teq R9, R4
l3186: mov R10, #36
l3187: ldrh R10, [sp, +R10]
interrupt_196: l3188: cmpVC R15, #1342177291
l3189: ldrh R14, [sp, #-8]
l3190: swi #7949006
l3191: cmpGE R1, R14, ASR R2
l3192: rsbGTs R4, R2, R10
l3193: mov R7, #7
l3194: strCCB R7, [sp, +R7]
interrupt_177: l3195: cmnCS R5, R6, LSR R4
interrupt_404: l3196: ldrh R0, [sp, #-8]
l3197: b l3204
l3198: add R1, R0, #180
l3199: rsb R5, R6, R2, RRX 
interrupt_48: l3200: andEQ R1, R5, R1, LSL #2
interrupt_860: l3201: cmnMI R4, #143360
l3202: movGTs R6, R8, ASR R2
l3203: b l3205
l3204: b l3199
l3205: mvnLSs R5, R3, ROR #6
interrupt_215: l3206: swi #141231
l3207: rsbGTs R10, R5, R6
interrupt_1: l3208: cmpNE R3, #1073741877
l3209: mvnLTs R6, #417792
l3210: orr R6, R7, R7, LSR #30
l3211: ldrsh R1, [sp, #+22]
interrupt_804: l3212: cmnHI R4, R3, LSR #23
l3213: ldmNEIA R13, {R2, R12, R14}
l3214: rsbGEs R12, R5, R0, ROR R3
l3215: ldrGEsh R14, [sp, #-12]
l3216: ldr R10, l3218
interrupt_783: l3217: b l3219
l3218: .word 1048492
l3219: swpb R4, R6, [R10]
l3220: bicHI R0, R14, R11
l3221: andPL R4, R0, R10, ASR R7
l3222: mov R8, #44
l3223: ldrsh R6, [sp, +R8]
l3224: andHI R7, R0, R0
l3225: teqPL R10, #26624
l3226: mov R9, #20
l3227: ldr R12, [sp, +R9]
l3228: stmIB R13!, {R1, R2, R3, R5, R6, R9, R12, R15}
l3229: bMI l3235
l3230: add R1, R0, #210
l3231: bic R7, R10, R1
l3232: sbc R0, R0, R4, RRX 
l3233: tstNE R7, R5
l3234: b l3236
l3235: b l3231
l3236: mov R3, #28
l3237: strNEh R1, [sp, -R3]
l3238: ldmIB R13!, {R6, R8}
l3239: mvn R8, R11, ASR R2
l3240: rsc R5, R7, R8, ASR R10
interrupt_230: l3241: swi #11912992
l3242: adcs R2, R2, #179306496
l3243: movCC R9, R10, LSL #18
l3244: bVC l3246
l3245: eorHIs R3, R15, R5, RRX 
l3246: andHIs R5, R6, R5
l3247: ldr R1, l3249
l3248: b l3250
l3249: .word 1048512
l3250: swpCS R4, R8, [R1]
l3251: subLS R6, R9, R0
l3252: swi #16262087
interrupt_223: l3253: ldrsb R7, [sp, #-23]
l3254: ldr R1, l3256
interrupt_77: l3255: b l3257
l3256: .word 1048512
l3257: swp R4, R8, [R1]
l3258: mov R10, #56
l3259: str R12, [sp, -R10]
l3260: b l3264
l3261: add R1, R0, #128
interrupt_245: l3262: cmnVS R3, R1, LSR #17
l3263: b l3265
l3264: b l3262
l3265: orrs R9, R9, R5
l3266: ldr R1, l3268
l3267: b l3269
l3268: .word 1048524
interrupt_854: l3269: swpb R12, R7, [R1]
l3270: rsbLEs R2, R4, #3072
l3271: addCS R7, R14, R14, ASR R6
l3272: sub R5, R7, R11, RRX 
l3273: stmDA R13!, {R1, R4, R9, R14}
l3274: movPL R7, #1610612736
l3275: eorCS R7, R14, R12, ASR #25
l3276: teq R3, #39424
l3277: cmn R15, R0, LSR #18
l3278: movs R0, R4, LSR R3
l3279: mov R8, #9
interrupt_919: l3280: ldrCCB R0, [sp, +R8]
l3281: subLTs R3, R6, #4587520
l3282: mov R5, R12, ASR R12
interrupt_152: l3283: sbcNE R6, R6, #2496
l3284: ldrLTB R5, [sp, #-37]
l3285: mov R8, #44
l3286: ldrB R8, [sp, -R8]
l3287: adds R9, R9, R6, LSR R1
l3288: mov R4, #6
l3289: ldrsh R12, [sp, -R4]
l3290: clz R0, R14
l3291: rsb R3, R1, R14
interrupt_594: l3292: bicVS R3, R7, R14, LSL R4
l3293: andVSs R10, R9, #226
l3294: mov R5, #44
l3295: strVSh R2, [sp, -R5]
l3296: b l3302
l3297: add R1, R0, #14
l3298: sbcMI R14, R15, R5, ASR #22
l3299: tstPL R10, #-939524094
l3300: orrs R6, R0, R6, ASR #23
l3301: b l3303
interrupt_996: l3302: b l3298
l3303: movCCs R2, R4
interrupt_938: l3304: movCSs R5, R10, ROR R5
interrupt_219: l3305: andLS R7, R8, #50331648
interrupt_869: l3306: mov R14, #15
l3307: strGEB R10, [sp, -R14]
l3308: addLT R8, R14, #2688
l3309: ldrh R7, [sp, #-2]
l3310: cmnGE R10, R12
l3311: ldrsh R3, [sp, #-14]
l3312: eorCS R12, R4, #15232
l3313: stmMIDA R13, {R3, R5, R6, R7, R8, R9, R11, R13, R15}
l3314: sub R1, R1, #80
interrupt_387: l3315: mov R1, #18
interrupt_49: l3316: ldrsh R6, [sp, +R1]
interrupt_772: l3317: andVS R8, R6, R2, LSR #21
l3318: stmDA R13!, {R0, R7, R10, R12, R15}
l3319: mov R8, #20
l3320: ldrLSB R5, [sp, +R8]
interrupt_242: l3321: stmNEIA R13, {R0, R1, R3, R6, R7, R8, R9, R12, R13}
l3322: ldr R2, l3324
l3323: b l3325
l3324: .word 1048540
l3325: swpEQ R7, R6, [R2]
l3326: teqCC R14, #827392
interrupt_96: l3327: mov R2, #17
interrupt_697: l3328: strLSB R10, [sp, -R2]
l3329: rsbHIs R3, R0, R6, LSR R8
l3330: ldmIB R13!, {R0, R2, R4, R5, R8, R11, R14}
l3331: rscEQ R0, R12, R10, ROR #14
interrupt_384: l3332: eorEQs R10, R6, R9
l3333: swi #6433337
l3334: ldrB R5, [sp, #-25]
l3335: mov R14, #36
l3336: ldr R1, [sp], -R14
l3337: mov R6, #41
l3338: ldrCSsb R2, [sp, +R6]
l3339: mov R9, #7
interrupt_635: l3340: ldrCSsb R3, [sp, -R9]
interrupt_248: l3341: eors R11, R5, R9, ROR R12
l3342: mov R11, #2
l3343: strLTB R9, [sp, +R11]
l3344: mov R8, #4
l3345: strh R8, [sp, -R8]
l3346: clz R1, R5
l3347: sbcPLs R0, R8, R11, LSR #2
interrupt_118: l3348: sbcNE R3, R8, R9, LSL #30
l3349: strh R4, [sp, #+40]
l3350: bicEQs R12, R12, R6
l3351: subEQ R12, R3, R10, RRX 
l3352: mov R2, #40
l3353: ldr R12, [sp], +R2
l3354: mvns R12, R7, ROR #31
l3355: mvn R9, R5, LSL #22
l3356: ands R12, R6, R9, ROR R14
l3357: subs R7, R1, R14
l3358: mov R6, #57
l3359: ldrsb R7, [sp, -R6]
l3360: stmLEDA R13, {R0, R2, R4, R7, R8, R10, R12, R13, R14}
interrupt_300: l3361: sub R3, R1, R8, RRX 
interrupt_113: l3362: stmIA R13!, {R6, R8, R14}
interrupt_406: l3363: mvnGT R5, R4, ROR #27
l3364: bicGT R10, R6, R12, LSL #22
l3365: rsbs R8, R12, R12
l3366: teq R14, R4, RRX 
l3367: and R3, R2, #194
interrupt_628: l3368: ldr R6, l3370
interrupt_170: l3369: b l3371
l3370: .word 1048536
interrupt_284: l3371: swpLE R10, R0, [R6]
l3372: orr R0, R4, R12, LSR #10
interrupt_764: l3373: orrs R1, R11, R9
l3374: ldr R1, l3376
l3375: b l3377
l3376: .word 1048516
l3377: swpLSb R10, R12, [R1]
l3378: mvn R4, R14, ASR #12
l3379: clzVC R1, R5
l3380: ldrsb R9, [sp, #-10]
l3381: eorGT R4, R5, R2, RRX 
interrupt_915: l3382: ldr R7, l3384
l3383: b l3385
l3384: .word 1048500
l3385: swpHIb R10, R4, [R7]
l3386: ldr R4, l3388
l3387: b l3389
l3388: .word 1048484
l3389: swpGEb R9, R0, [R4]
l3390: ldrNEsh R12, [sp, #-20]
l3391: strB R4, [sp, #-24]
l3392: ldrNEh R12, [sp, #-16]
l3393: mov R14, #64
l3394: strEQh R1, [sp, -R14]
l3395: eorHI R14, R12, R14, ROR #11
l3396: addGT R4, R8, #1644167168
l3397: str R1, [sp, #-40]!
l3398: b l3399
interrupt_482: l3399: clzNE R6, R7
l3400: subEQ R11, R6, R6
l3401: tst R5, R6, LSL R6
l3402: teqGE R15, R4, ROR #1
l3403: adcs R12, R2, R3, ROR R11
l3404: movs R2, R11, RRX 
l3405: bGE l3413
l3406: add R1, R0, #235
l3407: clzGT R14, R3
l3408: subs R10, R5, R0, LSR R8
interrupt_378: l3409: sbcGE R0, R11, R9, LSR #13
l3410: movVCs R11, R6, LSL R5
l3411: orrs R14, R10, #12288
l3412: b l3414
l3413: b l3407
l3414: ldrh R1, [sp, #+34]
l3415: mov R8, #21
l3416: strB R9, [sp, +R8]
l3417: adds R8, R14, R0
l3418: ldmIA R13!, {R2, R5, R8, R9, R12}
l3419: clzVS R1, R12
l3420: orr R11, R8, #856
l3421: mov R8, #18
l3422: ldrB R0, [sp, -R8]
l3423: mov R8, #38
l3424: strLTB R10, [sp, -R8]
l3425: ldmIA R13!, {R4}
l3426: ldr R11, l3428
l3427: b l3429
l3428: .word 1048500
interrupt_606: l3429: swpb R4, R8, [R11]
l3430: bicLS R8, R7, #2719744
l3431: andPLs R9, R8, R2, RRX 
l3432: ldr R10, l3434
l3433: b l3435
l3434: .word 1048484
l3435: swpPL R0, R14, [R10]
interrupt_66: l3436: clz R5, R10
l3437: ldrh R4, [sp, #-52]
l3438: b l3445
l3439: subHI R8, R15, R2, ASR #19
l3440: rscs R1, R2, R11, ASR R2
l3441: sub R2, R11, R9, RRX 
l3442: subLE R3, R11, R7
interrupt_275: l3443: teqHI R10, R2, RRX 
l3444: adcLTs R7, R9, R12, LSL R4
l3445: add R6, R6, R14, LSR R1
l3446: mvnMIs R4, R9, LSR R8
l3447: mov R9, #4
l3448: ldrLT R14, [sp, -R9]
interrupt_14: l3449: ldr R4, l3451
l3450: b l3452
l3451: .word 1048508
l3452: swp R7, R12, [R4]
interrupt_376: l3453: adcCCs R0, R11, R10, LSR R6
l3454: ldr R6, l3456
interrupt_951: l3455: b l3457
l3456: .word 1048500
l3457: swpVC R0, R10, [R6]
l3458: rsbCS R10, R11, R2
l3459: mvnPL R5, R6
l3460: ldrLSB R3, [sp, #+19]
l3461: ldrsh R0, [sp, #-30]
l3462: rscMI R11, R11, #262144
l3463: rsbs R12, R0, R12, ASR #7
l3464: eorMIs R10, R0, R3, LSR R10
l3465: adcPLs R0, R14, #2342912
l3466: ldmIB R13, {R0, R1, R7, R12}
interrupt_585: l3467: swi #1065330
interrupt_164: l3468: mvns R9, R7, ASR R2
l3469: swi #946922
l3470: bNE l3475
l3471: eorPL R1, R10, R12, LSL R3
l3472: tst R12, R4, LSR #28
l3473: addLT R10, R0, #56320
l3474: rsbs R9, R5, #-2147483648
interrupt_558: l3475: cmpHI R10, #-1610612726
l3476: bVC l3483
l3477: clz R7, R4
l3478: adcCCs R1, R1, R14, ROR #4
l3479: teqLT R14, R6
l3480: adcCC R9, R7, R11
interrupt_646: l3481: rsbs R11, R9, R11, LSL R8
l3482: bics R3, R8, R1
l3483: rscGT R12, R2, #-1140850685
l3484: ldr R14, [sp, #-8]!
l3485: rsc R6, R15, R11
l3486: clzPL R6, R1
l3487: eorNE R8, R11, R0, ROR #18
l3488: subs R6, R11, R6, ASR R5
l3489: subLE R3, R11, R4
interrupt_706: l3490: subs R7, R4, R12, LSR #31
l3491: mov R14, #18
l3492: ldrPLsh R3, [sp, -R14]
l3493: ldr R10, l3495
l3494: b l3496
l3495: .word 1048484
l3496: swpCSb R1, R12, [R10]
l3497: mov R9, #20
l3498: ldrCC R5, [sp, -R9]
l3499: mov R3, #38
l3500: strLEB R10, [sp, -R3]
l3501: subGTs R9, R7, R4, RRX 
l3502: mov R5, #8
l3503: ldrMIh R11, [sp, +R5]
l3504: ands R4, R15, R15
l3505: sbc R0, R14, R15
l3506: subGT R12, R12, R2, RRX 
l3507: strGEh R11, [sp, #-8]
l3508: mov R2, #20
l3509: ldrB R5, [sp, -R2]
l3510: ldrsh R11, [sp, #-46]
l3511: mov R9, #10
l3512: strCSh R12, [sp, +R9]
l3513: ldr R1, l3515
l3514: b l3516
l3515: .word 1048484
l3516: swp R2, R12, [R1]
l3517: clz R2, R8
l3518: mov R8, #5
l3519: strCCB R9, [sp, -R8]
l3520: sbcEQs R2, R6, R1, ROR R7
l3521: tst R15, R15, RRX 
l3522: swi #1525106
l3523: b l3528
interrupt_522: l3524: add R1, R0, #121
l3525: rsbLEs R1, R1, R7
interrupt_532: l3526: sbc R4, R5, R0, LSL #23
l3527: b l3529
l3528: b l3525
l3529: bic R0, R10, R5
l3530: ldrsh R14, [sp, #-14]
interrupt_805: l3531: ldrh R14, [sp, #-40]
interrupt_871: l3532: ldr R0, l3534
l3533: b l3535
l3534: .word 1048492
l3535: swpEQb R5, R8, [R0]
interrupt_65: l3536: strh R9, [sp, #+12]
l3537: ldmDA R13!, {R2, R3, R4, R5, R8, R10, R11, R12}
l3538: rscLEs R2, R0, R14
l3539: mov R11, #56
l3540: str R7, [sp, +R11]!
l3541: swi #12306520
interrupt_17: l3542: sub R8, R11, R10
interrupt_318: l3543: bic R5, R4, R7
interrupt_289: l3544: ldr R14, [sp], #-28
l3545: adc R11, R4, #191488
l3546: mvnVSs R14, R1
l3547: bGE l3556
interrupt_244: l3548: cmnVS R9, R3
l3549: rsb R6, R2, R4
l3550: cmp R4, R6, RRX 
l3551: cmnNE R5, R7, LSR #4
l3552: teqLE R14, R3, RRX 
l3553: rsb R11, R8, R8
interrupt_85: l3554: rsbs R2, R3, R4, LSR R3
l3555: sbcCC R10, R2, R14, LSR #21
l3556: rsc R12, R7, R6
l3557: orrs R3, R15, R15
l3558: swi #1217248
l3559: subGE R10, R12, R9
l3560: b l3561
l3561: sbcs R6, R6, R2, LSL R14
l3562: orr R11, R12, R4, ROR #16
interrupt_544: l3563: teq R3, R5, LSR #21
l3564: clzCC R8, R9
l3565: andEQ R14, R9, R0
l3566: subNEs R2, R0, R2
l3567: ldrLEB R5, [sp, #+28]
l3568: ands R11, R9, #4112384
l3569: movs R6, R0
l3570: subs R12, R6, #1409286144
l3571: swi #11430564
l3572: mvnGEs R7, R0, ROR R4
l3573: strB R11, [sp, #+12]
l3574: eorPLs R11, R11, R11
l3575: eorVS R7, R4, R4
interrupt_479: l3576: swi #6448926
l3577: b l3578
interrupt_530: l3578: bic R9, R5, #-1845493760
l3579: mov R0, #15
l3580: ldrMIB R6, [sp, +R0]
l3581: subCC R5, R6, R6, LSR #12
l3582: b l3583
l3583: orrNE R7, R12, R11, ROR #7
l3584: swi #5610668
l3585: mov R12, #24
l3586: ldrsh R9, [sp, +R12]
l3587: tst R9, R9, LSR #4
l3588: ldrVSsb R4, [sp, #-42]
interrupt_588: l3589: cmnLS R14, R11, LSR R7
l3590: mov R4, #28
l3591: ldr R4, [sp], +R4
l3592: bGT l3596
l3593: orrGE R0, R3, R1, LSR R5
interrupt_928: l3594: rsbHI R2, R0, #994050048
l3595: sbc R5, R2, R2, ROR #21
l3596: movEQ R11, R9, LSL R10
l3597: add R7, R6, R9, ROR R1
l3598: swi #9269265
interrupt_728: l3599: mov R0, #44
l3600: ldrVC R7, [sp, -R0]
l3601: ldrLEB R11, [sp, #-42]
l3602: ldr R8, l3604
l3603: b l3605
l3604: .word 1048496
l3605: swpVSb R0, R5, [R8]
l3606: mov R1, #28
l3607: strh R3, [sp, -R1]
l3608: orrCCs R2, R2, #1835008
interrupt_611: l3609: andVCs R12, R10, R10, ASR R9
l3610: mov R12, #43
l3611: ldrsb R4, [sp, -R12]
l3612: clzHI R8, R11
l3613: cmnHI R4, R2
l3614: movs R1, R4
l3615: ldrGT R0, [sp, #-32]
l3616: mov R14, #26
l3617: ldrCCB R6, [sp, -R14]
interrupt_350: l3618: subHI R7, R15, R7
interrupt_797: l3619: nop
l3620: subNE R4, R12, R0, RRX 
l3621: sub R9, R10, #16777216
interrupt_590: l3622: eor R9, R5, #14848
interrupt_694: l3623: str R8, [sp], #-4
l3624: mov R7, #2
interrupt_236: l3625: ldrVCsh R10, [sp, +R7]
l3626: andLEs R3, R14, #54525952
l3627: tstLT R9, #171008
interrupt_547: l3628: ldr R7, l3630
l3629: b l3631
l3630: .word 1048500
l3631: swpHIb R14, R4, [R7]
interrupt_93: l3632: swi #14840190
interrupt_918: l3633: adds R0, R8, R6
interrupt_227: l3634: teqVC R5, R3, ROR R6
l3635: subs R0, R6, R1
interrupt_107: l3636: teq R10, #-738197502
l3637: cmnLE R3, R14, ROR R5
interrupt_516: l3638: tst R12, R15, LSL #15
l3639: rsbGE R2, R1, R1, ROR #20
l3640: b l3648
l3641: add R1, R0, #62
l3642: adcCC R10, R10, R11, ASR #13
l3643: mov R3, R4
l3644: mov R14, R2
interrupt_366: l3645: rsbCC R11, R14, R3
l3646: bic R12, R0, R8, RRX 
l3647: b l3649
l3648: b l3642
l3649: movGEs R7, #212
l3650: swi #8914816
l3651: adcCC R4, R4, R10
l3652: ldr R3, l3654
l3653: b l3655
l3654: .word 1048544
l3655: swpHIb R4, R0, [R3]
l3656: mov R0, #43
l3657: strB R6, [sp, -R0]
l3658: mov R12, #12
l3659: ldr R6, [sp], -R12
l3660: mov R1, #4
l3661: ldrLT R6, [sp, -R1]
l3662: cmnCS R1, R9
l3663: swi #13511285
l3664: clz R9, R7
l3665: swi #1419343
l3666: sbc R4, R3, #1073741826
l3667: mov R3, #3
l3668: ldrVCsb R0, [sp, -R3]
interrupt_159: l3669: stmVSIA R13, {R0}
l3670: nop
l3671: cmpCC R1, R9
l3672: swi #827505
l3673: ldr R1, l3675
l3674: b l3676
interrupt_90: l3675: .word 1048508
l3676: swpb R0, R4, [R1]
l3677: cmnCC R12, R9, ROR #28
l3678: mov R11, #12
l3679: ldrPLsh R12, [sp, -R11]
l3680: str R6, [sp, #-56]!
l3681: cmn R8, R3, LSL R14
l3682: eorVC R2, R5, #-1073741822
interrupt_641: l3683: ldr R0, [sp, #+44]!
l3684: and R5, R3, R14
interrupt_388: l3685: mvnCC R7, #13107200
l3686: and R10, R14, R7
l3687: rsb R12, R0, R12
l3688: adcVS R10, R2, R6
l3689: teqGT R12, R15, LSL #9
l3690: rsbs R4, R12, #142606336
interrupt_492: l3691: adcNEs R10, R14, #-805306368
l3692: swi #8128882
l3693: rsbLE R14, R15, #372736
l3694: clzLS R9, R2
l3695: ldr R7, l3697
l3696: b l3698
l3697: .word 1048512
l3698: swpCC R2, R10, [R7]
interrupt_599: l3699: str R9, [sp, #-12]!
l3700: add R11, R3, R10, ASR #27
l3701: addCS R3, R12, R7, ROR #16
l3702: ldr R9, [sp, #+36]!
l3703: ldrsh R7, [sp, #-28]
interrupt_948: l3704: sub R10, R10, R2, LSL #10
interrupt_178: l3705: ldr R14, l3707
l3706: b l3708
interrupt_100: l3707: .word 1048520
l3708: swpLS R6, R11, [R14]
l3709: strCS R2, [sp, #-68]
l3710: mov R8, #26
l3711: ldrsh R10, [sp, -R8]
l3712: tstHI R8, R1, ASR #1
l3713: sbcGE R1, R14, #41680896
l3714: ldmDB R13!, {R6, R10}
interrupt_22: l3715: bEQ l3721
interrupt_775: l3716: add R8, R11, #6976
l3717: tstPL R14, #2816
l3718: ands R3, R1, #-805306368
interrupt_349: l3719: cmp R0, R11, ROR #10
l3720: movCCs R1, #636
l3721: eorNE R14, R2, R14, LSR R2
l3722: ldrB R1, [sp, #+15]
interrupt_682: l3723: bLE l3731
interrupt_480: l3724: clzEQ R12, R0
l3725: addMIs R3, R1, R4
l3726: subMIs R6, R1, R12, LSR R3
l3727: sub R2, R10, R12, RRX 
l3728: movs R14, #9437184
l3729: rsbs R2, R7, R9, LSR R8
l3730: cmnNE R12, R4
l3731: mvnPLs R0, R12, RRX 
l3732: bEQ l3742
l3733: subVSs R7, R6, R14
interrupt_269: l3734: eors R6, R1, #50432
l3735: teqVC R14, R3, ROR R2
l3736: ands R11, R7, R3
l3737: cmnVS R11, #41472
l3738: sbcs R1, R14, #65011712
interrupt_301: l3739: clzEQ R14, R11
l3740: addMI R12, R9, R0, LSR #7
l3741: eor R6, R9, R0
l3742: teqGT R1, R9
interrupt_637: l3743: add R3, R8, R10, ASR R1
interrupt_666: l3744: cmpEQ R0, #-738197502
interrupt_345: l3745: ldrLEB R7, [sp, #-5]
l3746: swi #4903896
interrupt_525: l3747: tst R7, R5, ROR #14
interrupt_438: l3748: swi #6260939
l3749: subLE R5, R7, R10, LSR #17
interrupt_38: l3750: adcCSs R2, R6, R0, ROR #10
l3751: mov R1, #34
interrupt_937: l3752: strB R5, [sp, -R1]
interrupt_702: l3753: ldmIA R13!, {R4, R11, R12}
l3754: strh R1, [sp, #-20]
l3755: swi #5157415
interrupt_681: l3756: rsc R11, R3, R4, ASR R2
l3757: swi #16563615
l3758: strHIB R3, [sp, #-24]
interrupt_768: l3759: mov R8, #44
l3760: ldrsb R7, [sp, -R8]
l3761: adds R9, R7, R4, ASR #29
l3762: andVS R12, R2, R10, ASR #6
interrupt_781: l3763: addHI R4, R4, R4, ASR #3
interrupt_194: l3764: swi #5943654
l3765: rsbNE R10, R0, R4
l3766: subLTs R1, R12, R1, LSR R6
l3767: strCSh R2, [sp, #-6]
interrupt_649: l3768: mvnEQ R2, R2
interrupt_465: l3769: bLS l3771
l3770: eorGE R4, R1, R1, ASR R3
interrupt_56: l3771: rsbEQs R4, R12, R8
l3772: mov R5, #32
l3773: ldrsb R9, [sp, -R5]
l3774: subHIs R4, R6, R5, ROR #15
l3775: mov R12, #32
l3776: ldr R2, [sp, -R12]!
l3777: ldr R9, l3779
l3778: b l3780
interrupt_362: l3779: .word 1048544
l3780: swpHIb R6, R5, [R9]
l3781: cmnPL R15, #-1577058304
l3782: mov R4, #22
interrupt_718: l3783: ldrh R11, [sp, +R4]
l3784: eor R5, R1, R2, RRX 
l3785: ldrB R4, [sp, #-33]
l3786: mov R10, #22
l3787: strGEh R11, [sp, +R10]
l3788: eorLS R0, R9, R12, ASR #8
l3789: mov R4, #22
l3790: ldrCCsh R0, [sp, +R4]
l3791: ldr R5, l3793
interrupt_453: l3792: b l3794
l3793: .word 1048508
l3794: swpNEb R11, R14, [R5]
l3795: orrVS R9, R7, R10, RRX 
l3796: ldr R11, l3798
interrupt_634: l3797: b l3799
l3798: .word 1048548
interrupt_225: l3799: swpHI R7, R4, [R11]
l3800: orrs R6, R15, #733184
l3801: cmn R10, #141312
l3802: teq R7, R1, RRX 
interrupt_539: l3803: ldrh R8, [sp, #+2]
l3804: mov R9, #13
l3805: ldrB R2, [sp, +R9]
l3806: rsbCS R10, R3, R6
l3807: andCCs R0, R10, R8, ROR R9
l3808: clz R8, R4
l3809: ldr R3, l3811
l3810: b l3812
l3811: .word 1048544
l3812: swpLSb R10, R1, [R3]
l3813: swi #13021904
interrupt_658: l3814: ldr R8, l3816
l3815: b l3817
l3816: .word 1048492
l3817: swpPL R10, R12, [R8]
l3818: stmEQDA R13, {R2, R3, R10, R11, R14}
interrupt_693: l3819: mvnEQs R9, R14
l3820: rsc R12, R6, #3456
l3821: mvnCCs R2, R9, LSL R10
l3822: sub R14, R15, R7, ROR #15
l3823: cmnVC R3, R14, LSL #21
l3824: orrVS R2, R1, #81920
l3825: cmpGE R6, R6
l3826: tst R7, R2
l3827: ldrLEsb R11, [sp, #+19]
l3828: ldr R2, l3830
l3829: b l3831
interrupt_9: l3830: .word 1048524
l3831: swpLTb R5, R12, [R2]
l3832: teqHI R10, R4
l3833: mov R6, #8
interrupt_489: l3834: ldrLTB R8, [sp, -R6]
interrupt_975: l3835: rscLEs R2, R8, R7, RRX 
l3836: teqGT R3, R15, RRX 
interrupt_817: l3837: mov R11, #16
l3838: ldrVCB R6, [sp, -R11]
l3839: ldrNE R12, [sp, #-12]
l3840: sub R0, R3, R1, LSL R2
l3841: subLTs R4, R8, R11, LSR R14
interrupt_21: l3842: cmn R4, #-1073741767
l3843: mov R11, #5
l3844: ldrCCB R6, [sp, +R11]
interrupt_536: l3845: bicCSs R14, R1, R10, ASR R6
l3846: ldr R2, l3848
interrupt_57: l3847: b l3849
l3848: .word 1048536
l3849: swpb R5, R8, [R2]
l3850: ldmCSIA R13, {R1, R6}
l3851: rsc R9, R11, #32
l3852: cmnEQ R11, R0, RRX 
l3853: cmpCC R9, #10
interrupt_30: l3854: adds R3, R5, R0, LSL R5
l3855: ldmDB R13, {R0, R1, R10, R12}
l3856: bic R11, R3, R9, LSL R11
l3857: movs R4, R4, ASR #8
interrupt_330: l3858: sbcNE R14, R11, #218
l3859: mov R2, #12
l3860: strPLh R1, [sp, -R2]
l3861: clzLS R1, R12
interrupt_323: l3862: bLS l3869
l3863: teq R7, R12, LSR #9
l3864: adcLT R12, R7, R10
l3865: rsc R7, R7, #536576
l3866: teqGT R3, R1
l3867: cmp R3, R1, RRX 
l3868: bicCC R9, R0, R9
interrupt_375: l3869: cmpGE R0, R12, LSL R3
l3870: mvn R4, R6, LSL #1
l3871: strB R0, [sp, #+14]
l3872: sbc R5, R8, R5, ROR #24
l3873: sbcGEs R3, R12, R12
interrupt_730: l3874: teqVC R5, R3, LSL R4
l3875: ldrsh R6, [sp, #+16]
l3876: ldrHIB R11, [sp, #-5]
interrupt_686: l3877: bCS l3886
l3878: add R1, R0, #157
interrupt_360: l3879: subNEs R14, R1, R14, LSL #20
l3880: rsc R12, R14, #1526726656
l3881: adds R7, R11, #-1476395008
l3882: subLEs R0, R14, R7
l3883: bicEQ R8, R1, R2
l3884: eorNE R14, R0, R12
l3885: b l3887
l3886: b l3879
interrupt_560: l3887: bic R12, R2, #204472320
l3888: addGTs R0, R3, #40704
l3889: eor R12, R0, R0, RRX 
l3890: bLE l3894
l3891: bic R10, R1, #48
l3892: teq R15, R1
l3893: subHIs R11, R5, R6
l3894: orrs R6, R15, R8, LSL #25
l3895: subEQ R3, R5, #20185088
interrupt_221: l3896: subNE R3, R4, #128
l3897: andVSs R7, R15, #13952
l3898: rscNE R10, R7, R0
l3899: mov R3, #18
l3900: strCSh R4, [sp, +R3]
l3901: bLE l3905
l3902: movVSs R10, R6, LSL R6
l3903: sbcLTs R11, R12, R2, LSL #3
l3904: rscPL R4, R1, R15
l3905: ands R7, R6, #819200
l3906: mov R5, #36
l3907: ldr R2, [sp, -R5]!
l3908: addGE R10, R5, R3, LSR R8
l3909: addGEs R5, R14, R0, RRX 
interrupt_31: l3910: tstLT R10, R6, ROR #31
l3911: rsbEQs R8, R10, R6, LSL R14
interrupt_363: l3912: mov R10, R11, ROR #6
l3913: ldr R7, [sp, #+68]
l3914: movHIs R7, R5, ASR R12
l3915: subHIs R9, R4, R10
l3916: cmpCS R9, R1
l3917: cmp R2, R4, RRX 
l3918: cmn R3, R6, ROR R9
l3919: tst R6, R5, RRX 
l3920: andVCs R3, R5, R1, RRX 
interrupt_352: l3921: sbcGE R9, R0, #-2147483642
l3922: mov R7, #3
l3923: strB R12, [sp, +R7]
l3924: clz R1, R14
l3925: rsbHI R6, R14, R11, LSR R6
interrupt_466: l3926: stmIA R13!, {R2, R4, R5, R7, R8, R11}
l3927: swi #9456753
l3928: ldr R5, l3930
l3929: b l3931
interrupt_511: l3930: .word 1048492
l3931: swpLSb R2, R2, [R5]
l3932: teq R8, R12, ROR R2
l3933: stmDA R13!, {R6, R7, R9}
interrupt_158: l3934: bLE l3942
interrupt_965: l3935: add R1, R0, #43
l3936: sub R0, R14, R10
l3937: orrs R12, R12, R7, ROR R2
l3938: addLS R4, R9, R1, ROR R1
interrupt_727: l3939: orrGTs R3, R5, R5, LSL R7
interrupt_266: l3940: cmpPL R12, R10, ROR #14
l3941: b l3943
interrupt_901: l3942: b l3936
l3943: stmDA R13!, {R4}
interrupt_935: l3944: add R11, R10, R15
l3945: movNEs R5, R1
interrupt_608: l3946: addNE R7, R1, R14, ASR #7
l3947: b l3955
interrupt_722: l3948: mov R0, R4, ROR #26
l3949: bicLTs R0, R11, R1, ROR #14
interrupt_335: l3950: mvn R2, R4, LSL #23
interrupt_419: l3951: rscs R5, R3, R8
l3952: cmpHI R5, R1, LSL #14
l3953: rsbs R10, R11, R11
l3954: eorMI R12, R7, R7, ROR #30
interrupt_137: l3955: sub R1, R8, R15
l3956: ldrLEh R7, [sp, #+30]
l3957: mvnHIs R11, #1312
l3958: bic R14, R11, R9, LSR #10
interrupt_356: l3959: mov R11, #4
l3960: str R0, [sp, +R11]!
l3961: sbcLS R4, R7, R9, LSR #23
l3962: mov R8, #16056320
l3963: sbcEQ R12, R6, R11, ROR #4
l3964: cmnHI R9, R1, ROR #1
l3965: bicLTs R11, R8, R2, LSR R1
interrupt_814: l3966: tstVC R11, R9
l3967: mov R0, #36
l3968: str R14, [sp, +R0]!
l3969: eorLE R10, R12, R11, ASR R12
l3970: bCC l3974
interrupt_344: l3971: tstGE R15, R1
l3972: andLT R7, R7, R0, RRX 
l3973: cmn R11, R1, ASR #28
l3974: mvnLS R0, R2
l3975: teqGE R5, R1
interrupt_432: l3976: mov R0, #20
l3977: strLEB R14, [sp, -R0]
l3978: ldmIB R13!, {R8}
l3979: teq R2, #124
l3980: addNEs R6, R9, R3, ROR #6
interrupt_417: l3981: ldmDB R13!, {R6, R7}
l3982: rsc R9, R4, R10
l3983: swi #12096576
l3984: adcs R12, R7, R2, LSL #10
interrupt_182: l3985: ldrh R9, [sp, #-30]
l3986: swi #1079414
l3987: clz R5, R8
l3988: rsbCCs R11, R14, R8, ASR #2
l3989: andVC R0, R0, R9, ROR #3
l3990: mov R2, #10
interrupt_577: l3991: strGEB R10, [sp, +R2]
l3992: adcVS R2, R2, R9, ASR R9
l3993: cmp R5, R15
l3994: mov R3, #12
l3995: strLT R1, [sp, -R3]
l3996: mov R10, #36
l3997: ldrEQsh R5, [sp, -R10]
interrupt_831: l3998: bicHI R1, R9, R4, ROR R0
l3999: ldrNEh R3, [sp, #+20]
l4000: ldrPLsh R8, [sp, #+16]
interrupt_491: l4001: mov R12, #8
interrupt_167: l4002: str R0, [sp], -R12
l4003: ldr R2, l4005
l4004: b l4006
l4005: .word 1048516
l4006: swp R11, R6, [R2]
l4007: movMIs R4, R5, LSL #30
l4008: nop
interrupt_745: l4009: subs R7, R14, #503316480
interrupt_155: l4010: cmpMI R0, R4, LSL #7
l4011: mov R8, #20
l4012: strh R3, [sp, +R8]
l4013: mov R4, #4
l4014: ldrsh R2, [sp, -R4]
l4015: bVC l4023
l4016: add R1, R0, #224
l4017: cmnMI R1, R4, ROR #10
l4018: movLT R2, #-150994944
l4019: mov R12, #-2113929216
interrupt_2: l4020: tst R8, R8
l4021: movVS R10, R1, LSR #14
interrupt_669: l4022: b l4024
interrupt_756: l4023: b l4017
l4024: movs R4, R7, ROR #23
l4025: movEQs R8, R14, LSR #11
l4026: add R6, R3, R6
interrupt_605: l4027: sbc R2, R11, #1472
l4028: orrs R4, R6, R1
l4029: rsbLEs R0, R14, R8, LSL #6
l4030: teq R14, R14, LSR #10
l4031: bGT l4032
l4032: rsbCS R14, R14, #335544321
l4033: addLEs R6, R3, #3604480
l4034: ldr R10, l4036
l4035: b l4037
l4036: .word 1048488
interrupt_425: l4037: swpNEb R4, R9, [R10]
l4038: ldr R9, l4040
l4039: b l4041
l4040: .word 1048524
l4041: swpMIb R2, R6, [R9]
interrupt_877: l4042: teq R11, R10, LSL R5
l4043: ands R8, R12, R12, ASR #25
l4044: clz R2, R11
l4045: swi #14275034
interrupt_752: l4046: rsb R1, R6, R7
l4047: cmp R2, R11, LSL #7
l4048: rsbMI R4, R9, R11, LSR R1
interrupt_444: l4049: bicEQ R10, R10, R10
l4050: mvnLEs R3, R14, LSR R6
l4051: cmn R3, R11
interrupt_493: l4052: mov R10, #30
l4053: strB R1, [sp, +R10]
interrupt_185: l4054: swi #6549356
l4055: clzLE R7, R10
l4056: cmnLT R5, #2277376
l4057: ldrsb R12, [sp, #-31]
l4058: mvnGE R3, R12, LSR R5
interrupt_932: l4059: strLE R8, [sp, #-28]
l4060: mov R1, #21
l4061: ldrB R7, [sp, -R1]
l4062: eorNE R10, R15, #1536
l4063: and R8, R8, R11, ROR R6
l4064: subVC R8, R5, R11, ROR R8
l4065: eors R5, R1, R9, ASR R4
interrupt_273: l4066: adc R12, R6, R2
l4067: bicLE R4, R10, R10
l4068: subs R0, R1, R5, LSL R6
l4069: rsb R12, R4, #3997696
interrupt_445: l4070: subNE R9, R15, R0
l4071: ldrVSB R6, [sp, #-22]
l4072: swi #12226820
interrupt_469: l4073: rscVCs R0, R6, R7, LSR R4
l4074: mov R6, #6
l4075: ldrLTh R2, [sp, -R6]
l4076: addVC R8, R3, R9, LSL #31
l4077: mvnGE R5, #308
l4078: mvns R0, R12
interrupt_562: l4079: addVC R10, R10, R14
l4080: cmnLE R5, #2560
l4081: swi #7042049
interrupt_128: l4082: nop
interrupt_779: l4083: tstLS R2, R6, LSL R4
l4084: bLT l4088
l4085: add R1, R0, #132
l4086: subPLs R7, R10, R15, ASR #4
l4087: b l4089
l4088: b l4086
l4089: movs R6, R7, LSL #18
l4090: stmIB R13!, {R13}
l4091: adds R0, R14, R3, RRX 
l4092: movEQ R0, R3, ROR #31
interrupt_582: l4093: add R7, R3, #253952
interrupt_249: l4094: cmp R5, R12
l4095: mov R4, #2
l4096: ldrsh R4, [sp, -R4]
l4097: mov R9, #34
l4098: ldrLEsb R10, [sp, -R9]
l4099: cmnVC R8, R2, LSR #7
l4100: mvnVCs R7, R15
l4101: cmp R4, R4
l4102: addPLs R6, R10, R0, ASR #1
l4103: teq R0, #18
l4104: swi #15503356
l4105: clzMI R4, R4
l4106: eor R8, R8, R4, RRX 
l4107: movGEs R7, R8
interrupt_169: l4108: swi #12331542
l4109: bic R7, R10, #241664
l4110: tstGE R5, #2031616
interrupt_796: l4111: cmpGE R8, #116391936
interrupt_545: l4112: stmIA R13!, {R10, R14}
l4113: swi #15646200
l4114: cmnLT R0, #11520
l4115: mov R7, #7
interrupt_574: l4116: ldrVSsb R7, [sp, -R7]
interrupt_977: l4117: ldr R12, [sp, #+16]!
l4118: ldrCCB R11, [sp, #+5]
l4119: strPLh R7, [sp, #+6]
l4120: ands R9, R7, R1, LSL R1
interrupt_69: l4121: ldmDB R13!, {R3}
l4122: addCS R0, R10, R4, RRX 
l4123: subCC R2, R11, R6, LSR R11
l4124: mov R0, #44
interrupt_808: l4125: strLEB R0, [sp, -R0]
l4126: strB R8, [sp, #-13]
interrupt_931: l4127: mov R6, #4
l4128: ldrh R8, [sp, +R6]
l4129: swi #14855733
l4130: ldr R1, l4132
l4131: b l4133
l4132: .word 1048532
l4133: swpMIb R12, R2, [R1]
l4134: ldmIB R13!, {R0, R1}
l4135: sbcLT R7, R14, R0, ROR #10
l4136: subCCs R10, R8, R5, RRX 
l4137: rscCS R9, R2, #630784
l4138: swi #5196357
l4139: b l4146
l4140: add R1, R0, #111
l4141: bicVSs R7, R15, R7
interrupt_729: l4142: clzVS R2, R6
interrupt_852: l4143: rsbVS R14, R10, R6, ROR #31
l4144: eorCCs R5, R6, R7
interrupt_861: l4145: b l4147
l4146: b l4141
l4147: b l4154
l4148: clz R2, R9
l4149: cmp R6, R4
l4150: cmpEQ R9, R8, ASR R4
l4151: clzVC R5, R6
interrupt_136: l4152: mvnCSs R4, R14
l4153: mvn R3, R12
l4154: subEQ R11, R10, R1, ASR R14
l4155: nop
l4156: sbcCCs R12, R8, #-335544317
l4157: strB R2, [sp, #-30]
l4158: rsbLS R12, R8, #63438848
l4159: ldr R3, l4161
l4160: b l4162
interrupt_655: l4161: .word 1048504
interrupt_293: l4162: swpPL R7, R12, [R3]
l4163: eorNEs R3, R14, #-1677721600
l4164: sub R10, R9, R1
l4165: ldrLSsh R11, [sp, #-24]
interrupt_258: l4166: ldrLSsh R3, [sp, #-40]
l4167: strh R12, [sp, #-58]
l4168: ldr R7, l4170
l4169: b l4171
l4170: .word 1048516
l4171: swpNEb R2, R11, [R7]
l4172: rsbVS R9, R11, R4
interrupt_105: l4173: addHIs R8, R1, R11, ASR #10
l4174: movLE R12, R5, RRX 
l4175: bics R12, R3, R5
l4176: eorCS R6, R2, R1, LSL R10
l4177: mov R6, #16
l4178: ldrsh R14, [sp, -R6]
l4179: ldr R5, [sp, #-44]!
interrupt_364: l4180: sbcs R14, R2, #3792
l4181: ldrGEB R3, [sp, #+8]
l4182: mvns R7, R0
l4183: adcHI R5, R14, #9472
interrupt_333: l4184: eorGEs R5, R10, #616
l4185: b l4191
l4186: add R1, R0, #191
l4187: andPL R12, R3, R11
l4188: orrVSs R7, R3, R5, LSR R10
l4189: adds R0, R7, #2031616
l4190: b l4192
l4191: b l4187
l4192: eor R10, R11, R11, LSR R5
l4193: sub R3, R1, R9
l4194: orrHI R7, R11, R6, LSL #17
l4195: adcLSs R9, R10, R15
l4196: eorNEs R14, R14, R7, ROR #23
l4197: stmDA R13, {R7, R11, R12, R14}
l4198: adcNE R8, R15, #4160
l4199: mov R3, #31
l4200: ldrLEsb R6, [sp, +R3]
l4201: mvnNE R10, #745472
l4202: ldr R1, l4204
l4203: b l4205
l4204: .word 1048540
l4205: swp R0, R4, [R1]
l4206: sbcCCs R10, R0, #397312
l4207: mov R14, #24
l4208: ldrCSh R6, [sp, +R14]
l4209: eor R7, R15, R14, ROR #6
l4210: ldr R6, l4212
l4211: b l4213
interrupt_141: l4212: .word 1048520
interrupt_264: l4213: swpGTb R5, R4, [R6]
l4214: teqVC R7, R4, ASR #29
l4215: ldmDB R13, {R1, R2, R9}
l4216: ldmIA R13!, {R0, R2, R5, R8, R10, R12, R14}
l4217: ldr R11, l4219
l4218: b l4220
l4219: .word 1048508
l4220: swp R1, R3, [R11]
l4221: eorLTs R7, R6, R10, RRX 
l4222: mvnLS R14, R14
l4223: strCSh R7, [sp, #+2]
l4224: sbcHI R9, R5, R14
l4225: nop
l4226: stmDB R13, {R8, R11}
interrupt_416: l4227: bicVCs R7, R11, R2
l4228: tst R15, R11, LSL #29
l4229: mov R10, #32
interrupt_894: l4230: ldrEQsh R4, [sp, -R10]
interrupt_835: l4231: mov R5, #22
l4232: strGEB R12, [sp, -R5]
l4233: rscLE R6, R12, R8, LSL #30
l4234: bCS l4243
l4235: add R1, R0, #13
l4236: tstGT R12, R5, LSL #25
interrupt_455: l4237: sub R5, R15, R4, RRX 
l4238: bicEQs R3, R7, R3
l4239: cmn R4, #18944
interrupt_70: l4240: sub R2, R4, R2, LSL #28
l4241: rsb R1, R8, R10, ASR R4
l4242: b l4244
l4243: b l4236
l4244: rsbNE R12, R6, #3899392
l4245: eorLE R5, R3, R5, RRX 
interrupt_91: l4246: swi #3100856
l4247: adc R14, R9, R12
l4248: addLS R4, R7, R14
l4249: swi #16286427
l4250: mov R14, #24
l4251: ldr R0, [sp, -R14]!
l4252: clz R6, R0
l4253: mov R0, #8
l4254: strB R0, [sp, +R0]
l4255: mov R6, #6
l4256: ldrLSsb R7, [sp, +R6]
l4257: bGT l4263
l4258: mvns R14, R11, RRX 
interrupt_922: l4259: orrMIs R4, R8, #30408704
l4260: cmpGE R14, R7
l4261: subs R14, R5, R11
l4262: clz R0, R8
l4263: subGTs R3, R2, #-2147483592
l4264: strh R4, [sp, #-10]
l4265: mov R0, #14
l4266: ldrCCh R7, [sp, -R0]
l4267: bMI l4272
l4268: cmpMI R1, R10
l4269: movs R1, R8
l4270: sbc R10, R0, R11
l4271: adcGEs R1, R11, R10, ASR #5
interrupt_157: l4272: ands R11, R10, R6, RRX 
interrupt_800: l4273: mov R7, #38
interrupt_879: l4274: ldrh R11, [sp, +R7]
interrupt_10: l4275: mov R14, #10
l4276: ldrsh R5, [sp, -R14]
l4277: ldmDB R13!, {R8, R9, R10, R12, R14}
l4278: teqHI R1, R10, LSL #10
l4279: mov R5, #19
l4280: ldrGTsb R4, [sp, +R5]
l4281: mov R14, #36
l4282: ldrCCsh R4, [sp, +R14]
l4283: rscPL R14, R5, R15, LSR #14
l4284: rscs R3, R6, #7104
l4285: mov R5, #22
interrupt_29: l4286: ldrh R8, [sp, +R5]
l4287: tstCC R1, R6, ASR #6
l4288: subs R8, R14, R12, RRX 
l4289: clz R0, R2
l4290: ldr R8, [sp, #+52]!
l4291: clzGE R7, R1
interrupt_929: l4292: clz R0, R5
interrupt_751: l4293: teq R3, R15, LSL #23
l4294: nop
l4295: stmIA R13!, {R0}
l4296: tstLS R9, R7, ASR #11
l4297: rscLEs R4, R2, #822083584
l4298: movEQ R6, R7
interrupt_220: l4299: stmIB R13!, {R3}
l4300: eorHI R9, R8, R3, ASR #19
l4301: b l4307
interrupt_664: l4302: mov R9, R9, ROR #7
l4303: ands R6, R11, R8, LSR #29
l4304: adcEQ R10, R0, #4194304
l4305: adcPLs R0, R11, R7, ROR R12
l4306: tstPL R10, R9, RRX 
l4307: movHIs R12, R7
l4308: mov R8, #23
interrupt_708: l4309: strB R0, [sp, -R8]
interrupt_224: l4310: cmnPL R5, R1, ROR R8
l4311: mov R4, #0
l4312: ldrsh R10, [sp, +R4]
l4313: movVS R14, #3696
l4314: sbcLTs R9, R5, R12, RRX 
l4315: swi #6712580
interrupt_88: l4316: nop
interrupt_324: l4317: bHI l4323
l4318: add R1, R0, #213
l4319: andLT R9, R9, R12, ROR #3
l4320: rscGE R4, R1, R10
l4321: orrMI R10, R15, #2816
interrupt_305: l4322: b l4324
l4323: b l4319
l4324: mov R0, #516
interrupt_358: l4325: rsc R11, R15, R10, RRX 
l4326: mov R9, #13
l4327: ldrsb R5, [sp, -R9]
l4328: sbcLE R5, R11, R2, RRX 
l4329: adcs R3, R4, R7, ROR #4
l4330: mvn R1, R5, LSR R6
interrupt_190: l4331: ldrLSh R12, [sp, #-18]
interrupt_799: l4332: mov R3, #50
l4333: strh R2, [sp, -R3]
interrupt_127: l4334: tstNE R1, R4
l4335: strVSh R2, [sp, #-54]
l4336: mov R4, #8
l4337: ldr R10, [sp, -R4]!
l4338: bMI l4347
l4339: add R1, R0, #151
l4340: orr R0, R15, R14, LSL #31
l4341: adcEQs R11, R8, R15
l4342: bicMIs R5, R9, R3, ASR #8
l4343: sbc R2, R10, R3
interrupt_431: l4344: eorLSs R3, R6, R1
l4345: sbcLT R5, R14, R0, LSR R14
l4346: b l4348
l4347: b l4340
l4348: stmGTDB R13, {R2, R3, R7, R8, R12}
l4349: teqPL R7, R7, ASR R5
l4350: adcCC R11, R12, R0
l4351: subHI R11, R4, R14
l4352: mov R6, #40
l4353: str R1, [sp], -R6
l4354: addLE R11, R3, R2, RRX 
l4355: rsc R4, R4, R7
l4356: mov R7, #12
l4357: ldrCCsb R10, [sp, -R7]
interrupt_907: l4358: subVCs R10, R11, #104
l4359: orrLT R7, R12, R6, LSL R10
l4360: ldr R7, l4362
l4361: b l4363
l4362: .word 1048492
l4363: swpb R4, R6, [R7]
l4364: str R2, [sp, #+20]!
l4365: movGEs R3, R4
l4366: mov R0, #14
l4367: ldrVCsh R8, [sp, -R0]
l4368: ldr R2, l4370
interrupt_568: l4369: b l4371
l4370: .word 1048492
l4371: swpEQb R14, R12, [R2]
l4372: rscLT R12, R6, R1, LSL #5
l4373: tstCS R10, R14, LSR #10
l4374: teq R6, R10, LSL R12
l4375: mov R9, #20
l4376: ldrh R9, [sp, -R9]
l4377: bPL l4382
l4378: rsbHI R5, R14, R12, LSR R6
l4379: bic R3, R4, R6, ROR #2
l4380: rsc R9, R6, R12, LSL #20
interrupt_824: l4381: rsbs R8, R4, R10, ROR #4
l4382: bicPL R5, R7, R11, LSL R0
l4383: subs R11, R4, #804
l4384: tstLE R2, R11, RRX 
l4385: teqLT R8, R15, ASR #1
interrupt_12: l4386: swi #1440568
l4387: ldr R12, l4389
interrupt_518: l4388: b l4390
interrupt_132: l4389: .word 1048520
l4390: swpb R1, R9, [R12]
l4391: strB R0, [sp, #-43]
l4392: bGT l4397
l4393: movPL R1, R15, RRX 
interrupt_47: l4394: cmpGT R11, #14464
l4395: mov R0, R5, RRX 
l4396: adcGEs R6, R9, #976
l4397: rsbVSs R11, R1, #137
interrupt_670: l4398: rsbLTs R0, R3, R5, LSL #30
l4399: movGE R0, R5, RRX 
l4400: sbcLEs R7, R10, R14
l4401: addCSs R12, R1, R6, LSL R1
l4402: mvns R5, #227328
interrupt_741: l4403: rsb R11, R4, #64749568
l4404: rsbCS R11, R2, R15, LSL #29
l4405: b l4412
l4406: add R1, R0, #100
l4407: sbcCS R9, R1, #2670592
l4408: teq R7, #42752
l4409: cmp R10, #583008256
l4410: teqVS R1, R11, LSL R2
l4411: b l4413
l4412: b l4407
l4413: ldrGTsh R3, [sp, #+30]
l4414: sbc R12, R6, R11
l4415: mov R3, #2
l4416: ldrh R4, [sp, -R3]
l4417: mov R6, R7, RRX 
l4418: mov R12, #31
interrupt_43: l4419: ldrLSsb R10, [sp, -R12]
interrupt_355: l4420: andNE R12, R1, #3792
l4421: ldr R0, l4423
l4422: b l4424
l4423: .word 1048492
l4424: swpb R10, R5, [R0]
l4425: orr R5, R10, R1
interrupt_867: l4426: subMIs R0, R9, #65280
interrupt_598: l4427: sub R5, R11, R9, LSR #19
l4428: sbcVC R1, R14, R5, RRX 
l4429: ldmCCIB R13, {R2, R6, R8, R10, R11}
l4430: ldmDB R13, {R7, R9}
l4431: mov R6, #20
l4432: ldrsb R9, [sp, +R6]
interrupt_770: l4433: swi #3390156
l4434: ldrh R0, [sp, #-20]
l4435: ldrh R10, [sp, #-6]
l4436: andLTs R12, R4, R4
l4437: mov R10, #26
l4438: ldrsh R8, [sp, -R10]
interrupt_46: l4439: andLTs R14, R1, #1073741842
l4440: ldrLEB R2, [sp, #+26]
l4441: orr R6, R6, R0, LSR R0
l4442: rscEQs R2, R12, #196
l4443: bics R10, R10, R3
l4444: mov R8, #26
interrupt_187: l4445: strB R10, [sp, +R8]
l4446: b l4452
l4447: add R1, R0, #99
interrupt_528: l4448: sbc R8, R7, R11, RRX 
interrupt_252: l4449: rscs R0, R12, R6
l4450: rscs R7, R1, R14, LSR #7
l4451: b l4453
l4452: b l4448
l4453: ldrB R12, [sp, #+4]
interrupt_514: l4454: subGT R6, R4, #-2147483601
interrupt_533: l4455: mov R4, #38
l4456: ldrLTh R8, [sp, -R4]
l4457: subs R11, R2, #26
l4458: and R5, R14, R3
l4459: cmpCC R14, #1879048192
l4460: swi #12774808
l4461: ldr R9, l4463
interrupt_704: l4462: b l4464
l4463: .word 1048484
l4464: swpMIb R6, R8, [R9]
l4465: orr R9, R3, #724
l4466: adc R14, R14, R1
l4467: mov R7, #16
l4468: strVC R9, [sp, +R7]
l4469: b l4475
l4470: add R1, R0, #177
l4471: movLSs R10, R5
l4472: addNEs R3, R10, R12
l4473: bicLT R3, R3, R14, LSR #23
l4474: b l4476
l4475: b l4471
interrupt_819: l4476: eorGEs R2, R7, R10
l4477: addCCs R7, R7, #125952
interrupt_821: l4478: teqCC R14, R8
l4479: mov R14, #27
interrupt_580: l4480: ldrB R2, [sp, +R14]
interrupt_615: l4481: ldr R2, l4483
l4482: b l4484
l4483: .word 1048552
l4484: swpb R8, R12, [R2]
l4485: ldr R5, l4487
l4486: b l4488
interrupt_102: l4487: .word 1048508
l4488: swp R0, R6, [R5]
l4489: mov R11, #25
l4490: ldrNEsb R0, [sp, +R11]
interrupt_967: l4491: sbcLTs R10, R12, R7, ASR R3
l4492: eorLTs R4, R5, #218112
interrupt_476: l4493: ldrsb R14, [sp, #-14]
l4494: clz R8, R4
l4495: cmpEQ R7, R3
l4496: subs R0, R14, R6, ASR #11
l4497: mov R3, #2
l4498: ldrLTsb R2, [sp, +R3]
l4499: addHI R5, R1, R4, LSR #2
interrupt_698: l4500: eorHI R3, R9, R8, RRX 
interrupt_776: l4501: ldr R0, l4503
l4502: b l4504
l4503: .word 1048512
interrupt_51: l4504: swpPL R12, R1, [R0]
l4505: tst R3, R2
l4506: cmn R11, R11, LSR #20
l4507: ldr R5, l4509
l4508: b l4510
l4509: .word 1048540
l4510: swp R1, R6, [R5]
l4511: clz R2, R1
interrupt_188: l4512: mvnNEs R10, R8, LSR #1
l4513: cmp R9, R10
l4514: bics R9, R3, R0, RRX 
interrupt_784: l4515: adcGTs R10, R0, R0
l4516: ands R2, R6, #97517568
interrupt_288: l4517: subs R8, R1, R2, LSL R5
l4518: eorLS R10, R9, R6, LSR R12
l4519: tstHI R3, R14
l4520: mov R5, #27
l4521: strB R14, [sp, +R5]
l4522: stmIA R13!, {R4, R7, R8, R11, R12, R14}
l4523: andVCs R11, R11, #19398656
l4524: subCS R0, R7, R1, LSL #28
interrupt_120: l4525: rsbEQs R7, R14, R5
interrupt_572: l4526: mov R9, #32
l4527: ldrsh R10, [sp, -R9]
l4528: tstVS R9, R11
interrupt_495: l4529: nop
interrupt_755: l4530: adds R12, R8, #-2147483593
interrupt_8: l4531: clzCS R14, R11
l4532: rsbs R5, R3, R3, RRX 
l4533: sbcGTs R9, R0, R4, RRX 
l4534: mov R9, #42
l4535: ldrsh R14, [sp, -R9]
l4536: mov R7, #8
interrupt_659: l4537: str R3, [sp, -R7]!
l4538: mov R9, #60
l4539: ldr R3, [sp, -R9]
l4540: ldrh R7, [sp, #-28]
l4541: mov R11, #48
l4542: ldr R14, [sp], -R11
l4543: strB R8, [sp, #+19]
interrupt_570: l4544: ldr R7, l4546
l4545: b l4547
interrupt_956: l4546: .word 1048528
interrupt_201: l4547: swpCCb R10, R3, [R7]
l4548: mov R3, #31
l4549: strLSB R2, [sp, +R3]
l4550: stmDA R13!, {R2}
l4551: ldrCSsb R3, [sp, #+41]
l4552: movGT R3, R2, ASR R5
l4553: andMI R14, R2, R8, ROR R1
l4554: mov R4, #24
interrupt_420: l4555: ldr R9, [sp, +R4]!
l4556: sub R7, R0, R3, LSL R4
l4557: mov R0, #40
interrupt_104: l4558: strNEh R9, [sp, +R0]
l4559: ldr R8, l4561
l4560: b l4562
interrupt_241: l4561: .word 1048508
l4562: swpLT R2, R4, [R8]
interrupt_498: l4563: mov R10, #4
l4564: strh R8, [sp, -R10]
l4565: swi #14957520
l4566: rsc R6, R4, #201326594
interrupt_519: l4567: stmIA R13!, {R1, R3, R6}
l4568: ands R4, R4, R0
l4569: adc R5, R11, R15, ASR #0
l4570: bic R6, R4, #218
interrupt_16: l4571: addNEs R11, R15, R1, ROR #18
l4572: sbcs R11, R12, R0, LSL R10
l4573: ands R8, R14, R12
interrupt_592: l4574: ldmIA R13!, {R1, R2, R6, R8, R11, R14}
l4575: cmp R4, R10
l4576: cmpPL R4, #37
l4577: clz R0, R2
l4578: ldr R2, l4580
l4579: b l4581
l4580: .word 1048528
interrupt_272: l4581: swp R6, R12, [R2]
l4582: bNE l4589
l4583: add R1, R0, #155
interrupt_603: l4584: rsbLT R5, R7, R14, ASR R5
interrupt_930: l4585: mvns R10, #-738197501
l4586: addCS R1, R11, R4
l4587: tstVS R6, R3, ROR #10
interrupt_758: l4588: b l4590
l4589: b l4584
interrupt_139: l4590: rsbVC R5, R7, R7, LSL #30
l4591: ldrGEsh R3, [sp, #-46]
l4592: mvnCC R6, #72704
l4593: stmEQIB R13, {R8}
l4594: stmIB R13, {R6}
l4595: ldr R8, l4597
interrupt_826: l4596: b l4598
interrupt_437: l4597: .word 1048512
l4598: swpGE R14, R1, [R8]
interrupt_640: l4599: adcs R0, R4, R3, ASR #0
l4600: ldrsh R5, [sp, #-68]
l4601: mov R11, #26
l4602: ldrLTh R10, [sp, -R11]
interrupt_195: l4603: clzGE R5, R2
l4604: rsb R8, R5, R9
l4605: mov R12, #46
interrupt_160: l4606: ldrEQsb R12, [sp, -R12]
l4607: mov R3, #42
l4608: strPLh R11, [sp, -R3]
l4609: nop
l4610: teqLS R6, R8, RRX 
interrupt_812: l4611: str R3, [sp], #-68
l4612: cmnLT R6, R6, LSL #17
interrupt_503: l4613: subs R11, R6, R12, ASR #6
interrupt_172: l4614: ldrsb R1, [sp, #+1]
l4615: mov R8, #4
l4616: ldr R4, [sp, +R8]!
l4617: mvn R6, #59
l4618: swi #16528944
l4619: orrMI R10, R0, R14, ASR #0
l4620: rsbHIs R10, R5, R7
l4621: orrs R2, R2, R14
l4622: mov R14, #7
l4623: ldrGEsb R9, [sp, +R14]
l4624: b l4625
interrupt_753: l4625: tst R0, R11, LSL R6
l4626: ldr R9, l4628
l4627: b l4629
l4628: .word 1048548
interrupt_76: l4629: swpVSb R11, R7, [R9]
l4630: subs R0, R6, #59
l4631: teqMI R6, R9
l4632: teqLS R5, R4, LSR R5
l4633: swi #9492096
interrupt_359: l4634: mov R0, #8
l4635: str R1, [sp, +R0]
l4636: rsbNE R6, R10, R4, LSL #23
l4637: ldr R8, l4639
l4638: b l4640
l4639: .word 1048496
l4640: swp R10, R4, [R8]
l4641: ldmIA R13!, {R0, R2, R3, R4, R8, R12, R14}
l4642: movs R6, R4
interrupt_260: l4643: bVC l4652
l4644: add R1, R0, #12
l4645: cmpVC R8, R7, ASR R3
l4646: subLEs R1, R2, R9, ROR R7
l4647: clzLE R7, R14
l4648: teqPL R2, #-2147483638
interrupt_106: l4649: sbcs R6, R15, #1073741835
l4650: rsbNEs R2, R12, R4, ASR R5
l4651: b l4653
l4652: b l4645
l4653: ldr R7, l4655
interrupt_60: l4654: b l4656
interrupt_757: l4655: .word 1048504
l4656: swp R4, R2, [R7]
interrupt_163: l4657: tst R6, R9, ROR R14
interrupt_663: l4658: teq R14, R3
l4659: nop
interrupt_412: l4660: mov R2, #22
l4661: strVSh R0, [sp, +R2]
l4662: cmnGT R4, R8, RRX 
l4663: ldmDB R13!, {R10}
interrupt_94: l4664: movPLs R6, #3129344
interrupt_607: l4665: adds R12, R8, R14, LSL R1
l4666: adcs R2, R5, R12
l4667: cmn R4, #394264576
l4668: clzPL R8, R4
l4669: ldmDA R13!, {R2, R10, R12}
l4670: bLE l4672
l4671: adcs R4, R0, R8, ROR R2
l4672: subHI R6, R0, #17039360
l4673: swi #15390707
l4674: subs R3, R12, #939524096
l4675: adcEQ R0, R14, #1073741853
interrupt_892: l4676: bLS l4683
l4677: add R1, R0, #161
l4678: tstPL R2, R6
l4679: sbcs R7, R9, R1
l4680: rsbHI R2, R3, R1
l4681: bicLT R5, R9, R2, LSR R8
l4682: b l4684
interrupt_923: l4683: b l4678
l4684: sbcGT R11, R8, R11, ROR #23
l4685: adcs R4, R7, R12
interrupt_243: l4686: ldr R4, [sp, #+44]!
l4687: swi #2283586
l4688: ldrLSsh R7, [sp, #-10]
l4689: tst R6, R15, LSR #23
l4690: ldmDB R13!, {R0, R1, R2, R3, R5, R6, R8, R9, R10, R14}
l4691: clzCC R11, R3
l4692: rsb R2, R8, R0
l4693: cmp R12, R11, ASR #24
l4694: ldr R4, [sp, #+8]
l4695: nop
l4696: mov R9, #18
l4697: ldrNEsh R3, [sp, -R9]
interrupt_99: l4698: ldr R2, l4700
l4699: b l4701
l4700: .word 1048512
interrupt_20: l4701: swpGTb R6, R3, [R2]
interrupt_116: l4702: mov R14, #18
l4703: ldrh R9, [sp, +R14]
l4704: mvns R7, #1061158912
interrupt_742: l4705: ldrPLB R14, [sp, #+55]
l4706: teq R5, R10, ASR #5
l4707: eor R4, R8, R5, RRX 
l4708: mov R7, #53
l4709: ldrsb R8, [sp, +R7]
l4710: ldrLEB R4, [sp, #-20]
l4711: adcVCs R7, R1, R10, ROR #22
l4712: mov R7, #42
l4713: ldrsb R12, [sp, +R7]
l4714: tst R3, R1, LSL R8
l4715: sbcCCs R12, R12, R5, RRX 
interrupt_146: l4716: tstNE R2, R11, LSR R8
l4717: ldr R3, l4719
l4718: b l4720
l4719: .word 1048532
l4720: swpLS R7, R2, [R3]
l4721: bGT l4730
l4722: add R1, R0, #176
l4723: eor R14, R2, R14, ASR #28
interrupt_798: l4724: adcs R14, R12, R7, ASR R10
l4725: andVCs R2, R0, R9
l4726: mvnEQs R1, R3, ROR #16
l4727: rsbLEs R5, R11, R10
l4728: movLE R1, R12, RRX 
l4729: b l4731
l4730: b l4723
interrupt_994: l4731: movs R11, R2, ASR #30
l4732: addVS R10, R4, R8
interrupt_761: l4733: swi #6937158
l4734: ldrB R0, [sp, #+1]
l4735: str R4, [sp, #+44]!
interrupt_464: l4736: ldmDB R13!, {R9}
l4737: cmnLT R15, R14, RRX 
l4738: ldrVCsh R6, [sp, #-52]
l4739: stmDA R13!, {R2, R7, R8, R9, R10, R14, R15}
l4740: rscCS R10, R15, #-2147483625
interrupt_855: l4741: ldmDA R13!, {R10}
l4742: subs R11, R0, R11, LSR #5
l4743: bicCS R11, R3, #114294784
l4744: ldmIB R13, {R1, R3, R4, R5, R8, R14}
l4745: eorPLs R12, R6, #29440
l4746: bicEQs R14, R5, R0, ROR #29
l4747: ldr R6, l4749
l4748: b l4750
l4749: .word 1048496
l4750: swpVCb R1, R11, [R6]
l4751: subs R8, R11, #-2147483623
l4752: swi #6984410
l4753: ldr R7, l4755
interrupt_211: l4754: b l4756
l4755: .word 1048488
l4756: swpb R2, R10, [R7]
l4757: str R6, [sp], #+8
l4758: tstPL R4, R3, RRX 
l4759: cmn R12, R7, LSL #20
interrupt_78: l4760: ldr R1, l4762
interrupt_943: l4761: b l4763
l4762: .word 1048512
interrupt_981: l4763: swpHIb R4, R11, [R1]
l4764: cmn R12, #2850816
l4765: mov R2, #18
l4766: strB R10, [sp, -R2]
interrupt_45: l4767: mov R5, #18
interrupt_62: l4768: ldrCCsh R8, [sp, -R5]
l4769: swi #12728663
l4770: mov R4, #34
l4771: ldrsb R9, [sp, -R4]
l4772: sub R2, R3, R3, LSR R12
l4773: bMI l4780
interrupt_383: l4774: rsbGTs R7, R6, R7, LSL #7
l4775: adcHI R8, R8, #843055104
l4776: subCSs R12, R15, R7, LSR #7
l4777: orrLTs R2, R6, R8, LSR R7
interrupt_940: l4778: cmp R9, R1
interrupt_233: l4779: rsbCSs R10, R8, R4
l4780: rscGEs R1, R3, R2, LSL #10
l4781: orrs R10, R12, R6, ASR R4
l4782: rsbCSs R10, R6, R3, RRX 
l4783: swi #5131892
l4784: sbcGE R7, R12, R1, LSR #12
l4785: strGTh R8, [sp, #+32]
l4786: adds R9, R12, #738197504
l4787: mov R5, #14
l4788: ldrGTB R6, [sp, +R5]
l4789: and R0, R11, R4, ROR #29
l4790: rsbGTs R14, R7, R9
l4791: bicEQ R4, R3, R4
l4792: stmIA R13!, {R0, R1, R4, R5, R6, R7, R8, R11}
l4793: addLTs R8, R5, #1073741862
l4794: movs R6, R8, ASR #6
l4795: mov R9, #57
l4796: strB R11, [sp, -R9]
interrupt_902: l4797: swi #15383193
interrupt_313: l4798: cmpMI R10, R14
l4799: strLT R6, [sp, #-44]
l4800: bVS l4807
l4801: add R1, R0, #233
l4802: movs R6, R10, ROR #6
l4803: eorGEs R0, R15, #1140850689
l4804: rsbCC R14, R12, R14, LSR #12
l4805: clzEQ R0, R8
l4806: b l4808
l4807: b l4802
l4808: subNEs R0, R1, R7
l4809: tstLS R12, R11
l4810: tst R4, R8, LSR #16
interrupt_365: l4811: ldr R5, [sp, #-48]
l4812: subVC R2, R3, R8
l4813: swi #13647870
l4814: clzHI R6, R7
l4815: bGE l4822
interrupt_748: l4816: rscLT R7, R12, #159383552
l4817: subs R12, R6, R12, ASR #1
l4818: bicEQs R2, R8, R3, ROR R5
l4819: teqGT R1, R6, RRX 
l4820: cmp R8, R0, LSR #1
l4821: cmnNE R7, #2000
l4822: mov R1, R11, LSR R10
l4823: cmp R2, #1442840576
interrupt_110: l4824: swi #1372365
l4825: adds R6, R0, R7, LSR R7
interrupt_955: l4826: clz R1, R7
l4827: subVS R10, R10, R4, ASR R12
interrupt_148: l4828: mov R10, #6
l4829: ldrGEh R8, [sp, +R10]
interrupt_55: l4830: swi #11787191
l4831: and R5, R6, #107
l4832: ldr R5, l4834
l4833: b l4835
l4834: .word 1048480
l4835: swpLE R7, R0, [R5]
l4836: ldrsb R4, [sp, #-45]
interrupt_71: l4837: mvns R8, #200
interrupt_422: l4838: ldrB R6, [sp, #-62]
interrupt_428: l4839: addVCs R4, R3, #741376
interrupt_656: l4840: clzLT R14, R14
interrupt_870: l4841: subEQs R10, R5, R5, LSL R6
l4842: mov R6, #36
l4843: str R3, [sp], -R6
interrupt_806: l4844: mov R4, #15
l4845: ldrsb R7, [sp, -R4]
l4846: adcs R3, R10, R9
l4847: subEQs R5, R7, #24832
l4848: stmIA R13!, {R0, R1, R4, R8}
l4849: eor R2, R0, R5, LSL R8
interrupt_81: l4850: nop
l4851: mov R9, #24
l4852: strLTh R8, [sp, -R9]
l4853: clzNE R11, R10
interrupt_488: l4854: strB R4, [sp, #+26]
l4855: adcVC R7, R11, R1
l4856: tst R4, R2
l4857: str R10, [sp], #+16
l4858: subLEs R8, R12, R9, RRX 
l4859: rsbs R1, R5, R6, LSL #8
l4860: bHI l4864
l4861: adc R8, R10, R1
l4862: and R4, R0, #1610612736
l4863: clz R2, R3
l4864: clz R4, R14
l4865: swi #16129181
l4866: ldr R9, l4868
l4867: b l4869
l4868: .word 1048500
l4869: swpNE R14, R3, [R9]
l4870: subMI R2, R11, R3, ASR #7
l4871: teq R6, R3, LSL #5
l4872: clzPL R7, R8
l4873: subLT R10, R5, R2
l4874: mov R9, #3
l4875: ldrB R12, [sp, +R9]
l4876: ldr R8, l4878
l4877: b l4879
l4878: .word 1048488
interrupt_191: l4879: swp R14, R6, [R8]
l4880: swi #4193920
l4881: strB R14, [sp, #-13]
interrupt_763: l4882: swi #3408777
l4883: cmpCC R5, R7, ROR R9
l4884: stmDB R13!, {R7}
l4885: eor R8, R4, R5, LSR R12
l4886: subLTs R3, R9, #1073741824
l4887: strGTB R3, [sp, #-57]
interrupt_0: l4888: str R2, [sp], #-12
l4889: ldmIB R13!, {R0, R1, R5, R6, R8, R10}
interrupt_214: l4890: bic R14, R0, R15
interrupt_403: l4891: sbcHIs R5, R3, R6
l4892: teqVC R14, R3, LSL #9
l4893: ldrVCsb R3, [sp, #-45]
l4894: tstLT R6, #1493172224
l4895: mvnGE R6, R4, LSL R14
l4896: ldmPLDB R13, {R1, R10}
l4897: sub R10, R8, #3047424
l4898: ldr R7, l4900
l4899: b l4901
l4900: .word 1048528
l4901: swpCCb R9, R11, [R7]
interrupt_540: l4902: ldr R4, [sp, #-64]
l4903: tstLS R11, R8, LSL #28
l4904: ldrGTh R10, [sp, #-22]
interrupt_263: l4905: cmpLE R6, R6
l4906: swi #418372
l4907: b l4916
l4908: mov R2, R14, ASR R14
interrupt_927: l4909: eorLEs R5, R12, R4, RRX 
l4910: addVSs R10, R1, #929792
interrupt_538: l4911: ands R6, R8, #3072
l4912: rsbMI R5, R4, R12, ASR #15
l4913: teq R2, R11, ASR #7
l4914: cmn R11, R8
interrupt_794: l4915: eor R1, R10, R8, LSL R10
l4916: subPLs R10, R11, R10, ROR #1
l4917: sbc R6, R6, R2, ASR #27
interrupt_865: l4918: eor R1, R10, R9, LSL #7
interrupt_633: l4919: cmn R6, R4, ASR #22
l4920: ldr R2, [sp, #-52]!
l4921: andVS R11, R4, R2, ASR R14
l4922: movs R4, R0, LSL R12
interrupt_842: l4923: mov R8, #46
l4924: ldrh R8, [sp, +R8]
l4925: ands R11, R1, R5, LSL #18
l4926: bicCS R10, R7, #65798144
l4927: andNE R14, R11, R14, LSL R10
l4928: rscLT R9, R15, #8388608
interrupt_957: l4929: b l4933
l4930: add R1, R0, #65
l4931: mvnLE R12, R14
l4932: b l4934
l4933: b l4931
l4934: mov R12, #9
l4935: ldrLTB R10, [sp, +R12]
l4936: eorPLs R4, R3, R3
interrupt_460: l4937: cmp R9, #4194304
l4938: addHI R12, R10, R8, ASR R6
l4939: b l4947
interrupt_379: l4940: add R1, R0, #106
l4941: cmnEQ R14, #9792
l4942: bicVS R14, R10, R6
interrupt_421: l4943: adcs R4, R0, #-1342177277
interrupt_212: l4944: clz R14, R1
l4945: teq R0, R10, ROR R1
l4946: b l4948
l4947: b l4941
l4948: rsc R9, R7, R8, ASR #13
l4949: add R5, R5, R7, ASR #27
l4950: rscVS R8, R2, #335544320
interrupt_551: l4951: rsc R10, R3, #29360128
interrupt_42: l4952: movLSs R3, R12, ROR R14
l4953: mvnLSs R2, R4, LSR R10
l4954: bLT l4960
interrupt_616: l4955: add R1, R0, #104
interrupt_685: l4956: orrs R2, R10, R12
l4957: sbc R2, R9, #7168
l4958: rscCSs R4, R0, #897024
l4959: b l4961
interrupt_654: l4960: b l4956
l4961: movs R11, #-268435453
l4962: rsbs R8, R9, R8, RRX 
l4963: nop
l4964: mov R2, #50
l4965: ldrh R10, [sp, +R2]
l4966: subLT R10, R6, R15
l4967: ldr R3, l4969
interrupt_972: l4968: b l4970
interrupt_68: l4969: .word 1048548
interrupt_721: l4970: swpGEb R11, R9, [R3]
l4971: stmDB R13!, {R10, R11}
interrupt_737: l4972: mov R6, #8
l4973: ldrB R0, [sp, -R6]
l4974: ldrsh R12, [sp, #+6]
l4975: mov R0, #4
l4976: str R10, [sp, +R0]!
interrupt_573: l4977: ands R7, R6, R5
l4978: andVC R14, R7, R2, LSL R2
l4979: andPLs R11, R1, R0, LSL R12
l4980: swi #9773826
l4981: swi #472145
l4982: cmpVS R5, R5, RRX 
l4983: cmnMI R1, #53248
interrupt_875: l4984: rsb R12, R4, R1, ASR #16
l4985: and R14, R9, R5, LSL #30
l4986: rsb R8, R6, R5
l4987: bics R11, R10, R3, LSL #14
interrupt_117: l4988: bicVSs R6, R8, R0, ROR #10
l4989: swi #3172584
l4990: mvns R14, R14, LSR R7
l4991: rsbGE R11, R0, R4, LSR #13
interrupt_504: l4992: eors R11, R5, R1
interrupt_396: l4993: ldrsh R14, [sp, #-8]
l4994: rsc R11, R6, #4030464
l4995: andMI R4, R2, R0
l4996: mvn R8, R0, ASR R4
l4997: nop
l4998: swi #5351990
interrupt_881: l4999: ldrMIB R10, [sp, #-4]
l5000: nop
end: b end

