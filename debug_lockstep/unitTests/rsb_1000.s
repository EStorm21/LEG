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
val1: .word 470278041
next1:ldr R2, val2
b next2
val2: .word 2566294565
next2:ldr R3, val3
b next3
val3: .word 2890516109
next3:ldr R4, val4
b next4
val4: .word 3178271251
next4:ldr R5, val5
b next5
val5: .word 180789494
next5:ldr R6, val6
b next6
val6: .word 388526254
next6:ldr R7, val7
b next7
val7: .word 825460728
next7:ldr R8, val8
b next8
val8: .word 3649102779
next8:ldr R9, val9
b next9
val9: .word 1174810309
next9:ldr R10, val10
b next10
val10: .word 2046383755
next10:ldr R11, val11
b next11
val11: .word 957647017
next11:ldr R12, val12
b next12
val12: .word 3548327037
next12:ldr R14, val14
b next14
val14: .word 3085582014

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 2965561479
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 3716610533
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3096130985
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 2468951729
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 3514672001
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 1421129819
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 1835379996
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 3760372127
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3011280009
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 1645908259
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 490120972
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 1016962746
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 3520478627
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 337359538
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 2024154409
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 813302270
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 1248175571
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 4286095069
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 2605458752
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 993084238
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 1540326950
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: rsbLE R5, R0, R7, LSL #1
l2: rsbCS R6, R2, R12, LSL #0
l3: rsbLEs R12, R6, R1, RRX 
l4: rsbPL R4, R4, #13568
l5: rsbLTs R2, R7, R7
l6: rsb R14, R15, R10
l7: rsbLTs R3, R1, R7, RRX 
l8: rsb R8, R8, #12480
l9: rsb R3, R11, R4
l10: rsbLT R3, R6, R9, RRX 
l11: rsbs R7, R14, R0, LSR #10
l12: rsbMIs R2, R4, R5, ASR R6
l13: rsbHIs R1, R9, R10, ASR #24
l14: rsbNE R5, R5, R6, LSR R10
l15: rsbLS R14, R3, R6
l16: rsb R7, R11, R4, ASR R6
l17: rsbGEs R0, R3, R8
l18: rsbMIs R0, R11, #2441216
l19: rsbVSs R1, R5, R4
l20: rsb R12, R7, #704643072
l21: rsbGE R3, R1, R8, RRX 
l22: rsbLE R4, R0, R1, ROR #18
l23: rsb R12, R5, #61952
l24: rsbs R6, R6, R4, ROR R6
l25: rsbHIs R4, R5, #662700032
l26: rsbHI R0, R1, #14548992
l27: rsbLEs R0, R6, R9, LSL #9
l28: rsbMIs R9, R11, R9, ROR #18
l29: rsbMI R14, R5, #616
l30: rsb R5, R1, #1409286144
l31: rsbs R9, R8, #992
l32: rsbNE R0, R6, R0
l33: rsbs R12, R5, R4
l34: rsbs R9, R11, #173056
l35: rsbs R9, R1, #1523712
l36: rsbPL R4, R3, R0, ASR R3
l37: rsb R3, R11, #1120
l38: rsb R11, R11, R4, LSL R4
l39: rsbHIs R9, R15, #356
l40: rsbMI R3, R1, R3, ROR R11
l41: rsbLTs R6, R0, #-2147483637
l42: rsbPL R4, R12, R1, ASR #26
l43: rsbNE R11, R0, R2, LSR R11
l44: rsbLSs R9, R1, R9, RRX 
l45: rsbGTs R11, R1, #1769472
l46: rsbMIs R14, R14, #17408
l47: rsb R2, R10, R6, LSR R11
l48: rsbMIs R7, R7, R3, LSL R1
l49: rsbs R4, R6, R10, ASR R3
l50: rsbs R14, R15, R0
l51: rsb R10, R1, R7
l52: rsbLT R12, R5, R11, RRX 
l53: rsb R12, R6, R8, ASR #19
l54: rsbEQ R2, R11, R15, LSR #23
l55: rsbVS R9, R3, R4, RRX 
l56: rsb R0, R9, R8, RRX 
l57: rsb R6, R9, #14942208
l58: rsbLTs R2, R4, R7, ASR #8
l59: rsb R8, R6, #2528
l60: rsb R1, R8, #-1744830463
l61: rsbLSs R0, R15, #7143424
l62: rsbEQs R10, R3, R15, LSL #27
l63: rsbNEs R10, R1, R1
l64: rsbMI R8, R0, #108
l65: rsbCC R0, R10, R9
l66: rsb R6, R12, R9, LSR #25
l67: rsbCS R0, R5, R14, ROR R3
l68: rsb R11, R7, #46336
l69: rsbVS R0, R10, #62720
l70: rsbGT R3, R4, R7, LSR R2
l71: rsbVCs R0, R3, #228
l72: rsbVCs R8, R4, #720896
l73: rsbHI R10, R3, #1011712
l74: rsbEQs R3, R15, R6
l75: rsbVS R7, R10, R15
l76: rsbVS R3, R8, R8, RRX 
l77: rsb R10, R12, #40192
l78: rsbGTs R12, R11, #-2147483643
l79: rsbLT R5, R11, R2, ROR R7
l80: rsbMIs R4, R6, R0, ROR R8
l81: rsb R2, R9, R0, LSR R14
l82: rsbCSs R9, R11, #737280
l83: rsbs R6, R5, R14, RRX 
l84: rsbCS R8, R2, R10, ROR #6
l85: rsbPLs R10, R2, R9
l86: rsbGE R0, R11, R5, LSL #17
l87: rsbVC R3, R15, R7
l88: rsbPLs R5, R12, R7, ROR R2
l89: rsbGTs R12, R12, #771751936
l90: rsb R6, R8, #2162688
l91: rsb R10, R6, #229638144
l92: rsbs R11, R7, R11, LSR #22
l93: rsb R12, R1, R8, RRX 
l94: rsbCS R6, R8, R8, LSR R5
l95: rsbs R12, R14, R1
l96: rsbVSs R8, R1, R8, LSR #11
l97: rsbHI R14, R2, R0, LSL R5
l98: rsb R1, R7, R15, ASR #19
l99: rsbLTs R14, R1, R4, ASR #20
l100: rsb R0, R15, R4, ROR #27
l101: rsbs R1, R4, R1, RRX 
l102: rsbGTs R2, R9, R5
l103: rsbHIs R1, R2, R15, RRX 
l104: rsbEQs R4, R8, R1, LSL #27
l105: rsb R4, R11, R4, LSR #3
l106: rsbLSs R1, R5, R7, RRX 
l107: rsbLEs R4, R2, #15232
l108: rsb R14, R3, R5, RRX 
l109: rsb R4, R15, R8, RRX 
l110: rsbGTs R2, R11, R1
l111: rsbVC R5, R7, R6
l112: rsbs R10, R11, R12, RRX 
l113: rsbs R14, R9, R5, ASR #23
l114: rsbs R11, R0, #1032192
l115: rsbLTs R14, R6, R4
l116: rsbHIs R6, R4, R9, ASR R7
l117: rsb R9, R10, #-2080374781
l118: rsbs R10, R1, R10, RRX 
l119: rsbCCs R9, R9, R4, LSL #31
l120: rsbs R4, R4, R1, LSL #31
l121: rsbs R12, R14, #1069547520
l122: rsb R0, R12, R9, ROR #18
l123: rsbNEs R0, R15, R11, RRX 
l124: rsbs R0, R12, #-2147483635
l125: rsbs R8, R14, #-2147483636
l126: rsbGTs R6, R1, #3312
l127: rsbs R2, R12, R8, LSL R11
l128: rsbs R3, R1, #28311552
l129: rsb R6, R4, R11, LSR R14
l130: rsbMI R14, R12, R10, ASR R3
l131: rsbs R6, R4, #11392
l132: rsbs R11, R2, #33554432
l133: rsbs R4, R10, R7, LSR #28
l134: rsb R1, R11, R14
l135: rsbCC R14, R12, R11, RRX 
l136: rsbs R9, R14, #65011712
l137: rsb R1, R8, #2608
l138: rsbs R6, R6, R10, LSR #10
l139: rsbEQs R2, R9, R3, LSL #8
l140: rsb R0, R5, R1, LSL R7
l141: rsbPLs R3, R3, R10
l142: rsbVC R7, R12, R6, LSL R9
l143: rsbs R14, R9, R10
l144: rsbs R5, R6, R6, ASR #12
l145: rsbs R11, R5, R10
l146: rsb R11, R7, #79872
l147: rsbLT R1, R14, R3, ROR #29
l148: rsb R2, R2, R11
l149: rsbLE R5, R15, R12
l150: rsbs R10, R1, R6
l151: rsbLT R3, R6, R3, ROR R14
l152: rsb R12, R10, R12, ROR R0
l153: rsbMI R2, R1, R11, ROR #22
l154: rsbHIs R1, R12, R4
l155: rsbs R9, R14, R9
l156: rsbs R5, R1, R7, RRX 
l157: rsbEQ R10, R10, R7, LSL R3
l158: rsb R3, R6, #368
l159: rsbCS R1, R4, #1073741834
l160: rsbEQ R7, R10, #1929379840
l161: rsbGT R0, R14, R15, ASR #3
l162: rsbHIs R7, R10, R9, ROR #27
l163: rsb R11, R1, R15, LSR #11
l164: rsb R4, R8, R0, LSR R5
l165: rsb R7, R12, R0, LSL #23
l166: rsbs R12, R9, #181403648
l167: rsbLE R5, R14, R11
l168: rsbCS R1, R2, R2, ASR R0
l169: rsbEQ R11, R0, R7, RRX 
l170: rsb R1, R7, R0
l171: rsbs R4, R2, R7, LSL #29
l172: rsb R4, R15, R5, RRX 
l173: rsbGTs R3, R5, #23068672
l174: rsb R4, R5, R5, RRX 
l175: rsbLE R14, R0, R0
l176: rsbHIs R9, R2, R4
l177: rsbCC R0, R14, R11
l178: rsb R3, R3, #223232
l179: rsbVC R0, R10, R9
l180: rsbGT R14, R2, #-687865856
l181: rsbLT R5, R6, R6
l182: rsbs R11, R2, R10, ASR R12
l183: rsbs R3, R5, #-536870909
l184: rsb R0, R8, R10, LSR R14
l185: rsb R4, R2, R10, LSL R0
l186: rsb R9, R12, R6, ROR R8
l187: rsb R9, R3, R11, RRX 
l188: rsbs R4, R5, R7
l189: rsbCSs R2, R2, R0
l190: rsbLEs R2, R4, #-1744830461
l191: rsbMIs R0, R7, R10
l192: rsbVSs R8, R4, #29696
l193: rsb R9, R9, #13504
l194: rsbCSs R5, R7, R10, ROR #5
l195: rsbPL R8, R3, R5, LSL R4
l196: rsb R0, R6, #1073741855
l197: rsbCS R10, R15, R3
l198: rsb R12, R8, #16318464
l199: rsbPLs R2, R12, R9
l200: rsbs R0, R6, R3, ROR #11
l201: rsbs R9, R5, R0, ASR R10
l202: rsb R11, R3, R15, LSR #17
l203: rsbHIs R1, R12, #161
l204: rsbLTs R3, R9, R2
l205: rsbCSs R1, R2, R2, RRX 
l206: rsbLE R3, R8, R1, LSL R2
l207: rsbPLs R0, R2, #28573696
l208: rsbVCs R2, R10, R7, ROR #1
l209: rsbMIs R8, R14, R14, LSR #0
l210: rsb R5, R1, R1, LSL #0
l211: rsbLSs R2, R4, #2288
l212: rsbGE R6, R6, R5
l213: rsbLEs R6, R11, R4, LSL #18
l214: rsb R14, R7, R0, RRX 
l215: rsb R2, R9, R12, RRX 
l216: rsb R3, R7, R2, ROR #21
l217: rsbPL R4, R15, R4
l218: rsbVCs R7, R7, #14592
l219: rsb R14, R11, R4, ROR R3
l220: rsbs R10, R14, #423624704
l221: rsbs R8, R0, R5, LSL R6
l222: rsbLSs R0, R2, R5, LSR R9
l223: rsb R1, R6, R0, LSL R2
l224: rsbCCs R6, R11, R4, ASR R1
l225: rsbLTs R1, R14, R6, LSL R6
l226: rsbs R8, R2, #289406976
l227: rsbLTs R2, R8, R8, ASR R5
l228: rsbVC R3, R0, #834666496
l229: rsb R8, R10, R14
l230: rsbs R14, R5, R3, LSR #17
l231: rsbs R6, R4, R3, LSL #9
l232: rsb R0, R6, R3
l233: rsbVCs R2, R8, R1, RRX 
l234: rsbVCs R1, R5, R9
l235: rsbMIs R9, R3, R10, LSL #23
l236: rsbs R0, R9, R4, ASR R14
l237: rsbMI R3, R15, R12
l238: rsbCCs R10, R1, R10, ROR #23
l239: rsbHIs R9, R4, R7
l240: rsbNEs R5, R11, #-2147483624
l241: rsbCS R10, R14, R9
l242: rsb R11, R3, R12
l243: rsbs R5, R7, R2
l244: rsbLSs R10, R7, R1, ASR #4
l245: rsbVS R10, R9, R0, LSR R6
l246: rsbs R8, R8, R5, LSL R2
l247: rsbs R4, R15, R6, ASR #31
l248: rsbVCs R11, R11, R1, ASR R9
l249: rsbCS R10, R5, #4456448
l250: rsbs R6, R0, R9, ASR #29
l251: rsbNEs R14, R0, R4, ROR R9
l252: rsb R0, R8, R0, RRX 
l253: rsbLE R5, R1, #18432
l254: rsbGEs R5, R9, R14, LSR #22
l255: rsbs R4, R1, #112
l256: rsbCC R8, R0, #4096
l257: rsb R10, R11, #1540096
l258: rsb R12, R11, R6, RRX 
l259: rsbGE R1, R1, R14
l260: rsbs R2, R3, #2490368
l261: rsbLEs R8, R6, R1, LSL #25
l262: rsbs R6, R4, R10, ROR R1
l263: rsbLS R12, R10, R15, ROR #15
l264: rsbs R9, R11, #721420288
l265: rsbHIs R5, R6, R3, RRX 
l266: rsb R9, R4, R1
l267: rsbs R4, R9, #232
l268: rsbVC R4, R5, R14
l269: rsbLSs R9, R3, #19968
l270: rsbLSs R3, R8, R0, LSL #5
l271: rsbs R7, R1, #13056
l272: rsb R10, R0, R3, LSL #0
l273: rsb R14, R10, R3
l274: rsb R10, R12, #148897792
l275: rsbVS R2, R1, R2, LSR R1
l276: rsbPLs R9, R8, R3, RRX 
l277: rsbMIs R9, R11, #-1073741765
l278: rsbHIs R9, R3, R14, RRX 
l279: rsbEQ R6, R8, R2, ROR #5
l280: rsbLTs R11, R14, R2
l281: rsb R12, R12, #868220928
l282: rsbNEs R2, R9, R4
l283: rsb R4, R9, R11
l284: rsbs R11, R3, R11, ASR #27
l285: rsb R9, R7, #922746880
l286: rsbLT R0, R10, R8, ROR R2
l287: rsb R2, R2, R8, ASR R8
l288: rsbPL R10, R2, #516096
l289: rsb R1, R8, R8, LSL #18
l290: rsbVS R1, R1, R6, ASR #0
l291: rsbPL R4, R12, R5, ASR #18
l292: rsb R10, R0, R12, LSR #18
l293: rsbs R8, R10, R11, ROR R10
l294: rsbs R5, R6, R10, ROR #13
l295: rsbVS R12, R7, R12, ASR #23
l296: rsbVCs R0, R14, R2, LSL #22
l297: rsbs R8, R14, R3, LSR R0
l298: rsb R0, R7, R3, ROR R5
l299: rsbLSs R11, R2, R1
l300: rsbCS R9, R5, #692060160
l301: rsbGTs R9, R12, R12
l302: rsbCCs R3, R0, R4
l303: rsbPL R10, R1, R7, LSR R10
l304: rsbs R10, R11, #8320
l305: rsb R8, R5, R0, LSR R11
l306: rsbPL R4, R8, R8, ASR #9
l307: rsb R0, R5, R10, LSR #10
l308: rsbs R3, R1, #622592
l309: rsbLSs R11, R11, R0, ASR R14
l310: rsbs R12, R5, R1, ROR #2
l311: rsbMI R4, R5, #1867776
l312: rsbMI R10, R2, R10
l313: rsbs R7, R8, R15
l314: rsbLEs R6, R5, R5, ASR #26
l315: rsbVC R10, R8, #12608
l316: rsbVSs R7, R5, R10, ROR R9
l317: rsbVCs R10, R4, R9, ASR R1
l318: rsbCSs R5, R12, R3, LSL R8
l319: rsb R9, R1, R15, RRX 
l320: rsb R11, R7, R2, RRX 
l321: rsbGT R11, R0, R11
l322: rsbHI R5, R1, R14
l323: rsbCS R3, R7, R12, ASR #14
l324: rsbHIs R5, R14, R1
l325: rsbs R2, R3, #-1610612736
l326: rsbPL R9, R10, R10, ROR #20
l327: rsbs R6, R10, R7, ASR #16
l328: rsbHIs R9, R7, R0, ROR #31
l329: rsbMIs R7, R10, R15
l330: rsbHI R9, R5, #1753088
l331: rsbCS R5, R10, R4, ROR #12
l332: rsbLE R7, R6, R4
l333: rsbMI R0, R10, R4, RRX 
l334: rsbGT R3, R5, #384
l335: rsb R0, R5, #212
l336: rsb R5, R3, #2496
l337: rsbVS R3, R9, R4, ASR R5
l338: rsb R1, R0, R14
l339: rsbCC R6, R11, R6, ASR R1
l340: rsbPLs R7, R2, R7, ASR #12
l341: rsbVS R12, R5, R12
l342: rsbs R12, R15, #-1895825408
l343: rsbLS R7, R15, R11
l344: rsbLSs R2, R10, #131072
l345: rsbCCs R11, R10, R1, ROR #2
l346: rsbs R8, R0, R9, ASR R9
l347: rsb R14, R6, R14, RRX 
l348: rsbLE R8, R14, R2, ROR #5
l349: rsbVCs R14, R9, R7, RRX 
l350: rsbs R10, R9, R11, ROR R0
l351: rsbs R3, R1, R10, LSL #7
l352: rsb R9, R1, R4, LSR R7
l353: rsbNE R3, R1, R9, ASR R1
l354: rsbGEs R4, R12, R1, LSL #23
l355: rsb R14, R12, R0
l356: rsb R1, R12, R8
l357: rsbs R10, R12, R6, LSL #0
l358: rsbs R5, R2, R11, LSL #18
l359: rsb R7, R4, R10, LSR #20
l360: rsbPL R6, R9, #1073741824
l361: rsbs R12, R1, R9, LSL #19
l362: rsb R3, R12, R2
l363: rsbGE R9, R0, R5
l364: rsbVS R1, R8, R3, ROR #19
l365: rsbGE R2, R5, R2, ROR #27
l366: rsb R1, R1, R5, ASR R1
l367: rsbs R14, R11, R9, LSR #17
l368: rsbCC R14, R10, R6, RRX 
l369: rsbNEs R8, R7, R9
l370: rsbs R10, R0, R9, LSR #14
l371: rsbPLs R6, R11, R0
l372: rsbGE R6, R12, #752
l373: rsbEQs R6, R10, R1, ROR #28
l374: rsbHIs R7, R7, R12, ROR R8
l375: rsb R12, R1, R4, LSR R14
l376: rsbHIs R2, R0, R1, ASR #5
l377: rsbPLs R4, R14, R10, LSL #17
l378: rsbGT R8, R2, R1, ROR #23
l379: rsbNEs R1, R3, #16
l380: rsbCCs R14, R6, R3
l381: rsbCCs R6, R14, R3, ROR #25
l382: rsbLE R10, R1, R9, RRX 
l383: rsbs R6, R3, R12
l384: rsbLEs R6, R2, R6
l385: rsbs R11, R9, R11, LSR #2
l386: rsbEQ R4, R7, R12, LSR #29
l387: rsb R12, R1, R14
l388: rsb R11, R10, #1073741868
l389: rsbEQs R6, R10, #100352
l390: rsbPL R14, R2, R7, ASR #0
l391: rsbs R11, R12, R6, LSR R1
l392: rsb R2, R15, #950272
l393: rsbCC R4, R8, R7, ASR #6
l394: rsbCC R0, R11, R7, LSR R10
l395: rsbs R0, R8, R9, LSL R4
l396: rsbLTs R14, R9, R10, LSL #28
l397: rsbCCs R8, R4, R15, ASR #29
l398: rsb R12, R9, R9, LSR #29
l399: rsbNE R0, R6, R1, ROR R8
l400: rsbs R7, R15, #3664
l401: rsbCSs R9, R14, R3
l402: rsb R6, R1, R11, ROR #27
l403: rsbs R1, R0, R11, RRX 
l404: rsb R1, R2, R7, RRX 
l405: rsb R2, R8, R11, LSR #15
l406: rsb R0, R1, R5
l407: rsbs R2, R15, R3
l408: rsbCCs R9, R1, R6
l409: rsbEQs R0, R1, #9664
l410: rsbCSs R9, R9, #4352
l411: rsbGE R4, R7, #134217730
l412: rsb R11, R2, #12
l413: rsbPL R4, R3, #1952
l414: rsbMI R9, R2, R1, RRX 
l415: rsbVC R7, R6, R14
l416: rsbLSs R14, R9, #190840832
l417: rsbCC R4, R5, #1073741883
l418: rsb R3, R8, R5, LSL #4
l419: rsbLT R9, R5, R11, LSL #4
l420: rsbs R9, R3, R0, LSR R11
l421: rsbMIs R1, R1, R5, RRX 
l422: rsb R6, R3, R11, ROR #30
l423: rsbs R9, R6, R9
l424: rsbCCs R2, R9, R7, ROR #29
l425: rsbGTs R7, R7, R1
l426: rsbs R8, R11, #11328
l427: rsbPL R5, R7, R4, ROR R6
l428: rsbMIs R9, R4, R7
l429: rsbLE R4, R11, R8, ASR #23
l430: rsbEQs R14, R1, R2, LSL R14
l431: rsbCC R9, R5, R3, RRX 
l432: rsbLE R6, R10, #847872
l433: rsbLTs R2, R5, R9, ROR R3
l434: rsbs R11, R15, R15
l435: rsbEQs R6, R6, #696254464
l436: rsbVC R3, R7, R15, LSL #26
l437: rsbs R3, R7, R14
l438: rsbGTs R14, R5, R0, ASR R6
l439: rsbPL R2, R6, R14, LSL #0
l440: rsbCS R9, R2, R9, ASR R1
l441: rsbNEs R1, R0, #5373952
l442: rsbGE R14, R4, R3
l443: rsb R4, R4, R15
l444: rsb R8, R15, R1, ASR #11
l445: rsbEQ R4, R1, R7
l446: rsbLE R12, R14, R14
l447: rsb R11, R3, R7
l448: rsb R7, R7, R7
l449: rsbMIs R9, R2, R15, RRX 
l450: rsbs R5, R5, #-1207959550
l451: rsbEQs R11, R5, R2, ROR R6
l452: rsbMIs R3, R1, R9
l453: rsbCC R3, R11, R10, RRX 
l454: rsbs R8, R3, #8126464
l455: rsbVSs R6, R12, R12
l456: rsb R2, R15, R14, RRX 
l457: rsb R3, R6, R14, LSR #14
l458: rsb R7, R0, R7, RRX 
l459: rsbEQs R7, R2, #622592
l460: rsbLS R14, R5, #272
l461: rsbEQs R0, R10, #14848
l462: rsbLE R2, R10, #224
l463: rsbVCs R3, R8, R8, ASR #10
l464: rsb R8, R9, R9, LSL R6
l465: rsbVC R12, R12, #27136
l466: rsbLE R6, R8, R6, ASR #20
l467: rsbLEs R8, R15, #754974720
l468: rsbs R2, R1, R1, ROR R6
l469: rsbNE R5, R11, R12, ASR R8
l470: rsbNEs R4, R4, R1, LSL R14
l471: rsb R2, R10, R7
l472: rsbEQs R4, R3, R11
l473: rsb R6, R0, R2
l474: rsb R11, R10, R1
l475: rsb R0, R0, #13828096
l476: rsbGT R7, R14, R14, LSL R3
l477: rsbs R9, R8, #81
l478: rsbVCs R11, R12, R8, LSR R6
l479: rsbCC R2, R5, R7, ASR R2
l480: rsbLE R7, R12, R9, ROR R11
l481: rsbLTs R12, R3, R5
l482: rsbCSs R8, R4, #128
l483: rsb R4, R5, R4
l484: rsbs R5, R5, R0, RRX 
l485: rsbs R2, R6, R5, LSR R6
l486: rsbCC R1, R1, R11, RRX 
l487: rsbs R6, R9, R11, ASR #11
l488: rsbEQs R8, R9, R6, RRX 
l489: rsbVCs R11, R15, R1
l490: rsbLTs R0, R15, #83886080
l491: rsb R4, R3, R14, ROR #25
l492: rsbNEs R4, R8, R11, LSR R11
l493: rsbPLs R11, R3, R0, ROR #26
l494: rsb R7, R4, R12, LSL R11
l495: rsb R1, R0, R4
l496: rsbCS R9, R5, #13504
l497: rsbs R0, R3, R11
l498: rsbNEs R6, R12, R11, LSR R14
l499: rsbCS R11, R12, R12
l500: rsb R9, R14, R15, LSR #19
l501: rsbs R8, R2, R10, LSL R0
l502: rsbCC R14, R5, R7
l503: rsbs R14, R15, R4, RRX 
l504: rsbs R5, R5, #1073741829
l505: rsbCS R11, R0, R11, ROR #20
l506: rsbVC R1, R0, R14
l507: rsbs R1, R2, #-1677721600
l508: rsb R10, R15, #22
l509: rsbs R11, R10, #21504
l510: rsbVSs R7, R5, #8912896
l511: rsbCS R11, R1, R11, RRX 
l512: rsbLTs R1, R4, R14, LSL R4
l513: rsbs R4, R9, R4, RRX 
l514: rsb R1, R4, R12
l515: rsbCC R11, R6, R4, ROR #14
l516: rsb R14, R4, R5
l517: rsbHIs R1, R1, #1342177295
l518: rsb R10, R8, R14, ROR R11
l519: rsb R2, R10, R12, RRX 
l520: rsbMIs R12, R10, #9175040
l521: rsbs R7, R10, R3, RRX 
l522: rsbLSs R9, R2, R9, RRX 
l523: rsbs R2, R15, #20224
l524: rsb R8, R10, R7, LSR R12
l525: rsb R3, R10, R7
l526: rsbCCs R1, R8, R15, ROR #30
l527: rsbs R1, R4, R11
l528: rsbs R7, R10, R7, RRX 
l529: rsbs R1, R14, #223
l530: rsbs R6, R11, #7424
l531: rsbs R3, R2, R2
l532: rsbs R4, R10, R5
l533: rsbHI R14, R15, #-805306356
l534: rsbMI R9, R11, R11
l535: rsbGTs R1, R11, R4, RRX 
l536: rsb R3, R7, R6
l537: rsbs R8, R3, R14
l538: rsbMI R9, R5, #60416
l539: rsbCSs R3, R11, R2
l540: rsbs R4, R3, R14
l541: rsbCS R0, R10, R7, ASR #30
l542: rsbMIs R1, R2, R2
l543: rsbs R10, R7, R1
l544: rsbs R14, R10, R9, ROR #21
l545: rsbLE R7, R3, R12
l546: rsbs R7, R4, R12
l547: rsbLE R9, R15, R2, RRX 
l548: rsb R8, R5, R9, LSR R3
l549: rsbs R3, R8, R8
l550: rsb R14, R3, R5, ASR #16
l551: rsb R4, R5, #-1509949440
l552: rsbs R11, R3, R11
l553: rsbLT R8, R5, R1, LSL #11
l554: rsbs R1, R10, #552
l555: rsb R12, R6, R14, ROR R3
l556: rsbs R8, R5, R9, ASR R10
l557: rsbLT R14, R3, R3, RRX 
l558: rsb R1, R9, R5, LSL R14
l559: rsbPLs R5, R6, R12, ASR #13
l560: rsbGTs R10, R3, R0
l561: rsbCSs R12, R7, R11, ROR R1
l562: rsbGT R2, R14, #47185920
l563: rsb R2, R4, R9, LSL R10
l564: rsbCS R4, R1, R3
l565: rsbLE R3, R6, R4, RRX 
l566: rsbs R4, R10, #-2130706432
l567: rsbs R7, R11, R10, LSL #1
l568: rsbGE R10, R4, R6, ROR #11
l569: rsb R4, R6, R11, ROR R0
l570: rsbs R0, R4, R14
l571: rsbs R10, R9, R15
l572: rsbEQs R12, R5, #13631488
l573: rsbs R4, R11, #-1040187392
l574: rsbCCs R7, R14, R3, LSR R9
l575: rsb R12, R4, R5, LSL R7
l576: rsbs R2, R10, #832
l577: rsbLSs R9, R10, R8, LSR R11
l578: rsbs R8, R11, R6, LSR R12
l579: rsbVSs R2, R5, R8
l580: rsbMI R4, R11, R9, ASR #5
l581: rsbs R0, R15, #239616
l582: rsbs R0, R3, R9
l583: rsb R10, R0, R0, LSR R14
l584: rsb R4, R1, R1, LSL #6
l585: rsbEQs R12, R14, R14, ASR #17
l586: rsbs R1, R12, #1040187392
l587: rsbHI R0, R9, R9
l588: rsb R8, R4, R3, LSR #3
l589: rsb R11, R0, R8, ASR R12
l590: rsbEQs R5, R5, R15
l591: rsbCSs R12, R1, R10, LSL R2
l592: rsbEQ R9, R12, R8, ROR R7
l593: rsbs R9, R4, R10, ROR #8
l594: rsb R14, R4, R7, LSR R6
l595: rsbMIs R2, R4, #1008
l596: rsb R7, R7, R10
l597: rsbs R4, R8, R2, RRX 
l598: rsbHIs R7, R6, #6912
l599: rsbs R4, R11, R0, ROR #4
l600: rsb R10, R1, R0
l601: rsb R0, R2, #59648
l602: rsbLS R0, R4, R8, ASR R1
l603: rsbs R2, R7, R3, LSR #15
l604: rsbs R2, R0, R2, LSR R14
l605: rsbMI R12, R5, #29952
l606: rsbs R7, R4, #241664
l607: rsbHIs R1, R0, R1
l608: rsbCSs R6, R12, R9, RRX 
l609: rsbEQ R12, R7, R1, LSR R4
l610: rsbCS R2, R15, R1, LSL #28
l611: rsbPL R14, R0, R0, RRX 
l612: rsb R12, R4, R1
l613: rsb R8, R0, R14, RRX 
l614: rsbLE R11, R15, #41943040
l615: rsb R7, R1, R5, ROR R0
l616: rsb R2, R12, R5
l617: rsbVC R12, R6, R0
l618: rsbNE R12, R12, R11
l619: rsbHIs R6, R3, R6
l620: rsbLS R1, R7, R11, LSR #12
l621: rsb R2, R3, R14, LSL R10
l622: rsbGT R9, R6, R8, LSL R6
l623: rsb R9, R0, R2
l624: rsbNE R8, R6, R2, ASR #10
l625: rsbs R4, R7, R9
l626: rsbEQ R2, R5, R11, LSL #2
l627: rsb R3, R4, #11796480
l628: rsbHIs R11, R0, #11136
l629: rsbVC R4, R0, R14, RRX 
l630: rsb R1, R7, R11
l631: rsbCCs R10, R15, R8
l632: rsbCS R10, R4, #218
l633: rsbLS R2, R6, R2
l634: rsbLE R5, R5, R8, LSL #31
l635: rsbs R9, R8, R5, ASR R9
l636: rsbHI R3, R5, #-1308622848
l637: rsbMIs R9, R9, R8, LSL #20
l638: rsbs R1, R10, #9600
l639: rsbGT R14, R14, #1342177295
l640: rsb R11, R5, R5, RRX 
l641: rsb R12, R2, R4, RRX 
l642: rsb R2, R7, #1073741877
l643: rsbs R7, R11, R0, ROR #1
l644: rsbLT R3, R7, #-2113929216
l645: rsbLTs R14, R14, R1, LSR R5
l646: rsbLE R11, R12, #-134217725
l647: rsbCS R12, R15, R14
l648: rsbCCs R11, R5, #805306376
l649: rsbVS R1, R12, R0, LSR #14
l650: rsbs R4, R14, R4
l651: rsbEQs R7, R6, #1342177280
l652: rsbHIs R6, R14, #33816576
l653: rsb R1, R14, #-83886080
l654: rsbEQ R10, R5, R3, LSL #31
l655: rsbMIs R12, R5, R14
l656: rsbCC R6, R11, R11
l657: rsbEQ R4, R1, R7, LSR #14
l658: rsbLEs R0, R2, R12, LSR R5
l659: rsbGE R6, R1, R9, LSL #20
l660: rsbLS R11, R12, R11
l661: rsbMI R9, R9, R15
l662: rsb R1, R15, R8
l663: rsbs R10, R12, R14
l664: rsbGT R9, R5, R11, ASR R4
l665: rsbs R11, R7, R6, ASR R10
l666: rsb R8, R4, R2, ROR R6
l667: rsbEQs R14, R11, R1, LSL #3
l668: rsbs R8, R4, R1, LSL #6
l669: rsb R12, R2, R3
l670: rsb R10, R10, R14, LSR #3
l671: rsbGE R2, R2, R6, LSL #18
l672: rsb R8, R11, R0, RRX 
l673: rsbGE R7, R8, R11, LSL #28
l674: rsbEQ R4, R7, #507904
l675: rsbs R3, R6, R0, ASR R5
l676: rsbLT R3, R2, R14, LSR R10
l677: rsb R7, R5, #17825792
l678: rsb R6, R9, R1
l679: rsbPL R3, R10, #44
l680: rsbNEs R0, R12, #102
l681: rsb R14, R2, R7
l682: rsbLT R11, R9, #8640
l683: rsbs R8, R10, R5, LSL #29
l684: rsbPL R1, R7, R0, ASR R2
l685: rsbHIs R6, R14, R6, LSL R2
l686: rsbHIs R8, R2, R0, LSR #2
l687: rsbCS R8, R5, R15, RRX 
l688: rsbs R8, R14, #-1073741761
l689: rsbGE R7, R2, R8
l690: rsbLSs R2, R5, #14592
l691: rsbs R7, R0, #69632
l692: rsb R10, R1, R2, ROR #29
l693: rsbGEs R2, R14, R2, LSR R0
l694: rsbGE R8, R11, R4, ASR R2
l695: rsbs R10, R12, R2
l696: rsbEQ R4, R14, R15, ASR #7
l697: rsb R8, R10, R1, ROR #19
l698: rsbLS R3, R3, R14, RRX 
l699: rsbLTs R7, R9, #939524096
l700: rsbNEs R8, R12, #2013265920
l701: rsbCSs R11, R1, R10
l702: rsbGE R5, R3, R0
l703: rsbVS R10, R10, R6, ROR R1
l704: rsbEQs R4, R11, R1
l705: rsbLEs R2, R12, R1, LSL #11
l706: rsbMIs R11, R5, R15, RRX 
l707: rsbLEs R6, R12, R1, LSL #21
l708: rsb R14, R14, R9, RRX 
l709: rsb R4, R1, R2
l710: rsb R3, R1, R6, ROR #16
l711: rsbGT R14, R8, R1, LSR #26
l712: rsbs R10, R11, R1, ROR R8
l713: rsbLSs R6, R2, R0
l714: rsbPL R14, R1, #721420288
l715: rsbGT R4, R8, #654311424
l716: rsbCS R0, R8, #21233664
l717: rsb R5, R7, R2, LSL #11
l718: rsbHIs R12, R8, R14, RRX 
l719: rsbs R0, R9, R4, ROR #11
l720: rsbMI R7, R5, R6
l721: rsbs R6, R5, #659456
l722: rsbLT R2, R10, R12, ROR R8
l723: rsbEQ R9, R6, R8
l724: rsbEQs R9, R5, R2, LSR R0
l725: rsbGE R4, R14, #1073741868
l726: rsbLE R14, R2, R14, RRX 
l727: rsbEQ R2, R15, R0
l728: rsbGEs R0, R11, R7, LSL R12
l729: rsbCC R2, R9, R1, LSL R11
l730: rsbs R14, R8, R7
l731: rsbCS R6, R11, R2, LSL #14
l732: rsbCCs R1, R7, R6, LSL #17
l733: rsbLT R1, R11, R11, ASR R0
l734: rsbMIs R7, R15, R4, RRX 
l735: rsbCS R10, R1, #11200
l736: rsbCC R5, R5, R1, ROR R6
l737: rsbLSs R8, R12, #140
l738: rsbHI R4, R0, R10
l739: rsbHI R12, R4, R10, ASR #23
l740: rsbLE R2, R15, #32
l741: rsb R11, R11, R9, ASR #5
l742: rsbs R11, R6, #16128
l743: rsbs R5, R8, R3, LSR #0
l744: rsbPL R14, R5, #776
l745: rsbCCs R0, R6, R7, RRX 
l746: rsbEQs R2, R15, #58195968
l747: rsbPLs R10, R5, #2719744
l748: rsb R1, R2, #11927552
l749: rsbs R3, R12, R6, LSR #21
l750: rsb R2, R10, R1, LSR #7
l751: rsbHI R4, R11, R4, ROR R2
l752: rsbs R7, R6, #688128
l753: rsb R11, R2, R10
l754: rsbEQ R2, R7, #9216
l755: rsb R0, R4, R5
l756: rsbs R10, R5, #1966080
l757: rsb R8, R7, R7, LSL R11
l758: rsbLT R14, R8, R7, RRX 
l759: rsbLEs R3, R9, R4, ASR R6
l760: rsbCC R14, R4, R11, RRX 
l761: rsbCCs R6, R9, R8
l762: rsbGTs R5, R12, #2480
l763: rsbPLs R10, R0, R5, LSL #4
l764: rsb R2, R6, R11, LSL #16
l765: rsbHI R8, R9, R15
l766: rsbVC R7, R1, R2, RRX 
l767: rsbCCs R8, R3, R1, LSL R10
l768: rsb R1, R12, R5, LSR #22
l769: rsb R10, R2, R8
l770: rsbs R5, R10, R11
l771: rsbLSs R4, R15, R7
l772: rsbEQ R12, R2, R5
l773: rsbs R9, R10, R2, ROR #15
l774: rsb R6, R7, R14, ASR #2
l775: rsbs R4, R11, #10112
l776: rsbMIs R14, R9, R11, RRX 
l777: rsbs R3, R5, R8, ROR #18
l778: rsbGT R1, R0, R0, RRX 
l779: rsb R1, R5, R15, RRX 
l780: rsbHIs R2, R9, R14, ASR R14
l781: rsb R11, R6, R10, ROR #5
l782: rsbHI R6, R1, R8
l783: rsbs R2, R7, R6
l784: rsb R10, R7, R8, LSL #10
l785: rsbLE R3, R6, R0
l786: rsbLEs R1, R3, #-1342177278
l787: rsb R7, R8, R10, ASR R0
l788: rsbs R2, R4, R7, ASR R5
l789: rsb R7, R2, #2621440
l790: rsbHIs R14, R10, R4, ROR R7
l791: rsbLT R4, R5, R6, RRX 
l792: rsbs R5, R4, R2
l793: rsb R4, R15, R8
l794: rsbs R1, R3, #-268435453
l795: rsbLSs R8, R6, #606208
l796: rsbLSs R4, R14, R10, ASR R4
l797: rsb R2, R2, #76546048
l798: rsbVC R8, R0, R8, RRX 
l799: rsb R9, R0, R11, RRX 
l800: rsbNEs R2, R10, #1308622848
l801: rsbLTs R8, R3, R3, LSL #19
l802: rsbVCs R4, R2, R4, LSL R1
l803: rsb R9, R11, R8, ASR R11
l804: rsb R12, R15, R1, ASR #31
l805: rsb R2, R7, R12
l806: rsbLE R8, R5, R3
l807: rsbLSs R6, R6, R12
l808: rsbs R7, R12, R8
l809: rsbs R14, R3, R1
l810: rsbLE R10, R4, R11, LSL #13
l811: rsbEQ R14, R8, #3391488
l812: rsbVC R5, R4, #128
l813: rsbVSs R0, R3, #994050048
l814: rsbLE R3, R0, #-788529152
l815: rsbs R4, R1, R3, LSL #14
l816: rsb R9, R7, #208896
l817: rsbGT R7, R12, #65273856
l818: rsbGE R7, R11, R3
l819: rsbs R2, R9, #179306496
l820: rsbs R8, R15, R15
l821: rsb R9, R15, #54263808
l822: rsbNEs R7, R11, #1004
l823: rsb R5, R10, #3948544
l824: rsbVC R11, R7, R11
l825: rsbHI R2, R9, R2, RRX 
l826: rsbs R12, R9, R11, RRX 
l827: rsbLEs R2, R6, #768
l828: rsbLT R2, R10, R4, ASR R2
l829: rsbs R3, R0, R0, LSL #28
l830: rsbs R7, R11, R7, ASR #14
l831: rsbHIs R12, R0, R0, RRX 
l832: rsbNEs R9, R12, R15
l833: rsbs R11, R10, R1, LSL R8
l834: rsbGTs R1, R4, #28672
l835: rsbVSs R0, R14, #133169152
l836: rsbCC R4, R6, R7, LSR #19
l837: rsbs R6, R14, R7, LSR #19
l838: rsbCS R4, R0, #10944
l839: rsbCSs R8, R7, R1
l840: rsbs R9, R1, R1, RRX 
l841: rsbHI R14, R7, #536870922
l842: rsbMIs R14, R9, #452
l843: rsbMIs R3, R3, #226304
l844: rsbs R9, R2, R9, LSR R8
l845: rsbHI R3, R7, #1610612747
l846: rsb R2, R11, #2352
l847: rsbPL R6, R10, R8, ROR #16
l848: rsbEQ R10, R9, R1
l849: rsbCCs R1, R7, R12, LSL R8
l850: rsbGT R5, R0, R10, RRX 
l851: rsbMIs R14, R12, R9, RRX 
l852: rsbPLs R5, R12, R8, LSR #14
l853: rsbEQs R10, R6, R15
l854: rsbGT R12, R2, R8, ROR #23
l855: rsbEQs R2, R4, R2
l856: rsbs R11, R10, #2080374787
l857: rsbs R14, R2, R3, LSL R6
l858: rsbCC R5, R2, #192
l859: rsbLT R12, R2, R7, LSR R10
l860: rsbHIs R11, R5, #-1073741822
l861: rsbLTs R14, R0, R12
l862: rsbPL R14, R3, R12
l863: rsbGEs R14, R15, #268435471
l864: rsbNEs R10, R0, R2, ROR R9
l865: rsbs R0, R0, R11, LSR R3
l866: rsb R4, R2, #1408
l867: rsbs R14, R8, #1152
l868: rsb R14, R4, R9
l869: rsbCCs R12, R8, R14, LSR R2
l870: rsbHIs R11, R2, R9, ROR R12
l871: rsbs R6, R1, #300
l872: rsbPLs R8, R6, R6
l873: rsbVSs R6, R12, R9
l874: rsbLS R7, R5, R1
l875: rsbs R11, R2, R14, RRX 
l876: rsbEQ R10, R6, #1073741866
l877: rsb R1, R7, R3
l878: rsbVCs R6, R6, R2
l879: rsb R1, R3, R3, RRX 
l880: rsbPL R5, R14, R2
l881: rsb R0, R1, R4, RRX 
l882: rsb R5, R10, R9
l883: rsb R11, R14, R3
l884: rsbHIs R4, R12, #149
l885: rsbLE R3, R15, R3
l886: rsb R11, R0, #-1342177280
l887: rsbs R0, R6, R12, ASR #20
l888: rsbHI R12, R1, R1
l889: rsbs R8, R8, R15
l890: rsbLTs R5, R7, R14, ROR #12
l891: rsb R14, R0, R6, LSL R0
l892: rsbVSs R9, R12, #121856
l893: rsbGTs R7, R3, R5
l894: rsbs R0, R11, R4
l895: rsb R11, R11, R11, ASR R7
l896: rsbGT R9, R3, R4
l897: rsb R7, R7, R1, ASR R6
l898: rsbNEs R5, R12, R5, RRX 
l899: rsbPLs R4, R6, R5, LSR #10
l900: rsbLEs R9, R5, R2, ROR R3
l901: rsb R7, R12, R4
l902: rsbLE R14, R0, R12, ROR R9
l903: rsbMIs R3, R10, R14
l904: rsbNE R9, R2, R8, RRX 
l905: rsb R0, R9, R3, ROR R7
l906: rsbs R10, R10, R14, ASR R9
l907: rsbLS R6, R7, R1
l908: rsb R5, R11, #1376
l909: rsb R4, R12, R5, LSL #4
l910: rsbNE R1, R8, R5
l911: rsb R5, R2, R10, ASR #28
l912: rsb R10, R12, R3, RRX 
l913: rsbs R12, R6, R2, RRX 
l914: rsb R8, R0, R12, LSL R12
l915: rsbs R0, R5, R6
l916: rsbVSs R0, R14, #-1308622848
l917: rsbs R9, R3, #58880
l918: rsbMIs R9, R15, R7
l919: rsbs R14, R3, #9216
l920: rsbCSs R0, R5, #-67108862
l921: rsbCC R11, R4, R14, ROR #30
l922: rsbs R3, R5, #536870922
l923: rsb R14, R6, R8
l924: rsbEQ R10, R3, R7, RRX 
l925: rsbNEs R4, R6, #150994944
l926: rsbLE R9, R12, R0
l927: rsbs R3, R3, #10176
l928: rsbEQs R5, R4, R1, ASR R0
l929: rsbs R6, R6, R10
l930: rsbLS R12, R11, R0, LSR R7
l931: rsbs R5, R12, R14, ROR #25
l932: rsbs R7, R7, R6, LSR #11
l933: rsbs R10, R0, #197132288
l934: rsb R1, R5, #7077888
l935: rsbs R12, R2, R10
l936: rsbVS R4, R9, R14, ROR R5
l937: rsbEQs R10, R7, R10, LSL R10
l938: rsbCSs R2, R3, #2818048
l939: rsb R11, R1, #331350016
l940: rsbHIs R1, R0, R12, ROR R14
l941: rsbLEs R5, R10, R2, RRX 
l942: rsb R5, R5, R0, RRX 
l943: rsbLSs R8, R9, R0
l944: rsbs R12, R5, R5, LSL R8
l945: rsbLE R1, R9, R5, LSR #13
l946: rsb R1, R4, R5
l947: rsb R2, R3, R5
l948: rsbGE R9, R5, R12, ASR #17
l949: rsbs R2, R2, R0
l950: rsbVCs R12, R0, R12, RRX 
l951: rsbHIs R7, R3, R4, LSL #4
l952: rsbs R9, R11, R11, RRX 
l953: rsbHIs R12, R1, R0
l954: rsbMIs R14, R1, R10, ASR R10
l955: rsbHI R4, R8, R11, LSL #6
l956: rsbVC R0, R0, R5, ASR #0
l957: rsbVSs R11, R9, R8, ROR #21
l958: rsbCS R2, R7, #4128768
l959: rsbHI R7, R7, R2
l960: rsb R11, R14, #204800
l961: rsbs R1, R2, R2, ROR R0
l962: rsb R4, R12, R4
l963: rsbLSs R10, R15, R3, LSR #13
l964: rsbLTs R5, R0, #-2147483639
l965: rsb R3, R12, R11, RRX 
l966: rsb R0, R9, R4, LSR #12
l967: rsbHI R12, R7, #49664
l968: rsbHI R11, R1, R6, ASR R6
l969: rsbCC R4, R11, R8, ASR #9
l970: rsbCS R0, R0, R0, ASR #16
l971: rsbs R3, R8, #1027604480
l972: rsbGTs R3, R2, R2
l973: rsbs R3, R12, #10223616
l974: rsbCC R11, R4, R12, LSR #27
l975: rsbs R3, R8, R10
l976: rsbVCs R9, R2, R12, ASR #8
l977: rsbCCs R9, R8, R11, ROR #8
l978: rsbCS R5, R10, R7, ROR #23
l979: rsbs R2, R3, #144
l980: rsbVC R10, R6, R0, ROR #19
l981: rsbGE R6, R1, R0
l982: rsbGT R11, R7, #671088641
l983: rsbMI R7, R1, R14
l984: rsbEQ R8, R1, R10, LSL #22
l985: rsbVCs R2, R7, R6, RRX 
l986: rsbHI R9, R2, R7, LSR R2
l987: rsbPLs R5, R10, R2
l988: rsbVSs R1, R6, #3473408
l989: rsbLEs R8, R6, #-1677721600
l990: rsb R12, R1, R5
l991: rsbs R0, R12, R15, ASR #0
l992: rsbVSs R11, R11, R6, LSR #3
l993: rsbGEs R2, R5, #-1879048191
l994: rsbVS R6, R6, R11, ASR R2
l995: rsbVC R14, R3, R1, ASR #9
l996: rsb R14, R4, R8
l997: rsb R11, R5, #233
l998: rsbs R0, R1, #246784
l999: rsbNE R1, R8, R1, ASR #9
l1000: rsbGTs R6, R2, R12
end: b end

