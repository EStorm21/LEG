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
val1: .word 1968111068
next1:ldr R2, val2
b next2
val2: .word 1176000533
next2:ldr R3, val3
b next3
val3: .word 3387529839
next3:ldr R4, val4
b next4
val4: .word 2099858684
next4:ldr R5, val5
b next5
val5: .word 3877661930
next5:ldr R6, val6
b next6
val6: .word 2030192966
next6:ldr R7, val7
b next7
val7: .word 778126690
next7:ldr R8, val8
b next8
val8: .word 378465736
next8:ldr R9, val9
b next9
val9: .word 875406952
next9:ldr R10, val10
b next10
val10: .word 2987528466
next10:ldr R11, val11
b next11
val11: .word 3981169412
next11:ldr R12, val12
b next12
val12: .word 845103030
next12:ldr R14, val14
b next14
val14: .word 738457497

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 2744473130
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 4074143118
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3782426345
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 3435667344
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 2696796086
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 1086093211
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 2544483226
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 2961095351
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 1210071727
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 156831568
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 4087603004
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 1627258147
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 3533516069
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 3951057256
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 677640265
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 2869836702
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 2962834020
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 3977819123
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 349581407
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 493836953
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 1179682774
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: ldrB R6, [sp, #-60]
l2: mov R6, #14
l3: ldrB R1, [sp, -R6]
l4: ldrB R11, [sp, #-9]
l5: mov R5, #3
l6: ldrB R3, [sp, -R5]
l7: ldrVSB R1, [sp, #-16]
l8: ldrB R4, [sp, #-16]
l9: mov R0, #58
l10: ldrLEB R10, [sp, -R0]
l11: ldrB R4, [sp, #-66]
l12: ldrB R10, [sp, #-19]
l13: mov R0, #43
l14: ldrPLB R12, [sp, -R0]
l15: mov R2, #23
l16: ldrVCB R5, [sp, -R2]
l17: mov R14, #78
l18: ldrB R10, [sp, -R14]
l19: mov R4, #76
l20: ldrB R5, [sp, -R4]
l21: ldrPLB R12, [sp, #-70]
l22: mov R14, #70
l23: ldrLTB R8, [sp, -R14]
l24: mov R0, #53
l25: ldrCSB R8, [sp, -R0]
l26: mov R5, #65
l27: ldrCSB R10, [sp, -R5]
l28: ldrVSB R5, [sp, #-33]
l29: ldrLEB R3, [sp, #-74]
l30: ldrB R0, [sp, #-50]
l31: mov R5, #55
l32: ldrLSB R8, [sp, -R5]
l33: ldrVSB R1, [sp, #-34]
l34: mov R2, #69
l35: ldrLTB R4, [sp, -R2]
l36: ldrLTB R0, [sp, #-3]
l37: mov R7, #69
l38: ldrLTB R11, [sp, -R7]
l39: ldrB R0, [sp, #-13]
l40: mov R12, #76
l41: ldrB R0, [sp, -R12]
l42: mov R11, #61
l43: ldrB R4, [sp, -R11]
l44: mov R11, #2
l45: ldrB R3, [sp, -R11]
l46: ldrGEB R4, [sp, #-30]
l47: ldrB R11, [sp, #-55]
l48: mov R4, #70
l49: ldrPLB R10, [sp, -R4]
l50: mov R11, #56
l51: ldrNEB R3, [sp, -R11]
l52: mov R2, #28
l53: ldrNEB R12, [sp, -R2]
l54: mov R10, #76
l55: ldrVSB R10, [sp, -R10]
l56: ldrB R9, [sp, #-68]
l57: ldrCCB R8, [sp, #-27]
l58: ldrB R14, [sp, #-42]
l59: mov R7, #79
l60: ldrCCB R3, [sp, -R7]
l61: mov R10, #21
l62: ldrB R11, [sp, -R10]
l63: mov R0, #16
l64: ldrPLB R0, [sp, -R0]
l65: ldrB R9, [sp, #-24]
l66: mov R12, #63
l67: ldrB R7, [sp, -R12]
l68: mov R1, #13
l69: ldrB R11, [sp, -R1]
l70: ldrCSB R9, [sp, #-39]
l71: ldrEQB R5, [sp, #-63]
l72: mov R8, #52
l73: ldrGEB R12, [sp, -R8]
l74: ldrLEB R10, [sp, #-49]
l75: mov R10, #22
l76: ldrVSB R9, [sp, -R10]
l77: mov R6, #1
l78: ldrB R5, [sp, -R6]
l79: ldrLTB R8, [sp, #-46]
l80: ldrHIB R12, [sp, #-26]
l81: mov R4, #8
l82: ldrVCB R9, [sp, -R4]
l83: ldrEQB R4, [sp, #-69]
l84: ldrCCB R6, [sp, #-77]
l85: ldrVSB R2, [sp, #-34]
l86: ldrB R2, [sp, #-19]
l87: ldrHIB R6, [sp, #-9]
l88: mov R4, #62
l89: ldrB R4, [sp, -R4]
l90: mov R3, #77
l91: ldrLEB R1, [sp, -R3]
l92: mov R10, #40
l93: ldrVSB R3, [sp, -R10]
l94: ldrB R6, [sp, #-18]
l95: mov R11, #66
l96: ldrCCB R5, [sp, -R11]
l97: ldrB R12, [sp, #-57]
l98: ldrB R0, [sp, #-33]
l99: ldrB R5, [sp, #-4]
l100: mov R10, #77
l101: ldrB R1, [sp, -R10]
l102: ldrNEB R5, [sp, #-5]
l103: mov R5, #54
l104: ldrLTB R8, [sp, -R5]
l105: ldrB R2, [sp, #-68]
l106: ldrB R2, [sp, #-36]
l107: ldrB R0, [sp, #-56]
l108: ldrB R12, [sp, #-52]
l109: ldrB R12, [sp, #-46]
l110: ldrMIB R11, [sp, #-39]
l111: mov R9, #70
l112: ldrPLB R0, [sp, -R9]
l113: mov R11, #10
l114: ldrGEB R8, [sp, -R11]
l115: mov R9, #54
l116: ldrLSB R4, [sp, -R9]
l117: mov R14, #15
l118: ldrMIB R4, [sp, -R14]
l119: ldrB R5, [sp, #-58]
l120: mov R12, #57
l121: ldrNEB R2, [sp, -R12]
l122: ldrB R7, [sp, #-47]
l123: ldrB R5, [sp, #-57]
l124: mov R1, #21
l125: ldrB R7, [sp, -R1]
l126: mov R11, #22
l127: ldrHIB R1, [sp, -R11]
l128: mov R6, #71
l129: ldrB R3, [sp, -R6]
l130: mov R10, #19
l131: ldrB R12, [sp, -R10]
l132: mov R0, #52
l133: ldrB R3, [sp, -R0]
l134: mov R14, #34
l135: ldrB R8, [sp, -R14]
l136: ldrEQB R7, [sp, #-45]
l137: ldrB R8, [sp, #-19]
l138: ldrLSB R14, [sp, #-11]
l139: ldrGTB R6, [sp, #-2]
l140: mov R7, #2
l141: ldrB R8, [sp, -R7]
l142: ldrB R7, [sp, #-8]
l143: mov R9, #26
l144: ldrVCB R10, [sp, -R9]
l145: ldrVSB R2, [sp, #-41]
l146: ldrGTB R6, [sp, #-33]
l147: mov R12, #28
l148: ldrB R1, [sp, -R12]
l149: mov R2, #42
l150: ldrB R1, [sp, -R2]
l151: mov R2, #77
l152: ldrB R6, [sp, -R2]
l153: ldrHIB R8, [sp, #-41]
l154: mov R10, #19
l155: ldrNEB R2, [sp, -R10]
l156: mov R12, #55
l157: ldrHIB R12, [sp, -R12]
l158: mov R0, #60
l159: ldrB R4, [sp, -R0]
l160: mov R7, #64
l161: ldrLEB R12, [sp, -R7]
l162: ldrLTB R10, [sp, #-3]
l163: mov R1, #48
l164: ldrLSB R1, [sp, -R1]
l165: ldrVSB R8, [sp, #-57]
l166: mov R4, #12
l167: ldrB R4, [sp, -R4]
l168: mov R1, #19
l169: ldrMIB R5, [sp, -R1]
l170: mov R14, #14
l171: ldrLEB R7, [sp, -R14]
l172: ldrGTB R2, [sp, #-57]
l173: mov R3, #76
l174: ldrB R3, [sp, -R3]
l175: mov R5, #66
l176: ldrPLB R10, [sp, -R5]
l177: mov R6, #1
l178: ldrB R1, [sp, -R6]
l179: ldrHIB R11, [sp, #-47]
l180: mov R10, #12
l181: ldrMIB R12, [sp, -R10]
l182: mov R10, #9
l183: ldrB R0, [sp, -R10]
l184: mov R3, #69
l185: ldrB R11, [sp, -R3]
l186: mov R2, #38
l187: ldrB R8, [sp, -R2]
l188: ldrB R3, [sp, #-44]
l189: ldrB R8, [sp, #-65]
l190: mov R14, #42
l191: ldrVSB R8, [sp, -R14]
l192: ldrLSB R8, [sp, #-2]
l193: ldrB R7, [sp, #-3]
l194: ldrB R5, [sp, #-41]
l195: ldrB R3, [sp, #-47]
l196: mov R2, #11
l197: ldrVSB R4, [sp, -R2]
l198: mov R11, #73
l199: ldrB R10, [sp, -R11]
l200: mov R4, #3
l201: ldrB R8, [sp, -R4]
l202: ldrEQB R6, [sp, #-51]
l203: mov R8, #41
l204: ldrEQB R10, [sp, -R8]
l205: ldrMIB R4, [sp, #-1]
l206: ldrVSB R1, [sp, #-62]
l207: mov R14, #69
l208: ldrMIB R4, [sp, -R14]
l209: ldrLEB R11, [sp, #-3]
l210: mov R8, #1
l211: ldrLTB R3, [sp, -R8]
l212: ldrB R5, [sp, #-10]
l213: mov R12, #38
l214: ldrLEB R8, [sp, -R12]
l215: ldrB R0, [sp, #-34]
l216: mov R11, #13
l217: ldrPLB R2, [sp, -R11]
l218: ldrPLB R0, [sp, #-65]
l219: mov R6, #18
l220: ldrLTB R4, [sp, -R6]
l221: ldrB R9, [sp, #-78]
l222: ldrB R7, [sp, #-11]
l223: mov R7, #4
l224: ldrMIB R14, [sp, -R7]
l225: mov R2, #7
l226: ldrB R14, [sp, -R2]
l227: ldrB R10, [sp, #-52]
l228: mov R1, #25
l229: ldrVCB R1, [sp, -R1]
l230: ldrMIB R2, [sp, #-34]
l231: mov R12, #10
l232: ldrLEB R5, [sp, -R12]
l233: ldrCCB R11, [sp, #-75]
l234: ldrLEB R6, [sp, #-78]
l235: ldrNEB R3, [sp, #-40]
l236: mov R6, #41
l237: ldrHIB R9, [sp, -R6]
l238: mov R9, #30
l239: ldrNEB R5, [sp, -R9]
l240: mov R7, #29
l241: ldrB R3, [sp, -R7]
l242: ldrGTB R7, [sp, #-5]
l243: mov R12, #39
l244: ldrB R5, [sp, -R12]
l245: mov R6, #11
l246: ldrLEB R12, [sp, -R6]
l247: mov R1, #74
l248: ldrB R3, [sp, -R1]
l249: mov R11, #19
l250: ldrB R10, [sp, -R11]
l251: ldrLSB R12, [sp, #-40]
l252: ldrMIB R3, [sp, #-57]
l253: mov R4, #1
l254: ldrHIB R10, [sp, -R4]
l255: ldrLEB R1, [sp, #-60]
l256: ldrB R7, [sp, #-3]
l257: ldrB R11, [sp, #-58]
l258: mov R11, #68
l259: ldrB R9, [sp, -R11]
l260: mov R14, #33
l261: ldrB R9, [sp, -R14]
l262: mov R14, #77
l263: ldrLSB R5, [sp, -R14]
l264: ldrB R4, [sp, #-37]
l265: mov R10, #78
l266: ldrB R8, [sp, -R10]
l267: mov R4, #33
l268: ldrB R5, [sp, -R4]
l269: ldrCCB R8, [sp, #-24]
l270: ldrGTB R4, [sp, #-66]
l271: mov R4, #10
l272: ldrGTB R8, [sp, -R4]
l273: ldrLTB R7, [sp, #-2]
l274: mov R14, #60
l275: ldrB R12, [sp, -R14]
l276: mov R7, #59
l277: ldrCSB R10, [sp, -R7]
l278: ldrNEB R5, [sp, #-4]
l279: ldrNEB R8, [sp, #-59]
l280: ldrHIB R4, [sp, #-15]
l281: ldrLTB R8, [sp, #-51]
l282: mov R10, #56
l283: ldrB R8, [sp, -R10]
l284: mov R4, #78
l285: ldrNEB R11, [sp, -R4]
l286: ldrHIB R8, [sp, #-80]
l287: mov R5, #38
l288: ldrB R11, [sp, -R5]
l289: mov R12, #78
l290: ldrHIB R3, [sp, -R12]
l291: ldrB R14, [sp, #-74]
l292: mov R8, #60
l293: ldrB R3, [sp, -R8]
l294: mov R6, #21
l295: ldrLSB R10, [sp, -R6]
l296: ldrEQB R1, [sp, #-6]
l297: mov R6, #7
l298: ldrB R12, [sp, -R6]
l299: mov R12, #2
l300: ldrHIB R6, [sp, -R12]
l301: mov R10, #4
l302: ldrB R9, [sp, -R10]
l303: ldrLSB R3, [sp, #-23]
l304: ldrVCB R2, [sp, #-58]
l305: mov R3, #9
l306: ldrB R4, [sp, -R3]
l307: ldrB R0, [sp, #-63]
l308: mov R5, #21
l309: ldrHIB R2, [sp, -R5]
l310: mov R14, #41
l311: ldrVSB R1, [sp, -R14]
l312: mov R14, #17
l313: ldrGEB R14, [sp, -R14]
l314: mov R9, #76
l315: ldrLSB R12, [sp, -R9]
l316: ldrB R3, [sp, #-26]
l317: ldrB R2, [sp, #-74]
l318: ldrMIB R3, [sp, #-5]
l319: mov R11, #44
l320: ldrCCB R12, [sp, -R11]
l321: ldrVSB R4, [sp, #-59]
l322: mov R14, #14
l323: ldrCSB R9, [sp, -R14]
l324: ldrB R1, [sp, #-51]
l325: ldrB R14, [sp, #-59]
l326: ldrB R4, [sp, #-34]
l327: ldrLTB R14, [sp, #-6]
l328: ldrB R8, [sp, #-32]
l329: mov R3, #45
l330: ldrEQB R1, [sp, -R3]
l331: ldrB R0, [sp, #-8]
l332: mov R2, #37
l333: ldrCSB R4, [sp, -R2]
l334: ldrB R2, [sp, #-24]
l335: mov R3, #10
l336: ldrLSB R4, [sp, -R3]
l337: mov R14, #2
l338: ldrPLB R5, [sp, -R14]
l339: ldrVSB R7, [sp, #-74]
l340: mov R4, #73
l341: ldrHIB R5, [sp, -R4]
l342: mov R10, #59
l343: ldrB R0, [sp, -R10]
l344: mov R5, #14
l345: ldrLEB R9, [sp, -R5]
l346: mov R9, #29
l347: ldrB R14, [sp, -R9]
l348: mov R0, #16
l349: ldrB R14, [sp, -R0]
l350: mov R11, #27
l351: ldrB R7, [sp, -R11]
l352: ldrB R5, [sp, #-31]
l353: ldrNEB R5, [sp, #-49]
l354: mov R2, #68
l355: ldrHIB R3, [sp, -R2]
l356: mov R5, #27
l357: ldrB R5, [sp, -R5]
l358: mov R11, #77
l359: ldrLEB R8, [sp, -R11]
l360: mov R10, #27
l361: ldrMIB R2, [sp, -R10]
l362: ldrGEB R5, [sp, #-45]
l363: mov R10, #35
l364: ldrGEB R10, [sp, -R10]
l365: ldrMIB R12, [sp, #-27]
l366: mov R7, #35
l367: ldrB R2, [sp, -R7]
l368: mov R0, #4
l369: ldrCSB R4, [sp, -R0]
l370: mov R12, #15
l371: ldrB R6, [sp, -R12]
l372: ldrB R12, [sp, #-63]
l373: ldrB R4, [sp, #-77]
l374: mov R0, #53
l375: ldrLTB R2, [sp, -R0]
l376: ldrVSB R12, [sp, #-41]
l377: ldrCSB R2, [sp, #-18]
l378: ldrEQB R11, [sp, #-76]
l379: ldrB R12, [sp, #-42]
l380: ldrPLB R1, [sp, #-79]
l381: ldrB R14, [sp, #-59]
l382: mov R2, #73
l383: ldrNEB R11, [sp, -R2]
l384: ldrVCB R0, [sp, #-19]
l385: mov R4, #19
l386: ldrVSB R5, [sp, -R4]
l387: ldrMIB R6, [sp, #-72]
l388: mov R5, #52
l389: ldrMIB R4, [sp, -R5]
l390: mov R9, #25
l391: ldrB R9, [sp, -R9]
l392: mov R8, #8
l393: ldrB R5, [sp, -R8]
l394: ldrCSB R11, [sp, #-64]
l395: ldrB R6, [sp, #-68]
l396: mov R9, #47
l397: ldrB R12, [sp, -R9]
l398: ldrNEB R2, [sp, #-4]
l399: ldrCCB R10, [sp, #-72]
l400: mov R12, #19
l401: ldrGTB R5, [sp, -R12]
l402: ldrB R9, [sp, #-50]
l403: ldrB R3, [sp, #-56]
l404: mov R5, #74
l405: ldrVCB R6, [sp, -R5]
l406: ldrB R2, [sp, #-79]
l407: ldrCCB R6, [sp, #-52]
l408: mov R0, #48
l409: ldrB R11, [sp, -R0]
l410: mov R8, #25
l411: ldrB R10, [sp, -R8]
l412: mov R10, #27
l413: ldrB R9, [sp, -R10]
l414: mov R2, #18
l415: ldrB R11, [sp, -R2]
l416: ldrCSB R0, [sp, #-35]
l417: mov R9, #46
l418: ldrB R12, [sp, -R9]
l419: mov R7, #35
l420: ldrHIB R3, [sp, -R7]
l421: ldrVCB R3, [sp, #-31]
l422: mov R14, #57
l423: ldrB R7, [sp, -R14]
l424: mov R3, #44
l425: ldrB R12, [sp, -R3]
l426: mov R10, #45
l427: ldrLEB R6, [sp, -R10]
l428: ldrB R9, [sp, #-49]
l429: mov R3, #4
l430: ldrB R0, [sp, -R3]
l431: ldrB R14, [sp, #-19]
l432: mov R9, #41
l433: ldrHIB R10, [sp, -R9]
l434: mov R1, #76
l435: ldrVCB R8, [sp, -R1]
l436: ldrHIB R0, [sp, #-70]
l437: mov R6, #43
l438: ldrB R5, [sp, -R6]
l439: mov R11, #42
l440: ldrLSB R3, [sp, -R11]
l441: mov R0, #28
l442: ldrB R11, [sp, -R0]
l443: ldrVSB R0, [sp, #-46]
l444: mov R0, #76
l445: ldrB R10, [sp, -R0]
l446: ldrVCB R14, [sp, #-39]
l447: mov R7, #17
l448: ldrB R6, [sp, -R7]
l449: ldrB R14, [sp, #-35]
l450: mov R7, #4
l451: ldrB R1, [sp, -R7]
l452: ldrB R4, [sp, #-20]
l453: ldrGTB R4, [sp, #-43]
l454: mov R12, #78
l455: ldrLTB R3, [sp, -R12]
l456: ldrB R9, [sp, #-35]
l457: mov R6, #30
l458: ldrCSB R9, [sp, -R6]
l459: ldrB R7, [sp, #-12]
l460: mov R3, #30
l461: ldrVSB R9, [sp, -R3]
l462: ldrVCB R4, [sp, #-8]
l463: ldrPLB R5, [sp, #-2]
l464: ldrB R4, [sp, #-41]
l465: mov R11, #29
l466: ldrCSB R4, [sp, -R11]
l467: ldrPLB R4, [sp, #-27]
l468: mov R11, #16
l469: ldrB R12, [sp, -R11]
l470: mov R9, #22
l471: ldrB R12, [sp, -R9]
l472: mov R10, #53
l473: ldrB R4, [sp, -R10]
l474: ldrEQB R3, [sp, #-49]
l475: mov R11, #2
l476: ldrMIB R1, [sp, -R11]
l477: mov R6, #53
l478: ldrEQB R1, [sp, -R6]
l479: ldrPLB R6, [sp, #-64]
l480: mov R3, #25
l481: ldrLTB R5, [sp, -R3]
l482: ldrEQB R7, [sp, #-25]
l483: ldrB R0, [sp, #-41]
l484: ldrGTB R1, [sp, #-15]
l485: mov R9, #59
l486: ldrB R6, [sp, -R9]
l487: mov R0, #17
l488: ldrLEB R9, [sp, -R0]
l489: ldrGEB R9, [sp, #-28]
l490: mov R1, #77
l491: ldrLTB R10, [sp, -R1]
l492: ldrNEB R4, [sp, #-56]
l493: mov R8, #80
l494: ldrB R1, [sp, -R8]
l495: ldrLSB R3, [sp, #-55]
l496: ldrLTB R6, [sp, #-77]
l497: mov R11, #5
l498: ldrB R14, [sp, -R11]
l499: ldrNEB R3, [sp, #-14]
l500: ldrB R7, [sp, #-66]
l501: mov R10, #79
l502: ldrLTB R6, [sp, -R10]
l503: ldrPLB R12, [sp, #-68]
l504: mov R14, #73
l505: ldrCCB R5, [sp, -R14]
l506: ldrCSB R14, [sp, #-60]
l507: mov R10, #65
l508: ldrB R2, [sp, -R10]
l509: ldrB R0, [sp, #-41]
l510: ldrGTB R0, [sp, #-69]
l511: ldrPLB R4, [sp, #-29]
l512: mov R4, #1
l513: ldrB R1, [sp, -R4]
l514: mov R5, #53
l515: ldrB R7, [sp, -R5]
l516: mov R2, #46
l517: ldrLEB R11, [sp, -R2]
l518: ldrMIB R10, [sp, #-18]
l519: mov R9, #54
l520: ldrVSB R4, [sp, -R9]
l521: mov R1, #28
l522: ldrB R1, [sp, -R1]
l523: mov R5, #75
l524: ldrB R6, [sp, -R5]
l525: ldrB R8, [sp, #-56]
l526: ldrB R12, [sp, #-7]
l527: mov R12, #28
l528: ldrEQB R11, [sp, -R12]
l529: mov R2, #68
l530: ldrB R1, [sp, -R2]
l531: ldrGEB R1, [sp, #-45]
l532: mov R11, #20
l533: ldrB R5, [sp, -R11]
l534: mov R1, #27
l535: ldrLEB R6, [sp, -R1]
l536: ldrNEB R6, [sp, #-44]
l537: ldrB R0, [sp, #-19]
l538: ldrB R0, [sp, #-30]
l539: mov R9, #67
l540: ldrEQB R3, [sp, -R9]
l541: ldrNEB R11, [sp, #-63]
l542: ldrCCB R11, [sp, #-79]
l543: mov R5, #12
l544: ldrB R7, [sp, -R5]
l545: mov R12, #11
l546: ldrB R1, [sp, -R12]
l547: mov R11, #19
l548: ldrB R11, [sp, -R11]
l549: mov R5, #48
l550: ldrB R7, [sp, -R5]
l551: mov R4, #65
l552: ldrB R2, [sp, -R4]
l553: ldrB R8, [sp, #-71]
l554: ldrB R10, [sp, #-11]
l555: mov R14, #64
l556: ldrVCB R7, [sp, -R14]
l557: ldrB R10, [sp, #-66]
l558: ldrB R12, [sp, #-47]
l559: ldrB R3, [sp, #-72]
l560: ldrB R1, [sp, #-46]
l561: mov R11, #42
l562: ldrLSB R1, [sp, -R11]
l563: ldrB R4, [sp, #-26]
l564: mov R6, #70
l565: ldrNEB R10, [sp, -R6]
l566: mov R3, #77
l567: ldrB R5, [sp, -R3]
l568: mov R10, #59
l569: ldrB R7, [sp, -R10]
l570: ldrB R12, [sp, #-33]
l571: ldrB R4, [sp, #-41]
l572: mov R1, #54
l573: ldrCCB R6, [sp, -R1]
l574: mov R4, #68
l575: ldrB R12, [sp, -R4]
l576: ldrB R14, [sp, #-79]
l577: ldrCCB R14, [sp, #-73]
l578: mov R6, #67
l579: ldrB R4, [sp, -R6]
l580: mov R14, #4
l581: ldrB R8, [sp, -R14]
l582: mov R0, #27
l583: ldrGTB R6, [sp, -R0]
l584: ldrEQB R10, [sp, #-49]
l585: mov R8, #7
l586: ldrB R3, [sp, -R8]
l587: ldrLTB R12, [sp, #-60]
l588: mov R5, #75
l589: ldrLSB R4, [sp, -R5]
l590: ldrVSB R12, [sp, #-45]
l591: ldrGEB R8, [sp, #-79]
l592: ldrPLB R11, [sp, #-80]
l593: mov R7, #9
l594: ldrLTB R11, [sp, -R7]
l595: ldrB R1, [sp, #-34]
l596: mov R9, #30
l597: ldrB R2, [sp, -R9]
l598: ldrEQB R8, [sp, #-25]
l599: mov R4, #59
l600: ldrB R5, [sp, -R4]
l601: ldrLSB R12, [sp, #-75]
l602: ldrCSB R8, [sp, #-15]
l603: mov R4, #5
l604: ldrLEB R9, [sp, -R4]
l605: mov R12, #79
l606: ldrB R6, [sp, -R12]
l607: ldrB R6, [sp, #-56]
l608: ldrCCB R7, [sp, #-79]
l609: mov R0, #80
l610: ldrB R3, [sp, -R0]
l611: mov R9, #11
l612: ldrLTB R4, [sp, -R9]
l613: ldrVCB R10, [sp, #-79]
l614: mov R6, #31
l615: ldrB R6, [sp, -R6]
l616: mov R6, #66
l617: ldrEQB R9, [sp, -R6]
l618: mov R6, #21
l619: ldrB R0, [sp, -R6]
l620: mov R5, #29
l621: ldrB R11, [sp, -R5]
l622: mov R9, #15
l623: ldrB R3, [sp, -R9]
l624: mov R6, #42
l625: ldrB R0, [sp, -R6]
l626: ldrMIB R1, [sp, #-57]
l627: ldrEQB R3, [sp, #-30]
l628: mov R14, #48
l629: ldrB R9, [sp, -R14]
l630: mov R9, #2
l631: ldrLTB R4, [sp, -R9]
l632: mov R5, #70
l633: ldrGEB R1, [sp, -R5]
l634: ldrB R0, [sp, #-64]
l635: ldrVCB R10, [sp, #-65]
l636: ldrB R3, [sp, #-29]
l637: mov R4, #73
l638: ldrLEB R10, [sp, -R4]
l639: ldrMIB R11, [sp, #-60]
l640: mov R3, #7
l641: ldrVCB R1, [sp, -R3]
l642: mov R3, #21
l643: ldrB R12, [sp, -R3]
l644: ldrB R14, [sp, #-4]
l645: ldrVSB R12, [sp, #-75]
l646: ldrMIB R1, [sp, #-15]
l647: mov R11, #36
l648: ldrB R3, [sp, -R11]
l649: mov R4, #25
l650: ldrB R12, [sp, -R4]
l651: mov R7, #71
l652: ldrB R3, [sp, -R7]
l653: ldrGTB R3, [sp, #-4]
l654: ldrB R5, [sp, #-14]
l655: ldrGEB R7, [sp, #-30]
l656: ldrMIB R4, [sp, #-53]
l657: ldrB R4, [sp, #-60]
l658: mov R7, #33
l659: ldrB R3, [sp, -R7]
l660: mov R3, #65
l661: ldrB R11, [sp, -R3]
l662: ldrEQB R2, [sp, #-48]
l663: ldrB R2, [sp, #-78]
l664: ldrEQB R12, [sp, #-49]
l665: ldrB R0, [sp, #-4]
l666: mov R4, #23
l667: ldrPLB R14, [sp, -R4]
l668: ldrB R7, [sp, #-3]
l669: ldrLSB R1, [sp, #-15]
l670: mov R3, #53
l671: ldrMIB R0, [sp, -R3]
l672: mov R7, #74
l673: ldrB R11, [sp, -R7]
l674: mov R3, #30
l675: ldrB R4, [sp, -R3]
l676: ldrPLB R5, [sp, #-42]
l677: ldrVCB R7, [sp, #-10]
l678: ldrVCB R2, [sp, #-8]
l679: mov R7, #34
l680: ldrB R5, [sp, -R7]
l681: ldrB R8, [sp, #-55]
l682: mov R0, #35
l683: ldrB R4, [sp, -R0]
l684: mov R10, #6
l685: ldrB R14, [sp, -R10]
l686: ldrPLB R12, [sp, #-43]
l687: ldrLSB R14, [sp, #-46]
l688: ldrB R5, [sp, #-20]
l689: mov R9, #22
l690: ldrVSB R1, [sp, -R9]
l691: mov R5, #13
l692: ldrVSB R1, [sp, -R5]
l693: ldrLTB R6, [sp, #-67]
l694: mov R14, #69
l695: ldrVSB R11, [sp, -R14]
l696: ldrHIB R2, [sp, #-72]
l697: mov R5, #19
l698: ldrVSB R12, [sp, -R5]
l699: mov R2, #59
l700: ldrLSB R2, [sp, -R2]
l701: ldrEQB R7, [sp, #-11]
l702: ldrVSB R8, [sp, #-24]
l703: ldrNEB R5, [sp, #-26]
l704: ldrCCB R10, [sp, #-5]
l705: ldrHIB R6, [sp, #-7]
l706: ldrB R6, [sp, #-57]
l707: ldrB R7, [sp, #-44]
l708: mov R14, #24
l709: ldrB R0, [sp, -R14]
l710: ldrLTB R0, [sp, #-26]
l711: mov R8, #74
l712: ldrB R4, [sp, -R8]
l713: ldrMIB R1, [sp, #-52]
l714: ldrB R3, [sp, #-53]
l715: ldrVCB R5, [sp, #-8]
l716: ldrLEB R6, [sp, #-24]
l717: mov R6, #27
l718: ldrMIB R2, [sp, -R6]
l719: mov R0, #52
l720: ldrMIB R4, [sp, -R0]
l721: mov R12, #39
l722: ldrB R5, [sp, -R12]
l723: mov R5, #52
l724: ldrEQB R14, [sp, -R5]
l725: mov R9, #76
l726: ldrLTB R14, [sp, -R9]
l727: ldrCCB R12, [sp, #-67]
l728: mov R10, #62
l729: ldrVCB R2, [sp, -R10]
l730: mov R7, #11
l731: ldrHIB R3, [sp, -R7]
l732: ldrMIB R9, [sp, #-72]
l733: ldrCCB R2, [sp, #-33]
l734: ldrB R8, [sp, #-23]
l735: mov R8, #26
l736: ldrB R3, [sp, -R8]
l737: ldrB R9, [sp, #-69]
l738: mov R5, #5
l739: ldrLTB R3, [sp, -R5]
l740: mov R2, #28
l741: ldrPLB R6, [sp, -R2]
l742: mov R4, #74
l743: ldrGEB R3, [sp, -R4]
l744: ldrPLB R10, [sp, #-44]
l745: mov R6, #18
l746: ldrCSB R3, [sp, -R6]
l747: ldrNEB R6, [sp, #-79]
l748: mov R2, #43
l749: ldrEQB R2, [sp, -R2]
l750: ldrCSB R12, [sp, #-5]
l751: mov R2, #15
l752: ldrEQB R2, [sp, -R2]
l753: ldrPLB R8, [sp, #-52]
l754: mov R4, #34
l755: ldrVSB R2, [sp, -R4]
l756: mov R12, #80
l757: ldrB R7, [sp, -R12]
l758: mov R3, #58
l759: ldrB R4, [sp, -R3]
l760: mov R8, #53
l761: ldrB R5, [sp, -R8]
l762: ldrB R1, [sp, #-32]
l763: ldrCSB R6, [sp, #-16]
l764: mov R11, #66
l765: ldrB R8, [sp, -R11]
l766: ldrVCB R11, [sp, #-64]
l767: ldrB R0, [sp, #-33]
l768: mov R1, #36
l769: ldrB R9, [sp, -R1]
l770: mov R6, #51
l771: ldrEQB R10, [sp, -R6]
l772: mov R11, #4
l773: ldrCCB R8, [sp, -R11]
l774: ldrLEB R8, [sp, #-58]
l775: ldrCSB R0, [sp, #-67]
l776: mov R11, #29
l777: ldrCSB R2, [sp, -R11]
l778: mov R0, #45
l779: ldrB R11, [sp, -R0]
l780: ldrLSB R5, [sp, #-14]
l781: ldrB R12, [sp, #-8]
l782: ldrB R2, [sp, #-7]
l783: ldrVCB R9, [sp, #-44]
l784: mov R9, #67
l785: ldrMIB R0, [sp, -R9]
l786: ldrLEB R7, [sp, #-27]
l787: mov R7, #38
l788: ldrCSB R6, [sp, -R7]
l789: ldrB R3, [sp, #-60]
l790: mov R14, #42
l791: ldrLSB R11, [sp, -R14]
l792: mov R0, #22
l793: ldrCCB R10, [sp, -R0]
l794: ldrMIB R14, [sp, #-48]
l795: ldrCSB R14, [sp, #-80]
l796: ldrNEB R2, [sp, #-79]
l797: ldrHIB R7, [sp, #-42]
l798: mov R1, #45
l799: ldrGEB R1, [sp, -R1]
l800: ldrMIB R8, [sp, #-18]
l801: mov R0, #4
l802: ldrCCB R2, [sp, -R0]
l803: mov R4, #29
l804: ldrLTB R11, [sp, -R4]
l805: ldrB R12, [sp, #-41]
l806: mov R7, #24
l807: ldrGTB R10, [sp, -R7]
l808: ldrPLB R7, [sp, #-13]
l809: mov R5, #79
l810: ldrLTB R3, [sp, -R5]
l811: mov R10, #4
l812: ldrLTB R5, [sp, -R10]
l813: mov R1, #70
l814: ldrB R1, [sp, -R1]
l815: ldrB R9, [sp, #-13]
l816: mov R14, #71
l817: ldrVCB R6, [sp, -R14]
l818: mov R12, #31
l819: ldrB R6, [sp, -R12]
l820: mov R3, #33
l821: ldrB R6, [sp, -R3]
l822: ldrB R4, [sp, #-79]
l823: ldrB R4, [sp, #-8]
l824: ldrNEB R3, [sp, #-39]
l825: ldrB R11, [sp, #-34]
l826: ldrB R10, [sp, #-30]
l827: ldrHIB R2, [sp, #-6]
l828: mov R11, #58
l829: ldrB R12, [sp, -R11]
l830: mov R14, #80
l831: ldrLSB R12, [sp, -R14]
l832: mov R12, #42
l833: ldrLTB R8, [sp, -R12]
l834: mov R0, #1
l835: ldrB R6, [sp, -R0]
l836: mov R3, #57
l837: ldrLTB R1, [sp, -R3]
l838: ldrCSB R1, [sp, #-37]
l839: mov R2, #80
l840: ldrB R11, [sp, -R2]
l841: ldrCSB R8, [sp, #-78]
l842: mov R5, #1
l843: ldrB R8, [sp, -R5]
l844: ldrB R5, [sp, #-13]
l845: mov R8, #5
l846: ldrHIB R12, [sp, -R8]
l847: mov R1, #11
l848: ldrPLB R7, [sp, -R1]
l849: mov R9, #71
l850: ldrVSB R7, [sp, -R9]
l851: mov R14, #28
l852: ldrPLB R3, [sp, -R14]
l853: ldrVCB R0, [sp, #-30]
l854: ldrB R4, [sp, #-11]
l855: ldrLSB R6, [sp, #-75]
l856: ldrLSB R6, [sp, #-12]
l857: mov R9, #44
l858: ldrB R12, [sp, -R9]
l859: ldrCCB R3, [sp, #-5]
l860: mov R10, #8
l861: ldrB R2, [sp, -R10]
l862: ldrPLB R9, [sp, #-56]
l863: ldrB R14, [sp, #-65]
l864: mov R0, #9
l865: ldrB R4, [sp, -R0]
l866: ldrGTB R10, [sp, #-41]
l867: mov R5, #45
l868: ldrHIB R7, [sp, -R5]
l869: mov R7, #1
l870: ldrLTB R4, [sp, -R7]
l871: mov R6, #50
l872: ldrLTB R2, [sp, -R6]
l873: ldrEQB R1, [sp, #-14]
l874: mov R3, #34
l875: ldrEQB R9, [sp, -R3]
l876: ldrLSB R8, [sp, #-5]
l877: mov R10, #34
l878: ldrHIB R14, [sp, -R10]
l879: mov R2, #31
l880: ldrCCB R12, [sp, -R2]
l881: ldrLTB R14, [sp, #-5]
l882: ldrVSB R12, [sp, #-64]
l883: mov R3, #11
l884: ldrGEB R8, [sp, -R3]
l885: ldrB R10, [sp, #-64]
l886: ldrVCB R12, [sp, #-4]
l887: ldrCCB R14, [sp, #-3]
l888: mov R9, #28
l889: ldrMIB R4, [sp, -R9]
l890: mov R11, #46
l891: ldrB R0, [sp, -R11]
l892: ldrCSB R10, [sp, #-37]
l893: mov R0, #46
l894: ldrB R0, [sp, -R0]
l895: mov R7, #59
l896: ldrVCB R9, [sp, -R7]
l897: mov R6, #10
l898: ldrPLB R12, [sp, -R6]
l899: mov R8, #57
l900: ldrEQB R0, [sp, -R8]
l901: mov R9, #15
l902: ldrCCB R4, [sp, -R9]
l903: ldrCSB R7, [sp, #-15]
l904: ldrGTB R6, [sp, #-49]
l905: mov R11, #73
l906: ldrEQB R6, [sp, -R11]
l907: mov R14, #32
l908: ldrB R5, [sp, -R14]
l909: ldrGTB R1, [sp, #-49]
l910: ldrB R14, [sp, #-54]
l911: mov R3, #11
l912: ldrB R4, [sp, -R3]
l913: mov R12, #3
l914: ldrB R7, [sp, -R12]
l915: ldrHIB R12, [sp, #-35]
l916: mov R9, #34
l917: ldrB R14, [sp, -R9]
l918: ldrEQB R11, [sp, #-56]
l919: ldrB R8, [sp, #-54]
l920: ldrLEB R10, [sp, #-63]
l921: mov R12, #72
l922: ldrB R1, [sp, -R12]
l923: ldrB R7, [sp, #-67]
l924: ldrB R7, [sp, #-36]
l925: ldrHIB R1, [sp, #-62]
l926: mov R5, #19
l927: ldrLTB R8, [sp, -R5]
l928: mov R12, #72
l929: ldrEQB R4, [sp, -R12]
l930: ldrPLB R11, [sp, #-21]
l931: mov R1, #35
l932: ldrB R7, [sp, -R1]
l933: ldrVCB R12, [sp, #-58]
l934: ldrCSB R2, [sp, #-59]
l935: ldrB R9, [sp, #-39]
l936: ldrB R1, [sp, #-5]
l937: ldrHIB R5, [sp, #-29]
l938: mov R6, #15
l939: ldrHIB R4, [sp, -R6]
l940: ldrVCB R6, [sp, #-28]
l941: mov R12, #54
l942: ldrB R12, [sp, -R12]
l943: ldrLTB R4, [sp, #-18]
l944: mov R1, #60
l945: ldrB R14, [sp, -R1]
l946: ldrLTB R11, [sp, #-11]
l947: mov R6, #55
l948: ldrVSB R11, [sp, -R6]
l949: mov R2, #9
l950: ldrEQB R2, [sp, -R2]
l951: ldrPLB R0, [sp, #-22]
l952: mov R4, #51
l953: ldrVCB R10, [sp, -R4]
l954: ldrGTB R8, [sp, #-45]
l955: mov R10, #67
l956: ldrB R2, [sp, -R10]
l957: mov R2, #44
l958: ldrLEB R4, [sp, -R2]
l959: ldrLTB R7, [sp, #-70]
l960: ldrB R3, [sp, #-30]
l961: ldrB R5, [sp, #-67]
l962: mov R10, #75
l963: ldrEQB R11, [sp, -R10]
l964: ldrCSB R8, [sp, #-13]
l965: ldrB R7, [sp, #-52]
l966: mov R0, #64
l967: ldrPLB R1, [sp, -R0]
l968: ldrVSB R1, [sp, #-80]
l969: mov R3, #73
l970: ldrGEB R4, [sp, -R3]
l971: mov R7, #73
l972: ldrB R6, [sp, -R7]
l973: mov R9, #60
l974: ldrVSB R14, [sp, -R9]
l975: mov R6, #7
l976: ldrHIB R8, [sp, -R6]
l977: mov R0, #34
l978: ldrVSB R6, [sp, -R0]
l979: ldrCCB R7, [sp, #-4]
l980: mov R12, #51
l981: ldrB R3, [sp, -R12]
l982: ldrLTB R11, [sp, #-78]
l983: ldrCCB R7, [sp, #-5]
l984: mov R3, #32
l985: ldrVSB R0, [sp, -R3]
l986: mov R5, #32
l987: ldrMIB R11, [sp, -R5]
l988: ldrMIB R14, [sp, #-41]
l989: mov R6, #63
l990: ldrVSB R7, [sp, -R6]
l991: ldrB R10, [sp, #-35]
l992: mov R6, #2
l993: ldrVSB R3, [sp, -R6]
l994: ldrB R12, [sp, #-38]
l995: mov R1, #9
l996: ldrLSB R8, [sp, -R1]
l997: mov R8, #33
l998: ldrB R4, [sp, -R8]
l999: mov R10, #67
l1000: ldrB R5, [sp, -R10]
end: b end

