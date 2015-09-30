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
val1: .word 1069398347
next1:ldr R2, val2
b next2
val2: .word 2201744022
next2:ldr R3, val3
b next3
val3: .word 3273277882
next3:ldr R4, val4
b next4
val4: .word 267250687
next4:ldr R5, val5
b next5
val5: .word 3328194943
next5:ldr R6, val6
b next6
val6: .word 4022951145
next6:ldr R7, val7
b next7
val7: .word 2196736268
next7:ldr R8, val8
b next8
val8: .word 3672743356
next8:ldr R9, val9
b next9
val9: .word 1641357169
next9:ldr R10, val10
b next10
val10: .word 2249337480
next10:ldr R11, val11
b next11
val11: .word 919170142
next11:ldr R12, val12
b next12
val12: .word 3534118647
next12:ldr R14, val14
b next14
val14: .word 2485819504

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 3144023582
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 609768606
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 281703539
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 4122540378
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 3215237776
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 2426660492
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 1183768782
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 923376281
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 1458221536
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 3502668076
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 1835683742
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 1012120361
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 1253582238
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 2577691641
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 2848059474
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 3556205879
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 1768601811
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 2003594276
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 3582759469
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 3261174711
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 2169877879
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: mov R11, #38
l2: ldrh R0, [sp, -R11]
l3: ldrh R12, [sp, #-56]
l4: ldrh R9, [sp, #-70]
l5: ldrh R11, [sp, #-62]
l6: ldrh R11, [sp, #-28]
l7: mov R14, #12
l8: ldrh R6, [sp, -R14]
l9: mov R10, #20
l10: ldrHIh R11, [sp, -R10]
l11: mov R2, #68
l12: ldrh R11, [sp, -R2]
l13: mov R2, #74
l14: ldrGEh R9, [sp, -R2]
l15: ldrh R7, [sp, #-74]
l16: mov R6, #8
l17: ldrLTh R5, [sp, -R6]
l18: ldrLEh R7, [sp, #-40]
l19: mov R3, #50
l20: ldrLTh R3, [sp, -R3]
l21: ldrh R10, [sp, #-14]
l22: ldrLSh R4, [sp, #-42]
l23: ldrh R12, [sp, #-42]
l24: ldrh R4, [sp, #-38]
l25: mov R8, #60
l26: ldrh R6, [sp, -R8]
l27: mov R9, #60
l28: ldrh R4, [sp, -R9]
l29: mov R9, #18
l30: ldrh R6, [sp, -R9]
l31: mov R6, #20
l32: ldrCCh R4, [sp, -R6]
l33: mov R4, #42
l34: ldrGTh R2, [sp, -R4]
l35: mov R0, #22
l36: ldrLEh R10, [sp, -R0]
l37: mov R10, #62
l38: ldrVSh R11, [sp, -R10]
l39: ldrh R5, [sp, #-50]
l40: ldrLSh R5, [sp, #-28]
l41: ldrLSh R5, [sp, #-44]
l42: ldrh R10, [sp, #-78]
l43: mov R5, #30
l44: ldrCSh R2, [sp, -R5]
l45: mov R5, #40
l46: ldrh R11, [sp, -R5]
l47: ldrPLh R5, [sp, #-46]
l48: mov R2, #52
l49: ldrPLh R11, [sp, -R2]
l50: mov R14, #8
l51: ldrh R7, [sp, -R14]
l52: mov R0, #64
l53: ldrh R2, [sp, -R0]
l54: mov R9, #76
l55: ldrLEh R9, [sp, -R9]
l56: ldrh R9, [sp, #-78]
l57: mov R8, #68
l58: ldrh R8, [sp, -R8]
l59: ldrh R14, [sp, #-44]
l60: mov R1, #58
l61: ldrh R1, [sp, -R1]
l62: ldrh R12, [sp, #-16]
l63: mov R5, #20
l64: ldrh R3, [sp, -R5]
l65: mov R1, #50
l66: ldrh R4, [sp, -R1]
l67: mov R7, #30
l68: ldrh R6, [sp, -R7]
l69: ldrh R7, [sp, #-38]
l70: mov R9, #80
l71: ldrGEh R8, [sp, -R9]
l72: mov R1, #76
l73: ldrVSh R2, [sp, -R1]
l74: mov R4, #48
l75: ldrLTh R14, [sp, -R4]
l76: mov R4, #36
l77: ldrVCh R4, [sp, -R4]
l78: mov R6, #30
l79: ldrh R1, [sp, -R6]
l80: mov R12, #16
l81: ldrh R0, [sp, -R12]
l82: ldrEQh R3, [sp, #-72]
l83: ldrLSh R10, [sp, #-16]
l84: ldrh R14, [sp, #-50]
l85: ldrCCh R3, [sp, #-60]
l86: ldrVSh R8, [sp, #-24]
l87: mov R0, #58
l88: ldrh R0, [sp, -R0]
l89: ldrh R1, [sp, #-40]
l90: mov R9, #28
l91: ldrEQh R1, [sp, -R9]
l92: mov R0, #42
l93: ldrh R11, [sp, -R0]
l94: mov R14, #30
l95: ldrLEh R7, [sp, -R14]
l96: mov R3, #42
l97: ldrCSh R0, [sp, -R3]
l98: ldrLSh R8, [sp, #-54]
l99: ldrh R9, [sp, #-56]
l100: mov R0, #52
l101: ldrVSh R5, [sp, -R0]
l102: mov R6, #50
l103: ldrh R2, [sp, -R6]
l104: ldrHIh R14, [sp, #-44]
l105: mov R9, #8
l106: ldrLSh R7, [sp, -R9]
l107: mov R8, #12
l108: ldrh R4, [sp, -R8]
l109: mov R9, #36
l110: ldrh R9, [sp, -R9]
l111: ldrh R9, [sp, #-40]
l112: ldrGEh R1, [sp, #-28]
l113: ldrh R4, [sp, #-44]
l114: mov R7, #6
l115: ldrh R1, [sp, -R7]
l116: mov R9, #20
l117: ldrEQh R9, [sp, -R9]
l118: mov R4, #20
l119: ldrLEh R9, [sp, -R4]
l120: ldrNEh R0, [sp, #-20]
l121: mov R1, #16
l122: ldrh R0, [sp, -R1]
l123: mov R2, #30
l124: ldrh R3, [sp, -R2]
l125: mov R3, #44
l126: ldrGEh R12, [sp, -R3]
l127: mov R5, #8
l128: ldrMIh R10, [sp, -R5]
l129: mov R12, #40
l130: ldrNEh R12, [sp, -R12]
l131: ldrHIh R4, [sp, #-6]
l132: mov R6, #58
l133: ldrh R5, [sp, -R6]
l134: mov R12, #50
l135: ldrVSh R0, [sp, -R12]
l136: ldrGEh R2, [sp, #-10]
l137: ldrh R14, [sp, #-16]
l138: mov R8, #78
l139: ldrLTh R1, [sp, -R8]
l140: ldrGEh R1, [sp, #-70]
l141: mov R7, #18
l142: ldrh R10, [sp, -R7]
l143: mov R4, #24
l144: ldrVSh R12, [sp, -R4]
l145: mov R6, #56
l146: ldrh R4, [sp, -R6]
l147: mov R3, #32
l148: ldrVSh R11, [sp, -R3]
l149: ldrh R0, [sp, #-68]
l150: mov R11, #56
l151: ldrLSh R1, [sp, -R11]
l152: ldrLEh R2, [sp, #-38]
l153: ldrLEh R6, [sp, #-36]
l154: mov R3, #24
l155: ldrh R3, [sp, -R3]
l156: ldrh R3, [sp, #-8]
l157: mov R9, #8
l158: ldrh R10, [sp, -R9]
l159: mov R4, #60
l160: ldrMIh R3, [sp, -R4]
l161: ldrh R8, [sp, #-62]
l162: mov R12, #26
l163: ldrh R6, [sp, -R12]
l164: ldrh R12, [sp, #-36]
l165: ldrVCh R10, [sp, #-60]
l166: mov R5, #44
l167: ldrCSh R11, [sp, -R5]
l168: mov R5, #72
l169: ldrh R5, [sp, -R5]
l170: mov R1, #44
l171: ldrh R9, [sp, -R1]
l172: mov R7, #44
l173: ldrHIh R0, [sp, -R7]
l174: mov R2, #72
l175: ldrVCh R5, [sp, -R2]
l176: ldrLSh R5, [sp, #-8]
l177: ldrGTh R11, [sp, #-52]
l178: mov R0, #48
l179: ldrVCh R0, [sp, -R0]
l180: mov R11, #72
l181: ldrh R0, [sp, -R11]
l182: mov R8, #26
l183: ldrVSh R5, [sp, -R8]
l184: ldrGTh R2, [sp, #-80]
l185: mov R6, #80
l186: ldrh R12, [sp, -R6]
l187: mov R1, #76
l188: ldrh R7, [sp, -R1]
l189: mov R2, #74
l190: ldrGTh R4, [sp, -R2]
l191: mov R4, #46
l192: ldrh R7, [sp, -R4]
l193: mov R8, #44
l194: ldrPLh R6, [sp, -R8]
l195: ldrh R0, [sp, #-52]
l196: ldrh R0, [sp, #-58]
l197: ldrh R9, [sp, #-14]
l198: mov R10, #42
l199: ldrh R14, [sp, -R10]
l200: ldrEQh R12, [sp, #-32]
l201: mov R9, #18
l202: ldrLEh R4, [sp, -R9]
l203: ldrh R4, [sp, #-60]
l204: ldrh R6, [sp, #-8]
l205: mov R10, #48
l206: ldrGEh R9, [sp, -R10]
l207: mov R9, #52
l208: ldrh R8, [sp, -R9]
l209: mov R6, #34
l210: ldrh R8, [sp, -R6]
l211: ldrh R9, [sp, #-32]
l212: ldrCCh R12, [sp, #-14]
l213: mov R12, #8
l214: ldrMIh R14, [sp, -R12]
l215: ldrh R0, [sp, #-74]
l216: ldrLEh R4, [sp, #-34]
l217: mov R10, #50
l218: ldrh R9, [sp, -R10]
l219: ldrLTh R5, [sp, #-40]
l220: mov R1, #32
l221: ldrh R1, [sp, -R1]
l222: ldrEQh R7, [sp, #-40]
l223: ldrEQh R12, [sp, #-30]
l224: ldrh R6, [sp, #-28]
l225: mov R4, #12
l226: ldrLSh R8, [sp, -R4]
l227: mov R12, #64
l228: ldrCCh R6, [sp, -R12]
l229: mov R8, #76
l230: ldrCSh R14, [sp, -R8]
l231: mov R12, #6
l232: ldrVSh R3, [sp, -R12]
l233: ldrh R9, [sp, #-62]
l234: ldrVCh R1, [sp, #-44]
l235: ldrh R8, [sp, #-10]
l236: ldrCSh R6, [sp, #-48]
l237: ldrCCh R11, [sp, #-48]
l238: mov R4, #36
l239: ldrGTh R4, [sp, -R4]
l240: mov R2, #36
l241: ldrh R7, [sp, -R2]
l242: ldrVCh R4, [sp, #-80]
l243: ldrCCh R2, [sp, #-16]
l244: ldrh R0, [sp, #-42]
l245: mov R1, #24
l246: ldrh R9, [sp, -R1]
l247: ldrh R9, [sp, #-16]
l248: mov R1, #60
l249: ldrHIh R0, [sp, -R1]
l250: mov R9, #44
l251: ldrVSh R14, [sp, -R9]
l252: mov R1, #52
l253: ldrh R4, [sp, -R1]
l254: ldrCCh R12, [sp, #-22]
l255: ldrGTh R0, [sp, #-42]
l256: mov R8, #22
l257: ldrMIh R4, [sp, -R8]
l258: mov R8, #44
l259: ldrVSh R0, [sp, -R8]
l260: mov R8, #56
l261: ldrh R10, [sp, -R8]
l262: mov R10, #72
l263: ldrNEh R6, [sp, -R10]
l264: mov R9, #18
l265: ldrh R1, [sp, -R9]
l266: ldrLEh R9, [sp, #-64]
l267: mov R5, #78
l268: ldrLTh R9, [sp, -R5]
l269: ldrh R6, [sp, #-32]
l270: ldrh R8, [sp, #-62]
l271: ldrVCh R2, [sp, #-30]
l272: ldrPLh R5, [sp, #-72]
l273: ldrNEh R4, [sp, #-72]
l274: mov R1, #32
l275: ldrPLh R8, [sp, -R1]
l276: ldrVSh R0, [sp, #-54]
l277: ldrLTh R5, [sp, #-44]
l278: ldrh R1, [sp, #-32]
l279: ldrGTh R1, [sp, #-50]
l280: mov R2, #68
l281: ldrLTh R14, [sp, -R2]
l282: ldrCSh R3, [sp, #-20]
l283: ldrHIh R2, [sp, #-42]
l284: mov R10, #62
l285: ldrVCh R2, [sp, -R10]
l286: mov R4, #78
l287: ldrh R6, [sp, -R4]
l288: ldrGEh R7, [sp, #-40]
l289: ldrCCh R9, [sp, #-40]
l290: mov R7, #48
l291: ldrh R4, [sp, -R7]
l292: mov R4, #72
l293: ldrCSh R5, [sp, -R4]
l294: mov R1, #66
l295: ldrh R2, [sp, -R1]
l296: mov R5, #24
l297: ldrGTh R7, [sp, -R5]
l298: ldrCCh R9, [sp, #-70]
l299: mov R8, #32
l300: ldrVCh R10, [sp, -R8]
l301: ldrPLh R12, [sp, #-14]
l302: mov R5, #44
l303: ldrGTh R5, [sp, -R5]
l304: mov R0, #62
l305: ldrEQh R2, [sp, -R0]
l306: ldrGEh R9, [sp, #-26]
l307: ldrMIh R8, [sp, #-58]
l308: ldrh R8, [sp, #-54]
l309: mov R0, #24
l310: ldrh R12, [sp, -R0]
l311: ldrh R11, [sp, #-48]
l312: ldrLEh R8, [sp, #-52]
l313: ldrNEh R5, [sp, #-38]
l314: ldrCCh R6, [sp, #-74]
l315: ldrVSh R2, [sp, #-36]
l316: ldrh R12, [sp, #-80]
l317: ldrh R6, [sp, #-20]
l318: mov R1, #72
l319: ldrMIh R4, [sp, -R1]
l320: ldrLTh R3, [sp, #-74]
l321: ldrHIh R4, [sp, #-40]
l322: mov R2, #44
l323: ldrh R1, [sp, -R2]
l324: mov R0, #50
l325: ldrh R6, [sp, -R0]
l326: ldrLTh R5, [sp, #-8]
l327: ldrh R12, [sp, #-74]
l328: mov R0, #76
l329: ldrh R6, [sp, -R0]
l330: ldrh R14, [sp, #-56]
l331: ldrCSh R2, [sp, #-74]
l332: mov R1, #54
l333: ldrVCh R2, [sp, -R1]
l334: mov R2, #60
l335: ldrh R5, [sp, -R2]
l336: mov R4, #50
l337: ldrh R5, [sp, -R4]
l338: mov R14, #22
l339: ldrh R8, [sp, -R14]
l340: mov R10, #76
l341: ldrh R1, [sp, -R10]
l342: mov R9, #24
l343: ldrLEh R11, [sp, -R9]
l344: mov R4, #26
l345: ldrCSh R0, [sp, -R4]
l346: ldrHIh R9, [sp, #-24]
l347: mov R12, #14
l348: ldrEQh R11, [sp, -R12]
l349: ldrEQh R14, [sp, #-26]
l350: mov R3, #16
l351: ldrh R3, [sp, -R3]
l352: ldrh R2, [sp, #-42]
l353: mov R7, #76
l354: ldrLSh R8, [sp, -R7]
l355: ldrh R5, [sp, #-28]
l356: ldrh R2, [sp, #-22]
l357: ldrh R1, [sp, #-30]
l358: ldrCCh R6, [sp, #-50]
l359: ldrMIh R5, [sp, #-18]
l360: ldrh R14, [sp, #-30]
l361: mov R12, #28
l362: ldrh R0, [sp, -R12]
l363: mov R6, #72
l364: ldrh R14, [sp, -R6]
l365: mov R7, #42
l366: ldrh R9, [sp, -R7]
l367: ldrh R11, [sp, #-40]
l368: ldrGTh R9, [sp, #-42]
l369: mov R5, #26
l370: ldrGTh R7, [sp, -R5]
l371: mov R11, #26
l372: ldrGEh R0, [sp, -R11]
l373: mov R0, #66
l374: ldrh R14, [sp, -R0]
l375: mov R6, #56
l376: ldrNEh R2, [sp, -R6]
l377: ldrh R8, [sp, #-66]
l378: mov R4, #16
l379: ldrPLh R8, [sp, -R4]
l380: mov R0, #44
l381: ldrLSh R3, [sp, -R0]
l382: mov R14, #54
l383: ldrCCh R3, [sp, -R14]
l384: ldrCSh R9, [sp, #-34]
l385: ldrNEh R8, [sp, #-46]
l386: mov R11, #50
l387: ldrHIh R8, [sp, -R11]
l388: mov R0, #20
l389: ldrMIh R11, [sp, -R0]
l390: ldrCCh R4, [sp, #-74]
l391: ldrh R11, [sp, #-38]
l392: ldrLEh R6, [sp, #-72]
l393: ldrLEh R14, [sp, #-42]
l394: mov R0, #48
l395: ldrCSh R7, [sp, -R0]
l396: ldrh R11, [sp, #-36]
l397: ldrh R6, [sp, #-14]
l398: mov R8, #62
l399: ldrMIh R6, [sp, -R8]
l400: ldrh R0, [sp, #-48]
l401: ldrVSh R1, [sp, #-34]
l402: mov R4, #38
l403: ldrPLh R14, [sp, -R4]
l404: mov R1, #80
l405: ldrCSh R11, [sp, -R1]
l406: mov R1, #36
l407: ldrVSh R14, [sp, -R1]
l408: ldrh R1, [sp, #-70]
l409: mov R1, #34
l410: ldrGEh R10, [sp, -R1]
l411: mov R9, #18
l412: ldrLTh R3, [sp, -R9]
l413: mov R9, #48
l414: ldrCSh R7, [sp, -R9]
l415: ldrCSh R12, [sp, #-12]
l416: ldrCSh R7, [sp, #-8]
l417: ldrh R0, [sp, #-52]
l418: mov R12, #78
l419: ldrGTh R12, [sp, -R12]
l420: ldrh R7, [sp, #-68]
l421: mov R4, #38
l422: ldrh R8, [sp, -R4]
l423: mov R2, #22
l424: ldrCCh R10, [sp, -R2]
l425: ldrMIh R5, [sp, #-72]
l426: mov R0, #34
l427: ldrEQh R9, [sp, -R0]
l428: mov R4, #74
l429: ldrh R1, [sp, -R4]
l430: mov R12, #28
l431: ldrh R14, [sp, -R12]
l432: ldrh R6, [sp, #-26]
l433: ldrh R8, [sp, #-48]
l434: ldrLTh R11, [sp, #-34]
l435: mov R2, #26
l436: ldrMIh R11, [sp, -R2]
l437: mov R4, #38
l438: ldrNEh R7, [sp, -R4]
l439: mov R4, #14
l440: ldrPLh R8, [sp, -R4]
l441: mov R8, #26
l442: ldrh R3, [sp, -R8]
l443: mov R6, #26
l444: ldrh R12, [sp, -R6]
l445: ldrGTh R2, [sp, #-42]
l446: ldrMIh R11, [sp, #-72]
l447: ldrh R14, [sp, #-54]
l448: mov R3, #72
l449: ldrh R9, [sp, -R3]
l450: mov R12, #38
l451: ldrh R6, [sp, -R12]
l452: mov R12, #64
l453: ldrCSh R6, [sp, -R12]
l454: mov R5, #30
l455: ldrCCh R2, [sp, -R5]
l456: mov R1, #20
l457: ldrLEh R0, [sp, -R1]
l458: ldrGEh R8, [sp, #-42]
l459: mov R9, #38
l460: ldrh R2, [sp, -R9]
l461: ldrVSh R14, [sp, #-10]
l462: ldrVSh R0, [sp, #-38]
l463: ldrGTh R5, [sp, #-14]
l464: ldrEQh R11, [sp, #-42]
l465: mov R4, #18
l466: ldrLTh R6, [sp, -R4]
l467: mov R1, #50
l468: ldrLTh R3, [sp, -R1]
l469: mov R9, #20
l470: ldrMIh R8, [sp, -R9]
l471: ldrLTh R7, [sp, #-46]
l472: mov R1, #68
l473: ldrCSh R5, [sp, -R1]
l474: ldrh R9, [sp, #-28]
l475: ldrh R4, [sp, #-52]
l476: ldrLEh R5, [sp, #-26]
l477: mov R6, #50
l478: ldrCCh R10, [sp, -R6]
l479: ldrLSh R5, [sp, #-80]
l480: mov R3, #22
l481: ldrh R14, [sp, -R3]
l482: mov R8, #64
l483: ldrh R5, [sp, -R8]
l484: ldrh R6, [sp, #-54]
l485: ldrh R3, [sp, #-32]
l486: ldrh R12, [sp, #-76]
l487: mov R3, #26
l488: ldrGTh R11, [sp, -R3]
l489: ldrh R2, [sp, #-26]
l490: ldrh R10, [sp, #-12]
l491: mov R11, #66
l492: ldrMIh R11, [sp, -R11]
l493: mov R2, #68
l494: ldrh R2, [sp, -R2]
l495: ldrVSh R7, [sp, #-70]
l496: mov R1, #44
l497: ldrh R12, [sp, -R1]
l498: mov R9, #46
l499: ldrGTh R0, [sp, -R9]
l500: ldrh R6, [sp, #-16]
l501: ldrCSh R8, [sp, #-70]
l502: mov R14, #30
l503: ldrCCh R11, [sp, -R14]
l504: ldrh R7, [sp, #-46]
l505: mov R10, #44
l506: ldrh R3, [sp, -R10]
l507: mov R11, #68
l508: ldrh R6, [sp, -R11]
l509: mov R9, #80
l510: ldrGEh R9, [sp, -R9]
l511: ldrh R12, [sp, #-58]
l512: ldrCSh R8, [sp, #-62]
l513: ldrh R1, [sp, #-52]
l514: mov R8, #32
l515: ldrNEh R11, [sp, -R8]
l516: ldrh R2, [sp, #-46]
l517: mov R2, #66
l518: ldrh R1, [sp, -R2]
l519: ldrGEh R11, [sp, #-24]
l520: ldrh R2, [sp, #-26]
l521: mov R11, #54
l522: ldrh R5, [sp, -R11]
l523: mov R10, #62
l524: ldrVCh R3, [sp, -R10]
l525: mov R3, #62
l526: ldrLSh R10, [sp, -R3]
l527: mov R14, #16
l528: ldrEQh R10, [sp, -R14]
l529: ldrh R14, [sp, #-34]
l530: mov R3, #66
l531: ldrEQh R11, [sp, -R3]
l532: ldrh R14, [sp, #-32]
l533: mov R4, #46
l534: ldrh R12, [sp, -R4]
l535: ldrh R3, [sp, #-26]
l536: ldrh R7, [sp, #-6]
l537: ldrLTh R5, [sp, #-68]
l538: mov R3, #34
l539: ldrh R3, [sp, -R3]
l540: ldrh R9, [sp, #-42]
l541: mov R3, #80
l542: ldrLSh R6, [sp, -R3]
l543: mov R10, #78
l544: ldrh R1, [sp, -R10]
l545: mov R14, #22
l546: ldrh R9, [sp, -R14]
l547: ldrCSh R0, [sp, #-72]
l548: mov R1, #54
l549: ldrGTh R10, [sp, -R1]
l550: ldrh R10, [sp, #-74]
l551: ldrh R4, [sp, #-24]
l552: ldrh R3, [sp, #-52]
l553: mov R11, #44
l554: ldrCCh R5, [sp, -R11]
l555: ldrEQh R5, [sp, #-32]
l556: ldrh R4, [sp, #-56]
l557: mov R6, #14
l558: ldrLSh R12, [sp, -R6]
l559: ldrCSh R3, [sp, #-70]
l560: mov R7, #54
l561: ldrLTh R8, [sp, -R7]
l562: mov R3, #68
l563: ldrVSh R8, [sp, -R3]
l564: ldrh R12, [sp, #-76]
l565: ldrh R11, [sp, #-78]
l566: mov R0, #40
l567: ldrNEh R0, [sp, -R0]
l568: mov R11, #42
l569: ldrVSh R14, [sp, -R11]
l570: mov R0, #6
l571: ldrEQh R11, [sp, -R0]
l572: mov R2, #6
l573: ldrh R5, [sp, -R2]
l574: mov R1, #6
l575: ldrh R0, [sp, -R1]
l576: mov R12, #28
l577: ldrGTh R12, [sp, -R12]
l578: ldrEQh R11, [sp, #-74]
l579: mov R9, #26
l580: ldrh R11, [sp, -R9]
l581: mov R6, #22
l582: ldrLSh R1, [sp, -R6]
l583: ldrLEh R14, [sp, #-40]
l584: mov R10, #30
l585: ldrCCh R2, [sp, -R10]
l586: ldrh R5, [sp, #-66]
l587: mov R1, #18
l588: ldrh R11, [sp, -R1]
l589: ldrGEh R12, [sp, #-16]
l590: ldrh R8, [sp, #-76]
l591: mov R8, #62
l592: ldrGEh R7, [sp, -R8]
l593: ldrh R4, [sp, #-22]
l594: mov R9, #68
l595: ldrh R0, [sp, -R9]
l596: ldrh R5, [sp, #-46]
l597: ldrCCh R2, [sp, #-58]
l598: mov R4, #26
l599: ldrh R5, [sp, -R4]
l600: mov R11, #14
l601: ldrPLh R9, [sp, -R11]
l602: ldrGTh R3, [sp, #-52]
l603: mov R9, #54
l604: ldrNEh R4, [sp, -R9]
l605: ldrCCh R14, [sp, #-50]
l606: mov R2, #10
l607: ldrh R6, [sp, -R2]
l608: ldrCSh R12, [sp, #-42]
l609: mov R3, #34
l610: ldrEQh R9, [sp, -R3]
l611: ldrHIh R2, [sp, #-12]
l612: ldrLSh R0, [sp, #-20]
l613: ldrh R10, [sp, #-10]
l614: ldrVSh R5, [sp, #-28]
l615: ldrGEh R14, [sp, #-60]
l616: ldrh R0, [sp, #-72]
l617: mov R12, #54
l618: ldrh R6, [sp, -R12]
l619: mov R4, #74
l620: ldrh R14, [sp, -R4]
l621: mov R0, #40
l622: ldrNEh R1, [sp, -R0]
l623: mov R0, #70
l624: ldrVCh R14, [sp, -R0]
l625: mov R10, #60
l626: ldrh R2, [sp, -R10]
l627: mov R14, #8
l628: ldrVCh R2, [sp, -R14]
l629: mov R12, #6
l630: ldrh R5, [sp, -R12]
l631: mov R3, #40
l632: ldrCCh R10, [sp, -R3]
l633: mov R6, #16
l634: ldrVCh R6, [sp, -R6]
l635: ldrLTh R1, [sp, #-8]
l636: ldrh R11, [sp, #-6]
l637: ldrh R1, [sp, #-78]
l638: mov R8, #30
l639: ldrVCh R2, [sp, -R8]
l640: ldrVSh R5, [sp, #-72]
l641: ldrh R14, [sp, #-68]
l642: ldrLTh R8, [sp, #-70]
l643: mov R11, #6
l644: ldrh R10, [sp, -R11]
l645: ldrh R8, [sp, #-20]
l646: mov R7, #36
l647: ldrh R8, [sp, -R7]
l648: ldrh R0, [sp, #-6]
l649: mov R10, #10
l650: ldrPLh R2, [sp, -R10]
l651: ldrCCh R5, [sp, #-70]
l652: ldrHIh R14, [sp, #-14]
l653: mov R10, #48
l654: ldrVCh R11, [sp, -R10]
l655: ldrCSh R8, [sp, #-6]
l656: ldrNEh R14, [sp, #-22]
l657: mov R4, #44
l658: ldrh R11, [sp, -R4]
l659: ldrCSh R0, [sp, #-54]
l660: mov R4, #24
l661: ldrh R10, [sp, -R4]
l662: ldrh R12, [sp, #-38]
l663: mov R1, #80
l664: ldrHIh R2, [sp, -R1]
l665: ldrNEh R2, [sp, #-14]
l666: ldrLEh R3, [sp, #-12]
l667: mov R4, #56
l668: ldrh R14, [sp, -R4]
l669: mov R11, #66
l670: ldrLTh R6, [sp, -R11]
l671: mov R6, #42
l672: ldrLTh R9, [sp, -R6]
l673: ldrh R8, [sp, #-24]
l674: mov R8, #32
l675: ldrHIh R7, [sp, -R8]
l676: ldrh R7, [sp, #-24]
l677: ldrMIh R0, [sp, #-8]
l678: ldrGEh R7, [sp, #-32]
l679: ldrh R5, [sp, #-72]
l680: ldrh R7, [sp, #-72]
l681: ldrVCh R4, [sp, #-76]
l682: mov R8, #34
l683: ldrLEh R6, [sp, -R8]
l684: mov R11, #56
l685: ldrh R3, [sp, -R11]
l686: mov R8, #66
l687: ldrh R5, [sp, -R8]
l688: ldrh R2, [sp, #-46]
l689: mov R14, #54
l690: ldrLSh R3, [sp, -R14]
l691: mov R3, #44
l692: ldrh R3, [sp, -R3]
l693: mov R11, #28
l694: ldrHIh R0, [sp, -R11]
l695: ldrh R4, [sp, #-46]
l696: ldrh R4, [sp, #-18]
l697: mov R10, #34
l698: ldrEQh R3, [sp, -R10]
l699: ldrGTh R14, [sp, #-40]
l700: mov R10, #68
l701: ldrGEh R6, [sp, -R10]
l702: mov R7, #12
l703: ldrh R2, [sp, -R7]
l704: mov R0, #8
l705: ldrLEh R11, [sp, -R0]
l706: ldrh R11, [sp, #-30]
l707: ldrLTh R6, [sp, #-68]
l708: ldrh R4, [sp, #-72]
l709: mov R8, #76
l710: ldrGTh R8, [sp, -R8]
l711: mov R2, #22
l712: ldrh R5, [sp, -R2]
l713: ldrCSh R1, [sp, #-46]
l714: ldrh R8, [sp, #-42]
l715: mov R12, #32
l716: ldrGTh R6, [sp, -R12]
l717: ldrHIh R3, [sp, #-46]
l718: mov R9, #12
l719: ldrh R0, [sp, -R9]
l720: mov R10, #40
l721: ldrh R4, [sp, -R10]
l722: ldrVSh R0, [sp, #-80]
l723: ldrEQh R9, [sp, #-6]
l724: ldrVCh R3, [sp, #-8]
l725: ldrVSh R11, [sp, #-72]
l726: ldrVSh R8, [sp, #-72]
l727: ldrh R11, [sp, #-36]
l728: ldrPLh R6, [sp, #-76]
l729: ldrEQh R1, [sp, #-28]
l730: ldrh R5, [sp, #-12]
l731: ldrGEh R12, [sp, #-6]
l732: mov R5, #52
l733: ldrMIh R8, [sp, -R5]
l734: ldrMIh R4, [sp, #-42]
l735: ldrVCh R4, [sp, #-36]
l736: ldrGEh R4, [sp, #-76]
l737: ldrh R3, [sp, #-56]
l738: mov R3, #36
l739: ldrh R8, [sp, -R3]
l740: mov R5, #78
l741: ldrGTh R6, [sp, -R5]
l742: ldrHIh R12, [sp, #-12]
l743: mov R4, #44
l744: ldrh R2, [sp, -R4]
l745: mov R10, #62
l746: ldrVSh R5, [sp, -R10]
l747: mov R7, #42
l748: ldrh R8, [sp, -R7]
l749: ldrh R12, [sp, #-50]
l750: ldrGEh R12, [sp, #-44]
l751: ldrGEh R3, [sp, #-54]
l752: mov R2, #20
l753: ldrHIh R14, [sp, -R2]
l754: mov R12, #16
l755: ldrLEh R1, [sp, -R12]
l756: ldrLEh R3, [sp, #-44]
l757: mov R14, #44
l758: ldrLEh R10, [sp, -R14]
l759: mov R5, #6
l760: ldrh R5, [sp, -R5]
l761: mov R5, #52
l762: ldrEQh R12, [sp, -R5]
l763: ldrh R2, [sp, #-68]
l764: ldrCSh R1, [sp, #-44]
l765: mov R10, #62
l766: ldrh R3, [sp, -R10]
l767: mov R6, #14
l768: ldrPLh R6, [sp, -R6]
l769: mov R7, #42
l770: ldrLSh R5, [sp, -R7]
l771: ldrCCh R12, [sp, #-26]
l772: mov R5, #42
l773: ldrh R5, [sp, -R5]
l774: ldrh R9, [sp, #-40]
l775: ldrPLh R4, [sp, #-30]
l776: mov R7, #72
l777: ldrNEh R11, [sp, -R7]
l778: ldrMIh R1, [sp, #-46]
l779: ldrCCh R11, [sp, #-58]
l780: mov R2, #40
l781: ldrEQh R1, [sp, -R2]
l782: ldrLTh R5, [sp, #-12]
l783: ldrh R9, [sp, #-56]
l784: ldrh R0, [sp, #-66]
l785: ldrVSh R9, [sp, #-48]
l786: mov R2, #72
l787: ldrh R10, [sp, -R2]
l788: mov R7, #26
l789: ldrh R3, [sp, -R7]
l790: mov R14, #42
l791: ldrh R3, [sp, -R14]
l792: mov R10, #58
l793: ldrEQh R3, [sp, -R10]
l794: mov R3, #64
l795: ldrh R0, [sp, -R3]
l796: mov R1, #14
l797: ldrh R12, [sp, -R1]
l798: ldrh R9, [sp, #-70]
l799: ldrPLh R3, [sp, #-32]
l800: mov R7, #68
l801: ldrh R12, [sp, -R7]
l802: ldrVSh R12, [sp, #-12]
l803: mov R11, #24
l804: ldrh R2, [sp, -R11]
l805: mov R14, #34
l806: ldrh R8, [sp, -R14]
l807: mov R12, #24
l808: ldrh R5, [sp, -R12]
l809: ldrh R2, [sp, #-30]
l810: ldrh R14, [sp, #-70]
l811: mov R12, #34
l812: ldrGTh R8, [sp, -R12]
l813: ldrh R10, [sp, #-62]
l814: ldrh R2, [sp, #-70]
l815: ldrh R9, [sp, #-70]
l816: mov R12, #44
l817: ldrEQh R0, [sp, -R12]
l818: ldrh R1, [sp, #-38]
l819: mov R8, #70
l820: ldrMIh R3, [sp, -R8]
l821: mov R0, #70
l822: ldrMIh R10, [sp, -R0]
l823: mov R3, #42
l824: ldrh R11, [sp, -R3]
l825: ldrh R8, [sp, #-36]
l826: mov R8, #30
l827: ldrh R1, [sp, -R8]
l828: ldrCCh R3, [sp, #-60]
l829: mov R1, #78
l830: ldrh R2, [sp, -R1]
l831: ldrh R7, [sp, #-60]
l832: ldrCSh R10, [sp, #-42]
l833: ldrh R9, [sp, #-58]
l834: ldrMIh R9, [sp, #-32]
l835: mov R5, #54
l836: ldrh R12, [sp, -R5]
l837: ldrGEh R7, [sp, #-8]
l838: mov R7, #44
l839: ldrh R0, [sp, -R7]
l840: mov R14, #6
l841: ldrLEh R12, [sp, -R14]
l842: mov R7, #66
l843: ldrEQh R1, [sp, -R7]
l844: ldrPLh R5, [sp, #-64]
l845: ldrh R0, [sp, #-54]
l846: mov R0, #26
l847: ldrGEh R10, [sp, -R0]
l848: mov R8, #46
l849: ldrGTh R7, [sp, -R8]
l850: mov R7, #34
l851: ldrGEh R2, [sp, -R7]
l852: ldrHIh R0, [sp, #-36]
l853: mov R9, #32
l854: ldrCSh R0, [sp, -R9]
l855: mov R1, #56
l856: ldrh R1, [sp, -R1]
l857: mov R3, #56
l858: ldrEQh R4, [sp, -R3]
l859: mov R6, #44
l860: ldrh R1, [sp, -R6]
l861: mov R6, #80
l862: ldrGEh R14, [sp, -R6]
l863: ldrCCh R8, [sp, #-32]
l864: ldrh R10, [sp, #-16]
l865: ldrHIh R12, [sp, #-18]
l866: mov R6, #54
l867: ldrEQh R4, [sp, -R6]
l868: ldrLEh R9, [sp, #-14]
l869: ldrPLh R4, [sp, #-64]
l870: mov R10, #24
l871: ldrGEh R2, [sp, -R10]
l872: mov R6, #68
l873: ldrh R8, [sp, -R6]
l874: mov R5, #56
l875: ldrHIh R0, [sp, -R5]
l876: ldrGTh R3, [sp, #-74]
l877: mov R10, #60
l878: ldrHIh R7, [sp, -R10]
l879: ldrPLh R0, [sp, #-24]
l880: ldrh R0, [sp, #-56]
l881: mov R3, #54
l882: ldrh R4, [sp, -R3]
l883: mov R1, #12
l884: ldrVCh R5, [sp, -R1]
l885: mov R5, #50
l886: ldrh R4, [sp, -R5]
l887: ldrLTh R9, [sp, #-50]
l888: ldrNEh R6, [sp, #-42]
l889: ldrh R10, [sp, #-38]
l890: mov R9, #20
l891: ldrNEh R4, [sp, -R9]
l892: ldrHIh R2, [sp, #-60]
l893: mov R11, #38
l894: ldrh R3, [sp, -R11]
l895: ldrMIh R2, [sp, #-22]
l896: ldrVSh R7, [sp, #-70]
l897: mov R14, #70
l898: ldrh R9, [sp, -R14]
l899: mov R14, #34
l900: ldrGTh R8, [sp, -R14]
l901: mov R2, #42
l902: ldrNEh R4, [sp, -R2]
l903: mov R11, #36
l904: ldrLEh R1, [sp, -R11]
l905: mov R4, #6
l906: ldrLTh R5, [sp, -R4]
l907: mov R7, #36
l908: ldrh R7, [sp, -R7]
l909: ldrVSh R0, [sp, #-18]
l910: mov R9, #12
l911: ldrLSh R14, [sp, -R9]
l912: ldrGEh R5, [sp, #-28]
l913: mov R6, #62
l914: ldrHIh R3, [sp, -R6]
l915: mov R14, #72
l916: ldrh R9, [sp, -R14]
l917: ldrh R8, [sp, #-80]
l918: mov R11, #26
l919: ldrh R7, [sp, -R11]
l920: mov R1, #62
l921: ldrGTh R12, [sp, -R1]
l922: ldrGTh R8, [sp, #-12]
l923: ldrLSh R14, [sp, #-66]
l924: mov R2, #70
l925: ldrh R1, [sp, -R2]
l926: ldrh R9, [sp, #-42]
l927: ldrCCh R10, [sp, #-60]
l928: ldrGTh R9, [sp, #-30]
l929: ldrEQh R11, [sp, #-34]
l930: ldrh R5, [sp, #-80]
l931: ldrNEh R9, [sp, #-36]
l932: mov R1, #26
l933: ldrCCh R0, [sp, -R1]
l934: ldrh R10, [sp, #-56]
l935: ldrLTh R8, [sp, #-30]
l936: ldrGEh R7, [sp, #-46]
l937: ldrh R6, [sp, #-24]
l938: mov R12, #76
l939: ldrLEh R12, [sp, -R12]
l940: mov R11, #28
l941: ldrh R11, [sp, -R11]
l942: mov R11, #22
l943: ldrh R5, [sp, -R11]
l944: mov R10, #50
l945: ldrHIh R7, [sp, -R10]
l946: ldrGTh R7, [sp, #-72]
l947: ldrh R3, [sp, #-64]
l948: mov R10, #58
l949: ldrGEh R0, [sp, -R10]
l950: ldrLSh R7, [sp, #-34]
l951: ldrh R8, [sp, #-30]
l952: ldrLTh R3, [sp, #-56]
l953: ldrCSh R8, [sp, #-78]
l954: ldrGTh R0, [sp, #-10]
l955: mov R3, #38
l956: ldrGEh R0, [sp, -R3]
l957: ldrNEh R0, [sp, #-76]
l958: ldrh R4, [sp, #-48]
l959: mov R5, #62
l960: ldrMIh R10, [sp, -R5]
l961: ldrEQh R10, [sp, #-6]
l962: ldrPLh R8, [sp, #-74]
l963: mov R11, #64
l964: ldrPLh R6, [sp, -R11]
l965: ldrNEh R5, [sp, #-34]
l966: ldrLTh R10, [sp, #-56]
l967: ldrLTh R14, [sp, #-16]
l968: mov R3, #54
l969: ldrh R2, [sp, -R3]
l970: mov R3, #54
l971: ldrLSh R6, [sp, -R3]
l972: ldrLTh R3, [sp, #-24]
l973: mov R0, #76
l974: ldrHIh R14, [sp, -R0]
l975: ldrNEh R1, [sp, #-66]
l976: ldrh R3, [sp, #-6]
l977: mov R7, #12
l978: ldrCCh R2, [sp, -R7]
l979: mov R7, #68
l980: ldrGTh R0, [sp, -R7]
l981: ldrGTh R5, [sp, #-66]
l982: mov R14, #38
l983: ldrLSh R1, [sp, -R14]
l984: ldrVSh R3, [sp, #-78]
l985: ldrLTh R4, [sp, #-30]
l986: ldrGTh R4, [sp, #-36]
l987: ldrh R4, [sp, #-74]
l988: mov R1, #28
l989: ldrGEh R6, [sp, -R1]
l990: ldrh R7, [sp, #-6]
l991: ldrh R0, [sp, #-78]
l992: mov R8, #38
l993: ldrGTh R0, [sp, -R8]
l994: ldrCCh R5, [sp, #-58]
l995: ldrGTh R5, [sp, #-54]
l996: mov R7, #22
l997: ldrGEh R9, [sp, -R7]
l998: mov R12, #10
l999: ldrGEh R9, [sp, -R12]
l1000: mov R0, #46
l1001: ldrCSh R0, [sp, -R0]
end: b end

