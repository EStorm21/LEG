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
val1: .word 3490711948
next1:ldr R2, val2
b next2
val2: .word 1486826857
next2:ldr R3, val3
b next3
val3: .word 298396270
next3:ldr R4, val4
b next4
val4: .word 1194042169
next4:ldr R5, val5
b next5
val5: .word 3670471475
next5:ldr R6, val6
b next6
val6: .word 1168483378
next6:ldr R7, val7
b next7
val7: .word 4208499747
next7:ldr R8, val8
b next8
val8: .word 1944445774
next8:ldr R9, val9
b next9
val9: .word 4116695254
next9:ldr R10, val10
b next10
val10: .word 954265612
next10:ldr R11, val11
b next11
val11: .word 1909119230
next11:ldr R12, val12
b next12
val12: .word 2717282816
next12:ldr R14, val14
b next14
val14: .word 776049992

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 3670877089
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 4108946711
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 876147009
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 4138505636
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 4197509315
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 3015471022
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 536105266
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 2825874897
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3294997053
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 4195258426
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 1839354848
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 2894870302
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 3178747105
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 1543027024
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 1932602406
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 2385861860
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 3628058523
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 426965962
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 3706076098
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 602209043
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 2213079213
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: eorNEs R11, R4, R0, RRX 
l2: eorGE R7, R15, R4
l3: eorNE R10, R3, R5, RRX 
l4: eor R6, R1, R12, ASR #6
l5: eorGE R11, R1, R5, RRX 
l6: eors R7, R11, R7, LSR R1
l7: eors R10, R3, #36864
l8: eorNE R4, R9, R3
l9: eorHIs R11, R9, R0, LSR R8
l10: eorVS R5, R2, R2, ROR R3
l11: eor R6, R1, R9, LSL R8
l12: eors R10, R11, R1, LSL #0
l13: eorVSs R3, R7, #3555328
l14: eor R9, R0, R15, LSR #17
l15: eors R1, R9, #119
l16: eorVSs R3, R12, R11, ROR #1
l17: eors R1, R7, #1168
l18: eor R6, R1, #159383552
l19: eor R6, R3, R7, LSL #8
l20: eorGTs R9, R4, #1241513984
l21: eorPL R9, R1, R7
l22: eorVC R10, R1, R14, ASR #16
l23: eorCSs R7, R3, R14, ASR R8
l24: eors R7, R6, #3801088
l25: eors R3, R15, R11
l26: eors R1, R10, #-1124073472
l27: eorLS R9, R11, R10, LSL #19
l28: eors R2, R1, R15
l29: eors R3, R4, R9, LSR R11
l30: eorCS R10, R10, #15728640
l31: eors R2, R9, R3, LSL #6
l32: eorNEs R5, R10, R12, LSL R0
l33: eor R1, R14, R14, LSR R1
l34: eor R7, R9, #55808
l35: eors R1, R6, R11, LSR R5
l36: eor R5, R11, R6, ASR R12
l37: eorHI R4, R1, R14, RRX 
l38: eorLTs R11, R14, R7, RRX 
l39: eorCC R7, R9, R8
l40: eorHI R9, R10, R3
l41: eors R14, R8, R15
l42: eorPL R2, R7, #880
l43: eors R10, R3, R9, ASR #12
l44: eors R6, R14, R7, RRX 
l45: eorPLs R12, R10, #261095424
l46: eor R0, R2, R12, RRX 
l47: eorLSs R0, R0, #55
l48: eors R5, R3, #15104
l49: eorCS R11, R11, R4, ROR R8
l50: eors R10, R1, R11
l51: eorLS R11, R5, R4, LSR #28
l52: eor R4, R0, R4
l53: eorGE R6, R0, #180
l54: eorLE R0, R5, R2, ASR R2
l55: eor R3, R8, #137
l56: eors R4, R9, R5
l57: eorNEs R6, R8, R0
l58: eor R9, R5, R10, RRX 
l59: eors R3, R8, R11
l60: eors R3, R11, R10, ASR R14
l61: eorVCs R8, R9, R0
l62: eorLT R12, R4, R4, LSL #0
l63: eorNEs R14, R14, R0, ROR #1
l64: eorPLs R3, R2, R9
l65: eors R8, R15, R9
l66: eorVS R9, R4, R9, RRX 
l67: eorCSs R3, R5, #128
l68: eorMI R10, R14, R1, RRX 
l69: eorLT R6, R10, R6, ROR #13
l70: eorHIs R10, R4, #-1040187392
l71: eor R12, R6, R4
l72: eorVC R2, R4, #976
l73: eors R4, R12, #49
l74: eorMIs R5, R2, #2555904
l75: eorLEs R6, R1, #139264
l76: eorLEs R4, R15, #11264
l77: eors R1, R7, #536870912
l78: eorHI R14, R14, #114688
l79: eorGTs R2, R12, R2, ROR R6
l80: eorCC R8, R2, R14, ROR #3
l81: eorVS R6, R0, R3, RRX 
l82: eors R11, R5, R7, LSR R14
l83: eor R5, R1, R7, LSL #17
l84: eorPL R10, R2, R7
l85: eorGT R6, R7, R9, ASR R12
l86: eorGE R14, R8, R3
l87: eorVS R0, R1, R7
l88: eors R8, R15, R4, RRX 
l89: eorLE R0, R5, R2
l90: eorCS R8, R4, #4032
l91: eorVC R4, R9, R4, ASR R8
l92: eor R3, R10, R0
l93: eor R12, R10, R3, LSL R8
l94: eors R8, R14, R10, ASR R10
l95: eorVC R11, R14, R1
l96: eorCS R3, R8, #557842432
l97: eorLSs R4, R0, R11
l98: eor R0, R8, R12, LSL #11
l99: eorCCs R9, R15, R11
l100: eorLT R11, R8, #2359296
l101: eorEQ R12, R6, R15
l102: eor R2, R2, R9, LSL #31
l103: eorVCs R3, R10, R5
l104: eorEQs R7, R10, R7, RRX 
l105: eorVSs R1, R3, #190464
l106: eorGEs R7, R0, R8
l107: eorVSs R3, R8, R14
l108: eors R12, R14, R7, LSL R12
l109: eorCC R0, R14, R11, LSR #9
l110: eorCC R10, R9, R1, ROR #28
l111: eors R5, R14, R1
l112: eorHI R1, R5, R10, ROR #30
l113: eorLS R7, R4, R9
l114: eorVCs R11, R5, R3
l115: eorLEs R5, R1, R7
l116: eorGE R2, R1, #16056320
l117: eors R0, R3, #70
l118: eors R7, R14, R11, ROR #5
l119: eorGEs R1, R2, #1140850691
l120: eor R2, R7, R15, ROR #2
l121: eorCSs R1, R1, R9
l122: eor R14, R11, R0, RRX 
l123: eorMIs R12, R7, #11008
l124: eorVS R1, R4, R3
l125: eorNE R14, R15, R10, LSR #11
l126: eorEQs R11, R7, #-738197504
l127: eor R9, R4, R3, ASR #22
l128: eorGE R12, R11, R9, LSR R1
l129: eorGEs R1, R14, R9, LSL R12
l130: eorLT R9, R10, R12, LSR #6
l131: eorCC R6, R6, R10
l132: eors R14, R0, #3031040
l133: eors R6, R11, R8
l134: eors R1, R15, R5
l135: eorVS R10, R7, R15
l136: eors R10, R14, #-1879048187
l137: eors R8, R10, R3, ROR #20
l138: eors R8, R3, R2, ASR R4
l139: eorCCs R8, R6, #8448
l140: eors R0, R15, #1073741867
l141: eorHI R8, R7, R0, ASR R7
l142: eor R11, R5, R7
l143: eor R3, R11, R15
l144: eor R8, R9, R10, LSL R10
l145: eorCSs R14, R8, R7, LSL #29
l146: eorMIs R12, R3, R3, LSR R3
l147: eorGTs R10, R10, #39168
l148: eorPLs R9, R12, R2, RRX 
l149: eor R14, R2, R11
l150: eor R2, R10, R7, LSR R5
l151: eorGE R6, R4, R3, LSR R11
l152: eors R10, R9, R10, ASR R7
l153: eor R11, R5, R14, ROR R6
l154: eorEQs R4, R4, R3, ROR R10
l155: eorLSs R5, R5, R0, RRX 
l156: eors R2, R12, #175112192
l157: eorEQ R7, R14, R5, ASR R11
l158: eorLEs R14, R15, R12, LSL #28
l159: eors R3, R5, R6, LSL #25
l160: eorGE R0, R9, R8, ROR #16
l161: eorGEs R5, R8, #1342177295
l162: eors R7, R2, R7
l163: eorEQs R7, R14, R0, RRX 
l164: eors R2, R3, R11, ASR R14
l165: eorCSs R8, R2, R7
l166: eors R0, R5, R14
l167: eorNE R9, R3, R6, ASR #28
l168: eorCS R3, R4, #2588672
l169: eor R11, R10, R2, ASR #11
l170: eorGT R10, R14, R14
l171: eors R5, R8, #8896
l172: eor R11, R12, R12
l173: eors R3, R15, R4
l174: eorMIs R12, R4, R12
l175: eorHIs R0, R9, R12, RRX 
l176: eorNE R3, R2, R8
l177: eor R4, R5, R5
l178: eorPLs R14, R8, R0, ROR #23
l179: eor R1, R6, R1, LSR #8
l180: eor R9, R5, #10092544
l181: eorGTs R14, R15, R9, LSL #23
l182: eors R9, R3, #708
l183: eorLT R1, R12, R0, RRX 
l184: eor R5, R7, #75497472
l185: eorGTs R2, R8, R1, RRX 
l186: eorEQs R14, R15, R6
l187: eorNE R2, R5, R12, ASR R12
l188: eorLTs R0, R0, #2496
l189: eor R11, R12, #507904
l190: eors R9, R8, R12, RRX 
l191: eors R9, R7, #-1342177276
l192: eorPL R6, R9, #63176704
l193: eorEQ R11, R10, #61696
l194: eorLSs R8, R14, R6, RRX 
l195: eorCSs R11, R12, R3, ROR R1
l196: eorEQs R14, R3, R4, LSR #17
l197: eorLT R2, R15, R0
l198: eorLT R12, R8, R11
l199: eors R10, R4, R9, ASR #8
l200: eors R14, R10, R15
l201: eorVCs R9, R14, R2, RRX 
l202: eors R5, R6, #236544
l203: eorGTs R12, R8, #6291456
l204: eorVS R0, R8, #3328
l205: eors R14, R1, #-2147483637
l206: eors R2, R4, R7, ROR #27
l207: eor R12, R0, R9
l208: eor R11, R0, #1344
l209: eorCCs R8, R7, R2, ASR #31
l210: eor R10, R8, R10
l211: eorMI R14, R8, #1736704
l212: eor R7, R1, R8, ASR R11
l213: eorGTs R6, R4, R8
l214: eor R12, R1, #8650752
l215: eors R9, R8, #128974848
l216: eor R8, R5, R7, LSR R11
l217: eorLE R9, R12, R2, ASR #20
l218: eors R11, R2, R8, ROR R0
l219: eorVCs R9, R5, R5, LSL R6
l220: eor R6, R4, R12
l221: eorVCs R1, R5, R0, ROR R10
l222: eorLE R5, R8, #2490368
l223: eorVC R9, R14, R12, ROR R4
l224: eors R8, R15, R2
l225: eors R6, R9, R7, ROR R8
l226: eors R2, R0, R14
l227: eor R11, R4, #3686400
l228: eors R7, R10, R8, LSR #0
l229: eors R14, R10, R4, ASR R8
l230: eorVS R3, R1, #94371840
l231: eors R3, R14, R4, ROR R0
l232: eors R3, R5, R0
l233: eorVS R5, R10, R11, LSL R7
l234: eorGTs R5, R2, R4, LSR R2
l235: eor R3, R3, #15400960
l236: eorCC R0, R4, R0, LSR R10
l237: eorLE R10, R12, R7, ROR #25
l238: eorVCs R3, R3, R2
l239: eorEQs R8, R14, R10
l240: eor R6, R8, R6, RRX 
l241: eorCCs R0, R5, R14, ASR R8
l242: eor R7, R2, R6, LSR R11
l243: eors R8, R3, R5, ASR R11
l244: eor R12, R15, R8, RRX 
l245: eorCS R11, R11, R2
l246: eorEQ R6, R1, #2013265921
l247: eors R9, R15, R4, ASR #17
l248: eorPLs R8, R9, #3712
l249: eor R5, R3, R0, LSR R12
l250: eorMI R0, R0, R3, ASR #5
l251: eorEQs R6, R1, R8, LSR #13
l252: eorCCs R12, R12, #-1073741781
l253: eorLEs R2, R9, #2916352
l254: eorPL R7, R1, #63963136
l255: eors R10, R4, R14, LSR R3
l256: eorGT R9, R8, R11, ASR R7
l257: eorLEs R6, R14, R6, RRX 
l258: eorGE R8, R8, R10
l259: eorVS R5, R11, R6, LSL R4
l260: eor R1, R14, R15
l261: eors R14, R10, R7, ROR #26
l262: eors R5, R4, R12, LSR R9
l263: eorEQs R6, R6, R1, ROR R0
l264: eorGEs R11, R14, R1, ASR R8
l265: eorMI R4, R1, R15, RRX 
l266: eorGT R9, R2, R11
l267: eor R4, R5, R10, ROR #1
l268: eors R11, R6, R0, RRX 
l269: eorVC R2, R1, R7, RRX 
l270: eor R12, R4, R15
l271: eors R1, R14, R4
l272: eor R10, R8, R10, ASR R12
l273: eor R0, R7, #832
l274: eorNE R4, R9, R12, ASR #18
l275: eor R4, R12, R5, ASR #4
l276: eor R2, R1, R10, ASR R10
l277: eors R9, R1, R4, ROR #11
l278: eorEQs R12, R7, R7, LSR R4
l279: eors R5, R8, R10
l280: eorCC R3, R4, R7, ROR #24
l281: eorVCs R10, R10, #381681664
l282: eor R8, R11, R0, LSR #17
l283: eorVC R7, R6, #162529280
l284: eors R5, R9, #110592
l285: eorNEs R11, R6, R11, RRX 
l286: eorEQ R3, R14, #62914560
l287: eorGE R9, R0, R14, LSL R2
l288: eor R14, R7, #-2147483630
l289: eorMIs R5, R14, R15
l290: eorCC R4, R3, R9
l291: eorCCs R7, R3, R6, LSL #21
l292: eorVS R1, R4, R8, LSR #15
l293: eorPL R6, R10, R8, ASR R6
l294: eors R10, R4, R12, ROR R10
l295: eorVS R1, R5, R4, ROR #12
l296: eorLS R10, R15, R3, ASR #5
l297: eorGE R11, R11, R15
l298: eor R3, R0, R3, LSR #11
l299: eorLTs R9, R11, R2
l300: eor R1, R6, #1811939328
l301: eorLS R11, R12, R2, ROR #24
l302: eorCSs R1, R3, R9, RRX 
l303: eorPL R11, R12, R12, LSR R14
l304: eorLS R10, R10, #252928
l305: eors R7, R7, #671088642
l306: eorEQ R3, R12, #536870924
l307: eorMIs R4, R15, R4, LSR #17
l308: eors R1, R7, #641728512
l309: eor R5, R6, R6, ROR #25
l310: eorVCs R0, R14, R10, ASR #19
l311: eorLT R4, R1, R8, ROR R6
l312: eorGEs R0, R2, R14, ROR R2
l313: eorCC R1, R4, R15, ROR #4
l314: eorVCs R7, R12, R15, LSR #17
l315: eorVSs R2, R12, R7, LSL #16
l316: eorLEs R2, R9, #1808
l317: eorNEs R7, R3, R12, ASR #5
l318: eorEQs R9, R7, #-620756992
l319: eor R9, R11, R2, ROR #4
l320: eorLT R6, R10, R12, LSL #26
l321: eorCS R3, R9, #113664
l322: eorEQs R3, R11, R7, ROR R5
l323: eors R3, R6, R11, LSL #3
l324: eorGT R7, R1, R1, RRX 
l325: eorCSs R2, R15, R14, LSL #12
l326: eors R11, R7, R5
l327: eorHI R3, R11, R12, LSR #21
l328: eor R14, R1, R9, LSL R14
l329: eorVC R12, R2, #24903680
l330: eorMI R1, R11, R7, LSL R3
l331: eorVCs R5, R5, R15
l332: eorCC R14, R5, R11, LSL #23
l333: eor R10, R4, R0, ASR #22
l334: eorNEs R10, R2, R8, RRX 
l335: eor R1, R1, R15, LSL #21
l336: eors R4, R7, #228589568
l337: eor R14, R11, R2, LSL R9
l338: eorCC R2, R11, R1, LSR R5
l339: eorEQ R0, R14, R6, RRX 
l340: eorCCs R11, R15, R3
l341: eorCS R0, R4, R14, LSL R4
l342: eorLTs R4, R15, R0, ROR #2
l343: eorEQs R6, R12, R2
l344: eorGTs R4, R10, R6, ASR #6
l345: eorLS R9, R9, R7, ROR #31
l346: eors R12, R5, R4, RRX 
l347: eorCSs R14, R6, R15
l348: eor R9, R15, #1616
l349: eor R4, R3, R2, LSR #17
l350: eorMIs R1, R5, R1
l351: eor R12, R12, R4, LSL #23
l352: eors R8, R4, R2, LSR #29
l353: eorCSs R14, R0, R0
l354: eorLSs R6, R14, R4, ROR R4
l355: eorGEs R3, R0, R12, ASR #26
l356: eorGE R2, R10, R8
l357: eorGE R3, R7, #-2147483612
l358: eorMI R14, R14, #213909504
l359: eorVCs R2, R14, R7, LSL #8
l360: eorHI R10, R15, R4, RRX 
l361: eorHIs R2, R8, R0
l362: eor R9, R11, R10, ASR #2
l363: eors R8, R3, R2, ASR R5
l364: eorLS R7, R15, #37
l365: eorEQ R12, R14, R0, LSL #19
l366: eor R1, R4, R5
l367: eors R5, R15, R5
l368: eorLT R9, R10, #79691776
l369: eorPL R12, R14, R14, ASR R8
l370: eorHI R8, R0, R3, LSL #7
l371: eors R0, R8, R3
l372: eorVC R14, R9, R8, LSL R0
l373: eors R8, R1, R5
l374: eorCCs R4, R12, #464
l375: eor R0, R12, R12, RRX 
l376: eorVCs R11, R8, R6, LSL R8
l377: eorLEs R1, R15, R12, ASR #13
l378: eorGT R11, R5, #268435465
l379: eorGEs R10, R12, R5
l380: eor R1, R4, #268435457
l381: eorLSs R9, R0, #80
l382: eor R8, R14, R6
l383: eors R5, R2, R1, LSR R7
l384: eorVSs R7, R14, R4, ASR R7
l385: eor R2, R3, #6029312
l386: eors R5, R5, R1, ROR R0
l387: eors R11, R10, R9, LSL R4
l388: eorCC R5, R6, #1879048202
l389: eorLS R0, R12, R9
l390: eor R1, R9, #2883584
l391: eorCCs R6, R12, R7, RRX 
l392: eorHIs R8, R14, #6400
l393: eorVCs R11, R0, R10
l394: eors R1, R3, R9, LSR #15
l395: eorPLs R6, R5, R7
l396: eors R2, R2, R3, ASR R8
l397: eors R14, R14, #972
l398: eorNEs R6, R9, #268435467
l399: eorLEs R12, R3, R10, RRX 
l400: eorEQ R3, R0, R3
l401: eorLS R5, R8, R2, ROR R1
l402: eor R0, R7, R14
l403: eorEQ R4, R15, R1, RRX 
l404: eors R7, R4, R2
l405: eorPL R7, R0, R10, ASR #13
l406: eorLSs R1, R9, #201728
l407: eorVS R10, R5, R1, ROR #17
l408: eorLSs R8, R0, R0, ASR R7
l409: eorLTs R5, R11, R9
l410: eors R2, R0, #544
l411: eorNE R14, R1, R12, RRX 
l412: eorEQ R3, R6, #232783872
l413: eorGT R0, R15, R2
l414: eor R4, R14, R15, RRX 
l415: eorHI R5, R10, R7, LSR #25
l416: eorLT R2, R6, #417792
l417: eors R3, R14, #1703936
l418: eorPLs R10, R14, R0, RRX 
l419: eorMI R7, R10, R14
l420: eorCSs R10, R7, R8, ROR R10
l421: eorCSs R4, R4, R10, ASR R3
l422: eor R2, R6, #268435470
l423: eorHIs R10, R14, R7, LSR R14
l424: eorHI R11, R12, R7, ASR R12
l425: eors R3, R7, R1, ASR R4
l426: eorNEs R9, R10, #24903680
l427: eorHI R5, R3, R6, ASR R6
l428: eorLE R6, R3, R15
l429: eor R0, R4, R2
l430: eors R7, R6, #234496
l431: eors R0, R7, R15, RRX 
l432: eorPLs R0, R0, #-536870909
l433: eorGEs R1, R10, #-1006632957
l434: eors R11, R7, #1296
l435: eorHI R3, R4, R5, LSL R10
l436: eors R9, R5, R9
l437: eorLT R11, R12, R1, LSL R11
l438: eor R14, R2, R14
l439: eorVS R3, R2, R4, RRX 
l440: eorCCs R5, R5, R10, ROR #12
l441: eors R4, R3, R3, RRX 
l442: eorGTs R5, R5, R7
l443: eorEQs R9, R9, #492
l444: eorLTs R2, R5, R8, LSL R1
l445: eorLE R12, R2, #708837376
l446: eorEQs R3, R0, R14, RRX 
l447: eors R10, R10, #-738197503
l448: eor R6, R8, #-134217727
l449: eors R5, R1, #1073741844
l450: eors R9, R0, R15, ASR #24
l451: eorGT R14, R10, R11, LSL R2
l452: eor R3, R5, #36864
l453: eors R1, R2, #1073741878
l454: eor R6, R3, #1536
l455: eorGT R9, R14, R3, RRX 
l456: eorVSs R1, R1, R8
l457: eorLEs R14, R1, R9, RRX 
l458: eors R0, R12, #3232
l459: eor R12, R3, #1392508928
l460: eor R4, R6, R14, RRX 
l461: eor R5, R6, #44032
l462: eorLSs R4, R14, R4, LSR #19
l463: eorMIs R7, R4, R8
l464: eorVSs R6, R0, R15, ASR #28
l465: eors R8, R0, #1157627904
l466: eorGEs R8, R9, R5, LSL R6
l467: eor R10, R9, R4, RRX 
l468: eor R8, R3, R8, ROR R6
l469: eorMI R8, R6, R15, RRX 
l470: eorNE R3, R14, #393216
l471: eorPL R4, R5, R12
l472: eorLSs R5, R7, R0
l473: eorNEs R10, R8, #822083584
l474: eors R10, R11, R15
l475: eorLEs R12, R12, R2, LSR R12
l476: eorNEs R9, R0, R9, LSL #12
l477: eorNEs R14, R7, R12, LSL R10
l478: eors R11, R6, R4, RRX 
l479: eor R1, R11, R15, LSR #10
l480: eorVS R6, R7, R3
l481: eorLSs R8, R9, R0
l482: eorGT R8, R2, #182272
l483: eorGT R5, R14, R0
l484: eor R8, R1, R6, LSL R11
l485: eorLS R2, R15, R1
l486: eors R10, R8, R11, LSR R11
l487: eor R6, R12, R0
l488: eors R3, R2, R3
l489: eors R6, R1, R1, ASR #15
l490: eorVSs R4, R8, R12, ROR #26
l491: eors R10, R0, R5, LSR #14
l492: eors R3, R3, R15
l493: eorLSs R0, R6, R4
l494: eorGE R6, R2, R1, LSL #20
l495: eorLEs R1, R11, #22
l496: eorLSs R1, R1, R11, ROR R3
l497: eorVS R0, R11, R6, LSR #27
l498: eorEQs R11, R5, R10, RRX 
l499: eorLT R1, R4, R12, LSL #2
l500: eorCCs R6, R15, R5, RRX 
l501: eor R10, R14, R9
l502: eor R7, R12, R8
l503: eorGE R11, R1, #20447232
l504: eorNEs R3, R14, R8, LSL #13
l505: eor R11, R12, R0, RRX 
l506: eors R12, R1, R2, LSR R2
l507: eorVC R9, R5, R5, ROR R7
l508: eorGEs R12, R10, R2, ROR #6
l509: eor R12, R8, R1, LSR R7
l510: eor R9, R10, R5, LSL R12
l511: eors R9, R1, R5
l512: eor R1, R6, R1, ASR #5
l513: eorGT R5, R15, #5312
l514: eor R8, R7, R6
l515: eor R0, R5, R0, RRX 
l516: eorMIs R10, R0, #196083712
l517: eorNE R4, R7, R15
l518: eorHI R10, R7, #425984
l519: eorVC R4, R14, R15
l520: eor R2, R1, R10, LSL R3
l521: eorGT R6, R10, R9
l522: eorGT R0, R11, R4
l523: eors R9, R10, #-805306362
l524: eorVS R10, R8, R7, LSR R7
l525: eorCCs R0, R3, R11
l526: eorLS R6, R1, R15, RRX 
l527: eorLTs R2, R14, #206
l528: eorNEs R11, R10, #150528
l529: eorGE R7, R9, #-1308622848
l530: eors R14, R1, R4
l531: eorVS R14, R9, #2176
l532: eorEQ R10, R14, R7
l533: eorLSs R7, R10, #7143424
l534: eorGTs R4, R8, R1, LSR R11
l535: eors R3, R9, R6
l536: eorGEs R14, R15, #696320
l537: eorCSs R6, R15, #1680
l538: eors R0, R3, R5
l539: eorLSs R4, R0, #1073741841
l540: eors R1, R5, R12
l541: eorLT R7, R14, R7, LSL R4
l542: eor R2, R2, R15, LSR #29
l543: eorCC R8, R12, R9, LSR #31
l544: eorNE R1, R1, #148
l545: eors R3, R9, R12
l546: eors R11, R0, #4016
l547: eor R4, R0, #3600
l548: eorLTs R0, R15, #167772160
l549: eor R5, R0, R5, LSL R14
l550: eorEQs R14, R3, R12, LSR R8
l551: eor R8, R8, R2, RRX 
l552: eors R10, R8, R11, RRX 
l553: eors R10, R4, R15, ROR #26
l554: eor R0, R4, R3
l555: eorMIs R7, R9, R4
l556: eor R11, R15, #254976
l557: eor R10, R7, #38
l558: eorPLs R1, R3, R14
l559: eorGE R14, R2, R2, LSR R5
l560: eorCS R7, R3, #589824
l561: eor R7, R4, R0, LSL #19
l562: eorNEs R4, R5, #41
l563: eors R10, R9, #2113536
l564: eor R0, R9, R10, LSR R6
l565: eor R0, R12, R7, ASR R6
l566: eors R7, R11, R0, LSL #30
l567: eorHI R1, R9, R9, ASR #8
l568: eors R2, R11, #225280
l569: eor R1, R6, R0, LSR #10
l570: eorNEs R5, R6, #73400320
l571: eors R7, R14, R7, ROR R7
l572: eorMIs R5, R12, R4
l573: eors R2, R1, R10, ASR R11
l574: eors R9, R12, R8, ASR #24
l575: eors R9, R8, R12
l576: eors R4, R2, R3
l577: eorMIs R10, R8, R4, RRX 
l578: eorLT R11, R0, R7, LSR #9
l579: eorGEs R1, R12, R4
l580: eorLTs R8, R14, R8, ROR #19
l581: eors R9, R1, R7
l582: eors R0, R5, #192
l583: eors R12, R5, R14, RRX 
l584: eors R1, R7, R9, LSR #9
l585: eorCS R11, R3, R6, LSR R3
l586: eor R1, R9, R5, ROR #3
l587: eorHIs R6, R15, #1073741835
l588: eorGT R10, R12, #438272
l589: eorGTs R11, R11, R14
l590: eorEQs R7, R14, R6, ASR R9
l591: eorGEs R14, R11, R6, ASR #1
l592: eorLT R2, R2, R5
l593: eors R3, R14, R14, RRX 
l594: eorLEs R12, R8, R1
l595: eors R9, R12, R14
l596: eor R3, R9, #-2147483634
l597: eorCCs R11, R5, R7, LSR R1
l598: eorLT R0, R11, R6
l599: eorNE R14, R0, R5, ASR R7
l600: eor R9, R3, #38535168
l601: eorNEs R14, R1, #10747904
l602: eors R9, R10, #-134217726
l603: eors R5, R14, R8
l604: eor R4, R8, R7
l605: eor R3, R3, R11, ROR #27
l606: eors R3, R10, R3, ASR #27
l607: eor R2, R2, #-1107296256
l608: eors R0, R1, R3, RRX 
l609: eor R4, R4, R3, LSL #22
l610: eor R9, R3, R10
l611: eors R3, R5, R8, ROR #15
l612: eor R1, R14, R0
l613: eor R12, R5, R8, LSL #27
l614: eorGE R0, R12, R0
l615: eorGE R14, R8, R9, LSL #27
l616: eors R6, R9, R10
l617: eorGE R7, R15, R15
l618: eorVSs R3, R6, #6208
l619: eors R5, R2, #487424
l620: eorLSs R11, R11, #58982400
l621: eorGEs R9, R12, R1, ASR #20
l622: eorVS R12, R12, R4, LSL #21
l623: eorCSs R11, R4, R15
l624: eors R12, R7, R5, LSR R4
l625: eors R10, R8, R1, ASR #2
l626: eors R9, R8, R2, LSL R4
l627: eorNE R14, R14, R2, LSR #28
l628: eor R0, R10, R11
l629: eorGT R5, R2, R0, ASR #0
l630: eorCSs R1, R14, R14, RRX 
l631: eorVCs R6, R8, #3296
l632: eorGEs R14, R9, R2
l633: eorCC R4, R3, R11, RRX 
l634: eorCCs R2, R3, R1, RRX 
l635: eorLS R6, R1, R2, ROR R5
l636: eor R10, R14, R5, ROR R12
l637: eorVS R0, R11, R6, RRX 
l638: eors R0, R8, #53477376
l639: eorPLs R7, R8, R5, ASR #28
l640: eors R4, R11, R12, LSL R1
l641: eorMIs R8, R1, #434176
l642: eorMI R2, R14, R0, LSR #11
l643: eor R14, R2, R14
l644: eors R3, R7, #573440
l645: eorLE R6, R10, R11, RRX 
l646: eorEQ R14, R8, #6144
l647: eorEQs R12, R0, #2240
l648: eors R0, R11, R1, ROR R2
l649: eorLT R14, R10, R14, ASR R2
l650: eor R0, R15, #63700992
l651: eors R0, R4, R2
l652: eors R2, R10, R5, RRX 
l653: eor R4, R0, R9
l654: eors R4, R11, R4
l655: eor R10, R14, R0, ROR R7
l656: eor R7, R8, R14, ASR R9
l657: eors R12, R8, #111616
l658: eorVSs R6, R0, R2, LSR #8
l659: eors R12, R11, R12, LSL R9
l660: eor R9, R1, #644
l661: eorGTs R3, R15, R11
l662: eorVCs R9, R4, R12, ASR #8
l663: eors R11, R7, #181
l664: eorVS R6, R11, #464
l665: eorLT R6, R8, #2637824
l666: eorEQ R7, R0, R2, RRX 
l667: eorHIs R1, R14, R2, RRX 
l668: eor R1, R9, R14, RRX 
l669: eorEQ R11, R3, #184549376
l670: eor R6, R9, R12, RRX 
l671: eors R3, R6, R12, RRX 
l672: eorLSs R6, R7, R2, ASR #0
l673: eors R8, R4, R15
l674: eorLSs R4, R12, R14, LSR R1
l675: eorNE R5, R1, R6, ASR R5
l676: eorVC R5, R10, R3, RRX 
l677: eor R2, R3, R10, LSL R3
l678: eorHIs R8, R11, R2
l679: eorGEs R3, R14, R0
l680: eor R6, R8, R15, LSL #28
l681: eorLTs R5, R1, R7
l682: eorMI R10, R3, R10, ROR #16
l683: eors R14, R0, R1
l684: eor R3, R2, #-1342177280
l685: eorEQs R1, R11, #61
l686: eorNE R1, R5, R5, ASR #23
l687: eorPLs R12, R12, R8
l688: eorHI R10, R0, R12, RRX 
l689: eorVC R3, R5, R9
l690: eorNE R5, R10, #79691776
l691: eorLEs R6, R10, R9
l692: eors R10, R15, R4
l693: eorCSs R6, R7, R11
l694: eorMIs R2, R3, R4, LSR #15
l695: eors R1, R7, R14, LSR R0
l696: eors R11, R7, R15, RRX 
l697: eors R5, R4, R9, LSR R1
l698: eorGEs R7, R5, #-1191182336
l699: eors R8, R7, #2293760
l700: eorGE R2, R15, R11, ROR #24
l701: eorVCs R4, R4, R5, RRX 
l702: eorGT R4, R6, R14, LSL #27
l703: eorCC R7, R7, R1
l704: eor R6, R0, #45
l705: eorLS R2, R6, R10, LSL #23
l706: eor R10, R5, R11
l707: eors R4, R8, R10, LSL R14
l708: eorMIs R14, R10, R12, ASR R2
l709: eorLT R1, R10, R8, RRX 
l710: eor R14, R9, R0, ROR R8
l711: eorNEs R7, R10, R3, ROR R4
l712: eorLSs R4, R15, #61440
l713: eorLE R8, R8, #55
l714: eorMI R5, R14, #12544
l715: eorVC R0, R5, R8, ASR #11
l716: eor R3, R6, R15, ROR #20
l717: eorGT R1, R12, #356352
l718: eorLEs R14, R5, R6
l719: eors R1, R4, #20
l720: eorPLs R5, R8, R7, LSR R11
l721: eor R6, R11, R0, RRX 
l722: eorEQs R11, R10, R11
l723: eor R4, R4, R8, LSR #4
l724: eorNE R11, R4, #5120
l725: eorLSs R1, R1, R5, ROR R9
l726: eors R9, R9, #7536640
l727: eor R10, R11, R5, RRX 
l728: eorVS R6, R7, R4
l729: eorLSs R11, R6, #163
l730: eorVC R3, R6, R4
l731: eors R4, R1, R10, ASR R2
l732: eorGTs R10, R8, R8, ROR #31
l733: eors R12, R1, R4, ROR #30
l734: eorGT R11, R12, R7
l735: eorGT R4, R1, R0, LSR R7
l736: eorNEs R8, R14, #252
l737: eorLEs R8, R2, #14592
l738: eorMI R7, R1, R1, ROR R9
l739: eors R10, R8, R8, LSL R6
l740: eorGTs R8, R12, R10
l741: eor R10, R1, #-889192448
l742: eorEQs R10, R10, #294912
l743: eor R3, R1, #39936
l744: eorEQ R2, R7, #109051904
l745: eors R0, R12, R14, ROR #7
l746: eorHI R3, R3, #576
l747: eorPLs R8, R15, R7, ASR #18
l748: eorGTs R7, R9, R6, ASR R3
l749: eorVSs R14, R5, R14, LSR R3
l750: eorMI R6, R5, #688128
l751: eor R11, R1, #196083712
l752: eor R8, R7, R7
l753: eorHIs R11, R10, R0, ROR #17
l754: eors R0, R3, R0, LSR R1
l755: eors R5, R3, R1
l756: eorEQs R0, R14, R4, LSR R3
l757: eorGT R6, R2, #1020
l758: eors R0, R10, R14, LSR #22
l759: eor R10, R10, R12, LSR #5
l760: eors R12, R12, R1, RRX 
l761: eorLEs R2, R2, R10, ASR R8
l762: eorLS R0, R5, R4, LSR R7
l763: eorGT R6, R14, #227540992
l764: eors R11, R8, R8, LSR #20
l765: eorCCs R5, R11, #434176
l766: eors R6, R10, R12, RRX 
l767: eorCCs R3, R4, R15
l768: eorNEs R3, R6, R9, ROR R9
l769: eorLTs R5, R3, R5
l770: eorHIs R11, R5, R7, LSR R2
l771: eor R7, R10, R6
l772: eorCC R8, R14, #728
l773: eor R11, R0, R15, ASR #19
l774: eorVCs R8, R4, R10, RRX 
l775: eors R5, R8, R3, ASR R8
l776: eorNE R6, R1, R8, ROR R3
l777: eorHIs R14, R0, R7, ASR #9
l778: eorCS R1, R12, R2
l779: eorGEs R8, R7, R11, ROR #29
l780: eors R9, R2, R4
l781: eorLS R6, R11, R0, ROR R6
l782: eor R8, R0, #413696
l783: eorVC R8, R9, R2, ROR #3
l784: eorEQ R10, R7, #144
l785: eor R6, R1, R8
l786: eors R12, R3, R7, ROR R7
l787: eors R10, R5, R12, ASR #6
l788: eorGT R1, R15, #-2147483634
l789: eor R11, R11, #181403648
l790: eor R10, R5, R11, ROR R11
l791: eor R0, R10, R0
l792: eorGE R2, R3, R4, ROR #24
l793: eor R4, R8, #520093696
l794: eorCSs R4, R11, R6, RRX 
l795: eors R6, R14, R10, LSR #11
l796: eorHIs R3, R10, R12
l797: eorMI R0, R9, R4, RRX 
l798: eorVS R0, R6, R14, LSR R4
l799: eorEQ R0, R6, R4
l800: eors R5, R3, #211968
l801: eor R1, R10, #64512
l802: eor R10, R7, R5, LSR R12
l803: eorNE R10, R14, #54525952
l804: eor R5, R8, R11, ASR R11
l805: eorGEs R7, R6, R7, RRX 
l806: eor R0, R8, R8
l807: eorGT R6, R8, R4, ASR #2
l808: eorNEs R10, R7, R8, ROR #22
l809: eorHI R5, R10, R3, RRX 
l810: eorLE R6, R14, R14
l811: eors R5, R7, R4
l812: eor R1, R1, R14, ASR #12
l813: eorCSs R3, R11, R7
l814: eors R14, R6, R3, ROR R2
l815: eorGE R4, R10, R9, LSR #2
l816: eor R8, R5, #1929379840
l817: eors R0, R1, R3, LSL R10
l818: eor R1, R4, R3, LSL #4
l819: eorGE R9, R4, #-536870911
l820: eorGT R3, R3, R2, ASR #17
l821: eors R10, R5, R4, LSL #4
l822: eorGTs R3, R3, R4, LSR #1
l823: eors R11, R9, R4, ASR R6
l824: eorCSs R11, R5, R15
l825: eors R12, R7, R3
l826: eorEQ R0, R15, R2, ASR #30
l827: eor R12, R15, R7, RRX 
l828: eorCC R14, R12, R4
l829: eorCSs R12, R4, R2
l830: eorVSs R0, R10, R9, ROR #28
l831: eorVCs R4, R9, R15, LSL #11
l832: eorPLs R5, R8, R6, LSL #20
l833: eor R1, R7, R4
l834: eorLEs R9, R14, R5, LSL #31
l835: eorMI R0, R0, R12, LSL #20
l836: eorLT R10, R6, R2, ROR R2
l837: eorLEs R14, R1, R8
l838: eor R11, R1, R7
l839: eorVS R10, R0, R10, LSR R11
l840: eorGE R5, R7, R7, RRX 
l841: eorEQs R8, R0, R7
l842: eorNE R9, R12, R1, ROR #17
l843: eor R8, R7, R12, LSL #30
l844: eorLS R4, R6, R0, ASR #29
l845: eor R9, R1, R14
l846: eorMIs R1, R10, R3, LSL #5
l847: eorLT R11, R2, #-2147483639
l848: eorEQ R2, R2, #165675008
l849: eorPLs R8, R12, R7, ASR R6
l850: eors R7, R1, R6, ASR #14
l851: eorLEs R2, R11, R5
l852: eors R2, R0, R7, RRX 
l853: eors R0, R4, #33280
l854: eorNEs R12, R8, R4, RRX 
l855: eorNE R7, R15, R6
l856: eors R1, R15, R0
l857: eor R12, R14, #244
l858: eor R1, R14, R1, LSL #1
l859: eorCC R9, R2, R6, LSR R4
l860: eorCSs R14, R10, R1, LSL R2
l861: eorLEs R0, R8, R9
l862: eorPL R5, R6, #2784
l863: eor R5, R2, R12, RRX 
l864: eorVCs R2, R9, R5, ASR R11
l865: eorMI R10, R10, R6, ASR #9
l866: eorCSs R14, R11, R6, ASR #0
l867: eors R11, R14, R8, RRX 
l868: eors R1, R0, R4, ROR R14
l869: eorLT R14, R12, R10, ROR R7
l870: eorHI R1, R9, R4, RRX 
l871: eorVC R3, R3, R9, LSR R10
l872: eorCC R12, R0, R9, LSL #5
l873: eorVCs R0, R14, #1090519040
l874: eorVSs R8, R9, R7, ASR R6
l875: eors R11, R0, R8, ROR #27
l876: eorLS R12, R1, #66060288
l877: eors R11, R10, #110100480
l878: eor R7, R5, R7, ASR #21
l879: eorLTs R7, R3, R11, LSL #18
l880: eors R11, R1, R4, LSL #3
l881: eorNE R14, R5, R9
l882: eor R8, R2, R4, LSL R3
l883: eorCS R7, R9, #121856
l884: eors R2, R5, R2, ASR R1
l885: eorGE R2, R14, R0
l886: eorCC R7, R7, R10, ROR #6
l887: eor R6, R14, R4, LSR R4
l888: eorGE R2, R8, R3, LSL #28
l889: eorMIs R9, R0, R12, ASR R9
l890: eors R4, R12, R0
l891: eorMI R14, R0, R5, LSL #14
l892: eorMIs R9, R2, R15
l893: eors R5, R6, R4, LSL R10
l894: eorNE R1, R15, #125829120
l895: eor R0, R4, R8, ROR #18
l896: eorNE R8, R12, #544
l897: eorCS R0, R6, #149946368
l898: eors R0, R3, R4, ROR R8
l899: eorCSs R8, R9, R9, ROR #31
l900: eors R0, R5, R3, ASR #30
l901: eor R11, R15, R10
l902: eor R8, R4, R5, ASR R1
l903: eorCCs R2, R12, R11
l904: eorEQs R14, R12, R3, ASR R3
l905: eor R4, R1, R2
l906: eorEQ R8, R10, R11
l907: eorLT R4, R14, R10, LSR #27
l908: eorLT R2, R15, R11, RRX 
l909: eorLEs R9, R9, R11, ASR R12
l910: eorCC R11, R14, R9, LSL #3
l911: eorGEs R9, R15, R10
l912: eorVC R5, R0, R11
l913: eors R0, R10, R2, ROR #1
l914: eors R11, R10, R2, ASR R12
l915: eorVC R12, R15, #480
l916: eorGEs R5, R8, #-738197501
l917: eors R2, R12, R3, RRX 
l918: eor R7, R14, R11
l919: eorLEs R4, R11, #1073741825
l920: eor R12, R4, R4
l921: eors R10, R7, R5, ROR R2
l922: eorMIs R0, R3, R12, LSR #20
l923: eorNEs R8, R7, #-1207959549
l924: eorPLs R0, R11, R8, ROR R7
l925: eor R7, R15, R1
l926: eorGTs R0, R10, #32768
l927: eorEQs R10, R15, R4, LSL #30
l928: eor R4, R9, R1
l929: eors R9, R7, R8, ASR #20
l930: eorCS R8, R0, R0, RRX 
l931: eors R8, R7, R0
l932: eorCC R11, R15, #81920
l933: eorVSs R7, R6, R9
l934: eor R5, R7, R5
l935: eors R10, R15, R10, RRX 
l936: eors R6, R2, R4, ASR R1
l937: eor R9, R10, R10, ROR R5
l938: eorMIs R9, R10, R8, LSL R4
l939: eorVCs R3, R3, R14
l940: eor R1, R4, #-838860800
l941: eor R11, R7, R11, RRX 
l942: eorGEs R14, R3, R9, ASR R10
l943: eorGE R3, R5, R2
l944: eorLTs R12, R0, R3
l945: eorLTs R14, R1, R8, LSR #31
l946: eorLE R8, R8, R2, ASR #13
l947: eorCCs R3, R1, R1, ASR R9
l948: eorGTs R0, R1, R9, RRX 
l949: eorLTs R4, R5, R11, ROR R1
l950: eorLTs R6, R3, R9, ASR #26
l951: eorCS R6, R3, #44032
l952: eorNE R10, R6, #15
l953: eors R1, R1, R8, LSL R3
l954: eorCC R11, R4, #16
l955: eors R11, R5, R3, RRX 
l956: eorVS R6, R9, #976
l957: eorGTs R11, R8, R1, ROR R4
l958: eor R9, R5, R1, ASR #5
l959: eorMI R10, R12, R1, ASR R6
l960: eorCCs R0, R2, R0, ASR #26
l961: eors R11, R1, R9, LSL #7
l962: eorLSs R2, R15, #1946157056
l963: eors R1, R11, R4, ROR R4
l964: eor R7, R11, R4, LSR R11
l965: eorPL R11, R14, R14
l966: eors R4, R8, R4, LSR #12
l967: eorGE R3, R15, R12
l968: eorGT R9, R11, R15
l969: eorGE R10, R3, R1, LSR R5
l970: eorCS R9, R4, R12
l971: eorNE R5, R14, R10
l972: eorLT R12, R6, R14, LSR #25
l973: eorMI R5, R9, R4, ASR #25
l974: eor R11, R7, R5
l975: eors R12, R3, R12, RRX 
l976: eor R14, R4, #11456
l977: eor R6, R0, R3
l978: eor R5, R2, R2, RRX 
l979: eors R0, R2, #-1073741795
l980: eors R4, R1, #234881024
l981: eor R2, R3, R0
l982: eors R7, R11, #133120
l983: eor R12, R4, R4, RRX 
l984: eorGE R2, R3, #851968
l985: eor R6, R7, R4
l986: eor R4, R8, R4, ROR #22
l987: eors R11, R12, R0, ASR #7
l988: eor R2, R15, #53215232
l989: eorPL R7, R2, #174063616
l990: eorVSs R8, R0, R14, ASR #5
l991: eors R3, R11, R11, ASR R11
l992: eorCSs R5, R6, R15
l993: eorGTs R9, R11, #-335544317
l994: eors R1, R12, R5, ASR R9
l995: eors R1, R12, #14
l996: eors R0, R11, R0, ROR #14
l997: eor R11, R8, R6, RRX 
l998: eorCSs R12, R7, R7
l999: eorNEs R5, R3, R1, ROR #7
l1000: eors R10, R5, R8, LSL R14
end: b end

