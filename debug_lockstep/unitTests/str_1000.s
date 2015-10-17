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
val1: .word 1432926521
next1:ldr R2, val2
b next2
val2: .word 237173082
next2:ldr R3, val3
b next3
val3: .word 4075723591
next3:ldr R4, val4
b next4
val4: .word 2229680986
next4:ldr R5, val5
b next5
val5: .word 1336605797
next5:ldr R6, val6
b next6
val6: .word 3825571052
next6:ldr R7, val7
b next7
val7: .word 2782367492
next7:ldr R8, val8
b next8
val8: .word 2965835293
next8:ldr R9, val9
b next9
val9: .word 3473406965
next9:ldr R10, val10
b next10
val10: .word 2788798056
next10:ldr R11, val11
b next11
val11: .word 2071791947
next11:ldr R12, val12
b next12
val12: .word 2956704371
next12:ldr R14, val14
b next14
val14: .word 1442550323

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 3333542840
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 25654139
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 4052493678
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 54143870
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 2314443280
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 440322044
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 61478378
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 3024497388
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 1309247636
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 405635230
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 1127961654
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 3119159093
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 4293358139
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 1736120737
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 1698027974
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 1110802773
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 821271562
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 639591370
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 3720847582
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 1784056072
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 531882413
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: mov R4, #64
l2: str R9, [sp, -R4]!
l3: str R11, [sp], #-16
l4: mov R3, #4
l5: str R7, [sp], +R3
l6: mov R14, #20
l7: str R9, [sp], +R14
l8: mov R8, #20
l9: str R9, [sp, +R8]
l10: mov R1, #0
l11: str R6, [sp], +R1
l12: mov R3, #40
l13: str R9, [sp], +R3
l14: mov R5, #24
l15: str R15, [sp], -R5
l16: mov R8, #40
l17: str R3, [sp, -R8]
l18: mov R10, #0
l19: str R4, [sp, +R10]!
l20: mov R6, #8
l21: str R3, [sp, -R6]
l22: str R2, [sp, #+0]
l23: mov R4, #32
l24: strHI R10, [sp, -R4]
l25: mov R8, #4
l26: str R1, [sp, -R8]!
l27: mov R8, #24
l28: strMI R5, [sp, -R8]
l29: str R7, [sp], #+32
l30: str R1, [sp, #-28]!
l31: mov R1, #8
l32: str R14, [sp], +R1
l33: str R7, [sp, #-20]!
l34: str R7, [sp, #+20]!
l35: strGE R6, [sp, #+0]
l36: mov R14, #12
l37: str R11, [sp, -R14]!
l38: mov R7, #24
l39: str R12, [sp], +R7
l40: str R9, [sp, #+4]
l41: str R12, [sp], #-4
l42: mov R3, #36
l43: str R14, [sp], -R3
l44: mov R4, #44
l45: str R10, [sp, +R4]!
l46: str R2, [sp], #-52
l47: str R6, [sp], #+0
l48: mov R3, #40
l49: str R4, [sp, +R3]!
l50: mov R12, #44
l51: str R4, [sp, -R12]!
l52: str R5, [sp], #+48
l53: strGT R6, [sp, #-36]
l54: str R3, [sp], #-28
l55: str R9, [sp], #+8
l56: mov R3, #24
l57: str R2, [sp], -R3
l58: strPL R0, [sp, #-8]
l59: strHI R5, [sp, #+32]
l60: str R9, [sp], #+40
l61: mov R3, #8
l62: str R9, [sp, +R3]!
l63: str R5, [sp], #-8
l64: mov R4, #12
l65: str R4, [sp], +R4
l66: mov R5, #0
l67: strHI R11, [sp, +R5]
l68: mov R3, #24
l69: strLE R7, [sp, -R3]
l70: mov R12, #32
l71: str R1, [sp], -R12
l72: mov R6, #24
l73: str R3, [sp, +R6]!
l74: mov R0, #12
l75: str R12, [sp], -R0
l76: mov R12, #16
l77: str R3, [sp, -R12]
l78: mov R7, #12
l79: strLT R14, [sp, +R7]
l80: str R15, [sp], #+8
l81: mov R7, #12
l82: str R7, [sp, -R7]
l83: str R2, [sp, #-32]!
l84: mov R1, #12
l85: strPL R9, [sp, -R1]
l86: str R8, [sp, #+20]
l87: str R8, [sp], #+52
l88: mov R12, #40
l89: str R8, [sp], -R12
l90: mov R14, #28
l91: str R7, [sp], +R14
l92: str R0, [sp, #+4]!
l93: mov R0, #4
l94: str R4, [sp, -R0]!
l95: mov R4, #12
l96: str R12, [sp, -R4]
l97: mov R14, #8
l98: str R3, [sp], +R14
l99: str R8, [sp], #-40
l100: str R1, [sp, #+28]!
l101: strLE R3, [sp, #+16]
l102: str R6, [sp, #-4]!
l103: mov R2, #48
l104: str R1, [sp], -R2
l105: str R4, [sp], #-4
l106: str R6, [sp, #+4]
l107: mov R11, #32
l108: str R1, [sp], +R11
l109: str R8, [sp], #-24
l110: strCC R1, [sp, #+36]
l111: str R4, [sp, #+28]!
l112: str R0, [sp, #+32]
l113: mov R7, #20
l114: str R2, [sp], -R7
l115: str R11, [sp, #+36]!
l116: mov R5, #20
l117: str R1, [sp], +R5
l118: str R12, [sp], #-24
l119: str R9, [sp, #-36]!
l120: str R1, [sp, #+32]!
l121: str R10, [sp, #-20]!
l122: mov R6, #44
l123: str R6, [sp], +R6
l124: mov R9, #4
l125: str R8, [sp], -R9
l126: mov R4, #44
l127: str R1, [sp], -R4
l128: mov R0, #0
l129: str R12, [sp], +R0
l130: strNE R12, [sp, #+12]
l131: str R2, [sp], #-16
l132: mov R8, #68
l133: str R7, [sp, +R8]!
l134: strVC R6, [sp, #-20]
l135: mov R4, #24
l136: str R8, [sp], -R4
l137: str R3, [sp, #+16]!
l138: strHI R9, [sp, #-16]
l139: mov R5, #40
l140: str R0, [sp, -R5]!
l141: str R12, [sp], #+4
l142: str R15, [sp], #-24
l143: str R15, [sp], #+68
l144: mov R9, #52
l145: strVC R7, [sp, -R9]
l146: mov R6, #48
l147: str R5, [sp, -R6]!
l148: mov R9, #20
l149: str R1, [sp, +R9]!
l150: str R1, [sp], #-44
l151: str R3, [sp, #+24]!
l152: str R7, [sp, #-12]!
l153: mov R6, #24
l154: str R15, [sp, +R6]!
l155: mov R11, #36
l156: str R14, [sp], -R11
l157: str R10, [sp, #+44]!
l158: str R9, [sp], #-16
l159: strNE R14, [sp, #+44]
l160: str R4, [sp], #-24
l161: mov R3, #48
l162: str R7, [sp], +R3
l163: mov R9, #12
l164: str R11, [sp, -R9]
l165: str R1, [sp, #+4]
l166: mov R1, #4
l167: str R15, [sp, +R1]
l168: str R11, [sp], #+20
l169: mov R8, #24
l170: str R0, [sp], -R8
l171: mov R2, #8
l172: str R1, [sp, -R2]!
l173: str R2, [sp, #-4]
l174: str R9, [sp, #+24]!
l175: str R11, [sp], #+0
l176: str R3, [sp, #-32]!
l177: mov R7, #28
l178: str R6, [sp, +R7]
l179: str R8, [sp], #-28
l180: str R11, [sp], #+56
l181: str R6, [sp, #-40]!
l182: str R12, [sp], #+40
l183: str R15, [sp], #-28
l184: str R8, [sp], #+32
l185: str R12, [sp, #+8]!
l186: mov R6, #0
l187: str R10, [sp, +R6]
l188: mov R2, #40
l189: str R3, [sp], -R2
l190: str R2, [sp, #-16]!
l191: mov R5, #16
l192: str R0, [sp, -R5]!
l193: str R7, [sp, #+68]!
l194: mov R2, #56
l195: str R9, [sp, -R2]!
l196: mov R12, #28
l197: str R4, [sp, +R12]!
l198: str R14, [sp, #+24]!
l199: str R10, [sp, #-12]!
l200: str R14, [sp, #+16]!
l201: mov R2, #44
l202: strCS R9, [sp, -R2]
l203: str R15, [sp, #-8]
l204: mov R1, #28
l205: str R0, [sp, -R1]!
l206: str R12, [sp, #-12]!
l207: mov R2, #16
l208: str R14, [sp, -R2]!
l209: mov R12, #8
l210: str R4, [sp], -R12
l211: str R1, [sp, #+48]!
l212: str R1, [sp], #-52
l213: str R12, [sp], #+60
l214: mov R6, #4
l215: str R12, [sp, -R6]
l216: str R9, [sp, #+8]!
l217: strLS R11, [sp, #-64]
l218: str R1, [sp, #-40]
l219: str R5, [sp, #-24]!
l220: strVS R5, [sp, #+24]
l221: strLE R8, [sp, #+28]
l222: mov R12, #28
l223: str R4, [sp, -R12]!
l224: str R15, [sp], #+40
l225: mov R10, #44
l226: str R12, [sp], -R10
l227: str R2, [sp, #+56]
l228: strNE R5, [sp, #+24]
l229: mov R0, #60
l230: strPL R4, [sp, +R0]
l231: str R6, [sp, #+40]!
l232: mov R14, #24
l233: str R1, [sp], -R14
l234: mov R1, #8
l235: str R8, [sp, -R1]
l236: str R6, [sp, #+28]!
l237: strLS R1, [sp, #-48]
l238: str R6, [sp, #-32]!
l239: mov R5, #8
l240: str R2, [sp, -R5]!
l241: mov R6, #32
l242: str R6, [sp], +R6
l243: mov R12, #4
l244: str R8, [sp, +R12]!
l245: mov R6, #12
l246: str R2, [sp, +R6]!
l247: mov R4, #8
l248: str R8, [sp], +R4
l249: mov R3, #36
l250: str R5, [sp], -R3
l251: mov R1, #24
l252: str R14, [sp], -R1
l253: str R6, [sp, #-8]
l254: mov R14, #48
l255: str R6, [sp], +R14
l256: str R6, [sp], #-44
l257: str R5, [sp], #+56
l258: mov R14, #24
l259: str R7, [sp, -R14]!
l260: mov R6, #16
l261: str R0, [sp], +R6
l262: mov R10, #20
l263: str R10, [sp, -R10]!
l264: str R2, [sp, #-36]
l265: mov R5, #0
l266: str R11, [sp, +R5]!
l267: mov R2, #8
l268: str R4, [sp], -R2
l269: mov R9, #36
l270: strLE R0, [sp, +R9]
l271: mov R6, #8
l272: strPL R11, [sp, -R6]
l273: mov R0, #8
l274: str R1, [sp, -R0]!
l275: mov R6, #12
l276: str R10, [sp, +R6]
l277: str R9, [sp], #-4
l278: str R0, [sp], #+44
l279: strMI R1, [sp, #-48]
l280: strCC R10, [sp, #-4]
l281: str R14, [sp], #-36
l282: mov R12, #28
l283: strPL R7, [sp, -R12]
l284: mov R9, #24
l285: str R4, [sp, -R9]!
l286: mov R11, #28
l287: str R10, [sp, +R11]!
l288: mov R8, #24
l289: str R3, [sp], +R8
l290: str R7, [sp, #-36]!
l291: strPL R6, [sp, #+48]
l292: mov R4, #12
l293: str R15, [sp], +R4
l294: str R0, [sp, #-16]
l295: mov R11, #20
l296: str R3, [sp, +R11]
l297: str R6, [sp, #+12]!
l298: mov R0, #32
l299: str R3, [sp, -R0]!
l300: mov R1, #8
l301: str R12, [sp], -R1
l302: mov R7, #28
l303: str R10, [sp, +R7]!
l304: str R15, [sp], #+16
l305: mov R7, #16
l306: str R5, [sp], -R7
l307: str R4, [sp, #-36]!
l308: str R3, [sp], #+72
l309: mov R4, #44
l310: str R12, [sp, -R4]!
l311: str R0, [sp, #+4]
l312: strHI R4, [sp, #+8]
l313: mov R12, #28
l314: str R3, [sp, -R12]!
l315: str R0, [sp, #+32]!
l316: mov R6, #24
l317: str R2, [sp, -R6]
l318: mov R2, #12
l319: str R1, [sp], -R2
l320: strEQ R4, [sp, #+28]
l321: mov R9, #4
l322: str R6, [sp], +R9
l323: str R15, [sp, #+20]
l324: mov R1, #24
l325: str R11, [sp], +R1
l326: mov R12, #40
l327: strLS R7, [sp, -R12]
l328: mov R3, #28
l329: str R7, [sp], -R3
l330: mov R5, #12
l331: str R7, [sp, -R5]
l332: strPL R14, [sp, #+8]
l333: str R3, [sp, #+20]!
l334: str R8, [sp, #-36]!
l335: mov R11, #40
l336: str R7, [sp, +R11]
l337: mov R5, #48
l338: str R10, [sp, +R5]!
l339: mov R11, #20
l340: str R12, [sp], +R11
l341: mov R6, #32
l342: str R4, [sp, -R6]!
l343: mov R3, #16
l344: str R10, [sp, +R3]!
l345: str R1, [sp, #-28]
l346: str R14, [sp, #-56]!
l347: str R10, [sp, #+44]
l348: str R2, [sp], #+68
l349: strCS R11, [sp, #-24]
l350: mov R0, #4
l351: str R1, [sp, -R0]!
l352: str R2, [sp], #-56
l353: str R12, [sp, #+28]!
l354: mov R14, #8
l355: str R14, [sp, +R14]!
l356: mov R5, #36
l357: str R15, [sp], -R5
l358: mov R12, #12
l359: str R5, [sp, +R12]!
l360: mov R8, #12
l361: str R11, [sp, -R8]!
l362: str R7, [sp], #+16
l363: mov R1, #8
l364: str R3, [sp], -R1
l365: str R12, [sp, #-8]
l366: mov R11, #48
l367: str R12, [sp, +R11]!
l368: strLS R5, [sp, #-16]
l369: mov R3, #16
l370: str R10, [sp], -R3
l371: str R9, [sp, #+8]!
l372: mov R11, #56
l373: str R2, [sp, -R11]!
l374: mov R4, #0
l375: str R15, [sp, +R4]
l376: strVC R5, [sp, #+72]
l377: strHI R1, [sp, #+24]
l378: mov R10, #36
l379: str R5, [sp, +R10]!
l380: mov R7, #24
l381: str R0, [sp, +R7]!
l382: mov R6, #16
l383: str R11, [sp, -R6]!
l384: strLT R11, [sp, #+8]
l385: mov R0, #12
l386: str R2, [sp, -R0]!
l387: str R6, [sp, #+12]
l388: mov R10, #36
l389: strLS R14, [sp, +R10]
l390: mov R11, #4
l391: str R8, [sp], -R11
l392: strEQ R4, [sp, #-28]
l393: str R1, [sp, #+28]!
l394: str R8, [sp], #+8
l395: mov R9, #4
l396: str R5, [sp], +R9
l397: str R6, [sp, #-28]
l398: mov R1, #32
l399: str R3, [sp], -R1
l400: str R12, [sp], #+20
l401: str R6, [sp], #+16
l402: str R8, [sp], #-16
l403: mov R9, #48
l404: strMI R10, [sp, -R9]
l405: mov R7, #16
l406: str R15, [sp], -R7
l407: str R2, [sp, #-28]!
l408: str R6, [sp], #+32
l409: str R0, [sp], #+4
l410: mov R8, #44
l411: str R9, [sp], -R8
l412: str R0, [sp], #+56
l413: mov R11, #36
l414: str R2, [sp], -R11
l415: str R15, [sp], #+12
l416: str R3, [sp, #+0]
l417: mov R14, #32
l418: str R3, [sp], +R14
l419: mov R6, #28
l420: str R12, [sp], -R6
l421: strGE R3, [sp, #-16]
l422: mov R4, #8
l423: str R14, [sp], -R4
l424: mov R5, #32
l425: str R8, [sp], +R5
l426: mov R7, #48
l427: str R4, [sp, -R7]!
l428: str R10, [sp, #-16]!
l429: str R15, [sp, #+48]
l430: mov R14, #36
l431: str R7, [sp, +R14]!
l432: str R2, [sp, #-16]!
l433: mov R2, #48
l434: strGT R5, [sp, +R2]
l435: mov R8, #36
l436: str R14, [sp, +R8]!
l437: str R0, [sp], #+0
l438: mov R7, #8
l439: str R9, [sp], +R7
l440: str R12, [sp], #-36
l441: str R14, [sp, #-8]
l442: str R6, [sp], #+4
l443: mov R9, #8
l444: str R1, [sp, -R9]!
l445: str R4, [sp, #+36]!
l446: mov R14, #48
l447: str R7, [sp], -R14
l448: mov R3, #56
l449: strGE R3, [sp, +R3]
l450: strGE R3, [sp, #+16]
l451: str R14, [sp, #-12]!
l452: str R10, [sp], #+24
l453: mov R6, #16
l454: str R10, [sp], -R6
l455: mov R10, #52
l456: str R6, [sp], +R10
l457: strCC R14, [sp, #-40]
l458: mov R4, #60
l459: strCS R2, [sp, -R4]
l460: mov R3, #28
l461: str R6, [sp], -R3
l462: mov R3, #32
l463: str R9, [sp, -R3]
l464: mov R14, #40
l465: str R9, [sp, +R14]!
l466: mov R3, #16
l467: str R4, [sp, -R3]!
l468: str R6, [sp], #-16
l469: mov R2, #4
l470: strHI R2, [sp, -R2]
l471: str R6, [sp], #+24
l472: str R11, [sp, #-4]
l473: str R1, [sp, #-52]!
l474: str R5, [sp], #-4
l475: str R3, [sp, #+20]!
l476: str R9, [sp], #+20
l477: str R14, [sp], #-32
l478: str R10, [sp], #+44
l479: str R1, [sp], #-40
l480: mov R1, #20
l481: strLS R3, [sp, +R1]
l482: mov R1, #52
l483: str R8, [sp, +R1]!
l484: mov R11, #44
l485: str R11, [sp, -R11]
l486: str R5, [sp, #-52]!
l487: mov R7, #32
l488: strLS R8, [sp, +R7]
l489: mov R2, #24
l490: str R11, [sp], +R2
l491: mov R10, #12
l492: strLT R8, [sp, -R10]
l493: str R10, [sp], #-4
l494: str R10, [sp], #-20
l495: mov R2, #36
l496: str R12, [sp], +R2
l497: str R11, [sp], #-8
l498: mov R8, #12
l499: str R9, [sp], +R8
l500: str R14, [sp], #+4
l501: str R14, [sp, #-16]!
l502: mov R1, #12
l503: str R1, [sp], -R1
l504: mov R10, #8
l505: str R1, [sp], -R10
l506: strHI R2, [sp, #-4]
l507: strPL R12, [sp, #+36]
l508: str R14, [sp, #-28]!
l509: mov R2, #4
l510: str R6, [sp, +R2]!
l511: mov R3, #16
l512: str R14, [sp, +R3]!
l513: mov R8, #40
l514: strEQ R4, [sp, +R8]
l515: str R0, [sp, #+28]
l516: str R12, [sp], #+44
l517: str R12, [sp], #-56
l518: mov R6, #32
l519: str R5, [sp], +R6
l520: mov R11, #32
l521: str R1, [sp], +R11
l522: mov R2, #52
l523: str R8, [sp, -R2]!
l524: mov R5, #20
l525: str R12, [sp, +R5]!
l526: str R9, [sp, #+20]!
l527: mov R9, #16
l528: str R12, [sp, -R9]
l529: mov R6, #36
l530: str R9, [sp, -R6]!
l531: strGT R3, [sp, #-8]
l532: mov R14, #16
l533: str R1, [sp, +R14]
l534: mov R4, #36
l535: str R0, [sp], +R4
l536: mov R9, #8
l537: str R8, [sp], +R9
l538: mov R4, #36
l539: str R9, [sp, -R4]!
l540: mov R4, #40
l541: strVC R3, [sp, +R4]
l542: str R8, [sp], #+36
l543: mov R6, #32
l544: str R7, [sp], -R6
l545: mov R11, #36
l546: str R14, [sp, +R11]!
l547: mov R8, #40
l548: str R7, [sp, -R8]
l549: strLS R4, [sp, #-28]
l550: mov R5, #72
l551: strPL R10, [sp, -R5]
l552: mov R11, #40
l553: str R9, [sp, -R11]!
l554: mov R2, #12
l555: str R5, [sp, +R2]!
l556: str R9, [sp, #-24]
l557: strGE R4, [sp, #+12]
l558: str R8, [sp], #-32
l559: str R6, [sp], #-4
l560: mov R5, #0
l561: str R1, [sp, +R5]!
l562: mov R14, #44
l563: str R10, [sp], +R14
l564: str R10, [sp, #+0]
l565: mov R14, #44
l566: str R5, [sp, -R14]!
l567: strGT R5, [sp, #+8]
l568: str R12, [sp, #+0]
l569: str R14, [sp], #+12
l570: strGT R2, [sp, #+8]
l571: str R6, [sp], #-16
l572: str R11, [sp], #+20
l573: mov R0, #20
l574: str R10, [sp, +R0]
l575: mov R9, #32
l576: str R7, [sp, +R9]!
l577: str R1, [sp, #-48]!
l578: mov R6, #36
l579: str R2, [sp], +R6
l580: strCC R11, [sp, #-16]
l581: strEQ R14, [sp, #+24]
l582: str R3, [sp, #-4]!
l583: mov R11, #4
l584: strCS R0, [sp, +R11]
l585: str R7, [sp, #-20]
l586: mov R11, #36
l587: str R3, [sp], -R11
l588: str R6, [sp], #+40
l589: strVC R8, [sp, #-4]
l590: mov R5, #24
l591: strMI R12, [sp, +R5]
l592: mov R1, #16
l593: str R0, [sp], -R1
l594: strEQ R4, [sp, #-4]
l595: mov R12, #28
l596: str R0, [sp], +R12
l597: mov R7, #52
l598: str R1, [sp, -R7]
l599: mov R10, #12
l600: str R9, [sp, +R10]
l601: mov R11, #32
l602: str R5, [sp, -R11]!
l603: str R12, [sp], #-4
l604: mov R0, #8
l605: str R3, [sp], -R0
l606: strHI R9, [sp, #+28]
l607: mov R8, #24
l608: str R0, [sp, +R8]!
l609: mov R9, #28
l610: str R14, [sp, -R9]
l611: str R8, [sp, #+20]!
l612: mov R4, #44
l613: str R0, [sp, -R4]
l614: mov R9, #8
l615: str R15, [sp], +R9
l616: str R15, [sp], #-40
l617: mov R4, #32
l618: str R10, [sp, +R4]
l619: str R3, [sp], #-8
l620: mov R10, #32
l621: strMI R0, [sp, +R10]
l622: str R12, [sp], #-4
l623: str R9, [sp, #+44]!
l624: mov R6, #12
l625: str R9, [sp, +R6]!
l626: mov R1, #4
l627: str R11, [sp], -R1
l628: strCS R10, [sp, #-64]
l629: mov R10, #56
l630: str R5, [sp, -R10]
l631: str R12, [sp, #-44]!
l632: mov R3, #24
l633: strEQ R7, [sp, +R3]
l634: str R14, [sp], #+44
l635: mov R14, #28
l636: str R3, [sp, -R14]!
l637: str R5, [sp], #-4
l638: str R2, [sp, #+8]!
l639: mov R0, #20
l640: str R7, [sp], -R0
l641: str R7, [sp, #+52]!
l642: mov R9, #28
l643: str R10, [sp], -R9
l644: mov R2, #12
l645: str R12, [sp, +R2]!
l646: mov R14, #12
l647: str R11, [sp, -R14]!
l648: str R4, [sp], #-16
l649: mov R9, #8
l650: str R1, [sp, -R9]!
l651: str R4, [sp], #+16
l652: str R5, [sp], #-28
l653: mov R1, #36
l654: str R12, [sp], +R1
l655: mov R9, #8
l656: strVS R5, [sp, -R9]
l657: str R8, [sp], #-8
l658: mov R11, #32
l659: str R1, [sp, +R11]!
l660: mov R12, #16
l661: str R8, [sp], -R12
l662: mov R7, #4
l663: str R3, [sp, +R7]!
l664: mov R12, #24
l665: str R11, [sp], -R12
l666: mov R0, #0
l667: strPL R6, [sp, +R0]
l668: strCS R5, [sp, #+20]
l669: mov R3, #16
l670: strMI R0, [sp, -R3]
l671: mov R14, #0
l672: strVC R3, [sp, +R14]
l673: mov R0, #28
l674: str R12, [sp], +R0
l675: str R4, [sp], #-16
l676: mov R6, #16
l677: str R6, [sp, +R6]!
l678: mov R4, #48
l679: str R1, [sp], -R4
l680: str R2, [sp, #+40]!
l681: mov R10, #12
l682: str R10, [sp, +R10]!
l683: str R12, [sp, #+0]
l684: str R1, [sp], #-28
l685: str R7, [sp], #+8
l686: str R2, [sp], #+20
l687: str R4, [sp], #-40
l688: mov R7, #40
l689: str R1, [sp, +R7]!
l690: str R1, [sp], #-8
l691: mov R2, #32
l692: str R2, [sp], -R2
l693: mov R3, #24
l694: str R8, [sp], +R3
l695: str R1, [sp], #-28
l696: str R2, [sp], #+28
l697: mov R0, #0
l698: str R2, [sp, +R0]!
l699: mov R9, #8
l700: strLE R0, [sp, -R9]
l701: mov R8, #24
l702: strHI R2, [sp, -R8]
l703: str R8, [sp, #+20]
l704: str R4, [sp, #-40]!
l705: mov R1, #8
l706: str R10, [sp], -R1
l707: mov R14, #8
l708: str R9, [sp], +R14
l709: str R2, [sp, #+0]!
l710: mov R12, #48
l711: str R8, [sp, +R12]
l712: mov R7, #28
l713: str R4, [sp, +R7]!
l714: mov R2, #4
l715: str R12, [sp, -R2]!
l716: str R12, [sp, #-4]!
l717: str R10, [sp, #+4]!
l718: strLS R6, [sp, #+36]
l719: mov R0, #20
l720: strCC R10, [sp, -R0]
l721: str R5, [sp, #-32]
l722: mov R3, #36
l723: str R3, [sp, +R3]
l724: str R2, [sp], #+20
l725: mov R2, #4
l726: str R5, [sp], -R2
l727: mov R9, #16
l728: str R3, [sp], -R9
l729: str R9, [sp], #-20
l730: strVS R8, [sp, #+16]
l731: str R15, [sp, #+60]!
l732: mov R14, #12
l733: str R6, [sp, -R14]
l734: mov R1, #16
l735: str R3, [sp], -R1
l736: str R0, [sp, #-44]!
l737: str R11, [sp], #+44
l738: mov R9, #44
l739: str R5, [sp, -R9]!
l740: str R0, [sp], #+48
l741: strLS R1, [sp, #-16]
l742: mov R11, #52
l743: strGE R11, [sp, -R11]
l744: str R0, [sp, #-4]!
l745: str R10, [sp, #+4]
l746: mov R1, #24
l747: str R3, [sp, -R1]!
l748: mov R3, #36
l749: str R12, [sp, +R3]!
l750: str R8, [sp, #-64]!
l751: str R9, [sp, #+8]
l752: str R10, [sp, #+60]!
l753: str R0, [sp, #-32]!
l754: mov R0, #20
l755: str R12, [sp, -R0]!
l756: str R4, [sp, #+20]!
l757: str R6, [sp, #-12]!
l758: mov R6, #8
l759: str R10, [sp], -R6
l760: str R9, [sp, #+36]!
l761: mov R5, #16
l762: str R15, [sp, +R5]
l763: str R7, [sp, #+16]!
l764: mov R11, #8
l765: str R11, [sp, -R11]!
l766: str R11, [sp, #-56]
l767: mov R6, #12
l768: strNE R5, [sp, -R6]
l769: str R12, [sp, #-36]!
l770: str R6, [sp, #+4]!
l771: strLE R1, [sp, #-4]
l772: mov R0, #20
l773: str R10, [sp, -R0]!
l774: mov R4, #68
l775: str R4, [sp], +R4
l776: str R5, [sp, #-56]!
l777: mov R9, #28
l778: str R15, [sp, +R9]!
l779: str R10, [sp], #+16
l780: mov R1, #44
l781: strVS R15, [sp, -R1]
l782: mov R0, #20
l783: str R14, [sp, -R0]
l784: mov R3, #8
l785: str R6, [sp, -R3]!
l786: str R4, [sp], #-44
l787: mov R7, #36
l788: strLS R3, [sp, +R7]
l789: mov R7, #4
l790: str R6, [sp, +R7]!
l791: mov R8, #52
l792: str R7, [sp, +R8]
l793: mov R2, #12
l794: str R6, [sp], +R2
l795: mov R4, #20
l796: str R2, [sp], +R4
l797: str R15, [sp], #-8
l798: mov R10, #16
l799: str R12, [sp], -R10
l800: str R0, [sp, #+12]
l801: str R5, [sp, #+20]
l802: mov R5, #48
l803: str R2, [sp], +R5
l804: str R7, [sp, #-36]
l805: strNE R3, [sp, #-4]
l806: str R0, [sp, #-4]!
l807: str R14, [sp], #-40
l808: mov R6, #20
l809: strGT R10, [sp, -R6]
l810: str R15, [sp], #+24
l811: mov R4, #4
l812: str R1, [sp, -R4]!
l813: mov R3, #32
l814: strLE R12, [sp, -R3]
l815: str R11, [sp], #+4
l816: str R9, [sp], #+4
l817: str R12, [sp, #+12]!
l818: strGT R15, [sp, #-24]
l819: mov R14, #24
l820: str R12, [sp], -R14
l821: str R3, [sp], #-28
l822: str R4, [sp], #+36
l823: str R11, [sp], #-16
l824: mov R4, #40
l825: str R7, [sp], +R4
l826: str R2, [sp, #-52]!
l827: str R0, [sp, #+0]!
l828: mov R1, #36
l829: str R10, [sp, +R1]!
l830: str R14, [sp], #-28
l831: mov R12, #40
l832: str R9, [sp, +R12]!
l833: mov R0, #64
l834: str R1, [sp, -R0]
l835: strVS R0, [sp, #-16]
l836: strEQ R9, [sp, #-44]
l837: str R10, [sp, #-64]!
l838: mov R8, #8
l839: str R12, [sp, +R8]
l840: mov R11, #36
l841: str R0, [sp, +R11]!
l842: str R3, [sp], #-32
l843: mov R2, #28
l844: str R5, [sp, +R2]
l845: str R5, [sp, #+40]
l846: strNE R8, [sp, #+40]
l847: mov R9, #8
l848: str R0, [sp, +R9]!
l849: str R12, [sp, #-12]
l850: mov R8, #12
l851: str R12, [sp], +R8
l852: mov R7, #24
l853: strHI R3, [sp, +R7]
l854: str R1, [sp, #-24]!
l855: str R9, [sp], #+44
l856: str R2, [sp, #-44]
l857: str R12, [sp], #+20
l858: strPL R3, [sp, #-28]
l859: str R5, [sp], #-12
l860: mov R7, #56
l861: str R6, [sp], -R7
l862: mov R0, #52
l863: str R1, [sp, +R0]!
l864: mov R4, #0
l865: str R9, [sp, +R4]
l866: str R5, [sp, #-52]!
l867: mov R5, #24
l868: str R9, [sp, +R5]!
l869: mov R2, #16
l870: str R15, [sp, -R2]!
l871: str R0, [sp, #+48]
l872: str R8, [sp, #+64]!
l873: strLT R3, [sp, #-52]
l874: strHI R6, [sp, #-4]
l875: mov R10, #64
l876: str R4, [sp, -R10]!
l877: str R1, [sp, #+28]!
l878: mov R3, #28
l879: strNE R11, [sp, -R3]
l880: mov R1, #4
l881: str R5, [sp], -R1
l882: str R7, [sp, #-4]
l883: str R0, [sp, #-32]!
l884: str R12, [sp, #+44]!
l885: str R9, [sp, #-36]
l886: str R10, [sp], #+24
l887: mov R6, #40
l888: str R1, [sp], -R6
l889: mov R6, #24
l890: str R5, [sp], -R6
l891: mov R5, #68
l892: str R2, [sp], +R5
l893: str R8, [sp], #-72
l894: str R9, [sp], #+52
l895: mov R2, #20
l896: str R4, [sp], -R2
l897: mov R8, #4
l898: strVC R0, [sp, -R8]
l899: str R3, [sp, #-28]!
l900: mov R14, #64
l901: strGT R2, [sp, +R14]
l902: strPL R10, [sp, #+36]
l903: mov R3, #48
l904: str R5, [sp, +R3]
l905: mov R7, #40
l906: strEQ R5, [sp, +R7]
l907: mov R3, #4
l908: str R8, [sp], -R3
l909: mov R14, #72
l910: str R5, [sp, +R14]!
l911: mov R7, #68
l912: str R10, [sp, -R7]!
l913: str R8, [sp], #+4
l914: mov R6, #36
l915: str R4, [sp], +R6
l916: str R14, [sp], #-40
l917: mov R2, #36
l918: str R5, [sp, +R2]!
l919: mov R7, #20
l920: str R0, [sp], -R7
l921: str R1, [sp, #+4]!
l922: mov R11, #20
l923: str R9, [sp], +R11
l924: mov R11, #8
l925: strGT R5, [sp, -R11]
l926: str R8, [sp, #-24]!
l927: mov R3, #20
l928: str R3, [sp], +R3
l929: strHI R1, [sp, #-40]
l930: strHI R3, [sp, #+8]
l931: str R9, [sp, #-36]
l932: mov R2, #24
l933: str R15, [sp, +R2]
l934: mov R11, #16
l935: str R11, [sp, +R11]!
l936: strEQ R14, [sp, #+12]
l937: str R11, [sp, #-48]!
l938: mov R6, #8
l939: str R2, [sp, -R6]!
l940: mov R10, #44
l941: str R15, [sp, +R10]!
l942: mov R11, #12
l943: strCC R2, [sp, -R11]
l944: str R1, [sp, #+28]!
l945: mov R8, #64
l946: str R10, [sp, -R8]!
l947: str R14, [sp, #+60]
l948: strPL R4, [sp, #+60]
l949: mov R3, #20
l950: str R15, [sp], +R3
l951: mov R8, #20
l952: str R14, [sp, -R8]
l953: str R5, [sp, #+8]
l954: str R6, [sp], #+40
l955: str R12, [sp], #-60
l956: mov R14, #8
l957: strGE R9, [sp, -R14]
l958: mov R3, #24
l959: strVC R1, [sp, +R3]
l960: mov R12, #16
l961: str R7, [sp], +R12
l962: strCS R6, [sp, #+36]
l963: mov R6, #4
l964: str R1, [sp], +R6
l965: mov R7, #12
l966: str R2, [sp, -R7]!
l967: mov R12, #56
l968: str R6, [sp], +R12
l969: str R0, [sp, #-40]!
l970: mov R7, #32
l971: str R5, [sp], +R7
l972: str R12, [sp], #-40
l973: mov R5, #40
l974: str R1, [sp], +R5
l975: str R12, [sp], #-32
l976: mov R0, #32
l977: str R15, [sp], -R0
l978: mov R8, #8
l979: strLT R6, [sp, +R8]
l980: str R8, [sp, #+52]
l981: mov R9, #12
l982: str R6, [sp, +R9]!
l983: str R7, [sp, #+28]!
l984: str R2, [sp], #+28
l985: mov R4, #40
l986: strCS R14, [sp, -R4]
l987: mov R9, #40
l988: str R0, [sp, -R9]!
l989: str R9, [sp, #+40]!
l990: str R2, [sp, #-28]
l991: str R4, [sp, #-24]!
l992: mov R6, #28
l993: strLT R7, [sp, +R6]
l994: mov R12, #44
l995: str R8, [sp, -R12]!
l996: mov R14, #16
l997: str R5, [sp, +R14]
l998: str R11, [sp], #+4
l999: mov R5, #48
l1000: str R12, [sp], +R5
end: b end

