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
val1: .word 431983631
next1:ldr R2, val2
b next2
val2: .word 2306784762
next2:ldr R3, val3
b next3
val3: .word 1984239493
next3:ldr R4, val4
b next4
val4: .word 108489770
next4:ldr R5, val5
b next5
val5: .word 2291918801
next5:ldr R6, val6
b next6
val6: .word 3005508329
next6:ldr R7, val7
b next7
val7: .word 2577097603
next7:ldr R8, val8
b next8
val8: .word 1993459802
next8:ldr R9, val9
b next9
val9: .word 2174681068
next9:ldr R10, val10
b next10
val10: .word 1213106116
next10:ldr R11, val11
b next11
val11: .word 2238196449
next11:ldr R12, val12
b next12
val12: .word 3824388582
next12:ldr R14, val14
b next14
val14: .word 1355230048

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 1061415977
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 3822117108
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 2409243638
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 1525397237
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 1665823214
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 1114376226
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 92771310
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 3431979191
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 766888776
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 2638710978
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 561687770
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 1891356917
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 3394952686
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 4086250805
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 1980300159
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 2940079220
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 4221249585
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 4230832016
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 2914797681
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 383810698
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 3067154694
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: rsb R1, R6, #105906176
l2: bNE l7
l3: add R1, R0, #64
l4: clzPL R10, R12
l5: cmnCS R9, R10, ASR #26
l6: b l8
l7: b l4
l8: rsb R9, R6, R14
l9: mov R14, #12
l10: ldr R6, [sp, -R14]!
l11: rsbLTs R7, R15, #33
l12: add R1, R9, R6, RRX 
l13: and R1, R9, R10, RRX 
l14: tst R4, #-83886080
l15: mvnLSs R12, R7, ASR #24
l16: cmpVS R8, #461373440
l17: b l20
l18: eorLTs R4, R15, R8
l19: adds R6, R14, R4, RRX 
l20: orrVS R12, R0, R11, ASR R5
l21: rsbEQs R7, R7, R5, ASR R4
l22: and R5, R6, R11, ROR R1
l23: eors R1, R8, #45056
l24: teq R1, R1
l25: eorGT R10, R0, #436207616
l26: clz R10, R9
l27: teq R0, R8, LSL R3
l28: eorMI R2, R2, #124928
l29: clzNE R9, R0
l30: str R4, [sp, #+0]!
l31: mov R11, #52
l32: strMI R11, [sp, -R11]
l33: subGTs R5, R1, R1, ROR #25
l34: eors R12, R1, R3, LSR R6
l35: andEQs R9, R6, R8, LSR R9
l36: movHI R1, R12
l37: adcVSs R12, R6, #3080192
l38: subMIs R3, R9, #2352
l39: bNE l47
l40: add R1, R0, #234
l41: rsbLSs R14, R7, R12
l42: adc R2, R6, #142606336
l43: andEQ R9, R14, R5
l44: bicLEs R9, R14, R9, ROR #23
l45: mvnLE R11, #132096
l46: b l48
l47: b l41
l48: orrGTs R8, R9, #3680
l49: b l58
l50: add R1, R0, #190
l51: orrs R3, R2, #13568
l52: teq R5, R7, ASR R0
l53: tstVC R9, #926941184
l54: andPL R11, R7, R4, ROR R5
l55: bics R14, R4, R9, LSR R3
l56: rsbs R0, R10, R15
l57: b l59
l58: b l51
l59: rsbs R2, R14, R8, ASR R5
l60: teqCC R4, R11, RRX 
l61: tst R4, R7
l62: and R1, R0, #15
l63: movGE R10, R7
l64: rsbCS R11, R10, #-1677721600
l65: eorPL R9, R11, #113246208
l66: cmn R3, #4096
l67: cmnVS R0, R6, ROR #26
l68: and R2, R4, #679477248
l69: orrGT R2, R5, #939524096
l70: clzMI R5, R10
l71: addVSs R0, R11, R4, ROR #25
l72: addNEs R7, R3, R11, ROR #17
l73: movLT R6, R1, ASR #16
l74: adc R5, R1, R4
l75: cmp R1, R5, ASR R11
l76: subs R9, R0, #5888
l77: adc R12, R10, #536870915
l78: teqCC R15, #54
l79: bVC l88
l80: addNEs R6, R9, R8, LSR #27
l81: mvnCS R1, R14, ROR #2
l82: clzMI R7, R1
l83: teq R3, R12, ASR R4
l84: cmn R0, R8, LSR R11
l85: sbcLTs R5, R11, R8, LSL R7
l86: cmpEQ R3, R8
l87: cmpGT R6, R14, ROR R14
l88: teqGT R11, R11
l89: bLE l96
l90: add R1, R0, #73
l91: subVC R11, R11, #43778048
l92: mov R6, R12, LSR #5
l93: eorVS R3, R1, R6, LSR R4
l94: eorLS R8, R12, R0
l95: b l97
l96: b l91
l97: tstGT R10, #1600
l98: bVC l101
l99: movPL R10, R6
l100: mov R7, R6
l101: mvn R9, R12, LSR R3
l102: b l110
l103: add R1, R0, #115
l104: rsb R9, R10, #-1073741820
l105: orrCS R5, R2, R15
l106: cmp R0, #16056320
l107: orrEQ R3, R2, R3, ASR #2
l108: eorLEs R2, R6, #65024
l109: b l111
l110: b l104
l111: rsb R12, R9, R7, ASR R11
l112: b l116
l113: add R1, R0, #129
l114: cmp R4, R5, LSR R7
l115: b l117
l116: b l114
l117: eorCC R10, R11, R2, RRX 
l118: subGEs R11, R3, R5, ROR #25
l119: andEQs R4, R6, #618496
l120: cmnHI R3, R9
l121: andHI R5, R1, R3, LSR R8
l122: subs R6, R11, R11, RRX 
l123: adcLE R6, R15, R15, LSL #26
l124: sbc R7, R12, R0
l125: movMI R1, R4
l126: andPLs R9, R0, R1
l127: tstGT R4, R14, RRX 
l128: adcHI R2, R6, R12, RRX 
l129: ldr R10, [sp, #-60]!
l130: cmn R2, R15, LSL #14
l131: bVC l138
l132: add R1, R0, #20
l133: bicMI R5, R7, R5, LSR R3
l134: clzLS R7, R8
l135: cmnLE R3, R3
l136: sbc R7, R8, #356
l137: b l139
l138: b l133
l139: str R14, [sp], #+40
l140: bPL l147
l141: andHIs R11, R5, R1, RRX 
l142: tstHI R0, #0
l143: cmp R14, R6
l144: tstNE R3, R3
l145: tstGE R0, R7
l146: cmnCC R3, R12, ROR R14
l147: adcVS R3, R14, R4
l148: and R14, R1, R8, ASR R1
l149: tstLS R9, #704512
l150: teq R11, #22016
l151: movVCs R8, #48234496
l152: subCSs R2, R11, R5, ROR R8
l153: and R4, R10, #113246208
l154: sbcVCs R4, R15, R10, RRX 
l155: orrs R14, R14, #1744830467
l156: bLS l160
l157: add R1, R0, #90
l158: cmnLT R4, #58195968
l159: b l161
l160: b l158
l161: mov R1, #8
l162: ldr R8, [sp, +R1]
l163: cmnLS R1, R12, ASR #24
l164: clzHI R2, R10
l165: mov R3, R15
l166: eorMI R2, R1, R15, ASR #4
l167: str R9, [sp], #+0
l168: tstLT R3, R3
l169: bVS l179
l170: teq R10, R6, LSL #4
l171: orrLSs R8, R6, R6, LSR #29
l172: cmnLT R3, R12, ROR #22
l173: subVS R3, R11, R11
l174: addLE R9, R0, #320
l175: movLT R8, R5, LSR R4
l176: mvnCSs R10, R9, ROR #14
l177: mvn R12, R3, RRX 
l178: bics R0, R2, R2, RRX 
l179: tstNE R4, R15, LSL #17
l180: adcGT R14, R4, #1879048205
l181: rsbCC R12, R11, R1, LSR #26
l182: addGT R1, R2, R2, ASR #14
l183: sbcs R3, R0, R2
l184: clzLT R12, R1
l185: clzMI R5, R6
l186: subVS R8, R14, #3072
l187: teq R1, R5
l188: eorNEs R3, R14, R5, LSL #29
l189: tstGT R10, R15
l190: bicCCs R7, R14, #588
l191: sbcEQs R0, R7, R12, ASR #21
l192: sbcMIs R1, R2, #679936
l193: teqLS R2, R0
l194: clzCC R10, R3
l195: eorEQ R11, R6, #3424
l196: sbcCCs R7, R6, R9, ASR R12
l197: clz R12, R1
l198: teq R3, #28311552
l199: b l204
l200: rsbGTs R2, R5, R1, ASR R8
l201: andGEs R8, R4, #9728
l202: ands R2, R8, R2, ROR #20
l203: eor R6, R11, R10
l204: sbcs R3, R10, R8, ASR #20
l205: cmp R10, R0, RRX 
l206: cmpCS R1, R8, LSR R9
l207: bic R14, R15, R12, LSL #5
l208: sub R2, R3, R3, LSL R3
l209: eorVC R9, R2, #742391808
l210: subs R1, R9, #5248
l211: tst R3, R11
l212: rsb R1, R15, R7
l213: orrs R0, R10, #1069547520
l214: eorEQ R11, R14, R6, RRX 
l215: eorNE R1, R2, R8, ROR #7
l216: eorNEs R8, R8, R14, RRX 
l217: subHIs R3, R1, R7, LSL R8
l218: andGE R2, R3, #162529280
l219: rsbLE R14, R5, R3, ROR #18
l220: cmn R7, R5, ASR R7
l221: cmp R8, #25690112
l222: orr R5, R6, R4, LSL R11
l223: add R0, R2, R15, LSL #13
l224: cmnNE R6, R1
l225: sub R4, R12, R12, LSR R1
l226: subs R1, R2, R14, ROR #13
l227: rsbs R3, R4, R6
l228: subCCs R4, R10, R6, LSR #9
l229: eor R12, R7, R0
l230: sbcPL R0, R4, R5, RRX 
l231: str R12, [sp], #+4
l232: bLE l236
l233: add R1, R0, #32
l234: bics R8, R12, R7, RRX 
l235: b l237
l236: b l234
l237: and R11, R14, #3833856
l238: mvnGEs R5, R1, RRX 
l239: clzVC R5, R10
l240: bic R6, R1, R2, ROR R0
l241: bEQ l245
l242: add R1, R0, #137
l243: adcPLs R7, R0, #3072
l244: b l246
l245: b l243
l246: b l250
l247: add R1, R0, #65
l248: andEQ R10, R14, #6356992
l249: b l251
l250: b l248
l251: mvnLEs R10, R7
l252: bVS l259
l253: add R1, R0, #163
l254: tstLS R8, R4, RRX 
l255: eorPL R3, R14, R15, ROR #16
l256: clz R11, R3
l257: addCC R12, R15, R4, LSR #4
l258: b l260
l259: b l254
l260: bGE l267
l261: add R1, R0, #224
l262: rsbGT R5, R12, R0, ROR #28
l263: cmpCC R12, #3184
l264: movLEs R8, R8
l265: eorCCs R4, R10, R10, ASR #8
l266: b l268
l267: b l262
l268: rscs R11, R0, #376832
l269: sbcCC R6, R9, R5, ASR R7
l270: orrVSs R4, R14, R4, LSR R11
l271: subs R9, R6, R6, ROR R5
l272: subGEs R2, R4, R7, LSL #23
l273: subPLs R5, R14, #47972352
l274: andGTs R2, R6, R10
l275: bGE l280
l276: add R1, R0, #208
l277: orrNEs R11, R6, R14, ASR #2
l278: eorCS R3, R5, #10496
l279: b l281
l280: b l277
l281: movLS R2, R0
l282: movPLs R9, R6
l283: andHI R7, R2, #-2097152000
l284: andVSs R14, R14, #-1493172224
l285: orrGEs R11, R7, R10
l286: teqGT R8, R14
l287: eorGEs R2, R10, R1
l288: b l290
l289: movs R14, #1610612741
l290: and R0, R4, R1, RRX 
l291: sbc R14, R14, #15990784
l292: subVS R12, R6, #3728
l293: sbcVS R12, R11, R7, ASR R7
l294: bCS l299
l295: subCSs R5, R2, R15
l296: mov R4, R12, RRX 
l297: tst R4, R6
l298: sbcGE R2, R4, #1275068418
l299: bic R9, R11, R9, RRX 
l300: bic R9, R12, #29
l301: and R5, R15, R6, RRX 
l302: mov R1, #12
l303: ldr R3, [sp], +R1
l304: subCC R12, R4, R0
l305: rsc R6, R10, R9, LSR #30
l306: cmpHI R4, #25600
l307: mov R2, #56
l308: ldrGE R12, [sp, -R2]
l309: cmnVC R11, R1, RRX 
l310: rscCSs R2, R9, R5, RRX 
l311: orrLT R6, R7, R5
l312: sbcHI R10, R5, R5
l313: eorMI R10, R0, R1, LSL R3
l314: orr R8, R14, R14, RRX 
l315: mov R12, #20
l316: str R1, [sp, -R12]!
l317: ands R12, R4, R0, LSR R8
l318: subGEs R0, R1, R11, LSR #24
l319: sbcs R6, R11, R9, RRX 
l320: str R7, [sp], #-36
l321: add R4, R0, #1703936
l322: str R6, [sp, #+60]
l323: sbc R1, R12, R11
l324: clzGE R11, R1
l325: tstPL R12, R9
l326: tst R4, #100
l327: b l332
l328: add R1, R0, #253
l329: bics R11, R3, R6, RRX 
l330: sbc R7, R11, R14, LSR R8
l331: b l333
l332: b l329
l333: bLT l340
l334: tst R8, R7, LSL R7
l335: tstCS R1, R3, ASR R5
l336: rscLTs R11, R7, R5, ASR #26
l337: teq R0, R0, ROR #2
l338: bics R5, R1, #2880
l339: mvns R4, #536
l340: ands R9, R2, R9, LSR R2
l341: orrLS R2, R5, R7
l342: cmp R0, R12
l343: ldr R1, [sp], #+24
l344: rsbs R4, R5, R6, ASR #10
l345: bicGEs R12, R14, #-1879048179
l346: clzHI R12, R8
l347: teqMI R9, R10, RRX 
l348: clzGE R10, R7
l349: subLTs R0, R9, R0
l350: ldr R6, [sp, #-12]!
l351: adcs R6, R0, #600
l352: addGE R6, R3, #94
l353: mvn R2, R0, RRX 
l354: eorHI R7, R12, R10, ROR R0
l355: b l360
l356: add R1, R0, #23
l357: subVCs R14, R11, R15
l358: cmp R9, R0, ASR R12
l359: b l361
l360: b l357
l361: mov R7, #16
l362: bGE l366
l363: adcHI R12, R1, #2063597568
l364: teqNE R4, R6, ROR #19
l365: cmp R11, R6, RRX 
l366: andEQ R2, R8, R10
l367: rscs R7, R0, R3, RRX 
l368: cmpNE R7, R10, LSR #12
l369: bicLS R6, R14, R12, ASR #9
l370: adcGT R1, R9, R7, ASR #11
l371: sbc R10, R3, R1, LSR R0
l372: and R2, R14, R2, RRX 
l373: cmp R8, #31457280
l374: bVS l381
l375: teqEQ R12, R6
l376: rsbMIs R8, R3, #95420416
l377: mvnPL R11, R12, LSR #11
l378: cmp R15, #-1644167168
l379: teqMI R2, R15
l380: rsbNEs R9, R9, R14
l381: clzVC R0, R8
l382: bHI l384
l383: cmpNE R6, R3, LSR R14
l384: subs R4, R0, R0
l385: sub R11, R3, #536870916
l386: sbcs R2, R12, R7, ROR R11
l387: rscs R2, R12, #638976
l388: bVS l398
l389: rsbEQs R6, R15, R0
l390: eors R8, R8, R12, ASR #6
l391: clz R10, R9
l392: addCS R14, R5, R11, LSL R10
l393: bicEQ R4, R1, R12, LSL R14
l394: adcNEs R10, R12, #1946157057
l395: andLE R6, R12, R1, RRX 
l396: bicCSs R7, R4, #181248
l397: sub R1, R10, R14, ROR #17
l398: andLEs R7, R2, R4
l399: bicMI R3, R5, R4
l400: tstLT R3, #771751936
l401: add R4, R6, R10, ASR #16
l402: orrVS R3, R5, R9, LSR #27
l403: addNE R11, R8, R3, ASR #21
l404: b l411
l405: add R1, R0, #238
l406: sbcVC R4, R3, R5, RRX 
l407: addVCs R14, R6, R2, RRX 
l408: clzPL R14, R0
l409: subCC R5, R11, R4
l410: b l412
l411: b l406
l412: eor R8, R1, #1610612736
l413: bNE l420
l414: add R1, R0, #240
l415: clzVC R14, R5
l416: cmpMI R11, R14, RRX 
l417: subHI R4, R14, R14, ASR #28
l418: clzCC R6, R0
l419: b l421
l420: b l415
l421: sub R11, R8, R9
l422: eorHIs R6, R5, R8
l423: eorPL R4, R10, R7, RRX 
l424: sbc R3, R2, #-905969664
l425: bics R1, R2, R12, LSR #12
l426: ands R5, R6, #1536
l427: mvn R4, R12, LSR #21
l428: teq R11, R2, ROR R6
l429: adcCS R12, R6, #3489792
l430: rsbNEs R2, R7, R10, ASR #23
l431: bCS l438
l432: add R1, R0, #142
l433: eorPL R10, R1, R14, ROR #26
l434: ands R0, R0, R5, LSL #19
l435: cmnVC R12, R5
l436: cmnGE R8, R1, LSR #1
l437: b l439
l438: b l433
l439: bic R1, R15, R14, LSR #14
l440: orrEQs R12, R9, R1, LSL #5
l441: str R6, [sp], #+20
l442: cmnLT R2, R10, ASR R6
l443: str R14, [sp, #-24]!
l444: clzMI R9, R12
l445: b l453
l446: add R1, R0, #185
l447: cmnLS R7, R12
l448: eors R11, R11, #3264
l449: rsbEQs R6, R12, R9, LSR #11
l450: orrNE R10, R11, R11, ROR #20
l451: adcVCs R8, R0, R11
l452: b l454
l453: b l447
l454: b l463
l455: add R1, R0, #205
l456: bicGEs R14, R0, R8
l457: cmpHI R9, #720896
l458: rscs R9, R4, R7, RRX 
l459: movCSs R8, R14
l460: mvn R7, R10
l461: sbc R6, R10, #58982400
l462: b l464
l463: b l456
l464: subGE R11, R10, R8, LSR R0
l465: cmn R8, R0, LSL R10
l466: sbc R9, R11, R9
l467: b l473
l468: add R1, R0, #44
l469: clzGT R7, R9
l470: bicVSs R12, R10, R3, ROR R4
l471: adc R11, R11, R4, LSL #28
l472: b l474
l473: b l469
l474: eorCC R9, R9, R7, LSR #8
l475: movPLs R4, #112
l476: bicVSs R11, R3, R11, ROR #16
l477: addCC R3, R1, #53477376
l478: subPLs R12, R12, #-1140850688
l479: cmn R1, R6
l480: subNE R1, R2, R8, LSL R0
l481: tstLT R15, #-134217725
l482: str R4, [sp, #+56]
l483: mov R7, R15
l484: cmnVS R2, R7, RRX 
l485: andNEs R3, R9, #-2147483647
l486: cmp R0, #3584
l487: bicGTs R2, R12, R0, RRX 
l488: rscEQs R2, R2, R8
l489: cmn R3, R4
l490: andHI R11, R15, #16187392
l491: eorPL R14, R14, #819200
l492: teq R2, R5, ROR #2
l493: b l501
l494: add R1, R0, #97
l495: subs R5, R4, R4, ASR R9
l496: clz R3, R6
l497: rsbLS R6, R12, R12, LSR R8
l498: cmpNE R12, R14, LSL #4
l499: subLSs R8, R12, #12672
l500: b l502
l501: b l495
l502: b l511
l503: add R1, R0, #64
l504: clzCS R7, R1
l505: cmn R3, #149504
l506: clz R12, R3
l507: subLS R3, R11, #34
l508: sbc R10, R10, R9, ROR #21
l509: clz R0, R5
l510: b l512
l511: b l504
l512: b l519
l513: add R1, R0, #51
l514: subs R11, R7, R9, ASR R3
l515: sbcLTs R12, R10, R6
l516: subCS R7, R5, #-1073741823
l517: rsbs R10, R9, R8, RRX 
l518: b l520
l519: b l514
l520: eors R0, R11, R5, ROR R6
l521: str R7, [sp], #-12
l522: ldr R14, [sp], #+40
l523: ands R10, R7, R5, RRX 
l524: andVCs R1, R0, #458752
l525: cmn R12, R12, LSR R14
l526: subNEs R7, R10, #-1979711488
l527: sbcs R4, R1, #-536870905
l528: orrs R3, R0, R7, ROR #8
l529: bicLT R5, R0, #58
l530: tstGE R15, R3, ASR #5
l531: orrVC R0, R14, #1036288
l532: sbcs R10, R6, R10
l533: clzMI R12, R9
l534: and R12, R12, R1
l535: bics R3, R0, #-335544320
l536: cmnGE R8, R0, ROR R3
l537: rscCS R7, R4, #-134217725
l538: orrEQ R1, R0, R4
l539: mvnLEs R5, R12
l540: cmpPL R4, R6
l541: sbcMI R4, R1, #152576
l542: bLS l546
l543: add R1, R0, #7
l544: subCC R14, R4, R9, ASR #20
l545: b l547
l546: b l544
l547: eorCS R7, R11, R5, ASR R3
l548: cmnVC R8, R1
l549: orrVS R2, R3, R1, LSL R14
l550: bLS l559
l551: orrVC R1, R7, R8
l552: rsc R14, R4, R8, LSR #6
l553: clz R0, R1
l554: orr R9, R0, R10, LSR R10
l555: clzLT R4, R5
l556: cmnVS R3, R14
l557: eor R14, R3, #53248
l558: tstVS R14, R5
l559: sbcLS R14, R12, R3, ROR #20
l560: andLT R6, R11, #1342177280
l561: cmpLT R5, #3904
l562: ldr R7, [sp, #-32]!
l563: movGT R0, R3, ASR R7
l564: cmp R6, R1, ASR #9
l565: teqVS R5, R9, LSR #14
l566: mov R0, #28
l567: ldr R8, [sp, +R0]!
l568: mov R4, #36
l569: ldr R6, [sp, -R4]!
l570: eor R10, R6, #3489792
l571: andNE R7, R6, #106496
l572: andPL R2, R7, #1761607680
l573: mvn R6, R8, ASR R0
l574: bicLE R14, R12, R4
l575: orrVSs R0, R12, #1207959552
l576: cmpVC R6, R0
l577: b l587
l578: mvnNEs R9, R9
l579: cmp R3, R11
l580: clz R12, R8
l581: addEQ R5, R5, #-1409286144
l582: sub R10, R4, R7
l583: adcVCs R1, R4, R2
l584: addPLs R2, R12, R2
l585: subs R10, R3, R10, RRX 
l586: tstEQ R6, R3, LSL #21
l587: eorGT R9, R15, R8
l588: clzCS R2, R4
l589: cmn R12, R14, LSL R3
l590: bicLEs R5, R2, R12
l591: rsbs R9, R1, R9, ASR R12
l592: b l599
l593: add R1, R0, #111
l594: mvnCCs R3, R10
l595: mvnEQ R7, R1, LSL #3
l596: movs R3, R10, LSL #4
l597: eors R3, R14, R2
l598: b l600
l599: b l594
l600: b l606
l601: rscGEs R4, R2, #226492416
l602: eorLS R10, R14, R3, ASR #22
l603: subEQs R2, R14, R11, RRX 
l604: sbcs R11, R12, #8650752
l605: bic R3, R14, #-805306366
l606: andEQ R1, R4, R9, ASR R2
l607: mvns R3, #118784
l608: eorMIs R0, R0, #704
l609: rscLSs R10, R4, R9, ROR R6
l610: cmnNE R11, R6, ROR R3
l611: tst R1, R5, LSL #5
l612: bMI l614
l613: mov R10, R5, RRX 
l614: adcs R0, R6, R1, ROR #2
l615: mvnHIs R12, #66060288
l616: bVS l620
l617: add R1, R0, #19
l618: andVC R1, R1, R4
l619: b l621
l620: b l618
l621: eors R0, R12, R3
l622: addHIs R0, R7, R14
l623: orrLE R10, R12, #201326592
l624: movs R1, R3, LSR R0
l625: teqGT R6, R5
l626: str R5, [sp, #+28]
l627: str R11, [sp], #+32
l628: adcs R6, R0, R14, LSR R8
l629: bMI l630
l630: subHI R5, R0, R12, LSL R14
l631: bLT l635
l632: add R1, R0, #161
l633: eorNEs R11, R3, #1048576
l634: b l636
l635: b l633
l636: ldrMI R2, [sp, #+8]
l637: rsbs R14, R11, #759169024
l638: mvnLTs R3, #193
l639: eorLTs R1, R8, R5
l640: cmpVS R14, R11
l641: movLTs R9, #376832
l642: cmpCC R9, R12
l643: adcNEs R0, R7, R11, LSR R11
l644: orrLTs R9, R7, #184549376
l645: bGT l653
l646: add R1, R0, #247
l647: bics R4, R5, R8
l648: mvnLE R4, R4
l649: clz R12, R7
l650: clz R4, R10
l651: eorMIs R5, R4, R0
l652: b l654
l653: b l647
l654: b l656
l655: tstGT R4, R7, ASR #8
l656: orrs R5, R10, #1073741845
l657: mov R14, #24
l658: ldr R1, [sp, +R14]!
l659: mov R6, #4
l660: str R12, [sp], -R6
l661: addNE R14, R1, R5
l662: adcCS R1, R0, R0, ASR R12
l663: orrPL R7, R11, R2
l664: b l668
l665: add R1, R0, #174
l666: bicMIs R9, R7, #225443840
l667: b l669
l668: b l666
l669: teqGE R10, R8
l670: bVC l677
l671: add R1, R0, #24
l672: bicLSs R3, R5, #136314880
l673: rsbMIs R3, R3, R3, ROR R2
l674: addLTs R10, R4, R2, LSR R3
l675: rsbCSs R9, R3, R2, ROR #4
l676: b l678
l677: b l672
l678: eor R9, R0, R8, LSL R5
l679: ldr R11, [sp], #-28
l680: cmp R6, R6
l681: cmn R1, R14
l682: subs R1, R4, #75
l683: rscVCs R2, R3, R1, RRX 
l684: sub R1, R11, R5
l685: teqCS R11, #-1610612729
l686: sbcs R4, R0, R10, ASR R14
l687: adcEQ R6, R9, R3, LSR R1
l688: bCS l694
l689: rsc R11, R0, R8
l690: eor R10, R7, R7, RRX 
l691: movCCs R7, R6, ASR #6
l692: rsc R10, R9, #223
l693: adds R14, R6, #49152
l694: cmp R3, R10, ASR #14
l695: eor R10, R0, R14, RRX 
l696: adcMI R10, R3, R4, ASR R6
l697: cmpLE R3, #32768
l698: sub R7, R15, R3, LSL #4
l699: sub R0, R9, R0, RRX 
l700: tstLS R11, R1, ASR #3
l701: subs R6, R9, R2
l702: cmpCC R3, R1, ASR #24
l703: clzGT R6, R6
l704: sub R4, R15, #675282944
l705: bicLS R3, R14, R15
l706: bVS l713
l707: add R1, R0, #95
l708: mov R0, R12, RRX 
l709: cmnHI R9, R0, LSR R7
l710: subNE R11, R3, R1
l711: rsbGT R14, R14, R1, ASR R9
l712: b l714
l713: b l708
l714: mvn R0, R4
l715: clzCS R6, R0
l716: addCCs R10, R11, R3, LSR R10
l717: subPL R11, R8, R11, LSR R9
l718: adcs R11, R11, #44564480
l719: teqVS R9, #1073741866
l720: bLE l728
l721: rsc R5, R6, R12, RRX 
l722: andLS R11, R2, R0, ASR #8
l723: subCS R12, R6, R11
l724: subVC R5, R10, R7, LSL R3
l725: cmpGE R9, #880640
l726: adcs R10, R12, #15680
l727: cmn R0, R14, LSR #30
l728: sub R9, R14, R0
l729: mvnHI R5, #2000
l730: ldr R1, [sp], #+4
l731: mvns R6, #63700992
l732: cmp R9, R12, ASR #10
l733: cmpCS R10, R10, LSR R2
l734: subs R4, R14, #161480704
l735: mvns R8, R6
l736: sub R10, R1, R8, ASR #28
l737: cmn R11, R11, LSR #0
l738: ands R12, R11, R1
l739: eors R1, R7, R0, RRX 
l740: cmn R5, R3, ROR R14
l741: eorPLs R10, R0, R6, LSL R2
l742: bNE l746
l743: sub R9, R1, R5
l744: cmn R2, #400
l745: sub R4, R1, R0, LSL #9
l746: eor R4, R5, R3
l747: sbcMI R3, R11, #5184
l748: bicLT R5, R1, #192937984
l749: cmpNE R5, R12, LSL #31
l750: sub R14, R7, #835584
l751: cmp R7, R11, ROR #13
l752: adcCCs R5, R14, R12, ASR R1
l753: sub R2, R3, #1811939329
l754: bicCCs R4, R2, R10
l755: subMI R4, R6, R6, ASR R3
l756: teqNE R2, #10158080
l757: bicLS R3, R8, #196608
l758: rscLEs R7, R14, #1073741839
l759: eorVS R8, R5, R10, LSL R12
l760: subEQ R9, R5, #99
l761: cmpPL R8, R12, ROR R14
l762: rsbMIs R11, R5, R7, ASR R1
l763: b l767
l764: add R1, R0, #32
l765: cmp R15, #3760
l766: b l768
l767: b l765
l768: rsc R6, R0, #44564480
l769: sbcs R4, R9, #1744830466
l770: mvnGT R6, R3, LSL R2
l771: rsc R4, R7, R8, RRX 
l772: bCS l776
l773: add R1, R0, #188
l774: subCC R4, R12, R11, ROR R7
l775: b l777
l776: b l774
l777: cmn R3, #1020
l778: add R0, R12, R14, LSR #26
l779: bPL l786
l780: add R1, R0, #208
l781: andVC R12, R3, R11, ROR R4
l782: adds R2, R4, #141
l783: rsb R4, R4, R7
l784: tst R11, R2, ROR #13
l785: b l787
l786: b l781
l787: bics R11, R11, R2, ASR R2
l788: rscNEs R12, R1, R9, ROR #22
l789: subGT R0, R4, R14, LSR #13
l790: ldr R1, [sp], #-8
l791: sbcs R9, R9, R14, LSL R0
l792: ldr R1, [sp, #+16]!
l793: bLS l802
l794: rsbGEs R10, R4, R14, LSR R2
l795: teq R10, #43776
l796: subs R4, R1, R10, RRX 
l797: eorPLs R8, R10, R0, LSL R6
l798: orrMIs R12, R0, R6, ASR #22
l799: movEQ R9, #2624
l800: rscCS R14, R8, R4
l801: mvnLE R6, R6, ROR #4
l802: addGE R12, R9, R4
l803: bicLT R2, R0, #633339904
l804: cmnVC R8, #1073741878
l805: cmnNE R10, #-1342177276
l806: mov R0, #0
l807: str R14, [sp, +R0]!
l808: rsbEQs R3, R10, #-1073741799
l809: b l813
l810: add R1, R0, #3
l811: orrEQs R11, R6, R2, ASR #22
l812: b l814
l813: b l811
l814: subs R2, R2, #16896
l815: add R0, R15, R1, RRX 
l816: orr R14, R8, R2, ROR #24
l817: clz R3, R2
l818: bicCC R6, R0, R14, LSL R8
l819: cmn R3, R15
l820: addCCs R7, R6, R1, LSL R11
l821: adc R1, R2, R0, LSL #9
l822: andCS R11, R8, R14, RRX 
l823: teq R7, R7, RRX 
l824: str R9, [sp, #+24]!
l825: clzCS R6, R12
l826: rsbLEs R4, R7, R10
l827: mvn R6, R15, RRX 
l828: b l834
l829: ands R5, R11, R4, ASR #31
l830: andPL R6, R6, R10, ROR R4
l831: teq R8, #41418752
l832: subGTs R14, R0, R4, LSL #0
l833: sbcLEs R5, R14, R5, LSR R12
l834: clz R8, R7
l835: b l840
l836: addNEs R12, R9, R2, LSR R11
l837: orrGE R0, R7, #-1610612722
l838: eors R8, R10, R0, ROR R5
l839: tstVC R1, R9, LSL #3
l840: cmnEQ R15, R3, LSR #4
l841: adcHIs R3, R14, R6, RRX 
l842: bicEQs R11, R1, R6, ROR R14
l843: andLS R0, R1, #24
l844: and R1, R10, R5
l845: cmn R1, #23040
l846: mvns R14, R10
l847: andCC R2, R9, R11, RRX 
l848: orrCC R10, R2, #1275068416
l849: tst R7, R5, ASR #12
l850: adcCSs R9, R10, #12032
l851: movLT R7, R5, RRX 
l852: cmp R10, R6
l853: subEQs R0, R4, R9
l854: eorVSs R2, R5, R14, LSL R8
l855: andLE R12, R1, R4, ROR R3
l856: ldr R14, [sp], #-36
l857: eorVSs R14, R2, R0, RRX 
l858: add R0, R3, R5
l859: andGT R3, R8, R3, LSR R10
l860: mov R7, #12
l861: str R0, [sp, +R7]!
l862: rscVSs R6, R6, R3, LSL R1
l863: movCCs R11, #14336
l864: sub R3, R14, #116736
l865: eorLS R6, R12, R5, ASR R12
l866: eor R12, R4, R14, LSR #1
l867: mvnPLs R0, R2, ASR R4
l868: sbcLEs R8, R4, R1, ASR R11
l869: cmnVS R12, R7
l870: mvnGE R1, #26
l871: ldrVS R8, [sp, #-4]
l872: rscLEs R5, R8, #738197505
l873: eorVC R14, R8, R7
l874: sbc R6, R0, R2, ROR R6
l875: bicGT R11, R1, R10, ROR #18
l876: cmpEQ R3, R7, LSR #25
l877: clz R8, R14
l878: addPLs R0, R15, R2, ROR #27
l879: bLT l883
l880: rsbEQs R10, R2, R7
l881: cmnNE R15, R8
l882: eorMIs R12, R4, R0
l883: cmp R11, R2
l884: rsbVC R5, R11, #-2147483587
l885: bMI l889
l886: add R1, R0, #226
l887: orr R2, R12, R2
l888: b l890
l889: b l887
l890: sbcGE R4, R4, R12, ASR R7
l891: andHIs R1, R9, R7, ASR #17
l892: addLT R8, R8, #7104
l893: cmnNE R14, R15
l894: orrLS R10, R0, R1, RRX 
l895: bLT l901
l896: add R1, R0, #116
l897: orrLT R4, R8, #267386880
l898: cmnVS R1, R3
l899: add R9, R9, #121
l900: b l902
l901: b l897
l902: mvnVS R4, R3
l903: b l907
l904: add R1, R0, #213
l905: clzLE R0, R14
l906: b l908
l907: b l905
l908: b l915
l909: add R1, R0, #82
l910: eors R0, R3, R8, RRX 
l911: bic R12, R11, R12
l912: mvn R10, R10, ASR #28
l913: adds R14, R0, #40448
l914: b l916
l915: b l910
l916: cmnVC R11, #1425408
l917: tstLT R6, R14, LSR R12
l918: clzGT R3, R3
l919: mov R3, #20
l920: ldr R10, [sp, -R3]
l921: orrLS R5, R5, R9, ASR R6
l922: movHIs R2, R3, LSL #28
l923: mov R14, #32
l924: ldr R4, [sp, -R14]
l925: mvnLT R9, R12, LSL R11
l926: rsb R4, R4, R15, LSR #4
l927: sbcMIs R7, R12, R8
l928: b l932
l929: add R1, R0, #127
l930: orrCCs R0, R7, R1, LSL R6
l931: b l933
l932: b l930
l933: adcVS R11, R9, R3
l934: and R4, R10, R7, ROR R10
l935: subs R0, R8, R4, RRX 
l936: teqLT R5, R2
l937: orrLSs R6, R10, R6
l938: cmp R7, #2046820352
l939: tst R2, R5, RRX 
l940: rsbEQ R3, R11, R0, ROR #22
l941: adcs R9, R15, R12
l942: adc R14, R11, R3, ASR #16
l943: str R10, [sp], #-16
l944: movLT R5, R11, LSL #18
l945: mov R1, #8
l946: str R5, [sp, -R1]!
l947: ands R1, R8, #24064
l948: eorVCs R8, R2, R7, ASR #23
l949: teq R8, R1
l950: eorPLs R5, R11, #215
l951: orrLTs R2, R5, R0
l952: tst R5, #968884224
l953: cmnNE R5, R1
l954: tstNE R1, R0, LSR R5
l955: bicVS R12, R9, R8, ROR #27
l956: str R6, [sp, #-8]!
l957: subCCs R11, R8, R0, RRX 
l958: bCS l959
l959: mvnLE R3, R6, ROR #6
l960: b l966
l961: add R1, R0, #67
l962: subGE R7, R6, R5, RRX 
l963: sbcCS R14, R14, R11, LSL #10
l964: sub R9, R11, R14, ROR #14
l965: b l967
l966: b l962
l967: orrMIs R1, R2, #-536870900
l968: bicNEs R5, R11, R1, LSR R8
l969: movLEs R11, #55296
l970: b l977
l971: add R1, R0, #94
l972: eors R2, R6, R4
l973: orrNE R3, R2, #10432
l974: sbcGTs R9, R11, R6
l975: teq R2, #255
l976: b l978
l977: b l972
l978: adc R10, R8, R15, ROR #16
l979: movPL R9, #1610612737
l980: bNE l988
l981: addVCs R10, R12, R3, LSR #4
l982: cmnVS R10, R15
l983: adds R5, R2, #-1073741810
l984: cmp R9, R2
l985: clz R8, R12
l986: movMI R3, R4
l987: movCC R9, R11, ASR #18
l988: eorCC R9, R1, R9
l989: bic R4, R15, R1
l990: eorEQs R6, R1, R4
l991: str R0, [sp, #+0]
l992: mov R14, #20
l993: ldrMI R7, [sp, +R14]
l994: sbcMIs R10, R1, #444
l995: b l1000
l996: cmnGT R1, R9, LSR R8
l997: adds R1, R12, #28
l998: add R4, R5, #-2147483635
l999: mvns R4, #51200
l1000: sbcLE R1, R10, R6
l1001: mov R4, #36
l1002: strVS R0, [sp, +R4]
l1003: mov R1, #48
l1004: ldr R11, [sp], +R1
l1005: bMI l1011
l1006: andPL R4, R8, #3620864
l1007: sbc R12, R11, R5
l1008: tst R10, R9, LSL R10
l1009: adds R10, R3, R3, ASR #31
l1010: tst R2, R7, LSL #21
l1011: adcs R0, R11, R7, LSR #8
l1012: sbc R14, R2, R5
l1013: andNEs R7, R1, #235
l1014: subs R2, R14, #-201326592
l1015: clzCS R12, R2
l1016: tst R14, #1073741869
l1017: cmn R5, R5, ROR R4
l1018: mvns R14, R5
l1019: andVC R7, R7, R6, LSR R11
l1020: cmp R6, R4, ASR R7
l1021: cmnEQ R12, #2880
l1022: adc R0, R8, R5
l1023: bVS l1029
l1024: add R1, R0, #34
l1025: and R0, R5, R1, ROR #24
l1026: andEQs R6, R3, R15, ROR #25
l1027: teqMI R14, #-1543503871
l1028: b l1030
l1029: b l1025
l1030: andGE R11, R0, #149946368
l1031: eorCS R5, R8, #1207959552
l1032: mov R0, R8, ASR #2
l1033: bCC l1042
l1034: mvn R4, R10
l1035: subPL R10, R11, R5, LSL #2
l1036: teq R11, #-1476395005
l1037: addEQ R9, R10, R1, RRX 
l1038: cmnVC R5, R11, ROR R12
l1039: subLT R4, R3, R4
l1040: eorGT R2, R6, R12, LSL R12
l1041: movs R10, R11
l1042: ands R0, R5, R7
l1043: addLTs R2, R2, R5, LSL #3
l1044: tst R3, R2
l1045: clzLT R8, R7
l1046: mov R0, #56
l1047: ldr R3, [sp, -R0]!
l1048: mov R14, #60
l1049: ldr R2, [sp, +R14]!
l1050: tstCS R8, R11, LSL #4
l1051: cmp R3, #76546048
l1052: bicMI R14, R0, R11, ROR R8
l1053: subLS R0, R9, R5
l1054: orrVCs R8, R14, #23552
l1055: addGEs R6, R10, #213909504
l1056: adc R7, R14, R12, LSL R7
l1057: adds R9, R10, R12
l1058: tst R3, #57088
l1059: bLE l1067
l1060: eorLSs R12, R11, R7, RRX 
l1061: andGE R6, R15, #5308416
l1062: rscCSs R14, R12, R9, ASR #6
l1063: mvn R6, R1, ASR #1
l1064: cmpCS R1, R10
l1065: addMIs R5, R12, R4, LSR #28
l1066: orrs R12, R0, R4, LSL #21
l1067: subCSs R6, R10, R5, LSR R4
l1068: orrGEs R9, R1, R10, ASR #3
l1069: cmnLT R11, R1
l1070: rscGE R7, R4, #11264
l1071: addNEs R14, R9, R10
l1072: cmpLE R6, R8, LSR #27
l1073: sub R3, R14, R3, LSR #25
l1074: mov R6, #8
l1075: str R15, [sp, +R6]!
l1076: clzPL R0, R3
l1077: eor R0, R7, R7, LSR R3
l1078: movs R6, R14, ASR R3
l1079: subLE R7, R15, R0, LSL #22
l1080: adcGEs R4, R6, R12, LSR #20
l1081: orrGT R10, R8, R0, RRX 
l1082: cmpHI R3, R14, RRX 
l1083: orrCSs R11, R1, R6
l1084: tstEQ R5, R15, RRX 
l1085: rsbNE R4, R2, R8, RRX 
l1086: mov R8, #52
l1087: ldr R4, [sp, -R8]!
l1088: teq R12, R11, LSL #8
l1089: clzLE R4, R11
l1090: ands R2, R14, R6, LSL #19
l1091: sbcVC R2, R14, R11, RRX 
l1092: clzEQ R10, R5
l1093: sbcVS R4, R12, R8
l1094: movLS R6, R1
l1095: orrs R14, R2, R5, LSR #5
l1096: sbc R3, R8, #-1342177280
l1097: cmn R3, R9
l1098: tstVS R9, #640
l1099: teqLS R2, R12, ASR #29
l1100: adcHI R2, R9, #139460608
l1101: subEQs R6, R5, R12
l1102: sbcs R10, R3, #8320
l1103: mov R5, #48
l1104: ldr R1, [sp, +R5]
l1105: clzVC R9, R9
l1106: clz R3, R14
l1107: adcLEs R3, R10, #233472
l1108: ldrCC R8, [sp, #+12]
l1109: mvnNE R7, R3
l1110: cmpCS R12, R1, LSR R7
l1111: mvn R14, R6, ASR R11
l1112: orrs R2, R3, R4
l1113: clzNE R2, R4
l1114: andMIs R6, R14, R14, ROR #26
l1115: ldr R12, [sp, #+44]
l1116: subLS R8, R7, #64487424
l1117: cmnLE R3, R0, LSR R14
l1118: cmn R4, R3, LSR R7
l1119: bNE l1129
l1120: subs R7, R2, R12
l1121: teqGE R8, R14, LSR #1
l1122: sbcs R14, R12, R2
l1123: teq R12, R9
l1124: sbcLT R11, R15, R8
l1125: ands R6, R7, R14
l1126: bicNEs R4, R12, #143654912
l1127: subLEs R3, R1, #12608
l1128: cmnLT R2, R7, LSL #3
l1129: rscMI R2, R6, R9, ASR R14
l1130: eorHIs R8, R6, R7
l1131: cmnGT R11, R0, ASR R8
l1132: bLS l1136
l1133: clzHI R11, R2
l1134: bicLSs R11, R8, R14, RRX 
l1135: orr R0, R15, R7, LSL #2
l1136: sbcMI R0, R15, R0, ROR #18
l1137: bLE l1141
l1138: add R1, R0, #136
l1139: teqGT R10, R8, LSR #10
l1140: b l1142
l1141: b l1139
l1142: eor R4, R14, R3
l1143: cmn R5, R15, LSR #8
l1144: clzVS R8, R7
l1145: adcs R11, R0, R12
l1146: rsbs R10, R8, R14, LSL #25
l1147: bicMIs R14, R14, #15400960
l1148: tst R15, R1
l1149: bHI l1156
l1150: sbcLSs R1, R7, #225
l1151: bicMIs R0, R10, #-1744830463
l1152: movVCs R4, #0
l1153: orrGT R7, R7, R0
l1154: subCSs R10, R2, R2, LSL #10
l1155: subGTs R2, R0, R2, ASR #13
l1156: teq R3, #1556480
l1157: mvnGE R6, #119
l1158: rsbVC R4, R9, #45
l1159: mvnLTs R5, #0
l1160: tstPL R14, R15, RRX 
l1161: tstVC R15, #54263808
l1162: cmn R9, R4
l1163: tstLS R8, R1
l1164: str R7, [sp], #+24
l1165: bGT l1175
l1166: orr R1, R6, #104448
l1167: subLE R1, R2, R15
l1168: tstHI R9, #8384
l1169: ands R5, R4, R6
l1170: subs R5, R12, R0, LSR #6
l1171: subHIs R14, R4, R0, ROR #16
l1172: adds R9, R14, R7, ASR R0
l1173: eorNEs R14, R10, R12, ROR R3
l1174: mvnLTs R8, R9, ROR #3
l1175: rsc R3, R6, R5, LSL #15
l1176: cmp R14, R10, RRX 
l1177: ldr R9, [sp], #+8
l1178: sbcHI R8, R11, R5, ROR R5
l1179: cmp R11, #12320768
l1180: b l1187
l1181: add R1, R0, #67
l1182: rsbVC R7, R12, #26214400
l1183: mvns R3, R4, RRX 
l1184: subs R14, R7, #118784
l1185: bics R4, R8, R4, LSR R8
l1186: b l1188
l1187: b l1182
l1188: bicCSs R14, R4, R7, RRX 
l1189: andVCs R3, R12, R1, LSR #4
l1190: addLSs R10, R0, R1, LSR #20
l1191: cmp R7, #0
l1192: orrs R3, R12, R8, ASR #0
l1193: cmp R8, R0
l1194: bVS l1197
l1195: subs R5, R4, R11, ROR R8
l1196: bicPL R2, R12, R11
l1197: subs R10, R11, R5
l1198: andVSs R4, R3, R5
l1199: b l1203
l1200: add R1, R0, #248
l1201: sbcs R9, R12, R0
l1202: b l1204
l1203: b l1201
l1204: eorVSs R6, R1, R15, LSR #3
l1205: and R10, R3, #67108864
l1206: subCC R6, R11, R12, LSR R2
l1207: bHI l1211
l1208: rsb R2, R1, R1
l1209: cmn R1, R1, ROR R6
l1210: subGEs R1, R10, R8
l1211: clzHI R12, R7
l1212: mov R6, R12, RRX 
l1213: adcGTs R10, R14, R11, LSL R5
l1214: adcLTs R10, R14, #68
l1215: bCS l1217
l1216: rsc R14, R4, R9, LSL #0
l1217: ands R8, R5, R7, ROR #4
l1218: eorGEs R8, R5, R2
l1219: adds R1, R10, R8
l1220: cmn R11, R11, ROR R3
l1221: sbc R7, R2, R10, LSL #26
l1222: mov R4, R12, ASR R5
l1223: teq R11, R1
l1224: eorGE R14, R3, #1344
l1225: subHI R8, R8, R8, ASR R12
l1226: rsbEQs R10, R7, R11
l1227: cmpVC R10, R8, RRX 
l1228: clz R11, R2
l1229: ldr R1, [sp, #+8]!
l1230: mov R0, #32
l1231: str R0, [sp, -R0]!
l1232: eorLTs R12, R12, R14, RRX 
l1233: tstNE R14, #16
l1234: subLS R9, R6, R9, ROR R4
l1235: eor R6, R7, R11
l1236: clzHI R10, R8
l1237: tstVC R7, R9, ASR R3
l1238: andLE R6, R0, R4
l1239: teq R5, R12, LSL R12
l1240: subEQ R3, R0, R3, LSR #17
l1241: orrs R9, R5, R1
l1242: cmpNE R9, R9, LSR R14
l1243: and R14, R11, R0
l1244: rscVC R11, R12, R14, ASR #0
l1245: sbcs R8, R15, R4, LSR #21
l1246: eorLSs R4, R3, R4
l1247: cmp R1, #1696
l1248: sbcVC R0, R6, R10
l1249: eors R4, R10, R0, RRX 
l1250: sbcs R5, R10, R12, ROR R1
l1251: rsb R7, R9, R14, ROR R11
l1252: bics R4, R1, R15
l1253: eorLS R10, R0, R3, RRX 
l1254: strGT R3, [sp, #-20]
l1255: subNEs R1, R7, #136314880
l1256: teqHI R0, #520192
l1257: teq R8, #1073741881
l1258: ands R4, R7, R3, ASR R5
l1259: addVSs R7, R9, R9
l1260: eorLE R1, R1, R2, ASR #25
l1261: bHI l1266
l1262: add R1, R0, #214
l1263: teqGT R14, #1006632962
l1264: subCS R4, R0, #688
l1265: b l1267
l1266: b l1263
l1267: movs R5, R10, LSR R2
l1268: mvns R0, R5
l1269: ldr R7, [sp, #+36]
l1270: andGEs R11, R15, R5, RRX 
l1271: movEQs R1, #393216
l1272: sbcVC R9, R9, #552960
l1273: rsbGTs R4, R12, R6
l1274: andLEs R1, R10, #1776
l1275: mvns R12, R0, ASR #0
l1276: subCCs R9, R8, R7, ASR #20
l1277: adcLT R11, R15, R12
l1278: add R9, R5, R11, ROR R11
l1279: adcGT R8, R7, R10
l1280: cmnVC R10, #137
l1281: clz R1, R9
l1282: ldr R14, [sp, #+48]
l1283: teq R9, R12, ASR R14
l1284: adcMI R0, R3, R15
l1285: bLS l1290
l1286: add R1, R0, #66
l1287: teq R0, R3
l1288: orr R2, R12, R11, RRX 
l1289: b l1291
l1290: b l1287
l1291: sbcEQs R11, R5, R4, RRX 
l1292: movEQs R7, #480
l1293: mvn R2, R7, ROR #30
l1294: b l1297
l1295: sbcEQ R4, R7, R5
l1296: movVS R6, R7, ROR #30
l1297: clzLS R14, R1
l1298: ldr R0, [sp, #+24]!
l1299: orr R12, R6, R9
l1300: mvn R0, R15, LSR #7
l1301: rscs R1, R9, #4800
l1302: bicVS R3, R15, R4, RRX 
l1303: rsbPL R11, R14, R1
l1304: teqNE R15, R1, RRX 
l1305: and R0, R9, #340
l1306: sbcCSs R5, R14, R4, LSL R0
l1307: rscPLs R14, R3, R6
l1308: orrCS R11, R5, #1879048206
l1309: cmnEQ R12, R15, RRX 
l1310: tstPL R10, R0, RRX 
l1311: tst R14, #8896
l1312: clz R10, R11
l1313: bicLT R12, R14, R8
l1314: addCCs R6, R9, R5, ASR R9
l1315: rscs R6, R15, R14
l1316: cmn R4, R6, ASR R3
l1317: bic R12, R0, R14
l1318: subPL R6, R4, R3, ASR R12
l1319: adcCCs R7, R2, R11
l1320: rsb R4, R9, R10, LSL #28
l1321: movs R8, R1, RRX 
l1322: add R7, R5, R3
l1323: subs R10, R6, R8, ASR R7
l1324: orrs R5, R4, R5, ROR R10
l1325: adc R8, R4, R0
l1326: teqGT R4, R12, LSR R5
l1327: tstLE R3, #847249408
l1328: teqHI R6, R1, ROR R5
l1329: add R10, R6, R5
l1330: sbcLTs R7, R14, #835584
l1331: tst R2, R9
l1332: andGE R2, R1, R9
l1333: subs R4, R9, R5, LSR R7
l1334: subLEs R3, R15, R14
l1335: str R0, [sp, #+12]
l1336: bCS l1346
l1337: eorCSs R1, R10, R15
l1338: cmpPL R10, R1, RRX 
l1339: bics R9, R4, R1
l1340: subs R11, R8, R1, ROR #26
l1341: cmp R4, #3702784
l1342: adc R0, R2, R5, ROR R0
l1343: subNE R4, R5, R10, ROR #19
l1344: clzMI R3, R7
l1345: sbcHIs R5, R4, R2, LSR #18
l1346: subNEs R1, R4, R2, LSR #30
l1347: clz R4, R12
l1348: adcPL R1, R8, R10, ROR R8
l1349: addGT R4, R3, R12, LSR #11
l1350: bic R12, R11, R6, LSL R14
l1351: strLS R7, [sp, #+0]
l1352: rsbGE R2, R10, #892928
l1353: teqNE R7, R3, LSR #3
l1354: bCS l1364
l1355: addGE R2, R12, R4, ROR #22
l1356: teqVS R2, R12
l1357: rsc R1, R14, #56623104
l1358: bicNEs R0, R10, #145
l1359: adcHIs R4, R0, #202
l1360: cmn R15, R5
l1361: subs R4, R8, R7
l1362: cmpLT R11, #423624704
l1363: rsbs R5, R3, R15, LSR #6
l1364: tstPL R4, R10, ASR #21
l1365: subCS R9, R2, R9
l1366: teqCS R1, R12
l1367: rscLS R3, R9, R0, LSL R14
l1368: bNE l1376
l1369: sbc R12, R10, R9, LSL R6
l1370: sbcs R4, R3, R4, ROR R5
l1371: movVSs R10, #-553648128
l1372: rsc R7, R4, R9, LSR R6
l1373: bics R5, R1, R7, LSL R8
l1374: cmp R5, R14, RRX 
l1375: subLS R12, R7, #628
l1376: adcCCs R0, R9, R14
l1377: bLE l1381
l1378: add R1, R0, #144
l1379: adcGEs R0, R4, R14, ROR #29
l1380: b l1382
l1381: b l1379
l1382: movLE R10, R3
l1383: add R8, R3, R6, LSR R11
l1384: mov R0, #24
l1385: ldr R12, [sp], -R0
l1386: clz R6, R2
l1387: addVS R8, R7, #230686720
l1388: sbcCSs R9, R2, #-1879048185
l1389: andVS R14, R5, #406847488
l1390: sbcPL R2, R3, R1, ROR #19
l1391: rscCCs R7, R1, R10
l1392: subs R2, R6, R11, LSL #5
l1393: clzVS R8, R0
l1394: addEQs R6, R15, R4
l1395: rsb R7, R4, R5, ASR R1
l1396: add R6, R3, #2424832
l1397: bCC l1403
l1398: teq R6, #939524096
l1399: eorGEs R0, R3, #484
l1400: cmnVS R10, R3
l1401: bicLTs R12, R12, R7, LSL R14
l1402: tst R9, R14, ROR #3
l1403: movs R2, R5, ASR #15
l1404: cmnCC R8, #54
l1405: teqVS R8, R10, LSR R2
l1406: rscCCs R10, R11, R14, LSL #19
l1407: eorCS R8, R11, #2013265920
l1408: b l1415
l1409: eorHIs R3, R11, R11, ASR R4
l1410: cmp R3, R0
l1411: mvnMIs R6, #217088
l1412: teq R6, R3, ASR R3
l1413: andGE R10, R10, #184320
l1414: bicHI R0, R14, R3, RRX 
l1415: cmn R11, #12800
l1416: b l1425
l1417: add R1, R0, #181
l1418: add R7, R3, R7, ROR #28
l1419: mvnCCs R12, #-134217727
l1420: tst R5, #1019904
l1421: teq R5, R15, LSL #20
l1422: cmpLT R5, R8, ROR R12
l1423: rsbCCs R2, R8, R11
l1424: b l1426
l1425: b l1418
l1426: b l1433
l1427: add R1, R0, #69
l1428: cmn R0, R7, RRX 
l1429: movs R4, R4, ASR R0
l1430: clzGE R12, R0
l1431: mvns R7, R1, RRX 
l1432: b l1434
l1433: b l1428
l1434: mov R10, #0
l1435: str R15, [sp, +R10]!
l1436: bics R10, R1, R11
l1437: bNE l1445
l1438: add R1, R0, #75
l1439: bicPLs R5, R15, R8, LSL #8
l1440: cmp R2, #134217728
l1441: rsbCS R12, R6, R11, RRX 
l1442: orr R14, R6, R11, RRX 
l1443: orrMIs R5, R2, R6, LSR #3
l1444: b l1446
l1445: b l1439
l1446: orrLEs R8, R3, R10, RRX 
l1447: adc R10, R8, R6, ROR R14
l1448: subHIs R9, R14, R1, ASR #11
l1449: cmn R6, R9, ROR R5
l1450: eors R1, R14, R12, LSR R3
l1451: orrMIs R7, R9, R10, LSR R6
l1452: adc R3, R8, R9
l1453: bicHIs R12, R5, R6, LSR R1
l1454: sub R8, R5, R7, RRX 
l1455: andCCs R4, R8, R14
l1456: cmpLE R5, R15, LSR #31
l1457: mvnVCs R14, R0, LSL R8
l1458: and R11, R7, R3, LSR R2
l1459: rscs R2, R10, #33554432
l1460: rsb R12, R3, R7, LSL R1
l1461: rsbGT R4, R5, R5
l1462: subGT R3, R14, R12, LSR R10
l1463: b l1466
l1464: bic R14, R1, R1
l1465: orr R12, R12, #-1677721600
l1466: teq R7, R8, LSL #19
l1467: addLE R11, R8, R5
l1468: mov R9, #4
l1469: str R9, [sp, +R9]!
l1470: clz R3, R5
l1471: mov R9, #8
l1472: ldr R4, [sp, +R9]!
l1473: rsbLT R6, R4, R8
l1474: tstCS R10, R9, ASR R12
l1475: adcCS R9, R14, #143360
l1476: cmnCS R2, #1677721600
l1477: adcCCs R14, R15, R15, RRX 
l1478: andMIs R14, R15, R12, ROR #17
l1479: rscs R4, R2, R2, RRX 
l1480: strHI R0, [sp, #-20]
l1481: adds R11, R6, #40192
l1482: mvns R10, R5
l1483: strEQ R5, [sp, #+12]
l1484: bics R2, R6, R12, ROR R4
l1485: orrMIs R11, R8, R0, LSR R9
l1486: subCSs R2, R1, R15
l1487: clzCS R10, R7
l1488: addLSs R1, R15, R10, LSR #24
l1489: bicEQ R9, R15, R12, ASR #12
l1490: bEQ l1496
l1491: adcCS R12, R12, R7
l1492: orrMI R6, R7, R6, LSR #4
l1493: rsc R3, R2, R12, ROR #27
l1494: orrs R0, R8, R5, ASR R12
l1495: teq R5, R2, ROR #21
l1496: subs R6, R7, #10240
l1497: and R3, R5, R8, ASR R14
l1498: mov R4, #28
l1499: str R12, [sp, -R4]!
l1500: orrLE R9, R1, R11, LSR R5
l1501: movLS R2, R10, RRX 
l1502: ands R9, R0, R4, ROR R8
l1503: bVC l1505
l1504: eors R6, R9, R11, ROR #16
l1505: tstGT R15, R4, LSL #5
l1506: b l1514
l1507: add R1, R0, #152
l1508: bicCC R12, R7, #8960
l1509: sbcVC R7, R6, R7
l1510: cmn R9, #245760
l1511: eors R2, R1, R7, LSR R10
l1512: cmpGE R8, R1, ROR R14
l1513: b l1515
l1514: b l1508
l1515: subLT R11, R8, #7936
l1516: rscMI R0, R10, R0, LSL R7
l1517: tst R10, R11, RRX 
l1518: str R10, [sp, #-8]!
l1519: cmpVC R2, R15
l1520: andGEs R4, R2, #2432
l1521: b l1529
l1522: add R1, R0, #60
l1523: sub R2, R4, R4, ROR #25
l1524: rsbVC R3, R15, R10
l1525: orrs R14, R11, R14, RRX 
l1526: sub R6, R11, R8, ASR #1
l1527: adcVC R7, R3, R10, ROR R9
l1528: b l1530
l1529: b l1523
l1530: orrMIs R0, R4, R10
l1531: b l1541
l1532: rsbVS R8, R14, R6, LSR R9
l1533: subMIs R0, R12, #205
l1534: movHI R12, #1552
l1535: bics R9, R7, R0
l1536: adcs R8, R11, R3, ROR R0
l1537: mvnNEs R2, R2
l1538: subs R9, R9, #440
l1539: rsb R6, R4, R9, LSL R5
l1540: cmp R7, R8
l1541: bic R9, R8, R9, ROR R9
l1542: rscCC R11, R1, R1
l1543: clzGE R10, R8
l1544: teqEQ R12, R6, LSL R2
l1545: eorLEs R12, R11, #491520
l1546: subGE R5, R6, R3, ROR #24
l1547: eors R14, R11, R8, ROR #7
l1548: mvns R3, R12, LSR #27
l1549: cmpLE R4, R15
l1550: addGEs R9, R3, #236
l1551: bVC l1556
l1552: add R1, R0, #165
l1553: cmnEQ R4, #2818048
l1554: mvnVSs R12, R4, LSL #26
l1555: b l1557
l1556: b l1553
l1557: orrEQ R14, R2, R15
l1558: bLT l1562
l1559: add R1, R0, #229
l1560: cmn R14, R10, ASR R8
l1561: b l1563
l1562: b l1560
l1563: cmp R11, R11, ASR #8
l1564: andEQ R12, R4, R2, RRX 
l1565: sbcLTs R0, R9, R10
l1566: rscs R8, R12, R15
l1567: bicNEs R10, R9, #47972352
l1568: rscLEs R0, R3, R12, LSR #28
l1569: rscVSs R0, R0, R11, RRX 
l1570: rsbs R2, R8, #745472
l1571: bLS l1578
l1572: add R1, R0, #82
l1573: orrs R6, R2, #192512
l1574: adc R11, R10, #612
l1575: sbc R2, R8, R10, ROR R14
l1576: cmn R15, R10, RRX 
l1577: b l1579
l1578: b l1573
l1579: b l1581
l1580: rscs R8, R15, #412
l1581: rsbCS R5, R7, R10
l1582: orrHI R1, R5, R2, ASR #16
l1583: tst R15, R1
l1584: teqMI R3, R14, LSR R11
l1585: subLT R14, R6, R15, ROR #16
l1586: subLE R8, R14, R5, ROR #8
l1587: bGE l1594
l1588: add R1, R0, #31
l1589: teq R15, R10, LSR #0
l1590: rsc R0, R11, R6
l1591: orrLE R2, R11, #356352
l1592: sbcVCs R7, R8, R0
l1593: b l1595
l1594: b l1589
l1595: adcs R9, R15, R3
l1596: tstCS R3, R0, LSR R3
l1597: cmnMI R3, R4, ROR R14
l1598: sbcLS R9, R10, #778240
l1599: sbc R9, R5, R3, RRX 
l1600: add R11, R4, R12, RRX 
l1601: cmn R11, R14
l1602: andVCs R0, R15, R8, RRX 
l1603: bCC l1612
l1604: clz R6, R10
l1605: teqEQ R10, R15
l1606: sbcMI R2, R1, R10, LSR #28
l1607: sbcMIs R7, R1, R0, ASR #10
l1608: mvnMI R8, R10, ASR R8
l1609: sbcs R6, R6, #3211264
l1610: addVC R9, R7, R12
l1611: eorCCs R10, R15, R12, LSL #3
l1612: tstLS R7, R4
l1613: subCSs R9, R9, #243269632
l1614: cmnVC R2, #4194304
l1615: rscNE R12, R4, R11, ROR R12
l1616: orrGEs R6, R3, R14
l1617: eors R14, R2, R6
l1618: rsbGEs R12, R14, R2
l1619: subLS R1, R7, R12, LSR #25
l1620: adcVC R8, R8, R6, LSL #11
l1621: mov R8, #72
l1622: ldr R11, [sp, +R8]
l1623: teq R12, R8, ASR R1
l1624: cmnPL R4, #15728640
l1625: ldr R12, [sp, #+56]
l1626: cmpGT R6, #146800640
l1627: orrMIs R12, R2, R15
l1628: cmn R10, R0
l1629: andGE R4, R3, R6
l1630: orrs R7, R12, R9
l1631: ands R7, R4, #59244544
l1632: tstLE R14, R8, RRX 
l1633: strHI R3, [sp, #+40]
l1634: rsbs R1, R5, R1
l1635: teq R6, #3899392
l1636: bLE l1643
l1637: cmpEQ R4, R3, LSL #2
l1638: subGTs R5, R2, #201326592
l1639: sub R0, R4, #99
l1640: rscPL R5, R6, R10, ASR #28
l1641: orrs R12, R4, R1, LSL #17
l1642: eor R2, R15, #461373440
l1643: teq R12, R15, LSL #22
l1644: adcs R6, R5, #150528
l1645: clz R3, R0
l1646: b l1654
l1647: add R1, R0, #90
l1648: movs R10, R2
l1649: tstMI R0, #62464
l1650: addHI R2, R15, #86016
l1651: cmnLE R3, R2, RRX 
l1652: rsc R7, R15, R4, RRX 
l1653: b l1655
l1654: b l1648
l1655: tst R8, R8
l1656: cmp R15, R12, ROR #20
l1657: subs R4, R4, R15, ROR #20
l1658: addHIs R10, R5, #222298112
l1659: sub R4, R10, R8, ROR R3
l1660: b l1669
l1661: add R1, R0, #61
l1662: cmpLT R3, R1, LSL R5
l1663: mvnHI R9, #39424
l1664: andLTs R6, R7, R14
l1665: cmn R7, R8, ASR #23
l1666: rscVS R14, R0, R12
l1667: bicMIs R4, R10, R8, LSR R8
l1668: b l1670
l1669: b l1662
l1670: addEQ R14, R10, R7
l1671: mvnLT R2, R5, RRX 
l1672: bCS l1681
l1673: add R1, R0, #120
l1674: cmnGE R9, #10027008
l1675: orrLS R9, R3, #-1073741782
l1676: bicHIs R8, R2, R14, ROR #16
l1677: cmpLS R5, R7, RRX 
l1678: mvnLS R14, R11, RRX 
l1679: sub R9, R3, #610304
l1680: b l1682
l1681: b l1674
l1682: bGT l1687
l1683: add R1, R0, #147
l1684: rsbs R8, R1, R6, RRX 
l1685: orrGE R8, R6, R2
l1686: b l1688
l1687: b l1684
l1688: bLT l1694
l1689: add R1, R0, #25
l1690: subLS R0, R11, R2, LSL #4
l1691: cmnHI R0, #3260416
l1692: cmn R10, R14, ASR #26
l1693: b l1695
l1694: b l1690
l1695: mov R0, #64
l1696: ldr R0, [sp, +R0]!
l1697: bicLE R2, R2, R14
l1698: sbcMI R4, R6, R12, ROR R14
l1699: sub R10, R0, R8
l1700: mvn R2, R9, ROR R10
l1701: addCC R11, R3, R4
l1702: rsb R1, R10, R14
l1703: movVSs R4, R4, ASR R7
l1704: mov R12, #48
l1705: ldr R10, [sp], -R12
l1706: teqPL R11, #9175040
l1707: clz R7, R10
l1708: andVCs R11, R15, #268435464
l1709: subs R4, R1, R11, LSR #8
l1710: mov R11, #16
l1711: str R15, [sp, -R11]!
l1712: cmn R3, R5
l1713: addLS R8, R14, R4
l1714: cmpEQ R11, R7, LSL R0
l1715: eorVSs R0, R1, R9, ROR R7
l1716: cmnLT R1, R2, ASR R8
l1717: cmpVS R2, R5, ASR R2
l1718: rscEQs R8, R6, R15, RRX 
l1719: movLE R1, R5, LSR R8
l1720: rscMI R7, R8, R2, ROR R9
l1721: sub R0, R3, R9
l1722: cmpHI R5, R0, ROR #3
l1723: addVS R7, R11, R15
l1724: eorVC R9, R12, #112640
l1725: str R2, [sp, #+64]!
l1726: mvnLS R10, R4, ROR #16
l1727: cmpVS R11, R8
l1728: orrVS R8, R0, R15
l1729: cmpLE R4, #12058624
l1730: cmpLS R7, R0, RRX 
l1731: teqCS R3, R7
l1732: ands R7, R2, #44
l1733: orrNE R2, R6, R12, LSL #15
l1734: cmn R8, R9, LSL #23
l1735: clzVC R3, R10
l1736: rsbLTs R11, R5, R14, LSL R4
l1737: mov R4, #4
l1738: ldr R3, [sp], -R4
l1739: bCC l1747
l1740: add R1, R0, #219
l1741: clz R10, R10
l1742: tst R15, R14
l1743: sbc R4, R11, R14, LSR #29
l1744: clzPL R10, R10
l1745: orrHIs R8, R10, R2
l1746: b l1748
l1747: b l1741
l1748: sub R3, R15, R14, ROR #6
l1749: b l1757
l1750: add R1, R0, #160
l1751: rsbVSs R6, R3, R4
l1752: orrs R12, R12, #528
l1753: cmn R8, R3, ROR R0
l1754: adds R4, R8, R14, LSL #14
l1755: adc R5, R3, R1, LSR #26
l1756: b l1758
l1757: b l1751
l1758: ands R9, R7, #26214400
l1759: bic R5, R2, R14, LSL #31
l1760: teqGT R1, R14, RRX 
l1761: sbcs R0, R3, #1073741879
l1762: subLS R11, R0, #2080374786
l1763: cmpPL R6, R10, LSL R5
l1764: teqGT R15, R8, ASR #30
l1765: mov R8, #0
l1766: str R14, [sp, +R8]!
l1767: clz R8, R10
l1768: sbcLSs R1, R4, #33
l1769: bicCS R3, R3, #-1073741801
l1770: andLSs R11, R5, #-2147483623
l1771: b l1775
l1772: add R1, R0, #130
l1773: cmp R8, R0, LSR R4
l1774: b l1776
l1775: b l1773
l1776: adds R12, R8, R11, RRX 
l1777: ldrNE R4, [sp, #-4]
l1778: addLT R7, R9, #-536870910
l1779: subs R5, R8, #52
l1780: mvns R10, R2, RRX 
l1781: teqVS R7, R6, RRX 
l1782: orrLE R6, R3, R15
l1783: bicNEs R0, R7, R8, LSR #20
l1784: and R11, R14, R6, ROR #30
l1785: bic R11, R2, R8
l1786: cmp R9, #1073741836
l1787: sbcLE R11, R14, R5, RRX 
l1788: tstMI R4, R0, LSR #31
l1789: subMI R14, R4, R15
l1790: sbcCCs R1, R3, R14, RRX 
l1791: tst R10, R9, ROR #4
l1792: b l1798
l1793: cmp R4, R4, ASR R4
l1794: andGEs R5, R10, #55552
l1795: tst R2, R10, ASR #4
l1796: subLS R7, R11, R2
l1797: andGTs R14, R7, R14, RRX 
l1798: mvnLTs R6, R11
l1799: addLSs R5, R9, R1, LSL R11
l1800: subMIs R9, R6, R9, LSR R8
l1801: subEQs R2, R3, #1879048194
l1802: bGT l1811
l1803: mvnNE R8, R8, LSL R6
l1804: subs R4, R12, #1073741824
l1805: and R4, R6, R12, ASR #28
l1806: rscLT R10, R14, #1622016
l1807: clzGT R2, R3
l1808: cmnGT R6, R1
l1809: eors R1, R2, R3, RRX 
l1810: clz R0, R7
l1811: bicLEs R3, R3, R15
l1812: tst R9, #3407872
l1813: adcGEs R1, R7, R10
l1814: bGE l1822
l1815: add R1, R0, #100
l1816: ands R7, R1, R3, RRX 
l1817: eorPLs R6, R5, R15, RRX 
l1818: tstCC R6, #28
l1819: adcPL R9, R8, R1, LSR #26
l1820: andNEs R6, R7, R5, LSR #31
l1821: b l1823
l1822: b l1816
l1823: rsb R3, R5, R9, LSL #30
l1824: subs R7, R9, R5, LSR #30
l1825: adds R1, R14, R1, ROR #21
l1826: eorCCs R1, R4, #63
l1827: rscs R2, R6, R11
l1828: addLS R4, R11, #618496
l1829: tst R8, R1, LSL R2
l1830: b l1838
l1831: cmn R7, R3, LSL #5
l1832: bics R3, R0, R8, RRX 
l1833: clz R10, R9
l1834: clzCS R6, R11
l1835: add R3, R11, R14, ROR R11
l1836: rscGE R0, R2, R0, LSL #18
l1837: clzLT R7, R4
l1838: bics R14, R8, R7, ASR #18
l1839: bCC l1849
l1840: clzLE R7, R11
l1841: add R11, R15, R0, LSR #23
l1842: bicGTs R0, R11, #983040
l1843: bic R4, R5, #1073741845
l1844: rscMI R0, R3, R12, LSR R10
l1845: rsb R10, R2, R15
l1846: tstLS R15, R1, RRX 
l1847: sbcVSs R0, R7, R11, ROR #14
l1848: rsbs R4, R1, R11
l1849: and R7, R1, R4, ROR #14
l1850: eorVSs R0, R14, R1
l1851: andGE R1, R7, R14, ROR R3
l1852: rsc R1, R14, R7, ROR #26
l1853: bLS l1860
l1854: add R1, R0, #42
l1855: clz R7, R4
l1856: movCS R10, #1073741863
l1857: bic R2, R9, R14, LSR #31
l1858: cmp R14, #-838860800
l1859: b l1861
l1860: b l1855
l1861: ldr R10, [sp], #-20
l1862: adcs R9, R6, #45824
l1863: mov R1, #28
l1864: ldr R14, [sp, +R1]!
l1865: eor R9, R15, R0
l1866: rscs R5, R8, R11
l1867: andVC R3, R3, R9
l1868: rsc R0, R12, R3
l1869: mvn R4, R6, RRX 
l1870: cmpCS R4, R14, ASR R1
l1871: cmnNE R8, #851968
l1872: cmnLE R2, R4, ROR #14
l1873: addHI R7, R5, R10, ROR #25
l1874: bLT l1883
l1875: add R1, R0, #114
l1876: addEQ R9, R6, R8, RRX 
l1877: rscs R7, R9, R0, ASR #30
l1878: teqPL R10, R9
l1879: adcNE R4, R15, #3264
l1880: tstHI R0, R7, ROR #9
l1881: movMIs R5, R5, ROR #15
l1882: b l1884
l1883: b l1876
l1884: bCS l1892
l1885: add R1, R0, #62
l1886: subs R11, R4, R10, ROR #18
l1887: clzCC R14, R4
l1888: orrs R4, R15, R9, RRX 
l1889: subCS R3, R1, R15, ROR #2
l1890: addLEs R0, R9, R12, RRX 
l1891: b l1893
l1892: b l1886
l1893: sub R1, R7, #918552576
l1894: mov R8, #4
l1895: ldr R8, [sp, -R8]
l1896: addVSs R1, R5, R0, RRX 
l1897: bEQ l1903
l1898: teq R8, R14, ASR R14
l1899: bic R2, R1, R4, ROR #23
l1900: cmnVC R2, R10
l1901: subCS R9, R2, R10
l1902: cmp R9, R8, LSL #23
l1903: subs R7, R6, R0
l1904: and R5, R4, R10
l1905: b l1909
l1906: mvnPLs R5, #-268435456
l1907: orr R10, R2, R2
l1908: cmn R8, R4, LSL #1
l1909: sbcNE R2, R15, R8
l1910: cmpVS R1, #193986560
l1911: eorLS R3, R15, R0
l1912: b l1918
l1913: add R1, R0, #217
l1914: cmn R11, #1552
l1915: mvnGT R0, R11, ROR R5
l1916: clzVC R11, R14
l1917: b l1919
l1918: b l1914
l1919: rscVSs R0, R14, R8
l1920: eorCCs R4, R0, R9, RRX 
l1921: bLS l1930
l1922: add R1, R0, #105
l1923: teq R6, R5, ASR #13
l1924: subCCs R5, R2, R6, LSR #3
l1925: addLEs R4, R4, R10, ROR #17
l1926: adcs R6, R2, R9
l1927: sbcs R0, R15, R11, LSR #13
l1928: sbcHIs R9, R7, #2965504
l1929: b l1931
l1930: b l1923
l1931: mvnHI R12, R1
l1932: bicVSs R0, R4, R0
l1933: addGEs R12, R15, #14464
l1934: rscNE R12, R0, R7, ASR #18
l1935: orrGTs R6, R5, R6, LSR R2
l1936: eorVS R8, R6, R10, ROR R7
l1937: str R7, [sp], #-68
l1938: bEQ l1942
l1939: add R1, R0, #189
l1940: rscs R12, R5, R11, LSR #10
l1941: b l1943
l1942: b l1940
l1943: teq R2, R6
l1944: addGTs R14, R4, #224
l1945: bCC l1950
l1946: mov R11, R3, LSL #9
l1947: adcHI R7, R1, R8, ASR #8
l1948: adcs R8, R10, R11, LSR #29
l1949: cmpNE R7, #2624
l1950: adcs R5, R9, R0, LSR #21
l1951: tstLT R3, #67108864
l1952: cmn R15, R15, RRX 
l1953: rscLT R4, R2, R4, RRX 
l1954: subs R11, R11, #205824
l1955: subLS R12, R5, R14, RRX 
l1956: eor R4, R2, R14
l1957: eorLTs R12, R7, R15
l1958: teq R12, #6553600
l1959: rscPLs R12, R8, R0, RRX 
l1960: orrGT R9, R6, R14
l1961: andVSs R2, R2, R10
l1962: bicVC R1, R2, R9
l1963: adcCCs R14, R12, R7, LSL #14
l1964: b l1970
l1965: add R1, R0, #141
l1966: cmpPL R4, #637534208
l1967: orrVC R0, R5, R4, RRX 
l1968: bicGEs R9, R0, #41943040
l1969: b l1971
l1970: b l1966
l1971: b l1981
l1972: teqGT R12, R2, ROR R1
l1973: adcs R9, R4, R2
l1974: cmnLS R9, #137216
l1975: subGE R7, R15, R9, LSR #30
l1976: addNEs R0, R2, #-1946157056
l1977: addHI R1, R2, R6
l1978: bicLS R9, R4, R12
l1979: clz R7, R4
l1980: cmp R5, R5, ASR #16
l1981: addCCs R6, R12, #82
l1982: b l1992
l1983: rsbLTs R4, R11, R14, RRX 
l1984: movCC R5, R11, LSL R14
l1985: subCCs R11, R14, R14, LSL R4
l1986: tst R0, #1294336
l1987: andEQs R11, R10, R2
l1988: rscGTs R2, R4, R3, RRX 
l1989: cmpNE R3, #416
l1990: rsbLSs R12, R11, R4, RRX 
l1991: cmnPL R7, #176160768
l1992: rsb R12, R3, R2, RRX 
l1993: bics R11, R4, #-352321536
l1994: movs R14, R3
l1995: bic R9, R0, R6
l1996: teq R7, R7, LSR R8
l1997: clzEQ R1, R12
l1998: b l2004
l1999: adcs R2, R7, #180224
l2000: rsb R14, R6, R1
l2001: tst R0, R8, ROR #3
l2002: bicPL R7, R11, #3538944
l2003: tst R14, R6, ROR #10
l2004: mvnCSs R12, R7
l2005: clzLT R11, R3
l2006: sbcLTs R1, R4, #-805306366
l2007: bLE l2015
l2008: sub R9, R1, #2304
l2009: mvnEQ R5, R9, ROR #8
l2010: andPL R1, R14, R8, LSR #15
l2011: addGTs R12, R4, #104
l2012: eorGE R7, R8, R9, LSL R6
l2013: clz R1, R5
l2014: rscCS R4, R15, R4, ASR #18
l2015: subLEs R2, R14, R9, ROR R8
l2016: cmpVS R12, #80
l2017: rsc R0, R11, R12
l2018: cmpGT R12, R14, LSR #9
l2019: sbcHI R2, R2, R9, LSR #20
l2020: addNEs R8, R12, #16056320
l2021: subs R11, R9, #1114112
l2022: bicPL R0, R8, R3, ROR R14
l2023: bHI l2024
l2024: rsbVSs R1, R3, R12
l2025: bPL l2030
l2026: add R1, R0, #135
l2027: sbc R9, R9, R14
l2028: ands R5, R6, R1, ROR #7
l2029: b l2031
l2030: b l2027
l2031: bLS l2033
l2032: andNE R9, R1, #268435456
l2033: teq R9, R8
l2034: andMI R6, R10, R1, ASR R14
l2035: cmnNE R10, R1, RRX 
l2036: sbcGE R10, R3, #3760
l2037: orrCCs R11, R6, R6, ROR #3
l2038: movs R9, #917504
l2039: orrEQ R6, R11, #-671088638
l2040: cmp R9, R6, ASR R5
l2041: bicVS R6, R9, R14, RRX 
l2042: eorNE R1, R14, R11, LSR #19
l2043: subCS R4, R9, #-805306363
l2044: orrHIs R1, R10, #39845888
l2045: adcVS R1, R11, R4, RRX 
l2046: teqLS R4, R9, LSL #31
l2047: bLT l2056
l2048: sbcHI R12, R6, R14, ROR R9
l2049: clz R8, R11
l2050: teq R2, #369098752
l2051: sbc R2, R11, R7, ASR R10
l2052: sbc R9, R15, R3, LSR #22
l2053: rsbLTs R11, R1, R9
l2054: movLSs R1, #458752
l2055: andLTs R12, R0, R6, ROR #8
l2056: tst R5, R10, ASR R4
l2057: eors R5, R8, R8
l2058: orrGTs R6, R0, R8, ROR #17
l2059: addCC R6, R15, R14, LSR #10
l2060: rsbGE R5, R3, R2, ROR #2
l2061: teq R1, R14
l2062: eors R10, R4, R1, LSL R4
l2063: subs R0, R10, R9, RRX 
l2064: subVS R10, R3, #3145728
l2065: subGTs R8, R7, R2, ASR R12
l2066: add R8, R12, R12, ASR R1
l2067: rsb R14, R6, #64225280
l2068: b l2077
l2069: rscLT R12, R0, #237
l2070: adcs R8, R9, #0
l2071: tstMI R5, #3232
l2072: rscVCs R2, R3, R1, ASR #2
l2073: teqMI R10, #3328
l2074: bicGTs R0, R9, R8
l2075: tstVS R5, R5, RRX 
l2076: clzEQ R0, R4
l2077: cmp R8, R7
l2078: bLE l2084
l2079: add R1, R0, #36
l2080: andHI R4, R15, #802816
l2081: adcCCs R12, R2, R12
l2082: rsc R4, R14, #268435460
l2083: b l2085
l2084: b l2080
l2085: clzGE R14, R11
l2086: str R0, [sp], #+48
l2087: eorCCs R10, R8, R10, LSR #21
l2088: cmp R2, R4, LSL R9
l2089: and R9, R6, R14, LSR R2
l2090: rsbCSs R6, R9, R15, RRX 
l2091: bicCS R1, R7, R11, ROR R3
l2092: teqGT R4, R11, ROR #30
l2093: rscGT R8, R9, R0
l2094: clzGT R0, R0
l2095: movCS R5, R12, RRX 
l2096: adc R2, R7, #97280
l2097: bMI l2103
l2098: eor R3, R4, R0, ROR R6
l2099: subMIs R2, R0, R5, RRX 
l2100: movs R9, R14
l2101: movGEs R8, R7, LSR R1
l2102: eorVSs R12, R11, R1, LSR #30
l2103: mvnNEs R1, #320
l2104: b l2109
l2105: add R1, R0, #213
l2106: subs R10, R4, #7808
l2107: addNE R8, R7, #2621440
l2108: b l2110
l2109: b l2106
l2110: clz R11, R12
l2111: eors R7, R14, R9
l2112: mvnGT R4, R15, ROR #27
l2113: subPLs R7, R1, R1
l2114: and R6, R10, R6, LSL R9
l2115: orrMIs R4, R14, R4, RRX 
l2116: ands R5, R3, R9, RRX 
l2117: add R3, R11, R5
l2118: eor R4, R9, R3
l2119: cmpMI R5, R5
l2120: mov R11, #4
l2121: str R12, [sp], -R11
l2122: rsb R5, R1, R7, ASR #2
l2123: cmn R0, #84934656
l2124: sbcEQ R2, R5, R1, LSL #6
l2125: clzNE R7, R12
l2126: sbc R3, R11, R6, ASR R11
l2127: mvnVS R10, R12, LSL R4
l2128: subVSs R9, R1, R3, RRX 
l2129: mvns R3, R12, ASR #9
l2130: subs R7, R6, R10, ROR R7
l2131: rsbGEs R6, R11, R10
l2132: mov R5, R1, ROR R7
l2133: cmn R15, #2336
l2134: add R7, R5, #-2147483619
l2135: rscCS R4, R9, #34560
l2136: cmpLE R2, #-704643072
l2137: ldrVS R8, [sp, #+4]
l2138: mvnHIs R5, R14
l2139: b l2148
l2140: add R1, R0, #11
l2141: subs R0, R10, R7
l2142: teq R5, #15269888
l2143: rsb R4, R9, #9568256
l2144: teq R0, R10, ROR #23
l2145: teqGE R7, #98566144
l2146: cmnCC R3, R11, ROR R6
l2147: b l2149
l2148: b l2141
l2149: eorVCs R3, R3, #5056
l2150: subGTs R8, R11, R1, ASR R14
l2151: eorGT R6, R5, R14, ASR R3
l2152: bLE l2156
l2153: add R1, R0, #43
l2154: eor R0, R2, R9
l2155: b l2157
l2156: b l2154
l2157: teq R6, R7, RRX 
l2158: subHI R10, R14, R11, ROR #21
l2159: rscCSs R0, R7, R14, LSL R7
l2160: orrMIs R6, R10, #696320
l2161: b l2166
l2162: tstLT R14, R2
l2163: movCCs R7, R8, LSL R12
l2164: subCS R14, R15, #80740352
l2165: add R11, R15, #38912
l2166: adc R14, R14, R9, LSR #24
l2167: mov R2, #12
l2168: str R11, [sp], -R2
l2169: andGE R2, R3, R14
l2170: adds R7, R2, R12, LSR #17
l2171: orrVSs R5, R3, #620
l2172: orrGTs R9, R12, #2850816
l2173: cmn R6, R2, ROR #17
l2174: bicPLs R4, R1, R11
l2175: orrLT R12, R9, R3, LSL #17
l2176: cmnHI R14, R10
l2177: orrMIs R7, R12, R1, ROR #5
l2178: cmp R5, R15, LSR #27
l2179: tst R6, R14
l2180: subCC R5, R12, #189792256
l2181: mov R4, #28
l2182: ldr R5, [sp, -R4]!
l2183: bGE l2193
l2184: bic R2, R5, R12
l2185: eors R2, R3, R0, ROR #11
l2186: tstCC R12, R1, ASR R7
l2187: sub R6, R0, R5, RRX 
l2188: tst R7, R2, RRX 
l2189: cmpEQ R4, #3407872
l2190: sbcPL R3, R12, R1, RRX 
l2191: rsc R9, R14, #2080374784
l2192: subLE R4, R6, #720896
l2193: teqNE R12, R2, LSR #14
l2194: add R4, R11, R5
l2195: ands R9, R1, R15
l2196: mvnVC R5, #1179648
l2197: movGTs R3, R0
l2198: eorCC R4, R0, R5
l2199: mov R12, R3
l2200: and R12, R14, R8
l2201: mov R10, #60
l2202: ldrCS R1, [sp, +R10]
l2203: cmpCS R10, R5, ASR R14
l2204: subGE R14, R15, #239
l2205: orrs R10, R8, #139
l2206: mov R7, #12
l2207: strEQ R0, [sp, +R7]
l2208: eorCSs R7, R11, R2, ASR #0
l2209: cmp R12, #31744
l2210: eorHI R8, R6, R3
l2211: eor R11, R6, R11, ASR #26
l2212: b l2217
l2213: add R1, R0, #177
l2214: and R2, R1, R6, LSL #27
l2215: cmnCC R8, #896
l2216: b l2218
l2217: b l2214
l2218: mov R7, R12, RRX 
l2219: bicCC R9, R1, R0, ROR #5
l2220: sub R0, R6, R1, ASR R7
l2221: adcs R4, R15, R7
l2222: bEQ l2231
l2223: rscCSs R0, R1, R11
l2224: movPLs R6, R0
l2225: eorGEs R1, R12, R1, LSR R2
l2226: cmpVC R1, R8, ASR R4
l2227: movs R9, R5, ASR R9
l2228: rsc R3, R7, R6
l2229: rsbGE R3, R2, R4, RRX 
l2230: clzMI R11, R9
l2231: rscMI R11, R9, R8
l2232: clzLS R1, R11
l2233: bGE l2241
l2234: add R1, R0, #3
l2235: adcLS R8, R15, R7
l2236: sub R7, R15, R12
l2237: subs R14, R9, #-2147483638
l2238: cmnLS R8, R4
l2239: clz R11, R11
l2240: b l2242
l2241: b l2235
l2242: ldrLS R6, [sp, #+4]
l2243: str R14, [sp], #+56
l2244: eorCC R9, R0, R9, LSL R4
l2245: bicEQs R0, R2, R10
l2246: bics R2, R7, R3, LSR R11
l2247: clzCS R14, R2
l2248: clzCS R6, R8
l2249: addPLs R6, R12, #-2147483631
l2250: bics R7, R5, R2, RRX 
l2251: adcHI R5, R4, R10, ASR R14
l2252: mvnVCs R2, R4, RRX 
l2253: adcs R14, R2, R9
l2254: cmpPL R15, R14, RRX 
l2255: addLE R9, R11, R1
l2256: teqEQ R15, #1712
l2257: orrVS R7, R4, R11
l2258: rsb R7, R4, R2, LSR #30
l2259: adcLTs R3, R6, R15
l2260: cmn R11, R15, LSR #23
l2261: mvn R8, #-2147483645
l2262: ldrCC R12, [sp, #-12]
l2263: tstGT R8, R3
l2264: cmn R10, #-1879048184
l2265: mov R7, #28
l2266: str R11, [sp], -R7
l2267: b l2273
l2268: add R1, R0, #30
l2269: bic R9, R12, #1610612745
l2270: orrVS R6, R0, R9
l2271: tst R6, #3244032
l2272: b l2274
l2273: b l2269
l2274: rsbEQs R6, R4, R3
l2275: orrMIs R4, R8, R10, ASR #0
l2276: cmn R4, R12
l2277: sbcLS R4, R5, #1879048198
l2278: sbcs R14, R1, R4, ASR #29
l2279: clzLS R8, R8
l2280: rscs R9, R1, R3, ASR #3
l2281: bNE l2290
l2282: add R1, R0, #4
l2283: mvnCCs R10, R0, LSR R0
l2284: subLS R10, R0, R6, ASR #18
l2285: rsc R6, R15, #162529280
l2286: orrCSs R0, R8, R5, LSR R2
l2287: subs R2, R0, R8, ROR R8
l2288: subs R5, R11, #3888
l2289: b l2291
l2290: b l2283
l2291: teqLT R7, R14, LSR #8
l2292: andCCs R1, R6, R8, LSL R9
l2293: bicLEs R9, R14, #268435456
l2294: tstGE R2, R6, LSR #24
l2295: sbc R7, R3, R2
l2296: movs R10, R2, ROR #30
l2297: bics R3, R6, R14, ASR #17
l2298: rsc R10, R4, #4928
l2299: mov R2, #16
l2300: ldr R9, [sp, +R2]!
l2301: orrEQ R1, R11, R11, LSL R2
l2302: eorHIs R0, R3, #227540992
l2303: ands R4, R12, R2
l2304: cmpVS R12, R7
l2305: subNEs R7, R4, R15
l2306: mov R4, #16
l2307: str R2, [sp, -R4]
l2308: eor R6, R2, R2, LSR R9
l2309: teq R2, R9, RRX 
l2310: cmpGE R7, R4, ROR R2
l2311: rsbs R2, R3, #59244544
l2312: eorGTs R2, R1, R12, LSL R7
l2313: mov R14, #40
l2314: ldr R7, [sp], -R14
l2315: rscLT R9, R9, #208896
l2316: addHIs R12, R15, #23552
l2317: cmn R9, R10
l2318: subs R8, R3, R14, ASR R10
l2319: rscGEs R4, R2, R5
l2320: clz R0, R2
l2321: subGEs R10, R14, #721420288
l2322: str R6, [sp, #-4]!
l2323: eor R14, R0, R11, ASR #28
l2324: subLTs R4, R14, R12, LSL R4
l2325: subs R12, R1, R4
l2326: cmnLS R5, R7, ASR #2
l2327: tstMI R1, #19
l2328: orrLE R1, R9, #42205184
l2329: eorGTs R6, R3, R3, LSL R8
l2330: orr R9, R9, #49152
l2331: mov R1, #0
l2332: ldrEQ R0, [sp, +R1]
l2333: tstGE R11, R11, ASR #15
l2334: orr R0, R7, R11, RRX 
l2335: movLT R1, R6
l2336: ands R5, R10, R2
l2337: rscs R2, R8, R14
l2338: sbcVCs R14, R2, R14, RRX 
l2339: cmp R9, R4, ASR #1
l2340: tst R11, R2
l2341: mov R9, R8
l2342: clz R14, R5
l2343: subGEs R12, R4, R5, ASR R12
l2344: cmp R0, R11, LSL R4
l2345: teqLE R6, R12
l2346: teq R10, R9, RRX 
l2347: rsb R11, R5, R6, LSL R2
l2348: subs R2, R2, R2, ROR R9
l2349: ands R7, R7, #332
l2350: rsb R11, R1, R9
l2351: bic R3, R6, R9, LSL #12
l2352: adcVCs R14, R3, R15, LSL #12
l2353: bLS l2355
l2354: rsb R6, R14, R12, RRX 
l2355: clzVC R1, R5
l2356: ands R8, R12, R12
l2357: orrVSs R7, R10, R10, LSR #4
l2358: eors R5, R2, R8, ROR #26
l2359: b l2364
l2360: add R1, R0, #209
l2361: movs R1, R12, LSR #20
l2362: tst R11, R3, ROR R0
l2363: b l2365
l2364: b l2361
l2365: andGT R4, R7, R8, LSL R11
l2366: tstCS R4, #805306381
l2367: tst R5, R0, ROR R0
l2368: teqVC R0, #2375680
l2369: sbcs R3, R10, R15
l2370: andPLs R5, R10, R14, ASR R12
l2371: tst R0, R4, ASR R3
l2372: cmn R4, R0, RRX 
l2373: rscs R9, R14, R9, LSR #16
l2374: bLT l2381
l2375: add R1, R0, #31
l2376: mvn R5, R1, LSR R6
l2377: rsbMI R7, R7, R3, LSL #24
l2378: cmn R11, R9
l2379: teq R10, #-1073741816
l2380: b l2382
l2381: b l2376
l2382: cmnCS R3, #52428800
l2383: b l2389
l2384: add R1, R0, #40
l2385: adcNEs R0, R14, R5
l2386: addGE R10, R2, #13760
l2387: sub R14, R4, R0, RRX 
l2388: b l2390
l2389: b l2385
l2390: bEQ l2394
l2391: mvnPLs R5, R14
l2392: adcHI R1, R0, R11
l2393: teq R6, R12
l2394: teqMI R5, R9, ROR #1
l2395: bicPL R0, R9, R1, LSL R3
l2396: cmnLE R2, R10, ROR R3
l2397: sub R3, R1, R15, LSL #27
l2398: sbc R0, R12, #528482304
l2399: movNE R7, R14, RRX 
l2400: bLT l2407
l2401: eorLE R11, R12, R4, LSL #6
l2402: cmnCS R7, R10
l2403: movVCs R4, R3
l2404: eor R3, R15, R9, RRX 
l2405: sub R9, R3, #2834432
l2406: cmn R0, R9, ROR R3
l2407: orrCS R4, R6, R3, LSL #11
l2408: eorNEs R7, R11, R4, ROR R14
l2409: b l2413
l2410: add R1, R0, #254
l2411: eorLS R5, R14, R1
l2412: b l2414
l2413: b l2411
l2414: cmn R5, R8, LSR #16
l2415: rscMIs R0, R4, R9, RRX 
l2416: str R3, [sp, #+8]!
l2417: rsc R14, R3, R0
l2418: mov R3, #4
l2419: ldr R3, [sp, +R3]
l2420: mov R14, #1696
l2421: rsbs R8, R7, R3, LSL #15
l2422: movs R9, #156672
l2423: adcEQ R0, R8, R14, ASR #1
l2424: orrs R1, R5, R3
l2425: mov R1, R2, ASR #24
l2426: sub R1, R5, R10, LSR #3
l2427: mvn R1, R15, ASR #11
l2428: clzHI R12, R7
l2429: bHI l2430
l2430: orrLS R10, R14, #3680
l2431: ldrNE R5, [sp, #+20]
l2432: clz R14, R14
l2433: and R9, R3, #49
l2434: tst R11, R6, ROR R4
l2435: clzPL R4, R5
l2436: cmnEQ R8, R7
l2437: rsb R5, R11, R10, ASR #27
l2438: bics R4, R11, R5, ROR #25
l2439: b l2447
l2440: rscs R4, R0, R5
l2441: addLSs R7, R9, R4
l2442: sub R12, R10, R15, LSL #23
l2443: addLS R9, R15, R2, LSR #20
l2444: mvns R2, R5, LSR R9
l2445: subEQs R12, R7, R2
l2446: tstLE R9, R1, ROR #7
l2447: rscVCs R2, R7, R5, LSL R5
l2448: clzLT R0, R12
l2449: orrMIs R10, R1, R9, LSR R1
l2450: ands R9, R11, R3, LSL #23
l2451: orrs R14, R1, R0, ROR #14
l2452: subVC R6, R7, #616
l2453: bHI l2460
l2454: eorGE R12, R5, R2, ASR R4
l2455: rsb R6, R6, #4864
l2456: eorCSs R11, R9, R1
l2457: subs R0, R6, #-2147483594
l2458: bic R6, R11, #-805306364
l2459: mvns R4, R10, ROR R10
l2460: rsc R2, R7, R6, LSL #14
l2461: mov R5, #48
l2462: ldr R7, [sp, +R5]!
l2463: add R8, R6, R12, LSL R6
l2464: eorLSs R1, R7, R1, LSL R0
l2465: cmpPL R11, R4, LSR R3
l2466: tst R12, #12910592
l2467: sbcCS R8, R7, R14, ASR R9
l2468: movEQ R1, #14352384
l2469: rscLEs R7, R10, R0, ROR R6
l2470: clz R5, R0
l2471: bMI l2472
l2472: subVSs R14, R11, R1
l2473: mov R8, #60
l2474: str R6, [sp, -R8]!
l2475: andPLs R0, R4, R6, RRX 
l2476: sub R14, R7, R14, ASR R3
l2477: adcVC R2, R5, R4, LSL R0
l2478: tst R6, #18432
l2479: adds R2, R7, R14
l2480: cmn R9, R2, RRX 
l2481: bic R4, R3, #130
l2482: andNEs R8, R4, R9
l2483: bCC l2488
l2484: cmp R3, R0, ROR #16
l2485: rsbs R14, R0, R3, RRX 
l2486: rsbs R7, R6, R5
l2487: clz R8, R12
l2488: eorHI R5, R12, R12, RRX 
l2489: teq R12, R7, ROR R0
l2490: sbcLSs R2, R8, R3, ROR #27
l2491: subGEs R5, R3, R5
l2492: clzHI R9, R9
l2493: mvn R8, R3, LSR #23
l2494: tstVC R9, R1
l2495: tstVS R14, R10, ROR R1
l2496: clzPL R12, R1
l2497: mvnCC R3, R0, ROR #14
l2498: addVSs R1, R6, R0, ROR R6
l2499: orrPLs R0, R2, R8
l2500: subGEs R10, R11, #616562688
l2501: bVS l2506
l2502: addMIs R10, R14, R10, ROR R2
l2503: teqLT R15, R4, LSR #15
l2504: addCCs R5, R0, #56623104
l2505: teqCS R14, R2, LSR R12
l2506: rscs R8, R2, R10, RRX 
l2507: rscLTs R3, R11, #144384
l2508: sub R4, R4, #-67108861
l2509: bCC l2514
l2510: subPLs R11, R10, R14
l2511: mvn R0, R7
l2512: andLEs R0, R0, #-1073741821
l2513: subs R11, R8, R2, RRX 
l2514: sbcLE R4, R6, #221184
l2515: bicLS R2, R5, R8, LSR #18
l2516: eorCCs R2, R3, R11
l2517: add R14, R4, #21
l2518: mov R3, #44
l2519: str R0, [sp, +R3]!
l2520: adcLTs R12, R11, R2, ROR #9
l2521: rsbLSs R8, R12, R2
l2522: orrCC R5, R5, #180
l2523: bEQ l2528
l2524: add R1, R0, #75
l2525: rscs R11, R2, #462848
l2526: tstPL R14, R0
l2527: b l2529
l2528: b l2525
l2529: cmnMI R6, R1, ASR R14
l2530: sub R2, R3, R14, ASR #13
l2531: cmnVC R8, #20
l2532: subNEs R3, R3, R3, LSR R9
l2533: sbc R4, R4, R8, RRX 
l2534: cmn R14, R8, RRX 
l2535: clz R10, R7
l2536: eor R10, R0, R14, ASR R3
l2537: rscEQ R4, R4, R15, ROR #18
l2538: rscs R5, R4, #475136
l2539: b l2543
l2540: add R1, R0, #7
l2541: adcLT R12, R7, R5, LSL #2
l2542: b l2544
l2543: b l2541
l2544: b l2548
l2545: add R1, R0, #53
l2546: mvnVCs R14, R4, ROR #3
l2547: b l2549
l2548: b l2546
l2549: orrGE R5, R10, R2, ROR #19
l2550: ldr R8, [sp], #-36
l2551: clz R4, R7
l2552: cmnCS R6, #230400
l2553: andCSs R4, R14, R10, RRX 
l2554: sbcLT R0, R5, R3, ASR R9
l2555: teq R6, #224256
l2556: clzHI R14, R4
l2557: subHIs R10, R8, #932
l2558: orrVS R1, R6, R3
l2559: rsb R10, R2, R14, RRX 
l2560: bGE l2567
l2561: sbcEQ R3, R10, R12
l2562: orr R9, R9, R10, LSL R7
l2563: add R7, R3, #38144
l2564: tstMI R2, R10
l2565: clzLE R0, R11
l2566: cmnLE R2, #100352
l2567: andNE R8, R10, R2, RRX 
l2568: eorLT R12, R6, R6, RRX 
l2569: rsbLT R7, R5, R11, ASR R3
l2570: bEQ l2573
l2571: eorCSs R8, R1, R9
l2572: cmnHI R12, #8256
l2573: rsb R10, R4, R7
l2574: adcLEs R5, R5, R7, ROR R12
l2575: cmnGT R1, R11, ASR R1
l2576: sbcCS R5, R8, #13824
l2577: subCCs R8, R12, #3728
l2578: orrEQs R12, R12, R1, LSR #21
l2579: tstHI R0, R0
l2580: orr R12, R2, R0
l2581: subs R3, R4, R2, RRX 
l2582: sbcs R0, R1, #57
l2583: tst R3, R2, LSR #4
l2584: addNE R0, R10, #606208
l2585: ldr R7, [sp], #+52
l2586: orr R12, R8, R7
l2587: teqCS R6, R2, LSL R8
l2588: orrLT R2, R5, R8
l2589: mov R4, #8
l2590: str R12, [sp, -R4]!
l2591: orr R5, R8, R12, LSL R5
l2592: orr R8, R5, R7, RRX 
l2593: tst R7, R11, ASR R6
l2594: sbcLE R2, R15, R6, LSR #7
l2595: cmnPL R4, R12, LSL R10
l2596: rsbHIs R10, R7, R1, RRX 
l2597: mvns R5, R4
l2598: bics R1, R6, R2, ROR R2
l2599: bicCC R10, R5, R11, LSL R12
l2600: b l2601
l2601: subHIs R2, R3, R3
l2602: sbc R12, R8, R10, ASR #12
l2603: clz R12, R2
l2604: orrGT R5, R14, R3, LSL R7
l2605: ands R3, R8, R2, RRX 
l2606: eorCS R5, R2, #12544
l2607: orr R12, R6, R2, ASR R14
l2608: rsb R11, R5, R11, RRX 
l2609: mov R2, #16
l2610: str R3, [sp, +R2]
l2611: clzPL R5, R3
l2612: b l2616
l2613: add R1, R0, #222
l2614: clz R8, R9
l2615: b l2617
l2616: b l2614
l2617: cmp R0, R4, RRX 
l2618: cmnEQ R10, R6, ROR R1
l2619: bLE l2629
l2620: addGEs R3, R5, R10, ROR R6
l2621: rscGT R1, R6, #1073741838
l2622: adcs R1, R9, R12
l2623: andGE R10, R7, R9
l2624: bic R2, R10, R10, ROR #26
l2625: subs R6, R3, #1179648
l2626: bic R4, R9, R14
l2627: clzEQ R4, R10
l2628: movHI R12, R2
l2629: mov R0, R14, LSL R1
l2630: cmn R11, #-1073741791
l2631: subGT R3, R5, R5
l2632: and R3, R3, R2, LSR #10
l2633: sbcMI R6, R12, R1, RRX 
l2634: sbc R6, R2, R14, LSL R0
l2635: movCSs R11, R4, LSR #15
l2636: andVSs R7, R6, R11, LSR R6
l2637: bicLE R14, R12, R7, LSL #0
l2638: cmn R5, R6, ROR #5
l2639: sub R4, R1, R11, ROR R8
l2640: clzVC R5, R5
l2641: cmnLE R0, #237568
l2642: subLT R2, R0, R8, ASR R11
l2643: bVS l2648
l2644: bicNE R6, R7, R10, ROR #18
l2645: cmnCS R1, R8, ROR R3
l2646: rsb R5, R14, #2832
l2647: addGTs R6, R14, R14
l2648: teqEQ R4, R3, LSR R0
l2649: bNE l2653
l2650: add R1, R0, #252
l2651: andHI R1, R7, R8, ROR R3
l2652: b l2654
l2653: b l2651
l2654: movs R2, #30720
l2655: rscNEs R5, R2, R9
l2656: b l2663
l2657: eorPL R5, R4, R12
l2658: sbcGT R11, R9, R6, ASR #22
l2659: orr R14, R7, R3, ASR R9
l2660: bicLTs R11, R10, R1
l2661: sbcPL R7, R14, R10
l2662: cmpNE R4, #835584
l2663: orrVSs R4, R6, R2, ROR #31
l2664: mov R4, #44
l2665: ldr R11, [sp, -R4]!
l2666: b l2676
l2667: cmn R3, R15
l2668: cmnEQ R7, R7, LSL #3
l2669: addVCs R11, R2, R10, ROR #31
l2670: eorHI R7, R14, #6272
l2671: addCC R10, R9, R11, LSL #15
l2672: cmnCC R8, R12, LSR R2
l2673: cmpLT R0, R7, LSL #19
l2674: teqLT R10, R15, RRX 
l2675: cmn R0, #25165824
l2676: eor R3, R2, R14
l2677: adcs R5, R11, R7
l2678: orr R6, R12, R12
l2679: subHI R14, R1, R10, LSR #19
l2680: ands R10, R7, R6
l2681: rsbs R12, R1, R7
l2682: andHI R2, R3, R14, RRX 
l2683: add R14, R15, R8
l2684: ands R10, R15, R6
l2685: subGTs R5, R7, R0
l2686: add R4, R5, R3
l2687: bics R8, R2, R10
l2688: subs R11, R4, R9, LSL #12
l2689: clz R7, R14
l2690: bic R8, R14, R5, LSL R8
l2691: sub R12, R14, #9175040
l2692: adcNE R5, R3, R9, LSR #21
l2693: cmn R6, R2
l2694: eorVCs R1, R1, R10
l2695: orrGE R0, R8, #8
l2696: subPL R6, R3, R14, ROR R3
l2697: bEQ l2704
l2698: tst R3, R15
l2699: tstGT R2, R1, RRX 
l2700: sbcs R8, R8, R14, RRX 
l2701: sbcs R10, R14, #101
l2702: andGE R9, R5, R3, ASR #22
l2703: orrCCs R14, R2, R1, ROR R3
l2704: eorGE R12, R0, R11, LSL R7
l2705: subs R5, R0, R15, RRX 
l2706: orrVS R0, R15, R0, ASR #7
l2707: andLEs R0, R6, R4
l2708: tstMI R14, R14
l2709: orrGT R14, R7, R10, ASR #23
l2710: str R14, [sp], #+12
l2711: cmp R1, R9, ASR #13
l2712: movGE R2, #2528
l2713: cmpHI R0, R7
l2714: orrs R9, R0, R5, LSR R3
l2715: rscs R10, R9, R3, ROR #1
l2716: addVC R1, R4, #454656
l2717: eor R9, R10, R3, LSR R8
l2718: clzCS R11, R9
l2719: mvnGEs R12, R2, ROR R5
l2720: b l2725
l2721: adcCS R12, R5, #242
l2722: orrGTs R6, R12, R9, RRX 
l2723: adc R0, R8, R9, LSL R14
l2724: clz R8, R10
l2725: adds R1, R1, #-2147483610
l2726: cmn R2, R0
l2727: mvns R3, R10
l2728: rsb R11, R1, R9, LSL R4
l2729: rscCSs R9, R0, R7
l2730: bLS l2737
l2731: clzVC R8, R12
l2732: orrNE R7, R7, #720
l2733: teqEQ R5, #54525952
l2734: subs R11, R3, #59904
l2735: clz R6, R7
l2736: mvnLT R12, R5, LSL #13
l2737: mvns R2, #227540992
l2738: b l2739
l2739: eorGTs R3, R5, R0, ASR #14
l2740: mov R7, #16
l2741: ldr R0, [sp, -R7]!
l2742: sbcVSs R8, R5, R4
l2743: subPLs R6, R3, R1
l2744: cmn R1, R3
l2745: sbc R6, R12, R3, RRX 
l2746: subGE R1, R1, R3
l2747: bicCSs R11, R9, R11, LSL #13
l2748: b l2757
l2749: add R1, R0, #169
l2750: movVC R6, R6, ASR #13
l2751: mvnLE R8, R12, LSR R11
l2752: cmpGT R7, R7
l2753: eors R12, R1, R12
l2754: tstLE R5, R5, LSL #10
l2755: orrPLs R12, R15, R2, ROR #27
l2756: b l2758
l2757: b l2750
l2758: clz R9, R10
l2759: clz R3, R5
l2760: ldr R12, [sp, #+8]!
l2761: mvn R4, R1, LSR R1
l2762: cmn R6, R7, RRX 
l2763: subPL R7, R3, #12544
l2764: andCC R10, R1, R14, RRX 
l2765: sbcs R3, R3, R7, ROR R4
l2766: sub R5, R6, #37748736
l2767: rsbHIs R7, R9, R1
l2768: bCC l2769
l2769: eors R9, R14, R12, ROR #27
l2770: strCC R2, [sp, #-4]
l2771: cmnLE R11, R9, LSL #17
l2772: eorEQs R9, R3, R5
l2773: bics R12, R0, R8, LSL R3
l2774: tst R4, R6, LSL #29
l2775: rsc R11, R10, R0, ASR R8
l2776: ands R6, R1, #1426063360
l2777: movCSs R10, R11
l2778: bNE l2783
l2779: addVSs R12, R6, #336
l2780: sbcVS R3, R11, R12
l2781: andGTs R12, R14, R11
l2782: rsb R5, R3, R8, RRX 
l2783: cmn R2, #2981888
l2784: tstVC R1, R2
l2785: sub R3, R12, R14, ASR R4
l2786: rsbGT R10, R7, R14
l2787: andMI R9, R14, R0, LSR R8
l2788: clzHI R5, R8
l2789: b l2796
l2790: andLSs R5, R9, R3, ASR R11
l2791: adds R11, R9, R3, RRX 
l2792: adcs R11, R5, R8, RRX 
l2793: tstLT R14, R7, ASR #27
l2794: addGT R9, R14, R7, ROR R2
l2795: teq R10, R15
l2796: orr R14, R14, R0, LSR R7
l2797: cmn R7, #61603840
l2798: sub R1, R11, R2
l2799: ands R4, R15, R9, RRX 
l2800: add R8, R8, R0, ASR #25
l2801: orrEQs R14, R8, R10, RRX 
l2802: sbc R12, R3, R4
l2803: subs R1, R14, R11, LSR R0
l2804: orrs R11, R12, R3
l2805: tstNE R6, R9, RRX 
l2806: bLS l2810
l2807: add R1, R0, #137
l2808: tstVC R1, #119
l2809: b l2811
l2810: b l2808
l2811: subLT R6, R2, R11, ROR #3
l2812: movVCs R8, #0
l2813: adc R10, R11, R0, ASR R14
l2814: addGTs R12, R2, R4, LSR #27
l2815: b l2820
l2816: add R1, R0, #246
l2817: addHI R9, R8, R14
l2818: teq R2, #1028096
l2819: b l2821
l2820: b l2817
l2821: orrs R6, R6, #760
l2822: teq R12, R9
l2823: cmpLT R5, R7
l2824: mvnVSs R8, #3328
l2825: ands R1, R1, #6144
l2826: adcNE R7, R15, #42205184
l2827: and R7, R9, #1744830466
l2828: mvnPLs R9, R10, ROR #26
l2829: teqLE R15, #96
l2830: bLT l2839
l2831: add R1, R0, #32
l2832: bics R4, R4, R10
l2833: bic R4, R6, R3
l2834: movLE R1, R5, LSR #25
l2835: sub R8, R11, R11
l2836: sub R12, R5, #143
l2837: movEQ R5, R0
l2838: b l2840
l2839: b l2832
l2840: adds R0, R11, R15, ROR #21
l2841: orrCC R2, R14, R7, ASR #6
l2842: bicEQs R9, R11, #-2147483601
l2843: bicHIs R6, R6, R8, ASR R11
l2844: movLE R7, R1
l2845: add R2, R12, R15, LSL #27
l2846: mvnPLs R11, R5, LSR #30
l2847: addMIs R7, R4, R15
l2848: adcVCs R4, R11, R12, LSL R6
l2849: tstGE R9, #17152
l2850: movs R8, R14, ROR #23
l2851: cmn R6, R5, ROR R10
l2852: b l2858
l2853: add R1, R0, #51
l2854: clzGE R10, R1
l2855: teqLE R6, #282624
l2856: rscCC R0, R0, R11, LSL #13
l2857: b l2859
l2858: b l2854
l2859: addCS R11, R11, R0, LSL #25
l2860: clzVS R2, R10
l2861: bics R0, R1, R7
l2862: sub R1, R2, R14
l2863: bics R2, R4, R2, ROR R7
l2864: b l2868
l2865: cmpCS R8, #37888
l2866: subGEs R1, R12, R10, RRX 
l2867: cmnMI R12, #966656
l2868: mvnVS R6, R7, LSL #3
l2869: bic R11, R5, R2, LSL R9
l2870: subVC R8, R3, R0, RRX 
l2871: cmnVS R14, R11
l2872: adds R5, R7, R11, ROR R10
l2873: rscVSs R4, R8, R4
l2874: orrGTs R0, R7, #475136
l2875: adcGT R2, R1, R0, RRX 
l2876: sbcMIs R11, R9, #13828096
l2877: bVS l2884
l2878: add R1, R0, #31
l2879: sub R6, R2, #12800
l2880: subs R5, R3, #-1879048192
l2881: movCS R8, R12, LSL R7
l2882: cmp R12, R11, ASR R2
l2883: b l2885
l2884: b l2879
l2885: sbcLE R2, R11, R9
l2886: eorGTs R4, R9, R12, RRX 
l2887: bCS l2895
l2888: add R1, R0, #95
l2889: cmpCC R14, R14, ASR #24
l2890: orrLE R5, R1, R3, ROR #2
l2891: teqNE R15, R14, RRX 
l2892: cmn R6, #914358272
l2893: andPLs R12, R6, #339968
l2894: b l2896
l2895: b l2889
l2896: bLS l2903
l2897: add R1, R0, #164
l2898: bics R5, R1, #580
l2899: addCSs R11, R7, #6029312
l2900: teqHI R5, #251658240
l2901: orr R3, R10, #25856
l2902: b l2904
l2903: b l2898
l2904: b l2907
l2905: eor R3, R10, R5
l2906: teq R3, #1426063360
l2907: mvnLTs R3, R5, LSL #20
l2908: addHIs R11, R10, R2, ASR R5
l2909: mov R14, #20
l2910: ldr R11, [sp, +R14]!
l2911: subVC R9, R11, R6
l2912: movEQs R3, #10496
l2913: bLE l2921
l2914: add R1, R0, #122
l2915: rsbGEs R8, R6, #59506688
l2916: orrVSs R6, R3, R2, ASR #3
l2917: tstHI R8, R1
l2918: cmpHI R14, R0, ASR #4
l2919: sbcs R9, R1, R8
l2920: b l2922
l2921: b l2915
l2922: andGTs R14, R8, #1984
l2923: orr R11, R8, R15
l2924: rscs R0, R10, R3, RRX 
l2925: bVC l2930
l2926: add R6, R6, R2
l2927: cmn R4, R15
l2928: rscGEs R8, R5, #272
l2929: teq R15, R1, LSL #31
l2930: andPL R2, R14, R1, ROR #30
l2931: tstLE R10, R7, ASR R5
l2932: mov R5, #20
l2933: str R10, [sp], -R5
l2934: orrMIs R0, R0, #231424
l2935: bEQ l2945
l2936: teq R5, #-721420288
l2937: cmp R15, #2656
l2938: eor R10, R11, R12, ASR #6
l2939: teqLE R0, R3, RRX 
l2940: clz R14, R8
l2941: tst R12, R3, LSL R5
l2942: rsb R8, R15, #1664
l2943: eorGTs R10, R12, R2, LSL #24
l2944: mvn R3, R5
l2945: subLEs R1, R15, R10, ASR #25
l2946: addHI R14, R5, R3, ROR R6
l2947: b l2954
l2948: tst R10, #536870915
l2949: rscVSs R6, R8, #61865984
l2950: rsbLEs R8, R8, #41418752
l2951: teqGT R7, R6
l2952: mvns R4, R14, ASR #5
l2953: orr R9, R9, R15
l2954: teqCS R2, R1, LSL R9
l2955: eors R8, R14, R14
l2956: rsbNE R0, R7, R4
l2957: cmp R7, #-369098752
l2958: cmp R7, R15
l2959: subNEs R8, R1, R0, LSR #5
l2960: movs R6, R5
l2961: adds R8, R11, R3
l2962: ands R9, R1, R0, ROR R2
l2963: tst R6, R7, ASR #0
l2964: rsbNE R9, R7, R8
l2965: cmn R5, R10, LSR #13
l2966: bCC l2968
l2967: subNE R4, R5, R7, ASR #20
l2968: cmn R10, R7
l2969: mvnVS R4, R7, ROR #2
l2970: tstMI R0, R4, RRX 
l2971: b l2979
l2972: add R1, R0, #244
l2973: addHI R5, R3, #183
l2974: cmn R9, R0, ROR R10
l2975: subLE R7, R14, R3
l2976: subs R6, R9, R4, LSL #5
l2977: addPLs R3, R3, #9856
l2978: b l2980
l2979: b l2973
l2980: teqVC R10, R9, LSR R12
l2981: sbcEQ R9, R12, #29360128
l2982: adds R7, R5, #184320
l2983: cmpHI R6, R1
l2984: tstGT R5, #12032
l2985: str R14, [sp, #+12]!
l2986: b l2993
l2987: add R1, R0, #12
l2988: sbcGT R7, R4, #104857600
l2989: andGE R8, R0, R9, LSL #1
l2990: adcLT R8, R11, #90112
l2991: clz R2, R7
l2992: b l2994
l2993: b l2988
l2994: rsb R9, R7, R11, LSR R8
l2995: eor R2, R9, R4, LSR #16
l2996: sbcVSs R14, R6, R8, RRX 
l2997: b l3005
l2998: add R1, R0, #251
l2999: orrLE R2, R7, R6, LSR R4
l3000: bics R11, R2, R6, LSL #27
l3001: cmpCC R1, R4, ROR R8
l3002: rsbs R4, R14, R10, ROR #27
l3003: movs R8, R11, LSL R5
l3004: b l3006
l3005: b l2999
l3006: cmpHI R10, R9, LSR #2
l3007: b l3015
l3008: add R1, R0, #98
l3009: teq R7, #3008
l3010: sbcs R3, R3, R15, ASR #20
l3011: mvn R2, #184320
l3012: bic R2, R8, #16449536
l3013: adds R3, R2, R3, ROR R3
l3014: b l3016
l3015: b l3009
l3016: adds R8, R3, R4, ASR R11
l3017: subs R8, R0, R1, ROR R0
l3018: eorGTs R12, R10, R0, ROR R0
l3019: b l3025
l3020: add R1, R0, #121
l3021: eorHIs R3, R10, R4, LSR #18
l3022: subCSs R8, R11, #2640
l3023: movNEs R4, R6, ASR #6
l3024: b l3026
l3025: b l3021
l3026: tst R3, R9, LSR #25
l3027: rscs R1, R3, R11
l3028: eorVCs R11, R8, #-268435453
l3029: teqCS R5, R3, ROR R12
l3030: cmp R5, R8, ASR R1
l3031: bGT l3035
l3032: add R1, R0, #121
l3033: cmp R11, R7, ASR #31
l3034: b l3036
l3035: b l3033
l3036: sub R4, R15, R11, LSL #27
l3037: movGT R7, R14, RRX 
l3038: and R9, R0, #738197504
l3039: b l3043
l3040: sbcs R10, R12, #3856
l3041: subLS R4, R12, R11, ASR R12
l3042: orrVCs R1, R2, R11
l3043: clz R2, R9
l3044: orrLE R2, R2, R12, LSR R2
l3045: teqHI R15, #612368384
l3046: sub R11, R1, R10
l3047: andPLs R0, R14, #22
l3048: subMIs R7, R12, R8
l3049: eorLS R12, R6, #231735296
l3050: cmn R6, R14, ROR #18
l3051: rsbPLs R6, R9, #20480
l3052: adcs R12, R4, #-1342177280
l3053: mov R6, #8
l3054: ldr R3, [sp, -R6]
l3055: ands R4, R5, R3, ASR #30
l3056: mov R14, R8, LSL R7
l3057: orrHIs R10, R9, R14, RRX 
l3058: adcEQs R9, R10, R0, ROR #30
l3059: b l3060
l3060: subLT R7, R5, R10, LSR R7
l3061: rscVCs R9, R12, R8, LSR R8
l3062: clz R14, R9
l3063: rscVSs R6, R4, R7, ASR R7
l3064: eors R11, R2, R7, LSR R8
l3065: cmnGE R12, #679936
l3066: addLEs R9, R3, R3, LSL #31
l3067: eor R7, R7, R8
l3068: rscCSs R10, R8, R7, LSL R6
l3069: bCC l3075
l3070: add R1, R0, #79
l3071: orrs R10, R2, R1, ASR R2
l3072: adc R3, R9, #43778048
l3073: cmnCC R9, #56
l3074: b l3076
l3075: b l3071
l3076: rscs R14, R5, R6, ROR #27
l3077: rsc R4, R0, #12032
l3078: andGT R5, R0, R6
l3079: rscs R6, R14, R9, LSR R1
l3080: cmp R7, #1023410176
l3081: eor R2, R11, R0
l3082: sbcs R2, R6, R1, ASR #27
l3083: adcGTs R10, R5, #3712
l3084: subGTs R5, R9, #11403264
l3085: ldr R2, [sp, #+32]!
l3086: bPL l3089
l3087: clz R7, R10
l3088: rscs R8, R11, #704512
l3089: rscs R7, R8, R1, RRX 
l3090: adcLT R0, R15, #41943040
l3091: adcs R4, R6, R2, LSR R10
l3092: mov R12, R12, ROR #9
l3093: subVSs R4, R14, #-1610612735
l3094: tst R5, R8
l3095: eorLT R2, R6, R4, LSR R11
l3096: andCCs R0, R3, R9, LSL #1
l3097: rsbs R8, R8, R8, LSR #17
l3098: adds R2, R3, #15990784
l3099: eorVS R6, R12, R4, LSL R1
l3100: bics R14, R8, R10, LSL #9
l3101: bCC l3105
l3102: add R1, R0, #247
l3103: cmp R14, R6
l3104: b l3106
l3105: b l3103
l3106: tst R2, R5
l3107: rsbVC R10, R6, R14
l3108: bics R1, R4, R4, ROR R14
l3109: tst R8, #1654784
l3110: clzEQ R8, R4
l3111: sbc R11, R11, R0, ASR #4
l3112: cmpMI R6, #137216
l3113: rscGT R1, R15, R10, ASR #18
l3114: addLEs R1, R1, R9, RRX 
l3115: cmnLE R2, R5
l3116: movNE R4, #1744830464
l3117: ands R1, R6, R5
l3118: eors R6, R10, #44032
l3119: rsbs R3, R1, R1, ASR R7
l3120: tstPL R6, R7, LSR R8
l3121: cmnGE R1, #88
l3122: mvn R0, R8
l3123: movNE R14, #3506176
l3124: eors R14, R15, #335544320
l3125: teq R5, R9
l3126: eors R6, R0, R12, RRX 
l3127: rscHI R5, R11, R12, ASR R14
l3128: addLS R12, R6, R8, RRX 
l3129: bCC l3133
l3130: mvn R0, #1966080
l3131: adc R4, R2, R1
l3132: addCCs R10, R9, R15
l3133: subVC R8, R11, #536870927
l3134: teq R5, R2
l3135: adcs R12, R10, R14
l3136: mvnLEs R8, R5, LSR R5
l3137: adcNEs R1, R4, R10
l3138: b l3142
l3139: add R1, R0, #122
l3140: mvnCSs R7, #234
l3141: b l3143
l3142: b l3140
l3143: teq R5, #-1392508928
l3144: sub R6, R6, R15, ASR #19
l3145: movs R5, R5
l3146: b l3150
l3147: add R1, R0, #216
l3148: cmpPL R8, R0, ASR #19
l3149: b l3151
l3150: b l3148
l3151: movHIs R3, R8, ASR #7
l3152: rsbs R2, R2, R0
l3153: tst R9, R11, ASR #30
l3154: tstLT R9, R12
l3155: clz R8, R3
l3156: adc R14, R5, R6
l3157: teqEQ R4, #749568
l3158: mov R6, #16
l3159: ldrCS R5, [sp, +R6]
l3160: bicVCs R12, R1, R8, LSR R8
l3161: add R3, R12, #-1610612735
l3162: tstCS R11, R8, LSL R12
l3163: orrPL R0, R5, #120
l3164: eorLS R8, R12, R2, ROR R10
l3165: eor R6, R4, R3
l3166: bGE l3167
l3167: clzNE R4, R12
l3168: clzLS R11, R1
l3169: mvnEQs R8, R14, LSR #1
l3170: b l3177
l3171: add R1, R0, #91
l3172: addGEs R1, R14, R11, LSL R5
l3173: rscs R9, R3, R2, ROR #12
l3174: cmn R6, R4
l3175: rsbGEs R5, R11, #1073741834
l3176: b l3178
l3177: b l3172
l3178: bic R11, R4, #2228224
l3179: rscEQ R4, R14, #901120
l3180: cmpPL R2, R2, ASR R7
l3181: b l3187
l3182: add R1, R0, #21
l3183: rscLTs R12, R3, R8, LSR #3
l3184: subLSs R3, R4, R9, LSL #16
l3185: addLE R12, R0, R11
l3186: b l3188
l3187: b l3183
l3188: bCC l3195
l3189: add R1, R0, #90
l3190: mov R9, R15, RRX 
l3191: clz R2, R8
l3192: adc R9, R11, #36608
l3193: cmn R10, R10
l3194: b l3196
l3195: b l3190
l3196: ldr R9, [sp, #+4]!
l3197: orrs R4, R4, R8, RRX 
l3198: subVCs R10, R4, R3, LSL #14
l3199: eors R9, R0, R9, ROR R1
l3200: bicHI R7, R12, R1, ASR R10
l3201: b l3210
l3202: mvnLSs R14, R1, LSL #20
l3203: cmpCS R9, R4, ASR R1
l3204: teqVC R4, R12, ROR #6
l3205: bicLS R2, R14, R5, LSL #29
l3206: addMI R11, R2, #34048
l3207: cmpGT R5, R6, LSR #4
l3208: tst R14, R6, ASR R14
l3209: orrs R5, R14, #-1342177267
l3210: add R4, R9, R8, ASR R7
l3211: bCC l3219
l3212: eor R10, R9, #3620864
l3213: eor R9, R6, #12386304
l3214: teq R14, R11
l3215: orrLS R12, R15, R2
l3216: bic R3, R12, R8, ASR R0
l3217: sbcs R1, R8, R0, ASR #17
l3218: rsb R3, R3, R15, LSR #6
l3219: eor R12, R11, R9, RRX 
l3220: b l3228
l3221: add R1, R0, #113
l3222: adds R1, R12, R5
l3223: sbcNEs R8, R4, R2, ASR #14
l3224: rsbMI R9, R9, R15
l3225: teqCS R10, R12, LSR R6
l3226: adcGTs R12, R4, R11
l3227: b l3229
l3228: b l3222
l3229: ldr R12, [sp, #-56]
l3230: subLTs R9, R7, R11, LSL R12
l3231: clz R0, R12
l3232: sbcPLs R5, R9, #916
l3233: and R6, R8, R11
l3234: rsbs R5, R8, R0, LSL #29
l3235: andGTs R9, R2, R2, LSL R12
l3236: cmn R4, R7, LSL #3
l3237: orrLSs R6, R9, #8000
l3238: bGT l3248
l3239: adcGE R3, R0, R0, RRX 
l3240: addGT R7, R11, R10
l3241: mvns R8, R5, ROR #22
l3242: adds R12, R7, R7
l3243: tstVS R4, R14, RRX 
l3244: sbc R12, R0, R6, LSL #19
l3245: clz R6, R11
l3246: subEQ R2, R6, R8, RRX 
l3247: rsbHI R10, R7, R4, LSL R11
l3248: mov R3, R3
l3249: orrs R2, R10, R14, ROR R11
l3250: str R4, [sp, #-36]
l3251: clzLE R7, R2
l3252: b l3255
l3253: cmnVS R4, #1056
l3254: movLSs R9, #234881024
l3255: movGEs R14, #238592
l3256: andNEs R10, R2, R9, ASR R0
l3257: b l3264
l3258: bics R8, R8, R2, RRX 
l3259: andMI R1, R1, R4
l3260: mvnVCs R6, R12
l3261: andHI R7, R10, R7
l3262: cmpNE R1, R6, LSL #10
l3263: movLSs R8, R12, ROR #11
l3264: addVC R9, R1, R7
l3265: orrPLs R5, R1, R9, LSR R4
l3266: adds R3, R6, #48758784
l3267: bEQ l3276
l3268: add R1, R0, #221
l3269: rscPL R0, R7, #10880
l3270: bicLSs R6, R4, R9, LSR #7
l3271: tst R1, R4, RRX 
l3272: andHI R9, R5, R2
l3273: movEQ R9, #744
l3274: movVS R6, R14, ROR #6
l3275: b l3277
l3276: b l3269
l3277: rsbs R1, R3, #402653184
l3278: movCCs R5, R9, ASR R7
l3279: and R5, R6, #81920
l3280: mov R1, #24
l3281: str R14, [sp], -R1
l3282: mov R12, #28
l3283: ldrGT R11, [sp, +R12]
l3284: b l3290
l3285: movLSs R12, R10, LSR #29
l3286: teqGT R7, R6, ROR R5
l3287: bic R8, R11, R11, RRX 
l3288: subHI R11, R10, R8, LSL R12
l3289: rscLS R14, R7, #118489088
l3290: sbc R14, R0, R12, RRX 
l3291: adcGE R8, R12, R14
l3292: eorEQ R12, R1, R4, ASR #18
l3293: orrGEs R0, R2, R2, LSL R11
l3294: ands R6, R6, R3, ROR #10
l3295: sbcGT R12, R2, R15, RRX 
l3296: ldr R11, [sp, #+28]!
l3297: andGT R5, R8, R5, RRX 
l3298: orrMI R12, R7, R3, ROR R10
l3299: eor R1, R2, #1073741852
l3300: andPL R0, R11, R11, ROR R3
l3301: eor R0, R10, R5, RRX 
l3302: mvnNE R1, R7
l3303: cmn R0, R12, RRX 
l3304: adcs R4, R10, R7, LSR R2
l3305: sbcGE R2, R1, R7
l3306: movLTs R2, R7, LSR R11
l3307: subHI R9, R15, #1073741825
l3308: cmp R10, R3, ASR R6
l3309: bPL l3313
l3310: add R1, R0, #32
l3311: subs R3, R3, #96
l3312: b l3314
l3313: b l3311
l3314: cmn R4, R1
l3315: adcs R7, R8, R8, RRX 
l3316: tst R11, #6815744
l3317: cmpCS R12, R0
l3318: eorLS R12, R5, R5, ROR R10
l3319: teq R11, R12, ASR R0
l3320: movs R1, R14, ASR #26
l3321: eorCS R11, R5, #3360
l3322: tstHI R5, #-1577058304
l3323: cmpGE R2, #130023424
l3324: adc R3, R7, R0, LSL R7
l3325: andCSs R4, R11, R3, RRX 
l3326: bCC l3333
l3327: teq R9, R8
l3328: tstLT R8, R2
l3329: rscLE R7, R14, R1, LSL R9
l3330: mov R1, R10, ROR R10
l3331: clzMI R11, R12
l3332: tst R6, R9, LSL #17
l3333: cmp R6, R5, ASR #9
l3334: teqNE R9, R5
l3335: movVC R4, R6
l3336: adcPL R7, R11, R3, LSL R0
l3337: ands R7, R4, R6, RRX 
l3338: clz R8, R14
l3339: bicLEs R14, R0, R2, ASR R14
l3340: clz R9, R11
l3341: adcVCs R4, R11, #15552
l3342: subLSs R1, R6, R11
l3343: andLEs R11, R10, #-1711276032
l3344: teq R7, R1, LSR #4
l3345: mov R0, #64
l3346: str R3, [sp], -R0
l3347: bicHI R7, R4, R4, ROR #19
l3348: bic R10, R14, R0
l3349: andVC R5, R5, R0, RRX 
l3350: clz R4, R2
l3351: rsbLTs R12, R3, #729808896
l3352: sub R3, R3, #123904
l3353: orrLSs R1, R0, #933888
l3354: adc R12, R0, R6, ROR R3
l3355: andHIs R6, R11, #35651584
l3356: tst R14, R9
l3357: teqNE R3, R9, ROR #6
l3358: eors R11, R6, R3, RRX 
l3359: clzLE R14, R9
l3360: teqLS R11, R15, RRX 
l3361: orrPL R5, R4, R0, LSR R0
l3362: tst R4, #2129920
l3363: b l3372
l3364: subPLs R11, R0, R11
l3365: addLT R12, R7, #1056964608
l3366: bic R9, R0, R0, ASR R8
l3367: rscs R3, R15, R15
l3368: movCCs R6, #3200
l3369: eorVC R6, R9, R8, ASR R6
l3370: cmnVC R8, #3488
l3371: sub R7, R7, #10878976
l3372: rscs R12, R1, R3, ROR R9
l3373: cmn R15, R8, LSL #14
l3374: adcNE R7, R12, R8
l3375: bGT l3381
l3376: add R1, R0, #54
l3377: subLEs R4, R14, R11
l3378: eorLS R11, R1, #320
l3379: subMIs R1, R4, R4, ASR #2
l3380: b l3382
l3381: b l3377
l3382: mov R1, R3, LSR #21
l3383: mvnLS R1, R10, LSL R2
l3384: eor R0, R7, #667648
l3385: tstPL R11, R12
l3386: b l3395
l3387: add R1, R0, #46
l3388: orrEQs R9, R8, R14, LSL R0
l3389: adcLS R6, R11, #47
l3390: cmn R11, #54272
l3391: movs R5, R8, RRX 
l3392: bicLS R11, R10, #55836672
l3393: movs R7, R7, ASR #7
l3394: b l3396
l3395: b l3388
l3396: teqPL R6, #3008
l3397: clzVS R11, R9
l3398: orrGE R5, R14, #224
l3399: subPLs R1, R4, R5, ROR #27
l3400: tstVS R5, R5, ROR #19
l3401: subPLs R2, R4, R3
l3402: b l3403
l3403: rsb R14, R11, R7, LSL #19
l3404: clzLT R4, R8
l3405: eorNEs R0, R12, R6, ROR #3
l3406: eorLSs R11, R0, R9
l3407: mvnMIs R3, R9, ASR #5
l3408: andLSs R7, R1, R14, ROR R12
l3409: rsbLT R6, R9, R6, RRX 
l3410: adcVSs R12, R11, R7
l3411: rscs R0, R9, R8
l3412: ldr R8, [sp, #+40]
l3413: movLSs R7, R4
l3414: teq R14, R9, RRX 
l3415: bPL l3419
l3416: adcCSs R10, R3, #11075584
l3417: bicLSs R5, R14, R14
l3418: eor R12, R14, #12480
l3419: subGTs R8, R4, R7, ROR R12
l3420: eorMIs R8, R5, R10, ROR #12
l3421: subLTs R7, R7, #-1476395008
l3422: b l3426
l3423: adcs R12, R3, #4194304
l3424: eorVC R0, R7, R6, LSR R11
l3425: sbcLTs R4, R7, R10, ASR R10
l3426: movs R5, R9, ROR R14
l3427: bNE l3434
l3428: add R1, R0, #78
l3429: rscPL R7, R12, R8, ROR R9
l3430: teq R3, R0, LSR R6
l3431: mvn R7, R10, RRX 
l3432: orrGE R7, R2, R7, LSL R0
l3433: b l3435
l3434: b l3429
l3435: orrs R11, R8, R3, LSL R5
l3436: rsbGE R9, R6, R12, ASR R4
l3437: and R7, R6, R5
l3438: b l3442
l3439: add R1, R0, #106
l3440: bic R11, R12, R9, RRX 
l3441: b l3443
l3442: b l3440
l3443: sub R11, R10, R10, ASR #11
l3444: bNE l3452
l3445: sbcNE R6, R15, #173015040
l3446: movLS R1, R8
l3447: clzCS R11, R11
l3448: cmpPL R5, R2, LSR #5
l3449: andLE R9, R3, R11
l3450: cmpGE R8, R1, LSR R8
l3451: sbc R10, R2, R6, LSR R5
l3452: subLE R1, R6, R1, RRX 
l3453: b l3455
l3454: cmpEQ R10, #5120
l3455: sbcVSs R4, R0, R1
l3456: tstCC R2, R7
l3457: subs R11, R1, R9, LSL #15
l3458: mvnGE R5, #393216
l3459: sbcLEs R7, R14, R12, LSR #19
l3460: rsbVCs R3, R15, R11, LSR #12
l3461: clzGT R14, R2
l3462: rsbLEs R6, R1, R4
l3463: andCCs R1, R3, R9, LSL R7
l3464: cmpMI R7, #376832
l3465: tstPL R11, R9
l3466: andCSs R4, R14, R2
l3467: bic R8, R8, #38912
l3468: tstLT R6, #253952
l3469: andNEs R9, R11, #193536
l3470: orrGEs R11, R1, R7, ASR R12
l3471: adcVCs R7, R8, #101711872
l3472: orrs R9, R11, #210944
l3473: sbcs R2, R7, R14, LSR R6
l3474: bVC l3482
l3475: add R1, R0, #103
l3476: clzMI R1, R9
l3477: rsbs R2, R1, R3, LSR #10
l3478: clzCS R0, R8
l3479: cmp R10, R12
l3480: mvns R12, R15, LSR #27
l3481: b l3483
l3482: b l3476
l3483: mvnMI R9, #864026624
l3484: teq R9, #-1073741784
l3485: bGT l3493
l3486: adcGT R8, R4, #15104
l3487: mvns R5, #265289728
l3488: andHI R3, R8, #244
l3489: andCS R8, R1, #56320
l3490: cmnVC R9, R10
l3491: rsb R9, R2, R10, ROR R0
l3492: andLEs R5, R8, R2
l3493: movs R3, R2, ROR R1
l3494: movEQs R1, R0, RRX 
l3495: rscLE R12, R3, R0, LSR R14
l3496: teqLT R14, R9, LSL R14
l3497: cmp R3, R0, LSR #21
l3498: orrLS R6, R7, #15663104
l3499: tst R12, R15, LSL #0
l3500: adcs R5, R2, R15, RRX 
l3501: orrCCs R7, R4, R8, LSR R3
l3502: cmnMI R0, R11, LSR R6
l3503: clz R10, R12
l3504: adds R0, R1, R5, LSR #11
l3505: and R2, R4, R11, ASR #25
l3506: rsbMIs R11, R5, R12, LSL #26
l3507: adcHIs R2, R0, #4014080
l3508: b l3516
l3509: add R1, R0, #143
l3510: cmnNE R9, R5, ASR R2
l3511: orrGEs R2, R6, #100
l3512: rsbVCs R7, R5, R14, ROR R5
l3513: eorGEs R9, R15, R11, LSL #4
l3514: movs R12, R14, ROR #21
l3515: b l3517
l3516: b l3510
l3517: bicVS R3, R14, R1, ASR R3
l3518: clzCS R0, R12
l3519: orrVC R4, R0, R7, RRX 
l3520: sbc R12, R4, #933888
l3521: sub R12, R2, #11403264
l3522: eorVSs R3, R5, R10, RRX 
l3523: subHI R2, R6, R8, RRX 
l3524: subs R1, R1, R14
l3525: bic R0, R10, R14
l3526: rscs R0, R15, R11
l3527: and R1, R7, R11
l3528: str R6, [sp, #+72]
l3529: cmpNE R0, R7
l3530: sbcs R3, R12, #243269632
l3531: adc R7, R12, R12, LSL #14
l3532: andMI R10, R1, R0, LSR R9
l3533: orrEQs R4, R0, #616
l3534: rsbMI R6, R2, R7
l3535: clzNE R6, R6
l3536: andLEs R10, R3, R3, ROR R8
l3537: subs R12, R9, #10624
l3538: clzHI R14, R8
l3539: bLS l3543
l3540: andGE R12, R6, R14, RRX 
l3541: teq R4, #1073741845
l3542: andCSs R1, R11, R12
l3543: bic R6, R11, R2, ROR R1
l3544: cmpCC R8, R4, ROR R0
l3545: mov R6, #36
l3546: str R11, [sp], +R6
l3547: bics R8, R10, R1, LSR R0
l3548: cmn R15, R12
l3549: b l3556
l3550: sbcVSs R14, R11, R9, RRX 
l3551: sbcCCs R2, R3, R6, ASR R0
l3552: clzCS R12, R12
l3553: cmp R1, R11, ASR #14
l3554: teqLE R2, R4, ROR #8
l3555: tst R14, R6, ROR #2
l3556: mvn R0, #55
l3557: bicGT R1, R11, R15
l3558: eorNE R7, R9, R7
l3559: tst R9, R8
l3560: cmnLE R2, R1
l3561: cmnNE R0, R8, ASR #4
l3562: ands R1, R0, #2960
l3563: rscCSs R5, R12, #246784
l3564: ldr R10, [sp], #+8
l3565: andMI R2, R5, R14, ASR #25
l3566: sub R14, R0, R12
l3567: strCS R2, [sp, #+28]
l3568: tstCS R4, R4
l3569: cmnLS R3, R2
l3570: mvnLE R12, R8, ASR R7
l3571: bGE l3576
l3572: bic R5, R14, R8, ROR R7
l3573: eorCSs R6, R1, #258048
l3574: adcVSs R14, R14, R15
l3575: cmn R14, R7, ASR R11
l3576: rsbCCs R11, R0, #2686976
l3577: bMI l3585
l3578: add R1, R0, #149
l3579: subs R4, R0, R9, LSL R14
l3580: mvns R5, #31
l3581: andCS R8, R7, R7, RRX 
l3582: cmnGT R6, R9, ROR #6
l3583: eorPL R3, R1, R12, LSL R5
l3584: b l3586
l3585: b l3579
l3586: teqNE R10, R10, LSL #27
l3587: subs R3, R12, #293601280
l3588: orrs R1, R7, R0, ASR R12
l3589: subCS R9, R9, R12
l3590: bMI l3596
l3591: add R1, R0, #209
l3592: add R12, R5, R1
l3593: andLS R2, R3, R8
l3594: andMIs R6, R12, #454656
l3595: b l3597
l3596: b l3592
l3597: sbcCCs R8, R3, #1280
l3598: bVS l3607
l3599: eorCCs R2, R8, #637534208
l3600: mov R0, R4
l3601: teq R11, #3600
l3602: clzCS R5, R7
l3603: clzCC R7, R10
l3604: bicGE R9, R9, R7, ASR #15
l3605: rscVS R11, R7, #336
l3606: addGEs R14, R2, R9, ROR #30
l3607: rsb R7, R8, R1, LSR #13
l3608: sub R12, R14, R5, ROR R11
l3609: teqVC R4, R0, LSR #26
l3610: b l3615
l3611: add R1, R0, #51
l3612: clz R3, R2
l3613: subPLs R7, R12, R6
l3614: b l3616
l3615: b l3612
l3616: andNEs R8, R4, R0, RRX 
l3617: bGT l3624
l3618: tst R1, #500
l3619: andHIs R3, R12, #28
l3620: mvnPLs R11, R0
l3621: sbc R12, R2, R6
l3622: teqPL R10, R7
l3623: bicVC R7, R0, #306184192
l3624: sbcs R4, R1, R4, LSR #6
l3625: andMIs R11, R2, R5, LSL R14
l3626: sbc R4, R14, R9, ASR R7
l3627: tstLS R10, R4, ROR R3
l3628: andGE R0, R8, R10, LSL #3
l3629: add R1, R7, R5, RRX 
l3630: subCS R6, R7, R1, ASR R4
l3631: tstNE R4, #2752512
l3632: mvnLT R1, R6, LSL R3
l3633: mov R12, #12
l3634: ldr R8, [sp, -R12]!
l3635: eor R8, R15, R6, ASR #15
l3636: bicLE R2, R4, #257024
l3637: teq R6, R7
l3638: eorGEs R5, R8, R12, LSL R0
l3639: rscs R4, R2, R7
l3640: bLE l3648
l3641: add R1, R0, #144
l3642: subLS R14, R2, R5
l3643: mvnEQ R1, R8, RRX 
l3644: sbcCC R10, R8, R11, ASR R10
l3645: rscs R9, R14, #15728640
l3646: rsbs R5, R12, R10, ASR #0
l3647: b l3649
l3648: b l3642
l3649: eorEQs R5, R11, #425984
l3650: b l3652
l3651: rsbGT R10, R15, R7, ROR #31
l3652: mvnCS R14, R4, ASR R10
l3653: addHIs R3, R2, R15, RRX 
l3654: eors R5, R14, R1, RRX 
l3655: mvn R9, R0, ASR R8
l3656: andLTs R6, R11, R4, ROR R7
l3657: eorVS R10, R0, R10, ROR #30
l3658: mvns R0, R1, LSL R4
l3659: teqVS R6, R14
l3660: b l3664
l3661: add R1, R0, #117
l3662: addVC R14, R12, R5, ROR R6
l3663: b l3665
l3664: b l3662
l3665: rscGE R8, R4, R7
l3666: bic R10, R6, R14, LSL R3
l3667: eorLE R5, R10, R0, ASR R4
l3668: bicMI R9, R2, #574619648
l3669: movNE R2, R6, ASR R0
l3670: eorHIs R4, R9, R0, LSR R6
l3671: bVS l3678
l3672: sbcLTs R8, R2, R7, RRX 
l3673: sub R3, R3, R10, ASR #23
l3674: clzLE R14, R3
l3675: adcVC R3, R11, R4, ASR #12
l3676: rsbHI R12, R9, R0, ASR #15
l3677: clzHI R9, R12
l3678: eorLE R0, R9, R14, LSL #2
l3679: rscs R7, R4, R5, ASR #24
l3680: orrLSs R10, R9, R11, LSL #28
l3681: add R6, R4, R12
l3682: bNE l3689
l3683: teqLT R4, R3, RRX 
l3684: rscLS R12, R9, R9, ASR R2
l3685: rscVS R2, R11, R10
l3686: orrs R2, R14, R9, ASR #4
l3687: adcs R9, R4, R14
l3688: addNEs R3, R0, R14, ROR #19
l3689: teq R11, R8, LSL #6
l3690: teq R11, R10, RRX 
l3691: addCS R14, R2, R10, RRX 
l3692: addGT R2, R4, R11
l3693: orrLS R9, R4, #16580608
l3694: b l3702
l3695: add R1, R0, #47
l3696: and R10, R2, #-1040187392
l3697: rsbVCs R6, R0, R14, ROR R12
l3698: orr R7, R0, R2, LSL R11
l3699: eors R9, R10, #172
l3700: cmpPL R3, R6, ROR R10
l3701: b l3703
l3702: b l3696
l3703: eorVS R3, R4, R9, RRX 
l3704: andLTs R0, R4, R10, LSR #3
l3705: mvnEQ R12, #1840
l3706: bicCS R0, R8, #416
l3707: mov R11, #36
l3708: ldrLT R0, [sp, +R11]
l3709: bics R1, R0, #-2147483602
l3710: cmn R12, #1392640
l3711: tstLE R11, R15
l3712: tstVS R7, R8, LSL R12
l3713: teqHI R8, R3, ASR #21
l3714: tstGT R4, R14
l3715: rsbs R6, R7, #704
l3716: b l3718
l3717: orrs R4, R4, R4
l3718: ands R3, R10, R3, ASR R10
l3719: adcVS R1, R7, R5, ASR R3
l3720: adc R14, R8, R14, LSR R12
l3721: eorPLs R1, R15, #7808
l3722: tst R6, R3, RRX 
l3723: clzCC R9, R3
l3724: andGE R6, R2, R4, LSR R0
l3725: adcLTs R7, R0, #86
l3726: movs R1, R4
l3727: sbcNEs R1, R2, R0, LSL #14
l3728: tstVS R14, R7, ROR R14
l3729: eors R1, R1, R3
l3730: orrPL R3, R4, R1
l3731: eorNE R4, R3, R5, LSR R12
l3732: cmpCC R12, R15
l3733: cmn R5, R1, LSL #27
l3734: bNE l3735
l3735: eorMI R4, R8, #1073741863
l3736: andPLs R1, R1, #37
l3737: eorCSs R4, R14, R0, LSR R0
l3738: movEQ R3, #536870914
l3739: rsbLS R3, R11, R15, ASR #0
l3740: b l3742
l3741: cmpMI R7, R2, LSL #28
l3742: eors R9, R1, R7, LSR R1
l3743: b l3750
l3744: tstMI R5, R5, LSL R2
l3745: teq R11, #-1073741820
l3746: mvnGEs R4, R5, LSL R1
l3747: teqLS R0, R3, LSR R11
l3748: bicCC R9, R8, R12, ROR R9
l3749: bicGEs R5, R14, R1, RRX 
l3750: subHIs R3, R3, R0
l3751: cmpLE R14, R12, LSR #2
l3752: and R7, R12, R6
l3753: clzMI R4, R10
l3754: subGE R9, R5, R3
l3755: teq R5, R1, LSL #27
l3756: sub R0, R6, R5
l3757: adds R6, R3, #-1023410176
l3758: teqCS R10, #272
l3759: adcHI R14, R3, R11, LSR #22
l3760: rsbVS R10, R12, R11, LSL R0
l3761: sbcLTs R9, R7, R10, ROR #7
l3762: eorLT R4, R6, R6, LSR #1
l3763: and R2, R2, #83
l3764: sub R12, R12, #44564480
l3765: subCSs R14, R14, R8
l3766: teqVC R6, R8, ROR R12
l3767: rscs R2, R10, R5, ASR R14
l3768: tstNE R8, R6, LSR #15
l3769: bicGE R4, R10, R6, LSL R1
l3770: tstHI R14, #738197504
l3771: subVC R4, R11, R9, LSR R6
l3772: clzMI R14, R7
l3773: bGT l3775
l3774: rscs R6, R1, R3, LSR #12
l3775: subVS R4, R1, #65280
l3776: subLSs R14, R1, R12, LSR R2
l3777: adcs R14, R4, R2
l3778: eorLT R0, R12, #114688
l3779: mvns R12, R11
l3780: orrs R5, R5, R14, RRX 
l3781: bMI l3787
l3782: add R1, R0, #85
l3783: mvnLS R8, R1, ROR R6
l3784: adds R10, R1, #-1342177274
l3785: addEQ R1, R7, #224
l3786: b l3788
l3787: b l3783
l3788: addCCs R8, R0, #976
l3789: adds R12, R4, R6, LSR #19
l3790: andEQs R11, R6, R10, RRX 
l3791: rscEQs R0, R9, R8, ASR #16
l3792: sbcs R5, R2, R9
l3793: adcMIs R6, R5, R8
l3794: addMIs R10, R2, R10, LSL R11
l3795: bicLTs R12, R6, R15
l3796: rscs R0, R15, #167
l3797: orrNEs R2, R8, R10
l3798: teqPL R8, R14, LSL #7
l3799: bicLT R4, R10, #4456448
l3800: mov R9, #28
l3801: str R15, [sp, +R9]
l3802: tstVC R10, R5, ASR #10
l3803: rsbMIs R3, R8, #26624
l3804: movVSs R3, #1073741824
l3805: bVS l3810
l3806: add R1, R0, #37
l3807: cmn R6, R11, RRX 
l3808: orr R6, R8, R10, ROR R10
l3809: b l3811
l3810: b l3807
l3811: rsbHI R6, R11, R2, ROR #3
l3812: subs R4, R2, R6, LSR #7
l3813: mvns R14, #41943040
l3814: and R2, R3, #301989888
l3815: b l3819
l3816: add R1, R0, #76
l3817: eors R3, R2, R11, LSL R3
l3818: b l3820
l3819: b l3817
l3820: clz R1, R0
l3821: eors R1, R12, R4, LSR #4
l3822: cmpPL R2, R5
l3823: subNEs R7, R4, R10, LSL R0
l3824: subLEs R7, R6, R7
l3825: mov R8, #12
l3826: str R14, [sp, +R8]!
l3827: mvnHI R14, R8
l3828: tstMI R11, R3
l3829: clzMI R0, R4
l3830: andNE R7, R15, R14
l3831: subLSs R8, R2, R3
l3832: adcLEs R14, R0, R14, ASR R7
l3833: subs R9, R14, R9, ROR R4
l3834: sbcHI R11, R8, R2, LSR R5
l3835: clzCS R11, R2
l3836: ldrGE R7, [sp, #-32]
l3837: addMIs R3, R1, R0
l3838: eor R0, R2, #67108865
l3839: addHI R6, R12, #683671552
l3840: b l3849
l3841: add R1, R0, #227
l3842: teq R2, #174
l3843: teq R2, R5, LSL R11
l3844: mvnCS R6, R10
l3845: adcs R7, R11, R3
l3846: teq R11, R6
l3847: teq R5, R14
l3848: b l3850
l3849: b l3842
l3850: rscGT R0, R12, R11
l3851: bMI l3861
l3852: eorLSs R0, R3, R11
l3853: eorGE R2, R5, R3
l3854: orrs R4, R3, R15
l3855: tst R2, #235520
l3856: subs R8, R11, R11
l3857: add R4, R15, R1
l3858: sbcHI R10, R14, R3, LSL R2
l3859: bic R5, R14, R6, ASR #12
l3860: mvnCC R9, #50176
l3861: mvns R12, R3, ASR R7
l3862: mov R12, #32
l3863: str R6, [sp, -R12]!
l3864: rsbVS R6, R4, R3, ASR #30
l3865: andNE R1, R15, R9, ASR #13
l3866: mvn R14, R1, LSL #2
l3867: mov R12, #32
l3868: str R9, [sp], +R12
l3869: teq R9, R3, LSL R2
l3870: bVC l3877
l3871: add R1, R0, #186
l3872: orrVS R9, R1, R6
l3873: subs R8, R8, #3571712
l3874: tst R15, R14, ASR #20
l3875: adc R14, R15, #3712
l3876: b l3878
l3877: b l3872
l3878: movMIs R4, R14
l3879: andMIs R11, R8, R0
l3880: eor R4, R5, R6, LSL #1
l3881: addVC R11, R2, R11, RRX 
l3882: rscs R7, R0, R3
l3883: bCS l3889
l3884: add R1, R0, #186
l3885: movLT R5, R0
l3886: ands R14, R2, R0, ROR #8
l3887: subs R6, R15, #658505728
l3888: b l3890
l3889: b l3885
l3890: eor R3, R11, #2719744
l3891: mov R7, #12
l3892: ldr R7, [sp, -R7]!
l3893: cmp R14, #90112
l3894: cmpLT R0, #-536870905
l3895: bVS l3899
l3896: orrHIs R14, R2, R8
l3897: rscGT R14, R11, R3
l3898: sbcHI R3, R9, #116391936
l3899: teqVC R10, R7, RRX 
l3900: bicLEs R4, R8, R9, ROR #16
l3901: tst R5, R8, LSL R12
l3902: adcs R11, R3, #515899392
l3903: sbc R1, R11, R3, LSR R5
l3904: andEQs R8, R8, R4, ASR R6
l3905: orr R8, R9, R7, LSR R8
l3906: sbcCS R11, R2, R9, LSR R7
l3907: adc R0, R1, #8847360
l3908: tstHI R1, R14, RRX 
l3909: orrGE R7, R9, #50944
l3910: rsb R1, R7, R1, ROR R0
l3911: cmn R2, R14, LSR R5
l3912: movVC R3, R15, ASR #14
l3913: bMI l3918
l3914: add R1, R0, #31
l3915: teqVS R3, R10, ASR #4
l3916: mvnMIs R2, R10, ASR R10
l3917: b l3919
l3918: b l3915
l3919: bics R12, R12, R9, ROR R0
l3920: and R1, R5, #3178496
l3921: mvnHI R7, #897024
l3922: teq R2, #15616
l3923: cmnLT R12, R2, LSR R5
l3924: adcHIs R2, R5, R4
l3925: b l3931
l3926: add R1, R0, #220
l3927: rsbs R3, R5, #721420288
l3928: mvnLSs R14, R2
l3929: clz R5, R10
l3930: b l3932
l3931: b l3927
l3932: bics R11, R9, #1073741849
l3933: orr R5, R12, #1456
l3934: adcs R1, R8, R5, LSR #13
l3935: subHI R9, R2, R2, LSL R11
l3936: clzHI R2, R1
l3937: sub R5, R8, R7, ROR #5
l3938: teq R3, R11
l3939: bVC l3945
l3940: add R1, R0, #194
l3941: eorVCs R11, R1, R14, RRX 
l3942: orrs R4, R11, R12
l3943: rsb R10, R14, R0
l3944: b l3946
l3945: b l3941
l3946: rscs R14, R10, R6
l3947: clzHI R8, R5
l3948: eor R2, R15, R12
l3949: adds R14, R10, R3, ASR #6
l3950: sbcLEs R8, R12, R6, LSR #16
l3951: eorEQ R12, R5, R2, RRX 
l3952: rsbLE R8, R6, R0, ASR #29
l3953: b l3957
l3954: add R1, R0, #167
l3955: mov R14, R15, ROR #21
l3956: b l3958
l3957: b l3955
l3958: addLT R0, R6, R12, RRX 
l3959: tstLE R11, R5, RRX 
l3960: andHI R0, R2, #652
l3961: bGE l3965
l3962: cmn R2, R4, ASR R2
l3963: movGEs R3, R15, RRX 
l3964: sbcHIs R2, R1, R4, LSR #13
l3965: clz R6, R3
l3966: cmnVS R10, R5
l3967: rscLS R8, R0, #1509949440
l3968: sub R5, R7, R7, LSR R12
l3969: eor R7, R10, R8, RRX 
l3970: addGE R10, R15, #448790528
l3971: mov R12, #8
l3972: ldrLT R1, [sp, -R12]
l3973: b l3979
l3974: orrGEs R11, R11, R4, LSR R14
l3975: sbcCC R4, R11, R1, LSL #6
l3976: addVC R8, R2, R12, LSL R1
l3977: eorEQ R9, R3, R6
l3978: eorGT R6, R7, #81920
l3979: adc R6, R9, #1006632960
l3980: cmpMI R3, R4, LSL R0
l3981: mov R14, #4
l3982: str R14, [sp, -R14]!
l3983: cmn R15, R1
l3984: andPL R4, R8, #2244608
l3985: adcGT R6, R10, R1
l3986: subCC R4, R12, #1792
l3987: bLE l3988
l3988: orrNEs R3, R6, #101376
l3989: sbc R5, R1, R3, RRX 
l3990: addHIs R2, R11, R6
l3991: subs R0, R6, #-2147483648
l3992: rscs R5, R15, R6, RRX 
l3993: ldr R14, [sp, #+0]
l3994: eorHI R3, R4, R7, LSR #15
l3995: eors R11, R1, R10, ROR #26
l3996: andLTs R4, R11, R6, ASR #23
l3997: tstGE R12, R7, RRX 
l3998: clzCC R11, R7
l3999: mvnVC R6, R14, RRX 
l4000: rsbLEs R1, R5, R5
l4001: clz R4, R7
l4002: adcs R1, R12, R9
l4003: cmpGT R3, R12
l4004: movs R0, R7, RRX 
l4005: eor R4, R8, R15, RRX 
l4006: clzGE R8, R3
l4007: str R9, [sp, #+36]!
l4008: sub R2, R2, R8
l4009: cmpVS R11, R15
l4010: tst R10, #884736
l4011: bicPLs R7, R10, R5, LSL R7
l4012: bicLS R2, R5, R3, ROR R6
l4013: mvnCCs R5, R10
l4014: cmp R11, R14
l4015: movLE R8, R4
l4016: str R12, [sp, #-32]!
l4017: bMI l4021
l4018: cmp R5, R14, ASR #25
l4019: clzNE R5, R11
l4020: cmpLE R0, #204472320
l4021: movs R8, #39845888
l4022: mvnPLs R1, #200704
l4023: bVC l4032
l4024: add R1, R0, #80
l4025: sbc R3, R8, R11
l4026: sub R11, R3, R10, LSR #5
l4027: addCCs R3, R12, R15, ROR #5
l4028: rscGEs R2, R14, R3, RRX 
l4029: tstHI R4, #252
l4030: movVSs R2, R1, LSL #31
l4031: b l4033
l4032: b l4025
l4033: str R9, [sp], #+8
l4034: ands R6, R9, R3, LSR R10
l4035: movVC R3, R3, RRX 
l4036: teqCC R8, R12, LSL R2
l4037: bLS l4044
l4038: add R1, R0, #82
l4039: adc R14, R14, #541065216
l4040: teqCC R9, R14, ROR R12
l4041: eorVSs R14, R7, #1476395009
l4042: subs R2, R2, #35913728
l4043: b l4045
l4044: b l4039
l4045: movLSs R10, #114688
l4046: ldrGT R12, [sp, #+0]
l4047: sbc R5, R0, R4, RRX 
l4048: cmpGE R5, R11, RRX 
l4049: subLT R4, R6, R10, LSR R3
l4050: mov R4, #4
l4051: str R5, [sp, +R4]
l4052: rscGEs R0, R1, #7744
l4053: teqEQ R2, #-1107296256
l4054: mov R1, #36
l4055: ldrEQ R12, [sp, -R1]
l4056: orrs R1, R3, R3, RRX 
l4057: orrs R12, R0, #234881024
l4058: subVSs R9, R4, R1, LSR #13
l4059: addPLs R0, R10, #197
l4060: subLT R5, R5, R1, RRX 
l4061: mov R3, #24
l4062: ldrCS R11, [sp, +R3]
l4063: str R14, [sp], #-28
l4064: rsbVC R5, R6, R1
l4065: str R11, [sp, #+32]!
l4066: strVS R8, [sp, #-12]
l4067: subHI R6, R4, R7
l4068: orrs R7, R4, R8, ASR #18
l4069: sbcs R8, R15, R2
l4070: movGEs R1, R2, LSR #17
l4071: orrEQ R12, R2, R3, ROR R9
l4072: and R12, R1, R9
l4073: ldr R6, [sp], #-8
l4074: clzVC R10, R1
l4075: clzLE R5, R12
l4076: andMI R6, R4, R4, LSL R11
l4077: rscGEs R12, R9, R3
l4078: rscGTs R14, R6, R10, ROR #27
l4079: teq R0, R14, RRX 
l4080: bLS l4089
l4081: mvnGTs R5, R5
l4082: cmpGE R2, R7, ROR #18
l4083: andVSs R7, R3, R12, RRX 
l4084: tstCC R8, #1776
l4085: rsc R5, R5, R3, RRX 
l4086: movs R1, R10, LSL R8
l4087: movEQs R10, R0, ROR R7
l4088: subLEs R3, R12, R6, RRX 
l4089: rscPL R7, R12, R4
l4090: cmnHI R1, #-1073741773
l4091: b l4100
l4092: add R1, R0, #15
l4093: rsbMI R10, R0, R1, ASR R6
l4094: teqEQ R10, #15360
l4095: mvnGEs R2, R10, ASR #17
l4096: sub R4, R2, R11, RRX 
l4097: orr R12, R0, R2, RRX 
l4098: orr R8, R1, R1, ROR #3
l4099: b l4101
l4100: b l4093
l4101: addGT R12, R8, R8, LSR #18
l4102: tstGT R12, R12
l4103: cmn R11, R2, LSR R11
l4104: bCC l4110
l4105: add R1, R0, #244
l4106: cmp R3, R5
l4107: andGTs R10, R2, R1, ASR #22
l4108: tstLE R12, #496
l4109: b l4111
l4110: b l4106
l4111: sbc R0, R2, R11, RRX 
l4112: eor R9, R4, R0, LSL R3
l4113: ldrMI R10, [sp, #+0]
l4114: movs R1, R5, ASR #20
l4115: eorEQs R3, R12, #63963136
l4116: clzLT R10, R3
l4117: adc R10, R5, R15
l4118: bics R0, R1, R2
l4119: addNE R14, R1, R12, LSR R6
l4120: b l4122
l4121: bicCS R11, R3, R2
l4122: cmnMI R7, R8, LSL R8
l4123: movMI R6, R14, LSR #16
l4124: rsb R2, R2, R1
l4125: bVC l4134
l4126: movMIs R5, R15, RRX 
l4127: subLS R7, R5, #536870918
l4128: andLE R14, R5, R3, ASR R8
l4129: mvnNEs R0, R14, LSR R5
l4130: tst R9, #58720256
l4131: subCCs R9, R8, R15
l4132: andCSs R10, R6, #1107296256
l4133: rsbs R11, R12, R0, LSL R14
l4134: eorGEs R1, R10, R11, ASR #18
l4135: mov R10, #16
l4136: ldr R5, [sp, -R10]!
l4137: strVC R15, [sp, #-8]
l4138: mvnGE R10, R15
l4139: rsbNEs R2, R7, R2, ASR #8
l4140: cmn R12, #570425344
l4141: subs R2, R15, #28928
l4142: mov R12, #4
l4143: str R8, [sp], -R12
l4144: orrs R7, R14, R11
l4145: and R1, R3, #3407872
l4146: cmn R8, R6
l4147: eorVS R2, R11, R2, LSR #31
l4148: tstNE R14, R10, RRX 
l4149: mov R7, R6, RRX 
l4150: eorGTs R6, R15, #17408
l4151: mvnVSs R4, R0
l4152: andGEs R12, R1, R12, RRX 
l4153: subEQ R9, R2, R1, LSR #25
l4154: orrHIs R6, R15, R8, ASR #7
l4155: b l4158
l4156: subGTs R5, R4, R2, RRX 
l4157: subMIs R3, R8, R9, ROR #2
l4158: cmpVC R11, #35913728
l4159: ldrLT R9, [sp, #+56]
l4160: sbcs R12, R7, R5, LSR R0
l4161: bLS l4171
l4162: mvnNE R5, R5, ASR R11
l4163: cmpHI R15, R11, LSL #8
l4164: rsbHIs R1, R11, R0
l4165: bic R0, R15, R12, RRX 
l4166: rsbVSs R4, R3, R2
l4167: sbcs R12, R3, R4, ROR #21
l4168: adcMIs R12, R8, R4, LSR #26
l4169: add R9, R9, #1012
l4170: cmpHI R12, #4224
l4171: addCCs R9, R14, R14, ROR R5
l4172: cmnHI R2, R3
l4173: teqVS R11, R12
l4174: adcs R4, R9, #-671088638
l4175: eor R0, R12, #-1073741810
l4176: b l4178
l4177: teqMI R10, R1
l4178: rsbHIs R8, R11, R12, RRX 
l4179: bVC l4181
l4180: cmpVS R5, R3
l4181: subCCs R9, R2, R12, LSR #24
l4182: adcLEs R10, R0, #753664
l4183: clz R2, R12
l4184: sbcEQ R6, R10, R2
l4185: bCS l4188
l4186: eorNEs R3, R9, #574619648
l4187: ands R5, R4, R3, LSR #13
l4188: mov R3, R5, LSL #12
l4189: adcs R11, R5, R8, ROR R12
l4190: mov R7, R2
l4191: bCC l4197
l4192: add R1, R0, #2
l4193: sub R12, R14, R8
l4194: ands R11, R8, R0, ASR #1
l4195: mvnHI R0, R11, RRX 
l4196: b l4198
l4197: b l4193
l4198: andMI R5, R5, R1
l4199: ands R12, R4, R9
l4200: orrs R5, R9, #45
l4201: adc R1, R7, R3, LSL R14
l4202: subs R8, R15, R15, ROR #15
l4203: movs R12, #622592
l4204: eorGTs R8, R7, #7602176
l4205: movVS R1, #37748736
l4206: add R12, R15, R15, RRX 
l4207: rsbs R3, R2, #4259840
l4208: bics R5, R2, R11, ASR R11
l4209: sub R12, R4, R0, RRX 
l4210: adc R3, R0, R7, ASR #0
l4211: movNEs R0, R1, ROR #28
l4212: eor R2, R12, R8, LSL R5
l4213: eor R0, R5, R6, LSR #29
l4214: andVS R12, R0, #249856
l4215: clzVS R5, R5
l4216: rsbs R0, R9, #242
l4217: andNE R4, R11, R7
l4218: bicCS R12, R0, R3, LSL #26
l4219: adcNE R1, R14, R11
l4220: mov R5, #12
l4221: strCC R5, [sp, +R5]
l4222: rsbCCs R5, R3, R7
l4223: tstNE R1, R14
l4224: adc R7, R15, R14, ROR #18
l4225: cmpLS R5, R2
l4226: tstEQ R5, R15, ROR #30
l4227: sbcCC R2, R14, R1
l4228: cmnNE R6, R7
l4229: cmnLS R12, #77824
l4230: teq R14, R14, LSR R10
l4231: movLE R1, R2
l4232: addLSs R2, R12, R14, LSR R7
l4233: bPL l4238
l4234: add R1, R0, #67
l4235: subEQ R4, R9, R3
l4236: orr R7, R2, #1073741830
l4237: b l4239
l4238: b l4235
l4239: tst R12, R11, RRX 
l4240: mvn R2, R11, LSR #0
l4241: rsb R5, R4, R10, ASR R0
l4242: sbcLEs R14, R6, R1, LSL R10
l4243: str R3, [sp], #+28
l4244: str R2, [sp], #-20
l4245: sbcCC R11, R0, R15, LSR #23
l4246: teqCC R10, R4
l4247: rsc R11, R1, R7, LSL R14
l4248: clz R0, R7
l4249: cmn R5, R5
l4250: bics R5, R8, #3808
l4251: movCC R7, R7, ASR R8
l4252: tst R3, #201326592
l4253: mvn R0, R10
l4254: clzMI R4, R6
l4255: mov R12, #32
l4256: ldr R12, [sp, +R12]!
l4257: cmpCC R10, #-1073741772
l4258: add R7, R8, #7680
l4259: andEQ R8, R15, #-1073741810
l4260: cmnLE R2, R2, ROR R5
l4261: mov R5, #4
l4262: str R2, [sp], +R5
l4263: adcs R10, R0, R6
l4264: bicCCs R5, R8, R2, LSR #12
l4265: cmn R10, #139460608
l4266: andLS R7, R1, #2670592
l4267: subs R3, R11, R7
l4268: sbcVSs R7, R1, R4, RRX 
l4269: cmnCC R15, #3424256
l4270: eors R14, R11, R12, LSR R8
l4271: andVSs R4, R0, #917504
l4272: addHIs R11, R12, R12
l4273: teq R6, R12, ROR R6
l4274: bVC l4283
l4275: add R1, R0, #48
l4276: rsbPL R11, R9, R14, LSL #31
l4277: cmp R7, R12, ASR #16
l4278: sub R8, R6, #884
l4279: clzHI R1, R10
l4280: addNEs R7, R5, R12, LSR R6
l4281: sub R11, R0, R14
l4282: b l4284
l4283: b l4276
l4284: mov R7, #52
l4285: str R10, [sp], -R7
l4286: rsbNEs R10, R11, R4
l4287: b l4295
l4288: add R1, R0, #6
l4289: mov R3, R7, ASR #12
l4290: sbcs R12, R14, #1073741827
l4291: tstLT R14, R6, ROR R12
l4292: teq R2, R10, RRX 
l4293: rsb R12, R9, R11, ROR R2
l4294: b l4296
l4295: b l4289
l4296: clzGT R10, R2
l4297: rsc R1, R9, R6, RRX 
l4298: tstLE R8, R1
l4299: eor R11, R1, R12
l4300: subLTs R1, R11, R12, ASR #30
l4301: teqEQ R4, R15, LSL #13
l4302: subLTs R0, R6, R14, LSL R10
l4303: subs R12, R5, R1, LSR #6
l4304: strCC R15, [sp, #+60]
l4305: subGTs R3, R12, R6
l4306: cmnGE R11, #140
l4307: eorVCs R11, R10, R3
l4308: rscPLs R6, R2, #123904
l4309: cmnLT R2, R4, LSR #9
l4310: bics R6, R10, #2359296
l4311: clz R2, R10
l4312: orrCCs R7, R7, R6, ROR #24
l4313: adcCSs R6, R15, R11
l4314: tstNE R11, R6, LSR R14
l4315: bPL l4323
l4316: add R1, R0, #5
l4317: clzEQ R0, R1
l4318: clz R8, R11
l4319: cmp R11, R9
l4320: mvn R3, #1605632
l4321: rscCC R0, R8, R9, ASR #18
l4322: b l4324
l4323: b l4317
l4324: adcHI R6, R3, R4, ROR #9
l4325: b l4326
l4326: eorLT R11, R1, #2130706432
l4327: teqCS R12, R4
l4328: orr R5, R2, R15, LSR #18
l4329: eorPLs R8, R1, R10
l4330: eors R4, R14, R6
l4331: bicGE R10, R5, R4, RRX 
l4332: subLSs R5, R8, R2, LSL R1
l4333: eorMIs R14, R3, R7, ASR R2
l4334: sub R1, R0, R4
l4335: and R2, R10, R0, LSL R5
l4336: subNE R10, R3, R0
l4337: teqCC R0, R12
l4338: teqLT R10, R11, LSR #19
l4339: eorGT R3, R14, R4
l4340: adcs R10, R14, R14, RRX 
l4341: addEQs R2, R0, R1
l4342: subs R10, R15, R8
l4343: movVCs R0, #8384
l4344: rsc R6, R11, R0, LSL #2
l4345: bic R3, R11, R0, ASR R8
l4346: cmn R5, R10, RRX 
l4347: bic R10, R3, R6, ASR R10
l4348: clzLT R12, R7
l4349: subHIs R3, R7, R6, LSR #23
l4350: teq R9, #2637824
l4351: tstGT R8, #1015808
l4352: orrHIs R11, R2, R3, LSR #17
l4353: eor R4, R5, R8, RRX 
l4354: cmnGE R14, R3
l4355: adcCS R6, R2, #36962304
l4356: cmp R11, R12, ASR R2
l4357: subVCs R3, R8, #800
l4358: orrVC R4, R11, R7, LSR #0
l4359: cmp R15, #210
l4360: movGTs R4, #589824
l4361: eorMI R8, R15, R5
l4362: cmp R14, R0, ASR R5
l4363: sbcGE R2, R0, R4, LSR R14
l4364: subVSs R12, R3, #242688
l4365: rscs R11, R15, #1280
l4366: b l4370
l4367: add R1, R0, #82
l4368: andLS R9, R5, R11
l4369: b l4371
l4370: b l4368
l4371: movs R6, R5, RRX 
l4372: sub R0, R12, R1, LSL R2
l4373: ands R4, R9, #-67108862
l4374: subVS R1, R9, R7
l4375: orrLE R6, R3, R7, LSL R11
l4376: ldrLT R2, [sp, #+4]
l4377: sbcs R9, R4, R4, RRX 
l4378: mov R0, #48
l4379: ldr R5, [sp], +R0
l4380: ands R0, R8, R11, ROR R0
l4381: addNEs R6, R14, R14, RRX 
l4382: cmnVS R3, R14, RRX 
l4383: teq R7, R14, ASR #17
l4384: rsbs R8, R10, R12, LSL R9
l4385: rscs R6, R3, #805306381
l4386: bicMIs R3, R6, R5
l4387: subEQs R14, R4, R1
l4388: orrLE R11, R7, R2, ROR #17
l4389: cmpLS R11, R9, RRX 
l4390: adcLS R8, R0, R10, LSL R12
l4391: b l4399
l4392: add R1, R0, #68
l4393: mvnPLs R14, R10, ROR R8
l4394: cmpNE R1, #43778048
l4395: clzGE R4, R5
l4396: movLEs R6, #524288
l4397: adcLEs R6, R2, R3, RRX 
l4398: b l4400
l4399: b l4393
l4400: movPL R7, R3
l4401: subLSs R0, R2, #14336
l4402: strCS R3, [sp, #-28]
l4403: b l4411
l4404: add R1, R0, #214
l4405: rscs R11, R0, R14, LSL R6
l4406: eorPL R5, R11, R11, ASR #14
l4407: cmpMI R14, R15
l4408: andPL R7, R10, R1, LSL R4
l4409: mvnVS R4, R10, ASR R8
l4410: b l4412
l4411: b l4405
l4412: clzGE R5, R12
l4413: mvn R9, R9, RRX 
l4414: orrVS R10, R0, R12, ASR #7
l4415: subGEs R0, R8, R6, ROR #26
l4416: mov R3, #56
l4417: strLS R11, [sp, -R3]
l4418: cmp R12, R5, LSR R11
l4419: mov R5, #44
l4420: str R7, [sp, -R5]!
l4421: tst R0, #229376
l4422: teq R8, R2, ASR #5
l4423: orrs R4, R10, R9
l4424: tstLS R15, #984
l4425: bHI l4430
l4426: bicCCs R8, R8, R1
l4427: addVCs R11, R15, R11
l4428: rscGE R10, R9, #3981312
l4429: cmpLS R14, R10
l4430: adcVC R4, R5, R11, ASR #7
l4431: bicGT R12, R9, R7, LSR #13
l4432: sbcs R4, R9, R6, LSL #16
l4433: sbcs R1, R1, R12, ASR #28
l4434: bVC l4443
l4435: add R1, R0, #45
l4436: mvnLS R0, R1, LSL #5
l4437: adds R1, R5, R5, LSL #21
l4438: adds R2, R11, R11
l4439: subs R8, R7, #805306373
l4440: tst R11, R5, RRX 
l4441: sub R4, R8, #-268435441
l4442: b l4444
l4443: b l4436
l4444: cmpLE R11, R10, LSL R12
l4445: sbcLSs R11, R3, R4, ASR #23
l4446: bCS l4455
l4447: add R1, R0, #33
l4448: addVS R1, R12, #185
l4449: mvnGE R9, R0, LSL #8
l4450: and R6, R2, R6, ROR R7
l4451: subs R3, R4, R2, LSL #16
l4452: teqCC R7, #45824
l4453: clzVC R0, R14
l4454: b l4456
l4455: b l4448
l4456: bHI l4460
l4457: add R1, R0, #172
l4458: add R10, R2, #-2147483621
l4459: b l4461
l4460: b l4458
l4461: rsbs R3, R9, R9
l4462: rscLE R1, R9, R7
l4463: ldr R6, [sp, #+24]!
l4464: b l4471
l4465: eorHI R9, R3, R4, RRX 
l4466: eor R14, R5, #191
l4467: clz R1, R9
l4468: eorLSs R14, R2, R15
l4469: sbcLTs R4, R0, R1, LSL #21
l4470: ands R12, R7, R4, ASR R6
l4471: andHIs R14, R0, #578813952
l4472: bGT l4480
l4473: add R1, R0, #147
l4474: andVCs R8, R9, #0
l4475: sbc R8, R14, R7, RRX 
l4476: clz R0, R2
l4477: teqGT R15, #1359872
l4478: tstHI R6, R15, ROR #7
l4479: b l4481
l4480: b l4474
l4481: and R7, R10, #798720
l4482: bCS l4484
l4483: subPL R4, R7, #1342177287
l4484: subs R12, R1, #41
l4485: bCS l4491
l4486: add R1, R0, #38
l4487: cmnGE R11, #81920
l4488: bicLTs R12, R4, R8, ASR #20
l4489: movNE R10, R14
l4490: b l4492
l4491: b l4487
l4492: sbcEQ R1, R2, #169869312
l4493: bicNE R2, R10, R2, LSL #22
l4494: eorLTs R7, R8, R5
l4495: mvnMI R1, R2
l4496: rsbs R6, R6, #704643072
l4497: adcVSs R10, R10, R9, RRX 
l4498: bics R4, R3, R10, ASR R5
l4499: ldrPL R4, [sp, #+36]
l4500: eor R10, R1, R12
l4501: tst R12, R14, LSL #12
l4502: orrMIs R14, R10, R2
l4503: b l4506
l4504: subGEs R2, R12, #16384
l4505: subPL R1, R3, R14
l4506: subCC R8, R9, #1543503875
l4507: mov R5, #73728
l4508: bicCCs R0, R5, #16711680
l4509: teqNE R9, R15, ROR #16
l4510: cmpPL R6, #3008
l4511: rsbNE R4, R6, R6
l4512: orrNEs R6, R10, R9, LSL R9
l4513: tstLS R5, R14
l4514: cmn R7, R10
l4515: subNEs R4, R0, R3, LSL #26
l4516: mov R4, #24
l4517: str R8, [sp, +R4]!
l4518: cmpLT R4, R4
l4519: bicLS R14, R3, #47
l4520: bVC l4527
l4521: tstCS R1, R12, ROR #30
l4522: addLTs R1, R0, R5
l4523: adcCS R10, R2, #1073741885
l4524: subVSs R7, R0, R14, ASR #23
l4525: sub R3, R7, R15, LSR #15
l4526: adcs R3, R1, R15
l4527: cmpLS R15, R4, LSL #30
l4528: subGE R11, R0, R3, LSL R12
l4529: bicGEs R0, R11, #17920
l4530: subLT R7, R11, #651264
l4531: sbcLE R10, R2, #148
l4532: teq R12, R2, LSL R1
l4533: tstLS R11, R7
l4534: teqCS R7, R8
l4535: bVS l4540
l4536: add R1, R0, #238
l4537: rsbGEs R2, R2, #1000
l4538: sbcLEs R9, R6, R10, RRX 
l4539: b l4541
l4540: b l4537
l4541: adcs R12, R12, R10, ASR #17
l4542: andVS R1, R6, R12, LSL R2
l4543: subCS R6, R8, R2
l4544: bCS l4549
l4545: add R1, R0, #253
l4546: cmp R15, R7, LSR #2
l4547: cmp R2, #540672
l4548: b l4550
l4549: b l4546
l4550: subNE R0, R9, R2, ASR R9
l4551: rsbs R7, R12, #19456
l4552: subLS R1, R4, R2, ASR R12
l4553: b l4558
l4554: orrGEs R0, R3, R6, LSL R2
l4555: movs R0, R11
l4556: clzGT R7, R9
l4557: cmp R1, R11, RRX 
l4558: rscMIs R9, R4, R2
l4559: mov R10, #52
l4560: str R1, [sp], -R10
l4561: add R7, R4, R2
l4562: rsbLSs R11, R11, #2624
l4563: addLEs R14, R2, R6
l4564: b l4573
l4565: add R1, R0, #33
l4566: adcs R1, R0, R7, LSR R4
l4567: addGT R5, R1, R14, LSR #30
l4568: sbcEQ R11, R3, R10, LSR R6
l4569: teq R9, R8, ROR R4
l4570: orrGTs R3, R10, R6, ASR #5
l4571: eors R12, R3, R0, ASR #14
l4572: b l4574
l4573: b l4566
l4574: add R7, R8, R15, ROR #10
l4575: addHI R3, R3, R1, RRX 
l4576: orrs R4, R12, R3, ROR R10
l4577: teqNE R1, R7, LSL R6
l4578: teqLT R5, R15, RRX 
l4579: rscGT R7, R12, #3856
l4580: mov R9, #8
l4581: str R5, [sp], -R9
l4582: orrLT R9, R6, #162
l4583: eorEQs R0, R10, R8, LSR R4
l4584: orrNE R6, R7, R6
l4585: mov R7, #4
l4586: str R9, [sp], +R7
l4587: addVSs R6, R8, R9, LSL #23
l4588: b l4595
l4589: add R1, R0, #22
l4590: bicPL R3, R6, #-1342177280
l4591: subs R12, R1, R1
l4592: add R9, R12, R11, ROR R9
l4593: clzPL R4, R0
l4594: b l4596
l4595: b l4590
l4596: orr R10, R1, R14
l4597: subVCs R3, R8, R5
l4598: adds R4, R4, #524288
l4599: andPLs R4, R11, R8
l4600: eorGE R12, R11, #-2080374782
l4601: ldr R4, [sp], #+40
l4602: subGE R1, R10, R12, ASR #19
l4603: movCC R0, #2883584
l4604: eor R0, R11, R5, LSL R10
l4605: adcLE R8, R5, R0, ROR R12
l4606: cmnGT R8, R10
l4607: mvns R6, R8, RRX 
l4608: bics R5, R5, R10, RRX 
l4609: bicVSs R11, R7, R8
l4610: movs R3, R9
l4611: sbcPL R14, R15, #-1996488704
l4612: andCCs R12, R11, #14614528
l4613: bic R5, R9, R10, LSR #19
l4614: bNE l4622
l4615: add R1, R0, #200
l4616: cmpLS R11, R7, LSL R7
l4617: orr R11, R9, #48128
l4618: tst R2, R12, LSL #2
l4619: rsbCS R4, R1, R0, LSL R4
l4620: subGE R11, R9, R1
l4621: b l4623
l4622: b l4616
l4623: tst R0, R0, LSR #9
l4624: rscs R4, R14, R8, RRX 
l4625: orrs R9, R3, R1, RRX 
l4626: sbcLTs R12, R10, #204800
l4627: bVS l4636
l4628: add R1, R0, #154
l4629: movs R14, R8, ROR R11
l4630: rscEQ R12, R9, R0, ROR R3
l4631: sub R6, R12, R7, LSR #14
l4632: orr R11, R0, #2260992
l4633: mvn R7, R3, ASR #1
l4634: cmp R9, R3, ROR R11
l4635: b l4637
l4636: b l4629
l4637: str R15, [sp, #+20]!
l4638: orrs R3, R4, #-2147483599
l4639: add R5, R14, R2, LSL R11
l4640: adds R10, R5, R11
l4641: rscMIs R5, R12, #60030976
l4642: addPL R7, R11, R6, LSR R7
l4643: addPL R2, R11, #3840
l4644: bCC l4648
l4645: tstCS R10, R5
l4646: cmn R11, R0, LSL R0
l4647: cmnHI R5, R0
l4648: cmpNE R9, R0
l4649: cmnGE R12, #-1073741770
l4650: mov R5, #4
l4651: strLE R9, [sp, +R5]
l4652: and R2, R2, R11, LSR R9
l4653: teqVC R4, #1073741836
l4654: sbcPLs R7, R6, #64768
l4655: bicVC R14, R6, R10, ASR R9
l4656: add R1, R15, R11
l4657: addCSs R6, R4, R7
l4658: bicLE R7, R14, R2, RRX 
l4659: tstCS R14, R14, ASR R6
l4660: subLTs R11, R8, R0
l4661: tstLS R6, R9, RRX 
l4662: and R3, R2, R7, LSL R9
l4663: tstCC R6, R4
l4664: cmp R5, R12, LSL R2
l4665: tstPL R2, R10, LSL R6
l4666: rscCS R4, R14, R5
l4667: cmp R6, R7, RRX 
l4668: rscVSs R11, R4, #182
l4669: ldr R11, [sp, #-32]!
l4670: eors R8, R14, #602112
l4671: and R4, R14, R4, LSL #25
l4672: sbcNE R2, R12, R0
l4673: bPL l4680
l4674: andGE R0, R9, R14, ASR R11
l4675: orrHIs R5, R14, R14, LSR #9
l4676: andCC R10, R0, R3
l4677: mvns R3, R3, ASR R6
l4678: rsbs R4, R14, R11, ASR #31
l4679: movMI R14, R15
l4680: mvnCC R8, R15
l4681: orrCS R7, R9, R14, LSR R9
l4682: clz R6, R1
l4683: tst R12, R7, RRX 
l4684: sbc R10, R3, R10
l4685: rscNEs R7, R10, R0, LSL R0
l4686: rscGTs R0, R5, R15
l4687: ands R0, R12, R8, LSL R6
l4688: bic R6, R3, R5, RRX 
l4689: clzEQ R1, R2
l4690: bGE l4695
l4691: add R1, R0, #60
l4692: orrCS R2, R9, R4
l4693: rscs R12, R10, #-1073741823
l4694: b l4696
l4695: b l4692
l4696: addCCs R9, R8, R4, LSL #5
l4697: subGT R14, R1, #1073741831
l4698: adcHI R6, R0, R3
l4699: addHIs R0, R3, R8, LSR #29
l4700: teq R1, R11
l4701: clz R10, R14
l4702: subPL R12, R9, R8, RRX 
l4703: b l4712
l4704: add R1, R0, #154
l4705: andLE R8, R1, R8
l4706: eor R8, R6, #2720
l4707: orrEQ R5, R6, R1
l4708: mvnLT R9, R15, LSR #3
l4709: rscLE R0, R10, #348127232
l4710: eors R6, R3, R3, LSR #29
l4711: b l4713
l4712: b l4705
l4713: mov R12, #32
l4714: str R8, [sp, -R12]!
l4715: adcLTs R12, R0, R0
l4716: rsbHI R9, R9, R9, LSL R8
l4717: ands R8, R11, R4, ASR R4
l4718: rsc R7, R8, R1, LSL #1
l4719: adcVC R12, R0, #7168
l4720: bLS l4721
l4721: rscs R4, R3, R8, ASR R8
l4722: cmn R14, R11, ASR R8
l4723: rsb R11, R5, #146800640
l4724: b l4727
l4725: rsc R0, R9, R3, ASR R12
l4726: movNEs R12, #29097984
l4727: adds R0, R6, R8
l4728: tstNE R12, R14
l4729: mov R5, #48
l4730: ldr R12, [sp], +R5
l4731: subMI R2, R9, R9
l4732: movMIs R7, R1, LSR R9
l4733: mov R10, #20
l4734: ldr R11, [sp, +R10]!
l4735: mvnGT R10, R9, LSL R14
l4736: movCCs R4, R7, ASR #8
l4737: cmp R4, #-1778384896
l4738: rsb R12, R1, R4, RRX 
l4739: tstGE R10, #360448
l4740: adds R6, R4, R14
l4741: b l4747
l4742: orrPLs R5, R4, #87040
l4743: eors R5, R10, #61
l4744: cmn R5, R11
l4745: cmpNE R2, R6, LSR R5
l4746: sub R14, R2, R12, RRX 
l4747: addPLs R8, R4, R12, LSL R1
l4748: bVC l4752
l4749: subs R10, R6, R8
l4750: sbc R11, R11, #1540096
l4751: rsbGE R12, R10, R14, ROR R0
l4752: mvnVSs R1, #43008
l4753: cmn R4, R3, RRX 
l4754: bic R12, R1, #3260416
l4755: bGE l4765
l4756: clzCC R1, R1
l4757: subs R8, R15, #151
l4758: mvnHIs R14, #218103808
l4759: movs R7, R3, LSR R7
l4760: tst R10, R2, RRX 
l4761: teqNE R5, R2
l4762: clzEQ R11, R11
l4763: eor R12, R12, R14, ROR #15
l4764: andVC R11, R0, R0, LSL #27
l4765: sbcs R10, R12, R5
l4766: subHIs R3, R10, R1, ROR #29
l4767: addLEs R4, R3, #4177920
l4768: eorLTs R0, R2, R1, ROR R6
l4769: subCSs R2, R6, R12, ASR R2
l4770: rsb R8, R10, R14, ROR R3
l4771: sbcGTs R6, R2, R7, LSR R12
l4772: add R0, R3, R14
l4773: mvnNE R10, R2
l4774: adds R14, R10, R11, ROR #2
l4775: b l4783
l4776: add R1, R0, #10
l4777: add R5, R6, #956301312
l4778: tstLT R10, R7, ASR R11
l4779: subVCs R14, R2, #128
l4780: mvn R9, #369098752
l4781: rscCSs R3, R8, R6
l4782: b l4784
l4783: b l4777
l4784: mov R0, #36
l4785: ldr R0, [sp, -R0]!
l4786: b l4790
l4787: eors R6, R0, R3, LSL R1
l4788: movEQs R8, R6, RRX 
l4789: orrLEs R4, R9, R11
l4790: cmpNE R14, R4
l4791: mov R1, #28
l4792: str R10, [sp, +R1]!
l4793: strGE R15, [sp, #-4]
l4794: cmn R4, R9, LSR R5
l4795: rsbVSs R6, R3, R2
l4796: addLE R0, R9, R5, ROR #16
l4797: clzCS R7, R1
l4798: orrs R1, R1, R4, ASR R0
l4799: rscCSs R7, R11, #-1610612726
l4800: clz R10, R4
l4801: mov R4, #4
l4802: ldr R0, [sp, -R4]!
l4803: teqLT R15, R2, LSR #17
l4804: sbcNEs R4, R3, R11, ROR R1
l4805: tstLE R10, R1, LSL #5
l4806: sbcLTs R12, R15, #5440
l4807: mvnGTs R9, #4080
l4808: bCS l4816
l4809: add R1, R0, #195
l4810: orrLEs R9, R11, R7
l4811: cmnLT R8, R5, RRX 
l4812: orrs R4, R3, R5, LSR R7
l4813: rsbMI R9, R8, #1040384
l4814: subGT R11, R10, #115343360
l4815: b l4817
l4816: b l4810
l4817: rsbHI R14, R4, #28311552
l4818: subs R5, R14, R9
l4819: eorLS R1, R14, #108544
l4820: b l4828
l4821: add R1, R0, #229
l4822: mvns R1, R11, ASR #23
l4823: clz R14, R4
l4824: subCCs R11, R14, R9
l4825: subs R14, R12, R8, RRX 
l4826: cmn R9, R11, ROR R14
l4827: b l4829
l4828: b l4822
l4829: cmpHI R15, R6
l4830: rsbs R4, R9, R15
l4831: mov R3, #52
l4832: ldr R6, [sp, -R3]!
l4833: orrGE R14, R14, R6, LSL #21
l4834: rscLS R7, R0, R5
l4835: mvns R2, R3, RRX 
l4836: sbcs R0, R9, R3
l4837: eors R1, R4, #268435467
l4838: addGE R5, R2, #61440
l4839: rsbs R10, R15, #39936
l4840: sub R12, R15, #-603979775
l4841: cmpEQ R6, R9, RRX 
l4842: bVS l4844
l4843: cmn R9, R8, LSR R12
l4844: orrLEs R5, R3, R3
l4845: mov R11, #48
l4846: strLT R6, [sp, +R11]
l4847: ands R14, R1, R9, ASR R5
l4848: tst R1, R1, LSR #22
l4849: movGE R1, R2
l4850: mvnGT R3, R8, RRX 
l4851: mvnNEs R8, R9
l4852: subLSs R2, R3, R2, LSL R6
l4853: mvnGT R3, #-1073741767
l4854: ands R9, R5, R4
l4855: orrGEs R1, R9, R5, ASR #17
l4856: rsbLEs R9, R4, R4, RRX 
l4857: b l4864
l4858: cmnEQ R12, R6, ASR R8
l4859: subMI R4, R8, #3776
l4860: teqNE R6, R0, LSR R3
l4861: adds R9, R12, R0, RRX 
l4862: clzMI R3, R1
l4863: andHIs R8, R14, R7, LSR #28
l4864: subVC R5, R3, R5, ROR #17
l4865: cmp R14, R9, LSR R5
l4866: bVC l4874
l4867: adc R9, R9, R8, ROR #28
l4868: andPLs R14, R6, R12
l4869: bicNEs R5, R7, R2
l4870: tstVS R14, #688128
l4871: mvnHI R8, R7, LSR #24
l4872: orrPLs R14, R9, R8
l4873: andVCs R9, R12, R6, ROR R6
l4874: rsbEQ R6, R0, #16777216
l4875: cmpLT R2, R8, LSL R11
l4876: clzCC R7, R4
l4877: adcMIs R1, R2, R6
l4878: sub R9, R8, R2, ROR R12
l4879: bVC l4885
l4880: add R1, R0, #120
l4881: adds R7, R8, #-1073741812
l4882: cmp R3, R6, LSL #19
l4883: orr R11, R3, #985661440
l4884: b l4886
l4885: b l4881
l4886: eorLT R14, R3, #12032
l4887: movCSs R10, #1474560
l4888: cmpGE R9, R1, ROR #6
l4889: clzCS R8, R2
l4890: subs R10, R0, R3, LSL R3
l4891: mov R10, #28
l4892: ldr R2, [sp, +R10]!
l4893: sub R7, R6, R12, LSL R5
l4894: orr R6, R11, R11, LSR R9
l4895: teq R9, #3899392
l4896: eorVSs R9, R9, R3
l4897: rscs R9, R10, R0, ROR #31
l4898: cmn R7, R1, ASR #16
l4899: bLE l4903
l4900: andNEs R11, R10, R2, LSL R7
l4901: rsbHIs R8, R4, R8, LSL R7
l4902: rsc R6, R14, #157286400
l4903: movPL R10, R10, RRX 
l4904: movVS R10, R6, ROR R7
l4905: adcNEs R7, R14, R0, ASR #0
l4906: movs R6, R1
l4907: rsc R0, R11, #26738688
l4908: addMIs R10, R11, R6
l4909: b l4911
l4910: adcGE R2, R2, #1792
l4911: clz R12, R4
l4912: sbcGEs R8, R9, R8, LSR #19
l4913: mvns R10, R0
l4914: clzGT R10, R10
l4915: orr R6, R10, R9, ASR R6
l4916: cmpPL R2, #-1342177271
l4917: addGT R7, R6, R6, RRX 
l4918: mvnCSs R7, R11
l4919: rsbMIs R11, R3, R1
l4920: eors R11, R12, #2016
l4921: bLE l4926
l4922: add R1, R0, #252
l4923: tst R1, #-2080374784
l4924: subGE R2, R10, R12
l4925: b l4927
l4926: b l4923
l4927: tst R8, R12, LSL #29
l4928: cmp R8, R12, ROR #24
l4929: eorMIs R4, R2, R8
l4930: addNE R7, R4, #336
l4931: orrLEs R7, R3, R8, LSL R11
l4932: bCC l4934
l4933: rsbGT R7, R10, #9984
l4934: eorNE R3, R6, R1, ASR #1
l4935: bHI l4942
l4936: add R1, R0, #70
l4937: movGEs R8, #60416
l4938: subGT R9, R8, R6, LSL R1
l4939: mvns R14, #171008
l4940: clzLT R11, R6
l4941: b l4943
l4942: b l4937
l4943: clzHI R9, R8
l4944: sbcLTs R0, R6, R3
l4945: adcLS R4, R8, #217088
l4946: and R3, R4, R1, LSR #11
l4947: subs R6, R7, R7, ROR #12
l4948: str R3, [sp], #-4
l4949: bGT l4958
l4950: add R1, R0, #145
l4951: addNE R6, R15, R5, ASR #30
l4952: rsbMIs R5, R2, R10, RRX 
l4953: orr R1, R7, R11, ASR R5
l4954: sbc R12, R15, #458752
l4955: rscEQ R8, R10, #385875968
l4956: cmpGE R12, R4, LSR #19
l4957: b l4959
l4958: b l4951
l4959: addHIs R3, R6, R11, ROR R11
l4960: ldr R12, [sp, #-16]
l4961: orrNEs R6, R12, R9, RRX 
l4962: b l4964
l4963: eors R1, R2, #931135488
l4964: mvnPL R11, R6
l4965: mov R9, #0
l4966: ldr R5, [sp], +R9
l4967: rsbLS R1, R15, #0
l4968: add R10, R9, R8
l4969: addEQs R7, R6, R8
l4970: b l4979
l4971: mvnVS R1, R1, LSR R10
l4972: sbc R9, R3, R6, LSL R5
l4973: subHIs R6, R11, R2, LSL R2
l4974: cmpHI R9, R7, ROR R5
l4975: tst R0, R6, LSL #29
l4976: cmp R1, R9, ASR #14
l4977: rsbLE R0, R11, R15, ROR #2
l4978: movCS R9, R7, ROR #15
l4979: clzPL R11, R1
l4980: eors R0, R10, R12, LSR #25
l4981: mov R14, #28
l4982: ldr R14, [sp], +R14
l4983: rscCSs R5, R3, R5, RRX 
l4984: clz R1, R5
l4985: bHI l4991
l4986: add R1, R0, #125
l4987: mvnHI R14, #17152
l4988: cmpNE R11, R12, ASR R8
l4989: addVSs R7, R15, R12, RRX 
l4990: b l4992
l4991: b l4987
l4992: addMI R10, R15, R4, ROR #31
l4993: orrs R14, R5, #603979778
l4994: nop
l4995: eorCC R2, R11, R6
l4996: bic R10, R9, R6, ROR R11
l4997: cmnHI R2, R6, ASR R0
l4998: add R11, R1, #114688
l4999: ands R3, R0, R1, LSL #2
l5000: and R12, R10, R8
end: b end

