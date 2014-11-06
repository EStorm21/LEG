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
val1: .word 139375285
next1: ldr R2, val2
b next2
val2: .word 1021001829
next2: ldr R3, val3
b next3
val3: .word 1432079966
next3: ldr R4, val4
b next4
val4: .word 3347280357
next4: ldr R5, val5
b next5
val5: .word 406858473
next5: ldr R6, val6
b next6
val6: .word 1023825821
next6: ldr R7, val7
b next7
val7: .word 2001385694
next7: ldr R8, val8
b next8
val8: .word 153861217
next8: ldr R9, val9
b next9
val9: .word 1336729792
next9: ldr R10, val10
b next10
val10: .word 164431783
next10: ldr R11, val11
b next11
val11: .word 3340126704
next11: ldr R12, val12
b next12
val12: .word 1750840112
next12: ldr R14, val14
b next14
val14: .word 113432640

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 1147078648
next15: str R1, [sp, #-0]
ldr R1, val16
b next16
val16: .word 2045211529
next16: str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 4001086794
next17: str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 1015691842
next18: str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 2124216232
next19: str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 3310418023
next20: str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 929449971
next21: str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 633789551
next22: str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 1951994846
next23: str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 2405706772
next24: str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 107834477
next25: str R1, [sp, #-40]

# MAIN PROGRAM

l1: addLTs R4, R6, R11
l2: andVC R4,  R5,  R12
l3: tstVS R4, #16
l4: bicNE R3, R6, R5, ASR #22
l5: teqLE R0, R7
l6: sbcGTs R7, R4, #28
l7: sbcEQ R9, R7, #28
l8: sbcCCs R8, R12, R1
l9: rsbMI R2, R8, #16
l10: cmn R10, R11
l11: sbcVC R2, R5, R12
l12: bicVS R5, R5, R8
l13: ldr R11,  [sp, #-40]
l14: cmp R12, R4, ROR R2
l15: cmpVC R2, R14, RRX
l16: subHI R14, R1, #36
l17: andCSs R9,  R1,  R3
l18: bLS l24
l19: add R1, R0, #89
l20: bicGE R11, R1, R4, RRX
l21: cmpMI R3, R9
l22: cmnLTs R0, R8
l23: b l25
l24: b l20
l25: eorEQ R10,  R8,  R11
l26: andLE R9,  R7,  R9
l27: bicVS R9, R2, R4, LSR R9
l28: umullVS R8, R9, R5, R1
l29: adds r0, r0, r0
l30: andEQs R2,  R12,  R10
l31: mvnGEs R11, #8
l32: eorPL R11,  R7,  R11
l33: mvnLEs R14, R2, RRX
l34: smullGE R4, R8, R9, R1
l35: adds r0, r0, r0
l36: mulMIs R8, R7, R5
l37: adds r0, r0, r0
l38: orrVS R2,  R3,  R3
l39: andCSs R7,  R10,  R3
l40: smullPL R1, R3, R12, R11
l41: adds r0, r0, r0
l42: mla R7, R1, R2, R2
l43: adds r0, r0, r0
l44: umullNE R12, R2, R11, R7
l45: adds r0, r0, r0
l46: cmp R3, R9, RRX
l47: mvnGTs R10, R8, ASR #22
l48: mlaGTs R10, R6, R7, R12
l49: adds r0, r0, r0
l50: ldrLT R0,  [sp, #-4]
l51: bGT l56
l52: add R1, R0, #251
l53: cmn R8, R2
l54: cmpVS R3, R4, ROR R5
l55: b l57
l56: b l53
l57: adcEQ R8, R11, R6, LSR R7
l58: b l59
l59: movLEs R3, R1
l60: smullGTs R7, R8, R9, R9
l61: adds r0, r0, r0
l62: movVS R1, R1
l63: teqNEs R4, R12, RRX
l64: movPL R5, R5
l65: and R4,  R10,  R6
l66: bVC l71
l67: add R8, R12, #28
l68: bCC l78
l69: b l71
l70: tstLTs R11, R9, ASR #21
l71: bicCCs R12, R6, R1
l72: andLE R8,  R14,  R3
l73: bPL l77
l74: add R1, R0, #100
l75: sub R7, R10, R12, LSL #19
l76: b l78
l77: b l75
l78: mvnMIs R0, R7, LSR R4
l79: cmnCCs R5, R4, ASR #18
l80: cmpGT R8, R1
l81: andEQ R5,  R6,  R0
l82: adcPLs R8, R5, #8
l83: smullHI R4, R0, R6, R12
l84: adds r0, r0, r0
l85: bEQ l89
l86: add R1, R0, #221
l87: subMIs R5, R7, #40
l88: b l90
l89: b l87
l90: bGE l98
l91: add R1, R0, #225
l92: cmnCS R5, R10, ASR #21
l93: tstVS R4, R3, ROR #24
l94: rsbCSs R2, R0, R7, LSR R3
l95: tstHI R9, R12, RRX
l96: cmpLS R5, R9, LSR R12
l97: b l99
l98: b l92
l99: mvnCSs R14, #20
l100: teqLEs R11, R3, ROR #8
l101: adcLTs R5, R11, R6, ASR #12
l102: strLS R12,  [sp, #-28]
l103: bVS l109
l104: add R1, R0, #104
l105: cmpVSs R4, #28
l106: addLT R11, R6, R2, RRX
l107: rsb R10, R9, R10
l108: b l110
l109: b l105
l110: rsbVS R12, R11, R0, ASR R12
l111: mvnEQs R4, R8
l112: sub R8, R6, R3
l113: andCS R9,  R9,  R1
l114: sbcLEs R4, R6, R2, ROR #8
l115: str R4,  [sp, #-16]
l116: andEQs R10,  R8,  R7
l117: andHI R6,  R2,  R7
l118: eorEQ R11,  R4,  R14
l119: andPL R7,  R2,  R5
l120: eor R7,  R9,  R10
l121: cmnLT R14, #16
l122: adcHIs R2, R11, R8, LSR #24
l123: mvnNEs R11, R9, ROR #17
l124: subMI R6, R1, R10, LSR #18
l125: bCC l131
l126: add R1, R0, #180
l127: adcPLs R0, R4, R5, ASR R9
l128: sbcEQs R12, R1, R9
l129: teq R4, R11, LSR #8
l130: b l132
l131: b l127
l132: eorHIs R10,  R10,  R0
l133: cmnVSs R11, R11, ROR #13
l134: and R1,  R5,  R10
l135: teqVC R14, R9, ASR R2
l136: bPL l141
l137: add R1, R0, #190
l138: bicGE R1, R0, R12
l139: movMIs R1, R11, ASR R9
l140: b l142
l141: b l138
l142: mlaMI R12, R11, R6, R10
l143: adds r0, r0, r0
l144: cmpGT R4, #8
l145: mulLSs R1, R8, R7
l146: adds r0, r0, r0
l147: bicCSs R8, R11, #4
l148: bNE l153
l149: add R1, R0, #6
l150: cmnLEs R2, R0, LSL #19
l151: cmpLT R12, R10, RRX
l152: b l154
l153: b l150
l154: add R12, R3, R14
l155: tstPLs R5, R9, LSR #13
l156: orrGE R3,  R9,  R7
l157: orrGT R3,  R11,  R1
l158: mov R7, R4, LSL #3
l159: addVCs R0, R4, #8
l160: bicGT R12, R4, #28
l161: sbcNE R8, R2, R12, LSL #25
l162: orrGT R10,  R14,  R3
l163: mvn R6, R11, ASR R4
l164: rsbVS R11, R6, R11, LSR #13
l165: tst R9, R11, LSR #24
l166: bGT l175
l167: add R1, R0, #250
l168: tstCS R5, R1, ASR #12
l169: bicVS R5, R12, R9
l170: mvnCCs R11, R6, LSL #21
l171: teqVCs R2, #8
l172: adcHIs R0, R8, R2, ROR R5
l173: adcVCs R2, R14, R7, RRX
l174: b l176
l175: b l168
l176: mlaVSs R4, R12, R2, R12
l177: adds r0, r0, r0
l178: addGEs R6, R8, R0, LSL #25
l179: tstPLs R1, R8
l180: cmnHIs R5, #28
l181: sbcLEs R11, R8, R10, LSR #22
l182: cmpCC R6, R10, RRX
l183: umullGTs R14, R1, R12, R14
l184: adds r0, r0, r0
l185: adc R14, R12, #28
l186: eorPL R4,  R10,  R0
l187: teqLSs R11, R2, LSL #19
l188: sbcMIs R8, R6, R9, LSL #17
l189: b l198
l190: add R1, R0, #1
l191: mvnEQ R3, R0
l192: rsbLEs R14, R2, R10
l193: rsbGEs R8, R10, R4
l194: subCSs R8, R7, R14, ROR #24
l195: mvnLT R14, R10
l196: adcPLs R8, R8, R2
l197: b l199
l198: b l191
l199: addLEs R11, R6, R14
l200: subVSs R6, R1, R7, LSL #12
l201: strGT R0,  [sp, #-28]
l202: orrGTs R8,  R9,  R14
l203: cmnLT R8, #28
l204: rsbLT R12, R4, R4
l205: mvnHI R5, #40
l206: eorNEs R3,  R8,  R4
l207: cmnMI R7, R7, RRX
l208: smullGTs R8, R7, R12, R2
l209: adds r0, r0, r0
l210: tstLT R9, #40
l211: smullVCs R4, R3, R5, R14
l212: adds r0, r0, r0
l213: cmpGEs R14, R14, ASR R8
l214: bic R2, R10, #40
l215: movVSs R1, R11, ROR #27
l216: orrLSs R11,  R14,  R9
l217: subPLs R3, R2, R11, LSR R6
l218: cmp R3, R11, RRX
l219: teqPLs R9, R12, ASR #19
l220: mvnMI R10, R9, LSR R0
l221: ldr R7,  [sp, #-8]
l222: tstCCs R1, #8
l223: adcHI R14, R7, R14, RRX
l224: sbcLEs R11, R6, R6, ASR #19
l225: movHIs R9, R5, LSR R9
l226: bLS l227
l227: movVSs R1, R1, ROR #19
l228: bVS l232
l229: eorHIs R3,  R8,  R0
l230: smull R4, R6, R1, R1
l231: adds r0, r0, r0
l232: b l239
l233: add R1, R0, #224
l234: tstEQ R11, R14, LSR R7
l235: tstNEs R1, R11, RRX
l236: sbc R8, R0, #4
l237: subLT R7, R0, R0
l238: b l240
l239: b l234
l240: bic R3, R3, R11, LSL #21
l241: mvn R5, R1, ROR R2
l242: mulEQ R0, R2, R10
l243: adds r0, r0, r0
l244: orrLSs R8,  R7,  R3
l245: bCS l249
l246: add R1, R0, #99
l247: rsbLS R11, R12, R2
l248: b l250
l249: b l247
l250: movMI R14, R2, LSR R14
l251: mvnVSs R6, R11
l252: teqGT R4, R3, RRX
l253: orr R3,  R14,  R8
l254: tst R1, #24
l255: mla R1, R10, R11, R2
l256: adds r0, r0, r0
l257: ldr R3,  [sp, #-24]
l258: smullLT R6, R0, R14, R6
l259: adds r0, r0, r0
l260: cmpNE R6, R8
l261: cmnMIs R1, R7, ROR #3
l262: rsbCSs R12, R5, R12, LSL R11
l263: mlaHI R1, R0, R14, R6
l264: adds r0, r0, r0
l265: addEQs R1, R14, R2, LSR #22
l266: mulMIs R5, R5, R11
l267: adds r0, r0, r0
l268: mvnPL R9, R0, LSR #12
l269: str R12,  [sp, #-40]
l270: eorMIs R8,  R9,  R4
l271: tst R3, R4, LSR R11
l272: movGEs R14, R5
l273: bEQ l280
l274: bic R1, R5, R10
l275: eorCS R4,  R3,  R2
l276: bLE l283
l277: rsbVCs R14, R9, R1, RRX
l278: bCC l282
l279: cmpLS R0, R0
l280: addLT R0, R12, R11, LSL R12
l281: teqGEs R7, #40
l282: mulPL R0, R8, R5
l283: adds r0, r0, r0
l284: cmp R9, R6, LSL #12
l285: tstLS R8, R11, LSR #22
l286: eor R11,  R11,  R10
l287: adcLSs R1, R6, #8
l288: sbcHI R0, R11, R6, ASR R6
l289: bicLEs R10, R1, R3, LSR R9
l290: bEQ l298
l291: bHI l292
l292: eorPLs R3,  R6,  R9
l293: addVSs R8, R1, #36
l294: teqPLs R5, R6, RRX
l295: cmp R3, R8
l296: andVSs R2,  R0,  R11
l297: tstGEs R0, #40
l298: eorEQ R7,  R10,  R12
l299: teqEQ R0, #40
l300: adc R5, R3, #28
l301: strNE R5,  [sp, #-4]
l302: orrVCs R8,  R0,  R3
l303: movVS R8, R14, LSL R5
l304: subGEs R12, R1, #4
l305: bicLTs R3, R0, #8
l306: and R11,  R10,  R4
l307: adcLTs R1, R5, R11
l308: str R11,  [sp, #-8]
l309: teqLS R8, #40
l310: subGEs R9, R5, R9, ASR R10
l311: orrPLs R5,  R12,  R11
l312: andPLs R2,  R7,  R12
l313: andLS R4,  R2,  R3
l314: tstNE R8, #8
l315: andVC R11,  R8,  R5
l316: ldrNE R6,  [sp, #-12]
l317: eor R8,  R9,  R12
l318: andPLs R4,  R4,  R8
l319: bNE l325
l320: add R1, R0, #175
l321: cmpMIs R8, R10, LSR #18
l322: rsbPLs R7, R5, R1
l323: adcGT R8, R3, R1, ROR R1
l324: b l326
l325: b l321
l326: tstCC R8, R8, ROR R14
l327: teqLSs R11, R7, LSL #30
l328: bicNE R4, R11, R9
l329: addPLs R0, R1, R10, ROR R11
l330: cmnMIs R0, R6, RRX
l331: movCCs R9, R0, LSR #12
l332: tstNEs R11, R12, ROR #27
l333: cmpLTs R11, R12, ROR R4
l334: cmp R11, R12, ASR #12
l335: rsbGTs R6, R9, R5
l336: strVS R12,  [sp, #-8]
l337: addLEs R8, R8, R1, LSR R6
l338: orrLSs R8,  R6,  R8
l339: ldrCS R3,  [sp, #-4]
l340: movCCs R14, #40
l341: bicEQs R6, R12, R3
l342: rsbGT R4, R11, R9
l343: bicVSs R5, R0, R5, LSL #17
l344: movLTs R4, #40
l345: strEQ R4,  [sp, #-16]
l346: sbc R8, R14, R0, LSL R12
l347: addNEs R2, R8, #16
l348: bLS l356
l349: add R1, R0, #172
l350: cmnPL R2, R3, LSR R0
l351: bicPLs R12, R12, #40
l352: addLEs R5, R0, R14, LSL R8
l353: subGE R11, R3, R14, ROR R11
l354: rsbLTs R2, R5, R3, ASR #30
l355: b l357
l356: b l350
l357: mvnLSs R0, R12
l358: mvnNEs R2, R2, LSR #12
l359: sbcGTs R4, R0, R12, LSL R4
l360: sbcCCs R9, R0, #8
l361: tstLE R4, #28
l362: orrCCs R10,  R12,  R3
l363: tstCS R1, R8, LSR R5
l364: bVC l373
l365: add R1, R0, #101
l366: addCC R2, R8, R10, ROR #27
l367: mvnPL R3, #40
l368: sbc R8, R11, R14, LSL R14
l369: cmnNEs R9, R6, LSL R2
l370: mvnVC R1, R11
l371: cmnVS R7, #40
l372: b l374
l373: b l366
l374: b l384
l375: teqNEs R11, #4
l376: orr R14,  R6,  R4
l377: eorEQ R5,  R0,  R4
l378: tst R2, R1, LSL R9
l379: andPLs R12,  R1,  R10
l380: adc R14, R10, R6, LSR #25
l381: teqLSs R9, R7, ASR #25
l382: andCCs R6,  R1,  R8
l383: teqGT R4, R3
l384: andNEs R10,  R0,  R4
l385: sbcHIs R0, R0, #28
l386: rsbLSs R11, R5, R3, LSL R4
l387: tstCS R6, R4, RRX
l388: addGTs R5, R7, R7
l389: adcEQs R14, R11, #4
l390: movGE R7, R14, LSR #21
l391: umullVSs R5, R3, R2, R11
l392: adds r0, r0, r0
l393: orrEQs R9,  R5,  R6
l394: sbcGT R3, R3, R4
l395: ldr R11,  [sp, #-12]
l396: bicCS R10, R2, R7, RRX
l397: cmnCS R6, R5, RRX
l398: bVS l402
l399: bLE l401
l400: str R4,  [sp, #-24]
l401: orrVC R5,  R8,  R1
l402: bVS l410
l403: addHI R3, R3, R1
l404: bicCS R6, R4, R1
l405: sbcEQ R7, R2, R1
l406: subLTs R6, R3, R8, ASR #8
l407: bVC l417
l408: movEQ R2, #36
l409: cmpVCs R0, R0, RRX
l410: andGTs R5,  R2,  R11
l411: umullNEs R9, R8, R14, R2
l412: adds r0, r0, r0
l413: orrEQ R6,  R9,  R11
l414: smullHIs R1, R11, R8, R9
l415: adds r0, r0, r0
l416: teqHI R0, R14, ROR #8
l417: umullVC R2, R10, R7, R8
l418: adds r0, r0, r0
l419: sbcLSs R6, R8, #4
l420: tstGT R2, #16
l421: orrEQs R7,  R12,  R14
l422: strGT R12,  [sp, #-8]
l423: movVC R9, R8, ROR R5
l424: mov R11, #28
l425: bicVC R10, R6, R5
l426: bNE l433
l427: cmn R14, R4, RRX
l428: addCCs R2, R12, R10
l429: mvnLTs R4, R8, ROR #13
l430: cmnNEs R1, R11, LSL R12
l431: subLTs R3, R7, #28
l432: andGTs R10,  R4,  R7
l433: addLTs R5, R1, R12, LSL R2
l434: orrCCs R12,  R9,  R1
l435: cmnLTs R8, #8
l436: bCC l439
l437: add R10, R1, #20
l438: addGE R8, R7, R4, RRX
l439: movMI R8, #8
l440: smull R6, R1, R11, R5
l441: adds r0, r0, r0
l442: teq R12, R7, ROR R11
l443: mulVS R0, R10, R6
l444: adds r0, r0, r0
l445: mlaNEs R11, R14, R2, R3
l446: adds r0, r0, r0
l447: bCS l455
l448: add R1, R0, #216
l449: rsb R5, R5, #28
l450: cmpCC R4, R5
l451: mvn R9, R8
l452: adcCS R2, R4, R2, ROR R6
l453: adcGT R0, R10, R3, ROR #12
l454: b l456
l455: b l449
l456: sbcNE R4, R5, #8
l457: adcCSs R12, R3, R9, LSR R11
l458: bVS l468
l459: rsbMI R14, R6, R6, RRX
l460: movVCs R10, R10
l461: teqLS R2, R4, ROR R14
l462: rsbCSs R2, R10, R8
l463: teqPLs R4, R2, RRX
l464: subLTs R12, R4, R8, LSL R11
l465: andLT R6,  R14,  R8
l466: subGEs R14, R4, R4
l467: adcCCs R11, R8, R10
l468: tstPL R8, R3
l469: rsb R8, R10, #8
l470: teq R10, R0
l471: strLS R10,  [sp, #-32]
l472: eorPL R6,  R1,  R3
l473: cmn R12, R4
l474: tstGT R2, #40
l475: mvnHIs R9, #36
l476: cmpNE R11, #40
l477: andGE R4,  R1,  R14
l478: b l487
l479: bPL l483
l480: adc R12, R3, #40
l481: tstLEs R7, R8
l482: bic R7, R9, R8, RRX
l483: teqCC R4, R8, RRX
l484: subGT R12, R9, #4
l485: addMIs R4, R8, R9
l486: ldrCS R7,  [sp, #-8]
l487: adcLE R11, R1, R8, RRX
l488: sbcGT R0, R8, R1, RRX
l489: add R7, R0, R5, ROR #27
l490: mvnLTs R10, R3, LSL #19
l491: movNE R10, #40
l492: ldr R9,  [sp, #-16]
l493: andLT R5,  R10,  R12
l494: orrPLs R10,  R8,  R14
l495: ldrGT R8,  [sp, #-40]
l496: strPL R7,  [sp, #-32]
l497: subHI R10, R7, R4, RRX
l498: rsbHI R8, R4, #40
l499: orrVCs R9,  R5,  R2
l500: bLS l506
l501: add R1, R0, #50
l502: cmnGE R12, R1, LSR #12
l503: subLSs R0, R4, R6, LSR #8
l504: movVCs R10, R7
l505: b l507
l506: b l502
l507: sbcNEs R10, R9, R5, LSL R2
l508: strVC R2,  [sp, #-24]
l509: teqGT R14, #8
l510: movVCs R7, #8
l511: ldr R12,  [sp, #-20]
l512: and R4,  R1,  R9
l513: bicLSs R12, R3, R9, LSR #8
l514: tstLT R6, #36
l515: bHI l519
l516: add R1, R0, #247
l517: sbcMI R12, R2, #28
l518: b l520
l519: b l517
l520: bNE l527
l521: add R1, R0, #43
l522: cmpLSs R6, R11
l523: subLE R12, R4, #40
l524: sbcPLs R10, R4, R2, ASR #12
l525: cmpNE R9, R1, LSR #19
l526: b l528
l527: b l522
l528: teq R8, R8, LSR R6
l529: cmnLTs R7, #40
l530: adcLTs R0, R10, R8, ROR #25
l531: teqMIs R1, #40
l532: addGTs R11, R14, R12, LSR R11
l533: mvnCS R3, R1, RRX
l534: b l539
l535: add R1, R0, #2
l536: sbc R14, R7, R12, ASR #17
l537: teqPLs R4, #28
l538: b l540
l539: b l536
l540: movLSs R1, R10, LSR #22
l541: orrCCs R3,  R7,  R1
l542: cmpLTs R10, R5, ROR #18
l543: cmpMI R11, R8, ROR #27
l544: eorCCs R2,  R2,  R7
l545: smullNEs R10, R5, R9, R0
l546: adds r0, r0, r0
l547: rsbVC R10, R6, #36
l548: subLT R6, R10, #8
l549: bVC l556
l550: subEQs R6, R12, R8
l551: mov R6, R3, LSR #24
l552: subCSs R14, R14, R11
l553: mvnVS R1, R10
l554: mulEQs R3, R0, R8
l555: adds r0, r0, r0
l556: bNE l560
l557: add R1, R0, #252
l558: mov R5, R10
l559: b l561
l560: b l558
l561: bicMIs R12, R9, R1, ASR R0
l562: bicGEs R11, R3, R2, ASR #21
l563: eorCCs R6,  R1,  R9
l564: tstVC R10, R7
l565: mvnMIs R12, R8, ROR R0
l566: tstPL R8, R12
l567: cmnNEs R9, R3
l568: bCS l574
l569: rsbEQs R1, R11, R1, ROR #22
l570: sbcLT R2, R5, R11, ROR R4
l571: addGEs R10, R11, R14, LSL #25
l572: bicCCs R4, R6, R0, ROR R6
l573: orrPL R12,  R7,  R1
l574: orrPLs R11,  R5,  R2
l575: tst R5, R1
l576: bGT l580
l577: add R1, R0, #130
l578: bicVSs R14, R7, R7, LSR R4
l579: b l581
l580: b l578
l581: tstCC R12, R0
l582: b l587
l583: rsbVCs R10, R9, R7
l584: cmnHI R1, R14, LSL #3
l585: addEQs R7, R14, R0, ROR #12
l586: orr R3,  R7,  R4
l587: cmpLS R8, R3
l588: sbcCCs R6, R4, R9
l589: subVS R6, R9, R6, LSL R1
l590: movGE R11, #28
l591: sbcCS R1, R6, R1
l592: cmpVSs R3, #28
l593: mlaLTs R10, R3, R9, R8
l594: adds r0, r0, r0
l595: rsbVSs R10, R4, #4
l596: bLT l598
l597: movVC R3, #8
l598: subNEs R1, R10, R4
l599: bVC l607
l600: add R1, R0, #90
l601: cmnPL R0, R3, LSL #19
l602: mvnCSs R6, R14, ROR #12
l603: cmpVSs R5, #4
l604: addGEs R5, R9, R9, LSL #21
l605: cmp R3, R14, ROR #22
l606: b l608
l607: b l601
l608: teqLE R4, #40
l609: strCC R3,  [sp, #-8]
l610: cmnLE R4, R4, ASR #12
l611: eorPLs R4,  R8,  R12
l612: cmpVS R0, #20
l613: cmnMIs R1, R4, ASR #30
l614: movHIs R3, #24
l615: bNE l622
l616: bEQ l623
l617: add R1, R0, #39
l618: mvnGT R5, #28
l619: teqLT R6, #28
l620: bicGT R1, R7, R12
l621: rsbVCs R9, R12, R14, RRX
l622: b l624
l623: b l618
l624: rsbMI R7, R14, R5, RRX
l625: ldrLT R10,  [sp, #-24]
l626: eorLEs R6,  R14,  R3
l627: eor R7,  R12,  R11
l628: mvnEQ R8, R1, LSL R8
l629: tstCS R5, R5, ASR R4
l630: mvn R0, R11, ROR #3
l631: adcNEs R3, R2, #16
l632: sbc R5, R9, R2, ASR #21
l633: sbcVCs R0, R7, R14, ASR R12
l634: rsbNEs R8, R12, R8, ASR R6
l635: movNEs R8, #40
l636: addMI R11, R0, R2
l637: teqMIs R0, R8, RRX
l638: subCC R1, R3, R11
l639: tstEQ R11, R4, ROR R7
l640: teqVSs R1, R2
l641: teq R2, R12, RRX
l642: ldrCC R4,  [sp, #-12]
l643: mvnGT R12, R8, RRX
l644: subLSs R6, R8, R12, LSR #19
l645: rsbCSs R8, R11, #28
l646: tst R10, R7
l647: ldrHI R5,  [sp, #-24]
l648: eorVS R10,  R7,  R8
l649: tstGEs R10, R9, ASR #12
l650: teqLE R4, R14, LSR #24
l651: bPL l656
l652: cmpPLs R4, R2, ASR R6
l653: str R10,  [sp, #-32]
l654: addLT R1, R9, #8
l655: subMIs R14, R14, R0, RRX
l656: cmpGE R1, R7, RRX
l657: bVC l665
l658: add R1, R0, #206
l659: add R1, R8, R9, ASR R8
l660: cmpGT R10, R8, LSR R12
l661: movHIs R12, #8
l662: teqHIs R2, R8, RRX
l663: teqPLs R10, R14, LSR #24
l664: b l666
l665: b l659
l666: bicVCs R10, R12, R8, RRX
l667: movGE R2, R6, LSL #12
l668: teqVS R9, R2, LSL R8
l669: cmpGE R5, R6, RRX
l670: cmpEQs R10, R9, RRX
l671: subGE R6, R14, R0, LSL #12
l672: bic R14, R2, R1, RRX
l673: rsbCC R14, R6, #28
l674: str R14,  [sp, #-16]
l675: bVC l677
l676: addEQ R11, R10, R10, LSL #27
l677: bVS l680
l678: bCC l683
l679: rsbCS R9, R7, R2
l680: bLE l685
l681: add R1, R0, #209
l682: addLEs R8, R7, R10, LSR R4
l683: cmpCC R3, R9, LSR #22
l684: b l686
l685: b l682
l686: bNE l695
l687: add R1, R0, #253
l688: cmn R4, R11
l689: rsbCSs R5, R7, R10, LSR #17
l690: cmnLT R14, R10, RRX
l691: teqLTs R1, R14, LSL #17
l692: rsb R7, R3, #40
l693: adcHIs R9, R0, R2, ASR #3
l694: b l696
l695: b l688
l696: mvnVC R4, R2
l697: mvn R7, R5, RRX
l698: mul R14, R3, R11
l699: adds r0, r0, r0
l700: orrEQ R12,  R2,  R2
l701: eorLT R4,  R11,  R11
l702: cmnEQs R3, R1, ROR #30
l703: cmpVC R9, R1, LSR #19
l704: adcPLs R1, R12, R2
l705: subVCs R0, R0, R6, ROR R11
l706: tstLE R8, R10, LSL #3
l707: cmnGTs R3, R8
l708: teqHIs R14, R10, LSR #22
l709: eorMIs R14,  R1,  R5
l710: tstVCs R11, R4, ASR R10
l711: bLE l714
l712: teqEQ R7, R10, LSR #22
l713: rsbCC R0, R1, R12
l714: eor R0,  R10,  R8
l715: rsbHI R5, R10, R10
l716: bPL l721
l717: rsbVS R14, R9, R14, LSR #22
l718: teq R11, R1, LSL R6
l719: bHI l723
l720: eor R10,  R9,  R12
l721: orrPL R3,  R2,  R4
l722: movLEs R7, #8
l723: bVS l728
l724: add R1, R0, #222
l725: adcMIs R6, R2, R11
l726: cmnNE R5, R7, RRX
l727: b l729
l728: b l725
l729: teqVS R11, R5, LSL #27
l730: bVS l739
l731: add R1, R0, #196
l732: tstHIs R2, R6, LSL #21
l733: addMI R10, R8, R11, ASR #25
l734: movGTs R6, R9, RRX
l735: bicLEs R4, R10, R2, LSL #27
l736: addPL R4, R4, R7, ASR #21
l737: sbcLEs R5, R14, R8, ROR #22
l738: b l740
l739: b l732
l740: eorGE R5,  R11,  R7
l741: bNE l749
l742: rsbVC R9, R14, R12
l743: add R5, R9, R7
l744: adcLTs R12, R0, R4
l745: ldrLE R9,  [sp, #-12]
l746: b l755
l747: mvnEQs R0, R2, RRX
l748: bGT l755
l749: andPL R0,  R1,  R7
l750: addVCs R7, R11, R12, RRX
l751: bicCC R14, R12, #28
l752: rsbLE R5, R5, R11, ASR R9
l753: bPL l759
l754: addVCs R7, R3, #20
l755: teqPLs R6, R10
l756: adcPLs R7, R1, #28
l757: eorVSs R9,  R1,  R7
l758: addVSs R9, R1, #16
l759: movNEs R0, R8, ROR R0
l760: movMIs R14, R7
l761: tstCCs R5, R14, LSL #3
l762: cmnCC R4, R5
l763: subNE R11, R10, #28
l764: eorNE R2,  R6,  R1
l765: movHIs R10, R0
l766: umullHI R12, R8, R7, R11
l767: adds r0, r0, r0
l768: orr R10,  R0,  R9
l769: smullNE R8, R5, R1, R7
l770: adds r0, r0, r0
l771: bic R4, R4, R14
l772: ldr R8,  [sp, #-40]
l773: bicGEs R12, R11, R1, ASR R12
l774: bNE l778
l775: bGT l782
l776: add R1, R0, #208
l777: subVS R3, R3, R6, LSL #12
l778: movMIs R0, #28
l779: cmpGTs R7, #40
l780: addMIs R6, R10, R14, RRX
l781: b l783
l782: b l777
l783: movCC R7, #8
l784: cmp R5, #28
l785: strGT R5,  [sp, #-28]
l786: eor R14,  R0,  R14
l787: orrLTs R0,  R9,  R6
l788: add R1, R6, R8, RRX
l789: addGEs R3, R14, R6, RRX
l790: rsbVC R10, R6, R14, LSL #22
l791: cmpNEs R7, #28
l792: teqCSs R7, R1, ASR #22
l793: rsbNEs R14, R10, R0, ASR #21
l794: cmnCS R3, R2, RRX
l795: addEQs R6, R5, R10, ROR R8
l796: addGTs R6, R3, R4, LSL R0
l797: bLS l807
l798: tstEQs R1, R4
l799: bPL l800
l800: ldr R5,  [sp, #-8]
l801: eorPLs R8,  R12,  R1
l802: rsbVS R14, R2, R5, RRX
l803: teqVSs R1, R11, LSR R6
l804: umullVC R9, R5, R3, R2
l805: adds r0, r0, r0
l806: bCC l811
l807: add R1, R0, #122
l808: movVCs R11, #28
l809: cmnPL R0, R2
l810: b l812
l811: b l808
l812: bicNE R6, R10, R9, ROR #22
l813: mvnNE R8, #20
l814: orrNEs R3,  R6,  R12
l815: teqCCs R12, #28
l816: cmp R8, R6, ASR #22
l817: bicCS R5, R9, R12, LSR #18
l818: addHI R12, R4, R9
l819: subPLs R6, R8, R10, LSR #13
l820: eorGT R8,  R0,  R7
l821: ldr R1,  [sp, #-28]
l822: mul R11, R5, R6
l823: adds r0, r0, r0
l824: mvnCS R0, #8
l825: orr R1,  R14,  R2
l826: movVC R11, #28
l827: bEQ l837
l828: bHI l837
l829: sub R14, R9, #40
l830: adcPLs R0, R9, R14, ROR R8
l831: tstNEs R2, R6
l832: smullVC R8, R12, R4, R10
l833: adds r0, r0, r0
l834: teqGT R12, #28
l835: eorNEs R0,  R3,  R7
l836: str R8,  [sp, #-20]
l837: teqCC R5, R7
l838: bVC l842
l839: add R1, R0, #142
l840: teqVCs R6, #8
l841: b l843
l842: b l840
l843: andCCs R7,  R8,  R11
l844: tstEQs R0, R5, ASR #12
l845: adcVSs R7, R2, R10, LSR #17
l846: cmn R14, #40
l847: bCC l854
l848: mulCS R9, R1, R11
l849: adds r0, r0, r0
l850: cmpCCs R2, R1, LSR #22
l851: movHI R11, R8, ASR R8
l852: andMIs R4,  R5,  R8
l853: eorLS R10,  R14,  R2
l854: adcMI R9, R4, R0, ASR #8
l855: orrNEs R5,  R10,  R0
l856: addEQs R10, R3, R14, RRX
l857: cmpVSs R3, R1
l858: tstVS R3, R6
l859: cmnLTs R12, R9, LSL #24
l860: mvnHI R14, R14, RRX
l861: movEQ R14, R10, RRX
l862: orr R4,  R8,  R0
l863: andLT R4,  R0,  R2
l864: umullEQ R11, R8, R0, R0
l865: adds r0, r0, r0
l866: orrVS R10,  R8,  R1
l867: orrVCs R2,  R5,  R5
l868: smullHI R12, R6, R9, R11
l869: adds r0, r0, r0
l870: umullLSs R8, R14, R7, R2
l871: adds r0, r0, r0
l872: movLEs R10, R11, RRX
l873: cmpLT R2, R12
l874: bicVSs R9, R1, R1, ROR #30
l875: addVCs R4, R12, R0, ROR R14
l876: addVS R3, R9, R9
l877: and R0,  R0,  R0
l878: eorVSs R3,  R14,  R8
l879: b l880
l880: ldrLE R9,  [sp, #-36]
l881: orrVSs R10,  R6,  R4
l882: orrVS R9,  R0,  R1
l883: bicGT R10, R1, R5
l884: cmnNE R10, #4
l885: orr R14,  R0,  R0
l886: ldrGE R11,  [sp, #-28]
l887: andMI R14,  R6,  R3
l888: movLS R14, R12
l889: movGTs R3, #8
l890: adcNEs R0, R9, #8
l891: tstLEs R0, R10, ASR R2
l892: rsbGTs R9, R10, #40
l893: b l897
l894: addLT R1, R7, R1, ASR R6
l895: andVCs R12,  R6,  R9
l896: subCS R9, R9, R7
l897: rsbCSs R7, R4, R1
l898: and R2,  R2,  R3
l899: rsbNEs R4, R3, R10, ROR #22
l900: mvnVC R14, R7, LSL #25
l901: b l910
l902: adcNEs R14, R12, #36
l903: cmnPLs R10, R9, LSR #21
l904: adcGT R8, R1, R1, ROR R3
l905: teqLEs R7, #8
l906: sbcLTs R0, R5, R14
l907: mvn R12, R2, RRX
l908: bicEQs R9, R2, R5
l909: mov R9, R0, ROR #3
l910: tstLE R0, R7, RRX
l911: cmnHIs R12, R14
l912: bic R8, R6, R0, RRX
l913: ldr R3,  [sp, #-32]
l914: teqLEs R6, R11, LSR R11
l915: subVS R3, R4, R9
l916: cmpNEs R1, R11, ASR #17
l917: cmpVCs R2, R10, LSL R4
l918: umullVC R4, R12, R6, R12
l919: adds r0, r0, r0
l920: orrLS R8,  R5,  R0
l921: adcHIs R6, R0, R2
l922: bicEQs R2, R8, #40
l923: rsbLS R5, R8, #36
l924: smull R6, R10, R7, R11
l925: adds r0, r0, r0
l926: bLS l930
l927: add R1, R0, #105
l928: movVSs R2, #28
l929: b l931
l930: b l928
l931: movNE R3, R1, RRX
l932: cmpHIs R6, R9, LSL #19
l933: bLE l941
l934: add R1, R0, #219
l935: adcCS R6, R8, R9, LSR #25
l936: movLT R1, #40
l937: mvnMI R9, #20
l938: rsbLS R10, R11, R1, RRX
l939: mvnCS R2, R2
l940: b l942
l941: b l935
l942: bCC l950
l943: add R1, R0, #251
l944: cmpCC R5, R10, RRX
l945: teqLS R1, R2, ASR #12
l946: teqNEs R12, #40
l947: rsbVSs R4, R9, R4, LSR R5
l948: mvn R1, R14, RRX
l949: b l951
l950: b l944
l951: subNE R12, R8, R8, ASR R14
l952: cmnVCs R1, R10, RRX
l953: andVSs R1,  R11,  R1
l954: cmpVS R8, R1
l955: sbcEQs R9, R6, R10
l956: teqEQ R12, R6
l957: bGE l966
l958: add R1, R0, #176
l959: sbcNE R7, R3, #4
l960: teqMI R9, R5, ROR R1
l961: movVSs R5, R7, LSL R12
l962: rsbMI R8, R2, R12, RRX
l963: bic R7, R1, R2, ASR #8
l964: adcEQs R0, R5, R1, RRX
l965: b l967
l966: b l959
l967: tst R0, R0, RRX
l968: cmpCCs R3, R12, LSL #21
l969: strHI R1,  [sp, #-16]
l970: cmpGE R4, #28
l971: teqVC R11, R10
l972: cmnLT R1, R11
l973: andVSs R4,  R9,  R5
l974: mvnEQ R6, R6, RRX
l975: mul R14, R9, R5
l976: adds r0, r0, r0
l977: mvnGTs R14, #20
l978: orrCC R0,  R5,  R3
l979: sbcHI R7, R12, R3
l980: cmn R1, R11, ASR #12
l981: ldrPL R12,  [sp, #-36]
l982: tstMI R10, #16
l983: adcMIs R3, R12, R9, LSL #12
l984: mov R7, R7, LSR #12
l985: addPLs R5, R8, R2
l986: smullCC R11, R6, R9, R1
l987: adds r0, r0, r0
l988: adc R8, R7, #28
l989: strLT R5,  [sp, #-20]
l990: cmpLT R12, R6, RRX
l991: sbc R11, R2, #20
l992: mulCS R2, R1, R0
l993: adds r0, r0, r0
l994: ldrGT R11,  [sp, #-20]
l995: eorVS R14,  R0,  R10
l996: eorLE R10,  R2,  R7
l997: teqCC R9, #8
l998: mvnEQ R10, R14
l999: sbcNEs R1, R4, R1, ROR #21
l1000: cmpMIs R4, R5, RRX
end: b end

