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
val1: .word 1435378858
next1:ldr R2, val2
b next2
val2: .word 2430918438
next2:ldr R3, val3
b next3
val3: .word 3514318796
next3:ldr R4, val4
b next4
val4: .word 2529040578
next4:ldr R5, val5
b next5
val5: .word 3102471566
next5:ldr R6, val6
b next6
val6: .word 1222655053
next6:ldr R7, val7
b next7
val7: .word 304400156
next7:ldr R8, val8
b next8
val8: .word 3911638108
next8:ldr R9, val9
b next9
val9: .word 1735553096
next9:ldr R10, val10
b next10
val10: .word 103732313
next10:ldr R11, val11
b next11
val11: .word 254237629
next11:ldr R12, val12
b next12
val12: .word 2784106168
next12:ldr R14, val14
b next14
val14: .word 4042626169

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 1436111900
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 2932932581
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 1195340732
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 204137046
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 2376120836
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 2154445013
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 1781578361
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 17311478
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 615865782
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 1445499847
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 1354547854
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 795342311
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 3321750225
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 703610198
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 1076203544
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 4278368688
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 1336441512
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 588345199
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 4155939105
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 787887091
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 1374142582
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: mov R4, #76
l2: ldrNEsb R7, [sp, -R4]
l3: ldrCSsb R7, [sp, #-11]
l4: ldrsb R5, [sp, #-31]
l5: ldrsb R2, [sp, #-16]
l6: mov R6, #25
l7: ldrCSsb R10, [sp, -R6]
l8: mov R7, #79
l9: ldrsb R9, [sp, -R7]
l10: mov R6, #54
l11: ldrLEsb R8, [sp, -R6]
l12: mov R0, #79
l13: ldrLSsb R4, [sp, -R0]
l14: mov R3, #35
l15: ldrsb R4, [sp, -R3]
l16: ldrCCsb R10, [sp, #-49]
l17: ldrEQsb R4, [sp, #-47]
l18: ldrLTsb R4, [sp, #-21]
l19: ldrMIsb R1, [sp, #-35]
l20: mov R10, #77
l21: ldrsb R10, [sp, -R10]
l22: ldrVCsb R2, [sp, #-32]
l23: ldrsb R5, [sp, #-23]
l24: ldrsb R1, [sp, #-66]
l25: mov R12, #20
l26: ldrsb R8, [sp, -R12]
l27: mov R1, #64
l28: ldrsb R10, [sp, -R1]
l29: mov R7, #10
l30: ldrGEsb R1, [sp, -R7]
l31: ldrPLsb R4, [sp, #-69]
l32: ldrNEsb R2, [sp, #-49]
l33: mov R2, #48
l34: ldrsb R8, [sp, -R2]
l35: ldrsb R0, [sp, #-49]
l36: ldrLSsb R7, [sp, #-55]
l37: mov R0, #23
l38: ldrLEsb R5, [sp, -R0]
l39: mov R6, #38
l40: ldrMIsb R0, [sp, -R6]
l41: ldrsb R7, [sp, #-62]
l42: mov R9, #58
l43: ldrVSsb R3, [sp, -R9]
l44: ldrNEsb R0, [sp, #-53]
l45: mov R10, #26
l46: ldrsb R0, [sp, -R10]
l47: mov R1, #73
l48: ldrsb R3, [sp, -R1]
l49: ldrsb R10, [sp, #-35]
l50: mov R3, #8
l51: ldrsb R9, [sp, -R3]
l52: mov R9, #40
l53: ldrCCsb R12, [sp, -R9]
l54: mov R2, #68
l55: ldrEQsb R6, [sp, -R2]
l56: mov R14, #13
l57: ldrVCsb R9, [sp, -R14]
l58: mov R3, #55
l59: ldrEQsb R7, [sp, -R3]
l60: mov R1, #38
l61: ldrsb R11, [sp, -R1]
l62: ldrsb R4, [sp, #-20]
l63: mov R7, #47
l64: ldrsb R12, [sp, -R7]
l65: mov R14, #57
l66: ldrEQsb R9, [sp, -R14]
l67: mov R9, #32
l68: ldrsb R7, [sp, -R9]
l69: mov R12, #22
l70: ldrGEsb R7, [sp, -R12]
l71: ldrHIsb R7, [sp, #-37]
l72: ldrLSsb R7, [sp, #-43]
l73: ldrsb R2, [sp, #-11]
l74: mov R10, #32
l75: ldrsb R1, [sp, -R10]
l76: ldrLSsb R9, [sp, #-65]
l77: mov R10, #12
l78: ldrEQsb R7, [sp, -R10]
l79: ldrMIsb R11, [sp, #-79]
l80: mov R1, #11
l81: ldrsb R9, [sp, -R1]
l82: mov R12, #65
l83: ldrsb R14, [sp, -R12]
l84: ldrHIsb R4, [sp, #-66]
l85: ldrVCsb R11, [sp, #-11]
l86: ldrsb R14, [sp, #-73]
l87: ldrCSsb R4, [sp, #-70]
l88: mov R10, #48
l89: ldrVSsb R5, [sp, -R10]
l90: mov R12, #56
l91: ldrsb R3, [sp, -R12]
l92: ldrsb R12, [sp, #-8]
l93: ldrsb R8, [sp, #-68]
l94: ldrGTsb R4, [sp, #-46]
l95: ldrsb R3, [sp, #-57]
l96: ldrVSsb R14, [sp, #-14]
l97: mov R1, #43
l98: ldrCCsb R8, [sp, -R1]
l99: mov R12, #56
l100: ldrNEsb R4, [sp, -R12]
l101: ldrLSsb R9, [sp, #-61]
l102: ldrLSsb R12, [sp, #-64]
l103: mov R8, #46
l104: ldrsb R14, [sp, -R8]
l105: ldrLEsb R12, [sp, #-8]
l106: mov R8, #51
l107: ldrsb R3, [sp, -R8]
l108: mov R14, #51
l109: ldrsb R6, [sp, -R14]
l110: mov R6, #58
l111: ldrsb R12, [sp, -R6]
l112: ldrGEsb R12, [sp, #-36]
l113: ldrsb R6, [sp, #-45]
l114: mov R10, #54
l115: ldrLSsb R4, [sp, -R10]
l116: mov R7, #55
l117: ldrsb R11, [sp, -R7]
l118: mov R3, #61
l119: ldrGTsb R4, [sp, -R3]
l120: mov R2, #56
l121: ldrCSsb R4, [sp, -R2]
l122: mov R8, #77
l123: ldrMIsb R8, [sp, -R8]
l124: ldrsb R3, [sp, #-18]
l125: ldrPLsb R9, [sp, #-38]
l126: mov R6, #15
l127: ldrVSsb R8, [sp, -R6]
l128: ldrsb R11, [sp, #-19]
l129: ldrLSsb R7, [sp, #-53]
l130: ldrGTsb R14, [sp, #-77]
l131: mov R2, #62
l132: ldrVCsb R11, [sp, -R2]
l133: mov R3, #31
l134: ldrLTsb R5, [sp, -R3]
l135: ldrsb R1, [sp, #-30]
l136: mov R2, #33
l137: ldrLSsb R1, [sp, -R2]
l138: mov R3, #25
l139: ldrPLsb R4, [sp, -R3]
l140: mov R0, #69
l141: ldrsb R7, [sp, -R0]
l142: ldrsb R1, [sp, #-47]
l143: ldrsb R2, [sp, #-17]
l144: ldrsb R0, [sp, #-11]
l145: mov R1, #80
l146: ldrVCsb R14, [sp, -R1]
l147: mov R9, #67
l148: ldrVCsb R5, [sp, -R9]
l149: ldrsb R6, [sp, #-71]
l150: ldrGEsb R4, [sp, #-65]
l151: mov R0, #77
l152: ldrEQsb R8, [sp, -R0]
l153: mov R12, #21
l154: ldrMIsb R4, [sp, -R12]
l155: ldrVSsb R14, [sp, #-54]
l156: ldrsb R4, [sp, #-51]
l157: mov R3, #33
l158: ldrGEsb R8, [sp, -R3]
l159: mov R14, #14
l160: ldrEQsb R9, [sp, -R14]
l161: ldrVSsb R8, [sp, #-55]
l162: ldrCCsb R11, [sp, #-22]
l163: mov R2, #27
l164: ldrsb R8, [sp, -R2]
l165: ldrMIsb R8, [sp, #-53]
l166: ldrsb R11, [sp, #-53]
l167: mov R12, #53
l168: ldrLSsb R6, [sp, -R12]
l169: ldrsb R2, [sp, #-49]
l170: mov R3, #72
l171: ldrsb R11, [sp, -R3]
l172: mov R2, #18
l173: ldrsb R8, [sp, -R2]
l174: mov R10, #36
l175: ldrsb R11, [sp, -R10]
l176: ldrNEsb R9, [sp, #-39]
l177: ldrHIsb R7, [sp, #-16]
l178: ldrEQsb R8, [sp, #-74]
l179: mov R5, #19
l180: ldrVSsb R4, [sp, -R5]
l181: mov R8, #76
l182: ldrLTsb R4, [sp, -R8]
l183: mov R12, #67
l184: ldrsb R2, [sp, -R12]
l185: ldrsb R0, [sp, #-79]
l186: mov R6, #37
l187: ldrVCsb R1, [sp, -R6]
l188: ldrVSsb R3, [sp, #-74]
l189: ldrCCsb R2, [sp, #-18]
l190: ldrsb R4, [sp, #-30]
l191: mov R10, #5
l192: ldrsb R2, [sp, -R10]
l193: mov R3, #31
l194: ldrsb R2, [sp, -R3]
l195: mov R0, #76
l196: ldrsb R4, [sp, -R0]
l197: ldrGEsb R7, [sp, #-67]
l198: ldrsb R5, [sp, #-41]
l199: ldrHIsb R12, [sp, #-51]
l200: ldrGEsb R0, [sp, #-75]
l201: mov R7, #46
l202: ldrsb R10, [sp, -R7]
l203: ldrsb R2, [sp, #-11]
l204: mov R11, #8
l205: ldrVCsb R12, [sp, -R11]
l206: mov R4, #67
l207: ldrCCsb R3, [sp, -R4]
l208: ldrCCsb R7, [sp, #-40]
l209: mov R7, #14
l210: ldrMIsb R6, [sp, -R7]
l211: mov R6, #70
l212: ldrPLsb R10, [sp, -R6]
l213: ldrsb R8, [sp, #-76]
l214: ldrsb R10, [sp, #-39]
l215: ldrsb R10, [sp, #-29]
l216: ldrsb R11, [sp, #-18]
l217: mov R5, #45
l218: ldrsb R3, [sp, -R5]
l219: mov R14, #39
l220: ldrNEsb R14, [sp, -R14]
l221: ldrsb R14, [sp, #-65]
l222: mov R8, #23
l223: ldrEQsb R7, [sp, -R8]
l224: ldrsb R9, [sp, #-8]
l225: ldrEQsb R11, [sp, #-62]
l226: ldrGTsb R4, [sp, #-58]
l227: ldrHIsb R7, [sp, #-61]
l228: ldrCCsb R9, [sp, #-14]
l229: ldrsb R11, [sp, #-60]
l230: mov R14, #44
l231: ldrsb R10, [sp, -R14]
l232: mov R8, #72
l233: ldrsb R6, [sp, -R8]
l234: mov R3, #70
l235: ldrMIsb R1, [sp, -R3]
l236: mov R14, #47
l237: ldrsb R3, [sp, -R14]
l238: mov R8, #72
l239: ldrsb R4, [sp, -R8]
l240: ldrGTsb R8, [sp, #-32]
l241: ldrsb R10, [sp, #-55]
l242: ldrsb R3, [sp, #-70]
l243: ldrsb R7, [sp, #-71]
l244: ldrsb R5, [sp, #-8]
l245: mov R0, #73
l246: ldrEQsb R5, [sp, -R0]
l247: ldrEQsb R14, [sp, #-18]
l248: mov R1, #14
l249: ldrNEsb R11, [sp, -R1]
l250: ldrGEsb R1, [sp, #-43]
l251: ldrsb R1, [sp, #-48]
l252: mov R12, #49
l253: ldrPLsb R9, [sp, -R12]
l254: mov R4, #61
l255: ldrsb R11, [sp, -R4]
l256: ldrPLsb R6, [sp, #-8]
l257: mov R3, #70
l258: ldrLTsb R5, [sp, -R3]
l259: mov R3, #9
l260: ldrLSsb R10, [sp, -R3]
l261: mov R7, #27
l262: ldrNEsb R4, [sp, -R7]
l263: mov R1, #8
l264: ldrsb R8, [sp, -R1]
l265: mov R9, #60
l266: ldrsb R0, [sp, -R9]
l267: ldrLSsb R2, [sp, #-19]
l268: ldrLSsb R6, [sp, #-34]
l269: ldrLSsb R9, [sp, #-50]
l270: mov R9, #55
l271: ldrVSsb R14, [sp, -R9]
l272: mov R6, #20
l273: ldrGTsb R11, [sp, -R6]
l274: mov R3, #80
l275: ldrsb R12, [sp, -R3]
l276: mov R6, #36
l277: ldrsb R10, [sp, -R6]
l278: mov R8, #17
l279: ldrGEsb R4, [sp, -R8]
l280: ldrEQsb R4, [sp, #-39]
l281: ldrHIsb R8, [sp, #-18]
l282: mov R7, #54
l283: ldrsb R5, [sp, -R7]
l284: ldrsb R8, [sp, #-55]
l285: ldrCSsb R0, [sp, #-37]
l286: mov R12, #7
l287: ldrVCsb R14, [sp, -R12]
l288: mov R6, #47
l289: ldrsb R10, [sp, -R6]
l290: mov R9, #76
l291: ldrsb R5, [sp, -R9]
l292: mov R9, #28
l293: ldrCSsb R7, [sp, -R9]
l294: ldrCSsb R7, [sp, #-14]
l295: ldrsb R3, [sp, #-33]
l296: ldrsb R9, [sp, #-51]
l297: ldrNEsb R1, [sp, #-26]
l298: ldrGEsb R2, [sp, #-67]
l299: mov R5, #69
l300: ldrCCsb R3, [sp, -R5]
l301: mov R2, #19
l302: ldrsb R11, [sp, -R2]
l303: mov R14, #38
l304: ldrCCsb R12, [sp, -R14]
l305: ldrHIsb R1, [sp, #-27]
l306: mov R9, #27
l307: ldrEQsb R14, [sp, -R9]
l308: ldrsb R12, [sp, #-52]
l309: ldrsb R12, [sp, #-55]
l310: ldrEQsb R5, [sp, #-41]
l311: mov R3, #40
l312: ldrsb R0, [sp, -R3]
l313: ldrsb R2, [sp, #-14]
l314: mov R14, #64
l315: ldrLTsb R10, [sp, -R14]
l316: mov R5, #65
l317: ldrLEsb R5, [sp, -R5]
l318: mov R10, #38
l319: ldrsb R12, [sp, -R10]
l320: mov R6, #22
l321: ldrsb R12, [sp, -R6]
l322: ldrCSsb R14, [sp, #-67]
l323: ldrVSsb R11, [sp, #-10]
l324: mov R6, #30
l325: ldrMIsb R1, [sp, -R6]
l326: ldrCSsb R12, [sp, #-23]
l327: ldrsb R2, [sp, #-33]
l328: mov R1, #76
l329: ldrGEsb R8, [sp, -R1]
l330: mov R7, #42
l331: ldrsb R7, [sp, -R7]
l332: mov R10, #23
l333: ldrsb R10, [sp, -R10]
l334: ldrEQsb R9, [sp, #-41]
l335: ldrLEsb R12, [sp, #-55]
l336: mov R8, #13
l337: ldrGEsb R6, [sp, -R8]
l338: mov R4, #49
l339: ldrsb R8, [sp, -R4]
l340: mov R2, #10
l341: ldrCCsb R5, [sp, -R2]
l342: ldrCSsb R10, [sp, #-72]
l343: ldrVCsb R6, [sp, #-27]
l344: mov R9, #67
l345: ldrLEsb R14, [sp, -R9]
l346: mov R2, #15
l347: ldrLTsb R5, [sp, -R2]
l348: ldrVCsb R14, [sp, #-48]
l349: mov R9, #61
l350: ldrGTsb R11, [sp, -R9]
l351: mov R0, #78
l352: ldrNEsb R1, [sp, -R0]
l353: mov R10, #40
l354: ldrCCsb R11, [sp, -R10]
l355: mov R2, #76
l356: ldrPLsb R0, [sp, -R2]
l357: mov R9, #57
l358: ldrsb R8, [sp, -R9]
l359: ldrCSsb R3, [sp, #-5]
l360: ldrsb R6, [sp, #-53]
l361: ldrVCsb R14, [sp, #-76]
l362: ldrCCsb R5, [sp, #-20]
l363: mov R7, #53
l364: ldrGTsb R14, [sp, -R7]
l365: ldrNEsb R1, [sp, #-72]
l366: mov R8, #21
l367: ldrGEsb R5, [sp, -R8]
l368: mov R12, #19
l369: ldrPLsb R8, [sp, -R12]
l370: mov R3, #19
l371: ldrGTsb R0, [sp, -R3]
l372: ldrCSsb R14, [sp, #-26]
l373: mov R6, #63
l374: ldrsb R14, [sp, -R6]
l375: mov R4, #12
l376: ldrsb R14, [sp, -R4]
l377: ldrVSsb R2, [sp, #-43]
l378: mov R8, #15
l379: ldrsb R6, [sp, -R8]
l380: ldrsb R7, [sp, #-43]
l381: mov R10, #59
l382: ldrsb R2, [sp, -R10]
l383: ldrsb R11, [sp, #-67]
l384: mov R9, #11
l385: ldrsb R8, [sp, -R9]
l386: ldrHIsb R4, [sp, #-58]
l387: mov R14, #80
l388: ldrCSsb R2, [sp, -R14]
l389: ldrLEsb R9, [sp, #-72]
l390: mov R14, #52
l391: ldrsb R3, [sp, -R14]
l392: ldrsb R5, [sp, #-68]
l393: mov R10, #35
l394: ldrsb R1, [sp, -R10]
l395: ldrsb R7, [sp, #-38]
l396: mov R8, #68
l397: ldrMIsb R9, [sp, -R8]
l398: mov R2, #29
l399: ldrGTsb R9, [sp, -R2]
l400: ldrHIsb R7, [sp, #-43]
l401: ldrPLsb R3, [sp, #-49]
l402: mov R9, #59
l403: ldrEQsb R1, [sp, -R9]
l404: ldrsb R6, [sp, #-13]
l405: ldrLEsb R6, [sp, #-38]
l406: ldrsb R5, [sp, #-25]
l407: mov R9, #80
l408: ldrsb R2, [sp, -R9]
l409: mov R12, #17
l410: ldrPLsb R9, [sp, -R12]
l411: mov R14, #59
l412: ldrGTsb R14, [sp, -R14]
l413: mov R7, #71
l414: ldrPLsb R5, [sp, -R7]
l415: ldrHIsb R12, [sp, #-51]
l416: ldrsb R2, [sp, #-37]
l417: ldrsb R12, [sp, #-29]
l418: mov R10, #15
l419: ldrCCsb R8, [sp, -R10]
l420: mov R1, #40
l421: ldrsb R0, [sp, -R1]
l422: ldrGTsb R0, [sp, #-73]
l423: ldrsb R10, [sp, #-57]
l424: mov R4, #60
l425: ldrsb R10, [sp, -R4]
l426: mov R8, #45
l427: ldrsb R6, [sp, -R8]
l428: ldrsb R10, [sp, #-44]
l429: mov R0, #35
l430: ldrsb R14, [sp, -R0]
l431: ldrCSsb R10, [sp, #-8]
l432: ldrsb R4, [sp, #-26]
l433: mov R2, #74
l434: ldrVSsb R7, [sp, -R2]
l435: mov R7, #35
l436: ldrsb R5, [sp, -R7]
l437: mov R11, #23
l438: ldrCSsb R7, [sp, -R11]
l439: ldrNEsb R8, [sp, #-39]
l440: ldrsb R5, [sp, #-62]
l441: mov R0, #70
l442: ldrVSsb R0, [sp, -R0]
l443: ldrMIsb R14, [sp, #-76]
l444: ldrNEsb R7, [sp, #-70]
l445: ldrMIsb R4, [sp, #-5]
l446: mov R7, #26
l447: ldrsb R11, [sp, -R7]
l448: mov R5, #24
l449: ldrCSsb R9, [sp, -R5]
l450: mov R4, #55
l451: ldrLTsb R3, [sp, -R4]
l452: mov R11, #5
l453: ldrsb R12, [sp, -R11]
l454: ldrNEsb R5, [sp, #-36]
l455: mov R8, #61
l456: ldrsb R8, [sp, -R8]
l457: mov R10, #26
l458: ldrLTsb R5, [sp, -R10]
l459: ldrsb R8, [sp, #-71]
l460: mov R7, #15
l461: ldrMIsb R2, [sp, -R7]
l462: mov R4, #54
l463: ldrLTsb R11, [sp, -R4]
l464: mov R2, #24
l465: ldrHIsb R1, [sp, -R2]
l466: ldrMIsb R14, [sp, #-44]
l467: mov R2, #75
l468: ldrVCsb R0, [sp, -R2]
l469: ldrGTsb R6, [sp, #-51]
l470: ldrsb R1, [sp, #-41]
l471: ldrGTsb R14, [sp, #-65]
l472: ldrsb R4, [sp, #-24]
l473: mov R8, #55
l474: ldrsb R12, [sp, -R8]
l475: ldrLSsb R1, [sp, #-63]
l476: ldrsb R10, [sp, #-8]
l477: ldrsb R5, [sp, #-52]
l478: ldrMIsb R0, [sp, #-25]
l479: ldrGTsb R14, [sp, #-71]
l480: mov R6, #33
l481: ldrsb R3, [sp, -R6]
l482: mov R10, #27
l483: ldrCCsb R11, [sp, -R10]
l484: ldrMIsb R10, [sp, #-22]
l485: ldrNEsb R12, [sp, #-7]
l486: mov R10, #77
l487: ldrsb R7, [sp, -R10]
l488: ldrGTsb R9, [sp, #-57]
l489: ldrMIsb R10, [sp, #-68]
l490: ldrsb R14, [sp, #-43]
l491: ldrsb R10, [sp, #-26]
l492: ldrGEsb R6, [sp, #-62]
l493: ldrsb R7, [sp, #-52]
l494: mov R9, #42
l495: ldrsb R7, [sp, -R9]
l496: ldrsb R9, [sp, #-14]
l497: ldrMIsb R1, [sp, #-7]
l498: mov R5, #20
l499: ldrsb R5, [sp, -R5]
l500: ldrsb R10, [sp, #-76]
l501: mov R8, #52
l502: ldrsb R3, [sp, -R8]
l503: ldrCCsb R5, [sp, #-52]
l504: mov R6, #31
l505: ldrsb R10, [sp, -R6]
l506: ldrVCsb R5, [sp, #-43]
l507: mov R2, #76
l508: ldrsb R14, [sp, -R2]
l509: ldrMIsb R0, [sp, #-32]
l510: mov R10, #14
l511: ldrLEsb R5, [sp, -R10]
l512: ldrVCsb R0, [sp, #-38]
l513: ldrsb R10, [sp, #-67]
l514: ldrGTsb R8, [sp, #-67]
l515: ldrsb R9, [sp, #-75]
l516: mov R14, #80
l517: ldrLSsb R12, [sp, -R14]
l518: ldrsb R11, [sp, #-29]
l519: mov R5, #36
l520: ldrCSsb R11, [sp, -R5]
l521: mov R6, #9
l522: ldrVSsb R7, [sp, -R6]
l523: mov R1, #64
l524: ldrsb R14, [sp, -R1]
l525: mov R0, #10
l526: ldrMIsb R0, [sp, -R0]
l527: mov R12, #9
l528: ldrsb R0, [sp, -R12]
l529: mov R14, #53
l530: ldrLTsb R10, [sp, -R14]
l531: ldrsb R1, [sp, #-55]
l532: mov R5, #39
l533: ldrsb R12, [sp, -R5]
l534: mov R9, #35
l535: ldrsb R12, [sp, -R9]
l536: mov R1, #63
l537: ldrPLsb R2, [sp, -R1]
l538: ldrEQsb R1, [sp, #-62]
l539: ldrsb R1, [sp, #-49]
l540: ldrNEsb R6, [sp, #-57]
l541: mov R11, #63
l542: ldrPLsb R4, [sp, -R11]
l543: ldrLSsb R6, [sp, #-33]
l544: ldrsb R10, [sp, #-52]
l545: ldrsb R7, [sp, #-41]
l546: ldrsb R11, [sp, #-65]
l547: mov R12, #54
l548: ldrsb R7, [sp, -R12]
l549: ldrLEsb R9, [sp, #-64]
l550: ldrsb R1, [sp, #-23]
l551: mov R8, #26
l552: ldrVCsb R1, [sp, -R8]
l553: mov R2, #27
l554: ldrsb R14, [sp, -R2]
l555: ldrNEsb R7, [sp, #-58]
l556: mov R1, #20
l557: ldrCSsb R0, [sp, -R1]
l558: ldrsb R3, [sp, #-73]
l559: ldrHIsb R0, [sp, #-76]
l560: mov R5, #13
l561: ldrsb R0, [sp, -R5]
l562: mov R7, #14
l563: ldrsb R10, [sp, -R7]
l564: ldrsb R1, [sp, #-32]
l565: mov R5, #31
l566: ldrsb R11, [sp, -R5]
l567: ldrsb R10, [sp, #-5]
l568: mov R10, #60
l569: ldrHIsb R3, [sp, -R10]
l570: ldrCSsb R10, [sp, #-70]
l571: ldrsb R11, [sp, #-18]
l572: mov R6, #52
l573: ldrsb R7, [sp, -R6]
l574: ldrCSsb R14, [sp, #-5]
l575: ldrsb R6, [sp, #-57]
l576: ldrsb R5, [sp, #-22]
l577: mov R4, #48
l578: ldrsb R10, [sp, -R4]
l579: mov R8, #59
l580: ldrsb R3, [sp, -R8]
l581: mov R2, #63
l582: ldrsb R9, [sp, -R2]
l583: ldrsb R10, [sp, #-33]
l584: ldrsb R9, [sp, #-77]
l585: ldrGEsb R4, [sp, #-25]
l586: mov R0, #11
l587: ldrsb R3, [sp, -R0]
l588: ldrsb R4, [sp, #-44]
l589: mov R8, #45
l590: ldrCCsb R12, [sp, -R8]
l591: mov R12, #44
l592: ldrEQsb R12, [sp, -R12]
l593: ldrsb R7, [sp, #-41]
l594: mov R2, #34
l595: ldrCSsb R4, [sp, -R2]
l596: mov R10, #47
l597: ldrsb R5, [sp, -R10]
l598: ldrsb R8, [sp, #-64]
l599: mov R8, #15
l600: ldrsb R14, [sp, -R8]
l601: ldrEQsb R0, [sp, #-25]
l602: mov R4, #36
l603: ldrVSsb R7, [sp, -R4]
l604: mov R6, #70
l605: ldrLSsb R2, [sp, -R6]
l606: mov R8, #53
l607: ldrLSsb R4, [sp, -R8]
l608: ldrVCsb R4, [sp, #-65]
l609: mov R3, #37
l610: ldrsb R12, [sp, -R3]
l611: ldrsb R5, [sp, #-34]
l612: ldrGEsb R14, [sp, #-10]
l613: ldrsb R3, [sp, #-47]
l614: mov R4, #52
l615: ldrGEsb R14, [sp, -R4]
l616: mov R8, #19
l617: ldrCCsb R8, [sp, -R8]
l618: ldrMIsb R5, [sp, #-35]
l619: ldrVSsb R7, [sp, #-70]
l620: mov R5, #17
l621: ldrCSsb R11, [sp, -R5]
l622: mov R6, #44
l623: ldrVCsb R5, [sp, -R6]
l624: ldrsb R3, [sp, #-42]
l625: ldrsb R9, [sp, #-55]
l626: mov R10, #58
l627: ldrHIsb R2, [sp, -R10]
l628: mov R2, #6
l629: ldrCSsb R14, [sp, -R2]
l630: mov R11, #79
l631: ldrsb R3, [sp, -R11]
l632: mov R3, #55
l633: ldrMIsb R5, [sp, -R3]
l634: mov R6, #47
l635: ldrNEsb R2, [sp, -R6]
l636: ldrVSsb R1, [sp, #-19]
l637: mov R7, #70
l638: ldrGEsb R3, [sp, -R7]
l639: ldrsb R7, [sp, #-30]
l640: mov R10, #78
l641: ldrHIsb R3, [sp, -R10]
l642: ldrCCsb R4, [sp, #-9]
l643: ldrsb R10, [sp, #-30]
l644: mov R9, #7
l645: ldrCCsb R11, [sp, -R9]
l646: mov R1, #43
l647: ldrsb R1, [sp, -R1]
l648: mov R1, #77
l649: ldrsb R5, [sp, -R1]
l650: ldrPLsb R10, [sp, #-40]
l651: mov R10, #56
l652: ldrNEsb R7, [sp, -R10]
l653: mov R2, #22
l654: ldrsb R7, [sp, -R2]
l655: ldrsb R0, [sp, #-40]
l656: ldrsb R6, [sp, #-50]
l657: mov R4, #15
l658: ldrCSsb R3, [sp, -R4]
l659: mov R7, #50
l660: ldrsb R8, [sp, -R7]
l661: ldrNEsb R14, [sp, #-48]
l662: ldrsb R11, [sp, #-62]
l663: mov R10, #22
l664: ldrVSsb R12, [sp, -R10]
l665: ldrsb R1, [sp, #-48]
l666: mov R5, #17
l667: ldrLEsb R3, [sp, -R5]
l668: ldrsb R3, [sp, #-18]
l669: ldrLTsb R9, [sp, #-68]
l670: mov R12, #6
l671: ldrsb R8, [sp, -R12]
l672: ldrsb R10, [sp, #-34]
l673: mov R9, #44
l674: ldrLEsb R5, [sp, -R9]
l675: ldrHIsb R6, [sp, #-18]
l676: ldrsb R4, [sp, #-80]
l677: ldrsb R14, [sp, #-80]
l678: ldrNEsb R0, [sp, #-16]
l679: ldrsb R11, [sp, #-69]
l680: mov R5, #33
l681: ldrsb R5, [sp, -R5]
l682: mov R10, #48
l683: ldrLSsb R0, [sp, -R10]
l684: mov R11, #69
l685: ldrsb R1, [sp, -R11]
l686: ldrsb R1, [sp, #-63]
l687: mov R14, #24
l688: ldrsb R1, [sp, -R14]
l689: mov R7, #24
l690: ldrsb R2, [sp, -R7]
l691: mov R9, #61
l692: ldrGEsb R11, [sp, -R9]
l693: mov R1, #76
l694: ldrLSsb R4, [sp, -R1]
l695: ldrNEsb R0, [sp, #-10]
l696: mov R10, #43
l697: ldrsb R9, [sp, -R10]
l698: mov R2, #28
l699: ldrsb R14, [sp, -R2]
l700: mov R2, #41
l701: ldrEQsb R8, [sp, -R2]
l702: mov R12, #42
l703: ldrsb R12, [sp, -R12]
l704: mov R11, #73
l705: ldrEQsb R2, [sp, -R11]
l706: mov R8, #53
l707: ldrsb R5, [sp, -R8]
l708: ldrLSsb R1, [sp, #-11]
l709: mov R0, #62
l710: ldrCSsb R6, [sp, -R0]
l711: ldrMIsb R5, [sp, #-67]
l712: mov R9, #23
l713: ldrEQsb R5, [sp, -R9]
l714: ldrGTsb R5, [sp, #-38]
l715: ldrsb R10, [sp, #-72]
l716: mov R8, #67
l717: ldrsb R0, [sp, -R8]
l718: mov R14, #22
l719: ldrLTsb R4, [sp, -R14]
l720: mov R7, #13
l721: ldrsb R6, [sp, -R7]
l722: ldrCCsb R8, [sp, #-70]
l723: ldrsb R2, [sp, #-18]
l724: mov R1, #67
l725: ldrGTsb R1, [sp, -R1]
l726: mov R0, #27
l727: ldrVCsb R0, [sp, -R0]
l728: mov R11, #14
l729: ldrGEsb R12, [sp, -R11]
l730: ldrsb R3, [sp, #-73]
l731: ldrVSsb R5, [sp, #-74]
l732: ldrLSsb R6, [sp, #-20]
l733: ldrsb R5, [sp, #-10]
l734: mov R10, #7
l735: ldrLTsb R1, [sp, -R10]
l736: mov R2, #22
l737: ldrsb R7, [sp, -R2]
l738: ldrsb R10, [sp, #-56]
l739: mov R12, #16
l740: ldrNEsb R7, [sp, -R12]
l741: ldrsb R4, [sp, #-25]
l742: ldrLSsb R6, [sp, #-61]
l743: mov R2, #79
l744: ldrsb R0, [sp, -R2]
l745: mov R2, #37
l746: ldrCCsb R5, [sp, -R2]
l747: ldrHIsb R14, [sp, #-33]
l748: ldrGTsb R1, [sp, #-58]
l749: mov R12, #74
l750: ldrCCsb R3, [sp, -R12]
l751: ldrMIsb R6, [sp, #-9]
l752: mov R1, #66
l753: ldrsb R0, [sp, -R1]
l754: mov R7, #20
l755: ldrGEsb R3, [sp, -R7]
l756: ldrCSsb R6, [sp, #-46]
l757: ldrsb R2, [sp, #-14]
l758: mov R3, #66
l759: ldrVCsb R8, [sp, -R3]
l760: mov R9, #29
l761: ldrsb R14, [sp, -R9]
l762: ldrCCsb R0, [sp, #-27]
l763: mov R14, #31
l764: ldrGTsb R3, [sp, -R14]
l765: mov R8, #6
l766: ldrLSsb R7, [sp, -R8]
l767: ldrsb R10, [sp, #-19]
l768: mov R14, #77
l769: ldrHIsb R10, [sp, -R14]
l770: ldrPLsb R11, [sp, #-6]
l771: ldrsb R10, [sp, #-51]
l772: ldrLSsb R7, [sp, #-47]
l773: mov R8, #45
l774: ldrLEsb R3, [sp, -R8]
l775: ldrCSsb R14, [sp, #-52]
l776: ldrsb R6, [sp, #-41]
l777: mov R10, #27
l778: ldrVSsb R4, [sp, -R10]
l779: mov R9, #69
l780: ldrNEsb R5, [sp, -R9]
l781: mov R1, #30
l782: ldrHIsb R6, [sp, -R1]
l783: mov R11, #46
l784: ldrLSsb R12, [sp, -R11]
l785: mov R7, #22
l786: ldrsb R6, [sp, -R7]
l787: ldrVSsb R2, [sp, #-47]
l788: ldrsb R4, [sp, #-74]
l789: mov R11, #55
l790: ldrsb R12, [sp, -R11]
l791: ldrsb R5, [sp, #-48]
l792: mov R3, #34
l793: ldrsb R12, [sp, -R3]
l794: ldrsb R1, [sp, #-62]
l795: ldrPLsb R0, [sp, #-58]
l796: mov R5, #18
l797: ldrsb R3, [sp, -R5]
l798: mov R8, #71
l799: ldrsb R10, [sp, -R8]
l800: ldrsb R4, [sp, #-43]
l801: mov R0, #36
l802: ldrEQsb R12, [sp, -R0]
l803: ldrsb R5, [sp, #-49]
l804: mov R9, #74
l805: ldrHIsb R10, [sp, -R9]
l806: ldrLSsb R6, [sp, #-78]
l807: ldrGTsb R4, [sp, #-31]
l808: mov R4, #60
l809: ldrsb R1, [sp, -R4]
l810: mov R1, #22
l811: ldrVSsb R7, [sp, -R1]
l812: mov R9, #24
l813: ldrsb R2, [sp, -R9]
l814: ldrsb R7, [sp, #-58]
l815: ldrsb R5, [sp, #-52]
l816: mov R8, #69
l817: ldrVCsb R7, [sp, -R8]
l818: ldrsb R12, [sp, #-6]
l819: ldrsb R12, [sp, #-8]
l820: ldrsb R4, [sp, #-56]
l821: ldrEQsb R8, [sp, #-52]
l822: mov R11, #30
l823: ldrVCsb R14, [sp, -R11]
l824: mov R14, #54
l825: ldrVCsb R6, [sp, -R14]
l826: mov R12, #51
l827: ldrsb R1, [sp, -R12]
l828: mov R2, #63
l829: ldrGEsb R0, [sp, -R2]
l830: ldrsb R9, [sp, #-47]
l831: mov R1, #21
l832: ldrMIsb R9, [sp, -R1]
l833: mov R10, #64
l834: ldrNEsb R1, [sp, -R10]
l835: ldrsb R1, [sp, #-57]
l836: mov R2, #15
l837: ldrsb R7, [sp, -R2]
l838: ldrsb R0, [sp, #-18]
l839: mov R1, #54
l840: ldrsb R2, [sp, -R1]
l841: ldrsb R5, [sp, #-70]
l842: ldrGEsb R12, [sp, #-21]
l843: ldrsb R8, [sp, #-41]
l844: ldrMIsb R11, [sp, #-32]
l845: mov R10, #55
l846: ldrPLsb R4, [sp, -R10]
l847: mov R4, #34
l848: ldrsb R0, [sp, -R4]
l849: ldrsb R9, [sp, #-12]
l850: ldrsb R2, [sp, #-54]
l851: ldrEQsb R11, [sp, #-56]
l852: mov R6, #50
l853: ldrGTsb R0, [sp, -R6]
l854: mov R14, #44
l855: ldrLSsb R7, [sp, -R14]
l856: mov R1, #71
l857: ldrGEsb R11, [sp, -R1]
l858: ldrsb R8, [sp, #-22]
l859: mov R0, #9
l860: ldrVCsb R4, [sp, -R0]
l861: ldrsb R7, [sp, #-36]
l862: ldrLEsb R11, [sp, #-5]
l863: ldrsb R6, [sp, #-61]
l864: ldrsb R6, [sp, #-49]
l865: ldrsb R11, [sp, #-49]
l866: mov R14, #47
l867: ldrNEsb R5, [sp, -R14]
l868: mov R4, #39
l869: ldrGEsb R6, [sp, -R4]
l870: ldrsb R4, [sp, #-35]
l871: mov R9, #14
l872: ldrsb R8, [sp, -R9]
l873: ldrsb R5, [sp, #-75]
l874: ldrsb R9, [sp, #-51]
l875: ldrEQsb R9, [sp, #-14]
l876: mov R9, #38
l877: ldrHIsb R6, [sp, -R9]
l878: mov R1, #8
l879: ldrNEsb R6, [sp, -R1]
l880: ldrCCsb R12, [sp, #-72]
l881: mov R5, #29
l882: ldrMIsb R1, [sp, -R5]
l883: mov R4, #65
l884: ldrLTsb R12, [sp, -R4]
l885: ldrsb R0, [sp, #-7]
l886: mov R14, #15
l887: ldrsb R1, [sp, -R14]
l888: ldrGEsb R0, [sp, #-17]
l889: mov R7, #36
l890: ldrsb R10, [sp, -R7]
l891: ldrsb R4, [sp, #-23]
l892: mov R5, #52
l893: ldrPLsb R0, [sp, -R5]
l894: mov R10, #12
l895: ldrGTsb R6, [sp, -R10]
l896: ldrsb R10, [sp, #-18]
l897: ldrLTsb R3, [sp, #-19]
l898: ldrPLsb R2, [sp, #-26]
l899: mov R6, #22
l900: ldrsb R7, [sp, -R6]
l901: mov R2, #73
l902: ldrLEsb R7, [sp, -R2]
l903: mov R4, #17
l904: ldrLTsb R4, [sp, -R4]
l905: ldrCSsb R3, [sp, #-52]
l906: ldrLSsb R7, [sp, #-56]
l907: ldrGEsb R9, [sp, #-59]
l908: mov R4, #79
l909: ldrVSsb R8, [sp, -R4]
l910: mov R6, #48
l911: ldrCCsb R5, [sp, -R6]
l912: ldrGTsb R14, [sp, #-68]
l913: ldrsb R11, [sp, #-54]
l914: mov R11, #80
l915: ldrGEsb R12, [sp, -R11]
l916: mov R7, #48
l917: ldrsb R14, [sp, -R7]
l918: ldrVSsb R6, [sp, #-67]
l919: mov R7, #36
l920: ldrGTsb R11, [sp, -R7]
l921: mov R12, #63
l922: ldrGTsb R3, [sp, -R12]
l923: ldrsb R4, [sp, #-14]
l924: mov R12, #40
l925: ldrNEsb R12, [sp, -R12]
l926: mov R12, #24
l927: ldrsb R2, [sp, -R12]
l928: ldrCCsb R8, [sp, #-34]
l929: ldrsb R11, [sp, #-64]
l930: mov R14, #15
l931: ldrsb R14, [sp, -R14]
l932: ldrCSsb R3, [sp, #-30]
l933: mov R2, #45
l934: ldrLSsb R6, [sp, -R2]
l935: ldrNEsb R14, [sp, #-33]
l936: mov R6, #50
l937: ldrsb R10, [sp, -R6]
l938: mov R5, #49
l939: ldrsb R8, [sp, -R5]
l940: ldrVSsb R11, [sp, #-12]
l941: mov R5, #72
l942: ldrCCsb R3, [sp, -R5]
l943: mov R7, #77
l944: ldrNEsb R11, [sp, -R7]
l945: mov R3, #38
l946: ldrsb R12, [sp, -R3]
l947: ldrsb R8, [sp, #-19]
l948: mov R1, #75
l949: ldrGEsb R8, [sp, -R1]
l950: mov R5, #31
l951: ldrCCsb R1, [sp, -R5]
l952: ldrsb R1, [sp, #-77]
l953: mov R1, #18
l954: ldrsb R9, [sp, -R1]
l955: mov R3, #33
l956: ldrsb R0, [sp, -R3]
l957: ldrMIsb R4, [sp, #-68]
l958: mov R10, #74
l959: ldrsb R11, [sp, -R10]
l960: mov R3, #44
l961: ldrMIsb R14, [sp, -R3]
l962: mov R11, #32
l963: ldrsb R5, [sp, -R11]
l964: mov R9, #73
l965: ldrPLsb R7, [sp, -R9]
l966: ldrLSsb R0, [sp, #-40]
l967: ldrCSsb R7, [sp, #-16]
l968: ldrLEsb R5, [sp, #-43]
l969: mov R14, #59
l970: ldrMIsb R0, [sp, -R14]
l971: ldrsb R5, [sp, #-30]
l972: ldrLEsb R2, [sp, #-60]
l973: ldrGTsb R7, [sp, #-18]
l974: mov R3, #69
l975: ldrsb R1, [sp, -R3]
l976: mov R7, #56
l977: ldrCSsb R7, [sp, -R7]
l978: mov R5, #72
l979: ldrsb R8, [sp, -R5]
l980: ldrsb R11, [sp, #-5]
l981: mov R2, #76
l982: ldrsb R14, [sp, -R2]
l983: mov R2, #15
l984: ldrLEsb R14, [sp, -R2]
l985: ldrsb R4, [sp, #-75]
l986: ldrLTsb R14, [sp, #-10]
l987: ldrsb R11, [sp, #-9]
l988: ldrVSsb R1, [sp, #-36]
l989: mov R4, #58
l990: ldrsb R2, [sp, -R4]
l991: mov R1, #73
l992: ldrsb R9, [sp, -R1]
l993: mov R7, #23
l994: ldrCSsb R14, [sp, -R7]
l995: ldrPLsb R7, [sp, #-28]
l996: ldrsb R2, [sp, #-47]
l997: mov R2, #49
l998: ldrPLsb R14, [sp, -R2]
l999: ldrsb R11, [sp, #-63]
l1000: mov R2, #77
l1001: ldrsb R6, [sp, -R2]
end: b end

