vectors_start:
b main
b .
b .
b .
b .
b .
b irq_handler
b .

UART_DR: .word 0x16000000
irq_handler:
str r1, [sp, #0]
ldr r1, UART_DR
ldr r1, [r1]
ldr r1, [sp, #0]
subs pc,r14,#4


.global main
main:

# INITIALIZING R0 and SP

subs R0, R15, R15
ldr sp, val
b next
val: .word 0xffff0

# INITIALIZING REGISTERS

next: ldr R1, val1
b next1
val1: .word 1703275292
next1:ldr R2, val2
b next2
val2: .word 2083087279
next2:ldr R3, val3
b next3
val3: .word 38724358
next3:ldr R4, val4
b next4
val4: .word 2052359021
next4:ldr R5, val5
b next5
val5: .word 3404623576
next5:ldr R6, val6
b next6
val6: .word 2051182141
next6:ldr R7, val7
b next7
val7: .word 2036152216
next7:ldr R8, val8
b next8
val8: .word 4272635369
next8:ldr R9, val9
b next9
val9: .word 3094397903
next9:ldr R10, val10
b next10
val10: .word 3303574917
next10:ldr R11, val11
b next11
val11: .word 4049754608
next11:ldr R12, val12
b next12
val12: .word 3703305871
next12:ldr R14, val14
b next14
val14: .word 2630908015

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 1107708874
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 554318651
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3380731639
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 2091159462
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 120894098
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 254753835
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 3908927753
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 3024892778
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 4126923124
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 2686916922
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 1774631147
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 445641088
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 3513408478
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 2152566418
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 2572380941
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 1963590317
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 3583680216
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 259776514
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 739714639
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 2097992714
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 641725346
next35:str R1, [sp, #-80]

# INITIALIZING INTERRUPTS

b next36
val36: .word 0x1ffff0
PIC_IRQ_ENCLR: .word 0x1400000c
UART0_IMSC: .word 0x16000038
PIC_IRQ_ENSET: .word 0x14000008
next36: MRS r0, cpsr
BIC r1, r0, #0x1F
ORR r1, r1, #0x12
MSR cpsr, r1
LDR sp, val36
BIC r0, r0, #0x80
MSR cpsr, r0
ldr	r3, PIC_IRQ_ENCLR
mov	r2, #2
str	r2, [r3]
ldr	r3, UART0_IMSC
mov	r2, #16
str	r2, [r3]
ldr	r3, PIC_IRQ_ENSET
mov	r2, #2
str	r2, [r3]

# MAIN PROGRAM

l1: subs R9, R9, #1157627904
l2: mov R1, #32
l3: str R9, [sp, -R1]
interrupt_258: l4: add R2, R5, R2
l5: clzHI R7, R14
l6: rsb R5, R8, R8, RRX 
l7: cmnCC R15, R12, LSL #3
l8: stmDA R13!, {R13, R14, R15}
l9: addNE R2, R0, #3221225507
l10: rsbGEs R14, R2, R7, ROR R2
l11: mvnVS R2, #8192000
l12: ldr R11, l14
l13: b l15
l14: .word 1048500
interrupt_452: l15: swp R9, R0, [R11]
l16: ldmIA R13!, {R7}
interrupt_31: l17: clz R1, R8
interrupt_322: l18: mov R5, #16
l19: strPLh R4, [sp, -R5]
interrupt_394: l20: nop
interrupt_25: l21: nop
interrupt_257: l22: mov R6, #18
l23: ldrB R7, [sp, -R6]
l24: andCS R9, R12, R14, RRX 
l25: andHIs R7, R10, R14, RRX 
l26: stmGEDA R13, {R2, R4, R5, R7, R9, R10, R13}
interrupt_979: l27: tst R14, R6
l28: cmp R8, #11010048
l29: mvnLS R5, #4227858433
l30: mov R8, #71
l31: strB R12, [sp, -R8]
l32: bics R9, R8, R15, ROR #22
l33: orrEQs R7, R8, R7
l34: cmpNE R7, R5
l35: mov R7, #46
l36: ldrLSh R4, [sp, -R7]
interrupt_455: l37: mov R12, R4
l38: ldrB R1, [sp, #-25]
interrupt_63: l39: mov R11, #16
l40: strMIB R14, [sp, -R11]
l41: ldr R8, l43
l42: b l44
l43: .word 1048508
l44: swpLSb R12, R3, [R8]
l45: rscLE R0, R0, R11, ASR R0
l46: adds R1, R7, R14, LSL R7
l47: rsbCSs R4, R15, R5, LSR #31
l48: bEQ l52
l49: adcMI R7, R15, #1157627904
l50: andCCs R9, R3, R9
l51: subs R8, R2, R9, LSL #4
interrupt_64: l52: rsbVCs R2, R5, #3221225526
l53: ldmDB R13!, {R0, R1, R5, R6, R7, R8, R9, R10, R11, R12}
l54: adc R7, R6, #20
interrupt_788: l55: mov R12, #14
l56: ldrsb R10, [sp, -R12]
l57: bCC l58
l58: cmpGT R0, #688
l59: subCC R5, R4, #645922816
l60: rscNE R0, R5, R14
l61: sbc R7, R9, R8, ASR #17
l62: mov R10, #19
l63: ldrVCB R9, [sp, +R10]
interrupt_650: l64: ldr R2, l66
l65: b l67
l66: .word 1048516
l67: swp R9, R10, [R2]
l68: eor R0, R12, R6, ROR #28
l69: mov R1, #13
l70: ldrVSB R7, [sp, -R1]
interrupt_783: l71: ldrGEsb R3, [sp, #-1]
l72: teqGE R6, R12, ROR #26
l73: rsbs R2, R3, R2, LSL #10
l74: andNEs R9, R12, R4, ASR R3
l75: mov R1, #33
l76: ldrB R8, [sp, +R1]
interrupt_11: l77: tstLT R9, R11
l78: cmpGE R6, #757760
l79: orrLT R10, R8, R6, ASR R9
l80: rsbs R1, R1, R7, ROR R11
interrupt_925: l81: cmp R9, R4, ROR R1
l82: tstHI R1, R8, ROR R7
l83: ldr R7, l85
interrupt_353: l84: b l86
l85: .word 1048496
l86: swpMI R9, R4, [R7]
l87: stmDA R13!, {R5, R9, R11, R15}
l88: b l93
l89: add R1, R0, #68
l90: sbc R3, R6, R0
l91: cmnVS R10, R2
interrupt_647: l92: b l94
l93: b l90
l94: adcVCs R7, R12, #724
l95: bic R2, R15, #3019898882
l96: ldr R1, l98
l97: b l99
l98: .word 1048488
l99: swpCSb R8, R6, [R1]
interrupt_272: l100: clzGE R5, R2
interrupt_907: l101: mov R8, #52
l102: ldrLE R2, [sp, +R8]
l103: andNE R10, R14, R7, ASR #22
interrupt_165: l104: rscCS R1, R2, R8, LSL #0
l105: b l112
l106: add R1, R0, #74
interrupt_627: l107: movCS R2, R3, ASR R3
l108: adc R11, R14, R6
l109: movVSs R1, #32512
interrupt_588: l110: rscEQ R0, R3, R7, RRX 
l111: b l113
interrupt_679: l112: b l107
l113: strLSh R1, [sp, #+44]
l114: ldr R2, l116
l115: b l117
l116: .word 1048500
interrupt_814: l117: swpCC R1, R11, [R2]
l118: stmVSIB R13, {R0, R1, R4, R5, R6, R8, R11, R12, R13, R15}
l119: adds R11, R6, #4
l120: adcs R4, R4, R3, RRX 
l121: bLT l127
l122: add R1, R0, #194
l123: clzPL R4, R3
interrupt_490: l124: subMIs R8, R1, R3, RRX 
interrupt_757: l125: mvnEQ R8, R6
l126: b l128
l127: b l123
l128: tst R14, R6, LSL #17
l129: rsbLEs R2, R14, R1, RRX 
l130: ldr R5, l132
l131: b l133
l132: .word 1048548
l133: swpVS R12, R1, [R5]
l134: tstLS R5, R1, RRX 
l135: sbcNEs R1, R7, R11, ASR R10
l136: bic R4, R14, R3
interrupt_215: l137: ldrLTB R7, [sp, #+59]
interrupt_609: l138: clz R3, R9
l139: mov R3, #10
l140: strVSh R9, [sp, +R3]
l141: cmnEQ R8, R11, ASR R9
l142: ldrB R4, [sp, #+50]
l143: ldr R11, l145
interrupt_942: l144: b l146
l145: .word 1048516
l146: swpHIb R12, R12, [R11]
l147: ldmEQDB R13, {R1}
interrupt_554: l148: ldr R6, l150
l149: b l151
interrupt_500: l150: .word 1048488
l151: swpMI R1, R2, [R6]
l152: ldrVCh R8, [sp, #-4]
l153: orrVCs R10, R6, R12, RRX 
l154: strPLB R10, [sp, #+25]
interrupt_189: l155: ldrVSh R1, [sp, #+44]
l156: mov R1, #44
l157: str R10, [sp], +R1
l158: mov R2, #24
l159: ldrh R11, [sp, -R2]
l160: eor R2, R3, R12, RRX 
l161: strGEh R2, [sp, #-34]
interrupt_3: l162: rsc R2, R15, R0
l163: mov R14, #22
l164: strVSh R7, [sp, -R14]
l165: clzEQ R5, R2
l166: sbc R1, R0, #236
l167: strh R0, [sp, #-20]
l168: ldr R2, [sp, #-36]
l169: orrs R2, R3, #166723584
interrupt_102: l170: sbcs R14, R9, R6, LSL R12
l171: sbcs R2, R8, #8192
l172: cmn R14, R2, ROR R14
l173: sbcEQ R2, R10, R5, ROR R0
interrupt_71: l174: eor R14, R8, R4, ROR #12
l175: eor R1, R7, R10, LSL R6
interrupt_277: l176: teq R0, #3221225479
l177: subLS R3, R0, R12, LSR #6
l178: cmnHI R7, R4, ASR R2
l179: ldrh R8, [sp, #-42]
l180: mov R1, #4
l181: strB R10, [sp, +R1]
l182: andGT R9, R9, R0, ASR #20
interrupt_932: l183: ldr R0, [sp, #-48]!
l184: adcGT R8, R14, R3, ROR R6
interrupt_782: l185: bicCC R2, R6, R15
l186: str R12, [sp], #+24
interrupt_52: l187: bicVC R7, R6, #3948544
interrupt_213: l188: b l196
l189: add R1, R0, #245
interrupt_363: l190: mvnGEs R9, #11008
l191: addNEs R9, R2, R0, ROR #8
l192: orrMIs R5, R12, R6, LSR R2
l193: mvns R5, R10, ROR R1
interrupt_957: l194: cmp R5, R12, ROR R2
interrupt_487: l195: b l197
l196: b l190
l197: clzCS R3, R0
l198: ldrLTsb R0, [sp, #+3]
l199: rsc R2, R1, #612368384
l200: tst R6, R1, LSR #14
l201: sbcMIs R9, R12, #3489792
l202: mov R8, #16
l203: ldr R14, [sp, -R8]!
l204: andMIs R10, R7, R12, RRX 
interrupt_836: l205: ldmDB R13!, {R8}
interrupt_156: l206: subPLs R9, R12, R12, LSR #1
l207: subHIs R8, R12, R12, LSR #22
interrupt_960: l208: ldr R11, l210
l209: b l211
l210: .word 1048508
l211: swpMIb R9, R10, [R11]
interrupt_725: l212: sbcPL R8, R4, R9
l213: b l221
interrupt_562: l214: ands R12, R9, R5, ROR #25
interrupt_677: l215: clz R1, R5
l216: teqCC R7, R11, ASR #4
interrupt_676: l217: tst R2, R12, RRX 
l218: tst R15, R3
l219: adds R5, R12, R14
l220: mov R3, #98304
l221: teq R11, R6
interrupt_976: l222: mov R0, #44
l223: strCCh R12, [sp, +R0]
interrupt_747: l224: bEQ l232
l225: add R1, R0, #163
l226: tstLS R14, R5, RRX 
interrupt_693: l227: cmnGE R12, R0
l228: ands R4, R9, R6, ASR R5
interrupt_851: l229: tstPL R3, #2952790027
l230: addEQ R8, R8, #41943040
interrupt_408: l231: b l233
l232: b l226
l233: cmn R3, R5, LSL #22
l234: sbc R6, R6, R12, ROR #10
l235: adds R14, R8, R11, LSL R8
l236: mov R12, #40
l237: ldr R0, [sp, +R12]
l238: orrCCs R7, R14, R12
l239: subGE R5, R2, R15, LSR #21
l240: mvnNE R0, R10, LSR R7
l241: b l245
l242: add R1, R0, #48
l243: rsbs R14, R9, R9, ROR R10
interrupt_26: l244: b l246
l245: b l243
l246: ldmMIIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12}
l247: rsbPLs R2, R11, R2
l248: subLSs R8, R7, R3, LSL #12
interrupt_483: l249: ldrCCsh R10, [sp, #+4]
interrupt_684: l250: eorPLs R10, R1, R5, LSR R1
l251: ldrCSB R5, [sp, #-13]
l252: stmDA R13!, {R5}
l253: tst R10, R14, ASR #11
interrupt_822: l254: mov R2, #56
l255: ldrHIh R11, [sp, +R2]
l256: orr R11, R0, R11
l257: orrs R7, R5, R6, LSR R2
l258: sbcs R9, R14, R8, LSR #27
l259: mov R14, #46
interrupt_985: l260: ldrCSsh R1, [sp, +R14]
l261: teqGE R6, R0, LSL #24
l262: bHI l263
l263: addLSs R12, R0, R6
interrupt_232: l264: strVCh R10, [sp, #+12]
l265: add R14, R1, R4, ROR R10
l266: cmn R11, R12, LSR #1
l267: bGT l275
l268: teqPL R12, R1
l269: tstVS R14, R10, ROR R11
l270: subMI R0, R0, R2, LSL R14
l271: bicPL R1, R6, R14, ASR #23
l272: clz R5, R8
interrupt_642: l273: cmpLE R14, R12, LSL #18
interrupt_736: l274: cmp R8, R2
l275: subNEs R11, R4, R8, RRX 
l276: ldr R5, l278
l277: b l279
l278: .word 1048548
l279: swpCC R14, R4, [R5]
l280: bicLS R12, R11, R6, ASR #12
l281: rsbPLs R14, R2, #7798784
l282: clzCC R4, R8
interrupt_210: l283: clzLT R4, R12
l284: bGE l294
l285: rscCSs R3, R11, R1
l286: subGEs R12, R6, R1, RRX 
l287: eorGTs R2, R3, #218103808
l288: clzEQ R1, R12
interrupt_863: l289: tstPL R4, #805306372
l290: eorPLs R10, R12, R3, ROR #23
l291: sbcGE R12, R11, R0
l292: addVSs R11, R15, R0, LSL #13
l293: movVC R14, R9, LSL #26
interrupt_221: l294: rsb R6, R5, #241172480
l295: orrCS R9, R6, #15808
interrupt_132: l296: eorLS R4, R0, R7
l297: sbcGEs R14, R9, #227
interrupt_720: l298: mov R6, #280
l299: ldr R8, l301
l300: b l302
interrupt_341: l301: .word 1048540
interrupt_755: l302: swpCSb R1, R0, [R8]
interrupt_689: l303: ldrB R11, [sp, #+4]
l304: mov R2, #6
l305: ldrB R14, [sp, +R2]
l306: add R9, R5, R2, LSL R9
interrupt_253: l307: mvn R3, R8
l308: add R4, R3, R5
l309: adcHIs R2, R14, R2
l310: adc R4, R3, R15, RRX 
l311: orrLS R8, R12, R0
l312: ldr R10, l314
l313: b l315
l314: .word 1048512
l315: swpCS R2, R6, [R10]
l316: cmnLT R6, #134217731
l317: eorPLs R10, R14, R7
l318: rsbGE R10, R9, #1568
l319: mvnGE R8, R3
l320: mov R9, #6
l321: ldrLEsh R11, [sp, -R9]
l322: and R5, R2, R8, LSL R1
l323: mvns R0, #2512
l324: ldr R9, [sp, #+40]!
l325: subs R1, R1, #3604480
l326: orrNEs R8, R14, R11, LSL #19
l327: ldrh R7, [sp, #-32]
l328: sub R6, R11, R12, LSR R4
l329: ldrPLB R2, [sp, #-21]
l330: mov R1, #14
l331: ldrB R8, [sp, +R1]
l332: b l337
l333: add R1, R0, #184
l334: eor R12, R9, R6, ROR R12
l335: teq R9, R7
l336: b l338
l337: b l334
interrupt_539: l338: stmDA R13!, {R0, R5, R7, R8, R9, R11, R12, R14, R15}
l339: cmpVS R0, R2, LSL #13
interrupt_723: l340: bic R8, R6, R3
l341: sbcPL R7, R3, R6, LSR R5
l342: rsc R4, R6, #1677721600
l343: cmpPL R10, R7, ASR #9
l344: orrs R8, R9, #4063232
interrupt_669: l345: rsbVCs R6, R2, R1
l346: bLT l353
l347: sub R8, R14, R6, LSL R11
l348: add R5, R14, #2415919116
interrupt_603: l349: orrs R3, R10, R1
interrupt_395: l350: andGT R3, R12, #836
l351: subNE R8, R7, R0, LSR R7
interrupt_568: l352: tstNE R0, R5, ASR #23
l353: cmpGE R14, R15
l354: subCS R6, R4, R4, LSR R8
interrupt_157: l355: cmn R9, R6
l356: cmn R14, R9
l357: movs R1, #51642368
l358: mov R11, #32
l359: str R3, [sp, +R11]
interrupt_94: l360: b l369
interrupt_865: l361: add R1, R0, #206
interrupt_632: l362: orrMI R3, R8, R5, LSR R2
l363: mvnLS R9, R2
l364: eors R14, R14, R6, ASR R9
interrupt_618: l365: cmpVC R5, #12
l366: subEQ R3, R7, #12
l367: tst R4, R9, RRX 
l368: b l370
l369: b l362
l370: mvns R14, R2
l371: strB R10, [sp, #-1]
l372: mov R14, R10, ROR R6
l373: tst R10, R9, ASR #18
l374: ldr R5, [sp], #+48
l375: stmDB R13!, {R1, R2, R6, R7, R9, R11, R12}
interrupt_61: l376: orr R0, R9, #5312
l377: cmpLS R10, #1328
interrupt_826: l378: ldmVSDB R13, {R1, R3, R6, R10, R12}
l379: orrLE R6, R14, R2, LSR R4
l380: sbc R12, R0, R10, LSL #15
interrupt_528: l381: ands R11, R3, #88064
l382: bicGTs R9, R1, #4227858435
l383: teq R8, R10
l384: b l391
l385: subPL R7, R4, R12, ROR R6
l386: cmnLS R14, R3, RRX 
l387: sub R12, R11, #2080768
l388: subHI R9, R12, R11, RRX 
l389: mvnEQ R4, R15
interrupt_398: l390: sbcCCs R2, R0, #78
l391: orr R10, R6, #67108865
l392: ldmIA R13!, {R6, R9, R12}
interrupt_915: l393: rsbLEs R9, R14, R7, LSR R11
l394: subs R11, R12, R6
interrupt_370: l395: eorCCs R3, R10, R4
l396: mvnEQs R1, #924
l397: mov R1, #10
interrupt_187: l398: ldrLTsb R11, [sp, -R1]
l399: teq R15, R8
l400: ldr R14, l402
l401: b l403
l402: .word 1048532
l403: swpVS R8, R7, [R14]
l404: cmp R4, R4, ASR R12
l405: rsbCCs R14, R11, R15
l406: cmnGE R0, R4, ROR R3
l407: bicCC R7, R10, R3, LSL R12
interrupt_877: l408: ldmVCDB R13, {R2, R4, R7, R10}
interrupt_110: l409: tst R11, #12416
l410: addGT R6, R1, #3523215360
l411: ldrPLh R8, [sp, #-4]
l412: movGTs R3, R11, LSR #5
l413: bMI l423
interrupt_914: l414: adc R5, R1, #1342177283
interrupt_711: l415: subs R14, R5, R11, LSL R14
interrupt_805: l416: cmpLT R12, R4, ASR #23
l417: ands R0, R9, R14
interrupt_153: l418: eors R1, R3, #3489660939
interrupt_382: l419: adcs R3, R9, R10, RRX 
l420: movs R4, #43253760
l421: rsb R11, R0, R5, ROR #11
l422: sub R9, R6, R1, ASR #17
l423: addLE R1, R8, #549453824
l424: bNE l425
l425: adds R0, R1, R11, ROR #18
l426: ldr R2, l428
interrupt_415: l427: b l429
l428: .word 1048552
l429: swpCSb R1, R3, [R2]
l430: eorVC R6, R0, R1, LSR R8
l431: cmn R8, R8, LSL R0
l432: ldr R2, l434
interrupt_293: l433: b l435
l434: .word 1048496
interrupt_290: l435: swpGT R3, R8, [R2]
l436: clz R4, R10
l437: cmp R14, R11, ASR #16
l438: mov R3, #32
l439: ldr R4, [sp, -R3]!
l440: bicCSs R11, R9, #26112
l441: ldr R1, [sp], #+44
l442: strLE R6, [sp, #-60]
interrupt_364: l443: stmDB R13!, {R2, R5}
l444: ldmIA R13, {R11}
l445: rsb R5, R6, #1802240
l446: ldr R6, l448
interrupt_733: l447: b l449
l448: .word 1048516
l449: swpb R11, R14, [R6]
l450: eorGE R2, R8, R2, LSL R1
l451: ldr R8, l453
l452: b l454
l453: .word 1048548
l454: swp R2, R10, [R8]
l455: movLE R8, R11
l456: bVS l466
l457: adcHI R0, R9, R7, LSR R7
l458: tstLE R11, R1, ROR #15
l459: mvnVS R5, R15, LSR #14
l460: mvns R0, R1, LSL R11
l461: mvnNE R2, R12
l462: addLEs R10, R7, R10, LSL R12
l463: sbcs R11, R0, R4, RRX 
l464: orrs R6, R0, R12, ASR #22
l465: tst R4, R4, LSR #26
l466: sbcs R11, R12, R15
l467: bicGEs R3, R3, R10, ASR R2
l468: sub R6, R0, #2375680
l469: ldrLEsh R0, [sp, #+0]
interrupt_585: l470: clzMI R5, R1
interrupt_81: l471: movCS R0, #35389440
l472: ldr R10, l474
l473: b l475
l474: .word 1048516
l475: swpLT R6, R4, [R10]
l476: stmVCIA R13, {R1, R4, R7, R8, R12}
l477: str R14, [sp], #-32
l478: sbc R1, R2, R5, ASR R2
l479: clzCC R1, R12
interrupt_243: l480: mov R11, #30
l481: ldrsh R9, [sp, +R11]
interrupt_425: l482: ldr R4, l484
l483: b l485
l484: .word 1048512
l485: swpLSb R1, R10, [R4]
l486: mov R2, #47
l487: ldrsb R12, [sp, +R2]
l488: teq R5, R9
l489: bicEQ R14, R15, R11
l490: rscs R8, R1, R5, ROR R12
l491: eorEQ R14, R5, R5, ROR R6
l492: mov R8, #48
l493: ldrLSh R11, [sp, +R8]
l494: cmn R1, #17664
l495: rsc R14, R4, R8, LSL R6
l496: subs R2, R1, R1, LSR #8
l497: mov R1, #30
l498: ldrEQsh R14, [sp, +R1]
l499: clzMI R0, R2
l500: cmpCS R6, R2, ROR #17
interrupt_18: l501: tst R11, R14
l502: mov R5, #38
l503: ldrVCB R5, [sp, +R5]
l504: bVC l514
l505: ands R3, R7, #118
l506: subEQ R0, R14, #42991616
l507: rsbVC R1, R12, R11, ROR R7
l508: sub R11, R6, R10
l509: adcVS R6, R4, R5, ASR #6
l510: tstEQ R0, R0
interrupt_379: l511: movCSs R14, R5, ROR R1
l512: mov R5, R1
l513: cmpLS R8, R10, ROR R5
interrupt_994: l514: rscs R6, R12, R0, LSL #7
l515: orrGEs R4, R0, R11, RRX 
l516: bicCC R2, R8, #32
l517: b l521
l518: add R1, R0, #232
l519: rscs R8, R12, #4143972352
interrupt_560: l520: b l522
l521: b l519
l522: mov R9, #0
l523: str R12, [sp, +R9]
l524: mov R3, #48
l525: ldrGEB R11, [sp, +R3]
interrupt_104: l526: tstGT R1, R11, ROR R3
l527: andLE R5, R2, R4, RRX 
interrupt_303: l528: rsbVCs R11, R8, R0
l529: mov R3, #24
l530: ldrGTsh R14, [sp, +R3]
l531: stmIA R13!, {R5, R6, R7, R10, R12}
l532: sub R5, R0, R14, ROR #29
l533: teqEQ R4, R1
l534: mov R1, #4
l535: ldrNEh R1, [sp, +R1]
l536: ldrsb R12, [sp, #+31]
l537: rsbHIs R10, R15, R2, ROR #9
l538: ldr R3, l540
l539: b l541
l540: .word 1048512
l541: swpEQb R0, R9, [R3]
l542: adds R5, R2, R2, LSL #31
l543: ldrB R14, [sp, #+6]
l544: mvnMI R14, #496
l545: subs R4, R6, #844
l546: sbcCC R14, R12, #956301312
l547: cmpCC R2, R11
l548: bVS l549
l549: rscVC R7, R15, #15204352
l550: orrGTs R10, R11, R11, ROR #1
interrupt_743: l551: teqEQ R7, R11, LSL R1
l552: stmCCDB R13, {R3, R13, R14}
interrupt_563: l553: b l563
l554: mvnLS R7, #630784
l555: adcs R6, R10, R2, ASR #7
l556: teq R14, R0
l557: movLS R10, R6, LSR R7
l558: adds R5, R2, #2147483648
l559: rscLTs R2, R5, R8, RRX 
l560: cmp R6, #2336
l561: sbcCCs R12, R7, #5504
l562: orrLEs R1, R7, #75
l563: eor R9, R7, R8, ROR #6
l564: cmp R11, R6, LSR R11
l565: tstEQ R0, #3036676096
l566: rscLE R1, R8, R1
interrupt_840: l567: cmnLE R8, #1015808
l568: teqLT R7, R2, LSL R1
l569: bLE l573
l570: add R1, R0, #114
l571: cmn R2, R12, LSL R0
l572: b l574
l573: b l571
l574: ldr R2, [sp, #+12]!
interrupt_140: l575: mvnNEs R6, R3, ASR R5
l576: adds R7, R6, R3, ASR R9
l577: ldr R12, l579
interrupt_428: l578: b l580
interrupt_386: l579: .word 1048520
interrupt_861: l580: swpCC R5, R4, [R12]
l581: mov R12, #20
l582: ldrCS R0, [sp, -R12]
l583: subLE R8, R12, R3, LSL #22
l584: mvn R2, R8, ROR #1
interrupt_606: l585: mov R11, #4
l586: strPLh R10, [sp, +R11]
l587: stmVSIB R13, {R13}
l588: clzGT R14, R12
interrupt_139: l589: ldr R12, l591
l590: b l592
interrupt_722: l591: .word 1048488
l592: swpLTb R11, R10, [R12]
interrupt_978: l593: bLT l601
l594: add R1, R0, #187
l595: rscMI R9, R8, #7168
l596: mov R7, R5, ASR R10
l597: adds R9, R4, #16318464
l598: mvnEQ R5, #2751463425
l599: rscs R3, R1, R7, LSL #3
l600: b l602
l601: b l595
l602: subGT R12, R3, R7
l603: strB R3, [sp, #-50]
l604: mvns R3, R15
interrupt_449: l605: tst R6, R8, LSL R0
l606: cmnNE R0, R5
l607: mvnLEs R12, R1, LSL R3
interrupt_401: l608: subs R3, R12, R9, RRX 
interrupt_5: l609: eorLT R1, R9, R7, LSR R14
l610: mov R5, #46
l611: ldrCSsh R6, [sp, -R5]
l612: eorMI R0, R12, #1342177282
interrupt_380: l613: mov R8, #18
l614: ldrVCh R6, [sp, +R8]
l615: tst R2, R10, LSL #16
interrupt_951: l616: mov R9, #4
l617: ldrLT R2, [sp, -R9]
l618: cmnCC R3, R5, RRX 
l619: ldrGTsb R9, [sp, #-5]
l620: adcCCs R8, R15, R4
l621: ldmDB R13, {R2, R14}
l622: stmEQDB R13, {R2, R3, R4, R5, R8, R9, R10, R11, R12, R13}
l623: bics R8, R10, R11, RRX 
l624: mov R4, #20
l625: str R10, [sp], +R4
l626: addEQ R14, R3, R1
l627: adcGTs R10, R7, #654311424
l628: cmp R12, #4128768
l629: ldr R3, l631
l630: b l632
l631: .word 1048516
l632: swpEQ R6, R4, [R3]
l633: subLT R2, R2, R5, RRX 
interrupt_327: l634: rsbs R14, R6, R0, ASR R5
l635: bNE l639
l636: add R1, R0, #14
l637: cmnVC R10, #1998848
l638: b l640
l639: b l637
l640: sbc R2, R5, R15, RRX 
l641: ldr R7, l643
l642: b l644
l643: .word 1048500
l644: swpMI R5, R6, [R7]
interrupt_134: l645: bPL l649
l646: add R1, R0, #57
l647: tst R9, R4, LSL R2
interrupt_454: l648: b l650
interrupt_798: l649: b l647
interrupt_158: l650: rsbCCs R11, R15, #241664
l651: ldrB R1, [sp, #-9]
interrupt_136: l652: adc R5, R7, R7
l653: cmpGT R11, R11, LSL #13
l654: b l662
l655: orrMIs R3, R15, #26624
l656: mvnGEs R8, R7
l657: sbcPL R14, R10, R7, RRX 
l658: adds R0, R4, R7, LSR R12
l659: sbcs R0, R10, R11
l660: cmp R4, R5, ROR R0
l661: eorLE R1, R1, R14, RRX 
interrupt_273: l662: andCS R12, R5, R2, RRX 
l663: eor R6, R9, #1946157058
l664: nop
interrupt_315: l665: ldrh R5, [sp, #-22]
l666: strB R3, [sp, #-72]
l667: str R8, [sp], #-28
l668: stmDB R13!, {R0, R3, R4, R7}
l669: add R8, R15, R2
l670: nop
l671: cmnVC R15, R15, ROR #1
l672: adcCSs R4, R4, R4, ASR R2
l673: adcLEs R12, R6, #771751936
l674: tst R9, R4, ASR #12
interrupt_699: l675: tstNE R0, #1073741835
interrupt_354: l676: cmnGT R12, R9, RRX 
l677: strVSB R7, [sp, #-4]
l678: ldr R8, l680
l679: b l681
interrupt_357: l680: .word 1048532
l681: swpHIb R0, R7, [R8]
l682: subPLs R10, R4, R7, LSR R6
l683: and R8, R4, R1, RRX 
l684: bicGE R10, R6, R3, RRX 
l685: ldmIB R13!, {R1, R10, R11}
l686: sub R4, R2, R7, ASR #5
l687: mov R7, #24
l688: ldrh R9, [sp, +R7]
l689: mov R6, #31
l690: ldrGTsb R5, [sp, +R6]
l691: subVS R9, R6, R8, LSL R12
l692: rscLS R3, R5, #159
l693: mov R1, #18
l694: ldrsh R10, [sp, +R1]
interrupt_786: l695: sub R9, R2, R3, LSL R8
l696: rsc R4, R10, R1, LSL #25
l697: strPLB R11, [sp, #-3]
l698: tst R8, R12, LSL R7
l699: orrLEs R3, R9, #14080
l700: clzLT R2, R12
interrupt_472: l701: addMI R6, R2, R15, LSL #12
l702: bicMIs R0, R12, #1146880
l703: bVC l709
l704: add R1, R0, #201
l705: andGEs R5, R15, #47104
l706: eorPLs R12, R8, #52953088
interrupt_444: l707: eors R11, R8, #179200
l708: b l710
l709: b l705
l710: mvn R5, R15, ASR #12
l711: subLEs R9, R14, R10, ROR R6
l712: str R7, [sp, #-28]!
l713: movLT R10, R4, LSR #19
interrupt_700: l714: mov R1, #26
l715: strMIB R9, [sp, +R1]
l716: orrVC R12, R0, R5, LSR #29
interrupt_262: l717: bCC l724
l718: add R1, R0, #81
l719: cmpLT R4, R2, LSR #12
interrupt_148: l720: adcLS R10, R11, R0, ASR R1
l721: and R10, R12, R3, ASR R11
l722: sbc R11, R0, R1, LSR #13
l723: b l725
l724: b l719
l725: ldr R6, l727
l726: b l728
interrupt_146: l727: .word 1048532
l728: swpLT R2, R4, [R6]
l729: orrLE R10, R15, R3
l730: mov R5, #31
l731: strGTB R11, [sp, +R5]
l732: addMIs R1, R2, R2, LSL R2
interrupt_521: l733: bLE l740
interrupt_347: l734: add R1, R0, #21
l735: mvnGT R4, R12, RRX 
l736: orrLSs R7, R2, R5, LSR R6
l737: cmpNE R14, #2684354561
l738: sub R11, R3, #29696
interrupt_369: l739: b l741
l740: b l735
l741: sub R10, R6, R9, RRX 
l742: mov R3, #30
l743: strB R5, [sp, +R3]
l744: stmDA R13!, {R4}
l745: adds R4, R4, R14
l746: ldr R4, l748
l747: b l749
l748: .word 1048500
l749: swpb R1, R10, [R4]
l750: ldrVCsb R2, [sp, #+0]
l751: eor R3, R0, R3, LSR #11
interrupt_954: l752: rscs R2, R7, R4, LSL R5
l753: subs R5, R3, R15, RRX 
l754: mov R8, #19
l755: ldrEQsb R2, [sp, +R8]
l756: ldrGTsb R11, [sp, #+67]
interrupt_530: l757: mov R14, #28
l758: str R14, [sp, +R14]!
l759: orr R1, R15, R1
l760: rscMI R5, R8, R6, ROR R10
l761: addGEs R4, R0, R9, ASR R7
l762: ldrB R10, [sp, #-6]
l763: strh R9, [sp, #+28]
interrupt_427: l764: movGE R1, R1
l765: stmDB R13!, {R11}
l766: ldrGE R5, [sp, #+8]
l767: eorGE R5, R12, R6, LSR #9
l768: ldr R4, l770
interrupt_574: l769: b l771
interrupt_760: l770: .word 1048496
interrupt_686: l771: swpNE R14, R1, [R4]
l772: rsbVS R0, R4, R11, LSL #1
interrupt_92: l773: str R0, [sp, #+36]!
interrupt_839: l774: stmDA R13!, {R13, R14, R15}
l775: b l784
l776: add R1, R0, #190
interrupt_750: l777: clzVC R4, R3
l778: movs R0, #1114112
l779: rsbCSs R9, R4, #212860928
l780: tst R2, R4, ROR #13
l781: addLEs R11, R0, R2
l782: clz R5, R5
interrupt_748: l783: b l785
interrupt_288: l784: b l777
l785: subs R1, R7, R7, LSL R12
l786: rscCSs R1, R4, R15, LSR #2
interrupt_735: l787: and R0, R3, R5
l788: andLE R1, R11, R8, LSL #20
l789: bNE l797
l790: add R1, R0, #33
l791: sub R6, R12, #60030976
l792: mvnVCs R4, R12
l793: cmp R4, #1090519040
l794: subHI R3, R14, R12, LSR R7
l795: mvnMI R7, R9
l796: b l798
l797: b l791
l798: rscLT R12, R11, R0
interrupt_482: l799: mov R14, #28
l800: strPLB R7, [sp, -R14]
l801: teqGE R14, #99614720
l802: tstEQ R1, R4, LSR R7
l803: rsc R10, R6, R6, ASR R8
l804: orr R8, R10, R10, LSL R6
l805: ldrh R7, [sp, #-20]
l806: nop
l807: str R8, [sp], #-36
l808: bGT l812
l809: subs R7, R1, R8
interrupt_16: l810: tstLT R7, R12
l811: cmpCC R6, R1, LSR #29
l812: clzPL R5, R6
l813: orrVSs R4, R6, R5, ROR R7
l814: eors R5, R2, R11
interrupt_196: l815: str R7, [sp], #+12
l816: ldmDA R13!, {R6, R14}
interrupt_648: l817: andGT R1, R9, R6
interrupt_313: l818: mov R12, #16
l819: ldrVSh R3, [sp, -R12]
l820: teqLE R9, #143654912
l821: ldrsb R5, [sp, #+36]
l822: and R7, R4, R1, ROR R6
l823: movHI R5, #524288
l824: ldr R2, l826
l825: b l827
l826: .word 1048496
l827: swpNE R0, R1, [R2]
l828: mov R2, #10
l829: ldrLSsh R6, [sp, -R2]
l830: cmn R9, R6, LSL R4
l831: ldr R8, l833
l832: b l834
interrupt_622: l833: .word 1048532
interrupt_832: l834: swpNEb R0, R14, [R8]
l835: bLS l837
l836: rsbs R6, R7, #8978432
l837: add R5, R10, R9, LSL #0
l838: mov R11, #6
l839: ldrLTsh R11, [sp, -R11]
interrupt_225: l840: ldr R2, l842
l841: b l843
l842: .word 1048504
l843: swpb R8, R6, [R2]
l844: bicEQs R4, R7, R3, LSL #0
l845: bic R14, R0, R8
l846: mov R3, #12
l847: strEQh R10, [sp, +R3]
interrupt_856: l848: teqGE R4, R11, ROR R0
l849: movEQs R0, #3221225489
l850: bLT l856
l851: add R4, R4, R2
interrupt_527: l852: sbcs R11, R6, #704
interrupt_145: l853: subCS R2, R3, #966656
l854: mvns R11, R6, ROR R8
l855: rsb R11, R12, #19
l856: cmpVS R4, R5, ROR R6
l857: subs R6, R7, R14, ASR R1
l858: adcLE R10, R2, #161
l859: mov R4, #36
interrupt_631: l860: strh R2, [sp, +R4]
l861: mov R10, #18
l862: ldrsh R14, [sp, +R10]
interrupt_597: l863: ldrB R12, [sp, #+48]
l864: mov R14, #4
l865: ldr R1, [sp, +R14]!
l866: subEQs R2, R11, R6, ASR R9
l867: ldmIA R13!, {R0, R3, R4, R5, R8, R9, R14}
l868: eors R7, R2, R12
l869: mov R2, #46
l870: ldrsh R7, [sp, -R2]
l871: clzLS R4, R0
l872: ldrVCh R3, [sp, #-12]
l873: ldrsb R8, [sp, #-11]
l874: cmp R4, R11, LSL R6
l875: bMI l880
l876: cmn R8, R3, ROR #21
l877: movNE R1, R12
l878: sbcLE R12, R14, R6
l879: orr R14, R8, #4128768
l880: cmpLT R8, #401408
l881: ldmIA R13, {R4, R8}
l882: orr R7, R7, #855638016
interrupt_855: l883: cmnCS R8, #112640
l884: tst R14, R5, ROR R3
l885: andCC R1, R2, R1
l886: mov R10, #44
interrupt_835: l887: ldrNEh R8, [sp, -R10]
interrupt_714: l888: eorLTs R9, R10, #2000
l889: bic R1, R5, #552960
l890: ldmDA R13!, {R10}
l891: strGTh R14, [sp, #-20]
l892: mov R5, #42
l893: ldrPLsh R0, [sp, -R5]
l894: adds R11, R2, #1073741832
interrupt_475: l895: strCCh R4, [sp, #-34]
interrupt_781: l896: sbcs R12, R14, #40960
l897: orrHI R12, R2, R1, ASR R2
l898: subCC R6, R8, #805306374
l899: adcVC R8, R2, R7, RRX 
l900: teqPL R10, R6
l901: strh R14, [sp, #-12]
l902: cmp R11, R4, RRX 
interrupt_731: l903: ldrNEB R6, [sp, #-21]
l904: cmp R2, #83
interrupt_682: l905: mov R12, #50
l906: ldrGEh R12, [sp, -R12]
interrupt_124: l907: stmIA R13!, {R0, R2, R6, R10, R15}
l908: rscs R1, R5, R9, ROR #12
interrupt_575: l909: ldrVCh R6, [sp, #-72]
l910: eorHI R6, R4, R11, ROR R1
l911: subGE R0, R12, R6, LSL R12
interrupt_531: l912: mvns R9, R0, LSR #0
l913: movVS R4, R12, ROR #5
l914: cmnCS R6, R12, LSL #10
l915: adc R3, R11, R9, ROR R1
interrupt_219: l916: ldrh R3, [sp, #-24]
l917: mov R4, #44
l918: strGTh R0, [sp, -R4]
interrupt_973: l919: sbcs R0, R9, R7, LSR #2
l920: ldrVSh R2, [sp, #-70]
l921: ldrLEB R8, [sp, #-51]
l922: ldrh R3, [sp, #-32]
l923: b l931
l924: orrVS R0, R2, #650117120
l925: orrGE R4, R5, #37
l926: teq R15, #79691776
l927: eorLE R6, R15, #1879048205
l928: cmnEQ R0, R7, LSR R10
l929: addGTs R1, R7, #3221225506
l930: adcLE R4, R3, R12, LSR R14
l931: teq R10, R9, LSL #30
l932: mvnMI R11, #185
l933: sub R9, R9, R7, ROR #15
l934: orrs R9, R9, R14, ROR R0
l935: cmnCC R12, R7, ASR R3
l936: sub R5, R0, #51
interrupt_297: l937: b l939
l938: orrVS R7, R3, R1
l939: sbc R2, R5, R10, RRX 
interrupt_457: l940: and R11, R3, R8, RRX 
l941: mov R5, #68
l942: ldrGEh R2, [sp, -R5]
l943: adcCSs R2, R2, R9
interrupt_305: l944: ldr R12, l946
interrupt_345: l945: b l947
interrupt_715: l946: .word 1048536
l947: swpb R1, R8, [R12]
l948: mvnMI R0, R15, RRX 
interrupt_296: l949: mov R6, #68
l950: ldrsh R2, [sp, -R6]
l951: orrPLs R8, R5, R8, RRX 
l952: cmpEQ R9, R10, LSR R1
l953: andVCs R12, R3, #14811136
l954: cmnCS R11, #54001664
l955: b l960
l956: add R1, R0, #66
l957: teqGE R1, R11
l958: addHI R8, R0, R14
l959: b l961
interrupt_922: l960: b l957
l961: clz R7, R7
l962: orrMI R11, R8, R11, LSL #24
l963: sbc R3, R3, R4, RRX 
l964: ldrVSsh R0, [sp, #-34]
interrupt_103: l965: ldrh R8, [sp, #-58]
l966: ands R5, R3, #332
l967: cmn R2, R5
interrupt_616: l968: strEQB R14, [sp, #-60]
l969: str R1, [sp], #-72
l970: ldr R0, [sp, #+28]!
l971: mvnLEs R10, R15, RRX 
l972: bicGTs R9, R1, R8, RRX 
l973: ands R1, R4, R2, LSR R9
l974: ldrVSsh R0, [sp, #+38]
l975: ldr R8, [sp], #+24
l976: ldrHIh R9, [sp, #-4]
l977: bics R14, R15, #6528
l978: sbc R0, R7, R10
l979: bic R12, R15, R8, RRX 
l980: mov R2, #21
l981: ldrsb R7, [sp, -R2]
l982: mov R10, #20
l983: ldr R0, [sp], -R10
l984: mov R10, #2
l985: ldrCCB R3, [sp, +R10]
l986: orrs R1, R14, R14, RRX 
l987: clzEQ R8, R10
l988: subPL R2, R6, #2528
l989: eors R7, R10, #2197815296
l990: b l993
l991: clz R8, R5
l992: clz R10, R4
l993: clzPL R12, R3
l994: cmnHI R11, R15, RRX 
l995: tstVC R2, R5
l996: rsbVC R0, R3, R11
l997: ldr R9, l999
l998: b l1000
l999: .word 1048516
l1000: swpLT R2, R2, [R9]
interrupt_644: l1001: orrs R10, R1, R10, LSR #30
l1002: mov R0, #4
l1003: ldrGEB R12, [sp, +R0]
l1004: cmpPL R6, R0
l1005: ldr R3, l1007
l1006: b l1008
l1007: .word 1048484
l1008: swpLT R6, R14, [R3]
l1009: ldrh R1, [sp, #+10]
l1010: eor R3, R11, R11, LSR R9
l1011: stmDA R13!, {R0, R4, R5, R10, R14, R15}
l1012: strEQB R14, [sp, #+66]
l1013: ldr R1, l1015
l1014: b l1016
l1015: .word 1048520
l1016: swpb R2, R11, [R1]
l1017: ldrGEh R6, [sp, #+44]
l1018: bics R3, R6, R1
interrupt_630: l1019: rsbs R11, R9, #155189248
l1020: sub R8, R11, R15, LSR #5
l1021: mov R3, #30
l1022: ldrHIh R10, [sp, +R3]
interrupt_633: l1023: ldr R3, l1025
l1024: b l1026
l1025: .word 1048524
l1026: swpLEb R14, R11, [R3]
l1027: str R10, [sp, #+52]
l1028: mov R3, #60
l1029: ldr R9, [sp, +R3]!
l1030: cmnLE R12, R3, RRX 
l1031: ldmDB R13!, {R1, R2, R3, R5, R6, R9, R10, R11, R14}
l1032: cmp R12, R9, RRX 
l1033: ldrB R11, [sp, #+22]
l1034: bicGT R10, R4, R2, ROR R14
l1035: eors R1, R6, R10, ASR #29
l1036: ldr R7, l1038
l1037: b l1039
l1038: .word 1048480
l1039: swpb R8, R1, [R7]
l1040: rsbPL R14, R9, R10, ASR #18
l1041: mvns R1, R8, ASR R3
l1042: clz R0, R11
l1043: bicCCs R1, R0, R0, ASR #8
l1044: mvnVCs R0, R7, LSR R4
l1045: ldmIA R13!, {R0, R5}
l1046: movVCs R7, R4, LSR #11
l1047: andGE R11, R3, #234496
interrupt_314: l1048: mov R6, #8
l1049: ldrHIB R3, [sp, +R6]
l1050: cmp R2, R9, LSL R10
l1051: subVSs R9, R0, R7
interrupt_649: l1052: rsbs R0, R5, R5, ASR R0
l1053: sbc R14, R12, R3, LSL #18
l1054: stmDA R13!, {R13, R14}
l1055: rsc R12, R6, R14, LSL R1
l1056: ldrHI R14, [sp, #-4]
interrupt_873: l1057: teqVS R7, R7, ASR #28
l1058: mov R7, #16
interrupt_489: l1059: strh R7, [sp, -R7]
interrupt_208: l1060: eor R11, R6, R5, RRX 
l1061: sbcPLs R3, R9, R12, ASR R4
l1062: ldr R3, l1064
l1063: b l1065
l1064: .word 1048504
l1065: swp R0, R12, [R3]
l1066: mov R4, #8
l1067: str R9, [sp], +R4
l1068: cmnVC R15, R6, LSL #24
l1069: subCS R7, R15, R9
l1070: mvns R5, R3, LSL R3
l1071: cmpLS R11, R4, ROR #5
interrupt_246: l1072: subVS R11, R4, #156672
l1073: mov R5, #32
l1074: ldrh R8, [sp, +R5]
l1075: adc R12, R11, R15
l1076: sub R9, R11, #1179648
l1077: rsb R5, R6, R2, ROR #6
interrupt_190: l1078: mov R1, #10
interrupt_787: l1079: strB R2, [sp, +R1]
l1080: bics R4, R6, R7
l1081: tstEQ R1, R10
l1082: ldr R14, l1084
l1083: b l1085
l1084: .word 1048528
l1085: swpHI R4, R10, [R14]
l1086: sub R9, R10, R4, RRX 
l1087: mov R12, #18
l1088: ldrLSsb R11, [sp, -R12]
l1089: bCC l1092
l1090: sbcLSs R5, R10, R1, ROR R4
l1091: subLT R4, R11, R6, ROR #12
l1092: eorPL R6, R2, R10
l1093: clz R9, R5
l1094: rscVC R4, R10, R10, LSL R11
interrupt_168: l1095: ands R3, R3, R12
l1096: ldr R10, l1098
l1097: b l1099
interrupt_502: l1098: .word 1048484
l1099: swpVS R9, R8, [R10]
l1100: teq R5, #31
l1101: eorLE R1, R15, R1
l1102: ldr R1, l1104
l1103: b l1105
l1104: .word 1048544
interrupt_122: l1105: swpb R10, R10, [R1]
l1106: stmDA R13!, {R6, R11, R14}
interrupt_962: l1107: teq R2, R10, ASR #0
l1108: mov R1, #26
interrupt_40: l1109: ldrh R12, [sp, -R1]
l1110: adcs R7, R8, #75497472
interrupt_109: l1111: b l1116
l1112: add R1, R0, #235
l1113: eors R11, R9, R15, ROR #6
l1114: mov R4, R0
l1115: b l1117
l1116: b l1113
l1117: strB R12, [sp, #-28]
l1118: ldrPLh R5, [sp, #+24]
interrupt_404: l1119: mov R9, #8
l1120: ldrMIsh R6, [sp, +R9]
l1121: addVCs R4, R2, R9, ASR R4
l1122: adcLE R14, R15, R7
interrupt_522: l1123: mov R0, #28
l1124: ldr R5, [sp], +R0
l1125: clz R3, R14
interrupt_966: l1126: mov R10, #14
l1127: ldrsh R9, [sp, +R10]
interrupt_987: l1128: ldr R3, l1130
l1129: b l1131
l1130: .word 1048536
l1131: swpHIb R8, R9, [R3]
l1132: movPL R0, R10, ASR #21
interrupt_860: l1133: ldrLSsb R14, [sp, #+3]
interrupt_175: l1134: sbc R12, R11, R14, LSL R10
l1135: sbcEQs R2, R9, R0, ROR #22
l1136: ldrHIsb R1, [sp, #+13]
l1137: eorGEs R5, R8, #1966080
l1138: sbc R9, R14, R10, ROR R3
l1139: rscCC R4, R9, R6
l1140: mov R6, #12
l1141: ldrLEsh R9, [sp, -R6]
l1142: adds R12, R14, R4
l1143: andCSs R1, R10, R4
interrupt_879: l1144: mov R1, #30
interrupt_87: l1145: ldrB R1, [sp, -R1]
l1146: mvnVC R5, R6, LSL R3
l1147: mvnVC R14, R7, ROR R11
l1148: orrPLs R4, R0, R2, ASR #5
l1149: subCCs R5, R10, R4, LSL #26
interrupt_965: l1150: strB R3, [sp, #-25]
l1151: b l1156
l1152: tst R0, R15, RRX 
interrupt_611: l1153: bics R2, R9, #247
l1154: adc R4, R0, R4
l1155: rsbs R12, R12, R9, ROR R2
l1156: tstVS R6, R1, LSR R9
l1157: sbcPL R0, R15, R11
interrupt_434: l1158: ldr R3, l1160
l1159: b l1161
l1160: .word 1048528
l1161: swp R11, R1, [R3]
l1162: mov R8, #12
l1163: ldrGEsb R8, [sp, -R8]
l1164: movHIs R14, R14
l1165: sbcPLs R1, R4, #61440
l1166: cmn R11, R14
l1167: mvns R0, R12, LSL #18
l1168: adcs R8, R5, R12, ASR R11
interrupt_535: l1169: cmn R12, #1019215872
l1170: rscs R2, R2, R4, ROR R4
l1171: b l1177
l1172: add R1, R0, #142
l1173: andMI R12, R6, R10, ASR R2
l1174: mvn R6, R3, LSR #26
l1175: sbcLEs R1, R14, R8, LSR #31
l1176: b l1178
l1177: b l1173
interrupt_67: l1178: ldmDB R13!, {R1, R3, R4, R5, R6, R7, R8, R12}
l1179: mov R6, #13
l1180: ldrsb R10, [sp, +R6]
l1181: ldr R0, l1183
l1182: b l1184
interrupt_870: l1183: .word 1048496
l1184: swpLE R10, R1, [R0]
interrupt_533: l1185: mov R4, #14
interrupt_641: l1186: ldrLEh R6, [sp, -R4]
interrupt_919: l1187: sbcPLs R2, R1, R14
l1188: rsbMIs R10, R8, R9, LSL R9
l1189: bGE l1195
l1190: clz R3, R12
l1191: orrGEs R14, R4, R10, LSL R11
l1192: bicMIs R12, R0, R4, ROR #4
interrupt_545: l1193: cmn R15, R15, RRX 
l1194: adcVC R4, R12, #3221225507
interrupt_45: l1195: cmn R5, R12, LSR #12
l1196: mvns R11, #38144
l1197: cmnCS R9, R3, RRX 
interrupt_238: l1198: mov R12, #4
l1199: ldrB R4, [sp, -R12]
l1200: orrs R7, R4, R2, LSL R5
interrupt_948: l1201: ldr R3, l1203
l1202: b l1204
l1203: .word 1048500
l1204: swpNEb R0, R4, [R3]
l1205: ldr R14, l1207
l1206: b l1208
l1207: .word 1048512
l1208: swpLE R7, R1, [R14]
interrupt_270: l1209: mov R6, #48
l1210: ldrGEh R11, [sp, +R6]
l1211: andHIs R4, R15, R2, ASR #27
l1212: mov R1, #47
l1213: ldrPLB R0, [sp, +R1]
l1214: mov R6, #39
interrupt_378: l1215: ldrsb R4, [sp, +R6]
l1216: bPL l1223
l1217: add R1, R0, #154
l1218: subs R7, R15, R3
interrupt_897: l1219: clz R4, R14
l1220: orr R1, R11, #92160
interrupt_377: l1221: cmpLE R15, R4, ASR #0
l1222: b l1224
l1223: b l1218
l1224: mvnLE R10, R10, RRX 
l1225: bLE l1231
interrupt_795: l1226: add R1, R0, #79
l1227: movGTs R3, R3, ROR #8
l1228: teqGT R9, #2848
l1229: clzVS R5, R9
interrupt_217: l1230: b l1232
l1231: b l1227
interrupt_712: l1232: add R3, R0, R9, LSR #24
l1233: subs R2, R0, #22528
interrupt_918: l1234: mov R8, #10
l1235: ldrHIsb R12, [sp, -R8]
interrupt_458: l1236: subs R8, R1, #1952
interrupt_65: l1237: addLSs R12, R3, R0, LSL #20
l1238: rsbLEs R10, R4, R1
l1239: ldmDB R13!, {R0, R5, R6, R12}
interrupt_224: l1240: adc R4, R5, R14
l1241: strh R2, [sp, #+18]
interrupt_429: l1242: subEQs R8, R4, R9, LSR R8
interrupt_790: l1243: eors R8, R2, R15
l1244: ldrGEsh R9, [sp, #+44]
interrupt_93: l1245: stmIB R13!, {R13, R14, R15}
l1246: strGTB R3, [sp, #-10]
l1247: clz R5, R9
interrupt_520: l1248: ldr R3, l1250
l1249: b l1251
l1250: .word 1048524
l1251: swpNE R0, R5, [R3]
l1252: mov R0, #8
l1253: ldrPLB R4, [sp, -R0]
l1254: eorCS R7, R12, #47360
l1255: bPL l1263
l1256: orr R3, R15, R0
l1257: sub R1, R11, R1
l1258: clzLS R1, R6
interrupt_728: l1259: cmp R4, #125
interrupt_744: l1260: mvn R6, R2
l1261: ands R10, R8, R7
l1262: bicCSs R6, R12, #12845056
l1263: subEQ R6, R8, #3981312
interrupt_497: l1264: orrs R7, R14, R4, ROR #21
interrupt_375: l1265: movs R10, R8, ROR #29
l1266: mov R1, #12
l1267: ldrsb R10, [sp, +R1]
interrupt_295: l1268: mov R10, #50
l1269: ldrsb R7, [sp, +R10]
l1270: b l1275
l1271: add R1, R0, #64
l1272: cmp R15, R3, ASR #16
l1273: teq R1, R8
interrupt_671: l1274: b l1276
l1275: b l1272
interrupt_467: l1276: orr R7, R2, R4, LSL #3
l1277: teq R1, R4, LSL R10
l1278: ldrGEB R14, [sp, #+7]
l1279: bEQ l1280
interrupt_625: l1280: eorVC R8, R2, R4
l1281: strLEh R4, [sp, #+2]
l1282: subs R12, R1, R10, RRX 
l1283: movs R5, #25600
interrupt_629: l1284: ldr R11, l1286
l1285: b l1287
l1286: .word 1048512
l1287: swpVC R0, R4, [R11]
interrupt_586: l1288: rscNE R11, R3, R11, RRX 
l1289: bEQ l1297
l1290: add R1, R0, #249
interrupt_858: l1291: mvn R0, R14, ROR #15
interrupt_758: l1292: orrPLs R11, R10, #14876672
l1293: sbcHI R11, R5, #1232
l1294: sbcMI R7, R3, R15, RRX 
l1295: cmn R1, R5
l1296: b l1298
l1297: b l1291
l1298: mov R3, #30
l1299: ldrCCsb R4, [sp, +R3]
l1300: mvns R5, R0, ROR #8
l1301: bics R11, R0, #408
l1302: b l1311
interrupt_615: l1303: add R1, R0, #232
l1304: rsbLTs R3, R0, R9, ASR #16
l1305: rscGTs R0, R1, R2
l1306: eorEQ R3, R12, R11
l1307: sbc R9, R11, R0, RRX 
interrupt_159: l1308: orrLT R8, R7, R0, LSR R8
l1309: mvns R6, R3, RRX 
l1310: b l1312
l1311: b l1304
l1312: mov R14, #4
l1313: ldrHIsb R11, [sp, +R14]
interrupt_70: l1314: mov R3, #4
l1315: str R1, [sp, +R3]!
l1316: ldr R1, l1318
interrupt_453: l1317: b l1319
interrupt_621: l1318: .word 1048544
l1319: swpVC R7, R0, [R1]
l1320: adcs R4, R10, #16777216
interrupt_209: l1321: movCC R0, R2, ROR #31
interrupt_595: l1322: mvnCS R1, R3
l1323: ldr R9, l1325
l1324: b l1326
l1325: .word 1048548
l1326: swp R0, R5, [R9]
l1327: mov R3, #12
l1328: str R14, [sp, +R3]!
l1329: cmnLE R3, R3, LSR R6
l1330: mov R11, #3
l1331: ldrsb R8, [sp, +R11]
interrupt_312: l1332: strVC R15, [sp, #-4]
l1333: sbc R7, R7, R15
l1334: bLS l1343
l1335: subCS R8, R8, R11, LSL R3
l1336: andGT R10, R1, #3976200192
interrupt_388: l1337: bicVCs R10, R9, #786432
l1338: rscs R9, R9, R7
l1339: clzLE R10, R4
l1340: movs R12, R7
l1341: adds R9, R7, R4
l1342: tst R11, R6, LSL R5
l1343: rsbGE R8, R10, R3, ROR R14
l1344: rscLT R9, R11, R1, RRX 
l1345: ldrLEsb R0, [sp, #+19]
interrupt_281: l1346: subVCs R14, R2, R4, LSR #7
interrupt_509: l1347: ldrsh R5, [sp, #+2]
l1348: tstVC R3, R5, ROR R0
interrupt_807: l1349: and R4, R1, R6
l1350: adcLTs R14, R8, #29360128
l1351: ldrCCsb R1, [sp, #+37]
interrupt_367: l1352: cmpCC R8, R10, RRX 
l1353: mov R5, #6
l1354: ldrCSh R14, [sp, +R5]
l1355: ldr R14, [sp, #+24]
l1356: teq R4, #688128
l1357: clz R12, R3
interrupt_229: l1358: subGEs R9, R14, R0, LSL R6
interrupt_280: l1359: sbcGE R1, R3, R9, ROR #19
interrupt_930: l1360: teqLT R5, R11, ASR R9
l1361: subLTs R10, R14, R0, ROR R11
l1362: bicCCs R1, R0, R2, ROR R6
l1363: mov R14, #14
interrupt_602: l1364: strh R14, [sp, +R14]
l1365: b l1372
interrupt_613: l1366: add R1, R0, #91
l1367: cmpNE R5, R2, ASR R5
l1368: mvnHIs R8, R4
l1369: rscGTs R1, R0, #14155776
l1370: tstLE R9, R2, LSL #27
l1371: b l1373
l1372: b l1367
l1373: eors R2, R5, R1
l1374: bicPLs R10, R11, #15488
l1375: tstLS R8, R10, ASR R12
l1376: mov R1, #24
l1377: str R9, [sp, +R1]!
l1378: teq R6, R12, ASR R12
interrupt_971: l1379: mov R5, #8
l1380: strVCh R8, [sp, +R5]
l1381: eorCS R2, R9, R4, LSR #29
l1382: addLEs R11, R15, R9, LSL #30
interrupt_344: l1383: bicLSs R1, R6, #1019904
l1384: eorLSs R3, R5, R12, LSR #11
l1385: cmn R12, R2
l1386: rscGT R10, R5, R0, LSL R11
l1387: orrs R11, R4, R3
interrupt_990: l1388: andGE R0, R3, R14, RRX 
l1389: addMI R0, R14, R12
l1390: mvn R12, R7, LSL #25
l1391: ldr R9, [sp], #-52
l1392: b l1397
l1393: cmnNE R2, R4, ROR #10
l1394: addLSs R4, R8, R10, ROR #20
interrupt_323: l1395: clz R14, R10
l1396: orrPL R7, R4, R1
l1397: orr R1, R4, R5, ASR R10
l1398: adcPL R12, R15, #933888
l1399: movs R0, R9, LSL R6
l1400: cmp R3, #520
l1401: ldrh R14, [sp, #+62]
interrupt_13: l1402: tst R10, R11, LSR R8
interrupt_390: l1403: subLS R0, R11, R1, RRX 
l1404: strh R7, [sp, #-6]
l1405: bics R9, R11, R14
interrupt_939: l1406: mov R2, #17
l1407: ldrLSB R5, [sp, +R2]
l1408: addEQ R4, R14, R3
interrupt_193: l1409: ldr R14, l1411
interrupt_319: l1410: b l1412
l1411: .word 1048512
l1412: swpb R10, R7, [R14]
l1413: andCSs R5, R1, #32505856
interrupt_660: l1414: ldr R1, l1416
l1415: b l1417
l1416: .word 1048536
l1417: swp R12, R11, [R1]
interrupt_309: l1418: ldr R8, l1420
l1419: b l1421
l1420: .word 1048496
l1421: swp R3, R11, [R8]
l1422: clzHI R10, R0
l1423: bic R10, R0, R0, LSR R6
l1424: b l1432
l1425: rsbEQs R2, R3, R8
l1426: cmnMI R11, #3472
interrupt_756: l1427: mvns R9, #2684354563
l1428: rscGT R2, R12, R10, RRX 
l1429: movNEs R14, R3, LSR R7
l1430: eorLEs R8, R10, R4, RRX 
l1431: mov R9, R11, LSR R10
l1432: subHIs R8, R1, R1, LSL #18
interrupt_763: l1433: mov R5, #54
l1434: ldrNEsh R5, [sp, +R5]
l1435: bicHI R7, R0, R5, LSL R7
l1436: ldrLEsh R3, [sp, #+56]
l1437: mvn R11, #3997696
l1438: ldr R4, l1440
l1439: b l1441
l1440: .word 1048548
interrupt_507: l1441: swp R11, R5, [R4]
interrupt_628: l1442: adcs R3, R5, R10, RRX 
l1443: ldmIB R13, {R0, R3, R6, R9, R11, R14}
l1444: ldrh R1, [sp, #+44]
l1445: ands R9, R1, R3
l1446: mov R9, #32
l1447: ldrh R14, [sp, +R9]
l1448: mov R5, #20
interrupt_14: l1449: ldr R1, [sp, +R5]
l1450: adcVC R8, R0, #58
l1451: movGEs R9, R3
l1452: andLT R10, R7, R15, RRX 
interrupt_685: l1453: tst R2, R7, LSL R5
interrupt_777: l1454: ldrB R7, [sp, #+39]
l1455: nop
l1456: sbcLE R12, R9, R10, RRX 
l1457: mov R3, #30
l1458: ldrsb R5, [sp, +R3]
interrupt_688: l1459: orrLT R4, R4, R8, LSR #3
l1460: ldr R11, l1462
l1461: b l1463
l1462: .word 1048508
l1463: swpCS R9, R3, [R11]
l1464: movVS R7, R3
interrupt_38: l1465: bVC l1475
l1466: addMIs R11, R12, #3768320
interrupt_360: l1467: andHI R4, R14, R6
l1468: rsbVSs R2, R7, R14
l1469: cmpGE R4, R12, ROR #3
l1470: subMI R7, R11, R4, ASR #20
l1471: rscs R3, R14, #297795584
l1472: sbc R4, R9, R9
l1473: mvn R7, #580
interrupt_333: l1474: andLTs R7, R14, #1476395008
l1475: cmnEQ R10, R2
l1476: mvnNE R8, #3735552
l1477: strPLB R8, [sp, #+62]
l1478: nop
l1479: ldrh R10, [sp, #+52]
l1480: movVS R6, R5, LSL #31
interrupt_842: l1481: mov R4, #53
l1482: ldrCSB R8, [sp, +R4]
l1483: mov R12, #48
l1484: strh R14, [sp, +R12]
l1485: cmn R4, R7, ROR R9
l1486: movHIs R6, R11, LSL R12
l1487: subGEs R2, R8, R3, ASR #8
l1488: b l1497
l1489: bic R3, R2, R11
l1490: sbcGTs R5, R8, R6, LSR #10
l1491: movs R4, R9, RRX 
l1492: sub R14, R0, R8, RRX 
l1493: rsbVSs R9, R2, #132
l1494: clzPL R1, R14
l1495: teqGT R15, #48128
l1496: tst R1, R3, LSL #4
l1497: rsbVSs R11, R2, R1
l1498: b l1504
l1499: add R1, R0, #211
interrupt_412: l1500: mov R8, R14, ROR R3
interrupt_0: l1501: rscPLs R7, R11, R3
l1502: cmp R2, #398458880
interrupt_265: l1503: b l1505
l1504: b l1500
l1505: ldr R5, l1507
l1506: b l1508
l1507: .word 1048500
l1508: swp R4, R3, [R5]
l1509: adcs R11, R0, R7, ASR #26
l1510: mov R4, #4
l1511: ldr R4, [sp, -R4]
l1512: cmp R0, R14, LSL #20
interrupt_726: l1513: ldrsb R11, [sp, #-8]
l1514: clzVC R6, R14
interrupt_581: l1515: strMI R3, [sp, #+56]
l1516: stmIA R13!, {R2, R6}
interrupt_100: l1517: ldr R5, l1519
l1518: b l1520
l1519: .word 1048528
l1520: swp R4, R11, [R5]
l1521: tst R6, #9699328
interrupt_771: l1522: subCS R12, R15, R2
interrupt_552: l1523: subVSs R11, R5, R14, ROR #7
l1524: cmnEQ R2, R1
l1525: mov R4, #12
l1526: str R6, [sp], +R4
l1527: mov R12, #24
l1528: ldrsb R14, [sp, +R12]
interrupt_126: l1529: cmnLE R2, R8, ROR R1
l1530: tst R1, R7, ROR R5
interrupt_440: l1531: ldrGEsb R4, [sp, #+27]
l1532: sbcs R2, R10, R14, RRX 
l1533: mvnNEs R9, R4, ASR R8
l1534: ldr R1, l1536
l1535: b l1537
l1536: .word 1048512
l1537: swpGE R14, R14, [R1]
l1538: cmpEQ R11, R1
interrupt_524: l1539: clz R0, R3
interrupt_933: l1540: ldr R10, l1542
l1541: b l1543
l1542: .word 1048504
l1543: swpVSb R9, R8, [R10]
l1544: bCC l1545
l1545: subPL R5, R4, R7, LSL #21
l1546: orrs R6, R14, R15
l1547: mov R3, #40
l1548: ldrGEsb R9, [sp, +R3]
l1549: ldr R3, l1551
l1550: b l1552
interrupt_605: l1551: .word 1048500
l1552: swpVS R5, R12, [R3]
l1553: ldr R1, l1555
l1554: b l1556
l1555: .word 1048520
interrupt_766: l1556: swp R4, R3, [R1]
l1557: bic R4, R0, R11, RRX 
l1558: bicVS R7, R7, R11, LSR R10
l1559: subPLs R2, R4, R4, RRX 
l1560: tst R6, #253755392
l1561: ands R14, R9, R10, LSR #19
l1562: stmDA R13, {R3, R8, R9, R10, R13}
l1563: mov R1, #4
l1564: str R15, [sp, +R1]!
l1565: orrVS R0, R12, R2, ROR R14
l1566: eors R11, R14, R9, RRX 
l1567: subLT R12, R1, R2
l1568: b l1576
l1569: add R1, R0, #163
l1570: tst R7, R15
l1571: tstLS R10, #8384
l1572: rsc R6, R0, R9, LSR R7
interrupt_991: l1573: bic R6, R2, R8, LSR #26
l1574: teqGT R6, R7, LSR #8
l1575: b l1577
l1576: b l1570
interrupt_716: l1577: clzVC R2, R10
l1578: clzGT R2, R2
l1579: sub R6, R3, R0
l1580: b l1588
interrupt_754: l1581: tstEQ R12, R4, LSL #1
l1582: bicLS R10, R7, R0
l1583: sbcCS R8, R7, R0, LSL R7
l1584: subMI R2, R14, R0, LSL #28
l1585: adcs R11, R5, #67108867
l1586: cmnGT R2, #672
l1587: andLS R14, R8, R7, LSR R12
l1588: rscVC R2, R5, R5, RRX 
l1589: tstLE R11, R15
l1590: mov R10, #4
l1591: ldr R5, [sp, +R10]!
interrupt_506: l1592: orrs R11, R14, R10
l1593: mvnLS R12, R14, LSL #25
l1594: teq R1, R1, ROR #25
l1595: mov R2, #14
l1596: ldrPLsh R2, [sp, +R2]
l1597: subs R0, R9, R6, ROR #29
interrupt_828: l1598: bic R8, R2, R10
l1599: subPLs R14, R11, #3328
l1600: rsc R8, R1, R6
interrupt_883: l1601: stmIB R13!, {R13}
interrupt_749: l1602: nop
l1603: ands R1, R7, #3892314112
l1604: stmVSDA R13, {R0, R3, R7}
l1605: sbcGEs R8, R0, R0, ROR #16
l1606: bics R1, R4, R3, ASR R10
l1607: rscNEs R6, R11, R14
l1608: orrEQs R8, R5, R2
l1609: movs R9, R8, LSR #27
l1610: and R14, R3, R0
l1611: bLT l1617
l1612: rscLTs R1, R14, R11
l1613: sbc R3, R8, #1879048205
l1614: teq R6, R7, ASR R5
l1615: teqMI R6, R7, ASR R3
interrupt_890: l1616: adds R4, R9, R6
interrupt_742: l1617: clzLS R8, R10
l1618: stmIB R13, {R10, R14}
l1619: bHI l1623
l1620: add R1, R0, #140
interrupt_675: l1621: orrs R4, R10, R11
l1622: b l1624
l1623: b l1621
l1624: ldr R4, l1626
l1625: b l1627
l1626: .word 1048524
l1627: swp R11, R6, [R4]
l1628: movs R8, R1, ROR R4
l1629: mvnCC R9, R1
interrupt_938: l1630: orrLT R10, R11, R9
l1631: nop
l1632: mov R12, #24
interrupt_881: l1633: ldrLSh R6, [sp, -R12]
l1634: clz R0, R8
interrupt_537: l1635: strh R14, [sp, #+8]
l1636: andEQ R9, R14, R7, LSL #19
l1637: movs R14, R8, RRX 
l1638: subMI R12, R12, R6, ROR R0
l1639: tstLS R1, R6
l1640: ldr R8, l1642
l1641: b l1643
interrupt_77: l1642: .word 1048508
l1643: swpb R11, R3, [R8]
interrupt_22: l1644: rscLTs R9, R1, #179200
l1645: rsbEQs R3, R11, R6, RRX 
interrupt_491: l1646: movVCs R14, R7, LSL R2
l1647: mov R12, #12
l1648: ldrGTh R2, [sp, -R12]
l1649: movGT R11, #3056
l1650: and R9, R9, R14
l1651: cmn R2, R8, RRX 
l1652: str R6, [sp, #+16]!
interrupt_227: l1653: mov R0, #8
l1654: ldrh R4, [sp, +R0]
l1655: cmpHI R14, R7, LSL R0
l1656: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R11, R12, R14}
l1657: ldrMIsb R11, [sp, #+13]
interrupt_399: l1658: nop
l1659: mvns R14, R8, LSR R2
l1660: bicVC R5, R1, R4, LSR #14
l1661: str R1, [sp], #+44
l1662: bGE l1671
l1663: add R1, R0, #72
l1664: rsbPL R6, R4, R15, LSR #30
l1665: bics R12, R0, #28311552
l1666: rscLS R6, R8, R8, LSR #15
l1667: teqEQ R5, R6
l1668: addCCs R3, R3, R5, ASR #26
l1669: teqLT R12, R3
l1670: b l1672
l1671: b l1664
l1672: mvns R9, R1
l1673: stmLSIA R13, {R6, R8, R9, R12, R14}
l1674: cmn R7, R6, ASR #29
l1675: mvn R14, #2097152000
l1676: mov R14, #16
l1677: ldrsh R3, [sp, +R14]
interrupt_692: l1678: andLEs R2, R5, R9, LSL R8
l1679: mov R2, #8
interrupt_123: l1680: ldr R11, [sp, -R2]!
interrupt_927: l1681: tstCC R2, R1, ASR R12
interrupt_964: l1682: b l1686
l1683: add R1, R0, #221
l1684: cmn R7, #1073741826
l1685: b l1687
interrupt_815: l1686: b l1684
interrupt_841: l1687: subs R2, R12, R5, LSL #22
l1688: cmp R14, R5, ASR R12
l1689: mov R1, #11
l1690: ldrB R1, [sp, -R1]
l1691: eorGE R2, R11, R8, RRX 
l1692: subEQs R14, R7, #448790528
l1693: mov R9, #2293760
l1694: teqVS R1, R3
interrupt_806: l1695: andVSs R7, R8, R12
interrupt_50: l1696: addGTs R6, R11, R2
l1697: ldrsh R7, [sp, #+26]
l1698: b l1702
l1699: add R1, R0, #139
l1700: sub R10, R7, R3
l1701: b l1703
l1702: b l1700
l1703: adcLS R2, R11, R2, ASR R3
l1704: mvnPL R2, R9, ASR R7
l1705: mvnLS R6, R8, RRX 
l1706: andGEs R10, R7, R10
l1707: b l1712
l1708: add R1, R0, #117
l1709: rsb R12, R3, R2, LSR R10
l1710: cmnEQ R0, R6, ASR #13
interrupt_587: l1711: b l1713
l1712: b l1709
l1713: ldr R2, l1715
l1714: b l1716
l1715: .word 1048532
interrupt_135: l1716: swpLE R9, R11, [R2]
l1717: clzLT R14, R8
l1718: subHI R6, R9, R2
l1719: mov R9, #16
l1720: ldrMIsh R6, [sp, -R9]
l1721: rsbMI R4, R7, R12
interrupt_871: l1722: mvnHI R11, R4, RRX 
l1723: b l1731
l1724: add R1, R0, #232
interrupt_339: l1725: rscVSs R11, R6, #34048
interrupt_658: l1726: addHIs R1, R12, R3
l1727: movs R12, R7
l1728: movMIs R5, R14, LSR R11
l1729: bic R14, R2, R3
interrupt_889: l1730: b l1732
interrupt_113: l1731: b l1725
l1732: mov R4, #39
l1733: ldrB R6, [sp, -R4]
l1734: bGT l1741
l1735: add R1, R0, #32
l1736: andNE R6, R15, R1, ASR #9
interrupt_340: l1737: teqGT R4, R11
l1738: cmn R4, #889192448
l1739: teqEQ R4, R8, RRX 
l1740: b l1742
l1741: b l1736
l1742: ldrGTh R2, [sp, #-38]
l1743: ldmDB R13!, {R10, R11, R12, R14}
l1744: teq R11, #14417920
l1745: strh R5, [sp, #+6]
l1746: ldrEQB R10, [sp, #-19]
interrupt_268: l1747: rsbs R6, R6, #2867200
l1748: rscCCs R7, R4, R5
l1749: rsbHIs R5, R1, #63232
interrupt_79: l1750: rscCS R1, R2, R7, LSL #16
interrupt_138: l1751: adcLTs R5, R15, R3, ROR #19
l1752: cmp R1, #39059456
l1753: mov R9, R15
l1754: clz R10, R12
l1755: rsbEQs R1, R10, R0, LSL #29
interrupt_690: l1756: cmnEQ R0, #4064
l1757: cmnVS R9, R10, LSL R8
l1758: subVSs R1, R10, R0, RRX 
l1759: ldmVSIA R13, {R0, R6, R8, R9, R11, R12, R14}
interrupt_342: l1760: teqNE R10, R4, RRX 
l1761: movVSs R4, R14, ASR R10
l1762: andLS R0, R15, R5
l1763: cmn R2, #976
l1764: stmDB R13!, {R13}
interrupt_129: l1765: ldrMIh R0, [sp, #+42]
l1766: bCS l1772
l1767: add R1, R0, #136
l1768: eor R12, R10, R15, ASR #0
l1769: teqVS R11, #6976
interrupt_78: l1770: tstGE R15, R1
interrupt_923: l1771: b l1773
l1772: b l1768
interrupt_254: l1773: movVCs R6, R9, LSL R11
l1774: subGT R12, R7, R8
interrupt_484: l1775: ldrB R1, [sp, #+24]
l1776: strLTh R11, [sp, #-2]
interrupt_768: l1777: subs R7, R5, R4
l1778: ldr R7, l1780
l1779: b l1781
l1780: .word 1048504
l1781: swpLTb R3, R1, [R7]
interrupt_724: l1782: clzHI R7, R4
l1783: ldrsh R8, [sp, #+6]
l1784: strMIh R3, [sp, #+16]
interrupt_447: l1785: bic R5, R2, R6
l1786: ldr R2, l1788
interrupt_356: l1787: b l1789
interrupt_901: l1788: .word 1048532
l1789: swpHI R5, R5, [R2]
interrupt_529: l1790: cmpLT R9, #16064
interrupt_494: l1791: ldr R14, l1793
interrupt_751: l1792: b l1794
interrupt_765: l1793: .word 1048508
l1794: swpVS R8, R11, [R14]
interrupt_86: l1795: strEQB R3, [sp, #+32]
l1796: ldr R12, [sp, #+16]!
l1797: mov R14, #1
l1798: ldrLSsb R5, [sp, +R14]
l1799: mov R1, #1
l1800: strB R0, [sp, -R1]
interrupt_469: l1801: cmpHI R2, #10092544
l1802: sbc R4, R3, R8
interrupt_532: l1803: cmp R12, #59392
l1804: cmnLT R9, #469762049
interrupt_538: l1805: tstMI R14, #22282240
interrupt_121: l1806: ldr R12, l1808
l1807: b l1809
l1808: .word 1048540
l1809: swpVSb R2, R3, [R12]
l1810: ldr R14, l1812
l1811: b l1813
l1812: .word 1048508
interrupt_576: l1813: swp R8, R11, [R14]
l1814: add R1, R3, R14
interrupt_252: l1815: ldrGEsh R12, [sp, #-10]
l1816: orrCSs R10, R7, R2, LSL #3
interrupt_729: l1817: mvn R10, R0, ROR R8
l1818: mvnGT R10, R9, RRX 
interrupt_125: l1819: rsbNE R1, R9, R7
interrupt_73: l1820: stmDB R13!, {R6, R11, R15}
l1821: clz R1, R5
l1822: mvnGT R12, R10, ROR #26
l1823: adds R0, R8, #1600
l1824: rscNE R12, R12, #1966080
l1825: nop
l1826: rscs R0, R8, R8, LSL #26
interrupt_479: l1827: subNEs R2, R14, #21504
l1828: orrs R14, R14, R3, LSR #7
interrupt_407: l1829: sub R9, R15, R6
l1830: movMI R11, R12
l1831: mov R14, #24
l1832: strLTh R3, [sp, -R14]
l1833: mov R4, #17
l1834: ldrEQsb R7, [sp, +R4]
l1835: movCCs R3, #255852544
l1836: b l1844
l1837: add R1, R0, #13
l1838: cmp R14, R5, RRX 
l1839: tstLS R9, R10, ROR #16
l1840: cmpMI R12, #4224
l1841: mov R0, R15, ASR #16
l1842: adc R1, R5, R0
l1843: b l1845
l1844: b l1838
l1845: adcVC R14, R6, R9
l1846: add R1, R2, R1, ROR R5
l1847: mvnLT R3, R7, LSL R9
l1848: stmIB R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R12}
interrupt_949: l1849: adc R6, R3, R0, LSL #23
interrupt_884: l1850: sub R0, R15, R15
l1851: adcPL R5, R9, #21495808
l1852: str R7, [sp], #-44
l1853: stmIB R13!, {R3, R4, R6, R7, R8}
l1854: ldrHIB R12, [sp, #+1]
l1855: tst R4, R5, ROR #25
l1856: ldr R6, l1858
l1857: b l1859
l1858: .word 1048536
l1859: swp R7, R14, [R6]
l1860: nop
l1861: nop
l1862: mvnVSs R9, R7, RRX 
l1863: ldmIA R13!, {R1, R3, R4, R5, R10, R11, R14}
interrupt_505: l1864: sbcGTs R6, R1, R5, LSL #15
l1865: nop
l1866: ldrVSsb R8, [sp, #-39]
l1867: and R11, R5, R15
l1868: b l1874
interrupt_820: l1869: add R1, R0, #53
l1870: rscLS R0, R9, R10
l1871: teqGE R11, R0
interrupt_579: l1872: eorCC R1, R15, R11
l1873: b l1875
l1874: b l1870
l1875: mov R3, #32
interrupt_797: l1876: ldrsh R9, [sp, -R3]
l1877: movs R0, R0
l1878: str R14, [sp, #-68]!
l1879: stmIB R13, {R0, R2, R4, R7, R8, R10, R11, R14}
l1880: tst R12, R4, LSR R10
l1881: mvns R9, R15
interrupt_510: l1882: nop
l1883: clzHI R2, R0
l1884: b l1891
interrupt_282: l1885: rsc R5, R2, R3, RRX 
interrupt_501: l1886: subNEs R4, R6, R2
l1887: addLEs R6, R9, #3103784960
l1888: rscs R1, R7, R1, ASR #2
l1889: teq R11, R15, ASR #3
l1890: teqCS R15, R10
l1891: cmpGE R2, R5, ROR #15
l1892: ldr R7, l1894
l1893: b l1895
l1894: .word 1048488
l1895: swpGEb R0, R9, [R7]
l1896: rsc R1, R15, R10, RRX 
l1897: ldr R9, l1899
l1898: b l1900
l1899: .word 1048500
l1900: swpMI R6, R11, [R9]
l1901: bic R1, R6, #1023410176
l1902: mov R9, #62
l1903: strB R14, [sp, +R9]
l1904: bLS l1913
l1905: add R1, R0, #135
interrupt_368: l1906: clz R4, R10
interrupt_245: l1907: mvn R6, R12, ASR #8
l1908: orrs R2, R5, R5, ROR #9
l1909: movGTs R8, R11, LSR R1
l1910: rscGT R7, R14, R5
interrupt_294: l1911: subEQ R14, R10, R7, LSL #13
interrupt_908: l1912: b l1914
l1913: b l1906
l1914: b l1918
l1915: teqGT R1, R7, ASR #4
interrupt_19: l1916: subs R5, R10, #16256
interrupt_935: l1917: cmnNE R1, R0, ASR R0
l1918: rscs R7, R3, #258998272
l1919: ldr R10, l1921
l1920: b l1922
l1921: .word 1048496
interrupt_921: l1922: swpCCb R12, R9, [R10]
l1923: stmIA R13, {R1, R3, R4, R6, R9, R11, R14, R15}
l1924: sbcLE R12, R8, R2, LSL R9
l1925: ldrLSB R1, [sp, #+40]
interrupt_418: l1926: addEQs R10, R14, R6
l1927: bics R6, R7, R11
l1928: addCCs R3, R10, R2, LSR #11
interrupt_559: l1929: subVS R10, R7, #491520
l1930: mvn R0, R2, ROR R0
l1931: cmpMI R0, R8
l1932: teqVS R3, #409600
l1933: strGEh R10, [sp, #+42]
l1934: subs R5, R1, R15
interrupt_464: l1935: sub R9, R0, R3, LSL R8
interrupt_518: l1936: ldrh R5, [sp, #+38]
l1937: ldr R12, [sp, #+4]!
interrupt_371: l1938: bicLSs R7, R10, R8
l1939: teqGT R7, R7
interrupt_242: l1940: eor R11, R9, #687865856
l1941: rsbs R10, R4, R2, LSR R12
l1942: mov R3, #52
l1943: ldrh R1, [sp, +R3]
interrupt_171: l1944: rsb R1, R3, R7
l1945: mov R11, #62
l1946: strHIh R1, [sp, +R11]
interrupt_437: l1947: mov R14, #37
l1948: ldrsb R8, [sp, +R14]
l1949: subs R3, R12, R7, ROR R2
l1950: b l1960
l1951: subs R9, R12, R1
l1952: bicGTs R1, R10, R0, ASR #19
l1953: eor R1, R14, R5, RRX 
interrupt_913: l1954: addGEs R14, R6, R5, ROR R12
l1955: subs R12, R10, #52480
interrupt_151: l1956: orr R6, R14, R7, RRX 
l1957: sbcLS R9, R6, #15
l1958: mvnGE R3, R7
l1959: teq R9, R6
l1960: subHIs R3, R2, R1
interrupt_240: l1961: ldrHIsb R10, [sp, #+16]
l1962: cmnNE R14, #9344
interrupt_46: l1963: ldr R5, l1965
l1964: b l1966
l1965: .word 1048540
interrupt_945: l1966: swpb R3, R7, [R5]
interrupt_583: l1967: tst R6, #3221225473
l1968: orrEQs R14, R10, R14, RRX 
interrupt_986: l1969: clzLT R1, R12
l1970: cmn R10, R10, RRX 
l1971: adc R6, R2, R3, RRX 
l1972: mov R5, #10
interrupt_325: l1973: ldrVSB R7, [sp, +R5]
interrupt_968: l1974: addLT R5, R0, R10
l1975: movLSs R5, R7, ROR #26
l1976: addEQs R9, R8, R12
l1977: str R6, [sp, #+20]!
l1978: mov R0, #2
interrupt_817: l1979: ldrB R5, [sp, -R0]
l1980: b l1984
interrupt_261: l1981: cmpNE R1, R12, LSR #20
l1982: rscLS R6, R14, #335544320
l1983: adds R3, R9, R7
l1984: cmnCS R10, R14, LSR R6
l1985: ldmDA R13!, {R1}
l1986: subPLs R10, R3, R15, ROR #16
l1987: rsbPL R4, R2, R11, ROR #17
l1988: orrGTs R3, R2, R6
interrupt_617: l1989: mov R3, R15
interrupt_668: l1990: clzHI R14, R7
interrupt_900: l1991: adcPL R5, R4, R10, ROR R14
l1992: clzLS R11, R9
l1993: ldr R8, [sp], #+40
l1994: strLSh R9, [sp, #-28]
l1995: teq R4, R11, ASR #12
l1996: teq R9, #1671168
l1997: clzHI R8, R7
l1998: mov R14, #12
l1999: ldr R4, [sp], -R14
interrupt_149: l2000: ldmIB R13!, {R0, R1, R5, R8, R10}
interrupt_866: l2001: movCSs R3, R14
l2002: ldr R4, l2004
l2003: b l2005
interrupt_984: l2004: .word 1048484
l2005: swpb R3, R14, [R4]
l2006: tstLT R7, R2, ASR R2
l2007: nop
l2008: eorEQs R2, R10, #59392
l2009: clz R11, R12
l2010: stmCSDA R13, {R1, R3, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15}
l2011: strh R0, [sp, #+0]
l2012: teqPL R12, #770048
l2013: rscLT R0, R1, #53248
l2014: mov R3, #47
l2015: strLTB R4, [sp, -R3]
interrupt_546: l2016: mov R1, #12
l2017: str R4, [sp, -R1]!
l2018: mvns R10, #396
interrupt_30: l2019: mov R3, #40
l2020: ldrB R4, [sp, -R3]
interrupt_131: l2021: mov R6, #12
l2022: ldr R1, [sp], +R6
l2023: mov R8, #64
l2024: str R1, [sp, -R8]
interrupt_90: l2025: tstCC R6, R11, RRX 
interrupt_68: l2026: ldrGTh R14, [sp, #-6]
l2027: ldr R4, [sp, #-8]!
l2028: cmp R9, #16320
l2029: mvn R2, R11, LSL R7
interrupt_214: l2030: mov R6, R14, LSR R5
l2031: adcVCs R1, R3, #7296
l2032: subs R0, R9, R11
l2033: orrLEs R7, R15, R8
l2034: ldrNEsh R0, [sp, #-14]
l2035: ldr R5, l2037
l2036: b l2038
l2037: .word 1048532
l2038: swpEQb R6, R3, [R5]
l2039: ldrVCB R12, [sp, #+11]
l2040: mov R14, #8
l2041: ldr R1, [sp, +R14]!
l2042: mov R7, #30
l2043: strh R0, [sp, -R7]
l2044: ldr R10, l2046
l2045: b l2047
l2046: .word 1048512
l2047: swpCC R9, R6, [R10]
l2048: ldr R4, l2050
l2049: b l2051
l2050: .word 1048524
l2051: swpHI R6, R0, [R4]
l2052: mov R0, #10
l2053: ldrCSsh R10, [sp, -R0]
l2054: eorGT R14, R11, R7
l2055: cmn R7, R7, RRX 
l2056: rsbGEs R5, R2, R6, LSR #30
l2057: eor R11, R8, R0, LSL R0
l2058: tstEQ R14, R12
l2059: mov R3, #2
interrupt_594: l2060: strh R4, [sp, -R3]
l2061: mov R8, #268435456
l2062: ldr R0, l2064
l2063: b l2065
l2064: .word 1048512
l2065: swp R14, R9, [R0]
l2066: eorVCs R5, R3, R2, ASR #7
l2067: strLS R14, [sp, #-52]
l2068: ldr R2, l2070
interrupt_54: l2069: b l2071
l2070: .word 1048480
interrupt_624: l2071: swpLTb R4, R4, [R2]
l2072: subLS R5, R14, R1, RRX 
interrupt_753: l2073: mvnLT R11, R5, LSL #0
interrupt_598: l2074: cmp R8, #491520
l2075: addMIs R11, R15, R12, ROR #6
interrupt_169: l2076: ldrHIsb R12, [sp, #-60]
l2077: ldrPLsh R7, [sp, #-14]
interrupt_687: l2078: mov R11, #41
interrupt_206: l2079: ldrEQB R4, [sp, -R11]
l2080: subPL R14, R3, R14
l2081: eors R5, R2, R0, LSR #8
l2082: stmMIDA R13, {R0, R1, R2, R3, R5, R7, R9, R10, R12, R13, R14, R15}
interrupt_361: l2083: cmnGE R3, #50331648
interrupt_608: l2084: clzMI R1, R14
interrupt_534: l2085: orr R0, R4, R7, LSR #29
l2086: rsbCS R14, R9, R1, LSL #2
l2087: str R11, [sp], #-68
interrupt_416: l2088: ldrNEh R7, [sp, #+34]
l2089: mov R1, #46
l2090: ldrPLsh R6, [sp, +R1]
l2091: b l2096
l2092: subVCs R3, R4, #4026531848
l2093: andNE R4, R10, R15
l2094: eorNEs R10, R10, R6, ROR #13
interrupt_142: l2095: tstVC R2, R11, LSL R1
l2096: rsbs R9, R7, #536870914
l2097: ldr R2, l2099
l2098: b l2100
l2099: .word 1048480
interrupt_178: l2100: swpHIb R0, R9, [R2]
l2101: tstLT R5, R10, RRX 
l2102: adcGT R8, R7, #3221225479
l2103: bics R1, R1, R0, LSR #30
l2104: clz R1, R3
l2105: bicVC R0, R6, R10
l2106: subVCs R7, R1, R11, ROR R7
l2107: cmpCS R15, R8, RRX 
l2108: subNE R8, R14, R11, LSL R0
interrupt_600: l2109: mvns R6, R11
l2110: tst R3, #121634816
l2111: rscLTs R8, R12, R4, RRX 
l2112: ldmMIIB R13, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l2113: sbc R5, R3, R14, ASR R3
l2114: add R8, R2, R5, RRX 
l2115: stmIA R13!, {R0, R1, R2, R4, R5, R6, R12, R15}
l2116: bLE l2121
l2117: add R1, R0, #231
l2118: tstVC R3, R12, LSL R1
l2119: cmpLE R4, #53477376
l2120: b l2122
l2121: b l2118
l2122: ldrB R0, [sp, #+24]
interrupt_970: l2123: rscPLs R5, R11, R1, LSL #18
l2124: stmDA R13!, {R6, R12, R14}
l2125: ldmDB R13!, {R2, R3, R9}
l2126: ldr R6, l2128
l2127: b l2129
l2128: .word 1048532
l2129: swpPL R9, R14, [R6]
l2130: ldmDB R13!, {R3}
l2131: andMIs R4, R6, R8, ASR #13
interrupt_694: l2132: strLEB R12, [sp, #+25]
l2133: bEQ l2137
l2134: tst R9, R0
l2135: clzCC R7, R12
interrupt_473: l2136: subLE R5, R10, R2, LSL #17
interrupt_172: l2137: rsb R7, R7, #458752
l2138: adc R2, R8, #3103784960
l2139: subVS R7, R6, R2
l2140: clzCS R2, R12
l2141: ldr R4, l2143
l2142: b l2144
interrupt_438: l2143: .word 1048480
l2144: swp R9, R8, [R4]
l2145: mov R3, #34
l2146: ldrsb R6, [sp, +R3]
interrupt_596: l2147: b l2152
interrupt_850: l2148: add R1, R0, #37
interrupt_180: l2149: sbcMIs R3, R4, R10, ASR #18
l2150: and R4, R9, R10
interrupt_876: l2151: b l2153
interrupt_759: l2152: b l2149
interrupt_226: l2153: bPL l2158
interrupt_442: l2154: add R1, R0, #144
l2155: and R7, R12, R10, LSL R11
l2156: mvn R7, R7
l2157: b l2159
l2158: b l2155
l2159: ldr R0, l2161
l2160: b l2162
l2161: .word 1048552
l2162: swp R9, R12, [R0]
l2163: sbcCSs R14, R14, R12, ASR #15
l2164: addNEs R10, R0, R2, LSR R12
l2165: orrNEs R4, R9, R2
interrupt_298: l2166: str R14, [sp], #+52
l2167: rscs R6, R11, R5, LSR R14
l2168: mov R8, #11
l2169: strB R6, [sp, +R8]
l2170: tstLT R2, R1, RRX 
l2171: ldrh R1, [sp, #-30]
l2172: subs R4, R9, R3
l2173: rscs R3, R7, #3472883712
l2174: bPL l2178
l2175: clzVS R3, R11
l2176: rsbVSs R11, R8, R1
l2177: adc R2, R7, #153092096
l2178: mvnEQ R3, R3, ROR #6
l2179: ldrsb R2, [sp, #-45]
l2180: tst R4, R3
l2181: bCC l2188
l2182: add R1, R0, #153
l2183: add R1, R10, R11
l2184: cmn R8, R12, LSL #0
l2185: tstEQ R12, #3792
l2186: rscHI R4, R8, R12, RRX 
l2187: b l2189
l2188: b l2183
interrupt_834: l2189: rsb R3, R7, R6, RRX 
l2190: teq R8, #2684354563
interrupt_119: l2191: ldr R3, l2193
interrupt_612: l2192: b l2194
l2193: .word 1048492
l2194: swpb R4, R5, [R3]
l2195: bEQ l2202
l2196: add R1, R0, #205
l2197: cmpCC R11, #10432
l2198: mvnHI R11, R12, ROR R7
l2199: addLSs R6, R3, R0, LSR #29
l2200: rscNE R2, R3, R4
l2201: b l2203
interrupt_328: l2202: b l2197
l2203: strGEB R9, [sp, #+13]
l2204: rscGTs R0, R6, #280
interrupt_228: l2205: eorLTs R2, R15, #31
l2206: ldrNEsh R8, [sp, #-18]
interrupt_569: l2207: orrEQs R0, R12, R15, ASR #12
l2208: ldrPLsb R7, [sp, #+7]
interrupt_198: l2209: mov R12, #2
interrupt_443: l2210: ldrh R11, [sp, -R12]
l2211: subs R1, R5, R10
l2212: orrVSs R1, R0, R3, LSL R5
l2213: ldr R2, l2215
l2214: b l2216
l2215: .word 1048520
l2216: swpGE R8, R12, [R2]
l2217: rscNE R1, R11, R2, RRX 
l2218: stmIB R13!, {R2, R10, R14}
l2219: cmn R3, R3, LSR R2
l2220: teq R4, R14
interrupt_241: l2221: str R9, [sp, #-60]
interrupt_946: l2222: rsbs R7, R1, R8, LSL #0
l2223: ldr R1, l2225
interrupt_247: l2224: b l2226
l2225: .word 1048548
l2226: swpVS R9, R7, [R1]
l2227: adcPLs R11, R15, #3184
l2228: teq R5, R9, LSR R10
l2229: bVC l2238
interrupt_82: l2230: add R1, R0, #99
l2231: tstLE R7, R0
l2232: cmnHI R12, R11
l2233: orrs R12, R3, #2147483671
l2234: cmn R2, R5
l2235: sub R6, R7, R5, LSR R3
l2236: mvnCSs R9, #33792
interrupt_674: l2237: b l2239
l2238: b l2231
l2239: mov R4, #69
l2240: ldrB R3, [sp, -R4]
l2241: mov R5, #72
interrupt_738: l2242: ldr R0, [sp], -R5
interrupt_740: l2243: ands R8, R1, R2, ASR #22
l2244: bics R3, R11, R15
l2245: eorVC R9, R11, R0
l2246: ldmIA R13!, {R6, R9}
l2247: sbcPL R1, R2, R0
l2248: ldr R9, l2250
l2249: b l2251
l2250: .word 1048492
l2251: swp R12, R4, [R9]
interrupt_421: l2252: rsc R9, R11, R5, RRX 
interrupt_542: l2253: teqVC R14, R3, LSR R10
l2254: eors R14, R14, R4, RRX 
l2255: nop
l2256: ldr R5, l2258
l2257: b l2259
interrupt_51: l2258: .word 1048544
l2259: swp R2, R2, [R5]
l2260: strB R0, [sp, #+30]
interrupt_867: l2261: mvnPL R1, #2818048
l2262: mov R1, #20
interrupt_707: l2263: str R7, [sp], +R1
l2264: cmpCC R4, R9, ROR #22
l2265: mov R1, #0
l2266: ldrHI R1, [sp, +R1]
l2267: movs R8, R7, RRX 
interrupt_432: l2268: b l2277
l2269: mvnVCs R8, #255
l2270: ands R3, R9, R6
l2271: sbcCSs R10, R0, R1, LSR #7
l2272: bicEQ R7, R15, R1
l2273: movGEs R2, #7
l2274: tst R1, R0, ASR R3
l2275: rsbHIs R6, R5, R10, LSR R7
l2276: and R3, R10, R10, ASR #25
l2277: tstLT R10, #3137339392
l2278: subs R14, R9, R5, RRX 
l2279: sbcCC R7, R2, R1
l2280: ldr R6, l2282
l2281: b l2283
l2282: .word 1048488
l2283: swpPLb R11, R5, [R6]
interrupt_471: l2284: ldrB R14, [sp, #-11]
l2285: ldmDA R13!, {R1, R2, R6, R12}
l2286: mov R5, #0
l2287: strVCB R3, [sp, +R5]
l2288: rscEQs R9, R10, #675840
interrupt_847: l2289: teqCS R10, R7, ASR R5
l2290: movPL R8, R1, ASR #2
l2291: mov R6, #30
l2292: ldrLTh R6, [sp, +R6]
l2293: movHI R0, #536870925
l2294: strPLh R2, [sp, #+46]
interrupt_551: l2295: adcs R9, R8, R12, RRX 
interrupt_778: l2296: stmDB R13!, {R3}
l2297: rsbHI R6, R4, R5, ROR R12
l2298: andHIs R6, R7, R5
l2299: ands R8, R15, R9, RRX 
l2300: sub R0, R11, R10, LSR #26
l2301: adcCSs R1, R12, R15, RRX 
l2302: ldrGTsh R8, [sp, #+18]
interrupt_324: l2303: orrs R1, R2, #11075584
interrupt_154: l2304: andHI R0, R3, #125829120
l2305: cmp R14, R12, ASR #5
l2306: bPL l2316
interrupt_207: l2307: movHI R5, R0
interrupt_332: l2308: sbcVSs R10, R14, R8, ROR #12
interrupt_302: l2309: cmp R12, #2281701376
l2310: bics R14, R10, R8, ROR #7
l2311: clzCS R5, R6
l2312: adds R1, R14, R0
l2313: subs R12, R10, #805306380
l2314: adds R2, R3, R5
l2315: eor R9, R11, #3221225526
l2316: cmpLS R6, R8
interrupt_969: l2317: bLE l2321
l2318: add R1, R0, #212
l2319: eorMIs R2, R14, #58720256
l2320: b l2322
l2321: b l2319
l2322: clz R6, R7
l2323: subs R5, R1, R0, ROR #6
l2324: eors R4, R8, R2, LSR R14
l2325: teqEQ R8, R4, ROR #2
l2326: bCS l2333
l2327: add R1, R0, #134
l2328: teq R15, #8
l2329: ands R2, R15, #49920
l2330: sbcCS R1, R15, R6, LSR #25
l2331: eorVSs R10, R15, R5, ROR #16
l2332: b l2334
interrupt_593: l2333: b l2328
l2334: mov R8, #56
l2335: ldr R8, [sp], +R8
l2336: cmpGT R0, R11
l2337: ldr R2, l2339
l2338: b l2340
l2339: .word 1048536
l2340: swpVS R7, R14, [R2]
l2341: eors R1, R6, R1, ASR R11
l2342: ldrLEsh R0, [sp, #-10]
l2343: rsbLE R7, R1, #0
l2344: rscGT R1, R14, #27787264
l2345: mvnEQ R6, R8
interrupt_992: l2346: ldmEQDA R13, {R0, R2, R3, R4, R5, R6, R7, R8, R10, R12, R14}
l2347: ldrNEsh R8, [sp, #-4]
l2348: mov R9, #5
l2349: strVSB R5, [sp, -R9]
interrupt_544: l2350: rsbs R12, R7, R5
l2351: ldr R12, l2353
l2352: b l2354
l2353: .word 1048532
l2354: swp R5, R1, [R12]
l2355: subEQs R12, R8, R1, LSL R11
l2356: sbc R0, R6, R7
interrupt_638: l2357: clz R7, R8
l2358: stmIB R13!, {R9}
l2359: ldrLTsh R4, [sp, #-64]
l2360: rsc R3, R8, R14, RRX 
l2361: ldr R10, l2363
interrupt_185: l2362: b l2364
l2363: .word 1048532
l2364: swpb R1, R3, [R10]
l2365: rsc R3, R7, R11
l2366: rsb R5, R6, R9
l2367: mvns R10, #897581056
l2368: andCSs R0, R9, #40
l2369: rscVS R7, R14, R4, ROR R1
l2370: ldr R11, l2372
interrupt_875: l2371: b l2373
l2372: .word 1048528
l2373: swpEQb R10, R1, [R11]
interrupt_523: l2374: subEQs R5, R12, #5242880
l2375: teqLT R12, R5
l2376: ldr R2, l2378
l2377: b l2379
interrupt_589: l2378: .word 1048548
l2379: swpGE R3, R3, [R2]
l2380: bic R9, R10, R0, ASR R12
l2381: mvnHI R8, #226
l2382: addGE R9, R0, R14, RRX 
l2383: andMI R12, R12, R8, RRX 
l2384: strLEB R1, [sp, #-56]
interrupt_862: l2385: sbcPL R4, R15, #49283072
l2386: tst R2, R3
l2387: teqLE R3, R3, RRX 
l2388: cmp R2, #10240
l2389: cmpMI R4, R9, LSR R2
interrupt_181: l2390: mov R12, #12
interrupt_410: l2391: ldrh R3, [sp, -R12]
l2392: rscPLs R3, R8, #63232
l2393: ldr R0, l2395
l2394: b l2396
l2395: .word 1048536
l2396: swpLSb R2, R14, [R0]
interrupt_950: l2397: mov R6, #28
interrupt_49: l2398: ldrh R4, [sp, -R6]
interrupt_906: l2399: bic R10, R0, R8, RRX 
interrupt_56: l2400: ldr R0, [sp], #-4
l2401: ldrVSB R14, [sp, #+3]
interrupt_393: l2402: subLEs R0, R9, R10
interrupt_553: l2403: rsc R11, R8, R4
l2404: ldrEQsb R12, [sp, #-19]
interrupt_653: l2405: clzMI R8, R9
l2406: stmDA R13!, {R2, R15}
l2407: mov R5, #19
l2408: strLEB R2, [sp, +R5]
interrupt_802: l2409: ldrEQsb R9, [sp, #-8]
l2410: adcMIs R5, R7, R9, LSR R3
l2411: ands R11, R6, #108
l2412: strLSh R3, [sp, #-22]
l2413: cmp R1, R9, RRX 
l2414: movCCs R7, R8, RRX 
l2415: ldrCSB R7, [sp, #+8]
l2416: mov R4, #49
l2417: ldrGTB R11, [sp, -R4]
interrupt_307: l2418: clzHI R1, R2
l2419: orrEQ R11, R0, R0
interrupt_203: l2420: cmpVC R10, R10, LSL #29
l2421: str R5, [sp], #-24
l2422: clzGT R3, R4
l2423: bHI l2424
interrupt_764: l2424: andVSs R3, R10, R8
l2425: ldmIB R13!, {R0, R3, R7, R11, R14}
l2426: rsbEQs R1, R5, R4, ASR R9
l2427: ldmIA R13!, {R2, R4, R8, R14}
interrupt_601: l2428: adds R6, R2, #603979776
l2429: rscMIs R10, R4, R2, ASR R11
l2430: cmn R15, R10
l2431: clzLS R7, R0
interrupt_430: l2432: teq R6, R12, ASR R11
interrupt_496: l2433: subEQ R0, R5, R5, LSL #31
l2434: ldrPLB R3, [sp, #+7]
l2435: eor R2, R6, R15, ASR #23
l2436: adcs R5, R0, #3328
l2437: andGTs R11, R8, R9
l2438: ldr R9, l2440
l2439: b l2441
l2440: .word 1048504
l2441: swpb R10, R14, [R9]
l2442: clzMI R12, R9
l2443: orr R2, R4, R0
l2444: rscLE R6, R5, R9, RRX 
l2445: rsbs R8, R7, R10
l2446: subVC R2, R11, R14
l2447: subMIs R6, R12, R12
l2448: ldrLEh R0, [sp, #-4]
l2449: bNE l2454
l2450: add R1, R0, #188
l2451: mvnGTs R5, R3
interrupt_200: l2452: subVC R9, R7, R12, ASR #22
interrupt_374: l2453: b l2455
l2454: b l2451
l2455: tst R0, R1, ASR R0
l2456: subPL R11, R14, #258048
l2457: mov R11, #56
l2458: str R12, [sp], -R11
l2459: cmnLS R0, R6, RRX 
l2460: cmnCC R9, R0
l2461: clzMI R11, R1
l2462: bicCC R2, R9, R15, LSL #20
l2463: ldrB R8, [sp, #+45]
interrupt_864: l2464: rscs R11, R11, R12
l2465: stmLTDA R13, {R15}
l2466: mov R6, #44
l2467: ldrGEh R14, [sp, +R6]
l2468: ldr R4, l2470
l2469: b l2471
l2470: .word 1048544
l2471: swpLE R11, R2, [R4]
l2472: mov R0, #8
l2473: str R15, [sp, -R0]
l2474: ldrVCsb R1, [sp, #+51]
l2475: tstGE R15, R0, ASR #8
l2476: orrGEs R10, R9, R14, LSR R2
l2477: adds R11, R0, #79691776
l2478: mov R6, #30
interrupt_98: l2479: strGTB R14, [sp, +R6]
l2480: rscLS R5, R8, #1343488
l2481: nop
l2482: mov R12, #58
interrupt_955: l2483: strPLh R3, [sp, +R12]
l2484: sbcHI R6, R6, #57344
l2485: mov R6, #14
interrupt_164: l2486: ldrh R5, [sp, +R6]
l2487: sbcLSs R8, R3, R5, LSR R7
l2488: ands R6, R14, R6
l2489: subGE R4, R14, R1, LSL R5
l2490: str R3, [sp, #+20]!
l2491: bics R7, R3, R2, ROR R9
l2492: mov R10, #36
l2493: strNE R8, [sp, +R10]
l2494: ldr R10, l2496
l2495: b l2497
l2496: .word 1048528
l2497: swp R6, R14, [R10]
l2498: strB R5, [sp, #-1]
interrupt_874: l2499: rsbLE R5, R1, R4, ROR R1
l2500: bPL l2507
l2501: clzLS R7, R0
l2502: mvn R0, R5
l2503: addPLs R5, R11, R14, LSL #3
interrupt_857: l2504: cmpGT R9, R15, LSL #15
l2505: subLE R0, R4, R9
l2506: adds R8, R2, R10, ASR R7
l2507: rscVCs R11, R6, R14, LSL R14
l2508: orrs R0, R4, #86016
interrupt_183: l2509: stmDA R13!, {R6, R11, R12, R14}
l2510: orrs R3, R6, #3825205248
l2511: ldr R14, l2513
l2512: b l2514
l2513: .word 1048548
interrupt_105: l2514: swpCSb R12, R2, [R14]
interrupt_236: l2515: mvnVCs R7, R5
l2516: addHIs R1, R5, R3, RRX 
l2517: ldrEQh R11, [sp, #-4]
l2518: bLE l2521
interrupt_167: l2519: tst R3, R3, LSR R4
l2520: bicCCs R12, R5, R12, LSR #20
l2521: teqGT R14, #992
interrupt_792: l2522: cmnGE R0, R1
l2523: strVCB R4, [sp, #+41]
l2524: rscPL R6, R12, R9, RRX 
l2525: ldr R9, l2527
l2526: b l2528
l2527: .word 1048484
l2528: swpCSb R6, R5, [R9]
l2529: mov R1, #12
l2530: ldrLT R7, [sp, -R1]
l2531: cmn R8, R0, LSL R6
l2532: subGT R2, R4, R14, ASR R0
interrupt_84: l2533: mov R14, #23
l2534: ldrNEB R1, [sp, +R14]
l2535: addLS R3, R12, R14
l2536: ldr R14, l2538
l2537: b l2539
interrupt_599: l2538: .word 1048528
l2539: swpLT R1, R12, [R14]
interrupt_39: l2540: bCC l2546
l2541: add R1, R0, #234
l2542: cmn R2, R11, ASR R12
l2543: mvnLT R9, R15
l2544: cmnNE R5, #14483456
l2545: b l2547
l2546: b l2542
l2547: mov R2, #4
l2548: strh R4, [sp, -R2]
l2549: mov R7, #12
l2550: str R8, [sp, -R7]
l2551: tstGT R4, R15, ROR #16
l2552: mov R1, #54
l2553: strh R1, [sp, +R1]
l2554: addLE R8, R10, R1, ASR R11
l2555: b l2563
l2556: movVS R5, R6
interrupt_414: l2557: rsbMI R12, R11, R5
interrupt_460: l2558: cmpLS R14, #2952790030
l2559: mvn R14, R9, LSL R9
l2560: mvnEQ R0, R7, ROR #1
l2561: eor R3, R9, R6, ROR R4
l2562: teq R7, R8, LSL #19
l2563: rscVSs R7, R12, R0
l2564: mov R11, #24
l2565: ldrB R7, [sp, +R11]
l2566: mov R3, #34
l2567: ldrVCsb R8, [sp, +R3]
l2568: stmIB R13!, {R14}
l2569: mov R6, #40
l2570: ldr R14, [sp], +R6
l2571: subHIs R12, R10, #229638144
l2572: add R1, R1, R9
l2573: ldrPLB R12, [sp, #-1]
l2574: ldr R2, l2576
interrupt_590: l2575: b l2577
l2576: .word 1048520
interrupt_652: l2577: swpMI R9, R0, [R2]
l2578: ldr R5, l2580
l2579: b l2581
l2580: .word 1048520
l2581: swpEQ R10, R9, [R5]
l2582: mov R5, #34
l2583: ldrCSh R2, [sp, -R5]
l2584: cmnCC R12, R1
l2585: mvns R11, #860160
l2586: sub R4, R5, R11
l2587: rsc R14, R3, R12, LSR R9
l2588: cmpVC R9, R11, LSR R11
l2589: teqVC R1, #3904
l2590: subLSs R11, R12, #17
l2591: mvnLT R4, R14
interrupt_525: l2592: sub R12, R6, #2885681152
l2593: teqCS R1, #4456448
l2594: mov R6, #39
l2595: ldrsb R14, [sp, -R6]
l2596: clzLE R4, R5
l2597: cmpCC R7, R10, ASR #19
interrupt_567: l2598: rsbMI R4, R1, R12, RRX 
l2599: sbc R12, R12, #15104
l2600: sbcs R14, R11, R12, ASR R0
l2601: andGE R0, R0, R7, LSL #0
l2602: subs R3, R1, R2, LSL #18
l2603: subs R8, R6, R3, ROR #14
l2604: stmDA R13!, {R13}
l2605: b l2609
l2606: add R1, R0, #244
interrupt_943: l2607: rsbVSs R6, R8, R12
l2608: b l2610
interrupt_431: l2609: b l2607
l2610: rsbGEs R2, R1, R8
l2611: rsbs R4, R11, R4, LSL R12
l2612: strB R1, [sp, #-14]
l2613: rscGT R8, R5, R1
l2614: mov R10, #4
l2615: ldr R1, [sp, +R10]!
l2616: ldrLSh R3, [sp, #+0]
l2617: subEQ R3, R4, R0
l2618: sbcHIs R3, R7, #197
l2619: stmDB R13, {R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14}
l2620: adcGT R14, R4, R14, LSR R3
l2621: movVSs R14, R1, LSR R4
l2622: ldr R12, l2624
interrupt_767: l2623: b l2625
l2624: .word 1048504
l2625: swpb R2, R1, [R12]
l2626: bNE l2636
l2627: sbcs R6, R12, R2, RRX 
interrupt_880: l2628: cmp R3, R8, RRX 
l2629: bicVS R8, R2, #84
l2630: ands R10, R8, R5, LSL #20
l2631: subs R1, R10, #13959168
l2632: mvnCSs R5, R11
l2633: add R5, R0, #5
l2634: mvn R4, R14, ASR #5
l2635: cmnEQ R5, R9
l2636: movHI R0, R2
l2637: bHI l2644
l2638: add R1, R0, #18
l2639: mvnLT R5, R9, LSR #17
interrupt_776: l2640: adcs R7, R2, R8, ASR #2
l2641: addMIs R10, R10, R0, LSL R12
l2642: ands R11, R8, #3604480
l2643: b l2645
interrupt_60: l2644: b l2639
l2645: stmIA R13, {R1, R7, R14}
l2646: subLTs R1, R5, R10
l2647: strLTh R11, [sp, #-26]
l2648: str R11, [sp], #+12
interrupt_413: l2649: bLT l2656
l2650: add R1, R0, #192
l2651: subEQ R10, R9, R1, LSR R7
l2652: add R12, R7, R9
l2653: mov R8, #2672
interrupt_762: l2654: adds R14, R2, R5, ROR R9
interrupt_470: l2655: b l2657
l2656: b l2651
interrupt_582: l2657: mvns R12, R11, ROR #5
l2658: ldr R10, [sp], #-12
interrupt_21: l2659: strh R1, [sp, #-2]
l2660: rscs R5, R9, R8, LSL R9
l2661: bicVCs R12, R3, R6, RRX 
interrupt_619: l2662: tstVC R6, R3
interrupt_703: l2663: cmpGE R7, #203
l2664: adc R14, R9, R12, LSL #16
l2665: b l2671
l2666: adds R1, R1, R8, ASR #24
l2667: eorMIs R2, R9, R3, RRX 
l2668: mvn R0, #169984
l2669: sbcNE R10, R1, #844
l2670: rscVC R12, R8, R12, ROR R0
interrupt_62: l2671: tst R3, R2, LSL R1
l2672: stmDA R13!, {R13, R15}
l2673: mov R11, #22
l2674: strLSh R10, [sp, -R11]
l2675: adcMIs R3, R10, R1, RRX 
l2676: clzCS R14, R0
l2677: ldmDB R13, {R6, R8, R11}
l2678: rsbGT R0, R3, R7
l2679: mov R3, #50
l2680: ldrEQsb R6, [sp, -R3]
interrupt_474: l2681: b l2686
interrupt_76: l2682: add R1, R0, #138
l2683: subEQs R5, R2, #22
l2684: addCC R4, R0, R5, RRX 
l2685: b l2687
l2686: b l2683
l2687: bics R9, R6, R0
l2688: ldr R11, l2690
l2689: b l2691
l2690: .word 1048536
l2691: swp R12, R1, [R11]
l2692: add R12, R14, R4, ROR R10
interrupt_894: l2693: addMIs R3, R9, #4026531843
l2694: rsb R4, R2, R11, ROR R14
l2695: bicPLs R9, R14, #4194304
l2696: stmDA R13!, {R0, R1, R2, R9, R10, R11}
l2697: subPLs R12, R4, R7
l2698: mov R4, #26
l2699: strEQh R7, [sp, +R4]
interrupt_480: l2700: stmIB R13!, {R13, R15}
l2701: bics R1, R2, #3556769795
l2702: tstHI R2, R0, LSR R11
interrupt_406: l2703: adcs R7, R6, R8
l2704: ldr R14, l2706
l2705: b l2707
l2706: .word 1048540
interrupt_891: l2707: swpCC R9, R11, [R14]
l2708: movNE R10, R4, LSR R9
l2709: teqEQ R9, #1728
interrupt_317: l2710: tstGT R8, R2, LSR #30
interrupt_58: l2711: sbcs R14, R10, #831488
l2712: orrCS R1, R7, R7, LSR R2
l2713: clzLT R1, R3
l2714: rscVC R1, R12, #72351744
l2715: orrCC R6, R6, R11, RRX 
interrupt_391: l2716: mov R7, #28
l2717: strh R9, [sp, +R7]
l2718: cmpLT R9, R1, LSR R5
l2719: ldr R2, l2721
l2720: b l2722
l2721: .word 1048484
l2722: swp R0, R7, [R2]
l2723: mov R5, #4
l2724: ldrsh R3, [sp, -R5]
l2725: tst R8, #10368
l2726: bLT l2731
l2727: add R1, R0, #63
l2728: subCSs R14, R9, R14, ROR R8
l2729: rsbGE R1, R15, R2, ASR #27
l2730: b l2732
l2731: b l2728
interrupt_194: l2732: rsbs R2, R1, #4046848
l2733: ldrEQsh R0, [sp, #-30]
l2734: mov R11, #24
l2735: ldrsb R10, [sp, -R11]
l2736: clz R1, R12
l2737: ldr R5, l2739
interrupt_24: l2738: b l2740
l2739: .word 1048524
l2740: swpb R9, R9, [R5]
l2741: stmIB R13!, {R1, R2, R3, R4, R5, R7, R10, R11, R15}
l2742: ldr R11, l2744
interrupt_772: l2743: b l2745
l2744: .word 1048520
l2745: swpHI R14, R4, [R11]
l2746: bCS l2753
l2747: mvnCCs R14, R12, LSR #18
interrupt_101: l2748: eor R9, R9, R14
l2749: andCCs R7, R3, R10, RRX 
l2750: orrs R12, R0, R9
l2751: and R11, R12, #44544
l2752: sub R12, R6, R6
l2753: bic R8, R3, R12
l2754: ldrGTB R8, [sp, #-13]
l2755: sub R14, R0, R14, RRX 
l2756: bic R14, R7, R14, LSR #20
interrupt_441: l2757: add R14, R1, #684032
interrupt_95: l2758: strB R11, [sp, #-62]
l2759: and R0, R6, R7, ROR R0
l2760: mov R0, #8
interrupt_27: l2761: str R1, [sp, -R0]!
l2762: mov R12, #40
l2763: str R12, [sp], -R12
l2764: add R8, R6, R7, ASR #13
l2765: mov R1, #18
interrupt_904: l2766: ldrGTh R0, [sp, +R1]
l2767: mov R2, #12
l2768: strLSB R12, [sp, +R2]
interrupt_888: l2769: sbcPL R6, R9, R14
l2770: b l2774
l2771: clzLE R12, R7
l2772: add R3, R12, R14, ROR #12
l2773: rsc R8, R2, #2572288
l2774: eorCS R4, R8, R8, RRX 
l2775: ldr R9, l2777
l2776: b l2778
l2777: .word 1048508
l2778: swpVS R5, R8, [R9]
interrupt_503: l2779: bMI l2788
l2780: add R1, R0, #92
l2781: cmp R7, #484
l2782: eorCSs R6, R9, R11
l2783: mov R8, #25600
l2784: rsbHIs R11, R5, R6, ASR R8
interrupt_819: l2785: eorPL R11, R8, R11
l2786: clz R0, R3
l2787: b l2789
l2788: b l2781
l2789: subPL R6, R10, R10, LSL R12
l2790: cmp R14, R14, ROR #26
l2791: mov R8, #48
l2792: strLSB R11, [sp, +R8]
l2793: cmp R7, R15, RRX 
l2794: rsbVCs R7, R8, R5, LSL R11
l2795: rscPLs R10, R1, #2147483662
interrupt_996: l2796: bVS l2802
l2797: cmn R3, R9
interrupt_910: l2798: tst R12, R14
l2799: ands R0, R10, R2, RRX 
l2800: eorPLs R12, R10, R9, ROR R9
l2801: sbcPL R4, R11, R15, LSR #18
l2802: rsbCCs R5, R9, R12, LSL #28
l2803: sbcLTs R1, R7, R10, LSL R0
l2804: teqEQ R9, R10, ROR #9
l2805: ldrh R7, [sp, #+20]
l2806: mov R1, #12
l2807: ldrMIB R3, [sp, -R1]
l2808: adcLSs R7, R0, R15
interrupt_558: l2809: nop
l2810: b l2816
l2811: add R1, R0, #127
l2812: tstCC R1, R4
l2813: eor R7, R15, R8, RRX 
l2814: eorGEs R5, R8, R12, LSR R0
l2815: b l2817
l2816: b l2812
l2817: sbcs R1, R9, R0, ROR #5
interrupt_981: l2818: ldr R11, l2820
interrupt_515: l2819: b l2821
l2820: .word 1048516
l2821: swpVSb R5, R3, [R11]
l2822: cmpCC R5, R11, LSL R0
l2823: subs R12, R4, R7
interrupt_708: l2824: adc R2, R4, R5
interrupt_278: l2825: subCC R2, R0, R15, ROR #18
l2826: movCCs R8, R15
l2827: ldmDA R13, {R5}
l2828: strNE R11, [sp, #-8]
l2829: tstGE R14, R11, RRX 
l2830: b l2839
l2831: add R1, R0, #206
l2832: sbcs R7, R9, R0, ROR #28
l2833: clz R10, R4
l2834: bicGTs R0, R7, R7
l2835: orr R6, R6, R0, LSR #24
l2836: mvn R5, #1073741825
interrupt_486: l2837: cmpLS R10, R8, LSL #8
l2838: b l2840
interrupt_311: l2839: b l2832
l2840: bicVC R9, R4, R4
l2841: stmGTDB R13, {R3}
l2842: adcCC R1, R1, R14, ASR R12
l2843: orr R9, R10, R3
l2844: ldrCS R4, [sp, #+12]
l2845: sbcs R10, R1, R4
l2846: addPLs R7, R4, #1358954496
l2847: mov R3, #44
l2848: strVSh R11, [sp, +R3]
interrupt_829: l2849: rscs R12, R11, R4
l2850: sub R1, R2, R14, LSL #11
interrupt_137: l2851: subVS R10, R15, R11
l2852: mov R8, #46
l2853: strh R11, [sp, +R8]
l2854: andMIs R8, R4, R7, LSR #19
l2855: tstLT R12, R12
interrupt_192: l2856: rscLTs R11, R8, R1, LSR #19
l2857: mov R2, #20
l2858: ldr R1, [sp], -R2
interrupt_905: l2859: adcs R0, R9, R1
l2860: ldmIB R13, {R1, R3, R4, R5, R9, R12, R14}
interrupt_620: l2861: mvnGT R6, R9, RRX 
l2862: bicNEs R3, R6, R15, ASR #4
l2863: ldr R11, l2865
interrupt_498: l2864: b l2866
l2865: .word 1048500
interrupt_793: l2866: swpLTb R5, R7, [R11]
l2867: eor R5, R12, R2
l2868: movs R7, R1, ASR #26
l2869: clzGT R6, R8
interrupt_816: l2870: clzPL R11, R14
interrupt_941: l2871: mov R4, #24
l2872: strVS R2, [sp, +R4]
l2873: cmp R10, R15
l2874: mov R8, #64
l2875: ldr R4, [sp], +R8
interrupt_42: l2876: ldrMIsh R6, [sp, #-44]
l2877: nop
interrupt_678: l2878: tst R4, R7
l2879: mov R6, #43
l2880: ldrLSsb R9, [sp, -R6]
interrupt_308: l2881: addNEs R3, R4, R5
l2882: sbc R1, R9, R1
l2883: mov R1, #67
l2884: ldrB R7, [sp, -R1]
l2885: mov R0, #16
l2886: strLEB R4, [sp, -R0]
l2887: mov R7, #50
l2888: ldrh R12, [sp, -R7]
interrupt_663: l2889: mov R14, #51
l2890: ldrLEsb R7, [sp, -R14]
l2891: b l2897
l2892: add R1, R0, #153
l2893: subMIs R12, R3, R12, LSL #10
l2894: cmpGE R9, #12517376
interrupt_271: l2895: cmpMI R8, R12, ROR R0
l2896: b l2898
l2897: b l2893
interrupt_275: l2898: rsbVCs R1, R10, R1, LSR #26
l2899: ldrB R14, [sp, #-6]
l2900: subMIs R12, R6, R9, LSL R3
l2901: ldr R9, [sp, #-28]
l2902: movLT R0, #1744830464
l2903: subCS R11, R9, R9, ASR R0
l2904: mvnVCs R7, R2
l2905: sub R9, R11, R3, ASR R7
l2906: bicLE R1, R6, R8
interrupt_48: l2907: mov R10, #36
l2908: ldr R8, [sp, -R10]!
l2909: cmpCS R5, #147456
interrupt_734: l2910: stmIB R13!, {R0, R2, R4, R5, R6, R7, R10}
l2911: strCCB R14, [sp, #-41]
l2912: teqGE R15, R15
l2913: tstLE R10, R5
l2914: mov R7, #28
interrupt_854: l2915: ldrCSh R12, [sp, -R7]
l2916: mov R11, #60
interrupt_184: l2917: ldrh R11, [sp, -R11]
l2918: ldr R14, [sp], #+0
l2919: ldr R9, [sp], #-36
l2920: mvn R1, R11, LSL R4
l2921: sbcHIs R7, R8, #9920
interrupt_66: l2922: ands R5, R12, R9, LSL R14
l2923: bicGTs R9, R9, R2, RRX 
l2924: mov R1, #4
l2925: ldrLTsh R6, [sp, -R1]
l2926: ldmDB R13!, {R2, R5, R10, R14}
l2927: ldr R2, l2929
l2928: b l2930
l2929: .word 1048536
interrupt_741: l2930: swpVS R12, R4, [R2]
l2931: ldrCSh R2, [sp, #-8]
interrupt_234: l2932: teqGE R9, R14, ROR #2
l2933: bic R9, R8, R4, LSL R9
interrupt_745: l2934: ldrsb R4, [sp, #-8]
l2935: orrs R6, R10, R3, LSR #14
interrupt_373: l2936: mvnMIs R4, R8, RRX 
l2937: bics R6, R11, R5, RRX 
l2938: bVS l2942
l2939: add R1, R0, #49
l2940: subLEs R12, R2, R5
l2941: b l2943
l2942: b l2940
l2943: addCCs R8, R9, R5, ASR #15
l2944: rscLSs R9, R10, #884736
l2945: mov R4, #8
l2946: strCSh R1, [sp, +R4]
l2947: movs R5, #335544320
l2948: mov R7, #12
l2949: ldr R7, [sp, +R7]!
l2950: ldr R0, l2952
l2951: b l2953
l2952: .word 1048516
l2953: swpCSb R9, R9, [R0]
l2954: mov R12, #36
l2955: ldrsb R10, [sp, +R12]
l2956: subEQs R12, R8, #394264576
interrupt_306: l2957: mov R2, #4
l2958: ldrLEh R1, [sp, +R2]
l2959: sbcLSs R1, R2, #83968
l2960: orrHIs R14, R8, R0
interrupt_188: l2961: mov R9, #47
interrupt_336: l2962: strHIB R6, [sp, +R9]
l2963: eorGTs R10, R10, R10, LSL #1
interrupt_926: l2964: subHI R3, R0, R9, RRX 
interrupt_384: l2965: bic R8, R1, R5, ROR #21
l2966: ldrsb R0, [sp, #-5]
l2967: bics R1, R7, R15
l2968: ldr R10, l2970
interrupt_665: l2969: b l2971
l2970: .word 1048488
l2971: swpLT R0, R0, [R10]
interrupt_799: l2972: rsc R12, R11, R14
l2973: bic R11, R6, R11
l2974: tst R3, R3, ASR R11
l2975: mov R14, #34
l2976: ldrVCh R6, [sp, +R14]
l2977: mov R14, #38
l2978: ldrHIsb R2, [sp, +R14]
l2979: strB R12, [sp, #+17]
l2980: mov R6, #16
l2981: ldrVCsb R1, [sp, +R6]
l2982: teqGE R5, R14, RRX 
l2983: mov R3, #8
l2984: ldr R8, [sp], +R3
l2985: movs R7, R11, ROR #4
l2986: sub R4, R12, R8, LSL #29
l2987: mov R0, R14, ROR #6
l2988: stmDA R13, {R0, R2, R6, R12, R14}
l2989: ldmLEIA R13, {R3}
l2990: strCSB R1, [sp, #+47]
interrupt_359: l2991: ldr R12, [sp, #+24]!
l2992: andNE R11, R3, R0, RRX 
l2993: sbc R7, R2, R9, ASR R7
l2994: clzVS R9, R3
l2995: sbcGTs R9, R3, #51712
l2996: cmp R7, #138412032
l2997: b l3002
l2998: sbc R3, R4, R14, ROR R1
interrupt_555: l2999: cmpGT R5, R14
l3000: mvnVS R3, #10752
l3001: ands R9, R2, R1, LSR #13
l3002: ands R14, R9, #1275068416
l3003: mov R9, #12
l3004: ldrVS R12, [sp, -R9]
l3005: movs R9, R15, ASR #20
l3006: ldrVSB R14, [sp, #-14]
l3007: cmn R8, #2415919116
l3008: cmn R9, R14
l3009: teq R7, #30146560
l3010: subHI R14, R4, #1275068416
interrupt_163: l3011: ldr R11, l3013
l3012: b l3014
interrupt_17: l3013: .word 1048540
l3014: swpVC R3, R14, [R11]
l3015: andPL R0, R0, R14
interrupt_952: l3016: sbc R3, R10, R14, RRX 
l3017: rsbVSs R5, R9, #21
l3018: rsc R4, R15, #1904
l3019: mov R4, #30
interrupt_9: l3020: ldrCSB R9, [sp, -R4]
l3021: mvnEQs R2, R10, LSR R3
interrupt_706: l3022: b l3030
l3023: orrPLs R9, R1, R0, ASR #7
l3024: tstNE R7, #2147483677
l3025: cmnEQ R11, R5
l3026: sbcGT R4, R15, #84
l3027: adcs R11, R2, R0, LSR #3
interrupt_348: l3028: sbcLTs R7, R6, #42752
l3029: eor R3, R5, R4, ASR R0
l3030: cmpLS R5, R2
l3031: clz R10, R7
l3032: tst R8, #2195456
interrupt_869: l3033: stmDA R13, {R0, R2, R4, R8}
interrupt_548: l3034: sbcs R12, R3, R1
l3035: andGTs R5, R7, R6, LSR R11
l3036: mov R9, #16
l3037: strGT R2, [sp, +R9]
l3038: mov R9, #15
l3039: strB R2, [sp, +R9]
interrupt_59: l3040: bVS l3044
l3041: bicVC R2, R15, #4177526784
l3042: tstLT R6, R5, ROR R1
l3043: rsc R6, R11, #520093696
l3044: orrGTs R11, R6, R0, ROR R0
interrupt_75: l3045: sbcHI R8, R9, #759169024
l3046: sub R7, R0, R8, ASR R12
l3047: ldr R11, l3049
l3048: b l3050
interrupt_651: l3049: .word 1048528
interrupt_667: l3050: swp R1, R12, [R11]
interrupt_465: l3051: sbcVCs R3, R2, #258998272
l3052: rscs R11, R5, R3
l3053: mvn R0, #308
l3054: cmpNE R1, R3, LSR #17
l3055: movLS R6, #608174080
l3056: b l3064
l3057: adcCSs R2, R5, R1, LSL #10
l3058: addCS R0, R12, R1, ASR #29
l3059: subCSs R6, R0, R0, LSL R3
l3060: rscGT R3, R11, R3, ROR #10
l3061: eors R0, R5, R1, RRX 
l3062: mvn R0, #6080
interrupt_499: l3063: teq R5, R12, ROR #31
l3064: cmp R8, R8, ASR #27
l3065: addLSs R14, R15, R3, RRX 
l3066: stmDB R13, {R1, R2, R4, R5, R7, R10, R11, R12, R13, R14, R15}
interrupt_683: l3067: rscLEs R5, R14, R15, LSL #22
l3068: rscLTs R11, R11, R3, ROR R2
l3069: bicLTs R5, R6, #2147483649
l3070: stmIB R13!, {R1, R2, R7, R10}
interrupt_556: l3071: mvns R10, R6, RRX 
l3072: movLEs R2, R5
l3073: mov R4, #8
l3074: ldrh R9, [sp, -R4]
l3075: ldmVCDA R13, {R2, R6, R14}
l3076: sbcLS R3, R6, R7
l3077: teq R7, #1035993088
interrupt_549: l3078: strGTh R14, [sp, #-16]
l3079: bicPLs R4, R9, R3, RRX 
l3080: mov R11, #38
l3081: ldrEQsh R3, [sp, -R11]
l3082: ldrVSh R11, [sp, #-22]
l3083: orrNEs R5, R0, R10, LSL #19
l3084: stmIB R13!, {R1}
l3085: cmn R8, R9
l3086: andVC R14, R9, R1, LSL #20
l3087: mvnCSs R4, #183
l3088: bVC l3095
l3089: add R1, R0, #36
interrupt_422: l3090: rscLEs R6, R2, R14, LSL #21
l3091: rscPL R2, R2, R14, ROR R9
l3092: movs R7, R3
l3093: bic R7, R11, R9
l3094: b l3096
l3095: b l3090
interrupt_29: l3096: teqGE R1, R8
l3097: tst R0, R2
l3098: bNE l3102
l3099: add R1, R0, #217
interrupt_821: l3100: sbcs R8, R10, R8, LSL #25
l3101: b l3103
interrupt_893: l3102: b l3100
l3103: mov R11, #38
interrupt_895: l3104: ldrsb R12, [sp, -R11]
l3105: subCS R9, R7, R7, ROR #20
l3106: mov R14, #28
l3107: ldrh R10, [sp, -R14]
l3108: ldr R9, l3110
l3109: b l3111
l3110: .word 1048500
interrupt_231: l3111: swpMIb R12, R11, [R9]
l3112: tst R0, R5
l3113: andGEs R1, R11, R14
l3114: nop
l3115: ldr R9, l3117
l3116: b l3118
l3117: .word 1048536
l3118: swpVC R14, R3, [R9]
l3119: nop
l3120: ldrCCh R11, [sp, #-4]
l3121: eor R4, R14, R3, ASR R1
l3122: adcGE R5, R6, R10, ASR R9
l3123: eor R1, R9, R10
l3124: ldr R3, l3126
l3125: b l3127
l3126: .word 1048488
l3127: swpGTb R1, R10, [R3]
l3128: mvn R9, R5, LSL #28
interrupt_635: l3129: mov R3, #33
interrupt_177: l3130: ldrsb R11, [sp, -R3]
l3131: ldr R11, l3133
l3132: b l3134
l3133: .word 1048540
l3134: swp R7, R2, [R11]
l3135: bPL l3140
l3136: addNEs R14, R6, #7680
l3137: rsbLT R5, R10, #6336
l3138: sbcCS R14, R7, R12, LSR R3
interrupt_235: l3139: rsb R9, R8, R14, ROR R4
l3140: subs R2, R0, R0, ASR R4
l3141: cmn R4, R9
interrupt_661: l3142: subGTs R1, R9, R9, ASR R11
l3143: sbcGT R8, R5, R11, LSR R0
l3144: tst R3, R3
l3145: ldrsb R11, [sp, #-18]
l3146: addCS R7, R8, R11, LSL #3
l3147: rsbMI R4, R8, R14
l3148: strVCB R2, [sp, #+1]
l3149: teqEQ R7, R14
l3150: mov R14, #46
l3151: strNEB R10, [sp, -R14]
l3152: sub R10, R4, R2, ASR R9
l3153: mov R11, #8
l3154: ldr R11, [sp, -R11]!
l3155: sbcs R3, R8, R10, LSL #27
l3156: mvnCCs R6, R9, LSR R7
interrupt_476: l3157: ldrGTh R9, [sp, #-8]
interrupt_12: l3158: mov R8, #0
l3159: ldr R4, [sp], +R8
l3160: subs R5, R2, R5, RRX 
interrupt_780: l3161: strEQB R6, [sp, #+11]
l3162: mov R7, #3
l3163: ldrB R1, [sp, -R7]
l3164: cmp R0, R8
l3165: eor R8, R2, R14, RRX 
interrupt_670: l3166: ldrsb R7, [sp, #-63]
l3167: mov R10, #50
l3168: strEQB R14, [sp, -R10]
l3169: ldrsb R12, [sp, #-42]
l3170: b l3175
l3171: add R1, R0, #137
l3172: sbcGE R12, R8, R14, RRX 
l3173: clzLE R9, R0
l3174: b l3176
interrupt_752: l3175: b l3172
l3176: cmpLS R8, R4
interrupt_160: l3177: strVCB R0, [sp, #-25]
l3178: mvnHI R2, R1
interrupt_4: l3179: mov R6, #45
l3180: ldrB R9, [sp, -R6]
interrupt_147: l3181: bicNE R10, R12, R7, LSL #12
l3182: rsc R2, R2, R3, ROR #30
l3183: andLTs R6, R12, #2952790025
interrupt_592: l3184: cmpLT R8, #5898240
l3185: teq R14, R6, LSL R5
interrupt_274: l3186: subGT R9, R1, #1073741884
l3187: tst R9, R15
l3188: mov R3, #8
l3189: strh R1, [sp, +R3]
l3190: b l3196
l3191: add R1, R0, #189
l3192: clz R6, R3
interrupt_492: l3193: cmn R0, R11, LSL #13
l3194: cmnPL R7, #343932928
l3195: b l3197
l3196: b l3192
l3197: subLEs R3, R14, R1, RRX 
l3198: ldr R11, l3200
l3199: b l3201
interrupt_111: l3200: .word 1048528
l3201: swpGEb R10, R2, [R11]
l3202: ldmDB R13!, {R2, R3, R4, R7, R10, R11}
l3203: mov R2, #10
l3204: ldrCCsh R9, [sp, +R2]
interrupt_903: l3205: andEQ R10, R14, R9, LSR R12
l3206: ldr R5, l3208
l3207: b l3209
l3208: .word 1048480
l3209: swpHIb R1, R4, [R5]
l3210: stmDB R13!, {R1, R11}
l3211: ldrB R3, [sp, #+20]
l3212: bics R10, R8, R7, LSL #18
l3213: cmp R11, R14, LSL #5
l3214: teqCS R6, #9633792
l3215: sbc R1, R0, R6, RRX 
l3216: rsb R2, R11, #232
l3217: adc R6, R9, R12, LSL R2
l3218: ldrh R3, [sp, #-6]
l3219: ldmDB R13!, {R12}
l3220: clz R9, R12
interrupt_746: l3221: clz R12, R0
l3222: bCC l3223
l3223: rsbVSs R3, R14, #3920
l3224: subLS R12, R11, R5, ROR R3
l3225: bGE l3232
l3226: add R1, R0, #151
l3227: orrVS R1, R0, R9
l3228: clzPL R7, R2
interrupt_540: l3229: adds R2, R4, R8, LSL R12
l3230: mvnEQs R7, R2, ROR R14
interrupt_276: l3231: b l3233
l3232: b l3227
l3233: ldr R2, [sp, #+24]!
l3234: rsbs R12, R9, R0, ASR R1
l3235: mov R11, #25
l3236: ldrCSsb R10, [sp, -R11]
l3237: nop
l3238: mov R1, #24
l3239: str R7, [sp, -R1]!
interrupt_997: l3240: eorLT R7, R9, #2097152
l3241: orrGEs R6, R2, R3, RRX 
l3242: strh R5, [sp, #-22]
l3243: mov R7, #4
l3244: str R7, [sp, -R7]!
l3245: mvnGTs R14, #798720
l3246: strB R0, [sp, #+12]
l3247: clz R3, R11
l3248: mvn R9, R6
l3249: eorCSs R8, R3, #21
l3250: addCSs R4, R4, R6
l3251: tstLT R2, R12
interrupt_672: l3252: tst R10, R3
l3253: strLTh R5, [sp, #-2]
l3254: mov R1, #20
l3255: ldrNEh R8, [sp, -R1]
l3256: tst R0, R5, LSR #24
l3257: add R2, R9, R4, LSR R8
interrupt_89: l3258: nop
l3259: ldmIA R13!, {R3, R6, R8, R10, R11}
interrupt_565: l3260: andCSs R11, R7, #1638400
l3261: ldrsh R8, [sp, #+28]
l3262: ldr R2, l3264
l3263: b l3265
interrupt_41: l3264: .word 1048488
l3265: swpb R6, R3, [R2]
l3266: ldr R0, l3268
l3267: b l3269
l3268: .word 1048536
interrupt_337: l3269: swp R1, R3, [R0]
l3270: strPL R3, [sp, #-44]
l3271: str R15, [sp, #-32]
interrupt_292: l3272: ldrCSB R5, [sp, #+7]
l3273: eors R3, R8, R8, LSL R9
l3274: cmn R11, R7, LSR #2
l3275: tstVC R0, #1035993088
l3276: ldr R12, [sp, #-40]
l3277: ldr R10, l3279
l3278: b l3280
interrupt_223: l3279: .word 1048520
interrupt_128: l3280: swpGTb R3, R6, [R10]
l3281: sbcs R7, R4, R12, LSL #7
l3282: mov R7, #10
l3283: ldrh R7, [sp, +R7]
l3284: mov R6, #16
l3285: str R5, [sp], -R6
l3286: clzLS R14, R11
l3287: movCC R3, R8, ASR R7
l3288: strVCB R2, [sp, #+40]
l3289: ldrEQB R9, [sp, #+5]
l3290: andPLs R8, R9, R0, LSL #7
l3291: clz R12, R6
l3292: mov R1, #22
l3293: ldrMIsb R5, [sp, +R1]
interrupt_564: l3294: orrs R10, R3, #2147483654
interrupt_222: l3295: bics R12, R14, R15
l3296: ldr R9, l3298
l3297: b l3299
l3298: .word 1048480
l3299: swp R12, R1, [R9]
interrupt_868: l3300: rsbCCs R6, R6, #238592
l3301: orrPLs R4, R10, R8
l3302: clz R1, R10
l3303: ldrVCh R5, [sp, #+26]
l3304: ldrsb R2, [sp, #+27]
l3305: bicCSs R8, R6, R4, ROR #30
l3306: orr R0, R4, R7
l3307: ldr R1, l3309
interrupt_718: l3308: b l3310
interrupt_53: l3309: .word 1048540
l3310: swpVSb R5, R14, [R1]
interrupt_43: l3311: stmIB R13!, {R1}
l3312: movNEs R14, #376832
l3313: movCCs R3, #229376
l3314: mov R10, #28
l3315: strLSh R8, [sp, +R10]
l3316: adds R6, R6, R14, LSL R9
l3317: mvns R1, R12, ASR R4
l3318: mov R9, #3
l3319: ldrCCB R0, [sp, -R9]
l3320: mvns R8, R11, ASR #10
l3321: ldr R11, [sp], #+4
l3322: stmIB R13, {R5, R11, R13, R14, R15}
l3323: mov R3, #38
l3324: ldrPLsh R11, [sp, +R3]
l3325: cmpLE R11, #39424
l3326: mov R7, #24
interrupt_405: l3327: ldr R7, [sp, +R7]!
l3328: subCCs R14, R7, R10
l3329: stmDB R13!, {R6, R7, R10, R14}
l3330: rsbEQs R3, R7, #240
l3331: mov R7, #34
l3332: ldrh R7, [sp, -R7]
l3333: rsbLTs R6, R0, #122880
interrupt_10: l3334: cmp R11, R1, RRX 
l3335: stmEQIB R13, {R0, R7, R9, R10, R12}
l3336: subLEs R12, R2, #228
interrupt_808: l3337: eorPL R7, R15, R6
l3338: movCCs R4, R6
l3339: strh R7, [sp, #-8]
l3340: orrLS R2, R11, R6, LSR #15
l3341: clzEQ R14, R6
l3342: orrs R11, R2, #4980736
l3343: rscs R11, R3, R9, LSR R2
l3344: bNE l3348
l3345: add R1, R0, #166
l3346: cmn R15, #1610612742
l3347: b l3349
l3348: b l3346
interrupt_230: l3349: cmnEQ R6, #28672
l3350: b l3352
l3351: cmnLE R9, R1, LSL #9
l3352: clzVC R11, R8
interrupt_478: l3353: eor R9, R15, R15
interrupt_701: l3354: ldrh R5, [sp, #-8]
l3355: cmpEQ R3, R6
l3356: teqLT R7, R5
l3357: addVC R11, R10, R3
l3358: orrs R14, R12, R2, ASR R6
l3359: str R0, [sp, #-12]!
l3360: mvnVCs R11, R4, LSL R11
l3361: addCS R14, R14, #6291456
l3362: mov R4, #18
l3363: ldrLTB R0, [sp, -R4]
l3364: mov R7, #8
l3365: strPLh R0, [sp, -R7]
l3366: stmDA R13!, {R2, R4, R7, R12, R15}
l3367: eor R5, R11, R15
l3368: mvns R11, R3, LSR #13
interrupt_351: l3369: b l3374
l3370: teqNE R11, R7, LSL R10
l3371: mvn R12, R11
l3372: bicPL R8, R14, R9, ROR #16
l3373: clz R5, R3
l3374: mvnCS R1, R14, LSL #0
l3375: bicVCs R3, R7, R0, ROR #21
interrupt_637: l3376: rsbLTs R0, R5, R0, LSR R0
l3377: mvn R12, R3, LSR #3
l3378: cmn R10, R15, LSR #31
l3379: ldr R2, l3381
l3380: b l3382
l3381: .word 1048500
l3382: swpLE R7, R7, [R2]
interrupt_264: l3383: cmnMI R8, #7424
l3384: clzLE R7, R6
l3385: rsb R3, R0, #23
interrupt_789: l3386: sub R4, R12, R9, ASR R8
l3387: ldr R12, l3389
l3388: b l3390
interrupt_887: l3389: .word 1048496
l3390: swpEQb R4, R3, [R12]
l3391: rsbLS R11, R8, #46080
l3392: tstVS R1, R6, RRX 
l3393: clz R2, R10
interrupt_739: l3394: mov R14, #40
l3395: str R6, [sp, +R14]!
l3396: tstEQ R6, R12
interrupt_809: l3397: ldr R8, l3399
interrupt_463: l3398: b l3400
l3399: .word 1048548
l3400: swpb R12, R1, [R8]
interrupt_197: l3401: rscLE R4, R14, R9
l3402: sbcLTs R10, R14, R9, ASR R3
l3403: mvnPLs R4, #1622016
l3404: add R4, R0, R11
l3405: mvns R3, R8, RRX 
l3406: ldr R5, l3408
l3407: b l3409
l3408: .word 1048524
l3409: swpb R12, R11, [R5]
l3410: eorHI R5, R6, R2, RRX 
interrupt_614: l3411: bicGT R8, R3, R0, RRX 
interrupt_267: l3412: str R10, [sp, #-4]!
l3413: rscGT R9, R7, R5
l3414: mov R11, #4
interrupt_570: l3415: strB R4, [sp, +R11]
l3416: subs R6, R6, R12, LSL R9
l3417: mov R11, #14
interrupt_130: l3418: ldrGTsh R10, [sp, -R11]
l3419: ldr R1, [sp], #-16
interrupt_20: l3420: subCS R4, R14, R10
l3421: subCC R9, R1, #24
l3422: orr R10, R1, R9, LSL R2
l3423: ldmMIDB R13, {R2, R7, R9, R14}
l3424: mov R0, #17
interrupt_173: l3425: strB R9, [sp, -R0]
l3426: b l3428
l3427: addLS R9, R0, R5
interrupt_141: l3428: eor R5, R10, R12, RRX 
l3429: cmn R2, R12, LSR #18
l3430: mov R7, #18
l3431: ldrVSsh R14, [sp, -R7]
l3432: adcVCs R9, R4, R11, LSL #18
l3433: mov R10, #8
interrupt_55: l3434: ldr R14, [sp, +R10]
l3435: ldrCC R5, [sp, #-24]
l3436: rsc R2, R5, R0, RRX 
l3437: nop
l3438: rsb R8, R1, R12
interrupt_673: l3439: eors R9, R8, R6
l3440: subEQs R7, R12, R3
interrupt_186: l3441: movMIs R9, #2281701376
l3442: teq R8, #34603008
l3443: mvnEQ R12, R4, ASR #11
l3444: mov R1, #16
l3445: ldrVSh R14, [sp, -R1]
interrupt_983: l3446: adcLTs R4, R15, #1073741885
l3447: rscMI R3, R5, R15, LSL #1
l3448: mvns R4, #51200
l3449: sub R7, R6, R9, ROR #27
l3450: adcCCs R14, R9, R12, ROR R2
l3451: sub R9, R14, R1, LSR #14
interrupt_947: l3452: adcCCs R9, R9, R4, RRX 
l3453: ldr R2, l3455
l3454: b l3456
l3455: .word 1048544
l3456: swpHI R9, R10, [R2]
l3457: clz R6, R7
l3458: ldmDA R13!, {R1, R9}
l3459: str R0, [sp], #+16
l3460: stmDB R13!, {R1, R6, R10, R12}
l3461: rsc R4, R2, R7, LSL R3
l3462: addVCs R3, R8, #211812352
l3463: rsbLSs R8, R15, R15
l3464: ldrh R2, [sp, #+44]
l3465: cmpLT R11, #9961472
l3466: clz R0, R5
l3467: subVS R4, R14, #2147483669
l3468: orrGE R11, R12, R3, ROR R9
l3469: nop
interrupt_993: l3470: cmnHI R5, R0
interrupt_485: l3471: mov R7, #48
l3472: strh R1, [sp, +R7]
l3473: stmDB R13!, {R13}
interrupt_74: l3474: ldr R8, l3476
interrupt_32: l3475: b l3477
l3476: .word 1048504
l3477: swpLTb R1, R14, [R8]
l3478: ldr R4, l3480
l3479: b l3481
l3480: .word 1048516
l3481: swpEQb R2, R8, [R4]
l3482: teqVC R9, R2
l3483: ldr R5, l3485
l3484: b l3486
interrupt_732: l3485: .word 1048496
l3486: swpNE R9, R7, [R5]
l3487: b l3496
l3488: add R1, R0, #182
l3489: sub R0, R11, R6
l3490: addGT R5, R2, R11
l3491: eorPL R0, R11, R11, RRX 
l3492: sbcs R4, R6, R10, LSR #0
l3493: bics R12, R11, R6, RRX 
l3494: movVCs R0, R14, ASR R11
l3495: b l3497
l3496: b l3489
l3497: add R9, R10, #838860800
interrupt_316: l3498: bic R9, R8, R0, LSL #16
l3499: teq R12, R14, LSL #3
interrupt_330: l3500: ldmDB R13, {R12}
l3501: rscPL R14, R14, R1, RRX 
l3502: mov R3, #2
l3503: ldrEQsh R12, [sp, +R3]
interrupt_803: l3504: rscs R2, R11, R1, ROR R8
l3505: clzNE R10, R7
l3506: rscs R4, R2, #90112
l3507: bLT l3511
l3508: add R1, R0, #98
interrupt_902: l3509: sbcLS R8, R5, R15, RRX 
l3510: b l3512
l3511: b l3509
l3512: bics R5, R9, R10, RRX 
l3513: ldmVCDA R13, {R5, R10}
l3514: mov R6, #0
l3515: ldrh R3, [sp, +R6]
l3516: mvnVCs R0, #1264
interrupt_812: l3517: cmn R14, R4, LSL #12
l3518: adds R14, R2, R1, LSR #20
l3519: mov R1, #4
interrupt_543: l3520: strLSh R4, [sp, +R1]
interrupt_400: l3521: mov R11, #46
interrupt_719: l3522: ldrPLsb R4, [sp, +R11]
l3523: strLSh R1, [sp, #+50]
l3524: andGEs R2, R1, R10, ASR R5
l3525: ldrsb R11, [sp, #+48]
l3526: bic R7, R6, #48234496
interrupt_120: l3527: rsc R14, R0, R14, ROR R2
l3528: cmn R0, R7
l3529: mvn R6, R10, LSR #10
l3530: mov R1, R12, ROR R7
l3531: clz R4, R12
l3532: mov R0, #16
l3533: str R12, [sp], -R0
l3534: and R8, R3, R6, ROR R0
l3535: ldrGTsh R2, [sp, #+10]
l3536: strNE R14, [sp, #+60]
l3537: bGE l3541
interrupt_481: l3538: add R1, R0, #236
l3539: eors R6, R1, R3
interrupt_44: l3540: b l3542
l3541: b l3539
l3542: cmp R3, R10, RRX 
l3543: mov R4, #36
interrupt_811: l3544: ldrB R7, [sp, +R4]
l3545: cmp R8, #8650752
l3546: andCCs R12, R7, #11392
l3547: ldr R6, l3549
l3548: b l3550
interrupt_917: l3549: .word 1048524
l3550: swpb R11, R10, [R6]
l3551: rsbVS R10, R15, R2
interrupt_882: l3552: mov R10, #46
l3553: strHIB R6, [sp, +R10]
l3554: mov R8, #4
interrupt_338: l3555: str R2, [sp, -R8]
l3556: rscs R9, R10, #428
l3557: rsbHI R9, R5, R6
interrupt_591: l3558: andCC R7, R8, #222208
l3559: mov R0, R8
interrupt_352: l3560: strVSh R9, [sp, #+56]
interrupt_411: l3561: addEQ R7, R1, R12, ROR R4
l3562: ldr R2, l3564
l3563: b l3565
interrupt_477: l3564: .word 1048544
l3565: swp R14, R7, [R2]
l3566: ldrGEB R14, [sp, #+2]
l3567: str R1, [sp], #+8
l3568: mov R1, #48
l3569: str R4, [sp, +R1]!
l3570: cmpVC R4, R9
l3571: rscs R4, R4, R0, LSR R7
l3572: teq R3, R9, ASR #18
interrupt_335: l3573: orrEQs R4, R10, R12, LSR R2
l3574: andEQ R9, R8, R3
l3575: rsbNE R14, R7, R15
l3576: ldr R3, l3578
l3577: b l3579
l3578: .word 1048512
l3579: swpHIb R2, R5, [R3]
l3580: ldrsb R3, [sp, #-42]
l3581: bLT l3588
l3582: clz R1, R0
l3583: cmpEQ R0, R2
l3584: clz R10, R7
l3585: cmn R8, R6, LSR #20
l3586: clzLS R0, R9
l3587: mvnGT R7, R11, LSL R6
l3588: bics R1, R3, R7, LSL #16
interrupt_705: l3589: mov R0, #32
l3590: ldr R7, [sp, -R0]!
l3591: sbcs R8, R9, R9
l3592: andVS R1, R4, R9
l3593: subCCs R1, R8, R9
l3594: mov R9, #44
l3595: ldrGTh R11, [sp, +R9]
l3596: teq R6, R9, ROR #12
l3597: mov R4, #20
l3598: ldrLT R1, [sp, -R4]
l3599: cmn R12, R4, RRX 
l3600: eor R9, R2, R7, RRX 
l3601: eors R0, R10, #294912
l3602: mov R3, #20
l3603: ldrHIB R1, [sp, +R3]
l3604: eorGEs R11, R1, #1879048192
l3605: mov R8, #24
l3606: strHIh R4, [sp, +R8]
l3607: ldrLSB R3, [sp, #-8]
l3608: mov R2, #40
interrupt_892: l3609: str R14, [sp, +R2]
l3610: ldr R10, l3612
l3611: b l3613
l3612: .word 1048524
l3613: swpGT R11, R9, [R10]
l3614: ands R9, R7, R9
interrupt_23: l3615: strVCh R1, [sp, #+28]
l3616: subGTs R4, R8, #896
l3617: mvnEQs R6, #54788096
l3618: rsc R8, R15, R12, LSR #15
l3619: clzNE R3, R2
l3620: tstMI R14, R7, ASR R11
l3621: mov R9, #12
l3622: ldrMI R3, [sp, -R9]
interrupt_266: l3623: movHI R3, #3008
l3624: clzLE R3, R4
l3625: ldmCCDB R13, {R3, R10}
l3626: rscs R7, R14, #141312
interrupt_88: l3627: addLTs R8, R2, R9, ROR #19
interrupt_304: l3628: mov R11, #10
l3629: ldrsh R0, [sp, +R11]
l3630: adcs R10, R1, R3, ROR R4
l3631: movs R10, R1, LSL R12
l3632: ldmDA R13!, {R2, R6, R10, R12}
l3633: clz R7, R9
l3634: ldr R5, l3636
interrupt_517: l3635: b l3637
l3636: .word 1048496
l3637: swpCS R7, R6, [R5]
l3638: bNE l3643
l3639: teqLE R3, #956301312
l3640: ands R9, R3, R2, ASR R8
interrupt_717: l3641: rscs R0, R3, R3, ROR #23
l3642: rscLE R3, R14, R4, LSR #4
l3643: and R5, R14, R15, LSL #14
l3644: rsbs R10, R14, R11, RRX 
l3645: sbcLE R5, R14, R14, LSR R0
l3646: subs R11, R9, R6, ASR R14
l3647: addNE R7, R7, R14
l3648: clzPL R0, R14
l3649: ldmIA R13, {R0, R1, R2, R4, R5, R9, R11}
interrupt_237: l3650: mov R6, #19
interrupt_959: l3651: strVSB R4, [sp, +R6]
l3652: rsbVSs R12, R6, R2
interrupt_35: l3653: ldrGEsh R6, [sp, #+50]
l3654: rsbGEs R3, R10, #1073741837
l3655: mov R10, #0
l3656: ldr R14, [sp, +R10]!
l3657: sbcs R7, R4, R11, ASR #8
interrupt_999: l3658: mov R5, #52
l3659: ldr R5, [sp], +R5
interrupt_704: l3660: ldr R12, l3662
l3661: b l3663
l3662: .word 1048528
l3663: swpCSb R2, R5, [R12]
l3664: tst R11, R0
l3665: teq R14, R4, RRX 
interrupt_150: l3666: rsbCC R1, R9, R10, ROR R2
l3667: orr R7, R7, R12, ROR R2
l3668: rscVSs R10, R11, R1
l3669: mvns R5, R5, LSL #19
l3670: eorNEs R6, R1, R1, LSR #3
l3671: strh R14, [sp, #-52]
l3672: mov R11, R0, ASR #22
l3673: movs R11, R3, ROR #4
l3674: ldr R11, l3676
l3675: b l3677
l3676: .word 1048516
l3677: swpb R5, R5, [R11]
l3678: rsbs R14, R7, R0, LSR R4
l3679: mov R4, #40
l3680: str R15, [sp, -R4]!
l3681: add R2, R11, R1, ROR R14
l3682: stmDB R13!, {R8, R10, R12, R14}
l3683: nop
interrupt_662: l3684: subPL R14, R9, R8, LSR R3
interrupt_514: l3685: bMI l3690
interrupt_179: l3686: add R1, R0, #46
l3687: cmn R3, #3221225476
l3688: rsbHI R11, R8, #100663296
l3689: b l3691
l3690: b l3687
l3691: str R12, [sp], #+24
l3692: mov R3, #12
l3693: ldrHIsh R10, [sp, -R3]
l3694: ldrsb R3, [sp, #-9]
l3695: orrGE R7, R9, R8, LSL #1
interrupt_980: l3696: orrNE R9, R4, R12, ASR R12
l3697: strGTB R12, [sp, #+25]
l3698: teqHI R6, #3008
l3699: teq R7, R14, RRX 
l3700: sbcs R10, R1, #480
l3701: teqVC R14, #2147483676
l3702: ldr R4, l3704
l3703: b l3705
l3704: .word 1048504
l3705: swp R1, R8, [R4]
l3706: movLEs R0, R1, ROR R14
l3707: stmIA R13!, {R5, R6, R9}
l3708: orrs R1, R11, R9, LSL #26
l3709: mov R12, #26
interrupt_963: l3710: strHIh R12, [sp, -R12]
interrupt_770: l3711: movLT R12, #15
l3712: ldrsb R4, [sp, #+14]
l3713: rscGT R3, R15, R15, ROR #22
interrupt_924: l3714: cmpCC R0, R12, LSR R11
l3715: rscHIs R5, R4, R4
l3716: ldr R12, l3718
interrupt_791: l3717: b l3719
l3718: .word 1048480
l3719: swpMIb R14, R5, [R12]
l3720: subs R6, R2, R10, LSL #6
l3721: teq R5, R3, ASR R11
l3722: clz R10, R3
l3723: mov R3, #22
l3724: ldrsh R6, [sp, +R3]
l3725: adcNE R11, R6, #166912
interrupt_216: l3726: subVCs R5, R4, R7, ROR #10
l3727: adcMI R12, R1, #1073741843
l3728: stmIA R13!, {R9}
l3729: ldrMIh R2, [sp, #-46]
l3730: mvn R6, #536870922
l3731: mov R12, #44
l3732: ldr R3, [sp, -R12]!
l3733: sbcHIs R14, R4, #233832448
interrupt_435: l3734: strh R14, [sp, #+0]
l3735: tstCS R11, R7, LSR R12
l3736: ldr R14, l3738
l3737: b l3739
l3738: .word 1048488
l3739: swpNE R7, R3, [R14]
interrupt_849: l3740: b l3748
l3741: add R1, R0, #167
l3742: cmp R9, R2
interrupt_967: l3743: bics R10, R1, #432013312
l3744: teq R15, #127
l3745: rsbPLs R8, R11, #179200
l3746: cmpLS R7, R10, LSL #17
l3747: b l3749
interrupt_929: l3748: b l3742
l3749: mvnLS R10, #10289152
interrupt_488: l3750: tst R7, R4, ROR R7
l3751: rsbHI R1, R8, R5, ROR R3
l3752: rscs R10, R10, R4, LSL #5
interrupt_47: l3753: bicMIs R7, R12, R9, RRX 
l3754: teq R11, R5
l3755: sbcCC R0, R7, #8388608
l3756: ldmIB R13!, {R9}
interrupt_859: l3757: b l3761
interrupt_99: l3758: add R1, R0, #226
l3759: cmn R7, R14, ROR R9
l3760: b l3762
l3761: b l3759
l3762: mov R8, #34
l3763: ldrh R9, [sp, +R8]
l3764: rsbEQs R14, R5, R4
l3765: addEQ R9, R14, R7, RRX 
l3766: ldr R7, l3768
interrupt_958: l3767: b l3769
l3768: .word 1048536
l3769: swpb R1, R11, [R7]
l3770: ldr R1, l3772
l3771: b l3773
l3772: .word 1048508
l3773: swp R14, R14, [R1]
l3774: addCCs R14, R4, R14, RRX 
l3775: tstGE R2, #128
l3776: teqMI R3, R15
l3777: orrs R4, R5, R4
l3778: b l3788
interrupt_376: l3779: cmn R14, #819200
interrupt_934: l3780: clzMI R7, R12
interrupt_96: l3781: rscLT R6, R10, R5
l3782: subHIs R3, R2, R8
l3783: tst R9, R15, ASR #26
l3784: add R1, R5, #50331648
l3785: addHI R3, R2, R7, ROR R12
l3786: clz R12, R6
l3787: cmp R5, R10
l3788: eorLEs R7, R6, R15, RRX 
l3789: bic R7, R8, R9, ASR #12
l3790: ldr R2, l3792
l3791: b l3793
l3792: .word 1048516
l3793: swpLT R5, R7, [R2]
l3794: adds R4, R6, R4
l3795: b l3803
l3796: add R1, R0, #10
l3797: eor R8, R3, R12, LSR #12
l3798: rsbs R3, R0, #93184
l3799: rsbHI R4, R2, #4060086272
l3800: cmpGT R8, R5, ASR R0
l3801: adcGTs R12, R8, R11, ASR R2
interrupt_127: l3802: b l3804
l3803: b l3797
l3804: mov R2, #25
l3805: ldrPLsb R12, [sp, +R2]
l3806: adcHI R1, R6, R1, ASR #15
l3807: adcEQs R1, R1, R12, RRX 
interrupt_385: l3808: mvnEQs R3, R12
l3809: clzEQ R9, R5
l3810: ldrMIh R14, [sp, #+40]
l3811: ldr R10, l3813
l3812: b l3814
l3813: .word 1048532
l3814: swpGTb R2, R4, [R10]
l3815: cmn R1, #3087007747
interrupt_205: l3816: ldrsb R8, [sp, #+34]
l3817: adcs R14, R3, #84
interrupt_424: l3818: ldr R3, l3820
l3819: b l3821
l3820: .word 1048552
l3821: swpLSb R1, R11, [R3]
l3822: rscLS R3, R9, R8, LSR #18
l3823: adcEQs R14, R7, #2852126720
interrupt_584: l3824: orrs R7, R14, R7
interrupt_713: l3825: mov R12, #16
interrupt_655: l3826: str R2, [sp], +R12
interrupt_115: l3827: stmGTDB R13, {R2, R6}
l3828: rscs R11, R3, R9
l3829: andCC R7, R11, #249
l3830: ldmIB R13!, {R0, R1, R2, R3, R7, R8, R9, R10, R11, R12}
l3831: clz R5, R8
interrupt_263: l3832: eorVSs R4, R9, R0, ROR #2
l3833: mvns R8, R2, ROR R7
l3834: adds R11, R0, R12, LSL #6
l3835: orrLEs R3, R8, #35
l3836: subs R7, R7, R3, LSL R14
l3837: mvns R0, R3, LSL R5
l3838: teqPL R1, R9, LSR R0
interrupt_646: l3839: sub R2, R12, R0, ASR R0
l3840: cmnLT R3, R12
l3841: subs R12, R3, #77824
l3842: adc R9, R3, #2952790029
l3843: mov R14, #2
interrupt_578: l3844: ldrh R10, [sp, +R14]
l3845: mov R8, #40
interrupt_244: l3846: ldr R8, [sp, -R8]
l3847: bic R10, R15, #327680
interrupt_737: l3848: cmn R2, R14
l3849: cmp R8, R5
interrupt_937: l3850: bicLS R11, R0, #1073741835
l3851: cmpVC R2, R8, LSR #30
l3852: teqCS R14, R11, ASR R6
l3853: andGT R7, R8, R4
interrupt_773: l3854: clz R10, R3
l3855: addMI R12, R1, #552960
l3856: clzEQ R4, R7
l3857: mov R12, #10
l3858: ldrPLsh R8, [sp, -R12]
interrupt_639: l3859: mov R2, #8
l3860: str R8, [sp, -R2]!
l3861: b l3869
l3862: add R1, R0, #211
l3863: eors R12, R11, R5, RRX 
l3864: teqLE R0, R12, ROR #14
interrupt_372: l3865: clzLT R6, R4
l3866: adcMIs R1, R12, #496
l3867: andHI R2, R4, R4, ASR #2
l3868: b l3870
l3869: b l3863
l3870: eorHI R3, R1, R8, LSL R11
l3871: clzGE R12, R14
l3872: ldmIB R13, {R0, R1, R6}
l3873: subVS R9, R1, R14, RRX 
interrupt_439: l3874: ldr R1, l3876
l3875: b l3877
l3876: .word 1048488
l3877: swpCSb R2, R10, [R1]
l3878: rscPL R1, R6, R11, ASR R6
l3879: ands R6, R0, R8, ASR #24
l3880: rscs R2, R11, R14, LSR R12
l3881: ldr R3, l3883
interrupt_446: l3882: b l3884
l3883: .word 1048480
l3884: swpVCb R11, R8, [R3]
l3885: rscPL R14, R0, R10, ASR R0
l3886: ldrHIsb R6, [sp, #-2]
l3887: mov R6, #12
l3888: ldrLTh R10, [sp, -R6]
interrupt_419: l3889: rscLT R1, R4, R3, LSL R2
interrupt_536: l3890: strLTB R8, [sp, #+16]
l3891: bEQ l3899
l3892: add R1, R0, #215
interrupt_366: l3893: clzCC R9, R11
l3894: bicLEs R14, R1, R15, LSL #19
l3895: tstEQ R1, R14
interrupt_666: l3896: sbc R0, R14, R9, RRX 
l3897: subCSs R11, R14, R15
l3898: b l3900
l3899: b l3893
l3900: sbc R2, R1, R8, LSL #18
l3901: ldmDA R13!, {R0, R6, R8, R10, R14}
l3902: movCCs R0, #11328
l3903: sbcLE R8, R15, #129
l3904: bEQ l3914
l3905: rsc R1, R5, R10
interrupt_844: l3906: cmnLT R14, R11, LSR R9
l3907: eorLS R12, R12, #4194304
l3908: and R0, R4, R3, ROR R1
l3909: rsb R12, R5, R11, ASR #13
l3910: mvn R0, R4
l3911: teq R10, R0
l3912: teqCC R10, R7
interrupt_321: l3913: subs R8, R0, R9, RRX 
l3914: rscHI R5, R1, R0, LSL R4
l3915: clzHI R10, R5
l3916: bCS l3925
l3917: add R1, R0, #254
interrupt_450: l3918: movLE R3, R2, RRX 
l3919: teqEQ R12, #23
l3920: adcGE R14, R8, R10, RRX 
l3921: movNE R1, R14
l3922: clzVC R1, R2
l3923: sbcVC R1, R7, R9, LSL R12
l3924: b l3926
interrupt_284: l3925: b l3918
interrupt_161: l3926: str R15, [sp, #-28]
interrupt_784: l3927: teqVS R14, R9
l3928: cmpCS R6, R8
l3929: mov R4, #36
interrupt_220: l3930: str R11, [sp], +R4
l3931: ldrsb R4, [sp, #-7]
l3932: subs R9, R10, #5
l3933: mov R0, #60
l3934: str R12, [sp], -R0
l3935: ldrEQsb R14, [sp, #+40]
interrupt_508: l3936: mvnGEs R11, #118489088
l3937: movs R11, R14
l3938: b l3943
l3939: add R1, R0, #43
l3940: rsc R10, R9, R9
l3941: cmnPL R0, R14, LSR #3
l3942: b l3944
l3943: b l3940
l3944: nop
l3945: mov R1, #26
interrupt_827: l3946: ldrLSB R10, [sp, +R1]
interrupt_886: l3947: rscVS R5, R2, R9, LSL #6
l3948: orrCSs R1, R11, R7
l3949: rsc R4, R3, #847872
l3950: subs R11, R11, R6, LSL #11
l3951: stmDB R13, {R8}
l3952: rscGE R1, R6, R0, ASR R5
l3953: stmIA R13, {R5, R8}
l3954: bCC l3961
l3955: add R1, R0, #84
l3956: clz R12, R6
l3957: cmpGT R14, #3856
l3958: orr R7, R15, R8, ROR #12
l3959: addCS R12, R5, R10, ASR R10
l3960: b l3962
l3961: b l3956
l3962: rscLE R12, R4, #32
l3963: subLT R6, R10, R7, ROR #26
l3964: eorNEs R11, R2, R9
l3965: andPLs R6, R1, #423624704
l3966: cmpCC R14, R14
l3967: rscVC R4, R0, R4, LSL R12
l3968: strLEh R12, [sp, #+6]
l3969: ldr R2, l3971
interrupt_15: l3970: b l3972
interrupt_825: l3971: .word 1048544
l3972: swpNE R14, R11, [R2]
l3973: stmGTIB R13, {R1, R2, R3, R5, R6, R8, R9, R10, R11, R12, R13, R14, R15}
l3974: bVC l3984
l3975: addEQs R2, R3, R9, LSL R6
l3976: rsbGEs R10, R11, R7, LSL R6
l3977: cmp R12, R11, LSR R5
l3978: clzLT R10, R1
l3979: cmp R1, R14
l3980: rsbs R8, R5, R2, LSR #12
l3981: movLT R8, R15, LSR #25
l3982: andGTs R14, R12, #9792
l3983: rsb R12, R2, #8128
l3984: teqLS R2, R4, ASR R4
l3985: eors R1, R10, #596
interrupt_504: l3986: bGT l3994
l3987: add R1, R0, #72
interrupt_833: l3988: adcHI R14, R9, R2
l3989: orrVSs R10, R4, R4, LSL #9
l3990: subCCs R8, R7, R1, RRX 
l3991: sbcLT R11, R11, R6
interrupt_702: l3992: bicLT R1, R3, R12, ROR #2
l3993: b l3995
l3994: b l3988
l3995: bLS l4003
l3996: sbcs R1, R4, R14, RRX 
l3997: rsbs R10, R2, R15, LSL #26
l3998: teqLE R7, R8, ROR #3
l3999: clz R0, R8
l4000: eorCC R0, R11, R12
l4001: subGT R7, R14, R3, ROR R1
l4002: eor R0, R0, R2, LSL R10
l4003: orr R6, R14, R12
l4004: movVCs R11, R8, ROR R11
l4005: sub R5, R12, R3
interrupt_912: l4006: bVS l4012
l4007: orrs R0, R10, R6, ASR R11
l4008: subCC R10, R11, R2, ROR R7
interrupt_623: l4009: teqVS R12, R6, LSL #11
l4010: tstPL R9, R11, LSL #16
l4011: clz R8, R8
l4012: sbcLSs R8, R10, #1900544
l4013: mov R1, #62
l4014: ldrh R10, [sp, +R1]
l4015: stmPLDB R13, {R8}
l4016: ldrsh R14, [sp, #+34]
l4017: str R9, [sp, #+12]
l4018: andVSs R3, R11, R2, LSR R8
l4019: strh R11, [sp, #+28]
interrupt_397: l4020: rsbNE R8, R9, R5
l4021: mov R1, R11
l4022: cmnVC R9, R4, LSL R4
l4023: mov R5, #48
l4024: strLSh R11, [sp, +R5]
l4025: teqMI R6, R11, ASR #20
interrupt_343: l4026: tstLS R2, #2624
interrupt_72: l4027: subVCs R4, R15, R14, LSR #29
l4028: rscGE R7, R0, R8, ROR R9
l4029: cmpEQ R3, R9, LSL #17
l4030: stmCSIB R13, {R2, R3, R4, R6, R7, R8, R10, R11, R13, R14, R15}
l4031: rsbGT R7, R11, R8
l4032: strB R3, [sp, #+27]
interrupt_824: l4033: tstLT R0, R9, LSL R9
l4034: mov R0, #18
l4035: ldrLSh R7, [sp, +R0]
l4036: eor R6, R8, #7296
l4037: ldmIB R13!, {R0, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l4038: bicGEs R4, R8, R11, ASR R7
l4039: mov R1, #40
l4040: str R1, [sp, -R1]!
l4041: cmp R4, #148897792
interrupt_144: l4042: mov R6, #60
l4043: str R7, [sp, +R6]!
l4044: b l4053
l4045: clzVS R4, R5
l4046: teq R10, R8, LSR #13
interrupt_249: l4047: mvnGEs R5, R8
interrupt_433: l4048: clzVS R2, R6
l4049: addHIs R10, R5, R2, LSR R9
l4050: tst R1, R6, ROR R11
l4051: rsbs R2, R6, #12582912
l4052: sub R14, R0, R6
l4053: eorMIs R10, R6, R8, ASR #11
l4054: eorVS R6, R15, R10, ASR #7
l4055: rscs R2, R12, R14
interrupt_85: l4056: mvnNE R10, R10, ROR R5
l4057: ldrGEB R6, [sp, #-68]
l4058: mov R6, #39
l4059: ldrsb R0, [sp, -R6]
interrupt_334: l4060: subMI R1, R14, R9, LSL #6
l4061: b l4066
l4062: add R1, R0, #94
l4063: mvnCC R5, R5, ASR #11
l4064: add R7, R15, R11, ASR #29
l4065: b l4067
l4066: b l4063
l4067: tstCC R10, R9, ASR R0
l4068: b l4077
l4069: add R1, R0, #26
interrupt_634: l4070: adc R4, R11, #565248
interrupt_636: l4071: clz R4, R12
l4072: teqPL R11, #3981312
l4073: rscs R10, R12, R9
l4074: rsbLE R8, R3, R5
l4075: rscLEs R7, R10, R2, ASR #0
l4076: b l4078
l4077: b l4070
l4078: sbcMIs R7, R6, #2415919117
l4079: stmDB R13!, {R3, R11}
l4080: mov R7, #54
l4081: ldrVSh R3, [sp, -R7]
l4082: ldmDB R13!, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R10, R11, R12}
l4083: stmDA R13!, {R5}
l4084: strB R7, [sp, #+39]
interrupt_561: l4085: clzLE R3, R2
l4086: subLEs R6, R11, R4
interrupt_801: l4087: strCSB R11, [sp, #-11]
interrupt_108: l4088: rsbs R4, R15, R10
l4089: orrs R6, R7, R15
l4090: subLE R12, R14, R12, LSL #22
l4091: clzPL R8, R4
l4092: bEQ l4096
interrupt_362: l4093: teqEQ R15, R15, LSL #15
l4094: sbcGE R9, R7, R4, LSR R4
l4095: mov R1, R3, LSL R6
interrupt_944: l4096: add R0, R5, #2885681154
l4097: sbc R8, R3, R0, ASR #28
l4098: subGE R4, R5, R14, ROR #26
interrupt_329: l4099: ldr R9, l4101
l4100: b l4102
l4101: .word 1048516
l4102: swpb R12, R6, [R9]
l4103: ldr R9, l4105
interrupt_626: l4104: b l4106
l4105: .word 1048532
l4106: swpVSb R7, R6, [R9]
l4107: tstPL R1, #2063597568
l4108: mov R4, #48
l4109: strB R14, [sp, +R4]
l4110: mov R8, #12
l4111: ldrh R9, [sp, -R8]
l4112: sub R14, R8, R11, ASR R0
l4113: orrs R1, R8, #536870925
l4114: addLEs R4, R9, #144
l4115: mov R14, #38
interrupt_920: l4116: ldrNEsh R4, [sp, +R14]
l4117: nop
l4118: orrCS R1, R11, #4026531853
l4119: ldrNEsh R9, [sp, #+54]
l4120: add R9, R0, R10, LSR #13
l4121: orr R6, R4, R8
l4122: cmpCC R8, R10, RRX 
l4123: mov R5, #9
l4124: strB R3, [sp, +R5]
l4125: cmnVS R8, R11
l4126: mov R10, #44
l4127: strh R0, [sp, +R10]
interrupt_698: l4128: eor R3, R14, R1
l4129: mov R2, R11, ROR R3
l4130: ldrLEsh R4, [sp, #+54]
interrupt_727: l4131: cmn R14, R8, RRX 
l4132: adcVC R6, R12, R15, ASR #31
l4133: nop
interrupt_403: l4134: sub R8, R9, #1946157058
interrupt_656: l4135: clz R6, R5
l4136: cmpGT R10, R10
l4137: teq R4, R14, ROR #7
interrupt_931: l4138: ldr R7, [sp, #+44]
l4139: ldr R5, l4141
l4140: b l4142
l4141: .word 1048524
l4142: swpMIb R12, R9, [R5]
l4143: cmnVC R6, R4
l4144: cmnCC R1, R6, LSR R1
l4145: bicLE R8, R3, R14, LSL R3
l4146: bGT l4147
l4147: eorLS R8, R2, #171008
interrupt_107: l4148: eorLE R8, R10, R5, RRX 
l4149: adcNE R2, R1, R8, RRX 
l4150: mov R9, #40
l4151: ldrHIsh R11, [sp, +R9]
l4152: rsbHI R0, R3, R3, ROR #9
l4153: rsb R8, R9, #16
l4154: ldrsb R4, [sp, #-8]
interrupt_301: l4155: mov R1, #4
l4156: ldr R5, [sp, -R1]!
l4157: subGE R14, R1, #212992
interrupt_80: l4158: mov R12, #0
l4159: ldrB R4, [sp, +R12]
l4160: ldr R8, l4162
l4161: b l4163
l4162: .word 1048536
interrupt_681: l4163: swpLT R5, R5, [R8]
l4164: mov R0, #19
l4165: strEQB R4, [sp, +R0]
l4166: movGE R3, R6, LSR R12
l4167: add R2, R3, R1, ROR R12
l4168: orrGE R3, R11, R9, LSL #28
l4169: mov R7, #64
l4170: ldr R8, [sp, +R7]
l4171: ldmIB R13!, {R1, R3, R6, R8, R10, R12}
interrupt_823: l4172: cmp R8, R14, RRX 
l4173: rscGEs R14, R14, #308
l4174: andEQs R0, R0, R12, LSL R11
l4175: b l4185
l4176: movLS R14, R15, ROR #8
interrupt_350: l4177: teqVC R10, R0
l4178: andLEs R7, R14, #3080192
l4179: sbc R4, R4, R1, ROR R10
l4180: bics R0, R8, R1
l4181: movLE R10, R4, LSR R2
l4182: bicVSs R1, R0, R12, ROR R3
l4183: orrs R2, R8, R14, ROR R2
l4184: tst R7, R6, ASR #16
l4185: cmpGE R12, #1568
interrupt_423: l4186: mov R6, #24
l4187: ldrNE R7, [sp, -R6]
l4188: mov R7, #24
l4189: str R1, [sp], +R7
l4190: and R10, R6, R10, LSL R14
l4191: subs R7, R4, R7, LSR R4
l4192: sbcNEs R5, R8, R5, LSR #8
l4193: ldr R8, l4195
l4194: b l4196
l4195: .word 1048492
interrupt_610: l4196: swpb R10, R14, [R8]
interrupt_155: l4197: rsbLSs R11, R9, R3, LSL #3
l4198: ldrh R14, [sp, #-50]
l4199: stmDB R13!, {R2, R5, R7, R9, R10, R11, R12, R14}
interrupt_513: l4200: cmn R9, #11796480
l4201: ldr R3, l4203
l4202: b l4204
l4203: .word 1048488
l4204: swp R2, R7, [R3]
l4205: and R14, R2, R15
interrupt_182: l4206: mov R1, R10, LSR #21
interrupt_202: l4207: and R10, R6, R14, LSR #12
l4208: cmpVS R10, R8, LSL #2
l4209: mov R5, #10
l4210: ldrVSsb R6, [sp, +R5]
l4211: rscCSs R9, R5, R0, ASR R4
l4212: mvnVSs R3, R15, RRX 
l4213: stmLTIA R13, {R0, R5, R6, R7, R9, R10, R11, R12, R13, R14, R15}
l4214: ands R4, R6, R5, ROR R12
l4215: movGT R12, #734003200
interrupt_118: l4216: clzCS R7, R3
l4217: teq R4, R0, LSR R7
interrupt_239: l4218: tstPL R11, R1
l4219: bMI l4224
interrupt_402: l4220: sbcCS R2, R6, R1, ASR R12
l4221: addVSs R8, R1, R14, ROR R12
l4222: adcEQ R8, R6, R8, LSL #14
l4223: rscHIs R2, R2, R11
l4224: adds R11, R10, R0, LSR R10
l4225: mov R6, #1
l4226: ldrB R12, [sp, +R6]
interrupt_495: l4227: rsb R9, R7, R1, ASR R0
l4228: orrVCs R10, R9, R1
l4229: mov R1, #37
l4230: strCCB R4, [sp, +R1]
l4231: rscs R12, R2, R14, ROR #7
l4232: add R0, R8, R10, LSL #2
l4233: ldrCCsb R10, [sp, #+4]
l4234: ldr R6, [sp, #+44]!
l4235: mov R8, #61
l4236: ldrB R3, [sp, -R8]
l4237: mov R14, #32
l4238: ldrPLB R6, [sp, -R14]
l4239: mvnCC R11, #3552
interrupt_346: l4240: subHI R0, R1, R9, RRX 
l4241: mov R7, #3
interrupt_420: l4242: ldrPLsb R10, [sp, +R7]
l4243: strGTB R5, [sp, #-39]
l4244: mov R5, #14
l4245: strVSh R7, [sp, -R5]
l4246: andLSs R10, R15, #2064
l4247: teq R15, R7, RRX 
l4248: teqLE R8, R2, ROR #17
l4249: tst R5, R15, ROR #9
l4250: adcs R0, R15, #42991616
l4251: rsbs R10, R0, #16515072
l4252: mov R5, #14
l4253: ldrh R12, [sp, -R5]
l4254: addCSs R12, R2, #1610612750
l4255: tstLE R4, #6815744
l4256: strLSB R2, [sp, #-37]
l4257: eorLS R5, R6, #2400
interrupt_512: l4258: tstVC R7, R0, RRX 
l4259: ldmIA R13!, {R1}
l4260: eors R14, R3, R15
l4261: ldr R12, l4263
interrupt_260: l4262: b l4264
l4263: .word 1048500
l4264: swpb R1, R9, [R12]
l4265: bGT l4269
l4266: clz R9, R7
l4267: bicNE R5, R3, R8, ROR #25
l4268: adcPL R2, R14, #2147483703
l4269: teqCS R1, R5
interrupt_91: l4270: bHI l4273
l4271: subGEs R3, R7, R14
l4272: cmnCS R3, R15, ROR #28
l4273: mvn R0, R12, RRX 
interrupt_519: l4274: subs R2, R6, #889192448
l4275: bic R14, R15, #79
interrupt_468: l4276: mvnGE R11, R2, LSR #13
interrupt_696: l4277: cmpVC R10, #114294784
interrupt_448: l4278: add R0, R0, R12, LSL #24
l4279: mov R3, #36
l4280: ldr R11, [sp, -R3]
l4281: ldr R7, l4283
l4282: b l4284
interrupt_381: l4283: .word 1048508
l4284: swpMIb R1, R12, [R7]
l4285: mov R0, #2
l4286: ldrGTB R9, [sp, -R0]
l4287: adcPLs R7, R5, R10, ROR R9
l4288: ldrHIsb R3, [sp, #-31]
interrupt_279: l4289: cmpLE R12, #51
l4290: bicCS R0, R5, R9, LSR #5
l4291: rscVCs R4, R12, R15, LSL #30
l4292: mov R0, #24
l4293: strVCh R6, [sp, -R0]
l4294: mvns R12, #2147483708
l4295: bic R9, R8, R10, ASR #18
l4296: mvns R4, R11, ROR #9
l4297: sub R3, R0, R12
l4298: nop
l4299: and R6, R0, R3
l4300: mov R4, #13
l4301: ldrB R8, [sp, -R4]
l4302: clzVS R7, R3
l4303: b l4307
l4304: add R1, R0, #124
interrupt_493: l4305: adcNEs R9, R11, R1
l4306: b l4308
l4307: b l4305
interrupt_199: l4308: mvnCCs R12, R11, ROR R0
l4309: mov R6, #1
l4310: strPLB R2, [sp, +R6]
l4311: add R3, R6, #2248146944
l4312: eors R1, R11, R10
l4313: tstEQ R5, R3, RRX 
l4314: tstLS R12, R9, ASR #0
l4315: mov R14, #14
interrupt_785: l4316: ldrsh R6, [sp, -R14]
interrupt_211: l4317: bCS l4322
l4318: add R1, R0, #228
l4319: adcGTs R4, R7, R2
l4320: mvnHI R12, R14, LSR R8
interrupt_349: l4321: b l4323
l4322: b l4319
interrupt_885: l4323: stmVCDA R13, {R1, R4, R5, R7, R8, R9, R13, R14}
l4324: subHI R5, R11, R8, ROR #6
l4325: ldrEQh R11, [sp, #-42]
l4326: mov R0, #72
interrupt_541: l4327: strCSh R0, [sp, -R0]
l4328: movs R1, #7168
interrupt_837: l4329: eorNE R11, R6, R7, LSL #7
l4330: bicHI R14, R0, R1, ROR R12
l4331: strLEB R0, [sp, #-64]
interrupt_69: l4332: rsbs R12, R8, R2, LSL #9
l4333: rsb R12, R4, R0
l4334: str R15, [sp, #-40]
l4335: andMIs R9, R1, R4
l4336: tstLE R2, #52
interrupt_170: l4337: b l4343
l4338: add R1, R0, #168
l4339: orr R4, R15, R0
interrupt_709: l4340: movs R10, #2415919104
l4341: adds R2, R4, R6, LSL R4
l4342: b l4344
l4343: b l4339
l4344: ldr R7, [sp, #-8]!
l4345: stmIB R13!, {R4}
l4346: ldrLEB R0, [sp, #-34]
l4347: cmpLS R9, #212860928
l4348: teq R10, R5
l4349: rscLSs R0, R1, #994050048
l4350: tst R2, R10
l4351: ldrLEh R2, [sp, #-54]
l4352: adds R3, R5, R6
l4353: mov R2, #56
l4354: ldr R7, [sp, -R2]!
interrupt_287: l4355: clzLE R10, R10
l4356: eorCSs R5, R10, #12189696
l4357: mov R11, #42
l4358: ldrh R1, [sp, +R11]
l4359: bic R12, R4, #16
l4360: bCC l4364
l4361: add R1, R0, #28
interrupt_730: l4362: clzHI R5, R10
l4363: b l4365
l4364: b l4362
l4365: clzLE R3, R0
l4366: mov R8, #63
l4367: ldrMIsb R8, [sp, +R8]
interrupt_846: l4368: eors R2, R10, R11
l4369: orrGEs R9, R9, R14
interrupt_810: l4370: clz R1, R14
l4371: rsbs R7, R5, R3
l4372: cmpGE R9, R6
interrupt_972: l4373: b l4378
l4374: add R1, R0, #184
l4375: mvn R5, R1, ROR #7
l4376: orr R12, R7, R5
l4377: b l4379
l4378: b l4375
interrupt_37: l4379: bCC l4388
l4380: add R1, R0, #197
l4381: orrs R0, R3, R10
l4382: tst R11, R7, LSL #14
interrupt_761: l4383: cmpCS R9, R2, LSR R3
interrupt_34: l4384: cmpLT R15, R2, RRX 
l4385: tstVS R4, R5, ASR #3
l4386: and R4, R3, R8
l4387: b l4389
l4388: b l4381
interrupt_365: l4389: subGTs R1, R8, R2, LSR #24
l4390: mvnPLs R6, R7, ASR R9
l4391: stmIA R13!, {R13, R14, R15}
l4392: ldmDA R13, {R2, R12}
l4393: ldrLEB R12, [sp, #+45]
interrupt_8: l4394: nop
l4395: andCSs R2, R9, R5, LSL R9
l4396: eorGTs R8, R1, R15, LSL #19
l4397: stmLSIA R13, {R0, R2, R4, R10, R13}
l4398: teq R11, #213909504
interrupt_909: l4399: sbcCCs R6, R2, #252706816
l4400: ldr R7, l4402
l4401: b l4403
l4402: .word 1048504
l4403: swpb R4, R10, [R7]
l4404: ldr R3, l4406
l4405: b l4407
l4406: .word 1048524
l4407: swp R1, R9, [R3]
interrupt_251: l4408: clzVC R14, R9
l4409: rsc R12, R14, #28311552
l4410: ldr R12, l4412
l4411: b l4413
l4412: .word 1048552
interrupt_775: l4413: swp R5, R2, [R12]
interrupt_975: l4414: cmpHI R8, R7, RRX 
interrupt_974: l4415: eorNE R6, R10, R8
l4416: eorGE R7, R5, R2, RRX 
l4417: rscLE R4, R3, R12, ASR R0
interrupt_818: l4418: cmnGT R3, #336
l4419: rscHI R10, R14, R4, RRX 
l4420: clz R4, R11
l4421: ldmDB R13!, {R3, R4, R7, R9}
l4422: clzNE R8, R6
l4423: teqGE R0, R5, LSR R0
l4424: mov R9, R6, ROR R14
l4425: eor R6, R3, R7, LSL R6
interrupt_358: l4426: bLE l4428
l4427: mvnGT R5, R0, ASR #11
l4428: rsb R7, R15, R5
interrupt_396: l4429: ldr R1, l4431
interrupt_283: l4430: b l4432
interrupt_853: l4431: .word 1048500
l4432: swpMIb R2, R12, [R1]
l4433: ldr R2, l4435
interrupt_989: l4434: b l4436
l4435: .word 1048504
l4436: swpb R5, R3, [R2]
interrupt_721: l4437: subNE R7, R14, #512
l4438: rscNEs R7, R12, #536870914
l4439: clz R10, R7
l4440: orrCS R5, R7, #2336
l4441: bicGTs R10, R14, #1984
l4442: mvn R2, #139
l4443: cmpPL R5, R4, LSR R2
l4444: sub R3, R8, R12
l4445: mov R4, #56
l4446: str R7, [sp, +R4]!
interrupt_843: l4447: adcHI R5, R14, R9, RRX 
l4448: ldr R0, l4450
l4449: b l4451
l4450: .word 1048500
l4451: swp R2, R11, [R0]
l4452: ldrh R2, [sp, #-16]
l4453: adcGTs R0, R5, #268435456
l4454: strLTh R11, [sp, #-52]
interrupt_462: l4455: ldrh R12, [sp, #-42]
l4456: mov R8, #24
l4457: ldrsh R5, [sp, -R8]
l4458: cmn R4, R4, LSL R5
interrupt_643: l4459: cmp R0, #457179136
l4460: and R9, R0, R4
l4461: subCS R4, R10, #3571712
l4462: bPL l4467
l4463: add R1, R0, #240
l4464: cmn R6, R0, RRX 
interrupt_36: l4465: cmnCC R5, R8
l4466: b l4468
l4467: b l4464
l4468: ldr R2, l4470
l4469: b l4471
l4470: .word 1048548
l4471: swpGE R8, R5, [R2]
l4472: cmn R1, R3
l4473: bics R9, R1, R0, LSL R10
l4474: mov R3, #40
interrupt_774: l4475: ldrh R7, [sp, -R3]
interrupt_201: l4476: ldrVSsb R3, [sp, #-25]
interrupt_936: l4477: mvns R9, R3, ASR R6
l4478: rsbEQs R7, R15, R15, ASR #24
l4479: bHI l4487
l4480: movVS R14, R9, ROR #18
l4481: orr R2, R15, R14, LSL #10
l4482: cmp R5, #12779520
l4483: rscLEs R7, R11, R9, ROR #13
l4484: rsbVSs R0, R3, R7, LSL R0
interrupt_956: l4485: adcLS R4, R0, R2, LSL R8
interrupt_383: l4486: teq R11, R9, ROR #30
l4487: cmpLE R1, R11, LSR R4
l4488: bicVSs R6, R9, R10, ROR R10
l4489: mov R14, #54
l4490: strCCB R7, [sp, -R14]
interrupt_898: l4491: mov R12, #44
interrupt_285: l4492: str R9, [sp, -R12]
interrupt_1: l4493: mov R14, #47
l4494: ldrPLsb R0, [sp, -R14]
interrupt_204: l4495: mov R1, #6
l4496: ldrGEsb R14, [sp, +R1]
l4497: rsbMIs R14, R2, R12, LSR R1
interrupt_299: l4498: teq R12, R11, ROR R6
l4499: subs R6, R3, R10, ASR #15
l4500: adc R9, R12, R9
interrupt_133: l4501: b l4508
l4502: add R1, R0, #235
interrupt_461: l4503: subVCs R4, R2, #1845493760
l4504: and R2, R14, R9
l4505: teq R4, R10
l4506: cmnLE R9, #116
l4507: b l4509
interrupt_389: l4508: b l4503
l4509: sbc R2, R11, R15
l4510: mov R11, #44
interrupt_804: l4511: strPLB R3, [sp, -R11]
l4512: ldrHIsb R0, [sp, #-7]
l4513: ldr R12, [sp, #-48]!
l4514: strVCB R11, [sp, #+47]
l4515: mvns R2, R6, LSR R3
l4516: cmnEQ R12, #4096
l4517: rsbLSs R0, R10, R2
l4518: ldrB R8, [sp, #+33]
l4519: eorLEs R5, R10, R4, LSR R3
l4520: ldr R3, l4522
l4521: b l4523
l4522: .word 1048488
interrupt_291: l4523: swpb R6, R9, [R3]
l4524: mov R10, #24
interrupt_916: l4525: ldrsb R10, [sp, +R10]
l4526: ldr R8, l4528
l4527: b l4529
l4528: .word 1048512
l4529: swp R0, R5, [R8]
l4530: adcMIs R9, R10, R3
l4531: bLS l4536
l4532: add R1, R0, #92
l4533: cmnHI R7, #15680
interrupt_928: l4534: adds R10, R15, #760
l4535: b l4537
interrupt_813: l4536: b l4533
l4537: mov R9, #20
l4538: str R8, [sp, +R9]
l4539: tst R12, R1
l4540: subs R11, R9, R8, ASR #1
l4541: rsbMI R2, R11, R11
l4542: mov R4, #58
l4543: ldrh R11, [sp, +R4]
l4544: rsbs R0, R14, R11, ROR #26
l4545: ldrMI R2, [sp, #-16]
l4546: ldrB R10, [sp, #+49]
l4547: tstLE R8, R4
l4548: ldmPLIB R13, {R9, R11}
l4549: subMI R5, R6, #100
l4550: mvn R1, #16192
l4551: ldrsh R11, [sp, #+48]
l4552: and R0, R14, R11, LSL #19
l4553: and R12, R7, R9
interrupt_212: l4554: rsbCCs R9, R14, R4, LSL R7
l4555: mov R7, #30
l4556: ldrLEsh R5, [sp, +R7]
interrupt_710: l4557: eors R2, R12, R5, RRX 
interrupt_977: l4558: subs R9, R4, R1, ROR R0
l4559: b l4567
l4560: add R1, R0, #105
interrupt_318: l4561: sbcLE R6, R7, R12
interrupt_995: l4562: rscEQ R7, R0, #39936
interrupt_896: l4563: andGEs R10, R3, R4, LSR R12
l4564: rscMIs R14, R11, R14, RRX 
interrupt_573: l4565: subGTs R8, R6, R14, LSR R2
l4566: b l4568
l4567: b l4561
l4568: bicVCs R3, R1, R2, LSL #24
l4569: mov R6, #22
l4570: ldrLSsh R4, [sp, +R6]
l4571: bMI l4576
l4572: cmpCS R7, R8, LSL #15
interrupt_459: l4573: eor R10, R10, R14, ASR #27
interrupt_831: l4574: bicGE R0, R11, R11
l4575: sub R8, R9, R6
l4576: cmp R2, R12
l4577: add R8, R1, R0
interrupt_387: l4578: orrHI R7, R10, #1006632963
l4579: orrNEs R6, R1, R7, LSR R14
l4580: adcs R2, R2, R4, RRX 
l4581: andLT R3, R11, #16187392
l4582: adcs R0, R9, R8, ASR R10
interrupt_2: l4583: ldr R14, l4585
interrupt_256: l4584: b l4586
l4585: .word 1048508
l4586: swp R8, R8, [R14]
l4587: subNE R5, R10, #2352
l4588: ldr R11, l4590
l4589: b l4591
l4590: .word 1048552
l4591: swpGT R9, R5, [R11]
l4592: mvnCS R7, #587202560
l4593: mov R0, #52
interrupt_526: l4594: strB R10, [sp, +R0]
l4595: bic R1, R11, R5, LSR #30
l4596: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
interrupt_259: l4597: eorNE R0, R12, R8
l4598: cmnNE R9, R15, LSR #24
l4599: mov R4, #24
l4600: ldrsb R9, [sp, -R4]
l4601: ldmIA R13!, {R6}
l4602: stmDA R13!, {R1, R2, R11}
l4603: movMIs R14, R12
l4604: teqLT R1, R8, RRX 
l4605: mov R4, #4
interrupt_143: l4606: strHIh R2, [sp, -R4]
l4607: addGEs R4, R0, R11, RRX 
l4608: subs R6, R3, R0
l4609: ldr R14, l4611
l4610: b l4612
interrupt_116: l4611: .word 1048532
l4612: swp R6, R4, [R14]
l4613: bicEQ R2, R2, #2896
l4614: ldrEQ R11, [sp, #-32]
l4615: ldr R14, [sp], #-36
l4616: rsbs R0, R7, R6
l4617: sub R2, R8, #60928
l4618: bPL l4626
l4619: orr R12, R12, R6
l4620: cmpLT R10, R8
interrupt_511: l4621: clzCS R0, R12
interrupt_451: l4622: andCSs R10, R12, R0, LSL R14
l4623: tstCC R8, R15
l4624: clzNE R5, R5
l4625: sub R10, R4, R14
l4626: addMIs R6, R10, R8
l4627: strB R6, [sp, #-12]
l4628: rscPL R9, R15, R0
interrupt_112: l4629: ldr R12, l4631
l4630: b l4632
l4631: .word 1048544
l4632: swpCSb R14, R8, [R12]
l4633: andHI R3, R3, R3, ROR R7
l4634: teqLE R5, R9, LSR #18
l4635: add R6, R10, R11
interrupt_779: l4636: orrEQs R1, R14, #2352
l4637: ldr R5, l4639
l4638: b l4640
l4639: .word 1048532
interrupt_195: l4640: swpb R10, R3, [R5]
l4641: b l4650
l4642: add R1, R0, #72
l4643: bic R3, R10, R8, ASR R2
interrupt_571: l4644: subs R2, R15, R3, RRX 
l4645: addGTs R7, R15, R15
l4646: movCCs R7, #3200
l4647: rsc R7, R12, R6
l4648: cmn R11, R10
l4649: b l4651
l4650: b l4643
l4651: rscVC R11, R4, R6
interrupt_796: l4652: nop
l4653: adc R9, R8, R1
l4654: cmnEQ R0, R0, LSL #29
l4655: cmp R12, R11, LSL #18
l4656: cmnEQ R2, R9, RRX 
l4657: sub R9, R12, R9, ASR #11
l4658: stmDB R13!, {R3, R7, R11, R15}
l4659: clzVS R8, R0
interrupt_456: l4660: ldr R7, l4662
l4661: b l4663
l4662: .word 1048496
l4663: swpHIb R11, R2, [R7]
l4664: mov R9, #2
interrupt_557: l4665: strPLB R14, [sp, +R9]
l4666: b l4675
l4667: add R1, R0, #27
l4668: bicGT R4, R8, #2048
l4669: adcVCs R6, R14, R9
l4670: orrHI R11, R9, #252928
interrupt_680: l4671: bic R0, R11, R4, LSR R0
l4672: andVC R3, R1, R2, LSR R3
l4673: addVSs R9, R8, #1264
l4674: b l4676
l4675: b l4668
interrupt_445: l4676: ldmIB R13!, {R0, R3, R5, R12, R14}
l4677: clzMI R1, R14
l4678: ldrMIB R1, [sp, #+7]
l4679: ldr R7, l4681
interrupt_872: l4680: b l4682
l4681: .word 1048552
l4682: swpGTb R9, R5, [R7]
l4683: mvn R8, R11, ROR #3
l4684: mvns R7, R14, LSL #22
l4685: teq R14, R8, RRX 
l4686: cmpEQ R14, R2, ASR R14
l4687: ldmVCIA R13, {R0, R1, R2, R3, R6, R7, R8, R9, R10, R12, R14}
l4688: str R6, [sp], #+8
l4689: movGEs R4, R8
l4690: ldmIA R13!, {R2, R3, R5, R11, R14}
l4691: clz R4, R2
interrupt_289: l4692: clz R1, R14
interrupt_659: l4693: eorMIs R9, R12, R9
l4694: mov R11, #12
l4695: ldr R4, [sp], +R11
l4696: adcLE R8, R9, R7, LSR R8
l4697: b l4698
l4698: tst R2, #2684354567
l4699: rsb R4, R7, R12
l4700: mvnLT R6, R9
l4701: ldmDA R13!, {R0, R1, R5, R7, R10, R11, R12, R14}
interrupt_550: l4702: ldmIB R13!, {R6, R14}
l4703: ldr R3, l4705
l4704: b l4706
l4705: .word 1048552
l4706: swpCSb R6, R8, [R3]
l4707: stmLEIA R13, {R0, R2, R7, R9}
interrupt_166: l4708: subCC R3, R5, R2
l4709: stmIB R13!, {R4}
l4710: mov R3, #28
l4711: ldrLSB R7, [sp, -R3]
l4712: ldrh R4, [sp, #-48]
l4713: subs R9, R7, #213
l4714: cmn R5, R4
l4715: rsc R11, R9, R5, ASR R2
l4716: mov R9, #44
l4717: strHI R0, [sp, -R9]
l4718: ldrLEsh R9, [sp, #-18]
l4719: movs R3, R0, ASR R6
interrupt_566: l4720: sub R14, R12, R1, ROR #30
l4721: addPL R6, R6, R11
l4722: clz R8, R9
l4723: mov R1, #4
interrupt_392: l4724: ldr R7, [sp], -R1
interrupt_664: l4725: bMI l4730
l4726: clz R1, R9
l4727: clz R10, R0
l4728: teqHI R3, R0
l4729: sbcHI R2, R9, R8
l4730: movLE R14, R14
l4731: ldr R3, l4733
l4732: b l4734
l4733: .word 1048524
l4734: swpb R2, R9, [R3]
l4735: clz R14, R1
l4736: cmp R12, R1, RRX 
l4737: mov R3, #32
l4738: ldr R1, [sp, -R3]!
interrupt_320: l4739: rsb R1, R4, #1968
l4740: ldmIA R13!, {R2, R3, R5, R6, R7, R9, R12}
l4741: cmnCC R3, #166723584
interrupt_953: l4742: ldrsb R4, [sp, #+34]
l4743: mov R4, #13
l4744: ldrPLsb R0, [sp, +R4]
l4745: strB R1, [sp, #+30]
l4746: orr R9, R2, #47104
l4747: cmpLE R6, R6
l4748: adds R6, R7, #2016
l4749: ldr R3, l4751
l4750: b l4752
l4751: .word 1048508
l4752: swpGEb R9, R2, [R3]
interrupt_286: l4753: bPL l4760
l4754: orrs R5, R10, R9
l4755: orrs R9, R14, #30
interrupt_607: l4756: orrs R7, R12, R5, LSL R5
l4757: mvnGEs R10, #545259520
interrupt_176: l4758: clz R11, R8
l4759: rsbCS R3, R7, #8781824
l4760: sbc R12, R11, #310378496
l4761: strB R4, [sp, #+20]
interrupt_572: l4762: mov R3, #28
l4763: strEQh R11, [sp, -R3]
l4764: ldrB R2, [sp, #-37]
interrupt_645: l4765: subGT R8, R2, R3, LSL #14
l4766: mov R9, #20
l4767: strh R8, [sp, -R9]
l4768: strLS R6, [sp, #+20]
l4769: ldr R3, l4771
l4770: b l4772
l4771: .word 1048548
l4772: swpPL R10, R1, [R3]
l4773: ldr R8, l4775
interrupt_830: l4774: b l4776
l4775: .word 1048548
l4776: swp R12, R12, [R8]
l4777: subNEs R0, R2, R11, ROR R1
l4778: adc R4, R5, R12, RRX 
l4779: rsbLTs R7, R2, R11
l4780: teqGT R5, R8
l4781: adds R5, R3, R7
l4782: rscMIs R10, R9, #1328
interrupt_114: l4783: cmpVS R9, R12, ROR R10
interrupt_248: l4784: ldr R6, l4786
l4785: b l4787
interrupt_604: l4786: .word 1048508
interrupt_899: l4787: swp R3, R12, [R6]
l4788: mov R7, #18
l4789: strh R0, [sp, -R7]
l4790: ldrVSB R7, [sp, #-19]
l4791: mov R7, #18
l4792: ldrsb R1, [sp, -R7]
l4793: eorMI R0, R4, R4, LSR #27
l4794: stmIA R13, {R2, R13}
interrupt_769: l4795: bCS l4803
l4796: teqVS R9, R12, ROR R4
l4797: cmp R6, #950272
l4798: bicLEs R8, R0, R1, LSL #18
l4799: subVC R11, R3, R5
interrupt_331: l4800: subs R8, R10, #0
l4801: rsbGTs R1, R4, R11, LSL R5
l4802: subPL R5, R1, #15488
interrupt_577: l4803: cmpMI R14, R7, ROR R4
l4804: teq R10, R14, ASR #6
l4805: ldrVCh R7, [sp, #+0]
l4806: cmnGE R9, R0
l4807: ands R5, R10, #1073741868
interrupt_800: l4808: strLEB R6, [sp, #+22]
l4809: mov R4, R0
l4810: subPL R12, R9, R3, ROR R5
interrupt_691: l4811: rsb R12, R0, R11, ROR R3
l4812: bVS l4816
l4813: add R1, R0, #135
interrupt_409: l4814: mvnGE R0, R4, LSL R2
l4815: b l4817
l4816: b l4814
l4817: mov R8, #0
l4818: str R12, [sp, +R8]!
interrupt_436: l4819: strMIh R8, [sp, #+8]
interrupt_7: l4820: cmpCS R2, R4, LSR #26
l4821: bCS l4828
l4822: add R1, R0, #4
l4823: sbcEQ R2, R5, R5
l4824: mvn R14, R4, RRX 
interrupt_83: l4825: rsbLS R14, R15, R2
interrupt_57: l4826: teqEQ R1, R14, ASR #22
l4827: b l4829
l4828: b l4823
interrupt_33: l4829: mov R1, #24
l4830: str R9, [sp, -R1]!
l4831: ldmDB R13!, {R0, R6}
interrupt_998: l4832: cmnLT R15, #3976200192
l4833: rsbGT R11, R10, R14
l4834: strVCB R0, [sp, #+3]
l4835: ldr R9, l4837
interrupt_310: l4836: b l4838
l4837: .word 1048488
interrupt_6: l4838: swpGTb R12, R10, [R9]
l4839: ldr R11, l4841
l4840: b l4842
l4841: .word 1048524
interrupt_695: l4842: swpHI R8, R1, [R11]
l4843: rsc R3, R7, #2624
interrupt_547: l4844: rscs R6, R11, #1610612738
l4845: mvn R0, R9, ASR #28
interrupt_878: l4846: mov R1, #3
interrupt_961: l4847: strEQB R5, [sp, -R1]
interrupt_654: l4848: mov R0, #16
l4849: ldrGTsh R6, [sp, +R0]
interrupt_848: l4850: cmnHI R12, #3227648
l4851: ldrB R8, [sp, #+27]
l4852: nop
interrupt_940: l4853: and R3, R7, R8, ROR R8
interrupt_97: l4854: bVC l4861
interrupt_355: l4855: add R1, R0, #1
l4856: and R5, R7, R11, LSL R9
l4857: orr R3, R3, R1
l4858: subVSs R12, R12, R1, RRX 
l4859: eorHIs R7, R15, R10, LSL #26
l4860: b l4862
interrupt_233: l4861: b l4856
l4862: ldrVCh R2, [sp, #+54]
l4863: sbcLT R6, R2, #2496
interrupt_516: l4864: addEQ R6, R2, R10
l4865: subEQs R14, R6, R11, LSL R9
l4866: sub R3, R4, #425984
l4867: ldr R6, l4869
l4868: b l4870
l4869: .word 1048544
l4870: swpb R14, R14, [R6]
interrupt_218: l4871: subHI R5, R10, R12
l4872: eorGTs R5, R5, R8, ASR R8
l4873: mov R7, #40
l4874: ldrCSsh R3, [sp, +R7]
l4875: rsbMIs R10, R10, R0, RRX 
l4876: bics R14, R6, R3, LSR R3
l4877: bicLE R0, R12, R6
l4878: sbcVC R12, R3, R11, RRX 
l4879: ldmIB R13, {R0, R6, R9, R14}
interrupt_191: l4880: ldr R14, l4882
interrupt_174: l4881: b l4883
l4882: .word 1048504
l4883: swpLT R1, R0, [R14]
l4884: subs R11, R9, R0, ASR R10
l4885: orrs R0, R7, R3, LSL R1
interrupt_580: l4886: tst R14, R11, ASR R14
l4887: ldrNEh R3, [sp, #+18]
l4888: eor R2, R0, R1, ASR R7
l4889: ldr R14, l4891
l4890: b l4892
l4891: .word 1048488
l4892: swpLE R9, R3, [R14]
interrupt_982: l4893: bMI l4900
interrupt_657: l4894: add R1, R0, #198
l4895: addGE R14, R10, R10, LSR #27
interrupt_250: l4896: ands R11, R15, R7, ASR #7
l4897: sbcGE R3, R5, R9, ASR R2
l4898: eorVC R0, R9, R3, ASR R8
l4899: b l4901
l4900: b l4895
l4901: subVS R2, R10, R2
interrupt_640: l4902: mov R4, #8
l4903: ldr R10, [sp], -R4
l4904: ldr R6, l4906
l4905: b l4907
l4906: .word 1048496
l4907: swp R9, R9, [R6]
l4908: sbc R5, R9, R10
interrupt_326: l4909: subs R3, R2, R9, ROR R3
l4910: rsc R10, R14, R3
l4911: ldrsh R0, [sp, #+68]
interrupt_988: l4912: mov R8, #50
interrupt_28: l4913: ldrGTsb R14, [sp, +R8]
l4914: clzHI R7, R12
l4915: strGT R11, [sp, #+20]
l4916: ldrh R6, [sp, #+38]
l4917: cmpLS R7, R9, LSL #16
l4918: ldmIB R13!, {R0, R4, R12, R14}
l4919: adcNEs R0, R12, R3
l4920: movs R7, R3
l4921: mov R9, #36
l4922: str R9, [sp, +R9]
l4923: tstLT R3, #221249536
l4924: mov R1, #14
l4925: ldrHIsb R8, [sp, -R1]
l4926: cmp R9, R11
l4927: movGT R0, R11, ROR #15
l4928: addGE R11, R7, #536870923
l4929: mvns R11, R14, LSL #2
interrupt_466: l4930: mov R12, #34
l4931: ldrNEsh R2, [sp, +R12]
l4932: tstLT R5, #268435465
l4933: rsbEQ R7, R7, R5, LSL #26
l4934: strB R6, [sp, #-12]
l4935: mov R12, #49
l4936: strNEB R0, [sp, +R12]
l4937: cmp R4, R4, RRX 
l4938: mov R11, #52
l4939: str R12, [sp], +R11
l4940: cmn R7, R1, LSL R2
interrupt_106: l4941: ldrCSB R9, [sp, #-40]
l4942: sub R5, R8, R11, LSL #19
l4943: mvnVS R11, #4224
l4944: ldmDA R13!, {R3, R9, R11, R12}
l4945: ldrCC R14, [sp, #-16]
interrupt_697: l4946: mov R8, #8
l4947: str R10, [sp, +R8]
l4948: mov R7, #2
l4949: ldrMIsb R2, [sp, -R7]
l4950: orrLE R9, R11, R12, LSL #25
l4951: ldmIA R13!, {R12}
l4952: mov R6, #32
l4953: ldrVCh R0, [sp, -R6]
l4954: bNE l4958
l4955: add R1, R0, #24
l4956: adds R14, R7, #98304
l4957: b l4959
l4958: b l4956
l4959: cmnCS R8, R8, ROR #20
l4960: orrMIs R12, R7, R11, ROR #13
l4961: bPL l4968
l4962: add R1, R0, #174
l4963: movGTs R11, R7, LSL R12
interrupt_117: l4964: sub R3, R2, R10, LSL R2
l4965: and R1, R14, R1, LSR #27
interrupt_426: l4966: tstLS R1, R1
l4967: b l4969
l4968: b l4963
interrupt_845: l4969: rscGT R0, R4, R14
interrupt_838: l4970: sbcCCs R5, R3, R7, LSL R11
l4971: orrNEs R3, R0, R9, ASR #28
l4972: cmp R5, R0, LSL R11
interrupt_911: l4973: subs R7, R10, R2
interrupt_269: l4974: mov R7, #8
l4975: str R4, [sp, +R7]!
l4976: ldrB R7, [sp, #-49]
l4977: sub R14, R6, R5, RRX 
l4978: mov R2, #32
l4979: ldrVSB R4, [sp, -R2]
l4980: teqLE R4, R5, LSR #26
l4981: subLTs R3, R15, R4, LSL #23
interrupt_152: l4982: rsc R5, R10, R7
l4983: str R4, [sp, #-12]!
l4984: tst R2, #256901120
l4985: adds R11, R7, R11
l4986: cmp R5, R10, ROR R14
interrupt_417: l4987: adcs R4, R2, #268435468
l4988: rsbs R14, R11, R10
l4989: subGT R6, R0, #245366784
l4990: nop
interrupt_255: l4991: mov R1, #13
l4992: strB R12, [sp, -R1]
l4993: cmn R4, R3, LSL #6
interrupt_162: l4994: mov R8, #22
l4995: strGTB R4, [sp, +R8]
interrupt_852: l4996: mov R10, #48
l4997: ldrGEsh R7, [sp, -R10]
l4998: mvnLTs R2, R10, ASR R6
l4999: ldrB R1, [sp, #-20]
interrupt_794: l5000: subCS R5, R4, R6, LSL #10
end: b end
interrupt_300: 
