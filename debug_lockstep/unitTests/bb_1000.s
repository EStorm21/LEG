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
val1: .word 4064711994
next1:ldr R2, val2
b next2
val2: .word 2523353322
next2:ldr R3, val3
b next3
val3: .word 1901762713
next3:ldr R4, val4
b next4
val4: .word 1413800375
next4:ldr R5, val5
b next5
val5: .word 3064358922
next5:ldr R6, val6
b next6
val6: .word 2629764178
next6:ldr R7, val7
b next7
val7: .word 3599111335
next7:ldr R8, val8
b next8
val8: .word 1100603869
next8:ldr R9, val9
b next9
val9: .word 1285137191
next9:ldr R10, val10
b next10
val10: .word 1018354797
next10:ldr R11, val11
b next11
val11: .word 3753922743
next11:ldr R12, val12
b next12
val12: .word 2127693151
next12:ldr R14, val14
b next14
val14: .word 2633944951

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 2240094638
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 475283445
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 1608234210
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 120689911
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 650206967
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 4180183550
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 1315804104
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 603133154
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 1327591198
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 4061863698
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 143515263
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 3589188598
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 1214807474
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 640647517
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 3229564322
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 3710703099
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 2884732001
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 954153316
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 478656569
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 3531211672
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 3991868840
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: subEQ R4, R9, R14, ASR R1
l2: cmpLT R3, R10
l3: bGT l8
l4: add R1, R0, #159
l5: mov R6, #630784
l6: teq R7, R2, ROR #3
l7: b l9
l8: b l5
l9: movPL R0, #0
l10: sbc R4, R10, R7
l11: eorLE R14, R14, #1073741859
l12: cmnGT R0, R9
l13: eorGE R1, R10, R8, ASR R2
l14: mov R1, R1, LSR R7
l15: cmpCS R5, R3
l16: adcCS R14, R8, R15, ROR #9
l17: eor R12, R0, R11
l18: sub R7, R2, #749568
l19: subEQs R8, R12, R7
l20: cmpVC R0, #39845888
l21: clzLS R12, R3
l22: orrLSs R8, R2, R2
l23: rscVCs R8, R15, R15
l24: ands R0, R6, R4, RRX 
l25: bicLTs R14, R9, #42
l26: bLT l35
l27: add R1, R0, #106
l28: clz R2, R7
l29: sub R10, R6, R9, ASR R6
l30: sbcs R11, R8, #119808
l31: clzMI R5, R12
l32: rsbs R4, R11, R8, ASR #31
l33: orr R14, R3, R9, LSL R5
l34: b l36
l35: b l28
l36: ands R11, R1, #311296
l37: cmp R8, R15, RRX 
l38: eors R11, R1, #1728
l39: rsbs R3, R2, R10, RRX 
l40: eorPL R9, R0, R6, RRX 
l41: cmnVC R10, R7, ROR R7
l42: bPL l49
l43: add R1, R0, #129
l44: rsbCSs R2, R11, R7
l45: add R1, R6, R3
l46: subVCs R2, R5, R11, ASR R3
l47: cmp R0, R2, ROR #31
l48: b l50
l49: b l44
l50: andNEs R7, R7, R15, RRX 
l51: subMIs R3, R1, R0
l52: cmnHI R15, #753664
l53: bic R8, R1, #41984
l54: sbc R12, R6, R7
l55: eorEQ R7, R7, R2, LSL R6
l56: ands R5, R9, R1
l57: cmn R8, #2944
l58: eor R9, R8, R0, ASR R3
l59: andGT R2, R9, R9
l60: tstGT R6, R3, ROR R3
l61: and R8, R11, R5, LSL #8
l62: cmpLS R0, R0
l63: andHIs R1, R3, R4, LSL R12
l64: rscEQs R5, R5, R12, LSR R4
l65: sbcLS R0, R9, R5, ASR R10
l66: sub R0, R6, #60
l67: cmnVC R10, R8
l68: bicMI R11, R4, R9, RRX 
l69: cmp R1, R14
l70: teqVC R14, #444
l71: movGTs R1, R1, LSR R2
l72: cmpNE R12, R1, ASR R9
l73: adcGEs R4, R3, R3
l74: movVS R7, R1, LSL R9
l75: cmpLT R10, #250880
l76: adcs R6, R0, #6592
l77: bVC l84
l78: add R1, R0, #183
l79: adc R11, R11, R8, LSR #8
l80: adc R11, R6, R0, LSL #31
l81: mvn R14, R12, RRX 
l82: subGT R3, R4, R11, ASR #25
l83: b l85
l84: b l79
l85: clz R12, R8
l86: teqCS R4, #246
l87: tst R12, R11, ROR R11
l88: eorVSs R14, R8, R0, ASR R6
l89: bics R9, R1, R3, ASR #26
l90: orrMI R5, R8, #655360
l91: rscVSs R12, R6, R5, ASR R8
l92: cmp R11, R14
l93: andCS R4, R11, R9
l94: cmp R5, R5, LSL R7
l95: rscLE R3, R2, R10, LSL R11
l96: movNE R14, R4
l97: subVSs R2, R2, R14, LSR #8
l98: b l106
l99: add R1, R0, #50
l100: mvns R0, R2
l101: mvnCCs R3, R10
l102: bicVSs R11, R5, R11, ASR #10
l103: bic R3, R11, R5
l104: rscGE R14, R14, #14876672
l105: b l107
l106: b l100
l107: rscNEs R3, R15, R6, ASR #20
l108: eorCCs R1, R2, #1409286144
l109: bicVCs R4, R2, R15
l110: orrCCs R9, R7, #-2147483596
l111: cmnVC R5, R10, ROR R11
l112: cmn R2, R1, RRX 
l113: andNE R8, R9, #851443712
l114: eorLS R11, R3, R11, ROR R6
l115: bic R7, R4, R9
l116: cmp R7, R3, LSR #6
l117: bic R0, R7, R9, LSL R9
l118: subs R7, R14, R4, LSR #23
l119: teqCS R3, #624
l120: orrEQ R0, R8, R9, LSR R5
l121: movs R2, R15
l122: bGT l127
l123: add R1, R0, #240
l124: rscPL R9, R2, #15936
l125: subVS R14, R4, #48384
l126: b l128
l127: b l124
l128: sbc R11, R3, R8, ASR R12
l129: subs R14, R15, R6
l130: eorCCs R1, R14, R1, LSL R1
l131: ands R3, R10, #620756992
l132: sbcs R14, R11, R0, LSR R7
l133: subEQs R4, R2, #42752
l134: subVSs R6, R8, R7, LSL R7
l135: mvnGEs R7, R15
l136: cmpLE R15, R0, ROR #7
l137: rsbVSs R11, R2, R14, ROR R7
l138: sub R14, R12, #905969664
l139: teq R4, R0, LSL #4
l140: tstEQ R8, R6
l141: bLT l145
l142: add R1, R0, #126
l143: clz R14, R3
l144: b l146
l145: b l143
l146: mvn R14, R12
l147: tstNE R4, R9
l148: movVC R8, R1, LSL R14
l149: teqCS R8, R4, LSR R5
l150: subGTs R10, R14, R3, ASR #22
l151: eorVCs R11, R7, #-687865856
l152: bicHI R6, R14, R8, ROR R10
l153: bics R7, R5, R12
l154: teq R14, R0, LSL R11
l155: mvnHIs R14, R9, LSL R6
l156: andCC R7, R6, #-1124073472
l157: b l161
l158: add R1, R0, #14
l159: mov R0, R1
l160: b l162
l161: b l159
l162: mvn R9, R14
l163: tst R8, R0
l164: mvns R5, R9, RRX 
l165: mvn R7, #46399488
l166: ands R2, R15, R9, LSR #27
l167: orrVSs R5, R15, R0, LSR #25
l168: orrs R1, R8, #93323264
l169: tstLE R3, R4, ASR R5
l170: rsbVCs R2, R11, R3, RRX 
l171: bics R0, R8, R10
l172: subs R4, R11, #-1392508928
l173: subCSs R9, R4, R4
l174: rsbNEs R3, R9, #96468992
l175: clz R1, R5
l176: tstCC R1, R6, ASR R1
l177: rsbCC R11, R7, #53
l178: rscs R8, R7, #992
l179: tstMI R0, R0, LSL R2
l180: rscHI R2, R11, R4, RRX 
l181: subCCs R2, R1, R0, ROR #3
l182: addVC R9, R0, R7, ROR R9
l183: clzCC R9, R5
l184: subs R4, R3, R11, RRX 
l185: teq R8, R8, ASR R6
l186: bicGEs R0, R10, #3824
l187: eorPL R11, R6, R12, RRX 
l188: rsbEQs R6, R1, #1073741833
l189: add R2, R4, R6, RRX 
l190: cmnGT R2, #600
l191: mvnGE R3, R2, ROR #20
l192: orr R14, R15, #8
l193: rsbs R3, R8, R5
l194: rscPL R9, R14, #805306368
l195: rsbCS R14, R0, R8
l196: cmp R6, #104448
l197: bPL l205
l198: add R1, R0, #7
l199: tst R12, R14
l200: sub R12, R4, R11
l201: cmp R10, #-268435442
l202: sbc R11, R14, R9, LSR R2
l203: cmnVC R4, R0, RRX 
l204: b l206
l205: b l199
l206: mvns R2, R11, LSL #18
l207: and R8, R3, #1073741849
l208: subNEs R11, R6, R14
l209: cmpLE R14, R3, RRX 
l210: sbc R7, R8, R12, LSL #11
l211: subGTs R3, R8, R6
l212: cmnNE R12, R7
l213: add R3, R3, R0, LSR R14
l214: subs R0, R5, R8, LSR #15
l215: movLSs R4, #3194880
l216: bicHIs R14, R12, R4, RRX 
l217: sbcGTs R11, R11, #25344
l218: b l223
l219: add R1, R0, #87
l220: movHIs R4, R6, RRX 
l221: bic R7, R1, R3, ROR #1
l222: b l224
l223: b l220
l224: rsc R0, R5, R10, LSR R6
l225: cmpLT R4, #-1627389952
l226: andVSs R6, R12, R5
l227: orrPL R10, R1, R14, LSL R10
l228: clzPL R7, R14
l229: bicLE R0, R14, #7680
l230: rsbs R14, R12, R1
l231: cmp R6, R10
l232: andGE R1, R14, #2672
l233: clzPL R7, R11
l234: teq R7, R11
l235: and R1, R11, R4, LSR R7
l236: clz R14, R0
l237: cmnLE R2, R0, ROR #24
l238: rsc R5, R1, R12, LSR R4
l239: cmp R12, R0
l240: cmpLS R4, R14
l241: cmn R6, R9, LSR #2
l242: adcLT R2, R14, #704
l243: cmn R12, R0, ASR R14
l244: eorEQ R7, R2, R6
l245: bGE l252
l246: add R1, R0, #72
l247: eors R10, R4, #216064
l248: cmp R3, R1, LSL #28
l249: and R11, R2, R3
l250: orrs R4, R6, R10, LSR R9
l251: b l253
l252: b l247
l253: cmp R10, #68608
l254: rsbEQs R12, R12, R15
l255: bicNE R12, R1, #124780544
l256: cmpCS R14, #1073741866
l257: adds R11, R4, R1
l258: subs R10, R5, #368
l259: movMIs R5, #51904512
l260: orrGTs R2, R11, R6
l261: cmpNE R9, #734003200
l262: tst R7, R14, RRX 
l263: adcs R8, R0, R5
l264: bic R3, R10, #1966080
l265: bics R6, R3, R9, LSL #30
l266: rsc R12, R8, R8, RRX 
l267: clz R7, R4
l268: adcMIs R10, R11, R11, ROR #2
l269: rsb R14, R9, R10, LSL #10
l270: mvn R3, R10
l271: bCS l275
l272: add R1, R0, #181
l273: movLT R6, R2
l274: b l276
l275: b l273
l276: b l280
l277: add R1, R0, #75
l278: add R5, R11, #917504
l279: b l281
l280: b l278
l281: bLT l287
l282: add R1, R0, #215
l283: cmn R5, R1, ASR #1
l284: addVSs R2, R5, R14, RRX 
l285: bic R3, R12, R11, LSL R0
l286: b l288
l287: b l283
l288: movs R2, #655360
l289: teqGT R1, R3, RRX 
l290: mvnVCs R2, R4
l291: cmp R10, R10
l292: movs R8, R4, LSR R0
l293: mvnVC R11, R1, LSL #7
l294: bMI l300
l295: add R1, R0, #78
l296: sbcs R8, R15, #227328
l297: addLE R14, R10, R10
l298: eorLE R1, R14, R2, LSL #27
l299: b l301
l300: b l296
l301: sbcs R6, R10, R12, RRX 
l302: teqHI R4, #835584
l303: rsc R14, R12, R1, LSR R4
l304: bicGEs R8, R7, R11
l305: orrs R7, R5, #224
l306: teqVS R10, R8, RRX 
l307: eors R11, R10, R4
l308: rsbEQs R0, R9, #536870915
l309: andMI R0, R9, R14, LSR #20
l310: eors R6, R11, R2, RRX 
l311: eorGT R9, R1, #240
l312: andGEs R11, R10, R14, LSR #19
l313: movs R10, #60416
l314: bGT l321
l315: add R1, R0, #22
l316: rsbs R3, R9, #11599872
l317: cmp R4, #6208
l318: andGEs R14, R6, #54001664
l319: subGT R6, R4, R12, RRX 
l320: b l322
l321: b l316
l322: orrs R4, R6, R12, LSR #11
l323: eors R10, R9, R6, ROR #22
l324: ands R12, R6, R7, RRX 
l325: rsc R10, R5, R5, ASR R2
l326: eorEQ R11, R8, #201326594
l327: eorCCs R1, R1, R12, ROR #15
l328: subGE R5, R5, R5, RRX 
l329: cmp R2, R12, ROR #18
l330: orrCC R5, R9, R2, ROR R12
l331: ands R9, R6, R4, LSR R9
l332: bVS l338
l333: add R1, R0, #199
l334: mvnPLs R10, R5, ASR #31
l335: tst R3, R8, ASR #7
l336: mvnGEs R12, #-1610612734
l337: b l339
l338: b l334
l339: rsc R6, R8, #1008
l340: rsbs R14, R7, R10, RRX 
l341: orrNE R2, R2, #1073741866
l342: rsbGEs R4, R15, R15, ROR #25
l343: rsbEQ R5, R15, R2
l344: cmpLT R4, R14, ASR #15
l345: tst R11, R7
l346: clzEQ R10, R5
l347: sub R6, R15, R3
l348: cmp R0, R14
l349: orrNEs R1, R9, R3, ASR R10
l350: adcNE R8, R12, R11
l351: eorHI R5, R0, R5, ROR #11
l352: eorVCs R12, R15, R7, LSL #29
l353: sub R9, R12, R7, ASR #20
l354: movs R12, R3, LSL #29
l355: eorPLs R14, R10, R14, ROR R2
l356: clzEQ R0, R8
l357: addLS R10, R3, R12, RRX 
l358: sbcs R6, R0, R4, LSL R7
l359: tstHI R12, R7
l360: andEQ R4, R2, R7, ASR R7
l361: orrNE R12, R6, R15, RRX 
l362: adcLS R11, R1, #3620864
l363: cmp R2, R7, LSL R9
l364: bHI l373
l365: add R1, R0, #237
l366: orrGE R3, R1, R5, LSR #9
l367: adcLE R9, R14, R5, LSR #21
l368: tstLE R3, #48896
l369: subNEs R7, R9, R7, ROR #7
l370: rsc R4, R2, R10, LSL R5
l371: subLS R5, R12, R0, LSL R2
l372: b l374
l373: b l366
l374: eorLS R14, R4, R7, LSL #2
l375: tst R11, #1342177280
l376: and R6, R0, R7, RRX 
l377: tst R10, #73
l378: cmpPL R14, R9, ROR R1
l379: addCCs R4, R0, R5, LSL #10
l380: eorLT R2, R11, #17563648
l381: mov R9, #3
l382: cmnLS R6, R6, RRX 
l383: tst R8, R9, ROR R1
l384: andEQ R14, R6, R14, ASR R2
l385: teqCS R12, R15
l386: movNEs R12, R3, ROR #3
l387: rsbVC R2, R0, R11, ASR R1
l388: subs R11, R2, #142606336
l389: eors R0, R2, R4, LSR R1
l390: teqPL R11, R3
l391: eors R2, R9, R4, ASR R5
l392: cmp R12, R1
l393: cmp R5, #744
l394: cmpVC R6, #217088
l395: adds R9, R5, R5, RRX 
l396: adcs R8, R4, R12
l397: subNE R1, R3, R9, ASR #26
l398: bicGTs R12, R9, R5, ROR #26
l399: orrs R4, R2, R9
l400: ands R4, R0, R5
l401: cmnEQ R7, R15, RRX 
l402: addLT R14, R11, R6, RRX 
l403: mvns R6, R6, LSL R7
l404: rsbs R6, R9, R2, ASR R6
l405: andNEs R5, R10, R4, RRX 
l406: andCC R6, R2, R0, ASR R4
l407: b l413
l408: add R1, R0, #16
l409: orr R2, R0, R6, LSL R2
l410: eors R7, R15, #-2147483595
l411: sbcLSs R0, R2, R2, ROR #21
l412: b l414
l413: b l409
l414: b l420
l415: add R1, R0, #40
l416: subMIs R3, R4, R14
l417: rsbHI R9, R12, R8, ROR R1
l418: tst R6, R8, RRX 
l419: b l421
l420: b l416
l421: cmpCS R9, #243
l422: adc R3, R7, R8, LSR R12
l423: rscLTs R2, R14, #2784
l424: addLE R0, R4, R8, ASR #19
l425: subLS R10, R7, R10
l426: eorGEs R12, R4, R1
l427: b l435
l428: add R1, R0, #221
l429: orrs R8, R11, R0, ASR R9
l430: subs R6, R2, R8
l431: subNE R11, R0, R1, LSR R9
l432: rsbVCs R8, R5, #-805306354
l433: mov R8, R14, ROR #12
l434: b l436
l435: b l429
l436: tst R2, R11, ASR #21
l437: mvn R5, #408
l438: sbcLEs R3, R2, R10
l439: rscHI R14, R3, R11, RRX 
l440: tst R7, R6, ROR #29
l441: subCC R1, R3, R10, ASR #31
l442: eor R5, R8, R10, LSR #9
l443: clzPL R11, R5
l444: clz R12, R8
l445: clz R5, R10
l446: rscs R10, R15, #1476395011
l447: adcMIs R12, R9, R14
l448: adc R8, R11, R11
l449: mvnNEs R3, #4161536
l450: andMIs R4, R15, R7
l451: mvn R3, #729088
l452: b l461
l453: add R1, R0, #220
l454: bicMI R14, R1, R4, RRX 
l455: rscVSs R0, R11, #536870913
l456: clz R3, R7
l457: rscs R7, R8, #251658240
l458: teqLE R10, R10, RRX 
l459: subLS R2, R7, #3604480
l460: b l462
l461: b l454
l462: ands R2, R11, #668
l463: mvnGE R12, R15, RRX 
l464: tstCC R9, R11, LSL R3
l465: sbcs R1, R8, #811008
l466: ands R14, R12, #-1073741816
l467: rscLE R11, R15, #54272
l468: rsc R6, R10, R2
l469: addEQs R4, R1, R1
l470: orrCC R11, R9, R14, ROR #9
l471: cmnGE R2, #2588672
l472: eor R8, R4, R4, ROR #13
l473: teqVC R15, #4112384
l474: cmpCS R11, #340
l475: tst R9, R3
l476: movHIs R14, #202
l477: mov R5, #183
l478: adcEQs R5, R0, R12, ASR #13
l479: ands R14, R6, R3, RRX 
l480: tstVC R1, R4, LSL #5
l481: ands R7, R6, R7
l482: subs R5, R2, R0
l483: rsbEQ R2, R10, R11, ASR #12
l484: add R2, R8, R8, LSR #0
l485: rsbs R3, R5, R3, RRX 
l486: mvnPL R6, R0
l487: bEQ l494
l488: add R1, R0, #227
l489: mvns R2, R11, LSR #12
l490: mov R12, R9, LSR R9
l491: movs R8, R5
l492: subHI R4, R12, R2
l493: b l495
l494: b l489
l495: subGEs R2, R15, #146432
l496: mvnEQ R7, R11
l497: addEQ R11, R10, R9, RRX 
l498: andLS R11, R2, R7, ASR #7
l499: subCC R10, R0, R1, ROR R6
l500: movs R9, R4, LSL #11
l501: sub R11, R5, R4, RRX 
l502: andNE R12, R0, #926941184
l503: movs R7, R11
l504: tst R5, R3, RRX 
l505: cmnLS R0, #-1610612723
l506: orr R8, R1, R11
l507: rsbs R3, R4, R6
l508: sbcHIs R9, R7, R7, ROR #6
l509: orr R11, R5, R15, RRX 
l510: bVC l514
l511: add R1, R0, #129
l512: bicLSs R9, R0, R12, ROR R12
l513: b l515
l514: b l512
l515: eor R14, R7, R4, RRX 
l516: andNE R4, R10, R4, ROR R4
l517: addLT R9, R9, R3, ASR #15
l518: addPL R8, R2, #-838860800
l519: b l528
l520: add R1, R0, #75
l521: cmp R5, R10, ASR R5
l522: subs R10, R5, R11, LSL #0
l523: tstVS R0, R2, LSR #25
l524: adds R10, R2, R12, RRX 
l525: teq R12, R3, ROR R8
l526: subLSs R6, R10, #-1610612723
l527: b l529
l528: b l521
l529: teq R5, R11, LSR R9
l530: mvnNE R1, #81920
l531: eorLSs R11, R4, #40192
l532: cmn R6, R3
l533: sbcLSs R6, R9, R14, LSL R7
l534: eor R7, R0, R9, LSR #15
l535: eorGEs R8, R12, #2416
l536: cmnNE R14, R2, ASR R2
l537: mov R0, #905216
l538: sbcs R3, R8, #1610612750
l539: movHI R10, #-2147483636
l540: rsbLT R5, R2, R3, RRX 
l541: eorLTs R8, R5, R2
l542: orrGEs R11, R10, #3392
l543: adcs R7, R4, R4
l544: sub R2, R10, R5
l545: clz R3, R4
l546: clz R14, R6
l547: clz R9, R3
l548: tst R2, R1
l549: adc R11, R8, R3, LSR #24
l550: rsb R9, R9, R3, LSR #19
l551: teq R3, R1
l552: tstPL R7, #536
l553: eorVSs R11, R4, R0, LSR R1
l554: andPL R3, R9, R6, LSL R2
l555: sub R11, R12, R9
l556: adcs R11, R12, #864026624
l557: cmpVC R4, #3248
l558: andLS R2, R8, R8, RRX 
l559: tst R12, R1, ROR R14
l560: orrLSs R7, R4, R1, LSL R7
l561: adcs R4, R4, #736
l562: tst R5, R9, ASR #1
l563: subMIs R5, R2, #676
l564: andMI R5, R4, R6
l565: andLEs R2, R5, R3, ROR #16
l566: sbcNEs R6, R5, #4032
l567: orrMI R14, R2, R2, ROR R9
l568: cmnLE R10, R6, ROR R12
l569: bHI l573
l570: add R1, R0, #11
l571: rsbLSs R5, R7, R15, ROR #18
l572: b l574
l573: b l571
l574: mvnNE R5, #185344
l575: subs R9, R11, R11, ROR #14
l576: cmp R1, R8
l577: bics R10, R6, #112
l578: rsbGTs R3, R9, R14, ROR R14
l579: teqGT R0, #-251658240
l580: cmnCS R8, R6
l581: subLS R10, R6, R4
l582: orrHI R12, R15, R3, ASR #12
l583: cmpGT R5, #469762048
l584: cmp R7, R14, ROR R1
l585: mvnGTs R8, R11, LSL #5
l586: eors R2, R8, R2
l587: addLTs R12, R5, R5
l588: mvns R1, R2, ROR R14
l589: mvnNEs R4, R14
l590: sbc R1, R10, #-2147483600
l591: cmn R2, R14, ROR R6
l592: cmnGT R8, R4, RRX 
l593: rsbCSs R4, R2, R15, ASR #9
l594: eorCS R8, R14, #3616
l595: eor R8, R6, R4, RRX 
l596: bicGT R9, R11, R6, LSL R6
l597: cmn R8, R5, ASR #6
l598: orr R8, R2, R0, RRX 
l599: movLSs R7, #48
l600: rsbs R7, R11, #494927872
l601: subCSs R6, R5, #104448
l602: andVS R6, R2, R15, RRX 
l603: cmnLS R3, R15
l604: cmp R2, R7, ASR R11
l605: rsbLSs R5, R6, R0, ASR #1
l606: b l615
l607: add R1, R0, #96
l608: rsb R5, R8, R14
l609: eors R1, R12, R4, ROR #9
l610: adds R14, R6, #16515072
l611: rsbs R10, R8, R9, LSL R11
l612: and R1, R8, #778240
l613: clz R9, R11
l614: b l616
l615: b l608
l616: rsbLTs R2, R12, #7168
l617: andGT R7, R0, R9, LSL #22
l618: adc R8, R8, R3, RRX 
l619: rscVCs R10, R5, R15, RRX 
l620: mvn R9, #3932160
l621: bicVCs R8, R4, R0, LSL R11
l622: andHIs R8, R14, #21495808
l623: cmnGE R7, #59
l624: tstPL R10, R0, RRX 
l625: cmpLS R9, R4, ROR #7
l626: andGTs R14, R8, R9, ASR R11
l627: eorGEs R6, R2, #2490368
l628: sbcs R10, R0, R2, RRX 
l629: cmn R12, R7, LSL R14
l630: subHI R2, R9, R6, LSL #28
l631: subs R9, R5, R5
l632: subLSs R12, R0, R0
l633: cmpLE R14, R3, ASR #15
l634: rscMI R5, R12, #11008
l635: rsb R4, R5, R11
l636: rsb R9, R1, R4, LSL R6
l637: movHIs R9, R2
l638: teqLT R8, #3325952
l639: tst R9, R14, ROR R5
l640: rsb R10, R8, R3
l641: rscs R8, R12, R12
l642: orrLT R4, R14, R14, ROR #14
l643: clzVC R9, R11
l644: cmnGE R3, R0
l645: cmn R12, R8, ROR R8
l646: movCCs R9, R14
l647: orrGE R11, R9, R5, ASR R9
l648: bic R0, R11, R8, ROR #12
l649: add R8, R14, R0
l650: rsbNEs R4, R11, R7, ROR R12
l651: sub R14, R2, R9, RRX 
l652: mvnCC R4, R8, RRX 
l653: cmnNE R9, #38797312
l654: adcPLs R9, R0, R4, RRX 
l655: adcCCs R8, R4, #12648448
l656: tstCS R3, R3, ROR #17
l657: sbcEQs R2, R0, R12
l658: cmnGT R12, R1, ROR R6
l659: adcNE R6, R14, R14, ROR R6
l660: add R1, R0, #1073741839
l661: subMIs R8, R6, R11, ASR R9
l662: b l667
l663: add R1, R0, #218
l664: sbc R8, R0, #3637248
l665: bic R6, R12, #63176704
l666: b l668
l667: b l664
l668: and R10, R15, #3072
l669: rscCC R4, R8, R7
l670: cmn R12, R14
l671: rsbs R5, R9, #655360
l672: subGT R1, R10, R4, ASR R14
l673: rscs R6, R6, R12, ROR #3
l674: subGEs R8, R10, R1
l675: andGT R9, R0, #3620864
l676: sub R7, R10, R3
l677: rsbLSs R1, R1, R7, RRX 
l678: subPLs R10, R3, R6, LSL #4
l679: b l686
l680: add R1, R0, #199
l681: subLT R1, R2, R7
l682: clzMI R12, R1
l683: mvnLEs R9, #1509949440
l684: clzGT R14, R11
l685: b l687
l686: b l681
l687: rsbVCs R12, R4, R7, LSR #10
l688: teqLE R10, R3, LSL R9
l689: addGEs R4, R15, #-2147483612
l690: clz R11, R12
l691: cmpEQ R15, R4
l692: movCSs R1, R3
l693: sbcCC R1, R12, R8
l694: bic R11, R4, R3
l695: sub R6, R9, R1, ASR R9
l696: mvnLS R2, #20
l697: bicCCs R8, R1, R2, ROR R6
l698: clzLE R14, R4
l699: subNE R9, R10, #49664
l700: subVCs R12, R1, R7, RRX 
l701: sbcMIs R12, R8, R5
l702: cmnGE R12, R0, LSR R0
l703: orrEQs R6, R7, R2, RRX 
l704: eor R12, R6, R1
l705: rsc R10, R7, #360448
l706: eorGT R3, R9, R2
l707: teqGT R9, R10
l708: b l715
l709: add R1, R0, #164
l710: rscs R4, R6, R4
l711: rscGE R14, R9, R7
l712: cmp R14, R7, ASR #14
l713: subLSs R4, R2, #12
l714: b l716
l715: b l710
l716: rsc R7, R14, R8, ASR R10
l717: tstVC R11, #19398656
l718: cmnEQ R6, R6, LSL #17
l719: clz R1, R7
l720: eors R11, R0, #-1610612721
l721: b l730
l722: add R1, R0, #44
l723: teq R0, #9437184
l724: adcs R3, R10, R2, LSL #11
l725: bicNE R9, R4, R5, LSR #23
l726: sbcGT R9, R6, R1, ASR #24
l727: subCS R14, R4, R0
l728: andNE R11, R7, R14
l729: b l731
l730: b l723
l731: subs R2, R5, R0, ASR R6
l732: orrs R3, R7, R3, ROR R3
l733: rscCS R8, R3, #591396864
l734: rscHI R6, R15, #469762048
l735: rsb R10, R6, R8, LSR R9
l736: movs R6, R8, LSL R2
l737: eorLTs R0, R1, #142
l738: ands R5, R4, R9, LSL #13
l739: cmnPL R11, R6, ASR #15
l740: sbc R0, R1, R9
l741: teqCS R4, R10, RRX 
l742: tstMI R1, #3824
l743: and R6, R2, R1, ROR #16
l744: sub R9, R8, R9, ASR #24
l745: bics R3, R0, R4
l746: eors R4, R3, R4, ROR R5
l747: ands R12, R0, R10, ASR #14
l748: cmn R10, R12
l749: rsb R4, R15, R5
l750: eors R14, R6, R0
l751: cmp R6, R10, ASR R10
l752: eorCS R9, R8, R2, RRX 
l753: cmnGT R7, R4, ROR R9
l754: subPLs R10, R14, #15360
l755: eorVCs R7, R8, R15
l756: orrLS R2, R7, R2, LSL R2
l757: bics R1, R7, R0, RRX 
l758: mov R3, R8, ASR R14
l759: sbcLEs R9, R11, #157
l760: mvn R8, R15, RRX 
l761: adcGE R14, R12, R9, ASR #1
l762: b l768
l763: add R1, R0, #251
l764: sub R11, R2, #327680
l765: rsbGEs R11, R10, R14
l766: orr R10, R7, #31232
l767: b l769
l768: b l764
l769: mvn R10, #116391936
l770: tst R5, #24117248
l771: eorPLs R9, R12, R9, LSR #30
l772: orrVS R0, R5, R14
l773: andGTs R7, R10, R10, ASR R9
l774: cmnLS R7, R8, LSL R1
l775: rsbs R4, R0, #156
l776: orr R12, R7, #2176
l777: sub R4, R10, R7, LSR #16
l778: cmnPL R11, R8, ASR R9
l779: cmn R4, R5, ASR R2
l780: mvns R8, #47104
l781: rsb R3, R5, #536870922
l782: bCC l789
l783: add R1, R0, #72
l784: andVS R5, R12, #-805306355
l785: clzNE R1, R5
l786: cmn R2, #3670016
l787: sbcPL R12, R14, R9
l788: b l790
l789: b l784
l790: teq R7, R10
l791: mvnGT R8, R3, LSL #11
l792: bicLTs R8, R9, R11, ASR #19
l793: cmn R8, R2
l794: rscLSs R14, R9, R5, RRX 
l795: movEQs R12, #16449536
l796: mvn R12, R2
l797: teq R5, R3
l798: rsc R0, R8, R9
l799: adds R14, R1, #1811939331
l800: adc R11, R12, R15
l801: tst R1, R8, ROR #16
l802: subs R8, R3, R4, LSR R11
l803: andCSs R4, R2, R15, ROR #17
l804: subLE R10, R3, R7, ASR R6
l805: ands R4, R7, R3
l806: ands R9, R15, #56
l807: bic R9, R1, R15, ASR #25
l808: rsc R11, R7, R5
l809: teqCS R6, R14, LSL R10
l810: andPLs R3, R1, R5
l811: eorVCs R0, R7, R8, LSL #14
l812: mvnCCs R9, R0, LSR #5
l813: addGT R0, R9, #56098816
l814: adc R4, R2, R8, LSR R8
l815: movs R5, R9, LSR #31
l816: rsbNEs R8, R0, R15, ASR #16
l817: teqNE R3, R7, ASR #20
l818: rsc R6, R3, R7, ASR #17
l819: rsc R10, R8, #57671680
l820: mov R5, #1275068416
l821: subLEs R1, R9, #-218103808
l822: adcs R7, R6, R4
l823: tst R12, R3, ASR R0
l824: clz R8, R8
l825: bics R8, R0, #45
l826: ands R10, R12, R15
l827: orrCSs R0, R7, R3, RRX 
l828: mvn R3, R10, RRX 
l829: cmpLS R7, R8
l830: cmnVS R3, #44
l831: mvn R8, R6, LSL R5
l832: adc R5, R11, R14
l833: rsb R10, R2, R8, ASR R4
l834: add R3, R14, R11, ROR #18
l835: bics R2, R7, R0, RRX 
l836: cmp R0, R10, LSR R0
l837: bLE l844
l838: add R1, R0, #203
l839: tst R12, R7, LSR #3
l840: rsbCCs R3, R2, R2
l841: mvn R0, #16515072
l842: movPL R2, R14, ROR #2
l843: b l845
l844: b l839
l845: cmnHI R9, R5
l846: teq R12, #1879048195
l847: adcGT R5, R1, R14, ASR R2
l848: clzCS R6, R4
l849: orrLEs R12, R9, R5, LSL #25
l850: orr R12, R14, R1, RRX 
l851: andLT R4, R11, R3
l852: orr R0, R2, R11
l853: rscGTs R0, R7, R4, ROR R4
l854: andGE R4, R11, R1
l855: subVS R6, R2, R12
l856: movEQs R1, R10, LSR #16
l857: mvns R4, R11, ROR #16
l858: addLEs R2, R8, R1, RRX 
l859: sub R9, R14, R10
l860: and R4, R5, R9, LSR #16
l861: adds R5, R1, R2, LSR #11
l862: eors R6, R4, R11
l863: addCCs R1, R5, R2, ASR R8
l864: eor R12, R0, R12
l865: bicMIs R1, R3, #58880
l866: sub R4, R12, R11, LSL #3
l867: and R7, R5, R8
l868: eor R9, R9, R10, ROR #15
l869: eors R1, R3, #-1342177278
l870: orr R0, R2, R5
l871: adc R1, R0, R4
l872: eors R12, R5, R7, ASR R7
l873: cmpHI R11, R4, ROR #7
l874: mvn R14, #144703488
l875: subHI R1, R6, R7
l876: mvnHIs R9, #-1476395008
l877: movGE R1, R9, LSR #26
l878: add R10, R0, R14, LSR #4
l879: subLT R7, R15, #144703488
l880: mvns R14, R2, ROR #23
l881: mvns R4, R11
l882: subLT R8, R11, #268435467
l883: b l890
l884: add R1, R0, #132
l885: mov R1, R14
l886: sbc R11, R15, #-805306365
l887: eors R10, R8, R8, LSR #12
l888: rsbs R10, R10, R11
l889: b l891
l890: b l885
l891: movLSs R4, #-1342177275
l892: bicVCs R5, R3, R12
l893: subPLs R6, R12, R1, RRX 
l894: mvnCSs R12, R12, ROR R0
l895: movs R6, R10
l896: addGT R4, R6, R12
l897: mov R14, R11, LSR #11
l898: tst R5, R4
l899: movVCs R10, #9961472
l900: rsbLT R1, R5, R11
l901: bLS l906
l902: add R1, R0, #52
l903: rsb R2, R11, R10, LSL #5
l904: teq R3, #504
l905: b l907
l906: b l903
l907: cmn R9, R11, ROR R6
l908: subCC R4, R12, R9
l909: adcs R3, R4, R4
l910: teq R1, R1
l911: sub R11, R1, R14, RRX 
l912: movGT R3, R12, LSR #29
l913: adds R12, R6, R5, RRX 
l914: mvns R4, R4, ROR R0
l915: cmpMI R14, R6, ASR R2
l916: bicGTs R4, R8, #7232
l917: cmnEQ R5, R4, RRX 
l918: bicLT R1, R11, R7
l919: ands R10, R9, R9, ROR #10
l920: bLE l929
l921: add R1, R0, #225
l922: mvn R3, R0
l923: rsb R9, R9, R0
l924: bicVSs R8, R3, R11, ASR R7
l925: addVCs R2, R3, #12386304
l926: teqCS R14, R9, LSL #17
l927: mvnNEs R14, #-1543503871
l928: b l930
l929: b l922
l930: rsbCSs R10, R10, R0, ASR #27
l931: cmp R0, R8, RRX 
l932: clzHI R10, R3
l933: bicVC R1, R11, #46
l934: clzMI R3, R1
l935: adcPL R5, R7, #15552
l936: rsbPL R1, R14, #4145152
l937: sbcs R12, R14, R14, LSL R7
l938: bics R5, R11, #884998144
l939: rsb R5, R7, R15
l940: addCSs R4, R10, R8, ASR #29
l941: cmp R6, #-1056964608
l942: bLE l948
l943: add R1, R0, #242
l944: rsb R4, R1, #1360
l945: rsbs R9, R7, R11, ASR #28
l946: tst R1, R10, LSR #24
l947: b l949
l948: b l944
l949: adcPLs R7, R10, R6, LSR #25
l950: cmpEQ R3, R8, ASR #6
l951: adc R10, R1, #-1140850688
l952: mvns R1, #589824
l953: eors R11, R11, R1, LSR R8
l954: movNEs R1, R7
l955: b l959
l956: add R1, R0, #243
l957: cmn R7, R8, LSR #10
l958: b l960
l959: b l957
l960: sbcNE R8, R6, R7
l961: mvn R0, #10223616
l962: sbcGT R5, R12, #-2147483596
l963: rscs R7, R6, R2
l964: teqGT R1, R4, LSR #19
l965: sub R11, R12, #1589248
l966: bicGE R11, R8, #3276800
l967: rsb R8, R10, #8192
l968: clz R0, R7
l969: bicHIs R0, R11, R14, RRX 
l970: ands R8, R15, #18874368
l971: subs R8, R7, #448
l972: tstGT R2, R8, ROR R5
l973: teqEQ R0, R1, ASR R6
l974: cmnVC R6, #1048576
l975: bic R11, R5, R6
l976: tstMI R1, #2359296
l977: bLT l981
l978: add R1, R0, #179
l979: clzPL R8, R4
l980: b l982
l981: b l979
l982: andLSs R5, R8, R5, LSR #2
l983: clzMI R11, R10
l984: eors R8, R5, R12
l985: andPL R9, R9, R14, RRX 
l986: bCS l995
l987: add R1, R0, #145
l988: adds R3, R12, R7
l989: andLE R12, R1, R14
l990: andCS R14, R11, R5, ROR R10
l991: adcs R5, R5, R1, ROR R8
l992: teq R12, R3, ASR R8
l993: movs R5, R11, ASR R10
l994: b l996
l995: b l988
l996: adcCSs R4, R14, R4, ASR #16
l997: nop
l998: nop
l999: movs R0, R3
l1000: eors R9, R8, #1310720
end: b end

