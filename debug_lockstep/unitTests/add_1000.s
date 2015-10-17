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
val1: .word 3136041496
next1:ldr R2, val2
b next2
val2: .word 150093428
next2:ldr R3, val3
b next3
val3: .word 1159828038
next3:ldr R4, val4
b next4
val4: .word 3566754885
next4:ldr R5, val5
b next5
val5: .word 2353487928
next5:ldr R6, val6
b next6
val6: .word 3487715663
next6:ldr R7, val7
b next7
val7: .word 1205130242
next7:ldr R8, val8
b next8
val8: .word 3573920792
next8:ldr R9, val9
b next9
val9: .word 2122972817
next9:ldr R10, val10
b next10
val10: .word 3670113592
next10:ldr R11, val11
b next11
val11: .word 2095358432
next11:ldr R12, val12
b next12
val12: .word 1080492408
next12:ldr R14, val14
b next14
val14: .word 1847696347

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 2938637394
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 3110351829
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3965883738
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 1792904875
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 1027418929
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 3583630779
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 816365656
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 2910487029
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 99826255
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 3944704893
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 1674259330
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 1308753944
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 3297606950
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 2013020747
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 3984763059
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 727209109
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 10108175
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 4161657492
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 1743650840
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 1338772972
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 3662053754
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: addVSs R10, R6, R1, RRX 
l2: addVS R11, R0, R4, RRX 
l3: addVSs R7, R4, R5, LSR #26
l4: addLS R5, R10, R12, LSR #21
l5: addPL R9, R10, R2, LSL R8
l6: add R10, R9, #203
l7: add R0, R15, #11141120
l8: addPLs R11, R8, #1610612751
l9: add R10, R0, R6, LSR R4
l10: adds R10, R4, R14, LSR #27
l11: add R6, R8, R8, RRX 
l12: addGEs R7, R7, R10, ASR R4
l13: addVCs R4, R8, R10, LSL R11
l14: addLS R1, R1, R9, RRX 
l15: adds R8, R11, #188416
l16: addPL R0, R1, R15
l17: adds R14, R0, R10, ASR R3
l18: addCSs R5, R4, R11
l19: addHIs R1, R0, R14
l20: add R5, R2, R10, ROR #19
l21: addLS R12, R3, R3, LSR R8
l22: adds R4, R11, R1
l23: addNEs R5, R14, R3, ASR R9
l24: addMIs R8, R9, #645922816
l25: adds R1, R3, R2, ROR R6
l26: addGE R8, R14, R8, LSL R2
l27: adds R14, R2, R11
l28: addCC R1, R6, R1, RRX 
l29: adds R6, R11, #2048
l30: addLS R6, R7, R7, LSR R9
l31: add R6, R6, R1
l32: add R4, R11, R7, ASR R14
l33: addGTs R11, R0, R3, LSR #11
l34: addLS R9, R6, R4
l35: add R14, R5, #0
l36: add R7, R11, R0, LSR R7
l37: addEQs R10, R0, R15, LSR #9
l38: addLS R4, R5, R4, ROR R3
l39: addVC R11, R4, #469762048
l40: addHIs R11, R10, #917504
l41: adds R11, R6, R2, ROR R0
l42: adds R8, R14, R10
l43: addCS R0, R5, R12, ASR R7
l44: addVCs R3, R10, R12, ROR #22
l45: addHI R2, R2, #47
l46: addCSs R10, R7, R4
l47: addPL R2, R0, R10, LSL #22
l48: addGTs R1, R7, R7
l49: add R9, R4, #780140544
l50: adds R3, R7, R11
l51: addCSs R1, R15, #159744
l52: addCCs R12, R1, R4, ASR #30
l53: addVC R8, R6, #1835008
l54: adds R9, R1, R6
l55: add R7, R10, R9, ASR R8
l56: addVSs R10, R14, R11, LSL #7
l57: addCS R6, R7, R3, LSL #16
l58: addLE R10, R8, R0, ROR #31
l59: add R1, R8, #954368
l60: add R11, R8, R15
l61: addGE R8, R5, #23330816
l62: adds R9, R7, R11, ROR R14
l63: add R5, R7, R14
l64: add R3, R6, R14, ASR #27
l65: addPL R0, R7, R5
l66: addLEs R11, R3, R4, LSR #5
l67: add R2, R9, #483328
l68: addLT R9, R11, #-16777216
l69: addVSs R10, R8, R5, LSL R10
l70: add R9, R5, R10
l71: add R10, R1, R8, LSL #4
l72: adds R6, R2, R4, ASR R5
l73: addHI R6, R8, #942080
l74: addLSs R11, R5, R3, LSR #20
l75: addGEs R6, R1, #1610612742
l76: adds R7, R0, R6
l77: adds R9, R5, R12
l78: addNE R7, R3, #25856
l79: addHI R6, R9, R15
l80: add R3, R8, R2, ASR #27
l81: addGT R4, R0, R4, RRX 
l82: adds R10, R8, R0, LSL R8
l83: addVS R3, R3, #738197504
l84: addVC R3, R5, R3
l85: addCC R5, R1, #11010048
l86: add R9, R8, R3, LSR #9
l87: addVSs R8, R4, R7, ROR R11
l88: addLS R7, R6, R1, LSL R14
l89: add R14, R11, R3, RRX 
l90: addLS R1, R4, R3, RRX 
l91: add R6, R4, R3, ROR R12
l92: addGEs R8, R8, R15, ROR #15
l93: addVS R8, R4, R9
l94: addLS R6, R10, R11, ROR R11
l95: addNE R8, R12, R7, ROR #7
l96: adds R7, R7, R12
l97: add R0, R1, R14, ASR R2
l98: addLE R7, R8, R11, ASR R12
l99: adds R14, R8, R5, RRX 
l100: adds R8, R3, R12, ASR R3
l101: addHIs R7, R3, #158720
l102: addHI R4, R0, R11, RRX 
l103: addLS R5, R12, R10
l104: add R0, R7, R3, RRX 
l105: add R9, R0, #2555904
l106: addHI R10, R10, R3, RRX 
l107: addCSs R12, R0, #2834432
l108: addEQ R10, R11, R2
l109: add R3, R7, #584
l110: addVCs R1, R14, #856064
l111: addLS R8, R2, R15
l112: adds R14, R11, R10, ROR #13
l113: addLSs R9, R9, #3200
l114: add R9, R2, R5, LSL R1
l115: adds R11, R12, R4
l116: addHIs R9, R2, #134217728
l117: addMIs R14, R11, R8
l118: addMIs R6, R7, #55
l119: addGEs R0, R14, R6, ROR #8
l120: adds R0, R8, R2, ASR R14
l121: adds R10, R9, R3, RRX 
l122: addHIs R9, R12, R12, LSL R4
l123: add R10, R4, R14
l124: adds R9, R10, #104857600
l125: addLSs R11, R11, R4, LSL #3
l126: addLT R1, R6, R9, LSR R5
l127: addLSs R4, R3, R1
l128: addLSs R4, R12, R0
l129: addCC R9, R5, R1
l130: addCS R12, R15, R7, RRX 
l131: adds R14, R4, R10, LSR R4
l132: addVS R12, R5, R11, RRX 
l133: add R5, R4, R2, ROR #12
l134: add R7, R12, R0, ASR R7
l135: adds R3, R0, R11, ROR R2
l136: addLSs R2, R1, #3211264
l137: addVSs R5, R4, R15, LSL #15
l138: add R2, R8, R8, ASR #19
l139: addPL R2, R7, R8
l140: adds R8, R11, #8650752
l141: add R11, R10, R1, ROR R6
l142: addVCs R0, R12, R9, ROR #8
l143: adds R14, R12, R10
l144: adds R9, R9, R3
l145: adds R1, R7, R4, LSL R9
l146: adds R7, R11, R4, RRX 
l147: addGEs R2, R15, #268435456
l148: addEQs R0, R7, R4, RRX 
l149: addNE R7, R11, #15466496
l150: addNEs R1, R0, #82837504
l151: adds R4, R15, R7
l152: add R4, R4, R7, LSL R1
l153: addMIs R3, R1, #47448064
l154: addVSs R14, R12, R12, LSR R6
l155: addVCs R1, R4, R3
l156: addMIs R1, R11, R4, LSL #12
l157: adds R10, R4, R3, RRX 
l158: adds R6, R12, R5, LSR #11
l159: adds R4, R9, #24
l160: addEQ R7, R10, R2, RRX 
l161: add R10, R10, R4, ROR R10
l162: addHIs R9, R9, R10
l163: addPL R9, R3, R11, LSL #13
l164: addLSs R8, R12, R8, LSR R4
l165: adds R10, R14, R12, ROR #7
l166: addVSs R6, R9, R0
l167: addNE R12, R6, R14
l168: add R11, R10, R2, LSR R14
l169: addGE R14, R12, R1, ROR #17
l170: adds R6, R9, R12, RRX 
l171: adds R5, R5, R1, RRX 
l172: add R5, R6, R8, LSR R1
l173: add R8, R11, R3, RRX 
l174: addVSs R0, R7, R12, LSL #11
l175: addGTs R6, R0, R1, ASR #22
l176: add R3, R9, #10747904
l177: addHI R1, R8, R14, ASR #18
l178: addCC R9, R4, #536576
l179: adds R6, R12, R11
l180: addLTs R2, R14, R1
l181: addNE R11, R12, R7, ASR R6
l182: addHI R7, R8, #11534336
l183: add R12, R7, #-1241513984
l184: addMI R5, R1, #36700160
l185: adds R9, R12, R5, LSR #3
l186: addEQs R14, R1, R6
l187: adds R9, R3, R1, RRX 
l188: addGTs R14, R5, R11, ASR R7
l189: addCSs R3, R6, R15, LSR #14
l190: add R7, R10, R4, RRX 
l191: addLEs R10, R0, R10, ROR #11
l192: add R7, R2, R12, LSL R2
l193: addCCs R7, R10, R6
l194: add R0, R5, #-805306353
l195: add R0, R14, R12
l196: addCSs R2, R15, R1, LSR #4
l197: addVS R2, R5, R12, ROR #28
l198: addHIs R0, R10, R10
l199: addGE R5, R2, #222208
l200: addEQ R4, R10, R10
l201: addVS R9, R12, R8
l202: addNE R14, R9, #12845056
l203: addGE R4, R9, #9961472
l204: addNE R10, R7, R2, LSL R5
l205: addMI R2, R3, #2801664
l206: add R2, R12, R15, RRX 
l207: addNEs R3, R8, #1073741887
l208: adds R1, R10, R1, ROR #26
l209: add R4, R10, R9
l210: add R2, R4, R4
l211: addMI R14, R4, R2, RRX 
l212: addCS R4, R1, R12
l213: addLT R1, R14, R1, LSR R9
l214: adds R5, R6, R8
l215: addLEs R11, R9, R6, ROR R6
l216: addPL R4, R15, #-671088640
l217: addNEs R10, R4, #285212672
l218: addLTs R5, R4, R9
l219: addVS R1, R2, R3
l220: addLS R6, R8, R5
l221: adds R12, R12, R8, LSR R1
l222: adds R0, R0, R11, RRX 
l223: addGTs R6, R2, #796917760
l224: addEQ R4, R11, R0, ASR R7
l225: add R9, R12, R0
l226: addMI R1, R7, R5, ROR #13
l227: addMIs R12, R8, R2, LSR #28
l228: add R9, R3, R1, LSR R4
l229: addCC R10, R7, R1
l230: addVC R12, R1, #2063597568
l231: addLSs R5, R0, R14
l232: add R5, R9, #103809024
l233: addPLs R1, R4, R0
l234: addGE R6, R2, #30
l235: addCS R9, R0, #251904
l236: add R4, R7, R12
l237: addMI R14, R8, R6, ROR #25
l238: adds R10, R7, #14811136
l239: addGEs R11, R8, R11, RRX 
l240: add R12, R6, R10, ROR R0
l241: add R0, R4, R2
l242: addPLs R0, R10, R5, ROR #21
l243: add R3, R5, #92274688
l244: addPLs R14, R4, #914358272
l245: add R14, R3, R3, LSL #19
l246: adds R3, R14, R12
l247: addLS R9, R11, R8, LSL R4
l248: addLTs R4, R0, #111
l249: adds R5, R3, R7, ASR #4
l250: addCC R14, R4, R11
l251: adds R4, R12, R10, ASR #22
l252: adds R9, R5, #805306370
l253: adds R3, R1, #278528
l254: addHI R0, R12, R8
l255: addHIs R8, R10, R3, LSL #27
l256: adds R5, R15, #106496
l257: add R14, R8, R1, ASR R7
l258: add R14, R9, #15728640
l259: addVCs R8, R14, R5, ASR #6
l260: adds R12, R0, #48896
l261: addHIs R9, R10, R14, ASR R1
l262: add R0, R5, #3344
l263: add R3, R3, R9
l264: adds R4, R5, #13
l265: addLTs R8, R7, #51380224
l266: addLTs R6, R9, #245760
l267: addVSs R8, R2, #180224
l268: addNE R8, R7, #63744
l269: addCC R14, R9, R8, RRX 
l270: addPL R8, R14, R3, RRX 
l271: adds R3, R9, R7, ROR R0
l272: addCSs R0, R9, R10
l273: addVSs R0, R1, R6, RRX 
l274: addVCs R3, R9, #-872415230
l275: addCSs R14, R14, R5
l276: adds R14, R9, R4, LSL R1
l277: adds R1, R8, R3, RRX 
l278: adds R8, R8, R5, ASR #30
l279: addLTs R7, R3, R3, ASR #23
l280: addHI R8, R14, R11, ROR R6
l281: add R12, R10, #42205184
l282: adds R0, R6, R4, LSR R12
l283: adds R8, R4, #25088
l284: addLS R0, R6, R14, LSL #27
l285: add R1, R7, #-352321536
l286: add R4, R4, R10
l287: addHIs R0, R10, R3, LSL R14
l288: addVC R2, R8, #2128
l289: addVCs R14, R8, R3, LSR R3
l290: addGEs R1, R0, #1048576
l291: addLTs R7, R9, R0, LSR #30
l292: add R9, R5, R3, LSL #16
l293: addLS R8, R12, #1720320
l294: addNE R14, R1, #176160768
l295: addLS R12, R14, R12, RRX 
l296: adds R0, R1, #950272
l297: addLEs R0, R6, R5, RRX 
l298: addCS R7, R12, R1, ROR #14
l299: add R1, R11, #771751936
l300: adds R0, R9, R1, LSL R12
l301: addPL R5, R11, R3, LSR R8
l302: addVS R1, R11, R3, ASR R5
l303: addGTs R1, R7, R14, LSR R11
l304: addHIs R7, R2, R4
l305: addNEs R5, R5, R7, LSR R14
l306: add R0, R7, #1191182336
l307: add R12, R10, R12, RRX 
l308: adds R12, R2, R9, ASR #6
l309: add R6, R4, R3, ASR R3
l310: addEQ R6, R6, R4, LSR R0
l311: addVS R2, R4, #-1828716544
l312: adds R3, R1, R7
l313: adds R0, R8, R14
l314: addGE R7, R8, #167772160
l315: addMI R1, R8, R9, ROR #9
l316: addMIs R0, R8, R7
l317: addCSs R2, R6, R6
l318: adds R9, R2, R7
l319: adds R0, R15, R9
l320: addGT R10, R9, R11, LSR R4
l321: addVSs R5, R8, R2, ROR R0
l322: adds R2, R15, R2
l323: adds R2, R14, R3
l324: addLEs R9, R0, R1
l325: add R8, R7, R10, ASR #27
l326: add R4, R2, R4
l327: adds R9, R14, R3, RRX 
l328: add R5, R6, R2, ASR R12
l329: addVC R5, R1, R3, LSL R5
l330: adds R12, R7, R0, ROR R10
l331: add R9, R12, #12386304
l332: addGEs R3, R10, R2, ROR #19
l333: addCSs R14, R6, R6, LSR #3
l334: adds R8, R11, R15, RRX 
l335: add R8, R11, R9, LSR #0
l336: adds R0, R3, R12
l337: adds R5, R15, R4, RRX 
l338: addLS R4, R6, R6, LSR R1
l339: addVCs R0, R14, R6, LSL R2
l340: adds R7, R1, R7, ROR R10
l341: addGE R11, R3, R7, LSL #10
l342: addLS R2, R1, R2, RRX 
l343: addHI R14, R2, #61
l344: addPLs R2, R0, R0, LSL R7
l345: addVCs R4, R2, #12189696
l346: add R5, R10, R11
l347: addGTs R0, R11, R3
l348: addNE R14, R10, R8
l349: addGT R10, R3, R9
l350: addLT R14, R9, R7, ASR R4
l351: addVSs R11, R8, R0, RRX 
l352: addLS R8, R0, R2
l353: addPLs R11, R9, R5, RRX 
l354: add R6, R14, R3
l355: adds R4, R1, R5
l356: addEQs R1, R10, R14, LSR #15
l357: add R14, R11, R15
l358: addVCs R10, R11, R5, ROR #17
l359: addHIs R10, R4, R1, LSR R4
l360: addMIs R1, R10, R9, LSL R11
l361: addCS R9, R12, #16777216
l362: adds R7, R0, R8, LSL R2
l363: adds R3, R1, R2, LSR #4
l364: addMI R0, R10, R9, LSL R3
l365: addPL R7, R12, R6, LSL R1
l366: addEQ R14, R3, #-2147483617
l367: addVSs R10, R10, R8
l368: add R7, R8, #62914560
l369: addLEs R6, R1, #61440
l370: addLEs R6, R7, R9, ASR R5
l371: addLT R10, R12, R6, ASR R0
l372: addLTs R4, R6, R12, RRX 
l373: adds R9, R5, #1073741870
l374: adds R5, R14, R9
l375: addGEs R8, R9, R9, LSR #22
l376: add R7, R5, R4, ASR R7
l377: addLEs R8, R12, #647168
l378: addLSs R7, R1, R10, ASR #31
l379: addCSs R5, R10, R0, ASR #24
l380: addGEs R10, R15, R11
l381: addVSs R11, R2, #42467328
l382: addGE R5, R6, R6, ROR R8
l383: add R3, R4, R0, LSR #28
l384: add R8, R8, #7143424
l385: adds R8, R11, R2
l386: add R9, R10, R3
l387: adds R5, R11, R1, ASR R9
l388: adds R4, R11, #204
l389: addCC R11, R2, R11
l390: adds R8, R7, R15, LSL #7
l391: add R0, R2, R11, ASR #7
l392: addGTs R1, R4, #65536
l393: adds R12, R3, #1073741865
l394: add R11, R2, R5, ROR #11
l395: addLSs R4, R4, R2
l396: addLE R4, R14, R9, RRX 
l397: addEQ R7, R4, R14, ROR #3
l398: adds R11, R0, R1, LSR R4
l399: add R6, R8, R7, LSR #27
l400: adds R7, R12, R7, LSL R14
l401: addCC R7, R8, #644
l402: addNEs R11, R3, R10, ASR #3
l403: addMI R7, R10, #288
l404: adds R14, R10, R9, LSL #16
l405: addCSs R3, R10, R6
l406: adds R9, R15, R3, RRX 
l407: addNEs R9, R4, R10, LSR #3
l408: addEQs R11, R2, R12, ASR #21
l409: addNE R1, R2, R4, LSL R7
l410: addMIs R9, R5, #39936
l411: adds R14, R12, R1, LSR #16
l412: adds R6, R4, R10, ASR R11
l413: addNE R8, R14, R12, LSL R14
l414: adds R5, R10, R10, LSL #10
l415: addCCs R9, R11, R3
l416: addEQs R9, R0, R3, ROR #19
l417: add R10, R4, R10
l418: add R4, R10, R0, RRX 
l419: addCC R1, R9, #221249536
l420: addGTs R11, R1, #1073741826
l421: addVS R11, R5, R11
l422: addGE R8, R5, #15616
l423: add R7, R0, R6
l424: adds R7, R10, R0, ASR #8
l425: addCS R8, R2, #352256
l426: addHI R2, R2, R9
l427: addVSs R4, R10, R7, LSL R14
l428: add R2, R8, R6, RRX 
l429: addGE R5, R0, #5312
l430: addGEs R1, R5, R3, RRX 
l431: addHIs R7, R9, R15
l432: adds R14, R11, R5, ROR #16
l433: addGTs R8, R8, R4, LSR #30
l434: addVSs R6, R6, #1744830464
l435: addMI R9, R0, R10, LSL R4
l436: add R6, R11, R5
l437: addLE R12, R12, #8388608
l438: add R2, R11, R4, RRX 
l439: addLE R1, R0, R11
l440: adds R7, R3, R11, ROR R3
l441: addGE R11, R14, #1073741886
l442: addEQ R7, R5, R9
l443: add R9, R1, R12, ROR R8
l444: addGE R3, R11, R10, LSL R4
l445: addLSs R3, R4, R14
l446: addNEs R10, R7, #3932160
l447: addGT R11, R4, R1
l448: addMIs R1, R9, R8
l449: addPLs R0, R9, R14
l450: addCC R4, R15, R10, ASR #5
l451: addEQ R5, R1, R6, ROR R3
l452: addCCs R3, R2, R0
l453: addLSs R14, R9, #-1610612723
l454: add R3, R5, R15, ASR #5
l455: addEQ R3, R3, R2, LSR #5
l456: addEQ R7, R11, R14, ROR #19
l457: adds R8, R2, #-1073741775
l458: add R3, R6, #169
l459: add R1, R14, R12
l460: addVS R8, R4, R12
l461: addVC R10, R14, R7, RRX 
l462: addCCs R3, R3, #2688
l463: adds R0, R0, #13762560
l464: addGT R5, R11, R1, ASR R3
l465: addNE R3, R2, R0
l466: addVSs R3, R0, R11, RRX 
l467: addCSs R14, R11, R14
l468: add R6, R7, R7
l469: addLSs R5, R5, R15
l470: addNEs R0, R6, R0, RRX 
l471: addMIs R9, R0, R15
l472: addVSs R6, R15, R7
l473: adds R9, R9, R11, LSL R4
l474: addPL R14, R3, #33030144
l475: adds R9, R11, R8, ASR R8
l476: addLEs R1, R7, R5, ASR R10
l477: adds R11, R7, R9, ROR #13
l478: adds R1, R1, #368
l479: addCCs R1, R5, #817889280
l480: addCSs R9, R5, #96
l481: addLTs R2, R8, R6, ROR #5
l482: adds R0, R7, R7, RRX 
l483: addLE R0, R14, R14, LSR #10
l484: addPL R0, R15, R3
l485: addVS R0, R0, R15, LSL #5
l486: addLT R6, R11, R12, ASR R14
l487: addVS R6, R2, R11, RRX 
l488: addHIs R0, R14, #552960
l489: addVS R11, R12, R7
l490: addLEs R5, R8, R4, RRX 
l491: addGE R11, R5, R8, RRX 
l492: addGE R11, R6, R11, LSL R10
l493: addNE R4, R7, R15, ROR #2
l494: adds R0, R3, R3
l495: adds R10, R8, #2342912
l496: addHI R1, R0, #5242880
l497: addEQs R8, R0, R8
l498: adds R1, R8, R5, LSR #20
l499: addGTs R9, R9, #64487424
l500: addNEs R12, R4, #76
l501: adds R10, R5, R8, LSR R14
l502: adds R8, R1, R5, RRX 
l503: addLEs R14, R4, #39583744
l504: addCC R5, R14, R1
l505: addVC R14, R7, R4, LSL R7
l506: addMI R7, R7, R12
l507: addHI R12, R14, R6, LSR R4
l508: add R5, R12, R7, LSR #20
l509: addVSs R5, R5, R1, ASR #21
l510: addMI R11, R1, #-603979776
l511: add R4, R2, R2, LSL #21
l512: addEQs R6, R4, R4, RRX 
l513: adds R9, R5, R15
l514: add R0, R12, R1, RRX 
l515: addLEs R7, R7, R9, ROR #7
l516: addVS R2, R10, #-1342177280
l517: add R4, R7, R7, LSL R6
l518: add R0, R14, R5, ASR R6
l519: addGT R3, R15, R6, RRX 
l520: add R12, R10, #572
l521: add R0, R7, R8, ASR R6
l522: addVCs R12, R7, R0
l523: addHIs R3, R6, #-603979775
l524: addPL R14, R9, R10
l525: adds R11, R3, R6, ROR R12
l526: addCSs R6, R11, R8, ROR #24
l527: adds R11, R14, R6
l528: add R14, R8, #40108032
l529: addEQ R11, R14, #1124073472
l530: addGTs R10, R5, R11
l531: addGTs R0, R4, R1, RRX 
l532: addGE R8, R1, R15
l533: addNE R7, R5, #60416
l534: addVCs R4, R12, R5, RRX 
l535: adds R7, R1, R6, ASR #28
l536: addLSs R1, R6, R3
l537: addEQs R8, R1, #19968
l538: addLS R6, R4, R15, ASR #0
l539: addLE R0, R8, R10
l540: adds R2, R14, R5, LSR #1
l541: addVC R7, R5, #55574528
l542: adds R4, R1, R15
l543: add R7, R2, R15, RRX 
l544: addMIs R11, R6, R8, ROR #23
l545: adds R14, R6, #54788096
l546: add R11, R10, #-2147483612
l547: addGE R3, R1, #3696
l548: addNE R9, R5, R4
l549: addLT R5, R8, R6, RRX 
l550: addLE R7, R11, #30720
l551: adds R9, R2, R2
l552: adds R0, R8, R14, LSR #26
l553: add R4, R1, R6, LSL R1
l554: add R3, R11, #2260992
l555: addNEs R9, R2, R3, ROR R12
l556: add R9, R14, R9, ASR R7
l557: addGEs R1, R12, #65
l558: addHI R11, R11, R1, RRX 
l559: add R2, R4, #3840
l560: addVSs R7, R8, #15488
l561: addGEs R4, R12, R11
l562: addGE R12, R6, R1, ASR #12
l563: adds R6, R7, R10
l564: addEQ R3, R4, #68608
l565: addHIs R10, R7, R2, RRX 
l566: addLEs R0, R0, R9, ROR #10
l567: add R5, R3, R8, RRX 
l568: addLTs R1, R12, R8, RRX 
l569: adds R7, R10, #-335544320
l570: add R4, R2, R12
l571: adds R12, R14, R11, ROR #1
l572: adds R0, R6, R8, LSL #3
l573: addMI R11, R10, R14, RRX 
l574: addCCs R7, R11, R10, RRX 
l575: add R7, R14, R10
l576: addMI R10, R9, R11, LSL R3
l577: addPLs R8, R12, R12
l578: addGE R10, R15, R5
l579: addNEs R12, R15, R6
l580: adds R14, R7, R7, ROR #4
l581: adds R6, R11, R9
l582: addNE R8, R15, R8
l583: addGE R5, R11, R6, RRX 
l584: adds R11, R15, R9, ROR #11
l585: adds R1, R6, R1, ASR R9
l586: add R2, R5, R12, RRX 
l587: add R11, R14, R12
l588: adds R4, R14, #2160
l589: adds R6, R8, #2899968
l590: add R11, R4, R12
l591: addVC R5, R4, #6356992
l592: addMIs R7, R11, R7, ASR R4
l593: addPL R14, R15, R8, LSL #10
l594: adds R10, R1, #114688
l595: addVS R3, R12, R1, ASR R6
l596: add R1, R5, R3
l597: addLS R9, R10, R14
l598: addCC R11, R15, R6, RRX 
l599: addVCs R11, R10, R2, ASR R8
l600: addVC R14, R2, R2, ASR R6
l601: adds R1, R0, R0, RRX 
l602: add R7, R5, #424
l603: add R12, R10, #2768
l604: adds R2, R14, R15
l605: add R6, R10, R1
l606: addLEs R12, R6, R14
l607: add R2, R14, R15
l608: addLE R0, R8, #1392640
l609: addLTs R14, R7, R10
l610: adds R2, R7, #2539520
l611: addHI R7, R3, #-1342177280
l612: addLTs R10, R3, R15, LSL #17
l613: addLT R0, R15, R3
l614: add R4, R0, R1, LSL #3
l615: add R4, R1, R10, ASR #0
l616: add R4, R15, R4
l617: add R5, R15, R5
l618: addVS R3, R8, R11, ASR R9
l619: adds R6, R2, R9
l620: addVC R2, R1, #-2147483633
l621: addGE R6, R7, R5, ASR R0
l622: addLSs R3, R11, R6, LSR #11
l623: addVCs R1, R1, R14, ASR #18
l624: add R10, R5, R3, RRX 
l625: addGTs R0, R0, R10, LSR R9
l626: addLS R1, R14, R3, ASR R6
l627: addLEs R14, R9, R3
l628: addVSs R12, R4, R6, ROR #8
l629: adds R9, R15, #7
l630: addCC R1, R11, R1, LSR R8
l631: add R3, R14, R9, ROR R7
l632: addHI R8, R12, R1
l633: addPLs R5, R10, R9, LSL R4
l634: addMIs R6, R5, R10, LSL #27
l635: addCCs R3, R3, R9, LSL R8
l636: addEQ R2, R7, R1, LSR #16
l637: adds R14, R5, #264241152
l638: addCC R4, R7, #786432
l639: addMI R9, R5, R10
l640: adds R10, R3, R4
l641: addLS R11, R4, R0, ROR #17
l642: addVC R8, R4, R6, LSR R8
l643: add R4, R14, #29
l644: addLSs R14, R5, #5696
l645: addGTs R0, R14, R9, ASR R4
l646: adds R0, R1, R3, LSR R1
l647: addGEs R7, R7, R9
l648: addMI R14, R8, R5, ASR #19
l649: adds R3, R15, R8, ROR #13
l650: adds R4, R8, #1610612742
l651: adds R10, R7, R10, RRX 
l652: addMIs R6, R3, #3997696
l653: addLS R0, R5, R14, ASR #28
l654: add R1, R2, R6, RRX 
l655: add R2, R5, R15, ROR #23
l656: addLS R8, R0, R10
l657: addGEs R9, R3, R9, ASR #8
l658: addLS R5, R1, R1
l659: addCS R12, R4, R1, ROR #12
l660: addVS R12, R0, R2, LSL #22
l661: adds R3, R6, #54784
l662: add R14, R7, R7
l663: addGE R12, R14, #51712
l664: addHIs R9, R9, R0, ASR #28
l665: add R12, R7, R6
l666: add R14, R2, R14, ASR R2
l667: addMI R11, R9, R5, LSR R8
l668: addCS R8, R7, R1
l669: adds R3, R15, R9
l670: addVCs R3, R10, R4, LSL #0
l671: addCS R4, R11, R3, LSL R0
l672: adds R0, R11, R7, RRX 
l673: add R0, R4, #604
l674: adds R6, R7, R9
l675: addLT R5, R3, R10, LSR #12
l676: addGE R11, R4, R2
l677: add R4, R9, R9, ROR #20
l678: addPL R2, R12, R5, ASR R10
l679: adds R7, R9, #805306375
l680: addCS R1, R2, #193986560
l681: add R6, R6, #28672
l682: addMI R7, R12, R12, RRX 
l683: adds R10, R14, #3735552
l684: addGE R6, R5, #2160
l685: addVSs R12, R6, R15
l686: addGT R1, R12, R12
l687: adds R9, R3, R0
l688: addNE R2, R1, R6, LSR #20
l689: add R1, R5, #61440
l690: adds R2, R8, R6, ROR R6
l691: addHIs R12, R8, R4, LSL R14
l692: adds R4, R4, R1, ASR R6
l693: addVSs R3, R6, R4, RRX 
l694: add R1, R2, R12, ASR #17
l695: addNE R5, R2, R15, LSR #0
l696: addVSs R7, R12, R10, ASR R7
l697: addLTs R2, R4, R14, ROR #30
l698: addNEs R12, R8, R2, ROR #3
l699: addGE R11, R7, R3
l700: addLT R2, R14, R8
l701: addLT R1, R6, #696
l702: add R1, R0, R10, RRX 
l703: adds R1, R3, #109051904
l704: addLSs R5, R8, #185344
l705: addHI R7, R4, R5
l706: add R11, R2, #143
l707: addNE R1, R7, R14
l708: add R0, R15, #1327104
l709: addEQ R6, R11, R12, ASR R5
l710: addMI R14, R4, R11, ASR R11
l711: addCC R10, R6, R4
l712: addNEs R2, R2, R11, LSR #13
l713: adds R6, R5, #-1811939328
l714: add R1, R8, R2, LSL R4
l715: add R9, R10, R11, LSR #28
l716: adds R10, R12, R3
l717: addHI R3, R1, R3, LSR #30
l718: addPL R4, R7, R5
l719: addGT R3, R5, R0
l720: addVS R2, R4, R11, LSR R3
l721: addLS R3, R5, R12
l722: addGT R11, R3, R5, ASR R8
l723: add R8, R12, R2, ASR #25
l724: add R3, R4, #2097152
l725: adds R5, R6, R7, ROR R4
l726: addVS R4, R12, R2
l727: add R11, R1, #121
l728: add R6, R9, #1568
l729: adds R9, R2, R12
l730: adds R0, R4, R12
l731: addMIs R8, R7, #48234496
l732: addHI R4, R14, R5, LSR R8
l733: add R11, R10, R10
l734: addLE R1, R4, R14, ASR #0
l735: add R2, R1, R10, ASR R5
l736: add R9, R7, R7, LSR #24
l737: addCS R3, R10, R6
l738: adds R2, R12, R12
l739: addMI R1, R1, R0, ASR #15
l740: addMIs R8, R0, #2176
l741: add R4, R4, #8192
l742: addGT R10, R6, R3
l743: add R2, R7, R10, LSR #2
l744: adds R12, R7, R0, ROR #15
l745: addLS R2, R3, R1, ASR R14
l746: add R4, R12, R15, RRX 
l747: addMIs R4, R14, R3, LSL #29
l748: addPLs R11, R14, R14, LSL #11
l749: add R14, R3, #9830400
l750: add R11, R5, R4
l751: addMIs R1, R10, R10, LSL #21
l752: addCC R14, R1, #3833856
l753: add R5, R8, #1312
l754: addCSs R11, R8, R8, LSL R4
l755: addVC R12, R6, R1, LSL R10
l756: add R10, R2, #38
l757: addGT R12, R10, R6, LSL #25
l758: adds R4, R14, R11, ROR R8
l759: addGEs R2, R0, R0
l760: addLE R5, R10, R3
l761: addCC R7, R5, R1, LSL #27
l762: addVS R12, R8, R2, ASR R11
l763: addCC R12, R0, R11, RRX 
l764: add R2, R5, R11, ASR R5
l765: addGE R11, R15, R2
l766: addGT R6, R0, #5767168
l767: adds R1, R0, #110592
l768: addHI R14, R6, R9, RRX 
l769: addLSs R8, R4, R4, RRX 
l770: add R2, R14, R3, LSR R6
l771: addPLs R1, R8, #245760
l772: adds R10, R9, R2
l773: adds R5, R10, R1, LSR R4
l774: addVCs R10, R12, #7340032
l775: adds R12, R0, R4
l776: addNE R9, R9, R3, LSL #3
l777: addVC R9, R1, #1610612737
l778: adds R7, R1, #54016
l779: addGT R11, R4, R2
l780: add R2, R11, #13120
l781: addPL R7, R8, R12, ASR #15
l782: addEQ R6, R6, R2, ROR R9
l783: addGE R11, R10, R1, RRX 
l784: addCC R11, R9, R2
l785: addCC R4, R5, #659456
l786: addVSs R4, R1, R9, RRX 
l787: adds R12, R11, #27648
l788: adds R6, R4, #-335544319
l789: addLTs R14, R3, #176
l790: addLT R7, R6, R6, ASR R1
l791: addLS R14, R0, #-1073741809
l792: add R11, R6, R2
l793: addCSs R14, R9, R2, LSL R12
l794: adds R5, R3, R2, ASR R4
l795: addLEs R6, R3, R0, ROR R6
l796: addGTs R4, R5, R0, ROR #11
l797: addPL R2, R15, #548864
l798: addGT R9, R4, R3
l799: adds R7, R14, R2
l800: addVS R8, R1, #32512
l801: add R3, R0, R8
l802: addVS R2, R5, #400
l803: addPLs R4, R15, R5
l804: addPL R1, R10, R2, LSR #3
l805: addLSs R2, R3, R11, ASR #21
l806: addPLs R4, R9, R1, LSR #8
l807: addVCs R10, R3, R2, LSL R0
l808: addHI R12, R2, #1024
l809: addCS R0, R6, #624
l810: add R12, R8, R7
l811: add R10, R10, R10, ROR R8
l812: add R7, R5, R7
l813: addCS R10, R6, R3
l814: adds R0, R11, R2
l815: add R11, R10, R6
l816: addVC R4, R9, #1140850688
l817: add R12, R6, R14, ROR R11
l818: addVCs R3, R11, R3
l819: addCC R7, R3, R14, ROR R1
l820: addLE R11, R1, R14, LSL R8
l821: adds R1, R10, R9, LSL #18
l822: addEQs R4, R7, R5
l823: addGE R1, R9, #859832320
l824: addGE R8, R3, R14, LSL #3
l825: addPL R12, R4, #654311424
l826: addCSs R2, R9, #36352
l827: addVCs R2, R8, R12, LSR #14
l828: adds R5, R1, R0, ASR #7
l829: addVCs R5, R2, R11, ASR R0
l830: addVSs R9, R8, #223232
l831: add R11, R11, #172032
l832: adds R4, R12, R7, ASR #12
l833: addVS R7, R15, #248
l834: adds R6, R8, R14
l835: addNE R2, R1, #33554432
l836: addGEs R5, R15, R14
l837: addLE R4, R6, R2, ROR R6
l838: addLT R4, R9, R0, LSR R6
l839: add R7, R6, R10, ROR R2
l840: addVSs R7, R5, R8, ROR R8
l841: add R7, R8, R8, RRX 
l842: addEQ R0, R3, R10
l843: addHIs R11, R5, R2, RRX 
l844: adds R9, R11, R9, LSL #21
l845: addMIs R10, R12, R4
l846: addCCs R0, R8, R5, RRX 
l847: addGEs R6, R1, R8
l848: addNE R1, R10, R9
l849: addCS R14, R15, R0, RRX 
l850: add R7, R2, R3, RRX 
l851: addCSs R3, R10, R6
l852: addLE R7, R11, R12
l853: addVSs R12, R14, R9
l854: add R9, R1, R2, ROR R10
l855: add R10, R4, R2, ROR R10
l856: addPL R6, R2, R9, LSL #13
l857: adds R14, R11, R15
l858: adds R12, R1, R15
l859: addVC R4, R5, #176160768
l860: adds R5, R2, R0, LSR #12
l861: addLT R5, R11, R0, LSL R3
l862: addCCs R5, R14, R1
l863: adds R14, R3, R12, LSR R10
l864: addHIs R7, R3, R9, RRX 
l865: add R6, R4, R2
l866: addHIs R11, R0, R2, RRX 
l867: addGTs R6, R4, #5888
l868: adds R11, R10, R4, RRX 
l869: adds R14, R10, R6
l870: adds R8, R7, R0, LSL #11
l871: addLT R5, R10, #532
l872: addHI R5, R9, R11, RRX 
l873: addPL R4, R5, R7, ASR #29
l874: addPLs R3, R12, R10, LSL #9
l875: add R3, R0, #1308622848
l876: add R8, R4, R1, ASR R10
l877: addGTs R14, R2, R9, RRX 
l878: add R11, R8, R14, LSL R8
l879: adds R10, R3, R4
l880: addNE R9, R3, R1
l881: addVS R12, R2, R14
l882: addGTs R2, R9, R15, LSL #14
l883: adds R2, R3, R8
l884: addVCs R5, R8, #935329792
l885: addGTs R4, R15, R5, RRX 
l886: addLSs R3, R12, R4, LSR #7
l887: addGEs R2, R0, R14, RRX 
l888: addVC R4, R2, #0
l889: add R7, R2, R11, RRX 
l890: adds R2, R9, R3, ASR R3
l891: adds R12, R8, R14, RRX 
l892: addLE R10, R1, R12, LSR #10
l893: addGT R9, R12, R3
l894: addNE R7, R4, R7, ROR #6
l895: addNEs R2, R4, #33
l896: addLE R12, R7, R9, ASR R0
l897: add R1, R11, R8, RRX 
l898: addGT R2, R14, R8, RRX 
l899: add R8, R8, R4
l900: addHI R6, R1, R0, LSL R11
l901: add R14, R2, R3
l902: addCC R3, R6, R7, LSR #20
l903: add R0, R0, R0, LSR R10
l904: adds R11, R3, R8, LSL R1
l905: adds R9, R10, R14, ROR R14
l906: adds R11, R3, R9, RRX 
l907: add R3, R6, R12, ROR R10
l908: addLE R8, R12, R11
l909: adds R7, R12, #255
l910: addEQs R0, R8, R3, LSL R12
l911: add R9, R2, R12, LSL #5
l912: add R6, R11, #612
l913: addEQs R2, R7, #6
l914: add R10, R1, #131072
l915: addHIs R7, R10, #34865152
l916: addHI R9, R15, #-603979776
l917: adds R8, R8, R6
l918: addVC R0, R5, R10, ASR #26
l919: addMIs R4, R7, R5
l920: add R9, R1, R12, RRX 
l921: addVS R8, R5, R1
l922: addMI R6, R1, R14, LSR #28
l923: addLSs R8, R12, #643072
l924: adds R14, R12, R8, ROR #11
l925: add R11, R8, R11, RRX 
l926: addMI R1, R8, R0, LSR R1
l927: adds R7, R10, R5
l928: addLTs R5, R15, R14, LSL #15
l929: addMI R11, R14, R5, RRX 
l930: addEQ R8, R9, R6, RRX 
l931: adds R8, R1, R7, LSL #23
l932: addHIs R10, R12, R2
l933: addLEs R14, R0, R1, ROR #11
l934: addMI R8, R12, R7, ASR R4
l935: add R7, R2, #204472320
l936: add R8, R7, R15, LSR #12
l937: add R10, R4, R0, ASR R9
l938: addPL R4, R0, #-1325400064
l939: addLSs R14, R9, R9
l940: addVSs R6, R1, R1, LSR R12
l941: adds R11, R1, R8, LSR R2
l942: add R9, R3, R14
l943: addLE R10, R3, #-1610612736
l944: add R5, R15, #2736128
l945: adds R3, R2, R1, ROR R5
l946: addCSs R6, R11, R14
l947: addEQs R9, R15, R15
l948: add R6, R12, R8, LSL #19
l949: addLS R0, R3, R5, ROR R12
l950: adds R14, R15, #8585216
l951: addGTs R10, R10, R4
l952: addEQs R5, R7, R0
l953: add R14, R15, R8, RRX 
l954: adds R9, R14, #3664
l955: addGEs R12, R12, R15, RRX 
l956: addGT R12, R12, R1, ASR #29
l957: adds R0, R7, #19922944
l958: addLEs R4, R1, R7, LSR #30
l959: addGTs R3, R6, R0, ASR R7
l960: adds R1, R0, R7
l961: addPLs R3, R6, R12
l962: addPLs R8, R11, R5, RRX 
l963: addCC R6, R14, R6, ROR #12
l964: addPL R1, R11, R15, RRX 
l965: addPLs R11, R7, R8, ASR #14
l966: addVC R8, R0, R1, RRX 
l967: add R1, R2, #532480
l968: addLEs R4, R12, #248
l969: addGTs R3, R12, R11
l970: adds R6, R5, R0, ASR #4
l971: add R3, R6, R5, ASR R9
l972: addHIs R7, R0, #4194304
l973: addNE R1, R2, R4
l974: add R5, R5, R4
l975: add R14, R2, R6, RRX 
l976: addEQ R12, R8, R12, ASR #4
l977: addGT R14, R5, R4, ROR R9
l978: addEQ R10, R9, #737280
l979: addCC R5, R14, R1, ASR R7
l980: addGE R14, R5, R1
l981: addMIs R5, R2, R14, LSL R3
l982: add R5, R0, R3
l983: addVCs R10, R4, R0, RRX 
l984: add R1, R5, R12
l985: addLTs R12, R10, R8, ASR #24
l986: adds R12, R5, #244318208
l987: adds R5, R11, R2, LSR #3
l988: addEQ R1, R5, #704643072
l989: add R7, R7, R7
l990: add R1, R14, R2, RRX 
l991: addVSs R11, R7, #4352
l992: addHIs R3, R8, R10, LSR #7
l993: addCSs R11, R7, R7
l994: addCC R7, R5, R2, ROR #1
l995: addPLs R14, R4, #142336
l996: addPL R11, R3, R7, LSL #6
l997: add R1, R5, R12, ASR R11
l998: addVCs R7, R10, R6, LSL #27
l999: addLSs R12, R1, R1, ASR R14
l1000: addGTs R14, R11, R14
end: b end

