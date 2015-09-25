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
val1: .word 2239534661
next1:ldr R2, val2
b next2
val2: .word 640686706
next2:ldr R3, val3
b next3
val3: .word 3117384940
next3:ldr R4, val4
b next4
val4: .word 2990548412
next4:ldr R5, val5
b next5
val5: .word 3152013375
next5:ldr R6, val6
b next6
val6: .word 1124794717
next6:ldr R7, val7
b next7
val7: .word 1949244017
next7:ldr R8, val8
b next8
val8: .word 1917974358
next8:ldr R9, val9
b next9
val9: .word 3533501250
next9:ldr R10, val10
b next10
val10: .word 217383857
next10:ldr R11, val11
b next11
val11: .word 1685571773
next11:ldr R12, val12
b next12
val12: .word 2955088509
next12:ldr R14, val14
b next14
val14: .word 1423656095

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 3593603056
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 2304983589
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3499452935
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 1955636060
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 3556391279
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 2417968359
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 3581759519
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 313431485
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 52961927
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 121236456
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 2642463528
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 145482001
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 2352740387
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 601778574
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 645157926
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 3025913237
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 2649484067
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 3604011068
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 1857710865
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 1083847068
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 4047148527
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: bicMIs R9, R5, R14, RRX 
l2: bicLT R0, R4, R10, ROR R2
l3: bicHIs R0, R1, R7, RRX 
l4: bic R12, R4, #33554432
l5: bicEQs R14, R8, #1879048195
l6: bicGE R7, R9, R14
l7: bicGEs R1, R3, R2
l8: bicGEs R14, R2, R0, LSR #8
l9: bicGTs R1, R11, #738197505
l10: bic R10, R10, R3, LSL R7
l11: bics R5, R15, R9
l12: bicLSs R0, R15, R11, ASR #5
l13: bicEQ R5, R4, R3
l14: bicLS R3, R15, #43
l15: bics R10, R0, R10, ASR R8
l16: bics R9, R15, R8
l17: bicVC R11, R9, R8, ASR #3
l18: bicGE R2, R10, R10
l19: bicLT R6, R11, R4
l20: bicLEs R6, R3, R5, LSR #29
l21: bic R1, R10, R6, ASR R1
l22: bicLEs R0, R10, #85983232
l23: bic R2, R10, #278528
l24: bicLT R6, R8, R10, LSL R11
l25: bicLE R9, R9, R3, ASR R1
l26: bicNE R11, R0, R3, RRX 
l27: bicEQ R3, R9, R9, ASR #6
l28: bic R7, R9, #3584
l29: bics R4, R2, R9
l30: bicMI R6, R2, R3
l31: bic R8, R2, R2, ROR #15
l32: bicHI R5, R12, #536870912
l33: bics R3, R10, R11, LSL #26
l34: bicLT R8, R10, R1, RRX 
l35: bicGE R6, R6, R12, ROR R7
l36: bic R12, R12, #1296
l37: bicGE R6, R14, R11, ASR R6
l38: bics R12, R3, R7, ROR R3
l39: bic R9, R14, R15
l40: bicLT R6, R0, R10
l41: bicCCs R8, R1, R1
l42: bics R0, R9, #256901120
l43: bics R0, R8, #-1140850688
l44: bics R9, R2, R15, LSL #17
l45: bic R11, R14, R14, LSR #2
l46: bic R0, R12, R10
l47: bicNEs R5, R4, R6
l48: bic R0, R10, R4, RRX 
l49: bic R10, R8, R11
l50: bics R7, R14, R14, LSR R3
l51: bicGT R1, R10, #644
l52: bicVSs R5, R11, R8
l53: bicGE R10, R7, R6
l54: bicPL R0, R15, #178176
l55: bicEQ R6, R5, #15728640
l56: bics R2, R1, R7
l57: bicLSs R0, R11, #7552
l58: bicLSs R0, R7, R9, ASR #17
l59: bic R1, R10, R0, LSL R8
l60: bics R7, R10, R8, RRX 
l61: bicLS R1, R5, #40
l62: bicNEs R11, R2, R0
l63: bicCSs R1, R11, R6, ASR R14
l64: bicNEs R8, R6, #2880
l65: bicHIs R5, R15, R7
l66: bicEQs R0, R7, #900
l67: bic R9, R3, #3309568
l68: bic R11, R10, R0, LSL #2
l69: bic R8, R8, R15
l70: bicGTs R2, R10, #2640
l71: bicVCs R0, R10, R14, LSL #18
l72: bicVS R11, R5, R6, RRX 
l73: bicGEs R7, R12, R0, LSR #5
l74: bics R10, R10, R2
l75: bicGTs R1, R9, R5, LSL R1
l76: bicLEs R4, R6, R7, LSL #16
l77: bicMIs R10, R14, R3, ROR #19
l78: bics R8, R7, #3744
l79: bic R4, R11, R14, RRX 
l80: bicEQs R6, R7, #232448
l81: bics R5, R14, R10
l82: bicGEs R12, R5, R12, LSL R9
l83: bicLE R10, R1, R10, ASR R11
l84: bicMI R7, R6, R3
l85: bicHIs R1, R5, R2, ROR #1
l86: bics R2, R0, R6, ASR R12
l87: bicCS R1, R3, R5
l88: bicMIs R3, R9, R12, LSL R11
l89: bicLE R12, R9, R5
l90: bicHI R4, R7, #3136
l91: bicGE R12, R9, R11, RRX 
l92: bicEQ R5, R6, R2, LSL #3
l93: bics R2, R2, #1627389952
l94: bicGT R6, R12, R8
l95: bic R4, R15, R8, LSR #9
l96: bics R0, R6, R3, ROR #24
l97: bics R1, R7, R15
l98: bicGEs R12, R14, R12, RRX 
l99: bicVCs R6, R10, R14
l100: bicLSs R0, R3, #679477248
l101: bicGT R3, R1, #2928
l102: bicLT R1, R2, R12
l103: bic R3, R4, R12, LSR #28
l104: bicEQs R11, R10, R7, ROR R1
l105: bicLE R5, R11, R4, ROR R12
l106: bic R4, R0, R8, LSR R3
l107: bic R8, R9, R7, RRX 
l108: bic R11, R8, R15, RRX 
l109: bicCCs R4, R6, R3
l110: bics R9, R3, R10, ROR R8
l111: bicPL R8, R5, R7, RRX 
l112: bicLS R0, R11, R11
l113: bicHIs R11, R9, R11
l114: bicPL R0, R1, R15
l115: bics R2, R5, R4, ROR #12
l116: bic R2, R8, #-1879048178
l117: bicLT R5, R8, R11, RRX 
l118: bicMIs R10, R1, R3, LSL #15
l119: bicGTs R6, R2, R0
l120: bicHI R9, R0, R12
l121: bics R12, R8, #7616
l122: bicLEs R7, R15, R3, LSR #31
l123: bicMI R7, R14, #1157627904
l124: bicLEs R14, R10, #4032
l125: bicPLs R5, R14, R1
l126: bic R5, R7, #5056
l127: bic R10, R4, R2
l128: bic R0, R6, R7, RRX 
l129: bicLTs R10, R6, R1, LSL R3
l130: bicGT R5, R4, R10, ASR R14
l131: bics R0, R1, R3
l132: bicCSs R7, R7, R3
l133: bicLE R0, R1, R10
l134: bics R3, R6, R10, LSR R1
l135: bic R9, R5, R12, LSL #5
l136: bics R3, R15, R14
l137: bicMIs R0, R1, #1610612736
l138: bics R7, R6, R6, LSR R7
l139: bicCS R6, R8, #2752
l140: bics R4, R8, R12
l141: bicCC R1, R9, R0, ROR R11
l142: bicMI R1, R6, R10
l143: bic R1, R8, R10
l144: bicPL R0, R10, R9
l145: bic R9, R14, R5
l146: bicEQ R8, R11, R9
l147: bics R8, R12, R3, LSL #8
l148: bic R7, R14, R10
l149: bics R5, R2, R10, LSL #13
l150: bicLS R2, R14, R7, LSL #17
l151: bics R6, R4, R0, ROR #27
l152: bicVSs R4, R0, R9
l153: bics R1, R10, #3080192
l154: bicPLs R5, R14, R2, LSR #24
l155: bic R4, R9, #50432
l156: bic R8, R10, #819200
l157: bicGE R1, R8, R14
l158: bicHIs R2, R3, R1, LSR #2
l159: bicCCs R5, R2, R3, ROR R12
l160: bic R7, R8, #815104
l161: bic R11, R3, R8
l162: bicLE R5, R11, R14, LSR #20
l163: bicHI R4, R11, R10, LSL R1
l164: bicLS R1, R6, R7, ROR #6
l165: bicLS R12, R10, #6619136
l166: bicLTs R10, R10, R6, RRX 
l167: bicHIs R3, R7, R1, RRX 
l168: bicCSs R0, R5, R10, LSR R5
l169: bicGEs R5, R10, R0, LSR R9
l170: bicVC R11, R2, R14, LSR R5
l171: bics R2, R15, R8, LSR #31
l172: bic R2, R12, #-503316480
l173: bicPLs R6, R0, R8, LSR #31
l174: bicVC R7, R7, #209715200
l175: bicCCs R11, R0, R4, LSL #10
l176: bicVSs R1, R2, R7, LSR #16
l177: bicLT R2, R2, R9, LSR R4
l178: bic R7, R1, #28311552
l179: bic R1, R2, R4
l180: bicMIs R5, R12, R3
l181: bics R9, R4, R9, LSR R1
l182: bicLEs R8, R7, R1, ASR #24
l183: bicLT R8, R2, R8
l184: bicGEs R6, R10, R7
l185: bicVC R8, R14, R2, RRX 
l186: bicNEs R14, R2, R4, ASR R4
l187: bicHI R0, R3, R14, ASR R6
l188: bicVCs R8, R2, R7
l189: bic R6, R3, R14, ASR R6
l190: bicLE R11, R0, R6, ASR #13
l191: bicCCs R5, R11, R3
l192: bic R3, R0, R4, RRX 
l193: bicCC R14, R1, R11, ASR #27
l194: bic R0, R11, R9, ROR #21
l195: bics R6, R8, R2, LSR R11
l196: bic R14, R12, R10
l197: bics R1, R5, R2, LSL R0
l198: bic R11, R3, R14
l199: bics R8, R9, R4, ROR R11
l200: bicCCs R8, R5, R5, ROR R10
l201: bicEQ R6, R11, R4, LSR #13
l202: bic R3, R4, R1, ROR R1
l203: bics R8, R8, R3, ROR #13
l204: bic R8, R10, #0
l205: bics R14, R11, R14, RRX 
l206: bicVCs R3, R14, R2, ASR #28
l207: bicVS R8, R7, R5, ROR R14
l208: bic R14, R10, R8, ASR R14
l209: bicEQ R6, R12, R14, ROR #28
l210: bicEQ R3, R10, R2, RRX 
l211: bicLSs R11, R8, R3, LSR R14
l212: bicGE R9, R5, R9
l213: bicLTs R8, R1, R15
l214: bicCS R2, R7, R4
l215: bicMI R1, R5, R0, LSL #10
l216: bicCCs R0, R14, R3
l217: bic R8, R2, R7, ASR R7
l218: bicMI R12, R6, #630784
l219: bic R3, R1, R10, RRX 
l220: bicGTs R14, R1, R12, ASR #25
l221: bics R0, R11, R12
l222: bics R8, R8, R15, LSL #11
l223: bicGT R10, R5, R1
l224: bicCC R5, R9, #75
l225: bics R0, R1, #7274496
l226: bicPL R0, R5, R7, ASR #16
l227: bicVS R2, R15, R8
l228: bic R5, R8, R4, LSR #31
l229: bics R9, R7, R15
l230: bicVS R4, R14, #1056964608
l231: bicEQ R6, R4, R5, LSR R8
l232: bics R1, R3, R10
l233: bicLE R3, R11, #9600
l234: bicPLs R11, R6, #-2147483631
l235: bicVSs R5, R10, R5
l236: bic R3, R4, R1, LSR R1
l237: bic R11, R0, R5
l238: bicNEs R9, R8, R1
l239: bic R12, R10, R4
l240: bicMI R11, R10, R10, LSL R5
l241: bicLEs R12, R1, R12, RRX 
l242: bic R3, R7, R10, ASR R8
l243: bicMIs R1, R8, R6, ROR R3
l244: bicMI R12, R5, R12, LSR #22
l245: bicEQ R10, R6, R15
l246: bic R1, R0, #2000
l247: bics R8, R12, R2
l248: bics R1, R4, R9
l249: bicNEs R1, R9, R3, RRX 
l250: bicLS R6, R3, #66560
l251: bicCSs R7, R11, R12
l252: bicGEs R11, R12, #740
l253: bicGTs R8, R14, #536870912
l254: bic R10, R2, #503808
l255: bic R0, R8, R4, LSL #30
l256: bicMI R10, R14, R10, ASR R11
l257: bicLSs R8, R3, R6, LSR R6
l258: bicCC R4, R6, #150528
l259: bic R2, R15, R6
l260: bicLTs R9, R0, R2, RRX 
l261: bicLT R3, R14, R9, ROR #15
l262: bicVS R9, R12, R2, LSR #12
l263: bicCC R10, R12, R2
l264: bicCSs R10, R10, R11, LSR R2
l265: bics R6, R9, #2621440
l266: bicPLs R3, R3, R0, ASR #5
l267: bics R2, R6, R4, ROR #12
l268: bic R4, R1, R3
l269: bic R7, R3, R3, LSL R1
l270: bicMI R1, R2, R14, RRX 
l271: bicLT R14, R1, R2
l272: bics R11, R2, R12, ROR R14
l273: bic R10, R9, #-1879048177
l274: bicLS R4, R7, R1, ASR #24
l275: bic R4, R2, R9, LSL R2
l276: bicGEs R12, R3, #917504
l277: bic R3, R4, R5, RRX 
l278: bics R3, R9, R12, LSR R11
l279: bicHIs R6, R3, R4, LSR #24
l280: bicVSs R3, R1, #10354688
l281: bicGE R10, R2, R7
l282: bicPL R2, R5, R8
l283: bic R4, R2, R2, LSL R5
l284: bicNE R2, R8, R7
l285: bics R7, R5, R1, ASR R4
l286: bic R4, R8, R5, RRX 
l287: bicCC R6, R11, #692224
l288: bicMIs R5, R11, R12, LSR R4
l289: bic R1, R6, R1, RRX 
l290: bics R7, R4, R11
l291: bicLT R7, R3, #2240
l292: bics R0, R15, R1, RRX 
l293: bicLTs R6, R0, R10, RRX 
l294: bic R9, R6, R3
l295: bic R0, R11, #666894336
l296: bics R7, R10, R11, ASR #29
l297: bic R2, R7, R10
l298: bicMIs R1, R5, #108
l299: bicNEs R0, R15, R11
l300: bicMIs R4, R5, R11, LSL #0
l301: bic R0, R10, #50069504
l302: bicEQs R12, R9, R4, LSL R4
l303: bicVS R4, R0, R12, ROR #19
l304: bic R4, R12, #-2147483593
l305: bic R4, R5, R7, ASR R1
l306: bicLS R7, R6, R3, LSL #28
l307: bicLS R8, R2, R15
l308: bic R11, R10, R8, ROR R12
l309: bicCCs R4, R10, #-1879048187
l310: bics R0, R15, R11, ROR #15
l311: bicHIs R2, R5, R8
l312: bicCC R11, R7, R9
l313: bicVC R3, R0, #12255232
l314: bics R2, R3, R5, RRX 
l315: bics R3, R10, #100663296
l316: bicPLs R12, R5, R11
l317: bics R1, R15, R10
l318: bicPLs R3, R5, #19968
l319: bicCC R9, R4, R11, LSL R8
l320: bic R10, R2, #1610612746
l321: bic R0, R4, #1073741881
l322: bic R7, R10, R2, ROR #19
l323: bicGE R9, R11, R8
l324: bic R1, R14, #1552
l325: bicCCs R10, R7, R3, ROR #31
l326: bicMI R3, R6, R7
l327: bicLTs R0, R1, R0, LSR R4
l328: bicNE R6, R11, #8912896
l329: bicNE R8, R1, R15, LSR #3
l330: bicVCs R6, R12, R7, LSL #5
l331: bicVCs R8, R1, R11
l332: bicGT R12, R12, R3
l333: bicGEs R10, R3, R5, LSL R10
l334: bicLSs R6, R0, R2, LSR #25
l335: bicCC R10, R4, R12
l336: bicEQs R14, R12, #114294784
l337: bic R0, R15, R12
l338: bicCCs R0, R4, R0, RRX 
l339: bic R14, R15, R9
l340: bics R4, R10, R10, LSR R5
l341: bicGT R12, R4, #50331648
l342: bic R11, R1, R0, LSL R2
l343: bics R6, R15, R11, RRX 
l344: bics R2, R14, R6
l345: bic R2, R15, R9, ASR #12
l346: bicCS R9, R4, R2, ROR R14
l347: bic R12, R15, #2336
l348: bicEQs R4, R3, R10
l349: bicVCs R2, R6, R9, RRX 
l350: bicLT R10, R12, #892
l351: bic R3, R14, #3840
l352: bics R5, R7, R9, ROR #25
l353: bics R2, R6, R10, RRX 
l354: bic R6, R5, #835584
l355: bics R9, R12, R2
l356: bics R7, R9, R5
l357: bics R2, R12, R10
l358: bics R10, R8, R14, ROR R4
l359: bicNE R2, R15, R15, RRX 
l360: bicEQs R8, R2, #1392508928
l361: bic R2, R10, R5, LSL #13
l362: bicGE R9, R5, #278528
l363: bicLSs R1, R14, R1
l364: bics R14, R4, #176128
l365: bicNEs R2, R8, #58
l366: bicGT R11, R15, #10747904
l367: bicEQ R10, R14, R9
l368: bics R6, R2, #424
l369: bicVC R3, R14, R15, RRX 
l370: bics R14, R15, #164864
l371: bicHI R3, R15, R3
l372: bicLT R8, R3, #7936
l373: bic R1, R11, #3457024
l374: bics R12, R8, R15, RRX 
l375: bic R2, R6, R8, ROR R2
l376: bicPL R12, R10, #44826624
l377: bic R0, R12, R6, RRX 
l378: bicLT R12, R9, R11, RRX 
l379: bicHI R6, R3, R5, LSR R6
l380: bicCCs R9, R1, R0, ROR R5
l381: bicGT R3, R3, R0, RRX 
l382: bicLEs R14, R5, R3
l383: bics R10, R9, R3
l384: bicCCs R3, R11, #16384
l385: bicPL R12, R3, R15, ASR #11
l386: bics R8, R6, #6912
l387: bicMI R10, R11, #114688
l388: bicCSs R10, R9, R11, RRX 
l389: bic R5, R15, R11, ROR #19
l390: bics R5, R4, R15
l391: bicGTs R5, R3, R2, ROR #12
l392: bicGEs R10, R2, #11993088
l393: bics R9, R3, R0
l394: bicNE R0, R4, R10, LSL #10
l395: bics R2, R9, R2, RRX 
l396: bic R9, R0, R5
l397: bics R3, R4, R5, LSR R9
l398: bics R2, R1, R0
l399: bicGT R1, R9, R14, LSR R6
l400: bicEQs R6, R7, R6, RRX 
l401: bics R4, R4, R8
l402: bics R8, R0, R11, LSR #4
l403: bics R1, R2, #-1073741784
l404: bicPL R7, R12, #14090240
l405: bicGE R10, R0, R2
l406: bics R12, R10, #1392508928
l407: bicHIs R4, R11, R10, LSL R12
l408: bic R3, R12, #1426063360
l409: bicHIs R0, R8, #10485760
l410: bics R0, R6, R7, ROR #30
l411: bicVS R0, R8, R5, LSR #10
l412: bicHI R0, R8, R7, ROR R9
l413: bicVS R7, R1, R11, LSL R12
l414: bicLEs R14, R0, R1
l415: bics R1, R1, R14
l416: bicMIs R0, R3, R11, ASR #4
l417: bicHIs R5, R10, R6, ASR R12
l418: bicCSs R7, R10, R3
l419: bicCC R14, R10, R15, LSR #23
l420: bicCC R12, R14, R12, LSR R10
l421: bicPL R4, R11, R15
l422: bicGT R11, R14, R2
l423: bics R5, R4, R2, LSR R2
l424: bics R10, R1, R12
l425: bics R2, R8, R1, ASR #8
l426: bicEQ R6, R2, R14, ASR #0
l427: bicEQs R12, R6, R2
l428: bicLTs R6, R3, R7
l429: bicEQs R6, R5, R1, ROR #19
l430: bicVCs R6, R11, #1818624
l431: bicEQs R2, R10, R9
l432: bicMIs R9, R15, R7
l433: bics R8, R4, R2, ROR R14
l434: bic R1, R7, R10, ASR #8
l435: bicCC R11, R9, #2496
l436: bicHI R4, R7, R11, LSL R1
l437: bicLSs R6, R0, #-1073741823
l438: bics R12, R8, R9
l439: bicMI R2, R7, R7
l440: bics R12, R5, R7, ASR R11
l441: bicHI R9, R5, R14, LSL R0
l442: bicGT R8, R12, #62976
l443: bicEQs R12, R2, #14286848
l444: bic R7, R8, R12, LSR R6
l445: bic R12, R6, R14, LSR R5
l446: bics R11, R2, R7, ROR R14
l447: bic R5, R9, #1811939330
l448: bicVSs R10, R10, R4, ROR R10
l449: bicGTs R3, R4, R4
l450: bics R4, R3, R5
l451: bicLEs R1, R1, R8, ASR R11
l452: bics R8, R7, R10
l453: bic R2, R9, R7
l454: bicLEs R2, R7, R3, ROR #15
l455: bicEQs R7, R5, R8, ASR R1
l456: bicNEs R2, R8, R6, LSL #21
l457: bicCS R4, R14, R11
l458: bicGEs R6, R11, R6, LSL R14
l459: bicVCs R7, R3, R8, ASR R9
l460: bicMI R8, R1, R9, LSR R9
l461: bicVSs R3, R2, R12
l462: bicLEs R2, R3, R5, RRX 
l463: bicCS R0, R12, R8, ASR #9
l464: bic R0, R5, #-1828716544
l465: bicVS R2, R8, R0, ROR R4
l466: bic R8, R3, R3, LSL #4
l467: bicGEs R14, R4, R4
l468: bicVC R5, R0, R1
l469: bics R6, R0, #44
l470: bic R1, R7, R6, LSL #22
l471: bicMI R2, R5, #1728053248
l472: bics R7, R4, R15
l473: bics R11, R8, R15
l474: bicNEs R2, R6, R6
l475: bicMI R4, R11, R1, ROR R5
l476: bicMIs R10, R11, R9, ASR R7
l477: bicNEs R7, R2, R14
l478: bicPL R10, R6, R0
l479: bicNEs R5, R14, R10, ROR #24
l480: bicMI R9, R2, R7
l481: bicHI R7, R5, R5
l482: bic R6, R12, R6, LSL R2
l483: bicEQs R2, R14, R14, ROR R8
l484: bic R6, R14, R4, ASR #13
l485: bicLTs R1, R1, #208
l486: bicGE R3, R1, R5, ASR #6
l487: bicLEs R3, R2, R9, LSL R5
l488: bicEQs R10, R7, #1792
l489: bicLEs R0, R14, R3, LSL R2
l490: bicHIs R8, R6, R8, LSL #27
l491: bic R12, R1, R4, ASR R2
l492: bics R3, R10, R11, RRX 
l493: bicGT R8, R2, R2, LSR #10
l494: bic R7, R6, R14, ROR R4
l495: bic R14, R11, #244736
l496: bicVS R3, R2, R10, LSL R12
l497: bicVC R7, R7, R7, LSR R14
l498: bics R8, R5, R7, LSL R2
l499: bics R1, R6, #14272
l500: bicLEs R12, R9, #42496
l501: bicVC R12, R10, R0, ASR R2
l502: bics R10, R10, #5570560
l503: bicHIs R2, R7, R10
l504: bic R1, R11, #220
l505: bicLSs R14, R3, R3, ASR R6
l506: bicCS R0, R0, #-587202560
l507: bicLTs R1, R1, #805306374
l508: bicCSs R11, R8, R4, LSL #18
l509: bics R14, R0, R1, LSR R5
l510: bic R0, R3, R3
l511: bics R7, R11, #5760
l512: bicCCs R12, R2, #151552
l513: bic R9, R12, #54272
l514: bicVSs R2, R3, R4
l515: bic R12, R0, R10, ASR #29
l516: bic R14, R10, R14, ASR R4
l517: bic R6, R7, R1
l518: bicNE R4, R12, R14, ROR #6
l519: bics R12, R1, #3866624
l520: bics R5, R12, R1
l521: bicLT R6, R5, R12
l522: bic R7, R3, #10
l523: bicLE R1, R2, R1, ASR R6
l524: bicCCs R8, R15, R4, LSL #17
l525: bics R9, R12, #-1073741791
l526: bicLSs R8, R9, #614400
l527: bicVCs R5, R14, R1, LSR R10
l528: bicLSs R5, R6, R2
l529: bicCSs R6, R4, R3, LSR R4
l530: bicNE R14, R3, R10, ASR #11
l531: bic R8, R3, R8
l532: bics R11, R7, R15
l533: bicNE R4, R5, #1061158912
l534: bicMIs R11, R8, R10, ASR R9
l535: bics R10, R5, R10
l536: bic R9, R7, R4, LSL R11
l537: bics R5, R5, R6, LSL R4
l538: bics R9, R15, #260046848
l539: bics R7, R2, R2, RRX 
l540: bicCC R3, R6, R6, ASR #8
l541: bicNEs R0, R5, R1
l542: bics R0, R3, #102
l543: bicLT R9, R14, #62914560
l544: bicPLs R6, R6, R2
l545: bic R4, R15, R4, ROR #30
l546: bicEQs R3, R10, #2949120
l547: bicCSs R2, R2, R14, RRX 
l548: bicGEs R2, R5, R3
l549: bics R7, R10, R7
l550: bicNE R14, R4, R7, LSL R1
l551: bicLTs R1, R4, R1, LSL #16
l552: bicEQs R2, R8, R3, ASR #20
l553: bic R10, R1, R10, ROR R3
l554: bicNEs R4, R11, R3
l555: bics R3, R9, R7, LSR R11
l556: bic R11, R5, #34078720
l557: bic R14, R7, R8
l558: bicLEs R9, R8, R1
l559: bic R5, R3, R3, RRX 
l560: bicMIs R11, R0, R6, RRX 
l561: bics R14, R3, R15, LSR #3
l562: bicHIs R11, R0, R6, RRX 
l563: bicHI R7, R0, R2
l564: bicNEs R1, R9, R10, LSR #16
l565: bic R14, R5, #164864
l566: bicLT R12, R0, R6, RRX 
l567: bicGEs R12, R15, R11, LSL #7
l568: bics R5, R9, #3424256
l569: bicMIs R12, R7, #944
l570: bicCCs R3, R9, R0, LSL R4
l571: bicLSs R14, R3, R2
l572: bic R1, R0, #3824
l573: bic R14, R2, #31744
l574: bicLT R14, R5, R11, ASR R12
l575: bicLEs R4, R9, R10, LSR R7
l576: bicEQs R12, R15, R6, RRX 
l577: bicEQ R1, R9, R10, LSR #8
l578: bic R8, R14, R15
l579: bicLSs R7, R8, R7
l580: bics R2, R14, R0, ROR #31
l581: bic R11, R5, R0
l582: bic R6, R0, R14
l583: bic R8, R14, R8, RRX 
l584: bicGEs R9, R12, R14, LSL #26
l585: bic R2, R14, R6
l586: bic R2, R11, #57856
l587: bics R11, R5, #40894464
l588: bicLEs R1, R6, R7
l589: bicCS R9, R12, R14, ROR #12
l590: bicCCs R8, R12, R6
l591: bicMI R1, R11, R7, LSR R2
l592: bic R4, R9, R0, ROR #3
l593: bicLT R2, R14, #-1342177280
l594: bicPL R5, R5, R6
l595: bicLEs R0, R1, R6
l596: bic R11, R2, #-1476395008
l597: bicCCs R5, R4, R2
l598: bicCSs R2, R4, #98304
l599: bic R3, R10, #268435460
l600: bicPLs R8, R3, R11, LSL #27
l601: bicLTs R14, R8, #-1073741799
l602: bicGT R2, R0, R1, LSL R9
l603: bicCCs R1, R4, R9, LSL R10
l604: bics R4, R11, #60555264
l605: bics R3, R10, R8, LSR #12
l606: bic R5, R0, R15, ROR #28
l607: bic R2, R10, R8, LSR #25
l608: bicHI R10, R4, R15, ASR #14
l609: bic R6, R10, R9
l610: bicVSs R3, R5, R7, RRX 
l611: bic R5, R15, R14
l612: bics R14, R4, #912
l613: bics R6, R5, R14, LSL R14
l614: bicVS R6, R0, R5, LSL #19
l615: bics R9, R9, R11
l616: bic R6, R11, R2, LSL #19
l617: bicVC R1, R1, R2, ROR #27
l618: bicEQs R4, R12, R8, ASR #11
l619: bics R11, R6, #232
l620: bicVC R1, R5, #3604480
l621: bicLEs R14, R8, R14, LSL #18
l622: bic R8, R14, R5, ROR R6
l623: bics R1, R9, R3, RRX 
l624: bicMI R6, R10, R8, LSL #25
l625: bic R10, R9, R6, ROR #3
l626: bics R4, R6, #14720
l627: bicCS R7, R8, R12
l628: bicGT R11, R14, R1, LSR R14
l629: bicNE R5, R5, #133
l630: bics R5, R9, R0, ASR R2
l631: bics R10, R12, R3, LSR R10
l632: bicCSs R2, R8, R8, LSR R1
l633: bic R5, R2, R8
l634: bicHI R3, R8, R9, ASR R9
l635: bic R9, R15, R11
l636: bicNE R1, R12, R7, ASR R12
l637: bicLSs R12, R11, R9, ROR R0
l638: bicNE R0, R0, R9, LSL #13
l639: bicLT R0, R4, R11, LSL #18
l640: bicGE R5, R1, #0
l641: bicEQs R2, R9, #-1006632958
l642: bic R0, R3, R1
l643: bic R5, R10, R11, LSR R8
l644: bics R5, R14, R6
l645: bicGE R0, R0, #848
l646: bicCS R11, R3, R2
l647: bicMI R14, R7, R3, RRX 
l648: bicLEs R0, R10, R6
l649: bics R14, R7, R4, ROR R0
l650: bicNEs R6, R1, R6, ASR R14
l651: bic R12, R7, #37120
l652: bicVSs R1, R9, R11, ASR R14
l653: bic R14, R6, #212860928
l654: bicCS R4, R8, R14, LSL R8
l655: bicLS R8, R6, R15, LSR #3
l656: bic R3, R2, R6
l657: bicHI R1, R1, R12, LSR R6
l658: bicEQ R4, R12, R6, LSL #12
l659: bic R14, R5, #-67108864
l660: bics R8, R2, R14
l661: bic R4, R2, R9
l662: bicMI R4, R6, R4, LSR R5
l663: bicCCs R2, R3, R8, LSL R11
l664: bicLT R11, R1, R7, LSR R6
l665: bicCC R2, R7, R10
l666: bicVSs R1, R6, R7, ASR R8
l667: bic R1, R12, R15
l668: bics R8, R11, R11
l669: bicVCs R0, R11, #69206016
l670: bicHIs R8, R8, #-1073741781
l671: bicPL R14, R2, R7, LSR R1
l672: bicLT R8, R6, #1703936
l673: bic R3, R15, R7, LSL #27
l674: bicLEs R5, R11, R0, LSL #6
l675: bicLEs R14, R2, R15, RRX 
l676: bicPL R9, R8, R0
l677: bicVSs R7, R9, R7, ASR R8
l678: bicVS R10, R3, R9, LSL R10
l679: bics R12, R8, R1, LSR R7
l680: bicCSs R2, R3, R7, LSR #18
l681: bicVS R7, R15, #7340032
l682: bicHI R7, R7, R6
l683: bicVS R3, R3, R6, ASR #5
l684: bicCC R12, R2, R4, ROR R0
l685: bics R1, R15, #1795162112
l686: bics R2, R1, R14
l687: bicVCs R7, R10, R6, ASR #9
l688: bic R5, R6, R7
l689: bicMIs R11, R12, #724992
l690: bicGTs R0, R10, #16
l691: bicPL R6, R8, R12
l692: bicEQs R6, R9, #1261568
l693: bicPL R10, R14, R3, RRX 
l694: bicCS R0, R2, R8, LSL R9
l695: bicEQs R1, R1, R10
l696: bicLS R4, R6, R11, LSR #24
l697: bicLEs R12, R14, R10, RRX 
l698: bics R6, R5, #385875968
l699: bicLT R5, R7, R8, ROR R3
l700: bics R14, R4, #3031040
l701: bics R12, R10, #960
l702: bicGT R11, R10, R7
l703: bic R7, R9, R4
l704: bicEQs R12, R15, R14, ROR #3
l705: bic R4, R5, R1
l706: bicLE R7, R14, R1, RRX 
l707: bic R3, R2, R15
l708: bicVCs R1, R6, R8, ROR #23
l709: bicLS R4, R6, #647168
l710: bicEQ R2, R0, R8, ASR R7
l711: bicGE R6, R11, #1543503872
l712: bicLSs R0, R1, R4, RRX 
l713: bic R10, R10, R7, LSR R4
l714: bic R12, R5, R10, RRX 
l715: bics R9, R4, R1, LSR #16
l716: bicLS R14, R6, R10, ASR R11
l717: bicVS R10, R8, #1644167168
l718: bicMI R2, R11, R10, ASR R9
l719: bicLTs R5, R3, R6, ASR #26
l720: bics R10, R9, R5, LSR R9
l721: bicPLs R14, R2, R0, ROR R9
l722: bics R9, R12, #8716288
l723: bic R12, R4, R2
l724: bic R6, R3, R3
l725: bicGEs R6, R10, R8, ASR #0
l726: bics R1, R11, R11, LSR #15
l727: bics R4, R4, #42
l728: bicEQs R11, R11, R12, RRX 
l729: bicVCs R11, R5, R14, LSL #11
l730: bicGE R10, R4, R6
l731: bic R4, R10, R5
l732: bics R7, R11, R15
l733: bicPL R7, R14, R0, LSR #7
l734: bicLTs R8, R6, R3, LSL R9
l735: bicLS R8, R3, R2, RRX 
l736: bic R5, R14, R8, ASR R1
l737: bicGTs R9, R10, R10
l738: bicPLs R4, R7, #204800
l739: bicGTs R8, R1, R3
l740: bicVCs R10, R10, R3, RRX 
l741: bicGTs R3, R15, #21760
l742: bics R1, R0, R6
l743: bicLEs R5, R15, R7, RRX 
l744: bic R10, R10, R7, LSL #8
l745: bic R9, R8, #117440512
l746: bicMIs R8, R2, R0
l747: bicVC R1, R0, R11, RRX 
l748: bicVC R14, R10, R15
l749: bicGT R0, R2, R10
l750: bics R9, R9, #14942208
l751: bicPL R10, R5, R4, ASR R2
l752: bicHI R11, R9, R3, RRX 
l753: bics R8, R0, R12, ASR R2
l754: bicVS R12, R1, R1
l755: bic R1, R11, R2, ASR R9
l756: bicGEs R12, R11, #568
l757: bicCS R7, R5, #1671168
l758: bics R0, R15, #645922816
l759: bicLSs R14, R11, R15, ASR #27
l760: bics R9, R15, #400
l761: bics R0, R12, R4
l762: bics R1, R15, R6
l763: bicMIs R12, R3, R11, RRX 
l764: bicLTs R0, R15, R3
l765: bicHI R8, R0, #-100663296
l766: bics R6, R5, #-2147483648
l767: bics R5, R4, R11, ASR R11
l768: bics R0, R11, R5, RRX 
l769: bicVS R10, R1, R11
l770: bics R8, R5, R5, RRX 
l771: bicNE R6, R10, R6, ASR R9
l772: bicNEs R12, R6, #13440
l773: bics R1, R9, #560
l774: bic R5, R7, R7
l775: bicLS R7, R14, R11, ROR #6
l776: bic R5, R12, R11
l777: bicVC R3, R7, #193
l778: bicVSs R2, R11, R1, LSR #25
l779: bicLE R10, R4, #327680
l780: bic R11, R10, R0, ASR #5
l781: bicVC R9, R9, R9, LSL R3
l782: bicEQ R14, R6, R4, RRX 
l783: bic R14, R4, R4, LSL #27
l784: bics R11, R15, #-1979711488
l785: bicLEs R0, R10, R3
l786: bics R3, R12, #-2147483609
l787: bicNE R10, R11, R2
l788: bicNEs R11, R4, R9, ROR R8
l789: bicCSs R2, R15, #327680
l790: bicHI R1, R10, R6, LSL R12
l791: bicGT R1, R0, R0, RRX 
l792: bicHI R7, R5, R7, ROR R10
l793: bicVS R6, R1, R11
l794: bicVC R1, R6, R5
l795: bicCSs R7, R12, R15
l796: bics R11, R14, R11, ROR R5
l797: bicLSs R6, R1, R10, ROR R8
l798: bics R10, R11, R2
l799: bicEQ R9, R8, #139264
l800: bic R10, R2, #859832320
l801: bic R4, R2, R11, ASR R12
l802: bicGT R12, R3, #-2147483633
l803: bic R1, R4, R11
l804: bics R0, R0, #1792
l805: bics R2, R7, R3, ASR R5
l806: bics R14, R10, R2
l807: bic R6, R0, #2752512
l808: bic R14, R2, R14
l809: bicPLs R8, R4, R9, LSR #3
l810: bicLT R11, R7, R10, LSL #7
l811: bics R7, R0, R8, ROR R10
l812: bicLEs R8, R9, R12, LSL #16
l813: bic R11, R6, R5
l814: bicVCs R5, R7, R2
l815: bicLS R2, R0, #1073741843
l816: bic R9, R4, #32512
l817: bicLSs R14, R6, R9, LSR R0
l818: bicEQs R7, R8, R14, LSR R5
l819: bic R8, R9, #-1073741815
l820: bic R5, R4, #8585216
l821: bicGEs R10, R2, R9, LSR R0
l822: bicGT R6, R11, R15
l823: bicEQs R3, R0, R2
l824: bicGE R4, R10, R14, LSL R11
l825: bicGTs R12, R2, #6815744
l826: bicHIs R7, R1, #926941184
l827: bicHI R11, R12, R14
l828: bicGE R4, R7, R3, LSR R1
l829: bicNEs R8, R7, R14, RRX 
l830: bicNE R5, R2, R1, LSL #6
l831: bics R6, R2, #1879048196
l832: bic R10, R3, #146432
l833: bics R5, R1, R12
l834: bic R11, R2, R8
l835: bic R1, R5, R11, ASR #27
l836: bicMIs R11, R0, R5
l837: bicVS R10, R0, R2, ASR R11
l838: bics R2, R10, #104857600
l839: bicCS R12, R12, R4
l840: bics R10, R4, R2
l841: bicEQs R8, R14, R1, ROR R6
l842: bics R8, R4, R10
l843: bicNEs R3, R2, #2605056
l844: bic R1, R8, R9
l845: bicLE R3, R3, R6
l846: bic R3, R14, #10304
l847: bic R11, R0, #2097152
l848: bicMI R12, R9, R7, LSR #24
l849: bicLT R4, R9, R1, RRX 
l850: bicHI R8, R2, R8, ASR #16
l851: bic R3, R14, R9, ROR #24
l852: bic R14, R10, #737280
l853: bicMIs R0, R5, R5, LSL R6
l854: bic R11, R10, R6, LSL R5
l855: bicCS R2, R0, R2, ROR R4
l856: bicNEs R14, R6, R5, LSL R3
l857: bicLE R2, R9, R7
l858: bic R6, R11, R10
l859: bics R14, R7, #46137344
l860: bic R8, R7, R8, ROR R7
l861: bicGEs R10, R10, R12, LSL R7
l862: bicEQs R14, R11, #9344
l863: bicGE R7, R10, R7, LSL R2
l864: bic R2, R15, R11
l865: bics R0, R15, R4
l866: bic R1, R0, #5056
l867: bicLEs R1, R3, R9, ROR #30
l868: bicVSs R14, R8, R12
l869: bics R11, R15, R7
l870: bicHIs R3, R5, R0, ROR R2
l871: bicVC R2, R10, R10, LSL R0
l872: bicPLs R8, R2, R4, LSL #18
l873: bics R2, R6, #16711680
l874: bicVCs R10, R4, R7
l875: bicGT R1, R4, #35651584
l876: bicNEs R11, R4, R11, ROR #1
l877: bicEQs R1, R14, R10, RRX 
l878: bicLEs R10, R3, R11, RRX 
l879: bicCC R2, R15, R4, RRX 
l880: bicCS R0, R12, R4, LSR #26
l881: bic R2, R0, R14, LSL R6
l882: bics R14, R7, R14, ROR #9
l883: bicCCs R4, R1, R2, ROR #23
l884: bicNEs R5, R11, #1073741868
l885: bicVS R2, R11, R15, RRX 
l886: bics R4, R2, R14, LSR R1
l887: bicVS R4, R12, R10
l888: bicEQs R12, R1, #39059456
l889: bics R9, R5, #-1610612735
l890: bicHIs R12, R9, R8
l891: bicVCs R11, R0, R10
l892: bicNEs R2, R3, R5
l893: bic R8, R10, R10, LSL R14
l894: bicVS R0, R3, R14
l895: bicCC R8, R3, R3
l896: bicHI R1, R3, R7, LSR #24
l897: bicMIs R8, R3, #223
l898: bicGT R10, R11, R12, ROR #7
l899: bics R1, R11, R0, ASR R12
l900: bics R14, R2, R12
l901: bic R14, R2, R5, LSL R8
l902: bic R7, R3, R15, ROR #20
l903: bicHI R14, R0, R1, LSR R14
l904: bics R9, R11, R9, RRX 
l905: bicLS R12, R5, R8
l906: bicMIs R5, R1, R8, LSL R5
l907: bics R6, R7, R7, LSL #24
l908: bicEQs R2, R3, R14, LSL #23
l909: bicLS R10, R10, R2, ASR #17
l910: bicCS R14, R5, R0
l911: bic R0, R11, #15168
l912: bic R3, R15, #154624
l913: bicMIs R0, R5, #1968
l914: bicVS R4, R1, #11392
l915: bics R4, R11, R7
l916: bicVC R1, R5, R2, ASR #1
l917: bicVS R7, R5, #28160
l918: bicVCs R14, R1, R14, ASR R0
l919: bics R0, R0, R1, ROR R0
l920: bicGEs R4, R6, R8, ASR R5
l921: bicLT R11, R14, R7
l922: bicCSs R10, R0, R0, ASR R3
l923: bicVS R11, R3, #272
l924: bicLT R7, R14, #13696
l925: bicEQ R5, R14, R0
l926: bic R10, R3, R0, ROR R8
l927: bicLTs R2, R1, #260046848
l928: bicMIs R0, R10, R7
l929: bic R10, R6, #24064
l930: bicVSs R14, R0, R14, RRX 
l931: bicLE R6, R8, R15
l932: bics R7, R3, #45613056
l933: bicMI R12, R0, #40704
l934: bicVS R1, R5, #1610612737
l935: bicCS R12, R2, R0, RRX 
l936: bic R6, R6, R11, ASR #10
l937: bicGEs R9, R11, R5, ASR #14
l938: bics R6, R10, #-2147483647
l939: bicGTs R14, R12, R4, ROR #12
l940: bicHI R3, R0, R6, ROR #27
l941: bicMIs R7, R0, R11
l942: bicVC R11, R11, R1, LSL #17
l943: bicNEs R9, R14, R0
l944: bicLSs R12, R10, R6, LSL R11
l945: bic R14, R7, #-2080374781
l946: bic R3, R6, #3932160
l947: bicEQ R3, R10, #2160
l948: bicGE R7, R6, R14, LSL R14
l949: bics R1, R10, R12
l950: bic R10, R8, #162
l951: bicEQ R8, R14, R11
l952: bic R6, R1, R0, RRX 
l953: bic R12, R6, R12
l954: bic R11, R6, #511705088
l955: bicCS R14, R1, #56
l956: bics R8, R7, R2, ROR #22
l957: bics R8, R3, R5, LSL #26
l958: bicGEs R2, R6, R1, LSL #9
l959: bic R4, R2, R12
l960: bicCCs R6, R3, R14
l961: bic R6, R12, R4, LSL #31
l962: bicCSs R0, R1, #872415234
l963: bic R9, R3, #47972352
l964: bicGE R7, R14, R11, ROR R0
l965: bicVSs R6, R14, R0, RRX 
l966: bicHIs R10, R1, R7, RRX 
l967: bics R12, R7, R15
l968: bics R14, R0, R12
l969: bics R9, R10, R3, LSL R2
l970: bics R3, R7, R15, LSL #3
l971: bic R7, R2, R6, LSR #23
l972: bicGE R4, R3, R5, ASR R0
l973: bicLS R12, R14, R4, ROR R1
l974: bicPLs R4, R12, R12, LSL R10
l975: bicEQs R9, R4, R5
l976: bicVC R8, R3, R8
l977: bicPL R0, R9, #171966464
l978: bics R7, R7, R10
l979: bicEQs R10, R10, R11, ASR R2
l980: bic R1, R0, R8, LSL R12
l981: bicPL R10, R8, #13568
l982: bicVCs R8, R14, R14, RRX 
l983: bic R11, R7, R0, LSL #20
l984: bicLTs R6, R7, R7, ASR R11
l985: bicEQs R5, R12, R7
l986: bicGE R4, R9, R4, LSR R12
l987: bicVC R6, R8, R12, ROR R7
l988: bicGEs R7, R3, #2464
l989: bicGEs R14, R4, R8, RRX 
l990: bicGE R4, R5, #352321536
l991: bicMIs R4, R2, R15, ASR #7
l992: bicHI R6, R8, R8
l993: bicNE R9, R9, R6, ROR #25
l994: bic R7, R3, R5, LSR R7
l995: bicMI R5, R2, R2, ASR R12
l996: bicEQ R2, R3, R15
l997: bic R12, R3, R11
l998: bicVC R12, R6, R14, LSL #25
l999: bic R3, R6, R4, RRX 
l1000: bicGE R3, R2, R0, LSR R14
end: b end

