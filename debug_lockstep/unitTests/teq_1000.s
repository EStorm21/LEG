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
val1: .word 1860502314
next1:ldr R2, val2
b next2
val2: .word 2696706567
next2:ldr R3, val3
b next3
val3: .word 7418848
next3:ldr R4, val4
b next4
val4: .word 1379725590
next4:ldr R5, val5
b next5
val5: .word 1037615681
next5:ldr R6, val6
b next6
val6: .word 2535022043
next6:ldr R7, val7
b next7
val7: .word 2148018075
next7:ldr R8, val8
b next8
val8: .word 2575633228
next8:ldr R9, val9
b next9
val9: .word 3045223031
next9:ldr R10, val10
b next10
val10: .word 2392465081
next10:ldr R11, val11
b next11
val11: .word 870529003
next11:ldr R12, val12
b next12
val12: .word 3541368923
next12:ldr R14, val14
b next14
val14: .word 1342121079

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 2849894731
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 3291106930
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3169625375
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 3751149420
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 3662760710
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 3232794289
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 4111996651
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 758777766
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 2612805520
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 272957169
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 2266750565
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 3974545905
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 1236754867
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 3032858171
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 393684457
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 31040569
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 3200634330
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 3232257762
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 3031644004
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 118347740
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 1782841961
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: teqPL R14, R4
l2: teqHI R1, R9, ASR R10
l3: teq R12, #52224
l4: teqNE R7, R14, RRX 
l5: teq R14, #42240
l6: teq R10, R1, RRX 
l7: teqNE R11, #195035136
l8: teqCS R11, R2
l9: teqGT R4, R3, LSR #17
l10: teq R4, R8
l11: teq R6, #28928
l12: teq R11, R0
l13: teq R1, #44
l14: teqPL R15, R5, RRX 
l15: teqNE R4, R10, LSL R8
l16: teqNE R10, R15, LSR #13
l17: teqVC R10, R11, RRX 
l18: teq R12, R7, LSR #10
l19: teqGT R12, #44800
l20: teq R1, R3, ASR R3
l21: teq R2, R9
l22: teq R4, R12, ASR R11
l23: teqCC R10, R4, LSL R2
l24: teq R1, R10
l25: teq R0, #62720
l26: teq R8, #63232
l27: teqNE R6, R10, ROR #13
l28: teqPL R12, R4, ASR #10
l29: teqGE R11, R15
l30: teqVC R8, R6
l31: teqEQ R3, R3, ROR #2
l32: teq R5, R14, ROR R7
l33: teqNE R15, #66060288
l34: teq R9, #1006632960
l35: teqLS R8, R4, LSR R11
l36: teq R4, R7
l37: teqCC R0, #31232
l38: teq R6, R8, ROR #21
l39: teqEQ R1, R0
l40: teq R11, R10, ROR R3
l41: teqVS R4, R10, LSR R1
l42: teqVS R11, R12
l43: teqLE R14, R1, LSL #21
l44: teqLE R0, R1, LSL #9
l45: teqPL R14, R12
l46: teq R6, R0, ASR #1
l47: teqLT R12, R9
l48: teq R6, R2, LSR R0
l49: teqCC R2, R7, RRX 
l50: teqMI R4, R2
l51: teqLT R4, R8
l52: teqNE R11, R8
l53: teq R9, R5
l54: teq R15, R15, ROR #30
l55: teq R9, #-1409286144
l56: teqNE R3, R0
l57: teq R9, R12, ROR #27
l58: teq R10, R11, ROR R4
l59: teq R14, R10, RRX 
l60: teqPL R1, R5, ROR #18
l61: teq R0, #536870921
l62: teqGE R7, R6, LSR R8
l63: teqGT R3, R2, ROR R10
l64: teq R11, R12
l65: teq R2, #3200
l66: teqGE R11, #8512
l67: teqCC R9, R8, ROR #15
l68: teqGE R11, R5, LSR R5
l69: teqLE R4, R10, ROR #4
l70: teqGE R11, #2097152
l71: teq R5, #11008
l72: teqLE R6, R2, ASR #23
l73: teqMI R6, R8, ROR R10
l74: teq R4, R10, LSL R7
l75: teqGT R9, R5
l76: teq R1, #242688
l77: teqVS R1, R5, ROR #9
l78: teqGE R15, #880
l79: teqVS R7, R1
l80: teq R6, R11
l81: teqCC R1, #589824
l82: teqLE R0, R3
l83: teq R11, R3, ASR R0
l84: teqLT R0, R2, ROR R12
l85: teqVC R9, R0, ASR R11
l86: teq R10, #181248
l87: teq R9, R6, RRX 
l88: teqLE R3, R12, ASR R8
l89: teq R4, #270336
l90: teqVS R11, R8, LSL R5
l91: teqVS R3, #229
l92: teq R6, R2, LSR #12
l93: teqLS R7, R1, RRX 
l94: teqCS R10, R9, RRX 
l95: teqNE R10, R10, RRX 
l96: teqMI R5, #684032
l97: teqLT R8, R9
l98: teq R11, #88080384
l99: teqVC R6, R9, ASR #28
l100: teqNE R0, #-1073741804
l101: teqVC R4, #53477376
l102: teq R6, R12, RRX 
l103: teqPL R1, R8, RRX 
l104: teq R5, R0, LSR R0
l105: teqLT R5, #5504
l106: teq R1, #157
l107: teqMI R3, R1
l108: teqVC R1, R1, ROR #18
l109: teq R3, R2, ASR R10
l110: teqVS R9, R3, ASR R9
l111: teqHI R15, #116
l112: teq R10, R14, ASR #31
l113: teq R8, R15
l114: teqLS R0, R8, ASR #25
l115: teq R8, R5, LSL R9
l116: teqGE R10, R15, LSL #8
l117: teqHI R3, R6, LSL R0
l118: teq R12, R14, ROR #20
l119: teqHI R1, R12, ROR R12
l120: teq R10, R12, RRX 
l121: teq R12, R9, LSR R3
l122: teqLE R7, R3, LSL R4
l123: teq R15, R0
l124: teqGE R2, R3, LSL #18
l125: teqCC R11, R12
l126: teqGT R2, R6, LSL R9
l127: teqCC R7, #-1476395005
l128: teqCC R0, #1090519040
l129: teq R9, R1
l130: teq R0, R15
l131: teq R15, R2, ROR #6
l132: teq R1, R4
l133: teq R0, #11534336
l134: teqLT R0, R2
l135: teqVC R6, R4, ASR #4
l136: teqGT R4, #692060160
l137: teqNE R3, R12, RRX 
l138: teqGT R9, R6
l139: teq R1, R1, ROR #28
l140: teqLS R6, #168
l141: teqHI R9, R6, LSR #30
l142: teqLE R7, R3, ROR R3
l143: teq R0, R6, ASR R11
l144: teqLE R1, #31
l145: teq R3, #57344
l146: teq R6, #-1073741804
l147: teq R9, R4, ASR #29
l148: teqCC R4, #831488
l149: teqCS R11, R1
l150: teqCS R14, #15400960
l151: teqEQ R1, R9, ASR #29
l152: teq R14, R10
l153: teq R3, R0
l154: teq R0, R9, RRX 
l155: teqGT R9, R5
l156: teq R3, R0, ASR #19
l157: teq R5, #6029312
l158: teq R5, R10
l159: teq R12, R1, LSL R1
l160: teq R8, R2, RRX 
l161: teq R4, R0
l162: teqEQ R15, R5
l163: teqLT R1, R14
l164: teq R8, R1, ROR #5
l165: teqVS R0, R3
l166: teq R5, #1007616
l167: teq R0, R2, LSL #6
l168: teq R5, #-805306365
l169: teqGE R11, R1
l170: teqCS R9, R5, RRX 
l171: teqCS R8, #20
l172: teq R8, R10, ROR #28
l173: teq R15, R14, LSR #4
l174: teqLE R11, R15
l175: teq R6, R7, LSR R10
l176: teq R9, R0, ROR R8
l177: teq R6, R3
l178: teq R10, #1294336
l179: teqGT R4, R6
l180: teqCS R2, R14, LSR R10
l181: teq R9, R1
l182: teqEQ R10, R11, RRX 
l183: teqVC R3, #32768
l184: teq R14, R11
l185: teqMI R3, R6, ASR R5
l186: teq R8, R4
l187: teqVS R8, R15, RRX 
l188: teq R7, R14, ASR #3
l189: teq R15, R9
l190: teq R10, R2
l191: teqLT R8, #226304
l192: teq R4, R7
l193: teq R9, R15
l194: teq R10, #4784128
l195: teqVS R7, R9, LSL #21
l196: teqLT R3, R14, RRX 
l197: teqNE R14, #209
l198: teqGE R0, R10, LSR R7
l199: teqGT R5, R9
l200: teqGT R6, R6, ASR #23
l201: teq R3, R3, RRX 
l202: teq R11, R9
l203: teqVS R10, R0, ROR R10
l204: teqLE R3, R0
l205: teqCC R0, R8
l206: teq R2, R1, LSR R0
l207: teqVC R3, #201326594
l208: teqCS R1, R7, ASR R1
l209: teqCS R6, #913408
l210: teqLS R0, #3506176
l211: teqEQ R3, R15
l212: teqGE R11, R10
l213: teqPL R12, R3, RRX 
l214: teq R2, R1, ASR R0
l215: teqCC R0, #-1879048184
l216: teqCS R7, R14, LSL R14
l217: teq R10, R2, RRX 
l218: teqGT R11, R6
l219: teq R5, R7
l220: teqCC R9, R7
l221: teqGT R2, R10, LSL R10
l222: teqCC R12, R14
l223: teqHI R0, R0
l224: teq R9, R14, LSR #10
l225: teqVC R6, R11, ROR R2
l226: teq R11, R5, ROR #13
l227: teqGE R2, #1073741846
l228: teqLS R4, R5, ASR #12
l229: teqEQ R12, #12288
l230: teq R8, R2, RRX 
l231: teq R9, R12, LSL R2
l232: teqVC R14, R15
l233: teqGT R11, R6, ROR #27
l234: teqPL R5, R3
l235: teqPL R7, R0
l236: teqGE R0, R9
l237: teqLS R7, R8, LSL R2
l238: teq R12, R3
l239: teqHI R1, #-1174405120
l240: teqVS R1, R12, LSR R7
l241: teqHI R6, R0, ASR R2
l242: teqNE R12, R1, ROR #21
l243: teq R8, R1, LSR #20
l244: teq R0, R10
l245: teq R2, R5, LSR R9
l246: teqPL R11, #134217731
l247: teq R7, R14, LSL #24
l248: teq R6, R0, ASR #30
l249: teqVC R9, R2
l250: teqHI R14, R14, LSL #21
l251: teq R10, R5, ROR R11
l252: teq R0, R12, LSR R7
l253: teq R9, R3
l254: teqGT R3, R9, LSL R5
l255: teqNE R11, R14
l256: teqLE R6, R3, RRX 
l257: teqLS R3, R14
l258: teqCC R15, R12, ROR #30
l259: teq R5, #-1879048179
l260: teqLE R11, R9, ROR #28
l261: teqCS R9, R3, RRX 
l262: teqLE R11, #3637248
l263: teqVC R9, #335544323
l264: teqVS R1, R0, ASR R9
l265: teqGE R0, R5
l266: teqGT R14, R2
l267: teqEQ R0, R1, RRX 
l268: teq R0, R2, RRX 
l269: teq R5, #11
l270: teq R12, #6016
l271: teqLT R4, R9, LSL R5
l272: teqLT R10, R9, LSL R8
l273: teq R12, R4, ASR R14
l274: teqGE R4, #10752
l275: teqVS R0, R6, LSL #19
l276: teq R6, R9
l277: teq R4, R3
l278: teqGT R8, R12, ASR R1
l279: teq R1, R3
l280: teqLE R8, R7, RRX 
l281: teqPL R15, #207
l282: teqNE R11, #38400
l283: teqLS R12, R7, RRX 
l284: teq R7, R8
l285: teq R12, R0
l286: teq R2, #652
l287: teqCS R12, #12582912
l288: teqPL R12, R11, ROR #20
l289: teqGT R5, R9, ASR R14
l290: teqGT R11, R2
l291: teqVS R8, R8, RRX 
l292: teq R0, R2, LSL #30
l293: teq R2, R14, ROR R8
l294: teq R6, R1, LSL #18
l295: teq R12, R10, RRX 
l296: teq R2, R6
l297: teqLT R1, R7, ASR R3
l298: teq R15, R7, LSL #31
l299: teqHI R11, R1
l300: teq R15, R12
l301: teqGE R6, R11, RRX 
l302: teqGE R12, R14
l303: teq R6, #197
l304: teqMI R10, R2, ASR R6
l305: teq R12, R8, RRX 
l306: teqGE R1, R7, ASR R1
l307: teqMI R14, R3, ROR #9
l308: teqGT R2, R10, RRX 
l309: teqHI R1, R1, LSR R0
l310: teqGE R14, R14, RRX 
l311: teqEQ R3, #39424
l312: teqGE R2, R15, RRX 
l313: teqCC R9, R4, ASR #21
l314: teq R6, R10, LSR R4
l315: teqMI R6, R3
l316: teqEQ R7, R1, ROR #21
l317: teqLS R0, R10, ASR R6
l318: teq R1, R4, LSR #10
l319: teq R7, #50688
l320: teq R9, #6291456
l321: teqLT R10, #161
l322: teqPL R11, R1, RRX 
l323: teq R4, #712
l324: teq R1, #1104
l325: teqVC R11, #402653185
l326: teq R1, R14, ASR R5
l327: teq R11, R7, RRX 
l328: teqVS R9, #-671088637
l329: teq R0, R7
l330: teqCC R12, R7, ASR R4
l331: teqNE R14, R6
l332: teqCS R7, #1310720
l333: teq R8, R4, ASR R0
l334: teq R11, R10, LSR R0
l335: teq R11, R3, ASR R1
l336: teq R11, #51456
l337: teqHI R10, R7, ASR #22
l338: teq R10, R0, RRX 
l339: teq R12, R11, RRX 
l340: teqLS R8, R6, ASR #6
l341: teq R7, R12, RRX 
l342: teq R2, #30464
l343: teqEQ R7, #318767104
l344: teqLT R5, R2, LSL #30
l345: teqLS R8, R10, ROR R3
l346: teqHI R7, #576
l347: teq R6, R14, ASR #13
l348: teqNE R0, R0
l349: teqEQ R14, R10
l350: teqLS R2, R4
l351: teqLE R1, R2, RRX 
l352: teqLE R1, #3184
l353: teq R4, R4
l354: teqPL R10, R9, RRX 
l355: teq R14, R1
l356: teq R15, R11, ROR #5
l357: teqLS R7, R3, LSR R10
l358: teq R6, R12
l359: teq R8, R3, LSL #23
l360: teq R5, R0
l361: teqHI R12, R6, RRX 
l362: teq R12, R4, LSL #7
l363: teqLE R0, R15
l364: teqCC R7, R2
l365: teqGT R5, #248832
l366: teqMI R10, #2912
l367: teqLS R1, R9, ASR R3
l368: teq R9, R9
l369: teqGE R3, R10
l370: teq R12, #30
l371: teq R9, R6, LSR R6
l372: teq R5, R10, ROR R1
l373: teq R4, R9, LSL R3
l374: teqHI R8, R8
l375: teqPL R6, #-1073741815
l376: teq R4, R11
l377: teq R12, R9, LSR R7
l378: teqCC R12, R11, LSR R4
l379: teqGT R1, R11, LSR #31
l380: teqGE R2, #78848
l381: teqMI R14, R1, RRX 
l382: teqLS R1, #174
l383: teq R11, R14, ROR R0
l384: teqVC R4, R9, LSR R11
l385: teq R1, R11, LSL #23
l386: teqCC R5, #44032
l387: teq R7, #46080
l388: teq R4, R7
l389: teqMI R4, R0, ASR #3
l390: teqHI R8, #171008
l391: teqCC R8, R7, LSR #9
l392: teqCS R6, R10, ROR R5
l393: teqMI R5, R3, ROR R4
l394: teq R14, R0, LSL R8
l395: teq R0, #520093696
l396: teqGT R4, R6
l397: teqLS R9, R8, ROR R0
l398: teqMI R1, R5, LSR R3
l399: teqEQ R10, R0
l400: teq R2, #52992
l401: teqLS R3, R2
l402: teq R12, R12, LSL #3
l403: teq R6, R9
l404: teq R9, #3072
l405: teqPL R5, R8
l406: teq R4, R14
l407: teqLS R6, R3
l408: teq R14, R14, RRX 
l409: teqGE R15, R15
l410: teqLT R8, R6
l411: teqGE R12, R9, ASR R5
l412: teqGE R2, R1, RRX 
l413: teqVS R1, #802816
l414: teqGT R9, R7
l415: teq R14, R8
l416: teqLS R1, R2
l417: teqHI R6, R1
l418: teqGE R14, R2
l419: teq R9, #167
l420: teqLT R5, R1, LSR #27
l421: teqMI R3, R4, LSL #14
l422: teqVS R6, #41728
l423: teq R5, R0, LSR R4
l424: teq R15, R2
l425: teq R14, R0, LSR R9
l426: teqMI R2, R14, ROR R5
l427: teqNE R4, R4, RRX 
l428: teqHI R3, R0, LSL R8
l429: teqCS R4, R14
l430: teq R8, #6553600
l431: teqMI R0, R0, ROR R12
l432: teq R5, R0
l433: teqHI R9, #14080
l434: teq R4, #462848
l435: teq R0, R3, ASR R12
l436: teqCS R7, R11, ROR R11
l437: teq R3, R12, ROR R7
l438: teqCC R4, R11, RRX 
l439: teq R0, #6553600
l440: teqVC R14, R10, ROR R6
l441: teq R9, R3, RRX 
l442: teqCS R7, R4, LSL R7
l443: teq R3, #944
l444: teqMI R7, R11, ROR R9
l445: teq R12, R4
l446: teq R4, R15, LSR #11
l447: teq R5, R1
l448: teq R6, #-1275068416
l449: teqHI R5, R12
l450: teqCC R12, R3, LSL R4
l451: teqMI R9, R15
l452: teqGT R7, R11
l453: teqLS R7, #15728640
l454: teqCS R2, R12, ASR R1
l455: teqPL R7, R4
l456: teq R6, R0, LSR #23
l457: teq R12, #738197506
l458: teq R10, R1
l459: teq R3, R1
l460: teqEQ R15, R12
l461: teq R11, R1
l462: teqLE R6, R0
l463: teqVC R4, R14, LSL #28
l464: teq R0, R15
l465: teqVC R6, #6619136
l466: teqEQ R8, R5, ROR #23
l467: teqLS R9, R0
l468: teq R8, R8
l469: teq R12, R15, ROR #5
l470: teq R9, R15, ROR #7
l471: teqPL R2, R9, LSR R2
l472: teq R6, R5, RRX 
l473: teqVS R1, R10
l474: teq R3, R3
l475: teqVC R6, R8
l476: teqLE R5, R1, LSR #10
l477: teq R1, R15, ROR #30
l478: teq R10, R10, RRX 
l479: teq R7, R8
l480: teqLE R0, R15
l481: teq R1, #13697024
l482: teqEQ R6, #1811939329
l483: teq R3, #479232
l484: teq R3, R3
l485: teqCC R14, R6
l486: teq R9, R0, ROR #1
l487: teq R10, R3, LSL R9
l488: teq R3, R11
l489: teq R3, R9, RRX 
l490: teqLT R9, R10
l491: teqMI R11, R5, RRX 
l492: teq R1, R10, ROR R5
l493: teqCS R14, R11, RRX 
l494: teqGE R10, R6, LSL R8
l495: teq R5, R14, LSR R0
l496: teq R14, R5, ROR R4
l497: teqLE R14, #4128768
l498: teqVC R7, #27
l499: teq R8, #9371648
l500: teqCC R11, R11, LSR #15
l501: teq R2, R6, ASR R12
l502: teqCS R2, R3
l503: teq R9, R11
l504: teqGT R6, R12
l505: teq R2, R6, ASR #11
l506: teq R4, R9, LSL #18
l507: teqCC R12, #376832
l508: teq R10, R12, LSR #5
l509: teqGT R12, R14
l510: teqPL R5, R1, LSR R6
l511: teqNE R3, #206
l512: teq R1, R8, ASR R6
l513: teqHI R5, R4, RRX 
l514: teq R9, R10, ROR #12
l515: teq R3, R0, RRX 
l516: teqVC R7, R1, ROR #30
l517: teqMI R8, R7
l518: teq R12, R4, ROR R6
l519: teqLT R1, R7, LSL R2
l520: teqLE R0, #58112
l521: teq R3, #-2147483622
l522: teq R7, R5, ROR R5
l523: teqGE R12, R5
l524: teqMI R11, R5, LSL #7
l525: teqVC R1, R7
l526: teqEQ R9, R1, ASR #13
l527: teqGE R3, R11
l528: teq R1, R9, LSL #8
l529: teq R2, R6
l530: teqVS R2, R2
l531: teqPL R7, #65011712
l532: teqEQ R15, #3696
l533: teqGE R1, R11, ROR R7
l534: teqEQ R10, R12, RRX 
l535: teqGE R8, R11, LSR R14
l536: teq R11, R14, RRX 
l537: teqCS R5, R3
l538: teqPL R11, #114688
l539: teqHI R12, R5
l540: teqCC R9, R7, ROR R3
l541: teq R12, #872415234
l542: teq R3, #1933312
l543: teq R9, R10, LSL R14
l544: teqGT R9, #-1409286144
l545: teqGT R12, #1073741826
l546: teq R8, R1, ASR #4
l547: teq R15, R9
l548: teq R4, R11, LSL #20
l549: teqGE R12, R9, RRX 
l550: teq R8, R6, LSL R11
l551: teq R14, R10
l552: teqCC R12, #406847488
l553: teqMI R4, #12845056
l554: teqHI R2, R4, LSL #24
l555: teqEQ R7, #12582912
l556: teqGT R1, R1
l557: teqPL R15, R5
l558: teqLE R12, R14, LSL R5
l559: teq R2, R10, ASR R3
l560: teqLS R1, R5, LSR R7
l561: teqEQ R8, R15
l562: teq R12, R0, RRX 
l563: teqVS R15, R15
l564: teqGT R7, R0, ROR R5
l565: teq R2, R8, LSR R2
l566: teqGT R4, R0, LSR R5
l567: teqLS R0, R12, LSL R8
l568: teqLT R7, R4, ROR R5
l569: teq R8, #15794176
l570: teqLS R5, R0, LSL R9
l571: teqLE R7, R10, LSL R7
l572: teqVC R1, R2
l573: teqMI R5, R14, RRX 
l574: teq R9, R11, LSL R5
l575: teq R3, R0, RRX 
l576: teq R7, R8
l577: teqGT R8, R9, ROR R10
l578: teq R9, R4, LSR #4
l579: teqCS R11, R1
l580: teqPL R10, #235
l581: teqGE R4, #802816
l582: teqHI R4, #1073741848
l583: teqGE R12, R12
l584: teq R15, R3, LSR #20
l585: teqVS R15, R6
l586: teqVS R4, R1, RRX 
l587: teqVC R10, #578813952
l588: teqCS R10, R4, LSL R3
l589: teqNE R2, #805306380
l590: teq R3, #303104
l591: teq R12, R10
l592: teqPL R8, R12, RRX 
l593: teqHI R5, R12
l594: teq R6, #7168
l595: teq R5, R0, ASR #10
l596: teqEQ R0, R14, LSR R10
l597: teqCS R10, R12
l598: teq R2, R10
l599: teqVC R6, R14, LSR #26
l600: teq R10, R2, RRX 
l601: teqPL R8, R5, LSL R11
l602: teqMI R8, R10
l603: teqPL R0, R15, ASR #18
l604: teq R5, R3
l605: teq R15, R10
l606: teqHI R0, R0, ASR #0
l607: teqLS R0, R9, RRX 
l608: teq R1, R8, LSR R0
l609: teq R4, R2, LSR #10
l610: teqLE R14, R0
l611: teq R5, R2, ROR #26
l612: teq R11, R15, ASR #24
l613: teq R1, R2, RRX 
l614: teq R12, R8, LSL R1
l615: teqHI R6, #46399488
l616: teq R3, R8, ROR R0
l617: teqCC R3, #3194880
l618: teq R10, R11, ASR R12
l619: teq R8, R10, LSR #28
l620: teq R9, R14
l621: teq R2, R14, LSR #13
l622: teqHI R6, #2176
l623: teq R6, #45056
l624: teq R8, R1, LSR #13
l625: teqLE R3, #23068672
l626: teqGE R5, #1425408
l627: teqCS R14, R10, RRX 
l628: teqVC R1, R12
l629: teqLT R15, R7, RRX 
l630: teq R5, R3
l631: teqLE R7, R15, ASR #0
l632: teq R12, R2, LSL R14
l633: teqHI R4, R5, LSL #25
l634: teqHI R4, R14
l635: teq R7, R12, ROR R10
l636: teqEQ R8, R15
l637: teq R2, R0, ROR R5
l638: teqEQ R5, R11
l639: teq R4, R15, LSL #16
l640: teqVC R12, R5, RRX 
l641: teqCS R7, R8
l642: teq R15, R8, RRX 
l643: teqEQ R4, R4
l644: teq R12, #14942208
l645: teq R11, R0
l646: teq R2, R9, LSR R7
l647: teqGE R7, R8, ROR R7
l648: teq R9, R5
l649: teqLT R7, R2, RRX 
l650: teqCS R3, R9, LSR R10
l651: teq R6, R10, LSR R3
l652: teqCC R7, R6, ASR R0
l653: teq R12, R7
l654: teq R5, R2, ASR #10
l655: teqPL R1, #-2013265920
l656: teq R1, R2, LSR R12
l657: teqMI R11, R14, ASR #30
l658: teqNE R10, R7
l659: teqLS R9, R4, ROR #7
l660: teq R3, R9
l661: teq R12, R8, LSL R11
l662: teq R10, #201326592
l663: teqLE R5, R10, RRX 
l664: teq R3, R1, RRX 
l665: teq R3, R2, RRX 
l666: teq R10, R8, ASR #24
l667: teq R10, #771751936
l668: teqGT R2, R6, ASR R3
l669: teqLE R3, R2, ASR R2
l670: teq R7, R0
l671: teqVS R1, R3
l672: teq R15, R10, RRX 
l673: teqCS R14, R11, ASR #28
l674: teqCS R15, R2, ROR #10
l675: teqCS R11, #1097728
l676: teq R0, R12, ASR #1
l677: teq R7, R3, ASR #18
l678: teqVS R4, R5, LSR R8
l679: teqMI R7, R4, LSL R2
l680: teqEQ R12, #948
l681: teq R1, #11072
l682: teq R12, R14
l683: teq R10, R0, ASR R1
l684: teqPL R9, R14, RRX 
l685: teq R14, R9, LSR #17
l686: teqLT R8, R10, ROR R2
l687: teqCC R7, R6, ASR R11
l688: teqNE R6, #11010048
l689: teqLE R3, R15
l690: teq R8, R7, RRX 
l691: teq R11, #120
l692: teqGE R12, R6
l693: teqLE R0, R9
l694: teqCS R5, R1, RRX 
l695: teq R5, #-268435449
l696: teqGE R12, R10, LSL R9
l697: teq R1, R10, LSR #9
l698: teqHI R1, #638976
l699: teqCC R1, R0, ROR R6
l700: teqCC R14, R0
l701: teq R4, #-1073741820
l702: teq R10, R4, LSR #3
l703: teqGT R8, R3, LSR #20
l704: teq R5, R5
l705: teqNE R10, R9, LSR R14
l706: teqMI R14, R5, ROR R2
l707: teq R11, R4, LSR R8
l708: teq R11, R5
l709: teq R10, R11, RRX 
l710: teqLT R5, R5, LSL #2
l711: teq R0, R7, ROR #15
l712: teq R10, #360448
l713: teqCS R15, R3
l714: teq R0, R10, RRX 
l715: teq R5, R14, RRX 
l716: teqNE R8, R4, LSL #1
l717: teq R12, R4, RRX 
l718: teq R1, R4, LSR R10
l719: teq R15, #37224448
l720: teq R5, R0, ASR R6
l721: teqLS R14, R14
l722: teqMI R11, R10, RRX 
l723: teqPL R6, R5, ASR #22
l724: teqPL R6, #8912896
l725: teq R12, #212860928
l726: teq R2, R4, LSR #26
l727: teq R10, R5
l728: teq R8, R8
l729: teq R5, R11, ASR R3
l730: teqCC R5, R11, LSL #0
l731: teqLT R7, #4718592
l732: teq R10, #1540096
l733: teq R12, R5, LSR R5
l734: teqPL R2, R12
l735: teqCC R3, R3, ROR R3
l736: teqLT R2, R15
l737: teq R2, R12
l738: teqGE R12, #1879048199
l739: teq R14, R11
l740: teqGE R8, R15, LSR #3
l741: teqVS R11, #268435465
l742: teqHI R11, R15
l743: teqLS R6, R11
l744: teq R5, R5, LSR R11
l745: teqPL R12, #14024704
l746: teqGE R5, #54784
l747: teq R14, R1, RRX 
l748: teqMI R6, #1006632963
l749: teqLT R11, R10, ROR #27
l750: teqGE R1, #983040
l751: teqLT R2, R7, LSL R6
l752: teqVS R6, R10, ROR R10
l753: teq R4, R10
l754: teq R12, #48
l755: teqPL R2, R0, ROR R7
l756: teq R7, R4, ROR R1
l757: teqPL R6, R11, ROR #17
l758: teqLE R4, R14, RRX 
l759: teqLT R12, R3, ASR #5
l760: teq R2, R4, RRX 
l761: teqGT R8, R5, ROR #24
l762: teqPL R12, R12, RRX 
l763: teqCC R11, #1073741860
l764: teqLE R14, #364904448
l765: teqVS R5, R12, ASR R4
l766: teqCC R5, R14, ROR #13
l767: teq R5, #1344
l768: teqEQ R3, R4, LSR R6
l769: teq R9, R3, LSR R12
l770: teqNE R12, R6, RRX 
l771: teq R15, R11
l772: teqCS R11, R12
l773: teqVS R14, R7, ASR #30
l774: teq R0, #-2013265918
l775: teqCS R6, R8
l776: teq R9, #549453824
l777: teqHI R9, R7, RRX 
l778: teq R8, #157
l779: teqNE R6, #179
l780: teq R0, R9, ROR #22
l781: teqGT R8, R3, LSL R4
l782: teqNE R0, R7, LSR #25
l783: teqGT R5, R12, LSR R14
l784: teq R14, #48384
l785: teq R12, R1, ASR R1
l786: teqNE R10, R7
l787: teqPL R7, R3
l788: teq R0, #-738197502
l789: teq R0, R6, ROR R10
l790: teq R14, R6
l791: teqNE R15, #856064
l792: teqLE R14, R12, LSL R8
l793: teqGT R14, R0, LSR #18
l794: teq R3, R7, LSL #2
l795: teqMI R6, R3, LSR R5
l796: teqNE R14, #577536
l797: teqMI R2, R8, LSR R11
l798: teqLS R7, #-738197504
l799: teqHI R11, R5, RRX 
l800: teqNE R14, R4, ROR #24
l801: teq R2, #268435470
l802: teq R4, R10, LSR #7
l803: teq R10, R11, ASR R10
l804: teq R12, R3, LSL #10
l805: teqCC R8, R6, ASR #9
l806: teqMI R7, R10
l807: teq R4, R11
l808: teqHI R3, #1004
l809: teqGT R14, R5, RRX 
l810: teq R11, R3, RRX 
l811: teq R6, R7, ROR #1
l812: teqCS R7, R15
l813: teq R10, #-1879048190
l814: teq R9, R6, RRX 
l815: teq R3, #192
l816: teqVS R8, R10
l817: teqPL R11, R14, LSL #6
l818: teq R0, R15, LSL #24
l819: teqVC R7, R8, ASR R12
l820: teqNE R7, R1
l821: teqVC R6, R11, LSL #14
l822: teq R2, R8
l823: teq R12, R7
l824: teq R8, R10
l825: teqCS R11, #356
l826: teqCC R6, R4, ASR R5
l827: teq R2, R6, LSR #26
l828: teq R1, R12, ROR #25
l829: teq R11, #1291845632
l830: teqMI R10, #248
l831: teqGT R14, R9, LSR R8
l832: teqPL R6, R7
l833: teqGT R4, R3, LSR R12
l834: teq R14, R6, LSR #8
l835: teqGE R10, R2, RRX 
l836: teq R10, R3
l837: teq R14, R14, LSL #3
l838: teqCS R8, R5
l839: teqGT R4, R6, RRX 
l840: teqMI R10, R3
l841: teq R15, R1, RRX 
l842: teqGT R14, R3, LSR R10
l843: teq R1, R4, LSR #12
l844: teqLS R14, R4
l845: teqLT R11, #-1929379840
l846: teqLS R5, R5, RRX 
l847: teqCC R11, R6, ROR #13
l848: teqNE R0, R10
l849: teqVS R3, R4
l850: teq R6, R12, ROR #23
l851: teqPL R15, R7
l852: teq R6, R9, LSL R7
l853: teq R11, #130023424
l854: teqCC R2, #119537664
l855: teqVS R4, R6
l856: teq R3, #169
l857: teq R4, R12, RRX 
l858: teqLT R2, R9, ASR #0
l859: teqLT R0, R9, LSR #25
l860: teqGE R11, R2, RRX 
l861: teqPL R11, #950272
l862: teq R10, #3178496
l863: teq R12, R7, ASR R4
l864: teq R6, R8, LSL #20
l865: teqCC R11, R2
l866: teq R6, #822083584
l867: teq R2, R11, LSL #25
l868: teq R1, R12, LSR R7
l869: teq R6, R1, ASR R1
l870: teqVS R9, #6144
l871: teq R0, R12
l872: teqLT R8, R1, ASR R5
l873: teq R0, R5, LSR #8
l874: teqVS R7, R14
l875: teq R10, R14, ROR #22
l876: teq R11, R2, ASR R2
l877: teq R15, R6, ASR #25
l878: teq R12, R1, LSL #0
l879: teqEQ R11, R2, ASR R11
l880: teq R1, R11, ASR R3
l881: teqHI R10, R7, LSL #5
l882: teqGT R9, R9, RRX 
l883: teqLT R11, R15
l884: teqLT R3, #960
l885: teqVS R9, R7
l886: teqEQ R2, #2013265921
l887: teq R9, #85
l888: teq R7, R5, LSL R10
l889: teqHI R0, #790528
l890: teqCS R7, R12, LSR #13
l891: teqLE R9, #61865984
l892: teqNE R12, R0, RRX 
l893: teq R10, R2, ROR #5
l894: teq R2, #4288
l895: teqNE R15, R12
l896: teq R12, R4, ROR R10
l897: teqLT R2, R11
l898: teq R14, R6, ROR R7
l899: teqEQ R3, R4
l900: teqGE R1, #-2147483602
l901: teq R2, R14, RRX 
l902: teqCS R0, R14, LSL R0
l903: teqCS R10, R5, RRX 
l904: teq R15, R10
l905: teqLT R7, R1, RRX 
l906: teqLE R6, R4, ASR #24
l907: teqLT R0, R10, ROR R14
l908: teq R10, R12
l909: teqGT R10, #54528
l910: teqVC R2, R14
l911: teq R3, #132096
l912: teq R15, #-2147483637
l913: teq R11, R2, LSL #21
l914: teqLS R5, R11, LSL #7
l915: teqGT R11, #1073741878
l916: teqLS R7, R1
l917: teqEQ R15, R5, LSL #3
l918: teqLT R3, #1677721601
l919: teq R11, #123731968
l920: teqVS R9, R8, RRX 
l921: teq R0, R6, LSR #5
l922: teqLT R3, R4, ASR #10
l923: teqPL R3, R6, RRX 
l924: teqGT R3, R2, ROR #5
l925: teqLE R15, #1073741825
l926: teq R1, R6, ROR R14
l927: teq R11, #3712
l928: teqEQ R1, R5, ROR #10
l929: teqGE R4, R8, RRX 
l930: teqNE R3, R10, LSR #17
l931: teqLE R12, R6, LSL R14
l932: teqCC R2, R5, ASR R0
l933: teq R6, R15, LSL #11
l934: teq R11, R11
l935: teqCC R8, #204
l936: teqMI R1, #56320
l937: teqCC R1, R9, RRX 
l938: teq R4, R6
l939: teqCC R11, R7, RRX 
l940: teq R3, #22020096
l941: teq R7, R11
l942: teqLS R2, R0
l943: teqMI R0, R5, LSR #27
l944: teqLE R4, R0, ASR #26
l945: teq R0, #2752
l946: teqPL R2, R4, LSL #8
l947: teqEQ R4, R7
l948: teqLS R10, #-1677721600
l949: teq R2, R9
l950: teq R1, R4
l951: teqEQ R11, R8, ROR R12
l952: teq R8, R14, RRX 
l953: teq R3, R8
l954: teqLE R0, R7, ROR #19
l955: teqPL R3, R11, LSR #5
l956: teqMI R5, R3
l957: teq R1, R4, ROR R14
l958: teqGE R0, R2, LSL R0
l959: teqVS R10, R14, LSL #9
l960: teq R0, #89
l961: teq R7, R15, RRX 
l962: teqHI R10, R15
l963: teqMI R8, R6, LSL R1
l964: teqNE R5, R14
l965: teqMI R7, #1073741830
l966: teqGT R3, #1879048196
l967: teqCC R4, R12, LSR R5
l968: teq R1, R5, LSL R7
l969: teq R2, R15
l970: teqGE R6, #-268435448
l971: teqVS R0, R14, LSL R7
l972: teq R8, #44
l973: teq R4, R2, LSL #6
l974: teqLE R7, R10
l975: teqHI R3, R1, LSR R1
l976: teqVC R11, R8, ASR #21
l977: teq R5, #-1610612730
l978: teq R5, R0, ROR R11
l979: teqHI R7, R0
l980: teq R5, #16
l981: teqVS R0, R11, LSR R1
l982: teqVS R9, R8, LSR #1
l983: teqMI R12, R6
l984: teqVS R9, R11
l985: teq R8, R5
l986: teqCC R2, R14, LSR #15
l987: teqLT R10, #30720
l988: teq R1, R10, LSR #26
l989: teqLE R11, R0, LSR R6
l990: teq R9, R10, LSL #9
l991: teq R0, R15, RRX 
l992: teqLS R4, R11, LSR R7
l993: teqVS R3, R3, ASR R4
l994: teqMI R2, R15, LSR #7
l995: teqGT R0, #59904
l996: teq R6, R10
l997: teq R3, #444596224
l998: teqVS R8, #-2147483593
l999: teqEQ R6, R3, RRX 
l1000: teqPL R9, R9, RRX 
end: b end

