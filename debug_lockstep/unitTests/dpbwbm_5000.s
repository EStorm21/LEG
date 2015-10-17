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
val1: .word 978953932
next1:ldr R2, val2
b next2
val2: .word 2400256423
next2:ldr R3, val3
b next3
val3: .word 3663276401
next3:ldr R4, val4
b next4
val4: .word 3292156346
next4:ldr R5, val5
b next5
val5: .word 1988271294
next5:ldr R6, val6
b next6
val6: .word 1336128505
next6:ldr R7, val7
b next7
val7: .word 49083985
next7:ldr R8, val8
b next8
val8: .word 2222746877
next8:ldr R9, val9
b next9
val9: .word 1326012557
next9:ldr R10, val10
b next10
val10: .word 1686517793
next10:ldr R11, val11
b next11
val11: .word 3974369811
next11:ldr R12, val12
b next12
val12: .word 3403477808
next12:ldr R14, val14
b next14
val14: .word 482008429

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 1035968083
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 123847499
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 540142901
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 3415128303
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 135262891
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 72978873
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 3469029833
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 2293814451
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 1084772974
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 1031857862
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 3150245523
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 3657348524
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 2810359137
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 2355152516
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 4078811134
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 4051897584
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 856647520
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 2056414143
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 2156152072
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 875011651
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 1146931894
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: addHIs R7, R9, R8, LSR R12
l2: movs R0, #-1879048189
l3: b l11
l4: bics R12, R10, #37888
l5: movNEs R9, #2359296
l6: cmpNE R3, #1120
l7: orrs R11, R6, #17664
l8: orrMI R9, R12, R8
l9: teqEQ R0, #4016
l10: rsbs R10, R0, R9, ASR R11
l11: eorHIs R8, R3, R6, ROR #17
l12: sbcs R4, R10, #7424
l13: sub R1, R4, R10
l14: sbc R14, R15, #3264
l15: subVS R7, R11, R14
l16: b l21
l17: mvnCCs R8, R2
l18: bics R14, R11, R14, ASR R11
l19: orrs R5, R15, #2752512
l20: andNE R0, R12, R5
l21: sub R1, R11, R0, ROR #15
l22: orrNE R3, R7, #21504
l23: sbc R12, R12, #268435461
l24: stmLTDA R13, {R2, R3, R5, R6, R7, R8, R9, R11, R12, R14, R15}
l25: mvnCSs R10, R11, RRX 
l26: rsbs R9, R9, R0, ASR R8
l27: cmnPL R5, R7, ASR #9
l28: adcEQ R12, R2, R14, ROR R7
l29: andNEs R7, R5, R2
l30: orr R3, R14, R10, LSR R11
l31: teqVS R9, R5, RRX 
l32: rsb R6, R7, R3, ASR #8
l33: adc R5, R11, R2, RRX 
l34: bGE l39
l35: add R1, R0, #236
l36: rscVCs R6, R11, R11
l37: mvnLS R14, R8, RRX 
l38: b l40
l39: b l36
l40: adcLS R12, R8, R9, LSR #0
l41: orrs R11, R0, R1, ROR R0
l42: stmDB R13!, {R13, R14, R15}
l43: eorGEs R6, R9, #36438016
l44: bVC l52
l45: clz R5, R1
l46: mov R11, R6, ROR R9
l47: addLS R0, R14, R5, ROR R3
l48: teqLS R1, R14, ROR R5
l49: cmpPL R10, R7, RRX 
l50: and R8, R14, R0, ASR R9
l51: mov R3, R2, ROR R12
l52: subGT R1, R7, #2097152
l53: cmp R10, R14, LSL R2
l54: rscLTs R8, R8, #139460608
l55: eor R5, R1, R7, ROR R7
l56: andCSs R3, R5, R11
l57: cmnCS R11, #1879048203
l58: b l67
l59: add R1, R0, #189
l60: bicMI R3, R4, R11
l61: adcVSs R10, R3, R8
l62: andCCs R4, R12, R3, LSL R10
l63: tst R5, #64
l64: clz R4, R10
l65: eors R5, R0, R2
l66: b l68
l67: b l60
l68: clz R10, R10
l69: andNE R3, R8, #3375104
l70: nop
l71: adcEQs R14, R15, R8, ASR #19
l72: cmpNE R0, R5, ASR #18
l73: orr R6, R2, R0
l74: cmn R8, R10, ASR R3
l75: cmpEQ R1, R9, LSL #30
l76: addGT R9, R12, R1, LSR #14
l77: b l80
l78: adc R14, R2, R0
l79: mvns R3, R4
l80: bicPLs R6, R10, R14, LSR #7
l81: rsb R10, R7, R2, LSR #14
l82: eors R9, R11, R9
l83: bics R10, R3, #2304
l84: ldr R9, [sp], #-56
l85: cmn R3, R12, RRX 
l86: andLTs R10, R15, #368
l87: bicPLs R7, R14, R6
l88: mvns R6, R1, ASR #20
l89: tstLE R14, R11, RRX 
l90: cmn R4, R11
l91: andLEs R3, R7, #536870912
l92: and R0, R2, #98
l93: mov R4, #20
l94: ldr R12, [sp, +R4]!
l95: rscLT R7, R7, R14, ASR #31
l96: sbcs R8, R5, R5
l97: mvnGE R3, R3, ROR R10
l98: andCCs R9, R15, #753664
l99: b l103
l100: rscGEs R11, R1, #2097152
l101: sub R3, R0, R0
l102: subVS R3, R4, #64768
l103: cmp R10, R0, ROR #13
l104: tstPL R10, R12
l105: stmIA R13!, {R0, R1, R3, R6, R12, R14, R15}
l106: b l114
l107: add R1, R0, #254
l108: clz R5, R4
l109: eorPL R9, R7, R1, LSL R4
l110: subs R3, R9, R6
l111: cmpLT R1, R5, RRX 
l112: cmnNE R8, R0, LSL R1
l113: b l115
l114: b l108
l115: rsbVS R4, R6, R10, LSL #0
l116: strB R7, [sp, #-51]
l117: cmp R6, #-1342177277
l118: str R3, [sp, #+0]
l119: rsc R3, R9, R6, RRX 
l120: b l121
l121: mvnCC R5, R6, ASR R1
l122: tst R1, R11, ASR #7
l123: rscs R10, R8, R9, LSR #18
l124: add R9, R11, #6094848
l125: eorGTs R9, R4, R12, RRX 
l126: stmIB R13!, {R2, R8}
l127: stmIA R13!, {R0}
l128: b l133
l129: adcs R14, R2, R8
l130: mvn R7, R1, LSR #18
l131: cmnPL R11, R4, RRX 
l132: subMI R12, R12, R2
l133: subs R3, R14, #268435464
l134: orrEQ R2, R4, #27000832
l135: eorEQs R4, R2, R11
l136: adc R14, R3, R11, LSR #19
l137: eorCS R2, R2, R4, LSL R4
l138: adcVSs R6, R15, R15
l139: rscCSs R0, R12, R12, ASR R0
l140: b l144
l141: sbc R14, R8, R4, LSR R11
l142: eorGEs R2, R0, R1, ROR #25
l143: orrLEs R14, R0, #1291845632
l144: cmp R11, R4, RRX 
l145: bPL l153
l146: cmpPL R9, #-1610612736
l147: add R11, R4, #998244352
l148: cmp R7, R3
l149: sbcs R8, R14, #1073741839
l150: cmpMI R6, R11, RRX 
l151: rsbs R14, R6, #103424
l152: cmp R9, #384
l153: addEQs R11, R10, R7, RRX 
l154: orrVC R3, R15, #1073741824
l155: teq R12, R10
l156: teq R1, R9, ROR R2
l157: eors R6, R11, R2, ROR R2
l158: cmnVS R10, R0, LSR R5
l159: sbc R12, R12, R8, RRX 
l160: rscs R10, R11, R10, LSL R12
l161: rsbLE R0, R10, R8, LSL R8
l162: rscCC R10, R10, #169
l163: b l172
l164: add R1, R0, #224
l165: cmp R10, R8, ROR R9
l166: orrCC R5, R9, #5440
l167: cmpGE R2, R12, LSR R10
l168: teq R2, R2, LSR R8
l169: sbcVSs R1, R11, R15, ASR #14
l170: eorLT R7, R10, R1, ROR #27
l171: b l173
l172: b l165
l173: rsbs R12, R8, R11, LSR R8
l174: bics R4, R11, R14, RRX 
l175: sbcLS R10, R2, R10
l176: clzHI R6, R2
l177: cmnPL R10, R4, ASR #8
l178: orrLT R7, R7, R2
l179: addCS R1, R3, R11, ASR R3
l180: eorLTs R8, R9, R2, ASR #4
l181: stmDB R13!, {R13, R14, R15}
l182: addLS R10, R2, R6, LSR R7
l183: adcCSs R8, R4, R1, LSR #28
l184: b l192
l185: subHI R9, R15, #2048
l186: adds R14, R6, R10
l187: eorMI R3, R1, R8, RRX 
l188: subPLs R7, R5, R9
l189: subs R9, R1, R15, LSL #10
l190: teq R9, R7, ROR #30
l191: sbcLE R11, R14, R3, LSR R7
l192: mvnEQs R0, R11, LSR #11
l193: cmn R12, R10
l194: andMIs R2, R11, R4
l195: orrLSs R2, R9, R9, LSL #24
l196: rsc R9, R1, R5
l197: bVC l205
l198: add R1, R0, #59
l199: bicEQ R1, R3, #-402653184
l200: subNEs R11, R12, R7, ASR #31
l201: and R12, R11, #-2080374781
l202: sub R12, R8, R15, ROR #15
l203: sbcs R8, R5, #62914560
l204: b l206
l205: b l199
l206: ldr R12, [sp, #-8]!
l207: subLE R8, R9, R14, ASR R3
l208: and R12, R5, R1, ASR #16
l209: rscs R3, R8, R4, ASR #10
l210: mvnVCs R12, R15, ROR #2
l211: mvn R0, #1027604480
l212: bHI l220
l213: add R1, R0, #5
l214: mvns R10, R14
l215: bic R1, R6, #12845056
l216: sbcMI R7, R14, R15, LSR #26
l217: movMIs R9, #243
l218: cmpVC R7, R1, RRX 
l219: b l221
l220: b l214
l221: mov R12, #23
l222: strNEB R2, [sp, -R12]
l223: sbcNEs R0, R5, R6
l224: adc R1, R1, #1543503873
l225: bPL l233
l226: add R1, R0, #90
l227: cmn R12, R1, LSL #6
l228: cmpGT R8, R8
l229: cmn R9, R5, LSR R6
l230: clzNE R2, R6
l231: movs R2, R4
l232: b l234
l233: b l227
l234: adc R7, R6, R15, ROR #20
l235: bPL l239
l236: clzCS R1, R2
l237: teqMI R11, #4096000
l238: teqCS R14, R7, ASR R2
l239: mvns R14, #42205184
l240: eors R11, R11, R9, ROR R12
l241: str R3, [sp], #-36
l242: subGTs R7, R1, R9
l243: andCS R3, R3, R14
l244: bVS l248
l245: add R1, R0, #11
l246: teq R7, R9, ASR R11
l247: b l249
l248: b l246
l249: tstLT R12, #3552
l250: clzLS R0, R8
l251: cmn R4, #-2080374781
l252: mov R4, #0
l253: eors R14, R9, #144
l254: cmn R9, R8, ROR #17
l255: orrVSs R12, R9, R3
l256: tstVS R10, R8, LSR R6
l257: subLEs R14, R8, #-1409286142
l258: subs R9, R8, #246784
l259: ldmDB R13!, {R8}
l260: bics R11, R6, #131072
l261: rsb R4, R15, #134217728
l262: eorCS R4, R3, R3, ROR R5
l263: bicCSs R7, R14, R5, LSL R8
l264: mvn R2, R10
l265: bEQ l274
l266: bicCCs R7, R6, R11, LSL R9
l267: rsc R1, R7, R2, ROR R3
l268: andNE R5, R9, #700448768
l269: tstLE R9, R11, RRX 
l270: subPLs R3, R5, R9
l271: eorCS R9, R2, R12
l272: mov R8, R7, RRX 
l273: movGE R12, #637534208
l274: subLSs R0, R14, #-1073741764
l275: strB R14, [sp, #+20]
l276: eors R8, R9, R11
l277: cmpEQ R3, R8
l278: sbc R8, R3, R7, ROR #26
l279: bicNEs R1, R10, R11
l280: mov R11, #61
l281: strLSB R3, [sp, +R11]
l282: ldmCSIA R13, {R0, R1, R2, R5, R14}
l283: subs R0, R1, R0
l284: bLE l291
l285: add R1, R0, #65
l286: subNE R10, R12, R7, RRX 
l287: subVS R14, R3, R0, LSL R6
l288: and R3, R12, #59
l289: cmpHI R11, #720896
l290: b l292
l291: b l286
l292: bGE l300
l293: add R1, R0, #161
l294: rsbGT R5, R7, R0, RRX 
l295: rsbs R7, R14, #268435464
l296: sbcLS R14, R6, R15, LSR #25
l297: tst R10, R15
l298: rscLE R10, R11, R7, LSR R12
l299: b l301
l300: b l294
l301: bNE l302
l302: clz R6, R10
l303: addMI R9, R11, R2, ASR #12
l304: sbcVC R7, R7, R14
l305: orrEQ R4, R1, #173015040
l306: movCC R11, #425984
l307: eorGT R11, R8, R9, ASR R11
l308: clz R9, R10
l309: eors R14, R15, R4
l310: rsbLTs R2, R10, R4, LSL #23
l311: str R10, [sp], #+4
l312: clz R3, R6
l313: ands R10, R11, R9
l314: sbcHIs R8, R6, R3
l315: andGE R10, R5, R5, ASR #26
l316: ldmIB R13!, {R0, R1, R2, R3, R4, R6, R8, R10, R11, R14}
l317: stmLTIB R13, {R5, R14}
l318: tst R14, R3, ROR R8
l319: add R14, R10, R1
l320: and R3, R7, #109
l321: add R0, R10, #13120
l322: clzCC R5, R14
l323: cmp R1, R4, RRX 
l324: subNEs R4, R3, #2128
l325: clzMI R10, R6
l326: b l333
l327: adds R9, R8, R5, ROR R1
l328: addLE R12, R10, R8, RRX 
l329: bicVC R12, R12, R4
l330: addCC R9, R8, #1687552
l331: rsb R14, R1, #128
l332: bicCS R2, R3, R2, LSL R0
l333: adcs R2, R7, R7, LSL #27
l334: clz R10, R14
l335: movPL R0, R0, RRX 
l336: movLT R2, R4, RRX 
l337: stmIA R13!, {R12, R15}
l338: eorHIs R2, R0, R5, ROR #9
l339: cmnNE R8, #-1073741809
l340: mov R9, #43
l341: strB R9, [sp, -R9]
l342: mvn R7, R1, LSR R9
l343: eors R8, R15, R7
l344: sbcMIs R6, R7, R14, LSR #19
l345: teqVS R14, R6, ROR #28
l346: bVC l356
l347: teqEQ R0, #3964928
l348: mov R14, R8
l349: andLE R5, R14, R7, ROR R5
l350: cmp R4, R0, LSL R7
l351: cmpMI R14, R8, RRX 
l352: bicPL R12, R2, R12, LSR R3
l353: cmn R10, R8, LSR #13
l354: orrVCs R4, R11, R10, RRX 
l355: sbcLSs R8, R2, R11
l356: movMI R9, R11, ROR #23
l357: andLE R2, R6, #1048576
l358: b l362
l359: add R1, R0, #251
l360: cmnPL R14, #144703488
l361: b l363
l362: b l360
l363: subs R2, R4, #248512512
l364: tst R0, R6, LSL #18
l365: cmpLS R14, R14
l366: b l376
l367: rscCSs R12, R12, R9, LSR #3
l368: tstEQ R2, R4
l369: clz R3, R11
l370: eorEQ R11, R5, R6, LSL R14
l371: rsbs R7, R10, R10, ROR #17
l372: clzEQ R11, R2
l373: clzLS R1, R9
l374: andNEs R6, R7, R9
l375: cmp R3, R11
l376: orrs R0, R2, #59506688
l377: subs R2, R11, R6, LSL #28
l378: orrs R0, R1, R0, ASR #21
l379: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R7, R8, R10, R12, R14}
l380: rscMIs R9, R10, R4, LSL R7
l381: andMIs R11, R3, #3952
l382: rsbVS R11, R9, R12
l383: rsbPL R7, R3, #9043968
l384: stmDA R13, {R5, R15}
l385: subs R7, R6, R1, LSR R3
l386: sub R0, R8, R7, LSR R4
l387: sbcGT R6, R10, #50331648
l388: bVC l392
l389: add R1, R0, #52
l390: adcLT R7, R1, R1
l391: b l393
l392: b l390
l393: subs R0, R7, R0, LSL #19
l394: addCC R3, R8, R6, LSR #18
l395: teq R15, R10
l396: bicGEs R12, R12, R0
l397: sbcs R3, R7, #805306368
l398: eor R0, R15, R11
l399: mov R3, #4
l400: ldr R12, [sp, +R3]!
l401: rsb R1, R4, #8
l402: tstLT R4, #-2147483639
l403: orrGT R1, R3, R8, LSL R11
l404: teqVS R11, #3504
l405: teqCC R14, R0, LSL #10
l406: mov R5, #32
l407: strLSB R0, [sp, +R5]
l408: mov R14, #46
l409: ldrPLB R5, [sp, +R14]
l410: bEQ l419
l411: eors R3, R8, #5
l412: subEQ R8, R4, R15
l413: bicGE R1, R0, #16000
l414: subEQ R7, R4, R2, ASR R5
l415: mvnGT R5, #-687865856
l416: movVC R5, R14
l417: orrNE R8, R11, R14, LSL R14
l418: mvnNEs R0, #3784704
l419: movLT R8, R11, LSL R4
l420: addPLs R8, R8, #60
l421: cmnLE R0, R4, LSR R6
l422: strVCB R9, [sp, #-12]
l423: andLEs R2, R1, R9
l424: subNEs R6, R14, R14, RRX 
l425: movVS R3, #164
l426: bCS l433
l427: add R1, R0, #159
l428: cmpVC R14, #1979711488
l429: ands R7, R9, R15
l430: rsb R10, R11, R14, ASR R2
l431: sub R0, R9, #768
l432: b l434
l433: b l428
l434: subs R3, R2, R14, LSL R8
l435: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R11, R12, R14}
l436: ldrPL R2, [sp, #-4]
l437: nop
l438: b l444
l439: cmn R12, #-1879048191
l440: orrs R11, R12, R9, RRX 
l441: cmpCS R11, R15, RRX 
l442: adc R2, R4, R1
l443: adcLE R2, R3, R7
l444: mvns R7, #144
l445: bEQ l449
l446: add R1, R0, #190
l447: subHIs R6, R9, #16252928
l448: b l450
l449: b l447
l450: rscs R2, R9, #2048
l451: mov R8, #4
l452: ldr R0, [sp], -R8
l453: mvnMIs R5, R7
l454: andVCs R1, R7, R6
l455: mov R12, #4
l456: ldrVSB R11, [sp, -R12]
l457: rsbEQs R0, R12, R0
l458: bicGTs R5, R9, R2
l459: sub R8, R5, R14, LSR R2
l460: sbcs R0, R5, R3, LSL R9
l461: adcGE R3, R1, R10
l462: rsbVC R9, R10, #15400960
l463: adcVC R7, R14, R1, LSL #12
l464: andLSs R12, R7, #13238272
l465: clz R1, R3
l466: andLEs R6, R7, R0, LSL #10
l467: teqGE R10, R11
l468: eors R1, R2, R0
l469: cmp R12, R10
l470: cmpCC R6, #-1073741815
l471: bicHI R6, R6, R0, ROR R1
l472: movVC R1, R2
l473: bCS l482
l474: cmpEQ R10, R12
l475: adc R11, R0, #1744830466
l476: and R7, R15, R2, RRX 
l477: cmpCS R6, #1342177292
l478: sub R14, R12, R14, RRX 
l479: clzVS R12, R8
l480: clz R9, R14
l481: adcPL R1, R9, #203776
l482: orrVC R7, R8, R4, RRX 
l483: adcs R7, R10, R1
l484: adds R5, R2, R0
l485: orrEQ R14, R6, R9, RRX 
l486: b l493
l487: add R1, R0, #26
l488: eors R5, R4, R1
l489: adds R2, R7, R6, LSR R14
l490: orrMI R9, R9, R8, LSL R0
l491: movs R10, R1, LSL R5
l492: b l494
l493: b l488
l494: orrVS R10, R5, R14
l495: eorGE R3, R15, R15, LSR #10
l496: b l502
l497: andPL R12, R11, R11, LSL R1
l498: cmn R1, R7, ASR R14
l499: teq R6, R8, RRX 
l500: teq R6, R4, RRX 
l501: cmpLE R0, R15, LSL #7
l502: tst R6, R3, ROR R8
l503: tst R3, R12, LSL #13
l504: b l509
l505: add R1, R0, #123
l506: mvnVS R1, R5, ROR R2
l507: adcLTs R2, R11, R8
l508: b l510
l509: b l506
l510: addMIs R12, R4, R5, ASR R9
l511: orrs R9, R4, R14, LSR #3
l512: ldmDA R13!, {R8}
l513: addMI R10, R15, R9
l514: rsbHIs R2, R7, R0, LSL R8
l515: stmCCIA R13, {R5, R6}
l516: bVS l519
l517: orrPLs R3, R10, #776
l518: clzLE R10, R12
l519: movGE R8, R5
l520: teqCS R12, R15
l521: bicNEs R4, R7, R14
l522: b l532
l523: sub R11, R0, R6, ASR R4
l524: addGE R6, R9, R9, RRX 
l525: bicVSs R12, R2, R12
l526: rsb R5, R5, #2432
l527: sbcPLs R3, R11, R6
l528: subLS R12, R11, R8, ASR R5
l529: rsbs R3, R14, R4
l530: adds R14, R11, R1, LSR R10
l531: mvn R2, #-1073741795
l532: sbcs R1, R6, R3, ASR #8
l533: mvnLEs R6, #2032
l534: andHIs R0, R7, R6, LSL R4
l535: cmpCC R8, R5, ASR R7
l536: stmLEDB R13, {R0, R1, R3, R4, R6, R7, R9, R11, R13, R15}
l537: bVS l540
l538: sub R1, R5, R2, ROR R5
l539: orrHI R12, R14, #21504
l540: bicPL R6, R5, R15, ASR #9
l541: eorMI R0, R1, R6, RRX 
l542: bGT l551
l543: add R1, R0, #48
l544: teqHI R4, R0, LSR #12
l545: tst R5, R10, LSL R11
l546: orr R5, R3, R14, RRX 
l547: subs R14, R12, R8
l548: movCC R5, R4
l549: rsb R1, R8, R11, LSL #10
l550: b l552
l551: b l544
l552: subLSs R1, R10, #8388608
l553: and R12, R8, R6, RRX 
l554: cmn R2, R1, RRX 
l555: bic R0, R5, R5, LSR #1
l556: rsb R9, R7, R2, ASR R4
l557: bicGEs R2, R2, R1, RRX 
l558: eorVC R3, R6, R6
l559: eorGEs R0, R10, R7
l560: orr R3, R5, R8, ASR #14
l561: subs R7, R0, #4288
l562: bGE l571
l563: bics R9, R15, R5, LSR #15
l564: clzNE R11, R5
l565: adcs R3, R14, #14464
l566: cmp R4, R12, ASR R4
l567: orrEQ R7, R11, R5, LSR #30
l568: addHI R4, R4, #872415233
l569: adcLEs R1, R3, #3538944
l570: clz R14, R6
l571: clz R5, R12
l572: mov R7, #52
l573: str R3, [sp, -R7]
l574: cmp R8, R0, LSL #17
l575: tstVC R4, R12
l576: eorLT R7, R11, #-1073741767
l577: eors R8, R10, R4, LSL #16
l578: bicLT R3, R11, #424
l579: adcGEs R7, R8, R1, LSL R12
l580: mvnGTs R5, R15
l581: addEQs R4, R1, R1
l582: ldmIA R13!, {R4, R9}
l583: adcMIs R6, R3, R14, ROR #8
l584: subNE R9, R15, R0
l585: b l595
l586: rscGTs R12, R15, #788529152
l587: bic R9, R5, R9, LSL #20
l588: teqCC R14, R8
l589: rsb R7, R8, R0, ASR R6
l590: cmnGE R8, R0, RRX 
l591: rsb R10, R5, R10
l592: cmn R11, R1
l593: subGT R7, R8, #376832
l594: bicCC R5, R5, #141557760
l595: subCS R4, R10, R0, RRX 
l596: teq R2, #12800
l597: mov R9, R0, LSL R9
l598: orr R0, R5, R14, ROR R2
l599: bMI l604
l600: add R1, R0, #198
l601: subGT R3, R14, #-1073741787
l602: tstVS R10, R6, ROR R3
l603: b l605
l604: b l601
l605: orrLTs R11, R6, R14, RRX 
l606: sbcVS R5, R0, R11, RRX 
l607: bic R4, R6, #856
l608: rsbs R2, R5, R5, ROR R8
l609: adds R0, R2, R11, LSL #8
l610: andLEs R4, R3, #-1962934272
l611: cmp R14, R9
l612: teqEQ R1, R11
l613: rscLS R2, R11, R6
l614: strHIB R9, [sp, #-44]
l615: sbc R2, R2, #603979778
l616: sbcCSs R2, R11, R11, RRX 
l617: subLEs R5, R7, #31195136
l618: adcs R1, R10, R14, RRX 
l619: bicVCs R10, R11, R9, RRX 
l620: cmpVS R12, #987136
l621: b l629
l622: add R1, R0, #197
l623: adcLEs R2, R11, #3620864
l624: add R3, R3, R14
l625: eorLSs R1, R11, R5, ASR R3
l626: addGTs R1, R7, R10, LSR #17
l627: eorCCs R10, R9, R12, LSR #15
l628: b l630
l629: b l623
l630: b l636
l631: add R1, R0, #53
l632: andGEs R8, R8, R7, RRX 
l633: adcs R11, R14, R9, LSL #28
l634: subNEs R5, R11, R6, LSL #16
l635: b l637
l636: b l632
l637: cmnHI R12, R4
l638: movMIs R1, #207618048
l639: sbcVS R4, R3, R8
l640: cmpMI R4, #263192576
l641: b l649
l642: add R1, R0, #9
l643: movEQ R2, R10, ROR R0
l644: adcMI R7, R9, R0, ASR #9
l645: mvns R2, R15, RRX 
l646: teq R9, #4849664
l647: add R12, R10, R0, LSL #22
l648: b l650
l649: b l643
l650: rsb R10, R10, R6, RRX 
l651: nop
l652: nop
l653: adcs R11, R10, R10, ASR R7
l654: bicPL R2, R6, R3, RRX 
l655: subLSs R3, R10, R0
l656: nop
l657: b l661
l658: add R1, R0, #109
l659: andLT R2, R1, R5, RRX 
l660: b l662
l661: b l659
l662: bMI l665
l663: ands R10, R9, R9, ROR R11
l664: teqCS R10, R4, ASR R3
l665: subLT R5, R1, R1, LSL R5
l666: bVC l670
l667: movEQ R12, R2
l668: andLE R10, R11, R2, LSL R11
l669: teqPL R4, R11, ROR #8
l670: adc R12, R11, R9
l671: stmDB R13!, {R13, R14, R15}
l672: adcCSs R11, R1, R12, RRX 
l673: mov R5, #1
l674: ldrB R14, [sp, +R5]
l675: cmn R12, R10, RRX 
l676: mvnGEs R5, R11, ROR #27
l677: adcs R6, R2, #-402653184
l678: mov R2, #33
l679: ldrB R4, [sp, -R2]
l680: cmn R3, R1
l681: eors R12, R3, R0, LSR R0
l682: ands R12, R7, R8, LSL #19
l683: bEQ l684
l684: rsbMI R10, R0, #2342912
l685: nop
l686: mvnGT R6, R14, LSL #9
l687: bics R6, R2, R5, LSL #11
l688: bHI l692
l689: sbcLE R5, R11, R6, ASR R2
l690: mov R14, R3, ROR #14
l691: clz R2, R10
l692: eors R6, R15, R10, RRX 
l693: movGE R14, R2, RRX 
l694: rsbLT R6, R3, R8
l695: cmp R4, R12, LSR #1
l696: bVC l703
l697: add R1, R0, #96
l698: rscs R0, R5, R11
l699: cmnVC R2, R10, ASR R6
l700: addVSs R9, R11, #148
l701: orrHIs R10, R0, #93184
l702: b l704
l703: b l698
l704: and R3, R15, #42729472
l705: add R7, R1, R7, ASR R8
l706: eorHIs R9, R4, R0
l707: ands R8, R3, #557842432
l708: movGEs R4, #3520
l709: andVCs R11, R11, R4, ASR #13
l710: andGEs R9, R5, R7, ASR #3
l711: bPL l715
l712: add R1, R0, #233
l713: addVSs R7, R8, R12, RRX 
l714: b l716
l715: b l713
l716: stmIA R13!, {R13}
l717: eorLTs R8, R10, R0, ASR #5
l718: cmnNE R3, #-2080374784
l719: tstLS R2, #344064
l720: tst R9, R10, ASR R7
l721: rscGEs R2, R1, R11
l722: cmp R5, R8
l723: clzMI R0, R6
l724: eorMIs R6, R4, #738197504
l725: orrVS R8, R2, #7864320
l726: cmpGT R15, R8, ASR #5
l727: cmn R2, R4
l728: rsbs R2, R4, R4, LSL R11
l729: teq R5, R5, ASR R5
l730: clzPL R8, R3
l731: cmn R9, R14, ASR R2
l732: adc R8, R10, #1048576000
l733: eorLS R12, R0, #954368
l734: clz R11, R11
l735: andGE R12, R6, R15, RRX 
l736: stmIA R13!, {R0}
l737: bic R8, R10, #917504
l738: b l742
l739: add R1, R0, #43
l740: movLTs R10, R7
l741: b l743
l742: b l740
l743: cmn R7, #311296
l744: bicGT R6, R8, #-1577058304
l745: movs R2, R0
l746: subVC R10, R15, #106496
l747: orrs R1, R15, R6
l748: teq R14, #717225984
l749: rscGTs R2, R0, R15
l750: bLT l760
l751: cmp R6, R14, RRX 
l752: cmn R2, R8, LSL #20
l753: eorCS R1, R15, R5
l754: rsc R1, R1, #3981312
l755: andCCs R8, R7, R8, LSR #16
l756: sub R9, R6, R15, LSR #8
l757: subVCs R1, R4, #47104
l758: rscNE R5, R15, #15990784
l759: orrCSs R3, R3, R3, LSL R4
l760: cmpLT R9, R3
l761: bPL l769
l762: add R1, R0, #172
l763: subs R4, R3, R0
l764: orrs R4, R10, R7, ROR R1
l765: subLT R12, R1, R11, ROR R10
l766: clzHI R9, R10
l767: teqLE R3, R7
l768: b l770
l769: b l763
l770: cmnGT R6, R7, LSR R5
l771: eorVSs R10, R6, R15, ASR #26
l772: mov R9, #64
l773: ldr R7, [sp, -R9]!
l774: add R11, R14, R10, LSR #0
l775: mov R7, R0, LSL #28
l776: str R11, [sp, #+68]!
l777: teq R15, #3408
l778: tst R0, R9, RRX 
l779: adds R1, R9, R2
l780: ldrB R3, [sp, #-68]
l781: sub R3, R12, R0
l782: movLTs R14, #55296
l783: orrCSs R4, R15, #2850816
l784: cmpPL R11, R1, LSR #27
l785: tstVC R9, #704
l786: tstCC R1, R2, RRX 
l787: orrs R7, R0, #15872
l788: orr R5, R3, R9
l789: bGE l797
l790: adc R2, R0, R10, ROR R10
l791: subs R6, R2, #220
l792: movLT R14, R10
l793: adcLE R6, R4, R7, ROR R7
l794: adcLEs R8, R15, R15
l795: teq R12, #44032
l796: subLE R12, R15, #356515840
l797: adc R2, R8, R1, ASR #27
l798: cmnHI R8, R6, LSR #7
l799: bGE l808
l800: orrLT R6, R7, R1, LSL #10
l801: subPLs R10, R3, R7, ROR R2
l802: cmp R1, #-1040187392
l803: addGT R9, R14, R3, LSR #22
l804: addLTs R8, R8, R5, ASR #26
l805: sub R11, R11, R4
l806: eors R4, R1, R7
l807: mvn R11, R9
l808: cmnCS R0, R8
l809: rscVSs R0, R9, #796917760
l810: nop
l811: clzVC R10, R14
l812: andPLs R11, R7, #2013265920
l813: eorLE R14, R2, R14
l814: movNEs R4, #11010048
l815: orrs R4, R11, #-1140850686
l816: b l817
l817: sbcVSs R14, R12, R9, LSR R6
l818: mvnVCs R7, R8, RRX 
l819: clz R11, R12
l820: str R2, [sp, #-16]
l821: teq R1, R12, ASR R7
l822: clzVS R4, R3
l823: movs R9, R0
l824: adcPL R12, R7, R3
l825: bLE l833
l826: add R1, R0, #71
l827: clz R6, R2
l828: teq R10, R14, LSL #15
l829: orrLEs R10, R11, R11, ASR #15
l830: eorEQ R11, R12, #809500672
l831: cmn R1, R3, LSR R12
l832: b l834
l833: b l827
l834: orrs R8, R8, R9, RRX 
l835: and R8, R7, R0, ASR #4
l836: rscs R10, R5, R3
l837: subCSs R2, R9, R8, ROR #13
l838: ands R9, R7, R6, ASR R1
l839: sbcVSs R12, R7, R6, ROR #4
l840: orrs R2, R2, #637534208
l841: subMIs R14, R14, R15
l842: eor R12, R9, R4, RRX 
l843: eors R6, R2, R10, LSL #29
l844: adcLS R10, R7, R1
l845: sub R9, R5, R12
l846: mvnCC R0, R3, ASR R7
l847: orrMIs R0, R9, R3, LSR R7
l848: adcGTs R3, R15, R6, ROR #1
l849: bicVS R8, R2, R0
l850: bCC l852
l851: rscLS R7, R3, #-268435445
l852: addCCs R14, R0, R4, RRX 
l853: subVCs R10, R14, #50069504
l854: cmpPL R10, R3, ROR #4
l855: cmnCS R11, R0, ROR #3
l856: teq R3, R7, ASR R4
l857: movVSs R6, R15, RRX 
l858: eor R14, R10, R14, RRX 
l859: teqGT R15, R0
l860: adcGE R7, R14, R1
l861: bHI l865
l862: add R1, R0, #231
l863: movLTs R2, R0
l864: b l866
l865: b l863
l866: adc R14, R12, #465567744
l867: eorEQ R11, R4, R8
l868: subLEs R7, R0, R2
l869: b l873
l870: mov R3, R3, ASR R3
l871: adcs R3, R5, R14
l872: adcVC R7, R14, #1998848
l873: orrs R2, R7, #805306373
l874: rscs R11, R0, #843055104
l875: subCSs R10, R2, #928
l876: rsbLTs R0, R10, R4
l877: cmpLS R14, R0, ROR #20
l878: addLS R10, R10, #7
l879: eor R12, R14, R7
l880: sbcs R9, R14, R1, ROR R4
l881: teqLS R4, R0, ROR #15
l882: eors R4, R7, R11, ASR #2
l883: b l893
l884: clzHI R11, R4
l885: rscNEs R7, R8, R14
l886: mov R11, R6
l887: rscCSs R5, R11, R10, ASR R8
l888: orrEQs R9, R8, #816
l889: movs R12, R14
l890: ands R9, R11, #153092096
l891: subs R6, R14, R0, RRX 
l892: tst R1, R0, LSL #26
l893: adc R4, R0, R8, LSR #15
l894: eorLTs R4, R5, R3, LSL #1
l895: eors R4, R11, #-1912602624
l896: eorLS R3, R14, R3, LSR R8
l897: nop
l898: cmn R11, R14
l899: bLT l906
l900: add R1, R0, #236
l901: orrCC R12, R4, R10, LSR R14
l902: tst R15, R6, RRX 
l903: orrs R6, R3, R0, RRX 
l904: sbc R1, R1, R3
l905: b l907
l906: b l901
l907: bVC l916
l908: tstEQ R6, #483328
l909: teq R15, #8064
l910: and R2, R10, R14, LSL #25
l911: orrLS R3, R10, R0
l912: cmp R2, R14, RRX 
l913: clzVS R10, R12
l914: mvn R14, R0, LSR R14
l915: mvnMIs R8, R15
l916: tst R1, R3, LSL R3
l917: teqVC R1, R8
l918: bicCSs R3, R11, R1, ROR #12
l919: clz R11, R3
l920: subHIs R0, R8, #1140850689
l921: clz R2, R12
l922: subNE R7, R1, R8, LSR R1
l923: tstHI R3, R8, RRX 
l924: bicVCs R7, R8, #1073741872
l925: tstPL R15, R7, RRX 
l926: b l933
l927: add R1, R0, #190
l928: cmn R7, #10496
l929: rsbGE R10, R14, R10, LSL #26
l930: tstGE R0, R15, RRX 
l931: bics R4, R5, #21
l932: b l934
l933: b l928
l934: addCC R12, R7, R10
l935: orrs R1, R1, R5, LSR R0
l936: subPL R12, R8, R7, RRX 
l937: rsbCSs R8, R6, R3
l938: bics R12, R12, R3
l939: bicHI R6, R10, R2, ROR R5
l940: bVS l945
l941: add R1, R0, #15
l942: sub R14, R2, R10, RRX 
l943: movHIs R8, R12, LSR R10
l944: b l946
l945: b l942
l946: strB R7, [sp, #-53]
l947: clzCS R3, R7
l948: bic R12, R14, R4, ASR R3
l949: nop
l950: bic R0, R5, R11, RRX 
l951: add R9, R0, R12, RRX 
l952: tstNE R10, R4
l953: bHI l959
l954: eorGT R7, R2, R4, LSL R6
l955: eors R9, R10, #143654912
l956: clzNE R12, R8
l957: movVSs R7, R9, LSR R7
l958: subVSs R2, R0, R9
l959: mvnCSs R9, R9
l960: andCC R7, R10, R14, LSR R10
l961: cmnGT R4, R10
l962: subs R14, R7, R6, ROR #5
l963: bics R8, R8, R11, LSL #28
l964: clzCS R12, R8
l965: adds R7, R9, R7
l966: sub R14, R3, #98304
l967: mov R6, #57
l968: strVSB R8, [sp, -R6]
l969: sbc R6, R5, #42240
l970: movHI R4, R7, LSL #12
l971: nop
l972: subLTs R14, R8, #20992
l973: adds R12, R11, #245760
l974: b l981
l975: adcEQ R4, R3, R7
l976: ands R14, R11, R15, RRX 
l977: add R14, R7, #454656
l978: tstGE R14, R15, ROR #11
l979: sbcGEs R9, R5, R4, LSR R8
l980: sbcCC R1, R9, #68157440
l981: bics R1, R2, R10, ROR R4
l982: bic R0, R4, #57671680
l983: b l991
l984: add R1, R0, #201
l985: tstLT R10, R3
l986: mvnGT R8, #-872415232
l987: subs R5, R2, R7, RRX 
l988: rsb R14, R6, R15, ASR #2
l989: and R1, R8, R0
l990: b l992
l991: b l985
l992: eorMIs R10, R14, R15
l993: rsbCS R12, R11, #11927552
l994: sub R5, R10, R1, LSL R3
l995: subs R6, R15, R4, LSR #2
l996: adds R0, R9, R1, ROR R9
l997: and R2, R6, R1
l998: nop
l999: eor R4, R11, R9, ASR #22
l1000: teqNE R8, R7
l1001: subPL R12, R12, R1, LSR R5
l1002: subVS R0, R14, R9
l1003: subGTs R12, R8, #671088640
l1004: strMIB R7, [sp, #-34]
l1005: sub R10, R5, R14, ROR R9
l1006: tst R12, R7, ROR #25
l1007: mov R6, #68
l1008: ldrLSB R8, [sp, -R6]
l1009: bPL l1016
l1010: add R1, R0, #184
l1011: subCSs R4, R2, #-536870912
l1012: rsc R5, R2, R3, LSR #9
l1013: rsbHIs R6, R0, #14811136
l1014: adcHI R12, R10, R3, RRX 
l1015: b l1017
l1016: b l1011
l1017: andPLs R5, R9, R7, LSR #2
l1018: bCC l1024
l1019: add R1, R0, #138
l1020: cmpNE R9, R1, RRX 
l1021: movLSs R4, R15
l1022: rsbMIs R5, R0, #7274496
l1023: b l1025
l1024: b l1020
l1025: sbcLS R2, R15, #434176
l1026: sub R1, R1, R10
l1027: orrs R11, R9, R14, LSR #9
l1028: teq R12, R3
l1029: cmnPL R4, R12, ASR #17
l1030: bLT l1035
l1031: add R1, R0, #125
l1032: rsbs R3, R4, #802816
l1033: teqMI R2, R3, LSL #16
l1034: b l1036
l1035: b l1032
l1036: b l1038
l1037: movs R3, R6, LSL R14
l1038: addVCs R5, R6, R3, RRX 
l1039: adcLT R4, R11, R5, RRX 
l1040: cmp R15, #1720320
l1041: cmn R1, #294912
l1042: orr R4, R14, #1818624
l1043: subLT R0, R5, R11, LSR R0
l1044: nop
l1045: bNE l1050
l1046: rscMI R7, R5, #-1140850687
l1047: teqLS R14, R14, LSL R2
l1048: eorVS R6, R2, #61184
l1049: add R12, R6, R3, LSL #9
l1050: rsbGTs R8, R4, R0, ROR R7
l1051: strMIB R10, [sp, #+0]
l1052: mvns R6, R11, LSL R4
l1053: orrVS R10, R7, R14, LSR #19
l1054: adcLSs R5, R1, R2, LSR R4
l1055: nop
l1056: rscs R2, R8, #1342177282
l1057: movs R14, #924
l1058: orrCSs R0, R1, R15, LSL #30
l1059: ldmDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R10, R11, R12, R14}
l1060: orr R9, R7, #2013265923
l1061: movMIs R11, R11, LSL #19
l1062: tst R8, R5
l1063: sbcs R9, R8, #4160
l1064: movVS R11, R14, ASR #16
l1065: adcGE R8, R2, R8
l1066: subVCs R4, R0, R3, RRX 
l1067: cmnPL R7, #992
l1068: cmp R3, R11, LSL #3
l1069: bNE l1076
l1070: rsbGT R11, R3, #9600
l1071: teqNE R7, R15, RRX 
l1072: bicLE R4, R8, #-402653184
l1073: teq R0, #-704643072
l1074: mvnNE R4, R9, LSL #13
l1075: rsbs R12, R4, R3, ASR R7
l1076: ands R5, R4, #55836672
l1077: b l1082
l1078: teqCS R9, R12, ASR #11
l1079: bics R3, R0, R10, ROR R3
l1080: teq R7, #55296
l1081: mvn R0, R5
l1082: ands R9, R4, #16777216
l1083: strMIB R7, [sp, #-49]
l1084: rsc R3, R5, R4
l1085: bCS l1094
l1086: bicMI R11, R9, #20185088
l1087: mvns R4, R14
l1088: rscNEs R10, R3, R1
l1089: subLS R5, R3, R1, LSL R4
l1090: orrLE R2, R10, #348160
l1091: clzCC R14, R0
l1092: cmpEQ R8, R14, ROR #18
l1093: rsbHIs R5, R10, #-1879048179
l1094: movs R7, R2, ROR #5
l1095: eor R1, R12, #987136
l1096: subNEs R12, R9, R15
l1097: rscNE R14, R4, R11, ASR R5
l1098: bLE l1107
l1099: adc R4, R10, #980
l1100: cmnCS R9, #2512
l1101: cmp R5, R1, LSR R0
l1102: adds R9, R5, #-33554432
l1103: orrNEs R0, R2, R14
l1104: tst R7, R12
l1105: mvnLE R6, #1769472
l1106: cmpVS R1, R7, RRX 
l1107: subs R0, R9, R3, ASR R14
l1108: bCS l1117
l1109: add R1, R0, #5
l1110: ands R9, R1, #165675008
l1111: teq R10, R2
l1112: bics R12, R8, #-1073741806
l1113: sub R5, R0, R7, LSL R8
l1114: sub R10, R8, R7, LSL R6
l1115: cmpGT R14, R6, ROR R14
l1116: b l1118
l1117: b l1110
l1118: rscEQs R0, R15, R6
l1119: movPLs R7, R10
l1120: stmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14, R15}
l1121: rscEQs R2, R5, R1, RRX 
l1122: addEQ R10, R6, R3, LSR #14
l1123: orr R12, R9, R2, ROR R10
l1124: strGE R8, [sp, #+36]
l1125: orrMIs R2, R4, R7, LSR R10
l1126: bicHIs R9, R2, R14
l1127: sbcVCs R12, R4, R9
l1128: eorEQs R11, R1, R2, ASR R8
l1129: adc R4, R7, R9, RRX 
l1130: rsbVCs R6, R2, R15, RRX 
l1131: eors R5, R11, #314572800
l1132: eorNE R2, R5, R8, ASR #21
l1133: cmp R1, #3407872
l1134: bic R14, R12, #7602176
l1135: subs R5, R2, R2, ASR #22
l1136: ldmDB R13!, {R14}
l1137: bLE l1138
l1138: rscs R8, R10, R3, LSR #9
l1139: sbc R10, R3, #14
l1140: cmnHI R9, #1073741869
l1141: teq R5, #-1073741813
l1142: subLE R1, R6, R11, LSR R8
l1143: rsbs R2, R7, R11
l1144: orrCS R2, R8, R2
l1145: mvnCSs R3, R6, LSL #8
l1146: mvnCS R5, R8
l1147: and R6, R14, R9, RRX 
l1148: tst R0, R5
l1149: subs R4, R1, #3
l1150: mvnGT R4, R15, RRX 
l1151: adc R2, R7, R4, ASR #22
l1152: rsbCCs R4, R11, #132
l1153: movNEs R4, R15
l1154: clzGE R3, R10
l1155: mvnVCs R11, R12
l1156: bic R8, R14, R12
l1157: orrVC R14, R9, R14, LSR #17
l1158: bicGT R8, R8, R11, LSL R8
l1159: adc R11, R1, R14
l1160: cmnCS R14, R2, LSR R0
l1161: rsc R7, R9, #47
l1162: orrs R5, R10, R12
l1163: cmpEQ R6, R11, LSR R10
l1164: bics R3, R1, #251658240
l1165: ldrB R10, [sp, #+23]
l1166: bMI l1173
l1167: add R1, R0, #229
l1168: cmn R0, R11, ROR R2
l1169: add R6, R11, R10
l1170: sbcGT R8, R4, #1
l1171: subHIs R0, R10, R7, LSR #15
l1172: b l1174
l1173: b l1168
l1174: and R7, R12, #52
l1175: b l1178
l1176: ands R7, R1, R1, LSR #14
l1177: bic R7, R11, R11, LSR R7
l1178: cmnPL R15, R4, ASR #8
l1179: rsbGEs R5, R11, R3, ASR #3
l1180: rsbHI R0, R9, R4, ROR #20
l1181: tstPL R15, R4
l1182: teq R5, R11, ASR R7
l1183: adcGTs R1, R11, #28928
l1184: mov R11, #45
l1185: strMIB R1, [sp, +R11]
l1186: cmp R7, #99328
l1187: bVS l1194
l1188: add R1, R0, #101
l1189: bics R8, R4, R14
l1190: adds R3, R15, R8
l1191: and R11, R2, #40448
l1192: addCCs R12, R0, R14, RRX 
l1193: b l1195
l1194: b l1189
l1195: bicNE R6, R8, #158
l1196: adcMI R8, R14, #-1023410176
l1197: adc R8, R0, R7
l1198: movLS R12, #384
l1199: rsbNEs R3, R14, R5, ASR R5
l1200: andLE R9, R9, R4, LSR R0
l1201: ldrCCB R8, [sp, #+22]
l1202: subLEs R8, R3, R12
l1203: rsbs R0, R8, R1, LSR #2
l1204: adcs R2, R9, R1
l1205: cmn R11, R8
l1206: rsbVS R2, R3, R10, LSR #9
l1207: b l1216
l1208: add R1, R0, #188
l1209: ands R3, R1, R11, ROR #12
l1210: cmpCC R6, R8
l1211: subs R11, R8, #536870916
l1212: subs R5, R3, R9, ASR R8
l1213: teq R15, R0, LSL #10
l1214: clzLT R3, R2
l1215: b l1217
l1216: b l1209
l1217: andVS R6, R7, R4
l1218: rscVCs R4, R1, R11
l1219: movs R1, R14, ASR #28
l1220: teqNE R7, R0
l1221: bVS l1222
l1222: movPL R12, R2
l1223: stmIB R13!, {R0, R1, R4, R12}
l1224: orrVS R8, R0, #-570425344
l1225: orrLE R5, R8, R1, ASR R0
l1226: bEQ l1233
l1227: add R1, R0, #61
l1228: teqVS R5, R7, ROR R7
l1229: subs R0, R2, R9
l1230: cmpGT R15, #29622272
l1231: cmpGE R1, R4
l1232: b l1234
l1233: b l1228
l1234: teqPL R1, #3457024
l1235: b l1244
l1236: sbcGTs R11, R11, #28311552
l1237: rsb R3, R7, R11
l1238: sbcLTs R4, R9, R6
l1239: cmp R10, #-2147483601
l1240: movs R10, R4, ASR R2
l1241: bicLTs R9, R9, R9, ROR #22
l1242: bic R3, R8, R9
l1243: adcCCs R1, R0, R9, ASR #3
l1244: adc R10, R6, R8, ROR R12
l1245: bGE l1251
l1246: tstLT R0, #1476395008
l1247: ands R4, R3, R5, ASR R2
l1248: mvnHI R1, R10, ASR R7
l1249: cmn R6, R12, ROR R5
l1250: andNE R12, R1, #805306381
l1251: cmnCS R9, R1
l1252: eorLEs R9, R10, #2624
l1253: cmnVS R9, R12, ROR R0
l1254: mov R4, #4
l1255: strEQB R9, [sp, -R4]
l1256: ldmIB R13!, {R0, R1, R2, R3, R5, R6, R7, R10, R11, R12, R14}
l1257: andNE R5, R8, R11, RRX 
l1258: sbcLE R4, R0, R8
l1259: rsbs R5, R8, R8, RRX 
l1260: sbcMI R4, R5, R0, ROR R0
l1261: tstGT R9, R3, ROR #24
l1262: add R4, R3, R15, LSR #28
l1263: rscs R8, R8, #-184549376
l1264: str R3, [sp, #-24]!
l1265: sbcNE R0, R5, R12, LSR #21
l1266: andLT R14, R7, R7, LSL R12
l1267: adc R7, R1, R9, RRX 
l1268: mvns R8, R11
l1269: andVC R9, R12, R2, ASR R1
l1270: cmpCC R7, R2, RRX 
l1271: subLE R8, R4, R7, RRX 
l1272: str R6, [sp], #-4
l1273: bVS l1282
l1274: add R1, R0, #36
l1275: cmpCC R8, R2, LSL #1
l1276: teqEQ R8, R11, ASR #0
l1277: cmp R8, R14
l1278: teqLE R8, R3, ASR R14
l1279: sub R7, R12, R9, RRX 
l1280: cmn R6, R3
l1281: b l1283
l1282: b l1275
l1283: tstCC R12, R2, LSR R6
l1284: bicEQ R1, R9, R2
l1285: tst R9, R15, LSR #17
l1286: ldrMI R11, [sp, #-36]
l1287: tst R1, R2
l1288: tst R3, R1
l1289: mvnLSs R2, #7274496
l1290: movHIs R12, #26
l1291: mvnPL R14, R0
l1292: subLTs R7, R11, R7, ASR #19
l1293: cmp R0, R11
l1294: b l1300
l1295: sbcLTs R10, R3, R7, ASR R6
l1296: clzGE R12, R6
l1297: eorPL R11, R11, R0, RRX 
l1298: subLS R0, R7, R3, ASR #6
l1299: andLT R6, R2, #1048576000
l1300: movGEs R9, R9, ROR #17
l1301: rsbPLs R3, R1, R10, LSL R8
l1302: clz R10, R7
l1303: add R14, R14, #14090240
l1304: andPL R8, R2, R1
l1305: tstHI R2, R8, LSL #30
l1306: tstGT R0, R15, ASR #31
l1307: b l1313
l1308: add R1, R0, #11
l1309: eors R11, R8, R7, ROR #4
l1310: tstCS R12, R10, LSR R14
l1311: bics R11, R8, R9, RRX 
l1312: b l1314
l1313: b l1309
l1314: cmpEQ R12, R1, LSL R5
l1315: orrMI R1, R1, R7
l1316: teq R9, #744
l1317: orrNE R6, R1, #14483456
l1318: bics R12, R4, R14
l1319: rscLS R11, R0, R7, LSR R14
l1320: mov R11, #27
l1321: ldrB R9, [sp, -R11]
l1322: bMI l1330
l1323: orrGT R6, R1, R10, RRX 
l1324: sbcs R1, R0, #26624
l1325: sbcVCs R4, R4, R4, LSL R12
l1326: addGTs R14, R6, R9
l1327: cmnMI R4, R8, ROR #15
l1328: adc R3, R7, R8
l1329: tst R5, R1
l1330: eorVC R5, R14, R14
l1331: b l1336
l1332: cmn R4, R7, ASR R12
l1333: mvnVSs R11, R6
l1334: cmpPL R11, R8, LSL R6
l1335: cmp R9, R9, ASR #5
l1336: cmpVS R8, R4, LSR #24
l1337: sbcLS R6, R1, #10027008
l1338: eorVSs R10, R6, R15
l1339: bGT l1348
l1340: subs R4, R15, R1, RRX 
l1341: subVS R10, R8, R9, LSR #14
l1342: clz R5, R11
l1343: addCC R7, R5, R15, ASR #0
l1344: teq R0, R5
l1345: tstCC R3, R15, LSL #23
l1346: adds R14, R7, R10, LSR R4
l1347: tstNE R6, R9, RRX 
l1348: cmp R12, R10, LSL #13
l1349: b l1354
l1350: add R1, R0, #44
l1351: subVSs R2, R15, #931135488
l1352: eor R1, R4, R2, RRX 
l1353: b l1355
l1354: b l1351
l1355: cmpVC R11, R5, ASR #1
l1356: cmpLE R5, R12, LSR R7
l1357: mov R6, #24
l1358: str R9, [sp], +R6
l1359: ands R12, R12, R14, RRX 
l1360: b l1363
l1361: mvnLE R0, R15, RRX 
l1362: adcs R3, R12, R3, LSL R11
l1363: rsb R7, R9, R4
l1364: clz R3, R8
l1365: tstEQ R7, R7
l1366: mov R8, #52
l1367: strVSB R1, [sp, -R8]
l1368: rscNE R9, R1, #12224
l1369: subGEs R7, R6, R11
l1370: addLE R2, R8, R11, ASR R5
l1371: cmpVC R7, R5, LSR #3
l1372: rscs R1, R7, R5, LSR #6
l1373: orr R0, R4, #1744830464
l1374: andLTs R6, R1, R6
l1375: addGTs R1, R2, R11, ROR #4
l1376: adc R7, R7, R7
l1377: eorLTs R9, R3, #1610612736
l1378: cmn R2, R9
l1379: cmn R4, #128
l1380: stmIB R13!, {R1}
l1381: tst R15, R11, LSR #13
l1382: ldmHIDB R13, {R3, R5, R6, R7, R10, R11, R12, R14}
l1383: subs R11, R12, R0
l1384: adcEQs R1, R11, R11, LSR R4
l1385: andLS R1, R6, R4, LSR #19
l1386: b l1393
l1387: add R1, R0, #247
l1388: teq R4, #202752
l1389: subGEs R0, R7, R7, LSL R5
l1390: rscPLs R4, R7, R14, LSL R9
l1391: orrGE R10, R5, R9, LSR #12
l1392: b l1394
l1393: b l1388
l1394: b l1401
l1395: cmp R14, R6, RRX 
l1396: mvns R1, R7, RRX 
l1397: rsc R10, R1, R15
l1398: subLT R0, R6, R6, LSL R1
l1399: mvns R6, #666894336
l1400: tst R11, R0, RRX 
l1401: rscs R0, R1, R2
l1402: clzHI R5, R8
l1403: bic R8, R4, R1
l1404: subCCs R10, R9, R1
l1405: tstHI R7, R10, ROR R4
l1406: ldmIB R13, {R0}
l1407: tstCS R3, R14, LSL #2
l1408: clz R3, R3
l1409: cmnHI R6, R1
l1410: addCCs R10, R15, R7, RRX 
l1411: mvnGEs R7, R10, LSR R4
l1412: b l1419
l1413: clzGE R0, R0
l1414: rscGE R4, R14, R5
l1415: rsbVS R10, R8, R14
l1416: sbcs R4, R1, #23592960
l1417: addVS R3, R9, R6, ROR #30
l1418: subLS R12, R12, R3, LSL R7
l1419: cmp R4, R4
l1420: b l1424
l1421: add R1, R0, #88
l1422: subCS R9, R9, #148
l1423: b l1425
l1424: b l1422
l1425: andCCs R14, R3, #63963136
l1426: stmIB R13!, {R14}
l1427: sbcs R9, R5, R11, ASR #5
l1428: andLS R6, R10, R12, LSL R1
l1429: movMI R3, R12, ROR #12
l1430: rscs R0, R6, R10, LSR R3
l1431: mov R8, #1
l1432: ldrB R10, [sp, -R8]
l1433: addPLs R10, R1, #3120
l1434: tstCC R12, R9, ASR #10
l1435: orrEQ R12, R11, R6
l1436: orrVS R4, R2, R9, ROR R6
l1437: bGT l1444
l1438: sub R7, R6, R2
l1439: rscMI R6, R9, #278528
l1440: sbcVSs R8, R9, R9
l1441: sbc R7, R4, #4224
l1442: teqCC R4, R4
l1443: teqGT R15, #1904
l1444: eors R6, R5, #2228224
l1445: mvnGE R11, R5, ASR R11
l1446: teq R15, R12, RRX 
l1447: subNE R0, R7, R9, LSL #12
l1448: bicMIs R5, R6, R11, LSL #6
l1449: teqPL R11, R8, LSL #15
l1450: mvn R8, R14
l1451: subVS R2, R11, R2, LSR R12
l1452: mov R0, #40
l1453: str R8, [sp], -R0
l1454: b l1463
l1455: add R1, R0, #50
l1456: movs R5, #13
l1457: rsbGEs R2, R5, #-536870912
l1458: andCC R4, R7, #53504
l1459: cmn R10, R10, ASR #6
l1460: rsbNE R12, R1, #3604480
l1461: eorLTs R7, R15, R10, RRX 
l1462: b l1464
l1463: b l1456
l1464: clz R8, R6
l1465: adcLE R14, R9, R3, LSL R10
l1466: mov R1, R0, LSR R12
l1467: eors R14, R4, R4, LSL R11
l1468: eorHIs R1, R14, R3
l1469: addPL R12, R15, R10, ROR #24
l1470: andCCs R5, R8, #-1073741819
l1471: sbcLTs R7, R0, R12, LSR #10
l1472: orrLT R9, R4, R8, LSL R11
l1473: orrPLs R9, R3, R9
l1474: eor R12, R4, #297795584
l1475: bicHI R2, R3, R11
l1476: adcEQs R10, R9, R9, LSR #27
l1477: subs R8, R0, #81788928
l1478: andVC R4, R1, R15
l1479: b l1488
l1480: add R1, R0, #108
l1481: teqPL R6, R0
l1482: bicMIs R3, R5, R1, ROR R8
l1483: sub R2, R5, R5, RRX 
l1484: mvnVCs R2, R15, ROR #29
l1485: addHIs R3, R6, R7, ROR #24
l1486: mvns R2, #262144
l1487: b l1489
l1488: b l1481
l1489: subPLs R7, R5, R0
l1490: subGE R7, R6, #819200
l1491: b l1500
l1492: tst R2, R5, LSL #28
l1493: rscs R2, R0, R6
l1494: eorPLs R6, R1, #56
l1495: clzPL R7, R12
l1496: subLEs R6, R4, R12, ASR #17
l1497: sbcCCs R12, R14, R4, ROR R10
l1498: mvnHIs R0, R10
l1499: cmpEQ R9, R2, LSR R7
l1500: orrs R8, R7, R15
l1501: mov R4, #32
l1502: strB R1, [sp, -R4]
l1503: teqLE R11, #912
l1504: sub R4, R2, R6
l1505: cmp R0, R7
l1506: bNE l1516
l1507: teqCC R5, R7, ROR #27
l1508: tstGT R6, R1, ROR R9
l1509: bic R14, R0, R7
l1510: bicPL R8, R14, R8
l1511: sbcPL R9, R3, R5, LSR #28
l1512: rsbHIs R9, R11, #106
l1513: mvnLS R1, R6, LSL R11
l1514: bic R9, R2, R8
l1515: rscHI R14, R8, #162529280
l1516: teqVS R14, R8, ASR #2
l1517: cmpGT R6, R5, ROR #12
l1518: orrNEs R0, R1, #17152
l1519: subVS R8, R1, R9, ASR #24
l1520: subGTs R11, R9, #10944512
l1521: rsc R4, R2, R6
l1522: tstHI R5, R10, LSL R5
l1523: movLE R14, R14, ASR R11
l1524: movs R4, R1, ASR R1
l1525: b l1532
l1526: add R1, R0, #188
l1527: addCSs R10, R1, R7, ROR R11
l1528: mvns R10, R9, ASR R7
l1529: mvnNEs R7, R0, LSL R12
l1530: adc R7, R8, R12, LSL R8
l1531: b l1533
l1532: b l1527
l1533: ldmDB R13!, {R9}
l1534: bCC l1542
l1535: subVSs R7, R15, R5
l1536: adc R6, R7, R8, LSR #8
l1537: cmnLE R4, #1081344
l1538: adcCC R6, R12, R8, LSL #22
l1539: cmnHI R11, R6, ASR R10
l1540: addCSs R1, R2, #48
l1541: eorMI R9, R12, R9, ROR #16
l1542: clzNE R7, R14
l1543: subGEs R4, R12, #-1073741823
l1544: eors R5, R0, #659456
l1545: cmnMI R1, R12, ASR R14
l1546: cmn R5, #-1157627904
l1547: tst R1, #1035993088
l1548: mvnCCs R5, #59244544
l1549: sbcs R2, R7, R2
l1550: rscVCs R6, R11, R0, LSL R9
l1551: adcLEs R2, R8, R9, LSL R1
l1552: orrs R6, R11, R8, RRX 
l1553: mov R10, #25
l1554: strCSB R14, [sp, +R10]
l1555: b l1556
l1556: cmpPL R10, R0, RRX 
l1557: adds R9, R14, R3, ASR R3
l1558: andPL R8, R10, R12, ASR #20
l1559: adds R2, R5, R9, LSR #3
l1560: mov R10, R6, RRX 
l1561: andMIs R4, R12, R12
l1562: b l1568
l1563: add R1, R0, #186
l1564: rsc R8, R14, R1, ROR #30
l1565: mvnHI R7, R2, RRX 
l1566: mvnGEs R5, R2, ROR #20
l1567: b l1569
l1568: b l1564
l1569: rscEQs R5, R10, R6
l1570: eorPL R0, R4, R10
l1571: eorLSs R9, R9, #296
l1572: b l1577
l1573: add R1, R0, #134
l1574: teq R14, #62208
l1575: cmn R12, R8
l1576: b l1578
l1577: b l1574
l1578: clzCS R3, R2
l1579: andVCs R2, R3, R5, LSR R1
l1580: bNE l1588
l1581: add R1, R0, #40
l1582: subLT R3, R0, #41472
l1583: orr R5, R2, R6
l1584: adcCS R4, R0, R14, ROR #1
l1585: adcs R6, R7, R2, LSL #21
l1586: cmpVC R7, #30
l1587: b l1589
l1588: b l1582
l1589: eorLEs R9, R11, #1884160
l1590: b l1598
l1591: add R1, R0, #91
l1592: sbcVSs R0, R15, R15, ASR #20
l1593: tst R14, R8, ASR R1
l1594: subLS R1, R4, R0, LSL R6
l1595: subGTs R4, R6, R0, LSR #21
l1596: mvnGEs R10, R11
l1597: b l1599
l1598: b l1592
l1599: subCCs R7, R2, R8
l1600: andPLs R0, R11, R7, LSR R0
l1601: orr R8, R8, R14
l1602: movNE R7, #25165824
l1603: ands R1, R12, R7, LSR #27
l1604: bics R4, R6, R2, ASR #2
l1605: subGEs R12, R4, #1895825408
l1606: orrs R11, R1, R11
l1607: andMIs R1, R1, #3776
l1608: sub R11, R14, R10
l1609: cmp R10, R15
l1610: strB R11, [sp, #+1]
l1611: stmDB R13, {R2, R5, R6, R9, R13}
l1612: subGTs R2, R14, R4, LSR R1
l1613: rsbVS R9, R12, R5
l1614: bEQ l1621
l1615: subMIs R12, R14, R4
l1616: cmnEQ R2, R15
l1617: clz R4, R8
l1618: rsbNEs R3, R7, R0
l1619: rscNE R11, R3, #15204352
l1620: clz R14, R5
l1621: eor R4, R7, R1
l1622: sub R9, R9, R10, ASR #0
l1623: b l1628
l1624: add R1, R0, #237
l1625: subs R14, R8, R0, ASR R3
l1626: orrEQs R1, R8, R12
l1627: b l1629
l1628: b l1625
l1629: cmnVS R7, R1
l1630: stmDA R13!, {R3, R10, R12, R15}
l1631: adcs R11, R7, R11
l1632: ldmIA R13!, {R1, R3, R6, R7, R10, R11}
l1633: movs R2, R14, ROR #28
l1634: bics R7, R8, #136192
l1635: eorCC R8, R10, #6400
l1636: cmpCC R3, R2, RRX 
l1637: rsc R9, R0, R14
l1638: teq R11, R3
l1639: ldrEQB R12, [sp, #+5]
l1640: cmpCS R11, #11927552
l1641: movs R9, #2523136
l1642: tst R11, #83
l1643: sub R0, R2, R4, RRX 
l1644: bics R3, R6, R8, ROR #9
l1645: b l1652
l1646: add R1, R0, #44
l1647: bicGEs R2, R9, R14
l1648: mvn R3, R0, RRX 
l1649: movVS R12, R10, RRX 
l1650: andMI R0, R2, R14
l1651: b l1653
l1652: b l1647
l1653: tst R11, R3, LSL R0
l1654: cmnPL R12, R11, RRX 
l1655: rscHI R5, R6, R2, RRX 
l1656: mvnNEs R5, R9, RRX 
l1657: cmpLE R8, #-1073741803
l1658: cmpPL R9, R8, LSR R9
l1659: cmnHI R11, R12, LSR R8
l1660: and R0, R5, R12, LSR R5
l1661: ands R8, R10, R0
l1662: b l1671
l1663: add R1, R0, #42
l1664: subVCs R3, R5, #1408
l1665: adcGT R5, R9, R9, ROR #18
l1666: subCSs R10, R11, R9
l1667: sub R1, R12, R14, ASR #15
l1668: addLT R11, R6, R12, ROR #11
l1669: teq R7, R10
l1670: b l1672
l1671: b l1664
l1672: b l1674
l1673: adc R12, R9, #14483456
l1674: rscLE R1, R10, R3
l1675: movs R14, R1, LSL #23
l1676: b l1677
l1677: rscEQ R10, R8, R14, LSR R14
l1678: bic R7, R0, R11, ASR R6
l1679: mov R2, R11, LSR R5
l1680: mov R1, #9
l1681: strVSB R10, [sp, -R1]
l1682: stmIA R13!, {R7}
l1683: subNEs R11, R3, #7104
l1684: ldmIB R13!, {R1, R6, R7, R8, R9, R11, R14}
l1685: nop
l1686: rscCSs R6, R3, #1073741870
l1687: sbcGE R10, R3, R0
l1688: eorCCs R10, R8, R1
l1689: andVS R14, R6, R8
l1690: eorMI R9, R15, #549453824
l1691: bVC l1699
l1692: add R1, R0, #46
l1693: movs R9, R2, LSR R11
l1694: tst R3, R15
l1695: bicPLs R7, R3, R0, ROR #21
l1696: adds R0, R10, #13376
l1697: subs R11, R6, R8, LSR R5
l1698: b l1700
l1699: b l1693
l1700: orrGTs R4, R7, R10, LSR R6
l1701: tst R10, R12
l1702: rsbMIs R3, R14, R10
l1703: bic R8, R15, R12
l1704: bCS l1706
l1705: rscLSs R12, R11, #360448
l1706: mvn R10, #520093696
l1707: rscs R11, R12, R12, ASR R5
l1708: andHI R8, R12, R4, RRX 
l1709: sub R0, R6, R11, ASR #16
l1710: bVC l1718
l1711: add R1, R0, #105
l1712: cmnNE R1, R12, ASR #13
l1713: rscVCs R11, R0, R0, ASR #16
l1714: rscNE R5, R2, R8, ASR #24
l1715: subNEs R9, R8, R0, LSR #19
l1716: movs R8, R4, LSR #30
l1717: b l1719
l1718: b l1712
l1719: orrHIs R7, R10, R12, LSR R6
l1720: rscVS R8, R1, R1
l1721: b l1723
l1722: cmn R7, R0
l1723: andCCs R5, R4, R15, RRX 
l1724: cmp R15, R4
l1725: clzPL R8, R11
l1726: cmn R10, R10, ROR #6
l1727: rsc R1, R1, R15, LSL #2
l1728: rsc R3, R9, R14, RRX 
l1729: addGE R1, R12, R7, ASR R8
l1730: ands R14, R9, R0, ROR R11
l1731: andVC R11, R10, R10
l1732: clz R11, R6
l1733: orrHI R10, R1, #255
l1734: rsc R2, R6, R5
l1735: subPLs R7, R3, R2, LSL #1
l1736: clzVC R6, R12
l1737: eorNEs R7, R7, R15, LSR #26
l1738: orrLSs R0, R6, R10, ASR #25
l1739: bHI l1748
l1740: add R1, R0, #190
l1741: bic R1, R1, R12, LSL R6
l1742: mov R14, R12, LSL #22
l1743: adcVCs R7, R6, R4, ASR R10
l1744: rsc R4, R3, #254803968
l1745: cmpGT R12, R10, LSL #23
l1746: tst R1, R10, ASR #0
l1747: b l1749
l1748: b l1741
l1749: bPL l1756
l1750: add R1, R0, #151
l1751: adcLEs R3, R15, R7, ROR #31
l1752: rsb R1, R11, R7
l1753: sbcs R7, R9, R2, RRX 
l1754: eors R3, R15, R15, RRX 
l1755: b l1757
l1756: b l1751
l1757: subGTs R14, R1, R7, LSR #22
l1758: sbcs R7, R14, R7
l1759: ands R10, R9, R2
l1760: bCS l1766
l1761: add R1, R0, #176
l1762: clz R11, R11
l1763: teq R4, R5, ASR R4
l1764: clzLE R1, R10
l1765: b l1767
l1766: b l1762
l1767: clzGT R14, R12
l1768: bLE l1777
l1769: add R1, R0, #203
l1770: rscs R11, R2, #658505728
l1771: rsbLS R12, R4, #13824
l1772: add R2, R11, R0
l1773: mov R11, R1, LSR R14
l1774: clz R10, R3
l1775: addLSs R6, R3, #39424
l1776: b l1778
l1777: b l1770
l1778: eor R7, R15, R14, LSR #2
l1779: eorCC R5, R1, R2
l1780: andGEs R7, R1, #1409286144
l1781: adc R11, R10, R0, RRX 
l1782: andLT R10, R8, R14
l1783: clzVS R4, R12
l1784: eor R5, R2, R4, ROR #6
l1785: b l1791
l1786: teqVS R5, R11, LSL R5
l1787: mvns R11, R9, ASR #20
l1788: subs R5, R11, #2965504
l1789: clzEQ R5, R5
l1790: rsbs R7, R7, R1, ASR #8
l1791: rsbNE R3, R3, R4, LSR #3
l1792: bVC l1797
l1793: add R1, R0, #32
l1794: cmnLT R0, R14, LSR #11
l1795: andEQs R14, R5, #780
l1796: b l1798
l1797: b l1794
l1798: eorMIs R9, R4, R14, LSL R7
l1799: rscs R1, R15, #123
l1800: ldmLTIA R13, {R7}
l1801: bicLSs R6, R2, R11, ASR R4
l1802: teqNE R3, R5, LSR R10
l1803: subVC R3, R7, #839680
l1804: subs R11, R3, R6, ASR R2
l1805: rsbs R5, R12, R9, ROR #11
l1806: subNEs R5, R0, R10, ASR #19
l1807: b l1813
l1808: add R1, R0, #120
l1809: rscGT R6, R4, R3, LSL R6
l1810: adc R5, R4, R7, LSL #2
l1811: bicCCs R7, R9, R12
l1812: b l1814
l1813: b l1809
l1814: str R11, [sp, #-32]!
l1815: rscNE R5, R9, #1073741830
l1816: cmpCS R12, #640
l1817: ldmIB R13!, {R1, R4, R6, R7, R10, R14}
l1818: andCC R9, R14, #14848
l1819: strB R6, [sp, #+4]
l1820: adcLT R2, R9, R14, LSR #27
l1821: tstVS R14, R5, ROR #3
l1822: ands R0, R14, R1
l1823: rscLTs R8, R14, R3, LSL R4
l1824: sub R9, R11, R3, LSR R10
l1825: sub R5, R3, R14
l1826: mov R7, #40
l1827: ldr R0, [sp, -R7]!
l1828: cmnVC R1, R5
l1829: mov R10, #8
l1830: strHIB R5, [sp, -R10]
l1831: movGE R8, R8
l1832: clzCS R8, R5
l1833: bics R1, R10, R5, ROR #14
l1834: tstMI R7, R15
l1835: bLS l1842
l1836: add R1, R0, #111
l1837: subLT R6, R11, R8, ASR R9
l1838: eors R11, R10, R6, RRX 
l1839: ands R12, R14, R7, RRX 
l1840: sbcHI R4, R15, R7, ASR #11
l1841: b l1843
l1842: b l1837
l1843: ands R12, R0, R10, LSL #16
l1844: movVS R5, #3904
l1845: bGE l1851
l1846: add R1, R0, #90
l1847: adcEQs R6, R4, R4, ASR #16
l1848: teq R2, R2, LSR #25
l1849: rscs R9, R10, R2
l1850: b l1852
l1851: b l1847
l1852: bics R1, R7, R1
l1853: sbcLT R14, R9, #138
l1854: rsbMIs R7, R4, R0, RRX 
l1855: stmIB R13, {R5, R7, R8, R9, R12, R14}
l1856: adcCC R0, R14, R8, RRX 
l1857: mov R6, #15040
l1858: cmnLE R5, R11, ROR #31
l1859: eors R8, R9, R2, LSL #29
l1860: orr R1, R9, R5
l1861: subNE R10, R0, R11, LSL #24
l1862: orrs R6, R8, R4, LSL R14
l1863: stmDA R13!, {R13}
l1864: movMIs R7, R1
l1865: orrs R7, R9, R2, RRX 
l1866: subNE R4, R10, #-1342177275
l1867: cmp R10, R7, LSL #8
l1868: adds R2, R10, R15
l1869: sbcPLs R2, R10, R9
l1870: subs R4, R10, #62914560
l1871: strLT R7, [sp, #+56]
l1872: rscLT R4, R0, #43008
l1873: clzVS R12, R8
l1874: b l1880
l1875: rscHIs R12, R2, R5
l1876: rscs R4, R7, #19
l1877: movNE R2, R11, ASR R7
l1878: teqLS R5, #2392064
l1879: sbcs R8, R0, R11, ROR #9
l1880: mvns R2, R2, LSR #12
l1881: nop
l1882: andVCs R8, R9, R10, ASR #4
l1883: teqGE R6, #1946157059
l1884: ldmIB R13!, {R4, R5, R8, R9, R10, R12}
l1885: rsbs R11, R14, R5, LSL R9
l1886: mvnHI R1, #27
l1887: orrs R5, R9, R6, ASR R11
l1888: cmnCC R10, R8, ROR #12
l1889: clzLS R2, R8
l1890: ldmIB R13, {R0, R2, R3, R5}
l1891: subPL R11, R2, R7, LSR R14
l1892: strCCB R9, [sp, #-10]
l1893: ldr R14, [sp], #-36
l1894: bCC l1903
l1895: add R1, R0, #79
l1896: eorLT R1, R3, R10, LSR R14
l1897: bicCS R3, R6, R15
l1898: adds R3, R9, R6, LSL #26
l1899: adcs R11, R3, R8, RRX 
l1900: rscCSs R2, R1, R15
l1901: rsb R4, R7, #40108032
l1902: b l1904
l1903: b l1896
l1904: movPL R12, R5, LSL #29
l1905: andMIs R3, R10, R14, ASR R10
l1906: b l1912
l1907: clz R3, R4
l1908: orr R2, R8, R9, RRX 
l1909: rscVC R8, R9, R10, RRX 
l1910: sbcs R1, R12, R10, LSL #6
l1911: rscPL R7, R12, R0, LSR R5
l1912: adds R11, R3, R2
l1913: bVS l1916
l1914: cmnNE R12, #19660800
l1915: rsbVC R3, R12, R15, ROR #27
l1916: mov R1, R0, ASR #22
l1917: clzNE R6, R14
l1918: bVC l1924
l1919: tstCS R9, R7, LSL R5
l1920: orrPL R1, R3, R2
l1921: add R10, R6, R9, RRX 
l1922: adcCS R6, R9, #1044480
l1923: rscs R14, R5, R9
l1924: eorVSs R4, R5, #270336
l1925: andCCs R5, R14, R10
l1926: rsbCS R3, R4, R12, ROR #18
l1927: orrs R11, R12, R4
l1928: mvnLE R12, #9920
l1929: bics R6, R1, R3, ASR R11
l1930: orrs R6, R14, R7, LSR #12
l1931: bics R1, R11, #64
l1932: orr R9, R6, R11, ROR #9
l1933: cmp R1, R6, ASR R0
l1934: andGTs R9, R3, #-2147483604
l1935: mvnMIs R1, R3
l1936: eorPL R0, R10, R15
l1937: ldmIA R13!, {R0, R1, R2, R4, R5, R9, R11, R14}
l1938: bHI l1948
l1939: ands R9, R14, R12
l1940: rsbs R8, R11, R10, LSL R6
l1941: rscs R9, R1, #1879048203
l1942: rscs R5, R15, R6
l1943: subVCs R8, R11, R1, ASR #13
l1944: cmpLS R10, R7, LSL R2
l1945: adds R6, R0, R11, LSR #28
l1946: andEQs R3, R2, R15, LSR #17
l1947: and R8, R14, R6
l1948: eorHIs R2, R6, R2
l1949: orrLSs R5, R12, #400
l1950: nop
l1951: add R11, R8, R7
l1952: sbcVS R5, R15, R3
l1953: teqNE R10, #57344
l1954: orrVS R5, R10, R15
l1955: orrCC R14, R4, R7, LSL #2
l1956: ands R11, R5, R2, ROR #10
l1957: addMI R5, R0, R1, LSR #9
l1958: cmnEQ R5, R2, LSR R6
l1959: teqHI R1, R0
l1960: and R3, R14, R0, ROR #14
l1961: movEQs R2, #14
l1962: stmIA R13!, {R13}
l1963: movLE R3, R5, RRX 
l1964: tst R7, R3, RRX 
l1965: str R1, [sp, #-8]!
l1966: subLS R2, R11, #55050240
l1967: sbcs R10, R11, R8, RRX 
l1968: tstHI R14, R10, ROR #6
l1969: mvnMI R11, R11, LSR R8
l1970: orrVS R0, R7, R5, LSR #2
l1971: orr R6, R1, R5, ASR #17
l1972: ldmLTIB R13, {R1, R2, R3, R4, R5, R6, R7, R9, R12, R14}
l1973: b l1980
l1974: subLSs R10, R7, #840
l1975: cmn R9, R12, LSL R11
l1976: cmn R6, R10, LSR R11
l1977: cmnLT R12, R2, LSL R9
l1978: cmnNE R2, R0
l1979: add R0, R5, #121634816
l1980: teqLS R4, R3, ASR R6
l1981: teq R5, R2, ASR R12
l1982: movVSs R2, #133120
l1983: andHIs R8, R10, R11
l1984: mvns R9, R1
l1985: cmpLS R8, #229376
l1986: cmp R6, R2
l1987: ldmIB R13!, {R0, R2, R3, R4, R6, R7, R12}
l1988: teq R3, R12
l1989: b l1995
l1990: add R1, R0, #8
l1991: mvns R7, #-1073741821
l1992: cmnNE R6, R9, LSL #13
l1993: rsbs R12, R9, R0
l1994: b l1996
l1995: b l1991
l1996: eorGTs R8, R15, R5, RRX 
l1997: bLS l2004
l1998: add R1, R0, #179
l1999: cmn R11, R14, ASR R6
l2000: subLS R1, R11, R0, ROR #18
l2001: teq R15, R10
l2002: movGEs R6, R10, RRX 
l2003: b l2005
l2004: b l1999
l2005: clz R2, R9
l2006: orrLS R6, R3, #6400
l2007: clzLS R3, R4
l2008: clzLE R4, R9
l2009: sbcs R1, R11, R5
l2010: sub R3, R1, #2064
l2011: cmn R14, R3
l2012: ldmIB R13, {R11, R14}
l2013: rscGEs R2, R9, R10, ASR R0
l2014: sbcs R11, R12, R0, ASR R9
l2015: addMIs R0, R4, #155189248
l2016: subVCs R4, R0, #606208
l2017: bPL l2020
l2018: mvnCCs R9, R14, RRX 
l2019: mvns R5, R7
l2020: adc R14, R2, #176128
l2021: clzMI R9, R0
l2022: ldmIA R13!, {R2}
l2023: adcLTs R8, R1, R8, ROR R11
l2024: stmIA R13!, {R13}
l2025: adc R1, R3, R10, LSL #11
l2026: rsbs R3, R15, R3
l2027: tstPL R7, #1073741842
l2028: movCC R12, #185344
l2029: cmnLT R8, #1
l2030: movs R4, R6, LSL #11
l2031: cmnCS R12, R15, LSL #4
l2032: clzLT R6, R2
l2033: rscVCs R14, R8, R1
l2034: bPL l2041
l2035: add R1, R0, #52
l2036: mvns R5, R10
l2037: eorCC R6, R8, #16
l2038: movVS R3, R0, LSL #29
l2039: subVSs R8, R3, R11
l2040: b l2042
l2041: b l2036
l2042: rscLS R14, R9, R15
l2043: cmpPL R4, #512000
l2044: sbcEQ R5, R15, #128
l2045: rsb R1, R14, R11, ASR #9
l2046: nop
l2047: andHIs R9, R14, #11927552
l2048: mov R10, #68
l2049: ldrGTB R5, [sp, -R10]
l2050: subHIs R4, R3, R2
l2051: rsb R4, R4, R3
l2052: bic R4, R11, R11, LSL #19
l2053: strB R12, [sp, #+1]
l2054: sbcMIs R9, R1, R6
l2055: adcs R6, R11, R4
l2056: teq R10, R12, LSL #0
l2057: ldmIB R13!, {R11}
l2058: bGE l2065
l2059: eorLE R0, R1, R1, ASR #6
l2060: movLEs R1, R10, RRX 
l2061: orr R0, R9, R5, LSL R4
l2062: mvnGEs R2, R10
l2063: rsbLTs R10, R15, R0, RRX 
l2064: tst R4, R10, ASR R2
l2065: clz R5, R12
l2066: clzLT R7, R10
l2067: subGEs R10, R6, R5, LSR R5
l2068: orrGE R9, R11, R4, LSL R10
l2069: andLE R3, R12, R6
l2070: bicLTs R7, R9, R0
l2071: sbc R10, R12, #268435465
l2072: clz R7, R14
l2073: eors R10, R6, R4
l2074: eorHIs R5, R14, R7, ASR #10
l2075: sbcCCs R6, R9, R3
l2076: movPL R14, R6, LSL #6
l2077: rscs R9, R4, R7
l2078: sbcVSs R11, R2, R11
l2079: cmn R10, R6, ASR R6
l2080: bicNE R8, R11, R10, RRX 
l2081: tstMI R6, R11
l2082: add R5, R8, R12
l2083: teqMI R12, R7
l2084: bic R9, R6, R2
l2085: teqPL R0, #10944512
l2086: tst R10, R9, ROR #4
l2087: eorMI R4, R11, R1, RRX 
l2088: mov R11, R6, LSL R1
l2089: subCCs R8, R0, R11, LSL R11
l2090: subLTs R4, R7, R4
l2091: ands R2, R3, R5, LSL R2
l2092: rscPL R10, R0, R7, LSL R0
l2093: mvnPLs R9, #922746880
l2094: strB R5, [sp, #+1]
l2095: eors R3, R6, #247463936
l2096: teqCC R10, R9
l2097: tst R6, R5, RRX 
l2098: movVS R6, R7, LSL #21
l2099: b l2106
l2100: add R1, R0, #68
l2101: andEQs R12, R7, R12, RRX 
l2102: mvn R14, R15
l2103: sbcMI R7, R2, R4, ASR R7
l2104: subs R1, R2, R4, ROR #18
l2105: b l2107
l2106: b l2101
l2107: eorVCs R10, R0, R2
l2108: adcGE R10, R5, R1, LSR #7
l2109: cmpGT R1, R10
l2110: adcVS R10, R0, R6
l2111: ands R7, R0, R4, LSR R11
l2112: adcs R2, R14, R3, ROR R2
l2113: tst R15, R2, LSL #8
l2114: movs R9, R0
l2115: mov R11, #52
l2116: ldrPLB R12, [sp, -R11]
l2117: movEQ R10, R5
l2118: orrLE R9, R14, R1, LSR R12
l2119: eors R12, R3, #1073741844
l2120: sub R14, R6, #37
l2121: rsbs R9, R0, R0, LSL R14
l2122: eorLSs R14, R5, R10
l2123: sbcCSs R4, R2, R10, LSR R2
l2124: movVSs R6, R8, ROR R10
l2125: adc R4, R15, R9, LSL #22
l2126: mov R3, #13568
l2127: rsbGEs R12, R1, #-2147483616
l2128: rscLTs R14, R7, #940
l2129: nop
l2130: subVCs R14, R12, R8, LSR #24
l2131: b l2135
l2132: add R1, R0, #191
l2133: clz R7, R8
l2134: b l2136
l2135: b l2133
l2136: bHI l2145
l2137: add R1, R0, #249
l2138: subs R1, R0, R4, RRX 
l2139: clz R10, R4
l2140: add R14, R11, #140
l2141: rscLE R1, R7, R4, LSL R10
l2142: subs R3, R5, R4, ASR R1
l2143: sbcGE R3, R5, #557056
l2144: b l2146
l2145: b l2138
l2146: sub R5, R7, #1610612750
l2147: mvnEQ R14, R0, LSR #17
l2148: tstLE R14, R8, LSR R11
l2149: clz R0, R14
l2150: adcs R7, R14, #5636096
l2151: clz R14, R5
l2152: clzHI R2, R10
l2153: stmDA R13!, {R13}
l2154: mvnGTs R0, R2
l2155: rscEQs R5, R3, R2
l2156: cmnVC R4, R1, RRX 
l2157: cmnMI R0, R1, LSL R8
l2158: teqGE R11, R14
l2159: addLS R0, R2, R10, LSL R9
l2160: bHI l2167
l2161: add R1, R0, #43
l2162: mvnMIs R1, R12
l2163: cmpNE R12, R14
l2164: mov R6, #225280
l2165: movCS R11, #6815744
l2166: b l2168
l2167: b l2162
l2168: mvn R8, R0
l2169: movGE R3, R1, ROR R6
l2170: subs R14, R5, R1
l2171: ldmVCDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l2172: mov R9, #44
l2173: ldr R6, [sp], -R9
l2174: subLSs R1, R3, #641728512
l2175: orrs R3, R9, R14, ASR #13
l2176: bicVS R11, R11, #-603979773
l2177: cmnLE R1, R8, LSL R6
l2178: nop
l2179: rscEQ R8, R1, R9, ROR R6
l2180: mvn R9, R2, RRX 
l2181: teqCC R10, R8
l2182: ldmIA R13, {R1, R5, R8, R11, R12}
l2183: rsc R7, R0, R6
l2184: andPL R6, R8, R12
l2185: rsbMIs R9, R9, R7, ASR #25
l2186: rsc R11, R0, #49152
l2187: tstLE R0, #102760448
l2188: bicEQ R3, R2, #163840
l2189: orrEQs R4, R4, R9, ASR R6
l2190: tstNE R7, R10, ROR R2
l2191: bGE l2199
l2192: addLSs R7, R2, #868220928
l2193: tstGE R7, R2
l2194: addPLs R4, R12, R8, LSL R9
l2195: subs R6, R7, R7, LSR #7
l2196: bicLT R2, R2, R0, ROR #20
l2197: rsb R10, R3, R9, RRX 
l2198: adcVC R3, R6, R12, LSR #2
l2199: adds R12, R6, R5, LSL R4
l2200: orrCCs R5, R3, R11, RRX 
l2201: bLE l2207
l2202: clz R0, R1
l2203: teqLT R7, R1, RRX 
l2204: cmpVC R14, R8, RRX 
l2205: cmp R6, #411041792
l2206: mvnCSs R3, #12320768
l2207: clzVS R3, R1
l2208: nop
l2209: teq R12, R15, LSL #11
l2210: teq R9, R0
l2211: ldmVSIB R13, {R1, R4, R7, R12, R14}
l2212: bLE l2219
l2213: tst R1, R4, RRX 
l2214: sbcLS R2, R1, #897024
l2215: tst R14, R0, ASR R9
l2216: sbcs R1, R6, #56
l2217: orrVCs R1, R0, #171966464
l2218: sbc R0, R10, R2
l2219: orrLTs R9, R8, R15, ROR #30
l2220: cmn R8, R8, ROR #9
l2221: sub R6, R10, R15, RRX 
l2222: mvn R11, R14, ROR #20
l2223: rsbPL R5, R5, #60672
l2224: ldmLEIA R13, {R2, R5, R7, R8, R10, R11, R12, R14}
l2225: rscs R14, R9, R6, LSR #24
l2226: rsc R4, R10, R9, ASR #24
l2227: eorLS R11, R0, R4, ROR R11
l2228: mov R11, #24
l2229: strLE R11, [sp, -R11]
l2230: subCS R6, R3, R10
l2231: mov R11, #20
l2232: str R15, [sp, -R11]!
l2233: rsc R11, R0, R3, LSL R5
l2234: rscVC R0, R0, #-1073741789
l2235: clzLE R5, R3
l2236: cmpGE R3, R6
l2237: orrHI R11, R14, R10, ASR #26
l2238: mvn R11, R3, ROR R10
l2239: clzCS R10, R1
l2240: addEQ R5, R9, R2, RRX 
l2241: subPL R5, R15, R0, RRX 
l2242: subHI R6, R6, R14, LSR R8
l2243: stmIB R13!, {R13, R14, R15}
l2244: teqGE R6, #48234496
l2245: rsbVS R10, R5, #114688
l2246: bLS l2253
l2247: add R1, R0, #14
l2248: mvnVC R6, R3
l2249: movVCs R4, R11, LSL R6
l2250: clz R12, R12
l2251: addMIs R2, R11, #588
l2252: b l2254
l2253: b l2248
l2254: adcs R14, R1, R0
l2255: orrVSs R10, R7, R3, ASR R8
l2256: bicGT R10, R3, R5, ASR R14
l2257: subs R2, R8, #2160
l2258: stmIB R13, {R0, R2, R3, R5, R7, R8, R9, R10, R12, R14}
l2259: cmpCS R7, #61603840
l2260: mvns R2, R6, LSR R9
l2261: eorHI R0, R15, R14, ROR #14
l2262: clz R6, R1
l2263: and R8, R2, R11
l2264: subs R8, R15, R10
l2265: orrVC R9, R10, #-1073741796
l2266: bics R3, R12, R3, LSL R9
l2267: rsbCSs R7, R11, R6
l2268: adds R14, R14, #32512
l2269: orrGE R10, R6, R14, ASR #8
l2270: clzVS R14, R1
l2271: add R9, R11, R8
l2272: teqPL R14, R1, RRX 
l2273: b l2279
l2274: add R1, R0, #75
l2275: cmnVS R4, R14, ASR #12
l2276: bics R5, R0, R4
l2277: sbcs R7, R1, R7
l2278: b l2280
l2279: b l2275
l2280: cmpHI R9, R12, ROR #15
l2281: adc R14, R12, R8, RRX 
l2282: ldmLEDB R13, {R11}
l2283: teqLE R1, R1, ASR R11
l2284: ldmDB R13, {R9}
l2285: clzVC R12, R0
l2286: rsbCCs R8, R6, R2
l2287: bLT l2291
l2288: add R1, R0, #20
l2289: eors R14, R4, R0, ASR R7
l2290: b l2292
l2291: b l2289
l2292: b l2294
l2293: teqGE R1, #-738197504
l2294: tstVC R4, R8
l2295: andEQ R5, R5, R14, ROR #17
l2296: rsbMI R10, R3, R7, ASR R5
l2297: cmpEQ R11, #4325376
l2298: clzLE R4, R9
l2299: subCS R9, R1, R14
l2300: rsc R10, R6, R12
l2301: mvnLSs R14, #43253760
l2302: sbcCC R14, R10, R8, LSL #26
l2303: bGE l2309
l2304: add R1, R0, #211
l2305: bicMIs R5, R6, #3964928
l2306: adcGE R11, R8, R9, LSL #27
l2307: tst R0, R14, RRX 
l2308: b l2310
l2309: b l2305
l2310: teq R14, R12
l2311: eors R14, R8, R0, LSL #0
l2312: cmp R4, R6, RRX 
l2313: subMIs R5, R7, R4, ROR #31
l2314: and R9, R11, R1, ASR R14
l2315: mvnGEs R8, R2
l2316: orrGEs R8, R11, R9, ROR #17
l2317: bLT l2321
l2318: add R1, R0, #213
l2319: teq R6, R3, ROR R2
l2320: b l2322
l2321: b l2319
l2322: bLS l2324
l2323: subs R0, R10, #1736704
l2324: adcHI R5, R10, R5, RRX 
l2325: orr R9, R3, R1, RRX 
l2326: cmpHI R2, R0
l2327: cmpNE R11, R14, LSL #6
l2328: eorPLs R11, R10, #-134217728
l2329: bGT l2336
l2330: add R1, R0, #203
l2331: mov R1, #7012352
l2332: adcs R5, R7, R0, ROR R3
l2333: subVS R0, R0, #100663296
l2334: movPL R2, #4096000
l2335: b l2337
l2336: b l2331
l2337: subLE R12, R1, R10, ASR #7
l2338: rsbs R3, R6, R1, LSL #15
l2339: bicLT R11, R11, R5
l2340: eors R0, R5, R5, LSL R4
l2341: subs R2, R7, R8
l2342: mov R2, #8
l2343: str R3, [sp, -R2]
l2344: andMIs R1, R8, R6, LSL R4
l2345: cmp R12, R6
l2346: adcGTs R10, R14, R15
l2347: tstCS R8, #1409024
l2348: stmVSIB R13, {R0, R1, R2, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14, R15}
l2349: ldmDB R13!, {R3, R5}
l2350: tst R2, R0
l2351: clzCC R7, R3
l2352: bic R12, R8, R4, RRX 
l2353: bicCS R0, R4, R3, LSR R8
l2354: rsc R8, R8, R9, LSL R0
l2355: sub R3, R3, R14
l2356: clz R8, R10
l2357: cmpHI R10, R15
l2358: addCCs R4, R10, #6720
l2359: b l2368
l2360: add R1, R0, #127
l2361: orrs R6, R1, #-268435452
l2362: sbcNE R4, R5, R1, ROR R0
l2363: movs R5, #206
l2364: mvnCCs R0, R10, LSR #4
l2365: adcMIs R8, R12, R1, RRX 
l2366: movHI R2, R6, LSR R14
l2367: b l2369
l2368: b l2361
l2369: orrEQ R1, R3, R8, LSR #5
l2370: movMIs R5, #262144
l2371: and R14, R11, R7, ASR R3
l2372: adcs R8, R12, R15, ROR #2
l2373: clzCS R9, R9
l2374: tstGT R8, R10
l2375: mvnCSs R3, R12
l2376: cmpPL R10, #568
l2377: cmnGT R11, #181
l2378: stmCCIA R13, {R1, R7, R8, R9}
l2379: rsbNEs R14, R10, R8, RRX 
l2380: clz R5, R12
l2381: teq R3, R8, ROR R1
l2382: sbcLE R11, R7, R5, RRX 
l2383: subEQs R10, R2, R9, ASR R9
l2384: cmpHI R0, R9
l2385: eors R6, R6, #2464
l2386: rscs R14, R8, R9, RRX 
l2387: eorMIs R10, R15, R14, ASR #1
l2388: b l2391
l2389: mvns R12, R0, LSL R11
l2390: adc R4, R3, R5
l2391: bicLSs R4, R1, R6
l2392: teq R5, R7
l2393: cmn R9, #241
l2394: andLEs R6, R4, R9, ASR #15
l2395: movGEs R8, R5
l2396: orrs R12, R8, R5, LSL #13
l2397: addLTs R5, R15, R8, ROR #18
l2398: clzEQ R2, R8
l2399: tst R15, R1, ROR #21
l2400: bGT l2404
l2401: add R1, R0, #32
l2402: sbcVC R5, R8, R8
l2403: b l2405
l2404: b l2402
l2405: adcs R2, R4, R8
l2406: eorCS R1, R7, #-117440512
l2407: tst R11, R10, LSR #31
l2408: sub R14, R3, R8, LSR #16
l2409: mvns R11, R10
l2410: nop
l2411: adds R11, R4, R2, LSR R5
l2412: and R7, R2, R11, ASR #24
l2413: eorLSs R2, R11, R15
l2414: orrMIs R14, R2, R6, LSR #0
l2415: ldrVCB R12, [sp, #+28]
l2416: subs R6, R12, R1, RRX 
l2417: mov R4, #36
l2418: strCS R14, [sp, +R4]
l2419: b l2426
l2420: add R1, R0, #7
l2421: sbcs R3, R10, R12
l2422: clzLS R2, R0
l2423: clz R5, R10
l2424: mvn R5, R4, ROR R3
l2425: b l2427
l2426: b l2421
l2427: orrs R7, R12, R7, ROR R10
l2428: mov R10, #56
l2429: strLE R7, [sp, +R10]
l2430: b l2437
l2431: add R1, R0, #36
l2432: subs R9, R1, R6
l2433: cmp R3, R4, RRX 
l2434: cmp R8, R8, LSR #14
l2435: and R9, R6, R0, LSL R4
l2436: b l2438
l2437: b l2432
l2438: b l2441
l2439: sbcLEs R14, R7, #-671088637
l2440: cmpPL R3, R12
l2441: movCCs R10, #838860800
l2442: and R6, R8, R0, ROR R8
l2443: andLS R4, R0, R0, LSR R8
l2444: cmnVC R10, R9, LSR R6
l2445: teqPL R4, R4
l2446: addLSs R14, R1, R6, RRX 
l2447: orr R11, R14, #-2147483648
l2448: tst R3, R0, LSR R12
l2449: andPL R10, R1, R14, LSR R0
l2450: mvns R9, R5, RRX 
l2451: tstCS R14, #7864320
l2452: andGE R1, R3, R3, LSL R0
l2453: strB R12, [sp, #+50]
l2454: bGT l2459
l2455: add R1, R0, #18
l2456: subHIs R0, R5, R3, RRX 
l2457: rsb R5, R15, R14
l2458: b l2460
l2459: b l2456
l2460: clzNE R11, R9
l2461: sbcs R8, R10, R5, LSL R9
l2462: orrPLs R8, R4, R3, ROR R0
l2463: movGT R8, R14, ROR #16
l2464: cmn R8, R2, LSR R9
l2465: orrs R9, R11, R12, ROR #23
l2466: bLT l2472
l2467: adds R8, R8, R2
l2468: andCC R8, R11, R4, RRX 
l2469: rsbHI R11, R5, R2, LSL R9
l2470: bic R10, R2, R10
l2471: subVS R7, R11, R3, ASR R5
l2472: subNE R7, R7, #933888
l2473: subs R12, R7, R3, LSL #7
l2474: cmnLE R0, R4, RRX 
l2475: bicNE R8, R3, R4
l2476: orrCS R4, R4, R3
l2477: mov R6, #20
l2478: str R10, [sp], +R6
l2479: teq R4, R3
l2480: teq R9, #116736
l2481: eorHIs R2, R2, R0, ROR R2
l2482: ldrB R9, [sp, #+39]
l2483: rsbNEs R2, R4, R8
l2484: bic R2, R7, R12, LSR #28
l2485: andGEs R0, R14, #1097728
l2486: sbcPLs R12, R11, R4
l2487: sub R5, R9, R2, LSL #6
l2488: and R14, R3, R0, LSL #31
l2489: strB R6, [sp, #+10]
l2490: adds R0, R0, R1, ROR R0
l2491: b l2501
l2492: subCS R12, R9, R14
l2493: sbc R4, R8, R1
l2494: clzCS R1, R0
l2495: rscs R8, R14, #34078720
l2496: rscVSs R1, R0, R14
l2497: rsbVCs R9, R14, R0, RRX 
l2498: cmpCC R5, R0, RRX 
l2499: clzEQ R2, R5
l2500: subVS R12, R4, R9
l2501: orrVSs R14, R9, R10
l2502: str R14, [sp], #-20
l2503: clzVS R5, R2
l2504: ldmIB R13!, {R0, R2, R3, R5, R7, R8, R9, R11}
l2505: bVC l2511
l2506: movCC R14, R9
l2507: mvnEQs R0, R8
l2508: movVS R1, R11, ASR #19
l2509: tstGT R1, R4, LSR #28
l2510: cmpEQ R9, R12, RRX 
l2511: orrCCs R7, R11, #13440
l2512: rsbs R4, R11, #339968
l2513: eors R7, R6, R3
l2514: mvnLS R4, R3
l2515: mov R2, #4
l2516: ldr R6, [sp, +R2]!
l2517: subVSs R3, R6, R7, RRX 
l2518: rscs R14, R2, R4, ROR #28
l2519: subs R1, R7, R11
l2520: tstHI R11, R4, ASR R9
l2521: tstNE R9, #524288
l2522: add R0, R14, R7, LSR R14
l2523: rsb R7, R8, R4, LSL R2
l2524: addHI R8, R0, R7, ROR R2
l2525: mov R6, #22
l2526: ldrB R9, [sp, -R6]
l2527: mov R10, #24
l2528: ldr R14, [sp, -R10]!
l2529: mvn R9, R14, ASR #17
l2530: addMIs R12, R15, #268435461
l2531: eorGT R4, R8, R15, ASR #19
l2532: eorVS R1, R2, R14, LSR R0
l2533: cmn R12, R5, RRX 
l2534: bicLS R4, R15, R2
l2535: rsb R0, R14, R12, LSL R3
l2536: cmn R4, #716800
l2537: subs R3, R2, R0
l2538: bEQ l2547
l2539: add R1, R0, #222
l2540: tstCS R11, #384
l2541: sub R12, R3, R5, RRX 
l2542: adcEQs R11, R15, R2
l2543: cmpLS R9, R4, ROR #11
l2544: andMI R2, R6, R0, ROR R6
l2545: add R5, R7, #832
l2546: b l2548
l2547: b l2540
l2548: adc R0, R3, R11, LSR R1
l2549: addCSs R2, R3, #34603008
l2550: str R5, [sp], #+12
l2551: b l2555
l2552: mov R4, R5, RRX 
l2553: addGEs R4, R6, R6, LSR #12
l2554: clzLT R10, R3
l2555: teqLS R1, R9, LSL #29
l2556: cmpCC R2, R11
l2557: rsc R2, R12, #973078528
l2558: subGEs R5, R5, R0
l2559: subVS R8, R10, R10, ROR #31
l2560: sbcLSs R2, R15, R12
l2561: movLT R9, #962560
l2562: orrs R11, R0, R7, ASR #16
l2563: subMI R4, R5, R14
l2564: ldmIA R13!, {R0, R4, R11}
l2565: adds R9, R3, #-352321536
l2566: b l2575
l2567: add R1, R0, #69
l2568: teqCC R2, R10, LSR #8
l2569: andPLs R11, R6, R7, LSL R2
l2570: tstGT R11, R6
l2571: movLEs R2, R3, RRX 
l2572: tstCS R6, #1392
l2573: adc R1, R2, R12, LSR R5
l2574: b l2576
l2575: b l2568
l2576: adcGT R8, R5, #184320
l2577: teqGT R4, R14, ROR R5
l2578: cmnMI R6, R5, ROR R0
l2579: stmIA R13, {R0, R12, R15}
l2580: bVC l2589
l2581: tstPL R7, R7, ROR #12
l2582: mvn R14, R15
l2583: rscCS R4, R2, R4, LSR R1
l2584: mov R12, R2
l2585: teq R9, #83886080
l2586: movMI R9, R7
l2587: sub R3, R8, R12, RRX 
l2588: mov R10, R8, LSL R11
l2589: cmpLE R0, R9
l2590: subLSs R6, R4, R10
l2591: bGE l2594
l2592: bicEQ R9, R8, #5767168
l2593: subs R12, R9, R11, ROR R3
l2594: bicLTs R2, R8, R9, RRX 
l2595: stmIB R13!, {R1, R5, R8, R9, R15}
l2596: mov R12, #6
l2597: strMIB R12, [sp, +R12]
l2598: mvnLEs R1, R9, ROR #26
l2599: ldrHIB R7, [sp, #-63]
l2600: movs R9, #0
l2601: b l2609
l2602: add R1, R0, #15
l2603: cmnGT R6, #96
l2604: bicHI R4, R6, R12, RRX 
l2605: rscLE R7, R4, #244
l2606: teqLS R3, R14, ASR #12
l2607: movCS R1, R15, LSR #17
l2608: b l2610
l2609: b l2603
l2610: eor R11, R1, #125829120
l2611: cmn R0, R0, ASR #7
l2612: b l2619
l2613: rsc R8, R11, R12
l2614: sbc R10, R10, R6
l2615: cmn R6, R14, LSL #22
l2616: teq R0, #3145728
l2617: tstLE R11, R14, LSR R7
l2618: tst R0, #-1073741789
l2619: cmp R5, R6, LSR #15
l2620: cmnNE R3, R3
l2621: sub R2, R6, #2496
l2622: andLEs R1, R9, R15, RRX 
l2623: ands R0, R6, #-1073741811
l2624: adcLTs R3, R14, #-2147483615
l2625: bLE l2634
l2626: subEQs R9, R3, R11
l2627: andCC R14, R2, #310378496
l2628: mvn R10, #1677721603
l2629: andCC R6, R14, #1409286147
l2630: bicGE R1, R5, R10, LSR R0
l2631: subPL R9, R3, R6
l2632: subEQ R5, R6, R6, ROR #21
l2633: mvns R12, R0
l2634: orrMIs R10, R0, R4, ASR #23
l2635: b l2642
l2636: add R1, R0, #254
l2637: rsc R9, R4, #2916352
l2638: sbcEQs R4, R15, #184320
l2639: rsbs R14, R10, R6, LSR #31
l2640: sub R12, R1, #4194304
l2641: b l2643
l2642: b l2637
l2643: teqPL R9, R2, LSR R5
l2644: ands R4, R14, R0
l2645: ldrGEB R6, [sp, #+8]
l2646: tst R4, R5, ASR #2
l2647: bVS l2650
l2648: movCS R5, R14, ASR #9
l2649: bicGEs R11, R6, R9
l2650: adcs R4, R8, #135168
l2651: ands R9, R3, R8, RRX 
l2652: sub R10, R0, R1, ASR R5
l2653: bNE l2660
l2654: add R1, R0, #76
l2655: tst R12, R9, ROR R10
l2656: eorMI R9, R5, R12, LSL R8
l2657: movs R7, R6, RRX 
l2658: rscCCs R12, R2, #48896
l2659: b l2661
l2660: b l2655
l2661: clz R14, R11
l2662: rscs R11, R12, #24320
l2663: subMIs R12, R3, R6, ROR #25
l2664: rsbGEs R2, R2, #-1275068414
l2665: adds R10, R0, R1, ASR R12
l2666: subEQs R3, R1, R0
l2667: cmp R8, R6
l2668: mvns R14, #9437184
l2669: rscCCs R2, R7, #40894464
l2670: tstVC R4, #91
l2671: and R14, R9, R8, ROR R2
l2672: b l2679
l2673: add R1, R0, #164
l2674: cmnVC R14, R9
l2675: rscNEs R0, R3, R0, LSL #25
l2676: rsb R11, R1, R6
l2677: andVCs R10, R11, R4
l2678: b l2680
l2679: b l2674
l2680: bicGTs R6, R10, R10, ROR R1
l2681: rsb R5, R9, R1, RRX 
l2682: b l2683
l2683: subs R8, R4, R14, LSR R6
l2684: tst R14, R8, RRX 
l2685: mvnCC R14, R8
l2686: rsb R5, R15, R12, LSR #19
l2687: sub R5, R0, #507510784
l2688: movs R0, R8, ASR #29
l2689: andGT R8, R4, R5, ROR #4
l2690: strVS R4, [sp, #+4]
l2691: eor R0, R2, #1879048203
l2692: eorMIs R7, R0, R2, LSR #10
l2693: andPLs R3, R14, R0, LSL #19
l2694: mvnMIs R4, #-2147483609
l2695: andVC R10, R2, R5, RRX 
l2696: sbcs R7, R5, R9, LSL #18
l2697: add R3, R14, R1
l2698: sbcLEs R10, R0, R12
l2699: mov R5, #4
l2700: strCSB R10, [sp, -R5]
l2701: cmnNE R4, R9
l2702: eor R3, R1, R2
l2703: cmn R7, R8
l2704: rscLS R10, R6, R1, ROR #8
l2705: sub R14, R7, R11
l2706: mov R6, #0
l2707: ldrVS R3, [sp, +R6]
l2708: orr R11, R2, R1
l2709: orr R6, R0, R12, RRX 
l2710: ands R7, R3, #155189248
l2711: b l2716
l2712: add R1, R0, #68
l2713: subLS R5, R14, R11, LSL R7
l2714: andCC R10, R6, R12, ROR #8
l2715: b l2717
l2716: b l2713
l2717: eorVS R5, R2, #-1677721600
l2718: eorEQ R3, R4, #8060928
l2719: clz R2, R6
l2720: cmpGT R5, R15
l2721: eorVSs R6, R8, R2
l2722: bCS l2725
l2723: cmpGE R9, R12
l2724: rscCCs R2, R12, R2
l2725: sbcs R5, R14, R15, ASR #14
l2726: bCS l2736
l2727: rsbLSs R4, R7, #805306371
l2728: tstCS R6, #-1073741817
l2729: adc R7, R0, R12, RRX 
l2730: adds R14, R2, R4
l2731: andMI R8, R4, R5
l2732: sbcPLs R9, R12, R10, LSR #12
l2733: teq R14, R8, LSR R9
l2734: sub R9, R3, R11
l2735: subCC R1, R5, R10, LSR #25
l2736: andGTs R4, R8, R14
l2737: ldmIB R13!, {R1, R3}
l2738: andVCs R6, R8, R9, LSL #19
l2739: rsb R11, R14, #-2147483588
l2740: add R2, R3, R1, RRX 
l2741: bCC l2748
l2742: add R1, R0, #173
l2743: rsc R11, R7, R2, ROR R9
l2744: sub R10, R9, R5
l2745: subVC R1, R3, R12, RRX 
l2746: tstHI R9, R12
l2747: b l2749
l2748: b l2743
l2749: bEQ l2754
l2750: tstGT R15, #41216
l2751: addCS R10, R4, R5
l2752: tstEQ R4, R5
l2753: cmp R12, R2, LSL #0
l2754: cmpCC R12, #628
l2755: mov R7, #0
l2756: str R1, [sp], +R7
l2757: clzLE R1, R6
l2758: movGE R10, R9, LSR #25
l2759: teq R7, R12, LSL R11
l2760: adc R10, R7, #1879048200
l2761: nop
l2762: subVC R1, R4, R8
l2763: tstVS R8, R1
l2764: mov R5, #68
l2765: ldr R7, [sp, -R5]
l2766: bVS l2775
l2767: cmp R15, R5, LSR #17
l2768: rsbs R9, R12, #1140850688
l2769: bic R8, R10, R12, LSL R14
l2770: cmn R9, R7, ASR #18
l2771: eor R0, R8, R2, RRX 
l2772: orrLEs R6, R14, R9
l2773: eorCS R1, R5, R3, ASR #11
l2774: bicHIs R0, R15, R0, ROR #14
l2775: ands R7, R10, R1, LSL #20
l2776: bNE l2781
l2777: add R4, R1, #239075328
l2778: sbc R4, R8, R9, LSL #25
l2779: bics R1, R2, R2, LSR R3
l2780: cmpVS R10, R5, RRX 
l2781: bic R0, R8, R4
l2782: bicLT R0, R4, R8, LSR R0
l2783: mvn R8, R7, LSR #20
l2784: eorGEs R4, R14, R11, ROR R8
l2785: eorLEs R2, R3, R10, LSL R5
l2786: eorHI R11, R7, #10624
l2787: bLT l2788
l2788: andLS R0, R9, R14, LSR #15
l2789: bLT l2798
l2790: orr R7, R1, R7
l2791: cmnCS R5, R10, ASR #25
l2792: addLSs R10, R8, R3, RRX 
l2793: tstMI R6, R9, ASR R11
l2794: sub R5, R10, R3, ROR R11
l2795: eor R8, R6, R3, LSR R10
l2796: addCCs R14, R0, R4, ASR #16
l2797: addVC R0, R9, R12, RRX 
l2798: rscVC R4, R10, R14
l2799: subPL R2, R15, R0
l2800: rsc R7, R2, #132
l2801: nop
l2802: orr R7, R1, #920
l2803: rsbs R3, R2, #3325952
l2804: bHI l2813
l2805: sub R3, R12, #1081344
l2806: cmnCS R3, #490733568
l2807: adcMIs R12, R1, R3, ROR R12
l2808: bicVCs R0, R3, #-452984832
l2809: eorLE R14, R7, #-419430400
l2810: adcVCs R4, R7, R2, LSL R5
l2811: teq R1, R8, ASR R8
l2812: ands R4, R3, R7
l2813: teq R5, R7
l2814: eors R4, R0, R12, ASR R9
l2815: sbc R8, R5, R12
l2816: orrLSs R7, R8, R11, ASR R7
l2817: movs R11, R10, RRX 
l2818: ands R0, R1, R9
l2819: cmp R14, R2, LSR R3
l2820: eors R4, R9, R3, ROR #28
l2821: ldr R9, [sp, #-60]!
l2822: mov R8, #16
l2823: str R10, [sp, +R8]
l2824: cmp R14, R1, ROR R4
l2825: bEQ l2831
l2826: clzLE R11, R14
l2827: subHIs R0, R4, R2, LSL #19
l2828: cmn R11, #18350080
l2829: teq R9, R2
l2830: eors R5, R3, R2, LSR #9
l2831: rscGT R5, R9, R0, LSR R10
l2832: b l2839
l2833: eorHIs R9, R5, #15073280
l2834: mvns R5, R10, LSR #20
l2835: teqLT R11, R4
l2836: eor R2, R4, R7, ROR R9
l2837: sbcMIs R1, R7, R7, ROR R6
l2838: mov R0, R0, LSL R3
l2839: rsbGT R1, R0, R14, ROR R9
l2840: eorPLs R9, R11, R5, ROR R10
l2841: cmnNE R11, R9, ASR R6
l2842: rscs R0, R1, R0
l2843: bMI l2847
l2844: add R1, R0, #227
l2845: and R0, R14, R5
l2846: b l2848
l2847: b l2845
l2848: orr R7, R0, #188743680
l2849: rsbEQs R12, R3, #910163968
l2850: bNE l2855
l2851: sbcs R6, R9, #2160
l2852: adcs R8, R15, #8512
l2853: cmpCS R12, R10
l2854: adc R9, R12, R12
l2855: rscMI R2, R10, R3, LSR R3
l2856: mvn R3, #90112
l2857: mov R11, #729808896
l2858: cmpEQ R15, R4, RRX 
l2859: movLSs R7, R6, ASR #0
l2860: strB R7, [sp, #+47]
l2861: movVS R12, #3719168
l2862: movLTs R8, R4, RRX 
l2863: stmIB R13!, {R13, R15}
l2864: rsbs R5, R3, #-1258291200
l2865: rscs R1, R2, R9, LSR #9
l2866: ands R5, R7, R0, ROR R12
l2867: mvnGTs R6, R2
l2868: bVC l2878
l2869: andGEs R10, R2, #121
l2870: sbcLEs R9, R9, R11
l2871: bics R2, R10, #91226112
l2872: adcs R3, R9, R0, ROR R7
l2873: orrHI R1, R14, #1888
l2874: movs R11, #6160384
l2875: rsbGEs R10, R1, R12
l2876: bics R7, R0, R6, ROR #21
l2877: cmpMI R10, #553648128
l2878: andVCs R0, R2, R2
l2879: rsbCC R3, R11, R11, LSR #1
l2880: eorLS R0, R15, #33
l2881: b l2884
l2882: subs R4, R11, #212
l2883: movEQs R9, R1
l2884: rsbs R6, R6, R11, ROR #15
l2885: adc R14, R7, R2
l2886: ldr R9, [sp, #+20]!
l2887: strB R2, [sp, #-25]
l2888: eor R10, R1, R5, LSR R11
l2889: teq R14, R2, LSL #5
l2890: sbcPL R6, R5, #15104
l2891: eors R9, R1, R7, LSR #17
l2892: adcLTs R5, R1, R11, ROR R0
l2893: sub R7, R3, R8, ROR R7
l2894: andVSs R6, R15, R0
l2895: cmp R1, R9, ASR #20
l2896: b l2902
l2897: subEQs R10, R8, R8, LSR #31
l2898: sub R9, R10, R11, LSR #22
l2899: cmpGE R14, #1019904
l2900: rsbMI R14, R4, R12, LSL R11
l2901: mvnPL R3, R2, LSL #22
l2902: movNEs R9, R12
l2903: bPL l2910
l2904: sbcs R11, R6, #8832
l2905: movs R8, R0
l2906: rsbLT R0, R0, R7
l2907: mvnVSs R11, R0
l2908: clz R5, R12
l2909: adc R2, R6, R14, ASR R5
l2910: cmn R3, R10
l2911: rscs R0, R12, R15, ROR #20
l2912: orrLT R11, R11, #-1040187392
l2913: ldmDA R13!, {R0, R2, R4, R6, R7, R10, R14}
l2914: mov R2, R7, ROR #17
l2915: b l2924
l2916: add R1, R0, #134
l2917: bic R4, R2, R0, ASR #27
l2918: rsb R11, R7, R12, LSR #10
l2919: sbcVC R11, R9, R12, LSL R4
l2920: teq R3, R6
l2921: add R0, R10, R3, LSR R7
l2922: clzGE R3, R5
l2923: b l2925
l2924: b l2917
l2925: addGEs R9, R8, R6, RRX 
l2926: rscPLs R0, R11, R3
l2927: orrHI R3, R5, R0
l2928: eorMIs R9, R2, #82837504
l2929: subLE R8, R3, R9, RRX 
l2930: teq R7, R9, LSL R1
l2931: cmnVS R15, R14, LSL #9
l2932: sbcLT R2, R4, R1
l2933: orrEQ R14, R4, R2
l2934: nop
l2935: sbcMIs R4, R10, R6, ROR R9
l2936: eorEQ R14, R2, #4672
l2937: movGTs R8, R4
l2938: nop
l2939: cmpCS R0, R7, LSL #14
l2940: cmpPL R3, R2
l2941: rsb R8, R11, R11
l2942: rsb R9, R3, #56098816
l2943: tstLT R12, R6
l2944: b l2947
l2945: tst R6, R1, LSL #7
l2946: rsbCS R1, R7, R0, ASR #4
l2947: adcLSs R8, R7, R9
l2948: mov R4, R5
l2949: bicPLs R8, R1, R6, LSL #7
l2950: stmEQDB R13, {R0}
l2951: tst R3, R0, ASR #17
l2952: ldrLSB R5, [sp, #+44]
l2953: mvnVSs R3, R8, ASR R5
l2954: mov R12, #6
l2955: ldrVSB R12, [sp, +R12]
l2956: sbc R6, R0, R10, LSL R10
l2957: andCCs R12, R2, R3, LSR R4
l2958: tst R4, R9, LSL R11
l2959: subEQs R6, R5, #928
l2960: cmnEQ R10, #-1744830464
l2961: movHIs R12, #5888
l2962: bLE l2971
l2963: add R1, R0, #62
l2964: bics R3, R12, R2, LSL R5
l2965: cmpCS R7, R12
l2966: mvnGT R8, R3
l2967: movNEs R1, R8, LSL R4
l2968: cmnVS R3, R0
l2969: orr R6, R14, R14
l2970: b l2972
l2971: b l2964
l2972: tstPL R7, R9
l2973: subs R12, R14, R12
l2974: mov R14, #5
l2975: ldrCCB R11, [sp, +R14]
l2976: bicMI R9, R6, R12, RRX 
l2977: ldrNEB R4, [sp, #-10]
l2978: clz R12, R7
l2979: sbcs R10, R1, #53739520
l2980: eorGTs R12, R4, R1, LSR R4
l2981: clzVS R10, R6
l2982: sbcCS R0, R3, R4
l2983: adc R7, R7, R10
l2984: mov R6, R4, LSR #11
l2985: sbcGTs R1, R2, #574619648
l2986: teqLS R4, #24
l2987: subLS R7, R10, R15
l2988: rsbCC R2, R12, R2
l2989: teqMI R2, R11
l2990: teq R8, R8, RRX 
l2991: subGEs R6, R8, R7
l2992: clz R6, R0
l2993: teqPL R0, R14
l2994: orrs R5, R0, #1879048195
l2995: subLE R9, R7, R4, RRX 
l2996: clz R11, R1
l2997: sub R3, R15, R12, LSL #0
l2998: adc R11, R0, R3
l2999: subs R12, R7, R10, LSL #20
l3000: mvnLEs R12, R7
l3001: bVS l3008
l3002: add R1, R0, #43
l3003: mvnLT R6, R3, RRX 
l3004: cmpGE R10, R12, ASR R10
l3005: eor R2, R3, #11534336
l3006: subPL R8, R11, R14, LSL #15
l3007: b l3009
l3008: b l3003
l3009: orrMI R6, R7, R0, LSR #5
l3010: bPL l3017
l3011: orrCC R11, R11, R9, ROR R2
l3012: movHI R2, R2, LSR R2
l3013: cmpLE R12, R11, ASR #29
l3014: movs R0, R9, RRX 
l3015: rsbs R3, R1, #146
l3016: cmnCS R0, R6, LSR R9
l3017: tstEQ R11, #-805306366
l3018: movLT R10, R4, ROR R2
l3019: ldrB R10, [sp, #+46]
l3020: addGEs R7, R9, #574619648
l3021: andCSs R10, R5, R4
l3022: sub R12, R4, R15, LSR #9
l3023: orrGT R9, R12, #860
l3024: orrMI R2, R1, R5, ASR #10
l3025: subMIs R10, R6, R10, ASR #15
l3026: subGEs R4, R6, R11, RRX 
l3027: sbcLE R7, R1, R4
l3028: eor R3, R3, R12
l3029: clzLE R11, R6
l3030: sub R7, R5, R9, LSR #15
l3031: bEQ l3035
l3032: add R1, R0, #252
l3033: sub R12, R7, R15
l3034: b l3036
l3035: b l3033
l3036: sbcs R5, R9, R6, RRX 
l3037: clzCS R12, R0
l3038: orrs R7, R11, R2
l3039: ldmDA R13!, {R8}
l3040: mov R6, #11
l3041: strGEB R11, [sp, +R6]
l3042: addPL R0, R14, R8, RRX 
l3043: bic R3, R7, R7, LSR #17
l3044: rscLTs R14, R9, #-2147483648
l3045: orrNEs R12, R9, R11, LSR R3
l3046: tstLT R6, R11, LSL #17
l3047: adc R11, R4, #145752064
l3048: rsbLSs R3, R5, R12, ASR R6
l3049: mov R8, #18
l3050: strCCB R11, [sp, +R8]
l3051: mvnEQ R1, R9, ASR #0
l3052: adcGT R9, R0, R9, ROR R6
l3053: movNEs R5, R10, RRX 
l3054: nop
l3055: and R10, R10, #-1610612734
l3056: rsbLT R0, R6, R14
l3057: adc R7, R1, R9, RRX 
l3058: movVCs R10, #3309568
l3059: ands R9, R7, R6
l3060: eorLT R12, R3, R5, RRX 
l3061: bGE l3064
l3062: rsbCC R0, R15, R3, ASR #14
l3063: rsbMI R8, R3, R4, RRX 
l3064: teq R12, #22272
l3065: andNEs R4, R12, R7, RRX 
l3066: addCSs R10, R2, R0, ASR #12
l3067: stmVSIB R13, {R0, R2, R3, R4, R5, R6, R9, R10, R13, R14, R15}
l3068: b l3076
l3069: add R1, R0, #233
l3070: rsbGE R8, R14, R12, ROR R3
l3071: clzLT R6, R2
l3072: rsbLTs R10, R5, R8, ROR R6
l3073: sub R7, R2, R1, RRX 
l3074: subs R8, R6, R3
l3075: b l3077
l3076: b l3070
l3077: cmpLT R14, #-1073741821
l3078: nop
l3079: rsbCS R1, R6, R9
l3080: and R8, R11, R1
l3081: movs R9, R2, LSL R0
l3082: rscCSs R14, R5, #1476395008
l3083: b l3085
l3084: subMIs R3, R0, #440
l3085: rscHIs R9, R14, R11, ROR R12
l3086: nop
l3087: sub R10, R2, R7, LSR #28
l3088: rsc R8, R3, R8, LSL #8
l3089: b l3093
l3090: add R1, R0, #37
l3091: tst R14, R10
l3092: b l3094
l3093: b l3091
l3094: bGE l3099
l3095: add R1, R0, #238
l3096: ands R7, R5, R5, LSL R1
l3097: mov R1, R2, LSL #29
l3098: b l3100
l3099: b l3096
l3100: teqEQ R2, #540
l3101: ands R6, R14, #1342177293
l3102: bGE l3106
l3103: add R1, R0, #137
l3104: sub R2, R10, R7
l3105: b l3107
l3106: b l3104
l3107: cmp R14, #638976
l3108: eorLT R4, R1, R8, ROR R7
l3109: b l3116
l3110: rscLEs R3, R2, #720
l3111: rsbMIs R11, R9, R7, LSL #6
l3112: rscLS R10, R1, R11, LSR R5
l3113: rsc R9, R3, R10, ROR R7
l3114: mvns R0, #178176
l3115: bicLE R3, R15, #12544
l3116: subLT R11, R10, R4, LSL R14
l3117: bVS l3125
l3118: add R1, R0, #153
l3119: subLE R9, R5, R8
l3120: eorHIs R7, R14, R5, LSL R4
l3121: orrPLs R10, R10, R2
l3122: addVCs R1, R11, R14, RRX 
l3123: bicGEs R12, R10, R5
l3124: b l3126
l3125: b l3119
l3126: eor R8, R4, #14090240
l3127: bicGE R10, R8, #208666624
l3128: addMIs R12, R7, R0
l3129: add R8, R9, R11
l3130: addLS R12, R11, R11, LSR R12
l3131: bicVS R1, R6, #-268435449
l3132: rscLE R8, R3, R3, LSR R4
l3133: tstMI R7, R1, ROR #21
l3134: cmnCS R2, R5, LSL R9
l3135: and R6, R8, #185344
l3136: orrCSs R6, R5, R9, ROR #20
l3137: cmnVC R14, R1, RRX 
l3138: eorPLs R10, R1, R11, LSL R3
l3139: nop
l3140: andCC R7, R9, R10
l3141: rsb R9, R5, R0, LSL R11
l3142: andVSs R14, R14, R10, LSL R11
l3143: b l3148
l3144: teq R7, R6, LSR #26
l3145: cmn R8, R9, ASR R2
l3146: orrs R3, R11, R9
l3147: cmnGT R4, R8
l3148: tstVC R0, #231424
l3149: cmn R5, R1, LSL R2
l3150: rsbLS R0, R14, R11, ASR R11
l3151: mvnCS R2, #-1291845632
l3152: sbcGEs R0, R5, R12, LSR #23
l3153: tst R12, #6881280
l3154: mov R1, R7
l3155: adcLT R2, R0, R11, ROR #7
l3156: rscEQs R3, R5, R1
l3157: cmn R12, R0
l3158: orrVC R10, R15, R0, LSR #31
l3159: mov R0, #91136
l3160: eorCCs R11, R14, R0
l3161: eorEQs R0, R10, R9
l3162: ands R3, R6, R8, ROR R8
l3163: adc R5, R7, R0, ROR #23
l3164: cmnEQ R3, R7
l3165: cmnHI R10, R0
l3166: subVSs R14, R14, R12
l3167: b l3170
l3168: teqGE R5, R8, LSL #5
l3169: orrLS R0, R6, R3
l3170: teqCS R5, #1728
l3171: tst R2, R5
l3172: sbcVSs R0, R1, R12
l3173: eorHI R6, R11, R10
l3174: adcLTs R5, R11, R3, ASR #13
l3175: subMIs R9, R4, R5, LSR #13
l3176: adc R9, R6, R3
l3177: eor R4, R7, R4, LSL R0
l3178: rsc R1, R6, R12
l3179: cmnLT R12, R7, LSR R10
l3180: stmIB R13!, {R13, R14, R15}
l3181: tstVS R7, #1073741878
l3182: orrEQ R1, R0, #266240
l3183: andVCs R4, R5, #189
l3184: subNE R9, R7, R3
l3185: ands R8, R11, R12, LSL #31
l3186: bMI l3191
l3187: add R1, R0, #158
l3188: sub R8, R11, R2, LSL R7
l3189: orrs R12, R3, R6
l3190: b l3192
l3191: b l3188
l3192: addLE R2, R6, R0, ASR #27
l3193: adds R5, R3, R3, LSR R2
l3194: movLEs R10, #340
l3195: eor R3, R0, R3
l3196: subs R12, R11, R0, ASR R12
l3197: bic R3, R11, R7, LSL #11
l3198: cmnNE R4, R14, LSR R3
l3199: cmpVS R10, R9, ROR #30
l3200: cmp R9, R5, ROR R12
l3201: mvnHIs R10, R0
l3202: cmpVS R1, #-1073741817
l3203: eor R8, R0, R12, RRX 
l3204: b l3214
l3205: mov R2, R11, LSR #7
l3206: bicCCs R4, R2, #13312
l3207: movs R4, R9, RRX 
l3208: subCCs R11, R11, R5, LSL #16
l3209: andLE R4, R10, #851968
l3210: sbc R6, R11, #15232
l3211: clz R9, R4
l3212: subGEs R7, R12, R0
l3213: tstCS R15, R5, RRX 
l3214: clz R1, R5
l3215: cmpGE R4, R3
l3216: movs R4, #52224
l3217: stmDB R13!, {R1, R5}
l3218: rscLE R5, R5, R2, LSL R9
l3219: bicLE R8, R4, R7, LSR R1
l3220: teq R8, R1, ASR #6
l3221: bVS l3229
l3222: bic R7, R11, R10, ASR R10
l3223: clzMI R4, R10
l3224: subLEs R7, R10, R14, LSR #23
l3225: add R0, R5, R0, LSR #28
l3226: sbcNEs R9, R9, R7, ASR #10
l3227: cmpVC R6, R2, LSL #25
l3228: cmn R1, R4, ASR R5
l3229: eorHIs R5, R15, R6, RRX 
l3230: cmp R2, #15168
l3231: rscCS R9, R7, R12, RRX 
l3232: bic R5, R6, R14, LSL #4
l3233: b l3238
l3234: add R1, R0, #20
l3235: orrGEs R1, R11, R5
l3236: cmn R14, R6, RRX 
l3237: b l3239
l3238: b l3235
l3239: subCSs R4, R11, #48128
l3240: mvns R10, #4352
l3241: tst R15, #165
l3242: tst R8, #131072
l3243: adcCS R2, R3, R5
l3244: sub R11, R5, R4
l3245: eors R9, R4, R11
l3246: orr R11, R4, R10, ROR R11
l3247: bGE l3249
l3248: sub R1, R4, R8, ROR R12
l3249: rsbVS R11, R15, R3
l3250: b l3259
l3251: movLEs R5, R5
l3252: addLSs R12, R7, R9, LSL R7
l3253: adcEQ R3, R6, R5, LSL R11
l3254: clzGT R10, R8
l3255: teqLS R5, R10
l3256: andVC R8, R2, R7, RRX 
l3257: eors R6, R12, R2
l3258: mvn R12, #47
l3259: sbcs R7, R15, R0, RRX 
l3260: cmpVC R14, R8, ASR #11
l3261: movMI R0, #335872
l3262: b l3268
l3263: clzLS R12, R8
l3264: rsb R4, R15, R10
l3265: teqLE R7, #213
l3266: orr R4, R0, R8, ROR #3
l3267: orrNE R0, R9, #1440
l3268: addLE R11, R11, R12, LSL #31
l3269: subNEs R10, R7, R15
l3270: teqLT R8, #-1744830464
l3271: tst R11, R8, RRX 
l3272: clzGT R1, R10
l3273: subCC R4, R10, R10, ASR R7
l3274: sub R3, R2, R5
l3275: tst R11, R14, RRX 
l3276: andPL R6, R14, R8
l3277: cmp R4, R14, LSL R14
l3278: cmpGT R0, R1
l3279: orrEQ R14, R10, R8, ROR #27
l3280: mov R14, #36
l3281: str R6, [sp, +R14]
l3282: subs R0, R2, R11
l3283: teq R15, R11, RRX 
l3284: mov R7, #7
l3285: ldrB R9, [sp, -R7]
l3286: bEQ l3294
l3287: eorHIs R1, R6, R14, LSL R4
l3288: teqHI R14, R6, LSL #22
l3289: andLEs R11, R6, R9
l3290: rsbLT R6, R9, R3, RRX 
l3291: addMI R14, R8, R10, LSR R3
l3292: cmn R14, #230686720
l3293: clz R14, R1
l3294: mvnGE R10, R5
l3295: cmp R0, R14, ROR R7
l3296: subs R0, R4, #1694498816
l3297: teqPL R12, R1, ASR R2
l3298: nop
l3299: b l3302
l3300: clz R2, R4
l3301: addGE R2, R8, R3, ASR #20
l3302: andLT R6, R15, R1, LSL #15
l3303: b l3308
l3304: add R1, R0, #249
l3305: cmnLS R6, R0, ASR #11
l3306: cmp R5, R10
l3307: b l3309
l3308: b l3305
l3309: str R11, [sp], #+60
l3310: mov R12, #66
l3311: ldrCCB R12, [sp, -R12]
l3312: mov R7, R14, ASR #15
l3313: eorCS R10, R8, R1
l3314: b l3316
l3315: mvn R6, R3, LSL R9
l3316: rscHI R0, R4, #89128960
l3317: subLS R5, R10, R1, ROR R2
l3318: eor R10, R5, R1
l3319: subs R14, R4, R9, ROR #18
l3320: cmn R5, R2
l3321: str R2, [sp, #-72]!
l3322: ldr R1, [sp, #+4]!
l3323: eors R14, R5, R7, RRX 
l3324: tst R15, #135168
l3325: cmp R11, R10
l3326: teqGT R8, R12
l3327: addEQ R14, R0, R3
l3328: addMIs R0, R8, #5701632
l3329: movLE R8, #233
l3330: teq R0, #64512
l3331: subGEs R2, R14, R11, RRX 
l3332: and R0, R2, R1, RRX 
l3333: subs R7, R10, R8, LSR #29
l3334: ldmIB R13!, {R3, R4, R7, R8, R9, R14}
l3335: sub R3, R7, #1342177284
l3336: sbcGEs R1, R8, R12, LSR R14
l3337: rsbPL R4, R7, R15, LSR #20
l3338: andCSs R8, R9, R15
l3339: cmpLT R11, #1097728
l3340: adds R7, R12, R1, ROR #31
l3341: cmnLE R8, #9728
l3342: mov R3, #35
l3343: strB R2, [sp, +R3]
l3344: rsbLEs R0, R14, R2, ASR R6
l3345: tstHI R12, R2
l3346: bics R7, R2, #-536870910
l3347: eorMI R6, R4, R2, LSL #12
l3348: cmn R11, R9
l3349: mvnMIs R6, R3
l3350: clzGT R1, R9
l3351: bGE l3359
l3352: subLSs R5, R6, R2, LSL R9
l3353: cmp R3, R0, RRX 
l3354: bicHI R10, R0, R10, ASR #16
l3355: subGTs R10, R12, #162
l3356: teq R9, #1593835520
l3357: teq R2, R5
l3358: bicGTs R11, R2, R12
l3359: subLSs R11, R14, R15
l3360: subEQ R1, R0, #1073741831
l3361: tstMI R8, R5
l3362: ldmIB R13!, {R1, R3, R4, R7, R8, R9, R10, R11, R14}
l3363: cmnLS R6, R9
l3364: mvn R3, R14, ROR R14
l3365: rscGTs R9, R6, R11, LSR R12
l3366: stmDB R13!, {R13}
l3367: teqVS R15, R6, LSR #25
l3368: rsbs R6, R3, R9, LSL #0
l3369: movs R5, R8, LSR #22
l3370: cmnLE R0, R1, LSL #28
l3371: teqVC R14, R14
l3372: bicGTs R12, R0, #9792
l3373: sbcs R9, R2, #25165824
l3374: orr R5, R11, R15
l3375: clzCC R0, R3
l3376: tst R4, #201326592
l3377: mvn R7, #192
l3378: eorLSs R5, R3, #671088640
l3379: clzGE R10, R11
l3380: eors R0, R8, #24903680
l3381: teqEQ R7, R1, ROR #1
l3382: rscs R9, R3, R6, LSL R4
l3383: add R8, R12, #458752
l3384: addEQs R14, R9, R4, LSR #15
l3385: cmn R3, R5
l3386: tstGT R5, R5, RRX 
l3387: add R9, R12, R6, ROR #18
l3388: ldmDB R13!, {R0, R1, R3, R4, R7, R8, R9, R12, R14}
l3389: adcVC R10, R15, #-2147483622
l3390: adcs R5, R11, R4, LSL R6
l3391: bicHI R2, R5, R4, RRX 
l3392: rscs R2, R3, #9175040
l3393: adc R14, R10, R7, ROR #23
l3394: str R1, [sp, #+4]!
l3395: rsc R8, R5, R9
l3396: bicPL R2, R4, #753664
l3397: and R7, R9, R14, RRX 
l3398: bVS l3406
l3399: andMIs R1, R3, R6, LSL #20
l3400: orrs R0, R14, R10, RRX 
l3401: subCCs R12, R15, R7, LSL #30
l3402: clz R3, R2
l3403: cmp R15, R8, ASR #26
l3404: rscVCs R12, R5, #119808
l3405: cmn R10, R3, ROR R11
l3406: mov R0, R11, LSR #8
l3407: tst R9, R1, RRX 
l3408: teqVS R11, R14, LSR R12
l3409: b l3415
l3410: add R1, R0, #239
l3411: andVSs R14, R12, R12, LSR #29
l3412: movLEs R6, R3
l3413: cmnGE R10, R4, RRX 
l3414: b l3416
l3415: b l3411
l3416: clzNE R7, R11
l3417: andPL R10, R7, R8, LSR R0
l3418: teqLE R0, R11, LSL R0
l3419: orrLEs R10, R14, R9, ROR R9
l3420: adcLSs R12, R12, R9, RRX 
l3421: bEQ l3425
l3422: subHI R6, R6, #221
l3423: subNE R6, R4, R14
l3424: cmp R0, R14, ASR R2
l3425: eorCSs R3, R4, #8
l3426: stmGTDB R13, {R7}
l3427: orr R4, R5, R4
l3428: eorGT R8, R10, R8, LSR R3
l3429: rsbHIs R1, R3, R8, ASR #18
l3430: mvnVS R8, #58720256
l3431: mvns R4, #148480
l3432: addGE R5, R3, R14
l3433: eorNE R9, R15, R5
l3434: teqGT R1, R0
l3435: addCC R2, R1, R12
l3436: sbcs R8, R7, R8, RRX 
l3437: orrs R10, R6, #1027604480
l3438: rsb R8, R5, R3
l3439: b l3448
l3440: mvnEQ R9, R9
l3441: cmnVC R6, #524288
l3442: orrs R9, R6, #12845056
l3443: movCC R6, R8
l3444: subs R3, R15, R8
l3445: rscEQs R14, R11, R15, LSR #24
l3446: bic R10, R14, #622592
l3447: subEQs R3, R8, R11
l3448: addHIs R2, R1, R6, LSL #26
l3449: teq R9, R6, LSL #4
l3450: bGE l3458
l3451: tst R7, #83886080
l3452: adds R1, R1, R14, LSL #9
l3453: mvnLTs R1, R5, LSL R8
l3454: clz R10, R7
l3455: orr R6, R1, R0
l3456: bicEQs R3, R5, R14, ASR R9
l3457: movLS R14, R1, LSR #23
l3458: rscLEs R10, R7, #292
l3459: eorHIs R12, R3, #101376
l3460: eors R14, R4, #3637248
l3461: sbcPLs R6, R11, R9, ROR R12
l3462: tstVC R1, R8, RRX 
l3463: rsbHIs R12, R1, R6, ROR #17
l3464: strB R1, [sp, #+8]
l3465: mov R7, #23
l3466: strB R0, [sp, -R7]
l3467: mov R1, #28
l3468: ldr R14, [sp, -R1]!
l3469: mvnEQ R4, #448
l3470: adcLTs R11, R11, R2, LSR R7
l3471: movLT R11, R2, RRX 
l3472: eors R11, R6, R7, LSR #22
l3473: subs R12, R6, #802816
l3474: stmIB R13!, {R2, R5, R11, R14, R15}
l3475: clz R0, R7
l3476: teqVC R10, R5, RRX 
l3477: b l3478
l3478: adcLSs R6, R12, R15
l3479: adcLTs R14, R2, R1, LSR #28
l3480: rsb R0, R12, #-2147483595
l3481: bics R4, R7, R0, ASR #0
l3482: andCS R8, R2, #1073741832
l3483: bVC l3486
l3484: tstGE R14, #-1073741772
l3485: teq R11, #1073741836
l3486: subGTs R1, R6, R0, LSR R6
l3487: orrHIs R4, R14, R4
l3488: teq R3, R3
l3489: teq R11, R4, ROR R4
l3490: subEQ R3, R11, R6, ASR R10
l3491: addCS R10, R4, R6, ROR R6
l3492: teqGE R14, R5, LSR #1
l3493: orr R12, R12, R3, RRX 
l3494: bics R12, R0, R9
l3495: and R4, R3, R3, ASR #14
l3496: subCSs R8, R6, R3, RRX 
l3497: bMI l3503
l3498: rsc R1, R6, #32505856
l3499: andNEs R14, R11, R7, LSL R2
l3500: rscVSs R5, R3, R1, ASR #6
l3501: subs R7, R5, R8, RRX 
l3502: subEQs R11, R9, R15
l3503: subCS R8, R0, R1, ROR R5
l3504: ldmGTDA R13, {R4, R8}
l3505: orrs R2, R7, #13828096
l3506: adcNEs R6, R0, #8640
l3507: bEQ l3516
l3508: add R1, R0, #70
l3509: rsbCS R6, R0, R5
l3510: movs R2, R7
l3511: clzCS R14, R6
l3512: cmn R15, R11, LSL #18
l3513: bicCC R11, R11, R9, RRX 
l3514: movs R9, R1
l3515: b l3517
l3516: b l3509
l3517: rscLE R8, R1, #-603979773
l3518: cmnCC R3, R14
l3519: rsbMIs R9, R4, R6
l3520: tst R15, R9, ASR #17
l3521: stmIB R13!, {R13, R14}
l3522: sbcLE R4, R5, R11
l3523: teqEQ R11, R4
l3524: rscGT R7, R9, R8, RRX 
l3525: and R14, R10, R5
l3526: strNE R4, [sp, #+8]
l3527: clz R5, R11
l3528: mvns R12, R2, LSR #5
l3529: mvnLTs R1, R11
l3530: eorGEs R8, R2, R14
l3531: subs R6, R15, R12, LSR #20
l3532: ands R5, R9, R0
l3533: mov R14, R12, LSL R11
l3534: cmpMI R12, R7
l3535: rsbs R3, R1, R2, ROR R2
l3536: mov R14, #36
l3537: str R4, [sp, +R14]!
l3538: rscHI R7, R7, R9
l3539: sub R8, R4, R2
l3540: and R9, R3, R1, ROR R5
l3541: ldrB R8, [sp, #-9]
l3542: eorGEs R10, R1, R10, RRX 
l3543: movMIs R8, R14, LSR R3
l3544: ldmMIDB R13, {R10}
l3545: cmnNE R0, R11
l3546: b l3554
l3547: adcCCs R6, R7, R15, LSR #17
l3548: rsc R0, R1, R9, LSR R9
l3549: cmnLS R6, #4980736
l3550: eorVCs R1, R7, #1073741826
l3551: cmnCC R3, R2, ASR #18
l3552: orrMIs R4, R0, #1073741863
l3553: cmnVC R10, #3008
l3554: rscLT R10, R0, R4, LSR R10
l3555: tst R4, R11
l3556: ands R2, R15, #-2147483646
l3557: rsb R8, R12, R8, ROR R14
l3558: rsbGEs R0, R5, R4
l3559: ldmDA R13!, {R3, R8, R11, R14}
l3560: cmp R15, R7, RRX 
l3561: and R12, R4, R1
l3562: adc R3, R15, R4, LSL #14
l3563: mvn R7, R1, LSL R10
l3564: tst R9, R4, ASR R12
l3565: ldmDB R13!, {R1, R3, R4, R5, R8, R11, R12, R14}
l3566: movLSs R3, R6, RRX 
l3567: stmIA R13!, {R4, R6, R10, R12, R14, R15}
l3568: teqLE R6, #1275068417
l3569: bLS l3574
l3570: add R1, R0, #192
l3571: movGTs R8, #15204352
l3572: mvn R5, R8
l3573: b l3575
l3574: b l3571
l3575: adcs R6, R3, R6, RRX 
l3576: stmDB R13!, {R9, R12}
l3577: add R14, R12, #475136
l3578: adcEQ R1, R12, R0
l3579: rsc R9, R15, R9, RRX 
l3580: b l3588
l3581: add R1, R0, #127
l3582: and R2, R2, #-117440512
l3583: clzGE R1, R12
l3584: clzHI R14, R11
l3585: eorLEs R1, R2, #1073741845
l3586: subs R10, R6, R4, ASR R8
l3587: b l3589
l3588: b l3582
l3589: rsb R1, R14, R6
l3590: ldrB R6, [sp, #+40]
l3591: subs R0, R3, R12
l3592: movCC R2, R5, ROR #11
l3593: movCS R1, #31981568
l3594: bGT l3600
l3595: add R1, R0, #99
l3596: bic R4, R0, R10
l3597: addHI R12, R4, #12544
l3598: subLEs R10, R10, R3
l3599: b l3601
l3600: b l3596
l3601: sbcGE R0, R10, R14, LSR #2
l3602: subCS R6, R1, R6, ROR R10
l3603: tst R4, R11, RRX 
l3604: strLSB R1, [sp, #-5]
l3605: sbcVSs R1, R15, R12
l3606: orrs R2, R6, R8
l3607: cmp R14, R5
l3608: bGE l3614
l3609: add R1, R0, #206
l3610: teq R12, #21757952
l3611: rsc R3, R10, R11, LSR #16
l3612: and R1, R11, #1174405120
l3613: b l3615
l3614: b l3610
l3615: rsc R1, R7, R1, LSR #7
l3616: stmIB R13!, {R13, R15}
l3617: movPL R8, #364904448
l3618: eor R14, R9, R1, RRX 
l3619: bCC l3621
l3620: subEQ R9, R6, R1
l3621: tstCC R1, R8
l3622: orr R4, R1, #176160768
l3623: movLE R5, R9, LSL #24
l3624: ldmIA R13!, {R1, R3, R7, R8, R12}
l3625: eorVSs R0, R1, R11
l3626: ldmDB R13!, {R0, R2, R3, R4, R5, R6, R8, R9, R12, R14}
l3627: cmnEQ R4, R5, ASR R7
l3628: bicVCs R14, R7, R9, LSL R3
l3629: teqCC R6, R6, ASR R6
l3630: clz R12, R9
l3631: rscLTs R10, R10, R4
l3632: b l3637
l3633: add R1, R0, #2
l3634: rscHI R11, R1, #-1811939325
l3635: andLTs R11, R8, R5, ROR #29
l3636: b l3638
l3637: b l3634
l3638: rscGEs R14, R11, #8257536
l3639: movLEs R0, R2, LSR #20
l3640: bicMI R7, R10, R10, ASR #15
l3641: bVS l3643
l3642: adcs R4, R2, R7, LSL #24
l3643: cmnPL R1, R0, ASR R5
l3644: rsbVS R0, R3, R14, RRX 
l3645: mvnLSs R4, R14, LSR R0
l3646: rsbLS R8, R8, R3, LSR R6
l3647: cmpGE R10, R5, ROR #2
l3648: bics R14, R5, #233
l3649: tst R6, R15, ROR #4
l3650: rsb R0, R6, R3, LSL #12
l3651: andEQs R2, R14, #16318464
l3652: add R4, R2, R11
l3653: sbc R11, R1, R3, ASR R3
l3654: adcVCs R9, R10, #136
l3655: b l3661
l3656: add R1, R0, #129
l3657: bicVC R9, R14, R10, RRX 
l3658: clzMI R4, R2
l3659: cmnCS R4, #41156608
l3660: b l3662
l3661: b l3657
l3662: sub R4, R0, R0, ASR R1
l3663: stmVSDA R13, {R11, R14}
l3664: cmn R11, R12
l3665: rsbCSs R7, R4, R11
l3666: tst R0, #134
l3667: movs R1, R0, LSR R14
l3668: cmnMI R3, #1073741853
l3669: strLSB R6, [sp, #+12]
l3670: bVS l3680
l3671: andPLs R7, R6, R9, LSL R9
l3672: cmn R14, R9, LSL R7
l3673: sub R4, R2, #4194304
l3674: mvnPLs R7, R1, LSL R3
l3675: cmp R14, R15, ASR #21
l3676: rsbs R5, R10, #235
l3677: mvnPL R9, R8
l3678: andGE R12, R0, R0, LSL #29
l3679: rscs R3, R7, R5, ROR #6
l3680: orrVCs R0, R12, R7
l3681: rscs R3, R3, R0, LSR R1
l3682: b l3687
l3683: add R1, R0, #221
l3684: eor R0, R9, R3, RRX 
l3685: mvnCCs R2, R2
l3686: b l3688
l3687: b l3684
l3688: mvn R5, R0, ROR R1
l3689: mvn R5, R5, ROR R9
l3690: eor R9, R4, #3735552
l3691: b l3694
l3692: and R4, R14, R5, ROR R12
l3693: adcGE R2, R7, R9
l3694: rscLTs R8, R15, R15, LSR #11
l3695: mvn R2, R9, ROR #16
l3696: ands R14, R10, R8
l3697: b l3706
l3698: cmn R14, #1577058304
l3699: movCCs R3, R5, ROR R6
l3700: adcs R0, R6, R7
l3701: subs R9, R11, R15
l3702: mov R3, R14, LSR R4
l3703: orrCSs R6, R5, #101376
l3704: bics R2, R0, R0, ASR #2
l3705: tst R15, R11, LSR #4
l3706: adcLS R10, R10, #-1879048186
l3707: str R9, [sp, #+36]
l3708: rsbs R0, R10, #14680064
l3709: b l3711
l3710: bic R10, R15, R8
l3711: adc R12, R1, R6, LSL #24
l3712: tst R9, R1
l3713: ldrPLB R11, [sp, #-1]
l3714: sbc R1, R1, R12
l3715: addLE R2, R1, R3, RRX 
l3716: sub R0, R4, #-1241513984
l3717: adc R2, R6, R0
l3718: bGT l3723
l3719: add R1, R0, #138
l3720: eorCS R5, R12, #1073741839
l3721: movs R5, R9
l3722: b l3724
l3723: b l3720
l3724: bEQ l3725
l3725: rsc R2, R9, R10
l3726: bicPLs R12, R12, R5, LSR #4
l3727: ands R6, R15, R10
l3728: eorMIs R1, R2, R10, LSL R2
l3729: b l3738
l3730: teqNE R0, #749568
l3731: subCS R2, R8, R0
l3732: sbcs R5, R15, R3, ROR #16
l3733: sbc R11, R15, #3248
l3734: bics R8, R12, R11
l3735: rscs R7, R0, R9, ROR R4
l3736: addCSs R2, R6, #111616
l3737: bics R3, R14, R10, RRX 
l3738: subLE R8, R11, R0, ROR #21
l3739: ldr R11, [sp], #-8
l3740: cmpVC R0, R0
l3741: b l3745
l3742: add R1, R0, #182
l3743: cmnVC R7, R7, ROR #27
l3744: b l3746
l3745: b l3743
l3746: orrMI R10, R12, R0, LSR #28
l3747: orrLS R14, R4, #1648
l3748: rscCCs R9, R7, R3, RRX 
l3749: adcVSs R0, R3, R2, ASR R4
l3750: bVC l3760
l3751: sub R6, R14, R3, ROR R8
l3752: cmn R11, R8, ROR #12
l3753: rsbLEs R9, R11, R2, LSL R4
l3754: clz R5, R6
l3755: clz R14, R0
l3756: eors R5, R7, R11, ASR #22
l3757: rsbNE R5, R15, R7
l3758: mov R5, R2, LSR #30
l3759: teq R6, R11, ASR R12
l3760: bicCC R0, R1, R15
l3761: mov R4, #44
l3762: strB R10, [sp, +R4]
l3763: ldmGTIA R13, {R0, R1, R2, R3, R4, R6, R7, R10, R11, R12, R14}
l3764: adc R5, R5, #3342336
l3765: orrLS R3, R10, R2, LSL R7
l3766: eorLSs R12, R11, R8, ROR #8
l3767: clzHI R10, R11
l3768: clzLT R5, R8
l3769: add R3, R6, R6, LSL R5
l3770: stmDB R13!, {R4}
l3771: addMIs R0, R14, R9, LSL #22
l3772: rsbs R3, R11, R3
l3773: mov R4, #1
l3774: strB R4, [sp, -R4]
l3775: bicPLs R14, R10, #2832
l3776: add R10, R14, R10, LSR #6
l3777: orrVS R11, R9, R2
l3778: mov R7, #45
l3779: strCCB R14, [sp, +R7]
l3780: movs R9, #307200
l3781: and R3, R3, R5, RRX 
l3782: nop
l3783: stmIB R13, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15}
l3784: andVC R6, R10, R5
l3785: b l3792
l3786: rsbPLs R4, R6, #684032
l3787: cmnCS R1, R8, LSR #14
l3788: mvnVS R7, R10, LSR R4
l3789: adcs R8, R9, R7, LSR R2
l3790: cmnVS R7, #41984
l3791: mvn R7, R5
l3792: cmn R4, R5, LSR R0
l3793: eor R12, R6, R0, RRX 
l3794: subCC R7, R3, R4
l3795: orrs R8, R10, R11, LSR #9
l3796: bCS l3803
l3797: add R1, R0, #125
l3798: mvnVSs R9, #69
l3799: teq R2, #30
l3800: andVC R0, R5, R7
l3801: rscs R8, R7, R5, ASR #24
l3802: b l3804
l3803: b l3798
l3804: mov R7, #32
l3805: ldr R8, [sp, +R7]
l3806: str R5, [sp, #+4]!
l3807: sbcs R3, R0, #13504
l3808: orrHI R14, R7, #6160384
l3809: eor R5, R15, R11
l3810: bCC l3811
l3811: mvnVS R10, R6, ROR R4
l3812: cmnHI R4, R5, ASR R2
l3813: tst R7, R1
l3814: ldmVSIB R13, {R0, R3, R4, R5, R6, R7, R8, R10, R11, R12}
l3815: bic R3, R12, R3
l3816: eorCC R9, R11, R14, LSL #0
l3817: ands R8, R6, #4194304
l3818: ldrCCB R8, [sp, #+2]
l3819: movGT R0, #-2147483614
l3820: adds R12, R7, R9, LSL #25
l3821: cmp R8, R15
l3822: stmDB R13!, {R0}
l3823: nop
l3824: sbcCC R4, R7, R2, RRX 
l3825: bicNEs R11, R2, R6
l3826: strB R2, [sp, #+36]
l3827: rscLS R1, R8, R7
l3828: b l3829
l3829: rscLSs R9, R1, R1, LSL R4
l3830: eorCS R10, R8, R2, RRX 
l3831: rscGEs R11, R12, R1
l3832: str R4, [sp], #+12
l3833: mov R12, #20
l3834: ldrB R2, [sp, +R12]
l3835: clz R11, R10
l3836: mvnMI R9, R8, RRX 
l3837: bVS l3846
l3838: eorPL R6, R7, R2
l3839: teqGT R9, R14, ROR #9
l3840: rsbLTs R2, R1, R7, ROR R5
l3841: movVC R8, R12, ROR R8
l3842: cmpEQ R14, R9
l3843: mvn R1, #1088
l3844: adc R2, R4, R6, LSL R11
l3845: eors R12, R1, R3, RRX 
l3846: cmnGE R8, R12, LSL #28
l3847: sub R1, R10, #1024
l3848: add R4, R7, R3, LSR #29
l3849: orrHIs R12, R10, R6, RRX 
l3850: mov R8, #15
l3851: ldrMIB R2, [sp, +R8]
l3852: tstCC R8, R11, LSR #1
l3853: eorVC R9, R6, R4, ROR R0
l3854: strB R3, [sp, #+20]
l3855: rscs R9, R7, R0
l3856: rscVC R11, R10, R6, RRX 
l3857: adcLSs R9, R0, R15
l3858: mov R2, #36
l3859: ldr R1, [sp], +R2
l3860: tstLT R4, R1
l3861: rsbMIs R9, R6, R14, RRX 
l3862: addVC R5, R0, R9
l3863: ldmDA R13!, {R1, R2, R3, R4, R11}
l3864: subs R14, R9, R12
l3865: rsb R2, R3, R11, RRX 
l3866: rsc R8, R11, #12
l3867: bicEQ R3, R14, R7
l3868: orrGEs R3, R5, R1, RRX 
l3869: mvn R5, #45312
l3870: clz R14, R9
l3871: mov R14, #16
l3872: strEQB R1, [sp, -R14]
l3873: clzNE R10, R12
l3874: bCS l3880
l3875: subLEs R2, R14, R9
l3876: clzCS R6, R4
l3877: movs R4, #-2147483640
l3878: mvns R2, R4
l3879: teq R8, R9
l3880: movEQs R7, R9
l3881: tstPL R14, R5, LSL R10
l3882: eors R5, R8, R14, ROR #10
l3883: cmnLT R2, R5, LSR #13
l3884: sbcCSs R4, R5, R9, ROR #25
l3885: subEQs R11, R2, R8, ASR #14
l3886: bic R10, R9, R0, LSR R9
l3887: andLT R3, R15, R5, RRX 
l3888: bics R11, R9, R8, LSR #25
l3889: movs R4, #161480704
l3890: clzVS R12, R12
l3891: bPL l3900
l3892: mov R6, R2, ASR R6
l3893: orrCC R5, R15, R12
l3894: orrNE R1, R6, #1808
l3895: bicVS R4, R7, R7
l3896: rsbs R11, R5, R15, LSR #14
l3897: tstHI R14, R14, ASR R1
l3898: mvnVS R14, R11, LSL R7
l3899: mvn R8, #2883584
l3900: sbcNEs R3, R1, R11, ASR R5
l3901: mvnCCs R1, R0
l3902: mvnLE R7, #152043520
l3903: ldmLTDB R13, {R11, R12}
l3904: bEQ l3910
l3905: adc R12, R7, R12, ASR R12
l3906: cmpNE R8, R14, RRX 
l3907: orrs R11, R7, R11, LSR R11
l3908: sub R6, R5, R10
l3909: teq R1, R14, LSL R6
l3910: addLTs R0, R3, #7
l3911: cmnLS R0, #1753088
l3912: clzMI R12, R8
l3913: rsbs R14, R1, #511705088
l3914: adcGEs R4, R2, R6, RRX 
l3915: bHI l3925
l3916: teqPL R3, #-1073741809
l3917: cmnGT R15, R1, RRX 
l3918: mov R3, #37748736
l3919: subVC R12, R7, #8896
l3920: bics R6, R7, R10, ASR R14
l3921: mvnMI R9, #-1073741787
l3922: rsb R7, R9, #335544320
l3923: eorEQ R1, R5, R11
l3924: teq R15, R4, LSL #10
l3925: and R2, R15, R3
l3926: rscs R0, R7, R0, LSR R12
l3927: cmpLS R8, R7
l3928: subs R11, R14, R7, ROR R7
l3929: teqNE R2, R6, LSR #4
l3930: bLT l3936
l3931: add R1, R0, #63
l3932: and R2, R7, R1, RRX 
l3933: tst R4, #-268435453
l3934: rsc R6, R7, R14
l3935: b l3937
l3936: b l3932
l3937: ands R6, R12, R14, RRX 
l3938: subMI R8, R8, #64512
l3939: tst R10, R0, RRX 
l3940: movCSs R0, R6, LSL #17
l3941: movs R5, R2, LSL #6
l3942: subEQs R12, R1, R4, LSL R11
l3943: bCC l3948
l3944: tst R0, R3, LSR R2
l3945: movNEs R2, R6, ASR R5
l3946: adcGTs R2, R7, R2, ASR R8
l3947: teqGE R3, R4, LSR R14
l3948: rsc R3, R4, #132096
l3949: mov R12, R8, LSR R9
l3950: andVC R3, R6, R5, ASR #4
l3951: tst R8, R10, ASR R1
l3952: cmp R9, R2, ASR R4
l3953: subGTs R9, R9, R14, LSL R1
l3954: bicNE R7, R14, R2, LSL #14
l3955: ands R12, R3, #1073741859
l3956: mvnMI R2, R10, ASR R7
l3957: ldrLE R2, [sp, #-24]
l3958: cmpGE R10, #688
l3959: cmp R11, #-1342177268
l3960: eor R3, R12, R0
l3961: ldrVCB R8, [sp, #+20]
l3962: mvnGTs R9, #10813440
l3963: addNE R11, R4, R6, ASR R3
l3964: adc R9, R8, R11, ROR R1
l3965: mvn R1, R0, LSL R3
l3966: tstPL R15, R9, ROR #1
l3967: bNE l3976
l3968: adcLSs R5, R6, R8
l3969: movLS R0, R7
l3970: cmn R4, #127
l3971: movs R0, R10
l3972: movs R0, #918552576
l3973: addPLs R7, R7, #2211840
l3974: orrs R3, R7, #733184
l3975: clzMI R5, R6
l3976: mvnVSs R11, R2, RRX 
l3977: addGE R4, R12, #-1610612721
l3978: orr R8, R8, R4
l3979: and R3, R8, R7
l3980: cmpNE R4, R7, ROR R5
l3981: sbcGT R6, R1, R4
l3982: cmp R14, R0, ROR R1
l3983: rsc R7, R10, R6, ASR #9
l3984: bEQ l3988
l3985: add R1, R0, #158
l3986: rsbEQs R8, R4, R5
l3987: b l3989
l3988: b l3986
l3989: bVS l3991
l3990: orrEQ R7, R5, R10, ASR #30
l3991: sbcMI R5, R4, R9, LSL #22
l3992: bicHI R10, R0, R15, LSR #18
l3993: mvns R10, R15
l3994: orrEQ R10, R2, #-1476395005
l3995: subGEs R3, R6, R8, LSR #16
l3996: sbcLTs R10, R9, R9, LSL R4
l3997: mvnCSs R11, R10, RRX 
l3998: ldmDA R13!, {R3, R11}
l3999: sbc R6, R0, R4, ASR R10
l4000: bicGEs R12, R7, #889192448
l4001: eors R2, R2, #798720
l4002: b l4009
l4003: add R1, R0, #251
l4004: cmn R12, R10, RRX 
l4005: clzCC R6, R14
l4006: bicVSs R2, R12, R5
l4007: mvnHI R12, #-1073741805
l4008: b l4010
l4009: b l4004
l4010: orrVCs R6, R12, R3, LSL #1
l4011: orrCCs R10, R5, R10, LSR R12
l4012: sub R10, R8, R2
l4013: ldmGTIB R13, {R2, R3, R4, R6, R8, R10, R11, R14}
l4014: sbc R11, R1, R15, ROR #22
l4015: b l4023
l4016: teqVC R0, #3136
l4017: subMIs R9, R6, #-2147483628
l4018: movLSs R2, R5, ROR R6
l4019: orrMIs R9, R15, R9
l4020: mvns R2, R0
l4021: rsbCC R6, R9, #221184
l4022: teq R5, R2
l4023: sbcGTs R0, R8, R4
l4024: ldmIA R13, {R7}
l4025: b l4030
l4026: add R1, R0, #181
l4027: clzGT R14, R9
l4028: adcVSs R7, R9, R11, LSR R7
l4029: b l4031
l4030: b l4027
l4031: eorLSs R4, R0, R5, RRX 
l4032: eor R1, R3, R2, LSR #8
l4033: mvn R1, #7616
l4034: stmIB R13!, {R1, R12}
l4035: movs R10, R1
l4036: str R10, [sp, #-24]
l4037: rsbNEs R5, R15, R7, RRX 
l4038: teq R9, R9, ASR #10
l4039: stmCCDB R13, {R1, R8}
l4040: bGT l4047
l4041: mvns R12, R11, ROR R7
l4042: cmp R8, R11, LSL R7
l4043: sub R0, R1, R4, LSR #0
l4044: cmp R12, R10, LSL R8
l4045: teqLT R14, R6, ROR #5
l4046: cmp R6, R4, LSR #30
l4047: andPL R5, R1, R0
l4048: eorCC R0, R1, R8, LSL #13
l4049: bNE l4058
l4050: add R1, R0, #74
l4051: eorCS R12, R7, #108
l4052: bicGE R12, R8, R5
l4053: orrVCs R3, R14, #30464
l4054: bicMI R0, R12, R5, ASR #27
l4055: cmp R3, R2, RRX 
l4056: cmn R12, R10, LSL R1
l4057: b l4059
l4058: b l4051
l4059: b l4068
l4060: mvnMIs R0, R8, LSR #14
l4061: rsbEQ R9, R6, R8, ASR #25
l4062: bicPL R10, R5, R2, LSR R7
l4063: teq R3, R7, RRX 
l4064: rsbVSs R0, R2, #475136
l4065: andCC R5, R14, R3, ASR R8
l4066: adc R4, R5, #94208
l4067: andPLs R12, R7, R6
l4068: mov R8, R7
l4069: bGT l4073
l4070: add R1, R0, #241
l4071: mvnGT R7, R5
l4072: b l4074
l4073: b l4071
l4074: rscLSs R11, R3, R6, RRX 
l4075: cmp R10, R11
l4076: ldmIB R13!, {R1, R4, R5, R6, R7, R10, R11}
l4077: orrVCs R7, R6, #912
l4078: eorLSs R6, R11, R0, ASR R10
l4079: stmDB R13, {R10}
l4080: sub R0, R1, #58458112
l4081: cmpPL R6, R2, RRX 
l4082: sub R6, R11, R6
l4083: teqNE R4, R5, LSR R12
l4084: adds R11, R9, R2, ROR #13
l4085: mvnLT R4, R11, LSL #20
l4086: cmpLE R12, R14
l4087: orr R7, R15, R8, LSR #7
l4088: b l4089
l4089: subCS R4, R9, #745472
l4090: cmp R11, R14
l4091: eor R4, R9, R3
l4092: addGT R12, R12, R3, LSR R3
l4093: orrGE R6, R12, R10, ASR R12
l4094: orrHIs R0, R6, R14, ASR #11
l4095: mvnEQ R10, R15, ASR #0
l4096: stmIA R13!, {R12}
l4097: movCCs R8, R0, ROR #4
l4098: mov R3, #50
l4099: ldrCCB R9, [sp, -R3]
l4100: eors R10, R0, R8
l4101: teq R12, R3, RRX 
l4102: movCS R5, R1
l4103: mvnLT R1, #-1996488704
l4104: tstVS R6, R4, LSR R1
l4105: clzGT R14, R0
l4106: cmn R3, R8, LSR #6
l4107: sbcs R9, R3, R2, RRX 
l4108: clzVS R1, R4
l4109: orrHI R1, R1, R2, ASR R0
l4110: cmnLT R6, R8, LSL #19
l4111: cmnHI R4, #167772160
l4112: adcGTs R2, R4, R9, LSR #23
l4113: sbcLE R3, R6, #10682368
l4114: tstVS R6, #220
l4115: bicMI R2, R14, R9
l4116: b l4123
l4117: add R1, R0, #58
l4118: orrLT R6, R10, R7
l4119: subPL R1, R8, R10
l4120: mvnCC R12, #48
l4121: rscs R7, R4, R7
l4122: b l4124
l4123: b l4118
l4124: ldrCC R0, [sp, #-24]
l4125: adcs R7, R2, R14
l4126: orrs R0, R3, R14, RRX 
l4127: addVCs R7, R3, R4, ROR R9
l4128: ldmIA R13!, {R9}
l4129: orrs R8, R7, R11, LSR #9
l4130: orrs R10, R2, R4, LSR R7
l4131: b l4135
l4132: add R1, R0, #122
l4133: teq R7, R8, RRX 
l4134: b l4136
l4135: b l4133
l4136: bGE l4144
l4137: add R1, R0, #187
l4138: and R4, R8, R11, ROR R12
l4139: mvnNEs R0, R15, RRX 
l4140: tstCC R15, #1476395008
l4141: adcs R1, R8, #1073741827
l4142: eorHIs R1, R2, #222
l4143: b l4145
l4144: b l4138
l4145: bicVS R7, R14, R12
l4146: bicEQs R1, R4, R1, ASR #27
l4147: eorHIs R9, R8, R4, LSR #7
l4148: clzVS R2, R14
l4149: cmn R11, #-536870899
l4150: eorLSs R9, R10, R1, RRX 
l4151: adc R7, R11, R10, ROR #2
l4152: movs R8, R5, ASR #0
l4153: subs R12, R15, R6, ROR #4
l4154: andMI R1, R11, R14, ASR R7
l4155: nop
l4156: sbcNEs R11, R9, R1, LSR #30
l4157: clzEQ R5, R2
l4158: sbcs R4, R2, #-1610612724
l4159: rscCS R10, R10, R3, RRX 
l4160: adc R7, R15, #1015808
l4161: cmpVS R3, #57409536
l4162: orr R0, R15, R3, ASR #26
l4163: teq R14, R12
l4164: rsbs R5, R6, R5, LSL R5
l4165: sub R14, R4, R14, RRX 
l4166: mvnGT R3, R11, LSR #1
l4167: sbcNEs R12, R4, R1, RRX 
l4168: cmpEQ R14, R10
l4169: teq R11, R4
l4170: orrs R3, R1, R3, RRX 
l4171: nop
l4172: subLE R0, R7, R9
l4173: subMIs R2, R2, R10, RRX 
l4174: b l4178
l4175: add R1, R0, #140
l4176: tst R11, #884736
l4177: b l4179
l4178: b l4176
l4179: strGEB R2, [sp, #-8]
l4180: b l4185
l4181: add R1, R0, #114
l4182: subs R14, R15, R7, RRX 
l4183: tstCS R6, R3, ROR #4
l4184: b l4186
l4185: b l4182
l4186: mvnGE R12, #69
l4187: cmpCS R12, R7, RRX 
l4188: ldr R8, [sp], #-56
l4189: add R4, R2, R7, ROR R8
l4190: adc R9, R15, R12
l4191: rscs R12, R14, #672
l4192: adcVCs R8, R1, R11, LSL #3
l4193: b l4197
l4194: add R1, R0, #231
l4195: rscs R9, R14, R0
l4196: b l4198
l4197: b l4195
l4198: rsbCCs R0, R10, #12672
l4199: sub R10, R1, R15
l4200: andCC R14, R8, R1, RRX 
l4201: cmp R14, R14, ROR #25
l4202: strB R3, [sp, #+51]
l4203: sbc R14, R8, R11, LSL #18
l4204: adcVC R12, R15, R12
l4205: orrVC R0, R4, R11
l4206: andMI R7, R7, R15, RRX 
l4207: clz R9, R9
l4208: adcLT R0, R9, #44
l4209: sub R8, R5, R11, ROR #10
l4210: addVSs R9, R10, R5, LSR #1
l4211: tst R1, #-1610612736
l4212: adc R5, R10, #604
l4213: orrGE R2, R14, R1, ROR #14
l4214: eorGE R1, R2, #5376
l4215: teqGE R6, R9
l4216: movs R8, #536870913
l4217: adcCSs R2, R0, R1
l4218: addEQ R14, R7, #-469762046
l4219: bic R12, R10, R10, ASR R10
l4220: orr R2, R1, R9, LSR R3
l4221: teqGT R11, R1, RRX 
l4222: teqLE R7, R1, LSR R0
l4223: mov R9, R12, LSL #19
l4224: mov R2, #20
l4225: ldr R8, [sp], +R2
l4226: mvnVSs R3, R2, LSL R12
l4227: stmGEIB R13, {R2, R4, R5, R7, R10, R11, R12, R13, R15}
l4228: sbcs R11, R3, R14
l4229: tst R4, R12, LSL #11
l4230: ldr R12, [sp, #-28]!
l4231: bLT l4241
l4232: clzHI R8, R2
l4233: movVSs R0, R15
l4234: eors R7, R2, R5, ASR #1
l4235: tstCS R11, R5, LSR R2
l4236: teq R4, R7, LSR R7
l4237: tstMI R9, R4, LSR #11
l4238: adcVC R12, R0, R3, RRX 
l4239: adcHIs R10, R0, R8, ASR R7
l4240: eors R12, R11, #1664
l4241: ands R5, R2, #2048000
l4242: clz R10, R11
l4243: movCS R12, R10, ASR #27
l4244: mov R10, R6, RRX 
l4245: subs R1, R10, R9
l4246: mov R2, #16
l4247: str R10, [sp], +R2
l4248: bVS l4254
l4249: add R1, R0, #70
l4250: sub R4, R14, R12, RRX 
l4251: bic R3, R15, R14, RRX 
l4252: addCCs R7, R8, #256
l4253: b l4255
l4254: b l4250
l4255: mov R3, #12
l4256: strMIB R0, [sp, +R3]
l4257: bHI l4259
l4258: sbcs R0, R1, R12, ROR R11
l4259: mvnLS R1, R0, ASR R4
l4260: subVSs R14, R6, R9, ASR R4
l4261: cmnGT R14, R4, ROR R4
l4262: mvnVCs R10, R8
l4263: rsb R6, R12, R10, ASR #31
l4264: teq R14, #1600
l4265: rscNEs R9, R9, R0, LSR R11
l4266: sub R11, R11, #-1879048184
l4267: stmIA R13!, {R1, R2, R7, R9, R11, R14, R15}
l4268: cmnCS R14, #8640
l4269: orrVS R8, R15, R2, LSR #23
l4270: movLSs R6, R5
l4271: mvnEQs R4, #3555328
l4272: cmpGE R11, #-268435451
l4273: clz R2, R9
l4274: mov R4, #20
l4275: str R14, [sp, +R4]!
l4276: mvn R0, R5
l4277: eors R6, R3, #-234881024
l4278: and R0, R1, #448
l4279: orrLE R12, R7, R7, RRX 
l4280: bicGT R12, R7, R7, ASR #7
l4281: bic R5, R6, R2
l4282: bHI l4290
l4283: adc R1, R1, R10, RRX 
l4284: rscs R5, R14, R5
l4285: subs R6, R4, R5, ASR #24
l4286: mov R9, R12
l4287: cmpVS R3, R10, ROR R4
l4288: ands R11, R7, R0, LSR R10
l4289: andPLs R12, R10, R12, ASR #22
l4290: subs R1, R9, R0, LSL #8
l4291: orrNE R5, R8, #14155776
l4292: sbcCS R3, R2, R14
l4293: bCC l4295
l4294: eorMIs R6, R0, R10, LSL #7
l4295: orrLS R12, R10, R15, ROR #4
l4296: rsb R10, R1, R11
l4297: b l4302
l4298: add R1, R0, #114
l4299: movCSs R2, #2368
l4300: clzHI R6, R6
l4301: b l4303
l4302: b l4299
l4303: eor R12, R3, R2, LSR #24
l4304: eor R9, R2, R11
l4305: tstVS R1, #587202560
l4306: sbcEQs R6, R3, R14
l4307: adcs R14, R14, #205520896
l4308: rscPLs R8, R0, R4
l4309: rsbCCs R5, R5, #35913728
l4310: adds R9, R7, R7
l4311: nop
l4312: adcEQ R14, R7, R2
l4313: sbc R3, R9, #1020
l4314: andCC R8, R1, R2
l4315: b l4320
l4316: cmn R0, R14, RRX 
l4317: subCCs R9, R15, R7, ASR #10
l4318: adcCC R3, R3, R6, LSL R7
l4319: tstGE R10, R7, LSL #24
l4320: andCSs R8, R9, R2, ROR #25
l4321: rscEQs R5, R8, R3, LSL R8
l4322: subVSs R3, R3, R1
l4323: rsbPLs R14, R8, #-1073741822
l4324: subs R3, R1, R15
l4325: mov R4, #16
l4326: ldr R9, [sp], -R4
l4327: b l4337
l4328: subLEs R2, R8, #31744
l4329: teq R6, R12
l4330: orrHI R12, R1, R5
l4331: cmp R8, #19136512
l4332: adds R6, R10, R8
l4333: eorGTs R12, R9, #14400
l4334: adc R11, R2, #6553600
l4335: teqLS R3, #1073741827
l4336: cmn R12, R1, RRX 
l4337: sub R14, R1, R7, LSL R10
l4338: sbc R9, R15, R10, LSL #25
l4339: stmNEIB R13, {R4, R7}
l4340: cmp R9, R10, LSR R9
l4341: cmnEQ R5, R12, LSL R9
l4342: rsbMI R2, R1, #4587520
l4343: cmpGE R6, R11, ROR R8
l4344: rscs R3, R12, R8, ROR R11
l4345: orrHIs R10, R4, R9, RRX 
l4346: b l4356
l4347: mvnNEs R14, R4, ASR R10
l4348: adcs R14, R10, R12, ROR #7
l4349: teqLT R9, R11, LSR #4
l4350: subMIs R8, R2, R8, LSL R6
l4351: teq R12, R2, RRX 
l4352: tstPL R0, R15, ROR #20
l4353: cmnGE R8, R6, ASR #23
l4354: adds R7, R3, R14, ROR R4
l4355: subGTs R10, R10, R2, ASR R7
l4356: clzGT R9, R7
l4357: andVS R8, R4, R8, ROR R3
l4358: mvn R10, #805306376
l4359: addMI R6, R8, R3
l4360: rscs R11, R4, R7, LSL R2
l4361: orrs R7, R10, #5767168
l4362: rscGT R12, R12, R11
l4363: bicGT R6, R5, R11, LSL #30
l4364: clzCS R9, R12
l4365: orrCC R1, R12, R10, LSR R14
l4366: ldmDA R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l4367: ldrCC R11, [sp, #+24]
l4368: cmnPL R12, #50069504
l4369: cmp R3, R11, RRX 
l4370: movs R0, R14, RRX 
l4371: clz R2, R11
l4372: bVS l4380
l4373: bicVS R7, R8, #335544320
l4374: subGTs R6, R5, #58368
l4375: subCCs R11, R7, R2, LSR #20
l4376: subGE R6, R6, R14, LSR R4
l4377: eors R11, R3, R4
l4378: ands R4, R15, R8
l4379: subs R2, R1, R3
l4380: mov R9, R14, LSR R0
l4381: mov R1, #18
l4382: ldrB R5, [sp, +R1]
l4383: mvnGTs R14, R14, ROR R14
l4384: ldr R11, [sp], #+20
l4385: ands R4, R9, #274432
l4386: stmIA R13, {R1, R2, R4, R5, R10, R12}
l4387: cmnLS R10, R2, ASR R7
l4388: mvn R2, R9
l4389: rsbMI R12, R9, R7, ROR #9
l4390: subGTs R8, R8, R14, LSR #26
l4391: bics R9, R9, R3, LSL R5
l4392: clzLS R12, R10
l4393: andVS R6, R9, R3, ASR #11
l4394: teqVC R7, R7, ASR #1
l4395: cmpLE R0, R7, LSR R5
l4396: nop
l4397: sbcCS R3, R10, R4
l4398: ldmIB R13!, {R1, R2, R3, R4, R5, R7, R8, R10, R11, R14}
l4399: ands R0, R0, R5, RRX 
l4400: andHI R2, R6, R2, LSL R7
l4401: ands R7, R2, R8, LSR #24
l4402: adcPLs R14, R12, #624
l4403: eor R8, R12, R12, ASR #5
l4404: tst R1, R14, LSL #19
l4405: adcs R3, R8, R10, RRX 
l4406: subGEs R6, R1, R10, ASR R8
l4407: ldmDA R13!, {R5}
l4408: cmnEQ R0, #868352
l4409: rscs R7, R11, R7
l4410: b l4416
l4411: add R1, R0, #129
l4412: sbcs R7, R4, R6, LSL #4
l4413: mvnNEs R7, R0, RRX 
l4414: movMI R3, R10, LSR #23
l4415: b l4417
l4416: b l4412
l4417: movs R2, #1408
l4418: bNE l4422
l4419: rsb R6, R6, R1
l4420: subs R11, R6, R12, LSL R14
l4421: movs R9, #2097152
l4422: rscs R12, R2, #335544320
l4423: subs R10, R11, R1, LSL R2
l4424: mov R0, #8
l4425: ldr R12, [sp, +R0]!
l4426: mov R14, #40
l4427: strB R9, [sp, -R14]
l4428: bMI l4432
l4429: mvnHI R6, R8
l4430: teqGT R12, R4, LSL #9
l4431: sbcGTs R12, R14, R9, LSL #11
l4432: mvnCSs R14, R8, LSR #23
l4433: orrGT R0, R5, R1
l4434: mvnNEs R4, R5
l4435: tstNE R0, #13369344
l4436: ands R10, R8, R0, LSR R9
l4437: cmpNE R2, R6, LSL R6
l4438: add R0, R7, #48640
l4439: eorCCs R0, R14, R6, ROR #30
l4440: tst R1, R1, LSR #9
l4441: mvnVS R6, R12, ROR R9
l4442: sbcLE R14, R4, R10, ASR R11
l4443: clzLS R8, R4
l4444: sub R10, R5, R4, LSL #13
l4445: cmp R8, R2, ASR #19
l4446: teqGT R12, #1879048195
l4447: ands R6, R6, #37376
l4448: movEQs R1, R12
l4449: bics R10, R3, #3997696
l4450: str R8, [sp, #-8]!
l4451: andGE R5, R8, #83
l4452: bic R11, R11, R15, RRX 
l4453: mov R14, #15
l4454: ldrB R7, [sp, -R14]
l4455: cmpLS R8, R12, LSR R5
l4456: rsbNE R2, R7, R3, LSR R11
l4457: subHIs R2, R14, R11
l4458: rsc R1, R6, R2, ROR R5
l4459: cmn R15, R2
l4460: cmnVC R1, R5
l4461: mvnGTs R4, R2
l4462: bNE l4465
l4463: rsbCCs R0, R7, R2
l4464: movs R14, #1073741879
l4465: bics R4, R5, #1019904
l4466: ands R6, R3, R7, ASR #19
l4467: tstGE R12, R5, LSR R10
l4468: rsbMIs R11, R1, #756
l4469: b l4477
l4470: teqNE R1, R14, ROR R1
l4471: sub R4, R1, R11
l4472: mvnCS R12, R0, ASR R0
l4473: rsbLTs R12, R5, R12, ASR R0
l4474: rsbCSs R8, R5, R11, ROR R9
l4475: tstMI R10, #1610612738
l4476: movHI R11, R2, ROR #2
l4477: movLE R6, R8
l4478: ands R14, R1, R5, LSL R5
l4479: movVS R10, R3, ROR R7
l4480: clzCC R0, R5
l4481: cmpLS R7, R9
l4482: teq R2, #14912
l4483: clzCC R0, R6
l4484: bNE l4489
l4485: add R1, R0, #138
l4486: and R14, R0, #63744
l4487: orrs R4, R15, R14
l4488: b l4490
l4489: b l4486
l4490: cmnVS R1, R14, LSL #16
l4491: rsbCC R5, R4, #268435457
l4492: bics R9, R14, R0, RRX 
l4493: adcGTs R6, R15, R14, RRX 
l4494: addEQ R2, R5, R5
l4495: strPLB R3, [sp, #-26]
l4496: sub R9, R6, R14, LSL R5
l4497: cmpNE R10, R9
l4498: orrs R5, R6, R2, ASR R7
l4499: movLEs R11, R6, ASR #7
l4500: rscLT R14, R10, #41984
l4501: rsbLTs R3, R12, R15, RRX 
l4502: subs R3, R0, R0, LSL R4
l4503: addLS R9, R0, R11, LSL #23
l4504: rscCS R6, R1, R1, RRX 
l4505: sub R5, R14, R2
l4506: nop
l4507: rscHIs R11, R14, R4, ASR R9
l4508: bLT l4512
l4509: movNE R1, R8, RRX 
l4510: rscGT R0, R6, #1936
l4511: subEQ R10, R9, R5, LSR #9
l4512: movGEs R10, R0, ROR R0
l4513: mov R4, #60
l4514: ldr R10, [sp, -R4]!
l4515: rsbLTs R10, R4, R11, LSR #2
l4516: adcCCs R11, R3, R0, RRX 
l4517: cmnPL R10, R12, ASR #6
l4518: movs R14, R14
l4519: addEQs R1, R14, R3, LSR #20
l4520: tst R12, #15616
l4521: clzLT R7, R12
l4522: eors R1, R15, R4, LSL #25
l4523: stmIB R13!, {R0, R1, R2, R5, R8, R9, R10, R12}
l4524: adcCCs R14, R1, R12, RRX 
l4525: sbc R4, R2, #65798144
l4526: tst R15, R5
l4527: bicLS R0, R11, R6
l4528: adc R4, R4, #88
l4529: rsbHIs R3, R10, #63744
l4530: rscs R9, R9, #105472
l4531: cmn R3, R14, RRX 
l4532: bCS l4536
l4533: add R1, R0, #194
l4534: rsbVS R11, R6, R1
l4535: b l4537
l4536: b l4534
l4537: bCS l4545
l4538: eorVC R6, R9, R4
l4539: sbcs R14, R5, R11, RRX 
l4540: cmnLE R12, R2, LSR R14
l4541: adcCSs R11, R2, R8, ASR #19
l4542: tst R4, R0, ASR R0
l4543: rsc R6, R4, R8, RRX 
l4544: clz R3, R7
l4545: cmnLE R8, R11, LSL #5
l4546: b l4550
l4547: add R1, R0, #39
l4548: cmpLT R14, R1, LSR #27
l4549: b l4551
l4550: b l4548
l4551: subCC R7, R9, #805306368
l4552: cmpCC R6, R0, ROR R7
l4553: cmpLE R3, #0
l4554: rscs R6, R10, R12, ROR R10
l4555: adc R5, R14, R9, ASR #20
l4556: ldmIB R13!, {R0, R1, R6, R7, R9, R10, R11}
l4557: subs R9, R7, R2
l4558: eor R5, R5, R9
l4559: cmnLS R12, #37
l4560: bMI l4565
l4561: add R1, R0, #193
l4562: tstHI R4, R4
l4563: sbcs R1, R2, R11, ROR R1
l4564: b l4566
l4565: b l4562
l4566: mov R9, #60
l4567: str R12, [sp, -R9]
l4568: adcs R2, R14, R7, LSR R7
l4569: mvnMIs R10, R9
l4570: andLT R5, R1, #-939524093
l4571: adcGT R11, R7, R3, RRX 
l4572: sbcPLs R9, R9, R11, ASR R10
l4573: orrMIs R5, R1, R4
l4574: orrVC R11, R8, R2, LSR R12
l4575: sbc R4, R10, R4, ASR #8
l4576: cmnLT R1, R1
l4577: stmIB R13, {R3}
l4578: b l4583
l4579: add R1, R0, #173
l4580: tstGE R0, R11
l4581: sub R0, R8, #-2147483638
l4582: b l4584
l4583: b l4580
l4584: cmnLE R6, R8, LSR R2
l4585: mvn R5, R8, RRX 
l4586: ldmIA R13!, {R4, R8}
l4587: eors R2, R1, R7, ROR #12
l4588: orr R14, R15, #1610612746
l4589: b l4594
l4590: add R1, R0, #202
l4591: rsb R12, R8, #128974848
l4592: rscLEs R10, R6, R8, ASR R14
l4593: b l4595
l4594: b l4591
l4595: orrLEs R14, R8, R5, ASR #23
l4596: adds R4, R12, R0, ROR #9
l4597: subs R7, R0, #1638400
l4598: cmn R15, R10, LSR #8
l4599: cmp R14, R8, LSL R3
l4600: orrNE R0, R5, #50855936
l4601: addEQ R12, R4, R1
l4602: eorHI R2, R15, R11
l4603: ldrHIB R1, [sp, #+2]
l4604: sbcPLs R6, R0, R6, RRX 
l4605: sub R11, R3, #909312
l4606: bGE l4609
l4607: adcHIs R9, R12, R0
l4608: subGTs R1, R1, #-1073741821
l4609: cmn R2, R5, LSL #27
l4610: eors R9, R2, R6, LSR #6
l4611: cmpHI R11, R10, LSL R4
l4612: cmpPL R6, R7, LSL #22
l4613: str R12, [sp, #-64]!
l4614: andLEs R1, R10, R11, RRX 
l4615: teqGT R11, R9
l4616: eorCC R14, R4, R14
l4617: tstLE R9, R0, ROR R1
l4618: addLE R11, R15, #39936
l4619: b l4627
l4620: subVSs R3, R5, R7
l4621: teqMI R12, #1136
l4622: teq R4, R1
l4623: teq R7, R3
l4624: subLTs R3, R9, R5, ASR R3
l4625: bicCS R14, R1, #42
l4626: movGE R6, R1, LSR R7
l4627: clzCS R7, R12
l4628: bicLTs R5, R1, R10
l4629: eorCC R2, R11, R8, ROR R2
l4630: sub R2, R8, R12, LSR R14
l4631: bic R3, R15, R6
l4632: rsbGT R5, R6, R4, LSL R0
l4633: cmpEQ R12, R0
l4634: rsbVS R8, R11, #2883584
l4635: andMI R0, R12, R14, ASR R11
l4636: bicHI R6, R11, #91226112
l4637: mvn R8, R1, LSL #30
l4638: movPL R6, R15, LSR #6
l4639: bicCC R4, R4, R9, LSR R7
l4640: ldrB R2, [sp, #+49]
l4641: eor R1, R1, #9895936
l4642: stmIB R13!, {R0, R14}
l4643: bEQ l4652
l4644: add R1, R0, #167
l4645: rsc R2, R7, #864
l4646: andMI R0, R11, R15, ASR #28
l4647: eorGTs R9, R2, R2, LSL #4
l4648: adcGE R10, R2, R15, RRX 
l4649: ands R12, R14, R3, RRX 
l4650: orrMIs R0, R11, #813694976
l4651: b l4653
l4652: b l4645
l4653: ldrB R0, [sp, #+8]
l4654: subGTs R12, R2, R3, ROR #13
l4655: eorCSs R4, R2, R12, ROR R12
l4656: b l4662
l4657: add R1, R0, #135
l4658: mvn R12, R9, ROR R1
l4659: andGEs R12, R5, R1, ASR #15
l4660: bicEQ R5, R7, R14, LSL #30
l4661: b l4663
l4662: b l4658
l4663: eorCCs R9, R12, #600
l4664: ands R1, R10, R3
l4665: orr R4, R0, R2
l4666: teqVC R10, R12, LSL #6
l4667: subGT R1, R11, R0, ASR R4
l4668: bPL l4674
l4669: adcCC R14, R9, #641728512
l4670: rsbMI R11, R6, R10, RRX 
l4671: andGEs R3, R6, R9
l4672: tstMI R3, R5
l4673: orrCS R11, R7, R1
l4674: teqVS R1, R14, ASR R3
l4675: orrVC R1, R3, R2, ROR #2
l4676: eor R7, R3, #16256
l4677: bVC l4685
l4678: add R1, R0, #151
l4679: cmn R6, R1, RRX 
l4680: cmnLE R1, R1, RRX 
l4681: movMI R4, #294912
l4682: bics R2, R9, R5
l4683: eors R1, R10, #536870915
l4684: b l4686
l4685: b l4679
l4686: bic R14, R4, R0, ASR R5
l4687: b l4688
l4688: andHIs R14, R4, R15
l4689: eorGT R0, R0, #9109504
l4690: cmnCC R9, R15
l4691: subHIs R0, R4, R12, ASR R6
l4692: subPLs R0, R1, R10, ROR #4
l4693: sub R0, R10, R15, LSL #14
l4694: subGT R9, R7, #4544
l4695: bicEQs R5, R1, #200
l4696: addCS R10, R1, #118
l4697: b l4703
l4698: add R1, R0, #138
l4699: subLSs R3, R6, R8, LSR R1
l4700: andNE R3, R4, #1073741878
l4701: cmpEQ R14, R9, ROR #9
l4702: b l4704
l4703: b l4699
l4704: sbcMI R4, R3, R14, LSR R9
l4705: cmp R3, R12
l4706: andVCs R3, R1, R9, ROR #5
l4707: b l4715
l4708: add R1, R0, #239
l4709: adc R10, R12, R14, ASR R0
l4710: andLEs R4, R7, R1
l4711: sbcs R11, R12, #13824
l4712: eorCC R12, R1, #1968
l4713: eorMI R6, R4, R10
l4714: b l4716
l4715: b l4709
l4716: sbcHI R8, R12, R4, LSR #24
l4717: add R5, R1, R1, ROR R1
l4718: cmnVS R12, R12, LSL #17
l4719: subNE R6, R9, R0, LSR R1
l4720: rscVCs R6, R7, R1, LSR #8
l4721: orrs R1, R12, #268435456
l4722: addNE R1, R1, #-536870906
l4723: subVC R14, R6, R1, ASR #31
l4724: adc R8, R14, #5439488
l4725: mov R10, R1
l4726: sub R5, R9, R14, LSL #16
l4727: ldmIB R13!, {R1, R2, R3, R4, R5, R6, R8, R9, R11, R14}
l4728: andHI R11, R10, R7, RRX 
l4729: orr R14, R4, R5, ROR R12
l4730: mov R6, #20
l4731: ldrCCB R4, [sp, -R6]
l4732: rscPLs R1, R10, R7, RRX 
l4733: subEQs R5, R3, R1, ROR #29
l4734: adcVS R9, R2, R5, LSR R8
l4735: teq R9, R4, RRX 
l4736: orr R10, R10, #1728
l4737: clz R6, R6
l4738: mov R8, #12
l4739: str R9, [sp, +R8]!
l4740: teqNE R3, #8128
l4741: nop
l4742: bLS l4750
l4743: add R1, R0, #80
l4744: bics R3, R12, #133169152
l4745: orrVS R5, R2, R0
l4746: cmp R4, R10, ROR R8
l4747: rsbPL R10, R11, R14
l4748: orr R8, R0, #40
l4749: b l4751
l4750: b l4744
l4751: bPL l4758
l4752: adcCC R10, R2, R6, LSL #19
l4753: rscEQs R11, R7, R2
l4754: add R14, R4, R11, ROR R2
l4755: cmn R2, R0, RRX 
l4756: orrHI R8, R3, R6, LSR #30
l4757: rsc R10, R6, R12, ASR #24
l4758: teq R6, R14
l4759: addCS R4, R6, R8, LSR #31
l4760: subGTs R3, R11, R7
l4761: subGTs R2, R1, R5, RRX 
l4762: b l4769
l4763: add R1, R0, #146
l4764: orrs R9, R2, R11, ROR R6
l4765: mov R2, #19398656
l4766: tstLS R10, R0
l4767: subNE R3, R9, #1409286147
l4768: b l4770
l4769: b l4764
l4770: b l4774
l4771: add R1, R0, #241
l4772: adcs R11, R1, R2
l4773: b l4775
l4774: b l4772
l4775: eorHI R12, R10, R6
l4776: movEQ R6, #296
l4777: ldr R1, [sp, #+4]
l4778: teqGE R5, R4, ROR #18
l4779: ands R7, R10, R11, LSL R2
l4780: cmp R8, R11
l4781: eor R5, R3, R0
l4782: orrCSs R9, R7, R1, LSR R8
l4783: mvnCSs R3, R5, RRX 
l4784: bGT l4792
l4785: add R1, R0, #79
l4786: mvnEQs R11, #4288
l4787: tstLT R15, #918552576
l4788: rsbLT R1, R15, R15
l4789: rsb R1, R11, R4, RRX 
l4790: subVSs R4, R0, R1, LSR R10
l4791: b l4793
l4792: b l4786
l4793: adc R6, R1, R2, ASR #14
l4794: adcs R5, R11, #2128
l4795: subLE R14, R10, #872415232
l4796: eor R11, R9, #25344
l4797: andCSs R12, R11, R11, ROR R1
l4798: mvn R11, R15, ROR #17
l4799: subNEs R14, R6, #896
l4800: teqGT R5, R15
l4801: cmpCC R2, R9, ROR R8
l4802: mvnHIs R7, #210
l4803: mvns R14, #352321536
l4804: subLTs R14, R3, R14, LSR #18
l4805: rsbLTs R10, R0, R14, LSR #7
l4806: adds R6, R2, R2, RRX 
l4807: rsb R10, R0, R6, LSL R8
l4808: ldmDA R13!, {R7}
l4809: andNE R0, R12, R5
l4810: bicPL R11, R6, R5, LSR #14
l4811: b l4812
l4812: clz R14, R14
l4813: cmp R5, R14
l4814: tstCC R12, R1
l4815: nop
l4816: cmpHI R7, R4, ROR R1
l4817: b l4823
l4818: add R1, R0, #80
l4819: sub R5, R0, #9984
l4820: rsb R8, R15, R7
l4821: cmpLS R7, R10, RRX 
l4822: b l4824
l4823: b l4819
l4824: subGE R4, R8, R11
l4825: bNE l4833
l4826: add R1, R0, #19
l4827: sbcEQ R11, R9, R9
l4828: rsbPLs R14, R8, R12
l4829: cmnLE R12, R7
l4830: adds R5, R3, #1342177282
l4831: teq R6, R10
l4832: b l4834
l4833: b l4827
l4834: b l4836
l4835: clz R7, R12
l4836: subLS R7, R4, R3
l4837: subCC R1, R5, R1
l4838: adcLS R3, R14, R6, ROR R6
l4839: eorGT R14, R15, #696254464
l4840: andGTs R14, R5, R8, LSR R12
l4841: add R9, R11, #13041664
l4842: b l4845
l4843: movMIs R2, R6
l4844: cmp R14, R9, ASR R10
l4845: rsc R7, R11, R2
l4846: bicVSs R12, R6, R6, RRX 
l4847: cmpEQ R9, #1073741863
l4848: sbcs R4, R4, R3, ASR #18
l4849: ldmDB R13!, {R0, R1, R2, R3, R4, R7, R8, R9, R10, R14}
l4850: and R12, R9, R0, ASR R12
l4851: mov R1, #16128
l4852: b l4856
l4853: add R1, R0, #77
l4854: movLEs R3, R9
l4855: b l4857
l4856: b l4854
l4857: rscMI R5, R15, R8, LSR #2
l4858: b l4864
l4859: add R1, R0, #172
l4860: cmp R0, R10
l4861: cmp R9, R4, RRX 
l4862: orr R5, R0, #184320
l4863: b l4865
l4864: b l4860
l4865: andLEs R6, R2, R7, LSL #24
l4866: bLS l4871
l4867: add R1, R0, #182
l4868: mvnGE R14, R1, ROR R8
l4869: subCCs R11, R7, #1648
l4870: b l4872
l4871: b l4868
l4872: ands R4, R1, R9
l4873: rscHIs R14, R8, R6
l4874: mvnLT R8, R3
l4875: adcGTs R5, R11, R11, LSR R1
l4876: rsbs R5, R5, R6, LSL R0
l4877: cmp R9, #39
l4878: ldmDA R13!, {R3}
l4879: clzGE R3, R9
l4880: bics R4, R15, R5, LSL #6
l4881: b l4886
l4882: movs R8, R15
l4883: teqEQ R0, #-1677721598
l4884: rscLS R6, R14, R4, LSR #29
l4885: adc R1, R1, R11
l4886: clzPL R4, R1
l4887: subGEs R4, R4, R15
l4888: str R8, [sp], #+12
l4889: adcs R3, R10, #60160
l4890: add R3, R3, #62652416
l4891: sub R9, R2, R15, ASR #24
l4892: sbcMIs R0, R7, R11, ROR #30
l4893: bNE l4898
l4894: tst R11, R3, ROR #20
l4895: tstPL R14, R4
l4896: addMIs R8, R3, R1
l4897: rscLE R11, R15, R7
l4898: subGT R4, R0, R7, LSR #3
l4899: b l4903
l4900: add R1, R0, #47
l4901: sub R14, R15, #-2147483602
l4902: b l4904
l4903: b l4901
l4904: subNEs R4, R5, R3, RRX 
l4905: subNE R6, R2, R6
l4906: teqCC R3, R11, RRX 
l4907: rsbPLs R10, R1, R3
l4908: subHI R12, R3, R8, ASR #28
l4909: bHI l4913
l4910: teq R0, R6, LSL R7
l4911: rscs R14, R14, R2
l4912: and R11, R7, #335544320
l4913: bicLEs R3, R7, #587202560
l4914: tst R3, R9, ASR R6
l4915: teq R12, R2
l4916: cmp R15, R5
l4917: ldrEQ R11, [sp, #-12]
l4918: sbcVS R4, R9, R0, ROR R0
l4919: rscs R3, R12, R10
l4920: adcMIs R9, R4, R7, RRX 
l4921: movVC R12, R6
l4922: sbcGT R14, R5, R12, LSL #13
l4923: subs R1, R14, #1073741832
l4924: tst R6, R2
l4925: subGTs R1, R1, R0
l4926: mvns R11, R6, LSL R1
l4927: ldrB R2, [sp, #-26]
l4928: rsc R5, R8, R9, LSL R14
l4929: orr R7, R7, R10
l4930: teq R15, #268435466
l4931: ldmDA R13!, {R2, R4, R6, R8, R12, R14}
l4932: adcLTs R6, R11, #1610612746
l4933: bMI l4935
l4934: adcEQs R2, R1, R15
l4935: movNE R10, #4
l4936: tst R2, #218
l4937: subHIs R7, R11, R7, LSL #6
l4938: sbcs R8, R1, R4, ROR R9
l4939: clzGE R9, R10
l4940: bLT l4947
l4941: subCS R14, R1, R1, LSL #4
l4942: tstMI R1, R5
l4943: movLEs R14, #16064
l4944: subLSs R10, R12, R2
l4945: subs R4, R0, R11
l4946: teq R10, #218112
l4947: rsbs R8, R5, #448
l4948: mvnMIs R8, R8
l4949: adds R5, R11, #60672
l4950: clzPL R0, R1
l4951: movVCs R0, R7, RRX 
l4952: adcEQ R6, R8, R8
l4953: tst R11, #6029312
l4954: rscs R3, R7, R12, LSL R0
l4955: rsb R1, R14, R10, LSR #28
l4956: subs R10, R3, R3
l4957: bPL l4965
l4958: add R1, R0, #141
l4959: cmp R9, R14, LSR R4
l4960: rsbHIs R10, R6, #-1207959550
l4961: adc R10, R12, R12, ROR #15
l4962: sbcCC R3, R7, #83886080
l4963: add R11, R2, R10, RRX 
l4964: b l4966
l4965: b l4959
l4966: bMI l4971
l4967: subLT R0, R14, #2176
l4968: tstVC R9, R8, ASR #16
l4969: tst R12, R5, ASR #1
l4970: orrLE R8, R0, R15, ROR #1
l4971: adcVCs R5, R11, #125829120
l4972: bicPL R4, R5, #-2080374784
l4973: ldmMIIA R13, {R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l4974: mvnNE R5, R15
l4975: nop
l4976: nop
l4977: subs R2, R5, R6, RRX 
l4978: str R6, [sp], #-8
l4979: subLTs R8, R8, R9, ASR R10
l4980: subGTs R10, R5, R14
l4981: stmIB R13, {R1, R3, R4, R7, R8, R10, R15}
l4982: b l4989
l4983: add R1, R0, #58
l4984: andGE R10, R2, R14
l4985: mov R4, #3473408
l4986: tst R2, R3, ASR R12
l4987: subEQ R5, R7, R10, ROR #9
l4988: b l4990
l4989: b l4984
l4990: mvnEQs R7, R8
l4991: orrs R6, R0, R12
l4992: subs R12, R3, #752
l4993: eors R5, R4, #486539264
l4994: eorGE R8, R12, R3, ASR R5
l4995: sub R7, R11, R2, LSL #1
l4996: cmpNE R14, R3
l4997: add R14, R4, #262144
l4998: adcMI R14, R3, R8, LSR #12
l4999: sub R14, R11, R1, ASR R2
l5000: sbcCCs R10, R14, R7, ROR #3
end: b end

