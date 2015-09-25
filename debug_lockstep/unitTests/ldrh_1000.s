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
val1: .word 3910525248
next1:ldr R2, val2
b next2
val2: .word 3640902897
next2:ldr R3, val3
b next3
val3: .word 2442308837
next3:ldr R4, val4
b next4
val4: .word 3393045281
next4:ldr R5, val5
b next5
val5: .word 452490185
next5:ldr R6, val6
b next6
val6: .word 2447888518
next6:ldr R7, val7
b next7
val7: .word 420312115
next7:ldr R8, val8
b next8
val8: .word 507950669
next8:ldr R9, val9
b next9
val9: .word 1121563537
next9:ldr R10, val10
b next10
val10: .word 1650478428
next10:ldr R11, val11
b next11
val11: .word 3869121520
next11:ldr R12, val12
b next12
val12: .word 1365396438
next12:ldr R14, val14
b next14
val14: .word 1780682218

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 3814032543
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 4078733108
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 2149760885
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 3135327673
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 2904499688
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 1416276985
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 2971644797
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 1029751174
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 2750121289
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 847594579
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 2629161691
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 3615951272
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 2189139143
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 2973355644
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 1170989070
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 3430680049
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 31740141
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 1075444799
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 1339814621
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 4035470988
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 3833999689
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: mov R3, #44
l2: ldrNEh R14, [sp, -R3]
l3: mov R4, #54
l4: ldrh R7, [sp, -R4]
l5: mov R4, #74
l6: ldrh R14, [sp, -R4]
l7: mov R5, #22
l8: ldrh R10, [sp, -R5]
l9: ldrLTh R1, [sp, #-20]
l10: mov R11, #30
l11: ldrVCh R7, [sp, -R11]
l12: ldrh R14, [sp, #-18]
l13: mov R1, #78
l14: ldrh R9, [sp, -R1]
l15: ldrLTh R1, [sp, #-16]
l16: ldrLEh R8, [sp, #-80]
l17: mov R0, #2
l18: ldrh R11, [sp, -R0]
l19: mov R7, #46
l20: ldrCCh R4, [sp, -R7]
l21: mov R0, #62
l22: ldrGTh R14, [sp, -R0]
l23: mov R14, #60
l24: ldrGTh R11, [sp, -R14]
l25: mov R0, #20
l26: ldrEQh R10, [sp, -R0]
l27: mov R0, #48
l28: ldrh R3, [sp, -R0]
l29: mov R5, #58
l30: ldrGTh R7, [sp, -R5]
l31: mov R1, #68
l32: ldrh R6, [sp, -R1]
l33: mov R0, #10
l34: ldrHIh R4, [sp, -R0]
l35: ldrh R1, [sp, #-74]
l36: ldrEQh R0, [sp, #-54]
l37: ldrCSh R9, [sp, #-22]
l38: ldrh R1, [sp, #-4]
l39: ldrGEh R7, [sp, #-66]
l40: ldrLSh R7, [sp, #-2]
l41: mov R4, #14
l42: ldrVCh R9, [sp, -R4]
l43: ldrh R0, [sp, #-66]
l44: mov R14, #28
l45: ldrNEh R6, [sp, -R14]
l46: mov R5, #24
l47: ldrGTh R2, [sp, -R5]
l48: mov R9, #10
l49: ldrh R8, [sp, -R9]
l50: ldrHIh R5, [sp, #-64]
l51: mov R1, #6
l52: ldrMIh R5, [sp, -R1]
l53: ldrGEh R14, [sp, #-38]
l54: mov R14, #4
l55: ldrGEh R9, [sp, -R14]
l56: ldrh R1, [sp, #-20]
l57: ldrVCh R6, [sp, #-44]
l58: mov R0, #54
l59: ldrh R0, [sp, -R0]
l60: mov R14, #12
l61: ldrMIh R1, [sp, -R14]
l62: ldrh R1, [sp, #-52]
l63: mov R10, #58
l64: ldrLSh R5, [sp, -R10]
l65: mov R8, #76
l66: ldrh R4, [sp, -R8]
l67: ldrLTh R4, [sp, #-10]
l68: mov R5, #68
l69: ldrh R0, [sp, -R5]
l70: mov R6, #2
l71: ldrh R0, [sp, -R6]
l72: ldrNEh R0, [sp, #-20]
l73: ldrh R2, [sp, #-72]
l74: ldrh R11, [sp, #-42]
l75: mov R1, #42
l76: ldrMIh R4, [sp, -R1]
l77: mov R5, #76
l78: ldrh R5, [sp, -R5]
l79: mov R0, #58
l80: ldrh R14, [sp, -R0]
l81: ldrMIh R0, [sp, #-68]
l82: ldrLEh R5, [sp, #-78]
l83: ldrEQh R9, [sp, #-30]
l84: mov R11, #8
l85: ldrLSh R7, [sp, -R11]
l86: ldrh R7, [sp, #-28]
l87: ldrh R4, [sp, #-58]
l88: ldrh R12, [sp, #-22]
l89: ldrh R0, [sp, #-60]
l90: ldrEQh R6, [sp, #-42]
l91: ldrGEh R10, [sp, #-68]
l92: ldrh R9, [sp, #-52]
l93: ldrh R7, [sp, #-66]
l94: ldrh R4, [sp, #-8]
l95: mov R4, #12
l96: ldrh R3, [sp, -R4]
l97: mov R3, #70
l98: ldrh R1, [sp, -R3]
l99: mov R5, #12
l100: ldrLSh R14, [sp, -R5]
l101: ldrPLh R6, [sp, #-16]
l102: ldrGTh R10, [sp, #-36]
l103: ldrh R3, [sp, #-58]
l104: mov R2, #44
l105: ldrCSh R3, [sp, -R2]
l106: mov R11, #18
l107: ldrh R5, [sp, -R11]
l108: ldrh R8, [sp, #-52]
l109: mov R12, #62
l110: ldrh R0, [sp, -R12]
l111: mov R14, #62
l112: ldrh R12, [sp, -R14]
l113: ldrGTh R0, [sp, #-72]
l114: mov R12, #26
l115: ldrh R5, [sp, -R12]
l116: ldrHIh R12, [sp, #-44]
l117: mov R7, #30
l118: ldrLEh R6, [sp, -R7]
l119: mov R2, #48
l120: ldrh R7, [sp, -R2]
l121: ldrLTh R9, [sp, #-76]
l122: mov R5, #56
l123: ldrh R8, [sp, -R5]
l124: ldrh R10, [sp, #-58]
l125: mov R11, #80
l126: ldrVCh R10, [sp, -R11]
l127: mov R3, #46
l128: ldrh R14, [sp, -R3]
l129: ldrh R10, [sp, #-4]
l130: ldrh R10, [sp, #-14]
l131: mov R5, #72
l132: ldrh R5, [sp, -R5]
l133: mov R12, #16
l134: ldrh R5, [sp, -R12]
l135: mov R5, #62
l136: ldrGTh R4, [sp, -R5]
l137: mov R14, #40
l138: ldrh R11, [sp, -R14]
l139: mov R5, #76
l140: ldrCSh R2, [sp, -R5]
l141: mov R8, #72
l142: ldrNEh R10, [sp, -R8]
l143: mov R7, #52
l144: ldrGEh R0, [sp, -R7]
l145: ldrh R7, [sp, #-26]
l146: mov R14, #66
l147: ldrh R7, [sp, -R14]
l148: ldrLEh R3, [sp, #-68]
l149: ldrMIh R3, [sp, #-16]
l150: ldrEQh R10, [sp, #-10]
l151: ldrGTh R10, [sp, #-60]
l152: mov R3, #52
l153: ldrPLh R4, [sp, -R3]
l154: ldrh R0, [sp, #-14]
l155: ldrNEh R6, [sp, #-18]
l156: ldrLSh R5, [sp, #-32]
l157: mov R7, #6
l158: ldrPLh R10, [sp, -R7]
l159: ldrh R11, [sp, #-50]
l160: mov R1, #30
l161: ldrGEh R0, [sp, -R1]
l162: ldrh R5, [sp, #-20]
l163: ldrPLh R9, [sp, #-4]
l164: mov R8, #52
l165: ldrh R9, [sp, -R8]
l166: ldrVSh R1, [sp, #-28]
l167: ldrMIh R8, [sp, #-50]
l168: mov R11, #2
l169: ldrVSh R1, [sp, -R11]
l170: mov R10, #38
l171: ldrVSh R2, [sp, -R10]
l172: ldrHIh R0, [sp, #-54]
l173: mov R2, #20
l174: ldrh R10, [sp, -R2]
l175: ldrCCh R8, [sp, #-48]
l176: ldrh R3, [sp, #-70]
l177: ldrh R11, [sp, #-72]
l178: ldrMIh R5, [sp, #-2]
l179: mov R0, #40
l180: ldrh R4, [sp, -R0]
l181: mov R4, #26
l182: ldrh R9, [sp, -R4]
l183: ldrLSh R12, [sp, #-64]
l184: mov R11, #22
l185: ldrCCh R0, [sp, -R11]
l186: mov R14, #10
l187: ldrHIh R12, [sp, -R14]
l188: ldrh R1, [sp, #-20]
l189: mov R14, #64
l190: ldrh R8, [sp, -R14]
l191: mov R0, #72
l192: ldrh R11, [sp, -R0]
l193: ldrh R2, [sp, #-4]
l194: ldrHIh R12, [sp, #-40]
l195: mov R4, #18
l196: ldrh R7, [sp, -R4]
l197: ldrVSh R7, [sp, #-32]
l198: mov R11, #32
l199: ldrHIh R9, [sp, -R11]
l200: mov R1, #14
l201: ldrh R1, [sp, -R1]
l202: ldrGTh R1, [sp, #-64]
l203: mov R12, #16
l204: ldrh R4, [sp, -R12]
l205: ldrEQh R9, [sp, #-30]
l206: ldrh R7, [sp, #-62]
l207: mov R6, #64
l208: ldrh R14, [sp, -R6]
l209: mov R1, #16
l210: ldrh R11, [sp, -R1]
l211: mov R14, #66
l212: ldrVCh R7, [sp, -R14]
l213: mov R5, #30
l214: ldrGEh R10, [sp, -R5]
l215: ldrHIh R3, [sp, #-76]
l216: ldrLTh R4, [sp, #-14]
l217: ldrCCh R3, [sp, #-74]
l218: ldrVCh R14, [sp, #-20]
l219: mov R3, #24
l220: ldrGTh R0, [sp, -R3]
l221: ldrh R14, [sp, #-58]
l222: mov R8, #8
l223: ldrh R1, [sp, -R8]
l224: ldrLEh R6, [sp, #-70]
l225: mov R9, #64
l226: ldrLSh R14, [sp, -R9]
l227: mov R11, #28
l228: ldrLSh R11, [sp, -R11]
l229: mov R0, #50
l230: ldrLTh R6, [sp, -R0]
l231: mov R10, #48
l232: ldrh R6, [sp, -R10]
l233: mov R14, #40
l234: ldrCCh R4, [sp, -R14]
l235: ldrCSh R0, [sp, #-52]
l236: ldrMIh R6, [sp, #-30]
l237: mov R0, #8
l238: ldrNEh R1, [sp, -R0]
l239: mov R2, #66
l240: ldrEQh R2, [sp, -R2]
l241: ldrEQh R9, [sp, #-32]
l242: mov R8, #66
l243: ldrLEh R7, [sp, -R8]
l244: mov R14, #78
l245: ldrPLh R1, [sp, -R14]
l246: mov R2, #66
l247: ldrh R10, [sp, -R2]
l248: mov R1, #38
l249: ldrh R8, [sp, -R1]
l250: ldrh R11, [sp, #-26]
l251: ldrPLh R2, [sp, #-70]
l252: ldrh R10, [sp, #-42]
l253: mov R1, #78
l254: ldrh R3, [sp, -R1]
l255: ldrLEh R7, [sp, #-32]
l256: mov R2, #20
l257: ldrh R10, [sp, -R2]
l258: ldrh R9, [sp, #-62]
l259: ldrMIh R0, [sp, #-58]
l260: mov R9, #12
l261: ldrh R14, [sp, -R9]
l262: mov R1, #26
l263: ldrh R2, [sp, -R1]
l264: ldrh R3, [sp, #-72]
l265: mov R3, #18
l266: ldrh R6, [sp, -R3]
l267: ldrh R4, [sp, #-38]
l268: mov R1, #66
l269: ldrh R10, [sp, -R1]
l270: ldrLTh R6, [sp, #-64]
l271: ldrHIh R3, [sp, #-58]
l272: mov R9, #50
l273: ldrCCh R8, [sp, -R9]
l274: ldrLSh R6, [sp, #-30]
l275: ldrGTh R6, [sp, #-36]
l276: ldrh R9, [sp, #-66]
l277: ldrh R10, [sp, #-66]
l278: ldrVCh R14, [sp, #-24]
l279: ldrh R1, [sp, #-20]
l280: ldrPLh R3, [sp, #-48]
l281: mov R9, #50
l282: ldrh R0, [sp, -R9]
l283: mov R8, #20
l284: ldrVCh R6, [sp, -R8]
l285: mov R4, #56
l286: ldrVCh R9, [sp, -R4]
l287: mov R3, #8
l288: ldrVCh R4, [sp, -R3]
l289: ldrMIh R0, [sp, #-64]
l290: mov R2, #36
l291: ldrCCh R2, [sp, -R2]
l292: ldrLTh R5, [sp, #-14]
l293: ldrh R2, [sp, #-6]
l294: ldrVCh R10, [sp, #-64]
l295: ldrLSh R3, [sp, #-72]
l296: ldrVCh R11, [sp, #-74]
l297: mov R9, #78
l298: ldrVSh R7, [sp, -R9]
l299: ldrh R4, [sp, #-22]
l300: ldrNEh R0, [sp, #-36]
l301: mov R3, #64
l302: ldrGTh R9, [sp, -R3]
l303: mov R8, #46
l304: ldrh R14, [sp, -R8]
l305: ldrh R7, [sp, #-70]
l306: ldrPLh R9, [sp, #-12]
l307: ldrh R7, [sp, #-18]
l308: ldrLSh R9, [sp, #-44]
l309: ldrMIh R10, [sp, #-40]
l310: ldrh R6, [sp, #-62]
l311: mov R4, #22
l312: ldrh R8, [sp, -R4]
l313: ldrh R7, [sp, #-6]
l314: ldrVCh R1, [sp, #-38]
l315: ldrPLh R1, [sp, #-24]
l316: mov R2, #62
l317: ldrh R6, [sp, -R2]
l318: ldrh R11, [sp, #-50]
l319: mov R1, #58
l320: ldrh R4, [sp, -R1]
l321: ldrCSh R2, [sp, #-24]
l322: mov R0, #70
l323: ldrh R8, [sp, -R0]
l324: ldrh R6, [sp, #-56]
l325: ldrMIh R7, [sp, #-30]
l326: ldrh R2, [sp, #-76]
l327: mov R0, #30
l328: ldrh R5, [sp, -R0]
l329: ldrVCh R8, [sp, #-10]
l330: ldrh R11, [sp, #-38]
l331: ldrGTh R0, [sp, #-46]
l332: mov R7, #30
l333: ldrPLh R8, [sp, -R7]
l334: mov R7, #62
l335: ldrGTh R5, [sp, -R7]
l336: ldrHIh R7, [sp, #-76]
l337: ldrLEh R7, [sp, #-18]
l338: mov R4, #66
l339: ldrNEh R10, [sp, -R4]
l340: ldrEQh R5, [sp, #-8]
l341: mov R2, #20
l342: ldrh R12, [sp, -R2]
l343: mov R9, #36
l344: ldrHIh R10, [sp, -R9]
l345: ldrh R4, [sp, #-20]
l346: ldrGEh R0, [sp, #-2]
l347: mov R10, #58
l348: ldrCCh R8, [sp, -R10]
l349: ldrEQh R2, [sp, #-36]
l350: ldrh R10, [sp, #-68]
l351: mov R1, #42
l352: ldrh R3, [sp, -R1]
l353: mov R6, #38
l354: ldrh R10, [sp, -R6]
l355: mov R7, #46
l356: ldrGEh R0, [sp, -R7]
l357: ldrHIh R12, [sp, #-52]
l358: ldrVCh R0, [sp, #-80]
l359: ldrh R5, [sp, #-62]
l360: ldrMIh R4, [sp, #-30]
l361: mov R2, #58
l362: ldrLSh R8, [sp, -R2]
l363: ldrGEh R4, [sp, #-12]
l364: mov R5, #46
l365: ldrGEh R5, [sp, -R5]
l366: mov R9, #38
l367: ldrh R9, [sp, -R9]
l368: mov R10, #64
l369: ldrCSh R9, [sp, -R10]
l370: ldrh R7, [sp, #-52]
l371: mov R12, #46
l372: ldrh R4, [sp, -R12]
l373: mov R14, #48
l374: ldrMIh R3, [sp, -R14]
l375: mov R12, #26
l376: ldrVCh R9, [sp, -R12]
l377: ldrGEh R2, [sp, #-52]
l378: mov R8, #38
l379: ldrh R5, [sp, -R8]
l380: mov R5, #66
l381: ldrCSh R3, [sp, -R5]
l382: mov R10, #50
l383: ldrPLh R12, [sp, -R10]
l384: ldrh R1, [sp, #-48]
l385: mov R0, #76
l386: ldrh R6, [sp, -R0]
l387: mov R2, #18
l388: ldrh R12, [sp, -R2]
l389: ldrNEh R5, [sp, #-54]
l390: ldrVCh R11, [sp, #-52]
l391: mov R11, #80
l392: ldrNEh R4, [sp, -R11]
l393: mov R9, #4
l394: ldrh R4, [sp, -R9]
l395: mov R11, #68
l396: ldrMIh R10, [sp, -R11]
l397: ldrh R2, [sp, #-30]
l398: ldrh R8, [sp, #-74]
l399: ldrh R0, [sp, #-28]
l400: mov R14, #72
l401: ldrh R9, [sp, -R14]
l402: mov R0, #6
l403: ldrh R8, [sp, -R0]
l404: mov R12, #22
l405: ldrLEh R2, [sp, -R12]
l406: mov R12, #62
l407: ldrh R12, [sp, -R12]
l408: mov R1, #40
l409: ldrGEh R8, [sp, -R1]
l410: mov R1, #22
l411: ldrh R2, [sp, -R1]
l412: mov R14, #76
l413: ldrMIh R0, [sp, -R14]
l414: mov R12, #34
l415: ldrGEh R3, [sp, -R12]
l416: ldrNEh R11, [sp, #-12]
l417: ldrHIh R2, [sp, #-4]
l418: ldrPLh R11, [sp, #-32]
l419: ldrMIh R5, [sp, #-40]
l420: mov R10, #10
l421: ldrCCh R14, [sp, -R10]
l422: ldrMIh R8, [sp, #-70]
l423: mov R8, #34
l424: ldrh R9, [sp, -R8]
l425: mov R9, #22
l426: ldrh R14, [sp, -R9]
l427: mov R14, #14
l428: ldrh R14, [sp, -R14]
l429: ldrh R0, [sp, #-74]
l430: mov R10, #66
l431: ldrh R12, [sp, -R10]
l432: mov R5, #78
l433: ldrh R12, [sp, -R5]
l434: mov R5, #70
l435: ldrh R6, [sp, -R5]
l436: mov R11, #18
l437: ldrCSh R9, [sp, -R11]
l438: mov R3, #32
l439: ldrLTh R0, [sp, -R3]
l440: mov R8, #60
l441: ldrh R8, [sp, -R8]
l442: ldrh R8, [sp, #-20]
l443: mov R3, #76
l444: ldrh R12, [sp, -R3]
l445: ldrCSh R14, [sp, #-2]
l446: mov R9, #80
l447: ldrh R6, [sp, -R9]
l448: ldrh R11, [sp, #-20]
l449: mov R11, #26
l450: ldrh R14, [sp, -R11]
l451: mov R3, #8
l452: ldrh R3, [sp, -R3]
l453: mov R0, #56
l454: ldrVCh R7, [sp, -R0]
l455: mov R7, #10
l456: ldrh R12, [sp, -R7]
l457: mov R9, #12
l458: ldrCSh R8, [sp, -R9]
l459: ldrCCh R5, [sp, #-30]
l460: mov R14, #36
l461: ldrCSh R10, [sp, -R14]
l462: ldrVCh R4, [sp, #-8]
l463: mov R10, #42
l464: ldrh R8, [sp, -R10]
l465: ldrHIh R5, [sp, #-22]
l466: ldrh R1, [sp, #-42]
l467: ldrLEh R11, [sp, #-2]
l468: ldrNEh R8, [sp, #-6]
l469: mov R7, #68
l470: ldrh R10, [sp, -R7]
l471: ldrGEh R9, [sp, #-76]
l472: ldrh R1, [sp, #-50]
l473: ldrNEh R9, [sp, #-24]
l474: ldrh R14, [sp, #-4]
l475: mov R8, #28
l476: ldrGTh R0, [sp, -R8]
l477: ldrh R9, [sp, #-78]
l478: ldrLSh R7, [sp, #-66]
l479: ldrh R4, [sp, #-24]
l480: mov R14, #18
l481: ldrNEh R11, [sp, -R14]
l482: mov R12, #46
l483: ldrh R4, [sp, -R12]
l484: mov R5, #52
l485: ldrCSh R11, [sp, -R5]
l486: mov R11, #74
l487: ldrVSh R5, [sp, -R11]
l488: ldrh R3, [sp, #-56]
l489: mov R14, #74
l490: ldrGTh R8, [sp, -R14]
l491: mov R4, #50
l492: ldrLSh R4, [sp, -R4]
l493: ldrh R7, [sp, #-52]
l494: ldrh R6, [sp, #-70]
l495: mov R1, #40
l496: ldrHIh R11, [sp, -R1]
l497: ldrGTh R12, [sp, #-80]
l498: mov R9, #42
l499: ldrEQh R9, [sp, -R9]
l500: mov R12, #34
l501: ldrh R9, [sp, -R12]
l502: mov R9, #56
l503: ldrVCh R7, [sp, -R9]
l504: ldrCSh R2, [sp, #-58]
l505: ldrLTh R3, [sp, #-10]
l506: mov R2, #28
l507: ldrHIh R5, [sp, -R2]
l508: ldrGEh R7, [sp, #-50]
l509: mov R12, #54
l510: ldrVSh R3, [sp, -R12]
l511: ldrh R8, [sp, #-48]
l512: mov R0, #62
l513: ldrh R6, [sp, -R0]
l514: ldrh R1, [sp, #-72]
l515: mov R1, #24
l516: ldrh R10, [sp, -R1]
l517: ldrVCh R11, [sp, #-32]
l518: ldrPLh R11, [sp, #-68]
l519: mov R6, #74
l520: ldrh R4, [sp, -R6]
l521: mov R10, #40
l522: ldrh R8, [sp, -R10]
l523: ldrPLh R12, [sp, #-22]
l524: mov R6, #60
l525: ldrh R3, [sp, -R6]
l526: mov R11, #22
l527: ldrLEh R8, [sp, -R11]
l528: mov R6, #28
l529: ldrh R12, [sp, -R6]
l530: mov R11, #58
l531: ldrh R14, [sp, -R11]
l532: mov R7, #56
l533: ldrh R0, [sp, -R7]
l534: mov R9, #12
l535: ldrVCh R5, [sp, -R9]
l536: mov R12, #60
l537: ldrh R10, [sp, -R12]
l538: mov R11, #30
l539: ldrCCh R3, [sp, -R11]
l540: mov R5, #10
l541: ldrCSh R11, [sp, -R5]
l542: ldrLEh R7, [sp, #-18]
l543: mov R5, #70
l544: ldrh R11, [sp, -R5]
l545: mov R10, #74
l546: ldrHIh R9, [sp, -R10]
l547: mov R2, #46
l548: ldrCCh R2, [sp, -R2]
l549: mov R1, #24
l550: ldrh R2, [sp, -R1]
l551: mov R9, #26
l552: ldrCCh R0, [sp, -R9]
l553: mov R14, #64
l554: ldrh R9, [sp, -R14]
l555: ldrLTh R3, [sp, #-74]
l556: mov R9, #38
l557: ldrh R12, [sp, -R9]
l558: ldrh R3, [sp, #-22]
l559: ldrVSh R1, [sp, #-40]
l560: ldrLTh R1, [sp, #-42]
l561: ldrh R10, [sp, #-8]
l562: mov R3, #66
l563: ldrh R12, [sp, -R3]
l564: ldrh R9, [sp, #-62]
l565: mov R8, #2
l566: ldrLTh R9, [sp, -R8]
l567: mov R12, #76
l568: ldrVCh R12, [sp, -R12]
l569: ldrLSh R3, [sp, #-52]
l570: mov R14, #4
l571: ldrLEh R2, [sp, -R14]
l572: mov R2, #4
l573: ldrh R4, [sp, -R2]
l574: mov R8, #8
l575: ldrh R4, [sp, -R8]
l576: mov R12, #28
l577: ldrMIh R11, [sp, -R12]
l578: mov R4, #22
l579: ldrh R8, [sp, -R4]
l580: ldrh R8, [sp, #-38]
l581: mov R0, #14
l582: ldrh R1, [sp, -R0]
l583: mov R4, #64
l584: ldrPLh R4, [sp, -R4]
l585: ldrEQh R3, [sp, #-56]
l586: ldrh R3, [sp, #-32]
l587: ldrHIh R0, [sp, #-74]
l588: mov R11, #64
l589: ldrEQh R10, [sp, -R11]
l590: mov R5, #28
l591: ldrLTh R5, [sp, -R5]
l592: ldrh R1, [sp, #-18]
l593: mov R12, #44
l594: ldrHIh R1, [sp, -R12]
l595: ldrNEh R7, [sp, #-50]
l596: mov R12, #50
l597: ldrPLh R2, [sp, -R12]
l598: ldrh R11, [sp, #-20]
l599: mov R7, #10
l600: ldrNEh R0, [sp, -R7]
l601: mov R5, #42
l602: ldrh R12, [sp, -R5]
l603: mov R0, #6
l604: ldrh R14, [sp, -R0]
l605: ldrMIh R8, [sp, #-26]
l606: ldrPLh R9, [sp, #-4]
l607: mov R1, #60
l608: ldrh R9, [sp, -R1]
l609: ldrEQh R3, [sp, #-60]
l610: ldrLTh R14, [sp, #-62]
l611: ldrLSh R9, [sp, #-74]
l612: mov R10, #22
l613: ldrLEh R12, [sp, -R10]
l614: ldrNEh R10, [sp, #-58]
l615: mov R3, #72
l616: ldrh R1, [sp, -R3]
l617: mov R8, #18
l618: ldrVCh R10, [sp, -R8]
l619: mov R9, #38
l620: ldrLEh R3, [sp, -R9]
l621: ldrNEh R10, [sp, #-16]
l622: ldrh R8, [sp, #-38]
l623: mov R8, #48
l624: ldrVSh R7, [sp, -R8]
l625: ldrh R0, [sp, #-62]
l626: ldrCSh R6, [sp, #-46]
l627: ldrCSh R8, [sp, #-14]
l628: mov R1, #18
l629: ldrh R7, [sp, -R1]
l630: mov R3, #20
l631: ldrCCh R2, [sp, -R3]
l632: ldrMIh R0, [sp, #-42]
l633: mov R4, #20
l634: ldrLSh R7, [sp, -R4]
l635: mov R9, #42
l636: ldrVCh R1, [sp, -R9]
l637: ldrGEh R7, [sp, #-28]
l638: ldrCCh R0, [sp, #-10]
l639: ldrh R11, [sp, #-26]
l640: ldrh R2, [sp, #-18]
l641: ldrEQh R10, [sp, #-64]
l642: mov R1, #56
l643: ldrGTh R3, [sp, -R1]
l644: mov R0, #78
l645: ldrLSh R12, [sp, -R0]
l646: ldrCSh R0, [sp, #-10]
l647: ldrVSh R4, [sp, #-34]
l648: ldrh R4, [sp, #-24]
l649: mov R3, #8
l650: ldrLTh R6, [sp, -R3]
l651: ldrh R14, [sp, #-4]
l652: mov R8, #70
l653: ldrCCh R0, [sp, -R8]
l654: mov R0, #38
l655: ldrPLh R1, [sp, -R0]
l656: mov R10, #60
l657: ldrh R5, [sp, -R10]
l658: ldrGTh R7, [sp, #-6]
l659: ldrh R11, [sp, #-16]
l660: mov R11, #74
l661: ldrHIh R4, [sp, -R11]
l662: ldrHIh R12, [sp, #-44]
l663: mov R2, #6
l664: ldrh R8, [sp, -R2]
l665: mov R7, #60
l666: ldrLTh R12, [sp, -R7]
l667: ldrNEh R8, [sp, #-70]
l668: ldrGEh R8, [sp, #-54]
l669: mov R2, #48
l670: ldrNEh R8, [sp, -R2]
l671: mov R4, #38
l672: ldrh R8, [sp, -R4]
l673: ldrGEh R12, [sp, #-64]
l674: mov R6, #16
l675: ldrh R4, [sp, -R6]
l676: ldrh R1, [sp, #-38]
l677: ldrh R11, [sp, #-16]
l678: ldrCSh R9, [sp, #-78]
l679: ldrh R10, [sp, #-8]
l680: mov R7, #14
l681: ldrh R0, [sp, -R7]
l682: ldrVSh R8, [sp, #-26]
l683: ldrVCh R2, [sp, #-56]
l684: mov R11, #52
l685: ldrh R0, [sp, -R11]
l686: mov R7, #74
l687: ldrCSh R8, [sp, -R7]
l688: ldrEQh R9, [sp, #-12]
l689: ldrh R12, [sp, #-66]
l690: mov R8, #48
l691: ldrh R6, [sp, -R8]
l692: mov R14, #76
l693: ldrVSh R1, [sp, -R14]
l694: ldrh R10, [sp, #-68]
l695: ldrCSh R3, [sp, #-50]
l696: mov R10, #30
l697: ldrGEh R2, [sp, -R10]
l698: ldrh R7, [sp, #-46]
l699: mov R9, #16
l700: ldrLSh R1, [sp, -R9]
l701: mov R4, #42
l702: ldrh R11, [sp, -R4]
l703: ldrh R12, [sp, #-26]
l704: mov R1, #60
l705: ldrh R2, [sp, -R1]
l706: ldrGTh R2, [sp, #-4]
l707: mov R9, #56
l708: ldrEQh R6, [sp, -R9]
l709: ldrCCh R8, [sp, #-70]
l710: mov R7, #22
l711: ldrEQh R4, [sp, -R7]
l712: ldrLSh R8, [sp, #-38]
l713: ldrVCh R12, [sp, #-4]
l714: ldrh R11, [sp, #-30]
l715: ldrh R7, [sp, #-72]
l716: mov R4, #80
l717: ldrh R6, [sp, -R4]
l718: mov R11, #40
l719: ldrh R6, [sp, -R11]
l720: mov R10, #78
l721: ldrh R7, [sp, -R10]
l722: mov R11, #54
l723: ldrh R10, [sp, -R11]
l724: mov R4, #62
l725: ldrh R0, [sp, -R4]
l726: mov R4, #10
l727: ldrh R2, [sp, -R4]
l728: ldrh R5, [sp, #-80]
l729: mov R8, #10
l730: ldrLEh R0, [sp, -R8]
l731: mov R2, #28
l732: ldrh R8, [sp, -R2]
l733: ldrh R9, [sp, #-76]
l734: mov R5, #2
l735: ldrGEh R14, [sp, -R5]
l736: ldrh R12, [sp, #-24]
l737: ldrGTh R10, [sp, #-18]
l738: mov R3, #38
l739: ldrh R5, [sp, -R3]
l740: ldrh R12, [sp, #-52]
l741: mov R6, #22
l742: ldrMIh R14, [sp, -R6]
l743: ldrCSh R11, [sp, #-50]
l744: mov R11, #60
l745: ldrh R9, [sp, -R11]
l746: ldrh R2, [sp, #-14]
l747: mov R12, #12
l748: ldrGTh R5, [sp, -R12]
l749: ldrEQh R1, [sp, #-48]
l750: ldrCCh R1, [sp, #-68]
l751: ldrVSh R12, [sp, #-80]
l752: mov R7, #62
l753: ldrh R7, [sp, -R7]
l754: mov R14, #30
l755: ldrCCh R3, [sp, -R14]
l756: ldrCSh R0, [sp, #-2]
l757: mov R14, #70
l758: ldrh R14, [sp, -R14]
l759: mov R6, #74
l760: ldrVSh R14, [sp, -R6]
l761: mov R9, #26
l762: ldrh R8, [sp, -R9]
l763: ldrh R2, [sp, #-78]
l764: ldrh R12, [sp, #-16]
l765: ldrh R5, [sp, #-74]
l766: ldrh R0, [sp, #-38]
l767: mov R9, #30
l768: ldrh R7, [sp, -R9]
l769: ldrGTh R3, [sp, #-78]
l770: ldrh R11, [sp, #-68]
l771: mov R3, #6
l772: ldrLSh R4, [sp, -R3]
l773: mov R14, #12
l774: ldrGTh R9, [sp, -R14]
l775: mov R7, #20
l776: ldrh R5, [sp, -R7]
l777: mov R6, #50
l778: ldrh R3, [sp, -R6]
l779: ldrCCh R8, [sp, #-72]
l780: ldrh R5, [sp, #-76]
l781: mov R12, #48
l782: ldrGEh R7, [sp, -R12]
l783: ldrh R4, [sp, #-4]
l784: mov R7, #68
l785: ldrh R4, [sp, -R7]
l786: ldrMIh R14, [sp, #-40]
l787: mov R14, #18
l788: ldrh R14, [sp, -R14]
l789: mov R5, #10
l790: ldrEQh R4, [sp, -R5]
l791: ldrLTh R0, [sp, #-2]
l792: ldrh R2, [sp, #-2]
l793: mov R0, #58
l794: ldrNEh R2, [sp, -R0]
l795: ldrVSh R1, [sp, #-68]
l796: ldrLSh R0, [sp, #-56]
l797: mov R5, #16
l798: ldrHIh R11, [sp, -R5]
l799: mov R0, #56
l800: ldrh R7, [sp, -R0]
l801: mov R6, #60
l802: ldrPLh R3, [sp, -R6]
l803: ldrCCh R5, [sp, #-76]
l804: ldrLTh R3, [sp, #-28]
l805: ldrEQh R4, [sp, #-6]
l806: mov R4, #48
l807: ldrHIh R10, [sp, -R4]
l808: ldrVSh R6, [sp, #-38]
l809: mov R14, #26
l810: ldrGTh R12, [sp, -R14]
l811: ldrh R14, [sp, #-40]
l812: mov R12, #14
l813: ldrLSh R11, [sp, -R12]
l814: ldrh R1, [sp, #-4]
l815: ldrNEh R8, [sp, #-32]
l816: mov R0, #80
l817: ldrh R8, [sp, -R0]
l818: ldrh R0, [sp, #-66]
l819: mov R1, #22
l820: ldrVCh R1, [sp, -R1]
l821: ldrHIh R5, [sp, #-22]
l822: mov R3, #8
l823: ldrh R10, [sp, -R3]
l824: ldrCCh R14, [sp, #-78]
l825: mov R1, #4
l826: ldrCCh R5, [sp, -R1]
l827: ldrh R12, [sp, #-22]
l828: ldrh R7, [sp, #-78]
l829: ldrGEh R1, [sp, #-42]
l830: mov R8, #64
l831: ldrVCh R5, [sp, -R8]
l832: mov R6, #16
l833: ldrh R8, [sp, -R6]
l834: ldrVSh R12, [sp, #-6]
l835: ldrh R6, [sp, #-42]
l836: mov R2, #22
l837: ldrh R7, [sp, -R2]
l838: ldrPLh R14, [sp, #-10]
l839: ldrh R9, [sp, #-80]
l840: mov R14, #62
l841: ldrHIh R3, [sp, -R14]
l842: mov R3, #50
l843: ldrNEh R12, [sp, -R3]
l844: mov R5, #42
l845: ldrh R14, [sp, -R5]
l846: ldrh R9, [sp, #-8]
l847: mov R3, #36
l848: ldrh R1, [sp, -R3]
l849: ldrVCh R5, [sp, #-22]
l850: mov R4, #16
l851: ldrVCh R8, [sp, -R4]
l852: mov R8, #36
l853: ldrEQh R2, [sp, -R8]
l854: mov R9, #74
l855: ldrNEh R6, [sp, -R9]
l856: mov R9, #78
l857: ldrh R0, [sp, -R9]
l858: ldrMIh R6, [sp, #-58]
l859: ldrCSh R11, [sp, #-30]
l860: mov R11, #60
l861: ldrLTh R7, [sp, -R11]
l862: ldrLSh R7, [sp, #-32]
l863: ldrh R6, [sp, #-34]
l864: ldrh R3, [sp, #-74]
l865: mov R2, #36
l866: ldrVSh R11, [sp, -R2]
l867: ldrh R12, [sp, #-68]
l868: ldrCSh R11, [sp, #-26]
l869: ldrh R6, [sp, #-40]
l870: mov R1, #60
l871: ldrGEh R9, [sp, -R1]
l872: ldrGTh R10, [sp, #-22]
l873: ldrh R1, [sp, #-22]
l874: mov R5, #64
l875: ldrh R8, [sp, -R5]
l876: ldrh R10, [sp, #-70]
l877: ldrPLh R10, [sp, #-12]
l878: ldrNEh R14, [sp, #-16]
l879: mov R9, #56
l880: ldrNEh R1, [sp, -R9]
l881: mov R14, #60
l882: ldrGTh R6, [sp, -R14]
l883: ldrEQh R10, [sp, #-48]
l884: ldrVCh R11, [sp, #-40]
l885: ldrh R9, [sp, #-20]
l886: mov R9, #20
l887: ldrGTh R2, [sp, -R9]
l888: ldrCCh R2, [sp, #-60]
l889: mov R9, #24
l890: ldrh R5, [sp, -R9]
l891: ldrh R11, [sp, #-68]
l892: ldrh R0, [sp, #-30]
l893: ldrh R4, [sp, #-40]
l894: ldrVSh R7, [sp, #-66]
l895: ldrh R4, [sp, #-30]
l896: mov R4, #28
l897: ldrh R12, [sp, -R4]
l898: mov R7, #42
l899: ldrh R7, [sp, -R7]
l900: mov R0, #40
l901: ldrh R3, [sp, -R0]
l902: ldrLSh R7, [sp, #-36]
l903: ldrMIh R2, [sp, #-42]
l904: mov R9, #18
l905: ldrLEh R12, [sp, -R9]
l906: mov R5, #70
l907: ldrLEh R9, [sp, -R5]
l908: mov R12, #62
l909: ldrh R14, [sp, -R12]
l910: mov R11, #80
l911: ldrVSh R0, [sp, -R11]
l912: ldrGTh R14, [sp, #-26]
l913: ldrh R8, [sp, #-34]
l914: mov R10, #46
l915: ldrLTh R12, [sp, -R10]
l916: mov R1, #6
l917: ldrh R9, [sp, -R1]
l918: ldrh R14, [sp, #-22]
l919: mov R6, #12
l920: ldrGTh R9, [sp, -R6]
l921: ldrVSh R6, [sp, #-56]
l922: mov R4, #24
l923: ldrh R3, [sp, -R4]
l924: ldrNEh R0, [sp, #-16]
l925: ldrh R8, [sp, #-28]
l926: mov R5, #66
l927: ldrCCh R4, [sp, -R5]
l928: ldrPLh R10, [sp, #-18]
l929: ldrNEh R5, [sp, #-80]
l930: mov R4, #28
l931: ldrh R4, [sp, -R4]
l932: ldrMIh R2, [sp, #-2]
l933: ldrPLh R0, [sp, #-24]
l934: ldrNEh R10, [sp, #-74]
l935: ldrLEh R3, [sp, #-26]
l936: mov R2, #50
l937: ldrNEh R1, [sp, -R2]
l938: ldrCCh R0, [sp, #-46]
l939: ldrVSh R6, [sp, #-76]
l940: ldrVCh R3, [sp, #-22]
l941: mov R5, #80
l942: ldrh R12, [sp, -R5]
l943: mov R0, #76
l944: ldrLEh R2, [sp, -R0]
l945: mov R3, #36
l946: ldrGEh R0, [sp, -R3]
l947: mov R10, #10
l948: ldrGTh R10, [sp, -R10]
l949: mov R12, #56
l950: ldrGEh R1, [sp, -R12]
l951: mov R5, #16
l952: ldrGTh R12, [sp, -R5]
l953: mov R3, #36
l954: ldrLTh R9, [sp, -R3]
l955: ldrh R12, [sp, #-56]
l956: mov R14, #46
l957: ldrLSh R3, [sp, -R14]
l958: mov R14, #62
l959: ldrh R2, [sp, -R14]
l960: ldrLEh R1, [sp, #-70]
l961: ldrLSh R9, [sp, #-22]
l962: mov R12, #72
l963: ldrh R10, [sp, -R12]
l964: mov R3, #70
l965: ldrCCh R9, [sp, -R3]
l966: ldrEQh R8, [sp, #-42]
l967: ldrh R11, [sp, #-14]
l968: mov R11, #62
l969: ldrVSh R9, [sp, -R11]
l970: ldrLSh R6, [sp, #-44]
l971: ldrh R8, [sp, #-32]
l972: ldrNEh R11, [sp, #-70]
l973: mov R8, #32
l974: ldrh R0, [sp, -R8]
l975: mov R12, #42
l976: ldrh R6, [sp, -R12]
l977: ldrCSh R6, [sp, #-10]
l978: mov R9, #2
l979: ldrEQh R11, [sp, -R9]
l980: ldrVCh R5, [sp, #-40]
l981: mov R7, #24
l982: ldrPLh R6, [sp, -R7]
l983: mov R7, #2
l984: ldrh R2, [sp, -R7]
l985: mov R0, #34
l986: ldrEQh R11, [sp, -R0]
l987: mov R3, #48
l988: ldrh R9, [sp, -R3]
l989: ldrGTh R3, [sp, #-32]
l990: ldrGEh R12, [sp, #-50]
l991: mov R11, #38
l992: ldrPLh R6, [sp, -R11]
l993: mov R2, #46
l994: ldrLSh R6, [sp, -R2]
l995: mov R14, #48
l996: ldrCCh R11, [sp, -R14]
l997: mov R9, #52
l998: ldrh R1, [sp, -R9]
l999: ldrh R6, [sp, #-12]
l1000: ldrh R1, [sp, #-50]
end: b end

