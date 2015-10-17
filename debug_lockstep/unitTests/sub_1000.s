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
val1: .word 4285595191
next1:ldr R2, val2
b next2
val2: .word 1114333013
next2:ldr R3, val3
b next3
val3: .word 2882877549
next3:ldr R4, val4
b next4
val4: .word 3370005772
next4:ldr R5, val5
b next5
val5: .word 2320801653
next5:ldr R6, val6
b next6
val6: .word 3044424668
next6:ldr R7, val7
b next7
val7: .word 3552544093
next7:ldr R8, val8
b next8
val8: .word 3427364688
next8:ldr R9, val9
b next9
val9: .word 4011999765
next9:ldr R10, val10
b next10
val10: .word 4129733207
next10:ldr R11, val11
b next11
val11: .word 3725179682
next11:ldr R12, val12
b next12
val12: .word 2428971578
next12:ldr R14, val14
b next14
val14: .word 1905202809

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 3415835416
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 3999885965
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3675709136
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 216930755
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 196995962
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 1932174454
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 678254782
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 3456224640
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3580465708
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 336129772
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 793383139
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 4172700985
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 641259495
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 2453994792
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 146513086
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 3325718587
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 1697302328
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 2614663899
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 3590177315
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 3661022878
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 2388111626
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: subGE R3, R8, #-1073741780
l2: subs R12, R6, #469762049
l3: subGT R3, R10, R6, LSL R11
l4: subVSs R11, R4, R15, RRX 
l5: subCSs R4, R3, R10, ROR #11
l6: subLT R11, R0, R9, RRX 
l7: sub R5, R11, R2, ROR R7
l8: subVS R4, R14, R10, LSR R2
l9: subs R5, R5, R9, ROR R2
l10: subVS R11, R15, R2
l11: subVS R2, R8, R5
l12: subs R0, R8, R10
l13: subLTs R10, R9, R12, LSR R11
l14: subPL R7, R9, R0, ASR R4
l15: sub R5, R8, R10
l16: subLT R6, R7, #1342177291
l17: sub R10, R10, R4, LSL #31
l18: subLT R10, R4, R6
l19: subCCs R10, R3, R12, ROR R10
l20: subs R0, R8, R10, ROR #31
l21: subCS R9, R10, R6
l22: subLT R7, R7, R3, RRX 
l23: subs R0, R2, R3, LSR R10
l24: subGE R2, R12, R5, LSR R10
l25: subs R6, R12, R4, ASR R5
l26: sub R11, R8, #135168
l27: subPL R1, R0, R12
l28: subPLs R4, R1, #126
l29: subNEs R4, R9, R11
l30: subs R11, R1, #-1342177272
l31: sub R9, R7, R1, LSL R6
l32: subMI R8, R9, R9, LSR #28
l33: subPL R14, R4, R0, ASR R4
l34: subHIs R12, R4, R9
l35: subs R2, R15, R15
l36: sub R5, R4, #21495808
l37: sub R3, R11, #585728
l38: subs R0, R9, R9
l39: subEQ R7, R15, R3, LSL #13
l40: subNEs R2, R5, #195
l41: subNE R14, R5, R5, ROR R2
l42: subs R7, R12, R15, RRX 
l43: sub R8, R10, R6, LSR R2
l44: subEQ R3, R10, R9, LSR #8
l45: subGT R3, R10, R11
l46: sub R12, R0, R4, LSL #20
l47: subLT R8, R0, R2, LSR #13
l48: subs R9, R15, R2, LSL #12
l49: subHIs R2, R6, R12, ASR #0
l50: subVSs R9, R2, R0, LSR R9
l51: subPLs R5, R4, R1
l52: subs R0, R8, R4, ROR R2
l53: subGT R6, R4, R15, ASR #13
l54: subVSs R12, R11, R12, RRX 
l55: subLSs R6, R4, R14, LSR #14
l56: subGT R2, R2, R6, LSR #16
l57: subVSs R8, R3, R11, ASR R1
l58: subNEs R7, R9, R0
l59: subGEs R12, R14, #-1543503869
l60: subs R6, R3, R4, ROR #16
l61: subs R6, R4, R8
l62: subPL R4, R10, R7, ASR R12
l63: subMI R4, R14, R6, LSR #22
l64: subPLs R0, R14, R4, LSL #31
l65: subs R0, R6, #2080374785
l66: subLE R7, R9, #7864320
l67: subVCs R7, R1, R9, RRX 
l68: subNEs R14, R10, R2
l69: subVCs R9, R15, #0
l70: subLT R7, R8, R10
l71: subEQs R0, R0, #-1577058304
l72: subLS R1, R9, R9
l73: subCCs R12, R12, R11, LSL #1
l74: subLTs R10, R9, R1, ASR R2
l75: sub R10, R8, R4, LSL R4
l76: subLEs R4, R6, R2, RRX 
l77: sub R6, R4, R4
l78: subVCs R5, R2, R0
l79: subs R7, R1, R7
l80: subs R3, R4, #27648
l81: subLS R2, R0, #754974720
l82: subCCs R2, R15, R12, LSR #19
l83: subs R4, R15, #180224
l84: subCC R8, R2, R9
l85: subVSs R12, R10, R1, RRX 
l86: subGEs R10, R4, R5
l87: sub R6, R8, R11
l88: subLE R1, R15, #6400
l89: subCCs R6, R10, R14, RRX 
l90: subEQ R14, R9, R7
l91: subs R3, R12, R0
l92: subVS R2, R15, #3211264
l93: sub R6, R2, #622592
l94: sub R4, R11, R9
l95: sub R14, R15, #189792256
l96: sub R1, R4, #134217728
l97: subMIs R7, R6, R3, RRX 
l98: subVS R0, R6, R14
l99: sub R10, R15, R2, RRX 
l100: sub R12, R12, R11, LSL #5
l101: subLT R0, R11, R11
l102: subs R1, R0, R14
l103: subs R0, R9, R9, ASR #4
l104: subVC R9, R2, #83886080
l105: subGEs R1, R8, R7, ASR R8
l106: sub R1, R8, #11534336
l107: subLT R8, R8, R11, LSR #29
l108: subCSs R6, R5, R5, LSL #7
l109: subPL R6, R10, R11, LSR #10
l110: subLT R3, R3, #215
l111: subPLs R1, R6, R7, ASR R0
l112: subLEs R4, R10, R3
l113: subs R9, R11, R5
l114: sub R12, R9, R1, ASR #13
l115: subs R10, R3, R3, RRX 
l116: sub R6, R4, R0
l117: subs R2, R10, #5440
l118: subs R3, R4, R6, LSR #0
l119: subs R9, R8, R3
l120: subs R10, R0, R9, LSL #5
l121: subVC R5, R2, R6, ROR #19
l122: subs R14, R8, R6
l123: subLT R2, R6, R15
l124: subLE R3, R15, #176
l125: subCS R2, R15, #104857600
l126: sub R14, R8, R11
l127: subEQs R4, R14, R7
l128: subs R0, R8, R7, LSR R14
l129: subPL R4, R7, R0
l130: subLSs R11, R10, R12
l131: subEQ R12, R8, R5
l132: subs R1, R9, R4
l133: subLTs R9, R2, #-2147483645
l134: subCSs R5, R4, R12
l135: subVC R3, R10, R2, ASR R0
l136: sub R5, R7, R11, ASR #5
l137: subVS R9, R1, R11
l138: subs R11, R9, #3997696
l139: sub R7, R6, R7, LSL R0
l140: subs R3, R6, R14, LSR R12
l141: subEQs R0, R9, R12, LSL #18
l142: subs R10, R7, R15, RRX 
l143: subEQs R7, R11, R1, LSR R14
l144: subCS R1, R5, R15
l145: sub R3, R7, #34078720
l146: sub R5, R0, #4864
l147: subGE R6, R5, R0
l148: subs R11, R7, #188743680
l149: subs R3, R8, #5248
l150: subPL R1, R6, R4
l151: subs R11, R12, R7
l152: subLTs R9, R5, R6
l153: subEQs R5, R4, R15, LSL #27
l154: sub R11, R9, R6, ROR #19
l155: subLE R14, R9, #15168
l156: sub R10, R5, #19
l157: subEQ R7, R12, R7, LSR #30
l158: sub R7, R9, R8, RRX 
l159: subGE R12, R7, R2, LSL R9
l160: subs R11, R7, R9, ASR #13
l161: subNEs R14, R0, R8
l162: subs R0, R7, R2
l163: subLEs R3, R5, #117
l164: subCS R11, R6, R2
l165: subs R10, R4, R3
l166: subs R11, R3, R0, ROR R9
l167: sub R5, R2, R3, LSL R7
l168: subCC R6, R8, R6, ROR R9
l169: subs R2, R12, R0, ASR R8
l170: subLE R10, R4, #33536
l171: subGE R1, R6, R3, LSL #7
l172: sub R5, R9, #1073741839
l173: subNE R14, R9, R11, ROR R2
l174: sub R11, R8, R14
l175: subNEs R6, R11, R11
l176: sub R0, R11, #404
l177: subCS R3, R11, R5
l178: subs R5, R2, R5, ROR #12
l179: subLE R1, R11, #24379392
l180: subLTs R3, R5, #38797312
l181: subGE R3, R1, R4, RRX 
l182: subCSs R14, R11, #201326594
l183: subMI R2, R0, #419430400
l184: subNEs R0, R3, R9, LSR R1
l185: subGT R4, R14, R2, ROR R0
l186: subLT R5, R4, R5
l187: subs R4, R7, R5
l188: subCCs R7, R8, R4
l189: sub R2, R3, R0
l190: subs R14, R2, R15
l191: subs R7, R2, R2, LSR R6
l192: sub R12, R6, #1006632960
l193: subCSs R12, R15, R10
l194: subs R3, R4, R1
l195: subLTs R5, R2, R0, LSL #14
l196: subs R10, R3, #778240
l197: sub R3, R14, R14, ASR R8
l198: subPL R0, R6, R0, ASR R12
l199: subs R7, R15, R5, RRX 
l200: sub R11, R2, R9
l201: subs R11, R11, R2, LSL R10
l202: subHIs R2, R0, R10
l203: subVCs R6, R8, R1, RRX 
l204: subVCs R6, R6, R0
l205: subLT R9, R0, R5
l206: subGT R14, R9, R10, LSR R10
l207: subHIs R1, R3, R11, LSL R11
l208: sub R4, R15, #-2147483627
l209: subGEs R8, R8, R7, LSR #28
l210: subVC R3, R11, #53504
l211: subs R8, R8, R15
l212: subVSs R6, R9, R10
l213: subVSs R11, R15, R8, LSL #0
l214: subs R12, R8, R1, ASR #22
l215: sub R7, R9, R8, ROR #17
l216: subs R9, R4, #656
l217: subLE R4, R15, R4, LSR #11
l218: subGT R5, R9, R7
l219: subMIs R7, R2, R10, ASR #9
l220: subGT R10, R2, #14272
l221: subs R0, R0, R2, ROR #17
l222: subGT R14, R5, R4, ASR R7
l223: subGT R10, R0, #5
l224: subEQ R9, R2, R11
l225: subMIs R10, R5, R11
l226: subs R3, R12, R9, RRX 
l227: subMI R8, R1, #1073741853
l228: subHIs R6, R12, #671088640
l229: subs R10, R10, R2, RRX 
l230: subEQs R6, R2, R11, LSL R12
l231: subLTs R12, R11, #3915776
l232: sub R11, R11, R12, LSR #24
l233: subEQs R1, R11, R0, LSL R12
l234: sub R2, R3, R14
l235: sub R5, R14, R3
l236: sub R4, R6, R7
l237: subs R1, R10, R5, RRX 
l238: subs R4, R14, #63176704
l239: sub R9, R3, R5, LSR R6
l240: subLTs R3, R0, #786432
l241: sub R7, R3, R10, RRX 
l242: subs R7, R14, R8, LSR R7
l243: sub R7, R10, R0, RRX 
l244: subLEs R8, R0, R8, RRX 
l245: sub R11, R7, R1
l246: sub R9, R7, R7
l247: subVC R2, R7, R3, RRX 
l248: subEQ R6, R3, R9
l249: subNE R10, R9, R10, ROR #24
l250: subVC R14, R9, R15, LSL #6
l251: subHIs R8, R6, R15, LSR #17
l252: subLT R3, R10, R0, ROR R8
l253: sub R12, R9, #3145728
l254: sub R0, R11, R5
l255: subLT R6, R11, R4, RRX 
l256: subLT R2, R6, R14, RRX 
l257: subLS R5, R12, #63
l258: subCSs R6, R0, R6, RRX 
l259: sub R12, R9, R10
l260: subPL R9, R2, R10, RRX 
l261: subs R0, R6, R14
l262: subs R8, R9, R9, LSR R12
l263: subVC R3, R12, #3616
l264: sub R3, R2, #14680064
l265: subCC R3, R4, #13632
l266: sub R14, R4, R1
l267: subCCs R4, R4, R4
l268: subEQ R14, R8, R10, ROR #19
l269: subLEs R6, R7, R15
l270: subs R10, R10, R10, ROR #12
l271: subNE R9, R14, R9, LSL R12
l272: subVC R9, R10, R12, RRX 
l273: subGEs R9, R5, R8
l274: subPL R5, R9, #3696
l275: subEQ R8, R8, R3
l276: sub R0, R2, R1
l277: subLE R2, R7, R14, ASR #17
l278: subNE R11, R14, R5, ASR R3
l279: subs R1, R2, R11, LSR R5
l280: sub R5, R7, R7
l281: subCS R9, R7, R5, ASR R5
l282: subCC R4, R6, R1, ROR R14
l283: subHI R11, R4, R7, LSL R9
l284: sub R4, R4, #152043520
l285: sub R11, R7, R3, ROR R8
l286: subEQs R7, R9, R8, LSR R9
l287: subLEs R9, R2, R11
l288: sub R12, R15, R14, LSL #21
l289: sub R4, R6, R2, ASR R12
l290: subPL R5, R1, #473956352
l291: subVC R2, R12, #385875968
l292: subVC R7, R12, R5, LSL R5
l293: subVSs R10, R7, #240
l294: subMI R2, R8, #2850816
l295: subVC R6, R9, R1
l296: sub R12, R10, R15
l297: subHIs R3, R11, #-536870902
l298: subLSs R12, R7, R14
l299: subs R14, R2, #44040192
l300: subNE R2, R3, R7, ASR #27
l301: sub R3, R8, #616562688
l302: subs R0, R15, R14
l303: subGT R2, R2, #-939524096
l304: subVCs R8, R6, #3936
l305: subCSs R12, R8, R6, ASR #20
l306: sub R8, R4, R7, LSL R14
l307: subGEs R5, R3, R12, RRX 
l308: subGEs R5, R8, R11, RRX 
l309: subVCs R12, R6, R15, ROR #20
l310: subs R5, R11, #3936
l311: subLT R5, R2, R2, ROR R3
l312: sub R7, R15, #42
l313: subs R10, R5, R8, ROR R0
l314: subGEs R6, R11, R15, LSL #20
l315: subs R12, R11, R0, ASR #27
l316: subGT R0, R0, #15232
l317: subGT R11, R9, R0
l318: sub R11, R12, R5, LSL #20
l319: subHIs R4, R8, R5
l320: subLTs R11, R0, R2, ROR #11
l321: sub R3, R5, R4, LSL #24
l322: subNE R3, R8, R1, RRX 
l323: subGTs R1, R11, R15
l324: subs R4, R0, R7, ROR R5
l325: subLEs R6, R10, R2, LSR #9
l326: subLEs R3, R2, R2, ROR R11
l327: sub R3, R15, R5
l328: sub R4, R5, #225
l329: sub R9, R7, R9
l330: subPL R10, R11, R14, LSL R4
l331: sub R1, R3, #71303168
l332: subGEs R12, R3, R9
l333: subNE R8, R4, R12, RRX 
l334: subPLs R5, R12, #-1342177272
l335: subVC R8, R4, R2, LSL #9
l336: subs R7, R0, R6, ROR #10
l337: subHI R9, R2, R8
l338: subNE R10, R3, R11, RRX 
l339: subLTs R9, R15, #10240
l340: sub R4, R10, R10, ASR R10
l341: subs R9, R10, R1, ROR R11
l342: subGTs R7, R8, R12, ROR R14
l343: sub R9, R0, R11, RRX 
l344: subNEs R7, R2, R3, ASR R10
l345: subHIs R3, R4, #1343488
l346: subLTs R5, R4, R6, RRX 
l347: subs R9, R12, R0, LSL #30
l348: subEQs R4, R7, #198656
l349: sub R2, R2, R15, RRX 
l350: subLSs R8, R14, R8, RRX 
l351: sub R10, R0, R8
l352: subCC R11, R9, R14
l353: sub R11, R5, R6
l354: subLTs R11, R6, R6
l355: subLSs R9, R5, R9, RRX 
l356: sub R5, R15, R12, LSL #8
l357: subLEs R2, R5, R1, LSL R1
l358: sub R4, R3, R2
l359: subLSs R3, R1, #9152
l360: subs R2, R4, R1
l361: subs R12, R1, R12, ASR #15
l362: subLS R0, R15, #3457024
l363: subCSs R3, R2, R1, ROR R1
l364: subVCs R10, R8, R6, LSR R11
l365: subPL R0, R2, R11, LSL #19
l366: subNE R3, R11, R7, ROR R5
l367: subNEs R10, R14, #460
l368: subHI R5, R14, R6, LSL R2
l369: subs R7, R14, #491520
l370: sub R0, R10, R7
l371: subCS R10, R9, R5
l372: subHIs R5, R11, #191
l373: subs R4, R5, R11
l374: subs R6, R11, R15
l375: subLS R12, R9, R0
l376: subEQ R14, R12, R3, ROR R6
l377: subLS R8, R1, #10747904
l378: subGEs R8, R4, #592
l379: sub R7, R10, R10
l380: subLE R6, R5, R7, RRX 
l381: subCC R2, R3, #237568
l382: subs R5, R12, R5, LSR #2
l383: sub R1, R1, #2326528
l384: sub R14, R5, #82944
l385: subs R14, R6, R3, ROR #7
l386: subVCs R4, R1, #-1560281088
l387: subEQs R14, R0, R11, LSR #12
l388: subGE R4, R6, R14, LSR #18
l389: subs R3, R12, #36864
l390: subLS R8, R0, R9, ROR R12
l391: subLE R10, R14, R12
l392: subEQ R12, R3, R11, LSL #31
l393: subPL R11, R1, #-1627389952
l394: subMI R0, R11, R5
l395: subMI R2, R14, #1966080
l396: subMIs R3, R1, #838860800
l397: subs R7, R0, R0, LSL R10
l398: subs R10, R5, #10747904
l399: subs R11, R3, R3
l400: subHIs R4, R12, R3, ROR #22
l401: sub R9, R5, #251904
l402: subGEs R0, R12, R1, RRX 
l403: sub R12, R14, R2
l404: subPL R3, R14, R1, ROR R12
l405: subLSs R0, R14, #5120
l406: subs R1, R9, R14, LSR R9
l407: subLT R6, R4, R7, LSL R0
l408: subs R1, R10, R10
l409: subVC R9, R5, #700
l410: subNEs R4, R10, #1048576
l411: subNE R5, R4, R14, RRX 
l412: subs R7, R3, R0, LSR #13
l413: subs R7, R5, R4
l414: subNE R7, R14, #348127232
l415: subs R5, R7, R1, LSL R4
l416: subLSs R7, R5, #9
l417: sub R4, R6, R8, LSR R3
l418: subLSs R1, R14, R1
l419: subPLs R4, R4, R5, LSR R8
l420: sub R14, R11, #14
l421: subLSs R0, R2, R12, LSR R5
l422: subGEs R11, R1, #6291456
l423: subs R14, R0, R9, LSR #1
l424: subPLs R9, R14, R7, RRX 
l425: subVSs R12, R3, #297795584
l426: subLS R8, R2, #192937984
l427: subVSs R12, R3, #11776
l428: subs R2, R12, R10, LSR R4
l429: subVC R2, R7, R9, ROR #29
l430: sub R10, R15, R15, RRX 
l431: subVSs R11, R10, R5, RRX 
l432: sub R6, R8, #3866624
l433: subLTs R1, R8, #15400960
l434: subs R9, R2, R5, LSL R5
l435: sub R11, R2, R5
l436: subNE R12, R10, R10, LSR #17
l437: subGE R4, R7, R3, RRX 
l438: sub R8, R9, R3, RRX 
l439: subHI R2, R3, R5, LSR #13
l440: subVCs R3, R7, R3
l441: subHI R1, R3, R14
l442: subEQ R14, R14, R9, RRX 
l443: subMI R2, R0, R0, LSL #30
l444: sub R10, R3, R1
l445: subPLs R3, R6, R2, ROR R6
l446: subs R14, R14, #-1073741797
l447: subCSs R6, R2, R6, ROR #3
l448: sub R8, R14, R11, LSL R1
l449: subLE R14, R11, R5, ROR #20
l450: subCCs R1, R14, R12, ASR #30
l451: subGTs R1, R1, R5
l452: subGEs R10, R6, R1
l453: subVCs R4, R2, R4, RRX 
l454: sub R7, R9, R0, LSL R8
l455: subMIs R8, R0, R11, LSR #18
l456: subMI R6, R0, #5111808
l457: subLEs R11, R12, R9, LSL #6
l458: subGEs R14, R11, R2, RRX 
l459: subGEs R6, R0, R7
l460: subs R5, R2, R3, LSL R12
l461: subs R4, R0, #420
l462: sub R0, R5, #48
l463: subMI R9, R15, R14, ROR #28
l464: subHIs R8, R11, R12, LSL #23
l465: subGE R10, R15, R14
l466: subPL R2, R2, R8, LSR #30
l467: subGEs R2, R10, #25
l468: subs R6, R4, R11, ASR #13
l469: subs R8, R4, R2, RRX 
l470: subs R8, R14, R4, ASR #17
l471: sub R5, R12, R9
l472: subMI R6, R11, R12
l473: subs R0, R6, R5, LSL #5
l474: subs R3, R4, R1, ROR R2
l475: subLTs R12, R7, #448790528
l476: subHIs R12, R5, R11
l477: subVSs R0, R6, R8
l478: subCSs R14, R11, #1828716544
l479: subs R7, R15, #-738197502
l480: subLEs R6, R8, R14, ROR #31
l481: subCSs R12, R8, #3760
l482: subs R7, R8, R14, LSR R0
l483: subCSs R5, R6, R7
l484: subs R12, R12, R7
l485: subEQs R6, R5, R2
l486: subEQs R3, R10, R1, ASR #6
l487: subCS R1, R12, R6, ROR #28
l488: sub R3, R10, R7, ROR #22
l489: subHIs R4, R3, R1
l490: subLE R11, R10, R1
l491: subLEs R9, R15, R8, LSR #0
l492: subCS R11, R15, R2, LSL #19
l493: subCSs R2, R1, R12
l494: sub R11, R8, #9830400
l495: subCSs R12, R0, R10, ASR R9
l496: subMI R11, R5, R6, LSR R1
l497: subVS R8, R5, R0, LSR R2
l498: subMIs R2, R2, R4, LSR R2
l499: subs R3, R4, R1, ROR R14
l500: subNE R1, R0, #9240576
l501: subCC R2, R4, R5
l502: subLEs R2, R8, R2, LSL #3
l503: subGE R3, R8, #71303168
l504: subs R2, R0, R15
l505: sub R14, R9, R12, LSL #25
l506: subLTs R4, R8, R15
l507: subCSs R12, R2, R14, ROR #16
l508: subGE R5, R15, R3, RRX 
l509: subNEs R10, R6, #-469762047
l510: subs R3, R14, R3, ASR #12
l511: subs R12, R9, R7, ROR R12
l512: subHIs R9, R4, R10, RRX 
l513: subVS R3, R0, R5, RRX 
l514: subMI R8, R4, R0
l515: sub R7, R14, #9856
l516: subLE R0, R9, R8
l517: subVC R12, R1, #1072
l518: sub R2, R3, #54001664
l519: subs R6, R10, #262144000
l520: sub R2, R5, R5, LSR #10
l521: subs R10, R8, #49920
l522: subPLs R5, R5, R7
l523: subs R0, R3, #1280
l524: subVC R4, R7, #524
l525: subLS R11, R9, #77594624
l526: subLSs R2, R10, R15, RRX 
l527: sub R12, R12, #34078720
l528: subs R7, R0, #838860800
l529: sub R14, R11, R5
l530: subCSs R1, R9, R12, LSR R0
l531: subs R8, R3, #123731968
l532: sub R5, R6, R12
l533: subMIs R11, R12, R0, LSL #20
l534: subLT R9, R10, R3
l535: sub R9, R9, R11, ROR #26
l536: subCS R2, R11, R8, LSR #28
l537: sub R3, R1, #14720
l538: sub R7, R8, R6, RRX 
l539: subs R4, R12, #51
l540: subs R8, R8, R8, ROR #22
l541: subs R7, R3, R8
l542: subVS R12, R8, R14, ASR R10
l543: subGTs R3, R9, R14, LSL R12
l544: subs R7, R7, R6
l545: subPLs R11, R7, #536870913
l546: subGT R12, R14, R7
l547: subs R12, R9, R6
l548: subGEs R3, R3, R6, ROR R14
l549: subEQs R11, R7, R1, ROR R12
l550: subs R0, R9, #27392
l551: subHI R5, R14, R5, LSR #1
l552: subCCs R3, R9, R0, LSR #8
l553: subs R2, R15, R12, LSR #20
l554: subs R10, R2, R9, LSR R2
l555: subs R5, R5, R11
l556: subs R0, R15, R11
l557: subs R2, R3, #1962934272
l558: sub R5, R8, #-2147483616
l559: subLS R11, R0, R11, RRX 
l560: subLT R2, R12, R11
l561: subs R0, R2, R2, ROR R3
l562: subCS R4, R10, #1616
l563: subLTs R8, R8, R1
l564: subNE R12, R11, R2, ASR #27
l565: subVSs R4, R10, #-218103808
l566: subPL R4, R5, R15, LSR #2
l567: subPL R8, R12, R8
l568: subEQ R5, R8, R12, ASR #12
l569: subs R7, R3, #-704643072
l570: sub R5, R4, R3
l571: subGTs R1, R11, R4
l572: sub R1, R2, #434176
l573: subNEs R5, R10, #786432
l574: subs R4, R12, #376832
l575: subVSs R7, R3, #51200
l576: subGEs R6, R2, R14, LSL R11
l577: subGEs R1, R9, R2, ASR #25
l578: subCCs R12, R11, R3, LSL #1
l579: subNEs R9, R2, R12, RRX 
l580: subLSs R12, R8, #1605632
l581: subPL R8, R11, R3, RRX 
l582: subs R6, R8, #26214400
l583: subs R14, R4, R12, LSR #8
l584: subCCs R2, R10, R3
l585: subLE R0, R4, R8, RRX 
l586: subLS R0, R6, R6, LSR #10
l587: subs R2, R2, R14, ROR #20
l588: subs R14, R10, #140288
l589: subLTs R8, R15, #1073741838
l590: sub R4, R12, R4, LSR R10
l591: subs R8, R7, R7, ROR R14
l592: sub R2, R12, R0, LSR R4
l593: subCSs R2, R10, R2, ROR #24
l594: subs R10, R12, R2, LSR R7
l595: subCSs R9, R12, #140
l596: subLT R5, R11, #28160
l597: subs R6, R9, R7
l598: subs R10, R2, R6
l599: subs R14, R11, #1648
l600: subs R3, R5, #18
l601: subHIs R5, R11, R1
l602: subHI R14, R4, R2, ASR R5
l603: sub R7, R9, R15, RRX 
l604: subPLs R8, R11, #5376
l605: subNE R5, R6, R2, RRX 
l606: sub R2, R9, R5, ROR #5
l607: subGEs R2, R10, R10
l608: sub R14, R4, R5, ROR R2
l609: subEQ R14, R2, R12, LSR R10
l610: subGT R12, R5, R14, RRX 
l611: subs R9, R5, R8, LSR R6
l612: subs R10, R14, #52224
l613: subGT R10, R15, R11, RRX 
l614: subGEs R12, R3, #2342912
l615: subs R4, R14, R1, ROR #21
l616: subHIs R11, R5, R9, RRX 
l617: subNEs R0, R9, R11, ROR R2
l618: subGEs R5, R9, R0, RRX 
l619: subPLs R1, R0, #851968
l620: subs R12, R12, R8, LSR R5
l621: subNEs R8, R15, R6, LSL #23
l622: subHIs R5, R6, #248
l623: subMI R10, R8, R4, LSL R11
l624: subVS R9, R12, R12
l625: subCCs R11, R1, R11, ASR #14
l626: subLSs R12, R12, R12, LSL R1
l627: subs R12, R11, R12, ROR R4
l628: subs R11, R1, R15, LSR #20
l629: subLSs R5, R4, R1, ASR #0
l630: subs R14, R1, #59244544
l631: subGEs R14, R10, R6, LSR R3
l632: subMI R3, R11, #-2147483588
l633: subVC R12, R8, #15400960
l634: subs R1, R15, R0
l635: subLS R9, R0, R12, ASR R0
l636: subs R8, R6, R5, ASR R5
l637: subLSs R6, R1, R1, LSL #13
l638: subCCs R1, R7, #768
l639: sub R4, R10, #17664
l640: sub R6, R2, R9, ASR #27
l641: subs R3, R12, R8, RRX 
l642: subLTs R10, R7, R1, LSL #19
l643: sub R6, R2, R8, LSL R7
l644: subMI R7, R2, R2, ROR #22
l645: subLT R2, R0, R9, ROR R12
l646: sub R14, R3, R0, ROR #12
l647: subGEs R7, R8, R8
l648: subLE R4, R12, R4, ASR R1
l649: subMIs R7, R0, R15
l650: subs R14, R6, R5, LSR #6
l651: subs R0, R7, R10, LSL R14
l652: subGEs R9, R3, R8
l653: sub R2, R6, #721420288
l654: subHI R10, R1, #-1610612736
l655: sub R4, R2, R10
l656: sub R0, R1, R12, LSL #31
l657: subs R14, R9, #35840
l658: subCS R3, R10, #27262976
l659: subCS R2, R14, R3, RRX 
l660: subs R1, R4, R12, LSL R4
l661: subNEs R10, R12, R0, LSL #17
l662: sub R3, R10, R2, LSL R2
l663: subs R11, R7, #508
l664: subGT R5, R11, R14
l665: sub R2, R11, R5
l666: subGE R9, R9, #-1476395007
l667: subLSs R3, R6, R14
l668: subs R8, R14, R10, ROR R7
l669: subMIs R5, R7, #11010048
l670: subs R8, R5, #1019215872
l671: subGEs R5, R10, R5
l672: subGEs R2, R7, #960
l673: sub R1, R4, R4, ROR #22
l674: subCC R14, R2, R0, ROR R12
l675: subs R10, R11, R12, ROR R1
l676: subNE R7, R10, R14, LSL R5
l677: subCCs R3, R9, R3
l678: subVC R5, R8, #32
l679: sub R2, R9, R12
l680: sub R7, R9, #87031808
l681: subHI R10, R11, R10, RRX 
l682: subLS R6, R6, #37888
l683: subNE R4, R0, R10, LSL #16
l684: subHIs R9, R0, #6291456
l685: subGE R9, R7, R7, ROR #7
l686: subVSs R9, R2, R5, ROR #10
l687: subs R14, R10, R8, ROR #30
l688: subVSs R10, R12, #1073741845
l689: subPLs R0, R11, #185344
l690: subLEs R9, R4, R9
l691: subGTs R4, R0, R8, ASR R14
l692: subNEs R12, R11, #259072
l693: sub R8, R14, R15, RRX 
l694: subCCs R14, R1, R11
l695: subGE R14, R14, R12, LSR #6
l696: subEQ R1, R6, #1296
l697: sub R8, R1, R8, RRX 
l698: subs R0, R5, R11
l699: subPL R5, R12, R0, ASR R9
l700: subs R12, R3, R7, ASR R2
l701: subGE R14, R10, R0, RRX 
l702: subs R12, R14, #11010048
l703: subVCs R4, R4, R5, ASR #1
l704: subEQ R3, R0, R5, LSR #13
l705: subs R11, R14, #469762050
l706: sub R4, R4, R12, LSL #24
l707: sub R0, R1, R5
l708: sub R11, R9, R12
l709: subGE R2, R12, R14, RRX 
l710: sub R7, R5, #2224
l711: subVSs R6, R4, R4, ASR #5
l712: subs R6, R4, R7
l713: subVS R0, R7, R10, LSR #18
l714: subPLs R9, R10, #560
l715: subs R10, R5, #3712
l716: subEQ R14, R10, R1, ROR R8
l717: subNE R12, R6, R5, LSL #8
l718: subs R4, R6, R14, LSR R8
l719: subVCs R7, R5, R0
l720: subs R9, R3, R3
l721: subs R1, R14, R7
l722: subLSs R2, R10, #4096000
l723: subVSs R12, R2, R15, ROR #6
l724: subEQ R14, R5, R12, LSL R7
l725: subCSs R0, R3, R14, ASR R14
l726: subs R6, R0, R1, LSL R11
l727: subVC R2, R10, R14
l728: subGE R10, R1, R10
l729: subs R3, R2, R1, ROR R12
l730: subs R12, R9, #-201326591
l731: subs R3, R11, #1073741879
l732: sub R14, R1, #1028096
l733: subEQ R14, R4, R6, RRX 
l734: subs R4, R10, R14, RRX 
l735: subCSs R6, R9, R1, RRX 
l736: sub R6, R15, R7, ASR #8
l737: subVCs R6, R12, R9
l738: subs R5, R3, R10, ROR R10
l739: subLT R7, R6, #45312
l740: sub R7, R2, R3, ASR R2
l741: subGE R3, R0, R7, RRX 
l742: subCCs R0, R14, R9, ASR R12
l743: subs R12, R10, R4
l744: sub R1, R3, R7
l745: subMIs R1, R9, #541065216
l746: sub R1, R12, R6
l747: subs R12, R3, R12, RRX 
l748: subLEs R8, R2, #868220928
l749: sub R8, R2, R10, ASR #6
l750: subLS R2, R1, R15, LSL #8
l751: subs R6, R5, #469762051
l752: subGT R1, R2, R8
l753: subs R9, R7, #683671552
l754: subs R10, R3, R4, LSL #19
l755: subPL R11, R5, R3, LSR #31
l756: subEQ R9, R8, R3, LSL #20
l757: sub R8, R12, R14, RRX 
l758: sub R5, R6, R0, ROR #24
l759: subEQ R14, R8, R3, RRX 
l760: subMI R9, R7, #166723584
l761: subVSs R9, R0, R3
l762: subCC R3, R4, R3, RRX 
l763: subs R10, R0, #62464
l764: subs R6, R9, #2080374784
l765: sub R12, R12, R5
l766: subs R7, R15, R5, LSR #25
l767: subLS R12, R4, #1130496
l768: subGEs R4, R8, #688
l769: subs R0, R7, R0, ROR R11
l770: subGE R10, R10, R4
l771: sub R14, R12, R2, ROR R10
l772: subGEs R0, R0, R8, ROR #15
l773: subMIs R9, R7, R14, ROR #19
l774: subs R14, R3, #28416
l775: sub R10, R11, #201
l776: subHI R5, R1, #11264
l777: sub R0, R15, R3
l778: subCSs R11, R4, R10, ROR #18
l779: subPLs R3, R12, R2
l780: subVCs R4, R1, R7, ROR R4
l781: subs R1, R0, R7
l782: sub R7, R2, R10, ROR #24
l783: subCS R11, R1, R0, RRX 
l784: subGE R8, R15, R0
l785: subLT R0, R11, R12
l786: subs R10, R5, R6, ROR R6
l787: subGE R14, R3, R5
l788: sub R2, R1, R14, ASR #5
l789: subs R3, R5, R7
l790: subs R11, R6, R2
l791: subGE R6, R5, R1, LSR R8
l792: subs R10, R8, R14, LSL R8
l793: sub R9, R8, #376832
l794: subLTs R11, R4, #71
l795: sub R5, R2, R11, LSR #10
l796: subs R11, R15, #66
l797: subs R7, R11, R11, LSL #11
l798: subLT R3, R8, #-1543503870
l799: subLSs R8, R1, R2, LSR R0
l800: subVSs R6, R2, #13504
l801: subHI R4, R1, R8
l802: subEQ R12, R6, R8, ROR R14
l803: subEQs R6, R15, R11, LSL #17
l804: subs R10, R8, R10, ROR #31
l805: subLTs R8, R1, R3, LSR #1
l806: subCSs R8, R3, R1
l807: subGEs R0, R6, #384
l808: subLEs R4, R4, R0, LSL R6
l809: subVS R9, R5, #1442840576
l810: subVCs R3, R11, R10, ASR R4
l811: subGTs R10, R15, R4
l812: sub R12, R5, #135168
l813: subCSs R11, R7, R6, ROR R2
l814: subMI R6, R4, R1, ASR R3
l815: sub R9, R10, R10, LSL #14
l816: subPLs R14, R2, R4, ASR R1
l817: subCS R10, R10, R0, LSR #2
l818: subs R10, R6, R4
l819: subMI R10, R12, R5, LSR #4
l820: subs R8, R14, R8
l821: sub R14, R15, #805306368
l822: subGEs R6, R1, #-536870899
l823: subCCs R0, R4, R9, RRX 
l824: subLE R6, R12, R8, LSR R6
l825: subLSs R7, R15, R10
l826: sub R11, R3, #-1744830464
l827: sub R11, R1, #4194304
l828: subs R4, R1, R9, LSL R4
l829: subGTs R1, R4, #-2147483636
l830: subLSs R9, R8, R15, LSR #27
l831: subEQ R7, R15, #-1543503872
l832: subNE R14, R11, R11, LSR R5
l833: subEQs R10, R4, R7, LSL R6
l834: sub R2, R10, R14, LSR R11
l835: subGE R1, R5, R9, LSL #13
l836: subs R11, R3, R5
l837: sub R5, R9, R8, LSR R4
l838: sub R0, R11, #30408704
l839: subGE R9, R8, R15, ROR #7
l840: subs R2, R12, R4
l841: sub R10, R0, R9, LSR #3
l842: sub R3, R2, #79691776
l843: subCS R11, R5, R2, ROR #29
l844: sub R2, R2, #3008
l845: subGT R10, R0, #1275068416
l846: subHIs R10, R2, R8, LSL R8
l847: subCS R7, R11, R0, LSR #27
l848: subLS R7, R10, R2
l849: subLSs R5, R15, R6, LSR #21
l850: subs R3, R2, R1, ASR R12
l851: subVCs R6, R6, R0, ROR R7
l852: subVSs R8, R10, R4, ROR #4
l853: subMIs R0, R11, R9, LSR #21
l854: subMI R10, R4, R7
l855: subs R3, R8, R2
l856: subCS R7, R10, R0, RRX 
l857: subGE R2, R9, R5
l858: subLE R0, R9, R10
l859: subVSs R11, R7, #-150994944
l860: subs R8, R6, R6, ROR #6
l861: subLS R0, R8, #1140850689
l862: subLE R6, R7, R6
l863: subNEs R11, R4, R14
l864: subCCs R1, R6, #-1744830462
l865: subPLs R12, R10, R9
l866: sub R6, R4, #212992
l867: sub R14, R10, R10, ASR #4
l868: subs R1, R14, R14
l869: sub R3, R1, R7
l870: subLSs R11, R6, R11, ROR R4
l871: subs R5, R1, R7
l872: subGTs R11, R11, #134217730
l873: subVSs R9, R3, R9, ASR #5
l874: subNEs R8, R12, R7, ROR #1
l875: subLE R14, R9, #1015021568
l876: subs R9, R3, #18176
l877: subLS R14, R2, R15
l878: subLS R0, R1, R8
l879: subLTs R6, R0, R14, LSR R3
l880: subVC R14, R9, #2736128
l881: subNEs R9, R2, R7
l882: subMI R10, R7, R0, RRX 
l883: subEQs R1, R9, #8128
l884: subGTs R8, R5, R9, ROR R3
l885: subHI R2, R5, R5, ROR #22
l886: subs R14, R2, R1, ROR R11
l887: sub R10, R5, R0, ASR R12
l888: sub R2, R8, R14, ASR #11
l889: subs R4, R4, R5
l890: subGEs R3, R1, R5
l891: subHIs R1, R2, R0, ROR #19
l892: subs R10, R14, R1
l893: sub R14, R7, #56
l894: subs R9, R10, R8, LSL #8
l895: subLEs R9, R2, R1, LSL #4
l896: subs R11, R12, #135168
l897: subs R12, R15, R1, ROR #11
l898: subs R5, R6, R2, RRX 
l899: subLEs R14, R7, #1140850689
l900: subHIs R11, R10, R3, RRX 
l901: subs R6, R11, R3, LSR R9
l902: subHIs R8, R4, R4, ROR R14
l903: sub R0, R9, R7
l904: subHIs R12, R11, R2, LSR R3
l905: subs R11, R5, #2640
l906: subCSs R0, R2, R8, RRX 
l907: subGEs R7, R6, R10, RRX 
l908: subLE R7, R12, #651264
l909: subPL R10, R11, #512
l910: subs R6, R7, R3, ROR R6
l911: sub R3, R4, #38010880
l912: sub R7, R5, R2, ROR R14
l913: subs R6, R9, R11
l914: subs R4, R12, #843776
l915: subEQ R10, R9, R5, LSR R8
l916: subs R1, R12, R2
l917: sub R0, R5, R5, ROR R6
l918: subVCs R3, R11, #-1610612736
l919: subs R1, R10, R11
l920: subEQ R8, R2, R8
l921: subs R3, R15, #213
l922: subEQ R8, R5, R5
l923: subs R3, R11, R6, LSR #11
l924: subCS R4, R7, R5, RRX 
l925: subGE R3, R9, R12
l926: subGTs R11, R1, R2, LSR #11
l927: subs R1, R7, #830472192
l928: subGTs R4, R10, R2, RRX 
l929: subNE R0, R1, R1
l930: subs R12, R10, #805306370
l931: subs R9, R10, R14, ASR R14
l932: sub R12, R3, #901120
l933: subs R6, R6, R0, ASR R11
l934: subVC R9, R5, R14, ROR #17
l935: sub R1, R14, R3
l936: subs R14, R0, #1073741834
l937: subs R0, R3, R7
l938: sub R8, R0, R5
l939: subLTs R2, R1, #-2147483645
l940: subNE R3, R15, R15, RRX 
l941: sub R5, R0, R2
l942: subNE R1, R14, #1280
l943: subs R2, R9, R3, ASR R2
l944: subs R5, R7, R2, RRX 
l945: subs R7, R8, R14, RRX 
l946: subPL R1, R11, #3696
l947: subVC R8, R8, R10
l948: subCS R8, R2, #288
l949: sub R7, R10, R0
l950: sub R8, R6, R0
l951: subNEs R10, R3, R9, LSL #23
l952: subs R2, R12, R9, LSL #31
l953: subLTs R14, R6, #103809024
l954: subVSs R6, R3, R2, ASR R3
l955: subCSs R8, R14, R11, LSR #8
l956: subs R14, R8, #20971520
l957: subNE R12, R7, #-1342177269
l958: subLTs R3, R3, R15
l959: subNE R14, R9, R11
l960: subGT R10, R7, R0
l961: subGT R4, R3, R15
l962: subs R8, R8, R15, RRX 
l963: sub R6, R3, R12, LSR #1
l964: subHIs R12, R4, R0
l965: subPLs R2, R4, R2, RRX 
l966: sub R12, R14, R9, LSR R11
l967: subLE R11, R3, #5632
l968: sub R1, R15, R12, RRX 
l969: subGE R7, R0, R0
l970: subs R7, R10, R11, LSR R14
l971: subs R1, R11, R2, RRX 
l972: sub R8, R5, R1, LSL R9
l973: subs R9, R8, R7
l974: subPL R14, R11, R1
l975: subGEs R10, R7, #219152384
l976: subLTs R9, R11, R11, LSL R14
l977: subs R2, R12, R1, ROR R7
l978: subPLs R9, R8, #242688
l979: subEQs R10, R5, R10, ASR #21
l980: subs R0, R14, #3244032
l981: sub R5, R0, R9, LSR R7
l982: subLS R10, R11, R0, RRX 
l983: sub R6, R10, #1966080
l984: sub R12, R6, R2, ASR #4
l985: subPL R7, R2, R14, ROR #27
l986: sub R10, R15, #35389440
l987: subHIs R1, R5, R5, LSL R14
l988: subEQs R3, R6, R0, ROR #24
l989: subLT R10, R9, #64
l990: subMIs R1, R14, R15
l991: sub R12, R8, #786432
l992: subHIs R4, R2, R5
l993: subLE R3, R11, R9, RRX 
l994: sub R4, R14, #9472
l995: subLS R8, R5, R0, ASR #23
l996: subLS R4, R10, R3, RRX 
l997: subs R2, R12, R2
l998: subLTs R12, R14, R2
l999: subHI R10, R15, R9, RRX 
l1000: subs R2, R12, R1
end: b end

