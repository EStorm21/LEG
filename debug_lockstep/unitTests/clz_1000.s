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
val1: .word 3251479032
next1:ldr R2, val2
b next2
val2: .word 1102909522
next2:ldr R3, val3
b next3
val3: .word 304185188
next3:ldr R4, val4
b next4
val4: .word 1825286145
next4:ldr R5, val5
b next5
val5: .word 3194202790
next5:ldr R6, val6
b next6
val6: .word 894934091
next6:ldr R7, val7
b next7
val7: .word 2807487920
next7:ldr R8, val8
b next8
val8: .word 1361924494
next8:ldr R9, val9
b next9
val9: .word 2383877985
next9:ldr R10, val10
b next10
val10: .word 1604747823
next10:ldr R11, val11
b next11
val11: .word 3989047270
next11:ldr R12, val12
b next12
val12: .word 2766994239
next12:ldr R14, val14
b next14
val14: .word 541855118

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 3043667991
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 4184862580
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3336051704
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 3399718592
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 3163013533
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 3897332092
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 3092246598
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 1478306273
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3485408
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 2692325357
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 3938394201
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 2067965809
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 3182516037
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 3311807238
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 2693701985
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 3070247951
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 3159403701
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 3381784449
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 4055867586
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 1441600390
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 930733096
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: clzHI R8, R4
l2: clzPL R7, R7
l3: clzPL R11, R7
l4: clzMI R0, R9
l5: clzCS R11, R11
l6: clzCC R2, R3
l7: clzLE R7, R12
l8: clz R0, R14
l9: clzGT R3, R1
l10: clz R5, R6
l11: clzEQ R3, R5
l12: clz R1, R5
l13: clz R4, R0
l14: clzLE R14, R12
l15: clzHI R9, R2
l16: clzLE R2, R8
l17: clzLE R12, R2
l18: clz R0, R3
l19: clz R7, R12
l20: clz R5, R1
l21: clz R14, R2
l22: clz R6, R14
l23: clz R0, R6
l24: clzMI R4, R6
l25: clzLS R14, R14
l26: clz R7, R4
l27: clz R14, R1
l28: clz R5, R12
l29: clzCS R2, R1
l30: clz R1, R9
l31: clz R3, R6
l32: clzCC R11, R7
l33: clzLS R4, R10
l34: clzMI R1, R3
l35: clzLS R12, R11
l36: clz R14, R8
l37: clzCS R12, R10
l38: clzMI R4, R11
l39: clz R0, R7
l40: clz R9, R14
l41: clz R1, R0
l42: clzLE R5, R3
l43: clzLS R7, R4
l44: clzLT R10, R2
l45: clzVS R1, R10
l46: clz R6, R10
l47: clzGT R2, R2
l48: clz R3, R7
l49: clzLT R9, R1
l50: clzLT R4, R14
l51: clzLE R2, R1
l52: clz R11, R1
l53: clzPL R14, R7
l54: clz R10, R12
l55: clzLT R12, R7
l56: clzLE R6, R4
l57: clzHI R6, R14
l58: clz R2, R4
l59: clzNE R3, R0
l60: clzGT R7, R11
l61: clz R14, R2
l62: clz R12, R12
l63: clz R14, R0
l64: clzNE R9, R3
l65: clz R10, R8
l66: clz R1, R0
l67: clzCS R2, R8
l68: clzGE R6, R0
l69: clz R4, R1
l70: clz R3, R7
l71: clzVC R10, R12
l72: clzEQ R14, R1
l73: clzCS R1, R9
l74: clzLS R7, R11
l75: clzEQ R6, R1
l76: clz R4, R10
l77: clz R12, R7
l78: clz R6, R11
l79: clzNE R6, R11
l80: clz R11, R9
l81: clz R2, R2
l82: clzMI R0, R4
l83: clzEQ R14, R7
l84: clz R10, R14
l85: clzMI R3, R9
l86: clzLT R2, R6
l87: clz R1, R5
l88: clzMI R6, R4
l89: clz R7, R9
l90: clzNE R6, R12
l91: clzEQ R4, R6
l92: clz R2, R0
l93: clz R7, R3
l94: clz R7, R1
l95: clzHI R10, R3
l96: clz R8, R9
l97: clz R8, R4
l98: clzGE R11, R4
l99: clz R14, R4
l100: clzNE R4, R0
l101: clz R6, R9
l102: clz R9, R12
l103: clz R4, R3
l104: clz R3, R8
l105: clzLT R9, R12
l106: clzCC R1, R8
l107: clz R0, R12
l108: clz R14, R7
l109: clzLS R11, R8
l110: clz R0, R7
l111: clzVC R8, R4
l112: clz R10, R4
l113: clzPL R5, R7
l114: clzLT R6, R0
l115: clz R1, R10
l116: clzVC R12, R4
l117: clz R0, R3
l118: clzHI R10, R1
l119: clz R3, R9
l120: clzEQ R4, R4
l121: clz R3, R3
l122: clz R1, R1
l123: clzHI R2, R3
l124: clzLS R11, R6
l125: clzPL R4, R9
l126: clzNE R7, R14
l127: clzNE R14, R6
l128: clzGE R4, R12
l129: clzLE R11, R10
l130: clz R5, R10
l131: clzCC R7, R10
l132: clzVS R0, R3
l133: clzEQ R5, R8
l134: clzNE R14, R3
l135: clzMI R7, R6
l136: clzGT R12, R11
l137: clz R5, R0
l138: clzEQ R3, R5
l139: clz R2, R10
l140: clz R0, R9
l141: clzNE R12, R3
l142: clz R7, R10
l143: clz R9, R6
l144: clzGT R4, R2
l145: clzPL R14, R4
l146: clzGE R14, R8
l147: clzLT R8, R8
l148: clzCS R9, R2
l149: clzLT R1, R12
l150: clzVC R0, R0
l151: clzCS R5, R12
l152: clzLT R14, R9
l153: clz R2, R11
l154: clzGT R1, R11
l155: clzPL R1, R3
l156: clz R12, R5
l157: clzGT R0, R10
l158: clzEQ R11, R9
l159: clzLE R9, R14
l160: clzGE R14, R3
l161: clz R8, R5
l162: clz R2, R10
l163: clzMI R7, R7
l164: clz R9, R14
l165: clz R10, R11
l166: clzGE R0, R0
l167: clzVS R1, R8
l168: clzLE R6, R14
l169: clzGT R10, R12
l170: clz R6, R0
l171: clzEQ R8, R0
l172: clz R10, R14
l173: clz R1, R6
l174: clzCC R11, R3
l175: clzCC R9, R0
l176: clzEQ R6, R12
l177: clz R7, R9
l178: clzNE R12, R10
l179: clzVS R2, R10
l180: clz R4, R4
l181: clzCS R4, R4
l182: clzHI R9, R5
l183: clzHI R14, R12
l184: clzVC R4, R4
l185: clzNE R11, R6
l186: clz R3, R5
l187: clzHI R10, R9
l188: clzVC R3, R5
l189: clzVS R6, R3
l190: clzLT R10, R0
l191: clz R0, R4
l192: clz R2, R9
l193: clzGE R11, R3
l194: clzMI R1, R8
l195: clzNE R7, R14
l196: clzLE R9, R10
l197: clzGT R6, R2
l198: clzHI R10, R11
l199: clzLE R7, R5
l200: clz R0, R9
l201: clzCS R14, R3
l202: clzVS R10, R5
l203: clz R3, R2
l204: clzLS R12, R5
l205: clz R7, R12
l206: clzVC R2, R8
l207: clz R7, R10
l208: clzGE R2, R11
l209: clz R3, R10
l210: clzCS R2, R3
l211: clzHI R10, R5
l212: clzMI R11, R9
l213: clzLT R14, R9
l214: clz R3, R0
l215: clz R11, R2
l216: clz R2, R14
l217: clz R1, R12
l218: clz R7, R0
l219: clzHI R1, R0
l220: clz R12, R6
l221: clz R10, R12
l222: clzHI R8, R12
l223: clz R2, R4
l224: clz R2, R2
l225: clz R4, R14
l226: clzGE R6, R4
l227: clz R1, R12
l228: clzCS R10, R6
l229: clzCS R11, R9
l230: clz R10, R1
l231: clz R9, R1
l232: clzEQ R4, R8
l233: clzGE R3, R10
l234: clz R3, R4
l235: clz R6, R10
l236: clz R10, R3
l237: clzCC R12, R7
l238: clz R3, R10
l239: clzCS R7, R10
l240: clz R12, R7
l241: clz R3, R4
l242: clz R11, R12
l243: clzLT R1, R3
l244: clzVS R12, R1
l245: clzGT R4, R7
l246: clzVS R6, R10
l247: clz R8, R12
l248: clz R11, R12
l249: clz R6, R8
l250: clz R8, R4
l251: clzEQ R4, R5
l252: clzPL R4, R14
l253: clzEQ R7, R6
l254: clzHI R3, R5
l255: clz R3, R5
l256: clzMI R8, R12
l257: clz R10, R5
l258: clzMI R5, R6
l259: clzVC R10, R3
l260: clz R8, R14
l261: clzGT R11, R3
l262: clz R7, R10
l263: clz R6, R1
l264: clz R9, R11
l265: clz R5, R0
l266: clzCS R12, R11
l267: clzPL R0, R14
l268: clzNE R3, R9
l269: clzLE R0, R4
l270: clz R1, R14
l271: clzVC R6, R7
l272: clzGT R12, R9
l273: clzPL R4, R14
l274: clz R10, R12
l275: clz R14, R12
l276: clzCC R11, R14
l277: clzEQ R2, R5
l278: clz R9, R14
l279: clz R6, R14
l280: clz R9, R9
l281: clz R7, R11
l282: clzLS R9, R5
l283: clzHI R7, R1
l284: clzEQ R10, R6
l285: clzGT R11, R3
l286: clzGE R12, R14
l287: clz R0, R2
l288: clz R12, R1
l289: clzLS R3, R3
l290: clz R14, R1
l291: clz R1, R2
l292: clz R12, R4
l293: clzEQ R3, R2
l294: clzNE R4, R14
l295: clzHI R2, R4
l296: clzEQ R5, R7
l297: clz R7, R11
l298: clz R12, R8
l299: clzCC R2, R8
l300: clzPL R5, R3
l301: clzHI R10, R3
l302: clzNE R9, R7
l303: clzVC R6, R3
l304: clzGT R6, R3
l305: clz R14, R5
l306: clzMI R0, R0
l307: clzLE R8, R3
l308: clzLS R11, R1
l309: clz R8, R11
l310: clz R0, R4
l311: clz R10, R9
l312: clzNE R4, R14
l313: clzCS R9, R2
l314: clz R5, R0
l315: clzVC R7, R10
l316: clzLE R4, R9
l317: clzEQ R6, R0
l318: clzLS R1, R12
l319: clzNE R3, R1
l320: clzEQ R0, R4
l321: clzGT R6, R10
l322: clzGE R7, R7
l323: clzLS R1, R3
l324: clzMI R2, R9
l325: clzVC R10, R1
l326: clzLE R0, R6
l327: clz R3, R2
l328: clz R1, R2
l329: clz R7, R8
l330: clzPL R9, R4
l331: clz R1, R14
l332: clzMI R4, R3
l333: clzLE R9, R4
l334: clz R1, R11
l335: clz R2, R5
l336: clzNE R7, R2
l337: clzLT R9, R7
l338: clz R6, R12
l339: clz R2, R11
l340: clzLS R7, R12
l341: clzNE R7, R3
l342: clz R0, R0
l343: clzEQ R0, R2
l344: clzHI R3, R9
l345: clzLS R2, R2
l346: clzCS R10, R0
l347: clzMI R14, R8
l348: clzGT R7, R1
l349: clzPL R11, R8
l350: clzLS R4, R14
l351: clz R0, R10
l352: clz R3, R10
l353: clz R8, R12
l354: clzMI R1, R3
l355: clzNE R8, R11
l356: clzGE R6, R6
l357: clzGT R1, R7
l358: clzMI R2, R10
l359: clz R11, R0
l360: clzVC R3, R2
l361: clzLE R2, R5
l362: clz R11, R1
l363: clz R3, R6
l364: clz R12, R8
l365: clz R12, R3
l366: clzVC R2, R7
l367: clzGE R7, R5
l368: clzHI R2, R5
l369: clzHI R1, R0
l370: clz R12, R12
l371: clzPL R5, R14
l372: clz R8, R11
l373: clz R7, R7
l374: clz R4, R9
l375: clzCC R0, R9
l376: clz R9, R6
l377: clzHI R1, R6
l378: clzVC R6, R1
l379: clz R14, R3
l380: clzLS R10, R10
l381: clz R10, R3
l382: clzCC R10, R0
l383: clz R4, R0
l384: clz R6, R5
l385: clz R1, R3
l386: clz R4, R14
l387: clzLE R12, R6
l388: clz R6, R5
l389: clzVC R8, R0
l390: clzLS R7, R11
l391: clz R4, R5
l392: clz R0, R4
l393: clzCS R1, R0
l394: clzGT R2, R8
l395: clz R3, R5
l396: clz R2, R2
l397: clzVC R2, R9
l398: clzLE R12, R9
l399: clz R6, R2
l400: clzLE R2, R0
l401: clz R5, R12
l402: clzGT R5, R7
l403: clzMI R11, R1
l404: clzPL R9, R6
l405: clz R14, R9
l406: clz R9, R5
l407: clz R11, R2
l408: clzGT R10, R11
l409: clzPL R10, R5
l410: clzLT R14, R0
l411: clz R10, R7
l412: clzNE R9, R10
l413: clzLT R9, R8
l414: clz R7, R10
l415: clz R9, R4
l416: clzLT R0, R11
l417: clz R3, R9
l418: clz R12, R9
l419: clz R8, R5
l420: clzHI R6, R1
l421: clz R4, R3
l422: clzPL R12, R14
l423: clz R8, R11
l424: clzLT R2, R0
l425: clzHI R14, R9
l426: clz R4, R6
l427: clzLS R7, R9
l428: clzMI R5, R7
l429: clz R5, R2
l430: clzGE R14, R6
l431: clzEQ R3, R8
l432: clz R1, R8
l433: clzGT R5, R0
l434: clzMI R0, R7
l435: clzLT R5, R14
l436: clzCS R0, R4
l437: clzVS R0, R0
l438: clzLS R3, R7
l439: clzEQ R12, R5
l440: clz R8, R10
l441: clzCC R9, R2
l442: clzPL R9, R14
l443: clz R14, R10
l444: clz R0, R6
l445: clz R8, R2
l446: clz R12, R8
l447: clzLT R10, R1
l448: clzLT R4, R7
l449: clz R5, R9
l450: clz R2, R4
l451: clzNE R6, R5
l452: clzEQ R7, R5
l453: clz R12, R7
l454: clz R11, R6
l455: clzMI R1, R4
l456: clzGT R4, R12
l457: clzPL R0, R11
l458: clz R6, R10
l459: clzLS R10, R10
l460: clzGE R11, R7
l461: clzVC R9, R0
l462: clz R2, R6
l463: clzLS R11, R11
l464: clzGT R9, R5
l465: clz R3, R5
l466: clzLE R9, R5
l467: clzMI R14, R4
l468: clzMI R12, R3
l469: clzVC R1, R6
l470: clz R8, R2
l471: clzCC R11, R0
l472: clz R6, R2
l473: clzEQ R9, R14
l474: clzMI R5, R4
l475: clzLS R6, R0
l476: clzCS R5, R6
l477: clz R3, R0
l478: clzEQ R4, R2
l479: clz R5, R8
l480: clzPL R2, R14
l481: clz R1, R9
l482: clzCC R1, R0
l483: clzGT R11, R0
l484: clzCS R0, R9
l485: clzPL R14, R14
l486: clzLS R1, R0
l487: clz R0, R8
l488: clzLE R3, R5
l489: clz R2, R4
l490: clz R11, R1
l491: clzEQ R5, R5
l492: clzGT R6, R12
l493: clz R7, R12
l494: clzGT R7, R4
l495: clz R4, R3
l496: clzCC R7, R0
l497: clzGT R12, R6
l498: clz R5, R12
l499: clzLE R0, R11
l500: clz R12, R8
l501: clzPL R9, R4
l502: clz R14, R9
l503: clzGT R0, R7
l504: clzLE R11, R10
l505: clzEQ R0, R2
l506: clzVS R6, R8
l507: clzVS R8, R4
l508: clzVS R11, R9
l509: clz R4, R3
l510: clzHI R2, R6
l511: clz R11, R9
l512: clz R3, R2
l513: clzHI R6, R0
l514: clzVC R12, R6
l515: clz R10, R14
l516: clz R1, R11
l517: clz R5, R12
l518: clzVS R14, R0
l519: clz R8, R3
l520: clzGE R6, R7
l521: clzLT R9, R2
l522: clzLT R11, R9
l523: clzGT R7, R7
l524: clz R5, R1
l525: clzCS R14, R6
l526: clz R9, R11
l527: clz R2, R12
l528: clzPL R7, R3
l529: clzLT R4, R12
l530: clz R0, R0
l531: clz R7, R7
l532: clzMI R11, R14
l533: clzLS R6, R14
l534: clz R10, R3
l535: clz R9, R7
l536: clzEQ R11, R4
l537: clzEQ R1, R1
l538: clzGT R5, R3
l539: clz R1, R2
l540: clz R6, R8
l541: clz R6, R14
l542: clzVC R14, R6
l543: clzLT R9, R10
l544: clzLT R11, R7
l545: clzVS R2, R11
l546: clz R2, R11
l547: clzGT R12, R7
l548: clzCC R8, R2
l549: clz R6, R3
l550: clzGT R5, R8
l551: clz R0, R4
l552: clz R6, R9
l553: clz R12, R7
l554: clzVS R10, R1
l555: clz R0, R7
l556: clzPL R9, R12
l557: clz R2, R4
l558: clz R5, R8
l559: clzVS R4, R12
l560: clzLE R14, R0
l561: clz R9, R4
l562: clzEQ R1, R0
l563: clz R9, R0
l564: clz R1, R10
l565: clz R2, R4
l566: clzPL R2, R5
l567: clz R0, R6
l568: clzPL R12, R14
l569: clzLS R4, R14
l570: clzNE R14, R5
l571: clzLT R2, R4
l572: clz R10, R9
l573: clz R4, R9
l574: clz R0, R0
l575: clzLE R11, R3
l576: clzVS R7, R14
l577: clz R5, R2
l578: clz R12, R6
l579: clzLS R7, R2
l580: clz R4, R11
l581: clz R8, R3
l582: clzCS R4, R4
l583: clzNE R10, R9
l584: clzMI R7, R6
l585: clz R0, R6
l586: clzEQ R6, R2
l587: clz R4, R3
l588: clz R3, R9
l589: clzGE R7, R9
l590: clz R2, R10
l591: clzGE R12, R6
l592: clzMI R2, R8
l593: clz R10, R4
l594: clzPL R2, R1
l595: clz R3, R2
l596: clz R14, R2
l597: clzNE R5, R7
l598: clz R5, R8
l599: clzLT R9, R10
l600: clzHI R12, R7
l601: clz R10, R9
l602: clzEQ R5, R4
l603: clz R14, R8
l604: clz R11, R4
l605: clz R1, R14
l606: clzGT R5, R12
l607: clzCC R12, R8
l608: clzLT R10, R11
l609: clzGE R8, R14
l610: clzHI R10, R2
l611: clzGT R8, R7
l612: clzVC R9, R4
l613: clz R2, R8
l614: clz R5, R1
l615: clzEQ R4, R0
l616: clzCC R2, R7
l617: clz R9, R11
l618: clz R5, R11
l619: clzLS R8, R7
l620: clzCC R3, R9
l621: clz R14, R2
l622: clzVC R10, R12
l623: clz R1, R9
l624: clzVC R8, R3
l625: clz R10, R14
l626: clz R14, R9
l627: clz R2, R1
l628: clzMI R5, R9
l629: clzVC R11, R1
l630: clz R8, R14
l631: clz R2, R2
l632: clzGE R0, R12
l633: clzVS R4, R14
l634: clz R7, R14
l635: clz R7, R0
l636: clzVC R14, R5
l637: clz R10, R12
l638: clzGE R14, R1
l639: clz R5, R2
l640: clzLS R10, R9
l641: clzVC R4, R0
l642: clzEQ R2, R12
l643: clzCS R2, R10
l644: clzVC R6, R2
l645: clz R5, R9
l646: clzCC R8, R8
l647: clzLT R9, R7
l648: clzCS R11, R10
l649: clz R10, R7
l650: clzPL R7, R4
l651: clz R14, R14
l652: clzGT R9, R14
l653: clzEQ R12, R8
l654: clz R2, R8
l655: clzVC R2, R14
l656: clzMI R10, R8
l657: clzHI R4, R2
l658: clzGT R5, R3
l659: clzEQ R6, R9
l660: clzLE R3, R11
l661: clz R4, R11
l662: clz R14, R10
l663: clz R6, R12
l664: clzHI R4, R10
l665: clz R7, R10
l666: clzVS R10, R12
l667: clz R7, R11
l668: clzGE R9, R4
l669: clz R1, R3
l670: clz R5, R2
l671: clz R12, R6
l672: clzLS R9, R6
l673: clzMI R5, R7
l674: clz R3, R11
l675: clz R4, R12
l676: clz R6, R11
l677: clzPL R14, R10
l678: clzMI R7, R2
l679: clz R3, R8
l680: clz R3, R0
l681: clzMI R7, R9
l682: clzGT R2, R8
l683: clzGE R3, R12
l684: clzLS R4, R10
l685: clzPL R5, R0
l686: clzLS R2, R9
l687: clz R8, R5
l688: clz R6, R3
l689: clz R5, R14
l690: clz R7, R9
l691: clzLS R12, R6
l692: clz R3, R7
l693: clzNE R14, R10
l694: clz R6, R8
l695: clzCC R2, R9
l696: clzVS R10, R12
l697: clz R3, R5
l698: clzCS R1, R4
l699: clz R1, R8
l700: clzLT R9, R9
l701: clz R1, R9
l702: clz R4, R2
l703: clz R8, R14
l704: clz R9, R2
l705: clz R1, R4
l706: clzVS R11, R14
l707: clzVS R10, R4
l708: clzLS R7, R3
l709: clz R8, R12
l710: clzVC R10, R5
l711: clzEQ R1, R3
l712: clzEQ R0, R10
l713: clz R9, R2
l714: clzCC R2, R7
l715: clz R9, R8
l716: clz R8, R11
l717: clzNE R12, R9
l718: clz R14, R1
l719: clz R7, R7
l720: clz R2, R7
l721: clzVC R7, R11
l722: clzGT R6, R9
l723: clzCS R10, R8
l724: clz R3, R2
l725: clz R14, R7
l726: clz R7, R4
l727: clzVC R11, R12
l728: clzCC R0, R6
l729: clz R4, R0
l730: clz R8, R8
l731: clzGE R8, R14
l732: clzPL R5, R5
l733: clz R4, R0
l734: clz R1, R2
l735: clz R2, R12
l736: clzCS R0, R14
l737: clz R4, R0
l738: clzMI R11, R6
l739: clz R11, R8
l740: clzEQ R7, R12
l741: clzLS R12, R14
l742: clzVS R4, R9
l743: clzMI R12, R11
l744: clzCC R8, R4
l745: clz R3, R4
l746: clz R12, R7
l747: clzMI R11, R5
l748: clzGE R1, R2
l749: clzNE R3, R11
l750: clz R14, R4
l751: clz R11, R5
l752: clzCS R1, R2
l753: clz R2, R0
l754: clzLE R11, R2
l755: clz R9, R6
l756: clz R2, R0
l757: clz R2, R12
l758: clz R1, R12
l759: clz R12, R1
l760: clzEQ R0, R5
l761: clzVC R12, R3
l762: clz R12, R8
l763: clz R0, R4
l764: clz R8, R5
l765: clz R6, R14
l766: clzEQ R9, R2
l767: clzHI R10, R5
l768: clzCS R8, R9
l769: clzGT R12, R4
l770: clzGT R6, R11
l771: clz R9, R8
l772: clzCS R0, R12
l773: clzLE R9, R2
l774: clz R10, R11
l775: clzLS R7, R7
l776: clzLE R6, R5
l777: clzLT R11, R1
l778: clzVC R12, R11
l779: clzGT R3, R8
l780: clz R3, R0
l781: clz R5, R1
l782: clz R3, R8
l783: clz R2, R11
l784: clzGT R9, R3
l785: clzMI R14, R8
l786: clz R12, R1
l787: clzMI R6, R5
l788: clzVS R8, R14
l789: clzGT R5, R9
l790: clzPL R3, R7
l791: clzCS R11, R10
l792: clzCC R9, R6
l793: clzCC R9, R8
l794: clzVC R7, R10
l795: clzLE R8, R0
l796: clzLS R4, R12
l797: clzGE R10, R11
l798: clz R8, R12
l799: clzCS R1, R3
l800: clz R9, R10
l801: clzGT R8, R2
l802: clzHI R1, R6
l803: clzLT R9, R0
l804: clzCS R2, R2
l805: clz R4, R10
l806: clzVS R9, R3
l807: clz R5, R7
l808: clzGE R10, R14
l809: clz R0, R8
l810: clzGE R10, R3
l811: clzNE R7, R9
l812: clzVS R1, R6
l813: clzPL R2, R10
l814: clz R10, R10
l815: clz R9, R4
l816: clzMI R7, R5
l817: clzLT R0, R9
l818: clzNE R10, R12
l819: clzPL R6, R4
l820: clzGE R7, R11
l821: clz R5, R0
l822: clzVC R2, R0
l823: clz R12, R5
l824: clz R6, R8
l825: clzHI R10, R7
l826: clzGE R3, R9
l827: clzHI R4, R7
l828: clz R1, R2
l829: clz R4, R5
l830: clz R11, R10
l831: clzHI R2, R14
l832: clzMI R1, R1
l833: clzLE R9, R2
l834: clzPL R8, R0
l835: clz R4, R5
l836: clz R6, R6
l837: clzLS R1, R7
l838: clzPL R4, R5
l839: clz R9, R14
l840: clz R3, R10
l841: clzGE R1, R9
l842: clzLT R0, R0
l843: clzLS R9, R9
l844: clz R5, R10
l845: clz R5, R11
l846: clzGT R5, R1
l847: clz R3, R12
l848: clz R0, R3
l849: clz R8, R12
l850: clz R10, R8
l851: clzLS R12, R10
l852: clzLS R9, R1
l853: clzVS R9, R2
l854: clzGE R14, R5
l855: clz R1, R10
l856: clzCC R2, R3
l857: clzHI R6, R12
l858: clzMI R2, R6
l859: clz R8, R0
l860: clz R7, R8
l861: clzGE R5, R9
l862: clzGE R12, R3
l863: clzGT R9, R3
l864: clz R3, R8
l865: clzEQ R10, R14
l866: clzHI R4, R7
l867: clzCC R0, R1
l868: clz R9, R9
l869: clzLT R12, R4
l870: clz R8, R3
l871: clzVS R1, R5
l872: clzMI R6, R3
l873: clzCC R14, R12
l874: clz R2, R3
l875: clz R3, R1
l876: clzPL R12, R2
l877: clz R9, R3
l878: clz R5, R7
l879: clzLE R3, R5
l880: clz R12, R6
l881: clz R0, R5
l882: clz R7, R10
l883: clzCC R6, R8
l884: clz R9, R10
l885: clzVC R5, R7
l886: clzGT R2, R9
l887: clz R14, R14
l888: clzVC R9, R2
l889: clzHI R6, R1
l890: clz R9, R1
l891: clz R7, R4
l892: clz R11, R12
l893: clzGT R2, R5
l894: clz R12, R5
l895: clzCS R3, R10
l896: clz R7, R7
l897: clz R3, R7
l898: clzLS R2, R6
l899: clz R6, R12
l900: clzLS R14, R0
l901: clzLE R12, R10
l902: clzCS R9, R6
l903: clz R10, R6
l904: clzNE R10, R8
l905: clzNE R7, R4
l906: clzGT R1, R7
l907: clz R3, R0
l908: clzLE R3, R1
l909: clzLE R11, R14
l910: clzHI R1, R3
l911: clzCC R0, R1
l912: clz R1, R8
l913: clz R12, R14
l914: clz R4, R4
l915: clzLE R12, R2
l916: clz R12, R14
l917: clz R4, R1
l918: clz R0, R14
l919: clz R6, R3
l920: clz R5, R9
l921: clz R12, R4
l922: clz R7, R0
l923: clzVS R6, R7
l924: clz R5, R7
l925: clz R14, R9
l926: clzLS R6, R12
l927: clzLT R1, R7
l928: clzLS R10, R3
l929: clzMI R2, R1
l930: clzGE R6, R14
l931: clz R6, R11
l932: clzGT R4, R8
l933: clz R11, R14
l934: clz R12, R8
l935: clz R8, R3
l936: clz R1, R8
l937: clzCS R14, R0
l938: clzGT R1, R10
l939: clz R2, R4
l940: clzLT R14, R10
l941: clz R12, R8
l942: clzGT R10, R11
l943: clz R5, R5
l944: clzVC R14, R11
l945: clz R1, R4
l946: clz R4, R12
l947: clz R3, R11
l948: clzEQ R5, R1
l949: clzGT R3, R3
l950: clzVC R3, R10
l951: clzLS R6, R12
l952: clz R12, R14
l953: clzPL R0, R7
l954: clzGT R12, R9
l955: clzVS R12, R3
l956: clzGT R7, R5
l957: clzLE R4, R5
l958: clzVC R10, R3
l959: clzCC R6, R3
l960: clzCS R14, R8
l961: clzCS R6, R12
l962: clzCC R4, R7
l963: clzEQ R2, R9
l964: clz R4, R4
l965: clzGE R8, R0
l966: clz R12, R12
l967: clz R8, R2
l968: clz R11, R4
l969: clzCS R1, R14
l970: clzLE R11, R6
l971: clzLE R4, R6
l972: clzCS R7, R1
l973: clz R14, R5
l974: clzMI R3, R10
l975: clzLE R11, R7
l976: clz R9, R3
l977: clzCC R9, R4
l978: clzEQ R1, R12
l979: clzCC R3, R1
l980: clzMI R11, R5
l981: clz R14, R0
l982: clzCC R4, R6
l983: clzVS R5, R14
l984: clzGT R2, R4
l985: clz R3, R7
l986: clz R1, R3
l987: clzLE R2, R11
l988: clz R6, R6
l989: clzLE R6, R10
l990: clzCS R6, R9
l991: clzMI R4, R0
l992: clz R1, R8
l993: clz R4, R3
l994: clz R2, R4
l995: clz R7, R1
l996: clzEQ R4, R2
l997: clzLE R6, R2
l998: clz R2, R0
l999: clzLT R6, R2
l1000: clz R10, R2
end: b end

