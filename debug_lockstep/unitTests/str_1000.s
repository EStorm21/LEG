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
val1: .word 2787099666
next1:ldr R2, val2
b next2
val2: .word 3379828095
next2:ldr R3, val3
b next3
val3: .word 2999499886
next3:ldr R4, val4
b next4
val4: .word 1889600534
next4:ldr R5, val5
b next5
val5: .word 1589832160
next5:ldr R6, val6
b next6
val6: .word 1496044943
next6:ldr R7, val7
b next7
val7: .word 1472747704
next7:ldr R8, val8
b next8
val8: .word 4086667540
next8:ldr R9, val9
b next9
val9: .word 2740198207
next9:ldr R10, val10
b next10
val10: .word 975997604
next10:ldr R11, val11
b next11
val11: .word 3528138538
next11:ldr R12, val12
b next12
val12: .word 2398839873
next12:ldr R14, val14
b next14
val14: .word 2449713252

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 741078402
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 2150673896
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 1914285587
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 623927141
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 2422249829
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 2336791001
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 2571457529
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 340482782
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 4214714050
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 2391790447
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 3541672894
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 1409715827
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 3186610115
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 1852379316
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 3186351839
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 2907459012
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 3231370319
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 125574175
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 3524744859
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 2564916846
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 2455291628
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: str R11, [sp, #-64]!
l2: strPL R6, [sp, #+8]
l3: mov R3, #16
l4: str R4, [sp, +R3]!
l5: mov R1, #24
l6: str R4, [sp, +R1]!
l7: mov R6, #8
l8: strHI R1, [sp, +R6]
l9: str R6, [sp, #-52]!
l10: mov R7, #4
l11: str R8, [sp], +R7
l12: str R0, [sp], #+36
l13: mov R9, #44
l14: str R4, [sp, -R9]!
l15: mov R1, #4
l16: str R7, [sp], +R1
l17: mov R14, #60
l18: str R10, [sp], +R14
l19: mov R3, #4
l20: str R12, [sp], -R3
l21: mov R2, #0
l22: str R11, [sp, +R2]!
l23: strNE R14, [sp, #-20]
l24: str R7, [sp, #-32]
l25: str R15, [sp, #-24]!
l26: str R12, [sp], #+4
l27: mov R12, #16
l28: str R1, [sp], +R12
l29: mov R5, #32
l30: str R7, [sp, -R5]!
l31: mov R3, #4
l32: str R4, [sp, +R3]!
l33: mov R4, #8
l34: str R14, [sp, -R4]!
l35: mov R5, #16
l36: strNE R3, [sp, +R5]
l37: strPL R2, [sp, #-16]
l38: str R6, [sp, #+48]
l39: mov R7, #24
l40: str R14, [sp, +R7]
l41: str R3, [sp, #+40]!
l42: strVC R2, [sp, #-28]
l43: str R7, [sp], #-28
l44: str R0, [sp, #-16]
l45: str R11, [sp, #-16]!
l46: str R6, [sp, #+40]!
l47: mov R9, #0
l48: str R9, [sp], +R9
l49: mov R5, #0
l50: strMI R5, [sp, +R5]
l51: str R3, [sp, #-52]!
l52: strVS R4, [sp, #+0]
l53: mov R7, #48
l54: str R1, [sp, +R7]!
l55: str R0, [sp], #-48
l56: mov R7, #48
l57: str R10, [sp, +R7]
l58: mov R8, #16
l59: str R8, [sp], +R8
l60: str R15, [sp, #+48]!
l61: mov R14, #40
l62: str R15, [sp, -R14]
l63: str R2, [sp], #-32
l64: mov R4, #32
l65: str R5, [sp, -R4]!
l66: str R1, [sp, #+24]!
l67: strNE R10, [sp, #+0]
l68: mov R9, #4
l69: str R10, [sp, +R9]!
l70: mov R2, #8
l71: str R15, [sp, -R2]
l72: str R11, [sp], #+36
l73: str R14, [sp], #-12
l74: str R4, [sp], #-16
l75: mov R4, #32
l76: strMI R15, [sp, +R4]
l77: mov R10, #32
l78: str R7, [sp, -R10]!
l79: str R4, [sp], #+32
l80: mov R10, #0
l81: strLE R0, [sp, +R10]
l82: strGE R6, [sp, #-32]
l83: str R6, [sp, #+0]!
l84: mov R1, #24
l85: str R1, [sp], -R1
l86: str R11, [sp, #+4]!
l87: str R10, [sp, #+32]
l88: mov R3, #12
l89: str R7, [sp], -R3
l90: mov R10, #60
l91: str R6, [sp, +R10]!
l92: str R12, [sp, #+0]!
l93: str R7, [sp], #+8
l94: mov R7, #0
l95: str R11, [sp], +R7
l96: mov R3, #68
l97: str R11, [sp], -R3
l98: str R10, [sp], #+48
l99: mov R7, #4
l100: str R11, [sp], -R7
l101: mov R5, #0
l102: str R6, [sp, +R5]!
l103: str R11, [sp], #-8
l104: strNE R0, [sp, #-24]
l105: mov R4, #36
l106: str R4, [sp, -R4]
l107: mov R10, #40
l108: str R3, [sp, -R10]!
l109: str R9, [sp, #-4]
l110: str R14, [sp, #+64]
l111: mov R7, #8
l112: str R6, [sp], +R7
l113: str R15, [sp, #+60]!
l114: mov R11, #68
l115: str R8, [sp, -R11]
l116: str R0, [sp, #-20]!
l117: mov R12, #8
l118: str R4, [sp, +R12]
l119: mov R10, #0
l120: str R14, [sp, +R10]!
l121: str R3, [sp], #-16
l122: mov R5, #8
l123: str R3, [sp, -R5]!
l124: mov R2, #8
l125: str R2, [sp], -R2
l126: mov R5, #8
l127: str R10, [sp], +R5
l128: str R0, [sp], #+4
l129: mov R9, #20
l130: str R12, [sp, +R9]
l131: str R9, [sp], #+28
l132: mov R4, #60
l133: strLS R14, [sp, -R4]
l134: str R1, [sp, #-32]!
l135: mov R6, #24
l136: str R0, [sp], +R6
l137: str R8, [sp], #-20
l138: mov R6, #24
l139: str R7, [sp, -R6]!
l140: str R6, [sp], #+4
l141: str R6, [sp, #+20]!
l142: mov R10, #32
l143: str R12, [sp], +R10
l144: mov R7, #20
l145: str R1, [sp, -R7]
l146: str R12, [sp], #-16
l147: mov R0, #20
l148: str R5, [sp, +R0]!
l149: mov R14, #48
l150: str R11, [sp], -R14
l151: str R11, [sp], #-20
l152: str R10, [sp], #+52
l153: str R6, [sp], #+0
l154: str R0, [sp, #+4]!
l155: strCS R0, [sp, #-20]
l156: mov R3, #28
l157: str R11, [sp], -R3
l158: str R12, [sp, #+16]!
l159: str R9, [sp], #-44
l160: strMI R0, [sp, #+40]
l161: mov R7, #0
l162: str R4, [sp, +R7]!
l163: str R0, [sp], #+20
l164: mov R5, #52
l165: str R1, [sp, +R5]
l166: mov R6, #12
l167: str R3, [sp], -R6
l168: strLE R5, [sp, #+44]
l169: mov R7, #0
l170: str R6, [sp], +R7
l171: mov R5, #4
l172: str R9, [sp], +R5
l173: strGT R14, [sp, #+24]
l174: mov R12, #52
l175: str R10, [sp, +R12]!
l176: str R7, [sp], #-28
l177: mov R2, #8
l178: str R14, [sp], -R2
l179: strLE R9, [sp, #+8]
l180: mov R2, #44
l181: strCS R0, [sp, +R2]
l182: mov R11, #40
l183: str R10, [sp, +R11]
l184: str R7, [sp, #+44]!
l185: str R15, [sp, #-68]!
l186: str R2, [sp, #+4]
l187: mov R0, #68
l188: str R11, [sp, +R0]!
l189: mov R9, #28
l190: str R14, [sp], -R9
l191: str R3, [sp], #-28
l192: strNE R8, [sp, #-8]
l193: strVC R12, [sp, #+44]
l194: mov R11, #36
l195: str R0, [sp], +R11
l196: str R11, [sp, #-20]!
l197: mov R9, #24
l198: str R8, [sp, +R9]!
l199: strEQ R7, [sp, #-4]
l200: mov R1, #12
l201: str R4, [sp, -R1]!
l202: str R0, [sp, #-24]!
l203: mov R14, #24
l204: str R1, [sp], +R14
l205: str R5, [sp], #+0
l206: mov R9, #24
l207: str R6, [sp, +R9]!
l208: strHI R9, [sp, #-32]
l209: str R6, [sp], #+8
l210: mov R7, #76
l211: str R8, [sp], -R7
l212: mov R11, #44
l213: str R3, [sp, +R11]
l214: str R14, [sp], #+36
l215: strHI R8, [sp, #-16]
l216: str R15, [sp, #+12]!
l217: mov R6, #48
l218: str R15, [sp, -R6]
l219: mov R8, #28
l220: strLT R0, [sp, -R8]
l221: mov R14, #36
l222: str R5, [sp], -R14
l223: strHI R0, [sp, #+0]
l224: strLT R14, [sp, #-8]
l225: str R7, [sp], #+52
l226: mov R1, #20
l227: str R10, [sp, -R1]!
l228: strCC R0, [sp, #-32]
l229: mov R5, #24
l230: str R10, [sp, +R5]!
l231: str R15, [sp, #-32]!
l232: mov R6, #28
l233: strLE R7, [sp, +R6]
l234: str R15, [sp, #+12]
l235: str R12, [sp], #+24
l236: mov R11, #40
l237: strVS R14, [sp, -R11]
l238: mov R6, #12
l239: str R7, [sp], +R6
l240: strMI R1, [sp, #+4]
l241: mov R9, #4
l242: str R7, [sp], +R9
l243: mov R11, #40
l244: strLT R15, [sp, -R11]
l245: mov R5, #36
l246: str R9, [sp], -R5
l247: str R1, [sp, #+0]!
l248: mov R14, #36
l249: str R11, [sp, -R14]!
l250: str R15, [sp], #+72
l251: mov R2, #64
l252: str R12, [sp], -R2
l253: mov R7, #8
l254: str R12, [sp, -R7]!
l255: mov R5, #16
l256: str R9, [sp], +R5
l257: mov R0, #32
l258: strCC R0, [sp, +R0]
l259: str R2, [sp], #-8
l260: strMI R3, [sp, #-12]
l261: mov R9, #16
l262: str R11, [sp], +R9
l263: strLT R0, [sp, #+32]
l264: mov R10, #12
l265: str R7, [sp], -R10
l266: str R3, [sp, #+8]
l267: str R9, [sp, #+36]!
l268: str R5, [sp, #-28]
l269: mov R4, #36
l270: strGE R2, [sp, -R4]
l271: str R5, [sp], #-24
l272: mov R6, #32
l273: strGE R14, [sp, +R6]
l274: str R10, [sp, #-8]
l275: str R10, [sp], #-24
l276: mov R7, #48
l277: str R5, [sp, +R7]!
l278: str R3, [sp], #-12
l279: str R12, [sp], #+12
l280: str R10, [sp, #-24]!
l281: str R0, [sp, #-4]!
l282: mov R3, #4
l283: str R9, [sp], -R3
l284: mov R8, #36
l285: str R12, [sp, +R8]
l286: mov R0, #24
l287: strGT R9, [sp, +R0]
l288: mov R11, #12
l289: str R3, [sp], +R11
l290: mov R8, #16
l291: str R11, [sp], -R8
l292: mov R2, #8
l293: str R4, [sp], -R2
l294: mov R0, #8
l295: str R3, [sp], +R0
l296: mov R0, #52
l297: str R6, [sp, +R0]!
l298: str R15, [sp, #-20]!
l299: mov R12, #16
l300: strMI R9, [sp, -R12]
l301: str R11, [sp, #-4]!
l302: mov R1, #4
l303: strCC R14, [sp, -R1]
l304: mov R0, #32
l305: str R6, [sp], +R0
l306: str R8, [sp, #-64]
l307: mov R10, #72
l308: str R14, [sp], -R10
l309: mov R2, #28
l310: str R5, [sp], +R2
l311: str R4, [sp, #+28]!
l312: mov R2, #56
l313: strVC R0, [sp, -R2]
l314: str R1, [sp], #-8
l315: str R4, [sp, #-12]!
l316: str R12, [sp, #+8]!
l317: mov R2, #12
l318: str R5, [sp], +R2
l319: str R4, [sp, #-8]!
l320: mov R8, #44
l321: str R0, [sp], -R8
l322: strNE R0, [sp, #+40]
l323: mov R6, #24
l324: str R11, [sp, +R6]!
l325: str R10, [sp, #-16]
l326: mov R7, #32
l327: str R12, [sp], +R7
l328: strPL R1, [sp, #-48]
l329: mov R5, #16
l330: str R14, [sp, -R5]!
l331: str R3, [sp, #-12]!
l332: mov R9, #16
l333: str R6, [sp, -R9]
l334: mov R8, #8
l335: str R10, [sp, +R8]!
l336: mov R9, #32
l337: str R12, [sp, +R9]!
l338: strEQ R11, [sp, #-44]
l339: strEQ R3, [sp, #-76]
l340: mov R6, #28
l341: str R15, [sp, -R6]!
l342: strLS R7, [sp, #+28]
l343: mov R9, #24
l344: str R2, [sp], +R9
l345: strLT R14, [sp, #-16]
l346: mov R12, #16
l347: str R14, [sp], -R12
l348: mov R5, #20
l349: str R5, [sp, -R5]
l350: mov R1, #48
l351: strHI R10, [sp, -R1]
l352: strMI R0, [sp, #+20]
l353: mov R9, #48
l354: str R0, [sp], -R9
l355: mov R8, #40
l356: str R5, [sp, +R8]!
l357: mov R2, #24
l358: strEQ R2, [sp, -R2]
l359: mov R5, #4
l360: strPL R3, [sp, -R5]
l361: str R5, [sp], #+0
l362: str R3, [sp, #-12]!
l363: mov R9, #16
l364: str R11, [sp, +R9]!
l365: str R9, [sp, #+4]
l366: mov R12, #12
l367: str R3, [sp, +R12]!
l368: str R11, [sp, #-44]!
l369: str R7, [sp], #+16
l370: str R7, [sp], #-20
l371: str R2, [sp, #-4]
l372: mov R10, #24
l373: str R7, [sp, +R10]!
l374: str R2, [sp, #-40]!
l375: str R5, [sp], #+60
l376: str R11, [sp], #-12
l377: strVC R11, [sp, #-24]
l378: mov R9, #32
l379: strEQ R11, [sp, -R9]
l380: str R5, [sp, #+8]!
l381: str R3, [sp], #-28
l382: mov R14, #36
l383: str R12, [sp, +R14]!
l384: strHI R12, [sp, #-32]
l385: str R3, [sp], #-24
l386: str R7, [sp], #+28
l387: str R7, [sp, #-32]!
l388: mov R6, #12
l389: str R2, [sp, -R6]!
l390: mov R14, #8
l391: str R2, [sp, -R14]!
l392: mov R10, #44
l393: str R4, [sp, +R10]!
l394: str R6, [sp], #+16
l395: str R10, [sp], #-72
l396: strCS R14, [sp, #+0]
l397: mov R0, #64
l398: str R10, [sp, +R0]!
l399: mov R8, #8
l400: str R8, [sp], -R8
l401: mov R5, #52
l402: str R15, [sp, -R5]!
l403: str R14, [sp, #+68]!
l404: mov R8, #36
l405: str R11, [sp, -R8]!
l406: strGT R14, [sp, #-36]
l407: mov R6, #16
l408: str R6, [sp], +R6
l409: mov R9, #12
l410: str R6, [sp], +R9
l411: mov R9, #48
l412: str R4, [sp, -R9]!
l413: mov R4, #28
l414: str R8, [sp, +R4]
l415: str R15, [sp], #+52
l416: mov R12, #20
l417: strMI R15, [sp, -R12]
l418: mov R5, #0
l419: str R9, [sp], +R5
l420: str R0, [sp, #+4]!
l421: str R7, [sp, #-4]!
l422: str R0, [sp], #-8
l423: str R10, [sp], #-44
l424: mov R5, #8
l425: str R10, [sp], +R5
l426: mov R14, #32
l427: str R11, [sp], +R14
l428: mov R6, #4
l429: str R15, [sp, +R6]
l430: strNE R0, [sp, #-20]
l431: str R10, [sp], #-60
l432: mov R11, #52
l433: strEQ R7, [sp, +R11]
l434: str R11, [sp, #+0]!
l435: mov R6, #44
l436: str R15, [sp, +R6]!
l437: strEQ R9, [sp, #-16]
l438: str R5, [sp], #+8
l439: str R6, [sp, #+24]!
l440: str R7, [sp, #-20]
l441: mov R5, #4
l442: str R3, [sp], -R5
l443: mov R2, #24
l444: str R10, [sp, -R2]!
l445: mov R12, #12
l446: str R9, [sp, -R12]
l447: mov R11, #12
l448: str R14, [sp, -R11]!
l449: mov R9, #24
l450: str R5, [sp, -R9]
l451: mov R12, #28
l452: str R1, [sp, -R12]!
l453: mov R1, #52
l454: str R9, [sp, +R1]!
l455: strNE R15, [sp, #-16]
l456: str R8, [sp, #+16]
l457: mov R12, #12
l458: str R9, [sp, -R12]!
l459: str R7, [sp, #+16]
l460: str R15, [sp, #+28]
l461: str R1, [sp, #-24]
l462: strEQ R1, [sp, #-40]
l463: str R3, [sp, #-8]!
l464: str R5, [sp, #-28]!
l465: strGT R15, [sp, #+28]
l466: mov R4, #16
l467: str R4, [sp, +R4]
l468: str R10, [sp], #+40
l469: str R8, [sp, #-36]!
l470: mov R2, #20
l471: str R7, [sp], +R2
l472: mov R3, #40
l473: strGE R5, [sp, +R3]
l474: mov R8, #16
l475: str R6, [sp], -R8
l476: mov R14, #20
l477: str R8, [sp, +R14]
l478: mov R8, #20
l479: str R2, [sp], -R8
l480: str R2, [sp, #+32]!
l481: mov R11, #24
l482: strCS R1, [sp, -R11]
l483: strMI R10, [sp, #-28]
l484: str R11, [sp, #+32]!
l485: str R3, [sp, #-44]!
l486: mov R6, #36
l487: str R8, [sp], +R6
l488: str R1, [sp, #-52]
l489: str R15, [sp, #-24]
l490: str R15, [sp, #-8]!
l491: str R9, [sp], #-12
l492: mov R14, #16
l493: str R6, [sp], -R14
l494: mov R3, #12
l495: strPL R10, [sp, -R3]
l496: mov R14, #24
l497: str R14, [sp], +R14
l498: mov R5, #20
l499: str R10, [sp], +R5
l500: str R8, [sp], #+0
l501: mov R10, #44
l502: strMI R14, [sp, -R10]
l503: str R5, [sp], #+0
l504: str R11, [sp, #-12]!
l505: mov R14, #24
l506: strLE R2, [sp, +R14]
l507: mov R9, #12
l508: str R4, [sp, -R9]
l509: mov R2, #4
l510: str R15, [sp], +R2
l511: mov R2, #20
l512: str R8, [sp], -R2
l513: str R1, [sp, #+40]!
l514: mov R7, #40
l515: strHI R9, [sp, -R7]
l516: str R10, [sp, #-76]
l517: str R1, [sp], #-16
l518: mov R5, #44
l519: str R11, [sp], -R5
l520: str R0, [sp, #+0]!
l521: str R7, [sp, #+24]!
l522: mov R10, #16
l523: str R4, [sp], +R10
l524: str R6, [sp, #+16]!
l525: mov R5, #72
l526: str R2, [sp, -R5]!
l527: mov R1, #48
l528: str R7, [sp, +R1]!
l529: str R1, [sp], #+0
l530: mov R8, #32
l531: str R11, [sp], -R8
l532: strLE R1, [sp, #+60]
l533: str R3, [sp, #+52]
l534: str R12, [sp], #-12
l535: strHI R15, [sp, #+20]
l536: mov R8, #24
l537: str R3, [sp], +R8
l538: str R10, [sp, #+4]
l539: mov R11, #24
l540: strGT R15, [sp, +R11]
l541: mov R1, #8
l542: str R12, [sp, +R1]
l543: str R15, [sp, #+28]
l544: str R2, [sp, #+20]
l545: str R15, [sp], #+0
l546: mov R5, #32
l547: str R7, [sp], +R5
l548: str R11, [sp, #-48]!
l549: mov R4, #16
l550: str R7, [sp], +R4
l551: str R6, [sp], #-16
l552: mov R12, #60
l553: str R3, [sp, +R12]!
l554: mov R3, #12
l555: str R5, [sp], -R3
l556: mov R3, #32
l557: str R3, [sp, -R3]!
l558: mov R4, #16
l559: str R5, [sp], -R4
l560: str R1, [sp, #+16]!
l561: mov R11, #8
l562: str R6, [sp, -R11]
l563: mov R10, #40
l564: strEQ R5, [sp, +R10]
l565: mov R1, #4
l566: str R11, [sp, -R1]!
l567: mov R1, #24
l568: str R4, [sp, +R1]!
l569: mov R1, #16
l570: str R10, [sp, -R1]!
l571: str R11, [sp], #+44
l572: str R4, [sp, #-48]
l573: mov R2, #52
l574: str R11, [sp, -R2]!
l575: mov R10, #16
l576: str R3, [sp], -R10
l577: str R5, [sp, #+68]!
l578: mov R3, #24
l579: str R5, [sp], -R3
l580: mov R12, #24
l581: str R6, [sp, -R12]!
l582: mov R2, #4
l583: str R9, [sp, +R2]
l584: mov R1, #4
l585: str R8, [sp, +R1]!
l586: str R12, [sp, #+40]!
l587: str R7, [sp], #-4
l588: strCS R8, [sp, #-20]
l589: str R3, [sp], #-24
l590: mov R7, #20
l591: str R2, [sp], +R7
l592: mov R7, #44
l593: str R1, [sp, -R7]
l594: str R1, [sp, #-60]
l595: str R12, [sp], #-36
l596: mov R9, #16
l597: str R6, [sp], -R9
l598: mov R6, #28
l599: str R12, [sp], +R6
l600: str R12, [sp], #-8
l601: mov R8, #44
l602: str R14, [sp, +R8]
l603: mov R6, #24
l604: str R0, [sp, +R6]!
l605: mov R6, #4
l606: strCS R12, [sp, +R6]
l607: mov R11, #56
l608: str R4, [sp], -R11
l609: mov R2, #76
l610: str R4, [sp], +R2
l611: mov R0, #64
l612: strVS R9, [sp, -R0]
l613: strLS R4, [sp, #-72]
l614: str R14, [sp, #-52]!
l615: str R8, [sp, #+32]
l616: str R9, [sp, #+12]!
l617: str R1, [sp], #+8
l618: mov R1, #32
l619: str R6, [sp], -R1
l620: strNE R15, [sp, #+32]
l621: str R5, [sp], #+20
l622: str R15, [sp, #+8]
l623: mov R1, #12
l624: strGT R4, [sp, +R1]
l625: strLE R0, [sp, #-24]
l626: str R0, [sp, #-8]!
l627: str R8, [sp, #-8]!
l628: mov R10, #32
l629: strVS R15, [sp, +R10]
l630: mov R7, #44
l631: strEQ R1, [sp, +R7]
l632: strGT R2, [sp, #-8]
l633: str R3, [sp], #+56
l634: strLT R3, [sp, #-24]
l635: mov R10, #4
l636: str R5, [sp, +R10]!
l637: mov R12, #56
l638: str R14, [sp, -R12]!
l639: str R7, [sp], #+52
l640: strNE R15, [sp, #-64]
l641: mov R10, #52
l642: str R0, [sp], -R10
l643: mov R6, #40
l644: strLT R14, [sp, +R6]
l645: mov R0, #32
l646: str R6, [sp, +R0]!
l647: str R14, [sp, #+24]!
l648: mov R6, #56
l649: str R8, [sp], -R6
l650: mov R7, #4
l651: strLE R11, [sp, -R7]
l652: mov R10, #16
l653: str R4, [sp, +R10]!
l654: str R9, [sp], #-4
l655: str R3, [sp, #+40]
l656: str R4, [sp, #+28]
l657: str R12, [sp, #+32]
l658: strCC R12, [sp, #+36]
l659: strLT R1, [sp, #+44]
l660: mov R6, #8
l661: str R3, [sp, -R6]!
l662: str R4, [sp, #-4]!
l663: mov R9, #8
l664: str R10, [sp], +R9
l665: strEQ R0, [sp, #-4]
l666: mov R3, #8
l667: str R15, [sp, -R3]!
l668: str R9, [sp, #+16]
l669: mov R9, #16
l670: str R10, [sp, +R9]!
l671: str R12, [sp], #-8
l672: mov R5, #20
l673: str R2, [sp, -R5]!
l674: mov R11, #4
l675: str R5, [sp, -R11]
l676: mov R12, #4
l677: str R1, [sp], -R12
l678: mov R4, #4
l679: str R9, [sp, +R4]!
l680: str R2, [sp], #+48
l681: mov R3, #20
l682: strCS R4, [sp, -R3]
l683: strLT R11, [sp, #+0]
l684: str R0, [sp], #+20
l685: mov R7, #20
l686: str R8, [sp, -R7]!
l687: str R12, [sp, #-40]
l688: mov R9, #32
l689: str R14, [sp, -R9]!
l690: mov R1, #36
l691: str R14, [sp], +R1
l692: mov R5, #24
l693: str R8, [sp], -R5
l694: str R5, [sp, #-36]
l695: str R6, [sp], #+8
l696: str R9, [sp, #+12]!
l697: mov R3, #32
l698: str R15, [sp], -R3
l699: mov R4, #24
l700: str R12, [sp], -R4
l701: str R9, [sp, #+68]!
l702: mov R0, #4
l703: str R11, [sp], +R0
l704: strGE R2, [sp, #-64]
l705: str R8, [sp], #+0
l706: mov R8, #20
l707: strVC R5, [sp, -R8]
l708: mov R8, #64
l709: str R2, [sp, -R8]!
l710: str R0, [sp, #-8]!
l711: str R11, [sp], #+76
l712: str R3, [sp, #-72]!
l713: mov R0, #60
l714: str R14, [sp, +R0]!
l715: mov R14, #8
l716: str R2, [sp, -R14]!
l717: str R8, [sp, #-28]!
l718: str R3, [sp], #+0
l719: mov R4, #48
l720: str R1, [sp, +R4]!
l721: mov R1, #44
l722: str R9, [sp, -R1]!
l723: str R15, [sp], #-24
l724: str R9, [sp, #+56]!
l725: mov R1, #16
l726: str R8, [sp], -R1
l727: str R0, [sp], #-16
l728: str R3, [sp], #+4
l729: str R15, [sp, #+8]
l730: str R7, [sp, #-8]
l731: mov R11, #32
l732: strEQ R6, [sp, -R11]
l733: mov R4, #4
l734: str R2, [sp, +R4]!
l735: mov R5, #36
l736: str R15, [sp], -R5
l737: mov R10, #4
l738: strLT R8, [sp, -R10]
l739: strGE R4, [sp, #+12]
l740: mov R1, #72
l741: str R9, [sp], +R1
l742: str R8, [sp, #-48]!
l743: str R5, [sp], #+0
l744: str R11, [sp, #-28]
l745: mov R5, #4
l746: strHI R2, [sp, +R5]
l747: mov R8, #8
l748: str R9, [sp], +R8
l749: mov R4, #12
l750: str R5, [sp, +R4]!
l751: str R2, [sp], #+8
l752: mov R8, #16
l753: str R5, [sp], +R8
l754: str R11, [sp], #-8
l755: mov R9, #12
l756: str R1, [sp, -R9]
l757: mov R11, #4
l758: str R4, [sp, -R11]!
l759: mov R12, #36
l760: strGE R5, [sp, -R12]
l761: mov R1, #28
l762: str R0, [sp, -R1]!
l763: str R3, [sp], #-20
l764: mov R9, #20
l765: str R0, [sp, +R9]!
l766: str R12, [sp, #+8]!
l767: mov R7, #32
l768: str R6, [sp, +R7]
l769: mov R6, #32
l770: str R8, [sp, -R6]!
l771: str R8, [sp, #+24]
l772: mov R14, #68
l773: str R14, [sp, +R14]
l774: mov R1, #68
l775: str R9, [sp, +R1]!
l776: strHI R4, [sp, #-76]
l777: mov R5, #56
l778: str R6, [sp, -R5]!
l779: str R8, [sp], #+12
l780: str R12, [sp, #+36]!
l781: mov R5, #4
l782: str R14, [sp, +R5]!
l783: str R9, [sp], #-56
l784: str R1, [sp, #+40]!
l785: str R9, [sp, #+8]
l786: strLE R10, [sp, #+8]
l787: str R12, [sp, #-44]!
l788: strCS R6, [sp, #+0]
l789: mov R12, #44
l790: str R10, [sp], +R12
l791: mov R12, #56
l792: str R14, [sp], -R12
l793: mov R7, #36
l794: str R4, [sp, +R7]!
l795: str R11, [sp, #+32]!
l796: mov R0, #8
l797: strLS R0, [sp, -R0]
l798: mov R11, #16
l799: str R10, [sp, -R11]!
l800: mov R11, #36
l801: str R9, [sp], -R11
l802: mov R6, #24
l803: str R9, [sp], +R6
l804: mov R14, #20
l805: strNE R2, [sp, +R14]
l806: str R3, [sp, #+0]!
l807: mov R12, #20
l808: str R12, [sp, -R12]
l809: str R5, [sp, #-32]!
l810: str R3, [sp, #+44]
l811: mov R5, #20
l812: str R1, [sp, +R5]
l813: mov R0, #56
l814: strEQ R10, [sp, +R0]
l815: str R8, [sp], #+68
l816: mov R6, #12
l817: strVC R3, [sp, -R6]
l818: strVS R11, [sp, #-28]
l819: str R7, [sp], #-36
l820: mov R5, #0
l821: strGT R9, [sp, +R5]
l822: str R14, [sp], #-8
l823: mov R2, #4
l824: str R4, [sp, +R2]!
l825: str R14, [sp, #-16]
l826: mov R5, #12
l827: strVS R6, [sp, +R5]
l828: mov R3, #4
l829: str R12, [sp, +R3]
l830: strNE R2, [sp, #-8]
l831: mov R12, #24
l832: strCC R6, [sp, -R12]
l833: str R0, [sp, #-36]!
l834: mov R9, #60
l835: str R8, [sp, +R9]!
l836: mov R5, #16
l837: str R15, [sp], -R5
l838: mov R4, #8
l839: str R2, [sp, -R4]!
l840: strMI R11, [sp, #+40]
l841: str R12, [sp], #-20
l842: str R0, [sp, #+0]!
l843: mov R7, #16
l844: strVC R4, [sp, -R7]
l845: strPL R10, [sp, #+44]
l846: str R14, [sp, #-8]
l847: mov R9, #24
l848: strVS R12, [sp, +R9]
l849: mov R11, #28
l850: str R5, [sp, +R11]!
l851: str R1, [sp], #+16
l852: mov R11, #0
l853: str R0, [sp, +R11]!
l854: strHI R0, [sp, #-48]
l855: mov R7, #44
l856: strVC R15, [sp, -R7]
l857: mov R8, #36
l858: str R6, [sp, -R8]!
l859: str R8, [sp, #+28]!
l860: mov R10, #16
l861: strEQ R14, [sp, +R10]
l862: str R9, [sp], #+24
l863: mov R4, #68
l864: strGE R4, [sp, -R4]
l865: str R11, [sp, #-28]!
l866: mov R2, #12
l867: str R4, [sp], +R2
l868: mov R7, #36
l869: str R15, [sp, -R7]!
l870: str R5, [sp], #-16
l871: str R2, [sp], #+40
l872: str R1, [sp, #-32]!
l873: strPL R10, [sp, #+20]
l874: mov R5, #40
l875: str R3, [sp], +R5
l876: mov R2, #20
l877: str R10, [sp], +R2
l878: str R2, [sp], #-36
l879: mov R12, #8
l880: str R14, [sp, -R12]!
l881: str R1, [sp, #+36]!
l882: mov R0, #0
l883: str R2, [sp, +R0]
l884: strEQ R10, [sp, #-16]
l885: str R2, [sp, #-56]
l886: mov R12, #56
l887: str R11, [sp, -R12]!
l888: mov R8, #24
l889: str R7, [sp, +R8]!
l890: str R6, [sp], #+40
l891: mov R9, #44
l892: strGT R1, [sp, -R9]
l893: str R9, [sp, #-60]!
l894: str R5, [sp], #+4
l895: mov R5, #0
l896: str R4, [sp], +R5
l897: mov R6, #36
l898: str R3, [sp, +R6]!
l899: mov R11, #32
l900: str R9, [sp], -R11
l901: mov R9, #20
l902: str R3, [sp], +R9
l903: str R11, [sp], #+8
l904: mov R11, #20
l905: str R5, [sp], +R11
l906: str R6, [sp, #-20]!
l907: str R10, [sp, #+16]
l908: mov R12, #48
l909: str R15, [sp], -R12
l910: mov R3, #32
l911: str R2, [sp], +R3
l912: str R9, [sp], #+0
l913: mov R4, #28
l914: str R5, [sp, -R4]!
l915: mov R9, #40
l916: strPL R1, [sp, +R9]
l917: mov R14, #56
l918: str R12, [sp, +R14]!
l919: str R2, [sp, #+8]
l920: str R15, [sp, #+8]!
l921: str R1, [sp, #-8]
l922: str R6, [sp], #+4
l923: mov R3, #8
l924: str R10, [sp], -R3
l925: mov R0, #64
l926: str R8, [sp, -R0]
l927: mov R1, #4
l928: str R10, [sp, -R1]
l929: mov R4, #8
l930: strEQ R2, [sp, -R4]
l931: mov R8, #32
l932: str R0, [sp], -R8
l933: str R9, [sp], #-16
l934: strMI R8, [sp, #+4]
l935: str R6, [sp, #+52]
l936: str R9, [sp, #+8]!
l937: mov R2, #0
l938: str R1, [sp, +R2]!
l939: str R2, [sp, #+32]!
l940: mov R0, #48
l941: str R5, [sp, -R0]!
l942: str R3, [sp, #+8]!
l943: mov R5, #20
l944: str R6, [sp], -R5
l945: str R6, [sp], #+40
l946: mov R2, #36
l947: str R8, [sp], -R2
l948: mov R11, #4
l949: strCC R7, [sp, -R11]
l950: str R14, [sp, #+8]
l951: mov R1, #60
l952: strCS R14, [sp, +R1]
l953: mov R2, #4
l954: strGT R6, [sp, -R2]
l955: mov R6, #68
l956: str R1, [sp], +R6
l957: mov R8, #20
l958: str R4, [sp, -R8]!
l959: str R0, [sp, #+24]!
l960: str R5, [sp], #-56
l961: str R3, [sp], #+48
l962: mov R7, #56
l963: str R8, [sp, -R7]!
l964: mov R2, #4
l965: str R3, [sp, -R2]!
l966: str R8, [sp], #+32
l967: mov R10, #32
l968: str R2, [sp, -R10]
l969: mov R0, #16
l970: str R10, [sp, +R0]
l971: mov R1, #8
l972: strLE R15, [sp, -R1]
l973: mov R6, #36
l974: str R4, [sp, -R6]!
l975: mov R7, #48
l976: str R1, [sp, +R7]
l977: mov R4, #8
l978: str R3, [sp, +R4]!
l979: str R2, [sp, #+52]!
l980: mov R10, #64
l981: str R4, [sp], -R10
l982: str R10, [sp], #+60
l983: mov R9, #20
l984: str R1, [sp], -R9
l985: strVC R0, [sp, #-24]
l986: str R6, [sp, #-16]
l987: mov R12, #20
l988: str R6, [sp], +R12
l989: mov R6, #8
l990: str R14, [sp], -R6
l991: mov R6, #24
l992: str R6, [sp, +R6]!
l993: strGT R4, [sp, #-64]
l994: mov R0, #8
l995: str R6, [sp], -R0
l996: mov R10, #8
l997: str R14, [sp, -R10]!
l998: str R6, [sp, #-32]
l999: str R0, [sp, #-36]!
l1000: mov R5, #16
l1001: str R4, [sp, +R5]
end: b end

