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
val1: .word 1456255528
next1:ldr R2, val2
b next2
val2: .word 159407222
next2:ldr R3, val3
b next3
val3: .word 4016285489
next3:ldr R4, val4
b next4
val4: .word 2238926430
next4:ldr R5, val5
b next5
val5: .word 4281255599
next5:ldr R6, val6
b next6
val6: .word 3834075390
next6:ldr R7, val7
b next7
val7: .word 3902763009
next7:ldr R8, val8
b next8
val8: .word 208224398
next8:ldr R9, val9
b next9
val9: .word 833105820
next9:ldr R10, val10
b next10
val10: .word 2838893291
next10:ldr R11, val11
b next11
val11: .word 1173961719
next11:ldr R12, val12
b next12
val12: .word 3114225366
next12:ldr R14, val14
b next14
val14: .word 2022380833

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 3517022358
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 3488403158
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 2846607753
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 1026841659
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 2273870584
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 2254951133
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 3143122247
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 1036971392
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 228551101
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 951959129
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 3677386410
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 936105190
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 772626166
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 3304526714
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 2136795848
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 2752038828
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 2690720263
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 1450789553
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 394794658
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 532807782
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 12534322
next35:str R1, [sp, #-80]

# MAIN PROGRAM
mrc     p15, 0, r1, cr1, cr0, 0;    # Read in the control register
orr     r1, r1, #3;
mcr     p15, 0, r1, cr1, cr0, 0;    # Turn on the MMU for translation

l1: mov R12, #62
l2: ldr R11, [sp], -R12
l3: mov R9, #55
l4: ldr R14, [sp, +R9]
l5: ldr R5, [sp, #+48]
l6: mov R9, #2
l7: ldrGE R7, [sp, -R9]
l8: mov R9, #10
l9: ldr R2, [sp, +R9]!
l10: ldr R0, [sp], #-11
l11: ldr R8, [sp], #+23
l12: ldr R10, [sp, #-11]!
l13: ldr R8, [sp], #+6
l14: mov R12, #8
l15: ldr R3, [sp, +R12]!
l16: ldrLE R3, [sp, #+5]
l17: ldr R5, [sp], #-0
l18: ldrCC R0, [sp, #+25]
l19: ldr R14, [sp, #-43]!
l20: ldr R10, [sp, #+67]!
l21: ldrCS R0, [sp, #-14]
l22: ldr R12, [sp, #-30]!
l23: mov R9, #29
l24: ldr R14, [sp], +R9
l25: ldr R7, [sp, #+7]
l26: mov R4, #60
l27: ldr R1, [sp], -R4
l28: mov R3, #22
l29: ldrGT R0, [sp, +R3]
l30: mov R12, #64
l31: ldr R9, [sp, +R12]!
l32: ldr R14, [sp, #-11]!
l33: ldr R2, [sp], #-31
l34: ldr R3, [sp, #+5]!
l35: ldr R0, [sp], #+13
l36: ldr R6, [sp, #-11]!
l37: mov R2, #21
l38: ldr R3, [sp], +R2
l39: mov R11, #50
l40: ldr R8, [sp], -R11
l41: mov R8, #30
l42: ldr R8, [sp], +R8
l43: mov R5, #9
l44: ldr R9, [sp, -R5]!
l45: mov R3, #30
l46: ldrHI R11, [sp, +R3]
l47: mov R11, #22
l48: ldr R7, [sp], +R11
l49: ldr R1, [sp, #+23]
l50: mov R3, #1
l51: ldr R6, [sp], -R3
l52: ldr R11, [sp], #-6
l53: mov R5, #14
l54: ldrLS R5, [sp, +R5]
l55: ldrVS R4, [sp, #+20]
l56: ldr R7, [sp], #-12
l57: mov R8, #14
l58: ldr R10, [sp, +R8]!
l59: mov R14, #18
l60: ldr R1, [sp], +R14
l61: ldr R0, [sp], #-28
l62: mov R10, #23
l63: ldr R12, [sp], -R10
l64: ldr R11, [sp, #+48]!
l65: mov R6, #27
l66: ldr R11, [sp, -R6]
l67: mov R11, #24
l68: ldr R3, [sp], -R11
l69: ldr R7, [sp], #+35
l70: mov R4, #61
l71: ldr R7, [sp, -R4]!
l72: mov R14, #10
l73: ldr R0, [sp, -R14]
l74: mov R3, #64
l75: ldr R10, [sp], +R3
l76: ldr R9, [sp, #-22]!
l77: mov R7, #4
l78: ldr R8, [sp, +R7]
l79: ldr R3, [sp, #-1]!
l80: ldr R8, [sp, #-11]!
l81: ldr R9, [sp], #+18
l82: ldr R0, [sp], #-35
l83: mov R5, #1
l84: ldr R4, [sp, -R5]
l85: mov R11, #21
l86: ldr R5, [sp, -R11]!
l87: mov R2, #4
l88: ldr R10, [sp, +R2]!
l89: ldr R12, [sp, #+22]!
l90: ldr R0, [sp], #+30
l91: mov R12, #34
l92: ldr R8, [sp, -R12]!
l93: mov R11, #3
l94: ldr R10, [sp], -R11
l95: mov R10, #4
l96: ldr R8, [sp, +R10]!
l97: mov R11, #24
l98: ldr R10, [sp], -R11
l99: mov R11, #25
l100: ldr R2, [sp], +R11
l101: ldr R5, [sp, #-2]
l102: mov R5, #33
l103: ldr R12, [sp, +R5]
l104: ldr R7, [sp, #-6]!
l105: ldrMI R5, [sp, #+5]
l106: ldr R1, [sp, #+19]
l107: mov R4, #32
l108: ldrCC R5, [sp, +R4]
l109: ldrEQ R6, [sp, #+15]
l110: mov R1, #46
l111: ldr R7, [sp], +R1
l112: mov R4, #24
l113: ldr R4, [sp], -R4
l114: mov R7, #40
l115: ldr R9, [sp], -R7
l116: mov R5, #52
l117: ldr R11, [sp, +R5]!
l118: mov R2, #7
l119: ldrPL R5, [sp, -R2]
l120: mov R11, #32
l121: ldrCC R9, [sp, -R11]
l122: ldrPL R14, [sp, #-55]
l123: ldr R1, [sp, #+9]
l124: mov R11, #32
l125: ldr R4, [sp], -R11
l126: ldr R9, [sp], #+50
l127: mov R6, #29
l128: ldrHI R8, [sp, -R6]
l129: ldr R9, [sp], #-33
l130: mov R6, #22
l131: ldr R2, [sp, -R6]
l132: ldr R14, [sp, #-37]!
l133: mov R2, #5
l134: ldrPL R10, [sp, +R2]
l135: mov R12, #16
l136: ldr R14, [sp, +R12]
l137: mov R11, #55
l138: ldr R14, [sp, +R11]!
l139: mov R8, #4
l140: ldr R1, [sp], -R8
l141: mov R10, #49
l142: ldr R2, [sp, -R10]!
l143: ldr R12, [sp, #+27]
l144: mov R8, #56
l145: ldr R4, [sp, +R8]!
l146: ldr R8, [sp, #-25]
l147: ldr R4, [sp], #-13
l148: ldr R3, [sp], #-20
l149: mov R2, #24
l150: ldr R5, [sp], +R2
l151: mov R7, #21
l152: ldr R3, [sp], -R7
l153: ldr R7, [sp], #-29
l154: mov R4, #7
l155: ldr R4, [sp, +R4]
l156: mov R7, #22
l157: ldr R0, [sp, +R7]!
l158: ldr R12, [sp], #-22
l159: mov R5, #52
l160: ldr R12, [sp, +R5]
l161: ldr R12, [sp, #+20]
l162: ldr R11, [sp], #+2
l163: ldr R6, [sp, #+52]!
l164: ldr R4, [sp], #+4
l165: ldr R14, [sp, #-19]
l166: mov R14, #15
l167: ldr R4, [sp, +R14]!
l168: ldr R10, [sp], #-11
l169: mov R11, #52
l170: ldr R10, [sp], -R11
l171: ldr R11, [sp, #+37]!
l172: ldrGE R7, [sp, #+16]
l173: mov R5, #27
l174: ldr R11, [sp, -R5]!
l175: ldr R9, [sp, #+35]
l176: ldr R8, [sp], #+2
l177: mov R1, #9
l178: ldrVS R2, [sp, -R1]
l179: mov R5, #36
l180: ldr R6, [sp], +R5
l181: ldr R12, [sp, #-46]
l182: ldr R1, [sp, #-46]
l183: ldrCS R11, [sp, #-45]
l184: ldr R6, [sp], #+0
l185: mov R11, #18
l186: ldr R11, [sp, -R11]
l187: ldr R3, [sp], #-32
l188: ldrLE R6, [sp, #+6]
l189: mov R0, #11
l190: ldr R11, [sp, +R0]!
l191: ldr R11, [sp, #+13]!
l192: ldr R0, [sp], #-18
l193: mov R12, #26
l194: ldr R6, [sp, -R12]!
l195: mov R7, #18
l196: ldr R9, [sp], +R7
l197: ldr R7, [sp], #+24
l198: ldr R12, [sp, #-34]!
l199: ldrGT R3, [sp, #-12]
l200: ldrGT R11, [sp, #+56]
l201: ldr R6, [sp, #+23]
l202: ldr R4, [sp, #+59]
l203: mov R8, #24
l204: ldr R14, [sp], +R8
l205: mov R2, #10
l206: ldr R9, [sp, +R2]
l207: ldr R9, [sp], #-28
l208: mov R7, #9
l209: ldr R7, [sp], +R7
l210: ldrLT R12, [sp, #+42]
l211: mov R2, #8
l212: ldr R4, [sp], -R2
l213: ldrEQ R11, [sp, #-11]
l214: ldr R10, [sp], #+37
l215: ldr R2, [sp], #-37
l216: mov R4, #30
l217: ldrVS R0, [sp, +R4]
l218: mov R10, #50
l219: ldrGE R10, [sp, +R10]
l220: mov R8, #61
l221: ldr R1, [sp], +R8
l222: ldr R1, [sp, #-64]!
l223: ldr R7, [sp, #+18]!
l224: mov R2, #2
l225: ldr R1, [sp, +R2]!
l226: mov R12, #36
l227: ldr R7, [sp, +R12]
l228: mov R14, #40
l229: ldr R7, [sp, +R14]
l230: mov R9, #7
l231: ldr R10, [sp, -R9]!
l232: mov R12, #22
l233: ldr R6, [sp, -R12]
l234: mov R11, #21
l235: ldr R11, [sp], +R11
l236: mov R0, #31
l237: ldr R0, [sp], +R0
l238: mov R9, #50
l239: ldr R9, [sp], -R9
l240: mov R3, #24
l241: ldr R9, [sp, +R3]!
l242: ldrPL R12, [sp, #-24]
l243: ldrEQ R0, [sp, #-34]
l244: mov R6, #3
l245: ldr R9, [sp, +R6]!
l246: ldr R0, [sp, #-14]!
l247: mov R7, #3
l248: ldr R2, [sp, -R7]!
l249: ldr R4, [sp, #-14]
l250: ldr R7, [sp, #-22]
l251: mov R9, #20
l252: ldr R3, [sp, -R9]!
l253: mov R7, #59
l254: ldr R1, [sp], +R7
l255: ldrHI R8, [sp, #-20]
l256: mov R11, #40
l257: ldr R8, [sp, -R11]!
l258: mov R4, #9
l259: ldr R6, [sp, +R4]!
l260: ldr R7, [sp], #-17
l261: mov R4, #12
l262: ldrVS R10, [sp, +R4]
l263: ldr R2, [sp], #+29
l264: mov R8, #18
l265: ldr R8, [sp, +R8]
l266: mov R6, #37
l267: ldr R7, [sp, -R6]
l268: ldr R4, [sp], #-38
l269: mov R2, #40
l270: ldr R0, [sp], +R2
l271: mov R10, #36
l272: ldr R4, [sp, -R10]
l273: mov R5, #34
l274: ldr R3, [sp, -R5]
l275: ldr R14, [sp], #-7
l276: mov R7, #27
l277: ldr R7, [sp, -R7]!
l278: mov R7, #7
l279: ldr R14, [sp], +R7
l280: mov R4, #28
l281: ldr R12, [sp, +R4]
l282: mov R1, #2
l283: ldr R7, [sp, +R1]
l284: mov R3, #23
l285: ldrVS R5, [sp, -R3]
l286: mov R12, #15
l287: ldr R7, [sp, +R12]
l288: ldrPL R14, [sp, #+15]
l289: mov R1, #30
l290: ldr R1, [sp], +R1
l291: ldr R0, [sp], #-59
l292: ldr R9, [sp], #+21
l293: mov R1, #13
l294: ldr R8, [sp], -R1
l295: ldrVS R0, [sp, #+6]
l296: ldr R11, [sp], #+34
l297: ldrVC R0, [sp, #-34]
l298: ldrEQ R14, [sp, #+19]
l299: ldr R7, [sp, #+25]!
l300: mov R1, #57
l301: ldr R2, [sp], -R1
l302: ldr R4, [sp], #+36
l303: ldr R7, [sp, #-6]!
l304: mov R5, #21
l305: ldr R0, [sp], -R5
l306: ldr R7, [sp], #+24
l307: ldr R14, [sp, #+9]!
l308: ldr R7, [sp, #+10]!
l309: mov R14, #9
l310: ldrLE R0, [sp, -R14]
l311: mov R3, #28
l312: ldr R10, [sp, -R3]!
l313: ldr R3, [sp], #+34
l314: mov R5, #34
l315: ldr R1, [sp], -R5
l316: ldr R10, [sp], #+15
l317: mov R6, #11
l318: ldr R4, [sp, -R6]!
l319: ldr R0, [sp, #+11]!
l320: ldr R14, [sp], #-11
l321: ldrCS R9, [sp, #-2]
l322: ldrLE R7, [sp, #-20]
l323: mov R3, #9
l324: ldr R10, [sp], -R3
l325: ldr R11, [sp, #-22]!
l326: ldrLS R7, [sp, #+4]
l327: mov R10, #33
l328: ldr R3, [sp], +R10
l329: ldr R10, [sp, #+20]!
l330: ldr R5, [sp, #+10]!
l331: ldr R11, [sp], #-14
l332: ldr R9, [sp, #-35]
l333: mov R11, #29
l334: ldr R2, [sp, -R11]!
l335: mov R9, #3
l336: ldr R9, [sp, +R9]
l337: ldr R2, [sp], #+43
l338: ldr R0, [sp], #-18
l339: ldr R12, [sp, #-35]!
l340: mov R8, #31
l341: ldrGT R4, [sp, +R8]
l342: mov R9, #16
l343: ldr R8, [sp, -R9]!
l344: mov R10, #33
l345: ldr R3, [sp, +R10]!
l346: mov R12, #10
l347: ldr R0, [sp], +R12
l348: ldr R8, [sp], #+9
l349: mov R2, #15
l350: ldr R5, [sp], +R2
l351: mov R12, #67
l352: ldr R3, [sp], -R12
l353: mov R5, #3
l354: ldr R12, [sp], +R5
l355: mov R2, #61
l356: ldr R2, [sp, +R2]
l357: ldr R0, [sp], #-2
l358: ldr R10, [sp], #-3
l359: mov R0, #11
l360: ldr R7, [sp], +R0
l361: ldr R10, [sp, #+18]
l362: ldrVS R0, [sp, #+31]
l363: mov R6, #23
l364: ldr R4, [sp, +R6]!
l365: mov R5, #24
l366: ldr R4, [sp, -R5]!
l367: mov R12, #43
l368: ldr R10, [sp, +R12]!
l369: ldr R8, [sp], #-4
l370: ldr R2, [sp, #+9]
l371: ldr R10, [sp, #-31]!
l372: mov R3, #1
l373: ldr R2, [sp], -R3
l374: ldr R0, [sp, #+19]!
l375: mov R11, #14
l376: ldr R1, [sp, +R11]!
l377: mov R0, #21
l378: ldr R11, [sp, +R0]
l379: ldrHI R9, [sp, #+14]
l380: mov R14, #38
l381: ldr R7, [sp, -R14]!
l382: ldrCS R11, [sp, #-8]
l383: mov R1, #6
l384: ldr R5, [sp, +R1]!
l385: ldr R6, [sp], #+27
l386: ldr R6, [sp, #+6]!
l387: ldr R9, [sp, #+9]
l388: mov R6, #7
l389: ldrNE R0, [sp, -R6]
l390: ldr R1, [sp, #-50]!
l391: mov R1, #2
l392: ldr R9, [sp], -R1
l393: ldr R11, [sp, #-0]
l394: ldrVS R12, [sp, #+26]
l395: mov R14, #49
l396: ldr R12, [sp], +R14
l397: ldr R4, [sp], #+10
l398: ldr R2, [sp], #-58
l399: ldr R1, [sp], #+36
l400: ldrVC R3, [sp, #-43]
l401: ldr R3, [sp], #-22
l402: ldrLS R2, [sp, #+25]
l403: ldr R4, [sp, #-19]
l404: ldr R0, [sp, #+18]!
l405: mov R11, #34
l406: ldrNE R3, [sp, +R11]
l407: ldrCC R4, [sp, #-33]
l408: mov R4, #9
l409: ldr R2, [sp, -R4]!
l410: mov R1, #23
l411: ldr R7, [sp], -R1
l412: ldr R1, [sp], #+14
l413: mov R14, #10
l414: ldr R2, [sp, -R14]!
l415: ldr R2, [sp, #+28]!
l416: ldrNE R0, [sp, #-26]
l417: ldr R4, [sp], #-14
l418: ldr R2, [sp, #+24]!
l419: mov R0, #16
l420: ldr R7, [sp], +R0
l421: ldrCC R7, [sp, #-5]
l422: ldr R2, [sp], #-58
l423: ldr R6, [sp, #+59]!
l424: ldr R9, [sp], #-61
l425: ldrGE R8, [sp, #+16]
l426: mov R14, #3
l427: ldr R9, [sp], -R14
l428: mov R3, #35
l429: ldr R9, [sp, +R3]!
l430: mov R5, #5
l431: ldr R8, [sp, -R5]
l432: ldr R10, [sp, #-33]
l433: mov R1, #5
l434: ldr R8, [sp], -R1
l435: mov R5, #18
l436: ldr R9, [sp, +R5]!
l437: ldr R4, [sp, #+5]!
l438: mov R8, #0
l439: ldrHI R12, [sp, +R8]
l440: ldr R11, [sp, #-6]!
l441: ldrVC R9, [sp, #-18]
l442: mov R2, #6
l443: ldr R0, [sp, +R2]
l444: ldrPL R10, [sp, #+22]
l445: mov R8, #16
l446: ldr R3, [sp], -R8
l447: ldr R10, [sp], #-5
l448: mov R6, #13
l449: ldr R3, [sp], +R6
l450: mov R2, #14
l451: ldr R2, [sp], +R2
l452: ldr R9, [sp, #-46]
l453: mov R9, #28
l454: ldr R3, [sp, -R9]!
l455: ldr R8, [sp, #+37]!
l456: mov R11, #24
l457: ldr R12, [sp], -R11
l458: ldr R14, [sp, #+10]!
l459: ldr R7, [sp], #-17
l460: ldr R0, [sp, #+15]!
l461: mov R5, #39
l462: ldr R5, [sp, -R5]!
l463: mov R10, #36
l464: ldr R10, [sp, +R10]
l465: mov R7, #1
l466: ldr R1, [sp, -R7]!
l467: mov R9, #0
l468: ldrLE R1, [sp, -R9]
l469: mov R8, #55
l470: ldr R5, [sp, +R8]
l471: ldr R12, [sp], #+58
l472: ldrCC R2, [sp, #-39]
l473: mov R0, #21
l474: ldr R7, [sp, -R0]!
l475: ldr R1, [sp, #+10]!
l476: mov R3, #49
l477: ldr R2, [sp, -R3]!
l478: mov R7, #47
l479: ldr R1, [sp, +R7]!
l480: mov R0, #40
l481: ldr R5, [sp, -R0]
l482: ldr R7, [sp], #+6
l483: mov R6, #14
l484: ldrLT R12, [sp, -R6]
l485: mov R4, #37
l486: ldr R6, [sp], -R4
l487: mov R9, #38
l488: ldr R9, [sp], +R9
l489: ldr R6, [sp], #-61
l490: ldr R9, [sp, #+65]
l491: ldr R3, [sp, #+36]
l492: mov R4, #27
l493: ldr R2, [sp, +R4]!
l494: ldr R7, [sp], #+15
l495: ldrMI R6, [sp, #-22]
l496: ldr R4, [sp, #+0]
l497: ldrLS R7, [sp, #-2]
l498: ldrNE R5, [sp, #+28]
l499: ldr R9, [sp], #-30
l500: mov R10, #14
l501: ldrHI R6, [sp, -R10]
l502: mov R0, #10
l503: ldrPL R9, [sp, +R0]
l504: mov R11, #36
l505: ldr R9, [sp], +R11
l506: ldr R6, [sp], #+17
l507: mov R6, #21
l508: ldr R3, [sp, -R6]!
l509: mov R4, #1
l510: ldrEQ R2, [sp, -R4]
l511: mov R6, #1
l512: ldr R8, [sp, -R6]
l513: mov R3, #13
l514: ldr R9, [sp, +R3]!
l515: ldr R7, [sp], #-23
l516: ldrCS R0, [sp, #+35]
l517: ldr R3, [sp], #-30
l518: mov R4, #65
l519: ldrEQ R14, [sp, +R4]
l520: mov R7, #61
l521: ldr R6, [sp], +R7
l522: mov R1, #38
l523: ldr R1, [sp], -R1
l524: mov R14, #16
l525: ldr R4, [sp], -R14
l526: mov R2, #36
l527: ldr R4, [sp, +R2]!
l528: mov R2, #30
l529: ldr R12, [sp, -R2]
l530: mov R10, #12
l531: ldr R14, [sp, +R10]!
l532: ldr R5, [sp, #-41]!
l533: mov R12, #46
l534: ldr R4, [sp], +R12
l535: ldr R0, [sp, #-31]!
l536: mov R5, #7
l537: ldr R6, [sp], +R5
l538: ldr R8, [sp], #+27
l539: mov R5, #53
l540: ldr R5, [sp, -R5]!
l541: ldrLT R9, [sp, #+54]
l542: mov R9, #38
l543: ldr R12, [sp, +R9]
l544: mov R3, #10
l545: ldr R3, [sp, -R3]!
l546: mov R6, #49
l547: ldr R9, [sp, +R6]!
l548: mov R3, #19
l549: ldr R1, [sp, +R3]!
l550: mov R14, #52
l551: ldr R10, [sp], -R14
l552: mov R9, #49
l553: ldr R14, [sp], +R9
l554: mov R1, #42
l555: ldr R7, [sp, -R1]!
l556: mov R14, #15
l557: ldr R0, [sp], -R14
l558: mov R7, #44
l559: ldr R4, [sp], +R7
l560: ldr R2, [sp, #-49]!
l561: mov R11, #2
l562: ldrCS R6, [sp, -R11]
l563: mov R5, #2
l564: ldr R8, [sp], -R5
l565: ldr R9, [sp, #+18]!
l566: mov R14, #21
l567: ldrVC R2, [sp, +R14]
l568: mov R6, #20
l569: ldrGE R10, [sp, -R6]
l570: mov R4, #10
l571: ldr R12, [sp, +R4]!
l572: mov R2, #10
l573: ldr R5, [sp, -R2]!
l574: ldr R8, [sp, #+8]
l575: ldr R7, [sp, #-23]!
l576: mov R14, #38
l577: ldrHI R2, [sp, +R14]
l578: ldr R8, [sp, #+60]
l579: mov R8, #30
l580: ldr R9, [sp, +R8]!
l581: ldr R9, [sp, #+21]!
l582: ldr R2, [sp, #-44]!
l583: mov R0, #35
l584: ldr R8, [sp, +R0]!
l585: mov R4, #12
l586: ldr R4, [sp, +R4]!
l587: ldrEQ R10, [sp, #-16]
l588: mov R7, #45
l589: ldr R3, [sp], -R7
l590: mov R5, #55
l591: ldr R14, [sp], +R5
l592: ldr R3, [sp], #-27
l593: ldr R10, [sp, #+5]!
l594: mov R3, #34
l595: ldrVS R7, [sp, -R3]
l596: ldr R5, [sp, #-42]
l597: mov R6, #20
l598: ldr R5, [sp], +R6
l599: ldr R5, [sp], #-35
l600: ldrLE R5, [sp, #+35]
l601: ldr R2, [sp, #+37]!
l602: ldr R8, [sp], #-64
l603: ldr R8, [sp, #+47]!
l604: mov R2, #22
l605: ldr R6, [sp], -R2
l606: mov R3, #45
l607: ldrVS R5, [sp, +R3]
l608: ldrLE R2, [sp, #-16]
l609: mov R1, #31
l610: ldr R4, [sp, +R1]!
l611: mov R7, #33
l612: ldr R9, [sp], -R7
l613: ldr R4, [sp, #+7]!
l614: mov R3, #25
l615: ldrHI R6, [sp, -R3]
l616: ldr R1, [sp], #-21
l617: mov R0, #26
l618: ldr R14, [sp], +R0
l619: ldr R9, [sp], #-4
l620: ldrNE R8, [sp, #-27]
l621: mov R1, #11
l622: ldr R0, [sp, +R1]!
l623: ldrLE R1, [sp, #-28]
l624: ldrMI R2, [sp, #+17]
l625: mov R4, #28
l626: ldr R12, [sp, -R4]!
l627: mov R0, #41
l628: ldr R10, [sp], +R0
l629: mov R3, #46
l630: ldr R4, [sp, -R3]
l631: mov R5, #19
l632: ldrCC R3, [sp, -R5]
l633: mov R7, #28
l634: ldr R14, [sp], -R7
l635: mov R11, #6
l636: ldr R14, [sp], +R11
l637: ldrGE R8, [sp, #+8]
l638: mov R2, #28
l639: ldrCC R6, [sp, -R2]
l640: mov R9, #23
l641: ldr R6, [sp, -R9]!
l642: ldr R0, [sp, #+3]
l643: ldr R5, [sp, #+45]
l644: ldr R14, [sp, #+3]!
l645: ldr R1, [sp, #+18]!
l646: ldr R10, [sp, #+27]
l647: ldr R2, [sp], #+10
l648: mov R12, #43
l649: ldr R12, [sp, -R12]
l650: ldr R10, [sp, #-8]!
l651: ldr R11, [sp, #+9]
l652: mov R5, #26
l653: ldrEQ R1, [sp, -R5]
l654: mov R5, #38
l655: ldr R9, [sp, +R5]!
l656: mov R3, #27
l657: ldrLE R4, [sp, -R3]
l658: mov R3, #35
l659: ldrEQ R8, [sp, -R3]
l660: ldr R6, [sp], #-2
l661: ldr R11, [sp, #-14]
l662: mov R11, #39
l663: ldrLS R3, [sp, -R11]
l664: mov R6, #56
l665: ldr R3, [sp, -R6]
l666: ldr R11, [sp, #-27]!
l667: ldr R11, [sp], #+1
l668: ldr R1, [sp], #-41
l669: mov R4, #1
l670: ldr R1, [sp, -R4]!
l671: mov R9, #2
l672: ldrVS R0, [sp, -R9]
l673: mov R2, #63
l674: ldr R9, [sp, +R2]!
l675: mov R1, #18
l676: ldr R5, [sp, -R1]!
l677: ldr R8, [sp, #-46]!
l678: ldr R6, [sp], #+65
l679: ldr R8, [sp], #-53
l680: ldr R6, [sp, #+8]!
l681: ldrEQ R11, [sp, #-6]
l682: mov R12, #0
l683: ldr R4, [sp, -R12]!
l684: mov R8, #41
l685: ldr R14, [sp], +R8
l686: ldr R1, [sp], #+11
l687: mov R6, #22
l688: ldr R1, [sp], -R6
l689: mov R7, #47
l690: ldr R2, [sp], -R7
l691: ldrGT R0, [sp, #-1]
l692: ldr R8, [sp, #+60]!
l693: ldr R8, [sp, #-43]
l694: mov R14, #28
l695: ldr R8, [sp, -R14]
l696: ldr R8, [sp], #-52
l697: ldr R9, [sp], #-1
l698: ldr R11, [sp], #+42
l699: mov R6, #4
l700: ldr R2, [sp], -R6
l701: mov R1, #5
l702: ldr R9, [sp, -R1]!
l703: ldrPL R2, [sp, #-23]
l704: mov R0, #16
l705: ldrLT R2, [sp, -R0]
l706: mov R0, #22
l707: ldr R7, [sp], -R0
l708: mov R10, #40
l709: ldr R1, [sp, +R10]!
l710: ldr R7, [sp, #-33]!
l711: ldrGT R8, [sp, #-20]
l712: mov R6, #26
l713: ldr R1, [sp, -R6]
l714: mov R8, #9
l715: ldr R10, [sp], +R8
l716: mov R7, #22
l717: ldr R7, [sp, -R7]!
l718: mov R10, #1
l719: ldr R9, [sp, -R10]!
l720: ldr R4, [sp], #+15
l721: ldr R10, [sp, #+9]
l722: mov R4, #0
l723: ldrHI R14, [sp, -R4]
l724: mov R12, #6
l725: ldr R1, [sp, -R12]
l726: mov R5, #7
l727: ldrCS R10, [sp, +R5]
l728: mov R8, #4
l729: ldrNE R4, [sp, +R8]
l730: ldr R4, [sp], #+6
l731: ldr R0, [sp], #-25
l732: mov R4, #10
l733: ldr R14, [sp], -R4
l734: mov R8, #7
l735: ldrLE R2, [sp, +R8]
l736: mov R4, #26
l737: ldr R14, [sp], +R4
l738: ldr R11, [sp, #+10]!
l739: mov R8, #7
l740: ldrCC R2, [sp, +R8]
l741: mov R3, #11
l742: ldr R4, [sp, -R3]!
l743: mov R1, #17
l744: ldr R8, [sp], +R1
l745: mov R7, #36
l746: ldr R5, [sp], -R7
l747: ldr R7, [sp, #+1]!
l748: mov R2, #50
l749: ldrLS R6, [sp, +R2]
l750: ldr R14, [sp, #+35]!
l751: ldrLE R2, [sp, #-23]
l752: ldrGT R10, [sp, #+29]
l753: mov R14, #28
l754: ldrLT R12, [sp, -R14]
l755: mov R10, #26
l756: ldr R9, [sp], -R10
l757: ldr R2, [sp], #-11
l758: ldr R12, [sp, #+1]!
l759: ldr R5, [sp], #-2
l760: mov R9, #65
l761: ldr R6, [sp, +R9]!
l762: mov R5, #63
l763: ldr R0, [sp], -R5
l764: ldrGE R1, [sp, #+19]
l765: ldrMI R7, [sp, #+50]
l766: mov R3, #33
l767: ldr R5, [sp, +R3]
l768: mov R11, #28
l769: ldr R11, [sp], +R11
l770: ldr R8, [sp, #-36]!
l771: ldr R4, [sp, #+51]!
l772: ldrEQ R8, [sp, #-17]
l773: mov R9, #34
l774: ldr R11, [sp], -R9
l775: mov R4, #4
l776: ldr R7, [sp], +R4
l777: ldrMI R5, [sp, #+31]
l778: mov R8, #2
l779: ldr R6, [sp, -R8]!
l780: ldr R2, [sp], #+42
l781: mov R7, #17
l782: ldr R11, [sp], -R7
l783: mov R9, #26
l784: ldr R14, [sp, -R9]!
l785: mov R4, #17
l786: ldrMI R3, [sp, +R4]
l787: ldr R6, [sp, #-11]!
l788: mov R5, #51
l789: ldr R14, [sp, +R5]!
l790: ldr R11, [sp, #-40]!
l791: mov R11, #11
l792: ldr R5, [sp], -R11
l793: ldr R14, [sp, #+38]!
l794: mov R5, #18
l795: ldrVS R6, [sp, -R5]
l796: ldrMI R9, [sp, #-2]
l797: mov R11, #44
l798: ldr R5, [sp, -R11]!
l799: mov R11, #22
l800: ldrNE R8, [sp, +R11]
l801: mov R8, #6
l802: ldrLS R9, [sp, +R8]
l803: mov R5, #16
l804: ldr R11, [sp, +R5]!
l805: mov R0, #21
l806: ldr R11, [sp, -R0]!
l807: ldr R14, [sp], #+44
l808: ldr R2, [sp, #+18]!
l809: ldrPL R0, [sp, #-12]
l810: ldr R3, [sp], #-16
l811: mov R6, #3
l812: ldr R5, [sp, -R6]!
l813: ldr R12, [sp, #+17]!
l814: mov R14, #7
l815: ldr R7, [sp], -R14
l816: mov R2, #43
l817: ldr R7, [sp, -R2]!
l818: ldr R0, [sp, #+53]!
l819: mov R8, #9
l820: ldr R7, [sp, +R8]!
l821: ldr R14, [sp, #-45]!
l822: ldr R0, [sp, #+5]!
l823: ldr R5, [sp, #+15]
l824: mov R5, #4
l825: ldr R2, [sp, +R5]!
l826: mov R9, #6
l827: ldr R3, [sp, +R9]!
l828: mov R8, #23
l829: ldr R4, [sp], -R8
l830: mov R3, #34
l831: ldrGE R10, [sp, +R3]
l832: ldr R5, [sp], #+28
l833: ldrLT R7, [sp, #-14]
l834: ldr R3, [sp, #+21]
l835: ldr R8, [sp], #-43
l836: ldr R2, [sp], #+15
l837: ldr R4, [sp], #+20
l838: mov R1, #36
l839: ldr R3, [sp, -R1]!
l840: mov R3, #54
l841: ldr R4, [sp, +R3]!
l842: ldr R1, [sp], #-30
l843: mov R14, #8
l844: ldr R1, [sp, +R14]
l845: ldr R12, [sp, #+38]!
l846: ldr R0, [sp], #-37
l847: ldr R0, [sp, #+34]!
l848: mov R9, #19
l849: ldr R5, [sp, -R9]!
l850: mov R7, #32
l851: ldr R2, [sp], -R7
l852: ldr R4, [sp, #+56]!
l853: ldrHI R6, [sp, #-14]
l854: ldrLS R2, [sp, #+6]
l855: ldr R10, [sp, #-40]!
l856: ldrPL R5, [sp, #-10]
l857: ldr R8, [sp, #+6]
l858: mov R7, #37
l859: ldr R5, [sp, +R7]!
l860: mov R2, #53
l861: ldr R10, [sp], -R2
l862: mov R4, #38
l863: ldr R4, [sp, +R4]!
l864: ldr R8, [sp, #-1]!
l865: mov R8, #5
l866: ldrCS R10, [sp, -R8]
l867: mov R0, #5
l868: ldr R11, [sp, +R0]!
l869: mov R1, #10
l870: ldr R3, [sp, -R1]
l871: mov R6, #23
l872: ldr R11, [sp, -R6]
l873: ldrNE R1, [sp, #+5]
l874: mov R6, #5
l875: ldrGT R7, [sp, +R6]
l876: ldr R5, [sp, #-51]
l877: mov R9, #33
l878: ldrCS R10, [sp, -R9]
l879: mov R4, #31
l880: ldr R3, [sp, -R4]!
l881: mov R12, #24
l882: ldr R1, [sp], -R12
l883: mov R6, #61
l884: ldr R9, [sp], +R6
l885: mov R3, #0
l886: ldr R4, [sp, -R3]!
l887: mov R5, #54
l888: ldr R5, [sp, -R5]!
l889: mov R12, #6
l890: ldr R10, [sp, -R12]!
l891: mov R4, #9
l892: ldr R14, [sp, +R4]!
l893: mov R5, #18
l894: ldr R6, [sp], +R5
l895: mov R8, #26
l896: ldrEQ R10, [sp, +R8]
l897: ldr R1, [sp, #+28]
l898: ldrNE R14, [sp, #+37]
l899: mov R12, #22
l900: ldr R6, [sp, -R12]!
l901: mov R6, #57
l902: ldr R10, [sp, +R6]
l903: ldr R1, [sp, #+17]
l904: ldr R14, [sp, #+61]
l905: mov R12, #0
l906: ldr R5, [sp], -R12
l907: mov R14, #50
l908: ldr R12, [sp], +R14
l909: mov R2, #12
l910: ldr R4, [sp], -R2
l911: mov R14, #10
l912: ldrLS R1, [sp, +R14]
l913: mov R3, #29
l914: ldrLE R11, [sp, +R3]
l915: mov R10, #17
l916: ldr R0, [sp, -R10]
l917: ldrLE R1, [sp, #-28]
l918: ldrEQ R1, [sp, #-21]
l919: mov R7, #31
l920: ldr R1, [sp], -R7
l921: mov R0, #13
l922: ldr R6, [sp, -R0]
l923: ldr R8, [sp, #+26]
l924: mov R0, #51
l925: ldr R2, [sp, +R0]!
l926: ldr R6, [sp, #-58]!
l927: ldr R7, [sp, #-5]!
l928: mov R4, #7
l929: ldr R5, [sp], +R4
l930: mov R12, #63
l931: ldr R5, [sp], +R12
l932: ldrLT R12, [sp, #-21]
l933: ldr R5, [sp], #-4
l934: ldr R0, [sp], #-63
l935: mov R10, #10
l936: ldr R0, [sp, +R10]!
l937: mov R1, #56
l938: ldr R2, [sp, +R1]
l939: ldr R0, [sp, #+29]!
l940: mov R4, #5
l941: ldr R11, [sp, -R4]!
l942: ldrCS R6, [sp, #+10]
l943: ldr R10, [sp], #-6
l944: ldr R0, [sp], #+31
l945: mov R8, #22
l946: ldr R6, [sp], -R8
l947: ldr R4, [sp], #-12
l948: ldr R10, [sp, #-28]
l949: ldr R1, [sp, #-7]
l950: mov R8, #13
l951: ldr R14, [sp, +R8]!
l952: mov R7, #23
l953: ldr R8, [sp, +R7]
l954: mov R14, #32
l955: ldr R9, [sp, -R14]!
l956: mov R3, #10
l957: ldr R6, [sp], -R3
l958: ldr R4, [sp, #+13]!
l959: mov R7, #41
l960: ldr R0, [sp], +R7
l961: ldr R9, [sp, #+16]
l962: ldrVC R12, [sp, #+10]
l963: mov R1, #5
l964: ldr R2, [sp, +R1]!
l965: ldrLE R10, [sp, #+10]
l966: mov R0, #55
l967: ldr R9, [sp], -R0
l968: ldr R7, [sp], #+33
l969: mov R5, #9
l970: ldr R1, [sp, -R5]!
l971: ldr R14, [sp, #+43]!
l972: mov R1, #7
l973: ldr R9, [sp], -R1
l974: ldr R7, [sp], #-32
l975: mov R5, #1
l976: ldrNE R3, [sp, -R5]
l977: ldr R6, [sp], #-7
l978: mov R4, #14
l979: ldr R14, [sp, -R4]
l980: ldr R0, [sp, #+10]!
l981: mov R9, #20
l982: ldr R12, [sp, +R9]
l983: mov R7, #14
l984: ldr R9, [sp, -R7]!
l985: ldr R0, [sp, #+45]
l986: mov R6, #20
l987: ldr R12, [sp, -R6]!
l988: mov R11, #44
l989: ldr R12, [sp, +R11]!
l990: ldr R0, [sp], #+20
l991: mov R3, #15
l992: ldr R7, [sp], -R3
l993: mov R2, #48
l994: ldrCC R7, [sp, -R2]
l995: mov R11, #1
l996: ldr R7, [sp], -R11
l997: mov R10, #13
l998: ldr R4, [sp, +R10]!
l999: ldr R8, [sp, #-31]
l1000: mov R11, #17
l1001: ldr R9, [sp], -R11
end: b end

