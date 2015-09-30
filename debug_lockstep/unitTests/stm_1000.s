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
val1: .word 3412570115
next1:ldr R2, val2
b next2
val2: .word 862242599
next2:ldr R3, val3
b next3
val3: .word 1361703909
next3:ldr R4, val4
b next4
val4: .word 3488511332
next4:ldr R5, val5
b next5
val5: .word 3101804664
next5:ldr R6, val6
b next6
val6: .word 223004274
next6:ldr R7, val7
b next7
val7: .word 1095009081
next7:ldr R8, val8
b next8
val8: .word 815762447
next8:ldr R9, val9
b next9
val9: .word 719004730
next9:ldr R10, val10
b next10
val10: .word 821159519
next10:ldr R11, val11
b next11
val11: .word 3145024626
next11:ldr R12, val12
b next12
val12: .word 1096772075
next12:ldr R14, val14
b next14
val14: .word 1059621986

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 2346876337
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 4046136687
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 1630106103
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 1382674182
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 1108351332
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 3935217266
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 2391859575
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 3747279637
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 1263942453
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 981318980
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 3809084795
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 736344105
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 1642416468
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 1883696565
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 2420170127
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 1957464939
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 3242931411
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 2941135933
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 1057068703
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 2027897406
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 3576701302
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: stmDA R13!, {R13}
l2: stmDA R13!, {R13, R14, R15}
l3: nop
l4: stmIB R13!, {R15}
l5: stmIA R13!, {R13}
l6: stmDA R13, {R3, R8}
l7: nop
l8: stmDB R13!, {R13, R14, R15}
l9: stmMIDA R13, {R5, R7, R8}
l10: nop
l11: stmDA R13!, {R1, R3, R5, R8, R10, R14}
l12: nop
l13: stmDA R13!, {R15}
l14: nop
l15: stmDA R13!, {R6, R15}
l16: stmIB R13!, {R1, R3, R8, R11, R15}
l17: stmIA R13!, {R4, R10, R12, R14}
l18: nop
l19: nop
l20: nop
l21: stmDB R13, {R1, R11}
l22: stmIB R13!, {R3, R10, R11}
l23: stmDB R13!, {R13, R14}
l24: nop
l25: stmVCIB R13, {R7, R11}
l26: stmGTDA R13, {R0, R10}
l27: nop
l28: stmDB R13!, {R13, R14}
l29: stmIB R13!, {R13}
l30: stmDA R13, {R0, R13}
l31: stmIB R13, {R5}
l32: stmIA R13!, {R4}
l33: stmDA R13!, {R3, R4, R5, R10, R15}
l34: stmIB R13, {R0, R2, R4, R6, R11, R13}
l35: stmEQIB R13, {R1}
l36: stmDA R13!, {R13, R15}
l37: stmIB R13!, {R13}
l38: stmMIDA R13, {R2, R8, R13, R14}
l39: stmIA R13!, {R9}
l40: stmVCDB R13, {R2, R5, R12}
l41: nop
l42: stmMIIB R13, {R2, R5, R8}
l43: stmGTDB R13, {R1, R2, R5, R8, R11, R12, R13, R14}
l44: stmIA R13!, {R13}
l45: stmIA R13, {R0, R6, R7, R10, R15}
l46: stmIA R13!, {R13, R14, R15}
l47: stmCSIB R13, {R1, R11, R15}
l48: stmIB R13!, {R4}
l49: stmLSIA R13, {R6}
l50: nop
l51: stmIB R13, {R0, R5}
l52: stmDA R13!, {R7, R8, R9, R15}
l53: stmDB R13!, {R15}
l54: stmIA R13!, {R1, R2, R3, R4, R8, R11, R12}
l55: nop
l56: nop
l57: nop
l58: stmDB R13, {R3, R7, R12}
l59: stmDA R13!, {R0, R1, R3, R5, R6, R8, R9, R10, R11, R12, R15}
l60: stmDA R13!, {R9}
l61: stmDB R13!, {R2, R3, R4, R7}
l62: nop
l63: stmIA R13!, {R13}
l64: stmDA R13, {R12}
l65: stmDA R13, {R8}
l66: stmIB R13!, {R0, R3, R4, R7, R9, R12, R15}
l67: stmIB R13!, {R10, R11}
l68: nop
l69: stmMIDB R13, {R0, R1, R6, R8, R11, R14, R15}
l70: stmIA R13!, {R13, R15}
l71: stmIA R13!, {R14}
l72: stmIA R13!, {R0, R2, R12}
l73: nop
l74: nop
l75: stmDA R13, {R9}
l76: nop
l77: stmDB R13!, {R4}
l78: nop
l79: stmIB R13!, {R9}
l80: nop
l81: nop
l82: stmDB R13!, {R2, R15}
l83: nop
l84: nop
l85: stmIB R13!, {R2}
l86: stmGEIB R13, {R3}
l87: stmDB R13!, {R1, R3, R4, R14}
l88: nop
l89: stmIA R13!, {R3, R4, R8}
l90: stmIA R13!, {R8, R10}
l91: stmDB R13!, {R0, R2, R3, R4, R7, R8, R11, R12}
l92: stmIB R13!, {R13, R15}
l93: stmIB R13!, {R3, R4, R7, R11, R14, R15}
l94: stmDA R13!, {R13, R15}
l95: nop
l96: stmIB R13, {R15}
l97: stmIB R13!, {R3, R5}
l98: nop
l99: nop
l100: stmDB R13!, {R13, R15}
l101: stmDA R13!, {R0, R2, R4, R5, R8}
l102: nop
l103: stmDA R13, {R0, R2, R6, R7, R9, R15}
l104: stmIB R13!, {R4, R12, R15}
l105: nop
l106: stmDA R13, {R1, R2, R3, R5, R7, R8, R9, R12}
l107: nop
l108: nop
l109: stmIB R13!, {R1, R15}
l110: nop
l111: nop
l112: stmDA R13!, {R0}
l113: stmIA R13!, {R8, R9, R10}
l114: stmDB R13, {R1, R9, R11, R15}
l115: stmDB R13!, {R13, R14, R15}
l116: stmNEIB R13, {R0, R6}
l117: nop
l118: stmDB R13!, {R3, R6, R7, R10}
l119: stmIA R13!, {R0, R1, R3}
l120: nop
l121: stmDA R13!, {R0, R1, R2, R4, R6, R7, R10, R11, R12, R15}
l122: stmIB R13!, {R13, R14}
l123: stmIB R13, {R1, R3, R9, R10, R11, R14}
l124: stmIA R13, {R0, R1, R2, R3, R6, R9, R10, R11, R12, R13, R14, R15}
l125: stmIA R13!, {R0, R2, R3, R5, R6, R7, R8, R10, R11, R14}
l126: stmDA R13!, {R0, R1, R5, R6}
l127: stmDA R13!, {R0, R7}
l128: stmDA R13!, {R4, R7, R11, R12, R14}
l129: stmIA R13!, {R1, R4, R8, R15}
l130: stmIA R13!, {R8}
l131: nop
l132: stmDB R13, {R2, R5, R8}
l133: stmIA R13!, {R2, R6, R9}
l134: stmIA R13!, {R0}
l135: stmPLIA R13, {R6, R15}
l136: stmIA R13!, {R13}
l137: stmDB R13!, {R0, R1, R2, R3, R6, R8, R11, R12, R14}
l138: stmIB R13, {R5, R11, R15}
l139: stmMIDB R13, {R3, R8, R14}
l140: stmIA R13!, {R1, R4, R5, R7}
l141: stmIB R13!, {R0, R1, R4, R9, R10, R12, R15}
l142: stmIB R13!, {R14}
l143: stmDB R13!, {R13}
l144: stmDB R13!, {R13, R14}
l145: stmDB R13!, {R0, R2, R9, R12, R15}
l146: stmIB R13!, {R7, R15}
l147: stmIA R13!, {R13}
l148: nop
l149: stmIA R13!, {R9, R10, R15}
l150: nop
l151: nop
l152: stmIA R13!, {R11}
l153: stmDB R13!, {R1, R3, R5, R7, R9, R12, R14}
l154: stmIA R13, {R1, R8, R9, R13, R15}
l155: stmIA R13!, {R2, R6, R7, R9, R12, R14}
l156: stmDB R13!, {R0, R1, R2, R5, R6, R7, R8, R9, R10, R11, R12, R14, R15}
l157: stmLTIB R13, {R1, R2, R3, R5, R6, R7, R8, R9, R11, R13, R14, R15}
l158: stmIB R13, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15}
l159: stmPLIA R13, {R0, R2, R5, R7, R8, R9, R10, R11, R13}
l160: stmIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R10, R12, R13, R14}
l161: stmDA R13!, {R3}
l162: nop
l163: stmIB R13!, {R2, R14}
l164: stmMIDB R13, {R2, R5}
l165: stmHIDA R13, {R11}
l166: stmDB R13!, {R9}
l167: nop
l168: nop
l169: nop
l170: stmIB R13, {R0, R2, R5, R6, R10, R11}
l171: nop
l172: stmIA R13, {R6, R8, R15}
l173: stmDA R13!, {R1}
l174: stmIB R13!, {R13, R14}
l175: stmNEDB R13, {R12}
l176: stmIB R13, {R7, R12}
l177: nop
l178: stmIA R13!, {R6, R11}
l179: stmIB R13!, {R10, R11}
l180: stmDA R13!, {R2, R4}
l181: nop
l182: stmDA R13!, {R5, R6}
l183: stmDA R13!, {R0, R3}
l184: nop
l185: stmIA R13, {R1, R3, R6, R9, R10, R12, R14}
l186: stmPLIA R13, {R5, R9}
l187: nop
l188: stmVSIB R13, {R1, R2, R5, R7, R8, R14, R15}
l189: stmHIIB R13, {R0, R5, R11}
l190: stmIA R13!, {R13}
l191: stmDB R13!, {R14}
l192: nop
l193: nop
l194: stmIA R13!, {R3, R14}
l195: stmPLIB R13, {R0, R3, R4, R7, R10, R13}
l196: stmIA R13!, {R13, R15}
l197: stmDA R13!, {R4, R5, R11}
l198: stmIA R13!, {R2, R4, R8, R15}
l199: stmDA R13, {R0, R6, R9, R11}
l200: stmIA R13!, {R13, R15}
l201: stmDB R13, {R0, R2, R9, R10, R13}
l202: stmDB R13!, {R0, R3, R4, R12, R15}
l203: stmDB R13!, {R1}
l204: stmDA R13!, {R5}
l205: nop
l206: nop
l207: stmIB R13!, {R13}
l208: nop
l209: stmIA R13!, {R13, R14, R15}
l210: nop
l211: nop
l212: stmIA R13, {R2, R3, R6, R13, R14, R15}
l213: nop
l214: stmDB R13, {R4, R6, R13, R15}
l215: stmCSIB R13, {R2, R4, R5, R6, R7, R8, R9, R14}
l216: stmDB R13!, {R9}
l217: stmDB R13!, {R2, R12}
l218: nop
l219: nop
l220: nop
l221: stmIA R13!, {R13, R14}
l222: nop
l223: nop
l224: nop
l225: stmIA R13!, {R13, R14, R15}
l226: stmDB R13!, {R13}
l227: stmDB R13, {R1, R4, R9, R11}
l228: stmIB R13!, {R0, R4, R8}
l229: stmIA R13!, {R1, R3, R5, R6, R8, R10, R11, R15}
l230: stmDA R13!, {R13, R15}
l231: stmDA R13!, {R13, R14}
l232: stmDA R13, {R12}
l233: stmIB R13, {R6, R10}
l234: nop
l235: stmDA R13!, {R6}
l236: stmDA R13!, {R13, R15}
l237: stmIA R13!, {R2, R6, R11}
l238: stmDB R13!, {R0, R2, R5, R6, R7, R8, R9, R10, R11, R15}
l239: stmIB R13!, {R5, R12, R15}
l240: stmIA R13!, {R2, R3, R14}
l241: stmIB R13!, {R2, R4, R5, R7, R8, R11, R15}
l242: stmDA R13!, {R2, R3, R4, R5, R8, R9, R10, R11, R12, R14}
l243: stmIA R13!, {R3, R4, R11, R14}
l244: stmLEIA R13, {R2, R9, R12, R14}
l245: stmDB R13!, {R3}
l246: stmIA R13!, {R13, R15}
l247: stmDB R13, {R2, R6, R7, R8, R9, R11, R12, R14, R15}
l248: stmDA R13!, {R6, R7, R14, R15}
l249: stmIB R13!, {R11}
l250: stmCSDB R13, {R6, R10, R11}
l251: nop
l252: stmDB R13!, {R6, R14}
l253: stmIB R13, {R2, R4, R6, R10, R11, R12, R15}
l254: stmIA R13, {R2, R4, R5, R7, R8, R10, R11, R13, R14}
l255: nop
l256: stmIA R13!, {R2, R8, R12}
l257: stmIA R13, {R1, R6, R7, R12, R15}
l258: stmDB R13, {R4, R5, R8, R9, R12, R13, R14, R15}
l259: stmDB R13!, {R13, R15}
l260: stmIB R13!, {R13, R15}
l261: stmLSIA R13, {R6, R11, R12}
l262: stmIA R13!, {R13}
l263: stmIB R13!, {R13, R15}
l264: stmDB R13!, {R0, R1, R4, R8, R14}
l265: stmDB R13!, {R6}
l266: stmDA R13!, {R1, R4, R7, R8, R15}
l267: stmIA R13, {R0, R1, R2, R3, R4, R6, R8, R9, R11, R12, R13, R15}
l268: nop
l269: nop
l270: nop
l271: nop
l272: nop
l273: stmIA R13!, {R0, R1, R2, R5, R8, R11, R14, R15}
l274: stmIA R13!, {R2, R3, R8, R12}
l275: stmDB R13!, {R13, R15}
l276: stmIB R13!, {R13, R15}
l277: stmIB R13!, {R14}
l278: nop
l279: stmIA R13!, {R13, R14}
l280: nop
l281: stmIA R13!, {R3}
l282: stmDA R13!, {R0, R1, R3, R4, R8, R10, R15}
l283: stmDA R13!, {R13}
l284: stmVSDA R13, {R8, R13}
l285: stmIA R13!, {R0, R1, R4, R8, R9, R10, R14}
l286: nop
l287: stmGTDB R13, {R0, R1, R5, R6, R8, R9, R11, R12, R14, R15}
l288: nop
l289: nop
l290: stmIA R13, {R3}
l291: stmIA R13!, {R15}
l292: nop
l293: nop
l294: stmDB R13, {R2, R5, R6, R7, R8, R9, R10, R11, R13}
l295: stmDB R13, {R3, R15}
l296: nop
l297: stmDA R13!, {R13}
l298: nop
l299: stmCSIB R13, {R1}
l300: stmDA R13!, {R13, R15}
l301: stmDB R13!, {R13, R14}
l302: stmCCIB R13, {R2, R5, R13, R15}
l303: stmDB R13, {R0, R1, R3, R4, R8, R9, R10, R11, R13, R14}
l304: stmDA R13!, {R13}
l305: stmDB R13!, {R1, R7, R8, R10, R12, R15}
l306: stmIB R13!, {R13, R14}
l307: stmDA R13!, {R1, R3, R5, R6, R8, R10}
l308: nop
l309: stmIB R13, {R2}
l310: nop
l311: nop
l312: stmCSIA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14, R15}
l313: stmNEIA R13, {R0, R2, R8, R13, R15}
l314: stmIB R13, {R0, R2, R3, R4, R7, R11, R12, R13, R15}
l315: stmIB R13, {R0, R1, R3, R4, R5, R6, R9, R10, R11, R14}
l316: stmEQIA R13, {R0, R1, R2, R3, R4, R7, R8, R10, R11, R12, R13, R14, R15}
l317: nop
l318: nop
l319: nop
l320: nop
l321: stmIA R13!, {R13, R14, R15}
l322: stmDB R13!, {R4, R15}
l323: stmIA R13!, {R2, R4, R10, R12, R15}
l324: nop
l325: stmIB R13!, {R13, R14}
l326: stmIA R13!, {R13, R15}
l327: stmDA R13!, {R13}
l328: stmCSDA R13, {R1, R3, R4, R6, R7, R8, R11, R12, R13}
l329: stmGTDB R13, {R7, R9}
l330: stmIA R13!, {R13, R15}
l331: stmEQIA R13, {R0, R1}
l332: stmDA R13, {R1, R2, R4, R5, R6, R7, R8, R9, R13, R14, R15}
l333: stmEQDA R13, {R3, R10}
l334: stmDA R13!, {R0, R5, R7, R9, R10, R12}
l335: stmIA R13!, {R2, R3, R4, R8, R14}
l336: stmHIDB R13, {R3, R13}
l337: stmDB R13!, {R13, R15}
l338: stmIA R13!, {R13}
l339: stmIA R13!, {R3, R9}
l340: stmGTDB R13, {R0, R2, R3, R4, R5, R6, R7, R10, R12, R13, R15}
l341: stmIB R13!, {R13}
l342: stmDB R13!, {R7, R12}
l343: stmDB R13, {R1, R4, R5, R8, R9, R11, R15}
l344: stmLEDB R13, {R0, R3, R5, R8, R9, R10, R12, R13, R14}
l345: stmDB R13, {R1, R3, R4, R5}
l346: stmDA R13, {R11, R15}
l347: stmVCDA R13, {R0, R1, R2, R5, R8, R10, R15}
l348: stmDA R13!, {R3}
l349: stmIA R13, {R3, R5, R7, R9, R10, R11}
l350: stmPLIA R13, {R0, R5, R9, R11, R12, R13}
l351: stmIA R13!, {R10}
l352: stmIB R13!, {R13}
l353: stmDB R13!, {R13, R14}
l354: stmIB R13!, {R13, R14, R15}
l355: stmIA R13!, {R1, R4, R11, R14}
l356: nop
l357: nop
l358: stmCCDA R13, {R2, R3, R5, R6, R7, R10, R11, R12, R13}
l359: nop
l360: stmVSDA R13, {R0, R1, R3, R4, R14}
l361: stmDA R13!, {R1, R4, R6, R11, R12, R14, R15}
l362: stmDB R13!, {R13, R15}
l363: stmIA R13!, {R0, R1, R2, R5, R7, R8, R9, R10}
l364: stmDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14, R15}
l365: nop
l366: nop
l367: nop
l368: nop
l369: stmDA R13!, {R13, R14, R15}
l370: stmIA R13!, {R1, R12}
l371: stmCSIB R13, {R3}
l372: stmDA R13!, {R2, R5}
l373: stmIA R13!, {R4}
l374: nop
l375: stmLSDA R13, {R0, R1, R2, R3, R4, R6, R8, R11, R14, R15}
l376: nop
l377: stmIA R13!, {R8, R14}
l378: stmDB R13!, {R4, R5, R7, R9, R10, R12, R14, R15}
l379: stmDB R13, {R11, R12}
l380: nop
l381: stmHIIB R13, {R1, R3, R4, R5, R6, R7, R8, R13, R14}
l382: stmHIDA R13, {R2, R4, R10, R12}
l383: stmDB R13, {R5, R9}
l384: stmDB R13, {R0, R2, R13, R14}
l385: stmDB R13, {R7, R8, R14}
l386: stmIB R13!, {R13, R14}
l387: stmGEDA R13, {R6, R7, R8, R10, R13}
l388: stmDA R13!, {R0, R1, R12}
l389: nop
l390: stmDA R13!, {R2}
l391: stmDA R13!, {R5, R7}
l392: nop
l393: nop
l394: stmGTDB R13, {R4, R12}
l395: stmDB R13!, {R1, R5}
l396: stmEQIB R13, {R1, R6, R11}
l397: stmDA R13!, {R15}
l398: nop
l399: stmIB R13!, {R13, R14, R15}
l400: nop
l401: stmDB R13!, {R0, R11}
l402: nop
l403: stmIA R13!, {R13, R14}
l404: nop
l405: stmDA R13!, {R3, R7}
l406: stmCSIB R13, {R2, R3, R4, R5, R7, R8, R9, R11, R12, R13, R14, R15}
l407: stmVCDA R13, {R0}
l408: stmIB R13!, {R13, R14, R15}
l409: stmDB R13!, {R3, R5, R12, R14}
l410: stmIA R13!, {R0, R3, R4, R5, R7, R8, R9, R10, R12, R14}
l411: stmIA R13!, {R7, R9, R12}
l412: nop
l413: stmCSDB R13, {R0, R1, R2, R3, R5, R6, R7, R9, R10, R11, R12}
l414: stmIB R13!, {R3, R5, R9}
l415: stmDB R13!, {R0, R1, R4, R7, R8, R9, R10, R14}
l416: nop
l417: stmDA R13!, {R5, R8}
l418: stmIA R13!, {R13}
l419: stmIB R13!, {R1, R4, R14}
l420: stmCCIA R13, {R1, R4, R7, R11}
l421: stmDB R13!, {R13, R15}
l422: stmDB R13!, {R12}
l423: stmDA R13, {R1, R5}
l424: stmCSDB R13, {R0, R2, R3, R4, R13}
l425: stmDA R13!, {R13, R14}
l426: stmIB R13!, {R0, R5, R8, R9, R12, R14}
l427: stmDA R13!, {R4, R8}
l428: stmDA R13, {R0, R6, R9, R11, R12, R13}
l429: nop
l430: stmLTIB R13, {R0, R2, R3, R4, R9, R11, R13}
l431: stmIA R13!, {R2, R6, R9, R14}
l432: stmDA R13!, {R0, R5, R7}
l433: stmIB R13!, {R1, R2, R6, R8, R15}
l434: stmCSIA R13, {R4}
l435: stmIB R13, {R0}
l436: stmIA R13!, {R0}
l437: stmDA R13!, {R1, R3, R4, R5, R7, R11, R12, R14, R15}
l438: stmDB R13!, {R1, R3, R4, R10, R14}
l439: stmIA R13!, {R1, R5, R9, R11}
l440: nop
l441: stmNEDB R13, {R0, R2, R7, R12}
l442: stmIB R13!, {R7, R8, R10}
l443: stmIA R13!, {R13, R15}
l444: stmIA R13, {R0, R6, R10}
l445: stmDB R13!, {R0, R1, R8, R14}
l446: stmIB R13!, {R13, R14, R15}
l447: stmIA R13!, {R3, R6}
l448: stmIB R13!, {R5, R9, R11}
l449: nop
l450: nop
l451: stmIA R13!, {R2}
l452: nop
l453: nop
l454: nop
l455: nop
l456: nop
l457: nop
l458: stmDA R13!, {R0, R1, R2, R3, R6, R7, R11, R12, R14, R15}
l459: stmGTDA R13, {R4, R8, R12, R14}
l460: stmIA R13!, {R13, R15}
l461: stmDB R13, {R1, R2, R4}
l462: stmIA R13, {R2, R3, R7, R9, R13, R14}
l463: stmDA R13!, {R8}
l464: stmDA R13!, {R5, R7}
l465: stmDA R13!, {R2, R3, R8, R10}
l466: stmDA R13, {R1}
l467: stmDA R13!, {R0}
l468: stmPLIA R13, {R0, R1, R2, R3, R5, R7, R11, R15}
l469: stmNEIB R13, {R0, R1, R3, R4, R7, R10, R12, R13}
l470: stmIB R13!, {R3, R5, R6, R7, R9, R11}
l471: stmGTDB R13, {R0, R2, R3, R9, R10, R15}
l472: stmMIIB R13, {R3, R10}
l473: stmIA R13!, {R13, R14, R15}
l474: stmDA R13!, {R3, R5, R6, R9, R10, R11}
l475: stmIA R13!, {R2, R3, R4, R8, R10, R12, R14, R15}
l476: nop
l477: stmDB R13, {R0, R1, R5, R6, R13, R14}
l478: stmDB R13!, {R3, R4, R6, R7, R8, R9, R10, R11, R15}
l479: stmIB R13!, {R13, R14}
l480: stmDA R13!, {R5, R7, R14}
l481: stmPLDA R13, {R1}
l482: nop
l483: nop
l484: stmIB R13!, {R13, R14, R15}
l485: nop
l486: stmNEIA R13, {R6}
l487: stmIB R13!, {R2, R7, R15}
l488: stmIA R13!, {R1, R3, R4}
l489: stmPLDB R13, {R2, R3, R9, R10, R11}
l490: stmDB R13!, {R0}
l491: stmIA R13!, {R3, R4, R5, R8, R10, R11, R14}
l492: nop
l493: nop
l494: stmDA R13!, {R13, R14}
l495: stmDA R13!, {R3, R9}
l496: stmIA R13!, {R8}
l497: stmLSDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R11, R13, R14}
l498: stmCSIA R13, {R7, R10}
l499: nop
l500: stmIA R13!, {R8, R11}
l501: stmDB R13!, {R13}
l502: stmIB R13!, {R13}
l503: stmDA R13!, {R5}
l504: stmDA R13!, {R4}
l505: stmIA R13!, {R14}
l506: stmIA R13!, {R0}
l507: nop
l508: nop
l509: stmIA R13!, {R10}
l510: nop
l511: nop
l512: nop
l513: nop
l514: stmDB R13!, {R13, R14}
l515: stmCCIA R13, {R3, R11}
l516: nop
l517: stmDB R13!, {R13}
l518: stmMIDB R13, {R3, R6, R7, R9, R10, R11, R12, R14}
l519: stmDB R13!, {R2, R3, R5, R6, R9, R10, R12, R14, R15}
l520: stmDB R13!, {R9}
l521: stmVCDA R13, {R10, R11, R12}
l522: stmPLIB R13, {R1, R2, R5, R10, R11, R13, R15}
l523: stmIA R13!, {R13}
l524: stmLTIB R13, {R10, R11, R12, R13, R15}
l525: stmDB R13!, {R15}
l526: stmIB R13!, {R13}
l527: stmIB R13!, {R13, R14, R15}
l528: stmIB R13!, {R13}
l529: stmDB R13!, {R0, R3, R4, R5, R8, R14}
l530: stmLTDA R13, {R7}
l531: stmDA R13, {R4}
l532: stmIB R13!, {R4, R8}
l533: stmDA R13!, {R13}
l534: stmVCIB R13, {R0, R2, R3, R5, R6, R9, R12, R14, R15}
l535: stmIB R13, {R1, R2, R3, R4, R5, R6, R7, R9, R11, R12, R13, R15}
l536: stmLTIA R13, {R4, R5, R8, R11, R14}
l537: stmVCIA R13, {R8}
l538: stmIB R13, {R1, R2, R3, R4, R8, R11, R13}
l539: stmIA R13!, {R13, R15}
l540: stmDB R13!, {R4, R10, R14}
l541: stmIB R13!, {R2, R4, R5, R6, R8, R11, R12, R15}
l542: stmIA R13!, {R2, R5, R6, R10, R14}
l543: nop
l544: stmEQIB R13, {R5}
l545: stmGTDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12, R13, R14}
l546: stmLSDA R13, {R1, R2, R3, R4, R5, R6, R7, R8, R10, R12, R13, R14, R15}
l547: stmIA R13!, {R7}
l548: nop
l549: stmDA R13!, {R7}
l550: stmCSIB R13, {R2}
l551: stmDB R13!, {R0}
l552: stmDA R13!, {R4, R5, R7, R10, R11, R14, R15}
l553: stmIB R13, {R2, R4, R9, R12}
l554: stmEQIA R13, {R11}
l555: stmNEDA R13, {R5, R11}
l556: stmIB R13!, {R1, R3, R7, R8, R10, R11, R12, R15}
l557: nop
l558: stmCCDA R13, {R0, R1, R3, R4, R7, R8, R10, R11, R13, R14, R15}
l559: nop
l560: stmLSDB R13, {R2, R6, R9, R11, R13, R15}
l561: nop
l562: stmLSDA R13, {R10, R11, R12, R15}
l563: stmVSDB R13, {R2, R3, R5, R9, R11}
l564: stmDA R13!, {R5}
l565: stmDB R13!, {R13}
l566: stmIB R13!, {R1, R7, R14}
l567: stmDA R13!, {R3, R5, R10}
l568: stmDA R13!, {R13, R15}
l569: stmDA R13!, {R13, R14}
l570: stmIA R13, {R5}
l571: stmIA R13!, {R1}
l572: stmIA R13, {R1, R2, R5, R8, R14, R15}
l573: stmDB R13!, {R3, R11, R14}
l574: stmIA R13, {R3, R6, R9, R10, R11, R12, R14, R15}
l575: stmDB R13!, {R0, R1, R3, R5, R11, R15}
l576: stmLEIB R13, {R0, R1, R5, R6, R7, R9, R12, R13, R15}
l577: stmGTIB R13, {R0, R1, R2, R6, R8}
l578: stmIA R13!, {R6, R9, R11, R15}
l579: stmDA R13!, {R7, R12}
l580: stmMIIA R13, {R1, R2, R3, R5, R6, R7, R9, R10, R12, R13, R14, R15}
l581: nop
l582: stmIB R13!, {R0, R6, R11, R15}
l583: stmLTDA R13, {R5, R8, R9, R11, R13}
l584: stmDA R13!, {R2, R3, R10, R12, R15}
l585: stmIB R13!, {R13, R15}
l586: stmPLDA R13, {R1, R4, R10, R12}
l587: stmDB R13!, {R0, R8}
l588: stmIB R13!, {R4, R6, R8, R9}
l589: stmDA R13!, {R0, R5}
l590: stmMIDA R13, {R15}
l591: nop
l592: stmIB R13!, {R13, R15}
l593: stmDA R13!, {R5}
l594: stmDB R13!, {R5, R6, R8, R15}
l595: stmIB R13!, {R1, R7}
l596: stmIA R13!, {R0, R4, R10}
l597: stmVSIA R13, {R0, R7, R13}
l598: nop
l599: stmDB R13!, {R2, R6}
l600: stmIA R13!, {R13, R14}
l601: stmIA R13!, {R7}
l602: stmEQIA R13, {R6, R9, R14}
l603: stmIB R13, {R4, R7}
l604: stmVSDA R13, {R1, R3, R5, R7, R11, R14}
l605: stmGTIA R13, {R0, R1, R2, R6, R9, R11}
l606: stmEQDB R13, {R8, R9}
l607: stmIA R13!, {R3, R5, R6, R7, R10, R11, R14, R15}
l608: stmCCDB R13, {R2, R3, R4, R7, R8, R10, R12, R13}
l609: stmDA R13!, {R2, R5, R10}
l610: nop
l611: stmDB R13!, {R13, R14}
l612: stmVSDB R13, {R2, R9}
l613: stmDA R13!, {R13}
l614: stmDA R13!, {R1, R3, R5, R8, R9, R10, R14}
l615: stmDA R13!, {R0, R12}
l616: nop
l617: stmIB R13!, {R9, R11}
l618: nop
l619: stmIA R13!, {R13, R14, R15}
l620: stmIB R13!, {R0, R2, R3, R4, R7, R8, R10}
l621: stmMIDA R13, {R0, R1, R2, R3, R7, R9, R11, R12, R14, R15}
l622: stmIB R13!, {R3}
l623: stmVCDB R13, {R1, R2, R3, R11, R12, R13}
l624: stmDB R13!, {R13}
l625: stmIA R13, {R4, R5, R6}
l626: stmDA R13!, {R13, R15}
l627: stmIB R13!, {R11}
l628: nop
l629: stmIB R13!, {R9}
l630: stmCCDB R13, {R3, R5, R7, R8, R9, R12, R14}
l631: stmDB R13!, {R4, R6, R8, R15}
l632: stmVCDA R13, {R9, R15}
l633: stmVCIA R13, {R8, R9}
l634: stmIA R13!, {R4, R6}
l635: stmDB R13!, {R2, R5, R6, R11}
l636: stmIB R13!, {R13}
l637: stmDB R13!, {R5, R6, R7, R10, R14}
l638: stmDA R13, {R3}
l639: stmCCDA R13, {R14, R15}
l640: stmDB R13!, {R11, R15}
l641: nop
l642: nop
l643: nop
l644: nop
l645: stmIA R13, {R7, R10, R13}
l646: stmIB R13!, {R13, R14}
l647: nop
l648: stmDA R13!, {R8}
l649: nop
l650: stmIA R13!, {R13, R14, R15}
l651: stmIB R13!, {R13, R15}
l652: stmPLIA R13, {R0, R2, R4, R6, R8, R11, R13, R15}
l653: stmLTIB R13, {R2, R3, R6, R7, R8, R9, R10, R13, R15}
l654: stmIB R13!, {R7, R14}
l655: stmEQIA R13, {R9}
l656: stmDA R13!, {R13}
l657: stmIB R13!, {R13}
l658: nop
l659: stmDA R13!, {R7, R8}
l660: stmIB R13!, {R2, R3, R5, R8, R15}
l661: stmGEIA R13, {R14}
l662: nop
l663: nop
l664: nop
l665: stmVCDB R13, {R0, R3, R8}
l666: stmIA R13!, {R13, R14}
l667: stmLEIA R13, {R1}
l668: stmIB R13!, {R13, R15}
l669: nop
l670: nop
l671: stmDA R13, {R1}
l672: stmGTDA R13, {R0, R6, R9, R10, R11, R12, R13, R14, R15}
l673: stmIB R13!, {R8}
l674: stmDB R13!, {R13}
l675: nop
l676: stmCSDB R13, {R1, R2, R3, R5, R6, R7, R9, R10, R11, R12, R13, R15}
l677: stmIA R13, {R4}
l678: stmIB R13!, {R7}
l679: stmLSDB R13, {R3, R5, R9, R10, R11, R15}
l680: stmDA R13!, {R13, R14, R15}
l681: nop
l682: stmLTDA R13, {R2, R6, R10, R13, R15}
l683: stmDA R13!, {R0, R1, R5, R6, R7, R9, R14}
l684: stmIA R13!, {R3, R4, R5, R11, R12, R15}
l685: stmIB R13!, {R0, R8, R12}
l686: stmDA R13!, {R3, R10}
l687: stmGTIB R13, {R11}
l688: nop
l689: stmDA R13, {R0, R1, R2, R3, R5, R6, R8, R9, R10, R12, R13, R14}
l690: nop
l691: stmIA R13, {R14}
l692: stmDA R13!, {R13, R14}
l693: nop
l694: stmDA R13!, {R13, R15}
l695: stmIA R13!, {R1, R2, R4, R14}
l696: stmIB R13, {R8, R13}
l697: stmDB R13!, {R13}
l698: nop
l699: stmDA R13!, {R0, R1, R3, R6, R7, R8, R10, R12, R14}
l700: stmLEIA R13, {R0, R1, R2, R3, R4, R5, R6, R10, R11, R12, R13, R15}
l701: stmDA R13, {R8, R11, R13}
l702: stmDA R13!, {R5, R9, R15}
l703: stmIB R13!, {R13, R14}
l704: nop
l705: stmIB R13!, {R13}
l706: stmIB R13, {R0, R1, R2, R3, R4, R5, R7, R8, R9, R11, R12, R14, R15}
l707: stmDA R13, {R0, R3}
l708: stmDA R13!, {R1, R12}
l709: stmIB R13!, {R13, R14, R15}
l710: stmDA R13, {R3, R4, R9}
l711: stmIB R13!, {R2, R3, R6, R7, R8, R10, R12, R15}
l712: stmIA R13!, {R5, R11, R15}
l713: stmDB R13!, {R13, R14, R15}
l714: nop
l715: stmDB R13, {R1, R2, R6, R7, R11, R15}
l716: stmIB R13!, {R0, R6}
l717: stmIB R13!, {R1, R3}
l718: stmDA R13!, {R13, R14, R15}
l719: stmDA R13!, {R1, R7}
l720: stmIB R13!, {R3, R6, R7, R14, R15}
l721: nop
l722: nop
l723: nop
l724: nop
l725: nop
l726: nop
l727: nop
l728: stmDA R13!, {R13, R14}
l729: stmDB R13!, {R3, R8}
l730: stmVSDA R13, {R2, R3, R6}
l731: stmHIDA R13, {R1, R3, R4, R9, R10, R11, R13, R15}
l732: nop
l733: stmIB R13!, {R4, R6}
l734: stmDA R13!, {R13, R14, R15}
l735: stmIB R13!, {R2, R3, R4, R9, R12}
l736: nop
l737: nop
l738: stmDB R13!, {R1}
l739: stmDA R13, {R0, R3, R4, R6, R7, R8, R9, R10, R11, R13, R14, R15}
l740: stmDA R13!, {R0, R12}
l741: stmDB R13!, {R12}
l742: stmDA R13!, {R2, R3, R4, R5, R6, R8, R9, R10, R14, R15}
l743: stmDA R13!, {R4}
l744: stmCSIB R13, {R0, R1, R2, R3, R5, R6, R8, R9, R10, R11, R12, R13, R14, R15}
l745: stmIB R13!, {R13}
l746: stmIB R13!, {R0, R1, R2, R4, R5, R6, R8, R9, R10, R11, R14, R15}
l747: nop
l748: nop
l749: stmDB R13!, {R13, R15}
l750: stmDB R13!, {R1, R3, R10, R14}
l751: stmDA R13!, {R2, R3, R6, R8, R11}
l752: nop
l753: stmIA R13!, {R2, R5, R6, R8, R9, R11, R12, R14, R15}
l754: stmEQDB R13, {R0, R1, R3, R4, R5, R7, R8, R9, R12, R13}
l755: stmDA R13!, {R3, R5, R7, R14, R15}
l756: stmLSIB R13, {R2, R7, R8, R11, R15}
l757: stmCSDA R13, {R1, R2, R13, R15}
l758: nop
l759: stmDA R13!, {R2, R3, R8, R10, R14}
l760: stmIB R13!, {R13, R14, R15}
l761: stmDA R13!, {R3, R5, R7}
l762: nop
l763: stmIA R13!, {R13}
l764: stmVSIB R13, {R5, R7, R8, R12, R13, R14, R15}
l765: nop
l766: nop
l767: stmIA R13!, {R14}
l768: stmDB R13!, {R0, R2, R5, R11}
l769: stmLTIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R15}
l770: stmIA R13!, {R13, R14, R15}
l771: stmDB R13!, {R4}
l772: stmNEDB R13, {R7, R9}
l773: stmDB R13!, {R10}
l774: stmCSDB R13, {R9}
l775: stmIA R13, {R2, R3, R5, R6, R9, R12, R14}
l776: stmIB R13!, {R13, R14, R15}
l777: stmIB R13!, {R13, R14, R15}
l778: stmDB R13!, {R1, R5, R6, R11, R12}
l779: stmDA R13!, {R15}
l780: stmVSIA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R13, R14, R15}
l781: nop
l782: stmDB R13!, {R8}
l783: stmIB R13!, {R2, R9}
l784: stmIB R13!, {R0, R1, R3, R5, R7, R8, R9, R10, R11, R12}
l785: stmDA R13!, {R13, R15}
l786: stmDA R13!, {R13}
l787: stmIB R13!, {R9, R14}
l788: stmDA R13!, {R6}
l789: stmIB R13!, {R7}
l790: stmCSIA R13, {R0, R2, R4, R13}
l791: stmDB R13!, {R11}
l792: stmDA R13, {R1, R2, R7, R9, R14, R15}
l793: stmDA R13!, {R13}
l794: stmDA R13!, {R3, R4, R6, R7, R8, R9, R11, R12}
l795: stmDA R13!, {R10}
l796: stmIB R13!, {R7}
l797: nop
l798: stmIA R13!, {R13, R14, R15}
l799: stmLSIA R13, {R5, R10, R12, R14, R15}
l800: stmIA R13!, {R13, R15}
l801: stmIA R13!, {R13}
l802: stmDB R13, {R0, R3, R6, R7, R10, R13, R15}
l803: stmDB R13!, {R4, R7, R14}
l804: stmIA R13!, {R13, R15}
l805: stmDB R13!, {R4, R6}
l806: stmIB R13, {R0, R4, R5, R6, R7, R9, R10, R13, R14, R15}
l807: nop
l808: stmIB R13!, {R0, R2, R7, R9, R10, R11, R12, R14, R15}
l809: stmDB R13!, {R13}
l810: stmIA R13!, {R9}
l811: stmIB R13!, {R5, R7, R12}
l812: stmMIDB R13, {R0, R1, R2, R4, R5, R6, R7, R11, R12, R14, R15}
l813: stmDA R13!, {R1, R3, R4, R5, R8, R9, R10, R11, R12, R14, R15}
l814: stmDA R13!, {R3, R6, R8}
l815: stmIB R13!, {R0, R1}
l816: stmDB R13!, {R3, R6, R9, R11}
l817: stmIB R13!, {R0, R11, R12}
l818: nop
l819: stmEQDB R13, {R6, R7}
l820: nop
l821: stmVCDB R13, {R9}
l822: stmIB R13!, {R13}
l823: nop
l824: nop
l825: nop
l826: stmVSDA R13, {R2, R12, R15}
l827: stmIA R13!, {R13, R15}
l828: stmIA R13!, {R2, R4, R8, R10, R12}
l829: stmIA R13!, {R4, R8, R9, R10, R12}
l830: nop
l831: nop
l832: nop
l833: stmLEDB R13, {R4, R6, R8, R13}
l834: nop
l835: stmDA R13, {R0, R1, R2, R4, R5, R6, R7, R9, R12, R13, R14, R15}
l836: stmVSDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R12, R13, R14, R15}
l837: stmDB R13!, {R13}
l838: stmDA R13!, {R13, R14, R15}
l839: stmCSIA R13, {R0}
l840: stmNEDB R13, {R6, R10, R11}
l841: nop
l842: stmDB R13, {R6}
l843: stmDA R13, {R1, R11, R14}
l844: nop
l845: stmIB R13!, {R11}
l846: stmDB R13, {R0, R1, R2, R6, R8, R9, R10, R11, R14, R15}
l847: stmIB R13!, {R12}
l848: stmMIIA R13, {R14}
l849: nop
l850: stmDA R13!, {R13, R14, R15}
l851: stmDA R13!, {R8, R9, R11, R14, R15}
l852: stmDB R13!, {R0, R1, R2, R5, R8, R15}
l853: nop
l854: stmIA R13, {R1, R2, R4, R5, R6, R10, R11, R13, R14, R15}
l855: stmHIIB R13, {R3, R4, R5, R11, R14}
l856: stmIB R13!, {R13, R14, R15}
l857: stmIA R13!, {R0, R9, R10, R14}
l858: stmDB R13, {R12, R13}
l859: stmIA R13!, {R0, R9, R10}
l860: stmIB R13!, {R11}
l861: stmIA R13!, {R0, R4, R8, R15}
l862: stmIA R13, {R15}
l863: nop
l864: nop
l865: stmDB R13, {R5}
l866: nop
l867: stmDB R13!, {R13}
l868: stmMIDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R13, R14}
l869: stmIB R13!, {R6, R10}
l870: stmDA R13!, {R13}
l871: stmIB R13!, {R14}
l872: stmCCDB R13, {R3, R5, R12}
l873: stmDA R13!, {R13, R14, R15}
l874: stmDA R13, {R3, R8, R11}
l875: stmIB R13!, {R13}
l876: stmDA R13!, {R12}
l877: stmDB R13!, {R2, R3, R4, R5, R7, R10, R11, R12, R14}
l878: stmIA R13!, {R10, R14, R15}
l879: nop
l880: stmIB R13!, {R2, R9, R11, R14}
l881: nop
l882: stmDB R13!, {R13, R14}
l883: nop
l884: stmDA R13!, {R13}
l885: stmCCDB R13, {R2, R4, R5, R6, R8, R10, R12, R14}
l886: stmIA R13!, {R1, R12, R15}
l887: stmIA R13!, {R4, R8, R9}
l888: stmDA R13!, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R10, R12, R14, R15}
l889: nop
l890: stmIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14, R15}
l891: stmIB R13, {R4, R8, R13}
l892: nop
l893: stmIA R13!, {R13, R14}
l894: stmIB R13!, {R2, R3, R4}
l895: stmDB R13!, {R1}
l896: stmIB R13!, {R2, R4, R9, R14}
l897: stmDA R13!, {R0}
l898: stmIA R13!, {R2, R4, R5, R6, R11, R12}
l899: stmGTDB R13, {R2, R3, R4, R7, R10, R13}
l900: stmDB R13, {R0, R1, R4, R5, R6, R7, R8, R9, R10, R13, R14, R15}
l901: stmDA R13!, {R1, R14}
l902: stmGTIA R13, {R12}
l903: stmDB R13!, {R13, R14, R15}
l904: stmIA R13!, {R6, R12}
l905: stmDA R13, {R7, R9, R15}
l906: stmDA R13!, {R2, R5, R6, R7, R9, R10, R11, R14}
l907: stmCCDA R13, {R4, R7}
l908: stmDB R13!, {R13}
l909: stmIB R13, {R0, R5, R10, R11, R12, R13}
l910: stmDA R13!, {R14}
l911: stmDB R13!, {R12}
l912: stmIA R13!, {R2, R4, R5, R14}
l913: stmDA R13!, {R0, R10}
l914: stmDB R13!, {R1, R4}
l915: nop
l916: stmLSIA R13, {R0, R1, R2, R3, R6, R7, R10, R11, R12, R13, R14}
l917: stmIB R13!, {R13, R14, R15}
l918: stmVSIA R13, {R0}
l919: stmDB R13!, {R0, R4, R10}
l920: stmIA R13, {R11, R14}
l921: nop
l922: nop
l923: nop
l924: nop
l925: stmEQIA R13, {R7, R11, R12, R13, R14}
l926: stmIB R13, {R0, R1, R3, R4, R6, R8, R9, R11, R12, R13, R14}
l927: nop
l928: nop
l929: nop
l930: nop
l931: nop
l932: nop
l933: stmIB R13!, {R13}
l934: nop
l935: stmIA R13!, {R13, R14, R15}
l936: stmDB R13!, {R2}
l937: nop
l938: nop
l939: stmIA R13!, {R13}
l940: stmIA R13, {R0, R1, R2, R4, R5, R7, R8, R9, R10, R11, R12, R13}
l941: stmDA R13, {R2, R10, R12}
l942: stmDA R13!, {R6, R12}
l943: stmIB R13!, {R2, R7, R8, R10, R14}
l944: stmIA R13!, {R1, R6, R9, R12, R14, R15}
l945: stmIB R13!, {R12}
l946: stmIB R13!, {R2}
l947: stmIA R13!, {R14}
l948: nop
l949: nop
l950: nop
l951: nop
l952: nop
l953: nop
l954: stmDB R13!, {R0, R1, R2, R5, R7, R8, R14, R15}
l955: stmDB R13!, {R13, R14, R15}
l956: stmVSIA R13, {R1, R9, R13}
l957: stmIB R13!, {R13, R14, R15}
l958: stmDA R13!, {R0, R1, R5, R12, R14}
l959: stmIB R13!, {R13, R14}
l960: stmDB R13!, {R11}
l961: stmDA R13!, {R6}
l962: stmIA R13!, {R13, R15}
l963: stmVCDA R13, {R1, R15}
l964: stmIB R13!, {R9, R14}
l965: stmDB R13!, {R3, R5, R7, R9, R10}
l966: stmIB R13!, {R0, R15}
l967: stmNEDB R13, {R9}
l968: nop
l969: stmIA R13!, {R13, R14, R15}
l970: stmPLDA R13, {R0, R1, R4, R10}
l971: stmCCIB R13, {R9}
l972: stmIA R13!, {R13, R14, R15}
l973: stmIA R13!, {R13}
l974: stmDB R13, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R13, R14}
l975: stmHIIB R13, {R0, R2, R15}
l976: stmDA R13!, {R0, R1, R7, R8, R9, R10, R11, R15}
l977: stmIA R13!, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R10, R12, R14, R15}
l978: stmGTDB R13, {R2, R6, R10, R14}
l979: nop
l980: nop
l981: nop
l982: nop
l983: stmDA R13, {R8, R9, R10, R12, R14, R15}
l984: nop
l985: nop
l986: stmDB R13!, {R13, R14, R15}
l987: stmIA R13, {R5, R8}
l988: stmLTDB R13, {R9, R14}
l989: stmDA R13, {R1, R5, R6, R9, R12}
l990: stmDB R13!, {R13}
l991: nop
l992: stmDA R13!, {R0, R3, R4, R5}
l993: stmIB R13!, {R13, R15}
l994: stmIA R13!, {R0, R3, R5, R9, R11, R14}
l995: stmDB R13!, {R13}
l996: nop
l997: stmDB R13!, {R2, R3, R7, R11, R12}
l998: stmIB R13!, {R1, R8, R12}
l999: stmDA R13!, {R0, R2, R3, R5, R6, R7, R8, R10, R11, R12, R14, R15}
l1000: stmIA R13!, {R13}
end: b end

