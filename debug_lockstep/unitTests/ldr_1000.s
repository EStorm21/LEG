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
val1: .word 3308722809
next1:ldr R2, val2
b next2
val2: .word 59883110
next2:ldr R3, val3
b next3
val3: .word 941128245
next3:ldr R4, val4
b next4
val4: .word 3755962005
next4:ldr R5, val5
b next5
val5: .word 1854535027
next5:ldr R6, val6
b next6
val6: .word 2991950727
next6:ldr R7, val7
b next7
val7: .word 2979724025
next7:ldr R8, val8
b next8
val8: .word 2009861019
next8:ldr R9, val9
b next9
val9: .word 510075235
next9:ldr R10, val10
b next10
val10: .word 642732379
next10:ldr R11, val11
b next11
val11: .word 3105809914
next11:ldr R12, val12
b next12
val12: .word 38209995
next12:ldr R14, val14
b next14
val14: .word 3070457064

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 2749278474
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 2032877477
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 194725240
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 3577860047
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 2878033926
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 1502032629
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 1067250910
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 4121541043
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 2462346460
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 4144879606
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 2399953670
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 3171870058
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 914818513
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 2168640177
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 468721231
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 2262333202
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 54701075
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 3076268034
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 4133089500
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 90941057
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 991918336
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: ldr R6, [sp, #-36]!
l2: mov R10, #4
l3: ldr R11, [sp, +R10]
l4: ldr R1, [sp], #+12
l5: mov R0, #0
l6: ldr R0, [sp], +R0
l7: mov R5, #8
l8: ldr R2, [sp], -R5
l9: mov R8, #4
l10: ldr R8, [sp, -R8]!
l11: ldr R6, [sp], #+0
l12: mov R4, #24
l13: ldr R6, [sp, +R4]!
l14: mov R10, #60
l15: ldrHI R7, [sp, -R10]
l16: mov R3, #12
l17: ldr R4, [sp], -R3
l18: ldr R1, [sp, #-56]!
l19: ldr R11, [sp, #+60]!
l20: ldr R5, [sp], #-48
l21: mov R8, #4
l22: ldr R12, [sp, -R8]
l23: ldr R8, [sp], #+60
l24: mov R8, #56
l25: ldr R0, [sp, -R8]!
l26: mov R12, #4
l27: ldrCC R8, [sp, -R12]
l28: ldr R12, [sp, #+16]!
l29: ldr R6, [sp], #+16
l30: mov R0, #20
l31: ldr R1, [sp, -R0]!
l32: ldrGT R12, [sp, #+32]
l33: ldr R4, [sp, #+32]!
l34: mov R3, #4
l35: ldr R7, [sp], -R3
l36: ldr R0, [sp], #-12
l37: ldrMI R9, [sp, #-20]
l38: mov R14, #4
l39: ldr R9, [sp], +R14
l40: mov R10, #20
l41: ldr R2, [sp, -R10]
l42: mov R5, #12
l43: ldr R2, [sp, +R5]!
l44: ldr R7, [sp], #-36
l45: ldr R0, [sp, #+48]!
l46: mov R3, #20
l47: ldr R9, [sp, -R3]
l48: ldr R5, [sp, #-32]
l49: mov R3, #24
l50: ldr R4, [sp], -R3
l51: ldr R6, [sp, #-28]!
l52: ldr R4, [sp], #+8
l53: ldr R10, [sp, #+40]!
l54: mov R8, #48
l55: ldr R14, [sp, -R8]
l56: mov R11, #32
l57: ldr R3, [sp, -R11]
l58: mov R14, #36
l59: ldr R10, [sp, -R14]
l60: mov R7, #12
l61: ldr R8, [sp], -R7
l62: ldr R12, [sp], #-48
l63: ldr R1, [sp, #+48]!
l64: ldrEQ R6, [sp, #-4]
l65: ldr R2, [sp], #+12
l66: ldr R9, [sp, #-12]!
l67: ldr R11, [sp], #+16
l68: ldr R8, [sp], #-32
l69: ldrVC R6, [sp, #-16]
l70: mov R14, #24
l71: ldr R7, [sp], -R14
l72: ldr R8, [sp, #+4]
l73: mov R1, #8
l74: ldr R4, [sp, -R1]!
l75: mov R3, #64
l76: ldr R0, [sp, +R3]
l77: ldr R12, [sp, #+16]!
l78: mov R10, #0
l79: ldr R7, [sp, +R10]!
l80: mov R7, #20
l81: ldr R3, [sp, -R7]
l82: mov R1, #28
l83: ldr R6, [sp], +R1
l84: ldrLS R11, [sp, #-12]
l85: mov R1, #16
l86: ldr R11, [sp, -R1]!
l87: ldrGT R1, [sp, #+36]
l88: ldr R8, [sp, #+0]!
l89: mov R7, #16
l90: ldr R11, [sp, -R7]!
l91: ldr R5, [sp, #+12]
l92: mov R0, #52
l93: ldrLS R2, [sp, +R0]
l94: ldrLS R6, [sp, #+32]
l95: mov R10, #24
l96: ldrPL R0, [sp, +R10]
l97: ldr R9, [sp], #+36
l98: ldr R2, [sp, #-36]
l99: mov R14, #4
l100: ldr R8, [sp, +R14]
l101: mov R1, #36
l102: ldrGT R7, [sp, -R1]
l103: mov R9, #48
l104: ldr R5, [sp, -R9]
l105: ldrLE R10, [sp, #+16]
l106: ldr R6, [sp, #-28]!
l107: ldr R0, [sp, #+20]!
l108: ldr R2, [sp, #-16]
l109: mov R10, #4
l110: ldr R8, [sp], -R10
l111: ldrLT R14, [sp, #+28]
l112: mov R4, #16
l113: ldr R12, [sp, -R4]!
l114: mov R14, #44
l115: ldr R12, [sp, +R14]!
l116: mov R2, #52
l117: ldr R8, [sp, -R2]!
l118: mov R14, #0
l119: ldr R12, [sp], +R14
l120: mov R0, #28
l121: ldrLE R1, [sp, +R0]
l122: mov R11, #12
l123: ldr R10, [sp, -R11]!
l124: ldr R11, [sp, #+48]!
l125: ldr R5, [sp, #-4]!
l126: ldr R8, [sp], #-24
l127: mov R1, #4
l128: ldrGT R4, [sp, -R1]
l129: mov R8, #8
l130: ldr R8, [sp, +R8]
l131: mov R5, #40
l132: ldr R6, [sp, +R5]!
l133: ldrVC R7, [sp, #-8]
l134: mov R9, #56
l135: ldr R7, [sp, -R9]!
l136: ldr R10, [sp], #-8
l137: mov R10, #24
l138: ldr R2, [sp], +R10
l139: mov R5, #24
l140: ldr R0, [sp], +R5
l141: mov R8, #28
l142: ldr R1, [sp], -R8
l143: ldr R7, [sp, #-8]
l144: ldr R11, [sp, #+28]!
l145: mov R7, #40
l146: ldrVS R7, [sp, -R7]
l147: ldr R11, [sp, #-24]!
l148: ldr R7, [sp, #+4]
l149: mov R12, #40
l150: ldr R11, [sp, +R12]!
l151: mov R1, #0
l152: ldr R7, [sp, +R1]!
l153: mov R7, #12
l154: ldr R12, [sp, -R7]
l155: mov R10, #4
l156: ldr R2, [sp, +R10]
l157: ldr R7, [sp], #-36
l158: mov R3, #20
l159: ldr R0, [sp], -R3
l160: mov R6, #4
l161: ldr R4, [sp, +R6]
l162: ldr R6, [sp, #+56]!
l163: ldr R0, [sp, #-24]
l164: ldr R9, [sp], #-40
l165: ldr R11, [sp, #+44]
l166: ldr R8, [sp, #+8]!
l167: ldr R12, [sp], #-20
l168: ldrGT R14, [sp, #+52]
l169: mov R2, #8
l170: ldr R0, [sp, -R2]!
l171: mov R11, #12
l172: ldr R4, [sp, +R11]!
l173: ldr R0, [sp, #+36]!
l174: ldr R12, [sp, #-4]!
l175: ldr R10, [sp, #-48]
l176: ldr R7, [sp, #-40]!
l177: mov R4, #56
l178: ldr R14, [sp, +R4]!
l179: mov R6, #8
l180: ldr R1, [sp, -R6]
l181: ldr R7, [sp, #-40]!
l182: ldr R11, [sp, #-16]
l183: ldr R11, [sp, #+16]!
l184: ldr R12, [sp, #+20]
l185: mov R3, #4
l186: ldrHI R7, [sp, +R3]
l187: mov R2, #20
l188: ldr R9, [sp, -R2]!
l189: ldr R11, [sp, #+8]
l190: ldr R2, [sp, #-8]!
l191: ldr R12, [sp], #+44
l192: mov R11, #36
l193: ldr R0, [sp, -R11]!
l194: mov R10, #40
l195: ldr R1, [sp, +R10]!
l196: ldr R14, [sp], #-24
l197: ldr R4, [sp], #+32
l198: mov R2, #8
l199: ldr R3, [sp], -R2
l200: mov R1, #0
l201: ldr R4, [sp, +R1]!
l202: mov R7, #8
l203: ldr R10, [sp, -R7]!
l204: mov R12, #20
l205: ldrCS R10, [sp, -R12]
l206: mov R10, #12
l207: ldr R7, [sp], -R10
l208: mov R14, #32
l209: ldr R5, [sp], -R14
l210: ldr R7, [sp], #+8
l211: ldr R8, [sp], #+36
l212: mov R14, #12
l213: ldr R7, [sp, -R14]!
l214: ldrLE R11, [sp, #-24]
l215: ldr R10, [sp], #-16
l216: ldr R2, [sp, #+36]!
l217: mov R11, #52
l218: ldr R3, [sp, -R11]!
l219: ldr R1, [sp, #+52]!
l220: mov R7, #52
l221: ldr R5, [sp, -R7]!
l222: mov R5, #56
l223: ldr R5, [sp, +R5]!
l224: mov R9, #60
l225: ldr R11, [sp, -R9]!
l226: ldr R4, [sp, #+28]
l227: mov R8, #4
l228: ldr R4, [sp, -R8]!
l229: mov R6, #68
l230: ldrLS R6, [sp, +R6]
l231: mov R14, #36
l232: ldr R7, [sp], +R14
l233: mov R12, #28
l234: ldr R1, [sp], -R12
l235: mov R4, #20
l236: ldrCS R6, [sp, +R4]
l237: mov R1, #8
l238: ldr R7, [sp, +R1]!
l239: mov R4, #36
l240: ldrHI R12, [sp, +R4]
l241: ldr R1, [sp], #+28
l242: mov R8, #16
l243: ldr R5, [sp, +R8]!
l244: ldr R3, [sp], #-44
l245: mov R5, #36
l246: ldr R4, [sp, +R5]!
l247: ldr R3, [sp, #-48]!
l248: mov R8, #48
l249: ldrNE R10, [sp, +R8]
l250: ldr R2, [sp, #+52]!
l251: mov R5, #0
l252: ldr R11, [sp, +R5]!
l253: ldrHI R10, [sp, #-12]
l254: ldr R0, [sp], #-36
l255: mov R12, #40
l256: ldrMI R12, [sp, +R12]
l257: ldr R10, [sp, #-24]
l258: ldr R3, [sp], #+0
l259: ldr R9, [sp], #-24
l260: mov R11, #72
l261: ldr R10, [sp, +R11]!
l262: ldrPL R10, [sp, #-32]
l263: ldr R2, [sp, #-36]
l264: mov R0, #44
l265: ldr R11, [sp], -R0
l266: ldr R9, [sp], #-24
l267: mov R12, #52
l268: ldr R2, [sp, +R12]!
l269: ldr R1, [sp, #-40]!
l270: ldr R9, [sp], #+44
l271: mov R4, #44
l272: ldrVS R7, [sp, -R4]
l273: mov R4, #36
l274: ldrHI R6, [sp, -R4]
l275: ldr R11, [sp, #+0]
l276: ldr R1, [sp], #-12
l277: mov R4, #32
l278: ldr R11, [sp, -R4]!
l279: mov R12, #24
l280: ldr R0, [sp, +R12]!
l281: mov R8, #16
l282: ldr R5, [sp, +R8]!
l283: mov R12, #20
l284: ldr R3, [sp], -R12
l285: mov R5, #16
l286: ldr R10, [sp, +R5]
l287: ldr R12, [sp], #-28
l288: mov R0, #56
l289: ldrLE R6, [sp, +R0]
l290: mov R8, #44
l291: ldr R10, [sp], +R8
l292: ldr R10, [sp, #+4]!
l293: ldrLT R2, [sp, #+4]
l294: ldr R5, [sp, #-40]
l295: mov R5, #4
l296: ldrNE R3, [sp, +R5]
l297: ldr R9, [sp], #+16
l298: ldr R1, [sp, #-64]
l299: mov R3, #56
l300: ldr R6, [sp, -R3]!
l301: mov R2, #12
l302: ldr R0, [sp], -R2
l303: ldr R10, [sp], #+4
l304: ldr R8, [sp], #-4
l305: ldr R6, [sp, #+64]!
l306: ldr R0, [sp, #-44]!
l307: ldr R10, [sp], #+44
l308: ldr R10, [sp, #-52]!
l309: mov R14, #56
l310: ldr R11, [sp, +R14]
l311: ldr R6, [sp], #+32
l312: mov R6, #36
l313: ldr R7, [sp], -R6
l314: mov R12, #0
l315: ldrHI R8, [sp, +R12]
l316: ldr R4, [sp], #+60
l317: mov R12, #16
l318: ldr R5, [sp, -R12]
l319: mov R14, #32
l320: ldr R12, [sp], -R14
l321: ldrLT R2, [sp, #+16]
l322: ldr R11, [sp], #-20
l323: ldr R11, [sp], #+16
l324: ldr R5, [sp], #+0
l325: mov R8, #16
l326: ldr R8, [sp, -R8]
l327: ldr R5, [sp], #-4
l328: ldr R3, [sp, #+0]!
l329: mov R1, #12
l330: ldrMI R7, [sp, -R1]
l331: mov R6, #8
l332: ldrEQ R5, [sp, +R6]
l333: mov R7, #4
l334: ldr R14, [sp, -R7]!
l335: mov R2, #4
l336: ldr R9, [sp, +R2]!
l337: ldr R0, [sp, #-24]!
l338: mov R2, #40
l339: ldr R7, [sp], +R2
l340: mov R14, #40
l341: ldrMI R9, [sp, -R14]
l342: ldr R3, [sp, #+20]!
l343: ldr R7, [sp], #+0
l344: ldr R1, [sp, #-64]
l345: ldr R6, [sp], #-16
l346: mov R9, #20
l347: ldr R7, [sp], +R9
l348: ldr R12, [sp, #-32]
l349: ldr R11, [sp], #-44
l350: mov R1, #28
l351: ldr R8, [sp], +R1
l352: ldrVC R10, [sp, #-56]
l353: mov R8, #4
l354: ldr R8, [sp], -R8
l355: mov R7, #28
l356: ldr R7, [sp, -R7]!
l357: mov R14, #12
l358: ldr R5, [sp], +R14
l359: ldr R9, [sp, #-36]!
l360: mov R7, #40
l361: ldrPL R9, [sp, +R7]
l362: ldr R4, [sp], #+60
l363: mov R3, #12
l364: ldr R0, [sp, -R3]!
l365: mov R9, #4
l366: ldr R3, [sp, +R9]!
l367: mov R10, #20
l368: ldr R9, [sp], -R10
l369: mov R1, #0
l370: ldr R7, [sp, +R1]!
l371: mov R10, #16
l372: ldr R11, [sp, -R10]!
l373: ldrVC R14, [sp, #+56]
l374: mov R14, #8
l375: ldr R2, [sp], -R14
l376: ldr R7, [sp, #+52]!
l377: mov R0, #56
l378: ldr R6, [sp, -R0]!
l379: mov R9, #40
l380: ldrMI R7, [sp, +R9]
l381: mov R9, #32
l382: ldrVC R7, [sp, +R9]
l383: ldr R1, [sp], #-4
l384: ldr R2, [sp], #+12
l385: mov R3, #36
l386: ldr R8, [sp], +R3
l387: mov R6, #8
l388: ldr R0, [sp], +R6
l389: ldr R14, [sp, #-24]!
l390: ldr R0, [sp], #+40
l391: ldr R3, [sp, #-20]!
l392: mov R2, #12
l393: ldr R12, [sp, -R2]!
l394: mov R14, #4
l395: ldr R6, [sp], -R14
l396: mov R8, #4
l397: ldrLE R9, [sp, -R8]
l398: ldr R5, [sp, #+32]!
l399: ldr R10, [sp, #-56]!
l400: ldr R8, [sp, #+44]!
l401: mov R7, #32
l402: ldr R12, [sp, -R7]
l403: mov R11, #8
l404: ldr R0, [sp], -R11
l405: mov R11, #0
l406: ldr R2, [sp], +R11
l407: ldrHI R8, [sp, #+20]
l408: ldr R7, [sp], #+12
l409: ldr R11, [sp, #-48]
l410: mov R10, #52
l411: ldr R3, [sp], -R10
l412: mov R6, #48
l413: ldr R14, [sp], +R6
l414: mov R8, #12
l415: ldr R12, [sp, -R8]
l416: ldr R4, [sp], #-32
l417: ldrPL R0, [sp, #+8]
l418: mov R10, #12
l419: ldr R9, [sp, -R10]!
l420: mov R7, #48
l421: ldr R12, [sp, +R7]
l422: mov R12, #40
l423: ldr R7, [sp, +R12]!
l424: mov R10, #16
l425: ldr R6, [sp, -R10]!
l426: ldr R6, [sp], #+4
l427: ldr R14, [sp, #-40]!
l428: mov R9, #48
l429: ldr R6, [sp], +R9
l430: mov R2, #4
l431: ldr R3, [sp, -R2]!
l432: mov R7, #44
l433: ldr R10, [sp, -R7]
l434: ldr R0, [sp, #-24]!
l435: ldr R3, [sp], #+16
l436: mov R0, #4
l437: ldr R3, [sp, +R0]!
l438: ldr R14, [sp], #-40
l439: mov R6, #52
l440: ldr R12, [sp], +R6
l441: mov R7, #0
l442: ldrHI R8, [sp, +R7]
l443: ldr R10, [sp], #-48
l444: mov R6, #20
l445: ldr R10, [sp, +R6]!
l446: ldr R6, [sp], #+24
l447: mov R6, #12
l448: ldr R7, [sp], -R6
l449: ldr R14, [sp, #+20]!
l450: ldr R1, [sp, #-40]!
l451: ldr R4, [sp, #+24]!
l452: mov R12, #12
l453: ldrVS R12, [sp, +R12]
l454: mov R2, #4
l455: ldr R14, [sp, +R2]
l456: ldr R4, [sp, #-16]!
l457: mov R4, #44
l458: ldr R7, [sp, +R4]!
l459: ldr R1, [sp], #+0
l460: mov R1, #68
l461: ldr R0, [sp, -R1]!
l462: mov R10, #52
l463: ldr R5, [sp], +R10
l464: mov R2, #20
l465: ldr R3, [sp, -R2]!
l466: ldrLS R8, [sp, #+40]
l467: mov R2, #20
l468: ldr R3, [sp], +R2
l469: mov R1, #36
l470: ldr R14, [sp, -R1]!
l471: ldr R5, [sp], #+16
l472: mov R8, #36
l473: ldr R14, [sp, +R8]!
l474: mov R9, #12
l475: ldr R6, [sp, -R9]
l476: mov R12, #24
l477: ldr R8, [sp, -R12]
l478: mov R5, #16
l479: ldr R1, [sp], -R5
l480: ldr R3, [sp, #+12]!
l481: mov R14, #32
l482: ldr R6, [sp, -R14]!
l483: ldr R7, [sp, #-20]!
l484: mov R8, #12
l485: ldr R2, [sp], +R8
l486: ldr R9, [sp], #+8
l487: ldr R14, [sp, #-4]!
l488: mov R8, #28
l489: ldr R6, [sp], -R8
l490: mov R5, #20
l491: ldr R5, [sp], +R5
l492: mov R8, #20
l493: ldr R7, [sp], -R8
l494: mov R7, #64
l495: ldr R9, [sp, +R7]!
l496: ldrGT R3, [sp, #-44]
l497: mov R12, #40
l498: ldrGE R11, [sp, -R12]
l499: mov R14, #8
l500: ldr R7, [sp, +R14]!
l501: ldr R7, [sp], #-60
l502: mov R1, #44
l503: ldr R9, [sp, +R1]!
l504: ldr R4, [sp, #-24]
l505: mov R6, #8
l506: ldrCS R4, [sp, +R6]
l507: mov R1, #40
l508: ldr R3, [sp], -R1
l509: mov R6, #36
l510: ldr R10, [sp, +R6]
l511: mov R2, #52
l512: ldrCS R8, [sp, +R2]
l513: ldr R2, [sp, #+56]
l514: mov R0, #32
l515: ldr R10, [sp, +R0]!
l516: mov R8, #16
l517: ldr R3, [sp, -R8]!
l518: ldr R8, [sp], #+20
l519: ldr R0, [sp], #-8
l520: ldr R5, [sp, #+0]
l521: ldr R2, [sp], #-16
l522: mov R5, #8
l523: ldrGE R8, [sp, -R5]
l524: mov R8, #16
l525: ldr R10, [sp, -R8]!
l526: ldrEQ R3, [sp, #+60]
l527: ldr R0, [sp, #+40]!
l528: ldrMI R9, [sp, #+20]
l529: mov R14, #16
l530: ldr R14, [sp], -R14
l531: ldr R1, [sp, #-36]
l532: mov R14, #0
l533: ldr R1, [sp, +R14]!
l534: ldr R12, [sp, #-12]!
l535: mov R3, #4
l536: ldr R7, [sp, +R3]!
l537: ldr R4, [sp, #+36]!
l538: mov R10, #48
l539: ldr R6, [sp, -R10]!
l540: mov R2, #4
l541: ldr R0, [sp], +R2
l542: ldrLT R14, [sp, #+32]
l543: mov R6, #20
l544: ldrVC R10, [sp, +R6]
l545: mov R14, #28
l546: ldrLS R9, [sp, +R14]
l547: mov R2, #12
l548: ldr R12, [sp, +R2]!
l549: ldr R10, [sp, #+40]!
l550: ldr R3, [sp, #-12]
l551: ldrGE R4, [sp, #-72]
l552: ldr R11, [sp], #+0
l553: mov R5, #68
l554: ldr R2, [sp, -R5]!
l555: mov R8, #16
l556: ldr R3, [sp, +R8]
l557: mov R5, #8
l558: ldr R14, [sp], +R5
l559: ldr R5, [sp], #-4
l560: ldr R6, [sp, #+12]!
l561: mov R1, #40
l562: ldr R7, [sp, +R1]!
l563: ldr R0, [sp, #-44]
l564: ldrGE R5, [sp, #-56]
l565: mov R0, #20
l566: ldr R8, [sp, -R0]
l567: ldrHI R7, [sp, #+12]
l568: ldr R14, [sp], #-36
l569: ldr R14, [sp], #-8
l570: ldrCC R2, [sp, #+44]
l571: ldrLT R6, [sp, #+32]
l572: mov R7, #8
l573: ldr R10, [sp, +R7]
l574: ldr R11, [sp, #+36]
l575: ldr R5, [sp, #+52]
l576: mov R6, #12
l577: ldrCC R14, [sp, +R6]
l578: mov R0, #40
l579: ldr R6, [sp], +R0
l580: mov R5, #4
l581: ldrVC R7, [sp, +R5]
l582: mov R11, #32
l583: ldr R7, [sp], -R11
l584: mov R5, #8
l585: ldr R3, [sp, -R5]!
l586: ldr R4, [sp], #+52
l587: mov R10, #20
l588: ldr R14, [sp, -R10]
l589: ldr R2, [sp, #+0]!
l590: mov R7, #4
l591: ldr R12, [sp], -R7
l592: mov R12, #60
l593: ldr R0, [sp, -R12]!
l594: mov R1, #64
l595: ldr R7, [sp, +R1]!
l596: mov R11, #8
l597: ldr R2, [sp, -R11]
l598: ldr R3, [sp, #-28]!
l599: ldr R0, [sp], #-16
l600: mov R9, #16
l601: ldr R7, [sp], +R9
l602: mov R12, #32
l603: ldr R0, [sp, -R12]!
l604: ldr R14, [sp], #+64
l605: ldrGE R3, [sp, #-64]
l606: mov R9, #8
l607: ldrCS R14, [sp, -R9]
l608: ldr R11, [sp], #-16
l609: ldrVC R7, [sp, #+16]
l610: ldr R0, [sp, #-52]!
l611: ldr R9, [sp, #+0]!
l612: ldr R4, [sp, #+8]
l613: ldr R5, [sp, #+0]!
l614: mov R10, #12
l615: ldrLT R11, [sp, +R10]
l616: ldrPL R11, [sp, #+64]
l617: ldr R6, [sp, #+16]!
l618: mov R1, #12
l619: ldr R3, [sp, -R1]!
l620: ldr R2, [sp, #+28]!
l621: ldrCS R0, [sp, #-16]
l622: ldrLE R3, [sp, #+24]
l623: mov R0, #4
l624: ldr R0, [sp], +R0
l625: ldr R10, [sp, #-4]!
l626: mov R11, #36
l627: ldr R5, [sp, -R11]
l628: ldrPL R12, [sp, #+24]
l629: mov R10, #12
l630: ldr R7, [sp, -R10]!
l631: ldr R2, [sp], #-4
l632: ldr R12, [sp, #+36]!
l633: mov R7, #4
l634: ldrLE R4, [sp, -R7]
l635: mov R0, #28
l636: ldr R0, [sp], -R0
l637: mov R5, #8
l638: ldr R1, [sp, -R5]!
l639: ldr R1, [sp, #+4]!
l640: ldr R12, [sp, #+20]
l641: ldr R7, [sp, #+32]!
l642: mov R8, #48
l643: ldrLE R4, [sp, -R8]
l644: ldr R4, [sp], #-44
l645: ldr R11, [sp, #+40]!
l646: ldr R2, [sp], #-16
l647: mov R0, #36
l648: ldr R11, [sp], +R0
l649: mov R2, #28
l650: ldr R0, [sp], -R2
l651: mov R11, #20
l652: ldr R7, [sp, -R11]
l653: ldr R3, [sp, #+0]!
l654: ldr R2, [sp, #+16]!
l655: mov R1, #32
l656: ldr R6, [sp], -R1
l657: mov R14, #44
l658: ldrHI R11, [sp, +R14]
l659: ldr R1, [sp, #+12]
l660: mov R4, #16
l661: ldr R9, [sp, +R4]!
l662: mov R5, #20
l663: ldr R7, [sp], +R5
l664: mov R0, #8
l665: ldrGE R14, [sp, +R0]
l666: ldr R7, [sp, #-28]!
l667: ldrMI R10, [sp, #-4]
l668: mov R11, #36
l669: ldr R3, [sp, -R11]!
l670: ldr R14, [sp], #+32
l671: ldr R0, [sp, #-20]!
l672: ldr R4, [sp, #+56]!
l673: ldr R6, [sp, #-48]!
l674: mov R1, #4
l675: ldr R7, [sp], -R1
l676: ldr R14, [sp, #+16]!
l677: mov R12, #0
l678: ldrEQ R9, [sp, +R12]
l679: mov R7, #24
l680: ldr R2, [sp, -R7]
l681: ldr R9, [sp, #-20]!
l682: mov R10, #32
l683: ldr R4, [sp], +R10
l684: ldr R3, [sp, #-36]
l685: mov R8, #4
l686: ldr R11, [sp], -R8
l687: ldr R8, [sp, #-8]!
l688: mov R12, #40
l689: ldr R12, [sp], +R12
l690: ldr R0, [sp, #-24]!
l691: ldr R3, [sp, #-4]!
l692: mov R4, #24
l693: ldrLS R8, [sp, +R4]
l694: mov R7, #16
l695: ldr R1, [sp, -R7]!
l696: mov R10, #16
l697: ldr R7, [sp], -R10
l698: ldr R4, [sp, #-8]!
l699: ldr R8, [sp], #+8
l700: ldr R1, [sp, #+8]!
l701: mov R2, #20
l702: ldr R8, [sp], +R2
l703: ldr R2, [sp, #-16]!
l704: ldr R5, [sp], #+32
l705: mov R10, #16
l706: ldr R7, [sp], -R10
l707: mov R9, #8
l708: ldr R14, [sp, -R9]!
l709: ldr R11, [sp], #+36
l710: ldr R4, [sp, #-8]!
l711: ldr R1, [sp, #+8]!
l712: ldr R4, [sp, #+4]!
l713: mov R4, #20
l714: ldr R7, [sp, -R4]!
l715: ldr R14, [sp, #-32]!
l716: mov R12, #20
l717: ldr R9, [sp], -R12
l718: ldr R2, [sp, #+32]!
l719: ldr R2, [sp, #+28]
l720: ldr R7, [sp, #+28]!
l721: ldr R7, [sp], #-16
l722: mov R8, #16
l723: ldrMI R9, [sp, +R8]
l724: mov R2, #36
l725: ldrHI R7, [sp, -R2]
l726: mov R5, #36
l727: ldrNE R12, [sp, -R5]
l728: ldr R8, [sp], #+0
l729: mov R6, #0
l730: ldr R0, [sp, +R6]
l731: mov R14, #4
l732: ldr R5, [sp], -R14
l733: ldrLS R10, [sp, #+4]
l734: ldr R7, [sp, #+8]!
l735: mov R8, #16
l736: ldrEQ R4, [sp, -R8]
l737: ldr R12, [sp], #-16
l738: ldrMI R0, [sp, #-24]
l739: mov R12, #20
l740: ldr R7, [sp, +R12]
l741: mov R1, #24
l742: ldr R12, [sp, +R1]!
l743: mov R7, #16
l744: ldrCS R11, [sp, +R7]
l745: mov R7, #36
l746: ldrGT R2, [sp, -R7]
l747: ldr R10, [sp, #-56]!
l748: mov R4, #20
l749: ldrLT R11, [sp, +R4]
l750: mov R6, #48
l751: ldrGE R0, [sp, +R6]
l752: ldr R11, [sp, #+36]
l753: mov R7, #8
l754: ldrLS R8, [sp, +R7]
l755: mov R11, #72
l756: ldr R9, [sp, +R11]
l757: mov R1, #52
l758: ldr R10, [sp, +R1]!
l759: ldr R14, [sp, #-44]!
l760: ldr R3, [sp, #+16]!
l761: mov R5, #8
l762: ldr R8, [sp], +R5
l763: ldrMI R4, [sp, #-4]
l764: ldr R8, [sp], #-12
l765: ldr R10, [sp, #+12]!
l766: ldr R5, [sp, #-24]!
l767: ldrLT R9, [sp, #+8]
l768: mov R9, #12
l769: ldrLS R5, [sp, +R9]
l770: mov R10, #32
l771: ldrCC R4, [sp, +R10]
l772: ldr R6, [sp], #+40
l773: mov R5, #0
l774: ldr R0, [sp, +R5]!
l775: ldr R6, [sp], #+24
l776: mov R7, #40
l777: ldr R6, [sp, -R7]!
l778: ldr R9, [sp], #+20
l779: ldrHI R12, [sp, #+16]
l780: mov R11, #4
l781: ldrLT R11, [sp, -R11]
l782: mov R12, #24
l783: ldrLS R10, [sp, -R12]
l784: mov R1, #0
l785: ldr R3, [sp], +R1
l786: ldrVC R9, [sp, #+12]
l787: ldr R6, [sp], #-44
l788: ldr R9, [sp], #-8
l789: ldr R11, [sp], #+32
l790: ldrGT R3, [sp, #+4]
l791: ldr R5, [sp], #+24
l792: ldr R7, [sp], #+0
l793: ldrLE R4, [sp, #+4]
l794: mov R1, #28
l795: ldrNE R3, [sp, -R1]
l796: mov R12, #4
l797: ldr R3, [sp, -R12]!
l798: mov R1, #4
l799: ldr R7, [sp], -R1
l800: ldrPL R14, [sp, #+8]
l801: mov R9, #20
l802: ldrVS R1, [sp, +R9]
l803: mov R6, #4
l804: ldrCC R11, [sp, +R6]
l805: mov R2, #48
l806: ldr R1, [sp], -R2
l807: ldr R2, [sp, #+24]
l808: mov R14, #40
l809: ldr R11, [sp], +R14
l810: ldr R11, [sp], #+32
l811: ldr R5, [sp, #-20]!
l812: mov R6, #32
l813: ldrPL R14, [sp, -R6]
l814: ldr R1, [sp, #-8]
l815: ldr R5, [sp], #-32
l816: mov R2, #12
l817: ldr R6, [sp, +R2]!
l818: mov R0, #28
l819: ldr R1, [sp, +R0]!
l820: ldr R8, [sp, #-12]!
l821: mov R5, #16
l822: ldr R9, [sp, +R5]
l823: mov R14, #48
l824: ldrCC R1, [sp, -R14]
l825: ldr R4, [sp], #-36
l826: ldrVS R9, [sp, #+16]
l827: mov R3, #0
l828: ldr R10, [sp], +R3
l829: mov R14, #32
l830: ldrLS R11, [sp, +R14]
l831: ldr R12, [sp], #+8
l832: ldr R11, [sp, #+40]!
l833: ldr R5, [sp, #-12]!
l834: ldr R12, [sp], #+8
l835: ldr R4, [sp, #-28]!
l836: ldr R4, [sp, #+24]!
l837: mov R2, #28
l838: ldr R3, [sp, -R2]!
l839: mov R2, #44
l840: ldrCC R0, [sp, +R2]
l841: ldr R6, [sp], #+36
l842: ldr R6, [sp], #-20
l843: mov R4, #20
l844: ldr R8, [sp, -R4]!
l845: ldr R4, [sp, #-12]!
l846: mov R12, #44
l847: ldr R4, [sp, +R12]!
l848: mov R7, #20
l849: ldr R1, [sp, -R7]!
l850: ldr R2, [sp, #-12]
l851: mov R4, #20
l852: ldr R9, [sp, +R4]!
l853: ldr R1, [sp, #+16]
l854: mov R14, #28
l855: ldr R10, [sp, -R14]!
l856: mov R3, #16
l857: ldr R14, [sp], -R3
l858: mov R6, #24
l859: ldr R11, [sp], +R6
l860: mov R9, #4
l861: ldr R0, [sp, -R9]
l862: mov R6, #20
l863: ldr R14, [sp], +R6
l864: mov R1, #20
l865: ldr R7, [sp], +R1
l866: ldrVS R5, [sp, #-72]
l867: ldr R8, [sp, #-40]!
l868: ldrEQ R0, [sp, #+36]
l869: ldrCS R10, [sp, #-20]
l870: mov R2, #28
l871: ldr R5, [sp], +R2
l872: ldr R3, [sp, #-16]!
l873: ldr R4, [sp, #-8]!
l874: ldrHI R12, [sp, #+32]
l875: mov R7, #24
l876: ldr R0, [sp], +R7
l877: ldr R0, [sp], #-36
l878: mov R9, #40
l879: ldr R3, [sp], +R9
l880: mov R11, #52
l881: ldr R5, [sp, -R11]!
l882: mov R1, #60
l883: ldr R6, [sp, +R1]
l884: mov R10, #40
l885: ldrNE R12, [sp, +R10]
l886: mov R2, #20
l887: ldr R1, [sp, +R2]!
l888: mov R4, #8
l889: ldr R5, [sp], -R4
l890: ldr R1, [sp], #+28
l891: mov R4, #16
l892: ldr R6, [sp], +R4
l893: mov R2, #28
l894: ldr R4, [sp, -R2]
l895: ldrVS R5, [sp, #-52]
l896: mov R8, #4
l897: ldrGT R0, [sp, -R8]
l898: ldr R8, [sp], #-44
l899: mov R8, #24
l900: ldrEQ R8, [sp, +R8]
l901: mov R7, #4
l902: ldr R2, [sp], -R7
l903: ldrLE R4, [sp, #+48]
l904: ldrLS R7, [sp, #+0]
l905: ldr R0, [sp, #+12]!
l906: ldr R1, [sp], #-12
l907: mov R14, #12
l908: ldr R11, [sp], -R14
l909: mov R14, #40
l910: ldr R4, [sp, +R14]
l911: mov R3, #4
l912: ldr R8, [sp], +R3
l913: mov R5, #8
l914: ldr R2, [sp], +R5
l915: mov R4, #8
l916: ldr R1, [sp], +R4
l917: ldr R4, [sp], #-4
l918: ldr R14, [sp, #+20]!
l919: ldr R2, [sp, #-32]
l920: mov R5, #12
l921: ldr R7, [sp, +R5]!
l922: mov R3, #16
l923: ldr R10, [sp], +R3
l924: mov R3, #12
l925: ldr R14, [sp], -R3
l926: mov R11, #24
l927: ldr R9, [sp], -R11
l928: ldr R11, [sp, #-36]
l929: ldr R8, [sp, #+32]!
l930: mov R3, #44
l931: ldr R9, [sp, -R3]!
l932: ldr R5, [sp, #-20]!
l933: ldr R10, [sp], #+16
l934: mov R5, #20
l935: ldr R8, [sp, +R5]
l936: ldrVS R5, [sp, #+0]
l937: ldr R2, [sp], #+20
l938: ldr R11, [sp, #-24]
l939: ldr R5, [sp, #-12]
l940: ldr R3, [sp], #-24
l941: ldr R3, [sp], #+40
l942: ldr R0, [sp, #-40]!
l943: mov R12, #8
l944: ldr R6, [sp, -R12]
l945: mov R2, #32
l946: ldr R10, [sp, +R2]!
l947: ldr R3, [sp, #-48]!
l948: mov R0, #44
l949: ldr R14, [sp], +R0
l950: ldr R14, [sp, #+28]!
l951: ldr R7, [sp, #-8]!
l952: ldr R8, [sp], #+0
l953: ldr R1, [sp, #-56]!
l954: ldr R10, [sp], #+40
l955: ldr R5, [sp], #-48
l956: ldr R2, [sp], #+60
l957: ldrGT R8, [sp, #-48]
l958: mov R7, #20
l959: ldr R0, [sp, -R7]
l960: ldr R8, [sp, #-20]!
l961: mov R5, #0
l962: ldrVS R5, [sp, +R5]
l963: mov R6, #28
l964: ldr R8, [sp], +R6
l965: mov R7, #20
l966: ldr R4, [sp, -R7]!
l967: ldr R6, [sp], #-28
l968: ldrLE R14, [sp, #+8]
l969: ldr R10, [sp], #+12
l970: mov R0, #8
l971: ldr R4, [sp], +R0
l972: mov R10, #28
l973: ldr R7, [sp, +R10]
l974: ldr R9, [sp], #-40
l975: mov R2, #52
l976: ldrLS R6, [sp, +R2]
l977: mov R8, #60
l978: ldrGE R8, [sp, +R8]
l979: ldr R9, [sp], #+68
l980: ldrCS R8, [sp, #+4]
l981: mov R14, #68
l982: ldr R5, [sp], -R14
l983: ldrLT R14, [sp, #+24]
l984: mov R8, #0
l985: ldr R7, [sp, +R8]!
l986: ldr R14, [sp, #+16]
l987: mov R11, #20
l988: ldr R2, [sp], +R11
l989: mov R12, #12
l990: ldr R3, [sp], -R12
l991: ldr R5, [sp, #+0]!
l992: mov R9, #8
l993: ldrNE R2, [sp, -R9]
l994: ldr R10, [sp, #+56]
l995: ldrNE R8, [sp, #+20]
l996: ldr R0, [sp, #+28]!
l997: ldr R9, [sp], #+4
l998: ldrLE R9, [sp, #-36]
l999: ldr R9, [sp], #+0
l1000: mov R1, #12
l1001: ldr R12, [sp, +R1]!
end: b end

