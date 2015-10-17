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
val1: .word 338761838
next1:ldr R2, val2
b next2
val2: .word 2290437748
next2:ldr R3, val3
b next3
val3: .word 2409870163
next3:ldr R4, val4
b next4
val4: .word 775669118
next4:ldr R5, val5
b next5
val5: .word 3477420893
next5:ldr R6, val6
b next6
val6: .word 294634029
next6:ldr R7, val7
b next7
val7: .word 3670964031
next7:ldr R8, val8
b next8
val8: .word 998056247
next8:ldr R9, val9
b next9
val9: .word 189476282
next9:ldr R10, val10
b next10
val10: .word 1795090008
next10:ldr R11, val11
b next11
val11: .word 1140938113
next11:ldr R12, val12
b next12
val12: .word 3111117155
next12:ldr R14, val14
b next14
val14: .word 603315440

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 1843653485
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 545392363
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3914132176
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 299262735
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 4192022348
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 2006457725
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 2134051743
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 23254454
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 2593333130
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 215934559
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 1475500426
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 2820794720
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 3019239597
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 71946911
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 991804940
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 2484065429
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 3807680777
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 673227704
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 3847159110
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 1659294516
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 858267986
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: mov R3, #8
l2: str R7, [sp], -R3
l3: ldr R3, [sp, #-4]!
l4: mov R6, #4
l5: ldr R5, [sp, -R6]!
l6: mov R10, #36
l7: str R12, [sp, -R10]!
l8: mov R5, #4
l9: ldrGE R10, [sp, -R5]
l10: mov R5, #12
l11: str R4, [sp], -R5
l12: mov R5, #32
l13: str R2, [sp], +R5
l14: mov R4, #20
l15: ldr R14, [sp], +R4
l16: mov R3, #44
l17: str R10, [sp, -R3]!
l18: mov R3, #44
l19: str R8, [sp, +R3]
l20: str R2, [sp], #+28
l21: str R11, [sp, #-32]!
l22: strLE R7, [sp, #+32]
l23: ldr R7, [sp, #+16]!
l24: mov R4, #8
l25: str R14, [sp], -R4
l26: str R6, [sp, #+36]!
l27: mov R3, #4
l28: str R8, [sp, +R3]
l29: mov R2, #44
l30: ldr R7, [sp, -R2]!
l31: str R4, [sp, #+4]
l32: mov R3, #20
l33: str R4, [sp, -R3]!
l34: mov R11, #24
l35: str R6, [sp, +R11]!
l36: mov R5, #36
l37: str R14, [sp], +R5
l38: mov R4, #4
l39: ldr R12, [sp, +R4]!
l40: mov R2, #8
l41: ldr R3, [sp, -R2]!
l42: mov R5, #16
l43: str R11, [sp], -R5
l44: str R2, [sp, #+32]!
l45: mov R8, #20
l46: ldr R0, [sp, -R8]!
l47: mov R3, #20
l48: strVC R3, [sp, +R3]
l49: str R6, [sp, #-28]!
l50: str R12, [sp, #+44]!
l51: strLE R1, [sp, #-4]
l52: str R10, [sp, #-44]!
l53: ldr R6, [sp, #+44]
l54: ldr R0, [sp, #+8]!
l55: ldr R10, [sp], #+40
l56: mov R11, #4
l57: ldrMI R6, [sp, -R11]
l58: mov R7, #48
l59: strCC R0, [sp, -R7]
l60: mov R9, #28
l61: strCS R6, [sp, -R9]
l62: str R11, [sp, #-12]!
l63: str R10, [sp, #-36]!
l64: ldr R3, [sp, #-8]
l65: mov R3, #4
l66: ldr R1, [sp, -R3]!
l67: str R1, [sp], #+40
l68: str R7, [sp, #-44]!
l69: mov R9, #36
l70: str R3, [sp], +R9
l71: ldrGT R6, [sp, #-28]
l72: str R15, [sp, #+4]
l73: ldr R4, [sp], #+8
l74: str R12, [sp], #-40
l75: ldr R14, [sp, #+52]
l76: ldr R4, [sp, #-16]!
l77: ldrGT R5, [sp, #+68]
l78: strCC R2, [sp, #+8]
l79: ldrVC R4, [sp, #+52]
l80: str R11, [sp, #+44]!
l81: mov R4, #0
l82: ldr R10, [sp, +R4]!
l83: strHI R3, [sp, #-12]
l84: ldr R0, [sp, #-8]!
l85: strCS R10, [sp, #-8]
l86: mov R11, #12
l87: str R9, [sp, -R11]
l88: ldrPL R3, [sp, #-40]
l89: mov R5, #16
l90: str R8, [sp, -R5]
l91: str R2, [sp, #-20]!
l92: mov R2, #12
l93: ldr R12, [sp, +R2]!
l94: mov R8, #28
l95: str R0, [sp, +R8]!
l96: mov R10, #8
l97: ldr R2, [sp, +R10]!
l98: ldr R10, [sp, #-12]!
l99: ldr R4, [sp], #-28
l100: mov R7, #20
l101: str R15, [sp], +R7
l102: ldr R2, [sp], #-24
l103: mov R0, #16
l104: ldrCC R7, [sp, -R0]
l105: mov R2, #4
l106: ldr R12, [sp, +R2]!
l107: str R5, [sp, #-12]!
l108: str R7, [sp, #+4]!
l109: mov R1, #32
l110: ldrLT R6, [sp, +R1]
l111: mov R12, #8
l112: strMI R4, [sp, +R12]
l113: mov R14, #16
l114: str R3, [sp, -R14]!
l115: mov R0, #8
l116: ldr R5, [sp, +R0]!
l117: ldr R12, [sp], #+8
l118: mov R8, #4
l119: str R1, [sp], +R8
l120: ldrGE R12, [sp, #+48]
l121: mov R3, #4
l122: str R0, [sp], -R3
l123: strLE R15, [sp, #+8]
l124: mov R10, #12
l125: str R10, [sp, +R10]!
l126: ldrMI R10, [sp, #+4]
l127: ldr R14, [sp], #-28
l128: mov R12, #60
l129: ldr R9, [sp, +R12]!
l130: ldrMI R8, [sp, #-60]
l131: ldr R1, [sp], #-28
l132: mov R5, #4
l133: ldrPL R12, [sp, +R5]
l134: str R12, [sp], #+12
l135: str R7, [sp, #+0]!
l136: ldr R1, [sp, #-16]!
l137: ldr R2, [sp, #+16]
l138: str R11, [sp], #+32
l139: str R11, [sp, #-40]!
l140: ldr R6, [sp, #+44]!
l141: str R10, [sp, #+4]!
l142: mov R12, #4
l143: ldr R3, [sp], -R12
l144: mov R8, #0
l145: strLE R8, [sp, +R8]
l146: mov R14, #24
l147: ldrPL R3, [sp, -R14]
l148: ldr R14, [sp, #+4]!
l149: str R5, [sp, #-44]
l150: ldr R2, [sp, #-8]!
l151: str R10, [sp, #-28]!
l152: mov R14, #12
l153: str R0, [sp, -R14]!
l154: ldr R14, [sp, #+28]
l155: mov R5, #4
l156: ldr R2, [sp, -R5]!
l157: mov R1, #36
l158: ldrCS R9, [sp, +R1]
l159: str R5, [sp, #+36]
l160: str R12, [sp], #+12
l161: mov R3, #20
l162: ldr R8, [sp], +R3
l163: ldr R4, [sp], #-24
l164: mov R10, #8
l165: ldrLT R11, [sp, -R10]
l166: ldrEQ R6, [sp, #-24]
l167: ldrLT R5, [sp, #-4]
l168: str R6, [sp, #+16]!
l169: mov R4, #12
l170: str R0, [sp, -R4]!
l171: ldr R4, [sp, #-4]
l172: mov R8, #32
l173: str R6, [sp, +R8]!
l174: mov R7, #48
l175: ldr R1, [sp], -R7
l176: ldr R1, [sp, #+24]!
l177: strNE R7, [sp, #-12]
l178: mov R5, #12
l179: str R3, [sp, +R5]
l180: ldr R7, [sp, #-36]
l181: str R1, [sp, #+28]
l182: mov R7, #4
l183: str R5, [sp, -R7]!
l184: strVS R3, [sp, #-12]
l185: mov R6, #16
l186: strCC R11, [sp, -R6]
l187: str R14, [sp, #+4]!
l188: ldrEQ R7, [sp, #-32]
l189: ldr R10, [sp], #-8
l190: str R4, [sp, #+28]!
l191: mov R2, #12
l192: ldr R0, [sp, +R2]!
l193: str R11, [sp, #-36]
l194: str R7, [sp, #-72]
l195: ldr R11, [sp, #-36]!
l196: ldrVS R14, [sp, #+16]
l197: mov R4, #32
l198: ldr R1, [sp, +R4]
l199: str R12, [sp, #+32]!
l200: mov R1, #16
l201: ldr R0, [sp, -R1]
l202: strMI R3, [sp, #+4]
l203: mov R3, #60
l204: str R1, [sp], -R3
l205: mov R3, #16
l206: ldr R14, [sp], +R3
l207: str R9, [sp], #+0
l208: str R6, [sp, #+32]!
l209: mov R4, #0
l210: str R0, [sp, +R4]!
l211: ldr R7, [sp, #-32]
l212: mov R5, #52
l213: str R14, [sp], -R5
l214: mov R4, #40
l215: str R11, [sp], +R4
l216: mov R12, #4
l217: strGE R6, [sp, +R12]
l218: mov R5, #20
l219: str R10, [sp, +R5]
l220: ldr R11, [sp], #-16
l221: mov R2, #4
l222: ldr R14, [sp, -R2]!
l223: ldrLS R3, [sp, #+44]
l224: ldr R6, [sp], #+8
l225: mov R5, #16
l226: str R9, [sp, +R5]!
l227: mov R3, #32
l228: ldr R9, [sp, -R3]!
l229: mov R5, #36
l230: ldr R14, [sp, +R5]
l231: mov R8, #48
l232: ldr R7, [sp, +R8]
l233: ldr R1, [sp], #+20
l234: mov R7, #20
l235: str R2, [sp], -R7
l236: mov R5, #32
l237: ldrLS R11, [sp, +R5]
l238: mov R1, #8
l239: str R2, [sp], +R1
l240: mov R10, #16
l241: ldrMI R6, [sp, -R10]
l242: mov R0, #24
l243: str R12, [sp, -R0]
l244: ldr R11, [sp, #+8]
l245: ldr R5, [sp], #+28
l246: str R1, [sp, #-24]!
l247: mov R8, #4
l248: ldr R1, [sp], +R8
l249: str R10, [sp, #+20]!
l250: ldr R6, [sp], #-36
l251: mov R5, #44
l252: str R15, [sp], +R5
l253: str R4, [sp, #-16]!
l254: mov R3, #20
l255: ldr R9, [sp, +R3]
l256: mov R1, #32
l257: ldr R2, [sp, -R1]!
l258: mov R1, #0
l259: strEQ R12, [sp, +R1]
l260: str R11, [sp], #+8
l261: mov R9, #28
l262: str R8, [sp], +R9
l263: mov R7, #48
l264: ldr R9, [sp], -R7
l265: mov R5, #72
l266: ldr R11, [sp, +R5]!
l267: mov R7, #48
l268: str R11, [sp], -R7
l269: mov R0, #36
l270: ldr R11, [sp, +R0]!
l271: ldr R10, [sp, #+8]
l272: mov R1, #24
l273: strCS R15, [sp, -R1]
l274: mov R10, #40
l275: ldr R4, [sp, -R10]!
l276: mov R3, #0
l277: strGT R12, [sp, +R3]
l278: mov R3, #0
l279: str R11, [sp], +R3
l280: mov R7, #16
l281: ldr R4, [sp], +R7
l282: mov R6, #16
l283: ldr R8, [sp], +R6
l284: ldr R3, [sp, #-52]!
l285: mov R5, #16
l286: ldr R12, [sp], +R5
l287: mov R7, #4
l288: ldr R3, [sp, -R7]
l289: mov R6, #32
l290: strHI R12, [sp, +R6]
l291: mov R11, #40
l292: ldr R10, [sp], +R11
l293: mov R8, #8
l294: str R12, [sp, -R8]
l295: mov R7, #4
l296: ldrGE R6, [sp, -R7]
l297: mov R6, #16
l298: ldr R0, [sp], +R6
l299: mov R6, #0
l300: ldr R9, [sp, +R6]
l301: mov R11, #24
l302: ldr R6, [sp, -R11]
l303: str R5, [sp, #-36]!
l304: mov R11, #4
l305: str R3, [sp, +R11]
l306: ldrLE R3, [sp, #-28]
l307: mov R11, #8
l308: strLE R11, [sp, -R11]
l309: ldrVC R11, [sp, #+16]
l310: mov R0, #32
l311: ldr R0, [sp, +R0]
l312: mov R12, #8
l313: str R15, [sp, +R12]
l314: mov R9, #36
l315: ldr R0, [sp, +R9]!
l316: mov R1, #24
l317: str R0, [sp, -R1]!
l318: ldr R12, [sp], #+4
l319: mov R4, #16
l320: str R0, [sp, -R4]
l321: str R10, [sp, #+8]!
l322: str R2, [sp], #-48
l323: mov R12, #48
l324: str R5, [sp], +R12
l325: mov R3, #24
l326: strLE R7, [sp, -R3]
l327: str R4, [sp], #-32
l328: mov R0, #24
l329: ldrEQ R14, [sp, -R0]
l330: ldr R2, [sp], #-24
l331: mov R9, #12
l332: str R9, [sp, +R9]
l333: str R4, [sp], #+24
l334: ldr R6, [sp], #+24
l335: strNE R6, [sp, #+12]
l336: ldr R12, [sp], #-8
l337: mov R4, #24
l338: ldr R10, [sp, -R4]!
l339: mov R9, #4
l340: ldr R6, [sp, +R9]!
l341: strGE R15, [sp, #+48]
l342: ldrCC R5, [sp, #-24]
l343: str R4, [sp], #+32
l344: mov R4, #8
l345: ldr R14, [sp, -R4]!
l346: mov R0, #4
l347: ldr R1, [sp], -R0
l348: mov R14, #12
l349: ldr R2, [sp, -R14]
l350: mov R12, #0
l351: ldrNE R2, [sp, +R12]
l352: mov R8, #12
l353: ldr R14, [sp, -R8]
l354: mov R12, #8
l355: str R2, [sp, +R12]
l356: mov R12, #44
l357: str R2, [sp, -R12]
l358: str R9, [sp, #+8]!
l359: str R9, [sp, #-36]
l360: str R7, [sp], #+8
l361: ldr R10, [sp], #-48
l362: ldr R5, [sp], #+0
l363: mov R14, #60
l364: ldr R4, [sp, +R14]
l365: mov R8, #8
l366: ldr R9, [sp], -R8
l367: ldrLT R10, [sp, #+32]
l368: mov R14, #36
l369: strHI R14, [sp, +R14]
l370: ldr R11, [sp], #+56
l371: mov R6, #4
l372: str R5, [sp, +R6]!
l373: mov R8, #20
l374: ldr R9, [sp], -R8
l375: mov R14, #12
l376: str R15, [sp, -R14]!
l377: ldr R12, [sp], #-16
l378: ldr R11, [sp], #+4
l379: str R0, [sp], #+44
l380: mov R10, #64
l381: ldr R9, [sp, -R10]
l382: str R4, [sp], #-48
l383: ldr R11, [sp, #+16]!
l384: mov R9, #0
l385: str R14, [sp, +R9]!
l386: mov R6, #8
l387: strVS R4, [sp, -R6]
l388: strCS R5, [sp, #+12]
l389: str R2, [sp, #+8]!
l390: mov R8, #32
l391: ldr R7, [sp, -R8]!
l392: ldr R0, [sp, #+60]!
l393: mov R12, #60
l394: ldr R12, [sp, -R12]!
l395: strLS R1, [sp, #+60]
l396: str R9, [sp, #+16]!
l397: str R1, [sp, #+36]!
l398: mov R6, #24
l399: ldr R10, [sp, -R6]
l400: mov R11, #20
l401: ldr R11, [sp], -R11
l402: mov R12, #32
l403: strNE R4, [sp, -R12]
l404: mov R4, #24
l405: str R4, [sp, +R4]!
l406: str R9, [sp], #+8
l407: str R14, [sp], #-44
l408: ldrLT R1, [sp, #+12]
l409: ldr R14, [sp, #+44]
l410: ldr R4, [sp, #-24]!
l411: ldr R9, [sp], #+24
l412: mov R8, #32
l413: str R8, [sp], +R8
l414: ldr R2, [sp, #-36]!
l415: mov R14, #20
l416: ldr R11, [sp, +R14]
l417: mov R6, #40
l418: str R6, [sp, +R6]!
l419: mov R12, #12
l420: ldr R8, [sp], -R12
l421: mov R3, #4
l422: ldr R10, [sp], -R3
l423: ldr R9, [sp, #-24]!
l424: mov R9, #32
l425: strPL R0, [sp, +R9]
l426: mov R6, #8
l427: ldrEQ R7, [sp, -R6]
l428: str R5, [sp, #+48]
l429: ldr R8, [sp, #+44]!
l430: mov R11, #40
l431: ldr R5, [sp, -R11]
l432: str R3, [sp, #-28]!
l433: str R1, [sp, #-24]!
l434: mov R4, #28
l435: ldrNE R14, [sp, +R4]
l436: ldr R2, [sp], #+40
l437: mov R10, #8
l438: ldr R8, [sp, +R10]
l439: ldr R4, [sp], #-16
l440: ldr R1, [sp, #+20]
l441: mov R12, #24
l442: ldr R11, [sp, -R12]!
l443: str R12, [sp], #-4
l444: strGE R15, [sp, #-4]
l445: ldrGT R9, [sp, #+44]
l446: str R10, [sp, #+56]!
l447: str R7, [sp, #-64]!
l448: mov R9, #8
l449: ldrGE R8, [sp, +R9]
l450: mov R9, #20
l451: ldr R6, [sp, +R9]!
l452: ldr R9, [sp], #-4
l453: ldr R2, [sp], #+0
l454: mov R10, #20
l455: ldr R1, [sp, -R10]!
l456: str R8, [sp, #+52]!
l457: mov R14, #0
l458: ldrVC R10, [sp, +R14]
l459: ldr R14, [sp], #+8
l460: mov R3, #24
l461: str R1, [sp, -R3]!
l462: mov R10, #16
l463: strPL R15, [sp, -R10]
l464: ldr R7, [sp], #+28
l465: ldr R6, [sp], #-44
l466: mov R6, #48
l467: ldr R4, [sp], +R6
l468: ldrLT R3, [sp, #-28]
l469: ldr R7, [sp], #-32
l470: mov R12, #32
l471: strMI R0, [sp, +R12]
l472: str R1, [sp], #-8
l473: mov R1, #28
l474: ldr R6, [sp], -R1
l475: ldrCC R14, [sp, #+16]
l476: ldr R4, [sp], #+60
l477: mov R6, #40
l478: ldr R7, [sp, -R6]!
l479: ldr R9, [sp, #+52]!
l480: str R9, [sp], #-16
l481: mov R7, #4
l482: ldr R9, [sp, -R7]!
l483: ldr R12, [sp, #-12]!
l484: str R3, [sp, #-12]!
l485: ldr R10, [sp, #+8]!
l486: ldr R8, [sp, #+0]!
l487: strMI R14, [sp, #-32]
l488: mov R0, #4
l489: str R2, [sp, +R0]!
l490: mov R5, #16
l491: ldr R12, [sp, +R5]!
l492: str R8, [sp, #-8]
l493: mov R7, #4
l494: ldr R3, [sp], -R7
l495: mov R1, #8
l496: ldrCS R0, [sp, +R1]
l497: mov R7, #12
l498: str R12, [sp], -R7
l499: str R8, [sp], #-32
l500: mov R4, #60
l501: ldr R6, [sp, +R4]!
l502: mov R2, #60
l503: ldr R6, [sp, -R2]!
l504: str R0, [sp], #+8
l505: str R1, [sp, #+20]!
l506: str R8, [sp, #-12]
l507: ldr R4, [sp], #+20
l508: ldr R0, [sp, #-8]!
l509: strCS R9, [sp, #+16]
l510: mov R11, #20
l511: str R7, [sp], +R11
l512: strCS R14, [sp, #-44]
l513: ldr R8, [sp], #-4
l514: mov R5, #4
l515: ldrMI R0, [sp, -R5]
l516: mov R0, #52
l517: str R0, [sp, -R0]!
l518: mov R11, #24
l519: str R10, [sp, +R11]!
l520: mov R12, #16
l521: ldr R5, [sp, -R12]!
l522: mov R5, #32
l523: str R7, [sp], +R5
l524: str R10, [sp], #-44
l525: mov R9, #20
l526: ldrLS R5, [sp, +R9]
l527: mov R7, #24
l528: ldr R4, [sp], +R7
l529: mov R1, #24
l530: ldr R0, [sp, +R1]!
l531: mov R6, #12
l532: strLT R11, [sp, -R6]
l533: mov R3, #28
l534: ldr R8, [sp], -R3
l535: mov R1, #20
l536: str R3, [sp, -R1]!
l537: ldr R0, [sp], #+28
l538: ldr R1, [sp, #+0]
l539: str R3, [sp], #-12
l540: str R4, [sp], #+12
l541: strNE R0, [sp, #-12]
l542: mov R12, #8
l543: ldr R4, [sp, -R12]!
l544: mov R10, #12
l545: ldr R6, [sp], -R10
l546: ldr R5, [sp, #+28]
l547: mov R12, #8
l548: str R15, [sp, +R12]!
l549: ldrCC R4, [sp, #+0]
l550: strEQ R11, [sp, #+48]
l551: mov R0, #32
l552: ldr R4, [sp], +R0
l553: str R15, [sp, #-20]!
l554: ldr R4, [sp], #+36
l555: mov R10, #24
l556: ldr R3, [sp, -R10]!
l557: ldr R9, [sp, #-20]
l558: ldrGT R6, [sp, #+4]
l559: mov R10, #40
l560: strNE R1, [sp, -R10]
l561: str R8, [sp, #+12]
l562: str R14, [sp], #-48
l563: str R4, [sp, #+48]!
l564: ldr R11, [sp, #-8]
l565: mov R14, #36
l566: strCC R14, [sp, -R14]
l567: mov R12, #28
l568: str R7, [sp], -R12
l569: mov R5, #32
l570: ldr R10, [sp, +R5]!
l571: mov R6, #0
l572: str R0, [sp, +R6]!
l573: mov R11, #32
l574: str R10, [sp], -R11
l575: str R14, [sp, #+44]
l576: str R15, [sp, #+36]!
l577: mov R0, #20
l578: ldr R11, [sp], -R0
l579: strVS R11, [sp, #+0]
l580: mov R1, #12
l581: ldrVS R0, [sp, +R1]
l582: mov R6, #16
l583: str R15, [sp, +R6]!
l584: mov R1, #20
l585: strVS R15, [sp, -R1]
l586: str R10, [sp, #-52]!
l587: str R7, [sp], #+0
l588: str R9, [sp], #+44
l589: mov R3, #28
l590: str R4, [sp, -R3]!
l591: str R12, [sp], #+36
l592: mov R12, #20
l593: str R4, [sp], -R12
l594: ldrVC R4, [sp, #-8]
l595: mov R10, #0
l596: ldr R2, [sp, +R10]!
l597: mov R5, #12
l598: str R8, [sp, +R5]
l599: ldr R8, [sp, #+40]
l600: ldr R0, [sp, #+8]
l601: str R11, [sp], #+36
l602: mov R11, #56
l603: ldrHI R14, [sp, -R11]
l604: str R5, [sp, #-56]
l605: str R3, [sp, #-36]!
l606: ldr R3, [sp, #+32]
l607: strHI R6, [sp, #+0]
l608: mov R7, #32
l609: str R7, [sp, -R7]!
l610: mov R14, #20
l611: str R10, [sp], +R14
l612: mov R12, #36
l613: str R10, [sp], +R12
l614: ldr R11, [sp], #-4
l615: mov R1, #4
l616: str R8, [sp, -R1]!
l617: ldr R14, [sp, #-4]!
l618: mov R7, #24
l619: str R8, [sp, -R7]
l620: ldr R0, [sp], #+4
l621: str R3, [sp], #+20
l622: ldr R8, [sp, #-24]
l623: mov R1, #8
l624: str R5, [sp], -R1
l625: mov R9, #4
l626: str R8, [sp, +R9]
l627: mov R5, #48
l628: str R10, [sp], -R5
l629: mov R8, #20
l630: str R0, [sp], +R8
l631: mov R1, #0
l632: str R11, [sp, +R1]!
l633: ldr R0, [sp], #-4
l634: mov R1, #44
l635: ldrGT R1, [sp, +R1]
l636: ldrHI R4, [sp, #+4]
l637: ldr R1, [sp], #-12
l638: mov R1, #44
l639: str R14, [sp], +R1
l640: mov R0, #40
l641: ldrMI R9, [sp, -R0]
l642: strGE R10, [sp, #-32]
l643: mov R14, #52
l644: ldr R9, [sp, -R14]!
l645: ldrCC R8, [sp, #+36]
l646: ldr R11, [sp, #+32]!
l647: mov R14, #40
l648: ldr R5, [sp, -R14]!
l649: mov R2, #28
l650: ldr R11, [sp, +R2]!
l651: ldr R2, [sp], #-20
l652: ldr R1, [sp], #-8
l653: ldrLS R10, [sp, #+44]
l654: ldr R4, [sp, #+4]
l655: strMI R9, [sp, #+36]
l656: mov R7, #44
l657: strPL R12, [sp, +R7]
l658: mov R8, #12
l659: str R2, [sp, +R8]!
l660: ldr R0, [sp, #-4]
l661: ldr R5, [sp], #+60
l662: str R5, [sp], #-40
l663: ldr R12, [sp, #+36]!
l664: str R6, [sp], #+4
l665: ldr R7, [sp, #-48]
l666: mov R14, #28
l667: ldr R7, [sp], -R14
l668: mov R5, #32
l669: ldr R14, [sp], -R5
l670: ldr R14, [sp, #+52]!
l671: ldr R8, [sp, #-20]!
l672: str R15, [sp, #-32]!
l673: mov R2, #12
l674: str R5, [sp], -R2
l675: mov R0, #68
l676: ldr R3, [sp, +R0]
l677: str R2, [sp, #+64]
l678: str R7, [sp], #+32
l679: mov R1, #4
l680: ldr R10, [sp, -R1]!
l681: ldrCS R6, [sp, #+36]
l682: mov R9, #8
l683: ldr R12, [sp, -R9]
l684: mov R10, #8
l685: str R3, [sp, +R10]!
l686: mov R7, #36
l687: str R6, [sp, -R7]!
l688: ldr R9, [sp], #+4
l689: ldr R10, [sp], #+24
l690: mov R14, #24
l691: ldr R11, [sp, +R14]!
l692: mov R8, #8
l693: strPL R2, [sp, -R8]
l694: mov R2, #8
l695: strGT R0, [sp, +R2]
l696: str R1, [sp], #-32
l697: ldrLE R2, [sp, #+40]
l698: mov R1, #4
l699: ldr R5, [sp], -R1
l700: str R8, [sp], #+44
l701: ldr R0, [sp, #-20]!
l702: ldr R6, [sp], #-20
l703: ldr R6, [sp, #-12]
l704: mov R6, #24
l705: str R5, [sp, +R6]
l706: ldr R2, [sp, #+32]!
l707: str R10, [sp, #+4]!
l708: ldr R10, [sp], #-16
l709: ldr R5, [sp, #-16]
l710: mov R7, #32
l711: str R15, [sp], -R7
l712: mov R2, #28
l713: ldr R12, [sp], +R2
l714: mov R2, #4
l715: str R3, [sp], -R2
l716: str R15, [sp, #-24]!
l717: ldrGE R5, [sp, #+48]
l718: ldrEQ R11, [sp, #+20]
l719: str R14, [sp, #+60]!
l720: mov R6, #64
l721: str R0, [sp, -R6]!
l722: mov R8, #24
l723: str R14, [sp], +R8
l724: mov R14, #24
l725: ldr R5, [sp, -R14]
l726: str R4, [sp], #-28
l727: ldr R6, [sp], #+32
l728: str R5, [sp], #+36
l729: str R9, [sp], #-24
l730: mov R0, #24
l731: ldr R0, [sp], +R0
l732: mov R9, #24
l733: ldrLE R4, [sp, -R9]
l734: mov R10, #16
l735: ldr R4, [sp, -R10]!
l736: str R4, [sp, #+4]
l737: ldr R9, [sp], #-4
l738: str R11, [sp, #-48]
l739: ldr R9, [sp], #-24
l740: mov R7, #4
l741: str R2, [sp], -R7
l742: ldr R11, [sp], #+52
l743: mov R1, #52
l744: str R4, [sp], -R1
l745: mov R7, #36
l746: str R3, [sp, +R7]!
l747: str R14, [sp], #+8
l748: strHI R6, [sp, #-40]
l749: mov R8, #56
l750: ldr R7, [sp], -R8
l751: mov R1, #48
l752: strEQ R7, [sp, +R1]
l753: mov R3, #40
l754: str R10, [sp], +R3
l755: mov R3, #48
l756: ldrGE R7, [sp, -R3]
l757: mov R9, #24
l758: str R10, [sp, +R9]!
l759: ldr R1, [sp, #-24]!
l760: str R3, [sp, #+16]
l761: ldr R0, [sp, #-28]!
l762: ldr R6, [sp], #+52
l763: ldrGE R14, [sp, #-28]
l764: mov R14, #32
l765: str R9, [sp, -R14]
l766: str R0, [sp], #-28
l767: ldrCC R10, [sp, #-36]
l768: mov R1, #44
l769: ldr R8, [sp], -R1
l770: mov R6, #12
l771: ldr R14, [sp], +R6
l772: str R8, [sp, #+52]
l773: ldr R2, [sp, #+48]
l774: mov R10, #48
l775: str R9, [sp, +R10]!
l776: mov R8, #60
l777: strGE R1, [sp, -R8]
l778: str R2, [sp, #-56]!
l779: strCC R9, [sp, #+68]
l780: ldrLT R10, [sp, #+52]
l781: mov R11, #4
l782: ldrVC R3, [sp, +R11]
l783: mov R0, #64
l784: ldrVC R3, [sp, +R0]
l785: mov R0, #32
l786: ldr R0, [sp], +R0
l787: mov R0, #28
l788: str R10, [sp], -R0
l789: ldr R10, [sp, #+28]
l790: mov R2, #48
l791: strCS R6, [sp, +R2]
l792: ldr R10, [sp, #+28]!
l793: ldr R8, [sp, #-12]!
l794: str R9, [sp, #-8]!
l795: ldr R0, [sp], #+20
l796: mov R14, #20
l797: ldr R3, [sp], +R14
l798: mov R8, #4
l799: ldr R1, [sp], +R8
l800: ldr R14, [sp], #-36
l801: ldr R1, [sp, #-8]
l802: ldr R3, [sp, #+36]!
l803: mov R4, #52
l804: str R4, [sp, -R4]!
l805: ldr R6, [sp, #+20]!
l806: mov R14, #8
l807: ldr R10, [sp, +R14]
l808: mov R14, #36
l809: strVC R5, [sp, +R14]
l810: mov R8, #24
l811: str R9, [sp], -R8
l812: ldr R3, [sp, #+0]
l813: mov R1, #0
l814: strCS R6, [sp, +R1]
l815: ldrLS R0, [sp, #+0]
l816: ldrEQ R8, [sp, #+56]
l817: str R5, [sp], #+4
l818: str R6, [sp, #+32]!
l819: ldrGT R5, [sp, #-24]
l820: str R12, [sp], #+24
l821: mov R7, #28
l822: str R9, [sp], -R7
l823: ldr R9, [sp, #-4]!
l824: mov R2, #40
l825: ldrCC R4, [sp, +R2]
l826: str R9, [sp, #-28]!
l827: strGT R8, [sp, #+24]
l828: mov R5, #12
l829: str R15, [sp, +R5]!
l830: mov R11, #12
l831: ldr R9, [sp, -R11]!
l832: mov R11, #0
l833: ldr R12, [sp], +R11
l834: ldr R0, [sp], #+24
l835: mov R9, #44
l836: str R1, [sp], +R9
l837: mov R9, #60
l838: str R10, [sp], -R9
l839: str R4, [sp], #+52
l840: mov R12, #48
l841: strEQ R8, [sp, -R12]
l842: mov R12, #8
l843: strHI R12, [sp, -R12]
l844: mov R0, #48
l845: ldr R2, [sp, -R0]!
l846: ldrGE R8, [sp, #-4]
l847: mov R4, #4
l848: str R9, [sp, +R4]
l849: mov R11, #12
l850: strMI R0, [sp, -R11]
l851: str R8, [sp, #+32]
l852: str R8, [sp, #+32]!
l853: mov R10, #12
l854: ldr R11, [sp], +R10
l855: mov R2, #12
l856: str R2, [sp], +R2
l857: mov R5, #32
l858: strVS R9, [sp, -R5]
l859: ldr R8, [sp], #-4
l860: ldr R2, [sp, #-60]!
l861: mov R1, #8
l862: str R3, [sp], +R1
l863: mov R9, #16
l864: str R4, [sp], +R9
l865: strCS R5, [sp, #+8]
l866: mov R14, #12
l867: ldr R14, [sp], -R14
l868: mov R4, #12
l869: str R11, [sp, -R4]
l870: mov R3, #4
l871: ldr R2, [sp], +R3
l872: mov R2, #20
l873: str R9, [sp, +R2]!
l874: ldr R3, [sp, #-36]
l875: mov R11, #20
l876: ldr R3, [sp, -R11]
l877: ldr R12, [sp], #+16
l878: ldr R9, [sp], #-40
l879: str R1, [sp], #+44
l880: ldr R10, [sp, #-36]!
l881: ldr R1, [sp, #-12]!
l882: mov R0, #12
l883: str R5, [sp, -R0]
l884: mov R14, #12
l885: ldr R12, [sp], +R14
l886: mov R3, #28
l887: ldr R9, [sp], +R3
l888: mov R7, #4
l889: str R11, [sp], +R7
l890: str R8, [sp], #-20
l891: mov R11, #24
l892: strMI R1, [sp, +R11]
l893: ldrCS R9, [sp, #-8]
l894: str R7, [sp], #-12
l895: mov R4, #24
l896: str R14, [sp], -R4
l897: ldr R10, [sp, #+12]!
l898: mov R2, #48
l899: str R4, [sp, +R2]!
l900: ldr R5, [sp, #-64]
l901: str R14, [sp, #-12]!
l902: mov R14, #0
l903: str R14, [sp], +R14
l904: str R6, [sp], #-48
l905: mov R2, #20
l906: ldr R2, [sp, +R2]!
l907: mov R12, #12
l908: ldr R12, [sp], +R12
l909: ldr R0, [sp, #-12]!
l910: mov R3, #48
l911: str R2, [sp], +R3
l912: ldr R2, [sp], #-24
l913: mov R3, #32
l914: str R4, [sp, -R3]!
l915: ldr R0, [sp, #+24]
l916: mov R3, #40
l917: ldr R7, [sp, +R3]!
l918: mov R5, #12
l919: str R5, [sp, +R5]
l920: mov R1, #44
l921: str R3, [sp, -R1]!
l922: mov R2, #4
l923: ldr R2, [sp, -R2]!
l924: mov R4, #40
l925: ldr R10, [sp, +R4]
l926: ldr R4, [sp, #+20]
l927: ldrGE R0, [sp, #+20]
l928: ldr R7, [sp], #+32
l929: mov R6, #28
l930: strCC R2, [sp, -R6]
l931: mov R7, #8
l932: str R1, [sp], -R7
l933: str R14, [sp], #+4
l934: ldr R9, [sp], #+8
l935: ldr R10, [sp, #+4]!
l936: mov R14, #4
l937: ldr R14, [sp, +R14]!
l938: mov R2, #32
l939: ldr R4, [sp], -R2
l940: ldr R14, [sp], #+52
l941: str R11, [sp, #-68]
l942: ldr R7, [sp, #-60]
l943: mov R4, #16
l944: ldr R3, [sp, -R4]
l945: str R7, [sp, #-40]!
l946: str R11, [sp, #+16]!
l947: str R1, [sp, #-20]!
l948: mov R3, #32
l949: str R10, [sp, +R3]
l950: ldrVS R9, [sp, #+36]
l951: str R7, [sp, #+36]
l952: mov R3, #28
l953: ldr R9, [sp, -R3]!
l954: str R10, [sp], #+20
l955: mov R8, #16
l956: str R15, [sp, +R8]
l957: ldr R0, [sp, #-20]!
l958: mov R5, #0
l959: strCC R4, [sp, +R5]
l960: strPL R8, [sp, #+44]
l961: str R11, [sp, #+56]!
l962: ldrNE R6, [sp, #+12]
l963: mov R10, #4
l964: str R6, [sp], -R10
l965: str R12, [sp], #-52
l966: mov R7, #20
l967: str R10, [sp, +R7]!
l968: ldrGT R11, [sp, #+40]
l969: str R5, [sp], #+36
l970: mov R11, #4
l971: ldr R4, [sp], +R11
l972: mov R0, #4
l973: ldr R14, [sp], +R0
l974: mov R9, #40
l975: ldr R12, [sp], -R9
l976: mov R5, #44
l977: ldrVS R14, [sp, +R5]
l978: ldr R12, [sp, #-20]
l979: ldrGE R10, [sp, #-16]
l980: str R12, [sp, #+40]!
l981: mov R11, #16
l982: str R10, [sp, -R11]!
l983: ldr R11, [sp, #-24]!
l984: mov R9, #24
l985: ldr R14, [sp, -R9]!
l986: str R11, [sp, #+40]!
l987: mov R2, #32
l988: ldr R4, [sp], +R2
l989: mov R10, #24
l990: str R5, [sp, -R10]!
l991: mov R10, #4
l992: str R10, [sp], -R10
l993: mov R9, #20
l994: str R2, [sp, +R9]!
l995: ldr R14, [sp, #-12]
l996: ldrNE R14, [sp, #-12]
l997: strLT R9, [sp, #-24]
l998: ldr R0, [sp], #-52
l999: mov R5, #28
l1000: str R9, [sp], +R5
end: b end

