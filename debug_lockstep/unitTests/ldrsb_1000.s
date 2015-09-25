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
val1: .word 2127100916
next1:ldr R2, val2
b next2
val2: .word 621570030
next2:ldr R3, val3
b next3
val3: .word 866488389
next3:ldr R4, val4
b next4
val4: .word 4085092145
next4:ldr R5, val5
b next5
val5: .word 939677634
next5:ldr R6, val6
b next6
val6: .word 4136727947
next6:ldr R7, val7
b next7
val7: .word 788195583
next7:ldr R8, val8
b next8
val8: .word 2881998920
next8:ldr R9, val9
b next9
val9: .word 2137094820
next9:ldr R10, val10
b next10
val10: .word 11784663
next10:ldr R11, val11
b next11
val11: .word 916074862
next11:ldr R12, val12
b next12
val12: .word 3192802148
next12:ldr R14, val14
b next14
val14: .word 1464849571

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 4136991161
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 3999594361
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 1990017692
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 551435418
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 1073584337
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 1152287020
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 588702535
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 2757415269
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3169759239
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 1833997367
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 2618197096
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 1170379815
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 3085264368
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 1338572083
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 1004332927
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 1903958181
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 1040866924
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 2757985264
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 3652793282
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 3898925355
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 41631783
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: ldrsb R14, [sp, #-3]
l2: mov R6, #7
l3: ldrCSsb R12, [sp, -R6]
l4: ldrsb R4, [sp, #-71]
l5: mov R6, #41
l6: ldrsb R4, [sp, -R6]
l7: mov R12, #61
l8: ldrCSsb R10, [sp, -R12]
l9: ldrLEsb R3, [sp, #-79]
l10: mov R0, #66
l11: ldrsb R10, [sp, -R0]
l12: ldrsb R14, [sp, #-40]
l13: ldrsb R14, [sp, #-25]
l14: mov R2, #19
l15: ldrGEsb R12, [sp, -R2]
l16: ldrsb R9, [sp, #-72]
l17: ldrHIsb R5, [sp, #-75]
l18: ldrsb R10, [sp, #-66]
l19: ldrGEsb R12, [sp, #-54]
l20: mov R7, #26
l21: ldrsb R3, [sp, -R7]
l22: ldrLTsb R8, [sp, #-4]
l23: ldrGTsb R9, [sp, #-18]
l24: mov R10, #6
l25: ldrLEsb R5, [sp, -R10]
l26: ldrsb R8, [sp, #-3]
l27: ldrGTsb R1, [sp, #-80]
l28: ldrsb R7, [sp, #-41]
l29: mov R8, #80
l30: ldrHIsb R5, [sp, -R8]
l31: ldrVSsb R1, [sp, #-29]
l32: mov R3, #68
l33: ldrPLsb R11, [sp, -R3]
l34: mov R2, #45
l35: ldrsb R9, [sp, -R2]
l36: ldrsb R7, [sp, #-64]
l37: mov R14, #19
l38: ldrsb R11, [sp, -R14]
l39: ldrPLsb R5, [sp, #-72]
l40: mov R14, #34
l41: ldrsb R10, [sp, -R14]
l42: mov R7, #56
l43: ldrsb R10, [sp, -R7]
l44: mov R5, #25
l45: ldrLSsb R0, [sp, -R5]
l46: ldrsb R2, [sp, #-70]
l47: ldrsb R10, [sp, #-68]
l48: ldrCCsb R0, [sp, #-3]
l49: mov R2, #18
l50: ldrNEsb R14, [sp, -R2]
l51: mov R9, #31
l52: ldrCCsb R4, [sp, -R9]
l53: ldrsb R2, [sp, #-40]
l54: ldrLEsb R3, [sp, #-22]
l55: ldrsb R0, [sp, #-66]
l56: ldrsb R6, [sp, #-25]
l57: ldrMIsb R8, [sp, #-76]
l58: ldrsb R5, [sp, #-6]
l59: mov R10, #27
l60: ldrsb R8, [sp, -R10]
l61: mov R12, #18
l62: ldrHIsb R4, [sp, -R12]
l63: mov R10, #30
l64: ldrsb R14, [sp, -R10]
l65: ldrsb R4, [sp, #-59]
l66: mov R6, #18
l67: ldrsb R5, [sp, -R6]
l68: ldrLEsb R4, [sp, #-23]
l69: mov R8, #19
l70: ldrGEsb R5, [sp, -R8]
l71: mov R12, #36
l72: ldrVCsb R11, [sp, -R12]
l73: mov R1, #71
l74: ldrVCsb R10, [sp, -R1]
l75: ldrVSsb R9, [sp, #-34]
l76: mov R6, #79
l77: ldrLSsb R8, [sp, -R6]
l78: ldrsb R6, [sp, #-15]
l79: mov R11, #56
l80: ldrsb R3, [sp, -R11]
l81: mov R5, #24
l82: ldrsb R3, [sp, -R5]
l83: mov R6, #66
l84: ldrsb R14, [sp, -R6]
l85: ldrsb R10, [sp, #-34]
l86: mov R5, #3
l87: ldrsb R6, [sp, -R5]
l88: mov R5, #46
l89: ldrsb R8, [sp, -R5]
l90: ldrMIsb R3, [sp, #-14]
l91: mov R6, #47
l92: ldrsb R14, [sp, -R6]
l93: ldrGEsb R6, [sp, #-29]
l94: ldrsb R12, [sp, #-17]
l95: ldrNEsb R10, [sp, #-22]
l96: ldrsb R8, [sp, #-9]
l97: ldrLSsb R0, [sp, #-20]
l98: mov R0, #56
l99: ldrVCsb R8, [sp, -R0]
l100: ldrHIsb R3, [sp, #-24]
l101: ldrsb R8, [sp, #-3]
l102: mov R2, #2
l103: ldrsb R7, [sp, -R2]
l104: mov R7, #14
l105: ldrVSsb R7, [sp, -R7]
l106: ldrGTsb R11, [sp, #-1]
l107: ldrMIsb R0, [sp, #-62]
l108: mov R8, #17
l109: ldrLEsb R2, [sp, -R8]
l110: ldrMIsb R0, [sp, #-77]
l111: ldrEQsb R11, [sp, #-63]
l112: ldrGTsb R4, [sp, #-79]
l113: ldrNEsb R2, [sp, #-66]
l114: mov R8, #49
l115: ldrsb R1, [sp, -R8]
l116: ldrCCsb R2, [sp, #-60]
l117: mov R3, #9
l118: ldrsb R4, [sp, -R3]
l119: mov R11, #36
l120: ldrLSsb R14, [sp, -R11]
l121: ldrGTsb R0, [sp, #-46]
l122: ldrMIsb R7, [sp, #-6]
l123: mov R10, #11
l124: ldrsb R2, [sp, -R10]
l125: mov R10, #79
l126: ldrGTsb R0, [sp, -R10]
l127: mov R5, #12
l128: ldrsb R3, [sp, -R5]
l129: mov R3, #11
l130: ldrLTsb R11, [sp, -R3]
l131: ldrsb R11, [sp, #-18]
l132: ldrsb R3, [sp, #-13]
l133: mov R8, #37
l134: ldrsb R5, [sp, -R8]
l135: mov R2, #29
l136: ldrLTsb R4, [sp, -R2]
l137: mov R2, #43
l138: ldrsb R11, [sp, -R2]
l139: mov R14, #6
l140: ldrVCsb R8, [sp, -R14]
l141: mov R12, #59
l142: ldrLTsb R0, [sp, -R12]
l143: ldrsb R5, [sp, #-49]
l144: ldrsb R10, [sp, #-76]
l145: mov R6, #17
l146: ldrsb R6, [sp, -R6]
l147: mov R8, #40
l148: ldrsb R2, [sp, -R8]
l149: mov R11, #69
l150: ldrGTsb R5, [sp, -R11]
l151: ldrsb R0, [sp, #-72]
l152: mov R1, #29
l153: ldrEQsb R5, [sp, -R1]
l154: ldrVCsb R12, [sp, #-67]
l155: mov R14, #18
l156: ldrCSsb R0, [sp, -R14]
l157: mov R8, #23
l158: ldrsb R2, [sp, -R8]
l159: ldrCSsb R12, [sp, #-60]
l160: ldrLEsb R8, [sp, #-2]
l161: ldrGTsb R6, [sp, #-1]
l162: ldrGTsb R2, [sp, #-2]
l163: mov R2, #71
l164: ldrGTsb R7, [sp, -R2]
l165: ldrsb R2, [sp, #-48]
l166: mov R1, #62
l167: ldrCCsb R7, [sp, -R1]
l168: mov R5, #42
l169: ldrLSsb R4, [sp, -R5]
l170: ldrLEsb R0, [sp, #-40]
l171: ldrVCsb R6, [sp, #-57]
l172: mov R4, #71
l173: ldrLEsb R8, [sp, -R4]
l174: mov R11, #36
l175: ldrPLsb R11, [sp, -R11]
l176: ldrCCsb R6, [sp, #-37]
l177: ldrEQsb R5, [sp, #-25]
l178: ldrLEsb R12, [sp, #-79]
l179: mov R14, #17
l180: ldrsb R14, [sp, -R14]
l181: ldrsb R2, [sp, #-32]
l182: mov R2, #75
l183: ldrLSsb R6, [sp, -R2]
l184: ldrsb R9, [sp, #-58]
l185: ldrsb R4, [sp, #-32]
l186: ldrLSsb R9, [sp, #-18]
l187: mov R5, #35
l188: ldrsb R8, [sp, -R5]
l189: ldrsb R2, [sp, #-6]
l190: mov R1, #47
l191: ldrsb R2, [sp, -R1]
l192: mov R12, #21
l193: ldrsb R6, [sp, -R12]
l194: ldrVSsb R6, [sp, #-42]
l195: ldrsb R4, [sp, #-5]
l196: mov R5, #43
l197: ldrsb R7, [sp, -R5]
l198: ldrNEsb R3, [sp, #-36]
l199: mov R10, #7
l200: ldrHIsb R8, [sp, -R10]
l201: ldrLTsb R14, [sp, #-43]
l202: ldrsb R14, [sp, #-33]
l203: ldrsb R7, [sp, #-55]
l204: ldrCSsb R0, [sp, #-71]
l205: ldrCCsb R2, [sp, #-80]
l206: mov R14, #30
l207: ldrsb R10, [sp, -R14]
l208: ldrsb R5, [sp, #-56]
l209: ldrGEsb R14, [sp, #-37]
l210: mov R7, #69
l211: ldrsb R1, [sp, -R7]
l212: mov R14, #69
l213: ldrsb R1, [sp, -R14]
l214: ldrEQsb R3, [sp, #-38]
l215: ldrLSsb R6, [sp, #-43]
l216: ldrsb R8, [sp, #-29]
l217: mov R10, #27
l218: ldrsb R8, [sp, -R10]
l219: mov R2, #22
l220: ldrsb R11, [sp, -R2]
l221: ldrsb R12, [sp, #-40]
l222: mov R9, #5
l223: ldrsb R2, [sp, -R9]
l224: ldrsb R12, [sp, #-42]
l225: ldrsb R4, [sp, #-63]
l226: ldrLTsb R11, [sp, #-72]
l227: ldrLTsb R4, [sp, #-9]
l228: ldrCCsb R11, [sp, #-25]
l229: mov R11, #12
l230: ldrNEsb R5, [sp, -R11]
l231: ldrsb R7, [sp, #-77]
l232: mov R6, #33
l233: ldrsb R8, [sp, -R6]
l234: mov R3, #50
l235: ldrsb R3, [sp, -R3]
l236: mov R9, #49
l237: ldrGEsb R3, [sp, -R9]
l238: ldrsb R6, [sp, #-16]
l239: mov R14, #36
l240: ldrEQsb R2, [sp, -R14]
l241: mov R9, #24
l242: ldrLTsb R1, [sp, -R9]
l243: ldrVSsb R8, [sp, #-58]
l244: ldrLTsb R11, [sp, #-73]
l245: ldrNEsb R6, [sp, #-57]
l246: ldrsb R1, [sp, #-52]
l247: ldrsb R9, [sp, #-11]
l248: mov R7, #8
l249: ldrsb R0, [sp, -R7]
l250: mov R1, #60
l251: ldrLTsb R6, [sp, -R1]
l252: mov R0, #40
l253: ldrsb R14, [sp, -R0]
l254: mov R6, #6
l255: ldrMIsb R7, [sp, -R6]
l256: mov R7, #37
l257: ldrsb R4, [sp, -R7]
l258: ldrMIsb R4, [sp, #-51]
l259: mov R0, #21
l260: ldrGTsb R12, [sp, -R0]
l261: ldrsb R2, [sp, #-5]
l262: mov R11, #51
l263: ldrsb R1, [sp, -R11]
l264: mov R1, #9
l265: ldrNEsb R11, [sp, -R1]
l266: mov R3, #37
l267: ldrLEsb R14, [sp, -R3]
l268: ldrMIsb R7, [sp, #-33]
l269: ldrsb R0, [sp, #-64]
l270: mov R3, #36
l271: ldrLEsb R12, [sp, -R3]
l272: mov R0, #50
l273: ldrLSsb R10, [sp, -R0]
l274: mov R4, #8
l275: ldrMIsb R2, [sp, -R4]
l276: mov R1, #34
l277: ldrLSsb R6, [sp, -R1]
l278: mov R9, #4
l279: ldrsb R0, [sp, -R9]
l280: ldrNEsb R0, [sp, #-32]
l281: mov R2, #67
l282: ldrCSsb R3, [sp, -R2]
l283: mov R11, #19
l284: ldrLEsb R0, [sp, -R11]
l285: ldrsb R7, [sp, #-22]
l286: ldrNEsb R12, [sp, #-5]
l287: mov R12, #30
l288: ldrsb R0, [sp, -R12]
l289: ldrsb R10, [sp, #-26]
l290: ldrsb R11, [sp, #-39]
l291: mov R14, #20
l292: ldrsb R4, [sp, -R14]
l293: mov R1, #56
l294: ldrLEsb R10, [sp, -R1]
l295: ldrsb R7, [sp, #-52]
l296: ldrVSsb R12, [sp, #-61]
l297: mov R2, #6
l298: ldrsb R9, [sp, -R2]
l299: ldrCCsb R9, [sp, #-7]
l300: ldrCSsb R11, [sp, #-33]
l301: mov R11, #56
l302: ldrsb R9, [sp, -R11]
l303: mov R2, #12
l304: ldrEQsb R10, [sp, -R2]
l305: ldrGTsb R0, [sp, #-29]
l306: mov R1, #74
l307: ldrsb R1, [sp, -R1]
l308: mov R7, #2
l309: ldrsb R7, [sp, -R7]
l310: ldrCSsb R12, [sp, #-46]
l311: ldrCCsb R7, [sp, #-53]
l312: ldrsb R14, [sp, #-65]
l313: mov R14, #55
l314: ldrCCsb R2, [sp, -R14]
l315: ldrsb R5, [sp, #-61]
l316: mov R8, #76
l317: ldrCSsb R11, [sp, -R8]
l318: mov R4, #47
l319: ldrCCsb R7, [sp, -R4]
l320: mov R2, #57
l321: ldrVSsb R10, [sp, -R2]
l322: mov R9, #39
l323: ldrsb R5, [sp, -R9]
l324: ldrsb R3, [sp, #-5]
l325: mov R6, #39
l326: ldrsb R11, [sp, -R6]
l327: ldrsb R3, [sp, #-41]
l328: ldrEQsb R12, [sp, #-66]
l329: mov R4, #35
l330: ldrGEsb R12, [sp, -R4]
l331: ldrHIsb R9, [sp, #-41]
l332: mov R12, #46
l333: ldrsb R11, [sp, -R12]
l334: mov R6, #63
l335: ldrGTsb R12, [sp, -R6]
l336: ldrNEsb R0, [sp, #-67]
l337: ldrLEsb R12, [sp, #-54]
l338: ldrHIsb R2, [sp, #-2]
l339: ldrsb R9, [sp, #-47]
l340: mov R7, #63
l341: ldrsb R5, [sp, -R7]
l342: mov R5, #6
l343: ldrsb R10, [sp, -R5]
l344: mov R12, #23
l345: ldrLTsb R4, [sp, -R12]
l346: ldrVSsb R8, [sp, #-61]
l347: ldrEQsb R9, [sp, #-32]
l348: ldrLTsb R3, [sp, #-11]
l349: ldrsb R6, [sp, #-63]
l350: ldrEQsb R1, [sp, #-23]
l351: ldrLSsb R9, [sp, #-13]
l352: mov R0, #40
l353: ldrGEsb R4, [sp, -R0]
l354: mov R6, #8
l355: ldrHIsb R0, [sp, -R6]
l356: ldrLEsb R4, [sp, #-65]
l357: mov R1, #5
l358: ldrsb R7, [sp, -R1]
l359: ldrCSsb R10, [sp, #-37]
l360: ldrsb R0, [sp, #-55]
l361: mov R12, #15
l362: ldrsb R4, [sp, -R12]
l363: mov R2, #79
l364: ldrPLsb R3, [sp, -R2]
l365: ldrLTsb R7, [sp, #-51]
l366: ldrLTsb R7, [sp, #-24]
l367: ldrHIsb R12, [sp, #-18]
l368: mov R6, #52
l369: ldrsb R6, [sp, -R6]
l370: ldrCSsb R7, [sp, #-39]
l371: ldrPLsb R2, [sp, #-56]
l372: mov R7, #16
l373: ldrCSsb R14, [sp, -R7]
l374: mov R11, #32
l375: ldrVSsb R9, [sp, -R11]
l376: mov R10, #34
l377: ldrsb R5, [sp, -R10]
l378: mov R0, #47
l379: ldrLSsb R0, [sp, -R0]
l380: mov R2, #75
l381: ldrsb R3, [sp, -R2]
l382: mov R5, #8
l383: ldrsb R7, [sp, -R5]
l384: ldrMIsb R4, [sp, #-35]
l385: mov R9, #74
l386: ldrGTsb R14, [sp, -R9]
l387: mov R0, #3
l388: ldrLSsb R2, [sp, -R0]
l389: mov R12, #50
l390: ldrGEsb R11, [sp, -R12]
l391: ldrGTsb R10, [sp, #-77]
l392: mov R11, #18
l393: ldrsb R14, [sp, -R11]
l394: ldrsb R9, [sp, #-35]
l395: mov R7, #74
l396: ldrNEsb R2, [sp, -R7]
l397: mov R3, #77
l398: ldrsb R5, [sp, -R3]
l399: ldrCSsb R2, [sp, #-7]
l400: ldrMIsb R1, [sp, #-37]
l401: mov R5, #5
l402: ldrsb R14, [sp, -R5]
l403: mov R0, #33
l404: ldrLTsb R7, [sp, -R0]
l405: ldrGEsb R12, [sp, #-69]
l406: ldrsb R0, [sp, #-32]
l407: ldrMIsb R0, [sp, #-76]
l408: mov R8, #36
l409: ldrLTsb R11, [sp, -R8]
l410: ldrEQsb R14, [sp, #-3]
l411: mov R3, #74
l412: ldrsb R7, [sp, -R3]
l413: ldrsb R1, [sp, #-31]
l414: ldrHIsb R6, [sp, #-19]
l415: ldrsb R6, [sp, #-74]
l416: ldrMIsb R8, [sp, #-75]
l417: ldrVCsb R4, [sp, #-50]
l418: ldrLSsb R4, [sp, #-8]
l419: mov R2, #43
l420: ldrLSsb R3, [sp, -R2]
l421: ldrsb R0, [sp, #-3]
l422: mov R0, #45
l423: ldrsb R7, [sp, -R0]
l424: mov R1, #70
l425: ldrLTsb R1, [sp, -R1]
l426: ldrsb R12, [sp, #-68]
l427: mov R12, #13
l428: ldrsb R2, [sp, -R12]
l429: ldrsb R7, [sp, #-60]
l430: ldrMIsb R8, [sp, #-75]
l431: ldrsb R6, [sp, #-69]
l432: ldrCCsb R11, [sp, #-33]
l433: ldrsb R3, [sp, #-24]
l434: ldrsb R5, [sp, #-19]
l435: mov R3, #56
l436: ldrLSsb R2, [sp, -R3]
l437: ldrGTsb R0, [sp, #-62]
l438: ldrLSsb R3, [sp, #-10]
l439: ldrsb R8, [sp, #-53]
l440: ldrVSsb R2, [sp, #-57]
l441: mov R8, #39
l442: ldrsb R10, [sp, -R8]
l443: ldrsb R2, [sp, #-47]
l444: mov R3, #25
l445: ldrMIsb R14, [sp, -R3]
l446: ldrsb R7, [sp, #-15]
l447: mov R11, #5
l448: ldrsb R11, [sp, -R11]
l449: mov R11, #9
l450: ldrsb R8, [sp, -R11]
l451: ldrsb R6, [sp, #-77]
l452: ldrVSsb R2, [sp, #-75]
l453: ldrVSsb R3, [sp, #-55]
l454: mov R14, #77
l455: ldrsb R5, [sp, -R14]
l456: ldrsb R4, [sp, #-22]
l457: ldrLEsb R9, [sp, #-29]
l458: mov R6, #45
l459: ldrLSsb R8, [sp, -R6]
l460: ldrGEsb R2, [sp, #-39]
l461: ldrsb R1, [sp, #-62]
l462: ldrVCsb R2, [sp, #-38]
l463: mov R2, #72
l464: ldrsb R6, [sp, -R2]
l465: mov R10, #58
l466: ldrsb R0, [sp, -R10]
l467: mov R4, #26
l468: ldrHIsb R5, [sp, -R4]
l469: ldrsb R10, [sp, #-16]
l470: mov R7, #17
l471: ldrMIsb R14, [sp, -R7]
l472: mov R2, #23
l473: ldrLSsb R0, [sp, -R2]
l474: ldrsb R6, [sp, #-32]
l475: ldrGTsb R3, [sp, #-3]
l476: ldrPLsb R8, [sp, #-11]
l477: mov R9, #22
l478: ldrLSsb R12, [sp, -R9]
l479: ldrCCsb R5, [sp, #-42]
l480: ldrsb R6, [sp, #-29]
l481: mov R0, #80
l482: ldrLSsb R8, [sp, -R0]
l483: mov R3, #39
l484: ldrsb R9, [sp, -R3]
l485: ldrCSsb R10, [sp, #-27]
l486: mov R9, #40
l487: ldrsb R5, [sp, -R9]
l488: ldrsb R8, [sp, #-12]
l489: mov R14, #51
l490: ldrsb R4, [sp, -R14]
l491: ldrCSsb R5, [sp, #-53]
l492: mov R7, #12
l493: ldrsb R1, [sp, -R7]
l494: ldrsb R2, [sp, #-40]
l495: mov R1, #29
l496: ldrsb R6, [sp, -R1]
l497: mov R8, #30
l498: ldrsb R2, [sp, -R8]
l499: ldrPLsb R0, [sp, #-25]
l500: ldrNEsb R4, [sp, #-15]
l501: mov R6, #66
l502: ldrMIsb R0, [sp, -R6]
l503: mov R1, #65
l504: ldrCCsb R7, [sp, -R1]
l505: mov R6, #7
l506: ldrMIsb R4, [sp, -R6]
l507: ldrLEsb R3, [sp, #-78]
l508: ldrsb R4, [sp, #-53]
l509: ldrsb R8, [sp, #-32]
l510: mov R1, #53
l511: ldrsb R11, [sp, -R1]
l512: mov R14, #29
l513: ldrsb R7, [sp, -R14]
l514: ldrsb R11, [sp, #-12]
l515: ldrLEsb R2, [sp, #-57]
l516: mov R11, #53
l517: ldrCCsb R6, [sp, -R11]
l518: ldrsb R4, [sp, #-2]
l519: mov R7, #80
l520: ldrPLsb R8, [sp, -R7]
l521: mov R0, #10
l522: ldrVCsb R14, [sp, -R0]
l523: ldrsb R9, [sp, #-37]
l524: mov R10, #8
l525: ldrLSsb R12, [sp, -R10]
l526: mov R4, #9
l527: ldrsb R8, [sp, -R4]
l528: mov R5, #74
l529: ldrsb R0, [sp, -R5]
l530: mov R14, #60
l531: ldrNEsb R9, [sp, -R14]
l532: ldrCCsb R0, [sp, #-77]
l533: ldrLSsb R5, [sp, #-38]
l534: mov R8, #34
l535: ldrMIsb R2, [sp, -R8]
l536: mov R3, #4
l537: ldrsb R11, [sp, -R3]
l538: mov R4, #5
l539: ldrHIsb R10, [sp, -R4]
l540: mov R9, #43
l541: ldrCSsb R5, [sp, -R9]
l542: mov R5, #59
l543: ldrEQsb R10, [sp, -R5]
l544: mov R5, #65
l545: ldrsb R2, [sp, -R5]
l546: ldrGEsb R11, [sp, #-46]
l547: mov R12, #26
l548: ldrsb R10, [sp, -R12]
l549: mov R7, #21
l550: ldrVSsb R5, [sp, -R7]
l551: mov R9, #35
l552: ldrsb R3, [sp, -R9]
l553: ldrVCsb R6, [sp, #-68]
l554: ldrPLsb R10, [sp, #-53]
l555: ldrNEsb R11, [sp, #-61]
l556: ldrCSsb R2, [sp, #-12]
l557: mov R6, #75
l558: ldrsb R3, [sp, -R6]
l559: mov R6, #72
l560: ldrPLsb R10, [sp, -R6]
l561: mov R8, #42
l562: ldrsb R12, [sp, -R8]
l563: mov R3, #37
l564: ldrLEsb R14, [sp, -R3]
l565: ldrsb R7, [sp, #-52]
l566: mov R14, #21
l567: ldrLEsb R10, [sp, -R14]
l568: ldrNEsb R0, [sp, #-55]
l569: ldrsb R3, [sp, #-2]
l570: mov R2, #44
l571: ldrGTsb R10, [sp, -R2]
l572: mov R4, #21
l573: ldrsb R5, [sp, -R4]
l574: mov R10, #28
l575: ldrsb R1, [sp, -R10]
l576: mov R2, #77
l577: ldrsb R1, [sp, -R2]
l578: mov R12, #2
l579: ldrsb R4, [sp, -R12]
l580: ldrsb R14, [sp, #-13]
l581: mov R6, #39
l582: ldrsb R12, [sp, -R6]
l583: mov R8, #6
l584: ldrEQsb R9, [sp, -R8]
l585: ldrPLsb R9, [sp, #-69]
l586: mov R6, #75
l587: ldrEQsb R7, [sp, -R6]
l588: mov R0, #13
l589: ldrsb R5, [sp, -R0]
l590: mov R10, #32
l591: ldrsb R1, [sp, -R10]
l592: ldrsb R14, [sp, #-63]
l593: ldrsb R0, [sp, #-16]
l594: mov R2, #56
l595: ldrsb R0, [sp, -R2]
l596: ldrHIsb R14, [sp, #-17]
l597: ldrLEsb R5, [sp, #-53]
l598: ldrsb R0, [sp, #-30]
l599: mov R0, #58
l600: ldrsb R3, [sp, -R0]
l601: mov R4, #35
l602: ldrLTsb R10, [sp, -R4]
l603: ldrsb R8, [sp, #-64]
l604: ldrLSsb R4, [sp, #-15]
l605: ldrVCsb R14, [sp, #-52]
l606: mov R12, #31
l607: ldrVCsb R6, [sp, -R12]
l608: mov R14, #53
l609: ldrsb R0, [sp, -R14]
l610: mov R12, #66
l611: ldrsb R8, [sp, -R12]
l612: ldrPLsb R11, [sp, #-77]
l613: mov R14, #75
l614: ldrsb R12, [sp, -R14]
l615: mov R4, #60
l616: ldrsb R4, [sp, -R4]
l617: ldrGEsb R2, [sp, #-3]
l618: mov R9, #32
l619: ldrsb R5, [sp, -R9]
l620: mov R14, #6
l621: ldrPLsb R7, [sp, -R14]
l622: ldrsb R1, [sp, #-50]
l623: mov R8, #2
l624: ldrMIsb R7, [sp, -R8]
l625: ldrPLsb R10, [sp, #-47]
l626: mov R10, #67
l627: ldrsb R1, [sp, -R10]
l628: ldrsb R7, [sp, #-27]
l629: ldrEQsb R1, [sp, #-12]
l630: ldrsb R14, [sp, #-26]
l631: mov R14, #75
l632: ldrMIsb R8, [sp, -R14]
l633: ldrsb R6, [sp, #-69]
l634: mov R10, #12
l635: ldrGEsb R5, [sp, -R10]
l636: mov R10, #38
l637: ldrsb R10, [sp, -R10]
l638: mov R7, #17
l639: ldrsb R8, [sp, -R7]
l640: mov R8, #51
l641: ldrPLsb R14, [sp, -R8]
l642: mov R4, #4
l643: ldrsb R1, [sp, -R4]
l644: mov R2, #45
l645: ldrVSsb R11, [sp, -R2]
l646: mov R0, #29
l647: ldrsb R12, [sp, -R0]
l648: ldrHIsb R8, [sp, #-52]
l649: mov R4, #70
l650: ldrMIsb R3, [sp, -R4]
l651: mov R2, #45
l652: ldrLEsb R12, [sp, -R2]
l653: mov R10, #63
l654: ldrLEsb R0, [sp, -R10]
l655: mov R10, #9
l656: ldrsb R5, [sp, -R10]
l657: mov R2, #15
l658: ldrGTsb R3, [sp, -R2]
l659: ldrLEsb R6, [sp, #-68]
l660: ldrVSsb R2, [sp, #-53]
l661: ldrGEsb R5, [sp, #-46]
l662: ldrHIsb R8, [sp, #-73]
l663: mov R4, #18
l664: ldrsb R0, [sp, -R4]
l665: mov R9, #2
l666: ldrMIsb R9, [sp, -R9]
l667: ldrsb R3, [sp, #-55]
l668: mov R8, #79
l669: ldrVSsb R8, [sp, -R8]
l670: mov R10, #27
l671: ldrsb R2, [sp, -R10]
l672: ldrsb R10, [sp, #-71]
l673: ldrCSsb R3, [sp, #-56]
l674: mov R10, #38
l675: ldrCSsb R0, [sp, -R10]
l676: ldrMIsb R4, [sp, #-65]
l677: ldrCCsb R2, [sp, #-16]
l678: mov R11, #29
l679: ldrsb R2, [sp, -R11]
l680: ldrsb R4, [sp, #-57]
l681: mov R11, #71
l682: ldrCSsb R4, [sp, -R11]
l683: mov R5, #3
l684: ldrsb R10, [sp, -R5]
l685: mov R2, #7
l686: ldrCCsb R2, [sp, -R2]
l687: ldrHIsb R6, [sp, #-62]
l688: ldrGTsb R4, [sp, #-9]
l689: mov R11, #53
l690: ldrLTsb R9, [sp, -R11]
l691: mov R11, #45
l692: ldrsb R7, [sp, -R11]
l693: mov R14, #70
l694: ldrsb R12, [sp, -R14]
l695: mov R2, #64
l696: ldrsb R2, [sp, -R2]
l697: ldrLTsb R6, [sp, #-48]
l698: ldrLSsb R4, [sp, #-47]
l699: ldrsb R4, [sp, #-24]
l700: ldrEQsb R12, [sp, #-22]
l701: mov R8, #59
l702: ldrGEsb R11, [sp, -R8]
l703: mov R1, #40
l704: ldrsb R7, [sp, -R1]
l705: mov R3, #50
l706: ldrGTsb R7, [sp, -R3]
l707: mov R4, #25
l708: ldrVCsb R4, [sp, -R4]
l709: mov R0, #7
l710: ldrGEsb R10, [sp, -R0]
l711: mov R9, #65
l712: ldrsb R12, [sp, -R9]
l713: ldrsb R5, [sp, #-35]
l714: mov R3, #38
l715: ldrCCsb R7, [sp, -R3]
l716: ldrGEsb R5, [sp, #-54]
l717: mov R0, #20
l718: ldrVCsb R11, [sp, -R0]
l719: ldrsb R4, [sp, #-2]
l720: mov R2, #77
l721: ldrHIsb R3, [sp, -R2]
l722: ldrsb R12, [sp, #-64]
l723: ldrsb R6, [sp, #-39]
l724: mov R9, #71
l725: ldrsb R10, [sp, -R9]
l726: mov R2, #80
l727: ldrsb R2, [sp, -R2]
l728: ldrsb R1, [sp, #-9]
l729: ldrNEsb R0, [sp, #-8]
l730: mov R10, #61
l731: ldrsb R6, [sp, -R10]
l732: mov R3, #80
l733: ldrVSsb R3, [sp, -R3]
l734: ldrVSsb R2, [sp, #-51]
l735: ldrPLsb R2, [sp, #-55]
l736: mov R7, #55
l737: ldrMIsb R4, [sp, -R7]
l738: ldrHIsb R5, [sp, #-4]
l739: ldrNEsb R10, [sp, #-73]
l740: ldrsb R2, [sp, #-20]
l741: mov R8, #39
l742: ldrGTsb R3, [sp, -R8]
l743: ldrGEsb R4, [sp, #-14]
l744: mov R0, #16
l745: ldrPLsb R10, [sp, -R0]
l746: mov R3, #3
l747: ldrGTsb R2, [sp, -R3]
l748: ldrLSsb R4, [sp, #-74]
l749: ldrsb R5, [sp, #-63]
l750: ldrLEsb R4, [sp, #-44]
l751: ldrLTsb R14, [sp, #-48]
l752: ldrsb R5, [sp, #-6]
l753: ldrGTsb R8, [sp, #-69]
l754: mov R5, #6
l755: ldrLEsb R12, [sp, -R5]
l756: ldrsb R14, [sp, #-41]
l757: ldrsb R7, [sp, #-16]
l758: ldrPLsb R1, [sp, #-3]
l759: ldrPLsb R8, [sp, #-9]
l760: ldrCCsb R3, [sp, #-77]
l761: mov R0, #48
l762: ldrLSsb R5, [sp, -R0]
l763: ldrNEsb R2, [sp, #-43]
l764: mov R9, #17
l765: ldrsb R7, [sp, -R9]
l766: mov R2, #9
l767: ldrsb R0, [sp, -R2]
l768: ldrsb R2, [sp, #-55]
l769: mov R9, #24
l770: ldrNEsb R8, [sp, -R9]
l771: ldrGTsb R2, [sp, #-65]
l772: mov R5, #14
l773: ldrsb R10, [sp, -R5]
l774: mov R7, #47
l775: ldrsb R14, [sp, -R7]
l776: mov R2, #3
l777: ldrCSsb R10, [sp, -R2]
l778: ldrHIsb R3, [sp, #-34]
l779: ldrVCsb R7, [sp, #-11]
l780: mov R2, #56
l781: ldrLTsb R10, [sp, -R2]
l782: mov R12, #18
l783: ldrsb R0, [sp, -R12]
l784: mov R12, #30
l785: ldrEQsb R7, [sp, -R12]
l786: mov R2, #14
l787: ldrsb R9, [sp, -R2]
l788: ldrsb R11, [sp, #-40]
l789: mov R5, #75
l790: ldrVCsb R0, [sp, -R5]
l791: mov R12, #58
l792: ldrLEsb R0, [sp, -R12]
l793: mov R14, #39
l794: ldrVSsb R5, [sp, -R14]
l795: mov R0, #60
l796: ldrsb R12, [sp, -R0]
l797: mov R8, #50
l798: ldrMIsb R12, [sp, -R8]
l799: mov R10, #58
l800: ldrMIsb R3, [sp, -R10]
l801: mov R6, #8
l802: ldrsb R0, [sp, -R6]
l803: ldrsb R11, [sp, #-30]
l804: ldrsb R7, [sp, #-78]
l805: mov R10, #28
l806: ldrMIsb R1, [sp, -R10]
l807: mov R6, #62
l808: ldrsb R3, [sp, -R6]
l809: mov R0, #33
l810: ldrCSsb R7, [sp, -R0]
l811: ldrGEsb R10, [sp, #-55]
l812: ldrLEsb R10, [sp, #-20]
l813: mov R12, #43
l814: ldrPLsb R3, [sp, -R12]
l815: mov R12, #66
l816: ldrsb R6, [sp, -R12]
l817: mov R6, #7
l818: ldrGTsb R1, [sp, -R6]
l819: ldrPLsb R10, [sp, #-23]
l820: ldrGEsb R7, [sp, #-69]
l821: mov R0, #4
l822: ldrGTsb R5, [sp, -R0]
l823: ldrsb R10, [sp, #-58]
l824: mov R2, #47
l825: ldrsb R10, [sp, -R2]
l826: ldrsb R6, [sp, #-5]
l827: mov R14, #35
l828: ldrVSsb R9, [sp, -R14]
l829: mov R9, #25
l830: ldrsb R9, [sp, -R9]
l831: ldrCCsb R9, [sp, #-70]
l832: ldrsb R14, [sp, #-46]
l833: ldrMIsb R11, [sp, #-68]
l834: ldrPLsb R7, [sp, #-11]
l835: ldrLTsb R3, [sp, #-70]
l836: mov R14, #60
l837: ldrEQsb R12, [sp, -R14]
l838: ldrPLsb R14, [sp, #-11]
l839: ldrVCsb R4, [sp, #-71]
l840: ldrVSsb R8, [sp, #-38]
l841: mov R5, #6
l842: ldrMIsb R12, [sp, -R5]
l843: mov R1, #17
l844: ldrsb R7, [sp, -R1]
l845: mov R8, #6
l846: ldrLTsb R12, [sp, -R8]
l847: ldrsb R6, [sp, #-48]
l848: ldrsb R3, [sp, #-20]
l849: mov R3, #69
l850: ldrLEsb R10, [sp, -R3]
l851: mov R0, #47
l852: ldrVSsb R11, [sp, -R0]
l853: mov R5, #35
l854: ldrLTsb R5, [sp, -R5]
l855: ldrHIsb R3, [sp, #-78]
l856: mov R0, #78
l857: ldrVCsb R12, [sp, -R0]
l858: mov R7, #20
l859: ldrsb R3, [sp, -R7]
l860: mov R10, #6
l861: ldrsb R0, [sp, -R10]
l862: mov R3, #28
l863: ldrVCsb R3, [sp, -R3]
l864: ldrsb R6, [sp, #-50]
l865: mov R6, #79
l866: ldrLSsb R4, [sp, -R6]
l867: ldrLTsb R3, [sp, #-57]
l868: ldrsb R9, [sp, #-40]
l869: ldrsb R14, [sp, #-66]
l870: mov R5, #58
l871: ldrHIsb R12, [sp, -R5]
l872: mov R11, #53
l873: ldrLTsb R10, [sp, -R11]
l874: ldrNEsb R2, [sp, #-17]
l875: ldrsb R10, [sp, #-80]
l876: mov R8, #52
l877: ldrGEsb R14, [sp, -R8]
l878: mov R8, #1
l879: ldrsb R10, [sp, -R8]
l880: ldrCSsb R3, [sp, #-72]
l881: ldrNEsb R5, [sp, #-48]
l882: ldrsb R2, [sp, #-10]
l883: ldrLSsb R12, [sp, #-31]
l884: ldrsb R5, [sp, #-4]
l885: mov R8, #30
l886: ldrLSsb R11, [sp, -R8]
l887: ldrsb R2, [sp, #-68]
l888: ldrNEsb R14, [sp, #-63]
l889: ldrLSsb R14, [sp, #-19]
l890: ldrsb R8, [sp, #-53]
l891: mov R7, #60
l892: ldrCSsb R5, [sp, -R7]
l893: mov R11, #60
l894: ldrNEsb R10, [sp, -R11]
l895: ldrsb R7, [sp, #-55]
l896: mov R3, #9
l897: ldrsb R7, [sp, -R3]
l898: mov R7, #60
l899: ldrNEsb R7, [sp, -R7]
l900: mov R10, #42
l901: ldrsb R7, [sp, -R10]
l902: ldrCSsb R9, [sp, #-14]
l903: mov R8, #24
l904: ldrLSsb R0, [sp, -R8]
l905: ldrsb R2, [sp, #-19]
l906: mov R11, #19
l907: ldrCSsb R12, [sp, -R11]
l908: ldrsb R11, [sp, #-16]
l909: mov R3, #76
l910: ldrsb R3, [sp, -R3]
l911: mov R2, #36
l912: ldrCSsb R8, [sp, -R2]
l913: mov R7, #17
l914: ldrsb R10, [sp, -R7]
l915: mov R11, #23
l916: ldrGEsb R5, [sp, -R11]
l917: ldrCCsb R0, [sp, #-53]
l918: mov R5, #2
l919: ldrGTsb R4, [sp, -R5]
l920: mov R5, #36
l921: ldrPLsb R6, [sp, -R5]
l922: ldrVSsb R4, [sp, #-8]
l923: ldrsb R7, [sp, #-64]
l924: mov R7, #47
l925: ldrGTsb R3, [sp, -R7]
l926: mov R12, #49
l927: ldrEQsb R0, [sp, -R12]
l928: mov R5, #39
l929: ldrNEsb R5, [sp, -R5]
l930: mov R0, #4
l931: ldrsb R12, [sp, -R0]
l932: mov R4, #73
l933: ldrLSsb R3, [sp, -R4]
l934: ldrCSsb R11, [sp, #-73]
l935: ldrGTsb R6, [sp, #-11]
l936: mov R14, #55
l937: ldrCCsb R9, [sp, -R14]
l938: ldrsb R14, [sp, #-16]
l939: ldrsb R5, [sp, #-36]
l940: ldrsb R7, [sp, #-69]
l941: ldrsb R3, [sp, #-71]
l942: mov R6, #10
l943: ldrLEsb R2, [sp, -R6]
l944: mov R6, #34
l945: ldrVSsb R9, [sp, -R6]
l946: ldrsb R14, [sp, #-46]
l947: ldrLSsb R4, [sp, #-33]
l948: ldrsb R8, [sp, #-48]
l949: ldrsb R4, [sp, #-33]
l950: mov R1, #56
l951: ldrsb R5, [sp, -R1]
l952: ldrsb R7, [sp, #-62]
l953: ldrGEsb R0, [sp, #-35]
l954: ldrPLsb R7, [sp, #-40]
l955: mov R1, #48
l956: ldrGEsb R9, [sp, -R1]
l957: mov R10, #78
l958: ldrGEsb R6, [sp, -R10]
l959: ldrsb R3, [sp, #-23]
l960: mov R12, #48
l961: ldrGTsb R12, [sp, -R12]
l962: mov R9, #65
l963: ldrsb R0, [sp, -R9]
l964: ldrsb R3, [sp, #-77]
l965: mov R1, #48
l966: ldrVSsb R3, [sp, -R1]
l967: ldrsb R1, [sp, #-25]
l968: ldrLEsb R9, [sp, #-5]
l969: ldrsb R7, [sp, #-3]
l970: ldrCCsb R0, [sp, #-40]
l971: mov R3, #79
l972: ldrsb R9, [sp, -R3]
l973: ldrsb R4, [sp, #-61]
l974: mov R3, #64
l975: ldrGTsb R3, [sp, -R3]
l976: ldrsb R7, [sp, #-61]
l977: ldrsb R11, [sp, #-60]
l978: mov R14, #5
l979: ldrVCsb R7, [sp, -R14]
l980: ldrsb R2, [sp, #-30]
l981: mov R4, #21
l982: ldrMIsb R11, [sp, -R4]
l983: mov R12, #45
l984: ldrGTsb R8, [sp, -R12]
l985: ldrHIsb R2, [sp, #-11]
l986: mov R4, #41
l987: ldrLTsb R9, [sp, -R4]
l988: ldrsb R1, [sp, #-57]
l989: ldrsb R14, [sp, #-23]
l990: ldrLEsb R7, [sp, #-31]
l991: ldrsb R8, [sp, #-58]
l992: mov R11, #78
l993: ldrNEsb R5, [sp, -R11]
l994: ldrCCsb R2, [sp, #-22]
l995: ldrEQsb R7, [sp, #-47]
l996: ldrVCsb R4, [sp, #-31]
l997: mov R1, #48
l998: ldrCSsb R5, [sp, -R1]
l999: ldrsb R14, [sp, #-61]
l1000: mov R14, #6
l1001: ldrsb R0, [sp, -R14]
end: b end

