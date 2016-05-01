vectors_start:
b main
b undef_handler
b swi_handler
b prefetch_handler
b dataAbt_handler
b .
b irq_handler
# FIQ handler immediately after vector table
fiq_handler:
stmfd sp!, {r4-r9, r12}
ldr r5, UART_DR
ldr r5, [r5]
ldmfd sp, {r5-r10, r12}^
subs pc,r14,#4

undef_handler:
push {r4}
ldr r4, [r14, #-4]
pop {r4}
movs pc, r14

swi_handler:
stmfd sp!, {r0-r3, r12, r14}
ldr r0, [r14, #-4]
bic r0, r0, #0xff000000
ldmfd sp!, {r0-r3, r12, pc}^

prefetch_handler:
push {r3}
ldr r3, [r14, #-4]
pop {r3}
movs pc, r14

dataAbt_handler:
push {r5}
ldr r5, [r14, #-8]
mov r5, #0
str r5, [r14, #-8]
pop {r5}
subs pc, r14, #8

irq_handler:
push {r1}
stmfd sp, {r13}^
ldr r1, UART_DR
ldr r1, [r1]
ldmfd sp, {r1}
pop {r1}
subs pc,r14,#4


UART_DR: .word 0x16000000
PIC_IRQ_ENCLR: .word 0x1400000c
UART0_IMSC: .word 0x16000038
PIC_IRQ_ENSET: .word 0x14000008

main:
# INTERRUPT I/O INITIALIZATION
ldr	r3, PIC_IRQ_ENCLR
mov	r2, #2
str	r2, [r3]
ldr	r3, UART0_IMSC
mov	r2, #16
str	r2, [r3]
ldr	r3, PIC_IRQ_ENSET
mov	r2, #2
str	r2, [r3]

# INITIALIZING REGISTERS
# Switching to mode sys
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0x1f
MSR cpsr, r0
reg_0_sys: ldr R0, reg_0_sys_val
b reg_1_sys
reg_0_sys_val: .word 3762972978
reg_1_sys: ldr R1, reg_1_sys_val
b reg_2_sys
reg_1_sys_val: .word 2818397824
reg_2_sys: ldr R2, reg_2_sys_val
b reg_3_sys
reg_2_sys_val: .word 2167326511
reg_3_sys: ldr R3, reg_3_sys_val
b reg_4_sys
reg_3_sys_val: .word 1553976255
reg_4_sys: ldr R4, reg_4_sys_val
b reg_5_sys
reg_4_sys_val: .word 4095118518
reg_5_sys: ldr R5, reg_5_sys_val
b reg_6_sys
reg_5_sys_val: .word 3425412468
reg_6_sys: ldr R6, reg_6_sys_val
b reg_7_sys
reg_6_sys_val: .word 1367383753
reg_7_sys: ldr R7, reg_7_sys_val
b reg_8_sys
reg_7_sys_val: .word 1377362442
reg_8_sys: ldr R8, reg_8_sys_val
b reg_9_sys
reg_8_sys_val: .word 2968812158
reg_9_sys: ldr R9, reg_9_sys_val
b reg_10_sys
reg_9_sys_val: .word 4023040096
reg_10_sys: ldr R10, reg_10_sys_val
b reg_11_sys
reg_10_sys_val: .word 2690964919
reg_11_sys: ldr R11, reg_11_sys_val
b reg_12_sys
reg_11_sys_val: .word 1818937123
reg_12_sys: ldr R12, reg_12_sys_val
b reg_13_sys
reg_12_sys_val: .word 2057160679
reg_13_sys: ldr R13, reg_13_sys_val
b reg_14_sys
reg_13_sys_val: .word 0x0ffff0
reg_14_sys: ldr R14, reg_14_sys_val
b reg_14_sys_end
reg_14_sys_val: .word 3512162476
reg_14_sys_end: nop
# Switching to mode fiq
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0xd1
MSR cpsr, r0
reg_8_fiq: ldr R8, reg_8_fiq_val
b reg_9_fiq
reg_8_fiq_val: .word 3750355715
reg_9_fiq: ldr R9, reg_9_fiq_val
b reg_10_fiq
reg_9_fiq_val: .word 1200866015
reg_10_fiq: ldr R10, reg_10_fiq_val
b reg_11_fiq
reg_10_fiq_val: .word 708167985
reg_11_fiq: ldr R11, reg_11_fiq_val
b reg_12_fiq
reg_11_fiq_val: .word 741543650
reg_12_fiq: ldr R12, reg_12_fiq_val
b reg_13_fiq
reg_12_fiq_val: .word 1106811140
reg_13_fiq: ldr R13, reg_13_fiq_val
b reg_14_fiq
reg_13_fiq_val: .word 0x1ffff0
reg_14_fiq: ldr R14, reg_14_fiq_val
b reg_14_fiq_end
reg_14_fiq_val: .word 2333273862
reg_14_fiq_end: nop
# Switching to mode irq
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0x92
MSR cpsr, r0
reg_13_irq: ldr R13, reg_13_irq_val
b reg_14_irq
reg_13_irq_val: .word 0x2ffff0
reg_14_irq: ldr R14, reg_14_irq_val
b reg_14_irq_end
reg_14_irq_val: .word 748558528
reg_14_irq_end: nop
# Switching to mode undef
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0x1b
MSR cpsr, r0
reg_13_undef: ldr R13, reg_13_undef_val
b reg_14_undef
reg_13_undef_val: .word 0x3ffff0
reg_14_undef: ldr R14, reg_14_undef_val
b reg_14_undef_end
reg_14_undef_val: .word 201291177
reg_14_undef_end: nop
# Switching to mode abort
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0x17
MSR cpsr, r0
reg_13_abort: ldr R13, reg_13_abort_val
b reg_14_abort
reg_13_abort_val: .word 0x4ffff0
reg_14_abort: ldr R14, reg_14_abort_val
b reg_14_abort_end
reg_14_abort_val: .word 3679423599
reg_14_abort_end: nop
# Switching to mode svc
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0x13
MSR cpsr, r0
reg_13_svc: ldr R13, reg_13_svc_val
b reg_14_svc
reg_13_svc_val: .word 0x5ffff0
reg_14_svc: ldr R14, reg_14_svc_val
b reg_14_svc_end
reg_14_svc_val: .word 1867673135
reg_14_svc_end: nop

# INITIALIZING STACK
# Switching to mode sys
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0x1f
MSR cpsr, r0
ldr R1, stack_0_val
b stack_0
stack_0_val: .word 4083140449
stack_0: str R1, [sp, #0]
ldr R1, stack_1_val
b stack_1
stack_1_val: .word 360492342
stack_1: str R1, [sp, #-4]
ldr R1, stack_2_val
b stack_2
stack_2_val: .word 1818534963
stack_2: str R1, [sp, #-8]
ldr R1, stack_3_val
b stack_3
stack_3_val: .word 698503554
stack_3: str R1, [sp, #-12]
ldr R1, stack_4_val
b stack_4
stack_4_val: .word 1710315442
stack_4: str R1, [sp, #-16]
ldr R1, stack_5_val
b stack_5
stack_5_val: .word 1475466485
stack_5: str R1, [sp, #-20]
ldr R1, stack_6_val
b stack_6
stack_6_val: .word 4170409850
stack_6: str R1, [sp, #-24]
ldr R1, stack_7_val
b stack_7
stack_7_val: .word 2882106535
stack_7: str R1, [sp, #-28]
ldr R1, stack_8_val
b stack_8
stack_8_val: .word 3617716419
stack_8: str R1, [sp, #-32]
ldr R1, stack_9_val
b stack_9
stack_9_val: .word 2660349694
stack_9: str R1, [sp, #-36]
ldr R1, stack_10_val
b stack_10
stack_10_val: .word 244341409
stack_10: str R1, [sp, #-40]
ldr R1, stack_11_val
b stack_11
stack_11_val: .word 2117863304
stack_11: str R1, [sp, #-44]
ldr R1, stack_12_val
b stack_12
stack_12_val: .word 644744292
stack_12: str R1, [sp, #-48]
ldr R1, stack_13_val
b stack_13
stack_13_val: .word 2499442181
stack_13: str R1, [sp, #-52]
ldr R1, stack_14_val
b stack_14
stack_14_val: .word 4090221126
stack_14: str R1, [sp, #-56]
ldr R1, stack_15_val
b stack_15
stack_15_val: .word 384415898
stack_15: str R1, [sp, #-60]
ldr R1, stack_16_val
b stack_16
stack_16_val: .word 399485268
stack_16: str R1, [sp, #-64]
ldr R1, stack_17_val
b stack_17
stack_17_val: .word 15207175
stack_17: str R1, [sp, #-68]
ldr R1, stack_18_val
b stack_18
stack_18_val: .word 2029022765
stack_18: str R1, [sp, #-72]
ldr R1, stack_19_val
b stack_19
stack_19_val: .word 3465105835
stack_19: str R1, [sp, #-76]
ldr R1, stack_20_val
b stack_20
stack_20_val: .word 2050234649
stack_20: str R1, [sp, #-80]


# Switching to mode usr
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0x10
MSR cpsr, r0

# MAIN PROGRAM

l1: addCC R6, R5, R1, LSL R12
l2: ldr R4, [sp], #-72
l3: mov R8, #24
l4: ldrLT R1, [sp, +R8]
l5: mov R1, #8
l6: ldr R12, [sp, +R1]
l7: ldrLT R7, [sp, #+28]
l8: ldr R8, [sp, #+60]
l9: mov R11, #40
l10: ldrGT R11, [sp, +R11]
l11: ldrVS R8, [sp, #+48]
l12: addEQ R7, R15, R1, LSL #2
l13: adds R6, R6, R0, LSR R12
l14: mov R4, #16
l15: ldr R1, [sp, +R4]!
l16: ldr R4, [sp, #-4]
l17: add R0, R15, #1342177281
l18: ldr R10, [sp, #+20]!
l19: adds R8, R10, R8, RRX 
l20: mov R5, #20
l21: ldr R14, [sp], +R5
l22: ldr R2, [sp, #+0]
l23: adds R14, R3, R7
l24: add R11, R0, R4, ROR R7
l25: ldr R0, [sp, #-24]
l26: addCC R4, R3, R3, LSL #19
l27: ldr R10, [sp], #+8
l28: adds R10, R4, R1
l29: adds R1, R2, R9
l30: ldrPL R10, [sp, #-52]
l31: addLT R8, R12, R6, ASR R11
l32: ldr R12, [sp, #-64]!
l33: mov R0, #52
l34: ldrCS R10, [sp, +R0]
l35: adds R6, R0, R4
l36: mov R5, #40
l37: ldr R4, [sp, +R5]
l38: ldr R10, [sp], #+20
l39: addEQ R12, R5, #13760
l40: addMIs R8, R4, #3221225515
l41: addLT R2, R8, R8, RRX 
l42: mov R12, #8
l43: ldr R14, [sp], -R12
l44: add R8, R9, R2
l45: adds R10, R14, R4, RRX 
l46: addMI R1, R6, R3, ROR #22
l47: add R11, R2, #2432
l48: ldr R11, [sp], #+8
l49: adds R10, R8, R7, LSL #20
l50: ldr R11, [sp, #-8]
l51: adds R1, R2, R5, ASR #31
l52: mov R14, #28
l53: ldrPL R7, [sp, -R14]
l54: adds R8, R10, R10
l55: ldr R2, [sp], #+24
l56: addLTs R9, R9, R9
l57: ldrGT R9, [sp, #-12]
l58: ldrPL R9, [sp, #-36]
l59: addHI R6, R11, R2, LSR R11
l60: add R7, R0, #61440
l61: add R3, R15, R7, LSL #5
l62: mov R1, #0
l63: ldr R7, [sp, +R1]!
l64: mov R1, #52
l65: ldr R9, [sp], -R1
l66: addEQ R5, R11, R6, ASR R3
l67: mov R14, #0
l68: ldr R5, [sp], +R14
l69: add R3, R7, #1610612740
l70: addGE R14, R15, R15, RRX 
l71: addLEs R1, R10, R0
l72: adds R1, R3, R5, ROR #2
l73: ldr R5, [sp, #+60]!
l74: adds R9, R4, R11, LSR R11
l75: mov R12, #4
l76: ldr R7, [sp, -R12]!
l77: adds R8, R7, R7, ASR R10
l78: addVS R10, R11, R2, LSL #7
l79: addLE R2, R7, R7
l80: add R6, R4, R0, LSL #3
l81: addVSs R1, R2, R3
l82: addGTs R1, R8, R4, LSL R11
l83: addVCs R11, R8, R9, LSR #10
l84: addCC R12, R4, R0, LSR #28
l85: ldrCS R5, [sp, #-4]
l86: ldr R10, [sp], #-20
l87: mov R8, #20
l88: ldr R9, [sp], -R8
l89: mov R4, #8
l90: ldrCS R10, [sp, +R4]
l91: ldrVS R0, [sp, #+32]
l92: addLTs R0, R15, R10
l93: add R12, R1, #2277376
l94: addLSs R0, R7, R10, ASR R10
l95: ldr R10, [sp, #+44]
l96: addLS R12, R1, #4093640706
l97: ldr R14, [sp], #-4
l98: ldr R0, [sp, #+44]
l99: ldr R9, [sp], #+20
l100: ldr R10, [sp, #-12]!
l101: ldrMI R10, [sp, #+8]
l102: ldr R7, [sp, #+20]
l103: add R5, R10, R7, LSL R2
l104: mov R5, #12
l105: ldr R11, [sp, -R5]!
l106: ldr R8, [sp, #+60]
l107: addGT R10, R4, R1
l108: addLSs R12, R0, R15, RRX 
l109: addGEs R0, R1, R12
l110: adds R11, R2, #90112
l111: add R9, R0, #249856
l112: add R9, R9, #11904
l113: add R4, R7, R6
l114: mov R2, #4
l115: ldr R2, [sp], -R2
l116: ldr R5, [sp], #+40
l117: mov R10, #16
l118: ldrNE R7, [sp, +R10]
l119: ldr R5, [sp], #+24
l120: addLSs R2, R11, R15
l121: ldr R10, [sp], #-56
l122: adds R2, R15, #2348810241
l123: addVS R7, R7, R0, ASR #24
l124: addVCs R3, R11, #3489660928
l125: addGT R5, R8, #1459617792
l126: ldr R6, [sp], #+56
l127: addVCs R7, R0, R2, LSR R10
l128: ldr R0, [sp], #-64
l129: ldr R12, [sp], #+52
l130: addCC R8, R3, R14, RRX 
l131: addGEs R9, R0, #53248
l132: mov R14, #28
l133: ldr R11, [sp], -R14
l134: addVS R1, R5, #199680
l135: adds R14, R4, R6
l136: mov R2, #28
l137: ldrMI R4, [sp, +R2]
l138: adds R10, R0, R10, ROR #10
l139: addCCs R10, R14, R7, RRX 
l140: add R1, R2, R8
l141: add R1, R12, R4
l142: add R1, R11, R14, RRX 
l143: ldr R6, [sp, #-16]
l144: addLS R10, R11, #93
l145: addCC R5, R7, R1
l146: ldr R1, [sp], #+24
l147: adds R14, R5, #3904
l148: adds R11, R8, R2
l149: ldr R0, [sp, #-48]!
l150: addEQ R7, R8, R1, LSR R14
l151: mov R5, #68
l152: ldr R11, [sp, +R5]!
l153: adds R8, R4, #31457280
l154: adds R9, R15, #53
l155: mov R9, #64
l156: ldr R3, [sp], -R9
l157: ldrNE R2, [sp, #-8]
l158: mov R2, #28
l159: ldr R2, [sp, +R2]
l160: addLTs R3, R11, #13893632
l161: add R9, R9, R3
l162: mov R2, #12
l163: ldrNE R10, [sp, +R2]
l164: mov R11, #8
l165: ldr R6, [sp], -R11
l166: addEQ R12, R10, R3, LSL #19
l167: addPLs R11, R5, #15872
l168: addCCs R12, R9, R9, LSR R7
l169: ldr R2, [sp, #+12]
l170: mov R14, #40
l171: ldrEQ R6, [sp, +R14]
l172: addGE R11, R8, #10752
l173: adds R5, R1, R6
l174: addMIs R14, R5, R4, ASR #19
l175: ldr R5, [sp, #+60]!
l176: addNE R7, R8, R14
l177: adds R4, R8, R15, RRX 
l178: add R9, R14, R10, RRX 
l179: addNE R12, R2, #2147483650
l180: mov R1, #12
l181: ldr R7, [sp], -R1
l182: mov R8, #24
l183: ldrLS R7, [sp, -R8]
l184: ldr R6, [sp, #+16]!
l185: adds R7, R8, R14, LSR R4
l186: ldrVC R14, [sp, #-24]
l187: mov R14, #8
l188: ldr R4, [sp, -R14]
l189: ldr R11, [sp], #-40
l190: adds R11, R7, R9
l191: ldr R3, [sp, #+28]!
l192: adds R6, R8, R8
l193: mov R14, #40
l194: ldr R5, [sp], -R14
l195: addVS R7, R12, R1, LSR #4
l196: adds R2, R11, R1
l197: ldr R8, [sp, #+48]
l198: adds R12, R11, R3
l199: add R5, R3, #252
l200: mov R5, #32
l201: ldrLE R11, [sp, +R5]
l202: ldr R0, [sp], #-12
l203: ldr R12, [sp], #+0
l204: mov R3, #28
l205: ldr R0, [sp, +R3]!
l206: ldrNE R14, [sp, #-24]
l207: adds R2, R7, R8, LSR #29
l208: ldr R6, [sp, #+40]!
l209: addVSs R6, R15, R14, ROR #8
l210: ldr R1, [sp], #-40
l211: addLT R4, R6, R10, ASR #2
l212: ldr R4, [sp, #-8]!
l213: adds R1, R12, #21504
l214: mov R12, #8
l215: ldr R4, [sp], -R12
l216: mov R8, #4
l217: ldr R8, [sp, -R8]
l218: ldr R8, [sp, #+60]!
l219: ldr R8, [sp, #-36]!
l220: adds R10, R6, #52428800
l221: add R6, R6, R2, ASR #27
l222: addPLs R0, R2, R7, ASR R7
l223: mov R12, #36
l224: ldr R4, [sp, +R12]!
l225: adds R6, R6, #1728053248
l226: adds R1, R0, R2, LSR R1
l227: mov R14, #60
l228: ldr R10, [sp, -R14]!
l229: ldr R8, [sp], #-12
l230: mov R9, #20
l231: ldr R6, [sp, +R9]
l232: mov R9, #32
l233: ldr R6, [sp], +R9
l234: ldr R4, [sp], #-28
l235: addNE R6, R2, R10, LSL #19
l236: addLS R7, R9, R7, RRX 
l237: addHIs R0, R15, #212992
l238: mov R9, #12
l239: ldr R9, [sp], +R9
l240: mov R12, #32
l241: ldr R12, [sp], +R12
l242: addVC R4, R8, R7, ROR R14
l243: mov R3, #24
l244: ldrLS R14, [sp, +R3]
l245: mov R1, #32
l246: ldr R6, [sp], -R1
l247: mov R9, #4
l248: ldr R9, [sp, +R9]!
l249: addVCs R12, R5, R15
l250: ldr R8, [sp, #-12]
l251: add R12, R5, R10
l252: mov R7, #12
l253: ldrPL R14, [sp, -R7]
l254: mov R4, #4
l255: ldr R3, [sp, +R4]!
l256: ldr R1, [sp, #-16]!
l257: addGTs R12, R0, R14
l258: mov R2, #48
l259: ldr R1, [sp, +R2]!
l260: ldr R7, [sp, #-36]!
l261: ldr R1, [sp], #+28
l262: addLEs R0, R3, R6, LSR #25
l263: mov R11, #44
l264: ldr R12, [sp, -R11]!
l265: addLEs R4, R4, R6, LSL #9
l266: mov R2, #48
l267: ldr R12, [sp], +R2
l268: mov R3, #52
l269: ldr R12, [sp], -R3
l270: add R6, R12, #1016
l271: add R9, R4, R7, LSL R12
l272: ldr R9, [sp], #+20
l273: adds R0, R12, R4, LSL #11
l274: ldr R11, [sp], #+24
l275: mov R11, #4
l276: ldr R9, [sp, -R11]
l277: add R10, R4, R0, ROR R4
l278: addNE R14, R15, R8
l279: addLTs R6, R2, R4, ROR #22
l280: addEQs R3, R2, #4026531842
l281: ldrVS R0, [sp, #-44]
l282: mov R1, #20
l283: ldr R4, [sp], +R1
l284: add R9, R7, R4
l285: mov R8, #24
l286: ldr R4, [sp], -R8
l287: ldrEQ R5, [sp, #+8]
l288: ldr R7, [sp], #+4
l289: adds R2, R9, R1
l290: mov R1, #16
l291: ldr R11, [sp, -R1]!
l292: mov R9, #40
l293: ldr R0, [sp], +R9
l294: addNE R3, R11, R2
l295: addPL R10, R9, R11, ROR R7
l296: ldrLE R4, [sp, #-4]
l297: mov R4, #28
l298: ldr R11, [sp, -R4]!
l299: ldr R12, [sp], #+8
l300: add R2, R12, R1, LSL R2
l301: adds R6, R4, #1088
l302: adds R5, R4, R10, LSR R7
l303: mov R9, #20
l304: ldr R6, [sp], -R9
l305: mov R2, #40
l306: ldr R7, [sp, +R2]!
l307: mov R7, #56
l308: ldr R1, [sp, -R7]!
l309: addGE R4, R0, R9, ROR #2
l310: mov R7, #4
l311: ldr R8, [sp, +R7]!
l312: mov R3, #52
l313: ldr R11, [sp], +R3
l314: addHIs R3, R14, R4
l315: ldr R4, [sp, #-8]!
l316: addVS R8, R1, #1536
l317: add R10, R12, R14, LSR R10
l318: add R1, R15, #11665408
l319: addGEs R10, R5, R9
l320: addCSs R12, R1, R2, RRX 
l321: add R7, R0, R12, ASR #24
l322: addLE R8, R9, R10, LSL R3
l323: addCSs R10, R8, R14
l324: ldr R7, [sp, #-44]!
l325: add R2, R14, #212992
l326: addEQ R10, R12, #536870912
l327: ldrVS R6, [sp, #+16]
l328: mov R3, #4
l329: ldr R12, [sp, +R3]!
l330: ldrCS R6, [sp, #-4]
l331: addVS R3, R2, R8, ROR #2
l332: addGT R9, R2, R11, LSL R4
l333: ldrPL R0, [sp, #-16]
l334: addNE R0, R0, #39845888
l335: ldr R5, [sp, #+40]!
l336: addLT R4, R12, R8
l337: mov R4, #4
l338: ldrVC R10, [sp, +R4]
l339: mov R8, #8
l340: ldr R2, [sp], -R8
l341: addHI R12, R11, R10
l342: addEQs R1, R5, R12, LSL #13
l343: adds R6, R2, #666894336
l344: mov R12, #28
l345: ldrLT R6, [sp, -R12]
l346: ldr R9, [sp, #+16]!
l347: mov R12, #20
l348: ldrVC R12, [sp, -R12]
l349: mov R12, #64
l350: ldr R12, [sp, -R12]!
l351: addNEs R1, R4, #578813952
l352: ldr R2, [sp, #+4]!
l353: adds R5, R2, #9920
l354: addGT R14, R5, #13107200
l355: addMIs R8, R9, R3, LSR R6
l356: mov R3, #8
l357: ldr R3, [sp, -R3]!
l358: adds R4, R0, R8
l359: adds R2, R15, #99
l360: ldr R11, [sp, #+48]!
l361: mov R1, #44
l362: ldr R1, [sp], -R1
l363: addVS R4, R0, R0
l364: addNEs R11, R14, #3221225487
l365: mov R3, #36
l366: ldr R0, [sp, +R3]!
l367: ldr R0, [sp, #+24]
l368: ldr R14, [sp, #-24]
l369: ldr R11, [sp], #+4
l370: mov R10, #28
l371: ldr R5, [sp, -R10]
l372: ldr R1, [sp, #+0]
l373: adds R4, R14, R12
l374: addMI R10, R2, R5
l375: addPL R12, R5, R8
l376: addNE R2, R6, R10, RRX 
l377: mov R5, #8
l378: ldr R14, [sp, +R5]
l379: mov R2, #44
l380: ldr R7, [sp, -R2]!
l381: ldr R10, [sp, #+44]!
l382: add R9, R0, R4, LSL R3
l383: addGTs R9, R5, R7, ASR R7
l384: mov R6, #8
l385: ldr R8, [sp], -R6
l386: ldrEQ R3, [sp, #-24]
l387: addPL R9, R9, R3, LSL R1
l388: add R14, R4, R12
l389: ldr R1, [sp, #-36]!
l390: add R7, R4, R11, LSR #3
l391: add R11, R0, R11
l392: mov R0, #16
l393: ldr R1, [sp, +R0]
l394: addLE R4, R10, #24576
l395: adds R0, R9, #14680064
l396: mov R5, #44
l397: ldr R7, [sp, +R5]
l398: adds R12, R0, R14
l399: mov R9, #40
l400: ldr R0, [sp], +R9
l401: mov R7, #4
l402: ldr R10, [sp], +R7
l403: add R11, R3, R5, LSR #15
l404: add R6, R4, R12
l405: mov R3, #16
l406: ldr R8, [sp], -R3
l407: ldr R0, [sp], #+20
l408: adds R8, R4, R9, LSL #1
l409: mov R1, #20
l410: ldr R10, [sp, +R1]!
l411: add R10, R3, #512
l412: ldr R10, [sp, #-12]
l413: mov R6, #16
l414: ldr R10, [sp], -R6
l415: addPL R1, R5, R9
l416: ldr R14, [sp, #-16]
l417: mov R12, #8
l418: ldr R2, [sp, +R12]!
l419: ldr R12, [sp], #-24
l420: mov R5, #12
l421: ldr R1, [sp], +R5
l422: ldr R14, [sp], #-48
l423: mov R6, #4
l424: ldr R10, [sp], +R6
l425: adds R9, R5, R10
l426: add R4, R14, #195
l427: addLS R0, R10, R1
l428: add R2, R14, R2, RRX 
l429: adds R0, R15, R14, RRX 
l430: adds R3, R10, #1073741856
l431: mov R1, #56
l432: ldr R10, [sp], +R1
l433: mov R7, #32
l434: ldr R0, [sp], -R7
l435: addEQs R2, R7, R5, RRX 
l436: adds R1, R5, #8
l437: mov R9, #12
l438: ldr R2, [sp, -R9]!
l439: adds R1, R8, R8, RRX 
l440: add R5, R8, R3, ASR #21
l441: adds R8, R7, R12
l442: addHIs R11, R6, R12, ASR #27
l443: ldr R4, [sp], #-8
l444: mov R7, #64
l445: ldr R3, [sp, +R7]
l446: ldr R8, [sp, #+64]!
l447: addLS R0, R1, R10
l448: addLSs R12, R10, #4093640705
l449: addLTs R2, R14, R15
l450: mov R7, #8
l451: ldr R3, [sp, -R7]
l452: addGE R0, R11, #3129344
l453: addGEs R1, R11, #132
l454: addCC R1, R2, R8, ROR R6
l455: addLEs R10, R15, R3
l456: mov R7, #16
l457: ldrVC R4, [sp, -R7]
l458: addLEs R1, R1, #704
l459: ldr R3, [sp, #-56]
l460: adds R10, R2, R14, ASR #19
l461: mov R8, #40
l462: ldr R3, [sp], -R8
l463: mov R4, #32
l464: ldrVC R10, [sp, +R4]
l465: addHIs R3, R11, R8
l466: mov R0, #16
l467: ldr R0, [sp], -R0
l468: addLSs R14, R4, R10, LSR #12
l469: addGE R3, R0, R0, RRX 
l470: add R12, R1, #46
l471: mov R3, #8
l472: ldrLE R9, [sp, +R3]
l473: ldr R0, [sp, #+40]!
l474: add R3, R12, R3, LSL #26
l475: ldr R4, [sp, #+0]
l476: ldr R1, [sp], #-52
l477: addCC R3, R2, #36608
l478: addEQ R12, R7, R9
l479: addGT R14, R8, R0, ROR R12
l480: addHIs R0, R3, #5696
l481: mov R3, #4
l482: ldr R1, [sp, +R3]
l483: mov R7, #44
l484: ldr R0, [sp, +R7]!
l485: adds R5, R5, #1808
l486: addCC R6, R2, R15, RRX 
l487: addLE R5, R15, #29360128
l488: ldr R3, [sp, #-24]!
l489: add R4, R1, R3, ASR #18
l490: adds R7, R3, R2, ASR R0
l491: addCC R1, R2, #3221225485
l492: mov R8, #16
l493: ldr R4, [sp, +R8]!
l494: ldr R12, [sp, #-32]
l495: mov R5, #32
l496: ldr R12, [sp], -R5
l497: ldr R10, [sp, #+56]!
l498: addMIs R3, R15, R4, RRX 
l499: addGTs R10, R7, R6, ASR #13
l500: mov R12, #52
l501: ldr R3, [sp], -R12
l502: mov R0, #56
l503: ldr R12, [sp], +R0
l504: adds R3, R1, R3
l505: addMI R12, R14, R2, LSR #24
l506: mov R0, #40
l507: ldr R9, [sp], -R0
l508: ldr R2, [sp, #+4]!
l509: ldr R14, [sp], #-20
l510: mov R4, #44
l511: ldr R9, [sp, +R4]
l512: addNEs R11, R3, #208896
l513: addLTs R9, R10, #103
l514: ldr R14, [sp, #+52]
l515: addVS R10, R12, R3
l516: addPL R9, R6, R11, ASR R14
l517: add R9, R1, #204
l518: add R14, R5, R14, ASR R7
l519: ldr R8, [sp, #+48]!
l520: adds R12, R10, R12, ROR #2
l521: ldr R5, [sp, #-16]!
l522: mov R4, #12
l523: ldr R14, [sp], +R4
l524: add R3, R6, R11
l525: mov R7, #8
l526: ldr R11, [sp, -R7]!
l527: mov R1, #20
l528: ldr R0, [sp, +R1]!
l529: ldrMI R2, [sp, #-68]
l530: addNEs R11, R5, #96468992
l531: add R3, R4, R14
l532: add R12, R14, #135168
l533: adds R3, R5, R8, ASR R7
l534: addLT R6, R8, #1543503872
l535: ldrGT R3, [sp, #-36]
l536: addCC R4, R10, R9, ASR R3
l537: add R9, R3, R0, LSL R2
l538: mov R10, #28
l539: ldr R0, [sp, -R10]!
l540: add R2, R1, R11, RRX 
l541: addEQs R0, R1, R5, ASR #10
l542: mov R14, #32
l543: ldr R6, [sp, +R14]!
l544: addEQs R5, R6, R0, LSR R12
l545: mov R6, #12
l546: ldr R14, [sp], -R6
l547: addGTs R10, R14, R14, LSL #17
l548: addGTs R3, R2, R6, RRX 
l549: ldr R1, [sp, #-16]!
l550: adds R0, R12, #819200
l551: add R10, R10, R9, LSR #12
l552: addLE R12, R6, R8, ROR #19
l553: add R5, R14, #97280
l554: addGTs R3, R14, R10, ROR #28
l555: adds R4, R10, R7, RRX 
l556: ldr R4, [sp], #-12
l557: adds R6, R5, R11, LSR R14
l558: addMI R11, R0, R8
l559: addMIs R0, R14, R11, ASR #14
l560: addHI R0, R14, #3489660936
l561: mov R12, #20
l562: ldr R11, [sp, -R12]!
l563: addLEs R14, R2, #7012352
l564: ldr R5, [sp, #-4]!
l565: addVSs R12, R5, R9
l566: addCS R0, R0, R6
l567: mov R7, #52
l568: ldrHI R3, [sp, +R7]
l569: ldr R0, [sp], #-8
l570: ldr R14, [sp], #+36
l571: ldr R9, [sp, #+28]
l572: mov R4, #8
l573: ldr R4, [sp], +R4
l574: mov R11, #32
l575: ldr R3, [sp, -R11]
l576: addGEs R12, R15, R8
l577: ldr R8, [sp], #-36
l578: ldrVC R9, [sp, #+4]
l579: ldr R1, [sp, #+8]!
l580: add R0, R3, R10, LSR R14
l581: add R5, R8, R2, LSR R6
l582: mov R10, #48
l583: ldr R2, [sp, +R10]!
l584: ldr R14, [sp, #-36]
l585: ldrPL R12, [sp, #-60]
l586: addNEs R9, R1, #31232
l587: addGTs R4, R15, R9, ROR #11
l588: addGEs R7, R5, R14
l589: addPL R3, R0, #4014080
l590: addLSs R8, R5, R8
l591: mov R0, #40
l592: ldrVC R4, [sp, -R0]
l593: ldr R5, [sp, #-8]!
l594: addLSs R12, R1, #10496
l595: mov R3, #8
l596: ldr R10, [sp], -R3
l597: add R4, R7, R0, RRX 
l598: ldr R2, [sp, #+16]!
l599: add R9, R1, R1, RRX 
l600: ldrPL R1, [sp, #+8]
l601: mov R3, #12
l602: ldr R1, [sp, -R3]!
l603: ldr R0, [sp, #+16]!
l604: mov R7, #36
l605: ldrLS R5, [sp, -R7]
l606: adds R6, R15, R0
l607: ldr R10, [sp, #+0]!
l608: mov R14, #48
l609: ldr R8, [sp], -R14
l610: adds R2, R14, R4
l611: mov R14, #0
l612: ldr R7, [sp, +R14]!
l613: addGTs R6, R15, #3976200192
l614: ldr R2, [sp], #-12
l615: mov R0, #36
l616: ldrEQ R4, [sp, +R0]
l617: addLTs R7, R2, R4
l618: addGTs R3, R1, R12
l619: mov R0, #16
l620: ldr R0, [sp], +R0
l621: ldr R9, [sp, #-16]!
l622: ldr R8, [sp], #+44
l623: adds R2, R11, #124
l624: mov R8, #44
l625: ldr R7, [sp, -R8]
l626: addVC R9, R7, R10, ROR R10
l627: mov R10, #32
l628: ldr R7, [sp, -R10]
l629: adds R0, R1, R10, ROR R12
l630: addGT R10, R6, R5
l631: ldr R14, [sp], #-4
l632: addPLs R9, R5, #2147483680
l633: mov R12, #16
l634: ldr R11, [sp, -R12]!
l635: ldr R9, [sp, #+8]!
l636: ldr R9, [sp, #-12]!
l637: ldrGE R8, [sp, #+24]
l638: adds R6, R0, R6, LSR R6
l639: add R4, R4, R15, ROR #30
l640: ldrLS R10, [sp, #-20]
l641: addCSs R0, R11, R8
l642: mov R11, #28
l643: ldr R2, [sp], +R11
l644: ldr R12, [sp], #-40
l645: mov R5, #32
l646: ldr R10, [sp, +R5]!
l647: adds R8, R2, R1, LSL R0
l648: mov R14, #24
l649: ldrCS R8, [sp, -R14]
l650: ldr R3, [sp], #-48
l651: ldr R7, [sp, #+56]!
l652: ldr R0, [sp], #-32
l653: addHIs R6, R7, R9, ASR #4
l654: addGT R0, R11, R15, LSL #29
l655: ldr R8, [sp, #-12]
l656: ldr R2, [sp, #+4]
l657: ldr R11, [sp, #-16]
l658: mov R6, #12
l659: ldr R7, [sp], +R6
l660: add R11, R4, R2, ASR #25
l661: adds R4, R11, R3
l662: ldrLS R6, [sp, #-20]
l663: mov R10, #20
l664: ldr R1, [sp, -R10]
l665: mov R11, #36
l666: ldrHI R7, [sp, +R11]
l667: addCC R1, R0, R9, ASR #30
l668: adds R6, R7, #218112
l669: add R10, R2, R0, LSR #9
l670: mov R0, #36
l671: ldr R5, [sp, -R0]
l672: ldr R2, [sp], #-32
l673: mov R14, #0
l674: ldrNE R9, [sp, +R14]
l675: ldr R8, [sp, #+16]
l676: ldr R0, [sp], #+32
l677: adds R6, R5, R9
l678: ldr R6, [sp, #-16]!
l679: addLSs R11, R7, #15859712
l680: addGTs R14, R8, R8
l681: ldr R1, [sp, #-8]!
l682: addHIs R3, R15, #6
l683: mov R10, #8
l684: ldr R10, [sp, +R10]!
l685: adds R14, R4, R10
l686: adds R10, R15, R0
l687: ldr R3, [sp, #+52]
l688: add R6, R2, R12, LSL R2
l689: addLT R1, R8, #221184
l690: mov R9, #4
l691: ldrGT R12, [sp, -R9]
l692: mov R11, #12
l693: ldr R1, [sp], +R11
l694: adds R10, R0, #3825205249
l695: addHIs R3, R2, R2, LSL R4
l696: mov R8, #28
l697: ldr R2, [sp], -R8
l698: addNE R5, R10, R10
l699: mov R1, #4
l700: ldrNE R11, [sp, +R1]
l701: mov R1, #56
l702: ldr R12, [sp, +R1]!
l703: add R5, R4, R0, LSL #28
l704: addGTs R8, R1, #34865152
l705: addLTs R11, R12, #10813440
l706: add R11, R1, R7
l707: adds R6, R9, R3, LSR R0
l708: ldrNE R14, [sp, #-16]
l709: mov R6, #44
l710: ldr R9, [sp, -R6]
l711: mov R2, #28
l712: ldrGT R4, [sp, -R2]
l713: addEQ R10, R5, R14, RRX 
l714: mov R0, #40
l715: ldrMI R7, [sp, -R0]
l716: addPL R14, R12, R9
l717: addLE R3, R7, R6, LSR R12
l718: addVSs R1, R0, R7, ASR R10
l719: ldr R14, [sp], #-8
l720: ldr R4, [sp], #-4
l721: mov R4, #40
l722: ldrCS R12, [sp, -R4]
l723: ldr R2, [sp], #-4
l724: addVS R10, R3, R6, LSR R11
l725: addNE R5, R14, R6
l726: add R4, R3, R0
l727: mov R4, #24
l728: ldr R7, [sp], -R4
l729: mov R12, #40
l730: ldr R9, [sp, +R12]!
l731: ldr R9, [sp, #-32]!
l732: adds R1, R11, R11, ROR R12
l733: ldrLS R14, [sp, #-8]
l734: mov R1, #8
l735: ldr R10, [sp], +R1
l736: ldr R3, [sp, #+12]!
l737: mov R6, #16
l738: ldrNE R8, [sp, +R6]
l739: ldr R4, [sp], #+20
l740: ldr R3, [sp], #-8
l741: ldr R5, [sp], #-4
l742: ldrLS R12, [sp, #-8]
l743: mov R7, #4
l744: ldr R2, [sp, -R7]!
l745: addMI R4, R15, #3791650816
l746: adds R2, R5, #3640655872
l747: addMI R1, R1, R6
l748: ldr R10, [sp], #-36
l749: addGT R4, R1, R11, RRX 
l750: ldr R2, [sp, #+44]!
l751: mov R8, #40
l752: ldr R9, [sp], -R8
l753: mov R11, #20
l754: ldr R1, [sp, -R11]!
l755: addMI R4, R5, #536870916
l756: mov R8, #72
l757: ldr R10, [sp, +R8]
l758: mov R11, #72
l759: ldr R12, [sp], +R11
l760: addMI R2, R3, R9, RRX 
l761: ldr R8, [sp], #-4
l762: ldr R11, [sp, #-24]!
l763: mov R3, #28
l764: ldr R6, [sp, -R3]!
l765: add R12, R2, R7, LSL #4
l766: mov R1, #44
l767: ldr R10, [sp, +R1]!
l768: ldrVS R2, [sp, #+4]
l769: addMI R3, R4, R12
l770: mov R3, #4
l771: ldrGT R14, [sp, +R3]
l772: ldrLT R12, [sp, #-12]
l773: ldr R9, [sp, #-16]!
l774: mov R4, #4
l775: ldr R3, [sp, +R4]!
l776: add R14, R12, R8, ROR #16
l777: addVC R9, R10, R12, ROR #30
l778: mov R14, #32
l779: ldr R10, [sp], -R14
l780: addCCs R1, R10, #729088
l781: ldr R1, [sp], #+12
l782: addHIs R11, R11, #209715200
l783: mov R14, #44
l784: ldr R12, [sp], +R14
l785: ldr R4, [sp], #-64
l786: mov R9, #52
l787: ldr R2, [sp, +R9]!
l788: addHIs R0, R12, #1933312
l789: addCSs R3, R3, R15, LSR #29
l790: addHI R3, R2, R10, ROR R12
l791: ldr R1, [sp], #+4
l792: addPLs R7, R2, R9, LSL R9
l793: addLS R12, R12, #1294336
l794: ldr R14, [sp, #+0]
l795: mov R14, #36
l796: ldr R8, [sp, -R14]!
l797: ldr R4, [sp, #-28]!
l798: add R1, R4, R6
l799: ldr R8, [sp], #+52
l800: ldr R9, [sp], #+16
l801: addCCs R4, R4, #3422552064
l802: ldr R14, [sp], #-52
l803: addEQs R8, R4, R12, LSL #23
l804: adds R5, R4, R15, LSR #18
l805: mov R3, #28
l806: ldrLT R6, [sp, +R3]
l807: add R3, R0, R12
l808: adds R9, R9, R11
l809: ldr R10, [sp, #-8]!
l810: ldr R8, [sp, #+56]!
l811: ldr R14, [sp, #-4]!
l812: addGTs R1, R14, R15
l813: adds R14, R2, R7, ASR R9
l814: mov R1, #16
l815: ldrLS R0, [sp, -R1]
l816: addEQs R11, R11, R1, ROR R3
l817: ldr R6, [sp, #+12]!
l818: addVSs R12, R9, R10, ROR R4
l819: mov R9, #52
l820: ldr R9, [sp], -R9
l821: adds R12, R2, R12, LSR R3
l822: ldrLE R1, [sp, #+48]
l823: ldr R3, [sp], #+28
l824: ldr R1, [sp, #+8]!
l825: addCS R14, R4, R8, ASR R10
l826: addCC R8, R15, R0, LSR #24
l827: ldrCS R7, [sp, #+8]
l828: adds R2, R12, R12, LSR R14
l829: addHIs R8, R9, #104
l830: addEQ R2, R0, R3
l831: mov R3, #52
l832: ldrVS R1, [sp, -R3]
l833: addLS R11, R2, R14, ROR R10
l834: mov R8, #8
l835: ldr R11, [sp, +R8]
l836: add R6, R12, R7, ASR R7
l837: adds R10, R8, R8, LSR R7
l838: mov R3, #20
l839: ldr R5, [sp, -R3]!
l840: mov R5, #8
l841: ldr R11, [sp, +R5]!
l842: ldr R10, [sp, #-16]!
l843: add R14, R14, R4, ROR #12
l844: add R7, R7, R10
l845: mov R5, #20
l846: ldr R6, [sp, +R5]!
l847: mov R14, #24
l848: ldr R9, [sp], +R14
l849: ldrPL R9, [sp, #-56]
l850: ldr R5, [sp], #-32
l851: addGT R2, R0, #46592
l852: adds R3, R0, R11, ROR R0
l853: addNEs R8, R7, R4, LSR R2
l854: addCSs R14, R10, #10682368
l855: mov R6, #24
l856: ldrNE R7, [sp, -R6]
l857: mov R9, #4
l858: ldr R5, [sp, -R9]!
l859: adds R7, R2, R3
l860: addLT R4, R12, R9, LSR #24
l861: adds R9, R12, R2
l862: add R3, R12, R12, ASR #19
l863: adds R1, R6, R5, ROR R10
l864: adds R7, R2, #3422552067
l865: mov R10, #0
l866: ldr R0, [sp], +R10
l867: ldr R12, [sp, #+8]!
l868: mov R12, #4
l869: ldr R1, [sp, +R12]!
l870: ldr R7, [sp, #+16]!
l871: mov R6, #4
l872: ldr R9, [sp, +R6]!
l873: mov R1, #40
l874: ldr R8, [sp, -R1]
l875: ldr R10, [sp, #-68]!
l876: add R1, R9, R8, ASR R3
l877: ldrMI R8, [sp, #+36]
l878: addCS R3, R8, R7, RRX 
l879: ldr R12, [sp, #+64]!
l880: mov R7, #0
l881: ldr R7, [sp, +R7]!
l882: ldr R12, [sp, #-4]!
l883: adds R9, R6, R5, RRX 
l884: adds R11, R8, R7, RRX 
l885: add R7, R9, #2801664
l886: mov R0, #20
l887: ldrVC R5, [sp, -R0]
l888: mov R1, #12
l889: ldrGT R9, [sp, -R1]
l890: ldr R1, [sp], #-16
l891: ldr R3, [sp, #+24]
l892: addEQs R6, R9, R1
l893: addLE R2, R1, #14208
l894: addMI R12, R12, R15
l895: ldrLT R9, [sp, #-36]
l896: mov R12, #24
l897: ldr R10, [sp], -R12
l898: mov R9, #28
l899: ldr R8, [sp], +R9
l900: ldr R4, [sp, #-36]!
l901: adds R5, R8, R4, ROR #18
l902: adds R11, R3, R8, ROR R6
l903: mov R8, #36
l904: ldr R14, [sp, +R8]!
l905: add R14, R15, R5
l906: ldr R8, [sp], #-8
l907: add R11, R3, #1711276032
l908: addCCs R0, R9, R15
l909: add R10, R5, R9, ROR #29
l910: ldr R3, [sp, #-12]!
l911: add R14, R15, R4
l912: mov R8, #12
l913: ldrCS R5, [sp, +R8]
l914: mov R6, #12
l915: ldrVS R4, [sp, -R6]
l916: addCC R11, R0, R3, LSL #30
l917: addGT R14, R6, R3
l918: ldr R2, [sp, #+40]
l919: ldrHI R0, [sp, #+40]
l920: ldrLE R5, [sp, #+20]
l921: ldr R11, [sp, #+16]!
l922: addNEs R4, R5, R1, ROR R7
l923: mov R14, #32
l924: ldr R7, [sp, -R14]!
l925: addLTs R3, R1, R5, LSL #28
l926: mov R0, #0
l927: ldr R2, [sp], +R0
l928: ldrLS R10, [sp, #+8]
l929: add R4, R9, R4
l930: ldr R1, [sp], #+36
l931: mov R12, #8
l932: ldr R0, [sp, +R12]!
l933: adds R9, R5, R3
l934: adds R14, R1, R7, LSR #7
l935: mov R1, #8
l936: ldr R9, [sp], -R1
l937: mov R2, #36
l938: ldr R1, [sp], -R2
l939: mov R11, #52
l940: ldr R10, [sp], +R11
l941: adds R4, R5, R10
l942: mov R11, #20
l943: ldr R14, [sp], -R11
l944: ldr R10, [sp, #+8]
l945: addGT R0, R6, R14, LSL #2
l946: mov R0, #4
l947: ldr R5, [sp, -R0]!
l948: mov R11, #8
l949: ldr R5, [sp], +R11
l950: addLEs R7, R3, R0
l951: ldr R9, [sp], #-24
l952: add R2, R6, R9, ASR #25
l953: mov R12, #24
l954: ldrLT R5, [sp, +R12]
l955: addLEs R10, R14, R14, ROR R14
l956: ldrGE R0, [sp, #-4]
l957: addLTs R2, R8, R8
l958: ldr R12, [sp, #-24]!
l959: add R10, R11, R0, ROR R3
l960: mov R14, #32
l961: ldr R7, [sp, +R14]!
l962: ldr R11, [sp], #-20
l963: addLEs R7, R9, R9, RRX 
l964: addPLs R10, R7, R7, ASR R14
l965: addCCs R11, R0, R0
l966: mov R6, #52
l967: ldr R3, [sp, +R6]
l968: mov R12, #60
l969: ldr R12, [sp, +R12]!
l970: adds R4, R7, R3, LSR #11
l971: addVS R1, R11, R10, ROR R0
l972: addLSs R8, R10, #54272
l973: addLEs R11, R5, R3, ASR #5
l974: ldr R5, [sp], #-44
l975: ldr R8, [sp, #+36]
l976: add R6, R4, R6, ASR R3
l977: mov R14, #32
l978: ldr R9, [sp, +R14]!
l979: ldr R14, [sp, #-20]!
l980: addVS R6, R6, R12
l981: ldr R12, [sp, #+8]
l982: add R3, R4, R0, RRX 
l983: ldrEQ R4, [sp, #-4]
l984: mov R4, #12
l985: ldrLS R1, [sp, -R4]
l986: addVS R5, R15, R12, RRX 
l987: mov R2, #0
l988: ldr R6, [sp], +R2
l989: addCSs R5, R12, #11075584
l990: add R8, R9, R14, RRX 
l991: adds R8, R12, R9, RRX 
l992: addNEs R8, R12, R0, ASR #0
l993: ldr R2, [sp, #+4]
l994: addNEs R5, R0, R7, ASR R8
l995: addLTs R1, R3, R6, LSR R9
l996: adds R10, R1, #3959422976
l997: ldr R11, [sp, #-8]!
l998: ldr R0, [sp], #-20
l999: ldr R14, [sp, #+12]
l1000: ldr R12, [sp], #+48
l1001: addLS R6, R6, R4, ASR #31
l1002: mov R11, #4
l1003: ldr R11, [sp], +R11
l1004: addGEs R0, R7, R10, RRX 
l1005: ldr R12, [sp], #-28
l1006: adds R7, R3, R5, LSR R2
l1007: adds R3, R4, R15, RRX 
l1008: add R12, R12, R2, ASR #18
l1009: adds R6, R3, #3904
l1010: ldr R4, [sp], #+28
l1011: addLE R0, R3, R7, ASR R0
l1012: ldrVS R8, [sp, #+0]
l1013: mov R7, #4
l1014: ldr R8, [sp, -R7]!
l1015: add R9, R11, R14, LSR R0
l1016: addGT R3, R2, R12, RRX 
l1017: addPL R1, R14, #3264
l1018: ldrNE R3, [sp, #-12]
l1019: addLEs R10, R10, R4, LSL R10
l1020: addPL R1, R7, R6, RRX 
l1021: mov R2, #60
l1022: ldr R11, [sp], -R2
l1023: addGTs R8, R8, #603979778
l1024: ldrNE R8, [sp, #+60]
l1025: add R2, R11, R2, LSL #29
l1026: addHIs R6, R11, R12
l1027: ldrGT R11, [sp, #+24]
l1028: ldr R12, [sp, #+72]!
l1029: mov R0, #32
l1030: ldr R10, [sp], -R0
l1031: addLS R6, R5, R6, RRX 
l1032: addHIs R7, R1, R1, ROR R14
l1033: ldrNE R2, [sp, #-36]
l1034: addPLs R9, R1, R12, LSR #17
l1035: add R11, R6, R9
l1036: mov R0, #40
l1037: ldr R8, [sp], -R0
l1038: mov R4, #72
l1039: ldr R12, [sp, +R4]
l1040: ldr R3, [sp], #+48
l1041: ldr R12, [sp, #+8]!
l1042: mov R12, #20
l1043: ldr R3, [sp, -R12]!
l1044: adds R3, R12, R15, RRX 
l1045: adds R11, R12, #3925868544
l1046: ldr R8, [sp, #+20]!
l1047: mov R12, #48
l1048: ldr R0, [sp, -R12]
l1049: ldr R5, [sp, #-48]
l1050: add R3, R1, #262144
l1051: addHIs R2, R7, R6, LSR R3
l1052: addNEs R3, R3, R1
l1053: mov R4, #16
l1054: ldr R6, [sp, -R4]
l1055: ldr R12, [sp, #-4]
l1056: addEQs R4, R15, R8
l1057: add R11, R14, #96
l1058: adds R6, R10, R9
l1059: add R7, R7, R2
l1060: add R2, R9, R9
l1061: adds R8, R0, R7, ASR #21
l1062: add R5, R7, R0
l1063: ldr R0, [sp], #-52
l1064: addCSs R7, R11, R12, LSL R0
l1065: addEQs R12, R6, R2, ROR #9
l1066: mov R8, #32
l1067: ldrVC R5, [sp, +R8]
l1068: addLSs R14, R15, #19712
l1069: ldr R5, [sp, #+28]
l1070: addCSs R10, R11, #905216
l1071: adds R12, R9, #704
l1072: add R12, R4, #5898240
l1073: mov R0, #32
l1074: ldr R3, [sp, +R0]!
l1075: addEQ R6, R2, #25690112
l1076: ldrVS R3, [sp, #+0]
l1077: addCC R1, R3, R8, ASR R6
l1078: mov R11, #8
l1079: ldrVS R14, [sp, -R11]
l1080: addHI R8, R0, R12
l1081: ldr R11, [sp], #-4
l1082: add R12, R2, #905216
l1083: mov R14, #28
l1084: ldr R6, [sp, +R14]!
l1085: addEQs R10, R14, R11, LSL #14
l1086: add R3, R2, R5
l1087: addVC R9, R6, R9, ROR R5
l1088: addCSs R2, R12, #983040
l1089: mov R6, #40
l1090: ldr R5, [sp, -R6]!
l1091: addVCs R1, R6, R12
l1092: addNEs R3, R9, R0, LSR #12
l1093: mov R0, #24
l1094: ldr R5, [sp, +R0]!
l1095: ldr R4, [sp], #-32
l1096: mov R5, #44
l1097: ldr R8, [sp, +R5]!
l1098: ldr R2, [sp, #-56]
l1099: ldr R9, [sp, #+16]!
l1100: addVCs R5, R2, R6, LSL R7
l1101: add R1, R4, R2
l1102: mov R1, #48
l1103: ldr R12, [sp], -R1
l1104: addMIs R9, R6, #1073741845
l1105: mov R12, #28
l1106: ldr R3, [sp, +R12]
l1107: mov R11, #36
l1108: ldr R14, [sp, +R11]!
l1109: add R1, R5, R10, ASR #19
l1110: ldr R0, [sp, #-36]
l1111: mov R4, #52
l1112: ldr R2, [sp, -R4]!
l1113: addGEs R2, R11, #2112
l1114: addNE R8, R11, R15
l1115: adds R12, R6, R0, ROR R11
l1116: add R10, R3, #113664
l1117: add R12, R4, #1073741838
l1118: adds R10, R5, R15, LSR #20
l1119: ldr R8, [sp], #+40
l1120: ldr R0, [sp, #+0]!
l1121: addVS R0, R10, R15, ROR #15
l1122: mov R5, #44
l1123: ldr R7, [sp, -R5]!
l1124: ldr R14, [sp, #+40]!
l1125: addCC R2, R4, R8, ROR R2
l1126: addGE R11, R11, #1006632960
l1127: mov R2, #12
l1128: ldr R7, [sp, -R2]!
l1129: mov R2, #20
l1130: ldr R11, [sp, -R2]!
l1131: mov R8, #44
l1132: ldr R2, [sp, +R8]!
l1133: mov R9, #44
l1134: ldr R11, [sp, -R9]!
l1135: addCCs R6, R12, R4
l1136: addLSs R4, R1, #114688
l1137: addLS R0, R12, R4, LSL #10
l1138: ldr R7, [sp], #+32
l1139: mov R1, #44
l1140: ldrVC R3, [sp, -R1]
l1141: addGT R14, R9, R9
l1142: mov R6, #12
l1143: ldr R9, [sp, +R6]
l1144: addEQ R9, R4, #1952
l1145: adds R6, R8, #880
l1146: addVC R11, R15, R5, RRX 
l1147: addLE R5, R12, R1
l1148: addLSs R1, R10, R4, LSL R2
l1149: addGT R7, R6, R5
l1150: addVSs R9, R14, R4, ROR #28
l1151: add R14, R5, #268435462
l1152: ldr R7, [sp], #-12
l1153: mov R7, #16
l1154: ldr R8, [sp], +R7
l1155: ldr R9, [sp], #-44
l1156: ldr R10, [sp, #+64]
l1157: mov R9, #40
l1158: ldr R2, [sp], +R9
l1159: ldr R11, [sp, #-40]!
l1160: mov R9, #16
l1161: ldr R2, [sp, +R9]!
l1162: adds R12, R4, R10, LSL #24
l1163: addLT R4, R9, R1, ROR R2
l1164: addPLs R7, R4, R12, LSL R11
l1165: add R10, R0, R7, LSR #28
l1166: adds R2, R7, #794624
l1167: addEQ R11, R12, R4
l1168: mov R7, #52
l1169: ldr R5, [sp, +R7]!
l1170: mov R5, #72
l1171: ldr R1, [sp], -R5
l1172: ldrLT R11, [sp, #+44]
l1173: ldr R6, [sp, #+32]!
l1174: addNE R8, R3, R14, LSR R2
l1175: add R10, R10, #3588096
l1176: ldr R0, [sp, #+20]
l1177: add R1, R3, #10485760
l1178: addLS R0, R3, #2147483705
l1179: mov R9, #28
l1180: ldr R3, [sp], +R9
l1181: addCS R2, R10, R7, LSL R4
l1182: ldr R1, [sp, #-40]!
l1183: mov R14, #0
l1184: ldr R14, [sp, +R14]!
l1185: mov R6, #8
l1186: ldrLS R8, [sp, -R6]
l1187: ldr R11, [sp], #+32
l1188: mov R7, #40
l1189: ldr R5, [sp], -R7
l1190: adds R9, R6, R1, ROR R8
l1191: ldr R4, [sp], #+0
l1192: ldr R7, [sp], #+56
l1193: addGEs R4, R5, R8, LSL #19
l1194: ldrMI R8, [sp, #-44]
l1195: ldr R1, [sp, #-24]!
l1196: ldr R2, [sp, #+16]!
l1197: add R12, R5, R4
l1198: ldr R11, [sp], #-16
l1199: ldr R14, [sp, #-16]!
l1200: addCS R9, R5, R2, ASR R1
l1201: ldr R3, [sp], #-16
l1202: ldr R4, [sp], #+4
l1203: addLSs R4, R14, R1
l1204: ldrNE R14, [sp, #+4]
l1205: addVCs R0, R12, R15, RRX 
l1206: adds R12, R14, R11
l1207: ldr R3, [sp, #+32]!
l1208: addPL R11, R4, #830472192
l1209: addCS R5, R2, R3, LSL #18
l1210: mov R4, #4
l1211: ldr R10, [sp, -R4]!
l1212: addVSs R3, R12, R14
l1213: ldrCC R6, [sp, #-24]
l1214: mov R1, #28
l1215: ldr R10, [sp, -R1]!
l1216: addVSs R5, R5, #2097152
l1217: ldrCC R12, [sp, #-12]
l1218: ldr R1, [sp, #+44]!
l1219: ldr R14, [sp, #+12]
l1220: adds R2, R9, R14, RRX 
l1221: ldr R10, [sp], #-40
l1222: mov R5, #44
l1223: ldr R9, [sp], +R5
l1224: mov R12, #24
l1225: ldr R11, [sp, -R12]!
l1226: add R3, R5, R1, ASR #11
l1227: addVCs R0, R2, R3
l1228: adds R12, R8, R0, RRX 
l1229: mov R14, #16
l1230: ldr R12, [sp, +R14]!
l1231: addLT R10, R4, #11599872
l1232: addNEs R4, R14, #120
l1233: ldr R4, [sp, #-36]!
l1234: ldr R11, [sp], #+28
end: b end

