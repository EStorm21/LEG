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
val1: .word 1281227264
next1:ldr R2, val2
b next2
val2: .word 2335285238
next2:ldr R3, val3
b next3
val3: .word 2882285013
next3:ldr R4, val4
b next4
val4: .word 1827137010
next4:ldr R5, val5
b next5
val5: .word 2548797236
next5:ldr R6, val6
b next6
val6: .word 2335564082
next6:ldr R7, val7
b next7
val7: .word 3877446450
next7:ldr R8, val8
b next8
val8: .word 1752856168
next8:ldr R9, val9
b next9
val9: .word 623205285
next9:ldr R10, val10
b next10
val10: .word 2873586388
next10:ldr R11, val11
b next11
val11: .word 2396304986
next11:ldr R12, val12
b next12
val12: .word 3286643086
next12:ldr R14, val14
b next14
val14: .word 3893166842

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 2757857683
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 1370557097
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3903147823
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 1698137977
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 2709387897
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 3408876751
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 398463977
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 296572413
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 473695376
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 633321631
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 2602587285
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 508559778
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 1757950560
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 510021163
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 4021722918
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 2996708472
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 2119254596
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 1146541411
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 1094435865
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 2334557236
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 2464201305
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: addLT R8, R9, R11, RRX 
l2: adds R8, R12, #2256
l3: add R3, R12, R14
l4: adds R4, R10, R10, LSR R4
l5: add R14, R4, R1, ASR R9
l6: ldr R2, l8
l7: b l9
l8: .word 1048552
l9: swpGTb R3, R10, [R2]
l10: ldr R14, l12
l11: b l13
l12: .word 1048500
l13: swpb R6, R2, [R14]
l14: add R2, R0, R7, ASR R7
l15: ldr R9, l17
l16: b l18
l17: .word 1048512
l18: swpLTb R4, R3, [R9]
l19: ldr R11, l21
l20: b l22
l21: .word 1048484
l22: swpb R8, R10, [R11]
l23: adds R0, R1, R14, RRX 
l24: addPL R4, R4, #71303168
l25: adds R9, R2, R5
l26: addVCs R4, R12, R2, ROR R12
l27: add R14, R3, R10, RRX 
l28: ldr R14, l30
l29: b l31
l30: .word 1048528
l31: swpGTb R8, R6, [R14]
l32: add R10, R6, R0
l33: ldr R14, l35
l34: b l36
l35: .word 1048480
l36: swpLTb R1, R1, [R14]
l37: addHI R2, R0, R8
l38: add R1, R6, R3
l39: ldr R6, l41
l40: b l42
l41: .word 1048512
l42: swpb R11, R11, [R6]
l43: addGE R1, R9, R2, LSR R6
l44: addEQs R10, R3, R12
l45: addLSs R12, R1, #2048
l46: adds R10, R14, R7
l47: add R7, R12, R14, RRX 
l48: addCS R10, R7, R5, LSR #4
l49: adds R2, R14, R3, ASR #20
l50: ldr R0, l52
l51: b l53
l52: .word 1048504
l53: swpLTb R1, R8, [R0]
l54: ldr R5, l56
l55: b l57
l56: .word 1048496
l57: swpPLb R2, R4, [R5]
l58: ldr R14, l60
l59: b l61
l60: .word 1048548
l61: swpLSb R4, R7, [R14]
l62: adds R8, R9, R1, ASR #27
l63: addEQ R6, R14, R2
l64: ldr R3, l66
l65: b l67
l66: .word 1048520
l67: swpLTb R1, R9, [R3]
l68: ldr R12, l70
l69: b l71
l70: .word 1048496
l71: swpCSb R5, R11, [R12]
l72: ldr R2, l74
l73: b l75
l74: .word 1048480
l75: swpCCb R1, R3, [R2]
l76: ldr R3, l78
l77: b l79
l78: .word 1048536
l79: swpLTb R4, R6, [R3]
l80: addPL R0, R9, R9
l81: addLSs R2, R6, #999424
l82: addLS R9, R7, R8
l83: ldr R8, l85
l84: b l86
l85: .word 1048516
l86: swpMIb R4, R7, [R8]
l87: addEQs R7, R5, R8
l88: add R9, R2, R8, ASR #20
l89: addGT R6, R3, R7, LSR #25
l90: ldr R0, l92
l91: b l93
l92: .word 1048480
l93: swpb R9, R11, [R0]
l94: ldr R14, l96
l95: b l97
l96: .word 1048512
l97: swpb R12, R11, [R14]
l98: addEQ R1, R10, R5, ASR #24
l99: ldr R1, l101
l100: b l102
l101: .word 1048496
l102: swpHIb R5, R12, [R1]
l103: ldr R8, l105
l104: b l106
l105: .word 1048488
l106: swpb R7, R11, [R8]
l107: ldr R5, l109
l108: b l110
l109: .word 1048508
l110: swpLEb R11, R6, [R5]
l111: add R0, R9, R4, RRX 
l112: addEQs R5, R9, R3
l113: ldr R0, l115
l114: b l116
l115: .word 1048504
l116: swpb R7, R6, [R0]
l117: adds R10, R5, R2, ROR R11
l118: ldr R1, l120
l119: b l121
l120: .word 1048528
l121: swpPLb R10, R0, [R1]
l122: ldr R4, l124
l123: b l125
l124: .word 1048500
l125: swpb R8, R7, [R4]
l126: ldr R6, l128
l127: b l129
l128: .word 1048492
l129: swpb R2, R10, [R6]
l130: addCS R5, R8, R0, ROR R11
l131: addVCs R9, R4, R6, LSR #8
l132: ldr R7, l134
l133: b l135
l134: .word 1048528
l135: swpMIb R6, R5, [R7]
l136: ldr R11, l138
l137: b l139
l138: .word 1048532
l139: swpPLb R3, R1, [R11]
l140: ldr R2, l142
l141: b l143
l142: .word 1048536
l143: swpb R9, R0, [R2]
l144: addGTs R5, R2, R5, LSR R8
l145: add R8, R12, #64512
l146: addGT R14, R8, R6, ASR R14
l147: addPL R6, R10, R14
l148: addLE R2, R3, R6
l149: ldr R14, l151
l150: b l152
l151: .word 1048524
l152: swpb R3, R5, [R14]
l153: ldr R14, l155
l154: b l156
l155: .word 1048548
l156: swpb R10, R3, [R14]
l157: adds R7, R4, R11
l158: addCCs R4, R5, R8, ASR R0
l159: addCS R5, R12, #-469762048
l160: adds R10, R9, R1, ASR R3
l161: addEQ R1, R7, R5, LSL #16
l162: adds R6, R5, R15, LSL #19
l163: ldr R10, l165
l164: b l166
l165: .word 1048516
l166: swpGTb R4, R12, [R10]
l167: ldr R2, l169
l168: b l170
l169: .word 1048480
l170: swpb R3, R0, [R2]
l171: addLSs R9, R9, #53
l172: ldr R8, l174
l173: b l175
l174: .word 1048544
l175: swpGTb R9, R14, [R8]
l176: adds R0, R9, R8, RRX 
l177: addLT R0, R3, R0, ASR R3
l178: ldr R4, l180
l179: b l181
l180: .word 1048552
l181: swpb R11, R7, [R4]
l182: ldr R3, l184
l183: b l185
l184: .word 1048496
l185: swpb R14, R10, [R3]
l186: ldr R2, l188
l187: b l189
l188: .word 1048548
l189: swpVCb R10, R7, [R2]
l190: ldr R11, l192
l191: b l193
l192: .word 1048504
l193: swpb R8, R7, [R11]
l194: ldr R6, l196
l195: b l197
l196: .word 1048520
l197: swpb R4, R10, [R6]
l198: ldr R8, l200
l199: b l201
l200: .word 1048512
l201: swpEQb R12, R11, [R8]
l202: addCC R14, R12, R5
l203: ldr R4, l205
l204: b l206
l205: .word 1048500
l206: swpHIb R1, R12, [R4]
l207: addVC R3, R8, R9, LSL #13
l208: ldr R5, l210
l209: b l211
l210: .word 1048508
l211: swpb R11, R3, [R5]
l212: ldr R10, l214
l213: b l215
l214: .word 1048552
l215: swpb R12, R9, [R10]
l216: addLE R14, R5, R5, LSL R8
l217: add R14, R9, #2048
l218: ldr R5, l220
l219: b l221
l220: .word 1048544
l221: swpNEb R0, R1, [R5]
l222: addCCs R8, R6, R10, LSL #0
l223: adds R6, R1, R8, ASR R6
l224: ldr R0, l226
l225: b l227
l226: .word 1048480
l227: swpb R2, R10, [R0]
l228: ldr R1, l230
l229: b l231
l230: .word 1048512
l231: swpNEb R0, R8, [R1]
l232: adds R7, R7, R4
l233: addHI R14, R2, #83886080
l234: addEQs R10, R8, R11, RRX 
l235: addGT R2, R0, R11
l236: adds R3, R2, R15
l237: ldr R5, l239
l238: b l240
l239: .word 1048512
l240: swpb R0, R6, [R5]
l241: ldr R12, l243
l242: b l244
l243: .word 1048540
l244: swpb R9, R0, [R12]
l245: ldr R1, l247
l246: b l248
l247: .word 1048488
l248: swpGTb R8, R12, [R1]
l249: adds R4, R11, R0
l250: ldr R9, l252
l251: b l253
l252: .word 1048536
l253: swpb R2, R5, [R9]
l254: ldr R4, l256
l255: b l257
l256: .word 1048500
l257: swpEQb R5, R11, [R4]
l258: addVCs R11, R3, R9, ASR R3
l259: addPL R12, R8, R2
l260: addNE R2, R11, #36864
l261: ldr R1, l263
l262: b l264
l263: .word 1048532
l264: swpb R12, R6, [R1]
l265: ldr R7, l267
l266: b l268
l267: .word 1048544
l268: swpHIb R10, R9, [R7]
l269: addGEs R12, R4, R2, LSL #1
l270: ldr R11, l272
l271: b l273
l272: .word 1048480
l273: swpEQb R9, R4, [R11]
l274: ldr R8, l276
l275: b l277
l276: .word 1048532
l277: swpLSb R1, R1, [R8]
l278: ldr R14, l280
l279: b l281
l280: .word 1048496
l281: swpb R5, R3, [R14]
l282: addVS R0, R11, R3
l283: addCC R5, R14, R6, RRX 
l284: adds R14, R8, R12, ASR R0
l285: addLTs R0, R1, #73728
l286: add R2, R14, R9
l287: ldr R4, l289
l288: b l290
l289: .word 1048528
l290: swpb R6, R14, [R4]
l291: ldr R10, l293
l292: b l294
l293: .word 1048516
l294: swpb R1, R7, [R10]
l295: add R2, R1, R7
l296: add R4, R4, R4, RRX 
l297: ldr R1, l299
l298: b l300
l299: .word 1048552
l300: swpHIb R7, R11, [R1]
l301: adds R10, R7, #524
l302: ldr R3, l304
l303: b l305
l304: .word 1048488
l305: swpb R10, R8, [R3]
l306: ldr R3, l308
l307: b l309
l308: .word 1048532
l309: swpb R2, R4, [R3]
l310: addVS R14, R2, R5
l311: ldr R9, l313
l312: b l314
l313: .word 1048484
l314: swpb R2, R12, [R9]
l315: ldr R7, l317
l316: b l318
l317: .word 1048484
l318: swpb R12, R6, [R7]
l319: ldr R1, l321
l320: b l322
l321: .word 1048500
l322: swpLSb R11, R4, [R1]
l323: addLTs R7, R10, #373293056
l324: addLS R11, R6, R14, LSR R10
l325: adds R6, R11, R14
l326: adds R12, R3, R4, ASR R1
l327: addEQs R6, R5, R12, RRX 
l328: add R1, R0, R4
l329: addMIs R11, R9, #369098752
l330: addLS R8, R3, #11075584
l331: add R8, R7, R14, LSR #26
l332: addHI R5, R0, R14
l333: add R12, R14, R10, LSL R11
l334: ldr R10, l336
l335: b l337
l336: .word 1048520
l337: swpHIb R14, R6, [R10]
l338: ldr R6, l340
l339: b l341
l340: .word 1048488
l341: swpLTb R3, R3, [R6]
l342: add R0, R10, R11, ASR #9
l343: ldr R9, l345
l344: b l346
l345: .word 1048496
l346: swpb R11, R12, [R9]
l347: ldr R14, l349
l348: b l350
l349: .word 1048528
l350: swpb R0, R11, [R14]
l351: ldr R0, l353
l352: b l354
l353: .word 1048532
l354: swpb R14, R3, [R0]
l355: addMIs R8, R6, R11, ASR R14
l356: adds R5, R10, R2
l357: ldr R3, l359
l358: b l360
l359: .word 1048548
l360: swpEQb R5, R9, [R3]
l361: ldr R3, l363
l362: b l364
l363: .word 1048500
l364: swpb R0, R8, [R3]
l365: ldr R4, l367
l366: b l368
l367: .word 1048488
l368: swpVCb R8, R6, [R4]
l369: ldr R6, l371
l370: b l372
l371: .word 1048544
l372: swpGTb R7, R8, [R6]
l373: adds R4, R9, R15
l374: add R3, R4, #604
l375: ldr R4, l377
l376: b l378
l377: .word 1048524
l378: swpMIb R2, R3, [R4]
l379: adds R1, R4, R7
l380: add R5, R12, R4, RRX 
l381: addGE R3, R8, R4
l382: ldr R12, l384
l383: b l385
l384: .word 1048480
l385: swpEQb R3, R2, [R12]
l386: addEQ R12, R6, R10
l387: adds R0, R7, #124928
l388: addPL R9, R3, R4, LSL #23
l389: ldr R12, l391
l390: b l392
l391: .word 1048540
l392: swpLSb R10, R11, [R12]
l393: adds R8, R12, R1
l394: ldr R12, l396
l395: b l397
l396: .word 1048488
l397: swpGEb R8, R3, [R12]
l398: addCSs R11, R1, R12, LSR #29
l399: adds R12, R6, #16000
l400: addVC R4, R9, R15, LSL #29
l401: ldr R0, l403
l402: b l404
l403: .word 1048540
l404: swpVCb R10, R7, [R0]
l405: ldr R11, l407
l406: b l408
l407: .word 1048516
l408: swpLSb R4, R8, [R11]
l409: ldr R2, l411
l410: b l412
l411: .word 1048484
l412: swpb R9, R7, [R2]
l413: addEQs R12, R7, R6, LSR #20
l414: adds R14, R4, R2, LSR #8
l415: ldr R4, l417
l416: b l418
l417: .word 1048548
l418: swpb R0, R14, [R4]
l419: ldr R14, l421
l420: b l422
l421: .word 1048516
l422: swpVCb R7, R0, [R14]
l423: adds R4, R15, #745472
l424: ldr R4, l426
l425: b l427
l426: .word 1048520
l427: swpGEb R0, R9, [R4]
l428: ldr R7, l430
l429: b l431
l430: .word 1048528
l431: swpMIb R9, R6, [R7]
l432: ldr R2, l434
l433: b l435
l434: .word 1048512
l435: swpMIb R7, R6, [R2]
l436: ldr R4, l438
l437: b l439
l438: .word 1048496
l439: swpb R10, R8, [R4]
l440: ldr R4, l442
l441: b l443
l442: .word 1048536
l443: swpCSb R11, R10, [R4]
l444: adds R3, R6, R2, ASR #3
l445: addEQ R7, R7, R9
l446: ldr R0, l448
l447: b l449
l448: .word 1048484
l449: swpEQb R7, R4, [R0]
l450: addLT R3, R12, R7, LSR #29
l451: ldr R2, l453
l452: b l454
l453: .word 1048536
l454: swpLSb R3, R12, [R2]
l455: ldr R11, l457
l456: b l458
l457: .word 1048496
l458: swpb R9, R7, [R11]
l459: ldr R7, l461
l460: b l462
l461: .word 1048512
l462: swpEQb R11, R1, [R7]
l463: ldr R3, l465
l464: b l466
l465: .word 1048496
l466: swpb R7, R8, [R3]
l467: ldr R6, l469
l468: b l470
l469: .word 1048488
l470: swpMIb R7, R2, [R6]
l471: addLTs R10, R11, #11075584
l472: addGT R1, R5, R14, LSR R10
l473: ldr R11, l475
l474: b l476
l475: .word 1048500
l476: swpb R9, R1, [R11]
l477: ldr R7, l479
l478: b l480
l479: .word 1048544
l480: swpHIb R11, R11, [R7]
l481: addNEs R2, R10, R6, RRX 
l482: ldr R2, l484
l483: b l485
l484: .word 1048496
l485: swpb R10, R10, [R2]
l486: addPL R11, R5, R4, LSL #26
l487: addVS R6, R5, #536870919
l488: ldr R1, l490
l489: b l491
l490: .word 1048532
l491: swpb R8, R2, [R1]
l492: addVC R3, R5, R1
l493: ldr R5, l495
l494: b l496
l495: .word 1048540
l496: swpEQb R4, R6, [R5]
l497: ldr R6, l499
l498: b l500
l499: .word 1048544
l500: swpHIb R14, R7, [R6]
l501: addPL R10, R1, R8
l502: addCCs R2, R8, R10, ASR #15
l503: adds R9, R11, R9, ASR #17
l504: ldr R10, l506
l505: b l507
l506: .word 1048520
l507: swpb R3, R11, [R10]
l508: add R2, R4, #732
l509: addVSs R7, R14, R5, RRX 
l510: ldr R6, l512
l511: b l513
l512: .word 1048496
l513: swpPLb R7, R8, [R6]
l514: addNEs R2, R2, R14, LSL #8
l515: ldr R11, l517
l516: b l518
l517: .word 1048484
l518: swpb R9, R12, [R11]
l519: addNE R3, R9, R4, LSL #3
l520: ldr R3, l522
l521: b l523
l522: .word 1048512
l523: swpGEb R4, R5, [R3]
l524: add R14, R2, R11
l525: addPLs R3, R2, #503808
l526: addPLs R14, R2, R14, ASR R5
l527: addGTs R7, R0, #0
l528: ldr R7, l530
l529: b l531
l530: .word 1048544
l531: swpGEb R6, R10, [R7]
l532: add R11, R0, R6, LSL #16
l533: addMI R7, R1, R12, LSR #11
l534: ldr R7, l536
l535: b l537
l536: .word 1048512
l537: swpVCb R8, R0, [R7]
l538: ldr R11, l540
l539: b l541
l540: .word 1048492
l541: swpb R12, R8, [R11]
l542: ldr R11, l544
l543: b l545
l544: .word 1048488
l545: swpVCb R2, R10, [R11]
l546: addCCs R0, R14, #24903680
l547: adds R12, R3, #376832
l548: addEQs R4, R2, R6
l549: adds R0, R14, R2, ASR #29
l550: ldr R8, l552
l551: b l553
l552: .word 1048496
l553: swpLTb R0, R7, [R8]
l554: ldr R9, l556
l555: b l557
l556: .word 1048540
l557: swpb R4, R5, [R9]
l558: ldr R4, l560
l559: b l561
l560: .word 1048528
l561: swpb R14, R3, [R4]
l562: addCSs R8, R1, R5, ASR #27
l563: adds R6, R1, R14
l564: ldr R14, l566
l565: b l567
l566: .word 1048488
l567: swpMIb R10, R1, [R14]
l568: ldr R6, l570
l569: b l571
l570: .word 1048548
l571: swpb R9, R4, [R6]
l572: add R1, R15, R4
l573: ldr R8, l575
l574: b l576
l575: .word 1048528
l576: swpVCb R4, R7, [R8]
l577: ldr R10, l579
l578: b l580
l579: .word 1048540
l580: swpVCb R0, R2, [R10]
l581: ldr R1, l583
l582: b l584
l583: .word 1048508
l584: swpb R14, R3, [R1]
l585: addHI R14, R6, R8, RRX 
l586: addCSs R3, R12, #2240
l587: add R1, R14, R4
l588: add R6, R6, R0, LSR #29
l589: ldr R1, l591
l590: b l592
l591: .word 1048488
l592: swpb R10, R2, [R1]
l593: ldr R11, l595
l594: b l596
l595: .word 1048496
l596: swpb R8, R4, [R11]
l597: ldr R7, l599
l598: b l600
l599: .word 1048516
l600: swpCSb R4, R6, [R7]
l601: ldr R4, l603
l602: b l604
l603: .word 1048516
l604: swpb R3, R2, [R4]
l605: addCSs R14, R4, #200278016
l606: ldr R5, l608
l607: b l609
l608: .word 1048532
l609: swpLSb R1, R14, [R5]
l610: addLEs R1, R4, R4, ROR R14
l611: adds R9, R6, R5, ROR #5
l612: addMIs R3, R8, R7
l613: ldr R14, l615
l614: b l616
l615: .word 1048540
l616: swpb R1, R2, [R14]
l617: ldr R14, l619
l618: b l620
l619: .word 1048548
l620: swpb R2, R8, [R14]
l621: ldr R7, l623
l622: b l624
l623: .word 1048496
l624: swpVSb R5, R1, [R7]
l625: ldr R9, l627
l626: b l628
l627: .word 1048488
l628: swpb R8, R0, [R9]
l629: ldr R1, l631
l630: b l632
l631: .word 1048552
l632: swpVCb R5, R12, [R1]
l633: add R9, R15, R1, LSR #0
l634: addCCs R5, R9, R0, LSR R12
l635: ldr R7, l637
l636: b l638
l637: .word 1048488
l638: swpMIb R12, R9, [R7]
l639: adds R8, R14, R14, ASR R12
l640: add R3, R7, R3, RRX 
l641: addLTs R9, R11, R6, RRX 
l642: add R7, R5, #32
l643: ldr R6, l645
l644: b l646
l645: .word 1048512
l646: swpLTb R7, R4, [R6]
l647: adds R5, R10, R9, ROR R8
l648: ldr R14, l650
l649: b l651
l650: .word 1048548
l651: swpCCb R9, R2, [R14]
l652: addNE R0, R5, #266240
l653: addEQs R0, R10, #-1879048189
l654: ldr R9, l656
l655: b l657
l656: .word 1048512
l657: swpMIb R2, R10, [R9]
l658: adds R8, R8, #26112
l659: ldr R8, l661
l660: b l662
l661: .word 1048548
l662: swpGTb R11, R2, [R8]
l663: ldr R0, l665
l664: b l666
l665: .word 1048500
l666: swpb R6, R14, [R0]
l667: ldr R10, l669
l668: b l670
l669: .word 1048504
l670: swpb R9, R9, [R10]
l671: ldr R4, l673
l672: b l674
l673: .word 1048516
l674: swpCCb R11, R5, [R4]
l675: ldr R6, l677
l676: b l678
l677: .word 1048532
l678: swpb R4, R7, [R6]
l679: addVS R6, R10, R6, RRX 
l680: addVS R9, R2, R3, RRX 
l681: addMIs R3, R12, #536870921
l682: add R7, R0, #281018368
l683: ldr R7, l685
l684: b l686
l685: .word 1048544
l686: swpb R9, R3, [R7]
l687: ldr R9, l689
l688: b l690
l689: .word 1048540
l690: swpMIb R6, R11, [R9]
l691: ldr R12, l693
l692: b l694
l693: .word 1048552
l694: swpLSb R1, R4, [R12]
l695: ldr R10, l697
l696: b l698
l697: .word 1048504
l698: swpGTb R8, R14, [R10]
l699: addLS R3, R4, R0, LSR R5
l700: addVSs R3, R10, #901775360
l701: ldr R8, l703
l702: b l704
l703: .word 1048552
l704: swpb R5, R10, [R8]
l705: ldr R5, l707
l706: b l708
l707: .word 1048532
l708: swpLTb R14, R8, [R5]
l709: add R2, R0, R9
l710: ldr R3, l712
l711: b l713
l712: .word 1048500
l713: swpb R6, R10, [R3]
l714: add R1, R15, #614400
l715: ldr R3, l717
l716: b l718
l717: .word 1048496
l718: swpb R9, R10, [R3]
l719: ldr R5, l721
l720: b l722
l721: .word 1048488
l722: swpb R6, R11, [R5]
l723: ldr R4, l725
l724: b l726
l725: .word 1048484
l726: swpCSb R3, R8, [R4]
l727: add R14, R9, R4, ROR R14
l728: ldr R6, l730
l729: b l731
l730: .word 1048504
l731: swpb R7, R3, [R6]
l732: ldr R9, l734
l733: b l735
l734: .word 1048496
l735: swpb R2, R12, [R9]
l736: addMI R0, R8, R10, LSR R0
l737: ldr R12, l739
l738: b l740
l739: .word 1048520
l740: swpb R9, R10, [R12]
l741: ldr R0, l743
l742: b l744
l743: .word 1048516
l744: swpGEb R9, R12, [R0]
l745: addNEs R9, R4, R15, RRX 
l746: ldr R3, l748
l747: b l749
l748: .word 1048500
l749: swpLEb R14, R9, [R3]
l750: ldr R0, l752
l751: b l753
l752: .word 1048532
l753: swpb R4, R14, [R0]
l754: ldr R1, l756
l755: b l757
l756: .word 1048548
l757: swpb R14, R2, [R1]
l758: add R10, R14, R5
l759: add R7, R10, R6
l760: ldr R3, l762
l761: b l763
l762: .word 1048488
l763: swpNEb R2, R7, [R3]
l764: ldr R1, l766
l765: b l767
l766: .word 1048504
l767: swpHIb R11, R7, [R1]
l768: ldr R0, l770
l769: b l771
l770: .word 1048524
l771: swpHIb R4, R3, [R0]
l772: ldr R6, l774
l773: b l775
l774: .word 1048552
l775: swpb R7, R14, [R6]
l776: adds R0, R14, R11
l777: addCCs R8, R0, R7
l778: ldr R6, l780
l779: b l781
l780: .word 1048516
l781: swpb R5, R7, [R6]
l782: addCS R5, R8, R7
l783: ldr R14, l785
l784: b l786
l785: .word 1048532
l786: swpb R2, R7, [R14]
l787: ldr R4, l789
l788: b l790
l789: .word 1048504
l790: swpMIb R7, R14, [R4]
l791: ldr R6, l793
l792: b l794
l793: .word 1048516
l794: swpb R5, R12, [R6]
l795: add R2, R7, #44288
l796: ldr R12, l798
l797: b l799
l798: .word 1048540
l799: swpNEb R14, R8, [R12]
l800: addVS R11, R12, #-922746880
l801: add R5, R9, #12608
l802: ldr R14, l804
l803: b l805
l804: .word 1048488
l805: swpb R0, R0, [R14]
l806: add R3, R15, R11, RRX 
l807: addGT R0, R15, R12, RRX 
l808: adds R5, R5, R8, LSL #21
l809: ldr R7, l811
l810: b l812
l811: .word 1048480
l812: swpLEb R10, R5, [R7]
l813: addLS R9, R5, R7, ROR R0
l814: ldr R10, l816
l815: b l817
l816: .word 1048532
l817: swpb R4, R5, [R10]
l818: ldr R11, l820
l819: b l821
l820: .word 1048528
l821: swpPLb R9, R0, [R11]
l822: addLSs R0, R12, R14
l823: adds R10, R2, #348160
l824: addGE R2, R8, R10, LSL R10
l825: addCCs R14, R15, R6
l826: add R10, R0, R3, LSL R11
l827: ldr R2, l829
l828: b l830
l829: .word 1048552
l830: swpLTb R12, R8, [R2]
l831: addGEs R5, R14, R9
l832: ldr R9, l834
l833: b l835
l834: .word 1048496
l835: swpb R14, R2, [R9]
l836: ldr R2, l838
l837: b l839
l838: .word 1048548
l839: swpGTb R10, R9, [R2]
l840: addLEs R9, R9, R12, ROR R4
l841: addMI R14, R4, R6, LSR R0
l842: ldr R5, l844
l843: b l845
l844: .word 1048512
l845: swpVSb R9, R1, [R5]
l846: ldr R12, l848
l847: b l849
l848: .word 1048504
l849: swpb R14, R5, [R12]
l850: addLSs R9, R7, #12779520
l851: add R8, R0, R6, LSL R2
l852: addNE R10, R1, R15
l853: ldr R14, l855
l854: b l856
l855: .word 1048484
l856: swpb R4, R4, [R14]
l857: ldr R4, l859
l858: b l860
l859: .word 1048544
l860: swpb R10, R8, [R4]
l861: ldr R11, l863
l862: b l864
l863: .word 1048532
l864: swpVCb R7, R14, [R11]
l865: addPLs R12, R1, R14, RRX 
l866: add R12, R3, R14, LSL #14
l867: ldr R8, l869
l868: b l870
l869: .word 1048532
l870: swpb R12, R1, [R8]
l871: ldr R12, l873
l872: b l874
l873: .word 1048524
l874: swpEQb R4, R5, [R12]
l875: addLSs R4, R14, R5, ROR R0
l876: add R0, R8, R11, ASR R4
l877: ldr R1, l879
l878: b l880
l879: .word 1048540
l880: swpb R12, R11, [R1]
l881: addLTs R10, R14, R5
l882: adds R3, R6, R8, LSL #28
l883: addEQ R14, R3, R9, ROR R14
l884: addCS R7, R10, R2, LSL #19
l885: addNEs R9, R6, R8
l886: addCC R11, R3, R8, ROR R11
l887: ldr R8, l889
l888: b l890
l889: .word 1048492
l890: swpCCb R11, R5, [R8]
l891: add R2, R9, #81920
l892: ldr R9, l894
l893: b l895
l894: .word 1048548
l895: swpb R4, R7, [R9]
l896: ldr R3, l898
l897: b l899
l898: .word 1048524
l899: swpb R2, R6, [R3]
l900: ldr R9, l902
l901: b l903
l902: .word 1048496
l903: swpb R5, R5, [R9]
l904: ldr R6, l906
l905: b l907
l906: .word 1048540
l907: swpMIb R9, R12, [R6]
l908: addCCs R3, R15, #570425344
l909: add R9, R14, #3866624
l910: ldr R5, l912
l911: b l913
l912: .word 1048504
l913: swpb R6, R4, [R5]
l914: add R6, R14, R2, LSR R8
l915: addPLs R12, R9, R4, LSR #27
l916: addHIs R0, R14, #331350016
l917: adds R11, R7, #1140850688
l918: ldr R3, l920
l919: b l921
l920: .word 1048504
l921: swpPLb R9, R12, [R3]
l922: ldr R4, l924
l923: b l925
l924: .word 1048512
l925: swpCCb R9, R11, [R4]
l926: addLT R8, R7, #33
l927: addVSs R10, R9, #5898240
l928: ldr R1, l930
l929: b l931
l930: .word 1048504
l931: swpb R6, R11, [R1]
l932: ldr R1, l934
l933: b l935
l934: .word 1048540
l935: swpLTb R11, R4, [R1]
l936: adds R4, R4, R11, RRX 
l937: ldr R8, l939
l938: b l940
l939: .word 1048484
l940: swpb R1, R4, [R8]
l941: ldr R8, l943
l942: b l944
l943: .word 1048512
l944: swpLSb R9, R0, [R8]
l945: ldr R6, l947
l946: b l948
l947: .word 1048504
l948: swpCSb R8, R2, [R6]
l949: ldr R11, l951
l950: b l952
l951: .word 1048548
l952: swpb R4, R9, [R11]
l953: ldr R9, l955
l954: b l956
l955: .word 1048484
l956: swpLEb R2, R4, [R9]
l957: ldr R8, l959
l958: b l960
l959: .word 1048484
l960: swpHIb R14, R10, [R8]
l961: ldr R4, l963
l962: b l964
l963: .word 1048512
l964: swpCCb R5, R7, [R4]
l965: ldr R8, l967
l966: b l968
l967: .word 1048536
l968: swpb R2, R7, [R8]
l969: adds R8, R11, R3
l970: addLT R9, R10, R15
l971: ldr R8, l973
l972: b l974
l973: .word 1048508
l974: swpb R0, R10, [R8]
l975: ldr R5, l977
l976: b l978
l977: .word 1048500
l978: swpGEb R6, R3, [R5]
l979: ldr R4, l981
l980: b l982
l981: .word 1048528
l982: swpb R2, R7, [R4]
l983: adds R6, R3, R0, LSL #28
l984: addGE R10, R5, #1073741884
l985: adds R9, R1, R9, LSR R1
l986: addGTs R2, R11, R8, ASR #12
l987: ldr R9, l989
l988: b l990
l989: .word 1048528
l990: swpGEb R1, R7, [R9]
l991: addHIs R14, R0, R7, LSL #14
l992: ldr R6, l994
l993: b l995
l994: .word 1048520
l995: swpEQb R0, R11, [R6]
l996: ldr R8, l998
l997: b l999
l998: .word 1048492
l999: swpb R10, R11, [R8]
l1000: adds R8, R14, R4, ASR R8
end: b end

