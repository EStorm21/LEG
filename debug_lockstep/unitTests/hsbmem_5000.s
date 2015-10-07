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
val1: .word 2144802389
next1:ldr R2, val2
b next2
val2: .word 524108942
next2:ldr R3, val3
b next3
val3: .word 179486806
next3:ldr R4, val4
b next4
val4: .word 3805040236
next4:ldr R5, val5
b next5
val5: .word 3890336249
next5:ldr R6, val6
b next6
val6: .word 2182027418
next6:ldr R7, val7
b next7
val7: .word 542210773
next7:ldr R8, val8
b next8
val8: .word 3106364560
next8:ldr R9, val9
b next9
val9: .word 2855990031
next9:ldr R10, val10
b next10
val10: .word 1353677026
next10:ldr R11, val11
b next11
val11: .word 3715967117
next11:ldr R12, val12
b next12
val12: .word 556764249
next12:ldr R14, val14
b next14
val14: .word 2656897320

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 3043258283
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 3094149666
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 4154398035
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 2410502274
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 2163176577
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 2984253280
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 2365989402
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 3452482926
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3299121710
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 4033072985
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 2077083534
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 3812774839
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 230533960
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 242975160
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 3447644317
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 802362343
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 3847589483
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 1652275412
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 3398672318
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 3660367657
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 1103796663
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: ldrsb R0, [sp, #-32]
l2: ldrHIsb R4, [sp, #-79]
l3: ldrVCsb R3, [sp, #-7]
l4: mov R8, #54
l5: ldrsh R4, [sp, -R8]
l6: mov R11, #27
l7: ldrsb R0, [sp, -R11]
l8: ldrVSsh R6, [sp, #-28]
l9: ldrNEsh R2, [sp, #-12]
l10: ldrLSh R3, [sp, #-64]
l11: strHIh R2, [sp, #-44]
l12: ldrEQsh R0, [sp, #-22]
l13: ldrsb R3, [sp, #-49]
l14: ldrVSsb R1, [sp, #-12]
l15: ldrNEsh R5, [sp, #-58]
l16: mov R14, #10
l17: ldrh R2, [sp, -R14]
l18: mov R1, #73
l19: ldrsb R9, [sp, -R1]
l20: mov R4, #76
l21: ldrVCsh R9, [sp, -R4]
l22: mov R9, #74
l23: ldrh R10, [sp, -R9]
l24: ldrh R3, [sp, #-34]
l25: mov R14, #76
l26: strLTh R10, [sp, -R14]
l27: mov R4, #17
l28: ldrGEsb R9, [sp, -R4]
l29: mov R11, #74
l30: ldrsh R12, [sp, -R11]
l31: mov R2, #74
l32: ldrh R11, [sp, -R2]
l33: mov R5, #49
l34: ldrVCsb R12, [sp, -R5]
l35: ldrGEh R12, [sp, #-10]
l36: ldrsb R8, [sp, #-69]
l37: ldrsh R1, [sp, #-72]
l38: mov R1, #64
l39: strMIh R3, [sp, -R1]
l40: mov R10, #28
l41: ldrh R6, [sp, -R10]
l42: strh R5, [sp, #-64]
l43: ldrVCsh R3, [sp, #-22]
l44: ldrLSsh R14, [sp, #-14]
l45: mov R0, #36
l46: ldrh R4, [sp, -R0]
l47: mov R6, #31
l48: ldrsb R0, [sp, -R6]
l49: mov R7, #54
l50: ldrCCh R8, [sp, -R7]
l51: ldrsb R1, [sp, #-18]
l52: ldrGTh R0, [sp, #-18]
l53: mov R9, #60
l54: ldrsb R0, [sp, -R9]
l55: ldrsh R2, [sp, #-32]
l56: mov R2, #74
l57: ldrh R6, [sp, -R2]
l58: mov R11, #78
l59: ldrHIsb R11, [sp, -R11]
l60: strh R10, [sp, #-38]
l61: mov R6, #22
l62: ldrh R6, [sp, -R6]
l63: ldrHIsb R0, [sp, #-76]
l64: mov R10, #80
l65: ldrh R1, [sp, -R10]
l66: mov R9, #11
l67: ldrsb R10, [sp, -R9]
l68: mov R6, #16
l69: ldrHIsh R11, [sp, -R6]
l70: ldrsb R2, [sp, #-29]
l71: mov R3, #80
l72: ldrNEh R5, [sp, -R3]
l73: ldrsh R11, [sp, #-64]
l74: ldrCCh R9, [sp, #-36]
l75: mov R8, #56
l76: ldrLSsh R6, [sp, -R8]
l77: mov R0, #36
l78: ldrsh R5, [sp, -R0]
l79: ldrCSh R8, [sp, #-20]
l80: mov R4, #68
l81: strCCh R12, [sp, -R4]
l82: mov R7, #30
l83: ldrh R5, [sp, -R7]
l84: mov R11, #72
l85: strLSh R14, [sp, -R11]
l86: mov R4, #46
l87: ldrLTsh R14, [sp, -R4]
l88: mov R5, #52
l89: ldrPLh R3, [sp, -R5]
l90: ldrsh R3, [sp, #-64]
l91: ldrLEsh R3, [sp, #-74]
l92: ldrsh R3, [sp, #-80]
l93: mov R2, #64
l94: ldrsb R2, [sp, -R2]
l95: mov R12, #26
l96: ldrh R5, [sp, -R12]
l97: ldrHIh R7, [sp, #-50]
l98: mov R14, #46
l99: ldrHIsh R8, [sp, -R14]
l100: mov R8, #38
l101: ldrLSsh R5, [sp, -R8]
l102: mov R0, #46
l103: strLEh R0, [sp, -R0]
l104: mov R12, #78
l105: strMIh R10, [sp, -R12]
l106: ldrLTsb R0, [sp, #-49]
l107: ldrEQsh R10, [sp, #-16]
l108: mov R0, #54
l109: ldrsb R11, [sp, -R0]
l110: ldrsh R8, [sp, #-6]
l111: mov R12, #75
l112: ldrCSsb R3, [sp, -R12]
l113: ldrh R4, [sp, #-72]
l114: mov R14, #8
l115: ldrsh R8, [sp, -R14]
l116: ldrsh R8, [sp, #-62]
l117: ldrLTsb R9, [sp, #-58]
l118: strh R5, [sp, #-28]
l119: mov R11, #80
l120: ldrVSsb R2, [sp, -R11]
l121: strVCh R4, [sp, #-52]
l122: strVCh R1, [sp, #-22]
l123: ldrHIsb R8, [sp, #-64]
l124: ldrLSh R4, [sp, #-32]
l125: ldrPLsh R0, [sp, #-6]
l126: ldrVSsh R6, [sp, #-18]
l127: ldrsh R14, [sp, #-80]
l128: mov R4, #22
l129: ldrGTsh R8, [sp, -R4]
l130: ldrsh R3, [sp, #-20]
l131: ldrGEsb R8, [sp, #-52]
l132: mov R7, #64
l133: strCSh R0, [sp, -R7]
l134: ldrsb R14, [sp, #-26]
l135: mov R1, #8
l136: strLTh R11, [sp, -R1]
l137: mov R3, #78
l138: strh R0, [sp, -R3]
l139: ldrHIsb R10, [sp, #-64]
l140: mov R2, #34
l141: strLEh R7, [sp, -R2]
l142: mov R1, #78
l143: strNEh R9, [sp, -R1]
l144: ldrsb R9, [sp, #-59]
l145: ldrh R11, [sp, #-80]
l146: ldrEQsb R12, [sp, #-67]
l147: ldrsb R5, [sp, #-38]
l148: mov R5, #6
l149: strh R1, [sp, -R5]
l150: mov R2, #45
l151: ldrsb R1, [sp, -R2]
l152: strh R7, [sp, #-54]
l153: mov R6, #20
l154: ldrh R5, [sp, -R6]
l155: mov R11, #40
l156: strh R9, [sp, -R11]
l157: mov R3, #12
l158: ldrNEh R0, [sp, -R3]
l159: mov R3, #20
l160: ldrVSh R4, [sp, -R3]
l161: mov R11, #42
l162: ldrNEh R11, [sp, -R11]
l163: ldrHIh R14, [sp, #-50]
l164: mov R0, #41
l165: ldrLEsb R9, [sp, -R0]
l166: ldrh R3, [sp, #-36]
l167: mov R4, #66
l168: ldrh R3, [sp, -R4]
l169: mov R2, #21
l170: ldrVSsb R12, [sp, -R2]
l171: ldrsb R0, [sp, #-70]
l172: ldrsb R10, [sp, #-75]
l173: ldrsb R6, [sp, #-37]
l174: mov R7, #62
l175: ldrCSsh R3, [sp, -R7]
l176: ldrMIsb R6, [sp, #-46]
l177: mov R3, #68
l178: ldrsh R1, [sp, -R3]
l179: mov R14, #34
l180: strh R12, [sp, -R14]
l181: mov R11, #20
l182: ldrGEsh R2, [sp, -R11]
l183: ldrsb R2, [sp, #-19]
l184: mov R2, #48
l185: ldrGTh R14, [sp, -R2]
l186: mov R2, #48
l187: ldrVSh R6, [sp, -R2]
l188: ldrEQsh R11, [sp, #-56]
l189: mov R10, #54
l190: ldrNEsh R7, [sp, -R10]
l191: mov R4, #80
l192: ldrsh R2, [sp, -R4]
l193: ldrLEsb R10, [sp, #-45]
l194: ldrh R14, [sp, #-42]
l195: mov R7, #40
l196: ldrsh R9, [sp, -R7]
l197: mov R2, #6
l198: ldrCCh R8, [sp, -R2]
l199: mov R8, #36
l200: strHIh R8, [sp, -R8]
l201: ldrh R14, [sp, #-42]
l202: ldrsh R5, [sp, #-46]
l203: ldrCCh R2, [sp, #-12]
l204: ldrVSsb R1, [sp, #-46]
l205: ldrCSsb R2, [sp, #-73]
l206: mov R2, #20
l207: strh R4, [sp, -R2]
l208: mov R6, #54
l209: ldrVCsh R7, [sp, -R6]
l210: mov R7, #12
l211: ldrLTsh R4, [sp, -R7]
l212: mov R7, #74
l213: strHIh R3, [sp, -R7]
l214: ldrCSh R10, [sp, #-66]
l215: ldrsb R1, [sp, #-54]
l216: ldrsb R7, [sp, #-41]
l217: mov R12, #52
l218: ldrsb R0, [sp, -R12]
l219: mov R1, #21
l220: ldrCSsb R14, [sp, -R1]
l221: mov R3, #36
l222: ldrGTsh R8, [sp, -R3]
l223: ldrMIsh R2, [sp, #-42]
l224: mov R4, #30
l225: ldrCSsh R2, [sp, -R4]
l226: mov R10, #20
l227: ldrCSsh R11, [sp, -R10]
l228: strHIh R0, [sp, #-76]
l229: mov R14, #74
l230: ldrGTh R7, [sp, -R14]
l231: mov R4, #6
l232: ldrHIsb R14, [sp, -R4]
l233: strh R6, [sp, #-28]
l234: ldrVSh R8, [sp, #-54]
l235: ldrEQsh R9, [sp, #-70]
l236: mov R9, #32
l237: ldrGTsh R12, [sp, -R9]
l238: mov R4, #54
l239: strHIh R4, [sp, -R4]
l240: mov R5, #36
l241: ldrh R7, [sp, -R5]
l242: strNEh R2, [sp, #-20]
l243: strHIh R9, [sp, #-22]
l244: ldrsh R3, [sp, #-66]
l245: mov R14, #78
l246: ldrMIsh R11, [sp, -R14]
l247: ldrsb R1, [sp, #-19]
l248: ldrh R7, [sp, #-22]
l249: mov R5, #47
l250: ldrLEsb R6, [sp, -R5]
l251: strh R1, [sp, #-36]
l252: ldrVSsb R5, [sp, #-71]
l253: mov R11, #15
l254: ldrCSsb R11, [sp, -R11]
l255: ldrPLsb R11, [sp, #-77]
l256: strh R0, [sp, #-44]
l257: strCCh R12, [sp, #-52]
l258: mov R4, #74
l259: strh R2, [sp, -R4]
l260: ldrMIsb R11, [sp, #-78]
l261: mov R11, #72
l262: strVCh R12, [sp, -R11]
l263: mov R6, #56
l264: strh R8, [sp, -R6]
l265: ldrh R12, [sp, #-34]
l266: ldrPLh R2, [sp, #-40]
l267: mov R2, #45
l268: ldrsb R4, [sp, -R2]
l269: mov R5, #9
l270: ldrEQsb R0, [sp, -R5]
l271: ldrLTh R12, [sp, #-48]
l272: mov R0, #74
l273: strMIh R9, [sp, -R0]
l274: ldrsb R5, [sp, #-59]
l275: mov R4, #76
l276: strHIh R12, [sp, -R4]
l277: mov R2, #16
l278: ldrCSsb R11, [sp, -R2]
l279: ldrLSh R7, [sp, #-54]
l280: mov R4, #80
l281: ldrsh R5, [sp, -R4]
l282: mov R14, #28
l283: ldrGEsb R8, [sp, -R14]
l284: ldrVSsh R7, [sp, #-74]
l285: mov R7, #72
l286: strMIh R7, [sp, -R7]
l287: mov R1, #76
l288: ldrh R5, [sp, -R1]
l289: mov R1, #41
l290: ldrsb R6, [sp, -R1]
l291: strGTh R12, [sp, #-48]
l292: mov R5, #73
l293: ldrsb R0, [sp, -R5]
l294: ldrLEh R7, [sp, #-38]
l295: mov R0, #79
l296: ldrGEsb R4, [sp, -R0]
l297: strLSh R1, [sp, #-62]
l298: ldrGEsh R12, [sp, #-38]
l299: strh R2, [sp, #-78]
l300: ldrh R1, [sp, #-60]
l301: mov R0, #18
l302: ldrLTh R5, [sp, -R0]
l303: ldrsb R14, [sp, #-41]
l304: strh R8, [sp, #-14]
l305: ldrEQh R8, [sp, #-58]
l306: mov R8, #80
l307: strGEh R14, [sp, -R8]
l308: ldrsb R1, [sp, #-52]
l309: mov R7, #66
l310: strEQh R4, [sp, -R7]
l311: ldrLEh R6, [sp, #-32]
l312: mov R1, #46
l313: strLTh R12, [sp, -R1]
l314: ldrLTh R8, [sp, #-64]
l315: strh R8, [sp, #-74]
l316: mov R11, #12
l317: ldrPLh R9, [sp, -R11]
l318: strLTh R4, [sp, #-38]
l319: ldrsb R1, [sp, #-23]
l320: mov R2, #64
l321: ldrsh R10, [sp, -R2]
l322: mov R11, #25
l323: ldrsb R8, [sp, -R11]
l324: ldrsh R0, [sp, #-36]
l325: ldrh R12, [sp, #-58]
l326: mov R5, #38
l327: ldrsb R1, [sp, -R5]
l328: ldrMIh R5, [sp, #-6]
l329: mov R5, #46
l330: ldrLEsb R3, [sp, -R5]
l331: ldrGEsb R14, [sp, #-57]
l332: mov R11, #8
l333: strPLh R11, [sp, -R11]
l334: ldrh R6, [sp, #-6]
l335: ldrsb R4, [sp, #-65]
l336: mov R14, #54
l337: ldrsh R0, [sp, -R14]
l338: mov R7, #8
l339: ldrMIh R7, [sp, -R7]
l340: mov R6, #22
l341: ldrLEsb R5, [sp, -R6]
l342: mov R9, #30
l343: strVSh R14, [sp, -R9]
l344: mov R6, #56
l345: ldrsb R1, [sp, -R6]
l346: strEQh R1, [sp, #-22]
l347: strEQh R3, [sp, #-64]
l348: mov R2, #55
l349: ldrsb R9, [sp, -R2]
l350: mov R1, #48
l351: strh R3, [sp, -R1]
l352: mov R8, #63
l353: ldrEQsb R7, [sp, -R8]
l354: mov R14, #46
l355: ldrLSsb R6, [sp, -R14]
l356: mov R4, #38
l357: ldrGEsb R0, [sp, -R4]
l358: mov R0, #8
l359: ldrNEsh R7, [sp, -R0]
l360: strh R11, [sp, #-52]
l361: ldrsh R1, [sp, #-34]
l362: mov R9, #80
l363: ldrLTsh R10, [sp, -R9]
l364: ldrsh R2, [sp, #-8]
l365: strCSh R2, [sp, #-80]
l366: mov R10, #66
l367: ldrLSsh R10, [sp, -R10]
l368: mov R7, #10
l369: strVCh R6, [sp, -R7]
l370: mov R11, #66
l371: ldrCCsh R9, [sp, -R11]
l372: mov R9, #42
l373: ldrGTh R6, [sp, -R9]
l374: ldrLEsb R8, [sp, #-22]
l375: ldrLSsb R3, [sp, #-38]
l376: ldrVCsb R6, [sp, #-33]
l377: mov R11, #68
l378: ldrNEsh R0, [sp, -R11]
l379: mov R0, #76
l380: ldrsb R0, [sp, -R0]
l381: ldrGTsh R0, [sp, #-60]
l382: ldrsh R2, [sp, #-52]
l383: ldrh R4, [sp, #-28]
l384: mov R2, #72
l385: ldrVSh R8, [sp, -R2]
l386: mov R11, #30
l387: ldrLEh R3, [sp, -R11]
l388: mov R1, #12
l389: ldrCSsh R6, [sp, -R1]
l390: mov R6, #56
l391: ldrsb R10, [sp, -R6]
l392: mov R3, #44
l393: ldrVSsh R7, [sp, -R3]
l394: mov R1, #22
l395: ldrGEsh R5, [sp, -R1]
l396: mov R2, #24
l397: ldrGTsb R5, [sp, -R2]
l398: mov R6, #69
l399: ldrsb R10, [sp, -R6]
l400: mov R9, #58
l401: ldrGTh R14, [sp, -R9]
l402: mov R11, #64
l403: strMIh R1, [sp, -R11]
l404: strCSh R11, [sp, #-78]
l405: ldrGTh R6, [sp, #-40]
l406: mov R6, #44
l407: ldrh R9, [sp, -R6]
l408: ldrh R12, [sp, #-12]
l409: mov R3, #74
l410: strLSh R11, [sp, -R3]
l411: mov R4, #22
l412: ldrHIh R4, [sp, -R4]
l413: mov R1, #24
l414: strh R11, [sp, -R1]
l415: mov R14, #12
l416: strPLh R0, [sp, -R14]
l417: strHIh R3, [sp, #-30]
l418: ldrsb R6, [sp, #-7]
l419: ldrsb R4, [sp, #-9]
l420: mov R12, #44
l421: strh R12, [sp, -R12]
l422: ldrHIh R5, [sp, #-8]
l423: mov R9, #12
l424: ldrGTh R5, [sp, -R9]
l425: mov R9, #33
l426: ldrEQsb R1, [sp, -R9]
l427: ldrh R14, [sp, #-48]
l428: mov R0, #50
l429: ldrPLsh R3, [sp, -R0]
l430: ldrh R14, [sp, #-18]
l431: ldrNEsb R4, [sp, #-52]
l432: strh R14, [sp, #-28]
l433: ldrsh R8, [sp, #-42]
l434: ldrGTsh R1, [sp, #-28]
l435: strVSh R14, [sp, #-8]
l436: ldrPLsb R8, [sp, #-33]
l437: mov R3, #70
l438: ldrEQh R7, [sp, -R3]
l439: ldrPLsb R4, [sp, #-12]
l440: mov R1, #8
l441: ldrsb R0, [sp, -R1]
l442: strh R7, [sp, #-30]
l443: ldrCCsb R6, [sp, #-59]
l444: mov R9, #56
l445: ldrsh R5, [sp, -R9]
l446: mov R6, #6
l447: ldrHIsh R1, [sp, -R6]
l448: mov R0, #30
l449: strh R4, [sp, -R0]
l450: mov R4, #60
l451: ldrPLsb R10, [sp, -R4]
l452: ldrHIh R0, [sp, #-12]
l453: ldrsh R4, [sp, #-42]
l454: ldrNEh R3, [sp, #-38]
l455: mov R8, #42
l456: strh R4, [sp, -R8]
l457: ldrMIsb R1, [sp, #-42]
l458: strGTh R10, [sp, #-8]
l459: ldrh R14, [sp, #-52]
l460: mov R8, #22
l461: strh R7, [sp, -R8]
l462: ldrsb R5, [sp, #-19]
l463: ldrLSsb R8, [sp, #-62]
l464: mov R7, #58
l465: strLSh R3, [sp, -R7]
l466: mov R2, #16
l467: ldrh R9, [sp, -R2]
l468: strh R3, [sp, #-58]
l469: mov R8, #32
l470: ldrPLsb R11, [sp, -R8]
l471: ldrh R9, [sp, #-56]
l472: mov R6, #48
l473: ldrEQh R3, [sp, -R6]
l474: ldrLSh R14, [sp, #-64]
l475: mov R7, #60
l476: ldrLTh R0, [sp, -R7]
l477: mov R3, #60
l478: ldrHIsh R5, [sp, -R3]
l479: ldrsb R1, [sp, #-79]
l480: mov R8, #72
l481: ldrVCsb R7, [sp, -R8]
l482: mov R11, #74
l483: ldrsh R7, [sp, -R11]
l484: mov R14, #56
l485: ldrPLsh R10, [sp, -R14]
l486: ldrh R10, [sp, #-54]
l487: mov R1, #20
l488: ldrHIsh R8, [sp, -R1]
l489: mov R12, #17
l490: ldrsb R1, [sp, -R12]
l491: mov R11, #69
l492: ldrNEsb R5, [sp, -R11]
l493: ldrVSsh R12, [sp, #-72]
l494: mov R6, #42
l495: strVSh R7, [sp, -R6]
l496: mov R0, #62
l497: ldrPLh R6, [sp, -R0]
l498: strVCh R10, [sp, #-38]
l499: mov R0, #14
l500: ldrVCh R5, [sp, -R0]
l501: mov R1, #76
l502: strh R5, [sp, -R1]
l503: strMIh R5, [sp, #-38]
l504: mov R11, #40
l505: ldrVSh R2, [sp, -R11]
l506: mov R3, #10
l507: ldrLEsb R12, [sp, -R3]
l508: mov R10, #14
l509: ldrPLsb R7, [sp, -R10]
l510: mov R5, #30
l511: ldrLEh R4, [sp, -R5]
l512: mov R7, #6
l513: strVSh R8, [sp, -R7]
l514: mov R12, #46
l515: ldrLSsh R8, [sp, -R12]
l516: ldrNEsh R3, [sp, #-6]
l517: mov R0, #54
l518: strVSh R7, [sp, -R0]
l519: mov R4, #78
l520: ldrh R1, [sp, -R4]
l521: ldrVSh R3, [sp, #-42]
l522: ldrh R7, [sp, #-50]
l523: mov R11, #44
l524: ldrh R9, [sp, -R11]
l525: mov R8, #46
l526: strLSh R5, [sp, -R8]
l527: mov R11, #22
l528: ldrsh R0, [sp, -R11]
l529: mov R11, #16
l530: ldrMIh R4, [sp, -R11]
l531: mov R10, #74
l532: ldrLTh R2, [sp, -R10]
l533: mov R9, #66
l534: ldrsb R0, [sp, -R9]
l535: strh R10, [sp, #-32]
l536: mov R0, #20
l537: ldrh R8, [sp, -R0]
l538: mov R12, #27
l539: ldrsb R9, [sp, -R12]
l540: ldrh R14, [sp, #-46]
l541: mov R5, #70
l542: strh R2, [sp, -R5]
l543: ldrh R14, [sp, #-24]
l544: mov R2, #14
l545: ldrh R9, [sp, -R2]
l546: ldrh R12, [sp, #-78]
l547: mov R6, #71
l548: ldrCCsb R12, [sp, -R6]
l549: ldrNEsh R10, [sp, #-40]
l550: strh R4, [sp, #-50]
l551: mov R3, #9
l552: ldrHIsb R9, [sp, -R3]
l553: mov R9, #10
l554: strHIh R11, [sp, -R9]
l555: mov R10, #79
l556: ldrsb R3, [sp, -R10]
l557: mov R6, #50
l558: strh R4, [sp, -R6]
l559: mov R14, #76
l560: ldrGEsh R4, [sp, -R14]
l561: mov R4, #32
l562: ldrLEsh R7, [sp, -R4]
l563: mov R12, #66
l564: strGTh R7, [sp, -R12]
l565: ldrVSsb R4, [sp, #-67]
l566: ldrEQsb R5, [sp, #-7]
l567: mov R10, #74
l568: ldrPLsb R10, [sp, -R10]
l569: ldrVCsh R1, [sp, #-32]
l570: ldrsb R11, [sp, #-57]
l571: mov R12, #32
l572: strLTh R6, [sp, -R12]
l573: mov R1, #8
l574: ldrVCh R1, [sp, -R1]
l575: mov R12, #52
l576: ldrsh R4, [sp, -R12]
l577: strh R12, [sp, #-62]
l578: mov R2, #6
l579: ldrLSsb R6, [sp, -R2]
l580: strh R7, [sp, #-54]
l581: mov R4, #61
l582: ldrsb R2, [sp, -R4]
l583: mov R8, #10
l584: ldrsh R8, [sp, -R8]
l585: mov R9, #6
l586: ldrCCh R6, [sp, -R9]
l587: mov R3, #10
l588: strVSh R9, [sp, -R3]
l589: ldrCSsh R12, [sp, #-46]
l590: ldrHIsb R2, [sp, #-38]
l591: mov R0, #16
l592: ldrVCsb R8, [sp, -R0]
l593: mov R1, #46
l594: ldrMIsb R12, [sp, -R1]
l595: ldrVSsh R0, [sp, #-20]
l596: mov R6, #26
l597: strLTh R4, [sp, -R6]
l598: mov R0, #72
l599: ldrh R1, [sp, -R0]
l600: mov R4, #79
l601: ldrsb R8, [sp, -R4]
l602: mov R5, #70
l603: ldrMIh R0, [sp, -R5]
l604: mov R11, #12
l605: strGEh R0, [sp, -R11]
l606: ldrEQsb R7, [sp, #-74]
l607: mov R11, #6
l608: ldrHIsh R12, [sp, -R11]
l609: mov R3, #66
l610: ldrLSh R6, [sp, -R3]
l611: ldrsh R8, [sp, #-70]
l612: strh R10, [sp, #-40]
l613: strNEh R6, [sp, #-38]
l614: mov R14, #72
l615: ldrLSh R1, [sp, -R14]
l616: mov R14, #32
l617: ldrNEh R10, [sp, -R14]
l618: ldrsh R3, [sp, #-46]
l619: strh R14, [sp, #-28]
l620: mov R9, #24
l621: ldrMIh R7, [sp, -R9]
l622: mov R5, #73
l623: ldrsb R9, [sp, -R5]
l624: mov R14, #73
l625: ldrsb R2, [sp, -R14]
l626: mov R12, #13
l627: ldrLTsb R10, [sp, -R12]
l628: mov R11, #34
l629: ldrsb R6, [sp, -R11]
l630: mov R12, #16
l631: ldrLEh R2, [sp, -R12]
l632: mov R1, #14
l633: ldrh R9, [sp, -R1]
l634: mov R11, #37
l635: ldrsb R2, [sp, -R11]
l636: mov R3, #32
l637: ldrh R2, [sp, -R3]
l638: mov R3, #76
l639: ldrLSh R10, [sp, -R3]
l640: strCSh R2, [sp, #-12]
l641: strh R8, [sp, #-14]
l642: mov R3, #80
l643: strh R4, [sp, -R3]
l644: ldrNEsb R0, [sp, #-80]
l645: ldrGTh R8, [sp, #-32]
l646: mov R0, #32
l647: ldrVSsh R4, [sp, -R0]
l648: ldrCSh R10, [sp, #-30]
l649: ldrMIh R4, [sp, #-58]
l650: mov R10, #54
l651: strh R1, [sp, -R10]
l652: mov R9, #68
l653: ldrHIsh R10, [sp, -R9]
l654: ldrVCh R11, [sp, #-12]
l655: ldrCSsb R10, [sp, #-70]
l656: strh R2, [sp, #-70]
l657: ldrh R7, [sp, #-12]
l658: mov R3, #7
l659: ldrMIsb R5, [sp, -R3]
l660: mov R2, #80
l661: ldrLEsh R9, [sp, -R2]
l662: mov R12, #10
l663: ldrPLh R12, [sp, -R12]
l664: mov R14, #64
l665: ldrVSsb R2, [sp, -R14]
l666: ldrHIh R4, [sp, #-76]
l667: mov R2, #37
l668: ldrNEsb R7, [sp, -R2]
l669: mov R4, #18
l670: strVCh R7, [sp, -R4]
l671: ldrEQsh R11, [sp, #-64]
l672: ldrsb R4, [sp, #-21]
l673: mov R14, #44
l674: strh R11, [sp, -R14]
l675: mov R14, #27
l676: ldrGTsb R7, [sp, -R14]
l677: ldrHIh R14, [sp, #-40]
l678: ldrCSh R14, [sp, #-8]
l679: mov R8, #70
l680: ldrGTsh R1, [sp, -R8]
l681: ldrEQh R8, [sp, #-30]
l682: strGTh R8, [sp, #-66]
l683: mov R10, #60
l684: ldrCCh R4, [sp, -R10]
l685: ldrLEh R2, [sp, #-60]
l686: mov R0, #36
l687: ldrGTsh R1, [sp, -R0]
l688: ldrsb R4, [sp, #-36]
l689: ldrh R1, [sp, #-56]
l690: ldrsh R11, [sp, #-76]
l691: ldrsb R11, [sp, #-27]
l692: ldrPLsh R5, [sp, #-36]
l693: mov R7, #62
l694: ldrEQsb R10, [sp, -R7]
l695: ldrLSh R7, [sp, #-10]
l696: ldrGEsh R11, [sp, #-62]
l697: ldrGEsh R8, [sp, #-30]
l698: ldrVCh R9, [sp, #-48]
l699: mov R0, #22
l700: ldrVSh R1, [sp, -R0]
l701: mov R9, #68
l702: ldrVSsh R1, [sp, -R9]
l703: mov R8, #48
l704: strLTh R6, [sp, -R8]
l705: ldrVSh R3, [sp, #-58]
l706: mov R9, #34
l707: ldrGTsh R14, [sp, -R9]
l708: ldrCSh R11, [sp, #-74]
l709: mov R5, #68
l710: ldrVCh R11, [sp, -R5]
l711: ldrh R5, [sp, #-64]
l712: ldrsb R7, [sp, #-41]
l713: mov R9, #74
l714: ldrLSh R7, [sp, -R9]
l715: mov R9, #14
l716: ldrh R9, [sp, -R9]
l717: ldrsh R14, [sp, #-42]
l718: strh R10, [sp, #-64]
l719: strh R11, [sp, #-68]
l720: strh R11, [sp, #-24]
l721: ldrsh R0, [sp, #-48]
l722: mov R9, #52
l723: strVSh R1, [sp, -R9]
l724: mov R11, #30
l725: ldrMIh R6, [sp, -R11]
l726: mov R12, #36
l727: ldrVCsh R7, [sp, -R12]
l728: ldrh R14, [sp, #-6]
l729: mov R3, #50
l730: ldrLTsb R2, [sp, -R3]
l731: mov R4, #38
l732: ldrh R7, [sp, -R4]
l733: mov R3, #26
l734: ldrh R5, [sp, -R3]
l735: mov R11, #70
l736: strh R8, [sp, -R11]
l737: ldrh R3, [sp, #-72]
l738: mov R10, #40
l739: strh R12, [sp, -R10]
l740: mov R14, #74
l741: ldrGTsh R9, [sp, -R14]
l742: strh R12, [sp, #-70]
l743: ldrh R8, [sp, #-30]
l744: ldrsh R14, [sp, #-38]
l745: mov R4, #70
l746: ldrGEh R0, [sp, -R4]
l747: ldrGTh R11, [sp, #-6]
l748: ldrsh R5, [sp, #-76]
l749: mov R2, #76
l750: ldrsb R8, [sp, -R2]
l751: mov R1, #66
l752: strNEh R11, [sp, -R1]
l753: mov R2, #24
l754: ldrsh R0, [sp, -R2]
l755: mov R14, #53
l756: ldrsb R14, [sp, -R14]
l757: mov R7, #62
l758: ldrCCsh R3, [sp, -R7]
l759: ldrGTh R10, [sp, #-26]
l760: strPLh R10, [sp, #-20]
l761: mov R9, #38
l762: strGEh R0, [sp, -R9]
l763: mov R0, #39
l764: ldrsb R1, [sp, -R0]
l765: ldrPLsb R2, [sp, #-31]
l766: mov R4, #70
l767: ldrsb R5, [sp, -R4]
l768: ldrsh R10, [sp, #-36]
l769: mov R6, #38
l770: ldrLSsh R12, [sp, -R6]
l771: mov R3, #44
l772: strh R5, [sp, -R3]
l773: ldrVCh R3, [sp, #-62]
l774: mov R4, #18
l775: ldrh R5, [sp, -R4]
l776: mov R10, #24
l777: ldrHIsh R10, [sp, -R10]
l778: mov R12, #76
l779: ldrMIh R5, [sp, -R12]
l780: mov R5, #22
l781: ldrsh R5, [sp, -R5]
l782: strh R1, [sp, #-62]
l783: strGEh R7, [sp, #-66]
l784: strh R5, [sp, #-66]
l785: ldrsb R10, [sp, #-12]
l786: mov R5, #72
l787: ldrh R7, [sp, -R5]
l788: mov R8, #50
l789: ldrsh R8, [sp, -R8]
l790: mov R1, #6
l791: ldrHIh R8, [sp, -R1]
l792: strPLh R5, [sp, #-18]
l793: mov R6, #5
l794: ldrsb R12, [sp, -R6]
l795: ldrsh R1, [sp, #-30]
l796: mov R8, #8
l797: ldrCCsb R0, [sp, -R8]
l798: ldrh R2, [sp, #-6]
l799: mov R12, #58
l800: ldrVCh R8, [sp, -R12]
l801: mov R11, #52
l802: ldrsh R6, [sp, -R11]
l803: mov R8, #72
l804: strh R4, [sp, -R8]
l805: ldrVCsb R7, [sp, #-48]
l806: mov R3, #17
l807: ldrHIsb R14, [sp, -R3]
l808: mov R12, #74
l809: ldrsh R3, [sp, -R12]
l810: ldrGEh R6, [sp, #-26]
l811: mov R2, #30
l812: ldrHIh R9, [sp, -R2]
l813: mov R5, #66
l814: ldrh R6, [sp, -R5]
l815: mov R7, #72
l816: strVSh R12, [sp, -R7]
l817: ldrGEsb R7, [sp, #-33]
l818: strGTh R0, [sp, #-76]
l819: ldrsb R14, [sp, #-64]
l820: mov R7, #38
l821: ldrsb R0, [sp, -R7]
l822: ldrVCh R1, [sp, #-76]
l823: mov R4, #26
l824: strLTh R12, [sp, -R4]
l825: ldrCCsb R8, [sp, #-51]
l826: ldrLEsh R14, [sp, #-74]
l827: mov R12, #48
l828: ldrVSsh R5, [sp, -R12]
l829: strh R6, [sp, #-14]
l830: mov R8, #68
l831: strh R14, [sp, -R8]
l832: mov R5, #58
l833: ldrHIh R7, [sp, -R5]
l834: mov R6, #80
l835: ldrVSsb R8, [sp, -R6]
l836: ldrh R9, [sp, #-40]
l837: mov R4, #8
l838: ldrh R2, [sp, -R4]
l839: mov R7, #60
l840: ldrsb R8, [sp, -R7]
l841: ldrEQsh R1, [sp, #-16]
l842: mov R0, #66
l843: ldrMIsh R8, [sp, -R0]
l844: mov R2, #72
l845: ldrsh R1, [sp, -R2]
l846: ldrsb R2, [sp, #-20]
l847: ldrsb R5, [sp, #-6]
l848: mov R4, #56
l849: ldrLTh R9, [sp, -R4]
l850: mov R1, #41
l851: ldrGEsb R11, [sp, -R1]
l852: strh R3, [sp, #-54]
l853: mov R0, #58
l854: ldrNEh R4, [sp, -R0]
l855: strGTh R1, [sp, #-50]
l856: mov R7, #78
l857: strPLh R5, [sp, -R7]
l858: strGTh R7, [sp, #-28]
l859: mov R8, #12
l860: ldrh R8, [sp, -R8]
l861: mov R12, #36
l862: ldrsb R8, [sp, -R12]
l863: ldrHIh R1, [sp, #-28]
l864: strh R10, [sp, #-80]
l865: strh R12, [sp, #-32]
l866: mov R8, #20
l867: strLSh R3, [sp, -R8]
l868: ldrsb R10, [sp, #-17]
l869: mov R5, #76
l870: ldrsh R7, [sp, -R5]
l871: mov R6, #34
l872: ldrGTsh R6, [sp, -R6]
l873: mov R2, #46
l874: ldrLSsb R0, [sp, -R2]
l875: mov R11, #62
l876: strLTh R6, [sp, -R11]
l877: mov R4, #30
l878: ldrHIsh R0, [sp, -R4]
l879: ldrCSsh R3, [sp, #-38]
l880: mov R2, #42
l881: strh R8, [sp, -R2]
l882: mov R4, #10
l883: ldrsh R0, [sp, -R4]
l884: mov R7, #72
l885: strLTh R7, [sp, -R7]
l886: mov R0, #20
l887: ldrCSsh R3, [sp, -R0]
l888: ldrsb R6, [sp, #-6]
l889: ldrsb R9, [sp, #-62]
l890: mov R8, #24
l891: ldrsh R5, [sp, -R8]
l892: strh R5, [sp, #-30]
l893: ldrsb R4, [sp, #-77]
l894: mov R14, #72
l895: ldrh R12, [sp, -R14]
l896: mov R6, #76
l897: strh R0, [sp, -R6]
l898: ldrLTsb R9, [sp, #-21]
l899: mov R9, #70
l900: ldrCCsh R2, [sp, -R9]
l901: mov R3, #58
l902: ldrh R12, [sp, -R3]
l903: mov R9, #48
l904: ldrCCh R10, [sp, -R9]
l905: mov R9, #33
l906: ldrEQsb R1, [sp, -R9]
l907: mov R14, #74
l908: ldrVSsh R10, [sp, -R14]
l909: strh R6, [sp, #-12]
l910: ldrsb R3, [sp, #-9]
l911: mov R8, #32
l912: ldrh R10, [sp, -R8]
l913: mov R12, #20
l914: ldrPLsh R11, [sp, -R12]
l915: ldrsh R4, [sp, #-14]
l916: ldrCSsb R6, [sp, #-9]
l917: ldrsh R0, [sp, #-80]
l918: mov R2, #76
l919: ldrLEsh R3, [sp, -R2]
l920: ldrsb R8, [sp, #-57]
l921: strh R0, [sp, #-70]
l922: ldrh R14, [sp, #-74]
l923: ldrsh R12, [sp, #-68]
l924: mov R7, #60
l925: strVCh R3, [sp, -R7]
l926: ldrLTh R9, [sp, #-14]
l927: mov R3, #14
l928: ldrsh R3, [sp, -R3]
l929: ldrh R2, [sp, #-10]
l930: ldrGEsh R10, [sp, #-22]
l931: mov R8, #16
l932: ldrh R2, [sp, -R8]
l933: ldrLSh R6, [sp, #-56]
l934: ldrsb R2, [sp, #-78]
l935: mov R9, #40
l936: ldrGTsb R10, [sp, -R9]
l937: ldrHIsb R4, [sp, #-73]
l938: mov R7, #12
l939: ldrGEh R11, [sp, -R7]
l940: mov R2, #40
l941: ldrVCsh R4, [sp, -R2]
l942: mov R5, #66
l943: ldrLTsh R14, [sp, -R5]
l944: mov R9, #60
l945: ldrsh R0, [sp, -R9]
l946: ldrLSh R9, [sp, #-10]
l947: mov R4, #31
l948: ldrsb R0, [sp, -R4]
l949: mov R9, #60
l950: ldrCSsh R3, [sp, -R9]
l951: ldrCCsh R12, [sp, #-42]
l952: mov R8, #16
l953: strGEh R8, [sp, -R8]
l954: ldrsb R4, [sp, #-22]
l955: strLSh R0, [sp, #-52]
l956: mov R7, #14
l957: ldrCSh R3, [sp, -R7]
l958: ldrsh R11, [sp, #-52]
l959: mov R14, #56
l960: ldrLEsb R12, [sp, -R14]
l961: strGTh R7, [sp, #-54]
l962: ldrsh R11, [sp, #-20]
l963: ldrh R5, [sp, #-22]
l964: mov R12, #65
l965: ldrsb R11, [sp, -R12]
l966: mov R14, #36
l967: ldrCCsh R0, [sp, -R14]
l968: mov R3, #20
l969: ldrPLsh R4, [sp, -R3]
l970: ldrMIsh R1, [sp, #-22]
l971: mov R4, #48
l972: ldrVCh R7, [sp, -R4]
l973: ldrh R12, [sp, #-30]
l974: mov R2, #79
l975: ldrMIsb R1, [sp, -R2]
l976: mov R9, #36
l977: strLEh R1, [sp, -R9]
l978: mov R1, #72
l979: ldrsh R12, [sp, -R1]
l980: mov R5, #48
l981: ldrCCsh R4, [sp, -R5]
l982: mov R8, #14
l983: ldrsb R6, [sp, -R8]
l984: ldrsh R6, [sp, #-18]
l985: mov R11, #16
l986: ldrLEh R5, [sp, -R11]
l987: mov R9, #32
l988: ldrMIh R6, [sp, -R9]
l989: strGEh R3, [sp, #-70]
l990: ldrCCh R5, [sp, #-68]
l991: mov R11, #24
l992: ldrh R14, [sp, -R11]
l993: ldrLSsh R8, [sp, #-54]
l994: ldrGTsb R10, [sp, #-25]
l995: mov R1, #40
l996: ldrEQsh R0, [sp, -R1]
l997: mov R2, #32
l998: ldrsh R11, [sp, -R2]
l999: strh R0, [sp, #-30]
l1000: mov R6, #52
l1001: strh R9, [sp, -R6]
l1002: mov R6, #8
l1003: ldrh R12, [sp, -R6]
l1004: mov R1, #34
l1005: ldrsb R2, [sp, -R1]
l1006: ldrGTh R5, [sp, #-30]
l1007: ldrh R7, [sp, #-70]
l1008: mov R9, #21
l1009: ldrPLsb R5, [sp, -R9]
l1010: mov R5, #44
l1011: strh R4, [sp, -R5]
l1012: mov R3, #22
l1013: ldrEQsh R11, [sp, -R3]
l1014: mov R2, #70
l1015: ldrh R2, [sp, -R2]
l1016: mov R10, #14
l1017: ldrVSsb R1, [sp, -R10]
l1018: mov R5, #46
l1019: strh R14, [sp, -R5]
l1020: ldrMIh R10, [sp, #-76]
l1021: mov R12, #50
l1022: ldrsh R14, [sp, -R12]
l1023: mov R14, #36
l1024: ldrsh R1, [sp, -R14]
l1025: ldrLEsh R10, [sp, #-80]
l1026: ldrh R0, [sp, #-74]
l1027: strh R12, [sp, #-70]
l1028: ldrVCh R0, [sp, #-56]
l1029: mov R1, #20
l1030: strh R10, [sp, -R1]
l1031: mov R2, #26
l1032: ldrEQsb R0, [sp, -R2]
l1033: ldrEQsb R4, [sp, #-10]
l1034: mov R14, #40
l1035: ldrMIsb R5, [sp, -R14]
l1036: mov R1, #26
l1037: strMIh R2, [sp, -R1]
l1038: mov R1, #80
l1039: ldrNEsh R10, [sp, -R1]
l1040: mov R12, #12
l1041: strh R7, [sp, -R12]
l1042: mov R5, #38
l1043: strGEh R12, [sp, -R5]
l1044: strh R1, [sp, #-18]
l1045: mov R10, #72
l1046: strh R3, [sp, -R10]
l1047: mov R3, #18
l1048: ldrLEsh R3, [sp, -R3]
l1049: mov R5, #32
l1050: ldrsh R3, [sp, -R5]
l1051: mov R14, #25
l1052: ldrVCsb R14, [sp, -R14]
l1053: strMIh R4, [sp, #-74]
l1054: mov R6, #36
l1055: ldrsh R0, [sp, -R6]
l1056: mov R2, #70
l1057: strh R1, [sp, -R2]
l1058: mov R12, #26
l1059: ldrPLsb R8, [sp, -R12]
l1060: mov R5, #75
l1061: ldrNEsb R6, [sp, -R5]
l1062: mov R11, #10
l1063: ldrPLsh R2, [sp, -R11]
l1064: mov R14, #26
l1065: strGTh R0, [sp, -R14]
l1066: ldrsb R8, [sp, #-9]
l1067: mov R6, #10
l1068: ldrLSh R4, [sp, -R6]
l1069: strCSh R4, [sp, #-54]
l1070: mov R5, #62
l1071: ldrHIsb R14, [sp, -R5]
l1072: mov R11, #8
l1073: ldrh R4, [sp, -R11]
l1074: mov R1, #52
l1075: ldrNEsb R1, [sp, -R1]
l1076: mov R5, #56
l1077: strLTh R3, [sp, -R5]
l1078: strPLh R2, [sp, #-54]
l1079: ldrsh R4, [sp, #-8]
l1080: ldrsh R0, [sp, #-30]
l1081: ldrh R6, [sp, #-50]
l1082: mov R6, #66
l1083: strCSh R0, [sp, -R6]
l1084: ldrsb R1, [sp, #-52]
l1085: strLSh R8, [sp, #-18]
l1086: mov R7, #62
l1087: ldrGTh R2, [sp, -R7]
l1088: mov R5, #42
l1089: ldrLSsh R4, [sp, -R5]
l1090: strLEh R2, [sp, #-8]
l1091: mov R2, #8
l1092: strGTh R5, [sp, -R2]
l1093: ldrVSh R1, [sp, #-42]
l1094: strh R2, [sp, #-26]
l1095: mov R12, #62
l1096: ldrsb R0, [sp, -R12]
l1097: ldrsb R7, [sp, #-77]
l1098: mov R1, #42
l1099: ldrNEsh R12, [sp, -R1]
l1100: strHIh R5, [sp, #-78]
l1101: mov R4, #78
l1102: ldrLTsh R5, [sp, -R4]
l1103: ldrsb R9, [sp, #-63]
l1104: ldrsb R6, [sp, #-79]
l1105: ldrGTh R5, [sp, #-46]
l1106: mov R10, #16
l1107: ldrsh R4, [sp, -R10]
l1108: mov R1, #53
l1109: ldrGEsb R7, [sp, -R1]
l1110: mov R10, #68
l1111: strLEh R2, [sp, -R10]
l1112: mov R14, #10
l1113: ldrsh R6, [sp, -R14]
l1114: strh R9, [sp, #-18]
l1115: strh R2, [sp, #-48]
l1116: strMIh R2, [sp, #-66]
l1117: ldrLEsb R12, [sp, #-68]
l1118: mov R1, #46
l1119: strh R12, [sp, -R1]
l1120: ldrh R12, [sp, #-54]
l1121: strh R9, [sp, #-50]
l1122: ldrCSsb R12, [sp, #-22]
l1123: mov R7, #32
l1124: ldrLSh R11, [sp, -R7]
l1125: mov R5, #60
l1126: strLSh R11, [sp, -R5]
l1127: ldrsb R6, [sp, #-69]
l1128: strPLh R7, [sp, #-8]
l1129: mov R4, #30
l1130: ldrNEsh R6, [sp, -R4]
l1131: ldrEQh R1, [sp, #-38]
l1132: mov R5, #76
l1133: strVCh R1, [sp, -R5]
l1134: mov R7, #50
l1135: ldrLEh R14, [sp, -R7]
l1136: mov R7, #60
l1137: strGTh R7, [sp, -R7]
l1138: strEQh R3, [sp, #-12]
l1139: mov R1, #58
l1140: ldrh R10, [sp, -R1]
l1141: mov R0, #20
l1142: ldrh R10, [sp, -R0]
l1143: mov R5, #56
l1144: ldrsh R5, [sp, -R5]
l1145: mov R7, #50
l1146: ldrGEsh R8, [sp, -R7]
l1147: ldrGTh R7, [sp, #-22]
l1148: mov R10, #68
l1149: strh R2, [sp, -R10]
l1150: mov R9, #54
l1151: strh R8, [sp, -R9]
l1152: mov R0, #46
l1153: ldrsh R7, [sp, -R0]
l1154: mov R6, #52
l1155: ldrsb R6, [sp, -R6]
l1156: mov R11, #30
l1157: strh R7, [sp, -R11]
l1158: mov R11, #8
l1159: strLTh R0, [sp, -R11]
l1160: mov R5, #62
l1161: strh R9, [sp, -R5]
l1162: ldrGTsb R8, [sp, #-76]
l1163: ldrGEsb R2, [sp, #-64]
l1164: mov R2, #12
l1165: ldrsb R2, [sp, -R2]
l1166: strHIh R0, [sp, #-12]
l1167: ldrVCh R7, [sp, #-24]
l1168: strGEh R9, [sp, #-16]
l1169: mov R0, #64
l1170: ldrsh R5, [sp, -R0]
l1171: ldrLSsb R4, [sp, #-73]
l1172: strLSh R9, [sp, #-12]
l1173: ldrsb R11, [sp, #-74]
l1174: mov R1, #76
l1175: ldrh R11, [sp, -R1]
l1176: mov R14, #72
l1177: ldrh R2, [sp, -R14]
l1178: strLEh R8, [sp, #-50]
l1179: mov R4, #64
l1180: ldrVSsh R12, [sp, -R4]
l1181: mov R7, #28
l1182: ldrsb R7, [sp, -R7]
l1183: mov R0, #10
l1184: ldrGTsh R3, [sp, -R0]
l1185: mov R4, #18
l1186: ldrHIsh R3, [sp, -R4]
l1187: ldrPLsb R10, [sp, #-58]
l1188: ldrsh R14, [sp, #-26]
l1189: mov R8, #26
l1190: ldrh R11, [sp, -R8]
l1191: strGTh R11, [sp, #-58]
l1192: ldrNEh R11, [sp, #-8]
l1193: mov R6, #68
l1194: ldrh R4, [sp, -R6]
l1195: mov R3, #70
l1196: strVCh R3, [sp, -R3]
l1197: mov R3, #32
l1198: ldrCCsb R12, [sp, -R3]
l1199: strPLh R0, [sp, #-68]
l1200: ldrPLh R8, [sp, #-12]
l1201: mov R12, #74
l1202: strh R5, [sp, -R12]
l1203: mov R0, #18
l1204: ldrsb R14, [sp, -R0]
l1205: strh R12, [sp, #-26]
l1206: strh R1, [sp, #-72]
l1207: mov R11, #36
l1208: strHIh R6, [sp, -R11]
l1209: mov R10, #8
l1210: ldrNEh R2, [sp, -R10]
l1211: ldrPLh R14, [sp, #-30]
l1212: mov R7, #13
l1213: ldrsb R7, [sp, -R7]
l1214: ldrh R14, [sp, #-58]
l1215: strh R11, [sp, #-50]
l1216: ldrCSh R0, [sp, #-18]
l1217: strCSh R0, [sp, #-12]
l1218: ldrsb R0, [sp, #-32]
l1219: ldrVSsh R9, [sp, #-50]
l1220: mov R5, #65
l1221: ldrNEsb R6, [sp, -R5]
l1222: mov R6, #5
l1223: ldrPLsb R5, [sp, -R6]
l1224: ldrNEsh R12, [sp, #-32]
l1225: mov R0, #38
l1226: ldrh R12, [sp, -R0]
l1227: strh R1, [sp, #-8]
l1228: mov R0, #67
l1229: ldrEQsb R14, [sp, -R0]
l1230: strh R8, [sp, #-80]
l1231: mov R0, #27
l1232: ldrGEsb R3, [sp, -R0]
l1233: ldrsh R7, [sp, #-54]
l1234: ldrLSsb R12, [sp, #-51]
l1235: mov R12, #80
l1236: ldrCSsb R8, [sp, -R12]
l1237: strGTh R12, [sp, #-18]
l1238: mov R14, #71
l1239: ldrLTsb R11, [sp, -R14]
l1240: ldrGEsb R10, [sp, #-21]
l1241: ldrMIsb R5, [sp, #-46]
l1242: mov R3, #80
l1243: strLEh R1, [sp, -R3]
l1244: mov R8, #56
l1245: ldrGTh R11, [sp, -R8]
l1246: ldrsb R6, [sp, #-80]
l1247: mov R4, #28
l1248: ldrsb R9, [sp, -R4]
l1249: mov R3, #16
l1250: ldrsb R11, [sp, -R3]
l1251: ldrsh R14, [sp, #-52]
l1252: ldrsh R12, [sp, #-54]
l1253: mov R4, #44
l1254: ldrh R9, [sp, -R4]
l1255: mov R1, #30
l1256: ldrsh R0, [sp, -R1]
l1257: mov R0, #18
l1258: ldrsh R1, [sp, -R0]
l1259: strh R14, [sp, #-76]
l1260: mov R8, #32
l1261: ldrPLh R5, [sp, -R8]
l1262: mov R4, #24
l1263: ldrsh R7, [sp, -R4]
l1264: mov R12, #58
l1265: ldrVCh R2, [sp, -R12]
l1266: mov R14, #46
l1267: ldrVSsh R8, [sp, -R14]
l1268: ldrsh R9, [sp, #-42]
l1269: mov R6, #24
l1270: ldrPLsh R12, [sp, -R6]
l1271: mov R6, #36
l1272: ldrLTh R0, [sp, -R6]
l1273: ldrLTsh R10, [sp, #-50]
l1274: ldrCSsh R2, [sp, #-76]
l1275: ldrh R12, [sp, #-56]
l1276: mov R7, #21
l1277: ldrsb R12, [sp, -R7]
l1278: ldrh R3, [sp, #-60]
l1279: mov R1, #58
l1280: ldrVCsb R10, [sp, -R1]
l1281: ldrsb R3, [sp, #-13]
l1282: mov R5, #48
l1283: ldrh R8, [sp, -R5]
l1284: mov R1, #16
l1285: strHIh R3, [sp, -R1]
l1286: mov R0, #70
l1287: strHIh R8, [sp, -R0]
l1288: strh R4, [sp, #-50]
l1289: mov R6, #40
l1290: ldrEQh R7, [sp, -R6]
l1291: mov R11, #40
l1292: strh R0, [sp, -R11]
l1293: mov R4, #60
l1294: ldrsh R4, [sp, -R4]
l1295: mov R10, #10
l1296: ldrNEh R3, [sp, -R10]
l1297: mov R3, #78
l1298: ldrCCsb R7, [sp, -R3]
l1299: mov R6, #16
l1300: strLEh R7, [sp, -R6]
l1301: mov R0, #52
l1302: ldrh R5, [sp, -R0]
l1303: ldrVSsb R7, [sp, #-10]
l1304: ldrsb R3, [sp, #-25]
l1305: mov R3, #58
l1306: ldrh R2, [sp, -R3]
l1307: ldrEQh R0, [sp, #-78]
l1308: ldrsb R8, [sp, #-51]
l1309: mov R1, #76
l1310: strLEh R0, [sp, -R1]
l1311: strh R11, [sp, #-18]
l1312: mov R3, #34
l1313: ldrsh R14, [sp, -R3]
l1314: mov R5, #61
l1315: ldrLTsb R14, [sp, -R5]
l1316: ldrNEsh R2, [sp, #-18]
l1317: mov R4, #48
l1318: ldrPLh R6, [sp, -R4]
l1319: ldrsb R14, [sp, #-66]
l1320: ldrsb R6, [sp, #-39]
l1321: mov R10, #72
l1322: ldrNEh R0, [sp, -R10]
l1323: ldrLSsh R3, [sp, #-20]
l1324: ldrPLsb R0, [sp, #-48]
l1325: ldrGEh R6, [sp, #-72]
l1326: ldrVCsb R14, [sp, #-53]
l1327: ldrPLh R1, [sp, #-54]
l1328: ldrCSsh R5, [sp, #-40]
l1329: ldrVCh R1, [sp, #-58]
l1330: mov R8, #40
l1331: ldrCCsb R10, [sp, -R8]
l1332: mov R4, #57
l1333: ldrsb R6, [sp, -R4]
l1334: ldrNEh R3, [sp, #-42]
l1335: mov R5, #70
l1336: ldrPLsb R12, [sp, -R5]
l1337: ldrMIsb R10, [sp, #-49]
l1338: strh R10, [sp, #-26]
l1339: mov R5, #64
l1340: ldrVCh R9, [sp, -R5]
l1341: ldrNEh R2, [sp, #-6]
l1342: ldrPLsh R1, [sp, #-68]
l1343: strh R0, [sp, #-64]
l1344: ldrVCh R10, [sp, #-34]
l1345: ldrPLsb R10, [sp, #-50]
l1346: mov R14, #18
l1347: ldrh R0, [sp, -R14]
l1348: mov R8, #53
l1349: ldrLSsb R2, [sp, -R8]
l1350: mov R14, #6
l1351: ldrh R0, [sp, -R14]
l1352: ldrsb R5, [sp, #-49]
l1353: mov R1, #18
l1354: ldrsh R6, [sp, -R1]
l1355: mov R0, #61
l1356: ldrHIsb R10, [sp, -R0]
l1357: ldrLTsh R11, [sp, #-14]
l1358: mov R6, #12
l1359: ldrCSh R3, [sp, -R6]
l1360: mov R9, #10
l1361: strCSh R5, [sp, -R9]
l1362: strh R4, [sp, #-26]
l1363: ldrh R9, [sp, #-6]
l1364: ldrsh R4, [sp, #-74]
l1365: mov R5, #16
l1366: ldrHIh R12, [sp, -R5]
l1367: mov R6, #34
l1368: ldrh R1, [sp, -R6]
l1369: mov R3, #58
l1370: ldrsh R3, [sp, -R3]
l1371: strh R5, [sp, #-52]
l1372: ldrGEsh R8, [sp, #-78]
l1373: mov R3, #67
l1374: ldrsb R6, [sp, -R3]
l1375: ldrVCh R14, [sp, #-38]
l1376: ldrCSsh R1, [sp, #-48]
l1377: mov R11, #50
l1378: strh R10, [sp, -R11]
l1379: mov R5, #46
l1380: strh R1, [sp, -R5]
l1381: mov R5, #52
l1382: ldrHIh R14, [sp, -R5]
l1383: ldrsh R8, [sp, #-30]
l1384: mov R5, #44
l1385: ldrsb R2, [sp, -R5]
l1386: ldrPLsh R7, [sp, #-52]
l1387: ldrCCsb R5, [sp, #-24]
l1388: ldrh R3, [sp, #-48]
l1389: mov R2, #18
l1390: ldrGTsh R8, [sp, -R2]
l1391: strh R12, [sp, #-44]
l1392: strMIh R11, [sp, #-58]
l1393: ldrLSsb R7, [sp, #-75]
l1394: ldrLEsb R0, [sp, #-11]
l1395: mov R1, #42
l1396: ldrsh R6, [sp, -R1]
l1397: ldrLTsb R7, [sp, #-39]
l1398: ldrsb R11, [sp, #-70]
l1399: mov R1, #42
l1400: ldrLSsh R10, [sp, -R1]
l1401: mov R4, #25
l1402: ldrsb R12, [sp, -R4]
l1403: mov R3, #58
l1404: ldrEQsb R12, [sp, -R3]
l1405: mov R10, #62
l1406: ldrPLh R10, [sp, -R10]
l1407: mov R0, #28
l1408: ldrGTh R12, [sp, -R0]
l1409: ldrPLsh R2, [sp, #-28]
l1410: mov R12, #65
l1411: ldrGEsb R8, [sp, -R12]
l1412: ldrVCh R14, [sp, #-68]
l1413: ldrNEh R3, [sp, #-40]
l1414: mov R0, #38
l1415: strVSh R11, [sp, -R0]
l1416: mov R4, #52
l1417: strMIh R6, [sp, -R4]
l1418: strGEh R7, [sp, #-62]
l1419: mov R6, #28
l1420: strHIh R5, [sp, -R6]
l1421: ldrMIsb R5, [sp, #-75]
l1422: mov R5, #66
l1423: ldrsh R14, [sp, -R5]
l1424: strh R3, [sp, #-38]
l1425: strh R11, [sp, #-28]
l1426: mov R2, #24
l1427: strVSh R9, [sp, -R2]
l1428: mov R2, #78
l1429: ldrHIh R1, [sp, -R2]
l1430: mov R5, #74
l1431: strh R5, [sp, -R5]
l1432: strh R3, [sp, #-68]
l1433: ldrh R14, [sp, #-70]
l1434: mov R12, #40
l1435: ldrh R6, [sp, -R12]
l1436: ldrVCsh R10, [sp, #-10]
l1437: mov R8, #56
l1438: ldrCCh R8, [sp, -R8]
l1439: strh R8, [sp, #-56]
l1440: mov R4, #56
l1441: ldrCSh R4, [sp, -R4]
l1442: ldrEQsb R12, [sp, #-38]
l1443: ldrsb R10, [sp, #-43]
l1444: mov R12, #71
l1445: ldrMIsb R8, [sp, -R12]
l1446: strEQh R7, [sp, #-8]
l1447: mov R9, #38
l1448: strh R2, [sp, -R9]
l1449: ldrsb R12, [sp, #-61]
l1450: strGEh R14, [sp, #-50]
l1451: mov R5, #57
l1452: ldrsb R5, [sp, -R5]
l1453: mov R11, #20
l1454: strGEh R9, [sp, -R11]
l1455: mov R7, #68
l1456: ldrh R9, [sp, -R7]
l1457: mov R8, #74
l1458: ldrLSsh R12, [sp, -R8]
l1459: mov R4, #70
l1460: ldrh R8, [sp, -R4]
l1461: ldrGEh R5, [sp, #-38]
l1462: mov R14, #36
l1463: ldrsh R9, [sp, -R14]
l1464: ldrGTsh R0, [sp, #-20]
l1465: ldrsh R3, [sp, #-76]
l1466: ldrPLsh R14, [sp, #-10]
l1467: mov R6, #74
l1468: ldrCCsh R8, [sp, -R6]
l1469: strPLh R0, [sp, #-26]
l1470: ldrLSh R14, [sp, #-64]
l1471: mov R1, #50
l1472: ldrh R9, [sp, -R1]
l1473: ldrLSh R4, [sp, #-20]
l1474: mov R5, #54
l1475: ldrHIsh R1, [sp, -R5]
l1476: strh R8, [sp, #-32]
l1477: mov R5, #64
l1478: ldrsh R3, [sp, -R5]
l1479: strh R2, [sp, #-40]
l1480: mov R2, #10
l1481: ldrsh R3, [sp, -R2]
l1482: mov R0, #72
l1483: strVCh R3, [sp, -R0]
l1484: strh R2, [sp, #-34]
l1485: mov R1, #32
l1486: strHIh R0, [sp, -R1]
l1487: ldrPLsb R3, [sp, #-69]
l1488: mov R14, #48
l1489: strLSh R5, [sp, -R14]
l1490: mov R12, #28
l1491: ldrh R6, [sp, -R12]
l1492: mov R7, #16
l1493: ldrsh R9, [sp, -R7]
l1494: strh R8, [sp, #-8]
l1495: mov R12, #78
l1496: ldrh R2, [sp, -R12]
l1497: ldrMIsb R9, [sp, #-21]
l1498: strNEh R5, [sp, #-64]
l1499: mov R5, #49
l1500: ldrsb R4, [sp, -R5]
l1501: strLTh R11, [sp, #-72]
l1502: mov R6, #70
l1503: ldrsh R3, [sp, -R6]
l1504: mov R11, #80
l1505: ldrLSsb R4, [sp, -R11]
l1506: ldrsh R1, [sp, #-14]
l1507: mov R6, #48
l1508: ldrh R10, [sp, -R6]
l1509: ldrHIsh R5, [sp, #-68]
l1510: ldrCSsb R9, [sp, #-80]
l1511: mov R5, #22
l1512: ldrh R14, [sp, -R5]
l1513: ldrsb R12, [sp, #-30]
l1514: ldrPLh R2, [sp, #-44]
l1515: mov R10, #12
l1516: ldrNEh R6, [sp, -R10]
l1517: ldrMIsh R2, [sp, #-34]
l1518: mov R7, #24
l1519: ldrsh R9, [sp, -R7]
l1520: ldrh R4, [sp, #-26]
l1521: mov R14, #26
l1522: strCCh R7, [sp, -R14]
l1523: ldrGTh R7, [sp, #-68]
l1524: strh R3, [sp, #-34]
l1525: ldrVCh R14, [sp, #-24]
l1526: mov R11, #73
l1527: ldrsb R0, [sp, -R11]
l1528: ldrh R6, [sp, #-16]
l1529: mov R3, #18
l1530: ldrGTh R10, [sp, -R3]
l1531: ldrsh R8, [sp, #-16]
l1532: mov R14, #22
l1533: strLEh R1, [sp, -R14]
l1534: ldrsb R10, [sp, #-67]
l1535: ldrGTh R0, [sp, #-60]
l1536: mov R9, #52
l1537: strh R7, [sp, -R9]
l1538: mov R14, #14
l1539: ldrLSh R9, [sp, -R14]
l1540: ldrEQsh R7, [sp, #-66]
l1541: mov R1, #69
l1542: ldrsb R10, [sp, -R1]
l1543: ldrh R11, [sp, #-22]
l1544: mov R6, #72
l1545: ldrLSsh R5, [sp, -R6]
l1546: strCSh R9, [sp, #-34]
l1547: ldrPLsb R4, [sp, #-71]
l1548: mov R7, #35
l1549: ldrCSsb R7, [sp, -R7]
l1550: ldrGTsh R7, [sp, #-24]
l1551: mov R11, #6
l1552: ldrGEsh R5, [sp, -R11]
l1553: strLTh R6, [sp, #-72]
l1554: ldrVCsh R14, [sp, #-76]
l1555: strVSh R12, [sp, #-66]
l1556: strLEh R8, [sp, #-16]
l1557: ldrsh R11, [sp, #-58]
l1558: strCSh R11, [sp, #-40]
l1559: strGTh R2, [sp, #-6]
l1560: strPLh R0, [sp, #-76]
l1561: mov R8, #20
l1562: ldrsh R14, [sp, -R8]
l1563: strLTh R12, [sp, #-80]
l1564: mov R3, #44
l1565: ldrNEh R4, [sp, -R3]
l1566: ldrsh R3, [sp, #-12]
l1567: strMIh R10, [sp, #-70]
l1568: ldrLSsb R5, [sp, #-33]
l1569: strGTh R3, [sp, #-32]
l1570: mov R9, #64
l1571: ldrsh R11, [sp, -R9]
l1572: mov R10, #28
l1573: strCSh R3, [sp, -R10]
l1574: mov R0, #6
l1575: strLEh R2, [sp, -R0]
l1576: mov R6, #80
l1577: ldrh R4, [sp, -R6]
l1578: ldrCCsh R5, [sp, #-74]
l1579: mov R6, #80
l1580: ldrPLh R10, [sp, -R6]
l1581: strh R5, [sp, #-28]
l1582: mov R6, #42
l1583: ldrh R4, [sp, -R6]
l1584: mov R12, #60
l1585: ldrsh R14, [sp, -R12]
l1586: ldrNEh R8, [sp, #-18]
l1587: mov R6, #78
l1588: ldrh R6, [sp, -R6]
l1589: mov R5, #16
l1590: ldrsh R2, [sp, -R5]
l1591: ldrsb R6, [sp, #-65]
l1592: ldrPLsh R6, [sp, #-74]
l1593: mov R10, #6
l1594: ldrLSh R3, [sp, -R10]
l1595: mov R6, #56
l1596: ldrHIsh R12, [sp, -R6]
l1597: ldrh R2, [sp, #-8]
l1598: ldrGTsb R8, [sp, #-36]
l1599: mov R7, #34
l1600: ldrVSsb R1, [sp, -R7]
l1601: mov R11, #44
l1602: ldrh R11, [sp, -R11]
l1603: mov R10, #56
l1604: ldrsh R12, [sp, -R10]
l1605: strh R12, [sp, #-62]
l1606: ldrsb R14, [sp, #-58]
l1607: ldrsh R1, [sp, #-34]
l1608: mov R10, #64
l1609: strh R3, [sp, -R10]
l1610: mov R9, #22
l1611: ldrh R4, [sp, -R9]
l1612: mov R12, #79
l1613: ldrEQsb R9, [sp, -R12]
l1614: mov R9, #50
l1615: ldrVCsh R1, [sp, -R9]
l1616: mov R2, #10
l1617: ldrPLh R9, [sp, -R2]
l1618: mov R11, #26
l1619: ldrsh R8, [sp, -R11]
l1620: ldrGEsh R7, [sp, #-24]
l1621: mov R6, #35
l1622: ldrGTsb R6, [sp, -R6]
l1623: mov R14, #78
l1624: ldrsh R10, [sp, -R14]
l1625: ldrNEh R11, [sp, #-50]
l1626: strh R11, [sp, #-26]
l1627: strCCh R5, [sp, #-20]
l1628: mov R10, #66
l1629: ldrLSsh R0, [sp, -R10]
l1630: mov R5, #52
l1631: ldrVSh R9, [sp, -R5]
l1632: mov R7, #32
l1633: strh R7, [sp, -R7]
l1634: ldrsh R11, [sp, #-66]
l1635: mov R4, #16
l1636: strLTh R0, [sp, -R4]
l1637: mov R5, #54
l1638: strh R1, [sp, -R5]
l1639: ldrh R4, [sp, #-46]
l1640: mov R12, #34
l1641: strh R0, [sp, -R12]
l1642: mov R1, #76
l1643: ldrLSh R6, [sp, -R1]
l1644: mov R11, #22
l1645: strh R11, [sp, -R11]
l1646: mov R1, #56
l1647: ldrsh R7, [sp, -R1]
l1648: mov R2, #42
l1649: strh R4, [sp, -R2]
l1650: mov R14, #48
l1651: ldrsh R3, [sp, -R14]
l1652: mov R9, #26
l1653: ldrGTsh R7, [sp, -R9]
l1654: ldrh R11, [sp, #-38]
l1655: mov R7, #38
l1656: strh R3, [sp, -R7]
l1657: ldrsb R10, [sp, #-15]
l1658: ldrGEsb R11, [sp, #-34]
l1659: mov R14, #74
l1660: ldrh R14, [sp, -R14]
l1661: mov R1, #62
l1662: strCSh R0, [sp, -R1]
l1663: mov R2, #50
l1664: strh R1, [sp, -R2]
l1665: mov R0, #48
l1666: strh R3, [sp, -R0]
l1667: mov R0, #34
l1668: ldrEQsb R11, [sp, -R0]
l1669: ldrLEh R11, [sp, #-6]
l1670: mov R2, #62
l1671: ldrh R9, [sp, -R2]
l1672: mov R4, #72
l1673: ldrNEsh R10, [sp, -R4]
l1674: ldrh R9, [sp, #-72]
l1675: mov R6, #38
l1676: strPLh R3, [sp, -R6]
l1677: ldrVSsh R11, [sp, #-30]
l1678: ldrh R6, [sp, #-62]
l1679: mov R8, #36
l1680: strh R0, [sp, -R8]
l1681: ldrLTsh R6, [sp, #-22]
l1682: ldrh R2, [sp, #-58]
l1683: ldrNEsh R14, [sp, #-62]
l1684: mov R11, #8
l1685: strLTh R1, [sp, -R11]
l1686: ldrMIh R14, [sp, #-28]
l1687: mov R8, #10
l1688: ldrsb R7, [sp, -R8]
l1689: ldrMIsh R8, [sp, #-64]
l1690: strHIh R3, [sp, #-64]
l1691: mov R11, #26
l1692: ldrh R11, [sp, -R11]
l1693: mov R14, #56
l1694: ldrVCh R8, [sp, -R14]
l1695: mov R14, #54
l1696: ldrCSsh R7, [sp, -R14]
l1697: mov R9, #14
l1698: strEQh R7, [sp, -R9]
l1699: mov R14, #20
l1700: ldrMIh R1, [sp, -R14]
l1701: ldrHIsh R5, [sp, #-8]
l1702: mov R11, #40
l1703: ldrGEsh R0, [sp, -R11]
l1704: ldrsb R11, [sp, #-5]
l1705: mov R0, #24
l1706: ldrh R2, [sp, -R0]
l1707: mov R0, #58
l1708: ldrEQh R7, [sp, -R0]
l1709: ldrHIh R0, [sp, #-74]
l1710: ldrsh R9, [sp, #-62]
l1711: mov R8, #18
l1712: strEQh R2, [sp, -R8]
l1713: ldrNEsh R1, [sp, #-14]
l1714: mov R9, #76
l1715: ldrEQsb R7, [sp, -R9]
l1716: ldrMIh R12, [sp, #-54]
l1717: mov R6, #20
l1718: ldrGEsh R12, [sp, -R6]
l1719: mov R1, #40
l1720: strGEh R6, [sp, -R1]
l1721: mov R6, #62
l1722: ldrEQh R7, [sp, -R6]
l1723: mov R4, #16
l1724: strGTh R2, [sp, -R4]
l1725: ldrEQsb R5, [sp, #-53]
l1726: ldrEQsb R6, [sp, #-21]
l1727: ldrNEsb R0, [sp, #-44]
l1728: mov R12, #66
l1729: strh R5, [sp, -R12]
l1730: strNEh R9, [sp, #-28]
l1731: ldrsh R0, [sp, #-44]
l1732: ldrsb R6, [sp, #-36]
l1733: ldrh R12, [sp, #-18]
l1734: ldrsb R2, [sp, #-32]
l1735: ldrsb R0, [sp, #-10]
l1736: mov R11, #38
l1737: ldrHIsh R14, [sp, -R11]
l1738: strh R6, [sp, #-80]
l1739: mov R11, #20
l1740: ldrh R7, [sp, -R11]
l1741: mov R4, #38
l1742: ldrsh R0, [sp, -R4]
l1743: mov R5, #17
l1744: ldrHIsb R12, [sp, -R5]
l1745: mov R3, #8
l1746: strNEh R1, [sp, -R3]
l1747: mov R12, #15
l1748: ldrsb R11, [sp, -R12]
l1749: ldrsh R11, [sp, #-74]
l1750: ldrGEh R3, [sp, #-14]
l1751: mov R4, #55
l1752: ldrsb R7, [sp, -R4]
l1753: strh R4, [sp, #-52]
l1754: ldrPLh R11, [sp, #-64]
l1755: ldrh R7, [sp, #-68]
l1756: mov R3, #48
l1757: strLTh R3, [sp, -R3]
l1758: ldrh R10, [sp, #-42]
l1759: mov R11, #32
l1760: strh R9, [sp, -R11]
l1761: ldrLTh R11, [sp, #-28]
l1762: ldrsh R10, [sp, #-16]
l1763: strGEh R12, [sp, #-52]
l1764: mov R3, #14
l1765: ldrLEsb R14, [sp, -R3]
l1766: mov R9, #68
l1767: ldrHIsh R0, [sp, -R9]
l1768: ldrHIsh R3, [sp, #-38]
l1769: ldrsb R5, [sp, #-57]
l1770: ldrsb R5, [sp, #-15]
l1771: mov R11, #50
l1772: strh R9, [sp, -R11]
l1773: mov R7, #52
l1774: ldrh R1, [sp, -R7]
l1775: ldrh R5, [sp, #-68]
l1776: ldrh R10, [sp, #-40]
l1777: strHIh R12, [sp, #-66]
l1778: mov R5, #43
l1779: ldrLEsb R11, [sp, -R5]
l1780: mov R6, #26
l1781: ldrEQsh R10, [sp, -R6]
l1782: mov R1, #51
l1783: ldrsb R9, [sp, -R1]
l1784: ldrPLh R8, [sp, #-70]
l1785: mov R4, #24
l1786: strh R12, [sp, -R4]
l1787: mov R0, #22
l1788: ldrEQsb R4, [sp, -R0]
l1789: mov R14, #48
l1790: strh R11, [sp, -R14]
l1791: mov R6, #30
l1792: strGEh R0, [sp, -R6]
l1793: ldrVCsh R12, [sp, #-68]
l1794: mov R4, #58
l1795: ldrsb R8, [sp, -R4]
l1796: ldrNEsb R4, [sp, #-17]
l1797: ldrGEh R3, [sp, #-12]
l1798: ldrsb R0, [sp, #-32]
l1799: mov R4, #50
l1800: strLEh R0, [sp, -R4]
l1801: ldrsh R4, [sp, #-18]
l1802: strh R10, [sp, #-80]
l1803: ldrMIsb R10, [sp, #-56]
l1804: mov R1, #72
l1805: strLSh R11, [sp, -R1]
l1806: mov R12, #28
l1807: ldrh R10, [sp, -R12]
l1808: ldrMIsb R14, [sp, #-34]
l1809: ldrGEsh R7, [sp, #-42]
l1810: ldrPLsh R8, [sp, #-52]
l1811: mov R9, #28
l1812: strh R4, [sp, -R9]
l1813: mov R12, #80
l1814: ldrCCsh R14, [sp, -R12]
l1815: mov R0, #52
l1816: ldrVCsb R12, [sp, -R0]
l1817: mov R12, #44
l1818: strCCh R14, [sp, -R12]
l1819: mov R2, #40
l1820: strh R7, [sp, -R2]
l1821: ldrsh R3, [sp, #-12]
l1822: mov R1, #70
l1823: strh R12, [sp, -R1]
l1824: mov R4, #52
l1825: ldrsh R1, [sp, -R4]
l1826: ldrLTsb R12, [sp, #-70]
l1827: mov R5, #66
l1828: ldrCCsh R2, [sp, -R5]
l1829: mov R0, #20
l1830: ldrLTsb R2, [sp, -R0]
l1831: mov R9, #46
l1832: ldrMIsh R5, [sp, -R9]
l1833: ldrsh R4, [sp, #-52]
l1834: ldrsh R14, [sp, #-20]
l1835: strCCh R7, [sp, #-44]
l1836: strPLh R2, [sp, #-46]
l1837: ldrLSsb R8, [sp, #-74]
l1838: strCCh R0, [sp, #-16]
l1839: mov R9, #46
l1840: ldrCSsh R2, [sp, -R9]
l1841: strh R6, [sp, #-68]
l1842: ldrsh R12, [sp, #-72]
l1843: strCCh R11, [sp, #-20]
l1844: ldrMIsb R1, [sp, #-14]
l1845: mov R8, #40
l1846: ldrh R10, [sp, -R8]
l1847: strh R5, [sp, #-72]
l1848: mov R8, #64
l1849: strh R12, [sp, -R8]
l1850: ldrsb R3, [sp, #-7]
l1851: mov R12, #62
l1852: strCCh R5, [sp, -R12]
l1853: ldrsh R12, [sp, #-8]
l1854: mov R2, #32
l1855: strGEh R4, [sp, -R2]
l1856: ldrLEsb R6, [sp, #-18]
l1857: ldrsh R6, [sp, #-28]
l1858: ldrVSsh R10, [sp, #-32]
l1859: mov R1, #56
l1860: ldrGEh R5, [sp, -R1]
l1861: ldrVSh R8, [sp, #-40]
l1862: mov R8, #57
l1863: ldrEQsb R14, [sp, -R8]
l1864: ldrEQsb R0, [sp, #-28]
l1865: mov R6, #50
l1866: strVSh R9, [sp, -R6]
l1867: ldrsb R14, [sp, #-58]
l1868: strLSh R7, [sp, #-66]
l1869: mov R5, #34
l1870: ldrEQsb R7, [sp, -R5]
l1871: ldrsb R9, [sp, #-48]
l1872: mov R4, #58
l1873: ldrsb R4, [sp, -R4]
l1874: mov R2, #38
l1875: ldrh R11, [sp, -R2]
l1876: ldrGTh R3, [sp, #-64]
l1877: ldrHIh R14, [sp, #-36]
l1878: ldrVCsh R14, [sp, #-32]
l1879: mov R11, #79
l1880: ldrLEsb R8, [sp, -R11]
l1881: strh R2, [sp, #-10]
l1882: mov R2, #18
l1883: ldrCSh R14, [sp, -R2]
l1884: ldrsh R8, [sp, #-20]
l1885: mov R6, #28
l1886: ldrh R5, [sp, -R6]
l1887: ldrsb R7, [sp, #-21]
l1888: mov R6, #21
l1889: ldrLEsb R9, [sp, -R6]
l1890: strh R2, [sp, #-44]
l1891: ldrsb R1, [sp, #-37]
l1892: ldrsb R11, [sp, #-67]
l1893: ldrh R14, [sp, #-24]
l1894: mov R0, #28
l1895: ldrVCsh R5, [sp, -R0]
l1896: mov R11, #32
l1897: ldrCSsb R10, [sp, -R11]
l1898: mov R14, #70
l1899: ldrCSh R5, [sp, -R14]
l1900: mov R7, #18
l1901: ldrNEsb R2, [sp, -R7]
l1902: strCSh R12, [sp, #-20]
l1903: mov R6, #14
l1904: ldrsh R3, [sp, -R6]
l1905: mov R7, #40
l1906: ldrEQsb R14, [sp, -R7]
l1907: strMIh R6, [sp, #-34]
l1908: ldrVSsh R7, [sp, #-30]
l1909: mov R9, #28
l1910: ldrVCh R2, [sp, -R9]
l1911: mov R7, #16
l1912: ldrsh R6, [sp, -R7]
l1913: ldrVCsh R0, [sp, #-56]
l1914: mov R4, #54
l1915: strh R3, [sp, -R4]
l1916: mov R1, #38
l1917: ldrGTsh R12, [sp, -R1]
l1918: mov R10, #13
l1919: ldrsb R11, [sp, -R10]
l1920: strHIh R5, [sp, #-72]
l1921: mov R11, #52
l1922: ldrh R0, [sp, -R11]
l1923: mov R6, #40
l1924: strLEh R9, [sp, -R6]
l1925: strh R7, [sp, #-20]
l1926: ldrsh R10, [sp, #-16]
l1927: mov R4, #27
l1928: ldrLTsb R3, [sp, -R4]
l1929: ldrMIsb R5, [sp, #-56]
l1930: strLTh R9, [sp, #-42]
l1931: mov R6, #20
l1932: ldrsh R8, [sp, -R6]
l1933: ldrVSsh R6, [sp, #-32]
l1934: mov R3, #24
l1935: ldrh R3, [sp, -R3]
l1936: mov R8, #26
l1937: ldrCCsh R1, [sp, -R8]
l1938: mov R6, #32
l1939: ldrCSh R8, [sp, -R6]
l1940: ldrsh R12, [sp, #-32]
l1941: ldrPLh R6, [sp, #-56]
l1942: ldrHIh R8, [sp, #-74]
l1943: ldrsh R1, [sp, #-76]
l1944: strLTh R1, [sp, #-26]
l1945: ldrsh R12, [sp, #-28]
l1946: mov R11, #57
l1947: ldrsb R10, [sp, -R11]
l1948: mov R2, #64
l1949: ldrsh R1, [sp, -R2]
l1950: mov R7, #28
l1951: strh R11, [sp, -R7]
l1952: ldrh R12, [sp, #-34]
l1953: strGEh R4, [sp, #-10]
l1954: ldrCCsh R3, [sp, #-30]
l1955: mov R9, #54
l1956: ldrsh R0, [sp, -R9]
l1957: mov R10, #58
l1958: ldrh R3, [sp, -R10]
l1959: strPLh R5, [sp, #-64]
l1960: mov R5, #8
l1961: strPLh R7, [sp, -R5]
l1962: mov R7, #34
l1963: ldrMIsh R8, [sp, -R7]
l1964: strCSh R8, [sp, #-30]
l1965: ldrPLsh R12, [sp, #-28]
l1966: ldrHIh R9, [sp, #-46]
l1967: ldrh R5, [sp, #-46]
l1968: mov R6, #66
l1969: strh R10, [sp, -R6]
l1970: mov R3, #48
l1971: ldrCSh R5, [sp, -R3]
l1972: mov R4, #12
l1973: ldrHIsb R9, [sp, -R4]
l1974: mov R10, #18
l1975: strMIh R10, [sp, -R10]
l1976: mov R4, #36
l1977: strLEh R10, [sp, -R4]
l1978: ldrsb R12, [sp, #-57]
l1979: ldrLSsh R10, [sp, #-24]
l1980: mov R14, #76
l1981: ldrsb R14, [sp, -R14]
l1982: mov R9, #25
l1983: ldrsb R11, [sp, -R9]
l1984: mov R14, #49
l1985: ldrLSsb R5, [sp, -R14]
l1986: strh R5, [sp, #-38]
l1987: mov R4, #76
l1988: strh R10, [sp, -R4]
l1989: ldrLTh R1, [sp, #-6]
l1990: ldrGTsb R0, [sp, #-35]
l1991: mov R3, #8
l1992: strVSh R14, [sp, -R3]
l1993: mov R7, #20
l1994: ldrVSh R2, [sp, -R7]
l1995: ldrLSsb R11, [sp, #-49]
l1996: mov R9, #72
l1997: ldrMIh R11, [sp, -R9]
l1998: strGTh R11, [sp, #-8]
l1999: ldrPLsh R5, [sp, #-6]
l2000: mov R0, #56
l2001: strGTh R11, [sp, -R0]
l2002: ldrh R11, [sp, #-14]
l2003: mov R3, #42
l2004: strh R7, [sp, -R3]
l2005: ldrLSsb R5, [sp, #-35]
l2006: mov R5, #10
l2007: ldrCCsh R3, [sp, -R5]
l2008: ldrh R11, [sp, #-66]
l2009: mov R4, #59
l2010: ldrHIsb R3, [sp, -R4]
l2011: strNEh R12, [sp, #-38]
l2012: ldrGTh R0, [sp, #-14]
l2013: mov R5, #54
l2014: strh R3, [sp, -R5]
l2015: ldrEQsb R0, [sp, #-15]
l2016: ldrsh R14, [sp, #-60]
l2017: ldrCCsh R5, [sp, #-6]
l2018: mov R11, #10
l2019: strh R1, [sp, -R11]
l2020: ldrh R0, [sp, #-76]
l2021: mov R5, #30
l2022: strh R3, [sp, -R5]
l2023: mov R10, #18
l2024: ldrh R4, [sp, -R10]
l2025: mov R7, #26
l2026: strVSh R12, [sp, -R7]
l2027: mov R5, #40
l2028: ldrLSh R7, [sp, -R5]
l2029: mov R4, #22
l2030: ldrh R11, [sp, -R4]
l2031: mov R4, #22
l2032: ldrh R11, [sp, -R4]
l2033: mov R4, #38
l2034: ldrPLsh R5, [sp, -R4]
l2035: ldrLEh R2, [sp, #-62]
l2036: mov R0, #79
l2037: ldrsb R4, [sp, -R0]
l2038: ldrLEh R0, [sp, #-12]
l2039: mov R1, #68
l2040: ldrsh R5, [sp, -R1]
l2041: strh R0, [sp, #-68]
l2042: ldrMIh R14, [sp, #-26]
l2043: mov R7, #61
l2044: ldrPLsb R2, [sp, -R7]
l2045: mov R9, #57
l2046: ldrsb R0, [sp, -R9]
l2047: mov R7, #54
l2048: ldrLTsh R4, [sp, -R7]
l2049: mov R11, #30
l2050: ldrh R7, [sp, -R11]
l2051: mov R1, #5
l2052: ldrPLsb R14, [sp, -R1]
l2053: strh R3, [sp, #-36]
l2054: strMIh R10, [sp, #-22]
l2055: mov R4, #78
l2056: strPLh R1, [sp, -R4]
l2057: mov R8, #8
l2058: ldrsb R11, [sp, -R8]
l2059: mov R9, #68
l2060: ldrNEsh R3, [sp, -R9]
l2061: ldrVSh R0, [sp, #-56]
l2062: ldrCCsh R3, [sp, #-30]
l2063: ldrGEh R11, [sp, #-10]
l2064: ldrLEsb R9, [sp, #-15]
l2065: mov R14, #44
l2066: strEQh R1, [sp, -R14]
l2067: ldrMIh R4, [sp, #-54]
l2068: ldrPLsh R12, [sp, #-56]
l2069: mov R0, #50
l2070: ldrh R11, [sp, -R0]
l2071: ldrGEsb R8, [sp, #-31]
l2072: ldrsb R8, [sp, #-17]
l2073: ldrGEh R10, [sp, #-14]
l2074: mov R8, #40
l2075: strCCh R6, [sp, -R8]
l2076: mov R9, #40
l2077: ldrCCsb R6, [sp, -R9]
l2078: strh R9, [sp, #-6]
l2079: mov R12, #14
l2080: ldrHIh R3, [sp, -R12]
l2081: mov R1, #37
l2082: ldrsb R6, [sp, -R1]
l2083: ldrPLsb R6, [sp, #-49]
l2084: strPLh R0, [sp, #-24]
l2085: mov R12, #25
l2086: ldrsb R11, [sp, -R12]
l2087: mov R14, #68
l2088: ldrCCsb R6, [sp, -R14]
l2089: strEQh R12, [sp, #-74]
l2090: ldrh R7, [sp, #-28]
l2091: strPLh R4, [sp, #-20]
l2092: ldrVCsb R10, [sp, #-12]
l2093: mov R11, #32
l2094: strVCh R4, [sp, -R11]
l2095: ldrh R1, [sp, #-70]
l2096: ldrHIh R6, [sp, #-58]
l2097: ldrMIh R9, [sp, #-72]
l2098: strCCh R5, [sp, #-42]
l2099: strMIh R5, [sp, #-12]
l2100: strNEh R10, [sp, #-40]
l2101: strh R14, [sp, #-58]
l2102: mov R8, #63
l2103: ldrsb R5, [sp, -R8]
l2104: ldrEQsb R5, [sp, #-10]
l2105: mov R6, #62
l2106: strGEh R6, [sp, -R6]
l2107: mov R6, #16
l2108: ldrMIsh R7, [sp, -R6]
l2109: mov R11, #42
l2110: ldrsb R2, [sp, -R11]
l2111: ldrVSh R1, [sp, #-32]
l2112: strh R2, [sp, #-70]
l2113: mov R2, #52
l2114: ldrsh R14, [sp, -R2]
l2115: ldrCCsh R0, [sp, #-22]
l2116: mov R3, #71
l2117: ldrsb R6, [sp, -R3]
l2118: ldrsh R6, [sp, #-20]
l2119: mov R0, #44
l2120: ldrsb R14, [sp, -R0]
l2121: ldrsb R6, [sp, #-29]
l2122: mov R9, #20
l2123: ldrVSsh R6, [sp, -R9]
l2124: strh R12, [sp, #-52]
l2125: mov R7, #30
l2126: ldrHIh R2, [sp, -R7]
l2127: ldrGTsh R3, [sp, #-66]
l2128: mov R3, #68
l2129: ldrsb R7, [sp, -R3]
l2130: ldrPLsh R12, [sp, #-32]
l2131: mov R2, #61
l2132: ldrVSsb R11, [sp, -R2]
l2133: mov R0, #66
l2134: ldrPLh R4, [sp, -R0]
l2135: strCSh R5, [sp, #-54]
l2136: mov R0, #21
l2137: ldrsb R8, [sp, -R0]
l2138: mov R6, #14
l2139: strPLh R5, [sp, -R6]
l2140: ldrh R11, [sp, #-26]
l2141: ldrCCsh R7, [sp, #-76]
l2142: mov R1, #75
l2143: ldrsb R6, [sp, -R1]
l2144: strCCh R9, [sp, #-76]
l2145: ldrCCh R5, [sp, #-10]
l2146: mov R14, #52
l2147: ldrh R12, [sp, -R14]
l2148: mov R7, #16
l2149: strHIh R0, [sp, -R7]
l2150: mov R3, #48
l2151: strLEh R4, [sp, -R3]
l2152: mov R10, #70
l2153: ldrMIsh R2, [sp, -R10]
l2154: ldrVSh R8, [sp, #-48]
l2155: ldrLTh R11, [sp, #-62]
l2156: mov R5, #44
l2157: strh R5, [sp, -R5]
l2158: mov R9, #38
l2159: ldrLEsh R1, [sp, -R9]
l2160: mov R7, #36
l2161: ldrLEh R1, [sp, -R7]
l2162: strCCh R7, [sp, #-16]
l2163: mov R8, #33
l2164: ldrNEsb R12, [sp, -R8]
l2165: mov R5, #10
l2166: ldrVCh R10, [sp, -R5]
l2167: mov R0, #48
l2168: ldrsb R4, [sp, -R0]
l2169: mov R4, #54
l2170: ldrMIsh R1, [sp, -R4]
l2171: ldrsh R3, [sp, #-42]
l2172: ldrMIsh R7, [sp, #-68]
l2173: mov R14, #60
l2174: strGTh R5, [sp, -R14]
l2175: ldrLEsb R4, [sp, #-32]
l2176: ldrVSh R9, [sp, #-72]
l2177: strh R7, [sp, #-8]
l2178: mov R2, #68
l2179: ldrsh R1, [sp, -R2]
l2180: ldrh R2, [sp, #-26]
l2181: mov R7, #74
l2182: ldrVCsh R6, [sp, -R7]
l2183: ldrh R12, [sp, #-18]
l2184: ldrCSsh R4, [sp, #-36]
l2185: ldrVCsb R6, [sp, #-71]
l2186: mov R10, #52
l2187: ldrCSsh R3, [sp, -R10]
l2188: ldrGTsh R10, [sp, #-18]
l2189: ldrLSsb R3, [sp, #-29]
l2190: mov R0, #60
l2191: ldrh R11, [sp, -R0]
l2192: mov R6, #50
l2193: ldrsh R9, [sp, -R6]
l2194: mov R1, #52
l2195: strh R14, [sp, -R1]
l2196: mov R14, #18
l2197: ldrLSsh R4, [sp, -R14]
l2198: mov R9, #24
l2199: ldrGTsb R11, [sp, -R9]
l2200: ldrCSsb R9, [sp, #-5]
l2201: ldrGEsh R11, [sp, #-64]
l2202: ldrsb R11, [sp, #-63]
l2203: ldrsh R6, [sp, #-16]
l2204: ldrLTsh R0, [sp, #-54]
l2205: mov R1, #28
l2206: ldrPLsb R1, [sp, -R1]
l2207: mov R11, #71
l2208: ldrsb R5, [sp, -R11]
l2209: ldrVCsb R2, [sp, #-68]
l2210: ldrLSsb R0, [sp, #-41]
l2211: ldrsh R2, [sp, #-18]
l2212: mov R6, #44
l2213: ldrNEsh R0, [sp, -R6]
l2214: ldrVCsb R9, [sp, #-42]
l2215: mov R7, #69
l2216: ldrsb R7, [sp, -R7]
l2217: ldrsh R14, [sp, #-66]
l2218: ldrLTsh R8, [sp, #-40]
l2219: mov R8, #42
l2220: ldrCSh R12, [sp, -R8]
l2221: mov R8, #78
l2222: ldrNEsh R6, [sp, -R8]
l2223: mov R6, #26
l2224: ldrsb R4, [sp, -R6]
l2225: mov R10, #56
l2226: ldrNEsh R6, [sp, -R10]
l2227: mov R12, #52
l2228: ldrVCsh R3, [sp, -R12]
l2229: mov R7, #12
l2230: ldrMIsh R11, [sp, -R7]
l2231: mov R14, #74
l2232: strLTh R1, [sp, -R14]
l2233: strLTh R14, [sp, #-52]
l2234: ldrLTsh R12, [sp, #-10]
l2235: ldrPLsh R5, [sp, #-36]
l2236: ldrGTh R1, [sp, #-8]
l2237: strPLh R14, [sp, #-60]
l2238: ldrLSsb R7, [sp, #-71]
l2239: strh R2, [sp, #-42]
l2240: mov R7, #8
l2241: ldrsh R14, [sp, -R7]
l2242: mov R5, #74
l2243: strh R1, [sp, -R5]
l2244: ldrLSsb R5, [sp, #-7]
l2245: strh R7, [sp, #-78]
l2246: ldrMIsh R12, [sp, #-48]
l2247: ldrLTsb R2, [sp, #-6]
l2248: mov R1, #12
l2249: ldrVCsb R12, [sp, -R1]
l2250: strLEh R8, [sp, #-76]
l2251: ldrh R6, [sp, #-50]
l2252: strNEh R4, [sp, #-60]
l2253: strh R14, [sp, #-24]
l2254: mov R4, #8
l2255: ldrh R3, [sp, -R4]
l2256: mov R0, #54
l2257: ldrsb R14, [sp, -R0]
l2258: mov R11, #44
l2259: strh R3, [sp, -R11]
l2260: mov R2, #18
l2261: strLEh R8, [sp, -R2]
l2262: mov R11, #54
l2263: ldrh R2, [sp, -R11]
l2264: ldrMIsb R1, [sp, #-52]
l2265: ldrGEh R14, [sp, #-24]
l2266: mov R0, #37
l2267: ldrsb R11, [sp, -R0]
l2268: ldrCCh R2, [sp, #-16]
l2269: ldrGEsh R11, [sp, #-38]
l2270: mov R12, #7
l2271: ldrsb R12, [sp, -R12]
l2272: ldrPLh R7, [sp, #-46]
l2273: mov R5, #44
l2274: strh R9, [sp, -R5]
l2275: ldrsh R14, [sp, #-68]
l2276: ldrsh R0, [sp, #-74]
l2277: strVCh R12, [sp, #-72]
l2278: ldrsh R5, [sp, #-72]
l2279: mov R5, #76
l2280: strh R9, [sp, -R5]
l2281: mov R5, #58
l2282: ldrPLsb R9, [sp, -R5]
l2283: ldrMIh R0, [sp, #-44]
l2284: mov R2, #73
l2285: ldrsb R0, [sp, -R2]
l2286: strGTh R11, [sp, #-26]
l2287: mov R6, #54
l2288: ldrLEsb R10, [sp, -R6]
l2289: ldrh R9, [sp, #-60]
l2290: ldrVSsh R2, [sp, #-58]
l2291: ldrh R8, [sp, #-40]
l2292: ldrsh R2, [sp, #-22]
l2293: mov R8, #18
l2294: ldrNEsh R14, [sp, -R8]
l2295: strh R6, [sp, #-26]
l2296: ldrsh R1, [sp, #-10]
l2297: ldrVSsh R1, [sp, #-56]
l2298: mov R9, #12
l2299: strGTh R5, [sp, -R9]
l2300: ldrVSsh R4, [sp, #-28]
l2301: ldrLSh R6, [sp, #-6]
l2302: mov R8, #32
l2303: ldrh R2, [sp, -R8]
l2304: mov R12, #40
l2305: ldrh R9, [sp, -R12]
l2306: strh R2, [sp, #-42]
l2307: mov R12, #6
l2308: ldrGEh R5, [sp, -R12]
l2309: strPLh R8, [sp, #-34]
l2310: mov R8, #80
l2311: strh R4, [sp, -R8]
l2312: mov R14, #30
l2313: ldrEQh R7, [sp, -R14]
l2314: mov R14, #70
l2315: ldrh R9, [sp, -R14]
l2316: mov R11, #58
l2317: ldrsb R8, [sp, -R11]
l2318: ldrGTh R6, [sp, #-32]
l2319: ldrh R2, [sp, #-74]
l2320: mov R2, #56
l2321: ldrh R4, [sp, -R2]
l2322: mov R7, #26
l2323: ldrsb R14, [sp, -R7]
l2324: mov R2, #15
l2325: ldrCCsb R12, [sp, -R2]
l2326: ldrMIsb R2, [sp, #-12]
l2327: mov R14, #80
l2328: strh R1, [sp, -R14]
l2329: ldrh R9, [sp, #-72]
l2330: ldrVSsh R8, [sp, #-60]
l2331: mov R2, #14
l2332: strh R8, [sp, -R2]
l2333: ldrHIsb R2, [sp, #-34]
l2334: ldrsh R7, [sp, #-74]
l2335: mov R5, #38
l2336: ldrVCh R4, [sp, -R5]
l2337: mov R3, #66
l2338: strLEh R9, [sp, -R3]
l2339: mov R8, #58
l2340: ldrMIsh R14, [sp, -R8]
l2341: mov R14, #54
l2342: ldrsh R9, [sp, -R14]
l2343: ldrsb R6, [sp, #-61]
l2344: ldrh R8, [sp, #-74]
l2345: mov R14, #28
l2346: ldrh R12, [sp, -R14]
l2347: ldrsh R6, [sp, #-78]
l2348: mov R2, #34
l2349: ldrGEh R9, [sp, -R2]
l2350: strh R7, [sp, #-60]
l2351: ldrsb R11, [sp, #-60]
l2352: ldrEQh R0, [sp, #-32]
l2353: mov R14, #77
l2354: ldrLEsb R3, [sp, -R14]
l2355: mov R7, #48
l2356: ldrsh R0, [sp, -R7]
l2357: strh R9, [sp, #-54]
l2358: mov R4, #58
l2359: ldrPLh R8, [sp, -R4]
l2360: strNEh R6, [sp, #-70]
l2361: ldrPLh R14, [sp, #-10]
l2362: mov R14, #56
l2363: strEQh R8, [sp, -R14]
l2364: ldrVSsh R10, [sp, #-6]
l2365: mov R5, #26
l2366: ldrsb R14, [sp, -R5]
l2367: ldrsh R1, [sp, #-64]
l2368: mov R6, #56
l2369: ldrEQsb R8, [sp, -R6]
l2370: ldrLSsh R4, [sp, #-40]
l2371: ldrCSh R0, [sp, #-68]
l2372: strh R6, [sp, #-52]
l2373: mov R6, #70
l2374: ldrh R12, [sp, -R6]
l2375: ldrh R11, [sp, #-22]
l2376: ldrNEsh R4, [sp, #-16]
l2377: ldrh R10, [sp, #-10]
l2378: mov R2, #16
l2379: strLTh R7, [sp, -R2]
l2380: ldrVCsb R11, [sp, #-14]
l2381: mov R1, #62
l2382: strLSh R14, [sp, -R1]
l2383: mov R5, #78
l2384: strh R7, [sp, -R5]
l2385: ldrGEh R14, [sp, #-16]
l2386: mov R9, #44
l2387: ldrLTsh R11, [sp, -R9]
l2388: mov R1, #42
l2389: ldrVCh R10, [sp, -R1]
l2390: mov R8, #10
l2391: ldrVSh R8, [sp, -R8]
l2392: mov R4, #76
l2393: ldrGTh R7, [sp, -R4]
l2394: mov R3, #76
l2395: ldrh R7, [sp, -R3]
l2396: mov R1, #20
l2397: ldrVCh R12, [sp, -R1]
l2398: mov R6, #66
l2399: strCCh R12, [sp, -R6]
l2400: mov R8, #51
l2401: ldrCSsb R2, [sp, -R8]
l2402: ldrVSsb R0, [sp, #-9]
l2403: strMIh R7, [sp, #-70]
l2404: ldrsh R3, [sp, #-42]
l2405: ldrLEh R10, [sp, #-52]
l2406: ldrh R10, [sp, #-54]
l2407: ldrEQsh R6, [sp, #-46]
l2408: ldrsb R7, [sp, #-64]
l2409: mov R9, #18
l2410: ldrGTh R14, [sp, -R9]
l2411: ldrGEsb R4, [sp, #-79]
l2412: mov R6, #64
l2413: ldrVSh R1, [sp, -R6]
l2414: mov R4, #16
l2415: ldrsh R12, [sp, -R4]
l2416: ldrsh R3, [sp, #-56]
l2417: strGEh R11, [sp, #-58]
l2418: mov R4, #38
l2419: ldrEQsh R10, [sp, -R4]
l2420: strh R11, [sp, #-6]
l2421: mov R7, #16
l2422: ldrsh R14, [sp, -R7]
l2423: mov R4, #32
l2424: ldrsh R1, [sp, -R4]
l2425: mov R11, #36
l2426: strLSh R4, [sp, -R11]
l2427: mov R2, #26
l2428: ldrsh R7, [sp, -R2]
l2429: mov R8, #45
l2430: ldrNEsb R0, [sp, -R8]
l2431: mov R7, #8
l2432: ldrPLsh R4, [sp, -R7]
l2433: ldrEQsh R4, [sp, #-12]
l2434: ldrLSsh R10, [sp, #-40]
l2435: ldrsh R12, [sp, #-48]
l2436: ldrh R1, [sp, #-46]
l2437: ldrVCsb R11, [sp, #-22]
l2438: ldrh R8, [sp, #-62]
l2439: mov R4, #46
l2440: ldrHIh R11, [sp, -R4]
l2441: mov R1, #28
l2442: ldrLTsb R14, [sp, -R1]
l2443: ldrsb R1, [sp, #-40]
l2444: ldrMIh R2, [sp, #-18]
l2445: mov R12, #26
l2446: strMIh R4, [sp, -R12]
l2447: strh R4, [sp, #-32]
l2448: ldrLSsh R1, [sp, #-18]
l2449: ldrVCh R5, [sp, #-50]
l2450: mov R14, #50
l2451: ldrsb R6, [sp, -R14]
l2452: mov R4, #54
l2453: strLTh R1, [sp, -R4]
l2454: ldrCCsb R11, [sp, #-46]
l2455: strCCh R10, [sp, #-24]
l2456: mov R4, #20
l2457: ldrNEh R11, [sp, -R4]
l2458: strEQh R8, [sp, #-34]
l2459: ldrGEsb R6, [sp, #-76]
l2460: ldrh R1, [sp, #-16]
l2461: ldrLEsb R9, [sp, #-79]
l2462: ldrEQsh R4, [sp, #-60]
l2463: ldrh R10, [sp, #-70]
l2464: mov R11, #8
l2465: ldrLTsb R8, [sp, -R11]
l2466: mov R4, #30
l2467: ldrCCh R11, [sp, -R4]
l2468: mov R1, #30
l2469: ldrsh R12, [sp, -R1]
l2470: mov R9, #80
l2471: ldrh R6, [sp, -R9]
l2472: ldrCCsb R3, [sp, #-74]
l2473: mov R8, #70
l2474: ldrh R2, [sp, -R8]
l2475: strVCh R6, [sp, #-60]
l2476: ldrPLsb R3, [sp, #-78]
l2477: mov R5, #50
l2478: ldrsb R8, [sp, -R5]
l2479: ldrsh R5, [sp, #-18]
l2480: strLTh R1, [sp, #-56]
l2481: mov R10, #34
l2482: ldrNEh R7, [sp, -R10]
l2483: strh R5, [sp, #-72]
l2484: ldrEQsh R3, [sp, #-60]
l2485: mov R1, #78
l2486: ldrsh R9, [sp, -R1]
l2487: ldrMIsb R6, [sp, #-56]
l2488: mov R6, #78
l2489: strCCh R3, [sp, -R6]
l2490: ldrVCsb R0, [sp, #-73]
l2491: mov R8, #18
l2492: ldrsh R1, [sp, -R8]
l2493: mov R12, #26
l2494: ldrh R1, [sp, -R12]
l2495: ldrCSsh R2, [sp, #-76]
l2496: mov R2, #8
l2497: strh R0, [sp, -R2]
l2498: ldrsh R9, [sp, #-38]
l2499: mov R3, #54
l2500: ldrNEsh R6, [sp, -R3]
l2501: mov R4, #36
l2502: ldrh R0, [sp, -R4]
l2503: ldrsh R2, [sp, #-74]
l2504: mov R5, #54
l2505: strEQh R1, [sp, -R5]
l2506: mov R4, #8
l2507: strGTh R5, [sp, -R4]
l2508: mov R2, #64
l2509: strh R0, [sp, -R2]
l2510: mov R1, #44
l2511: strLTh R11, [sp, -R1]
l2512: ldrVCsh R11, [sp, #-72]
l2513: mov R7, #58
l2514: ldrsh R5, [sp, -R7]
l2515: ldrh R3, [sp, #-26]
l2516: mov R10, #32
l2517: ldrsb R1, [sp, -R10]
l2518: mov R10, #24
l2519: ldrsh R6, [sp, -R10]
l2520: ldrsb R3, [sp, #-29]
l2521: ldrGEsb R14, [sp, #-27]
l2522: mov R0, #30
l2523: ldrHIsh R6, [sp, -R0]
l2524: ldrEQh R5, [sp, #-14]
l2525: mov R11, #6
l2526: ldrMIsh R1, [sp, -R11]
l2527: ldrsh R3, [sp, #-38]
l2528: ldrCSsh R5, [sp, #-54]
l2529: ldrsb R10, [sp, #-11]
l2530: ldrEQh R1, [sp, #-60]
l2531: ldrsb R5, [sp, #-22]
l2532: mov R5, #24
l2533: ldrsh R6, [sp, -R5]
l2534: ldrGTsh R14, [sp, #-80]
l2535: ldrLSsb R11, [sp, #-38]
l2536: ldrsb R9, [sp, #-19]
l2537: strCCh R6, [sp, #-64]
l2538: mov R8, #32
l2539: strPLh R4, [sp, -R8]
l2540: mov R14, #20
l2541: ldrsh R7, [sp, -R14]
l2542: mov R10, #22
l2543: strMIh R7, [sp, -R10]
l2544: ldrsb R7, [sp, #-45]
l2545: ldrCSsb R12, [sp, #-37]
l2546: ldrsh R9, [sp, #-8]
l2547: mov R6, #23
l2548: ldrHIsb R10, [sp, -R6]
l2549: mov R4, #15
l2550: ldrEQsb R8, [sp, -R4]
l2551: ldrCSsb R1, [sp, #-47]
l2552: ldrLTh R10, [sp, #-76]
l2553: ldrh R11, [sp, #-42]
l2554: mov R0, #34
l2555: ldrsb R0, [sp, -R0]
l2556: mov R10, #46
l2557: ldrVSsb R2, [sp, -R10]
l2558: ldrGEsh R3, [sp, #-38]
l2559: mov R1, #22
l2560: ldrh R5, [sp, -R1]
l2561: ldrsh R4, [sp, #-44]
l2562: ldrCCsh R7, [sp, #-78]
l2563: mov R4, #62
l2564: ldrh R12, [sp, -R4]
l2565: mov R4, #60
l2566: ldrGTsb R5, [sp, -R4]
l2567: mov R12, #40
l2568: strh R9, [sp, -R12]
l2569: strh R14, [sp, #-54]
l2570: ldrMIh R8, [sp, #-34]
l2571: mov R3, #8
l2572: ldrsb R11, [sp, -R3]
l2573: mov R5, #56
l2574: strGEh R3, [sp, -R5]
l2575: ldrGTsh R12, [sp, #-64]
l2576: ldrsb R11, [sp, #-74]
l2577: mov R11, #22
l2578: ldrh R8, [sp, -R11]
l2579: mov R7, #24
l2580: ldrsh R9, [sp, -R7]
l2581: mov R10, #14
l2582: ldrCCsh R12, [sp, -R10]
l2583: mov R9, #78
l2584: strh R10, [sp, -R9]
l2585: mov R12, #24
l2586: ldrCSh R12, [sp, -R12]
l2587: mov R10, #28
l2588: strLEh R3, [sp, -R10]
l2589: ldrsb R0, [sp, #-28]
l2590: strh R1, [sp, #-60]
l2591: ldrGTsh R8, [sp, #-28]
l2592: ldrh R10, [sp, #-26]
l2593: mov R12, #45
l2594: ldrLTsb R9, [sp, -R12]
l2595: mov R10, #80
l2596: strh R11, [sp, -R10]
l2597: mov R9, #24
l2598: ldrsh R5, [sp, -R9]
l2599: ldrMIsh R14, [sp, #-46]
l2600: mov R11, #8
l2601: strh R4, [sp, -R11]
l2602: mov R11, #20
l2603: strCSh R12, [sp, -R11]
l2604: ldrsh R5, [sp, #-44]
l2605: ldrLEsh R7, [sp, #-8]
l2606: ldrLTsb R4, [sp, #-26]
l2607: mov R5, #28
l2608: ldrHIsh R14, [sp, -R5]
l2609: mov R7, #76
l2610: strh R8, [sp, -R7]
l2611: ldrsb R14, [sp, #-71]
l2612: mov R7, #50
l2613: strPLh R4, [sp, -R7]
l2614: mov R4, #43
l2615: ldrNEsb R8, [sp, -R4]
l2616: strh R10, [sp, #-68]
l2617: mov R3, #20
l2618: ldrMIsh R2, [sp, -R3]
l2619: ldrh R2, [sp, #-28]
l2620: mov R4, #68
l2621: strCSh R3, [sp, -R4]
l2622: mov R11, #64
l2623: ldrLEsb R9, [sp, -R11]
l2624: mov R10, #68
l2625: ldrh R11, [sp, -R10]
l2626: ldrVCh R0, [sp, #-64]
l2627: mov R6, #56
l2628: ldrEQh R3, [sp, -R6]
l2629: mov R2, #30
l2630: strHIh R1, [sp, -R2]
l2631: strNEh R1, [sp, #-24]
l2632: ldrsb R8, [sp, #-42]
l2633: mov R2, #20
l2634: strh R1, [sp, -R2]
l2635: mov R0, #14
l2636: strh R2, [sp, -R0]
l2637: mov R10, #38
l2638: ldrh R12, [sp, -R10]
l2639: mov R3, #22
l2640: strLEh R6, [sp, -R3]
l2641: mov R7, #66
l2642: ldrsh R9, [sp, -R7]
l2643: ldrh R9, [sp, #-60]
l2644: mov R5, #21
l2645: ldrLEsb R10, [sp, -R5]
l2646: ldrNEsh R1, [sp, #-10]
l2647: mov R7, #17
l2648: ldrLEsb R8, [sp, -R7]
l2649: mov R1, #26
l2650: strPLh R7, [sp, -R1]
l2651: mov R0, #74
l2652: ldrsh R1, [sp, -R0]
l2653: ldrCSsb R10, [sp, #-67]
l2654: ldrNEh R11, [sp, #-62]
l2655: mov R2, #68
l2656: ldrNEh R9, [sp, -R2]
l2657: mov R14, #62
l2658: ldrsh R0, [sp, -R14]
l2659: strh R12, [sp, #-34]
l2660: mov R14, #61
l2661: ldrsb R0, [sp, -R14]
l2662: ldrh R12, [sp, #-6]
l2663: mov R6, #51
l2664: ldrHIsb R4, [sp, -R6]
l2665: mov R0, #54
l2666: ldrsh R3, [sp, -R0]
l2667: mov R7, #79
l2668: ldrLTsb R12, [sp, -R7]
l2669: strGEh R7, [sp, #-66]
l2670: ldrPLsh R6, [sp, #-10]
l2671: mov R12, #22
l2672: strCCh R10, [sp, -R12]
l2673: mov R0, #52
l2674: ldrGEh R8, [sp, -R0]
l2675: mov R0, #65
l2676: ldrCSsb R4, [sp, -R0]
l2677: mov R8, #12
l2678: strh R5, [sp, -R8]
l2679: ldrh R0, [sp, #-78]
l2680: mov R2, #32
l2681: strh R5, [sp, -R2]
l2682: ldrh R3, [sp, #-14]
l2683: ldrHIsb R12, [sp, #-70]
l2684: mov R3, #36
l2685: ldrh R9, [sp, -R3]
l2686: mov R5, #24
l2687: strh R14, [sp, -R5]
l2688: ldrLTh R1, [sp, #-26]
l2689: mov R7, #54
l2690: ldrHIsh R1, [sp, -R7]
l2691: ldrGEh R6, [sp, #-12]
l2692: mov R14, #54
l2693: ldrh R11, [sp, -R14]
l2694: mov R10, #42
l2695: strh R8, [sp, -R10]
l2696: mov R14, #50
l2697: ldrsb R0, [sp, -R14]
l2698: mov R6, #26
l2699: ldrMIsh R8, [sp, -R6]
l2700: mov R8, #76
l2701: ldrMIh R12, [sp, -R8]
l2702: ldrh R2, [sp, #-6]
l2703: mov R6, #35
l2704: ldrsb R6, [sp, -R6]
l2705: mov R5, #50
l2706: strh R9, [sp, -R5]
l2707: mov R11, #28
l2708: ldrGEh R5, [sp, -R11]
l2709: ldrsh R5, [sp, #-60]
l2710: mov R7, #56
l2711: ldrsb R12, [sp, -R7]
l2712: ldrEQsh R12, [sp, #-44]
l2713: mov R12, #46
l2714: strh R5, [sp, -R12]
l2715: ldrsb R5, [sp, #-64]
l2716: mov R7, #32
l2717: ldrGTh R5, [sp, -R7]
l2718: ldrCSsb R3, [sp, #-25]
l2719: mov R2, #7
l2720: ldrEQsb R10, [sp, -R2]
l2721: mov R6, #40
l2722: ldrLEsh R8, [sp, -R6]
l2723: ldrVCsh R1, [sp, #-70]
l2724: strh R6, [sp, #-48]
l2725: mov R12, #52
l2726: ldrLTsh R7, [sp, -R12]
l2727: ldrLTsh R3, [sp, #-58]
l2728: mov R14, #38
l2729: ldrNEsb R2, [sp, -R14]
l2730: mov R9, #6
l2731: strGTh R2, [sp, -R9]
l2732: mov R10, #26
l2733: ldrGEsh R2, [sp, -R10]
l2734: mov R3, #52
l2735: ldrh R3, [sp, -R3]
l2736: strh R8, [sp, #-72]
l2737: mov R7, #12
l2738: ldrsh R12, [sp, -R7]
l2739: mov R3, #62
l2740: strh R1, [sp, -R3]
l2741: mov R7, #45
l2742: ldrsb R7, [sp, -R7]
l2743: ldrsh R8, [sp, #-50]
l2744: mov R1, #34
l2745: ldrGTsh R2, [sp, -R1]
l2746: mov R8, #36
l2747: ldrEQh R4, [sp, -R8]
l2748: ldrsh R2, [sp, #-44]
l2749: mov R10, #22
l2750: ldrsb R5, [sp, -R10]
l2751: mov R10, #78
l2752: ldrGEsh R14, [sp, -R10]
l2753: ldrsb R9, [sp, #-9]
l2754: ldrMIsh R3, [sp, #-10]
l2755: mov R1, #30
l2756: strLTh R8, [sp, -R1]
l2757: mov R4, #52
l2758: ldrLEsh R3, [sp, -R4]
l2759: ldrLEh R8, [sp, #-18]
l2760: ldrLEh R14, [sp, #-20]
l2761: ldrGTh R1, [sp, #-60]
l2762: strPLh R6, [sp, #-12]
l2763: ldrsb R8, [sp, #-10]
l2764: strLEh R2, [sp, #-52]
l2765: ldrh R8, [sp, #-58]
l2766: mov R0, #66
l2767: ldrGEsh R2, [sp, -R0]
l2768: mov R5, #14
l2769: ldrLEsh R9, [sp, -R5]
l2770: mov R7, #72
l2771: ldrsh R5, [sp, -R7]
l2772: mov R1, #65
l2773: ldrsb R4, [sp, -R1]
l2774: mov R11, #14
l2775: ldrh R0, [sp, -R11]
l2776: ldrsb R5, [sp, #-22]
l2777: mov R3, #68
l2778: ldrCCh R4, [sp, -R3]
l2779: mov R14, #44
l2780: strCCh R0, [sp, -R14]
l2781: ldrCCsb R14, [sp, #-46]
l2782: strh R6, [sp, #-44]
l2783: ldrLTsh R6, [sp, #-8]
l2784: mov R14, #53
l2785: ldrNEsb R9, [sp, -R14]
l2786: strGTh R0, [sp, #-72]
l2787: mov R14, #45
l2788: ldrVSsb R14, [sp, -R14]
l2789: mov R8, #61
l2790: ldrGTsb R11, [sp, -R8]
l2791: mov R2, #10
l2792: ldrEQsh R0, [sp, -R2]
l2793: ldrHIh R9, [sp, #-24]
l2794: ldrsh R11, [sp, #-12]
l2795: ldrLEsh R0, [sp, #-34]
l2796: mov R8, #32
l2797: strHIh R12, [sp, -R8]
l2798: ldrPLh R6, [sp, #-10]
l2799: ldrsh R2, [sp, #-64]
l2800: ldrGTh R6, [sp, #-30]
l2801: ldrEQsh R2, [sp, #-34]
l2802: strGEh R8, [sp, #-44]
l2803: mov R0, #54
l2804: strh R12, [sp, -R0]
l2805: mov R14, #40
l2806: ldrh R11, [sp, -R14]
l2807: mov R12, #47
l2808: ldrEQsb R3, [sp, -R12]
l2809: ldrVSh R7, [sp, #-80]
l2810: mov R9, #22
l2811: ldrMIh R2, [sp, -R9]
l2812: ldrCCh R5, [sp, #-42]
l2813: strCSh R3, [sp, #-16]
l2814: ldrsb R8, [sp, #-69]
l2815: strLSh R0, [sp, #-50]
l2816: ldrCSsb R6, [sp, #-79]
l2817: mov R8, #58
l2818: ldrCSh R4, [sp, -R8]
l2819: mov R12, #48
l2820: strVSh R10, [sp, -R12]
l2821: ldrVSsh R5, [sp, #-26]
l2822: ldrh R8, [sp, #-42]
l2823: strh R7, [sp, #-62]
l2824: strh R12, [sp, #-42]
l2825: mov R1, #38
l2826: ldrsb R1, [sp, -R1]
l2827: mov R2, #70
l2828: ldrsh R4, [sp, -R2]
l2829: mov R11, #80
l2830: ldrCSh R14, [sp, -R11]
l2831: ldrh R10, [sp, #-78]
l2832: mov R5, #78
l2833: ldrsh R6, [sp, -R5]
l2834: mov R10, #56
l2835: ldrLSh R10, [sp, -R10]
l2836: ldrsb R7, [sp, #-64]
l2837: ldrVCh R0, [sp, #-26]
l2838: mov R8, #64
l2839: strGTh R7, [sp, -R8]
l2840: ldrHIsb R0, [sp, #-32]
l2841: mov R0, #56
l2842: strLEh R14, [sp, -R0]
l2843: ldrsb R4, [sp, #-32]
l2844: ldrCCsb R7, [sp, #-43]
l2845: mov R5, #52
l2846: ldrh R8, [sp, -R5]
l2847: strh R6, [sp, #-74]
l2848: mov R9, #72
l2849: ldrsh R3, [sp, -R9]
l2850: ldrVCh R2, [sp, #-32]
l2851: mov R1, #77
l2852: ldrsb R4, [sp, -R1]
l2853: ldrPLsb R5, [sp, #-8]
l2854: mov R3, #8
l2855: ldrPLsb R5, [sp, -R3]
l2856: mov R0, #64
l2857: strLTh R7, [sp, -R0]
l2858: mov R4, #76
l2859: ldrsh R9, [sp, -R4]
l2860: mov R9, #24
l2861: ldrMIh R2, [sp, -R9]
l2862: ldrsh R2, [sp, #-42]
l2863: ldrVSh R10, [sp, #-22]
l2864: mov R2, #52
l2865: ldrGTsh R5, [sp, -R2]
l2866: mov R2, #47
l2867: ldrMIsb R3, [sp, -R2]
l2868: mov R14, #37
l2869: ldrEQsb R14, [sp, -R14]
l2870: ldrVSsh R10, [sp, #-16]
l2871: strPLh R5, [sp, #-44]
l2872: mov R14, #14
l2873: ldrsh R0, [sp, -R14]
l2874: strh R4, [sp, #-66]
l2875: mov R0, #50
l2876: ldrh R4, [sp, -R0]
l2877: ldrEQsb R11, [sp, #-78]
l2878: ldrHIsb R14, [sp, #-48]
l2879: mov R7, #64
l2880: strLSh R11, [sp, -R7]
l2881: mov R2, #6
l2882: ldrMIh R1, [sp, -R2]
l2883: strLEh R1, [sp, #-56]
l2884: mov R3, #54
l2885: strh R2, [sp, -R3]
l2886: mov R7, #60
l2887: ldrLSsh R6, [sp, -R7]
l2888: ldrsh R8, [sp, #-58]
l2889: mov R0, #42
l2890: ldrVCsb R0, [sp, -R0]
l2891: ldrMIsh R12, [sp, #-32]
l2892: ldrEQh R14, [sp, #-32]
l2893: mov R8, #38
l2894: ldrsh R12, [sp, -R8]
l2895: ldrNEsh R6, [sp, #-68]
l2896: mov R4, #14
l2897: ldrGEsh R1, [sp, -R4]
l2898: mov R6, #46
l2899: strLTh R0, [sp, -R6]
l2900: mov R10, #62
l2901: ldrsb R0, [sp, -R10]
l2902: mov R8, #32
l2903: strMIh R8, [sp, -R8]
l2904: ldrsh R7, [sp, #-30]
l2905: ldrNEh R12, [sp, #-6]
l2906: mov R2, #14
l2907: ldrsh R11, [sp, -R2]
l2908: mov R8, #10
l2909: ldrLSh R3, [sp, -R8]
l2910: mov R2, #24
l2911: ldrsh R0, [sp, -R2]
l2912: ldrh R1, [sp, #-16]
l2913: mov R1, #64
l2914: ldrsh R8, [sp, -R1]
l2915: mov R10, #30
l2916: ldrHIh R7, [sp, -R10]
l2917: mov R2, #34
l2918: ldrh R9, [sp, -R2]
l2919: strMIh R3, [sp, #-50]
l2920: mov R5, #41
l2921: ldrVSsb R4, [sp, -R5]
l2922: mov R6, #46
l2923: ldrsh R12, [sp, -R6]
l2924: ldrVCh R9, [sp, #-16]
l2925: ldrHIh R9, [sp, #-10]
l2926: strh R7, [sp, #-40]
l2927: mov R7, #46
l2928: ldrEQsh R6, [sp, -R7]
l2929: mov R1, #59
l2930: ldrsb R2, [sp, -R1]
l2931: ldrh R11, [sp, #-16]
l2932: ldrGEsb R11, [sp, #-47]
l2933: ldrsh R8, [sp, #-48]
l2934: ldrsh R5, [sp, #-76]
l2935: mov R8, #34
l2936: ldrh R14, [sp, -R8]
l2937: mov R0, #46
l2938: ldrEQsb R5, [sp, -R0]
l2939: ldrh R12, [sp, #-10]
l2940: mov R8, #80
l2941: ldrsb R4, [sp, -R8]
l2942: mov R14, #34
l2943: strVCh R5, [sp, -R14]
l2944: mov R12, #20
l2945: ldrCSh R0, [sp, -R12]
l2946: mov R9, #32
l2947: ldrsb R3, [sp, -R9]
l2948: ldrsh R12, [sp, #-62]
l2949: mov R4, #26
l2950: ldrEQh R12, [sp, -R4]
l2951: mov R12, #32
l2952: strh R12, [sp, -R12]
l2953: mov R11, #58
l2954: ldrLEh R1, [sp, -R11]
l2955: mov R4, #51
l2956: ldrGEsb R9, [sp, -R4]
l2957: ldrsb R10, [sp, #-46]
l2958: ldrsh R0, [sp, #-18]
l2959: strh R6, [sp, #-58]
l2960: mov R11, #33
l2961: ldrGEsb R9, [sp, -R11]
l2962: mov R6, #67
l2963: ldrsb R11, [sp, -R6]
l2964: mov R4, #9
l2965: ldrGEsb R11, [sp, -R4]
l2966: ldrLEh R14, [sp, #-34]
l2967: ldrh R1, [sp, #-46]
l2968: mov R1, #74
l2969: ldrsb R9, [sp, -R1]
l2970: mov R4, #21
l2971: ldrNEsb R11, [sp, -R4]
l2972: mov R10, #73
l2973: ldrsb R5, [sp, -R10]
l2974: mov R9, #26
l2975: ldrsh R4, [sp, -R9]
l2976: ldrh R2, [sp, #-28]
l2977: mov R10, #22
l2978: ldrGEsb R5, [sp, -R10]
l2979: ldrsh R12, [sp, #-16]
l2980: mov R6, #44
l2981: ldrMIsb R14, [sp, -R6]
l2982: ldrLEsb R0, [sp, #-35]
l2983: ldrsh R4, [sp, #-78]
l2984: mov R7, #66
l2985: ldrh R14, [sp, -R7]
l2986: mov R10, #12
l2987: ldrMIsh R4, [sp, -R10]
l2988: mov R7, #23
l2989: ldrCSsb R6, [sp, -R7]
l2990: ldrLSsb R8, [sp, #-35]
l2991: mov R11, #58
l2992: strh R10, [sp, -R11]
l2993: strVCh R2, [sp, #-48]
l2994: ldrVSsh R2, [sp, #-34]
l2995: mov R8, #24
l2996: ldrVCsh R11, [sp, -R8]
l2997: mov R7, #35
l2998: ldrsb R5, [sp, -R7]
l2999: strEQh R7, [sp, #-50]
l3000: mov R7, #8
l3001: ldrsb R14, [sp, -R7]
l3002: mov R7, #64
l3003: strLEh R6, [sp, -R7]
l3004: mov R2, #22
l3005: strGEh R14, [sp, -R2]
l3006: mov R2, #32
l3007: ldrVSh R0, [sp, -R2]
l3008: ldrHIh R14, [sp, #-70]
l3009: mov R12, #78
l3010: ldrLEsh R3, [sp, -R12]
l3011: mov R11, #66
l3012: ldrMIsh R3, [sp, -R11]
l3013: mov R8, #48
l3014: ldrh R1, [sp, -R8]
l3015: mov R2, #34
l3016: ldrMIh R2, [sp, -R2]
l3017: mov R10, #8
l3018: ldrsh R10, [sp, -R10]
l3019: ldrVSsh R0, [sp, #-66]
l3020: ldrEQsb R2, [sp, #-10]
l3021: ldrh R8, [sp, #-10]
l3022: mov R8, #16
l3023: strh R2, [sp, -R8]
l3024: ldrGEsb R3, [sp, #-46]
l3025: mov R12, #62
l3026: strh R0, [sp, -R12]
l3027: strPLh R1, [sp, #-10]
l3028: mov R1, #54
l3029: strVCh R12, [sp, -R1]
l3030: mov R3, #50
l3031: ldrVSh R10, [sp, -R3]
l3032: ldrCSsb R14, [sp, #-38]
l3033: ldrh R10, [sp, #-20]
l3034: ldrsb R8, [sp, #-57]
l3035: mov R12, #12
l3036: ldrh R11, [sp, -R12]
l3037: mov R4, #10
l3038: ldrMIsh R0, [sp, -R4]
l3039: ldrGTsb R7, [sp, #-72]
l3040: mov R4, #41
l3041: ldrMIsb R14, [sp, -R4]
l3042: mov R4, #66
l3043: ldrLTsh R3, [sp, -R4]
l3044: strGTh R8, [sp, #-10]
l3045: strh R5, [sp, #-16]
l3046: ldrsh R12, [sp, #-32]
l3047: ldrPLh R9, [sp, #-20]
l3048: ldrh R8, [sp, #-26]
l3049: mov R9, #44
l3050: ldrNEsb R0, [sp, -R9]
l3051: ldrGEsb R6, [sp, #-17]
l3052: mov R5, #78
l3053: ldrh R3, [sp, -R5]
l3054: ldrVCsb R0, [sp, #-42]
l3055: mov R7, #8
l3056: ldrh R0, [sp, -R7]
l3057: ldrPLsh R11, [sp, #-56]
l3058: mov R5, #40
l3059: ldrsb R12, [sp, -R5]
l3060: mov R3, #24
l3061: ldrh R4, [sp, -R3]
l3062: mov R6, #50
l3063: strh R0, [sp, -R6]
l3064: ldrMIsb R4, [sp, #-47]
l3065: mov R7, #12
l3066: ldrsb R8, [sp, -R7]
l3067: ldrCSsh R6, [sp, #-44]
l3068: mov R14, #55
l3069: ldrCSsb R1, [sp, -R14]
l3070: ldrsh R14, [sp, #-26]
l3071: mov R10, #14
l3072: ldrh R9, [sp, -R10]
l3073: ldrCSsb R2, [sp, #-7]
l3074: mov R8, #72
l3075: ldrh R5, [sp, -R8]
l3076: ldrsh R4, [sp, #-32]
l3077: mov R12, #16
l3078: ldrsh R11, [sp, -R12]
l3079: mov R5, #42
l3080: strCCh R0, [sp, -R5]
l3081: mov R1, #10
l3082: ldrsh R9, [sp, -R1]
l3083: strh R12, [sp, #-10]
l3084: mov R1, #16
l3085: ldrh R10, [sp, -R1]
l3086: strh R12, [sp, #-52]
l3087: mov R7, #42
l3088: ldrh R9, [sp, -R7]
l3089: ldrsh R8, [sp, #-48]
l3090: mov R2, #68
l3091: ldrEQsb R7, [sp, -R2]
l3092: mov R4, #79
l3093: ldrPLsb R3, [sp, -R4]
l3094: mov R2, #52
l3095: ldrVSh R6, [sp, -R2]
l3096: mov R0, #63
l3097: ldrPLsb R5, [sp, -R0]
l3098: strEQh R12, [sp, #-56]
l3099: mov R1, #22
l3100: ldrCCsh R5, [sp, -R1]
l3101: mov R2, #62
l3102: strh R12, [sp, -R2]
l3103: mov R8, #16
l3104: ldrMIh R9, [sp, -R8]
l3105: mov R3, #12
l3106: ldrPLsb R0, [sp, -R3]
l3107: mov R14, #56
l3108: ldrVCsb R11, [sp, -R14]
l3109: ldrsb R10, [sp, #-21]
l3110: ldrsb R3, [sp, #-19]
l3111: ldrsh R2, [sp, #-32]
l3112: ldrsb R5, [sp, #-28]
l3113: mov R6, #74
l3114: ldrh R11, [sp, -R6]
l3115: ldrEQh R1, [sp, #-38]
l3116: mov R7, #12
l3117: strMIh R1, [sp, -R7]
l3118: mov R0, #20
l3119: strLSh R5, [sp, -R0]
l3120: ldrVSsh R14, [sp, #-62]
l3121: ldrLEsh R9, [sp, #-24]
l3122: mov R14, #20
l3123: ldrsh R0, [sp, -R14]
l3124: ldrVSsh R5, [sp, #-24]
l3125: mov R11, #44
l3126: strh R0, [sp, -R11]
l3127: mov R14, #64
l3128: strLSh R0, [sp, -R14]
l3129: mov R11, #16
l3130: strh R9, [sp, -R11]
l3131: mov R11, #74
l3132: ldrCSh R5, [sp, -R11]
l3133: mov R12, #6
l3134: ldrsb R4, [sp, -R12]
l3135: mov R5, #25
l3136: ldrsb R7, [sp, -R5]
l3137: mov R10, #6
l3138: ldrsh R8, [sp, -R10]
l3139: mov R2, #79
l3140: ldrNEsb R7, [sp, -R2]
l3141: mov R7, #66
l3142: ldrsb R3, [sp, -R7]
l3143: strMIh R3, [sp, #-6]
l3144: ldrHIsb R2, [sp, #-31]
l3145: mov R3, #68
l3146: ldrNEh R4, [sp, -R3]
l3147: ldrsb R10, [sp, #-32]
l3148: ldrCSsb R11, [sp, #-63]
l3149: mov R10, #78
l3150: strLEh R14, [sp, -R10]
l3151: mov R6, #20
l3152: strh R5, [sp, -R6]
l3153: mov R0, #79
l3154: ldrHIsb R10, [sp, -R0]
l3155: strh R14, [sp, #-70]
l3156: mov R10, #24
l3157: strh R3, [sp, -R10]
l3158: mov R3, #76
l3159: ldrh R14, [sp, -R3]
l3160: mov R5, #40
l3161: ldrh R2, [sp, -R5]
l3162: strh R2, [sp, #-60]
l3163: mov R12, #21
l3164: ldrGTsb R14, [sp, -R12]
l3165: ldrVCsh R14, [sp, #-50]
l3166: mov R3, #66
l3167: ldrVCsb R6, [sp, -R3]
l3168: mov R9, #28
l3169: strNEh R4, [sp, -R9]
l3170: mov R9, #46
l3171: ldrsh R0, [sp, -R9]
l3172: ldrCSsb R6, [sp, #-5]
l3173: mov R10, #50
l3174: ldrh R1, [sp, -R10]
l3175: strGTh R12, [sp, #-48]
l3176: ldrVCh R1, [sp, #-26]
l3177: mov R1, #37
l3178: ldrVCsb R9, [sp, -R1]
l3179: ldrLTsb R10, [sp, #-52]
l3180: ldrsh R2, [sp, #-18]
l3181: ldrsb R3, [sp, #-24]
l3182: strh R14, [sp, #-62]
l3183: mov R12, #62
l3184: strh R4, [sp, -R12]
l3185: ldrsh R7, [sp, #-14]
l3186: mov R9, #34
l3187: ldrsh R5, [sp, -R9]
l3188: mov R14, #30
l3189: ldrh R8, [sp, -R14]
l3190: ldrsb R1, [sp, #-39]
l3191: mov R6, #24
l3192: strNEh R9, [sp, -R6]
l3193: mov R7, #72
l3194: strVSh R8, [sp, -R7]
l3195: ldrsh R2, [sp, #-50]
l3196: mov R1, #9
l3197: ldrsb R0, [sp, -R1]
l3198: mov R8, #72
l3199: ldrGTsh R7, [sp, -R8]
l3200: ldrsh R1, [sp, #-68]
l3201: mov R1, #18
l3202: ldrCSsb R6, [sp, -R1]
l3203: strGTh R1, [sp, #-32]
l3204: mov R3, #70
l3205: strh R8, [sp, -R3]
l3206: ldrCCsh R10, [sp, #-38]
l3207: mov R2, #24
l3208: strh R10, [sp, -R2]
l3209: mov R7, #62
l3210: strPLh R1, [sp, -R7]
l3211: ldrsh R5, [sp, #-70]
l3212: ldrh R7, [sp, #-74]
l3213: ldrh R2, [sp, #-8]
l3214: mov R14, #10
l3215: ldrHIh R1, [sp, -R14]
l3216: mov R6, #30
l3217: ldrh R10, [sp, -R6]
l3218: ldrCSh R8, [sp, #-24]
l3219: ldrh R14, [sp, #-26]
l3220: mov R9, #32
l3221: ldrsh R7, [sp, -R9]
l3222: mov R1, #18
l3223: strh R14, [sp, -R1]
l3224: ldrh R2, [sp, #-20]
l3225: strh R9, [sp, #-58]
l3226: strEQh R14, [sp, #-74]
l3227: mov R5, #14
l3228: ldrCSsh R1, [sp, -R5]
l3229: ldrsh R4, [sp, #-38]
l3230: mov R6, #52
l3231: ldrh R11, [sp, -R6]
l3232: mov R12, #20
l3233: ldrVCsh R0, [sp, -R12]
l3234: ldrGTsb R3, [sp, #-10]
l3235: ldrsb R3, [sp, #-24]
l3236: mov R9, #78
l3237: strGTh R2, [sp, -R9]
l3238: mov R3, #27
l3239: ldrNEsb R6, [sp, -R3]
l3240: ldrCSsb R6, [sp, #-78]
l3241: ldrsh R11, [sp, #-54]
l3242: ldrVCh R7, [sp, #-30]
l3243: mov R11, #24
l3244: strh R9, [sp, -R11]
l3245: ldrsb R3, [sp, #-27]
l3246: mov R3, #14
l3247: strh R6, [sp, -R3]
l3248: strCCh R5, [sp, #-52]
l3249: ldrMIsh R4, [sp, #-58]
l3250: ldrsb R2, [sp, #-21]
l3251: mov R1, #18
l3252: ldrh R5, [sp, -R1]
l3253: mov R2, #40
l3254: ldrGEsb R14, [sp, -R2]
l3255: ldrh R0, [sp, #-54]
l3256: ldrh R4, [sp, #-10]
l3257: mov R4, #34
l3258: ldrEQsh R3, [sp, -R4]
l3259: ldrPLsh R4, [sp, #-50]
l3260: ldrEQsb R10, [sp, #-79]
l3261: ldrGEh R6, [sp, #-74]
l3262: mov R6, #16
l3263: ldrLSsb R14, [sp, -R6]
l3264: mov R0, #50
l3265: strh R14, [sp, -R0]
l3266: mov R9, #76
l3267: ldrsb R3, [sp, -R9]
l3268: ldrsh R10, [sp, #-54]
l3269: mov R5, #7
l3270: ldrCSsb R0, [sp, -R5]
l3271: mov R4, #68
l3272: ldrsh R6, [sp, -R4]
l3273: ldrh R4, [sp, #-16]
l3274: ldrGTh R12, [sp, #-44]
l3275: ldrh R8, [sp, #-56]
l3276: mov R2, #56
l3277: ldrLEsh R2, [sp, -R2]
l3278: mov R0, #32
l3279: strh R8, [sp, -R0]
l3280: mov R1, #80
l3281: ldrGEsh R2, [sp, -R1]
l3282: mov R12, #54
l3283: ldrVCh R9, [sp, -R12]
l3284: mov R9, #34
l3285: ldrsh R0, [sp, -R9]
l3286: strh R8, [sp, #-34]
l3287: ldrPLsb R6, [sp, #-75]
l3288: mov R9, #72
l3289: ldrLEsb R12, [sp, -R9]
l3290: ldrsb R10, [sp, #-7]
l3291: ldrsh R2, [sp, #-74]
l3292: ldrsh R8, [sp, #-50]
l3293: ldrLSsb R10, [sp, #-54]
l3294: ldrCCsb R6, [sp, #-19]
l3295: strVCh R0, [sp, #-72]
l3296: strh R4, [sp, #-50]
l3297: mov R5, #18
l3298: ldrsh R9, [sp, -R5]
l3299: ldrEQh R10, [sp, #-32]
l3300: ldrVSsb R14, [sp, #-19]
l3301: mov R6, #38
l3302: strh R9, [sp, -R6]
l3303: mov R10, #32
l3304: ldrNEsh R7, [sp, -R10]
l3305: mov R10, #9
l3306: ldrCCsb R14, [sp, -R10]
l3307: strGEh R1, [sp, #-12]
l3308: strNEh R7, [sp, #-74]
l3309: ldrCSsb R14, [sp, #-5]
l3310: mov R6, #68
l3311: ldrsh R3, [sp, -R6]
l3312: strh R4, [sp, #-48]
l3313: strh R14, [sp, #-52]
l3314: mov R8, #50
l3315: ldrsh R5, [sp, -R8]
l3316: ldrLTsb R0, [sp, #-54]
l3317: mov R11, #26
l3318: ldrNEsh R3, [sp, -R11]
l3319: mov R8, #27
l3320: ldrLEsb R4, [sp, -R8]
l3321: mov R4, #52
l3322: ldrGEh R1, [sp, -R4]
l3323: ldrLTh R6, [sp, #-46]
l3324: ldrh R2, [sp, #-72]
l3325: strh R8, [sp, #-72]
l3326: ldrh R3, [sp, #-74]
l3327: mov R7, #40
l3328: strh R7, [sp, -R7]
l3329: ldrNEsh R4, [sp, #-62]
l3330: mov R5, #48
l3331: ldrGTh R10, [sp, -R5]
l3332: mov R0, #10
l3333: strHIh R10, [sp, -R0]
l3334: ldrh R3, [sp, #-24]
l3335: ldrPLh R4, [sp, #-32]
l3336: ldrGTsb R14, [sp, #-70]
l3337: strEQh R0, [sp, #-56]
l3338: mov R5, #72
l3339: ldrMIsh R8, [sp, -R5]
l3340: mov R14, #34
l3341: ldrsh R5, [sp, -R14]
l3342: ldrCSsb R7, [sp, #-12]
l3343: mov R2, #69
l3344: ldrsb R9, [sp, -R2]
l3345: mov R5, #11
l3346: ldrNEsb R6, [sp, -R5]
l3347: strh R9, [sp, #-46]
l3348: mov R8, #54
l3349: ldrGTh R10, [sp, -R8]
l3350: mov R1, #22
l3351: ldrLSh R6, [sp, -R1]
l3352: strCCh R11, [sp, #-14]
l3353: strh R3, [sp, #-32]
l3354: mov R6, #78
l3355: strh R8, [sp, -R6]
l3356: ldrPLsh R0, [sp, #-74]
l3357: ldrsb R5, [sp, #-31]
l3358: ldrh R5, [sp, #-16]
l3359: mov R2, #40
l3360: strLTh R11, [sp, -R2]
l3361: ldrsh R3, [sp, #-58]
l3362: ldrCSsb R5, [sp, #-42]
l3363: mov R3, #34
l3364: ldrsh R1, [sp, -R3]
l3365: ldrsh R2, [sp, #-56]
l3366: ldrVCh R6, [sp, #-12]
l3367: ldrh R12, [sp, #-62]
l3368: mov R10, #29
l3369: ldrCCsb R10, [sp, -R10]
l3370: mov R12, #38
l3371: ldrPLh R8, [sp, -R12]
l3372: mov R7, #21
l3373: ldrHIsb R6, [sp, -R7]
l3374: ldrsb R10, [sp, #-35]
l3375: mov R3, #13
l3376: ldrMIsb R6, [sp, -R3]
l3377: ldrLTh R0, [sp, #-42]
l3378: strh R9, [sp, #-44]
l3379: strGEh R5, [sp, #-10]
l3380: ldrVSsb R0, [sp, #-78]
l3381: mov R1, #40
l3382: strLEh R10, [sp, -R1]
l3383: mov R8, #73
l3384: ldrsb R0, [sp, -R8]
l3385: mov R11, #56
l3386: ldrsh R3, [sp, -R11]
l3387: ldrPLsh R7, [sp, #-74]
l3388: ldrLEh R2, [sp, #-30]
l3389: ldrVSsb R10, [sp, #-22]
l3390: mov R12, #38
l3391: ldrh R7, [sp, -R12]
l3392: ldrh R10, [sp, #-48]
l3393: ldrNEsb R7, [sp, #-58]
l3394: ldrsh R8, [sp, #-80]
l3395: ldrVSsh R11, [sp, #-72]
l3396: strLSh R5, [sp, #-20]
l3397: ldrh R1, [sp, #-8]
l3398: mov R8, #10
l3399: ldrsh R2, [sp, -R8]
l3400: ldrCCsh R14, [sp, #-16]
l3401: mov R2, #78
l3402: ldrsb R14, [sp, -R2]
l3403: ldrVCh R10, [sp, #-36]
l3404: strh R0, [sp, #-42]
l3405: strEQh R1, [sp, #-12]
l3406: mov R10, #48
l3407: strPLh R2, [sp, -R10]
l3408: ldrVSh R10, [sp, #-10]
l3409: mov R12, #40
l3410: strh R9, [sp, -R12]
l3411: ldrh R12, [sp, #-46]
l3412: ldrGTsb R1, [sp, #-18]
l3413: ldrVSh R7, [sp, #-60]
l3414: ldrHIh R11, [sp, #-36]
l3415: mov R4, #32
l3416: ldrNEsh R0, [sp, -R4]
l3417: ldrh R14, [sp, #-56]
l3418: ldrsb R11, [sp, #-15]
l3419: mov R1, #80
l3420: strh R14, [sp, -R1]
l3421: mov R9, #50
l3422: strNEh R0, [sp, -R9]
l3423: mov R11, #67
l3424: ldrsb R6, [sp, -R11]
l3425: mov R1, #34
l3426: strh R0, [sp, -R1]
l3427: mov R4, #54
l3428: ldrh R4, [sp, -R4]
l3429: mov R1, #74
l3430: strh R3, [sp, -R1]
l3431: mov R5, #66
l3432: ldrVSsh R12, [sp, -R5]
l3433: ldrsb R1, [sp, #-43]
l3434: ldrCCsh R12, [sp, #-76]
l3435: mov R6, #56
l3436: strGEh R1, [sp, -R6]
l3437: mov R7, #18
l3438: ldrh R11, [sp, -R7]
l3439: ldrsh R6, [sp, #-18]
l3440: ldrLTh R9, [sp, #-10]
l3441: mov R4, #26
l3442: strh R5, [sp, -R4]
l3443: strh R8, [sp, #-56]
l3444: mov R4, #48
l3445: ldrsh R7, [sp, -R4]
l3446: ldrh R10, [sp, #-64]
l3447: mov R14, #52
l3448: ldrMIsh R0, [sp, -R14]
l3449: mov R3, #74
l3450: ldrCSh R1, [sp, -R3]
l3451: mov R6, #14
l3452: strh R6, [sp, -R6]
l3453: ldrGTh R10, [sp, #-34]
l3454: mov R12, #6
l3455: strNEh R4, [sp, -R12]
l3456: strPLh R9, [sp, #-74]
l3457: ldrsb R3, [sp, #-63]
l3458: strh R0, [sp, #-62]
l3459: ldrsb R5, [sp, #-70]
l3460: mov R10, #57
l3461: ldrsb R8, [sp, -R10]
l3462: mov R1, #72
l3463: ldrPLh R11, [sp, -R1]
l3464: ldrVCsh R10, [sp, #-62]
l3465: ldrsh R14, [sp, #-38]
l3466: ldrPLh R9, [sp, #-60]
l3467: mov R11, #80
l3468: ldrsh R4, [sp, -R11]
l3469: mov R3, #76
l3470: ldrsh R9, [sp, -R3]
l3471: mov R2, #38
l3472: ldrh R7, [sp, -R2]
l3473: mov R9, #74
l3474: strh R11, [sp, -R9]
l3475: ldrsb R0, [sp, #-53]
l3476: ldrh R9, [sp, #-50]
l3477: ldrh R6, [sp, #-44]
l3478: ldrsb R0, [sp, #-61]
l3479: strh R9, [sp, #-20]
l3480: ldrHIsh R10, [sp, #-52]
l3481: ldrPLh R8, [sp, #-32]
l3482: ldrHIh R7, [sp, #-30]
l3483: mov R4, #20
l3484: strVSh R7, [sp, -R4]
l3485: strh R4, [sp, #-78]
l3486: ldrNEh R6, [sp, #-18]
l3487: mov R5, #44
l3488: strCSh R7, [sp, -R5]
l3489: ldrGTsb R12, [sp, #-24]
l3490: ldrsh R10, [sp, #-56]
l3491: mov R11, #6
l3492: ldrsh R9, [sp, -R11]
l3493: mov R6, #80
l3494: strGTh R3, [sp, -R6]
l3495: strh R7, [sp, #-6]
l3496: mov R10, #45
l3497: ldrsb R2, [sp, -R10]
l3498: ldrLTh R3, [sp, #-24]
l3499: mov R7, #50
l3500: ldrh R14, [sp, -R7]
l3501: strHIh R11, [sp, #-32]
l3502: ldrsh R5, [sp, #-54]
l3503: mov R6, #72
l3504: ldrLSsh R14, [sp, -R6]
l3505: mov R5, #56
l3506: ldrCCsh R11, [sp, -R5]
l3507: ldrsb R4, [sp, #-16]
l3508: ldrVCh R1, [sp, #-40]
l3509: ldrGTsh R4, [sp, #-74]
l3510: mov R6, #48
l3511: ldrh R8, [sp, -R6]
l3512: ldrCSsb R5, [sp, #-63]
l3513: mov R11, #42
l3514: ldrPLsb R7, [sp, -R11]
l3515: mov R4, #76
l3516: strGEh R14, [sp, -R4]
l3517: mov R7, #72
l3518: strLEh R11, [sp, -R7]
l3519: mov R9, #21
l3520: ldrsb R4, [sp, -R9]
l3521: ldrh R7, [sp, #-48]
l3522: strh R2, [sp, #-24]
l3523: ldrCCsh R6, [sp, #-28]
l3524: mov R9, #46
l3525: ldrVSsh R5, [sp, -R9]
l3526: mov R5, #59
l3527: ldrCCsb R7, [sp, -R5]
l3528: mov R14, #54
l3529: strh R12, [sp, -R14]
l3530: mov R10, #62
l3531: strVSh R9, [sp, -R10]
l3532: ldrsh R10, [sp, #-80]
l3533: mov R10, #22
l3534: ldrsb R3, [sp, -R10]
l3535: mov R8, #52
l3536: ldrh R7, [sp, -R8]
l3537: strh R7, [sp, #-30]
l3538: mov R2, #78
l3539: ldrh R5, [sp, -R2]
l3540: mov R6, #76
l3541: ldrsh R10, [sp, -R6]
l3542: mov R2, #52
l3543: ldrh R5, [sp, -R2]
l3544: mov R5, #72
l3545: ldrGEsh R6, [sp, -R5]
l3546: ldrLEh R5, [sp, #-76]
l3547: ldrVSsh R5, [sp, #-32]
l3548: mov R2, #41
l3549: ldrsb R6, [sp, -R2]
l3550: ldrsh R6, [sp, #-60]
l3551: mov R7, #10
l3552: strEQh R14, [sp, -R7]
l3553: ldrNEsh R6, [sp, #-64]
l3554: strMIh R2, [sp, #-64]
l3555: mov R4, #34
l3556: ldrGEsb R9, [sp, -R4]
l3557: ldrh R3, [sp, #-62]
l3558: ldrCSsh R10, [sp, #-16]
l3559: mov R6, #68
l3560: ldrGTh R2, [sp, -R6]
l3561: mov R3, #46
l3562: strh R2, [sp, -R3]
l3563: mov R11, #26
l3564: ldrPLh R1, [sp, -R11]
l3565: ldrsh R1, [sp, #-26]
l3566: ldrMIsh R0, [sp, #-46]
l3567: mov R10, #80
l3568: ldrsb R5, [sp, -R10]
l3569: mov R7, #39
l3570: ldrLTsb R1, [sp, -R7]
l3571: mov R12, #14
l3572: strGEh R1, [sp, -R12]
l3573: ldrh R8, [sp, #-52]
l3574: ldrNEh R9, [sp, #-42]
l3575: strh R2, [sp, #-52]
l3576: ldrCCsh R0, [sp, #-20]
l3577: ldrsh R0, [sp, #-60]
l3578: mov R7, #56
l3579: ldrsb R0, [sp, -R7]
l3580: ldrMIh R5, [sp, #-52]
l3581: ldrGTsh R2, [sp, #-14]
l3582: ldrVSsb R4, [sp, #-54]
l3583: ldrLTsh R5, [sp, #-56]
l3584: ldrh R3, [sp, #-56]
l3585: mov R3, #56
l3586: strh R6, [sp, -R3]
l3587: ldrsb R4, [sp, #-47]
l3588: strGTh R1, [sp, #-30]
l3589: mov R4, #80
l3590: ldrh R7, [sp, -R4]
l3591: ldrsh R3, [sp, #-12]
l3592: strh R1, [sp, #-76]
l3593: strh R4, [sp, #-34]
l3594: mov R2, #36
l3595: ldrHIsh R7, [sp, -R2]
l3596: mov R0, #62
l3597: ldrCCsh R2, [sp, -R0]
l3598: ldrLEh R11, [sp, #-8]
l3599: ldrCCsh R7, [sp, #-32]
l3600: ldrsh R14, [sp, #-56]
l3601: ldrLEh R14, [sp, #-30]
l3602: ldrNEh R8, [sp, #-8]
l3603: ldrLSsb R10, [sp, #-64]
l3604: mov R2, #54
l3605: ldrLEsh R0, [sp, -R2]
l3606: mov R7, #42
l3607: ldrh R0, [sp, -R7]
l3608: ldrh R6, [sp, #-12]
l3609: mov R0, #69
l3610: ldrMIsb R12, [sp, -R0]
l3611: ldrsh R11, [sp, #-8]
l3612: mov R3, #70
l3613: ldrGEsh R1, [sp, -R3]
l3614: mov R1, #34
l3615: ldrEQsh R3, [sp, -R1]
l3616: mov R2, #50
l3617: ldrCCsb R3, [sp, -R2]
l3618: mov R9, #20
l3619: ldrh R10, [sp, -R9]
l3620: mov R9, #62
l3621: ldrLEh R0, [sp, -R9]
l3622: ldrVSsb R14, [sp, #-59]
l3623: mov R1, #69
l3624: ldrLEsb R7, [sp, -R1]
l3625: mov R7, #74
l3626: ldrCSsh R5, [sp, -R7]
l3627: strGEh R3, [sp, #-26]
l3628: mov R10, #27
l3629: ldrsb R0, [sp, -R10]
l3630: ldrsh R10, [sp, #-22]
l3631: ldrHIsh R1, [sp, #-24]
l3632: ldrLEh R8, [sp, #-64]
l3633: mov R6, #54
l3634: strh R10, [sp, -R6]
l3635: ldrLSh R11, [sp, #-78]
l3636: mov R2, #46
l3637: strEQh R1, [sp, -R2]
l3638: ldrh R0, [sp, #-28]
l3639: mov R8, #46
l3640: ldrh R2, [sp, -R8]
l3641: mov R5, #60
l3642: strCSh R1, [sp, -R5]
l3643: mov R12, #20
l3644: strNEh R5, [sp, -R12]
l3645: strVCh R1, [sp, #-18]
l3646: ldrHIh R12, [sp, #-70]
l3647: ldrh R3, [sp, #-38]
l3648: mov R1, #44
l3649: strLSh R12, [sp, -R1]
l3650: mov R6, #32
l3651: ldrsh R10, [sp, -R6]
l3652: mov R1, #65
l3653: ldrGTsb R2, [sp, -R1]
l3654: mov R3, #30
l3655: ldrGEsb R12, [sp, -R3]
l3656: ldrMIsh R7, [sp, #-74]
l3657: mov R14, #62
l3658: ldrVCh R11, [sp, -R14]
l3659: ldrLSsh R7, [sp, #-18]
l3660: strh R2, [sp, #-22]
l3661: mov R7, #50
l3662: ldrCSh R10, [sp, -R7]
l3663: mov R5, #54
l3664: ldrsh R10, [sp, -R5]
l3665: ldrVSsh R10, [sp, #-30]
l3666: mov R7, #62
l3667: ldrh R12, [sp, -R7]
l3668: strh R4, [sp, #-28]
l3669: mov R11, #46
l3670: ldrLEsh R4, [sp, -R11]
l3671: ldrsh R1, [sp, #-62]
l3672: mov R2, #64
l3673: ldrsh R12, [sp, -R2]
l3674: mov R14, #78
l3675: ldrh R1, [sp, -R14]
l3676: mov R0, #32
l3677: ldrsb R14, [sp, -R0]
l3678: mov R1, #52
l3679: ldrsh R1, [sp, -R1]
l3680: mov R1, #50
l3681: ldrCSsb R7, [sp, -R1]
l3682: ldrsb R7, [sp, #-13]
l3683: strEQh R10, [sp, #-6]
l3684: ldrPLsb R2, [sp, #-12]
l3685: mov R2, #74
l3686: ldrLTh R10, [sp, -R2]
l3687: mov R4, #5
l3688: ldrCSsb R5, [sp, -R4]
l3689: strh R6, [sp, #-12]
l3690: strNEh R3, [sp, #-72]
l3691: mov R1, #60
l3692: ldrsh R1, [sp, -R1]
l3693: ldrsh R14, [sp, #-54]
l3694: ldrLSsh R7, [sp, #-50]
l3695: ldrCCsb R0, [sp, #-18]
l3696: mov R5, #67
l3697: ldrLSsb R8, [sp, -R5]
l3698: ldrh R14, [sp, #-72]
l3699: mov R6, #12
l3700: strh R4, [sp, -R6]
l3701: ldrsh R7, [sp, #-16]
l3702: ldrVCh R10, [sp, #-22]
l3703: ldrGEsb R12, [sp, #-42]
l3704: ldrVSh R14, [sp, #-48]
l3705: mov R9, #34
l3706: ldrCSsb R2, [sp, -R9]
l3707: ldrsh R1, [sp, #-28]
l3708: strCSh R12, [sp, #-62]
l3709: mov R14, #44
l3710: ldrVCh R4, [sp, -R14]
l3711: mov R14, #60
l3712: ldrsh R9, [sp, -R14]
l3713: ldrh R9, [sp, #-44]
l3714: mov R14, #46
l3715: ldrCSh R7, [sp, -R14]
l3716: mov R2, #73
l3717: ldrCCsb R8, [sp, -R2]
l3718: mov R2, #74
l3719: ldrNEsb R6, [sp, -R2]
l3720: ldrLEsb R0, [sp, #-38]
l3721: mov R8, #12
l3722: ldrsh R5, [sp, -R8]
l3723: mov R4, #42
l3724: ldrh R4, [sp, -R4]
l3725: mov R8, #38
l3726: strHIh R11, [sp, -R8]
l3727: ldrHIh R6, [sp, #-40]
l3728: ldrEQh R12, [sp, #-66]
l3729: mov R10, #56
l3730: ldrh R11, [sp, -R10]
l3731: ldrsh R5, [sp, #-22]
l3732: mov R9, #28
l3733: ldrLSsh R14, [sp, -R9]
l3734: ldrsh R12, [sp, #-54]
l3735: mov R9, #42
l3736: strEQh R9, [sp, -R9]
l3737: ldrEQsb R7, [sp, #-51]
l3738: ldrh R11, [sp, #-16]
l3739: ldrEQsb R8, [sp, #-16]
l3740: ldrCSsb R3, [sp, #-42]
l3741: mov R8, #56
l3742: ldrh R4, [sp, -R8]
l3743: ldrHIsb R0, [sp, #-10]
l3744: ldrPLh R3, [sp, #-48]
l3745: ldrHIsh R14, [sp, #-10]
l3746: mov R7, #78
l3747: ldrVSh R2, [sp, -R7]
l3748: mov R4, #40
l3749: ldrVSsb R9, [sp, -R4]
l3750: mov R5, #14
l3751: ldrh R7, [sp, -R5]
l3752: ldrsh R7, [sp, #-38]
l3753: mov R2, #6
l3754: ldrVCsh R3, [sp, -R2]
l3755: ldrCCsb R10, [sp, #-68]
l3756: mov R14, #80
l3757: ldrsb R5, [sp, -R14]
l3758: ldrCCsh R7, [sp, #-10]
l3759: mov R6, #16
l3760: ldrPLh R10, [sp, -R6]
l3761: strCSh R14, [sp, #-20]
l3762: mov R11, #12
l3763: ldrsh R0, [sp, -R11]
l3764: strHIh R11, [sp, #-70]
l3765: mov R8, #14
l3766: ldrCSh R1, [sp, -R8]
l3767: ldrLSsh R14, [sp, #-42]
l3768: strh R11, [sp, #-40]
l3769: strVSh R11, [sp, #-74]
l3770: mov R11, #76
l3771: ldrsh R1, [sp, -R11]
l3772: mov R11, #74
l3773: ldrGTh R10, [sp, -R11]
l3774: mov R14, #6
l3775: ldrh R11, [sp, -R14]
l3776: mov R0, #32
l3777: ldrGTsb R5, [sp, -R0]
l3778: mov R3, #14
l3779: ldrh R8, [sp, -R3]
l3780: mov R0, #42
l3781: ldrsb R11, [sp, -R0]
l3782: strLSh R14, [sp, #-32]
l3783: ldrh R4, [sp, #-38]
l3784: mov R7, #7
l3785: ldrLEsb R1, [sp, -R7]
l3786: ldrCSh R1, [sp, #-24]
l3787: mov R0, #80
l3788: strVSh R12, [sp, -R0]
l3789: ldrMIsh R3, [sp, #-68]
l3790: mov R12, #18
l3791: ldrsh R7, [sp, -R12]
l3792: strGEh R6, [sp, #-42]
l3793: mov R14, #22
l3794: ldrHIh R11, [sp, -R14]
l3795: ldrPLsb R11, [sp, #-69]
l3796: strGEh R11, [sp, #-60]
l3797: mov R6, #24
l3798: ldrCCsb R0, [sp, -R6]
l3799: ldrsh R5, [sp, #-10]
l3800: mov R12, #30
l3801: ldrh R9, [sp, -R12]
l3802: ldrEQsb R11, [sp, #-47]
l3803: ldrh R11, [sp, #-16]
l3804: ldrNEsb R0, [sp, #-67]
l3805: mov R4, #60
l3806: strGEh R10, [sp, -R4]
l3807: mov R8, #66
l3808: strLTh R7, [sp, -R8]
l3809: ldrLEsh R4, [sp, #-44]
l3810: ldrCCh R6, [sp, #-70]
l3811: ldrh R8, [sp, #-46]
l3812: mov R1, #12
l3813: ldrLTh R12, [sp, -R1]
l3814: ldrPLsb R6, [sp, #-5]
l3815: mov R6, #38
l3816: strLSh R7, [sp, -R6]
l3817: strHIh R6, [sp, #-50]
l3818: mov R1, #10
l3819: ldrh R11, [sp, -R1]
l3820: mov R12, #72
l3821: ldrGEh R11, [sp, -R12]
l3822: mov R6, #79
l3823: ldrsb R8, [sp, -R6]
l3824: mov R5, #32
l3825: ldrsb R9, [sp, -R5]
l3826: mov R6, #16
l3827: ldrsh R1, [sp, -R6]
l3828: mov R14, #78
l3829: ldrsh R7, [sp, -R14]
l3830: mov R7, #28
l3831: strLSh R2, [sp, -R7]
l3832: ldrLEsb R4, [sp, #-67]
l3833: mov R10, #70
l3834: ldrMIsh R9, [sp, -R10]
l3835: mov R7, #10
l3836: strh R8, [sp, -R7]
l3837: ldrsb R4, [sp, #-7]
l3838: ldrsh R14, [sp, #-36]
l3839: ldrGTsh R5, [sp, #-24]
l3840: mov R12, #26
l3841: ldrsh R0, [sp, -R12]
l3842: mov R10, #21
l3843: ldrsb R0, [sp, -R10]
l3844: mov R10, #32
l3845: ldrCSh R1, [sp, -R10]
l3846: ldrh R6, [sp, #-22]
l3847: mov R0, #44
l3848: ldrGEsh R14, [sp, -R0]
l3849: mov R7, #56
l3850: strh R3, [sp, -R7]
l3851: mov R11, #66
l3852: ldrVCh R0, [sp, -R11]
l3853: mov R0, #36
l3854: ldrsh R9, [sp, -R0]
l3855: ldrsb R9, [sp, #-29]
l3856: strh R3, [sp, #-64]
l3857: mov R6, #16
l3858: strLEh R9, [sp, -R6]
l3859: ldrGTsb R4, [sp, #-58]
l3860: ldrsh R11, [sp, #-60]
l3861: ldrGEsb R14, [sp, #-10]
l3862: mov R0, #76
l3863: ldrVCsh R4, [sp, -R0]
l3864: ldrMIh R12, [sp, #-18]
l3865: ldrh R6, [sp, #-44]
l3866: ldrLEsh R12, [sp, #-56]
l3867: mov R10, #37
l3868: ldrCSsb R0, [sp, -R10]
l3869: ldrNEsh R8, [sp, #-48]
l3870: mov R12, #36
l3871: ldrCSsh R12, [sp, -R12]
l3872: ldrsb R0, [sp, #-78]
l3873: ldrVCh R11, [sp, #-74]
l3874: ldrh R14, [sp, #-20]
l3875: ldrEQsb R11, [sp, #-7]
l3876: strh R1, [sp, #-8]
l3877: strh R6, [sp, #-28]
l3878: mov R3, #52
l3879: strh R14, [sp, -R3]
l3880: strGEh R4, [sp, #-26]
l3881: ldrVCsb R9, [sp, #-80]
l3882: mov R7, #6
l3883: strVSh R7, [sp, -R7]
l3884: strLSh R9, [sp, #-36]
l3885: mov R2, #22
l3886: ldrLSh R1, [sp, -R2]
l3887: strh R8, [sp, #-74]
l3888: mov R12, #78
l3889: ldrCSh R5, [sp, -R12]
l3890: ldrLEh R6, [sp, #-34]
l3891: mov R7, #24
l3892: strLEh R9, [sp, -R7]
l3893: mov R6, #56
l3894: ldrLTsh R5, [sp, -R6]
l3895: strh R11, [sp, #-70]
l3896: ldrHIsb R8, [sp, #-32]
l3897: mov R1, #34
l3898: ldrGEsb R14, [sp, -R1]
l3899: strCSh R8, [sp, #-64]
l3900: mov R7, #10
l3901: ldrsh R6, [sp, -R7]
l3902: ldrLSsh R6, [sp, #-34]
l3903: strHIh R3, [sp, #-22]
l3904: ldrLTsh R8, [sp, #-38]
l3905: ldrEQsb R1, [sp, #-25]
l3906: mov R12, #22
l3907: ldrsh R3, [sp, -R12]
l3908: mov R4, #66
l3909: strh R10, [sp, -R4]
l3910: mov R6, #26
l3911: ldrPLsh R6, [sp, -R6]
l3912: mov R3, #66
l3913: ldrEQsb R4, [sp, -R3]
l3914: strMIh R12, [sp, #-10]
l3915: strCSh R12, [sp, #-46]
l3916: strh R6, [sp, #-28]
l3917: mov R9, #72
l3918: strh R11, [sp, -R9]
l3919: mov R6, #6
l3920: strh R0, [sp, -R6]
l3921: ldrsb R8, [sp, #-21]
l3922: strGTh R11, [sp, #-6]
l3923: mov R8, #26
l3924: strVCh R7, [sp, -R8]
l3925: mov R1, #80
l3926: strLSh R8, [sp, -R1]
l3927: ldrsh R2, [sp, #-28]
l3928: mov R11, #80
l3929: strCSh R1, [sp, -R11]
l3930: strh R0, [sp, #-32]
l3931: mov R7, #48
l3932: ldrMIsh R9, [sp, -R7]
l3933: ldrPLh R3, [sp, #-44]
l3934: ldrh R5, [sp, #-6]
l3935: mov R11, #55
l3936: ldrHIsb R7, [sp, -R11]
l3937: mov R10, #78
l3938: ldrLTh R4, [sp, -R10]
l3939: ldrsb R6, [sp, #-35]
l3940: mov R14, #80
l3941: ldrh R7, [sp, -R14]
l3942: mov R2, #14
l3943: ldrh R0, [sp, -R2]
l3944: strLSh R7, [sp, #-64]
l3945: ldrCSh R8, [sp, #-30]
l3946: mov R14, #32
l3947: ldrCSsb R5, [sp, -R14]
l3948: mov R14, #56
l3949: ldrsb R2, [sp, -R14]
l3950: ldrVSsb R0, [sp, #-27]
l3951: ldrsb R4, [sp, #-18]
l3952: ldrGEh R3, [sp, #-16]
l3953: ldrVSsh R0, [sp, #-20]
l3954: strh R7, [sp, #-30]
l3955: mov R1, #47
l3956: ldrGTsb R8, [sp, -R1]
l3957: ldrsb R8, [sp, #-61]
l3958: mov R7, #56
l3959: ldrEQsb R8, [sp, -R7]
l3960: mov R14, #24
l3961: ldrsb R3, [sp, -R14]
l3962: ldrh R5, [sp, #-70]
l3963: ldrNEsh R2, [sp, #-74]
l3964: ldrCSh R1, [sp, #-40]
l3965: ldrsb R3, [sp, #-59]
l3966: ldrsb R2, [sp, #-45]
l3967: mov R1, #21
l3968: ldrLTsb R5, [sp, -R1]
l3969: strh R7, [sp, #-20]
l3970: mov R8, #76
l3971: ldrsh R7, [sp, -R8]
l3972: mov R12, #80
l3973: ldrh R8, [sp, -R12]
l3974: mov R10, #20
l3975: strPLh R8, [sp, -R10]
l3976: mov R7, #34
l3977: ldrHIh R10, [sp, -R7]
l3978: strh R4, [sp, #-50]
l3979: mov R1, #55
l3980: ldrMIsb R1, [sp, -R1]
l3981: ldrCSsh R5, [sp, #-44]
l3982: mov R4, #28
l3983: ldrGEsh R2, [sp, -R4]
l3984: mov R8, #14
l3985: ldrGEh R7, [sp, -R8]
l3986: ldrh R8, [sp, #-32]
l3987: ldrsb R0, [sp, #-56]
l3988: ldrLTh R11, [sp, #-32]
l3989: ldrLEh R11, [sp, #-52]
l3990: ldrh R3, [sp, #-80]
l3991: mov R10, #67
l3992: ldrsb R8, [sp, -R10]
l3993: ldrCSsb R4, [sp, #-21]
l3994: mov R7, #57
l3995: ldrEQsb R6, [sp, -R7]
l3996: mov R4, #22
l3997: ldrCSsb R12, [sp, -R4]
l3998: ldrLEh R14, [sp, #-62]
l3999: mov R14, #16
l4000: strh R3, [sp, -R14]
l4001: strLTh R6, [sp, #-74]
l4002: ldrEQh R9, [sp, #-36]
l4003: mov R14, #50
l4004: strGEh R11, [sp, -R14]
l4005: ldrVCh R11, [sp, #-42]
l4006: mov R11, #22
l4007: ldrCCh R4, [sp, -R11]
l4008: mov R3, #70
l4009: ldrsh R11, [sp, -R3]
l4010: strh R2, [sp, #-10]
l4011: ldrh R12, [sp, #-60]
l4012: ldrh R4, [sp, #-62]
l4013: ldrsh R11, [sp, #-56]
l4014: mov R2, #46
l4015: strh R7, [sp, -R2]
l4016: ldrEQsh R3, [sp, #-74]
l4017: ldrsh R8, [sp, #-58]
l4018: ldrLSsh R3, [sp, #-46]
l4019: ldrLSsb R2, [sp, #-9]
l4020: ldrsb R12, [sp, #-75]
l4021: ldrsh R11, [sp, #-26]
l4022: ldrsb R11, [sp, #-43]
l4023: mov R2, #52
l4024: strh R2, [sp, -R2]
l4025: ldrsb R14, [sp, #-7]
l4026: mov R6, #42
l4027: ldrCCsh R5, [sp, -R6]
l4028: ldrPLsh R10, [sp, #-34]
l4029: mov R11, #42
l4030: ldrNEh R8, [sp, -R11]
l4031: mov R9, #44
l4032: ldrh R0, [sp, -R9]
l4033: mov R3, #46
l4034: strVCh R8, [sp, -R3]
l4035: ldrNEsb R9, [sp, #-14]
l4036: mov R9, #6
l4037: ldrGEsb R0, [sp, -R9]
l4038: ldrEQsh R6, [sp, #-34]
l4039: ldrPLsb R7, [sp, #-55]
l4040: ldrsh R14, [sp, #-22]
l4041: mov R14, #42
l4042: ldrh R4, [sp, -R14]
l4043: ldrCCsb R3, [sp, #-79]
l4044: strh R12, [sp, #-76]
l4045: mov R3, #60
l4046: ldrGTsh R11, [sp, -R3]
l4047: ldrVSsb R11, [sp, #-40]
l4048: strVCh R3, [sp, #-36]
l4049: strh R3, [sp, #-46]
l4050: ldrsb R4, [sp, #-38]
l4051: ldrsh R14, [sp, #-36]
l4052: strh R14, [sp, #-54]
l4053: mov R2, #13
l4054: ldrCSsb R9, [sp, -R2]
l4055: mov R2, #70
l4056: strGEh R1, [sp, -R2]
l4057: ldrh R11, [sp, #-36]
l4058: mov R2, #44
l4059: strh R4, [sp, -R2]
l4060: ldrGTsb R4, [sp, #-37]
l4061: mov R7, #20
l4062: strh R10, [sp, -R7]
l4063: ldrsb R11, [sp, #-57]
l4064: mov R14, #34
l4065: ldrPLh R12, [sp, -R14]
l4066: ldrh R9, [sp, #-68]
l4067: ldrsh R8, [sp, #-10]
l4068: mov R12, #46
l4069: strCSh R3, [sp, -R12]
l4070: strCCh R6, [sp, #-80]
l4071: mov R8, #8
l4072: ldrsh R10, [sp, -R8]
l4073: mov R0, #68
l4074: strHIh R0, [sp, -R0]
l4075: mov R4, #10
l4076: ldrsh R10, [sp, -R4]
l4077: strCCh R4, [sp, #-56]
l4078: mov R2, #50
l4079: ldrLTsh R6, [sp, -R2]
l4080: mov R6, #76
l4081: ldrEQh R1, [sp, -R6]
l4082: mov R2, #58
l4083: ldrCSsh R7, [sp, -R2]
l4084: mov R11, #50
l4085: ldrsh R0, [sp, -R11]
l4086: mov R14, #64
l4087: ldrLEh R8, [sp, -R14]
l4088: mov R12, #78
l4089: strVCh R3, [sp, -R12]
l4090: mov R12, #26
l4091: ldrGEsh R2, [sp, -R12]
l4092: strEQh R2, [sp, #-64]
l4093: mov R8, #50
l4094: strh R4, [sp, -R8]
l4095: ldrLTsh R6, [sp, #-80]
l4096: ldrCCh R6, [sp, #-50]
l4097: mov R11, #67
l4098: ldrsb R1, [sp, -R11]
l4099: mov R11, #34
l4100: strEQh R9, [sp, -R11]
l4101: mov R8, #24
l4102: ldrsh R5, [sp, -R8]
l4103: mov R9, #54
l4104: ldrLTsh R11, [sp, -R9]
l4105: mov R1, #42
l4106: ldrCCh R7, [sp, -R1]
l4107: mov R1, #63
l4108: ldrLSsb R1, [sp, -R1]
l4109: mov R6, #74
l4110: ldrsh R12, [sp, -R6]
l4111: strLSh R5, [sp, #-16]
l4112: ldrsb R1, [sp, #-8]
l4113: ldrsb R12, [sp, #-5]
l4114: ldrLTsh R0, [sp, #-36]
l4115: mov R14, #40
l4116: ldrh R10, [sp, -R14]
l4117: mov R8, #43
l4118: ldrsb R11, [sp, -R8]
l4119: mov R5, #50
l4120: ldrLEh R3, [sp, -R5]
l4121: mov R8, #6
l4122: strLTh R9, [sp, -R8]
l4123: ldrGEsb R8, [sp, #-9]
l4124: mov R6, #26
l4125: ldrsb R6, [sp, -R6]
l4126: strPLh R9, [sp, #-72]
l4127: mov R8, #76
l4128: strh R10, [sp, -R8]
l4129: mov R5, #56
l4130: ldrHIh R10, [sp, -R5]
l4131: mov R2, #27
l4132: ldrLTsb R11, [sp, -R2]
l4133: mov R8, #50
l4134: ldrMIsh R1, [sp, -R8]
l4135: mov R12, #74
l4136: strEQh R9, [sp, -R12]
l4137: mov R8, #47
l4138: ldrGTsb R0, [sp, -R8]
l4139: ldrGTh R8, [sp, #-66]
l4140: ldrsh R2, [sp, #-42]
l4141: mov R8, #54
l4142: ldrPLh R7, [sp, -R8]
l4143: ldrNEh R1, [sp, #-44]
l4144: ldrGTsb R9, [sp, #-48]
l4145: mov R7, #33
l4146: ldrsb R6, [sp, -R7]
l4147: mov R12, #30
l4148: strh R8, [sp, -R12]
l4149: mov R10, #16
l4150: ldrHIsh R7, [sp, -R10]
l4151: mov R6, #50
l4152: strMIh R2, [sp, -R6]
l4153: mov R4, #74
l4154: strVCh R11, [sp, -R4]
l4155: strh R0, [sp, #-60]
l4156: mov R12, #44
l4157: strLEh R6, [sp, -R12]
l4158: strVCh R11, [sp, #-78]
l4159: mov R8, #52
l4160: strHIh R7, [sp, -R8]
l4161: ldrPLsb R7, [sp, #-48]
l4162: ldrsb R0, [sp, #-7]
l4163: ldrh R0, [sp, #-64]
l4164: ldrVCsh R0, [sp, #-8]
l4165: mov R9, #23
l4166: ldrsb R1, [sp, -R9]
l4167: mov R6, #40
l4168: ldrh R12, [sp, -R6]
l4169: mov R2, #64
l4170: ldrh R3, [sp, -R2]
l4171: mov R9, #32
l4172: ldrCCsb R12, [sp, -R9]
l4173: ldrh R4, [sp, #-20]
l4174: mov R4, #10
l4175: ldrHIsh R9, [sp, -R4]
l4176: ldrsb R4, [sp, #-76]
l4177: ldrHIsb R12, [sp, #-62]
l4178: mov R8, #54
l4179: ldrEQsh R4, [sp, -R8]
l4180: ldrh R5, [sp, #-14]
l4181: ldrVCsb R2, [sp, #-70]
l4182: ldrGEsh R9, [sp, #-60]
l4183: ldrsh R3, [sp, #-74]
l4184: mov R4, #5
l4185: ldrMIsb R4, [sp, -R4]
l4186: ldrsh R14, [sp, #-8]
l4187: ldrsb R7, [sp, #-27]
l4188: strVSh R1, [sp, #-74]
l4189: strVSh R4, [sp, #-40]
l4190: mov R7, #6
l4191: ldrHIsb R11, [sp, -R7]
l4192: mov R5, #10
l4193: ldrCCh R7, [sp, -R5]
l4194: mov R7, #22
l4195: ldrh R10, [sp, -R7]
l4196: strGEh R10, [sp, #-70]
l4197: ldrLTh R4, [sp, #-44]
l4198: ldrsh R6, [sp, #-66]
l4199: ldrEQsb R7, [sp, #-29]
l4200: mov R14, #56
l4201: ldrsh R4, [sp, -R14]
l4202: strh R14, [sp, #-78]
l4203: mov R7, #46
l4204: strGTh R8, [sp, -R7]
l4205: mov R3, #44
l4206: ldrh R6, [sp, -R3]
l4207: ldrsb R8, [sp, #-12]
l4208: ldrGTsb R9, [sp, #-44]
l4209: ldrsh R8, [sp, #-22]
l4210: ldrh R7, [sp, #-44]
l4211: ldrMIh R0, [sp, #-6]
l4212: ldrVCsh R1, [sp, #-20]
l4213: ldrsb R8, [sp, #-53]
l4214: mov R5, #34
l4215: ldrh R7, [sp, -R5]
l4216: mov R6, #26
l4217: ldrsb R3, [sp, -R6]
l4218: mov R11, #66
l4219: strh R7, [sp, -R11]
l4220: mov R8, #50
l4221: strNEh R0, [sp, -R8]
l4222: strh R3, [sp, #-18]
l4223: ldrh R11, [sp, #-14]
l4224: mov R11, #66
l4225: ldrMIh R10, [sp, -R11]
l4226: ldrEQsb R9, [sp, #-67]
l4227: strEQh R7, [sp, #-78]
l4228: mov R12, #32
l4229: ldrNEsh R8, [sp, -R12]
l4230: ldrh R0, [sp, #-28]
l4231: mov R6, #76
l4232: strLEh R5, [sp, -R6]
l4233: strh R7, [sp, #-78]
l4234: mov R9, #22
l4235: ldrNEsh R10, [sp, -R9]
l4236: mov R5, #42
l4237: ldrLEsb R12, [sp, -R5]
l4238: mov R6, #72
l4239: strHIh R3, [sp, -R6]
l4240: ldrPLh R10, [sp, #-26]
l4241: ldrVSh R10, [sp, #-44]
l4242: mov R7, #56
l4243: strLSh R2, [sp, -R7]
l4244: ldrsb R3, [sp, #-38]
l4245: ldrMIsh R12, [sp, #-26]
l4246: mov R0, #36
l4247: ldrLTsb R8, [sp, -R0]
l4248: mov R2, #26
l4249: ldrHIsh R7, [sp, -R2]
l4250: mov R12, #24
l4251: ldrsb R5, [sp, -R12]
l4252: mov R0, #14
l4253: strLSh R9, [sp, -R0]
l4254: ldrsh R5, [sp, #-78]
l4255: mov R3, #10
l4256: ldrVCsh R14, [sp, -R3]
l4257: ldrPLsh R1, [sp, #-38]
l4258: mov R11, #40
l4259: ldrCSsh R1, [sp, -R11]
l4260: ldrCSh R10, [sp, #-24]
l4261: strh R14, [sp, #-42]
l4262: mov R1, #18
l4263: ldrsb R8, [sp, -R1]
l4264: mov R3, #16
l4265: strCSh R9, [sp, -R3]
l4266: strCCh R7, [sp, #-78]
l4267: ldrsb R1, [sp, #-53]
l4268: mov R11, #55
l4269: ldrsb R3, [sp, -R11]
l4270: mov R8, #60
l4271: ldrGEh R8, [sp, -R8]
l4272: mov R2, #20
l4273: ldrh R11, [sp, -R2]
l4274: ldrEQsh R4, [sp, #-26]
l4275: mov R5, #6
l4276: ldrh R0, [sp, -R5]
l4277: mov R1, #37
l4278: ldrsb R14, [sp, -R1]
l4279: mov R8, #24
l4280: ldrCSh R12, [sp, -R8]
l4281: strh R3, [sp, #-14]
l4282: ldrGTsh R9, [sp, #-52]
l4283: ldrPLh R8, [sp, #-64]
l4284: strh R4, [sp, #-34]
l4285: ldrGEsh R2, [sp, #-10]
l4286: mov R6, #40
l4287: ldrLEsh R2, [sp, -R6]
l4288: ldrh R8, [sp, #-10]
l4289: mov R11, #36
l4290: ldrPLsh R5, [sp, -R11]
l4291: ldrsb R9, [sp, #-43]
l4292: ldrLSh R5, [sp, #-60]
l4293: mov R4, #70
l4294: ldrHIh R14, [sp, -R4]
l4295: mov R12, #26
l4296: ldrCSsb R1, [sp, -R12]
l4297: mov R8, #46
l4298: ldrVSh R5, [sp, -R8]
l4299: ldrHIsb R8, [sp, #-63]
l4300: mov R10, #80
l4301: ldrh R4, [sp, -R10]
l4302: mov R4, #52
l4303: ldrNEh R11, [sp, -R4]
l4304: mov R3, #42
l4305: ldrh R0, [sp, -R3]
l4306: strEQh R0, [sp, #-42]
l4307: mov R11, #20
l4308: ldrCSh R11, [sp, -R11]
l4309: mov R6, #40
l4310: ldrPLh R0, [sp, -R6]
l4311: mov R9, #58
l4312: strh R6, [sp, -R9]
l4313: mov R2, #6
l4314: ldrLEh R14, [sp, -R2]
l4315: mov R2, #62
l4316: ldrHIsb R0, [sp, -R2]
l4317: mov R5, #47
l4318: ldrsb R3, [sp, -R5]
l4319: strCCh R12, [sp, #-34]
l4320: mov R3, #14
l4321: ldrLSsh R12, [sp, -R3]
l4322: mov R10, #80
l4323: ldrMIh R4, [sp, -R10]
l4324: strVCh R7, [sp, #-26]
l4325: ldrEQsh R11, [sp, #-20]
l4326: ldrGEsb R12, [sp, #-34]
l4327: ldrNEsh R4, [sp, #-70]
l4328: mov R8, #56
l4329: strCSh R0, [sp, -R8]
l4330: strNEh R4, [sp, #-54]
l4331: mov R11, #70
l4332: ldrLEsh R12, [sp, -R11]
l4333: ldrEQsb R6, [sp, #-69]
l4334: mov R12, #7
l4335: ldrLTsb R8, [sp, -R12]
l4336: mov R7, #52
l4337: ldrGEh R1, [sp, -R7]
l4338: mov R4, #32
l4339: strCSh R1, [sp, -R4]
l4340: ldrCSsh R8, [sp, #-54]
l4341: mov R2, #58
l4342: strCSh R8, [sp, -R2]
l4343: mov R2, #22
l4344: ldrLSh R11, [sp, -R2]
l4345: mov R14, #42
l4346: ldrLTsb R12, [sp, -R14]
l4347: mov R3, #64
l4348: ldrsh R9, [sp, -R3]
l4349: mov R3, #24
l4350: strPLh R11, [sp, -R3]
l4351: ldrh R9, [sp, #-20]
l4352: ldrh R8, [sp, #-32]
l4353: mov R8, #64
l4354: strCCh R8, [sp, -R8]
l4355: ldrMIsb R7, [sp, #-37]
l4356: strVCh R8, [sp, #-78]
l4357: mov R5, #22
l4358: ldrGEh R10, [sp, -R5]
l4359: mov R2, #30
l4360: strh R3, [sp, -R2]
l4361: mov R6, #42
l4362: ldrVCsh R9, [sp, -R6]
l4363: mov R6, #6
l4364: strLEh R10, [sp, -R6]
l4365: ldrh R6, [sp, #-30]
l4366: ldrLTsh R4, [sp, #-62]
l4367: ldrHIh R9, [sp, #-62]
l4368: ldrsb R7, [sp, #-28]
l4369: mov R2, #34
l4370: ldrMIsh R5, [sp, -R2]
l4371: mov R7, #62
l4372: ldrPLsb R11, [sp, -R7]
l4373: ldrPLh R11, [sp, #-40]
l4374: ldrGTsb R6, [sp, #-58]
l4375: ldrsb R3, [sp, #-56]
l4376: mov R1, #36
l4377: ldrh R1, [sp, -R1]
l4378: mov R9, #46
l4379: ldrsh R4, [sp, -R9]
l4380: mov R7, #74
l4381: strVSh R7, [sp, -R7]
l4382: mov R6, #6
l4383: ldrLEh R9, [sp, -R6]
l4384: ldrLSh R12, [sp, #-64]
l4385: ldrCSsh R4, [sp, #-44]
l4386: ldrsb R2, [sp, #-77]
l4387: mov R5, #40
l4388: ldrLSsh R10, [sp, -R5]
l4389: mov R4, #42
l4390: ldrCSsh R4, [sp, -R4]
l4391: mov R7, #80
l4392: strGEh R14, [sp, -R7]
l4393: mov R5, #26
l4394: ldrVCh R1, [sp, -R5]
l4395: ldrLTh R4, [sp, #-52]
l4396: ldrGTsh R3, [sp, #-80]
l4397: mov R6, #38
l4398: strLEh R7, [sp, -R6]
l4399: mov R6, #30
l4400: ldrGEsb R8, [sp, -R6]
l4401: mov R10, #78
l4402: strLSh R3, [sp, -R10]
l4403: ldrCSsh R8, [sp, #-24]
l4404: mov R6, #6
l4405: ldrsh R2, [sp, -R6]
l4406: ldrCSsb R12, [sp, #-52]
l4407: mov R8, #50
l4408: ldrsh R9, [sp, -R8]
l4409: mov R1, #32
l4410: ldrVCsb R5, [sp, -R1]
l4411: ldrGTsb R6, [sp, #-71]
l4412: mov R7, #8
l4413: strh R10, [sp, -R7]
l4414: mov R2, #14
l4415: strCSh R5, [sp, -R2]
l4416: mov R6, #32
l4417: ldrCCh R12, [sp, -R6]
l4418: ldrEQsb R2, [sp, #-42]
l4419: mov R6, #76
l4420: ldrLSsb R14, [sp, -R6]
l4421: mov R8, #74
l4422: ldrPLsh R5, [sp, -R8]
l4423: ldrsb R11, [sp, #-33]
l4424: mov R7, #56
l4425: ldrHIsh R2, [sp, -R7]
l4426: mov R4, #74
l4427: ldrMIsh R0, [sp, -R4]
l4428: mov R5, #7
l4429: ldrLTsb R6, [sp, -R5]
l4430: mov R8, #68
l4431: strh R0, [sp, -R8]
l4432: ldrLSsh R6, [sp, #-12]
l4433: mov R4, #28
l4434: ldrHIsh R14, [sp, -R4]
l4435: ldrsb R9, [sp, #-27]
l4436: ldrHIsh R7, [sp, #-10]
l4437: ldrHIsh R11, [sp, #-62]
l4438: ldrsb R9, [sp, #-69]
l4439: mov R5, #68
l4440: strLEh R12, [sp, -R5]
l4441: mov R8, #70
l4442: ldrMIsh R0, [sp, -R8]
l4443: mov R7, #46
l4444: ldrVSsh R10, [sp, -R7]
l4445: mov R3, #6
l4446: strVSh R10, [sp, -R3]
l4447: ldrsh R0, [sp, #-50]
l4448: ldrsh R8, [sp, #-44]
l4449: ldrCSsh R3, [sp, #-74]
l4450: mov R0, #58
l4451: ldrCSsb R10, [sp, -R0]
l4452: mov R1, #34
l4453: ldrsh R2, [sp, -R1]
l4454: mov R2, #46
l4455: ldrEQsh R4, [sp, -R2]
l4456: mov R2, #54
l4457: ldrLEsh R11, [sp, -R2]
l4458: mov R11, #44
l4459: ldrEQsh R8, [sp, -R11]
l4460: mov R2, #68
l4461: ldrVCh R14, [sp, -R2]
l4462: mov R11, #56
l4463: ldrLSh R9, [sp, -R11]
l4464: ldrsh R5, [sp, #-66]
l4465: ldrHIsh R5, [sp, #-44]
l4466: mov R12, #24
l4467: strGEh R11, [sp, -R12]
l4468: ldrLSsb R6, [sp, #-56]
l4469: strLSh R7, [sp, #-70]
l4470: mov R10, #8
l4471: ldrVCsh R3, [sp, -R10]
l4472: ldrPLsh R10, [sp, #-38]
l4473: mov R14, #16
l4474: ldrLEsh R5, [sp, -R14]
l4475: mov R6, #76
l4476: ldrsh R1, [sp, -R6]
l4477: mov R2, #40
l4478: ldrVSsh R12, [sp, -R2]
l4479: ldrh R9, [sp, #-66]
l4480: mov R4, #79
l4481: ldrCCsb R12, [sp, -R4]
l4482: strGTh R11, [sp, #-34]
l4483: ldrh R4, [sp, #-30]
l4484: ldrh R12, [sp, #-40]
l4485: ldrsh R4, [sp, #-66]
l4486: mov R4, #6
l4487: ldrCCsh R10, [sp, -R4]
l4488: mov R7, #26
l4489: ldrh R14, [sp, -R7]
l4490: mov R5, #52
l4491: ldrLTsb R3, [sp, -R5]
l4492: ldrh R0, [sp, #-20]
l4493: strLEh R9, [sp, #-32]
l4494: strGEh R1, [sp, #-16]
l4495: mov R10, #6
l4496: ldrsh R3, [sp, -R10]
l4497: ldrCSh R10, [sp, #-68]
l4498: mov R1, #6
l4499: ldrsb R5, [sp, -R1]
l4500: ldrPLh R6, [sp, #-78]
l4501: ldrVCsh R14, [sp, #-80]
l4502: ldrMIsb R10, [sp, #-35]
l4503: mov R12, #64
l4504: strh R11, [sp, -R12]
l4505: mov R10, #66
l4506: ldrVCsh R3, [sp, -R10]
l4507: ldrh R5, [sp, #-12]
l4508: mov R7, #32
l4509: ldrLEsh R14, [sp, -R7]
l4510: ldrPLsb R7, [sp, #-39]
l4511: ldrVSsh R3, [sp, #-62]
l4512: mov R4, #32
l4513: ldrsh R14, [sp, -R4]
l4514: ldrsb R11, [sp, #-12]
l4515: ldrCCh R8, [sp, #-80]
l4516: strh R7, [sp, #-76]
l4517: strLEh R10, [sp, #-6]
l4518: ldrGEh R6, [sp, #-64]
l4519: mov R3, #30
l4520: strh R9, [sp, -R3]
l4521: mov R12, #74
l4522: ldrLSsb R3, [sp, -R12]
l4523: ldrNEsh R6, [sp, #-42]
l4524: ldrsb R8, [sp, #-77]
l4525: strPLh R12, [sp, #-22]
l4526: mov R5, #21
l4527: ldrEQsb R10, [sp, -R5]
l4528: ldrVSh R11, [sp, #-30]
l4529: ldrsb R10, [sp, #-69]
l4530: mov R7, #75
l4531: ldrsb R12, [sp, -R7]
l4532: mov R7, #16
l4533: strLTh R10, [sp, -R7]
l4534: ldrsh R5, [sp, #-60]
l4535: ldrVSh R9, [sp, #-78]
l4536: strh R5, [sp, #-50]
l4537: strh R9, [sp, #-26]
l4538: mov R10, #26
l4539: ldrsb R0, [sp, -R10]
l4540: mov R0, #62
l4541: ldrGEh R10, [sp, -R0]
l4542: mov R2, #33
l4543: ldrVSsb R8, [sp, -R2]
l4544: strMIh R14, [sp, #-36]
l4545: ldrh R1, [sp, #-50]
l4546: mov R14, #60
l4547: ldrsb R2, [sp, -R14]
l4548: mov R14, #60
l4549: ldrVSsh R11, [sp, -R14]
l4550: ldrEQh R3, [sp, #-34]
l4551: ldrsh R5, [sp, #-10]
l4552: ldrsb R4, [sp, #-22]
l4553: ldrLEsb R5, [sp, #-71]
l4554: mov R1, #50
l4555: ldrEQh R6, [sp, -R1]
l4556: ldrCCsh R5, [sp, #-22]
l4557: ldrPLsb R3, [sp, #-19]
l4558: mov R7, #10
l4559: ldrsh R6, [sp, -R7]
l4560: mov R0, #6
l4561: strGEh R1, [sp, -R0]
l4562: mov R8, #35
l4563: ldrsb R12, [sp, -R8]
l4564: mov R11, #20
l4565: ldrh R0, [sp, -R11]
l4566: mov R0, #68
l4567: ldrsh R5, [sp, -R0]
l4568: ldrGEh R7, [sp, #-46]
l4569: ldrsb R8, [sp, #-57]
l4570: mov R8, #52
l4571: ldrHIsh R5, [sp, -R8]
l4572: ldrsh R0, [sp, #-60]
l4573: mov R8, #38
l4574: strVCh R0, [sp, -R8]
l4575: ldrGEsh R6, [sp, #-32]
l4576: ldrh R8, [sp, #-60]
l4577: ldrh R11, [sp, #-6]
l4578: ldrEQh R10, [sp, #-44]
l4579: mov R6, #38
l4580: ldrLEsh R0, [sp, -R6]
l4581: ldrh R6, [sp, #-16]
l4582: ldrLTsb R6, [sp, #-63]
l4583: ldrHIsh R0, [sp, #-30]
l4584: ldrsb R8, [sp, #-30]
l4585: ldrsh R5, [sp, #-20]
l4586: ldrMIh R6, [sp, #-34]
l4587: ldrh R5, [sp, #-46]
l4588: mov R5, #48
l4589: ldrLSsh R3, [sp, -R5]
l4590: mov R9, #53
l4591: ldrLEsb R6, [sp, -R9]
l4592: mov R10, #46
l4593: ldrGEh R2, [sp, -R10]
l4594: mov R8, #40
l4595: ldrsh R11, [sp, -R8]
l4596: mov R14, #42
l4597: ldrsh R11, [sp, -R14]
l4598: ldrh R5, [sp, #-62]
l4599: mov R12, #46
l4600: ldrsb R10, [sp, -R12]
l4601: mov R1, #9
l4602: ldrsb R14, [sp, -R1]
l4603: mov R4, #8
l4604: ldrh R3, [sp, -R4]
l4605: ldrHIh R7, [sp, #-58]
l4606: ldrLSsh R2, [sp, #-56]
l4607: ldrCCsb R12, [sp, #-61]
l4608: mov R6, #44
l4609: ldrsb R1, [sp, -R6]
l4610: mov R5, #30
l4611: ldrh R0, [sp, -R5]
l4612: mov R3, #28
l4613: ldrNEsb R14, [sp, -R3]
l4614: strh R5, [sp, #-30]
l4615: ldrNEsb R2, [sp, #-21]
l4616: mov R7, #66
l4617: ldrLSh R0, [sp, -R7]
l4618: ldrGEh R12, [sp, #-34]
l4619: strHIh R5, [sp, #-38]
l4620: ldrCCh R11, [sp, #-32]
l4621: ldrVCsb R2, [sp, #-28]
l4622: mov R3, #70
l4623: ldrLEsh R2, [sp, -R3]
l4624: mov R4, #8
l4625: ldrEQsh R10, [sp, -R4]
l4626: mov R5, #80
l4627: strVSh R1, [sp, -R5]
l4628: mov R3, #33
l4629: ldrEQsb R0, [sp, -R3]
l4630: ldrLTh R7, [sp, #-68]
l4631: mov R12, #60
l4632: ldrsh R5, [sp, -R12]
l4633: strh R1, [sp, #-70]
l4634: strNEh R9, [sp, #-32]
l4635: mov R1, #18
l4636: ldrsb R12, [sp, -R1]
l4637: ldrNEsh R0, [sp, #-10]
l4638: strPLh R14, [sp, #-70]
l4639: mov R1, #8
l4640: ldrh R12, [sp, -R1]
l4641: mov R1, #50
l4642: ldrGTsb R12, [sp, -R1]
l4643: mov R3, #38
l4644: ldrh R5, [sp, -R3]
l4645: mov R3, #78
l4646: ldrLTsb R5, [sp, -R3]
l4647: ldrVSsb R5, [sp, #-68]
l4648: ldrGEh R6, [sp, #-68]
l4649: ldrh R0, [sp, #-14]
l4650: ldrLEsh R1, [sp, #-8]
l4651: mov R5, #18
l4652: ldrLTsh R8, [sp, -R5]
l4653: strh R7, [sp, #-70]
l4654: mov R0, #8
l4655: strEQh R9, [sp, -R0]
l4656: mov R2, #56
l4657: ldrVCsh R3, [sp, -R2]
l4658: ldrNEsb R3, [sp, #-22]
l4659: mov R12, #42
l4660: ldrGTsh R0, [sp, -R12]
l4661: ldrh R8, [sp, #-58]
l4662: strh R1, [sp, #-44]
l4663: mov R7, #78
l4664: ldrVCh R3, [sp, -R7]
l4665: mov R3, #80
l4666: ldrh R2, [sp, -R3]
l4667: mov R12, #74
l4668: ldrVCsh R2, [sp, -R12]
l4669: mov R9, #28
l4670: ldrsb R4, [sp, -R9]
l4671: mov R6, #76
l4672: ldrLSsh R8, [sp, -R6]
l4673: ldrNEsh R11, [sp, #-74]
l4674: mov R4, #70
l4675: strCSh R9, [sp, -R4]
l4676: mov R5, #74
l4677: ldrLSsh R4, [sp, -R5]
l4678: ldrsh R0, [sp, #-60]
l4679: mov R10, #5
l4680: ldrVCsb R6, [sp, -R10]
l4681: mov R2, #48
l4682: ldrh R0, [sp, -R2]
l4683: mov R12, #17
l4684: ldrsb R9, [sp, -R12]
l4685: mov R2, #68
l4686: strh R11, [sp, -R2]
l4687: ldrHIsh R5, [sp, #-78]
l4688: ldrsb R12, [sp, #-80]
l4689: mov R6, #46
l4690: ldrh R14, [sp, -R6]
l4691: mov R3, #30
l4692: ldrsb R3, [sp, -R3]
l4693: mov R3, #48
l4694: ldrVCsb R5, [sp, -R3]
l4695: ldrsh R2, [sp, #-48]
l4696: ldrsh R6, [sp, #-74]
l4697: mov R10, #74
l4698: strCSh R11, [sp, -R10]
l4699: ldrVCsh R6, [sp, #-74]
l4700: mov R1, #10
l4701: strLTh R0, [sp, -R1]
l4702: mov R12, #16
l4703: ldrVCsh R0, [sp, -R12]
l4704: ldrh R14, [sp, #-70]
l4705: ldrsb R8, [sp, #-25]
l4706: mov R9, #20
l4707: ldrh R10, [sp, -R9]
l4708: mov R6, #28
l4709: ldrLEh R8, [sp, -R6]
l4710: mov R11, #30
l4711: ldrLTh R7, [sp, -R11]
l4712: ldrPLsb R10, [sp, #-63]
l4713: mov R5, #18
l4714: ldrh R9, [sp, -R5]
l4715: ldrCSh R4, [sp, #-14]
l4716: ldrMIh R4, [sp, #-22]
l4717: ldrEQsb R9, [sp, #-69]
l4718: ldrMIsb R9, [sp, #-65]
l4719: ldrh R14, [sp, #-56]
l4720: mov R12, #18
l4721: ldrsh R12, [sp, -R12]
l4722: strCCh R0, [sp, #-80]
l4723: mov R9, #30
l4724: ldrh R4, [sp, -R9]
l4725: ldrMIsb R5, [sp, #-43]
l4726: mov R0, #62
l4727: strNEh R12, [sp, -R0]
l4728: strCSh R7, [sp, #-52]
l4729: ldrVCh R8, [sp, #-40]
l4730: ldrVCh R6, [sp, #-46]
l4731: ldrh R5, [sp, #-72]
l4732: mov R9, #66
l4733: ldrsb R5, [sp, -R9]
l4734: mov R4, #50
l4735: ldrCCh R6, [sp, -R4]
l4736: ldrsh R14, [sp, #-72]
l4737: mov R5, #62
l4738: strh R3, [sp, -R5]
l4739: mov R11, #74
l4740: ldrLTh R1, [sp, -R11]
l4741: mov R1, #78
l4742: strCCh R11, [sp, -R1]
l4743: mov R14, #16
l4744: ldrh R5, [sp, -R14]
l4745: ldrMIh R12, [sp, #-78]
l4746: mov R6, #56
l4747: ldrGTsb R11, [sp, -R6]
l4748: mov R6, #39
l4749: ldrLSsb R11, [sp, -R6]
l4750: mov R11, #46
l4751: strEQh R12, [sp, -R11]
l4752: ldrsh R12, [sp, #-18]
l4753: ldrLSsb R7, [sp, #-79]
l4754: ldrsh R0, [sp, #-20]
l4755: strLEh R7, [sp, #-46]
l4756: mov R1, #80
l4757: strVSh R9, [sp, -R1]
l4758: mov R8, #41
l4759: ldrLEsb R14, [sp, -R8]
l4760: mov R5, #52
l4761: ldrh R8, [sp, -R5]
l4762: mov R1, #68
l4763: strLTh R5, [sp, -R1]
l4764: ldrLEsb R2, [sp, #-40]
l4765: ldrPLh R7, [sp, #-22]
l4766: mov R11, #70
l4767: ldrh R1, [sp, -R11]
l4768: mov R10, #60
l4769: ldrNEh R10, [sp, -R10]
l4770: ldrh R2, [sp, #-34]
l4771: mov R1, #22
l4772: ldrLTsb R5, [sp, -R1]
l4773: mov R6, #48
l4774: ldrh R2, [sp, -R6]
l4775: strh R4, [sp, #-60]
l4776: ldrLTsb R2, [sp, #-63]
l4777: mov R0, #22
l4778: ldrsh R3, [sp, -R0]
l4779: ldrCCsb R0, [sp, #-50]
l4780: mov R1, #14
l4781: ldrGEh R6, [sp, -R1]
l4782: mov R8, #44
l4783: strHIh R2, [sp, -R8]
l4784: mov R3, #30
l4785: ldrLSh R5, [sp, -R3]
l4786: ldrLSsb R10, [sp, #-6]
l4787: mov R7, #76
l4788: strh R2, [sp, -R7]
l4789: ldrNEh R10, [sp, #-18]
l4790: mov R2, #62
l4791: ldrLSsh R2, [sp, -R2]
l4792: mov R10, #78
l4793: ldrsb R1, [sp, -R10]
l4794: ldrLTsb R11, [sp, #-68]
l4795: ldrh R9, [sp, #-50]
l4796: strVSh R11, [sp, #-24]
l4797: ldrh R3, [sp, #-56]
l4798: ldrLTsb R8, [sp, #-66]
l4799: ldrVCh R0, [sp, #-66]
l4800: mov R3, #15
l4801: ldrCSsb R0, [sp, -R3]
l4802: strGTh R3, [sp, #-74]
l4803: strh R0, [sp, #-80]
l4804: ldrh R11, [sp, #-24]
l4805: mov R2, #76
l4806: ldrLTh R9, [sp, -R2]
l4807: ldrNEsb R3, [sp, #-56]
l4808: ldrh R8, [sp, #-52]
l4809: ldrh R3, [sp, #-38]
l4810: ldrNEh R4, [sp, #-62]
l4811: mov R1, #20
l4812: ldrh R0, [sp, -R1]
l4813: ldrh R8, [sp, #-54]
l4814: strh R4, [sp, #-40]
l4815: strCCh R8, [sp, #-40]
l4816: ldrh R8, [sp, #-42]
l4817: mov R0, #52
l4818: strCSh R6, [sp, -R0]
l4819: mov R12, #72
l4820: ldrsb R1, [sp, -R12]
l4821: mov R7, #46
l4822: ldrPLsh R4, [sp, -R7]
l4823: mov R6, #14
l4824: ldrGTsh R11, [sp, -R6]
l4825: ldrsb R6, [sp, #-61]
l4826: mov R6, #66
l4827: ldrh R1, [sp, -R6]
l4828: mov R10, #28
l4829: strGTh R3, [sp, -R10]
l4830: ldrsb R6, [sp, #-46]
l4831: ldrLSh R11, [sp, #-8]
l4832: ldrsb R7, [sp, #-13]
l4833: mov R7, #16
l4834: ldrsh R3, [sp, -R7]
l4835: ldrLEsh R2, [sp, #-28]
l4836: ldrsb R11, [sp, #-47]
l4837: mov R11, #80
l4838: strMIh R9, [sp, -R11]
l4839: ldrh R7, [sp, #-30]
l4840: mov R7, #10
l4841: ldrsh R3, [sp, -R7]
l4842: mov R6, #25
l4843: ldrsb R11, [sp, -R6]
l4844: strh R6, [sp, #-50]
l4845: mov R11, #75
l4846: ldrHIsb R7, [sp, -R11]
l4847: ldrsh R11, [sp, #-6]
l4848: ldrsh R11, [sp, #-16]
l4849: mov R11, #73
l4850: ldrsb R4, [sp, -R11]
l4851: mov R3, #74
l4852: strEQh R3, [sp, -R3]
l4853: ldrHIsb R5, [sp, #-34]
l4854: ldrsh R4, [sp, #-6]
l4855: strh R2, [sp, #-58]
l4856: mov R12, #70
l4857: strLSh R10, [sp, -R12]
l4858: ldrGEh R10, [sp, #-54]
l4859: mov R8, #79
l4860: ldrCCsb R8, [sp, -R8]
l4861: mov R2, #24
l4862: strh R0, [sp, -R2]
l4863: ldrh R7, [sp, #-12]
l4864: mov R1, #58
l4865: ldrLEh R11, [sp, -R1]
l4866: ldrCSsb R2, [sp, #-20]
l4867: ldrGTh R2, [sp, #-14]
l4868: ldrMIsh R10, [sp, #-22]
l4869: strEQh R4, [sp, #-26]
l4870: ldrVCsh R9, [sp, #-22]
l4871: ldrVSh R0, [sp, #-28]
l4872: ldrLTsb R10, [sp, #-76]
l4873: ldrMIsb R1, [sp, #-6]
l4874: mov R14, #50
l4875: ldrsb R8, [sp, -R14]
l4876: ldrHIh R1, [sp, #-66]
l4877: ldrh R14, [sp, #-52]
l4878: mov R4, #62
l4879: ldrsh R11, [sp, -R4]
l4880: ldrVCsh R4, [sp, #-48]
l4881: strGTh R5, [sp, #-70]
l4882: mov R12, #14
l4883: strh R14, [sp, -R12]
l4884: ldrGEsb R4, [sp, #-79]
l4885: ldrMIsb R1, [sp, #-43]
l4886: mov R1, #20
l4887: ldrsh R4, [sp, -R1]
l4888: mov R8, #28
l4889: strCCh R11, [sp, -R8]
l4890: ldrsb R4, [sp, #-40]
l4891: ldrVSsh R9, [sp, #-12]
l4892: ldrh R6, [sp, #-52]
l4893: ldrsh R7, [sp, #-6]
l4894: ldrEQsh R4, [sp, #-32]
l4895: mov R12, #56
l4896: ldrMIh R3, [sp, -R12]
l4897: mov R1, #32
l4898: ldrsb R3, [sp, -R1]
l4899: mov R3, #74
l4900: ldrMIh R12, [sp, -R3]
l4901: mov R2, #32
l4902: ldrLEsh R11, [sp, -R2]
l4903: strLSh R12, [sp, #-38]
l4904: mov R0, #36
l4905: ldrVSh R8, [sp, -R0]
l4906: mov R14, #57
l4907: ldrsb R3, [sp, -R14]
l4908: mov R4, #10
l4909: strLTh R3, [sp, -R4]
l4910: mov R6, #72
l4911: strCCh R3, [sp, -R6]
l4912: mov R8, #64
l4913: ldrh R3, [sp, -R8]
l4914: mov R7, #47
l4915: ldrsb R2, [sp, -R7]
l4916: ldrGTsb R5, [sp, #-14]
l4917: ldrLEh R2, [sp, #-30]
l4918: mov R7, #18
l4919: strNEh R6, [sp, -R7]
l4920: mov R1, #13
l4921: ldrsb R4, [sp, -R1]
l4922: strEQh R14, [sp, #-10]
l4923: ldrsb R10, [sp, #-72]
l4924: strh R12, [sp, #-12]
l4925: ldrLEh R7, [sp, #-34]
l4926: mov R5, #26
l4927: ldrMIsh R1, [sp, -R5]
l4928: mov R4, #50
l4929: strh R9, [sp, -R4]
l4930: ldrsh R10, [sp, #-20]
l4931: mov R10, #74
l4932: strGEh R4, [sp, -R10]
l4933: mov R14, #63
l4934: ldrHIsb R2, [sp, -R14]
l4935: strh R1, [sp, #-40]
l4936: strh R12, [sp, #-58]
l4937: ldrCCsb R6, [sp, #-6]
l4938: ldrLSsb R11, [sp, #-61]
l4939: mov R6, #46
l4940: strh R2, [sp, -R6]
l4941: ldrCSh R6, [sp, #-20]
l4942: ldrPLh R8, [sp, #-34]
l4943: mov R8, #22
l4944: ldrsb R7, [sp, -R8]
l4945: mov R3, #12
l4946: ldrMIh R9, [sp, -R3]
l4947: mov R1, #76
l4948: ldrCSh R8, [sp, -R1]
l4949: mov R7, #20
l4950: strMIh R4, [sp, -R7]
l4951: mov R10, #38
l4952: ldrsh R10, [sp, -R10]
l4953: mov R1, #44
l4954: ldrEQsh R11, [sp, -R1]
l4955: ldrLEh R9, [sp, #-36]
l4956: ldrCSsb R0, [sp, #-45]
l4957: mov R3, #20
l4958: ldrMIsb R14, [sp, -R3]
l4959: ldrPLh R0, [sp, #-70]
l4960: mov R6, #25
l4961: ldrVSsb R2, [sp, -R6]
l4962: ldrh R12, [sp, #-8]
l4963: mov R10, #70
l4964: strVSh R1, [sp, -R10]
l4965: ldrLSsb R0, [sp, #-55]
l4966: mov R9, #74
l4967: ldrsb R14, [sp, -R9]
l4968: ldrh R3, [sp, #-8]
l4969: ldrh R6, [sp, #-10]
l4970: mov R6, #33
l4971: ldrLSsb R12, [sp, -R6]
l4972: ldrGEsh R12, [sp, #-74]
l4973: ldrVCsh R8, [sp, #-18]
l4974: ldrh R5, [sp, #-68]
l4975: mov R2, #50
l4976: ldrGEh R2, [sp, -R2]
l4977: ldrNEsh R4, [sp, #-60]
l4978: mov R5, #78
l4979: ldrGEsh R8, [sp, -R5]
l4980: ldrsh R0, [sp, #-72]
l4981: mov R2, #60
l4982: ldrsb R5, [sp, -R2]
l4983: ldrLEh R4, [sp, #-16]
l4984: mov R10, #38
l4985: ldrCSsh R1, [sp, -R10]
l4986: ldrCSsb R6, [sp, #-38]
l4987: ldrPLsb R7, [sp, #-66]
l4988: mov R12, #36
l4989: strMIh R3, [sp, -R12]
l4990: mov R9, #48
l4991: ldrsb R7, [sp, -R9]
l4992: mov R1, #39
l4993: ldrsb R10, [sp, -R1]
l4994: mov R3, #56
l4995: ldrsh R12, [sp, -R3]
l4996: mov R4, #38
l4997: strh R11, [sp, -R4]
l4998: mov R6, #28
l4999: ldrsh R11, [sp, -R6]
l5000: ldrh R0, [sp, #-42]
end: b end

