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
val1: .word 2223810868
next1:ldr R2, val2
b next2
val2: .word 3669710726
next2:ldr R3, val3
b next3
val3: .word 836051776
next3:ldr R4, val4
b next4
val4: .word 4029501521
next4:ldr R5, val5
b next5
val5: .word 1182203332
next5:ldr R6, val6
b next6
val6: .word 3795752504
next6:ldr R7, val7
b next7
val7: .word 954373986
next7:ldr R8, val8
b next8
val8: .word 3069474219
next8:ldr R9, val9
b next9
val9: .word 2575084486
next9:ldr R10, val10
b next10
val10: .word 739707282
next10:ldr R11, val11
b next11
val11: .word 279557107
next11:ldr R12, val12
b next12
val12: .word 3423991604
next12:ldr R14, val14
b next14
val14: .word 4251495829

# INITIALIZING STACK

next14: ldr R1, val15
b next15
val15: .word 4061653319
next15:str R1, [sp, #0]
ldr R1, val16
b next16
val16: .word 1459475138
next16:str R1, [sp, #-4]
ldr R1, val17
b next17
val17: .word 3382771617
next17:str R1, [sp, #-8]
ldr R1, val18
b next18
val18: .word 2393731528
next18:str R1, [sp, #-12]
ldr R1, val19
b next19
val19: .word 2563318156
next19:str R1, [sp, #-16]
ldr R1, val20
b next20
val20: .word 125186252
next20:str R1, [sp, #-20]
ldr R1, val21
b next21
val21: .word 2086096570
next21:str R1, [sp, #-24]
ldr R1, val22
b next22
val22: .word 2563256588
next22:str R1, [sp, #-28]
ldr R1, val23
b next23
val23: .word 3881690336
next23:str R1, [sp, #-32]
ldr R1, val24
b next24
val24: .word 2775427606
next24:str R1, [sp, #-36]
ldr R1, val25
b next25
val25: .word 2641028504
next25:str R1, [sp, #-40]
ldr R1, val26
b next26
val26: .word 550845851
next26:str R1, [sp, #-44]
ldr R1, val27
b next27
val27: .word 1825279166
next27:str R1, [sp, #-48]
ldr R1, val28
b next28
val28: .word 1030555334
next28:str R1, [sp, #-52]
ldr R1, val29
b next29
val29: .word 4031337481
next29:str R1, [sp, #-56]
ldr R1, val30
b next30
val30: .word 1763275703
next30:str R1, [sp, #-60]
ldr R1, val31
b next31
val31: .word 309290631
next31:str R1, [sp, #-64]
ldr R1, val32
b next32
val32: .word 2162686172
next32:str R1, [sp, #-68]
ldr R1, val33
b next33
val33: .word 2031350930
next33:str R1, [sp, #-72]
ldr R1, val34
b next34
val34: .word 1199897850
next34:str R1, [sp, #-76]
ldr R1, val35
b next35
val35: .word 1268505436
next35:str R1, [sp, #-80]

# MAIN PROGRAM

l1: addCC R11, R6, #1680
l2: ldr R8, l4
l3: b l5
l4: .word 1048492
l5: swp R12, R2, [R8]
l6: ldr R0, l8
l7: b l9
l8: .word 1048520
l9: swp R6, R5, [R0]
l10: ldr R9, l12
l11: b l13
l12: .word 1048552
l13: swpEQ R11, R10, [R9]
l14: adds R11, R1, R0
l15: adds R7, R5, R11, LSR R4
l16: ldr R2, l18
l17: b l19
l18: .word 1048536
l19: swpCS R0, R11, [R2]
l20: ldr R5, l22
l21: b l23
l22: .word 1048504
l23: swpLS R8, R10, [R5]
l24: addPL R7, R2, R11
l25: ldr R14, l27
l26: b l28
l27: .word 1048532
l28: swpGE R8, R10, [R14]
l29: ldr R3, l31
l30: b l32
l31: .word 1048480
l32: swpVC R12, R1, [R3]
l33: adds R3, R15, #805306375
l34: addCSs R11, R3, R5, RRX 
l35: addPLs R6, R12, R8
l36: add R5, R3, R8, LSL #23
l37: ldr R1, l39
l38: b l40
l39: .word 1048488
l40: swpGE R2, R2, [R1]
l41: ldr R8, l43
l42: b l44
l43: .word 1048492
l44: swp R6, R2, [R8]
l45: ldr R1, l47
l46: b l48
l47: .word 1048548
l48: swpHI R9, R8, [R1]
l49: ldr R6, l51
l50: b l52
l51: .word 1048540
l52: swp R3, R0, [R6]
l53: ldr R7, l55
l54: b l56
l55: .word 1048488
l56: swpCS R10, R2, [R7]
l57: addVC R1, R4, R11
l58: add R0, R7, R3, RRX 
l59: ldr R14, l61
l60: b l62
l61: .word 1048492
l62: swpCS R7, R0, [R14]
l63: addLTs R10, R12, R3
l64: adds R7, R14, R0, ROR R5
l65: adds R14, R7, R14, ASR R4
l66: add R1, R10, R14, ROR #5
l67: ldr R4, l69
l68: b l70
l69: .word 1048548
l70: swp R14, R10, [R4]
l71: adds R10, R14, R5, LSR R10
l72: adds R4, R1, R7, ASR R2
l73: adds R6, R0, R3, ROR R14
l74: ldr R8, l76
l75: b l77
l76: .word 1048520
l77: swpMI R4, R0, [R8]
l78: ldr R10, l80
l79: b l81
l80: .word 1048516
l81: swpPL R2, R0, [R10]
l82: ldr R12, l84
l83: b l85
l84: .word 1048524
l85: swp R3, R0, [R12]
l86: addEQs R4, R9, #7864320
l87: ldr R8, l89
l88: b l90
l89: .word 1048524
l90: swp R11, R2, [R8]
l91: ldr R5, l93
l92: b l94
l93: .word 1048492
l94: swp R0, R9, [R5]
l95: ldr R9, l97
l96: b l98
l97: .word 1048516
l98: swp R6, R6, [R9]
l99: ldr R4, l101
l100: b l102
l101: .word 1048536
l102: swpLT R0, R3, [R4]
l103: addGT R4, R10, #12845056
l104: ldr R3, l106
l105: b l107
l106: .word 1048536
l107: swp R12, R2, [R3]
l108: ldr R0, l110
l109: b l111
l110: .word 1048508
l111: swpEQ R4, R10, [R0]
l112: addMIs R8, R2, R4
l113: ldr R9, l115
l114: b l116
l115: .word 1048504
l116: swpNE R0, R1, [R9]
l117: addNEs R10, R6, R10
l118: addNE R10, R4, R7, RRX 
l119: ldr R2, l121
l120: b l122
l121: .word 1048508
l122: swpLE R4, R3, [R2]
l123: ldr R2, l125
l124: b l126
l125: .word 1048480
l126: swp R6, R4, [R2]
l127: ldr R9, l129
l128: b l130
l129: .word 1048536
l130: swp R5, R12, [R9]
l131: addPLs R3, R5, #3040
l132: ldr R9, l134
l133: b l135
l134: .word 1048552
l135: swpGT R14, R8, [R9]
l136: ldr R11, l138
l137: b l139
l138: .word 1048524
l139: swp R7, R1, [R11]
l140: ldr R11, l142
l141: b l143
l142: .word 1048492
l143: swpCS R6, R5, [R11]
l144: addMI R9, R8, R14, ASR #13
l145: ldr R7, l147
l146: b l148
l147: .word 1048528
l148: swp R2, R3, [R7]
l149: ldr R4, l151
l150: b l152
l151: .word 1048508
l152: swp R2, R2, [R4]
l153: ldr R3, l155
l154: b l156
l155: .word 1048492
l156: swp R0, R1, [R3]
l157: addVCs R9, R0, R4, ASR #14
l158: addEQs R12, R15, R8
l159: adds R3, R9, #7616
l160: addGTs R1, R5, R7, RRX 
l161: ldr R10, l163
l162: b l164
l163: .word 1048480
l164: swp R9, R11, [R10]
l165: ldr R12, l167
l166: b l168
l167: .word 1048524
l168: swpVS R14, R6, [R12]
l169: addPLs R1, R6, #708837376
l170: addGT R14, R0, R0
l171: addNEs R12, R1, R14
l172: ldr R5, l174
l173: b l175
l174: .word 1048528
l175: swp R2, R11, [R5]
l176: ldr R14, l178
l177: b l179
l178: .word 1048552
l179: swpLS R1, R1, [R14]
l180: addLE R9, R8, R12, LSL R5
l181: ldr R4, l183
l182: b l184
l183: .word 1048504
l184: swpHI R8, R9, [R4]
l185: addLEs R10, R5, R11, ROR #2
l186: ldr R9, l188
l187: b l189
l188: .word 1048520
l189: swpLT R7, R4, [R9]
l190: addEQ R11, R12, R14
l191: adds R2, R8, R10, RRX 
l192: addCSs R6, R6, R14
l193: ldr R11, l195
l194: b l196
l195: .word 1048516
l196: swpCS R5, R14, [R11]
l197: ldr R0, l199
l198: b l200
l199: .word 1048548
l200: swp R9, R1, [R0]
l201: addCSs R8, R5, R7
l202: ldr R4, l204
l203: b l205
l204: .word 1048528
l205: swp R3, R2, [R4]
l206: addGEs R3, R10, R10, ROR R1
l207: addGTs R7, R15, R8
l208: addMI R2, R11, #138412032
l209: ldr R1, l211
l210: b l212
l211: .word 1048528
l212: swpLE R4, R14, [R1]
l213: addLSs R2, R5, R0, RRX 
l214: addGE R9, R8, #43008
l215: ldr R12, l217
l216: b l218
l217: .word 1048524
l218: swpHI R9, R11, [R12]
l219: ldr R3, l221
l220: b l222
l221: .word 1048504
l222: swpGT R8, R11, [R3]
l223: ldr R7, l225
l224: b l226
l225: .word 1048492
l226: swpPL R2, R9, [R7]
l227: add R12, R0, R9, LSL R5
l228: add R9, R7, R11, LSL #9
l229: ldr R4, l231
l230: b l232
l231: .word 1048504
l232: swp R14, R8, [R4]
l233: ldr R3, l235
l234: b l236
l235: .word 1048500
l236: swp R12, R11, [R3]
l237: addGEs R0, R7, R7, ROR #13
l238: ldr R14, l240
l239: b l241
l240: .word 1048492
l241: swpCC R12, R9, [R14]
l242: ldr R8, l244
l243: b l245
l244: .word 1048484
l245: swp R14, R5, [R8]
l246: addVCs R6, R10, R9
l247: ldr R6, l249
l248: b l250
l249: .word 1048536
l250: swpGT R7, R2, [R6]
l251: addHIs R8, R3, R2, ASR R2
l252: ldr R7, l254
l253: b l255
l254: .word 1048496
l255: swpLE R4, R12, [R7]
l256: add R0, R15, R11
l257: ldr R4, l259
l258: b l260
l259: .word 1048552
l260: swpPL R14, R10, [R4]
l261: ldr R7, l263
l262: b l264
l263: .word 1048500
l264: swp R8, R6, [R7]
l265: ldr R11, l267
l266: b l268
l267: .word 1048540
l268: swpCC R3, R5, [R11]
l269: adds R1, R14, #1342177293
l270: ldr R3, l272
l271: b l273
l272: .word 1048524
l273: swp R1, R5, [R3]
l274: ldr R4, l276
l275: b l277
l276: .word 1048552
l277: swpLE R2, R9, [R4]
l278: addCCs R8, R5, R3, ROR R4
l279: addCC R6, R14, #252
l280: addVS R0, R3, R7, ROR #25
l281: adds R7, R3, R14, RRX 
l282: addNEs R5, R9, R12
l283: ldr R12, l285
l284: b l286
l285: .word 1048536
l286: swp R6, R10, [R12]
l287: addLTs R7, R14, R7, LSR #23
l288: addCS R3, R7, R10, ASR R9
l289: ldr R6, l291
l290: b l292
l291: .word 1048516
l292: swp R0, R12, [R6]
l293: ldr R9, l295
l294: b l296
l295: .word 1048548
l296: swpLS R6, R14, [R9]
l297: addLE R12, R8, R15
l298: ldr R1, l300
l299: b l301
l300: .word 1048508
l301: swpVC R7, R2, [R1]
l302: addLEs R6, R3, R7
l303: ldr R2, l305
l304: b l306
l305: .word 1048544
l306: swpLE R11, R8, [R2]
l307: ldr R7, l309
l308: b l310
l309: .word 1048528
l310: swp R8, R2, [R7]
l311: ldr R8, l313
l312: b l314
l313: .word 1048528
l314: swpCC R9, R14, [R8]
l315: addGT R5, R10, R0, RRX 
l316: adds R14, R11, R0
l317: addPLs R3, R14, R2
l318: ldr R9, l320
l319: b l321
l320: .word 1048484
l321: swpVS R8, R5, [R9]
l322: addGTs R14, R15, #1
l323: add R0, R12, R10, ASR R6
l324: ldr R0, l326
l325: b l327
l326: .word 1048532
l327: swp R3, R8, [R0]
l328: ldr R10, l330
l329: b l331
l330: .word 1048480
l331: swp R12, R5, [R10]
l332: addLEs R5, R6, R3, ROR #5
l333: add R6, R1, R5
l334: adds R1, R10, R12, ASR R8
l335: add R14, R0, R7, ASR R11
l336: adds R12, R6, #536870917
l337: ldr R5, l339
l338: b l340
l339: .word 1048548
l340: swpVC R1, R7, [R5]
l341: adds R11, R11, R8, LSL R8
l342: ldr R12, l344
l343: b l345
l344: .word 1048504
l345: swp R6, R10, [R12]
l346: ldr R4, l348
l347: b l349
l348: .word 1048552
l349: swpHI R1, R12, [R4]
l350: addVCs R8, R6, R2, LSR R3
l351: ldr R1, l353
l352: b l354
l353: .word 1048500
l354: swp R5, R0, [R1]
l355: ldr R12, l357
l356: b l358
l357: .word 1048520
l358: swp R14, R6, [R12]
l359: ldr R5, l361
l360: b l362
l361: .word 1048540
l362: swpLS R12, R14, [R5]
l363: ldr R10, l365
l364: b l366
l365: .word 1048492
l366: swp R1, R3, [R10]
l367: ldr R3, l369
l368: b l370
l369: .word 1048552
l370: swp R10, R7, [R3]
l371: ldr R9, l373
l372: b l374
l373: .word 1048520
l374: swpLS R1, R6, [R9]
l375: ldr R14, l377
l376: b l378
l377: .word 1048532
l378: swp R4, R11, [R14]
l379: addHIs R7, R5, R1, ROR #14
l380: addEQs R4, R7, R9, RRX 
l381: ldr R9, l383
l382: b l384
l383: .word 1048500
l384: swp R6, R4, [R9]
l385: ldr R14, l387
l386: b l388
l387: .word 1048532
l388: swp R3, R1, [R14]
l389: ldr R6, l391
l390: b l392
l391: .word 1048512
l392: swp R5, R2, [R6]
l393: ldr R3, l395
l394: b l396
l395: .word 1048496
l396: swpMI R0, R4, [R3]
l397: ldr R11, l399
l398: b l400
l399: .word 1048532
l400: swp R0, R3, [R11]
l401: ldr R7, l403
l402: b l404
l403: .word 1048492
l404: swpGE R11, R5, [R7]
l405: ldr R14, l407
l406: b l408
l407: .word 1048492
l408: swp R10, R5, [R14]
l409: ldr R9, l411
l410: b l412
l411: .word 1048552
l412: swp R3, R1, [R9]
l413: ldr R2, l415
l414: b l416
l415: .word 1048536
l416: swpVS R10, R1, [R2]
l417: addHI R6, R8, R6, ASR R14
l418: ldr R6, l420
l419: b l421
l420: .word 1048532
l421: swp R0, R5, [R6]
l422: addHI R9, R7, R14, RRX 
l423: addPL R5, R4, R10, LSL R3
l424: addLE R5, R6, R12, LSL R5
l425: addLTs R6, R4, R6, RRX 
l426: ldr R6, l428
l427: b l429
l428: .word 1048484
l429: swpNE R8, R11, [R6]
l430: adds R1, R0, #31457280
l431: ldr R12, l433
l432: b l434
l433: .word 1048536
l434: swp R0, R14, [R12]
l435: ldr R14, l437
l436: b l438
l437: .word 1048484
l438: swp R12, R11, [R14]
l439: ldr R11, l441
l440: b l442
l441: .word 1048512
l442: swpVS R12, R12, [R11]
l443: adds R9, R9, R4, ASR R5
l444: adds R3, R7, #9830400
l445: ldr R10, l447
l446: b l448
l447: .word 1048516
l448: swpVS R11, R6, [R10]
l449: add R7, R3, R14, ROR R12
l450: ldr R12, l452
l451: b l453
l452: .word 1048516
l453: swpNE R4, R1, [R12]
l454: addLS R14, R12, R1, LSL #16
l455: addGEs R11, R12, #512
l456: ldr R12, l458
l457: b l459
l458: .word 1048504
l459: swpCS R7, R1, [R12]
l460: addGE R0, R11, #45824
l461: ldr R1, l463
l462: b l464
l463: .word 1048504
l464: swpNE R9, R2, [R1]
l465: addLS R4, R10, #4
l466: add R8, R12, R6
l467: add R7, R3, #12032
l468: ldr R4, l470
l469: b l471
l470: .word 1048536
l471: swp R9, R14, [R4]
l472: add R4, R3, #-50331648
l473: ldr R4, l475
l474: b l476
l475: .word 1048488
l476: swp R0, R8, [R4]
l477: addLEs R3, R12, #50
l478: addLSs R0, R6, #1493172224
l479: add R1, R12, R3, LSL R12
l480: addCC R1, R1, R8, LSL R0
l481: addEQ R11, R8, R4, LSL #13
l482: addPLs R6, R8, R1, LSR R2
l483: ldr R5, l485
l484: b l486
l485: .word 1048528
l486: swp R9, R7, [R5]
l487: ldr R6, l489
l488: b l490
l489: .word 1048504
l490: swp R9, R2, [R6]
l491: ldr R11, l493
l492: b l494
l493: .word 1048540
l494: swp R12, R12, [R11]
l495: ldr R14, l497
l496: b l498
l497: .word 1048488
l498: swpNE R1, R3, [R14]
l499: adds R0, R8, #933888
l500: ldr R14, l502
l501: b l503
l502: .word 1048516
l503: swpGT R11, R7, [R14]
l504: ldr R2, l506
l505: b l507
l506: .word 1048540
l507: swpPL R0, R6, [R2]
l508: addNE R8, R7, #573440
l509: addCCs R6, R3, #-1342177271
l510: addLE R0, R11, R0
l511: ldr R7, l513
l512: b l514
l513: .word 1048516
l514: swpGE R2, R9, [R7]
l515: ldr R3, l517
l516: b l518
l517: .word 1048544
l518: swp R14, R11, [R3]
l519: adds R3, R3, R14, LSR #12
l520: ldr R14, l522
l521: b l523
l522: .word 1048520
l523: swpCC R1, R7, [R14]
l524: adds R11, R10, #1376256
l525: addHIs R7, R14, R12, ROR #27
l526: addVSs R12, R10, #59244544
l527: ldr R12, l529
l528: b l530
l529: .word 1048504
l530: swpPL R3, R14, [R12]
l531: addGEs R14, R2, #1179648
l532: ldr R4, l534
l533: b l535
l534: .word 1048484
l535: swpGT R1, R0, [R4]
l536: addLSs R11, R4, R14
l537: ldr R7, l539
l538: b l540
l539: .word 1048528
l540: swpHI R12, R0, [R7]
l541: ldr R4, l543
l542: b l544
l543: .word 1048516
l544: swp R10, R10, [R4]
l545: addCC R7, R0, R4, LSL R3
l546: ldr R6, l548
l547: b l549
l548: .word 1048492
l549: swpLE R14, R10, [R6]
l550: addPLs R0, R0, R11
l551: addLT R14, R2, R14, LSR R5
l552: addLT R5, R14, R2, LSR R9
l553: ldr R4, l555
l554: b l556
l555: .word 1048524
l556: swpLS R2, R12, [R4]
l557: ldr R14, l559
l558: b l560
l559: .word 1048548
l560: swpCS R12, R3, [R14]
l561: ldr R2, l563
l562: b l564
l563: .word 1048548
l564: swpPL R8, R14, [R2]
l565: ldr R14, l567
l566: b l568
l567: .word 1048536
l568: swp R12, R9, [R14]
l569: ldr R10, l571
l570: b l572
l571: .word 1048480
l572: swp R7, R4, [R10]
l573: ldr R4, l575
l574: b l576
l575: .word 1048548
l576: swpEQ R6, R3, [R4]
l577: ldr R3, l579
l578: b l580
l579: .word 1048520
l580: swp R0, R11, [R3]
l581: addLSs R6, R6, R12, RRX 
l582: adds R10, R3, R3, LSR R4
l583: ldr R8, l585
l584: b l586
l585: .word 1048548
l586: swp R1, R7, [R8]
l587: ldr R2, l589
l588: b l590
l589: .word 1048480
l590: swpPL R9, R7, [R2]
l591: addCC R10, R2, R9
l592: ldr R6, l594
l593: b l595
l594: .word 1048536
l595: swpPL R12, R11, [R6]
l596: ldr R10, l598
l597: b l599
l598: .word 1048480
l599: swpGT R1, R12, [R10]
l600: ldr R2, l602
l601: b l603
l602: .word 1048540
l603: swpLE R10, R3, [R2]
l604: ldr R9, l606
l605: b l607
l606: .word 1048500
l607: swp R8, R10, [R9]
l608: addCS R7, R2, R0, RRX 
l609: ldr R0, l611
l610: b l612
l611: .word 1048488
l612: swpGE R1, R5, [R0]
l613: ldr R8, l615
l614: b l616
l615: .word 1048512
l616: swp R3, R3, [R8]
l617: ldr R12, l619
l618: b l620
l619: .word 1048504
l620: swp R1, R3, [R12]
l621: ldr R9, l623
l622: b l624
l623: .word 1048532
l624: swp R2, R8, [R9]
l625: ldr R1, l627
l626: b l628
l627: .word 1048540
l628: swp R0, R14, [R1]
l629: ldr R5, l631
l630: b l632
l631: .word 1048548
l632: swpCC R2, R1, [R5]
l633: ldr R3, l635
l634: b l636
l635: .word 1048524
l636: swpEQ R14, R0, [R3]
l637: ldr R0, l639
l638: b l640
l639: .word 1048528
l640: swpMI R4, R2, [R0]
l641: adds R12, R11, R4, RRX 
l642: ldr R3, l644
l643: b l645
l644: .word 1048552
l645: swpCC R9, R8, [R3]
l646: ldr R14, l648
l647: b l649
l648: .word 1048488
l649: swpLS R7, R9, [R14]
l650: addVSs R6, R14, R11, ASR #29
l651: addLE R3, R14, R11, ASR R6
l652: ldr R8, l654
l653: b l655
l654: .word 1048508
l655: swp R4, R1, [R8]
l656: ldr R0, l658
l657: b l659
l658: .word 1048500
l659: swp R12, R11, [R0]
l660: ldr R4, l662
l661: b l663
l662: .word 1048508
l663: swp R6, R14, [R4]
l664: ldr R5, l666
l665: b l667
l666: .word 1048508
l667: swp R14, R11, [R5]
l668: ldr R5, l670
l669: b l671
l670: .word 1048520
l671: swpLS R1, R12, [R5]
l672: ldr R1, l674
l673: b l675
l674: .word 1048480
l675: swpGT R9, R6, [R1]
l676: ldr R7, l678
l677: b l679
l678: .word 1048480
l679: swpLT R14, R5, [R7]
l680: adds R0, R3, R4
l681: ldr R4, l683
l682: b l684
l683: .word 1048504
l684: swp R12, R7, [R4]
l685: ldr R4, l687
l686: b l688
l687: .word 1048484
l688: swpMI R11, R2, [R4]
l689: ldr R0, l691
l690: b l692
l691: .word 1048552
l692: swp R12, R11, [R0]
l693: ldr R7, l695
l694: b l696
l695: .word 1048524
l696: swpCS R5, R11, [R7]
l697: ldr R4, l699
l698: b l700
l699: .word 1048532
l700: swp R9, R12, [R4]
l701: ldr R6, l703
l702: b l704
l703: .word 1048544
l704: swp R10, R2, [R6]
l705: ldr R3, l707
l706: b l708
l707: .word 1048512
l708: swpGT R10, R14, [R3]
l709: addGTs R4, R14, R12
l710: ldr R12, l712
l711: b l713
l712: .word 1048512
l713: swpGT R5, R5, [R12]
l714: addPLs R11, R9, R10
l715: ldr R6, l717
l716: b l718
l717: .word 1048500
l718: swp R11, R5, [R6]
l719: addCSs R4, R4, R12
l720: ldr R14, l722
l721: b l723
l722: .word 1048536
l723: swp R9, R9, [R14]
l724: ldr R2, l726
l725: b l727
l726: .word 1048512
l727: swpLE R6, R7, [R2]
l728: adds R1, R14, R15
l729: addLT R9, R10, R2, RRX 
l730: ldr R10, l732
l731: b l733
l732: .word 1048504
l733: swpPL R11, R6, [R10]
l734: addCSs R1, R1, R7, LSR #18
l735: add R14, R7, R9
l736: ldr R8, l738
l737: b l739
l738: .word 1048492
l739: swp R2, R7, [R8]
l740: ldr R12, l742
l741: b l743
l742: .word 1048496
l743: swpEQ R3, R2, [R12]
l744: ldr R9, l746
l745: b l747
l746: .word 1048520
l747: swp R1, R7, [R9]
l748: ldr R1, l750
l749: b l751
l750: .word 1048552
l751: swpLE R7, R12, [R1]
l752: ldr R6, l754
l753: b l755
l754: .word 1048552
l755: swpGT R2, R5, [R6]
l756: ldr R8, l758
l757: b l759
l758: .word 1048516
l759: swp R7, R9, [R8]
l760: ldr R11, l762
l761: b l763
l762: .word 1048528
l763: swp R12, R0, [R11]
l764: ldr R4, l766
l765: b l767
l766: .word 1048512
l767: swp R8, R8, [R4]
l768: ldr R5, l770
l769: b l771
l770: .word 1048552
l771: swp R3, R3, [R5]
l772: ldr R8, l774
l773: b l775
l774: .word 1048516
l775: swpHI R11, R10, [R8]
l776: addLT R2, R6, R9
l777: ldr R6, l779
l778: b l780
l779: .word 1048552
l780: swpVS R4, R5, [R6]
l781: adds R6, R6, #44564480
l782: ldr R0, l784
l783: b l785
l784: .word 1048500
l785: swp R3, R3, [R0]
l786: addVCs R1, R7, #452
l787: ldr R4, l789
l788: b l790
l789: .word 1048524
l790: swp R3, R1, [R4]
l791: addHI R1, R9, R11
l792: adds R7, R11, R6, ROR #26
l793: addLSs R0, R14, R4, RRX 
l794: ldr R10, l796
l795: b l797
l796: .word 1048496
l797: swp R4, R1, [R10]
l798: ldr R3, l800
l799: b l801
l800: .word 1048524
l801: swpCS R10, R12, [R3]
l802: ldr R3, l804
l803: b l805
l804: .word 1048480
l805: swp R5, R0, [R3]
l806: ldr R4, l808
l807: b l809
l808: .word 1048512
l809: swp R11, R10, [R4]
l810: ldr R2, l812
l811: b l813
l812: .word 1048484
l813: swpGT R7, R4, [R2]
l814: addCS R5, R8, #-1073741794
l815: addVS R6, R5, R0, ROR R5
l816: addNE R7, R2, R14, LSL R6
l817: add R12, R4, #6291456
l818: ldr R7, l820
l819: b l821
l820: .word 1048536
l821: swpNE R11, R0, [R7]
l822: addVS R12, R7, #40960
l823: ldr R5, l825
l824: b l826
l825: .word 1048536
l826: swp R2, R7, [R5]
l827: add R10, R7, R9
l828: addLTs R9, R0, R6, RRX 
l829: ldr R12, l831
l830: b l832
l831: .word 1048524
l832: swpEQ R6, R6, [R12]
l833: add R2, R10, R3, RRX 
l834: ldr R5, l836
l835: b l837
l836: .word 1048504
l837: swpVC R4, R10, [R5]
l838: adds R4, R6, R7, ROR R14
l839: addMI R8, R9, R14
l840: ldr R0, l842
l841: b l843
l842: .word 1048536
l843: swpCC R5, R11, [R0]
l844: ldr R2, l846
l845: b l847
l846: .word 1048500
l847: swp R0, R6, [R2]
l848: addNEs R4, R11, R2, LSR R4
l849: ldr R10, l851
l850: b l852
l851: .word 1048552
l852: swpVS R2, R1, [R10]
l853: ldr R10, l855
l854: b l856
l855: .word 1048544
l856: swpLE R6, R9, [R10]
l857: ldr R3, l859
l858: b l860
l859: .word 1048484
l860: swp R12, R10, [R3]
l861: add R3, R2, R15, RRX 
l862: addLEs R14, R0, #-1258291200
l863: ldr R11, l865
l864: b l866
l865: .word 1048524
l866: swpMI R10, R7, [R11]
l867: addGE R1, R6, R10
l868: ldr R1, l870
l869: b l871
l870: .word 1048480
l871: swp R11, R10, [R1]
l872: ldr R12, l874
l873: b l875
l874: .word 1048552
l875: swp R0, R3, [R12]
l876: ldr R3, l878
l877: b l879
l878: .word 1048536
l879: swpEQ R1, R11, [R3]
l880: add R0, R5, R8, LSR R5
l881: ldr R10, l883
l882: b l884
l883: .word 1048484
l884: swp R2, R14, [R10]
l885: ldr R0, l887
l886: b l888
l887: .word 1048528
l888: swp R7, R9, [R0]
l889: addLEs R12, R1, R7
l890: add R11, R5, #33792
l891: ldr R3, l893
l892: b l894
l893: .word 1048512
l894: swp R1, R8, [R3]
l895: ldr R5, l897
l896: b l898
l897: .word 1048524
l898: swpGT R6, R11, [R5]
l899: addPLs R0, R12, R6, LSR #6
l900: addPLs R7, R1, R10, LSL #24
l901: ldr R5, l903
l902: b l904
l903: .word 1048520
l904: swpLS R0, R8, [R5]
l905: addPL R6, R3, #23552
l906: addLT R12, R5, #416
l907: ldr R11, l909
l908: b l910
l909: .word 1048544
l910: swpPL R1, R5, [R11]
l911: ldr R4, l913
l912: b l914
l913: .word 1048524
l914: swp R7, R11, [R4]
l915: add R10, R1, R3, ROR R3
l916: addHI R12, R8, R12, LSL #26
l917: ldr R1, l919
l918: b l920
l919: .word 1048548
l920: swpEQ R0, R4, [R1]
l921: ldr R6, l923
l922: b l924
l923: .word 1048480
l924: swpMI R8, R14, [R6]
l925: ldr R1, l927
l926: b l928
l927: .word 1048496
l928: swpVC R5, R0, [R1]
l929: addMI R2, R15, R4, LSL #6
l930: ldr R7, l932
l931: b l933
l932: .word 1048544
l933: swpCS R8, R1, [R7]
l934: ldr R0, l936
l935: b l937
l936: .word 1048524
l937: swpVC R10, R9, [R0]
l938: ldr R9, l940
l939: b l941
l940: .word 1048516
l941: swp R1, R11, [R9]
l942: ldr R2, l944
l943: b l945
l944: .word 1048520
l945: swpEQ R4, R10, [R2]
l946: add R11, R8, R3, RRX 
l947: addCCs R6, R10, R0, LSL R1
l948: ldr R12, l950
l949: b l951
l950: .word 1048500
l951: swpVS R4, R7, [R12]
l952: ldr R11, l954
l953: b l955
l954: .word 1048500
l955: swpCS R3, R0, [R11]
l956: ldr R9, l958
l957: b l959
l958: .word 1048496
l959: swpLT R4, R8, [R9]
l960: ldr R9, l962
l961: b l963
l962: .word 1048552
l963: swp R5, R2, [R9]
l964: adds R5, R5, #-2147483621
l965: addEQs R11, R12, R8
l966: ldr R10, l968
l967: b l969
l968: .word 1048480
l969: swpNE R8, R8, [R10]
l970: addPL R10, R6, R2, LSR #10
l971: ldr R1, l973
l972: b l974
l973: .word 1048504
l974: swp R12, R7, [R1]
l975: add R8, R2, R9, LSL #1
l976: addMIs R11, R4, R11, LSL #22
l977: adds R9, R11, #1073741887
l978: ldr R12, l980
l979: b l981
l980: .word 1048512
l981: swpGE R2, R10, [R12]
l982: addVCs R14, R12, R11, ROR #13
l983: ldr R2, l985
l984: b l986
l985: .word 1048544
l986: swp R10, R14, [R2]
l987: add R1, R0, R0, RRX 
l988: addVSs R7, R8, #1895825408
l989: addVS R4, R12, #-201326592
l990: ldr R7, l992
l991: b l993
l992: .word 1048532
l993: swpVC R5, R0, [R7]
l994: add R11, R5, R15, RRX 
l995: ldr R14, l997
l996: b l998
l997: .word 1048508
l998: swpLS R2, R7, [R14]
l999: ldr R1, l1001
l1000: b l1002
l1001: .word 1048504
l1002: swpHI R2, R8, [R1]
end: b end

