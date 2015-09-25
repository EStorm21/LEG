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
val1: .word 1225433026
next1:ldr R2, val2
b next2
val2: .word 977805863
next2:ldr R3, val3
b next3
val3: .word 386192490
next3:ldr R4, val4
b next4
val4: .word 2611398086
next4:ldr R5, val5
b next5
val5: .word 1804557180
next5:ldr R6, val6
b next6
val6: .word 3183613697
next6:ldr R7, val7
b next7
val7: .word 3921891295
next7:ldr R8, val8
b next8
val8: .word 1542981044
next8:ldr R9, val9
b next9
val9: .word 2832023045
next9:ldr R10, val10
b next10
val10: .word 2603505080
next10:ldr R11, val11
b next11
val11: .word 795950814
next11:ldr R12, val12
b next12
val12: .word 1445138635
next12:ldr R14, val14
b next14
val14: .word 3382167697

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 4116907021
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 471265528
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 4228255817
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 584501359
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 1299940339
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 1113972574
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 1203757928
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 3408646037
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 1082554516
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 2112450674
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 2294228534
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 4137725076
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 2031098677
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 3962877502
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 4146460589
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 3347410304
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 2746055459
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 2957244805
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 3114289402
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 964851220
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 3505783536
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: ldr R9, [sp], #-36
l2: ldr R7, [sp], #-16
l3: mov R10, #32
l4: ldr R11, [sp, +R10]
l5: ldrMI R14, [sp, #+36]
l6: mov R14, #28
l7: ldr R2, [sp, +R14]!
l8: ldr R12, [sp, #+12]!
l9: ldr R1, [sp, #-64]
l10: mov R11, #24
l11: ldr R10, [sp], -R11
l12: mov R4, #8
l13: ldr R5, [sp], -R4
l14: mov R14, #24
l15: ldr R1, [sp], +R14
l16: mov R12, #8
l17: ldr R1, [sp], +R12
l18: ldr R6, [sp, #-48]
l19: ldr R5, [sp, #+0]!
l20: ldr R1, [sp], #-60
l21: ldrLE R7, [sp, #+64]
l22: mov R12, #16
l23: ldr R5, [sp, +R12]
l24: mov R5, #36
l25: ldr R10, [sp, +R5]!
l26: ldr R4, [sp, #-8]!
l27: ldr R0, [sp, #-4]!
l28: ldr R0, [sp, #-32]!
l29: mov R7, #0
l30: ldr R9, [sp, +R7]!
l31: ldr R6, [sp, #+48]!
l32: ldr R3, [sp, #+4]
l33: mov R1, #16
l34: ldrGE R1, [sp, -R1]
l35: ldr R4, [sp], #-12
l36: ldrEQ R8, [sp, #-20]
l37: ldr R9, [sp, #+40]!
l38: mov R14, #24
l39: ldr R5, [sp], -R14
l40: mov R7, #24
l41: ldrLE R6, [sp, -R7]
l42: mov R7, #48
l43: ldr R4, [sp], -R7
l44: mov R10, #4
l45: ldr R10, [sp, +R10]!
l46: mov R10, #52
l47: ldr R10, [sp], +R10
l48: ldr R0, [sp], #+0
l49: mov R1, #4
l50: ldr R11, [sp], +R1
l51: ldr R14, [sp, #-36]!
l52: mov R3, #32
l53: ldr R14, [sp, +R3]
l54: mov R1, #28
l55: ldr R5, [sp, -R1]!
l56: ldr R4, [sp, #+72]!
l57: mov R14, #8
l58: ldr R9, [sp, -R14]!
l59: mov R0, #52
l60: ldr R2, [sp, -R0]!
l61: ldrLS R10, [sp, #+36]
l62: ldr R2, [sp], #+0
l63: mov R6, #4
l64: ldrHI R3, [sp, +R6]
l65: ldr R4, [sp], #+64
l66: ldr R14, [sp, #-56]!
l67: ldr R3, [sp, #+44]!
l68: ldr R10, [sp, #+12]!
l69: mov R8, #40
l70: ldrPL R6, [sp, -R8]
l71: mov R7, #12
l72: ldr R3, [sp], -R7
l73: mov R2, #4
l74: ldrGT R11, [sp, +R2]
l75: mov R4, #36
l76: ldr R2, [sp, -R4]!
l77: mov R4, #20
l78: ldrVC R0, [sp, -R4]
l79: ldrHI R12, [sp, #+36]
l80: mov R1, #40
l81: ldr R14, [sp], +R1
l82: ldr R6, [sp], #+0
l83: mov R12, #20
l84: ldr R6, [sp], -R12
l85: mov R1, #28
l86: ldr R11, [sp, +R1]!
l87: ldr R10, [sp], #-72
l88: ldr R5, [sp], #+8
l89: mov R6, #32
l90: ldr R11, [sp, +R6]!
l91: ldr R2, [sp, #-16]!
l92: mov R7, #44
l93: ldrCC R8, [sp, +R7]
l94: ldr R4, [sp], #+36
l95: ldr R2, [sp, #+4]!
l96: ldr R12, [sp], #-12
l97: ldr R11, [sp, #-8]!
l98: mov R0, #36
l99: ldrHI R0, [sp, -R0]
l100: mov R2, #48
l101: ldr R2, [sp], -R2
l102: ldrPL R9, [sp, #+60]
l103: ldr R4, [sp], #+44
l104: ldr R6, [sp, #+0]!
l105: ldr R4, [sp], #-32
l106: ldr R7, [sp], #+56
l107: mov R14, #8
l108: ldrMI R3, [sp, +R14]
l109: ldrHI R7, [sp, #+8]
l110: mov R5, #40
l111: ldr R4, [sp], -R5
l112: mov R10, #12
l113: ldr R9, [sp], -R10
l114: mov R0, #56
l115: ldrGE R12, [sp, +R0]
l116: ldr R1, [sp, #+4]!
l117: ldr R0, [sp], #-16
l118: ldrGT R4, [sp, #+8]
l119: ldr R2, [sp, #+20]
l120: ldr R1, [sp], #+68
l121: ldr R8, [sp], #-72
l122: ldrGE R2, [sp, #+12]
l123: mov R1, #4
l124: ldrPL R11, [sp, +R1]
l125: mov R9, #4
l126: ldr R9, [sp], +R9
l127: ldr R7, [sp], #+44
l128: ldr R14, [sp, #-28]!
l129: ldr R3, [sp, #+40]!
l130: ldr R5, [sp, #-32]!
l131: ldr R10, [sp], #+40
l132: mov R9, #24
l133: ldr R11, [sp, -R9]!
l134: mov R12, #12
l135: ldr R4, [sp, -R12]
l136: mov R10, #8
l137: ldr R11, [sp, +R10]
l138: mov R10, #36
l139: ldr R0, [sp], -R10
l140: ldrVC R14, [sp, #+12]
l141: ldrVC R5, [sp, #+52]
l142: mov R12, #0
l143: ldr R5, [sp], +R12
l144: ldr R12, [sp, #+64]!
l145: mov R6, #64
l146: ldr R14, [sp, -R6]!
l147: mov R11, #36
l148: ldrVC R4, [sp, +R11]
l149: ldr R12, [sp, #+40]!
l150: mov R7, #36
l151: ldr R4, [sp], -R7
l152: mov R14, #60
l153: ldr R2, [sp], +R14
l154: mov R8, #12
l155: ldr R2, [sp, -R8]!
l156: ldr R7, [sp], #-4
l157: ldr R0, [sp], #-16
l158: ldr R9, [sp], #+28
l159: ldr R10, [sp, #-24]
l160: mov R10, #64
l161: ldrHI R6, [sp, -R10]
l162: mov R0, #12
l163: ldr R4, [sp], -R0
l164: mov R10, #44
l165: ldr R0, [sp, -R10]!
l166: ldrCS R3, [sp, #+64]
l167: mov R8, #52
l168: ldr R6, [sp], +R8
l169: mov R7, #0
l170: ldr R5, [sp, +R7]!
l171: mov R2, #28
l172: ldrPL R9, [sp, -R2]
l173: mov R10, #0
l174: ldr R11, [sp, +R10]!
l175: ldrHI R7, [sp, #-36]
l176: mov R6, #4
l177: ldr R10, [sp], +R6
l178: mov R5, #12
l179: ldrLS R14, [sp, -R5]
l180: mov R12, #44
l181: ldr R3, [sp, -R12]!
l182: ldr R11, [sp], #+32
l183: mov R11, #48
l184: ldr R10, [sp], -R11
l185: mov R7, #32
l186: ldr R6, [sp, +R7]
l187: ldrCC R8, [sp, #+20]
l188: ldr R5, [sp, #+20]
l189: ldr R1, [sp], #+24
l190: ldr R1, [sp], #+44
l191: ldr R7, [sp], #-76
l192: mov R5, #20
l193: ldr R7, [sp], +R5
l194: mov R0, #32
l195: ldr R8, [sp], +R0
l196: ldr R10, [sp, #-16]
l197: mov R2, #36
l198: ldr R12, [sp, -R2]!
l199: ldr R7, [sp, #+20]!
l200: ldr R11, [sp, #+28]!
l201: ldr R6, [sp, #+4]!
l202: mov R0, #52
l203: ldrCC R1, [sp, -R0]
l204: mov R8, #4
l205: ldr R6, [sp], +R8
l206: mov R1, #16
l207: ldrLE R14, [sp, -R1]
l208: mov R10, #60
l209: ldr R5, [sp, -R10]!
l210: mov R12, #36
l211: ldr R6, [sp, +R12]
l212: mov R14, #16
l213: ldr R14, [sp, +R14]!
l214: mov R10, #8
l215: ldr R2, [sp, +R10]!
l216: mov R12, #20
l217: ldr R3, [sp, -R12]!
l218: mov R12, #16
l219: ldr R1, [sp], +R12
l220: mov R1, #0
l221: ldrMI R1, [sp, +R1]
l222: mov R3, #4
l223: ldr R0, [sp], +R3
l224: mov R1, #20
l225: ldr R14, [sp, +R1]!
l226: ldr R3, [sp], #-52
l227: mov R9, #64
l228: ldr R1, [sp, +R9]!
l229: mov R8, #44
l230: ldrVS R9, [sp, -R8]
l231: mov R2, #56
l232: ldr R8, [sp], -R2
l233: ldrCS R9, [sp, #+44]
l234: mov R6, #4
l235: ldrMI R5, [sp, +R6]
l236: ldr R3, [sp], #+16
l237: mov R6, #28
l238: ldr R7, [sp, +R6]!
l239: ldr R12, [sp], #+0
l240: mov R8, #28
l241: ldrVC R9, [sp, -R8]
l242: ldr R10, [sp], #-28
l243: ldr R7, [sp, #+20]
l244: mov R11, #16
l245: ldr R14, [sp, -R11]!
l246: mov R10, #12
l247: ldr R14, [sp], -R10
l248: mov R5, #32
l249: ldr R6, [sp, +R5]!
l250: ldr R8, [sp], #-24
l251: mov R5, #12
l252: ldr R1, [sp], +R5
l253: mov R8, #4
l254: ldr R6, [sp, +R8]!
l255: ldr R6, [sp], #+0
l256: mov R6, #52
l257: ldr R10, [sp], +R6
l258: ldr R12, [sp, #-28]!
l259: mov R1, #12
l260: ldr R10, [sp, +R1]!
l261: mov R14, #48
l262: ldr R3, [sp], -R14
l263: ldrVC R3, [sp, #+4]
l264: mov R14, #48
l265: ldr R0, [sp], +R14
l266: mov R4, #20
l267: ldr R11, [sp, -R4]!
l268: ldr R0, [sp], #+4
l269: mov R6, #40
l270: ldr R3, [sp, -R6]
l271: mov R7, #16
l272: ldr R12, [sp], -R7
l273: mov R5, #16
l274: ldr R12, [sp, -R5]!
l275: ldr R1, [sp, #+0]!
l276: mov R5, #56
l277: ldr R4, [sp, +R5]
l278: mov R10, #4
l279: ldr R10, [sp, -R10]!
l280: ldrHI R10, [sp, #+56]
l281: ldrLS R14, [sp, #+68]
l282: mov R9, #28
l283: ldr R8, [sp, +R9]
l284: ldr R3, [sp, #+40]!
l285: ldrCS R5, [sp, #-36]
l286: ldr R10, [sp], #-16
l287: ldrVC R4, [sp, #+8]
l288: ldr R2, [sp], #+8
l289: ldrLE R0, [sp, #-20]
l290: mov R11, #20
l291: ldr R0, [sp], +R11
l292: mov R3, #60
l293: ldr R1, [sp, -R3]!
l294: mov R6, #8
l295: ldrEQ R3, [sp, +R6]
l296: ldr R4, [sp, #+16]!
l297: ldr R7, [sp, #+52]!
l298: ldr R3, [sp], #+8
l299: ldrEQ R0, [sp, #-20]
l300: ldr R10, [sp], #-28
l301: ldr R6, [sp, #+4]!
l302: mov R0, #24
l303: ldr R14, [sp], +R0
l304: ldr R8, [sp], #-8
l305: mov R6, #20
l306: ldr R0, [sp], -R6
l307: ldr R10, [sp, #-28]
l308: ldr R2, [sp], #+8
l309: mov R9, #12
l310: ldr R12, [sp, +R9]
l311: mov R12, #56
l312: ldr R12, [sp], -R12
l313: ldr R8, [sp], #+64
l314: mov R11, #36
l315: ldrNE R9, [sp, -R11]
l316: mov R7, #56
l317: ldr R4, [sp], -R7
l318: mov R10, #64
l319: ldr R5, [sp, +R10]!
l320: ldr R7, [sp, #-32]!
l321: mov R0, #28
l322: ldr R7, [sp, -R0]!
l323: ldr R10, [sp], #+64
l324: ldr R6, [sp, #-32]!
l325: ldr R9, [sp], #-4
l326: mov R10, #8
l327: ldrMI R3, [sp, +R10]
l328: mov R1, #12
l329: ldr R2, [sp], +R1
l330: mov R3, #48
l331: ldr R3, [sp], -R3
l332: ldr R7, [sp, #+4]!
l333: mov R4, #36
l334: ldr R14, [sp, +R4]!
l335: ldr R10, [sp, #+4]!
l336: mov R9, #20
l337: ldr R10, [sp, +R9]
l338: mov R9, #4
l339: ldr R11, [sp], +R9
l340: mov R0, #28
l341: ldr R8, [sp], -R0
l342: mov R7, #40
l343: ldr R1, [sp, +R7]
l344: ldr R1, [sp, #+12]
l345: ldr R9, [sp, #+40]
l346: mov R9, #20
l347: ldr R14, [sp, -R9]!
l348: ldr R3, [sp], #+64
l349: ldrLE R6, [sp, #-12]
l350: mov R9, #44
l351: ldr R10, [sp], -R9
l352: mov R2, #36
l353: ldr R1, [sp, +R2]!
l354: mov R8, #60
l355: ldr R4, [sp, -R8]!
l356: ldr R7, [sp], #+20
l357: ldr R10, [sp, #+20]
l358: ldr R9, [sp], #+52
l359: mov R9, #4
l360: ldr R2, [sp, -R9]
l361: mov R2, #32
l362: ldr R0, [sp], -R2
l363: mov R7, #8
l364: ldr R6, [sp, -R7]!
l365: ldr R1, [sp], #+36
l366: mov R9, #20
l367: ldr R10, [sp], -R9
l368: ldr R0, [sp, #+20]!
l369: mov R1, #48
l370: ldr R10, [sp, -R1]!
l371: mov R10, #16
l372: ldr R9, [sp, +R10]!
l373: ldr R12, [sp, #+16]
l374: mov R12, #36
l375: ldr R6, [sp, -R12]!
l376: mov R5, #44
l377: ldr R5, [sp], +R5
l378: ldr R8, [sp, #-12]!
l379: mov R4, #32
l380: ldr R3, [sp, -R4]!
l381: mov R0, #56
l382: ldr R8, [sp], +R0
l383: ldr R8, [sp, #-24]
l384: ldr R1, [sp], #-28
l385: mov R7, #20
l386: ldr R14, [sp, -R7]!
l387: mov R6, #52
l388: ldr R7, [sp, +R6]!
l389: mov R12, #16
l390: ldr R5, [sp, +R12]!
l391: ldrGE R8, [sp, #-12]
l392: mov R4, #0
l393: ldrLS R7, [sp, +R4]
l394: mov R11, #4
l395: ldr R7, [sp], -R11
l396: ldrLT R3, [sp, #-40]
l397: ldr R8, [sp], #-64
l398: mov R10, #24
l399: ldr R12, [sp, +R10]!
l400: mov R5, #4
l401: ldr R2, [sp], -R5
l402: mov R3, #44
l403: ldr R1, [sp, +R3]!
l404: mov R2, #56
l405: ldr R0, [sp, -R2]
l406: mov R1, #28
l407: ldr R0, [sp, -R1]
l408: ldr R9, [sp, #-12]
l409: mov R11, #8
l410: ldrVC R6, [sp, -R11]
l411: mov R6, #72
l412: ldrNE R0, [sp, -R6]
l413: ldr R1, [sp], #-48
l414: mov R4, #48
l415: ldr R14, [sp, +R4]
l416: ldrEQ R10, [sp, #+24]
l417: mov R2, #20
l418: ldr R10, [sp, +R2]!
l419: mov R12, #40
l420: ldr R10, [sp, -R12]!
l421: mov R5, #48
l422: ldr R14, [sp, +R5]!
l423: mov R5, #12
l424: ldr R1, [sp, -R5]!
l425: mov R9, #12
l426: ldr R0, [sp, +R9]!
l427: mov R8, #20
l428: ldr R1, [sp], +R8
l429: mov R4, #52
l430: ldr R5, [sp, -R4]
l431: mov R14, #52
l432: ldr R9, [sp], -R14
l433: mov R8, #40
l434: ldr R4, [sp], +R8
l435: mov R6, #48
l436: ldr R8, [sp, -R6]!
l437: ldr R14, [sp, #+16]!
l438: mov R9, #20
l439: ldrEQ R0, [sp, +R9]
l440: mov R8, #4
l441: ldr R4, [sp, -R8]
l442: ldr R2, [sp, #-4]
l443: mov R3, #48
l444: ldr R3, [sp], +R3
l445: ldr R10, [sp, #-64]!
l446: ldr R12, [sp, #+4]!
l447: ldr R8, [sp], #+44
l448: mov R0, #8
l449: ldrNE R14, [sp, -R0]
l450: ldr R6, [sp, #-32]
l451: ldr R3, [sp], #-28
l452: ldr R9, [sp, #-24]!
l453: ldr R2, [sp, #+64]!
l454: ldr R12, [sp, #-32]!
l455: ldr R10, [sp, #-8]!
l456: mov R6, #4
l457: ldr R9, [sp, -R6]!
l458: ldr R7, [sp], #+32
l459: mov R4, #12
l460: ldr R4, [sp, +R4]!
l461: mov R5, #64
l462: ldr R8, [sp], -R5
l463: mov R8, #60
l464: ldrVS R6, [sp, +R8]
l465: mov R9, #16
l466: ldr R10, [sp, +R9]!
l467: ldr R12, [sp, #+40]!
l468: mov R5, #4
l469: ldr R8, [sp], -R5
l470: mov R1, #12
l471: ldr R1, [sp, +R1]!
l472: ldr R3, [sp], #-12
l473: mov R1, #12
l474: ldrLS R1, [sp, -R1]
l475: mov R1, #32
l476: ldr R6, [sp, -R1]!
l477: mov R8, #12
l478: ldr R0, [sp, -R8]
l479: ldr R8, [sp, #-24]!
l480: mov R8, #8
l481: ldrHI R2, [sp, +R8]
l482: ldr R7, [sp], #+20
l483: ldr R7, [sp, #-8]
l484: mov R9, #24
l485: ldr R12, [sp, -R9]!
l486: ldr R7, [sp, #+20]!
l487: mov R11, #36
l488: ldr R12, [sp, +R11]!
l489: ldrMI R9, [sp, #-4]
l490: mov R11, #16
l491: ldr R9, [sp], +R11
l492: ldr R10, [sp], #-68
l493: mov R12, #12
l494: ldr R1, [sp, +R12]!
l495: mov R2, #12
l496: ldrHI R7, [sp, +R2]
l497: ldr R14, [sp, #+44]
l498: mov R0, #8
l499: ldr R5, [sp, -R0]!
l500: mov R0, #8
l501: ldr R1, [sp], +R0
l502: ldr R2, [sp], #-8
l503: mov R3, #48
l504: ldr R3, [sp], +R3
l505: ldrVC R0, [sp, #-12]
l506: ldr R0, [sp], #+20
l507: mov R11, #44
l508: ldrLT R1, [sp, -R11]
l509: ldrLT R0, [sp, #-12]
l510: mov R4, #52
l511: ldr R11, [sp], -R4
l512: mov R0, #16
l513: ldrCS R8, [sp, +R0]
l514: ldr R0, [sp, #+4]!
l515: ldr R7, [sp, #+8]
l516: mov R4, #28
l517: ldrGE R8, [sp, +R4]
l518: ldr R12, [sp, #+8]!
l519: ldr R4, [sp, #+36]
l520: ldr R9, [sp], #+32
l521: mov R5, #60
l522: ldr R3, [sp], -R5
l523: mov R7, #48
l524: ldr R5, [sp, +R7]
l525: mov R1, #40
l526: ldr R9, [sp, +R1]!
l527: ldr R7, [sp, #+12]!
l528: mov R10, #12
l529: ldr R4, [sp], +R10
l530: ldr R5, [sp, #-28]!
l531: ldr R0, [sp, #-20]
l532: ldr R5, [sp], #+0
l533: mov R5, #4
l534: ldr R0, [sp, -R5]!
l535: mov R6, #20
l536: ldr R7, [sp, -R6]!
l537: mov R9, #24
l538: ldr R14, [sp], +R9
l539: ldr R8, [sp, #+28]!
l540: mov R2, #40
l541: ldr R9, [sp], -R2
l542: mov R10, #32
l543: ldrLT R1, [sp, +R10]
l544: mov R12, #16
l545: ldrHI R2, [sp, -R12]
l546: mov R3, #20
l547: ldrEQ R1, [sp, -R3]
l548: ldr R0, [sp, #+24]!
l549: mov R11, #48
l550: ldr R5, [sp], -R11
l551: mov R12, #44
l552: ldr R4, [sp, +R12]!
l553: ldr R12, [sp], #-40
l554: ldr R1, [sp], #+20
l555: mov R2, #20
l556: ldr R11, [sp, +R2]!
l557: ldr R12, [sp, #+12]!
l558: ldrCS R7, [sp, #+8]
l559: ldr R14, [sp], #-40
l560: mov R3, #36
l561: ldr R10, [sp, +R3]
l562: mov R2, #12
l563: ldr R1, [sp, -R2]
l564: mov R11, #8
l565: ldrVC R7, [sp, +R11]
l566: ldr R9, [sp], #+48
l567: mov R11, #56
l568: ldrLE R5, [sp, -R11]
l569: mov R9, #12
l570: ldr R1, [sp, -R9]!
l571: mov R10, #20
l572: ldr R0, [sp], -R10
l573: mov R3, #40
l574: ldr R8, [sp, -R3]
l575: mov R3, #32
l576: ldr R4, [sp, +R3]!
l577: ldr R10, [sp], #-12
l578: ldr R10, [sp, #-12]!
l579: ldrCC R5, [sp, #+12]
l580: mov R4, #28
l581: ldr R14, [sp, -R4]!
l582: ldrCS R8, [sp, #+0]
l583: ldrCC R6, [sp, #+12]
l584: mov R11, #12
l585: ldr R2, [sp, +R11]
l586: ldr R6, [sp], #+32
l587: ldrLT R6, [sp, #+16]
l588: ldrGE R14, [sp, #-16]
l589: mov R14, #12
l590: ldr R2, [sp, -R14]
l591: mov R0, #8
l592: ldr R14, [sp, -R0]!
l593: ldr R14, [sp, #-4]!
l594: mov R3, #4
l595: ldr R6, [sp], +R3
l596: mov R3, #8
l597: ldr R4, [sp], +R3
l598: mov R8, #8
l599: ldrLE R1, [sp, +R8]
l600: ldr R9, [sp], #-4
l601: ldrNE R14, [sp, #-32]
l602: mov R11, #24
l603: ldr R5, [sp, +R11]
l604: mov R8, #20
l605: ldrHI R5, [sp, +R8]
l606: ldr R7, [sp, #+24]!
l607: ldr R12, [sp], #+4
l608: ldrHI R8, [sp, #-44]
l609: ldr R6, [sp, #-36]
l610: mov R14, #16
l611: ldr R9, [sp, -R14]!
l612: ldr R1, [sp], #-28
l613: mov R6, #24
l614: ldr R2, [sp, -R6]
l615: mov R9, #8
l616: ldr R12, [sp, -R9]!
l617: mov R3, #16
l618: ldr R9, [sp, +R3]!
l619: mov R6, #4
l620: ldr R10, [sp], -R6
l621: mov R11, #16
l622: ldr R6, [sp, +R11]
l623: ldr R0, [sp, #-32]!
l624: mov R10, #36
l625: ldr R11, [sp, +R10]!
l626: ldr R11, [sp, #+0]!
l627: mov R5, #24
l628: ldr R0, [sp], +R5
l629: ldr R12, [sp, #-16]!
l630: mov R1, #20
l631: ldr R7, [sp], +R1
l632: ldr R0, [sp, #-44]
l633: ldr R10, [sp, #-28]
l634: mov R12, #44
l635: ldrLT R11, [sp, -R12]
l636: mov R10, #48
l637: ldr R11, [sp, -R10]
l638: mov R11, #60
l639: ldr R12, [sp, -R11]
l640: ldr R5, [sp, #-16]
l641: mov R6, #12
l642: ldr R14, [sp], -R6
l643: ldr R4, [sp, #-24]!
l644: mov R12, #12
l645: ldrPL R6, [sp, +R12]
l646: ldr R4, [sp], #+8
l647: mov R1, #8
l648: ldr R14, [sp, -R1]!
l649: mov R1, #8
l650: ldrGE R11, [sp, -R1]
l651: mov R14, #16
l652: ldr R14, [sp, -R14]
l653: ldr R5, [sp], #-32
l654: mov R5, #8
l655: ldrLT R12, [sp, +R5]
l656: ldr R9, [sp, #+56]
l657: mov R8, #20
l658: ldr R11, [sp, +R8]
l659: ldr R10, [sp, #+72]!
l660: ldr R4, [sp, #-60]!
l661: ldr R11, [sp], #-12
l662: mov R10, #12
l663: ldrPL R3, [sp, +R10]
l664: ldr R12, [sp, #+0]!
l665: ldr R6, [sp], #+8
l666: mov R10, #48
l667: ldr R7, [sp, +R10]
l668: ldr R0, [sp], #+60
l669: ldrGE R3, [sp, #-68]
l670: mov R9, #20
l671: ldr R7, [sp, -R9]!
l672: mov R8, #44
l673: ldr R2, [sp, -R8]
l674: mov R11, #8
l675: ldr R4, [sp, -R11]!
l676: mov R5, #32
l677: ldr R2, [sp, -R5]!
l678: ldr R1, [sp, #+36]
l679: ldr R9, [sp, #+60]!
l680: ldr R10, [sp, #-60]!
l681: mov R4, #36
l682: ldr R14, [sp, +R4]!
l683: ldr R10, [sp, #-44]!
l684: ldr R11, [sp, #+40]!
l685: mov R12, #8
l686: ldr R0, [sp, -R12]!
l687: ldr R5, [sp], #-8
l688: ldr R3, [sp, #+8]
l689: ldrVC R14, [sp, #+24]
l690: ldrVC R9, [sp, #-12]
l691: ldr R1, [sp], #-16
l692: ldr R14, [sp], #+68
l693: ldr R2, [sp, #-16]!
l694: ldrGE R2, [sp, #-32]
l695: ldr R2, [sp, #-56]!
l696: mov R8, #28
l697: ldr R12, [sp, +R8]!
l698: ldr R2, [sp], #-32
l699: ldr R8, [sp], #+64
l700: ldr R1, [sp], #-48
l701: ldr R12, [sp], #+60
l702: mov R10, #4
l703: ldrGT R12, [sp, -R10]
l704: ldr R11, [sp, #-72]
l705: ldr R8, [sp, #-8]!
l706: mov R12, #60
l707: ldr R7, [sp], -R12
l708: ldr R1, [sp, #+8]!
l709: mov R0, #48
l710: ldr R11, [sp], +R0
l711: mov R14, #12
l712: ldr R4, [sp, +R14]!
l713: mov R14, #68
l714: ldr R10, [sp, -R14]
l715: ldr R3, [sp], #-76
l716: ldr R3, [sp, #+40]!
l717: ldr R4, [sp], #-32
l718: mov R11, #48
l719: ldrGT R9, [sp, +R11]
l720: ldr R3, [sp, #+64]!
l721: mov R5, #68
l722: ldr R4, [sp, -R5]!
l723: ldr R5, [sp, #+24]!
l724: ldr R2, [sp, #-28]!
l725: mov R4, #0
l726: ldr R4, [sp, +R4]
l727: mov R10, #24
l728: ldr R2, [sp], +R10
l729: ldr R2, [sp, #+16]!
l730: ldrVS R6, [sp, #+28]
l731: ldr R0, [sp], #-36
l732: mov R6, #44
l733: ldr R1, [sp, +R6]!
l734: ldr R6, [sp, #-16]
l735: ldr R9, [sp, #-8]!
l736: mov R12, #32
l737: ldr R4, [sp], -R12
l738: ldr R12, [sp], #+16
l739: ldrGT R2, [sp, #-4]
l740: mov R9, #24
l741: ldr R6, [sp], +R9
l742: ldr R3, [sp], #+24
l743: mov R8, #20
l744: ldrLT R9, [sp, -R8]
l745: ldr R2, [sp, #-68]!
l746: ldr R3, [sp, #+48]!
l747: mov R3, #48
l748: ldr R6, [sp], -R3
l749: ldrHI R14, [sp, #+36]
l750: mov R4, #20
l751: ldr R9, [sp, +R4]!
l752: ldr R11, [sp, #+32]!
l753: ldr R6, [sp, #-24]!
l754: ldr R12, [sp, #+24]!
l755: ldr R8, [sp, #-48]
l756: ldr R0, [sp], #-12
l757: mov R8, #36
l758: ldr R7, [sp, -R8]!
l759: mov R4, #4
l760: ldrHI R12, [sp, +R4]
l761: mov R9, #20
l762: ldr R5, [sp, +R9]!
l763: mov R12, #20
l764: ldr R0, [sp, +R12]!
l765: ldr R7, [sp], #-28
l766: ldrCS R0, [sp, #+0]
l767: mov R2, #0
l768: ldr R8, [sp, +R2]!
l769: mov R1, #8
l770: ldr R1, [sp, +R1]
l771: ldr R9, [sp], #+24
l772: ldr R12, [sp], #+16
l773: ldr R7, [sp, #-44]!
l774: mov R11, #16
l775: ldr R11, [sp, -R11]!
l776: ldrCS R14, [sp, #+20]
l777: ldr R10, [sp, #+16]!
l778: mov R0, #16
l779: ldrLT R14, [sp, -R0]
l780: ldrCS R8, [sp, #+40]
l781: ldr R8, [sp, #+28]!
l782: mov R10, #36
l783: ldr R2, [sp], -R10
l784: mov R7, #28
l785: ldr R5, [sp], +R7
l786: mov R10, #28
l787: ldr R0, [sp, -R10]!
l788: ldr R1, [sp], #-4
l789: ldr R10, [sp], #-4
l790: mov R7, #8
l791: ldr R7, [sp], +R7
l792: ldr R7, [sp, #+0]!
l793: mov R0, #68
l794: ldr R4, [sp, +R0]!
l795: ldrCS R11, [sp, #-16]
l796: mov R6, #24
l797: ldrLT R0, [sp, -R6]
l798: ldr R11, [sp, #-12]
l799: ldr R3, [sp, #-12]!
l800: ldr R9, [sp, #-36]!
l801: mov R6, #16
l802: ldr R7, [sp, -R6]!
l803: mov R11, #32
l804: ldr R0, [sp], +R11
l805: ldr R5, [sp, #+20]!
l806: mov R14, #4
l807: ldr R2, [sp, -R14]!
l808: ldr R4, [sp, #-48]!
l809: ldrCS R5, [sp, #+60]
l810: ldr R10, [sp, #+64]!
l811: mov R8, #8
l812: ldrLS R3, [sp, -R8]
l813: ldrGE R10, [sp, #-44]
l814: mov R14, #8
l815: ldr R12, [sp], -R14
l816: mov R2, #24
l817: ldr R0, [sp], -R2
l818: mov R9, #20
l819: ldrVS R9, [sp, +R9]
l820: ldr R0, [sp], #+20
l821: mov R4, #28
l822: ldr R3, [sp, -R4]!
l823: mov R5, #12
l824: ldrNE R12, [sp, -R5]
l825: mov R6, #32
l826: ldr R6, [sp, -R6]!
l827: mov R14, #4
l828: ldr R8, [sp], +R14
l829: mov R11, #12
l830: ldr R6, [sp], +R11
l831: ldrLT R9, [sp, #+40]
l832: mov R4, #24
l833: ldr R4, [sp, +R4]
l834: mov R12, #24
l835: ldr R4, [sp], +R12
l836: ldr R14, [sp, #-12]!
l837: ldr R10, [sp, #+28]!
l838: ldr R3, [sp, #-4]
l839: ldr R0, [sp], #+12
l840: ldrCS R2, [sp, #-36]
l841: mov R0, #44
l842: ldr R0, [sp], -R0
l843: mov R7, #0
l844: ldr R0, [sp, +R7]!
l845: mov R11, #12
l846: ldr R5, [sp, -R11]!
l847: mov R14, #16
l848: ldrLS R8, [sp, -R14]
l849: ldr R9, [sp], #+24
l850: ldr R8, [sp], #-28
l851: ldr R4, [sp], #+12
l852: mov R3, #12
l853: ldr R12, [sp, +R3]!
l854: ldr R10, [sp], #-16
l855: mov R8, #24
l856: ldr R14, [sp], +R8
l857: mov R10, #32
l858: ldr R2, [sp], -R10
l859: mov R14, #4
l860: ldr R4, [sp], +R14
l861: ldr R5, [sp, #+0]
l862: ldr R2, [sp, #+4]
l863: ldr R5, [sp, #+12]!
l864: ldr R3, [sp, #+44]!
l865: mov R6, #40
l866: ldr R12, [sp], -R6
l867: mov R12, #16
l868: ldr R9, [sp], +R12
l869: mov R5, #8
l870: ldr R12, [sp, +R5]
l871: mov R5, #28
l872: ldr R8, [sp, +R5]!
l873: mov R12, #4
l874: ldr R14, [sp, -R12]!
l875: mov R8, #56
l876: ldrLE R1, [sp, -R8]
l877: mov R10, #8
l878: ldr R0, [sp, -R10]!
l879: ldr R10, [sp, #-20]!
l880: ldr R11, [sp, #-16]
l881: mov R2, #28
l882: ldr R5, [sp, +R2]
l883: mov R14, #8
l884: ldr R6, [sp, -R14]!
l885: ldr R5, [sp, #-16]!
l886: mov R14, #52
l887: ldr R10, [sp, +R14]!
l888: mov R5, #0
l889: ldr R14, [sp], +R5
l890: mov R11, #20
l891: ldrLE R3, [sp, -R11]
l892: mov R2, #44
l893: ldr R11, [sp], -R2
l894: ldrEQ R5, [sp, #+28]
l895: ldr R3, [sp], #+44
l896: ldrLS R4, [sp, #-48]
l897: ldrVC R12, [sp, #-20]
l898: mov R12, #24
l899: ldr R5, [sp, -R12]!
l900: ldr R10, [sp, #-24]!
l901: mov R6, #20
l902: ldr R11, [sp, +R6]!
l903: ldr R2, [sp, #-12]!
l904: ldrCC R3, [sp, #+24]
l905: ldr R7, [sp], #+24
l906: ldr R6, [sp], #-16
l907: ldr R1, [sp], #-40
l908: ldrVC R8, [sp, #+44]
l909: ldrCC R11, [sp, #+4]
l910: mov R3, #8
l911: ldr R5, [sp, +R3]!
l912: mov R5, #0
l913: ldr R5, [sp], +R5
l914: mov R8, #64
l915: ldr R10, [sp, +R8]!
l916: ldr R7, [sp, #+4]!
l917: ldr R3, [sp], #-76
l918: mov R10, #16
l919: ldr R5, [sp], +R10
l920: ldr R7, [sp, #+52]
l921: ldr R4, [sp], #+8
l922: ldr R1, [sp, #-4]!
l923: mov R8, #20
l924: ldr R7, [sp, +R8]!
l925: ldr R11, [sp, #+16]!
l926: mov R3, #20
l927: ldr R9, [sp, -R3]!
l928: mov R14, #8
l929: ldr R11, [sp, +R14]!
l930: ldr R5, [sp, #+28]!
l931: ldr R14, [sp], #-20
l932: ldrPL R4, [sp, #-32]
l933: mov R1, #4
l934: ldr R4, [sp, -R1]!
l935: ldr R3, [sp, #+4]!
l936: mov R10, #12
l937: ldr R7, [sp], +R10
l938: mov R11, #36
l939: ldr R0, [sp], -R11
l940: ldr R5, [sp, #+36]
l941: ldr R4, [sp, #-20]!
l942: ldrGE R6, [sp, #+12]
l943: mov R2, #44
l944: ldr R5, [sp, +R2]!
l945: mov R7, #36
l946: ldr R3, [sp, -R7]
l947: mov R0, #20
l948: ldr R2, [sp, -R0]!
l949: mov R6, #28
l950: ldrVC R2, [sp, +R6]
l951: mov R12, #44
l952: ldr R10, [sp, +R12]!
l953: mov R3, #24
l954: ldrEQ R6, [sp, -R3]
l955: mov R10, #48
l956: ldr R8, [sp], -R10
l957: ldr R10, [sp, #-12]!
l958: mov R4, #28
l959: ldr R9, [sp, +R4]
l960: ldr R4, [sp, #+48]!
l961: mov R12, #4
l962: ldr R1, [sp], +R12
l963: mov R7, #44
l964: ldr R12, [sp, -R7]!
l965: mov R8, #16
l966: ldr R9, [sp], +R8
l967: ldrGE R0, [sp, #+4]
l968: ldr R2, [sp, #-36]!
l969: mov R6, #60
l970: ldr R3, [sp, +R6]!
l971: ldr R12, [sp], #-12
l972: mov R2, #4
l973: ldrLT R4, [sp, +R2]
l974: mov R9, #28
l975: ldr R14, [sp, -R9]!
l976: mov R14, #48
l977: ldrNE R2, [sp, +R14]
l978: mov R10, #52
l979: ldr R11, [sp], +R10
l980: ldr R10, [sp, #-64]!
l981: mov R6, #64
l982: ldr R14, [sp, +R6]!
l983: mov R5, #8
l984: ldr R6, [sp], -R5
l985: mov R3, #60
l986: ldr R0, [sp, -R3]
l987: mov R14, #32
l988: ldr R7, [sp, -R14]!
l989: ldr R7, [sp], #+12
l990: ldr R3, [sp, #+20]!
l991: mov R4, #40
l992: ldr R10, [sp, -R4]!
l993: mov R5, #4
l994: ldrEQ R14, [sp, -R5]
l995: mov R12, #44
l996: ldr R0, [sp, +R12]!
l997: mov R3, #4
l998: ldr R0, [sp, -R3]!
l999: mov R0, #48
l1000: ldr R5, [sp, -R0]
end: b end

