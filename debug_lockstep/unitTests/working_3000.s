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
val1: .word 2626349424
next1:ldr R2, val2
b next2
val2: .word 148388765
next2:ldr R3, val3
b next3
val3: .word 3008249240
next3:ldr R4, val4
b next4
val4: .word 2951720209
next4:ldr R5, val5
b next5
val5: .word 1001419689
next5:ldr R6, val6
b next6
val6: .word 548688019
next6:ldr R7, val7
b next7
val7: .word 2672736267
next7:ldr R8, val8
b next8
val8: .word 3017677781
next8:ldr R9, val9
b next9
val9: .word 1567762999
next9:ldr R10, val10
b next10
val10: .word 2882135417
next10:ldr R11, val11
b next11
val11: .word 3430022447
next11:ldr R12, val12
b next12
val12: .word 1475797629
next12:ldr R14, val14
b next14
val14: .word 2044679241

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 2579313162
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 450231059
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 2098955532
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 4035286043
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 2951787605
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 470820958
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 497157195
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 3036709288
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 881329111
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 1591342414
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 3056524819
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 1621900088
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 861594821
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 376162124
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 343393540
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 2981286315
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 3967724305
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 1070429459
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 2841485812
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 3952015199
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 536622309
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: mov R11, R7, LSL R0
l2: eor R2, R11, R8, LSL #19
l3: b l6
l4: sub R7, R11, #471040
l5: cmnLE R15, R2, ROR #29
l6: orrVSs R12, R7, R12, LSR #17
l7: movCCs R0, R12
l8: orr R2, R7, R5
l9: cmpLT R15, R5
l10: bPL l13
l11: movGTs R12, #66060288
l12: tst R8, #46137344
l13: sbcVC R10, R4, R2, ROR R7
l14: orrs R4, R6, R0, ROR R7
l15: mvnHI R1, #-939524093
l16: teqCC R9, #192
l17: bic R7, R7, R11
l18: teq R11, R6
l19: bVS l28
l20: add R1, R0, #29
l21: cmnVC R15, R10, RRX 
l22: tstNE R12, #921600
l23: rsbHIs R9, R0, R12
l24: addVCs R3, R9, #15466496
l25: teq R6, R11
l26: teqLE R7, R8, RRX 
l27: b l29
l28: b l21
l29: rscLE R10, R5, #515899392
l30: mov R5, R12, LSL #9
l31: mov R7, #12
l32: ldrVSsb R3, [sp, -R7]
l33: sbcMI R6, R5, R11
l34: mov R7, #58
l35: ldrh R10, [sp, -R7]
l36: ldmDA R13!, {R0, R3, R6, R7, R8, R9, R11, R12, R14}
l37: umlalVSs R11, R12, R3, R10
l38: tst R7, #227
l39: movs R11, R10, ASR R0
l40: clz R1, R4
l41: addMI R9, R12, R9, LSL #10
l42: adcVCs R7, R1, R5, RRX 
l43: sbcGE R3, R5, R4
l44: sub R8, R8, R2, LSR R2
l45: mvnVC R0, #835584
l46: stmDA R13!, {R13, R14}
l47: rscNEs R14, R10, R5, LSL #13
l48: clzGE R7, R3
l49: rscHI R0, R10, R14, LSL R12
l50: cmnVC R2, R15
l51: cmp R2, R4
l52: tstLS R14, R8
l53: bEQ l58
l54: add R1, R0, #132
l55: sbcs R10, R3, #-738197502
l56: movCC R3, R10, ROR #17
l57: b l59
l58: b l55
l59: eor R4, R6, #1442840576
l60: orrLEs R0, R4, R11
l61: subVCs R3, R4, R4, ROR R1
l62: cmn R3, R6
l63: tst R7, #1441792
l64: sub R9, R2, R2
l65: andLE R1, R10, R15
l66: strh R7, [sp, #+28]
l67: mov R3, #24
l68: strGEh R8, [sp, +R3]
l69: ldrsb R11, [sp, #-25]
l70: cmpVC R9, R10, LSL #26
l71: cmp R1, R8
l72: ldmIA R13!, {R0, R2, R12}
l73: andNEs R7, R12, #-218103808
l74: stmIA R13!, {R1, R7, R9, R14}
l75: adc R0, R5, #143360
l76: mvnGTs R4, R8, ROR #31
l77: mov R4, #44
l78: strMIB R2, [sp, -R4]
l79: rscs R0, R10, R14, ROR #18
l80: eorVCs R11, R14, R3, LSR #0
l81: umlal R11, R1, R14, R9
l82: adc R10, R15, R2, ASR #25
l83: rscNEs R3, R2, R14
l84: mvnLS R3, R4
l85: tstLE R8, R15, RRX 
l86: mov R11, #2
l87: ldrsb R1, [sp, +R11]
l88: b l94
l89: add R1, R0, #76
l90: movVCs R10, R15
l91: teq R14, #34078720
l92: tstEQ R3, R2, ASR R3
l93: b l95
l94: b l90
l95: b l100
l96: orrVS R8, R3, R4
l97: eor R4, R8, R3, LSL #29
l98: orrGEs R7, R1, R5, ROR #21
l99: clzHI R3, R14
l100: sub R0, R5, #536870923
l101: addVC R0, R0, #40960
l102: teqVC R0, #587202560
l103: cmn R7, R8, RRX 
l104: bGE l108
l105: add R1, R0, #91
l106: clz R1, R0
l107: b l109
l108: b l106
l109: smullPLs R11, R4, R0, R14
l110: clzEQ R2, R0
l111: bMI l116
l112: adcVSs R10, R9, R12, LSR #23
l113: ands R4, R12, #217
l114: clz R11, R6
l115: rsb R4, R10, R4, LSR R0
l116: cmnLE R5, #13632
l117: cmpGT R14, #1174405120
l118: clz R12, R8
l119: rsbHI R1, R8, R10, LSL #10
l120: mov R12, #8
l121: strB R10, [sp, +R12]
l122: movCC R6, #12032
l123: adcLS R6, R8, #553648128
l124: teqCC R15, R2, LSL #23
l125: ldmDB R13!, {R4, R5, R6, R7, R9, R10, R14}
l126: ldmIA R13!, {R9, R14}
l127: bLE l135
l128: add R1, R0, #156
l129: eorVCs R2, R7, #944
l130: clz R4, R11
l131: cmnVS R2, R5
l132: cmp R14, #8064
l133: bic R6, R8, R6, RRX 
l134: b l136
l135: b l129
l136: rscs R2, R7, R0
l137: rsbHI R9, R2, R11
l138: teqNE R15, #-939524095
l139: adcVCs R6, R15, R5, LSR #18
l140: stmDB R13!, {R0, R2, R3, R5, R8, R10, R12, R14, R15}
l141: subMI R0, R10, R11, ROR R5
l142: strVSh R1, [sp, #+38]
l143: sbc R8, R0, #973078528
l144: adcs R6, R6, R2
l145: sbcVS R3, R5, R5, ASR #20
l146: cmnLE R3, R0, RRX 
l147: sbcGT R8, R3, R8
l148: b l158
l149: tstLS R3, R8, LSR R3
l150: rsbs R9, R5, R12, RRX 
l151: orrEQs R5, R4, #-2147483592
l152: adc R12, R5, R4
l153: cmpMI R4, R0
l154: rscVC R3, R12, R8, RRX 
l155: rsbEQ R10, R9, R3
l156: sub R9, R4, #-620756992
l157: tstLE R2, #1072
l158: cmn R12, #7602176
l159: cmnMI R14, R2, LSR #2
l160: adcVC R2, R0, R14, ROR R4
l161: rsc R11, R5, R6
l162: cmpGE R12, R8
l163: orr R7, R9, R4
l164: ldmGEDA R13, {R0, R1}
l165: eorEQs R6, R5, #4
l166: mov R3, #22
l167: ldrh R4, [sp, +R3]
l168: teq R10, R2, RRX 
l169: subEQ R5, R7, R1, ROR R5
l170: ldmIA R13!, {R0, R2, R3, R6, R7, R8, R9, R10, R11, R12, R14}
l171: orr R3, R6, R5, ASR #29
l172: mov R6, #38
l173: ldrVCh R6, [sp, -R6]
l174: subVS R4, R11, R11, RRX 
l175: teqLS R8, #-1828716544
l176: rsbVS R12, R9, R9, ASR #30
l177: rscs R1, R8, R6, RRX 
l178: sbcLT R14, R8, #2096
l179: tst R3, R12, ASR R14
l180: cmp R5, R12, ROR R7
l181: rscs R6, R2, R9, ASR #14
l182: rscPLs R12, R7, R0
l183: bic R2, R5, #968
l184: add R0, R9, R5, LSR R4
l185: stmIB R13!, {R13, R14}
l186: b l194
l187: add R1, R0, #150
l188: bicCC R2, R4, R1, ASR #27
l189: rsb R12, R0, R8, ASR R12
l190: clzVC R1, R1
l191: orrLT R12, R14, R4, ROR R8
l192: sbc R4, R14, R6
l193: b l195
l194: b l188
l195: smlalCCs R2, R5, R12, R0
l196: cmn R4, #1073741872
l197: umull R1, R8, R14, R8
l198: subs R6, R11, R4
l199: orr R9, R2, #136314880
l200: tstLE R10, #469762051
l201: andGTs R1, R6, R5
l202: bGE l211
l203: teq R8, R4
l204: orrGE R9, R2, R5, RRX 
l205: sub R11, R6, R1, RRX 
l206: and R4, R15, R3, LSR #28
l207: movs R12, #376832
l208: movs R1, R3, LSL #14
l209: rscCCs R2, R6, R4, ROR R4
l210: bics R12, R14, R12, ROR #21
l211: rsbNE R5, R8, R2
l212: subLE R6, R8, R11, LSR #14
l213: bMI l223
l214: addCC R1, R8, R4, LSL #14
l215: tst R6, R14, LSR R5
l216: eors R3, R12, R0
l217: add R11, R10, R5, RRX 
l218: teq R2, R5
l219: bic R6, R14, #39168
l220: cmpLS R12, R5
l221: orrLTs R3, R6, R7
l222: add R4, R12, #3488
l223: orrNEs R6, R2, R0, ROR #9
l224: adcEQs R3, R15, #464
l225: adcPL R6, R11, R5, ASR R8
l226: mov R14, #8
l227: ldrLSB R9, [sp, +R14]
l228: andLTs R12, R10, R12, ASR #14
l229: subGT R2, R8, R11, LSR #25
l230: bGT l235
l231: cmpHI R12, #180355072
l232: orrGTs R0, R15, R4
l233: rsbs R0, R5, R14
l234: rsbMIs R6, R9, #1744830465
l235: addEQs R14, R6, R4, RRX 
l236: stmMIDA R13, {R0, R1, R5, R6, R7, R8, R9, R10, R12, R13, R14, R15}
l237: rscMI R7, R6, R10
l238: sbcCCs R7, R0, R12, RRX 
l239: subVCs R9, R5, R7
l240: orrs R3, R6, R11
l241: ands R12, R9, R1
l242: adcGTs R10, R12, #157286400
l243: ldrsb R4, [sp, #+7]
l244: movs R7, R2, LSR R11
l245: ldrGTsh R14, [sp, #+74]
l246: mul R14, R1, R8
l247: andPL R11, R7, R4
l248: movCS R7, R4, ASR R10
l249: bicCS R3, R5, #112
l250: strNEB R9, [sp, #+24]
l251: mulMIs R11, R2, R5
l252: subGE R7, R3, R10
l253: tst R1, R11, LSL R11
l254: subs R3, R2, #5439488
l255: smlalCC R4, R8, R7, R2
l256: smull R14, R10, R6, R11
l257: clz R14, R11
l258: sbcMI R2, R2, R3, ROR #30
l259: mov R8, #0
l260: ldr R6, [sp], +R8
l261: umlal R6, R0, R5, R1
l262: orr R7, R2, R10, LSL #19
l263: eorMI R10, R7, #272
l264: subGE R8, R9, R7
l265: stmDA R13!, {R4}
l266: subs R11, R7, R14
l267: subLTs R0, R6, R5, ASR R3
l268: subNEs R12, R0, R4, ASR #9
l269: mul R10, R7, R3
l270: orrGTs R12, R11, R0, ROR R5
l271: sub R8, R6, #1984
l272: b l278
l273: add R1, R0, #225
l274: subCC R9, R4, R11, RRX 
l275: adcLEs R11, R2, R2
l276: sbcs R8, R11, R6, ASR R7
l277: b l279
l278: b l274
l279: adcCC R14, R5, R12
l280: bicCSs R12, R8, #13565952
l281: subs R6, R3, R15, ROR #16
l282: ldmIA R13!, {R0, R1, R2, R3, R4, R8, R9, R10, R14}
l283: eorGEs R4, R14, R11
l284: movLEs R14, R5, RRX 
l285: andCS R3, R1, R12
l286: sbcNEs R11, R11, #708608
l287: sbc R4, R7, R14, LSR R9
l288: eorLTs R2, R12, R6, ASR #6
l289: mov R4, #33
l290: ldrB R14, [sp, +R4]
l291: subNEs R11, R9, R1, ROR R3
l292: cmp R0, R2
l293: sbcVC R2, R8, #805306381
l294: andCS R2, R8, R9, ASR R12
l295: orrs R12, R8, R4, ROR R11
l296: andHI R5, R6, R2
l297: bLE l301
l298: clz R1, R4
l299: subs R0, R1, R14, ASR R1
l300: mvnLEs R11, R15, RRX 
l301: bicVS R4, R2, R3, LSR #13
l302: sub R12, R8, R5
l303: sub R9, R14, #734003200
l304: sbcLEs R9, R11, R14, RRX 
l305: sbcCS R5, R4, R12, LSR R9
l306: mov R9, #40
l307: ldrsh R9, [sp, +R9]
l308: bicGE R11, R14, R4, ASR R4
l309: rsbCS R12, R10, R6, RRX 
l310: str R10, [sp, #+20]!
l311: bic R6, R5, R7, ROR #19
l312: eor R10, R1, R3, ASR #15
l313: cmpHI R9, R7, LSL R3
l314: andPL R5, R0, R11, ROR R1
l315: subs R4, R14, #72704
l316: subNEs R0, R7, #-1073741804
l317: umull R1, R9, R6, R11
l318: rscLE R6, R4, R2, RRX 
l319: rscEQs R3, R11, #1000
l320: bic R4, R6, R14, ROR #4
l321: rsbLT R8, R3, R11, ASR #6
l322: bHI l326
l323: add R1, R0, #126
l324: orr R12, R9, R5, ASR R14
l325: b l327
l326: b l324
l327: ldmIB R13!, {R0, R4, R7, R10, R14}
l328: tstLE R4, #-335544317
l329: mla R8, R6, R10, R7
l330: cmnNE R14, R14, RRX 
l331: ands R7, R10, R10, LSL R3
l332: bNE l342
l333: rscLS R8, R4, R2, LSL #17
l334: adcs R9, R15, #37748736
l335: ands R9, R14, R9, RRX 
l336: cmnCS R3, R8, LSL R7
l337: movNE R1, R3, RRX 
l338: eor R0, R6, R11, LSL R5
l339: orrMIs R1, R8, #115712
l340: orrGTs R6, R5, R5
l341: rsbMIs R12, R12, R1
l342: tstCS R3, #754974720
l343: mul R0, R12, R8
l344: cmnCC R11, #536870925
l345: adcs R2, R5, R1, LSR #1
l346: cmpGT R6, R7
l347: ands R0, R8, R5, ROR #5
l348: rscCC R14, R5, R9, ROR R10
l349: bHI l356
l350: add R1, R0, #226
l351: orrs R7, R7, R0
l352: eorEQ R2, R11, R11, LSL R12
l353: cmnCC R7, R3
l354: subLTs R7, R3, #4014080
l355: b l357
l356: b l351
l357: rsbLT R3, R8, #671088640
l358: rscLEs R12, R1, #671744
l359: cmp R6, R0, ASR R4
l360: bicGTs R6, R9, #47616
l361: ands R12, R7, R3
l362: bic R6, R4, R11, ASR R3
l363: eorEQs R12, R6, R5, ROR #23
l364: mvnCSs R0, R9, RRX 
l365: orr R7, R0, R3
l366: mulNE R6, R1, R5
l367: bVC l372
l368: add R1, R0, #20
l369: bic R11, R9, R3
l370: sbcs R5, R14, R4, ROR #31
l371: b l373
l372: b l369
l373: cmpHI R4, #893386752
l374: bEQ l383
l375: clzGT R7, R14
l376: cmn R3, R11
l377: orr R2, R12, #2473984
l378: add R14, R14, R4, ASR #27
l379: cmpEQ R0, R3, LSL #25
l380: eor R9, R4, #983040
l381: mvnGT R12, R9
l382: clzLS R6, R7
l383: eors R8, R1, R1, LSL R0
l384: ldmLSDB R13, {R4, R5}
l385: mov R5, #27
l386: ldrB R14, [sp, -R5]
l387: andGT R2, R8, R15, RRX 
l388: subs R12, R3, R14, ROR R12
l389: orrNEs R8, R4, R2
l390: ldr R4, [sp], #-8
l391: subs R14, R1, R3, RRX 
l392: adcs R2, R6, #3
l393: orrPL R6, R7, R12, ROR R6
l394: teq R5, R11, ROR R3
l395: subLTs R9, R11, R1
l396: eor R2, R12, R12, LSR #2
l397: cmpMI R1, R9
l398: tstCS R4, R14, RRX 
l399: eorLT R1, R7, #9344
l400: smullCC R3, R7, R4, R0
l401: orr R8, R10, #3129344
l402: mov R11, #12
l403: ldrVC R9, [sp, -R11]
l404: mvns R12, R7, LSL #26
l405: bGE l406
l406: cmpLS R6, R6, ROR R2
l407: mov R0, #14
l408: strCCB R9, [sp, -R0]
l409: bGT l418
l410: andLTs R1, R1, R3, LSL R11
l411: movs R0, R9
l412: clzNE R9, R3
l413: rscPLs R1, R11, #2416
l414: ands R6, R5, R5
l415: movs R3, R2, ASR #26
l416: eorHIs R7, R15, R4
l417: mvnLE R10, R4, LSR R11
l418: add R7, R5, R10, LSL R14
l419: mov R3, #16
l420: strCS R0, [sp, +R3]
l421: cmnNE R2, R11, ROR R8
l422: bicCS R3, R10, R14, LSR R9
l423: subs R3, R15, R5, RRX 
l424: bCS l432
l425: add R1, R0, #61
l426: cmnPL R12, #448790528
l427: adcs R8, R11, R0, ROR R12
l428: cmn R15, #832
l429: sub R5, R8, R8, RRX 
l430: tstCC R2, R6, ASR R3
l431: b l433
l432: b l426
l433: bLE l441
l434: tstVC R4, #7602176
l435: teqLS R8, #38010880
l436: ands R11, R1, R2, LSR R10
l437: clz R11, R12
l438: addVCs R4, R2, R15
l439: orrGTs R0, R8, R14, ROR #17
l440: mvnEQs R9, R9, ROR #31
l441: clzCC R6, R2
l442: sub R0, R1, #15990784
l443: subs R5, R0, R11
l444: subEQ R1, R6, #55552
l445: rsbPLs R1, R1, R6, ASR R8
l446: mov R11, #52
l447: ldrGEsh R9, [sp, -R11]
l448: ldrsb R9, [sp, #+15]
l449: ldrsb R6, [sp, #-36]
l450: ldmGEDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l451: str R3, [sp, #+68]!
l452: rsc R7, R5, R5
l453: movEQs R14, #13369344
l454: subCC R14, R1, R0, ROR #9
l455: clzMI R11, R5
l456: subLT R8, R7, R7, RRX 
l457: b l459
l458: clzCC R6, R14
l459: rsb R11, R3, R2, LSR #21
l460: bGE l464
l461: add R1, R0, #177
l462: andMI R7, R9, R3
l463: b l465
l464: b l462
l465: cmnVC R2, R8
l466: umlalEQs R3, R10, R14, R11
l467: ldrGTsh R8, [sp, #-40]
l468: rscs R8, R0, R2
l469: mvnVS R9, R7, ROR R8
l470: bEQ l475
l471: add R1, R0, #199
l472: tstCS R2, R10, LSR #4
l473: cmpLS R12, R5
l474: b l476
l475: b l472
l476: mvnLE R9, #901775360
l477: tst R11, R6
l478: rsbLT R12, R12, R0, ROR #16
l479: stmDA R13!, {R13, R14}
l480: teqHI R7, #672
l481: bLE l485
l482: add R1, R0, #241
l483: teq R0, #3473408
l484: b l486
l485: b l483
l486: bVS l493
l487: add R1, R0, #118
l488: rscs R5, R3, #150994944
l489: rsb R3, R7, #548864
l490: clz R5, R9
l491: subHI R8, R1, R8, ASR R0
l492: b l494
l493: b l488
l494: clz R10, R11
l495: bicMI R9, R2, R5, ASR #18
l496: subs R4, R7, R10
l497: tstGE R5, R12, LSR #16
l498: adcMI R6, R15, R2, ASR #17
l499: cmpCS R6, R10, ASR R5
l500: rscPLs R9, R6, R5, ASR #13
l501: subCC R0, R12, #557842432
l502: adcPLs R12, R12, #-201326590
l503: stmDB R13, {R2, R4, R5, R6, R8, R9, R12, R13, R14}
l504: ands R9, R1, R1, ROR R7
l505: bGT l506
l506: orrLT R2, R11, #4145152
l507: bLT l513
l508: add R1, R0, #18
l509: orrNE R12, R10, R12, ROR #8
l510: sbcs R9, R5, R4
l511: subNEs R5, R6, R2, RRX 
l512: b l514
l513: b l509
l514: tstCC R10, R2, RRX 
l515: umlal R0, R12, R3, R5
l516: mulLT R14, R12, R1
l517: andHI R2, R1, #27525120
l518: orrPL R7, R12, R10
l519: orr R14, R3, R9, ROR #31
l520: cmnLT R1, R6, ASR #2
l521: andHIs R14, R8, #9175040
l522: ldrPLsh R2, [sp, #-6]
l523: clzLE R3, R1
l524: teqEQ R6, R10, ASR #9
l525: ldrGEsb R11, [sp, #-16]
l526: rscEQ R7, R0, R10, ASR R8
l527: b l534
l528: sbcs R7, R8, R0, ROR R9
l529: orrMI R14, R10, R14, LSR R3
l530: sub R2, R4, R7
l531: rscPLs R14, R5, R10
l532: tst R10, R6, LSL #19
l533: movs R7, R5, ROR R0
l534: cmp R3, R4, ROR R14
l535: bicVSs R5, R0, R8, LSR #31
l536: stmLEIA R13, {R7, R9, R10}
l537: subGE R14, R15, R0
l538: ldrGTB R12, [sp, #-37]
l539: teq R4, R8, LSR #6
l540: adds R11, R10, #147456
l541: str R12, [sp, #-40]!
l542: ldrGEh R10, [sp, #+18]
l543: rsb R2, R9, R8, ROR R6
l544: cmpLS R2, R1, LSR R10
l545: ldmIB R13, {R0, R1, R2, R3, R5, R7, R9, R10, R11, R12, R14}
l546: bic R11, R5, R2, ASR #5
l547: addLTs R9, R0, #45056
l548: mov R1, #12
l549: ldrGEB R9, [sp, +R1]
l550: eors R5, R6, R0
l551: adcLT R11, R12, R6, ASR R9
l552: cmpCS R9, R6, ROR #27
l553: mulVS R0, R6, R0
l554: orrs R3, R9, R7, ROR #20
l555: rscLEs R4, R15, R4, RRX 
l556: rsb R9, R10, R10, ROR R2
l557: rscVC R3, R12, R4, LSL #28
l558: cmnLT R14, R14, ASR R7
l559: smlalNE R0, R14, R7, R12
l560: rscs R2, R9, R12
l561: mvnPLs R10, #112640
l562: orrPL R3, R12, R12, ASR R6
l563: cmnPL R4, R6, ROR #24
l564: bCS l570
l565: sbcLS R5, R0, R9
l566: mvn R11, R11, LSL #6
l567: addLS R2, R6, R3, LSL #18
l568: tstNE R12, #165888
l569: eorLSs R9, R14, R10, LSL #25
l570: tstPL R9, R2, RRX 
l571: subHIs R5, R14, R0
l572: ldrNE R10, [sp, #-28]
l573: cmn R5, R2, LSL R1
l574: mov R1, #32768
l575: addVC R3, R0, R6, LSL R7
l576: orrGE R8, R9, R15
l577: sbcPLs R5, R10, R12, LSR R1
l578: b l582
l579: eorCS R4, R9, R8
l580: cmpNE R10, #1543503872
l581: cmnGE R9, R14, ROR #12
l582: adc R3, R1, #-1476395005
l583: adcMIs R4, R1, #671088640
l584: mov R14, #20
l585: strHIh R7, [sp, +R14]
l586: sbcMI R1, R14, #20480
l587: subs R7, R7, R11, RRX 
l588: sub R11, R15, R1, LSL #17
l589: b l598
l590: sbcEQs R1, R9, R6, ASR #23
l591: teqVC R10, R1, ROR R5
l592: bicEQ R10, R5, R7
l593: orr R9, R1, #892928
l594: teqGT R10, #101
l595: andCS R8, R11, #1472
l596: eor R10, R14, R10, LSR #19
l597: clzGE R5, R3
l598: clzGT R5, R8
l599: cmn R12, R10
l600: rsbs R2, R10, R15, RRX 
l601: sbcGTs R3, R2, R12, LSR R6
l602: movLE R7, R0, ASR #4
l603: subNE R6, R8, #65024
l604: tstLE R11, R14
l605: sub R7, R6, #1052770304
l606: subLE R11, R6, #59506688
l607: strMIB R12, [sp, #+5]
l608: teq R14, R2, ASR #24
l609: adcVSs R5, R0, R1, LSR #17
l610: tst R14, R11, ROR #26
l611: teq R14, R12, RRX 
l612: mov R6, #24
l613: ldrsh R1, [sp, +R6]
l614: mov R6, #24
l615: strh R9, [sp, +R6]
l616: eorGT R7, R11, R14, LSL #30
l617: orrNEs R12, R0, R0, LSR #28
l618: bCS l621
l619: sub R4, R8, R3, ROR R1
l620: andCS R8, R3, R3, LSL R5
l621: sbcNEs R10, R8, R3, LSR R0
l622: ands R8, R11, #864256
l623: orrLT R2, R2, #-1040187392
l624: b l634
l625: sub R9, R0, #7936
l626: bicLS R10, R7, R11, RRX 
l627: teq R10, R12, ROR #21
l628: tst R15, R0, LSL #1
l629: rsb R7, R2, R4
l630: movLSs R12, #8640
l631: mvnPL R2, R12, LSR R12
l632: cmnVS R6, R11
l633: orrs R5, R12, R0
l634: subVC R7, R2, #1895825408
l635: umullPL R5, R2, R12, R3
l636: bicCC R5, R4, #1392508928
l637: subCS R4, R7, R8, LSL #24
l638: mlaMIs R3, R2, R6, R3
l639: stmDA R13, {R8, R15}
l640: movEQs R3, R6
l641: andCC R2, R1, R9, ROR R5
l642: strMIB R0, [sp, #-40]
l643: adds R0, R11, R2, LSR R2
l644: rscGT R10, R7, R5, ASR #17
l645: mvnLT R6, R9, LSR #20
l646: orr R8, R3, R10, RRX 
l647: eorCC R10, R14, #72351744
l648: subGEs R14, R6, R12, RRX 
l649: orr R8, R5, R11, ASR #25
l650: sub R6, R8, R4, LSR #8
l651: eor R1, R15, R15, LSR #3
l652: str R6, [sp, #-28]!
l653: mvnVC R8, #163577856
l654: adcLTs R12, R6, R14
l655: cmnLE R0, R3, ASR R9
l656: cmnGT R10, R4, ROR R6
l657: teq R10, R10
l658: b l666
l659: add R1, R0, #141
l660: clzLT R1, R6
l661: mov R6, R11
l662: ands R2, R2, R14, ROR R6
l663: cmn R10, #6553600
l664: subLTs R3, R7, R5, LSL R11
l665: b l667
l666: b l660
l667: mlas R9, R0, R8, R3
l668: orr R4, R0, R12, LSL R1
l669: clzMI R4, R3
l670: orrs R5, R12, #-603979776
l671: movVCs R14, R0, ROR R2
l672: orrPL R9, R3, #107520
l673: b l683
l674: mvnGE R0, R3, LSL R5
l675: teqVS R6, R6, LSR R8
l676: subLS R10, R6, R2, ROR R10
l677: add R12, R8, R5, RRX 
l678: rscs R3, R12, #511705088
l679: rsc R12, R9, R3, LSR #29
l680: cmpLS R1, R10
l681: cmn R0, R3, RRX 
l682: rsbGEs R9, R10, R14
l683: bicVSs R8, R9, R3
l684: cmnLE R4, R3
l685: orrLSs R4, R12, R10, ASR R9
l686: movEQ R10, R8, RRX 
l687: b l689
l688: orrs R5, R3, R0, LSR #23
l689: rscNE R14, R1, R4, ROR R8
l690: cmp R7, #31
l691: adcLE R9, R0, R3, LSL R1
l692: str R3, [sp, #+0]!
l693: tstLS R4, #1011712
l694: sbc R7, R0, R11
l695: subGEs R9, R0, #5888
l696: subs R0, R4, R4
l697: subs R7, R12, R10, ROR #17
l698: rsbLEs R1, R11, #45568
l699: bGE l703
l700: add R1, R0, #121
l701: orrLEs R8, R4, R15
l702: b l704
l703: b l701
l704: rscs R7, R11, #52736
l705: mvnLT R2, #-1073741821
l706: subHIs R6, R0, R10, ASR R0
l707: rsb R4, R4, R9, ROR R1
l708: ldrMIB R9, [sp, #+55]
l709: cmpMI R15, #1811939329
l710: bGE l715
l711: add R1, R0, #9
l712: subHIs R3, R8, #3063808
l713: adcLSs R3, R0, #1568
l714: b l716
l715: b l712
l716: movHI R4, #2000
l717: teqLT R4, R3, ASR R6
l718: bicGTs R7, R8, #138412032
l719: subEQ R1, R0, R3, ROR #30
l720: bPL l728
l721: add R1, R0, #142
l722: eorMI R9, R14, #2080374784
l723: rsbCCs R3, R2, R1, LSR #31
l724: andGT R0, R8, R11, ROR #6
l725: rscPL R7, R9, R0, RRX 
l726: bic R1, R9, #180
l727: b l729
l728: b l722
l729: andVC R3, R6, R0, ASR #21
l730: teqGE R0, R15, RRX 
l731: clzPL R2, R14
l732: sbcs R9, R11, #1073741871
l733: movLSs R1, R3, ASR #12
l734: subs R6, R10, #805306377
l735: cmnVS R0, R8
l736: andHI R12, R8, #73728
l737: subVC R1, R7, #-1124073472
l738: bics R10, R11, R2, LSL R10
l739: mov R3, #10
l740: strGTh R0, [sp, -R3]
l741: mov R14, #60
l742: ldrB R10, [sp, +R14]
l743: tst R7, #132096
l744: eors R11, R2, R7, LSR R14
l745: add R2, R2, R5, LSR R6
l746: mov R7, #4
l747: strB R2, [sp, -R7]
l748: stmIB R13!, {R1}
l749: subPL R12, R12, R8, LSL R9
l750: sub R9, R14, R9
l751: orrHIs R12, R12, R6, LSR R7
l752: cmn R2, R5, ASR #6
l753: tst R7, R2, RRX 
l754: bPL l758
l755: add R1, R0, #79
l756: sub R3, R2, R12, RRX 
l757: b l759
l758: b l756
l759: addPL R11, R12, R14
l760: teqVS R7, R9, ASR R3
l761: tst R14, R4, RRX 
l762: teqNE R6, R0, LSL R12
l763: umlal R9, R6, R5, R3
l764: rscCC R7, R12, R11, RRX 
l765: tstEQ R2, R8
l766: eorHIs R10, R14, R4, ASR R2
l767: mov R3, #2
l768: strh R1, [sp, +R3]
l769: bics R6, R10, R11, ROR #20
l770: andEQ R9, R11, #-905969664
l771: b l777
l772: add R1, R0, #52
l773: teq R14, R3
l774: clzNE R6, R11
l775: andPLs R1, R14, R11, RRX 
l776: b l778
l777: b l773
l778: cmpLS R7, #-536870907
l779: strVSB R2, [sp, #+25]
l780: mov R8, #27
l781: ldrHIsb R0, [sp, +R8]
l782: cmp R10, R10, LSR #12
l783: eorPL R11, R12, #754974720
l784: orrEQ R5, R7, R15, ROR #12
l785: orr R2, R15, R3, ROR #18
l786: cmn R6, R9, ASR #11
l787: ands R3, R12, R11
l788: teq R8, R8, RRX 
l789: movGEs R4, #28416
l790: rsc R7, R7, R7, LSR #16
l791: andEQ R7, R6, R3, ASR #4
l792: adc R5, R5, R4, LSR #31
l793: cmpPL R8, R6, RRX 
l794: mvns R12, R9, LSR R12
l795: ands R9, R11, R4, LSL R11
l796: cmp R9, R2, LSL R3
l797: adc R11, R11, R7, LSR R12
l798: mvnNE R2, R10, LSL R12
l799: ldrPLB R3, [sp, #+19]
l800: rsb R11, R15, #456
l801: subPLs R1, R4, R12, ASR R0
l802: cmpVS R10, R4, ROR R4
l803: clz R14, R11
l804: teqLE R2, #-268435456
l805: cmn R15, #34865152
l806: bLT l814
l807: add R1, R0, #64
l808: adcNE R5, R6, R3, LSL #30
l809: mvnMI R2, R2, LSR R3
l810: rsbLE R10, R9, R1, LSR R12
l811: and R12, R11, R1
l812: add R6, R3, #1072
l813: b l815
l814: b l808
l815: eor R12, R9, R1
l816: orrEQs R7, R14, R15, LSR #8
l817: smlals R7, R0, R2, R14
l818: mov R3, #41
l819: strVCB R8, [sp, +R3]
l820: b l821
l821: subVC R1, R4, #381681664
l822: adcLSs R3, R10, R5
l823: eorGTs R12, R2, R7, LSL #8
l824: ldmIA R13!, {R0, R6, R8, R10}
l825: ldrVCh R0, [sp, #+8]
l826: rscCCs R7, R10, R9, LSL #14
l827: mov R12, #45
l828: ldrCSB R6, [sp, +R12]
l829: cmpEQ R2, #232783872
l830: adds R0, R12, R10, LSR #6
l831: eor R11, R4, R10, RRX 
l832: teq R8, R6
l833: subVC R8, R14, R5
l834: andCS R1, R7, #66560
l835: subGTs R14, R10, R0
l836: tstMI R11, #40
l837: smulls R12, R11, R10, R10
l838: teqLT R10, R7, LSL R4
l839: orrNEs R14, R10, R4, LSR R8
l840: mvns R5, R15, RRX 
l841: sbc R10, R7, R8, RRX 
l842: clzLS R14, R9
l843: mvnNE R4, R11
l844: tstGE R8, #99
l845: eorCC R3, R2, R0, LSL #22
l846: subGEs R7, R4, R12, LSR #21
l847: tst R8, #471040
l848: subGTs R1, R12, #1040384
l849: bicGEs R0, R11, #956
l850: eorVS R14, R6, R8, ROR R10
l851: cmp R5, R2
l852: mov R14, #42
l853: ldrB R8, [sp, +R14]
l854: eorLTs R12, R9, R4
l855: rscs R1, R3, R6, ROR #5
l856: cmp R8, #3670016
l857: clzLE R5, R9
l858: sub R0, R8, R4, LSL #0
l859: ands R12, R11, R4, LSL R2
l860: andGTs R10, R10, #1776
l861: bicMI R2, R9, #2621440
l862: orr R11, R4, R14, ASR R9
l863: teq R6, R8
l864: muls R12, R6, R0
l865: mov R2, #44
l866: strh R6, [sp, +R2]
l867: andGEs R10, R10, R5, RRX 
l868: orr R7, R8, #11328
l869: mvn R9, #2932736
l870: ldrsb R0, [sp, #+1]
l871: bicEQ R7, R0, #3588096
l872: clz R1, R8
l873: strCCB R5, [sp, #+23]
l874: subs R8, R6, R3
l875: adcLSs R6, R9, R4, LSR R3
l876: orrMI R6, R12, R3, ASR #11
l877: mov R0, #32
l878: strh R4, [sp, -R0]
l879: addCS R7, R12, R11, LSR #16
l880: subLT R11, R2, R3
l881: movVCs R14, R6, ASR R5
l882: add R9, R7, R14, ASR #9
l883: cmnCS R0, R14, LSR R2
l884: mvnLE R4, R12, ASR #5
l885: tstLS R1, #246
l886: adc R0, R2, R14, ROR #29
l887: bLE l890
l888: movVCs R3, R4
l889: adds R3, R1, R0, LSL #25
l890: subVS R7, R10, R15, ASR #30
l891: rscMI R6, R9, #788529152
l892: bCC l893
l893: tstCC R11, R12, LSR R5
l894: ands R6, R5, R7, ASR #12
l895: teq R6, R14
l896: sbc R10, R5, R3
l897: ldrsb R4, [sp, #-11]
l898: mvnLS R2, R12
l899: rscNEs R4, R11, R0
l900: tstEQ R8, R8, ASR #3
l901: orr R0, R7, #282624
l902: ldmDA R13!, {R1, R2, R3, R4, R10, R11, R14}
l903: b l910
l904: teq R7, R15
l905: eorGTs R5, R5, R10, RRX 
l906: movLS R3, R0, ASR R11
l907: movVS R11, R5, ROR #12
l908: teqPL R5, R14
l909: subLTs R7, R0, R3
l910: teqLE R5, R6, LSL #17
l911: cmp R9, R6, LSR R1
l912: tst R5, R2, ASR R4
l913: b l922
l914: add R1, R0, #133
l915: and R10, R9, R14, LSR #4
l916: adcGT R9, R4, R6, ROR #13
l917: mvnHI R8, R14
l918: mvn R8, R10, ASR #17
l919: teq R1, R1, ROR R10
l920: tstLS R8, R7
l921: b l923
l922: b l915
l923: rscs R10, R7, #4849664
l924: bGT l928
l925: add R1, R0, #167
l926: andNEs R0, R12, R7
l927: b l929
l928: b l926
l929: b l933
l930: movMIs R6, #-1811939328
l931: sbcEQ R12, R14, R6, ASR R9
l932: sub R0, R6, R12, RRX 
l933: mvnCS R4, R9
l934: ldmEQDB R13, {R12}
l935: rsbs R10, R5, R7
l936: orrLEs R7, R6, #14144
l937: cmpEQ R2, R14, LSR R3
l938: mulCSs R4, R12, R2
l939: ldrB R3, [sp, #+45]
l940: b l943
l941: subPLs R10, R15, #1879048200
l942: rsbNE R12, R1, #912
l943: orr R6, R6, #268435469
l944: bicPL R1, R8, R4, ASR R10
l945: sbcs R11, R7, R8
l946: eorPL R5, R5, R8, ROR R2
l947: strVSB R6, [sp, #+0]
l948: orrGTs R3, R12, R7, RRX 
l949: and R12, R7, R1
l950: mov R9, #28
l951: ldrLSh R8, [sp, +R9]
l952: sbcVCs R11, R2, R0, ROR #9
l953: subCC R6, R4, #2834432
l954: bVS l959
l955: teq R2, #198656
l956: cmn R10, R1
l957: movMIs R3, R0
l958: subLE R11, R10, R12, LSR #12
l959: clzCC R5, R1
l960: bNE l969
l961: add R1, R0, #124
l962: cmnLE R10, R10
l963: orrGT R11, R7, R2
l964: ands R3, R0, R10, LSL #9
l965: ands R1, R2, R4
l966: mvnCS R4, R1
l967: tst R15, R12, ROR #22
l968: b l970
l969: b l962
l970: rscCS R8, R3, R1
l971: strHIh R5, [sp, #+66]
l972: b l979
l973: add R1, R0, #172
l974: teqEQ R8, R8, RRX 
l975: sub R4, R0, R11, ASR #5
l976: adcs R9, R12, #123904
l977: clz R3, R9
l978: b l980
l979: b l974
l980: mov R7, #40
l981: ldrNEsh R1, [sp, +R7]
l982: eorGTs R14, R6, #272
l983: tstVS R0, R12
l984: orrGEs R0, R11, R12, ROR R0
l985: ldrLTB R9, [sp, #+38]
l986: movPLs R7, R5, RRX 
l987: orr R11, R6, #13184
l988: bicHI R10, R4, R6, LSR #1
l989: mlaVCs R12, R3, R7, R11
l990: mov R11, R6, LSR R9
l991: movPLs R12, R2, RRX 
l992: subs R8, R9, R11
l993: adc R4, R4, #3325952
l994: cmpPL R2, R4
l995: bGE l999
l996: movMIs R9, #55574528
l997: adc R9, R1, R7, ASR R9
l998: teqGT R6, R2
l999: bicLT R10, R0, R11, ROR #11
l1000: ldmIA R13!, {R0, R3, R5, R6, R9, R11, R12, R14}
l1001: bCS l1002
l1002: bic R7, R6, R3, LSL #21
l1003: ldmIB R13!, {R0, R1}
l1004: andVSs R9, R14, R15
l1005: movs R4, R4
l1006: andCCs R9, R7, #195584
l1007: subVC R1, R4, R2, LSL #11
l1008: subs R12, R4, R12, RRX 
l1009: orrLSs R12, R12, R6, RRX 
l1010: mov R10, #14848
l1011: mov R5, #36
l1012: strB R4, [sp, +R5]
l1013: movCS R12, #106496
l1014: mov R1, #8
l1015: strB R9, [sp, -R1]
l1016: add R11, R15, R8
l1017: andCS R10, R9, R12, RRX 
l1018: mov R10, R4, ROR R10
l1019: sbcMI R11, R5, R3
l1020: orrEQs R11, R7, R6
l1021: movGT R7, #544
l1022: subs R9, R5, R11, LSL R6
l1023: addLSs R5, R3, #201728
l1024: eor R9, R1, R3, RRX 
l1025: subs R3, R5, R6, LSL #15
l1026: mlaLTs R12, R1, R10, R1
l1027: rscs R3, R1, #192
l1028: movVC R6, R3
l1029: ldrLSsb R1, [sp, #-6]
l1030: subs R11, R15, R9
l1031: ldmDB R13!, {R6, R9}
l1032: ldmDB R13!, {R1, R2, R5, R7, R9, R11, R14}
l1033: rsbs R5, R1, #12288
l1034: andLEs R7, R15, R12, RRX 
l1035: mov R3, R4, LSL #2
l1036: mlaHIs R1, R12, R3, R11
l1037: orrs R6, R0, R0
l1038: b l1048
l1039: rscPLs R12, R15, R9
l1040: andPLs R5, R3, R9, LSL R2
l1041: subEQ R14, R3, R4
l1042: sbcCC R9, R10, R5, RRX 
l1043: eor R11, R4, #232783872
l1044: addNE R6, R15, R9
l1045: rsbNEs R10, R4, R9
l1046: addGT R10, R15, #-1073741822
l1047: tstHI R10, R2, LSR #31
l1048: rscVC R6, R0, R5, ROR R3
l1049: and R14, R9, R4, ROR #2
l1050: bNE l1057
l1051: add R1, R0, #211
l1052: sbcs R11, R4, R2, ASR R12
l1053: tstCS R10, R8, ROR #20
l1054: sbcGTs R3, R3, R0, ASR #8
l1055: bicPL R2, R2, R9
l1056: b l1058
l1057: b l1052
l1058: stmDA R13, {R3}
l1059: sub R2, R8, #3008
l1060: eorCCs R10, R12, #61440
l1061: b l1067
l1062: tst R12, R14, ROR R9
l1063: eorGTs R3, R12, R8, LSL R5
l1064: teq R9, R8, LSR #1
l1065: subPL R8, R10, R2, RRX 
l1066: adcCSs R4, R10, R9, LSR #19
l1067: rscs R1, R0, R7, ASR R5
l1068: bics R1, R3, #120586240
l1069: subLS R10, R0, R4, ROR #4
l1070: mov R0, R12
l1071: orrVC R8, R5, R9, ROR #25
l1072: clzVC R1, R5
l1073: clzGE R3, R7
l1074: subEQ R4, R8, R0
l1075: rsbs R8, R3, R0, LSL R6
l1076: adcHI R8, R1, R9, LSR #23
l1077: str R0, [sp, #+32]
l1078: movs R6, #46592
l1079: subNE R9, R5, R10, ROR #15
l1080: smullMIs R1, R8, R5, R4
l1081: orrLS R7, R8, R1
l1082: sbcNE R6, R3, #9437184
l1083: rsb R6, R7, R10
l1084: ldrB R8, [sp, #+66]
l1085: orrPLs R11, R3, R8, LSL R3
l1086: adc R2, R3, R15, RRX 
l1087: teqHI R1, #60
l1088: b l1090
l1089: tstHI R7, #264241152
l1090: mov R7, #1509949440
l1091: mov R3, #76
l1092: ldrB R3, [sp, +R3]
l1093: sbcs R12, R14, R11, ASR R11
l1094: eorEQs R4, R8, R7
l1095: rsbHI R10, R5, R10, LSL #22
l1096: clzVS R5, R4
l1097: b l1101
l1098: add R1, R0, #130
l1099: sub R14, R6, #805306383
l1100: b l1102
l1101: b l1099
l1102: andLE R2, R8, R4, LSR #28
l1103: rscEQs R0, R4, R0
l1104: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R11, R14}
l1105: ldmVSIA R13, {R0, R1, R5, R7, R8, R9, R11, R12, R14}
l1106: orrLS R11, R15, #192937984
l1107: ldrh R7, [sp, #-54]
l1108: cmnVS R10, R1
l1109: cmp R11, #-2080374781
l1110: b l1117
l1111: mvn R1, R6, LSL #30
l1112: cmpPL R3, R14, LSR R14
l1113: cmp R14, R11, ROR #8
l1114: mov R9, R4, LSL #2
l1115: bicEQ R10, R1, R0
l1116: mvn R5, #61440
l1117: mov R9, R5, LSR R9
l1118: bicGEs R11, R0, R9
l1119: ldmDB R13!, {R0, R8, R9, R10}
l1120: b l1126
l1121: mov R5, #252706816
l1122: orr R12, R14, R7, RRX 
l1123: tst R3, R5
l1124: eorEQ R0, R10, #-2113929216
l1125: add R11, R15, #3904
l1126: rsbMIs R0, R3, R8, LSR R11
l1127: ldmIB R13!, {R5}
l1128: rscCS R12, R6, R0, LSL R11
l1129: bVC l1136
l1130: add R1, R0, #146
l1131: subs R0, R9, R11
l1132: rsbCS R4, R15, R2
l1133: adcs R11, R11, R4, LSR #25
l1134: bics R0, R7, R4, ASR R8
l1135: b l1137
l1136: b l1131
l1137: ldmIB R13!, {R1}
l1138: orr R0, R11, R7, LSL R12
l1139: mov R3, R9
l1140: orrs R0, R5, R6, RRX 
l1141: bic R10, R0, R4, LSR #12
l1142: ands R14, R6, #0
l1143: tstMI R14, R11
l1144: strGTh R12, [sp, #-64]
l1145: tst R1, R1, LSL #12
l1146: cmpHI R2, R14
l1147: ldrMIh R6, [sp, #+6]
l1148: sub R3, R10, R8, LSL #22
l1149: and R11, R15, #1694498816
l1150: adcEQs R4, R1, R6
l1151: stmIB R13!, {R8}
l1152: cmpNE R1, #483328
l1153: adcCC R4, R11, R2, LSL #14
l1154: eors R8, R1, R9, LSL R2
l1155: bicHIs R8, R12, #457179136
l1156: subGT R2, R4, R10
l1157: adcHIs R7, R7, R9
l1158: mov R14, #63
l1159: ldrsb R5, [sp, -R14]
l1160: bic R7, R14, #2048
l1161: tstVS R14, R12
l1162: teq R14, R12, RRX 
l1163: cmpNE R12, R9, LSR #10
l1164: mla R12, R9, R8, R2
l1165: bicPLs R5, R2, R5, RRX 
l1166: adcCCs R3, R10, R0
l1167: sbcGT R6, R9, R1
l1168: subPLs R2, R11, R11, ROR #22
l1169: bEQ l1174
l1170: add R1, R0, #103
l1171: cmpVC R1, R4, RRX 
l1172: orrPLs R10, R7, R0
l1173: b l1175
l1174: b l1171
l1175: orr R0, R6, #249
l1176: cmnLS R6, R11
l1177: umull R1, R5, R6, R14
l1178: mov R7, #62
l1179: ldrsh R2, [sp, -R7]
l1180: bLT l1181
l1181: orr R10, R0, #7232
l1182: b l1188
l1183: add R1, R0, #243
l1184: andLEs R10, R2, #296
l1185: subs R3, R6, R9
l1186: eorMI R2, R6, #7
l1187: b l1189
l1188: b l1184
l1189: subLS R6, R5, #0
l1190: subVSs R8, R5, #421888
l1191: bEQ l1195
l1192: movLT R7, R14, ASR #20
l1193: subs R2, R12, R11
l1194: sbcCC R14, R9, R10
l1195: eorNE R2, R14, R10
l1196: mov R11, #15
l1197: strB R6, [sp, -R11]
l1198: mvn R14, R11, ASR R5
l1199: mvnGTs R5, R2, ROR R0
l1200: subPL R14, R4, #452984832
l1201: b l1205
l1202: add R1, R0, #211
l1203: and R3, R9, #5120
l1204: b l1206
l1205: b l1203
l1206: mov R4, #75
l1207: strB R4, [sp, -R4]
l1208: cmp R4, R15, RRX 
l1209: adds R12, R10, R0
l1210: rscCCs R12, R10, R9, LSR R3
l1211: ldmDA R13, {R0, R3, R6}
l1212: orrHIs R11, R6, R1, ASR #2
l1213: rsc R3, R0, #458752
l1214: sbcLEs R8, R3, R14, LSR #27
l1215: sbcEQ R10, R1, #926941184
l1216: strVCh R2, [sp, #-64]
l1217: tstEQ R8, #174080
l1218: teqLS R5, R9
l1219: bicEQs R12, R3, #16320
l1220: bics R1, R3, R2, RRX 
l1221: tst R5, R4
l1222: b l1226
l1223: add R1, R0, #106
l1224: subLEs R10, R2, R3, LSL R3
l1225: b l1227
l1226: b l1224
l1227: and R9, R7, #112
l1228: movs R6, R15, ASR #5
l1229: tstGT R4, R2, ROR R2
l1230: teqLS R0, R4, ASR R1
l1231: subCC R0, R0, R8, RRX 
l1232: cmp R5, #13760
l1233: adcs R9, R3, R6, RRX 
l1234: eors R9, R4, R4, ROR R7
l1235: eorHIs R2, R9, R10, LSR #30
l1236: umulls R10, R14, R1, R9
l1237: tst R5, R9, RRX 
l1238: eors R3, R9, #42991616
l1239: add R3, R11, R14
l1240: b l1247
l1241: rsbMI R9, R4, R7
l1242: orrMIs R11, R9, #21757952
l1243: andCCs R10, R6, R0, LSR #24
l1244: cmn R8, R6, ROR R0
l1245: adcLE R10, R2, R11, ROR R11
l1246: add R11, R6, R8, LSL R1
l1247: andCC R6, R4, R15, LSL #9
l1248: cmp R14, #112
l1249: mov R3, #35
l1250: strPLB R5, [sp, -R3]
l1251: subs R5, R4, R8, RRX 
l1252: teqLE R5, #15552
l1253: cmpVS R0, R15, LSL #21
l1254: bLE l1258
l1255: cmpGT R14, #1072
l1256: sbc R8, R6, R6
l1257: teqVC R9, R11, LSR R7
l1258: adds R2, R12, R8, ROR #18
l1259: clz R4, R3
l1260: rsbs R11, R8, #155189248
l1261: ldmIB R13!, {R7, R8, R10}
l1262: orrVCs R9, R0, R2, RRX 
l1263: adds R1, R15, R15, LSR #12
l1264: eorLS R2, R5, R12, LSL R11
l1265: rscLEs R14, R15, R1
l1266: subs R11, R7, R5, LSR #18
l1267: sbc R10, R11, R15, ROR #8
l1268: b l1276
l1269: add R1, R0, #91
l1270: addLTs R3, R9, R0
l1271: mvns R9, R9
l1272: sbcs R10, R3, R11
l1273: eorPL R11, R4, R9
l1274: cmpNE R0, R1, ROR R3
l1275: b l1277
l1276: b l1270
l1277: cmpGE R0, #1073741838
l1278: eorPLs R4, R4, #224256
l1279: b l1280
l1280: andLTs R12, R6, R8, ROR #27
l1281: mvnLE R4, R1, RRX 
l1282: subEQs R3, R6, R1, LSL #2
l1283: teq R10, R11
l1284: smlal R0, R7, R4, R1
l1285: mvnLS R9, R12
l1286: mov R1, #52
l1287: str R12, [sp, -R1]!
l1288: rscs R0, R1, #-1073741813
l1289: tstVS R15, #41
l1290: andVSs R10, R4, R1, LSL #28
l1291: rscNEs R12, R4, R4, LSL R12
l1292: teqLT R7, R12, ASR #1
l1293: orrNEs R8, R0, R5, RRX 
l1294: subs R4, R5, R10
l1295: cmnGE R4, R7
l1296: adcCC R14, R1, R12, LSR R2
l1297: movEQs R11, #1808
l1298: orrs R3, R8, R11
l1299: mvnHI R9, R3, RRX 
l1300: add R6, R3, R11
l1301: adcs R10, R15, R0, ASR #8
l1302: addPL R12, R10, #119537664
l1303: bHI l1309
l1304: add R1, R0, #247
l1305: clzLE R0, R3
l1306: clzGE R4, R3
l1307: cmpLT R4, R1, ASR #24
l1308: b l1310
l1309: b l1305
l1310: mov R4, #13
l1311: ldrLTB R9, [sp, -R4]
l1312: teqEQ R5, R1, LSR R8
l1313: subGE R9, R11, R14
l1314: eor R5, R3, #954368
l1315: cmn R11, R14, ROR R1
l1316: subVC R2, R4, #58720256
l1317: b l1325
l1318: add R1, R0, #85
l1319: movLEs R5, #972
l1320: orrs R5, R15, R0
l1321: mov R7, #86
l1322: cmpVS R14, #12864
l1323: addLT R11, R3, R2, LSR #30
l1324: b l1326
l1325: b l1319
l1326: ldrsh R14, [sp, #-10]
l1327: mlaCCs R10, R4, R5, R12
l1328: teqGT R6, R6, LSR #20
l1329: b l1332
l1330: movNEs R5, R4, LSL R11
l1331: tst R8, R8, LSL #11
l1332: and R11, R12, R4, LSR R2
l1333: rsc R11, R4, R12, LSR #24
l1334: bLT l1340
l1335: add R1, R0, #199
l1336: and R1, R3, R9, LSR R5
l1337: and R5, R10, #27262976
l1338: bics R10, R4, #1310720
l1339: b l1341
l1340: b l1336
l1341: subs R14, R0, #2288
l1342: mov R4, #16
l1343: str R7, [sp, -R4]!
l1344: orrHIs R2, R5, R5, ROR #17
l1345: mul R6, R5, R2
l1346: eor R11, R9, R5, ASR R5
l1347: sub R5, R7, R3, RRX 
l1348: ldrh R11, [sp, #+62]
l1349: b l1355
l1350: add R1, R0, #248
l1351: orrHIs R10, R3, #15794176
l1352: clzEQ R11, R10
l1353: teqLE R0, #1610612738
l1354: b l1356
l1355: b l1351
l1356: ldmIB R13!, {R3, R9, R14}
l1357: eor R12, R14, R3, RRX 
l1358: mov R2, #0
l1359: str R8, [sp, +R2]!
l1360: orrs R12, R9, R12, ROR #14
l1361: subHI R6, R8, R10
l1362: andGE R8, R3, #2883584
l1363: tst R0, R6, RRX 
l1364: rscLE R6, R1, R3, ROR R3
l1365: addLS R3, R11, #-1879048189
l1366: rscs R9, R14, R15
l1367: mov R8, #8
l1368: str R7, [sp], -R8
l1369: movVSs R3, R0, LSR R12
l1370: clz R4, R7
l1371: tstLE R8, #100
l1372: subEQ R5, R6, R0, RRX 
l1373: eors R8, R6, #221184
l1374: rsbNEs R2, R2, R10, LSL #1
l1375: cmnGT R2, R12, RRX 
l1376: clz R11, R8
l1377: ldr R12, [sp, #-12]!
l1378: andVC R9, R11, R6
l1379: adc R1, R12, R1
l1380: mov R0, #44
l1381: strVC R5, [sp, +R0]
l1382: cmn R11, R3, RRX 
l1383: andLE R7, R0, R4, LSL R2
l1384: mulEQs R9, R0, R1
l1385: adcs R12, R11, #236978176
l1386: smullLEs R4, R12, R5, R8
l1387: adds R5, R1, #27262976
l1388: mov R10, #72
l1389: ldrCCh R3, [sp, +R10]
l1390: sbcVC R0, R14, R4
l1391: addHI R11, R2, R9
l1392: subs R4, R12, R6, RRX 
l1393: tstGE R1, #-268435453
l1394: b l1398
l1395: add R1, R0, #135
l1396: clzVC R9, R10
l1397: b l1399
l1398: b l1396
l1399: b l1404
l1400: add R1, R0, #191
l1401: teq R10, R11, RRX 
l1402: subGEs R7, R14, R6
l1403: b l1405
l1404: b l1401
l1405: bMI l1411
l1406: add R1, R0, #232
l1407: addNE R1, R0, R14
l1408: subGT R0, R9, #3080192
l1409: clz R2, R8
l1410: b l1412
l1411: b l1407
l1412: rsbs R7, R8, R6, ASR #14
l1413: mov R5, #42
l1414: ldrsb R7, [sp, +R5]
l1415: bics R0, R8, R1
l1416: mov R9, #40
l1417: ldrVSh R4, [sp, +R9]
l1418: strB R2, [sp, #+21]
l1419: sub R8, R5, R4
l1420: clzVC R6, R14
l1421: bHI l1431
l1422: cmpLT R0, R7, ROR R5
l1423: mvns R9, R7, ASR R7
l1424: rsbMI R0, R8, #132
l1425: orrGT R2, R6, #340
l1426: addPLs R3, R1, #-1677721598
l1427: mvnCS R0, R9, LSL #22
l1428: sub R3, R12, R9, RRX 
l1429: tstVS R15, #112
l1430: clz R9, R3
l1431: tst R3, R1, ASR R8
l1432: orrMIs R3, R5, R0
l1433: tstGT R12, R12, ASR #30
l1434: ldrVCsh R5, [sp, #+0]
l1435: eorCSs R11, R6, R9, LSR #17
l1436: andPLs R7, R5, #1792
l1437: umulls R8, R1, R0, R2
l1438: orrLEs R4, R6, R7
l1439: subs R7, R2, #8454144
l1440: cmnCS R2, #303104
l1441: subs R11, R12, R6, RRX 
l1442: ands R11, R14, #-2147483597
l1443: cmpLT R8, #31
l1444: mvn R11, R8, RRX 
l1445: teqLE R8, R10, LSL R3
l1446: tstVS R14, R5
l1447: subCS R12, R6, R5
l1448: smullLT R11, R12, R10, R8
l1449: bLE l1456
l1450: add R1, R0, #8
l1451: adcs R2, R5, #4653056
l1452: mvnHI R9, R11, RRX 
l1453: teqNE R6, R3, ASR R8
l1454: clzCC R11, R6
l1455: b l1457
l1456: b l1451
l1457: tstVC R8, #-536870911
l1458: orrs R3, R15, #728
l1459: adcs R10, R6, R14, ASR #21
l1460: mov R8, #48
l1461: ldrsh R9, [sp, +R8]
l1462: rsbNE R7, R12, R5, RRX 
l1463: orrVSs R14, R7, #113
l1464: clzCS R7, R1
l1465: orrLSs R11, R15, R6, ROR #23
l1466: subGEs R4, R15, #3360
l1467: mvnLSs R5, R2, RRX 
l1468: bLT l1476
l1469: rsc R8, R0, #-1073741781
l1470: andVS R9, R0, #610304
l1471: orr R10, R8, #6464
l1472: sbc R6, R4, R12, LSL #6
l1473: rsc R6, R15, #-335544320
l1474: sbcLTs R12, R14, R10
l1475: cmp R12, R0
l1476: teq R8, R0
l1477: and R7, R8, #216064
l1478: sbcMI R14, R0, R15
l1479: sub R4, R4, #10816
l1480: rscs R5, R4, R5
l1481: tst R0, R2, LSL R2
l1482: bLT l1487
l1483: teq R15, R6, ASR #25
l1484: adcGEs R3, R6, R8, ASR #20
l1485: eor R14, R12, R14
l1486: cmp R15, R0, RRX 
l1487: bicLS R5, R3, R12
l1488: eor R9, R7, R10, LSR #21
l1489: mlaCS R6, R5, R9, R0
l1490: cmp R0, R1, ROR R12
l1491: addVCs R6, R11, #108
l1492: teqGE R5, #622592
l1493: mulLS R5, R0, R4
l1494: clzEQ R1, R1
l1495: eor R0, R0, R3
l1496: b l1501
l1497: add R1, R0, #82
l1498: sub R2, R10, #177209344
l1499: subPL R9, R1, #9472
l1500: b l1502
l1501: b l1498
l1502: mov R0, #55
l1503: ldrGTB R10, [sp, +R0]
l1504: subLTs R0, R8, #1543503872
l1505: eorPLs R3, R5, R11
l1506: bicGE R10, R8, R5, RRX 
l1507: rsb R10, R11, R7
l1508: teqEQ R4, R5, RRX 
l1509: mov R14, #78
l1510: strEQh R0, [sp, +R14]
l1511: mov R5, #56
l1512: str R8, [sp, +R5]!
l1513: teqEQ R11, R10, LSL R1
l1514: orrs R4, R10, R14, LSR #31
l1515: andCCs R5, R5, R0
l1516: teqCS R7, R5, ASR R10
l1517: cmpPL R11, #268435462
l1518: mvnLE R12, R9, LSR R10
l1519: teq R7, #-603979776
l1520: teqLS R8, R10, ASR #8
l1521: bLE l1529
l1522: adds R14, R15, R10, ROR #3
l1523: addLEs R1, R1, R5, LSR #18
l1524: adds R9, R11, R9, LSL R0
l1525: movs R10, R15
l1526: adds R7, R8, R10
l1527: rsbs R1, R1, #-268435442
l1528: eors R12, R5, R5
l1529: clz R7, R0
l1530: bicPLs R14, R2, #272
l1531: stmDA R13, {R0, R3, R4, R5, R9, R10, R11, R12, R13, R14, R15}
l1532: subPL R2, R0, R3
l1533: teqVS R2, #193536
l1534: ldrsh R5, [sp, #+20]
l1535: bicGEs R6, R1, R4, LSR #5
l1536: stmVSIA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R11, R12, R13, R14, R15}
l1537: sub R11, R2, R9, ROR #27
l1538: clz R10, R14
l1539: stmDA R13!, {R13}
l1540: sbcLTs R11, R10, R9, LSR #9
l1541: mvnGT R5, R4, LSR R11
l1542: cmpNE R8, R6, LSR #17
l1543: bicCSs R1, R11, R14, LSL R7
l1544: bicGEs R6, R9, R14, LSR R12
l1545: mov R10, #32
l1546: ldr R11, [sp, -R10]!
l1547: mvnVCs R6, R12
l1548: tst R3, R11, LSR R11
l1549: b l1550
l1550: rsc R1, R10, #176160768
l1551: b l1559
l1552: add R1, R0, #152
l1553: andMI R6, R2, R4, RRX 
l1554: rsbMIs R8, R0, R2, LSL R8
l1555: adcLSs R11, R14, R2, ROR #10
l1556: subLSs R5, R9, #276824064
l1557: sbcMI R6, R8, R8, LSL #29
l1558: b l1560
l1559: b l1553
l1560: orrs R10, R12, R3
l1561: ldmIA R13!, {R0, R1, R3, R5, R6, R7, R8, R10, R11}
l1562: stmDB R13!, {R1}
l1563: mov R3, #16
l1564: str R4, [sp, -R3]
l1565: rscNEs R6, R9, R9
l1566: bNE l1573
l1567: add R1, R0, #58
l1568: teqGE R5, #-318767104
l1569: rscs R6, R1, R8
l1570: orrHI R5, R10, R4, ASR R7
l1571: orrLSs R5, R1, #315392
l1572: b l1574
l1573: b l1568
l1574: subHI R1, R9, #659456
l1575: b l1580
l1576: andLT R11, R14, R2, RRX 
l1577: eorLT R6, R14, #192
l1578: sbcCS R14, R0, #20480
l1579: eorMIs R14, R10, #50688
l1580: rsbCC R1, R0, R8, RRX 
l1581: bicLTs R11, R2, R0, LSR #26
l1582: adcNE R3, R3, #688
l1583: strLTh R4, [sp, #-32]
l1584: tst R9, R8, ASR R6
l1585: bMI l1594
l1586: addNE R11, R11, R11
l1587: rscPLs R3, R14, R2, ASR R10
l1588: tstPL R3, R6, ASR #26
l1589: subs R8, R11, #384
l1590: cmpPL R6, #168820736
l1591: rsb R2, R6, #201326593
l1592: cmpLS R14, R10
l1593: bics R0, R0, #15872
l1594: orr R6, R1, R11
l1595: bicVCs R14, R12, #57600
l1596: subCSs R2, R8, R14, LSL #13
l1597: stmIB R13!, {R3, R5, R11}
l1598: eorCCs R10, R10, R9, ASR R1
l1599: eorGE R11, R7, R9, ROR #8
l1600: cmn R9, R5, RRX 
l1601: ands R3, R9, #7168
l1602: sbcPLs R10, R10, R1, LSR R2
l1603: subPL R3, R1, R1
l1604: rscLE R8, R4, R7, ROR R1
l1605: clzLT R1, R12
l1606: movs R2, R0, ROR R1
l1607: teqCC R8, R5, RRX 
l1608: smullCSs R3, R10, R5, R3
l1609: smlalVCs R4, R8, R6, R12
l1610: bic R7, R3, #6
l1611: orrCS R7, R10, R8, RRX 
l1612: adcNE R7, R8, R15
l1613: b l1618
l1614: add R1, R0, #240
l1615: bicVSs R8, R5, #1232
l1616: andCCs R8, R3, R7, ASR R9
l1617: b l1619
l1618: b l1615
l1619: addMIs R9, R14, R15, ASR #25
l1620: eorCSs R3, R12, R14
l1621: bicPLs R14, R1, R15, LSL #19
l1622: ldr R9, [sp], #-8
l1623: umullVCs R2, R10, R4, R5
l1624: and R6, R2, R0, RRX 
l1625: tst R1, R2, ASR #27
l1626: b l1634
l1627: movCC R4, R7, LSR #9
l1628: rsbs R6, R2, R4, LSL R5
l1629: clzCS R7, R11
l1630: subs R0, R9, #-2147483609
l1631: adds R3, R11, R8
l1632: orrs R4, R14, R6
l1633: eor R9, R5, R12, LSR #21
l1634: cmpLE R3, R5
l1635: bVS l1644
l1636: add R1, R0, #164
l1637: tstCS R1, #56
l1638: teqLE R1, R14
l1639: adds R7, R7, R9
l1640: mvnVC R14, R9, LSL #25
l1641: eorVCs R11, R3, R8, LSL R3
l1642: eorCSs R4, R8, R6, LSR #31
l1643: b l1645
l1644: b l1637
l1645: bGT l1649
l1646: add R1, R0, #85
l1647: eorLS R12, R0, R2, ASR R5
l1648: b l1650
l1649: b l1647
l1650: subVS R2, R1, R7
l1651: mov R14, #14
l1652: strNEh R2, [sp, -R14]
l1653: ldmIA R13!, {R2, R9, R12}
l1654: ands R12, R11, R5
l1655: mov R0, #78
l1656: ldrVSsh R14, [sp, -R0]
l1657: ldrB R9, [sp, #-22]
l1658: clzGT R6, R8
l1659: orr R9, R14, R3
l1660: subLS R8, R8, R12, ASR #23
l1661: mov R8, #53
l1662: ldrsb R1, [sp, -R8]
l1663: bVC l1673
l1664: rscs R10, R3, #251658240
l1665: addLS R4, R15, R1
l1666: subs R8, R4, #14144
l1667: subLSs R9, R5, R3, LSL #12
l1668: sbcs R7, R9, R9, ASR #30
l1669: adcs R0, R12, R6
l1670: adc R12, R5, R0, RRX 
l1671: bics R7, R9, R6, ROR R7
l1672: clz R10, R8
l1673: cmp R14, R0, LSL R0
l1674: mlas R12, R14, R10, R14
l1675: ands R0, R9, #218103808
l1676: mvnGT R5, #6160384
l1677: andNE R3, R7, R0, RRX 
l1678: cmnMI R1, R4, LSR #2
l1679: rsbs R3, R3, R2
l1680: bPL l1686
l1681: sbcVCs R1, R4, R14
l1682: subLSs R4, R2, R8, LSL R2
l1683: subCC R7, R10, R5, LSR R9
l1684: eorLEs R0, R5, #1073741886
l1685: eorPLs R8, R2, #3776
l1686: eor R6, R0, R7, LSL #17
l1687: mvnGT R12, #56098816
l1688: mvnLS R7, R7, LSR R6
l1689: rsbGEs R8, R14, #-1895825408
l1690: orrPL R7, R6, R0, ASR R2
l1691: sbcs R14, R12, R11, RRX 
l1692: tst R12, R0
l1693: stmVCDA R13, {R0, R2, R3, R4, R5, R6, R8, R9, R10, R11, R13, R14, R15}
l1694: teqLT R8, R9, LSR #13
l1695: cmnCC R10, #26112
l1696: andNEs R11, R1, R15, RRX 
l1697: orrGEs R11, R8, R14
l1698: bHI l1704
l1699: add R1, R0, #201
l1700: cmnLT R9, #87040
l1701: sbcPL R1, R0, R4, LSR #17
l1702: rsbVC R2, R0, R3
l1703: b l1705
l1704: b l1700
l1705: rsbMI R7, R9, R4, LSL R3
l1706: mvn R8, R14
l1707: clz R14, R9
l1708: ands R8, R0, R7
l1709: b l1713
l1710: add R1, R0, #97
l1711: mvn R5, R1
l1712: b l1714
l1713: b l1711
l1714: bPL l1720
l1715: add R1, R0, #151
l1716: mvnPL R0, R9, ASR R4
l1717: orrLEs R14, R3, R7
l1718: ands R8, R0, R7
l1719: b l1721
l1720: b l1716
l1721: orrs R9, R2, R5
l1722: umlal R6, R12, R3, R6
l1723: movMIs R8, #524288000
l1724: ldrHIB R2, [sp, #-22]
l1725: subEQs R10, R4, R5, RRX 
l1726: subs R0, R15, R6
l1727: mov R5, #2
l1728: ldrVCh R8, [sp, +R5]
l1729: ldrB R4, [sp, #-22]
l1730: orrEQ R9, R5, R2, ASR #24
l1731: mov R6, R9, ASR R9
l1732: orrs R8, R0, R15, ASR #27
l1733: sbcEQ R7, R4, R3, RRX 
l1734: bicGT R0, R1, R9, ASR R11
l1735: bicVC R6, R14, #38
l1736: stmDA R13!, {R2, R5, R6, R8, R10, R11, R14}
l1737: rsc R12, R3, R15, ROR #30
l1738: cmpEQ R2, R15, LSR #16
l1739: sbcs R8, R9, R11
l1740: add R0, R9, R0, ASR #20
l1741: orrs R12, R1, R11, LSR #6
l1742: ldr R8, [sp], #+60
l1743: andVS R3, R8, #942080
l1744: clzLE R2, R6
l1745: ldmIA R13, {R0, R1, R8, R9, R11}
l1746: tst R9, R11
l1747: and R8, R0, #-1660944384
l1748: orr R6, R2, R8, ROR #9
l1749: b l1754
l1750: movLE R14, #29
l1751: and R2, R4, R1, RRX 
l1752: cmn R8, R11, LSL R12
l1753: cmp R11, R14
l1754: subs R4, R14, #-805306368
l1755: orr R14, R15, #26
l1756: add R2, R8, #303104
l1757: tstNE R6, R0
l1758: clz R9, R9
l1759: sbcMIs R3, R12, R3
l1760: adcPLs R3, R11, #917504
l1761: orrGE R2, R7, R9
l1762: and R1, R11, R15
l1763: bMI l1771
l1764: cmn R15, R3
l1765: mvns R7, R6, ROR R3
l1766: bicCSs R5, R11, R14, ASR #17
l1767: subLT R7, R6, #-1845493760
l1768: bic R0, R6, R4, LSL R3
l1769: and R8, R14, #888832
l1770: eors R1, R1, R8, LSR #13
l1771: orrs R9, R10, #771751936
l1772: clzCC R4, R7
l1773: bics R9, R5, #13500416
l1774: rsb R7, R9, R10, ASR R14
l1775: cmp R3, R4
l1776: mulLEs R6, R0, R12
l1777: ldrsh R9, [sp, #-68]
l1778: eorLSs R2, R10, R4, ROR R9
l1779: bVS l1789
l1780: sbcs R11, R12, R8
l1781: eor R0, R4, R10, LSL R5
l1782: rscLSs R14, R2, R5, LSL R11
l1783: cmn R3, R11, LSL #22
l1784: mvns R2, R4
l1785: andGTs R14, R3, #234881024
l1786: cmpGE R11, R4, ROR R10
l1787: sbcVS R6, R9, R4, LSR R5
l1788: rscVSs R12, R0, R11
l1789: addLEs R9, R1, R1
l1790: b l1797
l1791: add R1, R0, #224
l1792: tst R14, R1, ROR R6
l1793: mvnLEs R6, R1, LSL #22
l1794: rscs R6, R12, R12
l1795: cmnHI R7, #37888
l1796: b l1798
l1797: b l1792
l1798: stmDB R13!, {R1, R2, R8, R9, R10, R11, R15}
l1799: mov R12, #16
l1800: ldrsh R4, [sp, +R12]
l1801: eorLS R11, R5, #297795584
l1802: sbcs R10, R3, R1, ROR R11
l1803: orrs R7, R6, #13568
l1804: andEQs R4, R8, R6, ASR R6
l1805: adds R8, R7, #81920
l1806: subCCs R9, R10, R3
l1807: eor R12, R12, R10, ROR #28
l1808: mvn R3, R12
l1809: bHI l1817
l1810: add R1, R0, #220
l1811: subPL R10, R6, R14
l1812: subMIs R9, R12, #173056
l1813: eor R0, R12, R11, LSR R11
l1814: orrVC R6, R3, #1073741878
l1815: subMIs R10, R8, R11, ROR #27
l1816: b l1818
l1817: b l1811
l1818: ldrsb R12, [sp, #-17]
l1819: stmDA R13!, {R13}
l1820: adcLE R1, R4, R11, LSR #7
l1821: clz R14, R3
l1822: movHI R7, R12, LSL #17
l1823: rsb R2, R6, #1610612736
l1824: bicCSs R12, R1, R0, LSR #1
l1825: ldmDA R13!, {R0, R1, R3, R5, R6, R8, R12, R14}
l1826: sbc R3, R1, R11
l1827: sbc R8, R11, R10, RRX 
l1828: teq R11, R2, ROR R2
l1829: tstCC R4, R12, ROR #2
l1830: adcs R2, R0, R4, ASR #24
l1831: b l1839
l1832: movGT R0, R4
l1833: and R12, R3, R10, RRX 
l1834: mvn R0, R0, LSR R0
l1835: cmn R1, R0
l1836: rscPL R14, R1, R5
l1837: subs R5, R10, #-1660944384
l1838: adc R10, R10, #805306368
l1839: rsbLS R5, R2, #1275068418
l1840: b l1846
l1841: movs R9, R14, LSL R2
l1842: bic R10, R6, R1, LSR #21
l1843: cmp R1, R14
l1844: adcCCs R12, R1, R3, RRX 
l1845: subCCs R0, R5, R2
l1846: cmpMI R1, R7, ROR R4
l1847: mulPL R6, R12, R3
l1848: adcLS R1, R15, R11, ASR #24
l1849: sbcPLs R12, R8, R3, LSL R2
l1850: sbcs R6, R5, R2, LSR R9
l1851: cmn R14, R14, LSL #19
l1852: mlaLT R7, R9, R2, R2
l1853: stmIB R13!, {R1, R3, R5, R6, R7, R9, R12, R15}
l1854: bLT l1862
l1855: tstGT R0, R12
l1856: rsbs R1, R4, R2, LSR R12
l1857: movHI R4, R9, LSL #17
l1858: sbcLT R2, R11, R9, LSL R3
l1859: adcVCs R7, R1, R10, RRX 
l1860: cmp R11, R14, RRX 
l1861: sbcs R6, R10, R15
l1862: clz R4, R2
l1863: b l1869
l1864: add R1, R0, #247
l1865: movLEs R1, R7, ROR R3
l1866: andHI R14, R7, R12, RRX 
l1867: rscVS R9, R5, R11, ASR R3
l1868: b l1870
l1869: b l1865
l1870: movHI R2, R12, LSL #27
l1871: bicPL R8, R3, R3, ASR #28
l1872: smlalCC R1, R7, R0, R3
l1873: cmn R10, R11, LSR #6
l1874: mov R1, #20
l1875: str R1, [sp], +R1
l1876: tstCS R15, #112
l1877: sub R8, R0, R6, LSR #10
l1878: mvnNEs R7, #7936
l1879: orrHI R2, R7, R7, LSL R12
l1880: orrVS R10, R4, #589824
l1881: ldr R6, [sp], #-8
l1882: teqGE R11, R6, ASR R10
l1883: rscs R4, R10, R14, ROR R14
l1884: ldrVSsh R14, [sp, #-22]
l1885: mvnCSs R3, #-805306364
l1886: umullLS R6, R10, R1, R10
l1887: clzLS R6, R10
l1888: stmNEDB R13, {R8}
l1889: and R12, R1, R9, ROR #3
l1890: stmIB R13!, {R2, R3, R4, R10, R15}
l1891: tst R3, R6, RRX 
l1892: adcCS R12, R15, R8, LSL #8
l1893: bPL l1901
l1894: sbcs R5, R6, R7, RRX 
l1895: adcHIs R9, R9, R7, ROR R6
l1896: bicLS R9, R0, #1344
l1897: sub R1, R7, R2
l1898: subCSs R11, R7, R9
l1899: adc R2, R6, R2
l1900: tstCS R10, R7, ASR R12
l1901: andEQ R8, R1, R5, LSL #27
l1902: clz R6, R10
l1903: orrNEs R12, R12, R1, LSR R2
l1904: eorVCs R7, R3, R4, RRX 
l1905: rscLT R1, R3, R4, RRX 
l1906: mulLE R5, R0, R7
l1907: cmpLS R7, R14, LSL R2
l1908: rscCS R12, R7, R11, ROR R12
l1909: ands R12, R1, R11, ASR R4
l1910: orrLSs R3, R0, R0
l1911: eorPLs R8, R2, #536870919
l1912: sub R0, R10, R11, ASR #31
l1913: addLT R6, R0, R4
l1914: rsb R3, R9, R2, LSR R6
l1915: eor R9, R7, #-1073741786
l1916: ldrB R5, [sp, #-16]
l1917: adcVSs R1, R1, R3, RRX 
l1918: cmpLE R11, R3, LSR #31
l1919: mov R11, #48
l1920: str R6, [sp, -R11]!
l1921: sub R3, R15, R2, RRX 
l1922: clzCC R5, R1
l1923: eorGT R7, R7, R12, LSL R12
l1924: b l1933
l1925: tst R12, R9, ROR R9
l1926: rsc R11, R0, R5, LSR #27
l1927: cmpNE R15, R1, LSR #30
l1928: cmp R3, R9
l1929: mvnMI R9, R14, LSR R9
l1930: mvns R2, R5, LSR #0
l1931: add R10, R8, R8, ASR R7
l1932: sbc R6, R14, R12, ROR R7
l1933: teq R12, #-671088640
l1934: teq R7, #60416
l1935: ldmIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R10, R14}
l1936: teqCS R5, R3, LSL R6
l1937: sub R3, R0, #2621440
l1938: ldmDA R13!, {R1, R2, R12}
l1939: sbcCS R11, R3, R5, RRX 
l1940: mvns R5, R12, RRX 
l1941: b l1943
l1942: rsbCS R0, R4, #-1744830461
l1943: rscHIs R9, R6, R8
l1944: addNEs R1, R0, R0, ROR R9
l1945: rsbHI R6, R15, #913408
l1946: subHI R9, R14, #913408
l1947: tstPL R8, R6, RRX 
l1948: str R5, [sp, #-16]
l1949: sub R12, R1, R10, ASR #31
l1950: orrHIs R6, R7, R14, ROR R9
l1951: ldrPLsb R4, [sp, #-50]
l1952: adds R11, R0, R12, ASR R12
l1953: movGT R8, R8, RRX 
l1954: umullVCs R4, R7, R5, R7
l1955: tst R12, R4
l1956: mvnEQ R12, R3, RRX 
l1957: mvns R8, R7, LSL #21
l1958: str R3, [sp], #-20
l1959: ldmDA R13!, {R1, R2, R5, R6, R8, R9, R10, R11, R12}
l1960: cmn R11, #1023410176
l1961: cmnCS R11, R7, ASR R9
l1962: eorMIs R5, R11, R9, LSR #24
l1963: b l1971
l1964: bicCCs R6, R15, #11141120
l1965: adcCCs R8, R8, R9, ROR #1
l1966: rsbVC R1, R4, R7
l1967: tstPL R0, R4, LSR R14
l1968: eorGT R4, R12, #1073741874
l1969: mvnLT R9, #134217731
l1970: sub R3, R12, R11
l1971: eors R8, R9, #432
l1972: orrGT R9, R10, R7, RRX 
l1973: smull R10, R8, R11, R7
l1974: cmnCS R12, #2944
l1975: and R12, R0, R9, ASR #18
l1976: eorLT R12, R8, R11, RRX 
l1977: bVS l1982
l1978: mvnCC R14, R10, ASR #29
l1979: adcMI R4, R1, R4, RRX 
l1980: tstVS R9, #10616832
l1981: eorLE R9, R9, R15
l1982: clzVC R12, R12
l1983: ands R11, R12, R8, LSL #24
l1984: rsc R1, R2, R3
l1985: bicCS R7, R12, R3, ASR R1
l1986: ldmIB R13!, {R5, R6, R9, R10, R11}
l1987: cmpCC R12, R5
l1988: b l1990
l1989: andVC R12, R0, R12, LSL R2
l1990: clz R6, R5
l1991: cmn R9, #52736
l1992: rsbHI R10, R11, R14, LSR R12
l1993: addVCs R6, R1, R2, ASR #13
l1994: mvn R12, R10, ASR R4
l1995: clzNE R8, R2
l1996: cmn R15, R0, RRX 
l1997: cmp R7, R7
l1998: addNEs R11, R2, R14, LSL R9
l1999: clzPL R0, R6
l2000: add R0, R14, R2, ASR R0
l2001: mvns R6, R0
l2002: addLE R8, R4, R4, ASR R12
l2003: clz R7, R5
l2004: mvns R0, R3, ROR #7
l2005: ldmDB R13!, {R0, R2, R3, R6, R11}
l2006: cmpGE R12, R2, ROR #26
l2007: mlaGTs R2, R12, R3, R11
l2008: teq R14, R15, ASR #10
l2009: sub R6, R6, R1
l2010: tst R6, #12224
l2011: mov R0, #70
l2012: ldrsh R14, [sp, +R0]
l2013: cmnVC R9, #157696
l2014: sbc R5, R5, R6
l2015: subLS R2, R4, R8, ASR R12
l2016: rscCC R10, R6, #408
l2017: smlals R2, R7, R5, R7
l2018: rsbVC R14, R11, #-2147483621
l2019: teqPL R15, R4
l2020: mov R3, #52
l2021: ldr R7, [sp], +R3
l2022: rsbs R7, R12, #1048576000
l2023: subs R6, R0, R9, LSL #1
l2024: clzLS R0, R2
l2025: bMI l2031
l2026: add R1, R0, #247
l2027: teqCS R1, R7, LSR R2
l2028: movs R2, R7, ASR #30
l2029: rscs R9, R9, R9, ASR #0
l2030: b l2032
l2031: b l2027
l2032: tst R7, #1828716544
l2033: rsbGEs R8, R12, R8, RRX 
l2034: ldmIA R13!, {R3, R5, R7}
l2035: eors R6, R3, R3, LSR R12
l2036: mov R7, #48
l2037: strNEh R12, [sp, -R7]
l2038: and R7, R14, R0
l2039: bicNEs R2, R2, #119808
l2040: sbcCS R8, R0, R15, RRX 
l2041: mvns R8, R6, RRX 
l2042: rsbs R0, R12, R2, LSR #27
l2043: clzCC R12, R10
l2044: bCC l2047
l2045: mvnPL R12, #356352
l2046: sbc R14, R11, R12, RRX 
l2047: eorPLs R10, R1, #94
l2048: orrGT R8, R8, #1610612750
l2049: cmpPL R6, R4, ASR #16
l2050: b l2058
l2051: add R1, R0, #32
l2052: bic R9, R12, #268435457
l2053: subGT R11, R2, R5, ASR R12
l2054: bicHI R12, R3, R14, LSL #29
l2055: tstLE R12, R10, ROR R8
l2056: teqLE R4, R4
l2057: b l2059
l2058: b l2052
l2059: clzVS R11, R14
l2060: tstCS R7, #256
l2061: addVS R11, R7, R6
l2062: rsbCC R11, R8, R1, RRX 
l2063: cmp R12, R2
l2064: mul R10, R1, R2
l2065: andVCs R1, R6, R3, LSR R11
l2066: mov R14, #36
l2067: ldrPLh R7, [sp, -R14]
l2068: addCS R12, R11, R14, LSR R2
l2069: teq R6, R9, ASR #14
l2070: teqEQ R12, R6, LSR R10
l2071: bicGEs R3, R4, R0, ROR #6
l2072: clzCC R8, R0
l2073: mov R6, #36
l2074: ldr R12, [sp, -R6]!
l2075: tst R0, R3, ROR R1
l2076: rsc R3, R6, R1, LSR #13
l2077: eorMIs R9, R7, #11599872
l2078: ldmVSIA R13, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l2079: rsb R6, R9, R2
l2080: teqLE R6, #6144
l2081: mvnGT R12, #822083584
l2082: bVC l2086
l2083: add R1, R0, #34
l2084: mvn R12, #135266304
l2085: b l2087
l2086: b l2084
l2087: subEQ R7, R0, R12, LSL #3
l2088: adc R9, R0, R7, LSL #12
l2089: and R9, R10, R6, ROR #20
l2090: ldmIA R13!, {R1}
l2091: clzEQ R1, R4
l2092: addCC R4, R6, #48128
l2093: orrs R3, R12, #839680
l2094: orrLT R10, R4, #41418752
l2095: rsbEQs R5, R6, #9830400
l2096: b l2101
l2097: add R1, R0, #109
l2098: cmpVS R12, R11, ASR #7
l2099: cmpGT R4, R0, ASR R10
l2100: b l2102
l2101: b l2098
l2102: b l2110
l2103: cmnGT R0, #3968
l2104: orrVCs R1, R0, R7, ROR R9
l2105: cmpLS R4, R6, LSL #3
l2106: eorHIs R5, R12, #144703488
l2107: cmp R14, #118784
l2108: cmp R11, R12, RRX 
l2109: adcLE R3, R4, R11, LSL R9
l2110: cmpCC R1, R11, LSR R0
l2111: orrNEs R3, R9, R3, RRX 
l2112: adcPLs R0, R10, R10, RRX 
l2113: umlal R2, R0, R14, R9
l2114: bLT l2118
l2115: mvnHIs R5, R8
l2116: rsb R10, R6, R3, RRX 
l2117: eors R2, R3, R11, RRX 
l2118: teqHI R9, R14, LSR #13
l2119: bVC l2123
l2120: add R1, R0, #99
l2121: tstVS R7, R14, LSL R7
l2122: b l2124
l2123: b l2121
l2124: mov R3, #20
l2125: ldrGT R5, [sp, -R3]
l2126: stmDA R13!, {R2, R5, R7, R8, R9, R11, R14, R15}
l2127: b l2133
l2128: add R1, R0, #30
l2129: subVC R3, R11, R4, RRX 
l2130: ands R9, R8, R11, ASR R12
l2131: rsb R9, R1, #8192
l2132: b l2134
l2133: b l2129
l2134: mvnVC R12, R4, ROR R8
l2135: adcCCs R9, R3, R10, LSR R4
l2136: ldmDB R13!, {R0, R2, R4, R5, R8, R12}
l2137: mov R14, #16
l2138: ldrHI R10, [sp, -R14]
l2139: ldr R2, [sp, #+4]
l2140: eor R14, R12, R3
l2141: stmLEIA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R13, R15}
l2142: bCC l2145
l2143: sbcPL R12, R7, R9
l2144: andPLs R6, R6, R9, ASR R3
l2145: teqEQ R8, R15, LSR #30
l2146: umlalGTs R6, R7, R5, R3
l2147: rsbHI R5, R4, R8, ROR R7
l2148: bLT l2157
l2149: add R1, R0, #186
l2150: andLE R1, R12, R11, ASR R1
l2151: bicPLs R8, R0, #109
l2152: mvnLSs R5, R7
l2153: clzNE R1, R2
l2154: rsbLT R11, R8, #612368384
l2155: addCC R3, R1, #32768
l2156: b l2158
l2157: b l2150
l2158: addHIs R2, R14, R0, LSL #4
l2159: teqNE R8, R8, RRX 
l2160: orrGEs R5, R7, R5, ASR R8
l2161: movs R7, R3, LSL #12
l2162: adds R6, R9, #2883584
l2163: ldrMIsh R9, [sp, #-52]
l2164: subs R9, R14, R12, RRX 
l2165: orrVCs R6, R2, R3
l2166: subs R9, R0, R3, ASR R11
l2167: b l2171
l2168: clzLS R2, R3
l2169: teqLT R0, R11
l2170: eors R4, R5, #201326594
l2171: subVS R12, R9, R14
l2172: rsb R3, R0, #3776
l2173: bic R11, R3, R3
l2174: mvnVC R2, R1, ASR R4
l2175: bLS l2184
l2176: add R1, R0, #217
l2177: bicGEs R4, R9, R7, ROR #11
l2178: rsbs R7, R3, R10, ASR R6
l2179: rsbs R14, R9, R11
l2180: bics R8, R8, #258048
l2181: tstVC R4, R15
l2182: tstLT R5, R3, RRX 
l2183: b l2185
l2184: b l2177
l2185: tstCS R11, R1, LSR #0
l2186: b l2194
l2187: add R1, R0, #13
l2188: bics R2, R7, R12, ASR R12
l2189: bic R12, R12, #128
l2190: adc R3, R8, #187695104
l2191: clzLS R2, R12
l2192: and R6, R8, R7, RRX 
l2193: b l2195
l2194: b l2188
l2195: cmpLS R4, R4
l2196: mov R3, #8
l2197: str R1, [sp], -R3
l2198: subLTs R1, R12, R5
l2199: bicMIs R0, R8, R4, ASR #17
l2200: strh R11, [sp, #-18]
l2201: b l2210
l2202: add R1, R0, #85
l2203: adcs R12, R4, R1, RRX 
l2204: clz R4, R1
l2205: and R10, R1, R10, ROR R2
l2206: subLS R4, R10, R11, LSL #3
l2207: ands R7, R4, #25
l2208: mvnEQs R2, #1962934272
l2209: b l2211
l2210: b l2203
l2211: mov R7, #223
l2212: tst R3, R8
l2213: rscLEs R2, R4, R14, ASR #7
l2214: cmpCS R0, R12, LSR #13
l2215: mov R7, #2
l2216: strCCB R3, [sp, -R7]
l2217: mvns R5, R15, LSL #4
l2218: ldrh R1, [sp, #-46]
l2219: cmp R12, R8, LSR #15
l2220: subs R12, R14, #14811136
l2221: smlalEQs R5, R10, R7, R7
l2222: ands R11, R10, #3760
l2223: b l2224
l2224: teqVS R5, R4, ASR #12
l2225: addPLs R6, R9, R12, ROR #29
l2226: ldmDA R13, {R1, R8}
l2227: bic R10, R10, R14
l2228: teq R6, #159
l2229: clz R3, R14
l2230: andPL R2, R15, R2
l2231: rscCS R14, R5, R6
l2232: clzLT R10, R7
l2233: tstGT R2, #3392
l2234: adcEQ R0, R2, R9, RRX 
l2235: cmn R0, R14, RRX 
l2236: ands R7, R7, R5, ASR #24
l2237: mov R7, #134144
l2238: b l2242
l2239: eor R2, R8, R6
l2240: eorGT R3, R14, R12, LSR R9
l2241: teqCS R3, R7, LSL #12
l2242: andLSs R5, R10, #560
l2243: rscNE R10, R3, R5, LSR R4
l2244: subs R4, R2, R5, RRX 
l2245: cmnCC R7, R6
l2246: mov R7, #12
l2247: ldrh R9, [sp, -R7]
l2248: smullHI R11, R3, R0, R7
l2249: b l2251
l2250: sbcs R14, R2, R1, ASR R2
l2251: subs R14, R11, R11, LSR #4
l2252: subLSs R5, R10, R5
l2253: teqPL R14, R11, LSL R6
l2254: ldrEQ R11, [sp, #-44]
l2255: teq R15, R5, ROR #18
l2256: orr R5, R0, R2
l2257: tst R9, R7
l2258: mvnHIs R5, #58
l2259: tstCS R1, R12, LSL #4
l2260: movLTs R6, R9, LSR R12
l2261: movEQs R5, R11
l2262: rsbs R6, R0, R10, RRX 
l2263: b l2272
l2264: movLE R2, R0, LSL #8
l2265: bics R1, R15, R12
l2266: bic R2, R14, R11, ROR #25
l2267: ands R7, R3, R11, ROR R10
l2268: tstPL R11, R1, ASR #29
l2269: addLE R1, R1, #720896
l2270: rscLT R11, R1, #1879048192
l2271: cmn R0, R9, LSR #7
l2272: bicVCs R4, R12, R11
l2273: sbcVC R7, R12, R12, LSR R7
l2274: orrs R1, R14, R12, LSR R8
l2275: movLTs R6, R3, ASR R1
l2276: clz R4, R12
l2277: bicMI R11, R1, R11, LSL R2
l2278: bicLE R11, R9, R14, LSR #10
l2279: bVS l2289
l2280: subVC R10, R7, R11, ROR #30
l2281: add R1, R12, R10, RRX 
l2282: orrCC R12, R6, R2
l2283: rsbNE R2, R4, #121856
l2284: cmnNE R8, #-520093696
l2285: subNEs R5, R12, #222298112
l2286: subLTs R12, R6, R0, ASR R1
l2287: sbcs R2, R9, R7
l2288: eorHI R6, R0, R8, LSL #12
l2289: orrGEs R11, R14, #246
l2290: cmnCC R11, R4, LSR R7
l2291: b l2293
l2292: teqVC R1, R14, LSR R5
l2293: orrs R2, R4, #48234496
l2294: strCS R4, [sp, #-24]
l2295: eor R10, R5, #1191182336
l2296: bHI l2303
l2297: rsb R8, R1, R5, RRX 
l2298: addNE R6, R4, R8, ROR #17
l2299: rsb R10, R9, R3, LSR #2
l2300: eors R1, R3, #-385875968
l2301: andPLs R3, R5, #13303808
l2302: rsbLTs R12, R10, #13893632
l2303: mvnGE R2, #100663296
l2304: rsc R1, R2, R9, ROR R10
l2305: mvnVSs R4, R8, LSL #13
l2306: ldrsb R6, [sp, #-47]
l2307: subGTs R1, R4, R12, LSL #5
l2308: adds R5, R1, #440
l2309: mov R14, #36
l2310: str R3, [sp, -R14]
l2311: subGEs R8, R4, R10, LSL R4
l2312: sub R14, R8, R8, LSR #25
l2313: mvnCCs R14, R7, LSR #9
l2314: rscGT R3, R5, R2, ASR #1
l2315: andVC R4, R5, R7, RRX 
l2316: smlalEQs R14, R0, R7, R11
l2317: mvns R6, #3964928
l2318: orrLEs R6, R3, R12, LSL #8
l2319: sbcVSs R0, R4, #250880
l2320: tst R10, R11, ROR #19
l2321: mov R12, #46
l2322: ldrVSsh R2, [sp, -R12]
l2323: eor R7, R8, R12, RRX 
l2324: movs R4, R4, ASR #20
l2325: sbcNE R5, R4, R7
l2326: mvnCS R10, #7808
l2327: cmn R5, R14
l2328: mov R12, #42
l2329: strCCh R4, [sp, -R12]
l2330: cmpEQ R4, #794624
l2331: bGE l2339
l2332: add R1, R0, #25
l2333: subGE R1, R5, R8
l2334: add R12, R0, R2, ROR R2
l2335: rsbPLs R6, R8, R9, RRX 
l2336: adc R1, R1, R14
l2337: sub R7, R3, R2
l2338: b l2340
l2339: b l2333
l2340: bEQ l2345
l2341: cmn R5, R9
l2342: tst R5, R10, ROR #1
l2343: orr R3, R15, R10, ASR #0
l2344: movs R8, #184
l2345: rscEQ R8, R4, R12, RRX 
l2346: b l2356
l2347: eorVC R4, R14, #384
l2348: sbcs R10, R7, R7, LSR R12
l2349: teqCS R5, R11
l2350: clz R3, R6
l2351: tst R5, R6, ASR R0
l2352: subCSs R3, R6, R8
l2353: orrNE R14, R2, R10, ASR R5
l2354: clzHI R7, R5
l2355: sbcGE R11, R5, R9, LSL #19
l2356: subs R8, R8, #1019215872
l2357: b l2364
l2358: add R1, R0, #65
l2359: sbcs R14, R1, #880
l2360: cmpVC R10, R11, ROR #24
l2361: orr R1, R4, R9
l2362: teqEQ R4, #400
l2363: b l2365
l2364: b l2359
l2365: bMI l2375
l2366: eor R0, R5, R3, ASR #12
l2367: movPL R14, R6
l2368: cmnGT R10, R5, ROR R2
l2369: rsc R12, R9, #8640
l2370: rscCSs R10, R4, R7, LSL R3
l2371: cmp R15, R4, ROR #2
l2372: orrGTs R10, R0, R3, LSR R5
l2373: cmnLT R11, #117440512
l2374: orr R2, R15, #4456448
l2375: mvns R8, R8
l2376: sbcCSs R10, R10, R2, LSL #24
l2377: adds R6, R12, R15, LSL #23
l2378: ldmIA R13!, {R1, R6, R10}
l2379: clzHI R12, R6
l2380: cmpVS R11, R1, LSL #25
l2381: orrVC R8, R4, R4
l2382: b l2386
l2383: add R1, R0, #134
l2384: rsbs R11, R3, R7, RRX 
l2385: b l2387
l2386: b l2384
l2387: addGT R11, R4, #28672
l2388: tst R6, R15
l2389: adcs R4, R15, R0, LSL #30
l2390: tstGT R1, R0, ROR #21
l2391: ldrVCB R4, [sp, #-68]
l2392: bic R14, R12, #536870918
l2393: stmIB R13!, {R12}
l2394: and R12, R1, R4, LSL R10
l2395: mvnCSs R7, R7, ASR R4
l2396: teqVS R2, #12608
l2397: andGE R8, R2, R14, ROR R4
l2398: orrVCs R0, R14, #43
l2399: eorEQ R5, R2, #10813440
l2400: ldmDA R13!, {R2, R5, R6, R8, R9, R11, R14}
l2401: umullGTs R8, R7, R6, R4
l2402: bMI l2410
l2403: add R1, R0, #177
l2404: and R12, R1, R12, LSL #26
l2405: eorGE R1, R2, #-1811939325
l2406: adcPL R0, R8, R2, ROR R6
l2407: teq R14, R12
l2408: orrLS R9, R11, R11, ASR R5
l2409: b l2411
l2410: b l2404
l2411: rsbGE R6, R0, R6, LSR R9
l2412: stmLEDB R13, {R6}
l2413: b l2416
l2414: sub R8, R4, R11
l2415: subs R10, R0, #258998272
l2416: sbcEQs R6, R15, R0
l2417: bLT l2423
l2418: tstCC R1, R15, RRX 
l2419: adcs R8, R8, #792723456
l2420: subs R4, R8, R5
l2421: mvn R9, R5, LSL #2
l2422: tst R0, R11, LSL R11
l2423: add R7, R11, R9, ROR R10
l2424: clzEQ R0, R11
l2425: add R10, R8, R1
l2426: eor R8, R5, #712704
l2427: adcLSs R2, R8, R4, ROR #20
l2428: bNE l2429
l2429: teqCS R9, #532
l2430: rsc R2, R4, R5, ROR R4
l2431: b l2432
l2432: cmp R2, R8, LSR #13
l2433: andGEs R0, R5, R9, ROR R3
l2434: b l2440
l2435: add R1, R0, #105
l2436: subPLs R12, R10, R8, LSR #0
l2437: movNEs R8, R2, LSR R3
l2438: adc R5, R6, #536870913
l2439: b l2441
l2440: b l2436
l2441: rsb R12, R6, R2, LSR R7
l2442: orr R7, R9, #-1207959550
l2443: sbcs R7, R2, R7, RRX 
l2444: addGEs R3, R3, R8, ROR #23
l2445: subMIs R12, R12, R8, LSR R3
l2446: adcMI R4, R11, R12
l2447: mvns R7, R10
l2448: b l2455
l2449: add R1, R0, #38
l2450: cmn R11, R7, LSL R9
l2451: orrLS R6, R4, #409600
l2452: andLE R2, R2, R8, ASR R4
l2453: cmn R11, #49545216
l2454: b l2456
l2455: b l2450
l2456: mvn R5, R2, LSL R2
l2457: mov R8, #24
l2458: ldrLTsh R4, [sp, +R8]
l2459: eor R7, R12, R8
l2460: sub R6, R4, #1952
l2461: sub R9, R9, R7, RRX 
l2462: adcNEs R4, R0, R9
l2463: eorNE R10, R7, #3866624
l2464: orrs R4, R8, R11, ROR #16
l2465: rscMI R4, R5, R2, LSR R11
l2466: bic R11, R1, R15, RRX 
l2467: movVSs R2, #3506176
l2468: andLTs R5, R11, R12, LSR R6
l2469: andVCs R12, R14, R1
l2470: mov R11, #30
l2471: strEQB R11, [sp, +R11]
l2472: bicGT R12, R5, #950272
l2473: orrs R1, R3, R5, ROR R14
l2474: rsb R10, R12, #973078528
l2475: bicLE R1, R11, R8
l2476: adds R12, R10, R5
l2477: sbcCS R2, R7, #973078528
l2478: mvnCCs R5, R15, LSR #29
l2479: mov R10, #24
l2480: ldrsh R14, [sp, -R10]
l2481: movs R2, R6, LSL R2
l2482: mov R12, #28
l2483: ldr R3, [sp], -R12
l2484: teqGE R5, R3, ROR R5
l2485: adds R0, R0, R5, ASR #19
l2486: stmDB R13, {R3, R6, R13}
l2487: cmpPL R11, R0, ASR #26
l2488: b l2492
l2489: add R1, R0, #72
l2490: clzEQ R5, R14
l2491: b l2493
l2492: b l2490
l2493: cmpCC R4, R12
l2494: and R8, R8, R2, RRX 
l2495: movCS R4, R8, ROR #25
l2496: andLSs R6, R12, R10, RRX 
l2497: bics R4, R9, R8, LSR #24
l2498: orrLTs R8, R14, R10, LSR R10
l2499: adcs R6, R15, R9, ROR #29
l2500: sub R2, R7, R6
l2501: teqGE R15, R4
l2502: rscLE R14, R9, R14, RRX 
l2503: stmIA R13, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R10, R13, R14, R15}
l2504: bLT l2514
l2505: cmp R5, #4
l2506: teq R8, R6, ASR #11
l2507: ands R14, R11, #17152
l2508: bicVC R7, R12, R10
l2509: rsbLE R7, R4, R0
l2510: and R1, R14, R11
l2511: bicVC R12, R14, #1946157056
l2512: orrLSs R0, R9, #-671088640
l2513: sub R9, R1, R0
l2514: orr R3, R1, R8
l2515: movCS R10, R8, ASR #18
l2516: mvn R11, #7929856
l2517: mov R8, #4
l2518: ldrEQ R6, [sp, +R8]
l2519: strh R12, [sp, #-20]
l2520: muls R12, R3, R4
l2521: movMI R4, R10, ASR #11
l2522: mov R9, #22
l2523: ldrGEB R6, [sp, -R9]
l2524: rsbs R4, R12, R1, ASR #3
l2525: eorGTs R12, R11, #1140850691
l2526: clz R2, R5
l2527: subHIs R1, R10, R1
l2528: clz R1, R11
l2529: sub R11, R4, R8, LSL R11
l2530: add R3, R8, #2816
l2531: cmp R7, R1, LSL R10
l2532: bicPLs R0, R4, R5, LSR #29
l2533: tstGE R11, R11
l2534: b l2540
l2535: add R1, R0, #209
l2536: eor R4, R9, R1, ROR #18
l2537: rsb R0, R6, R11
l2538: orr R1, R2, R8, LSR R9
l2539: b l2541
l2540: b l2536
l2541: bLT l2545
l2542: add R1, R0, #237
l2543: adcNEs R10, R4, R7
l2544: b l2546
l2545: b l2543
l2546: clz R9, R9
l2547: ldmIA R13, {R1, R2, R6, R7}
l2548: adcs R8, R12, #67108865
l2549: stmDB R13!, {R0, R4, R5, R6, R10, R12, R14}
l2550: strLEh R8, [sp, #-36]
l2551: ldmIB R13!, {R0, R3, R4, R10}
l2552: bics R14, R9, R2
l2553: clz R7, R6
l2554: eorEQs R2, R7, #860
l2555: orrs R1, R5, R11, RRX 
l2556: b l2565
l2557: add R1, R0, #167
l2558: bic R7, R7, R4, LSL #14
l2559: sbcEQ R9, R8, R12
l2560: subs R2, R5, R14, ROR #19
l2561: rsbNE R7, R6, R5
l2562: andCC R8, R11, R6
l2563: mvnEQ R14, R15
l2564: b l2566
l2565: b l2558
l2566: cmpVC R2, #584
l2567: mvns R1, R5, LSL R10
l2568: tst R7, R15
l2569: sbcEQs R11, R9, R14, LSL #12
l2570: cmpLE R9, R5, RRX 
l2571: ldrVSB R12, [sp, #+9]
l2572: teq R1, R15, ROR #17
l2573: cmn R2, R1, RRX 
l2574: orr R14, R10, R7
l2575: andEQs R6, R4, R2
l2576: teqCC R11, R8
l2577: mov R7, #40
l2578: ldr R5, [sp], -R7
l2579: stmDB R13, {R1, R6, R7, R11, R12}
l2580: ldrsb R8, [sp, #+52]
l2581: stmDB R13!, {R10}
l2582: mvnLTs R3, R0, ASR R1
l2583: teq R4, R4, LSL #19
l2584: ldrEQh R5, [sp, #+32]
l2585: mlaGE R11, R6, R2, R4
l2586: ldmIA R13!, {R2, R3, R5, R6, R7, R8, R14}
l2587: eorPLs R8, R9, #9961472
l2588: mov R11, #26
l2589: ldrHIsh R14, [sp, +R11]
l2590: mvns R5, R3, ASR #17
l2591: cmnEQ R0, #970752
l2592: ldrGTh R0, [sp, #-22]
l2593: ldmDB R13!, {R0, R4, R6, R11, R14}
l2594: sbcCC R2, R9, R15, LSL #5
l2595: cmn R5, R9, LSR R2
l2596: bicLS R3, R1, R8, LSR #4
l2597: addNEs R8, R2, R15, LSR #27
l2598: mulCS R0, R1, R7
l2599: andVSs R12, R4, #4080
l2600: orrLS R3, R14, R0
l2601: add R7, R10, R10
l2602: smull R10, R3, R1, R10
l2603: stmDA R13!, {R6}
l2604: sub R14, R0, R0
l2605: rsbNEs R8, R11, R10
l2606: subLT R5, R8, R0
l2607: stmLEDB R13, {R8}
l2608: subGT R3, R15, R14
l2609: umlalGEs R3, R2, R12, R2
l2610: umullVC R4, R2, R10, R1
l2611: orrCCs R12, R9, #39
l2612: tst R7, #236978176
l2613: sbcMI R9, R5, R2, LSR #2
l2614: smullGT R14, R12, R11, R5
l2615: cmnCC R2, R9, LSR R14
l2616: mov R12, #26
l2617: strh R11, [sp, +R12]
l2618: teqLS R6, R9, ASR R2
l2619: sbcs R0, R7, R11, ROR R0
l2620: add R6, R12, #2720
l2621: ldmIA R13!, {R0, R1, R2, R3, R5, R7, R9}
l2622: bHI l2627
l2623: add R1, R0, #140
l2624: orrEQs R0, R11, R8
l2625: cmp R7, R7
l2626: b l2628
l2627: b l2624
l2628: mov R8, #24
l2629: ldr R6, [sp, -R8]
l2630: clzLE R8, R9
l2631: rscCC R12, R9, R10
l2632: clz R9, R11
l2633: b l2640
l2634: cmnVC R5, #1073741834
l2635: adcGT R3, R14, #802816
l2636: add R3, R11, R15, RRX 
l2637: and R3, R10, R2, LSL #27
l2638: addLS R4, R12, R9, RRX 
l2639: rsc R14, R10, R11, LSR R7
l2640: addPL R2, R6, #47
l2641: sbcLT R14, R14, R6, LSL #6
l2642: bMI l2649
l2643: add R1, R0, #51
l2644: cmn R10, R11, ASR R0
l2645: cmpLE R14, #889192448
l2646: orr R4, R9, R5, ROR R14
l2647: rsbHI R11, R2, R0, LSR R5
l2648: b l2650
l2649: b l2644
l2650: umlal R7, R9, R14, R11
l2651: subLSs R9, R15, R12, LSR #5
l2652: orr R14, R12, R0, LSL R6
l2653: addNE R1, R15, #1032192
l2654: sbcEQ R12, R12, R10
l2655: b l2663
l2656: add R1, R0, #100
l2657: cmn R4, R8
l2658: cmp R4, #35913728
l2659: clz R14, R12
l2660: mvnCS R14, #987136
l2661: subNEs R1, R11, R12
l2662: b l2664
l2663: b l2657
l2664: stmDB R13!, {R13, R15}
l2665: rsbPLs R5, R15, R12
l2666: teqVS R8, R2, ROR R10
l2667: subVS R8, R14, R8, ROR #17
l2668: stmCSIA R13, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R12, R13, R14}
l2669: sub R1, R11, R5
l2670: orrs R4, R15, #3920
l2671: tstCC R3, R6, LSR R14
l2672: tst R14, #1024000
l2673: adcLS R6, R4, #15794176
l2674: stmDA R13!, {R13, R14, R15}
l2675: mulLTs R10, R4, R8
l2676: mvnVS R6, R10
l2677: mov R11, #57
l2678: strCCB R14, [sp, -R11]
l2679: subs R2, R4, R3, ROR R14
l2680: clzVC R4, R7
l2681: andHI R10, R11, R4, ASR R7
l2682: clzLT R5, R1
l2683: cmn R15, R11, RRX 
l2684: subHIs R9, R0, R14, LSR #18
l2685: strGTB R1, [sp, #+5]
l2686: andGE R7, R9, R10
l2687: ldmDA R13!, {R1, R4, R5, R8}
l2688: umull R11, R3, R10, R14
l2689: tst R3, #4736
l2690: subCSs R6, R10, R10, ROR #26
l2691: eors R10, R9, R11
l2692: b l2699
l2693: clz R12, R7
l2694: cmp R2, R11, ROR R9
l2695: rscLEs R3, R10, R8, ASR #28
l2696: bic R3, R3, R8, ROR R5
l2697: rsc R0, R3, R15, ASR #22
l2698: rsbs R1, R1, R5
l2699: subCSs R4, R4, R3, ASR #12
l2700: b l2701
l2701: ands R3, R4, R6
l2702: smlalLE R10, R1, R2, R1
l2703: teq R7, R2, LSR #15
l2704: addGEs R12, R2, R11, ASR R8
l2705: ldrHIh R10, [sp, #+4]
l2706: cmnPL R2, R10
l2707: tstVC R8, #713031680
l2708: ldr R3, [sp], #-24
l2709: rscGT R11, R12, R12
l2710: bics R4, R14, R11, ROR #12
l2711: cmn R15, R7, ROR #25
l2712: tst R3, R4
l2713: strVCh R10, [sp, #-14]
l2714: b l2723
l2715: add R1, R0, #230
l2716: bics R2, R3, R10
l2717: cmnLT R3, R14, ROR #10
l2718: bicCCs R1, R12, R9, ROR #30
l2719: clz R12, R0
l2720: tst R1, R7, RRX 
l2721: mvnLSs R0, #847249408
l2722: b l2724
l2723: b l2716
l2724: rscLEs R14, R3, R8, ASR #13
l2725: mov R5, #14
l2726: ldrGTB R3, [sp, -R5]
l2727: mvns R1, #805306382
l2728: adc R3, R5, R8, LSR R9
l2729: smlalLE R0, R12, R2, R1
l2730: movMIs R1, R12, LSR R4
l2731: add R6, R8, R8, LSR #7
l2732: orrLTs R3, R10, R14, ROR R9
l2733: bGE l2741
l2734: cmnCC R7, R6
l2735: movVC R9, R11, LSR R2
l2736: movCCs R4, R3
l2737: orrs R4, R4, R3, ASR R8
l2738: sbcHI R10, R4, #469762048
l2739: sbcHIs R1, R6, R0, ASR R0
l2740: sbcGE R3, R3, R8, LSL R14
l2741: tstCC R4, R8, LSL #17
l2742: rsbVSs R9, R4, #12845056
l2743: mov R5, #38
l2744: ldrEQsh R10, [sp, +R5]
l2745: rsbLE R10, R2, R10, LSR #21
l2746: stmDA R13!, {R1, R3, R4, R5, R8}
l2747: orrCC R1, R4, R8
l2748: subs R10, R9, R0, ASR R12
l2749: rscLT R5, R0, R8, LSR R0
l2750: rscMI R2, R11, R6
l2751: cmpLS R4, R10, RRX 
l2752: subs R8, R0, #261120
l2753: bLT l2762
l2754: add R1, R0, #201
l2755: clz R12, R0
l2756: bicLS R6, R9, R4
l2757: subMIs R7, R10, R10, ROR R8
l2758: movs R11, R11, ASR R5
l2759: subVC R2, R9, R14
l2760: sub R9, R5, R3, LSR R3
l2761: b l2763
l2762: b l2755
l2763: bEQ l2773
l2764: mov R7, R3, ASR R10
l2765: eorNEs R4, R10, R6
l2766: subLTs R9, R4, R2, ASR #29
l2767: sbc R11, R9, R6, ASR R6
l2768: mvnHI R3, R3, ASR #26
l2769: sbcCSs R0, R9, R10, ASR #13
l2770: teq R6, #198
l2771: orrs R6, R5, R6
l2772: movLT R3, R15
l2773: orrs R10, R1, R4, RRX 
l2774: b l2775
l2775: subLSs R3, R14, R0, LSL R0
l2776: ldr R8, [sp], #+24
l2777: umlalPLs R1, R12, R10, R9
l2778: ldrNEsh R6, [sp, #+36]
l2779: teq R0, R14, ROR R14
l2780: umlalEQs R1, R6, R14, R8
l2781: subs R8, R7, R6
l2782: teq R10, #486539264
l2783: sub R5, R2, R7
l2784: and R3, R1, R1, ROR #1
l2785: bic R6, R12, #10368
l2786: movEQ R1, #4416
l2787: bNE l2791
l2788: sbcLEs R10, R12, #40894464
l2789: sub R6, R14, R10, RRX 
l2790: rsbGTs R10, R6, R11, LSR R1
l2791: eor R10, R3, R9, LSL R8
l2792: mov R3, #2
l2793: strB R14, [sp, -R3]
l2794: clzGE R2, R14
l2795: adcCS R2, R7, R1, ASR #16
l2796: rsc R14, R8, R15
l2797: mvn R8, R2, ROR R3
l2798: b l2803
l2799: clzMI R3, R0
l2800: rscVS R4, R10, R11, ASR #13
l2801: rscLE R8, R0, R0, RRX 
l2802: cmp R10, #8128
l2803: teq R6, R5
l2804: teq R1, R12
l2805: strPL R0, [sp, #+0]
l2806: strVCh R12, [sp, #-4]
l2807: sub R5, R10, R14
l2808: subLTs R3, R1, R4, LSR R1
l2809: strGTh R4, [sp, #-6]
l2810: eor R9, R5, R15, ROR #26
l2811: smulls R0, R11, R1, R7
l2812: andGTs R7, R15, R14, ROR #22
l2813: sub R4, R12, R9
l2814: b l2821
l2815: sub R11, R14, #166723584
l2816: bicLSs R6, R12, #15728640
l2817: bicPL R0, R2, R8, LSL #20
l2818: rscs R12, R0, R4, RRX 
l2819: ands R4, R9, R7, ASR R14
l2820: movs R11, #973078528
l2821: subs R8, R6, R5
l2822: orr R0, R14, R8
l2823: andNE R0, R5, R15
l2824: andEQs R9, R8, R7, LSL #15
l2825: adcEQs R1, R4, R0, LSR R6
l2826: smlalVSs R12, R0, R5, R1
l2827: subLSs R0, R1, R12
l2828: cmnNE R7, R14, ASR R2
l2829: subs R4, R0, R4, RRX 
l2830: addPLs R7, R0, R12, ROR R11
l2831: teqLS R7, R3
l2832: str R10, [sp], #+40
l2833: and R3, R4, R2, RRX 
l2834: rscs R7, R5, #784334848
l2835: tst R4, #-1342177275
l2836: mvn R7, R1, ROR R8
l2837: stmIA R13!, {R2}
l2838: mov R2, #64
l2839: ldrh R10, [sp, -R2]
l2840: ldrCSB R5, [sp, #-40]
l2841: eorCS R6, R11, R6
l2842: ldrLEB R12, [sp, #-47]
l2843: mov R0, #8
l2844: str R15, [sp], -R0
l2845: mov R12, #17
l2846: ldrGTB R14, [sp, +R12]
l2847: andLS R12, R12, R8, ASR R14
l2848: sbcs R1, R2, R0, ROR R9
l2849: sbc R6, R0, R0, LSL #19
l2850: mul R3, R1, R12
l2851: b l2857
l2852: add R1, R0, #173
l2853: teqVC R0, R5, ROR #31
l2854: clzGE R3, R4
l2855: subs R2, R8, R2, LSR #7
l2856: b l2858
l2857: b l2853
l2858: addPL R11, R14, R1, RRX 
l2859: ands R2, R6, R0
l2860: mov R1, #48
l2861: strEQh R1, [sp, -R1]
l2862: bGE l2869
l2863: add R1, R0, #202
l2864: rscVC R9, R11, R8
l2865: rscLTs R8, R4, R12, LSR R8
l2866: andGTs R1, R8, R14, ASR #6
l2867: andEQs R5, R7, #234881024
l2868: b l2870
l2869: b l2864
l2870: adcLE R7, R6, R3, ROR #16
l2871: rscNE R3, R7, #240123904
l2872: rsbPL R11, R0, R8
l2873: subCS R2, R5, R6, LSR #0
l2874: mvns R7, R4, LSR R4
l2875: orr R3, R3, R5
l2876: mov R14, #42
l2877: ldrVSh R4, [sp, -R14]
l2878: eorLE R9, R9, #234881024
l2879: orrHI R0, R9, R0, ROR #23
l2880: adcVS R14, R12, R4, LSR #18
l2881: orrs R0, R15, R14, LSL #15
l2882: ldrsh R11, [sp, #-6]
l2883: bLS l2890
l2884: add R1, R0, #168
l2885: teq R4, R7, LSL #5
l2886: teqLS R7, #3280
l2887: sbcPL R4, R7, R12, ROR R7
l2888: cmnVC R3, #58624
l2889: b l2891
l2890: b l2885
l2891: subHI R5, R11, #-1073741806
l2892: ands R8, R5, R9, RRX 
l2893: teqLT R0, R0
l2894: umlal R2, R1, R4, R9
l2895: stmNEDB R13, {R0, R4, R10, R11, R14}
l2896: ldmIB R13!, {R2}
l2897: mov R12, #21
l2898: strB R7, [sp, -R12]
l2899: mov R3, #20
l2900: str R8, [sp, -R3]
l2901: addLS R8, R4, #131072
l2902: clz R5, R10
l2903: cmpLT R15, R10, ROR #26
l2904: smull R14, R9, R8, R7
l2905: ldrPLB R9, [sp, #-40]
l2906: bEQ l2914
l2907: add R1, R0, #58
l2908: eorLEs R2, R12, R6, ASR #0
l2909: subCCs R5, R0, R11, ASR R2
l2910: rsb R5, R7, R8
l2911: movPLs R9, R9, LSR #9
l2912: orrCSs R11, R2, #165888
l2913: b l2915
l2914: b l2908
l2915: mov R3, #-1308622848
l2916: subVS R6, R0, R6, LSR R8
l2917: ldmIB R13!, {R11}
l2918: cmn R11, R8, LSR R14
l2919: ldmDB R13!, {R0, R1, R3, R4, R5, R6, R7, R8}
l2920: subGTs R4, R5, R1, LSL R6
l2921: bCS l2928
l2922: eor R9, R0, #-1509949440
l2923: sbc R1, R0, R0, ASR R6
l2924: movs R6, #131072
l2925: rsbs R8, R6, R2
l2926: cmnVC R10, R10, LSL #3
l2927: mvnNEs R7, R4, ROR R5
l2928: rscHIs R4, R7, R12, ROR R0
l2929: bicCSs R6, R7, R8, ASR #7
l2930: mvnGEs R11, R1
l2931: b l2935
l2932: add R1, R0, #245
l2933: rscGE R2, R0, R2
l2934: b l2936
l2935: b l2933
l2936: ldrh R8, [sp, #+38]
l2937: subs R2, R9, R5
l2938: rscVC R0, R8, R10, RRX 
l2939: rsbCC R1, R11, R10, RRX 
l2940: stmIB R13, {R1, R2, R3, R4, R7}
l2941: andLEs R4, R14, R1, LSR #10
l2942: bMI l2950
l2943: add R1, R0, #89
l2944: rscLT R9, R0, R10, RRX 
l2945: eors R6, R10, R6, ROR #20
l2946: rsbEQs R11, R8, R12, ASR #5
l2947: add R8, R1, R8, ASR R2
l2948: adds R2, R14, R9, RRX 
l2949: b l2951
l2950: b l2944
l2951: orrCCs R2, R4, R1
l2952: and R5, R0, R14
l2953: tstEQ R10, R12, ROR #6
l2954: sub R11, R0, #536870923
l2955: clz R10, R3
l2956: clzPL R6, R14
l2957: eorGTs R8, R7, R5, ROR R3
l2958: eors R1, R1, #2539520
l2959: movLEs R5, R14, ASR R2
l2960: mvn R1, #622592
l2961: bLE l2966
l2962: add R1, R0, #208
l2963: movHI R11, R0, LSR #20
l2964: andHI R4, R4, #647168
l2965: b l2967
l2966: b l2963
l2967: orrLT R14, R1, #201728
l2968: ldrCCsb R6, [sp, #+10]
l2969: mvn R12, #-1073741798
l2970: str R8, [sp], #-8
l2971: adcs R7, R3, #1359872
l2972: teq R2, R6
l2973: cmp R10, #46
l2974: sbcLEs R9, R14, R10, LSL R6
l2975: teq R1, R9, LSR #28
l2976: ands R9, R2, R2, LSL R4
l2977: sbcPL R1, R5, #912
l2978: cmp R4, #606208
l2979: cmp R15, R8
l2980: cmn R0, R10, RRX 
l2981: mvnCC R9, #12255232
l2982: sbcs R3, R8, #761856
l2983: b l2990
l2984: and R2, R5, R6, ASR #1
l2985: subCCs R1, R1, R11, ASR #22
l2986: rsbs R12, R5, R1, ROR #3
l2987: sbcGT R5, R14, R0, LSR R4
l2988: teqCC R2, R4
l2989: adcHI R8, R2, #236
l2990: orr R8, R1, R12, ASR #28
l2991: bic R1, R14, R3
l2992: subVCs R4, R14, R1, LSR R7
l2993: addGEs R8, R2, #652
l2994: mov R2, R11, RRX 
l2995: nop
l2996: tstEQ R3, R2, ROR R6
l2997: nop
l2998: clz R11, R8
l2999: bicGTs R6, R4, R1, RRX 
l3000: eorNE R7, R2, R11
end: b end

