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
val1: .word 862474809
next1:ldr R2, val2
b next2
val2: .word 3635342039
next2:ldr R3, val3
b next3
val3: .word 3363861709
next3:ldr R4, val4
b next4
val4: .word 3520582701
next4:ldr R5, val5
b next5
val5: .word 1686994902
next5:ldr R6, val6
b next6
val6: .word 2129668723
next6:ldr R7, val7
b next7
val7: .word 3532669682
next7:ldr R8, val8
b next8
val8: .word 2543224188
next8:ldr R9, val9
b next9
val9: .word 1560771018
next9:ldr R10, val10
b next10
val10: .word 846375000
next10:ldr R11, val11
b next11
val11: .word 2566148034
next11:ldr R12, val12
b next12
val12: .word 2035639675
next12:ldr R14, val14
b next14
val14: .word 1689997070

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 749031843
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 574506808
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 1173137659
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 517764110
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 2407490479
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 1062256138
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 899903380
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 2670542816
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 1255292770
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 225202432
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 2828893965
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 1475221128
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 145759133
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 1979118372
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 1044066943
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 555693476
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 209049240
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 379897956
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 4023178909
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 2153690587
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 1560386748
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: sbcGTs R7, R12, R9
l2: sbcLT R1, R11, R0, LSL R8
l3: sbc R3, R2, R10
l4: sbcs R8, R2, R7, RRX 
l5: sbcCS R0, R5, R10, RRX 
l6: sbcPL R2, R14, R11, RRX 
l7: sbcVC R5, R9, R2
l8: sbcCCs R9, R2, R15, RRX 
l9: sbcEQ R4, R2, #-2147483647
l10: sbcNEs R4, R8, R3, LSL R3
l11: sbcVSs R3, R3, R1
l12: sbcGEs R9, R1, #59
l13: sbc R11, R1, R9, ROR #16
l14: sbcs R9, R15, #249
l15: sbc R9, R11, R10
l16: sbcLEs R1, R7, R2, ROR R5
l17: sbcVCs R3, R11, R8, LSR R0
l18: sbc R5, R0, R8, LSL #27
l19: sbcGEs R11, R9, R7, LSL #10
l20: sbcMI R9, R9, #61952
l21: sbcCS R4, R8, R14
l22: sbc R1, R15, R12
l23: sbc R4, R2, R14, ROR R6
l24: sbc R4, R6, R12, ASR #4
l25: sbcs R9, R12, R2
l26: sbcMI R5, R9, R4
l27: sbcCS R8, R8, #952
l28: sbcCS R7, R9, R7, RRX 
l29: sbc R9, R0, R8
l30: sbcNE R14, R5, R7, ROR #8
l31: sbcLT R5, R11, #15532032
l32: sbcNE R9, R9, #734003200
l33: sbcs R6, R0, R11, LSR R1
l34: sbc R14, R3, R7, ROR R3
l35: sbcHI R10, R10, R5, RRX 
l36: sbcs R12, R15, R11
l37: sbcNEs R12, R6, R5, ASR R3
l38: sbcHIs R6, R2, #578813952
l39: sbcs R9, R6, R12, LSR R5
l40: sbcGTs R2, R9, R2, LSR R14
l41: sbcVC R3, R3, R11, ROR R5
l42: sbc R11, R14, R0, LSR R0
l43: sbc R14, R10, #457179136
l44: sbc R4, R6, #134217728
l45: sbcLSs R10, R9, R14, RRX 
l46: sbcVSs R5, R2, #59392
l47: sbc R10, R10, R0, LSL #31
l48: sbc R8, R14, R10, LSL R4
l49: sbcEQ R12, R7, R10
l50: sbcs R1, R10, R3, RRX 
l51: sbcMIs R12, R2, R1
l52: sbcs R3, R15, R11
l53: sbcNE R2, R14, #258048
l54: sbcs R12, R1, R7, LSR #6
l55: sbc R5, R10, R8, LSR #21
l56: sbcVCs R7, R7, R2, ROR R10
l57: sbc R12, R0, R5, ROR #30
l58: sbc R10, R3, #50688
l59: sbcMIs R12, R0, R15, RRX 
l60: sbcHIs R9, R2, R5, RRX 
l61: sbcs R5, R3, R14, RRX 
l62: sbcs R10, R15, R8
l63: sbcs R12, R7, #29884416
l64: sbc R12, R3, R8
l65: sbcLTs R7, R3, R10
l66: sbc R8, R10, R10, ROR R8
l67: sbcLSs R8, R2, R15
l68: sbc R4, R6, #2000
l69: sbcLT R6, R9, #-1342177276
l70: sbcEQs R9, R0, R1, LSL R4
l71: sbcGT R14, R6, R9
l72: sbcEQs R7, R7, #20
l73: sbcVS R14, R5, #237
l74: sbcCSs R8, R15, R8, ASR #2
l75: sbc R4, R5, R1
l76: sbcs R12, R1, #146
l77: sbcCS R5, R12, R4
l78: sbc R8, R11, R14, RRX 
l79: sbc R4, R4, R6
l80: sbcCC R5, R14, R10, ASR #21
l81: sbcs R2, R1, #96
l82: sbcVC R2, R3, R0, ROR #15
l83: sbcs R3, R1, R15
l84: sbc R7, R12, R11, LSL R11
l85: sbc R12, R1, R6, LSL R11
l86: sbcEQs R4, R9, R7, LSL R7
l87: sbc R9, R9, R14, RRX 
l88: sbcMI R14, R14, R1, ASR R6
l89: sbcLS R2, R2, R9
l90: sbcCSs R1, R6, R8, LSL R6
l91: sbcLEs R6, R5, R10, ROR R4
l92: sbcs R11, R8, R15
l93: sbcMI R7, R15, #212860928
l94: sbcVC R7, R7, R0, RRX 
l95: sbcGTs R1, R12, R3, ASR R7
l96: sbcGE R2, R3, #1946157056
l97: sbcs R7, R15, R3
l98: sbcs R9, R8, R2
l99: sbc R1, R12, R2, ASR R3
l100: sbcs R4, R0, #12058624
l101: sbcs R12, R7, R15
l102: sbc R7, R15, R6
l103: sbcNE R6, R12, R3, ASR R0
l104: sbcs R3, R14, #336
l105: sbcMIs R5, R9, R15, ROR #3
l106: sbcCSs R6, R14, #958464
l107: sbc R11, R12, R14, ASR #1
l108: sbc R14, R7, #1916928
l109: sbc R12, R8, R10, LSR #7
l110: sbcGEs R2, R11, R4, ASR #31
l111: sbc R7, R8, R0
l112: sbcCCs R8, R6, R8, ASR R4
l113: sbcs R9, R5, R0
l114: sbc R12, R2, #541065216
l115: sbcs R5, R1, R8, ROR R7
l116: sbcCSs R3, R15, R1
l117: sbcMI R10, R3, #-268435447
l118: sbcs R12, R0, R12
l119: sbcLS R12, R3, R7, RRX 
l120: sbcs R14, R4, R1
l121: sbcMI R11, R9, #52690944
l122: sbcLSs R2, R12, R2, ROR #24
l123: sbc R1, R8, R10, RRX 
l124: sbcGE R0, R6, #752
l125: sbc R9, R2, #147456
l126: sbcNE R4, R1, #4352
l127: sbcs R14, R11, R0, ROR R8
l128: sbcVC R11, R14, #226304
l129: sbcs R14, R11, #210763776
l130: sbcGE R8, R7, R14, RRX 
l131: sbcLSs R14, R14, #14528
l132: sbcLSs R1, R2, R11
l133: sbcGT R2, R12, R3, ASR #3
l134: sbcHI R6, R8, #13893632
l135: sbcLT R2, R4, R9
l136: sbcCS R8, R12, R12
l137: sbcCSs R5, R3, #30720
l138: sbc R7, R3, R2
l139: sbcHI R1, R15, #-1073741812
l140: sbcPL R9, R10, R10
l141: sbcLS R8, R6, R3, ROR #9
l142: sbcs R12, R9, R14
l143: sbcHIs R1, R9, R12, LSL R3
l144: sbcLSs R5, R10, R9
l145: sbcs R3, R15, R0, LSR #23
l146: sbcCC R8, R9, R2, LSL #21
l147: sbcMIs R3, R2, R3, ROR R4
l148: sbcMI R8, R8, R9
l149: sbc R3, R10, R0
l150: sbcGT R8, R5, R11, ASR #11
l151: sbc R0, R3, #1073741824
l152: sbc R7, R8, R10
l153: sbcEQ R0, R4, R1, ROR #14
l154: sbcMIs R5, R0, R9, LSL R12
l155: sbc R2, R15, #9240576
l156: sbcNE R5, R1, R0, LSL R1
l157: sbcPL R14, R14, R11
l158: sbcPL R8, R4, R0, ASR R14
l159: sbcLEs R2, R5, R14, ASR R11
l160: sbc R3, R8, R6, ASR R6
l161: sbc R10, R1, R8, LSL #14
l162: sbc R4, R3, R8
l163: sbcLE R3, R9, #-1962934272
l164: sbcMI R0, R0, R6, LSL R0
l165: sbcEQs R12, R8, R11, ASR R11
l166: sbcCS R1, R7, #1342177281
l167: sbc R9, R5, R12
l168: sbcLTs R4, R15, R8
l169: sbcs R7, R1, R9, LSL #22
l170: sbc R12, R5, R8, ASR #15
l171: sbcs R7, R10, #1073741869
l172: sbcGTs R0, R4, R1
l173: sbcCSs R9, R5, R1, LSL #1
l174: sbcLTs R7, R5, #261120
l175: sbcEQ R11, R2, R8
l176: sbcCCs R11, R1, #9043968
l177: sbc R1, R15, R10, LSL #6
l178: sbcVSs R1, R3, R11, LSL R11
l179: sbc R4, R14, R3
l180: sbcVCs R1, R6, R9, ROR R10
l181: sbcVSs R2, R15, #81920
l182: sbcEQ R0, R12, R11, ASR #0
l183: sbcPLs R11, R4, #524288000
l184: sbcVC R0, R2, R8, ROR #31
l185: sbcLE R0, R9, R5, RRX 
l186: sbcs R7, R10, R2
l187: sbc R0, R9, R3
l188: sbcEQ R8, R15, R9, ROR #17
l189: sbcs R14, R3, R1, RRX 
l190: sbcs R8, R12, R14, ASR #30
l191: sbcHIs R8, R2, R9, ROR #31
l192: sbcs R6, R8, R5, ROR R4
l193: sbcPL R5, R5, R3, ROR #3
l194: sbcs R1, R6, R10, RRX 
l195: sbcGE R4, R7, R1, RRX 
l196: sbcCC R10, R4, R5, ROR R9
l197: sbcs R12, R3, R0, LSL R1
l198: sbc R5, R4, R6, LSR #15
l199: sbcGT R9, R5, R14, ROR #14
l200: sbcLS R2, R1, R15, ASR #10
l201: sbcs R8, R8, #1409286144
l202: sbcLT R8, R14, R4
l203: sbcGE R0, R1, R7, ASR #17
l204: sbcHIs R0, R5, R4, LSL R1
l205: sbc R6, R4, #65798144
l206: sbcs R1, R8, R15, RRX 
l207: sbcCCs R3, R4, R10, ROR R10
l208: sbcHIs R2, R2, R9, ROR #23
l209: sbcNEs R11, R8, R9, ASR R6
l210: sbcHI R10, R6, R15
l211: sbcGE R11, R8, R11, ASR R9
l212: sbcMI R1, R12, #824
l213: sbcVS R9, R3, R6, ASR #13
l214: sbcVSs R8, R6, #1073741839
l215: sbcHIs R12, R12, R4, LSL #3
l216: sbcLE R1, R0, R8, RRX 
l217: sbcLTs R3, R3, #-1895825408
l218: sbc R9, R2, #-1879048192
l219: sbc R4, R7, R6, ASR #9
l220: sbcLEs R8, R1, R9, LSR #7
l221: sbcCSs R8, R2, R2
l222: sbcs R12, R6, R7, ASR #4
l223: sbcs R14, R14, R15, RRX 
l224: sbcNE R7, R15, R6, ASR #1
l225: sbcs R11, R11, R12, RRX 
l226: sbcGT R6, R2, R5, RRX 
l227: sbcGE R10, R11, #217088
l228: sbcNEs R2, R8, #578813952
l229: sbc R3, R12, R4, RRX 
l230: sbcLSs R10, R5, R2, LSL R7
l231: sbc R8, R6, R1, ASR R8
l232: sbcGTs R2, R5, R14, LSL R1
l233: sbcs R0, R14, R8
l234: sbc R8, R5, #1073741825
l235: sbc R3, R3, #50331648
l236: sbcPL R6, R4, R4
l237: sbcs R8, R9, R7, RRX 
l238: sbcLTs R11, R7, R11, ROR #11
l239: sbcVC R3, R10, R1, ASR #5
l240: sbc R3, R0, R5
l241: sbcs R11, R15, #-738197503
l242: sbcNE R7, R5, #5373952
l243: sbcVSs R0, R12, R8, LSR #10
l244: sbcNE R14, R10, R2, LSR R6
l245: sbcs R7, R0, #1984
l246: sbcLT R3, R11, R4, LSR R2
l247: sbcGE R11, R6, #186368
l248: sbcVC R4, R9, R7, LSL #17
l249: sbcs R11, R1, #-536870912
l250: sbcCS R7, R10, R1, ROR R8
l251: sbcLEs R7, R4, R2, LSR R1
l252: sbcCCs R14, R15, R12
l253: sbcLSs R12, R1, #-2147483594
l254: sbcEQs R14, R0, R10
l255: sbcGTs R14, R10, R12
l256: sbcs R14, R3, R4, LSL #7
l257: sbcs R8, R1, R8, LSL #28
l258: sbcLSs R1, R1, R9, ROR R8
l259: sbcs R6, R8, R2, ROR #27
l260: sbcMIs R10, R7, R15
l261: sbcGTs R5, R6, #713031680
l262: sbcs R7, R11, R5
l263: sbc R3, R9, #221
l264: sbcHIs R10, R6, #47104
l265: sbcGTs R12, R7, R7
l266: sbcPL R14, R12, R2
l267: sbcLT R11, R0, R12
l268: sbc R4, R6, R15
l269: sbcMI R10, R11, #268435456
l270: sbc R12, R4, R10, LSL R10
l271: sbcs R8, R2, R10, RRX 
l272: sbcNEs R7, R3, R8, LSR R2
l273: sbcs R9, R14, #9633792
l274: sbcCCs R4, R4, #4992
l275: sbc R3, R0, R11, LSR R12
l276: sbcEQs R3, R12, R12, ROR #21
l277: sbcHI R2, R10, R4
l278: sbcs R8, R4, #980
l279: sbcEQ R3, R9, R2, LSL #27
l280: sbcVCs R7, R9, R0, ASR R8
l281: sbcLSs R3, R2, R10, LSL R11
l282: sbcLS R1, R12, R10, LSL #14
l283: sbcCS R2, R8, R0
l284: sbcVC R4, R4, R1
l285: sbcs R7, R5, R9, LSR #27
l286: sbcs R11, R7, R7, LSR R6
l287: sbcs R10, R8, R6
l288: sbcEQs R2, R15, R8, LSL #27
l289: sbcGTs R6, R8, R10
l290: sbcLSs R12, R0, R14, LSR R12
l291: sbcHIs R11, R8, R0, LSR R14
l292: sbcVCs R0, R2, #14208
l293: sbcCCs R4, R0, R9, RRX 
l294: sbcGT R8, R10, #753664
l295: sbc R4, R2, R4, LSL R9
l296: sbcCC R11, R14, R6
l297: sbcs R5, R3, #1654784
l298: sbc R2, R0, R11, ASR #18
l299: sbcCSs R4, R3, R14, ROR R0
l300: sbcVCs R4, R2, #2976
l301: sbcMI R9, R15, #6815744
l302: sbcs R3, R8, R4, LSR #12
l303: sbcGT R11, R2, R2
l304: sbc R12, R6, R1
l305: sbcCS R1, R7, #97517568
l306: sbcLE R3, R3, #616562688
l307: sbcVS R11, R1, R1
l308: sbc R0, R3, #-16777216
l309: sbcEQs R9, R12, R1
l310: sbcs R2, R9, R15, ASR #11
l311: sbcMIs R8, R11, #33292288
l312: sbcs R12, R1, R2
l313: sbcCSs R8, R7, R1, RRX 
l314: sbcMIs R12, R0, R14
l315: sbcCCs R1, R1, R6
l316: sbcLS R10, R5, #524288
l317: sbcVCs R4, R10, #-268435454
l318: sbcEQ R5, R3, #28160
l319: sbcPL R6, R6, R4, LSR R7
l320: sbc R7, R15, R15
l321: sbcVCs R7, R2, #780140544
l322: sbcPL R14, R14, #-603979773
l323: sbcs R5, R9, #822083584
l324: sbcCC R14, R1, R4
l325: sbcPL R11, R2, R10
l326: sbcHIs R9, R2, R9
l327: sbc R6, R14, R5, ASR R3
l328: sbcs R1, R5, R5, LSR #11
l329: sbc R4, R10, #171
l330: sbcs R8, R3, R5, LSL R2
l331: sbcs R12, R5, R14, RRX 
l332: sbcs R2, R5, R7
l333: sbcEQs R10, R7, #80740352
l334: sbcs R1, R15, R4, LSL #27
l335: sbc R9, R15, R3, RRX 
l336: sbcLEs R14, R6, #2768
l337: sbc R1, R7, R1
l338: sbc R0, R0, R14, LSR #26
l339: sbcGTs R11, R12, R9
l340: sbcGT R6, R7, R4
l341: sbcPL R2, R7, R11
l342: sbcLE R10, R12, #226492416
l343: sbcs R12, R14, R5
l344: sbcLEs R0, R2, R12
l345: sbcs R14, R10, R10, LSR #15
l346: sbcNE R3, R2, R12
l347: sbcs R14, R11, R8, LSR #30
l348: sbcCSs R0, R11, R8
l349: sbcMIs R10, R1, R12
l350: sbc R3, R1, #-1677721600
l351: sbcs R6, R9, #40448
l352: sbcCSs R10, R6, R4, RRX 
l353: sbcMIs R14, R9, R7, RRX 
l354: sbcVS R3, R8, R6, ROR R5
l355: sbcLS R12, R4, R10
l356: sbc R1, R3, #-536870904
l357: sbcHIs R8, R2, R9
l358: sbcMI R8, R10, R5
l359: sbcs R14, R2, R1, ROR #10
l360: sbcs R1, R3, R6, ROR R10
l361: sbc R9, R5, #147456
l362: sbcs R2, R4, #3152
l363: sbcPL R9, R9, #753664
l364: sbcMIs R1, R4, R0
l365: sbc R4, R10, R12, ROR R8
l366: sbcHI R11, R7, R4
l367: sbcLS R12, R6, R3
l368: sbcGE R10, R9, R11
l369: sbcVSs R7, R8, R1, ROR R0
l370: sbcLEs R2, R0, R9, RRX 
l371: sbcPL R4, R4, R14, LSL R6
l372: sbcPLs R0, R14, #1376256
l373: sbc R9, R14, R1, LSR R8
l374: sbcs R3, R6, #126
l375: sbc R14, R10, #74
l376: sbcPLs R8, R12, R7
l377: sbcGTs R1, R12, #4194304
l378: sbc R9, R3, R11, LSR R9
l379: sbcs R8, R8, R0, ROR #22
l380: sbcs R4, R4, R11, ASR #10
l381: sbcPL R7, R5, #966656
l382: sbc R2, R9, R14, LSR R4
l383: sbcVC R0, R5, R12, ASR #27
l384: sbcLTs R12, R15, #109568
l385: sbcMIs R6, R5, R11, ASR R14
l386: sbcHIs R2, R8, #29622272
l387: sbcs R3, R15, R5
l388: sbcLSs R1, R5, R15
l389: sbcs R7, R4, R0, ASR #26
l390: sbcEQs R10, R10, R10
l391: sbc R8, R6, R0, LSR R0
l392: sbcCSs R7, R7, R8
l393: sbcs R6, R8, R14, ROR R11
l394: sbcGEs R2, R4, R15, ASR #2
l395: sbcNE R5, R7, R11, LSR R2
l396: sbcCS R14, R12, R4, ASR R8
l397: sbcs R3, R2, #212992
l398: sbcPL R10, R2, R11, ROR R5
l399: sbc R1, R5, #847872
l400: sbcHI R8, R3, R5, ASR #4
l401: sbcLS R10, R2, R10
l402: sbcLEs R8, R1, R8, ASR R3
l403: sbcLT R11, R0, R0
l404: sbc R11, R6, R9, RRX 
l405: sbc R8, R9, R9
l406: sbcCC R0, R14, #2080
l407: sbcs R5, R11, R9
l408: sbcVSs R4, R11, R10, LSL #13
l409: sbcEQs R10, R9, R11, RRX 
l410: sbcHIs R11, R10, R2
l411: sbcHIs R11, R0, R7
l412: sbcMI R1, R6, R3, ASR R0
l413: sbc R4, R5, R2, RRX 
l414: sbcCC R12, R3, R3, ASR R12
l415: sbcLT R14, R0, #18944
l416: sbcLTs R5, R9, R2, LSL R10
l417: sbcHI R7, R3, #684032
l418: sbcPL R4, R6, R11
l419: sbcs R1, R1, R15
l420: sbcCSs R14, R6, R11, ASR R9
l421: sbcGT R7, R0, R9, ROR #16
l422: sbc R7, R12, R10, LSR #14
l423: sbc R3, R2, #7143424
l424: sbc R14, R12, R8, ROR #19
l425: sbc R7, R6, #50331648
l426: sbcLTs R1, R7, R1, ROR #2
l427: sbc R10, R1, R4, ASR R12
l428: sbcNE R4, R2, R8, RRX 
l429: sbcHI R14, R11, #13312
l430: sbcNE R10, R15, #30976
l431: sbc R3, R3, R5
l432: sbc R10, R8, #52
l433: sbcVS R10, R14, R5
l434: sbcLTs R7, R3, R1, ROR R6
l435: sbcCC R12, R12, R6, LSL #18
l436: sbcLE R7, R9, R15, RRX 
l437: sbcCCs R9, R9, #69
l438: sbc R7, R2, R2, LSL R5
l439: sbcLT R5, R4, R0, LSR #2
l440: sbcs R6, R4, R9
l441: sbcGEs R1, R7, R8
l442: sbcs R4, R8, #64
l443: sbcLTs R8, R15, R0, LSR #17
l444: sbcLS R3, R7, #103424
l445: sbcs R3, R7, R7, ASR R11
l446: sbcs R14, R12, R8, LSL R14
l447: sbcGE R3, R12, R15, ROR #25
l448: sbcLEs R1, R7, R5
l449: sbcs R4, R4, #496
l450: sbcHI R14, R1, R12, ROR R12
l451: sbcPL R5, R2, R0, ROR #14
l452: sbc R4, R4, R4, LSR R7
l453: sbc R0, R0, R0
l454: sbcGE R9, R4, R11, ASR R12
l455: sbc R10, R4, R6, ROR #25
l456: sbc R9, R5, R1
l457: sbcs R12, R1, #1610612746
l458: sbcLS R12, R5, R12, RRX 
l459: sbcCS R14, R5, R11, ROR R8
l460: sbcLE R14, R9, R7
l461: sbcGTs R3, R6, #174080
l462: sbcCC R14, R14, R2, LSR #28
l463: sbcCS R9, R12, R0, LSL R2
l464: sbc R1, R2, #111149056
l465: sbcs R1, R15, R8
l466: sbcLE R9, R6, #11456
l467: sbc R7, R9, R4, ROR R1
l468: sbc R11, R3, R1, RRX 
l469: sbcNE R2, R8, R3, RRX 
l470: sbcGTs R14, R15, #9830400
l471: sbcMIs R12, R4, #1008
l472: sbcVC R6, R2, R10, ASR R3
l473: sbcNE R12, R12, R9, LSL #18
l474: sbc R5, R3, #-2147483614
l475: sbcGEs R9, R3, R10, ASR #2
l476: sbcVC R10, R14, #2752
l477: sbcMI R0, R6, R2
l478: sbcs R0, R10, #884998144
l479: sbc R4, R3, R7, RRX 
l480: sbcs R9, R0, R5
l481: sbc R6, R10, #1792
l482: sbcs R12, R14, R5
l483: sbc R14, R4, R10, ASR R7
l484: sbc R9, R2, #253
l485: sbcMI R7, R7, #0
l486: sbc R4, R5, R1, RRX 
l487: sbc R12, R8, R14, LSR R9
l488: sbcGEs R2, R7, R12, ASR #0
l489: sbcs R3, R10, #15616
l490: sbcs R4, R6, R5, ASR R10
l491: sbcs R14, R7, #2588672
l492: sbcs R5, R14, R0, ROR #29
l493: sbcEQ R10, R12, #495616
l494: sbcNE R6, R0, R12
l495: sbcPL R2, R5, R9
l496: sbc R4, R11, R5
l497: sbcLS R9, R3, R14
l498: sbcGT R10, R2, R11
l499: sbcHI R14, R2, R11, RRX 
l500: sbcMI R5, R14, R12, RRX 
l501: sbcGTs R6, R7, R3, ASR #9
l502: sbcLE R1, R7, #688
l503: sbcs R4, R14, R7
l504: sbcCSs R1, R15, R8, ROR #13
l505: sbcs R11, R0, R2, ROR R11
l506: sbcs R11, R4, R14
l507: sbc R0, R10, R4, RRX 
l508: sbcEQ R3, R10, R2
l509: sbcEQ R3, R1, R1, LSL #13
l510: sbcHIs R0, R4, R0, RRX 
l511: sbcCSs R0, R3, #21248
l512: sbcGT R1, R12, R2, ROR #4
l513: sbcNE R3, R4, R14, ASR R12
l514: sbcs R0, R8, R14, ASR R9
l515: sbcMI R11, R11, #268435457
l516: sbcCC R7, R11, R14, LSR #2
l517: sbc R10, R1, R0, ASR R12
l518: sbcs R9, R12, #65536
l519: sbcs R0, R14, R8, RRX 
l520: sbcPLs R0, R1, R1
l521: sbcEQs R6, R12, #909312
l522: sbc R11, R4, R11, LSL #16
l523: sbcLE R3, R4, #7274496
l524: sbcCCs R3, R10, R5, RRX 
l525: sbc R1, R7, R3
l526: sbcGE R5, R14, R12, ASR #30
l527: sbcs R10, R9, R3, RRX 
l528: sbcEQ R10, R0, R6, ASR #10
l529: sbcCS R14, R3, R4
l530: sbcGEs R5, R7, R6, LSL R1
l531: sbcLE R0, R10, R1
l532: sbcGEs R1, R7, R9, LSR #8
l533: sbcVS R9, R9, R2, RRX 
l534: sbcPL R12, R9, R4
l535: sbcVS R9, R3, #-1946157054
l536: sbcCS R3, R2, R10
l537: sbcCS R0, R11, #143
l538: sbc R4, R2, R7
l539: sbcs R2, R14, R11, ROR R0
l540: sbcs R10, R7, R8, ASR #14
l541: sbcs R6, R9, R2, ROR R5
l542: sbc R3, R0, R3
l543: sbcGE R5, R2, R0, ASR R7
l544: sbc R6, R4, R9
l545: sbcs R5, R9, R15
l546: sbcGE R8, R14, R8, LSR R5
l547: sbcs R7, R1, R8
l548: sbcs R6, R5, R14, RRX 
l549: sbc R3, R3, #11200
l550: sbcHI R6, R1, R10, RRX 
l551: sbc R5, R12, R8, RRX 
l552: sbcs R5, R14, R6
l553: sbc R3, R8, R8, RRX 
l554: sbcPLs R1, R6, R8
l555: sbcLTs R5, R7, R11
l556: sbcLSs R0, R5, R6, RRX 
l557: sbcCS R12, R10, R14, ROR R3
l558: sbcMI R2, R4, R11, LSL #0
l559: sbcEQs R8, R8, R6, ROR #9
l560: sbcVC R1, R8, R8, ROR R6
l561: sbcVC R3, R1, R8, ASR R4
l562: sbcVC R0, R2, R10, LSL R9
l563: sbcHIs R5, R10, R5
l564: sbcVC R8, R1, R5
l565: sbcCS R1, R6, R12
l566: sbc R7, R7, R7
l567: sbcs R7, R12, R4, LSR R6
l568: sbcs R12, R4, R0
l569: sbcNE R6, R9, #128
l570: sbcVCs R11, R3, #14680064
l571: sbcLT R10, R14, #29360128
l572: sbcLSs R8, R14, R3, ROR R1
l573: sbcHI R4, R9, R0, LSL R1
l574: sbcs R11, R12, R2, ROR R6
l575: sbcVCs R12, R15, #3293184
l576: sbcGEs R7, R5, R12, LSR #15
l577: sbcCS R12, R6, #917504
l578: sbcLEs R6, R0, #708
l579: sbcPLs R3, R12, R12, LSR #25
l580: sbc R0, R9, R12, ROR #2
l581: sbcs R10, R8, R2
l582: sbcGEs R3, R6, R10
l583: sbc R4, R9, R0, ASR R7
l584: sbcs R3, R9, R2, RRX 
l585: sbcGE R1, R2, R8, LSL #26
l586: sbcLS R1, R9, R7, ROR #6
l587: sbcs R8, R8, #203
l588: sbcGT R2, R8, R0, RRX 
l589: sbcHI R11, R1, R0, ROR R1
l590: sbcMI R5, R2, R0, RRX 
l591: sbcGT R11, R4, R0, RRX 
l592: sbcLT R8, R1, R6, LSR R5
l593: sbcs R8, R10, R6, LSR #18
l594: sbcVSs R0, R12, R15, ASR #7
l595: sbcs R12, R5, #816
l596: sbcVS R2, R3, R9, LSL #19
l597: sbcLE R9, R4, R12, RRX 
l598: sbcs R12, R1, R15, LSR #6
l599: sbcGTs R2, R10, R8
l600: sbcMI R8, R14, R6, ROR R6
l601: sbcGTs R11, R0, R7
l602: sbcHI R14, R9, R5, LSL #0
l603: sbcs R3, R4, R14, LSL #2
l604: sbcNEs R6, R3, R11, ROR #7
l605: sbc R11, R14, R10
l606: sbcs R11, R2, R10, LSL #31
l607: sbcs R5, R10, R0, RRX 
l608: sbcs R12, R6, R7, ROR R7
l609: sbcs R5, R2, R4, ROR #9
l610: sbc R14, R9, #-1409286144
l611: sbcGE R5, R15, R8
l612: sbcs R3, R1, R14, LSL R12
l613: sbcs R10, R5, #2736128
l614: sbcLE R11, R5, R0, LSR R14
l615: sbcLEs R2, R6, R6, ROR R0
l616: sbcNEs R4, R3, R15, RRX 
l617: sbc R10, R4, R10
l618: sbcs R11, R1, #128000
l619: sbc R6, R0, R5, ASR R11
l620: sbcVS R6, R14, R1, ROR R9
l621: sbcCCs R9, R4, R11, RRX 
l622: sbcLE R0, R15, #-2147483615
l623: sbcVS R12, R11, R4, ASR R2
l624: sbcMI R4, R0, R3
l625: sbc R5, R12, #412
l626: sbcVSs R3, R11, R1, RRX 
l627: sbcs R0, R10, R12
l628: sbcVS R0, R7, #-1946157056
l629: sbcPL R11, R15, R0
l630: sbc R12, R10, R14, ASR R10
l631: sbcs R4, R0, #6272
l632: sbcPL R10, R3, R8, LSL R4
l633: sbcNEs R7, R0, #654311424
l634: sbcHI R1, R3, R0, LSR #6
l635: sbc R3, R1, R15, ROR #21
l636: sbc R7, R6, R10, LSR R0
l637: sbcLE R11, R1, #3145728
l638: sbc R7, R10, R2, RRX 
l639: sbcLS R2, R5, R14
l640: sbc R2, R5, R2
l641: sbcLT R7, R1, R15, RRX 
l642: sbc R1, R15, R12
l643: sbcLS R14, R14, R14, ASR R4
l644: sbcLSs R1, R2, R8, ROR #6
l645: sbcs R14, R0, R12, ROR #20
l646: sbc R1, R11, R4, ASR R6
l647: sbcLS R14, R12, #152
l648: sbcVCs R2, R3, R5, LSL R1
l649: sbc R7, R5, R5
l650: sbcs R3, R8, R2, RRX 
l651: sbcs R10, R6, #419430400
l652: sbcEQs R3, R5, R7, ROR R5
l653: sbcVCs R2, R9, #45312
l654: sbcPL R12, R4, R8, LSL R10
l655: sbc R0, R12, R2, LSR #22
l656: sbcMI R3, R15, #12800
l657: sbcHI R1, R15, R10
l658: sbcCCs R1, R15, #30670848
l659: sbcPL R0, R14, R11, LSL #0
l660: sbc R6, R10, R6, RRX 
l661: sbcLS R6, R15, #166912
l662: sbcLT R3, R8, R5, LSL #3
l663: sbcs R5, R0, R11
l664: sbcPL R8, R1, R14, LSL #19
l665: sbcs R10, R11, R7
l666: sbcHIs R2, R10, #-1073741774
l667: sbc R9, R0, #1904
l668: sbcLS R3, R10, #1179648
l669: sbcGT R2, R4, R3, ASR #14
l670: sbcLS R10, R9, R9, ASR R6
l671: sbcs R7, R5, R14, LSR #26
l672: sbc R1, R4, R3, LSR R8
l673: sbcNE R2, R5, #268435458
l674: sbcGE R5, R14, R0, LSR R4
l675: sbcLEs R9, R2, R0, ROR #17
l676: sbcs R4, R7, R3, ROR #9
l677: sbcs R9, R2, R10, ASR R3
l678: sbc R6, R14, R0, RRX 
l679: sbcVCs R2, R4, R0
l680: sbcVC R12, R4, #79872
l681: sbcLSs R2, R2, R1
l682: sbcs R14, R8, R3
l683: sbcEQs R12, R9, R9, ROR #12
l684: sbcCC R7, R1, R8, LSR R6
l685: sbcLT R1, R11, R12, ASR #8
l686: sbcLS R11, R14, #50176
l687: sbc R14, R5, R8, ASR #12
l688: sbcGT R9, R12, R2, ASR R1
l689: sbcLEs R5, R3, R9, ROR #23
l690: sbcCSs R10, R14, R10
l691: sbc R8, R6, R7, RRX 
l692: sbcHI R0, R14, R7, ROR R0
l693: sbcCCs R12, R9, R9
l694: sbcPLs R2, R5, R2
l695: sbcCSs R4, R0, R15, LSR #15
l696: sbcs R7, R6, R14, ASR R9
l697: sbcVCs R7, R11, #1671168
l698: sbcCC R10, R10, R7, LSR #14
l699: sbcs R3, R4, #47710208
l700: sbcs R9, R15, #81920
l701: sbc R8, R6, R7, LSR R2
l702: sbcs R9, R8, R8
l703: sbc R10, R8, R5, ROR #4
l704: sbc R11, R3, R2, RRX 
l705: sbcs R9, R11, R5
l706: sbcVCs R7, R1, R12
l707: sbc R10, R5, R5
l708: sbc R5, R12, R4, ASR R11
l709: sbcVSs R7, R2, R10, LSR R7
l710: sbcs R0, R0, #3637248
l711: sbcCC R4, R3, R1, ROR R0
l712: sbcs R7, R10, R5
l713: sbcPL R10, R6, #236
l714: sbc R5, R5, R1, LSL R7
l715: sbcLS R2, R10, R2
l716: sbcEQ R7, R2, #4608
l717: sbcCSs R9, R4, R7, ROR R8
l718: sbcs R6, R2, #45350912
l719: sbcCS R8, R0, #3227648
l720: sbc R7, R15, #880
l721: sbc R4, R5, #-805306355
l722: sbc R9, R10, R7, ASR #24
l723: sbcCC R1, R5, R14
l724: sbcNEs R1, R3, R15, RRX 
l725: sbcPL R5, R10, R3
l726: sbcCS R8, R4, R2, ASR R5
l727: sbcLTs R4, R3, R12
l728: sbcLT R12, R3, R9
l729: sbcNE R7, R6, R5
l730: sbcVCs R5, R14, R15
l731: sbc R5, R7, R0, RRX 
l732: sbcGTs R3, R9, R0, ASR R9
l733: sbc R4, R5, #667648
l734: sbcLT R5, R6, #2686976
l735: sbcLTs R4, R10, #496
l736: sbcHIs R8, R14, R14
l737: sbcNEs R9, R7, R3, ASR R8
l738: sbcs R10, R8, R12, LSL R12
l739: sbcPL R11, R0, R0
l740: sbcVCs R14, R6, R11
l741: sbcs R2, R0, #13184
l742: sbcHI R4, R2, #281018368
l743: sbc R8, R9, R7, ROR R2
l744: sbcLEs R3, R4, R9, LSL R6
l745: sbcs R5, R14, R6, ROR R8
l746: sbcGT R9, R5, R5, ASR R3
l747: sbcVCs R3, R4, #634880
l748: sbc R5, R8, R2, LSR R4
l749: sbc R7, R14, R0, ROR #17
l750: sbc R2, R0, R5
l751: sbcHI R14, R5, R1, ROR #22
l752: sbcMIs R12, R12, R4, ASR #10
l753: sbcs R9, R12, R6, RRX 
l754: sbc R1, R5, R12, ASR R11
l755: sbcs R10, R2, R8, ROR R6
l756: sbcEQs R9, R0, R12, LSL #28
l757: sbcCSs R5, R10, R9, LSL R4
l758: sbcs R2, R11, R1
l759: sbcs R10, R7, R15
l760: sbcLT R10, R7, #2112
l761: sbcHI R10, R9, R10, ROR #27
l762: sbcVCs R7, R7, R14, RRX 
l763: sbcs R8, R10, #6225920
l764: sbcCCs R10, R0, R8, ASR R3
l765: sbcPL R0, R0, R0, ASR #17
l766: sbcLSs R4, R14, #750780416
l767: sbcGT R0, R1, R1
l768: sbcs R11, R2, R12
l769: sbcGE R7, R7, R9, ASR R2
l770: sbcVC R8, R15, R1
l771: sbcPLs R14, R1, R0, LSL R10
l772: sbc R1, R1, R5
l773: sbcEQ R11, R8, R5, RRX 
l774: sbcCC R2, R0, #-671088638
l775: sbc R1, R4, #-1610612734
l776: sbcVSs R0, R8, R5, LSR R4
l777: sbcPL R7, R6, #30
l778: sbcPLs R12, R8, #11392
l779: sbc R4, R10, R15
l780: sbcGEs R10, R7, R1, ROR #28
l781: sbcs R2, R12, R6, ASR R9
l782: sbcs R0, R15, R2, RRX 
l783: sbc R6, R7, #171966464
l784: sbcVS R11, R14, #15616
l785: sbcGEs R9, R10, #45613056
l786: sbcs R0, R1, R15
l787: sbcLE R3, R0, R11
l788: sbcs R6, R1, R6
l789: sbcs R7, R10, #52428800
l790: sbc R11, R7, R3
l791: sbc R5, R3, #1073741874
l792: sbcVS R1, R14, R6, ROR #28
l793: sbc R14, R0, R0
l794: sbcMIs R9, R5, #29
l795: sbcMI R11, R0, #245760
l796: sbcs R2, R10, R0, ROR #10
l797: sbcGEs R0, R4, R7
l798: sbcs R5, R5, R11, RRX 
l799: sbcs R5, R10, #1677721603
l800: sbcMI R6, R3, R10, LSL #5
l801: sbcVC R1, R8, R5, ROR R11
l802: sbc R0, R10, #3145728
l803: sbcVS R6, R1, R7, LSL #28
l804: sbcCC R4, R8, R0, LSR #16
l805: sbcGE R10, R5, #20480
l806: sbc R10, R5, R7
l807: sbcLS R7, R10, R4, ROR #16
l808: sbcs R8, R12, #198656
l809: sbcLTs R3, R14, R11
l810: sbcGT R11, R11, R14
l811: sbcs R1, R9, R7, ASR #6
l812: sbcs R2, R11, R4, LSL R11
l813: sbcPL R1, R9, R11, ROR R12
l814: sbcs R6, R5, R9, LSR R14
l815: sbcMIs R12, R4, R8, ROR #8
l816: sbcLEs R12, R7, R7, ROR R1
l817: sbcCCs R0, R9, R7, ROR R2
l818: sbc R9, R12, R1, ASR R9
l819: sbcLTs R14, R4, R7, LSR R14
l820: sbcs R11, R1, #314572800
l821: sbcHI R14, R11, #268435468
l822: sbcLT R6, R8, R14, LSR #23
l823: sbcGT R4, R5, #6422528
l824: sbcs R11, R11, R1, LSL R9
l825: sbcs R0, R12, R12, LSR R4
l826: sbc R2, R4, #985661440
l827: sbc R14, R14, R11, LSL R8
l828: sbcLE R7, R0, R14, ROR #12
l829: sbcGE R6, R3, R7
l830: sbcs R1, R6, R6, ASR R4
l831: sbcs R10, R6, R14, RRX 
l832: sbcs R0, R5, #36
l833: sbcPLs R10, R6, #11
l834: sbcLT R6, R7, R8, RRX 
l835: sbc R6, R6, R10, LSL #23
l836: sbcs R9, R0, #720896
l837: sbc R11, R5, R11, LSR R3
l838: sbcLSs R12, R3, R11, LSR R1
l839: sbcEQ R9, R11, R3, ASR #30
l840: sbcGE R6, R15, #377487360
l841: sbc R3, R8, R3, RRX 
l842: sbcHIs R4, R12, #40370176
l843: sbcs R12, R5, R5, RRX 
l844: sbcCC R6, R2, R4, ROR R7
l845: sbcVC R2, R4, #1610612748
l846: sbcPL R7, R4, R7
l847: sbcGEs R0, R5, R2, ROR #14
l848: sbcGEs R7, R12, R6, LSR #25
l849: sbcs R2, R12, R14, LSR R3
l850: sbcs R11, R7, R1, RRX 
l851: sbcGTs R12, R9, #152
l852: sbcVCs R9, R12, R6, LSR #12
l853: sbcs R0, R9, #173
l854: sbcs R6, R10, #254803968
l855: sbcCS R7, R9, R7
l856: sbcGTs R7, R0, R11, LSL #11
l857: sbcCC R7, R11, R0, RRX 
l858: sbcLS R6, R9, R7, ASR R12
l859: sbcEQs R2, R4, R1, ROR #11
l860: sbcs R3, R3, R6, ASR #4
l861: sbc R3, R6, R2, LSR #26
l862: sbcCS R5, R14, R8, ASR #11
l863: sbcLEs R1, R12, R15, RRX 
l864: sbcCS R14, R11, R1
l865: sbcVC R3, R2, R12, RRX 
l866: sbcLEs R5, R3, #46592
l867: sbcVCs R12, R6, R1, ASR #12
l868: sbcVCs R4, R15, #629145600
l869: sbcs R12, R5, #93323264
l870: sbcHI R5, R10, #968
l871: sbc R7, R4, R5
l872: sbcEQ R1, R11, R3
l873: sbc R7, R15, R11
l874: sbcNE R14, R0, R9, LSL #7
l875: sbcs R6, R8, R7, ROR #30
l876: sbcs R14, R1, R14
l877: sbcLEs R10, R15, #1677721603
l878: sbcGT R3, R12, R11, LSR #12
l879: sbcs R0, R3, R1, LSL #27
l880: sbcVC R8, R11, R1, ASR R0
l881: sbcCSs R10, R15, R0, LSR #19
l882: sbcLT R1, R3, R3, ROR R9
l883: sbcLTs R8, R5, R2, RRX 
l884: sbc R8, R14, R15, ASR #22
l885: sbcs R6, R9, R8
l886: sbcGTs R3, R12, #900
l887: sbcPLs R8, R9, #5963776
l888: sbcLTs R5, R14, R6, ASR #15
l889: sbc R6, R2, R10, LSR #17
l890: sbcMIs R12, R14, R14, LSL #23
l891: sbcCS R11, R11, #-536870907
l892: sbcLTs R4, R6, R1, ROR R7
l893: sbc R11, R5, #139460608
l894: sbc R14, R1, #23
l895: sbcVSs R11, R1, R2, ROR #28
l896: sbcVS R7, R9, R3, RRX 
l897: sbcGT R1, R2, #144
l898: sbcLTs R14, R2, R5, RRX 
l899: sbcEQ R12, R12, R3, ROR R8
l900: sbcVSs R9, R6, R4, ASR #10
l901: sbcGEs R10, R3, #8896
l902: sbc R9, R9, R11
l903: sbcs R0, R4, R1
l904: sbcHI R12, R12, R6, LSL #15
l905: sbcGEs R2, R10, R7, ASR R12
l906: sbcs R12, R10, #125829120
l907: sbc R10, R8, #248
l908: sbcLSs R12, R1, R14, RRX 
l909: sbcs R10, R9, R8
l910: sbcGT R4, R6, R9, ASR R1
l911: sbcNEs R9, R3, R4
l912: sbcPLs R12, R3, R1
l913: sbc R3, R0, #0
l914: sbcHI R12, R7, R1, LSR R14
l915: sbcPLs R7, R3, R0, LSR R8
l916: sbcPL R7, R9, #7602176
l917: sbcLS R9, R9, #17664
l918: sbcVC R9, R0, #1376256
l919: sbcVSs R2, R15, R0, ASR #26
l920: sbcs R4, R10, #-1879048190
l921: sbcs R14, R12, R0, RRX 
l922: sbcHI R8, R0, R1, ROR R1
l923: sbcLE R9, R3, #1114112
l924: sbc R0, R9, R3, RRX 
l925: sbcEQs R3, R3, R3
l926: sbcs R8, R11, R5
l927: sbcVCs R12, R15, #239075328
l928: sbc R4, R10, R12, ASR #26
l929: sbcPL R10, R3, #1687552
l930: sbcLSs R2, R2, #1409286144
l931: sbc R14, R8, R8, ASR R10
l932: sbcLE R4, R0, R0, ROR R6
l933: sbc R8, R7, R7
l934: sbc R6, R5, R14
l935: sbcs R2, R6, R10
l936: sbcLSs R1, R9, #82944
l937: sbcs R4, R7, R0, LSL R10
l938: sbc R2, R7, R2, LSR R12
l939: sbcs R10, R14, #66846720
l940: sbcGEs R9, R5, R2, ROR #7
l941: sbcCC R12, R11, #1006632960
l942: sbc R12, R6, R1, RRX 
l943: sbcs R4, R9, R12, RRX 
l944: sbcEQs R5, R8, R0, RRX 
l945: sbcs R1, R4, R0, ROR #23
l946: sbc R4, R9, R2, ASR #10
l947: sbcNE R1, R9, #8512
l948: sbcCC R7, R0, R11, ASR #3
l949: sbcVS R2, R8, #2130706432
l950: sbcs R14, R11, R6, RRX 
l951: sbc R14, R9, #68
l952: sbcLT R4, R1, #11584
l953: sbcs R5, R3, R10, ASR #9
l954: sbc R10, R8, R9
l955: sbc R11, R1, R4, ASR R7
l956: sbcPL R9, R2, R15, ROR #27
l957: sbcEQs R6, R9, #562036736
l958: sbcs R1, R1, #1744830464
l959: sbcNE R3, R14, R15, LSL #16
l960: sbcCCs R14, R15, R7
l961: sbcVSs R4, R6, #110592
l962: sbcEQs R11, R14, R5, ROR R2
l963: sbcs R10, R4, R7, LSL R6
l964: sbcs R9, R1, #9216
l965: sbcs R8, R15, R5
l966: sbc R1, R5, R11, RRX 
l967: sbcs R0, R8, R5
l968: sbcHIs R11, R5, R15, RRX 
l969: sbcVS R6, R5, R15
l970: sbcs R9, R5, R11
l971: sbcVCs R0, R6, #58195968
l972: sbcs R4, R9, R10, RRX 
l973: sbcs R14, R15, R3
l974: sbc R14, R7, R9, LSL R9
l975: sbcs R5, R4, R1, ROR #19
l976: sbcLE R5, R3, R14, LSR R8
l977: sbcs R6, R14, R5
l978: sbcs R1, R10, #3232
l979: sbcPLs R5, R5, R4, ASR R9
l980: sbcCS R12, R1, R5, LSL #17
l981: sbcCS R12, R9, R9
l982: sbcs R6, R12, #147
l983: sbcs R1, R7, R2
l984: sbcs R8, R8, R1, RRX 
l985: sbcEQ R1, R7, R7, ASR #31
l986: sbcs R6, R8, R14, RRX 
l987: sbcVS R1, R3, #0
l988: sbcLEs R14, R4, R9, LSL #15
l989: sbc R0, R3, R8
l990: sbcNEs R2, R5, R9, ASR R5
l991: sbcGT R1, R0, R2, ASR R3
l992: sbcs R4, R0, R7
l993: sbcs R12, R6, R2
l994: sbc R5, R8, R1, LSR R2
l995: sbcMI R2, R4, #442368
l996: sbcs R12, R14, #15335424
l997: sbcVSs R3, R15, R9, LSR #20
l998: sbcEQ R1, R4, R4, ASR R0
l999: sbcPL R1, R10, R0
l1000: sbcCCs R2, R4, #720
end: b end

