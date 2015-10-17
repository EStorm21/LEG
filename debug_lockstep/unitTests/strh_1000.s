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
val1: .word 1513067963
next1:ldr R2, val2
b next2
val2: .word 2616675303
next2:ldr R3, val3
b next3
val3: .word 3326896185
next3:ldr R4, val4
b next4
val4: .word 746489202
next4:ldr R5, val5
b next5
val5: .word 2036210332
next5:ldr R6, val6
b next6
val6: .word 165743496
next6:ldr R7, val7
b next7
val7: .word 2349953540
next7:ldr R8, val8
b next8
val8: .word 267295094
next8:ldr R9, val9
b next9
val9: .word 845649983
next9:ldr R10, val10
b next10
val10: .word 398735751
next10:ldr R11, val11
b next11
val11: .word 486310401
next11:ldr R12, val12
b next12
val12: .word 771759328
next12:ldr R14, val14
b next14
val14: .word 3882635104

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 615969669
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 3746594900
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 1794715654
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 11238127
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 3496970810
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 1860014834
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 2181194633
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 480128307
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3664824916
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 71609818
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 3457315423
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 2492500170
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 1100259192
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 957551073
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 4257335262
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 1336016277
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 239029080
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 4063296020
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 4128234347
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 850420350
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 2276840644
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: strEQh R1, [sp, #-46]
l2: mov R7, #48
l3: strCCh R7, [sp, -R7]
l4: mov R12, #36
l5: strPLh R10, [sp, -R12]
l6: strLSh R0, [sp, #-50]
l7: strGTh R10, [sp, #-74]
l8: strh R10, [sp, #-28]
l9: strCCh R5, [sp, #-54]
l10: strh R7, [sp, #-18]
l11: strGEh R14, [sp, #-28]
l12: strGEh R6, [sp, #-54]
l13: strEQh R11, [sp, #-30]
l14: strh R10, [sp, #-10]
l15: mov R9, #76
l16: strh R4, [sp, -R9]
l17: mov R10, #28
l18: strGTh R3, [sp, -R10]
l19: mov R0, #46
l20: strHIh R10, [sp, -R0]
l21: strh R14, [sp, #-44]
l22: strMIh R4, [sp, #-30]
l23: strCSh R4, [sp, #-24]
l24: mov R2, #4
l25: strCSh R3, [sp, -R2]
l26: strGTh R1, [sp, #-54]
l27: strMIh R1, [sp, #-68]
l28: strGEh R10, [sp, #-20]
l29: mov R5, #58
l30: strh R8, [sp, -R5]
l31: mov R7, #6
l32: strh R10, [sp, -R7]
l33: mov R6, #40
l34: strHIh R2, [sp, -R6]
l35: mov R10, #78
l36: strh R9, [sp, -R10]
l37: mov R3, #50
l38: strh R11, [sp, -R3]
l39: mov R6, #10
l40: strh R1, [sp, -R6]
l41: mov R12, #78
l42: strLSh R0, [sp, -R12]
l43: strGEh R10, [sp, #-60]
l44: mov R8, #76
l45: strVSh R0, [sp, -R8]
l46: mov R14, #80
l47: strh R7, [sp, -R14]
l48: strEQh R12, [sp, #-12]
l49: strLTh R10, [sp, #-20]
l50: strh R1, [sp, #-46]
l51: mov R4, #62
l52: strh R12, [sp, -R4]
l53: strGEh R0, [sp, #-62]
l54: strh R0, [sp, #-68]
l55: mov R12, #10
l56: strh R14, [sp, -R12]
l57: mov R8, #12
l58: strh R8, [sp, -R8]
l59: mov R5, #58
l60: strCSh R10, [sp, -R5]
l61: strh R11, [sp, #-72]
l62: strHIh R11, [sp, #-22]
l63: mov R9, #68
l64: strNEh R3, [sp, -R9]
l65: strLSh R9, [sp, #-32]
l66: strCSh R4, [sp, #-56]
l67: strh R6, [sp, #-18]
l68: mov R10, #58
l69: strCSh R11, [sp, -R10]
l70: strGTh R12, [sp, #-44]
l71: mov R14, #70
l72: strLEh R11, [sp, -R14]
l73: strLTh R5, [sp, #-2]
l74: mov R6, #30
l75: strGTh R5, [sp, -R6]
l76: mov R3, #8
l77: strLEh R6, [sp, -R3]
l78: mov R5, #16
l79: strVSh R1, [sp, -R5]
l80: mov R4, #30
l81: strLTh R1, [sp, -R4]
l82: strh R7, [sp, #-28]
l83: strMIh R3, [sp, #-24]
l84: strh R1, [sp, #-32]
l85: strVCh R6, [sp, #-64]
l86: strHIh R2, [sp, #-62]
l87: mov R1, #50
l88: strh R1, [sp, -R1]
l89: mov R4, #52
l90: strh R14, [sp, -R4]
l91: strGEh R8, [sp, #-60]
l92: strCCh R0, [sp, #-14]
l93: mov R6, #80
l94: strNEh R4, [sp, -R6]
l95: mov R1, #58
l96: strGEh R14, [sp, -R1]
l97: mov R3, #2
l98: strh R8, [sp, -R3]
l99: strVCh R9, [sp, #-60]
l100: mov R14, #46
l101: strGEh R4, [sp, -R14]
l102: strNEh R2, [sp, #-62]
l103: strh R0, [sp, #-34]
l104: mov R8, #28
l105: strVCh R2, [sp, -R8]
l106: mov R9, #28
l107: strCSh R11, [sp, -R9]
l108: mov R10, #54
l109: strh R9, [sp, -R10]
l110: mov R7, #32
l111: strh R14, [sp, -R7]
l112: strEQh R12, [sp, #-42]
l113: strh R3, [sp, #-22]
l114: mov R9, #12
l115: strLSh R10, [sp, -R9]
l116: mov R1, #14
l117: strh R9, [sp, -R1]
l118: mov R8, #54
l119: strh R14, [sp, -R8]
l120: strCCh R0, [sp, #-44]
l121: strLSh R3, [sp, #-68]
l122: strh R7, [sp, #-20]
l123: strVCh R5, [sp, #-14]
l124: mov R10, #36
l125: strVCh R4, [sp, -R10]
l126: strVSh R10, [sp, #-80]
l127: strh R2, [sp, #-40]
l128: mov R10, #36
l129: strEQh R5, [sp, -R10]
l130: strh R7, [sp, #-18]
l131: strGEh R11, [sp, #-34]
l132: strh R4, [sp, #-46]
l133: mov R0, #30
l134: strGEh R14, [sp, -R0]
l135: strh R2, [sp, #-12]
l136: mov R5, #34
l137: strGTh R14, [sp, -R5]
l138: strPLh R12, [sp, #-56]
l139: mov R0, #6
l140: strCCh R5, [sp, -R0]
l141: mov R2, #12
l142: strVCh R4, [sp, -R2]
l143: mov R0, #62
l144: strVCh R10, [sp, -R0]
l145: mov R3, #60
l146: strGEh R6, [sp, -R3]
l147: mov R8, #58
l148: strh R10, [sp, -R8]
l149: mov R14, #74
l150: strh R7, [sp, -R14]
l151: strVCh R11, [sp, #-30]
l152: mov R1, #60
l153: strh R6, [sp, -R1]
l154: strGTh R10, [sp, #-76]
l155: strPLh R5, [sp, #-64]
l156: strPLh R12, [sp, #-30]
l157: mov R2, #40
l158: strHIh R1, [sp, -R2]
l159: strLTh R2, [sp, #-76]
l160: strh R7, [sp, #-28]
l161: strGTh R4, [sp, #-40]
l162: strh R12, [sp, #-36]
l163: mov R9, #30
l164: strEQh R10, [sp, -R9]
l165: strCSh R8, [sp, #-26]
l166: strh R8, [sp, #-48]
l167: strLTh R2, [sp, #-24]
l168: mov R6, #2
l169: strGTh R2, [sp, -R6]
l170: strCCh R1, [sp, #-8]
l171: mov R6, #18
l172: strLTh R8, [sp, -R6]
l173: mov R4, #66
l174: strCSh R14, [sp, -R4]
l175: strGEh R10, [sp, #-56]
l176: mov R5, #60
l177: strh R9, [sp, -R5]
l178: mov R6, #42
l179: strh R12, [sp, -R6]
l180: mov R0, #46
l181: strGTh R11, [sp, -R0]
l182: mov R6, #2
l183: strNEh R12, [sp, -R6]
l184: strh R7, [sp, #-20]
l185: strh R3, [sp, #-10]
l186: strVCh R11, [sp, #-70]
l187: mov R10, #12
l188: strLEh R7, [sp, -R10]
l189: strh R6, [sp, #-50]
l190: strh R3, [sp, #-66]
l191: mov R11, #74
l192: strh R8, [sp, -R11]
l193: strh R4, [sp, #-16]
l194: mov R7, #42
l195: strCCh R1, [sp, -R7]
l196: mov R6, #50
l197: strh R12, [sp, -R6]
l198: strNEh R0, [sp, #-14]
l199: mov R5, #44
l200: strh R2, [sp, -R5]
l201: mov R10, #80
l202: strh R8, [sp, -R10]
l203: mov R12, #42
l204: strh R1, [sp, -R12]
l205: mov R3, #50
l206: strVSh R3, [sp, -R3]
l207: mov R3, #28
l208: strNEh R4, [sp, -R3]
l209: mov R3, #64
l210: strh R6, [sp, -R3]
l211: strh R7, [sp, #-60]
l212: strh R5, [sp, #-58]
l213: mov R2, #66
l214: strNEh R2, [sp, -R2]
l215: mov R8, #78
l216: strVSh R9, [sp, -R8]
l217: strh R0, [sp, #-64]
l218: strh R7, [sp, #-68]
l219: strLTh R5, [sp, #-30]
l220: strh R11, [sp, #-38]
l221: strLTh R12, [sp, #-74]
l222: strh R4, [sp, #-60]
l223: mov R7, #62
l224: strEQh R6, [sp, -R7]
l225: mov R1, #10
l226: strVSh R0, [sp, -R1]
l227: mov R3, #28
l228: strCSh R11, [sp, -R3]
l229: mov R5, #76
l230: strh R9, [sp, -R5]
l231: mov R8, #36
l232: strHIh R2, [sp, -R8]
l233: mov R0, #10
l234: strPLh R7, [sp, -R0]
l235: mov R7, #64
l236: strCSh R4, [sp, -R7]
l237: strMIh R6, [sp, #-34]
l238: mov R7, #12
l239: strNEh R4, [sp, -R7]
l240: strLSh R2, [sp, #-20]
l241: strHIh R14, [sp, #-36]
l242: strh R6, [sp, #-40]
l243: mov R3, #28
l244: strh R8, [sp, -R3]
l245: strGEh R7, [sp, #-8]
l246: strh R14, [sp, #-6]
l247: mov R11, #46
l248: strh R5, [sp, -R11]
l249: strVCh R8, [sp, #-50]
l250: mov R1, #56
l251: strNEh R7, [sp, -R1]
l252: strh R4, [sp, #-38]
l253: mov R8, #78
l254: strLEh R3, [sp, -R8]
l255: strEQh R4, [sp, #-74]
l256: mov R4, #4
l257: strLEh R1, [sp, -R4]
l258: mov R7, #2
l259: strNEh R9, [sp, -R7]
l260: strh R0, [sp, #-62]
l261: mov R3, #48
l262: strh R3, [sp, -R3]
l263: strh R9, [sp, #-68]
l264: strh R6, [sp, #-44]
l265: mov R9, #72
l266: strCCh R9, [sp, -R9]
l267: mov R12, #46
l268: strh R1, [sp, -R12]
l269: mov R9, #46
l270: strLSh R3, [sp, -R9]
l271: mov R7, #6
l272: strh R8, [sp, -R7]
l273: mov R6, #64
l274: strh R7, [sp, -R6]
l275: mov R4, #52
l276: strPLh R1, [sp, -R4]
l277: mov R9, #20
l278: strMIh R10, [sp, -R9]
l279: strVSh R10, [sp, #-72]
l280: strh R10, [sp, #-16]
l281: strh R5, [sp, #-68]
l282: mov R10, #4
l283: strCCh R7, [sp, -R10]
l284: strh R0, [sp, #-18]
l285: mov R7, #16
l286: strh R6, [sp, -R7]
l287: strh R7, [sp, #-70]
l288: strCCh R3, [sp, #-32]
l289: strh R14, [sp, #-8]
l290: strLSh R8, [sp, #-68]
l291: mov R12, #24
l292: strGEh R10, [sp, -R12]
l293: mov R10, #36
l294: strLSh R0, [sp, -R10]
l295: mov R12, #70
l296: strPLh R7, [sp, -R12]
l297: mov R14, #58
l298: strLSh R9, [sp, -R14]
l299: strh R4, [sp, #-42]
l300: mov R11, #54
l301: strLEh R0, [sp, -R11]
l302: strh R8, [sp, #-80]
l303: mov R2, #60
l304: strLSh R11, [sp, -R2]
l305: mov R2, #60
l306: strh R3, [sp, -R2]
l307: mov R8, #14
l308: strCCh R4, [sp, -R8]
l309: mov R6, #72
l310: strHIh R2, [sp, -R6]
l311: strNEh R4, [sp, #-32]
l312: mov R5, #54
l313: strMIh R11, [sp, -R5]
l314: mov R14, #44
l315: strNEh R4, [sp, -R14]
l316: mov R12, #56
l317: strPLh R12, [sp, -R12]
l318: mov R3, #6
l319: strh R11, [sp, -R3]
l320: mov R14, #40
l321: strh R11, [sp, -R14]
l322: strLEh R5, [sp, #-10]
l323: mov R10, #2
l324: strMIh R9, [sp, -R10]
l325: strLTh R7, [sp, #-32]
l326: mov R2, #76
l327: strCCh R7, [sp, -R2]
l328: strMIh R6, [sp, #-20]
l329: mov R0, #34
l330: strMIh R5, [sp, -R0]
l331: strGEh R0, [sp, #-34]
l332: strh R8, [sp, #-56]
l333: strh R11, [sp, #-62]
l334: strVSh R8, [sp, #-56]
l335: strGEh R6, [sp, #-36]
l336: strPLh R0, [sp, #-16]
l337: mov R6, #22
l338: strVCh R0, [sp, -R6]
l339: strVCh R4, [sp, #-36]
l340: mov R9, #64
l341: strh R9, [sp, -R9]
l342: mov R12, #12
l343: strVSh R4, [sp, -R12]
l344: strGTh R5, [sp, #-22]
l345: strCSh R6, [sp, #-52]
l346: mov R8, #20
l347: strh R12, [sp, -R8]
l348: strh R2, [sp, #-50]
l349: strNEh R0, [sp, #-40]
l350: mov R3, #34
l351: strHIh R0, [sp, -R3]
l352: mov R5, #8
l353: strPLh R2, [sp, -R5]
l354: mov R9, #74
l355: strGEh R2, [sp, -R9]
l356: strCSh R0, [sp, #-36]
l357: strEQh R2, [sp, #-12]
l358: strh R12, [sp, #-10]
l359: mov R0, #68
l360: strh R10, [sp, -R0]
l361: mov R4, #74
l362: strLTh R10, [sp, -R4]
l363: strVCh R7, [sp, #-76]
l364: strh R3, [sp, #-18]
l365: mov R0, #78
l366: strMIh R9, [sp, -R0]
l367: strh R1, [sp, #-2]
l368: strEQh R2, [sp, #-28]
l369: strh R5, [sp, #-50]
l370: mov R8, #20
l371: strh R1, [sp, -R8]
l372: mov R12, #74
l373: strMIh R3, [sp, -R12]
l374: mov R3, #50
l375: strEQh R0, [sp, -R3]
l376: mov R8, #20
l377: strEQh R6, [sp, -R8]
l378: mov R7, #40
l379: strMIh R10, [sp, -R7]
l380: mov R10, #78
l381: strh R8, [sp, -R10]
l382: strGEh R6, [sp, #-52]
l383: mov R8, #74
l384: strh R12, [sp, -R8]
l385: strh R2, [sp, #-28]
l386: strh R14, [sp, #-4]
l387: mov R0, #40
l388: strLSh R9, [sp, -R0]
l389: strLTh R4, [sp, #-74]
l390: strHIh R3, [sp, #-44]
l391: strh R11, [sp, #-56]
l392: mov R1, #68
l393: strCCh R3, [sp, -R1]
l394: mov R10, #50
l395: strh R11, [sp, -R10]
l396: mov R5, #80
l397: strh R9, [sp, -R5]
l398: mov R10, #68
l399: strMIh R6, [sp, -R10]
l400: strEQh R8, [sp, #-80]
l401: mov R0, #30
l402: strPLh R7, [sp, -R0]
l403: mov R3, #78
l404: strh R0, [sp, -R3]
l405: mov R5, #46
l406: strLEh R2, [sp, -R5]
l407: strh R0, [sp, #-78]
l408: mov R1, #18
l409: strVSh R2, [sp, -R1]
l410: strh R3, [sp, #-56]
l411: strVSh R10, [sp, #-36]
l412: strVSh R7, [sp, #-56]
l413: strh R8, [sp, #-50]
l414: strGTh R8, [sp, #-58]
l415: strh R1, [sp, #-34]
l416: mov R2, #74
l417: strh R1, [sp, -R2]
l418: strEQh R12, [sp, #-40]
l419: strh R12, [sp, #-32]
l420: strh R9, [sp, #-18]
l421: strh R9, [sp, #-58]
l422: strVSh R0, [sp, #-50]
l423: strEQh R9, [sp, #-34]
l424: strVSh R7, [sp, #-32]
l425: strPLh R7, [sp, #-60]
l426: strh R12, [sp, #-58]
l427: strCCh R2, [sp, #-36]
l428: strLTh R6, [sp, #-68]
l429: mov R7, #10
l430: strGEh R3, [sp, -R7]
l431: mov R14, #14
l432: strLTh R6, [sp, -R14]
l433: mov R14, #2
l434: strh R1, [sp, -R14]
l435: mov R0, #62
l436: strh R0, [sp, -R0]
l437: mov R12, #52
l438: strPLh R2, [sp, -R12]
l439: mov R11, #68
l440: strVCh R7, [sp, -R11]
l441: strLEh R3, [sp, #-34]
l442: strGEh R12, [sp, #-24]
l443: strh R14, [sp, #-36]
l444: strh R8, [sp, #-10]
l445: strCCh R0, [sp, #-38]
l446: strh R14, [sp, #-52]
l447: strPLh R8, [sp, #-74]
l448: mov R14, #38
l449: strVSh R3, [sp, -R14]
l450: strCSh R9, [sp, #-28]
l451: mov R10, #14
l452: strGEh R4, [sp, -R10]
l453: mov R12, #46
l454: strVCh R11, [sp, -R12]
l455: strLSh R1, [sp, #-18]
l456: strGEh R4, [sp, #-12]
l457: strh R4, [sp, #-6]
l458: strh R8, [sp, #-14]
l459: mov R8, #36
l460: strh R7, [sp, -R8]
l461: strh R5, [sp, #-6]
l462: mov R12, #78
l463: strLEh R10, [sp, -R12]
l464: mov R0, #54
l465: strLEh R10, [sp, -R0]
l466: mov R2, #46
l467: strMIh R0, [sp, -R2]
l468: mov R11, #30
l469: strh R2, [sp, -R11]
l470: mov R8, #10
l471: strCCh R12, [sp, -R8]
l472: strLTh R0, [sp, #-38]
l473: mov R11, #54
l474: strLSh R12, [sp, -R11]
l475: mov R9, #58
l476: strCCh R9, [sp, -R9]
l477: mov R9, #22
l478: strh R5, [sp, -R9]
l479: strMIh R0, [sp, #-70]
l480: mov R10, #16
l481: strCCh R14, [sp, -R10]
l482: strh R7, [sp, #-4]
l483: strh R5, [sp, #-34]
l484: strh R12, [sp, #-12]
l485: strh R11, [sp, #-6]
l486: mov R2, #18
l487: strLTh R5, [sp, -R2]
l488: strGTh R7, [sp, #-74]
l489: strVCh R1, [sp, #-64]
l490: strGEh R3, [sp, #-14]
l491: strh R3, [sp, #-14]
l492: mov R14, #66
l493: strh R12, [sp, -R14]
l494: mov R0, #66
l495: strVCh R10, [sp, -R0]
l496: strh R8, [sp, #-74]
l497: strh R5, [sp, #-32]
l498: mov R0, #48
l499: strVCh R1, [sp, -R0]
l500: mov R3, #32
l501: strGTh R8, [sp, -R3]
l502: mov R8, #2
l503: strVSh R8, [sp, -R8]
l504: mov R4, #12
l505: strh R7, [sp, -R4]
l506: strh R3, [sp, #-20]
l507: mov R3, #22
l508: strPLh R12, [sp, -R3]
l509: mov R6, #78
l510: strVCh R7, [sp, -R6]
l511: strNEh R0, [sp, #-36]
l512: strh R4, [sp, #-10]
l513: strLEh R5, [sp, #-22]
l514: mov R4, #76
l515: strVCh R9, [sp, -R4]
l516: strVCh R0, [sp, #-26]
l517: mov R7, #78
l518: strVCh R1, [sp, -R7]
l519: strNEh R2, [sp, #-42]
l520: mov R8, #44
l521: strh R1, [sp, -R8]
l522: mov R4, #50
l523: strVSh R11, [sp, -R4]
l524: mov R5, #76
l525: strh R11, [sp, -R5]
l526: strh R14, [sp, #-70]
l527: mov R10, #18
l528: strh R3, [sp, -R10]
l529: mov R4, #36
l530: strh R6, [sp, -R4]
l531: strPLh R10, [sp, #-30]
l532: mov R2, #60
l533: strVCh R7, [sp, -R2]
l534: strLEh R4, [sp, #-66]
l535: mov R7, #38
l536: strh R14, [sp, -R7]
l537: mov R1, #40
l538: strEQh R9, [sp, -R1]
l539: strNEh R5, [sp, #-30]
l540: mov R1, #62
l541: strCCh R4, [sp, -R1]
l542: strh R4, [sp, #-48]
l543: strGEh R1, [sp, #-10]
l544: strLEh R8, [sp, #-46]
l545: mov R4, #64
l546: strh R7, [sp, -R4]
l547: strCCh R14, [sp, #-52]
l548: mov R9, #64
l549: strLTh R0, [sp, -R9]
l550: strh R5, [sp, #-38]
l551: strLSh R2, [sp, #-70]
l552: mov R4, #58
l553: strLTh R10, [sp, -R4]
l554: mov R11, #26
l555: strLTh R5, [sp, -R11]
l556: mov R1, #4
l557: strHIh R12, [sp, -R1]
l558: mov R10, #56
l559: strh R5, [sp, -R10]
l560: strCCh R14, [sp, #-22]
l561: mov R5, #2
l562: strh R7, [sp, -R5]
l563: mov R4, #10
l564: strh R1, [sp, -R4]
l565: strPLh R1, [sp, #-62]
l566: strh R8, [sp, #-72]
l567: strCSh R9, [sp, #-38]
l568: strh R4, [sp, #-32]
l569: mov R9, #62
l570: strh R2, [sp, -R9]
l571: mov R3, #20
l572: strh R14, [sp, -R3]
l573: strh R7, [sp, #-32]
l574: strh R0, [sp, #-62]
l575: strh R8, [sp, #-26]
l576: strHIh R7, [sp, #-44]
l577: strHIh R14, [sp, #-46]
l578: mov R7, #34
l579: strLTh R9, [sp, -R7]
l580: strVSh R5, [sp, #-2]
l581: mov R11, #66
l582: strCCh R6, [sp, -R11]
l583: strVCh R5, [sp, #-40]
l584: strh R1, [sp, #-10]
l585: strh R6, [sp, #-34]
l586: strHIh R10, [sp, #-56]
l587: mov R2, #44
l588: strCCh R11, [sp, -R2]
l589: mov R8, #20
l590: strh R10, [sp, -R8]
l591: mov R14, #12
l592: strh R14, [sp, -R14]
l593: mov R12, #78
l594: strh R0, [sp, -R12]
l595: mov R7, #64
l596: strLEh R3, [sp, -R7]
l597: mov R11, #62
l598: strCCh R14, [sp, -R11]
l599: strGEh R14, [sp, #-12]
l600: mov R5, #34
l601: strh R1, [sp, -R5]
l602: mov R7, #32
l603: strLEh R3, [sp, -R7]
l604: mov R9, #74
l605: strh R2, [sp, -R9]
l606: mov R11, #30
l607: strLTh R7, [sp, -R11]
l608: mov R7, #6
l609: strGTh R9, [sp, -R7]
l610: strh R12, [sp, #-46]
l611: mov R11, #72
l612: strh R4, [sp, -R11]
l613: mov R8, #76
l614: strHIh R12, [sp, -R8]
l615: mov R8, #12
l616: strh R4, [sp, -R8]
l617: strh R14, [sp, #-74]
l618: strh R3, [sp, #-50]
l619: mov R4, #40
l620: strPLh R12, [sp, -R4]
l621: strCCh R8, [sp, #-70]
l622: strCCh R9, [sp, #-68]
l623: mov R0, #60
l624: strLSh R12, [sp, -R0]
l625: mov R14, #26
l626: strh R9, [sp, -R14]
l627: mov R2, #68
l628: strh R3, [sp, -R2]
l629: strEQh R5, [sp, #-4]
l630: strh R8, [sp, #-54]
l631: strCSh R12, [sp, #-66]
l632: strVSh R5, [sp, #-64]
l633: strCSh R10, [sp, #-12]
l634: strh R2, [sp, #-16]
l635: mov R1, #72
l636: strh R9, [sp, -R1]
l637: mov R10, #4
l638: strh R14, [sp, -R10]
l639: mov R0, #2
l640: strVCh R1, [sp, -R0]
l641: mov R9, #38
l642: strh R7, [sp, -R9]
l643: strNEh R1, [sp, #-22]
l644: mov R0, #62
l645: strHIh R14, [sp, -R0]
l646: mov R12, #12
l647: strh R7, [sp, -R12]
l648: strh R3, [sp, #-64]
l649: mov R2, #10
l650: strLSh R8, [sp, -R2]
l651: mov R7, #34
l652: strLSh R11, [sp, -R7]
l653: mov R1, #16
l654: strh R0, [sp, -R1]
l655: mov R2, #68
l656: strh R11, [sp, -R2]
l657: strMIh R8, [sp, #-28]
l658: mov R4, #58
l659: strVCh R7, [sp, -R4]
l660: mov R12, #74
l661: strGEh R14, [sp, -R12]
l662: mov R7, #44
l663: strGTh R1, [sp, -R7]
l664: strCCh R4, [sp, #-66]
l665: mov R3, #60
l666: strh R9, [sp, -R3]
l667: mov R1, #28
l668: strh R9, [sp, -R1]
l669: mov R9, #36
l670: strVCh R12, [sp, -R9]
l671: strLTh R5, [sp, #-8]
l672: mov R1, #56
l673: strGEh R0, [sp, -R1]
l674: strh R12, [sp, #-50]
l675: strh R3, [sp, #-42]
l676: mov R10, #68
l677: strLEh R0, [sp, -R10]
l678: strh R10, [sp, #-28]
l679: mov R10, #28
l680: strEQh R7, [sp, -R10]
l681: strh R6, [sp, #-2]
l682: strh R4, [sp, #-40]
l683: mov R8, #48
l684: strh R10, [sp, -R8]
l685: mov R0, #72
l686: strGEh R4, [sp, -R0]
l687: strh R14, [sp, #-14]
l688: strh R7, [sp, #-54]
l689: strNEh R12, [sp, #-76]
l690: strMIh R6, [sp, #-50]
l691: mov R6, #14
l692: strh R7, [sp, -R6]
l693: mov R2, #56
l694: strh R5, [sp, -R2]
l695: strh R4, [sp, #-30]
l696: mov R0, #66
l697: strCSh R6, [sp, -R0]
l698: strh R14, [sp, #-38]
l699: mov R6, #62
l700: strh R10, [sp, -R6]
l701: strh R9, [sp, #-46]
l702: mov R3, #56
l703: strCCh R12, [sp, -R3]
l704: mov R3, #8
l705: strVCh R7, [sp, -R3]
l706: strMIh R11, [sp, #-40]
l707: strCCh R2, [sp, #-10]
l708: strh R8, [sp, #-80]
l709: strPLh R6, [sp, #-46]
l710: strh R14, [sp, #-18]
l711: strMIh R8, [sp, #-44]
l712: mov R9, #48
l713: strEQh R3, [sp, -R9]
l714: strCSh R5, [sp, #-76]
l715: mov R6, #26
l716: strh R12, [sp, -R6]
l717: mov R5, #6
l718: strMIh R10, [sp, -R5]
l719: strh R4, [sp, #-6]
l720: strh R9, [sp, #-72]
l721: mov R4, #76
l722: strGEh R8, [sp, -R4]
l723: strh R10, [sp, #-38]
l724: strh R12, [sp, #-28]
l725: mov R0, #24
l726: strh R12, [sp, -R0]
l727: strVCh R10, [sp, #-28]
l728: strh R6, [sp, #-4]
l729: strh R2, [sp, #-40]
l730: strLEh R0, [sp, #-14]
l731: mov R4, #54
l732: strh R0, [sp, -R4]
l733: strGTh R14, [sp, #-72]
l734: strCSh R10, [sp, #-2]
l735: strh R3, [sp, #-72]
l736: strh R1, [sp, #-22]
l737: strh R4, [sp, #-44]
l738: strMIh R1, [sp, #-80]
l739: mov R10, #66
l740: strh R12, [sp, -R10]
l741: strGEh R8, [sp, #-32]
l742: mov R14, #28
l743: strh R2, [sp, -R14]
l744: strNEh R1, [sp, #-46]
l745: strh R2, [sp, #-10]
l746: mov R14, #74
l747: strCCh R2, [sp, -R14]
l748: mov R9, #34
l749: strh R6, [sp, -R9]
l750: mov R14, #74
l751: strh R6, [sp, -R14]
l752: strLEh R2, [sp, #-64]
l753: strCCh R11, [sp, #-64]
l754: strh R10, [sp, #-46]
l755: mov R9, #16
l756: strh R4, [sp, -R9]
l757: mov R12, #38
l758: strh R11, [sp, -R12]
l759: mov R11, #32
l760: strh R8, [sp, -R11]
l761: mov R14, #58
l762: strLTh R8, [sp, -R14]
l763: mov R0, #50
l764: strNEh R8, [sp, -R0]
l765: mov R5, #42
l766: strh R4, [sp, -R5]
l767: mov R10, #54
l768: strh R2, [sp, -R10]
l769: mov R9, #58
l770: strh R4, [sp, -R9]
l771: mov R6, #18
l772: strMIh R3, [sp, -R6]
l773: strh R7, [sp, #-38]
l774: strh R10, [sp, #-54]
l775: strh R11, [sp, #-38]
l776: mov R6, #48
l777: strCSh R7, [sp, -R6]
l778: strPLh R3, [sp, #-52]
l779: mov R7, #36
l780: strCCh R4, [sp, -R7]
l781: mov R0, #12
l782: strGEh R5, [sp, -R0]
l783: strPLh R8, [sp, #-10]
l784: strNEh R8, [sp, #-30]
l785: mov R14, #26
l786: strh R5, [sp, -R14]
l787: strh R9, [sp, #-12]
l788: mov R4, #10
l789: strVCh R4, [sp, -R4]
l790: strVCh R11, [sp, #-78]
l791: strMIh R6, [sp, #-36]
l792: strVCh R9, [sp, #-12]
l793: mov R8, #70
l794: strCSh R10, [sp, -R8]
l795: strh R5, [sp, #-68]
l796: mov R0, #46
l797: strh R9, [sp, -R0]
l798: mov R2, #44
l799: strh R5, [sp, -R2]
l800: mov R9, #78
l801: strLTh R9, [sp, -R9]
l802: strCCh R3, [sp, #-10]
l803: mov R0, #36
l804: strMIh R11, [sp, -R0]
l805: mov R0, #42
l806: strGTh R14, [sp, -R0]
l807: strGEh R3, [sp, #-64]
l808: strCCh R12, [sp, #-26]
l809: mov R11, #44
l810: strh R10, [sp, -R11]
l811: mov R1, #44
l812: strGTh R2, [sp, -R1]
l813: mov R4, #46
l814: strh R8, [sp, -R4]
l815: strCCh R4, [sp, #-22]
l816: mov R3, #6
l817: strLSh R2, [sp, -R3]
l818: mov R6, #38
l819: strHIh R3, [sp, -R6]
l820: mov R5, #76
l821: strGTh R0, [sp, -R5]
l822: strh R7, [sp, #-6]
l823: mov R5, #2
l824: strLEh R12, [sp, -R5]
l825: strh R4, [sp, #-72]
l826: strh R5, [sp, #-54]
l827: strh R8, [sp, #-52]
l828: mov R2, #66
l829: strh R3, [sp, -R2]
l830: strVCh R5, [sp, #-70]
l831: strh R3, [sp, #-18]
l832: strLEh R5, [sp, #-6]
l833: strh R1, [sp, #-20]
l834: mov R11, #6
l835: strCSh R1, [sp, -R11]
l836: mov R10, #52
l837: strLEh R3, [sp, -R10]
l838: mov R8, #40
l839: strh R7, [sp, -R8]
l840: strh R1, [sp, #-6]
l841: mov R14, #60
l842: strNEh R2, [sp, -R14]
l843: strGTh R3, [sp, #-46]
l844: strh R14, [sp, #-8]
l845: mov R0, #30
l846: strh R1, [sp, -R0]
l847: mov R7, #42
l848: strVSh R9, [sp, -R7]
l849: strNEh R6, [sp, #-4]
l850: strGTh R10, [sp, #-56]
l851: strLTh R9, [sp, #-66]
l852: strh R5, [sp, #-52]
l853: mov R11, #26
l854: strVSh R8, [sp, -R11]
l855: strHIh R1, [sp, #-16]
l856: mov R0, #46
l857: strMIh R3, [sp, -R0]
l858: strEQh R1, [sp, #-16]
l859: mov R9, #44
l860: strh R4, [sp, -R9]
l861: mov R11, #80
l862: strGEh R11, [sp, -R11]
l863: mov R2, #4
l864: strh R3, [sp, -R2]
l865: mov R14, #12
l866: strCSh R0, [sp, -R14]
l867: strVSh R5, [sp, #-36]
l868: strPLh R10, [sp, #-34]
l869: strCCh R3, [sp, #-38]
l870: mov R12, #12
l871: strPLh R14, [sp, -R12]
l872: mov R3, #38
l873: strHIh R2, [sp, -R3]
l874: mov R10, #42
l875: strh R8, [sp, -R10]
l876: strLEh R0, [sp, #-40]
l877: strCCh R6, [sp, #-50]
l878: mov R7, #22
l879: strh R3, [sp, -R7]
l880: strh R6, [sp, #-60]
l881: mov R6, #12
l882: strCCh R11, [sp, -R6]
l883: mov R7, #20
l884: strh R14, [sp, -R7]
l885: mov R14, #34
l886: strh R9, [sp, -R14]
l887: strLSh R4, [sp, #-52]
l888: strh R2, [sp, #-42]
l889: mov R7, #52
l890: strh R11, [sp, -R7]
l891: mov R6, #64
l892: strGEh R0, [sp, -R6]
l893: strh R14, [sp, #-58]
l894: mov R12, #16
l895: strh R6, [sp, -R12]
l896: mov R2, #12
l897: strh R8, [sp, -R2]
l898: strh R11, [sp, #-32]
l899: mov R6, #68
l900: strh R3, [sp, -R6]
l901: strHIh R10, [sp, #-30]
l902: strh R10, [sp, #-76]
l903: mov R1, #16
l904: strHIh R6, [sp, -R1]
l905: mov R11, #18
l906: strHIh R8, [sp, -R11]
l907: mov R3, #42
l908: strPLh R4, [sp, -R3]
l909: strh R5, [sp, #-30]
l910: strGTh R12, [sp, #-40]
l911: mov R4, #52
l912: strLEh R14, [sp, -R4]
l913: strCCh R14, [sp, #-74]
l914: mov R11, #72
l915: strLSh R14, [sp, -R11]
l916: mov R0, #74
l917: strHIh R5, [sp, -R0]
l918: strh R9, [sp, #-74]
l919: mov R5, #72
l920: strh R1, [sp, -R5]
l921: strEQh R14, [sp, #-50]
l922: mov R2, #74
l923: strh R2, [sp, -R2]
l924: strNEh R2, [sp, #-26]
l925: mov R14, #20
l926: strh R12, [sp, -R14]
l927: mov R2, #8
l928: strh R7, [sp, -R2]
l929: strHIh R14, [sp, #-76]
l930: mov R1, #62
l931: strh R1, [sp, -R1]
l932: strGTh R11, [sp, #-62]
l933: strh R6, [sp, #-18]
l934: strGEh R1, [sp, #-2]
l935: strCSh R12, [sp, #-76]
l936: strh R0, [sp, #-32]
l937: mov R9, #24
l938: strNEh R8, [sp, -R9]
l939: strh R3, [sp, #-46]
l940: mov R8, #30
l941: strh R8, [sp, -R8]
l942: strh R3, [sp, #-2]
l943: strGTh R8, [sp, #-68]
l944: mov R7, #72
l945: strEQh R14, [sp, -R7]
l946: mov R9, #46
l947: strh R14, [sp, -R9]
l948: mov R7, #62
l949: strh R8, [sp, -R7]
l950: mov R14, #20
l951: strGTh R5, [sp, -R14]
l952: mov R9, #4
l953: strMIh R0, [sp, -R9]
l954: mov R7, #32
l955: strLTh R1, [sp, -R7]
l956: mov R12, #62
l957: strHIh R5, [sp, -R12]
l958: mov R5, #74
l959: strh R6, [sp, -R5]
l960: mov R1, #74
l961: strh R14, [sp, -R1]
l962: strh R2, [sp, #-26]
l963: mov R1, #44
l964: strh R11, [sp, -R1]
l965: mov R11, #24
l966: strh R5, [sp, -R11]
l967: mov R6, #20
l968: strHIh R3, [sp, -R6]
l969: strLSh R14, [sp, #-16]
l970: mov R7, #26
l971: strh R4, [sp, -R7]
l972: strGEh R7, [sp, #-56]
l973: mov R11, #40
l974: strh R10, [sp, -R11]
l975: mov R3, #44
l976: strCSh R10, [sp, -R3]
l977: strGEh R4, [sp, #-56]
l978: mov R7, #6
l979: strPLh R0, [sp, -R7]
l980: mov R6, #40
l981: strh R5, [sp, -R6]
l982: mov R0, #64
l983: strLTh R2, [sp, -R0]
l984: strh R12, [sp, #-78]
l985: mov R10, #70
l986: strh R8, [sp, -R10]
l987: strh R12, [sp, #-62]
l988: mov R4, #80
l989: strh R5, [sp, -R4]
l990: mov R4, #78
l991: strh R11, [sp, -R4]
l992: mov R4, #34
l993: strh R3, [sp, -R4]
l994: strPLh R7, [sp, #-62]
l995: strGEh R12, [sp, #-14]
l996: mov R5, #62
l997: strLSh R12, [sp, -R5]
l998: strh R9, [sp, #-28]
l999: mov R5, #64
l1000: strVCh R9, [sp, -R5]
end: b end

