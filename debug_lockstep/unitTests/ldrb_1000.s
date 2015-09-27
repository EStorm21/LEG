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
val1: .word 2114006328
next1:ldr R2, val2
b next2
val2: .word 3687328759
next2:ldr R3, val3
b next3
val3: .word 3397843409
next3:ldr R4, val4
b next4
val4: .word 2627431320
next4:ldr R5, val5
b next5
val5: .word 2074237704
next5:ldr R6, val6
b next6
val6: .word 1179235787
next6:ldr R7, val7
b next7
val7: .word 2012147881
next7:ldr R8, val8
b next8
val8: .word 3801562396
next8:ldr R9, val9
b next9
val9: .word 1033712174
next9:ldr R10, val10
b next10
val10: .word 2277873401
next10:ldr R11, val11
b next11
val11: .word 3630438081
next11:ldr R12, val12
b next12
val12: .word 85984260
next12:ldr R14, val14
b next14
val14: .word 2810300414

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 3504862732
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 696421452
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 1224188374
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 2970475067
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 3817266790
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 3654287340
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 126883272
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 610559382
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 2558585304
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 3418672455
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 1603678482
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 1496321565
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 1573357332
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 3475693949
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 423428195
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 3200652352
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 12104899
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 1622905906
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 1149074014
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 2972807711
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 833563940
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: mov R10, #19
l2: ldrLTB R2, [sp, -R10]
l3: ldrLTB R9, [sp, #-76]
l4: ldrB R6, [sp, #-49]
l5: ldrHIB R4, [sp, #-31]
l6: mov R7, #52
l7: ldrLSB R12, [sp, -R7]
l8: mov R11, #9
l9: ldrEQB R6, [sp, -R11]
l10: ldrB R2, [sp, #-40]
l11: ldrB R3, [sp, #-19]
l12: ldrMIB R10, [sp, #-18]
l13: mov R0, #53
l14: ldrGEB R4, [sp, -R0]
l15: ldrCSB R5, [sp, #-72]
l16: ldrGTB R14, [sp, #-24]
l17: mov R6, #60
l18: ldrCCB R14, [sp, -R6]
l19: mov R5, #39
l20: ldrHIB R7, [sp, -R5]
l21: ldrLEB R11, [sp, #-27]
l22: ldrVSB R8, [sp, #-25]
l23: mov R7, #59
l24: ldrB R10, [sp, -R7]
l25: mov R5, #47
l26: ldrB R8, [sp, -R5]
l27: ldrGEB R10, [sp, #-66]
l28: mov R14, #23
l29: ldrEQB R2, [sp, -R14]
l30: ldrMIB R12, [sp, #-15]
l31: mov R11, #34
l32: ldrB R8, [sp, -R11]
l33: mov R6, #76
l34: ldrLTB R8, [sp, -R6]
l35: ldrEQB R12, [sp, #-78]
l36: mov R2, #18
l37: ldrPLB R10, [sp, -R2]
l38: ldrPLB R7, [sp, #-68]
l39: mov R10, #34
l40: ldrLTB R2, [sp, -R10]
l41: ldrVSB R11, [sp, #-51]
l42: mov R2, #5
l43: ldrB R11, [sp, -R2]
l44: mov R11, #65
l45: ldrB R12, [sp, -R11]
l46: ldrPLB R6, [sp, #-76]
l47: mov R8, #78
l48: ldrB R4, [sp, -R8]
l49: mov R14, #15
l50: ldrLTB R3, [sp, -R14]
l51: ldrB R8, [sp, #-23]
l52: ldrLSB R5, [sp, #-6]
l53: ldrB R9, [sp, #-47]
l54: mov R7, #64
l55: ldrB R6, [sp, -R7]
l56: mov R0, #44
l57: ldrHIB R5, [sp, -R0]
l58: mov R7, #6
l59: ldrB R1, [sp, -R7]
l60: ldrGTB R14, [sp, #-57]
l61: ldrB R8, [sp, #-44]
l62: ldrB R4, [sp, #-24]
l63: mov R11, #15
l64: ldrB R4, [sp, -R11]
l65: ldrCSB R3, [sp, #-78]
l66: mov R11, #79
l67: ldrB R6, [sp, -R11]
l68: mov R11, #26
l69: ldrEQB R12, [sp, -R11]
l70: mov R14, #43
l71: ldrCSB R5, [sp, -R14]
l72: ldrGEB R4, [sp, #-67]
l73: mov R0, #12
l74: ldrPLB R8, [sp, -R0]
l75: mov R9, #53
l76: ldrHIB R5, [sp, -R9]
l77: mov R4, #17
l78: ldrPLB R10, [sp, -R4]
l79: ldrB R4, [sp, #-31]
l80: ldrMIB R12, [sp, #-35]
l81: mov R2, #12
l82: ldrVSB R1, [sp, -R2]
l83: mov R0, #45
l84: ldrNEB R2, [sp, -R0]
l85: ldrPLB R12, [sp, #-61]
l86: mov R2, #16
l87: ldrHIB R14, [sp, -R2]
l88: ldrB R6, [sp, #-54]
l89: mov R14, #10
l90: ldrB R7, [sp, -R14]
l91: mov R0, #59
l92: ldrLSB R9, [sp, -R0]
l93: mov R6, #75
l94: ldrB R6, [sp, -R6]
l95: mov R4, #44
l96: ldrGEB R2, [sp, -R4]
l97: mov R2, #62
l98: ldrNEB R6, [sp, -R2]
l99: mov R0, #36
l100: ldrB R7, [sp, -R0]
l101: ldrLSB R10, [sp, #-50]
l102: mov R11, #79
l103: ldrNEB R14, [sp, -R11]
l104: ldrB R0, [sp, #-58]
l105: mov R10, #35
l106: ldrMIB R8, [sp, -R10]
l107: mov R10, #63
l108: ldrB R9, [sp, -R10]
l109: ldrGTB R12, [sp, #-46]
l110: mov R1, #55
l111: ldrB R1, [sp, -R1]
l112: ldrEQB R5, [sp, #-5]
l113: ldrCCB R4, [sp, #-33]
l114: mov R4, #10
l115: ldrVSB R6, [sp, -R4]
l116: mov R0, #73
l117: ldrB R0, [sp, -R0]
l118: mov R8, #11
l119: ldrLSB R4, [sp, -R8]
l120: mov R7, #13
l121: ldrB R0, [sp, -R7]
l122: mov R7, #35
l123: ldrLTB R5, [sp, -R7]
l124: mov R2, #62
l125: ldrVCB R1, [sp, -R2]
l126: ldrEQB R7, [sp, #-32]
l127: ldrB R3, [sp, #-46]
l128: mov R12, #70
l129: ldrCCB R14, [sp, -R12]
l130: mov R9, #29
l131: ldrMIB R8, [sp, -R9]
l132: mov R3, #51
l133: ldrLSB R7, [sp, -R3]
l134: mov R11, #38
l135: ldrB R14, [sp, -R11]
l136: ldrLEB R3, [sp, #-40]
l137: mov R9, #66
l138: ldrB R3, [sp, -R9]
l139: ldrCSB R8, [sp, #-19]
l140: ldrCCB R14, [sp, #-8]
l141: mov R8, #73
l142: ldrHIB R9, [sp, -R8]
l143: ldrMIB R1, [sp, #-63]
l144: ldrGEB R10, [sp, #-69]
l145: mov R2, #79
l146: ldrLSB R1, [sp, -R2]
l147: ldrLEB R14, [sp, #-32]
l148: mov R3, #78
l149: ldrB R11, [sp, -R3]
l150: mov R9, #27
l151: ldrCCB R1, [sp, -R9]
l152: ldrB R14, [sp, #-28]
l153: ldrB R0, [sp, #-28]
l154: mov R3, #29
l155: ldrB R3, [sp, -R3]
l156: ldrLSB R8, [sp, #-51]
l157: mov R3, #45
l158: ldrB R7, [sp, -R3]
l159: ldrB R9, [sp, #-19]
l160: mov R4, #54
l161: ldrNEB R9, [sp, -R4]
l162: ldrCCB R0, [sp, #-57]
l163: ldrB R11, [sp, #-5]
l164: mov R4, #17
l165: ldrB R3, [sp, -R4]
l166: ldrVSB R9, [sp, #-25]
l167: ldrMIB R14, [sp, #-44]
l168: mov R11, #56
l169: ldrMIB R4, [sp, -R11]
l170: ldrB R5, [sp, #-51]
l171: mov R5, #45
l172: ldrCSB R9, [sp, -R5]
l173: ldrNEB R5, [sp, #-6]
l174: ldrVSB R10, [sp, #-19]
l175: ldrB R8, [sp, #-24]
l176: ldrCSB R4, [sp, #-26]
l177: mov R5, #45
l178: ldrHIB R7, [sp, -R5]
l179: ldrNEB R11, [sp, #-24]
l180: mov R8, #77
l181: ldrB R8, [sp, -R8]
l182: mov R5, #56
l183: ldrB R11, [sp, -R5]
l184: ldrGEB R2, [sp, #-80]
l185: mov R10, #51
l186: ldrLTB R5, [sp, -R10]
l187: mov R8, #76
l188: ldrB R5, [sp, -R8]
l189: ldrB R3, [sp, #-58]
l190: ldrMIB R2, [sp, #-48]
l191: mov R9, #80
l192: ldrPLB R10, [sp, -R9]
l193: mov R1, #72
l194: ldrEQB R2, [sp, -R1]
l195: mov R9, #44
l196: ldrB R6, [sp, -R9]
l197: mov R2, #53
l198: ldrB R10, [sp, -R2]
l199: mov R7, #76
l200: ldrCSB R11, [sp, -R7]
l201: mov R0, #70
l202: ldrEQB R5, [sp, -R0]
l203: mov R12, #65
l204: ldrB R6, [sp, -R12]
l205: ldrGTB R1, [sp, #-60]
l206: mov R5, #60
l207: ldrGEB R4, [sp, -R5]
l208: mov R1, #66
l209: ldrCCB R3, [sp, -R1]
l210: mov R10, #9
l211: ldrGTB R6, [sp, -R10]
l212: mov R7, #46
l213: ldrCCB R11, [sp, -R7]
l214: ldrB R6, [sp, #-14]
l215: ldrGTB R6, [sp, #-71]
l216: mov R8, #54
l217: ldrVCB R0, [sp, -R8]
l218: mov R7, #48
l219: ldrB R7, [sp, -R7]
l220: ldrB R12, [sp, #-71]
l221: ldrCCB R0, [sp, #-7]
l222: mov R14, #78
l223: ldrLEB R6, [sp, -R14]
l224: mov R14, #15
l225: ldrCCB R8, [sp, -R14]
l226: ldrGEB R14, [sp, #-8]
l227: ldrB R7, [sp, #-58]
l228: mov R2, #55
l229: ldrCSB R0, [sp, -R2]
l230: ldrLEB R2, [sp, #-17]
l231: mov R6, #76
l232: ldrCCB R10, [sp, -R6]
l233: ldrGTB R4, [sp, #-58]
l234: mov R5, #58
l235: ldrB R9, [sp, -R5]
l236: ldrCCB R0, [sp, #-29]
l237: ldrB R11, [sp, #-76]
l238: ldrB R8, [sp, #-15]
l239: ldrB R11, [sp, #-63]
l240: ldrB R6, [sp, #-61]
l241: ldrB R3, [sp, #-33]
l242: mov R6, #14
l243: ldrB R9, [sp, -R6]
l244: mov R5, #41
l245: ldrB R10, [sp, -R5]
l246: ldrB R4, [sp, #-37]
l247: mov R5, #47
l248: ldrCSB R7, [sp, -R5]
l249: mov R1, #9
l250: ldrB R8, [sp, -R1]
l251: ldrLSB R2, [sp, #-75]
l252: ldrB R2, [sp, #-57]
l253: mov R1, #5
l254: ldrB R6, [sp, -R1]
l255: mov R7, #33
l256: ldrB R7, [sp, -R7]
l257: mov R7, #30
l258: ldrGTB R12, [sp, -R7]
l259: ldrVSB R1, [sp, #-10]
l260: ldrB R8, [sp, #-6]
l261: ldrHIB R11, [sp, #-55]
l262: mov R10, #58
l263: ldrB R10, [sp, -R10]
l264: ldrLEB R1, [sp, #-80]
l265: mov R4, #20
l266: ldrB R14, [sp, -R4]
l267: mov R4, #66
l268: ldrCSB R7, [sp, -R4]
l269: ldrHIB R1, [sp, #-48]
l270: ldrB R7, [sp, #-16]
l271: mov R3, #68
l272: ldrCCB R0, [sp, -R3]
l273: ldrCCB R0, [sp, #-28]
l274: ldrB R10, [sp, #-9]
l275: ldrB R10, [sp, #-26]
l276: ldrCSB R5, [sp, #-13]
l277: ldrVSB R2, [sp, #-74]
l278: ldrB R14, [sp, #-54]
l279: ldrNEB R9, [sp, #-64]
l280: mov R5, #75
l281: ldrB R10, [sp, -R5]
l282: mov R11, #73
l283: ldrMIB R5, [sp, -R11]
l284: ldrB R11, [sp, #-9]
l285: ldrLSB R2, [sp, #-27]
l286: ldrB R11, [sp, #-22]
l287: ldrB R6, [sp, #-78]
l288: ldrLTB R4, [sp, #-50]
l289: ldrPLB R8, [sp, #-24]
l290: mov R14, #72
l291: ldrGEB R6, [sp, -R14]
l292: ldrB R5, [sp, #-46]
l293: ldrLTB R6, [sp, #-16]
l294: mov R2, #43
l295: ldrB R5, [sp, -R2]
l296: mov R8, #67
l297: ldrNEB R11, [sp, -R8]
l298: mov R2, #74
l299: ldrCCB R0, [sp, -R2]
l300: ldrB R5, [sp, #-69]
l301: mov R8, #9
l302: ldrPLB R11, [sp, -R8]
l303: ldrB R9, [sp, #-65]
l304: ldrB R0, [sp, #-49]
l305: ldrLTB R0, [sp, #-15]
l306: ldrGTB R1, [sp, #-27]
l307: mov R10, #25
l308: ldrB R10, [sp, -R10]
l309: mov R8, #8
l310: ldrNEB R2, [sp, -R8]
l311: ldrB R8, [sp, #-71]
l312: ldrGTB R0, [sp, #-43]
l313: mov R2, #15
l314: ldrB R5, [sp, -R2]
l315: ldrLSB R14, [sp, #-49]
l316: mov R2, #47
l317: ldrB R12, [sp, -R2]
l318: mov R8, #59
l319: ldrLTB R4, [sp, -R8]
l320: mov R4, #5
l321: ldrVSB R5, [sp, -R4]
l322: mov R1, #59
l323: ldrEQB R3, [sp, -R1]
l324: ldrHIB R12, [sp, #-9]
l325: mov R0, #19
l326: ldrCCB R4, [sp, -R0]
l327: ldrLSB R14, [sp, #-26]
l328: ldrB R1, [sp, #-57]
l329: mov R2, #19
l330: ldrVCB R6, [sp, -R2]
l331: mov R12, #42
l332: ldrCSB R9, [sp, -R12]
l333: mov R1, #64
l334: ldrCSB R14, [sp, -R1]
l335: ldrB R12, [sp, #-11]
l336: ldrB R0, [sp, #-11]
l337: ldrB R6, [sp, #-45]
l338: ldrB R2, [sp, #-60]
l339: mov R8, #61
l340: ldrGEB R10, [sp, -R8]
l341: ldrVCB R9, [sp, #-78]
l342: ldrCCB R3, [sp, #-19]
l343: ldrB R7, [sp, #-69]
l344: mov R2, #76
l345: ldrVSB R2, [sp, -R2]
l346: mov R10, #72
l347: ldrNEB R6, [sp, -R10]
l348: ldrB R4, [sp, #-14]
l349: ldrB R12, [sp, #-42]
l350: mov R5, #74
l351: ldrNEB R8, [sp, -R5]
l352: mov R6, #12
l353: ldrGTB R10, [sp, -R6]
l354: ldrEQB R4, [sp, #-65]
l355: mov R7, #25
l356: ldrGEB R0, [sp, -R7]
l357: mov R4, #48
l358: ldrB R9, [sp, -R4]
l359: mov R11, #18
l360: ldrVCB R1, [sp, -R11]
l361: ldrGEB R10, [sp, #-8]
l362: mov R6, #64
l363: ldrMIB R5, [sp, -R6]
l364: mov R12, #43
l365: ldrGTB R2, [sp, -R12]
l366: mov R5, #41
l367: ldrLTB R4, [sp, -R5]
l368: ldrPLB R1, [sp, #-49]
l369: mov R7, #49
l370: ldrHIB R8, [sp, -R7]
l371: ldrB R3, [sp, #-6]
l372: ldrEQB R10, [sp, #-17]
l373: mov R9, #78
l374: ldrB R1, [sp, -R9]
l375: mov R3, #62
l376: ldrHIB R9, [sp, -R3]
l377: mov R5, #21
l378: ldrB R6, [sp, -R5]
l379: mov R11, #23
l380: ldrB R5, [sp, -R11]
l381: ldrLTB R5, [sp, #-64]
l382: mov R7, #33
l383: ldrLTB R0, [sp, -R7]
l384: mov R5, #22
l385: ldrB R5, [sp, -R5]
l386: ldrEQB R0, [sp, #-74]
l387: mov R11, #16
l388: ldrVCB R3, [sp, -R11]
l389: mov R0, #66
l390: ldrB R14, [sp, -R0]
l391: ldrHIB R4, [sp, #-11]
l392: mov R5, #18
l393: ldrB R7, [sp, -R5]
l394: mov R4, #40
l395: ldrHIB R14, [sp, -R4]
l396: ldrB R12, [sp, #-9]
l397: mov R12, #79
l398: ldrVSB R9, [sp, -R12]
l399: mov R14, #21
l400: ldrB R5, [sp, -R14]
l401: ldrB R2, [sp, #-5]
l402: ldrCSB R4, [sp, #-77]
l403: ldrHIB R10, [sp, #-11]
l404: mov R0, #38
l405: ldrPLB R4, [sp, -R0]
l406: ldrEQB R9, [sp, #-77]
l407: ldrCCB R0, [sp, #-34]
l408: mov R7, #46
l409: ldrB R6, [sp, -R7]
l410: ldrB R1, [sp, #-16]
l411: ldrVSB R14, [sp, #-31]
l412: ldrB R10, [sp, #-60]
l413: mov R14, #23
l414: ldrLSB R11, [sp, -R14]
l415: ldrNEB R4, [sp, #-23]
l416: mov R7, #65
l417: ldrCCB R1, [sp, -R7]
l418: mov R7, #11
l419: ldrB R5, [sp, -R7]
l420: mov R12, #22
l421: ldrMIB R12, [sp, -R12]
l422: mov R10, #59
l423: ldrB R0, [sp, -R10]
l424: mov R0, #77
l425: ldrLSB R11, [sp, -R0]
l426: mov R4, #22
l427: ldrCCB R14, [sp, -R4]
l428: mov R10, #36
l429: ldrB R9, [sp, -R10]
l430: mov R11, #29
l431: ldrB R0, [sp, -R11]
l432: mov R8, #47
l433: ldrB R12, [sp, -R8]
l434: mov R7, #55
l435: ldrEQB R4, [sp, -R7]
l436: ldrB R9, [sp, #-52]
l437: mov R1, #43
l438: ldrLTB R8, [sp, -R1]
l439: mov R12, #46
l440: ldrB R11, [sp, -R12]
l441: ldrB R7, [sp, #-13]
l442: ldrB R5, [sp, #-22]
l443: ldrCCB R7, [sp, #-32]
l444: mov R8, #63
l445: ldrMIB R14, [sp, -R8]
l446: mov R4, #42
l447: ldrB R7, [sp, -R4]
l448: mov R2, #20
l449: ldrVCB R4, [sp, -R2]
l450: ldrEQB R14, [sp, #-7]
l451: mov R2, #10
l452: ldrEQB R4, [sp, -R2]
l453: mov R4, #17
l454: ldrVSB R12, [sp, -R4]
l455: mov R10, #70
l456: ldrB R4, [sp, -R10]
l457: ldrB R9, [sp, #-33]
l458: mov R8, #64
l459: ldrHIB R10, [sp, -R8]
l460: ldrLTB R0, [sp, #-6]
l461: ldrLSB R6, [sp, #-57]
l462: mov R10, #61
l463: ldrGEB R6, [sp, -R10]
l464: ldrGEB R11, [sp, #-45]
l465: mov R6, #7
l466: ldrEQB R9, [sp, -R6]
l467: mov R10, #14
l468: ldrB R11, [sp, -R10]
l469: mov R12, #42
l470: ldrB R5, [sp, -R12]
l471: mov R6, #51
l472: ldrGEB R2, [sp, -R6]
l473: ldrB R11, [sp, #-32]
l474: mov R5, #62
l475: ldrLEB R9, [sp, -R5]
l476: mov R12, #47
l477: ldrNEB R2, [sp, -R12]
l478: ldrCSB R14, [sp, #-31]
l479: mov R2, #17
l480: ldrB R0, [sp, -R2]
l481: ldrNEB R9, [sp, #-75]
l482: ldrB R3, [sp, #-59]
l483: mov R7, #57
l484: ldrVCB R2, [sp, -R7]
l485: mov R1, #27
l486: ldrMIB R1, [sp, -R1]
l487: mov R5, #77
l488: ldrB R9, [sp, -R5]
l489: ldrB R5, [sp, #-12]
l490: mov R10, #17
l491: ldrGEB R14, [sp, -R10]
l492: ldrB R11, [sp, #-48]
l493: mov R2, #43
l494: ldrB R12, [sp, -R2]
l495: mov R6, #61
l496: ldrB R3, [sp, -R6]
l497: mov R11, #44
l498: ldrVCB R3, [sp, -R11]
l499: mov R5, #64
l500: ldrEQB R0, [sp, -R5]
l501: mov R2, #23
l502: ldrLTB R2, [sp, -R2]
l503: ldrHIB R8, [sp, #-23]
l504: ldrGEB R8, [sp, #-18]
l505: mov R11, #79
l506: ldrB R7, [sp, -R11]
l507: mov R11, #5
l508: ldrNEB R7, [sp, -R11]
l509: mov R6, #58
l510: ldrB R4, [sp, -R6]
l511: mov R10, #31
l512: ldrEQB R10, [sp, -R10]
l513: ldrEQB R10, [sp, #-68]
l514: mov R12, #74
l515: ldrGEB R1, [sp, -R12]
l516: mov R1, #28
l517: ldrB R4, [sp, -R1]
l518: ldrPLB R10, [sp, #-74]
l519: ldrLEB R14, [sp, #-68]
l520: mov R6, #14
l521: ldrB R14, [sp, -R6]
l522: mov R12, #32
l523: ldrB R14, [sp, -R12]
l524: ldrPLB R14, [sp, #-17]
l525: mov R4, #12
l526: ldrB R12, [sp, -R4]
l527: ldrVCB R1, [sp, #-21]
l528: ldrB R1, [sp, #-54]
l529: mov R4, #32
l530: ldrNEB R12, [sp, -R4]
l531: ldrB R4, [sp, #-79]
l532: ldrB R8, [sp, #-54]
l533: ldrGTB R11, [sp, #-75]
l534: ldrCSB R3, [sp, #-11]
l535: ldrB R7, [sp, #-41]
l536: ldrVCB R1, [sp, #-59]
l537: mov R11, #23
l538: ldrCCB R11, [sp, -R11]
l539: ldrB R6, [sp, #-66]
l540: ldrB R7, [sp, #-33]
l541: ldrVCB R8, [sp, #-74]
l542: ldrVCB R11, [sp, #-59]
l543: ldrB R9, [sp, #-15]
l544: mov R3, #10
l545: ldrLTB R11, [sp, -R3]
l546: mov R10, #74
l547: ldrLEB R10, [sp, -R10]
l548: mov R6, #79
l549: ldrB R0, [sp, -R6]
l550: ldrB R10, [sp, #-24]
l551: ldrCCB R14, [sp, #-42]
l552: ldrB R1, [sp, #-80]
l553: ldrLTB R1, [sp, #-49]
l554: ldrLTB R7, [sp, #-52]
l555: ldrVCB R0, [sp, #-23]
l556: mov R3, #63
l557: ldrB R0, [sp, -R3]
l558: ldrLSB R5, [sp, #-19]
l559: ldrB R10, [sp, #-48]
l560: ldrB R14, [sp, #-17]
l561: mov R3, #7
l562: ldrHIB R14, [sp, -R3]
l563: ldrLTB R0, [sp, #-69]
l564: ldrCSB R5, [sp, #-42]
l565: ldrNEB R8, [sp, #-25]
l566: ldrVCB R0, [sp, #-8]
l567: mov R6, #15
l568: ldrPLB R9, [sp, -R6]
l569: mov R8, #39
l570: ldrCSB R4, [sp, -R8]
l571: mov R10, #40
l572: ldrMIB R12, [sp, -R10]
l573: mov R1, #22
l574: ldrB R3, [sp, -R1]
l575: ldrLSB R5, [sp, #-10]
l576: mov R1, #51
l577: ldrLEB R0, [sp, -R1]
l578: mov R2, #78
l579: ldrB R4, [sp, -R2]
l580: mov R2, #75
l581: ldrGTB R9, [sp, -R2]
l582: mov R3, #70
l583: ldrB R2, [sp, -R3]
l584: mov R12, #28
l585: ldrEQB R12, [sp, -R12]
l586: mov R10, #44
l587: ldrB R6, [sp, -R10]
l588: ldrB R1, [sp, #-6]
l589: ldrB R7, [sp, #-14]
l590: mov R9, #50
l591: ldrLSB R10, [sp, -R9]
l592: mov R5, #17
l593: ldrCSB R7, [sp, -R5]
l594: ldrMIB R8, [sp, #-77]
l595: ldrGTB R5, [sp, #-77]
l596: mov R10, #66
l597: ldrVSB R10, [sp, -R10]
l598: mov R9, #36
l599: ldrGTB R7, [sp, -R9]
l600: mov R8, #12
l601: ldrLTB R10, [sp, -R8]
l602: mov R1, #35
l603: ldrB R0, [sp, -R1]
l604: mov R10, #46
l605: ldrVCB R10, [sp, -R10]
l606: mov R0, #50
l607: ldrNEB R11, [sp, -R0]
l608: mov R11, #55
l609: ldrLEB R12, [sp, -R11]
l610: mov R0, #44
l611: ldrHIB R5, [sp, -R0]
l612: ldrCSB R9, [sp, #-56]
l613: ldrHIB R10, [sp, #-26]
l614: mov R5, #35
l615: ldrB R2, [sp, -R5]
l616: mov R2, #29
l617: ldrGEB R11, [sp, -R2]
l618: mov R7, #8
l619: ldrCSB R14, [sp, -R7]
l620: ldrGTB R0, [sp, #-68]
l621: ldrB R3, [sp, #-21]
l622: ldrB R9, [sp, #-29]
l623: mov R3, #37
l624: ldrLTB R1, [sp, -R3]
l625: ldrLTB R0, [sp, #-27]
l626: ldrB R4, [sp, #-10]
l627: mov R0, #24
l628: ldrEQB R4, [sp, -R0]
l629: mov R4, #13
l630: ldrGTB R3, [sp, -R4]
l631: mov R6, #62
l632: ldrGTB R7, [sp, -R6]
l633: mov R8, #23
l634: ldrB R6, [sp, -R8]
l635: mov R6, #57
l636: ldrB R8, [sp, -R6]
l637: ldrB R5, [sp, #-38]
l638: ldrPLB R5, [sp, #-51]
l639: ldrLEB R2, [sp, #-29]
l640: mov R9, #76
l641: ldrB R9, [sp, -R9]
l642: ldrB R5, [sp, #-9]
l643: ldrVCB R2, [sp, #-28]
l644: ldrCSB R0, [sp, #-61]
l645: mov R7, #46
l646: ldrLTB R8, [sp, -R7]
l647: mov R14, #59
l648: ldrNEB R14, [sp, -R14]
l649: mov R0, #66
l650: ldrPLB R11, [sp, -R0]
l651: ldrMIB R10, [sp, #-12]
l652: ldrB R2, [sp, #-78]
l653: mov R10, #32
l654: ldrB R5, [sp, -R10]
l655: mov R1, #63
l656: ldrVSB R14, [sp, -R1]
l657: ldrVSB R9, [sp, #-24]
l658: ldrGEB R11, [sp, #-14]
l659: ldrB R8, [sp, #-16]
l660: mov R5, #13
l661: ldrCCB R14, [sp, -R5]
l662: ldrB R6, [sp, #-29]
l663: mov R7, #55
l664: ldrB R11, [sp, -R7]
l665: mov R9, #54
l666: ldrB R3, [sp, -R9]
l667: ldrB R5, [sp, #-9]
l668: mov R9, #20
l669: ldrCSB R3, [sp, -R9]
l670: ldrCCB R5, [sp, #-31]
l671: ldrB R14, [sp, #-39]
l672: ldrLEB R7, [sp, #-41]
l673: ldrCCB R8, [sp, #-7]
l674: ldrEQB R1, [sp, #-36]
l675: ldrB R6, [sp, #-37]
l676: mov R11, #12
l677: ldrB R1, [sp, -R11]
l678: ldrPLB R7, [sp, #-36]
l679: ldrB R12, [sp, #-22]
l680: ldrEQB R4, [sp, #-24]
l681: mov R5, #25
l682: ldrNEB R3, [sp, -R5]
l683: mov R14, #8
l684: ldrGTB R5, [sp, -R14]
l685: ldrCSB R4, [sp, #-7]
l686: ldrEQB R12, [sp, #-48]
l687: ldrB R10, [sp, #-26]
l688: mov R8, #72
l689: ldrLEB R0, [sp, -R8]
l690: mov R5, #6
l691: ldrEQB R10, [sp, -R5]
l692: ldrLEB R9, [sp, #-50]
l693: ldrB R12, [sp, #-18]
l694: mov R10, #53
l695: ldrEQB R5, [sp, -R10]
l696: mov R8, #65
l697: ldrNEB R6, [sp, -R8]
l698: mov R10, #5
l699: ldrLSB R0, [sp, -R10]
l700: ldrHIB R5, [sp, #-80]
l701: mov R0, #41
l702: ldrCSB R5, [sp, -R0]
l703: ldrB R1, [sp, #-63]
l704: mov R3, #50
l705: ldrB R2, [sp, -R3]
l706: ldrB R12, [sp, #-78]
l707: ldrB R11, [sp, #-76]
l708: mov R11, #9
l709: ldrCSB R8, [sp, -R11]
l710: mov R2, #49
l711: ldrB R1, [sp, -R2]
l712: ldrB R14, [sp, #-8]
l713: mov R8, #26
l714: ldrNEB R7, [sp, -R8]
l715: ldrB R0, [sp, #-67]
l716: ldrCCB R0, [sp, #-8]
l717: ldrB R2, [sp, #-25]
l718: mov R4, #61
l719: ldrVCB R3, [sp, -R4]
l720: mov R8, #38
l721: ldrGTB R0, [sp, -R8]
l722: mov R14, #65
l723: ldrVSB R9, [sp, -R14]
l724: ldrPLB R7, [sp, #-77]
l725: ldrLSB R12, [sp, #-35]
l726: ldrLEB R1, [sp, #-18]
l727: ldrB R5, [sp, #-52]
l728: mov R0, #63
l729: ldrLTB R5, [sp, -R0]
l730: mov R12, #38
l731: ldrB R11, [sp, -R12]
l732: mov R5, #77
l733: ldrB R4, [sp, -R5]
l734: mov R1, #9
l735: ldrB R3, [sp, -R1]
l736: ldrB R8, [sp, #-61]
l737: mov R7, #12
l738: ldrVCB R0, [sp, -R7]
l739: ldrB R0, [sp, #-37]
l740: mov R6, #34
l741: ldrGEB R10, [sp, -R6]
l742: ldrLTB R8, [sp, #-63]
l743: ldrCSB R10, [sp, #-23]
l744: ldrB R1, [sp, #-55]
l745: mov R3, #46
l746: ldrMIB R11, [sp, -R3]
l747: ldrB R0, [sp, #-73]
l748: ldrCSB R6, [sp, #-18]
l749: mov R4, #17
l750: ldrLTB R4, [sp, -R4]
l751: mov R6, #78
l752: ldrB R10, [sp, -R6]
l753: ldrB R6, [sp, #-71]
l754: mov R10, #36
l755: ldrGEB R0, [sp, -R10]
l756: mov R1, #34
l757: ldrGEB R14, [sp, -R1]
l758: mov R11, #40
l759: ldrMIB R2, [sp, -R11]
l760: mov R0, #16
l761: ldrB R3, [sp, -R0]
l762: mov R10, #70
l763: ldrLTB R2, [sp, -R10]
l764: mov R12, #66
l765: ldrVSB R12, [sp, -R12]
l766: mov R6, #61
l767: ldrB R10, [sp, -R6]
l768: mov R5, #34
l769: ldrB R11, [sp, -R5]
l770: mov R2, #60
l771: ldrB R7, [sp, -R2]
l772: ldrB R8, [sp, #-71]
l773: ldrVCB R2, [sp, #-35]
l774: mov R14, #36
l775: ldrCSB R2, [sp, -R14]
l776: ldrB R6, [sp, #-80]
l777: ldrPLB R9, [sp, #-5]
l778: mov R14, #17
l779: ldrB R3, [sp, -R14]
l780: ldrB R3, [sp, #-65]
l781: mov R1, #39
l782: ldrGTB R11, [sp, -R1]
l783: ldrB R12, [sp, #-45]
l784: mov R0, #41
l785: ldrB R10, [sp, -R0]
l786: mov R1, #75
l787: ldrB R12, [sp, -R1]
l788: ldrB R3, [sp, #-57]
l789: mov R1, #32
l790: ldrCCB R12, [sp, -R1]
l791: ldrHIB R10, [sp, #-58]
l792: mov R12, #34
l793: ldrB R5, [sp, -R12]
l794: mov R7, #57
l795: ldrB R5, [sp, -R7]
l796: ldrB R10, [sp, #-20]
l797: ldrB R7, [sp, #-55]
l798: mov R6, #34
l799: ldrLEB R4, [sp, -R6]
l800: ldrLTB R6, [sp, #-7]
l801: ldrB R9, [sp, #-25]
l802: ldrB R7, [sp, #-56]
l803: ldrB R4, [sp, #-53]
l804: mov R5, #25
l805: ldrLSB R5, [sp, -R5]
l806: ldrHIB R11, [sp, #-23]
l807: mov R0, #36
l808: ldrLEB R7, [sp, -R0]
l809: mov R12, #21
l810: ldrPLB R4, [sp, -R12]
l811: ldrB R0, [sp, #-18]
l812: mov R5, #68
l813: ldrB R11, [sp, -R5]
l814: mov R10, #74
l815: ldrCCB R10, [sp, -R10]
l816: ldrB R3, [sp, #-19]
l817: ldrCCB R3, [sp, #-19]
l818: ldrGEB R10, [sp, #-23]
l819: mov R9, #41
l820: ldrLSB R2, [sp, -R9]
l821: mov R1, #20
l822: ldrLSB R14, [sp, -R1]
l823: mov R2, #47
l824: ldrCCB R1, [sp, -R2]
l825: mov R12, #12
l826: ldrEQB R2, [sp, -R12]
l827: mov R7, #67
l828: ldrHIB R2, [sp, -R7]
l829: mov R3, #67
l830: ldrB R11, [sp, -R3]
l831: mov R9, #12
l832: ldrB R2, [sp, -R9]
l833: ldrVCB R2, [sp, #-61]
l834: mov R5, #70
l835: ldrLEB R0, [sp, -R5]
l836: ldrB R6, [sp, #-58]
l837: ldrB R8, [sp, #-16]
l838: mov R2, #38
l839: ldrLTB R1, [sp, -R2]
l840: ldrVCB R9, [sp, #-73]
l841: mov R7, #22
l842: ldrB R14, [sp, -R7]
l843: mov R7, #79
l844: ldrPLB R12, [sp, -R7]
l845: mov R0, #58
l846: ldrVSB R12, [sp, -R0]
l847: mov R5, #69
l848: ldrB R5, [sp, -R5]
l849: mov R6, #33
l850: ldrB R7, [sp, -R6]
l851: ldrB R8, [sp, #-69]
l852: mov R0, #75
l853: ldrCCB R12, [sp, -R0]
l854: ldrB R5, [sp, #-65]
l855: ldrB R7, [sp, #-73]
l856: ldrCCB R9, [sp, #-29]
l857: mov R1, #73
l858: ldrB R12, [sp, -R1]
l859: ldrB R4, [sp, #-12]
l860: mov R7, #77
l861: ldrB R1, [sp, -R7]
l862: mov R14, #10
l863: ldrVSB R6, [sp, -R14]
l864: mov R7, #18
l865: ldrEQB R11, [sp, -R7]
l866: ldrGTB R6, [sp, #-21]
l867: mov R2, #36
l868: ldrVCB R14, [sp, -R2]
l869: ldrPLB R14, [sp, #-8]
l870: mov R10, #27
l871: ldrB R0, [sp, -R10]
l872: ldrHIB R5, [sp, #-64]
l873: ldrHIB R1, [sp, #-56]
l874: ldrB R8, [sp, #-15]
l875: ldrLSB R4, [sp, #-69]
l876: ldrB R10, [sp, #-73]
l877: mov R14, #25
l878: ldrLSB R8, [sp, -R14]
l879: ldrPLB R6, [sp, #-80]
l880: mov R6, #80
l881: ldrMIB R11, [sp, -R6]
l882: ldrVCB R10, [sp, #-49]
l883: mov R4, #41
l884: ldrMIB R9, [sp, -R4]
l885: ldrB R3, [sp, #-76]
l886: ldrEQB R7, [sp, #-69]
l887: ldrB R7, [sp, #-39]
l888: ldrEQB R2, [sp, #-53]
l889: mov R11, #79
l890: ldrGEB R2, [sp, -R11]
l891: ldrPLB R4, [sp, #-33]
l892: mov R5, #10
l893: ldrMIB R1, [sp, -R5]
l894: ldrLEB R1, [sp, #-51]
l895: ldrGTB R5, [sp, #-59]
l896: mov R11, #68
l897: ldrCSB R4, [sp, -R11]
l898: mov R7, #10
l899: ldrB R0, [sp, -R7]
l900: ldrLEB R4, [sp, #-76]
l901: ldrB R2, [sp, #-12]
l902: ldrB R0, [sp, #-15]
l903: ldrGTB R14, [sp, #-78]
l904: ldrB R1, [sp, #-13]
l905: mov R1, #57
l906: ldrPLB R11, [sp, -R1]
l907: ldrGTB R2, [sp, #-6]
l908: mov R0, #56
l909: ldrB R5, [sp, -R0]
l910: mov R10, #13
l911: ldrLEB R1, [sp, -R10]
l912: mov R11, #14
l913: ldrLEB R5, [sp, -R11]
l914: ldrPLB R14, [sp, #-21]
l915: ldrCSB R4, [sp, #-19]
l916: ldrNEB R14, [sp, #-64]
l917: ldrB R5, [sp, #-69]
l918: ldrB R5, [sp, #-75]
l919: ldrVCB R9, [sp, #-73]
l920: mov R12, #65
l921: ldrB R12, [sp, -R12]
l922: mov R3, #72
l923: ldrB R1, [sp, -R3]
l924: mov R7, #8
l925: ldrLTB R14, [sp, -R7]
l926: ldrGEB R12, [sp, #-45]
l927: ldrB R3, [sp, #-45]
l928: mov R3, #46
l929: ldrB R1, [sp, -R3]
l930: ldrB R9, [sp, #-66]
l931: ldrB R2, [sp, #-10]
l932: mov R6, #24
l933: ldrVCB R7, [sp, -R6]
l934: ldrVSB R12, [sp, #-6]
l935: ldrEQB R0, [sp, #-20]
l936: mov R4, #53
l937: ldrB R12, [sp, -R4]
l938: ldrGTB R12, [sp, #-52]
l939: ldrLTB R9, [sp, #-53]
l940: ldrNEB R9, [sp, #-26]
l941: ldrB R11, [sp, #-18]
l942: mov R11, #42
l943: ldrB R11, [sp, -R11]
l944: ldrB R8, [sp, #-20]
l945: ldrNEB R2, [sp, #-19]
l946: ldrB R12, [sp, #-70]
l947: ldrPLB R9, [sp, #-20]
l948: mov R12, #20
l949: ldrB R10, [sp, -R12]
l950: mov R10, #29
l951: ldrB R8, [sp, -R10]
l952: mov R0, #80
l953: ldrNEB R14, [sp, -R0]
l954: mov R1, #47
l955: ldrHIB R6, [sp, -R1]
l956: ldrB R4, [sp, #-31]
l957: mov R6, #72
l958: ldrB R1, [sp, -R6]
l959: mov R3, #44
l960: ldrLTB R11, [sp, -R3]
l961: mov R3, #65
l962: ldrCSB R10, [sp, -R3]
l963: mov R4, #62
l964: ldrMIB R5, [sp, -R4]
l965: mov R11, #56
l966: ldrNEB R12, [sp, -R11]
l967: mov R8, #60
l968: ldrNEB R2, [sp, -R8]
l969: ldrCCB R4, [sp, #-38]
l970: ldrLEB R9, [sp, #-32]
l971: mov R12, #29
l972: ldrB R7, [sp, -R12]
l973: mov R14, #64
l974: ldrB R8, [sp, -R14]
l975: ldrHIB R5, [sp, #-32]
l976: mov R9, #72
l977: ldrB R2, [sp, -R9]
l978: mov R2, #33
l979: ldrB R11, [sp, -R2]
l980: mov R9, #31
l981: ldrB R7, [sp, -R9]
l982: ldrVCB R6, [sp, #-6]
l983: ldrLSB R12, [sp, #-44]
l984: ldrB R9, [sp, #-15]
l985: ldrB R5, [sp, #-22]
l986: mov R8, #12
l987: ldrLSB R2, [sp, -R8]
l988: mov R3, #77
l989: ldrGTB R7, [sp, -R3]
l990: ldrLEB R10, [sp, #-57]
l991: ldrB R2, [sp, #-75]
l992: ldrLEB R7, [sp, #-49]
l993: mov R2, #57
l994: ldrB R2, [sp, -R2]
l995: ldrGEB R8, [sp, #-78]
l996: ldrB R1, [sp, #-59]
l997: mov R4, #79
l998: ldrB R12, [sp, -R4]
l999: ldrGEB R12, [sp, #-60]
l1000: mov R0, #59
l1001: ldrLEB R14, [sp, -R0]
end: b end

