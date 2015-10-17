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
val1: .word 3431276342
next1:ldr R2, val2
b next2
val2: .word 3803079488
next2:ldr R3, val3
b next3
val3: .word 2286580332
next3:ldr R4, val4
b next4
val4: .word 188507479
next4:ldr R5, val5
b next5
val5: .word 567278938
next5:ldr R6, val6
b next6
val6: .word 3740907414
next6:ldr R7, val7
b next7
val7: .word 2029716614
next7:ldr R8, val8
b next8
val8: .word 3797033177
next8:ldr R9, val9
b next9
val9: .word 3035152587
next9:ldr R10, val10
b next10
val10: .word 513914326
next10:ldr R11, val11
b next11
val11: .word 1305875035
next11:ldr R12, val12
b next12
val12: .word 1422882173
next12:ldr R14, val14
b next14
val14: .word 1589597487

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 2341195853
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 2058230599
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3586572075
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 133538891
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 4172037566
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 4061102263
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 1370914506
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 3338918107
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 4216592167
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 3392834945
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 1270830448
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 148906938
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 1499392173
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 1177351212
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 400968111
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 114901401
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 3546013906
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 3184065299
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 2657793496
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 766865575
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 4250681158
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: mov R11, #45
l2: strB R2, [sp, -R11]
l3: mov R10, #45
l4: strNEB R10, [sp, -R10]
l5: mov R3, #3
l6: strB R12, [sp, -R3]
l7: strB R7, [sp, #-79]
l8: strGTB R14, [sp, #-37]
l9: mov R12, #34
l10: strVCB R2, [sp, -R12]
l11: strHIB R14, [sp, #-31]
l12: mov R2, #71
l13: strB R2, [sp, -R2]
l14: strB R7, [sp, #-65]
l15: mov R12, #46
l16: strPLB R12, [sp, -R12]
l17: mov R5, #75
l18: strCCB R12, [sp, -R5]
l19: strGTB R0, [sp, #-32]
l20: mov R0, #28
l21: strLEB R10, [sp, -R0]
l22: mov R7, #75
l23: strVCB R0, [sp, -R7]
l24: mov R4, #48
l25: strB R11, [sp, -R4]
l26: strEQB R5, [sp, #-13]
l27: mov R12, #27
l28: strPLB R3, [sp, -R12]
l29: strB R0, [sp, #-60]
l30: strMIB R6, [sp, #-2]
l31: mov R3, #63
l32: strB R11, [sp, -R3]
l33: mov R4, #10
l34: strB R1, [sp, -R4]
l35: mov R9, #43
l36: strB R8, [sp, -R9]
l37: mov R12, #24
l38: strB R11, [sp, -R12]
l39: mov R6, #61
l40: strLTB R12, [sp, -R6]
l41: mov R5, #50
l42: strB R6, [sp, -R5]
l43: strB R7, [sp, #-22]
l44: strB R4, [sp, #-47]
l45: mov R11, #12
l46: strVCB R8, [sp, -R11]
l47: mov R6, #46
l48: strNEB R9, [sp, -R6]
l49: mov R8, #20
l50: strPLB R8, [sp, -R8]
l51: mov R11, #74
l52: strNEB R1, [sp, -R11]
l53: mov R7, #50
l54: strLEB R1, [sp, -R7]
l55: strB R10, [sp, #-52]
l56: mov R9, #36
l57: strCCB R11, [sp, -R9]
l58: strGTB R0, [sp, #-6]
l59: strPLB R1, [sp, #-9]
l60: strEQB R2, [sp, #-12]
l61: mov R10, #68
l62: strB R1, [sp, -R10]
l63: strHIB R4, [sp, #-65]
l64: mov R6, #52
l65: strMIB R9, [sp, -R6]
l66: strEQB R10, [sp, #-36]
l67: mov R5, #30
l68: strB R8, [sp, -R5]
l69: strB R4, [sp, #-47]
l70: mov R8, #45
l71: strB R1, [sp, -R8]
l72: mov R14, #43
l73: strB R10, [sp, -R14]
l74: mov R10, #1
l75: strMIB R1, [sp, -R10]
l76: strLTB R1, [sp, #-24]
l77: strB R11, [sp, #-15]
l78: mov R10, #72
l79: strLEB R12, [sp, -R10]
l80: strMIB R11, [sp, #-79]
l81: strB R10, [sp, #-73]
l82: strB R7, [sp, #-45]
l83: mov R5, #78
l84: strB R7, [sp, -R5]
l85: mov R8, #32
l86: strLEB R5, [sp, -R8]
l87: mov R4, #46
l88: strHIB R14, [sp, -R4]
l89: mov R11, #45
l90: strB R6, [sp, -R11]
l91: mov R6, #27
l92: strVCB R3, [sp, -R6]
l93: mov R1, #9
l94: strVCB R8, [sp, -R1]
l95: strLSB R0, [sp, #-74]
l96: strB R11, [sp, #-54]
l97: mov R14, #27
l98: strMIB R12, [sp, -R14]
l99: strLEB R3, [sp, #-28]
l100: strB R6, [sp, #-2]
l101: mov R6, #57
l102: strCCB R1, [sp, -R6]
l103: strEQB R0, [sp, #-44]
l104: strB R2, [sp, #-27]
l105: strB R2, [sp, #-63]
l106: mov R6, #10
l107: strMIB R3, [sp, -R6]
l108: mov R6, #31
l109: strNEB R1, [sp, -R6]
l110: mov R10, #49
l111: strLTB R1, [sp, -R10]
l112: strLSB R11, [sp, #-26]
l113: mov R14, #35
l114: strB R10, [sp, -R14]
l115: mov R2, #19
l116: strLEB R8, [sp, -R2]
l117: strB R9, [sp, #-28]
l118: strB R7, [sp, #-20]
l119: strVSB R2, [sp, #-22]
l120: strGTB R6, [sp, #-33]
l121: mov R3, #42
l122: strGEB R12, [sp, -R3]
l123: mov R3, #16
l124: strMIB R14, [sp, -R3]
l125: mov R7, #12
l126: strB R10, [sp, -R7]
l127: mov R1, #19
l128: strB R5, [sp, -R1]
l129: mov R11, #46
l130: strB R4, [sp, -R11]
l131: mov R0, #13
l132: strCSB R6, [sp, -R0]
l133: strB R2, [sp, #-42]
l134: strCSB R7, [sp, #-56]
l135: mov R8, #27
l136: strB R11, [sp, -R8]
l137: mov R12, #41
l138: strGEB R2, [sp, -R12]
l139: strB R9, [sp, #-66]
l140: mov R5, #56
l141: strB R5, [sp, -R5]
l142: strB R7, [sp, #-16]
l143: mov R2, #73
l144: strCSB R10, [sp, -R2]
l145: mov R7, #6
l146: strB R7, [sp, -R7]
l147: strB R1, [sp, #-76]
l148: strB R0, [sp, #-16]
l149: mov R10, #60
l150: strB R1, [sp, -R10]
l151: strVSB R12, [sp, #-6]
l152: mov R1, #78
l153: strGTB R10, [sp, -R1]
l154: mov R8, #61
l155: strB R8, [sp, -R8]
l156: mov R10, #48
l157: strGEB R10, [sp, -R10]
l158: strB R14, [sp, #-2]
l159: strB R4, [sp, #-51]
l160: mov R2, #52
l161: strGTB R2, [sp, -R2]
l162: mov R8, #30
l163: strCSB R10, [sp, -R8]
l164: strB R8, [sp, #-25]
l165: strLTB R12, [sp, #-74]
l166: strMIB R2, [sp, #-3]
l167: mov R10, #72
l168: strB R9, [sp, -R10]
l169: strB R8, [sp, #-29]
l170: mov R11, #64
l171: strB R5, [sp, -R11]
l172: strB R0, [sp, #-62]
l173: mov R5, #26
l174: strB R5, [sp, -R5]
l175: mov R2, #35
l176: strB R6, [sp, -R2]
l177: strEQB R1, [sp, #-21]
l178: mov R12, #44
l179: strB R0, [sp, -R12]
l180: strLTB R4, [sp, #-6]
l181: strB R12, [sp, #-76]
l182: mov R14, #30
l183: strLEB R0, [sp, -R14]
l184: mov R9, #76
l185: strGEB R4, [sp, -R9]
l186: strEQB R11, [sp, #-12]
l187: mov R8, #34
l188: strB R4, [sp, -R8]
l189: mov R12, #69
l190: strGEB R7, [sp, -R12]
l191: mov R6, #25
l192: strB R14, [sp, -R6]
l193: strVCB R1, [sp, #-61]
l194: mov R2, #34
l195: strB R10, [sp, -R2]
l196: mov R5, #19
l197: strB R5, [sp, -R5]
l198: mov R8, #79
l199: strB R9, [sp, -R8]
l200: mov R7, #42
l201: strB R6, [sp, -R7]
l202: mov R4, #47
l203: strEQB R3, [sp, -R4]
l204: strB R2, [sp, #-63]
l205: mov R10, #19
l206: strB R7, [sp, -R10]
l207: strB R4, [sp, #-65]
l208: mov R11, #25
l209: strB R5, [sp, -R11]
l210: mov R1, #33
l211: strB R11, [sp, -R1]
l212: strHIB R9, [sp, #-51]
l213: strB R1, [sp, #-1]
l214: strVSB R11, [sp, #-62]
l215: mov R7, #12
l216: strLSB R12, [sp, -R7]
l217: mov R6, #18
l218: strB R5, [sp, -R6]
l219: strGEB R2, [sp, #-1]
l220: strVSB R7, [sp, #-27]
l221: strVSB R14, [sp, #-9]
l222: mov R8, #79
l223: strB R2, [sp, -R8]
l224: mov R0, #78
l225: strVSB R9, [sp, -R0]
l226: strEQB R3, [sp, #-38]
l227: strGTB R7, [sp, #-71]
l228: strB R5, [sp, #-30]
l229: strPLB R0, [sp, #-80]
l230: strB R10, [sp, #-54]
l231: mov R1, #65
l232: strB R11, [sp, -R1]
l233: mov R0, #71
l234: strB R3, [sp, -R0]
l235: mov R0, #7
l236: strB R5, [sp, -R0]
l237: mov R0, #58
l238: strB R6, [sp, -R0]
l239: mov R1, #30
l240: strNEB R6, [sp, -R1]
l241: strB R10, [sp, #-34]
l242: strB R8, [sp, #-32]
l243: strB R12, [sp, #-33]
l244: strB R6, [sp, #-25]
l245: strB R9, [sp, #-74]
l246: strVCB R1, [sp, #-56]
l247: mov R2, #71
l248: strB R3, [sp, -R2]
l249: mov R3, #37
l250: strB R4, [sp, -R3]
l251: strB R3, [sp, #-79]
l252: mov R6, #63
l253: strB R6, [sp, -R6]
l254: strB R3, [sp, #-16]
l255: strGTB R6, [sp, #-12]
l256: strB R14, [sp, #-57]
l257: strCCB R10, [sp, #-38]
l258: strLSB R14, [sp, #-12]
l259: mov R14, #16
l260: strVCB R6, [sp, -R14]
l261: mov R7, #29
l262: strEQB R5, [sp, -R7]
l263: mov R1, #75
l264: strB R3, [sp, -R1]
l265: mov R0, #3
l266: strLEB R5, [sp, -R0]
l267: mov R8, #22
l268: strPLB R14, [sp, -R8]
l269: mov R12, #58
l270: strCCB R10, [sp, -R12]
l271: strPLB R6, [sp, #-8]
l272: strB R1, [sp, #-29]
l273: mov R0, #21
l274: strGEB R14, [sp, -R0]
l275: mov R3, #66
l276: strLSB R6, [sp, -R3]
l277: strLTB R3, [sp, #-78]
l278: strB R6, [sp, #-4]
l279: strHIB R7, [sp, #-73]
l280: mov R11, #45
l281: strB R2, [sp, -R11]
l282: mov R12, #7
l283: strLTB R0, [sp, -R12]
l284: strLEB R14, [sp, #-31]
l285: strB R3, [sp, #-69]
l286: strLEB R6, [sp, #-18]
l287: strB R8, [sp, #-35]
l288: strB R6, [sp, #-75]
l289: strB R3, [sp, #-9]
l290: strCSB R7, [sp, #-68]
l291: mov R0, #34
l292: strGTB R5, [sp, -R0]
l293: strLTB R12, [sp, #-21]
l294: strLEB R4, [sp, #-2]
l295: strB R4, [sp, #-18]
l296: mov R9, #41
l297: strB R9, [sp, -R9]
l298: strB R12, [sp, #-3]
l299: mov R5, #79
l300: strNEB R3, [sp, -R5]
l301: mov R9, #29
l302: strB R6, [sp, -R9]
l303: mov R1, #34
l304: strB R12, [sp, -R1]
l305: strPLB R2, [sp, #-1]
l306: mov R10, #17
l307: strGTB R14, [sp, -R10]
l308: mov R4, #45
l309: strB R1, [sp, -R4]
l310: mov R3, #10
l311: strLEB R7, [sp, -R3]
l312: strB R8, [sp, #-4]
l313: strMIB R6, [sp, #-72]
l314: mov R11, #24
l315: strLEB R5, [sp, -R11]
l316: mov R3, #21
l317: strB R0, [sp, -R3]
l318: mov R6, #11
l319: strLEB R6, [sp, -R6]
l320: strGTB R12, [sp, #-72]
l321: strB R10, [sp, #-67]
l322: mov R7, #22
l323: strB R10, [sp, -R7]
l324: mov R10, #78
l325: strEQB R2, [sp, -R10]
l326: mov R10, #36
l327: strMIB R7, [sp, -R10]
l328: strB R11, [sp, #-33]
l329: strLTB R8, [sp, #-72]
l330: mov R5, #10
l331: strCSB R10, [sp, -R5]
l332: strNEB R6, [sp, #-9]
l333: strEQB R11, [sp, #-69]
l334: strEQB R10, [sp, #-32]
l335: mov R10, #19
l336: strLEB R8, [sp, -R10]
l337: strB R4, [sp, #-20]
l338: mov R3, #67
l339: strB R7, [sp, -R3]
l340: mov R7, #64
l341: strB R1, [sp, -R7]
l342: mov R5, #47
l343: strB R4, [sp, -R5]
l344: mov R6, #71
l345: strGEB R1, [sp, -R6]
l346: strHIB R4, [sp, #-78]
l347: strGEB R4, [sp, #-45]
l348: mov R1, #68
l349: strB R6, [sp, -R1]
l350: mov R1, #58
l351: strB R6, [sp, -R1]
l352: mov R0, #17
l353: strEQB R8, [sp, -R0]
l354: mov R6, #41
l355: strCCB R5, [sp, -R6]
l356: strVSB R12, [sp, #-32]
l357: strVSB R4, [sp, #-18]
l358: strB R4, [sp, #-57]
l359: mov R7, #42
l360: strB R0, [sp, -R7]
l361: mov R9, #32
l362: strB R7, [sp, -R9]
l363: mov R3, #4
l364: strCSB R5, [sp, -R3]
l365: strVSB R7, [sp, #-57]
l366: strCSB R3, [sp, #-42]
l367: strLSB R6, [sp, #-44]
l368: strMIB R0, [sp, #-62]
l369: mov R6, #43
l370: strB R3, [sp, -R6]
l371: strB R14, [sp, #-63]
l372: strB R10, [sp, #-20]
l373: mov R14, #73
l374: strGTB R4, [sp, -R14]
l375: strLEB R4, [sp, #-16]
l376: mov R4, #15
l377: strB R0, [sp, -R4]
l378: strGEB R6, [sp, #-51]
l379: strPLB R9, [sp, #-2]
l380: strHIB R9, [sp, #-63]
l381: mov R8, #68
l382: strB R7, [sp, -R8]
l383: mov R7, #22
l384: strLTB R4, [sp, -R7]
l385: strB R11, [sp, #-75]
l386: mov R6, #59
l387: strB R5, [sp, -R6]
l388: strEQB R11, [sp, #-19]
l389: strNEB R3, [sp, #-64]
l390: strNEB R12, [sp, #-39]
l391: mov R12, #80
l392: strVSB R14, [sp, -R12]
l393: mov R3, #79
l394: strCCB R4, [sp, -R3]
l395: strB R12, [sp, #-1]
l396: strB R10, [sp, #-2]
l397: strLSB R7, [sp, #-62]
l398: mov R12, #24
l399: strB R12, [sp, -R12]
l400: mov R7, #66
l401: strCSB R0, [sp, -R7]
l402: strB R5, [sp, #-42]
l403: strPLB R11, [sp, #-13]
l404: mov R6, #44
l405: strCSB R7, [sp, -R6]
l406: strVSB R14, [sp, #-25]
l407: mov R14, #9
l408: strB R3, [sp, -R14]
l409: mov R2, #26
l410: strLSB R12, [sp, -R2]
l411: strHIB R1, [sp, #-10]
l412: strB R8, [sp, #-2]
l413: strB R11, [sp, #-74]
l414: mov R8, #38
l415: strB R9, [sp, -R8]
l416: mov R6, #76
l417: strB R11, [sp, -R6]
l418: strB R14, [sp, #-2]
l419: mov R2, #18
l420: strCCB R8, [sp, -R2]
l421: strB R7, [sp, #-47]
l422: mov R11, #30
l423: strGTB R7, [sp, -R11]
l424: strB R10, [sp, #-34]
l425: strVSB R10, [sp, #-63]
l426: mov R3, #66
l427: strB R10, [sp, -R3]
l428: strCSB R3, [sp, #-49]
l429: strVSB R4, [sp, #-49]
l430: strLSB R2, [sp, #-5]
l431: strNEB R10, [sp, #-30]
l432: mov R5, #47
l433: strVSB R9, [sp, -R5]
l434: strMIB R5, [sp, #-15]
l435: strMIB R7, [sp, #-32]
l436: mov R8, #31
l437: strPLB R5, [sp, -R8]
l438: strHIB R5, [sp, #-68]
l439: strB R12, [sp, #-20]
l440: mov R4, #74
l441: strLTB R10, [sp, -R4]
l442: strCCB R0, [sp, #-58]
l443: strGTB R2, [sp, #-17]
l444: strB R1, [sp, #-35]
l445: strPLB R9, [sp, #-54]
l446: strB R11, [sp, #-9]
l447: strCCB R5, [sp, #-44]
l448: mov R9, #36
l449: strB R6, [sp, -R9]
l450: mov R1, #34
l451: strB R9, [sp, -R1]
l452: strGTB R2, [sp, #-74]
l453: mov R6, #26
l454: strCCB R6, [sp, -R6]
l455: mov R14, #60
l456: strB R9, [sp, -R14]
l457: mov R10, #56
l458: strLTB R6, [sp, -R10]
l459: strVSB R1, [sp, #-18]
l460: mov R10, #64
l461: strB R4, [sp, -R10]
l462: mov R6, #9
l463: strB R12, [sp, -R6]
l464: mov R6, #37
l465: strB R14, [sp, -R6]
l466: strHIB R10, [sp, #-56]
l467: mov R4, #41
l468: strNEB R11, [sp, -R4]
l469: strHIB R14, [sp, #-61]
l470: strGTB R10, [sp, #-78]
l471: mov R12, #3
l472: strHIB R4, [sp, -R12]
l473: strGEB R14, [sp, #-62]
l474: mov R5, #2
l475: strHIB R2, [sp, -R5]
l476: strLEB R4, [sp, #-50]
l477: strVCB R4, [sp, #-76]
l478: strGEB R4, [sp, #-7]
l479: strB R2, [sp, #-28]
l480: strGTB R5, [sp, #-12]
l481: mov R6, #58
l482: strPLB R9, [sp, -R6]
l483: strB R12, [sp, #-75]
l484: mov R2, #78
l485: strGEB R11, [sp, -R2]
l486: strEQB R6, [sp, #-73]
l487: mov R9, #76
l488: strLEB R8, [sp, -R9]
l489: strVCB R3, [sp, #-32]
l490: strEQB R9, [sp, #-48]
l491: mov R12, #6
l492: strB R14, [sp, -R12]
l493: mov R4, #54
l494: strLTB R4, [sp, -R4]
l495: strB R0, [sp, #-74]
l496: mov R3, #7
l497: strB R7, [sp, -R3]
l498: strB R5, [sp, #-10]
l499: strB R4, [sp, #-58]
l500: mov R0, #56
l501: strB R8, [sp, -R0]
l502: mov R2, #36
l503: strB R8, [sp, -R2]
l504: mov R9, #18
l505: strNEB R6, [sp, -R9]
l506: mov R10, #9
l507: strB R11, [sp, -R10]
l508: strGTB R11, [sp, #-16]
l509: strB R11, [sp, #-47]
l510: strB R14, [sp, #-54]
l511: mov R1, #34
l512: strLTB R14, [sp, -R1]
l513: strPLB R10, [sp, #-33]
l514: mov R14, #24
l515: strCSB R5, [sp, -R14]
l516: strB R8, [sp, #-44]
l517: mov R10, #36
l518: strB R0, [sp, -R10]
l519: mov R7, #51
l520: strHIB R11, [sp, -R7]
l521: mov R1, #28
l522: strLSB R5, [sp, -R1]
l523: mov R11, #17
l524: strB R6, [sp, -R11]
l525: mov R4, #52
l526: strGEB R6, [sp, -R4]
l527: strB R4, [sp, #-25]
l528: strMIB R9, [sp, #-76]
l529: strB R9, [sp, #-67]
l530: strHIB R6, [sp, #-14]
l531: mov R12, #77
l532: strLTB R7, [sp, -R12]
l533: strLTB R4, [sp, #-14]
l534: strHIB R4, [sp, #-16]
l535: strNEB R0, [sp, #-26]
l536: strB R3, [sp, #-9]
l537: mov R5, #71
l538: strB R7, [sp, -R5]
l539: strB R11, [sp, #-59]
l540: strB R14, [sp, #-77]
l541: strCSB R14, [sp, #-69]
l542: mov R3, #15
l543: strEQB R0, [sp, -R3]
l544: mov R14, #50
l545: strPLB R6, [sp, -R14]
l546: strB R12, [sp, #-1]
l547: strB R11, [sp, #-35]
l548: strB R12, [sp, #-75]
l549: strB R11, [sp, #-8]
l550: mov R7, #20
l551: strEQB R5, [sp, -R7]
l552: mov R2, #45
l553: strB R2, [sp, -R2]
l554: strB R14, [sp, #-14]
l555: strB R3, [sp, #-14]
l556: strB R3, [sp, #-48]
l557: strB R1, [sp, #-33]
l558: mov R6, #52
l559: strB R9, [sp, -R6]
l560: mov R2, #69
l561: strEQB R12, [sp, -R2]
l562: mov R14, #60
l563: strHIB R2, [sp, -R14]
l564: strGEB R9, [sp, #-70]
l565: mov R9, #58
l566: strCSB R11, [sp, -R9]
l567: mov R14, #58
l568: strB R0, [sp, -R14]
l569: mov R3, #80
l570: strLEB R12, [sp, -R3]
l571: strLSB R0, [sp, #-3]
l572: strB R1, [sp, #-20]
l573: mov R7, #22
l574: strB R0, [sp, -R7]
l575: strCCB R11, [sp, #-38]
l576: strNEB R10, [sp, #-63]
l577: mov R12, #56
l578: strB R1, [sp, -R12]
l579: strGTB R14, [sp, #-30]
l580: strB R12, [sp, #-73]
l581: strGTB R7, [sp, #-22]
l582: mov R2, #33
l583: strPLB R12, [sp, -R2]
l584: strEQB R7, [sp, #-49]
l585: strMIB R9, [sp, #-74]
l586: strCCB R3, [sp, #-74]
l587: strNEB R14, [sp, #-58]
l588: mov R6, #77
l589: strCCB R2, [sp, -R6]
l590: strGEB R1, [sp, #-11]
l591: strB R11, [sp, #-9]
l592: mov R2, #74
l593: strNEB R7, [sp, -R2]
l594: mov R4, #61
l595: strVSB R3, [sp, -R4]
l596: mov R6, #47
l597: strVSB R1, [sp, -R6]
l598: mov R11, #21
l599: strLSB R12, [sp, -R11]
l600: mov R11, #5
l601: strMIB R6, [sp, -R11]
l602: mov R2, #53
l603: strLEB R7, [sp, -R2]
l604: mov R7, #26
l605: strB R4, [sp, -R7]
l606: mov R10, #49
l607: strLEB R0, [sp, -R10]
l608: strLSB R2, [sp, #-70]
l609: mov R11, #77
l610: strLEB R0, [sp, -R11]
l611: mov R12, #65
l612: strB R8, [sp, -R12]
l613: mov R1, #23
l614: strB R1, [sp, -R1]
l615: strCSB R2, [sp, #-8]
l616: mov R8, #36
l617: strB R11, [sp, -R8]
l618: mov R1, #79
l619: strEQB R0, [sp, -R1]
l620: mov R6, #52
l621: strNEB R5, [sp, -R6]
l622: strPLB R12, [sp, #-48]
l623: strVSB R10, [sp, #-24]
l624: mov R5, #3
l625: strB R6, [sp, -R5]
l626: mov R3, #27
l627: strB R8, [sp, -R3]
l628: strNEB R9, [sp, #-54]
l629: strB R2, [sp, #-64]
l630: mov R4, #49
l631: strGEB R9, [sp, -R4]
l632: mov R8, #22
l633: strB R6, [sp, -R8]
l634: mov R3, #59
l635: strB R2, [sp, -R3]
l636: mov R7, #6
l637: strB R2, [sp, -R7]
l638: mov R12, #11
l639: strLEB R1, [sp, -R12]
l640: strB R3, [sp, #-25]
l641: strGEB R4, [sp, #-63]
l642: mov R7, #72
l643: strVSB R9, [sp, -R7]
l644: strB R1, [sp, #-59]
l645: strVCB R12, [sp, #-52]
l646: mov R10, #49
l647: strB R11, [sp, -R10]
l648: strMIB R5, [sp, #-33]
l649: strB R3, [sp, #-4]
l650: mov R12, #76
l651: strEQB R4, [sp, -R12]
l652: strB R6, [sp, #-75]
l653: strB R1, [sp, #-3]
l654: strB R0, [sp, #-3]
l655: strB R9, [sp, #-40]
l656: mov R5, #15
l657: strVSB R14, [sp, -R5]
l658: strB R7, [sp, #-31]
l659: strLEB R12, [sp, #-41]
l660: strLTB R4, [sp, #-53]
l661: strMIB R9, [sp, #-1]
l662: strNEB R2, [sp, #-17]
l663: mov R0, #44
l664: strLSB R7, [sp, -R0]
l665: mov R6, #30
l666: strB R4, [sp, -R6]
l667: mov R10, #78
l668: strMIB R2, [sp, -R10]
l669: mov R1, #41
l670: strMIB R8, [sp, -R1]
l671: mov R12, #14
l672: strPLB R0, [sp, -R12]
l673: mov R1, #69
l674: strB R6, [sp, -R1]
l675: strB R3, [sp, #-60]
l676: strB R12, [sp, #-17]
l677: strB R7, [sp, #-69]
l678: strB R6, [sp, #-4]
l679: strB R7, [sp, #-20]
l680: mov R3, #2
l681: strCSB R2, [sp, -R3]
l682: mov R2, #70
l683: strB R12, [sp, -R2]
l684: mov R0, #57
l685: strB R4, [sp, -R0]
l686: strGTB R14, [sp, #-1]
l687: strB R6, [sp, #-69]
l688: strB R2, [sp, #-66]
l689: strGTB R0, [sp, #-76]
l690: strLSB R9, [sp, #-18]
l691: mov R6, #73
l692: strB R11, [sp, -R6]
l693: strVSB R11, [sp, #-30]
l694: strEQB R4, [sp, #-74]
l695: strB R10, [sp, #-38]
l696: mov R4, #46
l697: strB R14, [sp, -R4]
l698: mov R6, #47
l699: strHIB R9, [sp, -R6]
l700: strB R1, [sp, #-46]
l701: strNEB R1, [sp, #-63]
l702: mov R1, #71
l703: strB R2, [sp, -R1]
l704: strEQB R2, [sp, #-11]
l705: strB R2, [sp, #-7]
l706: strB R11, [sp, #-30]
l707: mov R6, #56
l708: strCSB R9, [sp, -R6]
l709: mov R4, #78
l710: strB R9, [sp, -R4]
l711: strEQB R9, [sp, #-18]
l712: mov R7, #73
l713: strGEB R2, [sp, -R7]
l714: strLTB R4, [sp, #-4]
l715: strGEB R3, [sp, #-80]
l716: strVCB R9, [sp, #-32]
l717: strB R7, [sp, #-15]
l718: strPLB R0, [sp, #-1]
l719: mov R5, #7
l720: strHIB R14, [sp, -R5]
l721: mov R8, #5
l722: strLEB R2, [sp, -R8]
l723: mov R9, #78
l724: strLSB R11, [sp, -R9]
l725: mov R8, #41
l726: strEQB R12, [sp, -R8]
l727: mov R7, #8
l728: strHIB R7, [sp, -R7]
l729: strMIB R11, [sp, #-78]
l730: mov R1, #22
l731: strHIB R5, [sp, -R1]
l732: mov R5, #61
l733: strVCB R6, [sp, -R5]
l734: strB R7, [sp, #-79]
l735: strB R2, [sp, #-7]
l736: strLEB R2, [sp, #-55]
l737: mov R4, #2
l738: strB R3, [sp, -R4]
l739: strLTB R5, [sp, #-10]
l740: strB R2, [sp, #-36]
l741: strLSB R12, [sp, #-37]
l742: strLEB R5, [sp, #-76]
l743: mov R6, #55
l744: strHIB R2, [sp, -R6]
l745: mov R14, #23
l746: strPLB R12, [sp, -R14]
l747: strB R14, [sp, #-78]
l748: mov R10, #75
l749: strNEB R1, [sp, -R10]
l750: strPLB R0, [sp, #-45]
l751: strHIB R6, [sp, #-62]
l752: strB R2, [sp, #-76]
l753: mov R0, #42
l754: strB R9, [sp, -R0]
l755: strB R9, [sp, #-54]
l756: mov R1, #21
l757: strB R9, [sp, -R1]
l758: strEQB R11, [sp, #-4]
l759: strHIB R12, [sp, #-29]
l760: strGTB R12, [sp, #-34]
l761: strGEB R12, [sp, #-46]
l762: strLEB R2, [sp, #-35]
l763: mov R2, #75
l764: strCCB R12, [sp, -R2]
l765: strGEB R12, [sp, #-47]
l766: strLSB R6, [sp, #-37]
l767: strGEB R0, [sp, #-32]
l768: strGTB R2, [sp, #-24]
l769: strEQB R4, [sp, #-61]
l770: mov R0, #8
l771: strB R14, [sp, -R0]
l772: mov R14, #45
l773: strGTB R5, [sp, -R14]
l774: strB R14, [sp, #-2]
l775: mov R12, #59
l776: strB R12, [sp, -R12]
l777: mov R12, #46
l778: strB R8, [sp, -R12]
l779: mov R14, #1
l780: strCCB R1, [sp, -R14]
l781: strLTB R3, [sp, #-3]
l782: mov R0, #57
l783: strB R2, [sp, -R0]
l784: strCSB R6, [sp, #-52]
l785: strPLB R5, [sp, #-1]
l786: strB R6, [sp, #-73]
l787: mov R1, #21
l788: strB R6, [sp, -R1]
l789: mov R14, #3
l790: strMIB R0, [sp, -R14]
l791: mov R1, #80
l792: strLEB R1, [sp, -R1]
l793: mov R9, #53
l794: strMIB R6, [sp, -R9]
l795: mov R7, #3
l796: strGEB R9, [sp, -R7]
l797: strB R1, [sp, #-33]
l798: mov R10, #19
l799: strPLB R12, [sp, -R10]
l800: mov R8, #32
l801: strNEB R5, [sp, -R8]
l802: mov R9, #59
l803: strLTB R5, [sp, -R9]
l804: mov R0, #79
l805: strB R0, [sp, -R0]
l806: mov R3, #38
l807: strB R10, [sp, -R3]
l808: mov R11, #20
l809: strVCB R9, [sp, -R11]
l810: mov R1, #22
l811: strLTB R12, [sp, -R1]
l812: strCCB R6, [sp, #-9]
l813: strLSB R6, [sp, #-5]
l814: mov R6, #8
l815: strB R14, [sp, -R6]
l816: mov R12, #17
l817: strVSB R5, [sp, -R12]
l818: strB R12, [sp, #-34]
l819: mov R9, #54
l820: strB R8, [sp, -R9]
l821: strNEB R5, [sp, #-45]
l822: strB R2, [sp, #-9]
l823: strGEB R6, [sp, #-72]
l824: strB R4, [sp, #-29]
l825: mov R9, #44
l826: strB R2, [sp, -R9]
l827: mov R9, #15
l828: strVSB R7, [sp, -R9]
l829: mov R6, #67
l830: strPLB R2, [sp, -R6]
l831: mov R9, #19
l832: strB R9, [sp, -R9]
l833: mov R12, #33
l834: strB R12, [sp, -R12]
l835: mov R6, #4
l836: strEQB R1, [sp, -R6]
l837: strHIB R1, [sp, #-72]
l838: mov R11, #8
l839: strB R8, [sp, -R11]
l840: strB R9, [sp, #-18]
l841: mov R3, #61
l842: strMIB R12, [sp, -R3]
l843: mov R12, #77
l844: strVSB R8, [sp, -R12]
l845: mov R6, #70
l846: strGEB R7, [sp, -R6]
l847: mov R3, #55
l848: strCCB R11, [sp, -R3]
l849: strLSB R3, [sp, #-39]
l850: strCSB R11, [sp, #-76]
l851: strHIB R10, [sp, #-27]
l852: strB R0, [sp, #-60]
l853: mov R2, #44
l854: strEQB R4, [sp, -R2]
l855: strB R9, [sp, #-64]
l856: mov R4, #69
l857: strB R1, [sp, -R4]
l858: strGEB R10, [sp, #-6]
l859: strB R12, [sp, #-4]
l860: strB R5, [sp, #-64]
l861: strB R7, [sp, #-50]
l862: mov R2, #46
l863: strVCB R1, [sp, -R2]
l864: mov R14, #4
l865: strLTB R0, [sp, -R14]
l866: mov R14, #62
l867: strVCB R11, [sp, -R14]
l868: mov R7, #16
l869: strB R1, [sp, -R7]
l870: strB R6, [sp, #-78]
l871: strHIB R12, [sp, #-20]
l872: mov R7, #49
l873: strB R1, [sp, -R7]
l874: strB R11, [sp, #-67]
l875: mov R3, #34
l876: strEQB R10, [sp, -R3]
l877: mov R8, #65
l878: strPLB R1, [sp, -R8]
l879: strB R1, [sp, #-75]
l880: mov R7, #24
l881: strLSB R5, [sp, -R7]
l882: mov R6, #56
l883: strMIB R12, [sp, -R6]
l884: strB R11, [sp, #-78]
l885: strVSB R10, [sp, #-8]
l886: strMIB R6, [sp, #-28]
l887: mov R7, #29
l888: strB R6, [sp, -R7]
l889: mov R11, #29
l890: strMIB R5, [sp, -R11]
l891: mov R14, #19
l892: strPLB R7, [sp, -R14]
l893: strB R6, [sp, #-42]
l894: strNEB R2, [sp, #-75]
l895: mov R14, #15
l896: strGTB R9, [sp, -R14]
l897: strB R8, [sp, #-38]
l898: strLEB R7, [sp, #-2]
l899: mov R8, #42
l900: strMIB R4, [sp, -R8]
l901: strB R5, [sp, #-28]
l902: mov R12, #55
l903: strB R1, [sp, -R12]
l904: strLSB R11, [sp, #-45]
l905: mov R11, #6
l906: strB R8, [sp, -R11]
l907: strB R10, [sp, #-60]
l908: mov R10, #16
l909: strNEB R0, [sp, -R10]
l910: mov R3, #73
l911: strB R9, [sp, -R3]
l912: strB R10, [sp, #-63]
l913: mov R2, #43
l914: strVCB R14, [sp, -R2]
l915: strB R10, [sp, #-33]
l916: mov R9, #37
l917: strMIB R4, [sp, -R9]
l918: strPLB R1, [sp, #-21]
l919: mov R12, #74
l920: strB R0, [sp, -R12]
l921: mov R1, #27
l922: strEQB R8, [sp, -R1]
l923: mov R10, #37
l924: strGEB R4, [sp, -R10]
l925: strPLB R8, [sp, #-40]
l926: mov R0, #33
l927: strB R12, [sp, -R0]
l928: strB R5, [sp, #-45]
l929: mov R10, #63
l930: strB R4, [sp, -R10]
l931: strLSB R7, [sp, #-67]
l932: mov R14, #78
l933: strLSB R8, [sp, -R14]
l934: mov R1, #34
l935: strB R2, [sp, -R1]
l936: mov R3, #27
l937: strLTB R14, [sp, -R3]
l938: strMIB R5, [sp, #-48]
l939: strMIB R3, [sp, #-17]
l940: mov R2, #14
l941: strB R3, [sp, -R2]
l942: strHIB R10, [sp, #-75]
l943: mov R9, #7
l944: strGEB R2, [sp, -R9]
l945: mov R2, #1
l946: strHIB R4, [sp, -R2]
l947: strB R11, [sp, #-20]
l948: mov R4, #44
l949: strEQB R9, [sp, -R4]
l950: mov R0, #26
l951: strLSB R5, [sp, -R0]
l952: strCSB R10, [sp, #-18]
l953: strLTB R7, [sp, #-66]
l954: strPLB R1, [sp, #-52]
l955: strB R6, [sp, #-9]
l956: mov R4, #71
l957: strLTB R0, [sp, -R4]
l958: strMIB R4, [sp, #-56]
l959: mov R4, #53
l960: strVSB R11, [sp, -R4]
l961: strGEB R1, [sp, #-23]
l962: mov R2, #65
l963: strCCB R10, [sp, -R2]
l964: strB R9, [sp, #-77]
l965: strLTB R9, [sp, #-15]
l966: mov R10, #56
l967: strGTB R2, [sp, -R10]
l968: mov R7, #1
l969: strEQB R2, [sp, -R7]
l970: mov R10, #37
l971: strB R6, [sp, -R10]
l972: mov R7, #51
l973: strCSB R11, [sp, -R7]
l974: strCCB R7, [sp, #-4]
l975: mov R7, #36
l976: strB R7, [sp, -R7]
l977: mov R0, #77
l978: strVSB R2, [sp, -R0]
l979: strVSB R3, [sp, #-80]
l980: strNEB R5, [sp, #-7]
l981: mov R0, #38
l982: strGEB R1, [sp, -R0]
l983: strGEB R6, [sp, #-56]
l984: strLTB R1, [sp, #-11]
l985: mov R12, #27
l986: strCSB R12, [sp, -R12]
l987: strLSB R10, [sp, #-2]
l988: mov R10, #20
l989: strMIB R2, [sp, -R10]
l990: mov R5, #76
l991: strB R14, [sp, -R5]
l992: mov R9, #59
l993: strGTB R6, [sp, -R9]
l994: strB R6, [sp, #-43]
l995: strB R6, [sp, #-72]
l996: mov R10, #30
l997: strLSB R9, [sp, -R10]
l998: strB R12, [sp, #-6]
l999: strB R7, [sp, #-32]
l1000: mov R11, #43
l1001: strB R12, [sp, -R11]
end: b end

