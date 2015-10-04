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
val1: .word 1710144366
next1:ldr R2, val2
b next2
val2: .word 801751082
next2:ldr R3, val3
b next3
val3: .word 2495074186
next3:ldr R4, val4
b next4
val4: .word 355129144
next4:ldr R5, val5
b next5
val5: .word 4109232660
next5:ldr R6, val6
b next6
val6: .word 2540597851
next6:ldr R7, val7
b next7
val7: .word 1015993538
next7:ldr R8, val8
b next8
val8: .word 522635706
next8:ldr R9, val9
b next9
val9: .word 4183032917
next9:ldr R10, val10
b next10
val10: .word 1072481337
next10:ldr R11, val11
b next11
val11: .word 2517535148
next11:ldr R12, val12
b next12
val12: .word 4157968105
next12:ldr R14, val14
b next14
val14: .word 2919361656

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 3265516822
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 564094047
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 1776880173
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 2172022612
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 414745160
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 536567711
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 3162608089
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 359094312
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 1223263040
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 1843946625
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 2940732318
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 3873320365
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 2619130497
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 3926174238
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 3373388770
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 3786200569
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 1425731329
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 268522708
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 3572024790
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 2637590050
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 2350371908
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: mov R10, #7
l2: strB R11, [sp, -R10]
l3: ldmDB R13!, {R1, R2, R3, R4, R7, R9, R10, R12, R14}
l4: mov R14, #4
l5: ldrEQ R6, [sp, +R14]
l6: mov R6, #44
l7: str R6, [sp, -R6]!
l8: mov R12, #2
l9: ldrsh R2, [sp, +R12]
l10: stmIB R13!, {R13, R14}
l11: mov R5, #2
l12: ldrLSh R0, [sp, -R5]
l13: str R7, [sp], #+56
l14: ldrsh R7, [sp, #-4]
l15: mov R5, #6
l16: ldrCSh R14, [sp, +R5]
l17: ldr R5, [sp, #-8]
l18: stmIB R13, {R7}
l19: mov R6, #40
l20: strLT R12, [sp, -R6]
l21: stmIB R13!, {R2}
l22: stmDA R13!, {R13}
l23: stmDA R13!, {R0, R5, R10, R14}
l24: mov R3, #3
l25: ldrCCB R4, [sp, -R3]
l26: stmCCIB R13, {R1, R2, R8, R11, R14}
l27: mov R5, #4
l28: strB R12, [sp, +R5]
l29: stmIB R13!, {R3, R5, R7, R8, R9}
l30: ldmNEIA R13, {R11}
l31: mov R5, #6
l32: ldrGEsh R1, [sp, +R5]
l33: ldmMIDA R13, {R6, R9, R12, R14}
l34: ldmDA R13!, {R4, R6}
l35: mov R6, #11
l36: ldrVCsb R4, [sp, +R6]
l37: ldmIA R13!, {R2}
l38: ldmDB R13!, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l39: ldrCCsb R0, [sp, #+60]
l40: mov R0, #3
l41: ldrLEsb R0, [sp, +R0]
l42: mov R12, #62
l43: ldrB R11, [sp, +R12]
l44: ldrMIsh R5, [sp, #+32]
l45: strVCh R5, [sp, #+10]
l46: ldr R5, [sp, #+32]!
l47: mov R3, #18
l48: ldrCCh R12, [sp, -R3]
l49: ldmIB R13, {R6, R7, R9, R14}
l50: mov R4, #17
l51: ldrCCB R10, [sp, +R4]
l52: str R5, [sp, #+28]!
l53: mov R9, #42
l54: ldrMIh R5, [sp, -R9]
l55: ldrsh R3, [sp, #-68]
l56: ldmEQDA R13, {R4, R5, R7, R9, R10, R11, R14}
l57: ldrB R2, [sp, #-28]
l58: stmMIDA R13, {R0, R6, R9, R14}
l59: strEQB R10, [sp, #-37]
l60: stmDB R13!, {R13}
l61: ldmDA R13!, {R1, R2, R3, R5, R6, R8, R9, R10, R11}
l62: ldrsb R10, [sp, #+12]
l63: stmIA R13!, {R2, R5}
l64: str R8, [sp, #+0]!
l65: stmIA R13, {R0, R9}
l66: str R15, [sp], #+0
l67: mov R7, #40
l68: ldrsb R2, [sp, -R7]
l69: ldr R9, [sp, #-16]!
l70: ldr R10, [sp, #+28]!
l71: ldrsh R12, [sp, #+0]
l72: nop
l73: stmDB R13!, {R13}
l74: stmLSIB R13, {R7, R10, R12}
l75: ldrh R0, [sp, #-42]
l76: ldmIA R13!, {R8}
l77: ldmIA R13!, {R7}
l78: nop
l79: ldmIB R13!, {R8, R10, R12}
l80: mov R6, #64
l81: str R3, [sp], -R6
l82: mov R12, #64
l83: ldrLEsh R10, [sp, +R12]
l84: ldmIB R13!, {R1, R2, R3, R4, R5, R8, R9, R10, R11, R12, R14}
l85: mov R10, #30
l86: ldrEQh R8, [sp, -R10]
l87: mov R3, #24
l88: strLT R10, [sp, -R3]
l89: stmDB R13, {R6}
l90: stmHIIB R13, {R0, R1, R14, R15}
l91: strVCh R9, [sp, #+8]
l92: mov R6, #24
l93: strB R3, [sp, -R6]
l94: ldmIA R13!, {R10, R14}
l95: strB R8, [sp, #-54]
l96: ldmDA R13!, {R2, R5, R6, R7, R11, R14}
l97: strCCh R0, [sp, #-16]
l98: mov R0, #42
l99: ldrGEh R14, [sp, +R0]
l100: str R5, [sp, #-20]!
l101: nop
l102: mov R7, #6
l103: ldrh R7, [sp, +R7]
l104: nop
l105: mov R3, #16
l106: ldrHIh R2, [sp, +R3]
l107: stmIA R13, {R6, R7, R8, R10, R11, R12, R14, R15}
l108: ldmIB R13!, {R2, R5, R8, R9}
l109: nop
l110: ldr R2, [sp, #-24]!
l111: ldrsb R10, [sp, #+67]
l112: ldr R3, [sp, #+4]!
l113: strPLB R11, [sp, #+31]
l114: stmVSIA R13, {R1, R2, R4, R6, R7, R8, R9, R10, R11, R13, R14}
l115: mov R8, #30
l116: strLEh R3, [sp, +R8]
l117: nop
l118: ldr R9, [sp, #+20]
l119: mov R6, #39
l120: strNEB R6, [sp, +R6]
l121: ldmIB R13!, {R9, R11}
l122: ldmIB R13!, {R2, R5, R7, R8, R12}
l123: stmLEIB R13, {R0, R4, R6}
l124: mov R9, #16
l125: strLEh R0, [sp, +R9]
l126: ldrB R4, [sp, #-14]
l127: ldrGEh R8, [sp, #+26]
l128: mov R14, #28
l129: strB R14, [sp, -R14]
l130: mov R6, #28
l131: ldrEQ R3, [sp, +R6]
l132: ldmIA R13!, {R0, R5, R8, R9, R10}
l133: mov R10, #4
l134: ldrMIh R3, [sp, +R10]
l135: ldmDA R13!, {R0, R1, R2, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l136: nop
l137: str R6, [sp], #+8
l138: mov R5, #20
l139: ldr R2, [sp, +R5]!
l140: strh R8, [sp, #+28]
l141: ldmDB R13!, {R4, R9, R11, R12}
l142: mov R0, #28
l143: strLEh R6, [sp, +R0]
l144: nop
l145: nop
l146: mov R11, #27
l147: ldrLSB R14, [sp, +R11]
l148: stmGTIA R13, {R12, R13}
l149: mov R3, #22
l150: strCSB R4, [sp, +R3]
l151: ldmIA R13, {R2, R3, R4, R5}
l152: strVSB R3, [sp, #+48]
l153: mov R9, #7
l154: ldrNEsb R11, [sp, -R9]
l155: stmDA R13!, {R4, R7}
l156: stmDA R13!, {R12}
l157: strVCB R12, [sp, #-2]
l158: mov R5, #4
l159: ldrVCh R5, [sp, +R5]
l160: mov R6, #24
l161: ldrCSsb R14, [sp, +R6]
l162: nop
l163: mov R1, #8
l164: str R5, [sp, -R1]!
l165: mov R14, #62
l166: ldrsh R11, [sp, +R14]
l167: stmNEIA R13, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15}
l168: nop
l169: stmNEIA R13, {R0, R1, R2, R5, R7, R12, R13, R14}
l170: stmIB R13!, {R13}
l171: ldmIA R13!, {R0, R2, R3, R5, R6, R12}
l172: ldrsh R4, [sp, #-26]
l173: mov R6, #37
l174: ldrsb R6, [sp, +R6]
l175: mov R9, #16
l176: str R12, [sp, +R9]
l177: mov R0, #6
l178: strh R6, [sp, -R0]
l179: ldrsb R3, [sp, #-28]
l180: stmIA R13!, {R0, R2, R5, R7, R9, R10, R12, R15}
l181: ldmDA R13!, {R1, R2, R3, R4, R5, R8, R9, R10, R11, R12}
l182: mov R11, #2
l183: ldrh R2, [sp, +R11]
l184: stmDB R13!, {R3}
l185: ldmDB R13!, {R11}
l186: mov R2, #40
l187: str R1, [sp], +R2
l188: mov R9, #2
l189: ldrB R10, [sp, -R9]
l190: stmVCIA R13, {R9}
l191: ldrsh R14, [sp, #+12]
l192: stmIB R13!, {R9}
l193: mov R7, #24
l194: ldrEQ R11, [sp, -R7]
l195: stmCSDB R13, {R0, R2, R3, R6, R7, R9, R12, R13, R14, R15}
l196: mov R10, #1
l197: strGTB R7, [sp, +R10]
l198: ldmDA R13!, {R3}
l199: ldrVCh R1, [sp, #-12]
l200: ldmDA R13!, {R0, R3, R12, R14}
l201: strVCB R1, [sp, #+19]
l202: stmVCDB R13, {R3}
l203: strB R0, [sp, #-16]
l204: mov R5, #36
l205: str R11, [sp, +R5]!
l206: stmGTDB R13, {R11}
l207: ldmDB R13, {R2, R4, R5, R6, R7, R10, R12}
l208: strB R9, [sp, #-69]
l209: mov R0, #18
l210: strh R5, [sp, -R0]
l211: stmDA R13!, {R13}
l212: mov R12, #52
l213: ldrh R0, [sp, -R12]
l214: strLEB R10, [sp, #-23]
l215: mov R10, #28
l216: ldr R12, [sp], -R10
l217: mov R10, #36
l218: ldrh R6, [sp, -R10]
l219: ldmIB R13, {R3, R4, R10}
l220: ldmIA R13, {R2, R6, R7}
l221: mov R1, #30
l222: strGEh R4, [sp, +R1]
l223: mov R1, #6
l224: ldrh R4, [sp, +R1]
l225: strLE R12, [sp, #-40]
l226: strGEB R0, [sp, #+17]
l227: ldmDB R13, {R1, R2, R7, R8, R10, R14}
l228: str R15, [sp, #-8]!
l229: stmDB R13!, {R5, R11}
l230: ldrsb R0, [sp, #+47]
l231: mov R10, #43
l232: ldrNEsb R9, [sp, +R10]
l233: ldmIA R13, {R2, R3, R5, R6, R7, R8, R10, R11, R14}
l234: ldmIB R13, {R0, R3, R5, R7, R10, R11, R14}
l235: mov R12, #14
l236: ldrPLsh R11, [sp, +R12]
l237: ldrsh R9, [sp, #+32]
l238: strGTB R2, [sp, #-12]
l239: ldrVSB R0, [sp, #+1]
l240: mov R11, #16
l241: ldr R9, [sp, -R11]!
l242: strGEB R3, [sp, #+27]
l243: mov R4, #56
l244: ldrGEh R6, [sp, +R4]
l245: mov R10, #55
l246: ldrB R6, [sp, +R10]
l247: nop
l248: stmIA R13!, {R3, R4, R6, R7, R9}
l249: stmIA R13, {R0, R4, R5, R6, R8, R9, R11, R14}
l250: mov R11, #24
l251: ldr R10, [sp], +R11
l252: str R8, [sp], #+0
l253: ldmDA R13!, {R0, R1, R2, R3, R6, R7, R10, R12}
l254: ldrLSB R11, [sp, #-3]
l255: nop
l256: ldmDA R13, {R9, R10}
l257: ldrGEB R6, [sp, #+48]
l258: mov R12, #35
l259: strCSB R3, [sp, +R12]
l260: mov R7, #34
l261: strVCh R3, [sp, +R7]
l262: strB R6, [sp, #-2]
l263: stmDA R13!, {R0, R6}
l264: strh R11, [sp, #+46]
l265: ldmIA R13!, {R5, R14}
l266: ldrB R6, [sp, #+47]
l267: ldrLEsh R14, [sp, #+50]
l268: mov R0, #36
l269: ldrsh R6, [sp, +R0]
l270: ldmIB R13!, {R5, R7, R12}
l271: nop
l272: stmIA R13, {R1, R3, R5, R7, R9, R12, R13}
l273: mov R3, #4
l274: ldr R14, [sp, +R3]!
l275: mov R4, #6
l276: ldrLEB R5, [sp, +R4]
l277: stmVSDA R13, {R1, R6, R10, R13, R14}
l278: mov R1, #20
l279: ldr R8, [sp, -R1]!
l280: ldrMIsb R9, [sp, #+30]
l281: nop
l282: ldmIB R13!, {R1, R2, R3, R4, R6, R8, R10, R11}
l283: strPLB R3, [sp, #-29]
l284: stmCSDB R13, {R0, R1, R4, R7, R10, R12, R13}
l285: mov R5, #20
l286: ldrsb R11, [sp, -R5]
l287: mov R3, #40
l288: ldrsb R9, [sp, -R3]
l289: mov R9, #12
l290: ldrHIh R9, [sp, -R9]
l291: strB R2, [sp, #+8]
l292: ldrCCsb R5, [sp, #+1]
l293: stmIA R13!, {R0, R8, R10, R11, R12}
l294: ldrLEsb R7, [sp, #+6]
l295: ldrLEB R0, [sp, #+6]
l296: stmIB R13!, {R15}
l297: nop
l298: str R0, [sp, #-48]!
l299: ldrGTB R6, [sp, #+2]
l300: str R7, [sp], #-16
l301: nop
l302: ldrVCsb R1, [sp, #+17]
l303: mov R4, #3
l304: strCSB R11, [sp, -R4]
l305: stmIB R13!, {R13, R14, R15}
l306: str R7, [sp, #+52]!
l307: ldrsb R7, [sp, #-33]
l308: nop
l309: str R9, [sp], #-60
l310: mov R1, #28
l311: ldrPLh R5, [sp, +R1]
l312: ldr R2, [sp], #-8
l313: ldmIA R13!, {R0, R1, R4, R6, R7, R8, R9, R11, R14}
l314: nop
l315: strB R7, [sp, #-25]
l316: ldmIB R13!, {R1, R2, R4, R5, R8, R9}
l317: nop
l318: mov R5, #56
l319: str R12, [sp, -R5]
l320: stmDB R13!, {R9}
l321: ldrLTh R1, [sp, #-32]
l322: ldmDA R13, {R1, R2, R3, R5, R6, R7, R8, R9, R10, R11, R14}
l323: strB R11, [sp, #-53]
l324: mov R6, #8
l325: ldrsb R0, [sp, +R6]
l326: ldmPLDA R13, {R1, R10}
l327: ldrB R12, [sp, #-60]
l328: stmIA R13!, {R2, R9, R10}
l329: ldmDA R13, {R1, R3, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l330: strMIh R14, [sp, #-52]
l331: str R3, [sp, #-60]!
l332: ldrLEsb R11, [sp, #+15]
l333: nop
l334: ldrCC R6, [sp, #+40]
l335: stmIB R13!, {R13, R14, R15}
l336: mov R4, #12
l337: ldrCCsh R8, [sp, -R4]
l338: nop
l339: strGEh R11, [sp, #+12]
l340: mov R4, #8
l341: ldr R0, [sp, +R4]!
l342: ldrsh R9, [sp, #-18]
l343: nop
l344: stmIB R13!, {R0, R1, R3, R8, R9, R11, R14, R15}
l345: mov R4, #0
l346: ldrGTh R6, [sp, +R4]
l347: str R7, [sp], #-52
l348: mov R10, #12
l349: ldrsh R12, [sp, -R10]
l350: ldrNEh R9, [sp, #-10]
l351: ldmIA R13!, {R5, R8, R11, R14}
l352: mov R6, #20
l353: ldrsb R5, [sp, -R6]
l354: ldrGTsb R12, [sp, #-19]
l355: stmDA R13, {R15}
l356: ldrB R12, [sp, #+28]
l357: strEQ R14, [sp, #-20]
l358: mov R11, #42
l359: strh R6, [sp, +R11]
l360: nop
l361: stmDB R13!, {R8}
l362: ldmDB R13!, {R6, R10, R12}
l363: ldmIA R13!, {R0, R2, R3, R4, R5, R6, R7, R10, R11, R12, R14}
l364: strh R4, [sp, #-30]
l365: ldmDB R13!, {R0, R10, R11}
l366: str R7, [sp], #-36
l367: nop
l368: nop
l369: nop
l370: mov R5, #57
l371: ldrB R2, [sp, +R5]
l372: mov R6, #34
l373: ldrh R7, [sp, +R6]
l374: stmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R11, R12, R14, R15}
l375: str R1, [sp, #+12]
l376: stmDB R13!, {R1, R5, R6, R8, R9, R10, R11, R12, R14, R15}
l377: str R1, [sp, #+52]!
l378: nop
l379: ldmDA R13!, {R0, R2, R4, R5, R6, R7, R8, R9, R10, R11}
l380: mov R7, #14
l381: ldrEQsh R8, [sp, -R7]
l382: ldrCSB R8, [sp, #-2]
l383: nop
l384: mov R4, #24
l385: strHIB R7, [sp, -R4]
l386: ldmIB R13!, {R0, R3, R4, R5, R6, R9, R12}
l387: ldrGEh R6, [sp, #-6]
l388: mov R1, #38
l389: ldrsb R10, [sp, -R1]
l390: stmIA R13!, {R11}
l391: ldrLEsh R7, [sp, #-52]
l392: ldrLSsb R10, [sp, #+4]
l393: ldrPLsb R10, [sp, #-56]
l394: ldmPLIB R13, {R11}
l395: ldr R10, [sp, #-60]
l396: strB R12, [sp, #+6]
l397: mov R11, #58
l398: ldrVCB R2, [sp, -R11]
l399: mov R1, #16
l400: ldr R14, [sp], -R1
l401: mov R11, #12
l402: strh R7, [sp, +R11]
l403: mov R14, #23
l404: strB R2, [sp, -R14]
l405: ldrCCsb R7, [sp, #+9]
l406: strh R5, [sp, #-36]
l407: nop
l408: mov R6, #8
l409: str R0, [sp, -R6]!
l410: strB R0, [sp, #-4]
l411: mov R11, #35
l412: ldrLEsb R9, [sp, -R11]
l413: ldr R9, [sp, #-28]
l414: nop
l415: ldrGTB R5, [sp, #+22]
l416: ldrLEh R8, [sp, #+0]
l417: stmHIDA R13, {R3, R4, R5, R6, R8}
l418: strh R2, [sp, #+20]
l419: mov R9, #16
l420: strGT R3, [sp, +R9]
l421: ldmDB R13!, {R0, R1, R2, R6, R10, R14}
l422: mov R8, #59
l423: ldrB R4, [sp, +R8]
l424: mov R7, #44
l425: str R2, [sp, +R7]!
l426: mov R5, #36
l427: ldrVC R5, [sp, -R5]
l428: stmIB R13!, {R7, R12}
l429: stmDA R13!, {R1, R4, R5, R6, R7, R8, R10, R12, R14, R15}
l430: ldrB R11, [sp, #+6]
l431: strEQh R8, [sp, #+22]
l432: mov R4, #20
l433: strLT R6, [sp, +R4]
l434: mov R10, #12
l435: str R12, [sp, +R10]!
l436: ldmDA R13, {R2, R3, R5, R9, R10, R12}
l437: ldmIB R13!, {R1, R3, R8, R9, R10, R14}
l438: mov R6, #64
l439: ldr R10, [sp, -R6]!
l440: ldmIA R13!, {R1, R4, R9, R10, R12}
l441: mov R11, #36
l442: str R5, [sp, +R11]
l443: mov R0, #14
l444: ldrsb R3, [sp, +R0]
l445: str R7, [sp], #+36
l446: mov R7, #14
l447: ldrVSB R8, [sp, -R7]
l448: mov R1, #28
l449: str R15, [sp], -R1
l450: ldrEQB R8, [sp, #+5]
l451: ldrh R3, [sp, #+46]
l452: ldmIB R13!, {R1, R2, R3, R4, R6, R8, R10, R11, R12}
l453: mov R4, #10
l454: strh R1, [sp, -R4]
l455: nop
l456: mov R2, #5
l457: ldrCSB R7, [sp, -R2]
l458: ldrGTsb R1, [sp, #-28]
l459: nop
l460: stmLSIA R13, {R7}
l461: ldrB R14, [sp, #+4]
l462: strLEh R5, [sp, #+4]
l463: stmGTDA R13, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R11, R13, R14, R15}
l464: strh R9, [sp, #+10]
l465: mov R1, #52
l466: ldrNEsh R5, [sp, -R1]
l467: ldmIB R13!, {R5, R14}
l468: mov R5, #54
l469: strGEB R8, [sp, -R5]
l470: nop
l471: ldmCSDB R13, {R1, R7, R8, R9}
l472: mov R14, #41
l473: ldrsb R10, [sp, -R14]
l474: nop
l475: nop
l476: mov R11, #48
l477: str R6, [sp, -R11]
l478: mov R3, #6
l479: ldrLTsb R1, [sp, -R3]
l480: str R14, [sp], #-24
l481: ldrsh R7, [sp, #-34]
l482: mov R7, #6
l483: ldrsh R3, [sp, -R7]
l484: mov R8, #10
l485: ldrCSh R10, [sp, -R8]
l486: ldmDA R13!, {R0, R2, R3, R6, R8, R14}
l487: ldmIA R13!, {R0, R2, R4, R7}
l488: mov R12, #8
l489: ldr R2, [sp, +R12]!
l490: nop
l491: ldrVCB R0, [sp, #-46]
l492: ldmDB R13!, {R2, R7}
l493: stmDA R13!, {R6, R15}
l494: ldrsb R7, [sp, #-32]
l495: stmDB R13!, {R6}
l496: ldrGTsb R0, [sp, #-27]
l497: mov R0, #6
l498: ldrh R8, [sp, +R0]
l499: mov R8, #45
l500: strVSB R6, [sp, +R8]
l501: stmIB R13!, {R1, R2, R4, R5, R6, R10, R11}
l502: mov R11, #28
l503: str R12, [sp], -R11
l504: ldr R4, [sp, #+8]!
l505: ldrh R9, [sp, #-10]
l506: ldmIB R13!, {R0, R1, R4, R5, R6, R9, R10, R11, R12}
l507: strh R4, [sp, #-40]
l508: strh R0, [sp, #-32]
l509: nop
l510: ldrLSsb R12, [sp, #-66]
l511: mov R4, #68
l512: ldrEQsb R9, [sp, -R4]
l513: nop
l514: ldrsh R4, [sp, #-10]
l515: ldmNEDA R13, {R0, R4, R7}
l516: ldrsb R14, [sp, #-13]
l517: mov R5, #66
l518: ldrsh R5, [sp, -R5]
l519: strB R4, [sp, #-40]
l520: mov R11, #44
l521: ldr R8, [sp, -R11]!
l522: stmNEIA R13, {R0, R8, R9, R12, R14}
l523: mov R5, #24
l524: strPL R15, [sp, -R5]
l525: stmPLDB R13, {R1, R5, R8}
l526: mov R10, #4
l527: ldrh R5, [sp, +R10]
l528: mov R14, #40
l529: ldrNEsh R8, [sp, +R14]
l530: ldmDA R13!, {R0, R1, R12}
l531: nop
l532: stmCCIA R13, {R2, R4, R5}
l533: ldmIA R13!, {R3}
l534: mov R7, #8
l535: str R2, [sp, -R7]!
l536: mov R3, #23
l537: ldrB R1, [sp, +R3]
l538: stmDA R13!, {R4}
l539: ldrVCsh R3, [sp, #+54]
l540: mov R0, #56
l541: ldr R5, [sp], +R0
l542: stmLTIB R13, {R14}
l543: ldmIA R13!, {R4}
l544: mov R6, #65
l545: ldrLTB R0, [sp, -R6]
l546: mov R9, #39
l547: strLSB R11, [sp, -R9]
l548: mov R5, #32
l549: strLS R8, [sp, -R5]
l550: mov R3, #5
l551: strB R2, [sp, +R3]
l552: ldrh R9, [sp, #-66]
l553: mov R3, #20
l554: strVSB R14, [sp, -R3]
l555: ldmIB R13!, {R6}
l556: ldrVCsh R0, [sp, #-2]
l557: mov R5, #60
l558: str R2, [sp, -R5]!
l559: mov R11, #35
l560: ldrEQsb R8, [sp, +R11]
l561: ldmIA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11}
l562: ldrMIsb R1, [sp, #+38]
l563: ldrsh R12, [sp, #+20]
l564: strLT R7, [sp, #+8]
l565: ldrPLsh R12, [sp, #+24]
l566: mov R14, #29
l567: ldrsb R5, [sp, +R14]
l568: mov R3, #43
l569: strEQB R7, [sp, +R3]
l570: nop
l571: ldrEQsb R12, [sp, #+47]
l572: ldrB R0, [sp, #+16]
l573: ldmNEIB R13, {R0, R1, R3, R14}
l574: strHIB R5, [sp, #+25]
l575: ldrB R6, [sp, #+15]
l576: mov R6, #54
l577: ldrGEsh R0, [sp, +R6]
l578: stmDA R13, {R6}
l579: ldmHIIB R13, {R0}
l580: nop
l581: mov R9, #35
l582: strLSB R9, [sp, +R9]
l583: mov R14, #8
l584: ldrEQsb R3, [sp, +R14]
l585: stmDB R13!, {R15}
l586: ldmVCIB R13, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R10, R12, R14}
l587: mov R1, #5
l588: ldrB R10, [sp, -R1]
l589: nop
l590: nop
l591: ldrPLB R2, [sp, #+6]
l592: ldrGEsh R1, [sp, #+18]
l593: mov R6, #1
l594: ldrLSB R9, [sp, -R6]
l595: stmLTIA R13, {R0}
l596: mov R10, #25
l597: strB R11, [sp, +R10]
l598: str R15, [sp], #+56
l599: ldrsh R4, [sp, #+2]
l600: stmIB R13, {R15}
l601: mov R6, #10
l602: ldrMIsh R9, [sp, +R6]
l603: mov R7, #34
l604: ldrHIB R3, [sp, -R7]
l605: nop
l606: ldr R0, [sp], #-36
l607: mov R14, #17
l608: ldrHIsb R2, [sp, +R14]
l609: ldrsh R12, [sp, #+34]
l610: mov R0, #24
l611: ldr R7, [sp, -R0]!
l612: mov R10, #4
l613: ldr R9, [sp], +R10
l614: mov R12, #4
l615: strPLB R3, [sp, +R12]
l616: nop
l617: stmPLIB R13, {R4, R5, R7, R14}
l618: ldrsb R8, [sp, #+18]
l619: nop
l620: ldrCCsh R14, [sp, #+14]
l621: ldr R10, [sp, #+60]
l622: strB R1, [sp, #+39]
l623: ldrGEsh R4, [sp, #+20]
l624: ldrsb R3, [sp, #+31]
l625: strGTB R3, [sp, #-4]
l626: ldrsh R11, [sp, #+40]
l627: ldmIB R13!, {R1, R3, R11}
l628: nop
l629: ldrh R11, [sp, #+44]
l630: stmIB R13, {R0, R4, R5, R7, R8, R9, R10, R11, R13, R15}
l631: str R11, [sp, #+28]
l632: ldrCC R14, [sp, #+48]
l633: ldmNEDA R13, {R0}
l634: stmIA R13!, {R0, R1, R4, R5, R9, R11, R15}
l635: stmDA R13!, {R1, R2, R3, R5, R11, R15}
l636: mov R14, #24
l637: str R4, [sp], +R14
l638: stmDA R13!, {R13, R15}
l639: str R2, [sp, #+32]
l640: mov R10, #25
l641: ldrNEsb R3, [sp, -R10]
l642: stmDB R13!, {R9, R15}
l643: mov R2, #8
l644: str R1, [sp, -R2]!
l645: ldrNEh R4, [sp, #+24]
l646: mov R11, #4
l647: ldr R5, [sp], -R11
l648: nop
l649: ldr R2, [sp], #+28
l650: mov R12, #48
l651: ldr R0, [sp, -R12]!
l652: strB R12, [sp, #+66]
l653: strh R4, [sp, #+26]
l654: mov R4, #57
l655: ldrB R7, [sp, +R4]
l656: mov R8, #14
l657: ldrVCh R12, [sp, +R8]
l658: strHI R8, [sp, #+48]
l659: mov R12, #42
l660: ldrGEsh R0, [sp, +R12]
l661: ldrh R12, [sp, #+64]
l662: mov R9, #60
l663: ldrMIh R7, [sp, +R9]
l664: stmIB R13!, {R13, R14, R15}
l665: nop
l666: strVSB R2, [sp, #+46]
l667: stmDA R13!, {R7}
l668: mov R8, #60
l669: ldrGEsh R9, [sp, +R8]
l670: strLEh R3, [sp, #+28]
l671: str R14, [sp], #+0
l672: mov R7, #40
l673: ldr R10, [sp, +R7]!
l674: mov R14, #44
l675: str R2, [sp, -R14]!
l676: mov R9, #50
l677: strB R6, [sp, +R9]
l678: strLEB R9, [sp, #+33]
l679: stmIA R13!, {R13, R14, R15}
l680: ldmIA R13!, {R7}
l681: strHIh R12, [sp, #+22]
l682: mov R5, #10
l683: ldrLSB R10, [sp, +R5]
l684: stmDB R13!, {R1, R5, R6}
l685: ldmIB R13!, {R0, R1, R4, R5, R7, R8, R9, R11, R12, R14}
l686: ldmDA R13!, {R0, R1, R2, R3, R11}
l687: nop
l688: stmIB R13!, {R1, R2, R4, R11, R12, R14, R15}
l689: stmDB R13!, {R1, R2, R9, R10}
l690: ldrh R1, [sp, #+16]
l691: nop
l692: str R8, [sp, #-16]!
l693: mov R2, #24
l694: ldr R12, [sp, -R2]!
l695: strB R7, [sp, #+60]
l696: str R15, [sp], #+12
l697: ldr R14, [sp, #-4]!
l698: mov R6, #54
l699: strh R1, [sp, +R6]
l700: mov R1, #0
l701: ldrNEh R9, [sp, +R1]
l702: mov R7, #41
l703: ldrNEsb R3, [sp, +R7]
l704: ldrh R7, [sp, #+38]
l705: ldrMIh R11, [sp, #+56]
l706: mov R10, #0
l707: ldr R4, [sp], +R10
l708: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R9, R11, R12}
l709: ldmDB R13!, {R1, R2, R3, R4, R5, R6, R8, R9, R12, R14}
l710: strMIB R4, [sp, #+28]
l711: nop
l712: ldr R5, [sp, #+16]
l713: nop
l714: ldrHIsb R3, [sp, #+27]
l715: nop
l716: strCCB R1, [sp, #+50]
l717: ldmIA R13!, {R1, R5, R11}
l718: mov R10, #4
l719: ldr R12, [sp, +R10]
l720: ldmIB R13!, {R5}
l721: strLSB R5, [sp, #+49]
l722: strPLh R12, [sp, #-24]
l723: mov R0, #16
l724: ldr R10, [sp], +R0
l725: ldmDA R13!, {R1, R2, R3, R6, R9, R14}
l726: mov R1, #11
l727: ldrHIB R2, [sp, -R1]
l728: mov R9, #11
l729: ldrGTB R5, [sp, -R9]
l730: nop
l731: ldrB R1, [sp, #+37]
l732: ldmDB R13!, {R8, R12}
l733: strMIB R8, [sp, #+39]
l734: nop
l735: nop
l736: mov R7, #52
l737: ldrsb R2, [sp, +R7]
l738: mov R6, #24
l739: ldrVCB R8, [sp, +R6]
l740: str R10, [sp], #+4
l741: ldmIA R13, {R1}
l742: strVSh R7, [sp, #-4]
l743: mov R10, #20
l744: ldrLEsb R8, [sp, +R10]
l745: ldrB R7, [sp, #-3]
l746: mov R3, #8
l747: ldrh R7, [sp, -R3]
l748: mov R14, #5
l749: ldrsb R7, [sp, -R14]
l750: stmIA R13!, {R13}
l751: stmDB R13!, {R7, R8}
l752: mov R2, #15
l753: strPLB R6, [sp, +R2]
l754: str R15, [sp, #+16]
l755: str R9, [sp], #+32
l756: ldmNEDA R13, {R0, R4, R5, R8, R9, R14}
l757: ldmDB R13!, {R3, R5, R6, R7, R10, R12, R14}
l758: strh R10, [sp, #-4]
l759: mov R6, #12
l760: str R6, [sp], -R6
l761: stmIB R13!, {R13, R15}
l762: stmIB R13!, {R0, R1, R2, R4, R7, R8, R9, R10, R11, R12, R14}
l763: ldrsh R8, [sp, #-34]
l764: mov R7, #37
l765: ldrGEsb R4, [sp, -R7]
l766: nop
l767: ldrLSh R5, [sp, #-2]
l768: mov R5, #12
l769: ldrsh R4, [sp, -R5]
l770: ldrCSB R14, [sp, #-29]
l771: ldrsb R11, [sp, #-40]
l772: ldrLSB R6, [sp, #-22]
l773: strh R3, [sp, #+0]
l774: ldr R10, [sp, #-52]
l775: mov R9, #30
l776: strh R3, [sp, -R9]
l777: ldmIA R13!, {R4, R6, R9, R14}
l778: ldr R0, [sp, #-56]!
l779: stmDB R13!, {R6}
l780: stmIB R13!, {R13, R14, R15}
l781: nop
l782: strGTB R5, [sp, #+7]
l783: ldmIA R13!, {R1, R3, R5, R6, R7, R8, R9, R11, R12}
l784: ldmIB R13!, {R1, R2, R9, R12}
l785: nop
l786: mov R9, #37
l787: ldrsb R1, [sp, -R9]
l788: mov R14, #52
l789: ldrEQsh R0, [sp, -R14]
l790: nop
l791: nop
l792: ldrsh R11, [sp, #-46]
l793: mov R5, #2
l794: ldrLEh R9, [sp, +R5]
l795: stmDB R13!, {R13, R14}
l796: nop
l797: mov R4, #8
l798: strLEB R2, [sp, -R4]
l799: mov R6, #56
l800: ldr R6, [sp], -R6
l801: nop
l802: strB R2, [sp, #-1]
l803: ldrNEsb R9, [sp, #-3]
l804: nop
l805: nop
l806: strMIB R2, [sp, #+57]
l807: stmIA R13!, {R1, R2, R7, R8, R10}
l808: ldrCSsh R9, [sp, #-20]
l809: nop
l810: mov R12, #7
l811: strVCB R2, [sp, -R12]
l812: mov R1, #42
l813: strPLh R7, [sp, +R1]
l814: stmGTIA R13, {R3, R4, R5, R6, R8, R9, R12, R13}
l815: ldrMIsb R10, [sp, #-10]
l816: mov R3, #25
l817: ldrsb R5, [sp, +R3]
l818: stmIA R13!, {R0, R4, R6, R9}
l819: mov R8, #28
l820: str R9, [sp], +R8
l821: ldrLTB R8, [sp, #+3]
l822: ldrh R4, [sp, #-22]
l823: mov R7, #36
l824: ldrGEsb R4, [sp, -R7]
l825: ldrPLB R5, [sp, #-36]
l826: ldr R5, [sp, #-32]!
l827: ldrh R3, [sp, #-10]
l828: ldrGEB R12, [sp, #-25]
l829: ldrh R7, [sp, #-22]
l830: ldmIB R13!, {R6, R10}
l831: mov R7, #8
l832: strB R8, [sp, -R7]
l833: ldr R14, [sp, #-24]!
l834: mov R0, #4
l835: ldrHIB R3, [sp, -R0]
l836: nop
l837: strh R6, [sp, #+12]
l838: stmDA R13!, {R0, R2, R5, R12}
l839: strh R1, [sp, #+40]
l840: ldrEQh R10, [sp, #+34]
l841: stmIA R13!, {R2, R8}
l842: ldrLT R4, [sp, #+12]
l843: ldrEQh R3, [sp, #+0]
l844: ldmIB R13!, {R5}
l845: nop
l846: stmIB R13!, {R13, R15}
l847: ldrh R3, [sp, #-22]
l848: ldr R14, [sp, #+0]!
l849: ldrGTB R8, [sp, #-13]
l850: mov R2, #17
l851: strCSB R4, [sp, +R2]
l852: nop
l853: mov R3, #32
l854: strh R0, [sp, +R3]
l855: mov R3, #28
l856: ldrNE R3, [sp, +R3]
l857: strB R12, [sp, #+41]
l858: mov R14, #21
l859: strNEB R1, [sp, +R14]
l860: stmDA R13!, {R8, R12}
l861: str R8, [sp, #+8]!
l862: mov R0, #22
l863: ldrB R1, [sp, +R0]
l864: ldrsb R5, [sp, #+0]
l865: strB R7, [sp, #-12]
l866: mov R11, #34
l867: ldrsh R11, [sp, +R11]
l868: mov R5, #26
l869: strh R6, [sp, +R5]
l870: ldrCCsh R3, [sp, #+22]
l871: mov R11, #12
l872: str R2, [sp], -R11
l873: mov R8, #36
l874: str R1, [sp, +R8]!
l875: mov R8, #20
l876: ldrEQsb R11, [sp, -R8]
l877: strNEB R6, [sp, #+8]
l878: strCSh R11, [sp, #-38]
l879: mov R4, #16
l880: ldr R10, [sp], +R4
l881: mov R7, #32
l882: strNEh R11, [sp, -R7]
l883: ldr R10, [sp], #-64
l884: mov R0, #48
l885: str R10, [sp, +R0]!
l886: ldmDB R13!, {R3, R4, R12}
l887: strPLh R14, [sp, #-32]
l888: mov R12, #8
l889: ldrsh R8, [sp, -R12]
l890: stmDB R13, {R0, R1, R6, R10, R13, R15}
l891: str R9, [sp], #-24
l892: ldmHIDA R13, {R0, R10}
l893: strB R2, [sp, #-3]
l894: nop
l895: mov R10, #3
l896: ldrsb R8, [sp, +R10]
l897: ldrHIsb R10, [sp, #-15]
l898: ldrsh R5, [sp, #+36]
l899: strh R2, [sp, #+46]
l900: stmCCDB R13, {R0, R3}
l901: mov R11, #30
l902: strLSB R4, [sp, +R11]
l903: nop
l904: ldmDA R13, {R4}
l905: mov R2, #48
l906: ldrNE R11, [sp, +R2]
l907: ldmDA R13!, {R7}
l908: mov R2, #0
l909: ldr R12, [sp], +R2
l910: mov R4, #10
l911: strh R11, [sp, -R4]
l912: strPLh R12, [sp, #+14]
l913: mov R3, #3
l914: ldrVSB R11, [sp, -R3]
l915: mov R1, #52
l916: strB R0, [sp, +R1]
l917: str R10, [sp], #+4
l918: stmDA R13, {R2}
l919: ldmCCIA R13, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l920: ldmDA R13!, {R9, R14}
l921: mov R0, #4
l922: ldrCSh R4, [sp, +R0]
l923: strh R2, [sp, #+8]
l924: strB R1, [sp, #+24]
l925: mov R9, #2
l926: strB R6, [sp, -R9]
l927: nop
l928: ldrsb R2, [sp, #-7]
l929: ldrLEsh R7, [sp, #+12]
l930: mov R11, #27
l931: ldrLEB R11, [sp, +R11]
l932: ldmIB R13, {R0, R14}
l933: mov R1, #8
l934: str R3, [sp, -R1]
l935: ldmIA R13!, {R0, R2, R3, R4, R6, R7, R8, R9, R10, R14}
l936: mov R5, #5
l937: strLEB R4, [sp, -R5]
l938: nop
l939: ldrB R2, [sp, #-20]
l940: ldmLSIA R13, {R0, R6, R7}
l941: stmVSDA R13, {R1, R2, R4, R5, R6, R8, R11, R15}
l942: mov R10, #20
l943: ldr R9, [sp], -R10
l944: ldmCSDA R13, {R8}
l945: str R14, [sp, #-16]
l946: mov R11, #19
l947: ldrCCsb R8, [sp, -R11]
l948: mov R4, #44
l949: strB R12, [sp, +R4]
l950: ldrB R2, [sp, #-16]
l951: ldrh R11, [sp, #+12]
l952: ldmIA R13, {R2, R11, R12}
l953: ldmIA R13!, {R0, R3, R4, R5, R6, R7, R9, R12, R14}
l954: mov R8, #46
l955: strGEh R12, [sp, -R8]
l956: ldmIA R13!, {R4, R7}
l957: nop
l958: mov R4, #8
l959: strLTh R6, [sp, -R4]
l960: str R6, [sp], #-44
l961: mov R1, #20
l962: ldr R6, [sp], -R1
l963: mov R3, #3
l964: ldrCSB R2, [sp, -R3]
l965: mov R7, #32
l966: ldrh R8, [sp, +R7]
l967: mov R12, #60
l968: ldrLEB R5, [sp, +R12]
l969: mov R3, #19
l970: ldrsb R1, [sp, +R3]
l971: mov R5, #67
l972: ldrsb R4, [sp, +R5]
l973: ldrh R12, [sp, #+56]
l974: nop
l975: str R3, [sp, #+28]!
l976: strVSh R3, [sp, #-26]
l977: mov R12, #24
l978: ldr R3, [sp], +R12
l979: ldrB R6, [sp, #+3]
l980: ldr R7, [sp, #-28]!
l981: ldrh R12, [sp, #+30]
l982: ldmDB R13!, {R5, R8, R9, R12}
l983: mov R1, #26
l984: ldrsh R0, [sp, +R1]
l985: mov R1, #44
l986: ldrsh R8, [sp, +R1]
l987: ldmIA R13!, {R0, R1, R2, R5, R7, R8, R9, R10, R11, R12, R14}
l988: ldmEQDB R13, {R4, R9}
l989: ldrsh R4, [sp, #-44]
l990: stmLTDB R13, {R0, R1, R5, R9, R13}
l991: mov R11, #28
l992: ldrsh R9, [sp, -R11]
l993: ldr R10, [sp], #+4
l994: ldrsb R0, [sp, #-32]
l995: stmIB R13!, {R15}
l996: ldr R14, [sp], #-8
l997: mov R7, #35
l998: strCSB R0, [sp, -R7]
l999: strLEh R12, [sp, #-38]
l1000: ldrGTB R6, [sp, #-30]
l1001: ldrLTsh R7, [sp, #-16]
l1002: stmIB R13!, {R3}
l1003: mov R9, #22
l1004: ldrB R1, [sp, -R9]
l1005: mov R11, #38
l1006: strCCh R2, [sp, -R11]
l1007: strh R14, [sp, #-2]
l1008: ldmIB R13!, {R12}
l1009: mov R5, #30
l1010: strEQh R2, [sp, -R5]
l1011: ldrCSsb R5, [sp, #-36]
l1012: ldmDB R13!, {R1, R4, R6}
l1013: mov R5, #16
l1014: ldrB R12, [sp, +R5]
l1015: strh R6, [sp, #+12]
l1016: ldmIB R13!, {R2, R9}
l1017: ldr R2, [sp, #+8]
l1018: mov R12, #45
l1019: ldrsb R5, [sp, -R12]
l1020: ldrLEB R9, [sp, #-45]
l1021: ldrLSB R7, [sp, #+9]
l1022: mov R11, #4
l1023: ldrVCsh R6, [sp, +R11]
l1024: strPLB R10, [sp, #-7]
l1025: ldrGTsb R10, [sp, #+0]
l1026: ldrGEsb R5, [sp, #-54]
l1027: stmDB R13!, {R13}
l1028: ldmIB R13!, {R0, R2}
l1029: stmVSIB R13, {R14}
l1030: mov R9, #28
l1031: ldrh R6, [sp, -R9]
l1032: ldrh R2, [sp, #-34]
l1033: stmIA R13!, {R8}
l1034: strVSh R8, [sp, #-52]
l1035: nop
l1036: mov R12, #48
l1037: strh R7, [sp, -R12]
l1038: mov R2, #64
l1039: ldrPLsb R5, [sp, -R2]
l1040: ldrCCB R10, [sp, #-38]
l1041: ldrh R6, [sp, #-40]
l1042: mov R6, #52
l1043: ldr R9, [sp, -R6]!
l1044: ldmDA R13!, {R4}
l1045: stmIB R13!, {R1, R3, R4, R5, R7, R8, R12, R15}
l1046: mov R8, #4
l1047: str R15, [sp, -R8]
l1048: strB R6, [sp, #-43]
l1049: stmDA R13!, {R1, R5, R7, R8, R10, R15}
l1050: mov R5, #20
l1051: ldrh R4, [sp, +R5]
l1052: mov R2, #21
l1053: ldrEQsb R14, [sp, +R2]
l1054: ldrPL R11, [sp, #-4]
l1055: stmLTDA R13, {R2, R5, R6, R9}
l1056: strGT R7, [sp, #-20]
l1057: strh R4, [sp, #+38]
l1058: stmHIIA R13, {R0, R2, R4, R5, R8, R9, R10, R11, R14}
l1059: strGEB R7, [sp, #-7]
l1060: ldmLTIB R13, {R0, R1, R3, R4, R6, R7, R8, R9, R11, R12}
l1061: strCSB R5, [sp, #+28]
l1062: stmIB R13!, {R13}
l1063: stmIA R13!, {R13, R14, R15}
l1064: str R14, [sp, #-28]!
l1065: mov R14, #12
l1066: str R11, [sp, -R14]!
l1067: mov R5, #58
l1068: ldrGEh R5, [sp, +R5]
l1069: stmGEIA R13, {R1, R2, R4, R6, R8, R14}
l1070: mov R3, #50
l1071: strNEh R4, [sp, +R3]
l1072: ldmIB R13!, {R1, R2, R3, R4, R5, R6, R8, R9, R11, R12, R14}
l1073: strVC R4, [sp, #-40]
l1074: mov R5, #24
l1075: str R9, [sp, +R5]!
l1076: stmDA R13!, {R13, R15}
l1077: mov R8, #36
l1078: ldr R12, [sp], -R8
l1079: ldrVS R5, [sp, #+12]
l1080: mov R7, #25
l1081: ldrsb R2, [sp, +R7]
l1082: mov R14, #4
l1083: ldrh R3, [sp, -R14]
l1084: mov R1, #34
l1085: ldrsh R10, [sp, +R1]
l1086: ldrVSsh R8, [sp, #+2]
l1087: ldrHIsb R10, [sp, #+42]
l1088: ldr R3, [sp, #+12]
l1089: nop
l1090: strNEh R2, [sp, #+40]
l1091: mov R2, #34
l1092: strLSh R9, [sp, +R2]
l1093: strLSh R0, [sp, #+6]
l1094: strMIB R9, [sp, #+1]
l1095: nop
l1096: mov R9, #13
l1097: ldrsb R1, [sp, +R9]
l1098: stmDB R13, {R3, R5, R8}
l1099: ldmDB R13!, {R2, R5, R10}
l1100: ldmIB R13!, {R2}
l1101: strEQh R12, [sp, #+30]
l1102: str R10, [sp, #+28]!
l1103: ldr R3, [sp], #-8
l1104: mov R4, #8
l1105: ldr R8, [sp, +R4]!
l1106: mov R11, #32
l1107: ldr R11, [sp, -R11]!
l1108: ldr R14, [sp, #+56]!
l1109: stmGTDA R13, {R8, R14}
l1110: stmPLIB R13, {R4}
l1111: ldrB R6, [sp, #-58]
l1112: strLEh R8, [sp, #-6]
l1113: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12}
l1114: str R3, [sp, #+36]
l1115: ldrPLB R10, [sp, #-9]
l1116: mov R8, #20
l1117: ldrGTh R9, [sp, +R8]
l1118: ldrB R14, [sp, #+43]
l1119: stmIB R13!, {R8, R12}
l1120: strPLB R8, [sp, #-11]
l1121: mov R9, #12
l1122: ldr R4, [sp, -R9]
l1123: mov R3, #26
l1124: ldrLEB R9, [sp, +R3]
l1125: ldrHIB R1, [sp, #+9]
l1126: ldr R7, [sp, #+12]!
l1127: ldmEQIA R13, {R11, R12, R14}
l1128: stmCSDB R13, {R0, R3, R4, R6, R9, R10, R11}
l1129: mov R10, #20
l1130: strB R2, [sp, +R10]
l1131: str R6, [sp], #+16
l1132: ldmDA R13!, {R1, R2, R6, R9, R10, R11, R12, R14}
l1133: ldmCCDB R13, {R5, R11, R12}
l1134: mov R6, #15
l1135: ldrB R14, [sp, -R6]
l1136: ldrGE R7, [sp, #+48]
l1137: strB R7, [sp, #+4]
l1138: stmDA R13!, {R12, R14}
l1139: mov R3, #32
l1140: ldr R2, [sp, +R3]
l1141: mov R0, #48
l1142: str R10, [sp, +R0]
l1143: mov R11, #11
l1144: ldrsb R8, [sp, -R11]
l1145: ldrNEh R5, [sp, #+16]
l1146: ldrsh R3, [sp, #+32]
l1147: ldmIA R13!, {R12, R14}
l1148: ldrLEsh R5, [sp, #-6]
l1149: strVSB R8, [sp, #+3]
l1150: stmDB R13!, {R5}
l1151: mov R6, #30
l1152: ldrsb R6, [sp, +R6]
l1153: ldrB R0, [sp, #+30]
l1154: stmIB R13, {R3, R4, R9, R11, R15}
l1155: ldrsh R5, [sp, #-8]
l1156: mov R8, #18
l1157: ldrCSsb R0, [sp, +R8]
l1158: mov R4, #46
l1159: ldrh R7, [sp, +R4]
l1160: mov R5, #26
l1161: ldrB R12, [sp, +R5]
l1162: ldr R12, [sp], #+16
l1163: mov R9, #6
l1164: strh R9, [sp, -R9]
l1165: ldrPLh R14, [sp, #+10]
l1166: stmIA R13!, {R0, R14, R15}
l1167: stmIA R13!, {R4, R5, R6, R9, R12, R14}
l1168: strCSh R10, [sp, #-58]
l1169: stmIB R13!, {R9}
l1170: ldr R2, [sp, #-44]!
l1171: mov R5, #28
l1172: ldr R11, [sp], +R5
l1173: ldrLEsb R3, [sp, #-30]
l1174: mov R3, #8
l1175: strMI R4, [sp, -R3]
l1176: mov R12, #4
l1177: strLEh R12, [sp, -R12]
l1178: mov R1, #16
l1179: strB R10, [sp, -R1]
l1180: mov R14, #49
l1181: ldrsb R14, [sp, -R14]
l1182: stmLTIB R13, {R3, R10, R14}
l1183: ldmLSDB R13, {R0, R1, R2, R3, R4, R5, R7, R8, R10, R11, R12, R14}
l1184: stmEQIB R13, {R3, R6, R15}
l1185: strEQh R9, [sp, #-32]
l1186: ldmDB R13!, {R0, R1, R2, R6, R11, R12}
l1187: ldrLEsb R5, [sp, #-9]
l1188: str R8, [sp, #+32]!
l1189: ldrh R11, [sp, #-4]
l1190: strVSB R14, [sp, #-34]
l1191: mov R5, #20
l1192: strB R4, [sp, -R5]
l1193: mov R11, #32
l1194: str R4, [sp, -R11]
l1195: ldrCCsb R10, [sp, #-24]
l1196: mov R11, #7
l1197: ldrGTsb R7, [sp, +R11]
l1198: stmDB R13!, {R13}
l1199: mov R6, #59
l1200: strB R10, [sp, -R6]
l1201: strh R14, [sp, #-38]
l1202: ldrLTh R12, [sp, #-34]
l1203: ldrLSsb R11, [sp, #-32]
l1204: str R6, [sp, #-44]!
l1205: ldrLTsh R6, [sp, #+58]
l1206: ldmDB R13!, {R14}
l1207: ldrCS R1, [sp, #+36]
l1208: mov R14, #8
l1209: str R14, [sp, -R14]!
l1210: mov R10, #5
l1211: ldrCSsb R11, [sp, +R10]
l1212: mov R11, #60
l1213: ldr R9, [sp, +R11]!
l1214: stmMIDA R13, {R8, R10}
l1215: ldrB R10, [sp, #-62]
l1216: mov R4, #1
l1217: ldrMIsb R4, [sp, -R4]
l1218: ldr R2, [sp], #-16
l1219: stmIB R13!, {R14}
l1220: stmDA R13!, {R13}
l1221: ldmLEDA R13, {R1, R6, R7, R9, R12}
l1222: stmIA R13!, {R13}
l1223: mov R14, #28
l1224: ldr R2, [sp, -R14]!
l1225: mov R9, #14
l1226: ldrMIsb R7, [sp, +R9]
l1227: stmIB R13!, {R13}
l1228: nop
l1229: ldmDA R13!, {R2, R5, R12}
l1230: mov R8, #28
l1231: ldrsh R5, [sp, +R8]
l1232: mov R11, #28
l1233: ldrsh R12, [sp, +R11]
l1234: mov R5, #53
l1235: ldrsb R0, [sp, +R5]
l1236: ldrMIB R4, [sp, #+40]
l1237: stmDA R13, {R0, R6}
l1238: ldrB R2, [sp, #+54]
l1239: ldrGE R9, [sp, #-16]
l1240: ldrsb R9, [sp, #+1]
l1241: ldr R8, [sp, #+16]!
l1242: nop
l1243: nop
l1244: mov R12, #20
l1245: ldrEQh R8, [sp, -R12]
l1246: ldrGTh R11, [sp, #+18]
l1247: ldmIB R13!, {R4, R5, R6, R9, R10, R11, R12, R14}
l1248: mov R10, #56
l1249: ldrNEsh R6, [sp, -R10]
l1250: ldrB R14, [sp, #-21]
l1251: mov R5, #6
l1252: strh R1, [sp, -R5]
l1253: mov R3, #6
l1254: strGTB R11, [sp, -R3]
l1255: mov R12, #43
l1256: ldrB R1, [sp, -R12]
l1257: mov R1, #20
l1258: strh R0, [sp, -R1]
l1259: strB R7, [sp, #-7]
l1260: stmDB R13, {R3, R4, R5, R6, R8, R11, R14}
l1261: ldmGEIA R13, {R0, R9}
l1262: mov R3, #4
l1263: str R10, [sp], -R3
l1264: ldmHIDA R13, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R10, R11, R14}
l1265: mov R14, #57
l1266: ldrGEB R7, [sp, -R14]
l1267: mov R2, #36
l1268: ldrCSsb R8, [sp, -R2]
l1269: stmDB R13, {R2, R4, R5, R8, R9, R10, R14}
l1270: ldrNEh R1, [sp, #-24]
l1271: mov R7, #56
l1272: ldr R12, [sp], -R7
l1273: mov R1, #66
l1274: ldrh R12, [sp, +R1]
l1275: ldrNEsb R11, [sp, #+6]
l1276: ldrh R2, [sp, #+8]
l1277: stmLSIB R13, {R0, R1, R3, R6, R7, R9, R10, R12, R14, R15}
l1278: mov R7, #66
l1279: ldrsb R9, [sp, +R7]
l1280: mov R12, #60
l1281: ldrPLsb R12, [sp, +R12]
l1282: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l1283: ldmIA R13, {R2, R7, R10, R11}
l1284: ldmDA R13!, {R0, R1, R5, R6, R7, R8, R12, R14}
l1285: mov R3, #30
l1286: ldrVSh R3, [sp, +R3]
l1287: mov R11, #16
l1288: ldrVCh R12, [sp, +R11]
l1289: mov R2, #25
l1290: ldrsb R1, [sp, +R2]
l1291: ldrLTsh R2, [sp, #-18]
l1292: ldmHIDA R13, {R2, R3, R9, R10}
l1293: ldmDA R13!, {R4}
l1294: stmDA R13!, {R13, R15}
l1295: mov R11, #50
l1296: strLTh R14, [sp, +R11]
l1297: mov R12, #8
l1298: ldr R7, [sp, -R12]!
l1299: mov R2, #46
l1300: strh R7, [sp, +R2]
l1301: strVCh R6, [sp, #+36]
l1302: ldrsh R6, [sp, #+38]
l1303: ldmIA R13, {R4, R5, R7, R10, R12}
l1304: ldrh R0, [sp, #+70]
l1305: ldmIB R13!, {R0, R1, R2, R7, R8, R11, R14}
l1306: ldrh R9, [sp, #+8]
l1307: ldmIA R13!, {R0, R6, R8, R10, R12, R14}
l1308: ldmIB R13!, {R5}
l1309: ldmIA R13!, {R4, R9, R10}
l1310: stmPLDA R13, {R0, R2, R3, R4, R5, R6, R7, R9, R10, R11, R13, R14, R15}
l1311: mov R12, #22
l1312: ldrGEsh R0, [sp, -R12]
l1313: nop
l1314: strh R10, [sp, #-4]
l1315: mov R5, #28
l1316: ldrsh R12, [sp, -R5]
l1317: mov R3, #38
l1318: ldrLEsh R0, [sp, -R3]
l1319: mov R6, #64
l1320: ldr R9, [sp, -R6]!
l1321: mov R12, #57
l1322: ldrCSB R7, [sp, +R12]
l1323: stmGTIA R13, {R9, R13, R14}
l1324: ldrPLh R3, [sp, #+22]
l1325: mov R12, #7
l1326: ldrHIB R12, [sp, +R12]
l1327: str R4, [sp, #+48]!
l1328: ldmDB R13, {R1, R8, R12}
l1329: mov R1, #12
l1330: strPLh R0, [sp, +R1]
l1331: stmDA R13!, {R0, R4, R5, R7, R9, R10, R11, R14, R15}
l1332: mov R11, #34
l1333: strh R7, [sp, +R11]
l1334: ldr R10, [sp, #-4]!
l1335: ldmDB R13, {R14}
l1336: strGEB R4, [sp, #+17]
l1337: ldmGEDB R13, {R14}
l1338: ldrLEh R12, [sp, #+32]
l1339: nop
l1340: mov R10, #16
l1341: ldrh R0, [sp, +R10]
l1342: str R8, [sp], #+24
l1343: strCC R1, [sp, #+24]
l1344: ldrB R2, [sp, #+22]
l1345: ldmDB R13!, {R1, R4, R10, R14}
l1346: mov R1, #0
l1347: strVSh R0, [sp, +R1]
l1348: ldr R10, [sp], #+48
l1349: ldrGEsh R6, [sp, #-12]
l1350: nop
l1351: ldmDA R13!, {R0, R1, R2, R3, R5, R7, R8, R9, R10, R11, R12, R14}
l1352: ldmNEIB R13, {R0, R1, R3, R5, R6, R7, R10, R12, R14}
l1353: ldmIA R13!, {R6}
l1354: ldrGTB R4, [sp, #-24]
l1355: mov R1, #12
l1356: strCSh R6, [sp, +R1]
l1357: mov R6, #22
l1358: ldrsh R7, [sp, +R6]
l1359: mov R10, #4
l1360: ldrHI R5, [sp, +R10]
l1361: ldrB R2, [sp, #+47]
l1362: str R15, [sp], #-28
l1363: mov R8, #60
l1364: ldrMI R6, [sp, +R8]
l1365: mov R2, #2
l1366: strB R14, [sp, +R2]
l1367: stmIA R13!, {R2, R5}
l1368: nop
l1369: nop
l1370: mov R5, #31
l1371: ldrVCB R14, [sp, +R5]
l1372: nop
l1373: nop
l1374: mov R4, #3
l1375: ldrPLB R7, [sp, -R4]
l1376: mov R10, #42
l1377: ldrHIsh R4, [sp, +R10]
l1378: str R1, [sp, #+52]!
l1379: mov R6, #49
l1380: ldrVCB R10, [sp, -R6]
l1381: strCSB R0, [sp, #+2]
l1382: ldrLEsh R9, [sp, #-50]
l1383: ldrGEB R7, [sp, #-54]
l1384: mov R10, #10
l1385: ldrsb R14, [sp, -R10]
l1386: stmDB R13, {R0, R2, R3, R4, R5, R7, R11, R14, R15}
l1387: strB R1, [sp, #-57]
l1388: strPLB R8, [sp, #-35]
l1389: ldmIB R13!, {R5}
l1390: stmDA R13!, {R1, R5, R6, R7, R10, R12, R14, R15}
l1391: ldr R0, [sp], #-12
l1392: stmIA R13!, {R4, R6, R7, R8, R10, R11}
l1393: mov R14, #28
l1394: ldr R12, [sp], -R14
l1395: mov R5, #11
l1396: strGEB R2, [sp, -R5]
l1397: strh R14, [sp, #+40]
l1398: stmDA R13!, {R7, R15}
l1399: ldmIB R13!, {R4, R5, R7, R8, R9, R10, R11, R12}
l1400: strLSB R3, [sp, #-40]
l1401: str R6, [sp, #+28]!
l1402: mov R12, #62
l1403: strNEB R0, [sp, -R12]
l1404: mov R6, #42
l1405: strCSh R10, [sp, -R6]
l1406: str R1, [sp], #-60
l1407: stmIB R13, {R2, R3, R4, R6, R7, R8, R9, R10, R11, R12, R14, R15}
l1408: ldrB R1, [sp, #+55]
l1409: mov R7, #1
l1410: strEQB R9, [sp, -R7]
l1411: nop
l1412: ldmIB R13!, {R0, R3, R4, R5, R6, R7, R9, R10, R11, R12}
l1413: mov R8, #22
l1414: ldrPLsh R3, [sp, +R8]
l1415: ldmLSDB R13, {R0, R1, R2, R4, R7, R8, R9, R10, R12, R14}
l1416: ldr R4, [sp, #+20]!
l1417: mov R10, #24
l1418: strGEB R8, [sp, -R10]
l1419: ldmIB R13!, {R3}
l1420: strLTB R6, [sp, #-12]
l1421: mov R11, #50
l1422: ldrsh R9, [sp, -R11]
l1423: mov R3, #44
l1424: str R5, [sp], -R3
l1425: nop
l1426: mov R5, #10
l1427: strB R9, [sp, +R5]
l1428: ldmDB R13!, {R0, R4, R9, R14}
l1429: nop
l1430: mov R12, #34
l1431: ldrCSB R7, [sp, +R12]
l1432: ldmDB R13!, {R6}
l1433: nop
l1434: mov R10, #1
l1435: ldrsb R14, [sp, -R10]
l1436: ldr R11, [sp, #+24]!
l1437: nop
l1438: ldrB R1, [sp, #-4]
l1439: strh R0, [sp, #+8]
l1440: ldrB R12, [sp, #-7]
l1441: mov R12, #32
l1442: str R6, [sp], -R12
l1443: strLSB R4, [sp, #+74]
l1444: mov R7, #62
l1445: strB R1, [sp, +R7]
l1446: ldmIA R13!, {R2, R3, R4, R6, R8, R10, R11, R14}
l1447: mov R0, #23
l1448: ldrNEsb R4, [sp, +R0]
l1449: ldr R12, [sp, #+4]!
l1450: mov R3, #18
l1451: ldrGEsh R6, [sp, -R3]
l1452: ldmDA R13!, {R4, R6}
l1453: mov R5, #32
l1454: str R8, [sp], +R5
l1455: mov R12, #32
l1456: ldrCSsh R3, [sp, -R12]
l1457: strB R5, [sp, #-14]
l1458: mov R2, #13
l1459: ldrB R12, [sp, -R2]
l1460: mov R2, #14
l1461: ldrh R10, [sp, -R2]
l1462: mov R0, #52
l1463: ldrCSsh R11, [sp, -R0]
l1464: stmDB R13, {R1, R2, R3, R5, R6, R7, R10, R11, R12, R14}
l1465: ldrMIsh R2, [sp, #+6]
l1466: ldrPLB R7, [sp, #-60]
l1467: stmIA R13!, {R6}
l1468: ldmDB R13, {R0, R1, R3, R6, R7, R8, R9, R10, R11, R12, R14}
l1469: stmDA R13, {R1, R4, R5, R6, R7, R10, R11, R12, R13}
l1470: ldmDA R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l1471: mov R2, #10
l1472: strh R7, [sp, +R2]
l1473: ldmIA R13, {R2, R3, R9, R12, R14}
l1474: nop
l1475: mov R0, #30
l1476: ldrLTsh R5, [sp, +R0]
l1477: ldrsh R8, [sp, #+44]
l1478: ldrVCB R5, [sp, #-6]
l1479: strB R5, [sp, #+52]
l1480: stmLSIB R13, {R1, R2, R4, R6, R7, R8, R9, R10, R11, R12, R13, R15}
l1481: ldrh R9, [sp, #+24]
l1482: mov R7, #2
l1483: ldrVSsh R9, [sp, +R7]
l1484: stmIA R13!, {R13}
l1485: mov R3, #28
l1486: strMIh R10, [sp, +R3]
l1487: nop
l1488: ldmIA R13!, {R3, R5}
l1489: stmGTIA R13, {R4}
l1490: stmGEDB R13, {R0, R5, R8, R11}
l1491: stmDA R13!, {R3, R8, R12}
l1492: mov R2, #16
l1493: strh R7, [sp, +R2]
l1494: nop
l1495: nop
l1496: stmIB R13!, {R13}
l1497: strB R8, [sp, #+39]
l1498: mov R12, #44
l1499: ldrCCsh R2, [sp, +R12]
l1500: mov R12, #4
l1501: ldr R5, [sp], -R12
l1502: mov R1, #12
l1503: ldrHIsh R11, [sp, -R1]
l1504: strVCh R8, [sp, #+14]
l1505: mov R12, #40
l1506: ldrsh R6, [sp, +R12]
l1507: nop
l1508: mov R11, #4
l1509: str R14, [sp, -R11]!
l1510: stmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R10, R12, R14, R15}
l1511: mov R0, #8
l1512: strMI R2, [sp, -R0]
l1513: stmIB R13, {R1}
l1514: ldrVSB R1, [sp, #-26]
l1515: ldrh R5, [sp, #-54]
l1516: strLSB R0, [sp, #-36]
l1517: ldrPLh R8, [sp, #-34]
l1518: stmIA R13!, {R5, R10}
l1519: stmDB R13, {R1, R3, R4, R5, R6, R7, R8, R9, R10, R12, R13}
l1520: ldmDA R13, {R6, R7, R11, R12, R14}
l1521: mov R1, #20
l1522: ldrh R7, [sp, -R1]
l1523: mov R7, #54
l1524: strLSh R3, [sp, -R7]
l1525: ldrsb R3, [sp, #-29]
l1526: mov R0, #64
l1527: ldr R9, [sp, -R0]!
l1528: mov R2, #4
l1529: strGEB R0, [sp, -R2]
l1530: ldmLTIA R13, {R11}
l1531: ldr R3, [sp], #+52
l1532: ldrh R1, [sp, #+10]
l1533: strHIB R2, [sp, #-14]
l1534: ldrLSB R1, [sp, #-54]
l1535: ldmIB R13!, {R0, R3, R5}
l1536: stmIA R13!, {R6}
l1537: ldrB R9, [sp, #-41]
l1538: ldmLSDA R13, {R0, R1, R2, R3, R4, R5, R7, R9, R14}
l1539: ldmHIDB R13, {R0, R2, R3, R4, R5, R6, R8, R9, R10, R11, R12}
l1540: nop
l1541: mov R14, #22
l1542: ldrMIh R3, [sp, -R14]
l1543: mov R11, #30
l1544: strh R1, [sp, -R11]
l1545: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R10, R11, R12, R14}
l1546: strNE R8, [sp, #-12]
l1547: strGTB R11, [sp, #+26]
l1548: mov R7, #3
l1549: ldrHIsb R12, [sp, -R7]
l1550: mov R3, #10
l1551: strLTh R7, [sp, -R3]
l1552: ldrGEsb R1, [sp, #+25]
l1553: ldmIA R13, {R1, R3, R5, R7, R10, R14}
l1554: ldrCSB R1, [sp, #+29]
l1555: mov R5, #4
l1556: ldr R2, [sp], +R5
l1557: mov R11, #38
l1558: ldrLTsb R5, [sp, +R11]
l1559: stmDB R13!, {R5, R8, R14}
l1560: mov R8, #40
l1561: ldr R10, [sp, +R8]
l1562: ldrLTh R5, [sp, #+42]
l1563: strB R6, [sp, #+53]
l1564: mov R1, #45
l1565: ldrVCsb R9, [sp, +R1]
l1566: mov R9, #20
l1567: strVSh R1, [sp, +R9]
l1568: mov R8, #62
l1569: strLSB R1, [sp, +R8]
l1570: nop
l1571: stmCCDB R13, {R8}
l1572: mov R5, #42
l1573: strB R0, [sp, +R5]
l1574: stmIA R13!, {R5, R6, R8}
l1575: mov R11, #6
l1576: ldrsh R14, [sp, +R11]
l1577: ldrsh R0, [sp, #-8]
l1578: mov R14, #44
l1579: str R12, [sp, +R14]
l1580: ldmIA R13!, {R2, R8, R11, R14}
l1581: ldrGTsh R3, [sp, #+6]
l1582: stmIB R13!, {R4, R8}
l1583: ldrsb R3, [sp, #+12]
l1584: mov R4, #46
l1585: ldrh R2, [sp, -R4]
l1586: mov R10, #34
l1587: ldrEQB R14, [sp, -R10]
l1588: strVS R8, [sp, #+24]
l1589: mov R9, #44
l1590: ldr R7, [sp, -R9]
l1591: ldmIB R13!, {R0, R5, R9, R12}
l1592: ldrLEB R1, [sp, #-40]
l1593: stmDA R13!, {R13, R14, R15}
l1594: ldrVCB R6, [sp, #-4]
l1595: mov R10, #18
l1596: strGTh R8, [sp, -R10]
l1597: stmMIDB R13, {R2, R3, R6}
l1598: str R3, [sp], #+8
l1599: mov R0, #42
l1600: strVSh R4, [sp, -R0]
l1601: stmDB R13!, {R13, R14, R15}
l1602: mov R1, #10
l1603: ldrHIsb R5, [sp, +R1]
l1604: mov R6, #1
l1605: ldrsb R9, [sp, +R6]
l1606: stmIA R13!, {R9}
l1607: ldmDB R13!, {R3, R14}
l1608: ldmIA R13, {R6, R11}
l1609: nop
l1610: mov R0, #4
l1611: ldr R9, [sp, -R0]!
l1612: ldrVCB R0, [sp, #+28]
l1613: mov R7, #38
l1614: ldrPLh R10, [sp, -R7]
l1615: stmDB R13, {R0, R2, R3, R6, R8, R12, R13, R15}
l1616: strLTB R9, [sp, #-4]
l1617: ldrB R8, [sp, #+33]
l1618: nop
l1619: ldrCSB R10, [sp, #-27]
l1620: mov R2, #16
l1621: ldrCSh R1, [sp, -R2]
l1622: stmCSIB R13, {R0, R1, R2, R5, R6, R13, R14, R15}
l1623: ldrh R0, [sp, #-16]
l1624: strCCB R2, [sp, #+14]
l1625: mov R11, #11
l1626: ldrB R4, [sp, +R11]
l1627: mov R9, #16
l1628: strB R14, [sp, -R9]
l1629: mov R9, #12
l1630: strVSh R1, [sp, +R9]
l1631: stmGTDB R13, {R13}
l1632: ldrVCsh R10, [sp, #-4]
l1633: ldrh R7, [sp, #-22]
l1634: mov R11, #12
l1635: ldr R12, [sp, +R11]!
l1636: mov R4, #8
l1637: ldr R9, [sp], +R4
l1638: mov R10, #48
l1639: strh R10, [sp, -R10]
l1640: mov R12, #45
l1641: ldrGEB R3, [sp, -R12]
l1642: ldmDB R13!, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l1643: mov R2, #16
l1644: str R15, [sp, +R2]!
l1645: strGEh R1, [sp, #+26]
l1646: mov R11, #6
l1647: strLTh R0, [sp, -R11]
l1648: mov R2, #4
l1649: ldrsh R5, [sp, +R2]
l1650: ldmDA R13, {R1, R9, R10, R11}
l1651: strMIh R11, [sp, #+8]
l1652: nop
l1653: strVCB R10, [sp, #+12]
l1654: mov R14, #44
l1655: ldrB R0, [sp, +R14]
l1656: ldmIB R13!, {R0, R1, R2, R4, R6, R8, R9, R10, R11, R14}
l1657: mov R4, #2
l1658: strVCB R7, [sp, -R4]
l1659: mov R7, #12
l1660: strNEh R3, [sp, -R7]
l1661: strPL R6, [sp, #+0]
l1662: strh R10, [sp, #-60]
l1663: ldrLTsb R4, [sp, #-56]
l1664: str R9, [sp, #-64]!
l1665: ldrsb R9, [sp, #+14]
l1666: mov R2, #18
l1667: strLTh R7, [sp, +R2]
l1668: ldrLEsb R4, [sp, #+69]
l1669: ldrsb R0, [sp, #+23]
l1670: str R12, [sp], #+4
l1671: nop
l1672: stmIB R13!, {R13, R14, R15}
l1673: nop
l1674: mov R5, #2
l1675: ldrsh R9, [sp, -R5]
l1676: ldmIA R13!, {R6}
l1677: ldmDA R13!, {R2, R5}
l1678: strB R4, [sp, #+60]
l1679: mov R12, #8
l1680: ldr R10, [sp, +R12]!
l1681: strNE R11, [sp, #+24]
l1682: stmDA R13!, {R0}
l1683: ldmIA R13, {R0, R1, R2, R4, R5, R6, R7, R8, R10, R11, R12, R14}
l1684: mov R1, #4
l1685: ldrGTB R1, [sp, +R1]
l1686: ldrB R0, [sp, #+43]
l1687: stmDA R13, {R4}
l1688: mov R10, #23
l1689: ldrEQB R12, [sp, +R10]
l1690: mov R2, #0
l1691: strCSB R11, [sp, +R2]
l1692: ldr R8, [sp], #+24
l1693: stmIB R13!, {R1, R3, R4, R5, R8, R14}
l1694: ldmDB R13!, {R0, R1, R3, R5, R6, R11, R12, R14}
l1695: mov R2, #16
l1696: str R9, [sp, +R2]!
l1697: mov R4, #14
l1698: ldrsh R4, [sp, +R4]
l1699: mov R1, #0
l1700: str R4, [sp], +R1
l1701: mov R3, #16
l1702: ldrCCsh R9, [sp, +R3]
l1703: stmDA R13!, {R13}
l1704: strh R12, [sp, #-30]
l1705: stmDA R13!, {R5, R9, R11}
l1706: ldrsb R6, [sp, #+28]
l1707: stmMIDB R13, {R1, R5, R9, R11, R14}
l1708: mov R0, #20
l1709: strGEh R6, [sp, -R0]
l1710: ldrGTsb R0, [sp, #+37]
l1711: mov R14, #0
l1712: str R9, [sp], +R14
l1713: ldrh R10, [sp, #+4]
l1714: ldmIA R13, {R0, R1}
l1715: mov R11, #32
l1716: strEQB R6, [sp, +R11]
l1717: ldrLSB R5, [sp, #+19]
l1718: ldrsh R11, [sp, #-16]
l1719: ldrLTh R8, [sp, #-28]
l1720: mov R9, #10
l1721: ldrsb R8, [sp, -R9]
l1722: mov R9, #14
l1723: strh R11, [sp, +R9]
l1724: mov R0, #40
l1725: ldrGTsh R10, [sp, +R0]
l1726: ldmIB R13!, {R8, R9, R12}
l1727: stmDA R13!, {R14}
l1728: stmIB R13!, {R0, R6, R7, R8, R11}
l1729: mov R11, #8
l1730: ldrEQsb R8, [sp, -R11]
l1731: mov R8, #49
l1732: ldrLTsb R1, [sp, -R8]
l1733: mov R5, #14
l1734: ldrh R1, [sp, -R5]
l1735: mov R5, #6
l1736: ldrCCsb R12, [sp, -R5]
l1737: mov R14, #4
l1738: ldr R10, [sp, +R14]!
l1739: ldr R6, [sp, #-56]!
l1740: nop
l1741: mov R12, #4
l1742: ldrLT R5, [sp, -R12]
l1743: mov R11, #52
l1744: strLEh R8, [sp, +R11]
l1745: nop
l1746: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R11, R12}
l1747: ldrsb R11, [sp, #-8]
l1748: ldr R1, [sp, #-16]!
l1749: str R8, [sp, #+16]!
l1750: ldmDB R13, {R3, R9, R11, R14}
l1751: ldmDA R13, {R0, R2, R4, R6, R8, R11, R12, R14}
l1752: mov R9, #16
l1753: ldrB R0, [sp, +R9]
l1754: stmIB R13!, {R11}
l1755: str R2, [sp], #-24
l1756: strVCh R10, [sp, #+38]
l1757: ldmDB R13!, {R6}
l1758: mov R5, #20
l1759: strLSB R7, [sp, +R5]
l1760: ldrsh R7, [sp, #+32]
l1761: stmIB R13, {R1, R2, R4, R5, R6, R7, R8, R9, R10, R11, R13}
l1762: mov R4, #44
l1763: ldr R12, [sp, +R4]!
l1764: ldrCSB R10, [sp, #-61]
l1765: stmDA R13!, {R13, R14, R15}
l1766: mov R3, #20
l1767: ldr R10, [sp, -R3]
l1768: mov R0, #8
l1769: ldrNEB R3, [sp, +R0]
l1770: mov R3, #21
l1771: ldrCCsb R0, [sp, -R3]
l1772: mov R8, #26
l1773: ldrsh R3, [sp, -R8]
l1774: strh R12, [sp, #+2]
l1775: nop
l1776: ldr R10, [sp, #-12]!
l1777: ldmIB R13, {R0, R6, R7, R9, R10, R14}
l1778: ldmLEDA R13, {R3, R12, R14}
l1779: mov R3, #16
l1780: ldrEQh R11, [sp, -R3]
l1781: ldr R4, [sp, #+8]
l1782: stmIB R13!, {R1, R5, R8, R14}
l1783: ldrLTB R0, [sp, #-63]
l1784: nop
l1785: ldrGTsh R9, [sp, #-52]
l1786: ldmPLDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R10, R12}
l1787: mov R7, #40
l1788: ldrsh R2, [sp, -R7]
l1789: mov R1, #62
l1790: strNEh R7, [sp, -R1]
l1791: ldr R9, [sp], #-56
l1792: ldrVSB R8, [sp, #+52]
l1793: stmIB R13!, {R13, R14, R15}
l1794: mov R5, #1
l1795: ldrB R12, [sp, +R5]
l1796: strCSB R9, [sp, #+41]
l1797: stmDB R13, {R4, R8, R13}
l1798: stmIB R13!, {R13, R14, R15}
l1799: mov R11, #35
l1800: ldrGTB R4, [sp, +R11]
l1801: mov R10, #10
l1802: ldrsb R0, [sp, -R10]
l1803: mov R1, #12
l1804: ldrEQ R14, [sp, +R1]
l1805: mov R7, #31
l1806: strLSB R8, [sp, +R7]
l1807: mov R2, #18
l1808: strh R7, [sp, +R2]
l1809: mov R7, #32
l1810: ldrsb R3, [sp, +R7]
l1811: mov R3, #18
l1812: strVCh R4, [sp, +R3]
l1813: ldmDB R13!, {R11}
l1814: mov R4, #34
l1815: ldrh R5, [sp, +R4]
l1816: ldrGTsb R0, [sp, #+6]
l1817: mov R6, #36
l1818: strh R14, [sp, +R6]
l1819: stmMIIA R13, {R0, R1, R2, R5, R7, R8, R9, R11, R14, R15}
l1820: str R6, [sp], #+20
l1821: mov R2, #14
l1822: strLEh R10, [sp, -R2]
l1823: ldr R10, [sp], #+20
l1824: str R5, [sp, #-12]!
l1825: ldrGTsh R2, [sp, #+10]
l1826: ldmHIDA R13, {R0, R1, R5, R7, R9, R10, R11, R14}
l1827: ldrLEh R11, [sp, #-28]
l1828: strLSh R1, [sp, #-14]
l1829: ldrLEB R4, [sp, #-30]
l1830: strB R11, [sp, #+14]
l1831: mov R10, #10
l1832: ldrh R6, [sp, -R10]
l1833: stmDB R13!, {R13}
l1834: ldrsh R6, [sp, #+12]
l1835: ldrVSB R11, [sp, #+19]
l1836: mov R12, #8
l1837: ldrh R10, [sp, +R12]
l1838: ldmIB R13!, {R2, R6, R11}
l1839: mov R6, #39
l1840: ldrVCB R7, [sp, -R6]
l1841: mov R10, #8
l1842: ldrsh R5, [sp, +R10]
l1843: ldmDB R13!, {R0, R4, R6, R8, R9}
l1844: nop
l1845: strMIh R2, [sp, #-24]
l1846: mov R4, #4
l1847: strh R3, [sp, +R4]
l1848: ldmDA R13!, {R0, R1, R2, R3, R6, R7, R8, R11, R12}
l1849: nop
l1850: nop
l1851: strNEh R4, [sp, #+40]
l1852: ldrh R9, [sp, #+18]
l1853: mov R8, #14
l1854: ldrB R3, [sp, +R8]
l1855: mov R0, #27
l1856: strLSB R14, [sp, +R0]
l1857: strGEB R9, [sp, #+44]
l1858: stmIB R13!, {R13, R14, R15}
l1859: mov R3, #8
l1860: ldrB R10, [sp, +R3]
l1861: nop
l1862: stmDA R13!, {R13}
l1863: ldmIA R13!, {R2, R3, R4, R7, R8, R9, R10, R14}
l1864: mov R8, #12
l1865: str R8, [sp, +R8]!
l1866: strCSB R4, [sp, #-13]
l1867: mov R0, #12
l1868: str R9, [sp, -R0]!
l1869: strCCB R11, [sp, #-25]
l1870: strNEh R5, [sp, #+20]
l1871: ldmDA R13!, {R3, R5, R8, R12}
l1872: strLTh R9, [sp, #+36]
l1873: ldrh R7, [sp, #-10]
l1874: mov R2, #6
l1875: ldrMIh R11, [sp, -R2]
l1876: str R7, [sp], #+36
l1877: mov R6, #6
l1878: ldrLEh R6, [sp, +R6]
l1879: mov R10, #0
l1880: str R12, [sp, +R10]!
l1881: ldrsh R5, [sp, #-28]
l1882: ldrVSB R11, [sp, #-65]
l1883: strB R12, [sp, #-59]
l1884: mov R3, #29
l1885: ldrLEsb R7, [sp, -R3]
l1886: mov R9, #32
l1887: str R12, [sp], -R9
l1888: mov R4, #18
l1889: ldrHIh R1, [sp, +R4]
l1890: mov R2, #4
l1891: ldrVCB R1, [sp, -R2]
l1892: mov R2, #8
l1893: ldr R10, [sp], -R2
l1894: stmIB R13!, {R0, R1}
l1895: ldmDA R13, {R2, R5, R6, R9, R11}
l1896: mov R9, #0
l1897: str R5, [sp], +R9
l1898: ldmNEDB R13, {R0, R3, R8, R9, R10, R12, R14}
l1899: ldmGTIA R13, {R0, R2, R3, R4, R5, R7, R8, R9}
l1900: mov R1, #14
l1901: strEQB R0, [sp, -R1]
l1902: mov R3, #24
l1903: ldrLTB R6, [sp, -R3]
l1904: ldmDB R13, {R0, R1, R2, R4, R10}
l1905: ldmIB R13, {R2}
l1906: mov R14, #28
l1907: strGTB R12, [sp, +R14]
l1908: ldr R6, [sp, #-4]!
l1909: stmDA R13!, {R2}
l1910: stmIA R13!, {R0, R5, R8, R10}
l1911: ldrVSh R11, [sp, #-18]
l1912: ldrsh R14, [sp, #+20]
l1913: strh R0, [sp, #+2]
l1914: ldmDA R13!, {R0, R3, R5, R7, R10, R11, R12}
l1915: mov R4, #0
l1916: ldr R5, [sp], +R4
l1917: mov R5, #12
l1918: strNEh R5, [sp, -R5]
l1919: nop
l1920: stmIA R13, {R1, R2, R4, R12, R13, R14, R15}
l1921: ldrCSsh R7, [sp, #+14]
l1922: stmDB R13, {R14}
l1923: mov R4, #36
l1924: strh R11, [sp, +R4]
l1925: stmIB R13!, {R13}
l1926: mov R0, #0
l1927: strCSB R7, [sp, +R0]
l1928: mov R2, #20
l1929: ldr R10, [sp, -R2]
l1930: ldrVCB R8, [sp, #+29]
l1931: mov R14, #7
l1932: ldrB R2, [sp, -R14]
l1933: ldrMIsb R7, [sp, #-19]
l1934: ldrB R7, [sp, #+54]
l1935: mov R7, #16
l1936: ldrh R9, [sp, -R7]
l1937: nop
l1938: mov R8, #9
l1939: ldrsb R6, [sp, +R8]
l1940: ldmLTIA R13, {R0, R2, R3, R4, R6, R7, R9, R10, R14}
l1941: mov R8, #8
l1942: strh R4, [sp, -R8]
l1943: str R14, [sp, #+52]!
l1944: strB R2, [sp, #-69]
l1945: strB R6, [sp, #-44]
l1946: mov R4, #41
l1947: ldrsb R9, [sp, -R4]
l1948: strLTB R7, [sp, #-48]
l1949: ldrB R6, [sp, #-16]
l1950: mov R8, #44
l1951: str R1, [sp, -R8]
l1952: mov R2, #30
l1953: ldrEQsb R8, [sp, -R2]
l1954: mov R4, #35
l1955: strB R3, [sp, -R4]
l1956: ldr R2, [sp, #-4]!
l1957: mov R10, #64
l1958: strh R6, [sp, -R10]
l1959: mov R9, #34
l1960: strh R2, [sp, -R9]
l1961: str R4, [sp], #+0
l1962: stmDB R13, {R0, R1, R2, R4, R5, R6, R9, R10, R15}
l1963: stmIA R13!, {R1}
l1964: nop
l1965: stmDB R13!, {R4, R9}
l1966: mov R6, #46
l1967: ldrh R7, [sp, -R6]
l1968: ldmIA R13!, {R3, R8}
l1969: strHIh R2, [sp, #-40]
l1970: mov R4, #58
l1971: strGEh R4, [sp, -R4]
l1972: ldrEQsh R2, [sp, #-62]
l1973: nop
l1974: mov R12, #68
l1975: ldrCSsh R1, [sp, -R12]
l1976: nop
l1977: mov R3, #56
l1978: ldrsh R0, [sp, -R3]
l1979: nop
l1980: mov R11, #12
l1981: strLT R11, [sp, -R11]
l1982: stmDA R13!, {R0, R2, R6, R11, R12, R15}
l1983: stmDB R13!, {R13}
l1984: nop
l1985: ldmDB R13!, {R1, R2, R3, R5, R6, R8, R9, R11}
l1986: strLE R3, [sp, #+16]
l1987: ldmLSDB R13, {R14}
l1988: ldrVSsb R4, [sp, #+16]
l1989: strNEh R2, [sp, #+22]
l1990: mov R4, #48
l1991: ldrMIh R12, [sp, +R4]
l1992: mov R4, #48
l1993: ldrsh R5, [sp, +R4]
l1994: mov R2, #4
l1995: str R2, [sp, +R2]
l1996: ldrNEh R7, [sp, #+16]
l1997: stmIA R13!, {R1, R2, R3, R4, R5, R6, R8, R9, R10, R11, R14, R15}
l1998: nop
l1999: stmDA R13, {R0, R1, R3, R4, R5, R6, R8, R9, R10, R11, R12, R13, R14}
l2000: mov R6, #20
l2001: strh R5, [sp, -R6]
l2002: nop
l2003: ldrh R3, [sp, #+0]
l2004: ldrCCh R12, [sp, #-8]
l2005: ldmIA R13!, {R3, R8}
l2006: ldrCCh R12, [sp, #-60]
l2007: mov R11, #42
l2008: ldrMIh R5, [sp, -R11]
l2009: stmLSIA R13, {R14}
l2010: ldrVC R2, [sp, #-44]
l2011: ldrHIh R6, [sp, #-2]
l2012: mov R9, #9
l2013: ldrGEB R1, [sp, -R9]
l2014: ldrsb R3, [sp, #-27]
l2015: mov R14, #4
l2016: ldrVCB R7, [sp, +R14]
l2017: ldrGE R9, [sp, #-56]
l2018: mov R3, #8
l2019: ldrNEh R4, [sp, -R3]
l2020: nop
l2021: strHIh R0, [sp, #-40]
l2022: str R9, [sp], #-52
l2023: mov R7, #12
l2024: ldrCCsb R6, [sp, +R7]
l2025: ldmDA R13, {R6, R7}
l2026: mov R2, #37
l2027: strB R6, [sp, +R2]
l2028: ldr R9, [sp, #+0]!
l2029: ldmIB R13!, {R1, R2, R3, R4, R5, R8, R11, R12, R14}
l2030: mov R0, #7
l2031: strB R12, [sp, +R0]
l2032: ldr R11, [sp], #-24
l2033: stmIA R13!, {R3, R4, R8, R10, R12}
l2034: ldmIB R13!, {R0}
l2035: ldmIB R13!, {R0}
l2036: stmIB R13, {R0, R12}
l2037: mov R14, #40
l2038: ldr R3, [sp, -R14]!
l2039: stmIB R13, {R2, R3, R7, R9, R10, R11, R12, R13, R14}
l2040: ldrsh R11, [sp, #+32]
l2041: mov R3, #16
l2042: ldr R2, [sp, +R3]!
l2043: mov R7, #16
l2044: ldrLSsh R1, [sp, +R7]
l2045: str R12, [sp, #-32]!
l2046: mov R14, #54
l2047: ldrPLsb R3, [sp, +R14]
l2048: mov R14, #63
l2049: ldrHIsb R4, [sp, +R14]
l2050: mov R3, #52
l2051: str R5, [sp, +R3]!
l2052: mov R5, #28
l2053: strh R6, [sp, -R5]
l2054: stmDA R13, {R2, R3, R5, R10, R12, R13}
l2055: ldr R9, [sp, #+12]!
l2056: ldmDB R13!, {R0, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l2057: ldmIB R13!, {R0, R3, R6, R8, R11, R14}
l2058: stmIB R13, {R12, R13, R15}
l2059: stmDA R13!, {R13, R14, R15}
l2060: ldrVSsb R0, [sp, #-28]
l2061: stmIB R13, {R0, R1, R5, R6, R8, R9, R12, R13}
l2062: stmDA R13!, {R2, R6, R8, R10, R11, R15}
l2063: mov R7, #30
l2064: ldrEQsb R3, [sp, +R7]
l2065: nop
l2066: nop
l2067: nop
l2068: stmCCIA R13, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R10, R11, R12, R13, R15}
l2069: ldrHIsh R8, [sp, #+28]
l2070: strVC R9, [sp, #+0]
l2071: mov R11, #1
l2072: ldrB R7, [sp, +R11]
l2073: stmIB R13, {R0, R1, R2, R3, R4, R5, R9, R14}
l2074: mov R6, #6
l2075: ldrCSh R12, [sp, +R6]
l2076: ldrB R6, [sp, #+32]
l2077: nop
l2078: ldrh R1, [sp, #+14]
l2079: mov R5, #44
l2080: strh R9, [sp, +R5]
l2081: mov R0, #32
l2082: strB R10, [sp, +R0]
l2083: nop
l2084: ldrEQh R14, [sp, #+54]
l2085: mov R8, #41
l2086: ldrMIsb R1, [sp, +R8]
l2087: str R10, [sp], #+52
l2088: mov R3, #5
l2089: strPLB R14, [sp, +R3]
l2090: stmDA R13, {R0, R1, R2, R3}
l2091: mov R1, #30
l2092: strLTB R6, [sp, -R1]
l2093: mov R4, #52
l2094: ldr R9, [sp, -R4]!
l2095: nop
l2096: strB R2, [sp, #+48]
l2097: ldrsh R9, [sp, #+2]
l2098: nop
l2099: ldrVCh R11, [sp, #+18]
l2100: ldr R4, [sp, #+52]
l2101: ldmIA R13!, {R1, R2, R8, R12}
l2102: ldmDB R13!, {R10}
l2103: ldrPLB R2, [sp, #-6]
l2104: str R10, [sp, #+4]
l2105: mov R2, #44
l2106: str R7, [sp], +R2
l2107: mov R1, #36
l2108: ldr R3, [sp, -R1]!
l2109: mov R9, #6
l2110: strh R12, [sp, -R9]
l2111: ldmIB R13!, {R0, R2, R3, R4, R5, R8, R10, R11, R12}
l2112: stmDA R13!, {R13, R14, R15}
l2113: stmIB R13!, {R13}
l2114: mov R10, #34
l2115: ldrHIsh R8, [sp, -R10]
l2116: mov R4, #4
l2117: ldr R10, [sp, +R4]!
l2118: stmDA R13!, {R1, R3, R4, R7, R12, R14}
l2119: mov R6, #11
l2120: ldrsb R9, [sp, +R6]
l2121: mov R10, #16
l2122: ldrsb R9, [sp, -R10]
l2123: mov R12, #8
l2124: strVCB R4, [sp, -R12]
l2125: mov R8, #20
l2126: strVS R6, [sp, +R8]
l2127: mov R2, #2
l2128: ldrLSsb R7, [sp, -R2]
l2129: ldmGTDB R13, {R0, R11}
l2130: mov R9, #34
l2131: strLEh R6, [sp, -R9]
l2132: mov R1, #12
l2133: str R8, [sp], -R1
l2134: mov R4, #18
l2135: strh R3, [sp, +R4]
l2136: ldrsh R1, [sp, #+6]
l2137: mov R6, #16
l2138: strVSB R2, [sp, -R6]
l2139: ldrsh R1, [sp, #-12]
l2140: mov R1, #18
l2141: ldrsh R8, [sp, -R1]
l2142: ldrCSB R4, [sp, #-7]
l2143: ldrGE R4, [sp, #+40]
l2144: ldrLT R6, [sp, #-20]
l2145: ldrHIh R8, [sp, #+10]
l2146: mov R11, #50
l2147: strB R12, [sp, +R11]
l2148: ldrCCsh R1, [sp, #+6]
l2149: ldrLEsh R8, [sp, #+20]
l2150: mov R11, #8
l2151: ldr R5, [sp, +R11]!
l2152: strB R12, [sp, #-17]
l2153: strMIB R3, [sp, #-32]
l2154: mov R10, #14
l2155: ldrh R6, [sp, -R10]
l2156: ldmIB R13!, {R0, R2, R3, R4, R8, R10}
l2157: mov R3, #56
l2158: ldrh R2, [sp, -R3]
l2159: ldmDB R13!, {R0, R1, R3, R4, R5, R6, R7, R9, R10, R12}
l2160: ldrVSsh R2, [sp, #+36]
l2161: nop
l2162: strGE R14, [sp, #+36]
l2163: mov R12, #14
l2164: ldrHIB R1, [sp, +R12]
l2165: mov R6, #32
l2166: str R4, [sp], +R6
l2167: strB R0, [sp, #-33]
l2168: ldmDA R13!, {R0, R1, R3, R5, R7, R8, R9, R12}
l2169: stmIA R13!, {R7}
l2170: nop
l2171: mov R2, #55
l2172: ldrB R8, [sp, +R2]
l2173: ldmDA R13!, {R0, R2, R14}
l2174: ldrPL R9, [sp, #+56]
l2175: mov R10, #16
l2176: str R4, [sp, +R10]!
l2177: mov R8, #4
l2178: strEQh R2, [sp, +R8]
l2179: stmMIIA R13, {R4, R5, R7, R8, R9, R11, R15}
l2180: mov R2, #34
l2181: ldrsb R3, [sp, +R2]
l2182: ldmIA R13!, {R0, R1, R3, R4, R5, R6, R7, R9, R10, R11, R14}
l2183: mov R6, #23
l2184: strB R5, [sp, -R6]
l2185: mov R9, #1
l2186: ldrsb R2, [sp, -R9]
l2187: stmDA R13!, {R1, R3, R4, R6, R8, R10}
l2188: stmDB R13!, {R1, R3, R4, R6, R11}
l2189: ldr R2, [sp], #-4
l2190: nop
l2191: strh R6, [sp, #-8]
l2192: ldmMIIB R13, {R2, R3, R4, R6, R8, R14}
l2193: stmDB R13, {R8}
l2194: stmDB R13!, {R14}
l2195: mov R6, #40
l2196: ldrh R3, [sp, +R6]
l2197: mov R9, #6
l2198: ldrCCsh R2, [sp, -R9]
l2199: mov R3, #24
l2200: ldrsh R3, [sp, +R3]
l2201: ldrB R6, [sp, #+33]
l2202: ldrVSsb R6, [sp, #+39]
l2203: stmIB R13!, {R13}
l2204: mov R7, #16
l2205: ldrHIh R4, [sp, -R7]
l2206: ldrHIB R11, [sp, #-15]
l2207: ldrCSsb R7, [sp, #+28]
l2208: str R15, [sp, #+44]!
l2209: ldmIA R13!, {R5, R6}
l2210: mov R11, #8
l2211: str R7, [sp, -R11]!
l2212: mov R2, #20
l2213: ldr R3, [sp, -R2]!
l2214: ldrVSsh R11, [sp, #+24]
l2215: mov R4, #42
l2216: ldrEQsh R4, [sp, -R4]
l2217: ldrCSh R14, [sp, #-16]
l2218: mov R9, #8
l2219: str R9, [sp], +R9
l2220: ldrVCsh R0, [sp, #-30]
l2221: strEQ R2, [sp, #-16]
l2222: mov R5, #15
l2223: ldrCCsb R14, [sp, +R5]
l2224: nop
l2225: mov R12, #30
l2226: strh R6, [sp, -R12]
l2227: str R11, [sp], #+0
l2228: strNEB R11, [sp, #-43]
l2229: mov R12, #16
l2230: ldrLSsh R11, [sp, +R12]
l2231: mov R7, #18
l2232: ldrLTsb R9, [sp, -R7]
l2233: mov R11, #8
l2234: strh R1, [sp, -R11]
l2235: mov R6, #27
l2236: ldrLTB R6, [sp, -R6]
l2237: stmCCDA R13, {R3, R6, R7, R15}
l2238: ldrh R2, [sp, #-26]
l2239: str R7, [sp, #+12]!
l2240: mov R11, #4
l2241: ldr R7, [sp], -R11
l2242: ldrsh R3, [sp, #+8]
l2243: nop
l2244: stmCSDA R13, {R2, R8, R9, R10}
l2245: ldr R5, [sp, #-16]!
l2246: ldrB R1, [sp, #+22]
l2247: ldmIB R13!, {R4, R5, R9, R10, R14}
l2248: strh R11, [sp, #-42]
l2249: mov R8, #16
l2250: ldrNE R11, [sp, -R8]
l2251: nop
l2252: str R2, [sp, #-28]!
l2253: str R1, [sp, #-24]!
l2254: stmIA R13, {R0, R1, R3, R5, R7, R8, R11, R12, R14}
l2255: mov R2, #0
l2256: strMIh R9, [sp, +R2]
l2257: strh R10, [sp, #+48]
l2258: nop
l2259: mov R9, #16
l2260: ldrLT R6, [sp, +R9]
l2261: ldrCCB R5, [sp, #+60]
l2262: ldrB R7, [sp, #-7]
l2263: stmIA R13!, {R13, R15}
l2264: ldrB R14, [sp, #+34]
l2265: stmDB R13!, {R3, R5, R15}
l2266: nop
l2267: mov R0, #40
l2268: ldrh R8, [sp, +R0]
l2269: ldrGTh R11, [sp, #+26]
l2270: strCSh R0, [sp, #+52]
l2271: str R6, [sp], #-4
l2272: ldr R2, [sp, #+8]!
l2273: ldr R5, [sp], #+60
l2274: mov R6, #68
l2275: ldrVS R10, [sp, -R6]
l2276: ldrsb R7, [sp, #-60]
l2277: nop
l2278: mov R8, #50
l2279: ldrGTsb R11, [sp, -R8]
l2280: stmDA R13!, {R13, R14, R15}
l2281: stmDB R13, {R0, R3, R5, R6, R7, R10, R11, R13}
l2282: mov R9, #38
l2283: ldrMIh R12, [sp, -R9]
l2284: ldrsb R1, [sp, #+4]
l2285: ldrGEsb R8, [sp, #-56]
l2286: ldrh R9, [sp, #-54]
l2287: ldmDB R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12}
l2288: ldmIB R13!, {R1, R4, R8, R9}
l2289: stmGTIA R13, {R3, R7, R13, R15}
l2290: ldrLSsh R6, [sp, #-6]
l2291: stmLSDB R13, {R1, R3, R9, R12}
l2292: strVC R10, [sp, #+24]
l2293: ldmPLIA R13, {R8, R9, R10, R14}
l2294: ldmPLDB R13, {R6, R7, R10}
l2295: ldmIA R13!, {R4, R9}
l2296: stmDA R13!, {R3, R4, R5, R6, R7, R8}
l2297: ldmVSIA R13, {R0, R2, R6, R7, R8, R9, R10, R11, R14}
l2298: mov R4, #20
l2299: ldrh R7, [sp, +R4]
l2300: ldr R11, [sp, #-8]
l2301: mov R3, #28
l2302: strCS R6, [sp, +R3]
l2303: stmIB R13!, {R0, R1, R3, R4, R5, R6, R7, R10, R12, R14, R15}
l2304: ldrGTB R4, [sp, #+15]
l2305: ldrsh R9, [sp, #-40]
l2306: str R2, [sp, #-8]
l2307: ldrh R4, [sp, #-36]
l2308: stmDB R13!, {R0, R1, R2, R3, R5, R6, R7, R8, R10, R11}
l2309: str R9, [sp, #-16]
l2310: stmIB R13!, {R13, R15}
l2311: ldmIA R13, {R0, R1, R3, R4, R6, R7, R8, R12}
l2312: mov R14, #28
l2313: strh R4, [sp, +R14]
l2314: stmNEDB R13, {R6, R15}
l2315: stmDA R13!, {R7}
l2316: nop
l2317: mov R10, #0
l2318: strPLh R3, [sp, +R10]
l2319: ldmDB R13!, {R1, R8, R12}
l2320: mov R2, #4
l2321: ldrGEsh R1, [sp, -R2]
l2322: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R10, R11, R12, R14}
l2323: strh R11, [sp, #+8]
l2324: ldmDA R13!, {R0, R3}
l2325: mov R9, #36
l2326: str R7, [sp, -R9]!
l2327: stmDA R13!, {R3, R5}
l2328: nop
l2329: ldrGTsb R14, [sp, #+2]
l2330: nop
l2331: mov R1, #38
l2332: ldrsb R12, [sp, +R1]
l2333: mov R7, #14
l2334: strh R0, [sp, +R7]
l2335: mov R5, #58
l2336: strh R11, [sp, +R5]
l2337: ldrsh R4, [sp, #+20]
l2338: ldrLEh R1, [sp, #+52]
l2339: ldrHIh R2, [sp, #+38]
l2340: ldrPLsb R11, [sp, #+15]
l2341: ldmIA R13!, {R4, R5, R6, R9, R12}
l2342: strB R9, [sp, #+33]
l2343: ldrsb R11, [sp, #+41]
l2344: ldmIB R13!, {R3, R7, R9}
l2345: stmLSDB R13, {R0, R8}
l2346: mov R6, #4
l2347: ldrLEsb R12, [sp, +R6]
l2348: stmIB R13!, {R8, R9, R15}
l2349: strEQh R11, [sp, #+22]
l2350: stmDA R13!, {R13, R14}
l2351: mov R9, #40
l2352: ldr R12, [sp, -R9]!
l2353: mov R14, #48
l2354: str R3, [sp, +R14]
l2355: mov R12, #16
l2356: ldrsh R2, [sp, +R12]
l2357: stmIA R13!, {R13, R14, R15}
l2358: stmIB R13!, {R13, R14, R15}
l2359: stmLEDA R13, {R6, R9, R10, R13}
l2360: ldr R10, [sp, #-24]!
l2361: mov R7, #12
l2362: ldrVCsh R1, [sp, +R7]
l2363: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R7, R8, R10, R11, R12, R14}
l2364: ldrsb R7, [sp, #-21]
l2365: mov R1, #22
l2366: strh R14, [sp, +R1]
l2367: stmDB R13, {R1, R5, R6, R12}
l2368: ldrCSsb R11, [sp, #-20]
l2369: strHIB R3, [sp, #+3]
l2370: strB R0, [sp, #-28]
l2371: stmDB R13!, {R4}
l2372: mov R10, #20
l2373: ldr R11, [sp], +R10
l2374: ldmIA R13!, {R0}
l2375: mov R11, #13
l2376: ldrEQB R11, [sp, -R11]
l2377: nop
l2378: ldr R1, [sp], #-4
l2379: nop
l2380: nop
l2381: mov R10, #60
l2382: strh R8, [sp, -R10]
l2383: ldr R12, [sp, #-20]!
l2384: mov R4, #26
l2385: strCSB R14, [sp, +R4]
l2386: ldrsb R11, [sp, #+12]
l2387: mov R14, #8
l2388: ldr R5, [sp, +R14]!
l2389: mov R11, #9
l2390: ldrGEB R1, [sp, +R11]
l2391: ldmIA R13!, {R5, R8}
l2392: ldrLEsh R8, [sp, #-16]
l2393: strh R0, [sp, #+10]
l2394: str R8, [sp], #-4
l2395: strh R2, [sp, #-2]
l2396: ldr R8, [sp, #+12]
l2397: ldrNEsh R9, [sp, #-52]
l2398: mov R9, #28
l2399: ldrPLsb R4, [sp, -R9]
l2400: mov R0, #26
l2401: ldrsb R1, [sp, -R0]
l2402: stmDA R13!, {R13}
l2403: ldrCSsh R14, [sp, #-6]
l2404: strB R7, [sp, #+5]
l2405: ldmDB R13!, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12}
l2406: strh R5, [sp, #+66]
l2407: mov R10, #58
l2408: ldrh R3, [sp, +R10]
l2409: ldrsb R6, [sp, #+42]
l2410: mov R6, #8
l2411: strh R8, [sp, -R6]
l2412: nop
l2413: ldrCSsh R4, [sp, #+0]
l2414: nop
l2415: mov R8, #8
l2416: ldrHIB R5, [sp, -R8]
l2417: str R14, [sp], #+24
l2418: mov R9, #12
l2419: str R1, [sp, +R9]!
l2420: strh R3, [sp, #+18]
l2421: ldrh R14, [sp, #-44]
l2422: mov R6, #8
l2423: ldr R0, [sp, -R6]
l2424: mov R9, #8
l2425: ldrCS R7, [sp, +R9]
l2426: strh R1, [sp, #-8]
l2427: ldmDB R13!, {R1, R2, R5, R6, R11, R12}
l2428: strVCh R11, [sp, #+54]
l2429: strCCh R6, [sp, #+40]
l2430: ldrsh R11, [sp, #+44]
l2431: mov R14, #40
l2432: ldrCCsh R2, [sp, +R14]
l2433: ldrsh R6, [sp, #+50]
l2434: stmDB R13, {R12, R15}
l2435: ldrNEh R11, [sp, #+0]
l2436: mov R10, #16
l2437: ldrsh R0, [sp, +R10]
l2438: ldrMIB R0, [sp, #-15]
l2439: strh R7, [sp, #+24]
l2440: mov R4, #24
l2441: ldr R7, [sp, +R4]
l2442: strh R2, [sp, #+24]
l2443: str R2, [sp, #+4]
l2444: mov R10, #33
l2445: ldrB R7, [sp, +R10]
l2446: ldmDA R13!, {R1, R8}
l2447: mov R9, #56
l2448: ldrLSh R10, [sp, +R9]
l2449: stmCCDA R13, {R0}
l2450: ldrMIsb R2, [sp, #-7]
l2451: stmIA R13!, {R7, R10, R12, R15}
l2452: ldmIA R13, {R7, R14}
l2453: mov R14, #44
l2454: strCSh R6, [sp, +R14]
l2455: ldrB R6, [sp, #-21]
l2456: ldrVSB R12, [sp, #+41]
l2457: ldmIB R13, {R3, R4}
l2458: mov R12, #16
l2459: ldrVSsh R2, [sp, -R12]
l2460: ldrMIB R8, [sp, #+22]
l2461: ldr R10, [sp, #+36]
l2462: mov R14, #6
l2463: ldrLSh R5, [sp, -R14]
l2464: ldrsh R2, [sp, #+18]
l2465: mov R10, #23
l2466: strB R12, [sp, +R10]
l2467: mov R8, #20
l2468: ldr R9, [sp], -R8
l2469: nop
l2470: mov R10, #8
l2471: ldr R7, [sp, -R10]
l2472: mov R14, #41
l2473: strB R4, [sp, +R14]
l2474: ldmIB R13!, {R2, R4, R8, R9, R10, R12}
l2475: ldrh R1, [sp, #-24]
l2476: mov R10, #43
l2477: ldrVSB R11, [sp, +R10]
l2478: ldrh R7, [sp, #-4]
l2479: nop
l2480: mov R12, #40
l2481: ldr R2, [sp], +R12
l2482: stmDA R13, {R12}
l2483: mov R0, #42
l2484: ldrCCB R10, [sp, -R0]
l2485: ldr R11, [sp], #-64
l2486: ldmVSIA R13, {R0, R1, R6, R8, R10, R11, R14}
l2487: ldrsb R6, [sp, #+65]
l2488: mov R9, #0
l2489: ldrLTsh R10, [sp, +R9]
l2490: ldrLSsb R12, [sp, #+45]
l2491: nop
l2492: strCSh R2, [sp, #+2]
l2493: mov R5, #44
l2494: strh R10, [sp, +R5]
l2495: mov R5, #22
l2496: strNEh R8, [sp, +R5]
l2497: mov R5, #3
l2498: ldrsb R10, [sp, -R5]
l2499: nop
l2500: mov R1, #34
l2501: ldrLSh R4, [sp, +R1]
l2502: mov R14, #4
l2503: str R2, [sp], -R14
l2504: ldmIB R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l2505: ldrCSsh R0, [sp, #-44]
l2506: strLSh R8, [sp, #+0]
l2507: str R11, [sp], #-8
l2508: ldmDA R13!, {R0, R3, R5, R9, R10, R12}
l2509: mov R2, #16
l2510: str R12, [sp], +R2
l2511: ldrPLsb R2, [sp, #+11]
l2512: ldrh R3, [sp, #+24]
l2513: strGEB R14, [sp, #-18]
l2514: mov R4, #20
l2515: strLE R0, [sp, -R4]
l2516: mov R5, #12
l2517: ldrMIsh R1, [sp, +R5]
l2518: ldrMIh R6, [sp, #+26]
l2519: mov R3, #0
l2520: ldrCCsb R10, [sp, +R3]
l2521: ldrNEsb R8, [sp, #-36]
l2522: ldr R12, [sp, #+4]!
l2523: ldrsh R1, [sp, #+8]
l2524: ldmIA R13!, {R6, R7, R12}
l2525: mov R5, #50
l2526: ldrsh R8, [sp, -R5]
l2527: nop
l2528: nop
l2529: mov R10, #45
l2530: strB R4, [sp, -R10]
l2531: ldrEQh R5, [sp, #-34]
l2532: stmIB R13!, {R4, R6, R11, R12, R15}
l2533: strHIh R8, [sp, #-26]
l2534: mov R4, #10
l2535: ldrNEsh R0, [sp, -R4]
l2536: ldr R1, [sp, #-48]!
l2537: stmDA R13, {R10, R12}
l2538: ldrsh R4, [sp, #+10]
l2539: mov R5, #9
l2540: strB R10, [sp, -R5]
l2541: stmIB R13!, {R4, R9, R10, R11}
l2542: mov R8, #30
l2543: strh R3, [sp, -R8]
l2544: strB R10, [sp, #-32]
l2545: ldmDB R13!, {R2, R7, R8, R10}
l2546: ldrVCh R14, [sp, #+2]
l2547: mov R1, #8
l2548: ldr R8, [sp, +R1]!
l2549: mov R9, #29
l2550: ldrB R12, [sp, +R9]
l2551: mov R12, #35
l2552: ldrLEsb R3, [sp, +R12]
l2553: mov R12, #16
l2554: str R11, [sp, +R12]!
l2555: mov R6, #30
l2556: strVSh R4, [sp, -R6]
l2557: ldmGEIA R13, {R11}
l2558: str R5, [sp, #-8]!
l2559: stmDA R13!, {R0, R10, R14}
l2560: stmDB R13!, {R5, R8, R11, R14}
l2561: mov R10, #44
l2562: str R14, [sp, +R10]!
l2563: strh R7, [sp, #-6]
l2564: ldrGE R5, [sp, #-52]
l2565: mov R5, #38
l2566: strEQh R9, [sp, -R5]
l2567: mov R5, #18
l2568: ldrsb R0, [sp, +R5]
l2569: mov R6, #25
l2570: strB R7, [sp, -R6]
l2571: mov R12, #0
l2572: ldrPL R10, [sp, +R12]
l2573: ldrHIsh R7, [sp, #-22]
l2574: ldrPLB R10, [sp, #-41]
l2575: ldrsh R1, [sp, #-28]
l2576: mov R12, #9
l2577: ldrLTsb R5, [sp, +R12]
l2578: strLSh R3, [sp, #-38]
l2579: ldrGTh R7, [sp, #-4]
l2580: ldmEQDA R13, {R2, R3, R6, R11, R12}
l2581: ldrLSh R8, [sp, #+12]
l2582: mov R10, #34
l2583: ldrCCh R8, [sp, -R10]
l2584: ldmDA R13!, {R0, R1, R4, R5, R6, R7, R8, R14}
l2585: mov R9, #8
l2586: strLSh R6, [sp, +R9]
l2587: str R10, [sp], #+24
l2588: mov R9, #16
l2589: ldr R1, [sp], -R9
l2590: ldr R2, [sp, #+36]!
l2591: ldrGTh R12, [sp, #-20]
l2592: ldrEQ R12, [sp, #-28]
l2593: mov R12, #56
l2594: ldrGTsh R8, [sp, -R12]
l2595: ldrVCsb R6, [sp, #-34]
l2596: nop
l2597: strPLB R11, [sp, #-39]
l2598: mov R0, #28
l2599: ldr R4, [sp], -R0
l2600: ldrh R10, [sp, #+2]
l2601: mov R6, #14
l2602: ldrVSsh R0, [sp, +R6]
l2603: strNE R2, [sp, #-32]
l2604: mov R10, #12
l2605: ldrMIh R11, [sp, -R10]
l2606: ldmIB R13, {R2, R3, R5, R7, R8, R11, R12, R14}
l2607: str R1, [sp, #+24]
l2608: ldrMIB R1, [sp, #-25]
l2609: ldmIA R13!, {R0, R1, R3, R5, R7, R9, R11, R12}
l2610: ldmDB R13!, {R0, R8, R9}
l2611: mov R1, #44
l2612: ldrCSB R14, [sp, -R1]
l2613: strB R11, [sp, #-8]
l2614: ldrsb R1, [sp, #-34]
l2615: strh R5, [sp, #-42]
l2616: stmDB R13!, {R2, R3}
l2617: ldmDB R13!, {R1, R2, R4, R11}
l2618: ldmVCDB R13, {R3, R5, R10}
l2619: mov R7, #12
l2620: ldrEQsh R11, [sp, +R7]
l2621: mov R1, #16
l2622: ldr R5, [sp], +R1
l2623: mov R11, #12
l2624: str R14, [sp, -R11]
l2625: ldrPLB R10, [sp, #-47]
l2626: strh R10, [sp, #-24]
l2627: ldmDA R13!, {R0, R1, R2, R6, R7, R8, R9, R10, R11, R14}
l2628: ldrGEsb R4, [sp, #+24]
l2629: mov R10, #41
l2630: ldrLSB R10, [sp, +R10]
l2631: mov R4, #26
l2632: ldrLTh R1, [sp, +R4]
l2633: mov R7, #6
l2634: strNEh R4, [sp, +R7]
l2635: ldmIA R13!, {R1, R4, R5, R6, R7, R8, R10, R11, R14}
l2636: stmPLIB R13, {R8, R10}
l2637: ldmPLDA R13, {R1, R3, R4, R8, R10, R11, R12}
l2638: stmIA R13!, {R13}
l2639: mov R9, #52
l2640: str R14, [sp, -R9]
l2641: strVS R3, [sp, #-48]
l2642: stmIB R13!, {R1, R9, R15}
l2643: ldmEQIB R13, {R1}
l2644: mov R1, #16
l2645: str R14, [sp], -R1
l2646: mov R9, #47
l2647: ldrHIB R2, [sp, -R9]
l2648: ldr R14, [sp, #+12]!
l2649: mov R2, #8
l2650: ldr R7, [sp], +R2
l2651: stmDB R13!, {R13, R14, R15}
l2652: mov R5, #48
l2653: ldr R3, [sp, -R5]
l2654: ldmIA R13!, {R9, R14}
l2655: ldmVSIB R13, {R2, R14}
l2656: mov R10, #8
l2657: ldrMI R9, [sp, +R10]
l2658: ldmIB R13!, {R7}
l2659: nop
l2660: stmDB R13, {R7, R13}
l2661: str R12, [sp, #-20]
l2662: mov R0, #32
l2663: str R3, [sp, -R0]!
l2664: stmDA R13!, {R3, R4, R5, R14}
l2665: ldmHIDB R13, {R9, R10, R14}
l2666: stmIA R13!, {R13}
l2667: stmDB R13!, {R7, R10, R15}
l2668: mov R3, #8
l2669: ldrLTh R8, [sp, -R3]
l2670: mov R11, #52
l2671: ldr R14, [sp, +R11]!
l2672: ldrVSsh R8, [sp, #-54]
l2673: ldrCSh R0, [sp, #+0]
l2674: nop
l2675: mov R11, #20
l2676: str R5, [sp, -R11]!
l2677: stmDA R13!, {R13, R14}
l2678: ldrB R8, [sp, #-33]
l2679: ldrEQB R11, [sp, #+1]
l2680: strGTh R11, [sp, #+38]
l2681: nop
l2682: str R3, [sp], #+28
l2683: mov R9, #5
l2684: ldrEQsb R14, [sp, -R9]
l2685: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R14}
l2686: ldrh R1, [sp, #+40]
l2687: mov R2, #38
l2688: strh R7, [sp, +R2]
l2689: ldrsh R14, [sp, #+8]
l2690: mov R10, #0
l2691: str R3, [sp], +R10
l2692: strh R2, [sp, #+44]
l2693: ldmDB R13!, {R3, R8}
l2694: nop
l2695: nop
l2696: nop
l2697: mov R2, #31
l2698: ldrGTB R9, [sp, +R2]
l2699: mov R7, #2
l2700: ldrNEsh R8, [sp, -R7]
l2701: ldr R3, [sp, #+28]
l2702: mov R0, #4
l2703: ldrsh R5, [sp, -R0]
l2704: ldmIA R13!, {R1, R5, R12}
l2705: mov R4, #12
l2706: ldrGTsh R0, [sp, -R4]
l2707: stmIA R13, {R0, R1, R3, R4, R5, R6, R7, R9, R10, R14}
l2708: mov R6, #48
l2709: ldr R9, [sp], +R6
l2710: stmDA R13, {R3, R6, R9, R12, R13}
l2711: ldmIA R13!, {R2}
l2712: ldrPLsh R2, [sp, #-52]
l2713: mov R6, #0
l2714: ldrB R7, [sp, +R6]
l2715: mov R4, #56
l2716: ldr R0, [sp], -R4
l2717: stmIB R13!, {R13, R14, R15}
l2718: mov R9, #4
l2719: strLT R10, [sp, -R9]
l2720: stmIB R13, {R2, R5, R7, R11, R13}
l2721: ldmDA R13!, {R1, R4, R5, R10, R14}
l2722: strB R2, [sp, #+62]
l2723: mov R14, #36
l2724: ldr R7, [sp, +R14]
l2725: ldmNEIB R13, {R0, R3, R4, R5, R7, R8, R9, R10, R11, R12, R14}
l2726: stmIA R13!, {R1, R2, R3, R6, R7, R10, R14}
l2727: ldrVCh R9, [sp, #-26]
l2728: nop
l2729: mov R3, #34
l2730: ldrh R14, [sp, -R3]
l2731: ldrHI R3, [sp, #+32]
l2732: ldmIA R13!, {R0, R1, R5, R8, R9, R10, R11, R12, R14}
l2733: str R8, [sp, #-44]!
l2734: mov R4, #8
l2735: ldr R7, [sp, +R4]
l2736: ldrVSsh R5, [sp, #+32]
l2737: ldmIB R13!, {R2, R3, R4, R9, R11, R14}
l2738: stmDA R13!, {R13, R14, R15}
l2739: stmIA R13!, {R0, R1, R2, R4, R6, R8, R10}
l2740: mov R1, #11
l2741: strVCB R8, [sp, -R1]
l2742: strVC R14, [sp, #-48]
l2743: stmIB R13!, {R13}
l2744: stmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l2745: nop
l2746: stmIB R13!, {R13}
l2747: nop
l2748: ldrVSsh R14, [sp, #+20]
l2749: mov R10, #48
l2750: str R9, [sp], +R10
l2751: ldmIB R13!, {R3}
l2752: nop
l2753: mov R8, #46
l2754: ldrh R1, [sp, -R8]
l2755: str R9, [sp, #-64]!
l2756: ldrsh R0, [sp, #+20]
l2757: nop
l2758: mov R10, #4
l2759: str R2, [sp], -R10
l2760: ldmPLIA R13, {R6, R8, R12}
l2761: ldmIA R13!, {R0, R4, R9, R10, R11, R12, R14}
l2762: ldmDB R13, {R1, R3, R8, R10, R14}
l2763: mov R14, #12
l2764: ldr R11, [sp, +R14]
l2765: stmDA R13!, {R15}
l2766: str R0, [sp, #-4]!
l2767: ldrsb R7, [sp, #+39]
l2768: mov R10, #8
l2769: ldr R8, [sp, +R10]!
l2770: ldr R12, [sp, #-12]
l2771: ldmDB R13, {R2, R3, R7, R8, R11, R12}
l2772: stmDB R13!, {R3, R4, R7, R8, R11, R14}
l2773: mov R10, #30
l2774: ldrB R6, [sp, +R10]
l2775: ldmIA R13, {R6, R11}
l2776: nop
l2777: ldr R6, [sp], #+4
l2778: mov R5, #8
l2779: ldrMIB R12, [sp, +R5]
l2780: ldmPLIB R13, {R1, R4, R7, R9, R11}
l2781: mov R2, #52
l2782: ldrMIh R11, [sp, +R2]
l2783: ldmIB R13!, {R9}
l2784: strh R6, [sp, #+30]
l2785: mov R7, #9
l2786: ldrLSB R8, [sp, -R7]
l2787: mov R8, #16
l2788: ldrHIh R3, [sp, +R8]
l2789: mov R8, #36
l2790: ldrsh R5, [sp, +R8]
l2791: mov R7, #2
l2792: ldrCCh R14, [sp, -R7]
l2793: ldmDB R13!, {R4, R7}
l2794: ldrsh R0, [sp, #+46]
l2795: mov R14, #60
l2796: str R4, [sp], +R14
l2797: strLTB R8, [sp, #-44]
l2798: stmGEIA R13, {R2}
l2799: mov R6, #56
l2800: ldrGT R3, [sp, -R6]
l2801: ldmDB R13!, {R5}
l2802: stmDB R13!, {R13, R14, R15}
l2803: ldrsh R14, [sp, #-32]
l2804: str R6, [sp], #-52
l2805: stmIB R13, {R3, R10}
l2806: ldr R12, [sp, #+16]!
l2807: nop
l2808: stmDA R13!, {R13}
l2809: stmDB R13!, {R15}
l2810: mov R5, #50
l2811: ldrGEB R8, [sp, +R5]
l2812: mov R11, #6
l2813: ldrCSB R10, [sp, -R11]
l2814: ldrNEB R12, [sp, #+9]
l2815: ldrGTsb R5, [sp, #+54]
l2816: strB R8, [sp, #+65]
l2817: nop
l2818: ldr R0, [sp, #-8]!
l2819: strh R7, [sp, #+54]
l2820: ldrGTsb R12, [sp, #+42]
l2821: ldrMIsb R8, [sp, #+41]
l2822: mov R12, #24
l2823: str R3, [sp], +R12
l2824: ldrLEsh R4, [sp, #+40]
l2825: stmDA R13!, {R8, R14, R15}
l2826: strB R5, [sp, #+57]
l2827: ldmDA R13!, {R7}
l2828: mov R3, #51
l2829: ldrGTsb R9, [sp, +R3]
l2830: ldrsb R2, [sp, #+65]
l2831: ldmIB R13!, {R0, R1, R5, R7, R8, R9, R11, R12}
l2832: ldrh R8, [sp, #-4]
l2833: ldr R6, [sp, #-4]!
l2834: mov R5, #14
l2835: ldrNEh R11, [sp, +R5]
l2836: ldmDB R13!, {R12}
l2837: stmDA R13!, {R13, R14}
l2838: mov R0, #50
l2839: ldrGEB R3, [sp, +R0]
l2840: ldmNEDB R13, {R2}
l2841: stmDA R13!, {R0, R7}
l2842: stmDA R13, {R4}
l2843: mov R1, #44
l2844: ldrVSh R6, [sp, +R1]
l2845: ldr R1, [sp, #+56]!
l2846: nop
l2847: mov R0, #56
l2848: strLSB R8, [sp, -R0]
l2849: mov R12, #72
l2850: ldr R9, [sp, -R12]!
l2851: ldrCC R14, [sp, #+68]
l2852: mov R7, #20
l2853: ldrh R5, [sp, +R7]
l2854: mov R2, #70
l2855: ldrCSB R2, [sp, +R2]
l2856: str R0, [sp], #+0
l2857: mov R7, #55
l2858: ldrGTsb R8, [sp, +R7]
l2859: mov R11, #20
l2860: ldr R0, [sp], +R11
l2861: strCSB R9, [sp, #-3]
l2862: nop
l2863: strGTh R0, [sp, #+44]
l2864: mov R14, #53
l2865: ldrsb R12, [sp, +R14]
l2866: strB R2, [sp, #+12]
l2867: mov R3, #4
l2868: ldrHIsh R14, [sp, -R3]
l2869: stmDA R13!, {R1}
l2870: stmMIDB R13, {R8, R11}
l2871: ldr R12, [sp], #+48
l2872: mov R14, #4
l2873: ldrHIsh R7, [sp, -R14]
l2874: mov R5, #61
l2875: ldrGTB R11, [sp, -R5]
l2876: mov R1, #39
l2877: ldrGTB R4, [sp, -R1]
l2878: nop
l2879: ldrNEsb R1, [sp, #-42]
l2880: ldrB R8, [sp, #-54]
l2881: ldrB R5, [sp, #-63]
l2882: mov R0, #9
l2883: ldrVSsb R10, [sp, +R0]
l2884: mov R0, #4
l2885: strNEB R11, [sp, +R0]
l2886: strB R11, [sp, #-27]
l2887: stmIA R13, {R2, R12}
l2888: mov R14, #36
l2889: ldr R5, [sp, -R14]!
l2890: mov R2, #1
l2891: ldrB R1, [sp, +R2]
l2892: strB R12, [sp, #+29]
l2893: mov R4, #28
l2894: strHIh R4, [sp, -R4]
l2895: mov R10, #8
l2896: strh R1, [sp, -R10]
l2897: ldmIB R13, {R2}
l2898: ldmGTDB R13, {R1, R7, R10, R11}
l2899: stmDA R13!, {R13}
l2900: stmDB R13!, {R7, R8, R14}
l2901: mov R0, #8
l2902: ldrsh R0, [sp, -R0]
l2903: nop
l2904: mov R10, #32
l2905: strGTh R3, [sp, +R10]
l2906: ldr R4, [sp], #+16
l2907: ldrLE R4, [sp, #-4]
l2908: ldr R1, [sp, #-16]
l2909: mov R10, #24
l2910: ldrCC R11, [sp, +R10]
l2911: mov R4, #8
l2912: strEQh R9, [sp, +R4]
l2913: ldmCCIB R13, {R8, R12}
l2914: mov R1, #14
l2915: strB R6, [sp, -R1]
l2916: ldrCCB R11, [sp, #-11]
l2917: ldrB R14, [sp, #+35]
l2918: ldmDA R13!, {R1, R8}
l2919: strPLh R9, [sp, #+26]
l2920: strB R8, [sp, #-9]
l2921: ldrh R2, [sp, #-10]
l2922: ldrsh R5, [sp, #-20]
l2923: stmIA R13!, {R0, R4, R5, R8, R14}
l2924: ldmIA R13, {R0, R2, R5, R8, R12}
l2925: mov R14, #14
l2926: ldrVCh R8, [sp, +R14]
l2927: strCCh R2, [sp, #+34]
l2928: nop
l2929: ldmDA R13!, {R5, R8, R9, R10}
l2930: ldmDA R13!, {R9}
l2931: nop
l2932: stmLEDB R13, {R6, R9, R12}
l2933: ldrLEB R4, [sp, #+3]
l2934: ldrsb R9, [sp, #+16]
l2935: nop
l2936: mov R2, #6
l2937: ldrB R11, [sp, -R2]
l2938: stmDB R13!, {R11}
l2939: ldrNEB R7, [sp, #-11]
l2940: mov R12, #12
l2941: ldr R6, [sp], +R12
l2942: ldrHIsh R2, [sp, #+6]
l2943: mov R3, #18
l2944: ldrsh R8, [sp, +R3]
l2945: mov R4, #12
l2946: str R6, [sp], +R4
l2947: mov R9, #34
l2948: strGTB R1, [sp, +R9]
l2949: mov R9, #32
l2950: ldrsb R8, [sp, -R9]
l2951: stmIB R13, {R1}
l2952: ldrCCB R14, [sp, #-2]
l2953: ldmIA R13!, {R2, R6, R8, R9, R10}
l2954: ldmDA R13!, {R0, R3, R6, R7, R8, R9, R10, R12}
l2955: ldmDA R13!, {R1, R6}
l2956: ldrCSsb R1, [sp, #+21]
l2957: ldmIA R13!, {R11, R12, R14}
l2958: mov R8, #15
l2959: strB R14, [sp, +R8]
l2960: nop
l2961: mov R2, #10
l2962: strh R6, [sp, -R2]
l2963: mov R0, #20
l2964: ldr R12, [sp, +R0]
l2965: stmDA R13!, {R4, R12}
l2966: mov R6, #4
l2967: ldr R3, [sp], +R6
l2968: strVCB R10, [sp, #-1]
l2969: stmIA R13!, {R13, R14}
l2970: ldmIA R13!, {R4, R6, R7, R8, R9, R10, R11}
l2971: stmDB R13!, {R10, R12}
l2972: ldrHI R9, [sp, #-24]
l2973: mov R14, #44
l2974: strPL R4, [sp, -R14]
l2975: ldmMIDB R13, {R0, R1, R3, R4, R5, R6, R10, R11, R12}
l2976: ldrGTB R1, [sp, #+12]
l2977: mov R6, #4
l2978: ldrB R11, [sp, +R6]
l2979: str R3, [sp], #-52
l2980: strh R10, [sp, #+68]
l2981: ldrsb R8, [sp, #+44]
l2982: mov R1, #42
l2983: ldrLSB R12, [sp, +R1]
l2984: ldmIA R13, {R1, R3, R5, R6, R7, R8, R9, R10, R11, R12}
l2985: ldrLSsh R2, [sp, #+8]
l2986: stmIB R13!, {R2, R4, R8, R12, R14}
l2987: stmDB R13!, {R0, R2}
l2988: stmIA R13!, {R5}
l2989: mov R6, #30
l2990: strPLh R0, [sp, +R6]
l2991: mov R8, #24
l2992: strh R3, [sp, +R8]
l2993: mov R1, #4
l2994: ldr R8, [sp], +R1
l2995: ldrMIsh R4, [sp, #+42]
l2996: ldrVSsh R11, [sp, #+26]
l2997: mov R7, #8
l2998: strB R5, [sp, +R7]
l2999: ldr R12, [sp, #+0]!
l3000: mov R10, #10
l3001: ldrGTB R9, [sp, +R10]
l3002: ldr R14, [sp], #+20
l3003: ldrB R9, [sp, #-38]
l3004: str R11, [sp], #-28
l3005: ldmDB R13, {R6}
l3006: ldrsb R0, [sp, #-10]
l3007: ldrMIh R0, [sp, #+28]
l3008: mov R9, #26
l3009: ldrCCh R0, [sp, +R9]
l3010: strNE R9, [sp, #+24]
l3011: mov R2, #35
l3012: strB R7, [sp, +R2]
l3013: strLSB R12, [sp, #+10]
l3014: mov R5, #3
l3015: ldrB R7, [sp, +R5]
l3016: ldrLEB R14, [sp, #+37]
l3017: ldrsb R3, [sp, #-16]
l3018: strB R7, [sp, #-7]
l3019: mov R12, #8
l3020: str R12, [sp, -R12]!
l3021: str R15, [sp, #+60]!
l3022: strB R9, [sp, #-21]
l3023: mov R9, #50
l3024: ldrsh R7, [sp, -R9]
l3025: strh R1, [sp, #-6]
l3026: ldrGTh R8, [sp, #-16]
l3027: mov R1, #60
l3028: strNEh R8, [sp, -R1]
l3029: stmIB R13!, {R15}
l3030: nop
l3031: ldrsh R10, [sp, #-46]
l3032: strMIB R0, [sp, #-11]
l3033: ldrVCsh R1, [sp, #-2]
l3034: mov R9, #43
l3035: ldrHIsb R14, [sp, -R9]
l3036: mov R7, #23
l3037: strCCB R10, [sp, -R7]
l3038: strLEh R7, [sp, #+0]
l3039: nop
l3040: mov R14, #44
l3041: str R10, [sp, -R14]!
l3042: str R11, [sp, #-20]!
l3043: nop
l3044: mov R14, #60
l3045: strCS R2, [sp, +R14]
l3046: nop
l3047: ldrMIh R8, [sp, #+6]
l3048: strh R6, [sp, #+8]
l3049: strCC R12, [sp, #+16]
l3050: mov R1, #50
l3051: strLSh R1, [sp, +R1]
l3052: ldrCSh R14, [sp, #+16]
l3053: str R6, [sp], #+8
l3054: stmDA R13!, {R14, R15}
l3055: mov R2, #24
l3056: ldr R11, [sp, +R2]!
l3057: ldmCCIA R13, {R7, R9}
l3058: mov R7, #13
l3059: strMIB R0, [sp, +R7]
l3060: mov R2, #34
l3061: ldrVSB R0, [sp, +R2]
l3062: ldrGEsb R9, [sp, #-26]
l3063: nop
l3064: ldrsb R10, [sp, #+19]
l3065: mov R2, #20
l3066: ldrLTh R10, [sp, +R2]
l3067: ldrHIB R11, [sp, #-31]
l3068: ldmIB R13!, {R1, R3, R4, R8, R9, R10}
l3069: mov R6, #9
l3070: ldrsb R2, [sp, +R6]
l3071: ldrCSsh R4, [sp, #-18]
l3072: strGEB R2, [sp, #-53]
l3073: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R10, R11, R12}
l3074: mov R7, #2
l3075: ldrMIB R10, [sp, +R7]
l3076: strEQB R12, [sp, #+21]
l3077: ldrsh R10, [sp, #+58]
l3078: nop
l3079: ldrLEB R2, [sp, #+63]
l3080: ldrh R3, [sp, #+12]
l3081: nop
l3082: nop
l3083: nop
l3084: nop
l3085: strB R8, [sp, #-6]
l3086: mov R3, #36
l3087: strLTh R4, [sp, +R3]
l3088: mov R11, #3
l3089: ldrHIB R3, [sp, -R11]
l3090: mov R2, #48
l3091: ldrNE R5, [sp, +R2]
l3092: nop
l3093: mov R1, #52
l3094: strGEB R9, [sp, +R1]
l3095: stmGEIB R13, {R4, R5, R7, R9}
l3096: ldrEQsb R0, [sp, #+29]
l3097: stmIB R13, {R0, R4}
l3098: nop
l3099: stmIB R13!, {R13}
l3100: stmDB R13!, {R7}
l3101: ldmIA R13!, {R3, R5, R6, R9, R10, R12, R14}
l3102: stmDB R13, {R2, R5, R6, R8, R10, R11}
l3103: mov R4, #12
l3104: strB R1, [sp, +R4]
l3105: mov R10, #4
l3106: ldrVSh R14, [sp, +R10]
l3107: ldrsb R4, [sp, #+8]
l3108: ldmDA R13!, {R8, R11}
l3109: ldmDA R13!, {R0, R3, R5, R7}
l3110: mov R10, #32
l3111: ldrVCh R12, [sp, +R10]
l3112: nop
l3113: stmIB R13!, {R13, R14, R15}
l3114: ldmDB R13, {R5, R8}
l3115: mov R12, #36
l3116: str R5, [sp], +R12
l3117: strCCB R3, [sp, #+15]
l3118: ldrsb R1, [sp, #-23]
l3119: stmDB R13!, {R13}
l3120: mov R9, #34
l3121: strLSh R0, [sp, -R9]
l3122: ldmIB R13!, {R0, R9, R12}
l3123: nop
l3124: mov R3, #40
l3125: str R4, [sp, -R3]!
l3126: mov R11, #8
l3127: strB R9, [sp, -R11]
l3128: stmDB R13!, {R12}
l3129: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R11}
l3130: mov R8, #16
l3131: ldr R11, [sp, -R8]!
l3132: stmDA R13!, {R13}
l3133: ldrB R1, [sp, #+16]
l3134: stmDB R13!, {R1, R11, R12}
l3135: mov R9, #6
l3136: ldrsh R4, [sp, -R9]
l3137: ldrsh R1, [sp, #+16]
l3138: str R10, [sp, #+0]!
l3139: stmIA R13!, {R2, R7, R8, R9, R11, R14, R15}
l3140: mov R10, #28
l3141: str R0, [sp], -R10
l3142: nop
l3143: mov R7, #4
l3144: ldrGTh R0, [sp, -R7]
l3145: mov R4, #16
l3146: ldr R3, [sp], +R4
l3147: ldrLSsb R14, [sp, #+7]
l3148: stmDA R13!, {R4, R5, R6, R10, R12, R14}
l3149: stmIB R13!, {R0, R3, R4, R6, R7, R8, R9, R10}
l3150: mov R4, #5
l3151: ldrB R11, [sp, -R4]
l3152: mov R14, #40
l3153: str R6, [sp], -R14
l3154: ldrNEh R6, [sp, #+16]
l3155: ldrsb R9, [sp, #+27]
l3156: nop
l3157: ldrGEh R1, [sp, #+36]
l3158: mov R3, #8
l3159: ldrVSh R3, [sp, +R3]
l3160: ldrCCh R9, [sp, #+46]
l3161: ldr R8, [sp, #+48]!
l3162: mov R0, #28
l3163: strVS R2, [sp, -R0]
l3164: str R14, [sp], #-32
l3165: ldrGE R5, [sp, #-36]
l3166: stmDA R13!, {R0, R1, R3, R11}
l3167: ldrsh R0, [sp, #+42]
l3168: mov R8, #48
l3169: ldrsb R5, [sp, +R8]
l3170: ldrMIh R4, [sp, #+18]
l3171: stmIB R13!, {R7, R15}
l3172: ldrHIsb R14, [sp, #+40]
l3173: ldmDB R13, {R0, R9, R10}
l3174: strB R12, [sp, #+35]
l3175: mov R14, #34
l3176: ldrGTh R14, [sp, +R14]
l3177: mov R12, #42
l3178: ldrEQsh R12, [sp, +R12]
l3179: strPLB R0, [sp, #+2]
l3180: mov R1, #12
l3181: ldrGEh R11, [sp, -R1]
l3182: mov R1, #11
l3183: strB R6, [sp, -R1]
l3184: mov R11, #12
l3185: str R1, [sp], -R11
l3186: ldrB R2, [sp, #+16]
l3187: ldrB R0, [sp, #+35]
l3188: ldmDB R13!, {R4}
l3189: stmIB R13!, {R13, R15}
l3190: ldrNEsh R8, [sp, #-18]
l3191: mov R0, #52
l3192: ldrGEsh R4, [sp, +R0]
l3193: ldmIB R13, {R2, R14}
l3194: nop
l3195: strB R2, [sp, #+28]
l3196: mov R2, #4
l3197: ldrPLsh R14, [sp, +R2]
l3198: ldmVCIB R13, {R2, R4, R12, R14}
l3199: mov R1, #14
l3200: ldrGTB R0, [sp, +R1]
l3201: ldmDA R13!, {R8}
l3202: stmVCDA R13, {R10}
l3203: ldr R1, [sp], #+28
l3204: ldmIB R13!, {R9}
l3205: ldmDB R13, {R1, R3, R6, R8, R12}
l3206: ldrHIh R1, [sp, #-28]
l3207: mov R6, #24
l3208: str R8, [sp, -R6]!
l3209: str R8, [sp, #-20]!
l3210: ldr R12, [sp, #+4]
l3211: strPLB R3, [sp, #+34]
l3212: mov R12, #16
l3213: ldr R2, [sp], +R12
l3214: mov R6, #16
l3215: str R2, [sp], -R6
l3216: mov R10, #0
l3217: ldr R1, [sp], +R10
l3218: str R6, [sp, #+60]!
l3219: stmGEIB R13, {R10}
l3220: mov R0, #10
l3221: ldrVSsb R0, [sp, -R0]
l3222: mov R1, #32
l3223: str R4, [sp, -R1]
l3224: ldrMIh R3, [sp, #+2]
l3225: ldmIA R13!, {R4}
l3226: strLEh R12, [sp, #-22]
l3227: ldmIA R13!, {R14}
l3228: ldrB R4, [sp, #-40]
l3229: mov R8, #5
l3230: strLEB R6, [sp, -R8]
l3231: ldmDA R13!, {R0}
l3232: stmIA R13!, {R8}
l3233: str R8, [sp], #-68
l3234: mov R8, #3
l3235: ldrsb R10, [sp, +R8]
l3236: ldmIA R13!, {R0, R1, R2, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l3237: mov R12, #14
l3238: strLTh R10, [sp, -R12]
l3239: stmDB R13!, {R1, R7, R8, R12, R14, R15}
l3240: ldrh R11, [sp, #-8]
l3241: strEQB R10, [sp, #+19]
l3242: strLEB R9, [sp, #-28]
l3243: ldmIA R13!, {R0, R1, R2, R3, R4, R9, R11, R12, R14}
l3244: stmDB R13!, {R1, R2, R3, R8, R9, R10}
l3245: strh R4, [sp, #+4]
l3246: stmIB R13!, {R1, R6, R8, R12}
l3247: ldrB R7, [sp, #-45]
l3248: ldrCSB R2, [sp, #-28]
l3249: ldmDB R13!, {R3, R4, R5, R6, R8, R9, R11, R14}
l3250: stmIA R13!, {R3}
l3251: ldrVCh R10, [sp, #-22]
l3252: str R0, [sp, #+24]
l3253: mov R11, #18
l3254: ldrB R4, [sp, -R11]
l3255: ldrVCh R3, [sp, #-10]
l3256: ldmHIIA R13, {R2, R4, R5, R6, R7, R8, R11, R12}
l3257: ldmIA R13!, {R0, R1, R7, R8, R12}
l3258: stmDB R13!, {R0, R1, R2, R4, R5, R6, R7, R9, R14, R15}
l3259: mov R3, #0
l3260: ldrGEh R6, [sp, +R3]
l3261: ldmIB R13!, {R0, R1, R3, R4, R5, R7, R8, R9, R11, R12, R14}
l3262: ldr R14, [sp, #-44]
l3263: mov R14, #14
l3264: ldrCSh R1, [sp, -R14]
l3265: stmIB R13!, {R4}
l3266: strB R5, [sp, #-21]
l3267: ldrVSh R4, [sp, #-10]
l3268: ldmDA R13!, {R0, R1, R6, R7, R8, R9, R11}
l3269: mov R11, #4
l3270: ldrh R11, [sp, -R11]
l3271: ldmGEDA R13, {R3, R4, R8, R14}
l3272: strh R4, [sp, #+34]
l3273: mov R5, #36
l3274: ldrB R7, [sp, +R5]
l3275: mov R7, #0
l3276: str R9, [sp], +R7
l3277: mov R0, #12
l3278: str R4, [sp, +R0]!
l3279: ldmDA R13!, {R5}
l3280: strCSB R7, [sp, #-18]
l3281: strh R1, [sp, #-26]
l3282: mov R9, #36
l3283: strNE R15, [sp, -R9]
l3284: nop
l3285: ldrsb R10, [sp, #-2]
l3286: ldrCCsb R9, [sp, #-10]
l3287: mov R0, #32
l3288: ldr R11, [sp, -R0]
l3289: stmEQDB R13, {R13}
l3290: stmDA R13!, {R1, R2, R5, R11}
l3291: ldrNEsb R9, [sp, #+33]
l3292: ldrLS R7, [sp, #+52]
l3293: ldmDA R13!, {R2, R9}
l3294: mov R9, #32
l3295: ldrh R4, [sp, +R9]
l3296: nop
l3297: mov R1, #59
l3298: ldrB R8, [sp, +R1]
l3299: mov R3, #38
l3300: ldrLSsh R12, [sp, +R3]
l3301: stmDA R13!, {R8}
l3302: strMIh R5, [sp, #+24]
l3303: ldmIB R13!, {R1, R2, R3, R5, R7, R8, R10}
l3304: str R3, [sp, #-20]
l3305: mov R5, #4
l3306: str R12, [sp], -R5
l3307: nop
l3308: ldr R14, [sp, #+4]
l3309: mov R1, #11
l3310: ldrB R10, [sp, -R1]
l3311: mov R14, #21
l3312: ldrB R4, [sp, +R14]
l3313: mov R7, #42
l3314: ldrVSh R8, [sp, +R7]
l3315: mov R6, #4
l3316: ldrsh R0, [sp, +R6]
l3317: strh R14, [sp, #+40]
l3318: mov R0, #33
l3319: ldrCCB R8, [sp, +R0]
l3320: ldmIA R13!, {R0, R1, R4, R5, R8, R12}
l3321: mov R5, #54
l3322: ldrCCsh R10, [sp, -R5]
l3323: ldrB R12, [sp, #-33]
l3324: ldrHIh R2, [sp, #-16]
l3325: ldr R0, [sp, #+12]
l3326: ldrCSB R5, [sp, #-13]
l3327: ldrVSsb R5, [sp, #+6]
l3328: ldmDA R13, {R1, R2, R3, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l3329: mov R6, #21
l3330: ldrB R6, [sp, -R6]
l3331: ldrLEh R3, [sp, #-6]
l3332: strVCB R12, [sp, #-51]
l3333: strMIB R11, [sp, #-8]
l3334: ldrGT R5, [sp, #-12]
l3335: ldrsh R12, [sp, #+2]
l3336: ldrVS R5, [sp, #+8]
l3337: mov R7, #8
l3338: strEQ R11, [sp, +R7]
l3339: str R7, [sp, #+16]
l3340: ldrCSB R9, [sp, #+5]
l3341: mov R8, #21
l3342: ldrCCsb R1, [sp, -R8]
l3343: mov R11, #32
l3344: strLEB R8, [sp, -R11]
l3345: ldrLS R6, [sp, #-28]
l3346: mov R5, #16
l3347: ldr R10, [sp, -R5]!
l3348: str R7, [sp, #-4]!
l3349: ldmDB R13!, {R0, R4, R5, R7, R8, R9}
l3350: ldrGEsb R7, [sp, #-7]
l3351: mov R3, #46
l3352: ldrsb R9, [sp, +R3]
l3353: mov R11, #10
l3354: strGEh R1, [sp, +R11]
l3355: stmIA R13!, {R1, R3, R6, R9, R10}
l3356: mov R10, #24
l3357: ldrh R12, [sp, +R10]
l3358: mov R12, #10
l3359: strB R0, [sp, -R12]
l3360: stmNEDB R13, {R0, R3, R5, R6, R7, R13}
l3361: ldr R9, [sp, #+40]!
l3362: nop
l3363: ldrLEB R5, [sp, #-62]
l3364: mov R0, #52
l3365: ldr R2, [sp, -R0]!
l3366: strMIh R0, [sp, #+36]
l3367: ldmDB R13!, {R0}
l3368: ldrsh R0, [sp, #+24]
l3369: mov R0, #14
l3370: ldrGEh R8, [sp, -R0]
l3371: mov R7, #12
l3372: ldrLSsh R4, [sp, -R7]
l3373: ldmIA R13, {R4, R7, R11, R12}
l3374: mov R11, #13
l3375: ldrGEB R5, [sp, +R11]
l3376: ldrMIsh R11, [sp, #-4]
l3377: ldmLSIA R13, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R10, R11, R14}
l3378: ldr R9, [sp, #+12]!
l3379: stmDA R13!, {R6, R10, R12}
l3380: mov R6, #50
l3381: ldrLSsh R12, [sp, +R6]
l3382: mov R12, #13
l3383: ldrB R7, [sp, -R12]
l3384: str R4, [sp, #+44]!
l3385: strNE R9, [sp, #-36]
l3386: strh R2, [sp, #-4]
l3387: stmDB R13!, {R13, R15}
l3388: ldr R1, [sp, #-12]!
l3389: strCCh R0, [sp, #-20]
l3390: str R8, [sp], #-8
l3391: mov R12, #28
l3392: strLSh R14, [sp, -R12]
l3393: stmIB R13!, {R3, R7, R11}
l3394: ldr R7, [sp, #-12]
l3395: nop
l3396: mov R6, #10
l3397: ldrsh R3, [sp, +R6]
l3398: stmIA R13!, {R13, R14}
l3399: stmDA R13!, {R13, R14, R15}
l3400: mov R14, #40
l3401: strGEh R10, [sp, -R14]
l3402: ldrh R4, [sp, #+0]
l3403: mov R12, #28
l3404: ldrMIh R7, [sp, -R12]
l3405: strHIB R5, [sp, #-24]
l3406: mov R6, #24
l3407: strLS R0, [sp, -R6]
l3408: stmGTIB R13, {R0, R1, R2, R7, R11, R14}
l3409: stmDA R13!, {R13}
l3410: ldrsh R6, [sp, #+6]
l3411: stmIA R13!, {R13, R14}
l3412: stmLSDB R13, {R11}
l3413: ldrVSB R12, [sp, #-12]
l3414: ldmIB R13, {R4, R9}
l3415: mov R4, #9
l3416: strGTB R1, [sp, -R4]
l3417: mov R9, #16
l3418: ldrCCsh R5, [sp, +R9]
l3419: mov R1, #42
l3420: strVCB R12, [sp, -R1]
l3421: ldmDB R13!, {R2, R5, R10, R12}
l3422: ldmDB R13!, {R0, R2, R4, R5, R7}
l3423: ldrNEsb R9, [sp, #+48]
l3424: strh R1, [sp, #+40]
l3425: mov R0, #16
l3426: str R9, [sp, +R0]!
l3427: ldrB R7, [sp, #+9]
l3428: mov R8, #32
l3429: str R3, [sp], +R8
l3430: ldmCCDB R13, {R2, R3, R5, R8, R10, R12, R14}
l3431: mov R8, #16
l3432: ldrh R4, [sp, -R8]
l3433: strB R11, [sp, #-6]
l3434: str R12, [sp], #-8
l3435: ldmIA R13!, {R3}
l3436: ldrCCsb R1, [sp, #-31]
l3437: stmDB R13!, {R1, R3, R4, R5, R6, R10, R14}
l3438: stmEQDA R13, {R1, R2, R11, R13}
l3439: mov R12, #13
l3440: ldrB R1, [sp, -R12]
l3441: str R14, [sp, #+32]!
l3442: str R15, [sp, #-32]!
l3443: ldmMIIA R13, {R1, R2, R4, R5}
l3444: strCCh R11, [sp, #-18]
l3445: strVSB R2, [sp, #+7]
l3446: nop
l3447: ldmDA R13, {R12, R14}
l3448: ldr R4, [sp, #+8]!
l3449: ldmDB R13!, {R0, R1, R4, R5, R10}
l3450: ldrh R9, [sp, #-6]
l3451: ldmIB R13, {R4}
l3452: mov R7, #8
l3453: ldrh R8, [sp, -R7]
l3454: nop
l3455: mov R9, #8
l3456: ldrh R8, [sp, +R9]
l3457: strMIB R3, [sp, #+16]
l3458: ldrHIh R10, [sp, #+4]
l3459: ldrh R12, [sp, #+42]
l3460: ldr R9, [sp, #-12]
l3461: ldr R12, [sp, #+48]!
l3462: stmIA R13!, {R5, R15}
l3463: strVCB R11, [sp, #-37]
l3464: mov R14, #28
l3465: ldrVC R12, [sp, -R14]
l3466: strVCB R8, [sp, #-45]
l3467: nop
l3468: stmLTDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R10, R12, R13, R15}
l3469: mov R9, #14
l3470: strB R2, [sp, -R9]
l3471: strGEh R9, [sp, #-8]
l3472: strLEh R7, [sp, #-52]
l3473: ldrNEB R8, [sp, #-11]
l3474: mov R14, #50
l3475: ldrGEsh R7, [sp, -R14]
l3476: stmDA R13!, {R13, R14, R15}
l3477: strh R14, [sp, #-14]
l3478: mov R6, #8
l3479: ldrsh R5, [sp, -R6]
l3480: ldrLSh R11, [sp, #-40]
l3481: stmGTDA R13, {R1, R2, R5, R7, R11, R13, R14, R15}
l3482: ldr R10, [sp], #-44
l3483: ldr R14, [sp], #-4
l3484: mov R4, #54
l3485: strGTh R5, [sp, +R4]
l3486: mov R8, #52
l3487: ldrLTh R5, [sp, +R8]
l3488: ldrLTh R1, [sp, #+50]
l3489: ldmIA R13, {R6, R10, R12}
l3490: ldrGEB R5, [sp, #+32]
l3491: str R15, [sp, #+20]!
l3492: mov R5, #5
l3493: ldrsb R12, [sp, -R5]
l3494: mov R0, #26
l3495: ldrB R10, [sp, -R0]
l3496: mov R2, #14
l3497: strB R6, [sp, -R2]
l3498: ldr R0, [sp], #-20
l3499: stmLSIA R13, {R0, R5, R7, R10, R11, R13}
l3500: ldmIA R13!, {R4, R8, R10}
l3501: mov R11, #7
l3502: ldrB R4, [sp, -R11]
l3503: mov R12, #16
l3504: str R6, [sp, -R12]!
l3505: ldmIA R13!, {R0, R1, R2, R3, R6, R7, R8, R9, R10, R12, R14}
l3506: str R7, [sp, #-12]
l3507: ldmDA R13!, {R0, R1, R3, R5, R9, R10, R11, R14}
l3508: str R15, [sp, #+20]
l3509: nop
l3510: stmIB R13!, {R0, R2, R4, R5, R7, R8, R9, R10, R11, R12, R14, R15}
l3511: ldrB R7, [sp, #-26]
l3512: ldmDA R13!, {R5, R8, R14}
l3513: ldrHIh R8, [sp, #+16]
l3514: stmDB R13, {R2, R5, R12, R13, R15}
l3515: stmDB R13, {R4, R6, R10, R11, R12, R14}
l3516: ldmIB R13!, {R10}
l3517: stmIA R13!, {R13}
l3518: ldmIA R13!, {R4, R8}
l3519: mov R8, #3
l3520: strLTB R3, [sp, -R8]
l3521: mov R0, #13
l3522: ldrHIsb R9, [sp, -R0]
l3523: mov R2, #10
l3524: ldrGTsh R2, [sp, -R2]
l3525: stmIA R13!, {R13}
l3526: ldrB R6, [sp, #-34]
l3527: ldrVSh R11, [sp, #-60]
l3528: nop
l3529: strPLB R1, [sp, #-33]
l3530: stmDB R13!, {R4, R5, R7, R10}
l3531: ldmEQDA R13, {R0, R1, R2, R3, R4, R6, R7, R9, R10, R11, R12, R14}
l3532: str R15, [sp], #-20
l3533: strLSB R7, [sp, #-28]
l3534: mov R1, #16
l3535: str R10, [sp], +R1
l3536: ldrsh R3, [sp, #-18]
l3537: mov R7, #36
l3538: str R4, [sp], -R7
l3539: nop
l3540: nop
l3541: ldrGEB R10, [sp, #+4]
l3542: mov R10, #59
l3543: ldrGTsb R0, [sp, +R10]
l3544: strh R7, [sp, #+28]
l3545: ldrGEh R11, [sp, #+12]
l3546: str R4, [sp, #+28]!
l3547: mov R11, #2
l3548: ldrsb R7, [sp, +R11]
l3549: mov R2, #42
l3550: ldrVSsh R7, [sp, -R2]
l3551: mov R9, #14
l3552: ldrh R7, [sp, +R9]
l3553: ldrCCsb R4, [sp, #+29]
l3554: stmIB R13!, {R0, R6, R10, R14}
l3555: strGEB R4, [sp, #-46]
l3556: mov R2, #2
l3557: ldrLEsh R9, [sp, -R2]
l3558: ldrLEsh R5, [sp, #-14]
l3559: str R8, [sp], #+12
l3560: strPLh R5, [sp, #-62]
l3561: ldr R0, [sp, #-32]!
l3562: stmDA R13!, {R0, R3, R6, R12, R14}
l3563: mov R2, #19
l3564: ldrLEsb R14, [sp, -R2]
l3565: ldmIA R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l3566: ldrPLsb R0, [sp, #-60]
l3567: nop
l3568: mov R5, #67
l3569: ldrB R4, [sp, -R5]
l3570: mov R5, #70
l3571: ldrLEsh R3, [sp, -R5]
l3572: mov R2, #52
l3573: ldrsh R1, [sp, -R2]
l3574: nop
l3575: strh R2, [sp, #-24]
l3576: stmDA R13!, {R12}
l3577: ldmDA R13!, {R3, R7}
l3578: mov R0, #6
l3579: ldrEQsh R5, [sp, -R0]
l3580: ldrVSsb R10, [sp, #-35]
l3581: mov R14, #2
l3582: strMIh R11, [sp, -R14]
l3583: strB R4, [sp, #-22]
l3584: ldrB R8, [sp, #+15]
l3585: strMI R4, [sp, #-24]
l3586: mov R5, #56
l3587: ldrVCB R0, [sp, -R5]
l3588: mov R2, #42
l3589: ldrh R0, [sp, -R2]
l3590: strEQh R5, [sp, #-36]
l3591: mov R5, #8
l3592: ldr R14, [sp, -R5]!
l3593: str R14, [sp, #-32]!
l3594: ldrGEB R9, [sp, #+40]
l3595: ldrCSsh R12, [sp, #-4]
l3596: ldmDB R13!, {R6}
l3597: ldr R4, [sp, #+48]!
l3598: strh R2, [sp, #-40]
l3599: stmIA R13!, {R6, R9}
l3600: mov R6, #4
l3601: ldr R7, [sp, -R6]
l3602: mov R9, #34
l3603: ldrh R6, [sp, -R9]
l3604: nop
l3605: stmDB R13, {R0, R9, R13}
l3606: ldrGTsb R9, [sp, #-11]
l3607: ldrVCsh R10, [sp, #-10]
l3608: ldmDA R13!, {R0, R1, R6, R12, R14}
l3609: ldmCCDB R13, {R6, R11}
l3610: ldrB R0, [sp, #-50]
l3611: ldrEQ R4, [sp, #-44]
l3612: ldrHIsb R1, [sp, #-48]
l3613: stmDB R13!, {R0, R1, R4, R5, R6, R10, R11, R14}
l3614: mov R8, #30
l3615: strh R10, [sp, +R8]
l3616: nop
l3617: nop
l3618: strMIB R1, [sp, #+42]
l3619: stmIA R13!, {R13, R14, R15}
l3620: stmVSIA R13, {R3, R4, R6, R12}
l3621: ldr R12, [sp, #-12]!
l3622: mov R10, #15
l3623: strVCB R14, [sp, +R10]
l3624: stmHIIB R13, {R2, R4, R7}
l3625: ldrh R10, [sp, #+20]
l3626: mov R9, #40
l3627: str R9, [sp, +R9]!
l3628: mov R6, #10
l3629: strLSh R6, [sp, -R6]
l3630: mov R9, #12
l3631: ldrEQsh R0, [sp, +R9]
l3632: stmIA R13!, {R0}
l3633: mov R8, #28
l3634: ldrEQ R5, [sp, -R8]
l3635: mov R6, #24
l3636: ldr R1, [sp], -R6
l3637: mov R1, #33
l3638: strB R3, [sp, +R1]
l3639: ldmVCDB R13, {R0, R2, R3, R4, R6, R8, R12}
l3640: ldrHIsh R6, [sp, #-2]
l3641: strh R11, [sp, #+34]
l3642: str R6, [sp], #+16
l3643: ldrMIB R4, [sp, #+17]
l3644: nop
l3645: ldrsb R14, [sp, #-35]
l3646: strB R1, [sp, #-12]
l3647: strLTh R14, [sp, #-16]
l3648: ldrLTB R7, [sp, #+5]
l3649: mov R2, #12
l3650: ldrsb R1, [sp, +R2]
l3651: mov R6, #16
l3652: ldrh R3, [sp, +R6]
l3653: ldrCSsh R3, [sp, #-14]
l3654: ldrGEB R6, [sp, #+1]
l3655: stmNEIA R13, {R6, R8}
l3656: ldmDA R13!, {R0, R11}
l3657: stmIB R13!, {R11}
l3658: stmDA R13!, {R1}
l3659: ldmCCIA R13, {R0, R7}
l3660: mov R1, #16
l3661: ldrGEB R1, [sp, +R1]
l3662: stmDA R13!, {R13}
l3663: strGTh R5, [sp, #+4]
l3664: mov R8, #19
l3665: ldrPLB R2, [sp, -R8]
l3666: ldrPLh R10, [sp, #+10]
l3667: mov R12, #2
l3668: ldrLSsh R9, [sp, -R12]
l3669: nop
l3670: ldrLSB R10, [sp, #+31]
l3671: mov R11, #36
l3672: ldrCS R2, [sp, -R11]
l3673: nop
l3674: nop
l3675: strGTh R7, [sp, #-20]
l3676: ldrGEh R2, [sp, #-34]
l3677: ldmIB R13!, {R2, R5, R9, R14}
l3678: mov R14, #24
l3679: str R11, [sp, -R14]!
l3680: ldmIB R13!, {R11}
l3681: strHI R2, [sp, #-32]
l3682: stmPLDA R13, {R2, R3, R4, R9, R10, R12, R13}
l3683: ldmIB R13!, {R0, R2, R3, R6, R9, R10, R14}
l3684: ldrLSh R5, [sp, #-30]
l3685: strh R2, [sp, #-38]
l3686: ldmDB R13!, {R0, R2, R3, R4, R11}
l3687: ldrGTsh R5, [sp, #-32]
l3688: stmDA R13!, {R12, R14}
l3689: mov R12, #32
l3690: ldrMIsh R6, [sp, +R12]
l3691: str R3, [sp], #-24
l3692: ldmIA R13!, {R0, R1, R2, R5}
l3693: ldrsb R3, [sp, #-27]
l3694: mov R11, #4
l3695: strB R3, [sp, -R11]
l3696: stmDB R13!, {R3, R4, R5, R10, R11}
l3697: ldmIA R13!, {R2, R4, R8, R11}
l3698: ldmHIIA R13, {R0, R1, R2, R3, R5, R7, R8, R9, R10, R11, R12}
l3699: strB R12, [sp, #+3]
l3700: nop
l3701: mov R14, #20
l3702: ldrB R1, [sp, -R14]
l3703: mov R1, #12
l3704: ldrMIsb R7, [sp, +R1]
l3705: stmIB R13!, {R6, R14, R15}
l3706: stmDB R13!, {R13}
l3707: mov R11, #3
l3708: ldrsb R6, [sp, -R11]
l3709: strh R14, [sp, #+28]
l3710: stmDB R13!, {R13, R14}
l3711: ldmIB R13, {R6, R11, R12}
l3712: stmIA R13!, {R0, R14}
l3713: ldr R1, [sp], #+0
l3714: mov R12, #1
l3715: ldrPLsb R9, [sp, -R12]
l3716: ldrsh R0, [sp, #+22]
l3717: ldrEQsb R5, [sp, #+21]
l3718: mov R10, #32
l3719: str R11, [sp], -R10
l3720: stmIB R13, {R4, R8, R14}
l3721: ldr R7, [sp], #+4
l3722: ldrh R2, [sp, #+52]
l3723: nop
l3724: mov R5, #55
l3725: ldrLSB R12, [sp, +R5]
l3726: nop
l3727: str R3, [sp], #+28
l3728: strh R12, [sp, #-32]
l3729: ldrVSh R10, [sp, #+22]
l3730: mov R10, #28
l3731: ldr R4, [sp, +R10]!
l3732: mov R0, #48
l3733: ldrsb R5, [sp, -R0]
l3734: mov R2, #6
l3735: ldrB R9, [sp, +R2]
l3736: strh R11, [sp, #-28]
l3737: ldrPLh R9, [sp, #-6]
l3738: stmDA R13!, {R13, R15}
l3739: mov R0, #31
l3740: ldrNEB R2, [sp, -R0]
l3741: stmIA R13!, {R4, R5, R7, R12}
l3742: ldrh R5, [sp, #-40]
l3743: mov R8, #11
l3744: ldrEQB R11, [sp, -R8]
l3745: mov R8, #24
l3746: str R8, [sp], -R8
l3747: stmDA R13!, {R1, R2, R4, R5, R6, R8, R10, R11}
l3748: strh R8, [sp, #+20]
l3749: ldmDA R13!, {R1, R5}
l3750: mov R2, #44
l3751: ldrEQ R5, [sp, +R2]
l3752: str R6, [sp, #+36]!
l3753: stmDB R13, {R6, R11}
l3754: strB R8, [sp, #-23]
l3755: mov R10, #18
l3756: ldrsb R10, [sp, +R10]
l3757: mov R11, #13
l3758: strB R1, [sp, +R11]
l3759: strLTh R1, [sp, #-6]
l3760: stmDA R13, {R0, R1, R2, R5, R11}
l3761: ldmGEDB R13, {R2, R5, R8, R10, R11, R12, R14}
l3762: mov R12, #24
l3763: str R7, [sp, +R12]!
l3764: mov R11, #32
l3765: strPLh R7, [sp, -R11]
l3766: ldr R8, [sp, #-40]!
l3767: ldmIB R13!, {R5}
l3768: stmDA R13!, {R2, R15}
l3769: stmIA R13, {R2, R4, R5, R6, R7, R8, R9, R10, R13, R14}
l3770: ldrCCsh R0, [sp, #+8]
l3771: ldr R5, [sp, #-16]!
l3772: strh R5, [sp, #+48]
l3773: stmIA R13!, {R0, R7, R11}
l3774: mov R5, #2
l3775: ldrGTB R1, [sp, -R5]
l3776: mov R11, #0
l3777: ldr R3, [sp], +R11
l3778: strh R10, [sp, #-4]
l3779: mov R8, #20
l3780: ldrsh R7, [sp, -R8]
l3781: stmDA R13, {R1, R9}
l3782: mov R6, #12
l3783: strh R9, [sp, +R6]
l3784: mov R10, #30
l3785: ldrVSh R8, [sp, +R10]
l3786: ldrB R12, [sp, #+32]
l3787: mov R2, #52
l3788: str R14, [sp], +R2
l3789: ldrNEsb R8, [sp, #-61]
l3790: ldrLEB R0, [sp, #-44]
l3791: mov R1, #67
l3792: ldrsb R3, [sp, -R1]
l3793: ldrMIh R3, [sp, #-16]
l3794: ldmGTDA R13, {R3}
l3795: strVSB R12, [sp, #-35]
l3796: ldrGTB R5, [sp, #-49]
l3797: mov R14, #47
l3798: ldrHIB R4, [sp, -R14]
l3799: ldrGTsb R8, [sp, #+1]
l3800: ldrHIsh R11, [sp, #-8]
l3801: ldmDA R13!, {R0, R1, R2, R3, R5, R6, R7, R9, R10, R11, R12, R14}
l3802: mov R11, #2
l3803: strB R12, [sp, +R11]
l3804: mov R12, #22
l3805: strh R8, [sp, -R12]
l3806: ldmDA R13!, {R5, R9, R10, R12}
l3807: ldrVSsb R8, [sp, #+7]
l3808: mov R1, #38
l3809: ldrPLsh R11, [sp, +R1]
l3810: ldmIB R13!, {R2, R5, R9}
l3811: mov R11, #20
l3812: ldr R14, [sp, -R11]!
l3813: mov R0, #56
l3814: strLTh R4, [sp, +R0]
l3815: mov R6, #40
l3816: ldrNE R5, [sp, +R6]
l3817: ldr R2, [sp, #+16]
l3818: str R6, [sp, #+52]
l3819: mov R6, #58
l3820: strVSB R3, [sp, +R6]
l3821: stmIB R13!, {R13, R14}
l3822: nop
l3823: mov R9, #24
l3824: ldrLEh R7, [sp, +R9]
l3825: ldrLSB R1, [sp, #+15]
l3826: nop
l3827: mov R1, #54
l3828: ldrLEsh R7, [sp, +R1]
l3829: mov R0, #64
l3830: str R14, [sp, +R0]
l3831: mov R2, #7
l3832: ldrsb R12, [sp, -R2]
l3833: strNEB R1, [sp, #-1]
l3834: ldrGTh R2, [sp, #-8]
l3835: nop
l3836: mov R2, #18
l3837: ldrLTsh R9, [sp, +R2]
l3838: stmIA R13!, {R3, R10}
l3839: ldrLTsh R11, [sp, #+6]
l3840: strCCh R11, [sp, #+32]
l3841: mov R9, #4
l3842: strB R1, [sp, -R9]
l3843: ldmDA R13!, {R10}
l3844: ldr R12, [sp], #+32
l3845: ldr R0, [sp], #+12
l3846: ldr R12, [sp, #-16]
l3847: strB R14, [sp, #+4]
l3848: mov R3, #8
l3849: strMIh R12, [sp, +R3]
l3850: ldr R9, [sp, #-28]!
l3851: ldrsb R14, [sp, #+11]
l3852: mov R5, #28
l3853: ldrLEh R2, [sp, +R5]
l3854: stmDA R13!, {R13, R15}
l3855: ldrMIsh R12, [sp, #-10]
l3856: ldrsh R5, [sp, #-4]
l3857: str R5, [sp], #-12
l3858: mov R4, #8
l3859: strh R5, [sp, +R4]
l3860: str R3, [sp, #+8]
l3861: str R11, [sp, #+32]!
l3862: ldrLT R8, [sp, #-40]
l3863: mov R8, #28
l3864: str R2, [sp], +R8
l3865: strCCB R5, [sp, #-58]
l3866: ldrHIh R8, [sp, #-60]
l3867: mov R0, #5
l3868: ldrB R5, [sp, -R0]
l3869: mov R0, #50
l3870: strNEh R12, [sp, -R0]
l3871: ldrB R14, [sp, #-14]
l3872: ldrLEh R0, [sp, #-56]
l3873: ldmIB R13!, {R9}
l3874: nop
l3875: ldrVC R12, [sp, #-4]
l3876: mov R1, #68
l3877: strB R12, [sp, -R1]
l3878: ldrB R0, [sp, #-58]
l3879: strB R10, [sp, #-22]
l3880: stmDB R13!, {R13, R15}
l3881: mov R6, #4
l3882: ldrCCh R12, [sp, +R6]
l3883: mov R0, #26
l3884: ldrh R14, [sp, -R0]
l3885: mov R1, #60
l3886: ldrsh R3, [sp, -R1]
l3887: strLTB R7, [sp, #-64]
l3888: nop
l3889: strGT R5, [sp, #-56]
l3890: strMIB R11, [sp, #-34]
l3891: mov R4, #38
l3892: strEQh R6, [sp, -R4]
l3893: ldmIA R13!, {R2, R12}
l3894: ldmDA R13!, {R2, R3, R8, R9}
l3895: mov R12, #16
l3896: ldrh R9, [sp, +R12]
l3897: ldmGEIA R13, {R2, R4}
l3898: mov R0, #44
l3899: strB R5, [sp, -R0]
l3900: mov R5, #37
l3901: strLTB R2, [sp, -R5]
l3902: ldrh R4, [sp, #-2]
l3903: stmIB R13, {R0, R1, R2, R14}
l3904: mov R10, #15
l3905: strVCB R14, [sp, +R10]
l3906: strPLh R10, [sp, #-10]
l3907: stmIA R13!, {R2}
l3908: str R5, [sp, #+8]
l3909: ldrh R0, [sp, #+14]
l3910: nop
l3911: strB R0, [sp, #-42]
l3912: strLEh R0, [sp, #-8]
l3913: stmIB R13!, {R4, R6}
l3914: mov R2, #57
l3915: strB R3, [sp, -R2]
l3916: ldrB R8, [sp, #-52]
l3917: ldrB R4, [sp, #-4]
l3918: ldmDB R13!, {R1, R2, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l3919: stmDA R13!, {R7}
l3920: mov R8, #21
l3921: ldrLEsb R0, [sp, +R8]
l3922: stmIA R13!, {R3, R5, R9, R15}
l3923: stmDA R13!, {R1, R2, R3, R4, R9, R14}
l3924: mov R7, #44
l3925: ldrNEsb R9, [sp, +R7]
l3926: mov R12, #44
l3927: ldrB R8, [sp, +R12]
l3928: nop
l3929: mov R5, #46
l3930: ldrLEsh R3, [sp, +R5]
l3931: ldrCSh R3, [sp, #+58]
l3932: strEQB R8, [sp, #+14]
l3933: ldmIB R13!, {R1, R2, R4, R5, R7, R8, R9, R10, R11, R12, R14}
l3934: str R11, [sp, #-16]!
l3935: mov R6, #20
l3936: ldr R1, [sp], +R6
l3937: ldr R7, [sp], #+0
l3938: mov R9, #20
l3939: ldrMIsb R2, [sp, -R9]
l3940: mov R7, #17
l3941: ldrB R9, [sp, -R7]
l3942: ldmIA R13!, {R3, R5, R10}
l3943: stmDB R13!, {R13}
l3944: mov R8, #2
l3945: ldrsh R2, [sp, +R8]
l3946: ldmGTDB R13, {R0, R5, R7, R8, R12}
l3947: mov R8, #10
l3948: strLTh R4, [sp, +R8]
l3949: ldrsb R6, [sp, #-6]
l3950: mov R9, #60
l3951: strCCB R2, [sp, -R9]
l3952: stmDB R13!, {R13}
l3953: stmGEIA R13, {R1, R4, R11}
l3954: ldrsh R12, [sp, #+14]
l3955: ldmIA R13!, {R0}
l3956: mov R1, #8
l3957: ldr R12, [sp, +R1]!
l3958: ldrLEh R6, [sp, #-34]
l3959: ldr R12, [sp, #-20]!
l3960: stmIB R13, {R1}
l3961: ldrMIB R6, [sp, #-1]
l3962: ldmDB R13!, {R2}
l3963: mov R5, #26
l3964: ldrh R2, [sp, -R5]
l3965: mov R14, #44
l3966: str R11, [sp, -R14]
l3967: mov R7, #36
l3968: ldr R7, [sp, -R7]!
l3969: nop
l3970: stmDB R13, {R10}
l3971: ldrsb R12, [sp, #-4]
l3972: ldmIA R13!, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l3973: ldrh R10, [sp, #-58]
l3974: ldrsb R5, [sp, #-7]
l3975: mov R2, #4
l3976: str R9, [sp, +R2]!
l3977: mov R9, #48
l3978: str R6, [sp, -R9]!
l3979: mov R7, #12
l3980: ldr R5, [sp, +R7]!
l3981: stmIA R13!, {R0, R1, R2, R3, R4, R6, R7, R8, R10, R14}
l3982: mov R2, #27
l3983: strB R2, [sp, -R2]
l3984: mov R14, #48
l3985: ldrCSsh R7, [sp, -R14]
l3986: ldrh R10, [sp, #-16]
l3987: nop
l3988: mov R10, #23
l3989: ldrB R7, [sp, -R10]
l3990: ldmNEDB R13, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l3991: strh R2, [sp, #-22]
l3992: strCCh R2, [sp, #-64]
l3993: nop
l3994: mov R5, #56
l3995: strh R11, [sp, -R5]
l3996: mov R6, #32
l3997: str R8, [sp, -R6]!
l3998: mov R2, #6
l3999: ldrCCB R1, [sp, -R2]
l4000: ldmNEDB R13, {R2, R6}
l4001: stmDA R13!, {R1, R3, R5, R6, R9, R11, R12, R14}
l4002: nop
l4003: mov R7, #41
l4004: strCCB R6, [sp, +R7]
l4005: ldrGTh R1, [sp, #+0]
l4006: stmIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R10, R12, R14}
l4007: ldrB R2, [sp, #-8]
l4008: ldmMIIA R13, {R1, R2, R5, R6, R12}
l4009: ldr R1, [sp, #+20]
l4010: ldrLTsb R4, [sp, #+41]
l4011: str R6, [sp], #+56
l4012: stmIB R13!, {R1, R5}
l4013: mov R4, #30
l4014: ldrGTsh R9, [sp, -R4]
l4015: ldrsb R1, [sp, #-51]
l4016: ldrsb R10, [sp, #-47]
l4017: str R9, [sp, #+0]!
l4018: nop
l4019: ldrsb R12, [sp, #-58]
l4020: ldrh R8, [sp, #+2]
l4021: mov R3, #48
l4022: ldr R1, [sp], -R3
l4023: mov R4, #0
l4024: ldrNEsb R7, [sp, +R4]
l4025: strB R11, [sp, #+11]
l4026: ldrLSsh R0, [sp, #+28]
l4027: ldr R2, [sp, #+4]!
l4028: mov R3, #4
l4029: ldrCSh R12, [sp, -R3]
l4030: ldr R11, [sp, #+8]!
l4031: stmIB R13!, {R0, R2, R5, R8, R9, R10, R11, R12, R14}
l4032: ldmDB R13!, {R2, R4, R6, R9, R10}
l4033: ldmDB R13, {R0, R3, R4, R5}
l4034: mov R3, #50
l4035: strMIh R3, [sp, -R3]
l4036: stmDB R13!, {R0, R1, R3, R5, R6, R9, R11, R12, R14}
l4037: ldrGEsb R7, [sp, #+51]
l4038: mov R4, #8
l4039: ldr R10, [sp, +R4]!
l4040: ldrMIsh R10, [sp, #-14]
l4041: mov R14, #36
l4042: str R15, [sp, +R14]
l4043: strh R14, [sp, #+48]
l4044: mov R1, #2
l4045: ldrB R10, [sp, +R1]
l4046: mov R6, #4
l4047: ldrNEsh R8, [sp, +R6]
l4048: ldmIA R13, {R0, R2, R3, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l4049: mov R12, #14
l4050: ldrLEB R0, [sp, -R12]
l4051: ldrsb R12, [sp, #-5]
l4052: ldrLTB R1, [sp, #-9]
l4053: mov R5, #46
l4054: ldrh R8, [sp, +R5]
l4055: ldrLSh R9, [sp, #+42]
l4056: ldrsh R11, [sp, #-16]
l4057: ldr R5, [sp, #+40]
l4058: nop
l4059: mov R8, #49
l4060: ldrHIsb R3, [sp, +R8]
l4061: ldmDB R13, {R4, R5, R12}
l4062: str R10, [sp, #-4]!
l4063: ldrLEsh R9, [sp, #+50]
l4064: ldrh R4, [sp, #+44]
l4065: mov R12, #5
l4066: ldrPLB R9, [sp, +R12]
l4067: strEQB R2, [sp, #+52]
l4068: mov R10, #14
l4069: strPLB R7, [sp, +R10]
l4070: mov R4, #22
l4071: strB R4, [sp, +R4]
l4072: ldmIA R13!, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l4073: ldr R14, [sp, #-20]!
l4074: ldmDB R13!, {R0, R11, R12}
l4075: ldmIB R13!, {R0, R1, R6, R7, R9, R10, R11, R12}
l4076: mov R11, #67
l4077: ldrGEsb R4, [sp, -R11]
l4078: ldmNEDA R13, {R0, R2, R4, R6, R7, R10, R11, R12, R14}
l4079: nop
l4080: ldrB R8, [sp, #-58]
l4081: nop
l4082: strB R0, [sp, #-40]
l4083: mov R10, #0
l4084: str R7, [sp], +R10
l4085: strh R11, [sp, #-18]
l4086: ldmDA R13, {R0, R1, R3, R11}
l4087: nop
l4088: mov R10, #13
l4089: ldrLSsb R2, [sp, -R10]
l4090: ldr R9, [sp, #-28]
l4091: ldrLTh R1, [sp, #-22]
l4092: nop
l4093: ldrVCh R10, [sp, #-42]
l4094: ldrHI R1, [sp, #-68]
l4095: nop
l4096: nop
l4097: nop
l4098: str R1, [sp], #-44
l4099: mov R14, #12
l4100: strh R4, [sp, +R14]
l4101: mov R12, #16
l4102: ldrCSB R11, [sp, -R12]
l4103: ldmIB R13!, {R1, R2, R4, R9}
l4104: strB R2, [sp, #-13]
l4105: ldrB R1, [sp, #+18]
l4106: str R5, [sp, #+8]
l4107: strVCB R4, [sp, #-29]
l4108: str R11, [sp], #+4
l4109: mov R11, #28
l4110: ldrVCsb R0, [sp, -R11]
l4111: ldmDA R13!, {R8}
l4112: mov R10, #2
l4113: strB R12, [sp, +R10]
l4114: mov R11, #40
l4115: strVCh R14, [sp, -R11]
l4116: mov R14, #4
l4117: ldr R4, [sp, -R14]!
l4118: mov R12, #10
l4119: ldrsh R3, [sp, -R12]
l4120: mov R10, #38
l4121: strVCB R4, [sp, -R10]
l4122: mov R11, #4
l4123: str R14, [sp], -R11
l4124: mov R6, #10
l4125: ldrsb R10, [sp, -R6]
l4126: ldrHIsh R7, [sp, #+6]
l4127: ldmDA R13!, {R2, R5, R6, R9}
l4128: stmDA R13, {R7, R8, R11}
l4129: mov R2, #52
l4130: ldr R6, [sp, +R2]
l4131: ldmIB R13, {R1, R2, R4, R5, R6, R8, R9, R11, R12}
l4132: ldrsh R8, [sp, #-20]
l4133: ldrPLh R11, [sp, #+52]
l4134: stmIB R13!, {R13, R14, R15}
l4135: ldmDA R13, {R1, R6, R9}
l4136: strMIh R10, [sp, #-22]
l4137: mov R7, #12
l4138: strh R11, [sp, -R7]
l4139: stmIA R13, {R3, R4, R6, R9, R11, R12, R14}
l4140: ldmDA R13!, {R0, R2, R3, R7, R12}
l4141: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12}
l4142: strGTB R1, [sp, #-9]
l4143: stmLSDA R13, {R5}
l4144: mov R0, #46
l4145: ldrsh R5, [sp, -R0]
l4146: ldrh R0, [sp, #-48]
l4147: ldmIA R13!, {R0, R4, R8}
l4148: nop
l4149: mov R7, #22
l4150: strCCB R10, [sp, -R7]
l4151: mov R12, #64
l4152: ldrB R10, [sp, -R12]
l4153: str R4, [sp, #-32]
l4154: mov R10, #68
l4155: ldrEQ R5, [sp, -R10]
l4156: ldrLTsh R8, [sp, #-60]
l4157: ldmDA R13!, {R3, R4}
l4158: ldrsb R11, [sp, #-47]
l4159: ldmVSDB R13, {R0, R1, R6, R8, R9, R10, R11}
l4160: mov R6, #14
l4161: ldrNEB R14, [sp, -R6]
l4162: strh R2, [sp, #+2]
l4163: mov R10, #24
l4164: str R12, [sp, -R10]
l4165: mov R1, #8
l4166: ldrLE R6, [sp, -R1]
l4167: ldrCSB R0, [sp, #-58]
l4168: nop
l4169: ldmIA R13!, {R4}
l4170: ldmIB R13!, {R4}
l4171: mov R2, #4
l4172: ldrB R5, [sp, -R2]
l4173: nop
l4174: ldrsh R3, [sp, #+0]
l4175: ldmCSDB R13, {R4, R5, R6, R7, R8, R9, R10, R11}
l4176: mov R4, #56
l4177: ldrsb R3, [sp, -R4]
l4178: mov R1, #45
l4179: strB R7, [sp, -R1]
l4180: ldrsh R12, [sp, #-6]
l4181: mov R10, #32
l4182: strPLB R2, [sp, -R10]
l4183: strCCB R11, [sp, #-67]
l4184: mov R1, #58
l4185: ldrGEB R6, [sp, -R1]
l4186: nop
l4187: mov R2, #2
l4188: ldrCCh R0, [sp, -R2]
l4189: ldr R7, [sp], #-32
l4190: stmDB R13!, {R1, R6, R9, R10, R15}
l4191: ldmIA R13!, {R0, R2, R4, R6, R7, R8, R9, R10, R11, R14}
l4192: mov R9, #4
l4193: ldrLSsb R3, [sp, -R9]
l4194: mov R7, #48
l4195: ldrLEsh R0, [sp, -R7]
l4196: ldrsb R1, [sp, #-55]
l4197: stmLSIA R13, {R0, R8, R13}
l4198: mov R2, #50
l4199: ldrGEsh R11, [sp, -R2]
l4200: strEQB R0, [sp, #-21]
l4201: mov R4, #14
l4202: strB R6, [sp, -R4]
l4203: mov R1, #28
l4204: strGTh R7, [sp, -R1]
l4205: mov R11, #36
l4206: ldrCSh R8, [sp, -R11]
l4207: stmDA R13, {R2, R15}
l4208: ldrsb R0, [sp, #-60]
l4209: mov R5, #39
l4210: strPLB R11, [sp, -R5]
l4211: ldrGEsb R10, [sp, #-5]
l4212: stmIA R13!, {R4, R5}
l4213: nop
l4214: stmIB R13!, {R8}
l4215: mov R7, #24
l4216: str R9, [sp, -R7]!
l4217: mov R7, #24
l4218: ldrGTh R7, [sp, -R7]
l4219: strVC R7, [sp, #-44]
l4220: mov R2, #26
l4221: ldrsh R0, [sp, -R2]
l4222: strh R12, [sp, #-34]
l4223: nop
l4224: ldmDA R13, {R3, R6, R7, R8, R10}
l4225: stmDA R13!, {R0, R2, R5, R8, R11}
l4226: stmIB R13!, {R13}
l4227: mov R1, #16
l4228: strh R14, [sp, -R1]
l4229: str R15, [sp, #+40]
l4230: ldrB R2, [sp, #+13]
l4231: mov R0, #12
l4232: str R8, [sp], -R0
l4233: strh R7, [sp, #+10]
l4234: mov R12, #0
l4235: ldrMIB R14, [sp, +R12]
l4236: ldmIB R13!, {R1, R5, R6, R9, R11}
l4237: ldmDA R13!, {R2, R3}
l4238: str R3, [sp, #-20]!
l4239: stmIA R13, {R1, R4}
l4240: mov R10, #26
l4241: strHIB R6, [sp, +R10]
l4242: stmIB R13!, {R0, R3, R9, R12, R14}
l4243: mov R3, #22
l4244: ldrsh R9, [sp, +R3]
l4245: mov R1, #29
l4246: ldrsb R6, [sp, -R1]
l4247: stmDA R13!, {R3, R4, R7, R10, R15}
l4248: mov R12, #4
l4249: ldr R6, [sp, +R12]
l4250: stmIB R13!, {R13, R14, R15}
l4251: str R1, [sp], #+4
l4252: ldmLTIB R13, {R2, R5, R6, R11}
l4253: strLSB R8, [sp, #+9]
l4254: ldmEQIA R13, {R0, R2, R3, R4, R5, R6, R7, R12}
l4255: stmDA R13!, {R13, R14, R15}
l4256: stmDA R13!, {R6}
l4257: nop
l4258: stmDB R13!, {R8}
l4259: ldrh R10, [sp, #+6]
l4260: mov R3, #6
l4261: strh R1, [sp, -R3]
l4262: ldrEQh R8, [sp, #+8]
l4263: nop
l4264: nop
l4265: mov R10, #64
l4266: strCSh R5, [sp, +R10]
l4267: ldrh R4, [sp, #+24]
l4268: mov R6, #44
l4269: ldrHIB R9, [sp, +R6]
l4270: mov R6, #66
l4271: ldrsh R5, [sp, +R6]
l4272: nop
l4273: mov R6, #64
l4274: ldrPLB R1, [sp, +R6]
l4275: nop
l4276: mov R7, #8
l4277: ldrLE R0, [sp, -R7]
l4278: ldmIB R13!, {R1}
l4279: mov R7, #48
l4280: str R15, [sp], +R7
l4281: mov R10, #42
l4282: ldrCCB R11, [sp, -R10]
l4283: mov R6, #16
l4284: ldrh R10, [sp, -R6]
l4285: ldmDB R13!, {R0, R2, R3, R4, R6, R7, R9}
l4286: strEQB R1, [sp, #+35]
l4287: mov R4, #12
l4288: ldrsh R4, [sp, -R4]
l4289: ldmCCIA R13, {R1, R3, R4, R11}
l4290: stmIB R13!, {R4, R11}
l4291: ldrEQ R2, [sp, #+16]
l4292: stmIB R13!, {R1, R5, R10, R11}
l4293: ldrsb R6, [sp, #-22]
l4294: ldmIB R13!, {R0}
l4295: stmDB R13!, {R1, R4, R6, R9}
l4296: ldrsb R11, [sp, #+4]
l4297: mov R5, #28
l4298: strGEh R4, [sp, +R5]
l4299: mov R11, #18
l4300: ldrB R6, [sp, -R11]
l4301: mov R10, #28
l4302: str R6, [sp, +R10]
l4303: stmIA R13!, {R13}
l4304: nop
l4305: stmDB R13, {R0, R1, R2, R5, R7, R11, R13, R14, R15}
l4306: ldrEQB R1, [sp, #-13]
l4307: ldmIA R13!, {R2, R11, R12}
l4308: ldmVSDB R13, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l4309: mov R9, #57
l4310: strB R1, [sp, -R9]
l4311: nop
l4312: mov R3, #44
l4313: strGEh R10, [sp, -R3]
l4314: ldmDB R13!, {R0, R2, R3, R4, R5, R6, R7, R8, R10, R11, R12, R14}
l4315: mov R12, #34
l4316: ldrNEh R0, [sp, +R12]
l4317: str R6, [sp, #+44]!
l4318: mov R0, #6
l4319: ldrVCB R4, [sp, +R0]
l4320: mov R14, #10
l4321: ldrsh R7, [sp, -R14]
l4322: mov R10, #38
l4323: ldrVSsh R9, [sp, -R10]
l4324: stmIA R13!, {R0, R7}
l4325: mov R11, #39
l4326: ldrNEsb R8, [sp, -R11]
l4327: mov R9, #6
l4328: ldrB R2, [sp, -R9]
l4329: stmIB R13!, {R7}
l4330: stmDB R13!, {R3, R5, R14}
l4331: mov R6, #44
l4332: ldrGTsh R8, [sp, -R6]
l4333: ldrNE R3, [sp, #-52]
l4334: stmCCIA R13, {R1, R3, R15}
l4335: strCCB R1, [sp, #-19]
l4336: str R2, [sp, #-24]!
l4337: strVSB R12, [sp, #-20]
l4338: mov R2, #20
l4339: str R9, [sp, -R2]!
l4340: nop
l4341: mov R3, #50
l4342: ldrB R11, [sp, +R3]
l4343: ldrCCsh R1, [sp, #+20]
l4344: mov R11, #60
l4345: ldr R4, [sp, +R11]
l4346: stmIB R13, {R0, R3, R4, R5, R8, R10, R12, R13, R15}
l4347: stmPLIB R13, {R1, R2, R3, R5, R13, R14}
l4348: mov R14, #28
l4349: strVCh R1, [sp, +R14]
l4350: nop
l4351: mov R12, #0
l4352: ldrh R5, [sp, +R12]
l4353: mov R0, #44
l4354: str R11, [sp, +R0]!
l4355: ldmIA R13!, {R4}
l4356: strEQh R6, [sp, #+4]
l4357: stmDA R13!, {R13, R15}
l4358: stmIB R13, {R5}
l4359: mov R5, #0
l4360: str R4, [sp, +R5]!
l4361: nop
l4362: ldmIA R13!, {R8}
l4363: ldrh R1, [sp, #+12]
l4364: mov R12, #12
l4365: ldrMI R7, [sp, +R12]
l4366: ldrLSh R11, [sp, #-12]
l4367: mov R8, #5
l4368: ldrHIsb R6, [sp, +R8]
l4369: mov R12, #36
l4370: ldrNEsh R14, [sp, -R12]
l4371: ldmDA R13!, {R10}
l4372: str R3, [sp, #-40]!
l4373: mov R11, #60
l4374: ldr R11, [sp, +R11]!
l4375: mov R8, #8
l4376: ldrsh R10, [sp, -R8]
l4377: ldrCSsh R14, [sp, #-14]
l4378: strh R14, [sp, #-14]
l4379: mov R8, #40
l4380: ldrB R8, [sp, -R8]
l4381: stmPLDB R13, {R6, R8}
l4382: strGTB R4, [sp, #-69]
l4383: ldrB R6, [sp, #-66]
l4384: nop
l4385: mov R12, #19
l4386: ldrB R11, [sp, -R12]
l4387: nop
l4388: ldr R2, [sp], #-68
l4389: stmIA R13!, {R13, R14, R15}
l4390: mov R2, #9
l4391: strB R10, [sp, +R2]
l4392: ldrCC R14, [sp, #-12]
l4393: ldrh R1, [sp, #+54]
l4394: stmIA R13!, {R13, R15}
l4395: strB R3, [sp, #+40]
l4396: mov R14, #12
l4397: ldr R7, [sp], -R14
l4398: mov R1, #29
l4399: ldrLEsb R4, [sp, +R1]
l4400: nop
l4401: strB R4, [sp, #+11]
l4402: ldrB R4, [sp, #-9]
l4403: ldrB R5, [sp, #+5]
l4404: ldmCSDB R13, {R14}
l4405: ldrMIsh R6, [sp, #+24]
l4406: stmIA R13!, {R13, R15}
l4407: stmDA R13!, {R10}
l4408: ldrsb R8, [sp, #+12]
l4409: mov R7, #50
l4410: strCSh R8, [sp, +R7]
l4411: mov R8, #36
l4412: ldr R9, [sp, +R8]!
l4413: ldrCSB R12, [sp, #+10]
l4414: ldrsh R12, [sp, #-14]
l4415: ldmDB R13!, {R0, R1, R2, R3, R4, R7, R9, R11, R12}
l4416: ldrB R3, [sp, #-14]
l4417: ldrGEB R4, [sp, #+49]
l4418: ldmDA R13!, {R14}
l4419: mov R0, #12
l4420: ldr R2, [sp], +R0
l4421: mov R11, #0
l4422: strVCh R9, [sp, +R11]
l4423: ldrCC R6, [sp, #+12]
l4424: mov R6, #12
l4425: strVSh R0, [sp, +R6]
l4426: mov R0, #4
l4427: ldr R0, [sp, +R0]!
l4428: ldrB R2, [sp, #+13]
l4429: ldmDB R13!, {R0, R9}
l4430: ldmDA R13!, {R0, R11}
l4431: str R6, [sp, #-8]!
l4432: mov R12, #36
l4433: ldrh R10, [sp, +R12]
l4434: str R11, [sp, #+60]!
l4435: str R12, [sp, #-8]!
l4436: ldmDA R13!, {R0, R1, R2, R3, R4, R6, R7, R8, R10, R11, R12, R14}
l4437: mov R2, #64
l4438: ldrEQ R10, [sp, +R2]
l4439: mov R7, #6
l4440: strB R12, [sp, -R7]
l4441: ldrB R14, [sp, #+18]
l4442: mov R0, #12
l4443: strCCh R7, [sp, +R0]
l4444: mov R9, #24
l4445: ldrMI R10, [sp, +R9]
l4446: strB R6, [sp, #+52]
l4447: ldmLTIB R13, {R0, R4, R5, R6, R7, R14}
l4448: ldrPLh R8, [sp, #+0]
l4449: mov R10, #24
l4450: ldr R7, [sp, +R10]
l4451: mov R4, #28
l4452: ldrsh R1, [sp, +R4]
l4453: mov R7, #3
l4454: ldrB R0, [sp, +R7]
l4455: stmIA R13, {R1, R2, R3, R4, R5, R9, R10, R11, R12, R13, R14, R15}
l4456: mov R12, #50
l4457: strB R12, [sp, +R12]
l4458: ldrMIsh R7, [sp, #+36]
l4459: ldmIA R13, {R11}
l4460: strEQB R12, [sp, #+34]
l4461: str R1, [sp, #+64]
l4462: mov R2, #48
l4463: ldrh R8, [sp, +R2]
l4464: mov R7, #24
l4465: str R10, [sp, +R7]!
l4466: mov R0, #20
l4467: str R8, [sp, -R0]!
l4468: mov R0, #52
l4469: strMI R11, [sp, +R0]
l4470: stmIA R13!, {R0, R1, R2, R3, R4, R7, R8, R10, R11, R14, R15}
l4471: ldrsh R7, [sp, #-46]
l4472: str R1, [sp], #-48
l4473: mov R12, #12
l4474: ldrVSh R2, [sp, +R12]
l4475: nop
l4476: ldrEQsh R8, [sp, #+42]
l4477: ldr R8, [sp, #+28]!
l4478: strCCh R14, [sp, #-4]
l4479: strCCB R12, [sp, #-36]
l4480: ldmIB R13!, {R0, R1, R3, R4, R6, R7, R11, R14}
l4481: str R4, [sp, #-24]!
l4482: stmDA R13!, {R13, R14}
l4483: ldmIA R13, {R0, R3, R7, R9, R14}
l4484: stmIA R13!, {R8}
l4485: ldmDB R13, {R1}
l4486: mov R8, #32
l4487: ldr R3, [sp, +R8]!
l4488: nop
l4489: mov R8, #36
l4490: ldrsb R4, [sp, -R8]
l4491: mov R10, #12
l4492: str R8, [sp, -R10]!
l4493: mov R3, #8
l4494: str R9, [sp, -R3]
l4495: str R6, [sp, #+12]
l4496: stmDB R13!, {R13}
l4497: stmLTDB R13, {R1, R2, R5, R6, R8, R9, R11, R12, R14, R15}
l4498: mov R2, #39
l4499: ldrHIsb R8, [sp, -R2]
l4500: ldmDB R13!, {R1, R10, R14}
l4501: strLSB R5, [sp, #+24]
l4502: ldmDB R13, {R0, R4, R8, R10, R12}
l4503: ldrVS R0, [sp, #-32]
l4504: ldmDB R13!, {R0, R2, R4, R6, R7, R11, R12}
l4505: ldmDB R13, {R2}
l4506: ldr R8, [sp, #+20]
l4507: mov R7, #22
l4508: ldrCCsb R11, [sp, +R7]
l4509: strPLh R14, [sp, #-10]
l4510: mov R0, #56
l4511: ldr R7, [sp], +R0
l4512: ldmDA R13!, {R0, R11}
l4513: strB R12, [sp, #-26]
l4514: ldrLTB R6, [sp, #-52]
l4515: strB R8, [sp, #-52]
l4516: mov R10, #47
l4517: ldrB R6, [sp, -R10]
l4518: ldrGTB R4, [sp, #+3]
l4519: ldmIA R13!, {R4}
l4520: ldmDA R13!, {R0, R1, R2, R7, R8, R9, R10, R11, R14}
l4521: ldrh R8, [sp, #+0]
l4522: ldrsb R12, [sp, #+21]
l4523: mov R7, #24
l4524: strCSB R12, [sp, +R7]
l4525: ldmDA R13!, {R2, R8, R9, R10, R11}
l4526: mov R0, #61
l4527: ldrB R8, [sp, +R0]
l4528: ldmDA R13, {R0}
l4529: ldmMIDB R13, {R2}
l4530: mov R9, #8
l4531: str R15, [sp, -R9]!
l4532: strVSB R14, [sp, #+1]
l4533: stmIA R13!, {R1, R3, R4, R5, R7, R12, R15}
l4534: strEQB R8, [sp, #-8]
l4535: ldrsh R14, [sp, #+12]
l4536: stmDB R13!, {R3, R6, R7}
l4537: ldmIA R13!, {R6, R9, R10}
l4538: mov R14, #19
l4539: ldrNEsb R14, [sp, +R14]
l4540: stmIA R13!, {R7, R8, R14}
l4541: mov R3, #42
l4542: ldrPLsb R2, [sp, -R3]
l4543: stmDB R13, {R2, R3, R9, R13}
l4544: mov R10, #26
l4545: strh R6, [sp, -R10]
l4546: ldmDA R13!, {R0, R1, R3, R5, R7, R8, R9, R10, R14}
l4547: nop
l4548: mov R10, #56
l4549: ldrCCh R14, [sp, +R10]
l4550: ldrsb R3, [sp, #+6]
l4551: nop
l4552: ldmIA R13!, {R0, R1, R4, R7, R9, R14}
l4553: mov R14, #14
l4554: ldrGTsh R10, [sp, +R14]
l4555: stmIB R13!, {R1, R7, R10, R12, R14}
l4556: strCS R11, [sp, #+0]
l4557: ldrPLsb R7, [sp, #-29]
l4558: mov R6, #10
l4559: ldrsh R8, [sp, -R6]
l4560: ldrLSB R6, [sp, #-33]
l4561: strh R6, [sp, #-44]
l4562: mov R3, #22
l4563: strh R3, [sp, +R3]
l4564: ldmMIIB R13, {R1, R3, R14}
l4565: stmLTDB R13, {R9, R14}
l4566: mov R12, #6
l4567: strh R14, [sp, -R12]
l4568: ldmDA R13!, {R3, R4, R6, R7, R12}
l4569: mov R8, #13
l4570: ldrB R2, [sp, -R8]
l4571: stmIB R13!, {R0, R1, R2, R8, R11, R12, R14}
l4572: ldr R5, [sp], #-44
l4573: mov R1, #2
l4574: ldrLTB R3, [sp, -R1]
l4575: nop
l4576: ldmDB R13!, {R3, R5}
l4577: stmIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14, R15}
l4578: ldrh R6, [sp, #-4]
l4579: ldrEQh R0, [sp, #+38]
l4580: mov R2, #12
l4581: ldr R14, [sp], +R2
l4582: str R14, [sp, #+8]
l4583: mov R9, #3
l4584: ldrPLB R11, [sp, -R9]
l4585: str R8, [sp, #-20]!
l4586: nop
l4587: ldmIB R13!, {R12}
l4588: strLEh R7, [sp, #+58]
l4589: mov R5, #67
l4590: strB R11, [sp, +R5]
l4591: nop
l4592: stmIA R13, {R4, R5, R6, R7, R10, R11, R12}
l4593: mov R1, #13
l4594: strGEB R0, [sp, +R1]
l4595: ldrsh R5, [sp, #+14]
l4596: mov R4, #55
l4597: ldrHIsb R0, [sp, +R4]
l4598: stmIA R13!, {R13, R14, R15}
l4599: nop
l4600: nop
l4601: ldmIA R13!, {R3, R7, R9}
l4602: ldrsh R0, [sp, #+26]
l4603: mov R4, #28
l4604: str R4, [sp, +R4]
l4605: ldmIB R13!, {R0, R3, R4, R5, R6, R7, R10, R11, R12, R14}
l4606: ldrGEB R9, [sp, #-21]
l4607: mov R3, #22
l4608: strCSh R7, [sp, -R3]
l4609: strB R8, [sp, #-13]
l4610: mov R14, #68
l4611: ldrGEsh R2, [sp, -R14]
l4612: ldrLSsh R11, [sp, #-18]
l4613: nop
l4614: mov R14, #48
l4615: strHI R3, [sp, -R14]
l4616: mov R0, #11
l4617: strEQB R1, [sp, -R0]
l4618: mov R2, #15
l4619: ldrCSB R5, [sp, -R2]
l4620: nop
l4621: strVCh R2, [sp, #-58]
l4622: mov R6, #22
l4623: strNEh R5, [sp, -R6]
l4624: mov R7, #2
l4625: strMIh R0, [sp, -R7]
l4626: mov R4, #56
l4627: ldrNEsb R10, [sp, -R4]
l4628: nop
l4629: nop
l4630: mov R6, #43
l4631: ldrLSB R3, [sp, -R6]
l4632: mov R6, #1
l4633: ldrVCsb R14, [sp, +R6]
l4634: stmDB R13!, {R1, R2, R5, R6, R7, R8, R9, R10, R11, R14, R15}
l4635: str R11, [sp], #+24
l4636: mov R14, #32
l4637: str R14, [sp], -R14
l4638: strh R3, [sp, #+12]
l4639: mov R1, #36
l4640: ldr R3, [sp], +R1
l4641: strB R11, [sp, #-5]
l4642: mov R3, #12
l4643: ldr R4, [sp, +R3]
l4644: mov R14, #6
l4645: ldrVCh R3, [sp, +R14]
l4646: mov R12, #50
l4647: ldrh R14, [sp, -R12]
l4648: mov R8, #5
l4649: ldrCSB R4, [sp, +R8]
l4650: stmIA R13, {R0, R3, R5, R15}
l4651: ldmIA R13!, {R5, R8, R9, R10}
l4652: mov R9, #6
l4653: ldrsh R8, [sp, +R9]
l4654: ldrsb R0, [sp, #-38]
l4655: mov R0, #43
l4656: ldrsb R8, [sp, -R0]
l4657: mov R6, #62
l4658: strh R11, [sp, -R6]
l4659: stmDA R13!, {R0, R2, R3, R4, R6, R8, R10, R12, R14, R15}
l4660: nop
l4661: ldmIB R13, {R0, R3, R4, R7, R8, R9, R10, R11}
l4662: ldrB R10, [sp, #+11]
l4663: ldmIA R13!, {R0, R2, R3, R4, R5, R6, R7, R8, R10, R12, R14}
l4664: mov R11, #44
l4665: ldrLSB R3, [sp, -R11]
l4666: mov R1, #14
l4667: ldrEQsh R5, [sp, -R1]
l4668: mov R2, #68
l4669: strLSh R4, [sp, -R2]
l4670: strLTB R10, [sp, #-56]
l4671: nop
l4672: mov R12, #48
l4673: ldr R3, [sp, -R12]
l4674: mov R0, #12
l4675: strMI R4, [sp, -R0]
l4676: mov R9, #46
l4677: ldrLEh R1, [sp, -R9]
l4678: mov R4, #4
l4679: ldrVCB R2, [sp, -R4]
l4680: ldmDA R13!, {R0, R2, R4, R5, R6, R7, R8, R9, R10, R11, R12}
l4681: ldrEQh R12, [sp, #+22]
l4682: mov R7, #47
l4683: ldrCSsb R8, [sp, +R7]
l4684: mov R1, #4
l4685: ldrsh R14, [sp, +R1]
l4686: stmDA R13!, {R0, R3, R7, R11, R14}
l4687: mov R1, #6
l4688: ldrh R0, [sp, -R1]
l4689: mov R3, #26
l4690: ldrVSsb R0, [sp, +R3]
l4691: mov R0, #1
l4692: ldrsb R6, [sp, +R0]
l4693: mov R3, #35
l4694: ldrB R1, [sp, +R3]
l4695: mov R0, #22
l4696: ldrLEB R10, [sp, +R0]
l4697: mov R10, #60
l4698: ldr R10, [sp], +R10
l4699: nop
l4700: ldrVS R10, [sp, #-24]
l4701: nop
l4702: mov R14, #36
l4703: ldrh R7, [sp, -R14]
l4704: ldrCSh R8, [sp, #-36]
l4705: nop
l4706: stmDA R13!, {R0, R4, R7, R12, R14}
l4707: ldmIB R13, {R7}
l4708: ldrB R3, [sp, #+19]
l4709: strEQB R3, [sp, #-5]
l4710: ldrsb R5, [sp, #-15]
l4711: mov R5, #32
l4712: ldr R8, [sp], -R5
l4713: strMIh R5, [sp, #-14]
l4714: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l4715: ldmDB R13!, {R1, R2, R3, R5, R6, R7, R8, R9, R11, R12, R14}
l4716: ldrh R0, [sp, #-14]
l4717: mov R8, #6
l4718: strHIB R4, [sp, +R8]
l4719: stmDB R13!, {R4, R5, R7, R12}
l4720: nop
l4721: mov R7, #48
l4722: ldr R9, [sp], +R7
l4723: str R5, [sp], #+16
l4724: mov R10, #28
l4725: strEQ R3, [sp, -R10]
l4726: mov R9, #32
l4727: str R9, [sp, -R9]!
l4728: mov R11, #12
l4729: strB R3, [sp, +R11]
l4730: mov R6, #10
l4731: ldrLSsb R14, [sp, -R6]
l4732: ldrNEsh R2, [sp, #+30]
l4733: ldmIB R13!, {R0, R5, R6, R8, R10, R11}
l4734: mov R0, #28
l4735: ldrMIh R0, [sp, -R0]
l4736: strB R0, [sp, #-5]
l4737: ldrPLsh R6, [sp, #-18]
l4738: mov R8, #10
l4739: strh R1, [sp, -R8]
l4740: ldmPLDA R13, {R3, R4, R7, R8, R12}
l4741: ldr R6, [sp], #-4
l4742: stmIB R13!, {R2}
l4743: ldrsb R9, [sp, #-5]
l4744: mov R2, #11
l4745: ldrsb R11, [sp, +R2]
l4746: stmIB R13, {R1}
l4747: ldrLSh R14, [sp, #+10]
l4748: stmDA R13, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13}
l4749: mov R3, #18
l4750: ldrB R14, [sp, -R3]
l4751: ldrNEsh R8, [sp, #-60]
l4752: mov R2, #27
l4753: strCSB R1, [sp, -R2]
l4754: strLTB R8, [sp, #-8]
l4755: ldrB R4, [sp, #-38]
l4756: str R8, [sp, #-12]!
l4757: str R5, [sp, #+16]!
l4758: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R7, R8, R9, R10, R11, R12, R14}
l4759: stmGEDB R13, {R3, R4}
l4760: ldr R10, [sp, #+56]!
l4761: ldrNEsh R10, [sp, #-42]
l4762: ldrsh R14, [sp, #-60]
l4763: ldrPLsb R8, [sp, #-34]
l4764: mov R4, #55
l4765: ldrCCsb R9, [sp, -R4]
l4766: ldrh R7, [sp, #-26]
l4767: nop
l4768: stmDB R13!, {R13, R14, R15}
l4769: str R6, [sp], #-12
l4770: ldr R12, [sp], #-32
l4771: mov R8, #10
l4772: ldrh R1, [sp, +R8]
l4773: strVSB R6, [sp, #-7]
l4774: nop
l4775: nop
l4776: mov R9, #46
l4777: strB R14, [sp, +R9]
l4778: stmDB R13!, {R13}
l4779: strHIh R12, [sp, #+50]
l4780: ldr R12, [sp], #+56
l4781: nop
l4782: nop
l4783: ldrh R11, [sp, #-16]
l4784: strB R2, [sp, #-54]
l4785: mov R3, #4
l4786: str R2, [sp, +R3]!
l4787: nop
l4788: ldmDA R13!, {R0, R1, R3, R4, R5, R6, R7, R9, R10, R11, R14}
l4789: mov R5, #34
l4790: ldrsb R10, [sp, +R5]
l4791: mov R9, #12
l4792: strNEh R0, [sp, -R9]
l4793: ldmIA R13!, {R0, R1, R2, R5, R8, R10, R11, R14}
l4794: strGTh R0, [sp, #-44]
l4795: mov R7, #4
l4796: ldrGEsh R5, [sp, +R7]
l4797: ldrGTB R9, [sp, #-51]
l4798: stmGTIA R13, {R2}
l4799: ldmDA R13!, {R0, R5, R9, R11, R12, R14}
l4800: str R14, [sp], #+16
l4801: ldrLS R9, [sp, #-12]
l4802: ldrh R10, [sp, #-36]
l4803: nop
l4804: mov R2, #32
l4805: strLEB R1, [sp, -R2]
l4806: mov R0, #22
l4807: ldrGTsb R8, [sp, -R0]
l4808: strGEB R12, [sp, #+8]
l4809: stmHIIB R13, {R3, R5, R7, R9}
l4810: ldrGTsb R10, [sp, #-3]
l4811: ldmIA R13!, {R9, R12, R14}
l4812: ldr R4, [sp, #-32]!
l4813: mov R12, #32
l4814: str R5, [sp], -R12
l4815: strB R11, [sp, #+23]
l4816: ldrsb R2, [sp, #+44]
l4817: ldrEQsb R12, [sp, #+25]
l4818: str R4, [sp, #+56]!
l4819: ldmDA R13!, {R2, R6, R12, R14}
l4820: stmIB R13!, {R13}
l4821: nop
l4822: ldrsh R0, [sp, #+24]
l4823: ldrsh R8, [sp, #-20]
l4824: nop
l4825: stmIB R13!, {R1, R5, R6, R12, R14}
l4826: nop
l4827: strPLh R6, [sp, #-20]
l4828: ldrLEh R0, [sp, #+8]
l4829: ldrh R0, [sp, #-52]
l4830: ldr R14, [sp, #-20]!
l4831: ldmDB R13!, {R0, R1, R2, R4, R5, R8, R11, R12, R14}
l4832: mov R3, #10
l4833: ldrsh R0, [sp, +R3]
l4834: ldr R14, [sp, #+56]
l4835: ldrsh R0, [sp, #+54]
l4836: ldrsb R8, [sp, #+24]
l4837: ldmIB R13!, {R2, R3, R6, R14}
l4838: mov R12, #8
l4839: ldrh R4, [sp, +R12]
l4840: ldrVCh R2, [sp, #+24]
l4841: ldmVSIB R13, {R4}
l4842: ldrsb R11, [sp, #+46]
l4843: mov R6, #22
l4844: ldrsh R8, [sp, -R6]
l4845: stmDB R13, {R3}
l4846: strVS R12, [sp, #+16]
l4847: strh R10, [sp, #-18]
l4848: mov R1, #8
l4849: ldrsh R3, [sp, +R1]
l4850: ldrGEB R9, [sp, #+26]
l4851: stmDB R13!, {R11, R14}
l4852: mov R14, #18
l4853: strNEB R9, [sp, +R14]
l4854: stmVSIA R13, {R3, R5, R8, R9, R10, R14, R15}
l4855: mov R5, #28
l4856: ldrsh R11, [sp, +R5]
l4857: ldrLTB R5, [sp, #+6]
l4858: ldrLS R11, [sp, #-16]
l4859: mov R4, #48
l4860: ldrLTh R2, [sp, +R4]
l4861: strB R2, [sp, #-10]
l4862: mov R0, #36
l4863: ldrsb R4, [sp, +R0]
l4864: stmDA R13, {R8}
l4865: stmDA R13!, {R7, R9}
l4866: mov R10, #5
l4867: ldrB R1, [sp, -R10]
l4868: nop
l4869: nop
l4870: ldrLS R4, [sp, #+56]
l4871: mov R0, #4
l4872: ldrLEsh R11, [sp, +R0]
l4873: ldrB R9, [sp, #+30]
l4874: mov R4, #60
l4875: strVS R7, [sp, +R4]
l4876: mov R5, #56
l4877: ldrsh R7, [sp, +R5]
l4878: ldmIA R13!, {R3}
l4879: mov R5, #24
l4880: ldrMIsh R10, [sp, +R5]
l4881: strLSh R4, [sp, #+12]
l4882: mov R4, #44
l4883: strCSB R7, [sp, +R4]
l4884: mov R12, #16
l4885: str R15, [sp], +R12
l4886: ldrGEsb R2, [sp, #-11]
l4887: nop
l4888: mov R7, #26
l4889: strCSh R4, [sp, +R7]
l4890: ldrLSB R5, [sp, #-11]
l4891: ldrB R6, [sp, #+7]
l4892: mov R14, #47
l4893: strB R6, [sp, +R14]
l4894: ldrh R1, [sp, #+36]
l4895: nop
l4896: mov R14, #8
l4897: ldrVSh R10, [sp, +R14]
l4898: mov R1, #16
l4899: ldr R0, [sp, -R1]!
l4900: ldr R5, [sp, #+56]!
l4901: ldrLEh R4, [sp, #-64]
l4902: strh R3, [sp, #-32]
l4903: nop
l4904: ldrPLh R14, [sp, #-62]
l4905: ldrsh R6, [sp, #-24]
l4906: mov R6, #10
l4907: ldrNEsh R4, [sp, -R6]
l4908: mov R0, #31
l4909: ldrLTB R0, [sp, -R0]
l4910: ldmDB R13!, {R1, R2, R3, R4, R7, R9, R11, R12}
l4911: mov R14, #24
l4912: ldrMIB R7, [sp, -R14]
l4913: mov R4, #37
l4914: ldrGEB R14, [sp, +R4]
l4915: mov R10, #36
l4916: strB R7, [sp, -R10]
l4917: ldrh R4, [sp, #+22]
l4918: stmDB R13, {R1, R6, R7, R10, R12, R15}
l4919: strB R3, [sp, #+0]
l4920: ldrh R10, [sp, #+28]
l4921: mov R4, #8
l4922: ldrGTh R6, [sp, -R4]
l4923: ldrB R9, [sp, #+29]
l4924: strEQ R1, [sp, #+36]
l4925: mov R6, #22
l4926: ldrGTsb R8, [sp, +R6]
l4927: mov R14, #30
l4928: ldrLEsb R0, [sp, +R14]
l4929: ldmDA R13!, {R3, R7, R11, R14}
l4930: ldrh R2, [sp, #+0]
l4931: nop
l4932: mov R5, #28
l4933: ldrCCsh R3, [sp, +R5]
l4934: strCCB R5, [sp, #+31]
l4935: mov R3, #20
l4936: str R6, [sp], -R3
l4937: ldmIA R13!, {R1, R11, R14}
l4938: mov R7, #20
l4939: strNEh R6, [sp, +R7]
l4940: mov R1, #62
l4941: strh R14, [sp, +R1]
l4942: ldmDA R13!, {R4}
l4943: ldrh R1, [sp, #+38]
l4944: nop
l4945: ldrh R9, [sp, #+24]
l4946: mov R9, #48
l4947: strVC R0, [sp, +R9]
l4948: ldmIA R13!, {R1, R2, R5, R6, R7, R8, R9, R14}
l4949: ldrVCh R4, [sp, #+28]
l4950: strGEh R8, [sp, #+26]
l4951: ldmDB R13!, {R9}
l4952: str R3, [sp], #+20
l4953: nop
l4954: mov R11, #8
l4955: ldr R12, [sp], -R11
l4956: strh R2, [sp, #+20]
l4957: ldrGEsb R9, [sp, #+25]
l4958: strVSh R9, [sp, #+8]
l4959: ldmDA R13!, {R0, R1, R3, R4, R6, R7, R8, R9, R10, R14}
l4960: nop
l4961: mov R9, #19
l4962: strMIB R11, [sp, +R9]
l4963: mov R11, #26
l4964: strGTB R2, [sp, +R11]
l4965: stmCSIA R13, {R0, R1, R5, R7, R8, R10, R11, R12, R15}
l4966: mov R5, #12
l4967: ldrLSh R9, [sp, +R5]
l4968: ldrCCh R10, [sp, #+22]
l4969: stmIA R13!, {R13, R14, R15}
l4970: ldrsb R2, [sp, #-15]
l4971: mov R11, #22
l4972: strh R7, [sp, +R11]
l4973: stmIA R13!, {R1, R2, R3, R6, R7, R10, R12, R14}
l4974: ldrCCsb R10, [sp, #+10]
l4975: nop
l4976: mov R1, #8
l4977: ldrMIsh R10, [sp, -R1]
l4978: mov R4, #35
l4979: strLSB R11, [sp, -R4]
l4980: ldrsh R4, [sp, #-22]
l4981: ldmIB R13!, {R5}
l4982: mov R3, #2
l4983: ldrLEsh R4, [sp, -R3]
l4984: ldmNEIA R13, {R5, R6, R14}
l4985: ldr R0, [sp], #+4
l4986: mov R11, #52
l4987: ldr R6, [sp, -R11]!
l4988: mov R1, #32
l4989: ldr R1, [sp, +R1]
l4990: nop
l4991: nop
l4992: nop
l4993: nop
l4994: nop
l4995: ldrsh R4, [sp, #+22]
l4996: mov R11, #2
l4997: ldrGEh R9, [sp, -R11]
l4998: mov R14, #44
l4999: strh R3, [sp, +R14]
l5000: strVCB R8, [sp, #+15]
end: b end

