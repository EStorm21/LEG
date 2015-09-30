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
val1: .word 2701595776
next1:ldr R2, val2
b next2
val2: .word 2949378079
next2:ldr R3, val3
b next3
val3: .word 3017932306
next3:ldr R4, val4
b next4
val4: .word 2482370833
next4:ldr R5, val5
b next5
val5: .word 3450706006
next5:ldr R6, val6
b next6
val6: .word 731792604
next6:ldr R7, val7
b next7
val7: .word 62113856
next7:ldr R8, val8
b next8
val8: .word 1689579155
next8:ldr R9, val9
b next9
val9: .word 2365805066
next9:ldr R10, val10
b next10
val10: .word 1441177649
next10:ldr R11, val11
b next11
val11: .word 1271667143
next11:ldr R12, val12
b next12
val12: .word 2391098205
next12:ldr R14, val14
b next14
val14: .word 1060365309

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 2458331391
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 3244164831
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3795947347
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 2645580081
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 2496446461
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 2600031115
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 2101211246
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 2456566201
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 1943066303
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 691186786
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 2134741965
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 2735346312
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 138061117
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 3095648663
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 1235033258
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 3843227196
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 1865807799
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 1795283977
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 1866965549
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 1438676029
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 4241916416
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: and R4, R15, R9
l2: ands R8, R14, R12
l3: andHIs R0, R4, #700416
l4: and R14, R14, R8
l5: andLT R3, R9, R9, LSR #9
l6: andLEs R14, R5, #72351744
l7: and R0, R7, R1, ROR #8
l8: andLTs R11, R2, R0, ASR #26
l9: and R1, R4, #4352
l10: and R2, R11, #268435466
l11: andMIs R2, R10, #2785280
l12: ands R7, R1, #49152
l13: andGTs R12, R11, R6
l14: andPL R3, R3, R6
l15: andHIs R4, R6, #-184549376
l16: andNE R10, R6, #808
l17: andNEs R8, R14, R4
l18: andLSs R8, R2, R10, ROR R10
l19: andVC R14, R14, #58720256
l20: ands R9, R5, R9, RRX 
l21: and R9, R8, #647168
l22: andGE R6, R6, R12, RRX 
l23: ands R7, R2, R2
l24: and R5, R4, R3
l25: and R3, R2, R12, LSL #28
l26: and R14, R11, R6, ROR #13
l27: andVCs R9, R8, R7
l28: andVC R3, R15, R1
l29: andLSs R1, R1, #-2147483643
l30: ands R12, R4, R4, LSR R10
l31: ands R2, R12, R3, ASR #21
l32: ands R7, R15, R9, RRX 
l33: andLTs R8, R2, R3, ROR R9
l34: andLTs R11, R2, R2, LSR #16
l35: and R5, R0, R2, RRX 
l36: andLEs R6, R5, #10624
l37: and R5, R8, R15
l38: andEQ R3, R0, #-2147483585
l39: andCSs R14, R0, R2, LSL R10
l40: andLS R0, R5, R10
l41: ands R12, R1, R11
l42: and R2, R5, R6
l43: and R2, R2, #1811939329
l44: and R10, R0, R15
l45: and R4, R6, R3, ROR R10
l46: andGT R0, R9, R9, LSL R4
l47: and R14, R7, R9, ASR #5
l48: andPL R10, R5, #75
l49: andHIs R5, R4, R4, ASR R12
l50: andGTs R10, R11, #2063597568
l51: andLTs R1, R6, #532480
l52: ands R7, R5, R3, RRX 
l53: andVCs R3, R10, R12
l54: ands R5, R8, R2, LSR R7
l55: ands R7, R5, R9
l56: andEQ R7, R11, R4
l57: ands R11, R8, R0, ASR #10
l58: and R3, R14, #132
l59: and R5, R7, #-1073741820
l60: andPL R2, R7, R6, RRX 
l61: and R3, R3, #2928
l62: andLSs R4, R1, R6, ROR R9
l63: andLSs R8, R14, R4, LSR #9
l64: and R6, R12, R10, LSL R11
l65: andPL R2, R12, R2
l66: andLSs R12, R7, R6, LSR R8
l67: ands R14, R5, R10
l68: ands R12, R6, #4864
l69: andMIs R0, R4, #2976
l70: andVSs R2, R4, #76800
l71: ands R10, R14, R5, ROR R12
l72: and R14, R6, #1073741831
l73: and R0, R11, R10, ASR R5
l74: andNEs R10, R11, R14, ROR R9
l75: andGTs R9, R10, R10, LSR R5
l76: ands R9, R12, R8
l77: and R4, R12, #741376
l78: andLS R14, R8, R4, RRX 
l79: and R12, R1, R0, LSR R5
l80: ands R6, R3, R2
l81: and R2, R14, #-805306366
l82: ands R1, R2, R14, LSR #20
l83: ands R8, R2, R4, LSR #10
l84: andCCs R6, R1, R0, LSL #28
l85: andMI R6, R1, R6, LSL #7
l86: andGEs R3, R12, #-2147483629
l87: and R4, R4, R1, LSL #28
l88: andLE R8, R6, R14, LSR R5
l89: andLSs R9, R10, R5, LSL #9
l90: and R3, R15, R7
l91: andMIs R6, R6, R1, LSR #29
l92: andCS R11, R10, #81920
l93: andGT R7, R7, #-2147483642
l94: andHIs R4, R7, R9
l95: andEQ R8, R10, R3, ASR R3
l96: ands R4, R2, R15, LSR #27
l97: and R12, R10, R11
l98: andLE R0, R2, R7, LSL R3
l99: ands R12, R10, R7, LSL #13
l100: andLEs R9, R8, #7798784
l101: andLS R12, R12, #11730944
l102: and R12, R11, R1, ASR #14
l103: ands R7, R10, #2240
l104: andVC R0, R8, #43
l105: andLEs R14, R1, R4
l106: and R0, R6, #38912
l107: and R9, R14, R7, LSR R7
l108: andPLs R9, R10, #1073741826
l109: andCSs R14, R0, #1277952
l110: ands R0, R1, R8, LSL #29
l111: andPL R8, R3, R10, LSL R4
l112: andGT R7, R8, R9
l113: andLS R6, R0, R2, LSL #29
l114: andCC R6, R6, R6
l115: and R6, R14, R6, LSL R9
l116: andHIs R10, R14, R10, LSL R2
l117: andNEs R7, R3, #812
l118: andGE R5, R10, #3920
l119: andGTs R7, R5, R12, RRX 
l120: andNE R6, R9, #576
l121: andVS R14, R1, R0, ROR R7
l122: ands R14, R2, R8, LSL R1
l123: andMI R10, R10, R3, RRX 
l124: andVSs R2, R14, R3, ROR R2
l125: andEQs R11, R14, R0, RRX 
l126: ands R6, R10, R12, ROR R2
l127: andEQ R10, R4, #159383552
l128: andVS R4, R3, R1, ROR #13
l129: andMI R1, R14, #217088
l130: ands R7, R5, R7, ASR #9
l131: ands R6, R8, #6291456
l132: andPL R1, R0, R1
l133: andGEs R0, R10, #844
l134: andVS R7, R2, R6, LSR #20
l135: andCC R0, R11, #49408
l136: andGTs R14, R5, R4, RRX 
l137: and R5, R0, #8192
l138: ands R11, R5, R11, LSL #0
l139: and R14, R8, R9
l140: andPL R9, R3, R0, ASR #25
l141: andMI R14, R2, R12, LSL #17
l142: ands R9, R12, R12
l143: andPLs R9, R6, R1, LSR #21
l144: ands R3, R3, R5
l145: andMIs R14, R7, #118784
l146: andVCs R10, R12, R10, LSR R1
l147: andMI R14, R4, R2, RRX 
l148: and R11, R2, #1654784
l149: andPLs R14, R4, R7, LSR #17
l150: and R5, R15, #675282944
l151: andHI R0, R6, #7872
l152: ands R8, R12, R12
l153: andNE R9, R9, #26214400
l154: ands R6, R14, #796917760
l155: and R5, R10, R2, ASR #15
l156: ands R9, R7, #247808
l157: and R14, R0, #26738688
l158: andHIs R12, R1, R12, LSR R14
l159: andGEs R10, R2, R10
l160: and R0, R9, R11, LSR #4
l161: andGT R9, R8, R5, LSL #16
l162: and R3, R2, R10, LSL #3
l163: ands R6, R12, #1003520
l164: ands R9, R3, R0
l165: ands R1, R8, R0, LSL R6
l166: andCC R14, R15, R9, ROR #9
l167: andVC R8, R15, #614400
l168: andLTs R3, R10, R0
l169: ands R11, R3, R7, ROR R4
l170: andLSs R0, R8, R8
l171: and R8, R15, R1
l172: andGE R11, R10, #13632
l173: and R1, R12, R10
l174: andPL R6, R7, R0, ROR R1
l175: andLSs R0, R12, R0
l176: andLSs R11, R3, R10
l177: ands R11, R6, #242688
l178: andLE R2, R2, R0, ASR #18
l179: and R3, R10, #922746880
l180: andLE R11, R5, R2
l181: andNEs R3, R7, R3, ASR #3
l182: andEQs R0, R12, R11, LSR R5
l183: andLS R0, R2, #155648
l184: ands R7, R3, R14
l185: andNEs R12, R4, R12
l186: and R10, R12, #872415234
l187: andGTs R14, R3, R15, LSR #25
l188: andLT R0, R4, #1073741826
l189: ands R9, R11, #284
l190: andPL R12, R12, #11008
l191: and R11, R6, R12
l192: andCCs R7, R10, R11, ROR R12
l193: ands R9, R14, R2, RRX 
l194: andCCs R0, R3, #14221312
l195: andLT R0, R2, R1
l196: and R11, R1, R3, ROR R7
l197: and R14, R2, #8960
l198: andMI R11, R15, R7
l199: andVS R4, R12, R5, LSR R9
l200: andCS R10, R0, #-2147483630
l201: andLEs R5, R15, R9
l202: and R5, R7, R12, LSR R1
l203: ands R4, R15, R2
l204: andVS R0, R2, R5
l205: andCS R8, R11, R11, LSL #26
l206: and R5, R5, R11, LSR R8
l207: andCS R8, R4, R8
l208: andVCs R4, R2, R7
l209: and R4, R2, R9, LSR #3
l210: and R7, R14, R0
l211: andCC R12, R11, R1
l212: andVSs R9, R11, R7, ASR #29
l213: ands R3, R10, R8, LSL #21
l214: andGEs R6, R12, R11
l215: andLSs R1, R8, #1472
l216: andMI R6, R15, #76546048
l217: andGT R6, R4, R5
l218: andLS R7, R7, R15, LSL #0
l219: andCSs R12, R4, #2998272
l220: andGT R7, R3, R12, ASR R3
l221: andLEs R4, R14, #155648
l222: andCC R3, R7, R9
l223: andMIs R3, R12, R3, ROR R4
l224: and R0, R14, R12, LSR R6
l225: andGEs R11, R11, R14
l226: andGE R9, R7, R12, ASR #8
l227: andVS R8, R8, R10
l228: andLS R6, R7, #37486592
l229: andVSs R7, R11, R1, ASR #19
l230: and R12, R4, R9
l231: andCS R6, R3, R3
l232: andEQ R2, R10, R9
l233: and R12, R15, R14, LSR #26
l234: andVCs R10, R11, R14, LSR R12
l235: andVS R6, R12, R7, ROR R14
l236: ands R14, R5, R1, ROR R7
l237: andVC R5, R7, R4, ASR R8
l238: andNE R7, R5, R7
l239: andPL R8, R5, R11
l240: ands R8, R2, R10
l241: and R5, R10, #966656
l242: and R1, R14, #11584
l243: and R10, R12, R2, RRX 
l244: and R0, R5, R2, LSL R8
l245: andVS R12, R0, R5, ROR #10
l246: and R14, R5, R12, ROR #11
l247: ands R10, R3, R15
l248: and R7, R4, R12, ROR #10
l249: andNEs R1, R4, #51642368
l250: andLT R2, R2, R14, ASR #27
l251: andNEs R4, R1, R6
l252: andNEs R8, R12, #-134217726
l253: andVCs R10, R8, R11, LSL R1
l254: andGE R2, R15, R5
l255: andHI R0, R1, R10, ROR R3
l256: andLE R4, R12, #-553648128
l257: ands R12, R0, R6
l258: andCCs R5, R14, #-1073741820
l259: and R4, R2, R5
l260: andCC R14, R12, R14
l261: andGTs R12, R14, R9, ASR R0
l262: andEQ R4, R11, R11, ROR R4
l263: andGEs R5, R10, R14
l264: andEQs R5, R12, R14, RRX 
l265: andCC R8, R12, R6, ROR R4
l266: and R0, R14, R6, RRX 
l267: and R6, R8, R14
l268: andPLs R2, R0, R1, RRX 
l269: ands R5, R10, R14, ASR R7
l270: ands R0, R14, R4, ASR R9
l271: andLSs R2, R4, #780140544
l272: and R12, R3, #1769472
l273: andLS R4, R14, R8, RRX 
l274: andMI R10, R4, #6
l275: andPLs R10, R3, R15, LSR #10
l276: ands R9, R6, R10, ROR R4
l277: ands R1, R7, R8
l278: andHIs R14, R4, R0, LSR R4
l279: andLEs R3, R0, R14
l280: ands R6, R2, #13312
l281: andGEs R3, R1, R8, ASR R3
l282: ands R5, R2, R7
l283: ands R1, R12, R9
l284: andVSs R2, R3, R5, ASR #20
l285: andNE R7, R7, R1, LSL #19
l286: andLE R12, R5, R14
l287: andLTs R11, R9, R11, RRX 
l288: and R14, R1, R5, LSL R1
l289: andHI R12, R2, R14, RRX 
l290: ands R12, R12, R7
l291: and R1, R10, R7
l292: ands R2, R11, R0, ASR #18
l293: andCC R5, R1, R3, ASR R1
l294: ands R4, R12, R2, RRX 
l295: andCSs R7, R11, #-805306360
l296: andCCs R4, R14, R1, LSL #30
l297: ands R11, R3, R11, LSL R12
l298: andGE R10, R1, R2, ROR #19
l299: andVSs R7, R0, R14, LSR #29
l300: andHIs R12, R5, R9, RRX 
l301: and R8, R12, R5
l302: andLTs R4, R11, #306184192
l303: and R10, R1, R6, LSR R10
l304: andVSs R14, R3, R5, LSR #3
l305: andMIs R5, R5, #56576
l306: ands R9, R3, R11
l307: andMIs R8, R3, #190464
l308: andVSs R9, R9, R1, LSR R8
l309: and R3, R10, R0
l310: ands R7, R2, #884736
l311: and R4, R3, R10, LSL #9
l312: andGE R7, R5, #560
l313: and R12, R1, R12
l314: andGT R10, R7, R1, ASR R12
l315: ands R4, R8, R3
l316: andMI R4, R14, R0, LSR R1
l317: andVC R4, R15, R9, LSL #9
l318: and R7, R14, R3, ROR #9
l319: ands R3, R5, R15, LSR #14
l320: andHI R8, R4, R14
l321: ands R9, R11, R7, LSR #9
l322: andLSs R9, R7, R8, ASR R8
l323: andMIs R12, R2, #-2147483610
l324: ands R10, R7, R12
l325: andHIs R5, R14, R6, LSL R1
l326: andNE R11, R8, #548
l327: andVSs R5, R11, R8, ROR #21
l328: andMIs R1, R3, #75776
l329: andVC R1, R9, R1, ASR R14
l330: andLSs R11, R0, R3, ASR #4
l331: andVSs R8, R11, R12
l332: andLT R6, R12, R0, LSR R4
l333: andLSs R8, R3, R14, LSL #23
l334: andLEs R5, R11, #15007744
l335: andGTs R1, R2, R7, LSR R1
l336: andLE R14, R6, R10, ASR #21
l337: and R10, R4, R5, ROR R2
l338: andLS R9, R3, R15, RRX 
l339: andPLs R3, R0, R9
l340: ands R14, R11, R14
l341: andCSs R10, R6, R3
l342: andCC R1, R7, R10, LSL #16
l343: andLE R7, R5, R6
l344: and R5, R8, R4, LSR R10
l345: and R2, R1, #117
l346: andHI R1, R14, R9
l347: ands R8, R6, R8, RRX 
l348: andGT R4, R2, R12, RRX 
l349: andMIs R14, R10, R10, ROR R11
l350: ands R2, R2, R14, LSR R0
l351: ands R4, R8, #152
l352: ands R9, R7, R3
l353: and R2, R7, #-1275068413
l354: andGT R5, R5, R12, ASR R8
l355: andGT R14, R8, #10368
l356: and R3, R8, #40448
l357: andCS R8, R1, R9
l358: and R11, R3, R4
l359: andMI R8, R6, R1, RRX 
l360: andNEs R9, R6, R0, ROR #21
l361: andCC R8, R5, R14, RRX 
l362: andLSs R14, R4, R12, ROR R9
l363: andVC R1, R11, R5, ASR #0
l364: and R6, R6, R9, RRX 
l365: andNEs R1, R6, #8448
l366: andHIs R11, R10, R8
l367: andGE R14, R11, R14, ASR #5
l368: andGE R5, R5, #1879048192
l369: and R8, R4, R7, ASR #22
l370: and R1, R12, R11
l371: andVSs R9, R4, R7
l372: andPLs R2, R10, #397312
l373: andCS R0, R1, R11, ASR R11
l374: ands R8, R14, #916
l375: ands R0, R11, R5, LSR #7
l376: andGEs R4, R7, R8
l377: andLTs R10, R8, R7, ASR R14
l378: andLT R10, R10, #540672
l379: andLSs R9, R4, R8, ROR #14
l380: ands R5, R6, #733184
l381: andMIs R8, R11, R9
l382: and R2, R10, R2
l383: andGTs R2, R15, #13434880
l384: andMIs R1, R6, R15
l385: andMIs R12, R0, R14
l386: andPL R3, R14, #17408
l387: ands R0, R8, R8, ROR R7
l388: ands R11, R6, R12
l389: and R7, R14, #37486592
l390: andHIs R2, R11, R1
l391: andNE R4, R8, R15, ROR #4
l392: and R10, R12, R2, RRX 
l393: ands R3, R7, R9, RRX 
l394: andGEs R2, R6, R5, LSR #31
l395: and R5, R9, R3, LSL #24
l396: and R5, R10, R9, ASR #25
l397: and R11, R11, R3
l398: andVCs R8, R5, R11, LSR #15
l399: andLSs R11, R12, #922746880
l400: andPL R11, R4, R5
l401: andPLs R5, R5, R12
l402: andLT R10, R10, R11, LSR R2
l403: and R4, R10, R11, LSR R0
l404: andLEs R14, R3, #15466496
l405: andVC R4, R12, R6, LSR R12
l406: andMI R6, R9, R2, LSL #13
l407: andVCs R8, R0, #12320768
l408: andPL R12, R12, R3
l409: and R6, R10, #1610612739
l410: and R14, R10, R4
l411: ands R11, R8, R5, ROR #10
l412: andEQs R5, R10, R7, RRX 
l413: andEQs R1, R6, #9437184
l414: andEQs R7, R2, R7
l415: ands R9, R15, R0
l416: andLS R8, R0, R7, RRX 
l417: ands R11, R5, R10, LSR #2
l418: andGT R8, R4, R12, LSL #3
l419: andPL R5, R14, #-2147483631
l420: andLE R14, R3, #18
l421: ands R1, R4, R3, ASR #25
l422: andHI R5, R0, #1677721602
l423: and R6, R10, #52736
l424: andGEs R4, R8, #-268435441
l425: andLTs R4, R12, R1, LSR R10
l426: andCCs R0, R1, #9216
l427: andLT R14, R9, R4, LSR #8
l428: andGT R2, R5, R11, LSL R11
l429: ands R5, R5, #7168
l430: and R7, R1, R0, ASR R11
l431: andCSs R7, R0, R1, LSL R5
l432: andGEs R9, R11, R11
l433: ands R11, R12, #19
l434: andCS R7, R12, R5, LSL R1
l435: andGE R14, R7, R7
l436: and R12, R9, R2, ASR #11
l437: and R1, R8, R11, ROR R6
l438: andPLs R0, R3, R15
l439: and R0, R6, #2063597568
l440: andHIs R12, R12, R14, LSL #31
l441: andVC R6, R9, R15, LSR #26
l442: andLTs R4, R6, R7, ROR R8
l443: andPL R10, R14, #208896
l444: andHI R1, R5, R8, ASR R8
l445: andNE R2, R6, R4, LSL R7
l446: andVC R5, R1, R5
l447: andPL R11, R11, R3, ASR R7
l448: andLSs R10, R3, #11648
l449: and R7, R2, #7274496
l450: andVC R4, R12, R9, LSR R2
l451: and R1, R3, R2, ROR #30
l452: andGT R4, R6, R15
l453: andMI R14, R6, R11, ASR R5
l454: ands R2, R9, #3792
l455: and R7, R12, R0, LSR #20
l456: ands R0, R9, R3, LSL #27
l457: andVCs R14, R9, R1, RRX 
l458: ands R9, R14, R14, LSL R2
l459: andMI R2, R9, R8
l460: andCCs R2, R15, #3344
l461: andLSs R9, R1, R4
l462: ands R6, R7, R8, LSL #2
l463: and R2, R10, R7, RRX 
l464: and R1, R7, R15
l465: andVCs R0, R15, #50
l466: ands R5, R9, R7, ASR R11
l467: ands R7, R3, R3, RRX 
l468: andLE R2, R12, R0
l469: andPL R9, R3, R12
l470: andGTs R2, R11, R8
l471: andHI R11, R11, R5
l472: andCS R3, R8, R3, LSL #27
l473: andLT R0, R6, R2, RRX 
l474: ands R14, R0, R2
l475: andEQs R14, R1, R5, RRX 
l476: and R7, R3, #557056
l477: and R2, R15, R9, RRX 
l478: and R11, R3, R2, RRX 
l479: andPLs R11, R14, R7, RRX 
l480: andEQ R11, R5, #13041664
l481: andLT R6, R14, #2544
l482: andCC R9, R15, #41216
l483: andVC R3, R5, #47872
l484: andCC R10, R1, #566231040
l485: andNE R10, R5, R12
l486: and R0, R14, #103809024
l487: andCS R0, R12, #335544323
l488: and R12, R0, R6
l489: and R5, R15, R7, RRX 
l490: ands R12, R12, R6, ASR #22
l491: andVSs R7, R3, #835584
l492: ands R6, R1, R6, LSL #30
l493: and R7, R11, R2, LSL R6
l494: andNEs R14, R0, R12, RRX 
l495: and R7, R6, R2, LSL R12
l496: andVCs R4, R14, R0
l497: andCS R8, R1, R6, ROR #1
l498: andLSs R9, R14, R14
l499: andCSs R10, R14, R1
l500: and R7, R10, R10, ROR #13
l501: and R8, R8, #2162688
l502: andPL R0, R15, R6
l503: andCS R3, R15, R5, LSL #2
l504: ands R12, R0, #282624
l505: andLS R9, R12, R1
l506: and R2, R11, R6, LSL #13
l507: and R5, R8, R12, ASR #3
l508: ands R2, R0, R4, ASR #13
l509: and R11, R0, #11
l510: ands R12, R3, #2320
l511: andGT R11, R12, #536870912
l512: andCCs R9, R10, R7
l513: and R3, R7, R15
l514: andLS R0, R7, #40448
l515: and R8, R11, #61
l516: and R14, R5, #-1073741781
l517: ands R10, R3, #2064384
l518: ands R7, R0, R0, LSR R12
l519: andCS R2, R12, R6, RRX 
l520: andGTs R5, R5, R8, RRX 
l521: andLT R9, R14, #-2147483594
l522: andNE R9, R6, #30
l523: andEQ R0, R12, #1946157056
l524: and R3, R15, R3
l525: ands R7, R14, R10, RRX 
l526: andCCs R2, R7, #-2147483586
l527: and R2, R9, #184549376
l528: andVSs R11, R12, R9, RRX 
l529: andCS R5, R12, R11, ROR #19
l530: andLEs R14, R3, R2
l531: andMI R14, R14, #51118080
l532: andEQs R4, R12, #-2147483600
l533: andNE R8, R11, R7
l534: andGTs R6, R12, R6, LSR #28
l535: andLT R14, R1, R8, ROR R11
l536: andLE R11, R6, R10, LSL #16
l537: and R9, R15, #809500672
l538: ands R3, R7, #4046848
l539: and R7, R11, R9
l540: andLE R12, R9, R9, ASR #24
l541: ands R14, R8, R3, LSL R2
l542: andGE R9, R9, R2, ASR #7
l543: andCSs R9, R7, R1
l544: andPL R9, R12, R7, LSL #27
l545: andGT R0, R9, R0, ROR R7
l546: andMIs R1, R3, R5, ROR #9
l547: and R7, R12, R10, RRX 
l548: and R5, R10, R10, LSR R7
l549: and R10, R9, #2256
l550: andMI R14, R5, R12
l551: and R5, R1, R12, LSL R10
l552: andLSs R8, R14, R7, RRX 
l553: andPL R6, R15, #1
l554: andHIs R4, R14, #3072
l555: andVCs R8, R7, R0, LSL #23
l556: ands R9, R4, #225
l557: andHIs R0, R4, R12, LSL #1
l558: ands R9, R0, R3, ROR #7
l559: andPLs R2, R11, R8, RRX 
l560: ands R10, R11, #-2147483633
l561: andVC R11, R8, R12, ASR R9
l562: ands R2, R7, R5
l563: andLTs R6, R3, R7
l564: andMI R6, R1, R2
l565: andVS R14, R11, R5, LSR R9
l566: andGT R4, R5, #3056
l567: andVS R2, R15, R15
l568: and R6, R12, R10, LSR R0
l569: andNEs R14, R2, R3, RRX 
l570: and R0, R12, R0, LSR R5
l571: andVSs R5, R15, R4, ROR #11
l572: and R6, R6, R6, LSL R6
l573: andCC R8, R1, R0, LSL #26
l574: ands R1, R15, R0
l575: andCSs R9, R6, R5, ROR #7
l576: ands R2, R1, R9
l577: andLSs R6, R14, R4, RRX 
l578: andLS R11, R2, R14, ROR R8
l579: andVS R14, R6, R15, ASR #29
l580: andGTs R14, R8, R4, ASR R1
l581: and R14, R6, R14
l582: and R0, R7, R4
l583: andNE R4, R6, #385875968
l584: andVC R5, R11, #5963776
l585: andGT R14, R3, #7104
l586: andEQ R11, R14, R1, LSL #25
l587: andEQs R7, R11, R9, LSR R4
l588: andNEs R12, R3, #30
l589: andEQ R3, R2, R4
l590: ands R1, R9, R4
l591: and R3, R2, #59
l592: ands R0, R12, R7
l593: andGT R5, R0, #556
l594: andNE R14, R2, R15, ROR #29
l595: and R8, R15, R11, RRX 
l596: andCSs R8, R1, R14, RRX 
l597: andGE R12, R6, R12, ROR R7
l598: and R3, R10, #-268435447
l599: andVCs R9, R15, #5120
l600: andCS R12, R8, R5, ASR R8
l601: andNEs R9, R0, R0
l602: ands R8, R5, #872448
l603: and R1, R15, R15
l604: ands R12, R14, #12255232
l605: ands R1, R0, R0
l606: ands R8, R5, R3
l607: andLS R2, R12, R0, LSR R5
l608: andCS R9, R14, R3, RRX 
l609: and R6, R8, R14
l610: andLTs R8, R0, #1409286144
l611: ands R11, R0, #29884416
l612: andGT R9, R0, R15, LSL #11
l613: ands R2, R15, #475136
l614: andGE R2, R0, R5, LSL R5
l615: ands R2, R12, R11
l616: and R1, R1, R2, LSR #22
l617: andGT R11, R4, R2, ROR R10
l618: ands R2, R7, #241172480
l619: and R8, R4, #7012352
l620: andMIs R8, R7, R5, RRX 
l621: ands R14, R0, #1044480
l622: ands R7, R10, #216
l623: ands R8, R8, R1
l624: andCCs R14, R15, R12, LSL #28
l625: andGE R12, R0, #2704
l626: andEQs R11, R10, R5, RRX 
l627: andEQ R6, R0, R10
l628: ands R2, R10, R10, ROR #27
l629: andCS R6, R14, R12, ASR R9
l630: andMIs R7, R12, R3
l631: andNEs R0, R5, R4
l632: ands R14, R0, R0, ROR #16
l633: andLSs R3, R2, R14, LSR #14
l634: and R5, R6, R1, RRX 
l635: and R1, R7, R0, LSL R10
l636: ands R6, R3, #218
l637: andCC R8, R4, R0
l638: andHIs R0, R9, R7
l639: andVS R9, R6, #-1879048192
l640: and R12, R3, R14, LSL #29
l641: ands R14, R2, R11
l642: ands R4, R15, R15
l643: ands R6, R15, R2
l644: ands R3, R1, R1, LSR #5
l645: and R10, R1, R9, ROR R1
l646: andLE R11, R7, R14, LSL R12
l647: andLE R12, R2, R7, ROR R2
l648: and R9, R14, R1, LSR #16
l649: and R12, R3, R5, LSR #15
l650: andHI R11, R1, R10
l651: and R5, R4, R15
l652: and R9, R8, R10
l653: andCS R8, R1, R2
l654: and R0, R11, #-1073741783
l655: andMIs R6, R15, R0, LSR #6
l656: andCCs R6, R15, #27
l657: and R11, R3, R15, RRX 
l658: andHIs R5, R3, R4, RRX 
l659: andVC R10, R5, R10
l660: and R8, R9, R11, RRX 
l661: and R8, R5, R9, LSR R11
l662: andVSs R8, R2, R11, ASR #30
l663: and R4, R7, R5, ASR R14
l664: andLT R14, R15, R1, RRX 
l665: and R10, R12, R7
l666: andVC R0, R4, R14
l667: andHI R4, R0, R4
l668: andLT R6, R2, R10, RRX 
l669: and R8, R10, R8
l670: andEQ R10, R2, R6, ROR R9
l671: andEQ R7, R3, #327680
l672: andCC R3, R10, R11, LSR #2
l673: andCS R5, R10, #260046848
l674: and R11, R12, R5, LSR #12
l675: andLEs R5, R12, R2, LSL R11
l676: and R7, R14, R10
l677: ands R1, R14, R2, LSL R14
l678: andHI R8, R8, R10, ASR R5
l679: andNEs R8, R11, #-1241513984
l680: andGTs R9, R2, R11, ASR R10
l681: and R3, R11, R12, ASR #4
l682: and R12, R5, R11
l683: ands R5, R4, #733184
l684: ands R2, R14, R12
l685: and R4, R5, R6, RRX 
l686: andPL R14, R10, #217
l687: andVS R7, R14, R9, ASR #3
l688: andPLs R4, R5, R4
l689: ands R0, R14, R10
l690: andPL R5, R15, R9
l691: ands R0, R11, R14
l692: ands R9, R8, R5, ROR R12
l693: andVS R12, R0, R1, ROR R12
l694: and R4, R15, R0, RRX 
l695: and R2, R9, #-805306368
l696: andVC R12, R3, R11
l697: and R9, R6, R8, LSR #5
l698: andCS R1, R4, R14
l699: andPLs R7, R9, R8
l700: andEQ R5, R4, R12
l701: andCC R12, R11, R3, LSR R12
l702: andEQ R1, R4, #3328
l703: andMIs R6, R8, #83886080
l704: andPLs R3, R8, R0, RRX 
l705: andMIs R11, R1, #132
l706: ands R6, R10, R4, ASR R1
l707: and R1, R5, #159744
l708: andCSs R0, R7, R6
l709: andMI R5, R7, #620756992
l710: ands R10, R7, R1, LSR R5
l711: and R2, R2, R6, LSR #14
l712: ands R11, R7, R8, LSL #9
l713: andLTs R6, R12, R10, LSR R0
l714: andLE R4, R11, R12, ASR R1
l715: andNEs R6, R15, R15
l716: and R6, R15, R5
l717: and R14, R1, R10, LSL R8
l718: ands R3, R0, R6, ROR #2
l719: ands R8, R9, R2, LSL #8
l720: andLS R2, R4, #35584
l721: andVSs R2, R7, #-2147483645
l722: andHIs R14, R5, #4
l723: ands R9, R14, R9
l724: andPL R1, R6, #-1610612722
l725: and R1, R9, R3, LSL R2
l726: andEQ R1, R10, #1088
l727: andLT R0, R8, R9, ROR R3
l728: ands R14, R4, R1, RRX 
l729: andGTs R1, R8, R0
l730: andPLs R7, R6, R1, RRX 
l731: and R4, R7, #591396864
l732: and R7, R0, #536870913
l733: andMIs R2, R15, R11
l734: ands R3, R9, R10
l735: ands R11, R15, R14, LSL #2
l736: andPLs R9, R12, #5242880
l737: andCCs R10, R14, R4
l738: and R2, R3, R6, RRX 
l739: andLE R8, R12, #620
l740: ands R6, R5, #2097152
l741: andMI R8, R7, R0
l742: and R2, R11, #-956301312
l743: ands R5, R6, R4, ROR #17
l744: and R10, R7, #7733248
l745: andGEs R2, R0, R8
l746: andLS R4, R15, R11
l747: andCSs R8, R5, R9
l748: and R9, R11, R2
l749: andHI R1, R1, #15296
l750: andHI R12, R8, R8, LSR #26
l751: andNEs R10, R8, R11, ASR #12
l752: andVS R8, R4, R5
l753: andNEs R12, R7, #32256
l754: andVS R10, R14, R7
l755: ands R14, R8, R14, ROR R10
l756: andGT R10, R4, R2
l757: andGTs R10, R0, R2, LSL R8
l758: andMI R8, R2, R9
l759: andCS R8, R6, R4, ASR R1
l760: ands R11, R2, #1061158912
l761: andCCs R6, R2, R3
l762: and R10, R7, R9, LSL R12
l763: andLSs R3, R2, R12
l764: ands R4, R5, R9
l765: and R3, R8, R0, RRX 
l766: andCSs R6, R2, #-2147483646
l767: ands R11, R10, #34816
l768: andVSs R14, R1, #175104
l769: andVCs R11, R0, R15
l770: andEQ R10, R3, R8
l771: andPL R12, R4, #721420288
l772: andVC R4, R8, R7, ASR #21
l773: andCC R0, R14, #171966464
l774: andGTs R4, R10, R3
l775: andNEs R7, R9, R7, LSR R5
l776: ands R7, R15, R12
l777: ands R4, R9, R7, LSR R14
l778: andMIs R5, R10, #10176
l779: andMIs R1, R7, #12032
l780: ands R3, R10, #44
l781: andGE R7, R6, R4, ASR R14
l782: ands R11, R4, R14, RRX 
l783: ands R4, R9, R12
l784: and R1, R10, R4, ROR #26
l785: andEQ R8, R14, R8
l786: andGTs R2, R14, R2, LSR #17
l787: ands R12, R2, R3
l788: andEQ R12, R12, #1664
l789: and R0, R11, R11, RRX 
l790: ands R3, R10, R6, RRX 
l791: ands R2, R2, #113
l792: ands R10, R3, R9
l793: andLT R4, R0, R3, LSR #30
l794: andVS R14, R14, #724992
l795: ands R10, R9, R15, RRX 
l796: ands R7, R10, R12, LSL R4
l797: and R9, R4, R9, LSR R3
l798: ands R1, R9, R14, LSR #25
l799: andEQs R14, R9, R10, ROR #25
l800: andGEs R11, R12, #3194880
l801: andHIs R12, R2, #9240576
l802: ands R9, R11, #960
l803: andCCs R11, R7, R6
l804: andMI R9, R4, R12, ASR #12
l805: and R1, R8, R15, LSL #6
l806: andEQ R8, R10, #62128128
l807: ands R8, R5, R15
l808: ands R0, R2, #750780416
l809: andVCs R5, R2, R6, LSR R3
l810: and R7, R10, R14
l811: andMI R0, R12, #3588096
l812: ands R9, R1, R8
l813: andEQ R2, R4, #335544321
l814: ands R1, R5, R5
l815: andGE R6, R5, R3, RRX 
l816: ands R4, R1, R0
l817: andHIs R4, R8, R9, ASR R3
l818: andCSs R6, R11, #122
l819: andCSs R7, R8, R5, RRX 
l820: and R14, R3, R12, ROR #9
l821: andLT R11, R3, R0, LSR #20
l822: andCCs R5, R4, #-1342177277
l823: ands R4, R3, R11, ASR R10
l824: and R7, R14, #231735296
l825: and R6, R7, #56885248
l826: andPLs R14, R3, R12, LSR #27
l827: andLSs R6, R11, R6, LSR #20
l828: andGEs R1, R10, R6, ASR #4
l829: andGTs R9, R10, R10, ROR R0
l830: andMIs R8, R7, R9, LSL #19
l831: and R3, R11, #-335544320
l832: andGE R8, R14, #125829120
l833: ands R10, R9, R8, LSR R0
l834: andCS R3, R9, #1879048202
l835: andMI R3, R12, R10
l836: and R4, R0, #235520
l837: andMIs R8, R14, R8, LSL R0
l838: andLS R8, R4, #864026624
l839: ands R4, R6, #126976
l840: ands R10, R6, R0
l841: ands R9, R1, R5, ROR R12
l842: andLEs R8, R11, #9792
l843: andPLs R2, R1, R15
l844: andVS R3, R10, R5, ASR R5
l845: andMIs R4, R5, #2288
l846: andCS R8, R12, #1785856
l847: and R12, R15, #12
l848: andMI R4, R9, #268435456
l849: andLSs R11, R1, R10, LSR #5
l850: andMIs R3, R9, R1
l851: and R10, R2, R7, ASR #20
l852: ands R1, R6, R15
l853: and R8, R8, R7
l854: ands R2, R2, R1
l855: and R14, R4, R9
l856: andLT R7, R15, R12
l857: andEQs R9, R10, R6, LSR R12
l858: ands R11, R11, #-754974720
l859: ands R5, R10, R3, ROR #16
l860: andGEs R0, R8, R15, LSL #16
l861: ands R9, R8, R2
l862: andLT R10, R7, R4
l863: andEQ R5, R7, #162816
l864: andCSs R10, R6, R7, LSR R1
l865: andEQ R8, R11, R10, LSL R3
l866: ands R9, R4, #1023410176
l867: and R4, R1, R3, LSL #13
l868: ands R4, R3, #-2147483648
l869: and R0, R5, R14, LSL #29
l870: andMI R14, R9, R8, ASR #23
l871: and R12, R5, R3, ASR R10
l872: andPL R12, R12, R10, LSL R3
l873: andLSs R10, R12, R8, RRX 
l874: and R2, R15, #14614528
l875: ands R7, R0, R4, LSR R4
l876: andCC R11, R5, R15
l877: andVS R4, R3, R9
l878: andLE R0, R0, R8, ROR R2
l879: andVC R8, R12, R7, RRX 
l880: andEQs R7, R7, R2, RRX 
l881: ands R6, R8, R15, LSR #11
l882: andGE R12, R7, R7
l883: andCSs R12, R9, #57088
l884: and R2, R3, #385875968
l885: and R9, R8, R4, ROR R1
l886: andGT R5, R3, R11
l887: ands R4, R11, R5, LSL #26
l888: and R0, R12, #57600
l889: ands R4, R8, R2, ROR R11
l890: and R2, R12, R9, RRX 
l891: andCC R1, R3, R9, LSL R12
l892: andHI R11, R6, R4, LSL #4
l893: andLT R7, R0, R0, LSL #1
l894: and R4, R5, R14
l895: andMIs R4, R9, #26
l896: andPL R11, R5, R6, ASR R1
l897: andPL R4, R0, R8, LSL R8
l898: andCS R10, R6, #738197504
l899: ands R9, R12, R1, ROR R0
l900: ands R5, R7, R12
l901: andNE R5, R3, R10
l902: andGEs R4, R2, R1, LSL #31
l903: and R0, R10, R12, LSL #16
l904: ands R14, R4, #12032
l905: ands R5, R3, R7, LSL #12
l906: andMIs R8, R5, #-201326590
l907: and R14, R7, #98304
l908: andEQs R1, R15, #41984
l909: andCCs R6, R14, R9, LSR R9
l910: ands R0, R6, R11
l911: andLE R14, R14, R15, RRX 
l912: andGT R1, R9, R11, RRX 
l913: andEQs R12, R1, R12
l914: andLE R1, R10, #-805306368
l915: andCS R8, R9, R4, RRX 
l916: andVC R12, R7, R0, ASR R8
l917: andVCs R7, R11, R9, ASR R5
l918: andEQ R12, R0, R14
l919: andPL R1, R0, R3
l920: ands R3, R11, #-1073741797
l921: andGE R10, R4, R3
l922: andNE R12, R0, R5
l923: ands R12, R5, R10
l924: and R3, R1, R12, LSR #22
l925: andLEs R2, R5, R10
l926: andCSs R2, R12, R1, LSR R6
l927: andGTs R2, R11, #943718400
l928: and R14, R9, R1
l929: ands R10, R15, R12
l930: ands R6, R12, R5, ASR #24
l931: andCS R9, R11, R1, LSL #12
l932: ands R5, R3, #-1224736768
l933: and R12, R12, R2
l934: and R14, R4, R3, ASR R3
l935: andEQs R6, R3, R5, LSR R12
l936: and R9, R0, R10, ASR R10
l937: andPLs R9, R11, R2, LSR #25
l938: andLEs R5, R1, #52428800
l939: andLT R9, R10, R3, LSL R11
l940: ands R12, R2, #2621440
l941: andLTs R1, R11, R3, ASR R4
l942: andCS R1, R1, R11, ROR R1
l943: and R11, R12, #92274688
l944: andCS R8, R11, R10, RRX 
l945: andLS R5, R9, R4
l946: andVSs R1, R5, R8, LSL R11
l947: andVC R6, R14, R9, RRX 
l948: and R12, R11, R4, ASR R14
l949: and R5, R2, R5, ASR R1
l950: ands R5, R8, R9
l951: and R1, R3, R4
l952: ands R14, R4, #29952
l953: andHI R7, R5, R1, LSL #24
l954: andGT R0, R10, #2880
l955: and R3, R14, R1, ROR R5
l956: andCS R5, R6, R4, LSR #24
l957: ands R5, R4, R9, ASR R3
l958: andMI R8, R11, #1728
l959: ands R2, R6, #54788096
l960: andGTs R6, R2, R9
l961: ands R5, R15, R10, RRX 
l962: andNE R9, R7, #434176
l963: ands R6, R4, R1, RRX 
l964: ands R11, R1, #118784
l965: and R8, R12, R15
l966: andLEs R5, R12, R7, LSL #12
l967: andVC R7, R11, R11
l968: andVSs R8, R5, R14
l969: andLT R9, R9, R3, LSL #21
l970: ands R9, R11, R2
l971: andVC R0, R12, #1008
l972: andLT R2, R14, #55312384
l973: ands R14, R3, R14, LSR R9
l974: andLSs R3, R2, #123
l975: andHIs R5, R0, R10
l976: and R2, R3, R8
l977: andCS R10, R4, R12, LSR R10
l978: andCCs R12, R12, #1610612742
l979: ands R1, R9, R12, ASR R0
l980: ands R7, R9, #-1677721599
l981: and R10, R9, R0, LSR #0
l982: andCCs R14, R0, R11, LSR #7
l983: andMIs R2, R8, R14, RRX 
l984: and R4, R0, R14, RRX 
l985: ands R3, R7, R12, ASR R10
l986: and R5, R2, R7, LSL R14
l987: andNEs R12, R6, R5
l988: andCSs R5, R11, R6, RRX 
l989: andGTs R9, R3, R4
l990: andLT R0, R3, R6, ROR #12
l991: ands R11, R9, R1
l992: ands R7, R0, R9
l993: andGTs R5, R6, R10, RRX 
l994: andCCs R8, R14, R9, RRX 
l995: andEQs R2, R9, R0, RRX 
l996: andNE R11, R11, R0
l997: andLE R5, R11, R7, LSL R12
l998: andMI R11, R12, #62652416
l999: andCS R9, R1, R12
l1000: and R14, R2, #30408704
end: b end

