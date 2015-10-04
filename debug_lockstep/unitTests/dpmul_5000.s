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
val1: .word 4255463618
next1:ldr R2, val2
b next2
val2: .word 983432234
next2:ldr R3, val3
b next3
val3: .word 1661419892
next3:ldr R4, val4
b next4
val4: .word 379877167
next4:ldr R5, val5
b next5
val5: .word 188009615
next5:ldr R6, val6
b next6
val6: .word 2251639732
next6:ldr R7, val7
b next7
val7: .word 2937713885
next7:ldr R8, val8
b next8
val8: .word 3660250514
next8:ldr R9, val9
b next9
val9: .word 4010969416
next9:ldr R10, val10
b next10
val10: .word 1371231538
next10:ldr R11, val11
b next11
val11: .word 3390809817
next11:ldr R12, val12
b next12
val12: .word 2181585214
next12:ldr R14, val14
b next14
val14: .word 3874493120

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 733604110
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 3422036356
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3456837733
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 2642913244
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 1567192466
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 3700964189
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 1291355629
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 172808213
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3928755314
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 3082229761
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 8457794
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 2875057879
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 1936293675
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 174842551
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 1860440329
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 2137282566
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 1188064626
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 824829592
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 1617794139
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 2744596535
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 2090080722
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: orr R3, R7, R4
l2: sbcs R10, R5, R9, ROR R9
l3: and R7, R10, R10, ROR #20
l4: cmnEQ R15, R14, LSR #24
l5: eors R5, R8, R15, ROR #31
l6: adcVSs R2, R10, R15, ASR #4
l7: cmp R7, R4, LSL #20
l8: orrEQs R4, R1, R8, LSR R10
l9: and R5, R1, R7, ROR #30
l10: eorCSs R4, R11, R8, LSR #6
l11: tstVC R1, R15
l12: movGEs R6, R6, ASR #8
l13: rscVCs R5, R14, #490733568
l14: andLEs R6, R15, #-1073741783
l15: mvns R10, #1728
l16: rsc R2, R6, #6553600
l17: sub R14, R1, R11, LSR #0
l18: and R4, R5, R3
l19: eorHI R11, R8, #-268435452
l20: rsc R4, R14, #187
l21: rscCC R8, R0, R10
l22: teqGE R14, R11, RRX 
l23: addHIs R2, R15, #876544
l24: eor R0, R8, R10
l25: cmpGT R1, R14, ROR R10
l26: rsbLS R8, R2, R1, ASR R8
l27: rscLSs R14, R3, R4
l28: rsbHIs R7, R1, R10, LSL R7
l29: eorMIs R8, R6, R3, LSL #26
l30: mov R12, R8
l31: mvn R1, R7, RRX 
l32: rsc R1, R10, R8, RRX 
l33: mvns R0, #-1073741821
l34: rscVSs R11, R3, #180
l35: tstCS R8, R0, LSL #7
l36: movHI R5, R8, RRX 
l37: eors R2, R10, R1, ASR R12
l38: adcs R11, R8, R5, LSR R9
l39: clzMI R0, R11
l40: mul R1, R6, R7
l41: rsb R14, R5, R7, LSR R8
l42: movVC R7, #-1073741781
l43: subs R9, R9, R7, LSL R7
l44: clzVS R2, R5
l45: adcVC R12, R10, R0, LSL R1
l46: adcVC R12, R10, R8, ROR R9
l47: sbcHIs R3, R12, R8, LSR R12
l48: eors R1, R12, R2
l49: mov R3, R9, RRX 
l50: sbc R10, R0, R6
l51: eor R0, R12, R11, LSR R1
l52: clzHI R10, R4
l53: cmp R11, R3
l54: cmpVC R10, R14, ROR R0
l55: tst R9, R3, LSL R7
l56: eorGE R5, R0, R9, ASR #6
l57: mulCCs R0, R1, R7
l58: andGE R7, R12, R9, LSL #29
l59: tstCC R14, R3, ASR #14
l60: ands R0, R5, #182452224
l61: mulLT R2, R11, R11
l62: cmnHI R1, R14, LSL R12
l63: cmp R14, R8, LSL R10
l64: tstPL R0, R0, ASR R4
l65: tst R8, R5, LSL R7
l66: cmnPL R0, R6, RRX 
l67: bic R12, R11, R10, LSR #9
l68: mulEQs R8, R12, R7
l69: mul R7, R6, R2
l70: bicLEs R14, R9, #905216
l71: teq R0, R5
l72: mvnHI R8, R4, LSR R8
l73: cmp R6, R15
l74: clz R9, R4
l75: mvns R1, R0
l76: rsbLS R3, R0, R7, ASR #29
l77: addVSs R1, R7, R9, LSR #2
l78: tstLT R1, R9, ROR R0
l79: sbcHI R10, R0, R5, LSR R9
l80: clzLE R11, R7
l81: tstVS R7, #31744
l82: adc R1, R11, R2
l83: sbc R4, R0, R4
l84: rscCCs R11, R11, R6
l85: addMI R2, R7, R7, LSR #24
l86: muls R2, R14, R2
l87: movGE R9, R12
l88: rsbVSs R14, R8, R6, LSL R11
l89: tstCC R4, R4, ASR R11
l90: eor R3, R0, R15
l91: rsbMI R4, R6, R11, RRX 
l92: cmpCC R5, #159744
l93: sbcGEs R4, R7, R0, ASR #28
l94: eors R7, R3, #3984
l95: and R14, R15, R3
l96: addHIs R7, R2, R10, ASR #14
l97: teq R10, R10
l98: adcNEs R6, R10, R2, ASR #8
l99: cmpVS R10, #1895825408
l100: clzCC R11, R0
l101: tst R7, R0, LSR R4
l102: andVC R9, R2, R1, ROR #3
l103: andCS R12, R15, R1, ROR #12
l104: teqPL R4, R3, LSL #1
l105: and R5, R4, R4, LSL R7
l106: tstCC R5, R7, LSR #22
l107: sbc R9, R12, R12, LSR #29
l108: eorMIs R14, R6, R12, ASR R8
l109: muls R0, R7, R2
l110: rsb R14, R15, R3, RRX 
l111: addEQs R8, R1, R11, ASR R3
l112: clz R6, R5
l113: bicCS R8, R10, R0, ROR R9
l114: mulNEs R11, R9, R10
l115: bic R9, R14, R7, LSL #0
l116: cmp R14, #134
l117: adcVS R1, R1, R5, LSL R3
l118: eorHIs R9, R4, R10, ROR #17
l119: tst R3, #7929856
l120: clzLT R9, R10
l121: subCS R11, R1, R7, RRX 
l122: tst R8, R14, ROR #9
l123: tstCC R12, R11, ASR #27
l124: mvnVSs R11, R11, ASR #1
l125: bic R12, R0, #28311552
l126: mov R5, R10, LSR R1
l127: subs R10, R15, R6, RRX 
l128: rsbs R7, R6, R11
l129: movPLs R9, #159
l130: eorGE R7, R0, R10, ROR R7
l131: sbcs R4, R2, R5
l132: adc R14, R9, #2320
l133: tstNE R10, R10, ROR R14
l134: cmpGT R8, #-1778384896
l135: eorCC R14, R10, R7
l136: orrLS R5, R4, #3856
l137: cmpNE R11, #2992
l138: cmp R6, R6
l139: orrVSs R8, R6, R5, ASR #23
l140: cmp R6, R9
l141: adc R3, R5, R0
l142: cmpMI R4, R7, LSL #27
l143: subCSs R5, R11, R3, ROR R10
l144: add R8, R6, R3, ASR R2
l145: rsbCC R11, R14, R7
l146: rsbPL R10, R15, R0
l147: mvnHI R10, R12, RRX 
l148: subs R1, R9, R10
l149: rscNE R2, R10, #1023410176
l150: sub R11, R1, #-1879048183
l151: subNE R8, R12, R1, RRX 
l152: eor R0, R10, R8
l153: bics R14, R14, R9, LSR R0
l154: addGE R8, R14, #272629760
l155: subs R0, R11, R14
l156: rsbGE R1, R0, R2, LSR #12
l157: cmnVC R6, #229376
l158: muls R3, R5, R10
l159: cmp R10, R7, ROR #27
l160: tst R1, #-805306354
l161: cmn R12, R3, RRX 
l162: orr R4, R10, R1, ASR #27
l163: rsc R3, R5, R3, ROR R12
l164: teqMI R1, R7, LSR #4
l165: sbcGEs R2, R7, R7, LSR R12
l166: rsc R8, R5, R11, LSR #25
l167: muls R3, R6, R2
l168: sub R14, R8, R6
l169: eorVCs R3, R4, R14, ROR #22
l170: movs R10, R6, LSR R3
l171: cmnVS R4, R0, LSL R9
l172: addHIs R5, R14, #193986560
l173: mulPLs R8, R11, R7
l174: subMIs R6, R6, R14
l175: adc R8, R3, #1610612747
l176: subGEs R6, R14, #-2147483596
l177: muls R8, R14, R10
l178: andCSs R9, R8, R10
l179: movs R1, R10, LSR R1
l180: subs R12, R7, #-1073741809
l181: subGEs R8, R5, R10
l182: adcs R14, R6, R10
l183: adcs R10, R10, #66322432
l184: add R6, R7, #2046820352
l185: andHI R7, R6, R8, ASR #14
l186: mul R8, R1, R1
l187: orrEQ R12, R4, R8, LSR R0
l188: subLS R9, R15, R8
l189: mulLS R11, R8, R2
l190: tst R6, #-1610612733
l191: adds R7, R10, R11, ROR #12
l192: and R2, R12, R5, RRX 
l193: subCCs R7, R8, #101
l194: andPL R8, R0, R5
l195: orrLT R8, R1, R1, ASR R11
l196: adcCCs R9, R12, R8, LSR #1
l197: orrPL R14, R0, R0, LSL R3
l198: rsb R14, R12, #994050048
l199: bicVCs R7, R0, R10, LSL #14
l200: adc R11, R15, #213909504
l201: sub R4, R15, R8
l202: movVS R8, R9, LSR R3
l203: rscs R14, R9, R3
l204: sbc R3, R5, R14
l205: sub R5, R15, R2, LSR #4
l206: andCSs R7, R14, R9, LSL #21
l207: sbc R8, R10, R3, LSR R12
l208: rscVS R14, R4, #25600
l209: movs R6, R9
l210: tstGT R3, #-1073741824
l211: sbcCS R11, R7, R3, LSL R6
l212: addVS R1, R15, R10
l213: mvns R9, R1, RRX 
l214: mul R9, R8, R2
l215: subs R7, R15, R7, RRX 
l216: cmn R4, R2, ASR #22
l217: subs R12, R10, #398458880
l218: sub R7, R10, R1, ROR #11
l219: eors R2, R9, #-2063597568
l220: movMI R10, R6, ROR #23
l221: adcCSs R7, R8, R8, RRX 
l222: sbcs R9, R6, #-268435454
l223: rscCC R8, R2, #-486539264
l224: adcCC R1, R0, R14, LSL #22
l225: bic R9, R10, R12, ASR R6
l226: subCC R11, R10, R3, ASR R5
l227: orrCC R1, R1, R3, RRX 
l228: subVC R2, R15, R8, ROR #25
l229: subCSs R1, R6, R11, RRX 
l230: rscs R5, R5, R10, ROR #7
l231: subPL R2, R2, R4, ASR R10
l232: cmpNE R3, R7
l233: muls R4, R0, R11
l234: eorMIs R3, R5, #109568
l235: teq R10, #1179648
l236: addMI R14, R6, R9, RRX 
l237: andCSs R3, R1, R1, RRX 
l238: mulVCs R10, R2, R0
l239: sbc R3, R8, R3, ROR #13
l240: orrVSs R0, R1, #54525952
l241: sub R5, R3, R12, LSL R8
l242: subs R12, R4, R2
l243: mvn R2, R6, ASR #13
l244: teqCC R10, R12, ROR R0
l245: andGT R8, R4, #3408
l246: eorMIs R0, R15, #13440
l247: sbcVCs R12, R2, R7, RRX 
l248: cmpCS R15, R15, ROR #11
l249: cmp R9, R4, ROR #8
l250: movPLs R6, R2, LSL #27
l251: bicCS R1, R7, #3296
l252: subGE R12, R10, R12
l253: orrGE R9, R10, #1004
l254: tstPL R2, R14, LSL R7
l255: teqVS R11, R6, RRX 
l256: movCS R10, #-1577058304
l257: eor R0, R4, R5
l258: cmp R8, R4
l259: rsc R9, R4, R1, ASR #3
l260: eors R12, R9, #2560
l261: subNE R12, R4, R9
l262: orrLSs R2, R0, #87
l263: rscLT R11, R14, R10, RRX 
l264: movs R6, #104448
l265: orrLE R12, R15, R11, LSL #23
l266: cmpGT R1, R1, ROR R11
l267: eor R6, R6, R10
l268: rsbNEs R14, R8, R3, RRX 
l269: tstCS R2, R9, RRX 
l270: adds R1, R12, R5, LSR R7
l271: orrGE R8, R0, R3, ROR R7
l272: andLE R4, R15, #2588672
l273: adcEQ R7, R12, R10
l274: sbcGTs R7, R8, R14, ASR R4
l275: andLEs R0, R2, R11
l276: eor R3, R0, R4
l277: clz R9, R9
l278: sbcs R11, R9, R9
l279: tst R7, #51380224
l280: cmpGT R10, R12
l281: add R7, R8, #-536870911
l282: orrs R0, R15, R15
l283: sbcGE R4, R5, R10
l284: orrLSs R10, R1, #632
l285: bicGT R4, R10, R0
l286: bicVCs R7, R1, R9
l287: andHI R3, R15, #10496
l288: mov R12, R1, RRX 
l289: mvns R6, R6
l290: mul R1, R5, R0
l291: eorCS R0, R2, R8, ROR #31
l292: rscNE R0, R8, #234881024
l293: ands R12, R14, R1, ROR #13
l294: clzCC R0, R1
l295: mvns R6, R2
l296: eors R2, R4, R10, LSL #5
l297: eorLT R1, R5, R5, RRX 
l298: mvnGE R0, R7, LSR R8
l299: subPLs R12, R14, R3, ROR R8
l300: mulMIs R14, R3, R1
l301: mvn R7, R5, ASR R0
l302: teqPL R1, #116
l303: adc R2, R10, R7, ASR #27
l304: cmn R12, R11, LSL R14
l305: cmpPL R11, R7, ASR R4
l306: subs R8, R3, #219152384
l307: cmn R7, R1, ASR #15
l308: cmpLT R3, #-2147483647
l309: rsbGEs R1, R8, #1900544
l310: eor R1, R2, R7, RRX 
l311: orrCC R6, R14, R6
l312: adcHIs R12, R7, R10, ROR R0
l313: cmpCS R0, R9
l314: clzPL R11, R0
l315: teq R6, R2, ROR #29
l316: mulPLs R3, R2, R2
l317: tstGT R2, R2, LSL #10
l318: clzEQ R2, R12
l319: movs R14, R0, RRX 
l320: mov R7, R11, RRX 
l321: movLSs R4, R5, ROR #17
l322: teq R0, R4
l323: orr R0, R14, R1, ASR R2
l324: orr R9, R5, #9728
l325: orrMIs R3, R5, R1, ROR #29
l326: movs R14, R15, ROR #28
l327: teqPL R4, R12, LSR #27
l328: rscCSs R0, R10, R4
l329: movs R14, R6, RRX 
l330: sbcCSs R11, R0, R10
l331: andVS R8, R4, R10, ASR #13
l332: ands R8, R0, #-1879048187
l333: cmnCS R6, R2
l334: tstLT R0, #39583744
l335: rsbEQ R9, R8, #61341696
l336: eorVSs R4, R5, R6
l337: orrEQs R5, R7, R6, LSL R0
l338: cmpLE R7, R2, ROR R0
l339: cmp R0, R0
l340: mvnMI R5, R0, ROR #10
l341: rscNE R2, R4, R4, LSR #11
l342: adcs R12, R8, R3, RRX 
l343: eors R0, R3, #2384
l344: orrNE R3, R12, R11, ROR R5
l345: movGT R0, R5, LSR #7
l346: subMIs R3, R11, R4
l347: cmpGE R11, R0, ASR #8
l348: rscNE R1, R2, #11
l349: orrGT R10, R11, R1
l350: eorPL R6, R2, R10
l351: sbcs R1, R6, R0, LSR R4
l352: addLE R9, R7, #246
l353: orrs R0, R2, R2
l354: cmn R2, #1605632
l355: orrLTs R5, R14, #-1073741816
l356: tst R9, R5, ASR #18
l357: cmpGT R12, R0, ROR R0
l358: bic R10, R12, #1073741841
l359: muls R6, R9, R6
l360: addCCs R10, R14, R5, ASR #1
l361: orrNE R14, R7, #-268435453
l362: ands R4, R2, #142606336
l363: mulNE R12, R9, R1
l364: teqLS R1, R0, LSL R0
l365: movLTs R7, R3, LSR R0
l366: add R4, R15, R11
l367: bics R7, R10, #78
l368: clzVS R7, R8
l369: subs R11, R0, R1
l370: orrLT R4, R14, R4
l371: mulLE R9, R6, R1
l372: clz R14, R9
l373: mvn R14, R6, LSR R3
l374: adcs R4, R3, R8, LSL #15
l375: subLEs R11, R12, R3
l376: movHI R9, #125
l377: sbcLSs R6, R5, R12, LSL #12
l378: and R8, R14, R8
l379: cmn R10, R0
l380: muls R1, R11, R4
l381: sbcVCs R2, R2, R3, LSL #25
l382: adcNEs R6, R5, #157286400
l383: eorLSs R14, R4, #4194304
l384: subVS R1, R12, R5
l385: cmpNE R1, R2, ASR R11
l386: andEQ R1, R7, #1184
l387: eor R1, R12, R14, ASR #2
l388: orr R3, R6, R3, LSL #30
l389: rsbs R1, R3, R15, LSL #15
l390: orrNE R3, R1, R12
l391: andPLs R1, R8, R14, LSR R10
l392: cmpCC R10, R4, ASR #14
l393: sbcNEs R1, R12, R2
l394: sub R4, R11, #7274496
l395: cmn R12, R6
l396: clzLS R3, R10
l397: mov R5, R9, LSR R10
l398: teqNE R6, #-1426063360
l399: sub R14, R11, R7, ROR #27
l400: mvnLS R0, R2, RRX 
l401: rsbCC R11, R1, R15
l402: rscLT R7, R1, R6, ROR R14
l403: adcVC R0, R0, R2, ASR R6
l404: movLE R11, R0, ROR #2
l405: orrs R7, R3, R1, RRX 
l406: clzLE R6, R8
l407: add R3, R0, R4
l408: movVCs R4, R12, LSL #4
l409: teqCC R7, #1648
l410: tstLS R0, R3, ROR #2
l411: muls R3, R14, R7
l412: movPL R1, #4096
l413: orrs R2, R0, #172032
l414: andCCs R9, R3, R4, RRX 
l415: cmnEQ R5, #254803968
l416: rsbs R5, R1, #36
l417: subPLs R5, R11, #133120
l418: movVS R14, R4, RRX 
l419: tstGE R4, R1, ROR R2
l420: subCS R4, R7, #1207959553
l421: clz R2, R0
l422: orrLTs R14, R5, R15
l423: teq R10, R6
l424: subLE R12, R6, #90177536
l425: bicLS R1, R6, R5, LSL R5
l426: movHIs R7, R4, ASR R12
l427: cmpLE R8, R2, LSR R12
l428: mulEQ R10, R11, R10
l429: adc R6, R11, R3, ASR #0
l430: subPLs R4, R10, R14
l431: orrs R14, R1, R12, ROR R3
l432: rsb R8, R5, R12, ASR R7
l433: rscEQ R6, R10, #-134217726
l434: eorVS R8, R10, R15
l435: teqEQ R1, R3
l436: rsbLE R14, R7, R0
l437: sbcHIs R2, R11, #100663296
l438: muls R5, R1, R2
l439: adc R0, R0, R6, RRX 
l440: teq R14, R10
l441: mul R9, R4, R8
l442: eorGT R9, R3, #754974720
l443: mvns R7, R12, ASR R0
l444: sbc R6, R5, R12, LSL #24
l445: movLT R5, #-1610612734
l446: sbc R0, R3, R2
l447: clzLE R10, R4
l448: rscs R2, R12, R3, LSR #12
l449: eors R14, R2, #9216
l450: subGT R10, R15, R2, RRX 
l451: movs R11, R6
l452: clzMI R7, R3
l453: mov R8, R2
l454: rscVC R0, R8, R14
l455: bics R4, R3, R10, ASR #10
l456: adds R9, R11, R15, LSL #0
l457: subs R4, R6, #603979779
l458: adcs R2, R6, #297795584
l459: eor R3, R5, #16896
l460: cmnLE R12, R1, ASR R11
l461: teq R5, R15, RRX 
l462: orr R0, R7, #-704643072
l463: tstVC R0, R15
l464: mov R11, R11, ROR #7
l465: orrVC R10, R1, R11, ROR R0
l466: cmnCS R10, R11
l467: mov R14, R9, ROR R12
l468: subLT R4, R14, R12, ASR #30
l469: tstGT R4, R2
l470: addVCs R7, R12, R0
l471: rscHIs R12, R10, R2, LSL R4
l472: mvnGE R0, R15
l473: cmpLT R1, R7, LSR R0
l474: adcs R6, R0, #490733568
l475: andLEs R12, R2, R0
l476: andGTs R11, R0, #872415232
l477: adc R11, R4, R2, LSL #24
l478: and R9, R5, R11, ROR #8
l479: cmnLS R0, R0, LSR R2
l480: eorLTs R9, R6, R11, LSR R9
l481: clzGT R14, R2
l482: tstCS R10, R1, ASR R0
l483: mvnLS R1, R14
l484: eorCC R14, R0, R12
l485: eorCS R8, R0, R6, ASR #5
l486: sub R9, R7, R10, ASR R0
l487: addGTs R2, R5, R6, LSR #28
l488: sub R10, R8, #729808896
l489: orrLE R9, R7, R7
l490: clzCS R14, R4
l491: mulGEs R2, R10, R14
l492: clzCS R4, R10
l493: orr R7, R5, R3
l494: andVS R1, R12, R0, LSL R10
l495: sbcs R5, R4, R6
l496: rsbVSs R14, R2, #14720
l497: rsbGEs R3, R4, R11
l498: adcVS R3, R6, R8, ASR R7
l499: addGTs R10, R15, #889192448
l500: tst R4, R8
l501: adcs R1, R12, R12
l502: rscLE R3, R5, R0, ROR #16
l503: orr R14, R2, #948
l504: orrEQs R9, R15, #12544
l505: adcHI R0, R8, R4
l506: eors R5, R3, #232448
l507: teq R4, R2
l508: sub R12, R15, R6, ASR #17
l509: cmpCS R5, R2, LSR #17
l510: andGEs R2, R14, R1, LSL #24
l511: addCC R6, R8, R12, RRX 
l512: eorPLs R2, R6, R7, LSL #21
l513: add R12, R7, #2336
l514: mvn R8, R10, LSR #19
l515: movLT R7, R7, LSR R8
l516: mulHIs R7, R4, R1
l517: andVS R7, R8, R4
l518: orrLE R7, R6, R4, RRX 
l519: movMI R8, R11, LSL R12
l520: mulLE R2, R1, R3
l521: add R14, R1, R4, RRX 
l522: adcLSs R6, R6, #210763776
l523: mulEQs R4, R6, R1
l524: mulLEs R5, R2, R10
l525: orr R14, R0, R5
l526: cmpGT R0, R14, RRX 
l527: clz R14, R0
l528: subLT R14, R12, #1296
l529: mulGTs R5, R9, R10
l530: movs R0, #205
l531: sbcNEs R7, R11, R11, ASR #23
l532: muls R12, R0, R1
l533: subNEs R7, R8, R8, LSL #16
l534: cmn R7, R5, ASR #12
l535: sub R12, R8, R14, LSL #12
l536: rsbMI R11, R10, R8
l537: bicCC R8, R11, #872415233
l538: mulLT R3, R2, R0
l539: movLTs R14, R9, RRX 
l540: subs R9, R12, #14
l541: and R6, R8, R12, RRX 
l542: adcs R11, R12, #2064384
l543: sbc R10, R10, R2
l544: rsbCSs R6, R14, R9, LSR R8
l545: cmpMI R6, #13762560
l546: rsbs R7, R2, #41418752
l547: adc R1, R12, R2, LSL R5
l548: cmpEQ R10, #14848
l549: cmn R15, #87
l550: tst R3, R1, ASR R10
l551: orrLS R8, R11, R4, ROR R2
l552: cmnLT R0, R15, RRX 
l553: mulPLs R9, R6, R12
l554: orrMIs R3, R3, R15
l555: movGE R8, R14
l556: adc R4, R5, R0, LSR R11
l557: subs R7, R8, R10
l558: mvnHIs R7, R0
l559: mulCSs R2, R10, R11
l560: subNEs R10, R6, R0, RRX 
l561: cmp R5, R6, ASR #11
l562: bicCC R5, R8, R9, LSR R4
l563: tstLE R14, #569344
l564: clz R9, R7
l565: rsbGE R1, R10, #180
l566: ands R9, R8, R3, LSL #13
l567: eorMI R8, R4, R15, ROR #23
l568: eorPLs R0, R4, R15
l569: eorLSs R7, R5, R2, LSL #4
l570: orrPL R8, R10, #-2046820352
l571: teqEQ R10, R8
l572: subLTs R4, R3, R5
l573: adds R4, R12, R6, RRX 
l574: andCSs R3, R12, #1342177285
l575: movs R9, R15, ROR #22
l576: mvnVSs R3, R6, ROR R5
l577: orrCC R5, R15, R5, RRX 
l578: cmp R10, R5
l579: rsbPLs R6, R1, R12, ASR R12
l580: subCS R8, R9, #620
l581: mvn R0, R2, LSL R6
l582: teqVC R8, #608174080
l583: subNE R14, R8, R14
l584: tstEQ R3, R2, LSL R5
l585: add R1, R5, R7, ASR R1
l586: mvns R3, R2, RRX 
l587: add R4, R1, R2
l588: cmnGT R14, R12, ASR #29
l589: mul R4, R7, R2
l590: orr R1, R0, R14, RRX 
l591: adcLSs R4, R3, #565248
l592: addCSs R5, R8, R9, LSR R4
l593: muls R3, R1, R10
l594: andVC R1, R15, R12, ROR #18
l595: and R14, R0, R6
l596: rsb R9, R4, R0
l597: addCS R12, R7, R6
l598: addLTs R14, R5, R7
l599: rsc R2, R5, R11, LSR #2
l600: orrs R5, R4, R10, LSR R11
l601: movVS R6, #94
l602: mulVC R6, R8, R12
l603: subHI R4, R3, R14, LSL R9
l604: mulNEs R4, R10, R11
l605: andVSs R8, R7, R14, ASR R0
l606: subs R9, R4, R2, ASR #28
l607: sbcNE R11, R3, #48
l608: sub R2, R5, R6, LSL #27
l609: cmnGT R9, #201326594
l610: bic R6, R4, R8, ASR R8
l611: subs R7, R8, #59768832
l612: eor R10, R6, R7, RRX 
l613: adc R12, R15, #3
l614: mulPL R3, R4, R8
l615: teqLT R3, R6, ASR R6
l616: subNEs R10, R15, #-536870897
l617: cmnGT R1, R14
l618: mulLSs R3, R5, R2
l619: movLE R8, R14
l620: cmnGE R15, R8, LSL #20
l621: and R14, R10, R8
l622: mov R10, R7, ASR R2
l623: cmnCS R9, R11
l624: mulPL R7, R6, R3
l625: teqCS R11, R7, ROR R9
l626: movs R7, #1027604480
l627: subLE R9, R6, R4, LSR R6
l628: adcEQs R3, R3, R14, LSL R12
l629: mulLEs R4, R6, R11
l630: rsbs R0, R8, R7, RRX 
l631: cmpNE R2, R12, RRX 
l632: rscs R14, R6, R14, LSL R0
l633: muls R6, R5, R11
l634: eorVCs R0, R10, #0
l635: eors R4, R15, R15, RRX 
l636: tst R9, R10
l637: cmn R6, #0
l638: mvns R8, #536
l639: subs R2, R3, R10
l640: subLSs R5, R14, #2656
l641: eorCCs R6, R7, R3, ROR R14
l642: ands R7, R0, R5
l643: mulLT R12, R11, R2
l644: teq R12, R12
l645: movs R10, #2129920
l646: cmpLT R8, R3, ROR R2
l647: eorLS R3, R9, #101376
l648: cmpGE R11, R12, ASR R0
l649: subMIs R12, R5, R0, LSL R1
l650: subEQ R11, R6, #83
l651: mulGT R4, R9, R0
l652: teq R9, R7
l653: tstHI R5, #8704
l654: rsb R8, R1, R7
l655: add R11, R2, R12, LSR #13
l656: cmnCC R10, R4
l657: and R9, R10, R5
l658: rscMIs R8, R1, R9, ROR #29
l659: sub R4, R6, R12, ROR #25
l660: sbc R8, R6, R0, LSL #16
l661: mulCCs R2, R12, R5
l662: teqCS R15, #4352
l663: sbcs R10, R3, #112197632
l664: mvns R8, #12320768
l665: orrs R2, R7, R14, ROR #22
l666: eorLE R0, R0, R2, ROR #10
l667: clz R6, R8
l668: clzVS R6, R2
l669: cmnLS R11, R11, LSL R4
l670: rsbGT R7, R15, #-402653183
l671: tstGT R12, #225443840
l672: mul R6, R5, R8
l673: sbcCC R14, R0, R9, ROR #15
l674: tst R6, R0, ASR R14
l675: movs R11, R15
l676: bic R10, R8, R3, ASR #13
l677: adc R11, R8, R6
l678: eorGT R1, R0, R6, RRX 
l679: sbcVSs R7, R6, R1
l680: orrEQs R3, R15, R15, RRX 
l681: bics R7, R12, R14
l682: bicNEs R9, R3, R1, LSL #2
l683: adc R6, R7, R7, ASR #19
l684: subCC R7, R5, #352321536
l685: movs R11, #540
l686: sbcVSs R14, R1, #16384
l687: mulVCs R2, R14, R14
l688: orrGE R10, R1, R4, ROR R0
l689: andGT R6, R0, R6, RRX 
l690: cmnHI R1, R4, LSR #16
l691: orrLE R12, R10, #209715200
l692: rsbs R6, R8, R2
l693: bic R8, R10, #28672
l694: rsbNE R3, R14, R10, LSL #8
l695: rscGEs R3, R9, R12, ROR #22
l696: orr R10, R8, R2, RRX 
l697: subEQ R10, R12, R8, LSL R0
l698: mvnLTs R12, R7, ROR R11
l699: clz R2, R12
l700: clz R2, R4
l701: sbcGT R10, R7, R7, LSR R11
l702: mul R10, R5, R3
l703: cmp R14, #612368384
l704: adcLTs R12, R15, R15, RRX 
l705: subs R11, R14, #161480704
l706: cmpMI R12, R9
l707: subs R8, R3, #217088
l708: clz R0, R8
l709: mvnNEs R5, R14, LSR #28
l710: sbcCS R12, R4, #536870925
l711: teq R7, R4
l712: cmn R0, #58720256
l713: rsbs R9, R15, R8
l714: andVC R6, R4, #240123904
l715: clz R9, R6
l716: rscs R0, R5, #22784
l717: rsbGE R8, R8, R1
l718: andLTs R6, R10, R11, LSR #24
l719: clz R3, R12
l720: adc R2, R6, R2, LSR #26
l721: tstVC R4, R6
l722: sbcLTs R6, R1, #905216
l723: mvnCSs R8, R4, ROR #2
l724: sub R10, R2, R9, ROR R8
l725: andNE R4, R12, R12
l726: mulPLs R11, R7, R3
l727: rscs R4, R7, R8, ASR #3
l728: movPLs R9, R9
l729: subPL R3, R7, #58368
l730: mvnPLs R7, #152043520
l731: adcCC R1, R6, #12288
l732: mulVC R5, R10, R4
l733: cmpPL R14, R11, LSR #13
l734: orrCCs R1, R10, R8
l735: rsc R2, R4, #589824
l736: andGT R12, R1, R7, LSR #28
l737: rsbEQs R9, R9, R1
l738: tstVC R5, R2
l739: ands R2, R5, #6144
l740: bicLEs R6, R12, R3, ASR #15
l741: subVC R11, R2, R3, ASR R10
l742: orr R14, R6, R8
l743: cmp R4, R10, LSR R14
l744: subs R3, R6, R7
l745: bics R6, R8, R7, RRX 
l746: ands R5, R4, R10, ROR R12
l747: rsbPLs R3, R11, R14
l748: rsbPL R7, R4, R4, LSL R10
l749: movHI R2, R5
l750: eor R10, R11, R8
l751: subs R1, R14, R9, LSL R4
l752: teq R7, #106496
l753: subNE R11, R14, #-939524094
l754: subLS R2, R4, R11, RRX 
l755: and R7, R5, R3
l756: eor R4, R11, R4
l757: sbcs R14, R2, #952
l758: movCSs R0, R12, RRX 
l759: orrGT R12, R6, R15
l760: andCS R11, R2, #242221056
l761: addCC R4, R4, R10, RRX 
l762: andVS R11, R0, R6
l763: eorMI R6, R1, #14144
l764: adcNEs R6, R4, R1, LSL R14
l765: rsbLS R8, R1, R7, ROR R11
l766: cmn R0, #-536870909
l767: rscGEs R2, R8, R11, ROR R0
l768: clz R5, R14
l769: teqCS R14, R10, LSL R12
l770: movGEs R5, R7, ASR #31
l771: adcGE R1, R1, R4, ASR R8
l772: andNE R6, R9, #826277888
l773: bics R5, R12, R6, ROR R14
l774: subEQ R4, R15, #3293184
l775: bicLSs R12, R11, R2, LSL R2
l776: movGTs R12, R11
l777: bicGT R6, R10, #14876672
l778: rscs R3, R4, #3072
l779: cmnEQ R3, R14, LSL R0
l780: cmpCS R3, #228589568
l781: muls R6, R7, R4
l782: eors R5, R2, #141557760
l783: eors R3, R6, R9, LSL #30
l784: eorMIs R4, R8, R6, LSR R10
l785: rsbPL R6, R5, R8
l786: add R11, R15, R7, ASR #10
l787: addCS R1, R3, R0, ROR #1
l788: bic R12, R2, R2, ROR #18
l789: movCS R12, R6
l790: cmnMI R10, R14
l791: ands R8, R14, R11
l792: adcLSs R9, R2, R9, LSL R11
l793: rscGEs R10, R14, #56320
l794: cmpPL R1, R10
l795: rsbVSs R12, R7, R9
l796: clz R0, R9
l797: cmpMI R2, R1
l798: muls R4, R14, R11
l799: rscMI R10, R0, R6, RRX 
l800: bic R14, R5, R3, ASR #30
l801: bic R4, R6, R4
l802: movGEs R9, R14
l803: mulLE R8, R7, R9
l804: eors R1, R9, #1088
l805: addLT R6, R3, R0, ASR #13
l806: bicEQ R14, R6, R11, LSR #9
l807: rsbGT R9, R3, #63176704
l808: addPLs R7, R9, #1476395010
l809: rsb R14, R4, R5, ASR R5
l810: subs R4, R7, #4096
l811: muls R6, R1, R4
l812: rscEQs R9, R8, #2768
l813: rsb R6, R4, R8
l814: rsbCSs R0, R0, R5, LSR #21
l815: sbcGE R5, R7, #13824
l816: clzVC R14, R11
l817: subLS R1, R8, R1, RRX 
l818: teqCS R4, R14
l819: adcs R3, R15, #3473408
l820: rsbs R6, R1, R5, RRX 
l821: andCCs R3, R5, #564
l822: rsbCCs R6, R12, R7, LSR R14
l823: andHI R0, R10, #40960
l824: cmpLS R2, #175104
l825: andNEs R1, R2, R7
l826: subCC R1, R8, #18944
l827: adc R6, R11, R14, ROR #14
l828: adcGT R5, R0, R12, LSL #6
l829: mvnCCs R6, R12, ROR #9
l830: subs R2, R0, #30670848
l831: clz R9, R3
l832: rsbs R10, R8, R1, LSL #13
l833: tst R12, #834666496
l834: eor R0, R8, R5
l835: orrEQ R3, R10, R2, ROR #14
l836: eorHIs R6, R1, R9, ASR R8
l837: sub R0, R9, R9, ROR #22
l838: orrLT R14, R15, #223
l839: adds R11, R3, R5, ROR R7
l840: orrEQ R7, R6, R0, ASR R0
l841: clzGE R3, R12
l842: and R7, R7, #2850816
l843: movs R1, R11, LSL R14
l844: andVCs R9, R0, #15616
l845: clzLT R7, R6
l846: addLTs R4, R8, R7, LSR #12
l847: rsbs R9, R1, R12, ROR R8
l848: orrVC R2, R10, R9, LSL #4
l849: teqCS R5, R1, RRX 
l850: mvnGTs R3, #15204352
l851: rsbNEs R4, R12, R9
l852: cmp R15, R15
l853: orrCSs R3, R1, R4, RRX 
l854: mvnVCs R9, #2129920
l855: andLSs R1, R0, R3, LSR #10
l856: teq R12, R8, LSL R7
l857: movs R10, R3, LSR #1
l858: eor R8, R4, R3, ROR #8
l859: rscVC R0, R8, R9
l860: and R9, R8, R6
l861: adcVC R1, R3, R2, ASR R3
l862: tst R6, R2
l863: addHI R0, R4, R1, ASR R9
l864: subGTs R10, R6, R3
l865: mulLS R3, R8, R1
l866: and R10, R2, R15, LSR #26
l867: muls R8, R3, R5
l868: subCCs R10, R14, R2, ASR #22
l869: sub R12, R2, R4
l870: subVS R10, R15, R9
l871: muls R7, R9, R11
l872: rsb R7, R10, #28
l873: eor R12, R6, #2816
l874: teq R12, #-939524093
l875: orrPLs R2, R5, R6, LSR #14
l876: rsc R8, R2, #245760
l877: cmn R14, #35
l878: andGEs R8, R10, #880
l879: clz R11, R6
l880: orrHI R11, R14, R7, LSL #15
l881: bics R3, R8, #603979777
l882: andLTs R3, R8, R5, RRX 
l883: cmn R5, R8, LSL R6
l884: cmp R15, #55
l885: clzGE R3, R9
l886: rsbEQs R8, R11, #57671680
l887: adcs R1, R10, R5
l888: orrs R3, R10, R10, LSR R6
l889: cmnGE R2, R12, RRX 
l890: rscs R0, R14, R14, RRX 
l891: mov R14, #402653186
l892: cmpPL R10, #1016
l893: bics R6, R12, #92160
l894: rscVS R8, R7, R6, RRX 
l895: tst R14, R10, LSR #2
l896: tst R8, R6, LSR R6
l897: teq R3, #34340864
l898: add R6, R3, R11, ASR R11
l899: sbcs R12, R3, R5
l900: eorPLs R11, R15, #1808
l901: tst R7, R14, ROR R9
l902: andLTs R11, R8, R6, RRX 
l903: clz R4, R10
l904: addHIs R6, R3, R3
l905: sub R4, R5, R0
l906: teqLT R2, R15, LSL #10
l907: rsbLS R10, R0, R11, RRX 
l908: clzLT R12, R10
l909: rsb R0, R0, R7, RRX 
l910: clz R7, R4
l911: adcMI R8, R9, #9306112
l912: subs R2, R3, R1
l913: cmn R14, R3, LSL R4
l914: subCS R10, R2, R10
l915: sbcGT R2, R6, R10, LSL #20
l916: movGEs R5, R5, LSR #19
l917: teq R2, R4, LSR R8
l918: clz R5, R9
l919: cmp R11, #893386752
l920: eors R7, R2, R3, ASR #0
l921: cmn R14, R15
l922: clz R4, R0
l923: teq R8, R6, RRX 
l924: adc R0, R14, R7, LSR R4
l925: mulGTs R14, R8, R11
l926: tstVC R10, R14, LSL #27
l927: orrCCs R12, R5, R7, LSR R10
l928: cmn R6, #1006632960
l929: adds R11, R12, #112197632
l930: bicGT R8, R7, R9
l931: subGE R3, R14, R10, ASR R1
l932: bicVS R2, R5, R2, ROR #23
l933: movVSs R12, #1392640
l934: mvns R2, R3, RRX 
l935: sbcs R10, R7, R9, LSR #13
l936: subLT R12, R5, #3145728
l937: rscCS R7, R0, R7, ASR #9
l938: addMIs R5, R12, #-2147483648
l939: mulGEs R12, R9, R2
l940: clzCC R11, R7
l941: add R8, R14, R2, RRX 
l942: clz R10, R9
l943: rsbCCs R1, R8, R0, LSR R5
l944: subs R10, R5, R12, ASR #28
l945: orrGTs R6, R6, R6, ROR #2
l946: eorNE R8, R9, R14, LSL #0
l947: cmpEQ R1, R6, RRX 
l948: teqVC R4, R4
l949: rscPL R7, R8, R12, ROR R11
l950: mvns R14, R10, LSL R3
l951: cmnLE R0, R4, RRX 
l952: tstCS R4, R12
l953: tstGT R15, R6
l954: mulGEs R8, R2, R3
l955: movs R4, R12, ASR R4
l956: cmpPL R3, R3
l957: adcLTs R9, R5, R11, RRX 
l958: rscGE R5, R3, R4
l959: adcVSs R4, R1, R0
l960: cmp R3, #734003200
l961: andNEs R11, R10, R3, RRX 
l962: tstVS R2, R4, ROR #17
l963: orrGT R2, R14, R2
l964: bicCS R0, R12, R9
l965: movLSs R11, #96
l966: subVCs R6, R7, R3, RRX 
l967: eorGE R7, R5, R9, ASR #20
l968: bics R3, R7, R4
l969: clzCS R1, R9
l970: ands R7, R14, R14
l971: adcNE R5, R5, R11, ASR R12
l972: sbcGT R10, R9, R14, LSL R14
l973: and R8, R10, #66560
l974: mvnMIs R14, R14, LSR #23
l975: tstCS R11, R9, LSL #13
l976: mulLSs R5, R10, R1
l977: cmpLE R11, R6, LSL R12
l978: addGT R0, R3, R8
l979: bics R6, R12, R14
l980: subHI R6, R3, R2, ASR R9
l981: cmp R1, R2, ROR R3
l982: subEQ R11, R10, #6144
l983: bicHI R4, R10, R12, LSR R9
l984: eors R0, R11, R15
l985: tstEQ R7, R4
l986: rsbs R6, R0, R0, ASR R5
l987: mulGE R4, R3, R9
l988: movs R12, R11, LSR R7
l989: mvn R4, R12, LSL #2
l990: orrCCs R7, R15, #3824
l991: rsbs R5, R8, #589824
l992: movGTs R9, #47972352
l993: cmp R8, R14, LSL R14
l994: rscs R0, R3, R9
l995: andLS R6, R14, R5
l996: adcLTs R2, R7, R4
l997: mvn R2, R1
l998: bicCC R6, R12, R14, ROR R10
l999: subNE R2, R4, #270336
l1000: andPLs R8, R2, #4
l1001: cmn R8, R0, LSR #20
l1002: sbcMI R2, R9, #834666496
l1003: orr R14, R11, R4, RRX 
l1004: mvnVS R7, #3145728
l1005: eors R10, R1, R12, LSL #14
l1006: adds R2, R15, R6
l1007: eorGEs R3, R2, R5, LSR #27
l1008: movs R5, R14
l1009: subVCs R8, R10, R7
l1010: eorEQs R1, R2, R4, RRX 
l1011: teqCC R14, R3, RRX 
l1012: rsbLTs R1, R7, #1065353216
l1013: and R2, R7, #784334848
l1014: and R11, R5, #7104
l1015: and R10, R5, R3, LSR #21
l1016: rscVC R11, R1, R3, LSL #2
l1017: adcLS R14, R11, #-1073741821
l1018: movVSs R9, R9, ASR #25
l1019: rsb R4, R1, #1073741872
l1020: eors R7, R8, R12, LSR #5
l1021: eorCSs R1, R1, R7
l1022: eorGT R3, R6, R11
l1023: clzNE R6, R9
l1024: andLS R3, R12, R4, LSR #11
l1025: mvns R14, R7
l1026: and R0, R4, R4, RRX 
l1027: addEQ R10, R10, R7
l1028: bicGEs R3, R14, R4
l1029: mvns R12, R9, LSR #28
l1030: subMIs R3, R6, R15, ASR #6
l1031: subs R8, R11, R2
l1032: tstLS R12, R5
l1033: eors R7, R4, R7
l1034: addVSs R11, R12, R4, LSL R6
l1035: mvnGEs R1, R5, LSL R14
l1036: ands R9, R6, R9, LSL R5
l1037: tst R9, #3824
l1038: teq R1, #40960
l1039: rsbGT R14, R5, R12, ASR #18
l1040: cmnCC R9, R10, LSR R3
l1041: ands R5, R9, #1342177287
l1042: cmpCS R6, R9, LSL R11
l1043: rscs R1, R15, R8, LSL #27
l1044: orrCS R3, R1, #662700032
l1045: andVC R6, R0, R14
l1046: cmn R2, R9
l1047: andVSs R5, R14, R1
l1048: bic R5, R4, #3407872
l1049: bic R7, R4, R10, ROR #26
l1050: adds R11, R12, R12, LSR #21
l1051: eors R3, R11, R6, RRX 
l1052: tstEQ R7, R4, ASR #19
l1053: bicGEs R10, R14, R5
l1054: clz R2, R11
l1055: mulGT R3, R4, R5
l1056: sbc R12, R10, R11
l1057: eorCC R1, R1, R12, RRX 
l1058: cmpCC R12, #54788096
l1059: mulVS R11, R4, R4
l1060: orrEQ R7, R14, R14, LSR R4
l1061: rsbPL R1, R12, R2, RRX 
l1062: clzLE R3, R1
l1063: rscNE R14, R8, #89128960
l1064: subs R7, R9, R7, RRX 
l1065: mov R14, R4, LSL R4
l1066: bics R1, R5, R2
l1067: teqVC R4, R10, LSR R2
l1068: rscs R12, R6, R5
l1069: subLS R12, R6, #1207959552
l1070: cmpLS R6, R6
l1071: cmp R1, R0, RRX 
l1072: teq R8, R3, LSR R10
l1073: mov R0, R12, ROR R0
l1074: and R12, R1, R6, ROR R7
l1075: rscGE R3, R1, #51456
l1076: clzVS R7, R0
l1077: mul R10, R4, R1
l1078: mulEQ R0, R14, R1
l1079: andLS R2, R10, #247463936
l1080: cmpVS R0, R11, RRX 
l1081: and R12, R8, R9
l1082: rsbs R9, R6, R14
l1083: mul R7, R0, R0
l1084: clzLT R5, R8
l1085: sbcLS R2, R14, R7, ASR #6
l1086: ands R6, R9, R2
l1087: clz R6, R10
l1088: addNE R14, R1, R5, ASR R2
l1089: addLS R7, R3, R8, RRX 
l1090: orr R2, R6, R9
l1091: teqCS R0, R1, RRX 
l1092: sbc R2, R12, #-1879048180
l1093: eorEQ R2, R4, R10, RRX 
l1094: cmpGE R2, #120
l1095: rsbCS R7, R3, #176160768
l1096: clzMI R0, R9
l1097: teqPL R6, R8
l1098: adcVSs R14, R7, #73728
l1099: teq R9, #2688
l1100: subs R9, R9, R2
l1101: rscs R7, R9, R11, LSL R2
l1102: movCS R6, R10, ROR #30
l1103: subEQ R8, R7, R6, ROR #1
l1104: cmnEQ R0, R12, LSR #10
l1105: rsbs R4, R9, #71303168
l1106: addVS R14, R9, #61440
l1107: sbc R11, R6, R0
l1108: andEQ R11, R3, R7, LSL R3
l1109: cmn R5, R7, ASR R6
l1110: mvn R9, R6, ROR #26
l1111: addNEs R14, R5, R12
l1112: rsc R0, R5, R1
l1113: and R3, R5, R5, ASR #26
l1114: eorHIs R11, R10, R0
l1115: tstEQ R6, R14, LSL R2
l1116: teq R9, #24117248
l1117: mvns R0, R6, ASR #1
l1118: mulNEs R9, R8, R11
l1119: rscLSs R14, R2, R11
l1120: bicGEs R2, R4, #41680896
l1121: andMI R6, R9, R10
l1122: sbcs R7, R11, R6
l1123: mvnNEs R9, R15
l1124: eorGTs R3, R6, R14, LSL R9
l1125: orrVCs R7, R10, R6, RRX 
l1126: teq R5, #-1073741794
l1127: tstNE R2, R0
l1128: cmnNE R8, R2
l1129: sub R4, R5, R7, ASR R11
l1130: bicVS R1, R14, #46592
l1131: clzVC R9, R3
l1132: eorMI R3, R11, R12, ASR R0
l1133: mulGTs R10, R8, R3
l1134: clzMI R0, R3
l1135: rsc R3, R15, #872415235
l1136: movPLs R3, R10
l1137: cmnGT R6, R3, LSR R3
l1138: subs R1, R9, R8, RRX 
l1139: rsc R14, R4, R11, ROR #26
l1140: cmnCS R1, R0, LSL #3
l1141: cmpVS R0, R4, LSR #28
l1142: and R14, R10, R1, LSR R12
l1143: subs R12, R5, R4, RRX 
l1144: addEQ R2, R6, #19
l1145: orr R7, R1, R5, LSL R7
l1146: andVSs R12, R9, #318767104
l1147: subCS R10, R10, #-1342177279
l1148: subGT R9, R4, R12
l1149: tstVC R14, R14, ROR #2
l1150: mulLT R7, R11, R9
l1151: sbcLTs R10, R10, R1, ROR #20
l1152: movs R5, R15, ASR #7
l1153: andEQ R3, R7, R7, RRX 
l1154: andHI R14, R6, R7
l1155: subNEs R12, R6, R6
l1156: bic R3, R4, R8
l1157: eorCC R4, R15, R4
l1158: sbc R5, R10, #250
l1159: cmn R7, R4, LSR R7
l1160: mvnEQ R2, R6
l1161: rscVSs R1, R8, R4
l1162: clzVC R9, R3
l1163: mvnLS R8, #4
l1164: sbcVS R12, R1, R4, ROR R7
l1165: movLT R0, R14, ASR R2
l1166: rscs R2, R4, #-1073741821
l1167: adcCS R0, R14, R0
l1168: sub R14, R3, R9, ROR #1
l1169: rsbLEs R8, R0, R5
l1170: cmpCC R6, R11
l1171: movs R12, #58458112
l1172: adc R0, R9, R14, ROR R7
l1173: mulVSs R4, R3, R3
l1174: tstEQ R1, R9, ROR #27
l1175: subLT R4, R3, R7
l1176: rsb R0, R11, R10, ROR R1
l1177: eorLS R8, R0, R11, LSR #7
l1178: subMIs R3, R7, R12
l1179: tstMI R10, R8, LSL R4
l1180: cmn R7, #11141120
l1181: andGTs R6, R1, R15, LSL #13
l1182: clz R1, R8
l1183: mvnVS R1, R9, LSL R9
l1184: muls R12, R2, R1
l1185: subs R5, R15, R6, LSR #14
l1186: subs R11, R3, R1
l1187: orrLE R12, R9, #-1124073472
l1188: tst R1, R14
l1189: bicCCs R11, R0, R3, ROR R8
l1190: mov R11, R8, ROR #11
l1191: rsbCC R7, R11, R10
l1192: adds R2, R7, #14680064
l1193: eors R4, R9, R10, LSR #2
l1194: eors R2, R9, R5
l1195: eor R12, R0, R8, LSL R12
l1196: adcLS R12, R12, R6, RRX 
l1197: rsbLE R6, R9, R2, LSR #5
l1198: eorVSs R3, R8, R10
l1199: rsbGEs R2, R2, R9
l1200: rsb R10, R5, #318767104
l1201: adcVCs R14, R14, R6, ROR #7
l1202: eorNEs R4, R4, R8, RRX 
l1203: bicLS R9, R5, R14, ASR R8
l1204: tst R14, #14155776
l1205: eorLSs R1, R9, R10
l1206: subLE R11, R2, R8, ROR R5
l1207: eorNEs R4, R11, #1627389952
l1208: add R6, R4, R2, ASR R0
l1209: rsc R1, R10, R11, LSL #20
l1210: eor R5, R4, R1, ASR R14
l1211: ands R1, R14, R6, RRX 
l1212: tstCC R4, R4, LSR #30
l1213: mov R4, #25
l1214: subGTs R1, R2, R10, ROR R11
l1215: mulLS R12, R14, R11
l1216: movs R14, #1610612749
l1217: and R8, R8, #401408
l1218: eorLT R14, R4, R2, ASR #8
l1219: adcGTs R6, R8, R5
l1220: add R0, R1, #1296
l1221: cmp R1, R5
l1222: eor R6, R0, R7, ROR R6
l1223: orrs R7, R6, #11776
l1224: bics R12, R2, R9, ASR #0
l1225: sbcs R8, R12, #158720
l1226: eorLS R5, R11, R9, ROR #31
l1227: subLS R5, R14, R2, RRX 
l1228: eorVCs R11, R9, R9, ROR #17
l1229: cmnVC R14, R8, LSL R9
l1230: orr R5, R3, R2, ASR R10
l1231: and R11, R5, #-2147483620
l1232: andCC R3, R7, R11, ROR R3
l1233: subCCs R4, R0, R10, LSL R1
l1234: rsbs R3, R5, R12, ASR #21
l1235: orrLE R10, R6, R10, ROR R14
l1236: mulEQs R0, R12, R12
l1237: orrPL R2, R10, R14
l1238: eorCS R0, R3, R6, LSL R12
l1239: teq R9, R5
l1240: cmnNE R12, R2
l1241: eorMI R5, R8, #905969664
l1242: orrHI R14, R2, R1
l1243: cmp R6, R10, LSL #6
l1244: add R2, R2, R14
l1245: rscs R7, R7, #6029312
l1246: eor R1, R8, #656
l1247: addHI R3, R2, R0
l1248: teq R2, R4, ASR #21
l1249: movMIs R4, R2, ASR #12
l1250: teqVC R0, R12, RRX 
l1251: mov R4, R1, LSL #10
l1252: eorPLs R14, R14, R0, LSR #7
l1253: movCCs R11, R11, RRX 
l1254: subVS R9, R0, R9, LSL R10
l1255: rsbVSs R1, R3, #1982464
l1256: andPL R9, R15, #262144
l1257: cmp R2, R10, RRX 
l1258: subLSs R0, R6, R3
l1259: clz R10, R2
l1260: teq R0, R0, ROR #5
l1261: bicCS R5, R1, #671088640
l1262: clzLE R11, R2
l1263: rsbGT R1, R11, #442368
l1264: clz R14, R4
l1265: mul R2, R3, R10
l1266: mvn R7, R9
l1267: mulVS R6, R0, R2
l1268: tstPL R12, R3, ASR #16
l1269: mul R14, R2, R0
l1270: subCS R11, R4, R3
l1271: subEQ R6, R0, #13369344
l1272: cmn R14, #-1409286141
l1273: subPL R8, R2, #147
l1274: rsbs R5, R2, #13056
l1275: mvnVCs R2, R15, LSL #2
l1276: bicHIs R9, R14, #10
l1277: rsbVC R7, R14, R0
l1278: adcNE R2, R2, R6
l1279: addLEs R10, R6, R1, RRX 
l1280: muls R0, R5, R3
l1281: rscHIs R9, R0, R11
l1282: adc R14, R2, R10, RRX 
l1283: rscVCs R2, R10, R8, LSL R14
l1284: cmp R10, #45312
l1285: addHIs R14, R14, R8, ASR R7
l1286: sub R0, R2, R3, ASR #14
l1287: andCCs R14, R5, R11, LSR R0
l1288: rsb R9, R5, R11, LSR R5
l1289: cmpLS R12, R11
l1290: cmn R11, R9
l1291: subs R2, R0, R7
l1292: cmnCS R8, R3, LSR R7
l1293: rsb R2, R0, R14, LSR R5
l1294: orr R5, R10, R5, LSR R4
l1295: sub R12, R4, #-536870912
l1296: cmpPL R14, R8, ROR R2
l1297: orr R12, R7, R2, RRX 
l1298: subs R6, R4, #3981312
l1299: addMI R4, R9, R11, ASR #19
l1300: clz R1, R10
l1301: mvns R3, R9, ROR #8
l1302: ands R6, R10, R14, RRX 
l1303: orr R10, R14, R6
l1304: cmnCS R9, R8, ASR R9
l1305: subMI R4, R12, R5, ROR #28
l1306: rscGEs R6, R9, #-469762047
l1307: teq R10, R0
l1308: teq R15, R15, RRX 
l1309: rsb R9, R4, R11, ASR #16
l1310: teqLE R5, R5, ASR R12
l1311: addGE R2, R9, R2, ROR R3
l1312: eorVSs R4, R15, R12, ROR #1
l1313: subNE R4, R4, R4, RRX 
l1314: eorNEs R0, R5, #12992
l1315: eorCSs R10, R7, R6, ROR #12
l1316: mvnLTs R2, R6, RRX 
l1317: clzCC R2, R1
l1318: addGE R2, R9, R6, LSL R8
l1319: addVCs R8, R4, R8, LSR #29
l1320: teqLT R10, R6, LSR #26
l1321: bic R14, R9, R10
l1322: rsb R7, R8, R2, LSR R9
l1323: cmp R10, R7, LSR R8
l1324: subLE R14, R0, R8
l1325: orrLE R3, R4, R4, RRX 
l1326: adcVS R12, R11, R7, ASR R6
l1327: teqGT R5, R9
l1328: teqLS R8, #15663104
l1329: teqLS R5, R2
l1330: tstMI R3, R12, RRX 
l1331: cmnHI R14, R6, ROR #15
l1332: andGE R8, R12, #960
l1333: orrs R14, R3, #2880
l1334: cmpNE R11, R8, LSR #8
l1335: clzLT R7, R8
l1336: tst R6, R1
l1337: sbcs R1, R5, R9, RRX 
l1338: bicMIs R2, R6, #3936
l1339: clz R2, R7
l1340: adcGTs R6, R14, R15, ASR #19
l1341: and R8, R10, R11, ROR R2
l1342: orrCCs R6, R15, R11
l1343: sbcCC R2, R11, #-536870898
l1344: clzPL R12, R8
l1345: mvns R6, R2, ROR #25
l1346: teq R6, R6
l1347: orrs R14, R3, R11
l1348: ands R11, R4, #49920
l1349: mvn R10, #7552
l1350: and R8, R5, #637534208
l1351: tstLE R6, R6, LSL #11
l1352: rscCSs R3, R11, R7, LSR #18
l1353: teq R7, R7, ASR #15
l1354: rsbEQs R0, R11, #301989888
l1355: clzMI R9, R12
l1356: tstPL R9, R10, LSL #27
l1357: adc R12, R14, R10
l1358: bicMI R9, R0, #2000
l1359: subGTs R7, R5, R0, LSL R2
l1360: subLEs R12, R7, R3
l1361: addMIs R10, R2, R7
l1362: adcMIs R9, R0, R2
l1363: sbcCSs R4, R2, #7798784
l1364: sbc R1, R6, R10, ROR #9
l1365: bics R11, R6, R2, ASR R7
l1366: movLTs R11, R14
l1367: adc R4, R6, R6, LSR #0
l1368: cmnVC R2, #458752
l1369: addLE R9, R10, R3, LSL R3
l1370: mvnLTs R4, R11, LSR #13
l1371: rsbLTs R3, R7, #211968
l1372: andVCs R14, R1, R12, ROR #7
l1373: bics R0, R11, R14
l1374: clz R10, R7
l1375: eor R12, R2, R10, LSL R7
l1376: eorGEs R8, R6, #720
l1377: mulCS R6, R12, R1
l1378: cmpVS R6, R12, LSR #27
l1379: mul R14, R9, R1
l1380: orrs R11, R10, R2
l1381: orrs R0, R2, R15
l1382: eor R12, R4, R11
l1383: subs R7, R3, R8, RRX 
l1384: sbc R7, R5, R7, RRX 
l1385: eors R1, R5, #918552576
l1386: clz R11, R2
l1387: rsb R1, R11, R2, LSL #31
l1388: cmn R2, R14
l1389: tstGE R8, R5, LSL R0
l1390: addVC R10, R12, R5
l1391: mul R8, R2, R11
l1392: andNEs R8, R14, R10, RRX 
l1393: eorLT R3, R11, #1952
l1394: movCC R3, #12288
l1395: sub R10, R12, R6
l1396: sub R2, R4, R12, LSR #17
l1397: rscs R4, R1, #964
l1398: movs R9, R4, LSR R11
l1399: rsbGT R6, R2, R6, LSL #22
l1400: sbcs R2, R3, R1
l1401: rsb R14, R11, R5
l1402: cmpLS R4, R4
l1403: mvns R8, R6
l1404: tst R14, R11
l1405: addVS R3, R6, R9, ROR R5
l1406: mvnCS R5, R7, ROR #9
l1407: clzGT R12, R8
l1408: addVSs R4, R6, R1
l1409: ands R8, R6, #120586240
l1410: bics R5, R12, R1, LSL R5
l1411: rscCS R12, R9, #128
l1412: eorLS R2, R7, #155189248
l1413: movVS R12, R5, ASR R12
l1414: subCSs R3, R10, #3808
l1415: teq R14, R11, LSL #19
l1416: adcCSs R12, R7, R7, ASR #29
l1417: eors R0, R6, #-1073741815
l1418: mulLE R8, R0, R9
l1419: rsbHI R1, R3, R5
l1420: addNE R6, R8, R12, LSL R9
l1421: cmn R15, R14
l1422: rscs R0, R12, R10, LSL #8
l1423: rscCCs R4, R3, R8
l1424: tstPL R5, #7602176
l1425: sbcHI R9, R12, R10, LSL R11
l1426: sbcCSs R12, R3, #1073741855
l1427: subPLs R9, R12, R2, ASR R5
l1428: sbc R1, R6, #-1073741823
l1429: adcs R9, R12, #163840
l1430: rsbEQs R10, R2, R7
l1431: cmpNE R1, R2
l1432: eorMIs R2, R5, #248832
l1433: movLEs R2, R7
l1434: rsc R7, R0, R7, LSR #21
l1435: adcMIs R1, R4, R1, ROR R6
l1436: clz R9, R6
l1437: orrVS R2, R3, R14, ROR #29
l1438: clz R11, R4
l1439: rscVSs R0, R9, R5, ASR #19
l1440: rscMI R0, R7, R11, LSR R0
l1441: adcCSs R0, R2, R12, RRX 
l1442: mvnVSs R7, R10
l1443: orrHI R3, R9, #593920
l1444: adcs R3, R15, R11, RRX 
l1445: bic R11, R2, R7
l1446: movPL R0, #27
l1447: clzNE R10, R8
l1448: mulNE R5, R9, R9
l1449: orr R2, R2, R8, LSR R8
l1450: sbcLSs R3, R1, R2, LSR #12
l1451: adcLSs R6, R8, R7
l1452: eor R8, R10, R7
l1453: orrLS R3, R2, R9, RRX 
l1454: mvnEQs R12, R0, ASR #17
l1455: orr R11, R14, R12
l1456: rscCCs R11, R6, R5, RRX 
l1457: eor R6, R1, R11, RRX 
l1458: mvnGT R1, R10, LSL R4
l1459: adds R0, R11, R2, RRX 
l1460: mvns R7, #3047424
l1461: cmp R9, R7
l1462: rsc R3, R3, #2080768
l1463: rscLSs R11, R3, R3, RRX 
l1464: adds R3, R4, R10, RRX 
l1465: cmp R6, R9, ASR R0
l1466: tst R3, R0
l1467: cmnCS R3, R5, RRX 
l1468: teqCC R4, R9, LSR #2
l1469: eor R1, R5, R4
l1470: add R7, R6, R12, LSL R7
l1471: rsbGEs R1, R1, R8, LSL R14
l1472: rsc R12, R0, R15
l1473: adc R2, R10, R3
l1474: adcs R0, R14, R10, LSL R9
l1475: eorGT R4, R15, #14464
l1476: eorVSs R11, R10, #2560
l1477: and R2, R6, R7, ASR #0
l1478: bicLTs R11, R12, #58
l1479: subLT R9, R2, R15, ROR #28
l1480: sbcs R11, R11, R7, ASR R12
l1481: clzHI R0, R11
l1482: subPL R7, R9, #729808896
l1483: mulVS R0, R14, R9
l1484: movHI R2, R11, ASR R0
l1485: mvnGTs R3, #641728512
l1486: clz R11, R3
l1487: teqGT R1, R4
l1488: mulVSs R8, R3, R0
l1489: cmnCC R3, #700448768
l1490: sbcCS R12, R2, R7
l1491: sbcs R11, R4, R15, RRX 
l1492: movEQs R2, R12
l1493: mov R6, #15466496
l1494: clz R0, R6
l1495: sub R9, R12, R1, RRX 
l1496: and R1, R15, R5
l1497: cmpCS R4, #266338304
l1498: tstEQ R11, R1
l1499: addVSs R1, R14, R14, ASR #20
l1500: adcLE R7, R7, R7, ROR #20
l1501: sub R0, R2, R7, LSL R7
l1502: teqLS R3, #139264
l1503: movMIs R2, R5, ROR R14
l1504: clz R9, R12
l1505: tstLS R0, R2
l1506: mvnEQs R7, R15
l1507: movs R9, #573440
l1508: adcLS R4, R9, #12582912
l1509: clz R4, R12
l1510: adcs R11, R8, #700416
l1511: cmnCC R7, R4, RRX 
l1512: orrs R1, R7, R12
l1513: cmn R2, R1, LSL R7
l1514: cmnEQ R12, R15, LSL #6
l1515: adds R12, R14, R2
l1516: cmp R2, R7, LSL #15
l1517: addEQ R7, R3, R7, LSR R2
l1518: eors R7, R9, R11, LSR R7
l1519: cmpVS R2, R7, ROR #17
l1520: orr R4, R5, R10
l1521: eor R8, R0, R4, ROR #13
l1522: addCS R12, R3, #56320
l1523: subs R9, R4, R3, RRX 
l1524: bicLSs R4, R12, R4, LSL #9
l1525: bics R11, R9, #234
l1526: bicLTs R1, R15, #10688
l1527: orrs R14, R7, R7, LSL R3
l1528: eors R2, R5, R9, ROR #26
l1529: orrVC R5, R3, #8388608
l1530: bicLTs R7, R14, R15, RRX 
l1531: subGEs R10, R14, R4, ASR R8
l1532: mov R3, R12, RRX 
l1533: orrs R2, R8, R12
l1534: mul R10, R9, R14
l1535: sbcVCs R12, R11, R1, RRX 
l1536: clz R0, R12
l1537: eors R8, R5, R15, ASR #3
l1538: eor R9, R5, R9
l1539: mul R14, R8, R6
l1540: cmn R6, R12, ROR R0
l1541: eors R1, R10, R2
l1542: andLE R9, R9, R6, LSL R11
l1543: mov R12, R2
l1544: cmn R10, R4, RRX 
l1545: mvns R1, #9109504
l1546: teq R10, R5, LSL R3
l1547: cmpCS R1, R0, LSR R0
l1548: bicNEs R4, R9, R7
l1549: mulEQs R3, R10, R14
l1550: orrCSs R6, R3, R14
l1551: clzVS R11, R6
l1552: movHI R11, #240640
l1553: subCC R10, R4, R9, LSL R5
l1554: subVCs R8, R6, #448
l1555: tst R10, R10
l1556: orrPL R6, R8, R3
l1557: muls R12, R6, R2
l1558: subLEs R14, R4, R5
l1559: adcNE R11, R12, R4
l1560: subPLs R6, R10, R9, LSL R7
l1561: andVSs R0, R0, R7, ROR R14
l1562: adcs R10, R0, R15, RRX 
l1563: subs R5, R2, R3
l1564: teqLT R9, R2, LSL R12
l1565: bic R1, R5, R14, ROR R14
l1566: add R2, R3, R4, LSL R14
l1567: mvnNEs R3, #11456
l1568: teqGT R6, R3, LSL #3
l1569: rscs R9, R14, R8
l1570: andGEs R5, R11, R6, LSL R11
l1571: rscNE R8, R7, R7
l1572: teqVC R14, #11264
l1573: cmp R2, R8, ASR #7
l1574: orrCS R12, R5, R6
l1575: bicHI R5, R6, R10, LSR #1
l1576: subs R6, R14, R11, LSR R3
l1577: clz R5, R12
l1578: bics R7, R12, #235
l1579: teqCS R8, R8, LSR R2
l1580: adcs R4, R1, R2
l1581: tst R5, R10, LSR #5
l1582: adc R7, R6, #-1610612722
l1583: tst R1, #3152
l1584: eorEQ R1, R4, #1811939331
l1585: tstLS R7, R5, RRX 
l1586: movHI R10, R4
l1587: clzMI R6, R1
l1588: mvns R14, R9, ASR R7
l1589: bics R5, R0, #448
l1590: sub R9, R10, R10, LSR R4
l1591: mvnLEs R0, R7, LSL R12
l1592: mulMIs R11, R0, R4
l1593: mulGTs R2, R14, R3
l1594: orrVSs R11, R9, R7, ROR R12
l1595: eorLS R7, R11, #49152
l1596: subNEs R10, R15, R9, LSL #6
l1597: sbcs R12, R10, #300
l1598: sbc R1, R7, R3
l1599: eorMIs R12, R6, R7, LSL R5
l1600: andGTs R10, R9, R4, LSR R14
l1601: subs R2, R6, R2
l1602: mulCS R7, R11, R10
l1603: cmpEQ R14, R8, LSR #23
l1604: sbc R2, R7, R4, RRX 
l1605: clzMI R2, R12
l1606: adc R2, R11, #2179072
l1607: cmnVC R11, R7, RRX 
l1608: movEQs R10, R9, ROR R9
l1609: cmnLT R15, R4, RRX 
l1610: rsbNE R12, R3, #52953088
l1611: adcs R11, R12, #4160
l1612: addPL R5, R11, R7
l1613: andNEs R2, R3, R3
l1614: mulHIs R8, R0, R11
l1615: clzVS R7, R1
l1616: mulLEs R5, R14, R2
l1617: sub R3, R14, R5
l1618: mulHI R2, R14, R0
l1619: cmnVS R2, R15
l1620: tstNE R12, R12, RRX 
l1621: tstEQ R3, R15
l1622: clzVC R11, R3
l1623: sbc R5, R6, R11, LSL R10
l1624: rscs R3, R15, #33536
l1625: subLTs R8, R14, R11, RRX 
l1626: orr R7, R12, R4, LSL R14
l1627: cmpLE R3, R10, ASR #10
l1628: eorCSs R0, R9, R6, ASR R5
l1629: eorVSs R11, R10, R3, RRX 
l1630: sbc R11, R4, R5, RRX 
l1631: andGE R11, R6, R4, ROR R4
l1632: movMIs R14, R3
l1633: tst R3, R8, RRX 
l1634: rsbMI R12, R8, R0, LSL #3
l1635: cmp R0, #51380224
l1636: teqVC R9, R0, LSR #21
l1637: subPLs R4, R12, R3, ASR #17
l1638: clz R9, R2
l1639: orrNEs R9, R1, R3, RRX 
l1640: mul R3, R0, R12
l1641: clz R0, R12
l1642: adcEQs R6, R5, R2, RRX 
l1643: rsbs R8, R11, R5, LSL R14
l1644: sbcGE R8, R0, R5, ROR #15
l1645: mvnCCs R10, R4, ASR #14
l1646: eorLSs R14, R0, R0
l1647: clzGE R0, R4
l1648: clzPL R10, R7
l1649: eorNEs R1, R14, R8
l1650: bicGE R8, R14, R5, ROR #20
l1651: orrGTs R6, R1, R11, ASR R7
l1652: adcHI R3, R10, R7, ROR #3
l1653: subs R5, R4, R10, ROR R3
l1654: subs R10, R15, #19456
l1655: teq R10, R7
l1656: sbc R2, R15, #-452984832
l1657: subs R12, R3, #-805306368
l1658: eor R6, R8, R2
l1659: tstLS R6, R6, RRX 
l1660: subs R12, R2, #12672
l1661: addCC R9, R9, R15, RRX 
l1662: mvnMI R2, #1610612737
l1663: orrVCs R2, R8, R10, ROR #9
l1664: sbcVSs R5, R5, #-2013265917
l1665: rscLS R8, R10, R12, RRX 
l1666: eorCSs R1, R2, R7, LSR R8
l1667: cmnGE R6, R8
l1668: eor R0, R0, R1
l1669: rsbHIs R7, R8, #-1140850688
l1670: adcEQs R9, R9, R7
l1671: eorMI R2, R8, R15
l1672: eor R5, R15, R6, RRX 
l1673: mulGEs R8, R5, R3
l1674: cmp R6, R0, ROR #8
l1675: adc R2, R2, R14, LSL R0
l1676: mul R2, R14, R4
l1677: mvnVC R4, R3, RRX 
l1678: mov R11, R12, LSL #10
l1679: mul R8, R11, R4
l1680: adc R0, R5, #128
l1681: subEQ R4, R11, R4
l1682: subs R2, R3, R8, LSL #4
l1683: movs R14, R4, RRX 
l1684: sub R11, R1, R14, LSL #8
l1685: mul R11, R4, R2
l1686: addLE R12, R10, #-2147483594
l1687: andGTs R5, R12, R5, LSL R2
l1688: cmpEQ R1, R12
l1689: eorGEs R10, R6, R5
l1690: rsbNEs R10, R2, R14, RRX 
l1691: subVSs R11, R1, R5, RRX 
l1692: eorLS R9, R5, R3, LSL R2
l1693: movNEs R3, #32768
l1694: andVSs R6, R4, R10, LSR #21
l1695: ands R14, R1, R9, ROR #4
l1696: sbcLE R12, R0, #880803840
l1697: rscLEs R3, R7, R6
l1698: cmpCS R8, R3
l1699: cmpGE R8, R6, ROR R3
l1700: eorHI R14, R0, R2, RRX 
l1701: mvns R0, #2560
l1702: cmnNE R7, R4
l1703: eorVC R10, R11, R7, LSR R5
l1704: adcLTs R5, R15, R7, RRX 
l1705: cmn R7, #-1207959549
l1706: subs R6, R10, R12, LSR R3
l1707: rsbLEs R5, R14, R15, RRX 
l1708: sbcHIs R3, R11, R6, ASR #15
l1709: eorCS R11, R5, #1687552
l1710: eor R3, R5, R9
l1711: movCCs R11, R6, LSR R2
l1712: rscPLs R1, R2, R3, ASR R14
l1713: cmpVS R4, R11
l1714: and R14, R2, R14, LSR R9
l1715: cmnLS R15, R7
l1716: sbcGT R8, R7, R12, RRX 
l1717: mvnVS R11, R3
l1718: rsbLTs R3, R5, R6, LSR R7
l1719: teq R10, #66
l1720: cmnPL R7, R11, ROR #15
l1721: eorPLs R1, R11, R1, RRX 
l1722: rscGT R0, R15, R11
l1723: eors R6, R5, R4, ASR #1
l1724: movLEs R7, R11, LSR #9
l1725: bic R10, R15, R6
l1726: bics R9, R9, R6, LSR R1
l1727: adcEQs R2, R10, R3, ASR #3
l1728: eorMI R5, R1, R14
l1729: eors R14, R0, R7, ROR #30
l1730: muls R2, R11, R4
l1731: teq R1, #636
l1732: sbcs R3, R1, R7
l1733: mul R5, R10, R14
l1734: tstHI R12, R5
l1735: movGTs R7, R1
l1736: andGEs R12, R1, #33280
l1737: rscCSs R5, R15, R14
l1738: mulVSs R14, R6, R5
l1739: subs R14, R5, R7, ROR R1
l1740: teq R8, R11, RRX 
l1741: rscLE R3, R14, R1, LSR R0
l1742: clzMI R2, R9
l1743: subLSs R0, R1, #608
l1744: mvns R9, #-1476395005
l1745: movs R0, R15, RRX 
l1746: cmpPL R0, #255852544
l1747: mvnGE R10, #46399488
l1748: movMIs R6, R11, ROR R1
l1749: sbc R3, R10, R7, LSL R0
l1750: orrCSs R1, R9, R6, LSL R8
l1751: teq R10, R4, RRX 
l1752: eors R6, R0, R6, ROR #22
l1753: subPL R3, R11, R4
l1754: bicNEs R0, R8, R8
l1755: adc R6, R15, #202375168
l1756: adcCS R5, R2, R9
l1757: teqMI R11, R2
l1758: subLSs R0, R10, R8, ASR #30
l1759: cmn R5, R2, ASR #18
l1760: mul R14, R9, R4
l1761: rsbNE R6, R2, R12, RRX 
l1762: mulCCs R8, R1, R2
l1763: subs R14, R15, R14, LSL #24
l1764: movVSs R1, R11
l1765: mulNE R6, R7, R0
l1766: cmnGT R7, R11
l1767: mvnMI R14, R7
l1768: orrCSs R7, R14, #3244032
l1769: mul R4, R8, R11
l1770: rsc R12, R14, R9
l1771: subs R10, R1, #409600
l1772: adcVC R4, R6, R0
l1773: movLSs R6, R8
l1774: bicLEs R14, R14, R0, RRX 
l1775: andMIs R14, R8, R7
l1776: bicLE R11, R0, R4
l1777: ands R0, R10, R12
l1778: adc R3, R9, R1
l1779: orrLT R12, R8, R0, RRX 
l1780: mulVS R10, R8, R9
l1781: addCS R6, R8, #16384000
l1782: eorGT R12, R1, #1216
l1783: bics R11, R0, R11, ROR #30
l1784: sbcLT R11, R14, #115343360
l1785: mvnCS R1, #26
l1786: orrGEs R11, R12, R9, ROR R14
l1787: bicCC R4, R7, R15
l1788: eor R3, R4, #-268435451
l1789: bic R8, R3, R2
l1790: mul R11, R10, R0
l1791: sbcCSs R14, R8, #33292288
l1792: teqGE R11, R9, RRX 
l1793: mulLTs R2, R9, R8
l1794: ands R0, R6, #26
l1795: sbcs R9, R7, R14, ASR #12
l1796: cmpMI R2, #3489792
l1797: orrVCs R12, R12, R11, RRX 
l1798: orrGT R5, R8, #-83886080
l1799: sub R6, R12, R3
l1800: rscs R14, R15, R3, RRX 
l1801: tstPL R2, R5, RRX 
l1802: clz R12, R6
l1803: sub R5, R4, R2, LSR #27
l1804: orrLS R1, R4, R8
l1805: cmnGT R14, R5, LSR #6
l1806: sbc R8, R14, #-805306366
l1807: cmn R12, #966656
l1808: mov R7, R1, LSL R6
l1809: cmnGE R6, R12, RRX 
l1810: andVS R14, R8, R6, LSL R3
l1811: rscs R12, R5, R3
l1812: addLSs R5, R14, R0, LSR #2
l1813: cmn R11, #43264
l1814: subLS R4, R1, R10, LSR R0
l1815: eors R11, R3, R3
l1816: clz R2, R4
l1817: eors R10, R15, R8, RRX 
l1818: mulCSs R14, R10, R9
l1819: ands R6, R5, R3
l1820: sbcLEs R2, R3, R14, LSR #28
l1821: mvns R11, R4
l1822: cmp R14, R15, RRX 
l1823: cmnCS R5, R1
l1824: adcCC R1, R10, #67
l1825: rscPLs R0, R2, R1
l1826: teq R15, R3, ASR #23
l1827: muls R12, R2, R9
l1828: rsbLT R0, R11, R10, ROR R12
l1829: cmn R11, #32
l1830: mulPL R0, R5, R3
l1831: sbcs R7, R5, R2
l1832: adcLTs R5, R3, #-1258291200
l1833: mvnLTs R10, #-1744830464
l1834: addLTs R1, R11, R2, ASR R12
l1835: mulGT R0, R1, R9
l1836: bicMI R7, R2, R9, ASR #20
l1837: sbcs R2, R10, R3
l1838: cmpHI R2, R7, ROR #20
l1839: bicLSs R4, R15, #-1275068415
l1840: cmnLT R6, R1
l1841: teqHI R7, R11, LSR #23
l1842: cmnGT R1, R12, ASR R4
l1843: sbcEQ R3, R3, R4, ROR #31
l1844: teqGE R5, R12, ASR R8
l1845: bics R0, R6, R8, ASR R8
l1846: addLE R8, R12, #16640
l1847: rscNEs R2, R8, R8
l1848: cmn R7, #37888
l1849: rscs R11, R8, R4
l1850: mulGEs R10, R7, R10
l1851: sbcMI R4, R0, #1073741884
l1852: addCC R8, R15, R15
l1853: sbcs R12, R1, R7, ROR #13
l1854: mvnLT R10, R11, LSR #5
l1855: adcNEs R0, R12, R3, LSR #5
l1856: mul R8, R11, R10
l1857: mulEQs R3, R7, R2
l1858: eorLS R11, R1, #184549376
l1859: subs R2, R14, R10
l1860: tst R12, R7, ROR #22
l1861: mulLT R0, R4, R4
l1862: andLS R14, R3, #226492416
l1863: addLS R6, R11, R4, LSL #12
l1864: cmpLE R12, R8, LSL #4
l1865: sbc R0, R11, R4, ROR R2
l1866: clzLE R8, R0
l1867: andVSs R3, R0, R2, LSR R5
l1868: cmn R15, R15
l1869: eorVC R3, R5, R15, ASR #16
l1870: sbcEQs R8, R8, R3, ROR R2
l1871: clzNE R6, R0
l1872: movPL R2, R8, LSL #2
l1873: mvns R4, R4, LSR R5
l1874: andCCs R5, R3, R11
l1875: sbcs R14, R14, R8, LSR #28
l1876: andGE R11, R11, R9, ROR R11
l1877: ands R6, R9, R1, ROR R0
l1878: muls R1, R7, R1
l1879: mov R3, R3
l1880: cmnHI R6, R1, LSL #6
l1881: rscLT R7, R14, R0
l1882: andGEs R7, R12, R3, ROR R10
l1883: sub R4, R4, R8, RRX 
l1884: movGT R10, R9, LSL #12
l1885: teq R4, R14, ASR #28
l1886: sbc R11, R2, R3, ROR R11
l1887: tstHI R0, R10, LSL R2
l1888: cmnVS R5, #39680
l1889: cmpVC R5, #165675008
l1890: eorLTs R14, R6, R5, RRX 
l1891: subNEs R2, R4, #-268435444
l1892: addLTs R12, R15, R0
l1893: adcs R4, R2, R11, LSR #24
l1894: sbc R6, R5, R3
l1895: bics R0, R0, R8, RRX 
l1896: andLS R12, R10, R4, LSR #16
l1897: teq R6, #1912602624
l1898: cmnEQ R9, #15360
l1899: sub R5, R3, #-1610612722
l1900: eors R9, R1, #4048
l1901: adcs R14, R5, R10, ASR R2
l1902: eorCCs R0, R3, R8
l1903: mvns R7, R2
l1904: ands R9, R5, R0
l1905: bic R3, R4, R10, LSR #25
l1906: rscCCs R0, R10, #1442840576
l1907: orrVCs R11, R3, #118489088
l1908: adds R11, R14, R9, ROR R11
l1909: tstCS R12, R1, ROR R7
l1910: ands R9, R2, R6
l1911: mulCSs R7, R3, R3
l1912: mvnLT R8, R15, ASR #4
l1913: rsbs R0, R11, R0, LSR R7
l1914: andHIs R6, R0, R0
l1915: clzEQ R4, R4
l1916: adcHIs R7, R6, R2
l1917: adds R5, R11, R3, LSR #11
l1918: adcs R3, R7, R2
l1919: muls R12, R2, R7
l1920: adc R10, R7, R2, ROR R9
l1921: bicLS R1, R14, #66322432
l1922: mulEQs R12, R14, R12
l1923: mvn R2, R14
l1924: clz R9, R9
l1925: rsbs R5, R5, #1114112
l1926: sub R5, R12, R15, LSL #1
l1927: cmn R7, R7
l1928: adcGTs R10, R9, R0, ROR R14
l1929: eorNE R9, R11, #22784
l1930: subPLs R4, R1, R14, ROR R11
l1931: orr R7, R7, #939524097
l1932: orrEQs R11, R14, R6, ASR R10
l1933: rsc R6, R8, R0, LSR #9
l1934: subs R10, R9, R2
l1935: cmp R1, R12
l1936: subCCs R0, R6, R9, ROR R11
l1937: subNE R4, R0, #2359296
l1938: mulLE R5, R8, R1
l1939: cmp R14, R7
l1940: eors R5, R0, R10
l1941: mulLSs R0, R1, R2
l1942: bicPLs R4, R5, R11, LSR #28
l1943: addPL R8, R8, R2, ASR R4
l1944: rsbs R1, R9, R8
l1945: orrNE R3, R6, #162529280
l1946: subVS R2, R8, R7, LSR R11
l1947: sbcCS R12, R10, R5
l1948: eorGTs R7, R1, R11, RRX 
l1949: orrs R11, R8, R7, ROR #6
l1950: bicMI R8, R10, #-1543503870
l1951: mul R2, R10, R10
l1952: orr R2, R4, R1
l1953: tstGT R12, R2
l1954: sbcEQ R2, R1, R8, RRX 
l1955: tst R6, R9
l1956: and R0, R11, R2
l1957: orrs R6, R10, R4
l1958: teq R6, R11, ROR #22
l1959: sbcLTs R8, R6, R7, ROR #6
l1960: rscGT R0, R12, R1, ASR R5
l1961: rsbLS R4, R12, R6
l1962: rscVC R11, R0, #8519680
l1963: eorNE R12, R5, R5, LSR R12
l1964: teq R11, R11
l1965: teqEQ R12, R15, LSR #18
l1966: rscs R2, R5, R4, ASR #4
l1967: cmpGE R5, R11, RRX 
l1968: ands R2, R1, R14
l1969: orr R2, R1, R4, ASR R5
l1970: adds R4, R9, R9, LSL R12
l1971: rscs R6, R9, #364904448
l1972: adcs R11, R9, #1275068416
l1973: andEQs R11, R9, #58
l1974: rsbVCs R7, R7, #1343488
l1975: eorVSs R10, R1, #-805306368
l1976: teq R0, R10, RRX 
l1977: eors R11, R1, R3
l1978: clzHI R8, R3
l1979: subLS R5, R2, R6, ROR R8
l1980: movEQs R3, R1
l1981: mulLTs R3, R14, R1
l1982: cmpLT R1, R1
l1983: mov R1, R6, ROR #29
l1984: movLS R1, R14
l1985: sbcCC R5, R14, R3, LSR #8
l1986: addGEs R2, R14, #12255232
l1987: mvns R7, R3
l1988: addNEs R7, R2, R12, RRX 
l1989: movGEs R5, R0
l1990: bicEQs R7, R10, #212
l1991: mvnGT R14, R15, RRX 
l1992: clz R7, R11
l1993: orrs R8, R10, R11
l1994: tstMI R0, R3
l1995: cmpEQ R8, #31457280
l1996: eorGTs R5, R6, R9, LSR #29
l1997: ands R1, R2, R4
l1998: teqMI R10, R6, ROR R10
l1999: rscLEs R9, R6, R14, LSL #4
l2000: mvn R12, R4
l2001: bicHIs R9, R15, R3, LSL #12
l2002: clz R6, R12
l2003: ands R4, R14, R9
l2004: subGEs R2, R0, R11
l2005: orrCSs R12, R2, R8
l2006: muls R8, R11, R7
l2007: orrCCs R14, R11, R2, ROR #31
l2008: tstEQ R9, R7, LSR #19
l2009: muls R14, R6, R2
l2010: and R4, R6, R11, LSR #28
l2011: and R12, R10, #1207959555
l2012: clz R10, R1
l2013: orrCSs R3, R5, R1, ASR R14
l2014: and R0, R5, R0
l2015: and R7, R2, R2, ROR #15
l2016: andMIs R2, R5, #-134217726
l2017: orrPLs R11, R7, R0, ASR #13
l2018: eorVS R6, R12, #492
l2019: teqGT R4, #232448
l2020: clzGT R12, R10
l2021: sbcLT R9, R10, R5
l2022: tstLE R10, R12, ASR #1
l2023: orr R6, R2, #-436207616
l2024: orr R11, R3, R6
l2025: cmpGT R5, R12, ROR #20
l2026: orrVC R7, R5, R11
l2027: rsbs R6, R0, R14
l2028: sbcMI R14, R15, #788529152
l2029: subGEs R6, R3, #2512
l2030: andCSs R7, R11, #1065353216
l2031: mulNEs R6, R7, R10
l2032: subGEs R14, R2, R10, RRX 
l2033: teqHI R11, R0, ASR R9
l2034: cmpCC R1, R4, ROR #20
l2035: orrLTs R2, R2, R11, LSL #11
l2036: eors R4, R12, R12, LSL #24
l2037: cmnGE R7, R9, LSL #7
l2038: mulVSs R0, R8, R1
l2039: rsbs R12, R0, R6, ASR R0
l2040: bic R14, R15, R10
l2041: orrs R8, R10, #696
l2042: movGTs R12, R8, ASR #27
l2043: orrEQ R9, R5, R3, LSL R5
l2044: subPLs R14, R3, R6, LSL #19
l2045: bicVC R10, R10, R6
l2046: mul R6, R5, R3
l2047: cmnGT R1, R10
l2048: mulLE R5, R0, R5
l2049: orr R14, R5, R3
l2050: cmnMI R12, R3, LSL #17
l2051: addMIs R7, R2, R5
l2052: rscVCs R7, R11, R0, LSR #27
l2053: andMIs R1, R14, #63232
l2054: rsc R0, R5, #868352
l2055: sbcHI R14, R0, R12
l2056: teqLE R1, R9, LSR #8
l2057: orrLE R2, R8, R1, RRX 
l2058: subs R4, R6, R11, ROR R14
l2059: addPLs R4, R2, #1048576
l2060: eor R2, R2, R9, ROR R11
l2061: mul R14, R10, R7
l2062: mul R2, R4, R4
l2063: teq R4, R0, LSL #11
l2064: adcLE R1, R15, R1
l2065: add R5, R14, R3, LSL #0
l2066: tstNE R7, #772
l2067: cmp R9, #-1879048190
l2068: subs R2, R6, #553648128
l2069: rscs R3, R0, #45
l2070: movCS R10, R15, ASR #23
l2071: rsbs R12, R7, #55836672
l2072: and R3, R8, R8, RRX 
l2073: orr R3, R10, R12, LSR R7
l2074: subVSs R2, R1, R8
l2075: movNEs R6, R12
l2076: subNEs R10, R11, #372736
l2077: teq R9, R4
l2078: orrs R5, R14, #-1073741808
l2079: sbcCC R10, R0, R3, LSL R1
l2080: movs R0, R3, LSR #6
l2081: teqCS R4, #-671088638
l2082: rsbGE R10, R4, R11, ROR #24
l2083: cmn R3, R15, ASR #27
l2084: rsbCC R11, R8, R15
l2085: eors R10, R2, #400
l2086: rsbs R9, R12, R3, ROR #16
l2087: cmn R8, #190464
l2088: orrPL R0, R5, R9
l2089: mvnGT R1, #340
l2090: mulGE R2, R5, R8
l2091: addVS R5, R12, R5, RRX 
l2092: mvn R3, R10
l2093: rscLT R6, R2, R12, RRX 
l2094: sbcMIs R2, R9, R15
l2095: muls R2, R0, R12
l2096: orr R8, R11, #-1879048189
l2097: adcHI R1, R4, R12, LSL R2
l2098: subVSs R10, R3, #3408
l2099: andVS R9, R5, R6
l2100: tstGE R11, R6, ASR #30
l2101: muls R14, R6, R5
l2102: cmp R14, R12, ASR R6
l2103: orrPL R9, R5, R6
l2104: mulNE R8, R6, R5
l2105: clzLS R0, R11
l2106: subs R14, R7, R4, LSR #6
l2107: tst R10, R12
l2108: movGTs R5, R3
l2109: sub R5, R3, R12
l2110: mvnPL R1, R14, LSR R6
l2111: rsbs R2, R12, R2, ROR #14
l2112: rscHI R5, R3, R2, LSR R14
l2113: subNEs R6, R12, #51
l2114: bic R2, R4, R11, LSL R1
l2115: orr R6, R5, #27525120
l2116: tst R6, R11, ROR R6
l2117: cmp R4, R0, LSL R10
l2118: eorEQs R9, R14, R3, RRX 
l2119: eors R14, R15, R0
l2120: teq R7, R9
l2121: teqPL R7, R0
l2122: cmpLE R5, #38144
l2123: mulNE R2, R7, R14
l2124: tstVC R6, R7, RRX 
l2125: tst R10, R6
l2126: bicLS R11, R6, R2, LSR #17
l2127: andVSs R11, R5, R8, LSR #13
l2128: cmn R5, R6, LSL #10
l2129: sbcLTs R0, R2, R0, RRX 
l2130: mvnEQs R10, #-2147483643
l2131: adcs R14, R8, R12
l2132: addCC R2, R2, R11, RRX 
l2133: rsbs R3, R14, R0, LSR R0
l2134: rscNEs R11, R3, R1
l2135: orrs R4, R4, R8
l2136: mvns R11, R11, ROR R7
l2137: mvns R9, R14, LSL #24
l2138: bicMIs R4, R2, R10, LSR #25
l2139: add R14, R7, R6, ASR R1
l2140: movLS R8, #-1879048178
l2141: eorGTs R7, R9, R1, LSL #25
l2142: subGT R4, R4, R3, ROR #25
l2143: tst R12, R12
l2144: subNE R11, R15, R10
l2145: cmpVC R8, R0, ASR R0
l2146: orrMIs R1, R9, R0, RRX 
l2147: sbcCCs R1, R1, R12
l2148: muls R5, R0, R14
l2149: teq R0, #91
l2150: tstPL R2, R3, RRX 
l2151: eorPL R2, R12, R4
l2152: eorEQ R3, R15, R2, RRX 
l2153: mulLE R8, R5, R4
l2154: eorNEs R7, R11, R9
l2155: rsc R11, R3, #23040
l2156: mvnGT R6, R11
l2157: mvnMI R5, R0, RRX 
l2158: tst R15, R15, ROR #26
l2159: rscEQs R1, R4, R3, RRX 
l2160: sbcLTs R9, R14, R0
l2161: movs R5, #55312384
l2162: rsc R0, R0, R1, ROR R12
l2163: rscs R4, R12, R2, ROR #8
l2164: and R0, R3, R2, LSR #17
l2165: teq R2, R14
l2166: sbc R12, R6, R8, ROR R5
l2167: mulVS R3, R8, R7
l2168: cmpNE R15, R0
l2169: add R3, R7, #78
l2170: muls R11, R7, R10
l2171: adcNE R3, R0, R4
l2172: teqHI R9, R9, RRX 
l2173: mulGE R9, R11, R5
l2174: cmpLE R5, R15, ROR #9
l2175: mulCS R14, R7, R0
l2176: andLT R8, R4, R14, LSL #27
l2177: adc R4, R12, #3136
l2178: orrLEs R6, R1, R10, ROR #22
l2179: mul R9, R0, R7
l2180: cmn R6, R4
l2181: tst R15, R8, ROR #13
l2182: addMIs R11, R1, R2, ROR R7
l2183: sbcVS R9, R14, R5, LSR R2
l2184: subs R8, R12, R6, ASR #28
l2185: andLS R7, R12, R10
l2186: mvn R9, R3
l2187: mvn R10, R3, RRX 
l2188: orrLS R4, R12, R11
l2189: rsbLT R0, R12, R5, ASR #29
l2190: muls R6, R1, R11
l2191: bicPLs R10, R0, R6
l2192: andLT R8, R0, R3, ASR R7
l2193: eorNEs R11, R14, R3
l2194: adds R0, R1, R3, ROR #23
l2195: cmpLT R4, R3
l2196: mulHIs R2, R11, R3
l2197: movs R6, #13184
l2198: clz R7, R14
l2199: orrVC R1, R4, #-1342177266
l2200: adcEQs R6, R8, R10, ROR R1
l2201: orrCC R6, R6, #120
l2202: rscVC R11, R3, R10, RRX 
l2203: cmp R1, R0
l2204: teq R8, R8
l2205: eors R12, R1, R10, RRX 
l2206: subs R3, R3, R2, RRX 
l2207: mvnCSs R1, R9
l2208: andLSs R8, R1, R12, LSL #3
l2209: mvnGE R3, #224
l2210: mul R8, R1, R3
l2211: andCC R5, R12, R7, LSR R7
l2212: andVC R10, R7, R7, ASR #25
l2213: adc R10, R3, R8, LSL R11
l2214: cmp R2, R12, ROR #27
l2215: sbcs R0, R10, R10, LSL R9
l2216: andHIs R11, R1, R15, RRX 
l2217: bics R9, R2, R3
l2218: adcGE R7, R4, R15, LSR #29
l2219: rscLSs R0, R9, #6946816
l2220: andLEs R9, R0, R9
l2221: cmp R8, #-603979775
l2222: tstMI R5, R11
l2223: cmpVS R2, #9961472
l2224: cmp R4, #33280
l2225: eorLTs R2, R11, R7, LSL #20
l2226: subs R10, R11, R1, RRX 
l2227: eors R0, R6, R9
l2228: mvnPLs R8, #124780544
l2229: addGTs R5, R0, R2
l2230: subs R12, R14, R14, ROR R8
l2231: sbcPL R4, R2, R4
l2232: sbcGT R6, R9, R8, LSR #25
l2233: orrGE R10, R9, R5, LSR R7
l2234: rscs R11, R3, #-469762046
l2235: subs R2, R5, R0, LSR #3
l2236: eorPLs R7, R10, R8
l2237: cmp R12, R7, LSL R7
l2238: rsbGTs R2, R9, R1
l2239: sub R3, R12, R6, ROR R3
l2240: rsbGEs R12, R5, R10
l2241: rsc R8, R1, R12, RRX 
l2242: sub R4, R2, R5, RRX 
l2243: tstVC R2, R7, LSR #19
l2244: cmnLT R9, #1073741874
l2245: movMIs R3, R11
l2246: orrLEs R4, R3, #5312
l2247: adcVC R10, R7, R10
l2248: orrLT R5, R3, R9, RRX 
l2249: movMI R1, #59136
l2250: bicHIs R3, R4, #14656
l2251: addGE R4, R12, R3, LSR R4
l2252: rsc R1, R11, #115712
l2253: cmnPL R4, R15, LSL #14
l2254: sub R8, R8, R6, LSL #22
l2255: muls R8, R12, R1
l2256: addCSs R1, R3, R5, ROR #17
l2257: eor R14, R1, R5, LSR #19
l2258: orrVC R5, R10, R0, ROR #22
l2259: teqGT R3, R14
l2260: eorVSs R14, R15, R11, LSR #26
l2261: rsb R4, R4, R9, LSL #30
l2262: bicLEs R3, R7, R12, LSL R5
l2263: teqLT R14, R4, ROR #25
l2264: sub R2, R15, R7
l2265: orr R6, R4, #39936
l2266: tstPL R9, R11, LSL #18
l2267: adcVCs R1, R8, R3, ROR R11
l2268: rsbLE R9, R9, R9, ASR R6
l2269: cmp R10, #11272192
l2270: sbcPLs R2, R1, R4, LSL #31
l2271: clzLS R7, R10
l2272: mul R0, R10, R1
l2273: sub R6, R4, R2, ASR #2
l2274: mulVSs R11, R7, R3
l2275: mov R6, R1, ROR #11
l2276: rsbs R4, R7, R4, LSR R11
l2277: cmnLT R10, #1703936
l2278: clz R5, R3
l2279: tstGT R12, R4
l2280: teqEQ R0, R4, LSR #12
l2281: and R2, R9, #720896
l2282: tstGE R6, #303104
l2283: rsbs R11, R8, R14, RRX 
l2284: mulHIs R11, R1, R6
l2285: rsb R1, R9, #-1140850685
l2286: teq R7, #26214400
l2287: ands R14, R11, #-2147483609
l2288: cmpHI R5, R0, ROR R7
l2289: sub R12, R5, R8, LSR R10
l2290: clzNE R14, R11
l2291: rsbMI R10, R10, R10, LSR R8
l2292: adds R0, R1, #15925248
l2293: adcs R9, R8, #145408
l2294: orrs R0, R2, R9, ASR #10
l2295: eors R12, R10, #102
l2296: mvnNEs R2, R8
l2297: eor R3, R11, R5, RRX 
l2298: eorLSs R1, R2, R12, LSL R2
l2299: mulCC R11, R1, R3
l2300: mulLS R6, R4, R14
l2301: andNE R6, R3, #73
l2302: orrHI R1, R10, R11, RRX 
l2303: orrs R7, R4, R4, ROR R3
l2304: mvn R14, R11
l2305: rsbVC R11, R4, R1, LSL R14
l2306: muls R9, R11, R3
l2307: mov R6, R7, RRX 
l2308: subNE R7, R4, R11, LSL #2
l2309: bicLS R9, R5, R12
l2310: sbc R10, R6, R11, RRX 
l2311: tstCC R7, R12, LSL R12
l2312: eorHIs R11, R10, R14
l2313: subLS R8, R11, R4, RRX 
l2314: bics R12, R1, R0
l2315: eor R9, R12, R15
l2316: subs R11, R11, R11, LSL R4
l2317: rsbNE R9, R12, R8
l2318: orrVS R5, R1, #268435462
l2319: cmnHI R4, R10
l2320: clzVS R5, R4
l2321: mvns R4, #1073741867
l2322: subLTs R11, R8, #66322432
l2323: cmpCC R4, R4, LSR R7
l2324: sub R9, R10, #77824
l2325: mul R3, R0, R9
l2326: and R1, R2, R8, LSR R7
l2327: rsb R2, R12, #9216
l2328: mulGT R11, R9, R5
l2329: clz R3, R6
l2330: ands R5, R12, R14
l2331: teqLT R0, R7
l2332: clz R4, R3
l2333: mulLS R14, R1, R2
l2334: mvns R6, R8, ASR #16
l2335: eorEQs R5, R6, #260046848
l2336: subs R8, R5, #595591168
l2337: subVC R12, R15, #13893632
l2338: subs R3, R2, #10747904
l2339: addEQs R12, R15, R6, ROR #10
l2340: movVC R6, R4
l2341: orr R2, R0, #59
l2342: subPLs R1, R14, R6, LSL R6
l2343: subVSs R3, R1, R12, ASR R7
l2344: adcGT R1, R9, R7, LSR #12
l2345: eors R10, R1, R12, ASR R4
l2346: mulLEs R3, R4, R11
l2347: and R2, R9, R1, LSL #11
l2348: eorGTs R10, R15, #1426063360
l2349: tst R15, R11
l2350: movMIs R8, R3, LSR #24
l2351: clz R8, R0
l2352: adds R2, R3, R8, LSR R4
l2353: adcs R3, R11, #1916928
l2354: adcPL R12, R8, R5, ROR #5
l2355: subs R4, R3, #859832320
l2356: cmp R6, R5, ASR #26
l2357: adcHI R2, R4, R5, ASR #2
l2358: eorHI R12, R2, R6
l2359: subs R11, R10, #-1342177279
l2360: eorCC R9, R0, R14
l2361: eorEQ R4, R3, R8, LSR #0
l2362: cmp R4, #4352
l2363: and R1, R12, R9, LSR R1
l2364: tstPL R5, R2, RRX 
l2365: cmn R2, R6, ASR R0
l2366: movNE R1, #872
l2367: addPLs R9, R0, R10
l2368: subs R10, R11, R7, LSL #14
l2369: adcEQs R0, R15, R6
l2370: cmn R0, R5
l2371: orrPLs R10, R9, R0, ASR #4
l2372: eorLS R11, R3, R11
l2373: eorVCs R1, R15, R14, ROR #28
l2374: cmp R9, R0, ROR #8
l2375: bicGT R3, R1, R0, LSL R8
l2376: add R0, R4, R4
l2377: mvn R0, R2, LSL #22
l2378: teqCC R5, R7, LSL R6
l2379: sbcs R4, R6, R4
l2380: add R6, R9, R1, LSL #18
l2381: andVSs R1, R4, R12
l2382: rscCS R8, R8, R8
l2383: movLEs R12, R3, LSR R6
l2384: adds R11, R0, R7, LSR #28
l2385: rscs R2, R6, R12, LSR R3
l2386: andPL R11, R5, #983040
l2387: tst R11, R0, LSR R6
l2388: cmnGT R15, R6
l2389: sbcs R8, R2, R11
l2390: mulVC R4, R7, R2
l2391: mul R10, R2, R8
l2392: mvns R9, #8192000
l2393: tstCS R10, R12, ASR #6
l2394: andLTs R8, R3, R6, ROR #18
l2395: cmnLE R5, R5
l2396: tstMI R0, R4, LSL #17
l2397: eors R7, R6, R1, RRX 
l2398: teqVC R12, R4, RRX 
l2399: mulCCs R10, R2, R11
l2400: orrCC R12, R8, R6, LSR #6
l2401: andLTs R9, R1, #1879048197
l2402: mvnLTs R4, #32256
l2403: cmp R3, R7
l2404: teqEQ R11, R12
l2405: mvnCSs R14, R8, LSL R10
l2406: mvnGEs R9, R7, RRX 
l2407: bic R7, R9, R6, RRX 
l2408: movNE R11, #32505856
l2409: tstLS R9, R9, ROR #20
l2410: subLSs R5, R2, R2, ROR #18
l2411: sub R2, R1, R14, ROR #12
l2412: mul R4, R12, R12
l2413: teqLE R8, #23592960
l2414: subGTs R5, R12, #592
l2415: mvn R11, #38797312
l2416: tstPL R5, R15, RRX 
l2417: cmnLS R14, R10, ROR R8
l2418: adds R3, R0, R14, ASR #8
l2419: tst R11, R12, LSL #2
l2420: sbcs R1, R7, R0, ASR #21
l2421: sbcs R4, R1, R15
l2422: tstLE R11, R7
l2423: andCSs R7, R12, R8, LSL R9
l2424: andCSs R1, R3, R6
l2425: muls R9, R8, R7
l2426: mvn R14, R11, RRX 
l2427: sbcVC R12, R2, R6, ASR R11
l2428: bic R0, R4, R3
l2429: orr R14, R7, #1392
l2430: mulLTs R2, R8, R1
l2431: subLS R4, R15, #2998272
l2432: sbcMI R6, R4, R3, ASR R0
l2433: movGEs R4, R8
l2434: muls R9, R11, R11
l2435: rsbLEs R8, R2, #3276800
l2436: mul R6, R0, R11
l2437: add R10, R4, R1, ASR #3
l2438: muls R10, R9, R5
l2439: mvnNE R2, R7, ASR R6
l2440: bicLE R9, R6, #63
l2441: teqVC R1, R1, ASR R11
l2442: rscs R11, R3, R9, ASR #16
l2443: addCS R5, R1, #-1073741779
l2444: movCC R4, R2, ASR #14
l2445: bicGT R11, R7, #55050240
l2446: muls R0, R7, R11
l2447: subCSs R4, R14, R15
l2448: add R11, R8, #536870919
l2449: eorGT R0, R6, R10, ROR #31
l2450: muls R5, R1, R9
l2451: rsbs R1, R2, R9, ROR #4
l2452: mvnCSs R8, R12
l2453: mov R8, R8
l2454: addVS R8, R15, R14, ASR #30
l2455: cmnVS R0, R7, LSR R5
l2456: teqHI R4, R0, ASR #19
l2457: cmn R9, R5, LSL #7
l2458: orrHIs R0, R1, R0, ROR R10
l2459: movCCs R6, #-671088639
l2460: orrVS R7, R6, R14, ROR R10
l2461: movLTs R0, R11, RRX 
l2462: mvnNE R4, R14, ASR #4
l2463: teqNE R4, R8
l2464: orr R3, R3, #15040
l2465: andLT R1, R1, #14848
l2466: rscCS R6, R4, #19922944
l2467: mul R5, R8, R8
l2468: cmn R10, R14, LSL R1
l2469: adcs R6, R8, R7, RRX 
l2470: sub R5, R12, #251
l2471: andGT R3, R11, R5
l2472: cmn R10, R1, LSL #2
l2473: tst R1, R14, LSR #22
l2474: bics R1, R7, R1, ROR #11
l2475: muls R11, R5, R6
l2476: sbc R1, R7, R3, LSR R11
l2477: subMIs R2, R0, #23552
l2478: cmp R1, R1, LSL #18
l2479: eorLEs R4, R7, R9, ROR #31
l2480: rsc R0, R11, R6, ASR R14
l2481: orrs R10, R8, R3, ROR R14
l2482: mulVC R1, R6, R8
l2483: adc R6, R6, R6, LSL R10
l2484: clz R14, R1
l2485: mvnMI R14, R4
l2486: subs R10, R0, R5, RRX 
l2487: clzVS R11, R1
l2488: rscVCs R7, R10, R0
l2489: eorLSs R9, R11, #149946368
l2490: clzLS R5, R4
l2491: rsbs R14, R6, #197632
l2492: cmpVS R8, #344064
l2493: orrVC R10, R6, R15, LSR #3
l2494: mvnEQs R2, R2
l2495: adc R10, R1, #805306374
l2496: cmpLE R14, R4, LSL #26
l2497: sbcs R11, R11, R8, LSR R12
l2498: orr R7, R12, R11, ROR R7
l2499: rscs R14, R9, R11, LSL #31
l2500: mov R5, R7, LSR #21
l2501: muls R0, R12, R0
l2502: eors R4, R7, #1441792
l2503: rscVCs R14, R3, #8
l2504: subGE R14, R0, #29884416
l2505: mulLTs R3, R1, R9
l2506: adcGEs R1, R8, R4
l2507: mvnCCs R5, #802816
l2508: sbcGT R0, R2, R15
l2509: clzHI R7, R7
l2510: rsbVC R7, R14, #196608
l2511: mvnNEs R7, R14
l2512: mul R3, R0, R5
l2513: clzGE R9, R5
l2514: eorGEs R9, R14, R10, LSL #23
l2515: tstMI R8, #1811939328
l2516: rscPL R5, R5, R6, ROR R3
l2517: cmp R11, R3, RRX 
l2518: eorLS R1, R0, R0, ASR #13
l2519: mvn R11, #8512
l2520: mvns R14, R1, ROR #22
l2521: and R4, R15, R7
l2522: teqVC R6, #218103808
l2523: rsbMIs R9, R15, R2
l2524: cmpVC R3, R9
l2525: sub R1, R5, R4, LSR R5
l2526: adcLTs R2, R0, R1, ROR R9
l2527: tstLT R1, R10
l2528: subEQs R5, R6, R4
l2529: mulPLs R10, R12, R4
l2530: bicCS R2, R7, #956
l2531: orrCCs R6, R6, R1, LSL #31
l2532: orrHI R9, R4, #17920
l2533: eorMI R9, R12, #1946157056
l2534: bic R11, R15, R10
l2535: adc R5, R8, R9
l2536: addCCs R9, R9, R0
l2537: eors R6, R11, R3, LSL #30
l2538: rscLT R7, R6, R0, ASR #21
l2539: muls R2, R0, R1
l2540: cmnHI R2, R5
l2541: orrCCs R3, R12, R3, RRX 
l2542: sub R1, R15, #1040187392
l2543: andGEs R1, R4, #14336
l2544: cmnVC R9, R4, ROR #12
l2545: clz R11, R0
l2546: sbcVCs R5, R8, R14
l2547: mul R12, R14, R6
l2548: adcs R8, R8, R15
l2549: rscCSs R4, R2, #13
l2550: tstGT R0, #-2147483585
l2551: teq R6, R4, RRX 
l2552: rsc R7, R7, R7
l2553: add R3, R3, R10, LSR R6
l2554: cmnHI R5, R2, ROR R14
l2555: bic R5, R14, R2, RRX 
l2556: mulLE R8, R1, R3
l2557: orrHIs R7, R1, R3
l2558: clzLE R5, R11
l2559: cmp R6, #148
l2560: teqGE R8, R2, LSR R8
l2561: mvns R0, R8, ROR R4
l2562: tst R5, R5
l2563: tstCS R12, R3
l2564: movEQs R14, R4, LSR #10
l2565: cmp R0, R8, ASR R0
l2566: eorLS R8, R15, #5636096
l2567: orrGE R0, R1, R5
l2568: mulCC R11, R8, R0
l2569: sbc R10, R1, #1114112
l2570: tst R7, R12, LSL #29
l2571: orrs R6, R7, #-2147483643
l2572: movHIs R14, R15, ASR #30
l2573: tstNE R0, R8, LSR R8
l2574: movs R4, R2, ROR R12
l2575: muls R12, R4, R5
l2576: subs R14, R8, R15
l2577: mulHIs R2, R11, R8
l2578: subLE R0, R5, #28311552
l2579: rsbMI R0, R11, R12
l2580: sbcs R7, R2, R3, ASR R10
l2581: mulLS R0, R3, R0
l2582: subNE R1, R1, R1
l2583: add R14, R1, R9, LSL R14
l2584: subs R12, R3, R2, LSR #31
l2585: mvns R10, R6
l2586: adds R7, R14, R10, RRX 
l2587: andLE R10, R0, R3, LSR R2
l2588: cmnEQ R8, R8, RRX 
l2589: rsbMIs R14, R4, R10, ROR #21
l2590: bics R14, R8, R10, LSR #11
l2591: bicHI R7, R6, R0, LSR R11
l2592: eors R14, R3, R0
l2593: sbcLEs R4, R11, R12, ASR #4
l2594: bics R7, R9, R0, ROR #18
l2595: sbcNE R8, R9, R6
l2596: orr R5, R7, #169869312
l2597: eors R9, R0, R12, RRX 
l2598: bics R5, R8, R10, LSL #5
l2599: sbcCCs R12, R0, R2, ROR R5
l2600: tst R11, R7, LSL #19
l2601: andLSs R6, R7, R15, ROR #15
l2602: teqPL R4, R1
l2603: subCC R6, R6, R3, ROR #19
l2604: orr R6, R8, R12
l2605: mulGTs R3, R4, R4
l2606: ands R11, R10, R10
l2607: bics R8, R4, #828
l2608: addCC R9, R8, R10, LSL #7
l2609: movGEs R12, R3, LSR R12
l2610: cmpVS R1, #55296
l2611: sbc R2, R0, R11, RRX 
l2612: cmnLS R5, R3
l2613: mvnLEs R6, R6, ASR R14
l2614: teqCC R0, R10
l2615: addHIs R4, R3, R8, LSL #27
l2616: orrGEs R11, R1, R10
l2617: rsc R10, R6, R2
l2618: eorNEs R8, R4, #-1275068413
l2619: eor R12, R0, R8
l2620: sbcGT R1, R6, #3866624
l2621: muls R14, R1, R14
l2622: cmpCC R1, #843055104
l2623: addEQ R12, R4, R5, LSR #31
l2624: rscVSs R14, R4, #1933312
l2625: rsbs R4, R6, R6, LSL R9
l2626: cmn R12, #310378496
l2627: mvns R6, R6, ASR #13
l2628: clzGT R0, R14
l2629: andGTs R3, R5, R4, ASR R6
l2630: orrCC R1, R11, R5, ASR #30
l2631: clzLS R2, R1
l2632: teqPL R1, R5, LSR #17
l2633: eor R2, R10, R4, LSR #5
l2634: clzLE R0, R2
l2635: tstGE R6, R5, RRX 
l2636: tst R4, R12
l2637: rscLSs R5, R10, R11
l2638: and R10, R11, R12, ROR R2
l2639: clzGT R4, R6
l2640: teqCS R0, R14
l2641: sbcCCs R0, R9, R4, ROR #13
l2642: subLTs R7, R2, R9, LSR R12
l2643: orrEQ R5, R8, #1736704
l2644: eors R10, R12, R5, LSL #14
l2645: eorGTs R3, R15, R5
l2646: eorVC R5, R11, R10
l2647: rsbNEs R3, R9, R9, LSL #15
l2648: teq R15, #116736
l2649: rsbVSs R2, R9, #-805306359
l2650: adcGTs R0, R5, R1
l2651: mulNEs R8, R1, R4
l2652: mov R9, #438272
l2653: adds R8, R2, #-1610612732
l2654: mvns R4, R9, LSR #31
l2655: eors R4, R1, #-2147483604
l2656: bics R10, R0, R4, LSL R7
l2657: adcs R12, R12, R6
l2658: sub R12, R15, R10
l2659: and R10, R3, R0, RRX 
l2660: cmnCS R7, #1056
l2661: rsbs R12, R6, R2, ROR R10
l2662: mul R14, R1, R3
l2663: mov R7, R3, LSL R4
l2664: sub R1, R0, R7, ROR #26
l2665: rscs R1, R0, R0, RRX 
l2666: mulLE R11, R1, R9
l2667: rsb R12, R2, R9, LSR R9
l2668: tstEQ R11, #2304
l2669: eors R6, R15, R6
l2670: tst R4, R12, RRX 
l2671: addGEs R7, R6, R3, ROR R0
l2672: cmpGT R5, R11, LSL #19
l2673: cmn R0, R14, ROR R6
l2674: addMIs R0, R0, R6, LSR #7
l2675: mvn R3, R0, ROR R0
l2676: orrs R7, R11, R1, RRX 
l2677: mvn R9, R1, LSL #30
l2678: rsc R3, R7, R11, RRX 
l2679: clz R12, R4
l2680: mov R7, R14, RRX 
l2681: mulCS R2, R8, R9
l2682: bicPLs R4, R0, #278528
l2683: andGE R11, R4, R7
l2684: mul R5, R7, R14
l2685: rscs R12, R11, R9
l2686: orrLE R2, R12, R3, LSR R12
l2687: subMI R2, R10, R9, LSL R5
l2688: bic R1, R10, R2, ASR #11
l2689: orrs R9, R9, R10, RRX 
l2690: andHI R2, R1, R2, LSL R11
l2691: tstVC R1, R1
l2692: tst R14, R8
l2693: cmn R15, R14, LSL #15
l2694: rsbs R4, R2, R11, LSL #6
l2695: eorHI R6, R1, R12, RRX 
l2696: mvnNE R14, R7, ROR #4
l2697: clzLS R12, R3
l2698: orr R9, R10, R8, ASR R8
l2699: movNEs R7, R12, LSL #3
l2700: cmpCC R6, R7, LSR R5
l2701: cmnHI R6, R14
l2702: ands R0, R10, R1, LSL #30
l2703: mvns R8, R1
l2704: subVCs R7, R2, R14, RRX 
l2705: cmpMI R5, R0
l2706: teq R12, R0
l2707: andCC R3, R1, #201326592
l2708: mvnLE R11, R2, LSL #31
l2709: add R7, R4, #-2147483630
l2710: and R6, R11, R8, LSL R4
l2711: tstCC R2, #557056
l2712: clz R2, R5
l2713: and R10, R11, R14
l2714: movs R1, R14, RRX 
l2715: subGE R7, R0, R9, ASR R0
l2716: subs R6, R4, R11
l2717: rscLSs R7, R5, #696320
l2718: rsbEQ R3, R7, R9, LSR R7
l2719: orrs R9, R0, R5, RRX 
l2720: andGEs R8, R14, R10, RRX 
l2721: andVS R9, R1, #108003328
l2722: adcVC R10, R3, #3407872
l2723: tstLE R8, R4, ASR R10
l2724: clzNE R4, R8
l2725: cmnLT R8, #57344
l2726: rscs R0, R1, R12, ASR R7
l2727: rscLS R10, R9, R15, RRX 
l2728: teq R15, R0, ROR #21
l2729: sbcNE R14, R0, R12, LSL R9
l2730: cmp R2, R9, RRX 
l2731: clz R11, R4
l2732: adc R4, R0, R6, LSR #11
l2733: teqNE R9, #225
l2734: cmp R2, R2
l2735: adcs R10, R6, #36438016
l2736: orrPL R10, R3, #916
l2737: eorEQs R14, R10, R1, RRX 
l2738: orrLSs R1, R7, R2, ROR R9
l2739: clzVC R9, R0
l2740: rsbCS R4, R4, #135168
l2741: teq R7, #-1073741788
l2742: movGE R5, #964689920
l2743: cmp R7, R10
l2744: andGEs R10, R9, R14, LSR #28
l2745: cmnCS R11, #-268435456
l2746: ands R2, R10, R4, ASR #26
l2747: teq R7, #-1006632960
l2748: mvnLSs R11, #1027604480
l2749: cmpVC R1, #-1342177265
l2750: cmpVC R12, #1104
l2751: tst R6, R10, ASR R9
l2752: orr R1, R11, R11, ROR #19
l2753: mvns R12, R12, RRX 
l2754: cmnVC R1, R3, ASR R2
l2755: movLSs R1, #278528
l2756: movEQs R0, R10
l2757: orr R7, R6, R3, LSL R11
l2758: mul R9, R10, R10
l2759: bicNE R14, R4, R14, LSL R0
l2760: and R9, R15, R10, RRX 
l2761: mulGTs R9, R11, R2
l2762: teq R2, #203423744
l2763: subLE R11, R10, R2
l2764: andCC R14, R2, R5, LSL R5
l2765: mvnCSs R14, R3
l2766: addLS R14, R12, R0
l2767: bics R8, R14, #32768
l2768: bic R0, R12, R8, ASR R6
l2769: orrGE R4, R15, R2, ASR #28
l2770: bics R2, R14, #67108864
l2771: andLS R4, R9, R12, ASR #11
l2772: orrNEs R14, R14, R10
l2773: teq R8, R6, ASR #30
l2774: subCSs R4, R9, R14, ASR R5
l2775: cmn R10, #11
l2776: tst R15, R11
l2777: mvnHI R2, R0, LSR R12
l2778: sbcHIs R2, R0, #369098752
l2779: and R14, R7, #-1342177274
l2780: mvnLTs R5, R5
l2781: clz R6, R8
l2782: cmnGT R3, R3, ROR #8
l2783: sbcVS R2, R14, R10
l2784: tstCC R9, #-1073741809
l2785: orrEQs R10, R1, R3
l2786: adc R10, R0, R8, LSR R8
l2787: adcs R10, R6, R12, ASR R0
l2788: andPL R2, R14, #60
l2789: mulPL R11, R0, R10
l2790: eors R2, R10, R7, ASR R14
l2791: cmnGT R1, R0, LSL R5
l2792: muls R9, R10, R9
l2793: subs R8, R1, R14
l2794: andEQs R10, R6, R14
l2795: teq R0, R11, LSR R11
l2796: subEQ R14, R6, R11, LSR #6
l2797: sbcHI R4, R11, R12, RRX 
l2798: clzNE R0, R12
l2799: eors R8, R6, R8, ASR #23
l2800: subMI R0, R3, R9, RRX 
l2801: sub R4, R4, R7
l2802: movGE R9, R8, LSL #12
l2803: subMI R9, R11, R8
l2804: cmn R2, R14, LSR R6
l2805: andHI R12, R11, R12
l2806: eorHI R8, R7, R14, ROR R0
l2807: sub R10, R11, #14848
l2808: mov R11, R8, LSL R10
l2809: mvn R9, R14, LSR #19
l2810: clz R6, R2
l2811: subVC R11, R10, R4
l2812: tst R14, R2, LSR R8
l2813: sbcLEs R11, R15, R8, LSR #1
l2814: adcEQ R5, R6, #252
l2815: mvnPLs R0, R7, ASR R11
l2816: adcs R4, R11, R6, ASR #29
l2817: movEQ R7, #1207959554
l2818: sbcCSs R1, R6, R0, RRX 
l2819: mov R14, #1044480
l2820: orr R6, R7, R3, ASR R0
l2821: and R7, R3, R8, LSL R6
l2822: rsbEQs R10, R15, R15, ASR #20
l2823: eors R2, R5, #27262976
l2824: eorLE R12, R14, R12, RRX 
l2825: clzLS R1, R7
l2826: ands R12, R2, R12, RRX 
l2827: andPLs R12, R6, #40704
l2828: adds R4, R1, R5, ASR #12
l2829: ands R0, R1, R9
l2830: bicGTs R6, R0, R12, RRX 
l2831: clzCC R12, R14
l2832: bicLTs R10, R8, R14, RRX 
l2833: sub R1, R1, R5, ASR R9
l2834: teqVS R4, R4
l2835: orrGE R5, R2, #1703936
l2836: subs R4, R11, R12, LSR R2
l2837: rsbs R12, R2, R6
l2838: subHIs R14, R14, R12, RRX 
l2839: mvn R5, R6, ASR R11
l2840: tstNE R5, R0, ROR R10
l2841: cmpLE R7, R12, LSL #24
l2842: clz R8, R7
l2843: mulVSs R4, R2, R3
l2844: andGEs R3, R10, R6, ASR R2
l2845: subGT R7, R14, R9
l2846: subLTs R2, R4, R9, LSL R12
l2847: subMI R8, R6, R6
l2848: cmnVS R14, R4, LSR #22
l2849: cmpCC R12, #28672
l2850: eorVC R3, R3, R14, ROR #26
l2851: subMI R2, R7, #2013265923
l2852: cmp R6, R6, LSL R1
l2853: eorLTs R7, R12, #35072
l2854: cmnVS R11, #61
l2855: bicLEs R8, R6, #2080374787
l2856: cmn R8, R8, LSR #18
l2857: sbcGT R7, R11, R14
l2858: orrEQs R3, R11, R2, ASR R12
l2859: eorLT R10, R9, R5, LSL R9
l2860: subMIs R2, R10, #1275068419
l2861: rscHIs R5, R4, R15, RRX 
l2862: sbc R14, R8, R0, ROR R11
l2863: teq R4, R3, LSR R3
l2864: bics R0, R4, #778240
l2865: bicCS R12, R5, #232
l2866: and R6, R5, R5, ASR R0
l2867: cmnCC R12, R3, ROR R8
l2868: bic R7, R8, R15
l2869: tst R3, R2, RRX 
l2870: addLT R8, R8, R6, LSL #8
l2871: subs R14, R10, R15
l2872: cmp R11, #5242880
l2873: rsc R2, R8, R6
l2874: mvnVC R12, R10
l2875: mulGTs R4, R10, R12
l2876: rsbLE R9, R6, #-1073741785
l2877: teq R0, #-1073741810
l2878: mulMI R6, R2, R10
l2879: mvnLT R4, R12, ASR R0
l2880: andPLs R9, R1, R3, ROR #6
l2881: cmpCS R14, R7
l2882: mulLSs R9, R12, R0
l2883: teqGT R3, R4, LSR R0
l2884: teq R11, R12
l2885: orrLSs R9, R7, R3
l2886: tstEQ R6, R8
l2887: and R2, R10, R1, ROR #29
l2888: ands R2, R6, R4, ASR #6
l2889: subEQ R9, R7, R8, LSL R1
l2890: rsb R6, R6, #163840
l2891: clz R6, R14
l2892: sbcs R14, R3, R4
l2893: teq R10, #683671552
l2894: cmp R4, R8
l2895: andGEs R5, R10, R1, LSR #12
l2896: mvnVC R12, R10, ASR #2
l2897: clzCC R7, R0
l2898: clzGE R1, R9
l2899: sbc R8, R15, R11
l2900: adcLS R12, R14, #74448896
l2901: eorLTs R4, R3, #6848
l2902: clzVC R6, R1
l2903: addPL R12, R9, R12, LSL R12
l2904: eorVS R10, R11, #939524096
l2905: sub R9, R12, #62208
l2906: rsbCCs R12, R5, #6291456
l2907: addCCs R3, R15, #151552
l2908: subs R10, R0, R7
l2909: cmn R8, R3, LSR #10
l2910: cmp R7, #67108864
l2911: movEQ R8, #47448064
l2912: sbcs R3, R9, R0, ROR #12
l2913: subs R14, R11, R4
l2914: sbcs R9, R7, R12, LSL R14
l2915: ands R6, R10, #2162688
l2916: andEQs R14, R14, R8, RRX 
l2917: bic R6, R8, #880
l2918: clzLE R0, R5
l2919: cmp R3, R11
l2920: adds R14, R12, R6, ASR #18
l2921: eors R2, R8, #917504
l2922: adcs R12, R4, R4
l2923: rsb R2, R8, #-805306355
l2924: sbcs R12, R9, R3, ASR #27
l2925: tst R11, R1, LSR R0
l2926: mulEQ R6, R2, R8
l2927: adcLTs R8, R1, R8, ROR R8
l2928: teq R10, R1, ROR R8
l2929: eors R4, R3, R4
l2930: andLTs R10, R14, #8388608
l2931: orr R3, R11, R8, ROR #6
l2932: eors R8, R10, #2672
l2933: adcEQs R12, R8, R10, ASR R4
l2934: bic R0, R15, #13568
l2935: cmpEQ R4, R1
l2936: orrs R9, R2, R2, ASR R5
l2937: add R2, R0, R0, RRX 
l2938: teq R6, #8388608
l2939: eors R3, R15, R1
l2940: sub R0, R4, R0, ASR #0
l2941: adds R9, R6, R0, LSL R0
l2942: bics R2, R15, #1308622848
l2943: sbcGE R12, R12, R12, ROR R3
l2944: adds R14, R5, #272
l2945: movs R12, R11
l2946: addPL R5, R9, R1, LSL #12
l2947: clz R14, R7
l2948: cmnGE R11, #237568
l2949: teqEQ R7, R9, ASR #2
l2950: addLT R7, R14, R10, LSL #28
l2951: eorMIs R14, R14, R2
l2952: rsbLT R11, R1, R8, ASR R9
l2953: cmn R9, #1459617792
l2954: bic R11, R12, R1
l2955: andCC R7, R3, #268435468
l2956: orrCC R6, R7, R10, LSL R0
l2957: eorGE R2, R10, #847249408
l2958: rscs R4, R14, R5
l2959: muls R4, R6, R1
l2960: addGEs R5, R4, R1, ASR #30
l2961: mvnCC R10, R14
l2962: tst R7, R4, LSL R6
l2963: eorHI R4, R10, R4, LSL R8
l2964: eorNEs R8, R3, #11648
l2965: bicPL R10, R14, R4, ROR #20
l2966: ands R0, R11, #10624
l2967: tstPL R2, #14942208
l2968: addCCs R10, R10, R6
l2969: movLT R12, #503316480
l2970: andLSs R2, R12, R8
l2971: eor R5, R1, #1946157059
l2972: mulVSs R4, R6, R0
l2973: mvns R0, #778240
l2974: cmp R6, R4
l2975: subEQs R6, R12, R7
l2976: subs R11, R3, R3, ASR #28
l2977: mulGT R6, R5, R8
l2978: tst R8, #87031808
l2979: rscPLs R9, R11, #968884224
l2980: clzLE R8, R1
l2981: bicLE R7, R12, #217
l2982: sub R10, R3, R2, LSR R10
l2983: eor R6, R7, R15, ROR #1
l2984: orr R1, R14, R10, ROR R4
l2985: rsbNEs R14, R0, R7
l2986: subVSs R2, R4, #-50331648
l2987: cmpHI R1, R12, LSR R11
l2988: orr R8, R0, R5, LSR #0
l2989: and R5, R14, #7274496
l2990: teq R15, #29696
l2991: teq R11, R12, LSR R2
l2992: mulEQ R9, R10, R9
l2993: orrMI R4, R12, R1, LSR #6
l2994: orr R14, R3, R0, ROR R1
l2995: tstVS R10, R6, LSL R2
l2996: adcCCs R4, R6, R4, RRX 
l2997: rscLTs R6, R4, #234496
l2998: mulPL R2, R4, R7
l2999: sub R3, R15, #48
l3000: adcHIs R2, R10, #721420288
l3001: teqVC R10, #88064
l3002: ands R1, R11, R4, ASR R12
l3003: subHI R10, R9, R7, LSL R0
l3004: andVCs R11, R10, R1, LSL #4
l3005: tstGT R7, R7
l3006: ands R2, R1, R3, LSL R8
l3007: clzNE R8, R5
l3008: orrVSs R10, R7, #203423744
l3009: teq R0, R11, ASR R4
l3010: cmpHI R7, #153600
l3011: movs R10, #-805306368
l3012: mvns R0, R7, LSR R7
l3013: clzEQ R9, R0
l3014: cmp R11, R11
l3015: cmnVS R12, R14, LSL R12
l3016: rsc R5, R0, R2, ROR R7
l3017: bics R11, R7, #2703360
l3018: teqNE R14, #30408704
l3019: rsbEQ R11, R11, R7, ASR #16
l3020: tstVS R11, R4, ROR R5
l3021: ands R0, R1, #4
l3022: rscGE R0, R8, R15
l3023: subHIs R8, R1, R3, ROR R9
l3024: movEQs R12, R3, RRX 
l3025: adcs R3, R12, R3, ASR R9
l3026: subCC R8, R10, #512
l3027: mulVS R11, R5, R0
l3028: mvnLS R3, R3
l3029: eors R3, R8, R15
l3030: muls R1, R3, R0
l3031: sub R3, R6, R6
l3032: cmpCC R11, #933888
l3033: mvnMI R11, R12, LSL #30
l3034: ands R0, R4, R6
l3035: add R2, R4, R12, ROR R11
l3036: andNE R7, R2, R14, ROR R11
l3037: mulLTs R4, R12, R8
l3038: cmnHI R2, R2, RRX 
l3039: eors R12, R1, R15, ASR #26
l3040: rsbLT R8, R4, R15
l3041: rsc R12, R7, R6, RRX 
l3042: mvnGEs R14, #492
l3043: rsbNEs R5, R1, R0, ROR R9
l3044: ands R0, R5, R3, ROR #15
l3045: clz R12, R10
l3046: adcs R0, R11, R1, LSR #22
l3047: tstLE R7, #30208
l3048: andPL R0, R11, #64256
l3049: mvn R2, R5
l3050: mvn R12, R9, LSR R5
l3051: adcHIs R8, R11, R6, LSL #22
l3052: sub R9, R2, R14, LSL #17
l3053: subLT R14, R14, R3, ASR #12
l3054: andGT R0, R5, R0, LSR R4
l3055: eor R6, R12, R12, RRX 
l3056: andNEs R3, R9, R5
l3057: andHI R6, R3, R12
l3058: rscPL R11, R10, #195035136
l3059: muls R4, R5, R10
l3060: sbcVS R11, R0, #-268435445
l3061: eorCS R4, R0, R5, ROR R2
l3062: teq R8, R12, RRX 
l3063: eorVC R0, R9, #389120
l3064: rsbs R2, R9, R14
l3065: orr R7, R8, R0, LSL #19
l3066: bicLS R6, R2, R12, ROR R2
l3067: clz R14, R2
l3068: sub R2, R10, #1031798784
l3069: rsc R6, R6, R11
l3070: subMI R0, R4, R7, ROR #8
l3071: clz R10, R8
l3072: teq R5, R15
l3073: tst R1, R5, ASR R12
l3074: eors R3, R11, R9, RRX 
l3075: cmnLT R5, #548
l3076: rscEQs R6, R5, #1736704
l3077: mvnVS R10, R9, ASR #11
l3078: mulVCs R2, R8, R5
l3079: andGT R0, R11, R6, RRX 
l3080: andLEs R0, R14, #8256
l3081: clzLS R9, R11
l3082: mul R9, R10, R0
l3083: orrLEs R4, R6, R12, ASR R4
l3084: movLEs R12, #-1275068416
l3085: teq R5, R0, ASR #20
l3086: andMIs R4, R11, R3, LSR #1
l3087: movNE R11, #478150656
l3088: sbcLEs R5, R2, R7, LSR #14
l3089: cmp R6, #197132288
l3090: mul R5, R14, R14
l3091: bicLE R3, R7, R7, ASR R3
l3092: movCC R0, R3
l3093: muls R12, R14, R8
l3094: rscs R6, R3, R7, LSR R3
l3095: muls R4, R2, R5
l3096: subLSs R6, R5, R2, LSR R2
l3097: movNE R4, #1073741862
l3098: rsbPL R11, R7, R11, LSR R4
l3099: clz R1, R9
l3100: andHIs R10, R0, R2, LSR #15
l3101: sub R5, R1, R11, RRX 
l3102: and R4, R11, R10, ASR #19
l3103: clz R3, R9
l3104: and R5, R6, R9, RRX 
l3105: eorMI R3, R14, #132120576
l3106: tstLT R5, R7, LSL #10
l3107: rsbCS R5, R0, R2
l3108: cmnCC R10, #417792
l3109: eorCSs R3, R14, R8, ROR #24
l3110: muls R3, R12, R0
l3111: eors R3, R6, R3, LSR #30
l3112: adcPLs R8, R12, R7
l3113: subPLs R12, R1, #6592
l3114: tst R6, R8, LSL R14
l3115: mvn R8, R4, LSR R8
l3116: teq R2, R0, LSR #2
l3117: orrs R9, R11, #1048576
l3118: adcLEs R5, R1, #67
l3119: subs R11, R0, R12
l3120: orrGT R8, R8, R8
l3121: mulLS R8, R0, R3
l3122: cmnLE R9, R10
l3123: adds R8, R0, #1677721603
l3124: adcs R14, R14, R10, ASR #31
l3125: orrLT R0, R9, R8
l3126: mulGTs R2, R11, R7
l3127: rscs R12, R15, R4
l3128: addPLs R10, R15, R0
l3129: clzCS R7, R10
l3130: subs R3, R5, R15
l3131: addCC R9, R6, R6, LSL R8
l3132: rscs R5, R10, R5, ASR R8
l3133: rsbNEs R14, R3, #58880
l3134: subLT R4, R8, R2
l3135: subLT R8, R10, #154
l3136: andNEs R11, R4, R15, ROR #23
l3137: mulHIs R8, R0, R4
l3138: mulCCs R8, R5, R7
l3139: adcVCs R11, R3, R4, ASR R3
l3140: andVCs R14, R11, R0
l3141: orrGEs R1, R8, R9, LSR R9
l3142: cmpGT R10, R4
l3143: andGE R7, R6, R14, LSL #21
l3144: eorMIs R14, R12, R15
l3145: sbcGE R2, R8, #38797312
l3146: rsbCC R2, R10, #805306369
l3147: subLS R1, R15, #335544322
l3148: cmnPL R11, R14, ASR #19
l3149: cmnNE R8, R11, LSL #11
l3150: cmn R0, R7, RRX 
l3151: orrPL R1, R8, R15, ROR #4
l3152: mulVC R8, R12, R5
l3153: orrHI R12, R7, R1
l3154: mulCSs R2, R6, R8
l3155: mvnPL R2, R11, ASR #27
l3156: subGEs R6, R2, #939524098
l3157: teqPL R4, R4, ASR R1
l3158: add R5, R11, R14, RRX 
l3159: rsbs R12, R15, #68608
l3160: mulGE R1, R4, R10
l3161: cmnNE R4, #1879048204
l3162: and R5, R14, R2
l3163: sbcLE R5, R3, #-2147483597
l3164: subNE R1, R14, R10, ROR R6
l3165: mulVCs R12, R4, R2
l3166: andCC R10, R3, R14
l3167: subHIs R14, R15, #168820736
l3168: adds R8, R7, R1
l3169: rsbNE R11, R2, R2, LSR #31
l3170: subPL R8, R7, R3, ASR #21
l3171: rscNEs R14, R4, R10, ASR R2
l3172: eorPL R4, R6, R1
l3173: movLE R4, R14, RRX 
l3174: orr R0, R2, R12
l3175: addLSs R10, R14, R3, LSL #31
l3176: rsbLSs R9, R11, R3
l3177: orrMIs R4, R15, R12
l3178: andGEs R2, R11, #360448
l3179: eors R11, R15, #1073741827
l3180: orrs R1, R8, R10, ROR #19
l3181: andLS R7, R2, R11
l3182: and R14, R9, #13828096
l3183: sbcs R11, R1, R7
l3184: orrs R2, R8, R7, LSL #16
l3185: subLE R12, R14, R14
l3186: orrNE R1, R10, R6, LSR #29
l3187: adcs R9, R9, R8, LSL #14
l3188: ands R12, R3, R8, LSL #27
l3189: rscs R14, R7, #3584
l3190: eorCSs R3, R12, R6
l3191: subEQ R14, R3, R4
l3192: eorCC R14, R10, R2, LSR R6
l3193: sbc R4, R10, R15, RRX 
l3194: sbcs R11, R8, #25690112
l3195: orrGT R9, R8, R15
l3196: clz R5, R10
l3197: rsb R11, R10, R10, LSL R10
l3198: sub R11, R2, #327680
l3199: cmpLT R3, R10, LSL R5
l3200: eorLE R4, R4, R12, ROR R14
l3201: clzHI R3, R5
l3202: subs R2, R1, R7
l3203: subs R5, R7, R4, ROR R4
l3204: cmp R11, #720896
l3205: add R2, R8, R6, ROR R14
l3206: cmn R4, R12
l3207: clzPL R5, R2
l3208: tst R0, #-805306365
l3209: mvnPL R9, R15
l3210: ands R10, R12, R7
l3211: eors R14, R0, R5, ROR #26
l3212: mvnHIs R9, R3
l3213: clzHI R11, R11
l3214: tstGE R7, R8
l3215: eorVSs R2, R10, #10747904
l3216: cmn R8, #924
l3217: mov R2, R2, ASR R5
l3218: eors R14, R6, R3
l3219: teqHI R0, R14
l3220: cmnHI R1, R1
l3221: tstCS R9, R0, ASR #25
l3222: and R5, R11, R3
l3223: clzPL R5, R10
l3224: bicVC R3, R10, R9, LSL #26
l3225: teqHI R15, R5, RRX 
l3226: subs R14, R4, R0, LSR #15
l3227: cmpCC R9, R15
l3228: clzLS R3, R6
l3229: eors R9, R4, R9, ASR #1
l3230: mulGT R2, R5, R5
l3231: cmn R2, #4259840
l3232: addVSs R9, R10, R11, ASR R14
l3233: tst R8, R5, ASR R11
l3234: muls R6, R8, R2
l3235: subs R5, R2, R4
l3236: adcVS R2, R2, R0, RRX 
l3237: and R9, R7, R11, LSR #31
l3238: subGTs R12, R10, #980
l3239: tst R5, #624951296
l3240: orrVCs R9, R7, #7
l3241: andCCs R3, R2, R3, LSR R7
l3242: rsbLTs R9, R7, R6, ROR #27
l3243: movNE R11, R14, RRX 
l3244: subLE R11, R5, R10, ASR R0
l3245: bics R0, R10, #-2147483639
l3246: orrVCs R0, R7, R0, LSR R0
l3247: andHIs R3, R3, R10, ASR #20
l3248: eors R2, R4, R10
l3249: cmn R9, R4, LSR R1
l3250: mvnLSs R4, R0
l3251: mulGE R8, R11, R7
l3252: tstGE R12, R5, LSR R2
l3253: orrs R14, R0, R11, ASR R9
l3254: movCCs R11, #3360
l3255: rscVS R5, R9, R0, RRX 
l3256: addLE R14, R7, R11, LSL #15
l3257: cmnPL R3, R8, LSL R4
l3258: adds R11, R6, #45350912
l3259: cmpPL R11, R9
l3260: teq R5, R1, LSL R7
l3261: ands R1, R0, R5
l3262: rscCSs R4, R4, #-1207959551
l3263: cmn R6, R1, LSR #2
l3264: bicCS R9, R7, R12
l3265: mvnPLs R8, #608
l3266: rsbs R5, R7, R7
l3267: teq R7, R7
l3268: orrs R10, R12, R14, RRX 
l3269: adcGEs R3, R8, #0
l3270: bics R7, R14, #2
l3271: cmp R14, R14, LSL #4
l3272: rscs R10, R3, R2
l3273: teqCC R9, R2, LSL #15
l3274: addPLs R4, R3, R9, ROR R10
l3275: teq R12, #851968
l3276: mvns R1, R6, RRX 
l3277: adc R4, R10, R1, ROR #2
l3278: rsbs R0, R6, #1671168
l3279: mulCS R4, R3, R10
l3280: cmnLT R0, R4
l3281: orrs R4, R8, R11, ASR #5
l3282: orrVCs R4, R14, R14, ASR R7
l3283: andLE R9, R14, R7, LSR #26
l3284: mul R9, R14, R6
l3285: orrs R10, R12, R10, ROR #8
l3286: orrCC R1, R11, #936
l3287: subs R2, R5, R1, ASR R8
l3288: clzLE R11, R0
l3289: tst R6, R1, LSR #2
l3290: mulVS R8, R9, R6
l3291: cmpGE R3, #138240
l3292: clz R14, R10
l3293: cmnLS R7, R9, LSL #27
l3294: clz R1, R12
l3295: eorGEs R0, R3, #1644167168
l3296: cmpLT R3, R11, LSL #16
l3297: sbcMIs R1, R4, R14, RRX 
l3298: eors R6, R7, R2
l3299: movLTs R1, #177
l3300: rsbEQ R2, R6, R12
l3301: andEQs R7, R9, #487424
l3302: bicPL R12, R14, #104857600
l3303: sbcLEs R1, R11, R14, ROR R6
l3304: mul R8, R6, R12
l3305: and R14, R8, R3
l3306: andPL R7, R0, #255852544
l3307: muls R0, R6, R5
l3308: cmnVS R1, #1044381696
l3309: ands R0, R10, R3
l3310: orrVSs R4, R2, R14, LSL R3
l3311: subs R14, R5, R15, ASR #4
l3312: teqPL R8, R2, LSR #30
l3313: bicPL R2, R14, R4, ROR #2
l3314: cmn R2, #496
l3315: eor R11, R14, #2818048
l3316: addPLs R2, R5, #-1124073472
l3317: eors R6, R11, R8, LSR R8
l3318: rsbLSs R1, R7, R12, ASR R1
l3319: cmn R8, #4128768
l3320: orrPLs R2, R11, #-1073741809
l3321: cmp R11, R8, LSR #8
l3322: mulHIs R14, R1, R10
l3323: mul R1, R0, R12
l3324: subs R14, R9, R11, LSR #1
l3325: subEQs R9, R12, R4
l3326: cmp R3, R7, LSL #25
l3327: tstLT R2, R11, LSR R5
l3328: sbcs R10, R9, R12
l3329: rscVS R11, R10, R8, ASR R7
l3330: rsbCS R0, R1, R4, RRX 
l3331: mul R2, R14, R4
l3332: movNEs R9, #3080192
l3333: eorLT R7, R1, R10
l3334: bicCS R7, R1, R8, LSR R11
l3335: eors R8, R7, R7, RRX 
l3336: cmnGT R15, #520192
l3337: teqLE R9, R11, ROR R0
l3338: andVCs R6, R14, R15
l3339: sub R0, R8, #152
l3340: clzPL R9, R9
l3341: teq R0, #100352
l3342: cmn R5, R10
l3343: adcLEs R5, R15, #2528
l3344: rsbs R3, R2, R1, ROR R1
l3345: mul R14, R11, R6
l3346: mulMI R4, R5, R0
l3347: teqLE R10, R8
l3348: clz R4, R9
l3349: orrPL R2, R5, R4, LSR R11
l3350: adc R10, R2, R7
l3351: movs R10, R9, LSL #2
l3352: mulHI R10, R11, R1
l3353: and R6, R5, R15, RRX 
l3354: mulLE R2, R4, R5
l3355: teqCS R9, #1785856
l3356: eorVS R8, R11, R5, ROR R4
l3357: clz R3, R6
l3358: muls R7, R14, R8
l3359: orr R11, R11, R14
l3360: tst R2, R11, ASR #0
l3361: cmpLT R4, #9344
l3362: subCC R7, R9, R6
l3363: adds R12, R4, R2, LSR R1
l3364: sbc R2, R0, R5
l3365: bics R12, R1, R5, ROR R12
l3366: orrHI R10, R12, R0, LSL #0
l3367: bics R5, R3, R5, RRX 
l3368: cmnHI R4, R7
l3369: teqEQ R5, R2, LSR #27
l3370: eorVSs R6, R5, R11, ROR R10
l3371: bic R4, R1, #73728
l3372: andLSs R3, R15, R14, LSL #17
l3373: cmnLE R11, R10
l3374: orr R12, R1, R6, LSL #5
l3375: mvns R5, #15872
l3376: rsbGEs R5, R12, R1
l3377: addEQs R10, R12, R9, RRX 
l3378: orrVC R10, R5, R11, ASR R5
l3379: sub R10, R11, R2
l3380: bicHI R7, R7, R11, RRX 
l3381: orrs R8, R5, R6, LSR #9
l3382: mulCSs R5, R8, R14
l3383: bic R4, R2, #81788928
l3384: tst R11, R10, ASR R10
l3385: andHI R8, R2, R3
l3386: teq R11, R15, LSL #15
l3387: and R6, R2, #16777216
l3388: ands R7, R2, R15
l3389: movLT R9, R0, ASR #16
l3390: clz R6, R14
l3391: bic R14, R5, R0, ROR R1
l3392: eors R11, R7, R2
l3393: teqMI R9, R14, LSL #17
l3394: eors R14, R11, R6
l3395: clz R4, R6
l3396: bicVS R5, R4, #134217728
l3397: adcNE R8, R15, R2
l3398: eor R14, R11, R6, LSR #14
l3399: sbcPL R6, R1, R6, RRX 
l3400: mov R9, R4
l3401: adds R14, R8, R2
l3402: teq R6, R1, LSR #7
l3403: sbcs R7, R14, #-1073741769
l3404: adcCS R6, R6, R12, RRX 
l3405: mvnCSs R14, R15, LSL #17
l3406: bics R11, R6, #508
l3407: adds R6, R5, R2, LSR #17
l3408: cmnEQ R14, R9, LSL #0
l3409: eorLTs R2, R1, R12, ASR R1
l3410: adcVC R2, R11, R0, LSR #3
l3411: adcs R7, R2, #68608
l3412: bicLE R14, R8, R4, LSL #31
l3413: clzVC R2, R2
l3414: orrLTs R8, R6, R2, LSR #5
l3415: adcs R3, R11, R12
l3416: andLSs R3, R3, R0, RRX 
l3417: and R9, R14, R2, ASR #20
l3418: bic R5, R12, R4
l3419: clzCC R1, R12
l3420: subMIs R1, R0, R15, ASR #23
l3421: addCSs R0, R14, #181403648
l3422: mulEQ R9, R2, R4
l3423: adc R6, R12, #30146560
l3424: orrs R7, R14, R3, RRX 
l3425: rscs R8, R5, R7, LSL #24
l3426: cmnVS R1, R10
l3427: mvnMIs R12, R4
l3428: and R4, R15, R4, LSR #19
l3429: subEQ R3, R3, R2, ROR R2
l3430: adc R9, R3, #802816
l3431: cmnEQ R10, R14, ASR #18
l3432: cmnCS R14, R7, ASR R1
l3433: rscLE R14, R4, R9
l3434: mvnGT R9, #-1610612733
l3435: mvns R4, R14, RRX 
l3436: adcEQ R1, R3, R10, RRX 
l3437: adds R0, R10, R7, ASR R8
l3438: mvn R12, R4, ASR R3
l3439: bicCCs R10, R10, R0, ASR #6
l3440: cmnGE R15, R4
l3441: orr R12, R15, #43
l3442: cmn R1, R3, LSL R7
l3443: sbcCSs R5, R3, R10, ROR R5
l3444: cmnLE R8, R8
l3445: mulNEs R9, R10, R8
l3446: clzLS R4, R2
l3447: sbc R5, R11, R14, ROR R6
l3448: clzLT R8, R10
l3449: cmp R0, R8, ROR R0
l3450: and R12, R6, #21233664
l3451: teq R15, R0, RRX 
l3452: teq R12, R11, ASR #15
l3453: rsbs R5, R15, R12, ROR #27
l3454: clzLE R3, R5
l3455: subMI R12, R10, #-1275068416
l3456: movs R3, R7, LSR #17
l3457: bicGE R7, R7, R12
l3458: rsbs R10, R12, R4
l3459: subCSs R9, R11, R14, ROR R3
l3460: sub R7, R10, #-268435455
l3461: addGEs R9, R1, R10, RRX 
l3462: adcEQ R5, R6, R4
l3463: clz R6, R3
l3464: andMI R8, R9, R4, LSR #6
l3465: rsbLSs R7, R15, R14, LSR #31
l3466: teq R14, R2, RRX 
l3467: cmnHI R5, R12, LSL #11
l3468: cmn R0, #2432
l3469: mulCCs R6, R10, R8
l3470: mvnLS R7, R11, LSL #3
l3471: clz R4, R7
l3472: rscCS R2, R0, R10, ROR #21
l3473: muls R7, R4, R5
l3474: addCS R10, R12, #119
l3475: eors R3, R7, R12, RRX 
l3476: ands R8, R12, #-704643072
l3477: orrCC R4, R11, R11, LSL R11
l3478: mvnPLs R12, #2605056
l3479: cmn R5, #16777216
l3480: rsc R9, R9, R15, RRX 
l3481: teqEQ R8, R14, ASR #28
l3482: adcPL R12, R6, R0, RRX 
l3483: orrNEs R11, R15, #3328
l3484: mvnCS R1, #101
l3485: cmn R12, R4, ASR R10
l3486: adcs R12, R10, R0, ASR R1
l3487: muls R4, R14, R12
l3488: mulLEs R11, R5, R11
l3489: subCSs R12, R15, #42752
l3490: orrCSs R2, R11, #1375731712
l3491: rsb R10, R8, R6, LSR R2
l3492: cmn R3, R2
l3493: rsbGE R5, R1, R1, LSR #25
l3494: adcGEs R1, R3, R14, ASR #29
l3495: and R2, R7, R10, ROR R1
l3496: tstHI R10, R6, LSL #27
l3497: sbcGEs R3, R10, #-184549376
l3498: rscEQs R12, R11, R8, LSL R2
l3499: orrLE R12, R5, #13238272
l3500: adcVSs R11, R8, R2
l3501: clzVS R3, R1
l3502: andEQ R9, R12, R3
l3503: subCSs R8, R7, R9, ROR R7
l3504: sub R4, R15, R1, ASR #27
l3505: eorLSs R12, R7, R6, ASR R2
l3506: teq R14, R9, LSR R1
l3507: bicNE R14, R6, R15, RRX 
l3508: subHIs R2, R3, #589824
l3509: clzCC R10, R4
l3510: sbcs R10, R4, R3
l3511: orrs R4, R15, R12, ASR #12
l3512: bics R7, R14, #494927872
l3513: tstPL R8, R10, ASR R8
l3514: andHIs R0, R11, R15, LSL #11
l3515: andMIs R1, R12, R1
l3516: bicVS R0, R2, #4
l3517: ands R9, R10, R11
l3518: movGE R10, #32256
l3519: movGEs R0, R8, ASR #8
l3520: andNEs R4, R6, R12, ROR R2
l3521: rscs R2, R11, R2, ASR R9
l3522: and R7, R5, R14
l3523: rsc R9, R3, #310378496
l3524: andHI R11, R12, R12, ASR R8
l3525: eor R8, R0, R8, ASR R9
l3526: mulCCs R7, R9, R5
l3527: tst R10, R12, LSR #27
l3528: sbcLE R1, R8, #1327104
l3529: rscGT R11, R15, R3
l3530: orrs R2, R14, R1, LSL #10
l3531: rscs R10, R4, R3, ROR R6
l3532: ands R6, R9, R1
l3533: mvn R11, R11, LSR R7
l3534: rsbs R12, R9, R6, ASR R4
l3535: clzPL R10, R2
l3536: sbc R14, R7, R7, LSL #26
l3537: subHIs R10, R8, R15, RRX 
l3538: mul R10, R5, R7
l3539: addVS R11, R6, R14, ASR R4
l3540: mulLTs R7, R6, R0
l3541: tstGT R3, R2
l3542: adds R10, R1, #1610612741
l3543: ands R0, R6, #236978176
l3544: rsbs R8, R4, R12, RRX 
l3545: rscGTs R2, R7, R4, RRX 
l3546: teqHI R10, R7
l3547: sub R5, R8, R0
l3548: movs R9, R3, ROR R6
l3549: clz R2, R5
l3550: sub R5, R11, R2, ASR #5
l3551: tst R10, R10, LSL #13
l3552: addGT R2, R14, R8, ASR #11
l3553: eors R0, R8, #-1879048190
l3554: ands R12, R7, R4, RRX 
l3555: sbcCS R8, R4, #2834432
l3556: subLEs R12, R3, #207872
l3557: teqLT R7, #182272
l3558: bicGTs R7, R4, #3670016
l3559: movHIs R9, R6
l3560: andLS R0, R3, R0, ASR #13
l3561: subCCs R4, R3, R11
l3562: bicLTs R2, R3, R5, ROR #11
l3563: ands R5, R9, R11
l3564: rsc R8, R6, R0
l3565: sub R5, R6, R0, LSL R1
l3566: rsb R10, R11, R11, RRX 
l3567: sbcMIs R2, R11, R6
l3568: muls R0, R8, R1
l3569: rscGTs R1, R8, R15, ASR #12
l3570: teqCC R2, R4
l3571: sbcLEs R10, R4, #10354688
l3572: adds R14, R6, R8, ROR #22
l3573: eorGT R2, R10, R11, LSR R11
l3574: clzVS R11, R11
l3575: subMIs R0, R8, R7, ROR #22
l3576: subs R6, R5, R10, RRX 
l3577: adcLEs R0, R4, #-1610612729
l3578: movs R12, R5, LSR #24
l3579: mul R12, R2, R11
l3580: orrEQs R4, R14, R7
l3581: rscs R14, R8, R0, ASR R3
l3582: clzCS R5, R6
l3583: teqCC R12, R9, RRX 
l3584: mulEQs R3, R6, R9
l3585: adds R3, R6, R5, ASR R14
l3586: cmp R7, R5, RRX 
l3587: orrVSs R10, R11, R9, LSR #18
l3588: mulPL R9, R12, R10
l3589: sbcVSs R0, R9, R2, RRX 
l3590: addLTs R7, R12, R9, ASR R6
l3591: mvnEQs R12, #13312
l3592: sbcGEs R3, R5, R4
l3593: andPL R14, R10, #2424832
l3594: bics R2, R10, R11, ROR #3
l3595: mulLT R5, R6, R2
l3596: movVS R9, R9
l3597: rsbLE R7, R8, R6
l3598: eorVCs R1, R11, R2, LSL #7
l3599: rsbEQs R6, R4, R3
l3600: rsc R8, R15, R0
l3601: clz R0, R5
l3602: andHI R2, R1, #10880
l3603: sbcVS R7, R5, R1
l3604: orrCS R3, R5, R11
l3605: rsbGT R4, R4, R9
l3606: rsbCS R6, R12, R15, RRX 
l3607: teqGE R1, R9, ROR R12
l3608: bic R7, R1, #980
l3609: orr R14, R14, R6, ASR #26
l3610: sbcs R1, R9, R15
l3611: eor R6, R11, R6, ROR R5
l3612: cmn R5, R11
l3613: add R1, R0, #1946157057
l3614: bicHI R0, R8, R6, ROR #21
l3615: mulHI R8, R9, R7
l3616: rsbHI R5, R5, R12, LSR #6
l3617: ands R11, R3, #13172736
l3618: sbc R8, R15, R0
l3619: tst R15, R12, ROR #16
l3620: ands R6, R8, R5, ROR R2
l3621: andPL R8, R9, R9, LSL R9
l3622: ands R12, R5, #3648
l3623: eorNE R11, R12, R9, ASR R2
l3624: movGT R1, R6, LSL R14
l3625: andGTs R9, R0, R0, LSR #6
l3626: rscGT R1, R8, #-1946157055
l3627: bics R2, R15, R5, ROR #30
l3628: cmn R11, R12, ASR R1
l3629: subEQs R9, R8, R3, LSL #29
l3630: mulLSs R6, R7, R0
l3631: movs R14, #548
l3632: teq R2, #9699328
l3633: rscPLs R7, R1, R4, LSR #25
l3634: subVCs R14, R9, R10, ROR R7
l3635: mvns R11, R6, LSL #7
l3636: sbcCS R0, R8, R6, LSR R10
l3637: subCCs R3, R14, R5, LSL R2
l3638: orrEQs R7, R6, R1, ROR R12
l3639: sub R10, R11, R3, ASR #24
l3640: cmp R7, R3, ASR #5
l3641: clzEQ R9, R4
l3642: rscVCs R0, R1, R15
l3643: mvns R7, #145752064
l3644: cmn R11, R11, LSR R5
l3645: orrLSs R7, R5, R7, ROR #1
l3646: clz R11, R1
l3647: subGT R5, R4, #38400
l3648: mulVSs R5, R3, R2
l3649: eors R8, R4, R15, ASR #27
l3650: orr R7, R7, R0, RRX 
l3651: sub R6, R9, R1, ASR R4
l3652: subHI R6, R4, R10, LSR R0
l3653: mov R0, R7, ROR R9
l3654: eorPLs R1, R5, R10, ASR R12
l3655: rscs R9, R8, R11
l3656: eors R8, R12, R11
l3657: orrs R8, R2, R6
l3658: sub R8, R14, R1, RRX 
l3659: eors R12, R8, R2, LSR R1
l3660: clz R1, R5
l3661: rsbLT R11, R14, R12
l3662: sbcs R6, R15, #-1660944384
l3663: eorGTs R8, R0, R11, ASR R1
l3664: bicGT R8, R7, R4, RRX 
l3665: teq R1, R4
l3666: orrLTs R1, R0, R2, ROR R6
l3667: cmpHI R14, R4
l3668: bics R1, R0, R11, ASR R7
l3669: orrs R14, R2, R4, LSR #14
l3670: subVCs R4, R7, #3440
l3671: rscLSs R9, R2, R10
l3672: cmpCC R15, #2523136
l3673: mvns R7, R7, LSR R3
l3674: subs R2, R8, R6, ROR R4
l3675: addVCs R2, R11, R1, RRX 
l3676: rscs R14, R3, R5
l3677: tst R10, R5, ROR #19
l3678: subVSs R14, R0, R4, RRX 
l3679: andCC R0, R0, R1, RRX 
l3680: tstGE R14, R7
l3681: teqLS R5, R1, LSR R6
l3682: adcCSs R3, R8, R4
l3683: sbcs R6, R0, R12, ASR #16
l3684: orrs R5, R3, R6, ASR #24
l3685: bicLS R5, R14, R14
l3686: mulPL R1, R0, R2
l3687: teqNE R0, R10
l3688: and R6, R14, R9
l3689: rsb R3, R9, #1073741826
l3690: mvns R7, R11
l3691: rsb R7, R6, R0, LSR R1
l3692: rscLTs R0, R11, #1328
l3693: rscs R9, R4, R1
l3694: eorLS R9, R10, R10
l3695: orrs R2, R7, #536870919
l3696: cmnGT R12, R6, RRX 
l3697: movCC R3, R8, RRX 
l3698: adcLTs R4, R3, R15
l3699: subs R3, R4, R0, ASR #8
l3700: teqLT R6, R9, LSR #31
l3701: cmpCS R12, R5, RRX 
l3702: and R0, R8, #5242880
l3703: bicGEs R7, R9, R12, LSR #28
l3704: adcLS R0, R5, R7, ASR #7
l3705: eorNE R9, R7, #828
l3706: teq R7, R2
l3707: orrLE R11, R5, R10, ROR #24
l3708: tstHI R1, R1, RRX 
l3709: cmp R11, R6, ROR R3
l3710: mulLS R6, R5, R8
l3711: rsbs R5, R4, R7
l3712: rsc R5, R2, R7, LSL R7
l3713: eorLS R4, R12, R9, LSR R10
l3714: eor R3, R2, R12
l3715: mul R9, R11, R8
l3716: bicGT R1, R12, R6, ASR R12
l3717: cmp R12, R6, RRX 
l3718: clzCC R2, R6
l3719: subVSs R14, R4, R10, ROR R5
l3720: cmpVS R12, R9
l3721: sub R10, R9, #524288
l3722: movGEs R14, R8, ASR R7
l3723: adc R8, R11, #1073741839
l3724: mvnGTs R9, #1536
l3725: tstMI R14, R10
l3726: subVC R14, R9, R2, ASR R2
l3727: cmp R0, R11, ROR R12
l3728: movs R8, #2784
l3729: sbcs R10, R5, #242
l3730: adc R11, R4, R8, ASR R7
l3731: clzGE R11, R10
l3732: tstPL R9, #671088640
l3733: mvns R8, R2, LSL #5
l3734: eor R5, R14, R1, RRX 
l3735: eorLTs R10, R9, R5, ASR #28
l3736: clzLS R1, R10
l3737: subGE R9, R9, #7340032
l3738: cmn R14, R11, RRX 
l3739: sbcEQ R11, R11, R15
l3740: cmn R14, R2
l3741: eors R7, R14, R12, LSL R1
l3742: andLEs R8, R0, R1, LSL R7
l3743: addVC R9, R12, R14
l3744: teqHI R10, #142606336
l3745: orr R7, R0, #1408
l3746: adcHI R8, R11, R1, LSR R3
l3747: rsb R6, R2, R0
l3748: orrLTs R10, R8, R9
l3749: mvnGE R9, #93
l3750: rscCS R7, R8, R14, RRX 
l3751: cmpLT R2, R14, ROR R7
l3752: mul R0, R7, R8
l3753: mul R8, R9, R14
l3754: adcs R11, R4, R6
l3755: eorMIs R2, R12, R8, RRX 
l3756: teq R10, R3, RRX 
l3757: subLSs R12, R3, R5, LSR R14
l3758: rsc R14, R5, R5, LSL R4
l3759: orrPLs R8, R11, R3, LSR R7
l3760: subs R6, R9, R3
l3761: eors R14, R11, R9, RRX 
l3762: rsb R6, R14, #165
l3763: adcEQ R8, R3, #573440
l3764: cmp R6, #268435461
l3765: cmnHI R8, R11
l3766: orr R2, R8, R8, ASR #22
l3767: cmn R11, R15
l3768: mvns R14, R6, RRX 
l3769: clzCS R0, R11
l3770: adds R12, R11, #3932160
l3771: mvnVCs R5, #56360960
l3772: mulGT R10, R5, R1
l3773: bic R7, R12, R4, ASR R6
l3774: subs R0, R15, R4
l3775: muls R5, R14, R12
l3776: teq R9, R0, RRX 
l3777: addPLs R10, R7, R10, LSR R0
l3778: clzLS R8, R11
l3779: subs R5, R6, #1879048192
l3780: sbc R8, R6, R5, RRX 
l3781: rsbGT R1, R10, #411041792
l3782: teqCC R15, #12160
l3783: bic R14, R12, R2, LSR R4
l3784: eorHI R8, R14, R14, LSR R6
l3785: mulGT R12, R10, R11
l3786: rsb R10, R7, R12, ASR #16
l3787: eors R10, R6, R9, ASR #22
l3788: rsc R11, R4, R12, LSR #12
l3789: add R1, R14, R5
l3790: adcCS R0, R9, R4
l3791: cmp R1, #241
l3792: rscLTs R6, R8, R9
l3793: bicLSs R10, R9, R14
l3794: adc R9, R8, #6553600
l3795: movMI R10, R3, ROR R14
l3796: rscVS R0, R5, #186368
l3797: orrs R4, R4, R7, LSR R3
l3798: cmpHI R11, R0, LSL R7
l3799: and R10, R4, R6
l3800: eorLS R8, R8, #540672
l3801: orrs R9, R2, R9, LSL R2
l3802: eors R11, R12, #1360
l3803: mulVSs R6, R5, R7
l3804: addCS R0, R6, R8, ROR R9
l3805: subs R12, R15, R12, LSL #30
l3806: mov R12, R14, RRX 
l3807: clz R5, R5
l3808: eorVCs R6, R5, #37748736
l3809: teqVS R9, R4, ROR R4
l3810: orrs R10, R8, R3, LSR #14
l3811: tstLS R1, R11
l3812: orr R4, R1, R3
l3813: subVC R8, R3, #2096
l3814: sbcLEs R4, R2, R12, RRX 
l3815: cmpCC R8, R15, RRX 
l3816: teq R12, R3
l3817: sub R4, R4, R15, ASR #22
l3818: eorNEs R7, R11, R3, LSR #14
l3819: rscLSs R10, R8, #57344
l3820: mulHIs R11, R14, R8
l3821: adcCSs R14, R11, R9, RRX 
l3822: eorGTs R7, R9, R11
l3823: addLEs R9, R12, R4, LSR #8
l3824: eor R1, R14, R5, LSL R9
l3825: movs R12, R15, RRX 
l3826: rsb R10, R7, R4, ASR R5
l3827: orrs R11, R3, R8, LSL R9
l3828: bicVS R4, R11, R11, ASR R7
l3829: orrNE R8, R1, R7, LSL #14
l3830: rsbVS R11, R7, R8, LSR #22
l3831: eor R1, R11, #253952
l3832: adcs R4, R5, R15, LSR #19
l3833: cmpHI R14, R6
l3834: and R7, R9, R8, RRX 
l3835: cmn R9, R7, LSL #14
l3836: movs R8, R1, LSR #15
l3837: subs R9, R4, #16320
l3838: ands R10, R4, R0, RRX 
l3839: muls R5, R11, R14
l3840: eor R1, R1, R0, ROR R4
l3841: mulLS R9, R2, R12
l3842: add R3, R0, #-805306357
l3843: clzCC R1, R11
l3844: sbcLE R8, R14, #3
l3845: tstVS R5, R10
l3846: rscPL R9, R10, R12
l3847: andLSs R4, R3, R12
l3848: movLT R5, R12
l3849: mvnHI R9, R10
l3850: cmn R0, #-1610612733
l3851: rsbGT R7, R12, R0, ROR R4
l3852: ands R5, R10, R4, LSR R0
l3853: clz R10, R4
l3854: tstVS R8, R14
l3855: mvnHIs R11, R12
l3856: subs R1, R11, #10560
l3857: subs R14, R7, R15
l3858: eorLE R11, R14, R9, LSL R3
l3859: teqGE R6, #889192448
l3860: rsb R7, R10, R14, ASR #4
l3861: subGTs R11, R8, R3, LSL R5
l3862: tst R7, R7, LSR #7
l3863: rsbVS R10, R1, R3, LSL R10
l3864: mulGE R8, R5, R14
l3865: subs R7, R4, R4, ASR R6
l3866: clzCS R5, R12
l3867: subLT R11, R7, #10027008
l3868: orrs R6, R11, #14848
l3869: sbc R12, R9, R9, LSR R11
l3870: orrVS R1, R7, R9, LSL R3
l3871: subLT R2, R6, R14
l3872: cmnCC R14, R4, LSL #30
l3873: cmpEQ R5, #343932928
l3874: orrLSs R9, R2, R12, RRX 
l3875: orr R7, R0, R7, ROR #18
l3876: cmpHI R6, #2228224
l3877: subPLs R8, R11, #2260992
l3878: cmnLS R5, R11, RRX 
l3879: adcVS R0, R10, R5
l3880: movGT R0, R3, LSL R2
l3881: cmpMI R14, #548864
l3882: clzLS R6, R8
l3883: andVS R4, R5, R3
l3884: subs R4, R6, R3, RRX 
l3885: cmpLT R1, R10, LSL R0
l3886: mvns R11, R0, LSR #2
l3887: rsbs R9, R0, R2, ASR R9
l3888: orrLTs R4, R9, R11, LSL R10
l3889: mvnNEs R4, #12800
l3890: sbcVSs R9, R6, R12
l3891: cmp R12, #356515840
l3892: orrs R7, R3, R4
l3893: addLEs R12, R3, #27000832
l3894: clzGT R8, R7
l3895: teqCC R0, #13631488
l3896: ands R4, R11, R8
l3897: rscLS R8, R8, R5, LSR #0
l3898: cmpGT R5, R4
l3899: teq R0, #3712
l3900: eorGEs R4, R11, R4, ROR R8
l3901: movs R0, R14, RRX 
l3902: subLTs R5, R11, #-419430400
l3903: tst R9, R0, RRX 
l3904: cmpNE R7, #-1073741778
l3905: subGTs R0, R12, #-1811939328
l3906: clz R5, R12
l3907: orrCCs R10, R10, R10, RRX 
l3908: adcVSs R4, R11, #-1073741824
l3909: clzCC R3, R10
l3910: clzVC R5, R6
l3911: subGE R12, R9, R15, LSL #16
l3912: teqLE R7, R10
l3913: rscs R9, R4, R12, LSR #26
l3914: movCS R4, R2, ASR R14
l3915: adcVCs R5, R5, R6, RRX 
l3916: subCCs R11, R7, R8, ROR R3
l3917: cmnLT R9, R8, RRX 
l3918: tst R8, R10, ASR #0
l3919: mvnVCs R5, #-1073741822
l3920: teqVC R11, R7, ROR R9
l3921: subs R0, R3, #978944
l3922: eorCCs R2, R3, R12, RRX 
l3923: ands R2, R11, #1694498816
l3924: cmn R3, R4, LSR R10
l3925: bicCS R9, R5, R0, LSR #25
l3926: cmp R15, #8128
l3927: adcLS R6, R6, #258048
l3928: and R5, R2, #3408
l3929: cmn R1, #48234496
l3930: clz R7, R7
l3931: and R11, R7, R6, LSR R10
l3932: subMI R10, R10, R0, RRX 
l3933: eorGTs R14, R5, R11, ASR R4
l3934: teq R3, #62914560
l3935: orrGTs R9, R14, R12, ASR R12
l3936: adcLEs R11, R1, #-1677721600
l3937: mulLT R3, R2, R5
l3938: orrs R1, R14, #233
l3939: eorVCs R12, R3, R12, LSL R9
l3940: muls R9, R8, R6
l3941: cmnMI R7, #170917888
l3942: orrVC R4, R11, R14
l3943: cmp R12, R12
l3944: addLEs R4, R8, #48
l3945: addVC R7, R6, R11, LSL R10
l3946: cmp R7, R10, LSL R8
l3947: rsbVC R3, R11, R8
l3948: addLT R2, R8, R3, LSL R3
l3949: and R3, R11, R7, ASR R10
l3950: subs R8, R1, R4, ROR R5
l3951: cmnCS R11, R1, ASR R8
l3952: rsbNEs R8, R2, R12
l3953: movs R3, R3, ASR #10
l3954: tstLT R6, R5, LSL R7
l3955: tst R3, R6, LSL R12
l3956: addMI R8, R7, #55
l3957: movs R9, R15
l3958: subVCs R10, R3, #11136
l3959: teqHI R12, R12, LSR #20
l3960: subLT R14, R4, #28
l3961: adc R4, R0, R4, RRX 
l3962: add R7, R3, R0, LSL R3
l3963: mvnLT R3, #5632
l3964: muls R3, R8, R9
l3965: rsbEQ R14, R2, R10, RRX 
l3966: subMI R0, R7, R5, LSR R4
l3967: eorCS R11, R15, #118489088
l3968: rscLT R10, R5, R5, RRX 
l3969: teq R14, R2
l3970: tstLT R3, R9
l3971: rsbNEs R1, R6, #6656
l3972: subLTs R10, R5, #38400
l3973: rsbs R7, R1, R4, LSR R14
l3974: sbcs R5, R4, #264
l3975: adcLS R3, R11, R6
l3976: eorVSs R7, R15, R15, RRX 
l3977: rsbVCs R0, R7, R12
l3978: cmp R5, R10
l3979: rscEQ R4, R14, #110
l3980: bicVCs R2, R0, R3, LSR #16
l3981: sbc R1, R14, #905969664
l3982: clzCC R5, R14
l3983: addVSs R2, R12, #864026624
l3984: addLEs R2, R14, #577536
l3985: cmp R5, R11
l3986: mvnPL R11, R7
l3987: eorGE R4, R0, R3, LSR #14
l3988: eors R5, R4, R3, RRX 
l3989: adc R1, R7, R1, ROR R11
l3990: rscLEs R12, R8, #1008
l3991: mov R4, #5046272
l3992: tstGE R3, R1
l3993: teq R2, #28
l3994: mulGT R12, R8, R10
l3995: sbcGTs R3, R10, R6
l3996: andVC R6, R0, R10, ROR R6
l3997: bic R12, R10, #-100663296
l3998: movGEs R2, #268435470
l3999: rsb R10, R1, R1, ASR R7
l4000: cmp R10, R8, LSL R0
l4001: eorEQ R6, R6, #189792256
l4002: cmn R1, R1, ASR #30
l4003: cmpHI R1, R11, RRX 
l4004: movVCs R8, R1, ASR R7
l4005: teq R9, R6, LSR #18
l4006: tstVS R12, #-1426063360
l4007: rsbs R1, R0, R10
l4008: tstLT R6, R5, ASR #0
l4009: orrCS R5, R3, R7, LSL R6
l4010: rsc R7, R7, R3, RRX 
l4011: adcVC R11, R14, R2, LSR #4
l4012: subPLs R3, R8, R7, ROR R14
l4013: sbcCSs R8, R7, R9, ASR R6
l4014: adcs R8, R1, R3, ROR R6
l4015: subCCs R6, R8, #13120
l4016: cmpVS R3, R9
l4017: mul R12, R14, R12
l4018: adcs R9, R14, R0
l4019: orrNEs R7, R8, R2, LSR #18
l4020: ands R5, R4, R8
l4021: mulCCs R1, R10, R8
l4022: adcPL R10, R0, #53248
l4023: orrs R0, R8, R15
l4024: clzLE R6, R10
l4025: cmnCS R0, R5, LSR R1
l4026: rscs R2, R14, R5, ASR R4
l4027: subPL R12, R5, R6, ROR #25
l4028: cmnLT R6, #-1275068413
l4029: orrLE R4, R9, R3
l4030: cmn R3, R4
l4031: mul R9, R6, R5
l4032: cmpMI R12, #238592
l4033: sub R6, R14, R12, ASR R0
l4034: subLTs R14, R7, R2, LSR R11
l4035: orr R12, R4, R6, LSR R11
l4036: mulGT R4, R5, R11
l4037: mulGT R11, R5, R9
l4038: mulGE R11, R1, R14
l4039: muls R12, R14, R6
l4040: teqLT R11, R2, ROR R7
l4041: cmnPL R9, R7
l4042: teqGE R2, R14, LSL R8
l4043: sbcGTs R10, R15, R5
l4044: mvns R5, R0, ASR R6
l4045: add R11, R11, R6
l4046: rscVCs R1, R4, R0, LSR #30
l4047: orrLT R9, R2, #603979778
l4048: cmnPL R15, #805306381
l4049: adds R4, R7, R6, ROR #12
l4050: clzNE R7, R14
l4051: clzMI R10, R0
l4052: bicNE R6, R0, R12, LSR R2
l4053: teqLE R3, R6, LSL R12
l4054: sbcPL R14, R10, R6, LSL #28
l4055: mvn R4, R1
l4056: sbc R8, R1, R3, ASR #17
l4057: sbcMIs R14, R3, R6, LSR R2
l4058: rsbLEs R6, R11, R15
l4059: orr R8, R3, R0
l4060: eorLSs R4, R2, R10, ASR R2
l4061: add R2, R10, #3112960
l4062: eors R5, R0, #1456
l4063: sub R12, R6, R4, LSR #31
l4064: mvnGTs R8, #922746880
l4065: cmpLS R14, R3
l4066: adcCCs R0, R10, #3360
l4067: clzVC R12, R11
l4068: andCS R8, R12, R8, LSR R4
l4069: sbcLS R3, R4, R7, ROR R12
l4070: cmpLE R12, R10, ROR R9
l4071: orrMIs R14, R15, R1
l4072: orrLEs R7, R4, R3, RRX 
l4073: sub R7, R4, #-1342177273
l4074: rsbs R3, R11, #13107200
l4075: mvns R3, #2113536
l4076: sub R14, R2, #1191182336
l4077: movEQ R4, R14, ASR R1
l4078: bicLT R3, R2, R4, RRX 
l4079: eorNEs R12, R14, R12
l4080: rsbCS R1, R1, R9, RRX 
l4081: andCCs R10, R14, R8
l4082: sbc R0, R10, R8
l4083: addHIs R7, R5, R6, RRX 
l4084: orr R1, R7, R8, ASR #2
l4085: and R4, R10, #5308416
l4086: orrs R6, R8, R5, RRX 
l4087: bicLEs R4, R3, #13056
l4088: sbcs R12, R1, R2, ASR #9
l4089: adds R14, R11, #7488
l4090: bics R12, R0, R7
l4091: add R7, R6, R6, RRX 
l4092: sbcLT R8, R14, R12
l4093: orrs R2, R7, R12
l4094: bic R14, R11, R5, ROR #17
l4095: orrCC R9, R15, R8
l4096: orrLTs R6, R11, R5, ASR #26
l4097: cmpCS R14, #1073741840
l4098: and R5, R8, R9
l4099: cmp R12, #92274688
l4100: tstCC R5, #-2147483637
l4101: rscs R9, R3, #39583744
l4102: orrGT R12, R3, #86016
l4103: ands R2, R9, #35072
l4104: rsb R9, R15, #536870915
l4105: teqCS R3, R4, RRX 
l4106: orrNE R11, R10, R12, LSR #19
l4107: andPL R9, R3, R7, LSL R10
l4108: cmp R14, #12058624
l4109: rsbCS R11, R10, #16
l4110: add R1, R12, R4, ROR R6
l4111: eorLE R6, R12, R9, RRX 
l4112: mulLS R7, R8, R7
l4113: adcCCs R11, R0, #17408
l4114: addHI R0, R8, R4
l4115: eors R0, R9, R5, LSR R14
l4116: orr R11, R7, #-2147483618
l4117: orrLE R14, R0, R7, ASR R5
l4118: eorCSs R8, R7, R12
l4119: orrPLs R14, R6, R2, LSR R7
l4120: teqNE R8, R2
l4121: teq R5, R1, ROR R8
l4122: tstPL R7, R6, ASR R3
l4123: movMI R4, #14417920
l4124: and R7, R15, R0, RRX 
l4125: teqVS R14, #35328
l4126: rsbs R1, R8, R8, ASR R14
l4127: mvn R6, R11, LSL R1
l4128: ands R7, R12, R5, RRX 
l4129: andHI R14, R7, R6, LSR R9
l4130: mul R0, R2, R2
l4131: movLT R6, R10, LSL #22
l4132: sub R1, R4, R1, ROR R4
l4133: cmnLE R6, R6, LSL R11
l4134: cmnCC R8, R12, ASR #20
l4135: bic R5, R0, #376832
l4136: bics R4, R2, R0
l4137: bic R2, R14, R3
l4138: orrs R11, R14, #112197632
l4139: rsbPLs R7, R4, R1
l4140: cmn R5, R0, RRX 
l4141: mvnVS R11, R3, ROR R5
l4142: clzEQ R2, R7
l4143: mulNE R14, R2, R0
l4144: andCS R12, R2, R5, RRX 
l4145: bicLE R12, R7, #419430400
l4146: adcCC R10, R0, R1, LSL R14
l4147: teqVS R1, R6, RRX 
l4148: sub R7, R8, R7, ROR R10
l4149: orrNE R8, R9, R11, RRX 
l4150: add R0, R4, R8, RRX 
l4151: subVCs R6, R3, R10, RRX 
l4152: eorMI R9, R4, R5
l4153: cmn R10, R5, LSL #14
l4154: ands R10, R8, R3, LSR #7
l4155: addVSs R5, R4, R8
l4156: muls R2, R10, R9
l4157: andMIs R12, R6, R12, LSL #13
l4158: eor R1, R8, R15
l4159: mvn R12, R4, LSR #7
l4160: tst R15, #6144
l4161: sub R3, R4, R14
l4162: andVC R11, R5, #1040187392
l4163: orrs R4, R8, R7
l4164: orrLSs R6, R11, R4, LSL R7
l4165: teqEQ R14, R2
l4166: adcLSs R0, R0, R2, LSR #30
l4167: eors R11, R3, #1879048195
l4168: cmn R11, #-1073741815
l4169: cmpHI R15, R6, ROR #27
l4170: cmpMI R0, R3, ASR R0
l4171: bicGE R11, R11, #960
l4172: mul R0, R14, R12
l4173: cmnLS R14, R8
l4174: orrLT R2, R11, R14
l4175: tstLS R15, #798720
l4176: rscHI R6, R1, R15
l4177: mulEQ R6, R1, R5
l4178: eors R6, R15, R1
l4179: rsc R12, R1, R4, LSR R10
l4180: subVSs R3, R14, #-1879048190
l4181: teqLT R7, R5
l4182: sub R10, R9, R14, LSR R0
l4183: tstVS R6, R11, LSR R5
l4184: addMIs R0, R0, R5
l4185: clzLS R5, R0
l4186: subCCs R11, R11, #1474560
l4187: teqLT R6, R7, ASR R10
l4188: sbcs R14, R9, R15, LSR #22
l4189: mvns R0, #91136
l4190: orrVCs R14, R10, R9, ROR #9
l4191: adds R8, R2, R0
l4192: orr R6, R11, R0, LSR #18
l4193: andMI R9, R15, R2, ASR #20
l4194: andMI R4, R4, #-2147483611
l4195: rsbGT R3, R3, R9
l4196: teq R6, #22
l4197: addPLs R0, R9, R4, ASR R1
l4198: subEQ R1, R4, R3, ASR #26
l4199: andVC R2, R11, R11
l4200: add R3, R6, R6
l4201: sub R4, R4, R11
l4202: eor R10, R1, R4
l4203: ands R11, R8, #1073741881
l4204: rscPLs R8, R6, R3, LSR #9
l4205: cmpHI R12, R0
l4206: muls R5, R3, R10
l4207: eorCCs R0, R0, #536
l4208: orrLEs R4, R2, R4, LSR R0
l4209: andPLs R8, R7, R9, RRX 
l4210: movVCs R12, R14, LSR R9
l4211: subEQs R3, R10, R9
l4212: orrs R12, R8, R6, LSL R6
l4213: mvn R0, R11, ASR #3
l4214: rsb R14, R15, #75776
l4215: add R0, R8, R2, LSL R14
l4216: rsbs R1, R6, R8, LSL #9
l4217: andCCs R4, R0, R15, ROR #28
l4218: cmnCS R5, R9, RRX 
l4219: mvns R6, R0
l4220: tstEQ R5, R5
l4221: mulMIs R14, R11, R10
l4222: add R0, R14, R0
l4223: movLSs R0, #2080374784
l4224: cmnGT R3, R9, ASR R3
l4225: mvnPLs R1, R12, LSR #24
l4226: orrs R7, R0, #929792
l4227: orrEQ R4, R4, R15
l4228: orrs R0, R5, #1130496
l4229: bicVS R8, R1, R10
l4230: bicVCs R6, R15, #147456
l4231: tst R5, R6, ASR #23
l4232: teq R4, R6, LSL R2
l4233: add R12, R10, #28672
l4234: bics R7, R2, R10
l4235: orrCS R7, R12, R2, RRX 
l4236: andGTs R5, R1, R9, LSR #8
l4237: movHI R10, R15, RRX 
l4238: adcVSs R8, R5, R6, LSR #27
l4239: cmpPL R11, R15
l4240: andGE R14, R4, R14
l4241: subVS R5, R1, R11, ROR R2
l4242: mvn R2, R14, LSR #8
l4243: subPL R5, R14, R6
l4244: mul R3, R4, R0
l4245: rsbLEs R12, R11, R3, ASR #11
l4246: subVS R6, R1, R2, ASR R12
l4247: cmnCC R10, R1, RRX 
l4248: sbcs R7, R5, R11
l4249: orrNEs R6, R10, R3
l4250: subGEs R14, R4, #125829120
l4251: cmn R9, R15
l4252: eors R10, R1, #476
l4253: sbcMIs R5, R0, R11, RRX 
l4254: adcGE R7, R10, R4
l4255: teqNE R10, R11, LSL #7
l4256: sbcs R8, R10, R4, ASR #4
l4257: orrMIs R10, R2, R7
l4258: rsbs R10, R9, R9
l4259: rsb R12, R12, R0
l4260: rsbs R0, R10, R1, LSR R0
l4261: mov R7, #11206656
l4262: tstGE R6, R7, RRX 
l4263: subs R4, R9, #-1207959552
l4264: mvn R7, R0, ASR R12
l4265: adcCC R1, R0, #1146880
l4266: andCC R6, R6, R3
l4267: teqNE R3, R10, RRX 
l4268: muls R10, R4, R7
l4269: teq R0, R8
l4270: ands R1, R10, #48128
l4271: tstNE R8, #1012
l4272: teq R14, R15, LSL #10
l4273: adcPL R9, R12, R1
l4274: sbcHI R2, R12, #90
l4275: andPL R8, R4, R9, LSR R2
l4276: clzEQ R6, R11
l4277: cmp R11, #16252928
l4278: subEQ R1, R6, R7, ROR R2
l4279: mulGE R5, R0, R14
l4280: sbcGT R1, R5, R1, LSR R6
l4281: bic R4, R14, #1073741836
l4282: rsbVCs R1, R4, R0, RRX 
l4283: bic R8, R12, R14, LSL R2
l4284: bicCCs R11, R9, R14, ASR #25
l4285: rscMIs R3, R8, R1, ROR #16
l4286: andGT R3, R3, #15616
l4287: subs R5, R9, #7
l4288: mul R1, R7, R5
l4289: teq R2, R5
l4290: rscs R6, R15, R9
l4291: andEQ R4, R6, R5
l4292: adcs R4, R4, R7
l4293: sub R2, R2, R1, ASR #24
l4294: mvns R12, R10
l4295: clz R2, R0
l4296: eorVCs R3, R3, R5, LSL #13
l4297: teq R14, R4, LSR R9
l4298: orrLE R7, R9, #18350080
l4299: rsc R4, R6, R8, LSL R8
l4300: subHI R12, R1, #647168
l4301: orrs R14, R7, R12, LSR #1
l4302: andGEs R11, R3, #39
l4303: adcs R8, R7, R12, LSL R12
l4304: cmnMI R14, #851968
l4305: cmn R10, #3264
l4306: subCSs R5, R3, #1703936
l4307: andVSs R0, R5, #458752
l4308: mvns R0, #2523136
l4309: movs R12, #90112
l4310: clz R1, R4
l4311: teq R3, R14
l4312: adcs R11, R5, R5, ASR #26
l4313: clz R10, R6
l4314: mulLE R12, R14, R10
l4315: subVC R9, R11, #219
l4316: eors R8, R8, R9, ROR R10
l4317: mvn R0, R3, LSL #6
l4318: orrs R5, R2, R4, ASR R7
l4319: subs R9, R2, R1
l4320: addLSs R4, R15, R2
l4321: cmnLE R6, R9
l4322: sbcs R7, R6, #7808
l4323: eorLTs R5, R9, R7, ROR #1
l4324: muls R14, R9, R1
l4325: mul R11, R0, R6
l4326: adds R8, R11, R0
l4327: andPL R10, R9, #843776
l4328: tstLE R0, R14
l4329: sbc R5, R0, R12
l4330: adcs R10, R6, R7, RRX 
l4331: bicGE R5, R14, R1, LSL #9
l4332: adc R8, R3, R2, LSL #31
l4333: clz R1, R1
l4334: rsbs R7, R8, #268435464
l4335: bics R2, R9, R10
l4336: cmn R1, #1003520
l4337: orr R4, R7, #1610612747
l4338: orrHIs R5, R8, R4
l4339: cmpCC R6, R0, ASR #6
l4340: orrs R0, R7, R6
l4341: orrLSs R7, R4, R5
l4342: andLTs R8, R6, R1, LSL #1
l4343: subCSs R9, R2, R8, ROR R11
l4344: mulLE R3, R1, R5
l4345: subVS R10, R9, #1073741871
l4346: subs R12, R3, R0
l4347: mvns R11, #155648
l4348: bicEQ R1, R11, R2, LSR #21
l4349: subVS R8, R8, R11, ROR R9
l4350: sbc R10, R7, R3
l4351: sbc R1, R3, R6, LSR R0
l4352: cmnPL R10, R1
l4353: movs R7, R4, LSL R5
l4354: tst R9, R4, ROR #11
l4355: andGT R3, R9, R15, RRX 
l4356: movEQs R3, #446464
l4357: movs R0, R12, ROR #25
l4358: teqHI R12, R5
l4359: tst R9, #218
l4360: orrs R3, R6, #-1879048179
l4361: sbcs R6, R6, #125
l4362: adcs R12, R0, #-1342177280
l4363: mulLSs R3, R7, R9
l4364: andGT R14, R14, #296
l4365: muls R12, R0, R7
l4366: addLS R6, R0, R3, ROR R12
l4367: tstNE R11, R10, RRX 
l4368: rsbCC R3, R15, R2, ASR #15
l4369: adds R11, R12, R7, RRX 
l4370: clz R1, R4
l4371: and R0, R11, R5, ASR R5
l4372: adds R4, R9, R5
l4373: sub R14, R7, R11
l4374: subLS R14, R7, R10
l4375: cmnHI R11, R15, ASR #5
l4376: rsbNEs R8, R2, R11
l4377: cmp R14, R4, LSL R3
l4378: sub R4, R3, #252
l4379: rsb R12, R6, R9, RRX 
l4380: teq R12, #34603008
l4381: adcVCs R5, R5, #12416
l4382: mvn R4, R2, ASR #4
l4383: sbcHI R9, R5, R5
l4384: rscMIs R1, R9, R9
l4385: sbcCCs R6, R2, R2
l4386: bicMIs R3, R5, R8
l4387: cmnGE R14, R1, LSR R5
l4388: add R1, R2, #496
l4389: eorGEs R7, R1, R3
l4390: eor R6, R7, R8, ASR #5
l4391: orrs R4, R15, R7
l4392: bicEQ R12, R12, #67108864
l4393: sub R7, R2, R11, LSR R9
l4394: cmp R4, R11, ASR R12
l4395: and R8, R12, R2, ASR R4
l4396: andHIs R1, R9, #-2080374783
l4397: subs R5, R7, R0, LSL #2
l4398: clzCS R2, R7
l4399: rsb R9, R7, R0, ROR #22
l4400: mvnHIs R6, R1
l4401: movGTs R6, R11, ASR R12
l4402: cmnLS R8, R8
l4403: mulEQ R4, R11, R2
l4404: cmpCS R6, R2, LSL #28
l4405: eor R0, R9, R0
l4406: cmnVC R1, R3, RRX 
l4407: tstNE R2, #1073741847
l4408: sub R10, R15, #-1660944384
l4409: subs R8, R7, R3, ROR #2
l4410: clz R6, R14
l4411: mvnNE R3, #40108032
l4412: andLSs R6, R0, #2046820352
l4413: addVS R5, R9, #278528
l4414: cmp R14, R9, LSL #6
l4415: teqGE R1, R14, ASR #5
l4416: andCC R9, R9, R5
l4417: mvn R1, #2015232
l4418: eorEQ R7, R5, R14
l4419: eorLE R4, R6, R12, LSL R10
l4420: andGTs R1, R2, R0
l4421: andMIs R11, R5, R4, LSR R11
l4422: adc R10, R12, #-956301312
l4423: adds R1, R3, #9699328
l4424: subs R10, R5, #794624
l4425: mov R0, R12
l4426: teqEQ R7, R7, ROR R1
l4427: orrGT R12, R12, R14
l4428: clz R4, R10
l4429: andVSs R9, R1, R14, LSL R5
l4430: tstVS R14, R5
l4431: movCCs R5, R1, LSR #13
l4432: mvns R7, R2, RRX 
l4433: orr R2, R9, #1228800
l4434: rscGEs R3, R8, R6, ASR #10
l4435: cmn R2, R2
l4436: sub R5, R3, #1610612749
l4437: bics R9, R2, R9
l4438: mov R1, R2, ROR #18
l4439: mvnCS R2, R2, LSL R6
l4440: tstNE R15, R6
l4441: rsbLEs R5, R12, R15, RRX 
l4442: addLE R3, R1, R10
l4443: subLTs R10, R9, R5
l4444: cmnLE R3, R1
l4445: muls R1, R8, R1
l4446: eor R11, R0, R0, ROR R12
l4447: eorMIs R1, R12, R8, LSL #24
l4448: adcs R12, R8, R6, LSL #26
l4449: adc R1, R8, #960
l4450: subLE R11, R11, R14, ROR #8
l4451: rsb R4, R9, #8388608
l4452: orr R4, R0, R9, LSL #8
l4453: subs R12, R7, #6
l4454: eorLS R14, R11, R8, LSR R9
l4455: cmnHI R9, R12, ROR R14
l4456: tst R1, #39845888
l4457: rsc R0, R1, R12
l4458: orr R10, R7, R8, LSR R0
l4459: mulPL R12, R5, R5
l4460: mvnVS R2, #1019904
l4461: sub R1, R3, R9, ASR R9
l4462: ands R10, R14, R1, RRX 
l4463: ands R5, R10, R9, ROR R12
l4464: andLT R11, R14, R1, RRX 
l4465: rscs R14, R15, R6, ASR #26
l4466: subCSs R9, R0, R10
l4467: subNEs R1, R2, R1
l4468: eorVCs R10, R15, R3
l4469: orrEQ R12, R15, #143
l4470: sub R8, R10, R12
l4471: eorVC R0, R6, R10, LSR R6
l4472: mvns R12, R8
l4473: mov R7, R15, ROR #13
l4474: orrGT R12, R7, R14
l4475: eorLEs R8, R2, #33
l4476: addCCs R6, R15, R4, LSR #30
l4477: orrCC R3, R4, R11, ROR R2
l4478: teqMI R2, R5, ROR R2
l4479: adc R5, R6, #6
l4480: teq R11, R1, RRX 
l4481: sbcHIs R0, R6, R2, LSL R14
l4482: orrs R4, R2, #248832
l4483: cmnLE R12, R8
l4484: bicCS R0, R3, R2
l4485: mulLSs R3, R0, R14
l4486: teqLS R5, R9
l4487: and R3, R3, R4
l4488: mov R3, R5, ROR #27
l4489: eorNE R12, R0, #11648
l4490: orrs R14, R15, R15
l4491: rsbCC R11, R11, R9
l4492: eors R7, R14, #24379392
l4493: rscCC R6, R2, R14
l4494: mulCS R2, R6, R1
l4495: orrEQ R14, R1, #174080
l4496: cmp R12, #905216
l4497: orrVCs R4, R11, R2, LSL #27
l4498: adcCCs R12, R9, R1, ROR #22
l4499: bicLS R14, R5, R2
l4500: muls R2, R10, R12
l4501: rscGTs R1, R5, R2, LSL R10
l4502: cmnLE R6, R2
l4503: orrs R8, R10, R9
l4504: teqHI R12, #-2147483605
l4505: adcVC R5, R15, #297795584
l4506: orrLSs R6, R4, #227
l4507: eorLT R3, R8, R14, RRX 
l4508: tstGE R10, R9, ROR R0
l4509: sbcVS R11, R10, R9
l4510: bic R3, R7, R4
l4511: rsc R4, R9, R9, LSL #4
l4512: cmp R0, R5, LSL #31
l4513: sbcs R14, R3, #-1879048191
l4514: mulLS R5, R10, R0
l4515: mulGEs R1, R12, R4
l4516: clz R11, R1
l4517: sub R4, R0, R1, ASR #8
l4518: bicCC R0, R9, #-1375731712
l4519: sbc R11, R5, R8
l4520: subVSs R9, R14, R8
l4521: clz R10, R14
l4522: subCC R6, R0, R2
l4523: bics R11, R3, R5
l4524: cmn R12, R14, LSL R14
l4525: orrs R3, R7, R7, ROR #19
l4526: subVSs R4, R9, #153
l4527: orrs R6, R9, R10
l4528: eorLTs R6, R12, R2
l4529: muls R3, R0, R10
l4530: eor R12, R12, R0, LSL #19
l4531: mvnLSs R6, R10, RRX 
l4532: teq R15, #4480
l4533: cmpNE R6, R7
l4534: mvnVCs R7, R11, LSR #22
l4535: rscs R12, R4, R4
l4536: sub R12, R15, R0
l4537: mulVC R3, R11, R9
l4538: tst R3, #-1929379840
l4539: add R3, R14, R10, ROR R8
l4540: orrLEs R11, R9, R14, LSL #31
l4541: movPLs R12, R5
l4542: bic R9, R8, R3, ASR R6
l4543: muls R4, R7, R8
l4544: mvn R8, #1610612737
l4545: mvn R1, #748
l4546: mul R5, R8, R14
l4547: subs R7, R12, R11
l4548: sbcMI R14, R6, R10, ROR #2
l4549: bics R5, R1, #2818048
l4550: cmnLE R9, R0, ASR #28
l4551: tst R10, R15
l4552: adcs R14, R1, R7, ROR #21
l4553: andGT R10, R14, R8, LSL R2
l4554: orr R7, R1, R9, LSL #17
l4555: orr R10, R12, R5, ASR R6
l4556: orrCC R10, R1, R14, LSR #27
l4557: eorNE R3, R2, R4, LSL R2
l4558: rsb R11, R10, R11, RRX 
l4559: rsb R5, R2, R4, ROR R8
l4560: orrLEs R0, R1, R9, ASR #12
l4561: andEQ R5, R6, R12, LSL R4
l4562: eors R6, R7, #3936
l4563: orrs R0, R9, R0, LSR #9
l4564: mvn R11, R1, RRX 
l4565: cmnMI R12, R2, ASR R14
l4566: tst R11, R9, RRX 
l4567: tst R4, R9
l4568: cmpNE R5, R0, LSL #6
l4569: adds R7, R15, R14
l4570: mov R10, R12
l4571: rscNE R1, R4, R11, RRX 
l4572: rscCS R11, R2, R1, ASR R4
l4573: subVSs R3, R1, R9, LSR R4
l4574: adds R1, R2, R5
l4575: teqCC R1, #-1342177280
l4576: mov R4, #-1677721600
l4577: tst R6, R9, RRX 
l4578: orrGEs R2, R10, #5505024
l4579: movLT R4, R5, RRX 
l4580: adcGE R3, R2, R4, LSL R5
l4581: cmpVC R2, R14
l4582: mul R1, R9, R8
l4583: tstVS R3, #4063232
l4584: eor R10, R1, R9
l4585: clzCC R9, R0
l4586: adcMIs R4, R3, R4, RRX 
l4587: movLSs R0, R1, RRX 
l4588: rsb R4, R5, #206848
l4589: teq R7, #650117120
l4590: teqMI R3, R7, LSL R11
l4591: bicEQs R4, R3, R5
l4592: tstMI R11, R8, LSL R14
l4593: mvns R11, R9, ASR R8
l4594: bicCS R4, R3, R1, ASR R10
l4595: mulCC R9, R5, R4
l4596: sbcLTs R6, R0, R11, ROR R7
l4597: eorLSs R12, R1, R2, ROR R2
l4598: clzEQ R14, R4
l4599: subs R0, R0, #272
l4600: teq R4, R6, LSR R4
l4601: mvnLS R4, #62976
l4602: andCSs R4, R12, R7, LSR #14
l4603: andNEs R3, R9, #30408704
l4604: mvnVCs R10, #11796480
l4605: rscNE R10, R5, R5
l4606: mulMIs R14, R1, R11
l4607: tstPL R1, R7
l4608: sbcs R8, R11, #-989855744
l4609: clzEQ R4, R2
l4610: sbcs R1, R14, R8, ROR #28
l4611: tstNE R2, R11
l4612: sub R14, R7, R14, LSL #8
l4613: orr R9, R0, R7
l4614: cmnPL R5, R8, LSR #4
l4615: eors R9, R12, R10, RRX 
l4616: adcs R2, R6, R4
l4617: eorEQ R9, R3, R4, LSR R3
l4618: subLTs R11, R1, R10
l4619: orrCCs R5, R0, R2, ASR #16
l4620: sbc R1, R8, R9, RRX 
l4621: orrMIs R10, R11, R6, ASR R9
l4622: orrLE R10, R3, R8
l4623: rsbPLs R1, R12, R9, LSL R7
l4624: adcGEs R10, R6, R7
l4625: cmp R14, #3984
l4626: add R1, R7, R3, RRX 
l4627: subNE R7, R4, R10
l4628: bic R0, R3, R5
l4629: add R3, R7, R7, ASR #8
l4630: sbc R9, R9, R14
l4631: mvnPLs R9, #30
l4632: teqVC R12, #933888
l4633: rsbs R4, R7, R5
l4634: eor R9, R5, R8, LSL #20
l4635: orrs R5, R15, R8, ROR #11
l4636: tstGT R5, #704
l4637: subGEs R9, R9, #19200
l4638: mulGTs R11, R8, R10
l4639: addPL R2, R10, #56
l4640: clzLE R5, R1
l4641: mov R4, R3, ROR R14
l4642: mvnGT R7, R4, RRX 
l4643: rsb R9, R10, R2, ASR #25
l4644: tst R3, R0
l4645: rsb R9, R14, R7, ROR R0
l4646: eors R1, R3, R2, LSL #3
l4647: rsbs R14, R7, R15
l4648: andEQ R12, R10, #51200
l4649: mvnVS R11, R10
l4650: tstGT R8, R0
l4651: mul R3, R7, R7
l4652: movVC R14, #130048
l4653: andGT R3, R12, R11, LSL R10
l4654: orrCSs R12, R7, R7
l4655: subLSs R7, R15, R3
l4656: orr R1, R0, #58982400
l4657: clzCS R6, R14
l4658: andGE R8, R5, R15, LSL #20
l4659: cmn R0, R4, RRX 
l4660: andGT R0, R7, R4, ROR R2
l4661: clzEQ R14, R11
l4662: sub R1, R4, #754974720
l4663: teqPL R3, R3, ASR R7
l4664: cmn R0, R9, LSR #19
l4665: rscs R11, R11, R10, RRX 
l4666: sub R1, R14, #163840
l4667: sbc R5, R11, R12, LSR #31
l4668: sub R1, R7, R1
l4669: andLSs R5, R15, R8, ASR #19
l4670: adc R3, R7, #583008256
l4671: eor R6, R2, #3072
l4672: rsbCC R9, R5, R1, LSL #25
l4673: mul R9, R11, R8
l4674: movCS R9, R8
l4675: ands R8, R5, #708837376
l4676: teq R4, R12, RRX 
l4677: rsbEQs R9, R2, #49152
l4678: rsbEQs R0, R11, R3
l4679: clz R14, R1
l4680: clz R12, R2
l4681: teq R15, #205824
l4682: adcMI R6, R6, R6, LSR #4
l4683: orr R3, R4, R11, LSR #1
l4684: sbc R6, R3, #38912
l4685: rscPL R1, R2, R6, ROR R2
l4686: subNEs R3, R7, R9, LSR R11
l4687: bic R10, R1, R12, ROR #13
l4688: muls R5, R7, R9
l4689: orrLSs R0, R10, R3, LSR #30
l4690: cmp R7, R5, LSL R4
l4691: adc R5, R6, R14, RRX 
l4692: clz R8, R9
l4693: sbcs R4, R8, #52480
l4694: rscLTs R4, R7, R6, RRX 
l4695: and R12, R1, R0, LSL R12
l4696: adcs R1, R6, R0, LSR #30
l4697: tstEQ R1, R10
l4698: teqVS R14, R6
l4699: tst R6, R15
l4700: subEQ R5, R1, R11, ASR R11
l4701: rsbLT R2, R1, R0, LSL #18
l4702: tst R15, R7, RRX 
l4703: tstVS R3, R4
l4704: subVS R11, R14, R8, RRX 
l4705: mvns R2, R6, LSR #29
l4706: movLSs R7, #1879048205
l4707: sbcLS R7, R8, R5
l4708: mvn R7, R0, RRX 
l4709: movEQ R4, R5, RRX 
l4710: rsbLE R6, R10, R2, LSR #11
l4711: muls R3, R1, R0
l4712: orr R12, R12, R6, LSR #29
l4713: teqVS R3, #1342177288
l4714: cmnGE R15, R14, LSL #20
l4715: cmnCC R14, R4, ROR #31
l4716: mulGTs R7, R2, R2
l4717: bic R9, R1, #146800640
l4718: rscLE R6, R2, R3, LSR #28
l4719: orrLTs R6, R10, R8, LSL R8
l4720: teqLS R9, R4, ASR R4
l4721: mulLEs R4, R12, R7
l4722: ands R2, R2, #-1543503869
l4723: cmnGT R9, R10, RRX 
l4724: add R10, R6, #-2147483630
l4725: subMIs R5, R4, R12, ASR R3
l4726: rscVS R1, R10, R11, RRX 
l4727: eorCSs R12, R3, R8, ROR R8
l4728: mulPL R10, R3, R5
l4729: adcCSs R2, R0, R10, LSR R7
l4730: subs R8, R12, #3850240
l4731: clz R10, R8
l4732: eors R10, R11, R10, RRX 
l4733: sub R1, R5, #868220928
l4734: mul R6, R12, R14
l4735: sbcGEs R1, R7, #55296
l4736: sbcMI R11, R4, #1392640
l4737: teq R14, R7, ROR R10
l4738: cmpGE R4, R12, LSR R11
l4739: sbc R3, R5, R7
l4740: bicLE R7, R2, R8, ASR R3
l4741: cmnMI R10, R4, ROR R11
l4742: mvnEQ R8, #640
l4743: adcGEs R7, R3, #108003328
l4744: cmpLE R14, R1, ASR R2
l4745: orrMI R5, R2, R2, ASR #3
l4746: subs R10, R6, #2096
l4747: mvnVC R9, R1, ROR R12
l4748: muls R8, R11, R5
l4749: mulGTs R7, R6, R10
l4750: subLT R2, R2, #-1895825408
l4751: eorLEs R3, R2, R11, LSL #22
l4752: cmnLT R8, R14, LSR R4
l4753: clzGE R2, R1
l4754: rscPL R1, R4, R5, LSR R5
l4755: cmn R5, R9
l4756: bic R7, R9, R5, LSR R11
l4757: orrCCs R10, R4, R3, RRX 
l4758: bics R14, R9, R11
l4759: eor R14, R4, R2, LSL #19
l4760: addLSs R1, R15, R11
l4761: rsbCC R6, R9, R6, RRX 
l4762: mvnCS R5, R2
l4763: andPL R11, R0, R7
l4764: rsbVCs R8, R12, R14, LSR R11
l4765: mvnPL R0, R10, ASR R4
l4766: ands R8, R9, #643072
l4767: andLSs R11, R8, R2, LSR #5
l4768: add R10, R6, R11, ASR #9
l4769: clz R10, R12
l4770: subPL R5, R7, #7424
l4771: mvnLT R0, R4, LSL #26
l4772: eor R8, R2, #724
l4773: rsbVS R9, R3, R10, ROR R8
l4774: subLTs R1, R0, #13632
l4775: sbcCC R7, R4, R7, LSR #23
l4776: tst R5, R8, LSL R6
l4777: rsbs R3, R3, R2, ROR R11
l4778: rsbCC R12, R15, #1310720
l4779: addPL R14, R6, R3, ASR R12
l4780: mvns R4, R10
l4781: clzPL R10, R11
l4782: bicGEs R0, R0, R2
l4783: rscNEs R2, R14, #3801088
l4784: sbc R11, R2, R5, ROR #12
l4785: sbcHIs R10, R11, #1776
l4786: clzLT R3, R10
l4787: andEQs R7, R11, R12
l4788: cmn R14, #54272
l4789: mulCCs R14, R10, R8
l4790: subMIs R0, R1, #1044381696
l4791: eorMIs R6, R10, #806912
l4792: subLE R8, R11, R3, LSR R2
l4793: addGE R12, R8, #16121856
l4794: bic R0, R15, R11
l4795: teqNE R4, R11, LSL #29
l4796: subLE R5, R14, #5888
l4797: mvns R5, R3
l4798: tstVS R8, R8
l4799: cmn R11, R2
l4800: subHIs R11, R0, R6, ROR R14
l4801: sub R2, R1, #1712
l4802: rsbNEs R4, R2, R10, ASR R1
l4803: movVSs R8, R12, LSL R5
l4804: mvnVSs R7, R10, RRX 
l4805: adcLEs R6, R9, #-2147483626
l4806: sbcs R14, R1, R15
l4807: cmn R7, R1
l4808: tstCC R7, R9, ROR #7
l4809: subLT R2, R8, R4, LSL R1
l4810: subLS R3, R14, R2, LSL R10
l4811: eorLT R14, R5, R3
l4812: orr R11, R6, R14
l4813: rsb R4, R0, R14, ASR R7
l4814: eorLE R3, R0, #1589248
l4815: rsbs R3, R2, #3489792
l4816: bicNEs R2, R7, #2179072
l4817: subVCs R0, R0, R2, ROR R5
l4818: mulLTs R5, R3, R14
l4819: rsbLEs R5, R5, R4, ROR #27
l4820: mov R0, #9961472
l4821: mvnLE R5, R11, LSL #26
l4822: teqGT R4, R0, LSL R9
l4823: subs R12, R12, #10624
l4824: eors R14, R15, R11, LSL #16
l4825: andVCs R6, R12, R9
l4826: bics R11, R1, R14
l4827: subLE R9, R0, #1342177283
l4828: adcs R6, R0, R3, ASR #4
l4829: bicLE R12, R5, #288
l4830: movNEs R0, R11, LSL #29
l4831: mvnGTs R6, R4, RRX 
l4832: teqLS R1, R15
l4833: orrVSs R7, R2, R8, ROR #29
l4834: adds R8, R2, #138240
l4835: adcCSs R8, R7, R6, LSL #27
l4836: cmnLS R4, R15
l4837: andEQs R3, R5, R1, RRX 
l4838: andVSs R2, R3, R5, RRX 
l4839: subs R12, R2, R6, ROR #22
l4840: andCCs R12, R9, R9, RRX 
l4841: andVS R5, R4, R11
l4842: andLS R5, R3, R12, ASR R9
l4843: rsc R8, R9, R9, LSL R14
l4844: cmp R10, R9
l4845: rsb R9, R2, R10
l4846: adc R8, R7, R10
l4847: clz R8, R10
l4848: movEQ R14, R7, ASR R9
l4849: mulNE R14, R1, R3
l4850: clzLT R12, R12
l4851: rsbCS R1, R8, #708
l4852: mvnLT R9, R12, LSR R7
l4853: mvnLS R11, #-218103808
l4854: mulLEs R8, R0, R14
l4855: sbcHI R10, R2, R3, ROR R7
l4856: eor R11, R11, #981467136
l4857: addPLs R0, R1, R9, LSL #25
l4858: clzHI R0, R6
l4859: adcGTs R12, R11, R0, RRX 
l4860: add R5, R0, R6, LSR #13
l4861: adcCCs R12, R5, #67108865
l4862: movGTs R2, #-536870912
l4863: rsbCCs R1, R3, R10, ROR R4
l4864: sbcLEs R2, R5, R3, LSL #26
l4865: adcCSs R7, R12, R15
l4866: orrVCs R2, R14, R7, ROR #4
l4867: andVCs R9, R14, R0
l4868: mulHIs R4, R11, R4
l4869: tstLT R8, R14
l4870: mvns R3, #3856
l4871: clzPL R2, R5
l4872: movGTs R0, R3
l4873: adds R5, R7, #1073741856
l4874: clzCC R7, R10
l4875: cmp R15, R8
l4876: eorCC R4, R10, R11, ASR #16
l4877: bicCC R10, R4, R2, RRX 
l4878: cmn R8, #3407872
l4879: orrs R2, R11, R10, ASR R5
l4880: andMIs R3, R8, #958464
l4881: rscVSs R12, R5, R11, LSL R12
l4882: rsb R10, R0, R14
l4883: rsbVS R2, R6, R0
l4884: rsbVCs R11, R11, R9, LSR R8
l4885: andLE R7, R14, #770048
l4886: andPLs R0, R3, R12
l4887: mvns R11, #2965504
l4888: mvnEQ R12, R14, ROR #26
l4889: and R14, R9, #515899392
l4890: orrPL R9, R0, R12, LSL #15
l4891: movEQ R7, R9, RRX 
l4892: cmpLE R6, R2
l4893: mvnVSs R3, #1245184
l4894: teq R14, R5, LSL R6
l4895: subNEs R3, R9, R2
l4896: adcNE R6, R8, R4, ROR #2
l4897: mvn R9, #1011712
l4898: ands R8, R15, R4, LSR #20
l4899: bicCCs R6, R14, #13504
l4900: sbc R10, R6, R11, RRX 
l4901: subLTs R7, R1, #14336
l4902: tstMI R6, R7
l4903: subGT R0, R5, R6
l4904: mulLSs R1, R3, R3
l4905: eorGTs R6, R10, R6, LSL #29
l4906: ands R2, R14, #1811939328
l4907: orrs R7, R9, R10, ASR R1
l4908: subLS R2, R9, R5
l4909: mvnLEs R1, R10, ASR R10
l4910: movCCs R7, R7, LSL R11
l4911: ands R1, R11, R1, RRX 
l4912: clzGT R5, R10
l4913: adcs R4, R9, R1
l4914: rscEQ R11, R0, R0, ASR R14
l4915: andLEs R3, R14, R9
l4916: mulHI R10, R3, R7
l4917: eorNE R9, R7, R8, ROR #17
l4918: adcPL R7, R6, R2, ASR #11
l4919: cmpLE R6, R14, ASR R2
l4920: tst R3, R10, LSL R9
l4921: mulLSs R11, R2, R9
l4922: subs R2, R2, #256000
l4923: sbcMI R3, R11, R12, ROR #3
l4924: subCCs R14, R12, R12, LSL #18
l4925: cmnGT R4, #5636096
l4926: eor R11, R1, R4, RRX 
l4927: andGTs R11, R9, R15, RRX 
l4928: andPL R14, R10, R9
l4929: mulLT R12, R3, R5
l4930: cmnLE R11, #60416
l4931: orrs R0, R1, R3, ROR #4
l4932: mul R10, R0, R5
l4933: movs R10, R0, ROR #16
l4934: movs R12, R5, ROR #8
l4935: and R7, R1, R6, ROR R1
l4936: orrs R1, R9, R5
l4937: eorGT R10, R5, R7
l4938: subVC R2, R0, R0, ASR #5
l4939: rscCCs R1, R12, #40448
l4940: mvnLTs R3, R8
l4941: orrVSs R0, R7, R15, ASR #13
l4942: subCS R0, R8, R3, ROR R14
l4943: orr R0, R7, #864
l4944: teqNE R12, R11
l4945: sub R3, R7, R10, LSR #23
l4946: movs R11, #3584
l4947: mulHI R14, R7, R2
l4948: eor R7, R1, R15
l4949: cmnLE R4, R6, LSR #20
l4950: teq R8, R14, ROR R1
l4951: sbc R4, R7, R11, ROR R8
l4952: mul R5, R14, R6
l4953: adcGTs R10, R3, #2832
l4954: rsbCCs R6, R14, #679936
l4955: muls R5, R7, R11
l4956: orrPL R0, R9, R6, RRX 
l4957: and R6, R14, R2
l4958: mvnGTs R11, R6, ROR R12
l4959: bicMI R14, R0, R14
l4960: cmnVS R1, R12, LSL #31
l4961: andPL R1, R0, R1
l4962: subEQs R12, R11, R5, ASR #31
l4963: ands R7, R1, #189
l4964: cmnLS R1, R10
l4965: andGT R9, R9, R3
l4966: eorEQs R10, R4, #100
l4967: rscs R10, R15, R11, ROR #10
l4968: subs R10, R0, #68
l4969: adds R10, R5, R11
l4970: orrMI R11, R0, R10, RRX 
l4971: sub R6, R5, R7
l4972: mvns R3, R15, LSR #30
l4973: subEQ R3, R14, R6, ASR #14
l4974: bicVCs R4, R7, #-1073741771
l4975: sbcs R0, R0, R1, ROR R6
l4976: tstLT R7, #8704
l4977: andVSs R10, R5, #-2130706432
l4978: eor R14, R14, #-201326591
l4979: movLTs R1, R2
l4980: cmnHI R7, R14, ROR R5
l4981: and R9, R11, R4
l4982: rsbCC R9, R6, R11, ROR #19
l4983: clzEQ R14, R4
l4984: eorGTs R11, R2, R3
l4985: eorCCs R1, R4, R14
l4986: adcGEs R14, R5, R0, ROR #19
l4987: cmnMI R6, R0
l4988: cmpHI R14, #-1073741785
l4989: adcVSs R4, R12, R0, ROR #23
l4990: cmnPL R1, R11, RRX 
l4991: bic R14, R4, R0
l4992: sbcs R3, R3, #-1073741821
l4993: rscs R8, R1, #624951296
l4994: eorLT R6, R8, #13
l4995: addMI R9, R5, #5570560
l4996: clzLE R10, R5
l4997: subs R3, R12, R2
l4998: eorNE R5, R15, R8, ASR #19
l4999: sbcCC R12, R10, R5, ROR #1
l5000: movMIs R2, R5, ROR R3
end: b end

