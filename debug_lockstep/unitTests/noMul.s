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
val1: .word 2695280581
next1:ldr R2, val2
b next2
val2: .word 4270060894
next2:ldr R3, val3
b next3
val3: .word 1281611896
next3:ldr R4, val4
b next4
val4: .word 3189536851
next4:ldr R5, val5
b next5
val5: .word 43530854
next5:ldr R6, val6
b next6
val6: .word 3610956922
next6:ldr R7, val7
b next7
val7: .word 1755520763
next7:ldr R8, val8
b next8
val8: .word 1640068498
next8:ldr R9, val9
b next9
val9: .word 1495436425
next9:ldr R10, val10
b next10
val10: .word 3037313550
next10:ldr R11, val11
b next11
val11: .word 626362170
next11:ldr R12, val12
b next12
val12: .word 1573849644
next12:ldr R14, val14
b next14
val14: .word 1693867370

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 3876953561
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 2400190166
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 552303468
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 502831159
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 3059967725
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 2086964436
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 2239510867
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 2866627087
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 1802386342
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 254950717
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 3037924907
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 1176274298
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 2667467340
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 1827233349
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 1290829361
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 2906522909
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 3207278870
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 4216902959
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 2623203652
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 3484762890
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 565710734
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: rsb R9, R3, R4, RRX 
l2: subLSs R7, R3, R6, LSR R5
l3: adcs R14, R4, #138240
l4: sbcPL R9, R4, R12, LSR R12
l5: sbcEQs R5, R1, R4, ROR #19
l6: adcCS R0, R14, R7, ASR R4
l7: mov R10, #26
l8: strB R14, [sp, -R10]
l9: andLSs R14, R7, R5
l10: mov R7, #48
l11: ldrEQh R2, [sp, -R7]
l12: rsb R4, R5, R2, ROR #22
l13: b l21
l14: add R1, R0, #50
l15: clzLT R6, R10
l16: and R11, R8, #-1073741821
l17: eorLSs R10, R15, R9
l18: orrGEs R4, R10, R10
l19: mvnLE R2, R5, LSR R5
l20: b l22
l21: b l15
l22: rsb R10, R12, R2
l23: stmDA R13!, {R6}
l24: rsb R8, R0, R5, RRX 
l25: ldr R1, l27
l26: b l28
l27: .word 1048528
l28: swpb R2, R3, [R1]
l29: teq R1, R1, LSR #0
l30: mov R7, #14
l31: ldrh R0, [sp, -R7]
l32: mvns R8, #23552
l33: tstMI R9, R2
l34: orr R5, R6, R12, LSL #24
l35: mov R9, #61
l36: strB R2, [sp, -R9]
l37: ldr R1, l39
l38: b l40
l39: .word 1048492
l40: swp R5, R12, [R1]
l41: rscPLs R10, R8, R2, LSR R7
l42: ldr R2, l44
l43: b l45
l44: .word 1048492
l45: swpMI R7, R11, [R2]
l46: stmVCDA R13, {R0, R2, R6, R7, R10}
l47: tstVC R11, R4
l48: sub R10, R6, R9, LSR R0
l49: mov R1, #20
l50: ldr R0, [sp, -R1]!
l51: stmDA R13!, {R2, R3, R4, R5, R7, R8, R9, R10, R11, R12, R14, R15}
l52: orrVSs R3, R0, R10, LSL R12
l53: sbcs R1, R14, R8
l54: ldmIA R13!, {R4, R6, R8, R12}
l55: stmGEDB R13, {R6, R8}
l56: adcMI R10, R6, R4, LSR #20
l57: adcMI R2, R0, R15, RRX 
l58: subLE R6, R8, R9
l59: mvnVS R7, R14
l60: strh R6, [sp, #+44]
l61: bic R10, R4, #-402653181
l62: mov R9, #36
l63: ldrVSh R2, [sp, +R9]
l64: clzEQ R9, R3
l65: bVC l69
l66: add R1, R0, #192
l67: mvns R10, R9
l68: b l70
l69: b l67
l70: eor R7, R9, R11, RRX 
l71: mov R1, #47
l72: ldrB R4, [sp, +R1]
l73: mov R9, #2
l74: ldrsh R3, [sp, -R9]
l75: mov R14, #8
l76: strMIh R10, [sp, +R14]
l77: mov R7, #50
l78: ldrGEsh R4, [sp, +R7]
l79: andNEs R1, R3, R10, RRX 
l80: orr R14, R7, R8, RRX 
l81: strB R9, [sp, #+25]
l82: eorCCs R8, R11, #9371648
l83: mov R4, #49
l84: strB R6, [sp, +R4]
l85: mvns R14, R12, LSL #29
l86: subMIs R4, R2, R0, ROR R5
l87: cmp R12, R7
l88: movs R8, #128
l89: stmIA R13, {R2, R6, R14}
l90: ldr R7, l92
l91: b l93
l92: .word 1048504
l93: swpPL R3, R11, [R7]
l94: bLE l102
l95: add R1, R0, #254
l96: sbcCSs R14, R3, R10, LSL #4
l97: adds R1, R9, #15204352
l98: mvns R1, R12, LSR #22
l99: orrs R9, R1, R12
l100: tst R14, #157286400
l101: b l103
l102: b l96
l103: rscGT R8, R11, R11, ROR R1
l104: bGE l108
l105: add R1, R0, #171
l106: teqPL R11, #14614528
l107: b l109
l108: b l106
l109: sub R2, R0, R4, ROR R3
l110: addLTs R8, R0, #138412032
l111: mov R11, #6
l112: ldrGTsb R5, [sp, -R11]
l113: bicPLs R12, R3, #12864
l114: mov R10, #24
l115: ldrh R8, [sp, +R10]
l116: orrGTs R12, R6, R9, LSR R14
l117: rsbs R8, R4, #4128768
l118: subs R1, R14, R11, RRX 
l119: bicVS R10, R6, R2
l120: mov R4, #24
l121: ldrPL R3, [sp, -R4]
l122: mov R0, #34
l123: strLTB R2, [sp, +R0]
l124: eorCS R2, R4, #553648128
l125: ldr R6, l127
l126: b l128
l127: .word 1048524
l128: swp R4, R7, [R6]
l129: bNE l137
l130: clz R2, R5
l131: andHI R3, R3, R12
l132: clzCS R7, R8
l133: teqMI R14, R10, ROR #29
l134: subCC R2, R7, R3, LSL R0
l135: orrLSs R12, R15, #4325376
l136: ands R3, R6, R7, RRX 
l137: mvn R11, #402653184
l138: rsc R0, R11, R7, ROR R4
l139: ldr R10, l141
l140: b l142
l141: .word 1048536
l142: swpb R1, R12, [R10]
l143: ldr R0, l145
l144: b l146
l145: .word 1048480
l146: swpCCb R6, R9, [R0]
l147: mov R12, #14
l148: ldrVCsh R3, [sp, -R12]
l149: mov R3, #0
l150: strB R10, [sp, +R3]
l151: mov R14, #38
l152: ldrsh R0, [sp, +R14]
l153: mov R10, #39
l154: ldrMIsb R3, [sp, +R10]
l155: adcVS R14, R7, R9, LSL #29
l156: mov R5, #32
l157: ldr R1, [sp, +R5]
l158: mvnHIs R2, R3, ROR R9
l159: clzVC R6, R3
l160: mvnVCs R8, #-1342177271
l161: bic R2, R5, #3040
l162: orr R11, R8, R6, ASR #29
l163: ldrB R7, [sp, #+44]
l164: clz R9, R12
l165: movs R10, #100663296
l166: andNE R3, R8, R11
l167: rsbPLs R8, R5, R9
l168: ldrNEB R9, [sp, #-6]
l169: str R6, [sp], #+44
l170: subs R10, R2, R1, LSR R11
l171: mov R9, #7
l172: ldrLTsb R6, [sp, +R9]
l173: mov R8, #6
l174: ldrPLsb R10, [sp, -R8]
l175: mov R1, #41
l176: ldrsb R5, [sp, -R1]
l177: mov R5, #32
l178: str R0, [sp, -R5]
l179: stmDA R13!, {R13, R14, R15}
l180: ldmGEIB R13, {R1, R2, R4}
l181: rsc R12, R10, R10
l182: cmn R2, #-1879048186
l183: clz R5, R11
l184: rsbs R5, R2, #146800640
l185: ldr R6, [sp], #-40
l186: str R12, [sp, #+28]!
l187: movs R9, R2
l188: bGT l196
l189: add R1, R0, #47
l190: bicLSs R2, R3, R14
l191: subMIs R12, R11, #100663296
l192: tstLS R1, R5, ASR #21
l193: rsb R12, R2, #9
l194: bics R5, R3, R11
l195: b l197
l196: b l190
l197: ldr R3, l199
l198: b l200
l199: .word 1048548
l200: swp R5, R1, [R3]
l201: cmn R2, #37120
l202: rsbs R1, R6, R8, LSL R12
l203: clzNE R5, R2
l204: b l212
l205: add R1, R0, #178
l206: clzCS R14, R9
l207: cmn R6, #257024
l208: teq R0, #45
l209: clz R10, R1
l210: mov R11, R5, RRX 
l211: b l213
l212: b l206
l213: mov R2, #6
l214: ldrGTsh R4, [sp, -R2]
l215: ldrB R0, [sp, #+2]
l216: orrCC R12, R3, R4
l217: sbcHIs R2, R8, R3, ROR R3
l218: eors R8, R0, #2441216
l219: mov R10, #7
l220: strLSB R7, [sp, +R10]
l221: adcs R1, R0, R7, ASR #16
l222: mov R9, #16
l223: ldrPLB R4, [sp, -R9]
l224: andHI R4, R3, R2, ROR R10
l225: cmp R14, R0, RRX 
l226: bGE l236
l227: cmnLT R14, R14, LSR #12
l228: rscHI R3, R14, #7360
l229: addGT R3, R7, R9, LSR #1
l230: clzLS R3, R11
l231: adc R5, R2, R9, LSL R9
l232: adcNE R9, R10, R1, ASR #21
l233: adcs R0, R7, R11, ROR R6
l234: rsb R8, R8, #2850816
l235: sbcs R8, R8, R12, ROR #17
l236: clzLT R12, R8
l237: mov R11, #9
l238: ldrPLB R3, [sp, -R11]
l239: andGTs R12, R0, R1, LSR R3
l240: bHI l246
l241: sbcCS R5, R7, R6, RRX 
l242: ands R9, R4, #65536
l243: rsbs R3, R7, #15204352
l244: cmn R10, R8
l245: sbc R5, R15, R8, LSL #3
l246: teqMI R5, R14, LSL #6
l247: ldmIA R13!, {R6}
l248: orrs R2, R2, R10
l249: sbcPL R14, R4, R11, RRX 
l250: rsc R0, R6, R8, ASR #27
l251: add R9, R8, R9, LSL #11
l252: cmn R4, #50331648
l253: ldr R10, l255
l254: b l256
l255: .word 1048500
l256: swpb R6, R9, [R10]
l257: sbcLT R9, R10, #-402653184
l258: cmn R5, R4, RRX 
l259: tstGE R10, #34603008
l260: sbc R8, R12, R3, LSR #8
l261: mov R9, #14
l262: strHIh R5, [sp, +R9]
l263: tstEQ R6, R9
l264: ldr R7, l266
l265: b l267
l266: .word 1048512
l267: swpHI R2, R11, [R7]
l268: bic R3, R0, R14
l269: clzNE R9, R5
l270: ldrLSh R8, [sp, #-42]
l271: ldr R8, [sp, #+24]!
l272: strh R1, [sp, #-48]
l273: rscLTs R0, R9, #60817408
l274: addLEs R10, R12, R9
l275: stmDA R13!, {R13, R14, R15}
l276: mov R6, #4
l277: strB R4, [sp, -R6]
l278: cmpGE R8, R0
l279: ldr R0, l281
l280: b l282
l281: .word 1048532
l282: swp R7, R9, [R0]
l283: stmIA R13!, {R12}
l284: strh R10, [sp, #-58]
l285: adcVS R0, R8, R7, ASR R11
l286: ands R1, R14, #50331648
l287: ldr R5, l289
l288: b l290
l289: .word 1048528
l290: swpb R6, R0, [R5]
l291: cmpLE R15, R6
l292: clz R5, R11
l293: addGEs R1, R6, R5, LSL #7
l294: sbc R11, R3, R3
l295: andGT R4, R10, R1, RRX 
l296: ldr R10, l298
l297: b l299
l298: .word 1048532
l299: swp R6, R5, [R10]
l300: mov R2, #6
l301: ldrh R6, [sp, +R2]
l302: mov R6, R5, LSR #2
l303: mov R7, R14, LSL #10
l304: bic R10, R14, R5
l305: teqLT R3, R15, RRX 
l306: adds R8, R8, #173056
l307: adcPLs R1, R3, R11, ASR R11
l308: cmnVC R7, R8, ASR R11
l309: bLS l313
l310: add R1, R0, #79
l311: eorVC R10, R6, R11, LSL #6
l312: b l314
l313: b l311
l314: bVC l319
l315: add R1, R0, #193
l316: sbcs R12, R9, R3, ROR R0
l317: tstHI R9, #165675008
l318: b l320
l319: b l316
l320: clz R11, R3
l321: stmDB R13!, {R1, R11}
l322: andLT R3, R5, R7, LSL R12
l323: cmn R12, #-1073741800
l324: rsc R4, R1, R12, LSR R5
l325: ldr R2, l327
l326: b l328
l327: .word 1048536
l328: swpGE R8, R11, [R2]
l329: mov R10, #8
l330: ldr R9, [sp, +R10]!
l331: eorEQ R9, R12, R5, ASR R0
l332: addLTs R5, R0, #60
l333: teqGT R3, R15
l334: ldrsb R5, [sp, #-2]
l335: sbcCC R9, R14, #-1879048189
l336: mov R11, #40
l337: ldrLSsh R4, [sp, -R11]
l338: ldmIB R13!, {R1, R6}
l339: cmpCS R14, R0, RRX 
l340: cmnHI R10, #503316480
l341: mov R12, #40
l342: str R12, [sp, -R12]!
l343: rscHI R14, R14, R10, ROR R2
l344: mvnLTs R0, #1073741837
l345: ands R12, R3, R4, ASR R12
l346: tstVS R15, R3, LSL #3
l347: subs R4, R4, R6, LSL R1
l348: rsbHIs R10, R11, R15, ROR #15
l349: ldmDB R13!, {R0, R1, R2, R6, R8, R9}
l350: bGT l359
l351: teqCS R11, R11, LSR R12
l352: cmpVS R9, R1, LSL R6
l353: tstHI R10, #512000
l354: sbcCCs R0, R15, R2, ASR #1
l355: cmnPL R2, #12800
l356: clzPL R14, R1
l357: sbcs R1, R6, R10, ROR R14
l358: andNE R14, R15, R9
l359: sub R6, R1, R12, LSR #21
l360: ldrLTsb R7, [sp, #+62]
l361: strCC R1, [sp, #+12]
l362: subs R7, R1, R11, LSL #20
l363: adcs R11, R15, R15, RRX 
l364: nop
l365: mov R8, #14
l366: ldrEQsh R7, [sp, +R8]
l367: ldr R8, l369
l368: b l370
l369: .word 1048504
l370: swpGEb R12, R7, [R8]
l371: mov R4, R10, LSR R7
l372: ldrLSB R1, [sp, #+39]
l373: bEQ l375
l374: mvnVCs R7, R12, LSL #16
l375: rscGTs R0, R8, #30720
l376: rsc R14, R3, R7
l377: movLT R14, R1, LSR #30
l378: stmIA R13!, {R13, R14, R15}
l379: ldr R1, l381
l380: b l382
l381: .word 1048532
l382: swpNE R12, R9, [R1]
l383: clzCC R1, R11
l384: eor R9, R8, R9
l385: rsbVSs R9, R12, #-889192448
l386: mov R1, #16
l387: ldr R9, [sp], -R1
l388: rsc R1, R9, R5
l389: cmn R7, R2, ROR R4
l390: ldrsh R4, [sp, #+26]
l391: mov R3, #44
l392: ldrh R7, [sp, +R3]
l393: b l394
l394: add R14, R12, R7
l395: cmp R5, R1, LSL #17
l396: mov R3, #10
l397: strB R1, [sp, +R3]
l398: sbcHI R7, R8, R14, LSR #12
l399: orr R3, R7, #15728640
l400: and R8, R11, R6, LSR R10
l401: ldrsb R10, [sp, #+29]
l402: eorCC R8, R0, R6
l403: bHI l405
l404: cmpCC R9, R6, LSL R11
l405: clzVC R5, R0
l406: ldr R4, l408
l407: b l409
l408: .word 1048508
l409: swpCSb R12, R0, [R4]
l410: adcs R6, R12, #184549376
l411: b l419
l412: orrLTs R6, R3, R10, ASR #24
l413: teqLS R4, R14, ASR R0
l414: cmn R12, R0, ROR R10
l415: cmnHI R0, #69
l416: bics R10, R0, #-1073741824
l417: tstCS R1, R5
l418: adcLEs R14, R2, #-1325400064
l419: sbcs R10, R0, #144703488
l420: cmpNE R10, R7, LSR R0
l421: and R4, R3, R10, LSL #27
l422: strCC R2, [sp, #-4]
l423: adcEQs R7, R7, R7, ROR R14
l424: adcCC R7, R12, R12
l425: mov R7, #66
l426: ldrB R9, [sp, +R7]
l427: ldr R14, l429
l428: b l430
l429: .word 1048540
l430: swp R5, R2, [R14]
l431: ldmIA R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l432: adcEQs R5, R9, R8, ROR R6
l433: eors R2, R8, R10
l434: mov R12, #16
l435: ldrLSh R11, [sp, +R12]
l436: bCC l437
l437: sbcGEs R8, R14, R7
l438: strh R6, [sp, #-42]
l439: ldmDA R13!, {R0, R2, R3, R4, R5, R7, R9, R10, R11}
l440: orr R10, R11, #-2147483639
l441: rsc R10, R10, R12, ROR R12
l442: andPLs R12, R0, R15, RRX 
l443: mov R11, #8
l444: ldrNE R3, [sp, +R11]
l445: rscMIs R5, R11, #256000
l446: clz R12, R1
l447: sub R12, R0, #85983232
l448: rsb R4, R3, R10
l449: ldr R3, l451
l450: b l452
l451: .word 1048508
l452: swpGTb R11, R14, [R3]
l453: sbcPLs R0, R6, R4, ASR R0
l454: cmp R14, R4
l455: bics R7, R12, R4, RRX 
l456: cmpLS R14, R10
l457: orrCCs R7, R9, #152576
l458: ldmIB R13!, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l459: mov R12, #68
l460: str R4, [sp], -R12
l461: mov R5, #27
l462: ldrCSB R12, [sp, +R5]
l463: ldmIA R13!, {R0, R1, R4, R11}
l464: clzGE R7, R4
l465: mov R6, #0
l466: strB R2, [sp, +R6]
l467: sbcCSs R12, R11, R3, ROR R8
l468: cmpVS R8, #989855744
l469: bVC l473
l470: add R1, R0, #41
l471: adc R3, R6, R3, ROR R10
l472: b l474
l473: b l471
l474: str R6, [sp, #+52]!
l475: mvnHI R1, R10, ROR R10
l476: mov R14, #1
l477: ldrsb R1, [sp, +R14]
l478: b l486
l479: bicLTs R12, R3, R1, RRX 
l480: teq R9, R0
l481: subLSs R10, R7, R2, ROR #27
l482: andVSs R3, R8, R11, RRX 
l483: rsc R2, R14, R14
l484: bic R4, R11, R8
l485: eor R12, R14, R5
l486: adc R9, R6, R10
l487: stmDB R13!, {R0, R1, R3, R7, R9, R12, R15}
l488: adc R14, R3, R10, ROR R8
l489: eor R2, R7, #1409286147
l490: movs R4, R10, LSL R3
l491: ldr R2, l493
l492: b l494
l493: .word 1048536
l494: swpVCb R8, R6, [R2]
l495: andCC R12, R11, #603979777
l496: andVS R9, R2, #968
l497: mov R5, R6
l498: strNEh R6, [sp, #+8]
l499: teqMI R5, #9699328
l500: bicHIs R7, R5, R7
l501: sub R4, R7, R5
l502: bicHI R3, R12, R4, RRX 
l503: bMI l507
l504: add R1, R0, #64
l505: andHIs R12, R6, R4
l506: b l508
l507: b l505
l508: cmp R7, R1, ASR R12
l509: movLS R6, #1968
l510: ldmHIIB R13, {R1, R5}
l511: subs R6, R11, #233
l512: clzLT R14, R8
l513: clzLT R3, R1
l514: b l521
l515: bic R12, R12, #285212672
l516: tst R1, #947912704
l517: teq R5, R10, ROR R0
l518: cmn R10, R0
l519: orrLE R8, R0, R3, ASR #10
l520: subVCs R8, R10, R15, RRX 
l521: rscs R10, R1, R7, LSR #4
l522: b l525
l523: adcs R12, R3, #1342177284
l524: subCSs R5, R11, R6, RRX 
l525: cmn R10, #318767104
l526: rscNE R9, R3, R11
l527: sbcPLs R10, R3, #-872415232
l528: cmnEQ R15, R0
l529: adcs R12, R0, R9, RRX 
l530: bics R7, R11, R8, ROR #27
l531: ldrCS R12, [sp, #+24]
l532: subGTs R4, R7, R7, LSR #7
l533: rsbGEs R10, R2, R11
l534: movs R0, R11
l535: andLSs R7, R7, #245
l536: movNE R11, R10, RRX 
l537: eor R4, R4, R3, RRX 
l538: subGE R8, R4, R8
l539: mov R10, #7
l540: ldrsb R11, [sp, +R10]
l541: clz R2, R0
l542: sub R11, R14, #844
l543: mov R0, #29
l544: ldrLEsb R9, [sp, +R0]
l545: stmIB R13!, {R1, R4, R6}
l546: teqMI R15, #-1342177274
l547: bLT l555
l548: add R1, R0, #85
l549: rscLEs R8, R6, #1342177293
l550: mvnVSs R5, R12
l551: rscCS R8, R11, R1, LSR R1
l552: rscNEs R6, R5, R0
l553: subCSs R10, R11, R14, ROR R11
l554: b l556
l555: b l549
l556: ldr R8, l558
l557: b l559
l558: .word 1048492
l559: swpVS R0, R10, [R8]
l560: ldrsb R0, [sp, #-35]
l561: adds R4, R0, #14745600
l562: tst R2, #16192
l563: rscLT R0, R2, R10, LSR #10
l564: mov R3, #22
l565: ldrsh R10, [sp, +R3]
l566: ldr R9, l568
l567: b l569
l568: .word 1048540
l569: swpLEb R14, R5, [R9]
l570: ldr R3, l572
l571: b l573
l572: .word 1048528
l573: swpHIb R8, R14, [R3]
l574: stmIB R13!, {R15}
l575: ldrB R5, [sp, #-52]
l576: cmpCC R15, R0, LSR #2
l577: teqLS R3, R7, LSR R12
l578: cmp R0, R3
l579: orr R1, R12, R2
l580: eorCCs R0, R12, R2
l581: strh R2, [sp, #-2]
l582: subs R9, R11, R12, ROR #19
l583: sub R4, R8, R5, LSR #8
l584: orrNE R0, R9, #48234496
l585: cmn R3, R3, ASR #15
l586: adc R12, R9, #973078528
l587: mov R7, #4
l588: str R0, [sp], +R7
l589: bicCSs R11, R1, R5
l590: ldrNEh R7, [sp, #+8]
l591: cmnVC R10, R3
l592: bLT l594
l593: sbc R3, R2, R2
l594: andMIs R4, R0, R6, LSR R2
l595: rscMI R6, R1, R5, RRX 
l596: ldrNEh R9, [sp, #-38]
l597: mov R14, R2, RRX 
l598: cmnLE R8, R0
l599: rsbPLs R7, R12, R5, RRX 
l600: cmp R4, #9
l601: cmp R11, R1, LSR #18
l602: mov R2, #6
l603: ldrh R6, [sp, +R2]
l604: mov R6, R11, ASR #29
l605: bic R12, R5, #215040
l606: adcEQs R1, R1, R2
l607: bVC l609
l608: subEQ R7, R2, R7
l609: orr R9, R1, R3
l610: sbc R7, R5, #9536
l611: cmpGE R0, R10, ASR #29
l612: movVCs R12, R0, ASR #11
l613: mov R0, #33
l614: strGEB R5, [sp, -R0]
l615: teq R15, R12, ROR #2
l616: subHI R9, R9, #-536870901
l617: teq R0, #48640
l618: mov R8, #5
l619: ldrB R11, [sp, -R8]
l620: mov R8, #36
l621: str R4, [sp], -R8
l622: eor R14, R10, R2
l623: bicCC R5, R1, #738197507
l624: ands R7, R14, R3
l625: sbcs R10, R6, #830472192
l626: ldrGE R0, [sp, #+0]
l627: ldr R5, l629
l628: b l630
l629: .word 1048552
l630: swp R11, R12, [R5]
l631: and R6, R3, #1073741863
l632: orrVS R11, R4, R5, ROR R11
l633: and R8, R9, #1654784
l634: clzGT R0, R0
l635: mvn R9, #634880
l636: cmpLT R10, R1, ROR R5
l637: ldrsb R10, [sp, #+2]
l638: clzVS R11, R11
l639: teq R12, R5, LSR R6
l640: rsbCC R12, R14, #-1610612728
l641: and R12, R3, R8, RRX 
l642: andPLs R9, R8, R11, LSR #6
l643: ldrVSB R2, [sp, #-5]
l644: ldr R9, l646
l645: b l647
l646: .word 1048484
l647: swpb R1, R0, [R9]
l648: bCC l649
l649: orrs R0, R0, R8, RRX 
l650: stmIA R13!, {R1, R2, R4, R5, R8, R10, R11, R12, R14, R15}
l651: rsbCS R11, R8, R5, LSL #19
l652: ldrsh R2, [sp, #-26]
l653: andHI R6, R15, #771751936
l654: mov R5, R14, LSL R12
l655: mov R5, #4
l656: ldrsh R12, [sp, +R5]
l657: strGEh R10, [sp, #+2]
l658: addLTs R2, R1, R15
l659: orrHIs R7, R3, #20480
l660: addNE R1, R0, #-1207959552
l661: strB R9, [sp, #-52]
l662: rsbVS R1, R10, R8, ASR R7
l663: add R1, R4, R14, LSR #4
l664: adcs R6, R4, #30720
l665: strHI R3, [sp, #+4]
l666: tstCC R11, R8, ROR R2
l667: cmnLT R12, R3, RRX 
l668: ldmDB R13!, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R10, R14}
l669: stmDA R13!, {R4, R8}
l670: mov R9, #48
l671: ldrVSh R14, [sp, +R9]
l672: subMIs R2, R1, R1
l673: bicCSs R0, R8, #55
l674: sbcNEs R12, R10, R1, ROR #18
l675: bCS l685
l676: cmp R1, R10, RRX 
l677: bicCS R3, R11, R4, ROR #17
l678: adcs R8, R10, #3808
l679: rsbGEs R12, R8, R10, LSL #6
l680: teqGE R11, R10
l681: sbcNE R4, R6, R4, RRX 
l682: cmn R0, R6, ASR R7
l683: sub R11, R9, R4, LSR #4
l684: cmnLS R12, R7
l685: tstGE R10, #11904
l686: ldmIA R13!, {R0}
l687: ldr R6, l689
l688: b l690
l689: .word 1048488
l690: swpGE R11, R10, [R6]
l691: cmpLS R15, #59
l692: bics R10, R1, R10
l693: addNE R4, R10, R10, RRX 
l694: rscLEs R1, R11, #373293056
l695: clzCC R2, R9
l696: mvnVSs R10, R2, LSR #26
l697: cmnNE R15, R3
l698: rsbs R4, R5, R8, ROR #27
l699: mov R14, #44
l700: ldrCCsb R3, [sp, +R14]
l701: ands R6, R10, R12
l702: ldr R4, l704
l703: b l705
l704: .word 1048524
l705: swpPLb R0, R6, [R4]
l706: str R9, [sp], #+4
l707: sbc R4, R2, R11, LSR R6
l708: stmIA R13!, {R13}
l709: bPL l713
l710: add R1, R0, #47
l711: bicCC R0, R8, R0, LSL R4
l712: b l714
l713: b l711
l714: ldr R12, l716
l715: b l717
l716: .word 1048520
l717: swpNEb R10, R9, [R12]
l718: mov R4, #3
l719: ldrCCsb R10, [sp, -R4]
l720: bCS l722
l721: mvns R7, R6, ROR R9
l722: tstLS R2, R2, ASR R4
l723: mov R5, #8
l724: ldr R9, [sp, +R5]!
l725: mvns R14, R0
l726: str R8, [sp], #-28
l727: adc R7, R1, R6
l728: cmpGE R11, R10, LSL R3
l729: rsc R14, R11, R10
l730: tst R8, R3, RRX 
l731: rsbLEs R5, R0, #688
l732: mov R11, #48
l733: ldrLSh R6, [sp, +R11]
l734: ldmIA R13!, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R11, R12}
l735: stmIB R13!, {R4, R12, R15}
l736: b l742
l737: add R1, R0, #140
l738: mvnLEs R14, R14
l739: subEQs R10, R8, R9, RRX 
l740: sbc R6, R3, R10, LSL #25
l741: b l743
l742: b l738
l743: mov R3, #28
l744: ldr R6, [sp, -R3]
l745: ldr R5, l747
l746: b l748
l747: .word 1048512
l748: swpb R0, R2, [R5]
l749: b l757
l750: add R1, R0, #189
l751: bicCC R5, R2, R4, LSR R14
l752: adcs R6, R14, R8, LSR R3
l753: andGE R0, R7, R10, LSL #14
l754: cmp R2, R15, LSL #14
l755: addVSs R4, R1, #23
l756: b l758
l757: b l751
l758: sub R10, R8, R9, ASR R10
l759: teq R11, R1, LSR R7
l760: rsc R10, R7, #475136
l761: ldrGTh R12, [sp, #-46]
l762: sbcs R0, R2, R10, LSR #22
l763: adcs R2, R9, R5, LSL #10
l764: ldr R9, l766
l765: b l767
l766: .word 1048480
l767: swpb R12, R12, [R9]
l768: addLTs R7, R4, R5, LSL R12
l769: clzVC R1, R0
l770: ldr R6, l772
l771: b l773
l772: .word 1048532
l773: swpb R9, R1, [R6]
l774: tst R6, R0
l775: stmDA R13!, {R0, R2, R3, R4, R5, R6, R7, R9, R10, R11, R14, R15}
l776: bics R10, R14, #419430400
l777: mov R10, #0
l778: ldrVS R6, [sp, +R10]
l779: tst R10, R8, LSL #29
l780: nop
l781: mov R4, #6
l782: ldrLTsh R11, [sp, -R4]
l783: bGT l789
l784: clz R12, R14
l785: eors R10, R9, R4
l786: teqMI R5, R1, LSR #13
l787: tst R6, R4
l788: cmpLE R12, R9
l789: movLTs R14, #683671552
l790: cmpGT R14, R4
l791: b l800
l792: add R1, R0, #96
l793: rsb R4, R1, R11
l794: adcLE R5, R12, #32256
l795: teqCC R15, #9699328
l796: subs R8, R5, #12845056
l797: sbcCC R6, R7, R15
l798: andCSs R1, R5, R12, RRX 
l799: b l801
l800: b l793
l801: str R1, [sp, #+36]!
l802: b l806
l803: add R1, R0, #30
l804: sbc R8, R0, R2, LSL R2
l805: b l807
l806: b l804
l807: subLT R2, R6, R11
l808: stmIB R13!, {R3, R4}
l809: rsbLEs R11, R1, R14
l810: rscs R7, R14, R5, LSR R9
l811: rsc R11, R9, R14, ROR R7
l812: ldr R0, [sp, #-40]!
l813: adcs R2, R11, #1245184
l814: adcs R8, R1, R11
l815: ldr R4, l817
l816: b l818
l817: .word 1048524
l818: swpGTb R12, R14, [R4]
l819: eorCC R5, R11, #19922944
l820: movNE R1, R14, LSL R4
l821: str R3, [sp, #+40]
l822: addLEs R5, R0, R1, LSL R0
l823: ldr R1, l825
l824: b l826
l825: .word 1048528
l826: swp R3, R2, [R1]
l827: mov R7, #32
l828: strPLh R3, [sp, +R7]
l829: teqLS R14, #-1677721600
l830: sbcs R10, R9, R11
l831: mov R10, #7
l832: ldrB R1, [sp, -R10]
l833: ldr R9, l835
l834: b l836
l835: .word 1048540
l836: swpVS R11, R14, [R9]
l837: ldr R7, [sp, #+32]!
l838: ldr R10, l840
l839: b l841
l840: .word 1048548
l841: swpEQb R8, R1, [R10]
l842: stmIA R13!, {R2, R5}
l843: sbcHI R0, R0, R2, ASR R14
l844: orrLT R1, R5, R9
l845: teq R6, #-1610612721
l846: sbcEQ R9, R8, R3
l847: ldrB R5, [sp, #-4]
l848: movs R9, R2, RRX 
l849: and R1, R6, #732
l850: sub R9, R15, R2, RRX 
l851: bics R9, R14, R7, LSL #22
l852: tstMI R14, R14, LSR #7
l853: movs R14, R3, ROR #14
l854: and R12, R5, R3
l855: addVC R10, R10, R9, LSL R12
l856: ldrVCsh R14, [sp, #-14]
l857: ldr R5, l859
l858: b l860
l859: .word 1048524
l860: swpVSb R4, R1, [R5]
l861: strMIB R3, [sp, #-20]
l862: ldrVCh R12, [sp, #-2]
l863: mov R1, #6
l864: strLEh R9, [sp, -R1]
l865: teq R2, #2932736
l866: bicVSs R6, R3, R5, RRX 
l867: ldr R6, l869
l868: b l870
l869: .word 1048524
l870: swpPL R7, R0, [R6]
l871: cmnEQ R6, #55836672
l872: cmpGE R2, R14, ROR #31
l873: rscLS R7, R7, R3, ROR R12
l874: mov R10, #11
l875: strLEB R2, [sp, -R10]
l876: cmpVC R5, R8
l877: b l883
l878: mvns R12, R8, ASR #5
l879: addVSs R5, R0, R12, LSR R14
l880: clzPL R9, R10
l881: adcs R9, R4, R3, LSL #1
l882: clzPL R7, R6
l883: rsb R10, R4, R10, RRX 
l884: orrVSs R6, R8, R14, RRX 
l885: ldr R9, [sp], #+12
l886: addGE R6, R10, R12, RRX 
l887: ldrNEB R2, [sp, #-54]
l888: stmDB R13!, {R13, R14, R15}
l889: cmn R14, R2, LSL #23
l890: b l894
l891: teq R7, R8, LSR R8
l892: mvns R0, R4
l893: sbcs R4, R0, R3
l894: clzGT R4, R7
l895: stmDA R13!, {R0, R1, R6, R8, R11, R12}
l896: ands R12, R3, R10, ASR R5
l897: sbcNE R14, R12, R7
l898: subs R14, R10, R7, LSL #22
l899: ldrsb R11, [sp, #+36]
l900: ldr R2, l902
l901: b l903
l902: .word 1048504
l903: swp R3, R9, [R2]
l904: orr R4, R12, R8, ASR R11
l905: mov R6, #12
l906: ldrGTh R9, [sp, +R6]
l907: strLE R0, [sp, #+8]
l908: andHIs R8, R5, R12, LSR #22
l909: adds R3, R10, R12
l910: sub R6, R14, R2
l911: rsbMIs R1, R2, R12
l912: subs R14, R8, R5, ASR R14
l913: addGEs R14, R15, #113246208
l914: mov R8, #28
l915: ldrLE R12, [sp, +R8]
l916: mvnLE R4, R10, RRX 
l917: teqVC R2, R12, ASR R5
l918: b l926
l919: clz R4, R5
l920: sub R5, R0, R6, RRX 
l921: rscVS R14, R7, R6, ASR #4
l922: clzLE R2, R6
l923: sbcLS R12, R9, R14, LSR R4
l924: cmp R10, R2, LSL #11
l925: sbc R6, R8, R12
l926: rscCCs R12, R8, R0, ROR #16
l927: subLSs R11, R4, R11
l928: mov R3, #16
l929: ldrVCB R14, [sp, -R3]
l930: teq R5, #15872
l931: strHIh R12, [sp, #+40]
l932: strB R8, [sp, #-13]
l933: sub R9, R3, #499122176
l934: mov R11, #24
l935: ldr R3, [sp], -R11
l936: mov R0, #52
l937: ldrGEB R2, [sp, +R0]
l938: tst R7, R4, ROR R4
l939: ldr R3, l941
l940: b l942
l941: .word 1048532
l942: swpLTb R6, R4, [R3]
l943: adcEQ R4, R0, R12
l944: strCCh R8, [sp, #+28]
l945: eorMI R12, R1, R15
l946: stmLEIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R12, R13, R14}
l947: cmpPL R0, R7, ASR R7
l948: mov R7, #14
l949: ldrCCsh R5, [sp, +R7]
l950: ldrEQh R14, [sp, #+4]
l951: nop
l952: mov R3, #33
l953: ldrB R0, [sp, +R3]
l954: adcVSs R4, R14, R0, LSL #29
l955: subs R7, R3, R6, LSR R9
l956: adcGEs R0, R4, R14, ROR #20
l957: subVC R10, R7, #120586240
l958: mov R3, #12
l959: strVCB R1, [sp, +R3]
l960: subGT R0, R8, R6
l961: rsb R6, R9, R14
l962: subs R2, R8, R6
l963: stmIB R13!, {R5, R12, R14}
l964: b l971
l965: add R1, R0, #121
l966: rsbVCs R5, R0, R15, LSL #26
l967: mvns R9, R6
l968: clzPL R8, R1
l969: ands R0, R1, #2176
l970: b l972
l971: b l966
l972: andGEs R5, R0, R3, LSR R0
l973: subCS R8, R1, R8, LSL #14
l974: ldmDB R13, {R2, R11}
l975: cmp R8, R3, LSL #28
l976: movs R10, R1, ASR R9
l977: adc R12, R11, #33554432
l978: mov R3, #42
l979: ldrVSh R14, [sp, +R3]
l980: cmpHI R14, R8, LSL #19
l981: mov R5, #20
l982: str R11, [sp], +R5
l983: mov R12, #13
l984: ldrB R12, [sp, -R12]
l985: mvnCSs R11, R2, ROR R0
l986: ldr R11, [sp], #-28
l987: ldr R2, l989
l988: b l990
l989: .word 1048496
l990: swpb R10, R6, [R2]
l991: addLE R3, R14, #-1543503870
l992: mov R9, #7
l993: ldrLEB R10, [sp, +R9]
l994: nop
l995: mov R7, #10
l996: ldrsb R9, [sp, +R7]
l997: cmnEQ R9, #0
l998: ldr R5, l1000
l999: b l1001
l1000: .word 1048536
l1001: swpEQ R11, R0, [R5]
l1002: bGT l1007
l1003: mvn R2, R3, ASR #16
l1004: sbc R9, R9, #47872
l1005: cmpEQ R3, R3, ASR R2
l1006: mvnGE R1, R15
l1007: adcs R7, R10, R9, LSL R10
l1008: ldr R3, l1010
l1009: b l1011
l1010: .word 1048512
l1011: swp R1, R9, [R3]
l1012: adcGTs R11, R5, R8
l1013: b l1021
l1014: mvnCSs R11, #5440
l1015: sbcs R6, R14, R0, RRX 
l1016: rscMIs R1, R2, R11, ASR R10
l1017: cmnPL R15, R5, RRX 
l1018: eorNE R3, R7, #933888
l1019: bicLTs R12, R8, R0, LSL #8
l1020: rscPL R4, R12, R4
l1021: mvn R12, R12, LSL R5
l1022: ldrsb R7, [sp, #-5]
l1023: cmnLT R9, R10
l1024: bicEQs R12, R3, #50331648
l1025: nop
l1026: rscPL R2, R3, #939524096
l1027: cmpLT R9, R9, LSL #24
l1028: cmnNE R15, R0
l1029: sbcs R7, R14, R4, LSL R5
l1030: mov R9, #16
l1031: str R6, [sp], +R9
l1032: rsc R2, R9, R14, LSR #20
l1033: mov R6, #4
l1034: ldr R8, [sp, -R6]!
l1035: tst R6, #3309568
l1036: mov R1, #6
l1037: strh R5, [sp, -R1]
l1038: adcCCs R4, R0, #-1543503872
l1039: rscGTs R4, R10, R11, LSL #10
l1040: eors R12, R14, R11, LSR #28
l1041: rscMIs R1, R4, #243
l1042: mov R12, #38
l1043: ldrh R8, [sp, +R12]
l1044: mov R12, #5
l1045: strB R7, [sp, -R12]
l1046: rsbNEs R6, R7, R14, ASR #28
l1047: cmnLE R2, #27136
l1048: subHIs R1, R9, #-1677721598
l1049: ldr R8, l1051
l1050: b l1052
l1051: .word 1048552
l1052: swpVC R14, R11, [R8]
l1053: mov R0, #14
l1054: ldrsh R1, [sp, +R0]
l1055: rsc R14, R0, #553648128
l1056: mov R1, #24
l1057: strVSh R10, [sp, -R1]
l1058: andCS R10, R2, R15
l1059: sbcGEs R1, R2, R8, ROR R1
l1060: sbcHI R6, R14, R12, ROR R9
l1061: subLSs R11, R0, R2, ASR #6
l1062: mov R10, #12
l1063: ldr R4, [sp, -R10]
l1064: stmIA R13!, {R13, R14, R15}
l1065: ldr R9, l1067
l1066: b l1068
l1067: .word 1048528
l1068: swpCCb R5, R11, [R9]
l1069: strHI R11, [sp, #+32]
l1070: strGTh R14, [sp, #-8]
l1071: ldr R0, l1073
l1072: b l1074
l1073: .word 1048496
l1074: swp R11, R7, [R0]
l1075: str R6, [sp, #-36]!
l1076: cmpVS R1, R6, LSR #31
l1077: bVC l1079
l1078: eor R0, R7, R3, RRX 
l1079: teq R8, R0, RRX 
l1080: str R14, [sp, #+68]!
l1081: adcs R9, R14, #1120
l1082: tst R5, R6, RRX 
l1083: subPLs R7, R0, R8, RRX 
l1084: ldr R10, l1086
l1085: b l1087
l1086: .word 1048528
l1087: swpLSb R12, R0, [R10]
l1088: nop
l1089: add R2, R6, R11
l1090: cmnGE R7, #947912704
l1091: rsbPL R5, R7, R10
l1092: b l1100
l1093: add R1, R0, #253
l1094: adcLEs R10, R0, #24
l1095: tstGT R15, R4, RRX 
l1096: teqNE R9, R2, LSL #15
l1097: and R8, R2, R14, ROR R10
l1098: clz R3, R4
l1099: b l1101
l1100: b l1094
l1101: rscHI R12, R4, R0, ROR #4
l1102: subVCs R2, R10, R11, LSR #7
l1103: stmDA R13!, {R13, R14}
l1104: ldr R2, l1106
l1105: b l1107
l1106: .word 1048480
l1107: swp R11, R4, [R2]
l1108: ldr R11, [sp], #-4
l1109: rscGT R9, R15, #491520
l1110: mov R10, #40
l1111: ldrsh R5, [sp, -R10]
l1112: ldr R7, l1114
l1113: b l1115
l1114: .word 1048540
l1115: swpEQb R10, R3, [R7]
l1116: mov R11, #12
l1117: ldrLE R10, [sp, -R11]
l1118: adc R5, R4, R10, ASR #14
l1119: ldrsb R3, [sp, #-47]
l1120: teq R2, R0, ASR #18
l1121: mov R9, #41
l1122: ldrPLsb R8, [sp, -R9]
l1123: movEQ R9, R1, LSL R0
l1124: bGE l1126
l1125: clz R9, R14
l1126: ands R11, R15, R8
l1127: strB R12, [sp, #+4]
l1128: teqGE R1, R0, LSL R1
l1129: bLE l1139
l1130: subs R0, R7, R2
l1131: teqLT R14, #22784
l1132: addVSs R3, R12, R6, ASR R6
l1133: eors R3, R3, R8
l1134: mov R10, #1342177289
l1135: subLTs R11, R6, R6, ROR R5
l1136: subLEs R2, R2, R8
l1137: rsbGTs R10, R15, #805306383
l1138: tst R8, #63438848
l1139: tstMI R7, #892
l1140: cmpPL R14, R4
l1141: rsc R5, R15, R7
l1142: cmnGE R10, #-1644167168
l1143: rsbEQ R0, R3, R1, RRX 
l1144: ldmDB R13!, {R0, R6, R8, R14}
l1145: mov R10, #20
l1146: ldrMIsb R8, [sp, -R10]
l1147: ldr R6, l1149
l1148: b l1150
l1149: .word 1048508
l1150: swp R11, R4, [R6]
l1151: mov R1, #6
l1152: strCCB R14, [sp, -R1]
l1153: strVSB R1, [sp, #-6]
l1154: mov R6, #11
l1155: ldrGTsb R9, [sp, +R6]
l1156: clzCS R1, R7
l1157: ldr R12, l1159
l1158: b l1160
l1159: .word 1048480
l1160: swpNE R3, R2, [R12]
l1161: sbcEQ R4, R11, #1572864
l1162: sbcCC R3, R12, R5, ASR R9
l1163: teq R6, #-201326591
l1164: stmDA R13!, {R4, R7, R10, R14, R15}
l1165: tst R10, #8126464
l1166: rsbGEs R7, R7, #737280
l1167: tstHI R9, R7
l1168: eorPLs R3, R10, #49664
l1169: ldr R0, l1171
l1170: b l1172
l1171: .word 1048504
l1172: swp R14, R11, [R0]
l1173: mov R3, #32
l1174: str R8, [sp], +R3
l1175: orr R7, R0, R11, ROR #21
l1176: movGEs R6, R0, LSR #17
l1177: sub R12, R6, R9, ASR R11
l1178: ldr R6, l1180
l1179: b l1181
l1180: .word 1048524
l1181: swpLSb R5, R8, [R6]
l1182: ldrLTB R2, [sp, #-40]
l1183: addVC R1, R14, R8, LSL R10
l1184: ldr R4, l1186
l1185: b l1187
l1186: .word 1048512
l1187: swpCCb R12, R8, [R4]
l1188: teqPL R7, R14
l1189: b l1197
l1190: add R1, R0, #83
l1191: subPLs R10, R11, R3
l1192: adcCS R2, R5, R10, RRX 
l1193: adc R10, R4, R10, RRX 
l1194: rsc R7, R0, #-1677721600
l1195: cmnLS R11, R5, LSR #9
l1196: b l1198
l1197: b l1191
l1198: add R4, R8, R2
l1199: eors R4, R1, R9
l1200: orrs R5, R1, R0, ROR #18
l1201: orrLT R12, R3, R15
l1202: movs R10, #32768
l1203: eorVS R3, R3, #1104
l1204: mov R8, #51
l1205: strMIB R8, [sp, -R8]
l1206: eor R14, R0, R3, LSL R4
l1207: andMIs R11, R2, R10
l1208: adcMIs R12, R3, #2048
l1209: stmGEIB R13, {R5, R7}
l1210: cmpPL R10, R6, ROR R11
l1211: ldr R4, l1213
l1212: b l1214
l1213: .word 1048540
l1214: swpCS R1, R6, [R4]
l1215: bLT l1220
l1216: add R1, R0, #59
l1217: subGT R6, R11, R9
l1218: eor R1, R14, #603979779
l1219: b l1221
l1220: b l1217
l1221: mov R1, #20
l1222: strCSh R1, [sp, -R1]
l1223: orrs R11, R15, #468
l1224: mov R14, #16
l1225: str R5, [sp, -R14]!
l1226: tstVC R12, R4, LSL R14
l1227: strVCh R9, [sp, #+12]
l1228: b l1233
l1229: subCC R3, R0, R1, ASR #0
l1230: subs R10, R7, R14, LSL R9
l1231: eorVCs R11, R7, #184549376
l1232: subPL R4, R1, #12288
l1233: clzNE R6, R5
l1234: ldr R9, [sp, #-20]!
l1235: teqEQ R3, R11, RRX 
l1236: bicLE R0, R0, #-939524093
l1237: tstLE R8, #884998144
l1238: rsb R11, R8, R7
l1239: orrCCs R11, R11, R5
l1240: teqVC R1, R8, ROR R3
l1241: cmn R4, R0
l1242: mov R12, #2
l1243: ldrVCsh R11, [sp, +R12]
l1244: orr R12, R15, R0
l1245: b l1251
l1246: adc R5, R3, R3, RRX 
l1247: cmnGE R8, R0, ASR R11
l1248: mvn R3, #247463936
l1249: andGEs R12, R14, R11, LSL R6
l1250: sbc R14, R14, R6, RRX 
l1251: cmn R2, R8, LSL R10
l1252: ldr R0, l1254
l1253: b l1255
l1254: .word 1048544
l1255: swpGT R2, R8, [R0]
l1256: bicEQs R4, R2, #185597952
l1257: teqGE R6, R12, LSL #19
l1258: ldr R5, l1260
l1259: b l1261
l1260: .word 1048528
l1261: swp R11, R14, [R5]
l1262: bic R4, R5, R14, LSR R6
l1263: movCCs R1, R3, ROR #22
l1264: tstPL R7, #12864
l1265: ldr R10, l1267
l1266: b l1268
l1267: .word 1048540
l1268: swpb R2, R12, [R10]
l1269: cmpGT R2, R3, ASR R14
l1270: adcVSs R5, R7, R14, LSR R5
l1271: ldr R12, l1273
l1272: b l1274
l1273: .word 1048512
l1274: swp R2, R3, [R12]
l1275: ldrNEsb R6, [sp, #+23]
l1276: mov R10, #4
l1277: ldrMI R11, [sp, +R10]
l1278: eorPL R14, R15, R3
l1279: ldr R0, l1281
l1280: b l1282
l1281: .word 1048516
l1282: swpLTb R14, R7, [R0]
l1283: cmp R0, R5, LSL #14
l1284: strGEh R11, [sp, #-16]
l1285: str R0, [sp, #+52]!
l1286: bNE l1293
l1287: add R1, R0, #107
l1288: orrCC R5, R7, R2, LSR R2
l1289: and R14, R10, #1073741885
l1290: eorNE R6, R8, R3, ROR R3
l1291: adc R3, R0, R0, ASR R4
l1292: b l1294
l1293: b l1288
l1294: subs R2, R9, R12
l1295: orrLE R1, R2, R5
l1296: mvns R7, R0, ASR R1
l1297: strh R11, [sp, #-60]
l1298: mov R0, #52
l1299: ldr R4, [sp], -R0
l1300: sub R2, R3, R4, RRX 
l1301: ldrCSh R12, [sp, #+16]
l1302: eorGE R14, R10, R11, ASR #15
l1303: eor R12, R12, #51200
l1304: str R0, [sp, #+44]!
l1305: mov R7, #6
l1306: ldrB R1, [sp, +R7]
l1307: eor R6, R8, R10
l1308: sbcCS R10, R3, R4, LSL R6
l1309: b l1310
l1310: subVC R1, R7, R2, ASR R3
l1311: bCC l1316
l1312: cmnMI R11, R3
l1313: bicGT R14, R15, R7, RRX 
l1314: cmnEQ R8, R12, RRX 
l1315: clz R0, R9
l1316: mvns R7, #40370176
l1317: mov R6, #34
l1318: ldrB R2, [sp, -R6]
l1319: stmLEIA R13, {R11, R15}
l1320: stmDA R13!, {R0, R1, R5, R7, R8, R9, R10, R11, R14, R15}
l1321: mvnVS R11, R11
l1322: b l1328
l1323: add R1, R0, #78
l1324: mvnPLs R2, R7, RRX 
l1325: tst R9, R10, LSR #13
l1326: rscGT R5, R6, R7
l1327: b l1329
l1328: b l1324
l1329: orrGEs R10, R9, R7
l1330: clz R3, R6
l1331: sbcMI R8, R11, R7, ASR #19
l1332: teqVC R8, #1024
l1333: bicVS R5, R15, #393216
l1334: bVS l1340
l1335: tstVC R10, #213909504
l1336: sub R4, R11, R7
l1337: subs R8, R12, #187695104
l1338: sub R10, R5, R14, LSR R5
l1339: rsbNEs R10, R2, #13248
l1340: teq R2, #11712
l1341: cmnNE R0, R0, LSL R5
l1342: adcEQs R11, R14, R0, LSR #4
l1343: ldmIA R13!, {R0, R1, R3, R5, R8, R10}
l1344: ldrGEsh R10, [sp, #-18]
l1345: eor R12, R4, R10, RRX 
l1346: rscGEs R6, R6, R14
l1347: mov R5, #2
l1348: ldrNEh R6, [sp, +R5]
l1349: eor R10, R4, #236
l1350: tst R5, R5, ROR #9
l1351: mov R9, #16
l1352: str R1, [sp, +R9]!
l1353: teq R7, #10092544
l1354: stmDB R13!, {R13}
l1355: mov R5, #43
l1356: ldrB R14, [sp, -R5]
l1357: ldmDA R13!, {R4}
l1358: bVC l1361
l1359: subLT R2, R2, R3, LSR R4
l1360: movs R11, R10, LSR R10
l1361: cmn R8, R12, LSR #18
l1362: stmDB R13!, {R13}
l1363: cmnGE R14, R7
l1364: ldmDA R13, {R6, R12}
l1365: rscGTs R0, R5, R6, RRX 
l1366: movs R11, R4, LSR R11
l1367: movEQ R0, R1, LSR #5
l1368: eorMIs R12, R7, R6
l1369: movHI R2, R2
l1370: mov R0, #4
l1371: ldrCSsb R5, [sp, -R0]
l1372: subCSs R11, R8, R6, ASR R10
l1373: strLE R0, [sp, #+0]
l1374: ldrGEsb R11, [sp, #+21]
l1375: bNE l1380
l1376: sbcGE R10, R12, R4, RRX 
l1377: mvnLTs R6, R1, RRX 
l1378: cmpVS R8, #21504
l1379: eor R5, R9, R10, ASR R2
l1380: mvnLEs R8, #556
l1381: sub R10, R11, #57671680
l1382: rsbCCs R8, R8, R1
l1383: clzCS R8, R14
l1384: clzVS R4, R1
l1385: rsbVC R8, R9, #688
l1386: adds R2, R2, #-1946157056
l1387: ldr R4, l1389
l1388: b l1390
l1389: .word 1048504
l1390: swpLEb R7, R8, [R4]
l1391: cmp R9, R11, RRX 
l1392: b l1399
l1393: andMI R3, R3, R7, RRX 
l1394: clzPL R4, R14
l1395: adds R9, R14, R6, ROR #4
l1396: mvn R12, R1, LSR #9
l1397: cmp R8, R9, LSR R5
l1398: sbcs R11, R8, #28
l1399: clz R2, R4
l1400: sub R6, R0, R7
l1401: strh R14, [sp, #-10]
l1402: andLS R11, R2, R10, LSR #29
l1403: subs R12, R3, R2, LSL R6
l1404: eorEQs R7, R8, R10, LSL R4
l1405: tst R4, R6, LSR #6
l1406: eor R7, R12, R9, LSR R1
l1407: bicVSs R4, R1, #41943040
l1408: ldr R3, l1410
l1409: b l1411
l1410: .word 1048552
l1411: swpLS R11, R4, [R3]
l1412: and R5, R4, R5, RRX 
l1413: mov R5, #15
l1414: ldrsb R7, [sp, +R5]
l1415: adcs R4, R1, R15
l1416: mov R14, #4
l1417: strEQh R6, [sp, -R14]
l1418: ldr R12, l1420
l1419: b l1421
l1420: .word 1048536
l1421: swpb R7, R10, [R12]
l1422: ldr R8, l1424
l1423: b l1425
l1424: .word 1048496
l1425: swpCS R0, R5, [R8]
l1426: mov R3, R1, RRX 
l1427: mov R10, #47
l1428: ldrLEB R0, [sp, -R10]
l1429: eor R4, R3, R6, RRX 
l1430: nop
l1431: andCCs R6, R2, #647168
l1432: orrs R8, R15, R3, ROR #16
l1433: adcEQs R3, R6, R4, LSL #22
l1434: tst R1, R10
l1435: ldr R4, l1437
l1436: b l1438
l1437: .word 1048512
l1438: swp R9, R3, [R4]
l1439: mov R5, #28
l1440: strVCh R4, [sp, -R5]
l1441: tst R14, #10048
l1442: ands R4, R5, R4, ASR R1
l1443: ldmDA R13!, {R9, R10}
l1444: teqCS R8, #-1442840576
l1445: str R5, [sp], #-24
l1446: bic R5, R6, R6, ROR #3
l1447: adcVCs R11, R4, R9, LSR #11
l1448: andPL R6, R1, #2048
l1449: movCCs R0, R4
l1450: rsbCS R11, R14, R7, LSL #3
l1451: addHI R10, R12, R1, ROR R10
l1452: subCC R14, R10, R10
l1453: cmpEQ R12, R14
l1454: adds R10, R9, #1342177281
l1455: b l1461
l1456: add R1, R0, #155
l1457: teq R10, #725614592
l1458: eorLT R12, R0, R4, ROR R8
l1459: add R3, R3, R2, LSR #24
l1460: b l1462
l1461: b l1457
l1462: orrs R12, R1, R5, ROR R14
l1463: orrCCs R14, R11, #30932992
l1464: clz R6, R8
l1465: cmnNE R9, R9, LSR #14
l1466: eorVS R14, R10, #286720
l1467: ldrVSsb R9, [sp, #-2]
l1468: add R12, R0, R10, ROR #30
l1469: orrCSs R5, R10, R12, ASR #18
l1470: subEQs R5, R6, R10, RRX 
l1471: str R11, [sp], #-16
l1472: teq R12, R6, LSL R6
l1473: orrVS R2, R3, #339968
l1474: sbcGE R12, R12, R10, ROR R11
l1475: b l1483
l1476: clzGE R8, R9
l1477: rsc R4, R9, #782336
l1478: tst R3, R2, ROR #29
l1479: tst R10, #104
l1480: orr R0, R14, R9
l1481: tst R2, R14, ROR R5
l1482: bic R12, R12, #2432
l1483: tst R7, R10, ASR R5
l1484: teqLT R5, R2, ASR R1
l1485: tstNE R4, #876544
l1486: rsbGE R3, R6, R10, LSR R14
l1487: subs R3, R4, R12
l1488: eorGTs R3, R10, R4
l1489: tst R9, #580
l1490: ldr R11, l1492
l1491: b l1493
l1492: .word 1048504
l1493: swpLSb R2, R2, [R11]
l1494: adcLE R2, R0, #220
l1495: adcNE R6, R8, #512
l1496: mov R11, #71
l1497: ldrB R6, [sp, +R11]
l1498: bicLSs R9, R4, R1, ROR #19
l1499: mov R11, #60
l1500: strNEh R1, [sp, +R11]
l1501: adcs R9, R11, R10, ASR R6
l1502: mvns R5, R11, LSR R6
l1503: eorLEs R10, R2, #1610612739
l1504: mov R0, #38
l1505: strCSh R12, [sp, +R0]
l1506: ldr R1, l1508
l1507: b l1509
l1508: .word 1048540
l1509: swpLTb R10, R4, [R1]
l1510: ldrNEsh R14, [sp, #+2]
l1511: stmIA R13, {R0, R1, R3, R4, R5, R6, R9, R10, R11, R12, R13, R15}
l1512: ldmIB R13!, {R0, R1, R4, R5, R6, R7, R8, R9, R10, R12}
l1513: mov R5, #5696
l1514: sbc R12, R2, #-1073741781
l1515: b l1522
l1516: clz R0, R10
l1517: movs R3, R15
l1518: cmp R4, R0, ASR R10
l1519: orrs R12, R14, R0, RRX 
l1520: cmn R14, #-402653184
l1521: rsb R1, R2, R12, ASR #1
l1522: subHIs R7, R5, R1, ROR #26
l1523: sbcs R2, R9, R10, RRX 
l1524: mvns R14, R14, LSR #20
l1525: eorLSs R3, R5, #100663296
l1526: stmDA R13!, {R2, R6, R7, R8, R9, R10, R12, R15}
l1527: strNEh R7, [sp, #+52]
l1528: bicEQ R2, R15, R12, ASR #23
l1529: bEQ l1537
l1530: andLE R3, R14, #37748736
l1531: subVS R7, R8, R1, LSL #12
l1532: teq R7, R14, ASR R7
l1533: mvnCCs R7, R2, LSR #31
l1534: cmpVC R14, #-872415232
l1535: sub R5, R3, R4, ROR R4
l1536: eorEQs R0, R15, R2
l1537: clzMI R12, R6
l1538: clzEQ R5, R9
l1539: ldr R3, l1541
l1540: b l1542
l1541: .word 1048544
l1542: swpLTb R4, R2, [R3]
l1543: subMI R12, R3, R9, LSL R5
l1544: rscVS R3, R12, R9
l1545: cmnCS R14, R4, ROR #6
l1546: ldr R11, l1548
l1547: b l1549
l1548: .word 1048552
l1549: swp R4, R10, [R11]
l1550: tstGT R7, #31
l1551: teqLS R1, R12
l1552: ldmIB R13, {R0, R4, R5}
l1553: mvn R2, R9, ASR R2
l1554: b l1561
l1555: adcHIs R5, R1, R0
l1556: clz R3, R14
l1557: sub R1, R1, R10, LSR #19
l1558: adcNEs R10, R2, R1, ASR R6
l1559: clzLE R0, R7
l1560: clzHI R11, R6
l1561: eors R6, R9, #53477376
l1562: eorLTs R1, R10, R10, ROR R0
l1563: ldrVSsh R2, [sp, #+36]
l1564: rscPL R1, R8, R1
l1565: andVCs R5, R2, R7, ROR R6
l1566: teq R4, R3, LSR #13
l1567: teqLE R8, #1577058304
l1568: bVC l1574
l1569: add R1, R0, #160
l1570: bic R7, R0, R14
l1571: bicNEs R10, R12, R4
l1572: addGE R5, R5, #-872415230
l1573: b l1575
l1574: b l1570
l1575: bCS l1580
l1576: add R1, R0, #113
l1577: adcHI R10, R7, #229638144
l1578: rsbs R8, R4, R11, ROR R8
l1579: b l1581
l1580: b l1577
l1581: bicHIs R14, R11, R10, LSL R0
l1582: orrs R0, R12, #5505024
l1583: add R4, R4, #1
l1584: sbcNEs R1, R2, R1
l1585: subCS R3, R1, R2, LSR #17
l1586: cmn R2, R5, ROR R2
l1587: sub R11, R3, #2998272
l1588: mov R1, #19
l1589: ldrsb R6, [sp, +R1]
l1590: cmnGT R7, R14, LSL #19
l1591: mvnCS R3, R11
l1592: mov R3, #0
l1593: str R0, [sp, +R3]!
l1594: cmp R9, #24641536
l1595: rsb R11, R14, R0
l1596: mov R3, #25
l1597: ldrsb R5, [sp, +R3]
l1598: movs R12, R7, ASR #17
l1599: subVSs R1, R9, #105906176
l1600: cmp R6, R1
l1601: clzVC R12, R11
l1602: bPL l1604
l1603: sbcs R4, R12, R1
l1604: adc R8, R0, #49807360
l1605: mov R4, #66
l1606: ldrsh R9, [sp, +R4]
l1607: ldr R8, l1609
l1608: b l1610
l1609: .word 1048524
l1610: swpVC R14, R9, [R8]
l1611: addMI R6, R6, R11, LSL R10
l1612: nop
l1613: b l1614
l1614: tstVS R4, R0, RRX 
l1615: ldrLEh R9, [sp, #+40]
l1616: ldrLTsb R14, [sp, #+23]
l1617: nop
l1618: subs R7, R9, R10, LSL R14
l1619: ldrsb R14, [sp, #+12]
l1620: orr R3, R11, R6
l1621: eorLEs R7, R12, R12
l1622: nop
l1623: adc R9, R4, R4, LSR R3
l1624: mov R10, #31
l1625: ldrB R8, [sp, +R10]
l1626: mvnLTs R7, R3, RRX 
l1627: subEQ R3, R10, R11, ASR #5
l1628: ldrCCB R12, [sp, #+32]
l1629: orrs R2, R9, #59136
l1630: tstPL R7, R2, RRX 
l1631: rsc R10, R11, #122
l1632: mov R5, #28
l1633: strMIh R12, [sp, +R5]
l1634: tst R15, R14, ROR #15
l1635: subEQ R0, R9, R0
l1636: mov R7, R1
l1637: strCCh R10, [sp, #+0]
l1638: strLT R7, [sp, #-4]
l1639: nop
l1640: eorNE R10, R0, R2
l1641: rsbLSs R8, R1, R0, ASR #11
l1642: subCS R0, R1, R10, LSR R1
l1643: ldr R2, l1645
l1644: b l1646
l1645: .word 1048492
l1646: swpGTb R10, R8, [R2]
l1647: ldrLEB R7, [sp, #+24]
l1648: b l1656
l1649: add R1, R0, #58
l1650: cmnVS R14, #155
l1651: cmn R1, R2
l1652: mvnLEs R2, R1, RRX 
l1653: bicHI R2, R0, R14, LSL R10
l1654: rscCS R1, R12, #798720
l1655: b l1657
l1656: b l1650
l1657: cmpCS R12, R8, ASR R3
l1658: cmnLS R8, #-1073741824
l1659: cmnVS R11, R9, ASR #20
l1660: andVS R5, R6, #11796480
l1661: rscMI R11, R14, #310378496
l1662: nop
l1663: strh R3, [sp, #+16]
l1664: ldr R2, [sp, #+56]
l1665: sbc R5, R4, R10, LSL R0
l1666: strHIh R11, [sp, #-4]
l1667: ldrsh R11, [sp, #+22]
l1668: subHIs R14, R8, R10, LSL R3
l1669: ldrHIsh R14, [sp, #+0]
l1670: rsb R14, R14, #749568
l1671: subGTs R4, R9, R9
l1672: mov R6, #30
l1673: ldrHIsh R5, [sp, +R6]
l1674: bVC l1675
l1675: clzVC R4, R12
l1676: eorLS R8, R3, R8
l1677: bicVC R4, R11, R9
l1678: nop
l1679: bics R6, R3, R7
l1680: addGT R2, R12, R12, LSL #10
l1681: subNEs R14, R2, R2, LSL R1
l1682: tstEQ R5, R10, ASR #28
l1683: mov R5, #63
l1684: ldrB R3, [sp, +R5]
l1685: mov R0, #0
l1686: strEQB R4, [sp, +R0]
l1687: bics R5, R6, #227328
l1688: b l1695
l1689: add R1, R0, #102
l1690: rscs R10, R5, R6, LSR #1
l1691: addLE R5, R1, R9
l1692: subCC R0, R7, R1, ASR R2
l1693: rscs R10, R5, R7, LSR R4
l1694: b l1696
l1695: b l1690
l1696: bCC l1702
l1697: teq R6, R9, RRX 
l1698: mvns R4, R11, LSR R4
l1699: orrLT R14, R2, #-536870899
l1700: sub R11, R6, R0
l1701: subs R12, R11, R14, ROR #28
l1702: rsb R6, R12, R8, RRX 
l1703: strB R8, [sp, #+45]
l1704: cmnNE R4, R2, ROR #31
l1705: tstGT R11, R3, LSR R12
l1706: movs R2, #-1811939327
l1707: ands R2, R8, #45088768
l1708: cmnGE R7, R15, ROR #7
l1709: tst R9, R9, ASR #2
l1710: mvns R2, R12
l1711: mov R2, #24
l1712: ldr R10, [sp], +R2
l1713: ldmDB R13!, {R2, R6, R7, R8, R14}
l1714: orrVSs R7, R5, R14
l1715: subGTs R9, R14, R12
l1716: orrMIs R2, R1, R15, RRX 
l1717: ldrPLsb R2, [sp, #+49]
l1718: cmn R7, R6, LSL #10
l1719: rsbNEs R11, R14, #-1879048184
l1720: mov R6, #4
l1721: ldr R14, [sp, +R6]!
l1722: bCS l1732
l1723: cmpVC R4, R0, LSR #26
l1724: sbcs R7, R0, #838860800
l1725: movs R1, R15, ROR #5
l1726: movVS R0, #-1342177280
l1727: bicLT R0, R0, #32768
l1728: sbc R11, R3, #-402653184
l1729: sbcPL R9, R5, #448
l1730: eorHI R4, R2, R5, RRX 
l1731: movs R1, R0, ROR R12
l1732: and R6, R1, R1
l1733: bicLT R6, R10, #115
l1734: eor R5, R0, R14, LSR #23
l1735: mov R3, #34
l1736: strh R14, [sp, +R3]
l1737: eorMI R7, R4, R4
l1738: ldr R0, l1740
l1739: b l1741
l1740: .word 1048484
l1741: swpLE R12, R4, [R0]
l1742: ldr R1, l1744
l1743: b l1745
l1744: .word 1048516
l1745: swpVCb R12, R6, [R1]
l1746: sbcHI R11, R14, R7, ROR #18
l1747: eors R10, R4, R10, LSR #29
l1748: mvnPLs R1, R10, RRX 
l1749: rsc R2, R11, R12, LSL #12
l1750: clz R8, R10
l1751: ldrMIB R11, [sp, #+13]
l1752: rscMIs R5, R12, R1
l1753: mov R9, #17
l1754: ldrEQsb R10, [sp, +R9]
l1755: andLS R11, R2, R2, ASR #6
l1756: ldmMIDB R13, {R2, R10}
l1757: teqLT R1, R4, LSR R0
l1758: bic R10, R2, R7, RRX 
l1759: mov R7, #16
l1760: ldrVCB R6, [sp, +R7]
l1761: ldr R14, l1763
l1762: b l1764
l1763: .word 1048496
l1764: swpGTb R10, R6, [R14]
l1765: eorEQs R5, R8, #26214400
l1766: ands R10, R7, R7
l1767: orrs R0, R12, #1610612751
l1768: cmn R14, #13056
l1769: movGTs R9, R15
l1770: adcVC R9, R6, R11
l1771: rsbEQs R6, R5, R2, RRX 
l1772: adcLT R10, R4, #-2147483609
l1773: orrPL R6, R0, R0, RRX 
l1774: ldr R8, l1776
l1775: b l1777
l1776: .word 1048504
l1777: swpPLb R3, R7, [R8]
l1778: nop
l1779: mov R0, #7
l1780: ldrCSB R1, [sp, -R0]
l1781: mov R9, #7
l1782: ldrVCB R7, [sp, -R9]
l1783: tstMI R11, R15
l1784: tstVS R12, #1543503875
l1785: mov R2, #32
l1786: ldrB R9, [sp, +R2]
l1787: mvnMI R0, R15
l1788: cmp R6, #-822083584
l1789: ldrB R8, [sp, #+35]
l1790: clzVC R7, R5
l1791: bGE l1800
l1792: rscs R7, R9, #268435456
l1793: eor R12, R8, R14, ROR #25
l1794: teqVS R6, R12
l1795: sbc R1, R9, R0, RRX 
l1796: orrLTs R8, R14, R12
l1797: subGTs R3, R6, R3
l1798: clzMI R0, R3
l1799: clzPL R10, R12
l1800: subLTs R3, R6, #-1744830464
l1801: orrEQ R9, R1, R10, ASR #30
l1802: adcs R7, R2, #24379392
l1803: strB R10, [sp, #+26]
l1804: mov R2, #44
l1805: str R8, [sp, +R2]!
l1806: rsbLT R2, R3, R0, ROR R5
l1807: andNEs R0, R12, #2654208
l1808: cmnEQ R8, R12, RRX 
l1809: subMIs R5, R10, #980
l1810: stmDB R13, {R2, R9}
l1811: bNE l1816
l1812: add R1, R0, #21
l1813: teq R7, R4
l1814: cmp R7, R9, ASR #23
l1815: b l1817
l1816: b l1813
l1817: mov R5, #8
l1818: ldrh R8, [sp, +R5]
l1819: ldrB R3, [sp, #-23]
l1820: ldmMIDA R13, {R0, R2, R3, R4, R5, R7, R10, R12, R14}
l1821: ldr R6, l1823
l1822: b l1824
l1823: .word 1048484
l1824: swpVSb R0, R12, [R6]
l1825: rsc R11, R15, R8
l1826: ldrMIsb R4, [sp, #+13]
l1827: orrGEs R1, R3, R12, RRX 
l1828: b l1832
l1829: addVC R3, R8, R2, LSL #13
l1830: cmp R8, R11, ROR #17
l1831: ands R1, R15, R12
l1832: subCS R5, R9, R3, LSL #10
l1833: ldrLEsb R1, [sp, #-23]
l1834: strCCB R4, [sp, #-48]
l1835: cmnLS R8, R1, ASR R7
l1836: ldrh R10, [sp, #-48]
l1837: clz R8, R14
l1838: bLS l1842
l1839: add R1, R0, #92
l1840: movs R8, R3
l1841: b l1843
l1842: b l1840
l1843: ldr R3, l1845
l1844: b l1846
l1845: .word 1048520
l1846: swpb R7, R4, [R3]
l1847: mov R5, #6
l1848: ldrLSsh R2, [sp, +R5]
l1849: ldrGEsh R10, [sp, #-36]
l1850: ldrGEsh R12, [sp, #-16]
l1851: ldrsb R12, [sp, #-55]
l1852: bicGTs R0, R12, R2
l1853: movLT R11, #223
l1854: ldrsh R6, [sp, #-30]
l1855: subCCs R8, R0, R11
l1856: ldmPLDB R13, {R0, R1, R2, R3, R4, R5, R7, R8, R9, R10, R12, R14}
l1857: sub R9, R14, R12, ASR #9
l1858: ldrLTB R4, [sp, #-42]
l1859: eor R3, R10, R14, LSR R14
l1860: bGE l1865
l1861: add R1, R0, #146
l1862: mvnNEs R4, R2, LSR R11
l1863: teqMI R0, R5, LSL #15
l1864: b l1866
l1865: b l1862
l1866: ldmIB R13!, {R8, R10}
l1867: cmn R9, #64512
l1868: and R5, R10, R6
l1869: ldrsb R0, [sp, #-40]
l1870: orrGEs R12, R5, #14912
l1871: bicGT R7, R4, R2, ASR #2
l1872: str R15, [sp, #-8]!
l1873: mov R3, #0
l1874: str R9, [sp], +R3
l1875: adcHI R2, R14, R0
l1876: ldr R4, l1878
l1877: b l1879
l1878: .word 1048504
l1879: swp R11, R3, [R4]
l1880: ldr R1, l1882
l1881: b l1883
l1882: .word 1048548
l1883: swp R9, R2, [R1]
l1884: stmIB R13!, {R12}
l1885: ldrEQ R3, [sp, #-60]
l1886: bic R9, R12, #3
l1887: bic R5, R1, R14
l1888: bicVSs R11, R9, R4
l1889: bic R5, R3, R6, ASR #5
l1890: ldmDA R13!, {R1, R2, R4, R5, R6, R8, R9, R11, R12, R14}
l1891: teq R11, R1, ASR R14
l1892: bics R2, R8, R9, LSR #5
l1893: b l1901
l1894: add R1, R0, #89
l1895: cmnEQ R10, R14, ASR #3
l1896: adcGE R1, R14, #14680064
l1897: add R14, R0, R6
l1898: addCC R8, R4, #-1409286142
l1899: rsc R9, R8, R0
l1900: b l1902
l1901: b l1895
l1902: orrHI R2, R9, R15
l1903: orr R5, R7, R0, LSL #27
l1904: adcPLs R2, R3, #-318767104
l1905: sub R10, R8, R4, ASR R8
l1906: ldr R8, l1908
l1907: b l1909
l1908: .word 1048548
l1909: swpGE R14, R4, [R8]
l1910: ldr R14, l1912
l1911: b l1913
l1912: .word 1048492
l1913: swpb R9, R10, [R14]
l1914: nop
l1915: tst R10, R4, RRX 
l1916: strLS R15, [sp, #+12]
l1917: sbcs R5, R11, R15, LSR #5
l1918: mov R6, #38
l1919: ldrHIh R0, [sp, +R6]
l1920: strLTB R6, [sp, #+15]
l1921: movPL R4, R14, LSL #7
l1922: sbcVCs R5, R0, R3, LSR R8
l1923: ldmIA R13!, {R0, R14}
l1924: strHIB R0, [sp, #-14]
l1925: cmpNE R15, R9
l1926: mov R8, #8
l1927: ldr R14, [sp, +R8]!
l1928: ldrLEh R7, [sp, #+4]
l1929: adcCSs R1, R0, R4
l1930: mov R6, #35
l1931: strB R0, [sp, +R6]
l1932: b l1936
l1933: sbc R6, R3, R1, RRX 
l1934: adcVSs R10, R4, R4, LSR R2
l1935: rsb R0, R1, #14
l1936: tst R10, R0, ASR #13
l1937: mov R2, #29
l1938: ldrB R4, [sp, -R2]
l1939: mvnLEs R9, #7936
l1940: bicNE R8, R7, R15
l1941: mov R2, #39
l1942: ldrVSsb R11, [sp, -R2]
l1943: rsbVSs R12, R0, #65536
l1944: ldr R5, l1946
l1945: b l1947
l1946: .word 1048504
l1947: swpCS R10, R10, [R5]
l1948: eor R2, R0, R10, LSL #29
l1949: addGEs R2, R7, R11
l1950: orrs R2, R15, R6
l1951: strCSh R0, [sp, #+14]
l1952: clzVC R9, R14
l1953: b l1960
l1954: add R1, R0, #36
l1955: sbcs R8, R5, R11, RRX 
l1956: subs R10, R15, R14, LSL #11
l1957: eors R8, R9, R3
l1958: eor R2, R15, #3014656
l1959: b l1961
l1960: b l1955
l1961: mov R8, #32
l1962: strB R6, [sp, +R8]
l1963: mov R10, #24
l1964: ldrVSsb R4, [sp, +R10]
l1965: strLEB R11, [sp, #-30]
l1966: ldrsb R11, [sp, #-40]
l1967: and R7, R11, R3, LSR R3
l1968: cmp R1, #948
l1969: movNE R1, R5, ASR #3
l1970: ldrB R14, [sp, #+26]
l1971: rscs R1, R1, R10, LSL #23
l1972: ldrMIB R10, [sp, #-38]
l1973: bMI l1979
l1974: subHIs R5, R4, R0
l1975: tst R4, #1761607680
l1976: movLSs R3, R3, LSR R9
l1977: eorMIs R5, R12, R8, LSR R4
l1978: clzGE R4, R1
l1979: rscLE R3, R6, #1008
l1980: tstPL R0, #-2147483591
l1981: orrs R12, R11, #215
l1982: mvnVSs R12, R14
l1983: bEQ l1993
l1984: teq R6, #2096
l1985: teqCS R8, R12, ASR R2
l1986: orrVCs R7, R11, R10, RRX 
l1987: adcs R11, R9, R2, ROR R8
l1988: orrLTs R2, R14, R11, RRX 
l1989: rscs R10, R4, R14, ASR R5
l1990: adds R0, R12, #57671680
l1991: rsbGE R3, R7, R14
l1992: mvnCSs R10, #1472
l1993: mvn R5, R12, ASR #7
l1994: mov R2, #12
l1995: ldrsb R6, [sp, -R2]
l1996: mov R10, #4
l1997: ldrHIh R1, [sp, +R10]
l1998: subGT R6, R15, R12, RRX 
l1999: adds R6, R12, #152
l2000: ldr R8, [sp], #+12
l2001: ldrLTB R12, [sp, #-17]
l2002: tstLT R4, R9, LSR R7
l2003: ldr R1, l2005
l2004: b l2006
l2005: .word 1048544
l2006: swpGT R3, R12, [R1]
l2007: rsb R2, R12, R8
l2008: orrLSs R5, R10, R9
l2009: adcs R9, R10, R2, ASR R1
l2010: bVS l2019
l2011: add R1, R0, #168
l2012: eors R0, R10, R2, LSL R12
l2013: bic R14, R6, R4, LSL R0
l2014: andHI R11, R12, R3
l2015: subLTs R1, R2, R2
l2016: rsbGE R7, R5, #-1073741772
l2017: rscEQ R4, R14, R11, ASR #9
l2018: b l2020
l2019: b l2012
l2020: cmnPL R5, #274432
l2021: sub R7, R5, R11
l2022: strCC R3, [sp, #-48]
l2023: bLE l2032
l2024: rsb R8, R12, R10, ROR #16
l2025: bicLTs R10, R1, #-2147483641
l2026: andVCs R14, R11, R2, LSL #3
l2027: cmn R4, R14, RRX 
l2028: bics R11, R6, R14, ASR R6
l2029: cmn R9, R2, ASR R11
l2030: orrs R5, R14, R0, RRX 
l2031: cmn R4, R11, LSL R14
l2032: mvnMIs R11, #3328
l2033: sub R2, R8, R15
l2034: b l2043
l2035: cmn R5, R7
l2036: teqNE R15, R7, RRX 
l2037: sbcLE R5, R9, R1, ASR R14
l2038: tstVC R15, R15
l2039: cmn R14, R8
l2040: cmp R14, R4
l2041: tstEQ R1, R5
l2042: tst R6, R3, LSR R3
l2043: mvnVC R2, R6, LSL R9
l2044: cmnVS R2, R9, LSR R14
l2045: clzNE R12, R7
l2046: rsbs R10, R9, R4, RRX 
l2047: ldrEQsh R1, [sp, #-16]
l2048: ldr R3, l2050
l2049: b l2051
l2050: .word 1048544
l2051: swpb R7, R12, [R3]
l2052: rscs R12, R8, R9, RRX 
l2053: orr R5, R15, #2784
l2054: bCC l2063
l2055: add R1, R0, #1
l2056: movs R9, R11, LSR R3
l2057: cmp R5, #1728
l2058: orrs R12, R15, R10
l2059: cmpCS R15, #14656
l2060: movCC R5, R12, ASR #17
l2061: eorGTs R11, R8, #448790528
l2062: b l2064
l2063: b l2056
l2064: str R1, [sp, #+4]
l2065: ldr R10, l2067
l2066: b l2068
l2067: .word 1048496
l2068: swpb R7, R7, [R10]
l2069: rsbLTs R8, R11, R9
l2070: and R6, R8, R5, RRX 
l2071: and R6, R3, #160
l2072: strVC R14, [sp, #-24]
l2073: str R1, [sp, #-20]
l2074: cmp R10, R3, LSR #10
l2075: movVS R10, R9, ROR R11
l2076: bic R10, R15, R0, ROR #17
l2077: bHI l2080
l2078: cmp R2, R11
l2079: subNE R9, R10, R11, LSR R0
l2080: clzGE R14, R10
l2081: cmnGE R6, R3, LSR R10
l2082: mov R4, #40
l2083: str R12, [sp, -R4]!
l2084: mov R2, #3
l2085: strB R2, [sp, +R2]
l2086: bicGEs R2, R9, R4, LSR #7
l2087: ldrMIB R0, [sp, #+32]
l2088: subLE R8, R4, R12
l2089: str R10, [sp, #+52]
l2090: stmDA R13, {R9}
l2091: rscNEs R1, R1, #8832
l2092: mov R5, #8
l2093: ldrsb R12, [sp, -R5]
l2094: strGTB R1, [sp, #+10]
l2095: stmIA R13!, {R13, R15}
l2096: strVCh R1, [sp, #+10]
l2097: stmDA R13!, {R0, R1, R3}
l2098: adcPLs R9, R10, #805306380
l2099: bHI l2109
l2100: clzCC R8, R11
l2101: mvns R1, R7
l2102: movLEs R10, R9
l2103: andHIs R2, R7, R6
l2104: mvnMI R3, R6, ASR #16
l2105: rscs R9, R11, R0
l2106: sub R8, R0, R9, LSL #24
l2107: sbcVC R10, R0, R8, LSL R6
l2108: cmp R5, #131
l2109: cmp R8, R3, LSR #20
l2110: nop
l2111: and R8, R5, R8, RRX 
l2112: eorCC R1, R8, R7, LSL R12
l2113: mov R11, #56
l2114: strCS R3, [sp, +R11]
l2115: strNEB R6, [sp, #+13]
l2116: ldr R14, l2118
l2117: b l2119
l2118: .word 1048496
l2119: swpPLb R5, R6, [R14]
l2120: add R5, R14, R8
l2121: ldr R9, l2123
l2122: b l2124
l2123: .word 1048552
l2124: swpb R3, R0, [R9]
l2125: stmIA R13, {R0, R1, R10, R11, R13, R14}
l2126: mov R1, #57
l2127: ldrLTsb R1, [sp, +R1]
l2128: mvn R9, R6, RRX 
l2129: orrs R4, R3, #-1342177279
l2130: rsbs R3, R5, R2, ASR R10
l2131: cmn R11, R10, ROR #5
l2132: ldrh R11, [sp, #+0]
l2133: ldr R2, l2135
l2134: b l2136
l2135: .word 1048512
l2136: swpCSb R12, R3, [R2]
l2137: mov R4, #44
l2138: ldr R7, [sp, +R4]
l2139: mov R3, #24
l2140: ldr R1, [sp, +R3]!
l2141: addGT R1, R6, #168960
l2142: mov R2, #13
l2143: ldrGTsb R3, [sp, -R2]
l2144: rscs R5, R14, R10, RRX 
l2145: ldmIB R13!, {R2, R6, R10, R11, R14}
l2146: teqGE R0, R2, LSL R14
l2147: cmpEQ R15, R15
l2148: mov R12, #36
l2149: ldrEQh R11, [sp, -R12]
l2150: strGEh R9, [sp, #-24]
l2151: teqNE R8, #55
l2152: mov R8, #10
l2153: strNEB R11, [sp, +R8]
l2154: bLT l2160
l2155: add R1, R0, #135
l2156: movs R14, R6
l2157: cmpVS R4, R3, LSR R2
l2158: mov R0, R15, RRX 
l2159: b l2161
l2160: b l2156
l2161: subLTs R14, R15, R6, RRX 
l2162: str R2, [sp, #-28]
l2163: tst R7, R10, LSL #8
l2164: ldr R14, l2166
l2165: b l2167
l2166: .word 1048496
l2167: swpb R6, R3, [R14]
l2168: strLTB R12, [sp, #+18]
l2169: mov R2, #26
l2170: ldrCCsh R0, [sp, -R2]
l2171: cmnPL R1, R0, LSL R4
l2172: strVSh R11, [sp, #-16]
l2173: bPL l2178
l2174: add R1, R0, #254
l2175: andCCs R4, R4, R6
l2176: mvnVS R14, R12, ASR #5
l2177: b l2179
l2178: b l2175
l2179: sbcGT R4, R0, R3, ASR R0
l2180: stmIA R13!, {R0, R3, R8, R11}
l2181: sbcHIs R4, R3, R9, LSR #5
l2182: rscs R12, R6, R12, ASR R2
l2183: ldr R8, [sp], #-64
l2184: mov R1, #28
l2185: ldrLTsb R2, [sp, +R1]
l2186: mov R3, #54
l2187: ldrLSh R9, [sp, +R3]
l2188: mov R4, #12
l2189: strLTB R14, [sp, +R4]
l2190: addEQ R3, R6, R12, ASR #17
l2191: orrGT R9, R7, R6, ASR #10
l2192: movLE R10, R5, ROR #1
l2193: b l2202
l2194: tstHI R6, R8, ROR R3
l2195: eor R1, R1, R10
l2196: subs R10, R2, R8, LSR R10
l2197: cmnCC R11, R14, LSR R3
l2198: orrPLs R5, R6, R6
l2199: tstCC R10, R8
l2200: andNEs R9, R10, #32
l2201: rsbs R10, R15, R1, ASR #30
l2202: subs R11, R4, R12, LSL R11
l2203: mvnLTs R9, R2, ROR #20
l2204: eorVSs R6, R4, R7, RRX 
l2205: ldrB R6, [sp, #+65]
l2206: cmnNE R15, R5, LSL #27
l2207: strLTh R3, [sp, #+32]
l2208: eorMI R14, R7, #231735296
l2209: movVS R11, R1
l2210: subMI R1, R8, R7, ROR #24
l2211: nop
l2212: mov R5, #24
l2213: str R6, [sp, +R5]!
l2214: andCS R3, R10, R2
l2215: ldr R10, l2217
l2216: b l2218
l2217: .word 1048488
l2218: swp R1, R8, [R10]
l2219: cmn R1, R8, LSL #5
l2220: nop
l2221: eorLSs R9, R2, #180224
l2222: mov R12, #18
l2223: ldrEQB R4, [sp, -R12]
l2224: mov R5, #21
l2225: ldrsb R2, [sp, -R5]
l2226: andLT R1, R6, R11, RRX 
l2227: b l2236
l2228: add R1, R0, #175
l2229: cmp R2, #65011712
l2230: sbcLEs R0, R0, R10, ASR #12
l2231: adds R11, R15, #901120
l2232: cmpNE R14, R5
l2233: rsbNEs R0, R9, R7, ROR R5
l2234: eorNEs R11, R11, #402653185
l2235: b l2237
l2236: b l2229
l2237: bicCS R5, R0, R15, LSL #31
l2238: bicVC R4, R3, #191889408
l2239: tstLE R9, #226492416
l2240: mov R8, #4
l2241: ldrLSsh R10, [sp, -R8]
l2242: ldr R11, l2244
l2243: b l2245
l2244: .word 1048532
l2245: swpPL R9, R2, [R11]
l2246: mov R1, #9
l2247: ldrLTB R5, [sp, +R1]
l2248: orrCS R1, R9, R14, LSR R11
l2249: rsbGE R1, R11, #244736
l2250: sbcGEs R10, R4, R5
l2251: mov R0, #20
l2252: str R11, [sp], -R0
l2253: orr R11, R5, R10, ROR R11
l2254: clzGT R4, R8
l2255: mvnGTs R7, #262144
l2256: adcMIs R1, R3, R1, RRX 
l2257: ldrB R12, [sp, #+16]
l2258: bCC l2264
l2259: sbcPLs R14, R12, R10
l2260: rsc R1, R3, R2, LSL #31
l2261: adcNEs R8, R10, R12, ASR #14
l2262: mvnLS R8, R0
l2263: cmpVC R9, R5, ASR R14
l2264: sbcs R12, R12, R2
l2265: ldrLSsb R2, [sp, #-8]
l2266: subLT R1, R15, #268435456
l2267: nop
l2268: mov R3, R4
l2269: tstGT R14, R15, LSR #16
l2270: ldrCCB R2, [sp, #+22]
l2271: mov R5, #12
l2272: ldr R8, [sp], +R5
l2273: mov R2, #12
l2274: strLEh R11, [sp, +R2]
l2275: adds R8, R2, #10485760
l2276: rsbVS R11, R10, R3
l2277: subMI R4, R11, R8, LSL R14
l2278: cmpGT R4, R15
l2279: andLE R9, R0, R10, LSR R12
l2280: sbcs R1, R3, R3, ASR R5
l2281: tst R6, R1, ROR R7
l2282: sbcs R4, R6, #179306496
l2283: cmnGT R1, R2, ROR R1
l2284: ldrsb R11, [sp, #-16]
l2285: cmn R10, R15
l2286: cmn R3, R6
l2287: sbcs R5, R14, R11
l2288: ldr R2, l2290
l2289: b l2291
l2290: .word 1048548
l2291: swpLE R14, R9, [R2]
l2292: mvnMIs R9, R10
l2293: clzHI R2, R4
l2294: addGE R6, R3, R14, LSR R0
l2295: sbcLE R8, R11, R10
l2296: stmCCIB R13, {R2, R3, R11}
l2297: ldr R12, l2299
l2298: b l2300
l2299: .word 1048548
l2300: swpLSb R2, R5, [R12]
l2301: str R9, [sp, #-8]!
l2302: strCSh R6, [sp, #-4]
l2303: cmnVS R5, R1, LSR #17
l2304: sbcMIs R4, R14, R6, LSL R5
l2305: ldr R14, l2307
l2306: b l2308
l2307: .word 1048488
l2308: swpb R0, R12, [R14]
l2309: b l2314
l2310: add R1, R0, #105
l2311: clz R14, R11
l2312: cmpVS R1, R0, ROR R14
l2313: b l2315
l2314: b l2311
l2315: ldrGTsh R5, [sp, #+62]
l2316: mov R12, #0
l2317: ldrEQsh R8, [sp, +R12]
l2318: rsbs R1, R4, #83886080
l2319: b l2328
l2320: add R1, R0, #200
l2321: and R14, R3, R12, ROR R12
l2322: cmpVC R4, #5636096
l2323: cmp R11, R1, ROR #13
l2324: andHIs R9, R11, R9, RRX 
l2325: andVS R7, R2, R9, RRX 
l2326: adcVCs R12, R5, R11, LSL R5
l2327: b l2329
l2328: b l2321
l2329: rsb R14, R2, R9
l2330: mvnGEs R1, R0, RRX 
l2331: b l2336
l2332: add R1, R0, #218
l2333: rsbLEs R7, R5, #25600
l2334: adcHI R14, R2, R0, ASR #14
l2335: b l2337
l2336: b l2333
l2337: orr R4, R8, R9, LSL R6
l2338: nop
l2339: rsbLE R2, R9, R10
l2340: clz R4, R4
l2341: ldrsh R0, [sp, #+34]
l2342: nop
l2343: rsbs R12, R7, #13172736
l2344: strB R5, [sp, #+31]
l2345: bicLTs R8, R4, #-738197504
l2346: tstMI R2, R10, RRX 
l2347: sub R4, R5, R4, LSR R1
l2348: strCCh R3, [sp, #+52]
l2349: eorMI R9, R14, R11
l2350: mvns R3, R1, ASR #13
l2351: mov R12, #38
l2352: strEQh R7, [sp, +R12]
l2353: andVSs R5, R3, R3
l2354: sbcPLs R11, R10, R10, RRX 
l2355: orrVS R2, R9, #215
l2356: bics R5, R14, R12, LSR R3
l2357: b l2366
l2358: rsbMIs R7, R3, R11, RRX 
l2359: bicPL R4, R15, #-536870897
l2360: cmpMI R12, R11, ROR #28
l2361: rscMI R9, R4, R8, LSR #27
l2362: movs R2, #1879048192
l2363: adds R1, R14, R0
l2364: andVS R0, R0, #243269632
l2365: rscs R4, R1, R9, RRX 
l2366: sub R2, R0, R0, ASR R9
l2367: ldr R10, l2369
l2368: b l2370
l2369: .word 1048524
l2370: swpNEb R8, R8, [R10]
l2371: str R7, [sp], #+32
l2372: ldmDB R13!, {R5}
l2373: eorLEs R10, R5, #256
l2374: ldrsb R8, [sp, #+15]
l2375: rscVSs R11, R0, R12
l2376: teq R10, R8, LSL R2
l2377: mov R2, #8
l2378: strh R2, [sp, +R2]
l2379: ldr R6, l2381
l2380: b l2382
l2381: .word 1048480
l2382: swpVCb R11, R5, [R6]
l2383: and R12, R15, R2
l2384: movNE R10, R4, ROR #18
l2385: bLE l2394
l2386: add R1, R0, #186
l2387: andPLs R4, R10, #528482304
l2388: adcs R1, R3, R11, ASR R9
l2389: sub R1, R4, #132096
l2390: bic R9, R14, R2
l2391: cmnGT R1, R4, LSL #26
l2392: andEQ R1, R12, R12, LSL R7
l2393: b l2395
l2394: b l2387
l2395: ldrh R6, [sp, #+4]
l2396: subLEs R6, R4, #721420288
l2397: orrLSs R3, R4, R3, LSR R1
l2398: stmIB R13!, {R13}
l2399: cmpLT R14, R9, LSR R4
l2400: strB R11, [sp, #+28]
l2401: subPLs R2, R3, #1409286147
l2402: addLE R12, R9, #1610612737
l2403: movVC R6, #1006632962
l2404: bic R6, R6, R9, LSR #29
l2405: tstLS R8, R10, ASR #9
l2406: strPLB R2, [sp, #+4]
l2407: cmnGE R10, R10, LSR #28
l2408: andGE R8, R8, R9
l2409: rscPL R3, R8, R14, LSR #6
l2410: rscCCs R5, R11, R14
l2411: strEQB R9, [sp, #+1]
l2412: rsbEQs R4, R2, R3
l2413: strEQB R8, [sp, #+20]
l2414: eorLE R0, R1, R7, ROR R3
l2415: ldr R2, [sp, #-40]
l2416: mov R9, #2
l2417: strLEB R6, [sp, +R9]
l2418: adcLEs R6, R9, R10
l2419: cmnPL R12, #637534208
l2420: addEQs R12, R12, R2, LSL #15
l2421: eorCC R7, R4, R10, RRX 
l2422: mov R1, #24
l2423: ldrsh R11, [sp, +R1]
l2424: bicGTs R14, R3, R5, ROR R3
l2425: mvnMIs R1, R12, ROR #23
l2426: subLE R10, R3, R1
l2427: str R6, [sp], #-4
l2428: bics R0, R10, R2
l2429: ldrGEh R2, [sp, #+14]
l2430: ldrCCh R11, [sp, #-26]
l2431: eor R6, R11, R2, LSL #25
l2432: mov R8, #24
l2433: strLEh R1, [sp, -R8]
l2434: tstGE R7, R2, ASR #4
l2435: ldr R14, l2437
l2436: b l2438
l2437: .word 1048540
l2438: swpb R5, R8, [R14]
l2439: clzGT R7, R12
l2440: mov R2, #12
l2441: strPLh R1, [sp, +R2]
l2442: sub R6, R7, R2, RRX 
l2443: bic R1, R3, R0, ROR #24
l2444: ldmLTIA R13, {R0, R1, R6, R8, R11, R12}
l2445: str R2, [sp], #-20
l2446: eors R2, R4, R8, LSL #12
l2447: strHIh R11, [sp, #+32]
l2448: rscVCs R1, R4, R0
l2449: str R4, [sp, #-20]
l2450: teqHI R5, R6, RRX 
l2451: sbcNE R2, R11, R9, LSR #5
l2452: mov R10, #8
l2453: ldr R2, [sp, -R10]!
l2454: ldmIA R13!, {R0, R1, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l2455: cmnNE R4, R14, ROR R8
l2456: mov R2, #16
l2457: strh R5, [sp, -R2]
l2458: strLEh R11, [sp, #-6]
l2459: teq R12, #44
l2460: mvnLTs R1, R8, LSL #26
l2461: mov R10, R5
l2462: orrs R6, R5, #3808
l2463: mov R6, #6
l2464: ldrsh R12, [sp, +R6]
l2465: eor R8, R15, R9, LSL #15
l2466: orrHIs R8, R3, #630784
l2467: mov R3, R5
l2468: clz R0, R3
l2469: cmnLT R14, R15, RRX 
l2470: ldr R9, l2472
l2471: b l2473
l2472: .word 1048528
l2473: swp R2, R8, [R9]
l2474: ldrLEB R4, [sp, #-11]
l2475: andCCs R11, R6, #-2147483606
l2476: mov R3, #42
l2477: strGTh R1, [sp, -R3]
l2478: mov R10, #14
l2479: ldrMIh R12, [sp, +R10]
l2480: ldmDA R13!, {R1}
l2481: addNE R2, R4, #4128768
l2482: bics R14, R8, R1, LSL #29
l2483: mov R11, #16
l2484: ldrLSB R5, [sp, +R11]
l2485: ldrHIsb R0, [sp, #+10]
l2486: rscNEs R5, R2, R4, ASR #29
l2487: str R1, [sp, #+20]
l2488: ands R12, R10, R9, ASR R3
l2489: mov R4, R3
l2490: eors R3, R6, #4112384
l2491: eorLT R9, R3, R3
l2492: mov R2, #12
l2493: strVS R9, [sp, -R2]
l2494: tst R9, R9, ROR R14
l2495: clz R3, R4
l2496: mvn R7, R2, ASR #20
l2497: teq R10, R0, LSL R1
l2498: tstHI R15, #-536870904
l2499: mov R8, #16
l2500: ldr R0, [sp, -R8]!
l2501: adcGTs R11, R3, R15, RRX 
l2502: mov R9, #18
l2503: strLEh R12, [sp, +R9]
l2504: movVC R7, R12
l2505: cmnEQ R3, R5, RRX 
l2506: eor R11, R4, #-134217728
l2507: mov R14, #24
l2508: strGE R6, [sp, -R14]
l2509: mov R2, #24
l2510: ldrB R4, [sp, -R2]
l2511: teqLS R10, #261095424
l2512: orr R0, R14, R6
l2513: strh R7, [sp, #+6]
l2514: sbc R11, R4, R10, ASR R3
l2515: cmp R15, R14, RRX 
l2516: sub R5, R5, R12
l2517: cmn R7, R12, LSR R2
l2518: bMI l2519
l2519: eor R10, R8, R10
l2520: tstVC R11, #226304
l2521: bVC l2523
l2522: eor R9, R14, #36
l2523: sbcGT R10, R11, #805306379
l2524: mov R1, #18
l2525: ldrNEB R11, [sp, -R1]
l2526: sbcLE R9, R3, R2, ROR R14
l2527: tstLS R2, R9
l2528: tstLT R8, R14, LSR #19
l2529: ldrh R6, [sp, #+20]
l2530: andVC R0, R2, R11, LSL R3
l2531: ldrHI R4, [sp, #-36]
l2532: rsc R7, R0, R14
l2533: cmnVC R12, R4, RRX 
l2534: b l2543
l2535: add R1, R0, #87
l2536: cmp R3, R6
l2537: mvns R4, R6
l2538: sbcs R7, R9, R6, LSR #29
l2539: bicVS R5, R10, R7, LSR R10
l2540: mvns R12, R8
l2541: adcLS R7, R7, R14
l2542: b l2544
l2543: b l2536
l2544: ldmGEIA R13, {R0, R3, R9, R11}
l2545: cmpLS R12, R10, ASR #30
l2546: mov R5, #18
l2547: ldrsh R9, [sp, +R5]
l2548: sub R7, R0, R10, LSL #12
l2549: adds R10, R4, #48
l2550: ldrVSh R14, [sp, #+14]
l2551: ldrLEsb R6, [sp, #+6]
l2552: cmn R1, #962560
l2553: andLE R9, R9, R5, LSR R2
l2554: ldr R3, l2556
l2555: b l2557
l2556: .word 1048532
l2557: swp R6, R10, [R3]
l2558: adcGT R3, R4, #242221056
l2559: clz R6, R6
l2560: ldr R11, l2562
l2561: b l2563
l2562: .word 1048508
l2563: swpb R7, R7, [R11]
l2564: rscLT R0, R12, R1, ASR #23
l2565: mov R12, #22
l2566: ldrLSh R6, [sp, -R12]
l2567: mov R0, #32
l2568: strh R11, [sp, -R0]
l2569: mov R11, #8
l2570: str R0, [sp], +R11
l2571: eorNE R14, R9, R6
l2572: sbcHIs R11, R2, R0
l2573: ldmDB R13!, {R2, R4, R5, R8, R9, R11, R14}
l2574: bicVC R1, R9, #6
l2575: tst R8, #10027008
l2576: mvnLS R0, R1, LSL R14
l2577: b l2584
l2578: add R1, R0, #165
l2579: cmp R11, R6, LSL #7
l2580: eorGEs R11, R10, R4
l2581: cmpVC R15, #168960
l2582: movVS R6, R11, LSL R14
l2583: b l2585
l2584: b l2579
l2585: cmnVC R11, #-2147483645
l2586: mov R7, #22
l2587: strGTh R3, [sp, +R7]
l2588: mov R0, #20
l2589: ldrh R8, [sp, +R0]
l2590: adcMI R4, R3, #1073741824
l2591: mov R0, #44
l2592: ldrCSsh R10, [sp, +R0]
l2593: mvns R5, R11, ROR R9
l2594: strLEh R1, [sp, #+32]
l2595: sbcLTs R10, R5, #-2147483631
l2596: eorMIs R3, R2, R10
l2597: rsbs R8, R1, R5
l2598: addLEs R12, R14, R9, ROR R5
l2599: sub R14, R0, #-335544320
l2600: ldrNEh R12, [sp, #+24]
l2601: ldr R8, l2603
l2602: b l2604
l2603: .word 1048532
l2604: swp R6, R7, [R8]
l2605: rsbHI R0, R1, R12
l2606: mov R10, #52
l2607: ldr R6, [sp], +R10
l2608: andCS R6, R6, R7, LSR R1
l2609: bicVS R3, R10, R0, ASR R8
l2610: adcPLs R4, R3, R4, ROR R8
l2611: adcLT R9, R10, R0, LSR R6
l2612: tstCC R14, R5, RRX 
l2613: strCCh R12, [sp, #-48]
l2614: rsbCS R11, R15, R11
l2615: stmDB R13!, {R7, R11, R15}
l2616: addHIs R2, R2, R14
l2617: bicLT R14, R3, R6, LSL R10
l2618: bicVC R3, R4, #503808
l2619: ands R1, R0, #-1342177269
l2620: movGE R14, R7, ASR #5
l2621: eorHI R1, R1, R9, RRX 
l2622: nop
l2623: mov R10, #37748736
l2624: rscNE R11, R0, #507904
l2625: tstLT R10, R11, ROR R0
l2626: eorLSs R7, R14, R12, ASR R4
l2627: stmIB R13!, {R0, R4, R5, R11}
l2628: ldrNEsh R8, [sp, #+0]
l2629: cmp R15, R11, LSR #24
l2630: mov R12, #72
l2631: ldrPLsh R7, [sp, -R12]
l2632: andEQ R7, R0, R10, LSR R1
l2633: b l2637
l2634: rsbEQs R14, R12, R4
l2635: sbcs R12, R7, #-1744830464
l2636: adcLEs R0, R0, R1, ROR #19
l2637: clzGE R6, R14
l2638: cmpEQ R5, R4, LSL R0
l2639: rsbVS R7, R4, R8, RRX 
l2640: cmnCC R5, R5, LSR #29
l2641: bicGE R0, R14, R3, LSL R1
l2642: rsbHI R14, R0, R10
l2643: ldmDA R13!, {R5, R8, R10, R14}
l2644: cmpGE R10, R7, RRX 
l2645: cmpGT R10, R3, RRX 
l2646: bLT l2647
l2647: cmnHI R8, R15, LSR #19
l2648: strh R10, [sp, #-2]
l2649: mov R3, #26
l2650: ldrsh R7, [sp, -R3]
l2651: subs R10, R10, R15
l2652: cmpLT R12, R11, LSR R14
l2653: mov R2, #34
l2654: ldrGEB R7, [sp, -R2]
l2655: and R7, R9, R8, LSL #4
l2656: mov R0, #0
l2657: str R7, [sp, +R0]!
l2658: ldrB R10, [sp, #-51]
l2659: tst R9, R5, ASR R8
l2660: subNEs R3, R11, R10, RRX 
l2661: b l2670
l2662: add R1, R0, #60
l2663: rsbMI R14, R15, R5, ASR #30
l2664: orrGE R6, R12, R0, LSL R5
l2665: adcGT R2, R9, R5
l2666: mvnGTs R3, R14, LSR #28
l2667: teqCC R11, R7, LSL R10
l2668: rsbEQ R3, R4, R15
l2669: b l2671
l2670: b l2663
l2671: cmpLT R12, #492
l2672: clzGT R4, R3
l2673: mvns R1, R7, RRX 
l2674: cmn R2, R5, ROR R8
l2675: mov R3, #14
l2676: ldrCCsb R6, [sp, +R3]
l2677: tst R9, #1006632963
l2678: subVSs R1, R12, R14, RRX 
l2679: ldr R14, l2681
l2680: b l2682
l2681: .word 1048532
l2682: swpLS R5, R9, [R14]
l2683: ldmCCDB R13, {R1, R2, R3, R4, R5, R6, R7, R10, R11, R14}
l2684: clzPL R7, R0
l2685: and R5, R11, R11
l2686: mov R9, #8
l2687: str R9, [sp, -R9]!
l2688: ldrsh R7, [sp, #-46]
l2689: orrs R9, R7, R6
l2690: tst R6, R12, RRX 
l2691: adc R2, R9, R12, LSR R6
l2692: movLEs R8, #1610612738
l2693: bLT l2696
l2694: tstGT R14, R1
l2695: mvnEQ R5, R3
l2696: tst R11, R3, LSL #25
l2697: ldr R10, l2699
l2698: b l2700
l2699: .word 1048480
l2700: swp R4, R4, [R10]
l2701: orrCC R4, R1, R6, RRX 
l2702: rsc R3, R1, R0
l2703: ldmLEDA R13, {R0, R2, R7, R9, R14}
l2704: ldmMIDB R13, {R0, R1, R2, R4, R5, R9, R10, R11, R12}
l2705: tst R5, #659456
l2706: movCC R6, R8
l2707: mov R11, #6
l2708: ldrGTsh R14, [sp, +R11]
l2709: mov R14, #24
l2710: ldr R11, [sp, -R14]!
l2711: andNE R0, R12, R3, LSR R11
l2712: rsbs R11, R5, R6, RRX 
l2713: ldrsb R14, [sp, #+18]
l2714: str R14, [sp], #-8
l2715: tstGT R1, R3, LSR R0
l2716: subGEs R5, R4, R8, LSR R5
l2717: ldr R2, l2719
l2718: b l2720
l2719: .word 1048520
l2720: swpNEb R11, R0, [R2]
l2721: strHIB R1, [sp, #+6]
l2722: tstCS R2, R0, ROR R2
l2723: cmn R12, #1442840576
l2724: mov R12, R15, LSL #12
l2725: andVC R8, R12, R6, LSR R5
l2726: movNE R8, R12, RRX 
l2727: strVSB R10, [sp, #+3]
l2728: mvns R1, R9, RRX 
l2729: b l2738
l2730: add R1, R0, #202
l2731: subEQs R7, R7, R11, LSR #20
l2732: adc R7, R5, R11
l2733: rsb R14, R5, R11, LSR R11
l2734: bics R10, R14, R1, LSR #28
l2735: adds R8, R1, R0, LSL #3
l2736: tst R11, R9
l2737: b l2739
l2738: b l2731
l2739: stmIB R13!, {R13, R14}
l2740: eorVSs R3, R6, #-2147483645
l2741: rscCSs R7, R4, R12, LSL R8
l2742: ldr R3, l2744
l2743: b l2745
l2744: .word 1048552
l2745: swpGTb R0, R14, [R3]
l2746: ands R12, R0, R6, ASR R7
l2747: addEQ R11, R15, R0, RRX 
l2748: movs R2, R5, LSL #30
l2749: mov R4, #12
l2750: ldrLEh R12, [sp, -R4]
l2751: movs R6, R11, ROR R8
l2752: ldrB R5, [sp, #-18]
l2753: mov R6, R8, ROR #16
l2754: ldrVSh R2, [sp, #-8]
l2755: orrCCs R7, R11, R6
l2756: sbcCC R3, R1, R14
l2757: mov R14, #5
l2758: ldrsb R9, [sp, +R14]
l2759: stmDB R13!, {R0, R2, R10, R15}
l2760: eorVC R11, R8, R12, RRX 
l2761: rscs R0, R1, R8
l2762: adds R6, R7, R14
l2763: ldrPLsh R0, [sp, #+24]
l2764: ldrsb R10, [sp, #+19]
l2765: b l2770
l2766: add R1, R0, #73
l2767: adcVSs R3, R5, R9
l2768: clz R0, R9
l2769: b l2771
l2770: b l2767
l2771: cmnLT R9, R3
l2772: sub R10, R2, #50688
l2773: mov R7, #6
l2774: ldrsh R3, [sp, +R7]
l2775: subs R14, R3, R8
l2776: rsbGT R11, R1, R10, LSR #1
l2777: cmnHI R1, R5, LSR R14
l2778: subEQs R7, R0, R10, LSR #25
l2779: nop
l2780: eor R14, R8, #24117248
l2781: mov R2, #20
l2782: strLSh R5, [sp, +R2]
l2783: cmnLT R7, #43776
l2784: rscGTs R12, R14, R1, ROR R4
l2785: orr R4, R6, R2
l2786: rscs R0, R7, #992
l2787: clz R6, R10
l2788: cmpLS R2, R9, LSR R4
l2789: movs R9, #2512
l2790: subMI R2, R10, R7, ROR #8
l2791: eorCS R7, R2, R3, ROR R12
l2792: strCCh R5, [sp, #+0]
l2793: nop
l2794: ldr R12, l2796
l2795: b l2797
l2796: .word 1048520
l2797: swpb R8, R6, [R12]
l2798: rscs R14, R1, R7, ROR #17
l2799: tst R15, #5376
l2800: ldmIB R13, {R4, R6, R7, R8, R10, R12, R14}
l2801: strMIh R8, [sp, #+64]
l2802: andGT R0, R11, R14, LSL #4
l2803: strGTh R7, [sp, #+46]
l2804: clzEQ R11, R12
l2805: strHIB R1, [sp, #+48]
l2806: cmpMI R0, R2, LSL #29
l2807: ldmIB R13!, {R2}
l2808: bicEQs R0, R4, R6, LSL R9
l2809: strLEB R11, [sp, #+56]
l2810: cmp R10, R3, LSR R10
l2811: andEQ R8, R1, R14
l2812: adc R7, R10, R11, LSR R14
l2813: adc R2, R6, #3680
l2814: clzLE R1, R9
l2815: stmIB R13!, {R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14, R15}
l2816: adc R8, R6, R8
l2817: orrNE R3, R8, R5, LSL R2
l2818: add R1, R3, R15
l2819: mov R3, #13
l2820: strVSB R2, [sp, -R3]
l2821: rsc R12, R9, #152
l2822: mov R9, #56
l2823: str R4, [sp], -R9
l2824: cmpLE R0, R8
l2825: rsbPLs R12, R6, R1, LSL R0
l2826: eors R9, R10, R12, ASR #19
l2827: nop
l2828: eor R2, R14, #-1073741814
l2829: subNE R0, R0, R2
l2830: subLEs R7, R4, R0
l2831: mov R8, #32
l2832: str R12, [sp], +R8
l2833: mov R14, #40
l2834: strB R3, [sp, -R14]
l2835: ldrMIsb R3, [sp, #-34]
l2836: nop
l2837: ldr R7, l2839
l2838: b l2840
l2839: .word 1048548
l2840: swp R6, R9, [R7]
l2841: mov R1, #34
l2842: ldrLSsh R12, [sp, -R1]
l2843: rsbHIs R1, R1, R3
l2844: ldr R1, l2846
l2845: b l2847
l2846: .word 1048484
l2847: swpEQb R11, R9, [R1]
l2848: ldmDA R13!, {R0, R3, R6, R9}
l2849: bNE l2853
l2850: sub R5, R5, R8, LSL R4
l2851: orr R6, R1, #8896
l2852: eors R0, R8, R0, ASR R7
l2853: teqCC R0, R12
l2854: subLT R2, R5, R1, ASR #23
l2855: teqVS R10, #11328
l2856: rscHIs R7, R14, #66846720
l2857: ldrVSB R0, [sp, #+51]
l2858: mov R9, #30
l2859: strh R4, [sp, +R9]
l2860: mov R12, #2
l2861: strNEh R0, [sp, +R12]
l2862: subNEs R6, R0, R0
l2863: teq R11, R12, ROR R5
l2864: andCSs R6, R4, R10
l2865: ldr R12, [sp, #+16]!
l2866: rsb R12, R1, R8, LSL R9
l2867: rscVS R6, R0, R9
l2868: orrVSs R2, R11, R7, ASR #8
l2869: addLTs R1, R0, R14, LSR #18
l2870: eorVCs R4, R6, R5, LSL R2
l2871: stmIA R13!, {R1, R2, R4, R11, R15}
l2872: cmp R10, R0
l2873: clz R4, R0
l2874: cmnMI R5, R0, LSR #24
l2875: cmnMI R5, R7, ASR R5
l2876: ands R6, R2, R6, LSL R10
l2877: subEQ R3, R5, R14, ROR #28
l2878: clz R3, R5
l2879: ldrNEh R0, [sp, #-50]
l2880: rsc R3, R7, R1, ASR R1
l2881: cmn R8, R1, ROR R10
l2882: rscGT R14, R8, R0, ROR #25
l2883: adds R3, R12, R4
l2884: and R14, R14, R0
l2885: teqGE R11, #4096
l2886: rsbs R8, R9, R15, ASR #29
l2887: ldrB R2, [sp, #-8]
l2888: cmnGE R10, R15, ASR #11
l2889: orrs R3, R12, R9
l2890: b l2891
l2891: clz R8, R11
l2892: eors R11, R11, #10432
l2893: ldrLSB R12, [sp, #+8]
l2894: subHI R5, R15, R8
l2895: b l2902
l2896: add R1, R0, #124
l2897: bics R14, R14, R0
l2898: orrGTs R1, R0, R3
l2899: subVC R0, R4, R0, LSR #11
l2900: andCSs R12, R15, R15, LSR #23
l2901: b l2903
l2902: b l2897
l2903: clz R3, R9
l2904: ldrsb R4, [sp, #-40]
l2905: bicCSs R2, R1, R7
l2906: ldrsh R5, [sp, #-24]
l2907: ldrLTB R11, [sp, #-4]
l2908: tstEQ R4, R9
l2909: addGT R14, R11, R10, ASR #6
l2910: b l2914
l2911: add R1, R0, #89
l2912: subVCs R4, R10, R9
l2913: b l2915
l2914: b l2912
l2915: mov R5, #9
l2916: ldrsb R8, [sp, +R5]
l2917: bicLS R14, R7, R11, ASR #7
l2918: adcPLs R14, R12, #276
l2919: mov R5, #26
l2920: strCCh R9, [sp, -R5]
l2921: sbcs R3, R14, R3
l2922: orrs R5, R15, R5, ASR #2
l2923: mov R8, #8
l2924: strh R1, [sp, -R8]
l2925: str R3, [sp, #-4]!
l2926: clz R12, R14
l2927: andLSs R4, R2, R1, LSR R7
l2928: rsbMI R2, R6, #10354688
l2929: sub R12, R7, R6, ASR R3
l2930: b l2937
l2931: add R1, R0, #26
l2932: subLT R11, R0, R11
l2933: rsbLSs R8, R14, R5, ASR #20
l2934: adc R10, R1, R8, LSL #0
l2935: andEQ R8, R3, R6, LSR R11
l2936: b l2938
l2937: b l2932
l2938: clz R6, R0
l2939: movs R3, R1, LSR R6
l2940: tst R12, R5, LSR #31
l2941: adcEQs R2, R1, R11, LSR R7
l2942: ldmDA R13!, {R0, R1, R8, R11, R14}
l2943: movLSs R3, R11
l2944: strMIB R7, [sp, #+29]
l2945: rscCC R5, R9, R9
l2946: bLE l2953
l2947: add R1, R0, #92
l2948: teqLE R10, #7602176
l2949: cmn R11, R7, ASR #8
l2950: sbcLT R1, R4, R7, LSL #10
l2951: cmnHI R3, R1, LSR #18
l2952: b l2954
l2953: b l2948
l2954: b l2963
l2955: add R1, R0, #120
l2956: addLSs R11, R4, #343932928
l2957: sbcs R5, R1, R0, LSR #11
l2958: movs R1, R11, ROR R6
l2959: subPLs R10, R15, R4, LSR #29
l2960: bics R12, R8, R4
l2961: bicVCs R0, R0, R0, ASR #27
l2962: b l2964
l2963: b l2956
l2964: ldr R8, l2966
l2965: b l2967
l2966: .word 1048552
l2967: swpPLb R4, R4, [R8]
l2968: ldr R8, l2970
l2969: b l2971
l2970: .word 1048516
l2971: swpGEb R3, R10, [R8]
l2972: subs R8, R10, R3
l2973: cmnEQ R9, R0, RRX 
l2974: teq R0, R14, RRX 
l2975: strCCB R7, [sp, #+0]
l2976: andCSs R10, R1, R14
l2977: mov R14, #36
l2978: ldr R0, [sp, -R14]
l2979: orrVCs R14, R7, R10
l2980: cmpEQ R0, R8, ASR R9
l2981: rscGE R11, R6, #43253760
l2982: ldr R3, [sp], #-20
l2983: ldrNEsb R3, [sp, #+51]
l2984: ldr R9, l2986
l2985: b l2987
l2986: .word 1048488
l2987: swpVCb R8, R7, [R9]
l2988: stmDA R13!, {R1}
l2989: adcCC R11, R1, #1207959552
l2990: b l2995
l2991: add R1, R0, #160
l2992: sub R12, R6, #35651584
l2993: add R4, R12, R10, ASR R0
l2994: b l2996
l2995: b l2992
l2996: cmn R4, R3, LSL R2
l2997: teq R12, R0, ASR R9
l2998: mov R14, #10
l2999: ldrPLsb R10, [sp, +R14]
l3000: subs R10, R4, #47710208
l3001: mov R6, #16
l3002: ldrLTh R1, [sp, +R6]
l3003: add R6, R2, R4, ASR R14
l3004: nop
l3005: mov R5, R0, ASR #10
l3006: mov R11, #5
l3007: strMIB R7, [sp, -R11]
l3008: sbcs R5, R3, R5
l3009: str R7, [sp, #+20]!
l3010: mov R2, #8
l3011: strHIh R0, [sp, +R2]
l3012: mov R3, R12, ASR R3
l3013: subs R7, R12, R11, LSL #8
l3014: rsc R3, R1, R14
l3015: nop
l3016: cmnLE R15, R8
l3017: teq R8, R15, RRX 
l3018: mov R10, #20
l3019: ldrCSh R0, [sp, -R10]
l3020: teq R3, R3
l3021: mov R0, #6
l3022: strCCh R3, [sp, -R0]
l3023: b l3028
l3024: add R1, R0, #92
l3025: rsbEQ R8, R14, R7, RRX 
l3026: bic R2, R1, R14
l3027: b l3029
l3028: b l3025
l3029: ldmIA R13!, {R1, R2, R5, R6, R7, R8, R9, R10, R11, R12}
l3030: bicLS R3, R8, R4, LSR R4
l3031: rsbLSs R2, R3, R7, LSL #31
l3032: bEQ l3037
l3033: andGE R6, R5, #2752512
l3034: movs R14, R5, ROR R2
l3035: rsbCS R5, R10, R7, RRX 
l3036: eor R0, R14, #-1040187392
l3037: adcCC R12, R1, #178176
l3038: ldr R10, l3040
l3039: b l3041
l3040: .word 1048488
l3041: swpGTb R1, R11, [R10]
l3042: cmp R4, R11, LSL R6
l3043: bicHI R9, R7, R0
l3044: eorEQ R11, R1, #-67108861
l3045: mov R12, #52
l3046: ldrLSsb R8, [sp, -R12]
l3047: teqVS R11, R11, LSL #21
l3048: orr R2, R12, R9
l3049: mov R4, #60
l3050: ldrPLB R8, [sp, -R4]
l3051: adds R4, R12, R6, ASR #31
l3052: eor R10, R14, R9
l3053: andCSs R14, R0, R10, LSR R4
l3054: tstVC R2, R5
l3055: subPLs R12, R1, R2, RRX 
l3056: strh R8, [sp, #-40]
l3057: ldrB R8, [sp, #-25]
l3058: mov R12, #2
l3059: strh R1, [sp, -R12]
l3060: teqPL R4, R0, LSR #9
l3061: orrs R11, R3, R2, LSL R1
l3062: mov R1, #35
l3063: strLTB R5, [sp, -R1]
l3064: ldrVSsh R3, [sp, #-42]
l3065: movs R2, R8, ROR R2
l3066: orrCCs R3, R9, #205824
l3067: ands R6, R3, #8388608
l3068: adc R7, R2, R12
l3069: mov R3, #47
l3070: ldrVSB R11, [sp, -R3]
l3071: tstCS R1, R6, RRX 
l3072: bics R0, R14, R2, ASR #15
l3073: ldr R1, l3075
l3074: b l3076
l3075: .word 1048512
l3076: swpVS R9, R2, [R1]
l3077: bVC l3082
l3078: add R1, R0, #130
l3079: mvnPL R10, R10, LSL R9
l3080: subMIs R10, R14, R5, ASR #18
l3081: b l3083
l3082: b l3079
l3083: bicNE R11, R1, R14, LSL R3
l3084: bicEQ R5, R15, #356515840
l3085: mov R10, #69
l3086: ldrCCsb R3, [sp, -R10]
l3087: rsbs R3, R0, R11
l3088: cmpGE R7, R8, RRX 
l3089: ldr R2, [sp, #-60]
l3090: cmnPL R14, #1006632960
l3091: sbc R2, R1, R1
l3092: orrPLs R0, R8, #1458176
l3093: adcs R11, R10, R9
l3094: cmp R5, R10, LSL R3
l3095: str R10, [sp], #-68
l3096: addVC R0, R4, R10
l3097: teq R6, R8
l3098: bLT l3100
l3099: sbc R5, R15, #10944
l3100: adcs R6, R8, R0
l3101: ldr R8, l3103
l3102: b l3104
l3103: .word 1048528
l3104: swpHI R14, R0, [R8]
l3105: ldmIB R13!, {R1, R5, R8, R9, R10, R11, R12}
l3106: strGTh R8, [sp, #+20]
l3107: ldrCCh R7, [sp, #+38]
l3108: bics R9, R0, R15
l3109: ldrB R7, [sp, #-27]
l3110: b l3120
l3111: cmp R2, R3, LSL R4
l3112: cmpPL R2, #464
l3113: subGE R5, R0, R2, ASR #1
l3114: sbcs R12, R10, R1
l3115: cmn R6, #-1543503870
l3116: teqVS R0, R14, ROR #30
l3117: bicCSs R9, R10, R10, ASR R3
l3118: movPLs R8, R4, LSL R0
l3119: teq R11, R4, LSR R14
l3120: and R14, R11, R4, RRX 
l3121: mov R6, #41
l3122: ldrsb R9, [sp, +R6]
l3123: adcCCs R2, R12, R6, ASR R8
l3124: sbcGEs R0, R1, #520093696
l3125: sbc R9, R15, R1
l3126: ands R4, R1, R10, LSL #29
l3127: andGE R4, R5, R12
l3128: str R11, [sp], #-4
l3129: mov R2, #9
l3130: strB R9, [sp, +R2]
l3131: sbcPLs R4, R14, R14, LSR R6
l3132: ldmIB R13!, {R0, R4, R7, R12}
l3133: strh R0, [sp, #+0]
l3134: nop
l3135: rsb R1, R12, R0, RRX 
l3136: ldrHIsh R7, [sp, #-6]
l3137: rsb R8, R3, R10, ROR #26
l3138: bicLE R9, R4, R9
l3139: b l3141
l3140: andGT R9, R14, #2130706432
l3141: sbcNE R5, R11, #80740352
l3142: cmp R5, R7, LSL R3
l3143: orrLTs R4, R3, R10
l3144: eorLE R1, R1, R4
l3145: stmIA R13!, {R13}
l3146: adcGTs R10, R6, R4, ASR R14
l3147: rsb R1, R1, R1, RRX 
l3148: ldr R5, l3150
l3149: b l3151
l3150: .word 1048540
l3151: swpPLb R8, R14, [R5]
l3152: subs R5, R1, R10, LSL #11
l3153: mov R14, #11
l3154: ldrB R4, [sp, +R14]
l3155: ldr R5, [sp, #+12]
l3156: rsbLSs R3, R2, R6, ROR #22
l3157: adds R14, R12, #9
l3158: sub R2, R7, R7
l3159: ldr R9, l3161
l3160: b l3162
l3161: .word 1048504
l3162: swpLE R0, R14, [R9]
l3163: cmn R15, R2, RRX 
l3164: teq R9, R5, ROR #17
l3165: sbcEQs R2, R6, R4
l3166: andVC R2, R8, R6, RRX 
l3167: mov R12, #2
l3168: strVSh R10, [sp, +R12]
l3169: mov R3, #20
l3170: ldrEQ R5, [sp, +R3]
l3171: eorNEs R11, R4, R5
l3172: addGTs R1, R10, #61440
l3173: addHIs R11, R10, #102400
l3174: subCCs R5, R6, R4, ROR R12
l3175: stmLTDB R13, {R1, R12}
l3176: ldmIB R13!, {R4, R7, R14}
l3177: ldrMIsh R6, [sp, #-22]
l3178: rsbs R0, R7, #536870912
l3179: ldrB R4, [sp, #-26]
l3180: mov R2, #34
l3181: ldrPLsb R11, [sp, -R2]
l3182: rsbGE R14, R10, #65536000
l3183: tst R6, R1, ASR R5
l3184: mvnHI R9, R11
l3185: cmp R5, #8847360
l3186: ldrGEB R14, [sp, #-3]
l3187: rsbs R6, R1, R1, RRX 
l3188: cmp R4, #20224
l3189: rscLEs R1, R0, R12
l3190: ldr R8, l3192
l3191: b l3193
l3192: .word 1048504
l3193: swpCS R0, R1, [R8]
l3194: cmp R10, #137216
l3195: adcVS R14, R3, R14, ASR R12
l3196: subs R11, R11, #1073741865
l3197: mvnLEs R6, R10
l3198: mvnHI R14, R9, RRX 
l3199: bLE l3207
l3200: eorEQ R2, R0, R10, ASR R2
l3201: cmpNE R0, R9, RRX 
l3202: adds R7, R15, R3
l3203: rsbVSs R4, R10, #-268435446
l3204: adds R2, R9, R14
l3205: tst R0, R14, ASR #26
l3206: sbcLTs R10, R9, R11, LSR #16
l3207: rscEQs R3, R0, #76
l3208: tst R0, R15
l3209: mvnGE R3, R0
l3210: mvnLE R5, R9, ROR #16
l3211: ldrLEsb R1, [sp, #-43]
l3212: ands R5, R11, R5
l3213: adc R3, R1, #1052770304
l3214: addNE R6, R2, R14
l3215: movMI R12, #57671680
l3216: sbcHI R8, R11, R6
l3217: mvnHIs R2, R10, RRX 
l3218: tstVC R2, R7, RRX 
l3219: bLT l3226
l3220: teq R11, R1
l3221: tst R0, R5, ROR #10
l3222: bicMIs R1, R4, #15335424
l3223: bicEQs R6, R2, R10, LSR #7
l3224: cmn R12, R8, ASR #3
l3225: teqEQ R6, R14
l3226: bics R12, R3, R14, ASR R14
l3227: bic R14, R6, R14, ASR R4
l3228: bic R9, R8, R1, RRX 
l3229: eors R0, R12, R11, ASR #30
l3230: subGT R8, R15, R7
l3231: ldr R9, l3233
l3232: b l3234
l3233: .word 1048512
l3234: swpMI R10, R14, [R9]
l3235: mov R0, #38
l3236: ldrh R12, [sp, -R0]
l3237: rscLTs R2, R8, R12, LSL R9
l3238: and R9, R6, R9, ROR R7
l3239: sbc R6, R10, #238026752
l3240: rsbs R10, R9, R0, ROR R12
l3241: mov R11, #7
l3242: ldrsb R7, [sp, +R11]
l3243: adc R10, R0, #77824
l3244: orrGTs R12, R8, R7, RRX 
l3245: ldr R12, l3247
l3246: b l3248
l3247: .word 1048528
l3248: swpLSb R6, R14, [R12]
l3249: str R15, [sp], #+4
l3250: strCCh R10, [sp, #-42]
l3251: sbcs R4, R0, R6, ASR #12
l3252: addNE R10, R8, #-2147483611
l3253: and R4, R9, #175104
l3254: str R12, [sp, #+4]!
l3255: mov R4, #16
l3256: strLSh R12, [sp, -R4]
l3257: sub R3, R2, R9, LSL R1
l3258: bGT l3262
l3259: rscNE R1, R10, R15, ROR #30
l3260: orr R7, R2, R10
l3261: addNEs R7, R5, R3
l3262: teqLT R2, R0
l3263: ldr R0, [sp, #-64]
l3264: eorHI R3, R1, R1, LSL R6
l3265: cmn R1, #9
l3266: subVSs R11, R1, R10, ASR #0
l3267: cmpCS R5, R5
l3268: cmnHI R1, R1, LSL #31
l3269: sbcVCs R14, R14, R0, LSR #24
l3270: ldr R10, l3272
l3271: b l3273
l3272: .word 1048500
l3273: swpNEb R9, R5, [R10]
l3274: mvn R1, R12, RRX 
l3275: ldrh R3, [sp, #-58]
l3276: clzNE R7, R10
l3277: ldrsb R10, [sp, #-68]
l3278: clzLT R2, R7
l3279: mvn R9, R11, ROR R14
l3280: rscCC R6, R1, R4, RRX 
l3281: ldrNEsb R2, [sp, #-34]
l3282: mvnNEs R14, R14
l3283: subNE R0, R1, R9, ROR R2
l3284: ldrCCsb R2, [sp, #-40]
l3285: bicHI R8, R0, #306184192
l3286: strLSh R0, [sp, #-20]
l3287: stmVSIB R13, {R4}
l3288: subs R14, R8, R0, ASR R1
l3289: adcVSs R7, R15, #201326593
l3290: str R14, [sp, #-8]!
l3291: sub R8, R0, #3194880
l3292: andLS R4, R1, #-1073741816
l3293: tst R5, R10, LSL #25
l3294: ldrsh R11, [sp, #-24]
l3295: ldrh R7, [sp, #-16]
l3296: tstGE R10, R3
l3297: teqMI R0, R12, RRX 
l3298: rscCC R3, R1, R7, LSR #26
l3299: mov R12, #22
l3300: strLSh R11, [sp, -R12]
l3301: tst R0, R8, LSL R3
l3302: ldrHIB R14, [sp, #-30]
l3303: ldrB R8, [sp, #-6]
l3304: ldrLTB R14, [sp, #-5]
l3305: mvnLE R5, R3
l3306: mov R14, #8
l3307: ldrLEsb R4, [sp, +R14]
l3308: ldmIB R13!, {R5, R11}
l3309: mvns R1, R2, LSL #15
l3310: mov R4, #48
l3311: ldrLSB R6, [sp, -R4]
l3312: strCSB R0, [sp, #+2]
l3313: str R12, [sp, #-56]
l3314: mov R9, #8
l3315: str R9, [sp], -R9
l3316: cmnCC R9, R3, LSR R11
l3317: tstLT R2, R0
l3318: mvn R9, R0, ASR R8
l3319: eorVCs R8, R5, R14
l3320: mov R11, #6
l3321: ldrB R3, [sp, -R11]
l3322: ldrLSsh R8, [sp, #+6]
l3323: eorCS R11, R1, #4
l3324: ldrsh R3, [sp, #-42]
l3325: ldrsb R8, [sp, #+4]
l3326: cmpVC R15, #1632
l3327: addMIs R2, R15, R5, LSR #14
l3328: b l3333
l3329: add R1, R0, #232
l3330: teqHI R1, R10, LSL R9
l3331: mvnVS R6, R11, ASR #1
l3332: b l3334
l3333: b l3330
l3334: teqGT R9, R11, ROR R0
l3335: clzEQ R1, R5
l3336: movs R11, #409600
l3337: rsbs R3, R6, R7, ROR #16
l3338: clzGT R3, R4
l3339: subGE R3, R14, R3, RRX 
l3340: movCS R9, R14, ROR R9
l3341: rsbs R12, R5, R2, ROR #13
l3342: addLT R3, R8, #700416
l3343: ldr R7, l3345
l3344: b l3346
l3345: .word 1048548
l3346: swp R9, R9, [R7]
l3347: mov R12, #20
l3348: strEQ R4, [sp, -R12]
l3349: ldmGEIA R13, {R8, R9, R14}
l3350: subLSs R4, R6, R14, ROR R10
l3351: nop
l3352: mov R12, #54
l3353: ldrMIh R1, [sp, -R12]
l3354: stmDA R13!, {R13}
l3355: orrMI R10, R10, R2
l3356: ldrCCB R1, [sp, #-38]
l3357: ldr R5, [sp, #+4]
l3358: b l3368
l3359: orr R4, R15, #14942208
l3360: subCCs R9, R6, #1342177283
l3361: rscVCs R11, R10, #47616
l3362: andGTs R11, R5, R8, ASR #8
l3363: bics R0, R8, R14, RRX 
l3364: subEQ R5, R15, #264241152
l3365: teqHI R7, R14, LSL #18
l3366: add R0, R12, R0
l3367: orrMIs R11, R14, #56098816
l3368: andCC R4, R0, R3, LSL #26
l3369: andHI R0, R1, R5
l3370: cmpVC R9, R11, ROR #17
l3371: andLTs R11, R2, #83
l3372: ldr R8, l3374
l3373: b l3375
l3374: .word 1048528
l3375: swp R3, R7, [R8]
l3376: strLTB R4, [sp, #-42]
l3377: rscMIs R11, R1, R3
l3378: rscPL R7, R10, #155648
l3379: mov R0, #20
l3380: ldr R11, [sp, -R0]
l3381: sbcLE R2, R7, R8, ROR #27
l3382: ldrNEsb R1, [sp, #-38]
l3383: movCCs R4, R7, ASR #30
l3384: rsbGE R1, R15, R9, ROR #8
l3385: mov R12, #4
l3386: str R7, [sp, -R12]!
l3387: bics R2, R10, R8
l3388: bGE l3394
l3389: add R1, R0, #228
l3390: clz R5, R12
l3391: orr R6, R5, R12
l3392: rscVS R5, R8, R1, RRX 
l3393: b l3395
l3394: b l3390
l3395: clzNE R7, R7
l3396: ldr R14, l3398
l3397: b l3399
l3398: .word 1048508
l3399: swpLEb R2, R5, [R14]
l3400: ldmEQIB R13, {R2, R3, R6, R12, R14}
l3401: ldrh R1, [sp, #-14]
l3402: rsbEQs R1, R8, R6, ROR R11
l3403: mov R2, #44
l3404: strCSh R9, [sp, -R2]
l3405: mov R8, #8
l3406: ldr R5, [sp, +R8]
l3407: rscVS R10, R11, R8, ASR #11
l3408: clz R5, R4
l3409: subs R12, R9, R14, ASR R10
l3410: orrNEs R11, R0, R9, ASR #5
l3411: mov R10, #8
l3412: ldr R8, [sp, +R10]!
l3413: ldrVCh R7, [sp, #-22]
l3414: ldrCSsb R9, [sp, #-27]
l3415: cmnLS R9, #1728053248
l3416: movGEs R4, R10
l3417: orr R7, R1, #1835008
l3418: mov R11, #12
l3419: str R11, [sp], +R11
l3420: subCC R2, R7, R2, LSL R11
l3421: ldrVCsh R1, [sp, #-6]
l3422: adds R8, R7, R12
l3423: tst R1, R12
l3424: mov R14, #60
l3425: strLS R2, [sp, -R14]
l3426: teqPL R3, R0, ASR #26
l3427: b l3437
l3428: orr R6, R8, R9, RRX 
l3429: sbcCS R6, R0, #105906176
l3430: mvnGEs R4, R1
l3431: sbcLSs R10, R2, R3, RRX 
l3432: mvnLS R11, R12, LSR R0
l3433: sbcVCs R11, R0, R4, RRX 
l3434: eors R12, R15, R10
l3435: mvnVSs R1, R8, LSL #22
l3436: bic R2, R4, R1, RRX 
l3437: clzNE R9, R11
l3438: ldrMIsb R2, [sp, #-45]
l3439: ldr R2, l3441
l3440: b l3442
l3441: .word 1048552
l3442: swpLS R11, R14, [R2]
l3443: sbc R11, R5, R6, LSR #27
l3444: rsb R5, R0, R6
l3445: mov R2, #30
l3446: ldrB R14, [sp, -R2]
l3447: orrs R4, R12, R9, ROR R4
l3448: rsc R11, R0, R9, ROR #21
l3449: ldr R8, l3451
l3450: b l3452
l3451: .word 1048536
l3452: swpHI R11, R10, [R8]
l3453: mov R2, R6, LSL #18
l3454: str R6, [sp], #-64
l3455: nop
l3456: strh R4, [sp, #-4]
l3457: ldr R5, l3459
l3458: b l3460
l3459: .word 1048552
l3460: swpb R0, R9, [R5]
l3461: adds R2, R3, R8
l3462: cmn R12, R2, LSL R9
l3463: clzLS R2, R1
l3464: mov R5, #56
l3465: ldr R12, [sp], +R5
l3466: subGE R7, R5, R9
l3467: rsb R11, R5, R7, ASR R6
l3468: mov R7, #0
l3469: strNEB R3, [sp, +R7]
l3470: strNEh R5, [sp, #-30]
l3471: mov R14, #8
l3472: str R12, [sp], -R14
l3473: bic R14, R5, #4672
l3474: tst R0, R14
l3475: ldmLEIB R13, {R12, R14}
l3476: cmn R1, R4
l3477: addHIs R10, R11, R11, LSR #23
l3478: ldrh R14, [sp, #+12]
l3479: teq R10, #1376256
l3480: movMI R2, #7340032
l3481: mov R10, #15
l3482: ldrLEB R1, [sp, +R10]
l3483: mvnLT R8, #-2130706432
l3484: clzLT R11, R10
l3485: rscs R1, R1, #94
l3486: mov R4, #7
l3487: strCSB R3, [sp, +R4]
l3488: adcLE R5, R2, R6, LSL R12
l3489: ldr R14, l3491
l3490: b l3492
l3491: .word 1048528
l3492: swpb R4, R1, [R14]
l3493: ldr R8, l3495
l3494: b l3496
l3495: .word 1048520
l3496: swp R6, R3, [R8]
l3497: cmn R1, R1, ROR R6
l3498: orrLTs R11, R15, R1, ASR #14
l3499: orrEQ R9, R5, R2, LSL R12
l3500: add R6, R11, #-1879048189
l3501: mov R10, #36
l3502: ldrVS R5, [sp, -R10]
l3503: b l3506
l3504: cmpPL R12, R3, LSR R4
l3505: sub R3, R6, R5, LSR #8
l3506: orr R12, R11, R14, ROR R9
l3507: ldrLTsb R3, [sp, #+11]
l3508: b l3516
l3509: add R1, R0, #198
l3510: rscVSs R2, R11, #1408
l3511: andVC R8, R7, R15, LSR #8
l3512: eorPL R2, R12, R0, LSL #28
l3513: adcs R1, R6, #49283072
l3514: addMI R14, R3, R5
l3515: b l3517
l3516: b l3510
l3517: subLT R11, R2, R14, ASR #7
l3518: movVS R5, R0, LSL #24
l3519: b l3525
l3520: add R1, R0, #38
l3521: eorGT R9, R3, #1196032
l3522: cmpCS R12, R15, LSL #16
l3523: clz R7, R5
l3524: b l3526
l3525: b l3521
l3526: ldr R11, [sp, #+0]!
l3527: nop
l3528: adcs R1, R15, R9
l3529: tstNE R15, R9, ASR #9
l3530: addVCs R5, R7, R0, ROR R5
l3531: clzVC R0, R10
l3532: clzLT R3, R8
l3533: bicCC R7, R12, #-2147483589
l3534: teq R15, R4, ROR #11
l3535: ldrLEsh R9, [sp, #+14]
l3536: rsc R5, R0, R9, RRX 
l3537: sbcHIs R14, R3, #19
l3538: teqEQ R11, #119
l3539: eorLE R0, R5, R3, LSR R2
l3540: tstCC R2, R9, LSR R6
l3541: tst R7, R1, LSL R11
l3542: orrs R2, R2, R3, LSL #18
l3543: rscPLs R12, R9, R9, ASR R1
l3544: sbcGT R5, R14, R1, LSL #17
l3545: and R2, R10, #-671088640
l3546: eorPL R4, R14, R2, LSR #13
l3547: sub R10, R6, R8, LSR R3
l3548: tst R7, R8, RRX 
l3549: teqGT R3, R8, LSL R14
l3550: sbcEQs R7, R10, R0, ROR #13
l3551: ldrGEB R4, [sp, #-1]
l3552: mov R5, #32
l3553: ldrsh R3, [sp, -R5]
l3554: cmnCS R14, R4
l3555: mov R10, #12
l3556: ldr R4, [sp, -R10]!
l3557: ldmIB R13!, {R1, R3, R6, R7, R11, R14}
l3558: bMI l3565
l3559: add R1, R0, #43
l3560: mvn R12, R15
l3561: adcEQ R6, R12, R6, LSR R14
l3562: mov R14, R5, ASR R7
l3563: mvns R11, R1, ROR #18
l3564: b l3566
l3565: b l3560
l3566: b l3573
l3567: add R1, R0, #42
l3568: andLS R4, R6, #1856
l3569: andLT R8, R5, #111149056
l3570: and R9, R6, R2
l3571: bic R10, R7, R3, LSL #0
l3572: b l3574
l3573: b l3568
l3574: rsbVCs R0, R9, R5, LSR R10
l3575: subHI R8, R9, R6
l3576: ldr R9, [sp, #+4]!
l3577: cmp R11, R11, LSL R10
l3578: andPLs R4, R3, R7, RRX 
l3579: orrLT R12, R4, #848
l3580: addLS R6, R15, R7, RRX 
l3581: eorPL R4, R6, #6291456
l3582: clz R14, R4
l3583: ldrPLsh R1, [sp, #-10]
l3584: ldr R2, l3586
l3585: b l3587
l3586: .word 1048536
l3587: swpb R8, R3, [R2]
l3588: and R10, R10, #1006632960
l3589: ldmDA R13!, {R3, R4, R5, R10, R11}
l3590: stmDB R13!, {R1, R5, R6, R10, R11, R14}
l3591: subCC R11, R7, R5, LSL R2
l3592: mov R10, #40
l3593: strNEh R12, [sp, +R10]
l3594: subs R14, R11, R0, ASR R14
l3595: teqGT R3, R10, ROR R8
l3596: sbc R1, R5, R11, RRX 
l3597: adcCCs R6, R15, R14
l3598: movGTs R1, R14
l3599: clzNE R14, R3
l3600: mvnLTs R10, #688
l3601: tst R12, #1728053248
l3602: tstPL R0, R14
l3603: ands R7, R12, R5, ASR #10
l3604: subGE R2, R12, R3, LSR #26
l3605: rscHI R8, R6, #284
l3606: mov R6, #12
l3607: strB R6, [sp, +R6]
l3608: mov R11, #24
l3609: ldrGEB R8, [sp, +R11]
l3610: sub R11, R3, #316
l3611: mov R3, #32
l3612: str R5, [sp, +R3]!
l3613: orr R6, R4, R10, LSL R8
l3614: rscMI R6, R12, R4, ROR #22
l3615: sbcLS R12, R6, R9, ROR R11
l3616: mov R6, #8
l3617: strCCh R12, [sp, -R6]
l3618: tstMI R10, R3
l3619: str R3, [sp, #-12]!
l3620: ldrsb R11, [sp, #-28]
l3621: mov R10, #28
l3622: str R12, [sp, -R10]!
l3623: cmpGE R2, R2, LSL R11
l3624: ldr R8, l3626
l3625: b l3627
l3626: .word 1048544
l3627: swpb R6, R2, [R8]
l3628: ldr R12, [sp, #+40]!
l3629: strB R6, [sp, #-56]
l3630: subLEs R7, R15, R12
l3631: sbcPL R8, R14, R10
l3632: mov R3, #52
l3633: ldr R8, [sp, -R3]!
l3634: tst R12, R12
l3635: clzLE R14, R5
l3636: eorGE R14, R5, R6, ROR #1
l3637: tstGE R0, R10, LSL #7
l3638: mov R3, #38
l3639: strHIh R9, [sp, +R3]
l3640: ldr R6, l3642
l3641: b l3643
l3642: .word 1048520
l3643: swp R1, R11, [R6]
l3644: ldrCSB R12, [sp, #+33]
l3645: bHI l3652
l3646: add R1, R0, #186
l3647: teq R11, R2
l3648: orrMIs R3, R15, #76546048
l3649: rsb R11, R14, R2, LSL #31
l3650: clzLE R0, R0
l3651: b l3653
l3652: b l3647
l3653: clzHI R12, R5
l3654: ldr R9, l3656
l3655: b l3657
l3656: .word 1048492
l3657: swpEQb R4, R14, [R9]
l3658: mov R12, #56
l3659: ldrh R12, [sp, +R12]
l3660: subGT R14, R15, R1
l3661: nop
l3662: mov R12, #8
l3663: ldr R12, [sp, -R12]!
l3664: ldrLEh R3, [sp, #+6]
l3665: b l3666
l3666: mvnLTs R6, #39845888
l3667: ldmNEIB R13, {R0, R1, R4, R5, R7, R8, R9, R10, R11, R12, R14}
l3668: bicVC R2, R4, R7, LSR #12
l3669: cmn R15, R7
l3670: ldrLTB R5, [sp, #+68]
l3671: mov R11, #24
l3672: strh R14, [sp, +R11]
l3673: rsbNEs R7, R0, R0, LSL R4
l3674: b l3683
l3675: add R1, R0, #73
l3676: cmnMI R1, R1, RRX 
l3677: bicMI R14, R8, R12, LSL #3
l3678: movs R1, R2, LSR R2
l3679: rscLT R12, R1, R3, ROR R14
l3680: movHI R6, #7296
l3681: orrNE R12, R8, #3588096
l3682: b l3684
l3683: b l3676
l3684: mov R6, #27
l3685: ldrCSsb R1, [sp, +R6]
l3686: rsc R11, R8, R3
l3687: rscGTs R10, R4, R0, LSR R14
l3688: ldmIA R13!, {R0, R2, R3, R11}
l3689: addCCs R0, R0, #2080374785
l3690: rsbCSs R4, R0, R2
l3691: mov R2, #7
l3692: strLSB R12, [sp, +R2]
l3693: addMIs R4, R10, R6, ASR R14
l3694: mov R4, #30
l3695: ldrh R1, [sp, +R4]
l3696: adc R3, R10, R14
l3697: mov R7, #30
l3698: strh R3, [sp, +R7]
l3699: movGE R9, R3
l3700: addLT R1, R8, R3, RRX 
l3701: subs R10, R0, #796917760
l3702: orrLE R6, R10, #-1073741824
l3703: ldr R3, l3705
l3704: b l3706
l3705: .word 1048544
l3706: swpb R1, R10, [R3]
l3707: cmpCS R4, #444596224
l3708: adcGTs R8, R5, R0, ASR R8
l3709: rsc R0, R10, #-1073741781
l3710: nop
l3711: adc R10, R7, R1, LSR R4
l3712: ldrB R3, [sp, #-1]
l3713: mov R6, #44
l3714: ldrB R1, [sp, +R6]
l3715: ldr R14, l3717
l3716: b l3718
l3717: .word 1048532
l3718: swpb R12, R4, [R14]
l3719: orrGTs R9, R2, #-2147483600
l3720: rsbNE R6, R5, R4, RRX 
l3721: rscCSs R6, R14, #-2147483604
l3722: movNE R8, R3, ASR R1
l3723: nop
l3724: andHI R8, R10, R11
l3725: adcPLs R11, R14, R12
l3726: subCC R14, R0, #1073741859
l3727: sbcs R5, R8, R11
l3728: ldr R7, l3730
l3729: b l3731
l3730: .word 1048484
l3731: swp R12, R14, [R7]
l3732: ldr R0, l3734
l3733: b l3735
l3734: .word 1048548
l3735: swpb R3, R14, [R0]
l3736: addGEs R2, R11, R14, LSL R7
l3737: stmIB R13!, {R0, R5, R8, R9, R11}
l3738: rsc R1, R11, R5
l3739: ldr R1, [sp, #+4]!
l3740: mov R11, #37
l3741: ldrHIsb R9, [sp, -R11]
l3742: ldr R0, [sp], #-24
l3743: mov R12, #58
l3744: ldrPLsb R7, [sp, +R12]
l3745: bicLTs R2, R3, R10
l3746: ldr R9, [sp, #+48]!
l3747: ldr R6, l3749
l3748: b l3750
l3749: .word 1048532
l3750: swpVSb R14, R10, [R6]
l3751: adds R3, R5, #20
l3752: mov R12, #28
l3753: ldrsb R2, [sp, -R12]
l3754: b l3759
l3755: add R1, R0, #140
l3756: bicVSs R4, R14, R8, LSL #13
l3757: cmpCC R14, R12, ROR #16
l3758: b l3760
l3759: b l3756
l3760: tstNE R7, R11
l3761: movGEs R6, #868352
l3762: mvn R3, R2
l3763: nop
l3764: cmp R1, R12
l3765: eorCCs R6, R4, R2
l3766: bMI l3770
l3767: ands R4, R11, R3, ROR #12
l3768: adc R1, R6, R5, LSR #8
l3769: cmp R2, R11
l3770: cmn R14, #294912
l3771: rsbEQ R5, R0, R9, ROR #31
l3772: ldrPLsb R2, [sp, #-18]
l3773: bMI l3781
l3774: add R1, R0, #245
l3775: add R10, R4, R3, ASR R3
l3776: rsb R11, R5, R5, ASR #29
l3777: rscGTs R4, R10, R5, LSL R4
l3778: cmp R0, R10, ASR R0
l3779: adcLTs R8, R5, R14, ROR #18
l3780: b l3782
l3781: b l3775
l3782: tstCS R5, R1, ASR #17
l3783: mov R12, #8
l3784: strMIh R7, [sp, -R12]
l3785: ldr R2, l3787
l3786: b l3788
l3787: .word 1048512
l3788: swp R8, R3, [R2]
l3789: tstCS R6, R6, ROR R2
l3790: andNE R6, R3, #364
l3791: tstNE R0, R14, RRX 
l3792: rsc R11, R11, R1, LSR R9
l3793: mov R5, #32
l3794: ldr R0, [sp], -R5
l3795: cmnLT R3, R0, RRX 
l3796: teqHI R12, R5, RRX 
l3797: mov R3, #0
l3798: ldr R3, [sp], +R3
l3799: tstGT R15, R3, LSR #18
l3800: ldr R0, l3802
l3801: b l3803
l3802: .word 1048500
l3803: swpNE R11, R4, [R0]
l3804: ldrPLsh R7, [sp, #+14]
l3805: mov R2, #15
l3806: ldrNEsb R3, [sp, -R2]
l3807: subVCs R0, R15, #612
l3808: strPLh R6, [sp, #+16]
l3809: rsbVS R5, R2, #2112
l3810: rscGTs R10, R15, #41
l3811: mov R8, #12
l3812: strHIh R7, [sp, +R8]
l3813: bHI l3823
l3814: addLSs R10, R12, R12, RRX 
l3815: rscs R7, R5, R7, ROR #15
l3816: tst R7, #13312
l3817: adds R12, R9, #104448
l3818: bicGTs R1, R11, R1, ROR R11
l3819: subHI R4, R1, R9, ASR #21
l3820: subs R12, R11, #197132288
l3821: rsbVSs R9, R15, R6, LSR #10
l3822: teqLT R4, R10, ROR R4
l3823: subGE R14, R2, R15
l3824: eor R10, R0, R7
l3825: ldmIB R13!, {R1, R2, R4, R6, R7, R8, R9, R12}
l3826: ldr R2, l3828
l3827: b l3829
l3828: .word 1048512
l3829: swpb R9, R12, [R2]
l3830: sub R5, R10, R10, ROR #17
l3831: ldrh R11, [sp, #+10]
l3832: movCS R8, R2
l3833: cmpPL R7, #131072
l3834: ldrMIh R6, [sp, #-32]
l3835: ldmIB R13, {R5, R6}
l3836: subGEs R9, R10, R1
l3837: cmpPL R2, #128974848
l3838: rsbLEs R3, R12, R5
l3839: eors R14, R14, R7
l3840: movLEs R7, R8, ASR R7
l3841: orrGTs R3, R7, R9, ASR R11
l3842: stmDA R13!, {R13, R14}
l3843: adcNE R8, R10, R14, LSL R9
l3844: cmnLE R3, #37224448
l3845: mov R7, #36
l3846: ldrsh R1, [sp, -R7]
l3847: cmnVS R12, R5, RRX 
l3848: strh R9, [sp, #-4]
l3849: strCSB R6, [sp, #-51]
l3850: strNEB R8, [sp, #-12]
l3851: adcMIs R12, R3, R0, ROR #27
l3852: ldr R9, l3854
l3853: b l3855
l3854: .word 1048552
l3855: swpCS R4, R5, [R9]
l3856: clzVS R3, R2
l3857: ldrVCB R1, [sp, #+12]
l3858: movGT R7, R1
l3859: mov R10, #56
l3860: ldr R8, [sp, -R10]!
l3861: bicNEs R0, R10, R1
l3862: mvnCSs R3, #212
l3863: and R1, R4, R12, ASR R12
l3864: mov R14, #36
l3865: ldrLEsh R5, [sp, +R14]
l3866: eor R10, R9, R4, LSL #16
l3867: tstVC R4, R5
l3868: rscHIs R11, R15, R8, ROR #29
l3869: ldmIB R13!, {R0, R1, R2, R5, R7, R9, R11, R14}
l3870: eor R7, R6, R15, RRX 
l3871: ldrCSsh R6, [sp, #+14]
l3872: andGE R14, R14, R12
l3873: clzGT R1, R5
l3874: mov R7, #10
l3875: ldrNEB R4, [sp, +R7]
l3876: cmnPL R14, #-1543503871
l3877: adcGT R9, R1, R6, ASR #7
l3878: stmDA R13!, {R3, R8, R11}
l3879: ldr R9, l3881
l3880: b l3882
l3881: .word 1048528
l3882: swpGE R3, R12, [R9]
l3883: mov R6, #8
l3884: ldr R4, [sp, +R6]!
l3885: mov R0, #37
l3886: strB R10, [sp, +R0]
l3887: eors R9, R12, R10
l3888: teq R9, R6, ASR R7
l3889: rscPLs R2, R7, #33792
l3890: sub R2, R2, R2
l3891: clz R6, R7
l3892: tst R0, R5
l3893: bic R5, R1, R14, ASR R4
l3894: cmnEQ R10, R9, LSR #17
l3895: subs R2, R1, #2544
l3896: andVC R12, R4, #-1073741807
l3897: mov R12, #20
l3898: ldrh R12, [sp, +R12]
l3899: andVCs R12, R14, #3751936
l3900: subCCs R7, R3, R4
l3901: sbcCS R2, R12, #200704
l3902: rscMIs R5, R12, R8, LSR R9
l3903: ldr R3, l3905
l3904: b l3906
l3905: .word 1048528
l3906: swpLTb R8, R5, [R3]
l3907: addLSs R6, R11, R10
l3908: teq R0, R12, ROR R6
l3909: clzMI R7, R0
l3910: mov R14, #36
l3911: ldrB R14, [sp, +R14]
l3912: rscVCs R2, R9, R8, ASR #5
l3913: bics R9, R3, R10, LSR #2
l3914: ldrsb R10, [sp, #+5]
l3915: orrVCs R10, R15, R15
l3916: andLSs R0, R14, R0, ROR #27
l3917: mov R7, #28
l3918: strGTB R3, [sp, +R7]
l3919: stmDA R13!, {R1, R7, R9, R12, R15}
l3920: tstLT R14, #179200
l3921: mvnCS R3, R7
l3922: sbcLE R9, R3, #270336
l3923: ldrVCB R12, [sp, #+29]
l3924: tstHI R15, R7, RRX 
l3925: mov R6, #4
l3926: str R6, [sp], +R6
l3927: rsbCCs R4, R12, R9, ASR R3
l3928: strVSh R9, [sp, #-12]
l3929: andCS R3, R6, R1, ROR R2
l3930: mov R0, #16
l3931: strh R6, [sp, +R0]
l3932: mvns R11, #3
l3933: mov R12, #23
l3934: ldrsb R14, [sp, +R12]
l3935: ldrEQsh R8, [sp, #-2]
l3936: adcs R4, R0, R3, LSR #15
l3937: ldrh R2, [sp, #+50]
l3938: rscEQ R2, R6, #36962304
l3939: stmIB R13, {R2, R3, R4, R6, R8, R10, R15}
l3940: rscs R8, R6, #3080192
l3941: bVC l3949
l3942: orrLT R1, R14, R4, LSR R6
l3943: sbcMI R14, R14, R4, LSL R7
l3944: subHIs R12, R11, R12
l3945: mov R5, R8, RRX 
l3946: subs R5, R15, #3702784
l3947: cmpHI R4, R12
l3948: clz R7, R10
l3949: subs R1, R1, R3
l3950: orrNEs R5, R10, #212992
l3951: add R5, R9, #920
l3952: andVS R8, R9, R11, RRX 
l3953: adcs R4, R6, R1, LSR R5
l3954: teqGE R8, R5, ROR #30
l3955: ands R10, R12, #1073741828
l3956: bics R9, R5, R7
l3957: tstCS R7, #1867776
l3958: ldr R4, l3960
l3959: b l3961
l3960: .word 1048500
l3961: swp R0, R14, [R4]
l3962: mov R4, R15
l3963: ldr R8, [sp], #+12
l3964: eor R8, R9, R9
l3965: eorLEs R11, R0, R14
l3966: ldrLT R4, [sp, #+16]
l3967: stmDA R13, {R5, R15}
l3968: ldmMIIB R13, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R11, R12, R14}
l3969: bicMIs R1, R14, #-201326591
l3970: cmp R12, R8, ROR R3
l3971: mov R8, #13
l3972: strB R6, [sp, +R8]
l3973: mov R8, #16
l3974: strCCB R9, [sp, +R8]
l3975: teqLE R10, #1207959554
l3976: ldrVCsb R1, [sp, #+49]
l3977: mov R5, #48
l3978: strB R6, [sp, +R5]
l3979: mov R5, #24
l3980: ldrMIh R2, [sp, +R5]
l3981: rsb R10, R15, #393216
l3982: cmpPL R1, R9
l3983: rscLS R1, R7, #-905969664
l3984: ldrMIB R12, [sp, #+31]
l3985: addNE R11, R5, R6, ROR #4
l3986: mov R3, #50
l3987: ldrh R10, [sp, +R3]
l3988: cmpGT R7, R8, LSR #18
l3989: eorGEs R11, R14, R6, RRX 
l3990: mov R7, R4, LSR R0
l3991: andGEs R0, R6, #1023410176
l3992: cmpVC R5, R6
l3993: cmn R9, R2, RRX 
l3994: mvns R3, R10, LSL #1
l3995: mov R11, #11
l3996: ldrCSB R2, [sp, +R11]
l3997: cmpCC R7, #595591168
l3998: addLSs R4, R14, #9536
l3999: mov R4, R3
l4000: mov R9, #11
l4001: strB R9, [sp, -R9]
l4002: ldrGEB R1, [sp, #-17]
l4003: add R2, R7, #1879048194
l4004: cmn R12, #174
l4005: ldmIA R13!, {R8, R10}
l4006: bCC l4016
l4007: adcPLs R1, R14, R3, LSR R4
l4008: rscCCs R5, R14, R8, RRX 
l4009: subCSs R6, R14, R8, LSL R3
l4010: rsbHI R7, R12, R7, LSR #9
l4011: movCS R5, R11
l4012: andGEs R9, R2, R7, LSL #13
l4013: cmnCS R11, R3, LSR #21
l4014: cmnEQ R2, R9
l4015: adcCCs R8, R14, R12
l4016: ands R0, R11, R7, RRX 
l4017: ldr R0, l4019
l4018: b l4020
l4019: .word 1048488
l4020: swpVC R10, R14, [R0]
l4021: mov R12, #42
l4022: strB R1, [sp, +R12]
l4023: andHI R10, R14, R0, RRX 
l4024: strB R12, [sp, #-5]
l4025: stmIA R13!, {R10}
l4026: stmDA R13!, {R0, R14}
l4027: subs R3, R7, R9, RRX 
l4028: tst R8, R11, RRX 
l4029: adcLSs R0, R9, R9
l4030: ldr R8, l4032
l4031: b l4033
l4032: .word 1048528
l4033: swpCS R11, R5, [R8]
l4034: mov R9, #14
l4035: strVSh R11, [sp, +R9]
l4036: adds R12, R12, R5
l4037: ldrVS R2, [sp, #+40]
l4038: ldr R10, l4040
l4039: b l4041
l4040: .word 1048552
l4041: swpNE R1, R0, [R10]
l4042: adds R14, R4, R0
l4043: ldr R2, l4045
l4044: b l4046
l4045: .word 1048512
l4046: swpLSb R1, R7, [R2]
l4047: cmn R2, R14
l4048: tst R0, R11
l4049: adcs R1, R3, R9, LSR R12
l4050: subGT R8, R1, R5, ROR #28
l4051: mov R6, #12
l4052: strh R3, [sp, +R6]
l4053: ldrCSB R12, [sp, #+9]
l4054: b l4060
l4055: add R1, R0, #230
l4056: movs R11, R1, LSR R14
l4057: movHIs R0, R5, ROR #6
l4058: teqPL R0, R5
l4059: b l4061
l4060: b l4056
l4061: ldr R14, l4063
l4062: b l4064
l4063: .word 1048492
l4064: swp R7, R11, [R14]
l4065: stmIA R13, {R0, R6, R7, R8, R13}
l4066: tstGT R4, R11, ASR #23
l4067: bicVC R12, R4, R14
l4068: strLSh R1, [sp, #-8]
l4069: teq R5, #57671680
l4070: strCSB R2, [sp, #-13]
l4071: orrs R12, R6, #228
l4072: mvnLT R10, R10
l4073: andCSs R1, R10, R10
l4074: b l4082
l4075: adds R10, R10, R7, RRX 
l4076: rsbCCs R10, R11, R3, LSR #23
l4077: eors R10, R9, #496
l4078: bicGEs R1, R12, R2, RRX 
l4079: eors R10, R0, R11, RRX 
l4080: adc R3, R4, R14, LSR R14
l4081: eorVC R7, R11, #151552
l4082: bicVS R0, R12, R4
l4083: orrNE R5, R14, R8, LSR R2
l4084: ldr R8, l4086
l4085: b l4087
l4086: .word 1048500
l4087: swpEQ R10, R4, [R8]
l4088: ands R4, R1, R12, RRX 
l4089: bCS l4095
l4090: add R1, R0, #6
l4091: eorGE R8, R4, R6, LSL R6
l4092: teqCC R4, #-1073741796
l4093: sub R0, R8, R0, LSR R7
l4094: b l4096
l4095: b l4091
l4096: andPL R9, R6, R0, LSR R7
l4097: mov R3, #2
l4098: ldrEQh R6, [sp, +R3]
l4099: addLEs R11, R14, #15
l4100: adcLTs R8, R1, #568
l4101: cmp R1, R7, ASR R0
l4102: mov R9, R8
l4103: rsb R7, R10, R6, ASR R1
l4104: mvnEQ R11, R0, ASR R2
l4105: eor R10, R9, R9
l4106: b l4115
l4107: add R1, R0, #223
l4108: movs R6, R3, LSR R8
l4109: orrs R2, R8, #16384
l4110: eorVC R12, R2, R4, RRX 
l4111: add R11, R8, R12
l4112: subCC R14, R3, R11
l4113: andCCs R6, R14, R9
l4114: b l4116
l4115: b l4108
l4116: cmp R10, #174063616
l4117: bicGT R5, R1, #3136
l4118: bVC l4123
l4119: add R1, R0, #6
l4120: subLS R1, R5, #738197507
l4121: orr R1, R4, R1, ROR #8
l4122: b l4124
l4123: b l4120
l4124: sub R0, R4, R1
l4125: ands R2, R4, #2818048
l4126: rscs R7, R5, R6, ASR R5
l4127: add R6, R14, R6
l4128: bGE l4130
l4129: bic R8, R3, R0, LSR R8
l4130: bicNEs R9, R3, R0
l4131: mov R0, #12
l4132: str R3, [sp], +R0
l4133: rsbs R5, R1, R1
l4134: ldr R14, l4136
l4135: b l4137
l4136: .word 1048520
l4137: swpGEb R0, R11, [R14]
l4138: ldrCC R3, [sp, #-16]
l4139: tstPL R8, #-1342177280
l4140: bHI l4147
l4141: add R1, R0, #20
l4142: tst R12, #158334976
l4143: subGT R10, R8, R12, ASR R2
l4144: mvns R14, #138
l4145: adcEQ R11, R0, R4, RRX 
l4146: b l4148
l4147: b l4142
l4148: subNEs R6, R1, R11, ROR #28
l4149: str R4, [sp, #-36]!
l4150: mov R10, #9
l4151: ldrEQB R9, [sp, +R10]
l4152: sbcCS R9, R1, R6, LSL #22
l4153: mvns R9, R11
l4154: cmnLS R14, R14, ASR R0
l4155: str R0, [sp], #+16
l4156: stmIB R13, {R3, R5, R11, R13}
l4157: rscVC R4, R9, #89
l4158: rscs R10, R5, R0, RRX 
l4159: movs R6, R3
l4160: cmp R7, #11264
l4161: strLEB R1, [sp, #-5]
l4162: tst R10, R7, ASR #9
l4163: ands R10, R1, R8, ROR #13
l4164: subPLs R11, R5, R8, RRX 
l4165: mov R8, #43
l4166: ldrLSsb R8, [sp, +R8]
l4167: clzPL R2, R7
l4168: ldrLSsh R11, [sp, #+10]
l4169: eorEQs R8, R4, R10
l4170: ldmDA R13!, {R3, R9}
l4171: sub R11, R10, R1, LSR R4
l4172: mov R4, #4
l4173: ldrh R6, [sp, -R4]
l4174: mov R6, #52
l4175: strNE R1, [sp, +R6]
l4176: cmn R5, R12, LSL #22
l4177: and R2, R15, R1, ASR #17
l4178: addCSs R6, R6, R7, ASR R4
l4179: mov R8, #52
l4180: strNEh R2, [sp, +R8]
l4181: eorGEs R0, R14, R0, LSR R2
l4182: ldrB R6, [sp, #+41]
l4183: andCCs R11, R0, #65011712
l4184: mov R11, #12
l4185: ldrNEsh R10, [sp, -R11]
l4186: subs R0, R5, R0, ASR #22
l4187: mvnLSs R11, R11, LSL R14
l4188: subVSs R0, R11, R11, ASR R0
l4189: subVS R5, R14, R12, ASR R7
l4190: mov R0, #30
l4191: ldrB R10, [sp, +R0]
l4192: adcGTs R10, R8, #155
l4193: teqPL R14, R0, LSR #16
l4194: ldrMIh R3, [sp, #+8]
l4195: rscs R9, R12, R15
l4196: orrGEs R12, R12, R14, ROR R4
l4197: subHIs R11, R9, R3, ROR R4
l4198: rscMI R5, R12, R0, ASR R2
l4199: orrs R12, R2, R0, LSL R6
l4200: sbcVS R11, R9, R6, LSR #16
l4201: orrVC R0, R12, R5, ASR #30
l4202: adcLE R12, R6, R2, ASR R11
l4203: adcs R4, R7, R8
l4204: andLSs R8, R15, R2, RRX 
l4205: rscs R10, R0, #156
l4206: bMI l4210
l4207: add R1, R0, #79
l4208: cmpPL R8, R5, ASR #1
l4209: b l4211
l4210: b l4208
l4211: rscVC R4, R5, R2
l4212: tstHI R2, R12, LSL #13
l4213: tst R11, R11
l4214: rsc R1, R14, R12, ASR R5
l4215: tstGT R2, #268435458
l4216: tst R12, #-1073741824
l4217: mov R4, #56
l4218: str R1, [sp, +R4]!
l4219: mov R9, #0
l4220: ldrLTsh R11, [sp, +R9]
l4221: bLT l4230
l4222: sbcNEs R14, R10, R0
l4223: cmpPL R6, R14, LSL R6
l4224: movLTs R11, R2, RRX 
l4225: add R2, R3, R2
l4226: cmpLS R3, R15, LSL #21
l4227: cmnLE R3, R4, LSR R7
l4228: adcGT R14, R5, R10, RRX 
l4229: bic R1, R0, R5
l4230: cmpNE R7, R5
l4231: mov R2, #8
l4232: strh R8, [sp, -R2]
l4233: mov R5, #4
l4234: ldr R4, [sp, +R5]!
l4235: rsbs R8, R6, R14
l4236: cmn R5, R7, ROR R12
l4237: ldr R2, l4239
l4238: b l4240
l4239: .word 1048528
l4240: swpb R8, R14, [R2]
l4241: cmpNE R6, #588
l4242: subHI R8, R8, R10, LSL R5
l4243: mov R5, #60
l4244: ldrh R9, [sp, -R5]
l4245: teq R4, #206
l4246: cmnLT R2, #1048576
l4247: tst R0, R14
l4248: strh R2, [sp, #-6]
l4249: clz R0, R8
l4250: cmnNE R8, R11, ASR R3
l4251: mov R1, #57
l4252: strB R10, [sp, -R1]
l4253: teq R4, #15138816
l4254: bVS l4261
l4255: add R1, R0, #124
l4256: sub R1, R6, R8, ASR #0
l4257: teqPL R12, R6, ROR R5
l4258: eorLE R4, R3, R3, LSR #7
l4259: orr R2, R1, R9, ASR R0
l4260: b l4262
l4261: b l4256
l4262: subHI R2, R11, #2544
l4263: mov R8, #64
l4264: ldrsb R5, [sp, -R8]
l4265: mov R11, #40
l4266: strLEh R14, [sp, -R11]
l4267: mov R4, #32
l4268: ldrLTsb R6, [sp, -R4]
l4269: cmnVS R7, #266240
l4270: cmp R5, #0
l4271: eors R0, R2, R9, RRX 
l4272: orrVCs R0, R14, R4, RRX 
l4273: ldr R8, l4275
l4274: b l4276
l4275: .word 1048520
l4276: swpLTb R12, R4, [R8]
l4277: cmpHI R4, R3, ROR #9
l4278: mov R9, #25
l4279: strB R4, [sp, -R9]
l4280: mov R3, #72
l4281: strLS R8, [sp, -R3]
l4282: rsbLT R12, R4, R11
l4283: ldr R0, l4285
l4284: b l4286
l4285: .word 1048492
l4286: swp R9, R6, [R0]
l4287: adds R7, R1, R0
l4288: tstLT R15, R4, LSL #14
l4289: cmpLT R4, R9
l4290: adds R2, R8, R9
l4291: mov R6, R5, ROR #11
l4292: orrs R10, R2, R9, ROR #23
l4293: mvns R4, R12
l4294: teq R6, #49020928
l4295: nop
l4296: subLT R11, R5, R5, LSL #22
l4297: mov R8, #46
l4298: strHIB R8, [sp, -R8]
l4299: ldrVCsh R1, [sp, #+0]
l4300: ldrsb R5, [sp, #-66]
l4301: clz R6, R12
l4302: ldrsh R4, [sp, #-46]
l4303: subPL R11, R5, R1, ROR #22
l4304: nop
l4305: subLE R3, R1, R10, ROR #9
l4306: cmn R8, R12
l4307: nop
l4308: mov R0, #8
l4309: strB R8, [sp, -R0]
l4310: orrCCs R2, R1, R5
l4311: cmnGE R4, R1, RRX 
l4312: ldrh R10, [sp, #-38]
l4313: mov R10, #15
l4314: ldrB R3, [sp, -R10]
l4315: mov R12, #2
l4316: ldrsh R3, [sp, +R12]
l4317: mvns R0, #15488
l4318: adc R9, R3, R6, LSL #31
l4319: rsb R14, R7, #17563648
l4320: eorGE R9, R10, R9, ROR #12
l4321: cmnVC R14, #61603840
l4322: subVS R2, R10, R7, LSL R9
l4323: ands R5, R2, R1, RRX 
l4324: tstGE R5, R14, ROR R3
l4325: ldr R8, [sp, #-72]!
l4326: tst R4, R14, LSL R4
l4327: subHI R5, R12, R6, ASR R12
l4328: ldrLSB R1, [sp, #+27]
l4329: rscs R12, R3, #1376256
l4330: mvn R3, R12
l4331: bHI l4338
l4332: addVSs R1, R6, R2, ASR R5
l4333: sbcs R12, R9, R15, RRX 
l4334: bicLEs R10, R9, R11, RRX 
l4335: rsbs R1, R15, #20971520
l4336: orr R5, R14, R10, RRX 
l4337: adds R9, R15, #802816
l4338: tstNE R4, #1409286147
l4339: addLS R6, R9, R6, LSL R1
l4340: ldrLEsh R3, [sp, #+0]
l4341: mov R12, #4
l4342: str R12, [sp, +R12]!
l4343: mov R12, #52
l4344: ldrGEB R5, [sp, +R12]
l4345: rscHI R2, R10, R14, ROR #30
l4346: rsb R1, R8, #99614720
l4347: mov R10, #26
l4348: ldrHIh R5, [sp, +R10]
l4349: orrEQs R1, R4, #8126464
l4350: clzMI R0, R1
l4351: rsc R2, R9, R8
l4352: nop
l4353: mvn R4, R0
l4354: rsbs R5, R4, R1, LSL R5
l4355: cmpLE R0, R5
l4356: clzVC R11, R5
l4357: strh R12, [sp, #+30]
l4358: teqLE R10, R9, ROR R2
l4359: mov R1, #56
l4360: ldr R14, [sp, +R1]!
l4361: orrs R9, R9, R6
l4362: clz R14, R7
l4363: ldrB R10, [sp, #-15]
l4364: ldrB R12, [sp, #-32]
l4365: mov R3, #0
l4366: ldr R1, [sp], +R3
l4367: rsc R10, R9, R10, ASR #1
l4368: eorCSs R12, R4, #956301312
l4369: b l4376
l4370: add R1, R0, #46
l4371: teqNE R1, R15
l4372: movPL R4, R4, ROR #5
l4373: movs R2, R6, LSL R7
l4374: sbcs R2, R14, R10, LSL R9
l4375: b l4377
l4376: b l4371
l4377: rsb R11, R9, R12, ROR #3
l4378: rsbVC R5, R10, R6, RRX 
l4379: strLEh R1, [sp, #-36]
l4380: ldr R8, l4382
l4381: b l4383
l4382: .word 1048520
l4383: swpMIb R10, R1, [R8]
l4384: cmn R14, R5
l4385: orr R2, R14, R3, ASR #6
l4386: orrCCs R3, R5, #66322432
l4387: ldrGEh R8, [sp, #-38]
l4388: subNEs R10, R11, R11
l4389: teqVC R5, R0
l4390: bicGT R6, R5, R14, ASR R5
l4391: bGT l4399
l4392: eors R14, R12, R9
l4393: cmn R5, R11
l4394: sbcs R11, R1, #8585216
l4395: teq R3, #1342177282
l4396: eorLE R9, R11, R9, LSL #28
l4397: rscs R11, R9, R15, LSL #28
l4398: tst R2, R0, LSR R4
l4399: subs R10, R6, R15
l4400: subCSs R5, R5, R1
l4401: orr R3, R14, #52953088
l4402: ldr R0, l4404
l4403: b l4405
l4404: .word 1048548
l4405: swpLEb R10, R1, [R0]
l4406: cmn R10, R14, LSR #30
l4407: movMI R12, R1, RRX 
l4408: clzGE R8, R8
l4409: adc R0, R8, #1232
l4410: tstNE R4, R6, ROR #16
l4411: ldr R3, l4413
l4412: b l4414
l4413: .word 1048544
l4414: swpVSb R9, R5, [R3]
l4415: mov R12, #50
l4416: ldrsh R11, [sp, -R12]
l4417: stmDA R13!, {R1, R2, R3, R5, R8, R10}
l4418: subNEs R0, R15, R4
l4419: ldmGTIA R13, {R7}
l4420: rscLS R14, R3, #82837504
l4421: teq R11, R8
l4422: subLTs R9, R3, R5, RRX 
l4423: ldrh R0, [sp, #-26]
l4424: teq R1, R12, ROR #24
l4425: ldr R5, [sp], #+24
l4426: cmpLT R6, R7, LSR #1
l4427: ldr R6, l4429
l4428: b l4430
l4429: .word 1048528
l4430: swpEQ R0, R11, [R6]
l4431: subGTs R8, R11, R6
l4432: ldrB R8, [sp, #-1]
l4433: mov R11, #17
l4434: ldrLSB R1, [sp, -R11]
l4435: adc R5, R11, #3376
l4436: sbc R5, R0, R8, ASR #28
l4437: mov R14, #31
l4438: strLSB R7, [sp, -R14]
l4439: clz R5, R1
l4440: tstNE R10, R6
l4441: teqGT R11, R10, RRX 
l4442: eor R0, R2, R15, LSL #27
l4443: clz R7, R10
l4444: andLE R10, R6, #17408
l4445: ldmDA R13, {R1, R3, R4, R5, R6, R7, R11, R12, R14}
l4446: subs R3, R1, R10, LSL #16
l4447: b l4448
l4448: subEQ R8, R9, R15
l4449: ldr R8, l4451
l4450: b l4452
l4451: .word 1048480
l4452: swp R6, R6, [R8]
l4453: rscHI R6, R10, R7, LSL #6
l4454: addGT R8, R5, #327155712
l4455: ldmIB R13!, {R6}
l4456: ldrGEh R6, [sp, #-32]
l4457: rscMI R0, R8, R4, RRX 
l4458: bic R3, R0, R8, ASR R14
l4459: rsbs R12, R15, #16384
l4460: clz R0, R9
l4461: adc R0, R4, #402653184
l4462: ldrCCsh R10, [sp, #-22]
l4463: adcs R0, R2, R15
l4464: cmpNE R14, R10, ROR #4
l4465: b l4469
l4466: clzEQ R4, R9
l4467: tst R15, #285212672
l4468: orrVS R5, R14, #84934656
l4469: rscMI R14, R10, R14, LSR #12
l4470: clzNE R8, R11
l4471: strh R4, [sp, #-62]
l4472: bics R12, R7, R15, LSL #2
l4473: mvnLTs R9, R5, RRX 
l4474: ldmIB R13!, {R10}
l4475: ldrsh R1, [sp, #-26]
l4476: eorCC R14, R2, R4, LSL #10
l4477: strVSB R6, [sp, #-32]
l4478: strB R0, [sp, #+4]
l4479: tst R11, R6, LSL R3
l4480: cmn R15, R6
l4481: teq R8, #5308416
l4482: cmnVC R6, R2, LSR #17
l4483: mov R2, #2
l4484: strHIB R7, [sp, +R2]
l4485: bCC l4494
l4486: teq R10, R1
l4487: clzPL R12, R3
l4488: bicEQ R8, R3, R6, LSR R5
l4489: cmp R8, R4
l4490: adds R2, R1, #-167772160
l4491: eors R11, R5, #360710144
l4492: cmnVC R3, R11, ASR #9
l4493: eorHI R14, R8, #246415360
l4494: adds R11, R3, R10, LSL R8
l4495: ldrLTB R2, [sp, #-19]
l4496: mov R6, #6
l4497: ldrGTh R12, [sp, -R6]
l4498: mov R2, #62
l4499: ldrCSsh R8, [sp, -R2]
l4500: mov R14, #43
l4501: ldrVSB R12, [sp, -R14]
l4502: orrPLs R4, R5, R14
l4503: bGT l4509
l4504: add R1, R0, #118
l4505: sub R12, R9, #1851392
l4506: sbcLS R7, R9, R8, RRX 
l4507: andLSs R12, R3, R12, RRX 
l4508: b l4510
l4509: b l4505
l4510: and R14, R6, R1
l4511: b l4520
l4512: add R1, R0, #135
l4513: orrHIs R9, R1, #675282944
l4514: orr R14, R3, R9
l4515: cmpLE R5, R0, LSL #30
l4516: eorNE R4, R6, R3, ASR R9
l4517: movHI R4, #71680
l4518: subLE R14, R8, R15
l4519: b l4521
l4520: b l4513
l4521: mov R6, #0
l4522: ldrPLh R10, [sp, +R6]
l4523: movPL R12, R3, ROR R0
l4524: strB R6, [sp, #-33]
l4525: mov R11, #56
l4526: ldrNEh R9, [sp, -R11]
l4527: bPL l4533
l4528: add R1, R0, #73
l4529: mvnLSs R0, R9, ROR R6
l4530: subCC R8, R8, #-1073741792
l4531: mvnVCs R3, #228
l4532: b l4534
l4533: b l4529
l4534: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R10, R12, R14}
l4535: ldrLTh R12, [sp, #+48]
l4536: tstEQ R2, R1
l4537: mov R5, #2
l4538: ldrB R6, [sp, +R5]
l4539: rscs R10, R12, R6
l4540: orrVSs R12, R1, R6, ASR R9
l4541: ldrsh R2, [sp, #+6]
l4542: adcs R2, R5, R7, LSL R7
l4543: rsb R11, R2, #-788529152
l4544: bics R12, R10, R7, RRX 
l4545: strVSB R11, [sp, #+10]
l4546: bicLE R8, R3, #253
l4547: cmp R2, R3, ROR R3
l4548: nop
l4549: ldr R12, l4551
l4550: b l4552
l4551: .word 1048524
l4552: swpCS R7, R0, [R12]
l4553: movs R4, R8, RRX 
l4554: ldrB R14, [sp, #-19]
l4555: orrLEs R2, R6, R5, ASR R9
l4556: teqHI R5, R2, RRX 
l4557: add R5, R4, #-1073741781
l4558: ldrsb R7, [sp, #-7]
l4559: sub R12, R12, R5, RRX 
l4560: mvnCSs R9, #-2147483615
l4561: ldr R8, l4563
l4562: b l4564
l4563: .word 1048500
l4564: swp R1, R12, [R8]
l4565: bHI l4572
l4566: add R1, R0, #190
l4567: subMIs R5, R10, R10, LSL #4
l4568: subs R5, R7, R11
l4569: bics R5, R8, R8, RRX 
l4570: addLSs R5, R4, R1
l4571: b l4573
l4572: b l4567
l4573: stmIB R13!, {R13}
l4574: add R3, R11, #25600
l4575: stmDB R13!, {R13}
l4576: ldr R10, [sp, #-8]!
l4577: cmp R2, R7, ASR R12
l4578: adcGTs R10, R4, R6, LSL R4
l4579: mvn R12, R4
l4580: bLT l4584
l4581: addGEs R6, R4, #33536
l4582: orrs R12, R3, R11, ROR #15
l4583: cmnCS R8, R8, ROR #31
l4584: rscLT R10, R14, R10
l4585: rscLS R10, R2, R12, LSL #24
l4586: subs R8, R1, R14
l4587: mvnVC R12, #852
l4588: eors R9, R6, R8, ROR R9
l4589: ldrVSsb R11, [sp, #+47]
l4590: bicGEs R5, R6, R12, ROR R10
l4591: ands R5, R10, R9, LSR #7
l4592: adcGTs R6, R3, R11, RRX 
l4593: strLSh R12, [sp, #+6]
l4594: mov R9, #4
l4595: strB R1, [sp, -R9]
l4596: stmIB R13!, {R0, R5}
l4597: ldrLTB R9, [sp, #-12]
l4598: nop
l4599: mov R7, #28
l4600: ldrsh R1, [sp, +R7]
l4601: movGE R4, R4, ASR R6
l4602: rscLSs R8, R8, #29952
l4603: bGT l4606
l4604: cmp R11, #145752064
l4605: cmp R5, R7, LSL #26
l4606: rscs R0, R2, R14
l4607: ldr R0, l4609
l4608: b l4610
l4609: .word 1048512
l4610: swpb R11, R14, [R0]
l4611: nop
l4612: subLS R7, R5, R12, LSL R9
l4613: mvnCCs R12, R4, RRX 
l4614: b l4618
l4615: add R1, R0, #185
l4616: cmpLT R15, R6, ROR #1
l4617: b l4619
l4618: b l4616
l4619: rsbHI R4, R12, R9
l4620: ldrGEh R9, [sp, #-20]
l4621: adc R3, R8, R10
l4622: addGE R10, R9, R2, RRX 
l4623: sbcNE R0, R9, R6, ASR #29
l4624: orrs R9, R7, R3, ASR #16
l4625: ldrHIsb R3, [sp, #+4]
l4626: ldr R9, l4628
l4627: b l4629
l4628: .word 1048536
l4629: swpVS R8, R1, [R9]
l4630: movGT R14, R15, RRX 
l4631: subs R6, R15, #830472192
l4632: subCSs R0, R3, #-536870903
l4633: sbcVS R0, R1, R3
l4634: str R8, [sp, #+0]
l4635: ldrGTB R10, [sp, #+13]
l4636: bicCS R8, R3, R6, ROR #4
l4637: ldr R6, l4639
l4638: b l4640
l4639: .word 1048512
l4640: swpLS R4, R1, [R6]
l4641: ldr R10, l4643
l4642: b l4644
l4643: .word 1048516
l4644: swpLTb R9, R14, [R10]
l4645: adc R8, R7, R0
l4646: clz R8, R14
l4647: stmDB R13!, {R6, R11, R14}
l4648: nop
l4649: orrs R4, R11, R0, ROR R8
l4650: ldr R0, l4652
l4651: b l4653
l4652: .word 1048504
l4653: swpGEb R14, R11, [R0]
l4654: adcVSs R7, R8, #50855936
l4655: cmn R11, R7, LSL R12
l4656: sbcs R4, R0, #425984
l4657: cmnGE R8, R0, LSR #2
l4658: ldrMIsb R14, [sp, #+1]
l4659: mvns R9, R1
l4660: str R10, [sp, #+48]!
l4661: ldrVSB R4, [sp, #+15]
l4662: ldrh R6, [sp, #-32]
l4663: rscEQs R8, R7, R0
l4664: cmn R14, R5
l4665: ldr R1, l4667
l4666: b l4668
l4667: .word 1048528
l4668: swpb R3, R2, [R1]
l4669: mov R1, #8
l4670: ldr R4, [sp], -R1
l4671: ldr R11, l4673
l4672: b l4674
l4673: .word 1048532
l4674: swpCSb R14, R12, [R11]
l4675: mov R6, #0
l4676: ldr R11, [sp], +R6
l4677: ldr R2, l4679
l4678: b l4680
l4679: .word 1048540
l4680: swp R9, R1, [R2]
l4681: orrs R7, R1, R9
l4682: ldmIA R13!, {R0, R1}
l4683: tstGT R10, R10, RRX 
l4684: bPL l4690
l4685: add R1, R0, #172
l4686: sbcHIs R0, R0, R0
l4687: and R12, R8, #81920
l4688: rscEQ R12, R5, R1, ASR R5
l4689: b l4691
l4690: b l4686
l4691: ldr R12, l4693
l4692: b l4694
l4693: .word 1048512
l4694: swpCSb R9, R7, [R12]
l4695: andNEs R11, R3, R8, LSL R10
l4696: sbcGEs R1, R0, #44032
l4697: andPL R3, R2, R2, ASR R8
l4698: ldr R12, l4700
l4699: b l4701
l4700: .word 1048544
l4701: swpGE R2, R14, [R12]
l4702: mov R4, #4
l4703: str R7, [sp], +R4
l4704: add R11, R0, R10, LSL R9
l4705: rsbLSs R9, R8, R2, LSR R1
l4706: ldrLEh R3, [sp, #-50]
l4707: addCC R14, R7, R2, RRX 
l4708: ldrsh R12, [sp, #-20]
l4709: mvns R12, R4
l4710: bic R5, R15, #364904448
l4711: adcGT R6, R6, R9, ASR #12
l4712: addLS R2, R5, #163577856
l4713: tstCC R5, R11, LSL R9
l4714: add R14, R12, R14
l4715: mov R0, #18
l4716: ldrVCB R6, [sp, -R0]
l4717: nop
l4718: bLE l4727
l4719: add R1, R0, #42
l4720: mvnLEs R6, #161480704
l4721: mvn R0, R5, ASR R6
l4722: clzLT R7, R0
l4723: movGT R3, #-134217727
l4724: cmp R6, #1946157056
l4725: orr R2, R7, R10
l4726: b l4728
l4727: b l4720
l4728: bCS l4729
l4729: rsbLSs R7, R3, R8
l4730: stmLSDB R13, {R3, R4, R8, R12, R15}
l4731: mov R2, #52
l4732: ldr R11, [sp, -R2]
l4733: ldrB R6, [sp, #-39]
l4734: bCC l4738
l4735: add R1, R0, #48
l4736: adc R5, R10, R5
l4737: b l4739
l4738: b l4736
l4739: mov R12, #18
l4740: strLTh R12, [sp, -R12]
l4741: strLTB R14, [sp, #-3]
l4742: ldr R8, l4744
l4743: b l4745
l4744: .word 1048536
l4745: swp R14, R9, [R8]
l4746: cmpEQ R11, R6, ROR R5
l4747: subNE R7, R6, #222208
l4748: cmn R8, R11
l4749: mov R1, #60
l4750: strh R7, [sp, -R1]
l4751: tstLE R9, R4, LSL R4
l4752: ldrHIh R2, [sp, #+0]
l4753: mvns R7, R5
l4754: strLEB R5, [sp, #+2]
l4755: sbc R8, R7, R7, RRX 
l4756: mov R4, #10
l4757: ldrLEh R0, [sp, -R4]
l4758: orr R2, R8, R12
l4759: bicGT R4, R2, R14, LSL #18
l4760: mov R11, #25
l4761: strPLB R11, [sp, -R11]
l4762: rsbCSs R5, R4, R0
l4763: ldrh R2, [sp, #-14]
l4764: subCCs R9, R9, R5
l4765: subVC R8, R0, #2146304
l4766: cmnVC R8, #2097152
l4767: adcs R11, R5, #576
l4768: ldrVSsb R0, [sp, #+2]
l4769: str R12, [sp], #-44
l4770: ldmDB R13!, {R2, R5}
l4771: ldr R6, l4773
l4772: b l4774
l4773: .word 1048488
l4774: swpb R5, R2, [R6]
l4775: mov R8, #6
l4776: strh R8, [sp, -R8]
l4777: rsbHI R10, R7, R6
l4778: mvnGTs R10, #420
l4779: mov R1, #8
l4780: strh R9, [sp, +R1]
l4781: adcGT R0, R1, R11
l4782: bNE l4791
l4783: sub R1, R0, R2, ROR #22
l4784: tst R14, R7
l4785: bic R3, R12, R12, ASR R3
l4786: bics R4, R15, R8
l4787: subCC R8, R1, R8
l4788: bic R12, R11, R0, ROR R0
l4789: mov R9, R14
l4790: sbcMI R7, R0, R0, ASR #0
l4791: cmp R4, R0, RRX 
l4792: teq R7, R8, ROR #30
l4793: ldr R2, l4795
l4794: b l4796
l4795: .word 1048500
l4796: swpMIb R1, R1, [R2]
l4797: bLE l4800
l4798: mvn R12, R7, RRX 
l4799: orrPL R10, R8, R1, ROR R9
l4800: movLS R9, R9, RRX 
l4801: andLTs R9, R10, R10, RRX 
l4802: eorHI R10, R15, R14
l4803: bCC l4807
l4804: subLT R9, R15, R11, LSL #27
l4805: tstMI R8, R8
l4806: movLS R8, #3194880
l4807: rscGEs R12, R10, R11, RRX 
l4808: cmp R4, R0, LSL R2
l4809: orrCS R8, R11, R7
l4810: teqCC R12, R11, ROR R14
l4811: rscVSs R8, R11, R2
l4812: mov R3, #40
l4813: ldrB R6, [sp, +R3]
l4814: nop
l4815: tstCC R2, R8, ROR R9
l4816: ldr R9, l4818
l4817: b l4819
l4818: .word 1048532
l4819: swp R7, R12, [R9]
l4820: ldr R14, l4822
l4821: b l4823
l4822: .word 1048536
l4823: swpLTb R11, R12, [R14]
l4824: cmn R10, R9, RRX 
l4825: nop
l4826: mov R6, #40
l4827: strGTB R11, [sp, +R6]
l4828: ldr R3, l4830
l4829: b l4831
l4830: .word 1048552
l4831: swpVC R12, R10, [R3]
l4832: bicLSs R11, R8, #23808
l4833: mov R9, #54
l4834: ldrLTh R10, [sp, +R9]
l4835: cmn R9, #-2147483640
l4836: mov R7, #2
l4837: strHIB R6, [sp, +R7]
l4838: and R10, R7, R8
l4839: movPLs R2, R4, LSL #6
l4840: clz R7, R2
l4841: ldr R9, l4843
l4842: b l4844
l4843: .word 1048488
l4844: swpLS R0, R11, [R9]
l4845: bNE l4847
l4846: addVSs R6, R1, R10
l4847: bic R12, R4, #103
l4848: tst R8, R14, LSR #27
l4849: sbcLS R14, R2, R1
l4850: and R9, R3, R0, ROR #11
l4851: adds R2, R0, R2
l4852: cmn R5, R2, ASR #8
l4853: mvns R3, R9
l4854: mvn R4, R7, RRX 
l4855: stmGTIA R13, {R0, R4, R6}
l4856: ldrLTB R11, [sp, #+59]
l4857: ldr R10, l4859
l4858: b l4860
l4859: .word 1048548
l4860: swpHI R0, R14, [R10]
l4861: ldr R2, [sp, #+16]!
l4862: clzMI R9, R12
l4863: bLT l4869
l4864: mov R9, R9, LSL R8
l4865: cmnVS R4, R8
l4866: rsbLS R0, R0, #133120
l4867: teq R14, R4, ASR #22
l4868: tstLS R3, R0
l4869: clz R6, R1
l4870: ldrB R5, [sp, #+41]
l4871: mov R11, #16
l4872: str R12, [sp, +R11]!
l4873: orrLSs R8, R5, R6
l4874: subGT R1, R11, R9, ROR R0
l4875: ldr R1, l4877
l4876: b l4878
l4877: .word 1048532
l4878: swpVSb R7, R7, [R1]
l4879: sbcLTs R14, R10, R5
l4880: mov R2, #11
l4881: ldrsb R6, [sp, -R2]
l4882: b l4886
l4883: add R1, R0, #46
l4884: clzCS R14, R3
l4885: b l4887
l4886: b l4884
l4887: teq R14, R14, LSR R10
l4888: ldr R4, l4890
l4889: b l4891
l4890: .word 1048520
l4891: swpLS R10, R11, [R4]
l4892: cmn R2, R5, RRX 
l4893: rsbs R6, R11, R10, ASR #25
l4894: bicVSs R6, R15, #20
l4895: movVC R12, R6
l4896: tst R0, R9, LSL #18
l4897: ldr R1, l4899
l4898: b l4900
l4899: .word 1048552
l4900: swpGE R4, R8, [R1]
l4901: rsbMIs R5, R12, R1, LSR #25
l4902: mov R1, #2
l4903: strh R3, [sp, -R1]
l4904: rscVC R5, R11, #-1073741817
l4905: ldr R4, l4907
l4906: b l4908
l4907: .word 1048536
l4908: swpb R12, R1, [R4]
l4909: teqPL R10, R7, LSL R0
l4910: adds R12, R11, #832
l4911: cmnLS R1, #1073741883
l4912: ldrHIh R2, [sp, #+28]
l4913: orrNEs R12, R1, #55040
l4914: stmIB R13!, {R3, R5, R6, R10, R12, R14}
l4915: subPLs R6, R14, #132
l4916: mov R12, #7
l4917: ldrCCsb R8, [sp, +R12]
l4918: rscs R0, R0, R7, RRX 
l4919: stmDB R13!, {R15}
l4920: orrVSs R8, R0, R5, ASR R12
l4921: bicHI R8, R1, R5, RRX 
l4922: b l4930
l4923: add R1, R0, #58
l4924: rscCS R12, R0, #655360
l4925: clz R11, R11
l4926: cmp R1, R5
l4927: sbcHI R7, R14, R6, ASR R7
l4928: addLE R14, R6, R15, RRX 
l4929: b l4931
l4930: b l4924
l4931: ldrsh R7, [sp, #-56]
l4932: mov R2, #8
l4933: ldrVCsb R14, [sp, -R2]
l4934: andCCs R9, R7, R9
l4935: orrMIs R1, R5, R0, ROR R3
l4936: ldrh R1, [sp, #-56]
l4937: andCS R9, R11, R14
l4938: stmDA R13, {R8, R12}
l4939: bHI l4945
l4940: add R1, R0, #82
l4941: clzMI R3, R5
l4942: rscVCs R7, R15, #48758784
l4943: orrVS R5, R10, R11
l4944: b l4946
l4945: b l4941
l4946: tstVS R7, R10, ROR R8
l4947: and R2, R15, R3, LSL #10
l4948: tstLE R8, R11, RRX 
l4949: cmpLS R8, R15
l4950: bGT l4954
l4951: add R1, R0, #174
l4952: teq R1, R15, ASR #7
l4953: b l4955
l4954: b l4952
l4955: subPLs R12, R4, R5
l4956: ldrPLh R9, [sp, #-8]
l4957: adc R0, R14, R3
l4958: ldrHIsb R0, [sp, #-42]
l4959: b l4962
l4960: cmpPL R14, #356515840
l4961: sub R12, R12, R15
l4962: sbcPL R6, R14, R7
l4963: ldrCSsb R3, [sp, #-32]
l4964: movGTs R7, #2555904
l4965: ldr R4, l4967
l4966: b l4968
l4967: .word 1048548
l4968: swpVC R8, R11, [R4]
l4969: rsbs R0, R7, R1
l4970: ldr R10, l4972
l4971: b l4973
l4972: .word 1048480
l4973: swpCSb R8, R1, [R10]
l4974: orr R10, R5, R9, LSR #27
l4975: tst R14, R3, RRX 
l4976: teq R1, R4, ROR R7
l4977: bMI l4981
l4978: add R1, R0, #255
l4979: tstLT R15, #1073741828
l4980: b l4982
l4981: b l4979
l4982: bic R1, R7, R5
l4983: mov R11, #60
l4984: str R2, [sp, -R11]
l4985: rscs R10, R6, R3, LSL #1
l4986: bLE l4995
l4987: cmn R12, #738197504
l4988: sbcEQ R14, R7, R12
l4989: clzVS R11, R9
l4990: rsbCSs R5, R7, R12
l4991: sbc R4, R5, R3, LSR R1
l4992: mvn R14, R8
l4993: cmpHI R3, #864026624
l4994: teqHI R4, R5
l4995: cmpMI R8, R9, ASR #31
l4996: clz R12, R11
l4997: rsbCS R11, R10, R3, ROR #11
l4998: bMI l5008
l4999: and R0, R10, R11, LSL #30
l5000: adcCCs R5, R6, #264241152
l5001: eorGEs R1, R1, R3, ASR R5
l5002: subCCs R7, R4, R12, LSL #15
l5003: tstGE R9, R7
l5004: rsbs R4, R7, #-1409286141
l5005: sbcVC R0, R11, R12, ASR R0
l5006: mvnCSs R0, R8
l5007: cmpCC R14, R1, RRX 
l5008: orr R10, R2, R14, ROR R10
l5009: ldr R7, l5011
l5010: b l5012
l5011: .word 1048552
l5012: swpb R10, R3, [R7]
l5013: b l5020
l5014: cmn R7, #225280
l5015: bics R14, R4, R11, ASR R14
l5016: mvn R5, #88064
l5017: rsbMIs R4, R12, R3, LSR R4
l5018: adcEQs R14, R10, R10, LSR R2
l5019: bic R6, R4, R9, LSL R14
l5020: mvnGTs R3, #224395264
l5021: tst R8, R1, LSL R12
l5022: ldrVSsb R3, [sp, #-37]
l5023: ldr R6, l5025
l5024: b l5026
l5025: .word 1048512
l5026: swp R9, R14, [R6]
l5027: mov R12, #46
l5028: ldrsb R4, [sp, -R12]
l5029: ldrB R6, [sp, #-13]
l5030: ldrVSsh R5, [sp, #+12]
l5031: andGTs R0, R9, R11
l5032: bLT l5036
l5033: rsc R5, R14, R3, LSR R7
l5034: subLE R1, R5, R10
l5035: clzVC R7, R10
l5036: addHIs R4, R5, #591396864
l5037: mov R1, #0
l5038: ldr R8, [sp, +R1]!
l5039: mov R12, #22
l5040: ldrEQsh R3, [sp, -R12]
l5041: mov R3, #0
l5042: ldrB R4, [sp, +R3]
l5043: ldr R3, l5045
l5044: b l5046
l5045: .word 1048492
l5046: swp R7, R4, [R3]
l5047: ldr R1, l5049
l5048: b l5050
l5049: .word 1048524
l5050: swpGT R12, R3, [R1]
l5051: cmnEQ R14, R0
l5052: ldr R14, l5054
l5053: b l5055
l5054: .word 1048496
l5055: swpb R9, R0, [R14]
l5056: teq R6, R8, RRX 
l5057: eors R1, R14, R8, RRX 
l5058: mov R1, #10
l5059: strPLh R0, [sp, -R1]
l5060: rsc R6, R8, R8, ROR #24
l5061: ldr R11, l5063
l5062: b l5064
l5063: .word 1048552
l5064: swpHIb R3, R9, [R11]
l5065: eors R1, R8, R3
l5066: strVCB R7, [sp, #-9]
l5067: movs R7, R0, LSL R11
l5068: mov R10, #3
l5069: ldrGEsb R5, [sp, -R10]
l5070: str R12, [sp, #-24]!
l5071: cmnCS R5, #191488
l5072: teq R9, R7, ROR #26
l5073: ldr R5, l5075
l5074: b l5076
l5075: .word 1048504
l5076: swpGE R14, R10, [R5]
l5077: rsbs R6, R11, R7, LSL #1
l5078: ldrB R1, [sp, #-24]
l5079: tst R11, #-1073741813
l5080: clzMI R1, R12
l5081: orrLSs R0, R4, R10, RRX 
l5082: rsbVS R1, R11, #184320
l5083: mov R2, #26
l5084: strh R14, [sp, +R2]
l5085: cmpGT R8, R8, ASR R5
l5086: mov R11, #24
l5087: str R12, [sp], -R11
l5088: mvn R7, #18432
l5089: eorLT R0, R2, R2, ASR R10
l5090: cmnCS R3, #4544
l5091: strh R3, [sp, #+58]
l5092: ldrLSsh R11, [sp, #+46]
l5093: bVS l5102
l5094: add R1, R0, #155
l5095: mvnNEs R14, R4
l5096: orrLSs R7, R15, R7
l5097: bicEQs R1, R5, R5, LSR R4
l5098: mvnLTs R14, R5
l5099: rsc R14, R3, R10, LSL #16
l5100: rscLE R4, R9, R6
l5101: b l5103
l5102: b l5095
l5103: str R12, [sp, #+8]!
l5104: addHI R3, R8, #8912896
l5105: mov R11, #52
l5106: strh R7, [sp, +R11]
l5107: movLS R12, R10, ROR R2
l5108: sbcVSs R9, R5, R8, ROR R7
l5109: movMIs R5, R7, LSL #20
l5110: strLSh R0, [sp, #+16]
l5111: mov R0, #4
l5112: strGTh R5, [sp, +R0]
l5113: cmpPL R1, R1
l5114: bHI l5115
l5115: sbcCSs R11, R7, #25165824
l5116: rscVC R0, R3, R15
l5117: subLTs R7, R14, #-536870905
l5118: adcCCs R2, R15, R11
l5119: mov R2, #26
l5120: ldrsh R5, [sp, +R2]
l5121: cmpVC R10, R12, LSL R9
l5122: add R12, R1, R1, LSR #23
l5123: orr R1, R1, R8, RRX 
l5124: mov R0, #23
l5125: ldrCSsb R2, [sp, +R0]
l5126: rscNE R8, R5, #708608
l5127: str R10, [sp, #+52]!
l5128: bic R5, R1, R3, LSL R14
l5129: cmpMI R12, #-2147483630
l5130: subEQs R2, R0, #1073741849
l5131: addVSs R11, R7, #24832
l5132: eorVSs R8, R1, R6
l5133: and R10, R10, R12, RRX 
l5134: tst R7, R6, ASR #17
l5135: ldrsh R14, [sp, #-20]
l5136: clz R7, R4
l5137: addCCs R6, R7, R6, ROR #8
l5138: b l5143
l5139: add R1, R0, #213
l5140: sbcMIs R10, R7, R1, LSL #21
l5141: movLTs R11, R1, ROR R0
l5142: b l5144
l5143: b l5140
l5144: orrLS R9, R7, R4, LSL R7
l5145: nop
l5146: ldrCCh R3, [sp, #-18]
l5147: adcMI R1, R3, R14, LSR R11
l5148: teqHI R0, #-2147483586
l5149: mvnLTs R12, R4, LSL R0
l5150: mov R1, #64
l5151: str R15, [sp], -R1
l5152: subs R2, R11, R2
l5153: andCS R12, R0, #1036288
l5154: teqGT R14, R14, ASR R1
l5155: eorNEs R9, R1, R14, LSL R4
l5156: sub R14, R11, R9
l5157: nop
l5158: mov R4, #26
l5159: ldrsh R2, [sp, +R4]
l5160: b l5166
l5161: add R1, R0, #121
l5162: orrGTs R10, R11, R9, LSL #25
l5163: clzHI R2, R11
l5164: tst R9, R4
l5165: b l5167
l5166: b l5162
l5167: ldr R5, l5169
l5168: b l5170
l5169: .word 1048544
l5170: swpGE R6, R2, [R5]
l5171: mov R1, #15
l5172: ldrLTsb R2, [sp, +R1]
l5173: bCC l5182
l5174: cmp R4, R14, ASR R11
l5175: cmnPL R3, #1441792
l5176: rsbLT R1, R6, R9, LSR R10
l5177: cmpLS R5, R11
l5178: andEQs R5, R3, R7, ROR #10
l5179: mvns R11, R7
l5180: teqLS R5, R4, RRX 
l5181: sub R5, R0, R0
l5182: subGT R3, R9, #75
l5183: sub R7, R3, R2, ROR R11
l5184: rscs R14, R11, R3, ASR R1
l5185: cmpVC R14, R8, ASR R0
l5186: teqPL R4, R15, LSR #15
l5187: mvnCSs R6, R1, ASR R7
l5188: rsbs R7, R12, R6
l5189: mov R11, #46
l5190: ldrh R4, [sp, +R11]
l5191: stmGEIA R13, {R0, R1, R2, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15}
l5192: ands R6, R14, R6, ROR #27
l5193: cmnMI R8, R5, RRX 
l5194: bCS l5201
l5195: add R1, R0, #114
l5196: and R8, R9, R3
l5197: cmnMI R1, #186
l5198: sub R9, R1, R0, LSR #29
l5199: teq R5, R6, RRX 
l5200: b l5202
l5201: b l5196
l5202: orr R10, R9, R4, RRX 
l5203: movLS R5, R3
l5204: adc R7, R4, R8
l5205: adds R6, R9, R0, LSR R10
l5206: sbcLE R10, R11, R11, LSL #31
l5207: nop
l5208: bicCCs R4, R12, R5
l5209: cmpVS R11, #41216
l5210: mov R5, #12
l5211: ldr R1, [sp, +R5]!
l5212: ands R11, R14, R2
l5213: tst R9, R0
l5214: addCS R10, R11, R6
l5215: mov R6, #9
l5216: strHIB R12, [sp, +R6]
l5217: cmpLE R10, R2, ROR R6
l5218: ldrGEB R6, [sp, #+10]
l5219: mov R5, #35
l5220: ldrLTB R8, [sp, +R5]
l5221: bMI l5229
l5222: movCS R0, R3
l5223: mov R11, #55040
l5224: rsbGT R3, R8, R4, RRX 
l5225: sbc R6, R6, R3
l5226: sbcCC R5, R14, R3, LSL R1
l5227: adcVC R4, R4, R7
l5228: teq R6, R14, LSR #1
l5229: andVSs R0, R9, #1610612742
l5230: mvnVC R4, R11, ASR #30
l5231: orrVS R0, R12, #1140850690
l5232: mov R4, #32
l5233: ldrCCsh R7, [sp, +R4]
l5234: bLT l5240
l5235: add R1, R0, #228
l5236: mvn R2, #8768
l5237: cmnVS R9, R11, LSL #23
l5238: bics R10, R9, R7
l5239: b l5241
l5240: b l5236
l5241: ldrCSsh R11, [sp, #+44]
l5242: mvnMIs R14, R14, LSR #8
l5243: strGTh R14, [sp, #+44]
l5244: b l5254
l5245: eorLE R14, R2, R4, LSR #5
l5246: subLS R2, R4, R5, ASR R12
l5247: cmnPL R12, R1, LSL R7
l5248: bicLE R4, R6, #1840
l5249: tst R3, R12
l5250: mvnLTs R10, R5, ASR R9
l5251: sbcs R0, R12, R12, RRX 
l5252: add R1, R1, #-2147483591
l5253: bicPL R9, R0, R5
l5254: teqMI R15, R6, LSR #2
l5255: strNEh R7, [sp, #+38]
l5256: eor R9, R4, #195
l5257: adcs R6, R2, R7
l5258: mvn R12, #12160
l5259: ldrCCh R8, [sp, #+38]
l5260: mov R3, #4
l5261: strh R3, [sp, +R3]
l5262: eors R9, R12, #1359872
l5263: mov R5, #16
l5264: strLT R10, [sp, -R5]
l5265: cmp R0, R10, ROR #28
l5266: ldr R11, [sp, #+32]!
l5267: ldrGEh R6, [sp, #+12]
l5268: orrMIs R2, R10, R8
l5269: add R14, R9, R5, ASR #17
l5270: b l5276
l5271: subLE R10, R14, R1, LSR R2
l5272: rsbLTs R3, R15, #1073741863
l5273: adc R6, R2, R14, RRX 
l5274: bicCCs R10, R3, R5
l5275: rsbVS R3, R6, R10
l5276: rscCSs R9, R10, #66846720
l5277: stmIA R13, {R7, R12, R15}
l5278: tst R4, R8, LSL R6
l5279: mov R6, #44
l5280: strGEB R2, [sp, -R6]
l5281: mov R10, #8
l5282: ldr R2, [sp, +R10]!
l5283: cmnCC R9, R14, ASR R10
l5284: adcLEs R1, R4, #59
l5285: andVC R2, R4, #184549376
l5286: add R0, R3, R14
l5287: cmnLS R14, R5
l5288: tstMI R0, R14, ROR #1
l5289: ldr R14, l5291
l5290: b l5292
l5291: .word 1048544
l5292: swpLS R2, R11, [R14]
l5293: and R11, R9, #450560
l5294: teqEQ R6, R3, ROR R6
l5295: tstNE R10, R0, LSL R3
l5296: sub R8, R4, R8
l5297: mov R8, #4
l5298: ldr R5, [sp, +R8]!
l5299: ldr R12, l5301
l5300: b l5302
l5301: .word 1048516
l5302: swpHIb R3, R2, [R12]
l5303: ldr R6, l5305
l5304: b l5306
l5305: .word 1048512
l5306: swpb R8, R2, [R6]
l5307: adcLE R1, R3, #4608
l5308: tstVC R5, R12, ASR #26
l5309: addVSs R0, R8, #179
l5310: mov R4, #9
l5311: ldrNEsb R7, [sp, +R4]
l5312: teqGE R2, R14, LSR R1
l5313: clz R2, R8
l5314: cmp R1, R0, ROR #3
l5315: sbcLSs R10, R12, #1828716544
l5316: sbc R2, R1, R15
l5317: mov R8, #32
l5318: strh R3, [sp, -R8]
l5319: teq R4, #22544384
l5320: teqNE R7, #-1526726656
l5321: and R4, R3, #928
l5322: mov R4, #64
l5323: ldrMIsh R9, [sp, -R4]
l5324: ldrsh R2, [sp, #-58]
l5325: subEQs R14, R11, R3, ASR R6
l5326: orrLE R2, R7, R11, RRX 
l5327: mov R5, #35
l5328: ldrPLsb R3, [sp, -R5]
l5329: mov R9, R15
l5330: movPLs R6, R11, ASR #13
l5331: mov R7, #50
l5332: ldrLSsh R11, [sp, -R7]
l5333: teqHI R4, R10
l5334: mov R9, #64
l5335: ldrGTh R10, [sp, -R9]
l5336: mov R0, #8
l5337: ldrsh R6, [sp, +R0]
l5338: ldrsb R1, [sp, #-51]
l5339: mov R9, #58
l5340: ldrCCB R7, [sp, -R9]
l5341: adcs R14, R5, R2, RRX 
l5342: ldr R12, l5344
l5343: b l5345
l5344: .word 1048540
l5345: swpGT R11, R8, [R12]
l5346: adcEQs R11, R14, R11, LSL R0
l5347: ldrGTsb R3, [sp, #-52]
l5348: mvns R7, #88
l5349: ldr R10, l5351
l5350: b l5352
l5351: .word 1048492
l5352: swp R2, R0, [R10]
l5353: cmn R9, R8, RRX 
l5354: ldr R1, l5356
l5355: b l5357
l5356: .word 1048548
l5357: swpEQ R7, R12, [R1]
l5358: nop
l5359: mvns R4, R14, LSR #10
l5360: add R10, R15, R12
l5361: rsc R11, R6, R1, LSR #11
l5362: ldrsh R0, [sp, #-14]
l5363: bicNEs R14, R11, R9, LSR #23
l5364: sbcCCs R4, R2, R0
l5365: mov R14, #4
l5366: ldrGTB R5, [sp, +R14]
l5367: mov R4, #7
l5368: ldrCSsb R7, [sp, -R4]
l5369: teqEQ R7, R9
l5370: mov R7, #48
l5371: ldrMIsh R2, [sp, -R7]
l5372: bics R7, R14, R5
l5373: clz R14, R8
l5374: ldr R12, l5376
l5375: b l5377
l5376: .word 1048540
l5377: swpGT R3, R4, [R12]
l5378: bCC l5384
l5379: add R1, R0, #163
l5380: rsb R10, R14, #491520
l5381: rscCSs R4, R5, R2, ASR R3
l5382: orrLS R10, R11, R14, ROR #18
l5383: b l5385
l5384: b l5380
l5385: mvn R2, R7
l5386: sbcLT R14, R12, R8
l5387: ldrHIB R8, [sp, #-22]
l5388: mov R2, #51
l5389: ldrNEsb R8, [sp, -R2]
l5390: b l5397
l5391: add R1, R0, #132
l5392: sbcCCs R10, R5, R5
l5393: mvnGTs R6, #7552
l5394: teq R7, R11, ASR #16
l5395: tstNE R6, #2752512
l5396: b l5398
l5397: b l5392
l5398: mov R3, #0
l5399: str R6, [sp, +R3]
l5400: clz R7, R12
l5401: stmDB R13!, {R13, R14}
l5402: addVS R9, R11, #1677721600
l5403: mov R2, #48
l5404: strEQ R5, [sp, -R2]
l5405: orr R8, R7, R14
l5406: teqVC R4, #7680
l5407: bGT l5411
l5408: subs R11, R3, R0, RRX 
l5409: adcLTs R3, R9, #503316480
l5410: cmpPL R14, R5
l5411: movMIs R11, R2
l5412: ldmDA R13!, {R2, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l5413: mov R6, R2, ASR #25
l5414: orrVSs R7, R1, R14, LSL #30
l5415: mvn R7, R0, ROR #4
l5416: strh R3, [sp, #-4]
l5417: str R7, [sp, #+52]!
l5418: tstMI R14, R8, ASR R1
l5419: bCC l5421
l5420: sub R7, R5, R3, ASR #30
l5421: sub R0, R1, R6, RRX 
l5422: adcs R6, R0, R0
l5423: tst R9, R4, LSR R1
l5424: eorEQs R0, R1, R11, ASR R5
l5425: ldr R12, [sp, #-16]
l5426: ldrMI R14, [sp, #+0]
l5427: adc R5, R4, R9, RRX 
l5428: subs R2, R7, R4
l5429: clz R5, R8
l5430: mov R2, #28
l5431: ldr R2, [sp, -R2]!
l5432: ldr R7, l5434
l5433: b l5435
l5434: .word 1048528
l5435: swpVS R11, R14, [R7]
l5436: mov R3, #14
l5437: ldrLSh R0, [sp, +R3]
l5438: bCS l5445
l5439: add R1, R0, #132
l5440: sbcs R5, R12, R0, ROR #16
l5441: adcVS R4, R12, R4, ROR #9
l5442: rsc R8, R1, R4, LSR R12
l5443: rscs R6, R15, R8
l5444: b l5446
l5445: b l5440
l5446: subGEs R6, R4, R11, ROR R9
l5447: ldrsb R6, [sp, #-14]
l5448: bicCC R3, R7, #84934656
l5449: cmp R12, R15, LSR #20
l5450: ldrsh R1, [sp, #-28]
l5451: rscGEs R4, R6, #-1073741763
l5452: teqLS R0, R7, ASR #5
l5453: orrNEs R10, R1, R11, LSL R8
l5454: bicLE R3, R3, #34048
l5455: bGE l5459
l5456: add R1, R0, #19
l5457: clz R4, R6
l5458: b l5460
l5459: b l5457
l5460: ldr R1, l5462
l5461: b l5463
l5462: .word 1048508
l5463: swpb R2, R4, [R1]
l5464: ldmIB R13!, {R6, R7}
l5465: movLEs R3, R10, ASR R2
l5466: subs R7, R0, R6, LSL R8
l5467: rsbLEs R2, R0, R0, RRX 
l5468: ldr R5, [sp, #-36]!
l5469: ldrsb R1, [sp, #+50]
l5470: bPL l5477
l5471: add R1, R0, #215
l5472: addLTs R0, R14, R14
l5473: tstGE R11, R14, RRX 
l5474: sub R4, R5, R2, ASR R3
l5475: sbcLTs R10, R2, R10
l5476: b l5478
l5477: b l5472
l5478: mov R3, #56
l5479: ldrVSsb R5, [sp, +R3]
l5480: ldrLSsh R0, [sp, #+50]
l5481: tstGE R3, R12, LSL R2
l5482: mov R1, #44
l5483: str R3, [sp], +R1
l5484: tstCC R8, #155189248
l5485: subLTs R14, R2, R3
l5486: bHI l5492
l5487: add R1, R0, #248
l5488: sub R3, R7, #5832704
l5489: subVC R6, R12, R6, ROR R7
l5490: subVSs R8, R15, #-1275068415
l5491: b l5493
l5492: b l5488
l5493: ldr R14, [sp, #-48]!
l5494: clzVS R5, R1
l5495: teqGE R0, #47
l5496: rsb R12, R14, R12
l5497: rsbLE R9, R4, R2
l5498: addLT R9, R1, R6
l5499: bics R2, R7, R10, ASR #10
l5500: mov R8, #56
l5501: ldrCSsh R9, [sp, +R8]
l5502: clzVC R12, R8
l5503: mov R10, #32
l5504: strLTh R10, [sp, +R10]
l5505: addGE R9, R14, #2816
l5506: ldr R4, [sp], #+24
l5507: clzEQ R3, R8
l5508: ldr R5, l5510
l5509: b l5511
l5510: .word 1048552
l5511: swp R12, R6, [R5]
l5512: ldrsh R10, [sp, #-32]
l5513: strLEh R0, [sp, #-26]
l5514: ldr R0, l5516
l5515: b l5517
l5516: .word 1048484
l5517: swpb R7, R8, [R0]
l5518: and R11, R2, #592
l5519: mov R3, #22
l5520: strNEB R2, [sp, +R3]
l5521: mov R10, #26
l5522: ldrsb R4, [sp, -R10]
l5523: ldrEQB R7, [sp, #-6]
l5524: eors R8, R2, #3760
l5525: adcs R7, R3, R0, ASR R10
l5526: strCSh R12, [sp, #-28]
l5527: subHIs R2, R3, R8, ROR #19
l5528: ldr R6, l5530
l5529: b l5531
l5530: .word 1048480
l5531: swpHI R12, R1, [R6]
l5532: ldr R2, l5534
l5533: b l5535
l5534: .word 1048540
l5535: swpCC R7, R9, [R2]
l5536: cmp R4, R0
l5537: clzLT R3, R10
l5538: movGTs R0, #1275068419
l5539: eor R1, R2, R11, RRX 
l5540: cmp R10, R11, ASR R0
l5541: cmnNE R12, #68608
l5542: ldr R7, l5544
l5543: b l5545
l5544: .word 1048492
l5545: swpLS R14, R14, [R7]
l5546: eorNEs R8, R11, #3276800
l5547: clz R5, R5
l5548: stmPLDB R13, {R4, R10, R13}
l5549: mov R10, #16
l5550: ldrVC R2, [sp, -R10]
l5551: cmp R3, R15
l5552: stmDB R13!, {R0, R1, R2, R3, R11}
l5553: ldrh R0, [sp, #+40]
l5554: orrPL R3, R15, R10
l5555: ldr R7, l5557
l5556: b l5558
l5557: .word 1048496
l5558: swpb R0, R11, [R7]
l5559: ldr R10, l5561
l5560: b l5562
l5561: .word 1048516
l5562: swpVS R8, R3, [R10]
l5563: mvnMI R2, #229376
l5564: strPLB R0, [sp, #-7]
l5565: mov R5, #28
l5566: ldrsb R2, [sp, +R5]
l5567: movVCs R11, #211
l5568: sbcs R10, R0, R11, RRX 
l5569: mov R12, #24
l5570: ldrGTsb R8, [sp, +R12]
l5571: rsbLEs R4, R4, R11, ASR R12
l5572: nop
l5573: ldrCSsb R4, [sp, #-6]
l5574: ldr R3, l5576
l5575: b l5577
l5576: .word 1048544
l5577: swpGTb R11, R4, [R3]
l5578: rscCS R10, R11, R7, RRX 
l5579: eor R3, R4, R3, ASR #13
l5580: adc R1, R4, #770048
l5581: b l5585
l5582: add R1, R0, #111
l5583: adds R10, R6, R0, RRX 
l5584: b l5586
l5585: b l5583
l5586: orr R9, R1, #268435456
l5587: andGE R12, R15, R11
l5588: strGEh R5, [sp, #+14]
l5589: ldr R1, l5591
l5590: b l5592
l5591: .word 1048496
l5592: swpVSb R11, R2, [R1]
l5593: subPL R6, R14, #2457600
l5594: adcs R12, R5, R8, LSR R0
l5595: eor R0, R0, R8, LSL R9
l5596: nop
l5597: ldrEQsb R0, [sp, #-6]
l5598: mov R5, #61
l5599: strB R6, [sp, +R5]
l5600: mov R2, #58
l5601: ldrGEh R0, [sp, +R2]
l5602: sbcMIs R0, R10, #1441792
l5603: bHI l5607
l5604: add R1, R0, #5
l5605: tstCC R12, #33792
l5606: b l5608
l5607: b l5605
l5608: adcVCs R4, R6, R10
l5609: tst R1, R15, ROR #22
l5610: teqNE R11, R3
l5611: mov R1, #30
l5612: ldrsh R4, [sp, +R1]
l5613: tstMI R2, #671088643
l5614: subEQ R12, R14, #2686976
l5615: teqEQ R12, #950272
l5616: cmp R10, R7, RRX 
l5617: ldmDB R13!, {R6}
l5618: subs R4, R4, R15, LSR #8
l5619: ldr R8, l5621
l5620: b l5622
l5621: .word 1048484
l5622: swpPLb R1, R4, [R8]
l5623: mov R4, #52
l5624: strGEB R12, [sp, +R4]
l5625: ldrsb R10, [sp, #+60]
l5626: mov R12, #50
l5627: ldrB R9, [sp, +R12]
l5628: cmp R12, R1, LSL R4
l5629: clz R7, R6
l5630: and R4, R12, R9, ROR #7
l5631: mov R9, #4
l5632: str R3, [sp], +R9
l5633: mvns R11, R0, ROR #6
l5634: str R11, [sp], #+36
l5635: mvns R9, R0
l5636: ldrLTh R6, [sp, #-14]
l5637: cmnMI R3, R14
l5638: addHI R8, R12, R12, ASR #24
l5639: ldr R6, l5641
l5640: b l5642
l5641: .word 1048548
l5642: swpMIb R11, R12, [R6]
l5643: subHIs R6, R2, #492
l5644: sbcPL R4, R7, R12
l5645: ldr R4, l5647
l5646: b l5648
l5647: .word 1048496
l5648: swpHI R2, R14, [R4]
l5649: cmnNE R12, R3, ASR R12
l5650: subPL R4, R5, #33292288
l5651: cmnLT R3, R9, LSR R6
l5652: bGE l5655
l5653: eorVSs R6, R0, R3, LSR #5
l5654: subEQ R14, R7, #3571712
l5655: rsbGT R10, R4, R3, ASR #31
l5656: movEQ R11, R7, LSR R9
l5657: subHIs R4, R10, #1552
l5658: rsbCCs R6, R8, R4
l5659: adc R14, R7, #2359296
l5660: subEQ R5, R1, #9472
l5661: bLE l5662
l5662: rsbCCs R0, R8, R14, LSR #7
l5663: mov R8, R11
l5664: tstGE R8, R10
l5665: sbc R7, R3, R3, RRX 
l5666: movHIs R4, R15
l5667: stmDB R13, {R1, R3, R4, R5, R7, R9, R10, R11, R14, R15}
l5668: cmp R3, R2, RRX 
l5669: stmIA R13!, {R4, R7}
l5670: mov R14, #49
l5671: ldrB R0, [sp, -R14]
l5672: mvnCCs R14, R1, LSL R8
l5673: sub R10, R11, R12, RRX 
l5674: str R8, [sp], #-36
l5675: mov R6, #44
l5676: strCC R6, [sp, +R6]
l5677: addVSs R8, R9, R1, ASR R1
l5678: addMIs R4, R0, R0, LSR R2
l5679: cmnHI R9, #1952
l5680: eorPL R4, R8, R4, LSR R8
l5681: adcLSs R5, R2, R2, ROR R10
l5682: ldmIB R13, {R3, R4, R9, R10, R12, R14}
l5683: ldr R9, l5685
l5684: b l5686
l5685: .word 1048516
l5686: swpCCb R3, R7, [R9]
l5687: ldrLTsh R1, [sp, #+6]
l5688: eorGT R8, R9, R8, ROR #29
l5689: mov R12, #33
l5690: ldrsb R11, [sp, +R12]
l5691: ldmDB R13!, {R9, R14}
l5692: orr R9, R5, R5
l5693: clzLS R7, R12
l5694: cmpPL R7, R0
l5695: teq R2, R9, LSL R10
l5696: stmIB R13!, {R0, R12}
l5697: sub R14, R6, R3, RRX 
l5698: bics R2, R14, #987136
l5699: ldr R12, l5701
l5700: b l5702
l5701: .word 1048528
l5702: swpb R8, R11, [R12]
l5703: bics R14, R15, R6, LSL #13
l5704: eorGT R14, R1, #205
l5705: eorEQs R3, R14, R4
l5706: ldr R11, l5708
l5707: b l5709
l5708: .word 1048520
l5709: swpCC R0, R9, [R11]
l5710: mov R3, #8
l5711: ldrLEsh R8, [sp, -R3]
l5712: rscLEs R14, R6, R9, LSL #25
l5713: ldmNEDA R13, {R9}
l5714: ldr R6, l5716
l5715: b l5717
l5716: .word 1048552
l5717: swpb R4, R4, [R6]
l5718: b l5728
l5719: teqLE R5, #2113929216
l5720: sbcs R6, R7, R3
l5721: rsbGTs R5, R10, R2, LSR R12
l5722: eorLTs R4, R9, #13762560
l5723: cmnCS R12, #60
l5724: rsbLEs R5, R5, R1, RRX 
l5725: movGEs R10, R8, ROR #6
l5726: orrEQ R9, R8, R5, LSL R10
l5727: mvnGTs R4, R6, LSL #17
l5728: adcLEs R6, R14, R0
l5729: bic R2, R1, R3, LSL R1
l5730: ldr R12, l5732
l5731: b l5733
l5732: .word 1048540
l5733: swp R0, R7, [R12]
l5734: mvns R7, R0, LSL #27
l5735: bics R5, R3, R12, LSL #24
l5736: bHI l5741
l5737: cmn R9, #3776
l5738: mvnCC R10, R1, ASR #13
l5739: mvns R12, #36864
l5740: rsbs R12, R14, #2736128
l5741: teqHI R11, R0
l5742: mov R9, #4
l5743: ldrGEsb R7, [sp, -R9]
l5744: teqCS R12, R4, ROR #5
l5745: mov R9, #30
l5746: strLEB R6, [sp, +R9]
l5747: mov R11, #26
l5748: strB R0, [sp, +R11]
l5749: eors R0, R0, R6, ROR #23
l5750: sbcPL R2, R15, R8, RRX 
l5751: ldrB R5, [sp, #+53]
l5752: mov R11, #44
l5753: str R4, [sp, +R11]
l5754: teqCC R6, R14, RRX 
l5755: adcVS R3, R0, #75497472
l5756: ldmIA R13!, {R0, R1, R2, R3, R5, R6, R8, R10, R12, R14}
l5757: bCC l5766
l5758: add R1, R0, #204
l5759: teqHI R6, R6, RRX 
l5760: subLS R2, R9, #262144000
l5761: rsbGT R3, R2, #24832
l5762: rsbGTs R0, R1, #1879048203
l5763: clzMI R14, R6
l5764: cmn R14, #2880
l5765: b l5767
l5766: b l5759
l5767: mov R4, #0
l5768: ldrLT R2, [sp, +R4]
l5769: bicGT R1, R6, #-1879048179
l5770: and R14, R12, #1073741835
l5771: cmp R6, R0, ASR #13
l5772: ldr R0, l5774
l5773: b l5775
l5774: .word 1048544
l5775: swpb R2, R1, [R0]
l5776: ldr R8, l5778
l5777: b l5779
l5778: .word 1048496
l5779: swp R9, R4, [R8]
l5780: eor R9, R7, #640
l5781: subs R7, R11, R10, ASR R11
l5782: bics R6, R9, R6, LSR R4
l5783: ldr R5, l5785
l5784: b l5786
l5785: .word 1048516
l5786: swpCSb R11, R12, [R5]
l5787: rscMIs R14, R6, R6, ASR #8
l5788: cmpMI R7, R8
l5789: ldrLSsb R7, [sp, #-1]
l5790: ldr R1, [sp], #-8
l5791: clz R1, R4
l5792: sub R4, R14, R7
l5793: ldr R7, l5795
l5794: b l5796
l5795: .word 1048504
l5796: swpLSb R5, R4, [R7]
l5797: tst R0, #9664
l5798: cmp R2, R10, ASR R3
l5799: strCS R3, [sp, #+12]
l5800: eorHIs R14, R8, R0, LSL #31
l5801: teqGE R14, R5
l5802: rsbs R14, R1, R1, ROR R4
l5803: ldr R12, l5805
l5804: b l5806
l5805: .word 1048544
l5806: swpb R10, R1, [R12]
l5807: subVS R3, R3, #1275068417
l5808: strB R3, [sp, #-2]
l5809: mvnVSs R10, R2
l5810: mov R11, #44
l5811: ldr R5, [sp], -R11
l5812: movs R2, R9, ROR R8
l5813: movs R6, R4
l5814: eors R5, R8, R6
l5815: cmpHI R1, #1073741882
l5816: subs R11, R0, R3, LSR #27
l5817: ldr R11, l5819
l5818: b l5820
l5819: .word 1048512
l5820: swpb R8, R6, [R11]
l5821: mov R7, #8
l5822: str R15, [sp, +R7]!
l5823: clz R9, R0
l5824: ldr R6, l5826
l5825: b l5827
l5826: .word 1048480
l5827: swp R3, R9, [R6]
l5828: b l5835
l5829: add R1, R0, #15
l5830: adcGTs R10, R8, R6, ASR #1
l5831: cmpLT R10, R11
l5832: clz R9, R5
l5833: subLT R3, R8, #134217728
l5834: b l5836
l5835: b l5830
l5836: tst R9, #394264576
l5837: adds R3, R12, #114294784
l5838: subGE R2, R8, R2, ROR R10
l5839: teq R0, #43008
l5840: nop
l5841: bGE l5846
l5842: add R1, R0, #93
l5843: teqLT R6, R15
l5844: sbcHI R4, R14, R10, ROR #24
l5845: b l5847
l5846: b l5843
l5847: cmpHI R11, R2, ASR #26
l5848: ldrHIsb R9, [sp, #+11]
l5849: bVC l5859
l5850: cmpHI R11, R6, ROR R4
l5851: orrGE R9, R7, R8
l5852: movs R0, R12, ASR #14
l5853: subVSs R7, R1, R15, LSL #9
l5854: mvnNE R11, R14
l5855: adcEQ R4, R3, #241664
l5856: rscEQ R7, R0, R10
l5857: addVC R1, R10, R10, ASR #15
l5858: sub R14, R8, R5
l5859: movs R10, R8, ROR #26
l5860: tst R2, R8, ROR #12
l5861: teq R0, R5, ASR R8
l5862: clzNE R0, R2
l5863: orrCC R8, R14, R3, LSR R1
l5864: addGE R6, R8, R3, RRX 
l5865: teq R8, R4, RRX 
l5866: bic R12, R10, #12096
l5867: teqGE R4, R7
l5868: rscLTs R10, R3, R4
l5869: clz R2, R12
l5870: sbcs R6, R0, R0, ROR R2
l5871: b l5879
l5872: add R1, R0, #111
l5873: tst R11, R15
l5874: addGE R9, R11, R3, ROR #21
l5875: eorLSs R3, R3, R1
l5876: cmnVC R5, R6, ASR #20
l5877: subLT R6, R0, R9, ASR #16
l5878: b l5880
l5879: b l5873
l5880: cmn R1, R0, ASR #20
l5881: clzPL R7, R1
l5882: teq R9, R5, LSL R8
l5883: mov R8, #36
l5884: ldrHIsb R6, [sp, +R8]
l5885: strLEh R9, [sp, #+24]
l5886: rscLTs R4, R12, R6, LSL #26
l5887: ldmGTIA R13, {R0, R2, R3, R6, R7, R8, R10, R11}
l5888: cmnLT R9, R8, LSL #8
l5889: mvnGT R5, R14, LSL R14
l5890: str R5, [sp], #+40
l5891: eorGTs R4, R3, R1, LSR R1
l5892: ldrsb R2, [sp, #-56]
l5893: mov R11, #48
l5894: ldrLSh R4, [sp, -R11]
l5895: bHI l5902
l5896: add R1, R0, #158
l5897: rscs R8, R6, #192
l5898: andMIs R3, R10, #54525952
l5899: teq R1, R15
l5900: teqHI R3, #229
l5901: b l5903
l5902: b l5897
l5903: orrMI R11, R1, R3, ASR R11
l5904: tst R2, R8
l5905: clzLT R9, R7
l5906: sbcGEs R4, R12, R3
l5907: orr R12, R6, #259072
l5908: ldrEQsb R8, [sp, #-1]
l5909: mov R4, #52
l5910: ldr R14, [sp], -R4
l5911: mov R7, #46
l5912: strEQh R10, [sp, +R7]
l5913: nop
l5914: strVCB R4, [sp, #+28]
l5915: addLSs R12, R4, R1, RRX 
l5916: teqCC R2, #-1610612734
l5917: cmn R8, #174
l5918: movCSs R11, R12, ROR #21
l5919: strh R8, [sp, #+6]
l5920: b l5925
l5921: add R1, R0, #121
l5922: orrEQs R2, R3, R8, RRX 
l5923: andGT R5, R2, R4, RRX 
l5924: b l5926
l5925: b l5922
l5926: addHIs R4, R15, R7, LSL #27
l5927: addGT R5, R11, R3, ROR R5
l5928: orrLEs R3, R7, R15, RRX 
l5929: eorPL R0, R15, #819200
l5930: orr R11, R6, R7, RRX 
l5931: movEQ R8, R6
l5932: rsbGT R0, R7, R2
l5933: ldrGTsh R9, [sp, #+40]
l5934: orrCC R7, R6, R2
l5935: sub R0, R7, R8
l5936: sbcLE R14, R1, #536870922
l5937: stmIA R13!, {R0, R2, R3, R5, R7, R8, R9, R11, R12, R14, R15}
l5938: cmn R1, R14
l5939: bGE l5943
l5940: rsc R0, R1, R10
l5941: teqCS R9, R1, ASR R10
l5942: subVC R3, R11, R5
l5943: mvns R8, R8
l5944: bicCS R0, R11, R10, RRX 
l5945: clzNE R4, R2
l5946: mvnEQ R10, R0, LSR R12
l5947: teqPL R12, #432
l5948: mvnLSs R5, R8, LSL #2
l5949: adds R10, R2, R2
l5950: orrs R11, R7, #16252928
l5951: adcs R5, R5, R9, ASR #4
l5952: stmDB R13, {R3, R7, R15}
l5953: bicCSs R4, R9, R0, RRX 
l5954: orrVCs R7, R4, R7, RRX 
l5955: strLE R8, [sp, #-24]
l5956: rscMIs R6, R12, R7, LSR R8
l5957: eorGT R4, R10, R10, ASR R4
l5958: mov R8, #220
l5959: mov R9, #26
l5960: ldrVCh R10, [sp, -R9]
l5961: mov R1, #48
l5962: str R6, [sp], -R1
l5963: stmVCIA R13, {R1, R2, R4, R11}
l5964: ldrMIB R9, [sp, #+64]
l5965: ldr R4, [sp, #+60]!
l5966: cmnNE R6, R5, ROR R2
l5967: strEQh R3, [sp, #-56]
l5968: str R9, [sp, #+4]!
l5969: sbcMIs R7, R8, R9, LSR #4
l5970: ldmIA R13!, {R1, R4}
l5971: addHIs R3, R14, R12
l5972: bicVS R4, R2, R1, ROR R9
l5973: mov R14, #52
l5974: ldr R3, [sp], -R14
l5975: orrVCs R9, R11, R3, ROR R9
l5976: stmDB R13!, {R13}
l5977: adcVCs R11, R9, #-1610612733
l5978: cmp R2, #2637824
l5979: rsbVSs R0, R2, R14, LSL #21
l5980: tst R14, R6, LSL R7
l5981: add R8, R3, R7
l5982: sbcs R7, R8, R10
l5983: bCS l5990
l5984: add R1, R0, #20
l5985: cmpMI R14, R0
l5986: movMIs R1, R11, RRX 
l5987: tstCS R4, #13888
l5988: movs R2, #81
l5989: b l5991
l5990: b l5985
l5991: mov R10, #26
l5992: strh R11, [sp, +R10]
l5993: mov R0, #54
l5994: ldrLEB R9, [sp, +R0]
l5995: addCC R3, R2, R12, RRX 
l5996: mvnNEs R4, #12160
l5997: mov R9, #16
l5998: ldrLE R3, [sp, +R9]
l5999: rsb R6, R6, R6, RRX 
l6000: orrVCs R6, R3, #36175872
l6001: ldr R12, l6003
l6002: b l6004
l6003: .word 1048484
l6004: swpPL R5, R11, [R12]
l6005: orr R1, R8, #204472320
l6006: andHI R0, R1, R8, ROR #12
l6007: ldr R14, l6009
l6008: b l6010
l6009: .word 1048496
l6010: swp R3, R12, [R14]
l6011: ldrCSh R14, [sp, #+36]
l6012: bicLSs R6, R11, R9
l6013: ldr R12, l6015
l6014: b l6016
l6015: .word 1048504
l6016: swp R9, R0, [R12]
l6017: ldr R8, l6019
l6018: b l6020
l6019: .word 1048508
l6020: swpGT R4, R9, [R8]
l6021: ldr R4, l6023
l6022: b l6024
l6023: .word 1048492
l6024: swpVC R6, R11, [R4]
l6025: rsbEQs R6, R0, #104
l6026: cmnEQ R9, R14, LSR R11
l6027: ldr R14, l6029
l6028: b l6030
l6029: .word 1048516
l6030: swpLS R5, R2, [R14]
l6031: mov R3, #40
l6032: ldr R1, [sp], +R3
l6033: stmVCIA R13, {R4}
l6034: mov R2, #0
l6035: ldrLEh R2, [sp, +R2]
l6036: subLT R6, R11, R14, LSL R14
l6037: mov R3, #24
l6038: ldr R14, [sp], -R3
l6039: nop
l6040: mov R6, #25
l6041: ldrVSsb R9, [sp, -R6]
l6042: rscGE R6, R11, R10, LSR R14
l6043: andMI R6, R2, R10, LSR #13
l6044: adcGE R4, R7, #805306378
l6045: teqMI R14, R6
l6046: mov R10, #6
l6047: ldrsb R10, [sp, +R10]
l6048: mov R14, #32
l6049: ldrLTsh R12, [sp, +R14]
l6050: teqLE R8, R9, LSR R9
l6051: eor R12, R5, R8, LSR R14
l6052: nop
l6053: and R10, R14, R2, LSL #22
l6054: subGEs R3, R0, #16121856
l6055: mov R11, #31
l6056: ldrsb R11, [sp, +R11]
l6057: bNE l6063
l6058: ands R11, R2, #138
l6059: subVCs R3, R14, R6, RRX 
l6060: sub R11, R0, R1, ASR R2
l6061: mvnNE R7, R14, LSR R2
l6062: clz R12, R6
l6063: sub R12, R3, R3, LSR #9
l6064: ldmDB R13!, {R0, R3, R4, R5, R10, R11}
l6065: ldmMIIB R13, {R4, R5, R6, R7, R8, R10, R11, R12}
l6066: eor R2, R7, R2, RRX 
l6067: eor R7, R4, R14, ROR #7
l6068: sbcLE R10, R3, R4, RRX 
l6069: ldr R5, l6071
l6070: b l6072
l6071: .word 1048512
l6072: swpb R2, R3, [R5]
l6073: rscCS R5, R6, R7, ROR #18
l6074: mov R0, #64
l6075: ldrEQsh R3, [sp, +R0]
l6076: adcLT R2, R12, R6, ROR #24
l6077: ldr R7, l6079
l6078: b l6080
l6079: .word 1048536
l6080: swp R9, R5, [R7]
l6081: mov R14, #65
l6082: ldrCCsb R11, [sp, +R14]
l6083: addLTs R12, R5, R15, LSR #27
l6084: mov R3, #32
l6085: ldrLEh R7, [sp, +R3]
l6086: eors R4, R12, R5
l6087: ldrVSsb R11, [sp, #-1]
l6088: cmnVS R8, R12
l6089: mov R5, #29
l6090: ldrPLB R2, [sp, +R5]
l6091: stmIB R13, {R0, R8, R12, R13}
l6092: rsb R10, R9, #1879048193
l6093: mov R9, #3
l6094: strB R10, [sp, -R9]
l6095: strB R5, [sp, #+7]
l6096: rscs R2, R9, R2, RRX 
l6097: mov R14, #52
l6098: strB R2, [sp, +R14]
l6099: mvn R2, R8, ASR #15
l6100: ldr R9, l6102
l6101: b l6103
l6102: .word 1048504
l6103: swpb R5, R10, [R9]
l6104: ldr R6, l6106
l6105: b l6107
l6106: .word 1048528
l6107: swpb R0, R4, [R6]
l6108: mov R12, #32
l6109: ldrsh R2, [sp, +R12]
l6110: cmnGT R2, R1, RRX 
l6111: orr R7, R11, R1
l6112: ldrGEsb R14, [sp, #+18]
l6113: ldrB R10, [sp, #+24]
l6114: clzEQ R8, R0
l6115: tst R14, R9
l6116: mov R3, #20
l6117: ldrLSB R3, [sp, +R3]
l6118: ldr R6, l6120
l6119: b l6121
l6120: .word 1048532
l6121: swpGT R5, R2, [R6]
l6122: cmp R3, R1
l6123: cmp R11, R10
l6124: cmnLS R7, #272629760
l6125: clzLE R3, R6
l6126: ldr R7, l6128
l6127: b l6129
l6128: .word 1048528
l6129: swpHIb R4, R2, [R7]
l6130: movs R1, R2, LSL R7
l6131: mov R12, #44
l6132: strB R3, [sp, +R12]
l6133: mov R0, #44
l6134: ldr R7, [sp], +R0
l6135: clz R4, R4
l6136: mvnEQ R14, R2, RRX 
l6137: mvnPL R12, R14, ROR R5
l6138: subs R4, R7, R9, RRX 
l6139: ldr R7, l6141
l6140: b l6142
l6141: .word 1048532
l6142: swp R2, R6, [R7]
l6143: rsb R0, R0, R0
l6144: bicEQs R9, R4, R4, LSR #7
l6145: rscLEs R11, R7, R5, RRX 
l6146: bHI l6154
l6147: clz R6, R5
l6148: mvnVC R12, R6
l6149: rscVSs R3, R10, R0, LSR R9
l6150: cmpHI R6, R6
l6151: and R2, R4, R10
l6152: andGE R3, R11, R9
l6153: movs R0, R3
l6154: mvnHIs R12, R4, ASR R12
l6155: stmDA R13!, {R13, R14}
l6156: teq R4, #3670016
l6157: ldr R7, l6159
l6158: b l6160
l6159: .word 1048500
l6160: swpHIb R4, R5, [R7]
l6161: rscLTs R11, R6, #6528
l6162: subs R7, R10, #45
l6163: mov R9, #20
l6164: ldrGTh R2, [sp, -R9]
l6165: mov R9, #14
l6166: ldrB R5, [sp, +R9]
l6167: cmn R10, R5
l6168: rsb R11, R5, R10, ASR R9
l6169: orrCCs R14, R3, #912
l6170: mov R12, #0
l6171: ldrEQ R9, [sp, +R12]
l6172: strLEh R12, [sp, #-34]
l6173: clz R6, R0
l6174: clz R10, R4
l6175: mov R0, #24
l6176: ldrEQsh R3, [sp, -R0]
l6177: b l6180
l6178: rscNE R6, R6, R1, ASR R14
l6179: subs R6, R5, R14, ASR R9
l6180: rsc R5, R14, #461373440
l6181: mov R5, #20
l6182: ldrVSh R2, [sp, -R5]
l6183: cmnLT R8, #3342336
l6184: ldr R12, l6186
l6185: b l6187
l6186: .word 1048552
l6187: swp R11, R4, [R12]
l6188: sbcGT R9, R8, R0, ASR R6
l6189: mov R1, #30
l6190: strGTB R11, [sp, +R1]
l6191: mov R11, #4
l6192: ldrh R0, [sp, +R11]
l6193: clzPL R8, R6
l6194: sbc R4, R2, #-536870899
l6195: ldrGT R1, [sp, #-40]
l6196: bLS l6200
l6197: rsbs R4, R9, R1, ASR R0
l6198: sub R10, R7, R5, LSR R1
l6199: mvns R3, R2, ASR R12
l6200: eors R7, R2, R7
l6201: stmDB R13!, {R1, R4, R5, R9, R11, R15}
l6202: ldrB R11, [sp, #+50]
l6203: rscGEs R1, R6, #2496
l6204: mov R3, #0
l6205: ldr R4, [sp], +R3
l6206: tst R7, R9
l6207: bicLT R5, R2, R7, LSL R1
l6208: mov R3, #4
l6209: strh R11, [sp, +R3]
l6210: ldr R1, l6212
l6211: b l6213
l6212: .word 1048536
l6213: swpGEb R14, R14, [R1]
l6214: mov R9, #41
l6215: ldrLEB R7, [sp, +R9]
l6216: mvn R10, R1
l6217: sub R10, R3, R1
l6218: subs R4, R11, R9
l6219: rscLEs R11, R10, R4
l6220: ldrLEsh R3, [sp, #-20]
l6221: ldrLEsh R7, [sp, #+36]
l6222: teq R11, R5
l6223: teqCC R9, R5, LSL R4
l6224: mov R1, #48
l6225: strHI R8, [sp, +R1]
l6226: strLEh R9, [sp, #+22]
l6227: strGTh R12, [sp, #+0]
l6228: sub R8, R5, R2, LSR #21
l6229: mov R11, #37888
l6230: mov R0, #52
l6231: strPL R11, [sp, +R0]
l6232: cmpLE R2, R14
l6233: rsb R12, R15, R3
l6234: mov R9, #4
l6235: ldr R8, [sp], +R9
l6236: stmIA R13!, {R7, R12}
l6237: add R3, R8, R14, ROR R0
l6238: ldrEQ R3, [sp, #+0]
l6239: clzCS R7, R2
l6240: ldmDB R13!, {R2, R14}
l6241: mov R0, #3
l6242: strVSB R4, [sp, +R0]
l6243: stmDA R13!, {R13, R14}
l6244: adcs R11, R14, R10, ROR R14
l6245: mov R6, #12
l6246: ldrB R3, [sp, -R6]
l6247: teqHI R7, R2, ASR #7
l6248: andLEs R9, R10, R4
l6249: clzNE R10, R3
l6250: strEQB R14, [sp, #+53]
l6251: strCSh R6, [sp, #+10]
l6252: strGT R2, [sp, #-4]
l6253: eor R11, R15, R5
l6254: ldrVCh R6, [sp, #+2]
l6255: mov R5, #30
l6256: strMIh R12, [sp, +R5]
l6257: rsbVS R10, R1, R10, ASR R4
l6258: mov R12, #28
l6259: str R0, [sp], +R12
l6260: ldrCSh R2, [sp, #-2]
l6261: ldrNEsh R3, [sp, #+0]
l6262: cmp R8, R10
l6263: ands R9, R0, R2, ASR R0
l6264: nop
l6265: teq R11, R0, LSR R11
l6266: bicLEs R10, R1, R2
l6267: sbcs R6, R6, R12, ASR R9
l6268: teqLE R5, R0, LSL #0
l6269: mov R14, #2
l6270: strGEB R1, [sp, +R14]
l6271: mvns R3, R5, RRX 
l6272: bNE l6274
l6273: cmn R6, R15, ROR #8
l6274: clzGT R8, R7
l6275: mov R10, R1, LSR #18
l6276: b l6281
l6277: add R1, R0, #187
l6278: teqLT R15, R6
l6279: bics R1, R4, R5, RRX 
l6280: b l6282
l6281: b l6278
l6282: rsbLE R14, R9, #528
l6283: str R8, [sp, #-20]!
l6284: andGT R11, R9, R14
l6285: ldr R2, l6287
l6286: b l6288
l6287: .word 1048508
l6288: swpHIb R8, R14, [R2]
l6289: mov R12, #24
l6290: ldr R8, [sp, -R12]
l6291: addLS R1, R6, R3, ROR R2
l6292: stmDB R13!, {R1, R9, R10, R14}
l6293: bicGTs R11, R14, R0, ASR R1
l6294: rsb R4, R12, R9
l6295: eors R6, R6, R15
l6296: str R2, [sp], #+4
l6297: tst R8, #48758784
l6298: cmpEQ R1, R0, LSR R6
l6299: b l6300
l6300: sbcLSs R10, R15, R14, LSR #13
l6301: cmp R14, R3
l6302: cmp R1, #122880
l6303: adds R8, R10, R9, LSR #9
l6304: sub R3, R0, #65536
l6305: subLTs R11, R12, R9
l6306: str R8, [sp, #+20]!
l6307: teqVS R9, #-268435449
l6308: ldrsh R3, [sp, #+4]
l6309: bHI l6315
l6310: add R1, R0, #146
l6311: orr R0, R12, R12
l6312: rscLS R6, R11, #196608
l6313: addMIs R2, R1, R6, LSL #26
l6314: b l6316
l6315: b l6311
l6316: movCSs R3, R0
l6317: stmDA R13!, {R10}
l6318: subGEs R0, R0, R8, LSR #24
l6319: sub R9, R6, R4, ROR #24
l6320: mov R0, #14
l6321: ldrsb R12, [sp, +R0]
l6322: mov R0, #8
l6323: strB R12, [sp, -R0]
l6324: ldmGTDB R13, {R3, R7, R9, R12}
l6325: bicNE R8, R5, R14, ASR R6
l6326: str R9, [sp], #-12
l6327: adcVS R4, R7, R1, RRX 
l6328: addEQs R1, R12, R0, LSL #29
l6329: mov R14, #20
l6330: ldrHIsb R3, [sp, +R14]
l6331: andLEs R3, R14, R11
l6332: mov R5, #46
l6333: ldrVCh R4, [sp, +R5]
l6334: str R7, [sp, #+32]
l6335: str R11, [sp, #+52]!
l6336: tst R8, #318767104
l6337: teqCS R10, R0, LSR R6
l6338: mov R6, #48
l6339: ldr R8, [sp], -R6
l6340: ldrCCsh R6, [sp, #-14]
l6341: rscLS R3, R14, R0
l6342: rsc R0, R4, R4
l6343: cmnVS R14, R10, ASR R1
l6344: b l6348
l6345: cmp R6, #1560281088
l6346: ands R10, R0, R2, ROR R12
l6347: clz R8, R14
l6348: rscEQs R12, R2, #-2147483647
l6349: orrVSs R11, R5, R6, RRX 
l6350: rsbPL R5, R6, R10, ROR #26
l6351: mvn R10, R3, LSL R8
l6352: mov R2, #8
l6353: ldrCS R1, [sp, +R2]
l6354: rscGT R6, R9, #176128
l6355: mvnMIs R6, R14
l6356: adcs R8, R0, #104
l6357: subs R7, R9, R2, RRX 
l6358: ldr R6, l6360
l6359: b l6361
l6360: .word 1048488
l6361: swp R7, R7, [R6]
l6362: bVS l6369
l6363: add R1, R0, #38
l6364: tstCS R0, #469762048
l6365: subLEs R7, R4, #-771751936
l6366: bic R9, R4, #-1140850686
l6367: subLSs R3, R5, #1073741856
l6368: b l6370
l6369: b l6364
l6370: sub R9, R2, R2, LSR R2
l6371: ldrLEsh R6, [sp, #-4]
l6372: eors R6, R5, R14, ROR #25
l6373: mov R12, #8
l6374: ldrPLsb R4, [sp, +R12]
l6375: rscLTs R11, R6, #280
l6376: ldr R1, l6378
l6377: b l6379
l6378: .word 1048520
l6379: swpb R2, R5, [R1]
l6380: mov R12, #32
l6381: str R12, [sp], +R12
l6382: mvnGTs R4, #2080374785
l6383: ldr R6, l6385
l6384: b l6386
l6385: .word 1048536
l6386: swpb R9, R11, [R6]
l6387: nop
l6388: bCS l6390
l6389: clzEQ R11, R3
l6390: cmnLS R12, R5
l6391: mov R2, #8
l6392: str R4, [sp, +R2]!
l6393: bGT l6397
l6394: add R1, R0, #234
l6395: bic R14, R2, R11
l6396: b l6398
l6397: b l6395
l6398: b l6404
l6399: add R1, R0, #164
l6400: andLE R7, R5, #70656
l6401: eorVSs R4, R3, R8
l6402: sbcPL R14, R2, R9, LSL R7
l6403: b l6405
l6404: b l6400
l6405: adc R2, R6, R4
l6406: strGTB R7, [sp, #-42]
l6407: cmnMI R5, R0, ASR R14
l6408: b l6414
l6409: bicHIs R7, R4, R3, RRX 
l6410: rsbNE R2, R14, R14
l6411: teq R7, #5120
l6412: add R8, R15, R11
l6413: add R8, R9, R7, LSL R5
l6414: movGE R3, R2, LSR R14
l6415: subs R7, R11, R2, ROR R8
l6416: eorLS R3, R7, #-2147483586
l6417: cmnGE R11, R0, ASR #18
l6418: nop
l6419: ldmEQDA R13, {R1, R2, R3, R4, R7, R8, R10, R11, R14}
l6420: ldr R6, l6422
l6421: b l6423
l6422: .word 1048512
l6423: swpLS R12, R0, [R6]
l6424: mov R6, #40
l6425: ldr R8, [sp, -R6]
l6426: ldmIB R13!, {R11, R12}
l6427: addVCs R7, R0, #687865856
l6428: mov R9, #38
l6429: strB R14, [sp, -R9]
l6430: ldr R14, l6432
l6431: b l6433
l6432: .word 1048520
l6433: swpEQ R5, R8, [R14]
l6434: bEQ l6442
l6435: add R1, R0, #27
l6436: cmpCS R10, R8, LSL R9
l6437: ands R11, R14, #-402653184
l6438: rscLTs R11, R7, R6
l6439: teqVC R8, R15, ASR #14
l6440: rsbs R0, R4, R7, LSL #25
l6441: b l6443
l6442: b l6436
l6443: bics R14, R14, R4, RRX 
l6444: teq R0, R11, ASR #14
l6445: ldrsb R5, [sp, #-14]
l6446: sub R0, R3, R6
l6447: stmDA R13!, {R6, R8, R12}
l6448: rsbMI R1, R15, R8, RRX 
l6449: rscHI R4, R1, R11, ROR #5
l6450: adcLS R1, R5, R1
l6451: cmnHI R0, R1, LSL #23
l6452: ldr R1, l6454
l6453: b l6455
l6454: .word 1048496
l6455: swpb R2, R4, [R1]
l6456: adcCS R11, R1, R6, ROR #10
l6457: ldr R4, l6459
l6458: b l6460
l6459: .word 1048520
l6460: swpb R5, R1, [R4]
l6461: mov R3, #4
l6462: strGTB R14, [sp, +R3]
l6463: strh R7, [sp, #-8]
l6464: adcVCs R1, R2, R10, LSR R7
l6465: movs R10, R3
l6466: andGT R6, R0, R1, ASR #28
l6467: rsbMIs R5, R6, R2, RRX 
l6468: nop
l6469: str R1, [sp], #-20
l6470: mvnLTs R10, R10
l6471: mov R12, #28
l6472: ldr R8, [sp, +R12]!
l6473: rsbCCs R10, R3, R0, LSR #0
l6474: ldrVSsh R7, [sp, #-10]
l6475: andVCs R12, R11, R2
l6476: cmpEQ R9, R0
l6477: bic R11, R14, R5, ASR R5
l6478: ldr R8, l6480
l6479: b l6481
l6480: .word 1048504
l6481: swpb R3, R4, [R8]
l6482: ldrCC R8, [sp, #-16]
l6483: rsc R1, R2, R8, LSR R1
l6484: cmnLT R4, R12, ROR #22
l6485: mov R12, #16
l6486: ldrGE R14, [sp, -R12]
l6487: ldrCS R10, [sp, #-24]
l6488: ldmDB R13, {R0, R2, R3, R4, R5, R7, R8, R10, R11, R12, R14}
l6489: bLT l6497
l6490: bicVSs R14, R6, R4
l6491: adcCC R7, R2, R15
l6492: eors R7, R8, R6
l6493: eors R14, R2, R8, RRX 
l6494: movLT R10, R11
l6495: movs R8, #308
l6496: rsb R6, R3, R10, ASR #3
l6497: adcLSs R11, R4, R9, LSL #25
l6498: cmnLE R4, R10, ASR R12
l6499: str R12, [sp], #-24
l6500: ldrLTB R11, [sp, #-28]
l6501: orrNEs R14, R12, R4, RRX 
l6502: ldrsb R11, [sp, #-27]
l6503: rsbHIs R12, R4, R2, LSL #20
l6504: ldr R9, l6506
l6505: b l6507
l6506: .word 1048544
l6507: swpb R8, R10, [R9]
l6508: cmnMI R3, R6
l6509: strHI R3, [sp, #-4]
l6510: bic R14, R14, #-1006632960
l6511: stmIB R13, {R0, R9, R15}
l6512: adc R10, R6, R0, ASR #10
l6513: ldmIB R13!, {R7, R9, R14}
l6514: b l6518
l6515: add R1, R0, #31
l6516: adcNE R7, R7, R5, LSR #1
l6517: b l6519
l6518: b l6516
l6519: cmp R15, #235520
l6520: subs R11, R1, R7, LSL R12
l6521: sbcPL R0, R4, R8, ASR #16
l6522: movCC R4, R10, LSR R12
l6523: subNEs R11, R11, R4, ASR R2
l6524: subGT R6, R15, R2, ASR #23
l6525: bicVCs R5, R15, R8
l6526: ands R3, R10, #3538944
l6527: cmp R10, R2, ROR #15
l6528: eors R7, R3, R9
l6529: ldr R2, l6531
l6530: b l6532
l6531: .word 1048496
l6532: swpb R10, R9, [R2]
l6533: cmnNE R6, R9, LSL R9
l6534: ldr R14, l6536
l6535: b l6537
l6536: .word 1048536
l6537: swpVCb R11, R3, [R14]
l6538: eors R8, R2, #124
l6539: sub R9, R10, R11, RRX 
l6540: bEQ l6542
l6541: mvnLT R3, R0, LSL R12
l6542: cmn R5, R0, ROR R4
l6543: cmp R12, #18612224
l6544: subEQ R10, R8, R15, RRX 
l6545: sbcVS R6, R4, R4
l6546: teq R8, R3
l6547: stmIB R13!, {R3, R5, R7, R11}
l6548: ldmDB R13, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l6549: tst R4, #-2147483631
l6550: nop
l6551: rsb R10, R5, R11
l6552: teqHI R6, #544768
l6553: bCS l6562
l6554: mvnLE R5, R11, LSL R8
l6555: mvns R5, R15
l6556: subNEs R8, R12, R10
l6557: sbc R4, R0, R11, LSL R2
l6558: teq R8, R12, LSL #6
l6559: adcLE R14, R2, R9, ASR #17
l6560: rsbGEs R4, R4, R9, ASR R1
l6561: movs R2, R3, ROR R5
l6562: subNEs R3, R1, R7, LSR R6
l6563: ldmIB R13!, {R11}
l6564: adcCS R8, R7, R7, ROR #25
l6565: subVCs R1, R12, R8, RRX 
l6566: clz R0, R3
l6567: clz R11, R8
l6568: ldr R11, l6570
l6569: b l6571
l6570: .word 1048496
l6571: swpb R0, R2, [R11]
l6572: mov R11, #30
l6573: strh R12, [sp, -R11]
l6574: mov R3, #70
l6575: ldrLSh R6, [sp, -R3]
l6576: cmnPL R8, R1, ROR R5
l6577: clzVC R6, R7
l6578: bic R14, R2, R9, LSL #11
l6579: ldrsh R6, [sp, #-22]
l6580: mov R4, #50
l6581: strLTB R10, [sp, -R4]
l6582: mov R12, #13
l6583: ldrsb R11, [sp, -R12]
l6584: tstMI R4, #-1459617792
l6585: teq R8, R4, RRX 
l6586: mov R8, #16
l6587: ldr R3, [sp, -R8]!
l6588: subs R6, R3, #767557632
l6589: tstMI R6, R15
l6590: rsc R4, R7, R6
l6591: ldrh R2, [sp, #+12]
l6592: mvnLE R6, R1, LSR R11
l6593: andLSs R10, R2, R2, ROR #1
l6594: mov R7, #15
l6595: ldrCCsb R3, [sp, +R7]
l6596: bNE l6600
l6597: mvnVC R9, R4, ROR #23
l6598: eors R14, R3, #-1073741799
l6599: bics R7, R11, R11
l6600: eors R14, R2, R6, ROR R9
l6601: eors R7, R3, #42
l6602: mov R9, #24
l6603: ldrh R4, [sp, -R9]
l6604: str R0, [sp, #+4]
l6605: mov R5, #3
l6606: ldrCCB R2, [sp, -R5]
l6607: mvnVSs R4, R9
l6608: movPLs R9, R6, RRX 
l6609: ldrsh R3, [sp, #+4]
l6610: cmpCS R1, R10, ASR R7
l6611: cmpLE R14, #243712
l6612: clzPL R8, R7
l6613: addLTs R7, R15, R4
l6614: mvns R6, #260096
l6615: ldr R10, [sp], #-44
l6616: mov R0, #22
l6617: ldrB R14, [sp, +R0]
l6618: teqCS R12, R9, ROR #30
l6619: sub R0, R1, #245
l6620: eor R0, R0, R0, RRX 
l6621: stmDB R13!, {R13}
l6622: ldmIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l6623: cmpLS R5, #160432128
l6624: b l6629
l6625: bicLS R8, R11, #2228224
l6626: teqGT R7, R15
l6627: adc R11, R6, R3, LSR #29
l6628: bic R4, R14, R8
l6629: rsbs R7, R0, R5, ASR R11
l6630: sbcs R12, R0, R4, ROR R8
l6631: cmpLE R1, R11, LSR R0
l6632: tstPL R8, R12, LSL #26
l6633: bCC l6638
l6634: subLE R6, R2, R1, LSL #8
l6635: mvnGEs R7, R3, LSL R0
l6636: mvns R5, R6, LSR R2
l6637: rsbGE R8, R2, #13696
l6638: clzLT R6, R8
l6639: stmIB R13!, {R1, R4, R5, R6, R7, R14, R15}
l6640: and R2, R8, R8, LSL R1
l6641: mov R11, #20
l6642: ldrsb R10, [sp, -R11]
l6643: subHI R6, R2, R11, ASR #11
l6644: eors R12, R4, R8, ASR R11
l6645: rscLEs R1, R4, #11072
l6646: subLTs R6, R7, R15
l6647: ldrGEB R12, [sp, #+28]
l6648: ldrsh R7, [sp, #-22]
l6649: mvn R11, R6, ASR #20
l6650: ldmIB R13!, {R5, R7}
l6651: rscs R3, R11, R14
l6652: mov R9, #0
l6653: ldrLEsh R8, [sp, +R9]
l6654: sbcs R4, R10, R6
l6655: orrLT R1, R11, R5, LSR #18
l6656: ldr R4, l6658
l6657: b l6659
l6658: .word 1048524
l6659: swp R6, R5, [R4]
l6660: mov R8, #30
l6661: ldrCCh R0, [sp, -R8]
l6662: sub R6, R7, R9, RRX 
l6663: rsb R14, R15, #1073741859
l6664: ldrGTsb R4, [sp, #-43]
l6665: cmp R9, R15, RRX 
l6666: rsbCS R6, R12, #37748736
l6667: bicNE R4, R5, R0
l6668: bLE l6675
l6669: add R1, R0, #162
l6670: adcLS R3, R1, R12
l6671: sbcNEs R1, R6, R14
l6672: adcVS R8, R10, #166912
l6673: subVC R6, R6, #-486539264
l6674: b l6676
l6675: b l6670
l6676: bLE l6682
l6677: add R1, R0, #246
l6678: teqGE R2, R14, LSL R2
l6679: mvnLS R0, R6
l6680: adcLS R4, R6, R2
l6681: b l6683
l6682: b l6678
l6683: bGE l6688
l6684: add R1, R0, #184
l6685: eor R14, R3, R0, LSR #24
l6686: adds R12, R14, R10
l6687: b l6689
l6688: b l6685
l6689: subVC R3, R1, R3
l6690: bicHI R8, R3, R2, LSR #21
l6691: and R11, R3, #10752
l6692: ldrMI R5, [sp, #-24]
l6693: bMI l6696
l6694: bics R6, R6, #655360
l6695: mvnNE R2, R8, ASR R1
l6696: subVS R6, R12, R15, ROR #19
l6697: orrPL R0, R10, #150994944
l6698: ands R0, R14, R12
l6699: subMI R2, R2, R14
l6700: ldr R9, l6702
l6701: b l6703
l6702: .word 1048548
l6703: swpMIb R0, R7, [R9]
l6704: ldr R5, l6706
l6705: b l6707
l6706: .word 1048552
l6707: swpb R14, R4, [R5]
l6708: sbcs R6, R4, R2
l6709: subs R14, R7, #28672
l6710: ldrsb R9, [sp, #-12]
l6711: adcVS R11, R9, #60030976
l6712: eorLTs R10, R10, R4, LSL R5
l6713: rsc R10, R12, R0, RRX 
l6714: ldr R4, l6716
l6715: b l6717
l6716: .word 1048480
l6717: swpb R6, R0, [R4]
l6718: sub R2, R8, #9
l6719: cmpLS R2, R0
l6720: str R3, [sp], #-36
l6721: ldr R1, l6723
l6722: b l6724
l6723: .word 1048532
l6724: swpb R3, R11, [R1]
l6725: eorPLs R8, R11, #188
l6726: nop
l6727: subLS R12, R10, R15, ROR #21
l6728: rscs R5, R11, #46
l6729: ldr R8, l6731
l6730: b l6732
l6731: .word 1048500
l6732: swpb R11, R7, [R8]
l6733: ands R3, R15, R11
l6734: ldr R2, [sp, #+28]!
l6735: ldrsb R2, [sp, #-8]
l6736: stmDA R13!, {R2, R4, R8, R10, R11, R14}
l6737: movLEs R5, R6
l6738: rsbCCs R5, R3, R14, RRX 
l6739: sub R9, R0, R5
l6740: ldrsh R5, [sp, #+42]
l6741: bGE l6745
l6742: add R1, R0, #175
l6743: eors R5, R1, R1
l6744: b l6746
l6745: b l6743
l6746: sbcHIs R6, R10, R5, ASR R14
l6747: subs R10, R14, #-1560281088
l6748: rscCSs R7, R8, R0
l6749: addLS R12, R10, R1, ROR #31
l6750: sbcs R14, R2, R1, LSL R12
l6751: eor R2, R6, R15
l6752: rscLEs R5, R12, #901120
l6753: teqHI R4, #-1073741800
l6754: mov R4, #63
l6755: strLSB R0, [sp, +R4]
l6756: adc R6, R2, R9
l6757: rscs R7, R8, R3, LSR R5
l6758: stmIB R13!, {R0, R8, R11, R12}
l6759: strh R8, [sp, #+28]
l6760: mvnCCs R14, R1, ASR R12
l6761: eors R2, R9, #111149056
l6762: rsbs R1, R1, #132096
l6763: teqGT R10, R0, LSL R11
l6764: tstMI R6, #4
l6765: teqGT R14, R15, RRX 
l6766: strB R2, [sp, #-28]
l6767: mov R11, #2
l6768: strh R14, [sp, -R11]
l6769: ldr R11, l6771
l6770: b l6772
l6771: .word 1048528
l6772: swpLTb R12, R3, [R11]
l6773: ldrGTsb R14, [sp, #-21]
l6774: bLE l6784
l6775: bics R2, R5, #285212672
l6776: rsbLTs R2, R7, R6, ASR R6
l6777: sub R3, R5, R9, LSL R11
l6778: movVSs R1, R9
l6779: subGEs R4, R6, #7864320
l6780: eor R14, R8, R12, ROR #5
l6781: cmnVC R2, #2621440
l6782: subCS R8, R1, #35651584
l6783: bics R7, R4, R9, LSR R10
l6784: eorGT R5, R4, R3, RRX 
l6785: ldmEQDB R13, {R6}
l6786: mov R12, #17
l6787: strCSB R10, [sp, +R12]
l6788: clz R0, R9
l6789: b l6795
l6790: add R1, R0, #213
l6791: subLEs R4, R1, #5242880
l6792: rscMI R1, R5, R1, LSR R1
l6793: movs R8, #-1811939328
l6794: b l6796
l6795: b l6791
l6796: clz R4, R0
l6797: sbcVCs R1, R6, R9, LSL R14
l6798: mov R9, #8
l6799: ldr R9, [sp, -R9]!
l6800: orrPL R14, R1, R9, LSL #1
l6801: ldr R5, l6803
l6802: b l6804
l6803: .word 1048480
l6804: swpVSb R1, R2, [R5]
l6805: rscs R12, R1, R15, RRX 
l6806: cmn R10, #214
l6807: ldr R11, [sp, #+36]!
l6808: adcLEs R9, R12, R1, RRX 
l6809: subNE R9, R7, R7, LSR #3
l6810: adds R4, R0, R10, ASR #2
l6811: b l6819
l6812: clzCS R8, R0
l6813: subLT R0, R8, R9, RRX 
l6814: add R14, R9, R5, LSR #29
l6815: tst R1, R15
l6816: sbc R11, R5, R14
l6817: mvnGTs R12, R4, ASR R14
l6818: bicGEs R7, R1, R10
l6819: eorGT R10, R1, R5, LSR #22
l6820: mvnLTs R10, R4
l6821: rscCS R4, R9, R7, LSR #11
l6822: ldrVCsb R4, [sp, #-28]
l6823: mvnEQs R12, #584
l6824: cmp R7, R11, RRX 
l6825: mvnPLs R5, #721420288
l6826: mov R11, #50
l6827: ldrCSB R10, [sp, -R11]
l6828: subLEs R6, R12, R9, RRX 
l6829: tstMI R3, #1024
l6830: bEQ l6839
l6831: add R1, R0, #183
l6832: subs R5, R10, R4, ASR R7
l6833: sub R8, R3, R4, ASR R11
l6834: adcLTs R5, R6, R0
l6835: sbc R7, R7, R9, LSR R7
l6836: mvnGE R10, R8, RRX 
l6837: cmnEQ R3, R9, LSL R2
l6838: b l6840
l6839: b l6832
l6840: cmpLE R0, R9, ROR #27
l6841: cmnLE R6, R1, ROR #2
l6842: b l6850
l6843: add R1, R0, #232
l6844: cmnLS R10, R2, LSL R14
l6845: subEQ R7, R8, R8
l6846: rsc R12, R14, R1, LSR R8
l6847: rsc R9, R3, #38797312
l6848: rscGEs R7, R2, R4, ROR #27
l6849: b l6851
l6850: b l6844
l6851: ldrCCh R0, [sp, #-32]
l6852: ldr R11, l6854
l6853: b l6855
l6854: .word 1048548
l6855: swpb R8, R9, [R11]
l6856: ldr R8, l6858
l6857: b l6859
l6858: .word 1048536
l6859: swpb R5, R14, [R8]
l6860: bCC l6862
l6861: sub R9, R14, R8, LSR R6
l6862: cmn R5, R11, LSL R0
l6863: subCS R2, R10, R14
l6864: strCS R6, [sp, #-20]
l6865: mov R8, #33
l6866: strB R9, [sp, -R8]
l6867: sbcGEs R7, R4, R10, ROR #7
l6868: stmDB R13!, {R4, R14}
l6869: ldr R6, l6871
l6870: b l6872
l6871: .word 1048552
l6872: swp R4, R3, [R6]
l6873: add R7, R14, R5, RRX 
l6874: str R7, [sp, #-40]
l6875: mov R3, #5
l6876: strB R14, [sp, +R3]
l6877: sbc R7, R5, R14, LSL #10
l6878: adcPL R8, R5, R2, ASR R7
l6879: ldr R3, l6881
l6880: b l6882
l6881: .word 1048548
l6882: swpMIb R0, R8, [R3]
l6883: adds R0, R11, R5, LSL #8
l6884: sbc R5, R1, #-1073741810
l6885: adc R6, R1, R3
l6886: bHI l6893
l6887: cmp R7, #-1073741817
l6888: bicVSs R7, R7, R12, RRX 
l6889: mvnLSs R10, R2, ROR R12
l6890: subVCs R4, R5, R4
l6891: sbcs R12, R12, R1
l6892: orrLE R11, R8, R7, ASR R11
l6893: subLTs R0, R3, #872
l6894: cmn R4, #556
l6895: subs R3, R4, R15, LSR #3
l6896: andLTs R10, R8, R5
l6897: cmpNE R6, #-2147483630
l6898: mov R9, #14
l6899: ldrPLsh R8, [sp, -R9]
l6900: ldr R10, l6902
l6901: b l6903
l6902: .word 1048484
l6903: swp R11, R2, [R10]
l6904: rsc R1, R11, R1, LSL R6
l6905: teqVS R11, R2, LSR #14
l6906: ldr R10, l6908
l6907: b l6909
l6908: .word 1048540
l6909: swpb R2, R8, [R10]
l6910: orrMI R11, R2, #18688
l6911: adc R9, R14, #24832
l6912: sbc R6, R6, R11, ASR #4
l6913: adc R10, R8, R14, LSL R6
l6914: cmpCS R0, R14
l6915: rscNEs R14, R12, R15
l6916: strLTh R0, [sp, #+16]
l6917: andGE R2, R14, R4, ASR #15
l6918: mov R0, #964
l6919: subGE R0, R11, R10, RRX 
l6920: eorPL R6, R2, R12
l6921: str R3, [sp], #+0
l6922: orrLEs R1, R15, R0, RRX 
l6923: mov R12, #20
l6924: ldrHI R5, [sp, -R12]
l6925: strHIh R3, [sp, #-38]
l6926: cmp R15, R0
l6927: eorEQs R12, R6, R8, LSR R7
l6928: ldrsb R9, [sp, #-24]
l6929: cmnVS R10, R12, ROR R2
l6930: eorNE R8, R4, #8912896
l6931: eors R3, R15, R12
l6932: add R4, R3, R0, ROR #6
l6933: mov R14, #28
l6934: str R9, [sp, -R14]!
l6935: eors R9, R12, #908
l6936: bVS l6943
l6937: tstPL R4, R1, ROR #2
l6938: tstMI R0, R11, ASR R7
l6939: subs R0, R6, R14, ROR R12
l6940: orrEQs R10, R8, R3, ASR #10
l6941: cmnPL R9, R5, LSL R11
l6942: rsbVCs R10, R7, #3248
l6943: andVS R8, R2, #16777216
l6944: clz R11, R2
l6945: addPL R4, R8, R8, RRX 
l6946: b l6950
l6947: mvnCS R1, #3391488
l6948: addCSs R6, R15, R11
l6949: rscs R11, R4, R8
l6950: ands R4, R6, #10240
l6951: adds R11, R6, R4, RRX 
l6952: cmpVC R12, #2326528
l6953: ldmEQIA R13, {R7, R9}
l6954: orrEQ R12, R8, R10, LSL R10
l6955: ldrh R2, [sp, #-10]
l6956: b l6960
l6957: add R1, R0, #192
l6958: subCCs R10, R7, #25952256
l6959: b l6961
l6960: b l6958
l6961: clzLE R2, R9
l6962: ldrVCB R5, [sp, #-13]
l6963: adds R8, R7, R6, ASR #20
l6964: mov R10, #4
l6965: str R3, [sp, -R10]
l6966: bCC l6972
l6967: add R1, R0, #91
l6968: rsbHI R11, R12, R2, LSR #7
l6969: addVS R5, R0, R9
l6970: sbcs R8, R8, #11337728
l6971: b l6973
l6972: b l6968
l6973: rscVC R14, R9, R14
l6974: strGE R5, [sp, #+48]
l6975: clzLE R6, R8
l6976: ldrVCB R14, [sp, #+25]
l6977: bLT l6986
l6978: add R1, R0, #144
l6979: rsbVSs R3, R12, R2, ROR R9
l6980: andNEs R3, R10, R10
l6981: adcCSs R6, R0, R3
l6982: clzMI R5, R3
l6983: adcs R1, R11, R5, RRX 
l6984: subCSs R1, R11, R15
l6985: b l6987
l6986: b l6979
l6987: eors R2, R15, #-67108863
l6988: mvns R0, #1179648
l6989: mov R4, #18
l6990: ldrh R3, [sp, -R4]
l6991: bPL l6998
l6992: add R1, R0, #145
l6993: clzLT R2, R7
l6994: orrPL R7, R4, #2555904
l6995: mov R1, R6, ASR #18
l6996: orr R2, R10, R5
l6997: b l6999
l6998: b l6993
l6999: subPL R3, R0, #1552
l7000: andLT R4, R8, R5, LSR R10
l7001: teq R10, R0, ASR R5
l7002: stmDB R13!, {R4, R15}
l7003: teq R10, R15, LSR #24
l7004: cmpPL R6, R14, ROR R14
l7005: cmn R0, R15
l7006: bPL l7013
l7007: add R1, R0, #182
l7008: mvnEQ R2, R1, ROR R2
l7009: cmp R1, R3
l7010: clz R11, R0
l7011: eorLT R12, R14, R0, RRX 
l7012: b l7014
l7013: b l7008
l7014: bCS l7018
l7015: add R1, R0, #182
l7016: orrNE R11, R11, R9
l7017: b l7019
l7018: b l7016
l7019: ldrsh R10, [sp, #+14]
l7020: ldr R0, l7022
l7021: b l7023
l7022: .word 1048540
l7023: swpb R14, R1, [R0]
l7024: subHIs R7, R11, R11
l7025: rsbGE R9, R8, #87031808
l7026: tstLT R14, #1073741885
l7027: mov R6, #48
l7028: strPLh R14, [sp, +R6]
l7029: cmn R6, R8
l7030: clz R8, R12
l7031: movs R7, R10
l7032: rsb R7, R11, R8, LSR R12
l7033: cmpCC R6, R10, LSR R7
l7034: addGT R2, R7, R4, LSR R2
l7035: ldr R10, [sp, #+60]!
l7036: orrPLs R4, R4, R14
l7037: eors R8, R2, R10, ROR R14
l7038: cmp R5, R11, LSR R4
l7039: rsbs R5, R3, R6, ASR R1
l7040: cmn R12, R10, ASR R10
l7041: subs R6, R7, #-805306356
l7042: subGEs R11, R12, R9
l7043: ldr R4, l7045
l7044: b l7046
l7045: .word 1048496
l7046: swp R12, R7, [R4]
l7047: strGTh R11, [sp, #-34]
l7048: cmn R15, #995328
l7049: orrLSs R9, R9, R6
l7050: bVC l7054
l7051: add R1, R0, #98
l7052: andHIs R4, R12, R10, RRX 
l7053: b l7055
l7054: b l7052
l7055: ldrLSsb R4, [sp, #-23]
l7056: rscLS R2, R3, R0
l7057: sbcs R5, R3, R11, RRX 
l7058: subVSs R0, R8, R0, LSR #25
l7059: clzPL R11, R9
l7060: and R2, R6, R6
l7061: mvnPLs R12, #760
l7062: cmnLE R15, R9, ASR #13
l7063: addCS R5, R10, R14
l7064: eorEQs R12, R3, R5
l7065: mov R8, #34
l7066: strLSh R3, [sp, -R8]
l7067: bic R7, R9, #1879048202
l7068: movCCs R3, R12
l7069: mov R1, #41
l7070: ldrVSB R6, [sp, -R1]
l7071: tstHI R2, R8, ROR #26
l7072: ldmEQDA R13, {R3, R8}
l7073: eorHIs R6, R14, R8, ROR #20
l7074: subGTs R10, R11, R1
l7075: strB R10, [sp, #-4]
l7076: ands R2, R6, R1, LSL R2
l7077: strh R6, [sp, #-34]
l7078: strCSh R1, [sp, #-58]
l7079: orrNEs R2, R0, R8, RRX 
l7080: cmn R7, R6, ROR R1
l7081: mov R11, #20
l7082: ldr R10, [sp], -R11
l7083: mov R11, #50
l7084: ldrB R14, [sp, -R11]
l7085: adc R5, R10, R15, LSR #0
l7086: bEQ l7092
l7087: add R1, R0, #146
l7088: tstLE R14, R1, LSR #24
l7089: cmn R15, #34865152
l7090: andHIs R5, R7, R1, ASR R7
l7091: b l7093
l7092: b l7088
l7093: orrPLs R10, R2, R1, LSR #31
l7094: cmp R6, R10
l7095: bEQ l7100
l7096: add R1, R0, #198
l7097: orr R3, R5, R7
l7098: cmp R7, R4, LSL R1
l7099: b l7101
l7100: b l7097
l7101: ldmIA R13, {R2}
l7102: stmDA R13!, {R0, R12}
l7103: teq R5, R12
l7104: mov R8, #18
l7105: ldrB R3, [sp, +R8]
l7106: subs R6, R5, R9, RRX 
l7107: bNE l7111
l7108: add R1, R0, #155
l7109: sbcs R6, R8, #-268435453
l7110: b l7112
l7111: b l7109
l7112: mov R14, #28
l7113: str R9, [sp, +R14]!
l7114: bic R11, R3, R11, LSL #1
l7115: sbcs R7, R10, R4, LSL R9
l7116: rsbs R3, R7, R7, LSR #29
l7117: ldr R8, l7119
l7118: b l7120
l7119: .word 1048536
l7120: swpGTb R3, R4, [R8]
l7121: mvns R14, R6, LSR R1
l7122: ldrGEB R6, [sp, #-10]
l7123: b l7132
l7124: add R1, R0, #40
l7125: tstVS R9, R2
l7126: andVSs R9, R5, R10, ASR #3
l7127: rscs R11, R12, R2
l7128: cmp R12, R3
l7129: clzPL R4, R2
l7130: eorHIs R8, R5, R9, ASR #6
l7131: b l7133
l7132: b l7125
l7133: orrLEs R10, R14, #-1879048192
l7134: ands R7, R0, R10, ROR #8
l7135: andPL R10, R8, #1073741864
l7136: ldmLSDA R13, {R2, R5, R7, R8, R10, R12, R14}
l7137: ldrCSsb R2, [sp, #-27]
l7138: tst R5, R5, LSL R4
l7139: ldr R10, l7141
l7140: b l7142
l7141: .word 1048528
l7142: swp R14, R4, [R10]
l7143: mov R12, #42
l7144: ldrNEsb R0, [sp, -R12]
l7145: bics R12, R0, #10944512
l7146: eorCC R3, R1, R5, LSR #16
l7147: ldr R10, l7149
l7148: b l7150
l7149: .word 1048528
l7150: swpb R5, R12, [R10]
l7151: clzGE R5, R12
l7152: mov R1, #38
l7153: ldrLEh R6, [sp, -R1]
l7154: tst R8, #13568
l7155: tst R0, #16384
l7156: mov R0, #38
l7157: strB R6, [sp, -R0]
l7158: nop
l7159: mov R0, #8
l7160: ldrsh R0, [sp, -R0]
l7161: cmpGT R2, R9
l7162: cmnEQ R7, #-989855744
l7163: subLSs R14, R5, #1610612736
l7164: bLE l7171
l7165: add R1, R0, #15
l7166: bicPL R7, R14, R12, ROR R9
l7167: adcHI R10, R15, R3
l7168: orrPLs R11, R10, #38912
l7169: cmpEQ R14, #114688
l7170: b l7172
l7171: b l7166
l7172: eor R14, R11, R6, RRX 
l7173: subs R4, R12, R12
l7174: eorGE R6, R6, R5, ASR R1
l7175: b l7183
l7176: add R1, R0, #222
l7177: teqLS R4, #1163264
l7178: cmpHI R2, R7
l7179: cmpMI R4, R10, ASR #4
l7180: sbcNE R10, R8, #471040
l7181: addHIs R9, R9, #1073741839
l7182: b l7184
l7183: b l7177
l7184: ldrLEsh R2, [sp, #-14]
l7185: mov R0, #27
l7186: ldrsb R14, [sp, -R0]
l7187: ldmDA R13!, {R0, R2, R3, R4, R5, R7, R8, R9, R10, R11, R12}
l7188: cmnLS R6, #288
l7189: ldr R14, l7191
l7190: b l7192
l7191: .word 1048516
l7192: swp R7, R6, [R14]
l7193: ldrB R2, [sp, #-2]
l7194: ldmIA R13!, {R0, R2, R3, R5, R7, R8, R9, R10, R14}
l7195: adds R9, R3, #51968
l7196: bMI l7199
l7197: rscCSs R9, R9, R3, ASR #5
l7198: subVC R3, R9, R11, LSL #10
l7199: rsbLE R10, R1, R7
l7200: cmpMI R15, R3, LSL #30
l7201: sub R0, R8, R9
l7202: movLEs R11, R3
l7203: stmDB R13!, {R0, R1, R3, R6, R7, R9, R11, R14}
l7204: adc R11, R2, R5, ASR R1
l7205: ldr R4, l7207
l7206: b l7208
l7207: .word 1048480
l7208: swpb R11, R9, [R4]
l7209: ldrsh R3, [sp, #+36]
l7210: subGEs R1, R15, R15
l7211: clzHI R1, R14
l7212: ldrsb R6, [sp, #+5]
l7213: mov R5, #8
l7214: strMI R11, [sp, +R5]
l7215: ldmPLIA R13, {R4, R10}
l7216: b l7217
l7217: sub R7, R0, R1, ASR #28
l7218: subs R6, R8, #100
l7219: rsbs R8, R8, R12
l7220: cmnLT R10, R3, ROR R12
l7221: ldr R1, l7223
l7222: b l7224
l7223: .word 1048524
l7224: swpGT R2, R4, [R1]
l7225: adcLTs R3, R2, R7
l7226: subHIs R8, R5, #-1862270976
l7227: sub R1, R14, R0
l7228: mov R3, #36
l7229: strGEh R10, [sp, +R3]
l7230: mov R12, #3
l7231: strB R9, [sp, -R12]
l7232: rsc R10, R10, #180224
l7233: cmp R9, R6, LSL R12
l7234: rscCCs R9, R7, R12, ROR #14
l7235: cmpLS R8, #26738688
l7236: mvnGTs R5, R4
l7237: movGT R2, R8
l7238: eors R6, R2, R14
l7239: mvns R10, R8, ASR R0
l7240: andEQ R1, R3, R3, LSR R2
l7241: ldmIA R13!, {R5, R6}
l7242: clzLE R12, R12
l7243: ldrCCh R11, [sp, #+6]
l7244: orrVCs R5, R14, #16
l7245: bMI l7251
l7246: add R1, R0, #60
l7247: teqCC R5, R1
l7248: sbcs R8, R14, #-1073741822
l7249: subGT R7, R5, R6
l7250: b l7252
l7251: b l7247
l7252: adcs R11, R7, R15, LSR #1
l7253: ldrLSsb R7, [sp, #-25]
l7254: subPL R7, R3, R5, ASR R6
l7255: tst R5, R15
l7256: rscMIs R12, R4, R0
l7257: subPL R2, R11, R4, ASR #3
l7258: addLS R14, R11, R0, LSL #18
l7259: ldmIB R13, {R1, R2, R3, R4, R10, R12}
l7260: bVS l7265
l7261: add R1, R0, #92
l7262: clz R12, R6
l7263: subGT R7, R12, R8
l7264: b l7266
l7265: b l7262
l7266: ldr R5, l7268
l7267: b l7269
l7268: .word 1048528
l7269: swpCC R2, R10, [R5]
l7270: cmnVS R15, R4, RRX 
l7271: ldr R4, l7273
l7272: b l7274
l7273: .word 1048508
l7274: swp R0, R12, [R4]
l7275: add R5, R1, #136314880
l7276: b l7285
l7277: add R1, R0, #18
l7278: adc R11, R7, R4
l7279: subVCs R7, R11, #688128
l7280: andHIs R2, R15, R4
l7281: subCC R6, R9, R12
l7282: and R6, R6, R1, LSL R8
l7283: adc R0, R11, R15, ROR #6
l7284: b l7286
l7285: b l7278
l7286: eor R6, R11, R8, ASR R0
l7287: teqLE R4, R2, LSR #2
l7288: sbcLT R10, R12, R6, ROR #6
l7289: bMI l7293
l7290: add R1, R0, #241
l7291: sub R0, R6, R3
l7292: b l7294
l7293: b l7291
l7294: tstHI R1, #-1073741761
l7295: clzNE R7, R2
l7296: bLT l7301
l7297: rscs R2, R14, #-1543503872
l7298: mvn R7, R5
l7299: sbcs R6, R10, #1073741834
l7300: eorHI R9, R6, R2
l7301: tst R12, #720896
l7302: b l7308
l7303: add R1, R0, #134
l7304: subs R2, R0, R0, LSL R8
l7305: cmpPL R2, #9
l7306: addHI R8, R9, R6, LSL #19
l7307: b l7309
l7308: b l7304
l7309: ldr R8, l7311
l7310: b l7312
l7311: .word 1048524
l7312: swpVSb R12, R5, [R8]
l7313: ldr R12, l7315
l7314: b l7316
l7315: .word 1048544
l7316: swpGTb R4, R10, [R12]
l7317: mov R5, #4
l7318: ldrsh R11, [sp, -R5]
l7319: rsbs R4, R0, R4, LSR #22
l7320: teq R7, #56832
l7321: adcGE R10, R14, R6, RRX 
l7322: str R10, [sp, #+0]!
l7323: ldrsh R6, [sp, #+16]
l7324: clzGE R6, R11
l7325: ldrPLB R10, [sp, #+32]
l7326: mov R3, #8
l7327: str R6, [sp], -R3
l7328: movs R12, R1, ASR R8
l7329: subLS R12, R9, #32768
l7330: teqCC R12, R6, LSR #29
l7331: bicLSs R3, R7, R12, LSR R10
l7332: mov R2, #4
l7333: ldr R10, [sp], +R2
l7334: mov R7, #34
l7335: strEQh R11, [sp, -R7]
l7336: mov R7, #15
l7337: ldrCCB R14, [sp, -R7]
l7338: bic R2, R9, #536870924
l7339: stmDA R13!, {R13}
l7340: cmp R0, R8, RRX 
l7341: ldmIB R13!, {R1, R2, R3, R7}
l7342: tst R8, #147456
l7343: ldmPLDB R13, {R14}
l7344: rsbPLs R0, R2, R0
l7345: subs R2, R2, R15, LSR #2
l7346: clzLE R7, R10
l7347: rsbs R2, R9, R5, LSL #19
l7348: ldrMIsh R14, [sp, #-4]
l7349: bics R7, R0, #9437184
l7350: subs R12, R8, R4, LSL R12
l7351: subPLs R12, R7, R14
l7352: ldmIA R13, {R5, R6, R10, R11}
l7353: cmp R10, R0, ROR R14
l7354: andEQs R9, R0, R7, RRX 
l7355: mov R14, #28
l7356: str R5, [sp, -R14]!
l7357: bVS l7362
l7358: tstLE R0, #201
l7359: eorHI R12, R2, R9, ROR R10
l7360: sub R3, R1, R3
l7361: tstNE R1, #-2147483648
l7362: and R9, R11, R3, ASR R5
l7363: teqNE R0, R7
l7364: cmp R8, #268435456
l7365: mov R10, #11
l7366: ldrB R11, [sp, -R10]
l7367: bCC l7368
l7368: sbcs R4, R12, R11, ASR R7
l7369: mov R4, #8
l7370: strGE R4, [sp, -R4]
l7371: sub R10, R2, R0, ROR #15
l7372: clzGT R14, R0
l7373: andVS R14, R1, R12
l7374: mov R2, #24
l7375: ldrh R9, [sp, +R2]
l7376: adds R0, R3, R8, LSR #26
l7377: addPL R11, R8, R6
l7378: sbcs R3, R1, R8, LSL R11
l7379: subHI R7, R3, R2
l7380: ldmDA R13!, {R0, R4}
l7381: cmn R5, R3
l7382: eors R14, R9, R4, ASR #22
l7383: sub R3, R15, R3
l7384: eorNE R14, R14, R7, ASR #17
l7385: bVS l7394
l7386: add R1, R0, #178
l7387: bicCSs R9, R12, #6272
l7388: add R5, R12, R8, RRX 
l7389: bicLEs R0, R7, #-2147483622
l7390: sub R14, R9, R3
l7391: subGTs R2, R11, R5, ROR #15
l7392: clzVC R12, R12
l7393: b l7395
l7394: b l7387
l7395: stmIB R13!, {R1, R4, R5, R6, R7, R10, R11, R12, R15}
l7396: rsbCCs R8, R6, #17825792
l7397: mov R12, #12
l7398: ldr R4, [sp, +R12]!
l7399: subLTs R14, R2, #770048
l7400: andVSs R4, R0, R9, ROR R8
l7401: bics R9, R2, R7, RRX 
l7402: mov R7, #40
l7403: ldrsh R1, [sp, -R7]
l7404: mov R7, #35
l7405: ldrLEB R8, [sp, -R7]
l7406: mov R7, #22
l7407: ldrLEsh R9, [sp, -R7]
l7408: subLSs R12, R11, #26214400
l7409: subPLs R8, R4, #4928
l7410: b l7411
l7411: eorHI R6, R5, R3, ROR R7
l7412: tst R8, #-872415232
l7413: rsc R6, R3, R12
l7414: eor R14, R9, R8, RRX 
l7415: ldr R12, l7417
l7416: b l7418
l7417: .word 1048496
l7418: swpEQb R7, R14, [R12]
l7419: adcGT R2, R10, R8, ASR R2
l7420: sbcCS R8, R12, #15532032
l7421: ldrHI R6, [sp, #-60]
l7422: str R12, [sp], #-48
l7423: tst R9, R3
l7424: sbcs R3, R3, R8, LSL R3
l7425: sbcLE R4, R10, R10
l7426: cmp R9, R0, RRX 
l7427: teqCC R5, R11
l7428: subPLs R5, R3, R9
l7429: mvnNE R2, R1, LSL R4
l7430: ldmDA R13!, {R12}
l7431: movs R0, #360448
l7432: orrCC R8, R0, R14, ASR #20
l7433: bMI l7442
l7434: add R1, R0, #186
l7435: cmn R6, R9, ASR R9
l7436: teqLE R6, R5, RRX 
l7437: cmp R1, #1744830465
l7438: sbc R3, R9, R5, LSR #3
l7439: mvns R1, R9, RRX 
l7440: mvnCC R1, R4, ROR #1
l7441: b l7443
l7442: b l7435
l7443: strVC R3, [sp, #+24]
l7444: adcLEs R2, R10, R9, LSR #0
l7445: mov R6, #22
l7446: ldrPLsh R11, [sp, +R6]
l7447: movPL R5, #54263808
l7448: movCS R4, R10, ASR R8
l7449: b l7457
l7450: add R1, R0, #231
l7451: eor R5, R8, R9, ASR #31
l7452: subCS R2, R2, R2
l7453: mvnHI R0, R0, ASR R11
l7454: sbcVSs R7, R10, #50688
l7455: mvnVCs R10, R11, ASR R12
l7456: b l7458
l7457: b l7451
l7458: orrLSs R2, R5, R1, LSL R1
l7459: orrs R4, R8, #2704
l7460: bVS l7467
l7461: add R1, R0, #207
l7462: addGE R3, R3, R11, LSL R14
l7463: orrCCs R11, R2, R10, ROR #11
l7464: cmpMI R0, R1, LSR R1
l7465: andNEs R4, R11, R8, LSR #5
l7466: b l7468
l7467: b l7462
l7468: subGTs R2, R8, R10, ROR R11
l7469: adds R1, R1, #92160
l7470: cmnLT R12, R0, ROR R4
l7471: ldr R8, [sp, #+28]!
l7472: mov R4, #20
l7473: str R5, [sp], -R4
l7474: orrs R12, R15, R10, RRX 
l7475: bicVC R4, R3, #377487360
l7476: sbcs R11, R15, R6, RRX 
l7477: mov R14, #16
l7478: str R14, [sp, +R14]!
l7479: b l7483
l7480: add R1, R0, #39
l7481: cmpLE R3, R2, RRX 
l7482: b l7484
l7483: b l7481
l7484: cmnHI R10, R1
l7485: and R3, R9, #0
l7486: add R5, R2, #-1610612734
l7487: sbc R6, R8, R7
l7488: mov R12, #36
l7489: ldrLEh R10, [sp, +R12]
l7490: adcGTs R2, R8, R4
l7491: str R12, [sp, #+24]
l7492: ldrLEh R10, [sp, #-12]
l7493: stmDA R13, {R3}
l7494: ldrVSh R14, [sp, #-4]
l7495: teqLT R3, R11, ASR R8
l7496: cmpVC R5, R4, LSR #31
l7497: eorCC R6, R12, R14, LSR R6
l7498: rscVSs R12, R0, R15
l7499: movCC R10, R10, ROR #2
l7500: subs R8, R6, R9, LSR #14
l7501: ldrHIsh R12, [sp, #+36]
l7502: strCSB R2, [sp, #+40]
l7503: clzLE R8, R9
l7504: mov R12, #14
l7505: ldrMIsb R12, [sp, -R12]
l7506: b l7509
l7507: andLS R8, R15, R2
l7508: cmnCS R7, #487424
l7509: bicPLs R12, R4, #15232
l7510: b l7515
l7511: add R1, R0, #76
l7512: rsb R2, R4, #14811136
l7513: andVC R5, R10, R10, LSR #25
l7514: b l7516
l7515: b l7512
l7516: bicHIs R1, R9, R14, RRX 
l7517: mvns R10, #60817408
l7518: subGE R11, R5, R15, LSR #5
l7519: adcGT R8, R0, R12, LSR R4
l7520: eorLT R3, R0, R12, RRX 
l7521: ldrsb R6, [sp, #+41]
l7522: b l7528
l7523: addGTs R2, R9, R7, ROR R6
l7524: subs R14, R0, R11, ASR #7
l7525: cmp R0, R11, RRX 
l7526: cmp R3, R6, ASR R7
l7527: cmp R4, R8, ROR #23
l7528: adcs R8, R12, R5, ASR R14
l7529: tstVS R5, R5, ASR #22
l7530: orrGEs R8, R2, R6
l7531: adc R12, R14, R5, LSR #26
l7532: b l7541
l7533: sbcs R10, R4, R2, ROR R8
l7534: adc R10, R14, R12, ROR R0
l7535: rsbVC R0, R10, R14, ROR R2
l7536: clzVC R2, R2
l7537: teq R12, R4
l7538: subHI R11, R8, R5, LSR #23
l7539: rsc R11, R2, R14, ASR R9
l7540: cmnGT R10, #150528
l7541: tstLE R10, #1895825408
l7542: mov R14, #32
l7543: ldrCCsh R11, [sp, +R14]
l7544: rsc R14, R1, R4, LSL #18
l7545: adc R2, R10, R9
l7546: mov R11, #23
l7547: strGEB R6, [sp, +R11]
l7548: adcLT R10, R7, R14, LSR #27
l7549: adds R6, R15, R8
l7550: mov R2, #30
l7551: strB R5, [sp, +R2]
l7552: orrs R3, R10, #210944
l7553: addLS R3, R9, R12, RRX 
l7554: sbcs R0, R15, R12
l7555: addEQs R14, R1, #469762048
l7556: stmDB R13!, {R1, R2, R3, R8, R12, R14}
l7557: rsbs R10, R11, R10, LSL R8
l7558: ldrCCsb R4, [sp, #-4]
l7559: teqNE R14, R8
l7560: sbcVC R11, R12, #-805306365
l7561: cmn R2, #-1056964608
l7562: rscLT R0, R5, R9
l7563: nop
l7564: ldrVCB R8, [sp, #+9]
l7565: ldrsb R6, [sp, #-3]
l7566: rsbs R3, R14, R12
l7567: b l7572
l7568: add R1, R0, #38
l7569: andPL R11, R15, #11206656
l7570: addGTs R0, R0, #29884416
l7571: b l7573
l7572: b l7569
l7573: ldr R8, l7575
l7574: b l7576
l7575: .word 1048504
l7576: swpLE R10, R11, [R8]
l7577: nop
l7578: ldrB R0, [sp, #+37]
l7579: adc R8, R6, R2
l7580: mov R12, #3
l7581: ldrLSsb R14, [sp, +R12]
l7582: cmnNE R7, #88
l7583: b l7591
l7584: add R1, R0, #200
l7585: eorGT R1, R9, R0, LSL #17
l7586: mov R12, R15, RRX 
l7587: eors R5, R3, R14, LSR #8
l7588: andGEs R0, R12, #141557760
l7589: cmn R12, R9, ASR R7
l7590: b l7592
l7591: b l7585
l7592: orr R2, R7, R14
l7593: subGT R6, R4, R12, LSR R11
l7594: add R1, R12, R10, RRX 
l7595: addLS R11, R3, R1, ROR #12
l7596: orrMIs R7, R1, R12, LSR R3
l7597: teq R15, R12, RRX 
l7598: mov R10, #44
l7599: str R3, [sp], +R10
l7600: mov R6, #22
l7601: strMIh R11, [sp, -R6]
l7602: mov R0, #20
l7603: str R6, [sp, +R0]!
l7604: ldr R14, l7606
l7605: b l7607
l7606: .word 1048512
l7607: swpb R12, R8, [R14]
l7608: adds R5, R6, R10, LSR R0
l7609: adcs R14, R9, #103
l7610: tstNE R10, R8
l7611: cmnHI R9, R11, LSR #22
l7612: bCS l7621
l7613: add R1, R0, #125
l7614: subEQ R8, R2, #901120
l7615: cmp R7, R8
l7616: orrVCs R5, R11, #160768
l7617: rscVC R7, R10, #311296
l7618: and R3, R15, #774144
l7619: bicLT R5, R10, R3, ROR #19
l7620: b l7622
l7621: b l7614
l7622: mov R2, #56
l7623: str R5, [sp], -R2
l7624: mov R3, #59
l7625: ldrLSsb R2, [sp, +R3]
l7626: cmnCC R3, R14
l7627: mov R4, #4
l7628: strh R0, [sp, +R4]
l7629: teqLE R10, R9, LSR R0
l7630: andVC R7, R0, R11
l7631: rscEQ R7, R12, R11, LSL R10
l7632: clzMI R5, R8
l7633: tstMI R3, R0, ASR R0
l7634: str R1, [sp, #+4]!
l7635: strGEB R4, [sp, #-15]
l7636: mov R2, #48
l7637: ldrMI R4, [sp, +R2]
l7638: sbcEQs R9, R6, R1, LSR #11
l7639: mvnHIs R7, R1
l7640: rscLSs R9, R0, #536870926
l7641: mov R3, #32
l7642: strEQ R2, [sp, +R3]
l7643: strh R7, [sp, #+22]
l7644: mov R6, #2
l7645: ldrLTsh R3, [sp, -R6]
l7646: bNE l7655
l7647: add R1, R0, #74
l7648: mvnGEs R0, R8, LSL R6
l7649: addVS R4, R12, R6, LSL #15
l7650: rscVS R12, R5, R15, ROR #31
l7651: subVCs R12, R6, R5, ROR R1
l7652: bicEQs R12, R11, R1, ROR R9
l7653: add R8, R6, R14, ASR #8
l7654: b l7656
l7655: b l7648
l7656: mov R2, #24
l7657: strGEh R12, [sp, +R2]
l7658: adcs R14, R3, #44
l7659: cmn R5, R0, LSR #22
l7660: ldrEQB R5, [sp, #+7]
l7661: ldrCSsh R11, [sp, #-8]
l7662: ldmIB R13!, {R1, R5, R6, R8, R10, R14}
l7663: ldr R9, [sp, #-28]
l7664: rsbs R12, R14, #822083584
l7665: rscs R1, R9, R11, ASR #21
l7666: subs R0, R14, R10, LSL R8
l7667: mvnVS R12, #37376
l7668: teq R14, R9
l7669: ldmDB R13!, {R0, R6, R7, R8, R9, R10, R11, R12}
l7670: mvnVC R5, R6
l7671: mov R3, #14
l7672: ldrMIh R14, [sp, +R3]
l7673: ldrLSsb R10, [sp, #-5]
l7674: strMIh R2, [sp, #-4]
l7675: mov R11, #36
l7676: ldrsh R0, [sp, +R11]
l7677: ldmIA R13!, {R1, R4, R10, R12}
l7678: eorNE R7, R4, R7, ASR R7
l7679: str R1, [sp], #+12
l7680: mov R6, #18
l7681: strB R2, [sp, -R6]
l7682: mov R4, #0
l7683: ldr R3, [sp, +R4]!
l7684: ldr R11, [sp], #-16
l7685: rsbLT R11, R6, R14, RRX 
l7686: ldrsh R7, [sp, #+50]
l7687: sbcHIs R8, R10, R10
l7688: sbcs R8, R1, R5, ROR R1
l7689: ldrMIB R14, [sp, #-22]
l7690: movs R9, R8, LSL R9
l7691: ldrh R8, [sp, #-20]
l7692: strMIB R14, [sp, #-1]
l7693: mov R2, #35
l7694: ldrVCB R4, [sp, +R2]
l7695: teq R4, R4, ROR #2
l7696: stmIA R13, {R1, R2, R3, R4, R10, R11, R14}
l7697: ldrh R2, [sp, #+16]
l7698: ldrh R0, [sp, #+26]
l7699: teq R5, R3, LSR #13
l7700: ldrNEh R6, [sp, #+46]
l7701: mov R8, #12
l7702: strLT R6, [sp, +R8]
l7703: rscNEs R0, R1, #3293184
l7704: and R1, R4, R4, ROR #20
l7705: mov R7, #38
l7706: strB R0, [sp, +R7]
l7707: orrs R6, R0, R14
l7708: mov R1, #16
l7709: ldrLS R12, [sp, -R1]
l7710: ldr R4, l7712
l7711: b l7713
l7712: .word 1048512
l7713: swpVSb R10, R11, [R4]
l7714: teqLS R0, R2, ROR R9
l7715: nop
l7716: ldr R10, l7718
l7717: b l7719
l7718: .word 1048512
l7719: swpMI R7, R2, [R10]
l7720: subs R10, R3, #324
l7721: ldr R10, l7723
l7722: b l7724
l7723: .word 1048512
l7724: swp R2, R2, [R10]
l7725: mvns R4, R9, LSL #22
l7726: ldrsb R11, [sp, #+7]
l7727: teq R11, R5
l7728: movs R14, #197132288
l7729: teq R6, R10, ROR #9
l7730: eorCS R7, R6, R6
l7731: eors R1, R7, R11, RRX 
l7732: ldr R8, l7734
l7733: b l7735
l7734: .word 1048500
l7735: swpPLb R6, R3, [R8]
l7736: ldmIB R13!, {R2, R4, R6, R7, R8, R9, R11}
l7737: ldr R9, l7739
l7738: b l7740
l7739: .word 1048552
l7740: swpPLb R12, R5, [R9]
l7741: mvnEQ R10, #243269632
l7742: mov R6, #18
l7743: ldrGTh R14, [sp, -R6]
l7744: rsb R7, R1, R0
l7745: sub R10, R12, R2
l7746: clzLS R5, R8
l7747: rsbEQs R9, R9, R7, ROR R14
l7748: ldrVSsb R5, [sp, #-41]
l7749: tstPL R0, R0
l7750: eorCSs R14, R10, #1610612747
l7751: cmnVS R5, R2, RRX 
l7752: ldr R8, l7754
l7753: b l7755
l7754: .word 1048496
l7755: swp R4, R5, [R8]
l7756: strB R2, [sp, #+11]
l7757: mov R12, #35
l7758: strB R3, [sp, -R12]
l7759: strGTB R3, [sp, #-3]
l7760: subMIs R1, R14, R14, ASR R2
l7761: orr R6, R11, #66584576
l7762: mov R3, #18
l7763: strLTB R10, [sp, -R3]
l7764: ldrNEsh R9, [sp, #-6]
l7765: adds R0, R7, R15, LSR #23
l7766: bVC l7773
l7767: add R1, R0, #188
l7768: teq R10, R10, ASR R6
l7769: bic R11, R12, #256
l7770: orrEQ R3, R0, R10, LSL #28
l7771: sbcHI R9, R10, R5, ROR R1
l7772: b l7774
l7773: b l7768
l7774: cmpCC R12, #-1073741782
l7775: ands R3, R12, R7, ASR R14
l7776: bGE l7786
l7777: subEQs R1, R12, R9, LSL #14
l7778: mvns R10, R0, ASR R5
l7779: cmnMI R1, R11, ASR #21
l7780: teqLE R5, R10, RRX 
l7781: subPL R6, R10, R6
l7782: tst R12, R4
l7783: addVS R1, R7, R10, RRX 
l7784: bics R12, R0, R0, ROR R1
l7785: andLE R2, R1, R6, ASR #26
l7786: add R11, R11, R10, ROR #27
l7787: movs R10, R6
l7788: bGT l7789
l7789: cmp R8, R9, ROR R10
l7790: mov R4, #10
l7791: ldrLSh R12, [sp, +R4]
l7792: ldrLTsb R1, [sp, #-52]
l7793: mov R4, #30
l7794: strLSh R6, [sp, -R4]
l7795: tstGE R4, R0, ROR R5
l7796: ldrHI R12, [sp, #-20]
l7797: mov R3, #38
l7798: ldrHIsh R1, [sp, -R3]
l7799: stmIA R13!, {R3, R5, R11}
l7800: mov R6, #38
l7801: ldrCCsh R2, [sp, -R6]
l7802: movs R4, #6291456
l7803: tstVS R11, #335544321
l7804: ldr R12, [sp], #+0
l7805: cmn R11, R6
l7806: mov R11, #2
l7807: strB R12, [sp, +R11]
l7808: tstMI R11, R12
l7809: cmp R5, #612
l7810: rscs R1, R1, R1, RRX 
l7811: mvns R14, R14, ROR R5
l7812: mvns R11, R4, LSL R2
l7813: sbcHI R1, R15, R15
l7814: sbc R5, R8, R14, ROR R14
l7815: mov R6, #25
l7816: ldrPLsb R7, [sp, -R6]
l7817: adcs R3, R7, R11, LSR R3
l7818: addVC R10, R5, #63963136
l7819: andMIs R9, R15, R9
l7820: teq R12, R10
l7821: stmCCDA R13, {R0, R1, R5, R7, R9, R10, R13, R14, R15}
l7822: mov R12, #4
l7823: ldrNEsh R4, [sp, +R12]
l7824: tstHI R1, R7
l7825: ldr R0, [sp], #-4
l7826: rscHI R2, R15, R2, ASR #30
l7827: strVCh R10, [sp, #-46]
l7828: sbcLS R7, R2, R4
l7829: strMIh R3, [sp, #-6]
l7830: sbcPLs R2, R0, R7, LSL #0
l7831: strB R5, [sp, #-30]
l7832: bPL l7840
l7833: add R1, R0, #127
l7834: eorCSs R4, R8, R12
l7835: orrs R10, R6, R15, ASR #25
l7836: adds R11, R4, #327680
l7837: mvnHIs R5, R9, LSL R0
l7838: cmnVS R1, #56576
l7839: b l7841
l7840: b l7834
l7841: rsbs R7, R11, R8, ASR #29
l7842: b l7850
l7843: teqEQ R4, R3
l7844: mvnVC R9, #28573696
l7845: rsbLSs R14, R11, R7
l7846: subs R4, R14, R9
l7847: tstGT R6, #35651584
l7848: eor R0, R3, R11, RRX 
l7849: eorNE R7, R0, R15, RRX 
l7850: teqCS R4, #14680064
l7851: strLSh R1, [sp, #-10]
l7852: eorEQ R7, R0, R14, ROR #11
l7853: tst R10, R6
l7854: ldr R11, l7856
l7855: b l7857
l7856: .word 1048528
l7857: swpb R5, R14, [R11]
l7858: rscVC R12, R14, #606208
l7859: eor R0, R3, R11, RRX 
l7860: ldrsb R4, [sp, #-26]
l7861: bLS l7869
l7862: sub R12, R3, #-536870908
l7863: clz R8, R12
l7864: rsb R0, R5, R6, LSR #14
l7865: eorLE R1, R4, R9, ROR #14
l7866: movLEs R0, R1
l7867: subs R0, R12, R4
l7868: tstVC R0, R9, RRX 
l7869: subs R7, R14, R2, LSL #21
l7870: ldrsb R4, [sp, #-2]
l7871: eorCC R7, R5, R11
l7872: movEQ R11, R9
l7873: ldmDB R13!, {R0, R1, R4, R8, R9, R11, R14}
l7874: clzLT R14, R3
l7875: orr R5, R10, #-520093696
l7876: mvnVSs R11, R12
l7877: mov R4, #14
l7878: strLEh R2, [sp, +R4]
l7879: andCS R9, R5, R15, ASR #0
l7880: ldrLTh R11, [sp, #+18]
l7881: mov R8, #6
l7882: ldrsh R7, [sp, +R8]
l7883: ldrh R9, [sp, #+16]
l7884: rscs R5, R2, R5, RRX 
l7885: subLT R11, R5, #-536870911
l7886: mov R0, #42
l7887: ldrGTsh R14, [sp, +R0]
l7888: addPL R10, R11, R11
l7889: andVC R12, R8, R2
l7890: clzLT R6, R5
l7891: ldmIA R13, {R0, R2, R3, R4, R5, R6, R7, R11, R12, R14}
l7892: add R9, R7, R2
l7893: b l7902
l7894: add R1, R0, #13
l7895: adcs R10, R6, R12
l7896: subs R3, R12, R4
l7897: bics R8, R7, R10, ASR #16
l7898: cmnLS R7, R11, RRX 
l7899: cmn R9, #966656
l7900: and R11, R11, #12517376
l7901: b l7903
l7902: b l7895
l7903: subMIs R8, R11, R9
l7904: subLE R7, R12, R0
l7905: mvns R9, R8, ASR #14
l7906: ldrh R12, [sp, #+16]
l7907: cmnEQ R8, R12
l7908: and R8, R8, R12, LSL #25
l7909: ldmDB R13!, {R1, R9, R10}
l7910: subHI R3, R10, #3152
l7911: movs R8, #6080
l7912: ldr R3, [sp, #+48]!
l7913: mov R10, R4
l7914: ldmIB R13!, {R14}
l7915: str R3, [sp, #-12]
l7916: eors R14, R15, #12058624
l7917: ands R2, R5, #11141120
l7918: cmn R2, R0
l7919: rsbLT R12, R0, R1
l7920: stmDB R13!, {R1, R8, R9}
l7921: sbcVC R5, R11, R5, ROR #26
l7922: mov R8, #20
l7923: ldrGEsh R2, [sp, -R8]
l7924: ldrh R10, [sp, #-60]
l7925: bics R7, R4, R5, ROR R6
l7926: mov R3, #44
l7927: strVCB R11, [sp, -R3]
l7928: ldrHIB R11, [sp, #-23]
l7929: addMIs R6, R7, R5, LSL R1
l7930: mov R14, #58
l7931: ldrPLsb R2, [sp, -R14]
l7932: add R0, R6, #-1073741776
l7933: str R6, [sp], #-4
l7934: cmnMI R7, #176128
l7935: ldr R4, l7937
l7936: b l7938
l7937: .word 1048528
l7938: swp R2, R3, [R4]
l7939: rsb R11, R11, #1879048204
l7940: mov R3, #34
l7941: strh R10, [sp, -R3]
l7942: adcs R3, R3, R8, ROR #16
l7943: ldrCCsb R4, [sp, #+17]
l7944: mov R2, R4, RRX 
l7945: mov R7, #12
l7946: strh R7, [sp, +R7]
l7947: teqVC R14, R7
l7948: bGT l7953
l7949: add R1, R0, #251
l7950: teqLT R6, R10, ROR R3
l7951: rsc R9, R6, #369098752
l7952: b l7954
l7953: b l7950
l7954: mov R0, #4
l7955: ldrEQh R14, [sp, -R0]
l7956: teqVC R1, R1, LSR #22
l7957: subs R4, R12, R3, ASR R3
l7958: adcs R6, R9, #2112
l7959: mov R6, #19
l7960: ldrsb R7, [sp, -R6]
l7961: mov R9, #5
l7962: ldrsb R12, [sp, +R9]
l7963: andLE R14, R11, R15
l7964: ldr R3, l7966
l7965: b l7967
l7966: .word 1048532
l7967: swp R2, R10, [R3]
l7968: adcs R3, R2, R3, ROR #12
l7969: clz R0, R9
l7970: andCCs R0, R11, #0
l7971: cmpVC R1, #-2147483645
l7972: andCC R2, R0, R7, LSL R14
l7973: ldr R7, l7975
l7974: b l7976
l7975: .word 1048496
l7976: swpHIb R14, R2, [R7]
l7977: ldrLTh R7, [sp, #-34]
l7978: ldr R12, l7980
l7979: b l7981
l7980: .word 1048520
l7981: swpCSb R7, R0, [R12]
l7982: str R8, [sp, #-36]!
l7983: mov R1, R4
l7984: strLEB R9, [sp, #+18]
l7985: mov R7, #10
l7986: ldrsh R6, [sp, -R7]
l7987: ldr R1, [sp, #+20]
l7988: tstGT R2, #-1342177280
l7989: mvnNEs R8, R7, ROR #24
l7990: orrs R2, R7, R11, ROR R14
l7991: ldr R7, l7993
l7992: b l7994
l7993: .word 1048516
l7994: swpVC R3, R2, [R7]
l7995: eors R11, R0, R0
l7996: bPL l8002
l7997: adcVC R0, R11, R14
l7998: mvns R7, R7, ROR #23
l7999: bicCS R7, R10, R4
l8000: subHI R5, R11, R0, LSR R0
l8001: and R11, R12, #3312
l8002: mvnEQ R8, #2097152
l8003: ldrsb R9, [sp, #+12]
l8004: tstGT R3, R6
l8005: rsc R2, R11, R15
l8006: tst R14, R1
l8007: subs R9, R14, #55836672
l8008: str R1, [sp, #+48]!
l8009: ldrEQB R5, [sp, #-44]
l8010: ldr R8, l8012
l8011: b l8013
l8012: .word 1048484
l8013: swpGEb R6, R7, [R8]
l8014: ldr R9, l8016
l8015: b l8017
l8016: .word 1048544
l8017: swpb R0, R6, [R9]
l8018: adds R6, R14, #84992
l8019: and R2, R12, R7, LSL #23
l8020: mov R3, #50
l8021: ldrB R7, [sp, -R3]
l8022: subHIs R10, R10, R2, ROR R11
l8023: subEQ R10, R3, R1, ASR #21
l8024: mov R1, #56
l8025: strh R4, [sp, -R1]
l8026: mvn R1, #3932160
l8027: adc R14, R14, R0, ROR #29
l8028: sbcs R6, R0, #1572864
l8029: ldrCSh R3, [sp, #+6]
l8030: sbcEQ R3, R15, R3
l8031: addMI R11, R3, R9, ASR #9
l8032: cmn R5, R9, LSL #0
l8033: ldr R11, [sp, #-12]!
l8034: cmnPL R10, #469762049
l8035: rsbVSs R2, R14, R4, ASR #7
l8036: subGEs R10, R11, #222
l8037: mvnVSs R0, #5
l8038: rsb R14, R0, R5, RRX 
l8039: str R12, [sp, #-8]!
l8040: mov R12, #24
l8041: ldrEQsh R7, [sp, -R12]
l8042: strB R14, [sp, #+9]
l8043: bic R0, R2, R4, ASR R11
l8044: ldrsh R3, [sp, #-32]
l8045: strEQ R10, [sp, #-24]
l8046: rscPL R14, R1, R2, LSL #9
l8047: tstPL R11, R6, LSL #11
l8048: tstVC R14, #-805306368
l8049: movVCs R6, #2899968
l8050: rsbLTs R14, R14, #14784
l8051: mov R14, #12
l8052: ldrVCh R14, [sp, -R14]
l8053: tst R4, R2, RRX 
l8054: rsbLSs R0, R14, R9
l8055: tstVS R1, R12, LSL R3
l8056: ldr R12, l8058
l8057: b l8059
l8058: .word 1048508
l8059: swpMI R10, R7, [R12]
l8060: ldrLTh R0, [sp, #-4]
l8061: mov R11, #25
l8062: ldrsb R1, [sp, +R11]
l8063: rscCCs R7, R5, #1207959552
l8064: mov R1, #0
l8065: str R14, [sp], +R1
l8066: tst R12, R1
l8067: mov R14, #18
l8068: strMIB R3, [sp, +R14]
l8069: orrLE R2, R12, R11, LSL R6
l8070: ldr R14, l8072
l8071: b l8073
l8072: .word 1048536
l8073: swp R0, R9, [R14]
l8074: mvnVC R2, R14
l8075: mov R4, #20
l8076: str R12, [sp, +R4]!
l8077: ldr R7, l8079
l8078: b l8080
l8079: .word 1048528
l8080: swp R1, R5, [R7]
l8081: ldmEQDB R13, {R0, R2, R6, R7, R8, R10, R12, R14}
l8082: rsb R12, R4, R8, ASR R10
l8083: ldrGEB R14, [sp, #-18]
l8084: subEQs R6, R10, R7, ROR R7
l8085: rscMIs R11, R8, R9
l8086: rsbEQs R7, R1, R9
l8087: mov R9, #14
l8088: ldrVCsh R3, [sp, -R9]
l8089: andGTs R11, R4, R2, LSR #11
l8090: ldrsb R8, [sp, #-18]
l8091: strCCh R5, [sp, #-36]
l8092: mvnCCs R5, R9, RRX 
l8093: bic R5, R7, R11
l8094: addEQ R9, R0, R15
l8095: clzPL R4, R2
l8096: sbc R1, R2, R14, LSR #19
l8097: orrs R9, R4, R14, LSR #26
l8098: sub R2, R15, R6, RRX 
l8099: movLSs R0, #12288
l8100: rscCCs R6, R6, #9175040
l8101: strB R2, [sp, #+4]
l8102: andLEs R9, R12, R6
l8103: ldr R9, l8105
l8104: b l8106
l8105: .word 1048508
l8106: swpGE R3, R14, [R9]
l8107: stmDB R13!, {R13, R14, R15}
l8108: nop
l8109: stmDB R13!, {R0, R4, R5, R7, R11, R12, R15}
l8110: sbc R9, R9, #256
l8111: mov R6, #36
l8112: strh R3, [sp, +R6]
l8113: ldrsh R11, [sp, #+20]
l8114: str R5, [sp], #-12
l8115: subGTs R11, R3, R2
l8116: mov R7, #40
l8117: ldrNEsb R7, [sp, +R7]
l8118: andGE R2, R10, R12
l8119: ldr R7, l8121
l8120: b l8122
l8121: .word 1048520
l8122: swpb R4, R8, [R7]
l8123: cmnGE R11, R12, ASR #30
l8124: cmnPL R14, R14, ROR R9
l8125: tstHI R2, R1, RRX 
l8126: subs R0, R0, R8, ASR R12
l8127: ldrsb R5, [sp, #+54]
l8128: subVCs R4, R12, #45613056
l8129: strh R7, [sp, #+24]
l8130: mov R14, #12
l8131: strCCB R4, [sp, +R14]
l8132: rsc R8, R2, R6, LSR R5
l8133: clzCC R1, R9
l8134: ldrsb R11, [sp, #+1]
l8135: ldr R8, l8137
l8136: b l8138
l8137: .word 1048504
l8138: swpPLb R5, R5, [R8]
l8139: rsbVS R5, R6, R15
l8140: mov R9, #40
l8141: strEQh R11, [sp, +R9]
l8142: andVS R7, R15, R5, LSR #8
l8143: cmn R1, R3
l8144: rscs R5, R4, R5, ROR R14
l8145: mov R12, #8
l8146: ldr R11, [sp], +R12
l8147: strB R11, [sp, #+49]
l8148: mov R9, #22
l8149: ldrLTh R8, [sp, -R9]
l8150: bics R10, R14, R6, ROR #23
l8151: ands R2, R4, R1
l8152: b l8156
l8153: mvnCSs R11, #-2147483586
l8154: cmp R0, R12, RRX 
l8155: andVSs R4, R10, R12, ASR #30
l8156: rsb R12, R4, R9
l8157: addEQ R9, R5, #1638400
l8158: orrCC R6, R7, R2
l8159: clz R14, R6
l8160: ldr R9, l8162
l8161: b l8163
l8162: .word 1048488
l8163: swpVSb R3, R10, [R9]
l8164: mov R9, R14, ASR R3
l8165: rsbHIs R9, R12, R15, RRX 
l8166: movVSs R12, R9, LSR R11
l8167: mov R6, #28
l8168: str R2, [sp], +R6
l8169: tst R5, R4, RRX 
l8170: movCS R1, R14, ROR #13
l8171: sbcVC R7, R9, R6, LSR #19
l8172: orr R8, R0, #28
l8173: orrCS R11, R9, R7
l8174: orrs R1, R12, R7, LSL R0
l8175: adds R3, R15, #9437184
l8176: ldrCCsb R3, [sp, #-47]
l8177: b l8185
l8178: add R1, R0, #156
l8179: mvnMIs R6, R15
l8180: sbcCCs R14, R8, R1, ROR R8
l8181: cmpNE R9, #116
l8182: sub R12, R2, R15
l8183: eorNE R12, R8, #1966080
l8184: b l8186
l8185: b l8179
l8186: subLSs R10, R10, R6, ROR R1
l8187: mvns R11, R2, LSR R4
l8188: sub R5, R14, #71680
l8189: mov R3, #16
l8190: strCCB R1, [sp, +R3]
l8191: mov R9, #23
l8192: ldrPLB R12, [sp, +R9]
l8193: rsbVCs R10, R9, R6
l8194: adcs R9, R14, R15
l8195: sbcLEs R9, R15, #33792
l8196: ands R10, R15, R2, LSL #25
l8197: ldrMIh R10, [sp, #-22]
l8198: cmpMI R5, R1, ASR R3
l8199: bicGT R4, R12, R1
l8200: mov R1, #24
l8201: strLE R2, [sp, -R1]
l8202: add R5, R11, R10, LSR R12
l8203: cmn R14, R3
l8204: rsbEQ R4, R11, #32243712
l8205: bics R2, R3, #239075328
l8206: strGT R4, [sp, #+16]
l8207: mov R5, #18
l8208: ldrGTB R1, [sp, +R5]
l8209: bics R8, R11, R0
l8210: teq R5, #26880
l8211: teqGT R14, #784334848
l8212: mvn R1, R4
l8213: cmpEQ R2, R15, ASR #12
l8214: movs R3, #13184
l8215: bicMIs R6, R0, R14
l8216: subLTs R10, R3, R7, LSR #1
l8217: rscs R4, R2, R7, RRX 
l8218: stmIB R13!, {R6, R7}
l8219: and R4, R10, #40960
l8220: tstEQ R8, R14
l8221: mov R8, #28
l8222: strh R1, [sp, -R8]
l8223: rscVSs R10, R9, R12
l8224: strNEB R1, [sp, #+15]
l8225: teqGT R10, #32243712
l8226: and R2, R10, R5, LSR R4
l8227: adds R3, R2, R11, LSR #5
l8228: ldrGEh R14, [sp, #-16]
l8229: sbc R5, R14, R14, LSR #7
l8230: eors R14, R1, R4, LSL #26
l8231: rsbs R9, R8, #16449536
l8232: mov R14, #0
l8233: strMIh R8, [sp, +R14]
l8234: strNEB R2, [sp, #-17]
l8235: sbcLSs R14, R14, R7
l8236: ldr R10, l8238
l8237: b l8239
l8238: .word 1048480
l8239: swpVCb R7, R0, [R10]
l8240: mov R12, #54
l8241: ldrVSB R5, [sp, -R12]
l8242: eor R1, R5, #2544
l8243: ldr R6, l8245
l8244: b l8246
l8245: .word 1048528
l8246: swpb R9, R0, [R6]
l8247: adc R5, R10, #62720
l8248: clzCC R4, R8
l8249: mov R11, #4
l8250: ldr R7, [sp, +R11]!
l8251: mov R0, #58
l8252: strLEh R8, [sp, -R0]
l8253: addVC R11, R8, R10
l8254: teqLS R9, R8, LSR R0
l8255: bicGT R12, R1, #335544323
l8256: rsc R11, R4, R5, LSR R0
l8257: teq R3, R3, RRX 
l8258: orrMIs R2, R10, R0, RRX 
l8259: orrLSs R9, R3, R0, LSR R3
l8260: subs R14, R9, R5, LSL R5
l8261: mov R9, #55
l8262: ldrB R2, [sp, -R9]
l8263: mvnPLs R9, #265289728
l8264: ldrh R11, [sp, #-28]
l8265: teqLT R11, R9, RRX 
l8266: cmpGT R3, #-771751936
l8267: adc R2, R6, #7274496
l8268: mvn R7, R14
l8269: rscNEs R3, R9, R2
l8270: movMI R9, R12, ASR #9
l8271: str R11, [sp, #+8]!
l8272: mov R1, #60
l8273: str R9, [sp, -R1]!
l8274: teqGT R7, R2, ROR #29
l8275: rscHI R6, R12, R4, LSR R7
l8276: mvn R0, #41943040
l8277: add R7, R11, #478150656
l8278: andLSs R5, R14, R2, ASR #5
l8279: mov R11, #12
l8280: str R15, [sp, +R11]!
l8281: subGE R6, R9, #892928
l8282: bicLS R12, R14, R1, ROR R3
l8283: mvnPLs R7, R3, RRX 
l8284: andNE R7, R9, R15, RRX 
l8285: subVC R2, R7, R14
l8286: cmpCS R3, R2, LSR #23
l8287: mov R2, #40
l8288: ldr R4, [sp], +R2
l8289: clz R0, R5
l8290: cmp R8, R2, RRX 
l8291: stmIB R13!, {R8, R15}
l8292: adcLE R10, R2, R14, ASR R7
l8293: cmpCC R15, #79872
l8294: bicEQ R4, R8, R10
l8295: strVS R4, [sp, #-56]
l8296: mov R10, #59
l8297: ldrB R7, [sp, -R10]
l8298: teqPL R14, #180224
l8299: ldrsh R11, [sp, #-54]
l8300: tst R1, R6, ASR #25
l8301: rsbCC R11, R15, #1792
l8302: strh R4, [sp, #-38]
l8303: tstLS R6, R5, ROR #18
l8304: mov R5, #60
l8305: ldrVCh R1, [sp, -R5]
l8306: cmpLE R14, R8, ASR R11
l8307: orrs R7, R6, R14, ROR R10
l8308: mvnGTs R8, R2, ASR #15
l8309: strh R3, [sp, #-58]
l8310: nop
l8311: movEQ R5, R3, LSL R11
l8312: mov R1, #26
l8313: ldrVSB R14, [sp, -R1]
l8314: ldrHIB R11, [sp, #-68]
l8315: ldr R4, l8317
l8316: b l8318
l8317: .word 1048496
l8318: swpNE R2, R12, [R4]
l8319: andEQs R1, R5, R12, ASR #28
l8320: ldrPLsh R7, [sp, #-12]
l8321: ldrHIB R11, [sp, #-63]
l8322: sbc R11, R11, R10, RRX 
l8323: rscMI R7, R0, #242688
l8324: strB R4, [sp, #-6]
l8325: subVS R5, R2, #5888
l8326: tst R14, R6, LSL #0
l8327: nop
l8328: movLE R3, R6, RRX 
l8329: subVSs R12, R9, R1
l8330: nop
l8331: clzGE R5, R1
l8332: addVSs R7, R7, R14
l8333: nop
l8334: bNE l8338
l8335: add R1, R0, #75
l8336: rscCCs R10, R10, R12, LSL R14
l8337: b l8339
l8338: b l8336
l8339: ldrB R11, [sp, #-52]
l8340: ldrMIsh R6, [sp, #-20]
l8341: mvnVS R14, R14
l8342: ldr R3, l8344
l8343: b l8345
l8344: .word 1048516
l8345: swpb R8, R0, [R3]
l8346: str R1, [sp, #-4]!
l8347: mov R3, #20
l8348: ldr R0, [sp], -R3
l8349: sbcLT R7, R12, R15, RRX 
l8350: stmDA R13!, {R0, R1, R4, R5, R6, R9, R10, R14, R15}
l8351: strh R4, [sp, #+50]
l8352: subs R6, R11, R15
l8353: rscs R9, R3, #1015808
l8354: cmpGE R4, R5, ROR R0
l8355: ldr R4, l8357
l8356: b l8358
l8357: .word 1048532
l8358: swpHIb R6, R5, [R4]
l8359: bLT l8367
l8360: rscCC R5, R12, R15
l8361: cmnGE R0, R10, RRX 
l8362: tst R14, R6
l8363: movVC R14, R15
l8364: eorGT R9, R6, R8, LSR R4
l8365: cmnNE R4, R9, LSR #30
l8366: cmn R0, R6, ASR #20
l8367: bic R7, R6, R2, LSR R9
l8368: clzNE R12, R2
l8369: nop
l8370: addVS R7, R12, R3, ASR R7
l8371: movVC R1, R3
l8372: rsbs R1, R0, R5, RRX 
l8373: nop
l8374: sbcLSs R9, R6, R0, ASR R14
l8375: ldr R0, l8377
l8376: b l8378
l8377: .word 1048488
l8378: swpVSb R3, R4, [R0]
l8379: teqEQ R8, R8
l8380: rsb R10, R3, R0, LSR R9
l8381: mov R11, #58
l8382: strB R6, [sp, +R11]
l8383: rscCSs R0, R9, R10, ASR R8
l8384: tstLS R9, #855638016
l8385: addGT R14, R1, R9, LSR R9
l8386: subLTs R0, R0, R14
l8387: strMIh R8, [sp, #+40]
l8388: addLT R4, R2, #66584576
l8389: cmnCS R10, R11, ROR R9
l8390: ldr R4, [sp], #-8
l8391: add R10, R5, R15
l8392: subs R2, R11, #402653187
l8393: andEQ R2, R7, R12, ASR R0
l8394: adds R6, R8, R15, RRX 
l8395: subCCs R1, R2, R7, ROR #21
l8396: andGTs R14, R2, R1
l8397: teqCS R1, R4, ASR R14
l8398: bPL l8406
l8399: add R1, R0, #136
l8400: tstMI R3, R15, ROR #25
l8401: bics R0, R2, #5242880
l8402: clzCS R2, R5
l8403: orrGTs R10, R4, R1, LSR R0
l8404: eor R11, R8, R1
l8405: b l8407
l8406: b l8400
l8407: adcs R5, R6, R7
l8408: subEQ R5, R10, R12
l8409: adcs R10, R15, #102760448
l8410: subs R2, R11, R14, LSL R7
l8411: cmpHI R1, R10
l8412: ldmIB R13, {R1, R2, R3, R4, R7, R8, R10, R11, R12, R14}
l8413: bic R6, R2, #3136
l8414: teqVS R11, R10, RRX 
l8415: ldrVCB R12, [sp, #+18]
l8416: clz R14, R14
l8417: tstHI R14, R4, ROR R3
l8418: subEQs R8, R10, R2, ASR #23
l8419: ldrGEh R12, [sp, #+62]
l8420: ldrLE R11, [sp, #+36]
l8421: ldrCSsb R3, [sp, #+39]
l8422: mov R5, #42
l8423: ldrGEsh R4, [sp, +R5]
l8424: mov R12, #9
l8425: ldrsb R8, [sp, +R12]
l8426: sbcGE R9, R3, R9, ROR #21
l8427: clz R5, R9
l8428: cmnCS R1, R2
l8429: str R1, [sp, #+4]
l8430: adcVCs R4, R12, R14, LSL R10
l8431: b l8435
l8432: add R1, R0, #147
l8433: orrGT R10, R1, R9, RRX 
l8434: b l8436
l8435: b l8433
l8436: eor R12, R5, R9
l8437: rsbGT R2, R3, #9984
l8438: teq R9, R14, LSR #6
l8439: ldrCSsh R8, [sp, #-4]
l8440: ldmIB R13!, {R7, R14}
l8441: mvnPL R2, R7
l8442: ldrNEsh R6, [sp, #+22]
l8443: mvnGT R14, R14
l8444: teqPL R9, R5, LSL R1
l8445: adds R11, R0, R3, ROR #10
l8446: ldr R0, [sp], #+20
l8447: cmpHI R12, #805306376
l8448: mov R14, #26
l8449: ldrMIsh R2, [sp, +R14]
l8450: mvnLE R12, R5, LSL R3
l8451: stmLTDB R13, {R0, R3, R4, R5, R11, R14}
l8452: cmpMI R1, R1, LSR R12
l8453: mov R0, #25
l8454: ldrNEB R5, [sp, +R0]
l8455: ldrVSsb R1, [sp, #+17]
l8456: b l8463
l8457: add R1, R0, #108
l8458: rsbVSs R7, R12, R9, RRX 
l8459: adc R7, R5, #992
l8460: subEQ R0, R3, #1654784
l8461: andMIs R5, R7, R0
l8462: b l8464
l8463: b l8458
l8464: andNEs R14, R5, R4, ROR #11
l8465: adcEQ R11, R12, R10, LSL R14
l8466: ldr R5, [sp, #+20]!
l8467: mov R2, #6
l8468: ldrsb R2, [sp, -R2]
l8469: ldmDA R13!, {R7, R10, R14}
l8470: subVC R5, R15, R8, LSR #28
l8471: rscs R14, R2, #28928
l8472: subs R10, R6, R9
l8473: mvn R14, #110592
l8474: mvn R9, #15168
l8475: ldrMIsb R2, [sp, #+8]
l8476: bVS l8485
l8477: subEQ R0, R5, R14, ASR #2
l8478: clz R3, R6
l8479: tstCS R12, R15
l8480: subVS R10, R10, R1, ASR #0
l8481: clzGE R9, R5
l8482: andLS R6, R14, R1, ASR R8
l8483: subLE R9, R14, #121
l8484: clz R8, R8
l8485: adc R5, R7, R8, ROR #10
l8486: adc R5, R8, R11, LSR #15
l8487: cmnCC R1, R0
l8488: clz R11, R5
l8489: movPL R1, #1073741855
l8490: rsbNEs R11, R9, R2, ASR #3
l8491: movs R0, R6, LSR #24
l8492: rsbLTs R10, R14, R5
l8493: ldrsh R14, [sp, #-8]
l8494: bLT l8498
l8495: add R1, R0, #41
l8496: adc R7, R8, R14, ROR R11
l8497: b l8499
l8498: b l8496
l8499: subCC R4, R5, #1760
l8500: rsbEQ R4, R2, R14, LSR #12
l8501: adcs R5, R3, #13440
l8502: b l8506
l8503: add R1, R0, #232
l8504: adcEQ R9, R3, #28
l8505: b l8507
l8506: b l8504
l8507: eorLSs R14, R7, R11
l8508: sbcGE R10, R1, R7
l8509: cmpVS R7, #1275068418
l8510: teq R10, #37486592
l8511: and R2, R3, R1, ROR R11
l8512: ldr R11, l8514
l8513: b l8515
l8514: .word 1048516
l8515: swpEQb R2, R0, [R11]
l8516: bLS l8526
l8517: orrNE R8, R15, R5, RRX 
l8518: addPL R1, R9, R15, RRX 
l8519: bicGTs R14, R12, R1, RRX 
l8520: rscPL R6, R5, R3
l8521: cmpLE R4, R2, RRX 
l8522: rsbVC R12, R0, R3, LSR R5
l8523: sbc R14, R11, R5, LSR #28
l8524: sub R9, R2, R14, ASR #12
l8525: bicPL R10, R10, R7, LSL #16
l8526: rsc R8, R9, #436207616
l8527: ldr R10, l8529
l8528: b l8530
l8529: .word 1048544
l8530: swpb R11, R14, [R10]
l8531: subVS R0, R10, #81788928
l8532: ldr R4, l8534
l8533: b l8535
l8534: .word 1048520
l8535: swpEQb R1, R14, [R4]
l8536: ldr R6, [sp], #-36
l8537: mov R4, #70
l8538: ldrsh R10, [sp, +R4]
l8539: orrGEs R11, R5, R4, LSR R0
l8540: ldmIB R13, {R1, R2, R3, R4, R5, R6, R7, R10, R11, R12}
l8541: adcNE R11, R1, R14
l8542: adcs R4, R1, R1, RRX 
l8543: bics R1, R8, R8
l8544: cmnGT R3, R5
l8545: bCC l8549
l8546: teqEQ R15, R4
l8547: orrs R9, R14, #2228224
l8548: rsbGTs R2, R8, R8, ROR #4
l8549: rsbCS R14, R10, R5, LSR R9
l8550: ldr R4, l8552
l8551: b l8553
l8552: .word 1048544
l8553: swpHI R14, R11, [R4]
l8554: movs R10, R11
l8555: mov R10, #60
l8556: str R7, [sp], +R10
l8557: sub R14, R7, R3, LSL R10
l8558: rscVCs R1, R4, R1, LSR R14
l8559: cmpNE R2, R10, LSL #11
l8560: adcGEs R8, R5, R5, RRX 
l8561: teq R2, #847872
l8562: clz R14, R2
l8563: addLEs R8, R6, R12, LSL R2
l8564: bics R14, R10, R4
l8565: ldrMIsb R2, [sp, #-62]
l8566: add R14, R15, #118489088
l8567: bVC l8573
l8568: add R1, R0, #21
l8569: sbc R7, R8, R2, ASR #30
l8570: subPL R1, R4, R9
l8571: tstNE R0, R9, ASR R12
l8572: b l8574
l8573: b l8569
l8574: clz R5, R2
l8575: eor R2, R5, R9, LSL #12
l8576: clzLS R14, R14
l8577: mov R7, #2
l8578: ldrCSB R1, [sp, -R7]
l8579: orrs R5, R11, R6, RRX 
l8580: mov R2, #2
l8581: strh R9, [sp, -R2]
l8582: b l8586
l8583: add R1, R0, #98
l8584: rscMI R5, R0, R6, ROR R9
l8585: b l8587
l8586: b l8584
l8587: bLS l8597
l8588: teq R11, R2, LSR #16
l8589: bics R5, R9, R8
l8590: teqPL R11, #1845493760
l8591: subPL R11, R4, #37120
l8592: orrGT R9, R6, R12, RRX 
l8593: clzGT R7, R9
l8594: cmnLE R4, R2, ROR R8
l8595: adc R0, R5, R12
l8596: movLTs R1, R14, ASR R6
l8597: subGE R14, R4, R9, RRX 
l8598: mov R10, #46
l8599: strh R7, [sp, -R10]
l8600: rsbVSs R5, R5, R6, LSL R1
l8601: cmpCS R3, #36864
l8602: b l8611
l8603: add R1, R0, #47
l8604: andLEs R5, R11, R5
l8605: adcCC R11, R8, R6, ASR R2
l8606: sbcPLs R11, R0, #1342177294
l8607: adcCC R10, R1, R9, ROR #1
l8608: bicLS R9, R9, #198180864
l8609: adc R7, R14, R15, RRX 
l8610: b l8612
l8611: b l8604
l8612: ldmDA R13!, {R1, R3, R4, R6, R7, R8, R9, R10, R11}
l8613: ldrsh R8, [sp, #+28]
l8614: b l8619
l8615: add R1, R0, #81
l8616: subNEs R12, R8, R9, LSL #29
l8617: mvn R9, R9, LSL R3
l8618: b l8620
l8619: b l8616
l8620: mov R8, #4
l8621: str R12, [sp, -R8]!
l8622: mov R7, #32
l8623: ldrHIB R1, [sp, +R7]
l8624: adds R8, R4, #4325376
l8625: eorCS R0, R0, R3, ASR R1
l8626: adcs R4, R14, #15204352
l8627: andHI R5, R11, #752
l8628: sbc R1, R7, R7, ROR R10
l8629: mov R8, #34
l8630: strh R6, [sp, +R8]
l8631: stmIA R13!, {R13, R14}
l8632: ldrVSB R9, [sp, #-13]
l8633: rsbLSs R8, R4, R6
l8634: mov R7, #20
l8635: ldrsh R10, [sp, +R7]
l8636: mov R1, #30
l8637: strh R5, [sp, +R1]
l8638: mov R10, #8
l8639: strB R11, [sp, +R10]
l8640: stmDA R13!, {R9}
l8641: mov R3, #39
l8642: strB R3, [sp, +R3]
l8643: movGTs R5, R0, ROR #9
l8644: subLS R8, R7, R4, LSR R12
l8645: subs R4, R2, R9, LSL #22
l8646: ldrh R3, [sp, #-14]
l8647: rscs R3, R9, R6, LSL R14
l8648: ldr R4, [sp, #-16]!
l8649: clz R6, R5
l8650: mov R10, #47
l8651: strHIB R7, [sp, +R10]
l8652: tstHI R1, R1
l8653: tstNE R1, R0
l8654: movLEs R1, R10
l8655: sbcLTs R5, R10, R5, LSL R11
l8656: orrVSs R7, R11, R6
l8657: mov R8, #28
l8658: ldr R12, [sp], +R8
l8659: ldrGEB R8, [sp, #+33]
l8660: adcLE R6, R8, R12
l8661: sbcPL R14, R10, R12
l8662: subMI R9, R6, R3, LSR R3
l8663: mov R2, #12
l8664: ldrLS R2, [sp, +R2]
l8665: eor R5, R1, R2
l8666: subVCs R1, R8, R8
l8667: ldrLSh R14, [sp, #-22]
l8668: mov R4, #14
l8669: ldrB R4, [sp, -R4]
l8670: eorHI R6, R2, R3, RRX 
l8671: clz R7, R2
l8672: eor R4, R7, R6, ROR R4
l8673: mov R4, #16
l8674: ldr R9, [sp], -R4
l8675: clzLT R9, R14
l8676: bics R3, R1, R7, ROR #15
l8677: b l8683
l8678: add R1, R0, #219
l8679: clz R14, R1
l8680: rscs R10, R0, #10354688
l8681: adds R0, R1, R11, ASR R11
l8682: b l8684
l8683: b l8679
l8684: rsbVC R6, R8, R5, ASR #20
l8685: bLS l8689
l8686: rsbMI R4, R5, R0
l8687: mvns R5, R14, RRX 
l8688: bicPLs R1, R2, #57
l8689: orrCC R4, R6, R12, RRX 
l8690: b l8692
l8691: adcNE R8, R10, #242221056
l8692: add R3, R8, R0, RRX 
l8693: ands R4, R5, #146432
l8694: b l8699
l8695: add R1, R0, #8
l8696: teq R2, #1073741835
l8697: teqHI R11, R3, LSR #29
l8698: b l8700
l8699: b l8696
l8700: orrs R6, R7, R14
l8701: rscGEs R6, R1, R10, ROR #9
l8702: strCSB R8, [sp, #+51]
l8703: eor R4, R1, R12, LSR R0
l8704: rscLT R1, R7, R15
l8705: mov R8, #17
l8706: strLEB R7, [sp, +R8]
l8707: b l8717
l8708: tstCC R0, R5, RRX 
l8709: rsbLTs R14, R0, R14
l8710: eors R12, R5, R7, RRX 
l8711: adcNE R1, R10, R3, ROR R3
l8712: sbcLS R14, R4, R7, LSR R1
l8713: add R2, R14, R9, RRX 
l8714: adc R11, R10, R10, LSL R14
l8715: clzVS R2, R7
l8716: teqLE R10, R1, RRX 
l8717: cmnVS R7, R0
l8718: teqLS R10, R11, ASR #25
l8719: strMI R14, [sp, #+40]
l8720: b l8728
l8721: add R1, R0, #251
l8722: rscs R1, R5, R9
l8723: addLT R3, R7, R7, ASR R3
l8724: sub R3, R9, R8, LSL R0
l8725: rsb R1, R15, R5, ROR #10
l8726: clzNE R8, R14
l8727: b l8729
l8728: b l8722
l8729: rscCCs R2, R1, R14
l8730: mov R12, #46
l8731: strB R1, [sp, +R12]
l8732: clzVC R0, R8
l8733: mvnGT R10, R4, LSL #28
l8734: bicMIs R8, R8, #448790528
l8735: rsc R11, R7, R14, ASR R12
l8736: ldr R7, l8738
l8737: b l8739
l8738: .word 1048488
l8739: swpVSb R8, R12, [R7]
l8740: ldrLTsb R4, [sp, #+26]
l8741: rscGT R11, R5, R10, LSR R5
l8742: ldrCSB R3, [sp, #-14]
l8743: cmp R10, R11
l8744: clzPL R0, R3
l8745: bCC l8746
l8746: eors R11, R5, R10, ASR R5
l8747: clzVC R14, R11
l8748: sbcCCs R11, R9, R3, ASR #20
l8749: mov R12, #24
l8750: ldr R4, [sp], +R12
l8751: rsb R9, R12, R4, RRX 
l8752: cmnLS R12, R1, ROR R11
l8753: ldrB R6, [sp, #+22]
l8754: movLSs R10, R1, ROR #26
l8755: mov R2, #36
l8756: ldr R7, [sp, -R2]!
l8757: b l8765
l8758: bic R10, R2, R9, LSL R12
l8759: cmn R15, R1, RRX 
l8760: cmp R4, #75497472
l8761: eor R12, R11, R7, ROR R9
l8762: cmn R1, R2
l8763: tst R9, R12
l8764: eor R5, R4, R10, LSR #11
l8765: sub R6, R4, R7
l8766: rscNEs R7, R12, R8, ROR R0
l8767: bicPL R3, R8, R9, ASR R6
l8768: eorLTs R11, R7, R10
l8769: clzEQ R12, R1
l8770: orr R9, R11, R3, ROR #6
l8771: mov R10, #36
l8772: strLE R14, [sp, +R10]
l8773: ldr R6, l8775
l8774: b l8776
l8775: .word 1048492
l8776: swpVSb R8, R2, [R6]
l8777: subCC R11, R1, R9, ASR R1
l8778: teqLS R0, R0, LSL R8
l8779: str R2, [sp], #+44
l8780: mov R2, #56
l8781: ldr R5, [sp], -R2
l8782: rsbCCs R1, R9, R6, RRX 
l8783: sub R10, R2, #62128128
l8784: sub R7, R0, #752
l8785: mov R5, #20
l8786: ldrsh R0, [sp, +R5]
l8787: subCCs R5, R2, R4, ASR R0
l8788: stmLSIA R13, {R3, R6, R7, R8, R9, R14}
l8789: ldr R12, [sp, #+28]!
l8790: subPLs R4, R15, #928
l8791: ldrVSsb R9, [sp, #+24]
l8792: cmn R9, #1073741887
l8793: subVSs R0, R5, R8, LSL #29
l8794: clzCS R7, R14
l8795: tst R9, #239
l8796: orrPLs R1, R2, #15466496
l8797: bicVSs R8, R11, R14, ROR #2
l8798: orrPLs R7, R9, R1
l8799: ldr R9, l8801
l8800: b l8802
l8801: .word 1048512
l8802: swpVCb R4, R3, [R9]
l8803: eorLE R5, R11, #82
l8804: rsb R1, R12, R14, LSL #20
l8805: teqGT R3, R14, RRX 
l8806: and R11, R5, R15, RRX 
l8807: ldr R10, l8809
l8808: b l8810
l8809: .word 1048548
l8810: swp R1, R8, [R10]
l8811: mov R3, #7
l8812: ldrB R1, [sp, -R3]
l8813: adcs R0, R1, R7
l8814: strVCh R7, [sp, #-10]
l8815: movEQ R2, R5, ROR #10
l8816: and R2, R7, R15
l8817: mov R11, #10
l8818: ldrLEsh R11, [sp, -R11]
l8819: ldmDB R13, {R2}
l8820: ldr R6, l8822
l8821: b l8823
l8822: .word 1048540
l8823: swp R3, R2, [R6]
l8824: and R1, R5, R15, RRX 
l8825: orrGT R0, R14, R2
l8826: clz R4, R6
l8827: sub R0, R1, R5, LSL R14
l8828: tstEQ R15, R7, RRX 
l8829: clz R0, R5
l8830: rscEQ R5, R9, R15
l8831: mov R8, #10
l8832: ldrVSh R9, [sp, -R8]
l8833: cmp R1, R11, RRX 
l8834: mov R3, #25
l8835: ldrCCB R11, [sp, +R3]
l8836: adc R7, R5, R6, LSR R12
l8837: mov R14, #8
l8838: strLEB R4, [sp, -R14]
l8839: rsbLE R14, R14, R3, RRX 
l8840: ldrsb R6, [sp, #+18]
l8841: teq R4, R0, ROR #23
l8842: ldr R7, l8844
l8843: b l8845
l8844: .word 1048496
l8845: swpGE R2, R5, [R7]
l8846: stmLTIB R13, {R0, R2, R4, R5, R7, R9, R10, R11, R12}
l8847: bicMIs R10, R9, R11, RRX 
l8848: sub R4, R4, R10
l8849: ldr R7, l8851
l8850: b l8852
l8851: .word 1048524
l8852: swpb R0, R9, [R7]
l8853: teq R10, #147456
l8854: ldr R0, l8856
l8855: b l8857
l8856: .word 1048508
l8857: swp R4, R8, [R0]
l8858: orrVCs R12, R12, #3538944
l8859: tstNE R14, #1627389952
l8860: mvn R5, R11
l8861: ldmIB R13!, {R0, R2, R4, R5, R7, R8, R11, R12, R14}
l8862: ldrB R14, [sp, #-61]
l8863: addNEs R10, R11, R7, LSL #30
l8864: stmDA R13!, {R1, R12}
l8865: movHI R4, #376
l8866: eors R3, R10, R3, LSL R3
l8867: strVCB R8, [sp, #-22]
l8868: tstEQ R12, R10, LSL #18
l8869: clzVS R0, R8
l8870: rscs R4, R8, R0
l8871: movLTs R2, R11, ASR R8
l8872: adcVC R14, R4, R5, LSL R12
l8873: clzCS R2, R12
l8874: teq R4, R2, RRX 
l8875: nop
l8876: ldmDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12}
l8877: mvnCCs R4, R8
l8878: adc R8, R5, R10, ROR #26
l8879: ldr R6, l8881
l8880: b l8882
l8881: .word 1048544
l8882: swpHIb R5, R4, [R6]
l8883: mvnHI R9, #-1073741794
l8884: movGTs R9, R0
l8885: strLTh R1, [sp, #-34]
l8886: teqLE R8, #-922746880
l8887: ldmIA R13, {R1, R3, R7}
l8888: mvns R10, R15, LSR #13
l8889: bVC l8896
l8890: add R1, R0, #96
l8891: movLEs R7, R6
l8892: sub R14, R2, R3, RRX 
l8893: addEQs R6, R9, R10, LSR #0
l8894: subs R14, R11, R2, RRX 
l8895: b l8897
l8896: b l8891
l8897: ldr R11, l8899
l8898: b l8900
l8899: .word 1048520
l8900: swpGEb R4, R12, [R11]
l8901: andEQs R8, R7, R0, RRX 
l8902: mov R2, #2
l8903: strB R11, [sp, -R2]
l8904: ldr R12, l8906
l8905: b l8907
l8906: .word 1048500
l8907: swp R1, R4, [R12]
l8908: ldr R0, l8910
l8909: b l8911
l8910: .word 1048488
l8911: swpNEb R14, R5, [R0]
l8912: tstVC R4, #146432
l8913: sbcCSs R9, R2, #33554432
l8914: ldrh R3, [sp, #+2]
l8915: orrPLs R14, R12, #3260416
l8916: mov R9, #8
l8917: ldrsb R1, [sp, -R9]
l8918: bVC l8927
l8919: orrLE R4, R4, R3, RRX 
l8920: eorMIs R6, R7, R10, LSL R6
l8921: subHI R6, R10, R0, RRX 
l8922: movPLs R11, R4, LSR R3
l8923: subs R3, R9, R7
l8924: adcMIs R11, R10, R10, LSR #9
l8925: teqVC R4, R10, RRX 
l8926: rscNE R11, R3, #28416
l8927: sub R12, R15, R0
l8928: mov R9, #40
l8929: str R0, [sp, -R9]
l8930: rscLSs R6, R4, R10
l8931: stmIB R13!, {R13}
l8932: movCCs R4, #64768
l8933: nop
l8934: ldrMIsh R7, [sp, #+8]
l8935: rscEQ R3, R10, #260046848
l8936: subGT R5, R4, #217
l8937: teq R9, R9, ROR #26
l8938: sbcGT R3, R5, R14
l8939: teq R4, R10, LSL #27
l8940: cmn R1, R8, ASR #15
l8941: orrVSs R7, R7, R12
l8942: ldrsh R10, [sp, #-56]
l8943: clz R9, R11
l8944: strh R14, [sp, #-54]
l8945: mvnVC R3, R7, RRX 
l8946: ldrNEB R6, [sp, #-36]
l8947: mov R4, #10
l8948: ldrLTsh R4, [sp, -R4]
l8949: ldrCCh R7, [sp, #-2]
l8950: bic R12, R3, R7
l8951: str R5, [sp, #-56]!
l8952: strVSh R12, [sp, #+42]
l8953: mvnNEs R14, R8, RRX 
l8954: clz R8, R8
l8955: tstPL R14, R2, LSR #26
l8956: teq R6, R15
l8957: mvnVS R14, #2670592
l8958: ldrB R10, [sp, #-4]
l8959: bicEQs R2, R10, R12, RRX 
l8960: subMI R6, R7, R0, ROR #26
l8961: ldr R4, l8963
l8962: b l8964
l8963: .word 1048524
l8964: swpVSb R8, R12, [R4]
l8965: ldr R9, l8967
l8966: b l8968
l8967: .word 1048544
l8968: swpb R2, R1, [R9]
l8969: strGTh R0, [sp, #+46]
l8970: teq R9, R3, LSR R4
l8971: orrs R14, R15, R12
l8972: rsbs R0, R9, R7
l8973: ldmHIIA R13, {R1, R3, R4, R5, R7, R8, R10, R12, R14}
l8974: eorVC R10, R7, R7, ASR R7
l8975: bicLEs R9, R1, #1073741866
l8976: ldrHIh R3, [sp, #+28]
l8977: ldr R9, l8979
l8978: b l8980
l8979: .word 1048484
l8980: swpb R10, R7, [R9]
l8981: mov R11, #50
l8982: ldrsh R4, [sp, +R11]
l8983: cmn R4, R12, LSL #10
l8984: mov R10, #50
l8985: ldrh R0, [sp, +R10]
l8986: subLSs R8, R12, #50176
l8987: tst R0, #18874368
l8988: mvnCS R1, R14
l8989: rsbGEs R3, R15, R0
l8990: add R14, R10, R10, ROR R9
l8991: subCCs R4, R0, R15
l8992: mov R14, #64
l8993: ldrVCh R4, [sp, +R14]
l8994: adcs R12, R8, R1
l8995: movVS R6, R3
l8996: sub R5, R10, R6, LSL R0
l8997: sub R11, R12, R5, ROR #25
l8998: orrVCs R7, R14, #40448
l8999: eorGE R8, R10, R3
l9000: mov R1, #44
l9001: ldrsb R2, [sp, +R1]
l9002: clzNE R8, R12
l9003: add R10, R7, R4, LSL R9
l9004: subHI R5, R3, R8, ROR R10
l9005: mov R12, #58
l9006: strh R3, [sp, +R12]
l9007: rscHIs R0, R2, R14, ASR R7
l9008: bLS l9014
l9009: add R1, R0, #38
l9010: bic R14, R12, R12
l9011: mvnVCs R14, R6, LSL #4
l9012: addEQs R12, R8, #2624
l9013: b l9015
l9014: b l9010
l9015: mov R8, #63
l9016: ldrEQB R12, [sp, +R8]
l9017: sub R3, R0, R8, ROR #29
l9018: clzNE R4, R9
l9019: rsbGEs R14, R6, R8
l9020: add R14, R7, #-805306367
l9021: movs R12, R0, ASR #22
l9022: tst R11, R12, ROR R7
l9023: cmn R14, R6, LSL #29
l9024: b l9031
l9025: add R1, R0, #148
l9026: tstCS R3, R7
l9027: eorVC R6, R7, R3, LSR #2
l9028: andCSs R7, R15, R0
l9029: addLSs R9, R10, R8, LSR R7
l9030: b l9032
l9031: b l9026
l9032: mov R6, #28
l9033: ldr R6, [sp, +R6]!
l9034: eorGEs R12, R5, R5
l9035: mov R14, #20
l9036: ldrVCsb R3, [sp, +R14]
l9037: orrVC R8, R2, #126976
l9038: strh R5, [sp, #-14]
l9039: ldr R7, l9041
l9040: b l9042
l9041: .word 1048492
l9042: swp R3, R14, [R7]
l9043: bCS l9050
l9044: cmp R11, R1
l9045: cmn R1, R2
l9046: teq R10, R9, RRX 
l9047: cmp R9, R11, RRX 
l9048: teqNE R0, #4390912
l9049: cmn R9, R1, RRX 
l9050: orr R12, R14, R5, ASR R8
l9051: add R7, R6, R15, LSR #1
l9052: teq R1, R0, RRX 
l9053: strLTh R2, [sp, #-16]
l9054: bEQ l9062
l9055: add R1, R0, #90
l9056: tstLE R5, R1
l9057: andVC R4, R12, R7, ASR #9
l9058: ands R2, R4, R14, ROR #31
l9059: mvnPLs R0, R7
l9060: cmp R2, R9
l9061: b l9063
l9062: b l9056
l9063: subPL R1, R0, R5, ROR #3
l9064: teq R14, R2
l9065: cmn R4, R2, ROR R9
l9066: clz R9, R1
l9067: ldrCSB R2, [sp, #+31]
l9068: eorNEs R10, R15, R9, LSR #7
l9069: ldr R3, l9071
l9070: b l9072
l9071: .word 1048508
l9072: swpLT R2, R0, [R3]
l9073: strGE R14, [sp, #-4]
l9074: ldmDB R13!, {R5, R6, R7, R11, R12, R14}
l9075: ldrB R0, [sp, #+49]
l9076: cmpNE R3, R5
l9077: strB R8, [sp, #+23]
l9078: clz R8, R2
l9079: ldr R9, l9081
l9080: b l9082
l9081: .word 1048528
l9082: swpb R14, R4, [R9]
l9083: teqVC R10, R7, ASR R8
l9084: and R8, R3, R0, RRX 
l9085: adcVS R2, R6, R14, RRX 
l9086: tstPL R9, R15, RRX 
l9087: ldrsb R6, [sp, #-8]
l9088: clzLT R2, R9
l9089: strh R9, [sp, #+62]
l9090: teqEQ R2, R9, RRX 
l9091: mvnGT R1, R8
l9092: and R1, R11, #167936
l9093: orr R3, R5, #0
l9094: bicEQs R9, R4, #34048
l9095: orrLEs R6, R5, R8, LSR #25
l9096: mvn R9, R12, RRX 
l9097: nop
l9098: str R14, [sp, #+56]
l9099: strHIh R12, [sp, #+44]
l9100: cmnLS R0, R1, LSL R7
l9101: eor R5, R12, R6, ROR R3
l9102: mov R14, #27
l9103: ldrEQB R9, [sp, +R14]
l9104: mov R1, #32
l9105: ldrLEh R0, [sp, +R1]
l9106: stmIB R13!, {R13, R14, R15}
l9107: cmnGT R8, #2080374786
l9108: orrLT R7, R14, #-318767104
l9109: mov R6, #26
l9110: ldrB R4, [sp, +R6]
l9111: subEQs R9, R7, #77594624
l9112: ldr R1, l9114
l9113: b l9115
l9114: .word 1048520
l9115: swpVS R9, R8, [R1]
l9116: mov R10, #44
l9117: ldr R8, [sp, +R10]!
l9118: bVC l9128
l9119: movCS R3, R0
l9120: mvnVC R12, R3, ASR #29
l9121: add R14, R11, R3
l9122: orrLE R4, R8, #507904
l9123: mvnNE R0, R4
l9124: adc R11, R7, #592
l9125: orrLTs R8, R14, R9
l9126: and R11, R8, #524288
l9127: bicLTs R2, R10, R5, ROR #5
l9128: adc R6, R0, R10
l9129: tst R8, R9
l9130: mvns R7, R11
l9131: teqNE R1, R7
l9132: orr R8, R10, #-1879048192
l9133: tst R11, R7
l9134: orrVSs R14, R12, #-1073741816
l9135: rscEQs R12, R8, R10, LSL R6
l9136: rsbGEs R7, R0, R3, LSR R1
l9137: orrs R6, R3, R12, ROR #1
l9138: subGTs R5, R12, R9, RRX 
l9139: ldr R3, l9141
l9140: b l9142
l9141: .word 1048528
l9142: swpb R2, R14, [R3]
l9143: eors R6, R11, R14, ASR R3
l9144: addCCs R6, R9, R1, LSL #18
l9145: mov R3, #11
l9146: ldrB R2, [sp, -R3]
l9147: subGT R10, R2, R10, RRX 
l9148: mov R10, #8
l9149: ldr R10, [sp], -R10
l9150: mov R2, #6
l9151: strPLB R14, [sp, -R2]
l9152: rsbs R10, R0, #238026752
l9153: mvnEQ R12, R6, ASR R0
l9154: rsc R7, R4, #458752
l9155: teqLT R12, R15
l9156: mvnVSs R12, R11, LSL R14
l9157: b l9166
l9158: add R1, R0, #99
l9159: eors R14, R2, R10
l9160: subGE R9, R2, R7, RRX 
l9161: subs R6, R0, R6, RRX 
l9162: cmn R8, R9, LSR #3
l9163: bicVC R1, R7, R12
l9164: eorLEs R14, R4, R12, ROR #30
l9165: b l9167
l9166: b l9159
l9167: stmDA R13!, {R0, R1, R3, R6, R7, R8, R10, R11, R12, R14, R15}
l9168: subs R14, R8, #-1073741808
l9169: ands R0, R15, R9
l9170: bics R9, R7, R0, LSL R10
l9171: tst R11, R2, LSL #13
l9172: mov R7, #16
l9173: ldr R4, [sp], +R7
l9174: addCC R8, R2, R12, LSR #17
l9175: cmnVC R12, R10
l9176: sbc R12, R14, R12, RRX 
l9177: mov R9, #4
l9178: ldrB R3, [sp, +R9]
l9179: mov R7, #6
l9180: strNEh R11, [sp, +R7]
l9181: mov R12, R14
l9182: sbcs R6, R14, R14, LSL #28
l9183: ldmIA R13, {R2, R3, R4, R5, R6, R10, R11, R12, R14}
l9184: bLT l9193
l9185: add R1, R0, #89
l9186: bicCCs R1, R1, #855638016
l9187: movVSs R11, R3, LSR #23
l9188: eorVSs R2, R10, R10, LSL R8
l9189: movMI R1, R2
l9190: sbcGE R14, R9, R9, RRX 
l9191: cmpHI R3, R6, RRX 
l9192: b l9194
l9193: b l9186
l9194: mov R14, #34
l9195: ldrLTh R10, [sp, +R14]
l9196: subLTs R6, R7, R6, RRX 
l9197: mov R1, #42
l9198: ldrh R4, [sp, +R1]
l9199: tst R2, R10, LSR #20
l9200: mvn R0, #1610612736
l9201: sbc R0, R6, R3, ASR R7
l9202: rscs R8, R7, R14, ROR #28
l9203: bicGE R6, R4, R1, ASR R5
l9204: clzCS R4, R8
l9205: clzLS R9, R0
l9206: teqPL R15, #45613056
l9207: mov R1, #4
l9208: ldrh R6, [sp, -R1]
l9209: str R6, [sp, #+12]!
l9210: tstLT R3, R7, ASR R10
l9211: rsbCCs R10, R14, R2
l9212: bics R3, R8, R11, LSR #0
l9213: stmIA R13!, {R8, R10, R14}
l9214: adcs R6, R12, R2
l9215: tstEQ R8, R8, ROR #29
l9216: ldrMIB R14, [sp, #-28]
l9217: subVCs R9, R15, R14
l9218: eorGE R8, R5, R5, ROR R14
l9219: teqMI R5, R1, ROR #30
l9220: cmnHI R5, R9, ROR #15
l9221: rscs R14, R12, R8, RRX 
l9222: ldr R9, l9224
l9223: b l9225
l9224: .word 1048496
l9225: swpCCb R5, R10, [R9]
l9226: cmn R2, R15, RRX 
l9227: strHIh R11, [sp, #-6]
l9228: adc R10, R15, R7, LSL #30
l9229: mov R9, #10
l9230: ldrVCh R4, [sp, +R9]
l9231: bicHIs R7, R10, R1, LSR #20
l9232: mov R2, #46
l9233: strPLB R2, [sp, -R2]
l9234: mov R14, #36
l9235: str R5, [sp, -R14]
l9236: mov R14, #14
l9237: ldrVSh R10, [sp, +R14]
l9238: ldr R7, l9240
l9239: b l9241
l9240: .word 1048552
l9241: swp R6, R6, [R7]
l9242: ldr R3, l9244
l9243: b l9245
l9244: .word 1048524
l9245: swpVS R1, R0, [R3]
l9246: ldrsb R7, [sp, #-47]
l9247: mov R14, #4
l9248: ldrNEsh R5, [sp, +R14]
l9249: cmn R15, #704
l9250: tst R8, R11, ROR #3
l9251: adcMIs R1, R15, R14, ROR #27
l9252: ldrGEsb R11, [sp, #-3]
l9253: andNEs R11, R1, R15, RRX 
l9254: b l9255
l9255: tstCS R2, #233
l9256: sbc R8, R6, R6
l9257: subGEs R7, R1, R8
l9258: cmnGT R1, R10
l9259: rscEQ R11, R14, R14, LSR #8
l9260: movHIs R3, R12
l9261: mov R2, #38
l9262: ldrLEsh R4, [sp, -R2]
l9263: ldr R10, l9265
l9264: b l9266
l9265: .word 1048484
l9266: swpLE R12, R11, [R10]
l9267: clz R3, R4
l9268: teq R4, R7, ASR R2
l9269: bics R7, R12, R12
l9270: rsbCSs R11, R12, R7
l9271: bVC l9277
l9272: add R1, R0, #42
l9273: mvnLTs R7, R2, LSL #15
l9274: rscEQs R1, R7, R12, RRX 
l9275: mvn R9, #-1073741807
l9276: b l9278
l9277: b l9273
l9278: mov R8, #16
l9279: strCCB R7, [sp, -R8]
l9280: ldrh R1, [sp, #-28]
l9281: mvnVSs R11, R11
l9282: bicGEs R10, R7, R15, LSL #11
l9283: mov R11, #42
l9284: strMIh R10, [sp, -R11]
l9285: orrNEs R2, R6, R10
l9286: bEQ l9292
l9287: subLEs R1, R4, R2
l9288: clz R3, R5
l9289: rscGE R3, R7, R11, ASR R7
l9290: tst R15, R11, ROR #21
l9291: tstLE R3, R14, LSL R6
l9292: cmn R11, R2, RRX 
l9293: ldrB R6, [sp, #-45]
l9294: tstLS R4, R6
l9295: eorMIs R1, R10, R1
l9296: b l9305
l9297: sbcHI R6, R3, R9
l9298: teq R6, R5, ASR R2
l9299: tstPL R4, R5, ASR R5
l9300: rscCS R7, R14, R1, ASR R8
l9301: bicVS R9, R14, R8, LSL R6
l9302: rsb R9, R11, R4, ASR R7
l9303: bic R7, R9, R11, ASR R10
l9304: sbcCS R5, R3, #62390272
l9305: mov R9, R10, RRX 
l9306: ldr R14, l9308
l9307: b l9309
l9308: .word 1048532
l9309: swpPLb R12, R6, [R14]
l9310: tstLE R5, R9
l9311: rsbLSs R12, R1, R3, ROR R1
l9312: movVCs R3, R4, RRX 
l9313: clz R7, R5
l9314: teqEQ R14, #331350016
l9315: b l9321
l9316: and R4, R2, #909312
l9317: rsbVC R9, R11, R10, LSL #5
l9318: and R10, R14, R12
l9319: addCSs R7, R15, R12, LSL #29
l9320: mvnEQs R11, R5, ROR R10
l9321: movPLs R4, R8, LSL #22
l9322: clzEQ R0, R7
l9323: teq R11, R5, ASR #13
l9324: adcMI R1, R9, R10, ROR R6
l9325: teq R11, R0, LSR #7
l9326: mov R11, #28
l9327: strB R9, [sp, -R11]
l9328: ldr R0, l9330
l9329: b l9331
l9330: .word 1048540
l9331: swp R4, R11, [R0]
l9332: stmIA R13!, {R9}
l9333: b l9337
l9334: add R1, R0, #198
l9335: rsbs R7, R12, #750780416
l9336: b l9338
l9337: b l9335
l9338: mov R1, #26
l9339: strMIh R9, [sp, -R1]
l9340: bGT l9347
l9341: sbcs R6, R8, R5, LSR R9
l9342: eorLTs R9, R3, R15
l9343: sub R2, R2, #1610612736
l9344: subNEs R10, R1, R6
l9345: eor R12, R5, R6
l9346: subLTs R2, R10, R4
l9347: mvn R4, R14
l9348: strLSh R8, [sp, #-24]
l9349: ldrLTB R6, [sp, #-21]
l9350: strPL R11, [sp, #-48]
l9351: ldr R12, l9353
l9352: b l9354
l9353: .word 1048512
l9354: swpb R7, R14, [R12]
l9355: orrEQ R11, R4, R11, ROR R6
l9356: sub R3, R7, R10, LSR #9
l9357: clz R2, R4
l9358: and R7, R7, R8, ROR R2
l9359: ldrB R4, [sp, #+19]
l9360: mvn R6, #16
l9361: mov R11, #3
l9362: ldrLTsb R12, [sp, -R11]
l9363: rsb R4, R7, R5, RRX 
l9364: addCS R2, R1, R14, ROR #23
l9365: subs R4, R1, R0, RRX 
l9366: strVSB R9, [sp, #+15]
l9367: ldr R2, l9369
l9368: b l9370
l9369: .word 1048496
l9370: swpMIb R9, R7, [R2]
l9371: strGTB R2, [sp, #+18]
l9372: ldr R9, l9374
l9373: b l9375
l9374: .word 1048532
l9375: swpb R1, R1, [R9]
l9376: andVC R12, R14, #2408448
l9377: strB R10, [sp, #+7]
l9378: ldrEQh R9, [sp, #-50]
l9379: mov R10, #46
l9380: strCSB R11, [sp, -R10]
l9381: clzCC R0, R11
l9382: cmn R11, #-1073741773
l9383: orrHIs R14, R11, #2621440
l9384: sub R10, R7, R11, ROR #19
l9385: mvnLSs R2, R6
l9386: ldr R8, [sp], #-4
l9387: eorGTs R7, R2, #1073741860
l9388: subPLs R14, R12, #802816
l9389: rscs R4, R2, R9, ROR #21
l9390: orrEQs R2, R2, #215040
l9391: subPL R3, R15, R0, ROR #13
l9392: nop
l9393: subLS R8, R2, R14, LSL R2
l9394: teqGE R5, R11
l9395: ldrPLh R1, [sp, #-50]
l9396: mov R1, #8
l9397: ldrNEh R10, [sp, -R1]
l9398: adcVCs R0, R11, #725614592
l9399: rscHI R11, R12, R3, ASR R9
l9400: clz R7, R11
l9401: adcs R4, R5, R12, ROR #25
l9402: tstEQ R2, R8
l9403: orrs R0, R15, #157696
l9404: cmp R3, #132
l9405: add R6, R5, #503808
l9406: mvns R1, #-536870905
l9407: str R10, [sp, #-4]!
l9408: mvnPLs R2, R6, RRX 
l9409: stmIA R13!, {R0, R1, R2}
l9410: teqVC R1, R11, LSL R5
l9411: rscPLs R14, R0, R1, ROR #12
l9412: cmnGE R5, R7, LSL R7
l9413: cmnMI R14, #10
l9414: clzMI R4, R3
l9415: bLS l9424
l9416: add R1, R0, #6
l9417: movLE R7, R14
l9418: rsbPL R8, R6, R11, LSL R1
l9419: add R14, R3, R6, LSL R9
l9420: sbcs R12, R7, #242221056
l9421: tstCC R0, R7
l9422: andLS R12, R14, R11, LSR R10
l9423: b l9425
l9424: b l9417
l9425: andEQ R10, R7, #260046848
l9426: sbcs R1, R1, #1493172224
l9427: mov R1, #10
l9428: strMIB R12, [sp, -R1]
l9429: clz R12, R6
l9430: str R2, [sp, #+8]!
l9431: rsbLTs R4, R4, R7, ROR R1
l9432: sbcGE R10, R1, R15, ROR #23
l9433: sub R0, R5, #-1426063360
l9434: sbcs R2, R8, R10, ASR R9
l9435: andEQ R14, R9, #15104
l9436: mov R11, #55
l9437: ldrsb R9, [sp, -R11]
l9438: bVC l9440
l9439: adc R12, R10, R1, LSL R10
l9440: orrHI R5, R14, R7, RRX 
l9441: sbcs R5, R10, #235520
l9442: cmp R6, R8, ASR R11
l9443: rsbs R6, R8, R7, ASR #11
l9444: subs R5, R4, #939524096
l9445: b l9452
l9446: add R1, R1, R0, ASR #6
l9447: eor R2, R9, R14, LSL R14
l9448: mvnVSs R2, R2, ASR #0
l9449: subVS R9, R1, #65024
l9450: sbcs R9, R4, R0
l9451: movPL R7, #771751936
l9452: subs R3, R3, R5, LSL R5
l9453: ldr R2, l9455
l9454: b l9456
l9455: .word 1048492
l9456: swpLE R12, R9, [R2]
l9457: strPLh R6, [sp, #-42]
l9458: b l9466
l9459: add R1, R0, #214
l9460: sbcVC R10, R1, R7, ASR R8
l9461: adcCSs R11, R9, R2, LSL R10
l9462: movPLs R0, R1, ASR #14
l9463: mov R4, #-1627389952
l9464: mvnHI R12, R5
l9465: b l9467
l9466: b l9460
l9467: mov R12, #46
l9468: strh R8, [sp, -R12]
l9469: ands R1, R14, #-167772160
l9470: eorMIs R5, R7, R12
l9471: rsbNEs R11, R1, #-2147483618
l9472: addLSs R6, R10, #-1879048192
l9473: subLT R5, R7, #512
l9474: tst R7, R7
l9475: nop
l9476: ldr R1, l9478
l9477: b l9479
l9478: .word 1048512
l9479: swpCS R0, R6, [R1]
l9480: movGE R8, R7
l9481: mov R7, #48
l9482: str R4, [sp, -R7]!
l9483: nop
l9484: mov R5, #45
l9485: strVCB R1, [sp, +R5]
l9486: rscLSs R7, R1, R3
l9487: ldr R6, l9489
l9488: b l9490
l9489: .word 1048532
l9490: swpGEb R10, R1, [R6]
l9491: mvns R10, R5
l9492: bCS l9499
l9493: add R1, R0, #49
l9494: orrVCs R4, R12, R2, ASR #24
l9495: tstGT R3, R15
l9496: sbcs R0, R8, R0
l9497: sub R10, R3, R11
l9498: b l9500
l9499: b l9494
l9500: adcCCs R7, R0, R6, LSR #0
l9501: mov R2, #24
l9502: ldrsh R7, [sp, +R2]
l9503: mov R4, #36
l9504: ldrh R11, [sp, +R4]
l9505: teq R11, R6, RRX 
l9506: bicVC R7, R12, R11
l9507: mov R9, #47
l9508: strMIB R1, [sp, +R9]
l9509: teq R9, R1, RRX 
l9510: bGT l9513
l9511: rscVCs R14, R5, R10, ASR R1
l9512: clzLT R14, R8
l9513: cmnGT R9, R3, ASR #2
l9514: eorLE R10, R14, R2, LSL #31
l9515: subs R0, R7, R7, ROR #6
l9516: ldr R14, l9518
l9517: b l9519
l9518: .word 1048516
l9519: swpb R1, R2, [R14]
l9520: and R11, R1, R3, LSR R5
l9521: subPLs R5, R15, R9, ROR #7
l9522: sub R2, R5, R14
l9523: strCCB R7, [sp, #+50]
l9524: bLT l9528
l9525: rscs R11, R8, R11
l9526: sbcLS R5, R8, R8, RRX 
l9527: tstHI R6, R9
l9528: adcCC R6, R5, #1073741828
l9529: bicMIs R7, R6, R4
l9530: andPL R10, R2, R9, LSL R11
l9531: subNEs R2, R6, R10, LSL #0
l9532: strB R1, [sp, #+43]
l9533: subs R11, R5, R0, RRX 
l9534: mov R6, #14
l9535: strh R1, [sp, -R6]
l9536: ldr R11, l9538
l9537: b l9539
l9538: .word 1048488
l9539: swpGT R6, R9, [R11]
l9540: ldr R6, l9542
l9541: b l9543
l9542: .word 1048544
l9543: swpVCb R10, R3, [R6]
l9544: rsc R10, R3, #1073741871
l9545: cmpHI R8, R10, LSR R8
l9546: teqGE R15, R1
l9547: ldmDB R13!, {R4, R8, R11}
l9548: rsbGE R8, R5, R6, RRX 
l9549: sbc R6, R10, R6, ASR #6
l9550: teqHI R11, #1179648
l9551: cmnCS R4, R3, ROR #13
l9552: ldrh R9, [sp, #+42]
l9553: bPL l9563
l9554: addLE R10, R5, R6
l9555: mvnLS R2, R2
l9556: orrs R7, R0, R4, LSL R9
l9557: cmnLE R11, R10
l9558: movNE R7, R14, ASR R4
l9559: subMI R2, R7, #30670848
l9560: addCS R2, R10, R8, LSR #1
l9561: sbcEQs R5, R3, #120586240
l9562: bicNEs R12, R11, R11, LSR #3
l9563: mvnLEs R14, R5, LSR R1
l9564: teq R6, R8, LSL #21
l9565: b l9571
l9566: add R1, R0, #38
l9567: subPL R5, R5, R0, ASR R0
l9568: subMIs R1, R2, #2752
l9569: clz R9, R2
l9570: b l9572
l9571: b l9567
l9572: ldr R3, l9574
l9573: b l9575
l9574: .word 1048480
l9575: swpMI R5, R2, [R3]
l9576: rscNEs R7, R3, R14, ROR R0
l9577: cmpHI R10, #130023424
l9578: stmIA R13!, {R13, R14, R15}
l9579: bVS l9585
l9580: cmp R15, R8, ASR #18
l9581: addMIs R8, R2, R15, RRX 
l9582: addMIs R5, R7, R8, RRX 
l9583: clzHI R5, R8
l9584: teqGE R11, R7, LSL R6
l9585: eorVS R3, R15, R6, LSL #26
l9586: ldr R1, [sp, #+40]!
l9587: bVS l9596
l9588: andPL R5, R11, R7, LSL R14
l9589: adcVCs R6, R9, R12, ASR R9
l9590: sub R8, R9, R14, LSR #11
l9591: tst R1, R2, ROR R8
l9592: subGTs R12, R10, R15
l9593: rsbNEs R3, R8, R14
l9594: orrNE R1, R3, R0, ROR #21
l9595: subEQs R7, R7, R8, ASR R4
l9596: movs R8, R14, ASR R10
l9597: sub R10, R10, R14
l9598: rsbs R9, R3, #11072
l9599: bNE l9608
l9600: add R1, R0, #209
l9601: cmnCC R2, R2, LSR #18
l9602: bics R6, R9, R8
l9603: mvnLE R9, R2, ASR #23
l9604: subVCs R6, R2, R2, ASR #3
l9605: cmp R11, #802816
l9606: clzGT R3, R6
l9607: b l9609
l9608: b l9601
l9609: sbcLS R2, R9, R14, ROR #26
l9610: mov R11, #8
l9611: ldrGTh R5, [sp, +R11]
l9612: mov R0, R12, ROR R2
l9613: ldr R10, l9615
l9614: b l9616
l9615: .word 1048548
l9616: swp R6, R7, [R10]
l9617: eorHI R2, R5, R0, ASR #20
l9618: mvnGTs R12, R4, ASR #1
l9619: bLT l9627
l9620: add R1, R0, #12
l9621: cmnLS R8, #1488
l9622: mvnNE R10, R15
l9623: mvnGT R4, R0, LSL R7
l9624: and R5, R2, R12
l9625: eors R6, R1, R10, RRX 
l9626: b l9628
l9627: b l9621
l9628: mov R6, #12
l9629: ldr R9, [sp, +R6]
l9630: strPLB R11, [sp, #-18]
l9631: mov R11, #48
l9632: ldr R6, [sp], -R11
l9633: ldrLSsh R10, [sp, #-12]
l9634: subGEs R7, R11, R11, LSR #14
l9635: movs R14, #-402653181
l9636: addPL R10, R3, R15
l9637: rsbHI R6, R12, R9
l9638: mov R10, #2
l9639: strPLh R9, [sp, +R10]
l9640: nop
l9641: ldmIA R13!, {R0, R2, R5, R7, R8, R10}
l9642: bEQ l9651
l9643: add R1, R0, #27
l9644: adcPLs R9, R0, R8
l9645: teqNE R4, R11, LSL #2
l9646: rsb R7, R7, R6, LSL R1
l9647: clz R2, R12
l9648: tst R4, R3, RRX 
l9649: cmpVC R10, R8, ASR #16
l9650: b l9652
l9651: b l9644
l9652: clzPL R0, R5
l9653: bEQ l9658
l9654: add R1, R0, #30
l9655: tstMI R5, R11, LSR R10
l9656: sbcLT R5, R0, R2, ROR #15
l9657: b l9659
l9658: b l9655
l9659: sbc R2, R6, R7, ASR R11
l9660: subEQ R14, R15, R1, LSL #4
l9661: adcGE R9, R15, R1, ROR #12
l9662: sbcHIs R5, R12, R3, ASR #19
l9663: ldmDA R13!, {R4, R9, R12, R14}
l9664: tstMI R2, #1879048199
l9665: andVSs R6, R5, R10, RRX 
l9666: mvnHI R7, #3276800
l9667: ands R10, R11, R12, RRX 
l9668: sbcHIs R0, R1, #3712
l9669: ldrB R5, [sp, #-15]
l9670: mvns R11, R5, ROR #11
l9671: addCS R6, R3, R14, ASR #31
l9672: bLE l9679
l9673: add R1, R0, #152
l9674: tstGT R9, R6, ASR R12
l9675: clzGE R7, R5
l9676: sbc R0, R1, R15, ROR #4
l9677: cmpHI R14, R6, RRX 
l9678: b l9680
l9679: b l9674
l9680: cmp R1, R5, RRX 
l9681: teq R6, R5, ROR R14
l9682: ldr R11, [sp, #+16]
l9683: movs R1, R0
l9684: rsc R6, R14, R2, ROR #2
l9685: orrPLs R14, R8, R3, LSL R6
l9686: tst R8, R10, RRX 
l9687: subGTs R12, R3, #1610612742
l9688: orr R10, R2, R10, ROR R10
l9689: strCSh R14, [sp, #+20]
l9690: strh R3, [sp, #+30]
l9691: teq R11, R2
l9692: bLS l9698
l9693: add R1, R0, #134
l9694: bics R10, R4, R4, LSL R9
l9695: teq R10, R1, ASR R4
l9696: rscs R4, R7, R1
l9697: b l9699
l9698: b l9694
l9699: ldr R2, l9701
l9700: b l9702
l9701: .word 1048508
l9702: swpLEb R14, R7, [R2]
l9703: ldr R4, l9705
l9704: b l9706
l9705: .word 1048536
l9706: swpb R10, R0, [R4]
l9707: eorEQs R14, R3, #1073741827
l9708: stmDA R13!, {R2, R14, R15}
l9709: teqLS R9, R0, ASR R9
l9710: ldr R14, [sp, #+32]!
l9711: sbcs R4, R4, #-1442840576
l9712: ldrLSB R11, [sp, #+34]
l9713: mov R5, #12
l9714: ldr R5, [sp, +R5]!
l9715: cmnGT R14, R8, ROR #6
l9716: sbcGEs R8, R3, #10688
l9717: ldrPL R8, [sp, #-36]
l9718: nop
l9719: and R14, R11, R2, LSL R5
l9720: subs R5, R0, R4, ROR #2
l9721: ldmDA R13!, {R0, R1, R2, R4, R6, R8, R9, R10, R11, R12}
l9722: sbcs R12, R5, R7, LSL #4
l9723: strNEh R9, [sp, #+32]
l9724: sbcVS R1, R7, R3, ROR R7
l9725: addNE R8, R5, R8
l9726: eors R9, R1, #-1073741792
l9727: movEQ R4, #-1476395007
l9728: mov R8, #4
l9729: ldrB R11, [sp, -R8]
l9730: ldrVCsh R4, [sp, #+38]
l9731: ldrHIh R11, [sp, #+46]
l9732: bicGTs R3, R0, #-1509949440
l9733: ldrLSsh R4, [sp, #+38]
l9734: orrHIs R6, R2, R10
l9735: mov R7, #4
l9736: ldrh R10, [sp, +R7]
l9737: cmp R14, R0, RRX 
l9738: ldr R7, l9740
l9739: b l9741
l9740: .word 1048552
l9741: swpb R1, R11, [R7]
l9742: mov R5, #22
l9743: strh R2, [sp, +R5]
l9744: rsb R7, R7, R0, ASR R5
l9745: mov R9, #7
l9746: strPLB R4, [sp, -R9]
l9747: mov R2, #62
l9748: ldrVCh R0, [sp, +R2]
l9749: b l9755
l9750: add R1, R0, #217
l9751: cmp R8, #3145728
l9752: adcs R9, R12, R14, RRX 
l9753: sbcNEs R12, R0, R14, LSL R0
l9754: b l9756
l9755: b l9751
l9756: mov R12, #32
l9757: ldrh R6, [sp, +R12]
l9758: mov R5, #4
l9759: strB R11, [sp, +R5]
l9760: mov R12, #18
l9761: ldrsh R3, [sp, +R12]
l9762: cmpVC R15, #38144
l9763: bicLE R2, R12, R12, LSL R14
l9764: ldr R12, l9766
l9765: b l9767
l9766: .word 1048548
l9767: swp R11, R11, [R12]
l9768: rsbMI R7, R9, #7680
l9769: ldmDA R13!, {R3}
l9770: stmHIIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12, R13, R15}
l9771: tstPL R0, R9, LSL R14
l9772: bicGTs R0, R6, R14, LSL R0
l9773: clz R10, R4
l9774: adc R7, R9, R7, ASR #3
l9775: nop
l9776: subHI R6, R15, #5824
l9777: stmIA R13!, {R3, R9, R12, R14}
l9778: subGE R11, R7, R11, ASR #9
l9779: stmIB R13!, {R3, R6, R12}
l9780: ldr R11, l9782
l9781: b l9783
l9782: .word 1048496
l9783: swpLSb R5, R4, [R11]
l9784: rscGT R14, R2, R11, ROR #11
l9785: mov R4, #32
l9786: strPLh R2, [sp, +R4]
l9787: teq R5, R7
l9788: tstHI R11, R1
l9789: eorMIs R7, R2, R9, LSL R14
l9790: andVCs R1, R1, R14
l9791: eor R4, R15, R8, LSL #0
l9792: rscGE R5, R15, R3, ROR #3
l9793: movs R11, R2, LSL #6
l9794: movCS R4, R0, ROR #23
l9795: teqNE R8, R10, LSL #29
l9796: rsbLT R12, R3, R10, LSL R7
l9797: mov R12, #5
l9798: ldrsb R2, [sp, +R12]
l9799: ldmDB R13!, {R6, R9}
l9800: ldrsb R8, [sp, #+10]
l9801: nop
l9802: bLE l9810
l9803: eorCSs R1, R2, R8, LSL R1
l9804: rscLT R9, R2, #1073741832
l9805: eors R0, R6, R4
l9806: rsbs R8, R8, R3, LSL R9
l9807: orrs R14, R1, #1073741848
l9808: bicLTs R14, R3, R4
l9809: sbc R5, R5, #-2147483611
l9810: andLTs R9, R9, #1073741824
l9811: orr R1, R9, R6
l9812: adc R4, R2, R6
l9813: mvns R3, R5, RRX 
l9814: mov R9, #0
l9815: str R15, [sp], +R9
l9816: mov R2, #16
l9817: ldrLTB R0, [sp, -R2]
l9818: cmnVC R1, R1
l9819: strB R1, [sp, #-19]
l9820: stmIA R13!, {R13, R15}
l9821: teqLT R0, R11, LSL #31
l9822: eorLE R3, R1, #1523712
l9823: cmpLT R1, R2, LSL R6
l9824: cmpLT R11, R0, LSR R8
l9825: adds R1, R10, R15
l9826: ldr R8, l9828
l9827: b l9829
l9828: .word 1048528
l9829: swpLSb R10, R6, [R8]
l9830: cmnNE R11, R1, LSR R14
l9831: ldr R2, l9833
l9832: b l9834
l9833: .word 1048492
l9834: swpNE R4, R8, [R2]
l9835: sub R0, R0, R0, RRX 
l9836: cmpPL R4, R12, LSL R8
l9837: subs R14, R15, R5, ROR #8
l9838: adds R7, R4, R11, RRX 
l9839: ldmIA R13!, {R2, R5, R8, R11}
l9840: bVS l9844
l9841: add R1, R0, #98
l9842: tst R14, R10
l9843: b l9845
l9844: b l9842
l9845: clz R1, R6
l9846: b l9849
l9847: movs R11, R9, ASR R3
l9848: ands R14, R10, R6
l9849: clz R1, R12
l9850: bMI l9857
l9851: movHIs R7, #11534336
l9852: cmpPL R3, R9, ASR #18
l9853: addVC R10, R9, R6, ROR R12
l9854: subLE R8, R4, R6, RRX 
l9855: eorCC R2, R12, R3, ROR R11
l9856: adc R3, R12, #10432
l9857: sbcNE R4, R0, #8448
l9858: clz R10, R8
l9859: eorLT R11, R8, #250609664
l9860: addNEs R0, R12, #73400320
l9861: eors R1, R4, R2
l9862: rscLE R12, R9, #2720
l9863: bGE l9869
l9864: sub R8, R15, #320
l9865: subLS R1, R12, R4, RRX 
l9866: sbc R7, R0, R4, LSR #16
l9867: subs R6, R12, R8
l9868: tstCS R5, R5, LSR R12
l9869: adcLS R6, R12, R2, LSR R1
l9870: rsbNEs R4, R14, #652
l9871: strB R14, [sp, #-33]
l9872: mov R2, #16
l9873: str R11, [sp], +R2
l9874: tstVC R4, R0
l9875: add R1, R14, R8, LSL R0
l9876: eor R7, R2, R1, RRX 
l9877: strLTh R2, [sp, #-14]
l9878: teq R9, R7, LSR R12
l9879: ldmIB R13!, {R11}
l9880: cmp R0, R5, RRX 
l9881: eorVC R14, R10, R3
l9882: mov R7, #4
l9883: str R14, [sp], -R7
l9884: movs R11, R12
l9885: cmnLT R8, R12, ASR R9
l9886: rsbLEs R9, R14, R0
l9887: andLT R1, R7, R9, ROR R9
l9888: subHIs R4, R15, #51
l9889: ldr R0, [sp, #-68]
l9890: mov R3, #56
l9891: ldrsh R2, [sp, -R3]
l9892: bicHIs R11, R3, #42205184
l9893: clz R4, R0
l9894: and R2, R2, R3
l9895: teqCC R8, R8, ROR R14
l9896: mov R14, #62
l9897: ldrh R2, [sp, -R14]
l9898: mov R7, #50
l9899: strh R6, [sp, -R7]
l9900: teq R3, R3, RRX 
l9901: cmnLE R4, #140288
l9902: stmIB R13!, {R15}
l9903: ldrCSB R10, [sp, #-67]
l9904: mov R5, #40
l9905: strB R9, [sp, -R5]
l9906: eors R14, R11, R15, RRX 
l9907: subHIs R5, R6, R6, ASR R14
l9908: mov R10, #68
l9909: strGEh R14, [sp, -R10]
l9910: strGEB R6, [sp, #-41]
l9911: b l9917
l9912: add R1, R0, #59
l9913: sbcNE R3, R2, #27648
l9914: orrCCs R7, R7, #248
l9915: add R2, R10, R12
l9916: b l9918
l9917: b l9913
l9918: nop
l9919: mov R14, #64
l9920: ldrGTh R3, [sp, -R14]
l9921: eor R8, R1, R5, RRX 
l9922: bGE l9929
l9923: cmnHI R3, R0
l9924: addMIs R8, R15, #381681664
l9925: adc R6, R2, #1024
l9926: bicLT R4, R12, R14, LSR #6
l9927: mvns R2, R14, ROR #4
l9928: movLTs R10, R2, LSL #9
l9929: and R3, R4, #14090240
l9930: orrLEs R0, R11, #141557760
l9931: teqLT R6, R0
l9932: subPLs R5, R10, R4, ASR #22
l9933: mov R0, #0
l9934: str R11, [sp, +R0]!
l9935: b l9941
l9936: clzHI R9, R14
l9937: mvns R11, R14, LSL #10
l9938: orrLT R6, R4, #3555328
l9939: eor R5, R0, R6, RRX 
l9940: subs R1, R5, #32
l9941: orrs R5, R14, R5, ROR R5
l9942: stmDA R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14, R15}
l9943: subGTs R6, R15, R7, LSL #17
l9944: cmn R12, R14, ROR #11
l9945: mvnVSs R5, R0
l9946: tst R4, R14, RRX 
l9947: cmpGT R9, R7, ROR #25
l9948: b l9956
l9949: mvnPLs R6, R12
l9950: tst R5, R8, ASR #21
l9951: teqCC R0, R14, ASR R8
l9952: andVSs R9, R14, R12, LSL R4
l9953: adcMIs R11, R8, R12
l9954: tstHI R4, #4718592
l9955: orrHI R1, R9, R8
l9956: rscCSs R3, R6, R15, ASR #0
l9957: ands R12, R10, R4
l9958: teqCS R7, #16252928
l9959: andEQ R0, R15, R7, LSL #6
l9960: clz R3, R8
l9961: andVC R2, R3, #1264
l9962: mov R6, #10
l9963: ldrh R4, [sp, -R6]
l9964: adcVC R12, R4, R2
l9965: mov R12, #56
l9966: ldrLSh R8, [sp, +R12]
l9967: stmLEIA R13, {R5, R6, R9, R12, R13}
l9968: ldr R4, l9970
l9969: b l9971
l9970: .word 1048504
l9971: swpCCb R2, R9, [R4]
l9972: sbcHI R2, R4, R12
l9973: bPL l9982
l9974: add R1, R0, #88
l9975: cmnLE R15, R8, RRX 
l9976: mvn R6, R2, ROR #25
l9977: cmp R7, #-939524096
l9978: andVS R6, R9, R8, ASR #2
l9979: rsb R6, R1, R15, ASR #8
l9980: cmp R14, R1, LSL R7
l9981: b l9983
l9982: b l9975
l9983: bGT l9991
l9984: movEQ R6, R0, ASR R12
l9985: ands R2, R0, R10
l9986: clz R7, R10
l9987: andHIs R2, R5, R6, LSR #29
l9988: tstNE R4, #300
l9989: cmnCS R10, R2, LSL R8
l9990: cmnVS R9, R8, RRX 
l9991: adcGTs R7, R3, R6
l9992: bicVSs R6, R5, #42991616
l9993: ldr R4, l9995
l9994: b l9996
l9995: .word 1048528
l9996: swpb R6, R11, [R4]
l9997: mov R3, #6
l9998: ldrsh R1, [sp, -R3]
l9999: teq R2, R4
l10000: ldrCC R5, [sp, #+8]
end: b end

