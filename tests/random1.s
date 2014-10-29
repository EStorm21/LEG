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
val1: .word 3639700185
next1: ldr R2, val2
b next2
val2: .word 3280387010
next2: ldr R3, val3
b next3
val3: .word 1095513124
next3: ldr R4, val4
b next4
val4: .word 2127877496
next4: ldr R5, val5
b next5
val5: .word 1930549423
next5: ldr R6, val6
b next6
val6: .word 2798570508
next6: ldr R7, val7
b next7
val7: .word 3387540998
next7: ldr R8, val8
b next8
val8: .word 403123856
next8: ldr R9, val9
b next9
val9: .word 121751485
next9: ldr R10, val10
b next10
val10: .word 3589583788
next10: ldr R11, val11
b next11
val11: .word 1858720404
next11: ldr R12, val12
b next12
val12: .word 3273968024
next12: ldr R14, val14
b next14
val14: .word 9045431

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 1912923433
next15: str R1, [sp, #-0]
ldr R1, val16
b next16
val16: .word 3098990841
next16: str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 982526259
next17: str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 4059906723
next18: str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 3871601450
next19: str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 131382977
next20: str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 109289141
next21: str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 2325348864
next22: str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 4033614940
next23: str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 1637259734
next24: str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 930287327
next25: str R1, [sp, #-40]

# MAIN PROGRAM

l1: bicCSs R6, R3, R6
l2: adcMIs R11, R8, #8
l3: subLSs R10, R14, #8
l4: mvnLEs R12, R0, LSR R7
l5: bicLSs R7, R9, R12
l6: orrGT R6,  R0,  R0
l7: ldrVC R2,  [sp, #-24]
l8: orr R3,  R7,  R14
l9: sub R7, R0, R12, RRX
l10: orrMIs R5,  R0,  R12
l11: movLT R6, #8
l12: sbcVC R0, R2, R11, RRX
l13: b l16
l14: adcGEs R0, R3, #8
l15: addPL R7, R3, R4, LSR R14
l16: sbcCC R2, R12, R8, LSL #8
l17: addPL R10, R9, R3, LSR #8
l18: bicLE R9, R8, #8
l19: cmpGE R12, R14, LSL #8
l20: adcNE R12, R11, R2, LSR #8
l21: orrGT R4,  R2,  R9
l22: addLS R9, R6, #8
l23: bic R4, R10, R6
l24: bVS l34
l25: orr R3,  R10,  R1
l26: b l31
l27: add R1, R0, #154
l28: l29: l30: b l32
l31: b l28
l32: adcGTs R12, R11, #8
l33: movCS R3, #8
l34: bPL l40
l35: add R1, R0, #201
l36: l37: l38: l39: b l41
l40: b l36
l41: subCC R6, R9, R0
l42: mvnGE R6, #8
l43: strMI R8,  [sp, #-40]
l44: orrHI R7,  R4,  R3
l45: cmpVCs R6, R5, RRX
l46: sub R11, R4, #8
l47: bicHI R0, R1, R1, ASR #8
l48: orr R2,  R7,  R11
l49: str R14,  [sp, #-36]
l50: movLS R12, R12, ASR R0
l51: b l59
l52: add R1, R0, #215
l53: l54: l55: l56: l57: l58: b l60
l59: b l53
l60: movVCs R7, #8
l61: sbcVC R6, R5, R12, RRX
l62: andCS R7,  R12,  R2
l63: bLE l68
l64: add R1, R0, #217
l65: l66: l67: b l69
l68: b l65
l69: tstLT R10, R10, ASR R1
l70: orrHI R12,  R14,  R1
l71: bLE l78
l72: bVC l81
l73: add R1, R0, #205
l74: l75: l76: l77: l78: l79: l80: b l82
l81: b l74
l82: subGTs R1, R1, R14, LSR #8
l83: movGE R8, R7, LSL R0
l84: subLTs R5, R9, #8
l85: adcPLs R3, R12, R14, LSR R14
l86: tstGE R14, #8
l87: adcEQs R5, R5, R10, LSR #8
l88: tstVCs R8, R8, LSR #8
l89: eorLTs R11,  R8,  R4
l90: eorCCs R2,  R11,  R6
l91: movLE R10, #8
l92: cmpLE R9, R2, ROR R6
l93: adcCCs R11, R5, R2, ROR #8
l94: bLT l97
l95: bic R11, R4, #8
l96: b l97
l97: sbcLTs R10, R2, R14, ASR R12
l98: orrHI R7,  R1,  R1
l99: teqLSs R3, R1, LSL R11
l100: bicPLs R0, R12, R1
l101: bLT l111
l102: bLE l104
l103: sbcPL R5, R3, R8, LSR R6
l104: mvn R12, #8
l105: rsb R8, R5, R2, ROR #8
l106: mvnGT R0, R14
l107: bNE l111
l108: add R1, R0, #215
l109: l110: b l112
l111: b l109
l112: eorVCs R5,  R8,  R14
l113: adcPLs R14, R4, R7, LSR R1
l114: bicLE R12, R9, R10, ROR #8
l115: str R11,  [sp, #-36]
l116: teqGT R6, R7, ASR R12
l117: tstEQ R12, R11, ASR R2
l118: tstMI R4, R11, RRX
l119: bicGE R7, R4, R8, RRX
l120: orr R10,  R11,  R9
l121: bPL l129
l122: add R1, R0, #41
l123: l124: l125: l126: l127: l128: b l130
l129: b l123
l130: orr R9,  R5,  R6
l131: bicHIs R2, R7, R5, ASR #8
l132: movCC R3, #8
l133: adcVCs R11, R2, R5, ASR #8
l134: cmn R8, R9, LSR #8
l135: eorGTs R14,  R3,  R2
l136: orrCSs R5,  R12,  R11
l137: cmnVS R6, #8
l138: subGEs R12, R14, R7, LSR #8
l139: bVC l149
l140: subPLs R7, R7, R8, ASR #8
l141: rsb R5, R12, R12, RRX
l142: sbcGT R11, R10, R9
l143: rsbEQ R5, R2, #8
l144: cmpCSs R3, R6, ROR #8
l145: orr R10,  R1,  R1
l146: adcNEs R3, R14, #8
l147: mvnMIs R14, R14, LSL #8
l148: sbcCC R9, R3, R14
l149: bGT l157
l150: tstCSs R4, R11, ASR R3
l151: bLS l156
l152: add R1, R0, #107
l153: l154: l155: b l157
l156: b l153
l157: ldr R14,  [sp, #-12]
l158: teqVC R11, #8
l159: bicPLs R7, R14, R2, ROR R12
l160: andVC R5,  R6,  R4
l161: cmnCCs R9, R9
l162: eor R4,  R6,  R4
l163: subCCs R1, R9, R3, ROR R5
l164: bEQ l170
l165: add R1, R0, #6
l166: l167: l168: l169: b l171
l170: b l166
l171: subNE R0, R1, #8
l172: tstCCs R3, #8
l173: orrLEs R8,  R12,  R5
l174: movCCs R7, #8
l175: adcPL R7, R3, #8
l176: movLE R6, R10
l177: movLSs R11, R4, ASR #8
l178: b l182
l179: add R1, R0, #56
l180: l181: b l183
l182: b l180
l183: mvnHIs R3, R0, ROR #8
l184: orrMIs R12,  R6,  R10
l185: cmpPLs R5, R14
l186: andNE R1,  R1,  R7
l187: cmpVCs R12, R3, RRX
l188: movPL R5, R4, RRX
l189: mvnLTs R14, R12
l190: teqLSs R6, R0, LSR #8
l191: mvnLT R6, R0, RRX
l192: cmnLSs R2, R9
l193: eorNEs R6,  R6,  R10
l194: sbcMIs R7, R12, R5, ASR R3
l195: bicHIs R10, R11, R4
l196: bEQ l206
l197: eor R7,  R5,  R0
l198: ldrGT R4,  [sp, #-12]
l199: bCC l208
l200: add R1, R0, #150
l201: l202: l203: l204: l205: l206: l207: b l209
l208: b l201
l209: orrMI R3,  R4,  R3
l210: addVS R3, R11, R6, ASR #8
l211: rsbVSs R2, R1, R10, ASR R11
l212: addCS R7, R3, R8
l213: str R3,  [sp, #-32]
l214: addVS R11, R6, #8
l215: teqNE R3, R11, LSL #8
l216: cmnHI R8, #8
l217: b l225
l218: add R1, R0, #98
l219: l220: l221: l222: l223: l224: b l226
l225: b l219
l226: bNE l235
l227: add R1, R0, #173
l228: l229: l230: l231: l232: l233: l234: b l236
l235: b l228
l236: eorLE R14,  R11,  R8
l237: adcLT R12, R5, R8, ROR #8
l238: bLS l243
l239: addVC R4, R12, R3
l240: teq R14, R0, ASR #8
l241: cmpMIs R7, R2, ASR #8
l242: subHI R10, R2, R14
l243: cmnLEs R14, R9
l244: bHI l246
l245: andGE R10,  R12,  R0
l246: eorEQs R14,  R2,  R1
l247: addVS R3, R0, R14, LSL #8
l248: b l252
l249: add R1, R0, #9
l250: l251: b l253
l252: b l250
l253: bicCSs R4, R5, #8
l254: tst R4, R14
l255: addVCs R8, R14, #8
l256: sbcGTs R9, R14, R7, LSR #8
l257: orr R6,  R6,  R11
l258: movVSs R11, R8
l259: sbcVC R12, R6, R9, RRX
l260: sbcLT R8, R10, #8
l261: adcPLs R4, R11, R1, LSL R3
l262: andHIs R14,  R8,  R3
l263: andLTs R7,  R8,  R5
l264: mov R6, R5
l265: mvnHI R8, R6
l266: ldr R0,  [sp, #-32]
l267: tstGT R0, R7, RRX
l268: mvnMIs R4, R0
l269: sbc R7, R10, R3, RRX
l270: addCSs R7, R1, R0, RRX
l271: tstCS R11, #8
l272: adcVS R2, R4, R3, LSL R6
l273: movGE R6, R0
l274: eorVC R2,  R12,  R1
l275: b l279
l276: add R1, R0, #39
l277: l278: b l280
l279: b l277
l280: bicCC R10, R14, R4, LSL R7
l281: adcVS R3, R4, #8
l282: cmnEQs R5, #8
l283: bCS l290
l284: add R1, R0, #19
l285: l286: l287: l288: l289: b l291
l290: b l285
l291: cmnLEs R12, R2, ASR #8
l292: andLT R14,  R7,  R12
l293: orrVCs R4,  R1,  R14
l294: mvnVS R14, #8
l295: rsb R0, R9, R2
l296: cmnVC R1, #8
l297: cmnEQs R7, R6, LSR #8
l298: adcLTs R2, R1, R4
l299: rsbHIs R8, R12, #8
l300: movHIs R11, R4, ASR R14
l301: rsbMI R7, R0, #8
l302: ldr R8,  [sp, #-20]
l303: adc R9, R0, R9
l304: bPL l307
l305: strGT R0,  [sp, #-20]
l306: rsbMIs R9, R8, R4, ROR R10
l307: movLE R12, #8
l308: tstGEs R3, #8
l309: eorGTs R7,  R6,  R0
l310: tstPLs R2, #8
l311: tstGE R9, #8
l312: sbc R11, R7, R6, ASR R0
l313: bGT l317
l314: add R1, R0, #130
l315: l316: b l318
l317: b l315
l318: cmnGE R8, R6, LSR #8
l319: cmpLTs R8, R4
l320: strVC R9,  [sp, #-32]
l321: teqLEs R6, #8
l322: sbcEQs R2, R11, R5
l323: rsbLTs R12, R2, R10, ASR #8
l324: cmp R3, #8
l325: sbcNEs R14, R7, #8
l326: bLS l334
l327: add R1, R0, #38
l328: l329: l330: l331: l332: l333: b l335
l334: b l328
l335: andPLs R6,  R6,  R5
l336: bicPLs R2, R3, R10, RRX
l337: strVS R8,  [sp, #-28]
l338: eorLS R3,  R5,  R9
l339: rsb R12, R8, R3, RRX
l340: rsbLS R9, R6, R5, ASR R4
l341: eorGEs R2,  R6,  R7
l342: eor R2,  R2,  R14
l343: strLT R1,  [sp, #-8]
l344: eorGE R1,  R5,  R2
l345: sbcCS R12, R7, R5, ASR R3
l346: adcCCs R6, R12, R12, LSL R0
l347: teqGTs R2, R1, ROR R11
l348: eorCCs R9,  R9,  R1
l349: teqGT R5, R0, LSL R6
l350: orrVSs R7,  R0,  R11
l351: sbcLE R11, R12, R12, ROR #8
l352: sbcCCs R9, R8, #8
l353: orrMI R0,  R1,  R4
l354: adc R11, R6, #8
l355: tstVCs R14, R12, LSR #8
l356: orrCS R8,  R12,  R5
l357: cmnVCs R1, #8
l358: subMIs R8, R7, R1
l359: mvnHI R6, R14, LSL R14
l360: bicNEs R9, R8, #8
l361: orrLE R9,  R8,  R6
l362: adc R2, R12, R11, LSL #8
l363: add R14, R11, #8
l364: addCCs R14, R10, R6, ASR R0
l365: ldrGE R1,  [sp, #-28]
l366: eor R6,  R8,  R7
l367: andNE R1,  R0,  R7
l368: andMI R12,  R1,  R4
l369: subPLs R1, R3, R14, LSL R0
l370: sbcGTs R6, R2, R8, ASR #8
l371: bVS l375
l372: ldrMI R14,  [sp, #-16]
l373: bicHIs R3, R14, R9, ASR #8
l374: subLSs R10, R14, R9, ROR R11
l375: orr R1,  R12,  R9
l376: orrCCs R1,  R3,  R8
l377: mvn R8, #8
l378: orr R1,  R1,  R4
l379: andHI R8,  R3,  R11
l380: andLSs R10,  R14,  R12
l381: eorLTs R6,  R10,  R3
l382: cmpPLs R0, #8
l383: cmnEQ R3, R1, LSR #8
l384: mvnNE R4, R1
l385: mov R8, R8, ASR #8
l386: cmpLSs R8, #8
l387: subNEs R0, R12, R3, ASR R4
l388: add R7, R11, R12, LSL R6
l389: teqGE R9, #8
l390: orrCS R0,  R3,  R7
l391: adcNEs R14, R7, R7
l392: cmnLT R3, R0
l393: eorNE R1,  R6,  R4
l394: bCC l396
l395: tstEQ R9, R3, ASR R14
l396: strCS R0,  [sp, #-8]
l397: movEQ R2, R7
l398: bGE l404
l399: sbc R5, R2, R1
l400: rsbGEs R12, R8, R0, RRX
l401: rsbHI R5, R0, #8
l402: bGE l406
l403: add R1, R0, #49
l404: l405: b l407
l406: b l404
l407: bEQ l416
l408: bLT l409
l409: teqGTs R7, R9, RRX
l410: rsbCSs R6, R5, R11, LSR R12
l411: cmpGT R7, R9, ASR #8
l412: sbcCS R8, R10, R10, ROR #8
l413: cmnLS R9, R11, ROR R3
l414: eorGEs R6,  R5,  R14
l415: adcVSs R1, R9, #8
l416: mvnEQs R10, R9, LSR #8
l417: cmpEQ R0, R9
l418: tst R0, #8
l419: bEQ l427
l420: cmpLE R3, R0
l421: addVC R11, R14, R6, RRX
l422: tstCSs R5, R9
l423: teqPL R10, #8
l424: mov R2, R4, LSL #8
l425: subCCs R5, R12, R0, LSL #8
l426: b l430
l427: add R1, R0, #205
l428: l429: b l431
l430: b l428
l431: movLTs R9, R1
l432: andPLs R1,  R12,  R12
l433: adcEQs R11, R4, #8
l434: subNE R2, R14, R8, ASR #8
l435: strLE R11,  [sp, #-8]
l436: strLT R12,  [sp, #-32]
l437: cmnLE R1, #8
l438: rsb R2, R6, R12, LSR #8
l439: mvn R10, R2, LSR R0
l440: tstCCs R5, #8
l441: rsbLE R1, R3, R9, LSL R0
l442: andLTs R12,  R12,  R9
l443: teq R4, R10, ROR R1
l444: tstLE R9, R14, RRX
l445: bLT l453
l446: add R1, R0, #195
l447: l448: l449: l450: l451: l452: b l454
l453: b l447
l454: andLS R3,  R0,  R1
l455: and R6,  R10,  R0
l456: bEQ l457
l457: rsbCC R11, R11, R8, RRX
l458: mov R12, #8
l459: teqGE R9, R11, RRX
l460: movCS R1, R3, ASR R8
l461: ldrHI R1,  [sp, #-40]
l462: eorCSs R12,  R14,  R5
l463: sbcLS R9, R5, R12, LSL R4
l464: bicLT R11, R1, R8, LSR R3
l465: movVS R2, R4, LSL #8
l466: andLTs R1,  R11,  R3
l467: addLEs R9, R9, R3, ASR #8
l468: orrMI R3,  R12,  R12
l469: adcGTs R14, R9, #8
l470: eorGT R11,  R2,  R14
l471: subLT R11, R8, R10, RRX
l472: adcLEs R11, R3, R10
l473: mvnPL R14, R7, ROR #8
l474: adcPLs R2, R11, #8
l475: teq R12, R4, LSL #8
l476: teqVCs R3, R3
l477: sub R4, R8, R7
l478: orrMI R5,  R9,  R14
l479: bicNE R12, R8, R7, LSL R8
l480: mvnMI R9, R7
l481: tstNE R7, R12
l482: eorGTs R8,  R2,  R11
l483: adc R5, R9, R6, LSL #8
l484: mvnVS R6, R11, ASR R11
l485: and R14,  R6,  R1
l486: andLTs R3,  R3,  R1
l487: eorGE R4,  R0,  R2
l488: adcEQ R5, R7, R11
l489: tstLTs R1, R7, ROR #8
l490: adcLE R0, R8, R0, RRX
l491: rsbCC R2, R6, R9, RRX
l492: teqLS R3, #8
l493: orrLSs R7,  R3,  R12
l494: bicGE R2, R2, R5, ROR R7
l495: teqLSs R12, R11, LSL R11
l496: sub R3, R6, #8
l497: subVS R10, R12, R9
l498: orrLTs R11,  R12,  R5
l499: sbcEQs R2, R5, R10, ASR #8
l500: tst R1, #8
l501: tstHIs R5, R2
l502: teqGT R12, R2, LSR #8
l503: and R7,  R0,  R3
l504: subMI R9, R10, R11, LSL R2
l505: orrVC R5,  R11,  R2
l506: bicHI R9, R2, R7, RRX
l507: ldrGE R5,  [sp, #-4]
l508: movMIs R6, R12, LSR #8
l509: bVS l517
l510: add R1, R0, #114
l511: l512: l513: l514: l515: l516: b l518
l517: b l511
l518: bicLTs R0, R4, R3
l519: eor R0,  R6,  R6
l520: cmpEQs R8, R0, LSR #8
l521: andLEs R0,  R11,  R1
l522: addCSs R3, R9, R14, ASR #8
l523: rsb R14, R2, #8
l524: eorLEs R11,  R8,  R11
l525: bCS l530
l526: add R1, R0, #197
l527: l528: l529: b l531
l530: b l527
l531: b l537
l532: add R1, R0, #49
l533: l534: l535: l536: b l538
l537: b l533
l538: adcNEs R2, R14, #8
l539: bLE l548
l540: add R1, R0, #64
l541: l542: l543: l544: l545: l546: l547: b l549
l548: b l541
l549: add R12, R1, R8
l550: addCS R11, R6, R4, ROR R3
l551: sbcNEs R4, R14, R6
l552: teq R1, #8
l553: eorGEs R14,  R3,  R11
l554: bic R1, R4, R3
l555: bicCCs R11, R11, R4, LSR #8
l556: cmn R9, R6, RRX
l557: andGT R5,  R4,  R7
l558: cmnGEs R4, R3
l559: subHIs R9, R2, R2, ROR #8
l560: andPLs R14,  R9,  R7
l561: sbcCSs R0, R14, R12, ROR #8
l562: ldrHI R0,  [sp, #-32]
l563: bicVS R9, R4, #8
l564: addVC R3, R7, R12, ROR R2
l565: bicGEs R4, R1, R8, LSR R1
l566: andVCs R4,  R4,  R14
l567: rsbCC R4, R14, R5, ROR R6
l568: cmn R14, R8
l569: movVS R9, R2
l570: ldrLT R2,  [sp, #-12]
l571: ldr R5,  [sp, #-36]
l572: cmpHI R0, #8
l573: tstCC R9, R5, LSL #8
l574: ldrVC R5,  [sp, #-8]
l575: addVC R8, R7, R12, LSR R8
l576: orrHIs R8,  R6,  R5
l577: strHI R12,  [sp, #-36]
l578: subCS R12, R14, #8
l579: teqCSs R11, R2, LSL #8
l580: adcVC R6, R1, #8
l581: andPLs R3,  R3,  R2
l582: tstMIs R9, R1, ROR #8
l583: bNE l585
l584: cmpEQs R4, #8
l585: str R14,  [sp, #-16]
l586: b l590
l587: add R1, R0, #98
l588: l589: b l591
l590: b l588
l591: bEQ l600
l592: bCS l596
l593: rsbVC R6, R8, R7, LSR R5
l594: subCC R8, R6, R0, ROR #8
l595: b l603
l596: add R1, R0, #236
l597: l598: l599: l600: l601: l602: b l604
l603: b l597
l604: cmnGT R7, R7, ROR #8
l605: subVCs R1, R5, R10, LSL R12
l606: mvnLT R9, R4
l607: eorCSs R4,  R11,  R8
l608: teqHIs R5, R0
l609: addMIs R12, R0, R9, LSR #8
l610: bVC l620
l611: teqCC R7, #8
l612: orrVS R0,  R9,  R2
l613: subVSs R11, R9, R0, LSR R4
l614: adcCC R2, R3, R8, RRX
l615: b l619
l616: add R1, R0, #164
l617: l618: b l620
l619: b l617
l620: rsbHI R8, R1, R10
l621: cmpLEs R1, R4, RRX
l622: orrVCs R1,  R14,  R5
l623: subGT R6, R2, R14, LSR #8
l624: andLSs R10,  R10,  R6
l625: bNE l635
l626: tstLEs R6, R8, LSR #8
l627: cmnLEs R3, R11, ROR #8
l628: cmnVCs R12, #8
l629: subVCs R11, R5, R9, RRX
l630: subLSs R11, R12, #8
l631: eorNEs R11,  R12,  R14
l632: bicMI R2, R5, R1, RRX
l633: teqLT R11, R4, ROR #8
l634: cmn R5, #8
l635: sbcEQs R11, R6, R3, RRX
l636: bicCC R2, R2, R7
l637: bicMIs R14, R2, R4, ASR R4
l638: cmn R6, R1, ASR #8
l639: mvn R5, R7
l640: cmpCCs R0, #8
l641: orr R1,  R7,  R12
l642: cmpLTs R11, R9
l643: strCS R8,  [sp, #-36]
l644: cmnCCs R5, R9, ASR R12
l645: tstHIs R11, R4, LSL R11
l646: cmnMI R9, R14
l647: orrPLs R8,  R4,  R11
l648: addNEs R9, R11, R10, LSL #8
l649: strVC R5,  [sp, #-12]
l650: bNE l655
l651: orrNE R3,  R7,  R4
l652: addGE R12, R6, R12, LSR R4
l653: adcLT R9, R10, R1
l654: movLS R5, R12
l655: b l663
l656: add R1, R0, #31
l657: l658: l659: l660: l661: l662: b l664
l663: b l657
l664: orrNEs R5,  R0,  R14
l665: addLSs R5, R6, #8
l666: cmnNEs R6, #8
l667: bGE l669
l668: bCS l672
l669: add R1, R0, #231
l670: l671: b l673
l672: b l670
l673: bGT l677
l674: add R1, R0, #32
l675: l676: b l678
l677: b l675
l678: b l683
l679: mvnNEs R8, #8
l680: and R0,  R10,  R2
l681: subLE R0, R8, #8
l682: bEQ l686
l683: bVC l688
l684: addMI R7, R1, R6
l685: adcCSs R14, R14, R5, LSR R0
l686: rsbVSs R12, R14, R1, RRX
l687: b l695
l688: movLTs R7, #8
l689: eor R1,  R4,  R6
l690: orrGT R0,  R0,  R6
l691: adcPL R1, R6, R14
l692: mvn R10, R0, ASR #8
l693: b l700
l694: add R1, R0, #3
l695: l696: l697: l698: l699: b l701
l700: b l695
l701: subMI R0, R3, R14, ASR #8
l702: movCC R12, R4
l703: adcEQs R2, R4, #8
l704: cmp R14, R6, LSL #8
l705: ldr R2,  [sp, #-28]
l706: adcVS R5, R4, R0
l707: orrLSs R12,  R6,  R8
l708: tstMI R11, R14
l709: cmnCC R3, R9
l710: teqHI R5, #8
l711: andPL R5,  R6,  R1
l712: adcHI R2, R4, R8, RRX
l713: addEQs R9, R9, R6
l714: subVS R14, R8, R4, LSR R3
l715: bVS l721
l716: add R1, R0, #12
l717: l718: l719: l720: b l722
l721: b l717
l722: movGEs R8, #8
l723: andNEs R10,  R4,  R7
l724: mov R9, #8
l725: bicLE R3, R9, R1
l726: str R12,  [sp, #-28]
l727: bLE l736
l728: bVC l733
l729: add R1, R0, #192
l730: l731: l732: b l734
l733: b l730
l734: orrLSs R12,  R4,  R10
l735: bVS l741
l736: add R1, R0, #245
l737: l738: l739: l740: b l742
l741: b l737
l742: subMIs R3, R14, #8
l743: orrLT R9,  R11,  R14
l744: sbcMIs R0, R10, R7, LSL #8
l745: sbcLEs R9, R4, R14, RRX
l746: tstCSs R6, #8
l747: adc R4, R1, R1, LSR R14
l748: sbcEQs R9, R4, R1, LSR #8
l749: cmpNE R8, R2, ROR R0
l750: addMIs R9, R11, R4, LSR #8
l751: cmpHI R10, R8, ROR #8
l752: bVC l758
l753: mvnCS R11, R7, LSR R9
l754: sbcMIs R5, R2, R8, ASR #8
l755: sbc R11, R8, R12, LSL #8
l756: addVC R3, R8, R12
l757: adcVCs R3, R3, R7, LSR #8
l758: orrLSs R4,  R12,  R5
l759: movPL R14, R0
l760: bGT l763
l761: cmnLE R8, R4
l762: bNE l765
l763: rsbLTs R14, R2, R14, RRX
l764: eorVS R14,  R4,  R4
l765: eorVC R3,  R14,  R11
l766: eorEQs R14,  R10,  R3
l767: teqLE R6, #8
l768: bicLE R7, R7, R7, RRX
l769: bicCCs R5, R2, R10, ROR #8
l770: orrCC R8,  R9,  R4
l771: cmnLE R12, R2, LSL #8
l772: eorCSs R3,  R0,  R5
l773: bicVC R3, R2, #8
l774: tstPLs R8, #8
l775: bicGEs R5, R0, R9, ROR #8
l776: addEQs R7, R5, R12, LSR R9
l777: rsbCS R7, R8, R11, ASR R11
l778: eorLSs R11,  R11,  R11
l779: adc R10, R14, R10, LSR R11
l780: adcLS R2, R2, #8
l781: bEQ l785
l782: add R1, R0, #79
l783: l784: b l786
l785: b l783
l786: subGTs R7, R9, R2, LSR R5
l787: subGT R4, R0, R4
l788: bLE l793
l789: add R1, R0, #118
l790: l791: l792: b l794
l793: b l790
l794: strLS R1,  [sp, #-20]
l795: rsbHIs R12, R11, R6, LSL R9
l796: cmn R14, R1
l797: bGT l804
l798: cmpNEs R6, R12
l799: subCC R3, R6, R10, RRX
l800: mvnGE R1, #8
l801: bicLSs R6, R11, R0
l802: sbcMI R3, R9, R4, LSL #8
l803: cmnVC R2, #8
l804: cmpVSs R10, R8, RRX
l805: eorNE R9,  R6,  R8
l806: movGTs R4, R12, LSR R7
l807: rsbEQs R0, R6, R3, LSL #8
l808: subLTs R4, R4, R12, ROR #8
l809: cmnMIs R2, R7, LSL R6
l810: tst R8, R8, ROR #8
l811: ldr R0,  [sp, #-4]
l812: b l817
l813: add R1, R0, #2
l814: l815: l816: b l818
l817: b l814
l818: cmpEQs R7, R4, LSL R8
l819: str R5,  [sp, #-20]
l820: andMI R12,  R4,  R10
l821: rsbGEs R1, R1, R1, ASR #8
l822: add R3, R2, R5
l823: mvnMIs R6, R0, ROR R4
l824: bicPLs R12, R7, R9, RRX
l825: orrNEs R8,  R12,  R7
l826: teqVS R3, #8
l827: b l834
l828: add R1, R0, #59
l829: l830: l831: l832: l833: b l835
l834: b l829
l835: andMI R7,  R9,  R2
l836: adcCCs R0, R12, #8
l837: sbc R7, R0, R2
l838: movVS R8, R6, RRX
l839: bLS l849
l840: bCC l846
l841: subVSs R12, R8, R8, LSR R12
l842: teqPLs R7, R7
l843: bEQ l853
l844: orr R11,  R10,  R10
l845: ldrHI R3,  [sp, #-24]
l846: andHIs R10,  R4,  R12
l847: cmpLE R4, #8
l848: rsbLTs R7, R8, R11, ASR #8
l849: andEQs R4,  R11,  R4
l850: eorLSs R8,  R2,  R2
l851: eorLS R2,  R9,  R10
l852: mvnCCs R7, #8
l853: addGE R14, R10, R6
l854: add R10, R3, R0, LSL #8
l855: sbcEQs R7, R6, #8
l856: adcGT R1, R1, #8
l857: rsb R9, R10, R5, ROR R7
l858: adcCCs R9, R1, R3
l859: bHI l868
l860: add R1, R0, #104
l861: l862: l863: l864: l865: l866: l867: b l869
l868: b l861
l869: bicLEs R14, R1, R9
l870: strVC R7,  [sp, #-12]
l871: cmpGT R5, R11, ASR #8
l872: teq R12, R6, LSL R5
l873: and R6,  R10,  R7
l874: bMI l881
l875: bGT l879
l876: teqLEs R2, R10
l877: subEQs R0, R14, R7, ASR #8
l878: tstPL R4, R10, LSR #8
l879: bicLT R14, R14, #8
l880: orrHIs R0,  R7,  R12
l881: addEQ R0, R2, R10
l882: sbcCCs R8, R3, R5
l883: ldrNE R14,  [sp, #-8]
l884: cmnNE R12, R9, ASR R0
l885: bicMI R5, R4, R11, ASR #8
l886: tstCSs R2, #8
l887: mvnHI R1, #8
l888: movNE R2, R11
l889: orrVC R0,  R2,  R11
l890: movGEs R3, R7, ROR R8
l891: subGEs R7, R5, R12, LSR #8
l892: sbcCC R2, R6, R6, RRX
l893: orrHIs R2,  R10,  R9
l894: cmnGTs R0, R11, LSL #8
l895: teqEQs R7, R11
l896: rsbNEs R10, R6, #8
l897: cmn R4, R9, LSL R4
l898: tstGT R12, #8
l899: teqPL R3, R6, ROR R2
l900: bCC l908
l901: cmpPLs R5, R8, RRX
l902: mvnPL R3, R2, ROR R10
l903: strCS R11,  [sp, #-28]
l904: addVSs R8, R7, #8
l905: teqPLs R10, #8
l906: ldrCS R8,  [sp, #-40]
l907: mvn R10, #8
l908: addVSs R12, R2, R11
l909: add R2, R12, R4, ROR R10
l910: eorGEs R7,  R9,  R11
l911: movVSs R12, #8
l912: eorNE R10,  R14,  R12
l913: mvn R0, R10
l914: bicGTs R2, R9, #8
l915: eorHIs R6,  R8,  R7
l916: strCS R4,  [sp, #-8]
l917: rsb R4, R4, R14
l918: adcGE R9, R7, R4
l919: bHI l926
l920: mvnEQs R2, R0, RRX
l921: adcLE R9, R12, R11, ROR R9
l922: subVS R8, R14, R9, ROR #8
l923: movPL R2, R9, LSR #8
l924: teqCC R14, #8
l925: tstGTs R9, R14, ASR #8
l926: cmpCC R1, #8
l927: b l931
l928: add R1, R0, #15
l929: l930: b l932
l931: b l929
l932: cmpEQs R1, R4, ASR #8
l933: sbcLEs R9, R7, R10, RRX
l934: teqCS R2, R0
l935: tst R2, R2
l936: mvnPL R2, R12
l937: andMIs R14,  R4,  R10
l938: eorVC R8,  R0,  R3
l939: adcHIs R0, R8, R10, LSR #8
l940: cmnMIs R10, R7, RRX
l941: subCCs R4, R0, R10
l942: subNE R9, R14, R10
l943: str R0,  [sp, #-20]
l944: bHI l949
l945: adcGT R7, R2, R2, ASR #8
l946: eor R11,  R1,  R11
l947: strGT R6,  [sp, #-12]
l948: andGEs R3,  R5,  R14
l949: bVC l958
l950: andLSs R2,  R9,  R14
l951: bLT l953
l952: tstHIs R2, #8
l953: b l963
l954: bicMIs R0, R3, R11
l955: subVC R12, R1, R14, ASR R10
l956: cmnCS R7, R9
l957: cmpLS R7, R2, LSL R2
l958: bicLE R4, R12, #8
l959: b l966
l960: mov R0, #8
l961: rsb R5, R2, R10, ROR #8
l962: ldrVS R0,  [sp, #-8]
l963: andCS R10,  R1,  R0
l964: ldr R3,  [sp, #-32]
l965: movPL R9, R0, RRX
l966: bHI l973
l967: add R1, R0, #9
l968: l969: l970: l971: l972: b l974
l973: b l968
l974: cmpMIs R10, R7, ASR #8
l975: cmp R8, R8, RRX
l976: bGE l983
l977: rsbHIs R5, R1, R2, RRX
l978: mvn R0, #8
l979: orrNE R0,  R10,  R12
l980: and R8,  R9,  R1
l981: sbcLE R10, R9, R0, RRX
l982: ldrGT R2,  [sp, #-4]
l983: orrEQ R2,  R11,  R0
l984: sbc R12, R6, R6
l985: cmnPL R6, R2
l986: cmpCCs R9, R3, ASR R10
l987: strVC R9,  [sp, #-36]
l988: eorCC R10,  R10,  R12
l989: sbcLTs R9, R0, R9
l990: orrCS R4,  R6,  R2
l991: bicGE R14, R8, R14, LSR #8
l992: rsbLT R3, R11, #8
l993: strLS R4,  [sp, #-16]
l994: and R12,  R0,  R2
l995: strNE R5,  [sp, #-8]
l996: mvnLE R2, R10, LSL R10
l997: teqLS R9, R12, LSL R5
l998: teqHIs R1, #8
l999: mvnHIs R3, R1
l1000: strLS R9,  [sp, #-8]
end: b end

