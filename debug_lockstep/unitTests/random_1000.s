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
val1: .word 3648891930
next1:ldr R2, val2
b next2
val2: .word 876308294
next2:ldr R3, val3
b next3
val3: .word 3323365614
next3:ldr R4, val4
b next4
val4: .word 804006923
next4:ldr R5, val5
b next5
val5: .word 2970204956
next5:ldr R6, val6
b next6
val6: .word 1530113408
next6:ldr R7, val7
b next7
val7: .word 2725794206
next7:ldr R8, val8
b next8
val8: .word 2221437137
next8:ldr R9, val9
b next9
val9: .word 1370492827
next9:ldr R10, val10
b next10
val10: .word 1175032480
next10:ldr R11, val11
b next11
val11: .word 898347210
next11:ldr R12, val12
b next12
val12: .word 751872449
next12:ldr R14, val14
b next14
val14: .word 2211604723

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 4068224963
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 1233516689
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 1370740332
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 2618669782
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 629718070
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 3042507294
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 665768008
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 907241688
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 2799440946
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 714418992
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 2118290795
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 1643649352
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 1202518419
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 2710253758
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 3634854300
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 1133793403
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 4282733777
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 2747489828
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 917459912
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 2941770924
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 258648233
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: rsbEQs R6, R6, R2, RRX 
l2: ldrsb R0, [sp, #-56]
l3: smull R6, R1, R7, R1
l4: add R3, R6, R12, LSR R7
l5: sbcs R5, R11, R9
l6: adcVCs R4, R14, R9, LSR R1
l7: b l14
l8: orrCSs R10, R12, R12, LSR #24
l9: movVSs R7, #3024
l10: teq R7, R15
l11: eorHI R9, R14, R12, LSR #14
l12: bic R4, R6, #229376
l13: cmpHI R12, #10682368
l14: teqPL R4, #1888
l15: sub R5, R12, R0, ROR #23
l16: bEQ l18
l17: sub R8, R4, #9216
l18: sbcGEs R3, R11, #131072
l19: bVC l28
l20: add R1, R0, #189
l21: adcPL R10, R8, R8, ROR R11
l22: rscs R3, R14, R7, RRX 
l23: mvnVSs R6, #-939524096
l24: sbc R7, R1, R7, ASR R4
l25: movCC R12, R0
l26: andVC R2, R3, R4, RRX 
l27: b l29
l28: b l21
l29: mul R7, R0, R3
l30: orrCS R9, R7, #782336
l31: teqEQ R3, R11, LSR R11
l32: mvn R11, R7
l33: subLTs R2, R12, #1610612744
l34: mvnLT R4, R12, ASR #20
l35: bLS l38
l36: subNE R9, R14, R6
l37: sbcCSs R4, R2, R4, LSL #12
l38: mvnGE R7, R6, ROR #8
l39: bic R9, R5, R8, ROR R5
l40: eorHI R11, R11, #138
l41: clz R1, R14
l42: rsbs R14, R14, R12
l43: eorMIs R12, R7, R3
l44: sbc R11, R11, #1280
l45: umullCCs R3, R7, R10, R14
l46: sbcMI R9, R3, R5, LSR R7
l47: smlalGTs R5, R11, R0, R11
l48: clzEQ R5, R8
l49: teq R1, R5, LSR R3
l50: rscCCs R8, R11, #720
l51: eor R8, R7, #1020
l52: bPL l58
l53: add R1, R0, #210
l54: sbcs R9, R8, #210944
l55: sbcEQs R3, R4, #1073741869
l56: mov R0, R3, RRX 
l57: b l59
l58: b l54
l59: adcLTs R3, R4, R12, LSL #31
l60: ldmDA R13!, {R0, R1, R3}
l61: mov R8, #25
l62: ldrsb R0, [sp, -R8]
l63: mvnNEs R8, R14
l64: teqEQ R3, R7, ASR #27
l65: addVSs R9, R10, #524288
l66: rscs R14, R0, R0
l67: bLE l75
l68: eor R14, R11, R4
l69: adcCS R9, R9, R7, ROR R7
l70: subs R10, R12, R11, LSL #6
l71: eor R6, R12, R5, RRX 
l72: adds R9, R3, R12, ROR R12
l73: adcCS R5, R15, R2
l74: eor R9, R6, #532480
l75: mvn R0, #224
l76: ldrCCsh R9, [sp, #-2]
l77: stmDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R10, R13, R14}
l78: teq R12, R5
l79: ldrLEsb R12, [sp, #+9]
l80: bLT l84
l81: bic R14, R4, R10, LSR #0
l82: teq R0, R8, LSR R3
l83: cmn R14, R9, LSL #2
l84: bics R4, R2, R1
l85: b l94
l86: add R1, R0, #1
l87: movCC R9, R10, LSR #11
l88: rsbLE R6, R3, R10, ROR R11
l89: bic R4, R6, R6
l90: orrNE R1, R12, R12
l91: subGE R4, R9, R9, RRX 
l92: sub R7, R6, R9
l93: b l95
l94: b l87
l95: andEQ R1, R0, R2
l96: ldmDB R13!, {R3, R5, R11, R12, R14}
l97: stmIA R13!, {R13}
l98: mvnLT R14, R3, ROR R8
l99: andGEs R4, R10, R0
l100: andPLs R14, R9, R0
l101: cmnVC R7, R14, LSL R4
l102: rscs R2, R0, R7
l103: mvn R9, #1610612745
l104: eors R9, R5, #-805306363
l105: smlalGEs R8, R0, R10, R2
l106: subEQs R0, R4, R8
l107: mov R7, #21
l108: ldrB R4, [sp, +R7]
l109: ands R0, R4, R12, ROR R12
l110: cmpHI R2, R12, LSL #13
l111: cmn R12, #63963136
l112: eorLT R12, R15, R14, RRX 
l113: rscs R9, R7, R3, LSL #18
l114: mov R5, #4
l115: str R6, [sp], -R5
l116: adcGE R8, R10, R12, ROR R14
l117: strh R1, [sp, #+48]
l118: subLEs R0, R6, R15, LSL #24
l119: adcs R12, R7, #138412032
l120: ands R5, R2, R1
l121: subVC R14, R12, R10, ROR #20
l122: eorHIs R3, R8, R11, RRX 
l123: mov R7, #67
l124: ldrPLsb R6, [sp, +R7]
l125: and R0, R3, R2, RRX 
l126: stmIB R13!, {R13, R14, R15}
l127: umullGEs R12, R8, R3, R1
l128: addVCs R8, R9, R3
l129: ldr R0, [sp, #+52]!
l130: sbcGTs R5, R6, #456
l131: add R5, R9, R0, ROR R4
l132: rsbMIs R6, R7, R3, LSR #13
l133: cmn R9, #2555904
l134: subMIs R2, R15, R15, ROR #17
l135: eorVS R6, R15, R12
l136: teq R12, R5
l137: mov R11, #20
l138: ldrLS R14, [sp, -R11]
l139: orr R12, R4, R8, ROR #12
l140: stmDB R13!, {R13, R15}
l141: strCSB R11, [sp, #-23]
l142: andVS R8, R2, R1, LSL R5
l143: stmVCIB R13, {R1, R8, R12, R15}
l144: b l145
l145: tst R2, R12, ASR R11
l146: mov R0, #25
l147: ldrLEsb R1, [sp, -R0]
l148: teq R4, #-1761607680
l149: bPL l154
l150: add R1, R0, #205
l151: rscs R1, R2, R14, LSR #13
l152: teqPL R10, R1, RRX 
l153: b l155
l154: b l151
l155: smull R4, R0, R8, R4
l156: b l166
l157: eorVSs R12, R10, R11, RRX 
l158: cmnVS R10, R8, LSR R8
l159: mvn R3, R12, RRX 
l160: mvn R4, R1, RRX 
l161: mvn R3, #4128768
l162: subs R2, R3, R6, ASR #0
l163: bicGTs R14, R10, R9, ASR R12
l164: cmpCC R7, R12, RRX 
l165: eorCC R11, R0, R14, LSR R12
l166: mvnGTs R10, R10, LSL R14
l167: strCCh R1, [sp, #-44]
l168: sbc R1, R8, R5, ASR R11
l169: andPLs R9, R3, R10, ROR R8
l170: movLEs R10, #1792
l171: b l173
l172: mvnVS R4, R6, LSL #15
l173: rsb R12, R15, R14, RRX 
l174: subHIs R7, R5, R2, ROR R8
l175: sbc R5, R14, R8, ASR #7
l176: teqNE R3, #109051904
l177: bCS l185
l178: add R1, R0, #148
l179: teq R7, R7, ROR #18
l180: rsbGEs R5, R0, R12
l181: cmn R14, R10
l182: cmn R2, #2752
l183: teqHI R14, R3, RRX 
l184: b l186
l185: b l179
l186: mvnHI R4, R5, LSL #22
l187: ldrLSB R1, [sp, #-67]
l188: mov R9, R11, ASR R9
l189: cmnGE R11, R0
l190: eor R0, R0, #179200
l191: cmnLE R15, R14, LSR #24
l192: and R2, R8, #3
l193: strMIB R6, [sp, #-55]
l194: stmDA R13!, {R13}
l195: subCC R6, R4, R7
l196: orrLTs R2, R9, #1264
l197: b l201
l198: rscNEs R4, R14, R14, LSL R11
l199: movLE R3, R4
l200: clzLS R3, R5
l201: sbc R8, R11, R3, ROR #25
l202: sbcNEs R9, R10, R15, LSL #17
l203: sub R1, R7, R4, LSL R11
l204: bCS l210
l205: add R1, R0, #70
l206: eorLTs R10, R15, R1, LSL #11
l207: bic R14, R11, R11
l208: addGTs R14, R8, R0, LSL #31
l209: b l211
l210: b l206
l211: stmIA R13!, {R13}
l212: mulPLs R6, R5, R3
l213: cmpVC R15, R8, LSR #23
l214: sbcNE R4, R1, R3
l215: cmpHI R12, R3
l216: bCC l225
l217: mvn R0, R6
l218: adcPLs R7, R15, R1, RRX 
l219: sbcLT R1, R5, R6, ROR R0
l220: andHIs R12, R8, R1, RRX 
l221: mvn R8, R6, LSR R10
l222: sbcs R5, R6, R11
l223: eor R10, R1, R14
l224: clz R12, R11
l225: teqLT R9, R11, LSR R4
l226: rsb R11, R9, R4, ASR R12
l227: ldr R14, [sp, #-16]!
l228: adds R12, R12, R9, LSR R5
l229: teq R5, R11
l230: tst R5, R2
l231: adcMI R3, R11, #240
l232: adcPL R2, R7, R15, RRX 
l233: mov R6, #23
l234: strB R3, [sp, +R6]
l235: rsbCC R9, R2, R0, ROR R11
l236: adcLS R4, R3, R15, RRX 
l237: movHIs R0, R14, LSL R12
l238: clzLT R5, R10
l239: mlaHIs R1, R6, R4, R9
l240: teq R11, R14, ROR #2
l241: str R2, [sp], #-28
l242: eorVS R6, R3, #13248
l243: adds R12, R11, R2, LSR #15
l244: sbcs R12, R11, R3
l245: subEQs R1, R5, #60672
l246: tst R10, R4
l247: rsbPL R2, R8, #-1073741776
l248: subGTs R11, R6, R5
l249: mulNE R7, R6, R10
l250: tstHI R9, R5
l251: bicVC R11, R6, #-536870897
l252: orrVS R10, R4, #1
l253: addCSs R14, R0, #805306373
l254: sbcHI R5, R14, R0
l255: orrLTs R14, R4, #12124160
l256: rscEQs R3, R8, R9, LSL R7
l257: eorNE R3, R7, R9, RRX 
l258: bic R7, R0, R1
l259: mov R9, #17
l260: ldrVCB R8, [sp, -R9]
l261: mov R2, #8
l262: str R9, [sp, +R2]!
l263: eorVCs R12, R11, R11
l264: cmnPL R7, #36962304
l265: subLEs R5, R11, R14, LSR #2
l266: teqLS R12, #0
l267: rscs R4, R11, R2, ASR #22
l268: teq R3, #12255232
l269: orrs R6, R1, R14, LSL #16
l270: subCSs R3, R7, R9
l271: eor R12, R8, R12
l272: clz R7, R11
l273: bLT l274
l274: clzHI R6, R7
l275: strEQ R9, [sp, #+36]
l276: addLEs R5, R12, R4, RRX 
l277: clz R10, R3
l278: orrPLs R4, R6, R3, LSR #18
l279: orrs R2, R1, R9, ROR R12
l280: rsb R1, R15, R8
l281: orrHIs R6, R9, #2320
l282: bicGT R7, R6, #63963136
l283: umullVSs R7, R11, R8, R4
l284: tst R7, R10, LSR #18
l285: sbcPL R9, R1, R7, RRX 
l286: orr R6, R4, R12, LSR R9
l287: add R12, R9, R14
l288: mvnMI R2, R14
l289: addNEs R5, R8, #241664
l290: sbcGE R1, R14, R12, LSR #24
l291: cmpLS R4, #738197504
l292: clzCC R12, R5
l293: orrVSs R3, R0, R2, LSR R1
l294: cmnEQ R7, R7, LSR R4
l295: addLE R5, R7, R15, ROR #6
l296: umlalEQ R6, R8, R3, R14
l297: sub R0, R14, R9
l298: cmnLE R5, R11, ASR R12
l299: teq R9, R3, RRX 
l300: cmn R6, R10, ASR R10
l301: sbcs R1, R9, R5, LSR R8
l302: orrLT R12, R7, R3, LSL R10
l303: smulls R4, R3, R10, R7
l304: mov R14, #4
l305: ldrsb R5, [sp, -R14]
l306: cmn R14, R5, RRX 
l307: andLE R3, R4, #17825792
l308: strh R2, [sp, #+26]
l309: eor R10, R15, R9
l310: ldrMIsb R14, [sp, #+14]
l311: bVS l318
l312: add R1, R0, #149
l313: eorHIs R8, R12, #165
l314: mvnVC R14, R11, LSR R9
l315: eorCSs R11, R15, R8
l316: subs R6, R7, R9
l317: b l319
l318: b l313
l319: eorLS R8, R9, R5
l320: sub R5, R14, #155
l321: ands R11, R3, #98304
l322: and R6, R1, #419430400
l323: ldmIB R13!, {R4, R14}
l324: eorNE R5, R12, R10, LSL #0
l325: cmnGE R10, R12, RRX 
l326: smullHIs R0, R10, R7, R3
l327: bGT l337
l328: andLTs R12, R15, R9
l329: cmp R5, #172
l330: cmpHI R14, R6, ROR #23
l331: cmpLS R11, R10
l332: sub R4, R3, R14, ROR #15
l333: rsbLEs R0, R4, R5, ASR R1
l334: adds R11, R12, R12
l335: rsbEQ R9, R9, R8
l336: cmn R0, R9
l337: subs R9, R12, R10
l338: andLT R7, R10, R6
l339: umlalVSs R11, R5, R2, R5
l340: str R2, [sp], #+28
l341: subVS R1, R2, R1, ASR R1
l342: subGEs R9, R2, R9, ASR R4
l343: tstVS R5, R7, ROR R9
l344: bGT l347
l345: sbc R1, R3, R11, ROR R4
l346: tst R2, R12, ASR #25
l347: tst R14, R11
l348: tstLS R14, #179
l349: andMI R9, R6, R0
l350: stmIB R13!, {R5, R15}
l351: movEQs R1, #-1073741763
l352: cmp R8, #30720
l353: cmpLT R3, R9, LSL R12
l354: andLTs R9, R7, R3, LSR #8
l355: mov R0, #46
l356: ldrsh R0, [sp, -R0]
l357: bics R7, R14, R1
l358: mvnVS R8, #65280
l359: andLSs R11, R4, R9, RRX 
l360: cmpVS R9, #55808
l361: clzLS R7, R7
l362: stmVSDA R13, {R1, R3, R4, R6, R9, R13, R14}
l363: mov R14, #8
l364: str R6, [sp], +R14
l365: adcs R10, R11, R1, ASR #14
l366: stmPLDA R13, {R0, R1, R2, R6, R8, R9, R11, R12}
l367: orrGT R7, R3, R8, RRX 
l368: orr R1, R2, R12, ROR #4
l369: sbcs R8, R6, R10, ROR R11
l370: addLSs R12, R3, R7, LSL R7
l371: eorVSs R9, R8, R7
l372: rsb R8, R3, R7, RRX 
l373: teqLS R14, R10
l374: bEQ l380
l375: add R1, R0, #168
l376: andGE R14, R7, R11, ASR #19
l377: eorGTs R11, R6, R9, RRX 
l378: mvn R1, R1
l379: b l381
l380: b l376
l381: cmnNE R12, #1392640
l382: b l388
l383: add R1, R0, #14
l384: subVCs R11, R3, #46592
l385: eorLSs R7, R10, R15
l386: mvnVCs R3, R5, ASR R8
l387: b l389
l388: b l384
l389: orrLTs R11, R6, #-285212672
l390: mov R4, #14
l391: strB R2, [sp, -R4]
l392: umlalPL R3, R2, R6, R0
l393: adcNE R1, R15, R3, LSR #19
l394: tst R15, R0, RRX 
l395: ldrVCB R1, [sp, #-16]
l396: ldr R1, [sp, #+20]!
l397: bCC l406
l398: rsbPL R5, R3, R11
l399: movMI R11, R12, ROR R0
l400: andGTs R6, R1, #776
l401: sbcVS R9, R5, R3, LSR R12
l402: sub R10, R7, #1572864
l403: rscGT R5, R12, #1088
l404: tstLS R7, R14, RRX 
l405: subCSs R8, R3, R7, ROR #7
l406: rscMIs R11, R0, R12, RRX 
l407: bNE l409
l408: clzLE R7, R9
l409: cmn R9, R5
l410: tstLE R14, R8
l411: subCC R9, R5, R0, LSL R8
l412: adcGTs R1, R15, R4
l413: ldmIB R13!, {R2, R7}
l414: bLE l418
l415: andMI R6, R15, #3072
l416: movVC R2, R12
l417: tst R4, R3, RRX 
l418: tstLS R8, #798720
l419: b l427
l420: add R1, R0, #81
l421: eorEQs R11, R8, R9, LSR R4
l422: cmp R6, R0, LSR #9
l423: bic R12, R1, R0
l424: clz R8, R7
l425: cmnGT R9, #3264
l426: b l428
l427: b l421
l428: mvns R3, R12, LSR R5
l429: str R6, [sp, #+20]
l430: orrs R5, R2, R7, ROR #22
l431: rsbCC R8, R11, #8126464
l432: mov R12, #16
l433: ldr R9, [sp, +R12]
l434: addGTs R9, R8, R9, LSL R9
l435: rsbs R12, R6, R15, ROR #20
l436: andGEs R11, R12, R5
l437: mov R0, #49
l438: strEQB R8, [sp, -R0]
l439: add R2, R14, R3
l440: ands R5, R4, R1
l441: tst R14, R14, LSR R4
l442: add R7, R10, R1, ASR #22
l443: smlalGT R4, R7, R14, R6
l444: movCS R9, #402653184
l445: andEQ R1, R11, R11, RRX 
l446: eorHI R3, R8, R11, LSR R6
l447: mov R3, #43
l448: ldrB R6, [sp, -R3]
l449: strB R5, [sp, #-54]
l450: bicLEs R6, R5, R12, LSR #10
l451: bicVCs R4, R12, R14
l452: orrs R10, R0, R2, LSR #4
l453: teqGT R10, R3, LSR #17
l454: umlal R2, R10, R12, R9
l455: bic R9, R15, R3, ROR #7
l456: add R3, R1, R6, LSR #6
l457: orrMIs R6, R8, R7, LSR R5
l458: ands R6, R12, R15, RRX 
l459: cmp R6, R12
l460: ldrNEsh R8, [sp, #-46]
l461: rsc R11, R12, #15532032
l462: bHI l468
l463: cmnPL R11, #1342177294
l464: subVCs R10, R4, R2
l465: adc R5, R7, R3, ROR #27
l466: sub R4, R7, R0, ROR R8
l467: rsbs R7, R11, #8912896
l468: addMIs R3, R6, R2
l469: eors R6, R12, R14, LSR #16
l470: adcVS R11, R11, R0, ROR #12
l471: subGE R6, R14, #19456
l472: tst R11, #980
l473: b l481
l474: add R1, R0, #175
l475: bicHI R2, R6, R5, RRX 
l476: tst R11, R4
l477: cmpMI R7, R2, LSL R4
l478: subLS R0, R5, R10, LSL #15
l479: adcs R6, R0, #-1543503870
l480: b l482
l481: b l475
l482: b l486
l483: add R1, R0, #216
l484: cmpLT R0, #36962304
l485: b l487
l486: b l484
l487: ldrh R11, [sp, #-38]
l488: bicLS R10, R15, R6, ASR #30
l489: orrVC R7, R4, R10, ROR R9
l490: cmpLT R0, R15, RRX 
l491: movHI R11, R8, RRX 
l492: b l500
l493: add R1, R0, #11
l494: eorLTs R7, R15, R15
l495: bics R5, R7, R14
l496: and R10, R8, R2
l497: cmpLT R7, R0, LSL R8
l498: subLS R8, R5, #179200
l499: b l501
l500: b l494
l501: rscs R6, R1, #901775360
l502: subGEs R14, R3, R2
l503: orrLTs R1, R4, R3, ASR #16
l504: teqGE R15, #648
l505: teq R4, R2
l506: ldmDB R13!, {R7, R8, R9, R11, R12}
l507: b l513
l508: add R1, R0, #209
l509: cmnEQ R2, #48
l510: rsb R10, R9, #57600
l511: subVSs R7, R15, R8, RRX 
l512: b l514
l513: b l509
l514: b l515
l515: adds R1, R1, R5
l516: bLS l525
l517: add R1, R0, #194
l518: subGE R2, R4, R4
l519: adc R11, R6, R11, LSR #7
l520: sbcLT R12, R9, R12, ASR R5
l521: sbcs R10, R3, R4, ROR R10
l522: subs R0, R14, #1023410176
l523: mov R10, R1, LSL R4
l524: b l526
l525: b l518
l526: eorGTs R5, R11, R10, LSR R1
l527: smullEQ R6, R9, R1, R7
l528: clzLE R7, R9
l529: rsbGTs R4, R5, R1, LSL R6
l530: bEQ l536
l531: add R1, R0, #13
l532: subVS R10, R4, R8, RRX 
l533: mvnCS R3, R7
l534: tstVS R1, R6, RRX 
l535: b l537
l536: b l532
l537: mlas R8, R7, R14, R8
l538: cmpGT R8, R8
l539: bMI l542
l540: mvnVC R1, R10, ROR R14
l541: sub R8, R15, R1
l542: sbcVCs R4, R12, R5
l543: orrCS R3, R11, R10, LSL #17
l544: mlaPL R10, R11, R2, R12
l545: movCCs R10, R3, ASR R7
l546: ldmIA R13!, {R3, R7, R8, R10, R11, R12}
l547: cmn R5, R2, LSL R6
l548: mov R14, #4
l549: ldrsb R7, [sp, -R14]
l550: umlals R7, R9, R6, R10
l551: adcs R1, R7, R12, LSR R7
l552: bGE l558
l553: orrGT R2, R7, #262144
l554: teq R4, R9, LSL R7
l555: andCS R6, R7, R3, RRX 
l556: clzEQ R11, R6
l557: cmn R11, R10
l558: subLTs R5, R0, R4
l559: tst R2, R0
l560: mulGE R3, R11, R7
l561: stmIB R13!, {R1, R11}
l562: mov R5, #22
l563: strMIh R8, [sp, -R5]
l564: add R3, R14, R8, LSL R1
l565: rscHI R8, R9, #205520896
l566: bLS l568
l567: orrs R3, R4, R10, LSL R12
l568: bicHI R7, R14, R12, LSL #13
l569: bicVCs R0, R5, #84
l570: bVS l578
l571: cmn R2, R11
l572: cmn R7, R7
l573: adcs R7, R10, R12, LSL R6
l574: adcGT R7, R9, R12, LSL #4
l575: clzHI R2, R12
l576: bicNEs R9, R4, #3744
l577: teqEQ R12, R1, LSR R8
l578: rscGTs R11, R0, R12, RRX 
l579: orrVCs R4, R15, R9, ASR #0
l580: mov R12, #14
l581: ldrB R3, [sp, -R12]
l582: umulls R3, R7, R10, R1
l583: cmp R10, R15, LSR #22
l584: mov R8, R10, ROR #1
l585: subEQ R12, R14, #1342177283
l586: mla R3, R12, R2, R1
l587: rsb R14, R11, #2867200
l588: orrGEs R12, R4, R7, ROR R6
l589: mov R12, #52
l590: ldrsh R4, [sp, -R12]
l591: teqVC R7, R9, LSL R6
l592: smull R8, R11, R14, R14
l593: adcHI R10, R5, #180224
l594: sub R14, R10, R2, ASR R6
l595: and R4, R14, R14
l596: tst R4, R9, ROR R3
l597: subVC R9, R6, R14
l598: mlas R6, R10, R7, R8
l599: rscs R7, R3, #36
l600: mov R3, #16
l601: ldrLSh R9, [sp, -R3]
l602: b l604
l603: rsbGE R10, R10, #20480
l604: subLTs R11, R7, R5, ROR #11
l605: mvns R12, R2, ASR R1
l606: sbcGE R5, R6, #332
l607: clzLE R1, R11
l608: strMIB R11, [sp, #-27]
l609: rscLTs R6, R9, #416
l610: umlal R9, R10, R6, R0
l611: bNE l619
l612: add R1, R0, #78
l613: rscGEs R10, R9, R11
l614: bicNEs R11, R6, #752
l615: movLS R8, R1, ASR #16
l616: addLSs R5, R7, #960
l617: rsc R2, R3, #182272
l618: b l620
l619: b l613
l620: cmpLE R8, R7, ASR R11
l621: ldrCSsb R5, [sp, #-1]
l622: sub R6, R12, R15
l623: b l624
l624: rsc R3, R4, R1
l625: rsbs R0, R7, R6, LSR R10
l626: mov R2, #14
l627: strLSh R11, [sp, -R2]
l628: mov R5, #60
l629: ldrVS R10, [sp, -R5]
l630: bics R10, R5, R7
l631: bicCSs R12, R2, R1
l632: mvnGT R4, #749568
l633: mov R14, #36
l634: ldr R5, [sp], -R14
l635: stmEQDA R13, {R2}
l636: adcMIs R14, R2, R5
l637: clz R6, R9
l638: bics R12, R4, R6, LSL R0
l639: eorVSs R6, R8, R1, RRX 
l640: ldmIB R13!, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12}
l641: orrs R2, R6, R5, LSR R0
l642: mov R2, #60
l643: ldrEQ R6, [sp, -R2]
l644: tstLT R11, #260046848
l645: smlalCCs R4, R14, R10, R10
l646: b l649
l647: andGTs R4, R5, R7
l648: clz R6, R2
l649: eors R10, R2, R3, ASR #24
l650: mov R8, #60
l651: ldrNEsh R14, [sp, -R8]
l652: bics R12, R4, R0, ASR #0
l653: mov R2, #36
l654: strCCh R3, [sp, -R2]
l655: teq R8, #774144
l656: bGT l665
l657: add R1, R0, #36
l658: bicLE R4, R14, #7864320
l659: rsbPLs R3, R7, R14, ASR R2
l660: adcs R6, R6, R14
l661: mov R1, R3
l662: clzLS R9, R14
l663: sbcs R10, R14, #125829120
l664: b l666
l665: b l658
l666: sbc R12, R2, R7
l667: mov R2, #4030464
l668: orrLEs R8, R5, #13824
l669: mov R11, R12, LSR #17
l670: eor R10, R14, #201728
l671: mov R6, #28
l672: str R15, [sp], -R6
l673: tst R1, R8, LSL R2
l674: sbcs R3, R4, R2, LSL #19
l675: teqPL R1, R2, LSL R0
l676: movLE R14, R15, RRX 
l677: rsbNE R10, R12, R1, ASR R6
l678: ldmDA R13!, {R0, R1, R3, R6, R7, R8, R9, R10, R12, R14}
l679: mov R12, R5, ASR #17
l680: cmn R7, R10, RRX 
l681: movLT R9, R1
l682: eorLT R2, R8, R15, LSR #6
l683: eors R5, R1, R14, LSL #26
l684: clz R6, R12
l685: stmMIIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15}
l686: bCS l694
l687: subMIs R9, R9, #3584
l688: subs R9, R6, #76800
l689: sbcs R11, R10, #3296
l690: adc R7, R2, R2, LSR R4
l691: rscGEs R11, R5, R6, LSL #23
l692: cmn R9, #658505728
l693: movLE R4, R6
l694: subGTs R12, R11, R0, ASR R6
l695: ldmDB R13!, {R8, R9, R10, R11, R12}
l696: tstGT R3, R11, ROR R2
l697: stmGTDB R13, {R0, R5}
l698: ldrsh R6, [sp, #-22]
l699: rscs R6, R0, #35913728
l700: ands R14, R15, R6, RRX 
l701: rsbLS R0, R9, #-1593835520
l702: rscPL R11, R8, R5, LSL R14
l703: orrVS R11, R0, R14, LSR R7
l704: sbcs R9, R4, #12845056
l705: tstNE R9, R0, RRX 
l706: bGT l711
l707: add R1, R0, #99
l708: orrEQs R9, R12, R4, RRX 
l709: orrVCs R7, R14, R14
l710: b l712
l711: b l708
l712: mvn R9, R15, RRX 
l713: stmIA R13!, {R2, R3, R11}
l714: subs R9, R3, #2130706432
l715: cmpLS R5, R11, RRX 
l716: eorGTs R12, R14, #16777216
l717: stmDB R13!, {R0, R3, R10}
l718: bCS l727
l719: add R1, R0, #3
l720: cmnGE R11, R3, LSL R4
l721: ands R6, R2, R0, LSR R9
l722: teqVC R5, R15, LSL #8
l723: andPLs R4, R5, R3, ROR R11
l724: tst R0, #15360
l725: adcVSs R3, R2, #111
l726: b l728
l727: b l720
l728: cmnNE R2, R1, ASR R9
l729: cmp R9, R14
l730: teqNE R5, R14, LSL R11
l731: ldr R11, [sp], #-12
l732: bLS l736
l733: add R1, R0, #219
l734: cmpPL R12, #92
l735: b l737
l736: b l734
l737: b l743
l738: rsbNEs R11, R8, R2, RRX 
l739: bicHI R9, R12, R2, ROR R10
l740: cmp R12, R3, ROR #14
l741: subNEs R3, R1, #3664
l742: eor R6, R15, #82837504
l743: add R8, R5, #-2147483646
l744: movEQs R9, R10
l745: b l752
l746: add R1, R0, #100
l747: clz R6, R3
l748: teqLS R14, R12
l749: mvnGEs R12, #134217731
l750: ands R4, R12, R2
l751: b l753
l752: b l747
l753: clzPL R3, R7
l754: mov R3, #18
l755: ldrMIsb R10, [sp, +R3]
l756: rsbs R10, R3, R10, RRX 
l757: bicMIs R14, R7, R9
l758: umlals R11, R0, R8, R10
l759: orrVS R11, R6, #1152
l760: clzEQ R10, R12
l761: teqVS R7, R4, ASR #31
l762: teqLE R11, #324
l763: rscCS R1, R12, R8, LSR R7
l764: eor R10, R8, #229376
l765: tstLT R6, R14, LSL R4
l766: sbcLEs R5, R5, R12
l767: ldrB R0, [sp, #-3]
l768: adc R9, R10, R10, ASR R12
l769: adcCCs R3, R6, R15, ROR #27
l770: cmpLS R8, R11, LSR #13
l771: tstMI R11, R7, LSR R10
l772: sbcGE R11, R4, R11, ROR #30
l773: ldmDB R13!, {R0, R1, R2, R8, R11, R12, R14}
l774: b l780
l775: mov R0, #66322432
l776: subLS R9, R12, #290816
l777: sbc R14, R0, #-503316480
l778: sub R1, R9, R15
l779: cmpVS R15, R15, ROR #10
l780: rsbVC R1, R0, R6
l781: stmIB R13, {R1, R5, R8, R9, R11, R14}
l782: cmp R7, R9
l783: umlalVSs R5, R6, R4, R0
l784: sbcCSs R10, R6, R7
l785: sbc R14, R2, #-1073741819
l786: eorLEs R12, R9, R7, ASR R5
l787: ldr R8, [sp], #-16
l788: smlalVC R2, R10, R12, R9
l789: bHI l795
l790: eors R9, R1, R7, RRX 
l791: eors R2, R8, R15
l792: rsb R9, R0, R6
l793: addHI R8, R15, R11, LSL #31
l794: cmn R12, R2, LSR #27
l795: cmp R1, R14
l796: orr R5, R7, R7, RRX 
l797: rscLEs R1, R15, R7, RRX 
l798: ands R1, R15, R3
l799: ldmIA R13!, {R6, R12}
l800: mov R5, #20
l801: strHIB R3, [sp, +R5]
l802: subCSs R11, R4, #247463936
l803: mov R9, R1
l804: adcs R9, R6, R0, LSL R8
l805: subs R2, R8, #3407872
l806: adds R11, R10, #41418752
l807: bVC l811
l808: subs R6, R7, R14, RRX 
l809: cmpHI R0, #192937984
l810: cmpGT R9, R7, LSR R11
l811: mvn R2, R14, ROR R2
l812: rscCSs R11, R5, #38273024
l813: clz R2, R8
l814: b l820
l815: mvn R5, R12, RRX 
l816: eorCC R5, R8, R15, LSL #9
l817: movMIs R7, R5
l818: sub R3, R7, R10, ASR #14
l819: bicPLs R2, R3, R10, ASR R0
l820: mvns R7, #58880
l821: ldmDA R13, {R3, R7, R10}
l822: bics R11, R14, R11, RRX 
l823: stmDB R13!, {R11}
l824: umullVS R2, R1, R7, R2
l825: sbcs R12, R4, R5, ROR #22
l826: andLS R10, R14, R6, LSL #31
l827: bicVS R5, R3, R11, LSR #0
l828: strPLB R8, [sp, #+52]
l829: bVC l839
l830: rscNE R0, R6, R7, RRX 
l831: clzCC R7, R7
l832: cmp R1, R4, ROR R4
l833: subVC R4, R11, R3, ASR R14
l834: eor R0, R10, R7, ASR R3
l835: orrPLs R4, R12, R1, LSL #22
l836: adc R14, R14, R7, ROR R0
l837: tst R9, R14, LSL #10
l838: cmnHI R7, R10, LSR R4
l839: orrGT R1, R15, R3
l840: mov R10, #74
l841: ldrh R2, [sp, +R10]
l842: eorNEs R2, R5, R11, LSR #20
l843: adcLTs R5, R14, R12
l844: mov R11, R14
l845: orrCS R11, R1, R11
l846: ldrCSh R14, [sp, #+36]
l847: addCCs R9, R14, #-268435450
l848: adcVC R7, R10, R14, ROR R8
l849: mov R2, #74
l850: ldrsb R9, [sp, +R2]
l851: mov R5, #10
l852: strh R7, [sp, +R5]
l853: rsbCC R10, R7, R6, ASR R9
l854: bEQ l857
l855: rsb R0, R3, R11
l856: rsbGTs R7, R15, #182272
l857: movs R4, R14, LSR #9
l858: rsbMI R8, R0, R12
l859: tstPL R2, R2, ASR #13
l860: orr R10, R10, R7, LSR R1
l861: mvnMI R4, R11, LSL R14
l862: teqLT R6, R2
l863: b l873
l864: tstVS R3, #290816
l865: addLS R11, R0, R7
l866: rsc R6, R9, R14
l867: rscs R3, R11, #-1342177279
l868: subPL R8, R4, #268435457
l869: tstMI R3, #8847360
l870: addGT R8, R4, #4992
l871: clzPL R1, R4
l872: adcGTs R11, R5, R14, LSR #6
l873: ands R0, R3, R12, ROR R12
l874: eorLSs R7, R5, #602112
l875: bicLSs R10, R9, R14, LSR R2
l876: sub R3, R8, R6, LSR #15
l877: mov R10, #53
l878: ldrGTB R9, [sp, +R10]
l879: smlalLSs R3, R10, R1, R3
l880: smullLT R0, R6, R9, R7
l881: ldr R9, [sp], #+20
l882: addEQs R3, R2, R11, ASR #5
l883: tst R15, #733184
l884: mvn R5, R8, ASR R11
l885: umullLT R10, R7, R5, R1
l886: rsbVSs R0, R2, R5
l887: cmp R8, R3, RRX 
l888: subGE R4, R3, R7, RRX 
l889: movVS R11, #1627389952
l890: mov R8, #16
l891: str R11, [sp, +R8]!
l892: ldrVSB R11, [sp, #+19]
l893: teqGT R5, #6144
l894: b l904
l895: cmpPL R5, R6, LSR R12
l896: teqNE R9, R1, ROR R1
l897: subHIs R2, R3, R3, ROR R8
l898: teqLS R2, R11, LSR R12
l899: mvns R0, R10
l900: rsbs R14, R11, R1, LSL R3
l901: tst R10, #1291845632
l902: sbc R0, R2, R1, ROR #30
l903: andPL R7, R2, R10, RRX 
l904: eors R10, R0, R2, LSL R6
l905: smlals R2, R6, R14, R5
l906: ldmIA R13!, {R14}
l907: mov R11, #7
l908: ldrEQB R0, [sp, +R11]
l909: bicHI R14, R10, R8, LSL R11
l910: cmnNE R14, #11264
l911: orrPLs R11, R6, R1
l912: eorVS R12, R6, R0, ROR R1
l913: movGT R11, R6
l914: rsbs R14, R4, #134144
l915: ldmDB R13!, {R0, R3, R10, R14}
l916: bVS l917
l917: andLSs R1, R5, R2, LSR R9
l918: rscCC R2, R11, R9, LSR R2
l919: clz R11, R7
l920: smlalNEs R10, R12, R3, R7
l921: ldr R3, [sp, #-8]!
l922: andHI R9, R6, #167772160
l923: tst R6, #2688
l924: cmpCC R15, R4, LSL #15
l925: stmIA R13, {R4, R7, R11, R12}
l926: mov R10, #140288
l927: addVS R0, R11, R12, LSL R6
l928: mvn R10, R7, ASR R8
l929: mov R4, #4
l930: str R6, [sp, -R4]!
l931: orrs R5, R1, R12, LSL R1
l932: teq R4, R6, RRX 
l933: eorCSs R2, R0, R3, LSR R0
l934: andGEs R2, R11, #213
l935: bGT l940
l936: add R1, R0, #239
l937: eor R1, R6, R7, LSR R12
l938: mvnLS R14, #720
l939: b l941
l940: b l937
l941: rscs R11, R5, R7
l942: rsbEQ R12, R7, R3, LSL R2
l943: bics R4, R11, R0
l944: subPL R9, R4, R12, LSR R3
l945: teqHI R6, #1610612736
l946: stmDB R13, {R3, R7, R9, R12, R13}
l947: ands R9, R14, #37120
l948: bVC l956
l949: eorEQ R4, R1, R9, ROR R7
l950: bicVS R2, R7, R3
l951: adcHIs R12, R5, R6, LSL R8
l952: subCCs R7, R6, R11, LSL R12
l953: mvns R14, R6, ROR #1
l954: orrMI R9, R7, #73728
l955: bicHI R11, R7, #1073741887
l956: orr R0, R8, #167772160
l957: rscGTs R2, R0, R12, LSL #23
l958: rscCCs R10, R1, R3, LSR #6
l959: sbcVC R9, R4, #1325400064
l960: bEQ l969
l961: mvnEQs R2, #56
l962: movLEs R14, R7, LSR #23
l963: sub R4, R2, #-1476395007
l964: teqHI R0, R5, LSR R12
l965: sub R14, R9, R4, LSR R9
l966: tstMI R0, R11, ROR R10
l967: andEQs R9, R10, R12, LSR R3
l968: add R3, R12, R12
l969: teq R5, #153600
l970: orrVSs R5, R9, #2375680
l971: andVCs R7, R0, R10, ROR #24
l972: add R1, R7, #-2147483648
l973: strEQh R3, [sp, #+30]
l974: stmIB R13!, {R1, R2, R3, R4, R5, R7, R8, R9, R10, R11, R12, R14}
l975: ldrGEsh R3, [sp, #-40]
l976: and R6, R8, R15
l977: eor R11, R3, R7
l978: smlalLT R12, R14, R9, R9
l979: ands R14, R5, R1, LSL #12
l980: mov R5, #44
l981: ldr R0, [sp], -R5
l982: orrNEs R2, R0, R11
l983: subLEs R0, R9, R0, ROR #31
l984: orrMI R7, R0, R3, ROR R6
l985: smullNE R2, R9, R11, R14
l986: teqHI R5, R1
l987: smulls R6, R5, R12, R0
l988: sub R0, R11, R7
l989: stmDA R13!, {R3, R4, R8}
l990: andGE R6, R8, R5, ASR R5
l991: rsbLE R10, R5, R8
l992: andVCs R4, R9, #44288
l993: orr R11, R14, R0, ASR R8
l994: adcHI R0, R10, R3, ROR R0
l995: adds R9, R6, R4, ASR R3
l996: mov R11, #0
l997: ldrCCsb R2, [sp, +R11]
l998: sbcs R5, R2, R2, ASR R6
l999: ldmIA R13!, {R0, R1, R4, R7, R9, R10, R11, R12, R14}
l1000: nop
end: b end

