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
val1: .word 3316122083
next1:ldr R2, val2
b next2
val2: .word 2158478763
next2:ldr R3, val3
b next3
val3: .word 3288053551
next3:ldr R4, val4
b next4
val4: .word 3895083469
next4:ldr R5, val5
b next5
val5: .word 3276578133
next5:ldr R6, val6
b next6
val6: .word 3185423344
next6:ldr R7, val7
b next7
val7: .word 1759637845
next7:ldr R8, val8
b next8
val8: .word 489429497
next8:ldr R9, val9
b next9
val9: .word 19159919
next9:ldr R10, val10
b next10
val10: .word 1099820266
next10:ldr R11, val11
b next11
val11: .word 665397909
next11:ldr R12, val12
b next12
val12: .word 2094209613
next12:ldr R14, val14
b next14
val14: .word 1977814575

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 332160749
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 2632361347
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 81039383
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 2390574464
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 2149958631
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 881338374
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 568784964
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 4273915147
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 4098472150
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 1519143338
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 1219785642
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 3206304546
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 1955059557
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 741099643
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 3168868201
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 3395125651
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 2010943432
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 1905679740
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 3940048131
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 4075731643
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 966999260
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: adcHIs R2, R14, R14, RRX 
l2: adcNE R4, R12, R6, LSR #1
l3: adcGTs R2, R4, R4, RRX 
l4: adcLTs R8, R12, R10
l5: adcs R2, R14, #-1023410176
l6: adcLSs R5, R12, #154
l7: adcLSs R14, R12, R7
l8: adc R3, R10, R11, LSR #10
l9: adcs R14, R4, R2, ASR #11
l10: adcs R8, R8, #-603979773
l11: adcPL R0, R5, R9, ROR R10
l12: adcVC R11, R10, R1
l13: adcVS R10, R15, R4
l14: adcCC R8, R0, R11
l15: adcLT R7, R8, #175104
l16: adc R6, R1, R8, RRX 
l17: adcLTs R4, R15, R4, LSL #1
l18: adc R2, R8, R2
l19: adcGEs R4, R7, R0
l20: adc R4, R14, R6, ROR R5
l21: adcGEs R14, R1, R1, LSL R10
l22: adcPLs R5, R5, #24064
l23: adcLT R4, R5, R4, LSR #18
l24: adc R2, R14, R12
l25: adcNE R2, R1, R5, LSL R10
l26: adcCCs R10, R5, R14, ASR R14
l27: adcGEs R5, R9, R2, RRX 
l28: adcs R10, R3, R0, LSL #23
l29: adc R2, R11, R12
l30: adcMI R1, R8, R11, ROR #19
l31: adc R1, R2, R10, ROR R7
l32: adc R1, R1, #20
l33: adcs R9, R5, R15, RRX 
l34: adcs R9, R6, R12, ASR R11
l35: adcLSs R5, R10, R11, ROR R10
l36: adcEQs R10, R8, #19922944
l37: adcVC R2, R14, R12
l38: adcs R4, R12, R15
l39: adcGEs R5, R15, R14
l40: adcGEs R2, R2, #372736
l41: adcs R7, R0, R3, RRX 
l42: adcLT R7, R1, R10, LSL R9
l43: adcMI R0, R14, R0
l44: adcs R0, R14, R12
l45: adcLEs R14, R3, R4
l46: adcLE R6, R9, R8, ROR #29
l47: adcs R11, R12, #48128
l48: adc R8, R9, R3, RRX 
l49: adcGT R0, R6, R15, RRX 
l50: adcHIs R4, R11, #-536870905
l51: adcs R14, R7, R3
l52: adcs R5, R7, #236544
l53: adc R9, R4, R14, ASR R0
l54: adcCSs R2, R3, R14
l55: adcLEs R3, R15, R6, ROR #23
l56: adcVS R9, R7, R14, ROR R12
l57: adcs R8, R1, R6
l58: adcs R12, R4, R7, ROR R12
l59: adcHI R10, R15, R14
l60: adcLTs R6, R0, R6, LSR #29
l61: adcHIs R11, R9, R1
l62: adcs R8, R4, R8
l63: adcLTs R2, R9, #416
l64: adcVS R0, R15, R2, ASR #27
l65: adc R3, R0, R10
l66: adc R8, R14, R9
l67: adcs R0, R10, R11, LSR R1
l68: adcs R6, R9, R5, LSR R8
l69: adcLE R12, R15, R0, RRX 
l70: adcMI R4, R7, R4
l71: adcs R11, R11, R14, LSL R11
l72: adcs R6, R2, R14, LSR #25
l73: adcMIs R8, R6, R1
l74: adcPL R2, R3, R0
l75: adcNE R8, R6, #53504
l76: adcPLs R3, R3, R4
l77: adcCC R6, R7, R4
l78: adcLS R9, R8, R10, ASR R7
l79: adc R14, R1, #16640
l80: adcLE R6, R0, R6, ROR #16
l81: adcs R9, R0, R11
l82: adcs R9, R2, R14
l83: adcs R10, R12, #53215232
l84: adc R1, R3, R11, RRX 
l85: adcLE R8, R6, R0, ASR #4
l86: adc R1, R9, #20992
l87: adcs R12, R6, R2, ROR R10
l88: adcs R1, R14, R7, LSR #26
l89: adcs R12, R6, R10, ASR #24
l90: adcLEs R2, R14, R0, LSR R0
l91: adcCCs R12, R8, #10485760
l92: adcs R11, R3, R15
l93: adcCSs R10, R4, R11
l94: adcNE R0, R15, R2, LSL #8
l95: adcs R2, R14, #151552
l96: adcGEs R14, R9, R6, LSR R2
l97: adcHI R7, R12, #4194304
l98: adcHI R0, R11, R9, ROR #30
l99: adcLSs R2, R10, R6
l100: adcHI R14, R7, #4
l101: adc R12, R15, R14, LSR #31
l102: adc R6, R2, #872415235
l103: adcCSs R6, R15, #-1073741790
l104: adcVC R4, R1, #956
l105: adcNEs R14, R6, R1, LSR #7
l106: adcCC R14, R0, R6, LSL R5
l107: adcEQs R8, R6, R3
l108: adcCC R11, R5, R3
l109: adcVCs R3, R7, R8, ROR #1
l110: adcs R8, R5, R1, LSL R11
l111: adcLT R11, R1, #704
l112: adcPL R9, R15, R1, RRX 
l113: adc R2, R6, R0, LSL R0
l114: adc R5, R15, R3, RRX 
l115: adc R2, R2, R12, ASR #30
l116: adc R8, R7, R12
l117: adcs R6, R12, #652
l118: adcHI R5, R7, R11, LSR R0
l119: adcs R7, R6, R5
l120: adcEQs R2, R12, R4, LSL #15
l121: adc R9, R6, R10, LSL #9
l122: adcHIs R11, R7, R0, ASR #23
l123: adcGE R6, R3, R9
l124: adcs R14, R1, R8, ROR R3
l125: adcEQ R6, R15, R3
l126: adc R6, R15, R5
l127: adcEQs R10, R3, R8, LSL #5
l128: adc R12, R8, R9
l129: adcLEs R5, R1, R5, LSL #12
l130: adc R12, R14, R3
l131: adcLT R1, R15, R12, LSL #3
l132: adcLTs R5, R6, R12
l133: adc R0, R15, R9
l134: adcEQs R6, R8, R1
l135: adcs R3, R11, #2130706432
l136: adcPL R4, R8, R9, LSL R8
l137: adc R3, R3, R10, LSR R5
l138: adcGE R10, R12, #146432
l139: adcs R12, R8, R3
l140: adcMI R0, R3, R0, RRX 
l141: adcs R5, R3, R7, LSL #14
l142: adcMI R12, R1, R5
l143: adcMIs R4, R14, R2, ASR #31
l144: adcEQs R3, R9, R6, LSR R8
l145: adcVCs R8, R6, R1
l146: adcGT R11, R6, #-2147483637
l147: adcs R11, R7, R7, LSL R8
l148: adcGE R12, R11, R3
l149: adcPLs R11, R14, R15, RRX 
l150: adcCC R10, R8, #13172736
l151: adcPL R0, R2, R10, ASR #8
l152: adcLSs R3, R8, R15
l153: adcNEs R8, R15, #2480
l154: adcCSs R5, R3, R4, ROR R6
l155: adcNEs R10, R11, R1
l156: adcPL R12, R14, #-939524095
l157: adcs R11, R9, R14, LSR #24
l158: adcs R2, R1, R5
l159: adcs R4, R15, R12, ASR #20
l160: adc R8, R1, R1
l161: adcMI R3, R7, R14
l162: adcCCs R8, R12, R11
l163: adc R7, R5, R8, LSR #15
l164: adcGTs R2, R15, R8, RRX 
l165: adc R12, R10, #-805306356
l166: adc R2, R12, #32243712
l167: adcCS R2, R5, #473956352
l168: adc R7, R12, R3, LSR #10
l169: adcEQ R10, R1, R10, LSR R8
l170: adc R12, R9, R4
l171: adcPLs R4, R4, R3, RRX 
l172: adcCCs R1, R12, #3072
l173: adc R5, R15, #220
l174: adcCCs R7, R1, R1, LSL #11
l175: adc R4, R2, R1, ASR R12
l176: adc R12, R7, R8
l177: adc R12, R0, #-1073741821
l178: adcs R0, R1, R2, ASR R0
l179: adcGEs R4, R1, #11008
l180: adcLTs R6, R9, R4, RRX 
l181: adcNE R8, R2, R2
l182: adc R6, R2, #-738197504
l183: adc R2, R12, R11, ROR #24
l184: adcCS R11, R11, R7
l185: adcLEs R3, R3, #3904
l186: adc R1, R9, R1, RRX 
l187: adcs R14, R2, R9, LSR #27
l188: adcVS R7, R11, R11, LSL R3
l189: adcVS R0, R2, R1, RRX 
l190: adcVC R12, R0, R14, ASR R8
l191: adc R0, R3, R5, RRX 
l192: adc R8, R9, R1, LSL R0
l193: adcNE R3, R1, R12
l194: adcs R7, R8, R12
l195: adcNE R3, R9, R9, LSL #12
l196: adcCC R12, R10, R8
l197: adcVC R11, R8, #48496640
l198: adc R6, R11, R9, LSL R2
l199: adcLS R0, R15, R4, LSL #5
l200: adcLTs R12, R10, #1073741825
l201: adc R0, R2, #472
l202: adcs R5, R9, R15
l203: adcVCs R12, R12, R5, ROR #18
l204: adcs R8, R6, R5, ROR #27
l205: adcLTs R2, R1, R5
l206: adcLT R9, R11, R5, LSL #29
l207: adcLSs R1, R15, #104857600
l208: adcHI R10, R2, R7
l209: adc R7, R12, #5963776
l210: adcPLs R2, R1, #49545216
l211: adcs R4, R6, R11
l212: adcGE R4, R0, R1, LSL #0
l213: adc R12, R7, #193
l214: adcLS R5, R9, R12, LSR R7
l215: adcCS R10, R5, #-939524096
l216: adcLS R10, R0, #-201326592
l217: adcGT R0, R15, #13
l218: adcs R4, R12, R5
l219: adcCCs R12, R9, R2, LSR #6
l220: adcEQs R2, R7, R1, LSR R9
l221: adcLTs R6, R2, R12, LSR R12
l222: adcHIs R6, R4, R12, LSR #24
l223: adcs R12, R8, R5, RRX 
l224: adc R10, R3, R5, LSL R7
l225: adcPL R14, R4, R6
l226: adcs R12, R7, #14400
l227: adcLEs R4, R5, R8, ROR #7
l228: adcGEs R5, R7, R10, ASR R7
l229: adc R5, R3, R4, LSR R10
l230: adc R14, R15, R9, LSL #17
l231: adcGT R1, R12, R5, LSL R10
l232: adcMI R8, R6, R11
l233: adcNE R8, R4, R9, ASR #8
l234: adcMI R1, R14, R3, LSR R2
l235: adc R8, R12, R12
l236: adcs R1, R7, R6, RRX 
l237: adcGT R9, R12, #-1056964608
l238: adcCC R4, R7, R10
l239: adcs R2, R11, R0
l240: adc R6, R15, R10
l241: adcGE R5, R2, #939524097
l242: adcPLs R2, R12, R3
l243: adc R3, R8, R15, ASR #23
l244: adcNE R8, R8, R5
l245: adc R8, R3, R11, ROR #24
l246: adcGE R2, R0, R3, LSR R14
l247: adcMI R9, R10, #7168
l248: adcVSs R8, R4, #12255232
l249: adc R14, R11, R5
l250: adcLE R2, R4, R0
l251: adcNE R9, R4, #792
l252: adcVSs R4, R6, R7
l253: adcs R9, R10, R9, ASR #0
l254: adc R8, R8, R3
l255: adc R3, R11, R8
l256: adcEQs R1, R9, R4, RRX 
l257: adc R6, R12, R6, LSR #5
l258: adcLSs R1, R15, R8, LSL #29
l259: adcCCs R6, R1, R14, LSL R11
l260: adcCSs R12, R3, #304
l261: adcVSs R2, R14, R5, LSL #22
l262: adc R8, R0, R8
l263: adcs R5, R2, R10, RRX 
l264: adcCC R6, R9, R3, LSL R3
l265: adcLS R8, R12, R12, RRX 
l266: adcLS R6, R1, #720
l267: adcLT R11, R14, R4
l268: adcs R4, R15, #2834432
l269: adcLTs R1, R10, R9, LSR R14
l270: adc R1, R5, R0, ASR #11
l271: adc R11, R1, #204472320
l272: adcs R2, R6, #782336
l273: adcs R0, R4, R3
l274: adcMIs R6, R1, #696
l275: adcs R1, R14, R10
l276: adcLTs R12, R2, #10616832
l277: adcNEs R10, R14, #380928
l278: adcVS R7, R6, #55040
l279: adcs R14, R7, #17825792
l280: adcEQ R0, R5, R3
l281: adcs R6, R7, R15
l282: adcCCs R11, R14, #12032
l283: adcLEs R10, R12, R11, RRX 
l284: adcVS R9, R9, R11
l285: adcVCs R14, R2, R6, RRX 
l286: adc R7, R3, R11, LSL #11
l287: adcGEs R2, R9, R4, LSL #19
l288: adcEQ R6, R4, R6, ASR R3
l289: adcGTs R12, R1, R2
l290: adc R14, R7, R8, LSR R12
l291: adcs R5, R10, R4, ASR #1
l292: adc R4, R6, R2, ROR #21
l293: adcLE R4, R7, R5, LSL R2
l294: adcs R9, R12, R15, LSL #3
l295: adcGTs R9, R5, R9
l296: adcs R8, R10, #60293120
l297: adcCCs R4, R6, R0
l298: adcCSs R5, R1, #8192
l299: adcMIs R3, R10, R7, LSL #5
l300: adcMI R7, R2, R9
l301: adcGEs R7, R5, R11
l302: adcs R2, R11, #32768
l303: adcGT R1, R3, #16640
l304: adcLT R11, R8, #-1610612736
l305: adcEQs R10, R5, R10, ROR #3
l306: adc R0, R14, R1, LSL #30
l307: adcVCs R1, R7, R10, RRX 
l308: adcEQ R2, R5, R10, ROR R4
l309: adcs R2, R3, R12, LSR R0
l310: adcHI R9, R11, #-603979776
l311: adcLE R7, R6, R3, LSL R9
l312: adcPL R10, R5, R11, RRX 
l313: adcLTs R0, R8, #12800
l314: adcs R7, R9, R1, ROR #4
l315: adcCC R2, R0, R10, RRX 
l316: adcGTs R6, R14, R8, LSL R7
l317: adcLE R10, R1, #30932992
l318: adcCC R9, R4, R14
l319: adcLE R6, R5, R12, RRX 
l320: adcVSs R12, R0, R12, ROR R1
l321: adcLEs R10, R12, R5, LSL R5
l322: adcHIs R4, R12, #14336
l323: adcLTs R1, R2, R10, LSR R9
l324: adcPL R11, R7, R6, ASR #8
l325: adc R8, R14, R15, LSL #30
l326: adcs R2, R2, R7, RRX 
l327: adc R8, R1, R12, ASR R8
l328: adcPL R3, R7, R5, ROR #22
l329: adc R12, R10, R3, LSL R1
l330: adcPLs R8, R3, R8
l331: adcCCs R14, R2, R15, RRX 
l332: adc R11, R14, R11, ASR R12
l333: adcLS R5, R14, R1, ROR #16
l334: adcCS R9, R11, #208
l335: adcLT R7, R8, R3, RRX 
l336: adcEQs R7, R0, R9
l337: adc R14, R12, R3, LSR R4
l338: adc R11, R9, R2, ASR #1
l339: adcGT R0, R1, #-16777216
l340: adcMIs R5, R10, R4, RRX 
l341: adcCCs R7, R8, R12, LSR R5
l342: adc R7, R12, R3, LSL R4
l343: adcCCs R1, R15, R9
l344: adc R9, R9, #165888
l345: adc R6, R1, R12, LSL #29
l346: adcNEs R1, R9, R3
l347: adcs R2, R4, R4, ASR #27
l348: adcs R11, R0, R11, LSR R5
l349: adcs R0, R6, #577536
l350: adcPLs R6, R12, #16252928
l351: adcLS R6, R15, R10
l352: adcCSs R9, R9, #2160
l353: adcPL R12, R0, #75776
l354: adcHIs R6, R10, R6, ROR #29
l355: adcLSs R7, R14, R0, LSR R5
l356: adcs R7, R11, #59392
l357: adcCSs R4, R11, #1474560
l358: adcs R3, R2, R12, RRX 
l359: adc R9, R5, #170917888
l360: adcLTs R5, R7, R2
l361: adcs R9, R9, #757760
l362: adc R10, R9, R4, LSR #5
l363: adcMIs R6, R7, R15, RRX 
l364: adc R6, R0, #196
l365: adcVSs R12, R10, #175104
l366: adc R9, R0, R3, RRX 
l367: adcs R9, R0, R1, ROR #20
l368: adcs R6, R10, R5, ASR R7
l369: adcs R9, R7, R14, ROR #4
l370: adcEQs R12, R1, R11, ROR #3
l371: adcGTs R0, R14, R12, LSR #15
l372: adcHIs R1, R5, R14, LSR R6
l373: adcCSs R2, R8, R4, ROR R6
l374: adc R14, R11, R4
l375: adc R9, R2, R10, LSL R4
l376: adcMI R11, R2, R8
l377: adcPLs R12, R0, #855638016
l378: adcNE R7, R9, #55296
l379: adcs R9, R0, #768
l380: adc R3, R8, R4, RRX 
l381: adcLS R10, R11, R12, RRX 
l382: adc R6, R9, R6, RRX 
l383: adcEQ R5, R12, R12
l384: adc R14, R1, #1
l385: adcPL R8, R8, R11
l386: adcPLs R12, R11, #135
l387: adcCC R5, R7, R5, LSR #30
l388: adc R4, R5, R15, RRX 
l389: adc R3, R14, R0
l390: adcNE R6, R14, R4, RRX 
l391: adc R14, R3, R4, ASR #7
l392: adcHI R9, R9, R11, RRX 
l393: adcs R7, R2, R7, LSR R11
l394: adcs R11, R7, R6, LSL R6
l395: adcs R5, R5, R11, ROR R7
l396: adcGT R1, R10, R0, ROR R10
l397: adcCSs R14, R15, R15, RRX 
l398: adcVSs R4, R8, R0, ROR R9
l399: adcGEs R1, R1, R14, ROR R0
l400: adcPLs R14, R7, R15, RRX 
l401: adc R10, R8, R0
l402: adc R9, R5, R6, ASR R1
l403: adc R12, R0, #8585216
l404: adc R2, R9, R6, ASR R5
l405: adcLS R7, R2, R6
l406: adc R11, R4, R3
l407: adcLTs R7, R11, R8
l408: adc R0, R14, R9, RRX 
l409: adc R12, R14, R15, RRX 
l410: adcVC R14, R2, R3
l411: adcLE R14, R14, R8, RRX 
l412: adcVSs R2, R14, R0, LSR R11
l413: adcCS R14, R11, #63176704
l414: adcs R11, R7, R14
l415: adcVSs R6, R4, R12, ASR #10
l416: adcs R9, R3, R8, ASR #30
l417: adcCCs R9, R0, R14, RRX 
l418: adcNEs R9, R5, R11, ASR R0
l419: adcEQ R7, R0, R5, LSL R14
l420: adcMI R3, R2, R7, ROR R2
l421: adcLT R2, R7, #991232
l422: adc R1, R5, #70
l423: adc R12, R1, R9, ROR #19
l424: adc R12, R9, R14
l425: adcs R2, R3, #156672
l426: adcs R11, R4, #939524099
l427: adc R4, R9, R8
l428: adcMI R0, R5, #1879048202
l429: adcLTs R0, R0, R14, RRX 
l430: adcCC R12, R6, R6, LSR R9
l431: adc R6, R7, R7, ASR R14
l432: adcPLs R1, R9, R2, LSL #18
l433: adc R9, R9, #98304
l434: adcCS R4, R2, R5, ROR #7
l435: adcs R8, R9, #2473984
l436: adc R6, R0, R1
l437: adcLTs R1, R3, R5, ROR #3
l438: adcCSs R8, R1, R8
l439: adcEQs R14, R9, R3, RRX 
l440: adcs R5, R0, R14, LSL R0
l441: adcs R2, R6, R12
l442: adcs R11, R7, R8, LSR R14
l443: adcLS R10, R12, R2, LSR R3
l444: adcs R14, R7, #-654311424
l445: adcVCs R14, R10, R6, ROR R4
l446: adcLEs R11, R2, R11, RRX 
l447: adc R11, R7, R12, LSL R6
l448: adcLSs R5, R8, R12
l449: adcNE R14, R5, #-1275068413
l450: adc R8, R1, R9, LSR R14
l451: adcNEs R2, R7, R3, RRX 
l452: adcVC R14, R6, R5
l453: adcMIs R4, R14, R9, ASR #25
l454: adcs R9, R14, #37120
l455: adcHI R3, R7, R12, LSL #18
l456: adcVS R1, R10, #172032
l457: adcLE R0, R7, #149504
l458: adcVCs R10, R3, R15, RRX 
l459: adcLEs R14, R15, R14
l460: adcs R9, R3, R4, ASR R14
l461: adcPLs R12, R12, R4, LSR #15
l462: adcs R2, R1, #1426063360
l463: adcEQ R5, R11, R0
l464: adcCS R3, R5, R10, RRX 
l465: adcHIs R14, R7, #268435456
l466: adc R10, R3, R14
l467: adc R4, R11, R12, ROR R0
l468: adc R1, R15, R6, ASR #13
l469: adcLE R14, R6, R5
l470: adcCC R2, R15, R12, LSR #14
l471: adcLSs R10, R8, R8, LSL #8
l472: adc R6, R5, #261095424
l473: adcPLs R6, R9, #-738197501
l474: adcGEs R10, R2, R0
l475: adcNE R10, R4, R2, LSL R11
l476: adc R14, R5, R10, LSR R8
l477: adcVC R5, R1, R7, ASR #17
l478: adcs R10, R2, R8, ROR #6
l479: adc R11, R7, R1
l480: adc R10, R11, R3, ROR R3
l481: adc R8, R14, R15, ASR #14
l482: adc R9, R12, R12
l483: adcLSs R8, R15, R4, ROR #22
l484: adcLS R3, R9, #51712
l485: adcVS R7, R12, R8, LSL #18
l486: adcCSs R12, R11, R10, LSL R2
l487: adc R5, R4, R8, LSR R9
l488: adc R3, R4, R4, ROR R6
l489: adc R4, R14, R14
l490: adc R6, R1, R7, ROR R8
l491: adcGTs R10, R7, R14, ASR R10
l492: adc R11, R0, R12, LSL R10
l493: adcLS R2, R5, R11, ASR #10
l494: adc R10, R4, R3
l495: adcLS R11, R6, #392
l496: adc R10, R12, #7143424
l497: adcHI R11, R11, R0, LSL #2
l498: adcs R1, R12, R9, LSR R9
l499: adcs R5, R11, #-2147483639
l500: adcPL R1, R7, R2, LSL #24
l501: adcEQs R14, R1, R14
l502: adcs R2, R1, R5
l503: adcCCs R4, R3, #268435459
l504: adcEQs R11, R8, #208
l505: adcGT R9, R10, #128
l506: adcVS R1, R12, R4
l507: adcLTs R12, R2, R1, RRX 
l508: adcGTs R5, R11, R10, ASR R4
l509: adc R0, R7, R4
l510: adcs R12, R9, R8, LSR #2
l511: adcCC R14, R1, #-1073741822
l512: adcLE R9, R14, R8
l513: adcMIs R1, R4, #68
l514: adcVCs R0, R14, R4, RRX 
l515: adcs R8, R2, #53504
l516: adc R3, R0, R0, LSL #9
l517: adcs R5, R6, R14, LSL R1
l518: adcs R4, R5, R5, ASR #24
l519: adcCS R11, R5, R8, LSR R8
l520: adcNEs R2, R2, R11
l521: adcCSs R4, R10, R12
l522: adcs R5, R12, #583008256
l523: adcMIs R4, R9, #58720256
l524: adcCSs R0, R10, #-1073741786
l525: adcEQ R7, R15, R12, RRX 
l526: adc R11, R8, R12, RRX 
l527: adcCCs R10, R10, R5
l528: adcs R12, R3, R6
l529: adcEQs R7, R10, R8, ROR #27
l530: adc R7, R4, #226
l531: adc R4, R12, R11, ROR #20
l532: adcs R7, R5, R9, RRX 
l533: adcs R10, R11, R14
l534: adc R10, R2, R1
l535: adcs R8, R8, R1, ROR R3
l536: adcs R9, R15, R12
l537: adc R2, R7, R5
l538: adcs R7, R1, #348
l539: adcNEs R6, R12, #872415235
l540: adcCS R1, R2, R7, LSL #0
l541: adcPL R7, R9, #-335544320
l542: adcVC R9, R5, #62720
l543: adcMI R11, R8, #7798784
l544: adcGE R6, R0, R8, ASR R4
l545: adcPL R8, R9, R1
l546: adcs R5, R4, #736
l547: adc R6, R12, R7, LSR R7
l548: adcCC R0, R6, R9, LSR #29
l549: adcCCs R2, R6, R8
l550: adcCS R2, R6, #536870912
l551: adcs R7, R5, R1, LSL R4
l552: adcs R10, R2, R5, ASR #4
l553: adcVC R3, R1, R14, ROR #5
l554: adcNE R7, R8, R11, ROR #22
l555: adc R10, R12, R2
l556: adcVCs R7, R10, R15
l557: adc R14, R12, R6
l558: adcHI R7, R5, R11, ROR #24
l559: adcVSs R14, R5, #-1879048178
l560: adcCSs R11, R9, #1677721603
l561: adcs R10, R7, #319488
l562: adc R8, R5, #583008256
l563: adcs R8, R4, R11
l564: adcGE R6, R15, R15, ASR #25
l565: adc R7, R0, R4, RRX 
l566: adcs R14, R7, R7, RRX 
l567: adc R0, R11, R10
l568: adcs R8, R4, R8
l569: adcLE R0, R12, R1, RRX 
l570: adcHI R4, R6, R3, ROR R2
l571: adcCCs R4, R11, R6, ASR R6
l572: adcCC R11, R6, #928
l573: adc R12, R6, #184549376
l574: adcs R0, R0, R12, RRX 
l575: adcs R0, R9, #256901120
l576: adc R2, R11, #9728
l577: adcs R1, R11, R9, LSR #27
l578: adcs R5, R5, R8, RRX 
l579: adcLEs R6, R2, R9, ROR #17
l580: adcCCs R10, R4, R7, LSL #30
l581: adcLE R7, R14, R4, LSL R6
l582: adcs R9, R12, R0, LSL R9
l583: adcLE R6, R10, #2576
l584: adcVC R7, R11, R14
l585: adcs R12, R9, R1, LSL R10
l586: adc R0, R2, R1, ROR #7
l587: adcGTs R5, R2, R11
l588: adcLTs R2, R5, #44032
l589: adcLS R8, R1, R8
l590: adcNE R4, R12, R11, RRX 
l591: adcEQ R11, R3, R3
l592: adcPL R6, R11, R9
l593: adcs R8, R10, R3, ROR #21
l594: adcs R4, R0, R0, LSL #4
l595: adcs R1, R2, R6
l596: adcLEs R4, R15, R5, LSL #9
l597: adcGT R12, R8, R1, LSL #18
l598: adcCS R0, R5, R5
l599: adcVCs R5, R3, R3
l600: adcEQs R10, R8, #41943040
l601: adcs R14, R4, R8, ASR #11
l602: adcs R5, R2, R1
l603: adc R5, R11, R10
l604: adcGE R8, R12, R8, LSR R10
l605: adcGTs R3, R2, #4608
l606: adcPLs R12, R15, R0, RRX 
l607: adcs R5, R1, R2
l608: adcMI R12, R7, R14
l609: adcLS R12, R5, R12
l610: adcGEs R4, R14, R14, ROR #13
l611: adcPL R11, R0, R1, ASR R5
l612: adc R0, R3, #356515840
l613: adcs R14, R5, R9
l614: adcPLs R2, R9, #218103808
l615: adcs R14, R5, #6422528
l616: adcNE R5, R14, R4, RRX 
l617: adcCCs R12, R2, R14
l618: adc R10, R12, R6
l619: adc R5, R3, R14
l620: adc R10, R5, #749568
l621: adcs R5, R3, R9
l622: adc R14, R1, #84
l623: adcHIs R0, R2, R4, ASR R8
l624: adcPLs R10, R14, R3
l625: adc R7, R1, R14
l626: adcGTs R8, R1, R6
l627: adcVCs R14, R7, R12
l628: adcVSs R6, R14, R10
l629: adcLTs R14, R15, R5
l630: adcPLs R9, R6, R3
l631: adcPLs R8, R2, R3, LSL #16
l632: adcs R8, R12, R9, ASR #5
l633: adcCCs R3, R14, R7, ROR #4
l634: adcLEs R7, R15, R3, RRX 
l635: adc R3, R14, #48758784
l636: adcEQs R5, R14, R11
l637: adcHIs R0, R1, #40
l638: adcGTs R2, R0, #5373952
l639: adcGTs R12, R6, R6, RRX 
l640: adcPLs R5, R4, R10, LSL R10
l641: adcMI R7, R6, R2, ASR R2
l642: adcLSs R9, R11, #1966080
l643: adcEQ R2, R8, #454656
l644: adcMIs R14, R0, #1073741867
l645: adc R2, R9, R2, ROR R12
l646: adcEQ R12, R1, #232
l647: adcs R5, R14, R11, ASR R2
l648: adcs R10, R1, #12386304
l649: adcLSs R7, R15, R3
l650: adc R12, R12, R10
l651: adcGT R10, R2, R9
l652: adc R14, R8, R12, ASR #8
l653: adcCCs R7, R5, R12, RRX 
l654: adcEQ R14, R1, R11
l655: adcs R4, R0, R11, ASR R5
l656: adc R11, R1, #-2147483618
l657: adcLTs R6, R10, R0
l658: adcs R0, R8, #1811939328
l659: adcPL R14, R12, R8
l660: adcGEs R8, R3, R8
l661: adcMI R3, R8, #89128960
l662: adcCC R14, R4, #3056
l663: adcHIs R4, R14, R8, LSR #28
l664: adcs R1, R7, R11, RRX 
l665: adcNEs R5, R5, R12
l666: adc R5, R8, R5, ASR R11
l667: adc R1, R11, R7, RRX 
l668: adcCC R10, R5, R12, LSL R12
l669: adcNEs R14, R11, R14, LSR R4
l670: adcMIs R7, R6, #143360
l671: adcs R0, R7, R6, ASR #8
l672: adcVS R1, R6, R1
l673: adc R1, R15, #327680
l674: adcNEs R12, R6, R8, ASR #28
l675: adcPLs R9, R9, R8
l676: adcMI R9, R2, #220160
l677: adcGE R8, R4, R3
l678: adcs R2, R15, R8
l679: adc R9, R5, R14, LSL R5
l680: adcGTs R9, R14, #1879048200
l681: adcCSs R5, R6, R3, LSL #1
l682: adcPLs R3, R6, R7, RRX 
l683: adcs R0, R11, R11
l684: adcVSs R2, R7, R1, LSL R8
l685: adcs R0, R12, #29696
l686: adc R1, R2, R7, RRX 
l687: adcs R8, R3, R9, ROR #23
l688: adc R5, R10, R10, ASR R6
l689: adcLSs R0, R8, R0, LSL R9
l690: adcs R9, R3, #58
l691: adc R0, R0, R6, ASR R2
l692: adcLS R1, R14, #1048576000
l693: adcCCs R10, R0, #972
l694: adcLSs R6, R8, R9, ROR R1
l695: adcPL R1, R11, R5, RRX 
l696: adc R11, R10, R0, LSL #21
l697: adcs R8, R11, R3, LSR R2
l698: adcs R4, R7, #55312384
l699: adcCS R1, R4, R9, LSR R5
l700: adcPL R14, R11, R7
l701: adcs R4, R8, R10
l702: adc R3, R12, R5, LSR R9
l703: adc R3, R3, R7
l704: adcPLs R6, R12, R15, ASR #12
l705: adcPLs R4, R3, #782336
l706: adcs R11, R7, #109051904
l707: adcEQ R7, R15, R3
l708: adcLSs R9, R3, #544
l709: adcVSs R0, R2, R0, ASR #26
l710: adcPLs R1, R12, R0, RRX 
l711: adcs R10, R1, R4
l712: adcPLs R5, R1, R8, LSR R11
l713: adcVCs R10, R10, R0, ASR #23
l714: adcs R8, R9, #12
l715: adcPL R1, R12, #688
l716: adcMI R12, R9, R9, ROR R4
l717: adcNE R14, R0, R5, LSL R4
l718: adcHIs R3, R3, #-1073741776
l719: adcGTs R11, R1, R5, RRX 
l720: adc R12, R5, R6, LSL R1
l721: adcMI R5, R4, R0, LSL #18
l722: adcCCs R5, R14, R15
l723: adc R7, R3, #184549376
l724: adcLE R1, R14, #-2147483643
l725: adcs R12, R2, R14, LSL R1
l726: adc R2, R1, R9, ROR R4
l727: adcMI R6, R0, #22282240
l728: adcCC R5, R11, R6
l729: adcLS R14, R9, R1
l730: adcVS R1, R7, R5, ROR #24
l731: adcCS R1, R6, R10, LSR #21
l732: adc R7, R2, R5, RRX 
l733: adcMIs R12, R15, #-1073741818
l734: adcs R14, R5, R9, ROR #25
l735: adcLT R9, R4, R8, LSL #0
l736: adcGT R5, R11, R5
l737: adcCSs R0, R12, R14, ROR #22
l738: adc R9, R14, R4, ASR R11
l739: adc R2, R10, R10, ROR R2
l740: adcPL R14, R11, R10, ROR R1
l741: adc R9, R14, R7
l742: adcCS R14, R5, R5, ROR R6
l743: adcGTs R14, R11, R1
l744: adc R11, R11, #11520
l745: adcCS R8, R12, R7, LSR R5
l746: adcNE R10, R3, R4, RRX 
l747: adcs R3, R4, R15, ASR #22
l748: adc R2, R5, R12, ASR R1
l749: adcCC R5, R8, R6, ASR #7
l750: adcs R3, R2, R9
l751: adc R2, R0, #3211264
l752: adcMIs R3, R1, R6
l753: adcs R8, R0, R4, RRX 
l754: adcPL R9, R7, R10
l755: adc R8, R10, R4
l756: adcHIs R7, R7, R12, RRX 
l757: adc R10, R8, R10
l758: adcVSs R5, R9, R4, LSL R11
l759: adcHIs R4, R10, R8
l760: adcNEs R10, R9, R6
l761: adcGT R5, R8, R2
l762: adcNE R7, R11, R14
l763: adc R4, R0, R1, LSR #25
l764: adcVCs R1, R8, R11, ASR R12
l765: adcCS R6, R9, #22020096
l766: adcCCs R4, R0, R10
l767: adcCSs R7, R6, #3391488
l768: adcLEs R2, R0, R4
l769: adcMI R6, R14, #6784
l770: adcCSs R1, R5, #1152
l771: adcMIs R9, R2, R11, ASR R11
l772: adcMI R11, R9, #193
l773: adc R5, R9, #369098752
l774: adcPL R3, R2, R8, LSR R0
l775: adc R12, R8, R15
l776: adcHI R0, R14, R7, LSR R7
l777: adcCSs R6, R1, #6225920
l778: adcs R9, R12, #603979776
l779: adc R0, R7, #50331648
l780: adcHI R1, R5, #884
l781: adcVC R1, R8, R15, LSL #11
l782: adc R2, R6, R15
l783: adcCSs R9, R1, R2
l784: adcs R11, R12, #255852544
l785: adcs R0, R14, R1, ROR R11
l786: adc R5, R11, #216006656
l787: adc R12, R3, R4, ROR #15
l788: adcVC R8, R8, #15466496
l789: adcGE R3, R15, R5, ROR #19
l790: adc R6, R2, R10, LSR #14
l791: adcs R0, R14, R8, RRX 
l792: adcCCs R1, R10, R4, LSR #19
l793: adcs R3, R1, #13888
l794: adcVC R7, R2, #14592
l795: adcPLs R14, R8, #65536
l796: adcPLs R1, R8, R11
l797: adcs R11, R9, R11, LSR R9
l798: adcLEs R2, R0, #13565952
l799: adcs R12, R15, R8, ASR #10
l800: adcs R6, R5, R2, LSL R3
l801: adc R6, R1, #-1006632958
l802: adcGTs R6, R14, R9
l803: adcHIs R8, R3, R6
l804: adcs R10, R7, R11, ASR #13
l805: adcCC R10, R9, R5, RRX 
l806: adc R12, R2, R5, ASR R1
l807: adcGEs R8, R11, R11
l808: adcEQs R14, R3, R2, LSL #8
l809: adcCC R1, R0, R8, ROR R4
l810: adcGEs R1, R14, #1966080
l811: adc R6, R15, R0
l812: adc R14, R11, R9, ASR R8
l813: adcCC R12, R7, R3
l814: adcVC R14, R12, #176160768
l815: adc R2, R3, R7
l816: adc R9, R14, R14
l817: adcHI R7, R14, #288
l818: adcGTs R5, R1, #233832448
l819: adcs R11, R7, #3968
l820: adcHI R4, R14, R10, LSR #19
l821: adc R5, R11, #-67108864
l822: adcs R9, R0, R2, ROR R9
l823: adc R2, R2, R4, ASR #21
l824: adcPL R9, R14, R6, RRX 
l825: adcs R8, R6, #-1895825408
l826: adcHIs R12, R14, R2, ROR #25
l827: adcLSs R11, R14, #1073741830
l828: adc R14, R3, R9, ASR #30
l829: adcHI R10, R3, #54525952
l830: adc R2, R3, R12, LSL R14
l831: adcLTs R1, R12, R10
l832: adc R11, R11, R1
l833: adc R10, R0, #1425408
l834: adc R1, R8, R0, LSR R14
l835: adc R6, R1, R0, ROR R6
l836: adcs R10, R15, #1776
l837: adc R0, R8, R5
l838: adc R7, R11, R2, LSR #3
l839: adcs R14, R2, R5
l840: adc R9, R12, R7
l841: adcLE R12, R6, #3473408
l842: adc R11, R9, R2
l843: adcVC R12, R3, #5439488
l844: adcCC R10, R1, R6, ROR R3
l845: adcGT R5, R2, R10, LSL #11
l846: adcs R8, R14, R11, ROR R10
l847: adcs R2, R11, #96
l848: adcGTs R2, R10, R3
l849: adcNE R12, R8, R4, LSL R14
l850: adcEQs R2, R1, #120
l851: adcHIs R5, R12, #672
l852: adcCSs R0, R11, R12, ASR R14
l853: adcLEs R5, R7, R1, LSL #2
l854: adcHIs R1, R8, #135168
l855: adcs R2, R9, #1073741833
l856: adcVCs R0, R4, #38273024
l857: adcs R0, R8, #8768
l858: adc R0, R11, R14, RRX 
l859: adcLT R2, R0, R7, LSR R7
l860: adcPLs R11, R12, R12, LSR R9
l861: adcLS R9, R7, R10, ASR #16
l862: adcs R0, R0, #1048576
l863: adcs R2, R9, R9, LSL R6
l864: adcs R10, R9, R7
l865: adcEQs R10, R5, R14, LSL R4
l866: adc R10, R8, #288
l867: adcVS R7, R4, R8, ROR #27
l868: adcCC R1, R7, R9, ASR R6
l869: adcLTs R5, R2, R14, LSR R12
l870: adcGT R2, R7, #3392
l871: adc R9, R8, R1, ROR #24
l872: adcVSs R10, R4, R8, LSL R9
l873: adcGE R9, R1, R10, LSR R8
l874: adcVS R6, R12, R7, RRX 
l875: adcNE R8, R3, R7, ROR R9
l876: adcHIs R2, R8, R3, LSL #27
l877: adcs R14, R5, R6, LSL #14
l878: adcs R4, R10, #496
l879: adcGT R12, R12, R11
l880: adcLSs R8, R5, R4, LSL R10
l881: adcCSs R2, R11, R5, LSL R12
l882: adc R7, R12, R3
l883: adcVSs R3, R14, R15
l884: adc R2, R14, R4
l885: adcs R5, R6, R5, ROR #24
l886: adcs R10, R9, R6, LSR #28
l887: adcLE R3, R4, R2
l888: adcs R11, R0, #13312
l889: adcLEs R2, R14, #0
l890: adcLS R9, R5, R4, LSR R12
l891: adcs R10, R4, R5, RRX 
l892: adc R12, R12, R1, LSL #2
l893: adcLT R11, R4, R11
l894: adcVCs R8, R3, R1
l895: adcs R6, R8, #51
l896: adcHIs R3, R14, R6, ROR R10
l897: adcNEs R12, R1, #507510784
l898: adc R11, R7, R4, LSR R0
l899: adc R8, R12, R4, ROR #9
l900: adcNE R10, R14, R9, LSL R12
l901: adc R10, R0, R2, LSR R0
l902: adcVC R1, R8, R12, LSL R1
l903: adcLSs R0, R11, R14
l904: adcCC R5, R6, R3, ROR #3
l905: adcVCs R7, R8, R7, ROR R5
l906: adcLEs R14, R15, R8, LSL #26
l907: adcNEs R8, R2, #2688
l908: adcs R6, R6, R1, LSR #4
l909: adcVSs R3, R7, R7
l910: adcEQs R9, R7, #-1962934272
l911: adcs R2, R10, #-1811939328
l912: adcs R3, R8, R3, LSL #28
l913: adc R10, R15, R5, RRX 
l914: adcEQs R3, R4, R12
l915: adc R0, R11, R12, RRX 
l916: adcLT R3, R7, R12
l917: adcGE R2, R15, R4
l918: adc R11, R6, #376
l919: adcGTs R12, R0, R7, RRX 
l920: adcPLs R4, R4, R3
l921: adc R11, R2, R15, LSL #5
l922: adcs R11, R15, R7, RRX 
l923: adcs R9, R8, R10
l924: adcGT R6, R14, R14, LSR R3
l925: adc R0, R12, R7, ROR #4
l926: adc R6, R14, R9, ASR #23
l927: adcGE R11, R3, R14, ASR #26
l928: adcs R3, R11, R5, LSR #28
l929: adcVS R7, R2, R0, LSR #23
l930: adcs R8, R8, #268435460
l931: adcLT R10, R3, R8
l932: adcNEs R7, R2, R6, LSR R4
l933: adcGT R8, R2, R11, ASR R7
l934: adcPLs R6, R6, R2, ROR #23
l935: adcPL R0, R4, R1, RRX 
l936: adcs R11, R1, R6
l937: adc R8, R14, #-536870905
l938: adc R5, R11, R12, ROR #2
l939: adcGTs R8, R5, #3488
l940: adcLSs R7, R10, R12
l941: adcPL R7, R10, R0
l942: adc R7, R3, R2, RRX 
l943: adcs R3, R15, R12
l944: adc R6, R12, #1073741855
l945: adcLEs R3, R4, R7, ROR #26
l946: adc R10, R4, R6, RRX 
l947: adcLTs R4, R1, R9
l948: adcPLs R12, R9, R11, RRX 
l949: adcGT R6, R0, R1, RRX 
l950: adcNE R6, R6, R5
l951: adc R10, R3, R7, ASR #25
l952: adcs R4, R12, #12992
l953: adcVC R0, R8, R11, ASR R14
l954: adcMIs R4, R5, R2, LSR R3
l955: adcGTs R12, R7, #1536
l956: adc R8, R1, R7, LSL #13
l957: adcLT R6, R11, R9, ROR R4
l958: adcHI R12, R12, R12
l959: adcs R4, R1, #9
l960: adcs R5, R12, R7, LSL #5
l961: adcs R7, R8, R11, LSL #11
l962: adcCSs R7, R15, #256
l963: adc R14, R11, R2
l964: adcs R9, R8, #1020
l965: adcs R11, R3, R10, ASR #29
l966: adcPL R6, R0, R1, ASR #2
l967: adcCC R10, R10, R8, LSL R8
l968: adc R9, R11, R10, RRX 
l969: adc R12, R1, R4
l970: adcLT R9, R10, #872415234
l971: adcs R9, R14, R6
l972: adcVCs R3, R8, R11
l973: adcMIs R11, R0, R5
l974: adcLE R2, R4, R8
l975: adc R11, R7, #1073741826
l976: adcMI R5, R9, R8
l977: adcs R7, R7, R10, ROR R1
l978: adcCCs R11, R1, #33280
l979: adcVCs R4, R5, R6, LSR #15
l980: adcVSs R2, R9, R4, LSL #21
l981: adcLTs R1, R11, R10
l982: adc R10, R8, #131072
l983: adcMI R4, R1, R8, RRX 
l984: adcs R8, R8, R12
l985: adcLTs R3, R6, R9, LSL #4
l986: adcLEs R14, R7, #-1778384896
l987: adcVSs R8, R9, R15, RRX 
l988: adc R0, R8, R1, LSR R6
l989: adc R6, R2, R11, ROR #22
l990: adcVC R10, R10, R1, RRX 
l991: adcLT R6, R8, R10, ROR R7
l992: adc R4, R9, R14, LSL #1
l993: adcMIs R14, R12, #-1610612735
l994: adcs R8, R9, R5, LSL R6
l995: adcCSs R6, R2, R7
l996: adc R5, R11, R1, LSR #14
l997: adcEQ R14, R4, R7, RRX 
l998: adcMIs R0, R14, R0, RRX 
l999: adcs R1, R0, R12, RRX 
l1000: adcs R2, R2, R9, LSR #11
end: b end

