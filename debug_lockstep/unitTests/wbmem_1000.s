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
val1: .word 1481817251
next1:ldr R2, val2
b next2
val2: .word 1285050595
next2:ldr R3, val3
b next3
val3: .word 961895029
next3:ldr R4, val4
b next4
val4: .word 4157617817
next4:ldr R5, val5
b next5
val5: .word 1831770573
next5:ldr R6, val6
b next6
val6: .word 1077245870
next6:ldr R7, val7
b next7
val7: .word 4179939854
next7:ldr R8, val8
b next8
val8: .word 3169240388
next8:ldr R9, val9
b next9
val9: .word 3893330672
next9:ldr R10, val10
b next10
val10: .word 2970714867
next10:ldr R11, val11
b next11
val11: .word 1334686153
next11:ldr R12, val12
b next12
val12: .word 3769582369
next12:ldr R14, val14
b next14
val14: .word 3423797231

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 4023257706
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 1778935471
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3815206974
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 4281143678
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 1428357012
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 2205764113
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 3035800671
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 2321374887
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3597265225
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 2666670686
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 3412036908
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 4023359892
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 4278659122
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 3029601008
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 1625915783
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 71768200
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 434649900
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 2430397550
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 1495062878
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 3803951801
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 4038742559
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: mov R10, #54
l2: ldrLTB R7, [sp, -R10]
l3: mov R11, #44
l4: ldr R11, [sp], -R11
l5: mov R0, #28
l6: ldrCS R10, [sp, -R0]
l7: mov R3, #23
l8: strB R1, [sp, +R3]
l9: strLEB R12, [sp, #-1]
l10: mov R9, #14
l11: ldrLTB R7, [sp, +R9]
l12: mov R1, #24
l13: ldr R7, [sp], +R1
l14: mov R5, #36
l15: ldrPL R4, [sp, -R5]
l16: ldrLE R6, [sp, #-32]
l17: ldrPLB R6, [sp, #+3]
l18: ldrB R1, [sp, #-50]
l19: mov R5, #30
l20: ldrLTB R10, [sp, -R5]
l21: ldr R9, [sp], #-60
l22: strLTB R11, [sp, #+10]
l23: ldrLT R8, [sp, #+16]
l24: str R4, [sp], #+16
l25: mov R8, #59
l26: strGTB R11, [sp, +R8]
l27: mov R11, #9
l28: strB R10, [sp, -R11]
l29: str R15, [sp], #-4
l30: mov R1, #9
l31: ldrVSB R9, [sp, -R1]
l32: strGE R4, [sp, #+16]
l33: str R9, [sp, #+8]
l34: mov R0, #45
l35: ldrHIB R4, [sp, +R0]
l36: mov R3, #20
l37: ldr R12, [sp, +R3]
l38: mov R1, #40
l39: ldr R11, [sp], +R1
l40: ldrB R0, [sp, #-7]
l41: mov R14, #49
l42: ldrLTB R12, [sp, -R14]
l43: mov R1, #4
l44: ldr R8, [sp], -R1
l45: mov R1, #20
l46: strHI R15, [sp, -R1]
l47: str R4, [sp, #+16]!
l48: mov R8, #60
l49: str R9, [sp], -R8
l50: mov R6, #8
l51: ldr R6, [sp, +R6]!
l52: str R10, [sp, #+4]
l53: str R15, [sp, #+24]!
l54: strB R2, [sp, #+11]
l55: ldrHIB R10, [sp, #+15]
l56: strGTB R12, [sp, #+7]
l57: mov R14, #29
l58: strCSB R4, [sp, -R14]
l59: mov R1, #36
l60: str R9, [sp, -R1]
l61: mov R4, #4
l62: ldr R5, [sp, -R4]!
l63: mov R11, #24
l64: strMI R4, [sp, -R11]
l65: str R0, [sp, #-28]!
l66: mov R14, #71
l67: ldrB R3, [sp, +R14]
l68: ldr R11, [sp], #+8
l69: mov R12, #59
l70: ldrB R5, [sp, +R12]
l71: mov R6, #16
l72: str R8, [sp], +R6
l73: ldrB R0, [sp, #+0]
l74: ldr R0, [sp], #-24
l75: ldrB R11, [sp, #+32]
l76: ldr R10, [sp, #+28]!
l77: ldrMIB R7, [sp, #-23]
l78: ldrVCB R6, [sp, #+27]
l79: strVCB R7, [sp, #+42]
l80: mov R2, #32
l81: ldrVC R2, [sp, -R2]
l82: strB R4, [sp, #+3]
l83: mov R1, #9
l84: strB R3, [sp, -R1]
l85: mov R5, #23
l86: strVSB R8, [sp, -R5]
l87: ldrCSB R6, [sp, #+5]
l88: mov R0, #10
l89: strB R12, [sp, +R0]
l90: ldrGT R5, [sp, #+12]
l91: mov R0, #8
l92: ldrCSB R14, [sp, +R0]
l93: mov R5, #28
l94: ldr R2, [sp], +R5
l95: ldr R14, [sp, #-56]!
l96: ldrCS R8, [sp, #+20]
l97: ldr R1, [sp, #+40]!
l98: ldr R4, [sp, #-8]!
l99: mov R7, #12
l100: ldr R10, [sp], +R7
l101: strCC R5, [sp, #-16]
l102: mov R3, #26
l103: strB R10, [sp, -R3]
l104: mov R7, #20
l105: strCCB R2, [sp, +R7]
l106: mov R0, #32
l107: ldr R14, [sp, -R0]!
l108: mov R10, #8
l109: strLS R3, [sp, +R10]
l110: ldr R2, [sp], #+20
l111: mov R9, #8
l112: ldr R11, [sp, -R9]
l113: ldrB R14, [sp, #+35]
l114: ldrB R2, [sp, #+29]
l115: mov R1, #26
l116: strVSB R0, [sp, +R1]
l117: mov R2, #8
l118: ldrMI R0, [sp, -R2]
l119: ldr R5, [sp, #+36]!
l120: mov R10, #4
l121: ldrB R6, [sp, -R10]
l122: ldrCCB R1, [sp, #-67]
l123: strCSB R12, [sp, #-72]
l124: strVC R10, [sp, #-36]
l125: mov R1, #64
l126: str R1, [sp], -R1
l127: mov R9, #36
l128: strPLB R8, [sp, +R9]
l129: ldr R4, [sp], #+24
l130: ldrNEB R3, [sp, #+30]
l131: mov R12, #28
l132: strGT R1, [sp, +R12]
l133: mov R14, #12
l134: str R10, [sp], +R14
l135: str R7, [sp, #+0]
l136: str R9, [sp], #+20
l137: ldrB R11, [sp, #-54]
l138: mov R9, #44
l139: str R8, [sp, -R9]
l140: mov R1, #6
l141: ldrGEB R0, [sp, +R1]
l142: mov R2, #8
l143: ldrB R2, [sp, -R2]
l144: mov R9, #4
l145: str R5, [sp, -R9]
l146: ldr R8, [sp], #-48
l147: mov R11, #20
l148: str R15, [sp], +R11
l149: strMIB R11, [sp, #+1]
l150: str R5, [sp, #+28]!
l151: mov R10, #60
l152: strLS R1, [sp, -R10]
l153: mov R11, #52
l154: str R0, [sp, -R11]!
l155: ldrB R8, [sp, #-2]
l156: mov R9, #28
l157: ldrCC R2, [sp, +R9]
l158: str R15, [sp], #+36
l159: mov R2, #36
l160: ldrB R11, [sp, -R2]
l161: strMI R12, [sp, #+8]
l162: ldrB R9, [sp, #+13]
l163: str R9, [sp, #+20]!
l164: mov R3, #28
l165: ldr R10, [sp], -R3
l166: ldrB R9, [sp, #-7]
l167: mov R9, #6
l168: ldrLEB R4, [sp, -R9]
l169: strB R4, [sp, #-35]
l170: mov R6, #8
l171: ldr R8, [sp, +R6]!
l172: mov R9, #32
l173: ldr R8, [sp, -R9]!
l174: ldrB R5, [sp, #+28]
l175: mov R5, #10
l176: ldrCCB R4, [sp, -R5]
l177: ldrMIB R1, [sp, #+24]
l178: ldrCCB R9, [sp, #+49]
l179: ldr R6, [sp, #+48]!
l180: mov R12, #5
l181: ldrB R3, [sp, -R12]
l182: mov R1, #48
l183: strB R4, [sp, -R1]
l184: ldr R4, [sp], #-8
l185: ldrGEB R14, [sp, #-48]
l186: strLTB R6, [sp, #-49]
l187: ldr R2, [sp, #-24]!
l188: mov R4, #15
l189: ldrB R1, [sp, -R4]
l190: mov R7, #8
l191: str R12, [sp, +R7]
l192: mov R5, #4
l193: ldr R2, [sp], -R5
l194: ldrB R2, [sp, #-26]
l195: mov R2, #12
l196: str R11, [sp, +R2]!
l197: mov R12, #28
l198: str R7, [sp], +R12
l199: mov R8, #64
l200: str R15, [sp, -R8]!
l201: str R6, [sp], #+20
l202: mov R6, #0
l203: ldr R1, [sp, +R6]!
l204: mov R2, #36
l205: str R4, [sp, +R2]
l206: mov R4, #36
l207: strHIB R0, [sp, +R4]
l208: mov R8, #30
l209: strLSB R14, [sp, +R8]
l210: mov R7, #8
l211: str R1, [sp, -R7]!
l212: mov R4, #48
l213: ldrCC R6, [sp, +R4]
l214: str R9, [sp], #-16
l215: mov R14, #44
l216: ldr R8, [sp, +R14]!
l217: ldrEQB R4, [sp, #+12]
l218: mov R2, #24
l219: str R11, [sp, -R2]!
l220: ldrB R14, [sp, #+41]
l221: mov R4, #16
l222: ldr R2, [sp, +R4]!
l223: mov R0, #28
l224: ldr R11, [sp, -R0]
l225: ldrB R0, [sp, #+9]
l226: ldr R6, [sp, #+32]!
l227: str R15, [sp, #+0]!
l228: mov R10, #16
l229: strVC R6, [sp, -R10]
l230: mov R8, #20
l231: str R3, [sp, -R8]!
l232: mov R14, #26
l233: strLEB R7, [sp, -R14]
l234: ldrVS R2, [sp, #-44]
l235: str R11, [sp, #-28]!
l236: mov R0, #26
l237: ldrB R3, [sp, +R0]
l238: str R3, [sp], #+48
l239: strGT R1, [sp, #-44]
l240: mov R12, #19
l241: ldrCSB R11, [sp, -R12]
l242: mov R3, #1
l243: strLEB R1, [sp, -R3]
l244: strVCB R6, [sp, #-34]
l245: mov R9, #20
l246: str R11, [sp], -R9
l247: strLEB R4, [sp, #-42]
l248: mov R6, #4
l249: ldrB R10, [sp, -R6]
l250: ldr R6, [sp], #+20
l251: strB R7, [sp, #-15]
l252: strGEB R7, [sp, #-51]
l253: mov R0, #7
l254: strVSB R4, [sp, -R0]
l255: mov R5, #26
l256: ldrVCB R0, [sp, -R5]
l257: mov R7, #31
l258: strLEB R11, [sp, -R7]
l259: str R7, [sp, #-68]!
l260: mov R1, #4
l261: ldr R11, [sp, +R1]!
l262: mov R9, #57
l263: ldrVCB R1, [sp, +R9]
l264: ldr R7, [sp, #+8]!
l265: mov R8, #48
l266: ldr R9, [sp], +R8
l267: mov R1, #20
l268: ldrMI R5, [sp, -R1]
l269: strB R7, [sp, #+7]
l270: mov R5, #56
l271: ldr R4, [sp], -R5
l272: ldrCC R0, [sp, #+16]
l273: mov R2, #3
l274: strPLB R8, [sp, -R2]
l275: mov R14, #56
l276: str R9, [sp, +R14]
l277: mov R14, #51
l278: ldrVCB R8, [sp, +R14]
l279: mov R7, #20
l280: ldr R11, [sp], +R7
l281: mov R12, #20
l282: ldr R10, [sp], +R12
l283: mov R7, #17
l284: ldrB R8, [sp, +R7]
l285: strMIB R5, [sp, #+0]
l286: str R2, [sp, #+12]
l287: ldr R0, [sp], #+24
l288: ldrB R0, [sp, #-42]
l289: mov R8, #5
l290: strB R8, [sp, +R8]
l291: mov R2, #40
l292: ldr R5, [sp, -R2]!
l293: mov R3, #29
l294: ldrMIB R9, [sp, +R3]
l295: mov R10, #26
l296: strB R9, [sp, +R10]
l297: mov R6, #38
l298: strB R9, [sp, +R6]
l299: ldrMIB R12, [sp, #-6]
l300: mov R0, #20
l301: str R15, [sp, -R0]
l302: str R11, [sp], #+8
l303: strB R8, [sp, #+34]
l304: ldr R0, [sp], #+0
l305: mov R4, #6
l306: ldrLEB R4, [sp, +R4]
l307: mov R3, #17
l308: strMIB R14, [sp, +R3]
l309: mov R11, #32
l310: str R3, [sp], -R11
l311: ldr R3, [sp, #+68]!
l312: mov R12, #12
l313: str R10, [sp, -R12]!
l314: ldr R8, [sp, #-16]!
l315: mov R14, #16
l316: ldrLS R5, [sp, +R14]
l317: mov R7, #6
l318: strB R11, [sp, -R7]
l319: mov R8, #16
l320: ldr R14, [sp], +R8
l321: mov R5, #19
l322: strB R11, [sp, -R5]
l323: ldrLEB R7, [sp, #-41]
l324: strB R1, [sp, #-31]
l325: ldrB R7, [sp, #-54]
l326: mov R7, #0
l327: strB R4, [sp, +R7]
l328: str R7, [sp], #-56
l329: ldrLT R14, [sp, #+0]
l330: str R8, [sp, #+40]
l331: strB R12, [sp, #+39]
l332: ldr R5, [sp], #+40
l333: ldrB R6, [sp, #-44]
l334: ldrB R11, [sp, #+18]
l335: mov R9, #21
l336: strB R8, [sp, -R9]
l337: mov R12, #15
l338: ldrB R12, [sp, -R12]
l339: mov R3, #1
l340: ldrLEB R4, [sp, -R3]
l341: mov R2, #21
l342: strB R3, [sp, +R2]
l343: mov R12, #7
l344: ldrB R1, [sp, +R12]
l345: strNE R4, [sp, #+12]
l346: mov R3, #23
l347: ldrB R6, [sp, -R3]
l348: ldr R0, [sp], #-32
l349: strB R4, [sp, #+19]
l350: mov R10, #4
l351: str R8, [sp, +R10]!
l352: ldrNEB R0, [sp, #-13]
l353: mov R8, #28
l354: str R15, [sp, +R8]!
l355: mov R0, #4
l356: str R6, [sp], -R0
l357: str R3, [sp, #+12]!
l358: mov R9, #16
l359: ldrLE R6, [sp, +R9]
l360: mov R4, #22
l361: strB R3, [sp, +R4]
l362: mov R0, #40
l363: strB R2, [sp, -R0]
l364: mov R7, #7
l365: ldrVSB R14, [sp, -R7]
l366: str R9, [sp, #-52]!
l367: mov R10, #58
l368: ldrB R9, [sp, +R10]
l369: str R1, [sp, #+44]!
l370: mov R0, #24
l371: str R14, [sp, -R0]
l372: strB R10, [sp, #-17]
l373: ldrHI R2, [sp, #-8]
l374: ldrPLB R0, [sp, #-2]
l375: mov R11, #31
l376: strGEB R10, [sp, +R11]
l377: ldrPLB R12, [sp, #-16]
l378: str R1, [sp, #+0]!
l379: mov R8, #20
l380: str R7, [sp], -R8
l381: strNEB R4, [sp, #+46]
l382: ldrB R1, [sp, #+4]
l383: strPL R12, [sp, #-16]
l384: mov R0, #40
l385: ldrHIB R3, [sp, +R0]
l386: ldrVSB R3, [sp, #+36]
l387: str R10, [sp, #+40]
l388: strB R6, [sp, #-16]
l389: strMI R7, [sp, #-8]
l390: mov R12, #41
l391: ldrVSB R1, [sp, +R12]
l392: strGT R8, [sp, #-16]
l393: strB R0, [sp, #+38]
l394: mov R12, #12
l395: ldrB R1, [sp, -R12]
l396: mov R10, #20
l397: ldrPL R4, [sp, +R10]
l398: mov R6, #24
l399: strB R2, [sp, -R6]
l400: strHIB R11, [sp, #-12]
l401: mov R12, #26
l402: strB R8, [sp, +R12]
l403: ldr R14, [sp], #+8
l404: mov R10, #24
l405: ldr R8, [sp, +R10]!
l406: mov R2, #18
l407: ldrEQB R14, [sp, +R2]
l408: mov R1, #9
l409: ldrB R3, [sp, -R1]
l410: mov R7, #40
l411: str R0, [sp, -R7]!
l412: mov R5, #28
l413: str R12, [sp], +R5
l414: str R9, [sp, #+12]
l415: strMIB R1, [sp, #+11]
l416: strNE R0, [sp, #+24]
l417: mov R0, #2
l418: ldrB R14, [sp, -R0]
l419: str R7, [sp, #-36]!
l420: strVCB R11, [sp, #+45]
l421: ldrNEB R4, [sp, #+10]
l422: mov R3, #29
l423: ldrB R1, [sp, +R3]
l424: strB R1, [sp, #+48]
l425: mov R7, #56
l426: ldr R14, [sp], +R7
l427: mov R2, #28
l428: ldrEQ R3, [sp, -R2]
l429: mov R2, #13
l430: strVCB R11, [sp, -R2]
l431: mov R4, #37
l432: strGTB R5, [sp, -R4]
l433: mov R9, #36
l434: str R3, [sp, -R9]
l435: strCCB R9, [sp, #-5]
l436: strNEB R8, [sp, #-57]
l437: strB R12, [sp, #-62]
l438: str R6, [sp], #-52
l439: mov R6, #48
l440: str R9, [sp, +R6]!
l441: mov R7, #16
l442: str R9, [sp, -R7]!
l443: ldrB R4, [sp, #-17]
l444: mov R3, #4
l445: ldr R3, [sp, -R3]!
l446: mov R2, #34
l447: strB R7, [sp, -R2]
l448: ldr R14, [sp, #+4]!
l449: strB R1, [sp, #-16]
l450: ldr R14, [sp], #+0
l451: mov R2, #20
l452: ldr R11, [sp], -R2
l453: mov R6, #48
l454: str R5, [sp, +R6]
l455: str R11, [sp, #+32]!
l456: mov R6, #40
l457: str R11, [sp], -R6
l458: ldrB R3, [sp, #+3]
l459: mov R9, #11
l460: ldrB R12, [sp, +R9]
l461: mov R8, #52
l462: ldr R1, [sp, +R8]
l463: mov R3, #27
l464: ldrB R14, [sp, +R3]
l465: ldr R7, [sp, #+36]!
l466: strVSB R0, [sp, #-12]
l467: ldrCSB R11, [sp, #+11]
l468: ldr R10, [sp, #+20]!
l469: str R14, [sp], #-40
l470: mov R9, #23
l471: ldrB R5, [sp, +R9]
l472: strB R5, [sp, #-21]
l473: strB R5, [sp, #-25]
l474: mov R2, #15
l475: strLSB R1, [sp, +R2]
l476: mov R5, #27
l477: ldrLSB R5, [sp, -R5]
l478: str R12, [sp], #+12
l479: ldrMIB R3, [sp, #-1]
l480: ldrB R6, [sp, #-33]
l481: mov R5, #4
l482: str R4, [sp, -R5]!
l483: mov R0, #29
l484: ldrMIB R6, [sp, -R0]
l485: mov R12, #11
l486: ldrB R5, [sp, -R12]
l487: ldrCCB R6, [sp, #-30]
l488: ldr R2, [sp], #+0
l489: ldr R12, [sp, #-40]!
l490: str R7, [sp, #+0]!
l491: mov R6, #12
l492: ldrB R1, [sp, +R6]
l493: ldrGTB R14, [sp, #+41]
l494: strB R9, [sp, #+23]
l495: ldrB R6, [sp, #+19]
l496: mov R8, #21
l497: ldrPLB R1, [sp, +R8]
l498: mov R0, #28
l499: str R8, [sp], +R0
l500: ldrB R2, [sp, #-9]
l501: str R14, [sp], #-20
l502: ldr R2, [sp, #+48]
l503: str R15, [sp, #+48]!
l504: mov R0, #9
l505: ldrB R4, [sp, +R0]
l506: ldr R3, [sp, #-40]!
l507: strB R2, [sp, #+55]
l508: strLSB R0, [sp, #+8]
l509: mov R4, #8
l510: str R9, [sp, -R4]!
l511: ldr R3, [sp], #-8
l512: mov R14, #68
l513: str R9, [sp], +R14
l514: ldrB R10, [sp, #+4]
l515: ldrB R12, [sp, #-64]
l516: str R15, [sp], #-12
l517: mov R8, #18
l518: ldrB R2, [sp, -R8]
l519: str R4, [sp], #-32
l520: ldrGE R3, [sp, #+32]
l521: strB R7, [sp, #+46]
l522: mov R5, #40
l523: ldrB R3, [sp, +R5]
l524: mov R12, #32
l525: str R1, [sp, +R12]!
l526: mov R3, #0
l527: ldr R1, [sp], +R3
l528: ldr R1, [sp, #-20]
l529: mov R11, #12
l530: ldr R6, [sp, -R11]
l531: mov R7, #39
l532: strB R11, [sp, -R7]
l533: mov R14, #52
l534: str R5, [sp, -R14]!
l535: ldrEQB R14, [sp, #+58]
l536: mov R9, #35
l537: ldrB R10, [sp, +R9]
l538: mov R11, #0
l539: ldr R9, [sp], +R11
l540: mov R3, #4
l541: strGEB R1, [sp, +R3]
l542: mov R10, #28
l543: str R12, [sp, +R10]
l544: mov R3, #16
l545: str R6, [sp], +R3
l546: mov R2, #16
l547: ldrLEB R11, [sp, -R2]
l548: ldrHIB R1, [sp, #+9]
l549: ldr R7, [sp], #+16
l550: ldrHIB R2, [sp, #+5]
l551: str R9, [sp], #+12
l552: mov R9, #24
l553: ldr R11, [sp, +R9]!
l554: mov R9, #8
l555: ldrCC R1, [sp, -R9]
l556: mov R2, #57
l557: ldrCCB R6, [sp, -R2]
l558: mov R1, #44
l559: ldr R7, [sp], -R1
l560: ldr R7, [sp, #+40]
l561: mov R12, #15
l562: ldrLEB R14, [sp, +R12]
l563: strMIB R8, [sp, #-8]
l564: mov R14, #1
l565: ldrB R0, [sp, -R14]
l566: strVSB R10, [sp, #-14]
l567: ldrMIB R1, [sp, #+39]
l568: mov R3, #13
l569: strB R1, [sp, -R3]
l570: mov R5, #40
l571: strB R9, [sp, +R5]
l572: ldrGEB R12, [sp, #-22]
l573: str R10, [sp, #+12]!
l574: ldr R9, [sp], #-28
l575: mov R0, #12
l576: str R6, [sp, -R0]
l577: mov R7, #8
l578: str R15, [sp, -R7]!
l579: ldrGEB R0, [sp, #+37]
l580: mov R9, #61
l581: ldrGTB R14, [sp, +R9]
l582: mov R8, #26
l583: strB R11, [sp, +R8]
l584: mov R11, #1
l585: strLEB R0, [sp, -R11]
l586: mov R4, #44
l587: ldrEQ R7, [sp, +R4]
l588: str R3, [sp], #+36
l589: strEQB R6, [sp, #-27]
l590: str R15, [sp], #-36
l591: mov R4, #15
l592: strVSB R6, [sp, +R4]
l593: mov R7, #52
l594: str R0, [sp, +R7]
l595: mov R2, #36
l596: ldr R14, [sp, +R2]!
l597: ldrNEB R1, [sp, #+2]
l598: strPLB R4, [sp, #+10]
l599: mov R0, #22
l600: ldrB R9, [sp, +R0]
l601: mov R0, #25
l602: ldrVSB R9, [sp, +R0]
l603: ldr R9, [sp], #-36
l604: mov R6, #58
l605: ldrLEB R12, [sp, +R6]
l606: mov R1, #24
l607: ldr R12, [sp, +R1]!
l608: ldrB R9, [sp, #+4]
l609: ldrVCB R11, [sp, #+27]
l610: mov R1, #19
l611: ldrCCB R12, [sp, -R1]
l612: ldrCSB R1, [sp, #+43]
l613: mov R4, #18
l614: ldrB R5, [sp, +R4]
l615: ldrB R7, [sp, #+19]
l616: mov R11, #16
l617: str R15, [sp], -R11
l618: str R2, [sp], #-12
l619: strCCB R3, [sp, #+44]
l620: strNEB R0, [sp, #+25]
l621: mov R11, #57
l622: strB R8, [sp, +R11]
l623: mov R11, #16
l624: str R3, [sp], +R11
l625: mov R11, #49
l626: ldrMIB R1, [sp, +R11]
l627: mov R7, #4
l628: ldrLS R9, [sp, -R7]
l629: mov R8, #36
l630: ldr R6, [sp], +R8
l631: strB R10, [sp, #+12]
l632: mov R4, #44
l633: ldrMI R14, [sp, -R4]
l634: mov R4, #17
l635: ldrB R7, [sp, -R4]
l636: mov R12, #0
l637: ldr R2, [sp, +R12]!
l638: str R12, [sp, #-44]!
l639: mov R14, #7
l640: strB R4, [sp, +R14]
l641: mov R5, #36
l642: strLTB R9, [sp, +R5]
l643: strB R6, [sp, #+27]
l644: ldrB R7, [sp, #-1]
l645: mov R1, #40
l646: str R11, [sp], +R1
l647: strNEB R2, [sp, #-36]
l648: str R3, [sp, #+0]!
l649: strVSB R3, [sp, #+1]
l650: mov R11, #8
l651: strVS R9, [sp, -R11]
l652: str R0, [sp], #-32
l653: str R11, [sp, #+40]!
l654: ldr R9, [sp, #-4]!
l655: mov R4, #41
l656: strGEB R14, [sp, -R4]
l657: mov R1, #12
l658: ldr R14, [sp], -R1
l659: strVSB R2, [sp, #-4]
l660: mov R7, #38
l661: ldrCCB R8, [sp, -R7]
l662: strGEB R8, [sp, #+7]
l663: strB R8, [sp, #+1]
l664: strGEB R2, [sp, #+17]
l665: mov R11, #12
l666: ldr R7, [sp], -R11
l667: mov R6, #36
l668: ldrGE R1, [sp, +R6]
l669: mov R2, #39
l670: ldrB R9, [sp, +R2]
l671: mov R3, #22
l672: ldrMIB R10, [sp, -R3]
l673: mov R4, #40
l674: ldr R0, [sp, +R4]!
l675: mov R10, #33
l676: strLTB R10, [sp, -R10]
l677: strLEB R12, [sp, #-55]
l678: mov R3, #27
l679: strB R2, [sp, -R3]
l680: mov R6, #4
l681: str R8, [sp, +R6]!
l682: mov R11, #61
l683: strNEB R14, [sp, -R11]
l684: mov R0, #52
l685: ldr R14, [sp, -R0]!
l686: mov R3, #16
l687: str R2, [sp, +R3]!
l688: mov R3, #32
l689: strLSB R11, [sp, -R3]
l690: mov R3, #2
l691: strLEB R8, [sp, +R3]
l692: str R3, [sp, #+36]
l693: mov R4, #1
l694: ldrB R2, [sp, +R4]
l695: strMIB R10, [sp, #+3]
l696: mov R3, #36
l697: str R7, [sp, -R3]!
l698: str R15, [sp, #+60]!
l699: mov R12, #31
l700: ldrLSB R5, [sp, -R12]
l701: ldrB R8, [sp, #-42]
l702: strNEB R14, [sp, #+15]
l703: ldr R12, [sp], #-36
l704: ldr R2, [sp], #+16
l705: mov R1, #21
l706: strVSB R6, [sp, -R1]
l707: mov R2, #40
l708: strB R1, [sp, -R2]
l709: str R10, [sp, #-28]
l710: ldr R1, [sp, #+20]!
l711: mov R12, #8
l712: str R7, [sp, -R12]!
l713: ldrB R1, [sp, #-50]
l714: ldr R0, [sp], #-16
l715: ldrEQB R11, [sp, #-23]
l716: str R9, [sp], #-28
l717: mov R8, #44
l718: ldr R6, [sp, +R8]!
l719: mov R5, #37
l720: strGTB R2, [sp, -R5]
l721: mov R0, #24
l722: str R14, [sp, -R0]!
l723: mov R0, #8
l724: str R4, [sp, +R0]!
l725: strB R0, [sp, #+32]
l726: ldr R10, [sp], #-4
l727: ldr R4, [sp, #+0]!
l728: ldr R3, [sp], #+36
l729: mov R5, #33
l730: ldrB R5, [sp, -R5]
l731: mov R14, #40
l732: str R4, [sp, -R14]
l733: ldrLTB R1, [sp, #-8]
l734: str R7, [sp, #-8]
l735: str R5, [sp], #-36
l736: strLTB R14, [sp, #-22]
l737: mov R5, #28
l738: str R0, [sp, +R5]!
l739: ldrB R8, [sp, #-33]
l740: mov R2, #38
l741: strB R5, [sp, -R2]
l742: mov R0, #32
l743: ldr R4, [sp, -R0]!
l744: mov R7, #24
l745: str R12, [sp, -R7]!
l746: str R1, [sp, #+52]!
l747: mov R1, #48
l748: ldrLEB R5, [sp, -R1]
l749: strB R3, [sp, #+7]
l750: mov R12, #40
l751: ldrB R6, [sp, -R12]
l752: mov R1, #17
l753: ldrB R4, [sp, +R1]
l754: strMI R0, [sp, #-48]
l755: ldrB R9, [sp, #-27]
l756: mov R8, #48
l757: ldr R2, [sp], -R8
l758: ldrGT R3, [sp, #+8]
l759: ldrB R6, [sp, #+45]
l760: strMIB R6, [sp, #+14]
l761: mov R3, #32
l762: strPLB R12, [sp, +R3]
l763: mov R14, #32
l764: ldrMIB R9, [sp, +R14]
l765: mov R2, #40
l766: strB R11, [sp, +R2]
l767: mov R11, #45
l768: strB R0, [sp, +R11]
l769: ldr R5, [sp, #+40]!
l770: mov R5, #2
l771: ldrB R7, [sp, +R5]
l772: ldr R7, [sp], #+20
l773: mov R3, #8
l774: strEQB R8, [sp, -R3]
l775: ldrB R5, [sp, #-54]
l776: mov R2, #0
l777: ldrGTB R4, [sp, +R2]
l778: strB R9, [sp, #+1]
l779: ldrB R14, [sp, #-14]
l780: strB R7, [sp, #-30]
l781: strB R8, [sp, #-41]
l782: mov R10, #44
l783: ldr R10, [sp, -R10]!
l784: mov R6, #40
l785: str R5, [sp], +R6
l786: ldrB R3, [sp, #-1]
l787: ldr R1, [sp], #-60
l788: mov R9, #64
l789: str R11, [sp, +R9]!
l790: mov R12, #40
l791: ldr R11, [sp], -R12
l792: mov R8, #32
l793: ldr R10, [sp, +R8]!
l794: mov R14, #4
l795: ldr R1, [sp, -R14]!
l796: ldr R0, [sp], #+0
l797: strGT R1, [sp, #-44]
l798: strB R0, [sp, #-56]
l799: ldrB R3, [sp, #-8]
l800: str R2, [sp, #-36]
l801: ldr R7, [sp, #-4]!
l802: mov R3, #35
l803: strHIB R10, [sp, -R3]
l804: ldr R8, [sp, #-36]!
l805: ldr R0, [sp, #+0]!
l806: strLTB R10, [sp, #+37]
l807: mov R6, #40
l808: strVS R2, [sp, +R6]
l809: strMIB R0, [sp, #+59]
l810: mov R1, #12
l811: str R14, [sp, -R1]
l812: mov R11, #1
l813: ldrB R3, [sp, -R11]
l814: strGEB R6, [sp, #+22]
l815: mov R12, #49
l816: strNEB R9, [sp, +R12]
l817: mov R10, #2
l818: ldrVCB R9, [sp, +R10]
l819: str R15, [sp], #+32
l820: mov R0, #18
l821: strNEB R5, [sp, +R0]
l822: mov R10, #44
l823: ldrPL R1, [sp, -R10]
l824: mov R3, #23
l825: strB R2, [sp, -R3]
l826: strGTB R5, [sp, #-23]
l827: ldrLE R1, [sp, #-12]
l828: mov R8, #40
l829: ldr R4, [sp, -R8]!
l830: mov R0, #4
l831: str R10, [sp, +R0]!
l832: mov R5, #28
l833: str R8, [sp, +R5]!
l834: strEQ R14, [sp, #+8]
l835: mov R2, #3
l836: strB R6, [sp, +R2]
l837: ldrB R7, [sp, #-36]
l838: strLEB R7, [sp, #+26]
l839: ldrCCB R7, [sp, #-39]
l840: ldr R9, [sp, #+4]!
l841: ldrB R14, [sp, #-10]
l842: ldrB R4, [sp, #-9]
l843: str R14, [sp, #-32]!
l844: strLEB R6, [sp, #+62]
l845: mov R8, #41
l846: strNEB R1, [sp, +R8]
l847: mov R10, #60
l848: ldr R12, [sp], +R10
l849: mov R8, #10
l850: strB R12, [sp, -R8]
l851: str R11, [sp, #-8]!
l852: mov R12, #60
l853: ldr R14, [sp], -R12
l854: ldrVCB R5, [sp, #+21]
l855: strNEB R9, [sp, #+16]
l856: ldrCSB R7, [sp, #+9]
l857: mov R11, #24
l858: str R2, [sp], +R11
l859: mov R2, #20
l860: ldr R2, [sp], -R2
l861: mov R1, #27
l862: strPLB R1, [sp, +R1]
l863: mov R8, #2
l864: ldrVCB R12, [sp, -R8]
l865: strB R11, [sp, #+31]
l866: mov R9, #40
l867: ldrLT R14, [sp, +R9]
l868: mov R10, #57
l869: strHIB R9, [sp, +R10]
l870: mov R12, #36
l871: ldr R0, [sp, +R12]!
l872: mov R9, #15
l873: strMIB R2, [sp, -R9]
l874: ldr R12, [sp, #+20]!
l875: strLEB R9, [sp, #-35]
l876: mov R7, #17
l877: ldrEQB R8, [sp, -R7]
l878: ldr R9, [sp], #-36
l879: str R11, [sp, #+0]
l880: strB R0, [sp, #+0]
l881: ldrLTB R1, [sp, #-14]
l882: str R10, [sp], #-20
l883: mov R14, #64
l884: ldr R7, [sp, +R14]!
l885: mov R5, #15
l886: ldrLEB R4, [sp, -R5]
l887: strNE R1, [sp, #-24]
l888: strEQ R4, [sp, #-64]
l889: str R15, [sp], #-52
l890: str R4, [sp, #+20]!
l891: strEQB R11, [sp, #+0]
l892: str R3, [sp], #+8
l893: ldr R2, [sp, #+24]!
l894: mov R7, #72
l895: strGE R15, [sp, -R7]
l896: mov R4, #52
l897: str R6, [sp], -R4
l898: ldr R0, [sp, #+48]!
l899: strB R7, [sp, #-34]
l900: ldrB R1, [sp, #-6]
l901: mov R4, #20
l902: ldrCC R14, [sp, -R4]
l903: strB R10, [sp, #-21]
l904: mov R14, #65
l905: ldrMIB R2, [sp, -R14]
l906: mov R8, #42
l907: ldrVSB R11, [sp, -R8]
l908: mov R4, #21
l909: strMIB R2, [sp, -R4]
l910: mov R1, #40
l911: ldr R9, [sp, -R1]!
l912: strB R14, [sp, #+47]
l913: str R0, [sp, #-24]!
l914: strLSB R2, [sp, #+17]
l915: mov R9, #40
l916: str R3, [sp], +R9
l917: ldrB R5, [sp, #-5]
l918: mov R2, #6
l919: strMIB R11, [sp, +R2]
l920: mov R12, #1
l921: ldrCCB R4, [sp, +R12]
l922: mov R5, #35
l923: strB R1, [sp, -R5]
l924: mov R8, #16
l925: strB R7, [sp, +R8]
l926: ldrLTB R1, [sp, #+6]
l927: strHIB R11, [sp, #+19]
l928: ldrB R2, [sp, #-18]
l929: strMIB R9, [sp, #-16]
l930: str R7, [sp], #+4
l931: ldrLTB R1, [sp, #+25]
l932: mov R3, #28
l933: strEQ R1, [sp, -R3]
l934: mov R6, #6
l935: strMIB R5, [sp, +R6]
l936: mov R0, #40
l937: strLTB R5, [sp, -R0]
l938: mov R6, #0
l939: ldrVCB R2, [sp, +R6]
l940: mov R3, #40
l941: ldrEQB R12, [sp, -R3]
l942: strB R6, [sp, #-1]
l943: strPLB R5, [sp, #-24]
l944: str R2, [sp, #-32]
l945: mov R2, #12
l946: ldr R11, [sp, +R2]!
l947: mov R11, #20
l948: strLE R12, [sp, -R11]
l949: mov R3, #25
l950: strB R2, [sp, -R3]
l951: mov R14, #56
l952: str R11, [sp, -R14]!
l953: strB R5, [sp, #+17]
l954: strCCB R14, [sp, #+37]
l955: ldrGE R0, [sp, #+60]
l956: mov R2, #50
l957: strB R12, [sp, +R2]
l958: mov R2, #64
l959: str R10, [sp, +R2]
l960: mov R10, #44
l961: ldr R10, [sp], +R10
l962: mov R12, #10
l963: ldrVCB R2, [sp, -R12]
l964: ldrB R4, [sp, #-20]
l965: strB R11, [sp, #-22]
l966: mov R2, #20
l967: str R1, [sp], +R2
l968: str R3, [sp, #+4]!
l969: strB R9, [sp, #+2]
l970: mov R7, #48
l971: strB R14, [sp, -R7]
l972: ldr R6, [sp, #-28]
l973: mov R6, #33
l974: ldrGEB R9, [sp, -R6]
l975: str R10, [sp, #-40]!
l976: ldrVSB R9, [sp, #-8]
l977: mov R2, #30
l978: strPLB R12, [sp, -R2]
l979: strVSB R11, [sp, #-30]
l980: ldrHI R5, [sp, #+4]
l981: ldr R14, [sp], #+12
l982: mov R6, #20
l983: ldr R9, [sp, -R6]
l984: mov R12, #27
l985: ldrNEB R6, [sp, +R12]
l986: mov R9, #8
l987: ldrB R8, [sp, +R9]
l988: strCSB R9, [sp, #-1]
l989: strB R8, [sp, #-12]
l990: strPL R1, [sp, #+4]
l991: mov R3, #5
l992: strGEB R6, [sp, +R3]
l993: mov R4, #32
l994: strVS R2, [sp, -R4]
l995: mov R1, #44
l996: str R2, [sp, -R1]!
l997: mov R0, #68
l998: strLTB R2, [sp, +R0]
l999: strB R10, [sp, #+24]
l1000: mov R8, #60
l1001: ldrCSB R0, [sp, +R8]
end: b end

