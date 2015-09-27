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
val1: .word 1924998654
next1:ldr R2, val2
b next2
val2: .word 1422890709
next2:ldr R3, val3
b next3
val3: .word 3479909426
next3:ldr R4, val4
b next4
val4: .word 3243437886
next4:ldr R5, val5
b next5
val5: .word 497714719
next5:ldr R6, val6
b next6
val6: .word 1306046455
next6:ldr R7, val7
b next7
val7: .word 3833234124
next7:ldr R8, val8
b next8
val8: .word 3829413547
next8:ldr R9, val9
b next9
val9: .word 2633777873
next9:ldr R10, val10
b next10
val10: .word 3937994054
next10:ldr R11, val11
b next11
val11: .word 965198937
next11:ldr R12, val12
b next12
val12: .word 784063532
next12:ldr R14, val14
b next14
val14: .word 1221684294

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 3999343192
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 4180675404
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 2631333450
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 345381911
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 44278069
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 4174668080
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 370494368
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 2603361532
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3259449381
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 376153212
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 220331221
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 1862010920
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 3664686629
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 2333407142
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 3732210619
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 4109854344
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 2674810653
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 1708641498
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 157023436
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 321936194
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 2922001033
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: ldr R0, [sp], #-75
l2: mov R8, #27
l3: str R15, [sp, +R8]!
l4: mov R2, #28
l5: str R9, [sp], -R2
l6: mov R2, #62
l7: ldr R7, [sp, +R2]
l8: strVS R2, [sp, #-4]
l9: mov R5, #59
l10: ldr R7, [sp], +R5
l11: mov R12, #57
l12: ldr R0, [sp, -R12]!
l13: str R9, [sp], #+66
l14: ldr R5, [sp, #-28]!
l15: strGT R7, [sp, #-32]
l16: mov R12, #24
l17: str R14, [sp], +R12
l18: mov R9, #33
l19: ldr R2, [sp, -R9]!
l20: mov R11, #17
l21: str R5, [sp], +R11
l22: mov R3, #45
l23: ldr R12, [sp], -R3
l24: strPL R14, [sp, #+29]
l25: mov R2, #47
l26: ldr R1, [sp], +R2
l27: mov R4, #50
l28: str R14, [sp], -R4
l29: ldrPL R9, [sp, #+63]
l30: ldr R10, [sp, #+8]!
l31: mov R2, #44
l32: str R8, [sp, +R2]!
l33: str R15, [sp], #-36
l34: str R12, [sp], #+20
l35: ldr R8, [sp, #+27]!
l36: mov R10, #59
l37: str R15, [sp, -R10]!
l38: mov R8, #30
l39: ldr R2, [sp, +R8]!
l40: str R6, [sp], #-26
l41: mov R14, #20
l42: ldr R8, [sp], +R14
l43: mov R7, #8
l44: str R3, [sp], -R7
l45: mov R10, #31
l46: ldr R5, [sp, +R10]!
l47: ldrGT R5, [sp, #-0]
l48: mov R0, #28
l49: ldrVS R12, [sp, -R0]
l50: mov R11, #25
l51: ldr R10, [sp, -R11]!
l52: str R9, [sp], #-6
l53: mov R2, #25
l54: ldr R10, [sp], +R2
l55: ldr R7, [sp, #+19]
l56: mov R2, #3
l57: ldr R6, [sp, -R2]!
l58: mov R0, #18
l59: str R12, [sp, +R0]
l60: str R6, [sp, #+2]
l61: mov R12, #22
l62: str R9, [sp], +R12
l63: ldr R6, [sp, #-32]!
l64: mov R10, #4
l65: ldr R7, [sp], +R10
l66: str R6, [sp, #-40]!
l67: mov R10, #20
l68: str R14, [sp, +R10]!
l69: ldrPL R7, [sp, #+24]
l70: mov R12, #36
l71: ldr R10, [sp, +R12]!
l72: str R6, [sp], #-20
l73: strMI R14, [sp, #-36]
l74: mov R12, #29
l75: ldr R10, [sp, +R12]!
l76: ldr R10, [sp], #-58
l77: mov R1, #49
l78: str R3, [sp, +R1]!
l79: str R2, [sp], #-52
l80: str R4, [sp], #+16
l81: ldr R8, [sp], #+25
l82: mov R8, #23
l83: str R1, [sp, +R8]
l84: mov R9, #25
l85: strGE R3, [sp, -R9]
l86: strVC R7, [sp, #-41]
l87: mov R7, #5
l88: ldr R0, [sp], +R7
l89: mov R8, #18
l90: str R12, [sp], -R8
l91: mov R11, #20
l92: str R15, [sp], -R11
l93: str R12, [sp, #+52]
l94: mov R8, #20
l95: strVC R5, [sp, +R8]
l96: mov R8, #28
l97: str R8, [sp, +R8]!
l98: ldr R6, [sp], #-7
l99: mov R2, #28
l100: ldrHI R6, [sp, +R2]
l101: ldr R10, [sp], #-18
l102: mov R14, #23
l103: ldr R9, [sp, +R14]!
l104: mov R10, #26
l105: str R11, [sp], +R10
l106: ldr R12, [sp], #-28
l107: mov R11, #4
l108: ldrVS R0, [sp, +R11]
l109: mov R9, #12
l110: str R4, [sp, +R9]!
l111: mov R6, #36
l112: str R11, [sp], -R6
l113: str R5, [sp], #+8
l114: strGT R11, [sp, #+16]
l115: mov R1, #12
l116: str R7, [sp, -R1]!
l117: ldr R12, [sp, #+44]
l118: ldr R8, [sp], #+29
l119: ldr R14, [sp, #+27]!
l120: mov R10, #64
l121: ldr R3, [sp, -R10]!
l122: mov R11, #32
l123: ldrMI R2, [sp, +R11]
l124: str R8, [sp, #+40]!
l125: ldrLE R2, [sp, #+0]
l126: mov R14, #7
l127: ldrPL R6, [sp, -R14]
l128: mov R3, #19
l129: ldr R11, [sp, -R3]!
l130: ldr R9, [sp, #-13]!
l131: str R12, [sp, #+36]
l132: ldr R12, [sp, #+42]!
l133: str R1, [sp, #+18]
l134: ldr R10, [sp, #-33]
l135: mov R9, #24
l136: ldr R0, [sp, +R9]!
l137: mov R3, #70
l138: ldr R0, [sp, -R3]!
l139: ldrHI R0, [sp, #+55]
l140: mov R10, #39
l141: ldr R12, [sp, +R10]!
l142: mov R7, #3
l143: str R3, [sp, -R7]!
l144: ldr R0, [sp], #-8
l145: mov R12, #33
l146: ldr R1, [sp, +R12]
l147: ldr R12, [sp, #-11]
l148: ldr R4, [sp], #+22
l149: str R8, [sp], #-10
l150: mov R0, #30
l151: ldr R1, [sp, -R0]!
l152: mov R3, #10
l153: str R12, [sp, +R3]
l154: mov R5, #32
l155: ldr R4, [sp, +R5]!
l156: str R6, [sp, #+10]
l157: ldr R5, [sp], #-45
l158: ldrHI R0, [sp, #-1]
l159: mov R6, #3
l160: str R11, [sp], +R6
l161: ldr R8, [sp, #+67]!
l162: mov R11, #47
l163: strLE R6, [sp, -R11]
l164: mov R12, #35
l165: ldr R2, [sp, -R12]!
l166: mov R12, #4
l167: str R4, [sp, -R12]!
l168: ldr R8, [sp], #-3
l169: str R10, [sp, #+27]!
l170: mov R12, #36
l171: strCC R8, [sp, -R12]
l172: str R7, [sp, #-36]
l173: str R9, [sp, #-40]!
l174: mov R6, #52
l175: str R4, [sp, +R6]!
l176: mov R8, #1
l177: ldrCC R7, [sp, -R8]
l178: str R3, [sp, #-36]!
l179: ldr R4, [sp, #+40]!
l180: str R15, [sp, #-4]!
l181: ldr R1, [sp, #-21]!
l182: mov R12, #31
l183: ldr R10, [sp, -R12]
l184: mov R5, #31
l185: ldr R14, [sp], -R5
l186: mov R8, #19
l187: ldr R10, [sp, +R8]!
l188: strGE R0, [sp, #+17]
l189: ldr R3, [sp, #+1]!
l190: mov R10, #21
l191: ldrPL R12, [sp, +R10]
l192: mov R14, #7
l193: ldr R9, [sp, -R14]!
l194: str R11, [sp, #+3]
l195: mov R2, #23
l196: str R4, [sp, +R2]!
l197: mov R12, #52
l198: str R10, [sp, -R12]!
l199: ldr R11, [sp, #+15]
l200: mov R8, #58
l201: ldr R5, [sp], +R8
l202: str R1, [sp, #-34]!
l203: mov R7, #20
l204: ldr R14, [sp], +R7
l205: str R1, [sp], #+12
l206: mov R7, #9
l207: ldr R2, [sp], +R7
l208: ldr R9, [sp], #+8
l209: ldr R3, [sp, #-29]!
l210: mov R4, #31
l211: ldr R11, [sp, +R4]
l212: mov R3, #44
l213: ldr R10, [sp], -R3
l214: mov R2, #26
l215: ldr R9, [sp], +R2
l216: mov R10, #10
l217: str R2, [sp], +R10
l218: mov R8, #27
l219: ldr R11, [sp], +R8
l220: str R1, [sp], #-59
l221: ldrNE R6, [sp, #+66]
l222: mov R10, #16
l223: ldr R8, [sp], +R10
l224: str R1, [sp, #+36]
l225: strLS R11, [sp, #+32]
l226: mov R0, #36
l227: str R9, [sp, +R0]!
l228: ldr R8, [sp, #+17]!
l229: mov R4, #23
l230: ldr R4, [sp], -R4
l231: strCS R5, [sp, #-2]
l232: mov R3, #33
l233: ldr R9, [sp, -R3]!
l234: ldr R0, [sp, #+5]!
l235: ldrLT R14, [sp, #+48]
l236: ldr R14, [sp, #+46]!
l237: ldrLE R2, [sp, #-21]
l238: ldr R9, [sp], #-55
l239: mov R10, #9
l240: ldr R1, [sp], +R10
l241: mov R11, #27
l242: ldr R0, [sp], +R11
l243: mov R14, #12
l244: ldr R2, [sp], -R14
l245: ldr R4, [sp, #+30]
l246: ldr R6, [sp, #-18]!
l247: mov R5, #5
l248: strMI R14, [sp, +R5]
l249: ldr R12, [sp, #+6]!
l250: mov R7, #7
l251: strMI R0, [sp, +R7]
l252: mov R5, #45
l253: ldr R9, [sp], +R5
l254: mov R2, #3
l255: ldr R0, [sp, -R2]!
l256: mov R7, #51
l257: str R9, [sp, -R7]
l258: mov R2, #23
l259: str R7, [sp], -R2
l260: strCS R0, [sp, #+4]
l261: mov R14, #28
l262: str R4, [sp, -R14]!
l263: strLE R4, [sp, #-8]
l264: mov R5, #40
l265: str R3, [sp, +R5]!
l266: ldr R4, [sp], #-6
l267: mov R2, #15
l268: ldr R8, [sp, -R2]!
l269: str R11, [sp], #+17
l270: mov R1, #14
l271: ldr R3, [sp], -R1
l272: ldr R11, [sp], #+16
l273: mov R14, #16
l274: ldrCC R4, [sp, -R14]
l275: mov R9, #7
l276: ldr R12, [sp, -R9]!
l277: ldrVS R5, [sp, #-45]
l278: ldr R6, [sp, #-3]
l279: mov R2, #13
l280: str R14, [sp, +R2]!
l281: ldr R12, [sp], #-18
l282: str R6, [sp, #-6]!
l283: strLT R6, [sp, #-4]
l284: ldr R8, [sp, #+13]!
l285: str R3, [sp, #+23]!
l286: ldr R9, [sp, #-67]!
l287: mov R12, #19
l288: str R14, [sp, +R12]!
l289: mov R5, #50
l290: ldr R10, [sp, +R5]!
l291: ldr R2, [sp], #-50
l292: mov R1, #8
l293: str R4, [sp, +R1]
l294: mov R3, #9
l295: ldr R3, [sp, +R3]
l296: strMI R7, [sp, #+48]
l297: mov R3, #12
l298: str R14, [sp, +R3]!
l299: mov R9, #3
l300: ldr R9, [sp, +R9]!
l301: ldrPL R10, [sp, #-10]
l302: str R10, [sp, #-7]
l303: str R12, [sp, #-35]
l304: strLS R10, [sp, #+13]
l305: mov R4, #31
l306: str R11, [sp], -R4
l307: mov R11, #4
l308: ldr R12, [sp, +R11]
l309: ldr R0, [sp, #+63]!
l310: str R10, [sp, #-31]!
l311: mov R1, #5
l312: ldr R12, [sp], -R1
l313: ldr R10, [sp, #-19]
l314: ldr R10, [sp, #+27]!
l315: str R11, [sp], #-34
l316: mov R0, #23
l317: ldr R11, [sp, -R0]!
l318: strLT R5, [sp, #+15]
l319: ldrCC R10, [sp, #+7]
l320: str R0, [sp, #+7]!
l321: mov R12, #32
l322: ldr R8, [sp, +R12]!
l323: strLS R1, [sp, #+16]
l324: str R14, [sp, #+20]
l325: mov R14, #32
l326: str R7, [sp, -R14]!
l327: mov R12, #48
l328: ldr R7, [sp, +R12]!
l329: mov R10, #8
l330: str R4, [sp, +R10]!
l331: str R6, [sp, #-68]
l332: ldr R0, [sp, #-45]!
l333: ldr R4, [sp], #+18
l334: mov R4, #19
l335: str R2, [sp, +R4]
l336: mov R12, #19
l337: ldr R6, [sp, +R12]!
l338: ldr R5, [sp, #-35]!
l339: mov R11, #47
l340: str R10, [sp, +R11]!
l341: strCC R15, [sp, #-28]
l342: mov R14, #55
l343: ldr R8, [sp, -R14]
l344: str R11, [sp], #-32
l345: str R12, [sp, #-40]!
l346: str R12, [sp, #+56]
l347: str R4, [sp], #+72
l348: mov R0, #18
l349: ldr R4, [sp, -R0]!
l350: mov R7, #11
l351: ldr R9, [sp], +R7
l352: ldrLT R6, [sp, #-11]
l353: str R3, [sp, #-21]!
l354: str R10, [sp], #-8
l355: mov R1, #27
l356: ldr R0, [sp], -R1
l357: str R14, [sp, #+39]!
l358: mov R7, #44
l359: str R5, [sp, -R7]!
l360: mov R5, #70
l361: ldr R5, [sp], +R5
l362: mov R5, #14
l363: str R3, [sp, -R5]!
l364: ldr R7, [sp, #-6]!
l365: mov R12, #34
l366: str R9, [sp, -R12]!
l367: mov R11, #1
l368: ldr R1, [sp], -R11
l369: ldr R2, [sp, #-5]!
l370: mov R5, #54
l371: str R1, [sp, +R5]!
l372: ldr R5, [sp, #-5]
l373: mov R10, #32
l374: str R11, [sp, -R10]!
l375: mov R6, #34
l376: ldr R1, [sp], -R6
l377: ldr R4, [sp, #+57]!
l378: ldr R12, [sp, #-47]!
l379: str R4, [sp, #+40]!
l380: mov R3, #4
l381: ldr R12, [sp, -R3]
l382: strVS R4, [sp, #-44]
l383: ldr R10, [sp, #-3]
l384: ldr R9, [sp], #-14
l385: strGE R7, [sp, #+22]
l386: str R2, [sp], #+6
l387: mov R0, #28
l388: str R6, [sp, +R0]!
l389: str R0, [sp, #-48]!
l390: mov R1, #20
l391: ldr R9, [sp, +R1]!
l392: ldr R8, [sp], #-24
l393: mov R3, #28
l394: ldrVS R12, [sp, +R3]
l395: str R3, [sp], #+12
l396: mov R10, #32
l397: str R5, [sp], +R10
l398: str R10, [sp, #-8]
l399: str R7, [sp, #-52]!
l400: str R2, [sp], #-4
l401: ldr R14, [sp, #+67]
l402: str R11, [sp], #+60
l403: ldrCS R6, [sp, #-42]
l404: ldr R7, [sp, #-67]!
l405: mov R0, #15
l406: str R5, [sp, +R0]
l407: mov R8, #21
l408: ldr R10, [sp, +R8]!
l409: mov R8, #11
l410: ldrEQ R0, [sp, +R8]
l411: mov R14, #7
l412: ldr R10, [sp, +R14]!
l413: mov R0, #46
l414: ldr R4, [sp], +R0
l415: ldr R6, [sp, #-51]
l416: ldr R10, [sp, #-21]!
l417: ldr R6, [sp], #-39
l418: ldr R8, [sp], #+54
l419: ldr R14, [sp], #-32
l420: mov R2, #5
l421: str R11, [sp, -R2]
l422: mov R5, #29
l423: str R10, [sp, -R5]!
l424: ldr R2, [sp, #+51]!
l425: ldr R7, [sp, #-10]
l426: ldr R4, [sp], #-17
l427: str R8, [sp, #+26]!
l428: mov R4, #40
l429: str R14, [sp, -R4]!
l430: mov R14, #44
l431: str R6, [sp, +R14]
l432: strLE R12, [sp, #-20]
l433: ldr R8, [sp], #+45
l434: mov R0, #49
l435: str R14, [sp], -R0
l436: mov R4, #20
l437: str R5, [sp, -R4]!
l438: ldr R5, [sp], #+33
l439: ldrNE R3, [sp, #-17]
l440: mov R1, #1
l441: str R15, [sp, -R1]!
l442: mov R7, #24
l443: strLE R5, [sp, +R7]
l444: str R4, [sp, #+28]!
l445: mov R5, #36
l446: str R8, [sp], -R5
l447: ldr R14, [sp, #+44]
l448: ldr R11, [sp, #+20]
l449: mov R11, #18
l450: ldr R10, [sp], +R11
l451: mov R2, #10
l452: ldr R7, [sp, -R2]!
l453: mov R1, #34
l454: ldr R9, [sp, +R1]!
l455: ldr R1, [sp, #-15]!
l456: ldrHI R4, [sp, #-37]
l457: mov R12, #31
l458: ldr R5, [sp], -R12
l459: mov R11, #8
l460: strCC R15, [sp, +R11]
l461: ldr R11, [sp, #-15]!
l462: mov R5, #5
l463: str R9, [sp, -R5]!
l464: ldr R11, [sp], #+56
l465: ldr R7, [sp], #-14
l466: mov R10, #6
l467: ldrMI R14, [sp, -R10]
l468: ldr R10, [sp, #+6]
l469: mov R6, #10
l470: strEQ R0, [sp, +R6]
l471: ldrPL R4, [sp, #-37]
l472: mov R2, #2
l473: str R1, [sp], -R2
l474: str R14, [sp, #-28]!
l475: str R1, [sp, #+16]!
l476: mov R5, #16
l477: str R8, [sp, +R5]!
l478: ldrCC R2, [sp, #+12]
l479: mov R7, #44
l480: ldr R11, [sp], -R7
l481: mov R5, #32
l482: str R12, [sp, +R5]!
l483: ldr R3, [sp, #+12]
l484: mov R5, #29
l485: ldr R3, [sp], -R5
l486: ldr R14, [sp, #+60]!
l487: str R6, [sp], #-63
l488: mov R2, #47
l489: ldr R7, [sp, +R2]!
l490: mov R2, #47
l491: str R2, [sp, -R2]
l492: ldr R5, [sp, #+16]!
l493: mov R5, #19
l494: ldr R10, [sp], -R5
l495: mov R5, #20
l496: str R4, [sp, +R5]!
l497: ldrHI R5, [sp, #-48]
l498: mov R5, #57
l499: ldr R11, [sp, -R5]!
l500: mov R7, #17
l501: str R10, [sp], +R7
l502: mov R3, #12
l503: ldr R8, [sp, +R3]!
l504: mov R11, #16
l505: str R0, [sp, -R11]!
l506: mov R5, #23
l507: ldr R0, [sp], -R5
l508: mov R2, #11
l509: str R3, [sp, +R2]!
l510: mov R11, #31
l511: ldr R11, [sp], +R11
l512: mov R12, #31
l513: str R8, [sp, -R12]!
l514: strHI R11, [sp, #+0]
l515: mov R6, #8
l516: str R12, [sp], +R6
l517: str R11, [sp, #+44]!
l518: ldr R3, [sp, #-50]!
l519: mov R12, #0
l520: ldr R5, [sp], -R12
l521: mov R4, #27
l522: ldr R12, [sp], +R4
l523: str R4, [sp, #+11]!
l524: ldr R3, [sp, #+3]!
l525: mov R5, #5
l526: ldr R12, [sp], -R5
l527: mov R9, #2
l528: str R6, [sp], +R9
l529: mov R11, #52
l530: str R12, [sp], -R11
l531: ldr R6, [sp, #+32]!
l532: mov R4, #14
l533: ldr R5, [sp, -R4]!
l534: ldr R7, [sp, #+44]!
l535: mov R0, #5
l536: ldr R3, [sp, -R0]
l537: mov R0, #4
l538: ldr R7, [sp], +R0
l539: mov R14, #3
l540: ldrCC R10, [sp, +R14]
l541: mov R2, #46
l542: str R10, [sp, -R2]!
l543: mov R4, #24
l544: str R5, [sp], +R4
l545: str R12, [sp, #-20]!
l546: mov R12, #12
l547: ldr R7, [sp, +R12]!
l548: str R2, [sp, #-12]
l549: mov R8, #32
l550: str R9, [sp, -R8]
l551: mov R9, #34
l552: ldr R14, [sp, -R9]!
l553: mov R7, #34
l554: ldr R1, [sp, +R7]!
l555: mov R4, #7
l556: ldr R10, [sp, +R4]
l557: mov R10, #20
l558: str R2, [sp, +R10]!
l559: mov R2, #36
l560: str R0, [sp, -R2]!
l561: mov R4, #36
l562: strPL R1, [sp, +R4]
l563: str R15, [sp], #+40
l564: ldr R11, [sp, #+10]!
l565: str R6, [sp], #-54
l566: str R15, [sp, #-8]!
l567: mov R5, #29
l568: ldr R2, [sp, +R5]!
l569: str R10, [sp], #+35
l570: ldr R8, [sp], #-72
l571: mov R2, #40
l572: str R1, [sp], +R2
l573: mov R7, #28
l574: strVC R8, [sp, +R7]
l575: ldr R7, [sp, #-37]!
l576: ldrGE R5, [sp, #+13]
l577: strHI R14, [sp, #+53]
l578: mov R14, #13
l579: strPL R6, [sp, +R14]
l580: mov R8, #3
l581: str R2, [sp], -R8
l582: str R10, [sp], #+48
l583: mov R5, #24
l584: ldr R9, [sp], +R5
l585: mov R6, #48
l586: str R1, [sp, -R6]
l587: mov R11, #8
l588: ldr R1, [sp], -R11
l589: ldr R2, [sp, #-26]!
l590: mov R10, #2
l591: str R12, [sp], -R10
l592: mov R1, #24
l593: strNE R8, [sp, +R1]
l594: str R0, [sp], #+36
l595: ldr R10, [sp], #-70
l596: str R10, [sp, #+54]
l597: mov R14, #10
l598: strHI R8, [sp, +R14]
l599: mov R5, #70
l600: str R15, [sp, +R5]!
l601: mov R10, #64
l602: ldrLS R12, [sp, -R10]
l603: str R9, [sp, #-48]!
l604: mov R10, #0
l605: ldr R7, [sp, +R10]!
l606: mov R2, #4
l607: strLS R5, [sp, +R2]
l608: strPL R6, [sp, #-16]
l609: ldrLS R2, [sp, #+50]
l610: ldr R12, [sp], #+32
l611: mov R0, #3
l612: ldr R12, [sp], -R0
l613: mov R9, #17
l614: str R12, [sp, -R9]!
l615: mov R10, #12
l616: strCC R4, [sp, +R10]
l617: str R7, [sp], #+28
l618: mov R12, #44
l619: str R11, [sp], -R12
l620: ldr R4, [sp], #+19
l621: strGE R6, [sp, #-19]
l622: mov R5, #10
l623: ldr R12, [sp], +R5
l624: mov R5, #7
l625: ldr R5, [sp, +R5]!
l626: str R11, [sp], #-28
l627: mov R2, #28
l628: ldrCS R3, [sp, -R2]
l629: mov R1, #6
l630: ldrEQ R5, [sp, -R1]
l631: ldr R10, [sp, #+27]!
l632: str R9, [sp], #-55
l633: str R5, [sp, #+16]!
l634: ldr R5, [sp, #+0]
l635: ldr R5, [sp, #+5]
l636: mov R8, #40
l637: strNE R8, [sp, +R8]
l638: str R1, [sp], #-4
l639: ldr R2, [sp], #+21
l640: mov R4, #29
l641: ldr R9, [sp, -R4]
l642: str R9, [sp, #-25]!
l643: ldrVS R0, [sp, #+53]
l644: str R5, [sp, #+28]!
l645: mov R6, #22
l646: ldrCC R9, [sp, +R6]
l647: str R2, [sp, #-16]
l648: strLS R15, [sp, #+4]
l649: mov R4, #0
l650: ldrGT R9, [sp, +R4]
l651: mov R1, #28
l652: str R3, [sp, -R1]!
l653: mov R0, #12
l654: str R6, [sp, +R0]!
l655: mov R11, #40
l656: strGT R14, [sp, +R11]
l657: str R15, [sp, #+20]!
l658: ldr R2, [sp, #-26]!
l659: mov R14, #54
l660: ldr R4, [sp, +R14]!
l661: mov R6, #2
l662: ldr R1, [sp, +R6]!
l663: strVS R4, [sp, #-30]
l664: mov R5, #38
l665: str R12, [sp], -R5
l666: str R5, [sp], #+16
l667: mov R6, #0
l668: ldr R8, [sp, +R6]!
l669: mov R14, #28
l670: str R14, [sp, -R14]!
l671: mov R10, #12
l672: str R1, [sp, -R10]
l673: mov R0, #4
l674: str R10, [sp], +R0
l675: strCS R5, [sp, #-8]
l676: ldr R14, [sp, #-10]
l677: mov R6, #47
l678: ldr R6, [sp, +R6]!
l679: ldr R7, [sp], #-10
l680: mov R1, #53
l681: str R15, [sp, -R1]!
l682: ldr R6, [sp, #+61]!
l683: ldr R0, [sp, #-64]
l684: mov R8, #29
l685: str R6, [sp, -R8]!
l686: ldrPL R10, [sp, #-7]
l687: mov R9, #20
l688: str R2, [sp, -R9]!
l689: mov R10, #32
l690: str R1, [sp, +R10]!
l691: str R0, [sp], #-36
l692: mov R5, #40
l693: ldr R12, [sp], +R5
l694: str R7, [sp, #+4]!
l695: mov R12, #12
l696: str R12, [sp], +R12
l697: mov R2, #53
l698: ldr R1, [sp], -R2
l699: str R1, [sp], #+37
l700: mov R5, #52
l701: str R14, [sp, -R5]
l702: str R11, [sp, #-48]!
l703: ldr R9, [sp, #+57]!
l704: ldr R8, [sp, #-20]!
l705: mov R4, #13
l706: ldr R12, [sp], +R4
l707: mov R3, #42
l708: ldrVC R0, [sp, -R3]
l709: mov R11, #24
l710: ldr R8, [sp], -R11
l711: mov R2, #2
l712: str R9, [sp], -R2
l713: mov R11, #4
l714: ldr R10, [sp], +R11
l715: mov R5, #13
l716: ldrGT R9, [sp, +R5]
l717: mov R5, #27
l718: ldr R14, [sp, -R5]!
l719: mov R2, #31
l720: str R12, [sp], +R2
l721: str R1, [sp, #-20]!
l722: ldr R5, [sp, #+9]!
l723: mov R2, #39
l724: ldr R11, [sp], +R2
l725: mov R7, #47
l726: ldrVS R10, [sp, -R7]
l727: ldr R11, [sp], #-66
l728: mov R3, #62
l729: strLE R2, [sp, +R3]
l730: mov R9, #46
l731: str R10, [sp, +R9]!
l732: ldr R4, [sp, #-21]!
l733: mov R0, #25
l734: ldr R10, [sp, -R0]!
l735: str R15, [sp, #+30]!
l736: ldr R11, [sp], #+30
l737: mov R7, #26
l738: str R1, [sp], -R7
l739: ldr R11, [sp], #-25
l740: str R7, [sp, #+17]!
l741: str R9, [sp, #+32]
l742: str R6, [sp], #+0
l743: mov R1, #27
l744: ldrVS R1, [sp, +R1]
l745: mov R12, #20
l746: ldr R0, [sp, +R12]
l747: ldr R14, [sp], #+29
l748: mov R12, #0
l749: ldr R1, [sp], -R12
l750: mov R11, #21
l751: strMI R8, [sp, -R11]
l752: str R10, [sp, #-1]!
l753: mov R8, #12
l754: strLT R14, [sp, -R8]
l755: str R14, [sp, #-40]
l756: mov R14, #32
l757: ldr R4, [sp, -R14]
l758: ldr R14, [sp, #-2]!
l759: str R4, [sp, #+18]
l760: mov R4, #6
l761: str R12, [sp], +R4
l762: ldr R11, [sp, #-59]!
l763: mov R1, #3
l764: str R4, [sp, +R1]!
l765: ldr R11, [sp, #+47]!
l766: mov R1, #43
l767: str R0, [sp, -R1]!
l768: mov R2, #32
l769: str R11, [sp, +R2]!
l770: str R7, [sp, #+0]!
l771: mov R10, #34
l772: ldr R14, [sp, +R10]!
l773: mov R1, #54
l774: str R12, [sp], -R1
l775: ldr R9, [sp, #+44]
l776: ldr R2, [sp, #+41]
l777: ldr R7, [sp], #+45
l778: strGT R5, [sp, #-25]
l779: mov R0, #14
l780: ldr R10, [sp, -R0]!
l781: str R6, [sp], #-23
l782: mov R3, #8
l783: str R14, [sp, -R3]
l784: mov R11, #8
l785: str R10, [sp, +R11]!
l786: mov R3, #20
l787: strCS R8, [sp, +R3]
l788: str R9, [sp], #-4
l789: str R7, [sp], #-20
l790: str R11, [sp, #+36]
l791: mov R9, #56
l792: strVS R14, [sp, +R9]
l793: mov R5, #8
l794: str R11, [sp, +R5]!
l795: mov R6, #24
l796: strVC R14, [sp, +R6]
l797: mov R0, #1
l798: ldrCC R14, [sp, -R0]
l799: mov R6, #4
l800: str R7, [sp, -R6]!
l801: mov R7, #4
l802: ldr R1, [sp], +R7
l803: str R0, [sp], #+40
l804: str R14, [sp, #-60]
l805: mov R8, #40
l806: str R7, [sp, -R8]!
l807: mov R14, #22
l808: ldr R0, [sp, +R14]
l809: ldrHI R10, [sp, #+43]
l810: ldr R0, [sp, #-4]
l811: str R14, [sp, #+8]!
l812: str R7, [sp, #+40]!
l813: ldrMI R8, [sp, #+3]
l814: ldr R5, [sp, #-15]
l815: strLS R6, [sp, #-48]
l816: strNE R2, [sp, #-32]
l817: ldr R3, [sp, #-12]!
l818: mov R3, #56
l819: strCS R4, [sp, -R3]
l820: mov R14, #25
l821: ldr R12, [sp], -R14
l822: mov R1, #15
l823: str R1, [sp, -R1]!
l824: str R0, [sp, #+56]!
l825: str R10, [sp, #-68]!
l826: mov R6, #25
l827: ldrPL R5, [sp, +R6]
l828: ldr R12, [sp, #+39]!
l829: mov R6, #15
l830: ldr R11, [sp, -R6]!
l831: ldr R7, [sp, #+29]!
l832: ldr R5, [sp, #-10]!
l833: strLE R2, [sp, #-19]
l834: mov R9, #23
l835: str R12, [sp, -R9]!
l836: mov R6, #48
l837: str R5, [sp, +R6]
l838: mov R8, #36
l839: str R12, [sp], +R8
l840: ldr R10, [sp], #-49
l841: ldr R8, [sp, #+16]
l842: str R4, [sp, #+53]
l843: ldr R10, [sp], #+22
l844: ldr R0, [sp], #+32
l845: mov R7, #45
l846: str R15, [sp], -R7
l847: mov R2, #2
l848: ldr R7, [sp, +R2]!
l849: ldr R4, [sp], #+18
l850: mov R9, #11
l851: ldr R1, [sp, +R9]!
l852: mov R14, #9
l853: str R0, [sp, +R14]!
l854: mov R10, #4
l855: strGE R10, [sp, +R10]
l856: str R7, [sp], #-32
l857: mov R5, #8
l858: str R14, [sp, -R5]!
l859: ldr R6, [sp, #+45]!
l860: str R6, [sp], #-41
l861: str R10, [sp], #-16
l862: mov R6, #35
l863: ldr R2, [sp, +R6]!
l864: mov R1, #27
l865: str R6, [sp], -R1
l866: str R10, [sp, #-12]!
l867: mov R2, #8
l868: strMI R5, [sp, +R2]
l869: mov R12, #28
l870: str R0, [sp], +R12
l871: ldr R8, [sp], #+34
l872: mov R9, #27
l873: ldr R9, [sp], -R9
l874: ldrHI R2, [sp, #-7]
l875: str R9, [sp, #+17]!
l876: mov R7, #16
l877: str R3, [sp], +R7
l878: str R2, [sp], #-32
l879: mov R12, #16
l880: strLT R5, [sp, -R12]
l881: ldr R11, [sp], #-2
l882: ldr R0, [sp, #+3]!
l883: mov R2, #29
l884: ldr R11, [sp], +R2
l885: mov R11, #14
l886: str R5, [sp, -R11]
l887: mov R9, #2
l888: strHI R15, [sp, -R9]
l889: mov R1, #18
l890: strHI R3, [sp, -R1]
l891: mov R12, #7
l892: ldr R0, [sp, -R12]
l893: mov R2, #57
l894: ldr R5, [sp, -R2]!
l895: str R6, [sp, #+47]!
l896: strMI R5, [sp, #-20]
l897: strCS R8, [sp, #-44]
l898: mov R7, #11
l899: ldr R5, [sp], -R7
l900: strVC R8, [sp, #-9]
l901: mov R4, #35
l902: ldr R14, [sp], -R4
l903: mov R10, #52
l904: ldr R6, [sp, +R10]!
l905: ldr R0, [sp, #+4]!
l906: ldr R9, [sp], #-4
l907: str R0, [sp, #-22]
l908: ldr R7, [sp, #-22]
l909: str R0, [sp], #-66
l910: mov R4, #28
l911: str R1, [sp], +R4
l912: mov R6, #9
l913: ldrNE R6, [sp, +R6]
l914: mov R2, #32
l915: str R0, [sp], +R2
l916: mov R7, #4
l917: strLE R12, [sp, -R7]
l918: mov R11, #48
l919: str R15, [sp], -R11
l920: ldr R9, [sp], #+39
l921: str R7, [sp, #-39]
l922: mov R2, #39
l923: strLT R3, [sp, -R2]
l924: str R15, [sp, #-7]!
l925: str R6, [sp], #-32
l926: ldr R14, [sp, #+46]!
l927: strLS R12, [sp, #+14]
l928: ldrNE R5, [sp, #-40]
l929: str R14, [sp], #-30
l930: mov R6, #28
l931: ldr R6, [sp], -R6
l932: mov R3, #72
l933: str R3, [sp, +R3]!
l934: mov R10, #70
l935: ldr R1, [sp, -R10]!
l936: mov R7, #58
l937: str R2, [sp], +R7
l938: ldr R4, [sp], #-37
l939: mov R14, #1
l940: str R1, [sp, +R14]!
l941: mov R0, #0
l942: str R15, [sp, +R0]!
l943: mov R1, #48
l944: str R2, [sp], +R1
l945: mov R6, #47
l946: ldr R8, [sp], -R6
l947: ldr R0, [sp], #+48
l948: mov R6, #36
l949: ldrHI R1, [sp, -R6]
l950: mov R12, #53
l951: str R12, [sp, -R12]!
l952: strVC R0, [sp, #-20]
l953: mov R11, #0
l954: strNE R0, [sp, +R11]
l955: str R11, [sp, #+32]
l956: strLS R11, [sp, #-12]
l957: mov R7, #15
l958: ldr R0, [sp, +R7]!
l959: mov R2, #15
l960: ldr R11, [sp], -R2
l961: ldrGT R3, [sp, #+15]
l962: mov R2, #18
l963: ldr R0, [sp, +R2]!
l964: str R15, [sp], #+26
l965: mov R5, #0
l966: str R8, [sp, +R5]!
l967: str R4, [sp, #-8]!
l968: ldr R6, [sp], #-12
l969: mov R6, #44
l970: str R10, [sp, -R6]!
l971: mov R10, #35
l972: ldr R6, [sp, +R10]!
l973: str R4, [sp], #+25
l974: mov R14, #26
l975: ldr R2, [sp, -R14]!
l976: str R2, [sp], #+18
l977: mov R2, #16
l978: ldr R8, [sp], -R2
l979: mov R11, #16
l980: str R9, [sp, -R11]
l981: strNE R14, [sp, #+0]
l982: str R7, [sp, #+32]!
l983: ldr R4, [sp], #-67
l984: str R14, [sp], #+47
l985: str R5, [sp], #-20
l986: mov R3, #35
l987: ldr R8, [sp, +R3]!
l988: mov R5, #20
l989: ldr R8, [sp], -R5
l990: mov R2, #20
l991: ldr R0, [sp, -R2]!
l992: str R14, [sp], #+5
l993: mov R5, #8
l994: ldr R9, [sp, -R5]!
l995: strGT R5, [sp, #+24]
l996: mov R2, #40
l997: str R15, [sp], +R2
l998: mov R4, #4
l999: str R15, [sp], -R4
l1000: ldr R12, [sp, #+7]!
end: b end

