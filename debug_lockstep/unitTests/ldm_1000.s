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
val1: .word 3268684606
next1:ldr R2, val2
b next2
val2: .word 202721752
next2:ldr R3, val3
b next3
val3: .word 2853938971
next3:ldr R4, val4
b next4
val4: .word 2546173184
next4:ldr R5, val5
b next5
val5: .word 2015259112
next5:ldr R6, val6
b next6
val6: .word 4084394094
next6:ldr R7, val7
b next7
val7: .word 2308081230
next7:ldr R8, val8
b next8
val8: .word 2546926213
next8:ldr R9, val9
b next9
val9: .word 1251494486
next9:ldr R10, val10
b next10
val10: .word 1112996296
next10:ldr R11, val11
b next11
val11: .word 1872786827
next11:ldr R12, val12
b next12
val12: .word 3480834008
next12:ldr R14, val14
b next14
val14: .word 3536165066

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 1371820250
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 2143569403
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 1829697868
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 2441811127
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 3543018440
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 3369017144
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 2633132758
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 4086822909
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3578649814
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 3076711445
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 2400881215
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 1081674056
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 255536865
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 1792080291
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 4079486962
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 2607726383
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 1273250312
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 982038615
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 88196851
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 442470643
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 3600744540
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: ldmDA R13!, {R0, R1, R2, R3, R5, R6, R8, R11, R12}
l2: ldmIB R13!, {R12}
l3: ldmIA R13!, {R1, R5, R6, R7, R8, R12}
l4: ldmIB R13!, {R6}
l5: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R10, R11, R12, R14}
l6: ldmIA R13!, {R2, R6, R7, R8}
l7: ldmDB R13!, {R0, R1, R5, R6, R8}
l8: ldmHIDB R13, {R8, R10, R11}
l9: ldmIA R13!, {R0, R2, R4, R12}
l10: ldmDA R13, {R6}
l11: ldmIB R13!, {R0, R2, R4, R5, R6, R8, R9, R14}
l12: ldmDA R13!, {R1, R2, R8, R11, R12, R14}
l13: ldmIB R13, {R0, R1, R3, R7, R14}
l14: ldmIB R13!, {R4, R5, R6, R14}
l15: ldmIB R13, {R8}
l16: ldmDB R13!, {R2, R5, R6, R7, R8}
l17: ldmDB R13!, {R3, R4, R9, R11, R12}
l18: ldmDA R13!, {R7}
l19: ldmIB R13!, {R0, R1, R2, R4, R5, R6, R7, R9, R10, R11, R12, R14}
l20: ldmIA R13!, {R0}
l21: ldmDB R13!, {R0, R1, R3, R8, R9, R11}
l22: ldmIA R13!, {R3}
l23: ldmIB R13!, {R2, R6, R7, R9}
l24: ldmIB R13!, {R1}
l25: ldmDA R13, {R2, R3, R4, R5, R6, R8, R10}
l26: ldmDB R13!, {R6, R11, R12}
l27: ldmLTIB R13, {R9}
l28: ldmIB R13!, {R8, R12, R14}
l29: ldmIB R13!, {R5, R6, R8, R11}
l30: ldmIB R13!, {R11, R12}
l31: ldmDA R13!, {R9}
l32: ldmDA R13!, {R2, R3, R4, R5, R6, R8, R9, R11, R12, R14}
l33: ldmDA R13, {R5, R8}
l34: ldmLSDA R13, {R5, R8, R12}
l35: ldmDA R13!, {R0, R5}
l36: ldmIA R13, {R1, R2, R4, R5, R8}
l37: ldmDA R13!, {R6, R9, R11}
l38: ldmIA R13!, {R1, R2, R5, R8, R9, R10, R14}
l39: ldmIB R13!, {R2, R7, R14}
l40: ldmMIDB R13, {R0, R1, R2, R3, R4, R7, R8, R11}
l41: ldmIA R13!, {R1, R3, R4, R6, R7, R10, R12, R14}
l42: ldmIA R13!, {R5, R8, R9}
l43: ldmVCIA R13, {R0, R11}
l44: ldmLSIA R13, {R3}
l45: ldmDB R13!, {R0, R4, R5, R8, R9, R11, R14}
l46: ldmLSDB R13, {R6}
l47: ldmIA R13!, {R0, R2, R4, R5, R9, R11, R14}
l48: ldmIB R13!, {R2}
l49: ldmLSDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l50: ldmVSDB R13, {R7}
l51: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R9}
l52: ldmGTDA R13, {R0, R5, R7, R9, R10, R11, R12}
l53: ldmIA R13!, {R2, R8, R11}
l54: ldmDB R13!, {R0, R4, R11, R14}
l55: ldmVSIB R13, {R1, R2, R4, R5, R9, R10}
l56: ldmDA R13!, {R0, R2, R3, R4, R9}
l57: ldmDB R13!, {R2, R3, R4}
l58: ldmIB R13!, {R0, R1, R2}
l59: ldmDB R13!, {R6, R11, R12}
l60: ldmIB R13!, {R0, R3, R6, R9}
l61: ldmDB R13!, {R0, R11, R12}
l62: ldmDA R13, {R11}
l63: ldmIA R13!, {R0, R3, R5, R6, R8, R11, R12}
l64: ldmDB R13!, {R0, R3, R5, R8, R14}
l65: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l66: ldmDB R13, {R1, R4, R5, R11, R12}
l67: ldmDB R13!, {R4, R5, R6, R7, R9, R11, R14}
l68: ldmIB R13!, {R0, R5, R6, R10}
l69: ldmIA R13!, {R10, R11}
l70: ldmDB R13, {R2, R3, R4, R5, R7, R8, R12, R14}
l71: ldmIA R13!, {R0, R2, R3, R5, R6, R7, R9, R10, R11, R12}
l72: ldmIB R13!, {R8, R14}
l73: ldmHIIA R13, {R6}
l74: ldmDA R13!, {R0, R1, R11, R12}
l75: ldmIB R13!, {R3, R4, R5, R8, R9, R11, R14}
l76: ldmIB R13!, {R12}
l77: ldmVSDB R13, {R0, R1, R2, R5, R7, R8, R10, R11, R12, R14}
l78: ldmDB R13!, {R2, R4, R5, R7, R8, R9, R10, R11}
l79: ldmIB R13!, {R0, R2, R3, R5, R9, R10}
l80: ldmIB R13!, {R14}
l81: ldmDA R13!, {R2, R5, R6, R9, R10, R14}
l82: ldmDB R13!, {R1}
l83: ldmIA R13!, {R2, R5, R9, R10, R11}
l84: ldmDA R13, {R1, R4, R10}
l85: ldmDB R13!, {R0}
l86: ldmDA R13!, {R1}
l87: ldmIA R13!, {R0, R14}
l88: ldmDB R13!, {R8}
l89: ldmDA R13!, {R5}
l90: ldmGTIB R13, {R0, R2, R3, R5, R9, R11, R12, R14}
l91: ldmDB R13!, {R1}
l92: ldmDA R13, {R8, R9, R11}
l93: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l94: ldmIA R13!, {R14}
l95: ldmPLDB R13, {R0, R4, R5, R7, R9, R10, R11, R12}
l96: ldmDA R13!, {R2, R3, R4, R5, R6, R8, R9, R11, R12, R14}
l97: ldmIA R13!, {R1, R3, R4, R6, R7, R8, R11, R14}
l98: ldmDB R13!, {R4}
l99: ldmDA R13!, {R8, R11}
l100: ldmIA R13, {R11}
l101: ldmIB R13, {R0, R2, R5, R6, R8, R10, R11, R14}
l102: ldmIB R13!, {R1, R5, R10, R14}
l103: ldmDB R13!, {R3, R6, R9, R10, R11}
l104: ldmDA R13!, {R8}
l105: ldmDB R13!, {R7}
l106: ldmDB R13!, {R1, R3, R4, R5, R6, R8, R9, R10, R11}
l107: ldmIB R13!, {R1, R5, R6, R7, R9, R11}
l108: ldmLTIA R13, {R2, R4, R5, R9}
l109: ldmNEIA R13, {R0, R2, R9, R10, R14}
l110: ldmLSIA R13, {R6}
l111: ldmDA R13!, {R0, R1, R2, R3, R6, R7, R8, R12}
l112: ldmDB R13!, {R0, R1, R2, R3, R6, R7, R9, R10, R11}
l113: ldmIA R13, {R4, R10, R11, R12}
l114: ldmHIIB R13, {R4, R8, R9, R12}
l115: ldmDA R13!, {R0, R4, R6, R7, R14}
l116: ldmDB R13!, {R4, R5, R8, R14}
l117: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R10, R11, R12, R14}
l118: ldmIA R13!, {R6, R7, R10}
l119: ldmLEDA R13, {R0, R4, R6, R7, R10}
l120: ldmIB R13!, {R3, R7, R8, R9, R10, R14}
l121: ldmDB R13!, {R1}
l122: ldmCSDA R13, {R2, R5, R6, R7, R8, R10, R11, R12, R14}
l123: ldmIA R13!, {R0, R1, R2, R5, R7}
l124: ldmLEIA R13, {R0, R9, R10}
l125: ldmHIDB R13, {R0, R3, R4, R10, R12}
l126: ldmDB R13!, {R1, R4, R11, R12, R14}
l127: ldmDA R13, {R1, R5, R10}
l128: ldmIA R13!, {R11}
l129: ldmDB R13, {R3}
l130: ldmDA R13!, {R12}
l131: ldmDA R13!, {R6}
l132: ldmIA R13!, {R0, R1, R2, R4, R5, R6, R7, R9, R10, R11, R14}
l133: ldmIA R13!, {R1, R2, R4, R6, R10, R12}
l134: ldmDB R13!, {R2, R3, R5, R6, R9, R11}
l135: ldmDA R13!, {R0, R3, R4, R5, R6, R8, R14}
l136: ldmIB R13!, {R0, R1, R3, R5, R6, R7, R8, R9, R12, R14}
l137: ldmIA R13!, {R11, R12}
l138: ldmIB R13!, {R0}
l139: ldmDA R13, {R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l140: ldmIA R13!, {R1, R3, R7, R14}
l141: ldmDA R13!, {R12}
l142: ldmIA R13!, {R1, R2, R4, R5, R7, R9, R11, R14}
l143: ldmDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l144: ldmVCDA R13, {R12}
l145: ldmIB R13, {R0, R1, R4, R5, R7, R10, R11, R12, R14}
l146: ldmDB R13, {R2}
l147: ldmIB R13!, {R0, R4, R6, R7, R8, R9, R10, R12, R14}
l148: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l149: ldmIB R13!, {R8}
l150: ldmIB R13, {R3, R5, R6, R7, R11, R12}
l151: ldmDA R13!, {R0, R1, R4, R7, R8, R11}
l152: ldmDB R13!, {R0, R4, R5}
l153: ldmDA R13!, {R0, R6}
l154: ldmLEIA R13, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l155: ldmEQIB R13, {R2, R6, R11, R14}
l156: ldmIB R13!, {R5}
l157: ldmDA R13!, {R0, R1, R2, R3, R4, R6, R7, R12, R14}
l158: ldmIA R13!, {R3, R7, R9, R11, R14}
l159: ldmDA R13!, {R1, R2, R3, R5, R6, R9, R10, R11, R12}
l160: ldmIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R10, R12, R14}
l161: ldmIB R13!, {R6}
l162: ldmDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R10, R11, R14}
l163: ldmIA R13!, {R0, R3, R4, R5, R6, R7, R8, R10, R14}
l164: ldmIB R13!, {R7}
l165: ldmIB R13!, {R1, R8}
l166: ldmDB R13, {R0, R2, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l167: ldmDB R13, {R1, R2, R4, R9, R11}
l168: ldmPLDA R13, {R3, R7}
l169: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R7, R8, R10, R11, R12, R14}
l170: ldmDA R13!, {R0, R1, R4, R5, R6, R9, R14}
l171: ldmIB R13!, {R0, R1, R2, R4, R5, R6, R7, R8, R9, R10, R11, R12}
l172: ldmDA R13!, {R0, R4, R5, R7, R8, R9, R11, R14}
l173: ldmDA R13, {R3, R4, R8, R9, R11, R12, R14}
l174: ldmDA R13!, {R2, R8}
l175: ldmLSIB R13, {R6, R9, R10, R11}
l176: ldmIA R13, {R0, R2, R4, R5, R6, R8, R9, R10, R11, R14}
l177: ldmIB R13!, {R14}
l178: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l179: ldmIA R13!, {R0, R1, R6, R9, R11, R12, R14}
l180: ldmDB R13!, {R2}
l181: ldmIB R13!, {R1, R3, R6, R7, R9, R12, R14}
l182: ldmDA R13!, {R2, R3, R4, R5, R7, R10, R11}
l183: ldmIA R13!, {R0, R1, R4, R5, R6, R7, R8, R9, R14}
l184: ldmIB R13!, {R1, R7}
l185: ldmDB R13!, {R1, R11}
l186: ldmDB R13!, {R1, R2, R5, R7, R11, R14}
l187: ldmDB R13!, {R0, R1, R2, R3, R5, R8, R10, R12}
l188: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R7, R8, R9, R12}
l189: ldmIB R13!, {R3, R4, R5, R6, R10, R14}
l190: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l191: ldmDB R13, {R8, R12}
l192: ldmDA R13!, {R10}
l193: ldmDB R13!, {R3}
l194: ldmDB R13!, {R3}
l195: ldmCSIA R13, {R0, R1, R2, R3, R4, R5, R7, R8, R10, R12}
l196: ldmHIIB R13, {R4, R5}
l197: ldmIB R13, {R8, R9}
l198: ldmDB R13!, {R8, R12}
l199: ldmIA R13, {R0, R6, R12}
l200: ldmIB R13, {R7, R14}
l201: ldmIB R13!, {R4}
l202: ldmGTDA R13, {R1, R2, R5, R6, R9, R12, R14}
l203: ldmLEIB R13, {R0, R3, R4, R6, R8, R9, R12}
l204: ldmDA R13!, {R0, R4, R5, R6, R9, R10, R12, R14}
l205: ldmGEDB R13, {R7, R12}
l206: ldmDB R13!, {R8}
l207: ldmIA R13!, {R1, R2, R3, R4, R5, R6, R8, R10, R11, R12, R14}
l208: ldmGEDA R13, {R8, R11, R14}
l209: ldmDB R13!, {R0, R9, R10}
l210: ldmLTDA R13, {R0, R1, R2, R3, R7, R10, R12, R14}
l211: ldmDB R13!, {R5}
l212: ldmDA R13!, {R4, R9}
l213: ldmDA R13!, {R2}
l214: ldmIB R13!, {R1, R2, R4, R6, R9, R10, R12}
l215: ldmDA R13!, {R1, R3, R6, R8, R10, R11, R14}
l216: ldmIA R13!, {R1, R9, R11, R12}
l217: ldmVSIB R13, {R0, R1, R2, R4, R5, R7, R10, R11, R14}
l218: ldmDA R13!, {R1, R3, R5, R6, R7, R8, R10, R11, R12}
l219: ldmIA R13!, {R5, R7}
l220: ldmIA R13!, {R2, R7}
l221: ldmIA R13!, {R0, R1, R3, R5, R6, R8, R11, R14}
l222: ldmNEDA R13, {R0, R1, R4, R5, R6, R7, R8, R10, R11}
l223: ldmIB R13!, {R0, R1, R2, R4, R7, R10}
l224: ldmDA R13!, {R0, R3, R5, R6, R8, R9, R11, R12, R14}
l225: ldmIA R13, {R2, R3, R10, R14}
l226: ldmIB R13!, {R0, R3, R5, R9, R10}
l227: ldmIA R13!, {R9, R14}
l228: ldmDB R13!, {R4, R6}
l229: ldmIB R13!, {R2, R5, R6, R12}
l230: ldmIA R13!, {R5}
l231: ldmDA R13!, {R6, R8}
l232: ldmMIDB R13, {R2, R3, R8, R11, R14}
l233: ldmIB R13!, {R14}
l234: ldmDB R13!, {R3, R14}
l235: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R8, R11}
l236: ldmDA R13!, {R7, R9}
l237: ldmIA R13, {R3, R8, R9, R10, R11}
l238: ldmDA R13!, {R1, R2, R6, R7, R12}
l239: ldmIA R13!, {R0, R1, R3, R6, R11, R12, R14}
l240: ldmDB R13, {R0, R1, R5, R6, R10, R11, R12}
l241: ldmIA R13!, {R6}
l242: ldmIA R13, {R0, R1, R6, R7, R9, R10, R11, R12}
l243: ldmIB R13, {R3, R7, R8, R9, R10, R11, R12, R14}
l244: ldmIB R13!, {R9}
l245: ldmDA R13!, {R0, R6, R12, R14}
l246: ldmDB R13!, {R0, R1, R2, R3, R4, R7, R8, R10, R11, R12, R14}
l247: ldmDB R13!, {R1, R4, R11}
l248: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l249: ldmIA R13!, {R4, R12}
l250: ldmIB R13!, {R2, R7}
l251: ldmDA R13, {R0, R7, R12}
l252: ldmVSIA R13, {R3, R14}
l253: ldmIA R13!, {R11}
l254: ldmDA R13, {R1, R2, R3, R4, R9, R10, R12, R14}
l255: ldmIB R13!, {R0, R1, R6, R7, R12, R14}
l256: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R10, R14}
l257: ldmIB R13!, {R0, R1, R3, R4, R5, R6, R7, R10, R11, R12, R14}
l258: ldmIA R13!, {R6, R12}
l259: ldmDB R13!, {R2, R3, R4, R5, R7, R8, R9, R10, R11, R12, R14}
l260: ldmDA R13!, {R4, R5, R7, R9, R11}
l261: ldmLSDB R13, {R2}
l262: ldmCCIA R13, {R6}
l263: ldmDB R13!, {R3}
l264: ldmDA R13!, {R1}
l265: ldmNEIA R13, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l266: ldmIA R13!, {R4, R5, R6, R12}
l267: ldmIA R13, {R8}
l268: ldmCSDB R13, {R7}
l269: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l270: ldmDA R13!, {R5, R12}
l271: ldmDB R13!, {R4}
l272: ldmIA R13!, {R0, R1, R6, R7, R8, R9, R10, R14}
l273: ldmIB R13, {R1, R2, R3, R4, R6, R7, R8, R11, R12, R14}
l274: ldmGTDB R13, {R1, R2}
l275: ldmIB R13, {R0, R8}
l276: ldmDB R13!, {R0, R2, R3, R4, R5, R7, R9, R11, R12, R14}
l277: ldmMIDA R13, {R1, R14}
l278: ldmVSIA R13, {R0, R11}
l279: ldmDB R13!, {R5}
l280: ldmDB R13, {R5, R7, R10}
l281: ldmIA R13!, {R3, R9, R10, R11, R12, R14}
l282: ldmLSIB R13, {R0, R1, R2, R6, R7, R10, R11, R14}
l283: ldmDA R13!, {R2, R4, R5, R7, R8, R10, R11, R14}
l284: ldmDB R13, {R2, R6}
l285: ldmCSDA R13, {R2, R3, R6, R7, R9, R14}
l286: ldmDA R13, {R6, R14}
l287: ldmIB R13, {R1, R2, R5, R6, R7, R9, R10, R14}
l288: ldmDB R13!, {R1, R2, R4, R5, R6, R7, R8, R9}
l289: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l290: ldmIB R13!, {R7}
l291: ldmIA R13!, {R14}
l292: ldmDB R13, {R1, R2, R3, R5, R9}
l293: ldmDA R13!, {R0, R6, R7, R11}
l294: ldmDB R13!, {R0, R1, R2, R3, R11, R12, R14}
l295: ldmIA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l296: ldmDA R13!, {R5}
l297: ldmDB R13!, {R3, R5, R8, R10, R14}
l298: ldmIB R13!, {R0, R1, R2, R5, R7, R8, R9, R11, R12, R14}
l299: ldmDA R13, {R0, R1, R2, R3, R4, R7, R8, R11, R14}
l300: ldmCCIB R13, {R0, R3, R7, R9, R11, R14}
l301: ldmDA R13!, {R2, R4, R5, R9, R14}
l302: ldmDA R13!, {R0, R2, R3, R4, R8, R10, R11}
l303: ldmIA R13, {R2, R3, R4, R5, R6, R8, R10, R12, R14}
l304: ldmIA R13, {R8}
l305: ldmIA R13!, {R0, R6, R9, R14}
l306: ldmIB R13!, {R14}
l307: ldmDB R13!, {R7, R11}
l308: ldmDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R12, R14}
l309: ldmDB R13!, {R2, R7, R9}
l310: ldmDA R13!, {R1}
l311: ldmVSIA R13, {R0, R1, R2, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l312: ldmIB R13!, {R6, R14}
l313: ldmDB R13, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12}
l314: ldmIB R13, {R2, R3, R5, R6, R8, R9, R10, R11, R14}
l315: ldmIB R13, {R7, R11, R12}
l316: ldmIB R13!, {R9}
l317: ldmIB R13, {R4}
l318: ldmDB R13!, {R3, R5, R6, R9, R10, R11, R14}
l319: ldmDB R13!, {R0, R1, R2, R3, R4, R6, R7, R9, R10, R12, R14}
l320: ldmIA R13!, {R0, R1, R2, R3, R9, R14}
l321: ldmDA R13!, {R0, R4, R5, R9}
l322: ldmDB R13!, {R8}
l323: ldmIA R13!, {R3, R9, R14}
l324: ldmDB R13!, {R7, R9, R14}
l325: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l326: ldmIA R13, {R5, R14}
l327: ldmDA R13!, {R0, R2, R12}
l328: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l329: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l330: ldmDA R13, {R0, R1, R2, R3, R4, R6, R8, R9, R11, R12, R14}
l331: ldmLTDA R13, {R5, R11, R12}
l332: ldmIA R13!, {R0, R2, R4, R5, R6, R8, R9, R10, R12, R14}
l333: ldmLEDB R13, {R5, R6, R9, R10, R12}
l334: ldmDB R13, {R0, R3, R5, R8, R11}
l335: ldmIA R13!, {R0, R1, R3, R4, R5, R7, R8, R9, R10, R11, R12, R14}
l336: ldmDB R13!, {R0, R9, R11}
l337: ldmLEDA R13, {R1, R2, R3, R5, R7, R9, R10, R14}
l338: ldmIA R13!, {R0, R2, R3, R6, R7, R8, R10}
l339: ldmNEDB R13, {R1, R5, R6, R11}
l340: ldmIA R13!, {R0, R2, R3, R4, R5, R8, R10, R11}
l341: ldmIB R13!, {R0, R6, R7, R8, R9}
l342: ldmIB R13!, {R3}
l343: ldmPLDA R13, {R0, R6, R7, R12, R14}
l344: ldmDA R13, {R3, R5, R8, R9, R10, R11, R14}
l345: ldmIB R13!, {R0, R2, R3, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l346: ldmDB R13, {R2, R6, R8, R9, R12}
l347: ldmIB R13!, {R2, R5, R10, R11, R14}
l348: ldmDB R13!, {R0, R1}
l349: ldmIB R13!, {R8, R9}
l350: ldmDA R13!, {R3, R4, R6, R7, R14}
l351: ldmDA R13!, {R0, R1, R3, R4, R7, R9}
l352: ldmDB R13!, {R0, R8, R11, R12}
l353: ldmDA R13!, {R2, R6}
l354: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l355: ldmIA R13!, {R3, R7, R10}
l356: ldmDB R13!, {R0, R6, R7, R8, R10, R14}
l357: ldmIB R13!, {R3, R7, R9, R12}
l358: ldmIB R13!, {R5, R10}
l359: ldmCSDB R13, {R1, R2, R3, R5, R7, R8, R10, R11}
l360: ldmIB R13!, {R10}
l361: ldmDB R13!, {R0, R1, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l362: ldmIA R13, {R1}
l363: ldmIB R13!, {R0, R1, R2, R3, R4, R6, R8, R9, R10, R11, R12, R14}
l364: ldmDA R13, {R2, R11}
l365: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R7, R9, R10, R11, R14}
l366: ldmIA R13!, {R2, R12}
l367: ldmDB R13!, {R3, R11}
l368: ldmIB R13!, {R0, R1, R3, R4, R5, R6, R7, R9, R11, R14}
l369: ldmDB R13!, {R1, R2, R3, R5, R7, R8}
l370: ldmEQDB R13, {R12}
l371: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R10, R12, R14}
l372: ldmIB R13!, {R5, R11}
l373: ldmLSDB R13, {R3, R6, R7, R10, R14}
l374: ldmIA R13, {R0, R2, R8, R10, R11}
l375: ldmIA R13!, {R2}
l376: ldmDA R13!, {R2, R9, R11}
l377: ldmIA R13!, {R12}
l378: ldmIB R13!, {R11}
l379: ldmIB R13!, {R6}
l380: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l381: ldmEQIB R13, {R0, R1, R2, R3, R4, R5, R8, R9, R10, R12, R14}
l382: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R7, R9, R10, R11, R12}
l383: ldmIB R13!, {R3, R4, R5, R6, R8, R9, R14}
l384: ldmDA R13!, {R0, R3, R10, R11}
l385: ldmDA R13!, {R0, R1, R2, R5, R7, R11, R12}
l386: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R9, R10, R11, R14}
l387: ldmIA R13!, {R14}
l388: ldmDA R13!, {R2, R3, R4, R6, R8, R11, R12}
l389: ldmDA R13!, {R4, R14}
l390: ldmIA R13!, {R1, R3, R4, R12, R14}
l391: ldmDA R13!, {R0}
l392: ldmIA R13!, {R4, R9, R11, R12, R14}
l393: ldmEQIA R13, {R2, R3, R5, R7, R12}
l394: ldmDA R13!, {R2, R3, R5, R6, R7, R8, R9, R10, R11, R14}
l395: ldmIA R13!, {R3, R4, R8, R11, R12}
l396: ldmDA R13, {R0, R4, R8, R9, R14}
l397: ldmDB R13!, {R9, R10}
l398: ldmDA R13!, {R1, R3, R5, R14}
l399: ldmDB R13, {R0, R3}
l400: ldmIB R13!, {R7, R9}
l401: ldmDA R13!, {R4, R7}
l402: ldmIB R13!, {R0, R1, R2, R4, R8, R9, R10, R11, R12}
l403: ldmIA R13!, {R5, R10, R12}
l404: ldmIB R13!, {R0, R4, R7, R8, R9}
l405: ldmDB R13, {R0, R1, R2, R3, R5, R9, R11}
l406: ldmIB R13!, {R4}
l407: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R11, R12}
l408: ldmIB R13, {R0, R8}
l409: ldmIB R13!, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l410: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R11, R12, R14}
l411: ldmDA R13!, {R0, R1, R7, R12}
l412: ldmIB R13!, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R10, R11, R14}
l413: ldmDA R13!, {R4, R10}
l414: ldmNEIB R13, {R0, R1, R2, R6, R7, R11, R14}
l415: ldmVCDA R13, {R1, R2, R4, R5, R8, R10, R11, R12, R14}
l416: ldmDA R13!, {R2, R6, R10, R11}
l417: ldmDA R13!, {R1, R5}
l418: ldmIB R13, {R14}
l419: ldmDA R13!, {R11}
l420: ldmIB R13!, {R1, R5, R7, R11, R14}
l421: ldmIA R13!, {R0, R1, R3, R5, R7, R8, R9, R10, R11}
l422: ldmIB R13, {R2, R5}
l423: ldmDB R13!, {R3, R5, R7, R8, R9, R11}
l424: ldmDB R13!, {R0, R1, R3, R5, R6, R7, R8, R9, R10, R11, R12}
l425: ldmDB R13!, {R2}
l426: ldmCSIB R13, {R0, R2, R3, R4, R5, R6, R8, R10, R11, R12, R14}
l427: ldmIB R13!, {R3}
l428: ldmIB R13!, {R6, R8, R9}
l429: ldmDB R13!, {R0, R1, R2, R4, R5, R6, R8, R9, R12, R14}
l430: ldmDB R13!, {R3, R9, R11, R14}
l431: ldmIB R13!, {R0, R1, R2, R3, R5, R6, R7, R9, R10, R11, R12, R14}
l432: ldmIA R13!, {R3, R5, R6, R11, R12}
l433: ldmPLDA R13, {R4}
l434: ldmIA R13!, {R5}
l435: ldmDA R13, {R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l436: ldmLSIB R13, {R3, R7, R10}
l437: ldmDB R13!, {R0, R1, R2, R3, R6, R7, R10, R11, R12}
l438: ldmIB R13!, {R0, R2, R3, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l439: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12}
l440: ldmIB R13!, {R0, R1, R3, R4, R5, R6, R9, R10, R11, R12}
l441: ldmDA R13!, {R0, R3, R4, R6, R8, R9, R10, R12, R14}
l442: ldmIA R13!, {R1, R2, R8, R12, R14}
l443: ldmDA R13!, {R1, R4, R5, R7, R10, R14}
l444: ldmIB R13!, {R2, R6, R7, R8, R10}
l445: ldmLTIA R13, {R0, R1, R2, R4, R5, R6, R7, R8, R10, R11, R14}
l446: ldmIA R13!, {R10}
l447: ldmVCDB R13, {R9, R14}
l448: ldmHIDB R13, {R2, R3, R4, R6, R9, R14}
l449: ldmDB R13!, {R4, R6, R9, R10, R14}
l450: ldmVSDB R13, {R14}
l451: ldmIA R13!, {R1, R2, R3, R4, R5, R6, R8, R9, R10, R11, R14}
l452: ldmIA R13!, {R5, R8, R12}
l453: ldmIB R13!, {R7}
l454: ldmEQDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l455: ldmIB R13!, {R9}
l456: ldmDA R13!, {R1}
l457: ldmDB R13!, {R4}
l458: ldmDB R13!, {R2, R11}
l459: ldmDA R13, {R12}
l460: ldmIB R13!, {R12}
l461: ldmIB R13!, {R0, R1, R2, R7, R8, R11, R14}
l462: ldmLEIB R13, {R5, R10, R11}
l463: ldmVSIA R13, {R3, R9}
l464: ldmDA R13!, {R1, R2, R3, R4, R5, R6, R8, R9, R11, R14}
l465: ldmIB R13!, {R0, R1, R2, R4, R8, R10}
l466: ldmDA R13!, {R2, R3, R14}
l467: ldmIA R13!, {R0, R1, R2, R3, R7, R10, R12, R14}
l468: ldmDB R13!, {R1, R3, R4, R5, R6, R8, R9, R10, R11, R14}
l469: ldmIB R13!, {R0, R6, R7, R8, R9, R14}
l470: ldmIA R13!, {R8, R11}
l471: ldmDA R13!, {R0, R1, R5, R7, R8, R9, R12}
l472: ldmIA R13, {R0, R1, R2, R3, R4, R5, R6, R8}
l473: ldmDB R13!, {R0, R1, R3, R5, R7, R8, R9, R11, R12}
l474: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l475: ldmDB R13!, {R0, R5, R6, R9, R10}
l476: ldmIA R13!, {R0, R5, R6, R9}
l477: ldmIB R13!, {R10}
l478: ldmDB R13!, {R0, R1, R3, R5, R6, R9, R10, R12, R14}
l479: ldmDB R13!, {R8, R9, R11, R12}
l480: ldmDB R13!, {R3, R7}
l481: ldmLEDA R13, {R9, R14}
l482: ldmDA R13!, {R1}
l483: ldmIA R13!, {R0, R2, R6, R8, R9, R10, R12}
l484: ldmIA R13!, {R2, R4, R6, R14}
l485: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R10, R11, R14}
l486: ldmIA R13!, {R4, R6}
l487: ldmDA R13!, {R6, R10}
l488: ldmIA R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l489: ldmIA R13!, {R5, R10, R14}
l490: ldmDB R13!, {R2, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l491: ldmIA R13, {R1, R2, R12, R14}
l492: ldmIB R13, {R4, R12}
l493: ldmNEIA R13, {R0, R1, R4}
l494: ldmDA R13, {R0, R1, R3, R5, R7, R9, R10, R11, R12, R14}
l495: ldmLEIA R13, {R0, R1, R2, R3, R5, R7, R8, R9, R11, R12, R14}
l496: ldmIB R13!, {R3, R7, R11}
l497: ldmIB R13!, {R3}
l498: ldmDA R13!, {R2, R4, R5, R7, R8, R9}
l499: ldmLSDA R13, {R0, R1, R2, R3, R4, R5, R9, R11, R12}
l500: ldmIB R13!, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l501: ldmDA R13!, {R1, R3, R4, R5, R6, R7, R8, R9, R10, R12}
l502: ldmIA R13!, {R0, R2, R3, R4, R5, R10}
l503: ldmIA R13!, {R6}
l504: ldmIB R13!, {R2, R5, R8}
l505: ldmNEDB R13, {R11}
l506: ldmDA R13!, {R0, R4}
l507: ldmIA R13!, {R0, R7}
l508: ldmIB R13!, {R1, R2, R10}
l509: ldmDB R13, {R4, R9, R10}
l510: ldmEQDB R13, {R0, R2, R3, R4, R5, R6, R7, R8, R10, R12}
l511: ldmDB R13, {R6, R8, R10, R12}
l512: ldmIA R13!, {R2}
l513: ldmDB R13, {R9, R14}
l514: ldmIB R13!, {R3, R4, R6, R10}
l515: ldmDA R13!, {R7, R10, R11, R12}
l516: ldmIB R13!, {R2, R9, R10, R14}
l517: ldmIA R13, {R6, R14}
l518: ldmDA R13, {R7}
l519: ldmIA R13!, {R12, R14}
l520: ldmCCDB R13, {R0, R1, R3, R4, R5, R6, R8}
l521: ldmIB R13!, {R7, R11}
l522: ldmDB R13, {R14}
l523: ldmIA R13, {R1, R2, R5, R7, R8}
l524: ldmDA R13, {R3, R4, R10}
l525: ldmIB R13, {R2, R3, R4, R7, R8, R9, R11, R12, R14}
l526: ldmIB R13!, {R12}
l527: ldmIA R13!, {R3, R4, R8, R9, R14}
l528: ldmDA R13!, {R4}
l529: ldmDB R13!, {R10}
l530: ldmDA R13!, {R0, R5, R6, R7, R8, R10}
l531: ldmDA R13!, {R3, R5, R6, R7, R8, R9, R10, R11}
l532: ldmEQDA R13, {R0}
l533: ldmDB R13!, {R14}
l534: ldmIA R13, {R0, R3, R5, R6, R7, R8, R9, R10, R11, R12}
l535: ldmIA R13!, {R3, R5, R11}
l536: ldmDB R13!, {R2, R4}
l537: ldmDA R13!, {R0, R2, R3, R5, R7, R9, R11}
l538: ldmDA R13!, {R1}
l539: ldmDA R13!, {R3, R7, R11}
l540: ldmIA R13, {R0, R2, R4, R5, R6, R9, R10, R12, R14}
l541: ldmIA R13, {R9}
l542: ldmLEIB R13, {R1, R5, R6, R8, R10, R12, R14}
l543: ldmDA R13!, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l544: ldmIA R13!, {R0, R1, R2, R3, R5, R6, R8, R9, R10, R12, R14}
l545: ldmIB R13!, {R0}
l546: ldmIA R13!, {R14}
l547: ldmIA R13!, {R14}
l548: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l549: ldmIA R13!, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l550: ldmGTIA R13, {R0}
l551: ldmDB R13, {R0, R2, R3, R4, R5, R6, R7, R8, R10, R12, R14}
l552: ldmCCDB R13, {R0, R3, R6, R10, R12}
l553: ldmIB R13!, {R2, R3, R4, R5, R6, R7, R8, R10, R12}
l554: ldmIA R13!, {R0, R1, R6, R7, R10, R12}
l555: ldmIB R13!, {R5}
l556: ldmDB R13!, {R1, R4, R5, R6, R7, R8, R9}
l557: ldmIA R13!, {R3, R5}
l558: ldmIB R13, {R6, R9}
l559: ldmIB R13!, {R6, R9, R10}
l560: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l561: ldmIA R13!, {R1, R5, R7, R10, R12}
l562: ldmIA R13!, {R1, R4, R5, R7, R11, R14}
l563: ldmDA R13!, {R1, R2, R4, R6, R9, R11}
l564: ldmDB R13!, {R2, R7, R14}
l565: ldmIA R13!, {R0, R1, R2, R5, R6, R7, R8, R11}
l566: ldmIA R13!, {R3, R9, R10}
l567: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R10, R12, R14}
l568: ldmIA R13!, {R7, R11, R14}
l569: ldmIA R13!, {R4, R5, R7, R8}
l570: ldmIA R13!, {R3, R9, R10, R11, R12}
l571: ldmDB R13!, {R2, R3, R4, R6, R7, R8, R9, R10, R14}
l572: ldmCCDB R13, {R11}
l573: ldmNEIA R13, {R0, R3, R4, R6}
l574: ldmIA R13!, {R3, R5, R14}
l575: ldmIB R13!, {R1, R2}
l576: ldmDA R13!, {R0, R1, R4, R5, R6, R7, R8, R9, R10, R11, R12}
l577: ldmDB R13!, {R2, R8, R11, R12}
l578: ldmMIIA R13, {R11}
l579: ldmIA R13!, {R0, R3, R5, R6}
l580: ldmDA R13!, {R0, R2, R3, R7, R9, R11}
l581: ldmVCDA R13, {R0}
l582: ldmIA R13, {R1, R2, R3, R6, R9, R10, R11, R14}
l583: ldmDA R13!, {R4, R7}
l584: ldmIA R13, {R0, R1, R2, R3, R4, R7, R8, R9, R11, R12, R14}
l585: ldmCSIA R13, {R6}
l586: ldmDB R13!, {R1, R3, R6, R8, R11, R14}
l587: ldmIA R13!, {R6, R7, R9, R12}
l588: ldmDB R13, {R0, R1, R3, R4, R6, R7, R8, R10, R11, R12, R14}
l589: ldmDA R13!, {R0, R5, R6, R11, R12}
l590: ldmIB R13!, {R0, R3, R5, R6, R7, R10, R12}
l591: ldmIB R13!, {R0}
l592: ldmIA R13!, {R1, R2, R7, R8, R11, R14}
l593: ldmIB R13!, {R3, R9, R10, R14}
l594: ldmDB R13!, {R1, R2, R3, R4, R6, R7, R8, R9, R10, R12, R14}
l595: ldmDB R13!, {R2, R4, R5, R6, R8, R11}
l596: ldmIA R13!, {R1, R8}
l597: ldmMIDB R13, {R3, R10, R14}
l598: ldmMIIA R13, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l599: ldmDA R13!, {R2, R3, R10}
l600: ldmDA R13!, {R3, R4, R6, R7, R8, R10, R11}
l601: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12}
l602: ldmDB R13!, {R0, R3, R4}
l603: ldmDA R13!, {R3, R6, R7, R8, R11}
l604: ldmDA R13, {R0, R1, R5, R7, R9, R14}
l605: ldmIB R13, {R0, R1, R2, R3, R4, R6, R7, R9, R10, R11, R12}
l606: ldmDB R13!, {R0, R1, R2, R8, R9, R11, R12, R14}
l607: ldmDA R13!, {R0, R1, R10, R11, R12}
l608: ldmVSIB R13, {R3, R7, R10, R12}
l609: ldmIB R13!, {R0, R1, R3, R4, R6, R9, R11, R12, R14}
l610: ldmVCIA R13, {R1, R8}
l611: ldmIB R13!, {R5, R6, R10}
l612: ldmDA R13, {R2, R3, R4, R8, R14}
l613: ldmDA R13, {R0, R1, R4, R5, R6, R8, R9, R10, R11, R12, R14}
l614: ldmPLDA R13, {R7, R10}
l615: ldmGEIA R13, {R1, R3, R6, R9, R11, R14}
l616: ldmIA R13!, {R2, R8, R9, R14}
l617: ldmIA R13!, {R2, R7, R11}
l618: ldmDA R13!, {R1, R3, R7, R10}
l619: ldmIA R13!, {R5, R6, R8, R9, R11}
l620: ldmDB R13!, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R11}
l621: ldmDA R13!, {R0, R2, R3, R8}
l622: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l623: ldmLEDA R13, {R1, R2, R5, R6, R8, R10, R14}
l624: ldmDA R13!, {R9, R12}
l625: ldmDA R13!, {R6}
l626: ldmIA R13, {R0, R1, R3, R4, R5, R6, R7, R9, R10, R11, R14}
l627: ldmGEIB R13, {R10}
l628: ldmVSDA R13, {R0, R1, R2, R5, R6, R8, R10, R11, R12}
l629: ldmIA R13!, {R12}
l630: ldmIB R13!, {R14}
l631: ldmDA R13!, {R2, R4, R5, R6, R7, R9, R11, R12, R14}
l632: ldmIB R13!, {R0, R5}
l633: ldmDB R13!, {R4, R9}
l634: ldmPLIB R13, {R2, R3, R5, R8, R11, R12, R14}
l635: ldmIB R13!, {R1, R2, R4, R6, R8, R9, R10, R11, R12}
l636: ldmIB R13, {R1, R6}
l637: ldmLEDB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l638: ldmDB R13!, {R3, R5, R9, R10}
l639: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l640: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R7, R8, R9, R12}
l641: ldmDB R13!, {R2, R3, R6}
l642: ldmIA R13!, {R1, R2, R3, R4, R10, R11, R12, R14}
l643: ldmIA R13!, {R14}
l644: ldmDA R13!, {R2, R3, R4, R5, R6, R7, R9, R11, R14}
l645: ldmIA R13!, {R7}
l646: ldmDB R13!, {R2}
l647: ldmIA R13!, {R2, R3, R4, R6, R7, R8, R10, R11, R14}
l648: ldmDB R13!, {R9, R14}
l649: ldmHIIB R13, {R1, R2, R3, R4, R6, R7, R8, R9, R10, R11}
l650: ldmMIDA R13, {R0, R3, R4, R12}
l651: ldmDA R13!, {R1, R2, R3, R4, R5, R6, R8, R11, R12, R14}
l652: ldmIA R13, {R2, R4, R5, R8}
l653: ldmMIIB R13, {R0, R4, R6}
l654: ldmCSIA R13, {R1, R2, R8, R9, R10, R11}
l655: ldmLSDB R13, {R3, R4, R8, R9, R10, R11, R12}
l656: ldmVSIB R13, {R1, R2, R3, R5}
l657: ldmDA R13, {R1, R3, R4, R7, R8, R9, R10, R11, R14}
l658: ldmDB R13!, {R2, R8, R12, R14}
l659: ldmIB R13!, {R1, R3, R6, R9, R11}
l660: ldmDB R13!, {R12}
l661: ldmDB R13!, {R1, R5, R6}
l662: ldmIA R13!, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12}
l663: ldmIB R13!, {R2, R5, R6, R10, R11}
l664: ldmVSDB R13, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l665: ldmIA R13!, {R0, R6, R10}
l666: ldmIA R13!, {R1, R4, R7, R9, R10, R11, R12}
l667: ldmNEIB R13, {R2, R12}
l668: ldmMIDB R13, {R2, R6, R14}
l669: ldmGTDA R13, {R8, R9, R10, R11, R12}
l670: ldmDB R13!, {R0, R3, R4, R6, R7, R9, R10, R12, R14}
l671: ldmCCIB R13, {R1, R11, R14}
l672: ldmDB R13!, {R6}
l673: ldmIA R13!, {R2, R9}
l674: ldmCSDB R13, {R5, R9, R12}
l675: ldmDB R13, {R3, R14}
l676: ldmIB R13!, {R8}
l677: ldmDA R13!, {R0}
l678: ldmVSIB R13, {R10, R12}
l679: ldmIA R13!, {R0, R1, R11}
l680: ldmDA R13!, {R4, R5, R8, R14}
l681: ldmDB R13!, {R9}
l682: ldmIA R13!, {R1, R2, R4, R7, R11}
l683: ldmDB R13!, {R1, R2, R6, R7, R12}
l684: ldmHIIA R13, {R1, R3, R4, R5, R6, R7, R8, R11, R12, R14}
l685: ldmIA R13, {R4, R5, R8, R10, R11}
l686: ldmDA R13!, {R0, R3, R6, R8, R9, R12}
l687: ldmDB R13!, {R0, R6, R10, R12}
l688: ldmIA R13!, {R0, R1, R2, R3, R6, R7, R9, R10, R14}
l689: ldmGTDA R13, {R0, R2, R3, R4, R6, R7, R9, R10, R14}
l690: ldmDB R13!, {R3, R5}
l691: ldmIB R13!, {R1}
l692: ldmIA R13, {R1, R2, R3, R5, R9, R10, R14}
l693: ldmDA R13!, {R1, R3, R7, R8, R9, R10, R14}
l694: ldmIA R13!, {R0, R1, R3, R4, R5, R9, R12}
l695: ldmDA R13!, {R2, R3, R4, R8, R9}
l696: ldmDA R13!, {R9, R11, R12}
l697: ldmIA R13!, {R2, R5, R12}
l698: ldmPLDB R13, {R8, R12}
l699: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l700: ldmDA R13!, {R0, R2, R4, R8, R10, R11}
l701: ldmIA R13!, {R0, R4, R6, R8, R10, R14}
l702: ldmDB R13!, {R4, R6, R8, R9, R14}
l703: ldmVSDB R13, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l704: ldmIB R13!, {R1, R2, R12}
l705: ldmIB R13!, {R3, R4, R5, R7, R8, R11}
l706: ldmLEDA R13, {R1, R2, R4, R6, R7, R8, R11, R14}
l707: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R7, R9, R10, R11, R12, R14}
l708: ldmDA R13!, {R0, R3, R4, R5, R6, R7, R8, R10, R11, R14}
l709: ldmIB R13!, {R0, R1, R4, R5, R7, R10, R14}
l710: ldmNEDB R13, {R1, R4, R10, R14}
l711: ldmIB R13!, {R3, R7, R8, R9, R10, R11, R14}
l712: ldmIB R13, {R5}
l713: ldmIB R13, {R1, R3, R4, R12}
l714: ldmDA R13!, {R14}
l715: ldmIB R13!, {R7}
l716: ldmDA R13!, {R1, R2, R6, R10, R11}
l717: ldmIB R13!, {R2, R3, R4, R7, R12}
l718: ldmDB R13!, {R1, R2, R3, R4, R7, R8, R11, R12, R14}
l719: ldmIB R13!, {R0, R1, R3, R4, R6, R8, R9, R10}
l720: ldmDB R13!, {R0, R1, R2, R3, R5, R7, R8, R10, R11}
l721: ldmCCIA R13, {R0, R1, R3, R5, R6, R7, R10, R11, R12, R14}
l722: ldmDA R13!, {R0, R1, R2, R3, R5, R6, R8, R9, R10, R11, R14}
l723: ldmIB R13, {R8, R10}
l724: ldmDA R13!, {R0, R1, R2, R3, R5, R7, R9, R10, R14}
l725: ldmIB R13!, {R2, R6, R7, R14}
l726: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l727: ldmDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l728: ldmDB R13!, {R4, R7}
l729: ldmDB R13!, {R12}
l730: ldmDB R13!, {R9}
l731: ldmIB R13!, {R0, R3, R5, R6, R9, R11}
l732: ldmIB R13!, {R0, R4, R5, R9, R12}
l733: ldmDA R13!, {R1, R3, R4, R6, R8, R12}
l734: ldmIA R13!, {R1, R2, R3, R5, R11, R12}
l735: ldmIB R13, {R3, R4, R12}
l736: ldmIB R13!, {R4, R5, R11}
l737: ldmDB R13!, {R2, R8, R9, R11}
l738: ldmCCIA R13, {R12, R14}
l739: ldmDA R13, {R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l740: ldmDB R13, {R8, R12}
l741: ldmDA R13!, {R7}
l742: ldmDA R13!, {R4}
l743: ldmIA R13!, {R11, R12, R14}
l744: ldmDB R13!, {R5, R7}
l745: ldmDB R13!, {R5}
l746: ldmIB R13!, {R0, R2, R4, R6, R7, R9, R10, R11, R14}
l747: ldmDA R13!, {R1, R4, R5, R10, R14}
l748: ldmDA R13!, {R1, R2, R14}
l749: ldmIB R13!, {R5, R6, R9, R11, R14}
l750: ldmCSDB R13, {R10}
l751: ldmDA R13!, {R3}
l752: ldmIB R13!, {R0, R1, R2, R5, R6, R8, R9, R10, R11, R14}
l753: ldmDA R13!, {R0, R1, R2, R3, R4, R5, R7, R8, R9, R10, R11, R12}
l754: ldmDB R13!, {R7, R8}
l755: ldmIA R13!, {R0, R1, R2, R4, R5, R6, R8, R10, R11, R12, R14}
l756: ldmDB R13!, {R11, R14}
l757: ldmGTDB R13, {R5, R7, R11}
l758: ldmIA R13!, {R9}
l759: ldmIB R13!, {R0, R3, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l760: ldmDB R13!, {R5}
l761: ldmMIIA R13, {R8}
l762: ldmDB R13, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l763: ldmDA R13!, {R5, R11, R14}
l764: ldmIB R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l765: ldmHIDA R13, {R0, R1, R2, R3, R5, R6, R7, R8, R9, R10, R11, R14}
l766: ldmDA R13!, {R11}
l767: ldmDB R13!, {R4}
l768: ldmIB R13!, {R0, R1, R6, R7, R8, R11, R12}
l769: ldmDB R13!, {R2, R4, R9, R14}
l770: ldmDA R13!, {R1, R2, R5, R11, R14}
l771: ldmIA R13!, {R0, R2, R4, R5, R6, R8, R9, R10, R11, R12, R14}
l772: ldmPLDA R13, {R0, R1, R2, R3, R7, R8, R10, R11, R12}
l773: ldmEQIA R13, {R0, R4, R7, R10, R11}
l774: ldmDB R13, {R4, R6, R9, R12, R14}
l775: ldmDB R13!, {R1, R2, R11}
l776: ldmLTIB R13, {R3, R5, R7, R8, R10, R12}
l777: ldmDB R13!, {R0}
l778: ldmDA R13!, {R2, R5, R6, R11, R14}
l779: ldmIB R13!, {R1, R6, R9}
l780: ldmDB R13!, {R2, R8, R12}
l781: ldmIA R13!, {R0, R1, R2, R3, R6, R7, R11}
l782: ldmIA R13!, {R0, R2, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l783: ldmHIDA R13, {R0, R1, R10}
l784: ldmIA R13!, {R4}
l785: ldmDB R13!, {R0, R1, R3, R4, R8, R9, R14}
l786: ldmCSIB R13, {R0, R1, R5, R8, R9, R10, R12}
l787: ldmDB R13!, {R2, R9, R11}
l788: ldmIA R13, {R1}
l789: ldmVSDB R13, {R0, R1, R4, R5, R7, R8, R12}
l790: ldmHIDB R13, {R1, R2, R3, R7, R8, R12, R14}
l791: ldmIA R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12}
l792: ldmIB R13!, {R0, R2, R9, R11, R12, R14}
l793: ldmDA R13!, {R1, R5, R9, R12}
l794: ldmIB R13!, {R12}
l795: ldmDA R13!, {R2, R4, R7, R9, R11, R14}
l796: ldmDA R13!, {R1, R3, R4, R5, R8, R9, R11, R12, R14}
l797: ldmIA R13!, {R0, R1, R7, R8, R10, R12, R14}
l798: ldmGEDB R13, {R0, R5, R6, R8, R11, R12}
l799: ldmIA R13!, {R2, R3, R4, R7, R8, R9, R10, R11, R14}
l800: ldmDB R13!, {R0, R5, R7, R8, R10, R14}
l801: ldmIA R13!, {R0, R4, R11, R12}
l802: ldmDA R13, {R0, R1, R5, R6, R7, R8, R9, R11}
l803: ldmIA R13!, {R4}
l804: ldmLSIA R13, {R0, R1, R2, R3, R5, R6, R7, R8, R10, R11, R12, R14}
l805: ldmIB R13!, {R1, R4, R5}
l806: ldmIA R13!, {R5, R9}
l807: ldmDB R13!, {R0, R5, R7, R9, R10, R12, R14}
l808: ldmIB R13, {R0, R7, R8, R12}
l809: ldmMIIB R13, {R7, R8, R10}
l810: ldmCCDA R13, {R0, R2, R3, R4, R6, R7, R8, R9, R10, R11, R12, R14}
l811: ldmIA R13!, {R3, R5, R7, R10, R11}
l812: ldmHIDA R13, {R7, R10, R14}
l813: ldmDB R13!, {R1, R3, R4, R5, R7, R9}
l814: ldmGEIB R13, {R0, R1, R2, R3, R7, R8, R10, R12, R14}
l815: ldmDB R13!, {R3}
l816: ldmCSDA R13, {R0}
l817: ldmDB R13!, {R1, R2, R3, R4, R5, R14}
l818: ldmIA R13!, {R0, R1, R2, R4, R5, R8, R9, R10, R11, R12, R14}
l819: ldmIB R13!, {R1, R14}
l820: ldmIB R13, {R3}
l821: ldmDB R13, {R0, R1, R2, R4, R6, R7, R9, R10, R11, R12}
l822: ldmDB R13!, {R0, R1, R6, R7, R9, R12}
l823: ldmGEIA R13, {R1, R2, R3, R5, R7, R9, R11}
l824: ldmEQDB R13, {R2, R9, R11}
l825: ldmDA R13!, {R5, R14}
l826: ldmDA R13!, {R1, R10}
l827: ldmIA R13!, {R0, R3, R4, R9, R14}
l828: ldmCCDB R13, {R0, R3, R4, R7, R14}
l829: ldmIB R13!, {R12}
l830: ldmLEDB R13, {R0, R1}
l831: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l832: ldmDB R13, {R1, R5, R12, R14}
l833: ldmIA R13!, {R3}
l834: ldmLSIA R13, {R4, R7, R9, R10}
l835: ldmDA R13!, {R0, R1, R3, R5, R7, R8, R9, R10, R12, R14}
l836: ldmIA R13!, {R0, R1, R2, R4, R5, R6, R7, R8, R9, R10, R12}
l837: ldmNEIB R13, {R5, R9}
l838: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l839: ldmDA R13!, {R1, R3, R8, R9}
l840: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R10, R12, R14}
l841: ldmDB R13!, {R0, R1, R2, R5, R7, R10, R12}
l842: ldmIB R13!, {R7, R12}
l843: ldmDB R13!, {R0, R1, R2, R3, R6, R8, R10}
l844: ldmIA R13!, {R1, R2, R3, R4, R5, R6, R8, R10, R11, R14}
l845: ldmVSDB R13, {R0, R7, R8, R10, R12}
l846: ldmIB R13!, {R0, R1, R3, R4, R5, R6, R9, R10, R12}
l847: ldmDA R13, {R0, R1, R2, R3, R4, R5, R8, R10, R12, R14}
l848: ldmVCIB R13, {R0, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l849: ldmDA R13!, {R0, R1, R2, R3, R5, R7, R10, R11, R14}
l850: ldmLTDA R13, {R1, R4, R6, R7, R11, R12}
l851: ldmDA R13!, {R5}
l852: ldmIA R13!, {R2, R4, R5, R6, R10, R12}
l853: ldmIB R13!, {R1, R4, R6, R7, R9, R10, R11, R12, R14}
l854: ldmIB R13!, {R5, R12}
l855: ldmIB R13!, {R9}
l856: ldmDA R13, {R0, R1, R2, R3, R4, R5, R6, R11, R12}
l857: ldmIB R13!, {R0, R1, R2, R4, R6, R12, R14}
l858: ldmNEIB R13, {R10, R11}
l859: ldmDA R13!, {R0, R1, R4, R6, R9, R10, R12, R14}
l860: ldmDB R13, {R6, R8, R9, R12, R14}
l861: ldmIB R13!, {R2}
l862: ldmDA R13!, {R10}
l863: ldmIB R13!, {R4, R5, R8, R11}
l864: ldmDB R13!, {R14}
l865: ldmDB R13, {R2, R4, R9, R10, R11, R12, R14}
l866: ldmIB R13, {R7, R10, R11}
l867: ldmDA R13!, {R2, R8}
l868: ldmIB R13!, {R0, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l869: ldmIA R13!, {R5}
l870: ldmIA R13!, {R3, R8, R11}
l871: ldmDA R13!, {R0, R1, R2, R3, R5, R6, R9, R10, R12, R14}
l872: ldmIA R13!, {R0, R4, R5, R6, R8, R11, R12, R14}
l873: ldmIA R13!, {R1, R10}
l874: ldmDA R13!, {R0, R1, R3, R6, R8, R9, R11, R12, R14}
l875: ldmIB R13, {R1, R5, R10, R12, R14}
l876: ldmDA R13!, {R2, R6, R11, R12, R14}
l877: ldmIA R13!, {R0, R1, R5, R9, R11, R12}
l878: ldmDB R13!, {R1, R6, R8}
l879: ldmDB R13!, {R0, R1, R2, R4, R6, R7, R8, R10, R11, R14}
l880: ldmIB R13, {R0, R1, R2, R4, R5, R6, R7, R8, R9, R10, R11, R12}
l881: ldmHIIA R13, {R7, R12}
l882: ldmDB R13!, {R0, R2, R3, R4, R5, R6, R7, R9, R12, R14}
l883: ldmDB R13!, {R4}
l884: ldmDB R13!, {R9, R11}
l885: ldmDA R13!, {R3, R6, R8}
l886: ldmIB R13!, {R0, R1, R4, R5, R6, R7, R8}
l887: ldmIA R13!, {R4}
l888: ldmDB R13, {R1, R10}
l889: ldmDA R13, {R0, R4, R6, R8, R11}
l890: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R8, R9, R10, R11, R12}
l891: ldmVSIB R13, {R0, R5}
l892: ldmIA R13!, {R6, R7, R12}
l893: ldmDB R13!, {R0, R2, R3, R4, R5, R8, R9, R10}
l894: ldmIA R13!, {R0, R1, R9, R10, R12}
l895: ldmIA R13!, {R4}
l896: ldmDA R13!, {R8, R10, R14}
l897: ldmDB R13!, {R5, R7, R10, R11, R12, R14}
l898: ldmIB R13!, {R11}
l899: ldmIA R13!, {R0, R11}
l900: ldmDB R13!, {R0, R2, R3, R4, R5, R6, R9, R10, R12, R14}
l901: ldmIA R13!, {R4, R10, R11, R14}
l902: ldmIA R13, {R1, R3, R4, R5, R6, R7, R8}
l903: ldmIA R13!, {R1, R2, R3, R7, R8, R9, R12}
l904: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12}
l905: ldmNEDA R13, {R5, R8, R12, R14}
l906: ldmVSDB R13, {R4}
l907: ldmIA R13!, {R2, R7, R8, R11, R12, R14}
l908: ldmIB R13!, {R0, R1, R2, R3, R4, R6, R8, R10, R12}
l909: ldmDA R13!, {R0, R1, R4, R5, R6, R7, R9, R14}
l910: ldmDB R13, {R0, R1, R2, R5, R8, R10, R12}
l911: ldmVSIA R13, {R0, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l912: ldmIB R13!, {R8}
l913: ldmLEDA R13, {R4}
l914: ldmDB R13!, {R0, R7, R8, R11}
l915: ldmIB R13!, {R0, R1, R2, R4, R6, R14}
l916: ldmGEDA R13, {R0, R2, R3, R4, R5, R7, R8, R9, R11}
l917: ldmDB R13!, {R9}
l918: ldmDB R13!, {R0, R4}
l919: ldmIA R13!, {R1, R5, R7, R14}
l920: ldmLSIB R13, {R0, R4, R6, R7, R8}
l921: ldmIB R13!, {R0, R2, R3, R5, R6, R11, R12}
l922: ldmDA R13!, {R4, R8, R11, R12}
l923: ldmDA R13!, {R0, R1, R2, R4, R5, R7, R8, R10, R11, R12}
l924: ldmIB R13!, {R5, R6, R11}
l925: ldmDB R13!, {R4, R7, R8, R10}
l926: ldmDA R13!, {R9}
l927: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l928: ldmIA R13!, {R0, R1}
l929: ldmDB R13!, {R0, R5, R7, R9}
l930: ldmIA R13!, {R1, R5, R9}
l931: ldmIB R13!, {R11}
l932: ldmDA R13!, {R0, R1, R2, R3, R5, R6, R7, R11}
l933: ldmIA R13!, {R4, R14}
l934: ldmMIIA R13, {R2, R11}
l935: ldmVSIB R13, {R2, R10, R12}
l936: ldmIA R13!, {R9}
l937: ldmDA R13!, {R3, R7}
l938: ldmLSIB R13, {R4, R7}
l939: ldmLEDB R13, {R7, R10, R11, R12, R14}
l940: ldmDA R13!, {R0, R1, R3, R4, R6, R7, R8, R9, R10, R11}
l941: ldmEQDA R13, {R3, R5}
l942: ldmIA R13!, {R2, R5, R7, R8, R9, R10, R12, R14}
l943: ldmIB R13!, {R14}
l944: ldmIB R13!, {R1, R11, R12, R14}
l945: ldmIB R13, {R6, R12}
l946: ldmCCDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l947: ldmDA R13!, {R10}
l948: ldmIB R13, {R4, R8, R14}
l949: ldmIA R13!, {R0, R1, R3, R4, R7, R8, R10, R14}
l950: ldmLTIA R13, {R2, R6, R10}
l951: ldmDA R13, {R1}
l952: ldmDA R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12}
l953: ldmCCDB R13, {R11}
l954: ldmDA R13!, {R2}
l955: ldmIB R13!, {R0, R2, R3, R4, R6, R8, R9, R11, R12, R14}
l956: ldmDA R13!, {R0, R1, R2, R4, R11, R14}
l957: ldmIB R13, {R3, R4, R6, R9}
l958: ldmDA R13!, {R3, R9}
l959: ldmIA R13!, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l960: ldmDA R13!, {R4, R7, R9, R10, R14}
l961: ldmIA R13!, {R1, R3, R7, R9, R11}
l962: ldmDA R13!, {R2, R4}
l963: ldmIB R13!, {R4}
l964: ldmIB R13, {R3}
l965: ldmDB R13!, {R1, R3, R4, R5, R6, R7, R8, R10, R11, R12, R14}
l966: ldmDB R13!, {R0, R3, R5, R6, R7, R11, R14}
l967: ldmIA R13!, {R0, R1, R3, R9, R10, R11, R12}
l968: ldmDA R13!, {R2, R4, R6, R9, R10, R11, R14}
l969: ldmIB R13!, {R1, R2, R4, R5, R6, R7, R8, R9, R10, R12, R14}
l970: ldmIB R13!, {R2, R6, R7}
l971: ldmDB R13!, {R0, R1, R2, R3, R4, R6, R7, R8, R9, R10, R11}
l972: ldmHIDA R13, {R10, R11}
l973: ldmIA R13!, {R3, R8, R9, R14}
l974: ldmIA R13!, {R3, R5, R6, R7, R8, R9, R10, R12, R14}
l975: ldmIB R13!, {R6, R12}
l976: ldmMIIB R13, {R3}
l977: ldmIB R13, {R14}
l978: ldmLTDA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l979: ldmLTIA R13, {R0, R1, R5, R8, R10, R12, R14}
l980: ldmVSIB R13, {R0, R1, R3, R4, R7, R9, R11}
l981: ldmDB R13, {R4, R5, R6, R7, R8, R12, R14}
l982: ldmIB R13!, {R2, R5, R6, R9, R11}
l983: ldmIB R13!, {R9}
l984: ldmIB R13!, {R3}
l985: ldmHIDB R13, {R0, R2, R4, R5, R6, R7, R8, R9, R12, R14}
l986: ldmIB R13, {R8}
l987: ldmIA R13!, {R10}
l988: ldmDA R13!, {R5, R8, R10}
l989: ldmIB R13!, {R0, R1, R2, R5, R9, R12}
l990: ldmDB R13!, {R0, R1, R2, R4, R5, R7, R10, R11, R14}
l991: ldmIB R13!, {R9, R10, R11, R12}
l992: ldmDA R13!, {R2, R4, R7}
l993: ldmDA R13!, {R0, R5}
l994: ldmIB R13, {R0, R1, R11, R12}
l995: ldmLTIB R13, {R0, R1, R2, R3, R4, R5, R6, R10, R11, R14}
l996: ldmIB R13, {R1}
l997: ldmDA R13!, {R1, R2, R3, R4, R5, R6, R7, R12, R14}
l998: ldmIA R13!, {R4, R11}
l999: ldmIA R13!, {R0, R1, R10, R14}
l1000: ldmGEIB R13, {R7}
end: b end

