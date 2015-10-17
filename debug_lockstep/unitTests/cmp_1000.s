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
val1: .word 1830541587
next1:ldr R2, val2
b next2
val2: .word 612246699
next2:ldr R3, val3
b next3
val3: .word 704800412
next3:ldr R4, val4
b next4
val4: .word 1066004016
next4:ldr R5, val5
b next5
val5: .word 3704932310
next5:ldr R6, val6
b next6
val6: .word 1136570513
next6:ldr R7, val7
b next7
val7: .word 3178888328
next7:ldr R8, val8
b next8
val8: .word 643950320
next8:ldr R9, val9
b next9
val9: .word 3683009246
next9:ldr R10, val10
b next10
val10: .word 3853885927
next10:ldr R11, val11
b next11
val11: .word 428047970
next11:ldr R12, val12
b next12
val12: .word 2511819390
next12:ldr R14, val14
b next14
val14: .word 957437775

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 1681224895
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 1938271398
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3494040097
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 3230337618
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 3757221875
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 663368989
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 1382068081
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 570901190
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3108694092
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 2508763800
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 619946078
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 3075586045
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 3845432697
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 87742172
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 2780614194
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 3470610784
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 92155242
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 2365028083
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 3562947797
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 4292672270
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 3096518099
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: cmpLS R7, R5, LSR #16
l2: cmpLT R0, R6, ASR #27
l3: cmpNE R5, R0, ASR R6
l4: cmpVC R11, #805306371
l5: cmpGT R10, R10
l6: cmp R4, #2848
l7: cmpVC R4, R6, LSR R12
l8: cmpCC R4, R4
l9: cmpMI R2, R2, ASR R12
l10: cmp R4, #1744830464
l11: cmpLT R7, R9, ASR #7
l12: cmpEQ R7, R8, RRX 
l13: cmpGE R4, R7, LSL R9
l14: cmp R11, R7
l15: cmp R6, R8
l16: cmp R12, R7, ROR R11
l17: cmp R15, R1
l18: cmp R11, #11796480
l19: cmp R1, #41943040
l20: cmp R15, R14, LSL #30
l21: cmpEQ R3, #716
l22: cmpHI R6, R2
l23: cmpLE R9, R14
l24: cmpLE R6, #-687865856
l25: cmp R4, R9, RRX 
l26: cmp R8, R10
l27: cmpCS R9, R3, LSL #4
l28: cmpHI R10, R5, ASR R3
l29: cmpMI R2, R0, RRX 
l30: cmpGT R1, R0
l31: cmpLE R15, #-1073741778
l32: cmpGE R14, R5
l33: cmpGT R6, R3
l34: cmpVC R12, #1879048206
l35: cmpGT R6, #134217730
l36: cmp R9, R14, LSR R9
l37: cmpPL R6, #21248
l38: cmpNE R1, R1, ASR #13
l39: cmpEQ R7, R10, ASR R1
l40: cmp R5, R8, LSL R12
l41: cmpMI R7, R7, ROR R6
l42: cmp R6, #1004
l43: cmpVS R4, R1, LSR R9
l44: cmp R0, R10
l45: cmp R7, #2432
l46: cmpGE R10, #11776
l47: cmp R5, R3, ASR #23
l48: cmpMI R5, #63176704
l49: cmpEQ R15, R1, RRX 
l50: cmp R5, R14
l51: cmpVC R7, R9, LSR R6
l52: cmpLT R8, #45088768
l53: cmp R12, R3, ASR #17
l54: cmpLS R5, R7, ROR R5
l55: cmpCS R3, R1, RRX 
l56: cmp R9, R6
l57: cmp R2, R3, ASR #17
l58: cmp R12, R6, ASR #15
l59: cmp R10, R0, ROR R9
l60: cmpPL R3, R0, RRX 
l61: cmpLS R7, R4, ASR R11
l62: cmp R1, R2, ROR #27
l63: cmp R5, #31719424
l64: cmp R12, R1, ASR #30
l65: cmpGT R3, #39168
l66: cmp R10, R9, LSL #19
l67: cmpNE R14, R14
l68: cmpCS R14, #217055232
l69: cmpGE R14, R12, ROR #4
l70: cmpEQ R1, R6
l71: cmpHI R4, R9, LSL #31
l72: cmpGT R1, R11, LSR R12
l73: cmp R6, #8388608
l74: cmp R5, R10
l75: cmp R4, R11, RRX 
l76: cmpVS R14, R14
l77: cmp R8, R5, LSL R10
l78: cmp R14, R12, LSL #0
l79: cmp R3, #805306370
l80: cmpLT R5, R15
l81: cmpVC R14, #217088
l82: cmpLT R11, R0, RRX 
l83: cmp R8, R3, ASR R9
l84: cmp R3, R12, LSL R4
l85: cmpGE R12, #60817408
l86: cmp R10, #1744830464
l87: cmpLT R10, R15, ROR #13
l88: cmpEQ R15, #480
l89: cmp R4, R6, LSL R4
l90: cmpGE R4, #48234496
l91: cmp R0, R8, ASR R1
l92: cmpGT R3, R6, LSL R10
l93: cmp R2, R0, ROR R14
l94: cmpLE R6, R4, ROR #29
l95: cmpLE R4, R7
l96: cmpPL R8, R4, RRX 
l97: cmp R1, R10, ASR R1
l98: cmp R4, #2490368
l99: cmpHI R4, #-1593835520
l100: cmp R6, R10
l101: cmpVC R8, #4224
l102: cmpPL R9, R7, RRX 
l103: cmp R8, #805306369
l104: cmpEQ R5, R8
l105: cmpVS R3, R11
l106: cmpGT R0, R2, LSR #27
l107: cmpCC R3, R1, ROR R11
l108: cmp R3, #612368384
l109: cmp R8, R15, LSR #12
l110: cmp R8, R15, RRX 
l111: cmpMI R5, R7, ROR R2
l112: cmpGE R0, R3, LSR R2
l113: cmp R15, R14
l114: cmpPL R4, R5, RRX 
l115: cmpCS R3, R8, RRX 
l116: cmp R5, R8
l117: cmp R10, R2, RRX 
l118: cmp R9, R14, LSL #25
l119: cmp R6, #14680064
l120: cmp R3, R6, LSR #0
l121: cmp R2, R8, LSR R7
l122: cmp R3, R1
l123: cmpLE R2, R5, LSR R12
l124: cmp R1, R12, ROR #31
l125: cmpMI R11, #4718592
l126: cmp R12, #30408704
l127: cmp R11, R11
l128: cmpGE R6, R4
l129: cmp R7, R9, LSR R0
l130: cmpGE R12, R15
l131: cmpGE R6, R9, LSL #4
l132: cmpLS R7, R14, LSR #10
l133: cmp R12, #-1342177277
l134: cmp R9, R2
l135: cmpEQ R12, R5, ROR R0
l136: cmp R4, R6, LSL R9
l137: cmpGE R7, R12, LSL R2
l138: cmpLS R10, #2013265921
l139: cmp R8, R7, ROR R0
l140: cmp R6, R15, ASR #29
l141: cmp R1, R10, LSL R9
l142: cmpPL R6, R7
l143: cmpVC R5, #240640
l144: cmp R0, #652
l145: cmpLT R2, R12, LSL R11
l146: cmp R12, #22016
l147: cmpPL R11, R2, RRX 
l148: cmpMI R14, R1
l149: cmp R12, R11, ASR #21
l150: cmp R9, R4
l151: cmp R2, R1, RRX 
l152: cmpGE R3, #47104
l153: cmpGE R7, R1, LSL #2
l154: cmp R14, R9, LSL R3
l155: cmp R2, R0, ROR #15
l156: cmp R8, #12992
l157: cmp R9, R5, RRX 
l158: cmpGT R0, #856064
l159: cmpLT R7, R6, RRX 
l160: cmp R5, #130023424
l161: cmpPL R12, R1
l162: cmpMI R1, R1, LSR #12
l163: cmpLS R1, R5
l164: cmpHI R1, R14, LSR #9
l165: cmpLT R6, R15
l166: cmpCC R9, R2, ASR R10
l167: cmpLE R1, #245760
l168: cmp R14, R10
l169: cmpCC R11, R12
l170: cmp R14, #-1073741773
l171: cmpHI R6, #2015232
l172: cmpGT R11, R12, LSR R4
l173: cmpGT R5, R0, RRX 
l174: cmpCC R2, R9, LSR #17
l175: cmp R0, R14, ROR R12
l176: cmpGE R4, R5, LSR R2
l177: cmpCS R5, R9
l178: cmp R11, R0
l179: cmp R9, R3
l180: cmpLT R7, R14, ROR #13
l181: cmpHI R5, R14
l182: cmp R3, #335544320
l183: cmpLS R11, R7, ASR #14
l184: cmpLE R14, R12, RRX 
l185: cmpGT R1, #3120
l186: cmp R8, #1664
l187: cmp R7, R7, ASR R11
l188: cmp R9, R6, RRX 
l189: cmp R5, R2, ROR #18
l190: cmpLE R14, R4, LSL R0
l191: cmpHI R12, R8
l192: cmp R3, R14
l193: cmpGT R5, #479232
l194: cmpLS R12, R3, ASR R2
l195: cmpLT R12, R12, RRX 
l196: cmp R9, R5, ROR R14
l197: cmpLE R11, R1
l198: cmpGE R12, R6, LSR #3
l199: cmpPL R2, #8320
l200: cmpNE R2, #-2147483615
l201: cmpNE R12, #16711680
l202: cmpLS R10, R1
l203: cmpVS R4, R4, LSL #21
l204: cmp R10, R9
l205: cmpNE R10, R2, LSL R7
l206: cmpVS R2, R11, LSR R11
l207: cmpLT R14, R10
l208: cmp R3, R7, LSR #12
l209: cmp R7, #6912
l210: cmp R11, #8192
l211: cmp R4, R14
l212: cmp R15, #1884160
l213: cmp R14, R6, RRX 
l214: cmpGE R15, R1, LSL #28
l215: cmp R9, R5, RRX 
l216: cmp R5, R14, ASR R4
l217: cmpHI R12, R14, ROR R8
l218: cmpVS R4, R6, ROR R4
l219: cmp R4, R1, LSR R14
l220: cmp R1, R7, RRX 
l221: cmpCC R2, R6
l222: cmpLT R14, #164626432
l223: cmpHI R6, R3, LSR R2
l224: cmp R2, #155189248
l225: cmp R3, R1
l226: cmpGT R0, R7, ROR R14
l227: cmpMI R4, R10
l228: cmp R5, #929792
l229: cmpLS R10, #798720
l230: cmp R12, R5, LSL #14
l231: cmp R10, R6
l232: cmp R9, R0, LSL R7
l233: cmpGT R5, R6
l234: cmpLT R7, #37486592
l235: cmpCC R3, #-1107296256
l236: cmp R14, R4
l237: cmpNE R5, R15
l238: cmpVC R12, #-2147483648
l239: cmpLT R10, R7
l240: cmpVS R3, R0
l241: cmp R2, R1
l242: cmpVC R2, R8, ROR R4
l243: cmp R12, R8, RRX 
l244: cmp R9, #780140544
l245: cmp R4, R14
l246: cmpVS R6, #268435458
l247: cmpVC R1, R3
l248: cmpHI R4, R14, RRX 
l249: cmp R10, R15
l250: cmpGE R10, #144
l251: cmpVC R2, R8
l252: cmpEQ R12, R12, ASR R3
l253: cmp R11, #37888
l254: cmpLT R5, R14, ROR #28
l255: cmpCC R12, R5
l256: cmp R14, R4
l257: cmpVS R2, R2
l258: cmpEQ R3, R3, ASR #5
l259: cmpGT R0, R4, LSR R8
l260: cmpMI R11, #520093696
l261: cmpGE R14, #6356992
l262: cmpCC R9, #13248
l263: cmpHI R2, R2, LSL R0
l264: cmpCC R7, R8, LSR R0
l265: cmpCS R5, R0
l266: cmpVS R3, R9, ASR R12
l267: cmpEQ R8, R11, ROR #22
l268: cmpEQ R10, #1560281088
l269: cmpGE R7, R15
l270: cmpPL R6, R1, ASR #7
l271: cmpVS R1, R8
l272: cmp R8, R7
l273: cmpCC R15, R0, ASR #8
l274: cmpVC R10, R4, LSL R14
l275: cmpLS R2, R5, RRX 
l276: cmpLE R2, R12, RRX 
l277: cmpVS R1, R4, ROR #24
l278: cmp R14, R3, ROR #15
l279: cmpLS R14, #1792
l280: cmpGE R5, #51118080
l281: cmp R9, R14
l282: cmpCC R9, R5
l283: cmp R2, R7
l284: cmp R12, R15
l285: cmp R14, R9, ROR R2
l286: cmp R6, #13959168
l287: cmpGE R0, R15, RRX 
l288: cmpLS R6, R11
l289: cmpHI R6, R11, ASR #18
l290: cmp R9, #5767168
l291: cmpGE R1, R4, LSL #2
l292: cmpGT R15, R4, LSL #1
l293: cmpNE R7, R12, ROR #9
l294: cmpLT R8, #11776
l295: cmpNE R9, R0, ASR R7
l296: cmp R8, R14
l297: cmp R11, #5963776
l298: cmpHI R2, R6, RRX 
l299: cmpCC R11, R3, LSR #30
l300: cmp R7, R10, RRX 
l301: cmp R4, #12713984
l302: cmpMI R15, R11
l303: cmpGT R3, #2
l304: cmpGT R5, R8, LSL R10
l305: cmpCC R6, R6
l306: cmpCC R12, R3
l307: cmp R10, R7, LSR R6
l308: cmpPL R1, R9, LSR R12
l309: cmp R10, R1, LSL #9
l310: cmpCC R12, R1, ASR #17
l311: cmp R11, #637534208
l312: cmpGE R14, R1, LSL R4
l313: cmpVS R15, R9, RRX 
l314: cmpHI R3, R0
l315: cmpLT R12, #61865984
l316: cmpEQ R3, R11, LSL #26
l317: cmpMI R6, #28049408
l318: cmpCS R2, R9, LSR #21
l319: cmpHI R14, #15925248
l320: cmp R6, #-268435442
l321: cmp R6, R11, ROR #2
l322: cmp R1, R8, LSR R6
l323: cmp R12, #1879048198
l324: cmp R9, R0, LSR R9
l325: cmp R12, R10
l326: cmpMI R7, R10, LSL R11
l327: cmpMI R1, #588
l328: cmpNE R6, R14, LSR R3
l329: cmpEQ R12, R2, LSL #1
l330: cmpGE R3, #977272832
l331: cmp R0, R5, LSR R1
l332: cmpCS R9, R2, LSR R9
l333: cmp R10, R3, LSL #6
l334: cmp R12, R1, ASR R2
l335: cmpLE R9, R4
l336: cmpMI R10, R11, LSL R14
l337: cmp R4, R12, ROR R7
l338: cmpGE R11, #-452984832
l339: cmp R2, #1073741872
l340: cmpGT R5, R4
l341: cmpVC R8, R0, RRX 
l342: cmp R10, R3
l343: cmp R4, R9, LSR #6
l344: cmpVC R4, R12, RRX 
l345: cmpEQ R4, R1, ROR R8
l346: cmp R6, R11, LSL R8
l347: cmpLT R15, #201
l348: cmp R3, #101376
l349: cmpVS R10, R7, ROR #11
l350: cmpGT R6, R1, RRX 
l351: cmpLT R12, R1, ROR R3
l352: cmp R9, R15, RRX 
l353: cmpVC R8, R2, LSR #15
l354: cmpCC R0, R8, ASR #27
l355: cmp R8, R9, ASR #21
l356: cmp R15, R11
l357: cmpNE R5, R2
l358: cmpVC R14, R8, RRX 
l359: cmp R6, R10
l360: cmpLT R1, R7
l361: cmpLE R7, R9
l362: cmp R2, R1, LSR R12
l363: cmpGT R6, #217088
l364: cmp R14, R1, LSL #30
l365: cmp R7, #552
l366: cmp R1, R3, RRX 
l367: cmpVS R4, R2
l368: cmp R3, R2, LSR #7
l369: cmpLE R4, #416
l370: cmpPL R14, #-1174405120
l371: cmp R14, #256
l372: cmpVC R7, R4, ROR R2
l373: cmpPL R5, R14
l374: cmp R10, R11, RRX 
l375: cmpCS R5, #1130496
l376: cmp R11, #984
l377: cmpGT R9, R11
l378: cmp R11, #704512
l379: cmpCC R7, R6, LSL R2
l380: cmpCS R9, #29952
l381: cmpMI R2, R6
l382: cmp R4, R3, LSR R9
l383: cmp R5, R11, ASR R3
l384: cmpMI R14, R2, LSL R11
l385: cmpCS R9, R12, LSL R9
l386: cmp R0, R3
l387: cmpCC R9, R8
l388: cmpLS R10, R4, ROR R8
l389: cmp R1, R8, RRX 
l390: cmpHI R8, R5, LSR R6
l391: cmp R10, R5, LSR R14
l392: cmp R5, R7, RRX 
l393: cmp R12, R4, LSL #1
l394: cmpGT R0, R10, RRX 
l395: cmp R11, R11
l396: cmpVC R5, R15, RRX 
l397: cmpLE R4, R5
l398: cmpGT R4, #952
l399: cmpPL R0, #1342177280
l400: cmpCC R3, R7, ASR #31
l401: cmp R3, R2, ROR #25
l402: cmpHI R9, #1232
l403: cmp R3, R0
l404: cmp R8, R3
l405: cmpVC R9, R1, RRX 
l406: cmpLS R9, R15, LSL #23
l407: cmp R7, R2, LSL R5
l408: cmp R15, R11, LSL #9
l409: cmpLS R14, R2, LSL R11
l410: cmpMI R2, #402653184
l411: cmpVS R12, R2, RRX 
l412: cmpNE R3, R2, LSL #18
l413: cmp R7, #3473408
l414: cmpEQ R7, R0
l415: cmp R2, #650117120
l416: cmpLS R0, R6
l417: cmpPL R15, R12, RRX 
l418: cmp R7, R10, ASR #5
l419: cmp R0, R2, LSR #7
l420: cmpEQ R5, R11, ROR R14
l421: cmpLS R1, R2, ASR #30
l422: cmp R0, R1, ROR R12
l423: cmp R9, R9
l424: cmpCC R6, R4
l425: cmpMI R14, R9, LSL R2
l426: cmp R8, R14, LSL R3
l427: cmp R15, R1, RRX 
l428: cmp R6, #8912896
l429: cmpGE R10, #86
l430: cmpMI R6, R10, ROR R3
l431: cmp R8, #146432
l432: cmpGT R11, #67108864
l433: cmpLS R9, R15
l434: cmpLS R15, R3
l435: cmpNE R10, R10, RRX 
l436: cmpLS R9, #1048576
l437: cmpVS R2, #992
l438: cmpNE R1, R6
l439: cmpMI R5, R12, RRX 
l440: cmp R3, R9, ROR R4
l441: cmp R12, R14, LSL #21
l442: cmpMI R0, R6, LSR #17
l443: cmp R7, #629145600
l444: cmpLS R4, R6, LSR R2
l445: cmp R0, R3
l446: cmpEQ R3, #831488
l447: cmpEQ R0, R7, LSL #29
l448: cmp R4, R3, ASR #27
l449: cmpVS R2, R5, LSL R7
l450: cmpCC R10, R4, ROR R6
l451: cmp R4, R10
l452: cmpLS R5, R9, ASR R6
l453: cmp R0, #1073741826
l454: cmp R5, #675840
l455: cmpLS R11, #2176
l456: cmpHI R12, R3, LSL R6
l457: cmp R6, R11, ROR R14
l458: cmp R10, #48234496
l459: cmpCC R6, R3, RRX 
l460: cmpNE R4, R1, ROR R0
l461: cmpGT R1, R11
l462: cmpGT R3, R6, ROR R12
l463: cmp R14, #192512
l464: cmpPL R3, R8
l465: cmpLE R1, R2, ASR R14
l466: cmpCS R14, #119
l467: cmp R10, R12, ASR #6
l468: cmpGE R5, R2, ROR #31
l469: cmp R3, R3, ASR R11
l470: cmpCC R11, R7, LSR R0
l471: cmpLE R10, R10, LSL R8
l472: cmpLS R3, R8
l473: cmpCS R2, R6
l474: cmpMI R7, R15
l475: cmp R11, R7
l476: cmp R1, R9, LSR R0
l477: cmp R14, R11, RRX 
l478: cmpHI R6, R2
l479: cmpMI R3, R7, LSL R2
l480: cmp R12, R0, ASR R5
l481: cmp R4, R11, ROR #15
l482: cmp R10, R4, LSL R9
l483: cmp R15, R8, LSR #24
l484: cmpGT R3, R10, ROR R12
l485: cmp R12, R9, LSR R11
l486: cmpPL R11, R3, RRX 
l487: cmp R15, #2016
l488: cmpGT R12, R8, LSR #21
l489: cmpMI R11, R10, RRX 
l490: cmpCC R10, R0
l491: cmp R5, R4, LSL R4
l492: cmpHI R7, R4, ROR R5
l493: cmpVS R6, R5, LSL R2
l494: cmp R8, R8
l495: cmpLE R10, R5, RRX 
l496: cmp R11, R3, ROR R0
l497: cmpMI R15, R3
l498: cmpHI R14, R14, LSL #18
l499: cmp R3, R4, ROR #16
l500: cmpLS R3, R11
l501: cmpEQ R2, #8388608
l502: cmpHI R11, R4
l503: cmpCS R11, R10, ROR #15
l504: cmp R7, R1
l505: cmpGE R12, R3
l506: cmp R1, R1
l507: cmp R6, #55
l508: cmp R3, R3
l509: cmpEQ R9, R2, ASR #0
l510: cmp R11, #12288
l511: cmpGT R9, R5, LSL #29
l512: cmp R15, R11
l513: cmpVS R11, R0, ROR R12
l514: cmp R4, R5
l515: cmp R0, #464
l516: cmp R1, R0
l517: cmp R0, R15
l518: cmpCC R12, R5, ASR R4
l519: cmpPL R4, #1296
l520: cmp R7, R6
l521: cmp R8, R4, LSL R6
l522: cmpVS R12, R10, LSL R11
l523: cmpGE R11, R6
l524: cmpNE R14, R0
l525: cmpVS R11, R1, LSR #17
l526: cmp R9, R9, ASR #11
l527: cmp R4, R4
l528: cmpVC R6, R15, LSL #3
l529: cmpPL R9, R7, LSR R10
l530: cmpLS R0, R2, ASR #28
l531: cmp R2, R11, LSR R11
l532: cmp R1, R15
l533: cmp R2, R9
l534: cmpCC R6, #-1073741785
l535: cmpMI R3, R8, ROR #15
l536: cmpLS R6, R3, ASR #3
l537: cmpLE R0, R9, RRX 
l538: cmpGT R4, R0
l539: cmpVS R5, R11, LSL R12
l540: cmp R5, R12
l541: cmpCS R6, #0
l542: cmpNE R14, R11
l543: cmpLS R14, #1275068417
l544: cmpGT R8, R2
l545: cmpCS R1, R0
l546: cmpLT R1, #2949120
l547: cmpPL R4, R10, ROR R3
l548: cmp R7, R3, ROR #4
l549: cmp R9, R11, LSR R9
l550: cmp R0, R15, ASR #2
l551: cmpLS R1, R2, LSR #17
l552: cmpHI R3, R5, LSR R4
l553: cmp R0, #268435466
l554: cmp R8, R4
l555: cmpLS R1, #913408
l556: cmpLS R2, #11264
l557: cmp R2, R7
l558: cmpGT R5, R1, RRX 
l559: cmpCC R0, R11, LSR R9
l560: cmpVS R11, #2752
l561: cmpVC R10, #25600
l562: cmp R14, R5, LSR #10
l563: cmpGE R6, #37224448
l564: cmpVS R9, R9, RRX 
l565: cmp R15, R9, RRX 
l566: cmpNE R2, R12, ASR #25
l567: cmp R12, R4, RRX 
l568: cmpMI R9, R6, ROR R6
l569: cmp R15, R2, RRX 
l570: cmp R14, R1, LSL #13
l571: cmp R15, #109051904
l572: cmp R10, #-1996488704
l573: cmp R3, R6, LSR R0
l574: cmp R11, R10
l575: cmp R12, R8
l576: cmpLS R3, #61440
l577: cmp R4, R6
l578: cmpHI R12, R0, RRX 
l579: cmp R10, R2, ASR R12
l580: cmpHI R12, #82944
l581: cmpGT R5, R3, LSR R0
l582: cmp R5, R1
l583: cmpEQ R14, #80
l584: cmpGT R12, R12, RRX 
l585: cmpGT R9, R6
l586: cmpPL R11, R4, ASR R11
l587: cmpLT R11, R7
l588: cmp R11, R6
l589: cmp R9, R6, RRX 
l590: cmpLS R8, R9
l591: cmpEQ R1, R4
l592: cmp R11, R8, LSL R2
l593: cmp R7, R4
l594: cmpLT R5, R2, LSR R14
l595: cmp R8, R11, ROR R10
l596: cmp R0, R9
l597: cmpMI R8, R7, ROR #24
l598: cmpHI R5, R8
l599: cmp R1, R12, ASR #12
l600: cmpHI R6, #255852544
l601: cmpLE R6, R7, LSR R0
l602: cmpHI R8, R10, ROR R5
l603: cmp R0, #-1912602624
l604: cmp R7, R14
l605: cmp R10, R2, ASR #22
l606: cmp R5, R8, ASR R12
l607: cmp R8, R2, ROR #15
l608: cmpLS R9, R7
l609: cmp R11, R15
l610: cmpLS R10, R0
l611: cmpLT R15, R12
l612: cmpGT R8, #1061158912
l613: cmpGE R8, #9437184
l614: cmp R8, #864256
l615: cmpLE R9, R15, ASR #1
l616: cmpLS R2, R14
l617: cmpHI R1, R5
l618: cmpCS R6, R2, ROR R5
l619: cmpVC R4, R1, ASR #13
l620: cmp R2, R8, ROR R12
l621: cmp R0, R5, ASR R9
l622: cmpLT R7, R4, ROR #8
l623: cmp R1, #1032192
l624: cmpCC R4, R7, ROR R4
l625: cmp R4, R10, ASR #0
l626: cmp R7, R15, LSL #14
l627: cmpCC R15, R4, LSR #31
l628: cmp R4, #59136
l629: cmp R0, R11, LSR R6
l630: cmp R11, R14, LSL R4
l631: cmp R10, R5, LSL #11
l632: cmpLT R4, R0, LSL #25
l633: cmp R10, R9, LSR R0
l634: cmpPL R15, #148
l635: cmp R14, R12, ROR #5
l636: cmpNE R7, R6, LSL R12
l637: cmp R10, R6, ROR R9
l638: cmp R8, R6
l639: cmpHI R4, R3, ROR R3
l640: cmpCC R0, #1146880
l641: cmpGE R8, R12
l642: cmpLS R7, R11, ASR R9
l643: cmpVC R0, R12, ASR R0
l644: cmpEQ R1, R12, ROR #24
l645: cmpNE R1, R5, ASR #16
l646: cmpNE R3, #237
l647: cmpCS R10, R10
l648: cmp R14, #14080
l649: cmp R5, R4, ROR #24
l650: cmp R7, R10, ROR R1
l651: cmpLE R5, R9
l652: cmp R2, R2, ASR R8
l653: cmpCS R8, R10
l654: cmpGT R7, #38273024
l655: cmp R10, #-687865856
l656: cmp R4, R3, LSR R5
l657: cmpCS R5, R11, LSR #30
l658: cmpCC R15, R1, ROR #17
l659: cmp R11, #294912
l660: cmpNE R0, R14, LSL R7
l661: cmpHI R3, #249856
l662: cmp R6, #968884224
l663: cmpLE R7, R8, RRX 
l664: cmp R3, R9, ASR #14
l665: cmpLT R14, R4, LSR R2
l666: cmpLS R4, R6
l667: cmp R1, #2244608
l668: cmp R11, #416
l669: cmpGT R4, R15
l670: cmp R15, #462848
l671: cmpGE R14, R3
l672: cmp R5, R12, LSR R6
l673: cmp R4, R15, LSR #3
l674: cmpCS R5, R5
l675: cmp R2, R6, LSR R4
l676: cmpPL R1, #14286848
l677: cmp R7, R0
l678: cmp R12, #788529152
l679: cmpPL R6, R0, RRX 
l680: cmpGT R0, R1, RRX 
l681: cmp R1, R10, RRX 
l682: cmp R1, R2
l683: cmpVS R12, R4
l684: cmpVC R4, R11, ROR R11
l685: cmp R14, R2, LSR R1
l686: cmpEQ R4, R3, LSL R1
l687: cmp R10, R15, LSL #1
l688: cmp R14, #59244544
l689: cmp R2, R2, LSR R2
l690: cmp R6, #71303168
l691: cmpMI R7, R0
l692: cmpMI R4, R1
l693: cmpNE R9, R15
l694: cmp R14, #-2147483646
l695: cmpGT R7, #1073741870
l696: cmp R9, R4, ASR R8
l697: cmpLT R9, R7
l698: cmpLT R2, R4, LSL #1
l699: cmp R6, R9, ROR R10
l700: cmp R14, R2, LSL #18
l701: cmp R3, R4
l702: cmpLT R9, R11, RRX 
l703: cmpLE R6, #83886080
l704: cmp R6, R12, ROR R6
l705: cmpVC R9, R14, ASR #12
l706: cmp R15, R8
l707: cmpGT R7, #573440
l708: cmp R3, R7, LSR R10
l709: cmp R9, R12, ASR R2
l710: cmpLE R2, #0
l711: cmp R0, #159383552
l712: cmpLT R4, #552960
l713: cmpNE R3, R15, RRX 
l714: cmp R7, #838860800
l715: cmp R12, #208
l716: cmp R1, R9
l717: cmpLE R12, R0, ROR R9
l718: cmp R10, R14, RRX 
l719: cmp R14, #49283072
l720: cmp R3, R12, RRX 
l721: cmpCC R6, R7, LSL R6
l722: cmpGE R12, R11
l723: cmpLS R0, R10, LSL #4
l724: cmpVC R9, R15, LSL #3
l725: cmpHI R3, R2
l726: cmp R12, R12
l727: cmp R14, #654311424
l728: cmpLS R8, #672
l729: cmpLS R12, #220200960
l730: cmp R2, R8, RRX 
l731: cmpCS R3, #487424
l732: cmp R6, #209920
l733: cmpLE R7, R4, RRX 
l734: cmp R14, R7, RRX 
l735: cmp R1, R3, RRX 
l736: cmpCC R4, #577536
l737: cmpPL R4, R7, ROR #3
l738: cmpMI R9, R3, LSL R8
l739: cmp R0, R15
l740: cmpLS R11, R7, ASR #17
l741: cmpLT R12, R10, LSL #18
l742: cmp R10, R14, LSL R1
l743: cmpLT R6, R3, ROR R11
l744: cmpHI R5, R11
l745: cmp R7, R4
l746: cmp R6, R4
l747: cmp R9, R11, LSL #4
l748: cmpLS R9, R14, LSL R7
l749: cmpPL R4, #42205184
l750: cmpEQ R15, R14
l751: cmp R10, #1275068418
l752: cmpHI R5, R0, ROR #12
l753: cmpHI R11, R4, ASR R9
l754: cmp R12, R10
l755: cmpLS R2, #-335544317
l756: cmp R4, R1, LSL R6
l757: cmp R7, R6
l758: cmpHI R0, R4, LSL #23
l759: cmp R12, R4, LSL R5
l760: cmp R14, R6
l761: cmp R5, R3
l762: cmpMI R3, R5
l763: cmpLE R7, R5, ROR R2
l764: cmpVC R7, R6
l765: cmp R11, #2944
l766: cmp R7, R12, ROR #3
l767: cmpGT R6, R7, LSR R14
l768: cmp R6, R2
l769: cmpEQ R7, R1, ROR R6
l770: cmpPL R14, #110592
l771: cmpVC R3, #8448
l772: cmpLS R12, #11264
l773: cmpLE R7, R7
l774: cmpGE R12, R14, LSR #9
l775: cmpCC R3, R3
l776: cmp R6, R15, ASR #9
l777: cmp R9, R7
l778: cmpLS R8, R7
l779: cmp R15, R9, RRX 
l780: cmpCC R15, R8, LSR #0
l781: cmp R7, #90112
l782: cmpCC R0, R12
l783: cmpLE R10, #128
l784: cmpMI R4, R11
l785: cmp R10, R14
l786: cmp R3, #114688
l787: cmpEQ R4, R5, LSL R0
l788: cmpNE R3, #19398656
l789: cmpEQ R12, R1, LSL R12
l790: cmp R10, R3, ROR #15
l791: cmpLE R9, #117440512
l792: cmp R0, R4, RRX 
l793: cmp R12, R5, ROR #21
l794: cmpMI R5, R4
l795: cmpCC R2, R3, ASR R1
l796: cmp R3, R8, ASR R6
l797: cmpLS R2, R7, RRX 
l798: cmpLT R4, #51
l799: cmp R0, #-1140850685
l800: cmpNE R4, R2, ROR R10
l801: cmp R8, R12, RRX 
l802: cmpLS R1, #14417920
l803: cmpGT R0, R3
l804: cmp R9, R3, ASR #13
l805: cmpVC R4, R6
l806: cmp R10, R12, LSR R6
l807: cmpCC R1, #3264
l808: cmpVC R12, R12, ROR R10
l809: cmp R7, R12
l810: cmpLS R2, R1, ROR R9
l811: cmpVC R12, R10, LSL R8
l812: cmpVS R7, #1
l813: cmpLE R10, R4, LSL #24
l814: cmp R6, R3
l815: cmp R5, #1275068417
l816: cmpGT R10, R10, LSL #2
l817: cmp R10, R9
l818: cmpCS R8, R8, LSR R10
l819: cmpLS R4, R11, ROR R12
l820: cmp R1, R1
l821: cmp R1, R6
l822: cmpLE R11, R1
l823: cmp R4, #-1610612729
l824: cmp R15, R8
l825: cmp R6, R11
l826: cmpGT R10, R7
l827: cmp R5, R15
l828: cmp R11, #75776
l829: cmpPL R2, #126
l830: cmp R14, R9, LSR R8
l831: cmp R8, R11, ASR R12
l832: cmpLS R1, R15
l833: cmp R9, R6
l834: cmp R3, R14
l835: cmpCS R11, #5767168
l836: cmp R9, R8, LSL R2
l837: cmp R0, #2000
l838: cmpGE R1, R14, RRX 
l839: cmpMI R9, R14, LSL R1
l840: cmp R7, R2, RRX 
l841: cmpVC R2, R3
l842: cmpPL R15, R15, LSL #16
l843: cmpCC R0, R6, LSL R5
l844: cmpEQ R5, #-536870899
l845: cmp R5, R10, LSL #7
l846: cmpMI R7, R3, ASR R0
l847: cmp R5, R5, RRX 
l848: cmp R5, R11, RRX 
l849: cmp R11, R1, LSR #5
l850: cmp R2, R15, RRX 
l851: cmpEQ R1, R1
l852: cmpVS R4, #211
l853: cmpNE R0, R3, LSL #19
l854: cmp R0, R3, RRX 
l855: cmp R5, R4, LSR R9
l856: cmpVS R1, R0
l857: cmp R9, #734003200
l858: cmp R7, R10, RRX 
l859: cmpVS R4, #12928
l860: cmpLE R11, R11, ASR R14
l861: cmpLS R2, #406847488
l862: cmpVC R15, R3, ASR #18
l863: cmp R7, R4
l864: cmp R8, #36700160
l865: cmpCS R14, R1
l866: cmpGE R1, R4, ASR R9
l867: cmp R15, #109051904
l868: cmpCC R9, R7
l869: cmpPL R0, #-1728053248
l870: cmpEQ R3, #805306371
l871: cmpCS R1, R7, LSL R3
l872: cmp R8, R6
l873: cmp R1, R11, LSR #28
l874: cmpGE R0, R7, LSR R11
l875: cmp R14, R14, LSL R14
l876: cmp R9, R3
l877: cmp R0, #15872
l878: cmp R9, R4, LSR #6
l879: cmp R8, #3850240
l880: cmp R7, #106496
l881: cmp R5, R15, ROR #17
l882: cmp R9, R5, RRX 
l883: cmpLE R2, R0, RRX 
l884: cmpCC R3, R12
l885: cmpVS R10, R4, ROR R14
l886: cmp R15, #748
l887: cmpGT R12, R12
l888: cmpLE R7, #62976
l889: cmpPL R4, R7, ASR #5
l890: cmp R9, R3, ASR #23
l891: cmp R0, R9
l892: cmpEQ R1, R7
l893: cmpMI R6, #256
l894: cmpCS R3, R8
l895: cmpEQ R8, R1, LSR R4
l896: cmp R10, R5, LSR R6
l897: cmp R5, R3, LSR R12
l898: cmpEQ R9, #10682368
l899: cmpCC R0, R10, ROR R4
l900: cmp R15, R10, LSL #6
l901: cmp R4, R1, LSR R9
l902: cmpVS R3, R11, ROR #1
l903: cmpVS R10, R9, LSL R8
l904: cmp R11, R12, ROR R11
l905: cmpMI R6, R4
l906: cmp R9, #956301312
l907: cmp R11, R12, ROR R0
l908: cmpVS R15, #176
l909: cmpGE R0, R1, ROR #22
l910: cmpCC R3, R14, LSR R6
l911: cmpLE R0, R9, ASR R2
l912: cmp R3, R6, LSL #5
l913: cmpHI R1, R5, LSL R5
l914: cmp R1, R1
l915: cmp R15, R0, RRX 
l916: cmpMI R15, R5
l917: cmp R15, #956301312
l918: cmpGT R10, R14
l919: cmpGT R14, #905969664
l920: cmp R0, #79691776
l921: cmpHI R12, #98
l922: cmpLE R11, R4, LSR R2
l923: cmpGE R2, R6, ASR R0
l924: cmpCS R6, R5
l925: cmpLS R2, R8, LSL R6
l926: cmpCS R15, R11
l927: cmpNE R3, R5
l928: cmpGE R7, R8, LSL #27
l929: cmpLE R9, R6, LSR R2
l930: cmpGT R14, R11, LSR R4
l931: cmpEQ R9, R10
l932: cmpLS R6, R9, ROR R0
l933: cmp R3, #-1879048192
l934: cmpVC R11, #721420288
l935: cmpEQ R11, R1
l936: cmpNE R4, R9, ROR R1
l937: cmp R12, R7
l938: cmp R9, R0, ASR R5
l939: cmp R10, R5, RRX 
l940: cmpNE R1, R8, LSR R11
l941: cmpHI R11, R2, LSL R7
l942: cmp R4, R9
l943: cmp R15, R14
l944: cmpPL R8, R11
l945: cmpLT R10, #-2147483607
l946: cmp R8, R4
l947: cmp R1, #3568
l948: cmpVC R1, R3
l949: cmpHI R4, R6
l950: cmp R4, #1019904
l951: cmpVS R15, R1, LSL #18
l952: cmp R9, #1556480
l953: cmpEQ R4, R14
l954: cmpCS R14, #114688
l955: cmpCS R9, #9856
l956: cmpPL R12, R12, LSL #30
l957: cmpGE R9, R1, ROR #20
l958: cmp R7, R1, LSR #23
l959: cmp R0, R3, ROR #17
l960: cmpGE R9, R15
l961: cmp R0, R4, RRX 
l962: cmpGT R9, R3, LSL #28
l963: cmpLE R10, R6, ASR R1
l964: cmpVS R1, R0
l965: cmp R14, #713031680
l966: cmpMI R4, #17301504
l967: cmp R14, #1004
l968: cmp R7, R4, ASR R10
l969: cmpCC R10, #805306372
l970: cmpCC R8, R6, ROR #22
l971: cmp R14, R12, RRX 
l972: cmp R10, R11, LSR #11
l973: cmpVS R7, R12, LSR #30
l974: cmp R3, R8, RRX 
l975: cmp R1, R9, ASR #9
l976: cmpLS R11, R15
l977: cmp R15, R9, RRX 
l978: cmpMI R5, R6, LSL #6
l979: cmpLS R1, R12
l980: cmp R14, R4, ROR R5
l981: cmpVS R14, #-1073741790
l982: cmpVS R4, R8
l983: cmp R0, R5
l984: cmp R4, R2
l985: cmpLE R0, R12
l986: cmp R2, #171
l987: cmpCS R8, R5
l988: cmpVS R3, R9
l989: cmp R8, R6, ROR R12
l990: cmpHI R7, R14, LSR R6
l991: cmpGE R9, #22016
l992: cmpCS R7, R15, LSR #5
l993: cmpVS R2, R15
l994: cmpGE R10, R11
l995: cmpHI R10, R11, RRX 
l996: cmp R4, R4
l997: cmpHI R12, R8, LSL #3
l998: cmp R7, R5
l999: cmpLT R4, R9, ASR #1
l1000: cmp R0, R0
end: b end

