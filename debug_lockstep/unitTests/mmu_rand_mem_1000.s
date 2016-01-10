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
l0: .word 0b11010111101000001101110101111011
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
str r1, [r1]
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
reg_0_sys_val: .word 69651671
reg_1_sys: ldr R1, reg_1_sys_val
b reg_2_sys
reg_1_sys_val: .word 871261872
reg_2_sys: ldr R2, reg_2_sys_val
b reg_3_sys
reg_2_sys_val: .word 3761097240
reg_3_sys: ldr R3, reg_3_sys_val
b reg_4_sys
reg_3_sys_val: .word 494429233
reg_4_sys: ldr R4, reg_4_sys_val
b reg_5_sys
reg_4_sys_val: .word 4044741005
reg_5_sys: ldr R5, reg_5_sys_val
b reg_6_sys
reg_5_sys_val: .word 694094078
reg_6_sys: ldr R6, reg_6_sys_val
b reg_7_sys
reg_6_sys_val: .word 1224482752
reg_7_sys: ldr R7, reg_7_sys_val
b reg_8_sys
reg_7_sys_val: .word 1040266820
reg_8_sys: ldr R8, reg_8_sys_val
b reg_9_sys
reg_8_sys_val: .word 2769656492
reg_9_sys: ldr R9, reg_9_sys_val
b reg_10_sys
reg_9_sys_val: .word 4115652825
reg_10_sys: ldr R10, reg_10_sys_val
b reg_11_sys
reg_10_sys_val: .word 1819555536
reg_11_sys: ldr R11, reg_11_sys_val
b reg_12_sys
reg_11_sys_val: .word 387903603
reg_12_sys: ldr R12, reg_12_sys_val
b reg_13_sys
reg_12_sys_val: .word 2047566983
reg_13_sys: ldr R13, reg_13_sys_val
b reg_14_sys
reg_13_sys_val: .word 0x0ffff0
reg_14_sys: ldr R14, reg_14_sys_val
b reg_14_sys_end
reg_14_sys_val: .word 3075593336
reg_14_sys_end: nop
# Switching to mode fiq
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0xd1
MSR cpsr, r0
reg_8_fiq: ldr R8, reg_8_fiq_val
b reg_9_fiq
reg_8_fiq_val: .word 3109876695
reg_9_fiq: ldr R9, reg_9_fiq_val
b reg_10_fiq
reg_9_fiq_val: .word 1153381543
reg_10_fiq: ldr R10, reg_10_fiq_val
b reg_11_fiq
reg_10_fiq_val: .word 782292490
reg_11_fiq: ldr R11, reg_11_fiq_val
b reg_12_fiq
reg_11_fiq_val: .word 983483632
reg_12_fiq: ldr R12, reg_12_fiq_val
b reg_13_fiq
reg_12_fiq_val: .word 4053668465
reg_13_fiq: ldr R13, reg_13_fiq_val
b reg_14_fiq
reg_13_fiq_val: .word 0x1ffff0
reg_14_fiq: ldr R14, reg_14_fiq_val
b reg_14_fiq_end
reg_14_fiq_val: .word 3864332750
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
reg_14_irq_val: .word 812896585
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
reg_14_undef_val: .word 433761225
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
reg_14_abort_val: .word 3140687432
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
reg_14_svc_val: .word 1136410854
reg_14_svc_end: nop

# INITIALIZING STACK
# Switching to mode sys
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0x1f
MSR cpsr, r0
ldr R1, stack_0_val
b stack_0
stack_0_val: .word 3563625624
stack_0: str R1, [sp, #0]
ldr R1, stack_1_val
b stack_1
stack_1_val: .word 1767732123
stack_1: str R1, [sp, #-4]
ldr R1, stack_2_val
b stack_2
stack_2_val: .word 3025094132
stack_2: str R1, [sp, #-8]
ldr R1, stack_3_val
b stack_3
stack_3_val: .word 3131154777
stack_3: str R1, [sp, #-12]
ldr R1, stack_4_val
b stack_4
stack_4_val: .word 2544863202
stack_4: str R1, [sp, #-16]
ldr R1, stack_5_val
b stack_5
stack_5_val: .word 1621630867
stack_5: str R1, [sp, #-20]
ldr R1, stack_6_val
b stack_6
stack_6_val: .word 3032951823
stack_6: str R1, [sp, #-24]
ldr R1, stack_7_val
b stack_7
stack_7_val: .word 3906244780
stack_7: str R1, [sp, #-28]
ldr R1, stack_8_val
b stack_8
stack_8_val: .word 4277919014
stack_8: str R1, [sp, #-32]
ldr R1, stack_9_val
b stack_9
stack_9_val: .word 621873104
stack_9: str R1, [sp, #-36]
ldr R1, stack_10_val
b stack_10
stack_10_val: .word 1457330019
stack_10: str R1, [sp, #-40]
ldr R1, stack_11_val
b stack_11
stack_11_val: .word 1551594445
stack_11: str R1, [sp, #-44]
ldr R1, stack_12_val
b stack_12
stack_12_val: .word 2142455417
stack_12: str R1, [sp, #-48]
ldr R1, stack_13_val
b stack_13
stack_13_val: .word 979581016
stack_13: str R1, [sp, #-52]
ldr R1, stack_14_val
b stack_14
stack_14_val: .word 1121547288
stack_14: str R1, [sp, #-56]
ldr R1, stack_15_val
b stack_15
stack_15_val: .word 3864554151
stack_15: str R1, [sp, #-60]
ldr R1, stack_16_val
b stack_16
stack_16_val: .word 3585119361
stack_16: str R1, [sp, #-64]
ldr R1, stack_17_val
b stack_17
stack_17_val: .word 1422502576
stack_17: str R1, [sp, #-68]
ldr R1, stack_18_val
b stack_18
stack_18_val: .word 1292333160
stack_18: str R1, [sp, #-72]
ldr R1, stack_19_val
b stack_19
stack_19_val: .word 2357845463
stack_19: str R1, [sp, #-76]
ldr R1, stack_20_val
b stack_20
stack_20_val: .word 1425455287
stack_20: str R1, [sp, #-80]


# ENABLING MMU AND CACHES
#S = 1 
# R = 1
# MMU disabled
# Caches disabled
ldr     r1, =0x00000300;
mcr     p15, 0, r1, cr1, cr0, 0;    # disable MMU

# ***pagetable.asm***
LDR R1, =0x00300000;
LDR R2, =0x00000c0e;
STR R2, [R1];

# Set the pagetable base
ldr     r1, =0x00300000;            # pagetable base
mcr     p15, 0, r1, cr2, cr0, 0;    # store the pagetable in the coprocessor

# Set the domain access permissions
mov r1, #0x3;
mcr p15, 0, r1, cr3, cr0, 0;

# Turn on the MMU
mrc     p15, 0, r7, cr1, cr0, 0;    # Read in the control register
orr     r1, r1, #1;
mcr     p15, 0, r1, cr1, cr0, 0;    # Turn on the MMU for translation

# Enable the I$
mrc     p15, 0, r1, cr1, cr0, 0;   # Read in the control register
orr     r1, r1, #4096;             # Set the I Bit (bit 12)
mcr     p15, 0, r1, cr1, cr0, 0;

# Enable D$
mrc     15, 0, r1, cr1, cr0, 0;    # Read in the control register
orr     r1, r1, #4;                # Set the C Bit (bit 2)
mcr     15, 0, r1, cr1, cr0, 0;# Switching to mode usr
MRS r0, cpsr
BIC r0, r0, #0xDF
ORR r0, r0, #0x10
MSR cpsr, r0

# MAIN PROGRAM

l1: ldmDB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l2: mov R4, #20
l3: strCSh R2, [sp, -R4]
l4: mov R2, #14
l5: ldrh R10, [sp, -R2]
l6: mov R10, #24
l7: str R3, [sp], -R10
l8: stmIA R13!, {R0, R5, R7, R9, R10, R11, R12, R14, R15}
l9: str R15, [sp, #+0]!
l10: ldrLSh R0, [sp, #+24]
l11: mov R5, #40
l12: ldrsh R7, [sp, -R5]
l13: ldrh R3, [sp, #+32]
l14: mov R12, #17
l15: ldrsb R9, [sp, -R12]
l16: ldrsb R9, [sp, #+34]
l17: ldr R4, [sp, #+8]!
l18: stmDA R13, {R2, R3, R5, R11, R14}
l19: ldmDA R13!, {R1}
l20: mov R3, #8
l21: ldrsh R3, [sp, -R3]
l22: mov R6, #20
l23: ldrh R6, [sp, -R6]
l24: ldrEQh R0, [sp, #-42]
l25: ldmIB R13!, {R3, R4, R6, R9, R10}
l26: mov R0, #4
l27: ldr R1, [sp], +R0
l28: ldrsh R8, [sp, #+2]
l29: mov R8, #40
l30: ldrsh R14, [sp, -R8]
l31: ldrLEh R10, [sp, #-12]
l32: ldrCSB R7, [sp, #-42]
l33: mov R8, #19
l34: ldrMIB R12, [sp, -R8]
l35: mov R4, #35
l36: ldrB R2, [sp, -R4]
l37: ldmDA R13!, {R0, R1, R2, R4, R6, R10, R11, R14}
l38: stmIB R13!, {R3, R4, R7, R8, R11}
l39: strh R3, [sp, #+12]
l40: ldrsh R9, [sp, #-40]
l41: mov R12, #22
l42: ldrsh R12, [sp, -R12]
l43: ldrCCh R1, [sp, #-10]
l44: mov R9, #52
l45: str R0, [sp, -R9]!
l46: ldrGEB R0, [sp, #+64]
l47: ldrB R5, [sp, #+25]
l48: str R9, [sp, #+40]!
l49: ldrsh R12, [sp, #-22]
l50: stmIA R13!, {R14}
l51: ldrHIsh R2, [sp, #-10]
l52: str R10, [sp], #-4
l53: mov R6, #16
l54: str R6, [sp, +R6]!
l55: mov R7, #4
l56: ldrMIh R4, [sp, +R7]
l57: strVS R2, [sp, #-16]
l58: mov R9, #13
l59: ldrsb R14, [sp, -R9]
l60: ldrHIB R9, [sp, #-43]
l61: nop
l62: ldmEQDB R13, {R1, R2, R4, R5, R7, R10, R11, R14}
l63: ldmVCDB R13, {R1, R6}
l64: nop
l65: ldrsh R8, [sp, #-56]
l66: stmIA R13!, {R3, R9}
l67: mov R0, #0
l68: ldrB R8, [sp, +R0]
l69: strVCh R10, [sp, #-50]
l70: mov R7, #66
l71: strh R12, [sp, -R7]
l72: ldmIA R13!, {R8}
l73: mov R4, #36
l74: strVS R1, [sp, -R4]
l75: ldrsb R6, [sp, #-10]
l76: mov R6, #28
l77: strGEh R10, [sp, -R6]
l78: ldrsh R8, [sp, #-20]
l79: nop
l80: mov R5, #34
l81: ldrh R8, [sp, -R5]
l82: ldrCCh R0, [sp, #+2]
l83: ldmDB R13!, {R10, R14}
l84: mov R8, #2
l85: ldrNEsh R2, [sp, +R8]
l86: ldrsb R2, [sp, #-24]
l87: mov R11, #6
l88: ldrsh R2, [sp, +R11]
l89: mov R8, #36
l90: ldr R12, [sp, -R8]!
l91: ldrPLsb R12, [sp, #+2]
l92: stmIB R13!, {R13, R15}
l93: mov R6, #18
l94: strEQh R12, [sp, +R6]
l95: mov R4, #24
l96: ldrh R9, [sp, +R4]
l97: mov R12, #20
l98: strVS R3, [sp, -R12]
l99: ldrPLsh R9, [sp, #-20]
l100: mov R3, #26
l101: ldrVCh R9, [sp, +R3]
l102: ldrLSB R11, [sp, #+7]
l103: ldmIA R13!, {R0, R1, R4, R7, R8, R9, R10, R12}
l104: ldmIB R13, {R6}
l105: str R1, [sp], #+4
l106: ldmDA R13!, {R5}
l107: mov R10, #28
l108: ldrVCsh R2, [sp, -R10]
l109: ldmDB R13, {R0, R2, R3, R4, R5, R8, R9, R10, R14}
l110: ldmIB R13!, {R4}
l111: ldrHIh R10, [sp, #-28]
l112: mov R9, #68
l113: strHIh R0, [sp, -R9]
l114: ldmDA R13!, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l115: ldmPLIA R13, {R2, R3, R4, R7, R8, R9, R10, R11, R12, R14}
l116: ldrsb R8, [sp, #+16]
l117: stmDA R13!, {R1, R15}
l118: stmIB R13!, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R14}
l119: mov R12, #24
l120: strh R9, [sp, -R12]
l121: mov R4, #62
l122: strLEh R4, [sp, -R4]
l123: ldrVSB R0, [sp, #-2]
l124: ldrLSsh R11, [sp, #-34]
l125: mov R9, #44
l126: ldrGTsb R9, [sp, -R9]
l127: ldr R14, [sp], #-8
l128: mov R9, #30
l129: ldrLTh R11, [sp, -R9]
l130: ldrsb R9, [sp, #-28]
l131: stmDA R13!, {R13, R14}
l132: ldrCSB R6, [sp, #-48]
l133: ldr R10, [sp, #-32]!
l134: ldr R12, [sp], #+40
l135: ldrB R14, [sp, #+9]
l136: mov R12, #20
l137: strLE R12, [sp, -R12]
l138: stmLSDB R13, {R1, R7, R14}
l139: mov R14, #18
l140: ldrh R6, [sp, +R14]
l141: mov R9, #10
l142: ldrsb R11, [sp, +R9]
l143: mov R7, #40
l144: ldr R4, [sp], -R7
l145: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R7, R9, R10, R12, R14}
l146: stmDB R13, {R6, R10, R13, R14}
l147: stmDA R13!, {R0, R7, R11, R15}
l148: ldr R9, [sp], #-4
l149: mov R4, #35
l150: ldrsb R6, [sp, +R4]
l151: ldmDA R13!, {R0, R2, R6, R10}
l152: mov R10, #41
l153: ldrB R3, [sp, +R10]
l154: ldmDB R13!, {R11}
l155: mov R12, #4
l156: ldrLEB R0, [sp, -R12]
l157: mov R1, #6
l158: ldrPLh R1, [sp, -R1]
l159: mov R6, #52
l160: ldr R5, [sp], +R6
l161: ldrCSsh R5, [sp, #-48]
l162: nop
l163: ldrHI R6, [sp, #-8]
l164: nop
l165: str R5, [sp], #-16
l166: ldrGTsb R3, [sp, #-26]
l167: stmDB R13!, {R13, R14}
l168: str R10, [sp, #-48]!
l169: ldrCCB R1, [sp, #+71]
l170: ldrGTsh R5, [sp, #+32]
l171: ldmGEIB R13, {R0, R3, R4, R5, R11}
l172: str R7, [sp], #+72
l173: mov R1, #28
l174: ldrMIB R0, [sp, -R1]
l175: ldrEQ R9, [sp, #-28]
l176: stmDA R13, {R3, R11}
l177: mov R3, #8
l178: ldrLTh R1, [sp, -R3]
l179: ldrVCh R4, [sp, #-68]
l180: str R0, [sp, #-56]!
l181: mov R3, #36
l182: ldr R11, [sp], +R3
l183: mov R10, #24
l184: str R15, [sp, -R10]
l185: ldmDA R13!, {R0, R2, R6, R7, R9, R10}
l186: stmCSDA R13, {R5, R9, R11}
l187: stmMIIB R13, {R7, R13}
l188: ldmDA R13, {R1, R4, R14}
l189: ldr R8, [sp, #+8]!
l190: stmNEIA R13, {R1, R3, R4, R5, R7, R8, R13, R14}
l191: ldrEQ R5, [sp, #-32]
l192: mov R8, #36
l193: ldr R1, [sp], +R8
l194: strPL R10, [sp, #-8]
l195: mov R12, #41
l196: ldrEQB R5, [sp, -R12]
l197: mov R11, #2
l198: ldrLSh R4, [sp, -R11]
l199: ldrGTh R10, [sp, #-18]
l200: strLEh R8, [sp, #-54]
l201: ldr R7, [sp, #-20]!
l202: ldrB R10, [sp, #+7]
l203: mov R4, #16
l204: str R11, [sp, +R4]!
l205: mov R12, #37
l206: ldrsb R12, [sp, -R12]
l207: strh R0, [sp, #-12]
l208: mov R0, #62
l209: strVSh R1, [sp, -R0]
l210: mov R7, #4
l211: str R3, [sp], -R7
l212: mov R9, #50
l213: ldrsb R2, [sp, -R9]
l214: mov R9, #34
l215: ldrLEh R6, [sp, -R9]
l216: ldrB R9, [sp, #-60]
l217: strCCh R1, [sp, #-16]
l218: stmDB R13!, {R4, R9, R11}
l219: mov R11, #6
l220: ldrh R8, [sp, +R11]
l221: ldmDA R13!, {R0, R3, R8, R9, R10, R14}
l222: ldmPLIA R13, {R3, R8, R9, R12, R14}
l223: ldrLSB R5, [sp, #+44]
l224: strVCh R1, [sp, #+4]
l225: ldrVSsh R7, [sp, #-6]
l226: mov R9, #2
l227: ldrsh R6, [sp, +R9]
l228: ldr R12, [sp], #-20
l229: stmIB R13!, {R2, R6, R7, R10, R11, R12, R14}
l230: ldrsb R14, [sp, #-35]
l231: str R14, [sp, #+28]!
l232: mov R4, #40
l233: str R10, [sp, -R4]!
l234: mov R1, #29
l235: ldrB R4, [sp, +R1]
l236: mov R0, #20
l237: ldrNEh R2, [sp, +R0]
l238: mov R6, #32
l239: strLE R8, [sp, +R6]
l240: str R8, [sp, #-16]!
l241: ldrCC R9, [sp, #+36]
l242: str R8, [sp], #+40
l243: ldrLTsh R1, [sp, #-4]
l244: ldrsb R3, [sp, #+26]
l245: mov R14, #36
l246: str R6, [sp], -R14
l247: mov R10, #4
l248: ldr R1, [sp, +R10]!
l249: mov R2, #16
l250: ldr R0, [sp], +R2
l251: mov R8, #0
l252: ldrLSh R5, [sp, +R8]
l253: mov R6, #2
l254: ldrsb R6, [sp, +R6]
l255: stmDB R13, {R8}
l256: mov R10, #28
l257: ldr R7, [sp], +R10
l258: ldrEQB R3, [sp, #-41]
l259: ldrGEsh R11, [sp, #-20]
l260: ldrh R3, [sp, #+0]
l261: ldrLTh R12, [sp, #-40]
l262: mov R5, #12
l263: str R7, [sp, -R5]!
l264: ldrB R11, [sp, #+23]
l265: ldmDB R13, {R0, R7}
l266: ldrNEB R7, [sp, #-27]
l267: mov R9, #2
l268: strLSh R0, [sp, +R9]
l269: ldrsh R7, [sp, #+10]
l270: str R5, [sp], #+12
l271: stmDA R13!, {R4, R6, R11, R14}
l272: ldmEQIA R13, {R11, R12}
l273: mov R8, #30
l274: strNEh R10, [sp, -R8]
l275: ldr R4, [sp], #+12
l276: mov R8, #20
l277: str R2, [sp], -R8
l278: ldrCCB R0, [sp, #+12]
l279: ldrPLsh R3, [sp, #-4]
l280: ldmDB R13!, {R4}
l281: mov R9, #0
l282: ldr R14, [sp, +R9]
l283: str R14, [sp, #-16]
l284: strh R3, [sp, #+22]
l285: ldrGEsb R4, [sp, #+43]
l286: ldr R0, [sp], #-16
l287: ldr R8, [sp, #+36]!
l288: strGTh R10, [sp, #+0]
l289: ldrGTB R12, [sp, #-34]
l290: mov R0, #12
l291: ldrLEsh R2, [sp, -R0]
l292: str R11, [sp], #-32
l293: mov R6, #28
l294: ldrh R9, [sp, +R6]
l295: stmDA R13!, {R1}
l296: mov R14, #18
l297: strh R14, [sp, +R14]
l298: mov R4, #24
l299: ldrsh R12, [sp, +R4]
l300: mov R11, #35
l301: ldrGTB R1, [sp, +R11]
l302: ldr R7, [sp, #+28]!
l303: ldmDB R13!, {R1, R2, R4, R7, R8, R10}
l304: strMIh R10, [sp, #+34]
l305: mov R0, #20
l306: strVCh R11, [sp, -R0]
l307: mov R10, #52
l308: ldr R10, [sp, +R10]
l309: mov R9, #38
l310: strh R8, [sp, +R9]
l311: mov R5, #4
l312: strLS R15, [sp, -R5]
l313: strHIh R9, [sp, #+0]
l314: ldrLEsh R3, [sp, #-4]
l315: nop
l316: mov R10, #28
l317: strLEh R5, [sp, +R10]
l318: nop
l319: strNEh R5, [sp, #-4]
l320: ldmIB R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l321: ldrVSsb R9, [sp, #-66]
l322: ldrsh R4, [sp, #-26]
l323: mov R1, #28
l324: ldrGTB R8, [sp, -R1]
l325: ldrLEsh R0, [sp, #-2]
l326: nop
l327: ldrsb R2, [sp, #-4]
l328: mov R3, #58
l329: strh R2, [sp, -R3]
l330: mov R12, #64
l331: str R12, [sp, -R12]
l332: ldr R11, [sp, #-36]!
l333: mov R8, #28
l334: ldrsb R12, [sp, -R8]
l335: strMI R2, [sp, #-36]
l336: mov R9, #24
l337: ldrLSsb R6, [sp, +R9]
l338: mov R7, #28
l339: ldrsh R5, [sp, -R7]
l340: mov R12, #33
l341: ldrEQsb R11, [sp, -R12]
l342: mov R9, #8
l343: ldr R9, [sp], -R9
l344: mov R2, #20
l345: ldr R2, [sp], +R2
l346: mov R4, #6
l347: ldrsh R12, [sp, +R4]
l348: str R0, [sp, #+12]!
l349: mov R8, #28
l350: ldrsh R11, [sp, -R8]
l351: mov R2, #4
l352: ldrVCsh R2, [sp, +R2]
l353: ldrGTh R5, [sp, #-18]
l354: str R4, [sp], #-40
l355: stmIA R13!, {R1, R6, R7}
l356: mov R10, #12
l357: strCCh R10, [sp, +R10]
l358: ldrCSh R10, [sp, #+40]
l359: mov R3, #27
l360: ldrLEB R5, [sp, +R3]
l361: strh R0, [sp, #-10]
l362: mov R5, #30
l363: ldrsh R8, [sp, +R5]
l364: ldrsb R6, [sp, #+26]
l365: strMIh R14, [sp, #-30]
l366: str R15, [sp, #+36]!
l367: mov R2, #56
l368: ldrsh R5, [sp, -R2]
l369: strh R10, [sp, #-24]
l370: ldrGTsb R8, [sp, #-59]
l371: nop
l372: ldrLSsh R10, [sp, #-14]
l373: nop
l374: stmCSDB R13, {R0, R1, R2, R4, R5, R6, R8, R9, R10, R11, R12, R13, R14, R15}
l375: mov R9, #46
l376: ldrsb R3, [sp, -R9]
l377: str R5, [sp], #-12
l378: strh R2, [sp, #-22]
l379: mov R7, #12
l380: ldrGTsb R14, [sp, -R7]
l381: ldmDB R13!, {R0, R2, R3, R5, R6, R7, R8, R9, R10, R11}
l382: ldrsb R3, [sp, #-16]
l383: ldrsh R5, [sp, #+24]
l384: str R5, [sp, #+28]!
l385: ldr R14, [sp], #-40
l386: stmIB R13!, {R13, R15}
l387: strh R12, [sp, #+58]
l388: mov R5, #16
l389: strVSh R0, [sp, +R5]
l390: ldrCCsh R14, [sp, #-2]
l391: stmIB R13!, {R1}
l392: mov R12, #34
l393: ldrPLsh R6, [sp, +R12]
l394: ldmDB R13, {R0, R10}
l395: str R6, [sp, #+36]!
l396: nop
l397: stmDA R13!, {R13, R14}
l398: stmNEDA R13, {R2, R4, R7, R10, R12, R13}
l399: mov R0, #4
l400: str R12, [sp], -R0
l401: strh R1, [sp, #+4]
l402: stmIB R13!, {R5}
l403: ldmEQIA R13, {R5, R10, R11}
l404: ldrsh R11, [sp, #+6]
l405: mov R5, #16
l406: ldrEQsh R5, [sp, +R5]
l407: mov R3, #4
l408: str R2, [sp, +R3]!
l409: str R0, [sp], #+12
l410: str R6, [sp, #-20]!
l411: ldrLTsh R2, [sp, #+12]
l412: ldmDA R13, {R2, R3, R5, R6, R8, R11, R12, R14}
l413: ldrPLh R9, [sp, #+32]
l414: ldrsb R4, [sp, #+14]
l415: mov R11, #18
l416: strEQh R11, [sp, +R11]
l417: mov R14, #34
l418: ldrsh R11, [sp, -R14]
l419: mov R4, #26
l420: strCCh R11, [sp, +R4]
l421: strh R14, [sp, #+10]
l422: ldrNEsh R1, [sp, #+30]
l423: strVS R14, [sp, #+0]
l424: stmDB R13!, {R10}
l425: stmIB R13!, {R0, R1, R2, R4, R8, R9, R10}
l426: mov R12, #42
l427: ldrVCh R10, [sp, -R12]
l428: ldrsb R0, [sp, #-5]
l429: mov R1, #40
l430: ldrLTh R11, [sp, -R1]
l431: ldrVSsb R3, [sp, #+7]
l432: strEQh R4, [sp, #-12]
l433: str R9, [sp], #-40
l434: nop
l435: mov R7, #12
l436: str R14, [sp, -R7]!
l437: ldrsh R6, [sp, #-10]
l438: ldr R0, [sp, #+48]
l439: ldmDA R13!, {R0}
l440: mov R2, #64
l441: ldr R2, [sp, +R2]!
l442: mov R3, #69
l443: ldrGTB R12, [sp, -R3]
l444: ldrVCsb R4, [sp, #-59]
l445: strh R10, [sp, #-66]
l446: strLSh R12, [sp, #-36]
l447: ldrCSsh R5, [sp, #-18]
l448: ldrHIh R11, [sp, #-18]
l449: mov R11, #5
l450: ldrB R9, [sp, -R11]
l451: mov R7, #58
l452: ldrsh R4, [sp, -R7]
l453: strVC R15, [sp, #-36]
l454: ldrHIsh R7, [sp, #-52]
l455: ldrNEB R2, [sp, #-49]
l456: nop
l457: mov R0, #20
l458: str R6, [sp], -R0
l459: ldrh R12, [sp, #+12]
l460: stmGEDA R13, {R0, R2, R4, R5, R8, R13, R14}
l461: mov R11, #8
l462: ldrsh R14, [sp, +R11]
l463: ldr R6, [sp, #+0]
l464: ldrNEsb R2, [sp, #-43]
l465: ldrLEh R0, [sp, #-24]
l466: mov R3, #16
l467: strEQ R8, [sp, -R3]
l468: ldrh R2, [sp, #-6]
l469: mov R14, #43
l470: ldrsb R8, [sp, -R14]
l471: ldmGEDA R13, {R9, R14}
l472: strGE R14, [sp, #-8]
l473: ldmIB R13!, {R1}
l474: mov R8, #17
l475: ldrNEsb R9, [sp, -R8]
l476: stmIA R13!, {R13}
l477: ldrh R10, [sp, #+0]
l478: mov R1, #58
l479: ldrVCsh R8, [sp, -R1]
l480: ldrGEsh R8, [sp, #-4]
l481: mov R9, #2
l482: ldrB R2, [sp, +R9]
l483: mov R5, #56
l484: ldrVSh R0, [sp, -R5]
l485: ldrCSsh R9, [sp, #-26]
l486: mov R10, #30
l487: ldrPLsh R7, [sp, -R10]
l488: strVCh R9, [sp, #-46]
l489: stmLEIA R13, {R9, R13}
l490: mov R5, #8
l491: str R0, [sp, -R5]!
l492: ldrh R12, [sp, #-38]
l493: ldr R5, [sp, #-4]!
l494: ldmGEIA R13, {R4}
l495: ldrLEB R5, [sp, #+24]
l496: mov R0, #16
l497: strLSh R8, [sp, +R0]
l498: stmDA R13!, {R3, R6, R7, R8, R9, R10, R14, R15}
l499: mov R1, #12
l500: str R9, [sp, +R1]!
l501: ldrGTsh R9, [sp, #+16]
l502: ldrh R0, [sp, #+40]
l503: mov R4, #22
l504: ldrVSh R6, [sp, +R4]
l505: str R14, [sp, #-28]
l506: strVSh R9, [sp, #+0]
l507: strHIh R9, [sp, #-12]
l508: mov R3, #22
l509: ldrsb R9, [sp, +R3]
l510: mov R6, #32
l511: ldrLSsb R5, [sp, +R6]
l512: ldrsh R2, [sp, #+28]
l513: mov R0, #32
l514: strVCh R9, [sp, +R0]
l515: mov R3, #2
l516: ldrLTsh R6, [sp, +R3]
l517: ldrNEsb R11, [sp, #+16]
l518: stmIA R13!, {R0, R1, R4, R6, R9, R11}
l519: mov R12, #44
l520: str R2, [sp], -R12
l521: mov R0, #42
l522: ldrVSsb R11, [sp, +R0]
l523: str R2, [sp, #+0]
l524: ldmIA R13!, {R0, R1, R2, R4, R5}
l525: mov R0, #35
l526: ldrB R12, [sp, +R0]
l527: strEQ R0, [sp, #-24]
l528: str R2, [sp, #-4]
l529: nop
l530: mov R14, #20
l531: str R11, [sp], -R14
l532: strMIh R14, [sp, #+62]
l533: nop
l534: strh R1, [sp, #+38]
l535: mov R0, #5
l536: ldrGTB R3, [sp, -R0]
l537: mov R9, #2
l538: strVCh R14, [sp, +R9]
l539: ldr R6, [sp], #+8
l540: ldr R6, [sp, #-16]!
l541: ldrMIB R9, [sp, #+52]
l542: stmIA R13!, {R13, R14}
l543: mov R3, #8
l544: ldr R4, [sp], -R3
l545: mov R7, #38
l546: ldrsh R3, [sp, +R7]
l547: mov R4, #40
l548: ldrCSh R14, [sp, +R4]
l549: ldrMIsb R8, [sp, #+7]
l550: ldrGTB R1, [sp, #+30]
l551: mov R6, #8
l552: ldrPLh R7, [sp, +R6]
l553: mov R12, #68
l554: ldrMIB R5, [sp, +R12]
l555: mov R12, #14
l556: ldrNEsh R3, [sp, +R12]
l557: mov R10, #29
l558: ldrHIB R5, [sp, +R10]
l559: mov R14, #4
l560: ldrPLB R5, [sp, +R14]
l561: ldrsb R9, [sp, #+42]
l562: stmIA R13!, {R1, R2, R5, R7, R10, R11, R12}
l563: mov R14, #20
l564: str R10, [sp], -R14
l565: nop
l566: nop
l567: nop
l568: ldrsh R0, [sp, #+40]
l569: mov R3, #8
l570: ldrMIh R10, [sp, +R3]
l571: ldrB R4, [sp, #+4]
l572: mov R4, #4
l573: str R1, [sp], -R4
l574: stmIB R13!, {R13}
l575: str R9, [sp, #+52]!
l576: ldrh R4, [sp, #-16]
l577: stmIB R13!, {R3, R9, R15}
l578: nop
l579: str R9, [sp, #-32]!
l580: mov R10, #36
l581: ldr R12, [sp], -R10
l582: mov R9, #42
l583: strh R3, [sp, +R9]
l584: ldrGTsb R2, [sp, #+62]
l585: ldr R9, [sp, #+64]!
l586: mov R6, #52
l587: str R5, [sp], -R6
l588: ldrNEh R1, [sp, #+32]
l589: ldmDA R13!, {R4, R12}
l590: mov R8, #52
l591: strCSh R9, [sp, +R8]
l592: mov R11, #16
l593: ldrHIB R0, [sp, +R11]
l594: mov R2, #66
l595: ldrEQh R9, [sp, +R2]
l596: ldrB R12, [sp, #+66]
l597: nop
l598: ldrCCsh R10, [sp, #-6]
l599: stmIA R13!, {R13, R14, R15}
l600: mov R14, #20
l601: strLTh R4, [sp, +R14]
l602: mov R12, #6
l603: strh R8, [sp, -R12]
l604: strVSh R1, [sp, #+44]
l605: mov R12, #41
l606: ldrLSsb R8, [sp, +R12]
l607: stmIA R13!, {R0, R1, R7, R11, R15}
l608: ldr R6, [sp, #-32]
l609: ldrGEsh R9, [sp, #+14]
l610: mov R10, #21
l611: ldrNEsb R7, [sp, -R10]
l612: ldmDB R13!, {R1, R4, R6, R9, R10}
l613: ldmIA R13!, {R1, R3, R4, R6, R9, R11}
l614: mov R4, #19
l615: ldrLTB R9, [sp, -R4]
l616: mov R1, #6
l617: ldrh R0, [sp, -R1]
l618: ldmCCDA R13, {R0, R1, R2, R4, R6, R10, R12, R14}
l619: ldrCS R5, [sp, #-44]
l620: mov R11, #34
l621: strh R6, [sp, -R11]
l622: ldrsb R1, [sp, #-14]
l623: mov R9, #38
l624: ldrHIB R11, [sp, -R9]
l625: mov R12, #26
l626: ldrB R7, [sp, -R12]
l627: mov R8, #26
l628: ldrsh R5, [sp, +R8]
l629: ldrsb R6, [sp, #+0]
l630: ldmDB R13!, {R0, R9}
l631: str R0, [sp, #-36]
l632: ldr R12, [sp], #-4
l633: ldrCCsh R0, [sp, #+28]
l634: mov R2, #23
l635: ldrGTsb R3, [sp, -R2]
l636: mov R11, #21
l637: ldrsb R7, [sp, -R11]
l638: nop
l639: ldrh R10, [sp, #+10]
l640: ldr R14, [sp], #-8
l641: ldmIA R13!, {R0, R1, R2, R3, R4, R6, R7, R8, R10, R11, R14}
l642: ldrHI R6, [sp, #-36]
l643: nop
l644: mov R7, #42
l645: ldrsb R8, [sp, -R7]
l646: nop
l647: ldmCCIB R13, {R1}
l648: ldrGTsh R10, [sp, #-68]
l649: ldrPLB R4, [sp, #+6]
l650: ldrCCsb R0, [sp, #-67]
l651: ldrPLsb R0, [sp, #-7]
l652: ldr R14, [sp, #+4]!
l653: ldrVCsh R9, [sp, #-10]
l654: ldrsh R8, [sp, #-36]
l655: strh R9, [sp, #-20]
l656: ldmDB R13, {R1, R3, R5, R7, R8, R12}
l657: mov R9, #72
l658: ldr R5, [sp], -R9
l659: mov R2, #6
l660: ldrLTh R0, [sp, +R2]
l661: ldmCCIB R13, {R0, R1, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l662: mov R5, #60
l663: ldr R3, [sp, +R5]!
l664: mov R14, #32
l665: ldrMIh R12, [sp, -R14]
l666: mov R1, #56
l667: ldrB R7, [sp, -R1]
l668: ldrEQsh R12, [sp, #+10]
l669: mov R10, #48
l670: ldrMIsh R1, [sp, -R10]
l671: mov R3, #28
l672: strh R4, [sp, -R3]
l673: ldr R12, [sp], #-24
l674: ldrh R5, [sp, #-8]
l675: mov R9, #24
l676: ldrPL R9, [sp, -R9]
l677: stmNEIB R13, {R8}
l678: ldrVCB R9, [sp, #+31]
l679: mov R14, #18
l680: ldrLSsh R4, [sp, +R14]
l681: ldrPLB R11, [sp, #-36]
l682: mov R9, #1
l683: ldrMIB R9, [sp, -R9]
l684: ldrCCsb R12, [sp, #-19]
l685: ldrNEh R12, [sp, #-30]
l686: ldr R11, [sp], #+20
l687: mov R2, #38
l688: ldrGEsb R2, [sp, -R2]
l689: ldrLSh R3, [sp, #-6]
l690: mov R8, #32
l691: strPLh R0, [sp, -R8]
l692: ldmCSIB R13, {R1, R3, R7, R12}
l693: ldmIB R13!, {R0, R10}
l694: ldrNEh R2, [sp, #-48]
l695: stmIB R13!, {R9}
l696: ldrVCB R8, [sp, #-27]
l697: mov R0, #42
l698: ldrGTh R6, [sp, -R0]
l699: mov R5, #6
l700: ldrEQsh R10, [sp, -R5]
l701: ldrMIh R2, [sp, #-20]
l702: ldrGTB R10, [sp, #-11]
l703: ldrEQB R10, [sp, #-45]
l704: ldrB R4, [sp, #-50]
l705: mov R14, #22
l706: strh R10, [sp, -R14]
l707: mov R5, #24
l708: str R14, [sp], -R5
l709: mov R11, #4
l710: str R2, [sp], +R11
l711: mov R1, #12
l712: ldrCSh R11, [sp, +R1]
l713: stmDA R13!, {R0, R6, R8, R12, R15}
l714: mov R1, #27
l715: ldrVCsb R10, [sp, +R1]
l716: str R2, [sp, #-16]
l717: stmIA R13!, {R13}
l718: ldmIA R13!, {R1, R5, R11}
l719: strCSh R9, [sp, #-18]
l720: ldmIB R13!, {R0, R1, R4, R5, R10, R14}
l721: mov R1, #16
l722: str R9, [sp, -R1]!
l723: mov R10, #28
l724: strVSh R10, [sp, -R10]
l725: mov R14, #6
l726: ldrsh R7, [sp, +R14]
l727: mov R3, #12
l728: ldrLT R1, [sp, -R3]
l729: ldrEQh R11, [sp, #-48]
l730: ldrHIh R2, [sp, #-14]
l731: stmIB R13!, {R14}
l732: str R10, [sp], #-48
l733: nop
l734: ldrVCsb R2, [sp, #+59]
l735: nop
l736: ldrh R4, [sp, #-8]
l737: nop
l738: ldrGTsh R8, [sp, #-2]
l739: mov R5, #8
l740: str R10, [sp, -R5]!
l741: ldrB R3, [sp, #+5]
l742: ldrPLsh R12, [sp, #+16]
l743: ldmIA R13!, {R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R14}
l744: mov R8, #4
l745: ldrCCsb R9, [sp, +R8]
l746: ldrsh R2, [sp, #+0]
l747: ldmIA R13!, {R10}
l748: mov R11, #0
l749: ldrVCh R2, [sp, +R11]
l750: mov R9, #30
l751: ldrPLB R5, [sp, -R9]
l752: ldr R1, [sp, #-52]!
l753: ldmLSIB R13, {R1, R2, R4, R6, R8, R9, R10, R14}
l754: strHIh R4, [sp, #+40]
l755: ldrsh R5, [sp, #+8]
l756: stmIA R13!, {R13, R14, R15}
l757: ldrVSsb R11, [sp, #+12]
l758: ldrsb R12, [sp, #+15]
l759: str R6, [sp, #-4]!
l760: mov R9, #4
l761: str R2, [sp, -R9]!
l762: mov R5, #68
l763: ldrMIh R4, [sp, +R5]
l764: mov R0, #51
l765: ldrLTB R12, [sp, +R0]
l766: ldrh R6, [sp, #+0]
l767: mov R8, #12
l768: str R2, [sp], +R8
l769: ldrLEB R6, [sp, #+29]
l770: mov R11, #56
l771: str R4, [sp, +R11]!
l772: ldr R8, [sp, #-48]!
l773: mov R1, #8
l774: str R5, [sp, +R1]!
l775: mov R6, #40
l776: ldrh R7, [sp, +R6]
l777: ldrPLB R8, [sp, #-17]
l778: mov R5, #24
l779: ldrsh R1, [sp, -R5]
l780: ldrsh R3, [sp, #+30]
l781: mov R5, #14
l782: ldrB R6, [sp, +R5]
l783: strh R14, [sp, #+4]
l784: mov R0, #8
l785: ldrEQB R5, [sp, +R0]
l786: mov R12, #8
l787: ldr R4, [sp, +R12]!
l788: stmHIDB R13, {R0, R3, R4, R7, R12, R14}
l789: stmEQIB R13, {R3, R5, R7, R8, R9, R12, R14, R15}
l790: stmDA R13!, {R7}
l791: mov R0, #36
l792: ldr R1, [sp, -R0]!
l793: ldmCSIA R13, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R11, R12, R14}
l794: mov R14, #68
l795: ldrGEB R8, [sp, +R14]
l796: ldmIA R13!, {R0, R1, R2, R3, R4, R5, R6, R7, R8, R10, R12, R14}
l797: mov R7, #2
l798: ldrVSh R12, [sp, -R7]
l799: mov R6, #32
l800: ldrGTh R8, [sp, -R6]
l801: mov R3, #17
l802: ldrLTsb R7, [sp, -R3]
l803: ldrh R9, [sp, #-44]
l804: mov R12, #24
l805: ldrh R0, [sp, +R12]
l806: mov R10, #0
l807: ldrVSsh R4, [sp, +R10]
l808: strEQh R14, [sp, #-14]
l809: mov R7, #1
l810: ldrVSB R1, [sp, +R7]
l811: mov R14, #16
l812: ldrPLsh R14, [sp, -R14]
l813: mov R11, #42
l814: ldrLSB R2, [sp, -R11]
l815: str R3, [sp, #+20]!
l816: mov R9, #46
l817: ldrEQsb R6, [sp, -R9]
l818: mov R9, #6
l819: strVCh R3, [sp, -R9]
l820: ldrGEB R4, [sp, #+4]
l821: mov R2, #66
l822: ldrsh R5, [sp, -R2]
l823: mov R10, #66
l824: ldrLSB R11, [sp, -R10]
l825: ldr R3, [sp, #-52]!
l826: mov R2, #34
l827: ldrGTB R6, [sp, +R2]
l828: ldrHIsb R11, [sp, #+18]
l829: ldrLSsh R1, [sp, #+44]
l830: ldrLSsh R10, [sp, #-12]
l831: ldrVCsh R9, [sp, #+8]
l832: mov R8, #32
l833: strGE R14, [sp, +R8]
l834: mov R12, #16
l835: strh R14, [sp, +R12]
l836: mov R2, #8
l837: str R5, [sp], -R2
l838: mov R12, #60
l839: strCCh R14, [sp, +R12]
l840: strCCh R10, [sp, #+2]
l841: ldrCSsb R4, [sp, #+37]
l842: mov R12, #66
l843: ldrEQsb R14, [sp, +R12]
l844: mov R12, #8
l845: ldr R7, [sp, +R12]!
l846: ldrB R10, [sp, #+20]
l847: str R8, [sp, #+44]
l848: ldmCCIA R13, {R0, R1, R3, R4, R5, R6, R7, R10, R12, R14}
l849: strh R14, [sp, #+38]
l850: strEQh R4, [sp, #+18]
l851: mov R12, #38
l852: ldrsh R4, [sp, +R12]
l853: mov R0, #14
l854: ldrGTB R7, [sp, -R0]
l855: str R7, [sp, #-12]!
l856: mov R1, #44
l857: ldr R1, [sp, +R1]!
l858: str R14, [sp, #+8]!
l859: nop
l860: mov R2, #4
l861: ldrLTsh R3, [sp, +R2]
l862: str R14, [sp], #-16
l863: ldrVCh R12, [sp, #-10]
l864: mov R6, #14
l865: ldrEQB R2, [sp, +R6]
l866: mov R12, #28
l867: ldrPLsb R8, [sp, +R12]
l868: nop
l869: ldrEQsb R7, [sp, #-1]
l870: mov R4, #16
l871: ldrh R4, [sp, +R4]
l872: mov R9, #8
l873: ldrVS R9, [sp, -R9]
l874: mov R1, #4
l875: str R14, [sp, -R1]!
l876: ldrh R1, [sp, #+12]
l877: str R11, [sp], #+32
l878: nop
l879: ldrGTsb R0, [sp, #-32]
l880: nop
l881: ldrVCsh R4, [sp, #-50]
l882: ldr R3, [sp], #-60
l883: mov R14, #55
l884: ldrVCsb R12, [sp, +R14]
l885: stmIB R13!, {R0, R1, R3, R4, R10, R11, R12}
l886: mov R7, #18
l887: strGTh R3, [sp, +R7]
l888: ldrPLh R3, [sp, #-20]
l889: ldmDA R13!, {R0, R1, R2, R3, R12, R14}
l890: mov R1, #8
l891: ldrsh R0, [sp, +R1]
l892: mov R10, #29
l893: ldrMIsb R11, [sp, +R10]
l894: nop
l895: ldrsb R11, [sp, #+1]
l896: mov R7, #52
l897: ldrVSsh R10, [sp, +R7]
l898: ldrLSB R0, [sp, #+36]
l899: ldrCSh R4, [sp, #-12]
l900: mov R8, #49
l901: ldrLEB R7, [sp, +R8]
l902: ldrsh R7, [sp, #-2]
l903: mov R14, #36
l904: ldrsb R11, [sp, +R14]
l905: mov R3, #56
l906: strLSh R9, [sp, +R3]
l907: mov R6, #40
l908: ldr R2, [sp], +R6
l909: ldrsb R7, [sp, #-21]
l910: mov R10, #11
l911: ldrB R11, [sp, -R10]
l912: strLEh R3, [sp, #-24]
l913: ldrh R12, [sp, #-2]
l914: mov R0, #42
l915: ldrVSsh R8, [sp, -R0]
l916: mov R14, #0
l917: ldrLEh R2, [sp, +R14]
l918: mov R8, #12
l919: strCCh R2, [sp, +R8]
l920: mov R11, #8
l921: strh R5, [sp, -R11]
l922: ldrCCB R12, [sp, #-9]
l923: mov R5, #32
l924: ldr R3, [sp, -R5]!
l925: nop
l926: ldrB R14, [sp, #+18]
l927: ldmDB R13!, {R3, R9, R12}
l928: str R2, [sp], #+24
l929: ldrVCsb R8, [sp, #+31]
l930: ldrGEB R6, [sp, #-13]
l931: str R1, [sp, #+0]
l932: mov R0, #12
l933: strEQh R9, [sp, +R0]
l934: mov R9, #6
l935: ldrsh R8, [sp, +R9]
l936: ldmDB R13!, {R0, R1}
l937: mov R12, #10
l938: ldrNEh R2, [sp, +R12]
l939: mov R6, #18
l940: ldrGTsb R7, [sp, -R6]
l941: ldrsb R6, [sp, #+41]
l942: ldrsh R0, [sp, #+34]
l943: strCS R3, [sp, #+0]
l944: mov R2, #4
l945: strGTh R2, [sp, +R2]
l946: stmDB R13!, {R4, R5, R14}
l947: ldrLSh R2, [sp, #+46]
l948: stmEQIA R13, {R0, R1, R3, R5, R7, R8, R9, R10, R11, R13, R14}
l949: mov R2, #56
l950: str R12, [sp], +R2
l951: ldr R4, [sp, #-12]
l952: ldr R10, [sp, #-12]!
l953: mov R9, #47
l954: ldrCCsb R3, [sp, -R9]
l955: stmHIDA R13, {R0, R1}
l956: mov R1, #4
l957: strCCh R3, [sp, +R1]
l958: mov R14, #36
l959: ldrHIsb R7, [sp, -R14]
l960: mov R10, #8
l961: ldrsh R12, [sp, +R10]
l962: mov R12, #44
l963: ldr R12, [sp, -R12]!
l964: nop
l965: mov R8, #28
l966: ldr R3, [sp, +R8]
l967: mov R12, #30
l968: ldrsh R4, [sp, +R12]
l969: mov R10, #57
l970: ldrsb R11, [sp, +R10]
l971: ldrsb R2, [sp, #+23]
l972: ldrCC R6, [sp, #+8]
l973: ldrsb R6, [sp, #+5]
l974: mov R10, #50
l975: ldrLEB R9, [sp, +R10]
l976: mov R3, #31
l977: ldrB R14, [sp, +R3]
l978: ldrh R7, [sp, #+62]
l979: ldmIA R13!, {R0, R4, R5, R7, R8, R9, R10, R11, R12}
l980: stmDB R13!, {R7, R10}
l981: mov R14, #32
l982: strVS R14, [sp, -R14]
l983: stmIB R13!, {R13, R15}
l984: ldmDB R13!, {R0, R2, R6, R8, R9, R11, R14}
l985: stmDB R13, {R8}
l986: str R14, [sp], #-12
l987: ldrCCsh R3, [sp, #+8]
l988: mov R0, #43
l989: ldrB R6, [sp, +R0]
l990: mov R12, #52
l991: ldrh R7, [sp, +R12]
l992: mov R5, #64
l993: ldrGT R8, [sp, +R5]
l994: ldrB R8, [sp, #+2]
l995: mov R10, #62
l996: ldrCCh R4, [sp, +R10]
l997: mov R6, #42
l998: ldrGTsb R1, [sp, +R6]
l999: nop
l1000: nop
end: b end

