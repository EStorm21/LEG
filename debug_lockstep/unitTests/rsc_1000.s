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
val1: .word 3331661360
next1:ldr R2, val2
b next2
val2: .word 2182839741
next2:ldr R3, val3
b next3
val3: .word 1249890010
next3:ldr R4, val4
b next4
val4: .word 569526081
next4:ldr R5, val5
b next5
val5: .word 795962618
next5:ldr R6, val6
b next6
val6: .word 4203331898
next6:ldr R7, val7
b next7
val7: .word 109858509
next7:ldr R8, val8
b next8
val8: .word 2697015037
next8:ldr R9, val9
b next9
val9: .word 19152221
next9:ldr R10, val10
b next10
val10: .word 3709114844
next10:ldr R11, val11
b next11
val11: .word 505022488
next11:ldr R12, val12
b next12
val12: .word 2882455865
next12:ldr R14, val14
b next14
val14: .word 2451451433

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 3564482103
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 442350334
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 195705783
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 3629209596
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 1099985638
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 3780340027
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 128768115
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 4281739488
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 628701050
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 2672406367
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 1305867271
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 755267655
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 1684379023
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 433682129
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 3747849881
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 3091806211
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 3273379184
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 70571562
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 1064518487
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 1281556536
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 443914656
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: rscCSs R2, R14, #48
l2: rscEQ R0, R12, R1, RRX 
l3: rscCS R0, R0, R7
l4: rsc R6, R9, R8
l5: rsc R0, R1, R10
l6: rscLE R14, R11, R2, RRX 
l7: rscLEs R8, R10, R6
l8: rscNEs R0, R9, R7, LSL #1
l9: rscLT R1, R4, R4, LSL #14
l10: rscCCs R8, R0, #15616
l11: rscs R8, R5, #-2147483640
l12: rscs R9, R7, R9, LSR #30
l13: rscLTs R14, R6, R4
l14: rscVC R0, R6, R7
l15: rsc R5, R10, R5
l16: rscVC R8, R10, R2
l17: rscGTs R11, R7, R12
l18: rscGEs R1, R0, #159744
l19: rscCC R6, R10, #17664
l20: rscNEs R10, R11, R10, ROR R7
l21: rscGT R12, R11, R5, ASR #16
l22: rsc R6, R3, R12, ASR R0
l23: rscs R10, R3, R14, ROR #10
l24: rsc R3, R3, R0, LSL R2
l25: rscs R0, R0, R6, RRX 
l26: rsc R3, R8, R1, ASR #16
l27: rscGEs R1, R12, R12, LSR R2
l28: rscGE R9, R6, R0
l29: rscs R4, R9, R7, LSL R3
l30: rscNEs R12, R2, R15, LSL #11
l31: rsc R12, R5, R4, LSR R10
l32: rsc R8, R5, R0
l33: rscLEs R6, R7, R4, LSL #12
l34: rscLS R12, R11, R10, LSR R4
l35: rscCS R1, R11, R14
l36: rscEQs R8, R7, R11
l37: rsc R7, R0, R3, ASR #19
l38: rsc R11, R12, #11520
l39: rscPLs R2, R14, #67
l40: rscs R14, R11, R9, LSL R11
l41: rsc R7, R2, R1, LSL #18
l42: rscCCs R5, R0, R8
l43: rscVSs R7, R2, R12, ASR R7
l44: rscs R2, R11, #1073741833
l45: rscLTs R4, R2, R3, LSL R9
l46: rscLTs R10, R2, R14, LSL R2
l47: rsc R9, R8, R7, ASR R4
l48: rscEQ R7, R4, R4, ASR #8
l49: rscCSs R5, R5, #51
l50: rsc R2, R8, R3, RRX 
l51: rscs R8, R2, #-1073741819
l52: rscVC R9, R0, R3, LSL #27
l53: rscHIs R2, R6, R11, LSR #15
l54: rscVS R6, R11, R8
l55: rscs R11, R9, R9, ROR R11
l56: rscMI R2, R7, R6, LSR #21
l57: rscLT R5, R11, R6, RRX 
l58: rscs R12, R8, #-805306357
l59: rscLSs R11, R15, #560
l60: rscCCs R11, R10, R2, ROR #8
l61: rsc R0, R12, #10240
l62: rscs R9, R10, R1
l63: rscNE R1, R7, #2310144
l64: rsc R1, R11, R8
l65: rscNEs R14, R11, R4
l66: rscLT R5, R8, R4
l67: rscHIs R12, R11, R14
l68: rsc R4, R9, R6, LSR R8
l69: rscHIs R10, R10, R8
l70: rscs R4, R3, R6
l71: rscLEs R8, R10, #2304
l72: rscVS R6, R0, R8, RRX 
l73: rscLTs R7, R0, R0, ROR R4
l74: rsc R12, R4, #140
l75: rscVSs R5, R5, #323584
l76: rscVC R3, R5, R10, ASR R11
l77: rscVCs R1, R5, R14, ASR #29
l78: rscPL R11, R5, R9, RRX 
l79: rscLS R6, R14, R0, LSR #0
l80: rscNE R7, R1, R1
l81: rscPL R0, R3, R7, ASR #30
l82: rscGTs R1, R11, R2, LSL #9
l83: rscPL R12, R3, #-1946157054
l84: rscLSs R12, R14, R8, LSR R3
l85: rsc R4, R4, #11
l86: rsc R9, R12, R5, RRX 
l87: rscLSs R6, R4, R12, LSR R0
l88: rscGT R4, R12, R5, ASR R0
l89: rscMI R11, R3, R5, ASR #4
l90: rscs R7, R6, R3, RRX 
l91: rscs R8, R6, #596
l92: rscGE R9, R1, #14352384
l93: rscNE R12, R2, R8, RRX 
l94: rscCCs R1, R4, #390070272
l95: rscs R7, R11, R0
l96: rscVC R14, R4, R6, RRX 
l97: rscs R8, R6, R11, ASR R14
l98: rscEQ R11, R1, R1, ROR R14
l99: rscNE R12, R5, R8
l100: rsc R14, R12, R15
l101: rscs R6, R15, R2
l102: rscCC R9, R2, R10, LSL R10
l103: rscMI R2, R15, #-1107296256
l104: rsc R0, R3, R2, LSL #1
l105: rscGEs R1, R9, R6
l106: rsc R3, R4, R15, RRX 
l107: rscNE R8, R1, R2
l108: rscCS R2, R8, R7
l109: rscLTs R11, R10, R3, LSL R2
l110: rscCSs R12, R0, R4, LSL R7
l111: rscNEs R14, R12, #11904
l112: rscHI R10, R10, R2, LSL #24
l113: rscMI R5, R2, R11, LSR R11
l114: rscs R4, R6, R14
l115: rscGEs R1, R9, R15, ASR #29
l116: rscLEs R10, R4, R15, RRX 
l117: rscMIs R9, R10, R6, LSL #7
l118: rscVSs R5, R5, #-838860800
l119: rsc R12, R8, R14
l120: rscPL R11, R6, R1
l121: rscHI R10, R0, R4, ASR R6
l122: rsc R10, R2, R10, LSL #20
l123: rsc R11, R10, #901120
l124: rscPL R5, R10, R3
l125: rscs R7, R10, R5
l126: rscs R11, R0, #-1677721599
l127: rscLS R4, R6, R8, LSL #24
l128: rscEQ R4, R0, R12
l129: rscVCs R12, R3, R1
l130: rscGT R9, R8, R3
l131: rscGTs R0, R12, R14, LSR R7
l132: rscs R7, R0, R7
l133: rscMI R7, R5, R9, ASR R0
l134: rsc R9, R8, R0, ASR #24
l135: rscLSs R3, R6, R5
l136: rsc R9, R5, #1073741836
l137: rscEQs R4, R1, R11, ROR R4
l138: rsc R5, R7, R1
l139: rscPL R10, R6, R7, LSR R11
l140: rscEQ R12, R2, R8, ASR #4
l141: rscCCs R8, R1, R1, LSR R5
l142: rscHI R7, R9, R14, ASR #1
l143: rscPL R7, R15, #92274688
l144: rscCS R1, R1, R0, LSL R10
l145: rscCS R14, R5, R4
l146: rscGEs R5, R12, R15, LSR #8
l147: rscGTs R2, R7, #2048
l148: rscVC R12, R9, R9, LSR #29
l149: rsc R10, R5, #1073741825
l150: rscVSs R12, R12, R11, LSR #22
l151: rsc R1, R3, #167772160
l152: rsc R11, R8, #380
l153: rscVC R0, R6, R12, LSL #13
l154: rscCS R7, R0, R2, ASR R3
l155: rscLT R10, R15, R8, ASR #8
l156: rsc R11, R2, #6528
l157: rsc R3, R4, R8, ROR R5
l158: rsc R5, R1, R10, ASR #4
l159: rscs R0, R5, R5, LSR R10
l160: rscLEs R10, R4, R11, LSL #31
l161: rsc R1, R1, R6, RRX 
l162: rscs R10, R14, R3, LSR R9
l163: rscEQ R4, R12, R6, LSL R6
l164: rscs R2, R12, #1031798784
l165: rscPL R6, R2, #385024
l166: rscGTs R10, R14, #620
l167: rscVCs R4, R0, #39680
l168: rscGTs R12, R3, R9, LSR #25
l169: rscVS R1, R11, #188416
l170: rscCC R1, R8, #3866624
l171: rscGTs R7, R0, R1
l172: rscGT R9, R1, R1
l173: rscCC R1, R6, #1032192
l174: rscs R9, R12, R0, LSL #8
l175: rscs R3, R12, R0, LSR #24
l176: rscGE R12, R1, R9, LSL R3
l177: rscCS R5, R6, R7, RRX 
l178: rscVS R6, R6, R3, LSL #26
l179: rscEQ R3, R4, R7, LSR #18
l180: rscVCs R8, R4, R3
l181: rscLE R9, R14, R10, ASR #20
l182: rscs R11, R10, #12928
l183: rscs R1, R3, R9, ROR #21
l184: rscNE R1, R15, #483328
l185: rscMIs R14, R12, #-1342177278
l186: rscPL R8, R6, #645922816
l187: rscGT R1, R5, R4, LSR #30
l188: rscNEs R2, R4, R6, ROR #11
l189: rscVC R6, R2, R0
l190: rsc R7, R4, R3, ASR R2
l191: rscNE R14, R3, R12
l192: rscVS R6, R1, R3, RRX 
l193: rscs R9, R11, #603979776
l194: rscs R7, R12, #-1073741778
l195: rsc R14, R5, R1, RRX 
l196: rsc R14, R14, R12, LSL R1
l197: rsc R8, R14, #197132288
l198: rscs R9, R1, R11, LSR #22
l199: rscPLs R14, R8, R8, RRX 
l200: rscs R8, R0, R10, LSL #28
l201: rscLSs R12, R5, R11, LSL #16
l202: rscNEs R11, R7, R12
l203: rscPL R10, R15, R9
l204: rscs R0, R7, R12, LSL R1
l205: rscLS R6, R0, R9, ASR R8
l206: rsc R7, R10, R11, LSL R0
l207: rscGTs R8, R7, R3
l208: rscPLs R14, R11, #933888
l209: rscHIs R8, R4, R6, LSL R9
l210: rscLEs R7, R9, R9, ROR R7
l211: rscCS R3, R10, #62720
l212: rscEQ R10, R6, R0, RRX 
l213: rscs R14, R3, R4
l214: rscGT R9, R6, #56320
l215: rscHIs R3, R15, #-805306366
l216: rsc R8, R10, R8, ROR #28
l217: rscs R6, R8, R6, LSL #4
l218: rscLEs R8, R2, #110100480
l219: rscMIs R14, R5, R1
l220: rsc R4, R3, R0, RRX 
l221: rsc R14, R4, #39680
l222: rscCCs R5, R9, R8, ROR #4
l223: rscs R11, R4, #46137344
l224: rsc R5, R5, #-1610612734
l225: rscCS R12, R5, R6, ASR #18
l226: rscHIs R4, R2, R6, ASR R0
l227: rscMIs R0, R7, #37888
l228: rscs R5, R3, R11, ROR R4
l229: rscs R3, R0, R14, LSR R3
l230: rscs R3, R11, R8, ROR #21
l231: rsc R9, R4, R2
l232: rsc R3, R3, R15, ASR #28
l233: rscHIs R6, R15, #146
l234: rscLTs R3, R10, R0, LSL R7
l235: rsc R0, R5, R10, LSL R3
l236: rscCSs R7, R10, R14
l237: rscs R14, R0, R6, RRX 
l238: rsc R7, R3, #151552
l239: rscEQ R0, R5, R12, ASR R5
l240: rscEQs R5, R10, R7, ASR #27
l241: rscNEs R10, R2, #25690112
l242: rscVC R10, R3, R12, LSL R9
l243: rscs R9, R2, R5, ROR #6
l244: rscCC R8, R11, R4
l245: rscGT R11, R6, #-1342177277
l246: rscs R9, R8, #-268435449
l247: rscPLs R10, R9, #1610612738
l248: rsc R11, R4, R3, ASR R11
l249: rscCS R2, R14, #3408
l250: rsc R5, R1, #18874368
l251: rscCSs R0, R5, R6, LSL R12
l252: rscGEs R10, R0, R5, RRX 
l253: rscCCs R5, R2, R4, LSR #28
l254: rscPL R9, R5, R15, RRX 
l255: rscPL R8, R10, R6
l256: rscMI R0, R12, R4, LSR R10
l257: rsc R11, R3, #1032192
l258: rsc R2, R12, R11, ROR #6
l259: rscVCs R5, R1, R7, LSR #13
l260: rscs R5, R7, R5, LSR R4
l261: rscs R0, R14, R0
l262: rscVC R9, R1, R0, LSR #4
l263: rsc R9, R5, R14
l264: rsc R14, R11, R9
l265: rscVS R10, R8, R11
l266: rscVSs R12, R2, R0
l267: rscVS R11, R11, R5
l268: rscCC R3, R9, #2048000
l269: rscLS R14, R11, R3, RRX 
l270: rsc R9, R1, R6, ROR R8
l271: rsc R1, R10, R11, ASR R5
l272: rsc R4, R10, R5
l273: rscs R0, R3, R11, ASR R3
l274: rscs R4, R9, #452984832
l275: rscLT R4, R5, R5, ROR #13
l276: rscs R9, R12, R14
l277: rscNEs R4, R12, R0, LSR R14
l278: rsc R0, R15, R14, LSL #9
l279: rscGEs R11, R2, R6, ROR R4
l280: rscVSs R6, R14, R14, ASR R0
l281: rscGT R1, R9, R3, LSL #27
l282: rsc R12, R15, R15, RRX 
l283: rscEQ R8, R10, R14, ROR #19
l284: rscEQ R0, R7, R10
l285: rscs R14, R3, #737280
l286: rscs R4, R4, R3, ROR #7
l287: rsc R0, R8, R9, LSR R3
l288: rscLS R4, R7, R11, LSR R10
l289: rsc R7, R0, R6, ROR R11
l290: rscLSs R8, R11, #-1073741817
l291: rscPL R9, R6, #25344
l292: rscCCs R8, R8, R11, RRX 
l293: rscLSs R1, R1, R11, RRX 
l294: rscs R12, R4, R8, RRX 
l295: rscCSs R2, R14, R4, RRX 
l296: rscs R2, R11, #-2147483617
l297: rscs R4, R10, R15, RRX 
l298: rscMIs R0, R5, R5, ASR R11
l299: rscs R12, R3, R4, ROR #27
l300: rscLTs R4, R11, R0, ROR #4
l301: rsc R9, R7, R1, LSL #8
l302: rscNE R1, R14, #204
l303: rscVC R4, R9, R8, LSL #18
l304: rscLEs R4, R1, R8
l305: rscMI R0, R1, R2
l306: rscGEs R2, R1, #-1342177280
l307: rsc R3, R1, R3, ASR R0
l308: rsc R2, R10, R7
l309: rscLS R12, R2, R4
l310: rscHIs R4, R1, R11
l311: rscLE R7, R10, R5, ASR #6
l312: rscGT R0, R1, R8, ROR #1
l313: rscLEs R11, R1, R12, ROR R9
l314: rscHI R4, R6, #11206656
l315: rscVCs R11, R1, R5
l316: rscCCs R14, R15, R11, ASR #7
l317: rscCS R12, R14, R11, ROR #21
l318: rsc R2, R11, #66846720
l319: rscs R7, R4, R1, RRX 
l320: rscEQ R12, R10, R14, LSR #9
l321: rscLSs R8, R8, R7
l322: rsc R7, R6, R3, ASR #13
l323: rscs R5, R3, R6, LSR R1
l324: rscLT R11, R3, R3
l325: rscLS R10, R15, R8
l326: rscGT R7, R1, R2
l327: rscGT R6, R11, R8, ROR #15
l328: rsc R10, R5, R6, LSL #10
l329: rscLSs R8, R8, R5
l330: rscEQs R5, R0, #344064
l331: rscs R4, R5, R10, ASR R11
l332: rscNE R11, R2, R12, LSL R11
l333: rscLTs R9, R12, R3, ASR #18
l334: rscLS R11, R9, R2, ROR #2
l335: rscs R8, R9, R1, LSL R3
l336: rscs R5, R9, R5, ASR #22
l337: rscGTs R8, R14, R2, ROR #19
l338: rscs R3, R4, R9, RRX 
l339: rscCSs R1, R6, R6
l340: rscs R1, R8, R14, RRX 
l341: rscVSs R12, R14, R4, ROR R12
l342: rscs R14, R8, R1
l343: rsc R3, R12, R4, RRX 
l344: rscVS R3, R10, R4, ASR R2
l345: rscs R11, R7, R1, ASR #27
l346: rscNEs R7, R0, R11, LSL #20
l347: rscVSs R8, R2, #684
l348: rscLEs R9, R11, R4
l349: rscCCs R10, R12, R1
l350: rscCC R0, R5, R5
l351: rscHI R12, R12, R9
l352: rscVCs R9, R12, R1, LSR #13
l353: rsc R5, R14, #-520093696
l354: rscs R8, R1, #700
l355: rscs R14, R7, R12, RRX 
l356: rscLSs R14, R11, R6, ROR #11
l357: rsc R14, R15, #1073741830
l358: rscs R3, R9, R8, ASR R8
l359: rsc R0, R9, #1073741824
l360: rscMI R6, R5, #76800
l361: rscGT R4, R7, R14, ASR #29
l362: rscs R11, R8, #24
l363: rscGE R2, R9, #656
l364: rscs R6, R9, R9, LSL #7
l365: rscNE R0, R7, R11, LSR #17
l366: rscVSs R0, R3, R14, RRX 
l367: rscGE R1, R11, R2
l368: rscLE R8, R5, #5177344
l369: rscVCs R9, R8, R9, RRX 
l370: rsc R7, R5, R4
l371: rscGTs R8, R11, R0, LSR #27
l372: rscMIs R1, R4, R10
l373: rscs R9, R2, #381681664
l374: rscLTs R4, R10, R7
l375: rscNEs R11, R3, #602112
l376: rscNE R6, R12, R14
l377: rscPLs R8, R8, R15, LSR #21
l378: rscNEs R14, R5, R3
l379: rscCC R3, R11, #31744
l380: rscs R14, R6, #30
l381: rscGT R8, R11, R11, LSL R4
l382: rscLT R1, R1, R3, LSR #14
l383: rscLT R0, R9, R1, LSL R4
l384: rscPL R8, R6, R6
l385: rscGEs R7, R3, R8
l386: rscVSs R14, R9, R1, LSR R12
l387: rscLE R9, R8, R6, LSL R4
l388: rscLTs R6, R2, #-2147483632
l389: rscGT R3, R1, R11, LSR R3
l390: rscGT R8, R9, R15
l391: rscVC R11, R9, R8, LSR R9
l392: rscHI R11, R6, R2, RRX 
l393: rscLTs R9, R8, R0, RRX 
l394: rscVCs R0, R14, #206569472
l395: rscs R8, R12, R10, LSL R8
l396: rscNE R0, R5, R11
l397: rscs R6, R3, R9
l398: rscVSs R3, R1, R3, LSL #5
l399: rsc R3, R5, R3, RRX 
l400: rscs R2, R7, #1
l401: rsc R7, R10, R7
l402: rscNE R3, R7, R15, ASR #6
l403: rscVCs R9, R8, #1207959554
l404: rscVCs R12, R10, R2, LSL #6
l405: rscHI R9, R1, #40894464
l406: rscCCs R9, R7, #36
l407: rscLSs R3, R2, R4
l408: rsc R2, R2, #13696
l409: rscs R5, R6, R2, LSR R9
l410: rscLSs R6, R8, R6
l411: rscs R14, R12, R9, RRX 
l412: rsc R4, R2, R12, LSL #0
l413: rscVSs R1, R2, R7, RRX 
l414: rscs R6, R10, R1, LSL R9
l415: rsc R4, R14, R14, LSL R5
l416: rscVSs R10, R4, R10
l417: rscPLs R3, R0, R2, LSR R9
l418: rscVSs R12, R6, R11, LSL #26
l419: rscs R3, R4, R2
l420: rscLT R14, R5, R15, LSR #31
l421: rscCS R11, R15, R0, ROR #26
l422: rscNEs R6, R11, R5
l423: rscVC R12, R3, R4, LSL R2
l424: rscPL R14, R5, R7, ROR #18
l425: rscs R5, R0, R7, LSL R10
l426: rscLE R7, R5, R2, LSR #26
l427: rscs R5, R2, #344064
l428: rscs R8, R2, R8, RRX 
l429: rsc R11, R7, R5, LSL #20
l430: rscs R6, R5, #-1073741793
l431: rscLT R2, R6, #687865856
l432: rsc R6, R10, #2
l433: rscs R12, R1, R10, LSL R3
l434: rscPLs R1, R2, R5
l435: rscLTs R8, R0, R10, ASR #20
l436: rscLEs R1, R12, R10
l437: rscGEs R10, R5, #2688
l438: rscEQs R4, R10, R1
l439: rscs R5, R12, R8
l440: rscs R9, R10, R12, LSR #4
l441: rsc R5, R12, #65011712
l442: rsc R2, R5, #-268435455
l443: rscCCs R5, R9, R5
l444: rscHIs R9, R10, R6
l445: rscPLs R2, R5, R6
l446: rscMI R11, R11, R1
l447: rsc R5, R6, R10, LSL R8
l448: rsc R1, R6, R0, ROR #17
l449: rscLS R7, R15, R7, LSL #20
l450: rscVSs R5, R6, R8, ASR #7
l451: rsc R1, R1, R7, ROR #22
l452: rscMI R5, R2, #1728
l453: rscPLs R5, R12, R0
l454: rscLS R1, R6, R7, LSL R5
l455: rscNEs R1, R2, R14, ROR #3
l456: rscs R10, R3, R12, ROR #24
l457: rsc R9, R9, #-50331648
l458: rscEQ R1, R6, R9
l459: rscVCs R5, R0, R8
l460: rscs R8, R7, R3, ASR R2
l461: rscLS R1, R14, R14, ROR #14
l462: rscs R4, R14, R2
l463: rscLTs R12, R15, R2, ASR #11
l464: rscHI R3, R7, R15
l465: rscNE R10, R9, R2, ASR R8
l466: rscLSs R1, R5, R6, RRX 
l467: rscs R2, R14, #268435457
l468: rscLS R11, R6, #252
l469: rscs R3, R11, R15
l470: rscLTs R12, R11, R9
l471: rscs R4, R12, #-1895825408
l472: rsc R6, R1, R11
l473: rscCS R10, R4, R0, ASR #19
l474: rscs R5, R10, R8, LSL R2
l475: rscs R9, R1, R7, RRX 
l476: rscVSs R7, R14, R8, ASR #9
l477: rscVSs R5, R2, R12, ROR R14
l478: rscPL R14, R12, R4, ASR R4
l479: rscCCs R5, R9, R0, ASR R7
l480: rscs R9, R12, R5
l481: rsc R2, R8, R2, ASR #4
l482: rscPL R9, R12, #1232
l483: rscs R8, R12, R9, ASR R11
l484: rscs R2, R14, #268435459
l485: rscs R12, R6, R8
l486: rsc R0, R9, R2
l487: rscNEs R6, R15, R6
l488: rscNEs R0, R2, R12, LSL #25
l489: rscMIs R7, R1, R10, RRX 
l490: rscCCs R10, R11, R5, LSR R12
l491: rscCCs R5, R5, R2, ROR R10
l492: rscVSs R8, R4, #161480704
l493: rscEQ R5, R8, R2, ROR #4
l494: rscVCs R1, R1, R7, RRX 
l495: rscLSs R14, R1, #-1090519040
l496: rsc R4, R15, #50331648
l497: rscHIs R8, R10, R8
l498: rscGEs R12, R2, R2, RRX 
l499: rscLE R11, R0, #16384
l500: rsc R2, R9, R0, ROR R14
l501: rsc R1, R6, #-1862270976
l502: rscPLs R12, R12, R5, LSR R0
l503: rsc R10, R6, R1, LSL #6
l504: rscHIs R3, R3, #-2147483590
l505: rscGTs R1, R14, R5, RRX 
l506: rsc R14, R14, R9, ASR #5
l507: rscLE R6, R15, #19922944
l508: rscs R14, R5, R8, ROR R5
l509: rscs R1, R3, R11, LSL R8
l510: rscs R10, R6, R1, ROR R5
l511: rscLE R11, R12, R0, RRX 
l512: rsc R14, R9, R15, ROR #29
l513: rscCC R7, R5, R8, ROR #9
l514: rscMI R2, R4, R0
l515: rscCSs R11, R8, R7, LSR #24
l516: rscs R7, R5, #640
l517: rscVS R12, R14, R11, RRX 
l518: rscs R9, R3, R2
l519: rscPLs R7, R14, R0, LSR R8
l520: rscPLs R1, R11, R7
l521: rsc R3, R10, R14, LSR R1
l522: rscLT R4, R2, R14, RRX 
l523: rsc R10, R14, R9, ROR R1
l524: rscLS R9, R10, #226492416
l525: rscs R4, R3, R10, LSL #15
l526: rscs R12, R8, #11
l527: rscs R2, R15, R3
l528: rscs R0, R9, R2, LSR #13
l529: rscLS R8, R14, R11, RRX 
l530: rscs R9, R11, R12
l531: rsc R6, R1, R10, RRX 
l532: rscs R1, R15, #3328
l533: rscCC R2, R7, R7
l534: rscs R6, R8, #1264
l535: rscMIs R11, R1, R2, LSR R2
l536: rscLTs R8, R10, R0, LSR R9
l537: rscLT R7, R8, R0, LSL #10
l538: rscLTs R3, R5, R5
l539: rscVSs R5, R2, R10
l540: rscs R8, R9, #384
l541: rscs R14, R5, R4
l542: rscEQs R4, R15, R15
l543: rscs R6, R12, R5, RRX 
l544: rscLSs R2, R7, #394264576
l545: rsc R1, R7, R11, LSR R10
l546: rscLT R11, R1, R3, LSL R0
l547: rscNE R7, R3, R15, RRX 
l548: rsc R6, R6, R12, RRX 
l549: rsc R2, R12, R4, ROR #27
l550: rscPL R9, R5, R8, ASR R1
l551: rscCCs R9, R15, R5
l552: rsc R6, R0, R7
l553: rscLEs R12, R8, R11, LSL #5
l554: rscs R8, R0, R7, LSR #16
l555: rsc R8, R10, R11, LSL R2
l556: rscLE R11, R8, R9, LSR R1
l557: rscVS R1, R1, R15, LSL #29
l558: rscLT R10, R15, R15, ASR #18
l559: rscs R11, R6, R7, LSL R3
l560: rscLS R10, R2, #973078528
l561: rscPLs R12, R1, #39321600
l562: rscCCs R2, R0, #4544
l563: rscLTs R10, R8, R12
l564: rscLE R1, R4, R14, LSL #23
l565: rscs R4, R0, R14, RRX 
l566: rsc R12, R11, R12, LSR #6
l567: rsc R14, R8, #464
l568: rscMI R7, R8, #39
l569: rsc R9, R0, #29
l570: rscs R0, R8, R2, ROR #10
l571: rscVS R14, R11, R0, RRX 
l572: rscEQ R0, R3, R9, ASR R8
l573: rscGE R7, R4, R11, LSR R4
l574: rscHI R12, R11, R14, LSR R7
l575: rscGE R7, R1, R12, ROR R6
l576: rscGEs R5, R10, #-1073741800
l577: rsc R3, R6, R4, ROR R5
l578: rscLSs R2, R15, R5, ASR #30
l579: rscLSs R12, R14, R6
l580: rscs R11, R11, #432013312
l581: rscGTs R10, R6, #-1744830463
l582: rscVSs R0, R0, R7, LSR #24
l583: rscs R8, R7, R9
l584: rscs R11, R1, R2, ROR #18
l585: rscGE R11, R8, #1556480
l586: rsc R8, R7, R5, RRX 
l587: rscs R10, R9, R5, RRX 
l588: rscGE R9, R6, R10, ROR #30
l589: rscGEs R5, R3, R4, LSR #23
l590: rscCS R3, R11, R6, LSR #4
l591: rscPLs R2, R7, R3, LSR #29
l592: rscMIs R10, R10, #-1912602624
l593: rscVC R14, R15, #-1073741792
l594: rsc R1, R1, R10, ASR R1
l595: rscs R9, R2, #-335544320
l596: rsc R10, R14, R14
l597: rscVS R0, R10, R2, ROR R7
l598: rsc R5, R6, #936
l599: rsc R2, R1, R3, LSR #1
l600: rscLT R14, R10, R7, RRX 
l601: rscCC R2, R6, R0
l602: rscLE R0, R5, R1, ROR #22
l603: rscMI R12, R1, R10, LSR R3
l604: rscNEs R10, R10, #38797312
l605: rsc R10, R7, R3, LSR R8
l606: rsc R5, R4, R14, LSL R7
l607: rsc R5, R15, #2992
l608: rscs R10, R12, #14464
l609: rsc R2, R0, #15872
l610: rscGE R1, R7, R3, LSR R12
l611: rscs R12, R3, #148480
l612: rscVCs R7, R5, #-335544320
l613: rscGE R4, R12, R0
l614: rscLTs R2, R2, R0
l615: rscLTs R14, R6, R11, RRX 
l616: rscGT R6, R5, R2, ASR R4
l617: rscCCs R8, R9, R11, ASR R1
l618: rscHIs R4, R3, R3, LSR R8
l619: rscs R5, R5, R12, LSR R4
l620: rsc R9, R14, R4, RRX 
l621: rsc R1, R1, #805306375
l622: rscVC R2, R9, R12, LSL R12
l623: rsc R7, R15, R15, LSR #25
l624: rscCC R5, R4, R2
l625: rscMIs R1, R3, #3538944
l626: rsc R14, R3, R3
l627: rscCS R5, R5, #46399488
l628: rsc R4, R4, R3
l629: rscVCs R14, R9, R10, LSR R4
l630: rscs R1, R14, #9472
l631: rscLT R12, R3, R9, ASR #22
l632: rscLSs R9, R8, R10, LSR #0
l633: rscLS R11, R9, R5, ROR R3
l634: rsc R5, R1, R4, ROR R3
l635: rscPL R12, R9, R8
l636: rscs R1, R12, R7
l637: rsc R8, R0, R12, ROR R4
l638: rscHIs R1, R10, R15, LSR #25
l639: rscNE R11, R8, R9
l640: rscHIs R0, R3, R11
l641: rsc R3, R4, R8
l642: rscVS R6, R7, R2
l643: rsc R7, R10, R9, ROR R0
l644: rscVS R7, R10, R11, LSL R2
l645: rscLE R9, R0, R5, ASR #17
l646: rsc R12, R8, R6
l647: rscGTs R3, R8, R2
l648: rscVSs R10, R8, R7, LSR R10
l649: rscGTs R2, R15, #452984832
l650: rsc R3, R11, R5
l651: rscNEs R6, R6, R12, ASR #4
l652: rscs R9, R3, R14, RRX 
l653: rscCSs R5, R2, R7, LSL R10
l654: rscLS R5, R2, R4, ROR #24
l655: rsc R9, R8, R5, LSL #17
l656: rscEQs R12, R10, R11
l657: rsc R14, R8, #20971520
l658: rscMIs R11, R2, R15, LSL #29
l659: rscLTs R0, R9, R10, ASR #16
l660: rscGEs R6, R5, #6291456
l661: rscHIs R4, R10, R0, ASR R1
l662: rscGEs R9, R8, R7, LSL #14
l663: rscs R12, R14, R7, RRX 
l664: rsc R6, R0, #28835840
l665: rscs R12, R2, R8
l666: rscMI R9, R2, R1
l667: rsc R10, R4, #26624
l668: rsc R14, R10, #52736
l669: rsc R7, R7, R0, LSR R3
l670: rscCC R0, R15, #348127232
l671: rscPL R0, R4, R11, ASR #0
l672: rscLS R10, R10, R7
l673: rscs R6, R1, R1, LSL #26
l674: rscs R9, R5, #398458880
l675: rscs R3, R14, #245760
l676: rscLSs R6, R4, R5, RRX 
l677: rsc R4, R9, R1, RRX 
l678: rsc R2, R8, R5, LSL #22
l679: rscCSs R6, R15, #603979776
l680: rscLT R10, R4, #50176
l681: rsc R11, R6, R9, RRX 
l682: rscs R7, R8, R9, ASR #20
l683: rscs R9, R12, R8, LSL #10
l684: rscCCs R11, R6, R11, LSL #10
l685: rscMI R6, R11, R5, ROR R6
l686: rscMIs R7, R12, R15
l687: rscPLs R6, R15, R2
l688: rscHIs R5, R10, R3, ASR #24
l689: rsc R5, R9, R5, RRX 
l690: rscGT R6, R12, #208896
l691: rscMI R1, R4, R1, LSR #26
l692: rscHI R1, R3, R3
l693: rsc R8, R15, #171966464
l694: rscMI R4, R12, R1, ASR #31
l695: rscs R3, R15, R5, RRX 
l696: rscs R8, R1, R3
l697: rsc R3, R2, R14, LSL #15
l698: rscs R3, R1, R6
l699: rsc R0, R5, #240640
l700: rscCC R0, R14, R12, LSL #26
l701: rscGTs R3, R4, R2
l702: rscHIs R2, R12, R2
l703: rscHIs R10, R3, R8
l704: rsc R1, R3, R5
l705: rscLS R7, R12, R12
l706: rscs R4, R1, R14, RRX 
l707: rscEQ R11, R7, #20709376
l708: rscEQ R4, R8, R2, LSL R9
l709: rscVC R6, R11, #14656
l710: rscLS R5, R1, R12, LSL #17
l711: rscs R1, R7, #58720256
l712: rscPLs R2, R2, R3, RRX 
l713: rscs R8, R3, R1, RRX 
l714: rscs R7, R8, R7, RRX 
l715: rscs R1, R4, R10, LSR R4
l716: rscPLs R11, R10, R12, LSR R14
l717: rscEQs R5, R9, R9, ROR R14
l718: rscs R8, R4, R14, ROR R5
l719: rsc R11, R14, R15
l720: rscGEs R4, R10, R4, ASR #24
l721: rscLTs R2, R11, R3
l722: rscs R12, R9, R14
l723: rscs R14, R2, R14, LSL R3
l724: rscCCs R9, R9, R9, ROR R6
l725: rscCS R2, R8, R1
l726: rscLTs R3, R11, R2, RRX 
l727: rsc R3, R2, R14, ASR #18
l728: rscLEs R7, R14, R7, ASR #27
l729: rsc R8, R9, #704643072
l730: rscGEs R14, R8, R0, ASR R2
l731: rscs R7, R7, R3
l732: rscCC R7, R7, #3200
l733: rscCS R3, R6, R4, RRX 
l734: rsc R4, R9, R0, ASR #22
l735: rscs R10, R2, #47710208
l736: rscCS R9, R2, R9, ASR #14
l737: rscVSs R0, R1, R0, ROR #30
l738: rscNEs R12, R12, R0, LSR #11
l739: rscLTs R11, R6, R11, ROR #2
l740: rsc R3, R12, R8, LSR R10
l741: rsc R5, R8, R4
l742: rscNEs R8, R6, #3760
l743: rscVC R7, R8, R2
l744: rsc R10, R4, R7, ASR R8
l745: rscs R2, R6, #2375680
l746: rscPL R7, R8, R6
l747: rscMIs R3, R15, #2800
l748: rscGT R1, R12, R5, ROR #8
l749: rscLE R4, R11, R11, LSR R9
l750: rsc R2, R8, R14, ASR R1
l751: rscHIs R5, R14, R0, ROR R11
l752: rscCC R12, R11, R8
l753: rscLTs R0, R14, R11
l754: rsc R3, R14, R1, LSR R14
l755: rscs R5, R2, R11, LSR #2
l756: rscs R1, R10, R4
l757: rscLSs R7, R5, R11
l758: rscCCs R2, R15, R10, ASR #18
l759: rscVS R7, R14, R2, ROR #12
l760: rscs R6, R1, #28
l761: rsc R14, R2, R1, LSR R11
l762: rscHIs R3, R14, R9
l763: rscLE R2, R6, R1, LSL R4
l764: rsc R4, R3, R12, ROR #1
l765: rscNE R14, R11, R11, ROR #24
l766: rscEQ R7, R6, R1, ASR #2
l767: rscs R14, R1, R0
l768: rscLSs R0, R8, R1, LSR #26
l769: rscGE R4, R0, #34816
l770: rscPL R6, R12, #14336
l771: rscLSs R8, R11, R10
l772: rscs R8, R4, R11, LSR R2
l773: rscVSs R12, R5, R12
l774: rsc R9, R8, #419430400
l775: rscNEs R11, R12, R7, LSL R1
l776: rscs R4, R2, R5, ROR R9
l777: rscNE R4, R9, R2
l778: rscVC R9, R15, R14
l779: rscPL R12, R7, R1, ASR #12
l780: rscNE R0, R9, R1
l781: rscGE R8, R3, R8, ROR R0
l782: rscLSs R4, R0, R11, RRX 
l783: rscGT R8, R9, R0
l784: rscVS R0, R15, #318767104
l785: rscPLs R8, R4, R15, ASR #25
l786: rsc R8, R9, R6
l787: rscHIs R14, R3, #-805306365
l788: rscCC R3, R7, R12, LSL R10
l789: rscVSs R11, R0, R2, ROR R8
l790: rsc R3, R6, R2, ROR R7
l791: rscs R1, R12, R6, LSR #3
l792: rscHI R3, R11, R8
l793: rscNE R0, R1, R14
l794: rscs R7, R1, R6, ASR #21
l795: rscs R7, R11, #1840
l796: rscLS R8, R7, R4
l797: rsc R4, R9, R7
l798: rscNE R7, R6, R10, ASR #21
l799: rscPL R10, R3, R9
l800: rscGEs R14, R4, R9
l801: rscGTs R1, R7, R7, ROR #16
l802: rscVC R12, R2, R10, ROR R9
l803: rscVSs R7, R8, #-201326590
l804: rscLTs R3, R5, #79
l805: rsc R12, R1, R11
l806: rscs R4, R15, #-1610612733
l807: rscs R11, R6, R11, RRX 
l808: rscPLs R4, R0, R4, RRX 
l809: rscHI R14, R6, #44032
l810: rscLTs R7, R7, R4, ASR #22
l811: rsc R8, R0, R1, ASR #20
l812: rscVS R0, R9, R11
l813: rscEQ R6, R9, #185597952
l814: rscGT R6, R9, R11
l815: rscLEs R12, R8, R9
l816: rscPL R6, R5, #64768
l817: rscVC R3, R14, R15, RRX 
l818: rscNEs R11, R14, #828
l819: rscLT R12, R3, R11, LSL R8
l820: rscVC R3, R5, #112
l821: rscLTs R10, R10, R8, ROR #28
l822: rscGE R4, R0, #229376
l823: rsc R8, R2, #704
l824: rscLTs R14, R8, R8, LSL R3
l825: rscGTs R0, R15, R15
l826: rsc R0, R0, R4
l827: rscCC R5, R1, R5
l828: rscCS R3, R11, #265289728
l829: rscLSs R8, R12, R11, ASR R6
l830: rscGE R5, R2, #19200
l831: rscs R10, R1, R5, LSL #22
l832: rscPLs R0, R7, R7
l833: rscCSs R4, R14, #2013265922
l834: rscGT R14, R10, R7
l835: rsc R6, R9, R11, ASR R14
l836: rscCS R10, R9, #180355072
l837: rscCCs R7, R12, #32768
l838: rscGEs R9, R9, R3, LSR R1
l839: rscNEs R9, R14, R2, LSL R6
l840: rscs R5, R11, R15, ASR #30
l841: rsc R11, R3, R3, LSL R6
l842: rscHI R4, R4, R0
l843: rscLEs R6, R9, R1, LSR R5
l844: rscCSs R5, R7, R2, ASR R1
l845: rscEQ R1, R7, R7, ASR R2
l846: rscVCs R12, R9, #716800
l847: rscVCs R0, R15, R14, LSR #15
l848: rsc R3, R15, R15, LSL #18
l849: rsc R5, R3, R12, LSL #5
l850: rsc R8, R9, R0, ASR R12
l851: rscPL R12, R1, R6, RRX 
l852: rsc R6, R14, R6, ASR R2
l853: rscCCs R11, R12, R0
l854: rsc R8, R4, R5, RRX 
l855: rscPL R5, R11, R7
l856: rscHI R12, R3, R7, RRX 
l857: rscGT R12, R1, R4, LSR R5
l858: rscLSs R1, R14, #-1879048179
l859: rsc R9, R8, #-1610612734
l860: rscVSs R1, R11, R0
l861: rscPLs R8, R5, R12, LSR #18
l862: rscs R5, R1, R14, LSL R3
l863: rscMIs R6, R12, R7
l864: rscHI R8, R12, R5
l865: rscVS R4, R12, R10, ROR #3
l866: rscGE R6, R3, R11, ASR R11
l867: rscCCs R2, R9, #805306383
l868: rsc R11, R3, R10, ASR R12
l869: rscs R0, R9, R3, LSL R7
l870: rscGT R9, R12, R14, ASR R6
l871: rscs R8, R8, R3
l872: rscs R12, R6, R11
l873: rsc R2, R15, #7936
l874: rscHI R14, R3, #238592
l875: rsc R14, R14, #58112
l876: rscs R2, R2, R12, LSL R3
l877: rscNEs R8, R11, #9568256
l878: rscPLs R8, R14, R11, LSL R12
l879: rscVSs R6, R15, R9
l880: rscs R5, R11, R3, ROR #11
l881: rscs R11, R9, R2, ASR R8
l882: rscMIs R9, R4, R8
l883: rscLTs R5, R0, R12, RRX 
l884: rsc R7, R9, #9764864
l885: rscVC R1, R11, #11520
l886: rsc R14, R0, R6
l887: rsc R7, R6, R9
l888: rscLEs R10, R1, R5, LSL R3
l889: rscNE R3, R14, R4
l890: rsc R12, R8, R8
l891: rscGE R3, R6, R11, LSL #10
l892: rscs R4, R11, R15
l893: rscs R0, R3, R6, ROR #16
l894: rscs R0, R8, R8, LSR R8
l895: rscGT R7, R10, R6
l896: rsc R6, R10, R15, ROR #30
l897: rscMIs R9, R9, R14, LSR #31
l898: rscMI R6, R0, R3
l899: rsc R7, R15, R9, RRX 
l900: rsc R2, R11, R3
l901: rsc R6, R7, R8, LSR R10
l902: rscs R12, R12, R2, RRX 
l903: rsc R14, R12, R8, LSL R1
l904: rscNE R5, R0, R4
l905: rscGTs R12, R2, R4, ROR R5
l906: rscCSs R1, R0, R3, ROR #31
l907: rsc R11, R0, #540
l908: rscGT R0, R10, R5, LSR #13
l909: rscHI R6, R14, #-1207959550
l910: rscMIs R2, R1, R12
l911: rscCSs R0, R4, R10
l912: rscs R2, R6, R0, RRX 
l913: rscCSs R2, R5, R1, RRX 
l914: rscGEs R0, R5, R7, ROR R1
l915: rscMIs R8, R7, R15, ASR #7
l916: rsc R0, R1, R15, LSL #6
l917: rscs R1, R12, R7, LSL R8
l918: rscPL R11, R6, R8, ASR R10
l919: rscs R10, R9, R6
l920: rscMIs R8, R2, #54528
l921: rscVS R3, R7, #1044381696
l922: rscLSs R9, R10, R12, RRX 
l923: rscs R12, R6, R7
l924: rsc R12, R7, #262144
l925: rscLTs R7, R3, R10, ROR #7
l926: rscs R3, R11, R4, LSR R5
l927: rscs R12, R12, R11
l928: rscs R14, R0, R12, ASR #18
l929: rscLEs R14, R10, #1023410176
l930: rscLTs R11, R11, #4864
l931: rscLEs R11, R3, R0, ROR #1
l932: rscs R1, R10, R11, LSL #29
l933: rscMI R10, R0, R9, LSL #1
l934: rscVC R3, R9, R12
l935: rscCS R8, R7, R6, LSL #8
l936: rsc R14, R6, R15
l937: rscNE R6, R3, R9
l938: rscLTs R3, R4, R14
l939: rscVCs R14, R2, R10, LSL R3
l940: rscLSs R7, R0, R6, LSL R6
l941: rsc R6, R2, #65536
l942: rsc R3, R9, #71680
l943: rscGTs R0, R0, #2359296
l944: rscVC R14, R10, R14, RRX 
l945: rsc R2, R10, R9, ROR R8
l946: rscGE R5, R9, #60555264
l947: rscNEs R8, R1, R15
l948: rscs R12, R5, #32
l949: rscCS R11, R5, R11, ROR #18
l950: rscGTs R5, R2, R7
l951: rscNE R9, R12, R9, LSL #23
l952: rscLSs R5, R3, R6, RRX 
l953: rscNEs R0, R14, #103424
l954: rscs R0, R11, R3, LSR #20
l955: rscs R12, R8, R0, LSR R11
l956: rsc R5, R10, R2, ROR R10
l957: rscLTs R6, R11, #5439488
l958: rscHI R2, R8, R1, ASR R9
l959: rscVS R10, R1, #102400
l960: rscHIs R6, R10, R11
l961: rscLS R10, R1, R8
l962: rscPL R0, R14, R15
l963: rscHI R1, R11, #47616
l964: rscCS R7, R1, R12
l965: rscGTs R5, R14, R0, LSL #0
l966: rscLTs R3, R7, #7340032
l967: rscNEs R6, R0, R15
l968: rscNEs R9, R2, R15, ASR #21
l969: rscEQs R10, R12, R1, LSL #6
l970: rsc R10, R1, R1, RRX 
l971: rscNEs R0, R11, R2, LSL #19
l972: rscCCs R1, R4, R12
l973: rsc R5, R1, #884
l974: rscLSs R12, R4, R0
l975: rscVSs R9, R15, #-872415231
l976: rsc R14, R11, R10
l977: rscGEs R10, R15, R4
l978: rscLT R6, R5, R5
l979: rscHI R9, R9, R3, ROR #23
l980: rsc R0, R7, R14, RRX 
l981: rsc R3, R10, R5, LSL #23
l982: rsc R11, R8, R8, LSL #13
l983: rscLE R7, R12, R1
l984: rscs R6, R12, R6, LSL R11
l985: rscVS R5, R4, R12
l986: rscs R9, R8, R6, RRX 
l987: rsc R4, R14, R3, LSR R4
l988: rscGT R0, R4, R6, ASR #8
l989: rscs R6, R7, #11468800
l990: rscPLs R0, R2, R8, RRX 
l991: rscNEs R7, R6, #917504
l992: rscHIs R7, R10, R3, ROR R11
l993: rscCC R11, R0, R10, ASR R14
l994: rscLE R8, R7, R0
l995: rscLT R12, R6, R7, RRX 
l996: rsc R9, R14, R10, ASR #25
l997: rscCS R14, R9, R8, ROR R14
l998: rscs R9, R4, R2
l999: rscNEs R8, R0, #14876672
l1000: rsc R7, R2, R0, LSL R2
end: b end

