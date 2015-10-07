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
val1: .word 3785521818
next1:ldr R2, val2
b next2
val2: .word 2911750923
next2:ldr R3, val3
b next3
val3: .word 3987954211
next3:ldr R4, val4
b next4
val4: .word 511164597
next4:ldr R5, val5
b next5
val5: .word 2908641028
next5:ldr R6, val6
b next6
val6: .word 49590404
next6:ldr R7, val7
b next7
val7: .word 2132488671
next7:ldr R8, val8
b next8
val8: .word 2422727247
next8:ldr R9, val9
b next9
val9: .word 3544466665
next9:ldr R10, val10
b next10
val10: .word 483873055
next10:ldr R11, val11
b next11
val11: .word 3947438711
next11:ldr R12, val12
b next12
val12: .word 3242440597
next12:ldr R14, val14
b next14
val14: .word 3781776755

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 757426915
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 815192372
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 256147913
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 359952762
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 116719484
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 1654117983
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 3047145519
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 2684620733
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 820606466
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 2643532015
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 1475420123
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 2634512811
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 4126933354
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 1473212620
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 3100461035
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 1678143179
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 2372886181
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 1479966536
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 3379721697
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 1664389969
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 1039049027
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: ldrGTh R14, [sp, #-16]
l2: strMIh R2, [sp, #-42]
l3: mov R14, #16
l4: ldrGEh R5, [sp, -R14]
l5: mov R0, #42
l6: ldrsh R7, [sp, -R0]
l7: ldrHIh R0, [sp, #-72]
l8: ldrsh R2, [sp, #-50]
l9: mov R11, #62
l10: strNEh R0, [sp, -R11]
l11: strh R9, [sp, #-14]
l12: strVCh R6, [sp, #-40]
l13: mov R2, #70
l14: strh R10, [sp, -R2]
l15: ldrLTh R3, [sp, #-64]
l16: mov R5, #48
l17: strLSh R10, [sp, -R5]
l18: mov R10, #34
l19: ldrsh R8, [sp, -R10]
l20: ldrh R2, [sp, #-58]
l21: mov R6, #54
l22: ldrsh R0, [sp, -R6]
l23: mov R9, #60
l24: strGEh R12, [sp, -R9]
l25: ldrVCsh R8, [sp, #-52]
l26: ldrGEsh R12, [sp, #-48]
l27: mov R9, #46
l28: strh R3, [sp, -R9]
l29: ldrGEsh R14, [sp, #-36]
l30: ldrsh R0, [sp, #-42]
l31: ldrsh R9, [sp, #-46]
l32: ldrh R12, [sp, #-50]
l33: strVSh R9, [sp, #-20]
l34: mov R11, #42
l35: ldrNEsh R8, [sp, -R11]
l36: ldrCSsh R6, [sp, #-80]
l37: mov R4, #62
l38: ldrVCh R0, [sp, -R4]
l39: ldrsh R12, [sp, #-66]
l40: ldrEQh R8, [sp, #-46]
l41: ldrNEsh R3, [sp, #-66]
l42: strNEh R7, [sp, #-30]
l43: mov R0, #30
l44: ldrCCh R8, [sp, -R0]
l45: strh R1, [sp, #-30]
l46: mov R6, #56
l47: strh R8, [sp, -R6]
l48: mov R10, #52
l49: ldrsh R12, [sp, -R10]
l50: mov R8, #64
l51: ldrh R7, [sp, -R8]
l52: mov R7, #30
l53: ldrLSsh R12, [sp, -R7]
l54: mov R2, #16
l55: ldrsh R10, [sp, -R2]
l56: ldrh R0, [sp, #-56]
l57: mov R4, #72
l58: strMIh R3, [sp, -R4]
l59: strNEh R3, [sp, #-58]
l60: ldrLSh R10, [sp, #-6]
l61: mov R12, #8
l62: strNEh R10, [sp, -R12]
l63: strh R0, [sp, #-12]
l64: mov R4, #10
l65: strh R5, [sp, -R4]
l66: ldrEQsh R4, [sp, #-64]
l67: ldrh R8, [sp, #-28]
l68: ldrsh R7, [sp, #-60]
l69: mov R2, #38
l70: ldrsh R6, [sp, -R2]
l71: mov R1, #66
l72: ldrh R14, [sp, -R1]
l73: strVCh R6, [sp, #-8]
l74: strh R12, [sp, #-58]
l75: mov R8, #48
l76: strLEh R3, [sp, -R8]
l77: ldrLEh R12, [sp, #-10]
l78: mov R2, #26
l79: ldrCSsh R5, [sp, -R2]
l80: mov R7, #62
l81: strh R7, [sp, -R7]
l82: mov R3, #48
l83: ldrVCsh R14, [sp, -R3]
l84: mov R12, #44
l85: ldrHIsh R12, [sp, -R12]
l86: ldrGTsh R0, [sp, #-74]
l87: ldrh R8, [sp, #-46]
l88: strVCh R14, [sp, #-58]
l89: strVCh R2, [sp, #-28]
l90: ldrLEsh R1, [sp, #-60]
l91: strMIh R10, [sp, #-14]
l92: mov R5, #32
l93: strh R10, [sp, -R5]
l94: strh R5, [sp, #-60]
l95: mov R1, #12
l96: ldrNEh R3, [sp, -R1]
l97: strh R7, [sp, #-68]
l98: mov R14, #52
l99: strHIh R12, [sp, -R14]
l100: ldrCSh R1, [sp, #-80]
l101: ldrLTh R3, [sp, #-34]
l102: mov R7, #68
l103: strh R9, [sp, -R7]
l104: ldrh R1, [sp, #-34]
l105: ldrsh R4, [sp, #-58]
l106: mov R14, #76
l107: strh R9, [sp, -R14]
l108: ldrsh R5, [sp, #-76]
l109: mov R7, #40
l110: ldrNEsh R0, [sp, -R7]
l111: mov R1, #56
l112: ldrsh R11, [sp, -R1]
l113: mov R2, #26
l114: strNEh R4, [sp, -R2]
l115: mov R1, #46
l116: ldrsh R8, [sp, -R1]
l117: ldrh R11, [sp, #-16]
l118: mov R6, #52
l119: ldrPLsh R7, [sp, -R6]
l120: mov R12, #78
l121: ldrGTsh R5, [sp, -R12]
l122: strEQh R2, [sp, #-38]
l123: ldrLSsh R6, [sp, #-68]
l124: mov R4, #48
l125: ldrGTsh R9, [sp, -R4]
l126: mov R0, #18
l127: ldrh R4, [sp, -R0]
l128: ldrCCh R6, [sp, #-30]
l129: ldrsh R14, [sp, #-54]
l130: mov R2, #66
l131: ldrsh R6, [sp, -R2]
l132: ldrsh R0, [sp, #-52]
l133: ldrNEh R2, [sp, #-44]
l134: mov R9, #18
l135: strLSh R0, [sp, -R9]
l136: mov R6, #14
l137: ldrh R14, [sp, -R6]
l138: ldrGTsh R7, [sp, #-50]
l139: ldrsh R11, [sp, #-16]
l140: mov R8, #70
l141: strh R0, [sp, -R8]
l142: ldrVCh R5, [sp, #-8]
l143: ldrh R9, [sp, #-26]
l144: ldrh R10, [sp, #-16]
l145: mov R6, #26
l146: strh R11, [sp, -R6]
l147: strh R4, [sp, #-72]
l148: ldrCCsh R14, [sp, #-50]
l149: ldrsh R2, [sp, #-80]
l150: mov R10, #14
l151: ldrh R12, [sp, -R10]
l152: ldrsh R2, [sp, #-6]
l153: strh R2, [sp, #-40]
l154: mov R5, #58
l155: ldrh R11, [sp, -R5]
l156: strh R6, [sp, #-28]
l157: mov R5, #68
l158: strLEh R5, [sp, -R5]
l159: ldrGEh R2, [sp, #-42]
l160: strLSh R4, [sp, #-54]
l161: ldrsh R7, [sp, #-8]
l162: mov R12, #62
l163: ldrNEh R12, [sp, -R12]
l164: strPLh R14, [sp, #-60]
l165: mov R11, #80
l166: strh R3, [sp, -R11]
l167: ldrh R14, [sp, #-54]
l168: mov R14, #46
l169: strVCh R4, [sp, -R14]
l170: ldrNEsh R6, [sp, #-40]
l171: mov R1, #52
l172: ldrh R1, [sp, -R1]
l173: mov R9, #30
l174: strLSh R0, [sp, -R9]
l175: ldrPLh R0, [sp, #-6]
l176: ldrGTh R7, [sp, #-46]
l177: mov R9, #72
l178: ldrsh R12, [sp, -R9]
l179: mov R14, #10
l180: ldrh R12, [sp, -R14]
l181: ldrVSh R12, [sp, #-28]
l182: ldrh R0, [sp, #-72]
l183: mov R7, #12
l184: ldrHIh R8, [sp, -R7]
l185: ldrLSh R9, [sp, #-16]
l186: strh R3, [sp, #-20]
l187: ldrCSsh R6, [sp, #-40]
l188: ldrGTsh R10, [sp, #-12]
l189: ldrLEh R12, [sp, #-68]
l190: mov R10, #40
l191: ldrVCsh R12, [sp, -R10]
l192: ldrCSh R14, [sp, #-80]
l193: mov R14, #28
l194: ldrLEsh R9, [sp, -R14]
l195: ldrh R0, [sp, #-42]
l196: ldrh R14, [sp, #-20]
l197: mov R5, #38
l198: ldrh R11, [sp, -R5]
l199: mov R0, #74
l200: ldrh R9, [sp, -R0]
l201: ldrVSh R14, [sp, #-52]
l202: strLEh R11, [sp, #-70]
l203: strh R11, [sp, #-70]
l204: ldrh R4, [sp, #-74]
l205: strLSh R10, [sp, #-22]
l206: strh R8, [sp, #-62]
l207: strh R3, [sp, #-40]
l208: mov R12, #6
l209: ldrLEh R11, [sp, -R12]
l210: ldrGEsh R0, [sp, #-70]
l211: mov R3, #28
l212: ldrGEh R8, [sp, -R3]
l213: strh R12, [sp, #-48]
l214: ldrsh R11, [sp, #-56]
l215: mov R12, #70
l216: strVCh R12, [sp, -R12]
l217: mov R6, #38
l218: ldrGTh R7, [sp, -R6]
l219: mov R11, #74
l220: ldrsh R3, [sp, -R11]
l221: strVSh R1, [sp, #-16]
l222: ldrsh R3, [sp, #-60]
l223: ldrsh R12, [sp, #-10]
l224: ldrsh R5, [sp, #-64]
l225: ldrCSh R10, [sp, #-18]
l226: mov R3, #44
l227: ldrsh R12, [sp, -R3]
l228: strh R1, [sp, #-70]
l229: strh R9, [sp, #-50]
l230: mov R7, #44
l231: ldrh R6, [sp, -R7]
l232: strVSh R14, [sp, #-34]
l233: ldrEQh R14, [sp, #-76]
l234: mov R5, #34
l235: strMIh R8, [sp, -R5]
l236: ldrGEsh R9, [sp, #-70]
l237: ldrMIsh R9, [sp, #-22]
l238: mov R3, #26
l239: ldrHIsh R12, [sp, -R3]
l240: mov R10, #72
l241: strLEh R4, [sp, -R10]
l242: mov R10, #18
l243: ldrNEh R3, [sp, -R10]
l244: mov R11, #30
l245: ldrHIsh R4, [sp, -R11]
l246: ldrHIh R12, [sp, #-36]
l247: mov R14, #46
l248: ldrMIsh R4, [sp, -R14]
l249: mov R10, #10
l250: ldrsh R12, [sp, -R10]
l251: ldrLEh R7, [sp, #-60]
l252: mov R11, #52
l253: ldrGTh R6, [sp, -R11]
l254: ldrh R6, [sp, #-78]
l255: mov R5, #70
l256: ldrLSsh R4, [sp, -R5]
l257: strh R10, [sp, #-56]
l258: mov R14, #72
l259: ldrh R1, [sp, -R14]
l260: ldrGEsh R7, [sp, #-42]
l261: mov R5, #38
l262: ldrGEh R9, [sp, -R5]
l263: ldrPLsh R2, [sp, #-6]
l264: mov R2, #46
l265: ldrEQh R14, [sp, -R2]
l266: ldrh R14, [sp, #-38]
l267: mov R7, #80
l268: ldrh R9, [sp, -R7]
l269: strVCh R14, [sp, #-40]
l270: ldrh R11, [sp, #-40]
l271: mov R12, #34
l272: ldrh R4, [sp, -R12]
l273: ldrsh R6, [sp, #-60]
l274: mov R8, #16
l275: ldrNEsh R12, [sp, -R8]
l276: mov R10, #68
l277: ldrsh R2, [sp, -R10]
l278: ldrh R11, [sp, #-32]
l279: mov R9, #72
l280: ldrLEsh R5, [sp, -R9]
l281: mov R7, #8
l282: ldrNEh R0, [sp, -R7]
l283: mov R6, #58
l284: ldrEQsh R0, [sp, -R6]
l285: ldrEQsh R11, [sp, #-50]
l286: mov R6, #20
l287: strh R10, [sp, -R6]
l288: mov R9, #66
l289: ldrh R1, [sp, -R9]
l290: ldrh R9, [sp, #-40]
l291: ldrVCsh R8, [sp, #-52]
l292: ldrPLh R3, [sp, #-44]
l293: ldrMIsh R5, [sp, #-20]
l294: strHIh R8, [sp, #-50]
l295: mov R10, #10
l296: ldrLEh R4, [sp, -R10]
l297: ldrMIsh R8, [sp, #-34]
l298: mov R2, #36
l299: strCSh R0, [sp, -R2]
l300: mov R7, #48
l301: strh R7, [sp, -R7]
l302: mov R6, #70
l303: ldrVSh R9, [sp, -R6]
l304: ldrPLsh R2, [sp, #-40]
l305: strh R11, [sp, #-6]
l306: mov R10, #10
l307: ldrEQh R6, [sp, -R10]
l308: mov R9, #14
l309: ldrsh R7, [sp, -R9]
l310: ldrCSsh R4, [sp, #-56]
l311: mov R1, #74
l312: ldrLEh R0, [sp, -R1]
l313: mov R5, #42
l314: strLTh R12, [sp, -R5]
l315: ldrLEsh R6, [sp, #-72]
l316: mov R5, #66
l317: strh R8, [sp, -R5]
l318: mov R12, #24
l319: strh R4, [sp, -R12]
l320: mov R12, #74
l321: ldrLSh R11, [sp, -R12]
l322: mov R12, #66
l323: strGEh R14, [sp, -R12]
l324: mov R7, #24
l325: ldrCSh R1, [sp, -R7]
l326: ldrsh R1, [sp, #-34]
l327: mov R7, #10
l328: ldrHIh R6, [sp, -R7]
l329: ldrsh R12, [sp, #-24]
l330: mov R0, #46
l331: ldrh R0, [sp, -R0]
l332: ldrsh R7, [sp, #-50]
l333: ldrsh R14, [sp, #-38]
l334: ldrCCh R12, [sp, #-8]
l335: mov R10, #40
l336: strh R11, [sp, -R10]
l337: ldrNEh R5, [sp, #-8]
l338: mov R6, #22
l339: ldrsh R14, [sp, -R6]
l340: mov R3, #8
l341: strHIh R4, [sp, -R3]
l342: mov R11, #62
l343: ldrMIh R9, [sp, -R11]
l344: ldrNEsh R7, [sp, #-36]
l345: mov R2, #24
l346: ldrHIsh R7, [sp, -R2]
l347: ldrCCsh R6, [sp, #-6]
l348: ldrsh R5, [sp, #-28]
l349: mov R7, #12
l350: strh R7, [sp, -R7]
l351: ldrLEh R9, [sp, #-32]
l352: strh R5, [sp, #-50]
l353: mov R5, #48
l354: strVCh R8, [sp, -R5]
l355: mov R5, #32
l356: ldrNEh R1, [sp, -R5]
l357: ldrMIh R7, [sp, #-78]
l358: ldrGEh R10, [sp, #-64]
l359: strLEh R10, [sp, #-44]
l360: ldrEQsh R11, [sp, #-12]
l361: mov R7, #62
l362: strVCh R4, [sp, -R7]
l363: strGEh R14, [sp, #-38]
l364: ldrh R0, [sp, #-12]
l365: mov R8, #54
l366: ldrh R10, [sp, -R8]
l367: strh R7, [sp, #-62]
l368: mov R12, #58
l369: ldrh R5, [sp, -R12]
l370: mov R7, #38
l371: ldrsh R5, [sp, -R7]
l372: mov R1, #14
l373: ldrHIh R8, [sp, -R1]
l374: strLEh R9, [sp, #-44]
l375: ldrh R14, [sp, #-62]
l376: mov R9, #80
l377: strh R6, [sp, -R9]
l378: ldrh R0, [sp, #-72]
l379: ldrh R1, [sp, #-18]
l380: mov R14, #70
l381: strPLh R1, [sp, -R14]
l382: mov R3, #38
l383: ldrGEsh R9, [sp, -R3]
l384: mov R8, #30
l385: ldrLEh R10, [sp, -R8]
l386: mov R10, #80
l387: ldrCSsh R2, [sp, -R10]
l388: mov R1, #28
l389: ldrVCh R3, [sp, -R1]
l390: mov R14, #12
l391: ldrPLsh R12, [sp, -R14]
l392: ldrGTsh R3, [sp, #-14]
l393: ldrLTh R10, [sp, #-64]
l394: ldrCSsh R10, [sp, #-44]
l395: strh R9, [sp, #-26]
l396: mov R14, #32
l397: ldrVCsh R3, [sp, -R14]
l398: mov R12, #34
l399: ldrh R6, [sp, -R12]
l400: mov R9, #78
l401: strNEh R12, [sp, -R9]
l402: mov R3, #42
l403: ldrNEh R2, [sp, -R3]
l404: mov R9, #30
l405: ldrCCsh R14, [sp, -R9]
l406: ldrPLh R2, [sp, #-10]
l407: ldrsh R4, [sp, #-76]
l408: ldrh R3, [sp, #-48]
l409: mov R12, #50
l410: strh R0, [sp, -R12]
l411: mov R2, #22
l412: strh R0, [sp, -R2]
l413: mov R4, #8
l414: ldrGTsh R5, [sp, -R4]
l415: ldrh R0, [sp, #-34]
l416: mov R11, #78
l417: ldrEQh R10, [sp, -R11]
l418: mov R4, #34
l419: ldrh R14, [sp, -R4]
l420: mov R6, #14
l421: strVSh R7, [sp, -R6]
l422: mov R5, #28
l423: ldrsh R10, [sp, -R5]
l424: strh R10, [sp, #-50]
l425: strh R10, [sp, #-16]
l426: mov R6, #18
l427: ldrGTsh R0, [sp, -R6]
l428: ldrGTh R5, [sp, #-68]
l429: ldrLSsh R3, [sp, #-28]
l430: mov R1, #12
l431: ldrsh R10, [sp, -R1]
l432: mov R1, #76
l433: strh R10, [sp, -R1]
l434: ldrCCh R9, [sp, #-66]
l435: ldrh R6, [sp, #-44]
l436: strCCh R11, [sp, #-58]
l437: mov R3, #54
l438: ldrh R10, [sp, -R3]
l439: mov R6, #30
l440: ldrNEh R8, [sp, -R6]
l441: strh R10, [sp, #-72]
l442: mov R5, #6
l443: strGEh R14, [sp, -R5]
l444: mov R9, #44
l445: ldrsh R12, [sp, -R9]
l446: ldrsh R4, [sp, #-56]
l447: mov R14, #42
l448: ldrsh R1, [sp, -R14]
l449: ldrh R5, [sp, #-66]
l450: ldrEQsh R5, [sp, #-74]
l451: strEQh R1, [sp, #-66]
l452: ldrsh R6, [sp, #-60]
l453: mov R14, #34
l454: ldrCCh R3, [sp, -R14]
l455: ldrEQh R10, [sp, #-76]
l456: ldrLSsh R6, [sp, #-12]
l457: strLSh R10, [sp, #-34]
l458: ldrLTh R6, [sp, #-16]
l459: ldrsh R6, [sp, #-50]
l460: ldrsh R1, [sp, #-18]
l461: mov R14, #68
l462: strLTh R0, [sp, -R14]
l463: mov R1, #54
l464: ldrMIsh R7, [sp, -R1]
l465: strMIh R3, [sp, #-14]
l466: ldrh R9, [sp, #-20]
l467: strh R1, [sp, #-28]
l468: ldrEQh R11, [sp, #-10]
l469: mov R4, #6
l470: strh R11, [sp, -R4]
l471: mov R5, #40
l472: strNEh R8, [sp, -R5]
l473: ldrPLsh R2, [sp, #-20]
l474: mov R5, #10
l475: ldrLEsh R6, [sp, -R5]
l476: mov R0, #34
l477: strh R8, [sp, -R0]
l478: mov R9, #34
l479: ldrLEh R8, [sp, -R9]
l480: ldrLEh R3, [sp, #-44]
l481: ldrGEh R0, [sp, #-70]
l482: mov R12, #40
l483: ldrNEsh R12, [sp, -R12]
l484: ldrLSsh R10, [sp, #-16]
l485: mov R2, #32
l486: ldrGTh R8, [sp, -R2]
l487: mov R1, #64
l488: ldrsh R14, [sp, -R1]
l489: mov R5, #60
l490: ldrLTsh R3, [sp, -R5]
l491: mov R6, #30
l492: strh R1, [sp, -R6]
l493: strVCh R12, [sp, #-52]
l494: ldrLTsh R2, [sp, #-36]
l495: ldrsh R2, [sp, #-70]
l496: mov R11, #60
l497: ldrh R9, [sp, -R11]
l498: mov R3, #72
l499: ldrGTsh R2, [sp, -R3]
l500: ldrVSh R11, [sp, #-62]
l501: mov R3, #64
l502: strh R9, [sp, -R3]
l503: mov R0, #34
l504: strh R8, [sp, -R0]
l505: strVCh R5, [sp, #-56]
l506: strNEh R5, [sp, #-8]
l507: ldrLSh R10, [sp, #-24]
l508: ldrh R1, [sp, #-42]
l509: mov R14, #50
l510: ldrNEsh R7, [sp, -R14]
l511: mov R7, #58
l512: ldrEQh R14, [sp, -R7]
l513: mov R1, #6
l514: ldrMIh R1, [sp, -R1]
l515: ldrCCh R3, [sp, #-80]
l516: strGTh R2, [sp, #-18]
l517: strPLh R7, [sp, #-46]
l518: ldrPLh R14, [sp, #-40]
l519: mov R0, #36
l520: strh R7, [sp, -R0]
l521: mov R7, #32
l522: ldrsh R4, [sp, -R7]
l523: ldrh R6, [sp, #-16]
l524: mov R3, #56
l525: strNEh R9, [sp, -R3]
l526: mov R7, #52
l527: ldrh R2, [sp, -R7]
l528: strMIh R9, [sp, #-24]
l529: mov R9, #46
l530: strh R2, [sp, -R9]
l531: ldrNEh R11, [sp, #-72]
l532: mov R14, #60
l533: ldrLEh R5, [sp, -R14]
l534: mov R8, #66
l535: ldrsh R14, [sp, -R8]
l536: mov R3, #78
l537: strPLh R10, [sp, -R3]
l538: mov R8, #14
l539: ldrsh R10, [sp, -R8]
l540: mov R7, #38
l541: ldrCCh R7, [sp, -R7]
l542: strLEh R0, [sp, #-34]
l543: strMIh R10, [sp, #-70]
l544: ldrHIsh R8, [sp, #-76]
l545: mov R8, #78
l546: ldrLTh R5, [sp, -R8]
l547: mov R1, #80
l548: ldrNEsh R12, [sp, -R1]
l549: ldrsh R8, [sp, #-74]
l550: ldrLTh R8, [sp, #-30]
l551: mov R8, #38
l552: strMIh R11, [sp, -R8]
l553: strh R7, [sp, #-32]
l554: ldrHIsh R6, [sp, #-36]
l555: ldrsh R8, [sp, #-60]
l556: mov R2, #12
l557: ldrGEh R6, [sp, -R2]
l558: mov R9, #16
l559: ldrsh R4, [sp, -R9]
l560: mov R8, #78
l561: ldrNEh R12, [sp, -R8]
l562: mov R5, #70
l563: ldrsh R0, [sp, -R5]
l564: mov R1, #58
l565: ldrsh R7, [sp, -R1]
l566: ldrh R0, [sp, #-12]
l567: mov R12, #28
l568: ldrMIsh R10, [sp, -R12]
l569: strLTh R7, [sp, #-34]
l570: ldrLSsh R7, [sp, #-80]
l571: strh R9, [sp, #-36]
l572: mov R5, #76
l573: strh R3, [sp, -R5]
l574: strHIh R10, [sp, #-30]
l575: strh R6, [sp, #-62]
l576: ldrh R1, [sp, #-12]
l577: mov R9, #12
l578: ldrGTsh R10, [sp, -R9]
l579: strLSh R11, [sp, #-52]
l580: strVSh R1, [sp, #-46]
l581: mov R2, #26
l582: strh R5, [sp, -R2]
l583: mov R0, #6
l584: ldrsh R14, [sp, -R0]
l585: mov R6, #16
l586: ldrsh R12, [sp, -R6]
l587: mov R10, #68
l588: ldrGTsh R6, [sp, -R10]
l589: ldrNEh R1, [sp, #-16]
l590: ldrh R0, [sp, #-44]
l591: mov R0, #58
l592: strHIh R4, [sp, -R0]
l593: ldrPLsh R6, [sp, #-44]
l594: strVSh R3, [sp, #-80]
l595: mov R2, #18
l596: strLSh R14, [sp, -R2]
l597: strVCh R6, [sp, #-64]
l598: ldrEQh R10, [sp, #-78]
l599: mov R9, #74
l600: strh R1, [sp, -R9]
l601: mov R11, #78
l602: ldrCSh R1, [sp, -R11]
l603: mov R10, #48
l604: strEQh R6, [sp, -R10]
l605: strh R1, [sp, #-26]
l606: mov R11, #60
l607: ldrCCh R3, [sp, -R11]
l608: mov R5, #56
l609: strPLh R9, [sp, -R5]
l610: mov R6, #62
l611: ldrh R5, [sp, -R6]
l612: strHIh R12, [sp, #-42]
l613: mov R12, #12
l614: ldrEQsh R2, [sp, -R12]
l615: strMIh R4, [sp, #-28]
l616: mov R11, #10
l617: strMIh R7, [sp, -R11]
l618: mov R10, #28
l619: ldrh R12, [sp, -R10]
l620: strLSh R8, [sp, #-50]
l621: ldrh R11, [sp, #-58]
l622: mov R8, #10
l623: strCSh R0, [sp, -R8]
l624: ldrLTh R10, [sp, #-36]
l625: mov R7, #66
l626: strCSh R1, [sp, -R7]
l627: ldrsh R3, [sp, #-62]
l628: strLEh R3, [sp, #-20]
l629: mov R7, #76
l630: ldrsh R14, [sp, -R7]
l631: strh R4, [sp, #-50]
l632: mov R1, #44
l633: ldrCSsh R9, [sp, -R1]
l634: ldrsh R2, [sp, #-76]
l635: ldrVCsh R2, [sp, #-24]
l636: mov R11, #72
l637: strLTh R8, [sp, -R11]
l638: ldrh R10, [sp, #-52]
l639: ldrLTsh R6, [sp, #-18]
l640: mov R3, #60
l641: strMIh R12, [sp, -R3]
l642: strNEh R5, [sp, #-52]
l643: mov R1, #72
l644: strVCh R11, [sp, -R1]
l645: ldrEQsh R2, [sp, #-6]
l646: mov R7, #26
l647: ldrh R7, [sp, -R7]
l648: mov R1, #80
l649: ldrh R4, [sp, -R1]
l650: strCSh R3, [sp, #-16]
l651: ldrCCh R3, [sp, #-6]
l652: mov R8, #24
l653: strHIh R3, [sp, -R8]
l654: ldrsh R0, [sp, #-72]
l655: ldrNEh R1, [sp, #-26]
l656: mov R10, #60
l657: ldrh R8, [sp, -R10]
l658: mov R10, #78
l659: strh R2, [sp, -R10]
l660: mov R8, #20
l661: ldrLSsh R7, [sp, -R8]
l662: mov R8, #64
l663: ldrLTh R14, [sp, -R8]
l664: mov R8, #46
l665: ldrVCsh R3, [sp, -R8]
l666: ldrh R14, [sp, #-18]
l667: ldrNEsh R4, [sp, #-38]
l668: mov R7, #52
l669: ldrLTh R11, [sp, -R7]
l670: mov R14, #52
l671: strLEh R0, [sp, -R14]
l672: ldrCCh R1, [sp, #-10]
l673: strh R7, [sp, #-26]
l674: ldrPLsh R5, [sp, #-46]
l675: mov R10, #74
l676: ldrEQh R2, [sp, -R10]
l677: mov R6, #42
l678: strh R12, [sp, -R6]
l679: ldrLSh R4, [sp, #-66]
l680: strLSh R5, [sp, #-54]
l681: ldrCCsh R10, [sp, #-68]
l682: ldrGTh R10, [sp, #-32]
l683: strh R12, [sp, #-80]
l684: mov R2, #40
l685: strEQh R1, [sp, -R2]
l686: mov R2, #26
l687: strh R7, [sp, -R2]
l688: mov R7, #22
l689: strh R5, [sp, -R7]
l690: strMIh R5, [sp, #-38]
l691: mov R2, #16
l692: strVCh R0, [sp, -R2]
l693: mov R12, #8
l694: strGTh R9, [sp, -R12]
l695: mov R12, #48
l696: strh R5, [sp, -R12]
l697: strVSh R9, [sp, #-64]
l698: ldrGEsh R8, [sp, #-32]
l699: strh R8, [sp, #-78]
l700: mov R8, #40
l701: strh R1, [sp, -R8]
l702: mov R11, #70
l703: strLSh R9, [sp, -R11]
l704: mov R2, #60
l705: ldrh R5, [sp, -R2]
l706: ldrCSsh R10, [sp, #-22]
l707: mov R11, #8
l708: ldrEQsh R6, [sp, -R11]
l709: strLTh R10, [sp, #-78]
l710: ldrMIsh R10, [sp, #-36]
l711: mov R5, #58
l712: ldrNEsh R1, [sp, -R5]
l713: mov R7, #48
l714: ldrVSh R6, [sp, -R7]
l715: strh R8, [sp, #-24]
l716: ldrHIsh R4, [sp, #-70]
l717: mov R0, #34
l718: ldrsh R2, [sp, -R0]
l719: ldrsh R5, [sp, #-26]
l720: mov R8, #62
l721: ldrh R14, [sp, -R8]
l722: mov R0, #12
l723: ldrLTh R0, [sp, -R0]
l724: mov R8, #66
l725: ldrCSh R3, [sp, -R8]
l726: mov R7, #76
l727: strGEh R3, [sp, -R7]
l728: ldrEQh R10, [sp, #-42]
l729: ldrGTh R7, [sp, #-26]
l730: ldrh R0, [sp, #-80]
l731: mov R7, #18
l732: ldrPLsh R2, [sp, -R7]
l733: mov R5, #12
l734: strh R11, [sp, -R5]
l735: strHIh R10, [sp, #-68]
l736: strh R8, [sp, #-30]
l737: mov R5, #40
l738: ldrCSsh R10, [sp, -R5]
l739: mov R5, #76
l740: strh R2, [sp, -R5]
l741: mov R2, #62
l742: ldrCCsh R12, [sp, -R2]
l743: mov R2, #46
l744: ldrNEsh R6, [sp, -R2]
l745: mov R7, #46
l746: strh R3, [sp, -R7]
l747: strh R4, [sp, #-62]
l748: ldrh R8, [sp, #-30]
l749: ldrh R0, [sp, #-72]
l750: mov R5, #24
l751: ldrHIh R11, [sp, -R5]
l752: mov R11, #28
l753: ldrVSsh R9, [sp, -R11]
l754: mov R4, #36
l755: ldrPLh R8, [sp, -R4]
l756: mov R7, #40
l757: strh R1, [sp, -R7]
l758: mov R10, #14
l759: strEQh R5, [sp, -R10]
l760: ldrMIsh R0, [sp, #-14]
l761: mov R10, #16
l762: strNEh R3, [sp, -R10]
l763: mov R5, #40
l764: strh R14, [sp, -R5]
l765: mov R11, #44
l766: ldrHIsh R10, [sp, -R11]
l767: mov R10, #60
l768: ldrLSh R2, [sp, -R10]
l769: mov R12, #74
l770: strMIh R6, [sp, -R12]
l771: ldrsh R12, [sp, #-26]
l772: strh R14, [sp, #-72]
l773: mov R3, #10
l774: ldrsh R1, [sp, -R3]
l775: ldrGEsh R8, [sp, #-42]
l776: strLTh R12, [sp, #-6]
l777: ldrGTh R1, [sp, #-32]
l778: mov R0, #26
l779: strh R0, [sp, -R0]
l780: mov R9, #12
l781: ldrCCsh R10, [sp, -R9]
l782: mov R5, #6
l783: ldrVSh R14, [sp, -R5]
l784: mov R14, #16
l785: ldrLEsh R12, [sp, -R14]
l786: mov R2, #34
l787: ldrHIsh R14, [sp, -R2]
l788: ldrh R9, [sp, #-32]
l789: ldrsh R8, [sp, #-66]
l790: ldrMIh R6, [sp, #-24]
l791: mov R3, #74
l792: ldrh R7, [sp, -R3]
l793: strMIh R12, [sp, #-14]
l794: mov R1, #28
l795: ldrPLh R9, [sp, -R1]
l796: mov R2, #76
l797: strLEh R11, [sp, -R2]
l798: ldrGTh R4, [sp, #-64]
l799: mov R7, #64
l800: ldrh R11, [sp, -R7]
l801: ldrLSh R10, [sp, #-22]
l802: mov R0, #28
l803: strLEh R14, [sp, -R0]
l804: mov R6, #28
l805: ldrsh R6, [sp, -R6]
l806: ldrLSh R0, [sp, #-62]
l807: mov R11, #12
l808: ldrLEsh R12, [sp, -R11]
l809: ldrVCsh R9, [sp, #-62]
l810: ldrMIh R5, [sp, #-70]
l811: ldrsh R12, [sp, #-72]
l812: ldrsh R10, [sp, #-74]
l813: strEQh R8, [sp, #-50]
l814: mov R7, #40
l815: ldrGEh R5, [sp, -R7]
l816: mov R14, #62
l817: strEQh R4, [sp, -R14]
l818: ldrsh R11, [sp, #-62]
l819: strh R1, [sp, #-38]
l820: mov R3, #56
l821: ldrGTsh R6, [sp, -R3]
l822: mov R8, #10
l823: ldrLTh R3, [sp, -R8]
l824: ldrh R8, [sp, #-38]
l825: ldrVSh R6, [sp, #-62]
l826: ldrLTsh R10, [sp, #-54]
l827: ldrEQsh R7, [sp, #-48]
l828: strh R9, [sp, #-14]
l829: strHIh R1, [sp, #-64]
l830: mov R8, #20
l831: strh R9, [sp, -R8]
l832: mov R14, #14
l833: ldrVSsh R8, [sp, -R14]
l834: strh R7, [sp, #-74]
l835: strLEh R10, [sp, #-46]
l836: ldrLSh R11, [sp, #-14]
l837: ldrh R11, [sp, #-8]
l838: mov R3, #14
l839: ldrCCh R0, [sp, -R3]
l840: ldrh R4, [sp, #-62]
l841: ldrNEh R0, [sp, #-76]
l842: mov R14, #6
l843: ldrsh R12, [sp, -R14]
l844: mov R6, #28
l845: ldrNEh R6, [sp, -R6]
l846: mov R6, #26
l847: ldrLSsh R6, [sp, -R6]
l848: ldrsh R2, [sp, #-34]
l849: ldrGEsh R2, [sp, #-26]
l850: ldrh R8, [sp, #-48]
l851: mov R0, #28
l852: ldrLTsh R0, [sp, -R0]
l853: ldrGEsh R2, [sp, #-22]
l854: ldrMIh R1, [sp, #-30]
l855: ldrGTh R0, [sp, #-34]
l856: mov R4, #34
l857: ldrh R2, [sp, -R4]
l858: strGEh R3, [sp, #-8]
l859: mov R8, #40
l860: ldrLSsh R0, [sp, -R8]
l861: ldrLTsh R5, [sp, #-48]
l862: ldrh R5, [sp, #-44]
l863: strGTh R3, [sp, #-14]
l864: mov R7, #80
l865: strh R8, [sp, -R7]
l866: ldrVCsh R2, [sp, #-24]
l867: strh R3, [sp, #-12]
l868: mov R4, #56
l869: ldrVSh R11, [sp, -R4]
l870: mov R11, #32
l871: strh R6, [sp, -R11]
l872: ldrMIsh R14, [sp, #-12]
l873: ldrh R11, [sp, #-66]
l874: ldrCSsh R14, [sp, #-44]
l875: mov R12, #66
l876: strh R6, [sp, -R12]
l877: ldrLTh R4, [sp, #-68]
l878: mov R3, #46
l879: ldrh R7, [sp, -R3]
l880: mov R1, #72
l881: ldrLSsh R8, [sp, -R1]
l882: mov R9, #68
l883: strh R10, [sp, -R9]
l884: mov R14, #56
l885: ldrsh R12, [sp, -R14]
l886: mov R4, #78
l887: ldrh R5, [sp, -R4]
l888: strEQh R2, [sp, #-18]
l889: ldrNEsh R11, [sp, #-8]
l890: mov R3, #72
l891: strNEh R8, [sp, -R3]
l892: ldrCCh R7, [sp, #-70]
l893: mov R4, #32
l894: ldrMIh R14, [sp, -R4]
l895: strCCh R6, [sp, #-40]
l896: mov R1, #64
l897: ldrh R6, [sp, -R1]
l898: ldrMIh R5, [sp, #-28]
l899: ldrh R5, [sp, #-40]
l900: strh R6, [sp, #-22]
l901: ldrGEh R9, [sp, #-64]
l902: ldrMIh R8, [sp, #-20]
l903: mov R5, #36
l904: ldrNEh R7, [sp, -R5]
l905: ldrMIsh R2, [sp, #-54]
l906: ldrsh R4, [sp, #-80]
l907: mov R7, #54
l908: strh R6, [sp, -R7]
l909: ldrEQh R3, [sp, #-14]
l910: strh R1, [sp, #-20]
l911: ldrsh R11, [sp, #-48]
l912: ldrLSh R12, [sp, #-18]
l913: ldrGTh R12, [sp, #-58]
l914: ldrPLsh R4, [sp, #-80]
l915: mov R0, #66
l916: strMIh R11, [sp, -R0]
l917: mov R11, #78
l918: ldrGTsh R6, [sp, -R11]
l919: mov R9, #34
l920: ldrh R10, [sp, -R9]
l921: mov R9, #70
l922: strNEh R14, [sp, -R9]
l923: strNEh R9, [sp, #-52]
l924: strh R12, [sp, #-20]
l925: mov R1, #40
l926: ldrsh R3, [sp, -R1]
l927: ldrVCh R3, [sp, #-20]
l928: ldrsh R4, [sp, #-58]
l929: ldrsh R3, [sp, #-78]
l930: mov R11, #14
l931: ldrsh R1, [sp, -R11]
l932: ldrVCh R0, [sp, #-64]
l933: mov R4, #66
l934: ldrLSsh R8, [sp, -R4]
l935: strLSh R0, [sp, #-22]
l936: mov R0, #56
l937: ldrLSsh R2, [sp, -R0]
l938: ldrVSsh R5, [sp, #-60]
l939: mov R6, #22
l940: ldrh R9, [sp, -R6]
l941: mov R4, #58
l942: strPLh R4, [sp, -R4]
l943: strh R6, [sp, #-8]
l944: ldrMIsh R0, [sp, #-46]
l945: mov R11, #74
l946: ldrsh R8, [sp, -R11]
l947: ldrLTh R3, [sp, #-12]
l948: ldrLTh R4, [sp, #-70]
l949: mov R3, #32
l950: ldrEQsh R10, [sp, -R3]
l951: ldrCCh R11, [sp, #-24]
l952: mov R6, #38
l953: ldrh R5, [sp, -R6]
l954: ldrCCsh R2, [sp, #-36]
l955: mov R4, #34
l956: ldrMIsh R0, [sp, -R4]
l957: mov R10, #70
l958: ldrCSh R14, [sp, -R10]
l959: mov R2, #80
l960: ldrCCsh R5, [sp, -R2]
l961: mov R5, #62
l962: strh R6, [sp, -R5]
l963: ldrsh R7, [sp, #-72]
l964: mov R1, #16
l965: strh R8, [sp, -R1]
l966: mov R14, #14
l967: ldrPLsh R8, [sp, -R14]
l968: mov R6, #24
l969: strVCh R7, [sp, -R6]
l970: ldrLSh R4, [sp, #-46]
l971: mov R12, #50
l972: ldrVSsh R3, [sp, -R12]
l973: ldrsh R3, [sp, #-28]
l974: mov R3, #64
l975: ldrHIh R12, [sp, -R3]
l976: ldrVCh R4, [sp, #-60]
l977: mov R1, #14
l978: ldrLEsh R7, [sp, -R1]
l979: ldrHIh R4, [sp, #-48]
l980: strGTh R4, [sp, #-22]
l981: mov R3, #32
l982: ldrh R7, [sp, -R3]
l983: strh R7, [sp, #-22]
l984: mov R1, #26
l985: strh R5, [sp, -R1]
l986: mov R4, #64
l987: ldrh R3, [sp, -R4]
l988: strh R0, [sp, #-8]
l989: ldrh R14, [sp, #-52]
l990: strh R14, [sp, #-30]
l991: mov R5, #64
l992: strh R3, [sp, -R5]
l993: mov R1, #30
l994: ldrVSh R4, [sp, -R1]
l995: strCSh R11, [sp, #-42]
l996: ldrh R5, [sp, #-76]
l997: ldrEQsh R4, [sp, #-50]
l998: mov R11, #18
l999: strGEh R6, [sp, -R11]
l1000: mov R3, #36
l1001: ldrsh R14, [sp, -R3]
end: b end

