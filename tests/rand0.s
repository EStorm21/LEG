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

l1: addCSs R6, R3, R6
l2: adcMIs R11, R8, #8
l3: addLSs R10, R14, #8
l4: subLEs R12, R7, R1
l5: bCC l10
l6: eorGT R6,  R7,  R10
l7: bicNE R0, R9, #8
l8: subLTs R14, R7, R6
l9: ldrHI R3,  [sp, #-24]
l10: rsb R11, R10, #8
l11: adcMIs R12, R2, #8
l12: subVSs R8, R6, R6
l13: eorGTs R11,  R11,  R3
l14: andEQ R0,  R10,  R3
l15: orrCS R2,  R7,  R2
l16: orrGE R6,  R0,  R5
l17: adcCSs R12, R2, #8
l18: adcPL R10, R9, #8
l19: ldrLS R3,  [sp, #-28]
l20: andVSs R0,  R4,  R14
l21: sbc R4, R10, R7
l22: b l26
l23: add R1, R0, #246
l24: subPL R12,  R14,  R11
l25: b l27
l26: b l24
l27: bicHIs R2, R6, R3
l28: bic R4, R12, R5
l29: ldrVS R2,  [sp, #-28]
l30: str R9,  [sp, #-20]
l31: rsbPL R1, R12, #8
l32: bVS l36
l33: b l40
l34: add R1, R0, #227
l35: adcMIs R1,  R0,  R1
l36: sbcGTs R11,  R4,  R10
l37: rsbGT R7,  R3,  R1
l38: add R7,  R12,  R7
l39: b l41
l40: b l35
l41: bEQ l50
l42: adcNE R12, R3, R12
l43: addCC R10, R12, #8
l44: addCC R6, R9, R0
l45: subGE R6, R0, #8
l46: add R8, R7, #8
l47: andHI R1,  R3,  R14
l48: orr R5,  R4,  R4
l49: bPL l58
l50: add R1, R0, #86
l51: subPLs R8,  R3,  R0
l52: addCS R7,  R0,  R1
l53: subLS R11,  R6,  #16
l54: adcCSs R11,  R1,  #16
l55: addLTs R14,  R11,  R5
l56: adcCSs R12,  R4,  #16
l57: b l59
l58: b l51
l59: bVS l63
l60: add R1, R0, #231
l61: rsb R11,  R10,  R11
l62: b l64
l63: b l61
l64: adcHIs R10, R3, #8
l65: orr R6,  R5,  R4
l66: subMIs R5, R0, R4
l67: rsbLE R5, R8, R0
l68: subHIs R6, R10, #8
l69: bic R7, R12, #8
l70: subPL R12, R10, R9
l71: bLE l77
l72: add R1, R0, #188
l73: sub R12,  R14,  R9
l74: addHI R3,  R7,  R12
l75: adcHIs R10,  R4,  R8
l76: b l78
l77: b l73
l78: and R11,  R8,  R3
l79: str R11,  [sp, #-28]
l80: sbcGT R14, R11, R4
l81: sbcCC R14, R8, R3
l82: rsbVS R0, R6, #8
l83: bPL l86
l84: subHIs R3, R11, #8
l85: sbcMIs R10, R5, R3
l86: rsb R7, R10, R3
l87: andCSs R4,  R7,  R0
l88: addLTs R5, R9, #8
l89: adcPLs R3, R12, #8
l90: sbcGEs R5, R14, R4
l91: bicGT R0, R5, #8
l92: eorGEs R6,  R10,  R8
l93: orrVSs R8,  R14,  R10
l94: eorPLs R4,  R3,  R9
l95: andLEs R6,  R6,  R0
l96: orrLT R9,  R0,  R7
l97: orrHIs R8,  R2,  R2
l98: adcCCs R11, R5, #8
l99: eorGTs R3,  R8,  R3
l100: rsbGE R12, R3, #8
l101: sbcGE R8, R6, #8
l102: and R6,  R12,  R10
l103: subMI R1, R10, #8
l104: eorGE R1,  R5,  R6
l105: adc R8, R3, #8
l106: ldrVS R11,  [sp, #-8]
l107: bicGT R6, R2, #8
l108: andLSs R4,  R8,  R12
l109: rsbGE R12, R5, #8
l110: bCS l118
l111: add R1, R0, #233
l112: adcMI R9,  R0,  R6
l113: adcNEs R11,  R12,  R0
l114: adcLEs R0,  R3,  R1
l115: adcEQ R8,  R10,  R11
l116: sbcVCs R5,  R8,  #16
l117: b l119
l118: b l112
l119: adcPLs R14, R4, #8
l120: bicVS R5, R12, #8
l121: eorGEs R3,  R14,  R2
l122: bNE l131
l123: add R1, R0, #24
l124: rsbNEs R5,  R14,  R0
l125: subEQs R1,  R5,  R12
l126: sbcEQ R7,  R1,  R14
l127: adcNE R5,  R10,  R5
l128: adcGTs R11,  R11,  R5
l129: bicHI R7,  R4,  R5
l130: b l132
l131: b l124
l132: ldrNE R9,  [sp, #-20]
l133: eorLSs R7,  R12,  R11
l134: bicCC R7, R4, R1
l135: andLS R4,  R4,  R10
l136: adcGE R12, R4, #8
l137: b l146
l138: add R1, R0, #208
l139: sbc R11,  R1,  R8
l140: sub R10,  R9,  R12
l141: bic R9,  R5,  R7
l142: sbcCCs R2,  R2,  R11
l143: sub R2,  R5,  R12
l144: adcCC R7,  R3,  R1
l145: b l147
l146: b l139
l147: orrCS R1,  R11,  R9
l148: bVS l152
l149: add R1, R0, #217
l150: rsbLS R12,  R8,  #8
l151: b l153
l152: b l150
l153: rsb R7, R11, #8
l154: addLTs R10, R7, R11
l155: bEQ l161
l156: addHIs R4, R0, R8
l157: eorCCs R8,  R7,  R7
l158: bVC l168
l159: addPLs R7, R7, R4
l160: ldrGE R5,  [sp, #-20]
l161: b l169
l162: add R1, R0, #236
l163: sbcGT R6,  R11,  R6
l164: rsbNEs R4,  R6,  R1
l165: bicLE R0,  R2,  R4
l166: sbcPLs R4,  R14,  R4
l167: subGEs R9,  R6,  R14
l168: b l170
l169: b l163
l170: orr R10,  R1,  R1
l171: adcNEs R3, R14, #8
l172: subMIs R14, R7, #8
l173: subHIs R5, R1, R8
l174: b l183
l175: bicLS R9, R7, R3
l176: bicVS R12, R7, #8
l177: bicCCs R12, R3, R9
l178: sbc R9, R14, #8
l179: eorVC R3,  R9,  R5
l180: sub R8, R7, R4
l181: rsbVC R3, R5, R9
l182: sbcCCs R9, R0, #8
l183: bPL l192
l184: adcHI R1, R1, #8
l185: andVS R7,  R12,  R5
l186: addCS R8, R3, #8
l187: orrEQ R4,  R1,  R3
l188: andCS R10,  R1,  R4
l189: adcLE R1, R14, R7
l190: sub R4, R4, #8
l191: eorLE R9,  R8,  R7
l192: bicVSs R12, R7, #8
l193: bicHI R7, R3, R14
l194: bicCCs R9, R7, #8
l195: addPL R9, R12, #8
l196: bVS l205
l197: sbcEQs R5, R1, R7
l198: bEQ l205
l199: bVC l206
l200: add R1, R0, #144
l201: sbcNEs R10,  R8,  R7
l202: sbcLE R8,  R0,  R8
l203: adcLSs R0,  R0,  R1
l204: adcCSs R4,  R3,  #40
l205: b l207
l206: b l201
l207: eorLEs R3,  R11,  R3
l208: adc R10, R4, R10
l209: ldrNE R6,  [sp, #-16]
l210: bLE l215
l211: adc R9, R2, #8
l212: eorEQ R12,  R5,  R11
l213: andLT R14,  R9,  R10
l214: bicLSs R10, R2, #8
l215: ldrCS R5,  [sp, #-8]
l216: addHIs R10, R11, R4
l217: bEQ l227
l218: eor R7,  R5,  R0
l219: ldrGT R4,  [sp, #-12]
l220: ldrCC R8,  [sp, #-24]
l221: bLE l231
l222: orrCCs R3,  R10,  R1
l223: subNEs R8, R14, R0
l224: addPLs R5, R14, R9
l225: subPL R5, R5, R5
l226: adcLEs R7, R10, #8
l227: addLS R4, R6, R3
l228: rsbVS R7, R6, #8
l229: addCS R8, R11, #8
l230: orrMI R7,  R1,  R3
l231: subLT R14, R11, #8
l232: adcVS R11, R6, #8
l233: eorHI R0,  R11,  R4
l234: ldrNE R11,  [sp, #-28]
l235: sub R1, R9, R11
l236: rsbEQ R3, R1, #8
l237: subVCs R3, R9, #8
l238: ldrHI R3,  [sp, #-4]
l239: subNE R6, R3, #8
l240: bGT l244
l241: add R1, R0, #11
l242: bicEQs R14,  R8,  R3
l243: b l245
l244: b l242
l245: add R5, R14, R1
l246: sbcMI R2, R12, R1
l247: ldrVC R14,  [sp, #-32]
l248: orr R6,  R14,  R7
l249: bicGE R8, R2, #8
l250: b l258
l251: add R1, R0, #106
l252: sbcGTs R8,  R1,  R9
l253: adc R4,  R5,  R9
l254: subPLs R6,  R8,  #12
l255: bicCSs R11,  R0,  R2
l256: addVC R12,  R2,  R1
l257: b l259
l258: b l252
l259: rsb R14, R8, R1
l260: b l263
l261: orrCS R2,  R14,  R3
l262: rsbVS R3, R3, #8
l263: b l272
l264: add R1, R0, #20
l265: add R12,  R1,  R7
l266: bicGEs R0,  R4,  R12
l267: sbcNE R8,  R9,  #16
l268: bic R2,  R1,  R2
l269: subMI R3,  R2,  R0
l270: sbcLT R14,  R10,  R3
l271: b l273
l272: b l265
l273: sbcHI R0, R7, #8
l274: bGE l275
l275: bicGT R5, R9, R5
l276: sbcNEs R5, R0, R3
l277: eorEQs R9,  R4,  R1
l278: eor R11,  R7,  R7
l279: rsb R8, R6, #8
l280: subVSs R11, R3, #8
l281: sbcEQs R3, R9, #8
l282: bicLT R8, R10, #8
l283: adcPLs R4, R11, R6
l284: sbcMI R9, R9, #8
l285: ldrCC R10,  [sp, #-24]
l286: addCCs R5, R6, R2
l287: ldrLT R8,  [sp, #-12]
l288: adcGEs R14, R12, #8
l289: rsbGT R0, R7, #8
l290: orrLS R7,  R3,  R0
l291: bic R7, R10, #8
l292: addCCs R1, R7, #8
l293: adcGEs R0, R11, R0
l294: adcVS R0, R2, #8
l295: addVC R12, R7, R9
l296: addLTs R8, R3, #8
l297: bCS l306
l298: adcLT R4, R8, #8
l299: addCC R10, R14, R6
l300: bicNE R3, R3, R10
l301: bLT l308
l302: add R1, R0, #221
l303: bicEQs R3,  R11,  #20
l304: sbcPLs R1,  R1,  R14
l305: sbcCCs R12,  R14,  R12
l306: bicNEs R4,  R5,  R8
l307: b l309
l308: b l303
l309: add R7, R9, R14
l310: adcVC R8, R9, #8
l311: sub R12, R11, R2
l312: sbcVS R10, R4, #8
l313: bLT l321
l314: add R1, R0, #170
l315: bicCC R14,  R0,  R4
l316: sub R2,  R3,  #36
l317: addLE R5,  R0,  #36
l318: rsbEQ R1,  R1,  R6
l319: sbcMI R3,  R4,  R8
l320: b l322
l321: b l315
l322: eorCCs R6,  R12,  R8
l323: bicCS R6, R2, R3
l324: bicLT R0, R8, #8
l325: andLT R8,  R11,  R9
l326: addNE R6, R0, #8
l327: addMIs R10, R14, #8
l328: bicCS R1, R9, R0
l329: addHI R11, R4, #8
l330: andEQs R12,  R3,  R4
l331: orrVSs R9,  R4,  R4
l332: subLE R12, R6, #8
l333: andGEs R0,  R7,  R7
l334: bGE l342
l335: add R1, R0, #127
l336: adcMIs R7,  R10,  R2
l337: subNE R10,  R11,  R7
l338: rsbVCs R4,  R1,  R12
l339: bicPL R6,  R11,  #28
l340: sub R2,  R6,  R0
l341: b l343
l342: b l336
l343: bGT l347
l344: add R1, R0, #130
l345: sbc R1,  R3,  #12
l346: b l348
l347: b l345
l348: sbcGE R8, R7, R14
l349: subPLs R14, R11, R4
l350: strVC R9,  [sp, #-32]
l351: rsbLEs R6, R0, R2
l352: add R6, R0, #8
l353: sbcPL R10, R8, #8
l354: b l355
l355: b l361
l356: add R1, R0, #26
l357: adcNEs R14,  R6,  R8
l358: adcCCs R5,  R12,  R12
l359: bicMI R2,  R14,  R10
l360: b l362
l361: b l357
l362: bHI l365
l363: adcPL R0, R5, R8
l364: bicGE R10, R8, #8
l365: bicCCs R6, R7, #8
l366: orrLSs R4,  R8,  R6
l367: subVC R3, R2, R7
l368: bVS l376
l369: add R1, R0, #241
l370: bicLT R8,  R9,  R6
l371: rsb R4,  R3,  R6
l372: rsbHIs R2,  R5,  #32
l373: sbcPLs R10,  R11,  R3
l374: adcVSs R5,  R9,  R4
l375: b l377
l376: b l370
l377: bVC l378
l378: rsbGEs R14, R2, #8
l379: eor R2,  R2,  R14
l380: strLT R1,  [sp, #-8]
l381: bVS l389
l382: addCSs R3, R6, R2
l383: andLT R1,  R12,  R4
l384: subLSs R12, R2, R0
l385: rsbGTs R2, R11, R3
l386: rsbCCs R14, R9, R4
l387: rsbGT R5, R7, R1
l388: rsbVSs R6, R7, #8
l389: bicLE R11, R12, #8
l390: bEQ l396
l391: orrPLs R4,  R11,  R3
l392: adcMI R0, R4, R0
l393: bHI l403
l394: andCCs R9,  R14,  R9
l395: sbcNEs R7, R10, R1
l396: bNE l402
l397: add R1, R0, #27
l398: sbcCC R9,  R1,  R8
l399: sbcVC R4,  R8,  R9
l400: subGT R0,  R8,  R4
l401: b l403
l402: b l398
l403: addGE R14, R14, #8
l404: rsbPLs R6, R2, #8
l405: orrHIs R8,  R6,  R8
l406: adc R14, R11, #8
l407: andCC R14,  R14,  R11
l408: eorCCs R1,  R14,  R7
l409: andNEs R0,  R3,  R14
l410: andHIs R8,  R8,  R9
l411: subPLs R7, R9, R1
l412: subLTs R4, R2, #8
l413: rsbHI R7, R1, R7
l414: sbcVSs R0, R3, R12
l415: rsbVCs R0, R11, #8
l416: sbcGTs R14, R3, R10
l417: addHIs R3, R14, R3
l418: bEQ l426
l419: add R1, R0, #80
l420: rsbLSs R14,  R12,  R14
l421: rsbGT R0,  R10,  R7
l422: sbcMI R12,  R9,  #28
l423: rsbEQs R7,  R1,  R4
l424: subPL R5,  R9,  R10
l425: b l427
l426: b l420
l427: subGEs R5, R8, R4
l428: subVS R8, R3, R7
l429: rsbLSs R2, R10, #8
l430: eorLTs R6,  R10,  R3
l431: sbcPLs R0, R1, #8
l432: bEQ l435
l433: adc R9, R1, R10
l434: adcGE R4, R7, #8
l435: subHI R12, R8, #8
l436: sbcGE R11, R4, R14
l437: bMI l439
l438: addMIs R2, R12, #8
l439: bEQ l444
l440: add R1, R0, #56
l441: rsbLSs R4,  R3,  R10
l442: subGTs R6,  R1,  R1
l443: b l445
l444: b l441
l445: rsbEQ R7, R14, #8
l446: add R8, R3, R8
l447: rsbNE R14, R1, R8
l448: bCC l453
l449: add R1, R0, #232
l450: subHIs R9,  R0,  #12
l451: adcVC R6,  R11,  #12
l452: b l454
l453: b l450
l454: adc R1, R1, R5
l455: add R7, R7, R8
l456: bicVS R12, R0, R9
l457: sbcPLs R10, R11, R1
l458: bicHI R5, R0, #8
l459: bGE l463
l460: add R1, R0, #49
l461: subCCs R2,  R1,  R8
l462: b l464
l463: b l461
l464: bEQ l473
l465: bLT l466
l466: rsbGTs R7, R14, #8
l467: bicCSs R6, R5, #8
l468: sbc R4, R7, #8
l469: orrGTs R1,  R5,  R8
l470: eorVSs R10,  R14,  R6
l471: bPL l479
l472: add R1, R0, #151
l473: rsbLEs R1,  R2,  R11
l474: rsbGEs R6,  R5,  #24
l475: addLS R0,  R1,  R10
l476: subVC R10,  R2,  R6
l477: subLTs R6,  R11,  R8
l478: b l480
l479: b l473
l480: bGE l486
l481: adcGE R0, R7, #8
l482: b l487
l483: add R1, R0, #89
l484: sbcLSs R0,  R7,  R6
l485: sbcVC R5,  R2,  R0
l486: b l488
l487: b l484
l488: andLEs R3,  R14,  R9
l489: sbcLSs R8, R5, R7
l490: str R10,  [sp, #-8]
l491: bLS l497
l492: sbcLS R10, R4, #8
l493: bic R7, R9, R0
l494: sbc R2, R11, R0
l495: adcPL R5, R1, #8
l496: adcGEs R6, R2, R3
l497: bVC l506
l498: add R1, R0, #22
l499: rsbEQs R4,  R5,  R12
l500: rsbEQs R3,  R2,  R0
l501: sbc R0,  R8,  #36
l502: sub R2,  R10,  #36
l503: adcVS R14,  R3,  R10
l504: sbcLSs R10,  R4,  #36
l505: b l507
l506: b l499
l507: bicNE R9, R1, R4
l508: sub R5, R12, R2
l509: bGE l519
l510: adcLS R0, R10, #8
l511: ldrPL R5,  [sp, #-8]
l512: rsbHIs R4, R0, #8
l513: b l522
l514: subGE R10, R12, #8
l515: rsbHIs R6, R9, #8
l516: str R10,  [sp, #-24]
l517: bic R0, R11, #8
l518: subPLs R10, R14, #8
l519: sbcMI R5, R2, #8
l520: bLS l527
l521: add R1, R0, #164
l522: sub R5,  R5,  R12
l523: rsbGEs R2,  R8,  R4
l524: addHI R0,  R1,  R11
l525: rsbCC R14,  R6,  R14
l526: b l528
l527: b l522
l528: rsbNE R1, R9, R12
l529: sbc R12, R8, R4
l530: bCC l539
l531: add R1, R0, #212
l532: bicCSs R11,  R9,  R5
l533: sbc R11,  R0,  R0
l534: subCC R1,  R12,  R0
l535: addGE R14,  R14,  R14
l536: bicCC R14,  R3,  R10
l537: rsbCSs R12,  R14,  R6
l538: b l540
l539: b l532
l540: bicLS R9, R5, R6
l541: addVC R8, R11, R3
l542: subNE R1, R4, R5
l543: bVS l546
l544: ldrCS R10,  [sp, #-4]
l545: addMI R5, R9, #8
l546: addGE R11, R10, R4
l547: ldrLT R0,  [sp, #-4]
l548: bMI l555
l549: rsbGT R9, R11, #8
l550: addLT R11, R8, #8
l551: bicGTs R1, R11, R14
l552: adc R8, R2, #8
l553: bLT l559
l554: add R1, R0, #18
l555: adcPLs R11,  R6,  #24
l556: bicLE R10,  R12,  #24
l557: subVC R4,  R7,  R0
l558: b l560
l559: b l555
l560: bGT l563
l561: bicLS R4, R4, #8
l562: addLT R11, R2, #8
l563: bCC l568
l564: subGE R14, R7, R12
l565: eorMI R0,  R3,  R4
l566: orrNE R0,  R6,  R2
l567: eorVSs R2,  R11,  R4
l568: bicHIs R14, R9, R12
l569: strLT R6,  [sp, #-12]
l570: rsbVCs R5, R10, #8
l571: adcHIs R8, R3, R8
l572: subHIs R10, R4, R1
l573: addLE R0, R0, R0
l574: adcCS R9, R10, #8
l575: andLE R0,  R0,  R5
l576: ldrNE R12,  [sp, #-16]
l577: adcCCs R6, R11, R5
l578: bPL l581
l579: strGT R5,  [sp, #-32]
l580: sbcEQ R7, R3, R9
l581: orrGT R3,  R8,  R5
l582: b l590
l583: add R1, R0, #77
l584: sbcLE R12,  R8,  R4
l585: add R6,  R2,  R9
l586: adcCS R3,  R10,  R3
l587: sbcNE R4,  R0,  R11
l588: subLTs R11,  R12,  R7
l589: b l591
l590: b l584
l591: orrVS R6,  R5,  R12
l592: eor R7,  R9,  R1
l593: subVC R1, R9, #8
l594: bicGTs R7, R12, #8
l595: subLTs R9, R1, #8
l596: rsbGE R0, R9, #8
l597: rsbVS R1, R10, R6
l598: bNE l603
l599: add R1, R0, #128
l600: addHIs R3,  R2,  R10
l601: sbcMIs R14,  R14,  R12
l602: b l604
l603: b l600
l604: adcPL R7, R7, #8
l605: eorMIs R1,  R12,  R10
l606: subHIs R5, R14, #8
l607: bGT l613
l608: add R1, R0, #119
l609: bicPL R2,  R6,  R4
l610: addVSs R3,  R11,  R1
l611: addEQs R2,  R11,  R8
l612: b l614
l613: b l609
l614: rsbLS R4, R2, #8
l615: adcGEs R7, R14, R0
l616: sub R5, R8, #8
l617: subVCs R14, R2, R1
l618: sbcMI R2, R3, #8
l619: sbcGT R11, R0, #8
l620: addLT R14, R9, #8
l621: eorVC R12,  R2,  R1
l622: ldrLT R1,  [sp, #-24]
l623: orrMI R7,  R11,  R10
l624: ldrVS R14,  [sp, #-8]
l625: bVC l626
l626: bicVSs R11, R1, #8
l627: rsbVC R14, R4, #8
l628: add R6, R0, #8
l629: ldrMI R12,  [sp, #-4]
l630: addCSs R12, R5, R12
l631: bicEQ R3, R2, #8
l632: sbcLT R12, R14, #8
l633: bCS l637
l634: add R1, R0, #36
l635: rsb R2,  R1,  #24
l636: b l638
l637: b l635
l638: adcLS R3, R0, #8
l639: rsbGE R9, R1, R10
l640: bicEQ R14, R3, #8
l641: sbcLTs R0, R3, #8
l642: str R8,  [sp, #-8]
l643: sbcLT R4, R1, #8
l644: b l650
l645: bicPL R12, R1, #8
l646: eorEQs R0,  R9,  R3
l647: addPLs R7, R0, R10
l648: adcVC R4, R4, #8
l649: orrPL R8,  R0,  R9
l650: eorLSs R7,  R7,  R3
l651: bicCSs R14, R10, #8
l652: ldrHI R0,  [sp, #-32]
l653: addVS R9, R4, #8
l654: andVC R3,  R7,  R14
l655: bEQ l659
l656: add R1, R0, #139
l657: addGE R10,  R1,  #28
l658: b l660
l659: b l657
l660: andCS R9,  R0,  R8
l661: sbcGE R12, R5, R3
l662: eorLE R2,  R8,  R3
l663: ldrMI R4,  [sp, #-36]
l664: eorVS R6,  R1,  R0
l665: orrVS R4,  R12,  R14
l666: str R10,  [sp, #-12]
l667: add R6, R4, #8
l668: rsbLE R5, R14, #8
l669: bicCS R1, R7, #8
l670: sbc R6, R4, #8
l671: orrEQs R5,  R3,  R14
l672: sbc R11, R8, #8
l673: strGT R12,  [sp, #-24]
l674: b l680
l675: rsbLE R11, R0, R6
l676: subGTs R5, R3, R7
l677: rsbHIs R3, R9, #8
l678: rsbGTs R7, R1, #8
l679: strHI R4,  [sp, #-24]
l680: str R14,  [sp, #-16]
l681: b l685
l682: add R1, R0, #98
l683: bicGTs R2,  R0,  #36
l684: b l686
l685: b l683
l686: orrLE R11,  R11,  R0
l687: bCS l693
l688: add R1, R0, #147
l689: adcGT R6,  R3,  R9
l690: rsbNEs R7,  R2,  R0
l691: bicHI R8,  R1,  R7
l692: b l694
l693: b l689
l694: b l695
l695: b l703
l696: add R1, R0, #236
l697: adcLT R8,  R4,  R11
l698: sbcVS R4,  R12,  R5
l699: adcGEs R4,  R8,  R1
l700: subGTs R6,  R5,  R14
l701: subNEs R2,  R9,  #8
l702: b l704
l703: b l697
l704: sub R2, R1, R14
l705: bVC l712
l706: add R1, R0, #156
l707: rsbCCs R9,  R9,  R7
l708: addMI R9,  R5,  #8
l709: addLTs R6,  R2,  R6
l710: subHIs R4,  R3,  R2
l711: b l713
l712: b l707
l713: eorCSs R4,  R11,  R8
l714: rsbHIs R5, R1, R0
l715: sbcCS R7, R14, #8
l716: rsbLE R14, R4, #8
l717: adcMI R9, R10, R6
l718: and R7,  R4,  R11
l719: eorEQs R0,  R2,  R14
l720: adcHI R1, R9, #8
l721: b l725
l722: add R1, R0, #164
l723: addLTs R2,  R8,  R7
l724: b l726
l725: b l723
l726: strVS R8,  [sp, #-12]
l727: bicCCs R11, R12, #8
l728: strNE R10,  [sp, #-20]
l729: sbc R5, R0, R14
l730: sbc R7, R7, #8
l731: eorLSs R6,  R0,  R11
l732: adcGEs R6, R6, #8
l733: orrGT R2,  R12,  R3
l734: rsb R11, R11, #8
l735: and R11,  R5,  R4
l736: orr R14,  R9,  R11
l737: rsb R9, R4, #8
l738: b l743
l739: ldrNE R3,  [sp, #-8]
l740: subCS R14, R14, #8
l741: rsbGE R10, R12, R0
l742: sbcLEs R0, R7, #8
l743: bicLEs R12, R3, R11
l744: adcLE R2, R3, R2
l745: ldrCC R11,  [sp, #-4]
l746: bic R6, R6, #8
l747: rsbNEs R4, R9, #8
l748: adc R3, R0, R6
l749: rsb R7, R1, #8
l750: sbcLTs R11, R5, R8
l751: adc R8, R14, #8
l752: rsbLSs R2, R5, R10
l753: bLE l760
l754: bicGE R6, R12, R4
l755: subEQs R9, R8, R8
l756: adcVCs R2, R6, #8
l757: bGE l764
l758: bicHI R5, R8, R14
l759: rsbNE R6, R3, R9
l760: adcGE R12, R6, R14
l761: bicCS R2, R9, #8
l762: adcMIs R0, R5, R8
l763: b l772
l764: add R1, R0, #191
l765: adcGT R11,  R2,  R12
l766: adcGTs R3,  R3,  #20
l767: adc R4,  R3,  R2
l768: adcGT R6,  R4,  R0
l769: sbcLEs R8,  R1,  R2
l770: bicPL R3,  R3,  R14
l771: b l773
l772: b l765
l773: sbcGTs R8, R9, R14
l774: sbcNE R4, R1, #8
l775: sbcHI R0, R12, R14
l776: eorLEs R1,  R7,  R11
l777: adcGT R12, R5, R6
l778: orr R1,  R9,  R1
l779: orrLE R5,  R11,  R11
l780: orrEQs R8,  R8,  R6
l781: bLT l786
l782: add R1, R0, #36
l783: sbcNE R10,  R2,  R11
l784: adcGE R0,  R5,  R10
l785: b l787
l786: b l783
l787: orr R5,  R0,  R3
l788: bicLS R4, R1, R4
l789: addVS R12, R0, #8
l790: bHI l795
l791: add R5, R8, #8
l792: subLTs R11, R11, R3
l793: eorGT R12,  R12,  R10
l794: strVS R6,  [sp, #-20]
l795: bicNE R0, R6, R6
l796: addVC R6, R6, R2
l797: eor R2,  R0,  R9
l798: b l805
l799: add R1, R0, #3
l800: bicVS R2,  R1,  #24
l801: bicGTs R10,  R11,  R5
l802: rsbNEs R14,  R9,  #24
l803: sbcLT R4,  R0,  #24
l804: b l806
l805: b l800
l806: sub R14, R14, R7
l807: addEQ R8, R14, #8
l808: sbcCS R1, R2, R5
l809: bicEQs R4, R7, #8
l810: ldrLS R3,  [sp, #-20]
l811: sbc R9, R2, R7
l812: bicGE R2, R0, R7
l813: rsbCSs R12, R8, R10
l814: bCC l816
l815: subHI R12, R1, R9
l816: rsbHI R5, R3, #8
l817: addNEs R5, R1, R2
l818: addPLs R4, R14, R14
l819: subVCs R6, R5, R9
l820: sbcPLs R2, R12, R9
l821: sbcGE R6, R0, R3
l822: eor R3,  R2,  R1
l823: addLE R1, R5, #8
l824: bicVSs R5, R7, #8
l825: ldr R2,  [sp, #-20]
l826: subCCs R12, R7, #8
l827: ldrVC R2,  [sp, #-12]
l828: orrNE R1,  R14,  R1
l829: bGT l836
l830: add R1, R0, #218
l831: sbcLSs R10,  R12,  R4
l832: bicGEs R9,  R5,  #40
l833: adcVS R2,  R4,  #40
l834: sbcLTs R5,  R14,  R5
l835: b l837
l836: b l831
l837: orrLSs R12,  R4,  R10
l838: bVS l844
l839: add R1, R0, #245
l840: adcCCs R14,  R5,  R4
l841: bicVCs R3,  R14,  #4
l842: rsbCCs R5,  R3,  R5
l843: b l845
l844: b l840
l845: subGTs R0, R10, R2
l846: subLT R14, R11, #8
l847: sub R11, R5, R14
l848: eor R2,  R7,  R11
l849: bicLEs R9, R4, #8
l850: bLE l855
l851: bicGEs R14, R7, R9
l852: sbcCS R6, R6, R1
l853: orrLS R8,  R7,  R1
l854: b l861
l855: add R1, R0, #158
l856: adc R9,  R2,  R0
l857: rsbGT R1,  R9,  R9
l858: rsbPLs R6,  R4,  #36
l859: sbcCS R14,  R10,  R4
l860: b l862
l861: b l856
l862: orr R4,  R11,  R7
l863: strLT R11,  [sp, #-4]
l864: subLTs R4, R2, R10
l865: subVSs R0, R8, R9
l866: bLT l876
l867: sbc R14, R8, R6
l868: orrEQs R10,  R1,  R0
l869: and R7,  R7,  R7
l870: orrLSs R4,  R12,  R5
l871: subPL R14, R0, R10
l872: subHI R11, R12, R12
l873: sbcVS R11, R0, R11
l874: ldrCC R12,  [sp, #-40]
l875: subVS R12, R14, R10
l876: eorVC R3,  R14,  R11
l877: bHI l885
l878: and R5,  R10,  R6
l879: subGE R7, R3, R12
l880: eorCSs R8,  R1,  R2
l881: andCCs R10,  R10,  R11
l882: orrCC R8,  R9,  R4
l883: sbcLE R12, R11, R5
l884: rsbCSs R10, R3, R11
l885: addVC R3, R2, #8
l886: eorVSs R8,  R6,  R9
l887: addGEs R5, R0, #8
l888: andLT R2,  R7,  R6
l889: str R4,  [sp, #-12]
l890: subVCs R1, R14, #8
l891: rsbLSs R14, R11, #8
l892: adc R10, R14, R14
l893: sbcCS R2, R2, R5
l894: orr R2,  R0,  R4
l895: adc R4, R3, R8
l896: b l903
l897: addPLs R0, R4, R11
l898: adc R2, R2, R14
l899: ldr R3,  [sp, #-24]
l900: bMI l901
l901: bic R4, R14, #8
l902: addGT R7, R12, #8
l903: bicEQs R4, R1, #8
l904: adc R6, R8, R1
l905: strHI R6,  [sp, #-20]
l906: addCC R3, R6, #8
l907: bLT l911
l908: add R8, R0, R14
l909: bEQ l912
l910: bicMI R3, R9, R10
l911: bEQ l920
l912: add R1, R0, #215
l913: adcVC R6,  R8,  R9
l914: adc R10,  R8,  #16
l915: sbcPLs R6,  R8,  R12
l916: adcLSs R6,  R8,  R2
l917: adcCCs R4,  R11,  #16
l918: sub R3,  R4,  R5
l919: b l921
l920: b l913
l921: bic R6, R5, #8
l922: addLTs R4, R4, #8
l923: bGE l931
l924: add R1, R0, #232
l925: addMIs R7,  R4,  R9
l926: addVCs R2,  R10,  R10
l927: sbcVSs R9,  R8,  R14
l928: rsb R12,  R10,  R0
l929: adcLTs R12,  R2,  #36
l930: b l932
l931: b l925
l932: addCC R12, R5, #8
l933: adcVSs R4, R6, #8
l934: orrLT R4,  R5,  R14
l935: bHI l940
l936: andMI R12,  R4,  R10
l937: bicGEs R1, R1, R1
l938: andNE R1,  R3,  R14
l939: addGE R5, R8, #8
l940: andMI R9,  R7,  R2
l941: orrCSs R12,  R9,  R10
l942: orrPLs R12,  R7,  R1
l943: bCC l946
l944: eor R8,  R11,  R3
l945: rsbPL R12, R14, R3
l946: eorGTs R8,  R10,  R3
l947: sub R0, R1, #8
l948: rsbVCs R7, R4, #8
l949: rsbEQ R8, R0, #8
l950: bGE l957
l951: add R1, R0, #118
l952: sub R0,  R4,  R1
l953: adcPL R8,  R8,  R3
l954: rsb R6,  R4,  #4
l955: sbcCSs R1,  R12,  R9
l956: b l958
l957: b l952
l958: bPL l962
l959: add R1, R0, #230
l960: subMIs R7,  R8,  R9
l961: b l963
l962: b l960
l963: orrLTs R7,  R8,  R4
l964: b l973
l965: bLS l973
l966: add R1, R0, #241
l967: rsbGEs R10,  R9,  #4
l968: subEQs R3,  R7,  R1
l969: rsbHI R9,  R10,  R5
l970: sbcGT R1,  R14,  R5
l971: bicCS R8,  R14,  R7
l972: b l974
l973: b l967
l974: eorVSs R10,  R1,  R11
l975: subEQs R0, R4, R9
l976: eorLSs R8,  R2,  R2
l977: bPL l985
l978: eorVSs R0,  R8,  R7
l979: bicCCs R6, R1, R9
l980: addEQs R1, R1, #8
l981: addPLs R0, R9, R12
l982: bicGEs R3, R11, R1
l983: adc R3, R1, R11
l984: ldrGT R8,  [sp, #-20]
l985: orrEQ R9,  R7,  R1
l986: rsb R12, R6, R11
l987: rsbLE R6, R10, R5
l988: sbcMIs R14, R5, #8
l989: orrNE R7,  R4,  R6
l990: eorGEs R5,  R9,  R6
l991: strPL R12,  [sp, #-16]
l992: sbcCC R11, R2, #8
l993: bicVC R7, R7, #8
l994: sbc R0, R8, R9
l995: ldrLT R3,  [sp, #-20]
l996: eorLS R12,  R6,  R10
l997: ldrGT R3,  [sp, #-4]
l998: subVC R8, R10, #8
l999: sbcGE R8, R0, #8
l1000: subHIs R11, R6, R8
end: b end

