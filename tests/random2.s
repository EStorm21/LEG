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
val1: .word 3713248012
next1: ldr R2, val2
b next2
val2: .word 3761309146
next2: ldr R3, val3
b next3
val3: .word 2523447745
next3: ldr R4, val4
b next4
val4: .word 3629700975
next4: ldr R5, val5
b next5
val5: .word 4136257131
next5: ldr R6, val6
b next6
val6: .word 860196383
next6: ldr R7, val7
b next7
val7: .word 3832033738
next7: ldr R8, val8
b next8
val8: .word 2433801635
next8: ldr R9, val9
b next9
val9: .word 2070190771
next9: ldr R10, val10
b next10
val10: .word 3441456850
next10: ldr R11, val11
b next11
val11: .word 3550453745
next11: ldr R12, val12
b next12
val12: .word 3258118116
next12: ldr R14, val14
b next14
val14: .word 2900323732

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 3856146408
next15: str R1, [sp, #-0]
ldr R1, val16
b next16
val16: .word 1859836924
next16: str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 1870894866
next17: str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 3512355181
next18: str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 2984863586
next19: str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 3596207275
next20: str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 2350363220
next21: str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 2060345061
next22: str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3439239887
next23: str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 897194597
next24: str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 1631165388
next25: str R1, [sp, #-40]

# MAIN PROGRAM

l1: movGTs R4, #24
l2: adcGT R2, R11, #24
l3: cmnHI R14, R0, ROR #9
l4: bLS l10
l5: sub R12, R2, #20
l6: b l9
l7: strCC R8,  [sp, #-32]
l8: andHIs R1,  R10,  R2
l9: mulPL R5, R4, R7
l10: adds r0, r0, r0
l11: add R6, R8, R8, RRX
l12: andLT R9,  R12,  R11
l13: bGT l21
l14: add R1, R0, #1
l15: sbcLEs R1, R14, #40
l16: adc R2, R8, R7, RRX
l17: mvnPLs R7, R1, RRX
l18: addPLs R5, R0, R3
l19: tstVC R1, R6, ASR #9
l20: b l22
l21: b l15
l22: addCS R5, R11, R10
l23: mulLSs R9, R10, R8
l24: adds r0, r0, r0
l25: addLEs R3, R3, R10
l26: addMI R4, R12, #20
l27: sbcNEs R8, R12, #32
l28: orrGT R10,  R8,  R3
l29: mvn R8, #12
l30: ldr R11,  [sp, #-32]
l31: cmpPLs R11, R5, ROR #7
l32: mla R12, R10, R0, R5
l33: adds r0, r0, r0
l34: mvn R0, R4, ASR #2
l35: bicLS R11, R3, R6
l36: and R5,  R14,  R7
l37: movPLs R0, R11
l38: cmpNEs R8, #32
l39: andVS R14,  R9,  R12
l40: mlaGTs R6, R2, R8, R8
l41: adds r0, r0, r0
l42: mvnPLs R10, R1, RRX
l43: eorCS R10,  R12,  R8
l44: teqMI R5, #40
l45: ldrLE R12,  [sp, #-32]
l46: eor R6,  R4,  R14
l47: bVC l57
l48: cmnEQs R10, R10, RRX
l49: orrVCs R3,  R7,  R6
l50: b l54
l51: add R1, R0, #190
l52: subMIs R9, R3, #40
l53: b l55
l54: b l52
l55: orrGE R4,  R5,  R0
l56: bicLEs R6, R2, R7, ROR #6
l57: cmnHIs R6, R8, ASR #25
l58: cmnCS R4, R9, RRX
l59: movLT R7, #24
l60: eorHIs R1,  R2,  R12
l61: bicEQ R10, R0, R1
l62: bicLE R11, R1, R9, LSR R2
l63: addVS R14, R7, #12
l64: orrGT R4,  R6,  R9
l65: eorVC R7,  R7,  R3
l66: mvn R9, R10, LSR R6
l67: movPL R3, R3, LSL #7
l68: orrVC R10,  R0,  R7
l69: teqEQ R14, R12, LSR R3
l70: rsbNEs R1, R5, R11, ROR #19
l71: bNE l79
l72: ldr R6,  [sp, #-28]
l73: cmnGE R10, R12
l74: mvnNEs R14, R5
l75: rsbCS R1, R12, R2, ROR R4
l76: andPLs R7,  R5,  R9
l77: tstHIs R0, R14, RRX
l78: movPLs R3, #12
l79: sub R14, R8, R12, LSR #2
l80: cmnCS R0, R5
l81: ldrPL R7,  [sp, #-40]
l82: cmpLEs R14, R4, RRX
l83: bVC l85
l84: ldrMI R6,  [sp, #-24]
l85: bCC l90
l86: adcGT R3, R14, R4, LSR #8
l87: eorGTs R7,  R2,  R14
l88: mlaEQ R8, R9, R8, R2
l89: adds r0, r0, r0
l90: andVCs R11,  R14,  R14
l91: sbcGEs R8, R0, R11
l92: movCC R2, R3
l93: cmnHI R0, #12
l94: b l101
l95: bVS l103
l96: cmpCS R1, R1
l97: andHIs R11,  R9,  R6
l98: ldrGE R10,  [sp, #-40]
l99: ldr R4,  [sp, #-12]
l100: subLE R11, R7, R10, ROR #21
l101: bCC l106
l102: add R1, R0, #152
l103: subGTs R6, R4, R11, LSL #7
l104: add R7, R7, #20
l105: b l107
l106: b l103
l107: mvnGT R10, R11, RRX
l108: movGEs R11, R0, LSR #31
l109: eorGE R10,  R10,  R7
l110: movPL R3, #20
l111: bicPLs R11, R3, #12
l112: eorLTs R10,  R7,  R12
l113: bicLEs R14, R14, #20
l114: ldrLE R12,  [sp, #-8]
l115: bGE l123
l116: add R1, R0, #177
l117: teqGTs R8, #12
l118: cmp R10, R11
l119: cmnLE R14, R2
l120: tstEQs R12, #24
l121: cmn R7, R1, ROR #25
l122: b l124
l123: b l117
l124: tstNE R11, R14, ASR R6
l125: adcPL R5, R3, #20
l126: rsbCSs R3, R11, #24
l127: adcNEs R9, R10, R6
l128: addMI R1, R12, #20
l129: andNEs R3,  R7,  R11
l130: tstPL R6, R14, ROR #19
l131: orrLEs R4,  R6,  R9
l132: cmp R0, #12
l133: adcHI R5, R9, #12
l134: addHIs R0, R8, R11, LSR R5
l135: subCCs R12, R10, R11, LSL R11
l136: eor R11,  R11,  R11
l137: movCCs R12, R2, RRX
l138: cmpEQs R8, #20
l139: teqCSs R8, R14, LSL R1
l140: bVS l148
l141: eorPLs R1,  R8,  R3
l142: eorMI R12,  R0,  R8
l143: rsbMI R3, R11, R14, LSL R3
l144: movEQ R1, R0, RRX
l145: bLE l150
l146: teqNEs R11, R3
l147: adcLTs R0, R2, R5
l148: mvn R1, R8, RRX
l149: bPL l154
l150: add R1, R0, #141
l151: cmnPLs R0, R2, ROR R9
l152: mvn R1, #12
l153: b l155
l154: b l151
l155: cmp R0, #24
l156: addGTs R12, R7, R14, RRX
l157: teqHI R5, #20
l158: adc R14, R11, R0, ROR #7
l159: addVCs R3, R8, #12
l160: cmpCS R8, R8, RRX
l161: cmpPL R14, #12
l162: mvnHI R2, R3
l163: andPLs R7,  R2,  R5
l164: b l169
l165: add R1, R0, #107
l166: sub R6, R7, #24
l167: subLS R14, R4, R10
l168: b l170
l169: b l166
l170: mvnLT R12, R12
l171: orrGTs R9,  R2,  R11
l172: bLT l180
l173: add R1, R0, #40
l174: teqCC R1, R10
l175: sbcCCs R14, R1, #12
l176: rsbGEs R2, R11, #32
l177: mvnHIs R12, R6, LSL #7
l178: sbcGEs R4, R14, #20
l179: b l181
l180: b l174
l181: movHIs R14, R4
l182: sbcLSs R10, R14, #20
l183: mvnGE R5, R9
l184: subLS R8, R2, #24
l185: strNE R6,  [sp, #-8]
l186: bEQ l192
l187: teqMIs R0, R1, LSR R5
l188: movGEs R5, R11, LSR #13
l189: mla R9, R8, R11, R12
l190: adds r0, r0, r0
l191: cmnLT R5, R9, RRX
l192: orrVCs R10,  R3,  R8
l193: movMI R2, R8, ASR R7
l194: mvnVSs R12, R6, LSL R4
l195: orrGE R5,  R2,  R11
l196: teqMI R0, #24
l197: mulVC R11, R12, R6
l198: adds r0, r0, r0
l199: addEQs R7, R5, R9
l200: mvnCCs R10, R12
l201: movGE R3, #24
l202: b l205
l203: eorCSs R5,  R5,  R14
l204: b l213
l205: add R1, R0, #14
l206: tstLT R0, R7
l207: mvnLEs R4, R4, LSR #7
l208: movMIs R10, #12
l209: mvnVCs R2, R1
l210: cmnVS R2, R0
l211: cmnLSs R1, #20
l212: b l214
l213: b l206
l214: movHIs R2, R4
l215: mov R10, #20
l216: cmnCSs R10, R0, ROR R11
l217: bVC l220
l218: bEQ l227
l219: add R1, R0, #112
l220: mvnVSs R3, R5, ROR R4
l221: cmnNE R8, R1
l222: addCSs R10, R0, #12
l223: sbcLS R14, R7, R8, RRX
l224: bicMI R8, R2, R1, LSL R10
l225: teqLTs R8, R3
l226: b l228
l227: b l220
l228: subLEs R8, R12, R3, RRX
l229: mvn R14, #24
l230: cmpCC R14, #36
l231: adcEQs R10, R9, R6
l232: cmpGT R3, R7, LSR R14
l233: mlaPLs R12, R7, R0, R0
l234: adds r0, r0, r0
l235: bLT l239
l236: cmpPL R2, R4, ROR R6
l237: rsbPLs R14, R9, R14, ROR #19
l238: ldrEQ R8,  [sp, #-4]
l239: bLS l246
l240: cmpNEs R9, R12, LSL #2
l241: cmpMIs R4, R9, RRX
l242: adc R14, R1, R0, RRX
l243: bNE l251
l244: add R1, R0, #203
l245: tstCSs R1, #24
l246: tstCSs R10, R0
l247: teqCC R6, R0
l248: addLE R12, R5, #36
l249: tstHIs R3, R8, ROR #8
l250: b l252
l251: b l245
l252: add R11, R2, #24
l253: teqCSs R0, R6
l254: bNE l263
l255: add R1, R0, #165
l256: tst R4, R2
l257: tstCSs R4, #24
l258: cmpMI R2, R4, ROR #25
l259: tstEQs R11, R5
l260: cmnLS R1, #20
l261: cmpLEs R5, R3
l262: b l264
l263: b l256
l264: orrMI R4,  R7,  R9
l265: adcMI R9, R3, R12, RRX
l266: tstCCs R11, R3, LSL #2
l267: bicCCs R6, R11, R9, LSL #8
l268: cmnNEs R5, R1, ROR R12
l269: orrCC R3,  R10,  R9
l270: addLSs R4, R0, #24
l271: subCS R10, R3, #12
l272: eorMI R0,  R12,  R9
l273: mlaLS R1, R0, R14, R14
l274: adds r0, r0, r0
l275: b l278
l276: cmpCCs R9, R10, ROR R8
l277: mla R3, R6, R9, R3
l278: adds r0, r0, r0
l279: bMI l283
l280: andVC R10,  R8,  R12
l281: andLT R6,  R14,  R11
l282: cmpCC R12, R9
l283: bicVCs R7, R10, R6
l284: rsbCS R0, R2, #8
l285: addCC R7, R6, R4
l286: subPLs R7, R0, R9, ASR #25
l287: teqLSs R9, R8, RRX
l288: sub R1, R0, #24
l289: eor R1,  R1,  R6
l290: subGT R3, R1, #12
l291: subVS R3, R4, R4, ASR #2
l292: rsbLEs R11, R2, R14, LSL #7
l293: tstEQs R9, R1
l294: mulNE R3, R11, R6
l295: adds r0, r0, r0
l296: bLE l297
l297: sbcCC R9, R0, R7
l298: movPL R12, #36
l299: movGTs R11, R1
l300: ldrVS R12,  [sp, #-24]
l301: movLEs R12, R2, LSR R7
l302: ldr R12,  [sp, #-36]
l303: mov R4, R10
l304: subHIs R0, R6, R2, LSR #2
l305: cmnMI R0, R11, LSR #2
l306: orrLT R10,  R14,  R6
l307: mlaVC R4, R12, R5, R1
l308: adds r0, r0, r0
l309: bVC l311
l310: mulHI R5, R6, R6
l311: adds r0, r0, r0
l312: mvnLSs R8, R6, LSL R4
l313: add R14, R9, R6, ROR #7
l314: mvnNEs R12, #12
l315: teqGT R5, #12
l316: bicNE R1, R0, #20
l317: add R11, R14, R10
l318: movGT R0, #20
l319: eorLS R7,  R14,  R3
l320: adcHIs R11, R8, R2, LSL #2
l321: orrLS R9,  R12,  R11
l322: orrVCs R5,  R2,  R8
l323: andCSs R3,  R1,  R8
l324: rsbVCs R1, R6, R12, ASR #31
l325: cmnVC R7, R12, ASR #8
l326: bicLT R2, R6, #24
l327: orrGE R4,  R0,  R9
l328: rsb R3, R3, R7, LSL R9
l329: andEQs R9,  R11,  R11
l330: rsbCC R2, R6, R3, LSL R0
l331: bicCCs R1, R8, R8, LSL #8
l332: bVS l336
l333: add R1, R0, #220
l334: addPLs R11, R7, #12
l335: b l337
l336: b l334
l337: mlaLT R3, R12, R5, R9
l338: adds r0, r0, r0
l339: eor R4,  R3,  R4
l340: eorMI R1,  R11,  R8
l341: rsbGE R14, R7, R8, ASR R8
l342: cmn R14, #32
l343: sbcLS R9, R7, R2
l344: ldr R8,  [sp, #-4]
l345: cmpCC R3, R1
l346: cmpLEs R1, R10, ROR R0
l347: orrVCs R0,  R8,  R5
l348: and R0,  R8,  R10
l349: movVCs R12, R4, ROR #29
l350: bGE l357
l351: bVC l359
l352: bGT l359
l353: adc R6, R2, R5
l354: bicCC R4, R1, R12, ASR #2
l355: addPLs R0, R4, R7
l356: strPL R2,  [sp, #-40]
l357: andVCs R6,  R4,  R12
l358: mvnCCs R6, R9
l359: eorLS R0,  R14,  R11
l360: ldrCC R3,  [sp, #-16]
l361: bCS l365
l362: add R1, R0, #25
l363: movMI R2, R8, ASR #26
l364: b l366
l365: b l363
l366: andVC R8,  R9,  R1
l367: bCS l372
l368: add R1, R0, #26
l369: adc R3, R8, R4, ASR R1
l370: cmpPL R11, R7
l371: b l373
l372: b l369
l373: tstEQ R2, R6
l374: cmnMI R7, R14
l375: sbcMIs R5, R3, R8, RRX
l376: mulLT R7, R8, R6
l377: adds r0, r0, r0
l378: bicCSs R3, R8, R3
l379: rsbCS R7, R11, #12
l380: subGTs R10, R5, R9, LSR #7
l381: andLE R4,  R12,  R10
l382: mla R14, R11, R11, R9
l383: adds r0, r0, r0
l384: movCC R12, R4, RRX
l385: sbcVSs R10, R11, R8, LSR #29
l386: sbcVS R5, R4, #24
l387: bLT l390
l388: movNE R3, R11, RRX
l389: cmpVSs R1, R4, LSL #9
l390: adcEQ R0, R3, R6, ROR #7
l391: ldr R2,  [sp, #-16]
l392: bGE l397
l393: add R1, R0, #190
l394: bicVS R4, R7, #12
l395: subVSs R2, R0, #24
l396: b l398
l397: b l394
l398: mlaNEs R1, R9, R4, R9
l399: adds r0, r0, r0
l400: orrGTs R9,  R2,  R8
l401: andPLs R3,  R11,  R8
l402: mvnHI R11, #12
l403: eor R2,  R8,  R7
l404: ldr R14,  [sp, #-20]
l405: mulEQs R1, R1, R11
l406: adds r0, r0, r0
l407: sbcMI R11, R2, R1
l408: mvnGEs R6, R14
l409: rsbCS R10, R14, R8, ASR R14
l410: addCCs R6, R4, R2, LSL R10
l411: andEQs R11,  R5,  R9
l412: subGTs R5, R1, #12
l413: cmpNE R12, #12
l414: cmp R7, R0, ROR #2
l415: bicPLs R1, R11, R8, LSR #13
l416: adcMIs R10, R14, R2, ASR #6
l417: mvnCS R11, R1, RRX
l418: addLS R5, R4, #12
l419: mulNEs R14, R9, R2
l420: adds r0, r0, r0
l421: eorNEs R5,  R9,  R6
l422: teqCC R2, R9
l423: mvnCC R1, R7
l424: addCC R3, R11, #12
l425: sbc R1, R8, R9, ASR R3
l426: addCSs R5, R9, R4
l427: tstVC R2, #20
l428: tstCSs R14, #12
l429: cmp R9, R0, LSL #1
l430: eorCSs R1,  R8,  R2
l431: bHI l440
l432: add R1, R0, #82
l433: addLE R0, R10, R9, RRX
l434: subLS R4, R5, #12
l435: add R5, R10, R1, ROR R4
l436: cmpCC R6, R7, LSL #13
l437: mvnNEs R2, R8, ASR #6
l438: adcLEs R14, R8, R5, ROR R12
l439: b l441
l440: b l433
l441: subLEs R14, R5, R14, ASR #19
l442: rsbVS R6, R8, R5, ROR R10
l443: cmpCCs R1, #24
l444: bic R0, R9, R8
l445: mlaGTs R3, R6, R14, R10
l446: adds r0, r0, r0
l447: orrGE R11,  R0,  R1
l448: subCCs R5, R1, R4, LSR #7
l449: eorLE R11,  R14,  R0
l450: orrCC R9,  R0,  R1
l451: bNE l458
l452: adcHIs R8, R11, R8, LSL #2
l453: teqGE R6, R0, LSR R14
l454: strHI R9,  [sp, #-24]
l455: bGE l463
l456: sbcPL R7, R0, R10, LSR R8
l457: tstEQs R8, R2
l458: addLEs R12, R14, R6
l459: bEQ l465
l460: strLT R0,  [sp, #-8]
l461: adcHI R5, R14, R12, ROR R3
l462: cmpGT R3, #24
l463: tstLE R3, R3, ASR #2
l464: orrVS R4,  R2,  R4
l465: mvnVSs R5, R2, RRX
l466: subLE R8, R9, #20
l467: eorLE R3,  R5,  R14
l468: subPL R14, R14, R10
l469: cmnLE R8, #12
l470: bicLEs R12, R9, R10
l471: bGE l478
l472: add R1, R0, #124
l473: addNE R0, R4, #40
l474: mvnLS R9, #32
l475: subGT R11, R7, R9, LSR #13
l476: teqVCs R14, R9, ASR R6
l477: b l479
l478: b l473
l479: bicGT R0, R11, R12, ROR #8
l480: bMI l488
l481: add R1, R0, #226
l482: adcVSs R12, R2, R6
l483: sbcLE R7, R10, R11
l484: tstGE R7, R5, LSL #7
l485: bicCCs R14, R4, R7, LSR #9
l486: mvnVCs R6, R10, LSR #21
l487: b l489
l488: b l482
l489: bPL l496
l490: subMIs R7, R8, #24
l491: mulVSs R2, R8, R7
l492: adds r0, r0, r0
l493: b l496
l494: adc R2, R0, #12
l495: subEQs R2, R2, #12
l496: mlaNE R3, R4, R5, R11
l497: adds r0, r0, r0
l498: movLSs R5, R1
l499: ldrPL R4,  [sp, #-8]
l500: rsbCCs R6, R4, R2
l501: eorVCs R9,  R7,  R3
l502: bVC l508
l503: teqMIs R12, R1
l504: cmpNEs R7, R7, ASR R9
l505: mulVC R9, R2, R8
l506: adds r0, r0, r0
l507: orrLS R0,  R4,  R8
l508: teqHIs R12, #20
l509: sbcNEs R5, R11, R6, ROR R10
l510: mlaNEs R9, R4, R10, R5
l511: adds r0, r0, r0
l512: eor R4,  R6,  R5
l513: tstLT R9, R11
l514: cmnNEs R1, R4, RRX
l515: bEQ l521
l516: add R1, R0, #158
l517: cmnLSs R7, R11, RRX
l518: adcLS R4, R0, R11, LSR R3
l519: cmpCSs R14, R8
l520: b l522
l521: b l517
l522: movLS R9, #20
l523: eorEQs R10,  R9,  R14
l524: eorPLs R9,  R7,  R7
l525: mvnLEs R1, R3, ROR #1
l526: andNEs R3,  R6,  R6
l527: mvnGE R10, R14, ROR #6
l528: eorVC R8,  R11,  R11
l529: cmp R4, R8, LSL R5
l530: andLS R1,  R0,  R3
l531: mulGTs R7, R5, R12
l532: adds r0, r0, r0
l533: ldrPL R2,  [sp, #-40]
l534: movGTs R0, R12
l535: mulHIs R9, R3, R14
l536: adds r0, r0, r0
l537: cmpLSs R5, R6, ASR #2
l538: ldrLE R5,  [sp, #-12]
l539: adc R4, R3, R2, LSR #31
l540: andHIs R3,  R10,  R1
l541: mulCS R7, R7, R6
l542: adds r0, r0, r0
l543: addHI R0, R3, R4, LSR #29
l544: sbcLTs R3, R0, R0, LSR R1
l545: eorGEs R10,  R14,  R10
l546: rsb R4, R12, R4, LSL #7
l547: mlaMI R2, R10, R8, R10
l548: adds r0, r0, r0
l549: rsbEQ R1, R0, #12
l550: mvnNEs R0, R8, LSL R2
l551: movHIs R9, R5
l552: cmp R10, R11, ASR R11
l553: b l559
l554: add R1, R0, #185
l555: movMI R8, R8
l556: bicHIs R8, R8, #24
l557: cmnGEs R4, R2, ASR #25
l558: b l560
l559: b l555
l560: adcCSs R8, R12, R1
l561: adcMI R2, R12, R2, ROR #1
l562: andHI R2,  R10,  R12
l563: bMI l567
l564: add R1, R0, #37
l565: teqGTs R14, R7, LSR R3
l566: b l568
l567: b l565
l568: cmpGE R5, #20
l569: andHI R12,  R2,  R1
l570: adcMI R9, R7, #20
l571: orrGE R6,  R12,  R0
l572: mlaGTs R10, R3, R3, R3
l573: adds r0, r0, r0
l574: ldrCS R14,  [sp, #-24]
l575: subNEs R8, R1, #20
l576: orr R5,  R5,  R8
l577: tstGE R7, R2, RRX
l578: subVC R12, R3, R0, LSL #9
l579: cmpPL R14, R6, LSL R2
l580: bCS l586
l581: mvnLTs R0, #36
l582: cmpCC R0, R7, RRX
l583: b l586
l584: bGT l592
l585: add R1, R0, #236
l586: tstVC R5, R0, ROR R0
l587: cmnVC R6, #20
l588: mvnLEs R10, R7
l589: tstCCs R6, R7, LSL #31
l590: mvnGEs R9, #24
l591: b l593
l592: b l586
l593: bGT l598
l594: add R1, R0, #101
l595: rsbHIs R2, R9, R7
l596: mvnPLs R2, R0
l597: b l599
l598: b l595
l599: mlaCS R14, R2, R2, R12
l600: adds r0, r0, r0
l601: mvnHI R12, R2, LSR #6
l602: orrLSs R12,  R6,  R0
l603: mvn R2, R0
l604: teqHI R11, R6, LSR R4
l605: bVS l615
l606: strEQ R11,  [sp, #-40]
l607: tst R1, R8, ASR #9
l608: add R0, R9, R4, RRX
l609: ldrLE R0,  [sp, #-16]
l610: b l613
l611: rsbCC R12, R7, R7, LSL R11
l612: subPLs R10, R9, R4
l613: mvnVCs R4, #24
l614: teq R0, #12
l615: bicMI R7, R9, #12
l616: cmnGE R14, R3
l617: teqHIs R0, #12
l618: sub R1, R1, R14, ROR #9
l619: adc R12, R11, R5, LSR R14
l620: rsbEQs R2, R14, #20
l621: eorLE R7,  R8,  R2
l622: adcHI R8, R5, R6, LSL #7
l623: bicHIs R0, R5, #12
l624: orrEQs R4,  R9,  R6
l625: cmpNE R3, #12
l626: movPLs R3, R9, LSR R14
l627: strEQ R7,  [sp, #-40]
l628: teqLE R12, R10, LSR #9
l629: adcEQs R11, R7, R7, ROR R8
l630: addGEs R3, R12, #20
l631: andPL R8,  R1,  R9
l632: bVC l636
l633: add R1, R0, #145
l634: subEQs R10, R8, #20
l635: b l637
l636: b l634
l637: and R12,  R14,  R0
l638: sbc R3, R8, R7, LSL R4
l639: teqEQs R9, #24
l640: rsbNEs R3, R11, R12
l641: movLTs R14, R12, ASR #8
l642: andGTs R12,  R9,  R7
l643: andLE R4,  R5,  R11
l644: mvnNEs R10, R5, LSL #7
l645: ldrLS R11,  [sp, #-32]
l646: mulVSs R3, R7, R9
l647: adds r0, r0, r0
l648: cmpMIs R2, R1
l649: rsbPLs R8, R1, R6
l650: bGT l657
l651: add R1, R0, #50
l652: cmpHIs R3, #20
l653: rsbLE R7, R6, R5, RRX
l654: teqGEs R8, R11, LSR #1
l655: adcCC R8, R14, R4, RRX
l656: b l658
l657: b l652
l658: adcLTs R11, R1, R2, ASR #8
l659: adcLT R11, R1, #32
l660: ldr R2,  [sp, #-8]
l661: cmpEQs R3, #12
l662: tstLSs R9, R5, ASR R5
l663: ldrLE R1,  [sp, #-12]
l664: bicMI R2, R5, R5, LSL R8
l665: mulCCs R3, R2, R6
l666: adds r0, r0, r0
l667: sbcGEs R3, R1, R8
l668: strHI R11,  [sp, #-4]
l669: subGT R14, R3, #20
l670: sbcEQs R12, R7, R6, RRX
l671: movVC R14, R4, RRX
l672: eorGT R12,  R11,  R12
l673: addEQs R1, R4, R3
l674: tstMIs R1, R4, RRX
l675: rsbLSs R0, R14, R11
l676: orrLTs R2,  R6,  R1
l677: subVSs R10, R9, R0
l678: tstVSs R0, R4
l679: bVS l686
l680: mlaGEs R7, R5, R14, R0
l681: adds r0, r0, r0
l682: b l687
l683: add R1, R0, #140
l684: mvnCC R6, R9, LSL #19
l685: teqCSs R10, #20
l686: b l688
l687: b l684
l688: andGE R3,  R10,  R9
l689: cmnCS R11, R8, RRX
l690: bicLT R7, R0, #12
l691: bEQ l692
l692: movCS R12, R11, RRX
l693: sbcGT R5, R6, #20
l694: sbc R9, R9, R10, RRX
l695: eor R9,  R14,  R11
l696: bicPLs R0, R4, #24
l697: andLS R6,  R11,  R8
l698: eorEQs R12,  R9,  R1
l699: adcHIs R5, R4, R0, RRX
l700: tstCC R9, R0
l701: andCCs R1,  R12,  R10
l702: mvnVCs R7, R9, RRX
l703: mvnLTs R8, R4, LSL #26
l704: eorCC R8,  R12,  R11
l705: b l712
l706: add R1, R0, #6
l707: movLE R9, R12, ASR R12
l708: rsb R3, R12, R9
l709: teqGT R14, R3
l710: rsbLTs R7, R6, #24
l711: b l713
l712: b l707
l713: subPLs R10, R2, #12
l714: addLS R1, R2, #12
l715: bicGEs R8, R8, R7, RRX
l716: mvnEQs R9, R0, LSL R10
l717: strCC R9,  [sp, #-12]
l718: subCSs R10, R5, R12, LSR R2
l719: bMI l722
l720: bLS l725
l721: add R1, R0, #13
l722: cmnVCs R5, R7, LSR #21
l723: rsbHIs R14, R2, #24
l724: b l726
l725: b l722
l726: addCSs R5, R2, R14, ASR #7
l727: mvnCS R3, R7
l728: adcHI R3, R5, R6, ROR R10
l729: cmnCC R11, #20
l730: subPLs R0, R12, R2, LSL #2
l731: andGT R4,  R7,  R1
l732: ldrPL R3,  [sp, #-28]
l733: orrVCs R9,  R5,  R1
l734: adc R0, R4, R0, RRX
l735: mvnMI R4, R3
l736: adcHIs R2, R7, R9, RRX
l737: cmnVC R3, R1, ASR R6
l738: teqCCs R8, R4, RRX
l739: cmn R1, #24
l740: cmpVSs R2, #12
l741: eor R7,  R4,  R6
l742: subVC R8, R7, R9
l743: and R2,  R6,  R7
l744: tst R10, R5
l745: sbcCC R2, R8, #20
l746: mvnCCs R5, #20
l747: mvnPL R5, R14, RRX
l748: rsbCSs R12, R1, #20
l749: cmnHI R0, #12
l750: rsbNEs R5, R10, #24
l751: bicCSs R6, R1, R0
l752: b l755
l753: rsbMI R12, R14, R5, RRX
l754: cmpLS R2, #20
l755: movLSs R0, R2, RRX
l756: orrHIs R12,  R11,  R3
l757: bEQ l761
l758: add R1, R0, #11
l759: mvnVSs R10, R11, ASR #31
l760: b l762
l761: b l759
l762: teqEQs R6, R6, ROR R9
l763: mvn R5, R3
l764: orrGT R0,  R14,  R2
l765: bicPLs R9, R6, R5
l766: sbc R9, R8, #20
l767: bicGEs R4, R0, R6, ASR #8
l768: mla R8, R2, R6, R4
l769: adds r0, r0, r0
l770: b l775
l771: add R1, R0, #24
l772: tstLS R5, R10, ROR #8
l773: mov R4, R9, LSL #31
l774: b l776
l775: b l772
l776: strGE R10,  [sp, #-12]
l777: mvnMIs R0, R4, RRX
l778: eorLTs R10,  R12,  R7
l779: b l783
l780: add R1, R0, #221
l781: rsbMI R12, R2, R11, RRX
l782: b l784
l783: b l781
l784: sbcGEs R11, R0, R6
l785: orrLE R6,  R2,  R7
l786: andVSs R12,  R9,  R10
l787: andLS R8,  R3,  R10
l788: mov R7, R1, LSL R12
l789: subGT R1, R0, #20
l790: teqGEs R8, #24
l791: eorLE R0,  R11,  R4
l792: andLT R12,  R11,  R6
l793: orrVCs R2,  R10,  R6
l794: teq R0, R14, ASR #31
l795: orrVSs R6,  R12,  R6
l796: ldrMI R1,  [sp, #-16]
l797: mulPLs R14, R2, R14
l798: adds r0, r0, r0
l799: adcPLs R10, R1, R2, LSL #7
l800: cmpMIs R14, R0
l801: mla R5, R2, R0, R10
l802: adds r0, r0, r0
l803: orrPLs R7,  R10,  R8
l804: teqLT R11, #24
l805: ldrNE R6,  [sp, #-28]
l806: b l809
l807: strGE R8,  [sp, #-20]
l808: rsbVC R6, R3, R1, ROR #7
l809: cmnGT R11, R4, ROR R3
l810: add R1, R0, #12
l811: bPL l817
l812: add R1, R0, #219
l813: movLTs R7, R7, LSR R10
l814: cmpMI R14, R8, LSL R7
l815: rsbVC R9, R2, R12
l816: b l818
l817: b l813
l818: strMI R11,  [sp, #-32]
l819: bCC l825
l820: add R1, R0, #65
l821: subCC R6, R2, #12
l822: addGEs R9, R8, R3, ASR #7
l823: cmpNEs R2, R12
l824: b l826
l825: b l821
l826: tstNE R9, #24
l827: orrLS R3,  R4,  R2
l828: orrVS R10,  R1,  R6
l829: teqLEs R3, R7, RRX
l830: bMI l833
l831: mvnCS R4, R8, LSL #1
l832: sbcLE R11, R4, R0
l833: tst R4, R3, ROR R4
l834: eorLTs R10,  R1,  R0
l835: andHIs R8,  R14,  R12
l836: rsbLT R3, R8, R4, ASR R14
l837: adc R12, R12, #24
l838: bicGE R1, R2, #20
l839: mvnGT R11, R2, LSL #26
l840: orrLSs R11,  R0,  R2
l841: andEQs R6,  R12,  R5
l842: subMI R3, R7, R1
l843: teq R4, R2, LSL R12
l844: rsbNEs R12, R3, R7, LSL #31
l845: ldrHI R0,  [sp, #-8]
l846: bLS l854
l847: add R1, R0, #82
l848: sbc R7, R0, #24
l849: rsbGTs R14, R11, R14, ASR R14
l850: adc R9, R12, R14, LSR #9
l851: cmn R11, R8, LSR R4
l852: add R14, R7, R9, ROR R5
l853: b l855
l854: b l848
l855: rsb R0, R0, R6
l856: orr R4,  R1,  R0
l857: bLE l859
l858: ldr R14,  [sp, #-12]
l859: eorLSs R2,  R7,  R14
l860: rsbHIs R8, R0, R1
l861: subPL R4, R2, R2, ASR #25
l862: ldr R2,  [sp, #-20]
l863: orr R14,  R6,  R8
l864: andPLs R1,  R7,  R14
l865: strVC R11,  [sp, #-24]
l866: addLEs R14, R8, R4
l867: rsbCS R12, R7, R3, ROR #8
l868: sbc R2, R0, R12, LSL R10
l869: mov R8, #24
l870: movVC R9, #24
l871: sbcHIs R6, R5, R9, ASR #7
l872: andLS R5,  R4,  R8
l873: bVC l882
l874: add R1, R0, #109
l875: sbcMI R6, R11, R12
l876: rsbLT R12, R12, #12
l877: rsbLE R1, R12, R8
l878: addHI R8, R8, #20
l879: cmpPL R5, R6, ASR R2
l880: teqCSs R4, R0, ASR #2
l881: b l883
l882: b l875
l883: sub R8, R12, R5
l884: bCS l888
l885: movLSs R14, R8, LSL R3
l886: bGE l889
l887: mvnCCs R0, R5
l888: orrMIs R9,  R5,  R9
l889: bLS l898
l890: add R1, R0, #113
l891: teqVSs R7, #36
l892: rsb R9, R0, R12, LSL R9
l893: adcVC R11, R1, R3, LSL R7
l894: bicCCs R10, R8, #24
l895: adcVS R9, R3, #36
l896: mov R9, R4, LSL R8
l897: b l899
l898: b l891
l899: bHI l906
l900: add R1, R0, #39
l901: tstGEs R5, R3, LSR R8
l902: teqVSs R3, R6, LSR R7
l903: rsbGE R10, R6, R3, LSL #21
l904: addCC R2, R0, #32
l905: b l907
l906: b l901
l907: mvnLSs R2, R0, RRX
l908: adcLTs R0, R14, R5, LSL #13
l909: mlaGT R4, R10, R14, R10
l910: adds r0, r0, r0
l911: mvnVS R8, R4, ROR R7
l912: cmpEQs R7, R14, LSR R12
l913: b l922
l914: add R1, R0, #206
l915: adc R1, R0, R12, LSR #8
l916: cmnLT R11, #20
l917: addHI R9, R1, R5, ROR #21
l918: subCCs R9, R12, R9
l919: sbcVSs R14, R3, R0
l920: bicLSs R0, R3, R14, ROR #26
l921: b l923
l922: b l915
l923: mvnMI R6, #24
l924: rsbLSs R5, R1, R3, LSL R6
l925: mvnCCs R6, R9, ROR #9
l926: sbcNEs R10, R1, R1
l927: rsbCSs R0, R14, R9, ASR #19
l928: cmnGE R12, R9, LSL R5
l929: bVC l936
l930: add R1, R0, #247
l931: subLE R10, R10, R6, LSR #7
l932: subVS R11, R1, R12, RRX
l933: cmnMI R5, R4, ASR #1
l934: adcLE R11, R6, R10, ROR #29
l935: b l937
l936: b l931
l937: cmnGE R12, R0, ROR R8
l938: rsbGTs R0, R8, #24
l939: tstVSs R2, R7, ASR R5
l940: cmpCC R9, #24
l941: eorLE R14,  R8,  R12
l942: bNE l950
l943: eorVC R11,  R7,  R3
l944: tstGT R10, R10, ROR #9
l945: bNE l954
l946: add R1, R0, #55
l947: subVC R5, R5, R5, RRX
l948: addLEs R0, R11, R14, RRX
l949: subVCs R10, R8, R3, LSL #26
l950: tstLT R6, R14, LSL R3
l951: movHIs R2, R1
l952: adc R7, R10, #24
l953: b l955
l954: b l947
l955: sub R4, R11, R7, RRX
l956: mvnHI R2, R0, LSR R3
l957: andEQs R12,  R6,  R5
l958: mulHI R8, R6, R8
l959: adds r0, r0, r0
l960: rsbVC R10, R14, #24
l961: adcLSs R6, R7, R9, RRX
l962: andGTs R2,  R12,  R0
l963: addMI R12, R4, R2, RRX
l964: addNE R4, R8, R9
l965: sbcCCs R11, R12, R7, ROR #13
l966: orrCS R0,  R12,  R9
l967: bVC l972
l968: add R1, R0, #139
l969: mov R4, R4, LSL R9
l970: rsbLEs R2, R3, R12
l971: b l973
l972: b l969
l973: tstLS R1, R14, LSR R6
l974: andGT R0,  R14,  R2
l975: mla R2, R7, R4, R7
l976: adds r0, r0, r0
l977: rsb R7, R10, #20
l978: orrLS R12,  R4,  R6
l979: and R5,  R9,  R10
l980: tstLTs R7, #24
l981: strLS R1,  [sp, #-24]
l982: bHI l987
l983: add R1, R0, #99
l984: adcGT R12, R11, R6
l985: addLSs R8, R8, R10, ROR #8
l986: b l988
l987: b l984
l988: b l993
l989: bicLT R6, R12, R5, RRX
l990: str R7,  [sp, #-40]
l991: ldrGE R12,  [sp, #-4]
l992: cmpGE R0, #12
l993: addEQs R8, R7, R12
l994: movNEs R6, R3
l995: cmpGE R11, R10, LSL R9
l996: bicVS R0, R2, R8, ROR R11
l997: mvnNEs R3, R5, ASR #2
l998: eorVSs R7,  R14,  R7
l999: mulEQs R6, R4, R5
l1000: adds r0, r0, r0
end: b end

