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
val1: .word 3232311873
next1:ldr R2, val2
b next2
val2: .word 1590702181
next2:ldr R3, val3
b next3
val3: .word 2564534880
next3:ldr R4, val4
b next4
val4: .word 1866057633
next4:ldr R5, val5
b next5
val5: .word 1119008012
next5:ldr R6, val6
b next6
val6: .word 3195223265
next6:ldr R7, val7
b next7
val7: .word 482389427
next7:ldr R8, val8
b next8
val8: .word 4039866538
next8:ldr R9, val9
b next9
val9: .word 2144518151
next9:ldr R10, val10
b next10
val10: .word 1028792347
next10:ldr R11, val11
b next11
val11: .word 447949434
next11:ldr R12, val12
b next12
val12: .word 2944293290
next12:ldr R14, val14
b next14
val14: .word 1184700989

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 1957304153
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 3116867745
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3555353975
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 3964084808
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 309030215
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 4108103030
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 2545905064
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 675713757
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 1306488766
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 18418698
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 3617324212
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 2611175044
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 2864766370
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 1156128008
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 2274437571
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 1680470688
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 2057584147
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 2240868987
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 1193538095
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 1719905540
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 2820636602
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: b l6
l2: add R1, R0, #209
l3: sbcs R9, R8, R4, ASR #7
l4: rsbCS R12, R7, R2, ROR #19
l5: b l7
l6: b l3
l7: subs R14, R2, #127
l8: cmn R3, R1, LSR #31
l9: rscNE R3, R2, R14, ROR #21
l10: eorGE R0, R6, R12, LSR R9
l11: teq R1, R3, LSL #24
l12: mov R5, R7
l13: rscGT R9, R8, R11, RRX 
l14: eorPL R2, R6, R12
l15: orrs R1, R1, R9, LSL #17
l16: mov R10, #32
l17: str R15, [sp], -R10
l18: sbcLE R3, R11, R6, RRX 
l19: bLE l26
l20: tst R4, #576
l21: mvnVCs R1, #2998272
l22: adcs R3, R15, #3520
l23: sub R8, R7, R4, LSR R8
l24: cmpGT R1, #30208
l25: adcs R10, R14, R1, ROR R1
l26: eor R9, R1, R8, ROR R6
l27: subLS R5, R6, #41
l28: teq R10, #12845056
l29: ands R10, R4, R0, ASR #3
l30: subCCs R2, R10, #118489088
l31: bMI l36
l32: add R1, R0, #84
l33: subEQ R8, R3, #-2013265920
l34: cmnGT R3, #167
l35: b l37
l36: b l33
l37: andVCs R9, R0, R3, ASR R3
l38: adds R1, R5, R4, LSL R7
l39: mov R2, #40
l40: ldr R3, [sp, -R2]
l41: cmnGT R12, R11
l42: rscVC R10, R12, #67
l43: sub R3, R7, R10, LSL #22
l44: rscGE R11, R9, R6
l45: orrCC R9, R9, #11328
l46: bGE l47
l47: mvns R2, R11, LSR #12
l48: rscHIs R14, R10, R5
l49: b l55
l50: eor R6, R15, R0, ASR #28
l51: teqNE R7, R14, ROR R11
l52: sub R10, R6, R15, LSR #26
l53: cmn R6, R4
l54: orrMI R8, R5, R6, LSL #24
l55: rsbLTs R2, R8, R2, ASR R10
l56: b l61
l57: sub R11, R8, R8
l58: tst R5, R1, ROR R7
l59: bic R1, R9, R8, ROR R11
l60: cmnVC R4, #135
l61: rsb R2, R11, R2
l62: mov R4, #0
l63: ldr R0, [sp, +R4]!
l64: eor R0, R2, R0, ROR R10
l65: adcs R7, R3, R8
l66: teqGE R8, R1, LSL R7
l67: eor R9, R10, R1, ROR #2
l68: cmn R6, R8, RRX 
l69: cmp R7, R14, LSL #7
l70: mvnMI R1, R14
l71: subLE R8, R12, R4
l72: sbcNE R6, R9, R3, LSR R6
l73: orrs R1, R3, R1, ASR #8
l74: orrCS R2, R3, #12189696
l75: subs R12, R15, R7
l76: cmnLE R5, R11, RRX 
l77: orr R4, R8, #-1879048191
l78: mov R9, #864
l79: cmnCS R12, R15, RRX 
l80: addLSs R6, R10, R2, ROR R5
l81: sbcPLs R12, R9, R3, ASR R0
l82: mov R4, #12
l83: strLEB R11, [sp, +R4]
l84: andVC R1, R10, R5, ASR #1
l85: eors R10, R6, #192937984
l86: rsbVS R8, R11, R0, ASR R10
l87: bics R8, R9, R7
l88: sbcGEs R5, R0, R5
l89: rsbCCs R3, R1, #12582912
l90: tst R14, #-939524093
l91: sbc R11, R5, R3
l92: tstLS R0, R14, LSR R7
l93: adcLTs R10, R3, R2
l94: clz R6, R4
l95: mov R10, #18
l96: ldrNEB R2, [sp, +R10]
l97: bVC l102
l98: add R1, R0, #1
l99: rsbVCs R6, R6, R11, LSR #21
l100: tstCS R15, #12
l101: b l103
l102: b l99
l103: b l104
l104: clz R7, R7
l105: subs R12, R5, #1342177293
l106: ldr R1, [sp], #-4
l107: eors R12, R7, R7, RRX 
l108: ldr R1, [sp, #-16]!
l109: mvnNE R3, R3, ROR R11
l110: eors R2, R8, R2, ASR R4
l111: clzLE R4, R5
l112: bicCC R6, R0, R15, RRX 
l113: clzVC R6, R1
l114: orrLE R14, R14, #-2147483643
l115: adds R3, R5, R0
l116: cmp R11, R14, RRX 
l117: tst R7, R6, ROR #8
l118: rsbLEs R11, R0, R4, LSR #5
l119: clzLE R0, R7
l120: tstGE R5, R5
l121: sbcVCs R6, R3, #15040
l122: mvnMIs R9, R10, LSR R9
l123: andCCs R3, R6, #290816
l124: orrEQs R12, R4, #483328
l125: tst R3, R5, ASR R8
l126: eorVSs R11, R8, R11, LSR R5
l127: bLS l136
l128: add R1, R0, #204
l129: teqGE R0, R4
l130: teqCS R12, R3
l131: sbcGT R12, R1, R0
l132: clz R12, R9
l133: rscLS R2, R3, R11, ROR #25
l134: teqMI R6, R3, ASR R1
l135: b l137
l136: b l129
l137: mov R1, #26
l138: strLEB R8, [sp, +R1]
l139: rsbEQs R12, R9, #1035993088
l140: b l141
l141: cmnHI R15, #2080374785
l142: clzLS R6, R4
l143: cmnVC R0, #43778048
l144: bGE l150
l145: add R1, R0, #170
l146: addCSs R3, R9, #960
l147: orr R10, R9, R5, LSL R11
l148: cmpGE R1, R14
l149: b l151
l150: b l146
l151: cmnVS R6, R1
l152: rscGEs R7, R1, R8, ROR R12
l153: subVSs R0, R10, #335872
l154: tstGT R2, R4
l155: subs R3, R11, #-2147483611
l156: bHI l164
l157: add R1, R0, #182
l158: movMIs R6, R4, ROR #16
l159: add R0, R8, R7
l160: subVSs R0, R9, #116
l161: subHIs R6, R4, R4, LSL R0
l162: rsc R10, R15, #2032
l163: b l165
l164: b l158
l165: addLE R0, R5, R3, LSL #10
l166: teqCS R9, R10, RRX 
l167: movs R0, R3
l168: eorMIs R9, R4, #5046272
l169: and R10, R5, R4, LSR #25
l170: tstCC R9, R2, LSL R11
l171: sbcCC R9, R12, R4, ASR #15
l172: ldrGE R0, [sp, #-4]
l173: andGTs R8, R8, R2, RRX 
l174: orrLT R6, R14, #94371840
l175: orrNEs R10, R12, R14, LSL #29
l176: sbcLEs R11, R9, R2, LSL R1
l177: b l185
l178: add R1, R0, #142
l179: orrs R10, R10, R15, RRX 
l180: teq R4, #536576
l181: sbcLT R2, R1, R10
l182: orrLEs R12, R6, R14
l183: adc R2, R9, R2, RRX 
l184: b l186
l185: b l179
l186: teq R6, #39583744
l187: teq R10, #3248
l188: b l196
l189: eorGTs R11, R7, #171966464
l190: teqLT R7, R4, LSL #18
l191: clz R7, R2
l192: subHI R0, R6, #10240
l193: mov R1, R12, LSR #14
l194: rsbs R0, R9, R4
l195: subCCs R14, R1, R7, ROR R9
l196: subGTs R6, R2, R15, ASR #5
l197: bicEQ R6, R4, R14, LSL #27
l198: mov R7, #32
l199: strGT R14, [sp, +R7]
l200: tstGT R1, R4
l201: teq R1, #130023424
l202: sbcLS R3, R6, R7
l203: tst R6, #1073741830
l204: andPLs R8, R9, R4, RRX 
l205: rsbPLs R7, R0, R0, ROR R6
l206: cmn R8, R15, LSR #14
l207: bicLEs R10, R6, R15, RRX 
l208: rsb R11, R6, R0, ROR R3
l209: adcLEs R10, R6, R4, LSR #8
l210: b l217
l211: add R1, R0, #86
l212: teq R14, R7, RRX 
l213: cmpPL R14, R8, ROR #8
l214: rscGTs R4, R14, R8, LSR R3
l215: mvn R7, #205
l216: b l218
l217: b l212
l218: subNE R8, R14, R1, RRX 
l219: subs R10, R6, R14, LSL R2
l220: and R6, R4, R2, LSL #10
l221: subCC R2, R10, R4, LSR R5
l222: movCS R0, R12, LSL R9
l223: eorCSs R10, R15, R8, RRX 
l224: mvns R3, R3, LSR R5
l225: bCC l231
l226: addLEs R7, R12, R3
l227: movLE R3, R1, RRX 
l228: tstGE R6, R8, RRX 
l229: eorEQ R5, R0, R2
l230: andPL R11, R2, R14, ASR #12
l231: orrLTs R2, R8, R7, LSL R9
l232: orrs R5, R9, R2
l233: rsbGT R12, R8, R11, ROR R7
l234: adcMIs R10, R9, #-402653184
l235: bicMI R11, R12, R6, ASR #27
l236: movs R14, R5, ROR R8
l237: subMIs R2, R11, R4, LSL #28
l238: cmpPL R0, R10
l239: teq R12, R8
l240: tstHI R11, R7
l241: mvnLSs R8, R12, LSR R6
l242: eorGEs R0, R10, R9
l243: adcLS R10, R8, #-1073741822
l244: mvnCC R8, R5, LSL R1
l245: mov R3, #9
l246: ldrLTB R0, [sp, +R3]
l247: clz R1, R6
l248: cmpNE R11, R14, RRX 
l249: orr R11, R5, #167936
l250: sbcGE R12, R6, R12, RRX 
l251: sbcPL R9, R0, #926941184
l252: eor R9, R0, #16896
l253: eorNE R3, R8, #-1207959551
l254: subPL R12, R8, #66060288
l255: eorCCs R14, R8, R8, LSR R2
l256: andNE R0, R12, R12
l257: teq R15, R1, LSL #25
l258: orrGE R7, R9, R15
l259: subs R5, R14, R5, RRX 
l260: sbcLEs R12, R4, R3, ROR R3
l261: orr R2, R0, R0, LSR R5
l262: sbcMI R2, R5, R9, ROR R2
l263: rscPLs R0, R15, #53248
l264: orrLTs R6, R8, #1392508928
l265: andGTs R2, R1, R7, LSR R5
l266: mvnNE R8, #15360
l267: bCS l270
l268: andMIs R10, R5, #227
l269: subs R5, R0, R2, ROR R4
l270: rscGE R14, R6, #120
l271: subLEs R12, R15, R10
l272: subLTs R12, R11, R12
l273: bCC l274
l274: eor R9, R3, R2, LSR R4
l275: b l281
l276: add R1, R0, #255
l277: mvns R4, #261095424
l278: subGT R14, R12, R12, RRX 
l279: sbcVS R9, R8, R8
l280: b l282
l281: b l277
l282: subCSs R0, R0, R3, ROR R5
l283: mov R11, #3
l284: strMIB R9, [sp, +R11]
l285: orrs R11, R14, R14, ROR R11
l286: teqHI R5, R8, ROR #20
l287: orrCC R2, R1, R2, ASR R3
l288: rsbs R2, R11, #-117440512
l289: sub R12, R6, R6, RRX 
l290: bMI l297
l291: add R1, R0, #63
l292: adds R14, R15, R7
l293: sbcMIs R12, R14, R0, ROR #23
l294: eor R3, R4, R3
l295: tst R4, R14, ASR #25
l296: b l298
l297: b l292
l298: rsbs R5, R2, R9
l299: sub R3, R3, #1442840576
l300: sbcGT R5, R11, R6, ROR R1
l301: bGE l305
l302: add R1, R0, #66
l303: mvns R3, R3, LSR R11
l304: b l306
l305: b l303
l306: eorLTs R11, R5, R3
l307: bicGE R3, R12, #13434880
l308: eors R0, R7, R14, ROR R12
l309: adcPL R6, R0, R8, LSR #19
l310: mov R12, #4
l311: str R2, [sp], -R12
l312: eor R12, R0, #13120
l313: tstVC R12, R12, ASR R4
l314: bicCC R14, R9, R6, RRX 
l315: teqVS R15, #163577856
l316: eorGE R8, R6, #3568
l317: subVCs R14, R11, R14
l318: b l324
l319: add R1, R0, #117
l320: rscs R0, R2, #8388608
l321: clz R3, R12
l322: clzMI R12, R14
l323: b l325
l324: b l320
l325: mvnGE R1, R10
l326: cmnEQ R5, #186368
l327: sub R2, R8, R1, ROR #9
l328: eors R6, R8, R5
l329: sbcPLs R6, R12, R10
l330: and R4, R4, #16449536
l331: mvnLTs R0, R12
l332: and R4, R1, R8, RRX 
l333: movMIs R0, R1
l334: andHI R5, R12, #63744
l335: orr R8, R5, R6, LSR #19
l336: movVCs R8, R10, RRX 
l337: tst R12, R11
l338: andNE R9, R8, #1212416
l339: tstVS R3, R6, RRX 
l340: rsc R10, R0, R8
l341: bGT l348
l342: subLT R3, R4, #1872
l343: eorNE R12, R11, #202375168
l344: teqLE R4, #8768
l345: tst R2, R7, LSL #0
l346: rscLTs R1, R2, R1
l347: cmnEQ R5, R10, ROR #23
l348: teq R15, R10, RRX 
l349: teq R3, R6, RRX 
l350: bicCCs R10, R4, #1879048197
l351: movLS R9, R7, ASR R10
l352: rsc R2, R11, R9, ROR #5
l353: str R5, [sp, #+28]!
l354: b l364
l355: clzHI R11, R2
l356: mvn R9, R11
l357: bic R7, R11, #58720256
l358: addVCs R5, R3, #49
l359: cmn R15, R12
l360: andLTs R1, R9, R6
l361: mvn R0, R1, LSR R12
l362: adcGTs R14, R10, #111616
l363: and R5, R11, #134144
l364: mov R5, R7
l365: cmnNE R6, R9, ROR R3
l366: andLT R3, R7, R5, LSR #30
l367: sbc R14, R4, R12, ROR #6
l368: add R9, R1, #3145728
l369: rscs R10, R14, R4, LSL #19
l370: add R3, R11, R4, ASR #12
l371: mvnVS R6, #5056
l372: teqGT R6, R8, LSR R10
l373: andVC R9, R8, #3072
l374: mvnCC R1, #556
l375: sbcs R5, R9, R5, RRX 
l376: rsbs R4, R9, R14
l377: cmn R6, #2384
l378: rsbCSs R3, R14, R5
l379: sub R1, R8, R8
l380: sbcEQ R11, R1, R15
l381: subs R4, R5, R8, LSL #6
l382: ands R6, R1, #11796480
l383: orrEQ R0, R14, R15
l384: eorPLs R3, R2, R10
l385: orrNEs R0, R7, R1, RRX 
l386: subVCs R11, R2, R0, ROR R4
l387: and R6, R1, R5, RRX 
l388: b l394
l389: add R1, R0, #53
l390: sub R12, R12, R11, LSR R3
l391: andLE R6, R6, R2, LSR R7
l392: rscMI R3, R10, R6, ASR R6
l393: b l395
l394: b l390
l395: cmnLE R7, R6, LSL R1
l396: b l397
l397: subGT R3, R9, R5
l398: rscLT R5, R8, R15, LSR #3
l399: teqVS R10, #-1879048183
l400: mov R4, #36
l401: ldr R12, [sp, -R4]
l402: clz R7, R4
l403: subEQ R4, R15, R6, ASR #19
l404: eorLTs R1, R5, R8
l405: movLTs R9, R2
l406: subs R7, R8, R15
l407: eorVC R10, R7, R15, ASR #4
l408: subs R6, R7, R5
l409: adcVC R1, R2, R10
l410: movPLs R10, R6, LSL R14
l411: b l413
l412: eors R10, R5, R11, ROR R11
l413: subs R3, R4, R9, ASR R8
l414: eors R0, R8, #39936
l415: adcLEs R10, R2, #1879048192
l416: clzPL R3, R2
l417: bLT l426
l418: add R1, R0, #119
l419: bicLT R0, R10, #3584
l420: bic R12, R14, #-2147483644
l421: cmpCC R3, #2144
l422: adcLTs R11, R15, #-1073741823
l423: tst R6, R3
l424: ands R10, R9, R2, ASR #12
l425: b l427
l426: b l419
l427: teq R10, R11, LSR #25
l428: subMI R10, R5, R15
l429: sub R9, R4, R5, LSL R0
l430: orrGEs R14, R5, R2, LSR #3
l431: adcs R1, R15, R9, ROR #30
l432: eorLEs R6, R0, R4
l433: bicEQs R10, R1, R10
l434: ldr R1, [sp, #+0]!
l435: subVCs R3, R0, R1, RRX 
l436: rscMIs R1, R11, R0, ASR #0
l437: bLS l441
l438: clz R11, R10
l439: andGE R12, R11, R2, ASR #30
l440: cmn R8, R10, LSL #4
l441: subEQ R2, R2, R15, RRX 
l442: strB R11, [sp, #-28]
l443: b l451
l444: add R1, R0, #229
l445: rsbVS R8, R7, #1073741843
l446: clzMI R6, R4
l447: sub R6, R10, #15859712
l448: adc R5, R4, R0, LSR #4
l449: subs R12, R11, R3, RRX 
l450: b l452
l451: b l445
l452: bLS l456
l453: add R1, R0, #82
l454: cmp R10, R3, RRX 
l455: b l457
l456: b l454
l457: subMIs R6, R7, R6
l458: ldr R8, [sp, #-44]
l459: subLSs R8, R4, R14, LSL R12
l460: clzMI R5, R14
l461: orrs R2, R2, R2, RRX 
l462: mvnLT R0, R8
l463: andCS R3, R7, #11
l464: subs R14, R9, R7
l465: andPL R8, R8, #128
l466: cmnLS R7, R3, RRX 
l467: subEQ R3, R3, #692
l468: b l475
l469: teq R4, R1, RRX 
l470: teq R12, R3, LSR #8
l471: cmpLS R3, R8, ASR R2
l472: subHIs R4, R14, R14, RRX 
l473: cmpVC R8, R3, LSL R3
l474: mvnGEs R3, R2, ASR #11
l475: movLE R3, R11
l476: cmp R3, #2030043136
l477: andGTs R9, R10, R9, RRX 
l478: eorCC R7, R4, R3, ROR R12
l479: andCC R1, R7, R5, LSL #22
l480: b l487
l481: tstGE R15, R1
l482: rsbs R9, R0, R1
l483: bic R1, R0, R7, LSR #18
l484: rsb R11, R2, R7, RRX 
l485: cmp R2, R12, RRX 
l486: rsc R14, R4, R14, LSR R4
l487: subLE R0, R1, #22528
l488: eorNE R5, R11, R11
l489: mvn R9, R5, LSR R1
l490: addGT R1, R8, #659456
l491: subs R1, R1, R2, RRX 
l492: cmn R4, R8, RRX 
l493: bLE l498
l494: add R1, R0, #208
l495: teqMI R4, R2, RRX 
l496: adcNEs R7, R15, R3
l497: b l499
l498: b l495
l499: orrLT R1, R3, #231424
l500: b l504
l501: add R1, R0, #160
l502: sbcGE R8, R2, R8
l503: b l505
l504: b l502
l505: cmpCS R11, R10
l506: cmnVC R12, R8
l507: ldr R7, [sp], #-44
l508: mvnLT R10, R8, RRX 
l509: subs R3, R3, #3538944
l510: mov R3, #54
l511: ldrB R5, [sp, +R3]
l512: orrLE R3, R10, R10
l513: orrHI R0, R8, #-1610612736
l514: sbcPL R14, R11, #1769472
l515: eors R1, R10, R12, LSR R0
l516: rsc R14, R11, #208896
l517: strNEB R8, [sp, #+28]
l518: subCCs R11, R9, R1
l519: mvn R0, R2, LSR #18
l520: movCCs R14, R2, LSR #9
l521: bGT l526
l522: add R1, R0, #94
l523: sbc R2, R5, R10, ROR #20
l524: orrGE R2, R3, #9699328
l525: b l527
l526: b l523
l527: and R3, R15, R12
l528: orr R11, R11, R15, RRX 
l529: cmn R15, R3
l530: bNE l538
l531: add R1, R0, #171
l532: adds R12, R6, R14
l533: andGEs R2, R5, R0, ASR R7
l534: add R2, R8, R9, ASR R14
l535: sbcVCs R5, R4, R9, LSR R4
l536: cmnLT R3, R4, ASR #27
l537: b l539
l538: b l532
l539: mvnVC R9, R7, ASR #21
l540: subLTs R11, R4, #782336
l541: sbcNEs R8, R14, R3, ASR R11
l542: mvnNE R14, R4, ROR R11
l543: rscVSs R14, R9, R7, LSL R8
l544: eorVC R9, R1, #114688
l545: mov R14, R11, ASR R6
l546: cmpGE R7, R3
l547: andGE R4, R12, R9, ASR #6
l548: adds R9, R1, R6, ROR #24
l549: mov R8, #4
l550: ldrHIB R8, [sp, -R8]
l551: tst R2, #1409286145
l552: addLT R1, R5, R5, LSR #12
l553: b l558
l554: add R1, R0, #72
l555: cmpLE R15, #352
l556: clzVC R3, R11
l557: b l559
l558: b l555
l559: adcGTs R1, R8, R10
l560: adc R2, R14, #958464
l561: cmp R2, #-1543503869
l562: subNE R9, R12, R7, RRX 
l563: bic R8, R14, R4
l564: sbcPL R10, R1, R4, ROR R8
l565: tstGT R3, R9, LSL R2
l566: addVC R2, R10, R11, LSL R0
l567: and R8, R3, R14
l568: add R1, R10, R5, LSR #13
l569: mov R10, #28
l570: ldr R6, [sp], +R10
l571: mvnPLs R4, #48758784
l572: subs R12, R1, R14
l573: rscs R5, R12, #344
l574: subGT R6, R6, #1342177292
l575: rsbEQs R0, R7, R2, RRX 
l576: mvnVC R11, #630784
l577: cmp R12, #376
l578: orrPLs R1, R9, R10
l579: adds R11, R2, #38
l580: bLS l585
l581: add R1, R0, #149
l582: adcs R4, R7, R12, LSL #15
l583: mvnEQ R14, #-1073741813
l584: b l586
l585: b l582
l586: b l595
l587: add R1, R0, #120
l588: rscPLs R12, R7, R0, LSR #29
l589: clzNE R4, R9
l590: mvns R11, R15, ASR #29
l591: rscVC R10, R6, R7, RRX 
l592: rscGT R4, R7, R10, LSL #25
l593: cmp R15, R14, ASR #7
l594: b l596
l595: b l588
l596: and R12, R14, R9, RRX 
l597: teq R14, R8, LSR R0
l598: ands R8, R6, R2, ROR #15
l599: orrHIs R8, R0, #377487360
l600: movs R8, R1, ROR #31
l601: bicCC R8, R14, #629145600
l602: bVS l611
l603: add R1, R0, #24
l604: bicLE R6, R2, R8
l605: teq R3, #9536
l606: movVCs R10, R10, LSL R2
l607: cmp R1, R10, RRX 
l608: rsb R10, R7, R15
l609: subLSs R9, R5, R11, RRX 
l610: b l612
l611: b l604
l612: mvn R3, R2, RRX 
l613: cmnVC R1, R2, ROR R5
l614: movLTs R6, R3, LSL R1
l615: sbcGE R0, R14, R10, LSL #4
l616: clzPL R0, R8
l617: subs R0, R1, R7, RRX 
l618: sbcCCs R2, R5, R1
l619: bLS l628
l620: add R1, R0, #151
l621: subVSs R5, R5, R6, ROR #17
l622: adds R12, R15, R0, LSL #0
l623: rsbEQ R11, R5, R8
l624: cmp R10, R14
l625: sbcEQ R5, R8, R12, LSL R2
l626: andEQs R8, R9, R8, LSR #0
l627: b l629
l628: b l621
l629: adcVCs R11, R12, R9, ROR #1
l630: andLEs R0, R2, R8, LSL R12
l631: mov R8, #23
l632: strGEB R2, [sp, -R8]
l633: eorGTs R9, R0, #39845888
l634: b l641
l635: eorLT R7, R4, R10
l636: rscs R2, R10, #905216
l637: eor R14, R11, R9, LSR R14
l638: sub R14, R12, R15
l639: sbc R1, R8, R15, ROR #31
l640: andGTs R4, R9, R14
l641: rsbs R6, R2, R5, ROR #12
l642: orrCS R3, R10, R1
l643: rscs R4, R4, R2
l644: mvns R8, R3, RRX 
l645: bGE l652
l646: add R1, R0, #112
l647: eorPL R5, R7, R0
l648: adds R8, R5, R14, LSR R14
l649: adc R7, R7, R0, LSR #29
l650: movGTs R0, R9, LSL R1
l651: b l653
l652: b l647
l653: cmnNE R7, R1, ASR R3
l654: clz R2, R8
l655: movLEs R10, R15, ASR #24
l656: strMIB R0, [sp, #-12]
l657: clz R8, R6
l658: subLS R9, R15, #26
l659: tst R2, R10, LSL #23
l660: orrLE R4, R5, R15, RRX 
l661: subVCs R2, R3, R6
l662: movCSs R2, #1325400064
l663: movHI R1, #37120
l664: bics R6, R12, #21757952
l665: cmn R0, R15
l666: b l675
l667: add R1, R0, #230
l668: eorCCs R4, R7, R9, ASR #24
l669: rscGT R9, R0, R3
l670: subPL R1, R8, R15, LSL #24
l671: adc R10, R5, R12
l672: orrCC R2, R8, #8323072
l673: mvns R8, R6, RRX 
l674: b l676
l675: b l668
l676: rsbNE R4, R8, #157286400
l677: andCSs R14, R7, #950272
l678: strCS R2, [sp, #+16]
l679: teqCS R3, R2
l680: sub R14, R4, #115343360
l681: cmp R11, R6, ROR #26
l682: mov R6, #21
l683: strB R5, [sp, -R6]
l684: bLE l692
l685: add R1, R0, #235
l686: teqCC R1, R4, ROR R1
l687: subLT R14, R10, R6
l688: addEQs R12, R0, R4, LSL #3
l689: mvnGE R10, #32512
l690: teq R0, #209715200
l691: b l693
l692: b l686
l693: rscCC R12, R15, R3, RRX 
l694: b l701
l695: add R1, R0, #134
l696: sbc R14, R7, R11
l697: movNEs R12, R9, LSL #12
l698: clzLS R3, R10
l699: sbcCS R1, R11, R4, ROR R12
l700: b l702
l701: b l696
l702: adcMI R11, R2, R11
l703: strLTB R12, [sp, #-3]
l704: movLTs R4, R7, RRX 
l705: subNEs R6, R3, R9, ROR R9
l706: b l708
l707: add R4, R11, R11, ASR R12
l708: subVS R6, R8, R2, ASR #29
l709: orrCCs R5, R10, #25600
l710: teqVS R1, R14, ROR R5
l711: sbc R1, R8, R10, ASR R1
l712: rscHIs R7, R8, R8, LSL #24
l713: cmp R14, #199
l714: movCSs R12, #1023410176
l715: cmnGT R3, R15
l716: mvns R9, R10, ASR #15
l717: adds R2, R15, #31744
l718: clzPL R4, R2
l719: bHI l726
l720: add R1, R0, #84
l721: rsbPLs R2, R6, R5, LSR R10
l722: tstLE R9, R12
l723: bicEQs R1, R6, R8, ROR #20
l724: rscLSs R3, R14, R14, LSL R1
l725: b l727
l726: b l721
l727: rsbLT R3, R1, R3, ROR R2
l728: bCC l734
l729: add R1, R0, #246
l730: rsbLSs R0, R14, R2, ASR #10
l731: bicGT R4, R9, R9, LSR #14
l732: clz R6, R9
l733: b l735
l734: b l730
l735: b l741
l736: add R1, R0, #195
l737: cmn R5, #872
l738: subLE R3, R0, #11
l739: mvn R1, R4, RRX 
l740: b l742
l741: b l737
l742: bicPL R8, R9, R10, ASR #26
l743: bGT l748
l744: orr R0, R15, R10, RRX 
l745: mvnCCs R9, R7, RRX 
l746: add R9, R7, R5, LSR #22
l747: eorCSs R9, R10, R3, ROR R12
l748: bic R12, R0, R5
l749: mvns R12, R5, ASR #0
l750: bLE l754
l751: add R1, R0, #165
l752: teqPL R8, #1879048199
l753: b l755
l754: b l752
l755: rscLE R5, R7, #155189248
l756: b l761
l757: add R1, R0, #231
l758: mvnNEs R8, R6, ASR #22
l759: addNE R11, R11, R11
l760: b l762
l761: b l758
l762: movMI R2, R7, ASR #4
l763: orrMI R0, R3, R8
l764: bNE l769
l765: add R1, R0, #3
l766: rscs R5, R12, R9, LSL #16
l767: rsc R3, R15, R1
l768: b l770
l769: b l766
l770: tstHI R0, R9, ASR #26
l771: subs R11, R14, R8, LSR R8
l772: rsbCCs R6, R2, R8
l773: adcLSs R14, R10, #225280
l774: sub R0, R3, R5, ASR #20
l775: rsbMI R12, R12, R6, ROR #26
l776: orrVCs R12, R3, R0
l777: orrLTs R2, R1, #1440
l778: rsbVC R4, R4, #34603008
l779: rsbPL R8, R1, R1, LSL #29
l780: bicCSs R4, R5, #-2013265918
l781: tstMI R11, R6, RRX 
l782: subCS R2, R4, R1, LSL #18
l783: eors R7, R12, R9, RRX 
l784: sbc R1, R11, R0, LSR R9
l785: b l793
l786: orrEQ R12, R6, R0, ASR #29
l787: sbcLTs R2, R12, R0, LSR #9
l788: eors R4, R0, R2, LSL R2
l789: adds R9, R5, R0, LSL #16
l790: tst R12, #-738197503
l791: adcHI R3, R7, R6, RRX 
l792: subLEs R6, R14, R5, LSR #6
l793: clzLT R0, R8
l794: ldr R9, [sp], #+16
l795: mov R2, #24
l796: str R10, [sp], -R2
l797: eorLSs R6, R3, #1536
l798: mvnEQ R14, R14, ASR #5
l799: eor R10, R4, #-1073741810
l800: orr R6, R6, R1, LSR R9
l801: subGT R14, R11, R3, LSR R0
l802: sbcMI R6, R8, R10
l803: tstCS R0, R5, RRX 
l804: rsbLT R0, R11, R11, ASR R1
l805: movVCs R8, R0, LSR #26
l806: adds R3, R10, R7, LSL #3
l807: and R4, R12, #243269632
l808: bCS l816
l809: add R1, R0, #48
l810: clzVS R9, R7
l811: bicCSs R4, R3, R4, RRX 
l812: orrs R12, R7, R12
l813: adcLT R3, R12, R10, ASR #28
l814: orrNEs R6, R0, R12, LSL #21
l815: b l817
l816: b l810
l817: adcMI R12, R3, R6, ROR R4
l818: tst R11, R3, RRX 
l819: cmpMI R10, R2, ROR R11
l820: rsbMIs R7, R10, R10
l821: mov R7, #18
l822: ldrEQB R1, [sp, +R7]
l823: bCS l826
l824: bic R6, R7, R9
l825: mvnLS R8, R8, LSL #29
l826: subEQ R4, R4, R9, ROR R11
l827: teq R14, R10
l828: mvnGT R5, R9, ROR R12
l829: teqEQ R14, R9, ROR R1
l830: cmn R11, #93323264
l831: mov R3, #14
l832: strB R4, [sp, -R3]
l833: movGEs R6, R4
l834: eors R14, R0, #541065216
l835: cmpMI R11, R6
l836: cmnGT R10, R14, LSL R5
l837: rsbVCs R2, R7, R4, RRX 
l838: bLT l846
l839: add R1, R0, #249
l840: cmnGE R14, R10, LSR #25
l841: clz R2, R3
l842: adcs R6, R7, R4
l843: rsbCSs R12, R5, R4, RRX 
l844: clzCS R6, R12
l845: b l847
l846: b l840
l847: andEQs R11, R12, R15, ASR #2
l848: mvn R12, R9, LSL #30
l849: bicLEs R10, R12, R12
l850: bicLE R4, R12, R14, ROR #12
l851: rscGE R14, R10, R8, ASR R0
l852: sbcVCs R10, R11, #22528
l853: cmp R5, R8, LSR #0
l854: b l858
l855: adds R1, R10, R2, ROR #16
l856: teqVC R6, R4, RRX 
l857: addHIs R6, R7, R6, RRX 
l858: subs R7, R5, R4, RRX 
l859: eorCCs R9, R3, R14, RRX 
l860: bics R7, R10, R0, RRX 
l861: add R6, R10, R0, ROR R11
l862: eorGT R8, R6, R1
l863: cmnGT R9, R8
l864: sub R2, R3, R5, ROR #31
l865: eors R14, R2, #-2147483603
l866: rscPL R4, R3, #167772160
l867: cmnPL R2, R4, RRX 
l868: b l873
l869: add R1, R0, #80
l870: subMIs R5, R3, #1998848
l871: sbcLT R5, R15, R15, LSL #19
l872: b l874
l873: b l870
l874: bGE l876
l875: mvnEQs R0, #16384
l876: adcGE R4, R12, R7, RRX 
l877: clz R6, R11
l878: teq R10, R8
l879: rscCCs R11, R1, R9, LSL #12
l880: cmp R1, R11
l881: bicGEs R5, R7, R15, LSL #13
l882: ands R6, R6, R12
l883: sub R1, R6, #9344
l884: subs R9, R5, #2063597568
l885: sbc R0, R10, R0
l886: teqHI R4, R4, LSR #30
l887: bCC l891
l888: ands R11, R15, R1
l889: sbcs R7, R3, R2, LSR #31
l890: clz R3, R5
l891: adcLE R11, R3, R14, LSL #10
l892: orr R0, R12, R9
l893: teq R4, R0, ROR #4
l894: tstNE R7, #79691776
l895: andMI R8, R2, #12352
l896: cmpCC R1, R10, LSR #28
l897: subPL R12, R11, R9, ROR #12
l898: subGEs R8, R4, #-2147483627
l899: mvns R8, R8, ROR R5
l900: adcLEs R5, R4, R4
l901: addVCs R6, R1, R8, LSL #13
l902: rscCCs R2, R14, R9
l903: mvnCCs R6, #167
l904: rsbCS R7, R2, R12
l905: b l910
l906: eors R3, R11, R8
l907: eors R8, R14, #583008256
l908: subVCs R0, R11, R3
l909: cmn R5, R3
l910: bicNE R3, R11, #987136
l911: str R2, [sp, #+16]
l912: mvnNEs R12, R2, LSR R6
l913: rscs R6, R9, R9, LSL R9
l914: bPL l923
l915: add R1, R0, #62
l916: mvnHI R8, R8, ROR R4
l917: mvns R12, R12
l918: bicGE R3, R9, #201
l919: rsbVS R5, R1, #22020096
l920: cmnGT R4, R9, ROR #12
l921: clzLT R4, R9
l922: b l924
l923: b l916
l924: sbcHI R7, R12, R11, LSL #5
l925: cmnMI R1, #6881280
l926: andLTs R6, R12, R10, LSL R4
l927: tstGT R8, R9, ASR #20
l928: orrGE R9, R2, R2, ASR #1
l929: mvn R4, R9, LSL R0
l930: clzHI R9, R1
l931: clz R4, R10
l932: subLT R3, R3, R6, RRX 
l933: andCS R9, R1, R6, ROR #17
l934: b l941
l935: eorMI R10, R7, R7, ROR R2
l936: subs R8, R10, #826277888
l937: cmpVS R10, R5
l938: orrCC R2, R6, #1828716544
l939: teq R2, R15
l940: mvnLS R9, R7
l941: cmpVS R1, R15
l942: subs R4, R5, R3
l943: subCC R14, R4, #1946157058
l944: str R10, [sp, #-24]
l945: cmp R0, #19136512
l946: sbc R11, R0, #34865152
l947: b l955
l948: add R1, R0, #38
l949: tstGE R6, R2, ROR #3
l950: rscHIs R8, R12, R5, LSR R3
l951: eorLE R8, R11, #7104
l952: sub R12, R12, R8
l953: movVCs R10, R12, ASR R11
l954: b l956
l955: b l949
l956: teqHI R2, R7, LSL R9
l957: eorGEs R1, R11, R10, ROR #19
l958: rsbs R8, R11, R9, ASR #27
l959: cmnLE R12, #928
l960: rsc R0, R11, R12, ROR #23
l961: adcLSs R8, R9, R11, LSR R3
l962: bics R10, R1, #655360
l963: rsbNE R8, R15, R0, ROR #15
l964: tstMI R0, R3, RRX 
l965: mov R7, #17
l966: ldrB R12, [sp, +R7]
l967: rscs R14, R9, R14
l968: teqVC R1, R9
l969: clz R8, R3
l970: mov R5, #4
l971: strNE R1, [sp, +R5]
l972: bNE l982
l973: movs R8, R8
l974: adcs R7, R9, R14
l975: andCSs R14, R15, R2, ROR #8
l976: cmn R7, #164
l977: ands R9, R6, R9, ASR #30
l978: adcLTs R11, R9, R15, RRX 
l979: clzVS R9, R5
l980: orrNEs R3, R5, R11, ROR #16
l981: adcs R2, R10, R6, LSR R14
l982: bicLT R3, R15, R5
l983: cmpPL R2, R0, RRX 
l984: orrEQ R9, R9, R2
l985: tstHI R14, R15, ASR #26
l986: rsbCSs R4, R10, R8, LSR #30
l987: subLEs R1, R1, R5, ASR R9
l988: cmpLT R10, R6, ASR #19
l989: rsb R10, R8, R3
l990: addLEs R12, R10, R15
l991: mvnLS R9, R5, LSR R7
l992: eor R14, R8, R10, ROR #16
l993: b l994
l994: rscHI R0, R1, #54272
l995: rsbVC R1, R4, R14, ROR #14
l996: cmnMI R6, R5, ASR R6
l997: rsbVS R9, R6, #81920
l998: cmpLE R2, #12910592
l999: adcVCs R4, R3, R15, ROR #24
l1000: subVCs R10, R3, #66846720
l1001: teqNE R10, R15, LSR #4
l1002: andEQ R10, R5, R6
l1003: sub R0, R7, #29884416
l1004: bicHIs R5, R12, R5, RRX 
l1005: rsbHIs R3, R1, R6, ASR #25
l1006: cmnVS R15, R9, LSL #0
l1007: bLE l1012
l1008: add R1, R0, #248
l1009: rsb R0, R6, R11, ASR R3
l1010: adc R3, R14, R9, LSL #26
l1011: b l1013
l1012: b l1009
l1013: andLS R6, R10, R3, RRX 
l1014: sub R3, R10, #3296
l1015: adcs R9, R12, #13238272
l1016: addCS R5, R15, R9, LSR #11
l1017: movs R10, R11, LSL R4
l1018: sbcs R11, R5, R12, ROR R0
l1019: mvnGEs R8, #1472
l1020: rscPL R12, R4, #3072
l1021: tstVS R10, R3, LSR R5
l1022: eorVC R2, R4, R7
l1023: subs R3, R11, R2, ASR #17
l1024: sbcMIs R10, R9, R8, LSL #11
l1025: teq R5, R10, ASR #20
l1026: orrVSs R1, R0, R12, ROR #12
l1027: orrs R8, R7, R1, LSL #6
l1028: subs R0, R11, #16384
l1029: adcCCs R3, R4, R6
l1030: mov R3, #37
l1031: strB R6, [sp, +R3]
l1032: adc R11, R10, #31488
l1033: mov R6, #28
l1034: ldr R6, [sp, -R6]!
l1035: ands R10, R3, R3
l1036: b l1043
l1037: add R1, R0, #92
l1038: tstGT R9, R9, LSL #0
l1039: bicVSs R12, R15, #-67108863
l1040: rsbGTs R7, R9, R5
l1041: bicCS R8, R4, R3, LSL #12
l1042: b l1044
l1043: b l1038
l1044: bHI l1049
l1045: add R1, R0, #150
l1046: eor R6, R6, R11, LSL R7
l1047: rsbGTs R8, R0, #64
l1048: b l1050
l1049: b l1046
l1050: teq R15, R5
l1051: b l1054
l1052: sbcs R3, R7, R7, LSR R3
l1053: cmn R11, R3, ROR #11
l1054: cmpLS R11, R9
l1055: subs R12, R11, #606208
l1056: subs R2, R2, R14, RRX 
l1057: andPL R8, R6, R8, RRX 
l1058: cmnCS R14, R11, RRX 
l1059: bHI l1065
l1060: add R1, R0, #239
l1061: movHIs R7, R10
l1062: tst R11, R1, ROR R10
l1063: eorEQ R10, R9, R1, ROR #25
l1064: b l1066
l1065: b l1061
l1066: orrCCs R12, R11, R3
l1067: adc R1, R14, R2, ASR R12
l1068: andCS R4, R10, R6, LSL #5
l1069: clz R2, R12
l1070: adc R3, R14, R5, LSL R12
l1071: subVCs R9, R5, R6, ROR R14
l1072: cmnPL R9, R8, RRX 
l1073: rsbVC R8, R7, R1, RRX 
l1074: rsbGEs R7, R2, R10, LSR R6
l1075: bicGE R4, R2, #3227648
l1076: subs R0, R10, R5, LSL #19
l1077: clzNE R10, R11
l1078: adc R4, R3, #268435457
l1079: rscHIs R4, R1, R4, ROR R2
l1080: rsb R3, R5, #255852544
l1081: strLT R0, [sp, #+8]
l1082: bCS l1083
l1083: rscVC R8, R14, R14, LSL #22
l1084: tst R6, R11
l1085: rscs R4, R6, R9, LSL R3
l1086: bVS l1093
l1087: add R1, R0, #51
l1088: rsc R11, R6, R11, LSR R3
l1089: subPLs R2, R11, #1052770304
l1090: tst R8, R3, ROR #28
l1091: adcMI R4, R3, R8, ASR R11
l1092: b l1094
l1093: b l1088
l1094: addNEs R7, R11, R4, ASR #4
l1095: bicGEs R12, R12, R12
l1096: b l1100
l1097: add R1, R0, #167
l1098: eor R5, R12, #1073741879
l1099: b l1101
l1100: b l1098
l1101: mvnGEs R12, R7, ASR R10
l1102: mvnMI R6, R10, RRX 
l1103: rsbCC R8, R2, #53248
l1104: orrLEs R11, R6, R7, ROR R5
l1105: cmpMI R6, #-889192448
l1106: mov R8, #28
l1107: str R7, [sp, +R8]
l1108: sbcs R8, R2, R0, RRX 
l1109: strB R11, [sp, #+75]
l1110: mvnHI R1, R8
l1111: orr R7, R10, R12, ROR R12
l1112: mvnPLs R2, R5, LSL #27
l1113: cmp R14, #920
l1114: movs R8, #335544320
l1115: mvnLSs R12, R11, LSR #16
l1116: andNEs R2, R2, #1174405120
l1117: b l1124
l1118: add R1, R0, #214
l1119: orrVC R1, R6, #688
l1120: mov R8, R0, ASR #31
l1121: orr R0, R0, R3, LSR #7
l1122: subs R4, R1, R1
l1123: b l1125
l1124: b l1119
l1125: movHI R1, R0, ROR R9
l1126: andVC R3, R1, R15, RRX 
l1127: rsbGTs R7, R3, R4, LSR #9
l1128: eorLEs R9, R6, #3719168
l1129: movCC R14, R3
l1130: rsc R11, R10, R6, ROR R4
l1131: cmpLE R3, R3
l1132: cmnCC R8, R1, LSR R4
l1133: eor R4, R5, R7
l1134: rsbEQs R0, R9, R15, LSL #22
l1135: cmp R10, R2
l1136: bicMIs R5, R8, #3653632
l1137: mov R7, #41
l1138: strEQB R2, [sp, +R7]
l1139: rscs R7, R0, R0, ASR R1
l1140: sub R7, R7, R1, LSL R1
l1141: b l1148
l1142: add R1, R0, #185
l1143: cmnLS R8, R6
l1144: subGT R11, R11, R11
l1145: subs R7, R1, R11
l1146: rscVCs R11, R0, R7, ASR #8
l1147: b l1149
l1148: b l1143
l1149: teqCC R4, #30932992
l1150: sub R12, R5, #1073741837
l1151: addLSs R8, R5, R10
l1152: mvn R8, R6
l1153: orrCS R0, R1, R11, ASR #10
l1154: bVS l1161
l1155: cmp R14, #0
l1156: cmnHI R12, R8
l1157: rscs R12, R8, #608174080
l1158: and R5, R7, #6016
l1159: tst R7, R0, ASR #6
l1160: teqHI R11, #1073741828
l1161: eor R11, R11, R14, ROR #30
l1162: adcCSs R9, R9, R14
l1163: sbcLE R7, R7, R14, ROR #21
l1164: addHIs R0, R3, #2304
l1165: rsb R4, R3, R0, ROR R9
l1166: mvns R10, R15, LSL #29
l1167: tst R1, #141557760
l1168: cmn R15, R12, RRX 
l1169: mov R1, #8
l1170: ldr R8, [sp, +R1]!
l1171: bic R14, R2, R9, LSR R0
l1172: addVS R7, R12, R4, LSR R11
l1173: sub R0, R9, R12, ROR #29
l1174: and R14, R8, R6, LSL #9
l1175: addCSs R3, R11, #43
l1176: b l1179
l1177: mvnHIs R6, R9, LSR R8
l1178: mvn R9, #251658240
l1179: sub R5, R15, R14
l1180: ands R0, R14, R2, RRX 
l1181: rsbLEs R6, R7, R2, ASR R0
l1182: teqVC R4, #245760
l1183: eorHI R6, R6, R0
l1184: add R3, R5, R5, LSR #16
l1185: sbcLS R5, R4, #69206016
l1186: movVSs R5, R11
l1187: cmnLS R11, R10, RRX 
l1188: subLT R3, R7, R5
l1189: bicMIs R0, R11, R14, RRX 
l1190: adcCSs R14, R6, R10, LSR #19
l1191: ands R3, R9, #-268435455
l1192: tst R0, R2, ASR #19
l1193: cmn R9, R0, LSR R2
l1194: mvn R10, R10, ROR R6
l1195: orrMIs R8, R10, R5
l1196: tst R2, R7, ASR #23
l1197: bVC l1200
l1198: cmn R2, R10
l1199: orr R8, R2, R11, RRX 
l1200: clz R5, R11
l1201: bVC l1207
l1202: add R1, R0, #20
l1203: eorLTs R12, R6, R14
l1204: adds R11, R5, #22528
l1205: sbcs R4, R14, R6
l1206: b l1208
l1207: b l1203
l1208: subGT R14, R7, #1163264
l1209: tstLE R0, R10
l1210: clzCC R14, R9
l1211: add R11, R0, #603979776
l1212: add R5, R6, R9
l1213: tstGE R5, R11
l1214: bGE l1223
l1215: add R1, R0, #172
l1216: clzVC R7, R1
l1217: mvnGE R1, #1073741839
l1218: cmnGT R0, R15, ROR #30
l1219: orrLSs R3, R12, R14, LSL #17
l1220: addCCs R10, R6, R5, LSR R11
l1221: teqLE R10, R6, LSR R3
l1222: b l1224
l1223: b l1216
l1224: bVS l1231
l1225: add R1, R0, #79
l1226: rsbCC R0, R7, #219
l1227: adds R14, R1, R14, LSR R12
l1228: mvnGT R2, #3200
l1229: sub R12, R15, R9, ROR #5
l1230: b l1232
l1231: b l1226
l1232: bicEQs R10, R7, R15
l1233: tstPL R6, R3, LSR R2
l1234: teqVS R7, #532
l1235: bVC l1242
l1236: teq R4, R3, RRX 
l1237: adcGT R6, R0, R9
l1238: sub R12, R14, R7, RRX 
l1239: addCCs R6, R10, R2
l1240: sub R2, R7, R9, ASR #21
l1241: adcHIs R5, R10, R8, LSL R5
l1242: bic R5, R4, R15, RRX 
l1243: andGEs R9, R11, #528384
l1244: bLE l1252
l1245: add R1, R0, #69
l1246: bics R5, R11, R5, LSL R9
l1247: tstNE R0, R4, ASR R14
l1248: ands R4, R12, R6, LSR R9
l1249: subCS R4, R2, R5
l1250: eors R5, R2, R0, RRX 
l1251: b l1253
l1252: b l1246
l1253: rsc R9, R14, R11
l1254: bHI l1259
l1255: adc R0, R6, R4
l1256: subPLs R9, R11, R4
l1257: ands R9, R6, R6
l1258: add R8, R6, #160768
l1259: teq R11, R1, RRX 
l1260: cmpNE R5, #-1610612735
l1261: rsbs R0, R5, R14
l1262: rsbs R1, R12, R1, LSR #25
l1263: mov R1, #3456
l1264: rsc R12, R14, R0, ROR R10
l1265: subs R8, R8, R3, LSR R7
l1266: cmpPL R0, #472
l1267: addLE R10, R12, #47104
l1268: sbcVS R8, R8, R8, LSL R4
l1269: sbcPL R4, R1, #1409286144
l1270: addLS R5, R9, R0, RRX 
l1271: subLTs R8, R10, #-1879048192
l1272: orrs R0, R6, R1, LSR #30
l1273: cmp R5, #-536870911
l1274: b l1281
l1275: sbcs R5, R5, R6, LSR R5
l1276: andLSs R4, R4, R4, ROR R6
l1277: and R0, R10, R10, LSL #24
l1278: addGTs R9, R9, R5, RRX 
l1279: rsbs R14, R11, R14
l1280: tst R0, #20
l1281: sbcs R14, R12, R4, ASR #25
l1282: orrLE R0, R11, R6, ASR #24
l1283: rscEQ R9, R12, #82837504
l1284: subLT R10, R6, R0, ROR #14
l1285: b l1289
l1286: add R1, R0, #94
l1287: eor R1, R6, #13565952
l1288: b l1290
l1289: b l1287
l1290: bic R5, R2, #253952
l1291: orr R12, R11, R12, RRX 
l1292: sub R8, R7, R7
l1293: rsc R7, R11, R0, LSR #3
l1294: sbcHI R1, R15, R0
l1295: adcHIs R12, R9, R11, ROR R14
l1296: andMI R4, R8, R2, RRX 
l1297: b l1304
l1298: cmpCC R5, R14, LSR R7
l1299: clz R6, R8
l1300: subGT R7, R10, R8, ROR #30
l1301: teqLE R0, R3, LSL R8
l1302: movHI R1, R2
l1303: orrVC R5, R2, R10, LSL #31
l1304: teq R5, R2
l1305: andPL R5, R0, R6
l1306: rscs R3, R12, R2, LSR #24
l1307: eorEQ R12, R9, #58
l1308: cmp R4, R14, ROR #14
l1309: eors R10, R7, R11, ROR #14
l1310: clzEQ R7, R9
l1311: rsbLS R7, R0, #12976128
l1312: tstCS R3, R8, LSR #24
l1313: rscLSs R1, R8, R6, LSR R10
l1314: adds R10, R2, #167936
l1315: mov R10, #32
l1316: strPLB R14, [sp, +R10]
l1317: str R8, [sp, #+28]
l1318: bNE l1321
l1319: subNEs R10, R5, #479232
l1320: subs R11, R8, R3
l1321: cmn R9, R9
l1322: cmp R4, #6029312
l1323: add R8, R7, R9, LSR #30
l1324: cmp R8, R1
l1325: bVC l1331
l1326: add R1, R0, #194
l1327: subLS R9, R1, R4
l1328: andGTs R3, R7, R4
l1329: orrs R8, R4, #1073741826
l1330: b l1332
l1331: b l1327
l1332: mov R2, #44
l1333: str R6, [sp, +R2]
l1334: rsc R9, R3, R9, RRX 
l1335: b l1340
l1336: add R1, R0, #233
l1337: rscMIs R3, R3, #27392
l1338: rscs R12, R15, #247463936
l1339: b l1341
l1340: b l1337
l1341: b l1351
l1342: cmn R2, R1
l1343: clzGT R10, R7
l1344: rsbs R11, R6, R15, RRX 
l1345: subLS R14, R14, R8
l1346: clzPL R4, R0
l1347: sbcs R5, R8, #20447232
l1348: rsbGEs R10, R5, R3, RRX 
l1349: clzLT R7, R5
l1350: clz R4, R2
l1351: mvnLTs R2, R5
l1352: cmp R5, R7, ASR R4
l1353: b l1355
l1354: subGT R5, R2, #28672
l1355: subVSs R3, R14, R12, RRX 
l1356: eorHI R3, R10, R2
l1357: sbcs R9, R3, R4, LSL R10
l1358: sbcs R1, R3, #1968
l1359: subCS R4, R4, R4, ASR #3
l1360: bCC l1368
l1361: eorGE R3, R0, R4
l1362: subLTs R3, R10, R3, ASR #26
l1363: subNEs R5, R4, R3
l1364: sub R6, R15, #8716288
l1365: clz R10, R9
l1366: movLT R8, R9
l1367: sbcs R11, R7, R1
l1368: adcNE R5, R3, R10, ASR R10
l1369: orrs R7, R10, R15, RRX 
l1370: ands R1, R14, R5, ROR R8
l1371: b l1379
l1372: subLEs R2, R11, R12, LSL R14
l1373: andEQs R9, R0, R5
l1374: clz R14, R11
l1375: addNEs R10, R14, R4
l1376: cmp R4, R1
l1377: subs R12, R4, R14, ROR #25
l1378: rscLSs R11, R1, #461373440
l1379: rsbs R3, R4, R1, RRX 
l1380: clzMI R9, R0
l1381: rsbs R6, R10, R5, ROR R7
l1382: mvnCCs R1, R6, LSR #9
l1383: orrLSs R9, R11, R15, ASR #4
l1384: rsbs R7, R10, R10
l1385: bGE l1391
l1386: add R1, R0, #163
l1387: adc R0, R11, R7
l1388: sbcLEs R12, R11, #212992
l1389: cmpMI R11, #2015232
l1390: b l1392
l1391: b l1387
l1392: eorGTs R5, R9, R4, ASR #11
l1393: cmnNE R0, R14, RRX 
l1394: mov R0, R12, LSR #31
l1395: addLE R11, R14, #3808
l1396: subs R8, R14, #536870922
l1397: cmn R6, R7, LSR R7
l1398: rscVSs R5, R5, R3, LSL R5
l1399: clzGE R1, R4
l1400: and R14, R7, R9, ROR R3
l1401: eor R7, R15, R7
l1402: mvn R8, R8
l1403: rscLE R11, R9, R7, RRX 
l1404: movCC R1, R9, RRX 
l1405: adds R6, R14, #1200
l1406: eorPL R4, R6, #1769472
l1407: rsbs R6, R6, R12, ASR R6
l1408: mov R12, R6, LSL #26
l1409: movVSs R7, R10, LSR #19
l1410: bCS l1411
l1411: adcGEs R0, R6, R1, ROR #4
l1412: bicNE R10, R11, #792
l1413: bLE l1419
l1414: teq R6, R6, RRX 
l1415: clz R7, R3
l1416: cmp R10, R14, RRX 
l1417: mvns R3, #-1157627904
l1418: rscGEs R9, R6, #5696
l1419: movGE R5, #-2147483637
l1420: eorCSs R0, R6, R12, LSL #28
l1421: movMIs R3, R1
l1422: adcGT R7, R11, R11
l1423: adds R5, R10, R15
l1424: rsc R0, R9, #805306375
l1425: sub R9, R3, R5, ROR #6
l1426: tstVC R0, R12, ROR R6
l1427: sub R8, R14, R5, RRX 
l1428: andLE R10, R9, #-1476395008
l1429: and R6, R9, R9, RRX 
l1430: bNE l1436
l1431: add R1, R0, #26
l1432: teqLE R8, #720896
l1433: orrs R6, R11, R5
l1434: andMI R2, R5, R6, ROR R4
l1435: b l1437
l1436: b l1432
l1437: teq R0, R7, ASR R5
l1438: mvnGEs R12, R8, ROR #2
l1439: ldrVCB R0, [sp, #+31]
l1440: bCC l1444
l1441: movGTs R14, #1073741832
l1442: addLEs R0, R9, R11
l1443: tst R2, #2621440
l1444: bicCC R4, R14, R3, LSL R3
l1445: b l1446
l1446: rscs R9, R4, #122880
l1447: clzLS R1, R10
l1448: rsb R9, R4, R8
l1449: andEQs R10, R11, #13303808
l1450: orrLE R8, R12, #146
l1451: add R10, R6, R2
l1452: mov R11, #20
l1453: strVCB R8, [sp, +R11]
l1454: orr R1, R1, R1
l1455: bicLEs R1, R5, R0, RRX 
l1456: bLE l1465
l1457: add R1, R0, #171
l1458: clz R5, R3
l1459: orrEQs R5, R5, R6, ASR R9
l1460: cmn R14, R0, ASR #13
l1461: mvns R3, R3, RRX 
l1462: cmn R6, R1, LSR R7
l1463: sbcs R8, R2, #62720
l1464: b l1466
l1465: b l1458
l1466: rscCS R1, R0, #2336
l1467: mvnVSs R11, R10, LSR #13
l1468: addPL R11, R3, R4
l1469: sbcMIs R7, R2, R10
l1470: b l1475
l1471: sub R5, R11, R11, ASR R5
l1472: eorHI R1, R4, R6, LSL R3
l1473: subEQs R8, R8, R6, LSL R9
l1474: tstLS R9, R2, RRX 
l1475: subs R9, R2, R5, LSR R1
l1476: cmp R8, #38
l1477: addVS R3, R7, R6
l1478: cmnLT R3, #-939524093
l1479: andEQ R3, R7, #1280
l1480: cmnPL R6, R0, LSR #20
l1481: adcVSs R3, R1, R8, ROR #24
l1482: rsb R8, R11, R10
l1483: eor R11, R2, R8, ROR R2
l1484: movs R3, #30
l1485: eorPLs R5, R3, R8, LSR R3
l1486: eorMI R12, R0, R14
l1487: subVSs R9, R3, R3
l1488: orrs R8, R11, #14155776
l1489: subEQ R1, R8, #931135488
l1490: orrVSs R8, R3, #168
l1491: clzLE R0, R9
l1492: subs R11, R7, R3
l1493: and R0, R14, #1359872
l1494: bGE l1504
l1495: sub R5, R2, R12, LSL R11
l1496: rsb R8, R11, R10
l1497: subHI R7, R0, R11
l1498: subMI R14, R5, R3
l1499: tstVC R2, R0
l1500: adcGTs R2, R2, #1207959552
l1501: mvns R14, #1073741835
l1502: subGEs R12, R5, #2146304
l1503: orrMI R0, R2, R1
l1504: orrs R12, R4, #41984
l1505: and R9, R12, R1, LSL R11
l1506: ands R7, R5, R7
l1507: bicMIs R9, R9, #595591168
l1508: bicLTs R12, R1, R9, ASR R14
l1509: b l1516
l1510: add R1, R0, #26
l1511: orrLSs R5, R10, R1
l1512: sub R10, R14, R12
l1513: rsbEQ R14, R0, R5
l1514: cmnNE R14, R6, LSR #18
l1515: b l1517
l1516: b l1511
l1517: rsb R7, R15, R12
l1518: rsc R4, R11, #622592
l1519: rsbVSs R0, R10, R10, LSR R2
l1520: rscs R14, R5, R2
l1521: b l1523
l1522: mvn R11, #-1073741769
l1523: clzVC R2, R3
l1524: rsb R8, R4, #34
l1525: tstCS R9, R12, ROR R8
l1526: bics R1, R2, R12, LSL R14
l1527: ldrGTB R0, [sp, #+25]
l1528: bGT l1537
l1529: add R1, R0, #8
l1530: mvn R10, R5, LSR R2
l1531: clzNE R4, R4
l1532: clz R3, R11
l1533: subCCs R5, R12, R1, ASR #28
l1534: cmnGT R3, #3440640
l1535: subVC R14, R7, #147849216
l1536: b l1538
l1537: b l1530
l1538: sbcVS R0, R2, #-2147483597
l1539: clz R10, R10
l1540: eor R9, R12, R12, ASR #11
l1541: teq R12, #155648
l1542: cmnVS R0, #536870920
l1543: ands R14, R1, R7
l1544: mov R5, #0
l1545: ldr R4, [sp], +R5
l1546: bNE l1547
l1547: sbc R14, R3, R2
l1548: tstGT R0, R3, ASR R5
l1549: sbcLT R4, R11, #987136
l1550: mvnLT R3, R5
l1551: rscPL R2, R3, #212
l1552: cmpMI R0, R8, ASR #2
l1553: cmnLE R1, R1, LSL #15
l1554: rsc R0, R11, R4
l1555: b l1560
l1556: orr R9, R9, R6
l1557: adcs R12, R0, R14, RRX 
l1558: movLE R6, #-469762045
l1559: clz R9, R12
l1560: eors R5, R3, #572
l1561: tstCC R1, R5
l1562: eorLEs R1, R14, R2, ASR R0
l1563: cmp R15, #6272
l1564: mvnHI R9, R11, ROR R3
l1565: sbcs R0, R7, #3712
l1566: subHI R10, R14, R4
l1567: andLSs R7, R5, R9
l1568: adcs R4, R8, R1, RRX 
l1569: rsb R10, R9, #254
l1570: movs R2, R12, ROR R0
l1571: sbc R4, R1, R4, ROR #10
l1572: orrLSs R5, R5, #736
l1573: subMIs R4, R3, R12
l1574: orrMI R3, R7, R11, ROR R2
l1575: bCC l1579
l1576: add R1, R0, #243
l1577: sbc R1, R11, R9
l1578: b l1580
l1579: b l1577
l1580: bPL l1588
l1581: movGTs R4, R1, LSR R12
l1582: teq R0, #-469762046
l1583: cmpEQ R5, R5, LSL R11
l1584: movs R12, R2, LSL #23
l1585: subLEs R4, R3, R8, ASR R12
l1586: cmpCC R4, R14, ASR #12
l1587: subVCs R8, R0, R12
l1588: movVC R1, R8, LSR R10
l1589: subCC R9, R7, #38144
l1590: mov R14, #4
l1591: str R1, [sp], +R14
l1592: cmp R6, R1, LSL #12
l1593: b l1599
l1594: add R1, R0, #117
l1595: cmpCC R0, R5
l1596: add R9, R9, R10, LSR #9
l1597: cmn R0, R7, ASR R6
l1598: b l1600
l1599: b l1595
l1600: mov R8, #16
l1601: ldr R1, [sp, +R8]!
l1602: rscLE R9, R4, #20971520
l1603: ldr R11, [sp, #+44]
l1604: mvnCSs R5, R3, LSR R9
l1605: b l1610
l1606: add R1, R0, #120
l1607: subVSs R6, R12, R9, LSR R1
l1608: adcMIs R11, R3, R10, ASR #19
l1609: b l1611
l1610: b l1607
l1611: subVC R4, R5, #2432
l1612: b l1617
l1613: add R1, R0, #92
l1614: sbcGEs R4, R1, R8, ASR #30
l1615: adcLEs R3, R1, #1130496
l1616: b l1618
l1617: b l1614
l1618: teqPL R15, R5
l1619: clzCS R0, R9
l1620: rsc R3, R6, R6, ASR R14
l1621: movLS R3, R4
l1622: strB R8, [sp, #-17]
l1623: tstHI R7, #140288
l1624: tstMI R14, R0, LSL #18
l1625: cmp R8, R12, LSR #13
l1626: bic R1, R9, R10, ASR R7
l1627: orrVCs R5, R11, R2, LSL R5
l1628: subGE R0, R1, R15
l1629: mvn R8, #9502720
l1630: sub R10, R8, #1325400064
l1631: bHI l1634
l1632: cmn R2, #16128
l1633: movPL R14, R7, ASR #4
l1634: rscs R10, R1, R14, RRX 
l1635: ands R3, R6, R10
l1636: bic R3, R12, R0
l1637: subPL R3, R6, R14, LSL R5
l1638: bHI l1642
l1639: add R1, R0, #28
l1640: bicEQ R1, R10, R14, LSL #18
l1641: b l1643
l1642: b l1640
l1643: orrNEs R8, R11, R15, LSR #30
l1644: sbcs R1, R12, R9
l1645: movVSs R9, R9, RRX 
l1646: addVSs R6, R5, R0, ROR #11
l1647: andVSs R11, R0, R2, ROR R9
l1648: b l1654
l1649: add R1, R0, #13
l1650: sbcVSs R2, R9, R12, LSL #8
l1651: sbcLT R14, R12, R9
l1652: subCSs R4, R14, #-1325400064
l1653: b l1655
l1654: b l1650
l1655: rsbGTs R8, R15, #216
l1656: and R6, R10, R2, ASR R12
l1657: subCS R10, R15, #28928
l1658: b l1665
l1659: add R1, R0, #29
l1660: mvnCC R4, R3
l1661: clzCC R7, R4
l1662: subs R0, R14, R12, ASR R10
l1663: orrCSs R10, R5, R3
l1664: b l1666
l1665: b l1660
l1666: teqGT R1, R11, ROR #6
l1667: adc R0, R4, R2, LSR #1
l1668: b l1675
l1669: add R1, R0, #167
l1670: ands R9, R7, #3407872
l1671: addLEs R0, R2, R0, RRX 
l1672: cmn R4, R11, ROR #5
l1673: sub R3, R10, #260
l1674: b l1676
l1675: b l1670
l1676: movNE R4, #384
l1677: bics R0, R11, #1610612742
l1678: andLT R1, R15, R15, LSL #19
l1679: mov R12, #45
l1680: strHIB R9, [sp, +R12]
l1681: b l1688
l1682: orrs R14, R4, R6, RRX 
l1683: rsbs R0, R0, #-2147483645
l1684: orrNE R1, R7, R3, RRX 
l1685: adc R1, R7, R14
l1686: bicVSs R1, R0, R12, LSL #19
l1687: orrs R1, R4, R10
l1688: adds R12, R12, R4, RRX 
l1689: rscNE R0, R11, #12352
l1690: mvns R7, R10
l1691: b l1698
l1692: add R1, R0, #20
l1693: adds R8, R6, R11
l1694: adc R1, R14, R12, RRX 
l1695: clz R2, R12
l1696: tst R4, #8960
l1697: b l1699
l1698: b l1693
l1699: sbcLEs R14, R14, R5
l1700: cmnGE R3, R9
l1701: ldr R2, [sp, #-20]!
l1702: bMI l1709
l1703: add R1, R0, #125
l1704: sub R4, R15, R12
l1705: rsbs R12, R5, #476
l1706: add R0, R12, R2, LSL #15
l1707: orr R6, R12, R15
l1708: b l1710
l1709: b l1704
l1710: clzLT R14, R12
l1711: mvns R10, R0, ROR R9
l1712: orrVS R11, R14, R14, RRX 
l1713: andNE R2, R2, R4, RRX 
l1714: bLE l1721
l1715: eor R12, R3, #805306377
l1716: subNEs R6, R12, R6
l1717: cmp R12, R11, LSL #10
l1718: sbcs R12, R9, R1, LSL R0
l1719: tstLE R0, #58720256
l1720: movGEs R2, R8, ASR R9
l1721: subCSs R8, R11, R2, ROR R5
l1722: adcs R7, R4, #51
l1723: clz R2, R12
l1724: rscCSs R9, R0, R1
l1725: mov R3, #28
l1726: str R8, [sp, +R3]!
l1727: cmnEQ R12, #1409286145
l1728: bCS l1734
l1729: teqVC R6, R12, LSR #15
l1730: subLTs R7, R14, R2
l1731: and R5, R3, R10
l1732: cmnLE R5, R0, LSR R11
l1733: tst R1, R0
l1734: cmp R11, R4, ASR R6
l1735: bMI l1743
l1736: subGTs R9, R0, R7, RRX 
l1737: cmp R15, #742391808
l1738: bics R12, R5, R6, LSL R7
l1739: tst R1, R2, ROR #4
l1740: orrLTs R3, R4, R0, LSR R3
l1741: tstVC R4, #-1879048183
l1742: rsbLT R6, R6, #3850240
l1743: sbcs R6, R14, #33554432
l1744: movMIs R7, R8, LSL #31
l1745: mvns R7, R3
l1746: b l1750
l1747: add R1, R0, #98
l1748: rsb R7, R0, R4, RRX 
l1749: b l1751
l1750: b l1748
l1751: andPLs R7, R0, R14, ROR R12
l1752: cmnHI R14, #1224736768
l1753: tstGE R2, R14, LSL R9
l1754: bicNE R6, R9, R4, ROR R10
l1755: subs R7, R3, R6, LSR R7
l1756: rscLE R4, R5, R4, LSR #21
l1757: bNE l1758
l1758: eor R4, R14, R2
l1759: bCS l1768
l1760: add R1, R0, #108
l1761: adc R7, R2, #162
l1762: tst R11, R5
l1763: cmpVS R5, #92160
l1764: subEQs R4, R12, #64225280
l1765: sub R7, R5, R3
l1766: teq R14, R6
l1767: b l1769
l1768: b l1761
l1769: mov R7, #28
l1770: ldr R7, [sp, -R7]!
l1771: addNEs R7, R6, #-1426063360
l1772: ands R5, R14, #457179136
l1773: rscLSs R10, R14, R15
l1774: orr R1, R2, #1792
l1775: andLTs R11, R12, R6, RRX 
l1776: bNE l1784
l1777: eorCCs R1, R7, #1019904
l1778: teqVC R12, R14, ROR #25
l1779: subs R6, R14, R14, RRX 
l1780: rsc R12, R4, R11
l1781: rscNE R1, R7, R15, LSL #22
l1782: orrGEs R12, R2, R10
l1783: bic R10, R2, R4, LSR #21
l1784: subEQ R12, R3, #29622272
l1785: adcGT R12, R9, R1, ROR R3
l1786: strCS R8, [sp, #-8]
l1787: subVCs R2, R1, R7, ASR R10
l1788: and R3, R3, R9
l1789: tstVC R11, R6, ASR #30
l1790: mvnPL R2, #-939524095
l1791: mvn R8, R9
l1792: bic R7, R3, R3, LSL #29
l1793: rscs R3, R4, #155648
l1794: subs R5, R4, R2, LSR #3
l1795: clz R12, R7
l1796: bHI l1804
l1797: mvns R10, #60416
l1798: subs R3, R6, R12, RRX 
l1799: subHIs R0, R0, R8, RRX 
l1800: adds R4, R9, R6, ASR #28
l1801: subMIs R9, R5, R9, ROR R9
l1802: orr R6, R5, R10, LSR #11
l1803: subLSs R5, R9, #402653184
l1804: subHIs R14, R2, R14, ROR #26
l1805: teqLE R2, #-1140850686
l1806: rscCSs R2, R10, R10, RRX 
l1807: bMI l1816
l1808: add R1, R0, #2
l1809: rscs R6, R7, R0, RRX 
l1810: bicCC R3, R1, R4, ASR #21
l1811: sub R8, R9, R10
l1812: sbcs R2, R1, #162816
l1813: teq R14, R10, RRX 
l1814: andGT R0, R7, R10, ROR R2
l1815: b l1817
l1816: b l1809
l1817: cmnLS R12, R15, LSL #25
l1818: rscPL R11, R8, R9
l1819: b l1825
l1820: add R1, R0, #187
l1821: mvnMI R0, R9, ASR R4
l1822: mov R12, R7
l1823: sbcCC R0, R2, R11
l1824: b l1826
l1825: b l1821
l1826: bVC l1832
l1827: movMIs R4, R14
l1828: movVCs R9, R6, ASR R3
l1829: clzVS R2, R12
l1830: subVSs R3, R9, #999424
l1831: subPL R12, R3, R6, LSR R1
l1832: sbcs R5, R6, #622592
l1833: subVC R7, R9, R0
l1834: orrLSs R1, R14, R12, LSR R4
l1835: ldrPLB R5, [sp, #+42]
l1836: tst R3, R11, LSR R8
l1837: bHI l1841
l1838: add R1, R0, #54
l1839: bicMIs R6, R9, R6
l1840: b l1842
l1841: b l1839
l1842: b l1845
l1843: subGTs R7, R1, R15, RRX 
l1844: rsc R10, R14, R15, RRX 
l1845: movPLs R4, R9, ASR R3
l1846: cmpLS R1, R14
l1847: subLS R9, R14, R12, ROR #29
l1848: rsbLSs R10, R15, R6, LSR #11
l1849: addLS R9, R12, R6, ASR R0
l1850: adds R1, R4, R0, ROR R4
l1851: eors R3, R7, R7, ROR #12
l1852: adcVS R0, R10, R0, RRX 
l1853: str R3, [sp], #+60
l1854: tstHI R6, R14, LSR #25
l1855: sbc R7, R10, R1, LSL R2
l1856: mov R9, #23
l1857: strB R6, [sp, -R9]
l1858: adcs R3, R10, R15
l1859: strB R4, [sp, #-28]
l1860: sbcCC R8, R3, R0, ROR #19
l1861: eorGT R4, R6, #135168
l1862: orrGE R4, R7, #-805306356
l1863: adc R5, R9, R7
l1864: and R6, R5, R1, LSR #31
l1865: clz R5, R2
l1866: movNEs R9, R6
l1867: add R4, R5, R3
l1868: tst R11, R12
l1869: rscPLs R10, R3, R1
l1870: mvns R11, R6, RRX 
l1871: movGEs R12, #1073741826
l1872: mov R11, R3, ASR R12
l1873: str R9, [sp], #-28
l1874: tstPL R15, #3473408
l1875: sbcMI R11, R9, R4
l1876: bNE l1881
l1877: add R1, R0, #181
l1878: rsc R4, R7, R12, RRX 
l1879: addCC R11, R1, #307200
l1880: b l1882
l1881: b l1878
l1882: andCC R0, R0, R12, ASR R6
l1883: teq R0, R15, ASR #7
l1884: movs R7, R3, LSR #14
l1885: cmp R7, R9, ROR #30
l1886: clz R5, R8
l1887: andGE R0, R15, R12, LSR #5
l1888: rscCSs R12, R10, R8, ASR #27
l1889: adc R9, R8, R14, RRX 
l1890: clz R9, R10
l1891: orrLT R12, R0, #4
l1892: andEQ R6, R12, #26
l1893: adcs R6, R6, R7
l1894: orrCS R11, R6, R8, LSR #12
l1895: cmpLE R10, R15
l1896: adcPL R5, R14, R1, RRX 
l1897: tst R12, R4, LSL #2
l1898: b l1906
l1899: add R1, R0, #58
l1900: mov R8, R12, ROR #2
l1901: add R8, R15, R3, ROR #16
l1902: rscPLs R12, R6, R15
l1903: addCSs R11, R11, R2
l1904: orrLSs R7, R0, R11, LSL #17
l1905: b l1907
l1906: b l1900
l1907: eors R7, R7, R2, LSL R3
l1908: eors R8, R4, R0, LSL R5
l1909: cmp R14, #770048
l1910: strB R10, [sp, #-8]
l1911: bicEQs R0, R10, #460
l1912: subPLs R12, R1, R14, LSL #5
l1913: andMIs R1, R0, #245
l1914: mvn R5, R9, RRX 
l1915: b l1919
l1916: add R1, R0, #235
l1917: movs R0, R6
l1918: b l1920
l1919: b l1917
l1920: subNE R7, R1, R3
l1921: clz R3, R1
l1922: adcs R1, R10, R7, LSL #6
l1923: bLE l1929
l1924: mvns R7, #916
l1925: orr R5, R2, #1879048202
l1926: adcMI R3, R7, #3604480
l1927: sbcLS R10, R5, R2, LSL R12
l1928: tst R12, #34
l1929: sbcs R4, R3, R8, LSL #31
l1930: movs R10, #9472
l1931: str R0, [sp, #-36]!
l1932: rsbEQ R8, R14, R2, ROR #25
l1933: bGE l1935
l1934: rsbCC R1, R5, #34
l1935: eor R2, R8, #184549376
l1936: sbcCSs R1, R7, R11, RRX 
l1937: bCC l1945
l1938: add R1, R0, #17
l1939: rsbs R6, R5, R3
l1940: teqNE R7, R8, ROR R3
l1941: teqHI R11, R10, LSR R3
l1942: andHI R12, R4, R2, LSL #25
l1943: rsc R9, R8, R12, ASR R11
l1944: b l1946
l1945: b l1939
l1946: cmnNE R4, #7536640
l1947: and R6, R2, #16384
l1948: sub R10, R5, R9, RRX 
l1949: bic R8, R7, R1
l1950: orrPL R3, R5, R8, ROR #22
l1951: clzVS R11, R5
l1952: bGE l1960
l1953: add R1, R0, #106
l1954: sbcLE R1, R15, R14, LSL #24
l1955: teq R0, #536870913
l1956: cmp R14, R10, RRX 
l1957: mvns R7, R14, LSL #13
l1958: movGTs R8, R10, LSL R12
l1959: b l1961
l1960: b l1954
l1961: str R7, [sp, #+48]!
l1962: sbcs R7, R3, R1
l1963: orrs R2, R2, R9, RRX 
l1964: b l1973
l1965: movs R7, #10304
l1966: bicHIs R10, R3, R5, LSR R8
l1967: eor R5, R1, #742391808
l1968: sbcVS R7, R4, R8, ASR #26
l1969: adc R8, R4, R7
l1970: rsb R5, R5, #223232
l1971: addGT R6, R12, R5
l1972: subs R11, R6, R5, ASR #16
l1973: sbcGT R12, R8, #5111808
l1974: tst R9, #224
l1975: rsc R5, R5, R5, ASR #16
l1976: tst R15, #848
l1977: rscCS R8, R14, #9
l1978: bicCC R2, R3, R3, LSL R1
l1979: subLSs R8, R6, R0, ROR #29
l1980: rscNE R9, R7, R8, LSL R12
l1981: orrPL R0, R1, R9, LSR #17
l1982: andLTs R10, R3, R4
l1983: subLSs R6, R9, R5
l1984: clzNE R3, R1
l1985: cmpGT R0, R12, RRX 
l1986: cmn R3, R2
l1987: sbcCCs R14, R5, R14
l1988: mvnPLs R6, #372736
l1989: teqNE R5, R15, ASR #5
l1990: sbcCSs R14, R8, R2, LSR #30
l1991: rsc R1, R11, R9, RRX 
l1992: eorCC R9, R9, R4, RRX 
l1993: mov R1, #16
l1994: str R14, [sp], -R1
l1995: bicCSs R10, R12, R10
l1996: b l2001
l1997: add R1, R0, #115
l1998: rsbMI R4, R3, R9, LSR #15
l1999: cmn R5, #35
l2000: b l2002
l2001: b l1998
l2002: movLTs R14, #-2147483598
l2003: subMIs R2, R11, R8, ASR R12
l2004: movCSs R3, R14
l2005: movCSs R8, R9, LSL #10
l2006: b l2011
l2007: sub R6, R4, R12, LSL R8
l2008: subs R5, R4, R11
l2009: tstLS R5, R5, LSL R4
l2010: sbcCS R3, R0, #2490368
l2011: adcs R1, R10, #65536
l2012: sbcs R9, R14, R4, LSR R1
l2013: clzEQ R12, R8
l2014: orrLE R0, R7, R3, LSR #18
l2015: clz R6, R1
l2016: andLS R9, R7, R14, ROR R12
l2017: bVS l2021
l2018: add R1, R0, #167
l2019: sub R10, R8, R3, ASR #7
l2020: b l2022
l2021: b l2019
l2022: rscMI R0, R12, R0, ROR R9
l2023: sbcs R8, R7, R12, ASR #3
l2024: subVSs R5, R3, #148
l2025: tstMI R8, R4, ASR #31
l2026: orrCS R2, R10, #3904
l2027: subGT R2, R12, #-1207959551
l2028: ands R1, R9, R10
l2029: sub R14, R6, R11, ROR R7
l2030: adcEQ R2, R1, #4456448
l2031: tst R3, R12, ASR #20
l2032: tstLS R9, #6592
l2033: bPL l2042
l2034: add R1, R0, #144
l2035: adcs R3, R8, R1
l2036: mvnMIs R6, R4, RRX 
l2037: clzLS R3, R3
l2038: bic R8, R7, #2293760
l2039: bicLS R7, R6, R4, ROR #23
l2040: orrHIs R6, R15, R7
l2041: b l2043
l2042: b l2035
l2043: bMI l2052
l2044: add R1, R0, #113
l2045: movVS R8, #111149056
l2046: cmnVS R9, R9, LSL R14
l2047: rsbVSs R6, R3, R3
l2048: clz R6, R9
l2049: sbcLTs R11, R12, R10, ASR #25
l2050: cmp R3, R3
l2051: b l2053
l2052: b l2045
l2053: andGTs R1, R3, R10
l2054: b l2055
l2055: movEQs R10, R0
l2056: ldrB R4, [sp, #+20]
l2057: subCSs R9, R3, R4, RRX 
l2058: addNE R9, R2, R5
l2059: cmn R12, R11, LSL R5
l2060: orrVS R6, R15, R0, LSR #27
l2061: rscPLs R14, R6, #209920
l2062: tst R7, R5, LSL #10
l2063: eor R7, R6, R7
l2064: ands R3, R9, R12
l2065: bPL l2074
l2066: add R1, R0, #160
l2067: adc R11, R1, #61952
l2068: rsbMIs R0, R15, R14
l2069: eorNEs R1, R15, R6
l2070: clz R12, R4
l2071: sbcGE R14, R14, R1, LSL R4
l2072: rsbVCs R10, R11, R2, ASR R7
l2073: b l2075
l2074: b l2067
l2075: cmp R0, R11, LSR #20
l2076: adcHI R7, R1, R5
l2077: sbcHIs R5, R14, #1728
l2078: tstNE R8, #102760448
l2079: eorEQ R8, R8, #834666496
l2080: cmnMI R0, #3904
l2081: cmn R11, R5
l2082: clzCC R10, R9
l2083: b l2092
l2084: add R1, R0, #204
l2085: tstGE R11, R9, LSL #2
l2086: cmnVC R9, R6
l2087: bicGTs R5, R10, #25952256
l2088: bicEQ R12, R8, R5
l2089: clz R10, R0
l2090: clzPL R3, R0
l2091: b l2093
l2092: b l2085
l2093: orrMI R8, R2, R0, LSL #11
l2094: tstNE R1, #124780544
l2095: teqCS R10, #12416
l2096: mov R8, #31
l2097: strB R5, [sp, -R8]
l2098: orrCCs R0, R11, #733184
l2099: adcCS R9, R9, R3
l2100: orr R6, R12, R7, LSR #5
l2101: bLS l2105
l2102: clz R3, R2
l2103: sub R1, R0, R11
l2104: orrLSs R2, R7, #132
l2105: bicMI R12, R3, R2, LSL R3
l2106: mvn R10, R9, RRX 
l2107: str R0, [sp], #+0
l2108: bicGE R10, R4, #-1879048185
l2109: cmpPL R5, R9
l2110: eorHI R14, R15, R7
l2111: teqVC R2, R14, RRX 
l2112: b l2116
l2113: add R1, R0, #36
l2114: clz R12, R0
l2115: b l2117
l2116: b l2114
l2117: bicGTs R5, R6, R10, LSR R12
l2118: andVS R9, R14, R9, ASR R2
l2119: andLTs R8, R12, #469762048
l2120: cmn R7, R1, ASR R0
l2121: bGT l2129
l2122: add R1, R0, #218
l2123: bic R12, R11, R15
l2124: cmp R11, R2
l2125: orr R3, R1, #4456448
l2126: orrVCs R12, R9, R3, ROR #28
l2127: rscHIs R5, R8, R11
l2128: b l2130
l2129: b l2123
l2130: subLSs R0, R9, R6
l2131: eorEQ R9, R9, #230400
l2132: and R8, R7, #13504
l2133: cmpCC R11, R7
l2134: mvnGTs R2, R10
l2135: bVS l2140
l2136: add R1, R0, #72
l2137: rsbs R9, R1, R9, RRX 
l2138: teq R11, R0, LSR #19
l2139: b l2141
l2140: b l2137
l2141: addLEs R10, R2, R12
l2142: add R2, R1, R11, LSR R3
l2143: mov R12, #31
l2144: ldrB R4, [sp, +R12]
l2145: tstCC R4, #729088
l2146: rsbs R11, R10, R2, LSR #12
l2147: bVS l2151
l2148: cmnVS R5, R7
l2149: mov R0, R4, ROR R0
l2150: eorLE R1, R9, R14, LSR R1
l2151: rsbMI R14, R2, #1073741856
l2152: bicNE R2, R15, R10
l2153: rscLT R7, R2, R14
l2154: addGTs R5, R7, #8448
l2155: eorCC R8, R12, #45350912
l2156: andLS R14, R7, R3
l2157: bVS l2164
l2158: eorLEs R0, R10, R0
l2159: cmp R3, #4080
l2160: tstHI R9, R6, LSR R3
l2161: tst R14, R12
l2162: tst R5, #2768
l2163: movEQ R1, R7
l2164: rsbEQ R10, R12, R14, ASR R8
l2165: teqCS R15, #248832
l2166: eors R5, R8, R2, RRX 
l2167: b l2172
l2168: mvnLT R0, R12, ASR #1
l2169: bicMI R12, R4, R7, ROR R8
l2170: adcs R10, R11, R6
l2171: adcs R5, R10, #1900544
l2172: adcVSs R14, R11, R12, ASR R11
l2173: adcHI R1, R3, R5, ROR R6
l2174: mvnMI R0, R1, ASR #7
l2175: sub R1, R4, #268435464
l2176: eorEQs R6, R0, R11, ASR R11
l2177: mov R3, #36
l2178: ldr R14, [sp, +R3]!
l2179: cmnVC R9, R15, RRX 
l2180: andLS R5, R8, R8, ASR R5
l2181: movNE R14, #2162688
l2182: mov R0, #22
l2183: ldrPLB R6, [sp, -R0]
l2184: tstLE R15, R14, ASR #26
l2185: orrs R8, R12, R2
l2186: rscLTs R11, R11, R9, ROR R7
l2187: bicLTs R11, R9, R10, ASR R1
l2188: subGT R2, R14, R14
l2189: cmnMI R2, R9
l2190: cmn R2, R14
l2191: bics R1, R9, R3, LSR R4
l2192: bHI l2202
l2193: cmn R9, R12
l2194: tstNE R12, R3, LSR R12
l2195: cmn R11, R5
l2196: subLTs R11, R9, R11, LSL #3
l2197: mvn R1, #266338304
l2198: mvns R3, #88080384
l2199: orrMIs R3, R15, #256000
l2200: adcMIs R3, R2, #-671088640
l2201: subGE R5, R6, R1, LSR #25
l2202: adcEQs R5, R14, R0
l2203: orrs R8, R2, R6
l2204: andLS R1, R2, R1, LSR R9
l2205: orrGTs R4, R8, #67584
l2206: adds R4, R4, R12, ASR #31
l2207: subLEs R11, R9, R8, LSR #25
l2208: subs R0, R4, R12, LSR #26
l2209: b l2217
l2210: add R1, R0, #53
l2211: addCSs R6, R6, #34603008
l2212: rsc R6, R7, R1, RRX 
l2213: rsbGEs R14, R5, #149504
l2214: cmn R4, R12, ROR #16
l2215: clzPL R5, R9
l2216: b l2218
l2217: b l2211
l2218: mov R3, #32
l2219: ldr R7, [sp, -R3]!
l2220: bGE l2227
l2221: eor R2, R0, R10, ASR R8
l2222: cmpVS R2, R3, LSL R14
l2223: subNEs R4, R7, R5, LSL R3
l2224: orrCSs R3, R10, R10, ROR #2
l2225: addMI R5, R2, R15, RRX 
l2226: cmnCS R9, R15
l2227: clzVS R1, R11
l2228: cmp R6, R0, RRX 
l2229: b l2237
l2230: add R1, R0, #56
l2231: mvnGE R5, R12, LSR R6
l2232: teq R8, R6, RRX 
l2233: andCC R9, R9, R4, ASR R7
l2234: mvnGTs R6, #192
l2235: clzEQ R3, R6
l2236: b l2238
l2237: b l2231
l2238: ands R8, R6, R12
l2239: sub R4, R0, R12, LSL R7
l2240: addGEs R2, R12, R5
l2241: subGE R14, R0, R6
l2242: teqCS R4, R14, ROR R4
l2243: adcs R10, R0, R8, RRX 
l2244: sub R11, R11, R3, LSR #14
l2245: rsbCSs R4, R6, #98304
l2246: subs R3, R4, #-1694498816
l2247: b l2251
l2248: add R1, R0, #126
l2249: bicCSs R6, R9, R6
l2250: b l2252
l2251: b l2249
l2252: subEQ R1, R7, R5, RRX 
l2253: ldr R6, [sp], #-16
l2254: eorGE R7, R6, R1, LSL R7
l2255: bMI l2259
l2256: add R1, R0, #197
l2257: cmp R5, R3
l2258: b l2260
l2259: b l2257
l2260: ands R1, R8, R4
l2261: orrPLs R4, R8, R3, LSL R7
l2262: orr R9, R1, R1, RRX 
l2263: mvnGEs R6, R11, LSR #26
l2264: clzCC R10, R10
l2265: ldrEQ R8, [sp, #+12]
l2266: subs R3, R6, R1, LSR R3
l2267: adcMI R2, R11, R3, LSL R1
l2268: tstHI R8, R7
l2269: b l2278
l2270: adds R2, R12, #398458880
l2271: cmp R7, R14, ASR R3
l2272: teqVS R8, R11, LSR R14
l2273: bicMIs R8, R8, R2, ROR R9
l2274: rscCS R7, R2, R10, ASR #5
l2275: mvnGE R11, R1, LSR R8
l2276: bics R9, R2, #137
l2277: eor R4, R14, R4
l2278: subCCs R4, R1, R0, ASR #21
l2279: cmp R14, #8192000
l2280: mvnEQs R0, R6, ASR #14
l2281: b l2286
l2282: add R1, R0, #3
l2283: eorNEs R4, R2, R9, ASR #18
l2284: rscPLs R8, R7, R10, ASR #25
l2285: b l2287
l2286: b l2283
l2287: teq R6, R2, ROR #27
l2288: tst R4, #-1929379840
l2289: mvns R9, R2, LSL R11
l2290: subLE R1, R10, R9, ASR R6
l2291: mvn R6, R0, ROR R12
l2292: b l2295
l2293: subLTs R14, R4, R0
l2294: orrNEs R6, R7, R11, ASR R10
l2295: and R14, R9, R3
l2296: eor R8, R9, R15
l2297: andVCs R7, R10, R15, ROR #31
l2298: adcVC R6, R7, R8, LSL #8
l2299: bEQ l2308
l2300: add R1, R0, #102
l2301: ands R7, R4, R7, ASR R7
l2302: subHI R5, R5, #3080192
l2303: tst R3, R15
l2304: rsbCCs R0, R5, R6, ROR #18
l2305: bic R2, R9, R4
l2306: rscGEs R9, R8, R7, LSR R3
l2307: b l2309
l2308: b l2301
l2309: clzGE R8, R1
l2310: strVS R1, [sp, #-12]
l2311: subVC R12, R11, R7, ROR R14
l2312: orrCC R2, R5, R0
l2313: mov R11, #37
l2314: ldrB R12, [sp, +R11]
l2315: eorGT R0, R2, R1
l2316: eorHIs R1, R7, R3
l2317: andCSs R7, R7, #6208
l2318: andMIs R2, R14, R3, LSR #18
l2319: rsbPLs R12, R9, R14, ASR #28
l2320: rsbLE R8, R4, #223232
l2321: andNE R7, R5, R9, LSR #4
l2322: rsc R7, R1, R0, LSL #28
l2323: mov R4, #24
l2324: ldr R2, [sp], -R4
l2325: adc R12, R7, R10, LSL #27
l2326: teqLS R0, R5
l2327: adcs R10, R11, R7
l2328: strB R5, [sp, #+54]
l2329: bNE l2333
l2330: subs R10, R3, R0, LSL #7
l2331: andLT R12, R2, R6
l2332: andCSs R0, R1, R2, ASR #21
l2333: sbcLS R11, R7, #888832
l2334: cmnVC R1, #281018368
l2335: rscs R10, R1, R2, RRX 
l2336: teq R5, R14
l2337: eorCS R10, R11, R14, LSL R12
l2338: cmpGE R15, R9, ASR #20
l2339: subVCs R1, R3, #-1593835520
l2340: bNE l2347
l2341: teq R11, #-2147483601
l2342: rscs R7, R6, R0, RRX 
l2343: orrCS R4, R14, R14, ROR #15
l2344: rscLS R11, R0, R5, LSL R9
l2345: clz R6, R9
l2346: rscGE R7, R3, R9, LSL #6
l2347: mvn R7, R10, ASR R8
l2348: sbc R11, R12, R15
l2349: orr R4, R10, R8
l2350: b l2355
l2351: add R1, R0, #82
l2352: and R4, R5, R10
l2353: tst R10, R12
l2354: b l2356
l2355: b l2352
l2356: rscs R5, R2, #7872
l2357: mvns R9, R6, ASR R0
l2358: clzHI R9, R10
l2359: adcLT R11, R11, #229376
l2360: sbc R11, R11, R11, LSR R1
l2361: addVC R8, R1, R5
l2362: movCS R14, R7, ASR R0
l2363: mvnCSs R0, R5, LSL R10
l2364: sub R14, R2, R2
l2365: movs R8, #1275068417
l2366: rsbCS R5, R0, R6, ROR R14
l2367: bLE l2369
l2368: clzLT R4, R9
l2369: rsc R2, R1, #148
l2370: eors R5, R1, R3, RRX 
l2371: bVS l2379
l2372: orrHI R8, R3, R15
l2373: cmn R8, R10, ROR #14
l2374: mvns R8, R10, RRX 
l2375: eor R9, R3, R1, LSR #27
l2376: eor R7, R9, #805306378
l2377: clz R6, R11
l2378: cmn R3, R9
l2379: cmp R11, R10, LSL R2
l2380: orrPLs R11, R5, R9, ASR R1
l2381: tstPL R10, R4, ASR R9
l2382: rscs R4, R12, R12, RRX 
l2383: mvn R9, R9, LSL #27
l2384: clzLE R0, R8
l2385: rscGE R7, R4, R15
l2386: b l2394
l2387: add R1, R0, #11
l2388: tst R2, R11, ASR #29
l2389: rsbs R14, R4, R6
l2390: adcCC R11, R3, R3, LSL R8
l2391: tstLT R5, #-603979776
l2392: rsbLTs R8, R1, R5, ASR #12
l2393: b l2395
l2394: b l2388
l2395: orrEQs R14, R15, #13824
l2396: movs R4, R10, LSR #26
l2397: eorLE R8, R11, R14, ROR #24
l2398: rsc R12, R6, R10
l2399: cmp R15, R5, LSL #0
l2400: sub R8, R7, R5
l2401: bCS l2408
l2402: rsbs R9, R7, #23068672
l2403: add R10, R6, #119537664
l2404: rsc R8, R10, R1, ROR #2
l2405: teqCS R6, #52428800
l2406: cmnVS R5, #991232
l2407: and R12, R3, R6, LSR #1
l2408: teqGE R2, R10, LSR R5
l2409: eorVCs R11, R6, R0
l2410: cmpLS R7, R11, RRX 
l2411: cmnGT R7, R9
l2412: mvnPLs R5, R10, ROR #7
l2413: teqGE R6, R7
l2414: rscs R8, R12, R6
l2415: orrCSs R7, R4, R0, LSR R11
l2416: rsb R2, R15, R0, RRX 
l2417: mvn R9, R4
l2418: cmp R12, #633339904
l2419: tstLT R14, R11
l2420: cmn R6, R9, LSL #15
l2421: bPL l2424
l2422: subLS R9, R11, R7, ASR R9
l2423: subGTs R11, R12, #-1073741823
l2424: tstLT R2, #10747904
l2425: mvnGT R5, R2, RRX 
l2426: adcHIs R1, R6, R1, RRX 
l2427: adcs R10, R9, R3
l2428: ldrEQB R8, [sp, #+16]
l2429: adcs R11, R15, R15, ROR #23
l2430: b l2434
l2431: add R1, R0, #173
l2432: tst R3, R3, ASR #1
l2433: b l2435
l2434: b l2432
l2435: tstCC R3, R2
l2436: add R0, R0, R6
l2437: subVSs R11, R11, R2, ASR #9
l2438: strNEB R12, [sp, #+46]
l2439: andGEs R6, R4, R8
l2440: addLE R3, R5, #192
l2441: bLE l2446
l2442: andGTs R9, R1, R10
l2443: sbc R4, R12, R1, ROR R2
l2444: bics R6, R11, R12, ASR R14
l2445: addCSs R12, R12, R10
l2446: rsbVCs R11, R4, #276824064
l2447: b l2451
l2448: orr R12, R4, R7
l2449: subLSs R11, R5, R7
l2450: clzGE R9, R5
l2451: tstCS R0, R10, RRX 
l2452: cmnCC R9, R8, LSL R8
l2453: cmpVC R11, R3, RRX 
l2454: andGTs R6, R1, #98
l2455: ands R7, R15, R6, ROR #1
l2456: bCC l2463
l2457: mvns R9, R10
l2458: teqGE R3, R12, RRX 
l2459: subEQs R5, R3, #745472
l2460: bics R8, R11, #540672
l2461: rscCC R3, R11, R5
l2462: cmpPL R8, R6, ASR R3
l2463: adcPL R3, R11, R0, ROR #16
l2464: b l2473
l2465: tstEQ R5, R12
l2466: clz R7, R12
l2467: rsbMI R0, R1, R7, RRX 
l2468: tstVC R0, #196
l2469: movs R2, R4, LSR R5
l2470: mov R10, R11, LSR #16
l2471: mvn R2, #43520
l2472: eorCSs R4, R1, #3801088
l2473: movVCs R2, R8, LSR R0
l2474: mvns R7, R0
l2475: rscs R3, R15, #9371648
l2476: subCSs R8, R15, R15
l2477: movCCs R5, R12, ROR R4
l2478: rscGT R4, R2, R9, ASR #26
l2479: cmp R6, R9
l2480: b l2488
l2481: add R1, R0, #68
l2482: orrPLs R1, R7, #190840832
l2483: and R8, R11, R0, ASR R12
l2484: orr R12, R9, R5, ROR R3
l2485: movVCs R7, #868352
l2486: bicCSs R6, R2, R2, ASR #19
l2487: b l2489
l2488: b l2482
l2489: andHI R10, R15, #8704
l2490: cmpLE R12, R7
l2491: movs R10, #3552
l2492: eorCS R3, R7, #-1073741811
l2493: sbcVC R1, R10, R4, RRX 
l2494: bicLTs R14, R15, #99
l2495: tstLT R1, R7, LSL R11
l2496: subHI R4, R0, R10
l2497: bicLS R1, R2, #786432
l2498: bicVS R14, R6, #-1073741820
l2499: orrLTs R5, R8, #299008
l2500: sbcCCs R7, R0, R7, LSL R3
l2501: addHIs R14, R12, R14, ASR #25
l2502: movNEs R12, R9
l2503: mov R3, #32
l2504: str R1, [sp, +R3]!
l2505: andLTs R3, R12, R9
l2506: teq R6, R6
l2507: cmnEQ R5, R14, RRX 
l2508: andCCs R7, R6, R9, ASR #3
l2509: b l2517
l2510: add R1, R0, #119
l2511: cmnHI R5, #-1476395006
l2512: cmnMI R6, R8
l2513: rscHIs R6, R8, R9
l2514: subGTs R1, R14, #18874368
l2515: sbc R3, R12, #194560
l2516: b l2518
l2517: b l2511
l2518: subLS R14, R5, R10, ROR #25
l2519: ldr R14, [sp, #-32]!
l2520: ldr R8, [sp, #+20]!
l2521: rsbVCs R7, R6, R15, LSR #0
l2522: mov R14, #53
l2523: ldrCSB R12, [sp, +R14]
l2524: clz R12, R11
l2525: tstVS R11, R10, ASR R11
l2526: rsbGE R9, R5, R14
l2527: subGEs R8, R4, R1, LSL R0
l2528: eorLS R3, R0, R14, LSL R2
l2529: adcVSs R4, R5, R3
l2530: rscs R14, R15, R15, ROR #13
l2531: b l2539
l2532: sbcs R5, R11, R14, ROR #29
l2533: subs R9, R10, R8, LSL #14
l2534: cmp R7, #53760
l2535: eorVSs R5, R0, R3
l2536: and R8, R4, R10, LSR #11
l2537: rscEQ R12, R14, #38912
l2538: sbcs R3, R14, R2
l2539: ands R12, R1, R5, LSL R7
l2540: and R12, R4, R9, RRX 
l2541: mov R3, #44
l2542: str R7, [sp, +R3]!
l2543: adds R3, R1, #-335544319
l2544: mov R4, #0
l2545: ldr R6, [sp, +R4]!
l2546: sub R6, R14, R7, LSL #13
l2547: bic R9, R12, R12, ROR #13
l2548: subGT R4, R8, R12, LSL #4
l2549: tstEQ R5, R12, LSL R4
l2550: sbcCS R12, R1, #973078528
l2551: sbc R5, R5, R6, ASR #10
l2552: cmpLE R8, R15
l2553: clz R12, R5
l2554: sbc R2, R12, R1
l2555: adcVS R1, R8, R12, RRX 
l2556: cmnPL R4, R0
l2557: bicGTs R9, R6, R10
l2558: subs R7, R8, R10, LSL R0
l2559: bicGEs R0, R8, R5, ROR R1
l2560: tstLT R8, R14
l2561: sbcGT R8, R12, #1884160
l2562: cmpMI R3, R4, ASR R1
l2563: adc R1, R11, R12, ROR R12
l2564: andLT R5, R14, #9344
l2565: clzLT R3, R6
l2566: and R9, R12, R5, LSR R6
l2567: mov R3, #56
l2568: ldr R12, [sp], -R3
l2569: rsbGEs R7, R6, #101376
l2570: subEQs R8, R14, #-1879048181
l2571: strB R9, [sp, #+44]
l2572: clzGT R10, R1
l2573: eors R6, R14, R12, LSL #24
l2574: ands R12, R3, #889192448
l2575: cmp R3, R14, LSL #14
l2576: bic R5, R3, #19456
l2577: cmnEQ R5, R6, ASR #9
l2578: subEQs R3, R9, R1
l2579: ldrLTB R2, [sp, #+30]
l2580: cmnMI R7, R0, LSR #24
l2581: mvnCS R0, #80
l2582: sbcCC R10, R15, R4
l2583: ldrVS R1, [sp, #+12]
l2584: subs R14, R14, R7
l2585: cmnMI R6, R11, LSR R5
l2586: bicLS R8, R8, R14, RRX 
l2587: rsb R8, R3, R5, RRX 
l2588: teqHI R12, R5, LSL #3
l2589: teqHI R7, R0, LSL #2
l2590: b l2596
l2591: add R1, R0, #64
l2592: adcs R1, R9, R1
l2593: clzGE R11, R8
l2594: movs R8, R8, ROR #6
l2595: b l2597
l2596: b l2592
l2597: movVCs R0, R11, RRX 
l2598: mvnVC R6, R1, LSR #25
l2599: bCS l2608
l2600: movs R2, R8, ROR #14
l2601: mvn R5, R2
l2602: movGTs R0, #232448
l2603: movPL R3, R10
l2604: rscHIs R2, R12, R5, RRX 
l2605: orr R3, R15, R1
l2606: sbcEQ R7, R4, R10
l2607: orr R7, R4, #192
l2608: movGEs R9, R1
l2609: strLSB R5, [sp, #+15]
l2610: cmpVC R8, R1
l2611: teqCS R7, R6, ROR #13
l2612: bicPLs R2, R14, R3
l2613: and R12, R15, #-1073741821
l2614: teq R7, R9
l2615: ldrB R7, [sp, #+27]
l2616: clz R7, R2
l2617: and R4, R8, R12
l2618: mov R2, #48
l2619: str R1, [sp, +R2]!
l2620: adcs R0, R15, R8
l2621: sbcLSs R7, R4, R8
l2622: bic R6, R12, #-805306365
l2623: bVC l2630
l2624: add R1, R0, #76
l2625: movHIs R10, #17825792
l2626: cmp R2, R2
l2627: ands R3, R0, #231424
l2628: sbcEQs R6, R11, R1
l2629: b l2631
l2630: b l2625
l2631: mov R11, #30
l2632: strLSB R10, [sp, -R11]
l2633: eors R0, R11, R6, LSL R2
l2634: adcs R14, R5, #66
l2635: ldrGTB R7, [sp, #-33]
l2636: subHIs R14, R5, #1610612737
l2637: addMI R0, R1, R7
l2638: rsbs R5, R9, R6, RRX 
l2639: mvns R3, #8704
l2640: b l2644
l2641: add R1, R0, #151
l2642: teqVS R14, R0, LSR #28
l2643: b l2645
l2644: b l2642
l2645: rsbGT R1, R10, #6528
l2646: b l2648
l2647: sub R0, R6, #17039360
l2648: clzNE R14, R5
l2649: adcs R2, R5, R9, LSR #18
l2650: rsc R10, R14, R10
l2651: ldr R3, [sp], #+8
l2652: movNE R10, R12
l2653: clzEQ R9, R2
l2654: rscs R2, R7, R15
l2655: eors R3, R14, R9, LSL R11
l2656: sbcEQ R11, R0, #191889408
l2657: mov R9, R6, ASR #2
l2658: cmp R2, R1, LSL #5
l2659: mov R9, #8
l2660: ldr R1, [sp], -R9
l2661: ldrVCB R0, [sp, #-18]
l2662: eorVC R11, R12, #46137344
l2663: tstMI R0, R3, ASR R5
l2664: bicEQs R7, R14, R3, LSR R11
l2665: sbc R5, R14, R15
l2666: andHI R1, R8, #-738197502
l2667: adcs R8, R3, #585728
l2668: adcLEs R2, R4, #6946816
l2669: rsbs R12, R2, #10944512
l2670: rsb R11, R8, R3
l2671: andHI R1, R15, R14
l2672: eorVSs R4, R10, R8, ROR R7
l2673: bMI l2679
l2674: add R1, R0, #213
l2675: eorVCs R12, R11, #622592
l2676: cmn R6, R12, LSR #26
l2677: bics R14, R6, R2, ASR #6
l2678: b l2680
l2679: b l2675
l2680: rscEQs R9, R2, #28573696
l2681: sub R12, R0, R0, ASR R10
l2682: eorGT R3, R7, R3
l2683: andVC R5, R5, R7, LSL R8
l2684: bNE l2694
l2685: cmpHI R9, R10
l2686: addLSs R0, R3, R14
l2687: orrs R2, R1, #171966464
l2688: rscVS R2, R8, R11
l2689: subLEs R0, R7, R7, RRX 
l2690: and R8, R11, R4, LSL R14
l2691: rsb R2, R10, R10
l2692: sbcs R8, R14, R2
l2693: adc R6, R2, R6, LSR R3
l2694: eor R7, R0, R9, ASR #0
l2695: addCCs R14, R2, R8, LSR R12
l2696: teq R0, #144703488
l2697: bic R4, R4, R5, ASR #16
l2698: eorCC R14, R15, R7
l2699: teqMI R3, #84992
l2700: bLE l2706
l2701: add R1, R0, #50
l2702: adds R5, R1, R4
l2703: clzGE R5, R6
l2704: sbcMI R14, R10, #2097152000
l2705: b l2707
l2706: b l2702
l2707: mvn R8, R11, ASR R8
l2708: rsbGTs R4, R7, R10
l2709: cmpPL R5, R6, RRX 
l2710: mov R6, #8
l2711: str R12, [sp], -R6
l2712: eors R2, R10, R11, ROR #30
l2713: cmn R14, R0, ASR R11
l2714: sbcVC R0, R2, R10, ASR #9
l2715: subGT R0, R15, #147456
l2716: rsc R9, R12, R0
l2717: rsbMI R2, R12, R1, LSR R7
l2718: rscGTs R1, R2, R6, LSR R0
l2719: subLTs R11, R14, R11, ROR R8
l2720: bGT l2729
l2721: add R1, R0, #182
l2722: sbcCC R7, R14, R9, RRX 
l2723: sub R10, R1, R7, LSR R4
l2724: cmpCS R14, R6, LSL R12
l2725: andNE R11, R14, R11, LSR #11
l2726: subs R3, R2, R15, LSL #20
l2727: rsbLSs R4, R8, R4, ROR R0
l2728: b l2730
l2729: b l2722
l2730: tstCS R8, R14, RRX 
l2731: andEQs R9, R9, #3568
l2732: addMI R6, R4, R6, LSL #3
l2733: bGE l2742
l2734: add R1, R0, #169
l2735: orrVSs R11, R6, R6, RRX 
l2736: and R4, R15, #1936
l2737: movs R8, R7, ASR R3
l2738: cmp R9, R8, RRX 
l2739: bics R7, R3, #796
l2740: andGTs R2, R14, R2, ROR #2
l2741: b l2743
l2742: b l2735
l2743: rscMI R6, R15, #475136
l2744: clzLE R4, R3
l2745: eorEQ R4, R7, R3
l2746: ldrHIB R14, [sp, #-11]
l2747: rsc R14, R4, R11
l2748: b l2755
l2749: rscs R7, R7, R15
l2750: mvns R11, #8
l2751: mvn R14, R3, ASR R10
l2752: bicLS R0, R11, #238
l2753: eorMI R4, R0, R1, RRX 
l2754: orrs R0, R14, R11, ROR #5
l2755: orr R14, R5, R5, RRX 
l2756: rsbHI R2, R5, R2
l2757: eorGEs R1, R8, R0, LSR #1
l2758: mov R7, #24
l2759: str R1, [sp, +R7]
l2760: cmn R11, R4, ASR #25
l2761: addLT R10, R6, R7, ASR #1
l2762: ldrPLB R4, [sp, #-23]
l2763: mvnVS R14, R6
l2764: orrLS R4, R4, R4, ASR R14
l2765: eorLE R3, R3, #1488
l2766: strCCB R6, [sp, #+17]
l2767: orrGTs R5, R7, R4, LSR R1
l2768: rsbVSs R6, R0, R8
l2769: ldrMI R4, [sp, #+20]
l2770: clz R3, R4
l2771: ands R3, R14, R8, LSR R6
l2772: tst R3, R10, LSL #11
l2773: andGE R9, R15, R7
l2774: subNEs R6, R5, R0
l2775: movCSs R5, #8192
l2776: ands R2, R5, #7552
l2777: orrLEs R7, R1, R10, RRX 
l2778: sub R0, R1, #939524099
l2779: adds R10, R6, R12
l2780: addVS R10, R4, R7
l2781: cmpHI R4, #503316480
l2782: cmpGE R3, #49283072
l2783: movVCs R0, R8
l2784: adcEQ R0, R2, R15
l2785: cmnGE R5, #-939524094
l2786: teqVS R8, #192
l2787: bGT l2796
l2788: cmpGE R15, R14, ASR #28
l2789: orr R0, R10, R7
l2790: rsb R5, R0, R6, LSL #28
l2791: movLE R0, #197132288
l2792: cmnGE R5, R1, ASR #15
l2793: movLS R5, R6
l2794: clzPL R0, R12
l2795: orrMI R5, R4, #93323264
l2796: addNE R4, R15, #436207616
l2797: rscLE R4, R4, R7, LSR R0
l2798: subGTs R0, R5, #1792
l2799: bicLS R1, R1, R0, RRX 
l2800: mov R11, #10
l2801: strB R14, [sp, -R11]
l2802: orrLE R14, R10, R8
l2803: rscCC R5, R8, #229376
l2804: sub R0, R15, R12, RRX 
l2805: bGE l2814
l2806: subs R9, R1, #1073741861
l2807: rsbs R5, R0, #1114112
l2808: subs R12, R0, R5, ROR R11
l2809: rsbs R3, R5, R5, RRX 
l2810: subCSs R9, R6, R6, LSR R7
l2811: mvnLT R11, R4
l2812: mvnVC R7, R9
l2813: clz R0, R5
l2814: subGTs R3, R15, #28672
l2815: orr R1, R3, #126
l2816: movCC R10, R7, LSR #20
l2817: mvnMI R1, #35651584
l2818: subLT R6, R9, R10, ROR R8
l2819: adcLS R3, R11, R0, LSL #11
l2820: adcLSs R1, R7, R8, RRX 
l2821: cmpCS R0, #15296
l2822: eorVS R3, R2, R6, LSR R12
l2823: clzLE R10, R4
l2824: eors R1, R2, R8
l2825: eorVCs R7, R4, #1884160
l2826: mvn R1, R15
l2827: eorLE R4, R11, R6, ASR R11
l2828: clz R6, R1
l2829: subCC R12, R8, R8
l2830: andLSs R4, R10, R3, RRX 
l2831: orr R3, R15, R10, ASR #30
l2832: eor R5, R10, #203776
l2833: mov R10, #47
l2834: strPLB R14, [sp, -R10]
l2835: sub R8, R7, R5, LSL #14
l2836: tstMI R12, #508
l2837: sbcEQs R2, R2, R9, ASR #29
l2838: rsbLTs R14, R3, R15
l2839: b l2846
l2840: add R1, R0, #150
l2841: adcs R1, R0, R14, RRX 
l2842: adds R7, R0, R9
l2843: bics R12, R7, R10, LSL R12
l2844: bics R6, R1, R12, ROR #3
l2845: b l2847
l2846: b l2841
l2847: cmn R10, R11, RRX 
l2848: b l2855
l2849: rsb R12, R14, R1, RRX 
l2850: cmn R11, R0, LSL R8
l2851: cmnVC R8, #712
l2852: adcGEs R2, R8, R5, LSL R4
l2853: cmnEQ R11, R4, LSR R7
l2854: adcCCs R4, R8, R11, ROR R0
l2855: rsbMI R4, R3, R0, ROR #9
l2856: andHI R8, R0, R1
l2857: mov R9, #39
l2858: ldrEQB R12, [sp, -R9]
l2859: rscCCs R11, R2, R8, LSR R8
l2860: mov R14, #38
l2861: ldrB R2, [sp, -R14]
l2862: rscPL R4, R9, R12, LSL R7
l2863: bCC l2867
l2864: bicPL R4, R3, #822083584
l2865: cmnHI R12, R1
l2866: movCCs R1, #9152
l2867: eor R3, R6, #499712
l2868: b l2875
l2869: clzMI R0, R10
l2870: sbcLT R9, R15, R15, ROR #30
l2871: add R8, R12, R2, ASR R10
l2872: subGT R12, R6, R12, LSR R4
l2873: adcEQ R4, R10, R4
l2874: cmp R14, R12, LSL R4
l2875: mvnLT R8, R6, ASR R2
l2876: subNEs R7, R8, #1900544
l2877: subLSs R14, R4, #95
l2878: clz R12, R3
l2879: bVS l2888
l2880: add R1, R0, #106
l2881: subGT R11, R5, R4, ROR #13
l2882: sbc R5, R14, R1
l2883: eor R5, R11, #1
l2884: subs R5, R0, #1073741829
l2885: ands R6, R10, R5, RRX 
l2886: mvnCSs R5, #54272
l2887: b l2889
l2888: b l2881
l2889: sbcs R3, R6, R12
l2890: movs R14, #268435456
l2891: sbc R5, R12, R8
l2892: rsbs R1, R4, #560
l2893: str R15, [sp, #+8]
l2894: adcGTs R1, R3, R4, ROR #6
l2895: bVS l2901
l2896: add R1, R0, #243
l2897: clzVC R8, R9
l2898: movPL R1, R10
l2899: movs R4, R8, RRX 
l2900: b l2902
l2901: b l2897
l2902: bicVCs R6, R4, R2
l2903: add R7, R2, R15, ROR #1
l2904: teqHI R5, R0, LSL #5
l2905: bGE l2911
l2906: add R1, R0, #93
l2907: eor R9, R3, R7
l2908: rsbLT R8, R4, R5, ROR #11
l2909: clzEQ R4, R0
l2910: b l2912
l2911: b l2907
l2912: b l2921
l2913: add R1, R0, #74
l2914: teq R2, R12, RRX 
l2915: mov R10, R7, ASR R8
l2916: addEQ R6, R4, R7, LSL #26
l2917: andEQs R5, R2, R12, ROR R11
l2918: adcVS R10, R6, R11, ROR R12
l2919: addPL R12, R14, #9280
l2920: b l2922
l2921: b l2914
l2922: ands R5, R14, R10
l2923: andEQ R8, R14, R2, LSL R6
l2924: bVS l2932
l2925: teq R3, #98304
l2926: mvnMI R7, R11
l2927: eors R12, R0, R12, RRX 
l2928: rsbLEs R5, R2, #360448
l2929: subs R3, R1, R9, ASR R7
l2930: cmn R4, R9, RRX 
l2931: cmp R14, R14, ROR R0
l2932: sbcEQs R4, R3, #2785280
l2933: orrs R11, R2, R1, ASR #14
l2934: ldrB R6, [sp, #-47]
l2935: cmp R5, #8128
l2936: mov R6, #44
l2937: str R5, [sp], -R6
l2938: sbcPL R10, R3, R4, LSL #9
l2939: andCS R10, R14, #626688
l2940: orrs R10, R11, R3
l2941: mvnCC R1, R14, LSL R6
l2942: bGE l2946
l2943: add R1, R0, #27
l2944: rscMIs R10, R9, R9, LSR #22
l2945: b l2947
l2946: b l2944
l2947: subCS R12, R0, #6881280
l2948: clzVS R5, R1
l2949: sub R12, R9, R7, ROR #27
l2950: cmnLS R10, R15, ASR #7
l2951: mvn R8, #255852544
l2952: orrVC R4, R0, R7, LSR #23
l2953: cmnVS R3, #15859712
l2954: and R5, R3, R4, ROR R4
l2955: movEQs R8, R11, ASR #26
l2956: rsbVC R6, R6, #310378496
l2957: sub R9, R4, R8, RRX 
l2958: bicPLs R4, R7, R10, RRX 
l2959: mvns R12, #28835840
l2960: teqLE R12, #235520
l2961: mvnHI R3, R7
l2962: mvn R3, R1, ASR #6
l2963: b l2969
l2964: eorEQs R2, R5, R0, ASR R6
l2965: teqLS R1, R14, LSL R4
l2966: andNEs R1, R11, #36352
l2967: rscs R8, R11, R7
l2968: teqVS R0, R12, RRX 
l2969: sbcMI R9, R9, R6, ASR #8
l2970: bLT l2974
l2971: cmpLE R12, #-1073741764
l2972: adcs R4, R10, #64512
l2973: bicLT R2, R11, R3, RRX 
l2974: clz R2, R2
l2975: cmn R8, R10, LSL #6
l2976: adcMI R8, R4, R8, RRX 
l2977: teq R1, #745472
l2978: add R11, R7, R7, LSR #12
l2979: rsbHIs R3, R5, R6, LSR #9
l2980: rsc R9, R7, R12, LSL R2
l2981: clz R3, R6
l2982: orr R3, R2, R4, LSL #10
l2983: orrNEs R4, R11, R7, RRX 
l2984: ands R14, R11, R11, LSL #16
l2985: addLSs R12, R0, R5, LSR #18
l2986: str R14, [sp, #+16]!
l2987: addGE R8, R1, #1442840576
l2988: ldr R7, [sp], #+24
l2989: mov R3, #17
l2990: ldrVSB R12, [sp, -R3]
l2991: eorVSs R4, R5, R12, LSR R12
l2992: sbc R5, R3, R0, ROR R1
l2993: bLS l3002
l2994: add R1, R0, #118
l2995: tstHI R1, #18087936
l2996: teq R14, R1, LSL #15
l2997: subs R1, R4, R7
l2998: orr R6, R2, #2112
l2999: orr R12, R11, R9, ASR R1
l3000: movs R10, R6
l3001: b l3003
l3002: b l2995
l3003: teq R3, R0
l3004: bLS l3010
l3005: subGE R1, R7, R1, LSL #11
l3006: rscCCs R10, R15, #946176
l3007: mvnVSs R2, R4
l3008: movVCs R0, R3, LSL R10
l3009: eor R2, R0, R6
l3010: teq R5, #880
l3011: teqLT R5, R10
l3012: orrNE R9, R0, R8, RRX 
l3013: b l3019
l3014: add R1, R0, #195
l3015: rsbs R8, R6, #82
l3016: cmpPL R0, #1572864
l3017: rsc R0, R14, R10, RRX 
l3018: b l3020
l3019: b l3015
l3020: bVC l3027
l3021: bics R6, R1, R12, ASR R11
l3022: subs R11, R5, R14, LSR R2
l3023: subs R10, R3, R8, RRX 
l3024: subVS R9, R0, R6, LSR R10
l3025: tstMI R15, R6
l3026: subNE R10, R14, R14
l3027: rsc R10, R10, R14, RRX 
l3028: clz R11, R7
l3029: addLE R11, R7, R8, ROR #26
l3030: teq R14, #-1073741803
l3031: sub R5, R2, R1, ROR #23
l3032: adcVC R6, R11, R15, ASR #5
l3033: mov R3, #11
l3034: strB R3, [sp, +R3]
l3035: sbcCCs R3, R15, R11, LSL #9
l3036: sub R14, R6, R0, ROR R1
l3037: sbcGE R8, R10, R2, ROR R6
l3038: orrLSs R5, R6, R14
l3039: subVC R4, R10, R8, RRX 
l3040: clzLS R5, R12
l3041: bic R5, R8, R0
l3042: bEQ l3047
l3043: add R1, R0, #216
l3044: tstGT R7, R5, ASR #12
l3045: rsbs R4, R6, R15
l3046: b l3048
l3047: b l3044
l3048: bics R14, R10, #249856
l3049: teqCS R1, R8, LSL R4
l3050: movCCs R9, #83886080
l3051: clz R6, R2
l3052: mov R3, #32
l3053: ldrLEB R0, [sp, -R3]
l3054: ands R6, R7, R6, ASR #13
l3055: bicVC R6, R4, R0, RRX 
l3056: rsbs R8, R8, R14
l3057: rscNE R9, R9, R7
l3058: mvn R11, R1, LSL #6
l3059: sbcLTs R1, R0, R12
l3060: b l3067
l3061: add R1, R0, #61
l3062: rsbs R12, R2, R11, ASR #16
l3063: orr R12, R11, R2, ASR #2
l3064: adcGT R8, R9, #3008
l3065: subs R6, R6, R11, LSL #31
l3066: b l3068
l3067: b l3062
l3068: movs R12, R3, ASR R2
l3069: subMI R12, R15, #3
l3070: adcMIs R9, R2, #-1073741819
l3071: subGEs R10, R8, R1, RRX 
l3072: eorMIs R0, R15, R4
l3073: orr R8, R1, R12
l3074: teqLS R1, R15, ASR #3
l3075: b l3082
l3076: cmp R12, #52736
l3077: eor R3, R14, R2
l3078: clz R8, R5
l3079: teqVC R4, #65024
l3080: cmn R15, #7488
l3081: teq R11, R1, LSL R8
l3082: andVS R10, R3, #173
l3083: eorEQ R0, R7, R12
l3084: andEQs R14, R15, #32768
l3085: str R7, [sp], #-8
l3086: rsc R3, R3, #786432
l3087: cmpPL R6, R11, ASR #0
l3088: teq R12, R3
l3089: tst R9, R12
l3090: eorLSs R0, R14, R15, RRX 
l3091: orr R1, R12, R7, LSR #9
l3092: subs R7, R15, R15
l3093: adcs R6, R7, #1344
l3094: strB R4, [sp, #-29]
l3095: orrs R9, R7, R5, RRX 
l3096: orrs R11, R1, R11, ASR R10
l3097: eor R1, R4, R10, ROR #16
l3098: andEQs R9, R11, #13184
l3099: rscCSs R0, R15, #11
l3100: mov R8, #36
l3101: ldrB R11, [sp, -R8]
l3102: teqVC R5, R10, RRX 
l3103: adds R0, R14, R11, LSL R9
l3104: b l3107
l3105: cmnCC R12, R7
l3106: movCC R2, #217088
l3107: cmnVC R5, R6
l3108: b l3112
l3109: add R1, R0, #142
l3110: mvn R9, R10, LSR R10
l3111: b l3113
l3112: b l3110
l3113: ldrB R12, [sp, #+15]
l3114: eorEQ R10, R14, R7, LSR #9
l3115: mov R9, #36
l3116: str R8, [sp, -R9]!
l3117: mov R1, #56
l3118: str R10, [sp], +R1
l3119: rsbCSs R14, R7, R7, ASR #2
l3120: mvnNEs R8, R10, LSL #6
l3121: mvnHI R5, R10, ROR R7
l3122: ands R4, R4, R5, RRX 
l3123: ldrPLB R4, [sp, #-48]
l3124: orrGE R3, R2, #2113929216
l3125: adc R1, R4, #536870918
l3126: sub R6, R6, R4, ROR #21
l3127: mvnVSs R4, #37748736
l3128: strVCB R0, [sp, #-13]
l3129: andVC R1, R12, R6, RRX 
l3130: adcVS R1, R7, R10
l3131: addCSs R3, R4, R10, LSL R2
l3132: sub R5, R9, R12
l3133: b l3140
l3134: add R1, R0, #100
l3135: sbcEQ R2, R14, R9, LSR #9
l3136: clzGE R4, R5
l3137: eorVCs R1, R0, R1
l3138: cmp R12, R2, ROR #29
l3139: b l3141
l3140: b l3135
l3141: bMI l3150
l3142: teq R10, R8, LSR R12
l3143: orrVC R2, R6, R2
l3144: sbc R0, R0, R1
l3145: clzLT R11, R8
l3146: rsbs R5, R9, R10
l3147: subGTs R14, R2, R9, ROR #30
l3148: movs R8, R7, LSR #6
l3149: mvnVCs R11, R1, RRX 
l3150: rsc R8, R6, R3
l3151: mov R0, #47104
l3152: subNEs R6, R14, #44564480
l3153: bHI l3159
l3154: add R1, R0, #232
l3155: mvns R1, R5, LSL #1
l3156: subs R5, R10, R10, LSR #21
l3157: rscCC R7, R14, R10
l3158: b l3160
l3159: b l3155
l3160: mvn R5, R15
l3161: addCS R0, R1, R6, ROR R12
l3162: rscGE R12, R14, R9, ASR #4
l3163: rsb R9, R5, R6, RRX 
l3164: subs R14, R5, R12, RRX 
l3165: teq R6, R4, ROR #24
l3166: sbcLEs R10, R6, R11
l3167: cmp R14, R5
l3168: tstHI R15, R10, LSR #22
l3169: mvnLSs R8, #737280
l3170: orrLSs R8, R15, R14
l3171: cmnGT R5, #1984
l3172: cmp R8, #240
l3173: movGT R7, R1
l3174: strEQB R11, [sp, #-52]
l3175: tst R4, #745472
l3176: cmp R4, #121
l3177: orr R7, R8, #2424832
l3178: clz R9, R3
l3179: sbcs R9, R9, R11, ASR #14
l3180: andMIs R2, R3, R2, ROR R12
l3181: movCC R7, R7, ROR R5
l3182: mvns R9, R7, RRX 
l3183: andCCs R3, R11, #205
l3184: mvns R7, R1
l3185: cmp R12, R9
l3186: rsc R7, R8, R5, LSR R7
l3187: movHIs R1, R4, RRX 
l3188: cmpVC R3, R2
l3189: rsb R9, R0, R12, LSL #27
l3190: subCS R6, R12, R1
l3191: sbcMI R7, R6, #168
l3192: orr R11, R4, R12
l3193: movGEs R5, R2, RRX 
l3194: sbcCS R14, R6, R3
l3195: clz R9, R14
l3196: adcLSs R2, R14, #856064
l3197: cmnHI R1, #724
l3198: str R9, [sp, #+8]
l3199: subs R11, R4, R1, ASR #7
l3200: movVCs R14, R11, LSR #12
l3201: adcGEs R9, R5, R4, RRX 
l3202: bPL l3208
l3203: add R1, R0, #249
l3204: tst R4, R10, LSR #16
l3205: rsb R6, R3, R7, LSR R14
l3206: cmnHI R14, R7
l3207: b l3209
l3208: b l3204
l3209: rsbNE R6, R1, R1, ASR R12
l3210: bMI l3216
l3211: add R1, R0, #175
l3212: sub R1, R10, R14, ROR R2
l3213: cmp R6, R8
l3214: mvns R2, R11
l3215: b l3217
l3216: b l3212
l3217: cmpVC R7, R11, LSR R14
l3218: movLSs R0, #33816576
l3219: bicLSs R6, R0, R2
l3220: bGT l3224
l3221: cmnLT R3, R14, ASR R2
l3222: add R10, R0, R4
l3223: rscNE R5, R7, #400
l3224: clzGT R8, R10
l3225: orrs R4, R10, R8, LSR R7
l3226: bGE l3231
l3227: rscs R0, R15, #-2147483613
l3228: cmpVS R7, R10, LSL R12
l3229: eors R1, R3, #58720256
l3230: subGTs R4, R4, R7, ROR #27
l3231: tstVS R6, R3, LSL #29
l3232: eor R12, R4, R14, LSL R11
l3233: rsbs R10, R4, R2, LSR R1
l3234: adc R3, R12, #786432
l3235: cmp R8, R5
l3236: rsbLE R11, R15, R12, RRX 
l3237: mvnCCs R12, #12672
l3238: b l3241
l3239: sbcLTs R2, R8, R1, ASR R6
l3240: bicNE R7, R5, #124780544
l3241: sbcLSs R9, R11, R9, ASR R7
l3242: andLT R11, R1, R5
l3243: mvnCCs R9, R3, LSR #6
l3244: subs R12, R1, #872448
l3245: b l3249
l3246: add R1, R0, #34
l3247: andEQ R8, R7, R5, ASR #27
l3248: b l3250
l3249: b l3247
l3250: eorEQs R0, R1, R9, ROR R7
l3251: b l3255
l3252: sbcCSs R6, R1, #-134217728
l3253: sbcs R4, R3, R2, RRX 
l3254: sub R10, R14, R3, LSR #11
l3255: subGT R8, R3, R4, LSL #24
l3256: teqVC R2, #7012352
l3257: orr R3, R0, R8, ASR #25
l3258: ldr R9, [sp], #-24
l3259: subMIs R5, R12, R4, LSL R1
l3260: bVS l3265
l3261: clzVS R3, R5
l3262: sbcs R1, R14, R1, ROR #29
l3263: orrLTs R6, R7, R10
l3264: subEQ R12, R5, #54272
l3265: clzPL R14, R6
l3266: mov R3, #7
l3267: ldrVCB R6, [sp, -R3]
l3268: cmpPL R14, R9
l3269: bGE l3275
l3270: add R1, R0, #16
l3271: orr R7, R1, R4, RRX 
l3272: orrVSs R12, R9, R10, RRX 
l3273: sbcs R7, R6, R4, ASR #2
l3274: b l3276
l3275: b l3271
l3276: clzEQ R0, R10
l3277: eorCSs R6, R7, R6
l3278: strEQB R3, [sp, #-29]
l3279: rsb R12, R10, R7, LSR #11
l3280: teq R0, R3, ROR #16
l3281: teq R9, R11, ASR R0
l3282: cmn R12, R12, ASR R9
l3283: teq R14, R11
l3284: subNEs R8, R3, R14, RRX 
l3285: subLSs R6, R5, R2, RRX 
l3286: movGE R2, R4, ASR R2
l3287: ands R9, R0, R1, LSL R0
l3288: bCS l3298
l3289: eor R10, R14, R11
l3290: subs R8, R3, R9, RRX 
l3291: and R2, R14, R6
l3292: adds R9, R9, R14
l3293: subs R7, R15, R12
l3294: ands R8, R2, R14, RRX 
l3295: clzLT R4, R7
l3296: clzHI R11, R7
l3297: addLS R7, R14, R9
l3298: cmpVC R4, R2, ROR #9
l3299: bVC l3305
l3300: add R1, R0, #168
l3301: orrs R10, R6, R15, ROR #20
l3302: subPLs R3, R9, R7, ASR #14
l3303: mvn R10, #29440
l3304: b l3306
l3305: b l3301
l3306: eorLEs R6, R0, R3
l3307: clz R9, R9
l3308: ands R0, R3, #1073741824
l3309: mov R7, R4
l3310: movMIs R0, #692
l3311: b l3319
l3312: add R1, R0, #49
l3313: bic R12, R0, R12
l3314: bicPL R4, R5, #48128
l3315: eorCS R10, R12, #-570425344
l3316: rsbVC R8, R7, R6, LSR R12
l3317: adc R2, R9, R14, LSR R3
l3318: b l3320
l3319: b l3313
l3320: bics R2, R0, #13376
l3321: sbcs R4, R3, #385875968
l3322: mov R5, #4
l3323: strNEB R12, [sp, +R5]
l3324: bLT l3329
l3325: add R1, R0, #166
l3326: subLT R6, R2, R11, ROR R1
l3327: teq R4, R1, LSL R5
l3328: b l3330
l3329: b l3326
l3330: bicCS R12, R0, R10, LSR #22
l3331: b l3337
l3332: add R1, R0, #221
l3333: sub R6, R6, R2
l3334: teq R3, #3211264
l3335: movs R5, R10, ASR R10
l3336: b l3338
l3337: b l3333
l3338: bMI l3346
l3339: addCSs R9, R2, R10, ROR R7
l3340: andPLs R3, R5, R1, LSR #8
l3341: eorCC R12, R7, R15, ASR #28
l3342: rsbs R2, R7, R11
l3343: adds R11, R3, R1, LSL R1
l3344: clz R7, R14
l3345: cmn R6, #1568
l3346: mvnCSs R7, #14336
l3347: mov R2, #38
l3348: ldrLSB R6, [sp, +R2]
l3349: subGT R12, R14, R10, ROR R0
l3350: tstMI R8, #7
l3351: bNE l3359
l3352: add R1, R0, #81
l3353: rscLS R5, R14, R11, RRX 
l3354: subVS R0, R3, #262144000
l3355: sub R10, R9, R4, RRX 
l3356: bics R9, R5, #2640
l3357: subVS R10, R14, #3232
l3358: b l3360
l3359: b l3353
l3360: rsb R5, R4, #237568
l3361: clzEQ R3, R12
l3362: mvnMIs R8, #-1879048192
l3363: mvnGT R12, #230400
l3364: bics R6, R5, R5, RRX 
l3365: eor R10, R8, R11, ROR #15
l3366: subLS R9, R6, #4032
l3367: mvnLTs R0, R9, LSR #15
l3368: str R12, [sp], #+0
l3369: movs R6, R1, LSL R10
l3370: mvnGT R1, R0
l3371: and R2, R2, #268435463
l3372: teq R10, R12
l3373: cmnLT R3, R5
l3374: bCS l3376
l3375: clz R9, R9
l3376: tstLS R9, #1073741865
l3377: tst R15, R0, ASR #0
l3378: addVCs R4, R11, R11, ROR R3
l3379: clzEQ R1, R8
l3380: orrMI R0, R6, R9, LSR #15
l3381: adcs R1, R6, R6
l3382: cmnVC R7, R3, LSR R9
l3383: strB R11, [sp, #+28]
l3384: clzLE R5, R2
l3385: bVC l3390
l3386: subPLs R12, R15, R7, ASR #0
l3387: orrMI R10, R10, R2, ROR R4
l3388: subVSs R5, R6, R4, RRX 
l3389: eors R14, R4, R1, ASR R1
l3390: tstLS R8, R15, LSR #5
l3391: adcPLs R14, R15, R12, LSL #15
l3392: adcs R0, R0, R4
l3393: mvnHIs R7, #595591168
l3394: movs R14, R8
l3395: cmnVC R1, R8
l3396: mov R6, #24
l3397: ldr R10, [sp, -R6]
l3398: bicPL R5, R8, R11, LSL #31
l3399: ldrB R0, [sp, #-5]
l3400: and R6, R1, #179306496
l3401: addCS R1, R5, R2
l3402: mvnNE R2, R6
l3403: bVC l3409
l3404: add R1, R0, #224
l3405: bics R10, R11, #10752
l3406: cmpLE R3, R5, ROR R3
l3407: rsbHI R14, R0, R0
l3408: b l3410
l3409: b l3405
l3410: orrs R2, R4, R1
l3411: clzEQ R12, R1
l3412: andMIs R6, R6, R8
l3413: rscLEs R3, R2, R1, RRX 
l3414: b l3415
l3415: cmn R1, #-1207959551
l3416: subs R8, R7, R2, ROR #21
l3417: clzVC R6, R12
l3418: movs R2, #260046848
l3419: bicEQ R0, R8, R2, LSR #23
l3420: subPL R6, R12, R15, LSL #12
l3421: cmpGE R14, R15
l3422: addLS R8, R15, R14
l3423: rscLE R6, R1, R7, LSR R2
l3424: teq R3, R1, LSR #23
l3425: mvn R5, #914358272
l3426: clzCS R11, R9
l3427: bicEQ R6, R12, R5
l3428: cmpVS R5, #-1073741799
l3429: b l3435
l3430: add R1, R0, #33
l3431: cmnEQ R7, R11, RRX 
l3432: addMI R7, R7, #3040
l3433: tst R4, #144703488
l3434: b l3436
l3435: b l3431
l3436: clz R3, R0
l3437: orrs R9, R12, R0, ROR R12
l3438: clzGT R11, R1
l3439: strLTB R12, [sp, #+33]
l3440: bVC l3445
l3441: cmnGT R14, R5, LSL R1
l3442: cmp R2, R2
l3443: subVSs R3, R15, R10, LSR #5
l3444: tstGT R15, R6
l3445: eorGT R6, R3, #107
l3446: b l3454
l3447: add R1, R0, #165
l3448: subCS R4, R3, R4, RRX 
l3449: subs R10, R1, R10, LSL R9
l3450: addPL R14, R0, R11, LSL R1
l3451: adcPL R2, R0, #148897792
l3452: tstPL R1, #3264
l3453: b l3455
l3454: b l3448
l3455: orrGTs R12, R6, R0
l3456: tst R7, R8, LSR R6
l3457: bicHIs R1, R7, R7, RRX 
l3458: ldrB R9, [sp, #-11]
l3459: mvnCCs R11, #805306375
l3460: subs R6, R1, R9, LSR R14
l3461: eor R2, R3, #1064960
l3462: eorEQ R9, R0, R9
l3463: subCS R4, R3, R12, RRX 
l3464: rsb R11, R9, #626688
l3465: adcs R4, R11, R5
l3466: orrLSs R1, R14, R11, ASR R4
l3467: b l3471
l3468: add R1, R0, #144
l3469: tstLE R9, R7, ROR #6
l3470: b l3472
l3471: b l3469
l3472: subLTs R9, R8, R5, ROR R5
l3473: rscCSs R7, R11, #1073741824
l3474: bic R12, R6, R3
l3475: sbc R10, R0, R4, RRX 
l3476: str R14, [sp], #-32
l3477: bicCCs R2, R0, R11, LSR R1
l3478: orrMI R11, R7, #65536
l3479: subs R14, R8, R6, LSL R5
l3480: b l3486
l3481: add R1, R0, #121
l3482: rscNE R5, R10, R2
l3483: mvns R14, R9, LSR #13
l3484: tst R9, R3
l3485: b l3487
l3486: b l3482
l3487: eor R14, R3, R2
l3488: teqEQ R3, R10
l3489: teqLE R15, R3, LSL #22
l3490: subCSs R12, R10, R10, ASR R4
l3491: mvns R5, R6, ROR R12
l3492: sbcVS R2, R0, R7
l3493: bNE l3502
l3494: orrLSs R14, R11, R1, LSR #23
l3495: orrs R7, R1, #2048
l3496: sbc R4, R8, R0
l3497: tstGT R0, R15
l3498: sbcs R1, R15, R0
l3499: subHI R1, R1, R7, ROR R7
l3500: clzLE R10, R14
l3501: adcs R3, R2, R6, ASR #7
l3502: rscs R11, R11, R15
l3503: ands R11, R15, R9
l3504: bVS l3514
l3505: sub R2, R10, R4
l3506: orrLT R3, R11, #598016
l3507: eorLS R4, R9, R6
l3508: orrLS R12, R12, R10, ROR #11
l3509: sub R2, R2, R11
l3510: mvns R10, R15, LSR #8
l3511: rscHIs R9, R11, R5, RRX 
l3512: eorLE R1, R4, R0
l3513: rsbCSs R3, R6, R6, ROR #25
l3514: clz R4, R5
l3515: addEQ R8, R11, R2, RRX 
l3516: addGT R8, R8, R6, LSR R9
l3517: movLEs R9, R8
l3518: eorHIs R12, R5, R6, LSL #18
l3519: andGE R2, R6, R11
l3520: movEQs R7, R8
l3521: tstHI R4, R10, LSL #29
l3522: cmp R4, R11, RRX 
l3523: eorLTs R11, R11, R0
l3524: orrs R0, R11, R0, LSR R11
l3525: clz R3, R4
l3526: mvnGEs R9, R14
l3527: mov R7, #28
l3528: ldr R10, [sp], +R7
l3529: b l3533
l3530: add R1, R0, #32
l3531: cmpEQ R6, R11, ASR #20
l3532: b l3534
l3533: b l3531
l3534: mov R7, #32
l3535: str R2, [sp, +R7]
l3536: mov R5, R10
l3537: tst R7, R11
l3538: bGE l3543
l3539: add R1, R0, #60
l3540: cmp R4, #207
l3541: sub R2, R8, R8, ASR R6
l3542: b l3544
l3543: b l3540
l3544: teq R3, R4, RRX 
l3545: rscNEs R5, R8, R14
l3546: cmpEQ R12, #536870915
l3547: eorLSs R14, R11, #234881024
l3548: orrHI R6, R7, #589824
l3549: bic R10, R7, R9
l3550: eorLT R7, R10, R5, ASR #13
l3551: teqLE R7, #2031616
l3552: teqCS R4, #-2147483617
l3553: orr R5, R9, R8
l3554: eor R8, R1, R2
l3555: tst R15, R6
l3556: mvn R9, R11
l3557: eorNE R2, R4, #192
l3558: bics R2, R7, #-1610612726
l3559: bVS l3567
l3560: add R1, R0, #185
l3561: orrs R9, R1, R14, LSR R6
l3562: addVSs R6, R7, R9, LSL R1
l3563: tstGE R9, #11337728
l3564: orr R11, R4, #448
l3565: rsc R7, R12, R0
l3566: b l3568
l3567: b l3561
l3568: clzGE R3, R0
l3569: subLS R0, R0, R8, ROR R14
l3570: teqGT R0, R9
l3571: str R6, [sp], #+40
l3572: cmpVS R15, #180
l3573: andPLs R6, R0, R8, LSR #9
l3574: clzEQ R1, R9
l3575: orrGE R11, R6, #208
l3576: teq R9, R14, ASR #14
l3577: eors R10, R2, R0, LSL R10
l3578: cmpMI R1, R7
l3579: orrs R9, R7, #-1811939328
l3580: subGE R5, R6, R10
l3581: andLEs R5, R4, R5, ASR R7
l3582: orrHI R5, R15, R9, ASR #31
l3583: eor R12, R3, R12, LSR #2
l3584: rscGE R8, R9, R12, ROR #1
l3585: mov R4, #12
l3586: ldr R14, [sp, -R4]
l3587: mov R10, #56
l3588: ldrB R1, [sp, -R10]
l3589: adds R9, R12, R2
l3590: andNE R0, R9, #2240
l3591: orr R4, R9, R2, ASR R8
l3592: mov R14, #7
l3593: strLTB R1, [sp, -R14]
l3594: strLS R1, [sp, #-40]
l3595: bics R7, R12, R12, ASR R11
l3596: add R4, R4, #1152
l3597: orrCC R0, R1, #167936
l3598: eorHIs R2, R8, #-1073741824
l3599: orrPLs R2, R8, R8, ASR R1
l3600: cmnMI R2, R10, RRX 
l3601: andVCs R12, R9, R1, LSR R14
l3602: rsb R2, R11, #26
l3603: mvn R14, R10
l3604: teq R6, #53760
l3605: b l3614
l3606: add R1, R0, #54
l3607: tst R8, R8
l3608: mvns R9, R10
l3609: tstCC R3, #-1073741800
l3610: cmp R15, #-671088639
l3611: tst R12, R7
l3612: sub R7, R8, R8, RRX 
l3613: b l3615
l3614: b l3607
l3615: orrGEs R5, R9, #2528
l3616: b l3621
l3617: add R1, R0, #157
l3618: subLSs R14, R15, #-2147483645
l3619: rsc R0, R8, R1, LSL R9
l3620: b l3622
l3621: b l3618
l3622: rscNEs R6, R11, R1, ROR R2
l3623: andLEs R0, R15, #14656
l3624: subHI R14, R14, R0, ROR R4
l3625: orrGT R8, R14, R4, LSR R11
l3626: ldrB R8, [sp, #-37]
l3627: b l3633
l3628: add R1, R0, #193
l3629: bicLS R9, R1, R1, LSL R3
l3630: rscLS R6, R12, R5, ROR R3
l3631: bicMI R3, R12, R11, LSL R12
l3632: b l3634
l3633: b l3629
l3634: adcNEs R2, R1, R12, LSL R6
l3635: movLSs R2, R11, LSL R2
l3636: subLT R2, R6, R9, ROR R5
l3637: orrCC R0, R1, R3, ASR #8
l3638: bVC l3645
l3639: clzVS R4, R6
l3640: orrs R12, R15, #7680
l3641: mvnMI R6, R5
l3642: cmnLS R9, #760
l3643: cmn R5, R10, RRX 
l3644: movs R7, R12
l3645: tst R0, R9, RRX 
l3646: rsb R5, R4, R2
l3647: clzVC R7, R6
l3648: addVSs R1, R3, R12, LSR #0
l3649: movs R10, R10, RRX 
l3650: subs R1, R12, R10, ROR #17
l3651: eorLTs R0, R12, R8
l3652: cmn R11, R15, LSR #21
l3653: tst R9, R0, LSL R4
l3654: eorMI R0, R8, R7, ROR R4
l3655: andLSs R9, R7, R9
l3656: add R4, R3, R14, ROR R3
l3657: eorNE R10, R5, #-268435441
l3658: adc R5, R7, R10, RRX 
l3659: adds R11, R2, R14
l3660: mov R6, R14, LSL #18
l3661: eorLT R12, R12, #3424256
l3662: sub R2, R3, R11, ASR R11
l3663: teq R2, R5
l3664: b l3671
l3665: add R1, R0, #160
l3666: mvns R6, R9, LSR R3
l3667: eorLT R9, R10, #3751936
l3668: teq R9, R10, RRX 
l3669: rsbLTs R5, R14, R11, LSR R6
l3670: b l3672
l3671: b l3666
l3672: bGT l3674
l3673: mvnLS R10, R1, RRX 
l3674: tst R2, #5
l3675: orrHIs R2, R10, R2, ROR R14
l3676: rsc R7, R1, R9
l3677: movs R0, R4, ASR R8
l3678: str R1, [sp, #-4]!
l3679: and R2, R9, #720
l3680: adcMIs R14, R9, #69206016
l3681: orrLTs R0, R3, #1073741836
l3682: subs R14, R5, #408
l3683: teq R4, #786432
l3684: bicCC R11, R0, R14, ROR R9
l3685: b l3690
l3686: subCSs R11, R7, R10, RRX 
l3687: add R1, R2, R8, RRX 
l3688: cmp R12, R5, ROR #28
l3689: and R14, R12, #139460608
l3690: mvn R11, #339968
l3691: sbcGEs R12, R10, #22020096
l3692: orrEQ R2, R7, R6, LSR #26
l3693: mov R10, #40
l3694: ldrPLB R12, [sp, -R10]
l3695: mov R6, R0, ROR #3
l3696: movs R14, R6, ROR R9
l3697: eor R4, R8, R8, ASR #11
l3698: eors R10, R12, #2785280
l3699: eorEQs R7, R2, R2, ROR R3
l3700: b l3701
l3701: subLEs R6, R9, R6
l3702: clz R10, R1
l3703: ands R3, R12, R0, ASR R5
l3704: teqGT R8, R0, ROR #29
l3705: cmp R0, R7, LSR #22
l3706: sbc R2, R9, R14, ROR R7
l3707: b l3714
l3708: add R1, R0, #62
l3709: tstGT R5, R11, LSR #2
l3710: clzGE R10, R9
l3711: mvns R14, R5, RRX 
l3712: bicCCs R9, R12, R12, ASR R2
l3713: b l3715
l3714: b l3709
l3715: orrPLs R1, R10, R6, RRX 
l3716: addLTs R14, R9, R8, RRX 
l3717: cmp R3, R0, LSR R12
l3718: rsc R5, R9, R8, LSR #3
l3719: cmp R9, R0, LSR R4
l3720: orr R9, R7, R10, RRX 
l3721: cmn R5, R1, LSL #6
l3722: eorVS R3, R6, #27525120
l3723: eorGE R3, R1, R8
l3724: b l3733
l3725: add R1, R0, #165
l3726: sub R5, R3, R10
l3727: orrLTs R9, R15, R4
l3728: rscCCs R2, R8, R6, RRX 
l3729: cmnCC R7, R7
l3730: movs R1, R11
l3731: addLE R2, R8, R2, ASR R11
l3732: b l3734
l3733: b l3726
l3734: tstNE R14, R9, ASR R6
l3735: mov R2, #21
l3736: ldrB R2, [sp, -R2]
l3737: andGE R4, R4, R14, LSL R5
l3738: sub R7, R2, R14
l3739: clzVS R4, R8
l3740: tstGE R3, R7, LSR R9
l3741: bNE l3746
l3742: add R1, R0, #85
l3743: rsbLT R14, R14, R8, LSL R5
l3744: mov R8, R10, LSR #17
l3745: b l3747
l3746: b l3743
l3747: andCSs R1, R14, R2, RRX 
l3748: and R10, R15, #-536870902
l3749: eors R9, R10, R12, RRX 
l3750: mov R0, #0
l3751: ldr R0, [sp, +R0]
l3752: addCSs R14, R14, R9, LSL #28
l3753: addPL R12, R0, R15
l3754: mvns R7, #3833856
l3755: addCCs R9, R7, #75
l3756: clzLE R4, R11
l3757: subVSs R14, R14, R8, ASR #7
l3758: ldr R4, [sp, #-32]!
l3759: addMIs R3, R1, R4, ROR R6
l3760: eors R14, R4, R10
l3761: eorLEs R7, R9, R8
l3762: tstLT R14, #37748736
l3763: adcLSs R11, R2, R1
l3764: b l3771
l3765: add R1, R0, #118
l3766: teqLS R6, #954368
l3767: rscLE R6, R12, R0
l3768: bicVSs R4, R2, R1, LSL #18
l3769: subVS R7, R6, #258998272
l3770: b l3772
l3771: b l3766
l3772: b l3781
l3773: add R1, R0, #11
l3774: tstGT R2, #3751936
l3775: mov R8, R1, ROR R2
l3776: bic R3, R10, R15
l3777: tst R10, #-352321536
l3778: adcCC R5, R3, #992
l3779: clz R7, R4
l3780: b l3782
l3781: b l3774
l3782: movVC R8, R14
l3783: orrCCs R11, R14, R9, RRX 
l3784: andCCs R14, R6, #12160
l3785: bCS l3788
l3786: orrGEs R8, R7, R11
l3787: tst R5, #-805306356
l3788: sub R7, R2, #98
l3789: andLE R1, R10, R5, ASR R2
l3790: mvnNE R3, #6
l3791: bNE l3796
l3792: add R1, R0, #156
l3793: mov R7, R9, RRX 
l3794: bic R12, R2, R10
l3795: b l3797
l3796: b l3793
l3797: orrs R5, R6, R12
l3798: mov R0, R12, LSL #0
l3799: bGE l3804
l3800: teq R5, #39936
l3801: cmnEQ R3, R2
l3802: rscLEs R9, R2, #405504
l3803: cmpVS R0, R1
l3804: andLE R9, R2, R9
l3805: rsb R11, R3, R15
l3806: eorLE R10, R1, #8704
l3807: cmp R5, #58
l3808: andMI R10, R9, #2473984
l3809: b l3813
l3810: add R1, R0, #21
l3811: eorGT R5, R14, R8, ASR #24
l3812: b l3814
l3813: b l3811
l3814: eor R2, R12, R6, ROR #18
l3815: clzCS R0, R2
l3816: eorGT R12, R15, R0, LSL #8
l3817: rsc R1, R5, R11, LSR #8
l3818: b l3827
l3819: add R1, R0, #233
l3820: cmpVC R4, R3
l3821: clzCC R14, R5
l3822: bicMI R0, R15, #1277952
l3823: sbcCS R4, R0, R12
l3824: rsbLEs R3, R6, R15
l3825: sbcLTs R2, R14, R12, LSR #16
l3826: b l3828
l3827: b l3820
l3828: add R10, R14, R3, LSL #18
l3829: teq R9, R6, ROR R1
l3830: sub R14, R14, R11, LSL #26
l3831: bicCCs R9, R1, R1, LSL #31
l3832: addLS R7, R4, R4, LSL #20
l3833: adds R1, R14, R12
l3834: cmnVC R4, R8, ROR R7
l3835: subs R11, R2, #-805306366
l3836: bicCS R9, R12, #413696
l3837: mvn R2, R12
l3838: adcs R5, R9, R15
l3839: movGE R9, R8
l3840: b l3847
l3841: add R1, R0, #8
l3842: cmnLT R7, R6
l3843: cmn R12, #536870918
l3844: bicPL R9, R12, R4
l3845: rsbPLs R3, R5, #3145728
l3846: b l3848
l3847: b l3842
l3848: rsbLEs R2, R1, #622592
l3849: mov R3, #29
l3850: strB R14, [sp, -R3]
l3851: movLT R2, R4
l3852: cmn R15, #116736
l3853: bGT l3861
l3854: adc R1, R11, R0
l3855: and R3, R14, R3, ROR #28
l3856: tst R3, R10
l3857: subPLs R5, R9, R7, LSR R9
l3858: sub R10, R3, R6
l3859: subs R9, R11, R7
l3860: subCSs R9, R14, R11
l3861: addGEs R2, R4, #-536870909
l3862: adcNEs R9, R15, R10, ASR #18
l3863: ands R7, R2, #921600
l3864: subs R1, R1, #3168
l3865: b l3875
l3866: add R4, R0, #312
l3867: orrCSs R0, R6, R8, RRX 
l3868: rsbCS R3, R9, R4, RRX 
l3869: eor R0, R14, #1476395008
l3870: bic R3, R12, R2, RRX 
l3871: andVC R9, R15, R6
l3872: adcs R12, R1, #66
l3873: tstGT R10, #12
l3874: movGTs R0, R3, LSR #12
l3875: rsbs R2, R1, R12
l3876: clzLE R11, R6
l3877: and R7, R7, R14, LSL R4
l3878: rsbCSs R7, R0, R4, LSL R12
l3879: rsbs R9, R3, R8, ROR R6
l3880: bMI l3885
l3881: add R1, R0, #235
l3882: movLEs R2, R14
l3883: tst R0, R2, LSR R3
l3884: b l3886
l3885: b l3882
l3886: rsbVS R11, R0, R9, LSR #14
l3887: orrGEs R8, R6, R6, ASR #17
l3888: bicMI R4, R0, R11
l3889: b l3894
l3890: add R1, R0, #74
l3891: adc R11, R12, #136192
l3892: movVCs R2, #27648
l3893: b l3895
l3894: b l3891
l3895: sub R14, R9, R1, RRX 
l3896: orrVCs R12, R5, R0, LSL R3
l3897: sbcs R0, R11, R5, RRX 
l3898: adcLEs R9, R6, R8
l3899: subHI R14, R0, R4, ROR R5
l3900: movHI R2, #159383552
l3901: subs R14, R4, R10, ASR #0
l3902: b l3908
l3903: teqVS R8, R14, LSL #23
l3904: subs R4, R15, R9
l3905: teqLT R2, R14, ASR R11
l3906: adcs R11, R7, R3
l3907: rsbGTs R4, R6, R1, LSR #2
l3908: clzCS R11, R2
l3909: eor R11, R4, R6, ASR R6
l3910: rscs R2, R1, R15, ROR #23
l3911: subs R1, R1, R1, ROR R14
l3912: mvnGTs R2, R3, LSR R7
l3913: clzLE R14, R0
l3914: addGEs R2, R8, #1090519040
l3915: mov R2, #25
l3916: strB R7, [sp, +R2]
l3917: subs R4, R12, R6, RRX 
l3918: mov R2, #9
l3919: strB R3, [sp, +R2]
l3920: subs R6, R3, R12, LSL R12
l3921: teqGE R2, R5
l3922: cmp R3, R11, ASR #5
l3923: mvn R14, #1409286145
l3924: adcCSs R5, R5, R6
l3925: sub R4, R9, R11, LSL #20
l3926: bGE l3935
l3927: add R1, R0, #196
l3928: adcs R0, R8, #18688
l3929: bics R4, R5, R3, LSL #29
l3930: tstPL R3, R11, LSR R5
l3931: subs R6, R2, R9
l3932: eor R5, R0, R9
l3933: rsbGT R2, R6, R4, LSR #7
l3934: b l3936
l3935: b l3928
l3936: eorEQ R6, R8, #1073741863
l3937: eors R8, R14, #1526726656
l3938: bLS l3942
l3939: add R1, R0, #14
l3940: and R11, R15, #11993088
l3941: b l3943
l3942: b l3940
l3943: sbc R0, R12, R1, ASR #24
l3944: mov R0, R8
l3945: eorCCs R5, R6, R9, RRX 
l3946: orrs R4, R4, R8, LSL R2
l3947: teq R11, R7, LSR #25
l3948: orrLSs R8, R1, R3, RRX 
l3949: and R11, R15, R11
l3950: addEQ R4, R2, R3, RRX 
l3951: orrLTs R5, R15, R4, LSL #3
l3952: b l3958
l3953: rscMI R0, R9, R10, RRX 
l3954: bicEQ R0, R11, R1, RRX 
l3955: orrEQ R10, R3, #6684672
l3956: rsbGTs R0, R12, R4, RRX 
l3957: rsbVCs R2, R4, R7, ASR #14
l3958: clzEQ R6, R7
l3959: andCC R4, R6, #3712
l3960: eor R4, R8, R10, LSR R2
l3961: adds R4, R12, #227540992
l3962: bGT l3966
l3963: add R1, R0, #115
l3964: bicLTs R9, R2, R5, LSR R0
l3965: b l3967
l3966: b l3964
l3967: orrMI R9, R7, R2
l3968: adc R14, R9, R8, ROR #19
l3969: clz R2, R11
l3970: tst R12, R0, LSL #25
l3971: adcs R11, R9, #16252928
l3972: mvn R10, R0, RRX 
l3973: add R5, R7, #1073741868
l3974: strCSB R12, [sp, #-18]
l3975: b l3978
l3976: bicVS R3, R4, R3, RRX 
l3977: orrCCs R12, R1, R6, ROR R12
l3978: sbcVCs R0, R15, #778240
l3979: movCS R6, R14, ROR R9
l3980: addVSs R3, R11, R0
l3981: teqLS R6, R10
l3982: bVC l3988
l3983: add R1, R0, #96
l3984: rsb R4, R1, R7, LSR #25
l3985: rsbPLs R1, R14, R14, LSR R6
l3986: sbcs R9, R15, R9, RRX 
l3987: b l3989
l3988: b l3984
l3989: bCC l3996
l3990: sub R8, R5, R8, ROR #31
l3991: sbcHIs R9, R0, R0, ASR R3
l3992: subVCs R7, R8, R12
l3993: mvnMI R3, R11, LSL #13
l3994: cmpPL R8, R9, RRX 
l3995: eors R10, R7, #246415360
l3996: clzNE R2, R10
l3997: cmp R6, R11
l3998: andLSs R8, R8, R15, ROR #17
l3999: subLT R9, R9, R14
l4000: subVS R14, R3, R15, LSL #28
l4001: ldrVCB R12, [sp, #+38]
l4002: rscGE R5, R1, R9, ROR #24
l4003: b l4008
l4004: add R1, R0, #88
l4005: cmp R12, #385875968
l4006: adds R0, R3, R0
l4007: b l4009
l4008: b l4005
l4009: sbcHI R9, R2, #25600
l4010: eorCCs R3, R9, #1835008
l4011: eorVCs R8, R5, R5, LSR R2
l4012: tstLE R5, R14, RRX 
l4013: b l4017
l4014: add R1, R0, #209
l4015: rsb R2, R6, #-704643072
l4016: b l4018
l4017: b l4015
l4018: mov R4, #51
l4019: subLS R11, R0, R1
l4020: mov R14, #16
l4021: ldr R11, [sp], +R14
l4022: bVS l4029
l4023: add R1, R0, #254
l4024: rsbs R2, R1, #12976128
l4025: sbcs R5, R15, #50331648
l4026: subNE R7, R4, R7
l4027: movHIs R9, R0
l4028: b l4030
l4029: b l4024
l4030: tst R12, #397312
l4031: and R1, R0, R2, RRX 
l4032: andPL R12, R2, R12, RRX 
l4033: addNEs R1, R0, R15
l4034: b l4041
l4035: addPL R10, R0, #589824
l4036: add R14, R12, R15, ROR #4
l4037: bicCC R12, R7, R1, ROR R9
l4038: eor R9, R12, R4, ASR R2
l4039: tstLS R11, R9
l4040: orr R0, R9, #-905969664
l4041: cmn R14, R6, ROR R3
l4042: b l4048
l4043: adcs R11, R6, #716
l4044: bics R4, R0, R5, LSL #9
l4045: clzPL R14, R11
l4046: rsb R1, R7, R10
l4047: bicEQ R5, R4, #59
l4048: sbcLE R3, R0, R7, ASR #26
l4049: clzVS R4, R4
l4050: clzGT R2, R10
l4051: bLT l4060
l4052: add R1, R0, #65
l4053: clz R1, R5
l4054: rscLSs R12, R9, #32
l4055: addHI R1, R15, R3
l4056: movVSs R11, R9, LSR R14
l4057: subs R6, R9, R9
l4058: addCS R12, R2, R11, LSL #16
l4059: b l4061
l4060: b l4053
l4061: bVC l4066
l4062: movVS R3, R14, ROR #24
l4063: cmp R11, #1280
l4064: orrCS R1, R1, R9, LSR #31
l4065: andGEs R12, R15, R8, RRX 
l4066: tst R9, #35651584
l4067: andLTs R4, R5, R14
l4068: bGE l4076
l4069: adcCSs R14, R3, R5, RRX 
l4070: adcLEs R2, R6, R12, ASR #13
l4071: teq R4, R0, LSR #16
l4072: bicPLs R1, R4, #1761607680
l4073: sub R1, R4, #448
l4074: cmnEQ R14, R14
l4075: subLSs R10, R8, R0
l4076: rsc R8, R10, #-754974720
l4077: rscGT R1, R2, R2, LSR R5
l4078: bicVSs R5, R10, R6, LSL R14
l4079: mvnCCs R8, R9, RRX 
l4080: tst R8, #-1610612736
l4081: bMI l4082
l4082: sbcs R4, R1, R11, LSL #2
l4083: b l4092
l4084: cmn R5, R6
l4085: teqCS R12, R1, ROR R4
l4086: cmnLS R4, R14, ROR #13
l4087: subGT R14, R3, R0, ASR #16
l4088: bicGE R10, R4, #41156608
l4089: andPLs R0, R10, R12, ASR #25
l4090: mvnPLs R1, R8, LSR #19
l4091: eorLSs R10, R0, R4, LSR R10
l4092: adds R12, R9, #36352
l4093: eorLEs R5, R6, R9, RRX 
l4094: bLT l4099
l4095: mov R10, R0
l4096: clz R5, R10
l4097: andLTs R12, R11, R6, LSL #28
l4098: rsbs R6, R3, R10, ASR R5
l4099: mvn R8, R10, ROR R6
l4100: eorVSs R14, R5, R9, RRX 
l4101: orr R9, R14, #393216
l4102: teqLS R6, R4, RRX 
l4103: str R7, [sp], #-24
l4104: bCC l4108
l4105: add R1, R0, #49
l4106: clzNE R1, R2
l4107: b l4109
l4108: b l4106
l4109: addCCs R7, R14, #15597568
l4110: clz R10, R11
l4111: subLSs R0, R11, R6
l4112: addEQ R9, R9, R14, ROR R0
l4113: ands R11, R6, R11, LSL R9
l4114: cmnEQ R1, R12
l4115: tstGT R3, #10485760
l4116: ldrLEB R1, [sp, #-3]
l4117: sbc R1, R14, R5, ROR R14
l4118: cmn R7, #14208
l4119: subVS R3, R8, R12
l4120: cmn R1, R14, ROR #29
l4121: mov R9, R11, ROR #26
l4122: movCC R5, #4390912
l4123: subHIs R0, R6, R12
l4124: bLE l4130
l4125: add R1, R0, #158
l4126: addPL R11, R1, R1
l4127: orrs R5, R11, R2, RRX 
l4128: tstLT R10, R7, ASR #17
l4129: b l4131
l4130: b l4126
l4131: cmnLE R11, #61
l4132: clz R10, R14
l4133: addGE R10, R2, R12, ROR R2
l4134: andLTs R4, R10, R7, LSL #11
l4135: eorGEs R1, R0, #364544
l4136: cmnNE R3, R10
l4137: rscs R0, R9, #1073741829
l4138: bLE l4139
l4139: cmnVC R4, #14745600
l4140: tstGE R2, R4
l4141: rsb R4, R9, R1
l4142: teqNE R14, #4352
l4143: orr R1, R5, R7
l4144: b l4148
l4145: add R1, R0, #118
l4146: tstVC R10, R12, ROR #8
l4147: b l4149
l4148: b l4146
l4149: rsc R10, R8, #1130496
l4150: bVC l4160
l4151: adcs R8, R9, R9, ASR #29
l4152: rsbNE R4, R3, #12032
l4153: rsbMI R4, R15, #200278016
l4154: rsb R9, R5, #141
l4155: adcVS R0, R4, R1, ROR R11
l4156: rsbPL R10, R8, R6, LSR #14
l4157: movLS R11, R15, RRX 
l4158: sbcHI R4, R5, R0, ROR #19
l4159: mov R8, R14, RRX 
l4160: rscLTs R9, R1, R7, ASR #28
l4161: orrCC R12, R11, R9
l4162: addPLs R6, R7, #352
l4163: mov R4, #28
l4164: strEQ R7, [sp, +R4]
l4165: orrLSs R8, R4, R2, LSR #19
l4166: tstVC R7, R15
l4167: adcLS R5, R14, R10, LSL R10
l4168: tstLT R4, R0
l4169: add R4, R3, R7
l4170: tst R6, #1920
l4171: tstCS R14, R1
l4172: clzEQ R4, R14
l4173: movs R14, #-1610612735
l4174: andMI R1, R1, R10, LSR R11
l4175: bic R8, R4, #193
l4176: bMI l4182
l4177: mvn R7, R0, LSR #6
l4178: mvnVSs R10, R15
l4179: sub R10, R3, #42
l4180: bicLSs R9, R11, R7
l4181: eorCCs R8, R11, R15, ASR #1
l4182: adds R14, R6, #-872415232
l4183: rscs R1, R6, #768
l4184: mov R10, #32
l4185: str R5, [sp], +R10
l4186: ldr R10, [sp], #-4
l4187: adds R0, R14, R15
l4188: orrs R8, R4, #115712
l4189: cmn R9, R10
l4190: movLEs R11, R12
l4191: cmp R1, #82944
l4192: movEQ R9, #47972352
l4193: tst R15, R6
l4194: bLT l4196
l4195: subVCs R0, R8, R4, ASR R10
l4196: sbcVCs R4, R5, R3, LSL R7
l4197: bCS l4202
l4198: add R1, R0, #249
l4199: cmpPL R3, R8, LSR R11
l4200: cmnEQ R0, #68
l4201: b l4203
l4202: b l4199
l4203: mvns R1, R1, RRX 
l4204: subHI R5, R0, #3407872
l4205: subGTs R11, R11, #1073741824
l4206: sub R5, R7, R9
l4207: sub R14, R2, #193986560
l4208: bLE l4212
l4209: cmpGT R14, R3, LSR #30
l4210: subGE R4, R5, R5
l4211: rsc R0, R8, R1
l4212: rscCCs R3, R14, #1488
l4213: ands R5, R4, #66846720
l4214: orrs R14, R8, #-1073741819
l4215: movVC R11, R5, LSL R10
l4216: mvns R6, R15
l4217: eor R7, R12, R8, ASR #21
l4218: rsbCC R4, R4, #1409286144
l4219: orrCC R5, R1, R5, LSR #9
l4220: sub R0, R12, R2, ROR #1
l4221: addGEs R10, R0, R14
l4222: cmn R9, R6, LSL R12
l4223: rscNE R12, R1, R2
l4224: cmp R12, R5, ASR #29
l4225: mov R8, #20
l4226: ldr R6, [sp, +R8]
l4227: clzGE R2, R0
l4228: sbcNEs R11, R2, R7
l4229: sbc R2, R12, R7
l4230: rsbLEs R0, R5, #100663296
l4231: eors R4, R9, #1024
l4232: bNE l4241
l4233: add R1, R0, #30
l4234: mvn R0, R3
l4235: bicEQs R10, R5, #-1140850688
l4236: mvnGT R6, R8, ASR #2
l4237: teq R14, R11, LSR #12
l4238: clzLS R3, R1
l4239: sbcLTs R10, R7, R14
l4240: b l4242
l4241: b l4234
l4242: bicGE R0, R6, R2, LSL #26
l4243: cmnLE R3, R0, ASR #26
l4244: cmn R14, R5
l4245: movGEs R1, R1, LSL #13
l4246: tst R11, R1, ROR #19
l4247: andGTs R8, R7, R4, LSR R5
l4248: cmnLE R14, #244318208
l4249: bLE l4254
l4250: add R1, R0, #65
l4251: subLTs R11, R5, R8
l4252: eors R12, R0, R9, LSR R7
l4253: b l4255
l4254: b l4251
l4255: tstCC R1, #1343488
l4256: tstLT R15, R10, ASR #8
l4257: movGEs R2, R15
l4258: b l4264
l4259: add R1, R0, #140
l4260: mvns R8, R15, LSR #24
l4261: subLSs R10, R11, #281018368
l4262: add R3, R15, #192
l4263: b l4265
l4264: b l4260
l4265: strB R2, [sp, #-39]
l4266: movCS R0, R12, LSR #2
l4267: clzPL R1, R9
l4268: andGT R10, R9, #68
l4269: teqCC R1, R15, RRX 
l4270: teq R3, #113246208
l4271: b l4281
l4272: teqVS R2, R7, LSR #31
l4273: mvns R0, R4, ROR #4
l4274: eorLS R5, R9, R14
l4275: rscCS R7, R11, R1, LSR #19
l4276: cmn R11, R10, LSR R1
l4277: movs R6, R11, LSL #19
l4278: bicMIs R5, R7, R8, ROR R9
l4279: andLSs R4, R9, R10, ROR R10
l4280: bic R5, R0, R9
l4281: mvnLSs R6, R3
l4282: mov R9, R10, ROR R9
l4283: bic R14, R10, #457179136
l4284: bVC l4292
l4285: rscPLs R9, R11, R9, ASR R3
l4286: clzNE R7, R9
l4287: tstCS R2, R14, ASR R2
l4288: and R2, R6, R6, LSL R12
l4289: movLSs R1, #49
l4290: subHIs R2, R3, R7, LSR #25
l4291: sbcPL R0, R9, R8
l4292: bicVS R6, R0, R1
l4293: subs R8, R4, R4
l4294: bNE l4303
l4295: add R1, R0, #19
l4296: clzHI R5, R12
l4297: orrPLs R10, R14, R10
l4298: orr R14, R0, R11, LSR #22
l4299: eor R5, R12, #13631488
l4300: orrGTs R9, R0, R0, ASR R1
l4301: rsc R11, R7, #59392
l4302: b l4304
l4303: b l4296
l4304: eors R0, R9, #268435470
l4305: subs R12, R8, R10, RRX 
l4306: bVS l4313
l4307: add R1, R0, #78
l4308: ands R9, R6, R6, ASR R5
l4309: tst R11, R0, LSR R3
l4310: bicVS R7, R10, R1
l4311: eorLEs R3, R11, #33
l4312: b l4314
l4313: b l4308
l4314: ands R4, R14, R0, LSR #5
l4315: addEQs R2, R8, #536870916
l4316: orrVS R1, R3, R6, ASR R3
l4317: b l4326
l4318: add R1, R0, #49
l4319: mvn R8, R7, ROR #2
l4320: teqMI R12, #-268435441
l4321: orrLTs R7, R3, #14144
l4322: teqVC R6, #38
l4323: sbcLT R14, R14, #4352
l4324: bicNE R8, R11, R9
l4325: b l4327
l4326: b l4319
l4327: bicNE R9, R12, R6, LSR R9
l4328: add R6, R4, R7, RRX 
l4329: mov R5, #40
l4330: str R3, [sp], -R5
l4331: sbcEQ R10, R12, #654311424
l4332: rscHI R9, R5, R0
l4333: bGT l4340
l4334: add R1, R0, #94
l4335: adcs R12, R9, R5, ASR R4
l4336: clz R6, R10
l4337: teqCS R2, R15
l4338: tst R0, R12, LSL #28
l4339: b l4341
l4340: b l4335
l4341: rscs R9, R1, R0, LSL R9
l4342: teqHI R6, R15
l4343: sub R10, R3, #536870913
l4344: mvnLT R8, R7
l4345: rsbLS R4, R5, #488
l4346: cmn R15, R1, RRX 
l4347: adds R6, R0, R10, ROR #5
l4348: clzNE R11, R2
l4349: subCC R11, R2, #1879048192
l4350: tstGE R0, R1, LSL #19
l4351: eorCS R5, R9, #3696
l4352: subHIs R11, R7, R7
l4353: bics R2, R2, R12
l4354: bic R6, R8, #892928
l4355: cmnNE R15, R9
l4356: andGT R3, R3, R1
l4357: cmp R0, #-553648128
l4358: eors R0, R12, #23
l4359: mvnEQ R0, R3
l4360: clz R9, R1
l4361: ands R10, R14, R0, ROR R1
l4362: orrHIs R6, R4, R3, ROR R14
l4363: adcGE R9, R6, #-1073741818
l4364: mvnMIs R14, R3
l4365: clzCC R12, R5
l4366: bLT l4374
l4367: adcLS R11, R3, R10, LSL R6
l4368: sbcLS R9, R15, #-1677721600
l4369: rscGE R2, R7, R0, ROR R4
l4370: orrEQ R1, R9, R15, ROR #30
l4371: andLTs R6, R4, #-1879048192
l4372: cmp R2, R6, ROR R0
l4373: eors R7, R8, R6, ROR #12
l4374: andMIs R10, R4, #792723456
l4375: sbcPLs R8, R6, R8, LSL R11
l4376: clzEQ R14, R14
l4377: bicEQ R10, R4, #128000
l4378: sbcLT R9, R4, #9437184
l4379: addMI R0, R14, #8454144
l4380: cmp R12, #124
l4381: tst R15, #-2147483597
l4382: mvnLSs R5, R4, LSR R12
l4383: rsbNE R10, R6, R7, LSL R7
l4384: addHI R12, R15, #36608
l4385: bic R10, R14, R0, ROR R1
l4386: mov R10, #7
l4387: strPLB R2, [sp, +R10]
l4388: bEQ l4392
l4389: add R1, R0, #246
l4390: cmp R14, #59244544
l4391: b l4393
l4392: b l4390
l4393: tstLE R6, #53477376
l4394: mov R14, #10
l4395: strGTB R14, [sp, +R14]
l4396: rsbs R9, R3, R10, ASR R12
l4397: mov R12, #9
l4398: ldrB R1, [sp, +R12]
l4399: rsbMI R3, R7, R10, ASR R2
l4400: cmnVS R12, #58195968
l4401: sbc R11, R0, R6, ROR #5
l4402: sub R1, R8, R2, LSR #7
l4403: cmpLT R3, R12, LSR R5
l4404: andHIs R4, R4, #8512
l4405: bicCC R0, R7, R2, ROR R9
l4406: mvnLS R10, R7, RRX 
l4407: bVS l4411
l4408: adds R3, R6, R5, RRX 
l4409: cmpNE R5, R2, LSR R4
l4410: cmnVC R3, #-1073741812
l4411: subGE R5, R4, R7, RRX 
l4412: orrHIs R6, R3, R12, LSR #4
l4413: cmp R7, R9, ASR #28
l4414: strB R6, [sp, #+7]
l4415: bicGTs R6, R4, #20736
l4416: orrLE R12, R8, R2, LSL R3
l4417: strLE R2, [sp, #+52]
l4418: eor R7, R4, R14
l4419: mvnCS R4, R7
l4420: orrLTs R10, R3, R1, ASR R2
l4421: bVC l4428
l4422: andEQ R1, R4, R0, ROR R8
l4423: addLE R0, R8, R12, ASR #10
l4424: rsbCS R11, R12, R11
l4425: subs R10, R2, R0, LSR R2
l4426: adc R8, R5, R6, ASR #21
l4427: bicGTs R0, R4, #680
l4428: adcs R4, R10, R0, ASR R11
l4429: clzLS R1, R3
l4430: rsbLS R9, R10, R0
l4431: cmpEQ R15, #11993088
l4432: rscs R1, R9, R9, ASR #5
l4433: mov R3, #16
l4434: str R15, [sp], +R3
l4435: sub R9, R2, #53477376
l4436: rscLEs R14, R4, R3, LSR R9
l4437: cmnLE R7, R2, ROR #14
l4438: bLS l4445
l4439: mvnPL R10, R10, ROR #13
l4440: eorGEs R6, R2, #1152
l4441: orrLT R14, R4, R11, LSR #20
l4442: mvns R14, #507904
l4443: cmn R4, #131072000
l4444: cmp R3, R14, RRX 
l4445: tst R7, R9
l4446: rsc R8, R3, R10
l4447: clz R8, R7
l4448: bicHI R2, R10, R5
l4449: eors R3, R6, R12, ASR R0
l4450: sbc R12, R0, R6, LSL #18
l4451: subMI R3, R11, R2, ROR R9
l4452: bGT l4453
l4453: cmp R1, R3, ROR #13
l4454: sbc R10, R0, #243712
l4455: addEQs R5, R8, #122683392
l4456: subNEs R9, R5, R6, LSL R3
l4457: bLE l4466
l4458: add R1, R0, #126
l4459: subPL R6, R4, R11
l4460: rscPL R3, R8, R3, ASR #21
l4461: cmnHI R1, R0
l4462: sbc R0, R15, #5242880
l4463: cmnPL R4, R11, LSL R14
l4464: andLEs R6, R4, R6
l4465: b l4467
l4466: b l4459
l4467: bLT l4476
l4468: add R1, R0, #173
l4469: orr R11, R8, #536870919
l4470: addHI R5, R11, #864026624
l4471: rsbs R10, R5, R4, ROR R2
l4472: teq R7, R6, ROR R1
l4473: orr R3, R10, R11
l4474: adcPL R8, R8, #-603979773
l4475: b l4477
l4476: b l4469
l4477: addCS R12, R10, R1, ASR #23
l4478: andPL R6, R2, R6
l4479: andGE R14, R14, #-536870903
l4480: teqHI R6, R11, ROR R14
l4481: bicLSs R9, R8, R12, RRX 
l4482: mvnCC R2, R7, LSR #27
l4483: b l4484
l4484: andGT R7, R1, R4
l4485: bics R12, R0, R8, LSL R8
l4486: cmpPL R15, #724
l4487: cmn R6, #732
l4488: b l4495
l4489: add R1, R0, #8
l4490: andCS R9, R7, R6, LSR R6
l4491: tst R14, R14, ASR R11
l4492: rsb R7, R11, R9, LSL R9
l4493: eorVS R11, R2, R12, LSR #12
l4494: b l4496
l4495: b l4490
l4496: clz R6, R10
l4497: tst R7, #199680
l4498: orrs R1, R2, R0, ASR #10
l4499: teq R9, R3
l4500: andMI R10, R4, #90112
l4501: bicVCs R4, R5, R11, LSR R3
l4502: rsb R2, R5, R1
l4503: ands R4, R12, R9, LSL #16
l4504: clz R4, R8
l4505: sbcEQ R2, R8, R15
l4506: bMI l4509
l4507: cmnHI R4, #2013265922
l4508: cmp R4, R2
l4509: tstGE R12, R14, ROR #21
l4510: eorHIs R9, R1, #25165824
l4511: andLE R8, R2, R1
l4512: tstLS R2, R1, LSR R12
l4513: rscs R3, R1, R3
l4514: rscMI R9, R6, #3904
l4515: mvns R1, R2, RRX 
l4516: eorLS R14, R7, R5, ROR #5
l4517: bEQ l4521
l4518: bicLTs R9, R14, #5570560
l4519: add R7, R10, #58
l4520: bic R6, R12, R5, LSR #14
l4521: and R5, R12, R0, LSL #20
l4522: teq R7, R2
l4523: tstVC R2, R7, ASR R14
l4524: cmn R7, R4, LSL R12
l4525: movs R6, R10
l4526: ands R10, R11, R14, LSL #13
l4527: tst R10, R8, ASR #7
l4528: movCSs R4, R9, ROR R5
l4529: rsbLSs R5, R5, #64768
l4530: adcGEs R8, R7, R14, ASR R11
l4531: b l4537
l4532: add R1, R0, #104
l4533: sbc R8, R14, R1, LSL R8
l4534: cmnNE R3, R3, ASR R2
l4535: andEQs R5, R3, R4, ASR #14
l4536: b l4538
l4537: b l4533
l4538: orrs R1, R5, #22528
l4539: andLTs R10, R2, R8, LSL #10
l4540: teq R14, #1081344
l4541: rsbCS R14, R1, R5, LSR #24
l4542: ands R7, R1, R1, RRX 
l4543: rsbGT R8, R10, R2
l4544: adcs R2, R15, R9
l4545: orr R5, R3, #2176
l4546: orrLT R1, R6, #8960
l4547: tstLS R4, R7, ASR R8
l4548: bicGEs R10, R7, R0, LSR R14
l4549: b l4553
l4550: orrHI R3, R2, R14, ROR R14
l4551: adcGTs R9, R3, R3, ASR #8
l4552: teqVC R12, R1
l4553: movCC R6, R6
l4554: tstLT R0, #150
l4555: cmp R3, #2112
l4556: and R5, R4, R6, ASR R1
l4557: ldrB R10, [sp, #+1]
l4558: rsbLE R3, R4, R15, RRX 
l4559: bLE l4567
l4560: add R1, R0, #239
l4561: cmnLT R3, R4, ASR #15
l4562: subGEs R1, R2, R3
l4563: mvnLTs R8, R1
l4564: teqMI R12, R5, ASR #24
l4565: subs R9, R12, #369098752
l4566: b l4568
l4567: b l4561
l4568: bGT l4577
l4569: add R1, R0, #128
l4570: cmnNE R6, #3
l4571: mvnLS R4, R2, LSR R1
l4572: eorMIs R5, R0, R7
l4573: addGT R6, R5, #401408
l4574: subVS R11, R15, #-805306358
l4575: mvn R4, R0
l4576: b l4578
l4577: b l4570
l4578: orr R5, R6, #7424
l4579: adcHIs R12, R9, R6
l4580: ands R2, R14, R5
l4581: mvn R10, R4
l4582: bics R6, R12, R5, RRX 
l4583: eorHI R14, R14, R14
l4584: strB R1, [sp, #-21]
l4585: b l4593
l4586: tstVS R6, #120
l4587: rsb R8, R0, R0, ROR R7
l4588: teqGT R10, R10
l4589: clz R11, R4
l4590: tstEQ R0, R4, ASR #27
l4591: subGE R6, R0, R8, LSL R8
l4592: rsbLS R3, R5, #805306369
l4593: orrVCs R1, R6, R4, ASR R7
l4594: bic R8, R15, R10
l4595: rsbCC R11, R1, R7, LSR R8
l4596: clzLT R1, R1
l4597: bicNEs R0, R15, #1310720
l4598: cmpGE R11, R5, LSL R0
l4599: rsbs R1, R15, R8, LSR #9
l4600: b l4606
l4601: sub R5, R12, #56623104
l4602: cmnEQ R15, R5, LSL #3
l4603: tstVS R2, R1, LSL R11
l4604: cmnGE R15, R5, ROR #3
l4605: rscCSs R14, R2, R7, LSR R12
l4606: clz R3, R0
l4607: cmn R1, R11, RRX 
l4608: bNE l4613
l4609: add R1, R0, #57
l4610: cmp R12, R2
l4611: cmnEQ R6, R1
l4612: b l4614
l4613: b l4610
l4614: mvnNEs R7, #12288
l4615: tstNE R2, R8, ASR #0
l4616: bHI l4617
l4617: cmnNE R0, R14
l4618: orrHI R3, R7, R6, ROR #19
l4619: bic R7, R4, R5, ASR R5
l4620: bEQ l4628
l4621: add R1, R0, #103
l4622: mvn R7, #-1073741776
l4623: tst R9, R12, LSR #30
l4624: sub R3, R10, #128
l4625: rsbCS R0, R0, #-1073741767
l4626: subCCs R0, R3, R15, ASR #17
l4627: b l4629
l4628: b l4622
l4629: andGT R10, R2, #-889192448
l4630: orrCCs R6, R6, R14
l4631: mvn R11, R0, RRX 
l4632: rsb R0, R15, #1073741827
l4633: rsbHIs R5, R12, #106954752
l4634: rscPL R1, R8, R12, ROR R7
l4635: clzLE R10, R14
l4636: sbcVSs R4, R0, #45312
l4637: bCC l4642
l4638: add R1, R0, #61
l4639: subLSs R4, R9, #245
l4640: sbcVCs R14, R0, R15, RRX 
l4641: b l4643
l4642: b l4639
l4643: mvn R3, #201728
l4644: b l4649
l4645: add R1, R0, #190
l4646: cmpHI R9, R10, RRX 
l4647: adc R14, R9, R1
l4648: b l4650
l4649: b l4646
l4650: tstEQ R9, #2031616
l4651: rscGEs R5, R10, R0, RRX 
l4652: b l4660
l4653: add R1, R0, #157
l4654: cmnGE R4, #261120
l4655: sub R0, R12, R2
l4656: bicVS R5, R5, #254976
l4657: movVCs R7, R14, ASR #6
l4658: bicCSs R5, R8, R2, ASR #27
l4659: b l4661
l4660: b l4654
l4661: cmp R0, R6
l4662: subMI R7, R5, R14
l4663: movs R1, R2, ASR R7
l4664: cmn R2, R10, ROR R14
l4665: eors R7, R4, R14
l4666: bGE l4675
l4667: add R1, R0, #81
l4668: subLTs R0, R9, R12, LSR #15
l4669: subNEs R4, R6, #-1409286144
l4670: mvn R2, R5
l4671: andMIs R3, R0, R14, ROR R10
l4672: rscHIs R10, R11, R4, ASR #10
l4673: bicGT R6, R9, R5
l4674: b l4676
l4675: b l4668
l4676: sbcGEs R0, R11, R0
l4677: adcPLs R3, R0, #106
l4678: bics R6, R7, #964
l4679: bHI l4689
l4680: bicLSs R10, R0, R10, RRX 
l4681: adcEQ R2, R0, R12, LSL R4
l4682: rsbMI R6, R2, R7, LSR R3
l4683: mvns R8, R8, ASR #3
l4684: bics R6, R10, R8
l4685: subGEs R5, R14, R11, LSL R12
l4686: adds R6, R11, #241664
l4687: tst R3, R12, ASR #14
l4688: subVSs R3, R15, #31744
l4689: orrs R2, R14, R4
l4690: movs R3, R5
l4691: rsbHIs R4, R10, R15
l4692: tstPL R2, #14080
l4693: teqGT R5, R10
l4694: addLTs R4, R14, R14, RRX 
l4695: bicGTs R9, R6, R3
l4696: addVSs R12, R8, R8, LSR #28
l4697: teq R2, R1, LSL #21
l4698: adcs R10, R4, R6, LSR #1
l4699: addCSs R9, R11, R4, LSL R3
l4700: bVS l4709
l4701: add R1, R0, #186
l4702: teqLE R2, R9, LSR #8
l4703: rscVCs R11, R15, R9
l4704: rsbLT R1, R2, R1
l4705: rsbs R8, R2, R6, LSL #6
l4706: rscs R1, R9, #180355072
l4707: cmnLE R8, #-536870899
l4708: b l4710
l4709: b l4702
l4710: bicEQ R9, R7, R1, ASR R0
l4711: mov R11, #44
l4712: strB R8, [sp, +R11]
l4713: rsb R7, R14, R9, RRX 
l4714: mov R14, #31
l4715: strB R4, [sp, +R14]
l4716: andMIs R6, R6, R5
l4717: clzCS R3, R11
l4718: teqPL R5, R14
l4719: cmn R0, #2848
l4720: subCS R0, R12, R14, ASR R0
l4721: cmn R6, R4
l4722: cmpGT R8, #68
l4723: eorLEs R1, R4, R15
l4724: bEQ l4733
l4725: cmnGT R10, R1, LSL R7
l4726: orrs R6, R7, #145752064
l4727: rscCS R8, R8, R15
l4728: clz R9, R9
l4729: sbcHIs R1, R2, R0, RRX 
l4730: orrVS R14, R14, R9, ROR R5
l4731: bics R5, R3, R14, ROR #3
l4732: bic R14, R11, R3
l4733: andCCs R10, R8, R9, ROR R14
l4734: cmpCS R5, R10
l4735: sbcEQ R14, R2, R2
l4736: mov R10, R2, LSR #17
l4737: andLT R0, R14, R10, LSR #26
l4738: sbcs R3, R5, R11, LSL R5
l4739: str R2, [sp, #+12]!
l4740: teq R7, #51118080
l4741: bLS l4750
l4742: add R1, R0, #186
l4743: bics R12, R15, #-1073741812
l4744: ands R14, R12, R9, ASR #10
l4745: cmp R10, R14
l4746: cmnMI R5, R12
l4747: teqCC R10, R3, ASR #9
l4748: tstVC R7, R10, ASR #24
l4749: b l4751
l4750: b l4743
l4751: sub R6, R9, R2, ROR R10
l4752: bEQ l4762
l4753: rsbLE R14, R4, R2, RRX 
l4754: subLT R2, R7, R15, RRX 
l4755: subLT R8, R12, #-1073741798
l4756: orrCS R14, R7, R14, LSL #13
l4757: eor R11, R1, R6, ASR R1
l4758: eor R8, R4, R1, RRX 
l4759: sub R10, R12, R3, RRX 
l4760: subMI R9, R5, #603979777
l4761: cmn R2, #536870915
l4762: bicLT R9, R9, R8, LSR #15
l4763: ldr R2, [sp, #+24]!
l4764: b l4767
l4765: rsbGEs R7, R2, R11, ASR #10
l4766: subCCs R8, R6, R8
l4767: orrGTs R9, R2, R7
l4768: mvnEQs R4, R1
l4769: rscs R6, R11, #130023424
l4770: bGT l4778
l4771: add R1, R0, #107
l4772: rscPL R14, R8, #209715200
l4773: addVSs R10, R10, #-536870901
l4774: adds R3, R14, R10
l4775: rsb R14, R6, #128
l4776: cmn R3, R14, LSR R8
l4777: b l4779
l4778: b l4772
l4779: eorLS R3, R15, #1140850688
l4780: mov R7, #48
l4781: ldr R12, [sp, -R7]!
l4782: sub R11, R14, R4, ROR R8
l4783: clzEQ R3, R1
l4784: clz R3, R10
l4785: orr R5, R2, R7
l4786: andVC R9, R4, #80
l4787: bVC l4794
l4788: add R1, R0, #79
l4789: adcGT R9, R9, R6
l4790: eors R7, R8, R3, ASR #9
l4791: tstCC R4, R0
l4792: cmnEQ R11, R2
l4793: b l4795
l4794: b l4789
l4795: bic R12, R8, R3
l4796: cmnVS R11, #201326593
l4797: and R6, R9, R6
l4798: sbcVC R9, R8, R7, ASR R7
l4799: ldr R6, [sp], #-16
l4800: subEQ R12, R11, R11
l4801: movVS R4, R11, LSR R1
l4802: andCC R10, R14, R1, LSR R12
l4803: orr R9, R9, R15, LSL #23
l4804: orrs R8, R3, R5, ROR #16
l4805: cmp R9, #2293760
l4806: adc R11, R9, #44032
l4807: rsc R10, R5, R1, ASR R12
l4808: sbcMI R11, R7, R14
l4809: cmn R7, #-1073741790
l4810: strCS R8, [sp, #+72]
l4811: sbcs R5, R11, R14, RRX 
l4812: bGE l4815
l4813: mvnNEs R3, R6
l4814: sbcLS R8, R9, R4, LSL #28
l4815: orr R11, R0, R3, ROR #28
l4816: bLT l4819
l4817: sbcMI R3, R9, R10
l4818: sbc R3, R11, R4, LSR #0
l4819: rscHI R8, R11, R7, LSL #6
l4820: and R0, R3, R8, LSR R4
l4821: subs R10, R15, R12, RRX 
l4822: movGTs R0, R14
l4823: rsbs R1, R12, R3, LSR R8
l4824: addNEs R8, R5, R3
l4825: add R4, R15, #15990784
l4826: cmpEQ R0, #150
l4827: add R1, R8, R12, ASR R8
l4828: adds R5, R6, R4
l4829: orrEQ R7, R10, R15, RRX 
l4830: ldrB R1, [sp, #+55]
l4831: subs R4, R10, R7
l4832: sbcMI R7, R9, R11, ROR #10
l4833: bicCS R14, R2, R15, LSL #6
l4834: mov R12, #3
l4835: ldrB R10, [sp, +R12]
l4836: clz R4, R11
l4837: mov R2, R1, ROR #14
l4838: eorVSs R8, R0, R4, LSR #29
l4839: orrCSs R12, R10, R6, LSL #7
l4840: bicLT R14, R1, R8, LSL R6
l4841: sbcEQ R12, R6, R8, RRX 
l4842: sub R6, R5, R11
l4843: cmnNE R12, R1
l4844: cmnLT R5, R2, ROR R6
l4845: ldr R5, [sp, #+72]!
l4846: cmp R9, R4, LSR R6
l4847: mov R9, R8, ROR R14
l4848: subCSs R5, R6, R15, ASR #10
l4849: bCC l4858
l4850: add R1, R0, #9
l4851: orr R10, R15, #23
l4852: orrs R5, R7, R1, RRX 
l4853: rsbGT R6, R6, R1, LSL R9
l4854: rscLT R4, R2, R2, ASR R11
l4855: adcs R3, R12, R14
l4856: eors R5, R8, R0, RRX 
l4857: b l4859
l4858: b l4851
l4859: rsb R10, R7, #1073741838
l4860: tstPL R3, R0
l4861: strCCB R12, [sp, #-42]
l4862: bicVCs R0, R0, R8
l4863: eorLTs R5, R4, #-167772160
l4864: bics R1, R6, R15, RRX 
l4865: tstLE R12, R2, LSL #3
l4866: mov R1, #478150656
l4867: subVC R6, R8, R14, ROR #21
l4868: bicLTs R12, R0, R8
l4869: cmnMI R4, R12, LSR R14
l4870: clzNE R3, R14
l4871: bics R14, R11, R8, LSL #13
l4872: cmnLT R14, R5, LSR R14
l4873: mvn R8, R15, RRX 
l4874: bic R7, R7, #118784
l4875: andVSs R7, R10, R5
l4876: subs R7, R6, R3, ASR #18
l4877: teq R6, #872415232
l4878: cmp R15, R5, RRX 
l4879: rsc R2, R0, R7
l4880: bPL l4884
l4881: add R1, R0, #71
l4882: ands R6, R12, #45312
l4883: b l4885
l4884: b l4882
l4885: rscCC R5, R7, R12, ROR R0
l4886: bics R6, R10, R7
l4887: eorVSs R12, R9, #0
l4888: tst R5, #13631488
l4889: cmnVS R14, R15, RRX 
l4890: adcs R4, R12, R10, ROR R10
l4891: clz R0, R7
l4892: eorCCs R12, R11, R7
l4893: bicVCs R14, R8, R0, ROR R11
l4894: sbcs R9, R0, R14, ROR R8
l4895: cmpNE R6, #-1275068414
l4896: rsbMIs R11, R15, R15
l4897: add R3, R6, R10, ROR R14
l4898: b l4907
l4899: add R1, R0, #93
l4900: addGT R14, R12, R10, ROR R12
l4901: clzMI R2, R11
l4902: adcVC R11, R8, R8, ASR R10
l4903: subCCs R0, R8, R9
l4904: cmpCS R14, R3, LSR #23
l4905: and R2, R6, R6, ROR R5
l4906: b l4908
l4907: b l4900
l4908: rsbLE R4, R5, #162816
l4909: bics R14, R5, R15
l4910: clz R8, R3
l4911: mov R5, #56
l4912: str R5, [sp, -R5]
l4913: orrVSs R9, R5, #588
l4914: ands R2, R5, R7
l4915: cmpEQ R8, R1, LSL R0
l4916: ands R5, R0, R12, ASR R12
l4917: addVCs R4, R2, R8
l4918: eorEQ R12, R8, R0, LSL #26
l4919: bNE l4924
l4920: mvns R5, R11
l4921: rsbLSs R8, R8, R4
l4922: bicMI R14, R6, R8, ROR #18
l4923: cmp R2, R3, ASR #16
l4924: clz R10, R0
l4925: subs R12, R11, R9, LSL R5
l4926: eor R7, R12, R1, ROR R0
l4927: mvns R10, R1, ASR #21
l4928: bEQ l4931
l4929: movs R6, #6720
l4930: orrGTs R14, R0, R7, ROR R1
l4931: adcLTs R4, R3, R15
l4932: bMI l4936
l4933: add R1, R0, #29
l4934: movLT R4, R9, LSL R6
l4935: b l4937
l4936: b l4934
l4937: rscs R14, R4, R10, RRX 
l4938: teqMI R4, R7, LSR R3
l4939: rsbs R2, R5, R12, LSL R9
l4940: andMIs R6, R12, R3
l4941: mov R2, #12
l4942: ldr R2, [sp, -R2]!
l4943: tstLT R8, #536870926
l4944: andLS R7, R2, #192
l4945: bGE l4948
l4946: subs R5, R7, R3, RRX 
l4947: bic R8, R15, #8000
l4948: rsbLS R7, R0, R14, ROR R10
l4949: orrs R9, R6, R12, ROR R0
l4950: teqLE R8, R4, LSR R12
l4951: rscLT R2, R7, R5, RRX 
l4952: orrs R12, R12, R12, LSL R12
l4953: eor R6, R12, R14
l4954: andPL R2, R9, R12
l4955: rsbLSs R5, R12, R8, RRX 
l4956: bCS l4964
l4957: add R1, R0, #153
l4958: tstVS R9, #1258291200
l4959: eorVSs R12, R7, #-520093696
l4960: orr R12, R0, R5, LSR R10
l4961: subEQ R1, R4, R9
l4962: sbcLTs R0, R7, R1, ASR R8
l4963: b l4965
l4964: b l4958
l4965: rscs R8, R8, #29360128
l4966: rsb R14, R11, #47185920
l4967: teqEQ R8, R7, ROR #1
l4968: orrHI R2, R4, R10, ROR #10
l4969: eorGE R10, R12, #49283072
l4970: bic R14, R10, R4, RRX 
l4971: eor R14, R2, #93184
l4972: rsb R7, R14, R0, ASR R5
l4973: mov R3, R9
l4974: tst R4, R1
l4975: rsb R6, R0, #247808
l4976: and R2, R15, R3
l4977: b l4983
l4978: subMI R6, R1, #139264
l4979: movs R11, R4, LSL #10
l4980: adds R10, R9, R10, LSL #19
l4981: teq R10, R15, LSL #9
l4982: add R9, R2, R2, LSR R6
l4983: cmp R15, #1073741841
l4984: mov R7, #12
l4985: ldr R5, [sp], +R7
l4986: b l4995
l4987: teqCS R8, R11, LSL #29
l4988: tst R7, R10, ROR #23
l4989: cmpLE R6, R4, ASR #19
l4990: andGE R11, R14, R7, LSR R3
l4991: teq R4, #18874368
l4992: andVS R2, R8, R0, ASR R5
l4993: teqLS R14, R12, ASR R10
l4994: add R7, R2, R14, ROR #24
l4995: bic R5, R9, R3, LSL R9
l4996: add R2, R9, R14, ASR R0
l4997: str R8, [sp, #+0]!
l4998: nop
l4999: nop
l5000: orrEQ R6, R6, R3
end: b end

