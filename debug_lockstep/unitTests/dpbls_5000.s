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
val1: .word 3278898220
next1:ldr R2, val2
b next2
val2: .word 3083590420
next2:ldr R3, val3
b next3
val3: .word 360767333
next3:ldr R4, val4
b next4
val4: .word 1011535573
next4:ldr R5, val5
b next5
val5: .word 2519639956
next5:ldr R6, val6
b next6
val6: .word 3932776608
next6:ldr R7, val7
b next7
val7: .word 3118670682
next7:ldr R8, val8
b next8
val8: .word 581786990
next8:ldr R9, val9
b next9
val9: .word 903036119
next9:ldr R10, val10
b next10
val10: .word 3036179465
next10:ldr R11, val11
b next11
val11: .word 469250070
next11:ldr R12, val12
b next12
val12: .word 1738122569
next12:ldr R14, val14
b next14
val14: .word 3145000653

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 3987457906
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 1237317366
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3478407207
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 931054054
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 3375705923
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 2758085013
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 439910
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 2936423104
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3196888531
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 4073019503
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 3475299459
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 2488271549
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 3469357055
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 3780484464
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 1836158733
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 1080060939
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 3213057028
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 2104484699
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 1094971836
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 2602615736
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 2754322146
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: bLS l10
l2: add R1, R0, #201
l3: orrLTs R1, R12, R9
l4: sub R5, R4, R7, LSL R2
l5: andVS R1, R1, R15, RRX 
l6: cmp R6, R8, ROR #15
l7: adcs R11, R11, R12, LSL R0
l8: mvnLTs R11, R12, RRX 
l9: b l11
l10: b l3
l11: cmnMI R6, R11
l12: adc R1, R3, R5, LSR #13
l13: cmpLT R4, #243269632
l14: add R3, R6, R14, RRX 
l15: addLEs R6, R9, R0, RRX 
l16: bicHIs R7, R7, R7
l17: sbcEQs R6, R11, #1523712
l18: bMI l23
l19: tstGE R3, R0, ASR R11
l20: tst R3, #16384
l21: eorEQ R12, R1, #41472
l22: bicGE R14, R12, R9
l23: teq R1, R2
l24: subs R0, R4, #838860800
l25: sbcLEs R12, R4, R9, ASR #16
l26: adcCC R14, R11, R6, ROR #8
l27: rsc R8, R4, R11
l28: cmpEQ R3, R14, LSR R10
l29: mov R12, #60
l30: str R8, [sp, -R12]
l31: b l40
l32: add R1, R0, #107
l33: orr R11, R14, R2, ASR #18
l34: ands R7, R14, R3, ASR R11
l35: teqNE R12, #1248
l36: cmnLT R6, #314572800
l37: clzEQ R3, R9
l38: bicLTs R1, R8, R3
l39: b l41
l40: b l33
l41: sbcPLs R5, R9, R15
l42: b l48
l43: add R1, R0, #146
l44: adds R2, R9, R4, LSL #14
l45: adds R10, R3, R9
l46: tst R6, R7, RRX 
l47: b l49
l48: b l44
l49: mov R8, #78
l50: ldr R9, [sp, -R8]!
l51: subLT R8, R8, R10, ASR R8
l52: mvn R2, R5
l53: rsbs R14, R14, R11
l54: ldr R7, [sp], #+3
l55: sub R0, R5, #14942208
l56: bPL l61
l57: add R1, R0, #224
l58: rsb R0, R5, R7, LSL #11
l59: sub R5, R1, R4
l60: b l62
l61: b l58
l62: mov R2, #19
l63: str R5, [sp], +R2
l64: addCSs R3, R11, #215040
l65: subGT R0, R4, R14
l66: sbcs R0, R3, R6
l67: ldr R8, [sp, #+33]!
l68: mvns R1, R12, ASR R4
l69: bHI l78
l70: add R1, R0, #96
l71: subs R4, R6, R10
l72: rscPL R7, R4, R2, LSR #15
l73: clz R9, R14
l74: cmpMI R1, R6, LSL #20
l75: teq R14, R15
l76: sbc R5, R14, R7
l77: b l79
l78: b l71
l79: adcEQs R11, R2, #587202560
l80: movVC R5, R5
l81: rscGTs R6, R10, R9
l82: tstCC R9, R8
l83: sbcMI R1, R8, R11, RRX 
l84: subVCs R11, R11, R12
l85: and R1, R1, R14
l86: bLS l94
l87: teq R7, R15, ROR #22
l88: teqMI R2, #4352
l89: tst R1, #-67108863
l90: adcPLs R11, R9, #1474560
l91: cmnGT R4, R4, LSR #16
l92: bicVC R7, R0, R10
l93: cmp R1, R10, LSR #10
l94: subGT R1, R10, R10, LSR R12
l95: clzLS R1, R8
l96: eorGEs R0, R4, R2, RRX 
l97: sbcPL R0, R10, R5, ROR #5
l98: clz R10, R1
l99: subLSs R6, R11, R8, LSR R8
l100: bLS l107
l101: add R1, R0, #58
l102: cmn R3, R3, RRX 
l103: rscs R8, R7, R3, ASR #1
l104: bics R9, R3, R1
l105: clzNE R9, R14
l106: b l108
l107: b l102
l108: subEQs R8, R0, R4, RRX 
l109: orrs R1, R12, R10
l110: cmpPL R5, #8388608
l111: addHI R6, R9, R6
l112: b l119
l113: add R1, R0, #205
l114: orr R9, R12, #293601280
l115: cmn R2, R1
l116: sbcMIs R4, R12, R14, LSR R3
l117: tstGE R7, R2, ROR R12
l118: b l120
l119: b l114
l120: subHIs R11, R4, R4, LSL R12
l121: sub R1, R1, #352321536
l122: andCSs R12, R15, R6, ROR #3
l123: teq R3, R0
l124: mov R12, #133
l125: eorEQ R14, R11, #14680064
l126: bLS l136
l127: teqGE R3, R8, RRX 
l128: orrNE R10, R15, R11
l129: rsbGTs R1, R2, R3, LSR R14
l130: cmn R10, R9, LSL #17
l131: bicHI R3, R7, #1996488704
l132: teqEQ R11, R10, LSL #31
l133: eor R9, R10, R11
l134: mvnGT R0, R1
l135: teqVC R10, R1, LSL #1
l136: subGE R9, R4, R8, LSL #25
l137: adds R14, R7, R7
l138: bicLT R8, R14, R2
l139: bLE l145
l140: add R1, R0, #9
l141: bicNE R2, R1, R1, RRX 
l142: ands R11, R9, R12, ASR R11
l143: andGE R4, R14, R7, ASR R10
l144: b l146
l145: b l141
l146: clzLE R6, R14
l147: clz R14, R6
l148: cmpLE R1, #368
l149: sbcLSs R6, R7, #3728
l150: rsc R9, R3, R14
l151: cmn R15, #156
l152: subs R14, R6, R6, LSR R12
l153: mov R7, #0
l154: ldr R11, [sp, -R7]!
l155: teq R7, #-1191182336
l156: sbcCCs R9, R7, R15
l157: bics R9, R11, R6, ASR R4
l158: add R7, R7, #2490368
l159: cmpNE R14, R12, ASR R11
l160: bNE l166
l161: sbcMI R2, R4, R0, RRX 
l162: ands R9, R9, R0, RRX 
l163: cmpLE R8, R6
l164: tstCS R14, R11, ROR R4
l165: tstLT R12, R14, LSR #1
l166: rscs R2, R4, #-2147483596
l167: andHI R14, R2, #3751936
l168: subVCs R10, R9, #246415360
l169: clzGT R2, R5
l170: tst R9, R12, LSR R11
l171: rscGTs R3, R12, R4, RRX 
l172: rsc R7, R3, R8, LSL R14
l173: sbcMIs R0, R2, R7, ASR #0
l174: addCS R8, R2, R12
l175: bEQ l183
l176: add R1, R0, #20
l177: sbcGEs R11, R14, R2, ROR #29
l178: bicEQ R1, R8, R1, RRX 
l179: sbcLSs R3, R3, R14, LSL R4
l180: andCC R12, R6, #65011712
l181: tstGT R14, R3, ROR R11
l182: b l184
l183: b l177
l184: sbcCCs R3, R7, R10, LSR #3
l185: bLT l189
l186: clzLT R14, R7
l187: eorMI R0, R11, #1073741827
l188: rsbEQs R6, R6, R1, ASR R6
l189: teqGE R0, R12, LSR R1
l190: rscGTs R14, R7, R10
l191: clz R2, R9
l192: bVS l195
l193: teqHI R1, R2
l194: andGTs R14, R14, R2
l195: clz R6, R12
l196: movCSs R12, #99
l197: bVS l205
l198: clz R1, R6
l199: eors R12, R7, R6, LSR #18
l200: mvn R11, R4, ASR R14
l201: cmp R14, #5248
l202: and R2, R11, R12
l203: rsb R3, R5, R4
l204: mvnCC R12, R3, ASR R5
l205: subs R5, R2, R8
l206: bicVCs R4, R9, R9, LSR #31
l207: mov R1, #30
l208: ldrNE R10, [sp, -R1]
l209: subs R5, R12, #41
l210: adds R5, R10, R9
l211: rsbs R14, R11, R7
l212: bicEQ R7, R6, R1, LSR R7
l213: andLS R6, R9, R6, LSL #4
l214: bGT l224
l215: adcEQ R5, R1, R7, ASR R12
l216: sbcHI R3, R6, #107
l217: rsbLE R0, R1, #134217728
l218: addCC R14, R14, #50593792
l219: bicMI R12, R11, R4, LSR #18
l220: ands R14, R6, #976
l221: adcVSs R9, R8, R0, RRX 
l222: orr R10, R0, #19
l223: mvnCS R7, R11, LSL R11
l224: addMIs R8, R14, R0
l225: mvnCC R4, R4, ASR #11
l226: orr R11, R3, R14, RRX 
l227: orrLS R2, R3, #50855936
l228: teqPL R8, #6029312
l229: teqVS R4, R3, LSL #16
l230: ands R9, R11, #1677721601
l231: mvnEQs R9, R7, ASR R14
l232: eorCC R3, R3, R4, RRX 
l233: mvnCSs R5, R14, LSL R4
l234: rscPL R6, R6, R4, RRX 
l235: orrLSs R12, R12, R14, RRX 
l236: bics R11, R5, #700448768
l237: movMIs R6, #-2147483646
l238: subGT R2, R3, R7, RRX 
l239: rscVC R11, R6, R12
l240: clzGE R6, R5
l241: movs R10, #-2147483593
l242: bicVS R8, R7, R2, LSL #3
l243: rsbVCs R12, R6, R3
l244: bCS l254
l245: orrCSs R3, R14, #583008256
l246: clz R5, R6
l247: mov R1, #150994944
l248: tstCC R11, R8
l249: teq R0, R12, LSL R5
l250: rsb R2, R2, R2, LSR R1
l251: cmpCC R7, R10, ROR #19
l252: eors R3, R5, R4, RRX 
l253: ands R0, R6, R5, ROR R8
l254: tstNE R6, #-268435456
l255: orrCC R12, R11, #989855744
l256: eorCCs R8, R11, R14, ASR R4
l257: mvnMI R14, R3
l258: mov R4, #3
l259: str R0, [sp, +R4]!
l260: ands R8, R4, R2
l261: orrMI R9, R11, #2162688
l262: cmpCS R12, #738197504
l263: cmp R9, R11, LSR R1
l264: eors R3, R5, R1
l265: rscCS R7, R0, #168
l266: orr R8, R0, #264
l267: movCC R7, R7
l268: mvnVC R11, R5, LSR #25
l269: andLSs R7, R12, R14, LSL #21
l270: bVC l280
l271: adcLT R2, R9, #524288000
l272: mvnCC R14, R6, LSR #1
l273: bicEQs R9, R8, R2, RRX 
l274: tst R10, R5, RRX 
l275: eors R8, R12, R4
l276: cmnLS R1, #224395264
l277: addPL R1, R6, R2, ROR #11
l278: rscHIs R11, R8, R0
l279: cmn R1, R1, LSR R6
l280: subPL R8, R5, R8, LSL #9
l281: bHI l288
l282: add R1, R0, #225
l283: clz R12, R4
l284: mvns R8, R1, RRX 
l285: cmp R4, R3, LSL #24
l286: andPL R2, R12, R0, ROR R2
l287: b l289
l288: b l283
l289: orrs R8, R12, #7208960
l290: teqLS R5, R3
l291: adcs R9, R14, R8, LSR #26
l292: subGE R1, R10, R1
l293: cmnLS R2, R7
l294: cmpVS R5, #1736704
l295: bGE l304
l296: add R1, R0, #195
l297: adds R9, R3, R15
l298: cmn R4, #3424256
l299: addGEs R1, R5, R5
l300: mvnCC R8, R6, LSL R5
l301: andLEs R0, R0, #16252928
l302: rsb R2, R8, R1, ROR R6
l303: b l305
l304: b l297
l305: mov R4, R5, RRX 
l306: orrLS R2, R10, R4
l307: subLS R3, R10, R3, LSL R8
l308: cmn R15, R7, RRX 
l309: mvns R0, R8, RRX 
l310: mvn R5, R3, LSL #18
l311: eorNEs R8, R14, R10, ROR R2
l312: eorMIs R6, R9, R0, RRX 
l313: teq R4, #-738197502
l314: ldr R6, [sp], #+12
l315: cmp R10, R1
l316: bVC l322
l317: teqVC R10, R3, LSL R9
l318: adc R6, R12, R3, ROR R5
l319: teqCC R6, R14, RRX 
l320: bicGE R1, R5, R7
l321: orrCSs R11, R15, R0
l322: subVCs R0, R11, R4, LSR R12
l323: teq R8, R4
l324: b l331
l325: add R1, R0, #13
l326: mov R5, R11
l327: add R6, R1, R0
l328: rsb R2, R2, #7864320
l329: rsc R1, R4, R12
l330: b l332
l331: b l326
l332: subGEs R3, R10, R6, ASR R7
l333: rscMI R9, R14, #216
l334: ands R5, R9, #262144
l335: b l341
l336: add R1, R0, #73
l337: teqVS R15, R15
l338: cmn R12, #922746880
l339: adc R6, R2, R1, RRX 
l340: b l342
l341: b l337
l342: rscNE R4, R2, R11, ROR R4
l343: orr R11, R4, #-1073741802
l344: ldr R9, [sp], #-44
l345: eor R9, R2, #452984832
l346: movPLs R3, R15, LSR #28
l347: bLE l354
l348: add R1, R0, #154
l349: eorLTs R9, R3, R1, ASR #14
l350: bicLSs R3, R5, R4, ROR #3
l351: andGTs R12, R0, R14, LSL R14
l352: rscGTs R2, R0, R9
l353: b l355
l354: b l349
l355: orr R5, R14, R9
l356: str R3, [sp, #+28]!
l357: clz R14, R0
l358: andHIs R1, R8, #2688
l359: sbcHIs R4, R6, R0, LSL #27
l360: b l366
l361: add R1, R0, #147
l362: movLSs R6, R12, ROR R0
l363: sbcNEs R7, R5, R5
l364: orrCC R10, R7, R10, ROR R2
l365: b l367
l366: b l362
l367: andVC R4, R2, R1, ROR R11
l368: eors R8, R14, R8
l369: subs R6, R0, #771751936
l370: subMIs R12, R4, R9, RRX 
l371: mov R6, #35
l372: ldr R10, [sp, -R6]!
l373: adcLT R0, R0, R11
l374: andNEs R9, R15, R1, LSL #20
l375: rsbCS R11, R12, R2, LSL #4
l376: teq R9, #1073741869
l377: cmnEQ R1, R2, LSL R2
l378: andVC R0, R7, R3
l379: movLT R8, R8, RRX 
l380: andCC R9, R2, R0
l381: subLT R7, R4, R3, ASR #0
l382: eorGTs R7, R4, R3, LSR #12
l383: add R6, R10, R10
l384: subCCs R11, R14, #6272
l385: sbcGT R0, R3, #141
l386: orrs R9, R6, R10
l387: movs R14, #18176
l388: teq R0, R1
l389: rscPLs R7, R14, R9, LSL R14
l390: b l391
l391: subVCs R3, R0, #7733248
l392: bicPL R0, R5, R8, LSL #20
l393: clz R4, R0
l394: sbcLEs R0, R9, #9664
l395: andEQ R7, R2, R1, LSR #19
l396: orrGTs R7, R7, R8, LSR #3
l397: tstLT R4, #5056
l398: teqVS R14, R4, LSR R9
l399: teqPL R15, R1
l400: eorLEs R3, R3, R14, ROR #17
l401: orr R0, R4, R15
l402: tstCC R2, R7, LSR #1
l403: subVCs R6, R11, #22
l404: cmnGT R14, R2
l405: rsbs R12, R0, R4, LSL R5
l406: bLS l414
l407: mov R5, R2, RRX 
l408: subHI R14, R14, #214
l409: sbcCCs R5, R3, R5, LSR R10
l410: eorCS R14, R12, R15
l411: sub R3, R7, R0, LSR R2
l412: mvn R2, R10
l413: mvns R0, R11
l414: cmnCC R7, #356515840
l415: sbcs R9, R5, R11, LSL #12
l416: str R3, [sp, #+43]!
l417: bCC l425
l418: teq R4, R7
l419: mvns R7, R3
l420: add R4, R12, R11, RRX 
l421: rsbNEs R9, R9, R5, RRX 
l422: cmpGT R1, R8, LSL #29
l423: teq R4, R4
l424: orr R5, R3, R6, LSL #29
l425: cmnGE R15, R7
l426: eorNEs R6, R11, #1073741827
l427: movGTs R4, #536870924
l428: tstVC R1, #1024
l429: and R9, R3, R0, ROR R3
l430: orrs R14, R8, R7, RRX 
l431: adcs R9, R5, R5
l432: eors R8, R12, R4
l433: bGE l440
l434: add R1, R0, #136
l435: rsbGTs R10, R12, R0
l436: teqGT R14, R6, ROR R2
l437: teqNE R12, R9, LSR R2
l438: clz R8, R6
l439: b l441
l440: b l435
l441: tstHI R8, R9, ROR #5
l442: ands R8, R2, #1856
l443: eor R0, R5, R9, RRX 
l444: cmp R5, #496
l445: subCS R2, R7, R14, ROR #31
l446: subs R1, R4, R14, ASR R6
l447: rscPLs R5, R6, R14, LSL #2
l448: bGE l449
l449: andVSs R6, R15, R4
l450: tstLE R0, R3, LSR R14
l451: movs R8, R12, ROR R12
l452: adc R4, R7, R5, ASR #13
l453: mov R5, #64
l454: str R11, [sp, -R5]!
l455: tst R12, R11, LSL R8
l456: andGEs R11, R8, R1, RRX 
l457: cmpLE R6, R7, RRX 
l458: mvnCSs R10, #3808
l459: rscEQs R14, R14, R9, ASR R11
l460: clzLE R7, R7
l461: bCS l466
l462: add R1, R0, #50
l463: rsbs R0, R14, #50331648
l464: teq R4, R1, RRX 
l465: b l467
l466: b l463
l467: subLSs R2, R8, R0, ROR R5
l468: tstMI R0, R6, ASR #31
l469: str R0, [sp], #+28
l470: bicCS R12, R12, R11, LSL #3
l471: clzCC R11, R6
l472: bCC l481
l473: clzMI R0, R8
l474: mov R2, R12
l475: sbcVS R9, R7, #917504
l476: orrVSs R9, R1, #5898240
l477: cmpEQ R12, #524288000
l478: andNEs R8, R15, #1644167168
l479: clzCC R4, R9
l480: orrs R12, R1, #49152
l481: orr R0, R8, R1, RRX 
l482: mov R2, #20
l483: str R2, [sp], -R2
l484: sbcGTs R2, R9, R8, ASR #17
l485: clzHI R14, R3
l486: subs R12, R9, R2, LSR R14
l487: subs R1, R5, R4
l488: cmnGE R0, R14, ROR #3
l489: b l494
l490: add R1, R0, #199
l491: cmn R0, R4, ASR R1
l492: tstEQ R11, #189792256
l493: b l495
l494: b l491
l495: subGT R0, R3, R7, ASR #18
l496: subs R10, R1, R3
l497: sbcLE R1, R9, R15
l498: sub R0, R15, R3, RRX 
l499: adcNEs R0, R15, R9, ROR #18
l500: subNEs R10, R8, R14, LSL #27
l501: b l509
l502: add R1, R0, #197
l503: eorGT R2, R3, R9, RRX 
l504: subNE R1, R3, #231735296
l505: subGEs R8, R5, R1
l506: eorPL R8, R8, #1241513984
l507: andHIs R12, R1, #1946157056
l508: b l510
l509: b l503
l510: bicLS R6, R11, R1, ROR R8
l511: b l515
l512: add R1, R0, #215
l513: adds R1, R6, R2, LSL R9
l514: b l516
l515: b l513
l516: teqGE R0, R4
l517: bLE l522
l518: add R1, R0, #44
l519: movCCs R5, R3, LSR R6
l520: movHIs R1, #3014656
l521: b l523
l522: b l519
l523: bGE l529
l524: rsb R5, R10, R2, LSR R10
l525: tst R12, R11, LSL R0
l526: adcVCs R4, R9, R5, ROR #17
l527: mov R11, R9, RRX 
l528: andPL R4, R15, R6, RRX 
l529: teqMI R4, #721420288
l530: andCSs R8, R11, R1, ASR #10
l531: cmp R0, R0, LSL R11
l532: adcVCs R12, R3, R5, LSL R14
l533: mov R2, #63
l534: ldrLE R10, [sp, +R2]
l535: rsbVS R14, R15, #746586112
l536: b l537
l537: adc R3, R6, R5, RRX 
l538: eorHIs R14, R3, #57147392
l539: addGTs R5, R6, R8, ROR R5
l540: mvn R5, R8, LSR #16
l541: subs R1, R7, #206569472
l542: bics R10, R7, R5, ROR #4
l543: andCCs R14, R1, #499122176
l544: sbcCS R2, R1, R2, LSL #1
l545: eorMIs R11, R7, R1, LSR #16
l546: addLE R14, R4, R15, RRX 
l547: sbcLTs R3, R7, R6, ASR #18
l548: rsbs R11, R0, #33
l549: adds R10, R14, #4128768
l550: ldr R4, [sp], #+17
l551: orrEQ R10, R15, #7208960
l552: orrMI R0, R6, R7, LSL R0
l553: adcEQ R5, R14, R15
l554: orrMIs R8, R15, R5, RRX 
l555: adds R3, R7, R11
l556: mvnVS R3, R2
l557: addGE R2, R14, R9
l558: bic R2, R10, R9
l559: andCS R2, R8, R11
l560: b l568
l561: add R1, R0, #56
l562: teqNE R0, R3, LSR #11
l563: eors R2, R0, R9, ASR #0
l564: bicPLs R8, R8, R6, RRX 
l565: addPL R9, R5, R11, RRX 
l566: bicMIs R3, R3, R8, LSR R12
l567: b l569
l568: b l562
l569: mvnLT R3, #13369344
l570: mvns R8, #24641536
l571: sbcLE R3, R4, R1
l572: adcCC R1, R8, R14
l573: bVC l577
l574: bics R8, R12, #3555328
l575: rsbs R5, R3, #247463936
l576: mvnGT R11, #8192
l577: rsbGE R12, R15, R5, ASR #31
l578: cmp R2, #47448064
l579: tstEQ R10, #1664
l580: add R10, R15, #1785856
l581: str R1, [sp, #-9]!
l582: bPL l587
l583: add R1, R0, #44
l584: mvnGEs R4, R11, ROR R3
l585: bics R1, R5, R7, RRX 
l586: b l588
l587: b l584
l588: mov R6, #16
l589: str R7, [sp, -R6]!
l590: bVC l593
l591: subMI R3, R0, R8
l592: cmnLT R0, R3, LSL #1
l593: teq R0, #-2147483601
l594: b l599
l595: add R1, R0, #66
l596: rscEQs R4, R2, R7, ASR R0
l597: and R3, R1, R12, RRX 
l598: b l600
l599: b l596
l600: movCC R2, #257024
l601: cmp R1, R1, ASR R8
l602: teqLS R4, R5
l603: subLSs R14, R5, R7
l604: sbcs R8, R9, R6
l605: ands R7, R6, R7
l606: movEQs R11, R1, LSL R5
l607: orrEQ R14, R12, R5, ROR R1
l608: addHI R14, R8, #1979711488
l609: andPL R7, R1, #1073741871
l610: subs R6, R3, R6, LSR R14
l611: clz R11, R11
l612: clz R5, R4
l613: rscGEs R14, R8, R4
l614: adc R12, R14, R11
l615: orrLTs R4, R4, R11
l616: ldr R3, [sp], #+73
l617: cmpEQ R15, R5, LSR #23
l618: clzEQ R8, R5
l619: eorPL R0, R1, R12
l620: clzVS R6, R9
l621: mvn R4, R3
l622: andGT R9, R12, R6, ROR #10
l623: ands R14, R14, R2, LSR R0
l624: sub R12, R0, #260
l625: orr R6, R15, R9, LSL #13
l626: andGT R7, R6, R3
l627: cmn R0, R0, ROR #13
l628: movVCs R4, R9
l629: cmnGE R6, R2
l630: mvn R0, #163840
l631: sbcVC R7, R1, #7680
l632: cmn R1, R0, ROR R11
l633: orr R0, R11, R3
l634: tstNE R5, #64487424
l635: adds R5, R4, R6, RRX 
l636: bVS l638
l637: subLS R12, R15, #207618048
l638: movEQ R8, R12, LSR R10
l639: b l640
l640: bicCS R9, R0, R2, LSR R1
l641: clzHI R2, R9
l642: sbcs R4, R4, R14, LSR R10
l643: add R10, R6, R11, LSR R10
l644: orr R14, R1, #724992
l645: cmnVS R14, R0, RRX 
l646: teq R7, R0
l647: cmnLT R3, R14
l648: rsbLS R6, R1, #268435468
l649: tstCS R3, R7, ROR R1
l650: mov R0, R11, LSR R4
l651: subs R10, R5, R11, LSR #12
l652: subMIs R5, R11, #335544322
l653: cmn R6, R9
l654: bMI l663
l655: teqVS R8, #1294336
l656: rsbs R0, R6, R9
l657: sub R12, R5, R10, ROR #19
l658: mvnCCs R11, R11, LSR R7
l659: tstVS R12, R8, LSR R9
l660: adc R0, R3, #67108864
l661: cmn R12, R2, ROR #3
l662: teq R9, R14
l663: mvn R9, R3
l664: movs R3, R11, LSR #2
l665: mov R11, #57
l666: strGE R8, [sp, -R11]
l667: eorLSs R8, R3, R1, LSL R11
l668: clz R6, R6
l669: orrLSs R14, R2, R14, LSR #8
l670: tstLT R3, R1, RRX 
l671: subMI R3, R14, R0, RRX 
l672: tstVC R15, #134
l673: orrLEs R9, R11, R12, LSR R14
l674: cmnVS R10, R1
l675: clzGT R10, R14
l676: adcVSs R10, R12, #-1879048184
l677: subVS R12, R7, #11008
l678: bCS l686
l679: add R1, R0, #90
l680: cmp R15, #41943040
l681: subCSs R2, R15, R8, RRX 
l682: mvnPLs R5, R15
l683: tst R5, #536870925
l684: eorLSs R5, R6, R0, ROR #20
l685: b l687
l686: b l680
l687: b l695
l688: add R1, R0, #11
l689: cmnVS R1, R5, LSL #30
l690: cmnVC R2, R8
l691: eor R0, R15, #58
l692: sbcs R7, R15, R12, ROR #5
l693: eor R1, R9, R11, RRX 
l694: b l696
l695: b l689
l696: clzCC R7, R11
l697: orrGEs R8, R2, R15, LSR #21
l698: sbcLT R3, R8, R6
l699: andNE R9, R9, R11, ROR R10
l700: b l704
l701: eorPL R9, R0, R10
l702: adds R8, R4, R5
l703: teqLS R0, R14, ROR #16
l704: movGT R14, R8, ROR R12
l705: adcMI R3, R3, #16256
l706: cmn R4, #50176
l707: sbcPL R9, R7, R7, ROR #16
l708: b l713
l709: add R1, R0, #109
l710: eorGE R14, R6, R2, ASR R0
l711: cmnMI R0, R11, ROR #17
l712: b l714
l713: b l710
l714: sub R9, R0, R7
l715: b l723
l716: add R1, R0, #237
l717: bic R12, R2, #1327104
l718: bicVS R2, R3, R8, ROR R0
l719: orrHI R0, R9, R3, ROR R6
l720: tstLS R1, R10, ROR R14
l721: rsbNE R3, R4, R2, RRX 
l722: b l724
l723: b l717
l724: cmp R6, #2192
l725: mvnCS R10, #360710144
l726: orrPL R4, R3, R10, LSR R5
l727: cmp R5, #1275068416
l728: orrs R3, R10, R3
l729: sbcs R0, R2, #34078720
l730: movs R4, R1, ROR R7
l731: mov R4, R7, ASR R6
l732: cmnCC R3, #169869312
l733: orrNEs R1, R5, R6, LSL #12
l734: addNEs R5, R9, R8
l735: sbc R5, R11, R3, ROR R7
l736: movCCs R10, R12, RRX 
l737: eors R14, R9, #1610612737
l738: subLTs R8, R7, R4, LSL #25
l739: eor R4, R5, R2
l740: adcs R9, R4, #687865856
l741: movVS R6, R10
l742: subPL R4, R2, R6, LSR R14
l743: adds R0, R7, R0, ASR R0
l744: sub R0, R11, R15, LSL #6
l745: rscEQ R11, R0, R2, RRX 
l746: mov R9, #33
l747: str R7, [sp, -R9]!
l748: cmp R1, #406847488
l749: clz R9, R10
l750: sbc R2, R3, R6, RRX 
l751: sbc R3, R12, R11
l752: addHI R2, R1, #2160
l753: subNE R0, R12, #2473984
l754: orrLSs R9, R0, R12, LSL R4
l755: cmpGT R12, R5
l756: rsbLEs R10, R5, R4, RRX 
l757: clz R14, R6
l758: orrLEs R1, R3, R1, ROR #30
l759: rsbGT R2, R9, R9
l760: cmp R5, #260096
l761: subVS R8, R0, #754974720
l762: orrCS R10, R12, R6
l763: subGT R6, R7, R7, ASR R14
l764: mov R10, #4
l765: ldr R7, [sp, +R10]
l766: subs R1, R4, R12, RRX 
l767: orrs R2, R15, #-1409286144
l768: strGE R12, [sp, #-28]
l769: b l778
l770: subLS R8, R11, R12, LSR R6
l771: cmnNE R14, R9
l772: adds R7, R5, #566231040
l773: movLT R9, R14, RRX 
l774: clzGE R7, R5
l775: sbc R2, R14, R2, ASR #21
l776: clzNE R4, R0
l777: teqVC R15, R14, RRX 
l778: cmpVC R7, R7, RRX 
l779: mov R14, #4
l780: str R14, [sp, -R14]!
l781: b l788
l782: add R1, R0, #1
l783: mov R10, R5, ASR #30
l784: sbcGTs R10, R2, #364904448
l785: mvns R14, R10, ROR #11
l786: cmpVS R8, R4, ASR R7
l787: b l789
l788: b l783
l789: eors R12, R5, R10, LSR R2
l790: eorPLs R11, R5, R12
l791: mov R9, #28
l792: ldr R10, [sp, +R9]
l793: bLS l798
l794: subEQs R14, R3, R10
l795: eorMI R12, R15, #152576
l796: orrHI R4, R4, #-2147483621
l797: mvnPLs R8, R12, ASR #16
l798: rsbGEs R1, R12, R9
l799: eor R5, R2, R2, ASR R3
l800: ldr R8, [sp, #-28]!
l801: rsc R8, R15, R0, LSL #15
l802: rscLEs R2, R4, R7
l803: b l807
l804: add R1, R0, #85
l805: andEQs R5, R14, #9437184
l806: b l808
l807: b l805
l808: teqNE R9, R14
l809: orr R2, R11, R15, ROR #17
l810: clzCC R8, R2
l811: subLTs R5, R10, R11
l812: eor R14, R6, R5
l813: subs R9, R9, #1753088
l814: subCS R12, R1, R8
l815: rscEQ R10, R7, R15
l816: str R9, [sp, #+48]!
l817: bicLSs R9, R2, R4, RRX 
l818: mov R5, #20
l819: str R6, [sp], -R5
l820: subHIs R10, R4, R3
l821: mov R14, #207
l822: bLE l823
l823: clzVC R8, R2
l824: eorVC R14, R11, R1, RRX 
l825: orr R11, R2, R7, ROR #1
l826: orrs R12, R1, R8, ASR R6
l827: mvn R5, R0, LSL #4
l828: rsc R10, R3, R3, LSR #22
l829: bHI l834
l830: add R1, R0, #224
l831: rsbEQs R8, R10, R15, RRX 
l832: teqLS R9, R12, LSL R3
l833: b l835
l834: b l831
l835: rscs R4, R7, R10, LSR #29
l836: addNE R7, R1, #24641536
l837: cmpEQ R10, R8
l838: andLTs R7, R2, R5, ROR #11
l839: and R10, R3, R7
l840: eors R1, R3, R0, ASR #15
l841: rscMI R14, R3, R10
l842: subs R9, R2, #3014656
l843: bNE l848
l844: add R1, R0, #209
l845: bicLE R7, R4, R9, RRX 
l846: eorLS R9, R0, R12, LSR R2
l847: b l849
l848: b l845
l849: subs R9, R12, R5
l850: bicEQ R0, R4, #973078528
l851: eorNEs R10, R7, R5
l852: cmn R11, R14, RRX 
l853: subLE R8, R14, #1904
l854: rscGT R5, R15, R15, ROR #1
l855: b l858
l856: clz R2, R8
l857: andPL R10, R15, R15, RRX 
l858: clzNE R7, R11
l859: bCC l863
l860: orrMIs R7, R15, R7, RRX 
l861: adcVSs R5, R2, R6, LSR R12
l862: rsbGT R14, R8, #1023410176
l863: addLSs R14, R12, R10, ASR R3
l864: rsbLSs R6, R15, #1677721601
l865: teqMI R10, R2
l866: bics R3, R12, R8, LSR #28
l867: bLE l873
l868: add R1, R0, #248
l869: clz R11, R1
l870: addHI R8, R8, #51380224
l871: teq R8, #16777216
l872: b l874
l873: b l869
l874: cmnLS R8, R11, ASR R2
l875: eorLT R8, R9, R1, ASR R4
l876: bNE l883
l877: add R1, R0, #213
l878: adcLSs R14, R8, R5
l879: mvns R12, R7, LSR R3
l880: orrLS R3, R8, R7
l881: orrHI R6, R4, R10
l882: b l884
l883: b l878
l884: mvnGEs R6, R6, ROR #30
l885: bLE l894
l886: add R1, R0, #14
l887: tstLS R6, R8, RRX 
l888: tstLE R8, #11010048
l889: tst R12, R3, LSL #26
l890: subs R2, R8, #12582912
l891: orr R2, R15, #3120
l892: bic R5, R7, R1, ASR R12
l893: b l895
l894: b l887
l895: teq R6, R0, LSL #10
l896: cmpVS R4, R0
l897: orr R4, R11, R3, LSR R8
l898: clzCC R0, R7
l899: eorMIs R11, R10, R2
l900: teqVS R6, #788
l901: rsbEQ R3, R14, #218103808
l902: bLE l904
l903: clzHI R8, R12
l904: sub R5, R7, #211
l905: subMI R8, R6, R4, ASR #20
l906: subEQ R4, R2, #368
l907: and R2, R11, R14
l908: cmpCS R2, R1, RRX 
l909: adds R14, R12, R6, ASR #29
l910: clz R0, R14
l911: ldr R0, [sp, #-9]
l912: orrEQs R10, R9, R11
l913: adds R10, R12, R2
l914: andGEs R4, R0, #817889280
l915: cmp R12, #-2147483614
l916: adcLS R8, R5, R8, LSR #21
l917: bic R6, R11, R0
l918: orr R4, R5, R5, LSR R5
l919: clzNE R0, R11
l920: sub R2, R1, R6
l921: bLE l928
l922: eor R8, R6, R11, LSL R4
l923: adc R1, R5, R0, RRX 
l924: clz R12, R8
l925: tst R12, R4, LSL R10
l926: clzNE R10, R8
l927: movs R1, #5760
l928: tst R3, R5, RRX 
l929: b l930
l930: adc R4, R7, #-1073741788
l931: subGTs R1, R12, R12, LSR R14
l932: movGT R4, R3, ROR R4
l933: str R1, [sp], #+12
l934: bMI l942
l935: eorLE R5, R2, R3, LSL #17
l936: adcCCs R12, R14, R7
l937: sbc R2, R0, R10
l938: sbc R6, R2, R3, LSR R14
l939: teqMI R15, R4, RRX 
l940: subNE R6, R10, R9, ASR R6
l941: bicPLs R1, R9, R6
l942: mvnGTs R8, R7
l943: bHI l951
l944: add R10, R4, #55574528
l945: andCSs R3, R0, R10, ROR R10
l946: ands R8, R7, R9, ROR #27
l947: tstEQ R8, R11, RRX 
l948: rscs R12, R4, #15168
l949: mvn R2, R11, ROR R0
l950: subs R8, R1, R11, LSR R12
l951: rsbs R12, R15, #536870922
l952: bPL l954
l953: tstCC R5, R7, LSL #9
l954: mvnGEs R5, R7
l955: bics R1, R3, R10, ASR R10
l956: andHI R4, R12, R14, LSL R3
l957: tstLE R9, R1
l958: mvns R1, R2, ROR R1
l959: subs R9, R3, #816
l960: cmn R5, #114688
l961: eors R2, R6, R10, ASR #18
l962: cmnNE R2, #6656
l963: adcMIs R14, R3, R0, RRX 
l964: bLE l971
l965: adcGTs R7, R2, R6, LSR #31
l966: tst R11, R12, ASR #25
l967: cmnVS R11, R8, ROR R12
l968: subs R9, R12, R2, ROR R3
l969: subEQs R2, R0, R10
l970: ands R3, R8, #3538944
l971: addCSs R4, R1, #2848
l972: rsbs R8, R3, R5, ASR R9
l973: subNEs R1, R4, #14680064
l974: eorMI R9, R15, R12, ASR #12
l975: cmnGE R7, R9
l976: movPL R3, R11, RRX 
l977: cmp R2, R15, LSL #11
l978: mvns R6, R6
l979: andGT R2, R3, R8, LSR R2
l980: b l987
l981: add R1, R0, #249
l982: tst R4, #231424
l983: orrPL R9, R12, #80
l984: rsc R0, R7, R11
l985: sbcLE R9, R0, R9, RRX 
l986: b l988
l987: b l982
l988: adcs R10, R7, R6
l989: rsbs R4, R9, R5, LSL R4
l990: sbcs R6, R10, R5
l991: cmn R12, R7, ROR #31
l992: cmn R6, R3, ROR R7
l993: clzMI R3, R7
l994: rsb R14, R8, R4, ROR #12
l995: movPL R3, R8, ROR #25
l996: b l998
l997: adcs R10, R7, #14784
l998: addMI R6, R7, R10, RRX 
l999: sbcCS R7, R3, R7
l1000: bLT l1006
l1001: eor R5, R9, #872
l1002: tst R9, R8, ASR #14
l1003: adcGE R5, R10, R8, ROR #4
l1004: movGEs R11, R7
l1005: eors R10, R0, R6, ROR R0
l1006: orr R4, R14, #-805306356
l1007: andPL R5, R11, #268435457
l1008: b l1015
l1009: teqVC R9, #480
l1010: addGEs R12, R9, #732
l1011: rsbs R1, R12, R8, ROR R5
l1012: adds R11, R8, #1327104
l1013: movs R5, R3
l1014: sbc R12, R1, R3
l1015: rsc R0, R2, R2, LSL #6
l1016: teq R12, #-939524094
l1017: sbcVCs R4, R7, R3, LSR R14
l1018: cmp R1, R9, ASR #23
l1019: cmp R10, R2
l1020: bic R0, R9, R8, LSL #16
l1021: str R5, [sp, #+0]!
l1022: subs R5, R2, R3
l1023: sbc R14, R6, #81920
l1024: teqLS R7, R1, RRX 
l1025: cmn R7, R11
l1026: clz R10, R9
l1027: b l1032
l1028: sbcLS R14, R3, R5, ROR R8
l1029: tstVS R3, R2, RRX 
l1030: orr R8, R12, R5, LSR R0
l1031: clz R11, R11
l1032: mvnGTs R1, R0, ROR R12
l1033: orrEQ R3, R14, R1, ASR #11
l1034: andLEs R11, R4, R14, ASR R4
l1035: mvns R2, R6, ASR R0
l1036: adcs R6, R12, R15, ROR #20
l1037: orrVS R8, R15, R4, RRX 
l1038: teq R6, #872415232
l1039: b l1047
l1040: rsb R8, R15, R3, ROR #20
l1041: orrCC R10, R1, R6, ROR #23
l1042: cmn R7, R5, RRX 
l1043: eors R0, R9, R9, ROR R12
l1044: teqLS R7, #2441216
l1045: adcCS R3, R6, R11, RRX 
l1046: subMI R0, R5, R0, ASR #22
l1047: cmn R6, R9
l1048: ldr R8, [sp, #-30]!
l1049: bic R3, R8, #2880
l1050: rscs R2, R3, R5, RRX 
l1051: rsb R14, R12, R9
l1052: cmnLE R0, #2880
l1053: sbc R12, R7, R5
l1054: str R11, [sp], #-2
l1055: rsbPL R5, R7, R3, LSL R7
l1056: cmpGE R10, #43264
l1057: bicCS R3, R2, #805306368
l1058: sbc R9, R1, R9, LSR R8
l1059: sbc R4, R14, R3
l1060: cmpVS R14, R6, ASR #5
l1061: bCS l1068
l1062: add R1, R0, #15
l1063: addGEs R5, R5, #-704643072
l1064: andMI R7, R15, R14
l1065: rsbCS R9, R1, R7, LSL R6
l1066: cmpNE R15, #172032
l1067: b l1069
l1068: b l1063
l1069: sbcVSs R9, R10, #235
l1070: subEQ R7, R9, R7, ASR R7
l1071: b l1075
l1072: subs R8, R1, R0, ROR R4
l1073: clzLE R10, R11
l1074: subs R9, R14, #41
l1075: movs R4, R3, ROR #29
l1076: eors R2, R1, R10, ROR R10
l1077: rsb R0, R10, R3
l1078: bicVS R7, R15, R12
l1079: cmn R8, R12
l1080: movPLs R7, R10
l1081: subCC R14, R7, #-1879048177
l1082: subs R6, R11, R3
l1083: andLSs R10, R1, R7
l1084: cmn R4, R9
l1085: orrs R0, R11, #272
l1086: cmnMI R10, R4
l1087: bVC l1090
l1088: andGE R8, R15, R6, LSL #21
l1089: cmpMI R7, R4
l1090: subGE R7, R2, R10, ASR R9
l1091: orrVCs R0, R10, R7, ASR R4
l1092: rsbGT R5, R3, #64
l1093: bMI l1098
l1094: bicGT R12, R4, #1072
l1095: cmnLE R3, R15
l1096: rsbMI R0, R3, R6
l1097: addLT R5, R4, R14, ROR R10
l1098: mvnLTs R11, R0, LSL R12
l1099: subLTs R11, R1, R8, LSR R8
l1100: tst R3, R15, RRX 
l1101: subLT R11, R11, #440401920
l1102: sbcLS R11, R3, R11, LSL R10
l1103: rsc R11, R11, R14, RRX 
l1104: ands R6, R11, R5, ROR R1
l1105: adds R12, R10, R11, ASR #23
l1106: subs R8, R11, R0, ROR R9
l1107: and R5, R8, #96
l1108: bCS l1114
l1109: add R1, R0, #113
l1110: adcLS R3, R7, R1
l1111: rscs R3, R7, R7
l1112: orrLS R6, R8, R11
l1113: b l1115
l1114: b l1110
l1115: ands R9, R7, R1, ROR R3
l1116: rscHIs R4, R5, R14
l1117: rscGTs R7, R9, R2, ROR R3
l1118: mvnLSs R11, R9, ASR #9
l1119: and R1, R8, R9, LSR #17
l1120: b l1130
l1121: cmnLT R9, R1, ASR #27
l1122: rsbLS R0, R4, R1
l1123: clzCS R14, R0
l1124: adcVC R3, R15, #-1979711488
l1125: eorPLs R4, R1, R5
l1126: subGTs R1, R0, R15
l1127: orrCCs R8, R6, R14, RRX 
l1128: and R14, R0, R5, LSL R0
l1129: mvnGE R9, R6
l1130: rscMIs R10, R0, #95232
l1131: bicLS R1, R5, #1968
l1132: addVCs R10, R15, R10, RRX 
l1133: addGTs R6, R1, R7, ROR R4
l1134: ands R5, R8, R6, ASR R14
l1135: orrs R3, R11, R9
l1136: mvnCS R7, R0, ROR R6
l1137: b l1146
l1138: add R1, R0, #94
l1139: rsb R4, R12, R7, ROR R12
l1140: eor R11, R3, #985661440
l1141: sbcs R6, R6, #218103808
l1142: mvnNE R2, R10
l1143: sbcHIs R3, R15, R7
l1144: teqGE R11, R4
l1145: b l1147
l1146: b l1139
l1147: eorLS R7, R15, R0, ASR #12
l1148: movLE R14, #805306368
l1149: clz R1, R9
l1150: mov R11, #4
l1151: str R14, [sp], +R11
l1152: eors R14, R0, R14
l1153: orrPLs R12, R4, R5, ROR R11
l1154: mov R9, #-1375731712
l1155: rsbNE R5, R14, R14
l1156: mov R2, #7
l1157: ldr R12, [sp], -R2
l1158: bGT l1165
l1159: andEQ R2, R15, R2, RRX 
l1160: addEQs R11, R15, R14, ASR #4
l1161: teq R10, R6, LSL #0
l1162: tstNE R0, R5, LSL R1
l1163: sub R1, R8, R11, RRX 
l1164: cmpPL R4, R8
l1165: and R0, R11, R7
l1166: orrMIs R4, R6, #-1342177267
l1167: b l1176
l1168: add R1, R0, #121
l1169: rscs R14, R14, #15872
l1170: subEQ R12, R4, R14, ASR #10
l1171: cmpGE R4, #268435465
l1172: teqVS R15, R4, ASR #31
l1173: sbcGE R10, R1, R2, LSL #4
l1174: subs R7, R8, R5, ROR #22
l1175: b l1177
l1176: b l1169
l1177: cmnMI R3, #16384
l1178: b l1187
l1179: add R1, R0, #20
l1180: adcLT R0, R3, #843776
l1181: movs R8, R0, LSR #11
l1182: teqLS R14, R0, ROR #20
l1183: teqVC R9, R4, LSL #7
l1184: rscNEs R3, R9, #2048
l1185: teqHI R0, R8
l1186: b l1188
l1187: b l1180
l1188: tstNE R6, R3, ASR R9
l1189: bLT l1191
l1190: adcPL R0, R2, R8, LSR #27
l1191: movs R6, R0, ROR R10
l1192: rscGE R14, R8, R4
l1193: teqLS R10, R4, RRX 
l1194: and R12, R12, R15, RRX 
l1195: cmnCC R12, #242
l1196: subCCs R11, R12, R6, ASR #29
l1197: b l1203
l1198: ands R1, R5, R0, RRX 
l1199: movLE R8, R14, ROR R9
l1200: mvnLEs R10, R4
l1201: bic R2, R1, R5, LSL R0
l1202: tstMI R0, R14, ROR R5
l1203: andVC R5, R14, R5, ASR #15
l1204: adcLEs R0, R3, #446464
l1205: addGT R10, R4, #-2147483637
l1206: cmnVC R15, #939524097
l1207: rsc R12, R12, R10, LSL #26
l1208: orr R7, R11, #10944
l1209: rscCS R5, R10, R7
l1210: clz R7, R9
l1211: b l1218
l1212: add R1, R0, #18
l1213: tst R0, R9
l1214: subs R2, R4, R10
l1215: adc R5, R3, R1, ASR #17
l1216: rsbGEs R3, R2, #-1073741777
l1217: b l1219
l1218: b l1213
l1219: subHIs R14, R8, R7, LSR R6
l1220: orrVS R7, R7, #1073741851
l1221: teqEQ R8, R12, LSR #9
l1222: adcLSs R6, R11, #-536870897
l1223: cmnGT R7, #12582912
l1224: clzGE R5, R8
l1225: sub R12, R10, #-2147483642
l1226: mvns R3, R7
l1227: cmn R6, R7
l1228: rsb R11, R5, R3, LSR #13
l1229: mvnPL R11, R8, RRX 
l1230: sbcVC R2, R1, #268435470
l1231: cmp R0, R0
l1232: mov R0, #43
l1233: str R8, [sp], +R0
l1234: orr R8, R9, #584
l1235: clz R2, R3
l1236: mov R14, R1
l1237: rscLE R11, R8, R3
l1238: clzPL R4, R10
l1239: movs R9, R5, LSR #1
l1240: sbcGTs R7, R6, R0, LSR #13
l1241: eorLTs R6, R9, #15
l1242: sub R4, R12, R4, RRX 
l1243: bLE l1248
l1244: add R1, R0, #10
l1245: orr R14, R5, R1, ROR R5
l1246: orr R12, R6, R6, ASR R9
l1247: b l1249
l1248: b l1245
l1249: sbcs R9, R7, R14, ROR #26
l1250: bicLSs R6, R5, R5
l1251: cmpLE R0, R9, LSL #23
l1252: orrs R14, R9, R10, LSL #23
l1253: tstNE R7, R10, ASR #29
l1254: bMI l1262
l1255: add R1, R0, #228
l1256: adc R5, R6, R0, ROR #18
l1257: adcs R4, R8, #208896
l1258: orrs R2, R3, R5, RRX 
l1259: rscs R14, R7, R1
l1260: ands R1, R7, #1744
l1261: b l1263
l1262: b l1256
l1263: bHI l1266
l1264: rsc R3, R11, R4
l1265: teq R11, R5, ROR #19
l1266: tstCS R14, R1, LSL #6
l1267: orrEQs R7, R12, R6
l1268: bicEQ R4, R2, R11, ASR #1
l1269: subs R11, R12, R1, LSL R6
l1270: orrs R8, R3, R5, LSR #7
l1271: cmpLT R10, R4, RRX 
l1272: tstNE R6, R4, LSL #22
l1273: subCSs R6, R7, R5, ROR R3
l1274: mvn R1, R15, ASR #2
l1275: eorPL R5, R1, #87
l1276: bicEQs R4, R3, R8, RRX 
l1277: movNE R7, R3
l1278: eor R4, R5, R1
l1279: ldrLS R8, [sp, #-53]
l1280: bGE l1286
l1281: tstCC R5, #1073741828
l1282: cmp R6, #88064
l1283: teqNE R7, R8, RRX 
l1284: teq R11, #67108867
l1285: cmpCS R11, R5, ASR R11
l1286: bic R5, R8, R5
l1287: eor R3, R12, R2
l1288: str R11, [sp, #-20]!
l1289: subHI R5, R10, R15
l1290: andVSs R8, R3, R14, RRX 
l1291: teqHI R12, R14, LSL #18
l1292: str R0, [sp], #+36
l1293: b l1299
l1294: add R1, R0, #199
l1295: mvns R2, R6, LSL #18
l1296: subLSs R3, R0, R12
l1297: subs R10, R5, R9, ASR R7
l1298: b l1300
l1299: b l1295
l1300: bVS l1306
l1301: add R1, R0, #60
l1302: rsbHIs R5, R1, R7, LSL R0
l1303: rsbHI R8, R0, R2, LSL #4
l1304: cmnPL R9, R8
l1305: b l1307
l1306: b l1302
l1307: rsbCC R4, R4, R2, LSL #26
l1308: and R3, R6, #131
l1309: subs R5, R15, R0
l1310: b l1316
l1311: subGE R14, R1, R6
l1312: cmpLE R10, R6
l1313: clzLS R4, R10
l1314: clz R5, R8
l1315: eors R11, R11, #96
l1316: clzCS R0, R2
l1317: eors R14, R2, #51456
l1318: subCCs R8, R12, #-1073741777
l1319: cmn R9, R15, LSL #29
l1320: subGEs R6, R4, R2, ASR #11
l1321: bCC l1325
l1322: add R1, R0, #244
l1323: tstCS R14, R2, ASR R11
l1324: b l1326
l1325: b l1323
l1326: adc R10, R3, R5, ASR #9
l1327: teqPL R0, R5
l1328: sub R2, R14, #14090240
l1329: mvns R0, R7
l1330: sbcs R8, R10, #257949696
l1331: subs R6, R11, R0, LSL R0
l1332: teqNE R14, R12
l1333: rscLEs R12, R15, R12, LSL #3
l1334: rsb R1, R2, R15
l1335: eor R4, R9, R5, ROR R3
l1336: orrLEs R8, R3, R5
l1337: eors R2, R5, #-1879048192
l1338: orr R8, R6, R2, ROR R12
l1339: adds R0, R10, R11, RRX 
l1340: sbcCSs R14, R3, R2
l1341: cmpCC R12, R10, RRX 
l1342: cmn R3, R1, LSR #12
l1343: bMI l1349
l1344: add R1, R0, #89
l1345: addLT R4, R10, R15, RRX 
l1346: adcHIs R1, R14, R11, LSL R12
l1347: tst R0, R1, LSR R14
l1348: b l1350
l1349: b l1345
l1350: orrs R6, R9, R11
l1351: clzNE R14, R3
l1352: sub R8, R3, R1
l1353: rsbVSs R14, R0, R8
l1354: b l1363
l1355: add R1, R0, #224
l1356: sbcGEs R8, R11, R12
l1357: clz R11, R9
l1358: tst R4, #-2013265920
l1359: cmnCS R5, #5696
l1360: cmn R10, R12, ROR #30
l1361: adcHI R5, R7, R4
l1362: b l1364
l1363: b l1356
l1364: mvnHI R2, R1, ROR R3
l1365: sbc R9, R7, R3, LSR R4
l1366: addVC R12, R5, R11
l1367: bic R3, R3, R3, ASR #29
l1368: bic R12, R0, R7
l1369: sbcCSs R5, R12, R14
l1370: andLS R7, R7, #591396864
l1371: bicLTs R9, R9, R14, LSR R12
l1372: orrs R14, R11, R7, LSR R7
l1373: rscLE R9, R11, R11, ASR R10
l1374: cmnGE R15, R10, LSL #20
l1375: teq R12, R7
l1376: bics R0, R11, R9
l1377: orr R2, R1, R6, LSL #23
l1378: mvnEQs R14, #536870912
l1379: cmpCC R9, R10
l1380: teqMI R2, R10, LSR #24
l1381: and R0, R1, R2
l1382: eorGE R3, R0, R0, LSR R11
l1383: cmp R0, R7, LSR R9
l1384: orrs R9, R8, R0, ASR #14
l1385: bGE l1391
l1386: add R1, R0, #174
l1387: orrs R10, R7, R1, RRX 
l1388: eorLTs R5, R0, R10
l1389: sub R6, R0, R8, ASR R8
l1390: b l1392
l1391: b l1387
l1392: rscLSs R10, R14, R15, LSR #4
l1393: rsbVSs R14, R1, #1168
l1394: bGE l1400
l1395: cmpLE R11, #3952
l1396: andVCs R0, R10, R0
l1397: rsc R2, R9, R4
l1398: addCSs R8, R2, R8, ASR R6
l1399: mvn R11, #1073741832
l1400: subLS R10, R9, R7
l1401: adcVSs R7, R2, R7, LSR #1
l1402: addMIs R7, R3, R7, LSR #3
l1403: mov R5, #40
l1404: strNE R11, [sp, -R5]
l1405: orrMIs R2, R12, R15, ROR #4
l1406: sbcHIs R6, R7, #1073741837
l1407: bic R14, R7, #38912
l1408: ldr R11, [sp], #-68
l1409: adcGE R4, R11, #8384
l1410: andLT R3, R3, R1
l1411: tstCC R0, #819200
l1412: ands R2, R10, R14, LSR R12
l1413: sbc R6, R3, R3, LSR R1
l1414: adcHI R3, R1, R11, RRX 
l1415: adcGEs R5, R7, R9, ROR R0
l1416: teqHI R3, R11, ASR #0
l1417: teq R1, R1, LSL R5
l1418: orrs R14, R7, #94208
l1419: rsbs R14, R14, R8, ROR R9
l1420: addCSs R10, R11, #-1073741824
l1421: movLEs R14, R0, ROR R12
l1422: subVS R14, R10, R0, LSL R2
l1423: ands R11, R12, R0, ASR #15
l1424: adds R6, R8, R11, LSR #0
l1425: rsbVCs R12, R1, R14, LSL R9
l1426: teqLS R4, R2, ASR #24
l1427: and R14, R10, R7, LSR #7
l1428: orr R14, R10, R6, ROR #7
l1429: eors R11, R11, R12, RRX 
l1430: adds R6, R3, R7
l1431: eorLE R10, R6, R10, LSR R7
l1432: clzHI R14, R10
l1433: subMI R3, R11, R2, ROR R7
l1434: bicPL R12, R0, #811008
l1435: subs R4, R9, R10
l1436: b l1444
l1437: mvnMI R14, R12, LSL R14
l1438: adc R14, R1, #738197505
l1439: bic R11, R1, #2883584
l1440: cmnVS R5, #201326594
l1441: movPL R6, R10, ROR R10
l1442: cmn R1, R6, ASR #28
l1443: orrNEs R14, R0, R1, ASR #6
l1444: rscHI R8, R9, R12
l1445: rscs R0, R1, R8, ROR #5
l1446: sbcGE R10, R10, #-1073741803
l1447: teq R10, R12, ROR #25
l1448: rsbs R4, R5, R10, LSL #16
l1449: orr R0, R10, R15, RRX 
l1450: sbcLS R3, R10, R10, ASR #30
l1451: mov R8, R12, RRX 
l1452: eor R12, R11, R10, ASR #18
l1453: rsb R6, R7, R2, LSL R10
l1454: subVC R11, R4, #104857600
l1455: bEQ l1464
l1456: add R1, R0, #4
l1457: eorVC R9, R12, #1845493760
l1458: teqLE R7, #820
l1459: orrNE R1, R12, R15, ROR #21
l1460: mvns R8, R10, LSR #12
l1461: clz R10, R4
l1462: and R0, R1, R12
l1463: b l1465
l1464: b l1457
l1465: sbcCCs R6, R4, #-1073741811
l1466: sbcs R5, R15, #260096
l1467: rscEQ R10, R1, R2
l1468: str R4, [sp], #+60
l1469: bLS l1474
l1470: add R1, R0, #45
l1471: subs R6, R0, R1, ASR #22
l1472: bic R12, R10, R6
l1473: b l1475
l1474: b l1471
l1475: teqLT R2, R8
l1476: teq R4, R3
l1477: orrGTs R9, R3, R5
l1478: bGT l1483
l1479: add R1, R0, #91
l1480: rscGTs R14, R0, R3
l1481: sub R7, R14, R15, ROR #7
l1482: b l1484
l1483: b l1480
l1484: addVCs R14, R5, R2
l1485: addCSs R6, R3, R7, LSL R3
l1486: adc R2, R0, R8, ASR R6
l1487: adds R4, R10, R12, ROR R12
l1488: orr R10, R10, R3, ROR R1
l1489: rsb R2, R12, R7, ROR #13
l1490: rscPL R12, R7, #624951296
l1491: bCC l1501
l1492: subs R8, R15, R1
l1493: cmpLT R15, R7
l1494: rsb R11, R3, R9, LSR R1
l1495: bicGEs R4, R2, R5, LSR #7
l1496: subEQs R5, R1, R9
l1497: cmnVC R2, #2046820352
l1498: subLT R10, R4, R1, ASR R10
l1499: mov R0, #1280
l1500: eorGEs R0, R6, R1, LSR #17
l1501: eors R11, R5, R0
l1502: andPLs R3, R5, R10
l1503: subLSs R9, R0, R4, ROR R5
l1504: sbcNE R3, R15, #2375680
l1505: bGE l1510
l1506: sbcMIs R8, R10, R7
l1507: cmn R2, R12, LSL #2
l1508: bicNE R0, R4, R3, LSR R14
l1509: movCS R14, R1, ROR R8
l1510: adcEQs R14, R10, R7, LSL #15
l1511: subGEs R14, R7, R14
l1512: mov R10, #8
l1513: str R0, [sp, -R10]
l1514: str R2, [sp, #-24]!
l1515: cmpLT R12, #2080374787
l1516: cmp R4, R1, ASR R10
l1517: cmp R5, #10752
l1518: tst R1, R0, ROR #6
l1519: b l1525
l1520: add R1, R0, #145
l1521: rscLSs R5, R11, R10
l1522: cmpGE R9, R4
l1523: bicCSs R1, R8, R1, ROR #28
l1524: b l1526
l1525: b l1521
l1526: andHIs R3, R8, #244
l1527: bLS l1535
l1528: subHIs R8, R6, R5
l1529: cmnPL R0, R12, LSL #3
l1530: rsc R3, R8, R8, LSL #25
l1531: rsc R9, R0, R4
l1532: subMIs R7, R12, R8
l1533: mvnVCs R0, #1073741835
l1534: movs R11, R3, LSL #14
l1535: orrs R11, R10, R11
l1536: tst R6, R0, RRX 
l1537: mvns R12, #14811136
l1538: adcs R0, R8, R15, LSR #5
l1539: ldr R7, [sp, #-38]!
l1540: bCS l1541
l1541: rsbs R6, R5, R5, LSL #28
l1542: bVC l1546
l1543: adcEQs R2, R0, #158
l1544: rsbVC R2, R14, R3
l1545: teq R0, #-2147483618
l1546: adds R3, R3, #14155776
l1547: adds R9, R8, R6, ROR R7
l1548: teq R12, #-536870908
l1549: movs R12, R2
l1550: orrLEs R7, R15, R6
l1551: eorNEs R10, R10, R14
l1552: tstVC R10, R7, LSR R2
l1553: adcs R2, R14, #645922816
l1554: subEQ R9, R10, R0
l1555: orrNEs R2, R7, R7, ASR #6
l1556: cmpMI R14, R6, LSR #28
l1557: cmpVC R4, R8, LSR R4
l1558: orrHI R7, R9, R5
l1559: eors R12, R6, R14, RRX 
l1560: clz R12, R6
l1561: cmnVC R1, #97517568
l1562: mvns R3, #266338304
l1563: clz R2, R9
l1564: rscGT R1, R5, R9
l1565: ldr R10, [sp, #+71]
l1566: mov R0, #752
l1567: tst R6, R8, ROR R10
l1568: bPL l1573
l1569: add R1, R0, #145
l1570: subs R1, R11, R8
l1571: adcGEs R2, R11, R7
l1572: b l1574
l1573: b l1570
l1574: clz R7, R1
l1575: cmnPL R2, #1610612748
l1576: b l1583
l1577: add R1, R0, #236
l1578: clz R6, R9
l1579: adc R8, R0, R9
l1580: eors R3, R14, R6
l1581: cmpVS R12, R4
l1582: b l1584
l1583: b l1578
l1584: mvnCS R3, R11
l1585: bics R6, R8, #598016
l1586: cmp R7, R4, ASR #7
l1587: subs R11, R1, R3, ASR #23
l1588: adcEQ R8, R8, R10, ROR R14
l1589: tst R2, R7
l1590: ldr R0, [sp, #+13]!
l1591: bic R12, R0, R10, ASR #23
l1592: adc R11, R8, R14, LSL R6
l1593: adc R2, R3, #24576
l1594: b l1597
l1595: rsbs R10, R6, #50944
l1596: cmnVS R8, R9
l1597: clzVS R7, R3
l1598: b l1602
l1599: teq R14, #2424832
l1600: mvn R9, R6, LSR #31
l1601: mvnMI R11, #-2147483609
l1602: cmnGT R14, R5, LSL #17
l1603: mov R0, #34
l1604: ldr R6, [sp], +R0
l1605: mvnGE R0, #58880
l1606: rsbCC R4, R1, R11, ROR R0
l1607: orr R4, R15, R7, RRX 
l1608: subNEs R5, R3, R8, LSL #10
l1609: b l1615
l1610: add R1, R0, #84
l1611: eor R10, R14, R6, ROR #29
l1612: cmp R2, R4, LSR R14
l1613: orrGE R9, R9, R3
l1614: b l1616
l1615: b l1611
l1616: teqPL R6, R3, ASR R12
l1617: rsbHI R12, R11, R11, ASR #16
l1618: and R9, R6, R14, LSL #4
l1619: str R4, [sp, #-45]!
l1620: subLE R1, R6, R10, ASR #21
l1621: cmnEQ R11, R11
l1622: rscVSs R5, R1, #-939524096
l1623: rscs R2, R14, R14, ASR #19
l1624: adcMIs R0, R7, R9, RRX 
l1625: clzVC R10, R11
l1626: orrGTs R12, R15, #10944512
l1627: adc R6, R8, #27000832
l1628: cmp R6, R10, LSR #23
l1629: eor R2, R11, R11, ASR #10
l1630: bVS l1637
l1631: addLT R14, R8, R8
l1632: andLSs R2, R7, R12, LSR #23
l1633: eorHI R6, R6, #976
l1634: rsbGE R5, R8, R12, LSR R5
l1635: mvns R12, R6, LSL #7
l1636: sbcLSs R0, R7, R0
l1637: sub R9, R8, R8
l1638: tstEQ R0, R9
l1639: teqVC R12, R15, ROR #28
l1640: bGT l1645
l1641: mvn R8, #700
l1642: teq R14, R8, LSR R6
l1643: subGTs R3, R2, R7, RRX 
l1644: andGTs R10, R10, #112
l1645: orrNEs R10, R10, R8
l1646: sub R12, R8, #8000
l1647: rsbGEs R2, R7, #4030464
l1648: orrs R3, R10, R3, RRX 
l1649: subMIs R10, R3, R2
l1650: bVS l1655
l1651: add R1, R0, #145
l1652: mov R6, R14
l1653: cmn R3, R7
l1654: b l1656
l1655: b l1652
l1656: addLS R0, R15, R3, ASR #3
l1657: cmn R15, R0
l1658: sbcs R2, R9, R4, ASR R6
l1659: bGE l1664
l1660: add R1, R0, #172
l1661: rscs R9, R8, #901775360
l1662: clzLE R5, R9
l1663: b l1665
l1664: b l1661
l1665: subCCs R4, R11, R12
l1666: str R11, [sp], #+52
l1667: ands R12, R6, #-469762045
l1668: orr R1, R14, R14, LSL R2
l1669: orrCCs R7, R6, R12, ROR R9
l1670: tstGE R12, #256
l1671: mvnEQs R10, R12, LSR #7
l1672: bicPLs R0, R10, R7, RRX 
l1673: mvnMIs R5, R3, ROR R8
l1674: bicVS R0, R0, R11, ASR R4
l1675: rsbs R1, R14, R5
l1676: clzNE R2, R14
l1677: bLT l1679
l1678: clzCC R4, R14
l1679: orrs R3, R7, #838860800
l1680: orrLEs R6, R0, #671088640
l1681: bGE l1689
l1682: bicCC R10, R14, R10, LSL R5
l1683: eorVS R9, R10, R10, LSL R10
l1684: mvn R14, R6, LSR #31
l1685: movHIs R7, R5, ROR R0
l1686: clzGT R10, R3
l1687: teq R9, R0, ROR #20
l1688: subGE R6, R2, #1552
l1689: movs R14, R14
l1690: tstGE R11, R14, RRX 
l1691: mov R12, R0, ASR R11
l1692: rsbMIs R8, R2, R15, ROR #15
l1693: subLTs R1, R6, R3, ROR #30
l1694: bicCC R9, R5, #9024
l1695: clzHI R9, R1
l1696: ands R12, R8, R0, ROR R2
l1697: addEQs R3, R5, #23808
l1698: bicMIs R5, R11, R6, LSR R8
l1699: addMIs R4, R5, R7, LSR R7
l1700: rsbVSs R4, R7, R8
l1701: adcs R2, R14, R2
l1702: ands R0, R0, R0
l1703: mvnMIs R1, R10, LSR R14
l1704: orrs R8, R12, #25600
l1705: b l1709
l1706: add R1, R0, #153
l1707: orrNEs R11, R10, #608
l1708: b l1710
l1709: b l1707
l1710: ldr R14, [sp, #+19]
l1711: orrVS R2, R7, R4, LSL #0
l1712: adds R1, R9, R9, ROR #23
l1713: eorCC R5, R0, R4
l1714: mvnCC R7, #-1207959552
l1715: ands R10, R1, R0, RRX 
l1716: subNEs R0, R9, R3, LSR #20
l1717: tstCC R7, R1, ROR R14
l1718: mov R4, R5
l1719: str R0, [sp, #+12]!
l1720: mvnLE R9, R0, ASR #23
l1721: tstCS R11, R9
l1722: cmp R2, R15
l1723: clz R6, R6
l1724: str R1, [sp], #-60
l1725: eor R2, R2, R10, ROR #5
l1726: b l1727
l1727: mov R2, R8
l1728: bLE l1734
l1729: cmp R0, R15, ROR #6
l1730: subGEs R12, R6, #16
l1731: rsbHIs R10, R15, #25600
l1732: bic R9, R0, R6, LSL #26
l1733: eors R12, R12, R10, ROR R9
l1734: andEQ R2, R3, R8, LSL R10
l1735: bCC l1740
l1736: add R1, R0, #100
l1737: movs R3, #2768896
l1738: subs R12, R12, R10
l1739: b l1741
l1740: b l1737
l1741: cmpVC R6, R0, RRX 
l1742: teq R14, #589824
l1743: orrs R5, R4, #220
l1744: tst R15, #-285212672
l1745: bicCCs R4, R5, R9, ROR #30
l1746: rscLS R9, R15, R2, RRX 
l1747: cmp R2, R12
l1748: adc R4, R5, #1835008
l1749: subGE R5, R3, R5, LSR R2
l1750: cmpGT R11, R5
l1751: orrPL R14, R6, R12, LSR #31
l1752: cmp R0, #184320
l1753: bicNE R6, R4, R6, RRX 
l1754: sub R10, R12, R9
l1755: bGE l1761
l1756: addPL R11, R12, R5, LSL #14
l1757: subEQs R14, R5, R7, ROR #28
l1758: teq R11, R4
l1759: andMIs R6, R0, R4, ROR #6
l1760: orr R11, R3, R14, LSL #3
l1761: cmpVC R14, R14, ASR #5
l1762: rsbLT R10, R11, #21504
l1763: adcMIs R9, R15, R11, LSR #26
l1764: cmp R15, R3, ROR #27
l1765: orrLTs R10, R8, #12800
l1766: addCC R6, R9, R10, ASR #30
l1767: bCS l1770
l1768: teq R11, #51904512
l1769: rscVC R2, R5, R2, ROR #5
l1770: mov R1, R15, ROR #25
l1771: bEQ l1780
l1772: eorHIs R6, R8, R2, LSR #30
l1773: cmnPL R10, #1073741842
l1774: subs R7, R6, #1232
l1775: sbcs R0, R5, R1, RRX 
l1776: addPLs R5, R0, R11
l1777: subNEs R5, R11, R11
l1778: sbc R3, R8, #-570425344
l1779: mvns R0, R10
l1780: cmpEQ R10, R3
l1781: subNEs R4, R8, R3
l1782: rsb R9, R4, R8
l1783: eorVCs R9, R1, R0, ASR #11
l1784: cmn R8, R8, ROR R1
l1785: mov R11, #64
l1786: ldr R12, [sp, +R11]!
l1787: adds R1, R15, R14, ROR #16
l1788: bEQ l1794
l1789: add R1, R0, #111
l1790: add R1, R6, R4, LSL R14
l1791: eor R4, R8, R9, ASR R8
l1792: cmnLT R14, R6
l1793: b l1795
l1794: b l1790
l1795: cmn R12, R3, RRX 
l1796: bic R0, R0, #13369344
l1797: tst R7, #1073741850
l1798: eors R6, R8, R7
l1799: movCSs R2, R6, RRX 
l1800: bEQ l1806
l1801: rsbs R9, R15, R15, RRX 
l1802: cmpVS R3, R0
l1803: adc R14, R12, R14
l1804: bicCC R3, R7, R3, RRX 
l1805: sbc R5, R6, R8
l1806: adcVCs R6, R1, R11, RRX 
l1807: sbcs R3, R11, R7, RRX 
l1808: rsbPL R2, R2, R14, ASR R3
l1809: clzGE R12, R0
l1810: tst R8, R12, ASR #21
l1811: and R8, R15, R12, RRX 
l1812: bicCSs R9, R3, #5963776
l1813: bGE l1820
l1814: teqHI R8, R5, ROR #12
l1815: rsbLE R14, R5, R15, LSL #27
l1816: eor R2, R3, R6
l1817: eorVSs R4, R6, R4
l1818: tstEQ R3, #427819008
l1819: movs R7, #45056
l1820: sub R12, R5, R10, ASR #14
l1821: cmnVC R4, R5, RRX 
l1822: sub R4, R6, R8, ASR #31
l1823: cmp R1, #30208
l1824: add R6, R11, R9, ASR #9
l1825: orrLSs R3, R1, #35127296
l1826: bicEQs R10, R11, R2
l1827: bCS l1835
l1828: add R1, R0, #142
l1829: clzLS R5, R2
l1830: andLE R10, R9, #900
l1831: teqNE R10, #-1778384896
l1832: adc R2, R4, R7, ASR R7
l1833: mvn R10, R1
l1834: b l1836
l1835: b l1829
l1836: cmnPL R11, #99614720
l1837: b l1846
l1838: add R1, R0, #102
l1839: eors R14, R3, #13565952
l1840: rsbs R8, R15, R3, LSL #7
l1841: ands R11, R8, R12, ASR #28
l1842: orrGT R8, R6, R6
l1843: cmp R6, R0, ROR #14
l1844: cmpLS R12, #311296
l1845: b l1847
l1846: b l1839
l1847: orr R14, R7, R15
l1848: mov R14, #8
l1849: ldr R7, [sp, -R14]
l1850: orrs R8, R8, #154
l1851: b l1859
l1852: add R1, R0, #195
l1853: orrLEs R4, R14, R3, ASR R4
l1854: teqEQ R10, #335544323
l1855: orr R10, R15, #-268435455
l1856: orrs R11, R6, R6, ROR R3
l1857: rsbs R2, R7, R11, LSR #14
l1858: b l1860
l1859: b l1853
l1860: sbcMI R7, R15, R0
l1861: rscGT R6, R10, R6, RRX 
l1862: ands R4, R5, #553648128
l1863: bVC l1868
l1864: rscs R10, R8, R3, ROR R6
l1865: cmn R0, #32512
l1866: rscHI R2, R6, R14, RRX 
l1867: mvnGTs R3, #671744
l1868: subCSs R12, R14, #20971520
l1869: subCS R6, R7, R4, LSR R9
l1870: add R2, R0, #-536870901
l1871: mov R4, #40
l1872: strLS R0, [sp, -R4]
l1873: ldr R12, [sp], #+2
l1874: cmn R10, R14
l1875: teq R6, R9
l1876: cmn R8, R14, LSL R1
l1877: teqCC R5, R15, LSR #31
l1878: b l1884
l1879: add R1, R0, #221
l1880: subCS R8, R5, R8
l1881: clzLE R12, R1
l1882: clz R12, R5
l1883: b l1885
l1884: b l1880
l1885: b l1889
l1886: add R1, R0, #59
l1887: movCSs R2, R3, ASR R10
l1888: b l1890
l1889: b l1887
l1890: andLSs R6, R10, R11, RRX 
l1891: subGT R4, R1, R10, ROR R11
l1892: orrLT R9, R0, R4, LSR R0
l1893: andVC R9, R7, R7
l1894: adcLEs R11, R0, R0
l1895: orrLSs R12, R4, R5, LSL R6
l1896: rscGE R5, R9, R5, ROR #3
l1897: adcHI R0, R7, #-1342177277
l1898: cmn R14, R5, LSR R14
l1899: sbcs R14, R9, R6, RRX 
l1900: movPLs R0, R2
l1901: andCC R1, R10, R14, LSL R0
l1902: sbc R12, R7, R15, ROR #2
l1903: sbcs R6, R2, #624
l1904: sbcLEs R1, R6, R6, RRX 
l1905: mov R6, R2, LSR #3
l1906: andLEs R6, R10, R1
l1907: mvnEQs R14, R3, LSL R7
l1908: teqEQ R12, #983040
l1909: mov R14, #66
l1910: str R8, [sp], -R14
l1911: adc R11, R2, R12
l1912: clz R8, R7
l1913: mov R2, R7
l1914: teq R5, R1, RRX 
l1915: rsbHI R1, R12, R10, ROR #12
l1916: orrVCs R9, R15, R3
l1917: rsc R1, R14, R12
l1918: orrPLs R8, R12, #876
l1919: mov R3, #56
l1920: str R1, [sp, +R3]!
l1921: cmpLS R8, R0, LSR #16
l1922: orrLTs R12, R6, R7
l1923: bGE l1931
l1924: add R1, R0, #3
l1925: orrs R4, R3, R9
l1926: clzCS R2, R14
l1927: clzHI R2, R14
l1928: mvnLT R5, #-1073741806
l1929: cmpLT R5, R8, LSR R6
l1930: b l1932
l1931: b l1925
l1932: bHI l1938
l1933: add R1, R0, #84
l1934: teqMI R4, R7
l1935: addEQ R2, R6, R1, LSR #17
l1936: mvn R2, R0
l1937: b l1939
l1938: b l1934
l1939: sbcEQs R4, R1, R2, LSR #13
l1940: movCS R4, R6, LSL #30
l1941: sbcGEs R12, R4, #5242880
l1942: cmpEQ R4, R3, ROR R6
l1943: mov R6, R9, RRX 
l1944: bic R9, R10, R14
l1945: teqGE R12, R12, LSR #4
l1946: bVS l1950
l1947: cmnNE R6, R14, ROR R12
l1948: subMIs R6, R5, R8
l1949: cmnEQ R7, R0, ROR R14
l1950: mvnGEs R3, #4
l1951: mov R12, #60
l1952: str R1, [sp, -R12]
l1953: teq R3, #488
l1954: bPL l1961
l1955: add R1, R0, #40
l1956: rsbCSs R2, R6, #40632320
l1957: teq R11, R10, RRX 
l1958: bic R11, R9, #258998272
l1959: add R8, R9, R8, ROR R3
l1960: b l1962
l1961: b l1956
l1962: orrHI R10, R4, R11, ASR R2
l1963: bVC l1971
l1964: add R1, R0, #142
l1965: clz R14, R4
l1966: adc R6, R14, R0
l1967: bicCCs R3, R4, #1879048192
l1968: subs R10, R7, R5, ASR #16
l1969: subLTs R12, R10, R2
l1970: b l1972
l1971: b l1965
l1972: subs R2, R14, R8, ROR #30
l1973: rsbCS R0, R15, R15
l1974: subLTs R0, R7, R14
l1975: addHI R4, R6, R2, LSR R2
l1976: mov R10, #47
l1977: ldr R3, [sp], -R10
l1978: sbcMI R6, R4, R6, LSL R10
l1979: eor R10, R11, R0, RRX 
l1980: eorCS R4, R9, R5, ROR R11
l1981: subMIs R7, R10, R11, ASR R12
l1982: andLT R8, R11, R1, LSR R4
l1983: mov R1, #1073741830
l1984: cmpCC R3, #9961472
l1985: mvnGE R3, R2, LSR R7
l1986: b l1992
l1987: add R1, R0, #209
l1988: bicMI R7, R1, R3
l1989: rsbNEs R4, R11, R3, ASR #27
l1990: adds R14, R12, R5, ASR R7
l1991: b l1993
l1992: b l1988
l1993: teqNE R10, R10, RRX 
l1994: bPL l2004
l1995: eorVS R0, R11, R2, RRX 
l1996: movs R9, R0
l1997: andPL R4, R4, #17664
l1998: ands R12, R15, #52
l1999: cmpGE R14, #360710144
l2000: subGE R14, R9, R1
l2001: orrMI R3, R14, R7
l2002: mvnMI R11, R2, ASR #7
l2003: rsbCSs R6, R14, R10
l2004: subMI R9, R5, R5
l2005: mov R2, #49
l2006: ldr R7, [sp], +R2
l2007: cmn R5, #-1610612735
l2008: tstMI R14, R2, ROR R4
l2009: sub R5, R14, R0, LSR R8
l2010: adcNE R12, R4, R7, ROR R5
l2011: cmnMI R0, R6, RRX 
l2012: tst R0, R11, ASR R4
l2013: rsb R11, R12, R9
l2014: orr R8, R10, R8
l2015: eors R1, R11, R6
l2016: clz R12, R1
l2017: rsc R12, R7, R4, LSR R8
l2018: eor R8, R5, #864
l2019: tst R5, R5
l2020: sub R2, R14, R15, LSR #19
l2021: cmnLT R15, R10, RRX 
l2022: mov R7, R9, RRX 
l2023: teqMI R4, R4, ASR R7
l2024: movHI R10, #964689920
l2025: and R5, R6, R7, LSR #21
l2026: eorPLs R12, R1, R4, LSL #29
l2027: cmpEQ R0, R3, ROR #9
l2028: addVCs R1, R15, R4
l2029: rsb R3, R0, #2277376
l2030: b l2035
l2031: subMIs R9, R11, R0, ROR #20
l2032: subEQ R8, R4, #79
l2033: add R7, R0, R15, ROR #20
l2034: sbcVS R11, R9, R1
l2035: cmpVS R11, R1, RRX 
l2036: sub R9, R15, #1073741826
l2037: orrs R2, R5, R10, LSL R2
l2038: andHI R7, R9, R1, RRX 
l2039: eorLE R12, R15, R6, ASR #2
l2040: bEQ l2045
l2041: add R1, R0, #102
l2042: teqLT R11, R11, LSL R7
l2043: andLE R14, R7, R5
l2044: b l2046
l2045: b l2042
l2046: str R10, [sp, #-30]!
l2047: rscNE R12, R15, #10682368
l2048: sbcs R4, R11, R6, LSL R6
l2049: movLTs R12, R6, LSR R6
l2050: andLTs R3, R6, R9, ASR #26
l2051: rsbs R3, R1, #128
l2052: addNE R3, R11, #55808
l2053: cmp R1, R2, ASR #21
l2054: sbcVS R5, R2, #20447232
l2055: b l2060
l2056: clz R6, R10
l2057: andCC R6, R1, R3, ROR #11
l2058: tstVC R14, #26
l2059: movs R4, R1
l2060: andVCs R2, R9, R0, LSR #18
l2061: bCC l2066
l2062: sub R2, R7, R1, ASR #1
l2063: rsbs R9, R8, R6, ASR #22
l2064: addLS R1, R15, #5767168
l2065: rsb R12, R8, R8, LSL #8
l2066: rsb R14, R12, R14, ROR R2
l2067: mov R5, #20
l2068: str R7, [sp, -R5]!
l2069: cmnVS R0, R0, LSR R8
l2070: andCSs R9, R2, R14, LSL #6
l2071: bLS l2072
l2072: movMIs R10, R2, ROR R2
l2073: adcs R11, R12, #402653184
l2074: bEQ l2078
l2075: teq R11, R6
l2076: addGEs R3, R8, R3, LSR R7
l2077: cmn R14, R6, ASR #12
l2078: rsc R10, R1, #248832
l2079: ands R5, R8, #12
l2080: b l2086
l2081: add R1, R0, #8
l2082: cmnVS R11, #-201326592
l2083: eors R8, R7, R8
l2084: sbcs R3, R7, #103809024
l2085: b l2087
l2086: b l2082
l2087: subs R12, R10, #1168
l2088: tst R0, #76546048
l2089: bLE l2095
l2090: add R1, R0, #24
l2091: eorGEs R12, R14, #663552
l2092: mvn R12, #68608
l2093: addVSs R7, R5, R2, ROR R2
l2094: b l2096
l2095: b l2091
l2096: orrs R11, R14, R8, LSL #26
l2097: movs R11, R8, ASR #21
l2098: cmpCS R2, #339738624
l2099: cmpNE R9, R0, RRX 
l2100: bicCSs R12, R10, R8, ASR #9
l2101: tst R10, R4
l2102: cmn R10, R5, LSL R11
l2103: orr R1, R0, R0, ASR R11
l2104: sbcs R10, R14, R0, LSR #0
l2105: cmp R10, #11206656
l2106: mov R14, #28
l2107: str R12, [sp, +R14]
l2108: cmn R12, R1, ROR #22
l2109: bNE l2117
l2110: add R1, R0, #228
l2111: adcPLs R10, R3, R9, ASR #31
l2112: tst R8, R0
l2113: adcLSs R6, R7, R8, LSL R1
l2114: rscCS R0, R4, R3, LSL #1
l2115: cmpCC R11, #830472192
l2116: b l2118
l2117: b l2111
l2118: tstLT R5, R14, LSR #29
l2119: tstEQ R2, R2
l2120: mvnCCs R6, #1004
l2121: eorCCs R14, R11, #197632
l2122: str R2, [sp, #-4]!
l2123: eor R4, R4, R8
l2124: sbc R9, R15, R0, ASR #13
l2125: cmnGT R5, R12, LSL R1
l2126: bCS l2130
l2127: orrHI R7, R8, R5, LSR R9
l2128: tstVS R11, #5505024
l2129: rscLEs R6, R6, #171008
l2130: subLS R12, R8, R0, RRX 
l2131: subs R10, R9, R8
l2132: eors R6, R0, R12, ROR #17
l2133: sbcCCs R10, R10, R3, ROR #7
l2134: bMI l2137
l2135: clz R10, R6
l2136: orrs R8, R9, #-2147483593
l2137: subs R6, R9, R3, LSL R5
l2138: adc R10, R6, R6, RRX 
l2139: eor R2, R7, #-1073741773
l2140: andLS R6, R14, R6, LSL R14
l2141: orr R1, R2, R2, RRX 
l2142: bLE l2146
l2143: orrCSs R5, R2, R6, LSL R11
l2144: clz R9, R8
l2145: bics R14, R1, R10
l2146: sub R3, R0, R3, RRX 
l2147: ldr R7, [sp, #+51]
l2148: bNE l2155
l2149: add R1, R0, #49
l2150: movCS R2, R3
l2151: addEQ R3, R10, R5, ROR #3
l2152: subPLs R6, R11, R6
l2153: rsbCS R8, R4, #57856
l2154: b l2156
l2155: b l2150
l2156: bic R14, R1, #120586240
l2157: cmpPL R1, #872415235
l2158: bHI l2165
l2159: orrVC R14, R10, R3
l2160: sbcMIs R8, R10, R12, ROR R11
l2161: bicNEs R14, R14, R2, RRX 
l2162: addNEs R12, R8, #2400
l2163: cmpLT R14, R14, ROR #8
l2164: subs R7, R6, #35840
l2165: orrs R12, R2, #1441792
l2166: sbcGE R5, R4, R7, RRX 
l2167: subGE R3, R15, R15, LSR #6
l2168: adcVCs R9, R7, R0, LSR #9
l2169: eorHIs R7, R11, R14, RRX 
l2170: tstHI R7, #-2147483637
l2171: adcLEs R7, R1, R15
l2172: clzGT R5, R3
l2173: b l2180
l2174: add R1, R0, #26
l2175: mvnLSs R0, R11
l2176: mvn R1, R10, LSR R12
l2177: clz R3, R14
l2178: movCS R8, R7, RRX 
l2179: b l2181
l2180: b l2175
l2181: subMIs R11, R6, R10, RRX 
l2182: orrNEs R6, R2, R0, RRX 
l2183: tst R15, R11
l2184: subVCs R2, R10, R1
l2185: subs R0, R8, R3
l2186: subGE R4, R7, #26738688
l2187: mvnCS R2, R6, RRX 
l2188: mvns R1, R0, ROR #6
l2189: teqPL R1, R1, RRX 
l2190: bLS l2194
l2191: add R1, R0, #7
l2192: adcs R14, R8, R6
l2193: b l2195
l2194: b l2192
l2195: subCCs R3, R9, R3, ASR R1
l2196: mov R9, R4, ROR #17
l2197: orrCSs R3, R10, #14942208
l2198: orrLSs R12, R12, #3604480
l2199: b l2202
l2200: subVC R12, R8, R0, LSR #27
l2201: adcGEs R6, R1, R0
l2202: adds R4, R3, R10, ASR R7
l2203: mvnLT R12, R11, ASR #14
l2204: rsbCS R5, R15, R7
l2205: tst R9, R9, ASR #16
l2206: subEQs R0, R3, R2, LSL R6
l2207: eorLE R4, R8, #737280
l2208: rscNE R1, R14, R5, ROR R0
l2209: bVC l2218
l2210: rscGEs R14, R6, R8
l2211: mvnLTs R5, #51380224
l2212: cmnPL R15, R1
l2213: add R4, R9, R14
l2214: orrs R9, R2, R14
l2215: movCSs R7, R11, LSL R14
l2216: rsc R11, R7, #16515072
l2217: rscLS R7, R15, R12
l2218: tstVC R0, R15, LSR #13
l2219: clzLS R3, R6
l2220: sbcLEs R11, R9, #-1073741807
l2221: b l2229
l2222: eorVS R6, R9, #2832
l2223: bicGE R5, R4, R6
l2224: sub R14, R1, R10
l2225: cmnEQ R11, #-1073741778
l2226: orrs R8, R12, R0, LSL #10
l2227: subMIs R11, R4, R11, ASR #20
l2228: cmn R8, #5963776
l2229: add R4, R11, R7
l2230: bLT l2235
l2231: add R11, R3, R1
l2232: teqNE R3, R7, LSL R7
l2233: mvns R1, R6, RRX 
l2234: clz R4, R4
l2235: sbcs R10, R9, R15, ROR #21
l2236: bLE l2238
l2237: teqHI R11, R10, LSL R14
l2238: sbcMI R5, R15, #2490368
l2239: andEQ R7, R0, #-1912602624
l2240: tst R7, R5
l2241: subVCs R4, R11, #770048
l2242: teq R15, #-268435445
l2243: orrCCs R9, R5, #1795162112
l2244: bEQ l2253
l2245: add R1, R0, #229
l2246: clz R11, R5
l2247: subLSs R9, R4, R4, LSL #13
l2248: cmpPL R10, R5, LSR R11
l2249: cmpCC R0, #3584
l2250: mvnCS R11, R1, ROR #27
l2251: clzNE R14, R5
l2252: b l2254
l2253: b l2246
l2254: cmpLT R3, R10, LSR #27
l2255: clz R1, R2
l2256: movPL R14, R1, RRX 
l2257: clzHI R11, R6
l2258: cmnEQ R0, #5440
l2259: bCC l2268
l2260: add R1, R0, #207
l2261: mvnLT R6, R1, ASR R7
l2262: sbc R9, R0, #7616
l2263: sbcMI R6, R9, R8
l2264: andGE R0, R9, R2, ASR R2
l2265: bicCCs R4, R2, #3194880
l2266: cmpLT R0, R4
l2267: b l2269
l2268: b l2261
l2269: subVS R3, R15, #1073741824
l2270: bVC l2274
l2271: add R1, R0, #47
l2272: teq R2, R3, LSR #5
l2273: b l2275
l2274: b l2272
l2275: clz R10, R1
l2276: sub R10, R12, R10, ASR R7
l2277: mov R14, #8
l2278: str R10, [sp], +R14
l2279: mov R4, R0
l2280: clz R5, R8
l2281: bGE l2282
l2282: sub R6, R1, R15, RRX 
l2283: orrs R7, R4, #-1342177278
l2284: bGT l2285
l2285: cmn R5, #135
l2286: rsbs R6, R1, R3, ASR R11
l2287: andLS R4, R6, R1, LSL #18
l2288: ands R6, R2, R10, LSR R11
l2289: cmnLE R3, R11, ROR R11
l2290: cmpLT R11, R7
l2291: eors R1, R9, #-536870897
l2292: bPL l2293
l2293: bics R5, R12, R15, RRX 
l2294: bicHIs R6, R3, R15
l2295: mvnGTs R8, #1904
l2296: and R4, R5, R9
l2297: mvns R4, R10, RRX 
l2298: adcPLs R8, R12, R14, LSL #4
l2299: andNE R9, R0, R8, RRX 
l2300: strCS R3, [sp, #+48]
l2301: b l2308
l2302: add R1, R0, #204
l2303: orrLT R5, R14, #28
l2304: tstNE R1, #39424
l2305: mvnEQ R12, #4864
l2306: subs R0, R5, R14, ROR #19
l2307: b l2309
l2308: b l2303
l2309: bMI l2319
l2310: bicHIs R10, R6, R4, RRX 
l2311: tst R4, #4608
l2312: addHI R3, R2, #589824
l2313: cmpHI R3, R3, LSR R0
l2314: eor R0, R5, R0, ROR R9
l2315: cmnNE R14, R8, LSR R1
l2316: rsbHIs R5, R0, R6, ASR R0
l2317: cmnLS R11, #2304
l2318: sub R7, R8, R3, ASR #26
l2319: rscLSs R7, R6, #67108864
l2320: mvns R1, R8, LSR #1
l2321: adcCS R10, R9, #14784
l2322: rscHIs R14, R11, #94208
l2323: adcLS R14, R5, #72
l2324: tstNE R6, #34304
l2325: bicCC R11, R3, R1, ROR #17
l2326: addMI R12, R1, R6, LSL R5
l2327: adcEQs R7, R15, R15
l2328: addHI R12, R4, #32505856
l2329: mov R8, R14, RRX 
l2330: cmpHI R1, R10, LSL R9
l2331: subLSs R7, R14, #11520
l2332: cmn R3, R6
l2333: tstHI R2, #61603840
l2334: subVSs R10, R9, R3, LSR R0
l2335: cmpLE R14, R11, LSR #20
l2336: bEQ l2343
l2337: andCCs R6, R5, R1
l2338: sbcGTs R12, R3, R7, LSL #13
l2339: sub R1, R7, R5, ROR #25
l2340: andPLs R6, R14, #-1342177278
l2341: movNEs R8, R11
l2342: adds R4, R6, R8, LSR R0
l2343: orrHIs R10, R0, R1, ROR #22
l2344: cmp R9, R6, LSL #0
l2345: ands R10, R2, R2, ASR R12
l2346: b l2352
l2347: add R1, R0, #60
l2348: clz R7, R3
l2349: sbc R4, R7, R10, RRX 
l2350: tstPL R8, R5, RRX 
l2351: b l2353
l2352: b l2348
l2353: bic R6, R4, #888
l2354: b l2362
l2355: add R1, R0, #234
l2356: subGTs R10, R2, R7, ROR #18
l2357: tstLE R12, R7, RRX 
l2358: eorGT R4, R3, #233
l2359: rsb R3, R6, R2
l2360: tstLE R10, R10, RRX 
l2361: b l2363
l2362: b l2356
l2363: cmpHI R0, #2785280
l2364: orrGTs R14, R0, #2637824
l2365: movNEs R11, #-1258291200
l2366: sub R7, R7, #128
l2367: cmpGT R15, R1, ASR #1
l2368: cmp R3, #27262976
l2369: rscs R5, R0, R2
l2370: mov R12, #40
l2371: ldr R8, [sp], +R12
l2372: b l2380
l2373: add R1, R0, #45
l2374: tst R6, R6
l2375: adcLTs R4, R8, R15, LSR #25
l2376: subs R3, R7, #364
l2377: sbc R9, R2, R7
l2378: eor R8, R1, R6, LSR #7
l2379: b l2381
l2380: b l2374
l2381: sub R14, R12, R10
l2382: clz R12, R12
l2383: rsbVSs R12, R12, R1, ROR #19
l2384: bVS l2391
l2385: cmpNE R8, R5, RRX 
l2386: rscLSs R8, R3, #504
l2387: subs R0, R3, #1584
l2388: tst R9, R15
l2389: addCCs R4, R14, R12, ASR #12
l2390: clz R12, R12
l2391: bics R14, R9, R10
l2392: sbcMI R5, R0, #90
l2393: subEQ R14, R11, R1
l2394: mvnLSs R6, R1, LSL R1
l2395: bNE l2402
l2396: add R1, R0, #123
l2397: sub R12, R11, R10
l2398: rsb R3, R6, #0
l2399: sub R5, R14, #9728
l2400: clz R11, R1
l2401: b l2403
l2402: b l2397
l2403: eorNEs R8, R3, #39059456
l2404: movVCs R10, #232783872
l2405: adc R3, R1, R12, RRX 
l2406: rsbGT R4, R7, R5, RRX 
l2407: teqLT R2, R14, LSL #25
l2408: mov R7, #47
l2409: ldr R11, [sp, -R7]!
l2410: bicLSs R6, R15, R3, ASR #6
l2411: orrVC R0, R2, R8, ASR R14
l2412: addGEs R0, R12, R7, LSR #27
l2413: sbcCCs R8, R5, R7, ASR R2
l2414: eor R10, R1, R9
l2415: teq R3, #671088640
l2416: b l2421
l2417: add R1, R0, #127
l2418: sbcEQ R8, R9, R4
l2419: sbcLE R10, R5, R7, RRX 
l2420: b l2422
l2421: b l2418
l2422: clzLE R14, R1
l2423: bicPL R3, R0, R15, ROR #24
l2424: teq R3, R2
l2425: b l2430
l2426: add R1, R0, #219
l2427: orrLT R1, R5, R12, ASR R4
l2428: adcNE R8, R7, R7, ASR R2
l2429: b l2431
l2430: b l2427
l2431: andVSs R6, R6, R2
l2432: bicLS R9, R9, R1, ASR #31
l2433: teq R4, R8, LSR #8
l2434: tst R5, #973078528
l2435: mov R6, #9
l2436: str R7, [sp, -R6]!
l2437: teqVC R10, R1, LSL #7
l2438: orr R11, R15, R8
l2439: eorPL R2, R14, R1, ASR R1
l2440: mov R6, #40
l2441: str R12, [sp, +R6]
l2442: str R12, [sp, #-4]!
l2443: tstHI R1, R12
l2444: bicVC R3, R2, R4, RRX 
l2445: bicHIs R6, R8, R10, LSR R0
l2446: bLE l2455
l2447: add R1, R0, #104
l2448: orrVCs R1, R15, R8, LSL #20
l2449: bicLT R7, R9, #73
l2450: subs R7, R2, R14, RRX 
l2451: rsb R6, R15, #-805306365
l2452: rsbGE R12, R9, R0, ROR R14
l2453: sbcGE R5, R14, R6, ASR R5
l2454: b l2456
l2455: b l2448
l2456: orr R9, R11, #578813952
l2457: ldr R11, [sp], #+46
l2458: rscs R14, R15, #-1409286143
l2459: eorVC R12, R10, R8, ROR R12
l2460: adcs R4, R15, #10
l2461: subGT R3, R0, R4
l2462: movLT R12, R15
l2463: ands R3, R10, #6
l2464: orrs R5, R7, R2, LSL #26
l2465: bPL l2469
l2466: add R1, R0, #141
l2467: adcLTs R0, R12, R2, LSL R2
l2468: b l2470
l2469: b l2467
l2470: ands R2, R6, R3, ROR R0
l2471: b l2480
l2472: clz R14, R10
l2473: movHIs R11, #160
l2474: orrLSs R0, R14, R8, LSL R9
l2475: sbcs R8, R4, R15, ROR #5
l2476: adcs R4, R5, R6, RRX 
l2477: subs R0, R15, R5, ASR #6
l2478: cmp R9, R14, ROR R11
l2479: sub R1, R2, R8, LSL R7
l2480: tstLT R3, R8, ASR #18
l2481: andLSs R10, R3, R4, RRX 
l2482: adcGEs R10, R11, R5, LSR R8
l2483: rsb R2, R0, R14, LSR #25
l2484: andCC R7, R6, #1073741828
l2485: sbc R1, R5, R5, ASR R1
l2486: bics R11, R6, #603979776
l2487: mov R0, #7
l2488: ldr R3, [sp, +R0]
l2489: teq R6, R9, LSL R14
l2490: ldr R10, [sp], #-27
l2491: ands R11, R8, R4
l2492: orrHIs R10, R4, R4
l2493: subs R3, R9, #204800
l2494: orrVC R5, R4, R11, ASR R5
l2495: clzCS R12, R8
l2496: tst R4, R12
l2497: sbcLS R3, R6, R3, ROR #1
l2498: mvn R8, R5
l2499: bLS l2502
l2500: cmp R8, R11, ROR #20
l2501: cmp R5, R15, LSL #16
l2502: cmnCC R2, R3, ASR #1
l2503: mov R10, #22
l2504: ldr R3, [sp, +R10]!
l2505: str R0, [sp, #+19]!
l2506: mov R5, R1, LSL R14
l2507: bics R7, R12, R14
l2508: clzCS R0, R1
l2509: adcPLs R2, R6, R2, RRX 
l2510: cmpPL R10, R15, RRX 
l2511: bics R10, R6, R6
l2512: mov R6, #9
l2513: ldr R2, [sp, -R6]!
l2514: sbcCS R0, R2, R1, ROR R3
l2515: tst R9, R1, LSR #10
l2516: clz R4, R7
l2517: orrVC R3, R5, #-771751936
l2518: cmp R14, R7, RRX 
l2519: eorVSs R3, R2, R7, LSR R6
l2520: rscs R1, R11, R4, ASR R3
l2521: rscVC R14, R9, R7, RRX 
l2522: rsbPLs R9, R10, #-1023410176
l2523: sbcLSs R0, R12, R0, LSR R9
l2524: cmp R12, R4
l2525: adcEQs R4, R3, R5, LSR #22
l2526: subLS R5, R9, R3, LSR R14
l2527: sub R2, R4, #331776
l2528: eorVC R3, R2, R10, LSL R6
l2529: rscs R6, R5, R12, LSR #8
l2530: rsb R6, R2, R9
l2531: andLT R1, R9, R2, ASR R11
l2532: subVSs R11, R12, #720896
l2533: rsb R4, R14, R10, ASR #7
l2534: andVC R9, R5, R14, LSL #17
l2535: subs R9, R11, R5, LSL #16
l2536: bic R4, R1, R3, LSL #2
l2537: mvnLSs R11, R9
l2538: b l2546
l2539: add R1, R0, #208
l2540: bics R6, R15, #1952
l2541: clz R3, R6
l2542: adds R2, R0, R14, ROR #10
l2543: clz R0, R9
l2544: rsb R11, R8, R2, RRX 
l2545: b l2547
l2546: b l2540
l2547: and R3, R5, R15
l2548: cmn R6, R0, ROR R12
l2549: and R9, R1, R4, RRX 
l2550: sbcGT R7, R3, #603979776
l2551: cmn R11, R7, ASR #12
l2552: tstLT R0, R12, ASR #1
l2553: mvnLTs R11, #150994944
l2554: clzNE R5, R6
l2555: addMIs R6, R15, R7
l2556: subEQs R3, R2, R10, ASR #24
l2557: sbcLSs R6, R2, R9
l2558: addLTs R9, R6, R0, LSR #4
l2559: subGTs R14, R15, #1802240
l2560: teq R10, #31
l2561: andGT R10, R10, R1, LSL R0
l2562: add R8, R14, R10
l2563: cmpHI R14, R9, LSL #21
l2564: andVC R3, R0, R5
l2565: ldr R1, [sp, #-46]!
l2566: mvns R12, R2, ROR #1
l2567: b l2576
l2568: add R1, R0, #29
l2569: subLS R11, R7, R8
l2570: eorVSs R9, R10, R14
l2571: orrLE R1, R2, #236
l2572: cmn R15, R6, LSL #17
l2573: teq R14, R7, ASR R3
l2574: rsc R9, R12, R12, LSL R5
l2575: b l2577
l2576: b l2569
l2577: sbcMI R8, R0, R2
l2578: sbcs R8, R5, R8
l2579: andVC R1, R6, R9, ROR #28
l2580: rsb R1, R3, R5
l2581: bics R8, R10, #178
l2582: addEQ R12, R6, R2
l2583: eorLEs R12, R8, R5, ROR R7
l2584: subs R14, R7, R7, ROR #10
l2585: bic R3, R3, R0
l2586: mvnCS R0, #520192
l2587: b l2597
l2588: bicLSs R0, R15, R12, RRX 
l2589: orrs R5, R8, R8, LSL R2
l2590: rsb R12, R1, R14, LSL #2
l2591: clzEQ R4, R14
l2592: clzCS R12, R1
l2593: orr R2, R6, R5, ROR #2
l2594: bics R6, R0, R8, LSL R11
l2595: tstCS R5, R9
l2596: subMI R9, R3, R3, LSL R7
l2597: clz R4, R7
l2598: bVC l2605
l2599: sub R6, R9, #83886080
l2600: rsbHI R0, R5, #512
l2601: adds R0, R2, #3145728
l2602: subGEs R0, R8, R2, LSL #15
l2603: movVC R6, R6, ASR #30
l2604: clzLE R1, R10
l2605: orrs R3, R3, #4784128
l2606: sbc R14, R6, #10752
l2607: bNE l2617
l2608: cmpHI R2, R14, RRX 
l2609: subCCs R11, R14, #40
l2610: eorPL R6, R12, R3
l2611: teq R7, R10
l2612: sbcLEs R4, R15, R2
l2613: add R7, R10, R5, LSL R4
l2614: rscs R9, R14, R9, LSL R3
l2615: adds R1, R0, #1342177281
l2616: clz R3, R2
l2617: adds R12, R1, R7, RRX 
l2618: sbc R14, R5, #49545216
l2619: eorGT R11, R5, R6
l2620: subs R7, R10, R6, ASR R8
l2621: orrLTs R10, R12, R10, LSR #28
l2622: teq R10, R0
l2623: rsb R14, R1, R4
l2624: eors R14, R9, R15
l2625: rscCSs R4, R11, R1
l2626: and R7, R1, R4
l2627: ldrNE R12, [sp, #+43]
l2628: subLT R2, R0, #135266304
l2629: teqLE R6, R5, ASR R8
l2630: cmpMI R12, R6
l2631: mov R5, #30
l2632: ldrLE R2, [sp, +R5]
l2633: b l2635
l2634: adds R2, R7, R12
l2635: addLE R12, R4, R15, LSL #2
l2636: eorLTs R3, R8, R3, RRX 
l2637: bGE l2646
l2638: add R1, R0, #240
l2639: rsbHI R11, R8, R3
l2640: sbcPL R11, R0, R4
l2641: addLS R2, R14, R10, LSL #0
l2642: subGE R2, R2, R0, ASR R1
l2643: addLTs R1, R3, R1
l2644: mov R4, R2
l2645: b l2647
l2646: b l2639
l2647: cmpVS R11, #67108865
l2648: teqVS R14, #39321600
l2649: rsc R5, R11, R0, ROR R5
l2650: add R10, R6, #50
l2651: cmnCS R11, #1073741824
l2652: add R12, R9, R0, ROR R0
l2653: b l2659
l2654: rsc R6, R8, R3, LSR R1
l2655: clzEQ R14, R1
l2656: andLT R2, R2, R0
l2657: cmnMI R8, R12, ROR R8
l2658: mvnLSs R4, R12, ROR #20
l2659: cmn R3, #14272
l2660: cmn R14, R11, ROR R7
l2661: bicMIs R0, R6, R4, RRX 
l2662: ands R3, R6, R5, LSR #16
l2663: rscMI R6, R9, #805306368
l2664: add R12, R12, R11, LSR R6
l2665: bCS l2673
l2666: add R1, R0, #155
l2667: teqPL R15, R12
l2668: cmnEQ R8, R5
l2669: adcNE R11, R3, R15, RRX 
l2670: bicCSs R0, R14, R2
l2671: tst R1, #4915200
l2672: b l2674
l2673: b l2667
l2674: adds R5, R12, R12, ASR R3
l2675: tst R4, R6, ROR #31
l2676: movPL R1, #-268435455
l2677: cmp R6, R2
l2678: eor R6, R7, R4
l2679: sbcNE R12, R5, #-1090519040
l2680: cmnLT R15, R3, LSR #18
l2681: movs R0, R14, LSL R8
l2682: bicNE R0, R11, R1, ASR #21
l2683: adcCC R6, R9, #-1342177268
l2684: orr R11, R10, #154140672
l2685: teqPL R8, R0
l2686: tst R7, #-2147483628
l2687: bicLEs R1, R2, R12, LSR #30
l2688: cmnEQ R1, R14, RRX 
l2689: clzCC R6, R5
l2690: bic R9, R5, #336
l2691: bicEQs R0, R1, #1342177288
l2692: mvnLE R0, R10, ROR #21
l2693: cmpVC R9, #918552576
l2694: mvnCC R12, R8, ROR R0
l2695: tst R3, R7, ROR #30
l2696: bLE l2701
l2697: add R1, R0, #137
l2698: tstGT R14, #6553600
l2699: orrLSs R0, R10, R6, RRX 
l2700: b l2702
l2701: b l2698
l2702: subLS R10, R6, R7, RRX 
l2703: clzMI R14, R9
l2704: eor R8, R3, R3, ROR #8
l2705: cmn R4, R8
l2706: tstEQ R4, R5, LSL #3
l2707: teqMI R11, R11, ROR R8
l2708: orrLS R8, R4, R11, LSL R3
l2709: mov R3, #67
l2710: str R14, [sp, +R3]
l2711: bMI l2716
l2712: add R1, R0, #60
l2713: andLS R7, R9, R12, LSL #16
l2714: addHIs R2, R9, R2, LSR #11
l2715: b l2717
l2716: b l2713
l2717: subMI R4, R4, R3
l2718: adds R9, R6, R12, LSL R1
l2719: adcPL R12, R0, #60030976
l2720: rsbGTs R0, R2, R9
l2721: bicCC R10, R5, #72351744
l2722: sbcLE R1, R14, R12, RRX 
l2723: tstCC R5, #246415360
l2724: tst R6, #247463936
l2725: eorCCs R1, R1, #144
l2726: bLT l2730
l2727: cmn R11, R2
l2728: subNE R8, R5, #2015232
l2729: rscPL R5, R5, R0, ROR R11
l2730: tstLT R15, R4, LSR #27
l2731: bCC l2733
l2732: adcVC R7, R12, #704512
l2733: teqLS R1, R6, RRX 
l2734: cmn R8, R6
l2735: teqLE R14, R8, LSR R10
l2736: bGE l2741
l2737: subVCs R11, R1, #13500416
l2738: orrs R5, R7, R12, RRX 
l2739: rscGE R8, R3, R9
l2740: cmp R3, R15
l2741: movs R3, #146432
l2742: tstCS R12, #536870917
l2743: andLEs R8, R6, R2, LSR R8
l2744: tst R3, R10, ASR R2
l2745: mvnLS R10, #8896
l2746: adcEQs R5, R3, R0, ASR #26
l2747: movVCs R8, R7, RRX 
l2748: movs R14, R3, LSR #30
l2749: strHI R5, [sp, #+67]
l2750: eorGEs R6, R10, R14, LSL #11
l2751: rscs R3, R2, R7, ROR R5
l2752: mov R11, R6
l2753: adcHIs R3, R2, R7, ASR #17
l2754: movCS R12, R8, LSL R3
l2755: tstLE R7, R5, LSL #19
l2756: sbcs R14, R8, R4
l2757: bicHI R10, R11, #56
l2758: bics R12, R6, R9, LSR R9
l2759: mvnHIs R3, R3, ROR R12
l2760: rscs R10, R14, #9728
l2761: clzNE R14, R9
l2762: orrs R6, R14, R10, ASR #28
l2763: orrs R6, R6, R9, RRX 
l2764: movGT R6, R9
l2765: mov R12, #21
l2766: ldr R8, [sp], +R12
l2767: subCCs R10, R4, R5, RRX 
l2768: tst R11, R4
l2769: andVCs R12, R10, #3
l2770: rsbMI R12, R0, #390070272
l2771: subLT R0, R11, R12
l2772: andNE R12, R12, R2, ASR #23
l2773: adds R4, R7, #704512
l2774: teq R0, R9, ROR R11
l2775: tstLT R5, #14848
l2776: mov R14, #13
l2777: ldrEQ R0, [sp, +R14]
l2778: cmnMI R5, R1, ROR R3
l2779: andLT R2, R2, R7, LSL R5
l2780: sbcs R9, R15, #264
l2781: bMI l2785
l2782: add R1, R0, #245
l2783: cmnLS R7, R6
l2784: b l2786
l2785: b l2783
l2786: rscs R12, R9, R9, LSL #3
l2787: bEQ l2791
l2788: adcCCs R10, R6, #141312
l2789: clz R2, R3
l2790: mvnLTs R10, #848
l2791: sbcCCs R1, R5, R8, ASR R12
l2792: bLE l2794
l2793: adcs R11, R5, R7, LSR R1
l2794: subs R3, R11, R4, ROR R9
l2795: bLT l2800
l2796: add R1, R0, #195
l2797: rsbPL R3, R10, #822083584
l2798: and R3, R10, R2, LSL #18
l2799: b l2801
l2800: b l2797
l2801: eors R9, R9, #150
l2802: b l2807
l2803: add R1, R0, #189
l2804: andCSs R12, R2, #1023410176
l2805: sbcs R5, R3, R3
l2806: b l2808
l2807: b l2804
l2808: ldrMI R6, [sp, #+26]
l2809: subCSs R14, R3, R6
l2810: rsbHI R5, R12, R9, RRX 
l2811: cmnPL R11, #268435471
l2812: sub R10, R4, #2080768
l2813: ldr R2, [sp, #+49]!
l2814: mov R3, #61
l2815: ldr R11, [sp, -R3]!
l2816: eorLTs R9, R6, #-2147483630
l2817: clzVS R1, R12
l2818: adcs R2, R0, R12
l2819: eorLT R0, R1, #1736704
l2820: mov R12, R3, ROR R12
l2821: mvnHIs R5, R0, RRX 
l2822: andGT R6, R14, R7, LSR #17
l2823: mov R12, #54
l2824: str R3, [sp], +R12
l2825: orrs R3, R9, R14, LSR R1
l2826: sbc R2, R14, R12, ASR #20
l2827: adcVCs R4, R7, R0, LSR R3
l2828: orrs R8, R4, R15, RRX 
l2829: cmpGT R7, R3
l2830: sbcs R4, R14, R4, LSR R14
l2831: strGE R7, [sp, #+4]
l2832: cmnCC R3, R6, LSL #3
l2833: bicLTs R0, R4, R5, LSR #22
l2834: orrCCs R1, R0, #520
l2835: mov R2, #20
l2836: str R4, [sp, -R2]!
l2837: teq R5, R0
l2838: cmp R11, R15, RRX 
l2839: orr R0, R15, R1, LSR #25
l2840: sbcVSs R6, R14, R2, LSL R7
l2841: subs R11, R7, #880803840
l2842: clz R6, R3
l2843: clzNE R3, R10
l2844: movVC R8, R9
l2845: orrPLs R11, R6, R8, LSL R1
l2846: clzVS R5, R2
l2847: subs R12, R5, R5, ASR #14
l2848: tst R2, R1
l2849: eors R4, R10, #50069504
l2850: orr R8, R8, R6, RRX 
l2851: subs R8, R0, R2, ROR R11
l2852: adcs R5, R6, R5, ASR R11
l2853: bVC l2859
l2854: mvnCC R10, R1
l2855: rsbVSs R3, R15, R12
l2856: teqMI R12, R2, ROR #11
l2857: orrGEs R8, R4, #243269632
l2858: add R7, R12, R10, ROR #7
l2859: ands R2, R11, R3
l2860: b l2868
l2861: add R1, R0, #196
l2862: cmnLT R10, #106
l2863: cmpEQ R10, R0, LSR R1
l2864: mvnGEs R0, R14, ASR R6
l2865: addLTs R2, R14, R2, ROR #19
l2866: rsbMIs R5, R12, R11, LSL R8
l2867: b l2869
l2868: b l2862
l2869: mov R2, #21
l2870: ldr R11, [sp], +R2
l2871: bics R11, R8, R14
l2872: b l2875
l2873: sub R12, R5, R7
l2874: bicVC R12, R1, R8, LSL #21
l2875: rscLE R6, R6, R4, LSR #12
l2876: clz R2, R5
l2877: sbc R10, R6, #8388608
l2878: adcs R8, R9, R9
l2879: orrGTs R14, R5, R5, LSL #16
l2880: adcLEs R9, R11, #1342177291
l2881: bCS l2886
l2882: add R1, R0, #172
l2883: rsc R3, R5, #-2147483648
l2884: bic R14, R1, R5
l2885: b l2887
l2886: b l2883
l2887: cmp R6, #805306368
l2888: eorLTs R14, R5, R14
l2889: str R1, [sp], #-65
l2890: adcNE R14, R12, R10
l2891: bic R6, R12, R2
l2892: subGE R5, R1, #1073741850
l2893: cmn R10, #1376256
l2894: clzHI R2, R0
l2895: bGE l2901
l2896: add R1, R0, #156
l2897: subGT R5, R7, R1, ASR R4
l2898: bics R1, R15, R7
l2899: eors R5, R8, R8, LSR #26
l2900: b l2902
l2901: b l2897
l2902: mov R11, #48
l2903: str R7, [sp, +R11]!
l2904: orrNEs R1, R10, #7536640
l2905: bMI l2911
l2906: cmn R5, #-805306366
l2907: subLEs R6, R14, R9, ROR #6
l2908: rscLEs R11, R1, R1, ASR R5
l2909: teq R11, R14, ASR #9
l2910: tstVS R1, R8
l2911: orrGEs R4, R14, #805306378
l2912: teqGE R7, R6, ROR R3
l2913: orrs R11, R4, R3, RRX 
l2914: teqVS R9, R4, LSR #13
l2915: cmpVC R3, R12, RRX 
l2916: sub R11, R8, R8, LSL R7
l2917: mvns R10, R0
l2918: bCS l2925
l2919: add R1, R0, #89
l2920: mov R5, R7
l2921: eorPLs R6, R1, R11, ROR #24
l2922: rsbGEs R2, R9, R12, LSL #5
l2923: subHI R8, R15, #46592
l2924: b l2926
l2925: b l2920
l2926: rsbMIs R7, R5, R8, LSR R4
l2927: bCC l2935
l2928: add R1, R0, #189
l2929: orrLS R7, R11, R7, ASR #5
l2930: eorVCs R10, R2, R12
l2931: rsbLE R10, R1, R10, LSL #0
l2932: clzNE R9, R4
l2933: sbcGE R14, R4, R4, LSR R0
l2934: b l2936
l2935: b l2929
l2936: mov R6, #16
l2937: strVS R4, [sp, -R6]
l2938: clzVC R1, R14
l2939: str R8, [sp, #-40]!
l2940: orrs R8, R10, #1073741857
l2941: adc R8, R1, R14, ASR #23
l2942: orrHI R2, R6, R9, ROR R3
l2943: subGTs R7, R0, R1
l2944: bLE l2947
l2945: rsbs R14, R15, R15
l2946: subs R1, R8, R12, ROR #16
l2947: clz R4, R2
l2948: b l2952
l2949: add R1, R0, #213
l2950: tst R3, #5701632
l2951: b l2953
l2952: b l2950
l2953: movLTs R1, #381681664
l2954: b l2958
l2955: add R1, R0, #48
l2956: rscNE R8, R11, R3, ROR R0
l2957: b l2959
l2958: b l2956
l2959: mvnHI R10, R10
l2960: bVS l2969
l2961: sbcs R9, R5, R0
l2962: movVC R10, R8, ROR #25
l2963: adcCC R14, R1, R15, LSR #6
l2964: adds R7, R1, R12, RRX 
l2965: rsc R3, R11, R9
l2966: bicPL R3, R10, R12, ROR #30
l2967: orrHIs R7, R15, R7, LSL #6
l2968: clz R3, R0
l2969: rscLSs R6, R5, #12189696
l2970: bMI l2971
l2971: cmnLE R5, R8, LSR R14
l2972: addHI R10, R11, #20
l2973: b l2974
l2974: mvnMIs R3, R5, LSR R3
l2975: bCS l2984
l2976: add R1, R0, #210
l2977: sbcPL R7, R5, R2, LSL #31
l2978: bicPL R1, R15, #130023424
l2979: sub R0, R8, #18944
l2980: andCC R0, R7, R7
l2981: eorLSs R3, R7, #3120
l2982: teqMI R6, R15, RRX 
l2983: b l2985
l2984: b l2977
l2985: bCS l2994
l2986: add R1, R0, #171
l2987: mvnVCs R4, R8
l2988: mvnLSs R6, R4, ASR R0
l2989: rscs R10, R5, R6
l2990: orrEQs R2, R1, R0, LSR #20
l2991: sbcCSs R3, R10, #114294784
l2992: tst R2, R2, ROR #9
l2993: b l2995
l2994: b l2987
l2995: teq R14, R0, LSR #8
l2996: subCC R6, R12, R14, LSR R11
l2997: mov R0, #40
l2998: str R2, [sp], +R0
l2999: movs R11, #-939524096
l3000: subLE R0, R0, R4, ASR #2
l3001: bLS l3003
l3002: rsbGE R14, R10, #484
l3003: mvns R11, #63488
l3004: rsbMIs R5, R3, #-335544320
l3005: clzGE R6, R14
l3006: adcs R9, R2, #11072
l3007: cmpNE R15, #198180864
l3008: rsbs R3, R8, R7, ROR R0
l3009: clz R8, R5
l3010: andEQ R12, R10, R5
l3011: tstLT R12, R14, LSR R11
l3012: orr R4, R3, R7, ASR R12
l3013: andLE R14, R0, R6
l3014: teq R3, R9, RRX 
l3015: orr R5, R2, R8, ROR #16
l3016: subs R6, R4, R0, RRX 
l3017: mov R2, #41
l3018: ldr R12, [sp, -R2]!
l3019: tstLT R0, R2, LSR #24
l3020: bNE l3021
l3021: clz R4, R5
l3022: subLT R1, R4, R4, RRX 
l3023: sbcCC R2, R6, R6, LSR R4
l3024: movCCs R4, R7, RRX 
l3025: sub R11, R6, R2, LSR #28
l3026: sbc R0, R10, R9, ASR #9
l3027: mvnMIs R3, #119
l3028: movPLs R14, R8
l3029: adcMIs R7, R7, R10, LSL #22
l3030: bGE l3039
l3031: add R1, R0, #189
l3032: sub R10, R15, #763363328
l3033: rsbs R11, R2, R1, LSL R11
l3034: adcs R6, R15, R14
l3035: mvnGEs R9, #100
l3036: rscLTs R14, R2, R11, RRX 
l3037: subs R10, R2, #41984
l3038: b l3040
l3039: b l3032
l3040: bicPLs R0, R6, #-1040187392
l3041: orr R9, R7, R6, LSL #19
l3042: orrPLs R2, R11, R6
l3043: addVS R5, R7, R2
l3044: teqCC R12, R6, LSR #21
l3045: adc R8, R7, #461373440
l3046: orrVS R6, R8, R7
l3047: cmnCS R14, R10
l3048: teq R4, R11, RRX 
l3049: tstNE R4, #1342177295
l3050: adds R3, R14, #16384
l3051: orrCSs R6, R6, R8, LSL R8
l3052: adcs R0, R9, R4, ASR #17
l3053: orrGTs R3, R5, R14, LSL R9
l3054: cmpHI R6, R11, ASR #4
l3055: cmn R14, R10
l3056: ands R8, R9, R1
l3057: adcNE R3, R6, R0, ROR R11
l3058: eorGT R5, R11, R2
l3059: bGT l3060
l3060: subGT R2, R14, R9
l3061: tstHI R12, R15, RRX 
l3062: bLE l3071
l3063: bicVC R12, R9, R1, RRX 
l3064: rsbs R5, R7, R7, ROR R0
l3065: addCS R6, R6, R12, LSR R7
l3066: orr R6, R9, #3801088
l3067: orrHI R4, R3, R14, RRX 
l3068: rsb R5, R4, #360710144
l3069: adcHIs R10, R3, R7, LSR #27
l3070: cmpLE R2, R1
l3071: eorGTs R10, R0, #1012
l3072: ldr R12, [sp], #+61
l3073: orrVS R0, R14, #36175872
l3074: bics R12, R10, R9, ROR #17
l3075: bicLSs R2, R12, R3
l3076: b l3079
l3077: rscHI R0, R0, R4, ROR R3
l3078: orrMIs R11, R14, R5, LSL R6
l3079: addPL R12, R9, #10944512
l3080: movEQs R4, #203423744
l3081: mvnGT R8, R12
l3082: bLS l3090
l3083: add R1, R0, #25
l3084: cmnGT R8, R11, RRX 
l3085: tstGT R11, R9, LSL R11
l3086: andVSs R9, R6, R0, LSR R5
l3087: adcGEs R4, R8, R11
l3088: movVS R5, R5
l3089: b l3091
l3090: b l3084
l3091: orrCSs R7, R15, R4, RRX 
l3092: andCS R0, R12, R11, RRX 
l3093: adcs R10, R3, R0, LSL R6
l3094: andCS R14, R14, R0
l3095: mvns R0, #108003328
l3096: bics R0, R8, #520093696
l3097: rscVSs R10, R9, #170
l3098: clzVS R4, R11
l3099: b l3101
l3100: teqHI R6, R1
l3101: orrCS R7, R7, #106
l3102: adcVCs R12, R0, R0, ROR #13
l3103: cmpVC R9, R4
l3104: orrs R14, R9, R6
l3105: orr R14, R3, #16187392
l3106: clz R0, R3
l3107: orrEQs R9, R3, #1824
l3108: tst R11, R3, LSR #24
l3109: movs R11, #-637534208
l3110: clz R8, R5
l3111: orr R10, R8, R7, ROR #22
l3112: clz R10, R2
l3113: rscs R11, R7, R9
l3114: addGTs R7, R14, R12
l3115: cmnPL R8, R0, LSR #6
l3116: tstGE R15, #60416
l3117: subs R6, R14, R2, RRX 
l3118: cmnGE R5, #729808896
l3119: clzEQ R4, R12
l3120: movGEs R12, R6, LSL R9
l3121: mov R9, #46
l3122: ldr R3, [sp, -R9]!
l3123: tst R5, R2, ASR R5
l3124: orrPL R4, R5, R7, ASR R1
l3125: subNE R11, R12, #880640
l3126: tstLS R11, R8
l3127: b l3133
l3128: add R1, R0, #56
l3129: sbcHIs R0, R9, R6, RRX 
l3130: mvnLEs R9, R11
l3131: subs R0, R12, R10, RRX 
l3132: b l3134
l3133: b l3129
l3134: bCC l3142
l3135: ands R0, R10, R15
l3136: and R1, R8, #60
l3137: subLTs R3, R6, R3, LSR R12
l3138: teqGT R10, R0, RRX 
l3139: subLE R7, R0, R7, ROR R12
l3140: rsbPLs R9, R10, R12, ROR #15
l3141: teq R6, #952
l3142: bic R12, R1, R9, ROR #4
l3143: and R8, R1, R0
l3144: eorVC R2, R3, #121
l3145: adcPL R4, R2, R6, LSL R7
l3146: clzCS R11, R4
l3147: strNE R8, [sp, #+2]
l3148: movCSs R8, R10
l3149: andVC R14, R4, R4, RRX 
l3150: orrVC R8, R0, #933888
l3151: mov R10, #17
l3152: ldr R2, [sp], +R10
l3153: tst R8, R11
l3154: str R9, [sp, #+21]!
l3155: cmn R7, R14
l3156: subGTs R5, R14, R0
l3157: orrs R6, R9, R12, ASR R9
l3158: subLT R5, R9, R1, LSL #4
l3159: sub R8, R12, #786432
l3160: b l3170
l3161: sub R1, R2, R15
l3162: rscs R12, R7, R11
l3163: tstHI R9, R10, ASR #10
l3164: andGE R14, R14, R2
l3165: mvnGE R11, R0, ROR #27
l3166: subNE R11, R1, R2, RRX 
l3167: sbcMI R6, R10, R15
l3168: rscLSs R8, R6, #186368
l3169: cmnLT R6, R2
l3170: tst R1, #1472
l3171: subMI R5, R1, R6, ROR R14
l3172: rsbs R1, R8, R5, ASR #9
l3173: bCS l3178
l3174: add R1, R0, #254
l3175: sub R2, R9, R5, ROR #31
l3176: teq R15, R2, ROR #25
l3177: b l3179
l3178: b l3175
l3179: bCS l3181
l3180: subHIs R6, R14, R11
l3181: sbcVS R12, R8, R3, LSR R12
l3182: cmn R3, #-1073741813
l3183: addHIs R0, R8, #40192
l3184: teqLE R2, R2, ROR R2
l3185: cmnHI R5, #12648448
l3186: clzEQ R10, R9
l3187: eorLE R10, R4, R10, LSR R11
l3188: b l3196
l3189: add R1, R0, #237
l3190: add R9, R3, #662700032
l3191: mvn R4, R0, LSR R6
l3192: addEQ R10, R15, R7
l3193: subHI R8, R7, #104857600
l3194: adc R2, R3, R1, LSL #8
l3195: b l3197
l3196: b l3190
l3197: clzEQ R12, R0
l3198: rsbs R7, R14, R8, ROR R10
l3199: rscHIs R8, R6, R5, ROR #29
l3200: subNE R10, R1, R2, ASR R1
l3201: sbcMIs R3, R2, R12, LSR #30
l3202: addEQ R12, R10, R11, LSR R4
l3203: mov R6, #33
l3204: ldr R8, [sp], -R6
l3205: bicHI R12, R3, R9, RRX 
l3206: bic R6, R5, R15
l3207: bPL l3217
l3208: rsb R0, R10, #101376
l3209: subMI R12, R6, R14
l3210: rscGEs R10, R15, R1, RRX 
l3211: add R3, R2, R3, LSL #15
l3212: eorEQs R2, R7, R14
l3213: rsbs R8, R4, #9152
l3214: teqEQ R15, R5, RRX 
l3215: rsbGEs R9, R11, R12, ASR R7
l3216: eors R0, R7, R8, ROR R0
l3217: rsbGEs R0, R7, R1, ROR R0
l3218: bGT l3221
l3219: sbcNEs R11, R11, R8
l3220: subLSs R1, R4, R3, LSL R6
l3221: bics R3, R11, R9
l3222: eorPLs R4, R8, R5
l3223: bCC l3228
l3224: orrLEs R7, R5, R3, LSR #18
l3225: eorVSs R3, R14, #15073280
l3226: cmnLT R7, R8, ROR #23
l3227: addLSs R8, R4, #25427968
l3228: mov R9, #469762048
l3229: orrs R7, R4, R10, ASR R1
l3230: orr R1, R6, R1, LSR R1
l3231: rscEQ R9, R10, R5
l3232: andGEs R14, R12, #1879048198
l3233: mvnCC R2, #54525952
l3234: ldr R7, [sp], #-6
l3235: mvnLTs R6, R5, LSR #22
l3236: orr R10, R1, R14
l3237: rsbs R6, R11, R9
l3238: cmpLS R7, #50593792
l3239: subs R0, R8, #3735552
l3240: clzCS R5, R3
l3241: eor R5, R1, R12, ROR R7
l3242: and R5, R2, R11, ROR R3
l3243: b l3250
l3244: rsb R9, R1, #983040
l3245: andVC R2, R12, #1728053248
l3246: clz R12, R12
l3247: tstHI R6, R7
l3248: bics R10, R15, R10, ROR #31
l3249: andLTs R8, R5, #-1073741769
l3250: subs R3, R0, #13828096
l3251: bic R9, R12, R11
l3252: movVC R6, R14, LSR #17
l3253: str R6, [sp, #+39]!
l3254: eor R11, R7, #343932928
l3255: bicCC R7, R3, R15, LSL #24
l3256: eorMIs R14, R4, #52992
l3257: b l3265
l3258: add R1, R0, #201
l3259: adcPL R10, R3, R4, ROR #14
l3260: cmpLE R15, R3, LSL #22
l3261: rsbs R2, R5, R0, ROR R1
l3262: eorLE R2, R2, R6, ASR #26
l3263: cmnPL R8, R2, RRX 
l3264: b l3266
l3265: b l3259
l3266: cmp R8, #-1946157056
l3267: subHI R0, R6, R15, ROR #23
l3268: adcGT R1, R8, R4
l3269: subs R10, R5, R7, RRX 
l3270: bLE l3273
l3271: cmpMI R6, R0, ASR R10
l3272: adcLS R3, R10, R5
l3273: bicLS R4, R4, #9024
l3274: b l3281
l3275: add R1, R0, #203
l3276: eorPL R10, R12, R12
l3277: teq R9, R8, ASR R2
l3278: addLS R10, R4, #145408
l3279: sub R1, R4, R10, ASR #24
l3280: b l3282
l3281: b l3276
l3282: mvn R6, R11, LSL #15
l3283: orrVCs R11, R1, R10, ASR #12
l3284: tst R5, R9, ROR R6
l3285: mvnLS R1, R0, LSR R11
l3286: mvn R4, R14
l3287: sbc R5, R8, R0, LSL R6
l3288: adcVCs R12, R0, R6, RRX 
l3289: mov R8, #3
l3290: ldr R14, [sp, -R8]!
l3291: bLT l3297
l3292: add R1, R0, #4
l3293: bicEQs R5, R4, R7
l3294: and R9, R9, #377487360
l3295: teqVC R10, #-1073741800
l3296: b l3298
l3297: b l3293
l3298: eors R12, R0, R14, RRX 
l3299: andEQs R2, R1, R7, ASR R8
l3300: bGE l3304
l3301: add R6, R1, R12
l3302: addHI R10, R5, #475136
l3303: rsbVSs R12, R2, R5, ROR #29
l3304: orrEQ R10, R3, R8, ROR R5
l3305: bGT l3307
l3306: subNEs R3, R14, R8, LSR R6
l3307: sbcs R0, R15, R12, RRX 
l3308: eorNEs R2, R9, R7, LSR R7
l3309: rsbLSs R0, R4, #145752064
l3310: rscHI R6, R5, R2
l3311: cmn R4, R9, LSL #3
l3312: teqMI R14, R2
l3313: orrs R14, R6, R1, LSL R9
l3314: orrPL R7, R3, R8
l3315: b l3320
l3316: add R1, R0, #135
l3317: adc R12, R15, #-268435455
l3318: subMIs R2, R6, R3, LSL #6
l3319: b l3321
l3320: b l3317
l3321: bVS l3330
l3322: add R1, R0, #134
l3323: addVC R1, R3, R5, RRX 
l3324: sub R7, R9, R12
l3325: orr R12, R6, R10, ROR R2
l3326: movLTs R9, #71
l3327: tstLS R10, #4980736
l3328: mvnCSs R3, R4
l3329: b l3331
l3330: b l3323
l3331: ands R14, R11, R11
l3332: teqMI R6, #4
l3333: mvnLSs R2, R15
l3334: mvnPL R1, R14, LSL R14
l3335: sbcLTs R8, R2, R7, ROR R5
l3336: mvnGEs R14, R10, ASR #12
l3337: and R7, R9, R2, ASR #5
l3338: andPL R10, R14, R6, ROR #28
l3339: eor R7, R1, R15
l3340: bGT l3348
l3341: mvn R0, R8, LSR R11
l3342: andNE R11, R0, #28672
l3343: movs R3, R14, RRX 
l3344: adcMI R2, R11, #932
l3345: rsbEQs R2, R15, R10, RRX 
l3346: bics R3, R3, R9, LSL R4
l3347: rsc R1, R12, #2293760
l3348: tstLS R11, R14, LSR #23
l3349: mvnEQs R10, #2588672
l3350: bEQ l3359
l3351: add R1, R0, #220
l3352: eorLS R6, R4, R9, ASR R8
l3353: bicPL R9, R15, R2, RRX 
l3354: sub R6, R10, #1073741881
l3355: mvn R3, R3, RRX 
l3356: mvn R12, R8, LSL #5
l3357: eorLS R5, R8, R8, ASR R12
l3358: b l3360
l3359: b l3352
l3360: subs R12, R5, R10
l3361: subs R1, R12, R8, ASR R12
l3362: cmpVS R2, R12, LSL #27
l3363: bLT l3371
l3364: add R1, R0, #49
l3365: mvnEQs R11, #980
l3366: orrPL R7, R1, #-268435454
l3367: ands R1, R5, R12, ROR #5
l3368: teq R10, R0, ROR #27
l3369: rsbVSs R4, R1, #-1073741821
l3370: b l3372
l3371: b l3365
l3372: andVSs R5, R8, R10, RRX 
l3373: tstCS R9, #2752512
l3374: teqVC R1, #308
l3375: eorMIs R5, R14, R1, RRX 
l3376: bGT l3379
l3377: mvn R12, #1342177283
l3378: adcs R4, R9, #240640
l3379: subGTs R14, R4, R6, RRX 
l3380: bMI l3388
l3381: subCSs R2, R1, #335544323
l3382: andLT R10, R9, R7, LSL R7
l3383: clzNE R0, R9
l3384: teqGT R14, R9, ASR R14
l3385: tstGE R15, #1073741853
l3386: and R5, R3, #13762560
l3387: bicGTs R7, R15, R5
l3388: ands R5, R2, R2
l3389: mov R10, #5
l3390: strLS R4, [sp, -R10]
l3391: orr R11, R4, R7, ASR R14
l3392: mvns R6, #-2147483623
l3393: sub R11, R4, R10
l3394: movs R10, R3, LSR R5
l3395: orrs R7, R9, R10, ROR R2
l3396: mvns R12, R7, RRX 
l3397: bLE l3404
l3398: add R1, R0, #39
l3399: tst R12, R11
l3400: eor R11, R15, R3, ROR #20
l3401: rsbCCs R4, R2, R14, LSR R3
l3402: sbcNEs R0, R4, #3008
l3403: b l3405
l3404: b l3399
l3405: cmpLS R10, R10
l3406: andPL R4, R12, R15
l3407: subs R14, R8, R3
l3408: adcs R9, R1, R15
l3409: movCSs R3, #3328
l3410: tstGT R5, R0, LSR #24
l3411: rscGEs R5, R7, R4, LSL R2
l3412: rscEQs R12, R4, #-2147483625
l3413: b l3422
l3414: add R3, R0, #565248
l3415: addLSs R3, R9, R10, RRX 
l3416: mvn R10, R0, RRX 
l3417: rsbVCs R9, R2, R0, ASR R12
l3418: sbcCCs R14, R0, R4
l3419: addLTs R3, R7, #113246208
l3420: orr R0, R12, R14
l3421: rscs R9, R1, R3
l3422: cmnEQ R6, R14, LSR R2
l3423: b l3426
l3424: cmnPL R10, R4, ROR #25
l3425: cmnPL R15, #2030043136
l3426: rsbs R0, R10, R10, ASR #17
l3427: rscs R4, R5, #3899392
l3428: adcMIs R14, R10, #1072
l3429: ands R6, R15, R7, LSR #24
l3430: cmnVS R12, R7, RRX 
l3431: orrLT R5, R4, #56885248
l3432: sbc R2, R12, R0, LSL R10
l3433: mvnGEs R3, R4
l3434: andEQs R10, R10, #54263808
l3435: sbcLTs R2, R0, #12928
l3436: addMI R10, R1, #-1610612725
l3437: rsc R12, R5, R1, RRX 
l3438: addGTs R5, R1, R15
l3439: bCC l3446
l3440: add R1, R0, #180
l3441: bics R12, R7, R14
l3442: rsbLT R14, R10, R2, ASR #15
l3443: clz R10, R3
l3444: cmpCC R9, R15
l3445: b l3447
l3446: b l3441
l3447: clz R11, R7
l3448: ands R12, R3, R7, LSR #23
l3449: b l3454
l3450: add R1, R0, #92
l3451: clzMI R6, R10
l3452: subGEs R1, R4, R6
l3453: b l3455
l3454: b l3451
l3455: ldr R1, [sp, #-17]!
l3456: add R12, R15, R5
l3457: sub R1, R1, #1073741862
l3458: bicCS R3, R15, R0
l3459: cmpVC R12, R1, LSL R10
l3460: bLE l3465
l3461: eorPLs R3, R10, #67
l3462: bics R4, R0, #-536870910
l3463: sbc R5, R8, R9, ROR R1
l3464: subMI R5, R12, #42991616
l3465: sbcVS R14, R0, R3, ROR R2
l3466: ands R11, R2, R8, LSR R7
l3467: mov R12, #16
l3468: strLT R2, [sp, -R12]
l3469: sbcLS R14, R14, R9, LSL #15
l3470: cmn R11, R10, ROR #14
l3471: eorNEs R11, R10, R11
l3472: bicCS R14, R8, R9
l3473: adc R3, R10, R5, ASR R8
l3474: bicGEs R8, R7, R6, ASR #14
l3475: rscGTs R10, R12, R12
l3476: ldr R10, [sp, #-14]!
l3477: orrHIs R6, R12, R0
l3478: and R4, R2, R7, ROR #4
l3479: bNE l3484
l3480: orrs R14, R14, #999424
l3481: rsbs R7, R8, R15, LSL #4
l3482: cmpCS R3, R12, ASR R6
l3483: subNEs R6, R5, R2, RRX 
l3484: andGEs R0, R0, R4, LSL R0
l3485: cmn R4, #6272
l3486: rscs R8, R7, R3, ASR #9
l3487: clzLT R14, R0
l3488: eorCCs R9, R7, #46
l3489: movMI R4, #-738197504
l3490: and R5, R12, #56320
l3491: tstNE R1, R0
l3492: bNE l3496
l3493: add R1, R0, #198
l3494: eor R14, R4, R2, ROR R1
l3495: b l3497
l3496: b l3494
l3497: bics R11, R12, R10, ASR R0
l3498: movLS R2, R11, LSL #28
l3499: b l3506
l3500: add R1, R0, #255
l3501: movCCs R12, #-1073741821
l3502: movVCs R7, R0
l3503: sbcCC R8, R9, R14, LSL R10
l3504: orrNEs R11, R8, R14, ASR #30
l3505: b l3507
l3506: b l3501
l3507: mvnPL R14, #805306373
l3508: rsbLT R2, R1, R8, RRX 
l3509: tstVC R10, R2
l3510: tstMI R7, #41943040
l3511: movVS R1, R5
l3512: eorVSs R10, R5, R6, LSL #15
l3513: rscLSs R0, R7, R10, LSR R11
l3514: clzNE R8, R9
l3515: orrVS R8, R0, R14, ROR #16
l3516: addPLs R10, R9, #-1073741768
l3517: movCSs R10, R15, ROR #21
l3518: and R5, R14, R9, RRX 
l3519: clz R6, R2
l3520: cmnLT R5, R10, LSR #5
l3521: tst R4, R5
l3522: rsbs R7, R9, R12
l3523: sbcs R9, R6, R5, LSL #22
l3524: teqNE R10, R11
l3525: sbcLEs R5, R12, R3, RRX 
l3526: mov R1, #22
l3527: str R10, [sp, -R1]!
l3528: rsbCCs R7, R10, R10, RRX 
l3529: eor R1, R3, R2, ASR R3
l3530: subEQ R7, R12, R9, ASR R3
l3531: eorHI R8, R5, R14, ROR R9
l3532: subGTs R0, R4, R15, LSR #3
l3533: add R4, R8, #232448
l3534: b l3539
l3535: add R1, R0, #187
l3536: tst R9, R15
l3537: adcs R3, R14, R1, RRX 
l3538: b l3540
l3539: b l3536
l3540: teqLS R11, #30408704
l3541: orrLEs R4, R3, #603979779
l3542: eor R6, R0, R2, LSR R3
l3543: mov R12, #8
l3544: str R9, [sp, +R12]!
l3545: teqLS R12, R1, LSL R2
l3546: cmn R2, R5, LSL R3
l3547: rscCS R5, R9, R3, ASR R11
l3548: movs R3, #896
l3549: sbcCCs R0, R12, R3, ROR R14
l3550: ldr R9, [sp, #+39]!
l3551: b l3558
l3552: bicMI R1, R5, #1157627904
l3553: clzHI R5, R14
l3554: teqGT R2, R0, LSR R11
l3555: tst R0, R6, ROR #12
l3556: adcGEs R1, R10, R2, LSL R0
l3557: subLTs R10, R5, R5
l3558: andVCs R12, R15, R8
l3559: cmp R5, R14
l3560: bCS l3567
l3561: add R1, R0, #166
l3562: cmn R5, R2
l3563: rscs R5, R14, #-1744830461
l3564: andLEs R5, R9, R3, LSL R4
l3565: tst R9, R9, RRX 
l3566: b l3568
l3567: b l3562
l3568: andLS R9, R10, R14
l3569: eorCSs R5, R14, R8
l3570: mvns R14, R6, ROR R5
l3571: b l3579
l3572: add R1, R0, #110
l3573: adcCCs R4, R15, #-754974720
l3574: tst R6, R5
l3575: tst R1, R11
l3576: eor R12, R9, R5, ROR R5
l3577: addMI R2, R10, R0, ASR R11
l3578: b l3580
l3579: b l3573
l3580: b l3587
l3581: andLS R2, R2, R4, RRX 
l3582: rscs R12, R1, R3
l3583: rsbVC R4, R2, #22528
l3584: andCSs R12, R0, R8, LSR R12
l3585: movHI R3, R0, ASR #3
l3586: movLT R9, R14, ROR #13
l3587: sub R3, R0, R8, ASR #1
l3588: tstLS R1, R12
l3589: cmp R2, R7, LSL R11
l3590: subGT R10, R7, #268435468
l3591: rscLS R10, R11, R6, RRX 
l3592: ands R14, R9, R1, ASR R0
l3593: bNE l3594
l3594: andLSs R9, R2, #6029312
l3595: tst R12, R10
l3596: eorMIs R8, R15, R14, LSL #19
l3597: and R9, R3, R1, ROR R5
l3598: clzLT R11, R10
l3599: rsbGTs R8, R4, R0
l3600: rscMIs R7, R12, R5
l3601: subGTs R11, R0, R14
l3602: orrGE R2, R10, #737280
l3603: clzLS R14, R12
l3604: subLTs R5, R2, R0, ASR R10
l3605: bMI l3610
l3606: add R1, R0, #1
l3607: cmp R12, R12, ASR #14
l3608: adcs R8, R5, R10
l3609: b l3611
l3610: b l3607
l3611: subGEs R2, R9, R1, ROR R10
l3612: subVCs R8, R6, R2, RRX 
l3613: cmnMI R5, #24
l3614: cmp R12, R2
l3615: bic R8, R8, R8, RRX 
l3616: b l3623
l3617: add R1, R0, #146
l3618: rscMIs R10, R12, R10, ASR #10
l3619: rscCC R1, R14, R11, RRX 
l3620: clz R2, R5
l3621: subVS R11, R5, R11, LSL R10
l3622: b l3624
l3623: b l3618
l3624: rscCSs R5, R14, R9, ASR R9
l3625: mvnCSs R14, #805306369
l3626: rscs R3, R4, R3, RRX 
l3627: rsb R8, R10, R4, LSR #11
l3628: rsb R11, R2, R9, LSR R11
l3629: movGEs R3, R10, ROR #29
l3630: teq R5, #16187392
l3631: bMI l3638
l3632: adcLSs R5, R15, #1376
l3633: eors R12, R5, R7
l3634: mvnGTs R3, #3
l3635: cmn R9, R8, LSR R12
l3636: movs R7, R10
l3637: bicNE R1, R1, R0, LSR R5
l3638: movGT R1, R5, LSL R5
l3639: mvnMI R5, R7
l3640: adcHI R12, R3, R11, ROR #26
l3641: eorEQ R3, R0, R7
l3642: cmn R12, R4, LSL #4
l3643: rscs R10, R8, R11, ASR #29
l3644: subLE R7, R9, R7, LSR R3
l3645: orr R1, R12, R7, LSR R3
l3646: orrs R9, R1, #1920
l3647: adds R3, R9, R0, LSR R12
l3648: teqPL R6, #2256
l3649: adc R6, R11, R0
l3650: sbcNE R1, R6, R3, ASR #22
l3651: teqGT R0, R1, LSR #27
l3652: cmp R0, R8, LSL #10
l3653: b l3659
l3654: add R1, R0, #195
l3655: addGE R12, R4, R10, RRX 
l3656: movCS R1, R14, LSL #24
l3657: movGT R5, R11, LSL #26
l3658: b l3660
l3659: b l3655
l3660: subLSs R0, R12, #-1610612726
l3661: sbcVS R9, R9, R7, ROR R9
l3662: tst R11, R8, ASR R10
l3663: eorCSs R11, R14, R8
l3664: rsc R8, R15, R9, ROR #29
l3665: rsbs R1, R6, R7, ROR R7
l3666: eor R3, R8, #-67108864
l3667: bCS l3669
l3668: subPLs R14, R8, R1, ASR R6
l3669: mvn R12, R6
l3670: addNE R11, R10, R0
l3671: b l3680
l3672: add R1, R0, #97
l3673: bicEQ R2, R8, R14
l3674: teqPL R2, R0, RRX 
l3675: movs R9, #1359872
l3676: rsbEQ R3, R3, R5
l3677: cmn R6, R8, ASR #23
l3678: rsbLS R9, R6, R0, ROR #24
l3679: b l3681
l3680: b l3673
l3681: mvns R6, #129
l3682: rsc R9, R9, #176160768
l3683: subs R8, R8, R1, ROR #6
l3684: bCS l3689
l3685: add R1, R0, #128
l3686: sbcs R8, R8, R14
l3687: eorNE R5, R15, #54
l3688: b l3690
l3689: b l3686
l3690: tstCS R4, #654311424
l3691: eorMI R11, R6, R3
l3692: andLEs R1, R5, R5, ASR R6
l3693: mov R6, #1
l3694: strGE R5, [sp, +R6]
l3695: cmpLT R8, R12
l3696: clzMI R0, R5
l3697: clz R5, R14
l3698: cmnLT R3, R14, ROR R4
l3699: addLTs R0, R2, #13238272
l3700: andVC R12, R12, R0
l3701: andLEs R12, R1, R2
l3702: orrHIs R9, R10, #8576
l3703: rsbVS R14, R15, #1441792
l3704: orr R11, R10, #-268435446
l3705: bGE l3711
l3706: add R1, R0, #38
l3707: sbcCCs R7, R14, R6
l3708: sub R4, R8, #3472
l3709: movMIs R0, R14, ROR #26
l3710: b l3712
l3711: b l3707
l3712: teqPL R4, R3, ASR R5
l3713: bicVC R3, R14, R1, LSR R9
l3714: orrEQs R4, R10, R14, ROR #24
l3715: str R5, [sp, #+17]!
l3716: adcMIs R4, R10, R14
l3717: mvns R14, #8896
l3718: bGE l3722
l3719: tst R1, R12
l3720: orrLT R2, R15, #15104
l3721: cmnLT R2, R3, LSL R12
l3722: clzEQ R2, R5
l3723: subEQ R14, R1, R9, ROR #18
l3724: movEQ R2, #-1107296256
l3725: adcMIs R9, R14, R12, ASR #27
l3726: eor R11, R11, R15, ASR #9
l3727: orrLEs R8, R5, #826277888
l3728: eors R14, R10, R8
l3729: bHI l3735
l3730: add R1, R0, #69
l3731: mvnGTs R8, R10, RRX 
l3732: adcNE R1, R2, R11
l3733: eorLT R8, R11, R2, LSL #16
l3734: b l3736
l3735: b l3731
l3736: movNE R4, R9, LSL #18
l3737: bics R7, R2, #42991616
l3738: mvns R0, R12, ROR R6
l3739: sbcHI R6, R8, R14, ASR R11
l3740: b l3744
l3741: add R1, R0, #5
l3742: clzLT R14, R14
l3743: b l3745
l3744: b l3742
l3745: mov R12, R4
l3746: bic R3, R2, #2293760
l3747: sbcCS R0, R14, #15232
l3748: bic R1, R5, R1, ROR R7
l3749: orrLSs R8, R4, #199229440
l3750: teqNE R7, R15, RRX 
l3751: tstLT R8, #1140850689
l3752: teqLS R3, R11, LSL R0
l3753: subLE R1, R11, R4, LSR R8
l3754: and R4, R10, R15, ROR #24
l3755: ands R14, R11, R4, ROR R4
l3756: addGE R9, R7, R14, LSL R11
l3757: sbcGTs R10, R1, R4, LSL R12
l3758: ands R8, R7, R10
l3759: b l3763
l3760: add R1, R0, #115
l3761: tstLS R5, R5, RRX 
l3762: b l3764
l3763: b l3761
l3764: adcs R5, R5, R8, ASR R10
l3765: b l3773
l3766: add R1, R0, #1
l3767: rscGTs R10, R0, R15
l3768: clz R9, R0
l3769: andNEs R3, R0, R1, LSR R4
l3770: rscLTs R14, R12, #372736
l3771: mvn R12, R9
l3772: b l3774
l3773: b l3767
l3774: eorLE R8, R7, R12, LSL R14
l3775: sbcs R6, R5, R5, ROR R5
l3776: andMI R12, R2, R12, ASR #27
l3777: bicLTs R6, R1, R0, RRX 
l3778: bicLSs R7, R2, #8716288
l3779: andNEs R1, R4, #-1342177265
l3780: rscEQ R8, R3, R6, LSL #3
l3781: rscLEs R0, R4, R5
l3782: tstCC R6, R4
l3783: bVC l3791
l3784: cmp R12, R14, ROR #19
l3785: andNE R8, R9, #1441792
l3786: cmn R2, R11, LSL R7
l3787: tst R9, R4
l3788: mvns R10, R7, ROR R14
l3789: andLSs R1, R4, R15, ASR #8
l3790: subCC R6, R3, R5
l3791: tstHI R5, R5, LSL R14
l3792: add R2, R12, #94208
l3793: subLT R9, R9, R10
l3794: eorVS R9, R11, R15, LSL #8
l3795: clz R3, R12
l3796: cmpGE R2, #257024
l3797: movVC R10, #398458880
l3798: bic R8, R1, R2, ROR R7
l3799: rsbEQs R14, R6, R9, LSR #7
l3800: tst R3, R14
l3801: sub R1, R15, R15, RRX 
l3802: teqVS R12, R9
l3803: cmpCC R11, R14, ASR #4
l3804: subs R5, R8, R0, ASR R3
l3805: clzCS R4, R5
l3806: movs R1, #-1207959552
l3807: cmpEQ R4, #1610612736
l3808: eorMIs R2, R11, R10, ROR #6
l3809: b l3812
l3810: bicCC R11, R4, R9, ASR #14
l3811: orr R9, R3, R10, ROR #19
l3812: rsbs R8, R6, R11, ROR #12
l3813: mvn R12, R11, RRX 
l3814: rsbNE R5, R12, R11, LSL #22
l3815: cmnCC R6, R3, ASR R8
l3816: sub R9, R8, #15728640
l3817: subs R1, R4, R0, ROR #31
l3818: clzCC R6, R11
l3819: add R4, R10, R4, ASR #24
l3820: subPLs R8, R9, R1, ROR R2
l3821: bVS l3824
l3822: bics R5, R6, R11, LSR R4
l3823: orrs R4, R9, #11264
l3824: bics R4, R15, #43
l3825: rscHIs R1, R8, R9, LSR R3
l3826: mov R5, #28
l3827: str R15, [sp], -R5
l3828: orrLTs R9, R9, #247463936
l3829: bLE l3837
l3830: add R1, R0, #199
l3831: andHIs R14, R4, #425984
l3832: ands R3, R12, R12, LSR R4
l3833: mvn R4, R6, ROR #3
l3834: adds R12, R10, R6, ROR R9
l3835: cmpLS R10, R14
l3836: b l3838
l3837: b l3831
l3838: mov R8, R7, RRX 
l3839: teq R14, R9, LSR R0
l3840: mov R5, #0
l3841: str R15, [sp, +R5]!
l3842: cmp R15, #1610612746
l3843: rsc R7, R5, R14, ASR R9
l3844: eors R14, R0, R9, ROR #18
l3845: bGT l3846
l3846: subLEs R14, R12, R7
l3847: ldr R10, [sp, #-29]!
l3848: cmn R8, R12, ROR R8
l3849: rscNEs R3, R8, R0, RRX 
l3850: bLE l3858
l3851: add R1, R0, #52
l3852: movCS R3, R0
l3853: rscVCs R12, R5, R15
l3854: adc R6, R15, #3145728
l3855: subLTs R4, R7, R1
l3856: teq R9, R14, RRX 
l3857: b l3859
l3858: b l3852
l3859: b l3868
l3860: addVCs R8, R3, R2, RRX 
l3861: cmpMI R14, #5
l3862: adcs R9, R11, #700448768
l3863: cmn R1, #8388608
l3864: adc R6, R11, R4, LSR R11
l3865: sbcs R4, R5, #-671088637
l3866: ands R4, R5, #2621440
l3867: cmnVC R10, R3, LSL R0
l3868: subCS R11, R12, #75497472
l3869: eors R2, R6, R4, LSR R6
l3870: mov R7, #28
l3871: ldr R2, [sp, +R7]!
l3872: and R3, R12, R10
l3873: mvnCSs R8, R0, RRX 
l3874: orrGT R6, R6, R14, LSR R6
l3875: addVS R0, R6, R1, ROR R8
l3876: str R11, [sp], #+5
l3877: bic R14, R12, R2, RRX 
l3878: eorLT R11, R11, #364
l3879: rsb R3, R12, R2, LSL R1
l3880: b l3887
l3881: add R1, R0, #48
l3882: eorLE R14, R14, R8, RRX 
l3883: sub R11, R9, #39845888
l3884: rsbCSs R14, R6, R7, LSR #24
l3885: addGE R4, R5, R14, LSR R7
l3886: b l3888
l3887: b l3882
l3888: cmp R11, R9
l3889: bicLS R8, R4, R11, ASR #31
l3890: strVC R2, [sp, #-28]
l3891: subLEs R5, R6, #10485760
l3892: teqCS R9, R10, ROR R1
l3893: movCSs R0, R1, ASR #14
l3894: mvnGT R11, R11
l3895: subLEs R2, R4, R8
l3896: orrs R11, R12, R8, LSL #10
l3897: bicGT R7, R10, R2, ASR R1
l3898: rsbs R12, R12, R7, RRX 
l3899: adds R11, R10, R11
l3900: orrVCs R5, R5, R6, RRX 
l3901: bHI l3909
l3902: add R1, R0, #193
l3903: rscVSs R1, R9, R4, RRX 
l3904: tstNE R3, R14
l3905: cmp R12, #-1073741792
l3906: cmn R2, R11, RRX 
l3907: rsbCC R3, R11, #306184192
l3908: b l3910
l3909: b l3903
l3910: cmn R4, R1, ASR #3
l3911: mov R5, #28
l3912: str R12, [sp, -R5]!
l3913: bic R7, R8, R0, ROR #24
l3914: cmpHI R5, R12, ROR R3
l3915: bLS l3922
l3916: add R1, R0, #54
l3917: orrCS R3, R3, R4, LSR #13
l3918: eorEQs R9, R8, R2
l3919: rsbLE R8, R0, R10, LSR #6
l3920: clz R11, R9
l3921: b l3923
l3922: b l3917
l3923: ands R2, R8, #-469762046
l3924: bics R14, R4, R5, ROR #21
l3925: cmnVS R2, R11, LSR R5
l3926: adc R14, R7, R1, ASR R7
l3927: addLSs R6, R7, R1, RRX 
l3928: b l3936
l3929: add R1, R0, #93
l3930: rscGTs R9, R14, R8, LSL R11
l3931: bics R1, R3, R2
l3932: adcEQ R12, R12, R4, LSR #26
l3933: mvnMI R12, #729808896
l3934: ands R2, R0, #1811939330
l3935: b l3937
l3936: b l3930
l3937: orrPL R12, R10, R8, RRX 
l3938: bLS l3947
l3939: add R1, R0, #10
l3940: rscs R12, R14, #-1409286143
l3941: ands R1, R0, R14
l3942: adds R9, R5, R8
l3943: adcVCs R0, R11, R3, ROR #15
l3944: add R3, R2, R6, ROR R12
l3945: rsbMI R1, R6, R6
l3946: b l3948
l3947: b l3940
l3948: orrPL R5, R14, #440
l3949: b l3953
l3950: add R1, R0, #138
l3951: rscLS R2, R0, #160432128
l3952: b l3954
l3953: b l3951
l3954: b l3959
l3955: add R1, R0, #142
l3956: movs R2, #3600
l3957: orrs R0, R11, R1, LSL R1
l3958: b l3960
l3959: b l3956
l3960: tstCC R11, R8, LSL #29
l3961: bicVCs R1, R12, R11
l3962: addGTs R14, R3, #-1073741765
l3963: teqNE R4, #204800
l3964: mov R1, R5, RRX 
l3965: bGE l3974
l3966: add R1, R0, #177
l3967: clz R1, R8
l3968: adcLSs R2, R12, R6, ROR R14
l3969: cmp R5, R14, LSL #1
l3970: orrLSs R7, R0, #9600
l3971: orrEQs R5, R1, #994050048
l3972: adc R0, R5, R12, LSL #13
l3973: b l3975
l3974: b l3967
l3975: mov R7, #52
l3976: str R11, [sp, +R7]
l3977: mvn R7, #237568
l3978: add R10, R3, R10
l3979: subPLs R1, R14, R4, RRX 
l3980: cmp R3, R2, ROR #16
l3981: sbcs R1, R9, R5, LSL #26
l3982: tst R11, R1
l3983: cmp R14, #53477376
l3984: bGE l3990
l3985: mov R9, R9, LSL R0
l3986: addMIs R5, R7, R7, RRX 
l3987: teq R11, #738197504
l3988: andGTs R6, R2, R15, ROR #18
l3989: cmn R10, R8, LSL R2
l3990: andCSs R6, R3, #16
l3991: subCS R3, R10, R7, ASR R3
l3992: subLTs R2, R5, R0, RRX 
l3993: subHIs R6, R12, R4, LSR R0
l3994: ldrVC R14, [sp, #+8]
l3995: andEQs R3, R14, R14, RRX 
l3996: sbcGTs R7, R8, #540
l3997: teq R5, R7
l3998: subLEs R12, R4, R4, ROR #12
l3999: cmpLS R0, R4
l4000: b l4009
l4001: teqLE R7, #6553600
l4002: eorPLs R3, R3, R12, LSL #14
l4003: movCC R6, R0, LSL R2
l4004: cmnCC R3, R10, LSR #29
l4005: cmp R6, R8, RRX 
l4006: rsbHI R14, R6, R0, LSR R3
l4007: cmn R9, R3, ASR R1
l4008: addPLs R0, R5, R9, RRX 
l4009: rscCCs R1, R1, R8, LSL R14
l4010: eor R12, R14, R14, ASR #1
l4011: rsb R11, R11, #-805306365
l4012: bic R11, R4, R2, RRX 
l4013: andHI R3, R1, R12
l4014: cmpLT R5, R12
l4015: bicPLs R1, R4, #2244608
l4016: adcCCs R4, R4, R6, LSR #12
l4017: orrCSs R4, R2, R5, ASR #28
l4018: orr R0, R10, #384
l4019: movLT R10, R15, ROR #17
l4020: str R4, [sp, #+40]
l4021: orr R10, R3, R11, LSL #2
l4022: rscs R5, R15, R4, ASR #9
l4023: adc R2, R12, R10
l4024: b l4033
l4025: addLT R1, R0, R11, ASR #14
l4026: cmp R10, R7
l4027: cmpPL R5, R9, ASR #9
l4028: andCC R9, R1, #167
l4029: bicCSs R1, R6, #1073741866
l4030: orr R0, R10, #3664
l4031: cmnLT R10, R9, LSR R11
l4032: sub R5, R11, R9, ASR R4
l4033: movVS R4, R9, LSL #6
l4034: rsbs R9, R1, R7, RRX 
l4035: subMIs R4, R4, R11, ROR #7
l4036: eors R14, R14, #-1342177276
l4037: b l4043
l4038: add R1, R0, #69
l4039: cmn R4, R14, ASR #9
l4040: rsbGTs R6, R15, R6
l4041: andGEs R4, R6, R3, LSR #2
l4042: b l4044
l4043: b l4039
l4044: mvn R8, R8, ASR #12
l4045: rsb R9, R12, R14, LSL R10
l4046: b l4053
l4047: tstCC R2, R2, RRX 
l4048: clz R6, R10
l4049: cmn R7, R5, ASR #28
l4050: mvnVC R12, R2
l4051: andPL R6, R14, R5
l4052: mov R8, R7
l4053: sub R4, R1, #360448
l4054: clzEQ R8, R4
l4055: teqMI R10, #192
l4056: bVS l4065
l4057: tst R1, R11
l4058: subNEs R3, R5, #100
l4059: subVCs R2, R1, R5, ASR R11
l4060: adds R1, R3, R1, RRX 
l4061: orrs R0, R7, #7274496
l4062: eor R5, R7, #-1476395006
l4063: clzLT R9, R10
l4064: mvnLTs R8, R7
l4065: tstLS R8, R0, ROR R2
l4066: eorGEs R2, R2, #17
l4067: tst R1, #-2147483610
l4068: rscNEs R2, R11, R5, ASR #8
l4069: ldr R6, [sp, #+15]!
l4070: mvn R14, R8, RRX 
l4071: clzMI R4, R1
l4072: bVS l4079
l4073: sub R0, R11, R14
l4074: rsbLE R4, R10, R10
l4075: cmnPL R6, R11, LSR R10
l4076: rsbMI R10, R12, R2, ASR #19
l4077: teq R14, #103809024
l4078: movGEs R7, R3, LSL R11
l4079: mvnEQs R10, #428
l4080: add R9, R11, #327155712
l4081: bics R4, R12, R4, ROR #23
l4082: cmnLS R9, R0
l4083: subLSs R8, R9, R8
l4084: cmp R10, #520093696
l4085: eor R10, R3, R10, ROR R8
l4086: cmpLS R9, #14876672
l4087: adc R12, R11, #2015232
l4088: clzNE R2, R1
l4089: cmn R15, #27648
l4090: cmpLE R11, R8, ROR #7
l4091: subGEs R0, R10, #704
l4092: orrLEs R9, R11, R12, LSR #17
l4093: cmnHI R9, R10
l4094: eors R6, R10, #1140850688
l4095: bCS l4098
l4096: mvnLEs R11, R14, LSR #23
l4097: adcVCs R12, R10, R7, ROR R14
l4098: clz R8, R5
l4099: eors R10, R12, R0
l4100: cmpLS R6, R9
l4101: mov R4, #27
l4102: ldr R1, [sp], -R4
l4103: eorCSs R8, R14, R8, ROR #18
l4104: adcGT R0, R15, R4, LSL #12
l4105: teq R5, R6
l4106: subHI R3, R15, #1032192
l4107: mvn R9, #13631488
l4108: mov R7, #20
l4109: strLT R5, [sp, +R7]
l4110: bicGE R5, R10, R7, LSL R7
l4111: clzVC R7, R6
l4112: bCC l4116
l4113: add R1, R0, #134
l4114: mov R6, #3344
l4115: b l4117
l4116: b l4114
l4117: subGE R3, R10, R9
l4118: cmp R15, #29696
l4119: bPL l4129
l4120: sub R6, R14, R15, LSL #20
l4121: tst R10, #3328
l4122: eorPL R9, R10, R15
l4123: rsbGE R6, R5, R1
l4124: tst R2, R7, LSR #25
l4125: adcCCs R3, R15, R8, LSL #9
l4126: clzVC R0, R11
l4127: eor R11, R1, R4, LSL R3
l4128: rscLTs R0, R4, R0, LSL R3
l4129: andNEs R12, R3, R8, RRX 
l4130: movVS R5, R1, ASR R0
l4131: bGE l4135
l4132: add R1, R0, #35
l4133: add R2, R9, #222298112
l4134: b l4136
l4135: b l4133
l4136: b l4142
l4137: sub R3, R3, R3, LSR R9
l4138: bicLE R7, R8, R4, RRX 
l4139: subs R4, R10, R1, ASR #26
l4140: ands R1, R2, R4, ROR R11
l4141: ands R1, R8, #229376
l4142: bicNE R7, R0, R3
l4143: sbcLS R5, R10, R1
l4144: andLSs R11, R12, #44564480
l4145: teqEQ R10, R11, LSR R2
l4146: clzEQ R0, R4
l4147: rsbHIs R3, R12, #48384
l4148: sbc R0, R3, #4
l4149: cmnNE R2, R0, LSL R0
l4150: rsc R1, R9, #15400960
l4151: orrHI R8, R0, #257024
l4152: teqGE R12, R14
l4153: rscGT R9, R1, R0, ROR R6
l4154: add R4, R7, #16640
l4155: addNEs R11, R7, R9, ROR #7
l4156: addCS R14, R3, R6, LSR #5
l4157: str R0, [sp, #+56]
l4158: bics R1, R7, #356
l4159: bCC l4168
l4160: add R1, R0, #221
l4161: cmpMI R2, R7, LSR R1
l4162: mvn R5, R12, LSR #17
l4163: rscGEs R10, R6, R5, ASR R0
l4164: orrs R1, R9, #-1610612732
l4165: sbcCSs R8, R9, R11, ASR R9
l4166: mvn R2, #761856
l4167: b l4169
l4168: b l4161
l4169: eorVC R8, R0, R9, ROR #17
l4170: rscs R7, R14, #1552
l4171: cmnLS R15, R11, LSR #6
l4172: adc R3, R0, R4
l4173: cmn R0, #7012352
l4174: orrs R1, R5, R11
l4175: addLEs R11, R12, R1, LSR R4
l4176: clz R12, R7
l4177: mov R3, #4
l4178: str R4, [sp, +R3]!
l4179: rsc R14, R4, R4, ASR #30
l4180: clzGT R5, R4
l4181: sub R7, R6, R1, ROR #2
l4182: ands R2, R5, R8, RRX 
l4183: mov R5, R7
l4184: bGT l4185
l4185: subs R0, R7, R7, LSR #20
l4186: cmpCC R10, R9, LSR R0
l4187: mov R6, #4
l4188: str R8, [sp, -R6]
l4189: bic R0, R3, R7, ROR R0
l4190: add R11, R2, R8
l4191: teq R1, R3, ROR #27
l4192: mvnCCs R1, R4
l4193: andPL R1, R3, R1, LSL #17
l4194: tst R10, R6
l4195: mvns R4, R5, RRX 
l4196: bics R5, R9, R2
l4197: add R9, R5, R8
l4198: rsb R10, R12, #-268435456
l4199: adcs R9, R5, R7
l4200: add R8, R2, R8, LSR #3
l4201: orrEQ R0, R2, #43515904
l4202: bHI l4203
l4203: tstNE R7, #394264576
l4204: add R2, R3, R12
l4205: ldr R4, [sp, #+30]!
l4206: movs R3, R7, LSL R5
l4207: b l4212
l4208: andMIs R12, R10, R7, RRX 
l4209: tst R9, R0, LSR R3
l4210: subPL R8, R11, R10, RRX 
l4211: teq R6, R7, LSR R5
l4212: rscs R6, R15, #647168
l4213: adds R11, R3, R6, LSL #20
l4214: movs R7, R9, LSR #31
l4215: orr R6, R4, R0, ROR #22
l4216: andCSs R11, R10, #62
l4217: cmn R5, R3
l4218: ldr R2, [sp, #-8]!
l4219: mvns R7, R4
l4220: bics R6, R3, R7, RRX 
l4221: tstVC R15, R2
l4222: str R12, [sp, #-10]!
l4223: subs R9, R6, R10
l4224: cmpHI R9, #116
l4225: bics R6, R8, R9
l4226: rsbGTs R10, R0, R6, LSL #9
l4227: adc R0, R15, #-1426063360
l4228: movs R7, R3, ROR R5
l4229: bMI l4237
l4230: add R1, R0, #108
l4231: sbcNE R5, R0, R2
l4232: teqGT R4, R10
l4233: rsb R4, R0, R10
l4234: rscs R7, R9, R1, LSR R5
l4235: tst R10, R2, ASR #4
l4236: b l4238
l4237: b l4231
l4238: bNE l4248
l4239: rsb R2, R0, R0, RRX 
l4240: subNE R1, R8, R5
l4241: adds R2, R11, R12
l4242: eorHI R5, R7, R7, ASR R10
l4243: bic R7, R12, R6, LSL R12
l4244: teq R15, R11
l4245: rsc R7, R6, R14, LSR #27
l4246: bicGE R5, R3, R5
l4247: bic R7, R1, R3, ASR #7
l4248: eorGEs R1, R2, #520192
l4249: cmnCS R4, R12, LSL #26
l4250: mvnGE R12, R9, LSR R2
l4251: rscCCs R5, R8, R5, ASR #18
l4252: rsb R7, R1, R12, ROR R4
l4253: eor R5, R4, R4, ROR #10
l4254: cmpVS R1, #1867776
l4255: andLTs R8, R5, R15
l4256: b l4262
l4257: add R1, R0, #51
l4258: andPL R4, R0, #272
l4259: sbcNE R6, R14, R7, ROR R14
l4260: bicHIs R11, R9, R15, RRX 
l4261: b l4263
l4262: b l4258
l4263: and R6, R10, R5, ASR #30
l4264: b l4270
l4265: add R1, R0, #163
l4266: rsbMI R2, R8, #12
l4267: addVC R12, R3, R6, ASR R1
l4268: subLSs R6, R0, R4
l4269: b l4271
l4270: b l4266
l4271: eorEQ R6, R10, #32768
l4272: bicCS R6, R4, R0
l4273: orrEQs R14, R8, #13631488
l4274: tstMI R14, R0, LSR R7
l4275: cmp R11, R14
l4276: bGT l4285
l4277: sbcGT R1, R3, R6, ROR R11
l4278: teqVS R6, R2, LSL #11
l4279: adds R12, R9, R10, ASR R12
l4280: addEQ R10, R6, R5, LSR R7
l4281: adds R11, R1, R3
l4282: bic R3, R6, R11, RRX 
l4283: rsb R12, R9, R2, LSR R12
l4284: cmnGT R11, R3, LSR R2
l4285: clzLS R6, R0
l4286: sbcs R9, R1, R9, ASR R2
l4287: orrPL R12, R7, #3604480
l4288: mov R7, #38
l4289: ldr R7, [sp], +R7
l4290: mov R1, #2
l4291: str R15, [sp], -R1
l4292: str R14, [sp, #-48]!
l4293: eorNEs R6, R4, R8
l4294: addVS R6, R7, #708608
l4295: subs R4, R12, #3632
l4296: bicGE R10, R12, R11, LSL #9
l4297: bGE l4302
l4298: add R1, R0, #148
l4299: teq R1, R5
l4300: cmn R6, R3
l4301: b l4303
l4302: b l4299
l4303: andGT R8, R9, R4, LSR R6
l4304: b l4309
l4305: add R1, R0, #99
l4306: orrHI R12, R3, R6, LSR #30
l4307: adds R7, R0, R0, LSL R7
l4308: b l4310
l4309: b l4306
l4310: sbcCC R2, R8, R1, LSL #1
l4311: mvnLE R2, R10, RRX 
l4312: orrVCs R5, R8, R3, LSL #14
l4313: tstCS R5, #59904
l4314: subLTs R1, R14, R5, ASR #17
l4315: bHI l4321
l4316: orrs R14, R11, R9, ASR R4
l4317: subMI R7, R10, R7, ROR #28
l4318: rscPL R3, R9, #557056
l4319: eorVSs R11, R9, R10, ASR R5
l4320: rscMIs R1, R0, R8, RRX 
l4321: subs R12, R2, R8
l4322: rsb R11, R11, R12, LSL #3
l4323: movGTs R9, R2
l4324: orr R12, R5, R11, RRX 
l4325: rsbNE R4, R10, R5
l4326: clz R6, R9
l4327: mvnCC R8, R10, LSR R5
l4328: cmnNE R1, R8, ASR R12
l4329: eorCCs R12, R5, R2, RRX 
l4330: rsc R3, R12, R4, LSR #31
l4331: andLSs R8, R14, R5, ASR R7
l4332: bCS l4333
l4333: subs R2, R8, R3
l4334: mvns R14, #2096
l4335: bicMI R11, R9, R14, ROR R8
l4336: adcs R9, R9, R6
l4337: sbcNE R8, R0, #8
l4338: mvns R6, R5, LSR R12
l4339: mov R3, #47
l4340: ldr R14, [sp, +R3]
l4341: rscs R6, R15, R4
l4342: rsbHI R8, R3, #-721420288
l4343: teqEQ R4, R9, ROR #22
l4344: rsbGE R5, R4, R12
l4345: rscLE R9, R8, R9, RRX 
l4346: rscs R8, R2, #1216
l4347: teq R14, R8, LSR R8
l4348: tstGT R1, R1, LSR R4
l4349: rsbLTs R5, R2, R6, RRX 
l4350: mvnHIs R6, R15, ASR #21
l4351: bGE l4354
l4352: sbcGE R9, R14, #1036288
l4353: adcHIs R4, R4, R0, ROR #5
l4354: tstCC R2, R7, RRX 
l4355: andMIs R5, R3, R14
l4356: andEQ R14, R3, R3, ASR #27
l4357: adcs R7, R0, R14, LSL #18
l4358: teq R12, R5
l4359: cmnLE R15, R2, ROR #29
l4360: tst R1, R6, RRX 
l4361: rscVCs R7, R8, R0, LSL R6
l4362: b l4368
l4363: add R1, R0, #127
l4364: adcs R12, R15, R1, LSR #23
l4365: cmnNE R2, #1008
l4366: teqNE R10, R5
l4367: b l4369
l4368: b l4364
l4369: bCC l4377
l4370: eorCCs R2, R8, #4259840
l4371: cmnCS R4, R14, RRX 
l4372: rscs R6, R11, R0, ASR #29
l4373: cmpVS R15, R11, LSR #1
l4374: add R11, R8, R10, LSR #23
l4375: teq R9, R10, ASR R10
l4376: rsbVC R8, R10, #1744830464
l4377: bics R10, R10, R0
l4378: clzHI R10, R7
l4379: eorLT R12, R3, R5, ROR #15
l4380: and R2, R12, R6, LSL R10
l4381: bVC l4385
l4382: add R1, R0, #189
l4383: teq R4, R10, LSR R6
l4384: b l4386
l4385: b l4383
l4386: subLS R7, R15, R8
l4387: adcGEs R8, R7, R11
l4388: rsbs R7, R0, #140
l4389: ands R4, R14, R11, ASR #25
l4390: bics R6, R10, R9, RRX 
l4391: orrVCs R8, R7, R9
l4392: eorPLs R10, R6, #41680896
l4393: mov R7, #52
l4394: strHI R8, [sp, +R7]
l4395: bLT l4401
l4396: add R1, R0, #135
l4397: adcGEs R0, R2, R9
l4398: teqMI R9, #721420288
l4399: tst R1, #991232
l4400: b l4402
l4401: b l4397
l4402: cmpCC R5, R2, ASR #30
l4403: movEQ R9, R11, LSL #30
l4404: teq R14, R12, LSR R6
l4405: b l4410
l4406: add R1, R0, #50
l4407: cmp R5, #3904
l4408: teqVS R10, R10, LSL #26
l4409: b l4411
l4410: b l4407
l4411: str R7, [sp, #+52]!
l4412: mvnHIs R6, #3276800
l4413: bPL l4419
l4414: add R1, R0, #199
l4415: addCCs R3, R12, #218112
l4416: sbcMI R4, R1, R14, LSR R9
l4417: mvnMIs R14, R3
l4418: b l4420
l4419: b l4415
l4420: mvnLE R14, R2
l4421: bGT l4425
l4422: add R1, R0, #83
l4423: adcs R14, R2, R11, LSR #15
l4424: b l4426
l4425: b l4423
l4426: eorLEs R10, R6, R8, ROR R11
l4427: cmpHI R10, R7, LSL #31
l4428: mvnVC R5, R14, RRX 
l4429: ldr R6, [sp, #-48]
l4430: tst R9, R3
l4431: bicNEs R12, R12, R7, LSL R7
l4432: adcEQs R9, R15, R5, LSR #2
l4433: adcVC R3, R2, R7
l4434: teq R10, R10
l4435: clzVC R12, R4
l4436: bLT l4445
l4437: rscCC R10, R15, #20480
l4438: clz R12, R1
l4439: eors R0, R4, R9, ROR #2
l4440: addLT R14, R6, R8
l4441: movCS R6, #480
l4442: adds R0, R3, R4
l4443: bic R5, R11, R10, ASR #9
l4444: bic R8, R3, #8519680
l4445: rsbGE R6, R6, R12
l4446: b l4454
l4447: add R1, R0, #97
l4448: adcMIs R7, R8, R14, LSL R10
l4449: subCSs R10, R9, #-2147483647
l4450: clzLT R9, R5
l4451: sbcs R11, R1, #125952
l4452: adcVCs R10, R0, R4, ROR #21
l4453: b l4455
l4454: b l4448
l4455: bLT l4464
l4456: cmnGT R12, #-268435452
l4457: clz R0, R8
l4458: adcPL R2, R7, R1
l4459: cmp R14, R3, ROR #26
l4460: teq R9, R4, RRX 
l4461: mvnVCs R10, R7, ASR #16
l4462: bicEQs R0, R4, R3, ROR R6
l4463: rsbEQs R2, R6, R3, LSL #12
l4464: orrCS R11, R0, R5
l4465: subs R11, R2, #805306370
l4466: orrs R12, R12, R12, ROR #31
l4467: bVS l4472
l4468: rsbGE R12, R6, R1
l4469: eor R11, R6, R9, LSR #17
l4470: cmnCC R2, R1
l4471: teqCS R8, R2, LSR #2
l4472: movGTs R2, #733184
l4473: ldr R6, [sp], #-33
l4474: teqLS R3, #216
l4475: tst R10, R5
l4476: cmp R12, R8, ASR #0
l4477: adcs R4, R7, R4, RRX 
l4478: orrPL R3, R6, R2, ASR R11
l4479: subs R1, R9, R7, RRX 
l4480: bNE l4490
l4481: mvnPLs R9, R14, LSL #11
l4482: bics R14, R3, R4, LSL #3
l4483: clz R4, R3
l4484: bicNE R14, R8, #47360
l4485: subs R0, R15, R7, LSR #0
l4486: tstGT R7, #12224
l4487: cmpLS R9, R0
l4488: subs R1, R12, #1016
l4489: orrCS R9, R9, R4, LSL R1
l4490: teqGT R6, R4, LSL #17
l4491: orr R1, R12, R1
l4492: andGTs R14, R10, #11730944
l4493: mov R3, #512
l4494: sub R0, R6, R8, LSL #1
l4495: orrCCs R0, R7, R7, LSR R3
l4496: andLT R3, R2, R5, LSR R1
l4497: strEQ R5, [sp, #-19]
l4498: rsbs R2, R1, R11, LSR #14
l4499: mov R1, #1
l4500: str R6, [sp], +R1
l4501: subHIs R1, R15, R15
l4502: andNEs R9, R5, R1, ROR #7
l4503: clzVC R3, R7
l4504: subHI R4, R2, #17152
l4505: b l4512
l4506: add R1, R0, #46
l4507: teqCC R1, R4, LSL #31
l4508: sbcCSs R2, R3, R10, LSL R4
l4509: teq R8, R0
l4510: adcVSs R5, R12, R2, RRX 
l4511: b l4513
l4512: b l4507
l4513: sbcLSs R7, R4, #172
l4514: mvnNE R3, R10, LSL #1
l4515: mov R12, #17
l4516: ldr R5, [sp], +R12
l4517: adcs R1, R11, R10, RRX 
l4518: and R5, R0, R8
l4519: adcVC R12, R6, R6, ASR R7
l4520: tst R5, R15
l4521: cmnCC R4, R9, LSR #10
l4522: cmnCS R4, R10, RRX 
l4523: adds R10, R7, R7, LSL R7
l4524: rscGT R3, R5, R2, ROR #13
l4525: sub R2, R8, R3
l4526: ldrLT R2, [sp, #-49]
l4527: eorEQs R0, R2, R15
l4528: andCS R11, R2, R0, ROR #3
l4529: bNE l4533
l4530: sbcNEs R12, R11, #-2147483588
l4531: adc R10, R2, R0
l4532: rscEQ R1, R8, R6
l4533: subs R12, R14, R3, LSL R10
l4534: clzLS R4, R7
l4535: orrs R9, R6, R3, RRX 
l4536: cmnMI R8, R9
l4537: rsbMI R4, R5, R11, LSR #17
l4538: subLT R5, R15, R11
l4539: and R10, R0, R4, ASR R1
l4540: and R14, R3, R8
l4541: rsbs R2, R5, R10, ASR R11
l4542: mov R6, R12
l4543: addVCs R12, R9, #235520
l4544: rscMI R0, R1, R0
l4545: movEQ R11, R3, LSL R6
l4546: mov R2, #16
l4547: ldr R2, [sp, -R2]!
l4548: movs R9, R10, LSR #18
l4549: sbcVS R1, R12, R9, ROR #16
l4550: subNE R2, R15, #40192
l4551: sbcs R11, R4, R11
l4552: adcGEs R2, R12, R9, ROR R3
l4553: mov R5, #26
l4554: ldr R1, [sp], +R5
l4555: teqHI R2, #768
l4556: orrHIs R7, R12, R2
l4557: andGE R3, R4, #59
l4558: adcCS R11, R1, R8, ROR #23
l4559: cmp R10, R7, LSR R6
l4560: eor R12, R6, R8, LSR R11
l4561: orrVSs R10, R10, #3719168
l4562: tst R4, R6, LSL #26
l4563: bics R11, R7, R12
l4564: bVC l4569
l4565: add R1, R0, #228
l4566: adcVS R14, R0, R1, LSL #31
l4567: mvnCSs R0, #61341696
l4568: b l4570
l4569: b l4566
l4570: cmpGT R1, #10485760
l4571: movGE R6, R7, ASR R3
l4572: mvn R11, R14
l4573: ands R8, R10, R3, LSR R2
l4574: b l4583
l4575: rsbLTs R3, R8, R6, LSL R12
l4576: andGT R0, R0, R1
l4577: and R8, R3, R7
l4578: andVS R4, R1, R1, LSR R8
l4579: eorCCs R5, R1, R0, LSR R7
l4580: subVSs R14, R14, R0, ASR #26
l4581: cmp R4, #261120
l4582: mvnHIs R10, #157
l4583: mvns R9, R11, RRX 
l4584: andVS R3, R14, R11, LSL R9
l4585: clzMI R14, R7
l4586: eorGEs R4, R5, R7, LSR #31
l4587: ands R3, R8, #36864
l4588: addMI R14, R2, R2
l4589: eorMI R14, R3, R4, ASR #7
l4590: clzLT R5, R12
l4591: rscHIs R12, R11, R15
l4592: ands R2, R0, R10
l4593: orrPL R6, R6, #636
l4594: teqCS R15, R15, ASR #20
l4595: adc R9, R10, R3
l4596: teqLS R14, R15
l4597: addEQs R3, R7, R15, LSR #24
l4598: cmpEQ R7, R15
l4599: mov R11, #47
l4600: str R9, [sp, -R11]!
l4601: subLTs R11, R1, R7
l4602: bic R6, R10, R10, LSL R4
l4603: ands R10, R8, R9, ASR #16
l4604: clz R4, R9
l4605: movVSs R2, #864
l4606: ldr R11, [sp, #+20]!
l4607: adc R6, R5, R7, LSR R11
l4608: cmnVS R10, R10
l4609: rsbVS R3, R1, R0, RRX 
l4610: bGE l4619
l4611: and R11, R2, R9, ROR #6
l4612: mvns R9, R4, ASR R3
l4613: tst R10, R9, ROR R6
l4614: sbcHIs R14, R7, R12
l4615: movs R2, #6720
l4616: mvnGE R10, R8, LSR R9
l4617: orr R2, R8, R8, RRX 
l4618: andGTs R14, R14, R12, ROR R2
l4619: movLE R4, #44032
l4620: bicNEs R2, R0, R11, ASR #12
l4621: orr R9, R7, R12
l4622: rsbNE R3, R5, R10, LSR R10
l4623: mvns R2, R12, ROR #11
l4624: mov R3, #1600
l4625: rsbNEs R2, R6, R8
l4626: cmn R15, #12189696
l4627: clzNE R1, R4
l4628: adcGE R9, R6, #-1879048192
l4629: bic R2, R7, R0
l4630: bHI l4638
l4631: add R1, R0, #95
l4632: bicCC R1, R4, R7, RRX 
l4633: movNE R1, R7, LSR #5
l4634: orrs R6, R2, R11, RRX 
l4635: sbc R12, R5, #2192
l4636: adcCS R8, R5, #20447232
l4637: b l4639
l4638: b l4632
l4639: addGEs R7, R3, R11, LSR R0
l4640: adcLS R6, R7, R8, ROR R0
l4641: bicLT R2, R3, #9
l4642: rsc R10, R14, R12, LSL #17
l4643: ands R2, R5, #3670016
l4644: ands R11, R14, R3, LSL R0
l4645: cmpLS R4, R3, LSR #12
l4646: teq R3, #-218103808
l4647: adcHIs R7, R14, R8, ROR #2
l4648: bLS l4657
l4649: mvns R2, #1006632960
l4650: bicGT R6, R0, R10, ROR #11
l4651: addCC R11, R12, R14
l4652: subMI R10, R14, R3, LSR R1
l4653: sbcs R10, R4, R6
l4654: rsbVS R7, R11, R6, RRX 
l4655: adcVSs R2, R15, #2336
l4656: eorPLs R6, R14, #-2013265918
l4657: mov R8, R4, ROR R11
l4658: bVC l4667
l4659: add R1, R0, #243
l4660: teqMI R14, R1, LSR #13
l4661: teq R0, R11
l4662: rsbCC R12, R12, R14, ASR R1
l4663: tstVS R2, R12, LSR R8
l4664: sub R12, R14, R9, LSL #23
l4665: rsbEQs R6, R5, R15, LSR #3
l4666: b l4668
l4667: b l4660
l4668: teqMI R15, R9, ROR #10
l4669: movs R3, R1, LSL #20
l4670: tstVC R5, R6
l4671: sub R5, R10, R0
l4672: b l4680
l4673: subNEs R8, R12, R3
l4674: eorLEs R8, R14, R2
l4675: rsbs R3, R4, #860
l4676: mvnGE R1, R12
l4677: eors R5, R5, R12, ASR #19
l4678: adcPLs R12, R8, R11, LSL R11
l4679: clz R6, R7
l4680: eors R14, R2, #7471104
l4681: str R8, [sp], #+36
l4682: bPL l4689
l4683: add R1, R0, #118
l4684: teqMI R8, #212
l4685: orrCSs R8, R9, R9, LSR #15
l4686: rsbCS R12, R10, #2688
l4687: clz R2, R5
l4688: b l4690
l4689: b l4684
l4690: rscs R6, R5, R14, LSR R3
l4691: andPLs R1, R5, R14
l4692: cmn R1, #33292288
l4693: and R2, R11, R15, ASR #21
l4694: bLS l4704
l4695: movVSs R3, R10, RRX 
l4696: subCSs R3, R12, R7, LSR R9
l4697: subLEs R8, R7, R2, ROR R3
l4698: adcMIs R12, R12, R7, LSR #23
l4699: teq R5, R15
l4700: andEQs R0, R4, R6, LSL R2
l4701: sbc R1, R6, #1120
l4702: subLS R10, R2, R14, LSR R8
l4703: mvn R0, R15
l4704: adc R9, R7, #308
l4705: rsbHI R0, R9, R7
l4706: ands R4, R1, #4608
l4707: addHI R5, R11, R1, ASR R2
l4708: sbcs R2, R10, R1, ASR #28
l4709: rsb R7, R14, R0, LSL R10
l4710: cmnLS R12, R9, ROR R0
l4711: teq R4, R6, RRX 
l4712: cmpGT R3, R3
l4713: adcs R12, R7, R11, LSL #29
l4714: bMI l4721
l4715: add R1, R0, #35
l4716: teqGE R9, R14
l4717: cmpNE R1, R12
l4718: andGEs R2, R4, #61184
l4719: rscMI R10, R12, R5, ROR R12
l4720: b l4722
l4721: b l4716
l4722: movCSs R3, R12
l4723: mvns R1, #28311552
l4724: mvns R12, R12
l4725: tst R15, R14
l4726: eor R7, R4, R0, ROR R3
l4727: b l4732
l4728: add R1, R0, #74
l4729: andLS R5, R5, R15, LSL #18
l4730: cmn R8, #6029312
l4731: b l4733
l4732: b l4729
l4733: sub R5, R11, R5, ROR R3
l4734: mvnLEs R5, R2
l4735: adcGTs R8, R11, #9728
l4736: sbcLSs R3, R10, R4, ASR #1
l4737: ands R12, R7, R8
l4738: mvns R10, R9, ROR R1
l4739: subs R12, R14, R6
l4740: andPL R4, R5, R15, ROR #8
l4741: clz R1, R5
l4742: eors R7, R11, #728
l4743: sub R10, R10, R12, LSR #21
l4744: bicHIs R10, R12, R6, LSR #15
l4745: cmpEQ R10, R0
l4746: andNE R4, R2, R2
l4747: orrs R0, R5, R10
l4748: mvnGTs R14, #10176
l4749: bMI l4757
l4750: add R1, R0, #187
l4751: rsb R4, R6, R6, ROR #19
l4752: teqCS R14, R14
l4753: cmn R2, R6
l4754: cmnGT R1, R12
l4755: cmpCS R11, #135168
l4756: b l4758
l4757: b l4751
l4758: bicCCs R1, R3, #14336
l4759: subGTs R2, R12, R9
l4760: bNE l4762
l4761: rscPLs R5, R6, #36608
l4762: cmp R0, #2555904
l4763: bicLT R14, R5, #1879048205
l4764: mov R6, #0
l4765: ldr R2, [sp], +R6
l4766: adcCC R10, R12, R11, ASR #8
l4767: rscGTs R6, R0, R10, LSR #21
l4768: eor R1, R0, R14, RRX 
l4769: subs R14, R5, R12
l4770: b l4775
l4771: add R1, R0, #73
l4772: tst R1, R9, LSR #13
l4773: rscs R11, R6, R5, ASR #15
l4774: b l4776
l4775: b l4772
l4776: eorLEs R10, R3, R1, LSL R3
l4777: eorNEs R10, R6, R10, RRX 
l4778: bLS l4786
l4779: add R1, R0, #176
l4780: teqLE R3, R15, ROR #12
l4781: clz R12, R4
l4782: adc R3, R4, R1, ROR #30
l4783: bicLTs R4, R11, R7, LSL #11
l4784: clzVS R4, R5
l4785: b l4787
l4786: b l4780
l4787: andCS R6, R6, #6881280
l4788: teqLE R4, R10
l4789: adcMI R8, R8, R12, ASR R7
l4790: andLS R11, R4, R9, RRX 
l4791: mov R6, #64
l4792: str R8, [sp, -R6]!
l4793: eorHI R4, R14, #110592
l4794: mov R9, #12
l4795: ldr R7, [sp, +R9]!
l4796: and R5, R0, R1, ASR R4
l4797: rscs R4, R6, R9
l4798: bics R11, R12, #-1073741824
l4799: subGEs R6, R14, R0
l4800: mvns R2, R11, RRX 
l4801: mvns R3, R12, ROR R1
l4802: tst R11, R4, ROR R4
l4803: cmpVC R1, R8
l4804: b l4810
l4805: add R1, R0, #195
l4806: cmn R15, #-2113929216
l4807: orrs R2, R15, R1, ASR #18
l4808: sbcs R12, R14, R3, LSR R0
l4809: b l4811
l4810: b l4806
l4811: eorGE R9, R15, R2, ROR #7
l4812: tst R2, R7, LSL #4
l4813: addNE R3, R7, R12, RRX 
l4814: bGE l4824
l4815: clzMI R8, R8
l4816: movGEs R2, R4, ASR #22
l4817: eorMI R5, R10, R7
l4818: adcCC R4, R15, R9, LSL #28
l4819: rsbVSs R11, R2, R11, RRX 
l4820: mvn R8, R8, ASR R12
l4821: orrLE R3, R4, R10
l4822: tstVS R15, R2
l4823: mvnCC R0, R11, LSR R7
l4824: clz R5, R14
l4825: bics R1, R8, R4
l4826: tstHI R11, R4, LSR R10
l4827: adc R12, R3, R11, LSR R12
l4828: andVS R2, R15, R9, LSR #18
l4829: sub R4, R8, R15
l4830: sub R0, R10, #67108864
l4831: rscCSs R12, R5, R5
l4832: ldr R10, [sp, #+52]!
l4833: bic R9, R4, R4, ASR R9
l4834: b l4843
l4835: adc R8, R1, R8
l4836: subs R3, R11, R8
l4837: bicHI R5, R0, R12, LSL R12
l4838: cmpGT R11, R0, LSR #4
l4839: tst R3, R9, ROR #17
l4840: adcGEs R14, R15, R10
l4841: movGTs R2, R8, ASR R0
l4842: ands R10, R15, #444596224
l4843: sbcNEs R3, R12, #133169152
l4844: adcs R2, R6, R14, RRX 
l4845: tstLE R12, R11
l4846: mvnHIs R9, R6, ROR #5
l4847: subMI R3, R9, R2, LSR R14
l4848: and R9, R8, R12, ASR R12
l4849: sbc R10, R7, R14
l4850: bLT l4854
l4851: cmp R7, #9728
l4852: adcGT R6, R3, R9
l4853: sbc R3, R10, R2, ROR R9
l4854: cmnGE R7, #50432
l4855: sbcPL R9, R9, R3
l4856: b l4857
l4857: bicLS R3, R12, R4, ASR #9
l4858: bLE l4865
l4859: cmpLT R14, R3, LSL R7
l4860: rsbGE R7, R11, R3
l4861: subs R6, R15, R8
l4862: eors R3, R1, #102
l4863: clz R8, R6
l4864: sub R1, R1, R7
l4865: bicHIs R0, R14, #73400320
l4866: sbcMI R5, R2, R4, RRX 
l4867: sbcCSs R7, R3, #536870927
l4868: sub R11, R7, R6
l4869: adcPL R2, R2, R0, LSR R9
l4870: sbcGTs R1, R7, R9, ASR #28
l4871: eorNE R8, R4, R4, LSL R2
l4872: sub R10, R0, R9
l4873: adcPLs R14, R6, R10, ROR R12
l4874: and R4, R12, R3
l4875: cmnVS R14, #-201326591
l4876: cmpMI R8, #5767168
l4877: and R11, R4, R2, LSR #23
l4878: rsb R7, R0, R1, ASR #24
l4879: b l4883
l4880: add R1, R0, #146
l4881: rsbCS R6, R12, R9, RRX 
l4882: b l4884
l4883: b l4881
l4884: andEQs R9, R11, R6
l4885: orrLTs R0, R1, R9, ASR #2
l4886: b l4891
l4887: add R1, R0, #212
l4888: andEQs R2, R3, #154624
l4889: sbc R1, R11, R4, LSL #5
l4890: b l4892
l4891: b l4888
l4892: sbcNEs R4, R5, R11, LSR #2
l4893: mvns R0, #8192
l4894: bicLTs R5, R3, R3, LSL #16
l4895: bEQ l4903
l4896: add R1, R0, #149
l4897: addGT R3, R1, R15, LSR #18
l4898: eorGEs R0, R11, #-268435446
l4899: adds R12, R0, #6815744
l4900: rscEQ R9, R9, R3, ROR #4
l4901: adcs R10, R2, R10
l4902: b l4904
l4903: b l4897
l4904: rsbs R8, R0, R6
l4905: mvns R5, #-1610612721
l4906: b l4912
l4907: add R1, R0, #108
l4908: eorNE R10, R15, #68157440
l4909: movs R1, R9, ROR #25
l4910: sub R3, R9, #293601280
l4911: b l4913
l4912: b l4908
l4913: rsb R12, R3, R6, ROR #29
l4914: bLS l4919
l4915: teq R12, R2
l4916: eor R12, R4, R1, ROR #26
l4917: movNEs R9, R4
l4918: and R5, R0, R10, LSR #7
l4919: eorHIs R12, R11, #249561088
l4920: orrGE R7, R0, R5, RRX 
l4921: teq R9, #63
l4922: bicMI R1, R5, R8, LSL R14
l4923: b l4932
l4924: orrCS R6, R7, R10, LSL R8
l4925: movMI R3, #11264
l4926: subGEs R0, R11, R14, ROR #27
l4927: sbcCS R3, R6, R7
l4928: sbcLTs R12, R10, R14, LSR #0
l4929: tstHI R3, R12
l4930: mvns R11, R10, RRX 
l4931: cmn R3, #7
l4932: eor R9, R15, R4, LSR #22
l4933: str R2, [sp, #-40]!
l4934: cmnLE R0, R1, ASR R14
l4935: bic R3, R10, R10, RRX 
l4936: mvnCC R4, R11
l4937: clzNE R12, R12
l4938: sbcLE R11, R11, R9
l4939: strPL R0, [sp, #+20]
l4940: cmnGE R6, R7, LSR #5
l4941: b l4945
l4942: add R1, R0, #255
l4943: addGE R1, R0, R4, RRX 
l4944: b l4946
l4945: b l4943
l4946: teqLE R7, #3760
l4947: bNE l4948
l4948: adcs R10, R3, R7, LSL #9
l4949: mov R2, R1, LSL R12
l4950: eorGT R7, R15, R5, RRX 
l4951: mvnMI R5, #268435463
l4952: eors R7, R9, R1, LSL R7
l4953: teqGE R0, R2, ROR #22
l4954: sbc R12, R5, R11, RRX 
l4955: bics R4, R11, R7, ROR #25
l4956: bGE l4960
l4957: add R1, R0, #110
l4958: rsb R2, R9, R4, LSR #27
l4959: b l4961
l4960: b l4958
l4961: bicCCs R4, R0, R1, ASR #21
l4962: orr R9, R8, #46399488
l4963: bicVCs R0, R7, #179306496
l4964: ands R5, R10, R4, RRX 
l4965: addLEs R11, R11, R14, LSR R4
l4966: b l4975
l4967: add R1, R0, #56
l4968: subLE R8, R9, #2555904
l4969: rsbVCs R0, R0, R10, LSR R1
l4970: addPL R1, R14, R10
l4971: rsc R14, R10, #15616
l4972: sbc R10, R7, #114688
l4973: teqLS R7, #238026752
l4974: b l4976
l4975: b l4968
l4976: rsbPLs R0, R14, R3
l4977: ldr R9, [sp, #-15]!
l4978: clzMI R2, R14
l4979: b l4987
l4980: add R1, R0, #136
l4981: teqLS R1, R5, RRX 
l4982: teqCS R6, R7, LSL R2
l4983: bicGTs R3, R3, #3200
l4984: mvnNEs R10, R6, LSR #13
l4985: rsbCC R0, R4, #3840
l4986: b l4988
l4987: b l4981
l4988: mvnGTs R11, #101376
l4989: rsbCSs R5, R15, #13041664
l4990: orrGTs R12, R9, R5, ROR R11
l4991: cmn R0, #-1073741820
l4992: bic R5, R10, R11
l4993: orr R9, R4, #7232
l4994: cmnMI R10, R11, RRX 
l4995: clzLE R6, R9
l4996: rscHI R14, R10, R4
l4997: tst R5, R7, RRX 
l4998: bics R4, R11, #1540096
l4999: sbcGT R6, R14, R3, LSL R10
l5000: addPLs R5, R15, R2, LSR #30
end: b end

