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
val1: .word 2800771238
next1:ldr R2, val2
b next2
val2: .word 1774656064
next2:ldr R3, val3
b next3
val3: .word 4186159800
next3:ldr R4, val4
b next4
val4: .word 257102584
next4:ldr R5, val5
b next5
val5: .word 2172283523
next5:ldr R6, val6
b next6
val6: .word 4290198752
next6:ldr R7, val7
b next7
val7: .word 831178267
next7:ldr R8, val8
b next8
val8: .word 3697580388
next8:ldr R9, val9
b next9
val9: .word 1449433000
next9:ldr R10, val10
b next10
val10: .word 2511340510
next10:ldr R11, val11
b next11
val11: .word 1105038788
next11:ldr R12, val12
b next12
val12: .word 1059969814
next12:ldr R14, val14
b next14
val14: .word 3073425589

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 857850020
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 4200523313
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 625403725
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 3044469561
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 1691029637
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 3515203274
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 2801807104
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 883820399
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 1035351121
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 1363823209
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 1984769367
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 731605409
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 4095883215
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 843168216
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 2745571517
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 2191185061
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 910253663
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 4219319198
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 2717874550
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 3296978084
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 3522154011
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: orrLS R7, R11, R10, LSL #4
l2: orr R2, R15, R3
l3: orrs R12, R8, R7, LSL #27
l4: orrVSs R1, R7, R5, LSL #3
l5: orrs R3, R8, R11, ASR R3
l6: orrGTs R12, R12, R8
l7: orrLT R7, R10, R11, ROR R5
l8: orrMIs R4, R1, #7864320
l9: orrLE R0, R12, R1, LSL #17
l10: orrLT R14, R0, R9
l11: orrLE R5, R4, #35651584
l12: orrMI R1, R14, #3686400
l13: orrMI R11, R11, R1
l14: orrLS R14, R9, R14, LSR R7
l15: orrs R1, R12, R12, ASR #16
l16: orrHIs R10, R2, R14
l17: orrGT R1, R10, #292
l18: orr R7, R9, R4, LSL R7
l19: orrHIs R5, R7, R2
l20: orrEQs R10, R12, R5, LSL #13
l21: orrGE R6, R5, #966656
l22: orrLT R7, R3, R4, LSL R1
l23: orrVC R0, R12, R12, RRX 
l24: orrLTs R11, R11, R4, RRX 
l25: orrEQ R10, R2, R8
l26: orrLS R12, R0, #2624
l27: orrGT R8, R15, #5376
l28: orr R2, R5, R9, ROR R12
l29: orr R10, R3, R3, ASR R6
l30: orr R3, R8, R5
l31: orr R5, R3, R0, LSL R5
l32: orr R5, R5, R11
l33: orrLSs R6, R14, R11, ASR R14
l34: orr R4, R1, R10
l35: orr R1, R14, #1073741870
l36: orrLT R10, R9, R1, ROR #24
l37: orrEQs R11, R12, R1, RRX 
l38: orrNE R8, R5, #191889408
l39: orrHIs R9, R14, R8
l40: orrNEs R6, R5, R14, ROR R6
l41: orrGT R10, R8, #7424
l42: orrLE R3, R3, R3, LSL #1
l43: orrEQs R6, R4, R9, LSR R12
l44: orrNEs R2, R7, R11, LSR R8
l45: orrCSs R11, R2, R2, RRX 
l46: orrs R5, R7, R1
l47: orrLSs R12, R1, #192512
l48: orrHI R1, R4, R9
l49: orrLEs R8, R11, R2, LSR #23
l50: orrLSs R7, R4, #900
l51: orrGT R10, R6, R12, LSR #22
l52: orrHI R10, R1, #25600
l53: orrCSs R3, R9, R7, ROR #30
l54: orrs R8, R14, #688
l55: orrLE R2, R12, #1
l56: orrMI R14, R9, #102400
l57: orrs R0, R12, R0, ROR R9
l58: orrLTs R9, R10, R14, RRX 
l59: orrEQ R14, R2, R14
l60: orrGE R7, R8, R1, ASR #23
l61: orrs R14, R5, R5
l62: orrLTs R7, R4, R0
l63: orrGEs R12, R1, R8, LSL #26
l64: orrLTs R12, R1, R10, LSL R5
l65: orrGEs R6, R14, R14
l66: orrVCs R0, R1, R11, ASR #2
l67: orrEQ R12, R6, R5, ASR R6
l68: orrs R9, R7, R10, ASR R5
l69: orrs R7, R3, R12
l70: orrMI R9, R3, R9, ROR R12
l71: orrEQ R3, R10, R5, LSL R8
l72: orrVSs R5, R15, #226492416
l73: orrVS R7, R3, R10
l74: orrLS R0, R8, R6, ASR #21
l75: orrPLs R12, R4, R4
l76: orr R5, R10, R11, ASR #10
l77: orrGE R6, R15, R8, ROR #27
l78: orrs R1, R4, R2, ROR R2
l79: orrCSs R8, R0, R7, RRX 
l80: orr R4, R12, R2, LSL #23
l81: orrEQ R1, R4, #-1073741779
l82: orrEQ R11, R14, R7, LSL #7
l83: orrLSs R9, R2, R14, RRX 
l84: orrVSs R11, R1, R2
l85: orrPLs R12, R14, R0
l86: orr R10, R6, R15, RRX 
l87: orrVCs R10, R8, R5, RRX 
l88: orrPL R9, R2, R4
l89: orrLTs R11, R0, R6, LSR R5
l90: orrPLs R1, R0, R15, RRX 
l91: orrVS R8, R1, R10, LSR R4
l92: orrLS R4, R10, R14
l93: orrMIs R3, R12, #211
l94: orrMI R14, R4, R11, ASR R7
l95: orr R4, R6, R8
l96: orrs R8, R7, R7
l97: orrLE R0, R8, #-805306363
l98: orrHIs R3, R0, #1648
l99: orr R0, R3, R3
l100: orrs R5, R9, R12, LSR R0
l101: orrLEs R0, R6, R8
l102: orrNE R3, R11, #13762560
l103: orrPL R5, R11, #320
l104: orrLS R7, R5, R7
l105: orrHI R12, R3, #-2147483648
l106: orrs R5, R8, R8
l107: orrLT R9, R6, R2, LSR R5
l108: orrs R2, R10, R2
l109: orrs R9, R0, R6, ROR R8
l110: orrCCs R6, R11, R14
l111: orrVCs R5, R15, R11, LSR #4
l112: orrs R5, R12, R11, ASR #8
l113: orrPLs R3, R11, R1, ASR #24
l114: orrHIs R6, R11, R5, LSL #15
l115: orrs R5, R9, #156237824
l116: orrLSs R6, R3, R1, LSL R1
l117: orrNEs R12, R0, R15
l118: orr R2, R7, R11, ASR #7
l119: orrVSs R8, R3, #3
l120: orrCS R7, R2, R1
l121: orrGE R4, R2, #1488
l122: orr R9, R4, R8
l123: orr R9, R8, R4, LSL R6
l124: orrLE R0, R14, #47872
l125: orrEQs R7, R3, R10, ROR R3
l126: orrs R1, R5, R4, LSL R10
l127: orr R11, R0, R7, LSL R0
l128: orrs R1, R5, R12, ROR R1
l129: orrs R8, R1, R10
l130: orrs R5, R4, R5, LSR #11
l131: orr R3, R12, R14
l132: orr R9, R9, R2, RRX 
l133: orrNE R1, R2, R10, LSR R9
l134: orrLT R12, R9, R1, ROR R6
l135: orrCSs R6, R3, R12, ASR #0
l136: orrCSs R11, R4, R7, ROR #23
l137: orrLSs R12, R15, R9
l138: orrs R11, R6, R10
l139: orrs R12, R4, #32768000
l140: orr R14, R3, R5, RRX 
l141: orrMIs R1, R11, R9, ASR #14
l142: orrVS R8, R2, R7, LSR R9
l143: orrCS R1, R4, R14, ROR #27
l144: orrLE R3, R14, R3, LSL #5
l145: orrs R12, R7, R15, RRX 
l146: orrEQs R9, R0, R14
l147: orrVC R10, R3, R10, ROR R6
l148: orr R1, R9, R12
l149: orrLEs R10, R4, R7, RRX 
l150: orrs R4, R10, #-2147483641
l151: orrPLs R8, R12, R9, ASR R11
l152: orrVC R14, R12, R9
l153: orrVS R14, R3, R6
l154: orr R12, R9, R2
l155: orr R1, R1, R7, ASR R9
l156: orr R4, R10, #159744
l157: orrCS R7, R3, R5, RRX 
l158: orr R2, R0, R14
l159: orrCSs R0, R4, R12
l160: orrGEs R9, R15, R11, LSR #17
l161: orrCSs R9, R10, R14
l162: orrLE R9, R1, R0, LSL #13
l163: orrMIs R5, R8, R2, ASR R5
l164: orrVSs R5, R1, #235929600
l165: orrPLs R7, R9, #50176
l166: orrPLs R8, R8, #15925248
l167: orr R2, R5, R1, ASR R10
l168: orrLTs R2, R8, R9
l169: orrEQ R1, R6, #452984832
l170: orrs R7, R11, #134217728
l171: orrNEs R4, R6, R14, LSR R6
l172: orrs R0, R3, #256
l173: orrs R11, R6, R5, ASR R11
l174: orrGTs R12, R10, R9, LSR R14
l175: orrGTs R12, R6, #7936
l176: orrGEs R12, R8, R12, RRX 
l177: orrs R11, R8, R11, LSR #22
l178: orrLE R14, R5, #-2147483602
l179: orrMI R5, R6, R15
l180: orrNE R3, R4, R7, ASR R12
l181: orrVSs R10, R6, R4, ASR #23
l182: orrGTs R0, R10, #1627389952
l183: orrNE R9, R7, R10, RRX 
l184: orrLSs R14, R6, R11, LSR #25
l185: orrHI R8, R0, R9, ASR R7
l186: orr R12, R2, R3, ROR R0
l187: orrEQ R12, R11, R7, LSL #9
l188: orrGEs R8, R7, #672
l189: orrs R14, R10, R14, LSL #2
l190: orr R6, R9, R2
l191: orrPLs R8, R6, R15, RRX 
l192: orrs R6, R9, R5, LSR R5
l193: orr R2, R2, R12
l194: orrs R12, R14, #-2147483637
l195: orrGT R3, R4, R9, ASR #20
l196: orr R5, R0, R5
l197: orr R0, R4, #-1342177273
l198: orrLSs R9, R8, R15, LSL #7
l199: orrNEs R1, R7, R9, RRX 
l200: orrs R7, R5, R12, LSR #22
l201: orrCSs R9, R5, R11, LSL R0
l202: orr R6, R2, R14, LSR #10
l203: orrGE R7, R15, R1, LSL #31
l204: orrs R3, R4, R6, ASR #27
l205: orrGTs R3, R9, R11, LSR R14
l206: orrLS R1, R10, R1
l207: orrs R9, R14, R1, LSL R6
l208: orrHIs R9, R12, R3, LSL #16
l209: orr R1, R6, #1409024
l210: orrHI R12, R11, R0
l211: orr R0, R7, R4, RRX 
l212: orrVC R3, R8, R6
l213: orrLS R3, R5, #155
l214: orr R0, R0, #292
l215: orr R12, R6, R2, RRX 
l216: orr R0, R12, R2, RRX 
l217: orrLSs R1, R8, R3
l218: orrHI R7, R12, R0, ASR #3
l219: orrGEs R4, R8, R10, LSL R7
l220: orrHIs R4, R7, R8
l221: orrs R0, R9, R8
l222: orrCS R14, R10, R8
l223: orr R12, R0, R5, LSR R8
l224: orrPL R8, R12, R5, ROR R14
l225: orrPL R5, R4, R11, LSR R12
l226: orr R2, R6, R1, RRX 
l227: orrLEs R8, R1, R12, LSL #17
l228: orrPL R2, R8, #671088643
l229: orrEQ R1, R6, #1342177280
l230: orr R2, R14, R3
l231: orrEQ R4, R1, R4, LSL R10
l232: orrVSs R5, R0, #335544322
l233: orrMIs R2, R14, #933888
l234: orrVSs R14, R8, #41216
l235: orrs R5, R12, R5, ROR #25
l236: orrCSs R0, R2, #9344
l237: orrs R2, R0, R11, RRX 
l238: orrLT R11, R8, R7, RRX 
l239: orrMIs R5, R15, R11
l240: orrLEs R12, R0, R1
l241: orrs R7, R7, R9, LSL #15
l242: orr R3, R4, R4, ASR R4
l243: orr R1, R5, #58195968
l244: orrs R7, R14, R11
l245: orrLS R11, R0, #2949120
l246: orrCS R6, R15, R1
l247: orrs R3, R7, R0, RRX 
l248: orrPL R2, R4, #51118080
l249: orrCC R4, R15, R1, RRX 
l250: orrHIs R1, R14, R2, RRX 
l251: orrPL R1, R3, R0, LSL R9
l252: orrs R1, R11, R2, LSR R14
l253: orrs R8, R14, #99614720
l254: orr R1, R9, R4, RRX 
l255: orrMIs R1, R14, #4672
l256: orrEQ R6, R4, R2, LSR R11
l257: orrs R7, R9, R10, LSR R8
l258: orrVSs R12, R15, #7208960
l259: orr R9, R3, R3, LSR #5
l260: orrs R4, R2, R14, RRX 
l261: orr R0, R14, R5
l262: orrs R14, R15, R8, LSL #18
l263: orrLT R2, R10, R8, LSL R4
l264: orrCS R4, R1, #4800
l265: orrGE R8, R15, R1, RRX 
l266: orrs R1, R12, R11, LSR R6
l267: orrs R10, R1, R2
l268: orr R8, R11, R10, ROR R6
l269: orr R3, R0, R7, LSR #6
l270: orrPL R2, R7, R15
l271: orrGT R7, R11, #19456
l272: orrNEs R6, R9, #458752
l273: orrVS R8, R9, R14
l274: orr R12, R14, #197632
l275: orr R0, R11, R0, LSL R11
l276: orrGT R7, R6, #1442840576
l277: orrVSs R4, R10, R9, ASR R12
l278: orrs R3, R0, R10
l279: orrLSs R14, R15, R14
l280: orrLTs R0, R4, #1006632963
l281: orrHIs R5, R2, R6, LSR #12
l282: orrs R8, R12, R5, RRX 
l283: orr R6, R6, R4
l284: orrMIs R12, R8, R11, ASR #19
l285: orrEQs R2, R12, #182272
l286: orrLTs R3, R8, R12
l287: orrMIs R3, R7, R10
l288: orrCSs R6, R12, R0, LSR R7
l289: orr R2, R9, R4, RRX 
l290: orrCC R8, R4, #24
l291: orrs R3, R1, R9, LSL R5
l292: orrCCs R6, R2, #289406976
l293: orrLTs R3, R2, R4
l294: orr R12, R5, #15204352
l295: orrs R7, R11, R12, ASR #19
l296: orrPLs R0, R3, R15
l297: orr R7, R0, R5
l298: orrLEs R11, R8, R0, LSR R0
l299: orrLEs R10, R4, R3, LSL R9
l300: orrCCs R3, R6, R8
l301: orr R2, R0, R8, RRX 
l302: orrVC R11, R10, R9, ASR R9
l303: orrNE R8, R8, R0, LSR R0
l304: orrLEs R10, R7, #-738197504
l305: orrs R5, R5, R14, ROR R11
l306: orrVC R14, R8, #49283072
l307: orrLE R5, R11, R11
l308: orr R10, R4, R4, LSL #3
l309: orrHIs R11, R15, R10
l310: orrs R12, R11, R9, RRX 
l311: orrPL R7, R12, R7, ASR #27
l312: orrs R14, R8, R15
l313: orrPL R9, R8, R5, RRX 
l314: orr R7, R1, R12, RRX 
l315: orrs R7, R5, R3, LSL #23
l316: orrVS R11, R9, R5, ROR R9
l317: orr R2, R5, R14
l318: orrNEs R9, R4, R14, LSR #3
l319: orrs R6, R8, #11584
l320: orrHI R5, R14, #19
l321: orrLT R12, R4, #1032192
l322: orrs R6, R5, #1753088
l323: orrPL R10, R4, R6
l324: orr R9, R15, #2336
l325: orrPL R12, R8, #65536000
l326: orr R9, R9, #90177536
l327: orrGT R9, R3, #2162688
l328: orrHI R7, R7, R0, ASR R4
l329: orrVCs R12, R10, R0
l330: orrs R9, R14, R15
l331: orrs R10, R7, R11, ASR #17
l332: orr R5, R10, R11, LSL R6
l333: orrs R11, R15, R12
l334: orrGT R6, R8, R14, LSR R4
l335: orrCCs R11, R5, R2, ROR #30
l336: orrCCs R12, R5, R2, LSL #23
l337: orrHIs R10, R14, R14, RRX 
l338: orrLTs R12, R5, R1
l339: orrs R5, R4, R8, ROR #4
l340: orrs R12, R5, R14, ASR #27
l341: orrPL R3, R8, R10, LSR #9
l342: orrs R10, R5, R12, LSR #22
l343: orrHI R4, R6, R11
l344: orr R12, R11, R8
l345: orrs R2, R0, R10
l346: orrEQ R9, R4, R8, RRX 
l347: orrs R11, R10, #1493172224
l348: orr R0, R1, R8, LSR #29
l349: orr R10, R15, #238
l350: orrs R7, R12, R5, RRX 
l351: orrGEs R7, R1, R11, ROR R7
l352: orrEQs R1, R0, R2, RRX 
l353: orrGT R12, R9, #-1073741768
l354: orrs R9, R10, R4, ASR R2
l355: orrs R9, R1, R8
l356: orrCCs R9, R4, R7, LSR #16
l357: orrs R2, R4, R11
l358: orrMIs R2, R6, R8
l359: orrLS R5, R15, R8
l360: orr R11, R4, R3, RRX 
l361: orrCS R6, R5, R2, LSR #24
l362: orrCS R8, R15, #-1375731712
l363: orrEQs R4, R5, R5, ASR R1
l364: orrLS R4, R2, R9, RRX 
l365: orr R9, R14, #238592
l366: orrLSs R7, R3, R11, ROR #7
l367: orrs R8, R12, #249856
l368: orrs R3, R14, R4, LSL #30
l369: orrHI R9, R8, R6
l370: orrGTs R8, R2, R4, RRX 
l371: orrVS R2, R0, #-1459617792
l372: orr R6, R1, R5, RRX 
l373: orrGT R12, R4, #1744
l374: orrVC R3, R12, #267386880
l375: orrLEs R10, R14, #56623104
l376: orrVCs R11, R9, R14, ASR #24
l377: orrPLs R3, R12, R4, ASR R2
l378: orrHIs R0, R8, R4, RRX 
l379: orrGTs R1, R14, #2113929216
l380: orrEQ R0, R7, R10, RRX 
l381: orrLS R11, R11, R2
l382: orrNEs R6, R6, #47
l383: orr R8, R4, R5, ROR R14
l384: orrNE R7, R14, R4
l385: orr R12, R5, R9, ROR #11
l386: orrs R3, R1, R10, LSL R3
l387: orrs R9, R5, #1610612736
l388: orrVC R3, R5, R9, RRX 
l389: orrs R4, R0, R7, ROR #17
l390: orrs R5, R14, R1, ASR R12
l391: orr R6, R6, R7, LSR R6
l392: orrs R1, R0, R4, ROR #3
l393: orrLEs R14, R11, R9, LSR #13
l394: orrPLs R2, R5, R9, LSL #24
l395: orrs R4, R12, R3
l396: orrs R7, R6, R15
l397: orr R6, R12, R5
l398: orrCCs R9, R9, #57
l399: orr R5, R15, R0
l400: orrs R4, R15, R5, LSR #26
l401: orrs R8, R12, R9
l402: orrCSs R3, R9, R5, ROR R7
l403: orr R4, R15, #61603840
l404: orrs R4, R0, #1
l405: orrLT R0, R9, R9
l406: orrs R7, R2, R3, ROR R10
l407: orrPL R9, R0, #1044480
l408: orrHIs R9, R0, R2, LSL #15
l409: orrs R5, R8, R2, LSL R3
l410: orrMI R8, R14, R10, LSL #11
l411: orrs R2, R0, R15, LSR #6
l412: orrGT R3, R4, R1, ROR R7
l413: orr R11, R14, R7, ROR R11
l414: orrNEs R2, R3, R14, ASR #7
l415: orrs R2, R2, R2
l416: orrLE R11, R10, #24832
l417: orrVS R6, R4, R2, RRX 
l418: orrs R4, R15, R10, RRX 
l419: orr R8, R15, R9
l420: orrs R11, R15, R7, RRX 
l421: orrs R6, R7, R4, LSR R2
l422: orr R12, R4, R5, ROR R3
l423: orrCSs R12, R0, R7, LSL R8
l424: orr R6, R9, R12, LSR R5
l425: orrPLs R1, R1, R9, LSR #16
l426: orrCS R4, R9, R7
l427: orr R0, R4, R10, ASR R7
l428: orrs R5, R11, #-1073741806
l429: orrs R3, R11, #918552576
l430: orrs R5, R0, R0, RRX 
l431: orrs R11, R9, #-2063597568
l432: orr R9, R14, #999424
l433: orrs R10, R1, R7, ROR R14
l434: orrHI R9, R4, R11, ROR #16
l435: orrEQ R2, R12, R11, ROR #5
l436: orr R11, R2, #324
l437: orrGT R9, R11, R6
l438: orrCC R12, R0, R2, ASR #18
l439: orrLE R7, R8, #1140850690
l440: orrVCs R7, R12, R6
l441: orrLTs R9, R10, R12, LSL R12
l442: orr R14, R9, R2, ROR R8
l443: orrGT R7, R0, #-754974720
l444: orrEQs R2, R12, R2
l445: orrLT R12, R4, R12, ROR #10
l446: orrs R9, R0, R7, LSL R12
l447: orrHIs R7, R3, R5, RRX 
l448: orr R8, R0, R7, ROR #16
l449: orrs R12, R0, #1073741882
l450: orr R0, R11, R1, RRX 
l451: orrs R14, R6, #27
l452: orrGTs R5, R11, R4, LSL R7
l453: orrHIs R10, R4, R5, LSR #31
l454: orrNE R12, R1, R1, ASR R5
l455: orr R14, R11, R9
l456: orrLE R3, R4, R11
l457: orrs R2, R4, R5
l458: orrCC R2, R4, R15
l459: orr R14, R15, R0, ROR #21
l460: orrMIs R6, R14, R14
l461: orrs R8, R5, R14, LSR #7
l462: orr R4, R8, #2162688
l463: orrGE R11, R14, R2, LSR R12
l464: orr R1, R3, R14, LSR R7
l465: orrLSs R8, R1, #650117120
l466: orrCCs R7, R9, R10, RRX 
l467: orr R12, R9, #573440
l468: orr R5, R3, R0, LSR R9
l469: orrGE R9, R7, #-1073741783
l470: orrVS R3, R12, #205
l471: orrs R10, R14, R4, RRX 
l472: orrMI R1, R4, #95232
l473: orrEQs R6, R14, R2
l474: orrMIs R12, R3, R15, LSL #5
l475: orrLTs R0, R8, R14
l476: orrPL R2, R12, R1, LSR R11
l477: orrs R2, R12, R2, LSL #25
l478: orrVC R2, R9, R15
l479: orrNE R10, R10, R14, ASR R2
l480: orrLE R4, R1, R15, RRX 
l481: orr R0, R2, #44032
l482: orr R4, R3, #830472192
l483: orrs R2, R8, R7
l484: orrs R9, R15, R12
l485: orrCCs R2, R10, R15
l486: orrs R2, R4, R0, ASR #19
l487: orrNEs R4, R1, R11, LSR #3
l488: orrGEs R8, R5, R2
l489: orrPL R8, R8, #782336
l490: orr R14, R4, R7, ROR #21
l491: orrs R11, R0, R2
l492: orrEQ R1, R11, R11
l493: orrCCs R5, R5, R2, ASR #16
l494: orrHIs R12, R8, R4, ASR R1
l495: orrCSs R14, R8, R8, LSL R14
l496: orrVSs R8, R11, R4, RRX 
l497: orrPL R10, R8, R15, RRX 
l498: orrMIs R5, R9, R6, ASR R7
l499: orrPL R4, R15, R14, ROR #20
l500: orrLE R5, R1, R2
l501: orr R4, R6, #792723456
l502: orrs R0, R0, R12, LSL R3
l503: orrGEs R10, R4, R10
l504: orrCC R9, R12, R14, ROR R2
l505: orrLEs R10, R9, R9, ASR #5
l506: orrs R11, R12, R10
l507: orrLE R1, R15, R2, ROR #14
l508: orrGEs R5, R9, #1073741834
l509: orrLT R2, R4, R15, ROR #20
l510: orrs R4, R6, R6, LSR #25
l511: orrs R10, R2, #832
l512: orr R4, R2, R7, LSR R5
l513: orr R0, R4, #1677721600
l514: orrLTs R4, R4, #79691776
l515: orrs R6, R5, R11, ROR R5
l516: orrCS R12, R2, R1, ROR R3
l517: orrLT R4, R10, R8, LSL R8
l518: orrNEs R10, R8, R12, RRX 
l519: orrHIs R6, R9, #1264
l520: orrVCs R9, R9, R10, RRX 
l521: orr R9, R5, R7, ROR #20
l522: orrLTs R0, R0, R4, LSR R7
l523: orrVC R10, R0, R12, RRX 
l524: orrPL R5, R14, R7, LSL R0
l525: orrPLs R4, R8, #3031040
l526: orr R0, R8, #-1610612724
l527: orrPL R10, R10, R3, LSL R8
l528: orr R2, R10, #8388608
l529: orr R12, R6, R4, LSR #15
l530: orrCSs R10, R10, R11
l531: orrs R3, R0, #13697024
l532: orrEQs R0, R12, R10, ASR #28
l533: orrs R3, R8, #1073741840
l534: orr R3, R1, R15, LSL #7
l535: orrGE R1, R0, R3, ASR #29
l536: orrCS R0, R5, R7, LSL R5
l537: orr R0, R7, #164
l538: orrHIs R3, R5, R15
l539: orrMIs R14, R6, #43515904
l540: orr R4, R9, R10
l541: orrGE R2, R11, R12, ROR #20
l542: orrGTs R11, R14, #840
l543: orrMI R8, R4, R15, LSR #4
l544: orrCC R12, R4, R9, LSR R5
l545: orr R14, R10, R12, LSL #12
l546: orr R6, R7, #1610612747
l547: orrs R2, R4, #478150656
l548: orrs R14, R6, R2
l549: orr R4, R2, R3, ROR R11
l550: orrs R12, R0, R11
l551: orrLTs R5, R14, R7, ROR #20
l552: orr R12, R6, R6, RRX 
l553: orr R6, R15, #21
l554: orrLSs R3, R14, #-83886080
l555: orrLE R9, R7, #805306370
l556: orr R2, R15, #1543503874
l557: orrCCs R3, R0, R7, ROR #25
l558: orr R1, R2, R7
l559: orrNE R3, R6, R12, LSR R5
l560: orr R8, R11, R4, ASR R2
l561: orr R1, R5, #124
l562: orr R2, R10, R11
l563: orrGT R10, R6, R14, LSL #17
l564: orrCSs R12, R3, R8, ROR #25
l565: orrPLs R4, R6, R14, LSL #26
l566: orrVS R9, R2, R10
l567: orrLT R1, R4, R0, LSL #5
l568: orrPLs R12, R10, R9, RRX 
l569: orrVS R6, R10, R5, RRX 
l570: orrVS R10, R9, R6
l571: orrVS R4, R6, R12
l572: orr R7, R3, R14, LSR R14
l573: orr R14, R7, R14, LSR R12
l574: orrNE R14, R7, R4, LSR R11
l575: orrLEs R8, R6, #12
l576: orr R2, R0, R5, ASR #22
l577: orrGEs R7, R15, R12
l578: orr R0, R8, R2, LSR #8
l579: orrs R10, R2, #-1946157054
l580: orrMI R3, R4, R15, RRX 
l581: orr R12, R12, #4046848
l582: orrCS R14, R15, R1, RRX 
l583: orrCC R3, R7, R2
l584: orrs R5, R1, R8, ROR R14
l585: orrVSs R2, R11, R1, ASR R2
l586: orrNE R11, R8, #753664
l587: orrLS R8, R2, R11, RRX 
l588: orrPL R2, R7, R5, LSR R5
l589: orrs R7, R0, R4
l590: orrVSs R3, R11, R8
l591: orrGT R0, R8, R8, ASR R6
l592: orrVSs R10, R9, R0
l593: orrs R5, R12, R1, ROR R1
l594: orr R0, R5, R6, LSR R11
l595: orrVSs R8, R9, R5
l596: orrLT R0, R0, #10240
l597: orrVCs R3, R0, R3, ASR R8
l598: orrLEs R9, R6, R9, ROR #29
l599: orrs R6, R0, R0, RRX 
l600: orrHIs R14, R4, R11, LSR #2
l601: orrVSs R5, R1, #2046820352
l602: orrVSs R11, R2, R10, LSR R7
l603: orrMIs R1, R6, #12544
l604: orrLS R12, R14, R8, LSL #2
l605: orrs R14, R6, #44040192
l606: orr R5, R7, #-2147483644
l607: orrs R3, R0, R1, ROR #13
l608: orrs R4, R1, R10, ROR #18
l609: orr R10, R11, R5
l610: orrGEs R5, R0, #2211840
l611: orrs R11, R8, R6, LSL #21
l612: orrs R3, R12, R3
l613: orrVSs R0, R11, R10
l614: orrCS R4, R0, R1
l615: orrs R9, R4, R10, ASR R9
l616: orrCCs R4, R6, R5
l617: orrCCs R0, R4, R11, LSR R5
l618: orrCCs R2, R14, #267386880
l619: orrs R9, R0, R10
l620: orrPL R0, R0, R9, ROR #28
l621: orrs R7, R4, R8
l622: orrLT R11, R4, R14, ROR #25
l623: orrLTs R0, R8, R3, ASR #4
l624: orrs R9, R10, R8, LSR R10
l625: orrLTs R3, R2, R12, ROR R4
l626: orrHIs R6, R14, R8
l627: orrCSs R0, R12, R4
l628: orrEQs R8, R2, #356515840
l629: orrPL R12, R15, R6, LSR #16
l630: orrVCs R8, R7, R12, RRX 
l631: orrNEs R14, R3, R14
l632: orr R7, R1, R7, LSR R12
l633: orr R5, R4, R7
l634: orrCSs R12, R2, R14, RRX 
l635: orrMI R10, R6, #2368
l636: orrs R10, R5, #106954752
l637: orrs R9, R2, #-1811939325
l638: orrCS R12, R9, #10752
l639: orrVS R11, R15, R6
l640: orrPL R2, R15, R15
l641: orrLEs R12, R0, R10
l642: orrEQs R2, R1, R12, RRX 
l643: orrLE R1, R9, R11
l644: orrs R10, R10, R6, RRX 
l645: orrs R11, R14, #-805306360
l646: orrCC R8, R8, R6
l647: orrs R9, R6, R5, ASR #21
l648: orrVS R1, R8, R9, LSL R2
l649: orrCC R4, R14, #155189248
l650: orr R3, R0, R2, LSR #8
l651: orr R6, R1, #444
l652: orrs R2, R0, #197132288
l653: orrLSs R3, R7, #8192
l654: orrs R4, R4, R0, LSR #0
l655: orrs R8, R9, #66
l656: orrs R12, R6, R9
l657: orrNEs R9, R3, R0
l658: orrHIs R4, R7, R6
l659: orrLS R7, R2, R5
l660: orrVS R11, R10, R5
l661: orrGE R1, R15, #6080
l662: orrCS R8, R12, #1020
l663: orrVS R4, R10, #234881024
l664: orr R2, R6, R7, RRX 
l665: orr R9, R0, R2
l666: orrVS R1, R4, #297795584
l667: orrCS R4, R4, R7, RRX 
l668: orrs R14, R15, #10485760
l669: orrCCs R4, R8, #528384
l670: orr R5, R5, R5, LSR R11
l671: orrs R6, R0, #209920
l672: orrLEs R2, R10, R0
l673: orrs R14, R5, #260096
l674: orrLSs R3, R10, R15
l675: orrPLs R8, R12, R0, LSL R6
l676: orr R10, R10, R1, LSR #11
l677: orrPL R0, R0, R1
l678: orrGE R5, R4, #138412032
l679: orrNEs R2, R1, R3, LSL #3
l680: orrGTs R5, R14, R11
l681: orr R3, R1, R2, LSL #26
l682: orrs R0, R10, #704
l683: orrMIs R7, R5, R15
l684: orrVC R5, R8, R1, RRX 
l685: orrMI R1, R0, R9
l686: orrGEs R4, R0, R9, LSR #31
l687: orrCSs R12, R6, R10
l688: orrMI R12, R2, #15597568
l689: orrCC R9, R12, R12, RRX 
l690: orrPLs R10, R7, R2
l691: orrs R5, R14, #1073741830
l692: orrLS R8, R14, R3, RRX 
l693: orr R11, R7, R3, ROR R9
l694: orrCC R1, R6, R14, ASR #4
l695: orrVC R7, R12, #-721420288
l696: orrLS R12, R10, R0, LSL #17
l697: orrs R1, R7, R4, ASR #29
l698: orr R1, R3, #178176
l699: orrLT R7, R11, R1, LSL R12
l700: orrMI R9, R1, #469762048
l701: orrVCs R0, R10, #2704
l702: orr R5, R10, R9, LSR #18
l703: orrLT R8, R6, R11, RRX 
l704: orrVSs R0, R4, R1, LSR R1
l705: orrVC R2, R15, #805306370
l706: orrNEs R1, R8, R2, LSR #26
l707: orrNE R8, R4, R12, RRX 
l708: orr R8, R8, #65280
l709: orr R6, R10, R12, LSL R12
l710: orrCS R6, R14, R2, LSR R9
l711: orrNEs R11, R8, #805306369
l712: orr R0, R7, R2, ASR #2
l713: orrLEs R5, R3, #-1275068415
l714: orr R8, R4, R0
l715: orr R10, R10, R10, LSL #15
l716: orrLEs R9, R12, R14
l717: orr R7, R15, R0
l718: orrGTs R10, R6, R6, LSL R7
l719: orrVS R0, R0, R9
l720: orrs R5, R3, #11392
l721: orr R6, R14, R3
l722: orrs R0, R10, R0
l723: orrGT R1, R15, R5
l724: orrLE R1, R8, R1, LSR R5
l725: orrLE R11, R15, R2, RRX 
l726: orrs R0, R12, R11, LSR #8
l727: orrLSs R11, R15, R3
l728: orrs R6, R5, R2, ROR #22
l729: orrVS R7, R12, R7
l730: orrCC R9, R2, #6750208
l731: orrVSs R6, R12, R8, RRX 
l732: orrs R6, R0, R4, LSR R11
l733: orr R14, R9, R15, RRX 
l734: orrs R8, R15, #128
l735: orrNEs R4, R2, R7
l736: orrVC R4, R1, R12, ASR R3
l737: orrVCs R3, R9, R3, RRX 
l738: orrs R10, R12, #483328
l739: orrEQs R7, R4, R14, ASR #15
l740: orr R9, R3, R2, LSR R3
l741: orrPL R10, R15, #893386752
l742: orrVS R8, R6, R4
l743: orrCS R12, R3, R6, ASR #11
l744: orr R7, R5, R3, ROR #6
l745: orrLT R12, R5, R5
l746: orr R6, R10, R11, ASR R12
l747: orr R5, R1, #1291845632
l748: orr R14, R2, R0, LSR R14
l749: orr R0, R2, #32505856
l750: orrs R6, R8, R6, ROR #3
l751: orrHIs R0, R1, R14, ASR R10
l752: orrEQ R6, R11, R3
l753: orrs R7, R9, R3, ASR R7
l754: orr R9, R9, R10, ASR R1
l755: orrLS R0, R1, R11, ROR R8
l756: orrs R7, R0, R11
l757: orrGE R8, R3, R1, RRX 
l758: orrLTs R2, R14, R8, ROR R12
l759: orr R7, R12, R7
l760: orrLE R9, R10, R3, LSR #11
l761: orrMI R5, R6, R9, LSL R4
l762: orr R10, R10, R4, LSL R0
l763: orrs R5, R14, R12
l764: orr R3, R6, R5, LSR R7
l765: orrs R4, R12, R10, LSL R12
l766: orrs R4, R11, R2
l767: orrs R2, R9, #-1073741794
l768: orr R8, R1, R7, ASR #3
l769: orrCSs R11, R8, #201
l770: orrVSs R14, R9, #1015808
l771: orrs R6, R0, R4, RRX 
l772: orrCSs R0, R8, R7, LSR #14
l773: orrs R4, R12, R5, LSR R10
l774: orrCSs R7, R3, R14, ASR #11
l775: orrs R7, R8, R14, LSR #29
l776: orrGEs R14, R6, R6, ASR R6
l777: orrs R4, R6, R3, LSL R12
l778: orrNEs R9, R12, R6, LSL R4
l779: orrEQ R11, R3, R5, RRX 
l780: orrNEs R4, R2, R4
l781: orr R4, R5, R11
l782: orrGEs R0, R1, #319488
l783: orrs R10, R8, R4
l784: orrs R7, R10, #54016
l785: orrs R6, R1, R5, ROR #28
l786: orrCS R5, R9, R9, ROR R1
l787: orrEQs R1, R2, R8, RRX 
l788: orrs R14, R10, R11
l789: orr R4, R6, #150994944
l790: orr R4, R1, #1073741824
l791: orrLEs R7, R14, #3152
l792: orrVC R12, R11, R12
l793: orrCCs R1, R8, #-1476395005
l794: orrs R12, R2, #14352384
l795: orrVCs R10, R3, R15, RRX 
l796: orrs R11, R8, #327680
l797: orrLS R12, R0, R5, ASR #21
l798: orrGE R14, R5, R3, RRX 
l799: orrHI R6, R2, R4, LSR R10
l800: orrLEs R7, R2, R10, LSR #0
l801: orrGT R2, R12, R5, ASR R1
l802: orrEQs R11, R6, R12, LSR #25
l803: orrNEs R11, R8, #58880
l804: orrHI R11, R3, #2342912
l805: orrPLs R6, R8, R10, ASR R5
l806: orrs R8, R0, R3
l807: orrLS R8, R1, R10
l808: orr R2, R0, R3, ASR #20
l809: orrMI R6, R7, R10, ASR #2
l810: orrs R9, R1, R3
l811: orrs R6, R6, R1
l812: orr R0, R15, #1342177280
l813: orr R4, R15, #49283072
l814: orrs R5, R15, R1, ASR #1
l815: orr R7, R10, R5, ROR #1
l816: orr R2, R6, R14, LSR #20
l817: orrs R9, R3, R10
l818: orrLSs R5, R0, R0, ROR R12
l819: orrMIs R10, R4, #352
l820: orrHI R2, R11, R14, RRX 
l821: orrVSs R6, R11, R10, ASR #13
l822: orrEQs R4, R1, R10
l823: orrs R7, R1, #562036736
l824: orrs R14, R5, R5
l825: orr R8, R7, R4, LSR R8
l826: orrs R10, R8, #-956301312
l827: orrEQs R0, R10, R9
l828: orr R1, R11, R9, ASR R4
l829: orr R8, R11, R2
l830: orrPL R3, R9, R12
l831: orr R7, R0, #111
l832: orrGT R8, R2, R9, LSR #30
l833: orrPL R3, R5, #-1342177274
l834: orrCC R6, R9, R3, LSL #8
l835: orrCC R7, R14, R11, ROR R7
l836: orrVC R12, R14, #-805306355
l837: orr R3, R7, R12, ASR R0
l838: orrNEs R14, R8, R7
l839: orrLT R6, R10, #33
l840: orrs R0, R4, R0, LSL R6
l841: orrCSs R0, R7, R1, LSL R1
l842: orrs R1, R2, #241664
l843: orrCCs R7, R10, #562036736
l844: orrs R3, R6, R12
l845: orrs R9, R0, R0
l846: orrLS R6, R3, R14, LSR #30
l847: orrCCs R2, R11, R10, ASR R5
l848: orrVS R8, R5, R7, LSR R8
l849: orrLT R0, R14, R3, ROR R14
l850: orrNE R5, R9, R7, RRX 
l851: orrPL R12, R1, R6, LSL R14
l852: orrs R2, R8, R3, RRX 
l853: orrs R11, R8, #132096
l854: orr R3, R10, R12, ROR #22
l855: orr R3, R12, #13312
l856: orrCSs R8, R10, R9
l857: orrGT R8, R11, R15
l858: orrHIs R0, R4, R4, ASR #21
l859: orrLT R6, R2, #155189248
l860: orrs R5, R4, R6, RRX 
l861: orrMI R3, R12, #42991616
l862: orrLT R4, R3, #801112064
l863: orrVSs R14, R6, R3
l864: orrGE R11, R2, R7, LSL #23
l865: orrs R8, R3, R10, LSR R1
l866: orrs R11, R5, R5
l867: orrMIs R14, R3, R9, ASR #1
l868: orrs R7, R9, R12
l869: orrs R3, R4, #35
l870: orrs R1, R11, R11
l871: orrs R10, R12, R9, LSR #11
l872: orrLSs R0, R9, R7, LSR R2
l873: orrs R14, R2, R8, LSR #20
l874: orrs R0, R0, R5, LSR R5
l875: orrCCs R5, R5, R1, RRX 
l876: orrCCs R14, R10, R6, LSR R0
l877: orrCCs R0, R10, #12288
l878: orrGE R9, R12, #39680
l879: orr R14, R0, R0
l880: orrEQ R8, R4, #1811939328
l881: orrVS R4, R6, #35127296
l882: orrs R11, R7, R15, RRX 
l883: orrs R8, R15, R4
l884: orrLTs R7, R0, R8, ASR R9
l885: orr R11, R7, #434176
l886: orrMIs R0, R14, R10, LSL R9
l887: orr R0, R8, R0
l888: orrLTs R5, R8, R3, LSL R11
l889: orrs R0, R3, R12, RRX 
l890: orrCS R8, R3, R2, ROR #16
l891: orr R6, R12, #1310720
l892: orrs R7, R4, #185597952
l893: orrs R1, R4, R4, LSL R14
l894: orr R11, R1, R10
l895: orrLE R5, R0, R1, ASR #17
l896: orrNEs R7, R0, #104857600
l897: orrPLs R9, R4, R2, ROR #27
l898: orrGTs R1, R11, #-1073741822
l899: orrLEs R4, R5, R9, LSR R4
l900: orrVC R11, R4, R6, LSR R8
l901: orrLT R6, R0, R14, LSL R10
l902: orrNE R4, R4, R12, RRX 
l903: orr R1, R12, R11, RRX 
l904: orrMIs R14, R2, #654311424
l905: orrCSs R1, R12, #66060288
l906: orrGEs R10, R0, #7471104
l907: orr R9, R4, R7, LSR R0
l908: orrEQ R0, R14, R8
l909: orrs R8, R5, R14, ROR #27
l910: orrVC R0, R12, R9, LSL #10
l911: orrs R2, R0, #704
l912: orrLTs R11, R2, R0
l913: orr R6, R11, #805306369
l914: orrLTs R14, R7, #67108864
l915: orrs R8, R8, R3, RRX 
l916: orrs R1, R8, R5
l917: orrCC R10, R15, R11, ASR #25
l918: orrVS R4, R11, #3620864
l919: orrs R9, R10, R8, LSR R14
l920: orrNEs R10, R0, R6, ROR R11
l921: orrMI R5, R6, #454656
l922: orr R12, R3, R7, ROR R7
l923: orrs R9, R3, R0, LSL #7
l924: orrMIs R6, R5, R4, ASR #21
l925: orrs R12, R7, R10, ASR #17
l926: orrs R10, R0, #77
l927: orrCCs R5, R1, R7, ASR R2
l928: orrLEs R9, R5, R0, ASR R1
l929: orr R1, R2, #688
l930: orrGE R8, R8, #1056964608
l931: orrCCs R0, R1, R7
l932: orr R4, R10, R2
l933: orr R11, R6, R4, LSL R6
l934: orrGT R10, R2, R5
l935: orrVS R10, R8, #708
l936: orrHIs R14, R6, R4
l937: orr R8, R1, R5
l938: orr R6, R8, R12
l939: orrNEs R0, R2, R8
l940: orr R5, R5, R11, RRX 
l941: orrs R14, R7, #400
l942: orrs R10, R14, #884
l943: orrLTs R7, R12, R10, RRX 
l944: orrEQ R10, R7, #977272832
l945: orrPLs R11, R4, R9, LSL R10
l946: orrVS R12, R10, R8
l947: orrs R12, R10, #-1073741823
l948: orrCC R7, R9, #1884160
l949: orrNEs R12, R10, R7, ASR R11
l950: orrVS R0, R10, #15
l951: orrPLs R10, R10, R5
l952: orrCS R9, R9, R6, ASR #24
l953: orrVC R11, R14, #-268435449
l954: orr R9, R3, #31195136
l955: orrCSs R9, R2, R12, RRX 
l956: orr R11, R2, #14400
l957: orrLSs R3, R0, #35
l958: orr R11, R9, #54
l959: orrGT R11, R14, R11, ASR R3
l960: orrMI R9, R3, R1
l961: orrGTs R6, R11, R9
l962: orrLTs R7, R15, R3, RRX 
l963: orrPL R5, R0, R0, RRX 
l964: orrs R11, R9, R6, ASR #29
l965: orrVS R1, R12, R8, ROR R2
l966: orrGE R2, R8, R6
l967: orr R2, R11, R1, ROR R10
l968: orrLTs R3, R10, #88064
l969: orr R12, R11, R5, ASR #12
l970: orrNE R3, R11, R15, ASR #14
l971: orrs R0, R11, #-1476395005
l972: orrs R4, R1, R6, LSR #7
l973: orrs R3, R4, R9
l974: orrs R8, R14, R15, RRX 
l975: orrs R7, R11, R1, LSL R5
l976: orrNE R14, R5, R2, RRX 
l977: orr R7, R11, R3, LSR #23
l978: orr R0, R10, R10
l979: orrs R10, R1, #1572864
l980: orr R1, R3, R11, ROR #12
l981: orrMIs R6, R14, #29696
l982: orrLE R9, R9, R1, ROR #31
l983: orrMI R12, R15, R1, LSR #3
l984: orrCS R8, R11, R10, ASR #11
l985: orrLSs R14, R7, R12, RRX 
l986: orrs R14, R10, R1, RRX 
l987: orrLT R14, R0, #2030043136
l988: orrGT R6, R7, R3, ROR R3
l989: orrs R1, R10, R4
l990: orrNEs R3, R10, R5
l991: orrEQs R14, R1, R1, RRX 
l992: orrMI R0, R1, R3, LSL #0
l993: orrEQs R1, R4, R8
l994: orrMIs R0, R4, R9, LSL #23
l995: orrEQs R10, R9, R7, ROR R3
l996: orrCCs R11, R1, #226
l997: orr R5, R0, R14, ASR R1
l998: orrHIs R10, R3, R4
l999: orrCCs R4, R0, R4, ASR #1
l1000: orr R2, R11, R6
end: b end

