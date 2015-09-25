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
val1: .word 2930569841
next1:ldr R2, val2
b next2
val2: .word 3057629352
next2:ldr R3, val3
b next3
val3: .word 15089425
next3:ldr R4, val4
b next4
val4: .word 205242851
next4:ldr R5, val5
b next5
val5: .word 2503912334
next5:ldr R6, val6
b next6
val6: .word 891516577
next6:ldr R7, val7
b next7
val7: .word 3422267615
next7:ldr R8, val8
b next8
val8: .word 3685944350
next8:ldr R9, val9
b next9
val9: .word 2020983325
next9:ldr R10, val10
b next10
val10: .word 960022370
next10:ldr R11, val11
b next11
val11: .word 1825507556
next11:ldr R12, val12
b next12
val12: .word 1069797332
next12:ldr R14, val14
b next14
val14: .word 3678087862

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 1975547844
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 4120131950
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 2264506892
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 2852231493
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 1754345287
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 3662939165
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 3877552055
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 667917708
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3780890441
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 2921576389
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 3972892098
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 1365698571
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 449677456
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 1078567152
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 1940794284
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 666804881
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 1546459085
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 3101750677
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 1755060722
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 844407381
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 2493238341
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: ldmDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l2: ldmCCDA R13, {R0, R3, R5}
l3: ldmNEIA R13, {R1, R4, R6, R8, R11, R14}
l4: ldmDB R13!, {R0, R3, R4, R7, R9, R10, R11, R12}
l5: ldmGEIB R13, {R0, R1, R3, R8, R10}
l6: ldmIA R13!, {R0, R2, R3, R5, R6, R7, R8, R9, R10, R14}
l7: ldmDB R13!, {R0, R2, R4, R5, R6, R10, R11}
l8: ldmIB R13!, {R2, R7, R14}
l9: ldmDB R13!, {R1, R2, R4, R5, R7, R9, R10, R11}
l10: ldmCCDB R13, {R5}
l11: ldmDB R13!, {R14}
l12: ldmDB R13, {R0, R2, R12}
l13: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l14: ldmGEDA R13, {R1, R3, R4, R5, R6, R9, R14}
l15: ldmIB R13!, {R2, R6}
l16: ldmVCIB R13, {R0, R2}
l17: ldmDB R13!, {R2, R3, R4, R5, R6, R8, R9, R10, R12, R14}
l18: ldmDA R13!, {R7}
l19: ldmGEIB R13, {R1, R2, R6, R7, R8, R9, R10, R11}
l20: ldmDA R13!, {R2, R9, R10}
l21: ldmDB R13, {R3, R7, R8, R11}
l22: ldmDA R13!, {R1}
l23: ldmIB R13!, {R0, R1, R2, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l24: ldmIA R13!, {R7}
l25: ldmDB R13!, {R6}
l26: ldmLTDA R13, {R1, R2, R6}
l27: ldmIB R13!, {R1, R2, R6, R11}
l28: ldmDB R13!, {R1, R2, R3, R4, R5, R7, R8, R9, R10, R11, R14}
l29: ldmHIIB R13, {R1, R2, R4, R8, R9}
l30: ldmIA R13!, {R3, R4, R8, R10}
l31: ldmIA R13!, {R2, R4, R7, R9, R10}
l32: ldmDA R13!, {R0, R2, R3, R4, R6, R7, R8, R10, R11, R12}
l33: ldmIA R13!, {R1, R3, R5, R6, R7, R9, R10, R11, R12, R14}
l34: ldmIB R13!, {R1, R4, R11}
l35: ldmDA R13!, {R3, R5, R10}
l36: ldmIB R13!, {R1, R6, R8}
l37: ldmLTDB R13, {R0, R1, R3, R5, R6, R8, R10}
l38: ldmDA R13!, {R1, R2}
l39: ldmDA R13!, {R1, R2, R5, R11}
l40: ldmIA R13!, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l41: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R7, R8, R9, R10, R12, R14}
l42: ldmDB R13!, {R4}
l43: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R12, R14}
l44: ldmDB R13!, {R0, R2, R3, R6, R7, R8, R9, R12}
l45: ldmDA R13!, {R0, R1, R2, R3, R4, R6, R7, R9, R10, R11, R12}
l46: ldmLEDB R13, {R0}
l47: ldmIA R13!, {R2, R3, R5, R6, R7, R8, R9, R11, R12, R14}
l48: ldmIA R13!, {R0, R1, R5, R6}
l49: ldmGEIB R13, {R9}
l50: ldmIB R13, {R0, R4, R5}
l51: ldmDA R13, {R1, R12}
l52: ldmDA R13, {R8, R14}
l53: ldmIA R13!, {R2, R7, R10}
l54: ldmDB R13!, {R0, R1, R2, R3, R5, R7, R8, R9, R10, R11, R12, R14}
l55: ldmPLIA R13, {R2, R8, R9, R11, R12}
l56: ldmIB R13!, {R1, R2, R3, R6, R8, R10, R11, R12, R14}
l57: ldmDB R13!, {R12}
l58: ldmIB R13!, {R8, R10}
l59: ldmDA R13!, {R5, R7}
l60: ldmDA R13!, {R2, R5, R8, R10, R12}
l61: ldmDB R13!, {R3, R4, R8, R9, R10}
l62: ldmIB R13!, {R1, R2, R6, R9, R10, R12}
l63: ldmLEDB R13, {R2, R4, R12}
l64: ldmDA R13!, {R1, R2, R4, R10, R11, R12}
l65: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l66: ldmDA R13!, {R0, R2, R6, R11}
l67: ldmIA R13!, {R2, R4, R6, R8, R11}
l68: ldmDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l69: ldmIB R13!, {R0, R1, R3, R4, R5, R7, R8, R10, R11, R12, R14}
l70: ldmLSDB R13, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R10, R12, R14}
l71: ldmDB R13!, {R3, R8, R12, R14}
l72: ldmDB R13!, {R4}
l73: ldmIB R13!, {R0, R2, R3, R4, R5, R6, R8, R9, R10, R11, R12, R14}
l74: ldmIA R13!, {R3, R5, R7, R9, R11}
l75: ldmIB R13, {R0, R14}
l76: ldmIB R13!, {R9}
l77: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l78: ldmVCDB R13, {R0, R1, R7, R9, R11, R14}
l79: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l80: ldmDB R13!, {R5}
l81: ldmIA R13!, {R3, R4, R6, R9}
l82: ldmHIIA R13, {R5, R7, R8}
l83: ldmIA R13, {R6}
l84: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R7, R9, R10, R12, R14}
l85: ldmVSIB R13, {R0, R1, R5, R10, R12}
l86: ldmCSDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l87: ldmIB R13, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R10, R11, R12, R14}
l88: ldmIB R13!, {R0, R1, R3, R12}
l89: ldmLSDA R13, {R7}
l90: ldmNEDB R13, {R0, R2, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l91: ldmIA R13, {R2, R4, R6, R8, R10, R11}
l92: ldmIB R13, {R1, R2, R4, R8, R10}
l93: ldmIB R13!, {R0, R3, R7, R11}
l94: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l95: ldmNEIB R13, {R0, R2, R7, R8, R9, R10, R11}
l96: ldmDA R13!, {R0, R2, R12, R14}
l97: ldmDA R13!, {R10}
l98: ldmIA R13!, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R11, R12}
l99: ldmIA R13!, {R10}
l100: ldmDA R13!, {R0, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l101: ldmDA R13!, {R2, R3, R7, R8, R9, R10, R11, R12, R14}
l102: ldmIA R13!, {R3, R5, R6, R9, R10, R12}
l103: ldmCCIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l104: ldmIA R13, {R4}
l105: ldmDB R13, {R2, R5, R6, R10, R12}
l106: ldmIB R13, {R1, R7, R8, R11, R12}
l107: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R12, R14}
l108: ldmIA R13!, {R1, R8, R10, R11}
l109: ldmIA R13, {R0, R3, R5, R6, R9}
l110: ldmLTDA R13, {R2, R6, R12, R14}
l111: ldmIA R13!, {R2, R9, R14}
l112: ldmGTIB R13, {R0, R1, R3, R6, R9}
l113: ldmDA R13!, {R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R12, R14}
l114: ldmDB R13!, {R10}
l115: ldmDB R13!, {R1, R2, R4, R5, R9, R12, R14}
l116: ldmIA R13!, {R0, R7, R9, R10, R12}
l117: ldmIB R13!, {R6, R12}
l118: ldmIA R13!, {R0, R2, R4, R6, R7, R8, R10, R11, R12, R14}
l119: ldmDB R13!, {R0, R1, R2, R3, R4, R7, R11, R12, R14}
l120: ldmDA R13, {R0, R3, R5, R8, R9, R14}
l121: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l122: ldmIA R13, {R9, R10}
l123: ldmDB R13!, {R0, R1, R2, R3, R6, R7, R8, R14}
l124: ldmDA R13!, {R0, R7, R8, R9, R12, R14}
l125: ldmDA R13!, {R2, R6, R9}
l126: ldmDB R13, {R7}
l127: ldmIA R13!, {R3, R5, R8, R10, R14}
l128: ldmIA R13!, {R0, R2, R3, R4, R9, R11, R12, R14}
l129: ldmDB R13!, {R0, R3, R5, R6, R7, R11, R14}
l130: ldmLSIA R13, {R1, R4, R6, R9, R10, R11}
l131: ldmDA R13!, {R3, R6}
l132: ldmDA R13, {R7}
l133: ldmGTIB R13, {R0, R1, R3, R4, R6, R8, R11, R14}
l134: ldmIA R13!, {R7, R11}
l135: ldmDB R13!, {R1, R10, R11}
l136: ldmIB R13!, {R5, R8, R12}
l137: ldmDA R13!, {R2, R3, R5, R7, R9}
l138: ldmIA R13, {R2, R3}
l139: ldmDA R13!, {R0, R1, R2, R4, R6, R7, R9, R10, R14}
l140: ldmDB R13!, {R4, R5, R11}
l141: ldmIA R13!, {R4, R7, R9, R10, R12}
l142: ldmIB R13!, {R4}
l143: ldmLSDB R13, {R1}
l144: ldmIA R13!, {R3, R4, R5, R6, R7, R11, R12, R14}
l145: ldmDB R13, {R0, R1, R2, R3, R4, R8, R9, R11, R12, R14}
l146: ldmDA R13!, {R1, R2, R5, R6, R10}
l147: ldmDB R13!, {R9, R12}
l148: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R7, R8, R9, R11, R12, R14}
l149: ldmIB R13!, {R3, R4, R5, R7, R9, R10, R12}
l150: ldmEQDB R13, {R11, R12, R14}
l151: ldmIB R13!, {R4}
l152: ldmMIDB R13, {R2, R4, R8, R11}
l153: ldmDA R13!, {R0, R1, R2, R4, R6, R7, R10, R11, R12}
l154: ldmIA R13!, {R0, R1, R3, R5, R6, R7, R9, R11}
l155: ldmLSIB R13, {R1, R4, R6, R10, R11}
l156: ldmIB R13!, {R4, R8}
l157: ldmDB R13!, {R8}
l158: ldmCCDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l159: ldmIA R13!, {R1, R6, R10}
l160: ldmDB R13!, {R2, R3, R6, R9, R12, R14}
l161: ldmDB R13!, {R1}
l162: ldmIB R13!, {R1, R5, R6, R9}
l163: ldmIA R13!, {R0, R5, R8, R10, R12, R14}
l164: ldmDA R13!, {R2, R7}
l165: ldmNEDB R13, {R1, R2, R3, R6, R8, R9, R12}
l166: ldmIB R13!, {R3, R4, R5, R7, R8, R9, R11, R12, R14}
l167: ldmIB R13!, {R4}
l168: ldmDB R13!, {R0, R1, R2, R5, R6, R7, R8, R9, R10, R12, R14}
l169: ldmGTIA R13, {R0, R1, R2, R3, R5, R6, R8, R9, R14}
l170: ldmIA R13, {R2}
l171: ldmIA R13!, {R0, R1, R2, R4, R5, R7, R8, R10, R12, R14}
l172: ldmNEDB R13, {R0, R2, R3, R6, R7, R8, R9, R10, R11, R12, R14}
l173: ldmDB R13!, {R0, R1, R6}
l174: ldmDA R13, {R1, R12}
l175: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R7, R10, R12, R14}
l176: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R10, R11, R12, R14}
l177: ldmDA R13, {R11}
l178: ldmIA R13, {R0, R2, R3, R5, R6, R7, R8, R9, R10, R12}
l179: ldmLTIB R13, {R8, R12, R14}
l180: ldmIB R13, {R4, R5, R8, R10}
l181: ldmPLIA R13, {R0, R2, R5}
l182: ldmDA R13!, {R3, R4, R12, R14}
l183: ldmIB R13!, {R1, R8}
l184: ldmDA R13!, {R0, R1, R2, R3, R5, R7, R8, R9, R12, R14}
l185: ldmDA R13!, {R2}
l186: ldmIB R13, {R0, R1, R3, R6, R7, R8, R9, R11}
l187: ldmIA R13!, {R0, R1, R6, R8}
l188: ldmIA R13!, {R0}
l189: ldmDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l190: ldmGEDA R13, {R1, R3, R10}
l191: ldmDB R13!, {R5}
l192: ldmDA R13!, {R9, R10}
l193: ldmIB R13!, {R0, R3, R5, R6, R8, R11, R12, R14}
l194: ldmDA R13!, {R4, R7, R10}
l195: ldmIA R13!, {R1, R9}
l196: ldmDB R13!, {R0, R4, R6, R7, R11}
l197: ldmIA R13!, {R1, R4, R9, R10, R11, R14}
l198: ldmDB R13!, {R2, R4, R5, R6, R7, R11, R14}
l199: ldmIB R13!, {R1, R2, R5, R6, R12}
l200: ldmGTDB R13, {R1, R3, R6, R9, R12, R14}
l201: ldmIA R13, {R6, R9, R10, R11, R14}
l202: ldmIA R13, {R0, R3, R4, R14}
l203: ldmIA R13!, {R0, R1, R3, R4, R6, R7, R8, R10, R11, R14}
l204: ldmDB R13!, {R0, R2, R5, R9, R10, R11, R14}
l205: ldmIA R13!, {R0, R1, R5, R7, R14}
l206: ldmIB R13!, {R2, R3, R4}
l207: ldmDB R13!, {R2, R9}
l208: ldmIA R13, {R5, R14}
l209: ldmDB R13!, {R0, R3, R6, R8, R10, R11, R12}
l210: ldmDA R13!, {R0, R1, R3, R6, R8, R14}
l211: ldmCSIB R13, {R1, R6, R11}
l212: ldmIB R13!, {R0, R2, R4, R5, R6, R8, R11}
l213: ldmIA R13!, {R7}
l214: ldmGEIB R13, {R4, R11}
l215: ldmDA R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l216: ldmDA R13, {R2}
l217: ldmDB R13!, {R4, R5, R8, R10, R12}
l218: ldmIB R13!, {R5, R8, R12, R14}
l219: ldmDA R13!, {R5, R7}
l220: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l221: ldmEQDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l222: ldmDB R13!, {R1, R12}
l223: ldmIB R13!, {R0, R1, R2, R4, R9, R10}
l224: ldmLEIA R13, {R0, R1, R3, R4, R6, R8, R10, R14}
l225: ldmDB R13!, {R0, R3, R4, R5, R14}
l226: ldmIA R13!, {R2, R3, R7, R8, R10, R12}
l227: ldmNEDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l228: ldmIB R13!, {R0, R2, R5, R7, R8, R11, R12, R14}
l229: ldmIB R13!, {R1, R2, R4, R6, R9, R14}
l230: ldmHIIA R13, {R0, R3}
l231: ldmDA R13!, {R2, R3, R4, R6, R7, R9, R10, R11, R12, R14}
l232: ldmIB R13!, {R11}
l233: ldmMIDB R13, {R0, R1, R2, R8, R9, R10, R11}
l234: ldmHIIA R13, {R0, R1, R2, R3, R4, R5, R6, R8, R10, R12, R14}
l235: ldmIA R13!, {R0, R2, R4, R6, R10, R11}
l236: ldmDB R13!, {R0, R1, R2, R4, R5, R6, R11, R12}
l237: ldmLSDA R13, {R0, R1, R2, R3, R5, R6, R7, R8, R11, R12, R14}
l238: ldmIA R13!, {R0, R1, R2, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l239: ldmIA R13!, {R3, R5, R6, R10}
l240: ldmVSIA R13, {R6, R7}
l241: ldmIA R13!, {R12}
l242: ldmDA R13, {R5, R6, R11, R12, R14}
l243: ldmIA R13, {R2, R3, R9, R10, R11}
l244: ldmDA R13, {R6, R7, R10}
l245: ldmIB R13!, {R2, R5}
l246: ldmIA R13, {R12}
l247: ldmDA R13, {R1, R2, R3, R4, R6, R7, R8, R9, R12}
l248: ldmDB R13!, {R0, R2, R4, R5, R6, R8, R9, R10, R11, R12}
l249: ldmIA R13!, {R12}
l250: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R9, R10, R11, R12}
l251: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R12}
l252: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l253: ldmDB R13!, {R0, R1, R2, R4, R5, R6, R7, R8, R9, R10, R12}
l254: ldmLEIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l255: ldmIA R13!, {R0}
l256: ldmLEIB R13, {R11}
l257: ldmVSIA R13, {R5, R8}
l258: ldmDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l259: ldmVCDA R13, {R4}
l260: ldmCCIB R13, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R11, R12, R14}
l261: ldmNEIB R13, {R8, R10, R11}
l262: ldmDB R13!, {R0, R3, R4, R5, R6, R9, R11, R12}
l263: ldmDA R13!, {R2, R3, R5, R6, R7, R8, R9}
l264: ldmDB R13!, {R3, R9}
l265: ldmDB R13!, {R4}
l266: ldmDB R13!, {R4, R7}
l267: ldmHIIB R13, {R0, R1, R2, R4, R12}
l268: ldmDA R13!, {R1, R12}
l269: ldmDB R13, {R8}
l270: ldmIB R13, {R3, R8, R14}
l271: ldmDB R13, {R2, R5, R7, R11, R12}
l272: ldmIB R13!, {R2, R3, R6, R8, R10, R14}
l273: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12}
l274: ldmIB R13, {R1}
l275: ldmEQDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R14}
l276: ldmLTIB R13, {R10}
l277: ldmIB R13!, {R0, R2, R5, R7, R10, R14}
l278: ldmHIIB R13, {R0, R3, R4, R8, R11, R14}
l279: ldmDA R13!, {R2, R6}
l280: ldmIB R13!, {R0, R8}
l281: ldmHIDA R13, {R2, R4, R5, R6, R8, R10, R11, R12, R14}
l282: ldmDA R13!, {R4, R6, R10, R14}
l283: ldmPLIB R13, {R0, R3, R5, R6, R7, R10, R12}
l284: ldmMIDB R13, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l285: ldmDA R13, {R6, R11}
l286: ldmIA R13, {R2, R3, R4, R5, R7, R12, R14}
l287: ldmIA R13!, {R0, R2, R3, R4, R7, R9, R10, R11, R12}
l288: ldmDA R13, {R0, R1, R3, R6, R7, R8, R10, R11, R12}
l289: ldmIA R13!, {R0, R1, R2, R3, R6, R7, R11}
l290: ldmIA R13, {R2, R7}
l291: ldmDA R13!, {R5, R10, R12, R14}
l292: ldmDB R13!, {R0, R1, R2, R3, R5, R8, R10, R11}
l293: ldmIA R13!, {R3, R4}
l294: ldmDB R13, {R5, R6, R7, R8, R9, R10}
l295: ldmIB R13!, {R0, R6, R7, R8, R10, R11, R14}
l296: ldmIB R13!, {R0, R1, R3, R5, R7, R8, R11, R12, R14}
l297: ldmDA R13!, {R3, R7, R8, R9, R12, R14}
l298: ldmDB R13, {R1, R7, R10}
l299: ldmDB R13!, {R2, R5, R12}
l300: ldmCSDA R13, {R0, R4, R6, R14}
l301: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R12, R14}
l302: ldmDB R13!, {R1, R2, R3, R6, R8, R9, R10, R12, R14}
l303: ldmDB R13!, {R0, R8}
l304: ldmDB R13!, {R5, R14}
l305: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l306: ldmDB R13!, {R8}
l307: ldmIB R13, {R7}
l308: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l309: ldmIB R13!, {R0, R4}
l310: ldmIA R13!, {R1, R2, R3, R4, R7, R9, R11, R12}
l311: ldmIA R13!, {R2, R4, R6, R10, R12}
l312: ldmIA R13!, {R7, R12, R14}
l313: ldmIB R13!, {R2}
l314: ldmIB R13, {R3}
l315: ldmDA R13!, {R2, R3, R5, R6, R10, R11, R12}
l316: ldmHIDA R13, {R1, R2, R5, R6, R7, R8, R11, R12}
l317: ldmIB R13!, {R0, R3, R6, R12}
l318: ldmMIIB R13, {R0, R2, R4, R5, R6, R7, R8, R9, R11, R14}
l319: ldmIB R13, {R3}
l320: ldmDB R13!, {R0, R6, R7, R12}
l321: ldmDB R13!, {R14}
l322: ldmIA R13!, {R3, R9, R10}
l323: ldmDA R13!, {R1, R2, R3, R4, R8, R9, R10, R12, R14}
l324: ldmIA R13!, {R2, R4, R7, R12, R14}
l325: ldmIB R13!, {R0, R2, R4, R7, R8, R14}
l326: ldmDA R13!, {R2, R3, R4, R6, R8, R9, R12, R14}
l327: ldmDA R13!, {R12}
l328: ldmDA R13!, {R3, R6, R8}
l329: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R9, R10, R12}
l330: ldmIA R13!, {R8, R11}
l331: ldmDA R13!, {R2, R9}
l332: ldmIB R13!, {R12}
l333: ldmDA R13!, {R3, R4, R11, R14}
l334: ldmCCIB R13, {R1, R14}
l335: ldmDB R13!, {R2, R3, R4, R5, R8, R10, R12}
l336: ldmDA R13!, {R3, R5, R7, R8, R9, R10, R12, R14}
l337: ldmDA R13!, {R6, R11}
l338: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l339: ldmIB R13!, {R0, R10, R14}
l340: ldmIB R13!, {R2, R8, R9}
l341: ldmDB R13!, {R2, R3, R5, R6, R7, R10, R11}
l342: ldmDB R13!, {R5}
l343: ldmIB R13!, {R1}
l344: ldmDA R13!, {R0, R3, R5, R8, R9, R11, R14}
l345: ldmCSDA R13, {R1, R5, R6, R7, R9, R11}
l346: ldmIB R13!, {R1, R4, R5, R8, R9, R14}
l347: ldmDB R13, {R12}
l348: ldmIA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l349: ldmDA R13!, {R2, R3, R4, R10, R12}
l350: ldmIA R13, {R1, R5, R6, R9, R11, R12}
l351: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l352: ldmMIIA R13, {R1, R5, R9}
l353: ldmIB R13!, {R4, R8, R10, R12, R14}
l354: ldmDB R13!, {R3, R5, R7, R9, R12, R14}
l355: ldmIB R13!, {R0, R7, R12, R14}
l356: ldmDA R13!, {R4, R7}
l357: ldmIB R13!, {R2, R6, R7, R9, R10, R11, R12}
l358: ldmIA R13!, {R2, R14}
l359: ldmIB R13!, {R8}
l360: ldmDA R13!, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12}
l361: ldmDA R13!, {R3, R9}
l362: ldmDB R13, {R3, R8, R9, R14}
l363: ldmIA R13, {R11}
l364: ldmDA R13, {R1, R14}
l365: ldmDB R13!, {R14}
l366: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R7, R9, R10, R11, R14}
l367: ldmIA R13!, {R2, R3, R7, R9, R10, R12}
l368: ldmHIDA R13, {R1, R2, R3, R4, R8, R9, R14}
l369: ldmCSDB R13, {R5, R8, R9, R11, R14}
l370: ldmDB R13!, {R1, R2, R8}
l371: ldmCSIA R13, {R0, R1, R2, R6, R7, R8, R10, R11, R14}
l372: ldmDB R13!, {R0, R2, R3, R4, R5, R7, R9, R10, R12, R14}
l373: ldmIB R13, {R1, R4, R7, R11}
l374: ldmIA R13!, {R2}
l375: ldmIA R13!, {R0, R1, R2, R3, R4, R6, R7, R10, R12, R14}
l376: ldmIA R13!, {R2, R5}
l377: ldmDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l378: ldmIB R13, {R3}
l379: ldmIA R13!, {R7, R14}
l380: ldmDA R13!, {R5, R12}
l381: ldmDB R13!, {R1, R2, R6, R11}
l382: ldmDB R13!, {R9}
l383: ldmGEIA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l384: ldmVCDA R13, {R6, R9, R11, R12}
l385: ldmDA R13!, {R0, R7, R9, R11}
l386: ldmDB R13!, {R5, R9}
l387: ldmDB R13!, {R3, R7}
l388: ldmPLIB R13, {R0, R1, R2, R4}
l389: ldmPLDA R13, {R5, R11}
l390: ldmDB R13!, {R12, R14}
l391: ldmDA R13!, {R5}
l392: ldmGEIB R13, {R1, R2, R5, R9}
l393: ldmIB R13!, {R0, R3, R5, R9, R11, R12}
l394: ldmCSIA R13, {R2, R3, R5, R7, R8, R12, R14}
l395: ldmMIIB R13, {R0}
l396: ldmEQIA R13, {R3}
l397: ldmDA R13, {R1, R3, R5, R6, R7, R9, R10, R11, R12, R14}
l398: ldmIA R13!, {R0, R1, R4, R5, R6, R7, R9, R10, R11, R14}
l399: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l400: ldmDB R13!, {R1, R12}
l401: ldmIB R13, {R2, R3, R6, R14}
l402: ldmNEDB R13, {R0, R5, R6, R8, R9, R10, R11, R14}
l403: ldmGTIA R13, {R0, R2, R3, R12, R14}
l404: ldmDB R13!, {R8}
l405: ldmIB R13!, {R2, R7, R8, R9, R10, R12, R14}
l406: ldmDA R13!, {R0, R1, R2, R4, R6, R7, R8, R9, R11, R14}
l407: ldmIB R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l408: ldmDB R13!, {R0, R4, R6, R7, R9, R11, R12}
l409: ldmDA R13!, {R8}
l410: ldmHIDA R13, {R0, R3, R4, R10, R14}
l411: ldmEQDB R13, {R12}
l412: ldmIA R13!, {R0, R1, R2, R3, R5, R7, R8, R11, R12, R14}
l413: ldmPLDA R13, {R1, R2, R3, R7, R8, R11, R12}
l414: ldmDA R13!, {R2, R9, R14}
l415: ldmIB R13!, {R0, R3, R4, R5, R7, R9, R11, R12}
l416: ldmIB R13, {R1, R2, R6, R10, R11}
l417: ldmDA R13, {R4}
l418: ldmIA R13!, {R1, R14}
l419: ldmDB R13!, {R1, R5, R8, R10}
l420: ldmVCDB R13, {R0, R2, R3, R7, R10, R11}
l421: ldmIA R13!, {R0, R2, R3, R4, R5, R6, R7, R12, R14}
l422: ldmDA R13!, {R2, R5, R6, R7, R9, R10, R11, R12}
l423: ldmDA R13!, {R5, R7, R10}
l424: ldmDB R13!, {R0, R10}
l425: ldmIA R13!, {R4}
l426: ldmDB R13, {R2}
l427: ldmGEIB R13, {R5, R8, R9, R11}
l428: ldmIB R13!, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R11, R14}
l429: ldmDB R13, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l430: ldmDB R13!, {R5, R14}
l431: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R7, R8, R9, R10, R11, R12, R14}
l432: ldmIA R13!, {R3}
l433: ldmDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l434: ldmIB R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R10, R12}
l435: ldmIB R13, {R3, R10, R11}
l436: ldmIA R13!, {R8, R10, R12}
l437: ldmDB R13, {R1, R2, R4, R7, R8, R9, R14}
l438: ldmDA R13, {R0, R5, R7, R9, R10, R12}
l439: ldmIA R13, {R0, R1, R3, R4, R5, R7, R8, R9, R10, R11, R12, R14}
l440: ldmDB R13!, {R1, R6}
l441: ldmGEIA R13, {R0}
l442: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l443: ldmDB R13!, {R10}
l444: ldmIB R13!, {R0, R1, R2, R3, R4, R6, R7, R9, R12, R14}
l445: ldmDA R13!, {R0, R4, R5, R7, R12}
l446: ldmDB R13!, {R0, R1, R3, R8, R14}
l447: ldmDB R13!, {R8}
l448: ldmMIIA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l449: ldmLSIA R13, {R1, R2, R10, R11, R12, R14}
l450: ldmVSDB R13, {R5, R6, R7, R11, R14}
l451: ldmIB R13!, {R5, R9}
l452: ldmIA R13, {R10}
l453: ldmIB R13, {R9}
l454: ldmDB R13, {R2, R3, R6, R11, R12}
l455: ldmIA R13!, {R7, R9, R10, R11, R14}
l456: ldmDA R13!, {R7, R8, R11, R12}
l457: ldmDB R13, {R0, R1, R2, R3, R4, R6, R7, R9, R10, R11, R12, R14}
l458: ldmDB R13!, {R0, R12, R14}
l459: ldmIA R13, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R10, R11, R12, R14}
l460: ldmIB R13!, {R1, R3, R7, R8, R9}
l461: ldmDA R13!, {R2, R6, R8}
l462: ldmIA R13, {R0, R1, R2, R10}
l463: ldmNEIA R13, {R6}
l464: ldmCCDA R13, {R1, R3, R11}
l465: ldmDB R13!, {R0, R2, R5, R6, R7, R8, R9, R10, R11, R12}
l466: ldmDB R13, {R1, R8, R11}
l467: ldmVCDB R13, {R0}
l468: ldmDA R13!, {R0}
l469: ldmIA R13!, {R0, R6, R7}
l470: ldmIA R13!, {R0, R1, R2, R3, R5, R6, R7, R9, R11, R12}
l471: ldmCCDA R13, {R10, R12}
l472: ldmIB R13, {R4, R11}
l473: ldmIB R13, {R1, R12}
l474: ldmIA R13!, {R7}
l475: ldmIB R13!, {R2, R5}
l476: ldmGEDA R13, {R0, R4, R6, R7, R9, R11, R12, R14}
l477: ldmDB R13!, {R0, R1, R2, R3, R4, R6, R8, R9, R12}
l478: ldmDA R13!, {R1, R6, R11}
l479: ldmIA R13!, {R0, R3, R5, R6, R7, R8, R10, R11, R12}
l480: ldmIA R13!, {R0, R3, R4, R5, R8, R12, R14}
l481: ldmDA R13!, {R0, R1, R3, R4, R5, R6, R8, R11}
l482: ldmDA R13!, {R0, R1, R4, R6, R8}
l483: ldmDB R13!, {R0, R2, R4}
l484: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l485: ldmDA R13!, {R1, R3, R4, R7, R11}
l486: ldmDA R13!, {R2}
l487: ldmIB R13!, {R2, R4, R5, R7, R8, R9, R11, R14}
l488: ldmMIDA R13, {R0, R6, R8, R11}
l489: ldmDB R13!, {R0, R3, R4, R6, R12}
l490: ldmIA R13!, {R6, R7, R10, R11}
l491: ldmIA R13!, {R3, R5, R8, R12, R14}
l492: ldmIB R13, {R7, R11, R14}
l493: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R9, R10, R11, R12, R14}
l494: ldmMIDB R13, {R0, R2, R7, R9, R10, R12}
l495: ldmEQDA R13, {R7}
l496: ldmVCIA R13, {R0, R2, R6, R7, R8, R9, R10, R11, R14}
l497: ldmIB R13!, {R7, R8, R9, R10, R12, R14}
l498: ldmIB R13!, {R11}
l499: ldmIB R13!, {R0, R3, R10, R11}
l500: ldmDB R13!, {R0, R3, R6, R11}
l501: ldmDB R13!, {R0, R1, R3, R5, R8, R9, R10}
l502: ldmDB R13!, {R0, R2, R3, R5, R7, R8, R10, R11, R12}
l503: ldmIA R13!, {R0, R8, R10, R12}
l504: ldmDB R13!, {R2, R3, R12}
l505: ldmIB R13!, {R4, R9}
l506: ldmDB R13!, {R9}
l507: ldmPLDA R13, {R3, R7}
l508: ldmIA R13!, {R2, R5, R6, R7, R8, R9, R14}
l509: ldmDB R13!, {R0, R2, R4, R6, R8, R9, R12}
l510: ldmIB R13, {R0, R3, R4, R6, R8, R10, R11, R12}
l511: ldmDA R13!, {R2, R8, R14}
l512: ldmLEDA R13, {R0, R1, R3, R9, R11}
l513: ldmIA R13!, {R2}
l514: ldmDA R13!, {R8}
l515: ldmIB R13!, {R12, R14}
l516: ldmDA R13!, {R7}
l517: ldmLSIB R13, {R0, R1, R2, R4, R6, R7, R8, R11, R12, R14}
l518: ldmCSIA R13, {R0, R1, R3, R6, R7, R9, R11, R14}
l519: ldmDB R13!, {R6, R7}
l520: ldmDA R13!, {R0, R1, R2, R3, R4, R6, R7, R8, R10, R11, R12, R14}
l521: ldmIB R13!, {R2, R3, R4, R5, R7, R10, R12, R14}
l522: ldmDA R13!, {R0, R1, R4, R5, R7, R8, R9, R10, R11, R12, R14}
l523: ldmDB R13!, {R6}
l524: ldmDB R13!, {R7}
l525: ldmIB R13, {R0, R1, R3, R4, R6, R10, R11, R14}
l526: ldmPLDB R13, {R1, R2, R4, R5, R7, R8, R9, R10}
l527: ldmIB R13!, {R0, R11, R12}
l528: ldmPLDB R13, {R0, R12}
l529: ldmDA R13, {R10}
l530: ldmVCIA R13, {R0, R10, R14}
l531: ldmIA R13!, {R0, R1, R3, R5, R7, R8, R11}
l532: ldmGEIA R13, {R6, R11, R12}
l533: ldmIB R13!, {R0, R2, R11, R14}
l534: ldmIA R13, {R4, R5}
l535: ldmIB R13!, {R0}
l536: ldmCSDB R13, {R2, R3, R4, R5, R7, R9, R11, R12}
l537: ldmIB R13!, {R3, R9, R10}
l538: ldmIB R13!, {R1, R5, R12}
l539: ldmDB R13!, {R2, R5, R6, R7, R8, R12, R14}
l540: ldmIB R13!, {R1, R4, R5, R8, R9, R10, R11, R12, R14}
l541: ldmDB R13!, {R0, R1, R2, R3, R4, R7, R8, R9, R12}
l542: ldmDB R13!, {R1, R7, R9, R10, R12, R14}
l543: ldmIB R13, {R1, R10, R11, R14}
l544: ldmDA R13!, {R1, R3, R5, R6}
l545: ldmDB R13!, {R7, R8, R9, R10, R11}
l546: ldmPLIB R13, {R0, R1, R2, R10}
l547: ldmIA R13!, {R3, R4, R7, R11}
l548: ldmDA R13, {R3, R12}
l549: ldmIA R13!, {R1, R2, R3, R4, R5, R7, R9, R10, R11, R12, R14}
l550: ldmIB R13!, {R9}
l551: ldmIA R13!, {R9, R10}
l552: ldmDB R13!, {R0, R1, R2, R6, R7, R8, R9, R10, R11, R12, R14}
l553: ldmIB R13!, {R0, R2, R5, R10, R11, R12}
l554: ldmLTDB R13, {R1, R2, R3, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l555: ldmDA R13!, {R4, R7, R11}
l556: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l557: ldmIA R13, {R3, R11}
l558: ldmDB R13!, {R1, R5, R7, R8, R9, R12, R14}
l559: ldmIB R13, {R7}
l560: ldmIB R13!, {R0, R5, R7, R8, R9, R10, R11, R14}
l561: ldmIA R13!, {R3}
l562: ldmDB R13, {R3, R8}
l563: ldmVSDA R13, {R0, R1, R3, R4, R7, R8, R9, R10, R14}
l564: ldmGEDA R13, {R0, R1, R2, R10, R12}
l565: ldmIA R13!, {R0, R3, R4, R8, R10, R11}
l566: ldmDB R13!, {R2, R3, R9}
l567: ldmIA R13!, {R1, R2, R3, R4, R7, R8, R9, R10, R12, R14}
l568: ldmDA R13!, {R4}
l569: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R10, R11, R12, R14}
l570: ldmIB R13!, {R6, R12}
l571: ldmIA R13!, {R0, R3, R4, R5, R8, R9, R11, R14}
l572: ldmIA R13!, {R1, R5, R6, R7, R10, R12, R14}
l573: ldmIA R13!, {R7}
l574: ldmDB R13!, {R0, R6, R7, R10}
l575: ldmDA R13!, {R6, R7, R9}
l576: ldmDB R13!, {R1, R2, R9, R11}
l577: ldmDA R13!, {R1, R5, R14}
l578: ldmGEDA R13, {R1, R3, R12}
l579: ldmDA R13!, {R3}
l580: ldmDB R13!, {R8}
l581: ldmIA R13, {R7, R11}
l582: ldmNEDB R13, {R5, R8}
l583: ldmIA R13!, {R2, R3, R5, R11, R12}
l584: ldmDA R13, {R1, R2, R9, R12, R14}
l585: ldmIB R13!, {R1, R5, R6, R8, R14}
l586: ldmDA R13, {R0, R7, R10, R11, R12, R14}
l587: ldmIA R13, {R0, R2, R3, R4, R5, R11, R12, R14}
l588: ldmDA R13, {R1, R9, R10}
l589: ldmIB R13, {R0, R1, R2, R4, R5, R6, R7, R9, R10, R11, R12, R14}
l590: ldmVSIA R13, {R0}
l591: ldmIB R13!, {R4, R10}
l592: ldmDA R13!, {R0, R2, R3, R7, R8, R9, R14}
l593: ldmIB R13, {R3, R6, R7}
l594: ldmIA R13!, {R3, R4, R5, R7}
l595: ldmDA R13!, {R0, R1, R2, R4, R5, R6, R7, R9, R12, R14}
l596: ldmVSIA R13, {R1, R3, R4, R10}
l597: ldmIB R13!, {R0, R1, R2, R3, R4, R7}
l598: ldmNEDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l599: ldmIA R13, {R0, R1, R2, R3, R4, R5, R7, R9, R10, R11, R12, R14}
l600: ldmLEIB R13, {R12}
l601: ldmDB R13!, {R0, R1, R3, R4, R5, R6, R7, R9, R10, R11, R12, R14}
l602: ldmIA R13!, {R1, R2, R3, R8, R9, R10, R12}
l603: ldmLTIA R13, {R5, R6}
l604: ldmDB R13!, {R0, R3, R4, R5, R7, R8, R9, R10, R11, R12, R14}
l605: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l606: ldmDA R13, {R0, R3, R4, R6, R12, R14}
l607: ldmLEDA R13, {R7}
l608: ldmIA R13!, {R0, R1, R3, R4, R6, R8, R11}
l609: ldmDB R13, {R0, R2, R3, R6, R8, R10, R12}
l610: ldmDA R13, {R5, R12}
l611: ldmDB R13!, {R0, R2, R5, R6, R7, R10, R11, R12}
l612: ldmIA R13, {R8, R11}
l613: ldmIA R13!, {R7, R11}
l614: ldmEQIB R13, {R4, R9, R12}
l615: ldmIB R13!, {R1, R2, R3, R4, R8, R14}
l616: ldmIB R13!, {R5, R6, R7, R12}
l617: ldmDA R13, {R0, R1}
l618: ldmIA R13!, {R0, R7}
l619: ldmDB R13, {R0, R3, R6, R9, R10, R12}
l620: ldmDA R13, {R11, R14}
l621: ldmGEDB R13, {R0, R2, R3, R5, R8, R11}
l622: ldmIA R13!, {R0, R1, R2, R4, R8, R12}
l623: ldmGTDA R13, {R1, R2, R3, R5, R6, R8, R9, R10, R12}
l624: ldmIB R13!, {R3, R6}
l625: ldmDB R13, {R3, R4, R6, R7, R8}
l626: ldmIA R13!, {R2, R5, R6, R8, R10, R12}
l627: ldmDB R13!, {R9}
l628: ldmDA R13!, {R3, R6}
l629: ldmDB R13!, {R10, R11}
l630: ldmDA R13!, {R6}
l631: ldmIA R13!, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l632: ldmIA R13, {R0, R3, R4, R5, R9, R10, R11}
l633: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l634: ldmDA R13!, {R4}
l635: ldmIA R13!, {R2}
l636: ldmEQIA R13, {R1, R4, R7, R8}
l637: ldmDA R13!, {R0, R1, R2, R4, R5, R6, R7, R10, R12, R14}
l638: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l639: ldmIB R13!, {R3}
l640: ldmDB R13, {R0, R2}
l641: ldmCSIA R13, {R1, R10, R12}
l642: ldmIB R13!, {R12}
l643: ldmIB R13!, {R2, R4, R10}
l644: ldmDB R13!, {R3, R4, R5, R6, R7, R11, R14}
l645: ldmDA R13!, {R0, R1}
l646: ldmDB R13!, {R0, R2, R3, R4, R5, R6, R8, R10, R11, R12}
l647: ldmDB R13!, {R6}
l648: ldmIA R13!, {R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R12}
l649: ldmDB R13!, {R0, R6, R7, R14}
l650: ldmIB R13!, {R10, R12}
l651: ldmDA R13!, {R1, R3, R9, R10}
l652: ldmNEIA R13, {R0, R2, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l653: ldmDA R13!, {R0, R4, R9, R12}
l654: ldmIA R13!, {R0, R2, R4, R5, R7, R9}
l655: ldmIB R13!, {R7, R14}
l656: ldmEQDA R13, {R0, R1, R4, R5, R6, R8, R9}
l657: ldmDB R13!, {R0, R1, R3, R8, R9, R10, R11, R12}
l658: ldmDB R13!, {R1}
l659: ldmCCDB R13, {R0, R2, R10}
l660: ldmDA R13!, {R2}
l661: ldmIB R13!, {R0, R2, R3, R4, R5, R6, R7, R8, R12, R14}
l662: ldmIA R13!, {R1, R6, R8, R10, R11, R12, R14}
l663: ldmDB R13, {R2, R4, R7, R8, R9, R10, R12}
l664: ldmGTIB R13, {R1, R2, R3, R7, R8, R9, R10, R11, R14}
l665: ldmDB R13, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R10, R14}
l666: ldmDB R13!, {R2, R4, R5, R7, R8, R9, R12, R14}
l667: ldmIA R13!, {R1, R8, R12}
l668: ldmIB R13!, {R1, R2, R3, R4, R5, R6, R7, R8, R11, R12, R14}
l669: ldmIB R13!, {R10}
l670: ldmDA R13!, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l671: ldmDB R13!, {R2, R14}
l672: ldmIA R13!, {R1, R2, R3, R4, R5, R6, R8}
l673: ldmDB R13!, {R0, R2, R7, R8, R12, R14}
l674: ldmDA R13!, {R7}
l675: ldmIB R13!, {R2, R3, R6, R7, R8, R9, R10, R11}
l676: ldmIB R13!, {R4}
l677: ldmIA R13!, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R11}
l678: ldmDB R13!, {R0, R1, R3, R4, R6, R7, R8, R10}
l679: ldmLSIB R13, {R0, R1, R3, R7, R9, R10, R11, R12, R14}
l680: ldmDA R13!, {R1}
l681: ldmDB R13!, {R0, R1, R4, R6, R9, R10, R11}
l682: ldmIA R13, {R1, R2, R3, R4, R8, R10, R11, R14}
l683: ldmPLDB R13, {R6, R14}
l684: ldmIA R13!, {R2, R8}
l685: ldmDA R13, {R7}
l686: ldmDA R13, {R1, R3, R4, R5, R6, R8, R9, R14}
l687: ldmIA R13!, {R1, R2, R5, R7, R10, R12}
l688: ldmDB R13!, {R2, R3, R4, R5, R6, R7, R9, R10}
l689: ldmIA R13!, {R1, R2, R4, R5, R6, R9, R12, R14}
l690: ldmDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l691: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R10, R11, R12, R14}
l692: ldmIA R13!, {R3, R4, R6, R10, R11}
l693: ldmDB R13!, {R6}
l694: ldmDB R13!, {R2, R8, R10, R14}
l695: ldmIB R13, {R1, R2, R3, R14}
l696: ldmNEDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l697: ldmDB R13, {R3, R6, R7, R10, R11}
l698: ldmLEIA R13, {R0, R1, R3, R4, R5, R6, R8, R10, R11, R12, R14}
l699: ldmIB R13!, {R0, R2, R4, R6, R9, R11, R12, R14}
l700: ldmDA R13!, {R1, R2, R3, R6, R7, R8, R10, R11, R12}
l701: ldmIA R13!, {R0, R1, R14}
l702: ldmIA R13!, {R0, R1, R5, R12}
l703: ldmIB R13!, {R8, R11}
l704: ldmCCIA R13, {R12}
l705: ldmDB R13!, {R0, R1, R2, R3, R5, R7, R9, R10, R12}
l706: ldmGTDA R13, {R2, R3, R7, R9, R12, R14}
l707: ldmIB R13!, {R0, R1, R3, R9, R10, R14}
l708: ldmIB R13!, {R1, R4, R5, R6, R7, R8, R10, R14}
l709: ldmIA R13!, {R9}
l710: ldmLEDB R13, {R2, R6, R11, R14}
l711: ldmDB R13!, {R4, R5, R9, R10, R11, R12}
l712: ldmDA R13!, {R1, R3, R4}
l713: ldmDB R13!, {R2, R9}
l714: ldmIA R13!, {R1, R3, R4, R5, R6, R8, R10, R11}
l715: ldmVSDB R13, {R2, R3, R5, R10, R11, R12, R14}
l716: ldmDB R13!, {R3, R6, R9, R10, R11}
l717: ldmLSDA R13, {R6}
l718: ldmIA R13, {R0, R6, R9, R10}
l719: ldmNEIB R13, {R1, R2, R7, R8, R11}
l720: ldmLSIB R13, {R3, R6, R7, R9, R10, R11, R12, R14}
l721: ldmIA R13!, {R2, R5, R8}
l722: ldmDB R13, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R10, R12, R14}
l723: ldmIA R13!, {R0, R1, R2, R4, R5, R6, R9, R10, R11, R12, R14}
l724: ldmIB R13!, {R11}
l725: ldmDB R13!, {R1, R4, R5, R11}
l726: ldmIB R13!, {R14}
l727: ldmIB R13!, {R2, R4, R14}
l728: ldmDB R13!, {R6, R8}
l729: ldmDA R13!, {R1, R2, R3, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l730: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l731: ldmDB R13!, {R4}
l732: ldmDA R13!, {R0, R4, R7, R8, R9, R10, R11, R12, R14}
l733: ldmCCIB R13, {R3, R10}
l734: ldmDB R13!, {R4, R5, R8}
l735: ldmIA R13!, {R5, R6, R9, R11}
l736: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l737: ldmIB R13!, {R2, R11, R14}
l738: ldmDB R13!, {R3, R6, R7}
l739: ldmIA R13!, {R11}
l740: ldmIB R13!, {R1, R3, R4, R5, R7, R8, R9, R10, R11, R12}
l741: ldmDB R13!, {R1, R2, R3, R4, R6, R9, R11}
l742: ldmDA R13!, {R2, R9, R14}
l743: ldmIB R13, {R1, R3}
l744: ldmDA R13!, {R2, R9}
l745: ldmIA R13, {R0, R2, R5, R7, R12, R14}
l746: ldmDA R13!, {R0, R1, R7, R11}
l747: ldmVCIA R13, {R2, R3, R4, R6, R7, R9, R10, R12, R14}
l748: ldmGTIB R13, {R3, R7, R8, R12}
l749: ldmDA R13!, {R2, R4, R5, R6, R7, R8, R10, R12}
l750: ldmDB R13!, {R0, R3, R4, R5, R8, R11, R14}
l751: ldmDB R13!, {R9}
l752: ldmIA R13!, {R0, R2, R3, R4, R5, R6, R8, R9, R10, R12, R14}
l753: ldmDA R13!, {R0, R1, R3, R4, R5, R8, R9, R11, R12}
l754: ldmDB R13!, {R0, R6}
l755: ldmLSIA R13, {R0, R1, R3, R4, R5, R7, R8, R9, R10, R11, R12, R14}
l756: ldmDB R13!, {R4, R9, R11}
l757: ldmDB R13, {R0, R4, R5, R8, R9, R11}
l758: ldmLSIB R13, {R3, R10}
l759: ldmIB R13, {R0, R1, R2, R3, R4, R6, R7, R9, R10, R11, R14}
l760: ldmIA R13!, {R3, R6, R8, R14}
l761: ldmDB R13!, {R0, R1, R3, R5, R6, R7, R9, R10, R11, R14}
l762: ldmDA R13!, {R1, R5, R6, R9, R10}
l763: ldmCSIA R13, {R2, R3, R7, R8, R9, R12}
l764: ldmIA R13!, {R6}
l765: ldmDB R13!, {R4, R6, R7, R8}
l766: ldmIB R13!, {R0, R5, R14}
l767: ldmCSIB R13, {R0, R3, R5, R6, R7, R8, R9, R11, R14}
l768: ldmDB R13!, {R1, R2}
l769: ldmDA R13!, {R0, R2, R3, R6, R8, R12, R14}
l770: ldmIB R13, {R4, R9, R11, R12}
l771: ldmIB R13, {R12}
l772: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R12, R14}
l773: ldmIA R13!, {R8, R11, R12}
l774: ldmIA R13!, {R3, R4, R5, R8, R9, R14}
l775: ldmIB R13!, {R6, R8, R12, R14}
l776: ldmDB R13!, {R9}
l777: ldmDA R13!, {R3, R12}
l778: ldmLSDA R13, {R0, R1, R2, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l779: ldmIA R13!, {R1, R2, R3, R5, R6, R7, R8, R10, R11, R12, R14}
l780: ldmIA R13!, {R1, R3, R6, R8, R10}
l781: ldmDB R13!, {R5, R6, R7}
l782: ldmDA R13!, {R0, R1, R4, R6, R11, R12, R14}
l783: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l784: ldmDA R13!, {R0, R7, R12, R14}
l785: ldmIB R13!, {R6, R10}
l786: ldmIA R13!, {R5, R12}
l787: ldmLEDB R13, {R2, R3, R4, R7, R9, R12}
l788: ldmDB R13!, {R0, R2, R4, R7, R9, R10, R14}
l789: ldmIB R13!, {R0, R1, R2, R3, R6, R7, R8, R10, R11, R12, R14}
l790: ldmNEIA R13, {R7}
l791: ldmDB R13!, {R0, R2, R5, R9, R10}
l792: ldmDA R13!, {R0, R2}
l793: ldmIA R13, {R5}
l794: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l795: ldmVCIA R13, {R1, R2, R3, R4, R5, R6, R9, R10, R11}
l796: ldmDB R13!, {R0, R1, R3, R9, R10, R12, R14}
l797: ldmIB R13!, {R0, R1, R2, R4, R5, R6, R7, R9, R10, R11, R12, R14}
l798: ldmIB R13, {R7, R9}
l799: ldmGTDB R13, {R7, R8, R12}
l800: ldmIB R13!, {R0, R4, R11, R12}
l801: ldmIA R13!, {R9}
l802: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R14}
l803: ldmVCIB R13, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R10, R11}
l804: ldmDB R13!, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l805: ldmIA R13!, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R11, R12, R14}
l806: ldmIB R13!, {R7, R9, R11, R14}
l807: ldmDB R13!, {R5, R9, R10}
l808: ldmDA R13, {R3, R4, R5, R9, R11, R12, R14}
l809: ldmDA R13!, {R0, R1, R2, R4, R5, R8, R9, R10, R12, R14}
l810: ldmIB R13, {R0, R1, R5, R8, R9, R10}
l811: ldmIA R13!, {R2, R3, R4, R6, R7, R8, R9, R11, R12}
l812: ldmIB R13!, {R0, R3, R8, R12}
l813: ldmDA R13!, {R0, R2, R5, R8, R9, R10, R11, R14}
l814: ldmDA R13!, {R0, R2, R3, R4, R5, R6, R8, R9, R11, R12, R14}
l815: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R10, R11, R12, R14}
l816: ldmCSIA R13, {R0, R1, R2, R4, R8, R9, R14}
l817: ldmDA R13!, {R0, R1, R2, R3, R4, R7, R9, R10, R11, R14}
l818: ldmDA R13!, {R4}
l819: ldmDA R13, {R0, R2, R3, R4, R5, R7, R8, R11}
l820: ldmDB R13!, {R10}
l821: ldmNEIB R13, {R1, R2, R3, R4, R5, R6, R7, R10, R14}
l822: ldmIB R13!, {R0, R4, R5, R7, R10, R11, R12, R14}
l823: ldmDA R13!, {R5, R11, R14}
l824: ldmCCIB R13, {R9, R14}
l825: ldmIA R13!, {R3, R7}
l826: ldmPLIB R13, {R0, R8}
l827: ldmDA R13!, {R2, R6, R7, R9, R11}
l828: ldmIA R13!, {R1, R5, R8, R9, R10}
l829: ldmDA R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11}
l830: ldmDA R13, {R1, R3, R8, R9}
l831: ldmDB R13!, {R3}
l832: ldmHIDB R13, {R0, R1, R7}
l833: ldmDA R13!, {R11}
l834: ldmIA R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l835: ldmDB R13, {R0, R1, R2, R3, R5, R6, R7, R8, R10, R11, R12, R14}
l836: ldmDA R13!, {R7}
l837: ldmLTIB R13, {R0, R2, R3, R4, R5, R6, R8, R9, R10, R11, R12, R14}
l838: ldmVSDA R13, {R0, R1, R4, R5, R6, R7, R12, R14}
l839: ldmVSDB R13, {R14}
l840: ldmDA R13, {R10, R12}
l841: ldmIB R13!, {R0, R2, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l842: ldmDB R13!, {R4, R9, R11}
l843: ldmDB R13!, {R1, R3, R4, R5, R7, R10}
l844: ldmIB R13!, {R2, R7, R9}
l845: ldmDA R13!, {R3, R6, R7, R10, R14}
l846: ldmDA R13!, {R2}
l847: ldmIB R13, {R0, R1, R5, R6, R7, R9, R10, R11, R12}
l848: ldmIB R13!, {R4, R9, R10, R12, R14}
l849: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l850: ldmIA R13!, {R0, R1, R4, R5, R6, R7, R11, R14}
l851: ldmIA R13!, {R2, R6, R7, R8, R10, R11}
l852: ldmIA R13!, {R1, R2, R5, R10, R12}
l853: ldmDA R13, {R0, R2, R3, R5, R6, R7, R9, R10, R12, R14}
l854: ldmIB R13!, {R1, R5, R9, R14}
l855: ldmIA R13, {R14}
l856: ldmIB R13!, {R3, R6, R8}
l857: ldmIA R13, {R4}
l858: ldmLTIB R13, {R4, R10}
l859: ldmDB R13!, {R3, R6}
l860: ldmDB R13!, {R0, R1, R3, R5, R6, R7, R8, R9, R10, R11, R12}
l861: ldmDA R13!, {R0, R5, R6, R8, R11}
l862: ldmDB R13!, {R8}
l863: ldmDA R13!, {R14}
l864: ldmIA R13!, {R0, R2, R5, R8, R9, R10, R11, R12}
l865: ldmDB R13!, {R1, R4, R5, R6, R7, R10, R11}
l866: ldmIA R13!, {R0, R1, R3, R5, R6, R7, R8, R9, R10, R11, R14}
l867: ldmIA R13!, {R0, R1, R2, R6, R7, R8, R9, R11}
l868: ldmDA R13, {R0, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l869: ldmIA R13, {R0, R1, R4, R6, R7, R8, R10, R12, R14}
l870: ldmIB R13!, {R7}
l871: ldmDB R13!, {R0, R1, R2, R6, R9, R10, R12, R14}
l872: ldmDA R13, {R1, R4, R6, R7, R10, R11, R14}
l873: ldmIA R13!, {R0, R3, R4, R5, R7, R8, R9, R14}
l874: ldmIA R13!, {R1, R2, R3, R5, R6, R7, R11, R12}
l875: ldmDA R13!, {R0, R2, R5, R7, R8, R9, R14}
l876: ldmIB R13!, {R2, R6, R7, R9}
l877: ldmIB R13, {R1, R5, R7}
l878: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l879: ldmIA R13!, {R0, R1, R2, R3, R4, R7, R8, R9, R12, R14}
l880: ldmIA R13, {R3, R6}
l881: ldmEQDA R13, {R2, R4, R5, R11, R12, R14}
l882: ldmDA R13!, {R2, R3, R11}
l883: ldmLSIB R13, {R2}
l884: ldmDA R13!, {R1, R3, R9}
l885: ldmLTDB R13, {R1, R9, R10}
l886: ldmDA R13!, {R5, R11}
l887: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l888: ldmLSDB R13, {R4, R5, R8, R12}
l889: ldmDB R13!, {R2, R4, R7, R8, R10}
l890: ldmIA R13!, {R0, R2, R4, R6, R8, R9, R10, R11, R12, R14}
l891: ldmDA R13!, {R0, R2, R3, R5, R7, R8, R9, R10, R11, R14}
l892: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R10, R11, R12, R14}
l893: ldmPLIB R13, {R0}
l894: ldmDB R13!, {R0, R4, R5, R7, R8, R9, R10, R11, R14}
l895: ldmIA R13!, {R2, R7, R8, R11}
l896: ldmDB R13!, {R1, R2, R4, R6, R8, R9, R10, R11}
l897: ldmDA R13!, {R0, R1, R6, R7, R8, R11, R12}
l898: ldmIA R13!, {R0, R4, R10, R14}
l899: ldmIA R13!, {R1, R2, R3, R4, R6, R7, R8, R9, R10}
l900: ldmIA R13!, {R1, R2, R7, R8, R9, R11}
l901: ldmNEDB R13, {R0, R1, R2, R4, R8, R11, R12, R14}
l902: ldmDA R13, {R0, R1, R3, R4, R6, R9}
l903: ldmIB R13!, {R0, R4, R8}
l904: ldmLSDA R13, {R1, R2, R3, R9, R10, R12, R14}
l905: ldmIB R13, {R11}
l906: ldmIB R13!, {R2, R4, R6, R10, R14}
l907: ldmIA R13!, {R0, R1, R2, R3, R6, R7, R9, R11, R12}
l908: ldmDB R13!, {R0, R2, R5, R7, R8, R9, R11, R12, R14}
l909: ldmIA R13!, {R1, R3, R4, R5, R6, R7, R8, R9, R10, R11}
l910: ldmDA R13!, {R7, R9, R10, R12}
l911: ldmIA R13!, {R3, R5, R8, R9, R10, R11, R14}
l912: ldmEQDA R13, {R1}
l913: ldmPLDB R13, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R10, R11, R12, R14}
l914: ldmDA R13!, {R1, R4, R10}
l915: ldmDB R13!, {R2, R12}
l916: ldmGTIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R12, R14}
l917: ldmIA R13!, {R6}
l918: ldmDB R13, {R2, R4, R8, R9, R11, R14}
l919: ldmDA R13, {R2, R3, R4, R5, R10, R12, R14}
l920: ldmLEIB R13, {R0, R5, R9, R11, R14}
l921: ldmLSIA R13, {R0, R1, R3, R4, R7, R8, R9, R12}
l922: ldmIB R13!, {R1, R10, R12}
l923: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R7, R9, R11, R12, R14}
l924: ldmIB R13!, {R0, R1}
l925: ldmLEIA R13, {R0, R2, R3, R5}
l926: ldmDA R13!, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R11, R12, R14}
l927: ldmDB R13!, {R6}
l928: ldmIB R13, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l929: ldmIA R13!, {R10, R11, R12}
l930: ldmIA R13!, {R9}
l931: ldmDB R13, {R3, R6, R7}
l932: ldmEQIB R13, {R3, R4, R6, R7, R8}
l933: ldmLEIA R13, {R3, R12}
l934: ldmDB R13!, {R4, R9, R10, R11}
l935: ldmDB R13!, {R1, R2, R3, R4, R8, R9, R10, R12}
l936: ldmDA R13!, {R9}
l937: ldmNEIA R13, {R0, R1, R2, R7, R8, R10, R11, R12, R14}
l938: ldmIB R13!, {R9}
l939: ldmIB R13!, {R3}
l940: ldmMIDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l941: ldmIA R13!, {R1, R3, R5, R6, R9, R10, R11}
l942: ldmIB R13!, {R0, R2, R3, R4, R6, R8, R12, R14}
l943: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l944: ldmCSIA R13, {R6, R8}
l945: ldmDB R13!, {R2, R4, R10, R11}
l946: ldmDA R13!, {R0, R3, R10}
l947: ldmDA R13, {R12}
l948: ldmIA R13!, {R6, R9}
l949: ldmIA R13!, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l950: ldmIB R13!, {R1, R5, R7, R8}
l951: ldmIA R13!, {R1}
l952: ldmDB R13!, {R7, R10, R11}
l953: ldmDB R13!, {R1, R4, R5, R8, R11}
l954: ldmIA R13!, {R0, R3, R8, R10, R11}
l955: ldmIA R13!, {R2, R6, R9}
l956: ldmVCDA R13, {R0, R1, R3, R4, R7, R8, R9, R11, R12}
l957: ldmDB R13!, {R1, R3, R6, R7, R8, R9, R11}
l958: ldmIA R13, {R0, R2, R3, R4, R5, R11, R12, R14}
l959: ldmDA R13!, {R1, R4, R9, R11, R14}
l960: ldmDB R13!, {R4, R11, R14}
l961: ldmDA R13!, {R2, R8, R14}
l962: ldmIB R13!, {R0, R1, R2, R3, R5, R6, R7, R8, R10, R11, R12}
l963: ldmDA R13!, {R0, R4, R8, R9, R10, R11, R12}
l964: ldmIB R13!, {R0, R1, R2, R4, R6, R7, R8, R9, R10, R14}
l965: ldmIB R13!, {R9, R14}
l966: ldmNEIA R13, {R3, R6, R9}
l967: ldmDB R13!, {R1, R3, R5, R6, R10, R11, R12, R14}
l968: ldmEQDB R13, {R4, R5, R7, R9, R11, R12, R14}
l969: ldmIA R13!, {R1, R2, R7, R14}
l970: ldmDA R13!, {R0, R3, R7, R11, R14}
l971: ldmIB R13!, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l972: ldmCSIA R13, {R12}
l973: ldmDA R13!, {R4}
l974: ldmDB R13!, {R2, R6, R8, R10, R11, R12}
l975: ldmCSIA R13, {R0, R2, R6, R8, R10, R11, R12}
l976: ldmIB R13!, {R6, R11}
l977: ldmCCDB R13, {R0, R1, R2, R3, R5, R7, R11, R12, R14}
l978: ldmIB R13, {R2, R4}
l979: ldmIA R13!, {R14}
l980: ldmIB R13!, {R4, R5, R10, R11, R12}
l981: ldmIA R13!, {R10}
l982: ldmDB R13!, {R0, R2, R5, R7, R9, R11}
l983: ldmIB R13!, {R1, R2, R5, R10, R11, R12}
l984: ldmDA R13!, {R0, R1, R4, R5, R6, R8, R9, R10, R11, R12}
l985: ldmIB R13!, {R2, R8, R10}
l986: ldmDA R13!, {R2, R8, R14}
l987: ldmDA R13!, {R1, R2, R4, R5, R7, R8, R11, R12}
l988: ldmLSDB R13, {R7}
l989: ldmMIIB R13, {R1, R4, R5, R6, R9, R11, R14}
l990: ldmIA R13, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R11, R12, R14}
l991: ldmDA R13, {R1, R2, R3, R4, R5, R12, R14}
l992: ldmIB R13!, {R7, R14}
l993: ldmDB R13, {R3, R6, R8, R11, R12}
l994: ldmCCDA R13, {R0, R1, R2, R3, R4, R7, R11, R12, R14}
l995: ldmDB R13!, {R14}
l996: ldmIA R13!, {R0, R1, R2, R5, R7, R8, R11, R14}
l997: ldmIA R13!, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l998: ldmDA R13, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R10, R11, R12, R14}
l999: ldmVSIB R13, {R0, R1, R2, R3, R4, R6, R7, R8, R10, R11, R12, R14}
l1000: ldmIB R13, {R3}
end: b end

