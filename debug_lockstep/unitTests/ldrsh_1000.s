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
val1: .word 1933289348
next1:ldr R2, val2
b next2
val2: .word 419310810
next2:ldr R3, val3
b next3
val3: .word 2904238971
next3:ldr R4, val4
b next4
val4: .word 3273832985
next4:ldr R5, val5
b next5
val5: .word 320411767
next5:ldr R6, val6
b next6
val6: .word 2302076577
next6:ldr R7, val7
b next7
val7: .word 1953296726
next7:ldr R8, val8
b next8
val8: .word 1266867035
next8:ldr R9, val9
b next9
val9: .word 1187446081
next9:ldr R10, val10
b next10
val10: .word 2454914013
next10:ldr R11, val11
b next11
val11: .word 2299555509
next11:ldr R12, val12
b next12
val12: .word 2300952708
next12:ldr R14, val14
b next14
val14: .word 2139314395

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 1198967998
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 255954070
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 1041875502
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 3399788599
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 3697466171
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 2341667829
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 2007044130
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 3378051946
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3163380037
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 888076639
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 1976486754
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 506852135
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 1313966735
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 1288960669
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 4135187716
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 2787355627
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 1667182680
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 1273119454
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 290361744
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 3928221466
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 3850219483
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: mov R3, #34
l2: ldrHIsh R14, [sp, -R3]
l3: ldrsh R11, [sp, #-30]
l4: ldrsh R11, [sp, #-62]
l5: ldrGTsh R1, [sp, #-60]
l6: mov R7, #78
l7: ldrsh R11, [sp, -R7]
l8: mov R5, #40
l9: ldrLTsh R5, [sp, -R5]
l10: ldrPLsh R9, [sp, #-34]
l11: ldrsh R4, [sp, #-36]
l12: mov R4, #20
l13: ldrsh R11, [sp, -R4]
l14: mov R3, #12
l15: ldrsh R4, [sp, -R3]
l16: mov R8, #24
l17: ldrVCsh R7, [sp, -R8]
l18: mov R1, #74
l19: ldrCCsh R11, [sp, -R1]
l20: ldrsh R3, [sp, #-80]
l21: ldrCSsh R0, [sp, #-58]
l22: mov R5, #22
l23: ldrLSsh R8, [sp, -R5]
l24: ldrLSsh R4, [sp, #-38]
l25: ldrMIsh R11, [sp, #-56]
l26: ldrsh R8, [sp, #-28]
l27: ldrCCsh R4, [sp, #-4]
l28: mov R5, #52
l29: ldrNEsh R2, [sp, -R5]
l30: mov R11, #58
l31: ldrVSsh R6, [sp, -R11]
l32: ldrLEsh R11, [sp, #-36]
l33: ldrsh R2, [sp, #-40]
l34: ldrGTsh R0, [sp, #-36]
l35: ldrVCsh R6, [sp, #-32]
l36: ldrsh R10, [sp, #-48]
l37: mov R3, #60
l38: ldrEQsh R11, [sp, -R3]
l39: ldrCCsh R11, [sp, #-56]
l40: mov R0, #2
l41: ldrsh R4, [sp, -R0]
l42: ldrCCsh R12, [sp, #-64]
l43: mov R3, #74
l44: ldrsh R4, [sp, -R3]
l45: ldrCCsh R0, [sp, #-72]
l46: mov R7, #10
l47: ldrsh R4, [sp, -R7]
l48: ldrsh R6, [sp, #-8]
l49: mov R10, #12
l50: ldrCCsh R4, [sp, -R10]
l51: ldrsh R1, [sp, #-68]
l52: mov R0, #74
l53: ldrsh R9, [sp, -R0]
l54: ldrsh R11, [sp, #-70]
l55: mov R2, #10
l56: ldrVSsh R14, [sp, -R2]
l57: ldrGEsh R8, [sp, #-6]
l58: ldrsh R14, [sp, #-46]
l59: ldrVCsh R6, [sp, #-28]
l60: ldrLSsh R8, [sp, #-74]
l61: ldrVCsh R10, [sp, #-28]
l62: ldrPLsh R12, [sp, #-26]
l63: ldrCCsh R4, [sp, #-26]
l64: ldrsh R7, [sp, #-54]
l65: mov R1, #44
l66: ldrGEsh R4, [sp, -R1]
l67: mov R10, #20
l68: ldrLTsh R12, [sp, -R10]
l69: mov R12, #26
l70: ldrsh R9, [sp, -R12]
l71: ldrNEsh R10, [sp, #-38]
l72: mov R12, #16
l73: ldrsh R0, [sp, -R12]
l74: ldrLSsh R4, [sp, #-10]
l75: mov R5, #50
l76: ldrsh R10, [sp, -R5]
l77: ldrsh R12, [sp, #-64]
l78: mov R11, #42
l79: ldrHIsh R3, [sp, -R11]
l80: ldrVCsh R1, [sp, #-66]
l81: ldrNEsh R11, [sp, #-48]
l82: ldrEQsh R14, [sp, #-44]
l83: ldrLSsh R9, [sp, #-66]
l84: ldrGTsh R4, [sp, #-40]
l85: ldrCSsh R2, [sp, #-46]
l86: mov R0, #14
l87: ldrsh R8, [sp, -R0]
l88: mov R14, #32
l89: ldrsh R9, [sp, -R14]
l90: mov R1, #12
l91: ldrGTsh R8, [sp, -R1]
l92: ldrLEsh R10, [sp, #-6]
l93: mov R6, #56
l94: ldrsh R2, [sp, -R6]
l95: ldrLEsh R6, [sp, #-70]
l96: ldrsh R6, [sp, #-52]
l97: mov R7, #10
l98: ldrCSsh R4, [sp, -R7]
l99: mov R6, #62
l100: ldrHIsh R0, [sp, -R6]
l101: ldrsh R8, [sp, #-30]
l102: mov R9, #78
l103: ldrsh R6, [sp, -R9]
l104: mov R6, #56
l105: ldrLTsh R9, [sp, -R6]
l106: mov R5, #26
l107: ldrLSsh R3, [sp, -R5]
l108: mov R7, #18
l109: ldrsh R11, [sp, -R7]
l110: ldrsh R3, [sp, #-56]
l111: mov R12, #18
l112: ldrsh R7, [sp, -R12]
l113: mov R4, #30
l114: ldrsh R7, [sp, -R4]
l115: mov R9, #50
l116: ldrsh R8, [sp, -R9]
l117: ldrEQsh R6, [sp, #-4]
l118: mov R10, #62
l119: ldrPLsh R11, [sp, -R10]
l120: mov R3, #42
l121: ldrsh R9, [sp, -R3]
l122: mov R14, #14
l123: ldrLEsh R10, [sp, -R14]
l124: mov R4, #42
l125: ldrPLsh R6, [sp, -R4]
l126: mov R0, #38
l127: ldrNEsh R0, [sp, -R0]
l128: mov R12, #20
l129: ldrsh R11, [sp, -R12]
l130: mov R9, #52
l131: ldrsh R12, [sp, -R9]
l132: mov R10, #58
l133: ldrsh R7, [sp, -R10]
l134: mov R6, #24
l135: ldrPLsh R3, [sp, -R6]
l136: ldrLEsh R2, [sp, #-60]
l137: mov R12, #32
l138: ldrHIsh R10, [sp, -R12]
l139: ldrCCsh R3, [sp, #-54]
l140: mov R9, #38
l141: ldrLEsh R11, [sp, -R9]
l142: mov R9, #36
l143: ldrVSsh R8, [sp, -R9]
l144: mov R1, #76
l145: ldrsh R8, [sp, -R1]
l146: mov R4, #52
l147: ldrsh R2, [sp, -R4]
l148: mov R2, #36
l149: ldrGTsh R11, [sp, -R2]
l150: mov R4, #6
l151: ldrNEsh R8, [sp, -R4]
l152: mov R1, #38
l153: ldrsh R1, [sp, -R1]
l154: mov R8, #10
l155: ldrEQsh R14, [sp, -R8]
l156: mov R4, #38
l157: ldrLSsh R0, [sp, -R4]
l158: ldrsh R9, [sp, #-72]
l159: ldrLEsh R2, [sp, #-28]
l160: ldrVSsh R12, [sp, #-16]
l161: mov R7, #58
l162: ldrsh R1, [sp, -R7]
l163: mov R3, #40
l164: ldrsh R14, [sp, -R3]
l165: ldrsh R1, [sp, #-14]
l166: mov R1, #56
l167: ldrHIsh R2, [sp, -R1]
l168: mov R0, #30
l169: ldrGEsh R4, [sp, -R0]
l170: mov R7, #64
l171: ldrsh R12, [sp, -R7]
l172: mov R1, #36
l173: ldrsh R9, [sp, -R1]
l174: ldrGEsh R10, [sp, #-70]
l175: ldrCCsh R2, [sp, #-80]
l176: ldrPLsh R12, [sp, #-24]
l177: ldrCCsh R9, [sp, #-12]
l178: ldrsh R4, [sp, #-14]
l179: mov R5, #22
l180: ldrVSsh R3, [sp, -R5]
l181: mov R6, #2
l182: ldrsh R12, [sp, -R6]
l183: mov R11, #62
l184: ldrsh R5, [sp, -R11]
l185: ldrPLsh R7, [sp, #-4]
l186: ldrNEsh R14, [sp, #-32]
l187: mov R1, #8
l188: ldrEQsh R11, [sp, -R1]
l189: mov R6, #62
l190: ldrLTsh R11, [sp, -R6]
l191: ldrPLsh R5, [sp, #-32]
l192: mov R11, #74
l193: ldrPLsh R4, [sp, -R11]
l194: mov R9, #42
l195: ldrVSsh R11, [sp, -R9]
l196: ldrsh R2, [sp, #-78]
l197: ldrsh R11, [sp, #-2]
l198: ldrGEsh R12, [sp, #-80]
l199: mov R0, #68
l200: ldrGEsh R14, [sp, -R0]
l201: ldrLEsh R11, [sp, #-28]
l202: mov R4, #54
l203: ldrVCsh R6, [sp, -R4]
l204: mov R3, #60
l205: ldrPLsh R14, [sp, -R3]
l206: mov R14, #4
l207: ldrEQsh R5, [sp, -R14]
l208: ldrsh R1, [sp, #-32]
l209: ldrsh R2, [sp, #-20]
l210: ldrsh R0, [sp, #-72]
l211: ldrPLsh R0, [sp, #-30]
l212: ldrVCsh R0, [sp, #-62]
l213: ldrsh R6, [sp, #-12]
l214: mov R5, #70
l215: ldrsh R2, [sp, -R5]
l216: ldrsh R2, [sp, #-58]
l217: mov R2, #24
l218: ldrHIsh R2, [sp, -R2]
l219: ldrsh R8, [sp, #-40]
l220: ldrsh R4, [sp, #-26]
l221: mov R14, #64
l222: ldrLEsh R6, [sp, -R14]
l223: ldrGTsh R3, [sp, #-66]
l224: ldrsh R14, [sp, #-60]
l225: mov R8, #50
l226: ldrsh R2, [sp, -R8]
l227: mov R1, #68
l228: ldrsh R9, [sp, -R1]
l229: mov R4, #30
l230: ldrCSsh R8, [sp, -R4]
l231: mov R3, #70
l232: ldrCSsh R7, [sp, -R3]
l233: mov R5, #74
l234: ldrGEsh R5, [sp, -R5]
l235: ldrsh R2, [sp, #-74]
l236: ldrsh R9, [sp, #-80]
l237: mov R2, #20
l238: ldrGEsh R11, [sp, -R2]
l239: ldrsh R12, [sp, #-44]
l240: mov R0, #78
l241: ldrsh R12, [sp, -R0]
l242: ldrGEsh R5, [sp, #-18]
l243: mov R1, #26
l244: ldrLTsh R14, [sp, -R1]
l245: mov R0, #44
l246: ldrVSsh R10, [sp, -R0]
l247: mov R6, #40
l248: ldrCSsh R1, [sp, -R6]
l249: ldrCCsh R8, [sp, #-6]
l250: mov R8, #72
l251: ldrPLsh R11, [sp, -R8]
l252: ldrsh R1, [sp, #-32]
l253: mov R14, #58
l254: ldrCCsh R4, [sp, -R14]
l255: ldrGEsh R3, [sp, #-36]
l256: ldrPLsh R5, [sp, #-14]
l257: mov R0, #6
l258: ldrCCsh R9, [sp, -R0]
l259: ldrsh R8, [sp, #-42]
l260: mov R12, #32
l261: ldrCSsh R5, [sp, -R12]
l262: ldrCCsh R6, [sp, #-18]
l263: ldrsh R0, [sp, #-18]
l264: ldrMIsh R7, [sp, #-40]
l265: ldrsh R0, [sp, #-4]
l266: mov R9, #34
l267: ldrsh R5, [sp, -R9]
l268: ldrLEsh R10, [sp, #-78]
l269: ldrsh R8, [sp, #-8]
l270: mov R6, #32
l271: ldrLEsh R0, [sp, -R6]
l272: ldrCSsh R8, [sp, #-54]
l273: ldrLSsh R2, [sp, #-68]
l274: ldrLSsh R3, [sp, #-38]
l275: mov R7, #54
l276: ldrCSsh R6, [sp, -R7]
l277: ldrHIsh R8, [sp, #-46]
l278: ldrsh R5, [sp, #-66]
l279: ldrCCsh R4, [sp, #-70]
l280: mov R0, #16
l281: ldrsh R14, [sp, -R0]
l282: ldrLSsh R9, [sp, #-48]
l283: ldrLSsh R9, [sp, #-36]
l284: ldrCSsh R1, [sp, #-78]
l285: mov R2, #4
l286: ldrPLsh R2, [sp, -R2]
l287: mov R7, #66
l288: ldrsh R1, [sp, -R7]
l289: ldrsh R0, [sp, #-52]
l290: ldrsh R7, [sp, #-70]
l291: ldrsh R6, [sp, #-40]
l292: ldrEQsh R0, [sp, #-12]
l293: ldrGTsh R10, [sp, #-78]
l294: ldrNEsh R11, [sp, #-48]
l295: ldrsh R12, [sp, #-38]
l296: mov R10, #64
l297: ldrsh R14, [sp, -R10]
l298: ldrsh R10, [sp, #-4]
l299: ldrLEsh R2, [sp, #-6]
l300: ldrsh R12, [sp, #-44]
l301: ldrsh R2, [sp, #-68]
l302: ldrGTsh R9, [sp, #-70]
l303: mov R2, #20
l304: ldrCCsh R12, [sp, -R2]
l305: ldrGTsh R1, [sp, #-40]
l306: mov R11, #30
l307: ldrsh R14, [sp, -R11]
l308: mov R14, #54
l309: ldrsh R12, [sp, -R14]
l310: ldrVSsh R7, [sp, #-60]
l311: mov R10, #26
l312: ldrLEsh R5, [sp, -R10]
l313: mov R2, #74
l314: ldrsh R6, [sp, -R2]
l315: ldrsh R2, [sp, #-16]
l316: ldrNEsh R8, [sp, #-28]
l317: mov R5, #2
l318: ldrGEsh R1, [sp, -R5]
l319: mov R3, #60
l320: ldrGEsh R3, [sp, -R3]
l321: ldrsh R9, [sp, #-46]
l322: mov R8, #64
l323: ldrCCsh R4, [sp, -R8]
l324: ldrsh R6, [sp, #-46]
l325: ldrVCsh R9, [sp, #-72]
l326: mov R10, #10
l327: ldrVSsh R12, [sp, -R10]
l328: mov R0, #60
l329: ldrsh R4, [sp, -R0]
l330: mov R6, #76
l331: ldrPLsh R1, [sp, -R6]
l332: ldrLEsh R11, [sp, #-74]
l333: mov R8, #6
l334: ldrLSsh R2, [sp, -R8]
l335: ldrsh R8, [sp, #-36]
l336: mov R12, #34
l337: ldrsh R9, [sp, -R12]
l338: ldrLSsh R0, [sp, #-28]
l339: ldrsh R7, [sp, #-62]
l340: mov R9, #42
l341: ldrLEsh R12, [sp, -R9]
l342: mov R4, #26
l343: ldrLTsh R9, [sp, -R4]
l344: ldrHIsh R4, [sp, #-66]
l345: mov R4, #64
l346: ldrGTsh R6, [sp, -R4]
l347: ldrsh R14, [sp, #-2]
l348: mov R11, #46
l349: ldrNEsh R12, [sp, -R11]
l350: ldrHIsh R12, [sp, #-42]
l351: ldrLEsh R1, [sp, #-8]
l352: ldrLTsh R8, [sp, #-20]
l353: mov R7, #18
l354: ldrsh R8, [sp, -R7]
l355: ldrEQsh R6, [sp, #-50]
l356: mov R4, #54
l357: ldrsh R9, [sp, -R4]
l358: mov R9, #26
l359: ldrsh R6, [sp, -R9]
l360: ldrNEsh R10, [sp, #-70]
l361: mov R5, #66
l362: ldrsh R11, [sp, -R5]
l363: ldrLTsh R10, [sp, #-58]
l364: mov R5, #76
l365: ldrsh R6, [sp, -R5]
l366: mov R9, #2
l367: ldrCSsh R12, [sp, -R9]
l368: mov R10, #14
l369: ldrsh R10, [sp, -R10]
l370: ldrGTsh R8, [sp, #-48]
l371: ldrsh R2, [sp, #-34]
l372: mov R3, #44
l373: ldrGTsh R3, [sp, -R3]
l374: ldrHIsh R1, [sp, #-60]
l375: ldrsh R8, [sp, #-70]
l376: mov R0, #58
l377: ldrsh R10, [sp, -R0]
l378: mov R9, #54
l379: ldrsh R4, [sp, -R9]
l380: mov R11, #72
l381: ldrsh R6, [sp, -R11]
l382: mov R9, #68
l383: ldrsh R10, [sp, -R9]
l384: mov R5, #32
l385: ldrsh R14, [sp, -R5]
l386: ldrVSsh R11, [sp, #-40]
l387: ldrsh R11, [sp, #-54]
l388: ldrHIsh R0, [sp, #-26]
l389: ldrPLsh R3, [sp, #-28]
l390: ldrEQsh R7, [sp, #-16]
l391: ldrGEsh R10, [sp, #-16]
l392: mov R4, #24
l393: ldrPLsh R7, [sp, -R4]
l394: ldrHIsh R9, [sp, #-8]
l395: ldrsh R0, [sp, #-56]
l396: ldrsh R5, [sp, #-36]
l397: ldrsh R7, [sp, #-12]
l398: mov R0, #72
l399: ldrsh R14, [sp, -R0]
l400: mov R7, #52
l401: ldrEQsh R6, [sp, -R7]
l402: mov R11, #50
l403: ldrGTsh R9, [sp, -R11]
l404: mov R12, #38
l405: ldrsh R6, [sp, -R12]
l406: ldrsh R6, [sp, #-36]
l407: mov R7, #18
l408: ldrEQsh R8, [sp, -R7]
l409: ldrsh R12, [sp, #-76]
l410: ldrPLsh R5, [sp, #-38]
l411: mov R12, #28
l412: ldrsh R5, [sp, -R12]
l413: ldrNEsh R8, [sp, #-62]
l414: mov R0, #6
l415: ldrLSsh R1, [sp, -R0]
l416: mov R2, #14
l417: ldrsh R1, [sp, -R2]
l418: ldrsh R9, [sp, #-72]
l419: mov R5, #78
l420: ldrsh R1, [sp, -R5]
l421: mov R5, #30
l422: ldrMIsh R8, [sp, -R5]
l423: ldrNEsh R1, [sp, #-70]
l424: ldrLEsh R11, [sp, #-18]
l425: mov R2, #38
l426: ldrEQsh R3, [sp, -R2]
l427: ldrPLsh R6, [sp, #-74]
l428: mov R1, #4
l429: ldrMIsh R9, [sp, -R1]
l430: mov R9, #42
l431: ldrNEsh R3, [sp, -R9]
l432: ldrsh R2, [sp, #-76]
l433: ldrMIsh R10, [sp, #-76]
l434: mov R9, #22
l435: ldrsh R4, [sp, -R9]
l436: mov R6, #44
l437: ldrEQsh R9, [sp, -R6]
l438: ldrsh R14, [sp, #-12]
l439: mov R5, #80
l440: ldrsh R2, [sp, -R5]
l441: ldrVCsh R8, [sp, #-4]
l442: mov R1, #10
l443: ldrCCsh R9, [sp, -R1]
l444: mov R14, #38
l445: ldrCCsh R2, [sp, -R14]
l446: mov R6, #24
l447: ldrCSsh R5, [sp, -R6]
l448: ldrsh R11, [sp, #-6]
l449: ldrMIsh R8, [sp, #-2]
l450: mov R9, #58
l451: ldrVSsh R6, [sp, -R9]
l452: ldrMIsh R14, [sp, #-8]
l453: mov R1, #26
l454: ldrHIsh R9, [sp, -R1]
l455: mov R5, #52
l456: ldrsh R3, [sp, -R5]
l457: ldrsh R3, [sp, #-52]
l458: ldrPLsh R7, [sp, #-4]
l459: ldrLEsh R0, [sp, #-2]
l460: mov R12, #66
l461: ldrCSsh R3, [sp, -R12]
l462: mov R11, #36
l463: ldrMIsh R11, [sp, -R11]
l464: ldrsh R7, [sp, #-24]
l465: ldrLEsh R8, [sp, #-38]
l466: mov R7, #44
l467: ldrsh R14, [sp, -R7]
l468: mov R9, #28
l469: ldrsh R9, [sp, -R9]
l470: ldrsh R4, [sp, #-6]
l471: mov R12, #26
l472: ldrMIsh R1, [sp, -R12]
l473: mov R2, #74
l474: ldrVCsh R14, [sp, -R2]
l475: mov R1, #70
l476: ldrEQsh R11, [sp, -R1]
l477: mov R0, #46
l478: ldrGTsh R6, [sp, -R0]
l479: mov R6, #14
l480: ldrLEsh R11, [sp, -R6]
l481: mov R12, #80
l482: ldrCSsh R0, [sp, -R12]
l483: mov R10, #54
l484: ldrLEsh R4, [sp, -R10]
l485: ldrsh R3, [sp, #-68]
l486: ldrCSsh R8, [sp, #-22]
l487: ldrCSsh R10, [sp, #-18]
l488: ldrLTsh R12, [sp, #-30]
l489: mov R7, #74
l490: ldrVCsh R10, [sp, -R7]
l491: mov R12, #54
l492: ldrEQsh R0, [sp, -R12]
l493: mov R14, #24
l494: ldrsh R10, [sp, -R14]
l495: ldrEQsh R6, [sp, #-52]
l496: mov R10, #18
l497: ldrCSsh R10, [sp, -R10]
l498: mov R5, #28
l499: ldrsh R4, [sp, -R5]
l500: ldrsh R14, [sp, #-70]
l501: ldrVCsh R3, [sp, #-62]
l502: mov R6, #42
l503: ldrsh R14, [sp, -R6]
l504: ldrCCsh R8, [sp, #-20]
l505: mov R8, #52
l506: ldrNEsh R5, [sp, -R8]
l507: ldrsh R1, [sp, #-18]
l508: mov R5, #40
l509: ldrsh R6, [sp, -R5]
l510: mov R0, #72
l511: ldrLEsh R12, [sp, -R0]
l512: ldrNEsh R12, [sp, #-40]
l513: mov R8, #66
l514: ldrsh R0, [sp, -R8]
l515: mov R1, #76
l516: ldrPLsh R0, [sp, -R1]
l517: ldrsh R5, [sp, #-18]
l518: mov R0, #34
l519: ldrCSsh R1, [sp, -R0]
l520: ldrEQsh R5, [sp, #-50]
l521: mov R6, #76
l522: ldrsh R4, [sp, -R6]
l523: ldrsh R4, [sp, #-74]
l524: ldrsh R4, [sp, #-6]
l525: mov R1, #44
l526: ldrsh R8, [sp, -R1]
l527: ldrVSsh R3, [sp, #-50]
l528: ldrVSsh R8, [sp, #-22]
l529: mov R11, #26
l530: ldrLSsh R8, [sp, -R11]
l531: mov R11, #8
l532: ldrCCsh R7, [sp, -R11]
l533: mov R5, #28
l534: ldrVCsh R11, [sp, -R5]
l535: mov R1, #16
l536: ldrsh R6, [sp, -R1]
l537: mov R6, #60
l538: ldrsh R2, [sp, -R6]
l539: ldrHIsh R8, [sp, #-36]
l540: ldrsh R8, [sp, #-66]
l541: mov R6, #34
l542: ldrsh R4, [sp, -R6]
l543: ldrLTsh R10, [sp, #-40]
l544: ldrsh R14, [sp, #-24]
l545: mov R12, #8
l546: ldrsh R8, [sp, -R12]
l547: ldrCCsh R0, [sp, #-44]
l548: mov R14, #42
l549: ldrNEsh R11, [sp, -R14]
l550: mov R5, #34
l551: ldrLEsh R0, [sp, -R5]
l552: mov R1, #46
l553: ldrsh R8, [sp, -R1]
l554: mov R6, #74
l555: ldrCCsh R8, [sp, -R6]
l556: mov R14, #76
l557: ldrsh R6, [sp, -R14]
l558: ldrLTsh R5, [sp, #-8]
l559: ldrsh R10, [sp, #-24]
l560: ldrCCsh R4, [sp, #-14]
l561: mov R3, #50
l562: ldrsh R0, [sp, -R3]
l563: ldrsh R8, [sp, #-40]
l564: ldrGTsh R1, [sp, #-4]
l565: ldrVCsh R8, [sp, #-40]
l566: mov R10, #42
l567: ldrsh R4, [sp, -R10]
l568: ldrsh R6, [sp, #-24]
l569: ldrNEsh R5, [sp, #-32]
l570: mov R5, #46
l571: ldrPLsh R8, [sp, -R5]
l572: mov R2, #34
l573: ldrCSsh R3, [sp, -R2]
l574: mov R5, #42
l575: ldrMIsh R7, [sp, -R5]
l576: ldrMIsh R2, [sp, #-58]
l577: mov R12, #28
l578: ldrsh R6, [sp, -R12]
l579: ldrsh R0, [sp, #-36]
l580: mov R6, #24
l581: ldrPLsh R3, [sp, -R6]
l582: ldrsh R10, [sp, #-8]
l583: mov R10, #6
l584: ldrsh R9, [sp, -R10]
l585: mov R0, #58
l586: ldrsh R1, [sp, -R0]
l587: mov R14, #8
l588: ldrCCsh R10, [sp, -R14]
l589: ldrCCsh R4, [sp, #-52]
l590: mov R8, #12
l591: ldrsh R11, [sp, -R8]
l592: mov R12, #28
l593: ldrLEsh R14, [sp, -R12]
l594: ldrMIsh R9, [sp, #-26]
l595: ldrsh R7, [sp, #-42]
l596: mov R5, #38
l597: ldrsh R5, [sp, -R5]
l598: mov R5, #60
l599: ldrGTsh R10, [sp, -R5]
l600: ldrEQsh R8, [sp, #-72]
l601: ldrsh R3, [sp, #-70]
l602: ldrNEsh R5, [sp, #-28]
l603: ldrsh R11, [sp, #-34]
l604: mov R3, #52
l605: ldrsh R9, [sp, -R3]
l606: ldrGEsh R10, [sp, #-14]
l607: ldrLSsh R12, [sp, #-14]
l608: mov R2, #48
l609: ldrsh R4, [sp, -R2]
l610: mov R4, #64
l611: ldrNEsh R9, [sp, -R4]
l612: ldrsh R7, [sp, #-20]
l613: mov R9, #74
l614: ldrsh R3, [sp, -R9]
l615: ldrsh R6, [sp, #-24]
l616: mov R7, #80
l617: ldrVCsh R1, [sp, -R7]
l618: mov R5, #20
l619: ldrsh R7, [sp, -R5]
l620: ldrPLsh R10, [sp, #-36]
l621: mov R6, #76
l622: ldrsh R3, [sp, -R6]
l623: mov R7, #70
l624: ldrPLsh R1, [sp, -R7]
l625: mov R14, #34
l626: ldrLTsh R5, [sp, -R14]
l627: ldrNEsh R6, [sp, #-12]
l628: ldrMIsh R5, [sp, #-62]
l629: ldrVCsh R6, [sp, #-36]
l630: mov R12, #30
l631: ldrNEsh R0, [sp, -R12]
l632: mov R5, #74
l633: ldrLSsh R11, [sp, -R5]
l634: mov R3, #22
l635: ldrEQsh R5, [sp, -R3]
l636: mov R6, #78
l637: ldrsh R7, [sp, -R6]
l638: mov R11, #10
l639: ldrsh R14, [sp, -R11]
l640: ldrPLsh R1, [sp, #-78]
l641: mov R4, #38
l642: ldrsh R7, [sp, -R4]
l643: mov R4, #70
l644: ldrVSsh R5, [sp, -R4]
l645: ldrPLsh R7, [sp, #-80]
l646: mov R12, #44
l647: ldrsh R5, [sp, -R12]
l648: mov R9, #74
l649: ldrsh R6, [sp, -R9]
l650: ldrNEsh R11, [sp, #-72]
l651: ldrsh R5, [sp, #-10]
l652: mov R9, #62
l653: ldrPLsh R6, [sp, -R9]
l654: mov R14, #38
l655: ldrHIsh R2, [sp, -R14]
l656: ldrsh R5, [sp, #-12]
l657: ldrVCsh R0, [sp, #-12]
l658: ldrCCsh R5, [sp, #-60]
l659: ldrsh R3, [sp, #-18]
l660: mov R8, #80
l661: ldrsh R4, [sp, -R8]
l662: ldrsh R11, [sp, #-40]
l663: ldrsh R9, [sp, #-70]
l664: mov R11, #54
l665: ldrCCsh R8, [sp, -R11]
l666: mov R14, #22
l667: ldrLSsh R7, [sp, -R14]
l668: ldrsh R11, [sp, #-10]
l669: ldrCCsh R8, [sp, #-42]
l670: mov R12, #44
l671: ldrLTsh R7, [sp, -R12]
l672: ldrsh R1, [sp, #-64]
l673: ldrCCsh R2, [sp, #-20]
l674: mov R0, #28
l675: ldrVCsh R11, [sp, -R0]
l676: ldrPLsh R8, [sp, #-24]
l677: ldrCCsh R4, [sp, #-50]
l678: mov R7, #56
l679: ldrsh R8, [sp, -R7]
l680: mov R8, #74
l681: ldrsh R9, [sp, -R8]
l682: ldrLTsh R1, [sp, #-36]
l683: ldrLSsh R5, [sp, #-74]
l684: mov R3, #62
l685: ldrsh R3, [sp, -R3]
l686: ldrsh R9, [sp, #-26]
l687: mov R6, #32
l688: ldrsh R4, [sp, -R6]
l689: mov R0, #6
l690: ldrCSsh R0, [sp, -R0]
l691: mov R2, #22
l692: ldrNEsh R3, [sp, -R2]
l693: mov R1, #2
l694: ldrsh R12, [sp, -R1]
l695: ldrsh R3, [sp, #-46]
l696: ldrVSsh R7, [sp, #-40]
l697: ldrMIsh R12, [sp, #-74]
l698: ldrPLsh R1, [sp, #-62]
l699: ldrVSsh R8, [sp, #-18]
l700: ldrLTsh R8, [sp, #-54]
l701: mov R12, #72
l702: ldrLTsh R4, [sp, -R12]
l703: ldrsh R6, [sp, #-24]
l704: mov R12, #8
l705: ldrGEsh R10, [sp, -R12]
l706: mov R11, #70
l707: ldrVSsh R9, [sp, -R11]
l708: ldrsh R10, [sp, #-12]
l709: mov R14, #26
l710: ldrsh R0, [sp, -R14]
l711: mov R0, #52
l712: ldrsh R12, [sp, -R0]
l713: mov R11, #20
l714: ldrsh R5, [sp, -R11]
l715: mov R14, #64
l716: ldrVCsh R12, [sp, -R14]
l717: mov R14, #80
l718: ldrVSsh R12, [sp, -R14]
l719: mov R11, #10
l720: ldrsh R9, [sp, -R11]
l721: mov R9, #66
l722: ldrsh R6, [sp, -R9]
l723: ldrEQsh R9, [sp, #-50]
l724: ldrsh R12, [sp, #-30]
l725: mov R4, #74
l726: ldrsh R10, [sp, -R4]
l727: ldrGEsh R1, [sp, #-14]
l728: mov R8, #44
l729: ldrsh R0, [sp, -R8]
l730: ldrVSsh R12, [sp, #-74]
l731: ldrVCsh R3, [sp, #-58]
l732: ldrsh R14, [sp, #-42]
l733: mov R9, #54
l734: ldrCCsh R6, [sp, -R9]
l735: mov R14, #20
l736: ldrLSsh R6, [sp, -R14]
l737: ldrsh R11, [sp, #-64]
l738: mov R10, #16
l739: ldrHIsh R0, [sp, -R10]
l740: ldrLEsh R4, [sp, #-60]
l741: ldrGEsh R0, [sp, #-64]
l742: ldrsh R11, [sp, #-60]
l743: mov R5, #50
l744: ldrVCsh R1, [sp, -R5]
l745: mov R14, #34
l746: ldrMIsh R1, [sp, -R14]
l747: mov R11, #8
l748: ldrLTsh R2, [sp, -R11]
l749: mov R11, #40
l750: ldrVCsh R2, [sp, -R11]
l751: ldrNEsh R6, [sp, #-76]
l752: mov R0, #26
l753: ldrsh R3, [sp, -R0]
l754: ldrGEsh R6, [sp, #-14]
l755: ldrsh R2, [sp, #-40]
l756: ldrGEsh R6, [sp, #-52]
l757: ldrEQsh R7, [sp, #-14]
l758: ldrMIsh R3, [sp, #-38]
l759: ldrGTsh R14, [sp, #-70]
l760: ldrHIsh R10, [sp, #-58]
l761: mov R9, #22
l762: ldrsh R11, [sp, -R9]
l763: ldrsh R1, [sp, #-60]
l764: ldrsh R5, [sp, #-36]
l765: mov R2, #6
l766: ldrsh R6, [sp, -R2]
l767: ldrsh R3, [sp, #-22]
l768: mov R1, #10
l769: ldrsh R12, [sp, -R1]
l770: mov R7, #74
l771: ldrsh R8, [sp, -R7]
l772: ldrsh R12, [sp, #-58]
l773: ldrsh R7, [sp, #-10]
l774: mov R11, #48
l775: ldrNEsh R6, [sp, -R11]
l776: ldrsh R14, [sp, #-8]
l777: mov R12, #40
l778: ldrsh R9, [sp, -R12]
l779: ldrGEsh R10, [sp, #-80]
l780: ldrEQsh R6, [sp, #-68]
l781: ldrsh R0, [sp, #-10]
l782: ldrVCsh R4, [sp, #-64]
l783: ldrsh R6, [sp, #-38]
l784: ldrLEsh R11, [sp, #-52]
l785: ldrsh R2, [sp, #-38]
l786: ldrHIsh R1, [sp, #-50]
l787: mov R1, #50
l788: ldrsh R12, [sp, -R1]
l789: ldrsh R11, [sp, #-72]
l790: mov R0, #36
l791: ldrsh R3, [sp, -R0]
l792: ldrVCsh R5, [sp, #-24]
l793: ldrsh R0, [sp, #-62]
l794: mov R4, #12
l795: ldrLEsh R4, [sp, -R4]
l796: mov R9, #10
l797: ldrVSsh R4, [sp, -R9]
l798: ldrsh R4, [sp, #-44]
l799: ldrsh R7, [sp, #-24]
l800: mov R3, #56
l801: ldrLTsh R11, [sp, -R3]
l802: mov R4, #6
l803: ldrHIsh R4, [sp, -R4]
l804: ldrVSsh R0, [sp, #-8]
l805: ldrEQsh R9, [sp, #-78]
l806: ldrEQsh R0, [sp, #-44]
l807: mov R3, #50
l808: ldrVSsh R3, [sp, -R3]
l809: mov R14, #72
l810: ldrsh R14, [sp, -R14]
l811: ldrLSsh R6, [sp, #-8]
l812: mov R5, #48
l813: ldrVCsh R0, [sp, -R5]
l814: mov R5, #62
l815: ldrsh R1, [sp, -R5]
l816: mov R2, #70
l817: ldrsh R9, [sp, -R2]
l818: ldrMIsh R5, [sp, #-80]
l819: mov R3, #42
l820: ldrsh R4, [sp, -R3]
l821: mov R11, #42
l822: ldrNEsh R6, [sp, -R11]
l823: ldrLEsh R7, [sp, #-40]
l824: ldrsh R9, [sp, #-80]
l825: mov R11, #64
l826: ldrCSsh R8, [sp, -R11]
l827: ldrsh R3, [sp, #-68]
l828: mov R7, #44
l829: ldrGEsh R12, [sp, -R7]
l830: mov R7, #44
l831: ldrMIsh R14, [sp, -R7]
l832: mov R4, #54
l833: ldrsh R3, [sp, -R4]
l834: mov R2, #62
l835: ldrPLsh R8, [sp, -R2]
l836: ldrsh R10, [sp, #-70]
l837: ldrLSsh R2, [sp, #-72]
l838: mov R6, #8
l839: ldrLSsh R3, [sp, -R6]
l840: ldrsh R12, [sp, #-44]
l841: ldrLTsh R14, [sp, #-8]
l842: mov R3, #72
l843: ldrsh R10, [sp, -R3]
l844: ldrEQsh R8, [sp, #-22]
l845: mov R5, #58
l846: ldrGEsh R8, [sp, -R5]
l847: ldrsh R4, [sp, #-70]
l848: mov R1, #28
l849: ldrGTsh R10, [sp, -R1]
l850: mov R12, #74
l851: ldrGTsh R6, [sp, -R12]
l852: mov R11, #54
l853: ldrsh R1, [sp, -R11]
l854: ldrNEsh R12, [sp, #-2]
l855: ldrVCsh R6, [sp, #-76]
l856: mov R0, #58
l857: ldrsh R7, [sp, -R0]
l858: ldrHIsh R10, [sp, #-50]
l859: ldrsh R3, [sp, #-76]
l860: mov R8, #60
l861: ldrsh R5, [sp, -R8]
l862: ldrsh R14, [sp, #-46]
l863: ldrGTsh R5, [sp, #-74]
l864: ldrGTsh R9, [sp, #-32]
l865: mov R0, #50
l866: ldrsh R2, [sp, -R0]
l867: mov R4, #14
l868: ldrVCsh R8, [sp, -R4]
l869: ldrGEsh R5, [sp, #-72]
l870: mov R5, #76
l871: ldrGEsh R14, [sp, -R5]
l872: ldrsh R9, [sp, #-34]
l873: mov R5, #48
l874: ldrsh R9, [sp, -R5]
l875: ldrsh R9, [sp, #-58]
l876: ldrsh R12, [sp, #-20]
l877: ldrsh R12, [sp, #-38]
l878: mov R10, #60
l879: ldrsh R2, [sp, -R10]
l880: mov R11, #80
l881: ldrGEsh R14, [sp, -R11]
l882: mov R5, #2
l883: ldrsh R7, [sp, -R5]
l884: ldrMIsh R8, [sp, #-78]
l885: mov R8, #48
l886: ldrsh R2, [sp, -R8]
l887: mov R8, #80
l888: ldrsh R8, [sp, -R8]
l889: ldrsh R9, [sp, #-50]
l890: mov R8, #76
l891: ldrCCsh R9, [sp, -R8]
l892: ldrsh R3, [sp, #-8]
l893: ldrMIsh R8, [sp, #-78]
l894: ldrVCsh R12, [sp, #-14]
l895: mov R5, #52
l896: ldrGTsh R11, [sp, -R5]
l897: mov R2, #22
l898: ldrsh R14, [sp, -R2]
l899: mov R3, #74
l900: ldrsh R3, [sp, -R3]
l901: ldrLTsh R5, [sp, #-18]
l902: mov R4, #48
l903: ldrMIsh R12, [sp, -R4]
l904: mov R2, #32
l905: ldrsh R12, [sp, -R2]
l906: mov R1, #34
l907: ldrGEsh R9, [sp, -R1]
l908: mov R2, #32
l909: ldrPLsh R11, [sp, -R2]
l910: ldrsh R12, [sp, #-28]
l911: ldrsh R5, [sp, #-16]
l912: ldrsh R7, [sp, #-76]
l913: ldrsh R12, [sp, #-74]
l914: mov R6, #76
l915: ldrPLsh R14, [sp, -R6]
l916: ldrsh R9, [sp, #-26]
l917: mov R8, #18
l918: ldrsh R12, [sp, -R8]
l919: ldrMIsh R9, [sp, #-32]
l920: ldrEQsh R11, [sp, #-44]
l921: mov R12, #62
l922: ldrsh R9, [sp, -R12]
l923: mov R10, #48
l924: ldrLEsh R8, [sp, -R10]
l925: ldrsh R2, [sp, #-58]
l926: ldrVCsh R0, [sp, #-18]
l927: mov R5, #78
l928: ldrGEsh R0, [sp, -R5]
l929: ldrLEsh R6, [sp, #-72]
l930: ldrsh R10, [sp, #-72]
l931: ldrsh R9, [sp, #-52]
l932: mov R0, #56
l933: ldrCSsh R14, [sp, -R0]
l934: mov R10, #46
l935: ldrsh R14, [sp, -R10]
l936: mov R0, #54
l937: ldrNEsh R11, [sp, -R0]
l938: ldrLTsh R10, [sp, #-56]
l939: mov R8, #62
l940: ldrVSsh R1, [sp, -R8]
l941: mov R3, #74
l942: ldrLEsh R9, [sp, -R3]
l943: mov R7, #76
l944: ldrsh R1, [sp, -R7]
l945: ldrVCsh R0, [sp, #-62]
l946: mov R10, #78
l947: ldrCCsh R1, [sp, -R10]
l948: ldrsh R14, [sp, #-8]
l949: mov R7, #76
l950: ldrsh R10, [sp, -R7]
l951: mov R2, #30
l952: ldrsh R3, [sp, -R2]
l953: ldrCCsh R8, [sp, #-2]
l954: mov R0, #14
l955: ldrsh R11, [sp, -R0]
l956: mov R3, #44
l957: ldrsh R10, [sp, -R3]
l958: ldrLTsh R4, [sp, #-74]
l959: mov R5, #30
l960: ldrsh R8, [sp, -R5]
l961: mov R14, #54
l962: ldrsh R14, [sp, -R14]
l963: mov R7, #20
l964: ldrsh R1, [sp, -R7]
l965: mov R7, #72
l966: ldrLSsh R8, [sp, -R7]
l967: ldrsh R12, [sp, #-80]
l968: ldrCCsh R5, [sp, #-38]
l969: ldrGTsh R11, [sp, #-18]
l970: ldrsh R4, [sp, #-42]
l971: ldrNEsh R9, [sp, #-6]
l972: mov R1, #28
l973: ldrLEsh R8, [sp, -R1]
l974: ldrsh R11, [sp, #-32]
l975: mov R3, #4
l976: ldrsh R14, [sp, -R3]
l977: ldrLSsh R9, [sp, #-12]
l978: ldrEQsh R1, [sp, #-22]
l979: ldrVCsh R1, [sp, #-38]
l980: mov R9, #62
l981: ldrCSsh R9, [sp, -R9]
l982: ldrGEsh R3, [sp, #-20]
l983: ldrsh R12, [sp, #-12]
l984: ldrsh R14, [sp, #-36]
l985: ldrEQsh R3, [sp, #-52]
l986: ldrGEsh R3, [sp, #-68]
l987: mov R5, #6
l988: ldrLEsh R10, [sp, -R5]
l989: mov R14, #70
l990: ldrMIsh R9, [sp, -R14]
l991: mov R14, #70
l992: ldrVCsh R2, [sp, -R14]
l993: ldrsh R9, [sp, #-18]
l994: mov R9, #24
l995: ldrPLsh R11, [sp, -R9]
l996: ldrMIsh R11, [sp, #-56]
l997: ldrGEsh R10, [sp, #-58]
l998: ldrLSsh R12, [sp, #-80]
l999: mov R14, #46
l1000: ldrsh R5, [sp, -R14]
end: b end

