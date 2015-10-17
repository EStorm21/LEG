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
val1: .word 4216086505
next1:ldr R2, val2
b next2
val2: .word 1445580836
next2:ldr R3, val3
b next3
val3: .word 2913170553
next3:ldr R4, val4
b next4
val4: .word 1608137122
next4:ldr R5, val5
b next5
val5: .word 2469102562
next5:ldr R6, val6
b next6
val6: .word 2794697752
next6:ldr R7, val7
b next7
val7: .word 3821893868
next7:ldr R8, val8
b next8
val8: .word 2673910181
next8:ldr R9, val9
b next9
val9: .word 2429403740
next9:ldr R10, val10
b next10
val10: .word 1399442824
next10:ldr R11, val11
b next11
val11: .word 1185024156
next11:ldr R12, val12
b next12
val12: .word 3582387083
next12:ldr R14, val14
b next14
val14: .word 284976285

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 1665527456
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 436634806
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3565812054
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 2700781670
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 114075987
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 489752050
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 3389388769
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 1803375922
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 2813427153
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 4143224428
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 903483125
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 4109749249
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 4266610650
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 3504190755
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 3515731799
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 3356232764
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 3059979588
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 1104103446
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 2248105108
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 2654515318
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 3896243540
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: adcHI R5, R0, R12, ASR R11
l2: ands R4, R4, R2, ROR #31
l3: andHIs R2, R6, #-1073741818
l4: tstHI R1, R11, ROR R11
l5: sbc R1, R12, #12
l6: rscPLs R2, R8, R4, LSL #29
l7: sbcCC R11, R7, R7
l8: addCCs R3, R8, R1, LSR R8
l9: mulLE R5, R11, R8
l10: tstCS R5, R0, LSL R3
l11: andMI R4, R14, #683671552
l12: muls R8, R9, R6
l13: sbc R11, R3, R14, LSL R14
l14: eors R8, R3, R2
l15: movGEs R11, R9, LSL R9
l16: muls R4, R1, R14
l17: mul R5, R4, R3
l18: bicPL R12, R12, R7
l19: orrLEs R6, R10, #247463936
l20: and R9, R4, R2
l21: mulMI R11, R8, R10
l22: adcMIs R4, R10, R10
l23: rscs R0, R8, R6, ROR #19
l24: add R12, R9, R15, ASR #10
l25: ands R1, R2, R8, ROR R7
l26: eorVS R14, R11, #360710144
l27: andLT R2, R8, R6, ROR R4
l28: tstHI R2, R15, ROR #19
l29: subEQs R14, R6, #3620864
l30: cmnHI R3, R2, ASR #4
l31: eorMIs R10, R3, R7
l32: andCSs R4, R0, R7
l33: teqVC R12, R8
l34: eor R9, R1, R10, LSR #1
l35: andPLs R1, R2, R7, ROR #11
l36: movs R9, R14
l37: mulGTs R0, R3, R11
l38: eorVC R8, R9, R3
l39: andGTs R14, R4, R7, LSR #23
l40: cmp R10, R6, ASR #2
l41: mul R14, R9, R5
l42: cmpMI R14, R6, LSL #12
l43: sbc R0, R8, #237
l44: and R2, R14, R6, RRX 
l45: rsb R6, R12, R7, ASR #13
l46: adcLEs R9, R9, R12, RRX 
l47: orrEQ R6, R7, R7, ASR R11
l48: and R4, R2, R12, ROR #6
l49: tst R11, R6, ROR #18
l50: eorVSs R14, R9, R11, ASR #28
l51: teq R14, R11, ASR #27
l52: mul R12, R11, R11
l53: mulVSs R12, R3, R1
l54: clzNE R12, R0
l55: sbcCCs R1, R5, R1, ROR R2
l56: tstGT R12, R5
l57: mulGT R4, R2, R7
l58: mul R1, R9, R11
l59: mulNEs R3, R6, R2
l60: eors R8, R8, #124
l61: mul R5, R6, R0
l62: eorLEs R10, R12, #-889192448
l63: andVCs R1, R4, #1073741824
l64: cmpNE R4, #2704
l65: muls R6, R11, R8
l66: mul R5, R1, R0
l67: clzCS R8, R1
l68: mulNE R11, R12, R4
l69: ands R11, R11, R4, LSR R14
l70: mulLTs R3, R0, R6
l71: movs R3, R11, LSR R6
l72: mulLSs R11, R5, R7
l73: mul R12, R1, R12
l74: mul R12, R0, R10
l75: muls R11, R12, R10
l76: eorGE R0, R15, R14
l77: tstEQ R11, R14, LSL #19
l78: mulHIs R5, R11, R12
l79: adds R10, R7, R5, LSL #6
l80: sub R5, R10, #9152
l81: eorCC R0, R2, R12, LSR #31
l82: mul R6, R14, R8
l83: movPL R1, #18432
l84: cmp R5, R14, LSL #1
l85: mulHI R11, R3, R9
l86: sbcs R8, R9, #-1090519040
l87: mulGE R9, R12, R6
l88: mulLT R8, R14, R6
l89: andLT R8, R8, R4
l90: add R12, R2, R14, LSR R6
l91: muls R14, R6, R6
l92: eorPLs R11, R12, #1048576
l93: muls R9, R1, R12
l94: addCCs R6, R6, R15
l95: bics R8, R4, R4
l96: mulLT R10, R14, R14
l97: eorLE R10, R1, R5, ROR #28
l98: adcMI R14, R11, R11, LSL #4
l99: rsbCS R12, R6, R5
l100: mulMI R8, R10, R4
l101: eorPL R5, R6, R12
l102: mul R8, R2, R1
l103: muls R3, R5, R4
l104: rsbGT R10, R4, R8, ASR #13
l105: eors R5, R10, R6, LSL #29
l106: mulLT R7, R10, R6
l107: mulCSs R6, R9, R14
l108: cmn R8, R8
l109: mulPLs R5, R14, R5
l110: eorLSs R3, R5, #69
l111: mul R12, R14, R12
l112: subs R6, R3, R9
l113: mulPL R5, R0, R3
l114: rsbVSs R7, R8, R1, ROR #4
l115: muls R7, R5, R10
l116: mul R0, R9, R10
l117: mulGTs R12, R10, R10
l118: orr R0, R4, R8
l119: mulVSs R9, R0, R4
l120: teqVS R2, R0, ROR R11
l121: andPL R12, R11, R12, ROR R11
l122: and R8, R7, R7, LSR #4
l123: andLSs R4, R10, R7
l124: adds R2, R6, R11, ASR R5
l125: mulMI R5, R6, R14
l126: mov R4, #3024
l127: mov R0, R1
l128: mul R1, R4, R6
l129: mulGT R6, R9, R9
l130: eors R0, R6, R3, ASR #4
l131: mul R11, R12, R7
l132: mul R3, R12, R12
l133: muls R14, R8, R10
l134: muls R4, R8, R3
l135: orr R14, R4, R2
l136: mulVCs R0, R12, R2
l137: orrs R11, R7, R1, RRX 
l138: cmp R12, #-536870897
l139: muls R1, R11, R6
l140: eorLS R6, R9, R9, LSL R2
l141: orrVC R12, R9, R1, LSL #23
l142: cmpGE R0, R11
l143: andHI R14, R11, R4, LSL R7
l144: mulCSs R5, R9, R8
l145: teq R2, R0, RRX 
l146: clzGT R0, R1
l147: and R8, R12, R8, LSR R6
l148: mulVC R4, R3, R9
l149: rscs R1, R10, R11
l150: orrLS R10, R7, R1, ROR #2
l151: eor R7, R8, #4096
l152: mvns R10, R6, RRX 
l153: mulEQ R7, R4, R9
l154: mulMIs R8, R1, R6
l155: cmn R4, R5
l156: cmn R1, R11
l157: rscNEs R14, R4, R10, ROR R11
l158: eors R8, R6, #268435466
l159: mulVS R1, R0, R4
l160: mulCCs R14, R9, R4
l161: muls R14, R4, R12
l162: bics R10, R1, R3, ROR R5
l163: orrs R6, R6, R6
l164: rsc R4, R11, R0, LSL #10
l165: mulLSs R2, R11, R3
l166: movGEs R8, #37888
l167: clz R8, R5
l168: cmpEQ R8, R10, RRX 
l169: mul R9, R12, R10
l170: muls R6, R4, R9
l171: orrs R10, R15, R0
l172: ands R12, R14, R3, LSL #21
l173: eorLEs R7, R3, #9830400
l174: andCSs R8, R4, R5, ROR R1
l175: rscLT R5, R0, R4, ROR R4
l176: mul R0, R1, R6
l177: orrEQ R7, R12, R10, LSR #0
l178: ands R6, R3, R11, ASR R0
l179: mulCC R3, R14, R14
l180: cmn R9, R0
l181: muls R0, R14, R11
l182: clz R4, R12
l183: mvnMI R6, R8
l184: mulMIs R11, R2, R4
l185: eors R6, R10, #-1342177279
l186: mulVC R5, R8, R12
l187: mul R6, R1, R3
l188: sbcLS R1, R0, R6
l189: eorEQ R6, R6, R15
l190: mul R6, R2, R14
l191: mul R9, R8, R5
l192: rsb R3, R1, R0, ASR #6
l193: cmnPL R8, R0
l194: eorGTs R2, R7, #9600
l195: teq R8, R2
l196: addHI R12, R9, R0, LSR R0
l197: orrPLs R14, R11, #910163968
l198: mul R5, R3, R4
l199: rscNE R0, R14, R10, ASR #15
l200: rsbs R1, R15, R0
l201: addHIs R9, R10, #138
l202: movHI R12, R3, RRX 
l203: orrMI R9, R2, R2
l204: tstCS R3, R6, RRX 
l205: cmnNE R14, R10, LSL #30
l206: andPLs R9, R5, R2, LSL #19
l207: movHI R7, R3
l208: andMIs R11, R10, #69632
l209: mulLT R3, R1, R12
l210: cmp R12, R9, ASR #11
l211: eorLEs R1, R4, #107
l212: muls R0, R8, R11
l213: sbcLEs R10, R11, #209920
l214: orrVSs R12, R10, R12, ASR #2
l215: movVSs R14, R5, ROR #28
l216: mulPL R10, R4, R0
l217: subCSs R1, R3, #76
l218: mul R12, R1, R1
l219: mulVC R1, R3, R1
l220: rsbMI R3, R14, R4, LSL #4
l221: rscPLs R14, R8, R12, RRX 
l222: cmpMI R2, R0
l223: and R8, R15, #3632
l224: eorHI R4, R6, #468
l225: mulGE R5, R1, R10
l226: eorGE R10, R2, R15, RRX 
l227: orrLEs R7, R11, R10, ASR #28
l228: tst R0, R8, LSL R10
l229: mulCC R4, R10, R10
l230: orrCC R14, R9, R12, LSL #5
l231: mulCS R14, R12, R8
l232: andHIs R2, R9, R2, RRX 
l233: mulMI R1, R3, R12
l234: mulMI R3, R5, R1
l235: mulGEs R6, R14, R2
l236: mulGTs R1, R6, R7
l237: ands R12, R9, R2, ASR R10
l238: mulNE R11, R2, R14
l239: eorCSs R11, R3, #-1962934272
l240: cmpMI R6, R3, LSL #16
l241: mulVS R2, R7, R9
l242: muls R4, R2, R9
l243: cmpLS R7, R12, ROR #25
l244: subNEs R5, R6, R7, LSR R4
l245: and R9, R10, R10
l246: eorCS R5, R15, R2, LSL #29
l247: orr R4, R15, R12
l248: mulCSs R1, R12, R7
l249: eorLEs R12, R15, R5, RRX 
l250: eors R2, R3, R3, ASR R6
l251: mul R2, R4, R5
l252: mvnHI R3, #1342177287
l253: muls R4, R10, R14
l254: movLS R11, R0, LSL R5
l255: rscLSs R5, R3, R3, RRX 
l256: orrCS R6, R5, #11968
l257: cmnLS R0, R0, ROR #16
l258: mul R5, R3, R14
l259: orrLE R6, R9, #520
l260: mulCS R6, R4, R9
l261: orrGTs R8, R8, R6, ROR R8
l262: mulLS R14, R12, R12
l263: bics R8, R5, R1, ROR R10
l264: bics R5, R10, R12
l265: mulNE R8, R6, R5
l266: orrNE R0, R11, #49664
l267: muls R2, R3, R0
l268: clzNE R2, R12
l269: mvns R6, R10, LSL R4
l270: mul R12, R14, R12
l271: mul R8, R3, R12
l272: teq R9, R7, RRX 
l273: eorCCs R3, R14, #25165824
l274: mulCS R12, R14, R5
l275: cmnEQ R2, #2176
l276: eorVS R1, R2, R11
l277: mulVC R9, R5, R14
l278: mulHI R2, R7, R10
l279: eorGEs R4, R15, R15, LSL #8
l280: muls R3, R14, R1
l281: andPLs R1, R2, R7, RRX 
l282: teqHI R2, #-301989888
l283: subGE R5, R8, #42240
l284: cmpVS R9, R1, LSR R14
l285: mvns R2, R1
l286: mulLTs R6, R2, R6
l287: eorLSs R3, R11, R0, LSL R7
l288: orr R4, R14, #745472
l289: orrPL R7, R11, #20447232
l290: andHI R6, R9, #6592
l291: cmn R7, R4, LSR #16
l292: teqNE R11, #536870918
l293: muls R8, R4, R12
l294: cmnLT R4, R15
l295: andHI R9, R3, #40960
l296: mul R14, R3, R10
l297: orr R2, R8, R9
l298: orrLE R6, R1, R14, ROR #1
l299: teqLS R10, R10, ROR R14
l300: cmn R2, R10, RRX 
l301: bicMI R12, R10, R8
l302: subMI R1, R8, R11
l303: mul R10, R0, R2
l304: mulGE R4, R5, R10
l305: mulPLs R5, R7, R4
l306: eors R11, R8, R8
l307: cmnLT R11, R2
l308: bicHIs R14, R9, R7, LSL #16
l309: mvnGEs R10, R5
l310: mulGTs R11, R0, R10
l311: mul R4, R5, R10
l312: subCS R10, R1, R10
l313: orrHIs R6, R14, #3211264
l314: and R10, R10, R10
l315: eorLTs R5, R12, R9, LSR R3
l316: eorLT R7, R14, #1
l317: mul R0, R14, R9
l318: mulLT R9, R2, R9
l319: muls R10, R8, R0
l320: bicCC R12, R8, R8, ASR #18
l321: eorVSs R1, R6, R12, ASR R7
l322: eorVC R2, R0, R7
l323: muls R5, R6, R7
l324: muls R0, R8, R12
l325: tst R6, R12, LSR R7
l326: subCS R2, R3, R9, ASR R9
l327: orrs R1, R3, R1, LSL R5
l328: andVSs R7, R14, R9, ROR R11
l329: mulLT R12, R2, R3
l330: add R8, R10, R8, ASR #15
l331: mulEQ R1, R2, R7
l332: andCS R4, R12, R0
l333: rscMIs R9, R11, R4, LSR R4
l334: orr R14, R0, R11, LSL #13
l335: mulLT R14, R9, R8
l336: adcLSs R1, R9, R3
l337: eorGEs R9, R4, R14
l338: ands R0, R0, R5
l339: mulGEs R5, R3, R8
l340: cmpLT R15, #-1744830461
l341: subLSs R6, R2, R9, ASR R3
l342: eorCSs R0, R12, R7
l343: add R8, R14, R1, LSL R1
l344: mulMI R7, R5, R14
l345: mov R7, R8, ASR #2
l346: orrEQ R1, R7, R9, LSR #13
l347: subs R4, R10, R10, ASR #22
l348: mulHIs R6, R1, R10
l349: clz R3, R12
l350: mulNE R10, R0, R5
l351: muls R4, R9, R0
l352: eorEQs R11, R5, R6, ASR #0
l353: subs R10, R11, R5, LSL R8
l354: muls R3, R4, R5
l355: eorMIs R1, R4, R9, LSR #4
l356: and R11, R7, R1, ROR R12
l357: mulHIs R7, R8, R3
l358: mulVCs R14, R5, R3
l359: adcLEs R14, R10, R15
l360: orrCCs R12, R0, #6080
l361: tstHI R10, #1073741882
l362: sub R3, R5, R6
l363: andGTs R0, R14, R2
l364: mulGE R3, R0, R9
l365: and R1, R15, R9
l366: eors R9, R10, #7872
l367: muls R8, R14, R6
l368: mvn R4, R14
l369: andLE R8, R5, R14
l370: orrVCs R12, R15, #-268435441
l371: mul R8, R14, R0
l372: andNEs R14, R0, R6, RRX 
l373: mulVCs R9, R0, R6
l374: adcVC R8, R8, #-536870910
l375: muls R12, R11, R4
l376: mulPL R6, R4, R10
l377: andVCs R6, R7, R11, ASR R0
l378: cmn R14, #10289152
l379: muls R11, R8, R6
l380: mulLSs R4, R12, R9
l381: andHI R3, R3, #252
l382: mul R7, R5, R11
l383: bicCCs R7, R1, R8, ROR #11
l384: cmpGE R7, R6, LSL R2
l385: muls R6, R4, R3
l386: movPLs R10, R6, ASR #31
l387: eorEQ R10, R15, #86016
l388: orrs R14, R11, #581632
l389: andGT R7, R3, R14, ROR R2
l390: orrVC R2, R0, R0, LSR R5
l391: clz R10, R14
l392: clzGT R2, R12
l393: mul R12, R8, R14
l394: rscs R4, R3, R15, RRX 
l395: eorVS R14, R4, R11, ASR R0
l396: subs R7, R6, #4736
l397: mulLS R3, R10, R0
l398: mulVSs R9, R5, R11
l399: andCCs R14, R1, R7
l400: and R8, R14, R7, LSR #23
l401: mul R7, R9, R2
l402: orrEQ R6, R12, R10, RRX 
l403: mulHI R3, R4, R1
l404: mulCC R9, R12, R7
l405: orr R8, R1, #55312384
l406: muls R3, R12, R6
l407: ands R12, R3, R3, LSL #30
l408: clzGT R5, R0
l409: mulHIs R3, R8, R3
l410: muls R8, R10, R7
l411: orrVSs R2, R5, #-2147483593
l412: mulNE R2, R8, R9
l413: andPLs R14, R6, R11, ROR #11
l414: teqGE R10, R4, LSR R5
l415: mulGE R8, R2, R3
l416: mulLEs R6, R2, R4
l417: adcHI R3, R10, #144
l418: mul R3, R8, R8
l419: movHI R3, R14
l420: orrCS R12, R14, R15, ASR #3
l421: and R2, R15, R14, LSR #26
l422: mulEQ R0, R14, R5
l423: eorHI R4, R11, R0, LSL #12
l424: eorNEs R3, R14, R14, LSR R14
l425: adcGEs R0, R9, R8, ROR #17
l426: mulLTs R14, R6, R14
l427: rsbCCs R0, R2, #8768
l428: rscEQs R12, R5, #629145600
l429: tst R2, R6, ASR #16
l430: rsbCC R4, R9, R6
l431: mulLSs R2, R0, R0
l432: mulVCs R0, R5, R14
l433: muls R11, R5, R10
l434: andGEs R4, R3, R11
l435: mulMIs R7, R6, R11
l436: teqVS R2, #3664
l437: eor R6, R6, R6, LSR #19
l438: mul R11, R4, R6
l439: mulEQs R6, R11, R0
l440: mulGT R3, R9, R11
l441: orrGEs R7, R15, R5
l442: orrGT R9, R0, R1, LSL R2
l443: orrLEs R1, R14, #1342177282
l444: mul R8, R7, R6
l445: mulMI R9, R10, R11
l446: andNEs R6, R6, R3
l447: orrs R4, R3, R1, RRX 
l448: andLT R10, R0, R10
l449: eorNE R0, R9, R5, LSL R1
l450: mulLE R3, R14, R12
l451: eor R7, R6, R14, LSR R5
l452: mulLEs R5, R14, R6
l453: rscCCs R0, R2, R12, RRX 
l454: eorGEs R6, R0, #872415232
l455: mvn R14, R3, ROR R2
l456: tst R1, R15
l457: mulGEs R6, R8, R3
l458: mulCC R2, R14, R8
l459: muls R9, R5, R8
l460: andVSs R5, R2, R6, LSR #1
l461: mulVSs R5, R4, R0
l462: mulNEs R4, R2, R0
l463: mulLTs R3, R9, R7
l464: mulVC R12, R5, R11
l465: cmnVS R14, R5, RRX 
l466: teq R15, R10, LSR #30
l467: mulEQ R4, R9, R12
l468: andMIs R0, R4, #9437184
l469: andMI R8, R2, R7, LSL R1
l470: andLSs R12, R1, #1073741859
l471: mulNE R6, R11, R2
l472: eorLS R5, R14, R5, LSR #21
l473: sbcs R11, R11, #208896
l474: orrHI R3, R7, R5, LSR #6
l475: orr R9, R1, R15
l476: eorLTs R1, R11, R6, RRX 
l477: muls R7, R3, R3
l478: and R12, R6, R14
l479: subs R14, R7, R7, ROR #1
l480: tstHI R5, R0
l481: cmn R0, #1828716544
l482: eorPL R14, R10, R8, LSL R12
l483: tstLT R8, R14, LSR R2
l484: mulCCs R2, R1, R1
l485: eor R7, R7, #1248
l486: mulGT R9, R6, R12
l487: muls R12, R9, R2
l488: muls R4, R5, R5
l489: mul R4, R3, R0
l490: ands R7, R6, R9
l491: andVSs R3, R14, R12, RRX 
l492: mulVC R7, R14, R14
l493: tstCC R14, R3, ROR #24
l494: tst R2, R3, LSL R2
l495: sub R9, R14, R15, ASR #10
l496: orrLSs R6, R6, R6, LSR R2
l497: cmn R5, R15
l498: addVSs R2, R3, R0, LSR R8
l499: sbc R10, R3, #-134217726
l500: muls R4, R8, R1
l501: adcLTs R6, R6, R7, LSR R5
l502: mul R0, R14, R7
l503: mulLE R8, R4, R8
l504: muls R8, R14, R0
l505: cmn R8, R0
l506: andGEs R14, R2, R11, LSL R2
l507: mvnLTs R5, R4
l508: mulLT R8, R14, R11
l509: mulGEs R2, R14, R1
l510: orr R12, R3, R0, ROR #15
l511: and R6, R5, R6, ROR #5
l512: sbcPL R5, R15, R11, LSR #23
l513: mulMI R11, R14, R10
l514: rsb R12, R7, #18874368
l515: cmn R7, #12288
l516: cmp R12, R12
l517: orr R9, R7, R10
l518: mvn R3, R9
l519: mvnCC R5, R8
l520: mulVS R6, R1, R4
l521: mulPL R7, R6, R8
l522: subCC R14, R6, R9, LSR #5
l523: eorCCs R10, R8, R12
l524: eorVC R3, R3, R3, RRX 
l525: movGT R1, #301989888
l526: clzCC R12, R8
l527: teq R3, R7
l528: mvn R14, R9
l529: mul R3, R6, R0
l530: teq R1, #507510784
l531: mulHI R0, R8, R5
l532: adcs R6, R4, R5, LSL R3
l533: mulPLs R1, R5, R10
l534: mul R14, R5, R11
l535: eors R5, R15, #10368
l536: eorLT R14, R10, R14, RRX 
l537: and R0, R5, R3, LSR #30
l538: cmn R12, #5952
l539: eorEQ R1, R9, R14, LSL R3
l540: movs R14, R15
l541: orrs R3, R8, R8
l542: teq R12, #2
l543: andLS R7, R9, R10, ROR R4
l544: teqVS R3, R11, LSR R2
l545: mulLSs R4, R5, R5
l546: andMIs R4, R7, R8, LSL R3
l547: orrs R6, R9, #-1006632959
l548: eors R3, R15, R11
l549: andMIs R2, R12, R6, LSL R10
l550: and R11, R1, R14
l551: rsbs R12, R8, R7, ASR R6
l552: cmp R2, R5
l553: mulVS R5, R6, R12
l554: rsbHI R10, R10, R5, ROR R4
l555: movNE R10, #212992
l556: ands R14, R9, R5, ASR #21
l557: mulGE R7, R11, R12
l558: rsbs R8, R14, R6
l559: mul R14, R9, R4
l560: muls R10, R7, R5
l561: cmnCS R4, R15, ASR #6
l562: mulPL R14, R8, R8
l563: mul R4, R8, R5
l564: andGTs R1, R15, R11, ROR #15
l565: bicCS R2, R14, R11
l566: clzNE R6, R1
l567: mulHIs R2, R12, R7
l568: tst R15, R15, ROR #18
l569: muls R7, R8, R8
l570: and R9, R10, R8, ASR R14
l571: bicGEs R8, R0, R4, ROR #22
l572: addPL R1, R5, R6
l573: tst R0, #11599872
l574: mul R12, R0, R5
l575: ands R0, R11, R8, LSL #4
l576: mulLTs R14, R11, R1
l577: rsbs R14, R12, R1, ROR #9
l578: cmpGT R4, #3391488
l579: bicPLs R5, R7, R11, RRX 
l580: mul R4, R3, R3
l581: mulGEs R6, R2, R5
l582: sbcs R9, R12, R6, ROR #2
l583: mulLEs R7, R12, R9
l584: rscLS R10, R0, R3, LSR R10
l585: mov R4, R11
l586: cmp R14, R7, LSL R5
l587: adds R12, R1, R3, LSR #21
l588: mulMIs R0, R11, R3
l589: clzEQ R6, R10
l590: ands R2, R4, R5, ASR #2
l591: orr R10, R5, R12, ASR #11
l592: eorGE R11, R6, R2, ROR R7
l593: muls R5, R8, R10
l594: mul R6, R2, R10
l595: eorNE R6, R1, #2408448
l596: movCS R4, R9, ROR #9
l597: and R3, R14, #8126464
l598: rscVS R11, R10, R8
l599: andVC R14, R0, R5
l600: mulGTs R6, R8, R1
l601: tstPL R0, R6
l602: mulGE R4, R10, R14
l603: andGEs R3, R3, #461373440
l604: andVC R9, R5, R7
l605: orrCCs R9, R3, R2
l606: orrNEs R6, R8, R15, ROR #17
l607: sbcLEs R10, R8, #14221312
l608: mulLT R14, R11, R1
l609: mvn R2, R6
l610: adcLSs R2, R14, R6, LSL #10
l611: orrEQ R11, R8, R7
l612: andNE R7, R12, R10, LSR #14
l613: muls R4, R6, R8
l614: eor R3, R3, #39845888
l615: mulPLs R9, R0, R12
l616: mulVCs R2, R10, R10
l617: clz R7, R6
l618: andCC R8, R11, #373293056
l619: clzGT R10, R3
l620: mul R8, R12, R6
l621: mulGE R11, R10, R8
l622: rsbMIs R7, R5, R3
l623: mul R10, R14, R14
l624: mulCS R14, R0, R0
l625: eors R9, R12, R4, LSR R6
l626: mulLT R7, R12, R10
l627: orr R14, R7, R9, LSL R0
l628: clzVS R3, R8
l629: and R12, R15, R6
l630: eorEQs R8, R14, #545259520
l631: bicGT R0, R3, #805306368
l632: andHIs R11, R14, R15
l633: orrMI R1, R0, #8257536
l634: eorGTs R5, R7, #679477248
l635: eor R8, R7, R15, LSR #3
l636: orrLE R2, R14, R11, ROR #5
l637: mul R2, R0, R2
l638: eors R6, R5, R1
l639: rsb R0, R10, #12451840
l640: mulPL R5, R4, R4
l641: mulEQs R2, R14, R4
l642: clz R6, R0
l643: mov R0, R10, LSR R5
l644: andMIs R8, R11, R2
l645: mulLTs R11, R10, R2
l646: mvnHIs R2, R9, ROR #6
l647: mulHIs R14, R1, R7
l648: orrVS R12, R9, R0
l649: andNEs R7, R1, R6, LSL R11
l650: orrNEs R1, R12, R6, RRX 
l651: clzLE R6, R3
l652: mulHI R5, R3, R4
l653: mulMI R3, R1, R10
l654: eorLSs R4, R9, R9, LSR R7
l655: orrs R4, R5, R7, LSL #27
l656: adds R8, R12, #-1275068416
l657: eors R0, R3, R2, RRX 
l658: mulCS R14, R3, R6
l659: eorLTs R6, R0, R12
l660: mulLEs R2, R11, R14
l661: movs R10, #24903680
l662: mov R5, R12, LSL R2
l663: subs R14, R12, R7
l664: orrVC R2, R9, R2, ROR R1
l665: mulEQs R11, R8, R14
l666: mulGE R6, R7, R7
l667: eor R3, R15, #86
l668: mulGEs R9, R6, R8
l669: mulHIs R2, R8, R2
l670: muls R11, R9, R11
l671: muls R0, R3, R9
l672: mul R3, R5, R4
l673: movs R12, #92274688
l674: tstVC R10, R7
l675: rscNEs R14, R0, R6, LSR #1
l676: ands R10, R3, R15, ASR #20
l677: mulCSs R1, R6, R11
l678: eorLE R6, R15, R12, RRX 
l679: ands R8, R3, R0, LSL #18
l680: eor R9, R11, R4
l681: eor R1, R3, R3, ASR R12
l682: mulVSs R6, R1, R9
l683: eorNE R10, R10, #536870921
l684: mul R8, R11, R10
l685: orrs R12, R3, R12
l686: muls R11, R7, R11
l687: mulGTs R12, R3, R5
l688: andCC R1, R8, R14, RRX 
l689: orrVSs R1, R14, R7, ASR #21
l690: teqCC R10, R14, RRX 
l691: andLE R6, R8, R15
l692: rsbPL R6, R12, R1
l693: adds R12, R8, R0, LSR R12
l694: andNEs R2, R2, R14, LSR R14
l695: teq R5, R10, LSR R9
l696: mulVCs R1, R10, R8
l697: orr R0, R8, R3
l698: movPLs R2, R10, ROR R5
l699: eorLE R5, R4, #169984
l700: mulGTs R2, R14, R9
l701: muls R7, R11, R14
l702: teq R1, R9, LSL #25
l703: orrVS R8, R6, R12, LSL #9
l704: orrs R4, R6, #13696
l705: orrMIs R12, R9, R14
l706: muls R10, R6, R0
l707: eorGTs R12, R12, R7
l708: mulLT R12, R14, R2
l709: mulVSs R12, R14, R12
l710: bic R12, R12, #759169024
l711: eorLS R9, R2, R12
l712: tst R3, #3024
l713: mulLT R3, R4, R11
l714: andPL R4, R11, R5, ROR R2
l715: mulEQ R6, R2, R6
l716: eors R4, R0, #-1342177280
l717: mul R6, R11, R5
l718: mul R6, R7, R9
l719: mulCC R9, R12, R9
l720: cmp R2, R2, LSL R14
l721: eorLE R4, R1, R0
l722: muls R12, R4, R7
l723: andGT R10, R7, R0, LSL #31
l724: bicLT R10, R6, R12, ASR #3
l725: orr R4, R0, #1207959555
l726: eor R5, R5, #1136
l727: andLS R6, R7, R0, RRX 
l728: add R5, R0, R12, LSL R8
l729: eors R14, R3, R8
l730: andLE R10, R3, #74
l731: clz R10, R12
l732: ands R9, R10, R11
l733: teq R7, #139
l734: eorHIs R8, R5, R1
l735: mulEQ R3, R0, R9
l736: andCSs R14, R12, R12, RRX 
l737: mul R14, R12, R14
l738: ands R8, R3, R14, ASR #6
l739: orrVCs R3, R15, R9
l740: sbcs R14, R10, #512
l741: cmp R5, R14, RRX 
l742: clzNE R2, R14
l743: mulLE R1, R12, R8
l744: eorCS R0, R6, R10, ASR #30
l745: mul R4, R5, R10
l746: orrGT R10, R5, #788
l747: clzLE R9, R8
l748: cmnCS R15, R2
l749: orrGT R9, R5, R4
l750: orrs R0, R6, #192
l751: sbcGT R7, R9, R0, ASR R8
l752: eorMI R2, R9, R12
l753: and R2, R4, R9
l754: andMIs R10, R7, #-1879048191
l755: orr R4, R8, R9, ASR #6
l756: cmp R9, R10
l757: and R5, R8, R4, ROR #31
l758: mulCSs R8, R1, R5
l759: mulVSs R8, R11, R0
l760: mulLS R12, R3, R12
l761: ands R4, R9, #181
l762: teq R7, R7, LSR R8
l763: eorLEs R7, R8, #-2147483647
l764: muls R14, R8, R14
l765: and R5, R8, R6
l766: mulCCs R9, R12, R12
l767: eorLTs R2, R0, R6, RRX 
l768: rsbHIs R14, R11, #323584
l769: muls R3, R8, R0
l770: ands R10, R1, R6
l771: subVCs R9, R3, R9, LSL #21
l772: eorVSs R9, R0, #42
l773: rsbPLs R10, R3, #1409286144
l774: cmn R9, R14, LSR #23
l775: mul R9, R10, R3
l776: mul R1, R2, R9
l777: mulVSs R14, R9, R4
l778: mulCC R7, R14, R12
l779: eor R9, R14, R1, ROR #4
l780: eors R11, R6, #780
l781: cmnNE R9, R12, ROR #5
l782: subGTs R8, R3, R0, ASR R0
l783: mul R12, R2, R1
l784: mulLEs R14, R10, R8
l785: rsbNEs R8, R11, R12, ASR R11
l786: mov R2, R0, ASR #26
l787: mulPL R12, R6, R8
l788: mulLSs R10, R8, R8
l789: eorCC R12, R3, R5, LSR R4
l790: andLTs R9, R14, R9
l791: clz R9, R7
l792: and R6, R14, R5, LSR #29
l793: bicGT R2, R0, R1
l794: subPL R7, R12, R0, LSL #18
l795: mulVC R3, R7, R14
l796: mulGE R0, R8, R6
l797: mulLSs R4, R1, R0
l798: and R5, R2, R4, ROR R11
l799: eorEQs R7, R9, R3, ROR R0
l800: mul R2, R8, R12
l801: mulPLs R5, R2, R10
l802: mulGEs R3, R14, R12
l803: mov R14, R6, LSL R5
l804: clz R10, R4
l805: mulCSs R0, R14, R10
l806: mul R14, R4, R3
l807: mulVC R5, R4, R0
l808: mul R3, R8, R3
l809: eorCSs R10, R9, R15
l810: mulLE R4, R1, R1
l811: mulNE R6, R7, R5
l812: orr R4, R7, R2, ASR R9
l813: sub R12, R11, R14, ROR #18
l814: eorGTs R2, R7, #39845888
l815: muls R11, R14, R10
l816: rscs R6, R14, R7, LSL R8
l817: orrEQ R12, R11, R6, ASR #11
l818: mul R4, R6, R4
l819: andVC R5, R4, R6, ROR #20
l820: ands R10, R5, R4, ROR #10
l821: andCS R5, R10, R12
l822: muls R4, R0, R10
l823: teqLS R4, R11, LSL R8
l824: addLE R12, R12, R9
l825: teq R9, R6, LSR R2
l826: orrGE R0, R9, R2, ASR R6
l827: orrVS R8, R1, R14, RRX 
l828: mul R3, R6, R8
l829: cmp R4, R3, ROR #19
l830: mul R4, R0, R1
l831: andLE R8, R2, #741376
l832: mulHI R1, R0, R6
l833: mulCC R8, R1, R4
l834: mulEQs R6, R3, R9
l835: sub R6, R5, #181403648
l836: subGEs R6, R4, R14, RRX 
l837: muls R9, R2, R9
l838: mulGE R0, R10, R2
l839: adcGT R2, R6, #210
l840: muls R1, R6, R9
l841: ands R9, R3, R8, LSR #14
l842: sbcPL R10, R1, R7
l843: adcMI R11, R6, R5, ROR #10
l844: clz R7, R5
l845: teqGE R5, R11, ASR #31
l846: orrPLs R0, R6, R4, ROR R3
l847: cmpVC R14, R15
l848: muls R5, R8, R5
l849: movHIs R10, R5
l850: mvnMI R3, R3, LSL R9
l851: orr R9, R6, #-536870906
l852: muls R10, R5, R8
l853: mulCC R9, R11, R1
l854: clz R10, R5
l855: mulHI R7, R3, R1
l856: and R4, R4, R10
l857: and R4, R15, #16384
l858: subEQs R7, R5, #14417920
l859: mul R7, R5, R1
l860: eors R12, R0, #2097152
l861: adc R5, R9, R3, LSL R7
l862: rsb R4, R7, R9
l863: mulCS R6, R1, R2
l864: muls R2, R3, R1
l865: orrNEs R6, R15, #1024
l866: andMIs R5, R4, R15, LSR #9
l867: rsbLT R4, R2, R2
l868: mul R8, R7, R3
l869: rsbGT R3, R14, #244318208
l870: add R10, R3, R7
l871: subGE R4, R12, R11, RRX 
l872: and R6, R4, R14, ASR #13
l873: subLEs R8, R15, #3014656
l874: orr R2, R12, #4259840
l875: mulGTs R8, R10, R9
l876: muls R11, R12, R14
l877: muls R12, R5, R11
l878: adcGT R11, R14, #39168
l879: orr R12, R0, R7
l880: orrEQs R1, R4, #4080
l881: add R2, R9, #1543503873
l882: bics R2, R3, R2
l883: tstVS R11, #69632
l884: mulVC R5, R3, R1
l885: eorPL R4, R6, R0, LSR #21
l886: mulNE R10, R7, R6
l887: andGE R6, R15, #109
l888: cmpCC R1, R9
l889: ands R1, R9, R14, ASR #22
l890: teq R8, R0, ASR #5
l891: eors R10, R12, R11
l892: subLT R10, R0, #-1073741772
l893: eorPL R8, R0, R6
l894: ands R1, R11, R4, ASR R10
l895: mulHIs R5, R4, R0
l896: and R0, R4, R2, ROR #26
l897: orrVS R7, R6, #239075328
l898: orrs R9, R11, #-2147483629
l899: addHIs R7, R5, R0, RRX 
l900: eorMI R9, R8, R5, LSR R11
l901: and R6, R4, #3248
l902: mulMI R4, R6, R12
l903: mulGEs R6, R9, R4
l904: orrs R0, R12, R5
l905: cmnNE R0, R6, ROR R7
l906: mulGE R7, R8, R3
l907: addLTs R14, R2, R2, LSR R1
l908: andMIs R9, R9, #-973078528
l909: mul R14, R12, R14
l910: ands R8, R1, R3, LSL #28
l911: mulVCs R4, R14, R14
l912: ands R0, R15, #89
l913: mul R6, R4, R8
l914: bics R3, R9, #152043520
l915: orr R0, R14, #117760
l916: mulGT R0, R3, R8
l917: mul R10, R12, R7
l918: orrCS R11, R4, R11
l919: cmpLT R1, R15
l920: subs R3, R3, #2080768
l921: teqLE R15, #166912
l922: adcVS R2, R12, R1
l923: mvn R14, R11
l924: subVS R9, R2, R5
l925: muls R10, R12, R10
l926: teqEQ R2, R12, RRX 
l927: mulLEs R9, R0, R2
l928: ands R1, R4, R0, ASR R3
l929: adcs R3, R2, R9, ROR R6
l930: muls R12, R0, R2
l931: and R7, R14, R0
l932: mul R5, R2, R6
l933: mulLS R7, R0, R10
l934: eorHI R2, R11, R1
l935: tst R8, R11, RRX 
l936: bicHI R5, R4, #132
l937: bics R12, R10, R6
l938: movs R7, R0
l939: bic R11, R9, R4, ROR #24
l940: sbcs R4, R3, R3
l941: mulLTs R2, R10, R0
l942: mul R10, R14, R11
l943: mulGTs R12, R10, R7
l944: mul R4, R5, R0
l945: and R1, R0, R3, ROR #17
l946: clz R3, R8
l947: subLE R0, R9, R6, LSL #10
l948: mulGTs R7, R10, R0
l949: mul R11, R8, R0
l950: clzHI R0, R11
l951: orr R2, R1, #11776
l952: andCC R2, R1, #327155712
l953: muls R7, R4, R4
l954: muls R0, R12, R9
l955: mvnPL R5, #19922944
l956: muls R2, R11, R7
l957: add R7, R7, R2
l958: mulGTs R12, R10, R5
l959: orrHIs R7, R12, R4, LSR R14
l960: andMIs R0, R7, #528
l961: tst R12, R14, ROR R8
l962: sub R3, R2, R14, RRX 
l963: mvn R0, #45088768
l964: mulLE R10, R4, R10
l965: muls R12, R0, R0
l966: mul R11, R10, R1
l967: subs R10, R1, #-1073741775
l968: orrs R4, R14, R6
l969: bicEQ R1, R15, #3072
l970: rsbEQ R7, R3, R9
l971: eor R11, R1, R7, LSL #0
l972: addMIs R5, R10, R11
l973: orrs R4, R11, #30
l974: andEQs R12, R5, R12, ROR R7
l975: bicMIs R1, R12, R14, LSL #7
l976: sbcCSs R1, R8, #42205184
l977: subLTs R7, R5, R0
l978: andNEs R4, R1, R1, LSR #11
l979: sub R2, R10, R8, ASR R4
l980: ands R14, R6, #3520
l981: and R10, R10, R7, LSL R14
l982: and R6, R1, #1610612743
l983: cmp R15, #576
l984: eorLS R12, R10, R7, LSR R14
l985: orr R7, R4, #14352384
l986: cmn R12, #133169152
l987: orrLS R7, R0, #-2147483618
l988: eorPLs R8, R1, #2310144
l989: eorMI R1, R12, #1140850688
l990: orrCS R1, R12, #187
l991: mulLS R5, R9, R2
l992: mulLT R11, R6, R1
l993: adc R8, R4, R5
l994: addMIs R6, R1, R0
l995: muls R1, R0, R0
l996: cmn R0, #2496
l997: sub R11, R14, R4
l998: orrs R6, R12, #-1023410176
l999: ands R5, R9, R0, ASR R5
l1000: andNE R0, R14, #5760
l1001: rsbs R14, R8, R8
l1002: muls R9, R8, R3
l1003: and R1, R9, R11, ASR R5
l1004: muls R0, R14, R7
l1005: orr R8, R5, R10, ASR R5
l1006: mulGEs R9, R7, R12
l1007: movVCs R3, R14
l1008: andCCs R6, R5, R11, ROR #5
l1009: mul R2, R12, R12
l1010: sub R14, R3, R0
l1011: mulVCs R2, R1, R6
l1012: eors R12, R8, R10, RRX 
l1013: mul R11, R8, R11
l1014: ands R7, R9, R2, ROR R10
l1015: orrMI R7, R3, R5, RRX 
l1016: bics R8, R14, R6, LSR R10
l1017: bicCS R9, R3, R0, ROR R9
l1018: mulHI R4, R2, R6
l1019: mulCC R3, R1, R2
l1020: mulPL R14, R4, R1
l1021: eorGE R11, R3, R5, LSR R6
l1022: orrs R2, R2, R11, LSR #7
l1023: eorPL R9, R4, R1, LSR R0
l1024: mul R7, R2, R8
l1025: mvnHIs R9, R1, ASR #28
l1026: cmn R7, R1, LSR R8
l1027: mulEQs R7, R2, R3
l1028: muls R6, R3, R1
l1029: mulPL R2, R8, R12
l1030: andHIs R5, R4, #59
l1031: subs R5, R8, R12, ROR R0
l1032: muls R5, R6, R11
l1033: ands R10, R3, R9, LSL R2
l1034: muls R1, R0, R3
l1035: eor R14, R14, R9, RRX 
l1036: rscPL R12, R8, R7
l1037: mulPL R14, R0, R4
l1038: andNEs R5, R0, #1056
l1039: rsbs R3, R15, #104857600
l1040: mulLTs R11, R3, R6
l1041: clz R6, R5
l1042: mulCC R3, R2, R2
l1043: mulGE R11, R14, R3
l1044: muls R5, R4, R5
l1045: orrs R2, R2, R15, LSL #16
l1046: clzGE R6, R7
l1047: mul R4, R8, R6
l1048: andCS R11, R14, R9, ROR R11
l1049: mulPLs R3, R0, R10
l1050: eorGT R5, R10, #98
l1051: muls R10, R12, R5
l1052: subNEs R2, R9, R1, ROR R3
l1053: cmnGT R2, R1, LSR R6
l1054: mulHIs R10, R0, R7
l1055: subLS R14, R1, R0, ASR R2
l1056: rscEQs R11, R9, #34603008
l1057: mulEQ R1, R9, R7
l1058: andLE R7, R12, R15, LSR #30
l1059: ands R8, R11, R9
l1060: orrLSs R8, R12, R6, ROR R4
l1061: mvn R12, R4, LSR R11
l1062: mul R7, R1, R8
l1063: eorVC R3, R14, R0
l1064: teq R6, R2, ROR #27
l1065: andLE R1, R10, #3584
l1066: eor R1, R1, R12, LSL R5
l1067: and R6, R0, R1, ROR #28
l1068: mulLS R11, R10, R1
l1069: rscCSs R7, R0, #-1073741822
l1070: muls R2, R1, R0
l1071: sub R7, R3, R10
l1072: mulGT R4, R7, R11
l1073: orr R6, R0, R0
l1074: rscLSs R10, R12, R3, RRX 
l1075: rsbPL R14, R6, #98304
l1076: subPLs R5, R3, R10, ASR #2
l1077: mul R8, R14, R8
l1078: cmp R14, #201728
l1079: mul R12, R14, R6
l1080: adcEQ R5, R6, R10
l1081: orrCC R9, R14, R7, RRX 
l1082: mulHI R5, R1, R9
l1083: addNE R6, R12, R7, LSR #17
l1084: eor R12, R8, #48234496
l1085: mulVS R7, R4, R9
l1086: ands R3, R3, R14, ASR R1
l1087: eorCS R12, R15, #30932992
l1088: muls R14, R4, R10
l1089: muls R3, R11, R9
l1090: mulCCs R0, R5, R5
l1091: cmn R10, R10, RRX 
l1092: cmnPL R9, R1
l1093: adds R14, R0, R9
l1094: mulVS R4, R5, R14
l1095: cmp R9, R15, LSL #10
l1096: cmn R9, R6, ASR #13
l1097: andLEs R1, R8, R0, ROR R0
l1098: sbcMI R10, R10, R2, LSL R0
l1099: eors R7, R4, R1
l1100: orrNEs R0, R2, #393216
l1101: and R6, R11, R11
l1102: muls R12, R1, R0
l1103: mulLTs R3, R0, R14
l1104: mvn R11, #684032
l1105: mvnLTs R7, R0, RRX 
l1106: tst R7, R0, RRX 
l1107: eor R2, R6, #475136
l1108: subMI R11, R0, R6, LSL R11
l1109: ands R14, R12, R8, ROR #2
l1110: andCSs R3, R11, R14
l1111: rsbGT R3, R9, R0, ASR #15
l1112: mulVSs R8, R3, R4
l1113: mulPL R9, R7, R1
l1114: mulCSs R7, R10, R6
l1115: mulCS R12, R6, R1
l1116: rscLEs R7, R3, R8, LSL #16
l1117: muls R14, R6, R5
l1118: movs R9, R12, ROR R3
l1119: eorVSs R6, R2, R4
l1120: mulVC R9, R12, R6
l1121: rsbLSs R2, R1, R14, LSL R5
l1122: rsc R3, R11, R6
l1123: mul R14, R5, R9
l1124: orrPL R9, R15, R4, RRX 
l1125: teq R5, R12, ROR R9
l1126: andNE R5, R11, R11, LSL R9
l1127: clz R11, R12
l1128: tstGT R6, R3, RRX 
l1129: teqLT R6, #1677721600
l1130: sbcVCs R9, R14, R2, LSR R0
l1131: cmnCC R2, #53477376
l1132: teq R3, #16121856
l1133: and R6, R5, R14, RRX 
l1134: and R6, R14, R7
l1135: mulHIs R14, R0, R5
l1136: addEQs R5, R15, R10, RRX 
l1137: mul R12, R8, R6
l1138: eorPL R2, R10, #2506752
l1139: orrVC R9, R8, R3, ASR #11
l1140: ands R8, R14, R5, ROR R10
l1141: mul R8, R4, R3
l1142: orrNE R14, R14, R9
l1143: mulCCs R10, R4, R0
l1144: rsc R11, R0, R12
l1145: eors R1, R2, R14, LSL R4
l1146: cmnLT R0, R14, LSR R0
l1147: teq R12, R11
l1148: eorVSs R11, R2, R12, ASR #4
l1149: orrs R14, R10, #147849216
l1150: orr R0, R8, R10
l1151: rsbs R3, R14, R9, LSR #23
l1152: andLEs R8, R3, R11, ASR #8
l1153: orr R9, R7, R8
l1154: muls R14, R8, R0
l1155: muls R5, R1, R12
l1156: ands R14, R9, R8, ROR #7
l1157: eor R8, R1, R6, LSR R7
l1158: mulLEs R8, R0, R10
l1159: adcCCs R11, R12, R4, ROR R9
l1160: sbcs R12, R7, R0, RRX 
l1161: sbc R7, R12, R4
l1162: clz R10, R7
l1163: muls R12, R0, R8
l1164: muls R8, R14, R1
l1165: adds R9, R4, R9
l1166: mul R0, R6, R1
l1167: bicLE R14, R4, R12
l1168: adds R0, R11, R14, RRX 
l1169: and R6, R15, #1342177281
l1170: ands R9, R9, R6, ROR #28
l1171: orrGT R10, R6, R8, ASR R1
l1172: eors R1, R2, R9, ROR R10
l1173: ands R6, R0, R9
l1174: mulLS R10, R11, R14
l1175: andVC R8, R12, #-1073741798
l1176: subs R11, R7, R15
l1177: mulGEs R12, R5, R14
l1178: orrs R2, R10, R15, ASR #23
l1179: cmn R2, R14
l1180: muls R4, R7, R5
l1181: mvnMIs R8, #31
l1182: mulEQ R0, R4, R0
l1183: mulMIs R10, R14, R7
l1184: mulCSs R2, R3, R3
l1185: mul R4, R8, R9
l1186: addVCs R0, R0, #-956301312
l1187: ands R2, R10, R2, LSR R5
l1188: mulEQ R10, R2, R2
l1189: orrCCs R5, R7, R14, LSL R10
l1190: mulGTs R2, R8, R1
l1191: teq R9, R6, LSR #22
l1192: rsc R8, R15, #-1073741812
l1193: orrGT R3, R14, R2, LSL R6
l1194: mul R6, R14, R9
l1195: movMIs R6, R8, ROR R10
l1196: mul R12, R11, R12
l1197: mulVC R5, R6, R11
l1198: muls R10, R12, R1
l1199: rsbVSs R12, R9, R9, ASR R5
l1200: ands R9, R10, #1408
l1201: eor R1, R0, #3200
l1202: mulVCs R8, R0, R8
l1203: orrCS R1, R5, R12
l1204: teqVC R12, #468
l1205: adcNEs R7, R4, #146432
l1206: ands R12, R6, R6, ASR R8
l1207: muls R2, R5, R7
l1208: bic R9, R10, #4390912
l1209: mulLT R10, R12, R5
l1210: bics R12, R7, R14, ROR R2
l1211: orrEQ R2, R2, R3, RRX 
l1212: mulGE R6, R9, R0
l1213: mulVS R1, R5, R11
l1214: andLT R6, R1, R12, ROR R4
l1215: muls R0, R10, R9
l1216: mulCS R1, R10, R0
l1217: adcEQ R14, R14, #1073741847
l1218: ands R2, R9, R4, ROR #6
l1219: mulCC R8, R0, R0
l1220: mulLE R14, R4, R5
l1221: eor R1, R2, R9
l1222: mulLEs R9, R6, R6
l1223: teq R2, R10, ASR R12
l1224: rsbMIs R11, R11, R1
l1225: mulLTs R11, R4, R10
l1226: muls R1, R11, R7
l1227: rsbNEs R0, R10, R12, ROR #5
l1228: teqPL R9, R5, LSR R9
l1229: muls R8, R1, R7
l1230: eors R3, R3, #-2080374781
l1231: movLT R12, #57088
l1232: muls R7, R5, R6
l1233: eorLEs R10, R5, R14
l1234: muls R0, R5, R4
l1235: mulLTs R0, R9, R6
l1236: mul R0, R6, R14
l1237: mul R0, R4, R14
l1238: orrGEs R6, R7, #671744
l1239: mulGTs R5, R6, R3
l1240: muls R1, R2, R3
l1241: mulNEs R11, R12, R2
l1242: mul R12, R0, R9
l1243: clzPL R12, R1
l1244: rsc R3, R4, R5, RRX 
l1245: mulLS R1, R2, R14
l1246: mulVSs R7, R6, R8
l1247: orr R4, R10, R6, LSL R14
l1248: mul R10, R0, R14
l1249: muls R11, R3, R2
l1250: addLS R9, R2, R11, ASR #18
l1251: ands R10, R11, R0, LSR R5
l1252: teqHI R12, R2, ASR R3
l1253: orrs R1, R10, #2240
l1254: cmn R3, R4
l1255: tstCS R8, R7
l1256: eorNEs R14, R14, R3, LSL #22
l1257: subs R6, R12, R2
l1258: mul R9, R11, R11
l1259: clzNE R14, R14
l1260: bics R8, R10, R5, ROR R7
l1261: teqLE R12, #33280
l1262: eors R9, R7, R3
l1263: ands R4, R8, R6
l1264: mulEQs R8, R0, R3
l1265: mul R3, R4, R5
l1266: andMI R12, R4, R3, ROR #9
l1267: rsbs R0, R8, R14, ROR R3
l1268: mulGTs R6, R9, R5
l1269: rscVC R2, R8, R8, ROR #20
l1270: orrVCs R3, R9, R10
l1271: mul R4, R9, R4
l1272: cmnGT R8, R14
l1273: mulVCs R10, R0, R11
l1274: muls R4, R2, R4
l1275: mulLS R1, R10, R14
l1276: eorLEs R8, R9, R2, ROR R12
l1277: rsbCC R10, R6, R7, ROR #14
l1278: mulEQ R11, R6, R10
l1279: mulLT R7, R3, R14
l1280: mulNE R12, R8, R11
l1281: clzVC R1, R12
l1282: mulEQ R2, R3, R14
l1283: tstNE R14, R12, LSL R6
l1284: andEQs R6, R12, #248
l1285: mulCC R2, R0, R8
l1286: eor R6, R8, R6, LSL R0
l1287: eors R5, R8, R14
l1288: mov R1, R4, LSL R2
l1289: eors R3, R9, R2
l1290: mulPLs R14, R0, R6
l1291: orrLS R10, R4, R6, LSR #1
l1292: cmp R9, #1556480
l1293: subNEs R11, R11, R11, ROR #12
l1294: tstLE R2, R7
l1295: mulGEs R0, R9, R5
l1296: orrMI R14, R14, R9
l1297: andNE R5, R4, R2, RRX 
l1298: eorGE R6, R10, R11, ROR R7
l1299: orrHIs R8, R12, R11, LSR #14
l1300: bicGT R8, R2, R10, RRX 
l1301: andMI R0, R8, R4
l1302: eorGT R10, R4, R6, ASR R1
l1303: ands R14, R14, R10
l1304: mulMI R3, R6, R0
l1305: sbc R0, R5, R11, LSL #5
l1306: muls R5, R2, R11
l1307: mulLTs R14, R9, R11
l1308: adcPLs R2, R0, R1, LSL R9
l1309: eorMIs R11, R6, R7, ASR #17
l1310: mulLEs R0, R11, R1
l1311: mul R10, R4, R1
l1312: movs R7, R11, ROR R14
l1313: tst R8, #163
l1314: rscNEs R6, R9, R14, ASR #0
l1315: tst R4, R14, ROR R0
l1316: eors R6, R8, #1032192
l1317: cmp R2, R2
l1318: eorLEs R4, R15, R9
l1319: and R9, R2, #2211840
l1320: movVS R14, #3276800
l1321: adc R9, R2, R14, RRX 
l1322: and R1, R14, R1, LSL R5
l1323: cmpLT R3, R7, ASR #3
l1324: rsc R4, R4, R3
l1325: add R2, R7, #140509184
l1326: tstLT R15, R14
l1327: muls R5, R1, R9
l1328: subHIs R0, R2, R14
l1329: mulLE R4, R11, R1
l1330: mulCC R6, R12, R14
l1331: tstCS R14, R6, LSL R7
l1332: mulVSs R14, R3, R6
l1333: andGTs R11, R9, R1, LSL R5
l1334: eorNEs R2, R12, R8, LSR #31
l1335: adcs R4, R8, R9, ROR R1
l1336: and R3, R7, R5
l1337: mul R10, R9, R3
l1338: orrVS R10, R6, #174
l1339: adcPL R14, R9, #-1342177280
l1340: subCS R5, R10, #4608
l1341: mul R5, R8, R7
l1342: andVS R5, R6, R14
l1343: eors R5, R2, R12
l1344: andGTs R2, R5, #5824
l1345: teqPL R7, #165675008
l1346: muls R2, R9, R3
l1347: addVCs R6, R11, #87
l1348: mulGTs R1, R9, R9
l1349: sbcPLs R12, R2, R15
l1350: eorVSs R2, R10, R7
l1351: mulVS R6, R7, R2
l1352: eor R4, R5, R5
l1353: eor R1, R8, #1409286147
l1354: ands R4, R2, R3, ROR R9
l1355: mulEQ R9, R10, R12
l1356: rsc R14, R11, R7, LSL R4
l1357: tstHI R6, R12, LSL R12
l1358: mulVCs R11, R1, R0
l1359: ands R12, R12, #828
l1360: eorVS R5, R14, R5, RRX 
l1361: teq R6, #-134217725
l1362: subLEs R8, R0, R10, LSR #24
l1363: mul R12, R7, R6
l1364: rsbNEs R5, R11, #1069547520
l1365: clz R0, R4
l1366: andHIs R14, R2, #327680
l1367: eors R12, R15, R15, ASR #16
l1368: mulNEs R8, R11, R3
l1369: ands R2, R4, R8
l1370: mul R14, R6, R2
l1371: eors R9, R5, R6, ASR R3
l1372: muls R12, R3, R9
l1373: orrGEs R7, R1, R8, LSL R11
l1374: eor R6, R5, R5
l1375: rsbLSs R12, R3, #-335544320
l1376: subs R7, R11, #131
l1377: mulHIs R2, R4, R3
l1378: andCCs R14, R1, R4, LSL #30
l1379: muls R11, R10, R14
l1380: subEQs R3, R2, #436207616
l1381: clzVS R11, R1
l1382: mulVCs R14, R12, R12
l1383: mulGEs R12, R7, R7
l1384: subCSs R6, R11, R8
l1385: bicHI R5, R9, #75497472
l1386: mul R12, R8, R1
l1387: cmpCC R4, R4
l1388: addCCs R14, R0, R10, LSR R5
l1389: andEQ R3, R12, R4, ASR R9
l1390: orr R14, R6, R10, LSR R5
l1391: sub R1, R6, R0, RRX 
l1392: bic R0, R3, R2, LSR R0
l1393: and R7, R5, R11
l1394: movGEs R2, R0, LSL R11
l1395: tstHI R12, R1, LSL R5
l1396: cmn R2, R2, LSR #25
l1397: mulVS R8, R3, R12
l1398: muls R7, R0, R4
l1399: mulNEs R9, R5, R1
l1400: eors R3, R3, R6, LSL R7
l1401: mul R0, R3, R3
l1402: andCCs R14, R6, R2, ASR R1
l1403: and R4, R9, #10560
l1404: mulEQs R2, R10, R1
l1405: eors R3, R9, R11, RRX 
l1406: muls R11, R4, R10
l1407: andGT R14, R8, R0
l1408: mulGEs R11, R10, R12
l1409: eorLS R14, R11, R2, ASR R5
l1410: subLSs R3, R11, R10, LSR #7
l1411: orrCSs R12, R8, R0, LSR #3
l1412: mulVS R3, R9, R1
l1413: mulVS R2, R6, R2
l1414: andLEs R10, R6, #137216
l1415: andGTs R6, R12, R15
l1416: mulVS R14, R8, R9
l1417: muls R14, R11, R8
l1418: teq R9, R1
l1419: orrCSs R9, R15, R3
l1420: andGT R9, R9, R12, ROR R3
l1421: eorCC R14, R12, R15
l1422: eorVS R4, R0, R4
l1423: adcNE R11, R10, #15335424
l1424: mul R3, R0, R0
l1425: mul R5, R12, R1
l1426: orrs R12, R0, R6, ASR R1
l1427: eorGTs R1, R5, #3260416
l1428: teqNE R14, R1, LSL #1
l1429: adds R8, R0, R12
l1430: mvnPLs R6, R7, RRX 
l1431: eor R7, R10, R12, LSR #16
l1432: mulHIs R7, R0, R11
l1433: muls R8, R0, R7
l1434: eor R4, R6, R15
l1435: mulCCs R6, R12, R14
l1436: adcGEs R7, R1, #2880
l1437: mulCS R1, R10, R14
l1438: andLTs R1, R4, R4, LSR R1
l1439: eor R11, R7, R5, ASR R3
l1440: mulLTs R10, R8, R8
l1441: subs R12, R5, R6
l1442: rsbMI R4, R15, R11
l1443: andMIs R1, R11, R2, RRX 
l1444: mulLSs R6, R4, R8
l1445: andGT R14, R2, R4, ROR R0
l1446: orrLEs R11, R7, #248832
l1447: teq R14, #-1006632960
l1448: muls R0, R11, R5
l1449: mulMI R0, R12, R8
l1450: mulLEs R8, R3, R10
l1451: teqGT R5, R4
l1452: clzLT R1, R3
l1453: teq R5, R8, ROR R6
l1454: mulLS R14, R3, R1
l1455: mul R10, R5, R8
l1456: eorCCs R12, R10, #464
l1457: orrs R5, R10, R5
l1458: addCC R11, R11, #248
l1459: eors R5, R5, #5
l1460: rscLEs R4, R5, R14
l1461: cmpHI R12, #217055232
l1462: clzMI R4, R4
l1463: mulPL R10, R0, R7
l1464: sbc R9, R10, R4
l1465: mulNEs R3, R5, R3
l1466: mul R7, R2, R7
l1467: tstPL R4, #540
l1468: rsc R5, R0, #13312
l1469: clzEQ R7, R14
l1470: eor R7, R0, R3, LSR #9
l1471: mul R4, R9, R0
l1472: sbcs R5, R6, R14, ASR R7
l1473: eorPL R7, R0, #-1342177266
l1474: orrs R6, R15, R15, ROR #20
l1475: andLT R12, R3, R4, ROR #24
l1476: muls R6, R1, R8
l1477: ands R1, R14, R4, ROR R4
l1478: cmnPL R15, R2
l1479: muls R10, R5, R8
l1480: mulCSs R12, R6, R7
l1481: mulEQs R11, R5, R1
l1482: mulCSs R3, R10, R12
l1483: eorLEs R4, R5, #-1358954496
l1484: mulMIs R0, R7, R0
l1485: mulCC R14, R5, R5
l1486: add R4, R8, R0, LSR R10
l1487: eor R5, R8, #27648
l1488: andMIs R1, R3, #57344
l1489: orrVSs R7, R4, R9, ASR R5
l1490: teqPL R3, #34603008
l1491: orrHI R6, R6, R2
l1492: eorNE R9, R15, R4
l1493: orr R3, R0, R11, ROR R3
l1494: movMIs R2, R3, ROR R9
l1495: subLS R9, R1, #268435458
l1496: orrEQs R0, R3, #2752512
l1497: sbcNE R2, R12, R5, LSR R11
l1498: teq R2, R3, LSR R6
l1499: sub R4, R15, #1936
l1500: ands R4, R5, R4, ASR #14
l1501: mul R6, R1, R7
l1502: mulPLs R0, R6, R9
l1503: subLEs R6, R11, R9, ROR #8
l1504: subVCs R3, R14, R4
l1505: muls R6, R0, R12
l1506: orrVC R2, R12, R4, RRX 
l1507: eor R14, R9, R5, ASR R12
l1508: ands R3, R10, R5, LSR #3
l1509: muls R1, R4, R5
l1510: mul R12, R1, R14
l1511: mulLS R2, R11, R11
l1512: bics R7, R10, R11, ROR R5
l1513: mvns R12, R4, LSL R10
l1514: ands R5, R7, #805306381
l1515: mulPL R8, R9, R2
l1516: mul R9, R0, R6
l1517: teqVC R10, R8, ASR R0
l1518: mul R6, R11, R3
l1519: mvnEQ R8, #240640
l1520: andCC R11, R6, R1, RRX 
l1521: mulLT R0, R9, R8
l1522: mulHIs R9, R5, R3
l1523: muls R12, R5, R2
l1524: muls R0, R14, R2
l1525: mulHIs R4, R6, R6
l1526: mul R2, R7, R4
l1527: bicVSs R12, R8, R2
l1528: sbcNE R7, R1, R10, ASR #4
l1529: muls R12, R10, R1
l1530: eorPLs R10, R11, #748
l1531: mul R9, R1, R2
l1532: mvns R12, R7, LSL #16
l1533: orrHI R14, R10, R2
l1534: muls R8, R4, R14
l1535: mulHIs R0, R14, R9
l1536: tstGE R10, R11
l1537: mulLE R6, R9, R9
l1538: orrLSs R3, R12, R2, ROR R11
l1539: orrs R14, R2, R12
l1540: movs R4, #2816
l1541: eorGEs R0, R4, R14, ASR R3
l1542: add R12, R0, R10
l1543: tst R9, #796
l1544: rscs R10, R9, R3, RRX 
l1545: eorLEs R14, R0, R0, ROR R5
l1546: bicHI R4, R8, R5, RRX 
l1547: mul R11, R5, R11
l1548: mulCC R0, R5, R11
l1549: mul R9, R6, R6
l1550: eorCC R6, R5, R3, LSR #0
l1551: rsbLEs R11, R5, R14, LSL R10
l1552: muls R0, R5, R10
l1553: orrCC R5, R9, R15
l1554: bics R11, R9, R6, ASR R5
l1555: andGTs R2, R12, #-2147483628
l1556: and R6, R10, R4
l1557: subMIs R2, R9, R15, ROR #11
l1558: subCC R6, R5, R3
l1559: muls R2, R9, R9
l1560: rscs R1, R1, R11
l1561: mulEQ R4, R10, R0
l1562: mulVC R6, R3, R14
l1563: mul R14, R12, R1
l1564: adcPLs R3, R8, R4, LSL #13
l1565: subHIs R7, R1, R7
l1566: muls R3, R5, R7
l1567: muls R5, R6, R7
l1568: andEQ R8, R3, #1073741831
l1569: eorGT R8, R1, R14
l1570: tstGT R9, R7, ROR R0
l1571: teq R3, R5, ROR #8
l1572: orr R0, R0, R15
l1573: orr R5, R5, #1006632961
l1574: bics R11, R12, R6, LSL #29
l1575: mul R7, R6, R0
l1576: mul R9, R14, R2
l1577: adcs R8, R6, R1, LSR R8
l1578: movPLs R9, R2, ROR #16
l1579: mul R1, R5, R12
l1580: eors R8, R9, R9, LSR R4
l1581: adcVS R5, R0, #591396864
l1582: orrCSs R12, R4, #1610612738
l1583: mulLS R10, R1, R2
l1584: orrGT R10, R6, #905969664
l1585: orrHIs R1, R14, R3, ASR #7
l1586: movs R3, R11, LSR #4
l1587: eors R11, R12, R9
l1588: orrCCs R6, R10, R3, ASR R9
l1589: orrs R2, R3, #1228800
l1590: mul R12, R8, R5
l1591: teq R6, R1
l1592: sub R7, R6, R8
l1593: mulGEs R8, R1, R4
l1594: eor R2, R5, R12
l1595: tstEQ R3, #-1073741802
l1596: orrs R4, R7, R14
l1597: mulMI R4, R11, R4
l1598: muls R0, R6, R4
l1599: eors R1, R14, R5, ROR R14
l1600: clzCC R7, R5
l1601: orrEQ R11, R6, R1
l1602: mulGE R10, R1, R1
l1603: mulEQ R1, R0, R14
l1604: orrVCs R4, R6, R6
l1605: andCC R9, R3, R8, ASR R1
l1606: mul R1, R3, R1
l1607: mulGE R6, R0, R3
l1608: mulMIs R3, R5, R6
l1609: orrEQ R5, R1, #64256
l1610: mulCS R2, R10, R5
l1611: eorVSs R2, R8, R14, RRX 
l1612: mulMI R2, R7, R6
l1613: andMIs R3, R5, R6
l1614: bicCCs R10, R4, R0, ROR #28
l1615: mul R3, R11, R10
l1616: tst R4, #742391808
l1617: mulGTs R7, R3, R14
l1618: mulLT R7, R3, R11
l1619: tstCC R2, R15
l1620: muls R10, R0, R14
l1621: mulLSs R10, R9, R8
l1622: rscHIs R3, R7, R10, LSL #23
l1623: tst R6, R10, LSR R12
l1624: tstLT R14, R0, ASR #13
l1625: eorLS R1, R7, R9, LSL #28
l1626: mul R6, R7, R0
l1627: rscLS R1, R4, R3, RRX 
l1628: cmpPL R5, R4, ROR #14
l1629: cmnLS R9, #60817408
l1630: sbcs R9, R0, R0, RRX 
l1631: orr R5, R10, #9699328
l1632: ands R14, R2, R9
l1633: mul R11, R2, R1
l1634: cmnLT R1, R4, LSL #4
l1635: sbcLTs R14, R7, R8, LSR R9
l1636: clzEQ R5, R3
l1637: mulGT R1, R9, R3
l1638: and R6, R3, R1, LSR #8
l1639: andMIs R4, R2, #-1073741763
l1640: adc R9, R9, R10, ASR R4
l1641: muls R14, R8, R9
l1642: orrVC R1, R14, #369098752
l1643: andEQs R9, R1, R5, LSR R2
l1644: mulGT R1, R11, R2
l1645: rscGE R7, R10, R3, LSL R5
l1646: rsbLTs R9, R3, #30146560
l1647: orrLE R11, R1, R5
l1648: muls R14, R1, R9
l1649: mulNEs R14, R7, R9
l1650: teqCC R4, R15, ROR #14
l1651: orrs R5, R11, R0, LSR #11
l1652: mulLEs R7, R1, R1
l1653: cmpGT R4, R15, ROR #23
l1654: ands R7, R11, R12
l1655: orrVSs R5, R6, #3856
l1656: mulPL R10, R1, R0
l1657: mulCS R11, R6, R14
l1658: mulNEs R0, R10, R11
l1659: teq R12, R10, ASR #19
l1660: movCS R0, R1
l1661: ands R14, R3, R0, LSR R8
l1662: mulEQs R4, R6, R11
l1663: mulLT R8, R0, R7
l1664: mulLTs R7, R6, R8
l1665: adds R11, R0, R4
l1666: sbcVCs R12, R0, R6, RRX 
l1667: clz R5, R6
l1668: tst R8, #1073741858
l1669: cmpLS R5, #58880
l1670: andEQs R4, R8, #-1409286144
l1671: muls R3, R4, R7
l1672: clzGE R14, R7
l1673: adcs R0, R6, #7168
l1674: andNEs R1, R1, #10878976
l1675: muls R8, R9, R11
l1676: mul R10, R0, R10
l1677: mvnLT R0, #2046820352
l1678: tstNE R0, R11
l1679: mulPLs R12, R5, R8
l1680: subLTs R12, R2, R3, ROR R9
l1681: ands R2, R12, R6, LSL R6
l1682: tst R4, R14, LSL R6
l1683: orrVCs R7, R1, R15, RRX 
l1684: ands R6, R8, R6, ASR #12
l1685: mulLS R4, R2, R8
l1686: sub R12, R4, R2, ASR #1
l1687: clzGT R3, R2
l1688: cmnGE R8, R10, ASR #15
l1689: and R6, R14, R4
l1690: mul R5, R8, R8
l1691: teq R2, R12, LSR #3
l1692: eors R5, R5, R5, LSR #23
l1693: bic R9, R8, #-2147483630
l1694: muls R2, R0, R9
l1695: orrs R14, R14, R15, ASR #11
l1696: andCC R7, R12, #-1073741796
l1697: and R6, R3, #832
l1698: mul R3, R1, R1
l1699: adcs R8, R0, R1
l1700: cmp R0, #87
l1701: andLE R11, R0, R2, RRX 
l1702: mulNE R12, R11, R2
l1703: orrEQs R2, R1, R6, RRX 
l1704: orrPL R14, R6, R12, RRX 
l1705: muls R11, R3, R2
l1706: eorGT R1, R8, #24064
l1707: ands R6, R6, R11
l1708: subs R9, R11, R0, LSR R8
l1709: orr R14, R7, R1, LSL #14
l1710: andHI R8, R9, R3, LSL #27
l1711: eorLS R5, R12, R2, LSR #10
l1712: mul R0, R12, R6
l1713: teq R2, R9, ROR R7
l1714: bicNE R5, R12, R1, ROR #28
l1715: and R2, R10, R11
l1716: cmnMI R7, #35840
l1717: orrs R11, R9, R14
l1718: mulNEs R9, R2, R2
l1719: orrs R4, R7, #847872
l1720: andNEs R8, R1, R10
l1721: mulGE R5, R7, R8
l1722: orrGTs R8, R8, #1073741865
l1723: subVC R11, R0, R12, ROR R11
l1724: orrs R4, R14, R5, LSR R11
l1725: andLS R1, R12, R11, ROR R10
l1726: cmnNE R10, R9, LSR #6
l1727: orr R8, R1, #1008
l1728: mulEQs R0, R4, R0
l1729: rscLS R11, R10, R4
l1730: mulGE R14, R2, R14
l1731: mulLTs R10, R3, R5
l1732: andNEs R4, R11, R0, LSR R2
l1733: ands R12, R7, R10, ASR #10
l1734: sub R1, R7, R14, LSL #4
l1735: muls R7, R1, R3
l1736: cmpCS R1, #-1879048191
l1737: orrCSs R5, R3, R6, ROR #9
l1738: addNE R10, R14, R4, LSL #21
l1739: mulVSs R6, R8, R11
l1740: mulCC R12, R1, R5
l1741: muls R6, R11, R1
l1742: mul R6, R4, R4
l1743: mulCS R1, R11, R1
l1744: sub R0, R14, R6, ASR R9
l1745: mulVS R4, R10, R6
l1746: muls R2, R5, R14
l1747: mulHI R4, R8, R6
l1748: eorVCs R9, R1, #161
l1749: tstGT R9, R0
l1750: tstGT R10, R0
l1751: orrs R0, R5, R2, ROR R5
l1752: eors R10, R12, R3, ASR R4
l1753: orr R6, R11, R11
l1754: orrGE R7, R7, R6
l1755: mul R3, R10, R0
l1756: muls R12, R9, R5
l1757: tst R9, R15, LSR #5
l1758: cmpLE R9, #1556480
l1759: orrs R2, R14, R0, LSL #19
l1760: and R0, R2, R2, ASR #2
l1761: orrGTs R3, R6, R0, ASR #17
l1762: orrCCs R14, R15, R3, ROR #25
l1763: mulLTs R8, R11, R3
l1764: orrs R7, R6, R0, LSL R0
l1765: orrCS R6, R6, R5, LSL #17
l1766: and R0, R12, #855638016
l1767: addLS R8, R7, R6, ROR R14
l1768: mulLE R5, R3, R6
l1769: muls R6, R7, R6
l1770: bic R9, R6, R9, ASR #21
l1771: muls R4, R14, R7
l1772: eors R9, R2, R7, LSR #23
l1773: teqNE R5, #104
l1774: muls R2, R7, R7
l1775: eorGTs R14, R3, R11, LSL R10
l1776: cmp R10, R7, ASR #4
l1777: add R14, R3, R2, LSL #6
l1778: movLE R9, R10, ASR #28
l1779: mulGE R5, R10, R0
l1780: mulHIs R4, R8, R12
l1781: cmpLT R8, R0, LSR R9
l1782: orrs R2, R15, R5, RRX 
l1783: mulLE R9, R6, R2
l1784: muls R10, R4, R4
l1785: bic R5, R14, R14, ROR R12
l1786: muls R5, R7, R11
l1787: clz R6, R2
l1788: mulGT R7, R1, R1
l1789: subCS R2, R7, R4, LSL #3
l1790: andCCs R0, R0, R15, RRX 
l1791: sbcs R4, R9, R4
l1792: orrMIs R1, R15, R10, ASR #25
l1793: mulGT R1, R6, R7
l1794: addMIs R12, R15, #23
l1795: mulVS R4, R14, R10
l1796: mulEQ R7, R0, R1
l1797: mul R0, R2, R5
l1798: cmn R12, R1, ROR #18
l1799: eorNEs R1, R4, R4
l1800: and R3, R3, R10
l1801: mulLE R7, R10, R9
l1802: eors R0, R4, R4
l1803: rsc R0, R11, R2, ASR R9
l1804: subCCs R9, R11, R12
l1805: mul R12, R6, R4
l1806: andGTs R14, R12, R7, ASR #20
l1807: rsb R3, R6, R7
l1808: mulVSs R14, R11, R8
l1809: mulGE R2, R1, R10
l1810: mulLEs R4, R10, R9
l1811: mul R4, R2, R5
l1812: muls R8, R6, R10
l1813: subs R6, R11, #11337728
l1814: mulPL R1, R5, R10
l1815: eorLSs R11, R5, R8, ASR #28
l1816: eors R7, R4, R1, LSL #17
l1817: mulPLs R1, R10, R10
l1818: mulLS R14, R2, R14
l1819: mulLSs R4, R11, R10
l1820: mulLSs R9, R0, R10
l1821: bics R4, R3, R12, RRX 
l1822: eorCCs R7, R15, R6
l1823: mulPLs R11, R4, R7
l1824: mulGT R6, R3, R14
l1825: adds R6, R9, R11, RRX 
l1826: sbc R6, R11, R1
l1827: andMI R3, R9, R7, LSL #13
l1828: mulVCs R14, R11, R14
l1829: movMIs R5, R0, RRX 
l1830: subLE R12, R10, R2, LSR #14
l1831: muls R12, R9, R3
l1832: orrs R12, R14, #113664
l1833: orrEQ R6, R0, #268435470
l1834: mulLE R2, R14, R9
l1835: subMIs R3, R6, R8
l1836: orrNEs R11, R9, #-2147483610
l1837: eorHIs R8, R4, #31
l1838: eorVC R14, R2, #11862016
l1839: mulPL R2, R0, R3
l1840: mulVC R8, R12, R14
l1841: eors R14, R9, R10, ROR R8
l1842: subMIs R14, R0, R4, LSR #14
l1843: cmpNE R4, R10, LSR R2
l1844: eorGE R2, R6, R10, LSL R8
l1845: mulVSs R1, R3, R0
l1846: bics R11, R11, R8
l1847: addGT R8, R5, R9, LSR R6
l1848: and R4, R3, #2096
l1849: addLSs R9, R2, R8, ASR R2
l1850: eors R9, R3, #10878976
l1851: mul R12, R5, R0
l1852: eorMIs R14, R12, R11
l1853: andEQs R3, R2, R0
l1854: mul R4, R7, R6
l1855: mulMI R7, R14, R3
l1856: muls R4, R2, R1
l1857: mulVCs R1, R0, R4
l1858: mulVC R12, R3, R14
l1859: sbcs R11, R5, R12, RRX 
l1860: adds R2, R8, R14, ROR #30
l1861: mulLSs R9, R3, R11
l1862: mulVCs R1, R9, R11
l1863: mulEQs R14, R9, R2
l1864: muls R10, R3, R0
l1865: mul R9, R4, R11
l1866: movLS R14, #263192576
l1867: andLT R0, R6, R8, ASR #29
l1868: mul R5, R1, R12
l1869: subPL R2, R2, R6
l1870: ands R1, R4, R5
l1871: eorVS R6, R6, #856
l1872: mulLSs R11, R1, R8
l1873: adc R1, R1, R3, LSR R4
l1874: cmpPL R5, R9
l1875: mulVC R5, R12, R2
l1876: orr R0, R9, R0, LSL R3
l1877: eors R2, R7, R10
l1878: mulVC R14, R9, R3
l1879: andNEs R1, R1, R14, ASR R14
l1880: movs R3, R4, ROR #2
l1881: andEQ R9, R3, R4
l1882: eorMIs R10, R9, #404
l1883: bicLEs R5, R12, R14, ASR R5
l1884: eor R10, R1, #14680064
l1885: mul R2, R10, R6
l1886: mulNEs R3, R8, R10
l1887: muls R10, R4, R11
l1888: mulEQ R11, R10, R11
l1889: orrCS R2, R0, R14, ASR #23
l1890: orrLSs R7, R15, R15, LSR #0
l1891: addCSs R2, R12, R10
l1892: mul R12, R7, R7
l1893: orrMIs R14, R3, R4, LSL R1
l1894: mvnEQ R7, R7, ROR #22
l1895: mulMIs R10, R8, R11
l1896: orr R11, R11, R4, ROR #28
l1897: mulNEs R4, R8, R5
l1898: ands R7, R6, R0
l1899: subCS R5, R11, R12, RRX 
l1900: andNE R5, R5, R4, ASR R1
l1901: mulNEs R3, R8, R4
l1902: orrMI R9, R7, #-1879048178
l1903: rscMIs R10, R11, R1, RRX 
l1904: adcCCs R10, R5, R2, LSL R1
l1905: orrLSs R6, R6, R4, LSL #12
l1906: orrGT R7, R4, #190840832
l1907: adcGTs R7, R0, R12
l1908: mul R1, R8, R2
l1909: mulVSs R5, R0, R14
l1910: muls R1, R5, R5
l1911: tstMI R6, #40632320
l1912: mulVSs R12, R3, R0
l1913: mul R5, R2, R9
l1914: orrs R8, R0, R9
l1915: clzHI R11, R7
l1916: rscPLs R3, R2, R10, LSR #13
l1917: adcPLs R12, R9, R14
l1918: rsbNE R7, R7, R0, ROR #21
l1919: cmnEQ R10, R9, RRX 
l1920: mulCS R3, R7, R0
l1921: subPL R10, R11, R5, RRX 
l1922: cmp R0, #106954752
l1923: mvnMIs R7, R6, RRX 
l1924: mvnGT R0, #33
l1925: mulCCs R12, R1, R3
l1926: eorGEs R5, R14, R0, LSL #6
l1927: mul R0, R6, R4
l1928: cmp R15, R11
l1929: bicCSs R1, R3, R12, LSL #18
l1930: eorCC R0, R12, #-134217725
l1931: eorLEs R12, R4, R10, LSL R2
l1932: mulCSs R0, R11, R3
l1933: cmn R11, #736
l1934: eorHIs R6, R1, R12, ASR #20
l1935: ands R11, R12, #29
l1936: andLS R4, R8, #225280
l1937: mul R1, R14, R0
l1938: mulHIs R4, R9, R9
l1939: mulEQ R14, R6, R0
l1940: ands R6, R5, R15, ASR #2
l1941: eorCC R2, R10, R0
l1942: andEQ R8, R6, #3964928
l1943: mulCCs R1, R8, R8
l1944: mul R7, R3, R0
l1945: add R1, R4, R11, LSL #3
l1946: mulPLs R10, R2, R9
l1947: eorLEs R14, R12, R2, ROR #9
l1948: ands R11, R15, #920
l1949: rsb R10, R6, #176160768
l1950: subEQs R3, R3, R0
l1951: rscGT R11, R12, R5, ROR R1
l1952: mulLE R10, R11, R8
l1953: mulHI R0, R10, R1
l1954: mulHIs R4, R3, R12
l1955: movs R14, R10, LSR R4
l1956: mov R11, #43778048
l1957: mov R4, R11
l1958: eorLEs R0, R14, #-2147483586
l1959: eorCC R9, R12, R7
l1960: mulHI R9, R10, R8
l1961: orrs R10, R1, R14, LSL #26
l1962: andMI R1, R11, R15
l1963: mul R1, R9, R0
l1964: mul R14, R5, R14
l1965: ands R8, R7, R5, ASR #30
l1966: mul R7, R10, R6
l1967: orrLTs R2, R3, R0, RRX 
l1968: cmn R14, R14, ROR R8
l1969: andVSs R12, R10, R15, ASR #13
l1970: andVSs R1, R4, R14, ROR #14
l1971: rscCS R1, R10, #1638400
l1972: mulMIs R11, R8, R4
l1973: and R4, R6, R11, LSR #19
l1974: eorLSs R10, R4, R6
l1975: cmn R7, R11
l1976: mulLT R11, R0, R14
l1977: andCCs R6, R1, R0
l1978: mulMIs R1, R6, R9
l1979: mulLEs R14, R2, R11
l1980: orrs R10, R12, R1, ROR #24
l1981: clzCS R1, R12
l1982: mulPLs R4, R1, R1
l1983: orrCSs R0, R11, R9, ROR R11
l1984: cmn R4, R0, RRX 
l1985: eorPLs R9, R0, #1073741832
l1986: rsbLE R5, R12, R10, LSL #1
l1987: mulLSs R8, R9, R5
l1988: eors R4, R3, R11, RRX 
l1989: eorPL R9, R3, R6, RRX 
l1990: orrs R0, R6, R0
l1991: eors R1, R0, R2, ROR #27
l1992: cmn R15, R6, RRX 
l1993: muls R4, R12, R1
l1994: adcGE R11, R3, R2
l1995: mov R5, R0, LSR R1
l1996: subs R11, R5, R0
l1997: mulGTs R7, R3, R4
l1998: rscCS R11, R3, R0
l1999: sbcLE R1, R3, R9, RRX 
l2000: cmpCC R1, R14, LSR #6
l2001: bicLT R12, R4, R6, RRX 
l2002: eorCS R1, R3, R6
l2003: bicVS R1, R10, R5, ASR #27
l2004: clzHI R1, R7
l2005: sub R0, R14, R12, LSR R9
l2006: sbc R14, R5, #9175040
l2007: cmp R0, R11, ROR R2
l2008: tstHI R3, R12
l2009: mulVSs R2, R4, R1
l2010: mulCC R2, R10, R11
l2011: andGE R9, R4, R5, LSR R10
l2012: mulGE R11, R6, R11
l2013: muls R12, R8, R8
l2014: rsc R0, R6, R0, LSR R10
l2015: mul R3, R10, R8
l2016: tstEQ R8, R1, ASR R12
l2017: mul R9, R2, R0
l2018: orr R0, R0, R0
l2019: eorMI R1, R2, R0
l2020: andVSs R4, R4, #1073741864
l2021: teqVC R12, R5, LSL #16
l2022: orrs R14, R4, R14, LSR R9
l2023: subVC R2, R4, #6029312
l2024: orrHIs R0, R14, R15, ASR #8
l2025: adcs R12, R11, #24576
l2026: sbcs R14, R9, R3, ROR #23
l2027: orrVS R7, R4, R3, RRX 
l2028: mulHI R1, R3, R6
l2029: eors R1, R10, R10, ROR #25
l2030: mulCS R12, R6, R9
l2031: adds R5, R8, #999424
l2032: and R3, R7, R7, ROR R6
l2033: orrLEs R6, R8, R8, ROR #15
l2034: rsbCCs R10, R10, R14, ROR R8
l2035: subMIs R12, R4, R10
l2036: andGT R9, R14, R6
l2037: orrs R12, R11, #192
l2038: sbcLSs R1, R10, R7, LSR #0
l2039: mul R11, R4, R6
l2040: muls R1, R14, R9
l2041: eor R4, R8, R9
l2042: orrs R4, R1, R3
l2043: mul R1, R9, R1
l2044: mulNE R1, R2, R9
l2045: adcEQs R4, R7, R15
l2046: muls R6, R1, R3
l2047: orrs R5, R14, R14
l2048: eors R5, R7, R7, ASR R6
l2049: mulCSs R6, R10, R11
l2050: mulHIs R10, R5, R1
l2051: mul R14, R11, R0
l2052: addCS R8, R10, #500
l2053: eorPLs R1, R9, #310378496
l2054: teqHI R6, #19398656
l2055: subLS R11, R1, R5, ASR R6
l2056: orrs R10, R12, #57
l2057: mulLSs R2, R12, R10
l2058: mulVSs R2, R9, R6
l2059: mulCS R11, R10, R6
l2060: mulEQ R2, R8, R1
l2061: teq R14, R3, RRX 
l2062: mul R10, R1, R14
l2063: mul R8, R10, R10
l2064: orr R6, R5, R1
l2065: mul R10, R11, R2
l2066: mulLTs R12, R4, R11
l2067: mul R2, R1, R1
l2068: rsbNEs R14, R12, R14, LSR #13
l2069: eors R8, R9, #-1006632960
l2070: mul R12, R2, R0
l2071: muls R11, R6, R0
l2072: mulCCs R1, R11, R9
l2073: movs R14, R2
l2074: orrLS R6, R8, R12, LSL R7
l2075: mul R14, R9, R1
l2076: orr R14, R1, R5
l2077: eorLEs R7, R3, R0
l2078: eors R1, R9, R10
l2079: andMI R14, R0, R1, ROR R6
l2080: eors R2, R14, R3, LSL R0
l2081: rsbEQ R8, R0, R1, LSL #19
l2082: sbc R14, R4, R14, RRX 
l2083: orrLEs R9, R0, R10, LSL R10
l2084: mulEQs R8, R2, R6
l2085: mulVC R4, R9, R1
l2086: adc R9, R2, R5, LSR R10
l2087: rsb R1, R14, R14, LSL R9
l2088: mulVS R14, R4, R14
l2089: adcPLs R6, R11, R6
l2090: mulCC R7, R11, R14
l2091: subs R12, R12, R12
l2092: subGEs R7, R0, R7, LSL R11
l2093: mulLE R0, R8, R6
l2094: mulGEs R8, R7, R11
l2095: sbc R5, R8, R4, ROR R7
l2096: clz R3, R2
l2097: mvnEQ R11, R2
l2098: cmp R2, #-1795162112
l2099: sbcCC R7, R9, R10, ROR R6
l2100: orrVSs R4, R1, R9
l2101: eorCCs R11, R10, #1073741865
l2102: movMIs R6, R11
l2103: mulVS R0, R14, R11
l2104: mulCS R1, R2, R12
l2105: and R11, R7, R15
l2106: orrGEs R3, R15, #824
l2107: eor R0, R6, R6
l2108: orr R5, R3, R1, RRX 
l2109: mul R6, R5, R14
l2110: eorVCs R10, R0, R3
l2111: subLT R4, R7, R12, ASR R11
l2112: mulLEs R9, R4, R7
l2113: orrs R8, R9, R7
l2114: rscs R8, R6, R1
l2115: teq R2, R12, RRX 
l2116: eor R7, R8, R10, ROR #27
l2117: mulGEs R10, R7, R2
l2118: muls R11, R4, R12
l2119: muls R2, R10, R4
l2120: cmnGE R14, R11
l2121: mulGTs R5, R14, R3
l2122: rscCCs R5, R6, R12
l2123: orrs R1, R9, #-536870897
l2124: mulCCs R7, R4, R8
l2125: mulNE R6, R0, R2
l2126: rscLEs R2, R5, #805306377
l2127: sub R4, R8, R8, LSL R1
l2128: mulEQs R0, R9, R6
l2129: eors R1, R14, R3
l2130: andEQs R10, R5, R1, LSL #14
l2131: orrLE R1, R7, R11, RRX 
l2132: mul R12, R11, R10
l2133: andLEs R10, R2, R6, LSR #0
l2134: mulNEs R5, R14, R12
l2135: mulLS R7, R5, R11
l2136: cmpMI R0, R1, ASR #20
l2137: eorLSs R11, R7, #47104
l2138: orrLEs R1, R15, R0, RRX 
l2139: sbcCCs R8, R9, R1
l2140: mul R12, R2, R0
l2141: muls R6, R8, R6
l2142: mulCC R0, R3, R8
l2143: eors R3, R9, R0, LSL R1
l2144: orr R4, R3, R9, LSR #30
l2145: eor R12, R8, R6, RRX 
l2146: andVCs R6, R9, #262144
l2147: orrHI R7, R10, R2, RRX 
l2148: eorVCs R5, R9, R8, ASR R6
l2149: mulEQ R5, R12, R4
l2150: mul R3, R5, R12
l2151: orrNE R9, R7, R10, LSL R4
l2152: sbc R4, R5, #3728
l2153: mul R5, R6, R11
l2154: rscs R11, R14, R10, ROR R8
l2155: mulMIs R11, R12, R2
l2156: and R14, R7, R11, ROR R1
l2157: mvn R0, R12
l2158: andLE R0, R3, #-1140850686
l2159: orrCCs R14, R4, R11
l2160: mvn R2, R10, LSR R9
l2161: subGEs R6, R14, R7, RRX 
l2162: orr R4, R12, #23068672
l2163: muls R4, R0, R2
l2164: orr R3, R11, R3, LSL R11
l2165: mul R1, R0, R8
l2166: orrLSs R9, R12, R7, RRX 
l2167: eorHIs R5, R14, R0, LSR #12
l2168: cmn R14, R3, ROR #13
l2169: ands R9, R3, R12, LSR #31
l2170: eorGT R14, R11, R15
l2171: mul R12, R3, R11
l2172: mvnLTs R4, R7
l2173: muls R0, R5, R12
l2174: andMIs R8, R8, R15
l2175: muls R14, R4, R0
l2176: eorVC R12, R10, R8, ASR R14
l2177: subHI R2, R11, R0
l2178: mulMI R7, R12, R12
l2179: sub R1, R8, R8, RRX 
l2180: mvn R3, R14, LSR R14
l2181: cmn R2, R14, RRX 
l2182: mul R1, R6, R4
l2183: clzVS R2, R10
l2184: eors R9, R2, R5, LSR R5
l2185: rscLS R0, R4, R9, LSL R12
l2186: eor R0, R3, R2, LSL R8
l2187: cmp R3, #1664
l2188: mul R7, R0, R4
l2189: bics R5, R6, R0, ROR #25
l2190: orrEQs R2, R3, R9, ROR R14
l2191: rscHIs R6, R11, #1061158912
l2192: rsbLT R11, R5, R9
l2193: tstLT R9, #74752
l2194: eorNEs R12, R0, R2, ROR R0
l2195: eorGTs R1, R3, R14
l2196: eor R11, R5, #8781824
l2197: rsbNEs R0, R1, R4, LSL R10
l2198: addGT R1, R7, R2, LSR R9
l2199: andPLs R6, R6, R5, RRX 
l2200: ands R14, R0, #2240
l2201: mulMIs R5, R0, R14
l2202: eorLSs R14, R5, #1342177280
l2203: orr R2, R4, R5, ROR R6
l2204: muls R3, R11, R3
l2205: andGTs R11, R7, R4, LSL R5
l2206: adcCC R3, R3, R4, RRX 
l2207: orr R8, R0, #-1073741769
l2208: mulMI R10, R9, R8
l2209: eorMIs R2, R15, #171966464
l2210: subNEs R3, R6, R15, LSL #25
l2211: muls R0, R4, R10
l2212: eor R9, R0, R14, LSL R10
l2213: mul R11, R12, R4
l2214: rscCSs R10, R10, #503808
l2215: orrHIs R6, R1, R8, RRX 
l2216: mulVC R9, R10, R1
l2217: orrLSs R6, R5, #507904
l2218: mvnPLs R4, R1, LSL #11
l2219: clzCC R5, R0
l2220: eor R9, R6, R7, LSR #0
l2221: adcHI R10, R5, R9, ROR R4
l2222: addPLs R14, R3, R15
l2223: rsb R14, R11, #4128768
l2224: sbcGE R10, R6, R5, LSL R14
l2225: muls R14, R5, R7
l2226: mulEQ R4, R7, R14
l2227: mul R14, R12, R11
l2228: sbcLS R6, R1, R2, RRX 
l2229: subs R8, R9, R1, LSR #14
l2230: cmpLE R10, R14
l2231: rsbHI R8, R12, #3145728
l2232: mulCC R10, R3, R4
l2233: andHIs R4, R6, R14, LSR #13
l2234: mvnHIs R2, R15, ROR #2
l2235: and R3, R14, R6, LSR R9
l2236: rsc R0, R2, R11, LSR #30
l2237: mulLE R6, R4, R14
l2238: rsb R4, R15, R15, RRX 
l2239: mulVSs R5, R4, R12
l2240: eorCSs R9, R2, R8
l2241: andNEs R1, R10, R3, RRX 
l2242: mulMIs R4, R3, R10
l2243: rscCC R8, R14, R2, RRX 
l2244: eors R4, R8, R5
l2245: eorNEs R4, R4, #2013265923
l2246: rsb R11, R0, R11, LSL #29
l2247: muls R4, R6, R5
l2248: tst R0, R15, LSR #19
l2249: muls R7, R6, R6
l2250: cmp R4, #511705088
l2251: and R4, R5, R14, ROR R9
l2252: tst R6, R12, LSR R11
l2253: eorCCs R5, R8, R7, ASR R10
l2254: addVC R7, R14, R12, RRX 
l2255: sub R6, R14, R6, LSR R8
l2256: andLEs R11, R9, #216
l2257: mulEQs R2, R6, R9
l2258: mov R7, R14
l2259: mulVC R1, R7, R5
l2260: sbcEQ R5, R14, R9, ASR R11
l2261: mulVCs R0, R5, R2
l2262: eor R12, R2, R4
l2263: mulPL R10, R6, R14
l2264: mul R14, R8, R14
l2265: and R6, R9, R3, ASR R2
l2266: cmp R11, R0, RRX 
l2267: muls R12, R3, R9
l2268: cmp R8, R11, ASR #1
l2269: sbcNEs R2, R15, R6
l2270: orrs R0, R14, R4, ROR R6
l2271: eors R2, R3, #645922816
l2272: ands R1, R11, R0, LSR R8
l2273: and R4, R15, R12
l2274: mulLT R8, R4, R12
l2275: sbcs R9, R2, R0
l2276: cmp R3, #8388608
l2277: mulGEs R0, R14, R7
l2278: mulGE R7, R14, R4
l2279: rsbs R6, R11, R6
l2280: andMIs R3, R4, R9, ROR #19
l2281: cmpLE R15, #-452984832
l2282: eorEQs R12, R6, R15, ROR #13
l2283: cmp R10, R4, LSL #3
l2284: clz R1, R1
l2285: rsbGT R4, R10, R12
l2286: mulMIs R12, R8, R6
l2287: adcMI R3, R15, #-2080374783
l2288: andHIs R10, R5, #115712
l2289: mulNEs R8, R2, R8
l2290: rscVSs R12, R1, R10, LSR #16
l2291: orrPL R1, R8, R0, ROR R7
l2292: sbcNEs R12, R8, R15, RRX 
l2293: andHIs R2, R1, R5
l2294: andGTs R6, R14, R8, ROR #3
l2295: mulGEs R1, R10, R3
l2296: eorPL R12, R15, R3
l2297: ands R0, R6, #-1761607680
l2298: cmpMI R0, R14
l2299: muls R5, R9, R1
l2300: adc R3, R7, R7, LSL #4
l2301: orrMIs R12, R3, R1, ROR R11
l2302: mulLS R5, R4, R8
l2303: addMIs R9, R7, R0, LSR #27
l2304: sub R10, R0, #2916352
l2305: eorMI R14, R10, R8
l2306: mul R10, R14, R9
l2307: mulMI R8, R0, R7
l2308: mulPL R1, R10, R3
l2309: and R2, R9, #1409024
l2310: orrMIs R2, R2, R6, RRX 
l2311: subMI R6, R3, R12, ASR R7
l2312: ands R1, R6, R5, ROR #23
l2313: andVCs R7, R3, R2
l2314: eorMI R1, R0, R6, LSL R4
l2315: eors R10, R8, R14
l2316: mulGEs R5, R1, R10
l2317: rsb R12, R4, #150994944
l2318: muls R7, R2, R11
l2319: mulEQ R3, R2, R0
l2320: muls R10, R1, R10
l2321: mul R9, R7, R4
l2322: ands R7, R3, R7, RRX 
l2323: tst R15, #39424
l2324: eors R12, R14, #65798144
l2325: mul R7, R8, R4
l2326: mov R1, R0, RRX 
l2327: mulVSs R1, R4, R5
l2328: movCCs R3, R11
l2329: eor R7, R9, R4, ASR #18
l2330: mul R5, R10, R3
l2331: orrLS R8, R0, #13238272
l2332: orrs R1, R5, R6
l2333: orr R3, R9, R9
l2334: ands R12, R15, R1
l2335: mulLS R10, R11, R3
l2336: orrLTs R4, R10, R11
l2337: rsbCS R7, R4, R3, LSL #5
l2338: andVCs R0, R7, R7
l2339: mulMIs R3, R6, R4
l2340: andNE R7, R8, R3, ASR #16
l2341: eor R12, R6, R5, RRX 
l2342: mvnVSs R11, R14
l2343: clz R11, R10
l2344: and R12, R5, R7, LSL R7
l2345: eor R6, R1, R7, LSR R8
l2346: movCC R10, R6, LSR #17
l2347: eor R14, R10, R0, LSL #21
l2348: orrGT R8, R2, #3264
l2349: mulHIs R2, R12, R5
l2350: andLT R0, R4, R12
l2351: and R12, R5, R4, ROR #18
l2352: subs R10, R10, R7, ROR R2
l2353: eorHI R3, R0, #671744
l2354: bics R1, R0, R0, ROR R3
l2355: adds R10, R12, R9, LSR R8
l2356: sub R9, R2, #3200
l2357: mulVSs R6, R14, R9
l2358: bicGEs R8, R0, R4
l2359: mul R8, R9, R3
l2360: mulGTs R3, R0, R8
l2361: orr R3, R7, R0, LSL #18
l2362: mulLE R11, R8, R2
l2363: mul R12, R2, R7
l2364: andVSs R7, R11, R11, ASR R7
l2365: sbc R1, R3, R9
l2366: clzVC R3, R9
l2367: andEQ R2, R0, R3
l2368: orr R9, R0, R11, LSR #4
l2369: andLEs R10, R10, R15, RRX 
l2370: eorLE R6, R8, R2, ROR #9
l2371: add R12, R5, #192937984
l2372: mulLEs R1, R3, R2
l2373: andNEs R2, R14, #131072
l2374: tst R0, #35072
l2375: andEQ R6, R4, R0
l2376: muls R8, R5, R5
l2377: muls R4, R11, R0
l2378: orrPLs R7, R8, R15, RRX 
l2379: eorGT R0, R12, R10, ROR R12
l2380: cmpLE R15, #552960
l2381: mul R1, R14, R2
l2382: andVC R12, R0, #663552
l2383: mulPL R8, R9, R9
l2384: movLEs R4, R14
l2385: eorPL R9, R15, R7, RRX 
l2386: mulHI R11, R10, R8
l2387: eor R0, R3, #3932160
l2388: andVCs R12, R11, R9, LSR #10
l2389: subVSs R10, R0, R6, ROR #31
l2390: cmpVC R0, R1, LSL R10
l2391: orrVCs R10, R1, R15
l2392: teq R0, R2, ROR #4
l2393: adds R2, R15, R3
l2394: mulLSs R12, R2, R10
l2395: mulMI R3, R10, R8
l2396: cmp R1, #144
l2397: orrMIs R7, R2, R8, ROR R9
l2398: eor R7, R15, #87031808
l2399: mulEQs R11, R12, R12
l2400: subCSs R6, R4, R4, ROR #26
l2401: eor R9, R11, R8, LSR #27
l2402: mul R6, R11, R4
l2403: mulCCs R1, R11, R6
l2404: ands R3, R15, R8
l2405: orrs R6, R4, R15, ASR #10
l2406: mulEQs R4, R9, R5
l2407: eorVSs R10, R2, R9
l2408: muls R2, R14, R9
l2409: teqGT R5, R9, ROR R5
l2410: eorVCs R6, R15, R8
l2411: mvnEQ R4, R4
l2412: addLS R8, R12, R7, LSR R1
l2413: mulEQ R12, R7, R4
l2414: rsb R11, R11, R4, ROR #2
l2415: adcs R6, R3, #155189248
l2416: mulLEs R1, R10, R3
l2417: rsc R2, R14, R12, LSR #27
l2418: muls R1, R14, R11
l2419: eor R0, R0, R6, RRX 
l2420: mul R14, R12, R12
l2421: orrMI R9, R1, R14, RRX 
l2422: mulMIs R3, R14, R8
l2423: mulCSs R11, R6, R6
l2424: mulLT R7, R14, R6
l2425: rsbHIs R5, R12, R6, ROR #16
l2426: clzNE R3, R6
l2427: mul R11, R1, R8
l2428: rscEQ R2, R7, R7, RRX 
l2429: ands R11, R9, R7, ASR R9
l2430: orr R10, R11, R5, ROR #8
l2431: ands R7, R1, R9, RRX 
l2432: eorVCs R12, R12, R1, ASR #12
l2433: muls R9, R10, R14
l2434: mulCS R12, R7, R4
l2435: adcs R2, R1, R3, ASR #14
l2436: mulEQs R1, R9, R14
l2437: teqGT R2, #916
l2438: eors R5, R6, R3, LSL R12
l2439: mulPL R7, R0, R14
l2440: orrGTs R1, R6, R0, RRX 
l2441: rscEQ R8, R12, R0, LSL #15
l2442: muls R5, R4, R4
l2443: eorEQs R10, R0, #160
l2444: tst R14, #562036736
l2445: movs R1, R5
l2446: mvnLT R3, R15
l2447: mulGEs R7, R3, R7
l2448: mulLEs R12, R3, R3
l2449: mulHIs R8, R2, R9
l2450: mulNEs R8, R7, R10
l2451: movGTs R12, R9
l2452: orrs R7, R7, #-335544317
l2453: mulCS R10, R1, R7
l2454: orrHI R7, R2, R15, LSL #6
l2455: eorLTs R5, R11, R1, LSL #11
l2456: subPLs R6, R6, R1, ASR R8
l2457: mul R11, R0, R1
l2458: rscs R10, R0, #96
l2459: eorVC R6, R0, R1
l2460: mulGEs R8, R9, R4
l2461: muls R9, R6, R8
l2462: adcs R6, R0, R4, RRX 
l2463: tstNE R11, R5, LSL #31
l2464: andLE R10, R15, R5, ASR #22
l2465: cmpGT R5, R6, LSL #3
l2466: orrHI R9, R10, R5
l2467: andVS R0, R3, #612368384
l2468: mulPL R10, R12, R14
l2469: addHIs R6, R4, R0
l2470: clzCC R9, R1
l2471: muls R11, R0, R2
l2472: mul R5, R10, R2
l2473: cmp R2, R5, ROR R8
l2474: subGT R0, R3, #-1879048192
l2475: mulVC R7, R8, R14
l2476: mulVS R7, R11, R12
l2477: rsbGT R0, R7, R9, ROR #28
l2478: movs R6, R11, LSR R8
l2479: movLS R1, R5, LSL #31
l2480: mul R0, R7, R2
l2481: sub R4, R14, #-268435450
l2482: orr R12, R2, R14, LSL #12
l2483: orrs R6, R2, R3
l2484: eorNE R3, R2, #-2147483631
l2485: muls R1, R10, R11
l2486: orrLS R12, R5, R0, ASR R5
l2487: mulLT R4, R12, R10
l2488: eors R8, R15, #2113929216
l2489: ands R10, R3, R2, LSR R11
l2490: orrLE R5, R2, #970752
l2491: orrs R0, R5, R12
l2492: clz R7, R14
l2493: orr R6, R4, R10, LSR R12
l2494: mulVSs R6, R4, R12
l2495: andGE R2, R7, R11, LSL R12
l2496: andGT R1, R4, #268435464
l2497: cmnEQ R7, R11, LSR R2
l2498: mul R3, R14, R2
l2499: andNEs R1, R15, #285212672
l2500: mulGT R9, R7, R3
l2501: mulPL R4, R14, R11
l2502: mulVSs R2, R6, R2
l2503: rscEQ R3, R8, R2, RRX 
l2504: mul R3, R12, R6
l2505: ands R2, R1, R9
l2506: tstPL R14, #205824
l2507: orrPL R12, R15, R7, ASR #30
l2508: mulCCs R8, R12, R1
l2509: and R10, R8, #1543503875
l2510: muls R6, R2, R0
l2511: eors R10, R6, R2, LSL #31
l2512: rscCCs R8, R1, #8650752
l2513: eors R6, R9, R1, LSR R1
l2514: eorLE R14, R0, R4
l2515: sub R0, R10, R0, RRX 
l2516: mulNEs R9, R1, R10
l2517: mulGEs R10, R3, R10
l2518: rsbs R2, R4, #9437184
l2519: mulMIs R3, R10, R9
l2520: cmpLS R14, R6, ROR R2
l2521: mulGEs R12, R5, R9
l2522: mulLEs R11, R6, R3
l2523: and R6, R5, R12, ROR #3
l2524: mulGT R7, R5, R6
l2525: and R6, R1, R1
l2526: andLSs R12, R3, #-1342177274
l2527: mulHI R12, R10, R5
l2528: and R1, R3, R4, ASR #3
l2529: mulEQ R2, R4, R3
l2530: eors R1, R12, R6, RRX 
l2531: eor R0, R7, R0
l2532: addCCs R7, R2, R9
l2533: mulCCs R3, R10, R11
l2534: subNEs R9, R15, R15, ROR #25
l2535: adds R8, R11, #59244544
l2536: eorCS R11, R15, #10092544
l2537: orrEQ R12, R5, R8
l2538: eor R7, R12, R8, LSL #16
l2539: mulVCs R1, R10, R11
l2540: subCS R8, R4, R5, LSR R9
l2541: muls R12, R8, R6
l2542: sbc R9, R1, R8
l2543: mul R4, R2, R9
l2544: eors R3, R4, R0, RRX 
l2545: orrPLs R7, R12, R15
l2546: sbcLEs R14, R3, R8, RRX 
l2547: movGT R8, #106496
l2548: mov R8, R5, ROR R10
l2549: muls R5, R12, R6
l2550: bics R9, R10, R4, ROR #28
l2551: eors R3, R4, R14, LSL R11
l2552: mvnLT R2, R2, ASR R7
l2553: eorMI R1, R11, R6
l2554: mulVSs R2, R4, R3
l2555: eorEQs R5, R5, #88080384
l2556: orrNE R11, R11, R1
l2557: add R6, R5, R2, LSR #6
l2558: mulLSs R5, R1, R7
l2559: movCSs R12, R3, LSR #21
l2560: eorVSs R7, R1, R10, ROR R5
l2561: mul R11, R12, R14
l2562: bic R9, R14, R1
l2563: muls R0, R4, R2
l2564: eors R10, R3, #64000
l2565: mulCC R8, R4, R7
l2566: add R10, R10, R15, LSL #31
l2567: subGEs R2, R4, R12, LSR R8
l2568: rsc R0, R7, #1824
l2569: and R1, R10, R2
l2570: tstLT R9, R7, LSL R2
l2571: eor R1, R8, #708608
l2572: mul R6, R10, R7
l2573: orrLSs R9, R3, R8, LSR #31
l2574: mulVS R7, R8, R12
l2575: mul R12, R8, R7
l2576: mulVC R8, R6, R8
l2577: orrVSs R2, R14, R8, LSR #14
l2578: adds R8, R5, #183500800
l2579: andLS R2, R12, R1, LSL R10
l2580: andVSs R8, R8, R9
l2581: mulPLs R9, R1, R0
l2582: ands R7, R11, #-1610612732
l2583: clzLT R12, R5
l2584: mulVSs R11, R0, R5
l2585: subGE R10, R5, R12, RRX 
l2586: teq R0, R11, LSL R7
l2587: andVS R9, R4, R9, RRX 
l2588: mulHIs R5, R0, R2
l2589: muls R2, R11, R1
l2590: mul R14, R4, R0
l2591: mul R8, R6, R9
l2592: orrVS R9, R1, R9, ASR R9
l2593: mulCS R2, R0, R4
l2594: eorCS R11, R6, R0, ASR R6
l2595: rsbVCs R14, R12, R5
l2596: eorCCs R6, R12, R12, LSR R4
l2597: mulNEs R12, R14, R6
l2598: eors R12, R14, R14, ROR R10
l2599: mulVSs R0, R6, R5
l2600: eors R3, R3, R6
l2601: adcs R6, R6, #503316480
l2602: and R9, R1, #43
l2603: teq R8, R4, RRX 
l2604: rscLSs R10, R6, R0, ASR #8
l2605: teqGE R9, R4, RRX 
l2606: tst R10, R12
l2607: muls R4, R1, R14
l2608: clzNE R10, R12
l2609: mulGTs R5, R7, R10
l2610: cmp R11, #548
l2611: mulMI R0, R12, R0
l2612: bicLS R2, R1, #50855936
l2613: cmnNE R7, #10752
l2614: eor R12, R9, #981467136
l2615: andLEs R10, R10, R14, LSR R7
l2616: mulGT R12, R1, R1
l2617: mulLT R9, R14, R1
l2618: muls R11, R8, R9
l2619: mulLSs R12, R9, R12
l2620: sbcs R12, R8, R15, RRX 
l2621: mulMIs R14, R4, R12
l2622: muls R9, R8, R9
l2623: muls R2, R11, R9
l2624: muls R12, R14, R3
l2625: orrs R12, R1, #1342177287
l2626: mulPLs R10, R2, R5
l2627: mulGEs R10, R12, R4
l2628: ands R11, R11, #-2147483604
l2629: mulCS R7, R4, R7
l2630: ands R11, R7, R7, RRX 
l2631: and R14, R5, R7, ASR #14
l2632: movCC R7, R15, ROR #10
l2633: mulLT R9, R3, R14
l2634: cmp R10, #17825792
l2635: mulCSs R7, R4, R11
l2636: eorPL R12, R9, R8, LSL R4
l2637: sbc R9, R0, R2, RRX 
l2638: muls R4, R8, R3
l2639: sbcPL R3, R1, R9
l2640: mulGEs R0, R12, R2
l2641: orrPLs R9, R10, R1, ASR R2
l2642: muls R2, R14, R3
l2643: clzCS R10, R11
l2644: muls R12, R10, R2
l2645: mul R1, R2, R6
l2646: mul R10, R3, R4
l2647: eor R2, R12, R12, LSR R11
l2648: bicNE R6, R9, #1664
l2649: ands R2, R0, #528482304
l2650: mul R5, R1, R2
l2651: mulCCs R14, R10, R0
l2652: mvns R11, R1, ASR #27
l2653: tstHI R10, R15, ROR #27
l2654: eor R14, R0, #440401920
l2655: orrCCs R9, R7, #123
l2656: teq R11, R8
l2657: orr R11, R0, #-1090519040
l2658: eorLT R11, R3, R14, LSL #22
l2659: ands R3, R11, R5, RRX 
l2660: subs R8, R5, R4, ASR R2
l2661: cmpVC R4, R0
l2662: sbc R12, R7, #933888
l2663: cmpLE R2, R12
l2664: mulLE R14, R9, R1
l2665: mulMI R1, R8, R10
l2666: mulNEs R5, R1, R11
l2667: and R3, R15, #40960
l2668: muls R0, R9, R12
l2669: mulCSs R10, R14, R1
l2670: mulLSs R12, R8, R7
l2671: mulVS R10, R8, R4
l2672: mvnVS R5, R10, ROR #24
l2673: mulCS R8, R0, R11
l2674: ands R14, R1, R0, LSR R0
l2675: mul R11, R3, R3
l2676: mulLT R7, R4, R6
l2677: and R1, R2, R6, ASR R10
l2678: eorHIs R9, R5, R11
l2679: muls R3, R9, R12
l2680: bicVS R2, R15, #9856
l2681: orrHI R5, R3, #40
l2682: bicCCs R5, R2, R7, LSL R2
l2683: and R0, R1, #156672
l2684: mulLTs R14, R12, R6
l2685: rsb R8, R0, R8
l2686: mul R11, R7, R0
l2687: sub R7, R15, #57856
l2688: mul R6, R3, R7
l2689: muls R1, R5, R1
l2690: andCS R14, R6, #1342177291
l2691: mulNEs R11, R7, R8
l2692: mul R2, R3, R5
l2693: mulLTs R4, R0, R0
l2694: orrs R4, R5, #4063232
l2695: mulHIs R3, R5, R11
l2696: subPL R11, R2, #64768
l2697: andLS R14, R7, R6, LSL #12
l2698: addNE R0, R12, R3, ASR R12
l2699: movVCs R9, R2, LSL #11
l2700: mulGTs R1, R0, R5
l2701: mul R7, R4, R10
l2702: addCCs R0, R15, #42205184
l2703: bics R12, R1, R3, LSR #31
l2704: eorLS R10, R8, #-1560281088
l2705: adcs R1, R6, R0, RRX 
l2706: mulMI R5, R8, R12
l2707: addMI R1, R10, R3
l2708: bicHIs R8, R7, #8448
l2709: mulVC R14, R0, R14
l2710: muls R8, R14, R14
l2711: orrEQs R1, R0, #268435469
l2712: eorVSs R9, R12, R12
l2713: sbcGE R11, R3, R7, ROR R11
l2714: subEQ R3, R11, R1, LSR #6
l2715: mulEQs R14, R10, R9
l2716: muls R11, R9, R0
l2717: mulHI R1, R14, R12
l2718: andLT R6, R1, R12
l2719: mulHIs R11, R3, R7
l2720: mulVC R1, R5, R11
l2721: adcs R12, R10, #1310720
l2722: subGE R8, R4, R10, LSR #28
l2723: mulPL R9, R0, R6
l2724: tstLE R9, R14, ROR R7
l2725: mulGT R3, R10, R10
l2726: teqVC R3, R3, ASR #25
l2727: eor R0, R15, R8, RRX 
l2728: cmpNE R1, #-939524096
l2729: subCSs R0, R11, R10
l2730: mvnNE R3, R6, ASR #3
l2731: adcs R14, R1, R5, ASR #17
l2732: eorEQ R4, R3, R11
l2733: addLS R14, R8, R15
l2734: and R9, R15, #528
l2735: mul R5, R4, R6
l2736: mul R12, R3, R12
l2737: muls R3, R12, R6
l2738: eorLS R10, R0, R2
l2739: mulHIs R14, R3, R2
l2740: muls R12, R14, R4
l2741: eorEQs R11, R10, R10, LSL R0
l2742: mul R7, R0, R8
l2743: tstCS R4, #738197504
l2744: addHIs R4, R1, R5
l2745: mulVC R5, R12, R7
l2746: adcVSs R1, R9, R2, ROR R5
l2747: subVC R12, R9, #2867200
l2748: addCCs R5, R7, #2424832
l2749: subs R14, R7, R12, LSR R6
l2750: andCCs R14, R14, R12, ROR R12
l2751: eorGTs R6, R3, R14, RRX 
l2752: eor R5, R1, R9, LSL R11
l2753: adcGEs R10, R12, R1, RRX 
l2754: mulLEs R10, R14, R5
l2755: muls R11, R9, R10
l2756: movs R11, R11, LSL R11
l2757: orrs R6, R4, R6
l2758: eor R8, R3, #587202560
l2759: bics R1, R11, R3
l2760: cmnCS R15, R3, LSR #0
l2761: muls R1, R12, R10
l2762: mulGEs R1, R5, R5
l2763: orrNEs R9, R11, #524288000
l2764: mulLEs R5, R9, R1
l2765: mulMIs R14, R4, R1
l2766: muls R5, R9, R4
l2767: bicVSs R3, R15, #1073741854
l2768: andMI R1, R0, R1
l2769: muls R7, R6, R8
l2770: muls R2, R6, R9
l2771: eor R5, R5, #860160
l2772: mul R7, R1, R8
l2773: orrs R1, R10, R8, RRX 
l2774: andGTs R4, R1, R10, LSL #22
l2775: cmp R15, R2, ROR #29
l2776: eors R9, R0, #1019215872
l2777: eor R11, R14, #8256
l2778: teqLE R4, R9
l2779: movGEs R8, #3584
l2780: mulNEs R10, R9, R11
l2781: orrLTs R8, R4, #14208
l2782: orrLTs R12, R15, #916
l2783: movMI R11, R14, ROR #7
l2784: mulLEs R12, R10, R9
l2785: muls R10, R11, R14
l2786: andGT R6, R14, R14, LSL R9
l2787: eorVC R8, R4, R11
l2788: rscPL R14, R4, R12, LSL R4
l2789: mul R5, R7, R4
l2790: mulMI R12, R2, R0
l2791: rscs R9, R6, #171
l2792: mul R12, R2, R6
l2793: mulPLs R1, R6, R6
l2794: cmpLE R11, R0
l2795: subs R7, R4, R11, ROR R6
l2796: adcHI R3, R11, R10, ROR #10
l2797: mulVS R11, R14, R3
l2798: orrs R12, R8, R12, LSL R5
l2799: orrGTs R5, R3, #536870923
l2800: andCCs R5, R12, R2, LSR #30
l2801: mul R11, R14, R5
l2802: andHIs R6, R6, R10, LSR R4
l2803: orrLTs R14, R12, R7
l2804: muls R7, R8, R5
l2805: mul R7, R1, R5
l2806: orrCS R0, R0, R9, ROR R6
l2807: adcLEs R10, R4, #15296
l2808: eorNEs R10, R5, R14
l2809: sbcs R11, R14, R6
l2810: mulNEs R2, R3, R3
l2811: eorVC R4, R2, R8, LSL R5
l2812: eorNE R5, R4, R11
l2813: subLT R11, R12, R3, RRX 
l2814: mulPLs R5, R0, R2
l2815: mvnCC R11, R3, LSR R8
l2816: mul R11, R14, R2
l2817: ands R10, R5, R4, ASR #0
l2818: clzHI R3, R7
l2819: orrMI R0, R8, R6, LSR #12
l2820: cmnLS R14, R7, LSR R5
l2821: muls R4, R9, R11
l2822: orrs R11, R2, R1, ASR R10
l2823: rscVCs R7, R10, R14
l2824: eorCSs R10, R11, R6, RRX 
l2825: tstGT R6, R1
l2826: orrGEs R0, R7, R8
l2827: muls R12, R1, R14
l2828: orrHI R8, R0, R9, ASR #6
l2829: add R8, R1, #-1073741812
l2830: orrMI R0, R3, R8, ASR #29
l2831: mul R5, R4, R8
l2832: add R0, R9, R11, ASR R1
l2833: orrLEs R9, R0, R3
l2834: andNEs R5, R4, #29952
l2835: mvnPL R11, R3, ROR #15
l2836: bicVC R11, R8, R8
l2837: mulHIs R6, R7, R11
l2838: mul R3, R10, R12
l2839: orrPL R5, R5, R8
l2840: adds R0, R0, R12
l2841: tstHI R6, R14, ROR R6
l2842: andVS R11, R8, R6
l2843: movGEs R1, R7, LSR #1
l2844: mvn R4, R10, ASR R5
l2845: mul R1, R12, R10
l2846: mulLT R5, R9, R2
l2847: muls R6, R7, R7
l2848: eor R6, R1, R14
l2849: mul R9, R7, R7
l2850: muls R3, R11, R7
l2851: clz R12, R6
l2852: orr R11, R0, #46
l2853: mulLEs R3, R11, R9
l2854: mulHIs R8, R11, R11
l2855: addLTs R8, R11, R11, LSL #3
l2856: mulLE R11, R2, R0
l2857: eors R1, R5, R9, LSL #29
l2858: tstPL R9, R6, LSR R9
l2859: orrLS R14, R12, R2
l2860: andVC R5, R9, #675840
l2861: muls R3, R9, R2
l2862: andPLs R5, R11, R11, ROR R1
l2863: eorGT R3, R12, R15, ASR #7
l2864: mulGT R7, R9, R7
l2865: cmn R2, R15, LSR #21
l2866: muls R3, R0, R8
l2867: subMIs R8, R14, #1509949440
l2868: teq R5, R2, ROR R7
l2869: orr R14, R5, R6
l2870: orr R0, R11, R12, LSL R7
l2871: eorEQs R2, R7, #6592
l2872: subs R1, R10, R5, ASR #30
l2873: orrs R2, R2, R3
l2874: mulVSs R7, R2, R0
l2875: eorVS R7, R5, R4
l2876: mulVCs R2, R8, R3
l2877: orrs R2, R11, R0, ASR R6
l2878: teq R6, #55574528
l2879: rsbs R10, R8, #5888
l2880: rsbLT R8, R8, #1073741845
l2881: cmpEQ R14, #217055232
l2882: mulGEs R5, R9, R6
l2883: muls R4, R3, R7
l2884: eor R4, R7, R4
l2885: mulLE R4, R9, R2
l2886: subs R6, R0, #2608
l2887: mulEQs R12, R10, R8
l2888: mul R7, R9, R2
l2889: muls R1, R5, R11
l2890: mulEQs R9, R7, R12
l2891: rsbCCs R7, R1, R14
l2892: eorLEs R4, R4, R2
l2893: mulLSs R14, R6, R5
l2894: bicLTs R2, R6, R7, ROR R1
l2895: eorGE R8, R3, #496
l2896: mulVCs R3, R14, R5
l2897: clz R0, R9
l2898: adcGT R2, R14, R10, LSL R0
l2899: addGTs R5, R14, R10, ASR R4
l2900: muls R9, R0, R0
l2901: cmnGE R7, #58720256
l2902: movs R4, R10
l2903: mulEQs R1, R3, R4
l2904: adcLS R8, R5, R5, RRX 
l2905: mulLE R3, R4, R10
l2906: muls R9, R12, R6
l2907: adcGEs R5, R3, R5, LSR R2
l2908: eorLEs R7, R3, R12
l2909: and R4, R3, R15, ROR #22
l2910: andPL R11, R0, #2490368
l2911: andEQ R4, R8, #876
l2912: sbcLS R7, R4, R7
l2913: subs R14, R8, #46137344
l2914: mulLT R3, R1, R4
l2915: eorVS R14, R1, R12, RRX 
l2916: muls R5, R1, R14
l2917: andLTs R8, R5, R1
l2918: eor R4, R12, R12, LSR R1
l2919: andMI R5, R2, R9
l2920: orrCC R4, R4, R6, LSL R9
l2921: mulVSs R14, R6, R12
l2922: andCC R7, R6, #35840
l2923: eors R6, R5, R9
l2924: eorLTs R8, R8, R2, LSR #30
l2925: mulMIs R14, R4, R11
l2926: ands R9, R7, R0, ROR R14
l2927: eors R5, R12, R3
l2928: mov R2, R7
l2929: clzGT R12, R6
l2930: eor R9, R6, R10, LSL #22
l2931: orrs R7, R7, R9
l2932: teqEQ R14, R14, LSL #6
l2933: and R10, R4, #130023424
l2934: orrLEs R4, R4, #266240
l2935: ands R8, R2, R11
l2936: and R1, R6, R3, ROR R10
l2937: orr R2, R8, R12, ASR #1
l2938: andHIs R10, R8, #21248
l2939: cmpLE R15, #6291456
l2940: muls R10, R0, R12
l2941: mulGE R3, R8, R8
l2942: mulLSs R3, R5, R7
l2943: mulLE R1, R12, R8
l2944: mulNEs R14, R12, R6
l2945: tstGE R3, R10, ASR R4
l2946: mulLE R7, R12, R14
l2947: clzLT R2, R12
l2948: subEQ R11, R6, R11, LSL #30
l2949: muls R7, R0, R11
l2950: addVC R0, R12, #4224
l2951: muls R1, R7, R3
l2952: teq R1, #948
l2953: mulCSs R1, R0, R3
l2954: mulLS R10, R9, R1
l2955: mulNE R9, R7, R9
l2956: mulCCs R9, R10, R7
l2957: mulLE R5, R14, R0
l2958: cmpCC R3, R11, LSR #0
l2959: eorCSs R9, R5, R0, RRX 
l2960: mulHIs R6, R1, R4
l2961: movEQs R0, #33
l2962: mul R2, R9, R0
l2963: cmpGE R8, #44032
l2964: eorCSs R8, R12, R4, RRX 
l2965: orrLTs R1, R3, #11599872
l2966: mul R7, R1, R7
l2967: rsbPL R7, R3, R7, ROR #7
l2968: andHIs R10, R1, R14, LSL R6
l2969: tst R5, R14, LSR R0
l2970: orrCSs R12, R0, R3
l2971: orr R4, R8, R3, RRX 
l2972: eorVS R6, R9, #11468800
l2973: mul R11, R10, R1
l2974: mvnLSs R11, #21504
l2975: mul R10, R11, R8
l2976: orrVCs R2, R14, R14, ASR #2
l2977: eorLS R10, R3, R8, ASR #23
l2978: eorLS R14, R12, R9
l2979: subs R2, R14, R0, LSL R7
l2980: mulGE R7, R11, R8
l2981: mul R2, R6, R9
l2982: andPLs R2, R6, R9
l2983: mulLEs R6, R2, R4
l2984: orrEQs R10, R8, R1, LSL R5
l2985: addVSs R7, R9, R5
l2986: mulLEs R14, R10, R5
l2987: addLEs R11, R8, R11, LSL R11
l2988: andVS R9, R11, R7
l2989: cmpGE R14, #94371840
l2990: mulGEs R1, R14, R11
l2991: eors R14, R8, R2, LSR R7
l2992: mulCCs R12, R0, R11
l2993: muls R2, R0, R1
l2994: rsbPLs R10, R9, #1174405120
l2995: adcHI R2, R11, #1073741849
l2996: eors R6, R2, R12, ROR #7
l2997: orr R14, R9, R11
l2998: eors R0, R5, R15, LSL #8
l2999: mul R10, R14, R12
l3000: muls R1, R12, R5
l3001: mulMIs R6, R12, R4
l3002: mulEQs R5, R10, R4
l3003: bicVS R4, R2, #-201326592
l3004: mulEQs R11, R0, R2
l3005: cmn R0, R11, RRX 
l3006: mvnLE R6, #805306368
l3007: subGT R2, R7, #3932160
l3008: cmpLE R1, R10, RRX 
l3009: ands R1, R12, R15
l3010: tst R1, R0, ASR R9
l3011: add R7, R6, R0, LSL R11
l3012: clz R8, R14
l3013: orrLT R14, R1, #12320768
l3014: sbcVC R4, R3, #212992
l3015: ands R1, R9, #193536
l3016: tstVS R12, R0, LSR R5
l3017: sbcMI R2, R8, #256
l3018: mvn R10, R5, ASR #28
l3019: subs R9, R6, R10
l3020: orr R10, R15, #1949696
l3021: muls R6, R3, R10
l3022: tstVS R10, R12, LSL R8
l3023: mulCSs R9, R10, R6
l3024: orrLS R12, R5, #28
l3025: rsbHIs R10, R5, R15, RRX 
l3026: add R3, R9, R1
l3027: mul R7, R11, R11
l3028: cmp R2, R6, ROR #20
l3029: mulCSs R8, R3, R1
l3030: muls R10, R8, R12
l3031: eor R7, R1, R6, LSR #0
l3032: andPL R11, R9, #59136
l3033: mulVS R1, R0, R3
l3034: eors R1, R2, R10, LSR R11
l3035: orr R0, R4, R14, LSL #4
l3036: tstGT R7, R14, ASR #17
l3037: andCC R0, R0, R0
l3038: sbcVC R14, R4, #-1073741771
l3039: subCCs R0, R1, R2
l3040: ands R7, R12, #49283072
l3041: bics R8, R10, #-150994944
l3042: muls R0, R1, R12
l3043: sbcCS R5, R15, #176
l3044: sbcGT R3, R3, R8, LSR R14
l3045: orrLE R5, R9, R3
l3046: orr R7, R15, #48896
l3047: rsc R1, R8, R4, ROR #14
l3048: eorEQs R14, R8, R1, ROR #7
l3049: rscCS R11, R6, #23068672
l3050: cmpPL R4, R10
l3051: add R5, R7, R15
l3052: mvns R4, R8, ROR R0
l3053: orr R5, R3, R11, LSL R11
l3054: muls R4, R9, R4
l3055: orrCS R2, R3, #167936
l3056: mov R5, #2528
l3057: eors R12, R15, R2, ROR #14
l3058: ands R6, R12, R5, LSR R11
l3059: teq R9, R2, RRX 
l3060: cmpLS R14, R11, RRX 
l3061: orrEQs R10, R1, R15, RRX 
l3062: muls R3, R12, R3
l3063: mulVS R4, R7, R3
l3064: mulVCs R4, R14, R11
l3065: and R5, R14, #1261568
l3066: rscs R9, R8, R4, ASR R10
l3067: mulEQ R9, R4, R12
l3068: adcCCs R14, R10, R14
l3069: eorGT R7, R1, R6
l3070: eorNE R3, R14, R5
l3071: and R10, R14, R8
l3072: orr R9, R12, R5, LSL R6
l3073: ands R11, R6, R5
l3074: mulGT R5, R14, R12
l3075: clzCC R4, R9
l3076: mulNE R3, R8, R3
l3077: cmn R9, #1677721602
l3078: bicCSs R1, R5, R9, RRX 
l3079: mul R1, R3, R3
l3080: orrEQs R9, R14, R0, ASR #12
l3081: andCC R11, R8, R8, ASR #5
l3082: clz R14, R3
l3083: muls R2, R5, R14
l3084: andCSs R11, R1, R5, ROR R10
l3085: bicCS R14, R14, R8, ASR #20
l3086: orrLE R2, R0, R4, LSL R5
l3087: mulHIs R14, R5, R14
l3088: orrGEs R5, R4, R14, LSR #8
l3089: clz R11, R2
l3090: cmn R10, R2
l3091: rscCSs R7, R6, R14, LSL R10
l3092: eorGT R1, R2, R14, ASR R2
l3093: rsbGEs R11, R7, R7, ROR R3
l3094: adcGEs R8, R2, R9, LSL #27
l3095: mulEQs R4, R7, R2
l3096: sbcs R8, R1, R10, ROR #29
l3097: orrPLs R8, R0, R6
l3098: bicCSs R0, R2, #572
l3099: subHIs R3, R4, R1, ASR #2
l3100: adcHIs R2, R12, R15, ASR #11
l3101: eorLEs R9, R4, R1, RRX 
l3102: tstLE R11, R3, LSR #5
l3103: mul R7, R3, R5
l3104: cmp R3, R1
l3105: andHIs R10, R11, R15, RRX 
l3106: ands R6, R9, R4, ASR R9
l3107: eorNE R4, R4, #36700160
l3108: mulCS R5, R12, R8
l3109: and R8, R6, R7, ROR R1
l3110: orrs R6, R11, #2030043136
l3111: mulLT R8, R11, R10
l3112: orrLT R12, R6, R8
l3113: clz R3, R2
l3114: eorLS R4, R7, R1
l3115: eorGT R8, R7, R3, ASR #12
l3116: subMI R5, R7, R6, ROR R0
l3117: rsb R1, R6, R4, ROR #11
l3118: eorCCs R10, R9, R4
l3119: orrPL R4, R4, R3, ASR R2
l3120: muls R5, R12, R4
l3121: muls R14, R1, R2
l3122: mulCSs R9, R3, R10
l3123: muls R11, R3, R14
l3124: and R14, R14, R10, LSL R12
l3125: muls R7, R12, R5
l3126: rscHIs R1, R11, R3
l3127: orrNEs R8, R12, #-1073741822
l3128: muls R9, R3, R14
l3129: cmnLE R9, R6
l3130: muls R11, R7, R9
l3131: mulVSs R10, R8, R5
l3132: teqEQ R3, R6, LSL R11
l3133: mulGTs R12, R5, R5
l3134: mulHI R1, R5, R8
l3135: mulVS R4, R7, R11
l3136: adcLTs R7, R15, R7
l3137: mvn R3, R2, RRX 
l3138: ands R6, R8, R7, LSR #27
l3139: muls R3, R5, R4
l3140: orrEQs R5, R12, R9, RRX 
l3141: eors R3, R1, R0, ASR R7
l3142: muls R8, R2, R6
l3143: mulMI R3, R5, R11
l3144: clzVC R7, R3
l3145: tstCS R1, #16384
l3146: tstGT R7, R4
l3147: eorCCs R5, R11, #8704
l3148: mov R8, R5, LSR R8
l3149: muls R0, R2, R12
l3150: clz R2, R9
l3151: rscLS R8, R9, R10, LSR R9
l3152: and R0, R10, R9, LSL R9
l3153: muls R5, R0, R6
l3154: cmnCC R2, R3, ROR R12
l3155: andCS R10, R8, #-805306359
l3156: subGEs R8, R1, R11, LSR R5
l3157: muls R7, R6, R14
l3158: muls R5, R3, R6
l3159: sbcLS R1, R15, R4
l3160: subVS R11, R14, R8
l3161: ands R2, R2, R5, LSL R6
l3162: adcGEs R2, R12, #12779520
l3163: mulHI R0, R8, R14
l3164: subHIs R2, R7, R2, LSR #0
l3165: orrLS R12, R9, #225280
l3166: mulLS R12, R1, R9
l3167: andGT R8, R0, R14, RRX 
l3168: sbcs R12, R11, R14, LSL #29
l3169: eor R9, R6, #101
l3170: orrCCs R7, R7, R9, ASR R12
l3171: and R4, R14, R9, ASR R7
l3172: eorLSs R14, R9, R0, ASR #16
l3173: andGTs R7, R5, R10
l3174: teq R8, R8, LSR #5
l3175: mulMIs R9, R8, R2
l3176: muls R1, R9, R5
l3177: mov R8, R8, RRX 
l3178: mul R11, R2, R11
l3179: mulMIs R4, R1, R11
l3180: andMI R8, R4, R15, RRX 
l3181: muls R7, R8, R9
l3182: addVSs R11, R5, R7
l3183: mulEQs R3, R8, R7
l3184: muls R1, R4, R3
l3185: teqCS R12, R14, ASR #25
l3186: mul R7, R1, R10
l3187: mulMIs R4, R9, R11
l3188: andCCs R10, R3, #6291456
l3189: subEQs R0, R0, R2, LSR R5
l3190: orrs R2, R11, R1
l3191: mulGE R12, R7, R6
l3192: muls R2, R3, R9
l3193: muls R11, R10, R4
l3194: cmn R10, R12, ASR #24
l3195: ands R7, R11, R3, LSL R7
l3196: muls R3, R14, R14
l3197: orrNEs R6, R14, R15, ASR #0
l3198: bic R9, R15, R5
l3199: mul R3, R2, R2
l3200: mulHIs R7, R6, R5
l3201: orrs R2, R3, R15
l3202: orr R14, R9, R11, RRX 
l3203: and R10, R12, R4
l3204: rscs R11, R1, R0, LSR #10
l3205: orr R0, R0, R3, LSR R0
l3206: eor R2, R0, #101376
l3207: bics R1, R10, R12, ROR R3
l3208: mulHI R4, R9, R0
l3209: orrVS R7, R15, R3, RRX 
l3210: andGTs R7, R15, R15
l3211: add R2, R0, R9
l3212: cmn R9, R9
l3213: adcCSs R9, R1, R10
l3214: sbcGEs R14, R1, R2, LSL #1
l3215: tst R2, R10
l3216: andEQ R6, R7, R11, ASR #12
l3217: mulEQ R2, R4, R3
l3218: mulLT R9, R4, R2
l3219: andCSs R2, R14, R6, ASR #20
l3220: movs R10, R6
l3221: andCCs R8, R4, #495616
l3222: and R11, R8, #-637534208
l3223: eorNE R12, R9, R3, ROR R1
l3224: cmp R12, R7, LSL #17
l3225: andGEs R1, R10, #1610612750
l3226: muls R8, R7, R9
l3227: mul R14, R12, R14
l3228: mulNEs R4, R8, R4
l3229: mulCCs R1, R4, R12
l3230: mvnEQs R4, #13959168
l3231: muls R6, R1, R1
l3232: orrCS R5, R0, R6, LSR #5
l3233: orrVSs R4, R7, R7, LSR R3
l3234: mulGT R6, R11, R9
l3235: teqVC R7, R14, ASR R0
l3236: mulHI R1, R3, R1
l3237: orr R10, R12, #248832
l3238: orrPLs R0, R11, #56
l3239: mul R9, R6, R4
l3240: orr R10, R11, R9
l3241: ands R14, R9, R14, LSL R9
l3242: orrHIs R1, R5, R9, ROR #7
l3243: orrs R14, R5, R1, ASR R0
l3244: bicEQ R10, R12, R3
l3245: mulPLs R1, R2, R2
l3246: mulEQs R9, R11, R11
l3247: bicVS R10, R10, R3, ROR R6
l3248: eorNEs R0, R4, R12
l3249: and R3, R9, R10, RRX 
l3250: cmnCC R5, #393216
l3251: eorGEs R6, R11, #6815744
l3252: rsbCC R2, R11, R12
l3253: mulPL R14, R9, R0
l3254: cmp R9, R8
l3255: clzEQ R0, R5
l3256: eors R8, R11, R3, RRX 
l3257: andLE R4, R5, R6, RRX 
l3258: mul R8, R3, R5
l3259: mulVS R6, R11, R4
l3260: adcLT R2, R1, R6
l3261: orr R2, R15, #3328
l3262: ands R11, R8, R9, RRX 
l3263: muls R4, R10, R7
l3264: and R4, R1, R15, RRX 
l3265: orrGE R8, R11, R6, LSL R7
l3266: mul R1, R10, R6
l3267: orrs R5, R0, R3
l3268: cmpLE R4, R14, ROR #2
l3269: sub R7, R4, R1, LSL #0
l3270: andLTs R0, R9, R11, LSL R14
l3271: orrEQ R7, R8, R2
l3272: orrGEs R2, R7, R11, LSR R8
l3273: adc R2, R2, R12, LSR R7
l3274: eor R7, R6, R6, LSL R7
l3275: andGE R6, R7, R4, RRX 
l3276: cmp R0, #10092544
l3277: muls R3, R8, R2
l3278: orr R14, R10, #51456
l3279: cmnLE R3, #19456
l3280: muls R7, R3, R9
l3281: andNE R4, R15, R5, ROR #23
l3282: mulEQs R3, R10, R10
l3283: teq R3, R4
l3284: orrGEs R14, R0, R4
l3285: mulMI R4, R11, R0
l3286: rsbs R4, R15, #150994944
l3287: eors R6, R5, R2, LSL R3
l3288: mulLT R0, R5, R1
l3289: eorVSs R3, R14, R9, ASR R2
l3290: bicMIs R12, R7, R1
l3291: teq R7, R10
l3292: mulCSs R1, R6, R5
l3293: mul R0, R8, R14
l3294: teq R3, R5, RRX 
l3295: orrVS R11, R11, R8
l3296: and R11, R7, R5
l3297: clz R0, R0
l3298: cmp R1, #152576
l3299: mulGE R4, R1, R1
l3300: mul R14, R11, R4
l3301: mulLT R4, R5, R5
l3302: cmpLT R10, R3, RRX 
l3303: ands R0, R8, R6, ASR R1
l3304: sbcLT R12, R14, R12
l3305: rsb R5, R7, R11, ROR R14
l3306: muls R11, R8, R9
l3307: mulCS R11, R5, R4
l3308: rscs R1, R8, #39583744
l3309: mul R12, R5, R8
l3310: muls R6, R7, R4
l3311: adcGE R10, R2, R12
l3312: mulMIs R8, R12, R7
l3313: rscGT R0, R0, R15
l3314: ands R1, R2, R11
l3315: mul R8, R0, R3
l3316: clzCC R14, R14
l3317: movs R5, R9, ASR R4
l3318: rsbs R5, R3, R3, ASR R10
l3319: mul R2, R4, R8
l3320: muls R6, R12, R1
l3321: mulNEs R6, R1, R0
l3322: muls R10, R3, R11
l3323: sbc R12, R15, #3473408
l3324: mulPL R9, R10, R5
l3325: mulCCs R2, R10, R11
l3326: muls R8, R2, R10
l3327: orr R5, R7, R14, RRX 
l3328: orrVS R1, R8, #-1006632960
l3329: rscNE R4, R15, R4
l3330: mulEQs R7, R12, R5
l3331: mulEQ R7, R12, R10
l3332: ands R4, R0, R14, LSR R8
l3333: and R8, R15, R4, LSL #2
l3334: subCSs R1, R3, R15, RRX 
l3335: cmpVS R4, R4, ASR R1
l3336: cmnCC R8, R14
l3337: eorHI R12, R15, R2, ROR #11
l3338: mulPLs R7, R1, R0
l3339: mul R12, R9, R1
l3340: ands R5, R3, R11, LSR #12
l3341: orr R10, R12, R12, LSL #1
l3342: mul R11, R7, R5
l3343: movs R3, R1, ROR #10
l3344: mulLTs R0, R8, R10
l3345: and R7, R7, R4, LSL #13
l3346: muls R7, R6, R5
l3347: tstEQ R5, #100352
l3348: addCCs R4, R14, R9, RRX 
l3349: orrLT R12, R2, R4, LSR #6
l3350: orrCSs R4, R12, R3, LSR R5
l3351: mul R6, R7, R11
l3352: and R0, R2, R7, LSL #26
l3353: eor R5, R1, #64
l3354: orrs R8, R12, #15794176
l3355: mulVC R6, R8, R9
l3356: mulVSs R2, R7, R4
l3357: mulGT R1, R2, R12
l3358: and R6, R0, R7
l3359: sbcEQ R6, R12, #242
l3360: movVCs R8, R7, ASR R8
l3361: eorHI R0, R5, R6, LSL #28
l3362: mulCSs R7, R3, R4
l3363: muls R4, R0, R14
l3364: andEQs R3, R12, R8, ASR R1
l3365: mulLS R1, R12, R6
l3366: muls R6, R8, R6
l3367: orrGE R2, R12, R3, LSL R8
l3368: mulGT R6, R11, R12
l3369: orr R7, R12, R7, ROR R11
l3370: tst R12, R4, ROR R3
l3371: rsc R8, R5, R14
l3372: mul R14, R12, R11
l3373: muls R10, R11, R12
l3374: mulLEs R11, R14, R11
l3375: bicEQ R10, R0, R2
l3376: and R1, R9, R1, RRX 
l3377: andNEs R2, R0, R3, ASR R6
l3378: mvnGE R8, #50593792
l3379: and R11, R4, R5
l3380: eorVS R14, R15, #14528
l3381: orrs R0, R11, R15, LSL #17
l3382: clzEQ R5, R9
l3383: clz R6, R7
l3384: sbcs R5, R11, R5, ROR R8
l3385: mulHIs R1, R10, R7
l3386: bic R14, R11, R2, ROR #26
l3387: muls R0, R2, R9
l3388: mul R2, R0, R8
l3389: eorEQs R5, R11, R2, LSL R1
l3390: andGTs R0, R9, R2, LSL R9
l3391: tstHI R12, #3920
l3392: mulCSs R3, R9, R4
l3393: muls R0, R1, R14
l3394: rsc R10, R10, R9
l3395: subLEs R7, R7, R12, LSR #14
l3396: orrs R6, R1, R4
l3397: orrGT R9, R0, R6, ROR #7
l3398: muls R12, R6, R0
l3399: mulNEs R8, R14, R2
l3400: teq R5, #416
l3401: mulVS R0, R6, R8
l3402: mulLE R2, R10, R8
l3403: andVS R1, R11, R10, LSR #27
l3404: eorVSs R7, R10, #5440
l3405: tst R2, #256
l3406: and R2, R0, #2032
l3407: rsbs R11, R2, #2064
l3408: andVS R14, R4, R9
l3409: mul R5, R11, R3
l3410: muls R10, R4, R3
l3411: cmnGE R11, R10, LSR #29
l3412: movs R11, R2, LSL R14
l3413: adcs R2, R8, R10
l3414: rsb R1, R4, R1, RRX 
l3415: eor R5, R8, R4
l3416: sbcHIs R8, R4, R3, LSR R7
l3417: movs R4, R14, LSR R9
l3418: sbcCS R7, R15, R6
l3419: mul R0, R12, R3
l3420: cmp R6, R4, RRX 
l3421: mulHI R7, R10, R14
l3422: rscVC R9, R7, R6
l3423: mulCC R8, R12, R7
l3424: muls R12, R14, R7
l3425: orrCS R3, R2, #130023424
l3426: cmnVS R7, #468
l3427: eorGTs R8, R10, R2
l3428: muls R4, R0, R8
l3429: movVC R12, R1, ASR R8
l3430: mul R10, R11, R2
l3431: sub R11, R12, R0, ROR R12
l3432: mvns R6, R10, LSL #4
l3433: bicEQs R8, R1, R10, ASR #10
l3434: andLS R14, R1, R2, ROR #16
l3435: orr R2, R6, R11, ASR #25
l3436: eors R1, R7, R10
l3437: eors R10, R3, R1, LSR R14
l3438: subGT R2, R14, R2, RRX 
l3439: orrLEs R6, R10, R5, ROR R11
l3440: eors R6, R6, R2, LSL #14
l3441: mulGEs R6, R4, R9
l3442: muls R7, R12, R3
l3443: andVCs R3, R9, R3
l3444: orrs R14, R14, R3, ROR R6
l3445: cmp R11, #444
l3446: mulCSs R2, R6, R9
l3447: mov R3, R6
l3448: mulLT R12, R5, R6
l3449: eorGEs R14, R14, R0
l3450: mulVS R5, R4, R2
l3451: and R3, R1, R8
l3452: eorGE R9, R3, R1
l3453: eorEQs R14, R11, R11
l3454: adcLEs R1, R11, R1, LSL #5
l3455: subs R11, R14, R11, ROR R7
l3456: andVC R2, R11, R1, RRX 
l3457: sbcs R8, R2, R9, ASR #20
l3458: mulNEs R3, R10, R7
l3459: eors R11, R11, R14, RRX 
l3460: mulGTs R11, R12, R4
l3461: eors R3, R3, R0, ROR R0
l3462: bicVSs R5, R14, R3
l3463: mul R11, R9, R14
l3464: eor R14, R9, R5, ROR #18
l3465: tstHI R15, R7
l3466: eorLSs R6, R10, R2, RRX 
l3467: eor R1, R0, R11, RRX 
l3468: mvn R8, #8384
l3469: mul R12, R6, R1
l3470: mulNEs R9, R5, R10
l3471: eorCSs R7, R8, #1342177287
l3472: mul R7, R1, R2
l3473: andGT R2, R6, R4
l3474: mul R14, R2, R0
l3475: muls R5, R8, R12
l3476: orrEQs R14, R10, R15
l3477: rsbs R6, R5, R12, LSR #2
l3478: mulPL R1, R2, R12
l3479: mulCC R3, R10, R3
l3480: mul R2, R6, R3
l3481: mulCSs R8, R6, R10
l3482: rsbs R3, R2, #-536870912
l3483: bicVCs R0, R6, R1, LSL R8
l3484: ands R9, R14, R10, RRX 
l3485: and R14, R4, R5
l3486: orrNEs R3, R9, R8, LSR #22
l3487: eor R1, R2, R1, ROR R2
l3488: muls R6, R7, R4
l3489: rscs R11, R12, R14
l3490: movs R6, R15, ROR #20
l3491: mulCSs R12, R1, R9
l3492: andEQ R7, R9, #4390912
l3493: orrEQ R8, R14, #132
l3494: sbcs R2, R3, #832
l3495: mulCC R1, R5, R0
l3496: ands R14, R2, #1073741865
l3497: tstGT R14, R11, LSL R12
l3498: tstCS R1, R5
l3499: mulGTs R9, R0, R1
l3500: mulLT R7, R12, R7
l3501: rsbCSs R3, R10, R3
l3502: and R10, R9, R12
l3503: subLEs R14, R14, R0, LSR R6
l3504: mulMIs R0, R5, R11
l3505: mul R6, R12, R0
l3506: eorLTs R11, R2, R5, RRX 
l3507: mulVSs R11, R0, R10
l3508: rsbNEs R11, R8, R0, ROR R5
l3509: mulGTs R8, R10, R8
l3510: rscCSs R8, R10, R2, ASR #19
l3511: eors R11, R4, R1
l3512: orrMIs R10, R5, R7, LSL #2
l3513: mul R2, R14, R14
l3514: mulLE R8, R14, R3
l3515: eors R2, R11, #8388608
l3516: orrs R7, R14, R14, ASR R4
l3517: eorVS R1, R8, R15, ROR #16
l3518: rscEQs R4, R0, R12
l3519: eor R1, R3, R1, ROR #1
l3520: andNEs R11, R12, #215040
l3521: muls R5, R11, R4
l3522: eor R4, R11, R14, LSR R2
l3523: mul R1, R12, R12
l3524: adcs R4, R4, R8, ASR #22
l3525: and R2, R1, R8, LSR #9
l3526: orrs R7, R8, #251904
l3527: sbcs R10, R8, R7, ROR #12
l3528: mulLSs R8, R14, R2
l3529: and R11, R4, R5, ASR #11
l3530: mulVSs R6, R0, R0
l3531: mul R7, R3, R0
l3532: teqGE R14, R6, LSR #27
l3533: rsc R4, R5, R9, LSL R11
l3534: muls R12, R7, R11
l3535: orrNE R7, R6, #-2147483644
l3536: adcMI R14, R15, #360
l3537: muls R4, R2, R1
l3538: andPL R10, R10, R3
l3539: orrLEs R1, R5, R6, RRX 
l3540: teq R14, #1207959552
l3541: mulMI R8, R5, R6
l3542: mulVC R8, R0, R1
l3543: muls R14, R10, R5
l3544: mulLTs R6, R1, R6
l3545: muls R12, R14, R12
l3546: mul R5, R6, R11
l3547: mulVS R11, R3, R6
l3548: mul R8, R3, R3
l3549: addMI R2, R2, #1015808
l3550: mulCC R10, R1, R4
l3551: cmpCS R15, R2, RRX 
l3552: orrVCs R9, R8, R6, RRX 
l3553: andMIs R10, R2, R9
l3554: eor R5, R15, R14, RRX 
l3555: andMIs R11, R14, R2, ASR #29
l3556: mulVSs R3, R14, R4
l3557: mulPLs R6, R8, R9
l3558: mul R11, R9, R10
l3559: tst R5, R11
l3560: mulLSs R6, R3, R8
l3561: andPL R4, R2, R12, RRX 
l3562: eorVC R12, R9, #424
l3563: bicMIs R7, R4, R12, LSR #28
l3564: mulVCs R11, R14, R7
l3565: mul R5, R4, R2
l3566: and R4, R3, R8, RRX 
l3567: muls R9, R6, R7
l3568: mulEQ R3, R11, R0
l3569: eorCSs R1, R12, #-1342177275
l3570: mulLSs R4, R1, R5
l3571: clzLE R6, R8
l3572: eors R5, R6, R14
l3573: sbc R8, R3, R10, LSR R0
l3574: mulNEs R2, R6, R10
l3575: mul R5, R14, R12
l3576: mul R11, R14, R10
l3577: andCC R4, R5, R4
l3578: cmp R2, #2560
l3579: mul R5, R12, R12
l3580: muls R5, R9, R8
l3581: cmn R4, R7, ROR #21
l3582: mulHIs R5, R4, R9
l3583: mulVSs R9, R6, R12
l3584: rsbVSs R6, R4, #27648
l3585: orrCC R11, R11, R1, ROR #8
l3586: subCC R8, R6, R7, RRX 
l3587: muls R11, R7, R12
l3588: subNEs R12, R14, R12
l3589: mulEQ R7, R0, R9
l3590: mulPLs R10, R1, R9
l3591: teqLT R3, R4, LSR #9
l3592: eor R3, R5, #45088768
l3593: orrGE R6, R5, R14, RRX 
l3594: eors R9, R15, R5
l3595: teq R6, R4, ROR R5
l3596: addNE R10, R0, R3, RRX 
l3597: mulGT R6, R0, R9
l3598: cmnPL R8, #1593835520
l3599: teqCS R10, #2880
l3600: and R7, R2, R5
l3601: subs R10, R10, #436207616
l3602: orrPLs R9, R11, #13107200
l3603: cmnVC R14, R11, LSL R6
l3604: eors R14, R9, R7, LSR #15
l3605: mulCCs R8, R4, R6
l3606: eorLSs R12, R8, #1879048192
l3607: addHIs R6, R14, R4, ROR R7
l3608: mul R5, R12, R14
l3609: cmnVS R3, #603979776
l3610: bicGTs R1, R9, R9
l3611: orrLSs R10, R11, R5, ASR #8
l3612: orr R1, R2, R11, ROR #19
l3613: orrMI R7, R9, R11, ASR R7
l3614: mul R10, R12, R0
l3615: orrHI R4, R14, R10, LSL #3
l3616: orrNE R8, R4, R9, LSR R12
l3617: sbcCC R11, R3, R4, ROR R7
l3618: mulLE R5, R12, R5
l3619: and R12, R8, R8, LSL #4
l3620: eorGT R9, R6, R12, LSL R9
l3621: mulNE R4, R8, R9
l3622: adcHI R12, R7, #3
l3623: ands R3, R2, R8, ROR #19
l3624: muls R5, R6, R1
l3625: and R0, R12, R9, LSR #25
l3626: mvnNEs R11, R0
l3627: orrCCs R7, R8, R14, ROR #7
l3628: orrGE R2, R6, R7, ROR R4
l3629: andGT R5, R11, R12, LSR R8
l3630: subVSs R11, R14, R11, LSL R10
l3631: orrCSs R4, R10, #-2013265917
l3632: mulLE R6, R3, R0
l3633: mul R6, R1, R4
l3634: mulVC R10, R2, R4
l3635: movLE R2, R8
l3636: tst R8, R15
l3637: rsb R6, R7, R2, RRX 
l3638: mulLS R11, R5, R4
l3639: mul R5, R3, R2
l3640: tst R6, #44032
l3641: mulNEs R12, R0, R2
l3642: eorLE R5, R0, #106496
l3643: orrHI R14, R7, R7, ROR R10
l3644: adcPL R7, R7, #364904448
l3645: andLE R8, R3, R9
l3646: mulCCs R14, R3, R0
l3647: cmp R6, R1
l3648: clzCC R1, R8
l3649: muls R3, R6, R9
l3650: mulVS R8, R1, R6
l3651: mul R1, R10, R7
l3652: mulVS R14, R5, R6
l3653: muls R3, R0, R12
l3654: mulLS R1, R4, R6
l3655: muls R14, R12, R10
l3656: mulHIs R6, R14, R11
l3657: and R14, R12, #1056964608
l3658: eorGT R12, R5, R7, LSL R5
l3659: mul R3, R7, R2
l3660: ands R7, R6, R9, ASR #24
l3661: mulGT R10, R8, R4
l3662: orr R12, R11, R3, RRX 
l3663: adds R11, R8, R0, LSL R12
l3664: mul R11, R12, R8
l3665: cmn R11, R0, ROR R1
l3666: tstNE R4, R14, RRX 
l3667: andPL R14, R9, R7
l3668: mulLEs R12, R1, R6
l3669: mulCCs R12, R3, R3
l3670: andVSs R5, R0, #9792
l3671: mulGTs R14, R2, R9
l3672: mul R11, R12, R14
l3673: rscLE R1, R6, R1, ASR R4
l3674: sub R4, R5, R0, ROR R3
l3675: orrLTs R3, R0, R9, ROR R10
l3676: and R7, R11, R9, ASR #26
l3677: cmp R9, R5, LSR #19
l3678: subVC R5, R6, #5184
l3679: cmpPL R6, R8, LSR R10
l3680: eors R2, R3, R4, ROR #12
l3681: cmp R1, R15, LSL #21
l3682: subEQ R14, R11, R1, ROR #19
l3683: andNEs R7, R9, R4, RRX 
l3684: mulPLs R12, R10, R9
l3685: eorLEs R6, R2, R12, RRX 
l3686: orrCSs R3, R6, #26880
l3687: adcs R2, R1, R6, ROR R10
l3688: mulLTs R2, R8, R10
l3689: subCS R3, R6, R2, LSR R11
l3690: orr R11, R8, #-1073741767
l3691: eorEQ R9, R15, R9
l3692: eors R1, R1, R9, RRX 
l3693: adc R4, R1, R6, ROR #8
l3694: ands R5, R2, R5, LSR R4
l3695: movLEs R3, R9, ROR R3
l3696: mulLTs R3, R1, R9
l3697: eorPL R9, R4, R15, LSL #13
l3698: muls R6, R11, R8
l3699: mulGE R4, R6, R10
l3700: mulLSs R10, R12, R1
l3701: rscGT R14, R11, R5, LSL R6
l3702: orrLSs R7, R12, R5
l3703: mul R3, R14, R9
l3704: adc R2, R5, R12, ASR #23
l3705: cmpNE R4, R7
l3706: mulLSs R1, R11, R11
l3707: muls R8, R3, R12
l3708: rsbEQs R11, R9, R12, ASR R12
l3709: cmpMI R11, R8
l3710: mulVS R9, R6, R8
l3711: orrLT R10, R12, R7, ASR R6
l3712: eor R7, R0, R4
l3713: sbc R6, R2, R0, RRX 
l3714: mulGTs R11, R2, R0
l3715: mulLS R4, R9, R10
l3716: eor R9, R0, R11, ASR R5
l3717: andPLs R3, R8, R8
l3718: andPLs R5, R3, R8
l3719: orr R11, R14, R0, ROR #6
l3720: mul R0, R11, R9
l3721: mulNE R9, R14, R7
l3722: orrHIs R1, R1, R7, ASR R0
l3723: mul R3, R11, R3
l3724: mulPLs R0, R8, R7
l3725: adc R4, R9, R0, LSR #12
l3726: mulPLs R4, R14, R3
l3727: mul R9, R12, R5
l3728: tstLS R14, R9, LSL #12
l3729: rsbLE R1, R11, #2080768
l3730: mulLT R3, R9, R10
l3731: andNEs R1, R9, R11
l3732: eors R1, R2, R6, LSR #22
l3733: rsbs R1, R6, R7, LSR #16
l3734: mulEQ R14, R10, R12
l3735: eors R7, R0, R1, ASR #14
l3736: andVSs R4, R15, R15, LSL #23
l3737: mul R12, R0, R4
l3738: rsc R9, R2, R5, ROR R1
l3739: clzMI R9, R6
l3740: mulLS R10, R5, R7
l3741: mulHI R10, R2, R9
l3742: muls R7, R11, R3
l3743: andEQ R1, R14, R15, ROR #5
l3744: andCCs R6, R15, R0, RRX 
l3745: mul R9, R1, R0
l3746: mulGTs R5, R4, R3
l3747: cmn R1, R14
l3748: eorLT R8, R11, R11, LSL R0
l3749: addVS R1, R8, R3, LSL #0
l3750: movPL R8, #1638400
l3751: eors R11, R9, R15, LSR #29
l3752: mulLE R0, R2, R4
l3753: rscVSs R4, R10, R11, LSL #23
l3754: mulMI R14, R8, R9
l3755: eorGTs R1, R3, R12, ROR R11
l3756: mulVC R14, R11, R1
l3757: cmn R8, #184320
l3758: mulLSs R5, R1, R2
l3759: clzHI R6, R9
l3760: eorCC R9, R10, R1, ASR #19
l3761: mul R11, R2, R6
l3762: clz R12, R10
l3763: rsbLTs R3, R9, R5
l3764: subMIs R6, R2, #51380224
l3765: ands R6, R9, #393216
l3766: cmn R10, R8, LSR R0
l3767: mul R9, R12, R8
l3768: mvnPL R0, R9, ASR R2
l3769: sub R9, R0, #8585216
l3770: adcLE R10, R6, R4, ROR R1
l3771: mulLTs R14, R6, R2
l3772: mulVCs R6, R10, R2
l3773: muls R8, R3, R14
l3774: mulPLs R12, R0, R6
l3775: orrCSs R5, R9, #3568
l3776: tstPL R9, R14, LSR #13
l3777: andNEs R10, R7, R14
l3778: mul R12, R5, R10
l3779: orr R4, R9, R14, RRX 
l3780: mulNE R2, R12, R9
l3781: tst R5, R15
l3782: mulGTs R10, R3, R11
l3783: andGTs R12, R15, R14
l3784: rsc R12, R3, #-1073741814
l3785: cmpEQ R6, R0, LSL #29
l3786: eors R14, R14, #213909504
l3787: adds R3, R1, #390070272
l3788: movs R1, #348160
l3789: andPLs R9, R7, R14, RRX 
l3790: orr R4, R6, R4, RRX 
l3791: teq R2, R7
l3792: eorMIs R6, R10, R6
l3793: mulCCs R9, R6, R14
l3794: mul R0, R6, R0
l3795: andGT R5, R11, R7, LSL #22
l3796: teq R1, R5, ROR #25
l3797: orr R12, R6, R0, ROR R8
l3798: teq R7, R2
l3799: cmp R1, #856064
l3800: mul R10, R0, R4
l3801: muls R2, R0, R1
l3802: andGEs R3, R11, R1, LSL #11
l3803: bic R0, R8, R10, LSR #8
l3804: orrLS R11, R12, R3, LSR #10
l3805: mulGT R5, R2, R8
l3806: ands R7, R4, R10, RRX 
l3807: orrLS R8, R15, #3
l3808: eors R12, R12, R0, LSR #11
l3809: mulCS R5, R1, R5
l3810: sbc R2, R11, R14
l3811: orrs R6, R0, R14, ROR R5
l3812: andLT R7, R0, R9, LSL #20
l3813: mulCCs R11, R14, R1
l3814: mulPLs R3, R12, R8
l3815: muls R11, R9, R3
l3816: adcNEs R11, R7, R10
l3817: mulCSs R8, R11, R3
l3818: rscCCs R0, R11, #276824064
l3819: eor R1, R10, R14, LSL #22
l3820: addVCs R8, R5, R10
l3821: cmnGE R4, R15, RRX 
l3822: mul R10, R9, R10
l3823: and R10, R8, #50593792
l3824: tst R1, R5, LSL #17
l3825: andNE R12, R6, #21760
l3826: andMI R4, R1, R15, RRX 
l3827: muls R4, R3, R3
l3828: eorLT R9, R15, R4, RRX 
l3829: mulCSs R8, R9, R14
l3830: andLS R6, R6, R12, ROR #14
l3831: mul R0, R6, R3
l3832: orrCSs R1, R3, R4
l3833: mulLEs R14, R10, R5
l3834: andMI R5, R11, R14, LSR #18
l3835: mulVCs R3, R5, R1
l3836: and R4, R12, R1, LSR R6
l3837: orrCC R12, R15, #239
l3838: mul R6, R1, R4
l3839: andNEs R10, R1, R2, LSR R8
l3840: rscMIs R11, R15, R6, LSL #3
l3841: rscLSs R8, R9, R9, ASR R6
l3842: mulGE R5, R4, R2
l3843: andPL R8, R12, R0
l3844: mul R7, R9, R14
l3845: mul R6, R9, R12
l3846: bics R3, R9, R8
l3847: muls R3, R7, R1
l3848: clzGT R6, R3
l3849: clz R0, R1
l3850: mul R0, R8, R7
l3851: eorPLs R7, R2, R8, LSL R9
l3852: eorPL R8, R3, R10, LSR R2
l3853: mulLSs R14, R6, R6
l3854: movGTs R7, R4, ASR #3
l3855: sbcCC R8, R9, #44564480
l3856: mulEQs R6, R5, R6
l3857: eors R5, R0, R2, LSR #24
l3858: bicLT R3, R15, #44032
l3859: mulGE R8, R3, R5
l3860: mvnCS R5, R14, LSR #31
l3861: and R8, R10, R8, LSR R3
l3862: mulGEs R5, R2, R12
l3863: muls R11, R14, R11
l3864: subs R1, R1, #54263808
l3865: mvnHIs R14, R8
l3866: subNEs R6, R14, R1, ROR #27
l3867: orrGTs R1, R12, R2, ASR #30
l3868: mvns R0, R4, RRX 
l3869: adc R11, R9, R12, LSR R12
l3870: mvns R6, #17920
l3871: adcCSs R4, R9, R11
l3872: andVSs R7, R9, R2
l3873: muls R6, R7, R6
l3874: mulCCs R5, R3, R14
l3875: rsbs R0, R6, R10, ROR R8
l3876: mulNEs R3, R11, R1
l3877: eorPL R1, R5, #53477376
l3878: mulHIs R9, R3, R9
l3879: eors R14, R0, #5760
l3880: rscLE R8, R15, #201728
l3881: rscLTs R9, R11, R14, ASR #12
l3882: orrVCs R5, R10, #116736
l3883: mulVC R9, R14, R3
l3884: orr R5, R15, #9408
l3885: mvnCS R6, #51642368
l3886: mulNE R2, R1, R2
l3887: mulLEs R8, R14, R6
l3888: rsbVSs R7, R15, R11
l3889: mulVCs R10, R11, R1
l3890: and R9, R12, #36175872
l3891: eors R11, R3, R0, LSR R8
l3892: rsbLEs R1, R3, R10, RRX 
l3893: and R0, R11, #-1459617792
l3894: andGT R4, R15, R14
l3895: orr R0, R9, R5, RRX 
l3896: orr R8, R5, R12, ROR #11
l3897: andNE R8, R1, #780140544
l3898: mulEQs R7, R2, R8
l3899: mul R2, R7, R12
l3900: cmpGT R8, R10, ROR R3
l3901: adcMI R12, R15, R11, LSR #20
l3902: and R11, R7, #5632
l3903: adcLSs R14, R9, R0, LSR R10
l3904: mulVS R9, R4, R8
l3905: cmnEQ R9, R9, RRX 
l3906: eorCS R2, R10, R14, LSR R4
l3907: muls R5, R1, R6
l3908: and R3, R8, R11
l3909: mulGTs R12, R6, R0
l3910: addHIs R8, R11, R8, ASR #15
l3911: mulHIs R8, R12, R3
l3912: orrs R4, R15, R9, ASR #7
l3913: and R0, R9, R5, ASR #13
l3914: orrCSs R7, R3, R12, ASR #11
l3915: muls R11, R10, R3
l3916: mul R11, R14, R8
l3917: mulCC R10, R6, R7
l3918: tstLT R3, R2
l3919: adds R9, R1, #1073741833
l3920: andPLs R3, R12, #3276800
l3921: andNEs R12, R5, R14, ROR #16
l3922: mvnEQs R3, R0
l3923: subGE R14, R9, #18432
l3924: mulNE R11, R6, R5
l3925: muls R0, R9, R1
l3926: sub R6, R15, R9, RRX 
l3927: sbc R5, R5, R2
l3928: sub R5, R5, R3
l3929: ands R7, R3, R3
l3930: orrNEs R6, R4, R2
l3931: muls R0, R8, R0
l3932: cmn R10, R14, LSR R6
l3933: subCCs R0, R15, R4, RRX 
l3934: mov R0, R6, RRX 
l3935: mulLSs R10, R8, R11
l3936: mulGT R8, R3, R7
l3937: orrCC R12, R6, R14, ASR #28
l3938: cmn R7, R8, ROR R9
l3939: mul R4, R8, R9
l3940: sub R10, R4, R2, LSR R3
l3941: eorCS R4, R6, #-1073741782
l3942: mulLS R12, R10, R2
l3943: orrs R5, R10, R4
l3944: mulCSs R1, R5, R8
l3945: mulGT R10, R8, R6
l3946: muls R1, R3, R14
l3947: clz R8, R5
l3948: eor R0, R5, R1, ASR R7
l3949: cmp R8, R2, ASR R1
l3950: mulNEs R9, R14, R1
l3951: orrMI R4, R2, R14, LSR #20
l3952: tst R9, R3
l3953: mulVSs R10, R0, R10
l3954: muls R8, R0, R11
l3955: mvn R3, R5, LSL R6
l3956: muls R9, R14, R9
l3957: eors R12, R1, R0
l3958: addHIs R9, R5, R1, ROR R0
l3959: mulCC R8, R2, R2
l3960: sbcs R7, R6, R12, LSR #4
l3961: mulNE R9, R5, R7
l3962: teqGE R2, #394264576
l3963: mulLEs R9, R5, R12
l3964: clz R9, R7
l3965: muls R5, R1, R12
l3966: addLS R11, R4, R4, RRX 
l3967: and R3, R14, R4, LSL #22
l3968: andLT R9, R11, R3, LSL R6
l3969: muls R10, R1, R10
l3970: eorCS R1, R15, #947912704
l3971: mulCSs R8, R9, R7
l3972: mulGEs R3, R9, R12
l3973: clz R8, R4
l3974: orrLTs R10, R9, R7, ASR #27
l3975: addLT R14, R2, R1
l3976: orrLS R10, R3, R10, RRX 
l3977: mul R11, R14, R10
l3978: muls R10, R0, R14
l3979: mul R5, R0, R4
l3980: muls R3, R9, R12
l3981: mulNEs R2, R11, R12
l3982: cmnEQ R10, R0
l3983: mulPL R3, R5, R5
l3984: mulLEs R2, R5, R8
l3985: adcEQ R1, R3, #960
l3986: eorEQ R9, R5, R12
l3987: eorMIs R1, R2, R11, LSL #25
l3988: andHI R2, R11, #57600
l3989: mvnEQs R8, R12, RRX 
l3990: tst R5, R0, LSR R3
l3991: muls R8, R1, R9
l3992: mul R9, R0, R3
l3993: muls R7, R14, R5
l3994: addNE R9, R8, R10, RRX 
l3995: mulNEs R10, R6, R3
l3996: ands R2, R14, #50432
l3997: muls R4, R14, R6
l3998: andEQ R14, R0, #11730944
l3999: tstHI R3, #1120
l4000: mulGE R9, R1, R1
l4001: teq R4, R0, ASR R10
l4002: mulLS R10, R9, R6
l4003: mulMIs R9, R14, R8
l4004: orrs R6, R2, R0
l4005: mul R12, R11, R5
l4006: mulLS R5, R7, R4
l4007: cmp R5, R7, ASR R3
l4008: muls R3, R7, R2
l4009: eors R5, R15, R3
l4010: teqCC R1, #10
l4011: cmpMI R7, R4, LSR R9
l4012: sbcVCs R0, R2, R14, LSL R11
l4013: mul R5, R12, R14
l4014: mulCSs R1, R3, R2
l4015: sub R9, R2, R5, LSL R9
l4016: mulHIs R6, R7, R7
l4017: andLSs R5, R10, R7
l4018: mulHIs R9, R1, R9
l4019: mulGE R0, R1, R6
l4020: addLSs R12, R2, #759169024
l4021: eorHIs R11, R2, R6, LSR R3
l4022: teq R4, R9
l4023: rscHIs R9, R8, #6291456
l4024: bic R5, R15, R15
l4025: mulHI R3, R11, R8
l4026: and R7, R8, #-1342177277
l4027: muls R9, R14, R1
l4028: clzVS R5, R8
l4029: sbcLTs R12, R0, R14, LSL R5
l4030: orrLE R6, R3, R10, LSR #19
l4031: eor R2, R5, #185597952
l4032: muls R3, R14, R7
l4033: mulLEs R0, R5, R1
l4034: subVCs R1, R9, #2621440
l4035: mulPLs R2, R3, R3
l4036: muls R11, R12, R3
l4037: mul R1, R0, R6
l4038: mulGT R2, R10, R4
l4039: and R8, R9, #1024
l4040: mul R4, R10, R14
l4041: eorVS R8, R8, #3276800
l4042: andVS R9, R1, R3
l4043: mul R1, R7, R14
l4044: sbc R5, R1, R7, LSL #0
l4045: eor R11, R4, R10, LSR #11
l4046: orrPL R5, R1, R2
l4047: mul R2, R9, R9
l4048: orrLS R2, R1, R15
l4049: muls R8, R10, R11
l4050: eors R14, R3, R7, RRX 
l4051: andLTs R3, R1, R8, ROR R6
l4052: eor R2, R14, R14, LSR R9
l4053: andLSs R2, R12, R7
l4054: mov R14, #16252928
l4055: mul R14, R1, R9
l4056: adcLSs R4, R3, R1
l4057: ands R12, R11, R15, ASR #10
l4058: andCSs R10, R15, #148897792
l4059: and R0, R4, R11, LSL #9
l4060: tst R12, #232
l4061: mul R3, R0, R7
l4062: sbcVC R14, R3, R11, LSL #10
l4063: eor R0, R2, R10, LSL R14
l4064: andVSs R14, R0, R0
l4065: tstLE R1, R5
l4066: orrEQ R7, R12, #1073741826
l4067: sbcCS R11, R12, R9, ROR #17
l4068: mulHI R1, R12, R3
l4069: subGEs R4, R9, R8, LSL #19
l4070: and R12, R10, #114
l4071: movs R14, #16384
l4072: clz R8, R1
l4073: mvns R14, R6, ROR #24
l4074: rsbGEs R2, R7, R1, RRX 
l4075: tst R15, R1, LSL #24
l4076: orrPLs R4, R3, R12, LSR R9
l4077: cmnCC R2, #380928
l4078: andNEs R7, R15, R10, ASR #14
l4079: clzLE R7, R8
l4080: orrLS R12, R8, R10, RRX 
l4081: mov R3, R1
l4082: andEQ R14, R2, R14, ROR #24
l4083: orr R10, R11, R3, LSL R4
l4084: mulEQs R14, R4, R10
l4085: teqVC R1, #3536
l4086: mulNEs R14, R2, R7
l4087: andNEs R7, R1, #27392
l4088: mulLEs R4, R3, R7
l4089: mulPL R2, R4, R6
l4090: eor R8, R3, R14, ROR R5
l4091: mul R0, R3, R11
l4092: orrMIs R10, R4, R12, ROR #8
l4093: muls R0, R2, R6
l4094: eorGE R7, R4, R5
l4095: ands R6, R9, R7, LSR #21
l4096: rscLS R1, R8, R10, LSR R7
l4097: mulNE R5, R7, R7
l4098: cmnCS R0, #8650752
l4099: mulMIs R0, R1, R9
l4100: tst R12, #1073741867
l4101: and R7, R14, #839680
l4102: orrLSs R10, R12, R7, LSR #26
l4103: rscs R6, R9, R10, ROR #14
l4104: eors R2, R7, #8000
l4105: andLS R11, R14, R0
l4106: eors R10, R7, R6, RRX 
l4107: tst R14, R15, LSR #26
l4108: mulMI R5, R4, R0
l4109: orrLE R9, R6, R2, ASR R4
l4110: mul R0, R12, R0
l4111: clz R7, R9
l4112: mulLSs R9, R1, R2
l4113: add R1, R10, R2
l4114: adcPL R0, R5, #3260416
l4115: movHIs R14, R6, ROR #17
l4116: mul R6, R5, R6
l4117: orrEQ R8, R4, R1
l4118: eor R7, R1, #239616
l4119: orr R11, R0, R5
l4120: mul R14, R7, R12
l4121: andHI R10, R2, R0
l4122: mulLTs R10, R8, R1
l4123: cmnHI R10, #1888
l4124: movHI R4, R4, LSR R10
l4125: eorHIs R2, R6, R7
l4126: teqGE R6, #966656
l4127: ands R8, R1, R1, RRX 
l4128: mulEQs R10, R4, R6
l4129: ands R5, R8, R9, LSL #9
l4130: eorHI R8, R2, R11
l4131: addCSs R8, R3, R0, LSL R11
l4132: orr R11, R14, #130048
l4133: sbcCS R7, R6, R2, ASR #28
l4134: mul R8, R5, R0
l4135: and R2, R6, R3, LSR R6
l4136: clzLE R7, R9
l4137: ands R12, R14, R5, LSR R12
l4138: mulMI R12, R3, R4
l4139: cmp R10, R0, ASR R1
l4140: mulLTs R7, R3, R14
l4141: andHIs R0, R14, R10, LSR R6
l4142: andGT R0, R12, #2031616
l4143: tstMI R2, R6, RRX 
l4144: mulVC R9, R12, R12
l4145: mulEQ R9, R8, R11
l4146: rscCSs R9, R15, R15
l4147: and R0, R4, R6
l4148: adds R1, R8, #981467136
l4149: eors R9, R1, R3, LSR #21
l4150: mulPL R10, R3, R11
l4151: eor R2, R3, R14, ROR R14
l4152: tst R2, R14, RRX 
l4153: rscCCs R4, R0, R8
l4154: cmnCC R0, R3
l4155: cmn R3, R10, ROR #2
l4156: mulCS R11, R7, R3
l4157: andPLs R12, R14, R0, LSR R6
l4158: mul R7, R14, R5
l4159: mov R0, R4
l4160: orrLTs R3, R5, R2, LSL R11
l4161: orrs R14, R6, #158334976
l4162: orrs R1, R3, R3, ASR R11
l4163: cmpLS R8, #173
l4164: sub R3, R4, R14, LSR #21
l4165: cmnGE R2, R5, LSR #23
l4166: adcs R8, R8, R7, RRX 
l4167: mulGEs R5, R10, R2
l4168: sbcVCs R4, R7, #5888
l4169: clzCS R11, R12
l4170: mulEQs R4, R3, R9
l4171: eor R11, R14, R0, LSL R10
l4172: rsbs R4, R4, R3, ASR #21
l4173: muls R8, R1, R14
l4174: addGEs R0, R8, R9
l4175: muls R4, R8, R3
l4176: cmp R14, #56098816
l4177: eorHI R8, R15, R9, ASR #26
l4178: teqVC R8, #115712
l4179: muls R6, R3, R14
l4180: rscVS R14, R12, R1, RRX 
l4181: teqLS R5, R12
l4182: and R8, R12, R6, LSR #20
l4183: adcs R9, R12, #57409536
l4184: subGEs R4, R1, R1
l4185: sub R5, R4, R6
l4186: mvn R10, R2, LSL R4
l4187: mulVC R9, R8, R7
l4188: rscHI R0, R5, R10
l4189: mul R6, R11, R14
l4190: ands R0, R12, R10
l4191: muls R3, R12, R1
l4192: andGTs R5, R0, R4
l4193: adc R5, R2, R5, LSL R1
l4194: sub R11, R3, R15
l4195: clzLS R10, R12
l4196: mulNE R3, R0, R9
l4197: andMIs R12, R12, R0, ROR R5
l4198: clzLS R7, R6
l4199: muls R6, R2, R10
l4200: orrLEs R6, R3, R2, LSR R12
l4201: mvn R5, R7
l4202: rsb R1, R5, R5, ASR R3
l4203: eorLT R8, R10, R3, LSL R11
l4204: mulVSs R3, R1, R10
l4205: orrLTs R10, R8, R11, ASR R12
l4206: orrs R6, R4, #-1610612734
l4207: cmpLT R1, #1056
l4208: adds R10, R9, #3244032
l4209: eors R0, R0, R6, LSL R7
l4210: rscs R5, R8, #134
l4211: eorLE R11, R9, R9, ROR #11
l4212: cmn R2, #598016
l4213: ands R14, R0, #12451840
l4214: cmn R6, #2272
l4215: ands R6, R11, R15, ROR #26
l4216: and R14, R10, R1
l4217: addMI R2, R6, R6, LSR R5
l4218: and R3, R3, R5, LSL R11
l4219: andVCs R5, R9, R12, LSR #14
l4220: mulGT R2, R12, R10
l4221: add R9, R7, #2013265920
l4222: mulVSs R3, R5, R6
l4223: mulHI R5, R4, R14
l4224: and R9, R14, R12, ASR R2
l4225: andGEs R1, R3, R4, RRX 
l4226: mul R9, R10, R10
l4227: andEQ R2, R11, R10, ASR R1
l4228: movMIs R0, R14, LSL R3
l4229: mulCC R2, R4, R2
l4230: muls R1, R8, R3
l4231: andGEs R11, R6, R12
l4232: clz R1, R12
l4233: mulGEs R11, R10, R0
l4234: adcs R6, R5, #1006632963
l4235: teqNE R10, R12, ROR R1
l4236: sbcs R14, R6, #219152384
l4237: mulLE R9, R3, R7
l4238: eor R3, R6, R15, LSL #15
l4239: muls R5, R7, R9
l4240: andPL R7, R10, R3, LSL R5
l4241: eorEQs R10, R0, R14, ROR #9
l4242: movHI R8, R3, ROR R2
l4243: mulNEs R7, R1, R2
l4244: mulHIs R8, R14, R4
l4245: eor R3, R9, R14
l4246: eorHI R7, R1, #388
l4247: andGTs R9, R6, R9, ROR #28
l4248: ands R4, R8, #720896
l4249: and R11, R14, R1, ASR R8
l4250: mulGTs R6, R14, R10
l4251: mulPL R11, R3, R2
l4252: orrCS R6, R10, R1, LSL R1
l4253: andGE R11, R11, R4, RRX 
l4254: eor R4, R5, #112
l4255: mul R14, R12, R2
l4256: andLE R0, R2, R0
l4257: rsbGEs R0, R3, R12, RRX 
l4258: eor R9, R3, R5, LSR R11
l4259: adcs R10, R2, R1
l4260: and R10, R4, R0, ASR #28
l4261: clz R2, R1
l4262: bicVS R1, R14, R11, LSL #11
l4263: orrVSs R8, R0, R7, LSL R4
l4264: sbc R8, R4, R7, RRX 
l4265: muls R10, R12, R3
l4266: eors R8, R10, R3
l4267: movs R0, R14
l4268: mulVC R9, R5, R3
l4269: cmn R2, R8, LSL R0
l4270: mulMI R14, R2, R2
l4271: teq R12, #1862270976
l4272: sbcVSs R7, R7, #815104
l4273: eorLSs R8, R8, R8, ASR #27
l4274: subLT R11, R4, R12
l4275: orrLEs R5, R2, R6, LSR #25
l4276: subLEs R1, R7, R14
l4277: orrLSs R4, R0, R12
l4278: tstLT R10, R6, RRX 
l4279: mul R7, R4, R12
l4280: rscCSs R12, R2, #-536870906
l4281: rscs R4, R5, R1, RRX 
l4282: mulGEs R6, R4, R8
l4283: add R12, R1, R1, ROR R0
l4284: eors R10, R4, R5
l4285: and R1, R7, R0, LSR R9
l4286: mulLT R2, R0, R4
l4287: addVS R12, R10, #-805306357
l4288: andLS R0, R2, R12
l4289: orrVSs R9, R3, R11, LSL #5
l4290: mul R10, R12, R11
l4291: bicMIs R12, R4, R1
l4292: orrLE R7, R9, R5
l4293: mulCCs R3, R5, R2
l4294: eor R11, R12, R4
l4295: eors R2, R7, R6, LSR #30
l4296: orrs R2, R8, R3
l4297: muls R1, R2, R12
l4298: mulLS R6, R11, R9
l4299: mvns R11, R10, ASR R1
l4300: teq R15, R6
l4301: mul R5, R0, R3
l4302: ands R0, R15, R5
l4303: mulCC R9, R8, R2
l4304: and R8, R3, #921600
l4305: rscVC R8, R7, #28
l4306: andGEs R0, R15, R5, RRX 
l4307: adc R14, R12, R4, ASR R3
l4308: movVCs R11, R1, ASR #28
l4309: mulLEs R2, R8, R11
l4310: mul R9, R14, R10
l4311: eors R12, R2, R5, ROR #7
l4312: mul R11, R0, R11
l4313: muls R6, R9, R12
l4314: andVSs R2, R4, R1, RRX 
l4315: add R1, R8, R12
l4316: subMIs R7, R14, R3, LSL R9
l4317: mulCSs R10, R1, R6
l4318: eorEQs R2, R15, R4
l4319: eor R5, R6, R5, LSR #29
l4320: mulCS R7, R10, R12
l4321: mvnVS R3, R3, ROR #12
l4322: subCC R1, R7, R5
l4323: muls R6, R5, R8
l4324: ands R9, R11, R14, ASR R8
l4325: mvnLE R7, R12, LSL #3
l4326: orrs R2, R10, #114688
l4327: orr R7, R2, R4, LSR R6
l4328: tst R0, R0, RRX 
l4329: tst R7, R11, ASR R1
l4330: mulLE R5, R11, R7
l4331: subCCs R6, R11, R8, RRX 
l4332: orrLEs R7, R12, R9, LSR R3
l4333: mulLT R12, R1, R10
l4334: mulMI R0, R12, R4
l4335: eorVCs R11, R2, R14
l4336: sbcHIs R8, R2, R10
l4337: mulEQs R7, R8, R12
l4338: muls R9, R4, R5
l4339: mulLSs R10, R6, R4
l4340: subLTs R11, R8, R14, LSL #23
l4341: mulCCs R3, R8, R8
l4342: eor R14, R3, R14, RRX 
l4343: mul R1, R7, R0
l4344: sub R14, R5, #5570560
l4345: mul R8, R14, R10
l4346: andHIs R10, R4, #207618048
l4347: mvns R5, R12
l4348: mulCSs R2, R7, R5
l4349: orrLE R9, R2, #-2147483603
l4350: rscCS R0, R0, R11
l4351: orr R6, R5, #1879048194
l4352: orrGTs R4, R15, #20480
l4353: mulMIs R10, R9, R14
l4354: mulVCs R9, R6, R6
l4355: andCCs R12, R3, R15, RRX 
l4356: eorEQ R8, R8, R11, ROR R3
l4357: bic R7, R11, #1736704
l4358: muls R4, R1, R6
l4359: orr R12, R0, R2, ROR R10
l4360: eorCCs R6, R1, #171966464
l4361: mul R5, R8, R6
l4362: andGT R5, R15, #46923776
l4363: clzVC R0, R10
l4364: eors R12, R11, #63488
l4365: mul R8, R1, R0
l4366: eor R10, R12, #49152
l4367: mulGTs R14, R6, R14
l4368: mulCCs R5, R11, R11
l4369: muls R12, R10, R12
l4370: bics R4, R1, R7
l4371: orr R4, R2, #187
l4372: teqEQ R10, R12, ROR #21
l4373: mulLTs R1, R14, R10
l4374: mulNEs R9, R1, R10
l4375: cmn R4, R3, ROR #13
l4376: orrGTs R9, R0, R2, ROR R1
l4377: rscMI R0, R5, #3735552
l4378: muls R2, R14, R0
l4379: mvnGEs R11, R8, ROR #29
l4380: mul R12, R10, R11
l4381: orrGT R3, R14, R8, LSR R12
l4382: orrs R12, R1, #268435458
l4383: muls R11, R3, R0
l4384: movCCs R6, R1
l4385: mulNE R1, R2, R10
l4386: mulPL R6, R1, R11
l4387: mulLS R6, R9, R5
l4388: andGT R4, R0, #3168
l4389: and R11, R10, #10420224
l4390: mul R3, R7, R8
l4391: clzHI R4, R2
l4392: andCCs R2, R2, R12, RRX 
l4393: adcs R10, R3, R3
l4394: and R9, R10, R11, ASR #17
l4395: adcCS R10, R2, R15, RRX 
l4396: cmp R15, R14
l4397: muls R12, R4, R0
l4398: movLT R3, R1, ASR R11
l4399: bic R10, R12, R9, LSL R10
l4400: clzGT R2, R10
l4401: movGTs R7, R0, LSR R7
l4402: movCSs R0, R0, LSL R7
l4403: ands R2, R10, #7143424
l4404: subGT R1, R5, R11, LSR R11
l4405: andLE R4, R4, R4
l4406: mulLTs R0, R12, R7
l4407: tst R8, R14, LSR R3
l4408: movGT R10, R1
l4409: mul R5, R6, R9
l4410: eor R1, R14, R14
l4411: rscNE R9, R14, R14, ROR #28
l4412: teqGT R8, R3, LSR R9
l4413: eors R6, R4, R1, RRX 
l4414: orrGEs R6, R4, #3168
l4415: muls R9, R11, R8
l4416: eorLE R0, R14, R7, ASR R8
l4417: orr R5, R11, R14, RRX 
l4418: eorCSs R9, R5, #2000
l4419: movs R5, #1024
l4420: clz R2, R5
l4421: cmnPL R0, R4
l4422: mulLTs R9, R7, R11
l4423: orr R2, R3, R11
l4424: addLEs R2, R5, R2
l4425: mulGEs R1, R5, R12
l4426: clzPL R3, R10
l4427: andCC R8, R5, #18688
l4428: mul R0, R2, R3
l4429: rsb R7, R15, R3, LSR #30
l4430: eorVC R0, R4, #-1275068415
l4431: eor R1, R6, R7
l4432: subNEs R2, R14, #-1073741772
l4433: rscCCs R0, R11, #761856
l4434: cmnHI R6, R12
l4435: mul R1, R10, R12
l4436: muls R9, R2, R11
l4437: orrVSs R3, R5, R7, LSL #2
l4438: mul R5, R2, R5
l4439: mul R7, R1, R6
l4440: mulGT R6, R0, R5
l4441: andNEs R2, R2, R4, RRX 
l4442: ands R4, R15, R3
l4443: adc R2, R7, R14
l4444: rsc R2, R10, R14
l4445: mulCS R14, R12, R1
l4446: rscVSs R0, R2, R10, LSL #18
l4447: mulEQs R5, R9, R10
l4448: mul R14, R3, R4
l4449: orr R12, R8, R3, ASR #25
l4450: mulPLs R11, R0, R10
l4451: movs R2, R14
l4452: subMIs R11, R4, R2, LSR R8
l4453: orr R14, R2, R3
l4454: muls R2, R7, R3
l4455: muls R6, R1, R10
l4456: and R11, R0, #-1073741804
l4457: movs R0, #0
l4458: mulCC R14, R11, R7
l4459: mulCCs R12, R2, R1
l4460: and R3, R1, R10
l4461: mulVC R6, R1, R8
l4462: mulGTs R2, R4, R5
l4463: andCC R3, R9, R1
l4464: subPL R6, R7, R10
l4465: adcLTs R11, R5, R0
l4466: andVC R3, R6, #7872
l4467: mvnGT R14, R1, RRX 
l4468: orrNEs R3, R5, R2, ASR #20
l4469: orrLT R8, R15, #68157440
l4470: cmpCS R12, R14
l4471: and R4, R9, R12, ASR #22
l4472: mulGTs R1, R7, R0
l4473: bics R6, R1, R15
l4474: cmp R9, R6
l4475: mulVCs R9, R1, R7
l4476: mulEQ R8, R11, R7
l4477: orrPLs R14, R9, #113
l4478: mul R2, R5, R5
l4479: eorVS R14, R14, R11
l4480: rscLSs R8, R5, R1
l4481: rscs R9, R6, R15, RRX 
l4482: mul R6, R11, R0
l4483: muls R11, R0, R2
l4484: rscLSs R12, R8, R8
l4485: mulVS R9, R11, R2
l4486: muls R2, R6, R8
l4487: mulPL R0, R10, R6
l4488: subLTs R4, R11, R3
l4489: andLEs R9, R7, R10, LSL #12
l4490: muls R8, R3, R5
l4491: andMI R1, R14, R2, ROR R4
l4492: mulGT R3, R6, R9
l4493: eorLT R1, R3, R2, LSR R2
l4494: orrVCs R7, R1, #261120
l4495: mulCSs R0, R10, R10
l4496: eorGEs R14, R5, R12
l4497: mul R3, R7, R2
l4498: mulNEs R11, R0, R10
l4499: eors R4, R6, R15, RRX 
l4500: ands R10, R8, R11, LSR R2
l4501: adcCCs R6, R7, R15
l4502: mulPLs R9, R7, R2
l4503: andCCs R0, R11, R14, LSR #10
l4504: eors R2, R3, R14
l4505: rscs R1, R6, R7
l4506: adcEQs R7, R14, R8, RRX 
l4507: mul R3, R11, R9
l4508: eor R5, R15, R9, LSL #3
l4509: rsc R5, R15, #2228224
l4510: and R12, R2, #81920
l4511: teqGT R5, R11
l4512: tst R14, R0
l4513: cmnEQ R4, R8, RRX 
l4514: orrLE R4, R1, R3, ROR R8
l4515: mvnLTs R2, R6, ASR R0
l4516: eorNE R2, R6, #96256
l4517: eor R0, R3, R8
l4518: andPL R8, R14, R8
l4519: mvnVSs R8, R4
l4520: mulVS R11, R4, R10
l4521: mvnPL R12, R6
l4522: orrLEs R0, R2, R0
l4523: muls R8, R6, R0
l4524: mul R6, R7, R11
l4525: tst R0, #16121856
l4526: mulCC R9, R12, R10
l4527: mvnGT R6, R1, ASR #23
l4528: rscLE R8, R3, R10, ROR R12
l4529: bic R7, R0, #3952
l4530: mvn R3, R12, ASR R14
l4531: rsb R14, R0, R7, LSR R8
l4532: andEQ R7, R11, #34048
l4533: eor R12, R11, R8, ROR R4
l4534: andHI R5, R1, R3, ROR #13
l4535: eorPLs R9, R1, R3, ASR R4
l4536: eorNE R7, R0, #139264
l4537: mulVC R7, R10, R5
l4538: subMIs R10, R6, R8, ASR #30
l4539: muls R3, R11, R8
l4540: subLSs R9, R14, #1073741864
l4541: sub R2, R14, R11, LSL R14
l4542: mulLTs R12, R3, R7
l4543: mul R4, R0, R6
l4544: andNEs R7, R4, R3, ROR #9
l4545: muls R1, R8, R9
l4546: andCCs R12, R3, R9
l4547: eorNEs R1, R7, R0, LSL #11
l4548: orrMIs R12, R6, R9, ASR R8
l4549: orrGT R12, R7, #2688
l4550: mvnNE R2, R8
l4551: eorCCs R11, R0, #432
l4552: mulCCs R4, R1, R9
l4553: subs R11, R0, R15, RRX 
l4554: eorVSs R11, R15, R11, ROR #30
l4555: eor R8, R12, R11, ASR R8
l4556: mulPLs R2, R1, R3
l4557: eor R4, R15, #268435458
l4558: subNE R8, R8, R1
l4559: mulEQ R10, R1, R11
l4560: subLE R0, R14, R0, LSL #29
l4561: eorLT R4, R1, R2, LSR #3
l4562: orrs R4, R6, #54272
l4563: andMI R7, R9, #587202560
l4564: subNE R0, R1, #-570425344
l4565: eors R7, R9, R10, RRX 
l4566: clzGE R1, R2
l4567: eors R14, R11, #27262976
l4568: tst R8, R10, ASR R11
l4569: sbcVCs R4, R7, R1, ROR #16
l4570: bicLEs R3, R1, R6
l4571: mul R8, R14, R14
l4572: muls R0, R6, R14
l4573: sbcs R2, R11, R7, ROR #6
l4574: subLTs R6, R6, #8320
l4575: orrs R8, R10, #22528
l4576: tstVS R3, #53248
l4577: clz R10, R0
l4578: adcs R2, R11, R3
l4579: eors R10, R6, R2, LSL R5
l4580: andNE R8, R3, #300
l4581: mulGEs R14, R3, R11
l4582: orrGT R2, R15, R2, RRX 
l4583: mulGE R14, R8, R12
l4584: sub R4, R15, R8
l4585: adcVSs R10, R10, R14
l4586: orr R8, R14, #352321536
l4587: mul R11, R7, R5
l4588: muls R12, R1, R3
l4589: cmnEQ R8, #6553600
l4590: muls R5, R9, R2
l4591: eor R4, R11, R5, LSR R12
l4592: eorVSs R6, R12, R3
l4593: rsbVCs R9, R8, #5376
l4594: bicEQs R4, R15, #1
l4595: addLEs R10, R3, R4, ROR #3
l4596: rscEQs R0, R4, R10, ROR #29
l4597: mul R10, R8, R3
l4598: eorMIs R7, R5, R10
l4599: eorCS R6, R1, R8
l4600: eor R3, R3, R8
l4601: cmnLT R9, #352256
l4602: muls R14, R12, R5
l4603: eorGEs R4, R12, R15
l4604: adcPL R11, R4, #-1275068416
l4605: mul R9, R14, R10
l4606: sub R3, R8, R2, LSL #13
l4607: rscLT R7, R8, R4
l4608: and R8, R14, #564
l4609: subGTs R7, R11, R6
l4610: mulCS R2, R5, R7
l4611: mul R2, R14, R6
l4612: muls R11, R4, R3
l4613: clzGE R2, R5
l4614: mul R6, R7, R9
l4615: teqGT R10, R8, ASR R7
l4616: clzHI R6, R7
l4617: movs R4, R4, RRX 
l4618: orrNE R10, R11, R3, ASR R10
l4619: tst R3, R9, ASR #26
l4620: clzPL R5, R6
l4621: mulNE R9, R11, R2
l4622: cmnCS R3, #250609664
l4623: orrs R11, R7, R9, RRX 
l4624: mulVCs R4, R7, R7
l4625: eorNE R5, R11, #14656
l4626: eors R0, R9, R14, ROR R7
l4627: rscGT R2, R15, R10, RRX 
l4628: orr R4, R6, R7, LSL #6
l4629: bic R0, R4, R3
l4630: muls R2, R11, R4
l4631: and R0, R6, R3, LSR R1
l4632: and R10, R2, R10, ASR R9
l4633: clzLT R9, R14
l4634: mulVS R6, R2, R11
l4635: teqGT R6, R8
l4636: mul R3, R9, R9
l4637: rsc R12, R1, R2, LSL #27
l4638: eorGE R3, R6, R14
l4639: and R10, R4, R15
l4640: sbcEQ R8, R0, R5, LSR R3
l4641: bic R14, R5, R7
l4642: mulNEs R5, R10, R1
l4643: andLEs R7, R15, R14
l4644: muls R1, R2, R11
l4645: addMIs R7, R4, R6, RRX 
l4646: cmnCS R7, #622592
l4647: rsc R5, R1, R1
l4648: orrs R7, R11, R11, LSL #22
l4649: eorLS R11, R1, #57
l4650: bicHIs R12, R12, R10, ROR #28
l4651: rscGEs R5, R14, #134217728
l4652: mulCSs R6, R10, R11
l4653: adc R0, R1, R8, ROR #27
l4654: sbcEQ R2, R7, R14, LSR R12
l4655: eorHI R9, R10, R8
l4656: mul R7, R10, R4
l4657: mvn R2, R11, LSR #11
l4658: mulLS R0, R4, R6
l4659: cmpNE R8, R11, LSR R6
l4660: andCCs R11, R0, R1, ASR #25
l4661: andHIs R6, R3, #30146560
l4662: adcGTs R0, R5, R10, LSR #18
l4663: orrCC R9, R5, R2, LSL #29
l4664: mov R12, R1
l4665: orrVCs R12, R10, R3, LSL R5
l4666: rsbEQ R5, R0, R6, ROR R14
l4667: tstPL R4, R9, LSL R12
l4668: subGEs R1, R0, #8912896
l4669: and R8, R10, R8
l4670: muls R3, R5, R14
l4671: eor R11, R7, R14, RRX 
l4672: eor R9, R6, R10, LSR #12
l4673: mulCS R11, R5, R3
l4674: mulGEs R11, R14, R6
l4675: mul R10, R3, R12
l4676: cmnLT R10, R12
l4677: adc R11, R5, R7, RRX 
l4678: clz R9, R5
l4679: mulVSs R14, R3, R4
l4680: adc R1, R8, #141312
l4681: andLT R3, R12, R1, LSR R4
l4682: mulGEs R10, R12, R9
l4683: mul R9, R0, R4
l4684: muls R5, R3, R7
l4685: muls R6, R14, R8
l4686: bicGEs R6, R12, R5, ROR #14
l4687: cmp R6, R5
l4688: mulHI R9, R11, R9
l4689: mul R5, R11, R14
l4690: subEQ R0, R6, R11
l4691: ands R14, R5, R6, LSR R5
l4692: movPL R12, R11, ROR R14
l4693: teq R6, #193536
l4694: ands R0, R12, R5
l4695: mul R6, R11, R14
l4696: cmpMI R8, #25165824
l4697: subGTs R8, R2, #-805306358
l4698: ands R7, R6, R2
l4699: mul R8, R7, R3
l4700: orrLEs R1, R0, #4864
l4701: clzVC R11, R11
l4702: orr R7, R11, #1064960
l4703: movGE R7, #66560
l4704: subLT R7, R11, #21248
l4705: andGE R5, R4, R5, RRX 
l4706: mul R0, R8, R12
l4707: orrVSs R11, R15, #15616
l4708: tst R12, R10, ROR #19
l4709: eorLEs R11, R3, R14, RRX 
l4710: mul R0, R8, R11
l4711: sub R1, R9, R3, RRX 
l4712: muls R9, R11, R6
l4713: mulGE R11, R8, R11
l4714: sbcPL R8, R4, R3, RRX 
l4715: adcVSs R8, R3, #5824
l4716: mulHIs R0, R11, R11
l4717: mulLT R14, R11, R5
l4718: mulHIs R7, R8, R6
l4719: ands R2, R11, R4, RRX 
l4720: adcNEs R5, R12, R0, ASR #7
l4721: teq R6, R2, LSL R6
l4722: mul R12, R9, R7
l4723: andCC R8, R9, R4
l4724: eorHI R9, R1, #22528
l4725: rsbCS R14, R7, R4
l4726: orrLS R8, R6, R3
l4727: ands R12, R7, R9
l4728: eorEQs R2, R5, R7, ROR #23
l4729: eors R0, R4, R1, LSL R11
l4730: orr R10, R8, R9
l4731: sub R8, R8, R11
l4732: mvn R1, R14, LSR R14
l4733: rsbs R6, R6, R9, LSR #1
l4734: mvn R3, R4, RRX 
l4735: and R3, R4, R5, LSL R7
l4736: mulLTs R6, R1, R10
l4737: subPL R11, R5, R4, ROR R4
l4738: eorVC R1, R3, R4, RRX 
l4739: andLT R1, R2, #22020096
l4740: teqPL R3, R9, LSR #19
l4741: ands R12, R14, R10, LSL R1
l4742: subs R4, R7, #-1073741772
l4743: mul R11, R5, R8
l4744: orr R3, R4, #721420288
l4745: mulLEs R9, R10, R6
l4746: cmpEQ R6, R10
l4747: movCSs R12, R0, ASR R9
l4748: mulLTs R3, R11, R2
l4749: andMI R8, R5, R15, LSR #23
l4750: rsb R3, R14, #548
l4751: orrCC R4, R1, R12
l4752: ands R2, R4, R0, RRX 
l4753: orr R8, R2, #180224
l4754: cmn R0, R2, LSL #2
l4755: orrCSs R4, R5, #3817472
l4756: mul R12, R5, R12
l4757: eors R9, R8, R10, ASR R5
l4758: mul R9, R14, R4
l4759: orrs R2, R11, R8, RRX 
l4760: mvns R9, R9, ASR #2
l4761: orr R2, R5, R11, ASR #12
l4762: sbcVS R9, R8, R12
l4763: mul R7, R1, R2
l4764: mulNEs R10, R9, R2
l4765: rscs R2, R15, R5
l4766: eorHIs R12, R8, R2, ROR R5
l4767: cmpMI R2, #5760
l4768: eorLEs R6, R15, #29440
l4769: orr R12, R14, R14, LSL R14
l4770: muls R7, R5, R5
l4771: eorCC R6, R8, R6, LSL R8
l4772: mulPLs R12, R14, R9
l4773: mulGTs R12, R0, R4
l4774: muls R4, R8, R4
l4775: orrPLs R2, R11, R7, ROR #17
l4776: andPL R10, R5, R3, ROR #10
l4777: add R9, R11, R2, LSR #1
l4778: mul R11, R1, R7
l4779: orrLEs R0, R0, R4
l4780: mulVS R9, R7, R7
l4781: add R3, R8, R8
l4782: rsbs R5, R10, R1
l4783: andPL R5, R15, R12, RRX 
l4784: and R3, R12, R11
l4785: bicNE R0, R12, #-1073741790
l4786: mvnMI R12, R11, ASR #16
l4787: andPLs R5, R8, #2310144
l4788: adcVC R14, R14, #201326595
l4789: mul R7, R4, R11
l4790: mulCC R10, R8, R6
l4791: mulMIs R12, R0, R6
l4792: mulCSs R9, R5, R1
l4793: mulGT R3, R8, R2
l4794: adcLE R3, R8, R11, LSR #27
l4795: orrEQs R1, R8, R0, LSR #31
l4796: andCCs R1, R0, R11, LSL R6
l4797: muls R6, R0, R7
l4798: orrs R12, R8, R7, LSR #2
l4799: eor R10, R9, R12
l4800: mulHI R14, R8, R12
l4801: cmn R8, R11
l4802: subCS R11, R0, R5, LSR R6
l4803: mulLTs R3, R5, R3
l4804: mulVSs R1, R14, R8
l4805: rscPL R3, R7, R5
l4806: mul R3, R8, R3
l4807: mulLT R12, R11, R12
l4808: eor R8, R14, R7
l4809: mulMIs R3, R6, R3
l4810: mulEQ R4, R14, R2
l4811: andCC R0, R4, #146800640
l4812: orrLEs R2, R12, #1408
l4813: mul R12, R6, R4
l4814: eorLE R1, R6, R15, RRX 
l4815: rscMIs R9, R6, #65011712
l4816: cmpNE R7, #1073741834
l4817: cmnLT R12, #94371840
l4818: clzCS R10, R8
l4819: andLTs R9, R12, R12
l4820: rsbPLs R4, R2, R2
l4821: subHI R10, R14, R1, ASR #14
l4822: tst R12, #-1073741815
l4823: mulCC R8, R3, R12
l4824: mulLE R2, R1, R4
l4825: andCC R0, R10, #1097728
l4826: subEQ R0, R3, #1638400
l4827: mulPL R7, R14, R1
l4828: tstLS R8, #276824064
l4829: rsbCC R9, R10, #-2097152000
l4830: muls R4, R6, R0
l4831: mul R2, R4, R3
l4832: teqHI R0, R11, LSR #28
l4833: orrNEs R7, R11, R6, RRX 
l4834: tstLT R5, R8, ASR #17
l4835: eorEQs R2, R2, R1
l4836: mulHI R7, R2, R9
l4837: cmnLT R10, R10, LSR R4
l4838: orrCC R0, R1, R15, ASR #7
l4839: mulLTs R3, R9, R10
l4840: mul R12, R5, R12
l4841: bicVCs R6, R4, R14, LSL R6
l4842: teq R2, R12, LSL R10
l4843: orrHIs R0, R14, #12976128
l4844: muls R6, R1, R12
l4845: mulLTs R4, R1, R11
l4846: sbcLT R9, R4, R12, ASR R0
l4847: orrCSs R8, R10, R2, ROR #25
l4848: mul R10, R7, R0
l4849: addGE R2, R1, R6
l4850: mvnLEs R14, R1, LSL R3
l4851: mulNEs R14, R2, R10
l4852: eorLT R11, R7, R7, LSL R7
l4853: adcGT R10, R7, #696
l4854: mvns R8, R12, LSR R4
l4855: muls R7, R0, R9
l4856: mulHI R9, R8, R5
l4857: mul R11, R0, R6
l4858: movMI R10, R9, LSR R14
l4859: mul R4, R10, R0
l4860: eor R11, R10, R2, ROR #25
l4861: mulGT R8, R0, R11
l4862: addPLs R2, R10, R12, ROR #4
l4863: tstLT R11, R10, LSL R11
l4864: mulCSs R4, R1, R5
l4865: mul R6, R2, R8
l4866: tstCS R8, #47104
l4867: muls R12, R8, R10
l4868: and R0, R0, R1, ASR R0
l4869: rscCCs R7, R7, R2, LSL #18
l4870: ands R7, R3, R0, ASR R2
l4871: mulGE R8, R3, R4
l4872: mul R5, R4, R3
l4873: andNE R12, R12, R9, LSR R14
l4874: clzPL R6, R7
l4875: andGEs R8, R3, R4, LSR R3
l4876: addCC R10, R6, R1
l4877: teqNE R14, #1610612743
l4878: mulEQ R4, R6, R9
l4879: andCS R9, R5, #36864
l4880: orr R4, R3, R6, ASR R14
l4881: rsbGEs R11, R2, #96
l4882: orrVS R11, R9, R3, RRX 
l4883: subNEs R6, R14, #64512
l4884: cmpLT R4, R11, RRX 
l4885: orrLTs R5, R12, R7
l4886: eorPLs R0, R8, #260
l4887: rsbs R0, R6, R15
l4888: muls R7, R5, R7
l4889: mulPL R4, R3, R4
l4890: subVS R11, R3, #2848
l4891: adds R4, R9, R2
l4892: rscLEs R5, R9, R11, ROR R0
l4893: clz R3, R7
l4894: cmn R6, R8
l4895: mvns R12, #3276800
l4896: rsbLE R11, R15, #469762048
l4897: mulVCs R12, R9, R4
l4898: eor R12, R7, #14144
l4899: eorLSs R12, R7, R9, RRX 
l4900: orrs R12, R1, R7, LSR R1
l4901: mulLE R0, R2, R12
l4902: and R2, R10, #41984
l4903: mulMIs R12, R2, R9
l4904: subGT R12, R6, #55574528
l4905: mov R2, #159744
l4906: cmn R6, R6, RRX 
l4907: eor R2, R9, R10, RRX 
l4908: eor R2, R0, #1310720
l4909: teqGT R5, #557056
l4910: muls R3, R11, R9
l4911: orrs R6, R7, R12, ROR #19
l4912: movVS R10, #-1409286143
l4913: mulGT R1, R5, R10
l4914: mulCSs R0, R6, R11
l4915: andCC R14, R7, #592
l4916: mulLEs R4, R9, R9
l4917: rsbVC R6, R2, R3
l4918: movs R10, #904
l4919: orrs R10, R8, R5, ASR #21
l4920: addLTs R14, R9, #728
l4921: sbc R1, R9, #80
l4922: sbcGEs R5, R10, R12, ASR #22
l4923: eors R11, R10, R12
l4924: muls R6, R8, R4
l4925: orrs R8, R12, R12, ROR #19
l4926: addHI R1, R1, R6, ASR R9
l4927: movHIs R9, #61440
l4928: cmn R0, R0
l4929: movNE R14, R6, ASR R10
l4930: orrVS R5, R15, #-1610612733
l4931: tstHI R4, R14, LSL R1
l4932: orrEQs R9, R4, #805306380
l4933: mulEQ R9, R12, R4
l4934: mulLE R14, R8, R7
l4935: teq R0, R12
l4936: andCCs R2, R12, R9, LSR #9
l4937: movs R7, R11, ROR R12
l4938: subEQs R2, R4, R4, LSL R0
l4939: orr R7, R14, R3, RRX 
l4940: mulVSs R11, R0, R14
l4941: mulLT R11, R14, R1
l4942: addHIs R11, R3, R0, ROR R2
l4943: eorMI R3, R4, R15
l4944: cmnLS R11, #806912
l4945: eorLE R7, R0, R1, ROR #27
l4946: tstGE R9, R1, LSR #21
l4947: addPLs R11, R0, R2
l4948: mul R10, R2, R3
l4949: eorHIs R3, R0, R10, RRX 
l4950: orrNE R7, R9, R10, RRX 
l4951: andCCs R9, R2, R11
l4952: mulNEs R8, R7, R5
l4953: mul R8, R5, R1
l4954: orr R8, R15, #8650752
l4955: orrs R1, R3, R1, LSR R5
l4956: subVC R0, R8, R7, ROR R3
l4957: clzEQ R10, R14
l4958: mulVSs R8, R5, R0
l4959: andHIs R4, R12, #3072
l4960: eorNEs R3, R4, R11, ROR R11
l4961: rscEQ R11, R3, R3, ROR R11
l4962: andVC R6, R10, R8, LSL #10
l4963: andMIs R6, R12, R14
l4964: eorEQ R6, R7, R6, LSL #15
l4965: orr R2, R0, R10, ASR R2
l4966: orrGEs R2, R7, R3
l4967: muls R10, R3, R3
l4968: mul R4, R9, R1
l4969: eors R1, R10, R0
l4970: subMIs R10, R10, R14
l4971: andMIs R12, R15, R0, ROR #5
l4972: mulLEs R5, R8, R1
l4973: bicHIs R10, R6, R15, ASR #29
l4974: muls R5, R0, R5
l4975: sub R2, R12, R0
l4976: eorLS R9, R4, #13184
l4977: and R4, R1, R15
l4978: cmn R2, R3
l4979: orr R2, R1, R9
l4980: mulVS R11, R14, R3
l4981: mulVS R10, R6, R0
l4982: mulGT R10, R9, R12
l4983: mul R1, R8, R0
l4984: and R9, R0, R7
l4985: andLSs R0, R10, R10, ASR R1
l4986: addVC R12, R0, R2
l4987: mulLEs R9, R2, R9
l4988: muls R5, R14, R2
l4989: bicLTs R1, R5, R11, RRX 
l4990: andHI R14, R3, R5
l4991: andNE R9, R12, R1, ROR R7
l4992: and R1, R2, #-1073741809
l4993: muls R5, R3, R11
l4994: orrs R4, R4, R1, LSR #12
l4995: subLT R12, R7, R7, RRX 
l4996: eor R12, R12, R4, RRX 
l4997: muls R6, R0, R0
l4998: orrCS R2, R12, R1, RRX 
l4999: orrs R7, R12, R4, ROR #15
l5000: eorMIs R12, R6, R4
end: b end

