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
val1: .word 1194447849
next1:ldr R2, val2
b next2
val2: .word 3817650958
next2:ldr R3, val3
b next3
val3: .word 2890499859
next3:ldr R4, val4
b next4
val4: .word 3304095131
next4:ldr R5, val5
b next5
val5: .word 2111657245
next5:ldr R6, val6
b next6
val6: .word 1419971873
next6:ldr R7, val7
b next7
val7: .word 1846836731
next7:ldr R8, val8
b next8
val8: .word 2433630608
next8:ldr R9, val9
b next9
val9: .word 4011182203
next9:ldr R10, val10
b next10
val10: .word 1094493143
next10:ldr R11, val11
b next11
val11: .word 2265262559
next11:ldr R12, val12
b next12
val12: .word 1457524629
next12:ldr R14, val14
b next14
val14: .word 3439753668

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 4025870492
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 3784134079
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 806050140
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 1606876024
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 1366025232
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 2911897001
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 662742343
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 1674714442
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 392782159
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 3260287914
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 1691748828
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 4274720289
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 1659935816
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 897409741
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 1368286588
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 1171767767
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 1363681172
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 3090432993
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 3693968287
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 1002016098
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 1697238443
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: stmDA R13!, {R13, R14}
l2: stmDA R13!, {R13, R15}
l3: stmIB R13!, {R4}
l4: stmCCIB R13, {R2, R6}
l5: stmDA R13!, {R13, R14, R15}
l6: stmDB R13!, {R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14, R15}
l7: stmMIIA R13, {R2, R4, R5, R7, R10, R11, R12, R15}
l8: stmIB R13!, {R2, R7, R10, R11, R12}
l9: stmDA R13!, {R0, R4, R5, R10, R15}
l10: stmHIDA R13, {R1, R2, R3, R4, R6, R9, R10, R11, R12, R14}
l11: stmIB R13!, {R2, R6, R11, R15}
l12: stmIB R13!, {R13, R15}
l13: stmIB R13!, {R0, R1, R12}
l14: stmIA R13, {R4, R11}
l15: stmDB R13, {R2, R3, R6, R12, R13, R15}
l16: stmIB R13!, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14, R15}
l17: stmDB R13!, {R13, R14, R15}
l18: stmLEDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R12, R13, R14, R15}
l19: stmCSIA R13, {R15}
l20: stmIB R13!, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R14}
l21: stmIB R13!, {R1, R4, R14}
l22: stmVCIA R13, {R1, R7, R10}
l23: stmCCDA R13, {R0, R2, R3, R5, R6, R7, R8, R9, R10, R11, R13, R14, R15}
l24: stmDA R13!, {R2}
l25: stmVCDA R13, {R2, R5, R7, R15}
l26: stmIA R13!, {R1, R2, R7, R11, R12, R14, R15}
l27: stmDA R13, {R7, R11, R14}
l28: stmIA R13!, {R8}
l29: stmDB R13!, {R0, R1, R7, R9, R10}
l30: stmIA R13!, {R13}
l31: stmIA R13, {R1, R2, R4, R6, R8, R9, R12, R13}
l32: stmGEIA R13, {R11, R14}
l33: stmLEIB R13, {R6, R10, R11, R12, R15}
l34: stmIB R13!, {R6, R10}
l35: stmDA R13!, {R13, R15}
l36: stmLTDA R13, {R3, R4, R15}
l37: stmIB R13!, {R2, R5, R9, R10}
l38: stmIA R13!, {R15}
l39: stmDA R13!, {R13, R14, R15}
l40: stmIB R13!, {R3, R12}
l41: stmDB R13, {R2, R7, R8, R11, R13}
l42: stmDA R13!, {R13, R15}
l43: stmLTIB R13, {R1, R6, R9, R11, R12}
l44: stmDA R13!, {R3, R4, R9, R11, R15}
l45: stmIA R13!, {R14}
l46: stmDA R13!, {R13}
l47: stmDB R13!, {R13, R14, R15}
l48: stmDA R13!, {R5}
l49: stmDB R13!, {R7, R11}
l50: stmDA R13!, {R1, R2, R8}
l51: stmIB R13!, {R13, R14, R15}
l52: stmDA R13!, {R7, R11}
l53: stmHIIB R13, {R1, R2, R3, R4, R5, R6, R7, R8, R10, R11, R12, R13, R14, R15}
l54: stmIA R13!, {R4, R14}
l55: stmDB R13, {R0, R4, R9, R11, R12, R14}
l56: stmEQIA R13, {R0, R1, R3, R4, R6, R9}
l57: stmDB R13!, {R1, R8, R11, R14}
l58: stmLSDA R13, {R5, R6, R7, R8, R9, R10, R11, R13}
l59: stmMIDB R13, {R0, R1, R3}
l60: stmHIIA R13, {R1, R3, R6, R8, R9, R10, R12, R13, R14, R15}
l61: stmDA R13!, {R0, R1, R2, R3, R6, R12}
l62: stmDB R13!, {R1, R2, R6, R8, R9, R10, R11}
l63: stmIB R13!, {R5, R9, R15}
l64: stmNEDA R13, {R1, R6}
l65: stmIB R13!, {R2, R9}
l66: stmIB R13!, {R13, R14, R15}
l67: stmIA R13!, {R13, R14, R15}
l68: stmIA R13!, {R1, R3, R4, R9, R10, R11, R12, R14}
l69: stmIB R13!, {R8}
l70: stmDA R13!, {R13, R14, R15}
l71: stmCCIB R13, {R2, R13}
l72: stmIA R13!, {R12}
l73: stmDB R13!, {R13, R15}
l74: stmDB R13!, {R1, R3, R6, R9, R11}
l75: stmDA R13!, {R7, R8, R10, R14, R15}
l76: stmDA R13!, {R13}
l77: stmDB R13!, {R0, R5, R6, R7, R10}
l78: stmIA R13!, {R13}
l79: stmDB R13!, {R10}
l80: stmIB R13, {R10}
l81: stmDA R13!, {R7}
l82: stmIA R13!, {R13, R14, R15}
l83: stmDB R13!, {R8, R15}
l84: stmIB R13!, {R13}
l85: stmDA R13!, {R13}
l86: stmIA R13, {R0, R2, R4, R5, R7, R8, R11, R13}
l87: stmDA R13!, {R0, R2, R4, R5, R7, R8, R9, R15}
l88: stmIB R13!, {R13}
l89: stmIB R13!, {R3, R4, R5, R9, R10}
l90: stmIA R13!, {R0, R12}
l91: stmDB R13!, {R13, R15}
l92: stmIB R13, {R4, R8, R10, R12, R13, R15}
l93: stmIA R13!, {R0, R5}
l94: stmDA R13!, {R0, R5, R7, R8, R15}
l95: stmGEIA R13, {R1, R2, R8, R13}
l96: stmIB R13!, {R1, R4}
l97: stmLSDB R13, {R7}
l98: stmIA R13!, {R14}
l99: stmDB R13!, {R13, R14}
l100: stmIA R13!, {R0, R8, R9}
l101: stmIB R13!, {R13}
l102: stmNEDA R13, {R4, R7, R10, R12}
l103: stmDA R13!, {R2, R3, R8, R15}
l104: stmDB R13!, {R8}
l105: stmDB R13, {R2, R5, R8, R9, R15}
l106: stmDA R13!, {R13, R15}
l107: stmIA R13!, {R13}
l108: stmDA R13!, {R13, R15}
l109: stmDB R13!, {R6}
l110: stmNEIA R13, {R0, R1, R3, R4, R5, R6, R8, R9, R10, R11, R12, R13, R14, R15}
l111: stmDB R13!, {R13, R14}
l112: stmVSDB R13, {R8, R12}
l113: stmVCDB R13, {R1, R5, R10, R11}
l114: stmIB R13!, {R13, R14, R15}
l115: stmDB R13!, {R13}
l116: stmDA R13!, {R13, R15}
l117: stmDA R13!, {R0, R1, R5, R9}
l118: stmIA R13, {R0, R2, R5, R6, R7, R10, R14}
l119: stmDA R13!, {R13, R15}
l120: stmIB R13, {R1, R13}
l121: stmVSIB R13, {R4, R8, R12, R13, R15}
l122: stmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R14, R15}
l123: stmDB R13!, {R8}
l124: stmIA R13!, {R0, R4, R14, R15}
l125: stmIB R13!, {R13, R14, R15}
l126: stmDB R13!, {R2, R6, R9, R15}
l127: stmIB R13!, {R13, R14, R15}
l128: stmDA R13, {R3, R9, R13}
l129: stmLEIA R13, {R1, R5, R6, R7, R9, R11, R13, R14, R15}
l130: stmIA R13!, {R0, R5, R11, R12}
l131: stmIB R13!, {R12}
l132: stmIB R13!, {R13}
l133: stmDA R13!, {R13, R14, R15}
l134: stmDB R13!, {R13}
l135: stmIB R13!, {R0, R4}
l136: stmIB R13!, {R9}
l137: stmIB R13!, {R0}
l138: stmDB R13!, {R5, R7, R14, R15}
l139: stmDA R13!, {R0, R1, R3, R6, R7, R11, R14}
l140: stmLTIB R13, {R1, R4, R5, R10}
l141: stmIA R13!, {R0, R3, R4, R7}
l142: stmDA R13!, {R4, R9}
l143: stmLEDA R13, {R0, R2, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l144: stmIA R13, {R5, R7, R9, R12}
l145: stmDB R13!, {R1, R2, R6, R14, R15}
l146: stmDA R13!, {R14}
l147: stmPLIB R13, {R0, R3, R5, R6, R15}
l148: stmIA R13!, {R13, R14, R15}
l149: stmIB R13, {R0, R1, R4, R5, R9, R11, R12, R13, R14}
l150: stmDA R13!, {R13, R14}
l151: stmDA R13!, {R3, R5, R7, R14}
l152: stmMIDA R13, {R0, R1, R5, R6, R11}
l153: stmDA R13!, {R3, R8, R15}
l154: stmIB R13!, {R0, R3, R5, R7, R8, R10, R11, R12, R14, R15}
l155: stmIA R13, {R4, R11}
l156: stmIA R13!, {R3, R8}
l157: stmDB R13!, {R13, R14}
l158: stmLEIA R13, {R10, R11, R12}
l159: stmDA R13, {R0, R2, R7, R8, R9, R10, R11, R13, R14, R15}
l160: stmDA R13, {R2, R3, R6, R7, R8}
l161: stmIA R13!, {R13, R14}
l162: stmPLDB R13, {R3, R4, R8, R11, R15}
l163: stmIB R13, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R10, R11, R12, R13, R14}
l164: stmDA R13!, {R13, R14, R15}
l165: stmVSIB R13, {R12}
l166: stmDA R13!, {R8, R14}
l167: stmIA R13!, {R2}
l168: stmIB R13!, {R0, R5, R11}
l169: stmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R11, R12, R15}
l170: stmDA R13!, {R7}
l171: stmDA R13!, {R6}
l172: stmIA R13!, {R13, R14, R15}
l173: stmPLIB R13, {R0, R2, R3, R4, R5, R6, R7, R8, R10, R11, R12, R14, R15}
l174: stmIB R13!, {R7}
l175: stmEQDB R13, {R0, R1, R2, R3, R4, R6, R8, R10, R11, R13, R14, R15}
l176: stmDA R13!, {R6, R7}
l177: stmHIDB R13, {R2, R11, R12}
l178: stmVCIB R13, {R1, R3, R5, R7, R8, R12, R14, R15}
l179: stmIA R13!, {R15}
l180: stmIB R13, {R0, R3, R6, R7}
l181: stmNEDB R13, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R13, R14}
l182: stmIA R13!, {R13, R15}
l183: stmDB R13!, {R13}
l184: stmDB R13!, {R5}
l185: stmIB R13!, {R1, R4, R5, R6}
l186: stmLTIB R13, {R0, R1, R5, R10, R11, R13, R15}
l187: stmHIIB R13, {R7}
l188: stmMIIB R13, {R2, R9}
l189: stmIB R13!, {R1, R5}
l190: stmIA R13!, {R4, R6}
l191: stmDA R13!, {R13, R14, R15}
l192: stmIB R13!, {R2, R10}
l193: stmIB R13!, {R12}
l194: stmDB R13!, {R5, R10}
l195: stmDA R13!, {R0, R1, R4, R11}
l196: stmCSDA R13, {R4, R9, R14}
l197: stmDA R13!, {R13, R15}
l198: stmIB R13!, {R13, R14, R15}
l199: stmCSIA R13, {R14}
l200: stmCCIA R13, {R7, R10, R11, R13}
l201: stmDA R13!, {R13, R15}
l202: stmDA R13!, {R1, R2, R6, R9, R10, R11, R12, R15}
l203: stmGTDB R13, {R12}
l204: stmNEIA R13, {R0, R1, R3, R4, R5, R7, R8, R10, R11, R13, R14, R15}
l205: stmDB R13!, {R3, R4, R5, R6, R7, R8, R9, R10, R14, R15}
l206: stmDA R13!, {R8}
l207: stmIB R13, {R6, R8, R15}
l208: stmIB R13!, {R0, R1, R2, R3, R4, R5, R8, R11, R12, R15}
l209: stmLEDA R13, {R2, R3, R5, R9, R11, R14}
l210: stmIB R13!, {R13}
l211: stmIB R13!, {R6, R7, R9, R10}
l212: stmDB R13, {R14, R15}
l213: stmIA R13!, {R2, R4, R12}
l214: stmDB R13, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15}
l215: stmDA R13!, {R13}
l216: stmCSIA R13, {R0, R1, R2, R3, R4, R5, R6, R10, R11, R13, R14, R15}
l217: stmIB R13!, {R13, R15}
l218: stmLTIB R13, {R3, R10}
l219: stmDB R13!, {R5, R7, R15}
l220: stmIB R13, {R2}
l221: stmHIIA R13, {R10}
l222: stmDA R13!, {R8}
l223: stmDA R13!, {R2, R6, R7, R12, R15}
l224: stmIA R13!, {R13, R15}
l225: stmCCDB R13, {R4, R5, R9, R10, R12, R13, R15}
l226: stmDA R13!, {R13}
l227: stmIB R13, {R0, R6, R11, R12}
l228: stmDB R13!, {R1, R4, R6, R7, R8, R10, R12, R14}
l229: stmEQIA R13, {R0, R3, R5, R12, R13}
l230: stmIA R13!, {R0, R2, R4, R6, R9, R11, R12, R14, R15}
l231: stmMIIA R13, {R3, R6, R13}
l232: stmDB R13!, {R2, R3, R7, R14}
l233: stmDB R13!, {R2, R5, R6, R7, R8, R10, R15}
l234: stmDB R13, {R11}
l235: stmIA R13!, {R3, R8}
l236: stmGTDB R13, {R0, R1, R2, R4, R6, R7, R11}
l237: stmDA R13!, {R0}
l238: stmIB R13!, {R9, R11}
l239: stmDB R13!, {R7}
l240: stmIA R13!, {R9, R15}
l241: stmDA R13!, {R13, R15}
l242: stmDB R13, {R13}
l243: stmPLIA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15}
l244: stmPLDA R13, {R0, R1, R2, R3, R4, R9, R11, R12, R13, R14, R15}
l245: stmDB R13!, {R0, R4, R5, R7, R8}
l246: stmIA R13, {R0, R1, R2, R3, R5, R6, R9, R11, R13}
l247: stmDA R13!, {R5, R8, R12, R14}
l248: stmIA R13!, {R0, R1, R4, R7, R9, R10, R11, R12, R15}
l249: stmDB R13!, {R13, R14, R15}
l250: stmNEDB R13, {R0, R2, R3, R4, R8, R15}
l251: stmDA R13, {R7, R8, R10, R11, R12}
l252: stmIB R13!, {R13, R14, R15}
l253: stmNEIB R13, {R0, R3, R7, R8, R10, R12, R15}
l254: stmDB R13!, {R2}
l255: stmIB R13, {R6, R11, R13}
l256: stmIA R13!, {R11}
l257: stmDA R13!, {R13, R14}
l258: stmIB R13!, {R10}
l259: stmDB R13, {R4, R9, R11, R14}
l260: stmLEDB R13, {R2, R5, R10, R11, R13, R15}
l261: stmDB R13!, {R4, R10}
l262: stmIA R13!, {R13, R15}
l263: stmIA R13!, {R13}
l264: stmDA R13!, {R0, R5}
l265: stmDA R13, {R4}
l266: stmIB R13!, {R0, R1, R3, R4, R6, R7, R8, R9, R10, R11, R14}
l267: stmIA R13!, {R1, R3, R7, R9, R10, R14}
l268: stmIB R13!, {R8}
l269: stmDA R13!, {R13, R14, R15}
l270: stmDA R13!, {R10}
l271: stmDB R13, {R0, R2, R3, R4, R5, R7, R10, R12}
l272: stmIA R13!, {R13, R14, R15}
l273: stmDB R13!, {R4, R7, R8}
l274: stmIA R13, {R4}
l275: stmDB R13!, {R13}
l276: stmDA R13, {R1, R2, R4, R9}
l277: stmDA R13!, {R4}
l278: stmDA R13!, {R15}
l279: stmIB R13!, {R1, R5, R15}
l280: stmDB R13!, {R3, R12, R14}
l281: stmIA R13!, {R13, R14}
l282: stmIA R13!, {R13, R14, R15}
l283: stmIB R13, {R4, R6}
l284: stmDA R13, {R0, R5}
l285: stmVCDB R13, {R8, R9}
l286: stmIA R13!, {R13, R14, R15}
l287: stmIA R13!, {R13}
l288: stmIB R13!, {R13}
l289: stmDA R13!, {R1, R3, R6, R7, R8, R9, R15}
l290: stmDB R13!, {R3}
l291: stmIA R13!, {R13, R14, R15}
l292: stmIB R13!, {R13, R14}
l293: stmDB R13!, {R0, R2, R15}
l294: stmIA R13!, {R2, R4, R8, R10, R12}
l295: stmDB R13!, {R13}
l296: stmDA R13!, {R9, R10}
l297: stmDA R13!, {R9}
l298: stmDA R13!, {R6, R8, R9}
l299: stmIA R13!, {R13, R14, R15}
l300: stmDB R13!, {R5, R6, R12}
l301: stmIB R13!, {R3, R7}
l302: stmIB R13, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R10}
l303: stmIA R13!, {R3}
l304: stmIA R13!, {R1, R8, R15}
l305: stmEQIB R13, {R6, R14}
l306: stmGTDA R13, {R0, R1, R3, R7, R8, R9, R10, R11, R12, R13}
l307: stmLEDA R13, {R5, R9, R15}
l308: stmIB R13!, {R13, R14}
l309: stmIB R13!, {R0, R3, R6, R8, R10, R12}
l310: stmIA R13!, {R2, R4, R6, R9, R12}
l311: stmDA R13!, {R0, R1, R11, R14}
l312: stmIA R13!, {R0, R3}
l313: stmIB R13, {R4}
l314: stmDB R13!, {R2, R3, R5, R6, R9, R10, R15}
l315: stmIA R13!, {R4}
l316: stmIA R13!, {R1, R3, R4, R6, R7, R8, R11}
l317: stmDB R13!, {R13, R14}
l318: stmEQDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15}
l319: stmPLIB R13, {R1, R2}
l320: stmEQIB R13, {R1, R2, R6, R9, R11, R12, R13, R14, R15}
l321: stmIA R13, {R1, R7, R8, R10, R14, R15}
l322: stmMIDB R13, {R0, R1, R2, R3, R4, R6, R7, R8, R10, R11, R12, R13, R14}
l323: stmCCIB R13, {R0, R1, R4, R7, R14, R15}
l324: stmIB R13!, {R13, R14}
l325: stmIB R13!, {R13, R14}
l326: stmIA R13!, {R8}
l327: stmDA R13!, {R2, R3}
l328: stmDB R13!, {R9, R14}
l329: stmDA R13!, {R13, R14, R15}
l330: stmIB R13, {R0, R2, R3, R5, R6, R8, R9, R13, R15}
l331: stmLTDB R13, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15}
l332: stmDA R13!, {R3}
l333: stmIB R13, {R3, R7, R11}
l334: stmDB R13, {R5, R10}
l335: stmLTDA R13, {R8, R13}
l336: stmIA R13, {R0, R8, R10}
l337: stmDA R13, {R3}
l338: stmIA R13!, {R0, R1, R3, R10, R14}
l339: stmIA R13!, {R4}
l340: stmDA R13!, {R8}
l341: stmIA R13!, {R13}
l342: stmEQDB R13, {R2, R4, R7, R8, R10, R11, R14}
l343: stmIB R13, {R3, R4, R9, R11, R12, R14}
l344: stmDB R13!, {R2, R3, R8, R10, R12}
l345: stmIA R13!, {R1, R2, R4, R6, R7, R8}
l346: stmDA R13!, {R13, R15}
l347: stmIA R13, {R0, R1, R4, R7, R9, R10, R12, R13, R15}
l348: stmIB R13!, {R6, R15}
l349: stmIB R13, {R0}
l350: stmDA R13!, {R1, R3, R6, R15}
l351: stmDA R13!, {R13, R14, R15}
l352: stmDA R13!, {R0, R1, R15}
l353: stmDA R13!, {R3, R5, R6, R9, R11}
l354: stmIB R13!, {R0, R1, R2, R5, R7, R9, R11, R12, R14}
l355: stmLSDA R13, {R2, R3, R7, R15}
l356: stmPLIA R13, {R0, R3, R4, R5, R7, R9, R10, R14}
l357: stmIB R13!, {R13}
l358: stmDA R13, {R1, R2, R3, R7, R13, R14}
l359: stmDA R13!, {R6, R8, R9, R12, R14}
l360: stmDA R13!, {R1, R2, R9, R11, R15}
l361: stmIB R13!, {R13, R14, R15}
l362: stmDA R13!, {R1, R5, R12}
l363: stmIA R13!, {R13, R14, R15}
l364: stmIA R13!, {R0, R1, R2, R5, R7, R11, R14}
l365: stmLEIA R13, {R12}
l366: stmDB R13!, {R0, R1, R2, R3, R4, R5, R7, R8, R10, R12, R14, R15}
l367: stmIB R13!, {R13}
l368: stmDB R13!, {R3}
l369: stmIA R13!, {R11, R12}
l370: stmMIDB R13, {R2}
l371: stmIB R13!, {R13, R14}
l372: stmDA R13!, {R5}
l373: stmIB R13!, {R13, R14, R15}
l374: stmDA R13!, {R1, R9, R10, R12}
l375: stmDA R13!, {R12}
l376: stmIB R13!, {R13}
l377: stmIA R13!, {R13}
l378: stmIB R13!, {R13, R15}
l379: stmIB R13!, {R0, R1, R3, R5, R6, R7, R11, R12, R14, R15}
l380: stmDA R13, {R1, R3, R4, R6, R7, R9, R12, R13, R15}
l381: stmLTIB R13, {R1, R3, R4, R6, R7, R11, R12}
l382: stmIA R13!, {R13, R14}
l383: stmDB R13!, {R13, R14, R15}
l384: stmVCIB R13, {R1, R2, R3, R5, R9, R11}
l385: stmIB R13!, {R11}
l386: stmVCDA R13, {R0, R1, R2, R6, R7}
l387: stmIB R13!, {R1}
l388: stmDB R13!, {R0, R4, R9}
l389: stmIB R13!, {R0, R2, R8, R10, R12}
l390: stmIA R13!, {R5, R7}
l391: stmDA R13!, {R13, R14, R15}
l392: stmIB R13!, {R0, R8}
l393: stmIA R13!, {R7}
l394: stmDB R13!, {R13, R14, R15}
l395: stmIA R13!, {R6, R9}
l396: stmVSDA R13, {R6, R10, R12}
l397: stmCCDA R13, {R0, R1, R2, R3, R5, R6, R7, R9, R10, R12, R13, R14}
l398: stmDA R13, {R0, R4}
l399: stmIB R13, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15}
l400: stmDB R13!, {R5, R6, R15}
l401: stmIA R13!, {R3}
l402: stmDB R13!, {R13}
l403: stmIA R13!, {R3, R6, R11}
l404: stmLEDA R13, {R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R12, R13, R14, R15}
l405: stmIB R13, {R4, R6, R10, R14}
l406: stmIB R13!, {R4}
l407: stmIA R13!, {R13, R15}
l408: stmDB R13!, {R13}
l409: stmDA R13!, {R13, R14}
l410: stmDB R13!, {R0, R9, R12}
l411: stmDB R13!, {R5}
l412: stmIA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15}
l413: stmIB R13!, {R6}
l414: stmDB R13!, {R13, R14, R15}
l415: stmDB R13!, {R13}
l416: stmDB R13!, {R13, R15}
l417: stmIA R13!, {R3}
l418: stmIB R13!, {R7, R8}
l419: stmDB R13!, {R13, R14, R15}
l420: stmDB R13!, {R9}
l421: stmIA R13!, {R13}
l422: stmIB R13!, {R2, R11}
l423: stmIB R13!, {R1, R3, R9, R10}
l424: stmVSDB R13, {R14}
l425: stmEQDB R13, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R10, R11, R12, R13, R14}
l426: stmNEDA R13, {R0, R10}
l427: stmIB R13, {R0, R3, R5, R6, R9, R11, R14, R15}
l428: stmHIIA R13, {R0, R1, R2, R4, R5, R11, R13, R14, R15}
l429: stmDA R13!, {R5, R7, R14}
l430: stmDA R13!, {R13, R14, R15}
l431: stmIA R13!, {R13}
l432: stmIB R13!, {R0, R6}
l433: stmIB R13!, {R0, R1, R11}
l434: stmDB R13!, {R13, R14}
l435: stmIA R13!, {R5, R9}
l436: stmDB R13, {R0, R1, R2, R3, R5, R8, R13, R14, R15}
l437: stmEQIA R13, {R11}
l438: stmDB R13!, {R5, R10, R14}
l439: stmCSDA R13, {R6}
l440: stmIA R13!, {R3, R8, R9, R11, R12, R14, R15}
l441: stmIA R13!, {R2, R15}
l442: stmLTDA R13, {R2, R6}
l443: stmIB R13!, {R0, R1, R7, R15}
l444: stmDB R13!, {R13, R14, R15}
l445: stmDB R13!, {R1, R3}
l446: stmDA R13!, {R13, R15}
l447: stmIB R13!, {R1, R5, R6, R9, R10, R15}
l448: stmCCIA R13, {R3}
l449: stmDA R13, {R6, R10, R15}
l450: stmDB R13, {R1, R2, R5, R8, R9, R11, R13, R14}
l451: stmVSDA R13, {R0, R1, R10, R12}
l452: stmIB R13!, {R13, R15}
l453: stmDA R13!, {R5, R14}
l454: stmIB R13!, {R0, R2, R12, R15}
l455: stmDA R13!, {R0, R3, R5, R9, R12}
l456: stmDA R13!, {R3}
l457: stmIB R13!, {R13}
l458: stmIB R13!, {R13, R14}
l459: stmIA R13!, {R1, R4, R5, R7, R8, R9, R10, R11, R12, R14, R15}
l460: stmPLIA R13, {R3, R10}
l461: stmIB R13!, {R2, R8}
l462: stmMIDB R13, {R4, R7, R9, R11, R14, R15}
l463: stmIA R13!, {R0, R12}
l464: stmDA R13!, {R13, R14, R15}
l465: stmIA R13!, {R9}
l466: stmDB R13!, {R13, R14, R15}
l467: stmDB R13!, {R1, R5, R6, R9, R11}
l468: stmDA R13!, {R13}
l469: stmIB R13!, {R0, R9, R10}
l470: stmIA R13, {R1, R2, R5, R6, R7, R8, R9, R10, R11, R13, R15}
l471: stmDA R13!, {R1, R3, R8, R9, R12}
l472: stmIA R13!, {R6}
l473: stmIA R13!, {R0, R11}
l474: stmDB R13!, {R13}
l475: stmIA R13!, {R1, R11, R14}
l476: stmIA R13, {R8}
l477: stmDB R13!, {R13, R14}
l478: stmDA R13!, {R2, R5}
l479: stmDA R13, {R1, R2, R5}
l480: stmHIDB R13, {R0, R1, R3, R4, R6, R11, R12}
l481: stmLEDA R13, {R0, R1, R5}
l482: stmIB R13!, {R6}
l483: stmDA R13, {R11}
l484: stmDA R13!, {R5}
l485: stmIA R13!, {R0, R3, R4, R6, R7, R8, R10, R12, R15}
l486: stmDA R13!, {R13}
l487: stmDB R13!, {R1, R3, R4, R7, R11, R15}
l488: stmDB R13!, {R2, R10}
l489: stmIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R10, R12, R13, R14, R15}
l490: stmIA R13!, {R13, R15}
l491: stmIA R13!, {R0, R5}
l492: stmDB R13!, {R13, R14}
l493: stmDB R13!, {R13, R14, R15}
l494: stmIB R13, {R1, R3, R7, R11, R14}
l495: stmDA R13, {R1, R2, R6, R7, R8, R9, R12, R13}
l496: stmGTIA R13, {R3, R12, R14}
l497: stmCCIA R13, {R8, R9, R10, R14}
l498: stmIA R13!, {R0}
l499: stmDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14}
l500: stmNEDA R13, {R2, R7}
l501: stmIB R13!, {R13, R15}
l502: stmEQDB R13, {R7, R13}
l503: stmIB R13!, {R13, R14, R15}
l504: stmDB R13!, {R7, R8, R14}
l505: stmDB R13, {R4}
l506: stmIA R13!, {R2, R5, R6, R8, R11, R12, R14, R15}
l507: stmDA R13!, {R0}
l508: stmLTIA R13, {R0, R1, R4, R6, R8, R11, R12, R15}
l509: stmIA R13, {R0, R10, R13}
l510: stmDB R13, {R1, R4, R5, R7, R8, R9, R10, R11, R13, R15}
l511: stmIA R13!, {R13}
l512: stmIB R13, {R0, R2, R3, R6, R7, R9, R10}
l513: stmIB R13!, {R12}
l514: stmIA R13!, {R12}
l515: stmDA R13!, {R13, R14, R15}
l516: stmDB R13!, {R9, R11, R12, R15}
l517: stmDA R13!, {R5}
l518: stmDA R13!, {R2, R3, R4, R5, R7, R8, R11, R12}
l519: stmIB R13!, {R13, R14, R15}
l520: stmIB R13!, {R13, R14}
l521: stmDB R13!, {R13}
l522: stmIA R13, {R1, R2, R3, R6, R7, R8, R9, R12}
l523: stmDA R13!, {R1, R3, R4, R5, R6, R8, R10, R11}
l524: stmDA R13!, {R1, R4, R5, R7, R10, R14}
l525: stmIB R13!, {R1, R5, R14}
l526: stmHIIB R13, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R15}
l527: stmDA R13!, {R13, R15}
l528: stmGTDA R13, {R6, R7, R13, R15}
l529: stmEQIA R13, {R2, R9, R12}
l530: stmIB R13!, {R13, R15}
l531: stmIB R13!, {R0}
l532: stmIA R13!, {R5}
l533: stmDB R13, {R4, R5, R8, R11, R12}
l534: stmIA R13!, {R9, R15}
l535: stmIB R13, {R2, R9}
l536: stmDA R13!, {R13}
l537: stmDB R13!, {R0, R4, R6, R7, R8, R10, R14, R15}
l538: stmGTIA R13, {R0, R1, R6, R7, R10, R11, R12, R13, R15}
l539: stmCSDA R13, {R1, R2, R7, R12, R14}
l540: stmDB R13!, {R2, R4}
l541: stmIA R13!, {R2, R5, R6, R7, R8, R9, R10, R11}
l542: stmDA R13!, {R1, R2, R3, R4, R6, R8, R10, R14}
l543: stmIA R13!, {R8, R9}
l544: stmDA R13!, {R1, R3, R4, R8, R15}
l545: stmIA R13!, {R13, R14, R15}
l546: stmDA R13, {R7}
l547: stmIB R13!, {R0, R1, R2, R3, R7, R8, R12, R15}
l548: stmDA R13!, {R2, R4, R5, R7, R8, R9, R14, R15}
l549: stmGEIA R13, {R0, R1, R7, R10, R11, R12, R14, R15}
l550: stmIB R13!, {R7}
l551: stmDA R13!, {R13, R14, R15}
l552: stmDB R13, {R0, R1, R6, R8, R9, R10, R11, R12, R15}
l553: stmIB R13!, {R0, R4, R10, R11}
l554: stmIB R13, {R0, R3, R5, R8, R10, R13}
l555: stmDA R13!, {R6}
l556: stmIB R13!, {R4, R12}
l557: stmCSDA R13, {R0, R1, R2, R5, R6, R7, R9, R11, R12, R13, R14}
l558: stmDA R13!, {R0}
l559: stmDB R13, {R4, R6, R14}
l560: stmLEDB R13, {R9, R10}
l561: stmIB R13!, {R13, R14, R15}
l562: stmDA R13!, {R1, R2, R5}
l563: stmIB R13, {R2, R5, R7, R10, R11, R15}
l564: stmDA R13, {R1, R5, R9}
l565: stmDB R13, {R13}
l566: stmDA R13!, {R1}
l567: stmIB R13, {R0, R2, R3, R4, R6, R7, R9, R10, R11, R12, R13, R15}
l568: stmIB R13!, {R0, R2, R4, R8, R15}
l569: stmDB R13!, {R13}
l570: stmVCDB R13, {R0, R1, R2, R4, R5, R6, R7, R8, R10, R11, R12, R13, R14, R15}
l571: stmIB R13!, {R0, R6, R7, R9, R11}
l572: stmIB R13!, {R1, R3, R4, R10, R11, R14, R15}
l573: stmDB R13!, {R13}
l574: stmIB R13!, {R13}
l575: stmDA R13, {R0, R2, R3, R4, R5, R6, R7, R11, R13, R14, R15}
l576: stmCSIA R13, {R2, R3, R5, R6, R7, R10, R11, R13}
l577: stmIA R13!, {R10}
l578: stmIB R13!, {R1, R2, R8}
l579: stmDA R13!, {R13}
l580: stmIB R13!, {R4, R5, R15}
l581: stmDA R13!, {R0, R1, R2, R3, R4, R7, R8, R11, R12, R15}
l582: stmIB R13!, {R1, R2, R5, R6, R8, R10, R11}
l583: stmNEDB R13, {R10}
l584: stmDB R13!, {R1, R3, R5, R6, R7, R8, R9, R10, R11, R14}
l585: stmIB R13!, {R13, R14, R15}
l586: stmDB R13!, {R0, R10}
l587: stmDB R13!, {R4, R5, R6, R8, R12}
l588: stmIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R13, R14}
l589: stmIA R13!, {R13}
l590: stmHIDB R13, {R0, R5, R15}
l591: stmDB R13!, {R0, R1, R2, R3, R4, R6, R7, R8, R14}
l592: stmIA R13!, {R0, R2, R4, R9, R10, R15}
l593: stmIB R13, {R14, R15}
l594: stmIA R13, {R1, R5}
l595: stmIA R13!, {R0, R1, R5, R7, R9}
l596: stmDA R13!, {R13}
l597: stmCCIB R13, {R9}
l598: stmDB R13, {R14, R15}
l599: stmDA R13!, {R2, R4, R8, R14}
l600: stmIB R13!, {R1, R6, R7, R8, R9, R14}
l601: stmDA R13!, {R13, R14, R15}
l602: stmDA R13!, {R1, R2, R3, R4, R9, R14}
l603: stmDA R13!, {R2, R5, R7, R9, R10, R12, R15}
l604: stmIA R13!, {R14}
l605: stmIA R13!, {R1, R3}
l606: stmIA R13!, {R0, R12}
l607: stmDA R13, {R1, R4, R6, R9, R12, R15}
l608: stmDA R13!, {R12}
l609: stmIA R13!, {R13, R14, R15}
l610: stmVCIA R13, {R5, R9, R11, R13, R14, R15}
l611: stmIA R13!, {R13}
l612: stmIB R13!, {R13, R14}
l613: stmIA R13!, {R5, R8, R11, R14, R15}
l614: stmIB R13!, {R14}
l615: stmDA R13!, {R2, R3, R5, R6, R7, R9, R10, R12}
l616: stmDB R13!, {R13, R14}
l617: stmDB R13!, {R0, R3, R7, R9, R10, R15}
l618: stmVSDA R13, {R7}
l619: stmDA R13, {R11}
l620: stmIA R13!, {R13, R15}
l621: stmIB R13!, {R5, R6, R11}
l622: stmIA R13!, {R13}
l623: stmIA R13!, {R13, R15}
l624: stmDA R13!, {R9}
l625: stmIB R13!, {R2, R3, R5, R8, R9, R11, R14, R15}
l626: stmGEIA R13, {R10, R14}
l627: stmDB R13!, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R10, R11, R12, R14, R15}
l628: stmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R11, R14}
l629: stmLEIA R13, {R5, R11, R13}
l630: stmDA R13!, {R13, R14, R15}
l631: stmVCIB R13, {R6}
l632: stmHIIA R13, {R11}
l633: stmNEIB R13, {R7, R13}
l634: stmDB R13, {R5, R6, R9, R11, R14, R15}
l635: stmIB R13!, {R2, R4, R7, R14, R15}
l636: stmDA R13!, {R13}
l637: stmIB R13, {R7, R9}
l638: stmDB R13!, {R13, R14, R15}
l639: stmDA R13!, {R4, R7, R11}
l640: stmDB R13!, {R6}
l641: stmLSIB R13, {R1, R4, R9, R12, R14}
l642: stmIB R13!, {R6, R11}
l643: stmDA R13!, {R13, R14, R15}
l644: stmVSIB R13, {R3, R5, R8}
l645: stmDA R13!, {R13, R14, R15}
l646: stmDB R13!, {R13, R14, R15}
l647: stmDA R13!, {R0, R4, R7, R8, R10, R11, R14, R15}
l648: stmIB R13!, {R13, R15}
l649: stmIA R13!, {R13}
l650: stmPLIA R13, {R1, R2, R3, R5, R7, R8, R9, R10, R11, R12, R15}
l651: stmGEDB R13, {R0, R2, R3, R5, R7, R10, R15}
l652: stmIA R13!, {R13, R15}
l653: stmDA R13!, {R0, R1, R2, R5, R10, R15}
l654: stmIB R13!, {R0, R2, R10}
l655: stmDA R13, {R9, R11, R15}
l656: stmDA R13!, {R13}
l657: stmDB R13!, {R14}
l658: stmDA R13!, {R4, R5, R8, R10, R14}
l659: stmIB R13, {R2, R3, R4, R5, R6, R9, R10, R11, R12, R15}
l660: stmIB R13!, {R2, R4}
l661: stmDA R13!, {R0, R2, R3, R4, R6, R8, R9, R11, R12, R14, R15}
l662: stmIA R13!, {R3, R4, R8, R9, R12}
l663: stmIB R13!, {R4, R5, R8, R9, R14}
l664: stmLTDB R13, {R1, R8}
l665: stmIA R13, {R1, R4, R6, R7, R12}
l666: stmGEDA R13, {R0, R2, R3, R4, R6, R7, R8, R9, R10, R15}
l667: stmIB R13, {R13}
l668: stmDA R13!, {R2}
l669: stmDA R13!, {R13}
l670: stmDA R13!, {R4, R7, R14}
l671: stmCCIA R13, {R1, R2, R6, R9, R15}
l672: stmDA R13!, {R13, R14}
l673: stmGEIB R13, {R1, R3, R4, R6, R7, R8, R9, R12, R13, R15}
l674: stmIB R13!, {R2, R3, R7, R10, R11}
l675: stmDB R13!, {R13, R14, R15}
l676: stmCSIA R13, {R10}
l677: stmDB R13!, {R0, R2, R3, R10, R15}
l678: stmDA R13!, {R0, R2}
l679: stmIA R13!, {R3, R5, R6}
l680: stmGTIB R13, {R1, R2, R13}
l681: stmIB R13!, {R0, R9, R10}
l682: stmDA R13!, {R13, R14, R15}
l683: stmIB R13!, {R15}
l684: stmCCDB R13, {R0, R1, R5, R6, R7, R8, R10, R11, R15}
l685: stmDB R13!, {R13}
l686: stmLTDA R13, {R2}
l687: stmDB R13!, {R2, R15}
l688: stmIA R13!, {R13, R15}
l689: stmDB R13!, {R6, R15}
l690: stmLEIA R13, {R1, R2, R3, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15}
l691: stmDB R13!, {R2, R5, R8, R9, R12}
l692: stmDA R13!, {R13}
l693: stmDB R13!, {R2, R3, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l694: stmIA R13!, {R13, R15}
l695: stmIA R13, {R10}
l696: stmVCDB R13, {R4}
l697: stmIB R13!, {R0, R1, R2, R3, R4, R5, R7, R8, R9, R12, R14, R15}
l698: stmHIIB R13, {R9}
l699: stmDB R13!, {R15}
l700: stmDA R13!, {R8, R12}
l701: stmDB R13!, {R13, R14, R15}
l702: stmDA R13!, {R0, R1, R5, R8, R11, R12, R15}
l703: stmDA R13!, {R10}
l704: stmDB R13, {R4}
l705: stmIB R13!, {R11}
l706: stmCCDB R13, {R3}
l707: stmIA R13!, {R13, R14, R15}
l708: stmDA R13!, {R0, R7, R15}
l709: stmCCIB R13, {R0, R4, R9, R15}
l710: stmDA R13!, {R15}
l711: stmDA R13!, {R3, R5, R10}
l712: stmLEIA R13, {R3}
l713: stmGEDA R13, {R12}
l714: stmLTIB R13, {R0, R2, R11, R13}
l715: stmDB R13, {R1, R5, R9, R13}
l716: stmIA R13!, {R1, R5, R8, R15}
l717: stmDB R13!, {R7, R12, R15}
l718: stmDB R13!, {R4}
l719: stmIA R13, {R1, R2, R3, R4, R6, R7, R8, R9, R10, R12}
l720: stmDB R13!, {R13}
l721: stmDA R13!, {R0, R3, R5, R6, R7}
l722: stmIB R13, {R4, R5, R6, R7, R12, R14}
l723: stmIA R13!, {R8, R9, R12}
l724: stmIB R13!, {R4}
l725: stmGTIA R13, {R1, R2, R3}
l726: stmDA R13!, {R13, R14, R15}
l727: stmDB R13!, {R13, R14}
l728: stmIA R13!, {R1, R2, R11, R14, R15}
l729: stmDA R13!, {R5}
l730: stmIB R13!, {R8, R14}
l731: stmDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15}
l732: stmDA R13!, {R14}
l733: stmDB R13, {R13}
l734: stmIA R13!, {R5, R11, R12, R15}
l735: stmIA R13, {R1, R9}
l736: stmIB R13, {R3, R6, R8, R9, R10, R11, R15}
l737: stmIA R13!, {R13}
l738: stmIA R13!, {R0, R3}
l739: stmIA R13!, {R9}
l740: stmIB R13!, {R6}
l741: stmDA R13!, {R13, R14, R15}
l742: stmDB R13!, {R13}
l743: stmIA R13, {R2, R8, R14, R15}
l744: stmDB R13!, {R0, R2, R7, R10}
l745: stmDA R13, {R1, R2, R5, R8, R9, R11, R13}
l746: stmGTIB R13, {R1, R4, R5, R6, R7, R9, R11, R13, R14, R15}
l747: stmIA R13!, {R9}
l748: stmDA R13!, {R3, R4, R7}
l749: stmIB R13!, {R7}
l750: stmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R12, R14, R15}
l751: stmIB R13!, {R13, R15}
l752: stmIA R13!, {R4, R6, R9, R12, R15}
l753: stmLSIB R13, {R0, R2, R3, R4, R6, R7, R11, R12, R14}
l754: stmDB R13!, {R13, R14, R15}
l755: stmIB R13!, {R8}
l756: stmNEIB R13, {R1, R11}
l757: stmDA R13!, {R13, R14, R15}
l758: stmGEIB R13, {R1, R3, R6}
l759: stmDB R13!, {R13, R14, R15}
l760: stmLSIB R13, {R2, R10, R13}
l761: stmDB R13!, {R13, R14, R15}
l762: stmDA R13!, {R13, R14}
l763: stmDA R13!, {R13}
l764: stmIA R13!, {R0, R4, R8, R11}
l765: stmDB R13!, {R0, R1, R5, R8, R10, R15}
l766: stmIA R13, {R1, R2, R5, R9, R13}
l767: stmIA R13!, {R1, R6, R8}
l768: stmDB R13!, {R1, R3, R5, R6, R7, R8, R10, R12, R15}
l769: stmDA R13, {R4, R5, R10, R13}
l770: stmNEDB R13, {R3, R7, R8, R11}
l771: stmDB R13!, {R10}
l772: stmIA R13, {R0, R1, R2, R3, R5, R8, R9, R10, R12, R13, R14, R15}
l773: stmIB R13!, {R13, R15}
l774: stmIA R13!, {R12}
l775: stmIA R13, {R12, R15}
l776: stmDA R13!, {R1, R5, R8, R15}
l777: stmDB R13, {R0, R2, R3, R4, R5, R6, R8, R10, R12, R15}
l778: stmDB R13!, {R3, R14, R15}
l779: stmCSIB R13, {R0, R1, R2, R3, R4, R5, R7, R8, R10, R11, R12, R14}
l780: stmGEDB R13, {R0, R1, R2, R4, R6, R9, R10, R11, R13, R14, R15}
l781: stmIB R13!, {R13, R14}
l782: stmDA R13, {R2, R5, R8}
l783: stmIA R13, {R0, R10}
l784: stmIA R13!, {R7}
l785: stmDA R13, {R1, R8, R12}
l786: stmIA R13!, {R13, R14, R15}
l787: stmIA R13!, {R13, R14, R15}
l788: stmDB R13!, {R2, R6, R9}
l789: stmIB R13!, {R1, R3, R9}
l790: stmDB R13, {R0, R4, R7, R11, R13}
l791: stmIB R13!, {R13, R14, R15}
l792: stmIA R13!, {R13, R14}
l793: stmIB R13, {R1, R5, R7, R8, R9, R12, R13, R14}
l794: stmLTDB R13, {R0, R3, R5, R9, R10, R11, R13}
l795: stmDA R13!, {R13, R14}
l796: stmDB R13!, {R12}
l797: stmDB R13!, {R7}
l798: stmDB R13!, {R7}
l799: stmDB R13, {R10, R15}
l800: stmGTIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15}
l801: stmDB R13!, {R13}
l802: stmDA R13!, {R13}
l803: stmDB R13!, {R13, R14}
l804: stmDB R13, {R0, R2, R4, R15}
l805: stmDA R13, {R8, R9}
l806: stmIB R13!, {R0, R2, R5, R9, R12}
l807: stmIA R13!, {R1, R2, R4, R5, R7, R10, R12}
l808: stmDB R13, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R10, R12, R13, R14, R15}
l809: stmDB R13!, {R10}
l810: stmIB R13!, {R13, R14, R15}
l811: stmLSIB R13, {R0, R1, R4, R5, R7, R10, R12, R13, R14, R15}
l812: stmIB R13!, {R5, R15}
l813: stmDA R13, {R1, R2, R4, R5, R7, R8, R9, R10, R12, R13, R15}
l814: stmIA R13!, {R13, R14}
l815: stmDB R13!, {R0, R3, R7, R9, R15}
l816: stmIA R13!, {R13, R14, R15}
l817: stmDB R13, {R3}
l818: stmIA R13!, {R13, R14}
l819: stmDA R13!, {R1, R2, R3, R4, R5, R11, R14}
l820: stmCSIA R13, {R1, R10, R12, R15}
l821: stmDA R13, {R3, R4, R15}
l822: stmDA R13, {R0, R2}
l823: stmIB R13!, {R13}
l824: stmIA R13!, {R3, R4, R5, R6, R8, R9}
l825: stmDA R13!, {R0, R6, R11, R15}
l826: stmIB R13, {R0, R1, R4, R9, R12, R14}
l827: stmDB R13!, {R0, R1, R2, R3, R4, R5, R7, R9, R15}
l828: stmIB R13!, {R1, R5, R7, R8}
l829: stmDA R13!, {R7}
l830: stmIA R13!, {R13, R14}
l831: stmIB R13!, {R13}
l832: stmLTDA R13, {R0, R1}
l833: stmDA R13!, {R1, R6, R8}
l834: stmGEIB R13, {R5, R8}
l835: stmCSDA R13, {R0, R5}
l836: stmCCIB R13, {R0, R1, R2, R4, R5, R6, R7, R8, R9, R10, R11}
l837: stmIB R13!, {R0, R6}
l838: stmDA R13!, {R10}
l839: stmVCDA R13, {R0, R1, R3, R10, R11, R12, R13, R14, R15}
l840: stmNEDB R13, {R4, R7, R11}
l841: stmDB R13!, {R12}
l842: stmIA R13!, {R0, R4, R6}
l843: stmDA R13!, {R10, R15}
l844: stmDB R13!, {R15}
l845: stmIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15}
l846: stmDB R13!, {R15}
l847: stmIB R13!, {R13}
l848: stmIB R13, {R5, R9}
l849: stmVSDB R13, {R0, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15}
l850: stmDA R13!, {R2, R3, R7}
l851: stmDA R13!, {R11}
l852: stmIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15}
l853: stmDA R13!, {R13}
l854: stmVSIA R13, {R11, R13}
l855: stmDA R13!, {R13}
l856: stmIB R13!, {R4, R6}
l857: stmDB R13!, {R13}
l858: stmIB R13, {R13}
l859: stmDA R13!, {R13, R14, R15}
l860: stmIB R13!, {R7}
l861: stmDB R13!, {R13, R14}
l862: stmIB R13!, {R12}
l863: stmIA R13, {R3, R13, R15}
l864: stmDA R13!, {R0, R1, R2, R5, R6, R9, R14, R15}
l865: stmIA R13!, {R3, R4, R15}
l866: stmIA R13!, {R13}
l867: stmDB R13!, {R3, R7, R11}
l868: stmIA R13!, {R13}
l869: stmDA R13!, {R1, R7, R15}
l870: stmDA R13!, {R0, R6, R7, R15}
l871: stmEQIB R13, {R0, R3, R4, R6, R7, R9, R11, R15}
l872: stmIA R13!, {R8, R10, R15}
l873: stmIA R13!, {R12}
l874: stmDB R13!, {R0, R1, R2, R3, R4, R5, R9, R10, R15}
l875: stmDB R13!, {R4, R9, R15}
l876: stmDA R13!, {R4, R6}
l877: stmIA R13!, {R13, R14}
l878: stmDB R13, {R4, R5, R9, R14, R15}
l879: stmCSIA R13, {R1, R3, R4, R5, R6, R8, R10, R11, R12, R15}
l880: stmDB R13!, {R2, R4, R7, R10, R12, R14}
l881: stmDA R13!, {R1, R2, R12}
l882: stmIA R13, {R2, R3, R4, R11, R14, R15}
l883: stmIB R13!, {R1, R4, R8, R9}
l884: stmDB R13!, {R0, R1, R3, R5, R9, R10, R15}
l885: stmIA R13!, {R0, R5, R6}
l886: stmIA R13!, {R13, R14, R15}
l887: stmIB R13!, {R5, R7, R9, R10}
l888: stmIB R13, {R1, R7, R10, R13}
l889: stmDA R13!, {R13, R14, R15}
l890: stmDA R13!, {R2, R14}
l891: stmIB R13!, {R13}
l892: stmIB R13!, {R3, R10}
l893: stmIB R13!, {R14}
l894: stmIB R13!, {R7}
l895: stmDA R13!, {R10}
l896: stmDA R13!, {R13, R14, R15}
l897: stmMIDB R13, {R0, R1, R5, R7, R9, R10, R11, R12, R14, R15}
l898: stmDB R13!, {R0, R2, R4}
l899: stmIB R13!, {R13, R14, R15}
l900: stmDA R13!, {R14}
l901: stmIB R13!, {R13, R14, R15}
l902: stmDB R13!, {R5, R9, R10}
l903: stmIA R13, {R1, R4, R11}
l904: stmDA R13!, {R13}
l905: stmDB R13, {R4, R5, R14}
l906: stmDA R13!, {R0}
l907: stmDA R13!, {R9}
l908: stmIA R13!, {R1, R3, R4, R5, R15}
l909: stmIA R13!, {R9}
l910: stmVSIB R13, {R0, R1, R4, R6, R7, R9, R12, R13, R14, R15}
l911: stmIA R13, {R9}
l912: stmIB R13!, {R15}
l913: stmDB R13!, {R13, R15}
l914: stmDB R13!, {R13}
l915: stmIA R13!, {R8}
l916: stmCCDB R13, {R0, R4, R14}
l917: stmIB R13!, {R1, R2, R10}
l918: stmIA R13!, {R10}
l919: stmDB R13!, {R13}
l920: stmIA R13!, {R13}
l921: stmIB R13!, {R11}
l922: stmDB R13!, {R11}
l923: stmIA R13, {R3}
l924: stmEQDB R13, {R1, R4, R7, R8, R9, R10, R11, R12, R14}
l925: stmIA R13!, {R4, R8, R10, R12}
l926: stmLTDB R13, {R4, R6, R7, R10, R12, R15}
l927: stmDA R13!, {R0, R6, R10, R12, R15}
l928: stmDA R13, {R8}
l929: stmIA R13!, {R3, R5, R6, R7}
l930: stmIA R13!, {R13, R14}
l931: stmEQIB R13, {R0, R2, R3, R4, R5, R6, R7, R8, R9}
l932: stmDA R13!, {R13, R15}
l933: stmIA R13!, {R1}
l934: stmDA R13!, {R13, R15}
l935: stmLTDA R13, {R0, R1, R2, R6, R9, R10, R12, R14, R15}
l936: stmGTIA R13, {R11}
l937: stmHIDB R13, {R1, R6, R7, R8, R11}
l938: stmIA R13!, {R13, R14, R15}
l939: stmDB R13!, {R0, R11}
l940: stmDB R13!, {R6}
l941: stmPLIA R13, {R7, R9, R10}
l942: stmIB R13!, {R10, R12}
l943: stmIA R13, {R0, R1, R3, R5, R6, R7, R8, R9, R10, R11, R12, R13, R15}
l944: stmDA R13!, {R13, R14}
l945: stmMIDB R13, {R0, R2, R4, R12}
l946: stmLTDA R13, {R2, R3, R5, R7, R13, R14, R15}
l947: stmIB R13, {R1, R11, R13}
l948: stmLTDA R13, {R7, R11, R13}
l949: stmIB R13!, {R5, R11}
l950: stmLEDA R13, {R1, R3, R6, R15}
l951: stmIA R13!, {R4, R8, R10}
l952: stmDB R13!, {R1, R11}
l953: stmLSIA R13, {R0, R1, R3, R4, R6, R8, R9, R10, R11, R12, R14}
l954: stmMIDA R13, {R0, R2, R3, R5, R7, R8, R9, R10, R12, R13, R14}
l955: stmIA R13!, {R13, R14, R15}
l956: stmMIIB R13, {R1, R2, R7, R10, R13, R15}
l957: stmDA R13!, {R3}
l958: stmVCIB R13, {R8, R9}
l959: stmVCIB R13, {R7}
l960: stmIB R13, {R4, R9}
l961: stmDB R13!, {R4, R6, R8, R9}
l962: stmIB R13!, {R11}
l963: stmLTIB R13, {R13}
l964: stmIB R13!, {R2, R11, R12}
l965: stmDB R13!, {R13, R15}
l966: stmDA R13!, {R8, R9, R15}
l967: stmDB R13!, {R7, R10}
l968: stmIB R13, {R6, R10, R14}
l969: stmCSDB R13, {R0, R5, R9, R10, R11, R12, R13, R14}
l970: stmIA R13!, {R1, R5, R8, R9}
l971: stmIB R13!, {R1, R2, R3, R6}
l972: stmHIDB R13, {R6, R8, R10, R11, R12, R13}
l973: stmIA R13!, {R9}
l974: stmIA R13!, {R2, R5, R8, R9, R10, R14, R15}
l975: stmDA R13!, {R1, R2, R5, R6, R8, R9, R12, R15}
l976: stmIB R13!, {R13, R14}
l977: stmDB R13!, {R5}
l978: stmIB R13!, {R0, R1, R3, R4, R7, R9, R14, R15}
l979: stmMIDA R13, {R1, R3, R7, R8}
l980: stmIB R13!, {R3, R8, R11}
l981: stmIB R13!, {R7, R12}
l982: stmHIDB R13, {R1, R3, R6, R7, R9, R10, R11, R15}
l983: stmDB R13, {R0, R1, R2, R4, R6, R10, R14}
l984: stmDA R13!, {R13}
l985: stmIA R13, {R1, R3, R4, R8}
l986: stmIA R13!, {R0, R1, R2, R4, R5, R7, R8, R9, R10, R11, R12, R15}
l987: stmDB R13!, {R1, R4, R5, R6, R7, R12, R14, R15}
l988: stmIB R13, {R0, R2, R3, R6, R9, R12, R13, R14}
l989: stmDB R13!, {R2, R4}
l990: stmDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15}
l991: stmCCIA R13, {R2, R5, R8, R12}
l992: stmDA R13, {R2}
l993: stmIB R13!, {R4, R5, R8, R10, R11, R12}
l994: stmIB R13!, {R14}
l995: stmDA R13, {R0, R2, R4, R6, R7, R8, R9, R10, R13, R14}
l996: stmIB R13!, {R13}
l997: stmIA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14, R15}
l998: stmIB R13!, {R6}
l999: stmDB R13!, {R0, R1, R2, R3, R4, R7, R8, R9, R10, R11}
l1000: stmDB R13!, {R13, R14}
end: b end

