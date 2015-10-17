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
val1: .word 2927493227
next1:ldr R2, val2
b next2
val2: .word 1619194425
next2:ldr R3, val3
b next3
val3: .word 471199461
next3:ldr R4, val4
b next4
val4: .word 4003382879
next4:ldr R5, val5
b next5
val5: .word 1894050819
next5:ldr R6, val6
b next6
val6: .word 396597477
next6:ldr R7, val7
b next7
val7: .word 2320155707
next7:ldr R8, val8
b next8
val8: .word 3313663958
next8:ldr R9, val9
b next9
val9: .word 2302246589
next9:ldr R10, val10
b next10
val10: .word 976760424
next10:ldr R11, val11
b next11
val11: .word 1905255623
next11:ldr R12, val12
b next12
val12: .word 1356071072
next12:ldr R14, val14
b next14
val14: .word 4137997095

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 1851496961
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 3125572553
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3726789062
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 129943669
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 2807441405
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 1552940931
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 1225811628
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 3083207241
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 656176638
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 3631273079
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 1428185126
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 69266347
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 3134595891
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 2285080499
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 1851915826
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 2656242600
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 3537181159
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 356224320
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 1871515434
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 3967355725
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 3962179517
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: strNEB R0, [sp, #-71]
l2: mov R1, #71
l3: ldrB R11, [sp, -R1]
l4: mov R6, #72
l5: ldrCCB R7, [sp, -R6]
l6: strLEB R14, [sp, #-62]
l7: mov R1, #44
l8: strNEB R4, [sp, -R1]
l9: mov R6, #21
l10: ldrB R8, [sp, -R6]
l11: mov R2, #73
l12: strB R7, [sp, -R2]
l13: strB R4, [sp, #-33]
l14: ldrB R9, [sp, #-24]
l15: strMIB R9, [sp, #-68]
l16: strMIB R4, [sp, #-73]
l17: strLEB R0, [sp, #-49]
l18: strB R7, [sp, #-71]
l19: mov R12, #39
l20: ldrB R8, [sp, -R12]
l21: mov R12, #79
l22: strCSB R12, [sp, -R12]
l23: mov R12, #37
l24: strLSB R6, [sp, -R12]
l25: mov R2, #40
l26: ldrB R6, [sp, -R2]
l27: mov R11, #24
l28: ldrB R1, [sp, -R11]
l29: strHIB R9, [sp, #-80]
l30: strEQB R5, [sp, #-35]
l31: mov R11, #65
l32: ldrVSB R4, [sp, -R11]
l33: ldrB R14, [sp, #-32]
l34: strHIB R5, [sp, #-57]
l35: mov R12, #56
l36: strB R12, [sp, -R12]
l37: mov R5, #79
l38: ldrB R3, [sp, -R5]
l39: mov R10, #6
l40: ldrB R10, [sp, -R10]
l41: ldrPLB R11, [sp, #-25]
l42: mov R6, #32
l43: strB R8, [sp, -R6]
l44: ldrB R10, [sp, #-25]
l45: ldrMIB R5, [sp, #-44]
l46: mov R4, #70
l47: strPLB R6, [sp, -R4]
l48: mov R3, #25
l49: strLSB R10, [sp, -R3]
l50: mov R11, #48
l51: strNEB R4, [sp, -R11]
l52: mov R0, #57
l53: strVSB R12, [sp, -R0]
l54: mov R14, #78
l55: ldrHIB R8, [sp, -R14]
l56: mov R10, #50
l57: ldrCSB R4, [sp, -R10]
l58: mov R7, #41
l59: strLSB R14, [sp, -R7]
l60: strLEB R14, [sp, #-38]
l61: mov R9, #25
l62: ldrGEB R9, [sp, -R9]
l63: mov R8, #58
l64: strHIB R8, [sp, -R8]
l65: mov R1, #74
l66: strEQB R0, [sp, -R1]
l67: mov R11, #65
l68: strMIB R8, [sp, -R11]
l69: mov R4, #51
l70: ldrB R4, [sp, -R4]
l71: mov R12, #70
l72: ldrMIB R1, [sp, -R12]
l73: ldrVSB R3, [sp, #-45]
l74: strMIB R3, [sp, #-54]
l75: mov R14, #38
l76: strB R6, [sp, -R14]
l77: ldrB R10, [sp, #-60]
l78: mov R6, #66
l79: ldrVSB R14, [sp, -R6]
l80: strB R9, [sp, #-8]
l81: mov R7, #7
l82: strB R11, [sp, -R7]
l83: ldrLTB R9, [sp, #-23]
l84: strB R2, [sp, #-44]
l85: ldrNEB R4, [sp, #-74]
l86: ldrGTB R2, [sp, #-7]
l87: mov R10, #34
l88: strLEB R11, [sp, -R10]
l89: strB R2, [sp, #-20]
l90: strB R10, [sp, #-58]
l91: mov R11, #72
l92: strB R7, [sp, -R11]
l93: ldrB R3, [sp, #-20]
l94: strMIB R1, [sp, #-75]
l95: strB R14, [sp, #-80]
l96: strB R0, [sp, #-72]
l97: ldrB R4, [sp, #-17]
l98: ldrEQB R4, [sp, #-64]
l99: mov R1, #34
l100: strNEB R4, [sp, -R1]
l101: ldrLTB R2, [sp, #-18]
l102: mov R12, #56
l103: ldrGEB R5, [sp, -R12]
l104: ldrMIB R5, [sp, #-33]
l105: mov R6, #73
l106: ldrB R1, [sp, -R6]
l107: strB R7, [sp, #-33]
l108: mov R5, #22
l109: ldrVCB R11, [sp, -R5]
l110: ldrB R2, [sp, #-56]
l111: ldrLTB R3, [sp, #-50]
l112: strCSB R10, [sp, #-70]
l113: mov R0, #66
l114: strLSB R14, [sp, -R0]
l115: ldrB R6, [sp, #-22]
l116: ldrCSB R11, [sp, #-7]
l117: mov R9, #21
l118: strCSB R6, [sp, -R9]
l119: mov R8, #23
l120: ldrCSB R2, [sp, -R8]
l121: ldrB R0, [sp, #-63]
l122: mov R11, #13
l123: strVSB R3, [sp, -R11]
l124: mov R7, #20
l125: strHIB R12, [sp, -R7]
l126: mov R5, #51
l127: ldrB R5, [sp, -R5]
l128: mov R12, #31
l129: ldrNEB R11, [sp, -R12]
l130: mov R3, #61
l131: ldrB R3, [sp, -R3]
l132: mov R3, #20
l133: ldrB R9, [sp, -R3]
l134: ldrB R6, [sp, #-14]
l135: mov R11, #53
l136: ldrB R10, [sp, -R11]
l137: ldrB R3, [sp, #-8]
l138: mov R5, #29
l139: strB R8, [sp, -R5]
l140: strLTB R6, [sp, #-52]
l141: mov R10, #75
l142: ldrLEB R1, [sp, -R10]
l143: strB R2, [sp, #-67]
l144: mov R1, #8
l145: strMIB R0, [sp, -R1]
l146: ldrPLB R9, [sp, #-72]
l147: ldrB R12, [sp, #-76]
l148: mov R6, #40
l149: strVCB R9, [sp, -R6]
l150: mov R14, #47
l151: ldrB R14, [sp, -R14]
l152: mov R10, #47
l153: strB R3, [sp, -R10]
l154: mov R11, #17
l155: ldrB R12, [sp, -R11]
l156: strEQB R3, [sp, #-52]
l157: strGTB R6, [sp, #-80]
l158: mov R9, #67
l159: ldrLTB R6, [sp, -R9]
l160: mov R6, #56
l161: strB R4, [sp, -R6]
l162: ldrEQB R0, [sp, #-49]
l163: mov R7, #15
l164: ldrMIB R9, [sp, -R7]
l165: strB R14, [sp, #-45]
l166: strEQB R8, [sp, #-18]
l167: ldrNEB R4, [sp, #-37]
l168: mov R14, #29
l169: ldrPLB R14, [sp, -R14]
l170: mov R7, #54
l171: strCCB R6, [sp, -R7]
l172: mov R0, #17
l173: strB R3, [sp, -R0]
l174: mov R3, #8
l175: strB R5, [sp, -R3]
l176: mov R7, #34
l177: strB R2, [sp, -R7]
l178: strCSB R11, [sp, #-48]
l179: mov R6, #46
l180: ldrHIB R9, [sp, -R6]
l181: strB R9, [sp, #-39]
l182: ldrGEB R9, [sp, #-55]
l183: mov R7, #22
l184: ldrCCB R2, [sp, -R7]
l185: strB R2, [sp, #-12]
l186: mov R9, #16
l187: ldrB R3, [sp, -R9]
l188: mov R9, #52
l189: ldrHIB R9, [sp, -R9]
l190: strLTB R5, [sp, #-5]
l191: strB R4, [sp, #-48]
l192: strMIB R10, [sp, #-11]
l193: ldrEQB R3, [sp, #-47]
l194: mov R7, #70
l195: ldrGEB R3, [sp, -R7]
l196: mov R10, #48
l197: ldrB R4, [sp, -R10]
l198: mov R7, #50
l199: ldrB R1, [sp, -R7]
l200: ldrGTB R11, [sp, #-39]
l201: strB R12, [sp, #-61]
l202: mov R2, #19
l203: ldrNEB R10, [sp, -R2]
l204: mov R1, #45
l205: strLSB R2, [sp, -R1]
l206: mov R7, #43
l207: ldrB R8, [sp, -R7]
l208: strB R7, [sp, #-18]
l209: strGTB R2, [sp, #-26]
l210: mov R7, #44
l211: strB R6, [sp, -R7]
l212: strB R12, [sp, #-6]
l213: strB R14, [sp, #-29]
l214: mov R14, #66
l215: strCSB R9, [sp, -R14]
l216: strHIB R14, [sp, #-20]
l217: strLEB R9, [sp, #-67]
l218: strCCB R9, [sp, #-51]
l219: strB R14, [sp, #-75]
l220: mov R6, #57
l221: strLTB R7, [sp, -R6]
l222: mov R7, #10
l223: strB R2, [sp, -R7]
l224: mov R8, #76
l225: strPLB R14, [sp, -R8]
l226: mov R9, #64
l227: strB R11, [sp, -R9]
l228: ldrPLB R1, [sp, #-59]
l229: mov R7, #67
l230: ldrCCB R4, [sp, -R7]
l231: mov R6, #66
l232: ldrB R4, [sp, -R6]
l233: mov R8, #10
l234: strB R5, [sp, -R8]
l235: strGTB R1, [sp, #-9]
l236: mov R1, #73
l237: ldrCSB R12, [sp, -R1]
l238: ldrNEB R7, [sp, #-80]
l239: mov R5, #68
l240: strHIB R8, [sp, -R5]
l241: mov R9, #6
l242: ldrB R7, [sp, -R9]
l243: strGTB R1, [sp, #-22]
l244: strVCB R5, [sp, #-25]
l245: mov R5, #60
l246: ldrB R0, [sp, -R5]
l247: strNEB R7, [sp, #-13]
l248: mov R2, #43
l249: ldrGEB R10, [sp, -R2]
l250: ldrCSB R9, [sp, #-12]
l251: mov R7, #5
l252: ldrB R3, [sp, -R7]
l253: ldrCSB R2, [sp, #-80]
l254: mov R8, #20
l255: strB R9, [sp, -R8]
l256: mov R4, #49
l257: ldrGEB R11, [sp, -R4]
l258: strB R2, [sp, #-65]
l259: strGEB R11, [sp, #-14]
l260: mov R3, #59
l261: strB R7, [sp, -R3]
l262: mov R8, #56
l263: ldrLTB R2, [sp, -R8]
l264: mov R12, #47
l265: strB R1, [sp, -R12]
l266: mov R7, #69
l267: strB R7, [sp, -R7]
l268: mov R2, #60
l269: ldrVCB R1, [sp, -R2]
l270: mov R5, #43
l271: strCCB R8, [sp, -R5]
l272: mov R4, #42
l273: strGEB R3, [sp, -R4]
l274: mov R14, #5
l275: ldrVCB R6, [sp, -R14]
l276: mov R10, #43
l277: ldrLSB R12, [sp, -R10]
l278: mov R4, #73
l279: strEQB R12, [sp, -R4]
l280: ldrLTB R7, [sp, #-24]
l281: ldrB R4, [sp, #-48]
l282: strB R5, [sp, #-74]
l283: mov R14, #74
l284: strNEB R7, [sp, -R14]
l285: mov R1, #62
l286: strB R11, [sp, -R1]
l287: strB R1, [sp, #-62]
l288: mov R9, #55
l289: strB R0, [sp, -R9]
l290: strB R14, [sp, #-72]
l291: ldrEQB R7, [sp, #-24]
l292: mov R4, #58
l293: strVSB R12, [sp, -R4]
l294: mov R0, #15
l295: ldrB R2, [sp, -R0]
l296: mov R12, #36
l297: strB R3, [sp, -R12]
l298: mov R1, #29
l299: ldrGEB R12, [sp, -R1]
l300: mov R11, #52
l301: strLSB R3, [sp, -R11]
l302: strCSB R4, [sp, #-55]
l303: strEQB R7, [sp, #-73]
l304: mov R6, #33
l305: strCCB R5, [sp, -R6]
l306: mov R7, #26
l307: ldrB R8, [sp, -R7]
l308: mov R8, #75
l309: strNEB R11, [sp, -R8]
l310: mov R12, #5
l311: strHIB R9, [sp, -R12]
l312: strLTB R11, [sp, #-23]
l313: mov R14, #77
l314: ldrLSB R5, [sp, -R14]
l315: strMIB R4, [sp, #-61]
l316: mov R5, #45
l317: ldrCCB R4, [sp, -R5]
l318: ldrPLB R14, [sp, #-66]
l319: strPLB R10, [sp, #-27]
l320: strB R11, [sp, #-8]
l321: mov R3, #67
l322: strCCB R7, [sp, -R3]
l323: mov R10, #53
l324: ldrPLB R9, [sp, -R10]
l325: strCCB R1, [sp, #-80]
l326: mov R11, #6
l327: strVSB R3, [sp, -R11]
l328: mov R0, #24
l329: strB R11, [sp, -R0]
l330: mov R11, #17
l331: ldrCCB R12, [sp, -R11]
l332: mov R14, #69
l333: ldrB R8, [sp, -R14]
l334: mov R3, #22
l335: strCCB R9, [sp, -R3]
l336: mov R11, #6
l337: strB R6, [sp, -R11]
l338: mov R2, #23
l339: ldrB R2, [sp, -R2]
l340: mov R6, #23
l341: strGEB R0, [sp, -R6]
l342: ldrLEB R1, [sp, #-40]
l343: mov R1, #45
l344: ldrB R1, [sp, -R1]
l345: mov R3, #55
l346: strEQB R7, [sp, -R3]
l347: mov R9, #46
l348: ldrEQB R2, [sp, -R9]
l349: mov R10, #56
l350: ldrEQB R11, [sp, -R10]
l351: mov R6, #79
l352: strB R12, [sp, -R6]
l353: mov R6, #11
l354: ldrB R2, [sp, -R6]
l355: mov R7, #33
l356: ldrB R2, [sp, -R7]
l357: strB R4, [sp, #-34]
l358: mov R3, #5
l359: ldrB R2, [sp, -R3]
l360: strCCB R5, [sp, #-71]
l361: mov R2, #52
l362: strGEB R10, [sp, -R2]
l363: mov R8, #26
l364: strGTB R12, [sp, -R8]
l365: mov R0, #43
l366: ldrHIB R4, [sp, -R0]
l367: strB R7, [sp, #-45]
l368: mov R2, #77
l369: strB R4, [sp, -R2]
l370: strCCB R10, [sp, #-80]
l371: mov R0, #31
l372: strB R14, [sp, -R0]
l373: ldrVCB R2, [sp, #-39]
l374: ldrB R0, [sp, #-18]
l375: mov R7, #46
l376: ldrB R14, [sp, -R7]
l377: strCSB R0, [sp, #-50]
l378: mov R9, #19
l379: ldrB R1, [sp, -R9]
l380: mov R4, #69
l381: strGTB R1, [sp, -R4]
l382: mov R6, #18
l383: strVSB R7, [sp, -R6]
l384: ldrVCB R8, [sp, #-73]
l385: ldrLSB R14, [sp, #-13]
l386: ldrCSB R5, [sp, #-73]
l387: ldrLEB R4, [sp, #-22]
l388: strCSB R7, [sp, #-8]
l389: ldrB R3, [sp, #-51]
l390: mov R11, #6
l391: ldrB R12, [sp, -R11]
l392: strLTB R9, [sp, #-54]
l393: strB R10, [sp, #-65]
l394: mov R10, #33
l395: strGEB R3, [sp, -R10]
l396: strCCB R14, [sp, #-53]
l397: ldrEQB R11, [sp, #-34]
l398: mov R4, #79
l399: strB R9, [sp, -R4]
l400: mov R3, #10
l401: strB R11, [sp, -R3]
l402: strB R5, [sp, #-49]
l403: ldrCSB R14, [sp, #-33]
l404: mov R0, #26
l405: strB R1, [sp, -R0]
l406: ldrNEB R10, [sp, #-77]
l407: strB R5, [sp, #-31]
l408: mov R7, #62
l409: ldrGTB R12, [sp, -R7]
l410: mov R3, #18
l411: strB R3, [sp, -R3]
l412: mov R8, #71
l413: strGEB R14, [sp, -R8]
l414: strB R12, [sp, #-68]
l415: mov R12, #18
l416: ldrMIB R14, [sp, -R12]
l417: mov R11, #78
l418: strB R6, [sp, -R11]
l419: strHIB R0, [sp, #-37]
l420: mov R10, #50
l421: ldrLTB R1, [sp, -R10]
l422: mov R3, #49
l423: strB R1, [sp, -R3]
l424: ldrCCB R10, [sp, #-13]
l425: mov R6, #66
l426: strCCB R14, [sp, -R6]
l427: mov R6, #30
l428: ldrLTB R3, [sp, -R6]
l429: strPLB R0, [sp, #-47]
l430: ldrB R11, [sp, #-46]
l431: mov R3, #30
l432: strCSB R2, [sp, -R3]
l433: strB R8, [sp, #-35]
l434: strB R7, [sp, #-19]
l435: strB R7, [sp, #-22]
l436: ldrCCB R4, [sp, #-42]
l437: mov R9, #12
l438: strEQB R6, [sp, -R9]
l439: ldrB R9, [sp, #-22]
l440: strB R2, [sp, #-30]
l441: ldrB R0, [sp, #-61]
l442: strHIB R14, [sp, #-44]
l443: mov R4, #22
l444: strB R0, [sp, -R4]
l445: strB R3, [sp, #-79]
l446: ldrEQB R4, [sp, #-22]
l447: strLTB R4, [sp, #-20]
l448: mov R9, #52
l449: ldrVCB R11, [sp, -R9]
l450: ldrB R1, [sp, #-56]
l451: mov R4, #25
l452: strPLB R0, [sp, -R4]
l453: mov R2, #77
l454: ldrVCB R11, [sp, -R2]
l455: ldrB R4, [sp, #-65]
l456: mov R7, #54
l457: strB R1, [sp, -R7]
l458: mov R14, #15
l459: ldrCSB R14, [sp, -R14]
l460: mov R12, #20
l461: ldrB R12, [sp, -R12]
l462: mov R10, #63
l463: ldrB R3, [sp, -R10]
l464: ldrGTB R9, [sp, #-31]
l465: strB R11, [sp, #-20]
l466: mov R6, #60
l467: strB R10, [sp, -R6]
l468: mov R9, #51
l469: strB R1, [sp, -R9]
l470: mov R10, #44
l471: ldrVSB R0, [sp, -R10]
l472: strB R8, [sp, #-27]
l473: strLSB R4, [sp, #-51]
l474: mov R6, #28
l475: strEQB R9, [sp, -R6]
l476: ldrB R7, [sp, #-66]
l477: mov R1, #32
l478: ldrVCB R9, [sp, -R1]
l479: mov R10, #13
l480: strB R0, [sp, -R10]
l481: strLEB R3, [sp, #-47]
l482: mov R3, #14
l483: strB R7, [sp, -R3]
l484: strGEB R9, [sp, #-59]
l485: ldrB R3, [sp, #-26]
l486: strVCB R7, [sp, #-73]
l487: mov R14, #42
l488: ldrLEB R3, [sp, -R14]
l489: strB R3, [sp, #-44]
l490: mov R6, #61
l491: ldrCCB R5, [sp, -R6]
l492: mov R8, #29
l493: strGEB R6, [sp, -R8]
l494: mov R1, #8
l495: ldrB R7, [sp, -R1]
l496: mov R5, #39
l497: ldrGTB R2, [sp, -R5]
l498: ldrB R7, [sp, #-8]
l499: strLTB R10, [sp, #-42]
l500: mov R7, #75
l501: strB R8, [sp, -R7]
l502: mov R5, #70
l503: strCSB R6, [sp, -R5]
l504: mov R8, #54
l505: ldrEQB R7, [sp, -R8]
l506: strCSB R5, [sp, #-11]
l507: ldrHIB R1, [sp, #-22]
l508: ldrB R5, [sp, #-24]
l509: mov R3, #6
l510: ldrHIB R3, [sp, -R3]
l511: mov R5, #22
l512: ldrB R1, [sp, -R5]
l513: strB R12, [sp, #-49]
l514: strB R11, [sp, #-70]
l515: strB R6, [sp, #-61]
l516: ldrHIB R9, [sp, #-76]
l517: strB R7, [sp, #-23]
l518: strGEB R7, [sp, #-32]
l519: mov R7, #66
l520: ldrB R4, [sp, -R7]
l521: mov R6, #69
l522: ldrLSB R0, [sp, -R6]
l523: mov R8, #23
l524: strB R9, [sp, -R8]
l525: mov R10, #41
l526: strB R2, [sp, -R10]
l527: strCCB R1, [sp, #-22]
l528: ldrLEB R14, [sp, #-47]
l529: mov R4, #53
l530: strLSB R12, [sp, -R4]
l531: strLSB R4, [sp, #-10]
l532: mov R4, #77
l533: strB R7, [sp, -R4]
l534: mov R2, #7
l535: strB R10, [sp, -R2]
l536: mov R4, #39
l537: ldrGEB R12, [sp, -R4]
l538: ldrLSB R11, [sp, #-28]
l539: strLEB R0, [sp, #-19]
l540: mov R4, #13
l541: ldrGTB R8, [sp, -R4]
l542: strMIB R11, [sp, #-58]
l543: mov R9, #18
l544: ldrGTB R0, [sp, -R9]
l545: strNEB R10, [sp, #-70]
l546: mov R6, #15
l547: ldrLSB R9, [sp, -R6]
l548: mov R7, #20
l549: strB R6, [sp, -R7]
l550: mov R8, #67
l551: strB R4, [sp, -R8]
l552: ldrB R9, [sp, #-47]
l553: strB R3, [sp, #-42]
l554: strB R12, [sp, #-78]
l555: ldrLSB R1, [sp, #-19]
l556: strHIB R10, [sp, #-14]
l557: mov R9, #42
l558: strB R4, [sp, -R9]
l559: mov R0, #40
l560: ldrLEB R10, [sp, -R0]
l561: mov R9, #25
l562: ldrB R12, [sp, -R9]
l563: mov R3, #61
l564: strB R4, [sp, -R3]
l565: ldrB R11, [sp, #-34]
l566: mov R5, #5
l567: ldrEQB R5, [sp, -R5]
l568: mov R6, #26
l569: ldrB R2, [sp, -R6]
l570: mov R4, #49
l571: strLSB R14, [sp, -R4]
l572: ldrCSB R3, [sp, #-41]
l573: ldrVCB R11, [sp, #-49]
l574: ldrCSB R2, [sp, #-42]
l575: ldrB R9, [sp, #-5]
l576: strB R9, [sp, #-59]
l577: strB R9, [sp, #-58]
l578: mov R4, #80
l579: ldrB R0, [sp, -R4]
l580: mov R8, #18
l581: ldrPLB R0, [sp, -R8]
l582: strB R2, [sp, #-72]
l583: mov R12, #19
l584: ldrB R2, [sp, -R12]
l585: mov R12, #16
l586: ldrB R0, [sp, -R12]
l587: mov R10, #22
l588: strB R0, [sp, -R10]
l589: ldrVSB R9, [sp, #-72]
l590: ldrNEB R1, [sp, #-57]
l591: mov R2, #45
l592: ldrGEB R1, [sp, -R2]
l593: mov R6, #18
l594: strNEB R6, [sp, -R6]
l595: strVCB R2, [sp, #-61]
l596: mov R7, #69
l597: strB R14, [sp, -R7]
l598: mov R6, #45
l599: strLSB R9, [sp, -R6]
l600: mov R11, #39
l601: strB R6, [sp, -R11]
l602: strVSB R7, [sp, #-41]
l603: mov R7, #27
l604: ldrEQB R14, [sp, -R7]
l605: ldrLSB R1, [sp, #-44]
l606: ldrB R6, [sp, #-66]
l607: mov R8, #16
l608: strCSB R14, [sp, -R8]
l609: strEQB R2, [sp, #-64]
l610: mov R12, #53
l611: ldrGEB R3, [sp, -R12]
l612: mov R0, #67
l613: strCCB R1, [sp, -R0]
l614: mov R2, #14
l615: strB R5, [sp, -R2]
l616: mov R14, #75
l617: ldrMIB R14, [sp, -R14]
l618: strGEB R14, [sp, #-39]
l619: strGEB R7, [sp, #-5]
l620: strLEB R2, [sp, #-41]
l621: mov R11, #59
l622: ldrMIB R4, [sp, -R11]
l623: mov R12, #5
l624: ldrCCB R5, [sp, -R12]
l625: strNEB R4, [sp, #-63]
l626: ldrB R12, [sp, #-63]
l627: ldrGTB R5, [sp, #-14]
l628: mov R6, #64
l629: ldrGTB R7, [sp, -R6]
l630: mov R9, #78
l631: ldrNEB R14, [sp, -R9]
l632: mov R2, #7
l633: strCCB R2, [sp, -R2]
l634: mov R10, #22
l635: ldrB R3, [sp, -R10]
l636: strLEB R12, [sp, #-49]
l637: mov R12, #55
l638: ldrGTB R4, [sp, -R12]
l639: mov R6, #59
l640: strPLB R5, [sp, -R6]
l641: strB R7, [sp, #-12]
l642: mov R9, #6
l643: strMIB R7, [sp, -R9]
l644: mov R9, #35
l645: strPLB R2, [sp, -R9]
l646: ldrLTB R10, [sp, #-45]
l647: ldrLTB R3, [sp, #-49]
l648: strB R11, [sp, #-23]
l649: ldrLTB R10, [sp, #-49]
l650: strB R6, [sp, #-56]
l651: mov R5, #44
l652: strB R7, [sp, -R5]
l653: strNEB R10, [sp, #-27]
l654: ldrGEB R6, [sp, #-32]
l655: mov R3, #18
l656: strB R4, [sp, -R3]
l657: ldrNEB R0, [sp, #-10]
l658: ldrMIB R6, [sp, #-52]
l659: strHIB R3, [sp, #-34]
l660: ldrB R4, [sp, #-20]
l661: ldrLSB R2, [sp, #-15]
l662: ldrB R12, [sp, #-5]
l663: mov R6, #21
l664: ldrMIB R5, [sp, -R6]
l665: ldrNEB R14, [sp, #-35]
l666: mov R9, #33
l667: strEQB R10, [sp, -R9]
l668: ldrEQB R1, [sp, #-34]
l669: mov R3, #18
l670: ldrNEB R3, [sp, -R3]
l671: strB R8, [sp, #-77]
l672: ldrB R10, [sp, #-77]
l673: ldrB R2, [sp, #-53]
l674: mov R1, #32
l675: ldrNEB R6, [sp, -R1]
l676: ldrLEB R8, [sp, #-73]
l677: mov R5, #61
l678: strB R9, [sp, -R5]
l679: mov R7, #30
l680: strEQB R0, [sp, -R7]
l681: mov R6, #38
l682: ldrVCB R12, [sp, -R6]
l683: mov R0, #73
l684: ldrB R14, [sp, -R0]
l685: mov R10, #35
l686: ldrCSB R6, [sp, -R10]
l687: strNEB R7, [sp, #-7]
l688: strB R8, [sp, #-27]
l689: strB R14, [sp, #-21]
l690: ldrHIB R10, [sp, #-80]
l691: strLEB R8, [sp, #-41]
l692: ldrVSB R10, [sp, #-27]
l693: mov R4, #46
l694: strB R0, [sp, -R4]
l695: strCSB R14, [sp, #-72]
l696: mov R12, #28
l697: strB R9, [sp, -R12]
l698: ldrVCB R1, [sp, #-52]
l699: strEQB R4, [sp, #-38]
l700: mov R3, #63
l701: strPLB R0, [sp, -R3]
l702: ldrNEB R2, [sp, #-47]
l703: strB R5, [sp, #-21]
l704: mov R5, #48
l705: ldrLTB R0, [sp, -R5]
l706: ldrVCB R0, [sp, #-21]
l707: mov R0, #22
l708: strPLB R14, [sp, -R0]
l709: strLTB R14, [sp, #-78]
l710: mov R1, #54
l711: strGTB R4, [sp, -R1]
l712: mov R8, #6
l713: strB R10, [sp, -R8]
l714: strVSB R6, [sp, #-28]
l715: mov R11, #7
l716: strGEB R4, [sp, -R11]
l717: mov R14, #48
l718: ldrB R8, [sp, -R14]
l719: strB R2, [sp, #-69]
l720: ldrB R10, [sp, #-24]
l721: mov R10, #75
l722: ldrGEB R9, [sp, -R10]
l723: mov R12, #35
l724: strB R5, [sp, -R12]
l725: mov R10, #10
l726: ldrB R12, [sp, -R10]
l727: mov R9, #72
l728: strGTB R1, [sp, -R9]
l729: mov R5, #73
l730: strEQB R8, [sp, -R5]
l731: ldrLEB R7, [sp, #-18]
l732: strB R14, [sp, #-80]
l733: strPLB R5, [sp, #-45]
l734: ldrLSB R8, [sp, #-18]
l735: strPLB R4, [sp, #-27]
l736: strB R9, [sp, #-63]
l737: mov R11, #5
l738: strLTB R3, [sp, -R11]
l739: mov R14, #46
l740: ldrB R7, [sp, -R14]
l741: mov R6, #72
l742: ldrVSB R3, [sp, -R6]
l743: mov R0, #47
l744: ldrB R4, [sp, -R0]
l745: strLTB R2, [sp, #-24]
l746: strB R1, [sp, #-54]
l747: strPLB R2, [sp, #-23]
l748: mov R14, #29
l749: strEQB R12, [sp, -R14]
l750: ldrHIB R4, [sp, #-63]
l751: mov R3, #70
l752: ldrB R7, [sp, -R3]
l753: mov R14, #69
l754: ldrNEB R0, [sp, -R14]
l755: mov R0, #61
l756: ldrGEB R11, [sp, -R0]
l757: strLTB R10, [sp, #-74]
l758: mov R5, #73
l759: ldrMIB R4, [sp, -R5]
l760: mov R2, #75
l761: strB R12, [sp, -R2]
l762: mov R10, #51
l763: strVCB R14, [sp, -R10]
l764: mov R9, #30
l765: ldrLEB R11, [sp, -R9]
l766: mov R9, #48
l767: ldrB R2, [sp, -R9]
l768: strB R14, [sp, #-73]
l769: strB R0, [sp, #-25]
l770: strEQB R6, [sp, #-57]
l771: strB R6, [sp, #-51]
l772: strB R14, [sp, #-10]
l773: strB R14, [sp, #-7]
l774: mov R7, #32
l775: ldrLSB R7, [sp, -R7]
l776: ldrCSB R10, [sp, #-12]
l777: mov R0, #80
l778: strLEB R10, [sp, -R0]
l779: mov R4, #38
l780: ldrVCB R6, [sp, -R4]
l781: mov R12, #34
l782: ldrB R0, [sp, -R12]
l783: mov R9, #44
l784: strB R9, [sp, -R9]
l785: mov R8, #48
l786: strB R8, [sp, -R8]
l787: mov R14, #36
l788: strHIB R0, [sp, -R14]
l789: mov R14, #74
l790: strGTB R3, [sp, -R14]
l791: ldrVSB R6, [sp, #-35]
l792: mov R10, #45
l793: ldrB R2, [sp, -R10]
l794: strVSB R12, [sp, #-66]
l795: ldrB R11, [sp, #-71]
l796: mov R9, #46
l797: ldrB R7, [sp, -R9]
l798: mov R4, #78
l799: strB R1, [sp, -R4]
l800: mov R9, #34
l801: ldrB R5, [sp, -R9]
l802: mov R7, #60
l803: strB R1, [sp, -R7]
l804: ldrHIB R2, [sp, #-9]
l805: mov R9, #61
l806: ldrB R6, [sp, -R9]
l807: strGTB R0, [sp, #-5]
l808: mov R9, #42
l809: strLTB R0, [sp, -R9]
l810: mov R1, #75
l811: strB R2, [sp, -R1]
l812: ldrCSB R1, [sp, #-31]
l813: ldrB R0, [sp, #-22]
l814: mov R9, #74
l815: strB R1, [sp, -R9]
l816: mov R12, #38
l817: strHIB R14, [sp, -R12]
l818: mov R0, #56
l819: ldrHIB R12, [sp, -R0]
l820: ldrB R0, [sp, #-39]
l821: strNEB R11, [sp, #-79]
l822: strVSB R1, [sp, #-23]
l823: mov R0, #38
l824: ldrB R8, [sp, -R0]
l825: mov R9, #18
l826: strLTB R7, [sp, -R9]
l827: mov R9, #28
l828: ldrGTB R12, [sp, -R9]
l829: mov R2, #66
l830: strHIB R9, [sp, -R2]
l831: strEQB R12, [sp, #-70]
l832: strEQB R0, [sp, #-35]
l833: mov R4, #80
l834: strGEB R8, [sp, -R4]
l835: ldrVCB R14, [sp, #-47]
l836: mov R4, #61
l837: strB R4, [sp, -R4]
l838: mov R9, #20
l839: strCSB R8, [sp, -R9]
l840: mov R1, #46
l841: ldrB R10, [sp, -R1]
l842: mov R3, #77
l843: ldrLSB R7, [sp, -R3]
l844: mov R5, #66
l845: strGEB R4, [sp, -R5]
l846: strNEB R12, [sp, #-24]
l847: mov R7, #33
l848: ldrB R1, [sp, -R7]
l849: strLSB R7, [sp, #-9]
l850: strNEB R0, [sp, #-40]
l851: mov R2, #32
l852: ldrCSB R3, [sp, -R2]
l853: ldrCSB R12, [sp, #-30]
l854: mov R5, #11
l855: strB R7, [sp, -R5]
l856: mov R3, #41
l857: ldrVSB R6, [sp, -R3]
l858: mov R9, #27
l859: ldrLTB R0, [sp, -R9]
l860: ldrGEB R14, [sp, #-32]
l861: mov R1, #21
l862: strB R5, [sp, -R1]
l863: mov R0, #9
l864: strVSB R4, [sp, -R0]
l865: ldrB R5, [sp, #-54]
l866: mov R4, #77
l867: ldrPLB R14, [sp, -R4]
l868: mov R12, #12
l869: ldrEQB R5, [sp, -R12]
l870: strB R3, [sp, #-17]
l871: mov R11, #15
l872: strVCB R8, [sp, -R11]
l873: mov R10, #34
l874: ldrB R8, [sp, -R10]
l875: strHIB R3, [sp, #-52]
l876: mov R5, #49
l877: ldrGEB R9, [sp, -R5]
l878: ldrLSB R0, [sp, #-70]
l879: strB R5, [sp, #-41]
l880: ldrGTB R12, [sp, #-31]
l881: ldrB R1, [sp, #-52]
l882: strGEB R2, [sp, #-31]
l883: strCCB R4, [sp, #-21]
l884: strB R3, [sp, #-38]
l885: mov R2, #26
l886: strNEB R0, [sp, -R2]
l887: strLTB R9, [sp, #-32]
l888: mov R11, #51
l889: ldrNEB R4, [sp, -R11]
l890: ldrVSB R12, [sp, #-19]
l891: mov R7, #29
l892: ldrNEB R12, [sp, -R7]
l893: mov R7, #58
l894: strGTB R2, [sp, -R7]
l895: ldrB R6, [sp, #-34]
l896: ldrB R10, [sp, #-78]
l897: strB R4, [sp, #-51]
l898: mov R1, #62
l899: strB R8, [sp, -R1]
l900: mov R6, #43
l901: ldrB R12, [sp, -R6]
l902: strB R8, [sp, #-18]
l903: mov R5, #55
l904: ldrLSB R9, [sp, -R5]
l905: strMIB R6, [sp, #-19]
l906: strGTB R10, [sp, #-77]
l907: mov R9, #54
l908: ldrVSB R5, [sp, -R9]
l909: ldrGTB R8, [sp, #-77]
l910: mov R0, #59
l911: ldrPLB R3, [sp, -R0]
l912: strB R6, [sp, #-40]
l913: mov R9, #66
l914: strPLB R4, [sp, -R9]
l915: strB R14, [sp, #-43]
l916: mov R6, #62
l917: strCCB R2, [sp, -R6]
l918: ldrB R2, [sp, #-60]
l919: mov R8, #49
l920: ldrB R11, [sp, -R8]
l921: ldrGTB R0, [sp, #-62]
l922: mov R2, #30
l923: strB R8, [sp, -R2]
l924: mov R0, #36
l925: strLEB R9, [sp, -R0]
l926: strEQB R14, [sp, #-73]
l927: strB R10, [sp, #-76]
l928: ldrB R4, [sp, #-80]
l929: mov R2, #36
l930: strVCB R3, [sp, -R2]
l931: ldrB R1, [sp, #-78]
l932: strCSB R4, [sp, #-31]
l933: strMIB R4, [sp, #-51]
l934: strGTB R5, [sp, #-71]
l935: mov R6, #31
l936: ldrVCB R8, [sp, -R6]
l937: strB R14, [sp, #-68]
l938: strCCB R14, [sp, #-75]
l939: ldrB R14, [sp, #-6]
l940: strB R12, [sp, #-18]
l941: ldrCSB R1, [sp, #-47]
l942: ldrVCB R7, [sp, #-69]
l943: strEQB R12, [sp, #-28]
l944: strEQB R9, [sp, #-49]
l945: mov R9, #64
l946: ldrB R0, [sp, -R9]
l947: mov R9, #45
l948: strB R6, [sp, -R9]
l949: strB R12, [sp, #-49]
l950: mov R1, #25
l951: ldrPLB R0, [sp, -R1]
l952: mov R7, #43
l953: strVSB R14, [sp, -R7]
l954: ldrPLB R2, [sp, #-57]
l955: mov R11, #23
l956: ldrLTB R14, [sp, -R11]
l957: mov R5, #58
l958: ldrLEB R7, [sp, -R5]
l959: mov R6, #75
l960: ldrEQB R3, [sp, -R6]
l961: mov R11, #20
l962: ldrCSB R11, [sp, -R11]
l963: mov R8, #74
l964: ldrGEB R2, [sp, -R8]
l965: ldrLTB R12, [sp, #-36]
l966: mov R3, #80
l967: ldrGEB R2, [sp, -R3]
l968: mov R10, #15
l969: ldrB R4, [sp, -R10]
l970: ldrLTB R9, [sp, #-70]
l971: ldrB R4, [sp, #-11]
l972: ldrVSB R0, [sp, #-17]
l973: ldrB R1, [sp, #-49]
l974: strVCB R1, [sp, #-42]
l975: ldrLSB R4, [sp, #-66]
l976: mov R9, #35
l977: strLSB R1, [sp, -R9]
l978: mov R8, #66
l979: strEQB R3, [sp, -R8]
l980: ldrGTB R1, [sp, #-60]
l981: mov R0, #52
l982: ldrPLB R5, [sp, -R0]
l983: ldrLTB R3, [sp, #-18]
l984: mov R12, #25
l985: strB R12, [sp, -R12]
l986: strCCB R6, [sp, #-31]
l987: strGTB R12, [sp, #-7]
l988: ldrPLB R4, [sp, #-9]
l989: strB R10, [sp, #-68]
l990: mov R14, #42
l991: ldrLEB R14, [sp, -R14]
l992: mov R4, #57
l993: strEQB R6, [sp, -R4]
l994: strCCB R6, [sp, #-72]
l995: strMIB R6, [sp, #-30]
l996: ldrB R14, [sp, #-18]
l997: ldrPLB R4, [sp, #-66]
l998: strLTB R0, [sp, #-53]
l999: ldrNEB R1, [sp, #-44]
l1000: strCCB R9, [sp, #-66]
end: b end

