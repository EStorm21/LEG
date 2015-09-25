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
val1: .word 597363071
next1:ldr R2, val2
b next2
val2: .word 2105659713
next2:ldr R3, val3
b next3
val3: .word 2380883307
next3:ldr R4, val4
b next4
val4: .word 1291795520
next4:ldr R5, val5
b next5
val5: .word 3809272940
next5:ldr R6, val6
b next6
val6: .word 4185127064
next6:ldr R7, val7
b next7
val7: .word 470521122
next7:ldr R8, val8
b next8
val8: .word 1525908749
next8:ldr R9, val9
b next9
val9: .word 2197768960
next9:ldr R10, val10
b next10
val10: .word 2276764516
next10:ldr R11, val11
b next11
val11: .word 2068359372
next11:ldr R12, val12
b next12
val12: .word 2269306874
next12:ldr R14, val14
b next14
val14: .word 3303907215

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 717861365
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 1881484978
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3156881037
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 2964263581
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 2941944133
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 1754835664
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 1349027975
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 67129943
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 394895356
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 2351518548
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 2951545652
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 3530470167
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 286582746
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 1494538208
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 1242974268
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 4291211771
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 1140802260
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 1489859975
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 3773341758
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 3768693341
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 2008338120
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: orrGTs R1, R0, #37224448
l2: rscs R11, R14, R11, LSL #17
l3: mvnVS R8, R4
l4: b l5
l5: sbcVS R0, R12, #946176
l6: teqHI R9, R14, ROR #2
l7: tstLT R12, R11, LSR R7
l8: ands R5, R8, R7, LSR #9
l9: adc R7, R8, R8
l10: subGE R14, R0, R3, LSL R9
l11: tst R7, R6, LSR R14
l12: cmn R0, #3792
l13: addGE R14, R9, R14, LSL #19
l14: tstGT R2, R4, ROR R3
l15: adcVSs R2, R11, R3
l16: addLS R5, R10, R14
l17: cmn R10, R1, LSL R4
l18: tst R6, R5, ASR R9
l19: bLT l27
l20: orrNE R0, R3, R2, LSR R2
l21: teqGT R0, #132
l22: bicLSs R9, R11, R1, RRX 
l23: rsbNE R11, R9, #659456
l24: orr R7, R4, R14, RRX 
l25: cmnCS R6, #43
l26: tst R6, R10, LSR R10
l27: sub R12, R8, R15, RRX 
l28: orrNEs R8, R5, R4
l29: orr R9, R10, R11, RRX 
l30: sbcs R5, R2, #720896
l31: orr R0, R4, R0
l32: sub R1, R6, R11, ROR #19
l33: teq R11, R3, RRX 
l34: movNEs R10, #872415233
l35: cmp R6, R9
l36: eor R11, R6, R7
l37: mvns R1, R1, ASR #10
l38: bicVS R2, R2, R7, ASR #7
l39: eorCC R3, R4, R5, LSR R1
l40: rscs R10, R5, R11
l41: andMI R6, R11, R5
l42: adds R3, R10, #1712
l43: movCS R2, R12, ROR R1
l44: orrGT R0, R0, #880
l45: eor R1, R10, R2
l46: ands R3, R10, #1946157059
l47: rsbPLs R14, R0, R14, RRX 
l48: adds R3, R15, R14, LSL #21
l49: ands R11, R5, #1879048205
l50: mvnVC R2, R1
l51: bMI l59
l52: subLE R14, R10, #980
l53: sbcVS R6, R7, R14
l54: subLTs R2, R1, R8, ROR R9
l55: mvn R11, R8
l56: teqCS R1, R0
l57: cmnCS R6, R5
l58: eorEQ R0, R1, #162
l59: adc R8, R3, R3, LSL #30
l60: add R6, R9, #805306372
l61: orrHIs R14, R9, R7
l62: eorNE R6, R3, R3, LSR R14
l63: clz R12, R7
l64: orrGEs R2, R2, R3, LSL R10
l65: movNEs R3, R3
l66: sbcMIs R6, R12, R12, LSL #10
l67: cmpNE R8, R8
l68: bGT l73
l69: cmp R15, #265289728
l70: sbcCC R7, R15, #1744830464
l71: rsc R2, R5, R5, ROR #4
l72: addHIs R3, R14, R11, RRX 
l73: bics R10, R2, R7, ROR #12
l74: mvns R2, R8, ROR #2
l75: cmpMI R7, R0, ASR R11
l76: eorGE R11, R14, R10, RRX 
l77: bics R6, R1, #198656
l78: adcMI R11, R12, R7, ASR R8
l79: subCS R5, R12, R5, ASR R2
l80: orr R2, R15, R14, RRX 
l81: rsbEQs R2, R0, R0
l82: orr R9, R4, R5, ROR #21
l83: sub R8, R5, #937984
l84: sub R9, R15, #805306376
l85: sbcs R8, R15, R6
l86: cmn R14, R6
l87: subs R10, R3, R11, LSL R10
l88: sub R11, R3, R5, RRX 
l89: rsb R8, R2, R0
l90: subs R1, R9, R6, ASR R14
l91: addEQ R5, R11, R0, ROR R6
l92: tstLE R5, R9
l93: teq R3, #872415232
l94: bic R4, R9, #880
l95: bicVS R2, R5, R15
l96: bCC l104
l97: clzEQ R4, R1
l98: sbc R1, R11, R11, ROR #4
l99: bicCCs R0, R5, R0, LSR R2
l100: rsbGE R14, R11, R12, RRX 
l101: subCSs R2, R9, #348
l102: andLS R0, R0, R3, ROR R4
l103: subEQs R14, R5, R1, LSL #20
l104: bicGTs R6, R6, R0, ROR R3
l105: teq R0, #257949696
l106: orrPL R9, R0, R12
l107: bLE l109
l108: orrLSs R1, R6, R8, LSL #19
l109: cmpMI R12, #151
l110: cmp R4, #31457280
l111: rsc R4, R5, R8, LSL R2
l112: and R3, R3, R8, LSL R2
l113: tstVC R8, R8, LSR R9
l114: eorLTs R9, R0, R15
l115: teqMI R4, R0, ASR R12
l116: teqHI R9, R9, ROR R1
l117: addLEs R0, R5, R12, LSR #6
l118: orrs R3, R7, #3538944
l119: andMIs R5, R5, #27
l120: add R4, R10, R2, ROR R8
l121: movGTs R1, #-1325400064
l122: cmnPL R8, #44826624
l123: rsbs R14, R9, R8, ASR R0
l124: eorEQ R6, R10, #536
l125: sub R4, R7, R10
l126: mov R5, R2
l127: movs R0, R9
l128: add R1, R4, R14, LSL #10
l129: teqCS R3, R4
l130: cmnVS R3, #4032
l131: cmnHI R12, R3
l132: bics R3, R7, R3
l133: orrVSs R7, R5, R11
l134: sub R6, R8, R1
l135: addMIs R4, R12, #47710208
l136: teq R11, #-1006632960
l137: cmpCS R14, R7, LSR R2
l138: cmpHI R14, R9, RRX 
l139: orr R3, R6, R5
l140: orrCCs R0, R10, R9, ASR #15
l141: andCC R14, R1, R3, RRX 
l142: adcVCs R7, R11, #-536870908
l143: bicCCs R11, R6, R5
l144: rsbGEs R6, R3, R14, RRX 
l145: andVS R14, R9, R2, RRX 
l146: tstLS R11, R5, ASR #29
l147: mvnCS R11, R3
l148: rscLE R2, R5, R15
l149: b l153
l150: eor R12, R14, R9, RRX 
l151: cmpEQ R11, #1191182336
l152: orrLE R2, R6, #17825792
l153: bicVCs R6, R0, R5
l154: eorGT R7, R12, R11
l155: eors R10, R6, R6, ROR #21
l156: orrs R4, R15, R1
l157: bicGEs R7, R5, R6, LSR R0
l158: clzLT R12, R9
l159: eorVS R1, R14, R7, RRX 
l160: orrVS R7, R6, #101376
l161: eorGT R6, R15, #248512512
l162: cmnCS R6, R11, ROR R5
l163: orrs R8, R5, #14592
l164: adcHIs R3, R1, R3, LSL #3
l165: movGEs R11, R1, LSL R5
l166: rsbVSs R6, R14, R12
l167: bics R3, R10, R3, RRX 
l168: subMIs R2, R2, R4, LSR #13
l169: teq R10, R3
l170: adcLSs R4, R5, R3, LSR R3
l171: orrGE R11, R15, R1, RRX 
l172: adc R5, R12, #805306380
l173: bicEQ R9, R1, #49664
l174: bGT l180
l175: rsbs R6, R8, R0
l176: subs R3, R3, R12
l177: orrCSs R3, R6, R3, RRX 
l178: ands R4, R8, R1, LSL #28
l179: clz R7, R4
l180: andCCs R8, R15, R5, LSR #30
l181: addGE R4, R10, R11
l182: orrs R2, R4, R10
l183: rscs R3, R9, R7, LSL R3
l184: sbcs R0, R8, #-2147483628
l185: cmnLS R6, R3, LSR R12
l186: ands R4, R2, R5, LSL R5
l187: andVS R12, R6, R0
l188: movLS R8, R11, LSL #28
l189: orrVCs R2, R14, #13632
l190: b l198
l191: movs R11, R0, ROR R11
l192: rscLE R11, R2, R5
l193: sub R10, R0, R14
l194: subLEs R5, R11, R15, LSR #26
l195: orrLS R14, R7, R1, RRX 
l196: orrGTs R7, R5, R3, RRX 
l197: cmp R15, R11, RRX 
l198: sbcs R10, R8, R4, ROR R0
l199: teq R2, R14, LSL R3
l200: movHI R3, #1073741842
l201: teq R1, R7, LSL R0
l202: subs R14, R5, R0
l203: movMIs R1, R11, ASR #19
l204: subPL R12, R9, #1073741859
l205: sub R14, R12, R1, ASR R2
l206: eorLS R4, R12, R4, LSR R8
l207: movMIs R1, #294912
l208: adds R6, R4, R6, LSR #6
l209: sbcPL R14, R1, R4, RRX 
l210: rsbVC R14, R3, #75497472
l211: eorLSs R0, R6, R0, RRX 
l212: sub R0, R6, R1
l213: cmpVS R8, R0
l214: cmpNE R8, #1028096
l215: cmp R3, R7, ASR #21
l216: movs R6, R7
l217: teq R5, R6, LSR #3
l218: cmn R6, R10
l219: teqMI R14, R0, LSL R1
l220: bicGE R1, R5, R4, RRX 
l221: rscCSs R14, R0, R4
l222: rsbs R4, R15, R4, LSR #12
l223: teqLS R3, R1, LSR R14
l224: mvnCSs R5, R12, LSR R7
l225: rsbCCs R11, R4, R14
l226: subCCs R10, R9, R3, ASR #3
l227: b l236
l228: movHIs R12, R7
l229: adcHIs R14, R4, R5, ROR R12
l230: add R9, R8, R8
l231: movGT R1, R4, LSL #7
l232: teq R7, R15, ROR #2
l233: rscs R5, R5, R2, ASR #15
l234: rsbHI R0, R15, #180224
l235: adc R6, R5, R4
l236: cmpLE R11, R7, LSL #17
l237: sbc R9, R10, R11
l238: andMIs R10, R10, R7, LSL #5
l239: teq R4, #1879048192
l240: bics R4, R6, #1409024
l241: bLE l247
l242: adcs R14, R12, R5, LSR #21
l243: sub R9, R12, #2506752
l244: bicCSs R9, R3, R9
l245: tst R8, R2
l246: addEQs R1, R4, R0
l247: sub R9, R11, R5, RRX 
l248: addGEs R3, R9, #96
l249: ands R4, R11, R11
l250: cmp R9, R4
l251: eorGT R6, R0, R6
l252: subMIs R6, R3, #1016
l253: teq R12, #838860800
l254: b l261
l255: mvnLEs R1, R14
l256: adds R9, R7, R15, ROR #23
l257: addLTs R0, R6, R7, RRX 
l258: adcNEs R12, R6, #225280
l259: subGE R6, R11, R5
l260: mvnPLs R14, #10240
l261: movLT R2, #3968
l262: mvnCS R6, R6, ROR R4
l263: addVSs R2, R6, R10
l264: rsbEQs R8, R1, #708837376
l265: orrLEs R6, R0, R9
l266: b l269
l267: rscs R8, R15, R9
l268: cmnEQ R14, R3, RRX 
l269: rsbCS R4, R6, R6, ASR #13
l270: adds R3, R11, R7, LSR #4
l271: teqNE R4, R8
l272: orrGEs R8, R2, #3719168
l273: teq R4, R2
l274: cmpCS R1, R11, ROR #20
l275: cmnCC R15, #-1073741823
l276: rscVC R4, R1, R1
l277: mvnCS R4, R9, LSR R5
l278: sbcLS R14, R14, R9, RRX 
l279: teqVC R6, R5, LSR R6
l280: tstVS R8, #372
l281: cmp R14, R11, ASR R4
l282: orrCSs R6, R10, #790528
l283: clzGT R5, R7
l284: and R12, R9, R14, ROR #16
l285: subCCs R12, R10, R12, ASR R4
l286: sbcs R0, R9, R12, LSL R4
l287: andHI R10, R4, R6
l288: cmnLT R4, R10, LSL #18
l289: subCSs R9, R3, R3
l290: movNEs R2, R0
l291: cmp R14, #253
l292: bicCSs R11, R12, R8, ASR #25
l293: addPLs R0, R2, #65280
l294: addEQs R5, R14, R5, ASR R0
l295: subCCs R10, R12, R1, LSL R10
l296: eor R2, R5, R2
l297: eorLSs R8, R4, R4, ROR R7
l298: clzLT R7, R3
l299: subs R3, R6, #20
l300: sbcVSs R7, R3, R4
l301: and R11, R1, #-1073741778
l302: addGE R2, R11, R11, ASR R8
l303: cmn R3, #32768
l304: movs R1, #9
l305: movLEs R6, #46080
l306: andVSs R10, R14, R1
l307: orrs R3, R8, R3, RRX 
l308: addLTs R3, R6, R3, ASR R0
l309: rscs R14, R6, R1, ROR R12
l310: bLS l312
l311: cmn R10, R9, LSL R0
l312: adcCS R4, R8, R14
l313: and R9, R8, R6, ASR #20
l314: movs R3, R3, RRX 
l315: teq R2, #-2147483642
l316: eors R12, R8, R7
l317: clzPL R9, R12
l318: andVCs R12, R2, R11, LSL #21
l319: orr R6, R5, #5312
l320: mvnNEs R8, R3, ASR #20
l321: mvns R4, R3, LSL #22
l322: movs R7, R12, ASR #28
l323: clz R3, R2
l324: tst R6, R4, LSR R5
l325: cmpPL R4, R7
l326: orrMI R1, R15, R7, LSR #22
l327: tst R7, R10
l328: orrs R3, R2, R7, LSR #19
l329: eorGT R0, R11, #618496
l330: adcCCs R11, R6, R8, LSR R8
l331: orrs R6, R6, #85983232
l332: subVCs R14, R1, R12
l333: subLTs R2, R0, R14
l334: rsb R10, R3, #128000
l335: sbcNEs R3, R11, R15, LSL #11
l336: sbcHIs R6, R15, R9
l337: b l344
l338: cmnVS R8, R2
l339: adcLE R7, R9, R4, ASR R2
l340: ands R1, R6, R2, ROR #30
l341: tst R0, R6, ROR R2
l342: addLTs R4, R8, R0
l343: rsbLTs R3, R6, R2, ROR R1
l344: teq R10, #161792
l345: add R5, R2, R9, ROR #12
l346: clzMI R7, R3
l347: cmnVS R3, R8
l348: andCSs R7, R0, R6, ASR R5
l349: teq R6, #343932928
l350: rsbs R0, R2, R6, RRX 
l351: sbcCSs R8, R8, R12, LSL R5
l352: and R11, R9, R12, LSR R12
l353: orrNEs R11, R15, #599785472
l354: movVSs R12, R7
l355: clz R6, R12
l356: cmp R8, R9
l357: cmnVC R15, R1, ASR #7
l358: bic R5, R2, R5, ASR #25
l359: mvnGTs R9, R14
l360: adcCSs R14, R5, R10, ASR R3
l361: movCS R5, R15
l362: teq R3, #51904512
l363: mvns R6, R4, ASR R7
l364: andNE R8, R2, R1
l365: tstCC R12, R0, LSL #29
l366: sbcs R5, R1, R15
l367: tstLT R10, R5
l368: cmnLS R4, R6, LSL R3
l369: ands R1, R2, R11, ASR R11
l370: teq R7, #36864
l371: clz R12, R2
l372: bicPL R12, R1, #700
l373: adcHI R6, R6, R10, LSL #21
l374: rsbVSs R4, R4, R4, ASR R0
l375: addMI R12, R2, #761856
l376: teqEQ R9, #33292288
l377: orrNE R8, R5, R11, RRX 
l378: clzLT R9, R3
l379: clz R8, R7
l380: andLSs R7, R7, R3, LSR #10
l381: rsbs R1, R9, R12, ASR #3
l382: bGE l390
l383: tstPL R11, R15, LSL #8
l384: mvn R0, R3, ASR R11
l385: addHIs R7, R1, #2304
l386: movs R1, #671744
l387: rsbGTs R6, R14, R6, LSR R9
l388: andNEs R10, R1, #2464
l389: addMI R5, R12, R11, LSL #5
l390: orrHIs R8, R11, R12, LSR R11
l391: bic R9, R10, #-385875968
l392: andHIs R9, R9, #-2147483637
l393: mvn R10, #65
l394: adds R1, R8, R12, ASR R1
l395: eor R3, R0, R8, ASR R9
l396: subGE R2, R3, #276824064
l397: orrLTs R14, R6, R1
l398: eorLSs R0, R2, R9
l399: sbcNEs R5, R7, R6
l400: mov R7, R2, ASR R0
l401: add R2, R8, R2, ROR R0
l402: eors R0, R14, R1, LSR #24
l403: orrHIs R4, R7, R7, LSR #3
l404: movLS R9, R0, ROR #31
l405: orrs R0, R1, #2965504
l406: cmn R7, #448
l407: orrCSs R5, R12, R9, LSL #7
l408: cmp R5, R3, ROR #13
l409: andHIs R0, R10, #54528
l410: rscs R12, R10, #2310144
l411: eorMI R9, R15, R1
l412: clz R0, R7
l413: cmpMI R0, R9, ASR #8
l414: cmnGE R5, R12, ASR R9
l415: rscLT R8, R1, R3
l416: orrs R4, R4, #120586240
l417: orr R4, R10, R6
l418: subVC R7, R1, R6
l419: bicLEs R1, R3, #-1610612735
l420: subs R14, R2, R11
l421: cmn R11, #700
l422: subEQs R3, R4, R0
l423: rscs R9, R7, R0, LSL #17
l424: bicLEs R8, R10, R1
l425: tstHI R15, #13697024
l426: addLEs R10, R7, R14
l427: b l435
l428: bics R3, R12, R11, ROR #28
l429: rsbCS R14, R4, R3
l430: cmpLE R11, R11
l431: teq R3, R8, RRX 
l432: teq R2, R0
l433: cmnMI R14, R3
l434: adcGE R14, R1, R9, ROR R5
l435: sbcLEs R7, R4, R2
l436: adcCCs R2, R9, R7
l437: cmp R11, R11, LSL #0
l438: cmpLS R2, R0, RRX 
l439: clz R12, R3
l440: rsbs R10, R3, R0, RRX 
l441: adcs R14, R5, R3
l442: b l446
l443: sbcs R6, R9, R12, LSL #6
l444: clzVC R3, R1
l445: cmp R6, R8, LSR #16
l446: adc R1, R12, R2
l447: b l454
l448: andLEs R10, R14, #32243712
l449: orr R8, R9, R11, ASR #6
l450: adcNEs R3, R10, #129024
l451: eor R8, R15, R4, ASR #25
l452: subLE R9, R4, R5, LSR #22
l453: cmp R3, R14, LSR #7
l454: orrs R2, R9, R10, LSR R2
l455: subs R3, R12, R12, RRX 
l456: sub R4, R8, R15
l457: mvns R1, R7
l458: add R7, R1, R15
l459: mvnHI R3, R5, ASR R9
l460: eor R11, R9, R9
l461: sbcs R10, R8, #4030464
l462: cmn R15, R8, LSL #21
l463: orrPLs R4, R15, #75497472
l464: teqVC R5, #0
l465: teq R12, #2
l466: clzNE R5, R5
l467: teqCC R3, R14
l468: sub R2, R15, #5696
l469: rscNEs R8, R10, R3, LSL R9
l470: andHIs R10, R6, R11, RRX 
l471: b l472
l472: cmnCS R12, R1, RRX 
l473: tstGT R8, #11776
l474: tst R11, R11, LSR R6
l475: movs R4, R1, LSR R1
l476: teq R2, R3, LSR R0
l477: sbcLSs R14, R8, R0, ROR R12
l478: cmpEQ R9, R2, ASR #18
l479: clzLT R9, R4
l480: orrLE R10, R7, R7, LSL #25
l481: bVC l489
l482: rscs R1, R10, #245760
l483: mvnLSs R2, R1
l484: mvnVSs R7, #1884160
l485: clzEQ R14, R3
l486: tstNE R2, #48
l487: adcs R3, R14, R8, ASR R0
l488: andLS R8, R0, R3, LSR #25
l489: addLEs R6, R11, #149946368
l490: movGEs R6, R1, LSL #26
l491: andNEs R7, R5, R7, ROR R8
l492: subHI R14, R1, R4, LSL R9
l493: eor R9, R3, R4, RRX 
l494: bVC l502
l495: rscLS R5, R1, #213909504
l496: clz R0, R14
l497: sbcHI R2, R11, #462848
l498: clz R4, R8
l499: cmpCS R2, #-1073741822
l500: mvnGTs R7, #805306375
l501: add R4, R7, #112
l502: subMI R6, R15, #182
l503: tst R10, #2013265920
l504: tstVC R12, #568
l505: andEQ R14, R5, #1408
l506: andMIs R3, R8, R9, ROR R1
l507: mvn R7, R4
l508: bGT l517
l509: cmn R6, R7, LSL #26
l510: sub R4, R9, R14, RRX 
l511: orr R10, R6, R1, ROR #10
l512: rsc R12, R10, R10, ASR R10
l513: tst R0, #37748736
l514: adds R8, R0, R10
l515: addNEs R8, R14, R5
l516: adc R11, R8, R3
l517: teqEQ R5, R14, ASR #7
l518: clz R0, R4
l519: adcVC R12, R0, #1073741861
l520: orrGTs R6, R6, R5, ASR #25
l521: orrs R4, R4, R2
l522: cmpMI R3, R12
l523: cmpGT R0, R1, ASR #2
l524: rscCSs R10, R6, R6, LSR #17
l525: adc R11, R14, R14, LSR R6
l526: rscs R6, R8, R14, RRX 
l527: cmpVS R8, R7, LSR R9
l528: adcMIs R0, R12, R6, ASR #16
l529: add R11, R9, R11
l530: orr R3, R6, #254803968
l531: eor R0, R7, #1543503874
l532: orrCCs R0, R6, R2, LSL R9
l533: movs R9, R3
l534: sbcEQs R1, R11, R8, ROR R12
l535: adcLE R14, R9, R8, LSR #23
l536: mvnHI R7, R12, RRX 
l537: orrHI R5, R5, R4, ROR #11
l538: b l540
l539: addLE R9, R11, R0, RRX 
l540: subs R11, R10, R10
l541: adds R0, R0, R6, LSR R14
l542: rsbs R10, R11, R11, RRX 
l543: subLTs R3, R10, R14, LSL R5
l544: subPLs R12, R12, R10, LSR #31
l545: and R8, R5, R5
l546: cmn R0, R1
l547: and R7, R8, #200
l548: orrs R11, R4, R12
l549: tstMI R10, R12, LSR R1
l550: eorLS R12, R4, #1359872
l551: rscVC R4, R2, R8, RRX 
l552: b l558
l553: cmnMI R12, #1680
l554: clz R14, R12
l555: add R7, R8, R5, ASR #27
l556: mvns R2, R6, LSR #7
l557: orrHIs R10, R9, R15
l558: tstVC R9, R7, RRX 
l559: bicCC R7, R10, R2, LSL R12
l560: orrNE R10, R5, R6, ASR #27
l561: andVS R1, R10, #2048
l562: rscs R1, R8, R15, ASR #1
l563: tstGT R15, R11, LSL #5
l564: add R10, R0, R4
l565: rscCC R6, R1, #200
l566: sbcs R2, R7, R14
l567: subVSs R14, R9, R1, LSR #15
l568: andGTs R14, R10, R4, ASR R3
l569: adc R5, R1, R9, RRX 
l570: bicLSs R5, R5, R8
l571: rsbGE R2, R1, R11, RRX 
l572: bics R9, R15, R8
l573: subVSs R4, R12, R15, LSL #7
l574: cmp R5, #251658240
l575: movLT R8, R10, RRX 
l576: tstGT R7, R1, LSR #19
l577: tst R6, #22272
l578: tstLT R10, R7, ROR R5
l579: subGT R14, R1, #18
l580: addEQ R8, R14, R4, ROR #16
l581: andLTs R4, R3, #7680
l582: mvnHI R2, R2, LSL #26
l583: sbcs R4, R8, R7, ASR R7
l584: subs R10, R14, R3
l585: addMI R8, R15, R10
l586: cmp R2, R10
l587: adcHI R3, R14, R6
l588: movs R12, #704643072
l589: adcs R11, R14, #937984
l590: subs R11, R9, R5
l591: subCSs R7, R1, R6, LSL R14
l592: b l602
l593: sub R2, R3, #54272
l594: and R6, R15, R10, LSL #6
l595: orrPLs R8, R8, R1
l596: adds R6, R14, R8, LSR #26
l597: mvnLSs R12, #7733248
l598: teqHI R1, R5
l599: subs R2, R2, R12
l600: rscLTs R9, R15, R10, LSL #2
l601: movVCs R1, R1, ROR #6
l602: movs R2, R5, RRX 
l603: clzCS R12, R1
l604: mvnLE R0, R2, RRX 
l605: orrs R3, R14, R10, LSL R12
l606: movs R0, #2272
l607: teq R7, R15, ROR #8
l608: addVSs R12, R3, R3, ASR #1
l609: mvnMI R12, R0
l610: cmn R9, R6, ROR #1
l611: rscs R3, R0, R3, ASR R5
l612: and R12, R14, R8, ROR #8
l613: tstEQ R8, R5, LSL #16
l614: mvnLE R3, #1073741837
l615: addVCs R11, R1, R14, RRX 
l616: adc R2, R12, R0, ASR #17
l617: sbc R10, R3, R15
l618: rsbCCs R7, R3, R11, ASR #20
l619: b l627
l620: adcPLs R12, R14, R6
l621: rsbVC R5, R8, R0
l622: cmpNE R0, #-1073741809
l623: rscs R7, R15, R2
l624: eorHIs R8, R10, R0, RRX 
l625: orr R0, R9, #3506176
l626: rscVC R8, R9, R12, ROR R0
l627: clzCC R1, R8
l628: rscLE R11, R8, R14, ROR R10
l629: adcGT R11, R14, #6208
l630: mvns R2, R7, ROR #2
l631: teqCS R12, #-2063597568
l632: and R2, R11, R12, ROR #14
l633: teq R6, R2, ASR R8
l634: movEQs R6, R10, ASR R3
l635: eor R9, R9, #794624
l636: subEQ R5, R5, R3, RRX 
l637: clzCS R8, R9
l638: tstMI R4, R10, LSL R1
l639: cmpNE R2, #-2147483637
l640: and R4, R12, R11, ROR #20
l641: eorGT R4, R1, #166
l642: b l647
l643: cmp R11, R5
l644: andNEs R5, R2, R0, ROR #15
l645: rscNEs R9, R8, R11
l646: movs R8, #-2147483643
l647: add R11, R3, R2, LSR R7
l648: bics R7, R1, R8, RRX 
l649: cmpPL R4, #532480
l650: cmnGT R10, #561152
l651: bicPL R6, R12, R15, LSR #18
l652: eors R2, R14, R5, LSR #27
l653: bNE l661
l654: sub R14, R5, R10
l655: rsc R8, R15, #3178496
l656: sbcHIs R10, R9, #332
l657: andNE R8, R14, R9, LSL R3
l658: tstCS R11, R4, LSR R12
l659: cmn R0, #5963776
l660: rsbCS R10, R15, R1
l661: cmn R9, R1
l662: ands R10, R12, R7
l663: orrLEs R3, R10, R15, LSL #31
l664: mvnCC R6, R11, ROR #14
l665: cmn R12, R8
l666: b l673
l667: cmnCS R2, R11, RRX 
l668: clzLS R4, R8
l669: cmn R15, R14
l670: subLTs R1, R7, R0, ROR #20
l671: sbcs R11, R1, R1, ASR #14
l672: teq R3, #3719168
l673: mvn R14, R1, LSR R0
l674: sbc R11, R6, #5111808
l675: orrCS R12, R1, R2
l676: andNEs R4, R4, R4, ASR R8
l677: orrVCs R3, R7, R1
l678: subCSs R4, R4, R8, LSL #23
l679: rsb R10, R5, R15
l680: cmnLE R2, R14, ASR #26
l681: sub R12, R0, #47104
l682: eorCS R0, R11, R1, LSL #20
l683: and R10, R7, R7
l684: teq R8, R7
l685: bGT l689
l686: orr R7, R4, #40960
l687: bicHI R10, R15, #2046820352
l688: subs R0, R2, R14, ROR R0
l689: adcHI R6, R5, R7, LSR R6
l690: bic R8, R11, R0, LSR R2
l691: sub R14, R3, #1895825408
l692: mvn R7, R0, LSL #11
l693: sub R5, R4, #155648
l694: b l698
l695: cmpGE R9, R3, LSR #9
l696: subCS R11, R15, R1
l697: movs R0, R10
l698: adcVCs R6, R14, R2, LSL R0
l699: movs R12, R7
l700: and R1, R11, R11
l701: rscEQ R10, R3, #1006632962
l702: orrs R0, R1, R11
l703: cmp R9, #138412032
l704: bicGE R2, R1, R9, LSL R9
l705: orr R14, R5, R12
l706: addNE R6, R14, R15, LSL #23
l707: cmnCS R1, R0, ROR #17
l708: rsb R8, R10, R9, LSL R6
l709: clzHI R8, R5
l710: cmnGT R11, R12
l711: sbcs R1, R3, R5, ROR R5
l712: sbcGTs R1, R2, R10, ROR R12
l713: adcCS R10, R0, R4, RRX 
l714: cmpGE R10, #253
l715: cmn R3, R8, ROR #23
l716: rscs R5, R14, R2
l717: sbcs R7, R15, R2
l718: teqVC R12, R4, LSL R9
l719: cmn R14, #14464
l720: rsb R11, R9, R7, ROR #27
l721: cmn R3, R6, LSL #23
l722: clzVC R8, R7
l723: teq R11, R12, RRX 
l724: adds R7, R0, R15, RRX 
l725: cmpLT R14, #7733248
l726: subs R11, R3, R2, ASR #16
l727: clzMI R8, R2
l728: rsbMIs R1, R7, R5, LSL #21
l729: mvnVS R10, #10304
l730: andNE R4, R1, #912
l731: tstPL R7, R12, LSL #1
l732: subNEs R14, R6, R7
l733: cmp R4, R9
l734: cmpHI R8, R7, RRX 
l735: teqLS R5, R14, ASR R8
l736: tst R10, R8, ROR R3
l737: mvns R5, R9, LSL #26
l738: rscGTs R12, R15, R15
l739: eor R2, R0, R10
l740: subPL R10, R5, R7, RRX 
l741: subGT R6, R14, R15
l742: subGEs R11, R15, #255852544
l743: rsc R1, R0, R2, ROR R12
l744: clzLS R14, R2
l745: bVS l749
l746: ands R0, R5, R11, ASR #0
l747: sbc R11, R7, R2, ROR #24
l748: tst R1, #2512
l749: eorVC R11, R12, R0
l750: b l754
l751: teqEQ R3, R3, LSL R3
l752: rsbNE R11, R0, R8
l753: adcs R6, R2, #96468992
l754: bicEQ R8, R4, R7, LSR R7
l755: rscCCs R3, R15, R4, LSR #3
l756: teq R9, R4, LSR R11
l757: rsb R2, R3, R6
l758: addVSs R12, R4, #880
l759: sbcCS R2, R0, R14, RRX 
l760: bics R0, R7, R0
l761: mvnHI R10, R8
l762: orrHI R1, R5, R4, ASR R12
l763: rsbCC R3, R11, R8, ASR R7
l764: orrGEs R0, R5, R10
l765: b l771
l766: clzGT R14, R7
l767: sbcLEs R0, R7, R9, ASR R1
l768: clzLE R2, R2
l769: sub R12, R11, #860160
l770: eorVS R5, R11, R11
l771: rscEQs R10, R2, R15, ROR #3
l772: movHI R14, #647168
l773: mvnLE R12, #3473408
l774: rscHIs R3, R5, R4, LSR R0
l775: cmpEQ R4, R1, LSL R3
l776: subs R2, R9, #12288
l777: rsb R2, R10, R11, ASR #12
l778: clzVC R7, R8
l779: subCCs R9, R3, R12, LSR R8
l780: clzGE R4, R7
l781: bPL l782
l782: subPLs R8, R4, R9, ROR #26
l783: sub R11, R10, R2
l784: bicGE R2, R0, R4, ASR #18
l785: cmnVS R3, #1409286146
l786: bics R2, R11, R3, ROR #31
l787: sbcs R10, R1, R9, LSR #30
l788: cmn R1, R3, ROR #9
l789: eorLTs R5, R11, R7
l790: bicLT R4, R3, R2, LSL #30
l791: sbcMI R2, R7, R12, LSR R14
l792: sbcCC R2, R11, R6, RRX 
l793: cmnGT R3, R6, LSR #21
l794: rscMIs R12, R11, R7, RRX 
l795: add R9, R1, R6
l796: orr R2, R3, R10, ROR #3
l797: subNE R0, R12, #27262976
l798: subEQ R9, R6, R3
l799: add R12, R14, R10, ASR R8
l800: bic R8, R6, R8
l801: clz R5, R2
l802: cmnGT R12, R7
l803: orrLSs R3, R8, R3, LSL #15
l804: sbc R0, R14, R11, ASR R9
l805: tst R1, R3, ASR #2
l806: addNE R10, R2, #33816576
l807: b l813
l808: mvns R7, R15, LSR #29
l809: ands R12, R6, R12
l810: rscHIs R12, R0, #2864
l811: rscCS R9, R12, R1, ROR #7
l812: eorLSs R9, R8, R11, LSR R2
l813: orrs R10, R1, #126877696
l814: eorHI R14, R12, #173056
l815: orrHI R8, R0, R8, ROR R5
l816: orrNEs R10, R3, R4, LSR R8
l817: subEQ R2, R8, R2, RRX 
l818: tst R15, R1
l819: andVC R7, R11, R4
l820: andPLs R0, R0, R8, LSR #20
l821: rsbCCs R4, R6, R5, ROR #11
l822: rsbVS R3, R14, R3
l823: adcCS R12, R6, R15
l824: cmnMI R10, #-268435455
l825: cmnCC R9, R10, LSR #31
l826: mvns R0, R3, LSL R14
l827: and R4, R9, #6784
l828: ands R12, R10, R1
l829: rscs R9, R15, #3312
l830: add R10, R9, #2928
l831: cmnNE R7, R10
l832: rscEQ R12, R15, R7
l833: rsb R7, R11, #81920
l834: tstLT R2, R10, ASR R5
l835: cmnVC R7, R3, RRX 
l836: subLSs R4, R15, #18944
l837: b l840
l838: tst R6, R8, LSR #0
l839: adcLSs R1, R9, #8704
l840: rscGT R0, R6, R5, ROR R1
l841: cmp R7, #6815744
l842: mvnCSs R8, #179306496
l843: movs R5, #968884224
l844: bLE l853
l845: subGE R8, R7, R0
l846: addEQs R0, R9, R8
l847: mov R12, R0
l848: rsbs R14, R10, R4, LSL R9
l849: orrLSs R3, R3, R1, RRX 
l850: add R4, R3, R14, ASR #9
l851: add R3, R11, R2, LSL R14
l852: adcGEs R11, R6, R4, LSR R2
l853: orrPLs R6, R10, R10, RRX 
l854: mvnCCs R0, #4992
l855: adds R10, R4, R10
l856: and R8, R4, R0, ASR R1
l857: mvns R5, #197132288
l858: cmn R5, R11, ROR #22
l859: adcs R7, R1, R12, ROR R7
l860: movEQs R8, R2, LSR R3
l861: teq R11, R3
l862: eorHIs R3, R3, R14, RRX 
l863: addGT R9, R3, R7, ASR R6
l864: sbcLEs R8, R1, R11, LSL #28
l865: adcHI R10, R3, R14
l866: tstHI R3, #-570425344
l867: orrHIs R2, R11, R11, ASR #3
l868: bLS l870
l869: subs R1, R5, R7, LSR #15
l870: movPLs R9, R3, LSL R0
l871: andLEs R1, R12, #802816
l872: rscs R3, R0, R1, LSL R2
l873: cmnCS R11, R5
l874: bicGEs R4, R14, R2, LSL R10
l875: eorLT R7, R4, R14, LSL R7
l876: tst R9, R8, ROR #25
l877: cmp R10, R11
l878: rsbLSs R9, R0, R10, RRX 
l879: clz R14, R4
l880: cmn R3, R0
l881: clzLE R11, R0
l882: eorLSs R0, R11, #805306368
l883: andEQ R12, R4, R1
l884: mov R11, R11, RRX 
l885: clz R9, R2
l886: subLSs R7, R8, R3, RRX 
l887: mov R10, R6, ASR R9
l888: rsbs R10, R14, R6, RRX 
l889: eorLEs R3, R5, #939524098
l890: cmnLE R9, R4
l891: adcLT R10, R4, R7
l892: rsb R7, R14, R12, RRX 
l893: eorGE R12, R4, R14, LSL R11
l894: addGTs R8, R8, R6
l895: clz R8, R12
l896: rsbs R4, R8, R0
l897: bHI l904
l898: teqHI R7, #-704643072
l899: mvnGT R1, R7, RRX 
l900: rsc R0, R14, R8, LSL #23
l901: and R10, R11, #3358720
l902: cmn R8, R5
l903: rsbs R9, R6, R5
l904: bic R4, R6, R4
l905: bics R5, R1, R6, LSR R7
l906: eor R14, R14, R12, LSL #3
l907: addLT R12, R11, R0, ROR #8
l908: movEQ R6, R7, RRX 
l909: rsbEQs R7, R2, R14
l910: orrVCs R8, R12, #2375680
l911: sub R1, R5, #-939524096
l912: subGT R2, R4, R9, LSL #7
l913: cmn R2, R1, LSL #8
l914: eors R0, R11, R9, ROR R7
l915: rscs R1, R6, R4
l916: sbcs R14, R8, R8
l917: clzVC R0, R9
l918: andGE R3, R10, #704643072
l919: teq R1, R5
l920: tstGE R6, #154140672
l921: sbc R4, R1, #-872415229
l922: rsbVS R7, R11, R10
l923: bics R0, R2, R11, RRX 
l924: andVCs R0, R5, R11, LSR R11
l925: rsc R11, R1, #35328
l926: orrEQs R1, R14, #3473408
l927: tst R2, R10, RRX 
l928: cmnCC R7, R5
l929: eorLEs R4, R12, R6
l930: mvnGT R12, #1006632963
l931: eors R0, R7, R8, ROR R12
l932: bGT l936
l933: cmn R10, #12
l934: sbcPLs R0, R4, R9, ASR #15
l935: rsbLEs R4, R9, #51968
l936: movVCs R14, R7, ROR R5
l937: cmpNE R4, R7, ROR #24
l938: b l940
l939: clzVC R5, R8
l940: subPLs R3, R6, R6, ROR R11
l941: mvnPLs R14, R5, LSL R14
l942: rsb R14, R6, R1, LSL R0
l943: b l951
l944: eorCSs R14, R3, #15466496
l945: eor R14, R0, R2, LSR #9
l946: orrPLs R8, R6, R3, ASR R2
l947: adcMI R14, R10, R12
l948: orrPL R3, R7, R3
l949: andLS R4, R8, R5
l950: subGT R10, R9, R2
l951: rsb R10, R10, R6, LSR R1
l952: teq R12, R0, LSL #11
l953: movVCs R3, R4
l954: eorHI R9, R8, R7, LSL R3
l955: mvnGE R7, R6
l956: cmpHI R11, R11, RRX 
l957: cmn R0, R15
l958: eorMIs R12, R4, R8, ROR R3
l959: teqPL R4, R6, LSR R0
l960: teqVC R15, R14
l961: addMI R9, R8, #116
l962: mov R1, #-2147483634
l963: teqVS R0, R10, RRX 
l964: movGE R11, R14
l965: andNE R8, R3, R4, ROR R3
l966: teq R2, R3, ROR #12
l967: rscMIs R8, R1, #29097984
l968: orrCCs R1, R12, R5, LSL R7
l969: cmpEQ R6, R6, ROR R5
l970: addLEs R4, R8, R12, RRX 
l971: andEQs R10, R11, R3, ROR R6
l972: movLE R3, R8
l973: cmn R5, R15
l974: b l983
l975: cmpLT R8, R10
l976: sbcLEs R0, R12, R3, ASR #5
l977: rscs R5, R14, R12, ROR #6
l978: subGEs R8, R0, R6
l979: cmnEQ R10, #-2147483608
l980: teqLE R5, R0
l981: teq R4, R10, RRX 
l982: cmp R0, #72704
l983: add R2, R7, R1, ASR #22
l984: rsbCCs R6, R2, R12
l985: sbcHIs R8, R7, R4
l986: orrHIs R4, R7, R14, ROR R8
l987: bic R3, R0, R6, RRX 
l988: mvns R6, R10
l989: orr R0, R3, #241664
l990: rscNE R10, R14, R2, ASR R12
l991: andVC R9, R9, R14, RRX 
l992: teqGT R3, R11, LSL #18
l993: orr R7, R5, R15, ASR #28
l994: clz R2, R2
l995: cmn R11, R0
l996: addHI R0, R1, R4, LSR R12
l997: cmnCC R6, R3, ASR R3
l998: addMIs R2, R14, #995328
l999: clzLE R2, R4
l1000: bics R2, R11, R10, ASR R9
end: b end

