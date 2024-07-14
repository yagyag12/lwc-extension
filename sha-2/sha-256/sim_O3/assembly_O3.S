
sim_O3/my_program:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	1141                	addi	sp,sp,-16
   10096:	4581                	li	a1,0
   10098:	c422                	sw	s0,8(sp)
   1009a:	c606                	sw	ra,12(sp)
   1009c:	842a                	mv	s0,a0
   1009e:	444010ef          	jal	114e2 <__call_exitprocs>
   100a2:	f201a783          	lw	a5,-224(gp) # 1c960 <__stdio_exit_handler>
   100a6:	c391                	beqz	a5,100aa <exit+0x16>
   100a8:	9782                	jalr	a5
   100aa:	8522                	mv	a0,s0
   100ac:	0dc080ef          	jal	18188 <_exit>

000100b0 <main>:
   100b0:	1141                	addi	sp,sp,-16
   100b2:	c606                	sw	ra,12(sp)
   100b4:	286d                	jal	1016e <sha256_test>
   100b6:	cd09                	beqz	a0,100d0 <main+0x20>
   100b8:	65ed                	lui	a1,0x1b
   100ba:	88858593          	addi	a1,a1,-1912 # 1a888 <__clzsi2+0x9e>
   100be:	656d                	lui	a0,0x1b
   100c0:	89c50513          	addi	a0,a0,-1892 # 1a89c <__clzsi2+0xb2>
   100c4:	7eb000ef          	jal	110ae <printf>
   100c8:	40b2                	lw	ra,12(sp)
   100ca:	4501                	li	a0,0
   100cc:	0141                	addi	sp,sp,16
   100ce:	8082                	ret
   100d0:	65ed                	lui	a1,0x1b
   100d2:	89458593          	addi	a1,a1,-1900 # 1a894 <__clzsi2+0xaa>
   100d6:	b7e5                	j	100be <main+0xe>

000100d8 <register_fini>:
   100d8:	00000793          	li	a5,0
   100dc:	c791                	beqz	a5,100e8 <register_fini+0x10>
   100de:	6551                	lui	a0,0x14
   100e0:	2fe50513          	addi	a0,a0,766 # 142fe <__libc_fini_array>
   100e4:	4cc0106f          	j	115b0 <atexit>
   100e8:	8082                	ret

000100ea <_start>:
   100ea:	0000d197          	auipc	gp,0xd
   100ee:	95618193          	addi	gp,gp,-1706 # 1ca40 <__global_pointer$>
   100f2:	f2018513          	addi	a0,gp,-224 # 1c960 <__stdio_exit_handler>
   100f6:	24c18613          	addi	a2,gp,588 # 1cc8c <__BSS_END__>
   100fa:	8e09                	sub	a2,a2,a0
   100fc:	4581                	li	a1,0
   100fe:	2d8010ef          	jal	113d6 <memset>
   10102:	00001517          	auipc	a0,0x1
   10106:	4ae50513          	addi	a0,a0,1198 # 115b0 <atexit>
   1010a:	c519                	beqz	a0,10118 <_start+0x2e>
   1010c:	00004517          	auipc	a0,0x4
   10110:	1f250513          	addi	a0,a0,498 # 142fe <__libc_fini_array>
   10114:	49c010ef          	jal	115b0 <atexit>
   10118:	254010ef          	jal	1136c <__libc_init_array>
   1011c:	4502                	lw	a0,0(sp)
   1011e:	004c                	addi	a1,sp,4
   10120:	4601                	li	a2,0
   10122:	3779                	jal	100b0 <main>
   10124:	bf85                	j	10094 <exit>

00010126 <__do_global_dtors_aux>:
   10126:	1141                	addi	sp,sp,-16
   10128:	c422                	sw	s0,8(sp)
   1012a:	f401c783          	lbu	a5,-192(gp) # 1c980 <completed.1>
   1012e:	c606                	sw	ra,12(sp)
   10130:	ef91                	bnez	a5,1014c <__do_global_dtors_aux+0x26>
   10132:	00000793          	li	a5,0
   10136:	cb81                	beqz	a5,10146 <__do_global_dtors_aux+0x20>
   10138:	6571                	lui	a0,0x1c
   1013a:	23050513          	addi	a0,a0,560 # 1c230 <__EH_FRAME_BEGIN__>
   1013e:	00000097          	auipc	ra,0x0
   10142:	000000e7          	jalr	zero # 0 <exit-0x10094>
   10146:	4785                	li	a5,1
   10148:	f4f18023          	sb	a5,-192(gp) # 1c980 <completed.1>
   1014c:	40b2                	lw	ra,12(sp)
   1014e:	4422                	lw	s0,8(sp)
   10150:	0141                	addi	sp,sp,16
   10152:	8082                	ret

00010154 <frame_dummy>:
   10154:	00000793          	li	a5,0
   10158:	cb91                	beqz	a5,1016c <frame_dummy+0x18>
   1015a:	6571                	lui	a0,0x1c
   1015c:	f4418593          	addi	a1,gp,-188 # 1c984 <object.0>
   10160:	23050513          	addi	a0,a0,560 # 1c230 <__EH_FRAME_BEGIN__>
   10164:	00000317          	auipc	t1,0x0
   10168:	00000067          	jr	zero # 0 <exit-0x10094>
   1016c:	8082                	ret

0001016e <sha256_test>:
   1016e:	00636737          	lui	a4,0x636
   10172:	67ed                	lui	a5,0x1b
   10174:	7169                	addi	sp,sp,-304
   10176:	26170713          	addi	a4,a4,609 # 636261 <__BSS_END__+0x6195d5>
   1017a:	82878793          	addi	a5,a5,-2008 # 1a828 <__clzsi2+0x3e>
   1017e:	c03a                	sw	a4,0(sp)
   10180:	12112623          	sw	ra,300(sp)
   10184:	12812423          	sw	s0,296(sp)
   10188:	12912223          	sw	s1,292(sp)
   1018c:	13212023          	sw	s2,288(sp)
   10190:	11312e23          	sw	s3,284(sp)
   10194:	10d0                	addi	a2,sp,100
   10196:	03078713          	addi	a4,a5,48
   1019a:	0007a803          	lw	a6,0(a5)
   1019e:	43c8                	lw	a0,4(a5)
   101a0:	478c                	lw	a1,8(a5)
   101a2:	47d4                	lw	a3,12(a5)
   101a4:	01062023          	sw	a6,0(a2)
   101a8:	c248                	sw	a0,4(a2)
   101aa:	c60c                	sw	a1,8(a2)
   101ac:	c654                	sw	a3,12(a2)
   101ae:	07c1                	addi	a5,a5,16
   101b0:	0641                	addi	a2,a2,16
   101b2:	fee794e3          	bne	a5,a4,1019a <sha256_test+0x2c>
   101b6:	66ed                	lui	a3,0x1b
   101b8:	676d                	lui	a4,0x1b
   101ba:	a2068693          	addi	a3,a3,-1504 # 1aa20 <__clzsi2+0x236>
   101be:	86470713          	addi	a4,a4,-1948 # 1a864 <__clzsi2+0x7a>
   101c2:	0007a983          	lw	s3,0(a5)
   101c6:	0047a903          	lw	s2,4(a5)
   101ca:	0087c483          	lbu	s1,8(a5)
   101ce:	0006a083          	lw	ra,0(a3)
   101d2:	0086a383          	lw	t2,8(a3)
   101d6:	00c6a283          	lw	t0,12(a3)
   101da:	0106af83          	lw	t6,16(a3)
   101de:	0146af03          	lw	t5,20(a3)
   101e2:	0186ae83          	lw	t4,24(a3)
   101e6:	01c6ae03          	lw	t3,28(a3)
   101ea:	00072303          	lw	t1,0(a4)
   101ee:	42c0                	lw	s0,4(a3)
   101f0:	4348                	lw	a0,4(a4)
   101f2:	00c72883          	lw	a7,12(a4)
   101f6:	01072803          	lw	a6,16(a4)
   101fa:	4f14                	lw	a3,24(a4)
   101fc:	4f5c                	lw	a5,28(a4)
   101fe:	4b4c                	lw	a1,20(a4)
   10200:	4718                	lw	a4,8(a4)
   10202:	01362023          	sw	s3,0(a2)
   10206:	01262223          	sw	s2,4(a2)
   1020a:	00960423          	sb	s1,8(a2)
   1020e:	c206                	sw	ra,4(sp)
   10210:	c61e                	sw	t2,12(sp)
   10212:	c816                	sw	t0,16(sp)
   10214:	ca7e                	sw	t6,20(sp)
   10216:	cc7a                	sw	t5,24(sp)
   10218:	ce76                	sw	t4,28(sp)
   1021a:	d072                	sw	t3,32(sp)
   1021c:	d21a                	sw	t1,36(sp)
   1021e:	c422                	sw	s0,8(sp)
   10220:	d42a                	sw	a0,40(sp)
   10222:	1108                	addi	a0,sp,160
   10224:	d63a                	sw	a4,44(sp)
   10226:	d846                	sw	a7,48(sp)
   10228:	da42                	sw	a6,52(sp)
   1022a:	de36                	sw	a3,60(sp)
   1022c:	c0be                	sw	a5,64(sp)
   1022e:	dc2e                	sw	a1,56(sp)
   10230:	0b9000ef          	jal	10ae8 <sha256_init>
   10234:	850a                	mv	a0,sp
   10236:	248010ef          	jal	1147e <strlen>
   1023a:	862a                	mv	a2,a0
   1023c:	858a                	mv	a1,sp
   1023e:	1108                	addi	a0,sp,160
   10240:	111000ef          	jal	10b50 <sha256_update>
   10244:	00cc                	addi	a1,sp,68
   10246:	1108                	addi	a0,sp,160
   10248:	18f000ef          	jal	10bd6 <sha256_final>
   1024c:	02000613          	li	a2,32
   10250:	00cc                	addi	a1,sp,68
   10252:	0048                	addi	a0,sp,4
   10254:	75f000ef          	jal	111b2 <memcmp>
   10258:	842a                	mv	s0,a0
   1025a:	1108                	addi	a0,sp,160
   1025c:	08d000ef          	jal	10ae8 <sha256_init>
   10260:	10c8                	addi	a0,sp,100
   10262:	21c010ef          	jal	1147e <strlen>
   10266:	862a                	mv	a2,a0
   10268:	10cc                	addi	a1,sp,100
   1026a:	1108                	addi	a0,sp,160
   1026c:	0e5000ef          	jal	10b50 <sha256_update>
   10270:	1108                	addi	a0,sp,160
   10272:	00cc                	addi	a1,sp,68
   10274:	163000ef          	jal	10bd6 <sha256_final>
   10278:	4501                	li	a0,0
   1027a:	e809                	bnez	s0,1028c <sha256_test+0x11e>
   1027c:	02000613          	li	a2,32
   10280:	00cc                	addi	a1,sp,68
   10282:	1048                	addi	a0,sp,36
   10284:	72f000ef          	jal	111b2 <memcmp>
   10288:	00153513          	seqz	a0,a0
   1028c:	12c12083          	lw	ra,300(sp)
   10290:	12812403          	lw	s0,296(sp)
   10294:	12412483          	lw	s1,292(sp)
   10298:	12012903          	lw	s2,288(sp)
   1029c:	11c12983          	lw	s3,284(sp)
   102a0:	6155                	addi	sp,sp,304
   102a2:	8082                	ret

000102a4 <sha256_transform>:
   102a4:	714d                	addi	sp,sp,-336
   102a6:	15212223          	sw	s2,324(sp)
   102aa:	13b12023          	sw	s11,288(sp)
   102ae:	14812623          	sw	s0,332(sp)
   102b2:	14912423          	sw	s1,328(sp)
   102b6:	15312023          	sw	s3,320(sp)
   102ba:	13412e23          	sw	s4,316(sp)
   102be:	13512c23          	sw	s5,312(sp)
   102c2:	13612a23          	sw	s6,308(sp)
   102c6:	13712823          	sw	s7,304(sp)
   102ca:	13812623          	sw	s8,300(sp)
   102ce:	13912423          	sw	s9,296(sp)
   102d2:	13a12223          	sw	s10,292(sp)
   102d6:	0085c803          	lbu	a6,8(a1)
   102da:	0095cc03          	lbu	s8,9(a1)
   102de:	00c5c603          	lbu	a2,12(a1)
   102e2:	00d5ca83          	lbu	s5,13(a1)
   102e6:	00b5cb03          	lbu	s6,11(a1)
   102ea:	0005c883          	lbu	a7,0(a1)
   102ee:	0045c683          	lbu	a3,4(a1)
   102f2:	0055cc83          	lbu	s9,5(a1)
   102f6:	0105c703          	lbu	a4,16(a1)
   102fa:	0115c483          	lbu	s1,17(a1)
   102fe:	0145c783          	lbu	a5,20(a1)
   10302:	0155c403          	lbu	s0,21(a1)
   10306:	00a5cf83          	lbu	t6,10(a1)
   1030a:	0035cd03          	lbu	s10,3(a1)
   1030e:	00f5ca03          	lbu	s4,15(a1)
   10312:	0015c383          	lbu	t2,1(a1)
   10316:	00e5cf03          	lbu	t5,14(a1)
   1031a:	0c42                	slli	s8,s8,0x10
   1031c:	0862                	slli	a6,a6,0x18
   1031e:	0075cb83          	lbu	s7,7(a1)
   10322:	0025ce83          	lbu	t4,2(a1)
   10326:	0065c283          	lbu	t0,6(a1)
   1032a:	0ac2                	slli	s5,s5,0x10
   1032c:	0135c983          	lbu	s3,19(a1)
   10330:	01886833          	or	a6,a6,s8
   10334:	0175c903          	lbu	s2,23(a1)
   10338:	0125ce03          	lbu	t3,18(a1)
   1033c:	0165c303          	lbu	t1,22(a1)
   10340:	0662                	slli	a2,a2,0x18
   10342:	0cc2                	slli	s9,s9,0x10
   10344:	04c2                	slli	s1,s1,0x10
   10346:	0442                	slli	s0,s0,0x10
   10348:	01566633          	or	a2,a2,s5
   1034c:	01686833          	or	a6,a6,s6
   10350:	0fa2                	slli	t6,t6,0x8
   10352:	08e2                	slli	a7,a7,0x18
   10354:	06e2                	slli	a3,a3,0x18
   10356:	0762                	slli	a4,a4,0x18
   10358:	07e2                	slli	a5,a5,0x18
   1035a:	01f86833          	or	a6,a6,t6
   1035e:	01a8e8b3          	or	a7,a7,s10
   10362:	03c2                	slli	t2,t2,0x10
   10364:	0196e6b3          	or	a3,a3,s9
   10368:	8f45                	or	a4,a4,s1
   1036a:	8fc1                	or	a5,a5,s0
   1036c:	01466633          	or	a2,a2,s4
   10370:	0f22                	slli	t5,t5,0x8
   10372:	02c5c483          	lbu	s1,44(a1)
   10376:	0078e8b3          	or	a7,a7,t2
   1037a:	0176e6b3          	or	a3,a3,s7
   1037e:	01e66633          	or	a2,a2,t5
   10382:	02a2                	slli	t0,t0,0x8
   10384:	0265cf03          	lbu	t5,38(a1)
   10388:	01376733          	or	a4,a4,s3
   1038c:	0e22                	slli	t3,t3,0x8
   1038e:	0127e7b3          	or	a5,a5,s2
   10392:	0322                	slli	t1,t1,0x8
   10394:	d442                	sw	a6,40(sp)
   10396:	0ea2                	slli	t4,t4,0x8
   10398:	02d5c803          	lbu	a6,45(a1)
   1039c:	01c76733          	or	a4,a4,t3
   103a0:	0067e7b3          	or	a5,a5,t1
   103a4:	01d8eeb3          	or	t4,a7,t4
   103a8:	0056e8b3          	or	a7,a3,t0
   103ac:	d246                	sw	a7,36(sp)
   103ae:	d632                	sw	a2,44(sp)
   103b0:	d83a                	sw	a4,48(sp)
   103b2:	da3e                	sw	a5,52(sp)
   103b4:	d076                	sw	t4,32(sp)
   103b6:	0185c683          	lbu	a3,24(a1)
   103ba:	0195cb03          	lbu	s6,25(a1)
   103be:	01b5cd83          	lbu	s11,27(a1)
   103c2:	01c5c703          	lbu	a4,28(a1)
   103c6:	01d5ca83          	lbu	s5,29(a1)
   103ca:	0205c783          	lbu	a5,32(a1)
   103ce:	0215ca03          	lbu	s4,33(a1)
   103d2:	0245c983          	lbu	s3,36(a1)
   103d6:	0255c303          	lbu	t1,37(a1)
   103da:	0285c903          	lbu	s2,40(a1)
   103de:	0295c883          	lbu	a7,41(a1)
   103e2:	0305c603          	lbu	a2,48(a1)
   103e6:	0315c403          	lbu	s0,49(a1)
   103ea:	01a5c383          	lbu	t2,26(a1)
   103ee:	01f5cd03          	lbu	s10,31(a1)
   103f2:	01e5c283          	lbu	t0,30(a1)
   103f6:	0235cc83          	lbu	s9,35(a1)
   103fa:	0225ce03          	lbu	t3,34(a1)
   103fe:	0275cc03          	lbu	s8,39(a1)
   10402:	04e2                	slli	s1,s1,0x18
   10404:	c67a                	sw	t5,12(sp)
   10406:	0842                	slli	a6,a6,0x10
   10408:	02b5cf83          	lbu	t6,43(a1)
   1040c:	0104e833          	or	a6,s1,a6
   10410:	44b2                	lw	s1,12(sp)
   10412:	02a5cb83          	lbu	s7,42(a1)
   10416:	c87e                	sw	t6,16(sp)
   10418:	0962                	slli	s2,s2,0x18
   1041a:	08c2                	slli	a7,a7,0x10
   1041c:	011968b3          	or	a7,s2,a7
   10420:	00849913          	slli	s2,s1,0x8
   10424:	44c2                	lw	s1,16(sp)
   10426:	02f5cf03          	lbu	t5,47(a1)
   1042a:	ca5e                	sw	s7,20(sp)
   1042c:	0098e8b3          	or	a7,a7,s1
   10430:	44d2                	lw	s1,20(sp)
   10432:	cc7a                	sw	t5,24(sp)
   10434:	0b42                	slli	s6,s6,0x10
   10436:	09e2                	slli	s3,s3,0x18
   10438:	06e2                	slli	a3,a3,0x18
   1043a:	0762                	slli	a4,a4,0x18
   1043c:	0ac2                	slli	s5,s5,0x10
   1043e:	0342                	slli	t1,t1,0x10
   10440:	0166e6b3          	or	a3,a3,s6
   10444:	0069e333          	or	t1,s3,t1
   10448:	07e2                	slli	a5,a5,0x18
   1044a:	00849993          	slli	s3,s1,0x8
   1044e:	0a42                	slli	s4,s4,0x10
   10450:	44e2                	lw	s1,24(sp)
   10452:	01576733          	or	a4,a4,s5
   10456:	02e5cf83          	lbu	t6,46(a1)
   1045a:	0335cb83          	lbu	s7,51(a1)
   1045e:	0325cf03          	lbu	t5,50(a1)
   10462:	03a2                	slli	t2,t2,0x8
   10464:	02a2                	slli	t0,t0,0x8
   10466:	0147e7b3          	or	a5,a5,s4
   1046a:	01b6e6b3          	or	a3,a3,s11
   1046e:	01a76733          	or	a4,a4,s10
   10472:	0076e6b3          	or	a3,a3,t2
   10476:	00576733          	or	a4,a4,t0
   1047a:	0662                	slli	a2,a2,0x18
   1047c:	0442                	slli	s0,s0,0x10
   1047e:	0e22                	slli	t3,t3,0x8
   10480:	01836333          	or	t1,t1,s8
   10484:	0197e7b3          	or	a5,a5,s9
   10488:	0395c383          	lbu	t2,57(a1)
   1048c:	009864b3          	or	s1,a6,s1
   10490:	01c7e7b3          	or	a5,a5,t3
   10494:	00866833          	or	a6,a2,s0
   10498:	01236e33          	or	t3,t1,s2
   1049c:	0345c603          	lbu	a2,52(a1)
   104a0:	0355c903          	lbu	s2,53(a1)
   104a4:	03d5c283          	lbu	t0,61(a1)
   104a8:	dc36                	sw	a3,56(sp)
   104aa:	de3a                	sw	a4,60(sp)
   104ac:	0385c683          	lbu	a3,56(a1)
   104b0:	03c5c703          	lbu	a4,60(a1)
   104b4:	0fa2                	slli	t6,t6,0x8
   104b6:	0f22                	slli	t5,t5,0x8
   104b8:	01786833          	or	a6,a6,s7
   104bc:	03f5c403          	lbu	s0,63(a1)
   104c0:	0138e333          	or	t1,a7,s3
   104c4:	c0be                	sw	a5,64(sp)
   104c6:	0375c983          	lbu	s3,55(a1)
   104ca:	03e5c783          	lbu	a5,62(a1)
   104ce:	01f4e8b3          	or	a7,s1,t6
   104d2:	01e86833          	or	a6,a6,t5
   104d6:	03b5c483          	lbu	s1,59(a1)
   104da:	0365cf83          	lbu	t6,54(a1)
   104de:	03a5cf03          	lbu	t5,58(a1)
   104e2:	0662                	slli	a2,a2,0x18
   104e4:	01029593          	slli	a1,t0,0x10
   104e8:	0942                	slli	s2,s2,0x10
   104ea:	06e2                	slli	a3,a3,0x18
   104ec:	03c2                	slli	t2,t2,0x10
   104ee:	0762                	slli	a4,a4,0x18
   104f0:	8f4d                	or	a4,a4,a1
   104f2:	01266633          	or	a2,a2,s2
   104f6:	0076e6b3          	or	a3,a3,t2
   104fa:	8ec5                	or	a3,a3,s1
   104fc:	008f1593          	slli	a1,t5,0x8
   10500:	07a2                	slli	a5,a5,0x8
   10502:	01366633          	or	a2,a2,s3
   10506:	0fa2                	slli	t6,t6,0x8
   10508:	8f41                	or	a4,a4,s0
   1050a:	8ecd                	or	a3,a3,a1
   1050c:	8f5d                	or	a4,a4,a5
   1050e:	c2f2                	sw	t3,68(sp)
   10510:	101c                	addi	a5,sp,32
   10512:	c49a                	sw	t1,72(sp)
   10514:	c6c6                	sw	a7,76(sp)
   10516:	c8c2                	sw	a6,80(sp)
   10518:	01f66633          	or	a2,a2,t6
   1051c:	cab2                	sw	a2,84(sp)
   1051e:	85be                	mv	a1,a5
   10520:	ccb6                	sw	a3,88(sp)
   10522:	ceba                	sw	a4,92(sp)
   10524:	44c1                	li	s1,16
   10526:	03a00b13          	li	s6,58
   1052a:	c63e                	sw	a5,12(sp)
   1052c:	0045a903          	lw	s2,4(a1)
   10530:	0116da93          	srli	s5,a3,0x11
   10534:	0136da13          	srli	s4,a3,0x13
   10538:	01991993          	slli	s3,s2,0x19
   1053c:	01295413          	srli	s0,s2,0x12
   10540:	00f69f13          	slli	t5,a3,0xf
   10544:	00d69393          	slli	t2,a3,0xd
   10548:	00795f93          	srli	t6,s2,0x7
   1054c:	00e91293          	slli	t0,s2,0xe
   10550:	0143e3b3          	or	t2,t2,s4
   10554:	0082e2b3          	or	t0,t0,s0
   10558:	015f6f33          	or	t5,t5,s5
   1055c:	013fefb3          	or	t6,t6,s3
   10560:	00a6d413          	srli	s0,a3,0xa
   10564:	007f4f33          	xor	t5,t5,t2
   10568:	005fcfb3          	xor	t6,t6,t0
   1056c:	00395293          	srli	t0,s2,0x3
   10570:	00c5a383          	lw	t2,12(a1)
   10574:	005fcfb3          	xor	t6,t6,t0
   10578:	008f4f33          	xor	t5,t5,s0
   1057c:	9f7e                	add	t5,t5,t6
   1057e:	4580                	lw	s0,8(a1)
   10580:	9efa                	add	t4,t4,t5
   10582:	9e76                	add	t3,t3,t4
   10584:	01375a13          	srli	s4,a4,0x13
   10588:	01175293          	srli	t0,a4,0x11
   1058c:	0123d993          	srli	s3,t2,0x12
   10590:	01939f93          	slli	t6,t2,0x19
   10594:	00d71b93          	slli	s7,a4,0xd
   10598:	00f71f13          	slli	t5,a4,0xf
   1059c:	00e39a93          	slli	s5,t2,0xe
   105a0:	0073de93          	srli	t4,t2,0x7
   105a4:	014bebb3          	or	s7,s7,s4
   105a8:	00e41d93          	slli	s11,s0,0xe
   105ac:	00745d13          	srli	s10,s0,0x7
   105b0:	013aeab3          	or	s5,s5,s3
   105b4:	005f6f33          	or	t5,t5,t0
   105b8:	01245a13          	srli	s4,s0,0x12
   105bc:	01941293          	slli	t0,s0,0x19
   105c0:	01feeeb3          	or	t4,t4,t6
   105c4:	00de1c93          	slli	s9,t3,0xd
   105c8:	00fe1c13          	slli	s8,t3,0xf
   105cc:	013e5f93          	srli	t6,t3,0x13
   105d0:	011e5993          	srli	s3,t3,0x11
   105d4:	014dea33          	or	s4,s11,s4
   105d8:	013c69b3          	or	s3,s8,s3
   105dc:	00a75793          	srli	a5,a4,0xa
   105e0:	01ebcf33          	xor	t5,s7,t5
   105e4:	005d62b3          	or	t0,s10,t0
   105e8:	01daceb3          	xor	t4,s5,t4
   105ec:	0033dd13          	srli	s10,t2,0x3
   105f0:	01fcefb3          	or	t6,s9,t6
   105f4:	0105ab83          	lw	s7,16(a1)
   105f8:	0145aa83          	lw	s5,20(a1)
   105fc:	005a42b3          	xor	t0,s4,t0
   10600:	01aeceb3          	xor	t4,t4,s10
   10604:	00345a13          	srli	s4,s0,0x3
   10608:	013fcfb3          	xor	t6,t6,s3
   1060c:	00ff4f33          	xor	t5,t5,a5
   10610:	00ae5993          	srli	s3,t3,0xa
   10614:	0142c2b3          	xor	t0,t0,s4
   10618:	013fcfb3          	xor	t6,t6,s3
   1061c:	9f4a                	add	t5,t5,s2
   1061e:	9ea2                	add	t4,t4,s0
   10620:	9f16                	add	t5,t5,t0
   10622:	9efe                	add	t4,t4,t6
   10624:	937a                	add	t1,t1,t5
   10626:	98f6                	add	a7,a7,t4
   10628:	012bda13          	srli	s4,s7,0x12
   1062c:	019b9913          	slli	s2,s7,0x19
   10630:	012ad413          	srli	s0,s5,0x12
   10634:	019a9293          	slli	t0,s5,0x19
   10638:	00eb9993          	slli	s3,s7,0xe
   1063c:	007bdf93          	srli	t6,s7,0x7
   10640:	00ea9f13          	slli	t5,s5,0xe
   10644:	007ade93          	srli	t4,s5,0x7
   10648:	012fefb3          	or	t6,t6,s2
   1064c:	005eeeb3          	or	t4,t4,t0
   10650:	0149e9b3          	or	s3,s3,s4
   10654:	01335d93          	srli	s11,t1,0x13
   10658:	01135c93          	srli	s9,t1,0x11
   1065c:	008f6f33          	or	t5,t5,s0
   10660:	0138dd13          	srli	s10,a7,0x13
   10664:	0118d413          	srli	s0,a7,0x11
   10668:	00d31c13          	slli	s8,t1,0xd
   1066c:	00f31913          	slli	s2,t1,0xf
   10670:	00d89293          	slli	t0,a7,0xd
   10674:	00f89a13          	slli	s4,a7,0xf
   10678:	01f9c9b3          	xor	s3,s3,t6
   1067c:	01bc6c33          	or	s8,s8,s11
   10680:	008a6a33          	or	s4,s4,s0
   10684:	003bdf93          	srli	t6,s7,0x3
   10688:	01996933          	or	s2,s2,s9
   1068c:	01df4f33          	xor	t5,t5,t4
   10690:	003adc93          	srli	s9,s5,0x3
   10694:	01a2e2b3          	or	t0,t0,s10
   10698:	4d80                	lw	s0,24(a1)
   1069a:	01c5ae83          	lw	t4,28(a1)
   1069e:	012c4933          	xor	s2,s8,s2
   106a2:	01f9cfb3          	xor	t6,s3,t6
   106a6:	019f4f33          	xor	t5,t5,s9
   106aa:	00a35993          	srli	s3,t1,0xa
   106ae:	0142c2b3          	xor	t0,t0,s4
   106b2:	00a8da13          	srli	s4,a7,0xa
   106b6:	0142c2b3          	xor	t0,t0,s4
   106ba:	9f9e                	add	t6,t6,t2
   106bc:	9f5e                	add	t5,t5,s7
   106be:	013943b3          	xor	t2,s2,s3
   106c2:	9f9e                	add	t6,t6,t2
   106c4:	9f16                	add	t5,t5,t0
   106c6:	987e                	add	a6,a6,t6
   106c8:	967a                	add	a2,a2,t5
   106ca:	01941a13          	slli	s4,s0,0x19
   106ce:	01245293          	srli	t0,s0,0x12
   106d2:	00745393          	srli	t2,s0,0x7
   106d6:	00e41b93          	slli	s7,s0,0xe
   106da:	019e9993          	slli	s3,t4,0x19
   106de:	012edf13          	srli	t5,t4,0x12
   106e2:	007edf93          	srli	t6,t4,0x7
   106e6:	00ee9913          	slli	s2,t4,0xe
   106ea:	005bebb3          	or	s7,s7,t0
   106ee:	01e96933          	or	s2,s2,t5
   106f2:	0143e3b3          	or	t2,t2,s4
   106f6:	013fefb3          	or	t6,t6,s3
   106fa:	00f81293          	slli	t0,a6,0xf
   106fe:	01185d93          	srli	s11,a6,0x11
   10702:	00d81a13          	slli	s4,a6,0xd
   10706:	01385d13          	srli	s10,a6,0x13
   1070a:	00f61c93          	slli	s9,a2,0xf
   1070e:	01165f13          	srli	t5,a2,0x11
   10712:	00d61c13          	slli	s8,a2,0xd
   10716:	01365993          	srli	s3,a2,0x13
   1071a:	012fcfb3          	xor	t6,t6,s2
   1071e:	0173c3b3          	xor	t2,t2,s7
   10722:	01aa6a33          	or	s4,s4,s10
   10726:	00345b93          	srli	s7,s0,0x3
   1072a:	003ed913          	srli	s2,t4,0x3
   1072e:	01ecef33          	or	t5,s9,t5
   10732:	01b2e2b3          	or	t0,t0,s11
   10736:	013c69b3          	or	s3,s8,s3
   1073a:	9ab6                	add	s5,s5,a3
   1073c:	943a                	add	s0,s0,a4
   1073e:	012fc6b3          	xor	a3,t6,s2
   10742:	0142c2b3          	xor	t0,t0,s4
   10746:	013f4733          	xor	a4,t5,s3
   1074a:	0173c3b3          	xor	t2,t2,s7
   1074e:	00a85a13          	srli	s4,a6,0xa
   10752:	00a65913          	srli	s2,a2,0xa
   10756:	00868f33          	add	t5,a3,s0
   1075a:	93d6                	add	t2,t2,s5
   1075c:	0142cfb3          	xor	t6,t0,s4
   10760:	01274733          	xor	a4,a4,s2
   10764:	01f386b3          	add	a3,t2,t6
   10768:	977a                	add	a4,a4,t5
   1076a:	05c5a023          	sw	t3,64(a1)
   1076e:	0465a223          	sw	t1,68(a1)
   10772:	0515a423          	sw	a7,72(a1)
   10776:	0505a623          	sw	a6,76(a1)
   1077a:	c9b0                	sw	a2,80(a1)
   1077c:	c9f4                	sw	a3,84(a1)
   1077e:	cdb8                	sw	a4,88(a1)
   10780:	049d                	addi	s1,s1,7
   10782:	05f1                	addi	a1,a1,28
   10784:	db6494e3          	bne	s1,s6,1052c <sha256_transform+0x288>
   10788:	10012803          	lw	a6,256(sp)
   1078c:	10412883          	lw	a7,260(sp)
   10790:	473e                	lw	a4,204(sp)
   10792:	01385f93          	srli	t6,a6,0x13
   10796:	01185e93          	srli	t4,a6,0x11
   1079a:	00d81593          	slli	a1,a6,0xd
   1079e:	00f81293          	slli	t0,a6,0xf
   107a2:	0118d313          	srli	t1,a7,0x11
   107a6:	0138d693          	srli	a3,a7,0x13
   107aa:	01d2e2b3          	or	t0,t0,t4
   107ae:	00f89613          	slli	a2,a7,0xf
   107b2:	00d89f13          	slli	t5,a7,0xd
   107b6:	01f5e5b3          	or	a1,a1,t6
   107ba:	00df6f33          	or	t5,t5,a3
   107be:	00666633          	or	a2,a2,t1
   107c2:	0055c5b3          	xor	a1,a1,t0
   107c6:	00a85293          	srli	t0,a6,0xa
   107ca:	4e4e                	lw	t3,208(sp)
   107cc:	01e64633          	xor	a2,a2,t5
   107d0:	0055c5b3          	xor	a1,a1,t0
   107d4:	4f2e                	lw	t5,200(sp)
   107d6:	52be                	lw	t0,236(sp)
   107d8:	01275913          	srli	s2,a4,0x12
   107dc:	01971493          	slli	s1,a4,0x19
   107e0:	00e71e93          	slli	t4,a4,0xe
   107e4:	00775f93          	srli	t6,a4,0x7
   107e8:	00a8d893          	srli	a7,a7,0xa
   107ec:	009fefb3          	or	t6,t6,s1
   107f0:	012eeeb3          	or	t4,t4,s2
   107f4:	01164633          	xor	a2,a2,a7
   107f8:	58ce                	lw	a7,240(sp)
   107fa:	019e1413          	slli	s0,t3,0x19
   107fe:	012e5393          	srli	t2,t3,0x12
   10802:	9f16                	add	t5,t5,t0
   10804:	007e5693          	srli	a3,t3,0x7
   10808:	00375293          	srli	t0,a4,0x3
   1080c:	00ee1313          	slli	t1,t3,0xe
   10810:	01feceb3          	xor	t4,t4,t6
   10814:	00736333          	or	t1,t1,t2
   10818:	005eceb3          	xor	t4,t4,t0
   1081c:	8ec1                	or	a3,a3,s0
   1081e:	95fa                	add	a1,a1,t5
   10820:	95f6                	add	a1,a1,t4
   10822:	9746                	add	a4,a4,a7
   10824:	0066c6b3          	xor	a3,a3,t1
   10828:	003e5f93          	srli	t6,t3,0x3
   1082c:	435e                	lw	t1,212(sp)
   1082e:	0115d293          	srli	t0,a1,0x11
   10832:	963a                	add	a2,a2,a4
   10834:	00d59413          	slli	s0,a1,0xd
   10838:	01f6c733          	xor	a4,a3,t6
   1083c:	0135df93          	srli	t6,a1,0x13
   10840:	00f59693          	slli	a3,a1,0xf
   10844:	01f46433          	or	s0,s0,t6
   10848:	0056e6b3          	or	a3,a3,t0
   1084c:	48ee                	lw	a7,216(sp)
   1084e:	01931a13          	slli	s4,t1,0x19
   10852:	01235993          	srli	s3,t1,0x12
   10856:	00735293          	srli	t0,t1,0x7
   1085a:	00e31f93          	slli	t6,t1,0xe
   1085e:	8ea1                	xor	a3,a3,s0
   10860:	00a5d413          	srli	s0,a1,0xa
   10864:	963a                	add	a2,a2,a4
   10866:	013fefb3          	or	t6,t6,s3
   1086a:	0142e2b3          	or	t0,t0,s4
   1086e:	8ea1                	xor	a3,a3,s0
   10870:	545e                	lw	s0,244(sp)
   10872:	01f2c2b3          	xor	t0,t0,t6
   10876:	01165f13          	srli	t5,a2,0x11
   1087a:	5fee                	lw	t6,248(sp)
   1087c:	01365e93          	srli	t4,a2,0x13
   10880:	00f61713          	slli	a4,a2,0xf
   10884:	00d61393          	slli	t2,a2,0xd
   10888:	01d3e3b3          	or	t2,t2,t4
   1088c:	01989913          	slli	s2,a7,0x19
   10890:	0128d493          	srli	s1,a7,0x12
   10894:	01e76733          	or	a4,a4,t5
   10898:	0078de93          	srli	t4,a7,0x7
   1089c:	00e89f13          	slli	t5,a7,0xe
   108a0:	009f6f33          	or	t5,t5,s1
   108a4:	9e22                	add	t3,t3,s0
   108a6:	00774733          	xor	a4,a4,t2
   108aa:	00335413          	srli	s0,t1,0x3
   108ae:	00a65393          	srli	t2,a2,0xa
   108b2:	012eeeb3          	or	t4,t4,s2
   108b6:	937e                	add	t1,t1,t6
   108b8:	01eeceb3          	xor	t4,t4,t5
   108bc:	00774733          	xor	a4,a4,t2
   108c0:	96f2                	add	a3,a3,t3
   108c2:	0038d393          	srli	t2,a7,0x3
   108c6:	0082ce33          	xor	t3,t0,s0
   108ca:	96f2                	add	a3,a3,t3
   108cc:	971a                	add	a4,a4,t1
   108ce:	007ec333          	xor	t1,t4,t2
   108d2:	971a                	add	a4,a4,t1
   108d4:	0116d493          	srli	s1,a3,0x11
   108d8:	0136d393          	srli	t2,a3,0x13
   108dc:	00f69313          	slli	t1,a3,0xf
   108e0:	00d69413          	slli	s0,a3,0xd
   108e4:	4ffe                	lw	t6,220(sp)
   108e6:	5f0e                	lw	t5,224(sp)
   108e8:	00746433          	or	s0,s0,t2
   108ec:	00936333          	or	t1,t1,s1
   108f0:	00834333          	xor	t1,t1,s0
   108f4:	00a6d993          	srli	s3,a3,0xa
   108f8:	01175913          	srli	s2,a4,0x11
   108fc:	01375e13          	srli	t3,a4,0x13
   10900:	00f71293          	slli	t0,a4,0xf
   10904:	00d71e93          	slli	t4,a4,0xd
   10908:	01334333          	xor	t1,t1,s3
   1090c:	59fe                	lw	s3,252(sp)
   1090e:	019f9b93          	slli	s7,t6,0x19
   10912:	012fda93          	srli	s5,t6,0x12
   10916:	01ceeeb3          	or	t4,t4,t3
   1091a:	019f1b13          	slli	s6,t5,0x19
   1091e:	007fd393          	srli	t2,t6,0x7
   10922:	00ef9493          	slli	s1,t6,0xe
   10926:	0122e2b3          	or	t0,t0,s2
   1092a:	007f5e13          	srli	t3,t5,0x7
   1092e:	012f5913          	srli	s2,t5,0x12
   10932:	00ef1a13          	slli	s4,t5,0xe
   10936:	0154e4b3          	or	s1,s1,s5
   1093a:	01d2c2b3          	xor	t0,t0,t4
   1093e:	00a75a93          	srli	s5,a4,0xa
   10942:	012a6a33          	or	s4,s4,s2
   10946:	0173e3b3          	or	t2,t2,s7
   1094a:	016e6e33          	or	t3,t3,s6
   1094e:	05052d03          	lw	s10,80(a0)
   10952:	05452c83          	lw	s9,84(a0)
   10956:	05852c03          	lw	s8,88(a0)
   1095a:	99c6                	add	s3,s3,a7
   1095c:	0093c3b3          	xor	t2,t2,s1
   10960:	0152c8b3          	xor	a7,t0,s5
   10964:	003fd493          	srli	s1,t6,0x3
   10968:	987e                	add	a6,a6,t6
   1096a:	014e4e33          	xor	t3,t3,s4
   1096e:	003f5f13          	srli	t5,t5,0x3
   10972:	05c52b83          	lw	s7,92(a0)
   10976:	06052903          	lw	s2,96(a0)
   1097a:	06452e83          	lw	t4,100(a0)
   1097e:	5520                	lw	s0,104(a0)
   10980:	06c52d83          	lw	s11,108(a0)
   10984:	934e                	add	t1,t1,s3
   10986:	9846                	add	a6,a6,a7
   10988:	01ee4e33          	xor	t3,t3,t5
   1098c:	0093c3b3          	xor	t2,t2,s1
   10990:	007308b3          	add	a7,t1,t2
   10994:	9872                	add	a6,a6,t3
   10996:	6f6d                	lui	t5,0x1b
   10998:	47b2                	lw	a5,12(sp)
   1099a:	10b12423          	sw	a1,264(sp)
   1099e:	10e12a23          	sw	a4,276(sp)
   109a2:	11112c23          	sw	a7,280(sp)
   109a6:	a40f0f13          	addi	t5,t5,-1472 # 1aa40 <k>
   109aa:	10c12623          	sw	a2,268(sp)
   109ae:	10d12823          	sw	a3,272(sp)
   109b2:	11012e23          	sw	a6,284(sp)
   109b6:	c66a                	sw	s10,12(sp)
   109b8:	c866                	sw	s9,16(sp)
   109ba:	ca62                	sw	s8,20(sp)
   109bc:	cc5e                	sw	s7,24(sp)
   109be:	100f0b13          	addi	s6,t5,256
   109c2:	876e                	mv	a4,s11
   109c4:	89a2                	mv	s3,s0
   109c6:	8a76                	mv	s4,t4
   109c8:	85ca                	mv	a1,s2
   109ca:	8ade                	mv	s5,s7
   109cc:	8fe2                	mv	t6,s8
   109ce:	82e6                	mv	t0,s9
   109d0:	88ea                	mv	a7,s10
   109d2:	ce2a                	sw	a0,28(sp)
   109d4:	a039                	j	109e2 <sha256_transform+0x73e>
   109d6:	89d2                	mv	s3,s4
   109d8:	8f96                	mv	t6,t0
   109da:	8a2e                	mv	s4,a1
   109dc:	82c6                	mv	t0,a7
   109de:	85c2                	mv	a1,a6
   109e0:	88b6                	mv	a7,a3
   109e2:	01a59613          	slli	a2,a1,0x1a
   109e6:	01559693          	slli	a3,a1,0x15
   109ea:	0065d813          	srli	a6,a1,0x6
   109ee:	00b5d313          	srli	t1,a1,0xb
   109f2:	00d36333          	or	t1,t1,a3
   109f6:	0195de13          	srli	t3,a1,0x19
   109fa:	00c86833          	or	a6,a6,a2
   109fe:	00759d13          	slli	s10,a1,0x7
   10a02:	01cd6d33          	or	s10,s10,t3
   10a06:	00684833          	xor	a6,a6,t1
   10a0a:	01a84833          	xor	a6,a6,s10
   10a0e:	4388                	lw	a0,0(a5)
   10a10:	000f2d03          	lw	s10,0(t5)
   10a14:	01389c13          	slli	s8,a7,0x13
   10a18:	fff5c693          	not	a3,a1
   10a1c:	0028dc93          	srli	s9,a7,0x2
   10a20:	01e89393          	slli	t2,a7,0x1e
   10a24:	00d8d613          	srli	a2,a7,0xd
   10a28:	01866633          	or	a2,a2,s8
   10a2c:	0145fbb3          	and	s7,a1,s4
   10a30:	01f2c333          	xor	t1,t0,t6
   10a34:	0136f6b3          	and	a3,a3,s3
   10a38:	00a89e13          	slli	t3,a7,0xa
   10a3c:	0168d493          	srli	s1,a7,0x16
   10a40:	9d2a                	add	s10,s10,a0
   10a42:	007ce3b3          	or	t2,s9,t2
   10a46:	9d42                	add	s10,s10,a6
   10a48:	01f2fc33          	and	s8,t0,t6
   10a4c:	01137333          	and	t1,t1,a7
   10a50:	0176c6b3          	xor	a3,a3,s7
   10a54:	00c3c633          	xor	a2,t2,a2
   10a58:	009e6e33          	or	t3,t3,s1
   10a5c:	96ea                	add	a3,a3,s10
   10a5e:	01c64633          	xor	a2,a2,t3
   10a62:	01834333          	xor	t1,t1,s8
   10a66:	96ba                	add	a3,a3,a4
   10a68:	961a                	add	a2,a2,t1
   10a6a:	0f11                	addi	t5,t5,4
   10a6c:	01568833          	add	a6,a3,s5
   10a70:	874e                	mv	a4,s3
   10a72:	96b2                	add	a3,a3,a2
   10a74:	8afe                	mv	s5,t6
   10a76:	0791                	addi	a5,a5,4
   10a78:	f56f1fe3          	bne	t5,s6,109d6 <sha256_transform+0x732>
   10a7c:	4572                	lw	a0,28(sp)
   10a7e:	4d32                	lw	s10,12(sp)
   10a80:	4cc2                	lw	s9,16(sp)
   10a82:	4c52                	lw	s8,20(sp)
   10a84:	4be2                	lw	s7,24(sp)
   10a86:	9452                	add	s0,s0,s4
   10a88:	d520                	sw	s0,104(a0)
   10a8a:	14c12403          	lw	s0,332(sp)
   10a8e:	9dce                	add	s11,s11,s3
   10a90:	9d36                	add	s10,s10,a3
   10a92:	9cc6                	add	s9,s9,a7
   10a94:	9c16                	add	s8,s8,t0
   10a96:	9bfe                	add	s7,s7,t6
   10a98:	9942                	add	s2,s2,a6
   10a9a:	9eae                	add	t4,t4,a1
   10a9c:	05a52823          	sw	s10,80(a0)
   10aa0:	05952a23          	sw	s9,84(a0)
   10aa4:	05852c23          	sw	s8,88(a0)
   10aa8:	05752e23          	sw	s7,92(a0)
   10aac:	07252023          	sw	s2,96(a0)
   10ab0:	07b52623          	sw	s11,108(a0)
   10ab4:	07d52223          	sw	t4,100(a0)
   10ab8:	14812483          	lw	s1,328(sp)
   10abc:	14412903          	lw	s2,324(sp)
   10ac0:	14012983          	lw	s3,320(sp)
   10ac4:	13c12a03          	lw	s4,316(sp)
   10ac8:	13812a83          	lw	s5,312(sp)
   10acc:	13412b03          	lw	s6,308(sp)
   10ad0:	13012b83          	lw	s7,304(sp)
   10ad4:	12c12c03          	lw	s8,300(sp)
   10ad8:	12812c83          	lw	s9,296(sp)
   10adc:	12412d03          	lw	s10,292(sp)
   10ae0:	12012d83          	lw	s11,288(sp)
   10ae4:	6171                	addi	sp,sp,336
   10ae6:	8082                	ret

00010ae8 <sha256_init>:
   10ae8:	6a09e337          	lui	t1,0x6a09e
   10aec:	bb67b8b7          	lui	a7,0xbb67b
   10af0:	3c6ef837          	lui	a6,0x3c6ef
   10af4:	a54ff5b7          	lui	a1,0xa54ff
   10af8:	510e5637          	lui	a2,0x510e5
   10afc:	9b0576b7          	lui	a3,0x9b057
   10b00:	1f83e737          	lui	a4,0x1f83e
   10b04:	5be0d7b7          	lui	a5,0x5be0d
   10b08:	66730313          	addi	t1,t1,1639 # 6a09e667 <__BSS_END__+0x6a0819db>
   10b0c:	e8588893          	addi	a7,a7,-379 # bb67ae85 <__BSS_END__+0xbb65e1f9>
   10b10:	37280813          	addi	a6,a6,882 # 3c6ef372 <__BSS_END__+0x3c6d26e6>
   10b14:	53a58593          	addi	a1,a1,1338 # a54ff53a <__BSS_END__+0xa54e28ae>
   10b18:	27f60613          	addi	a2,a2,639 # 510e527f <__BSS_END__+0x510c85f3>
   10b1c:	88c68693          	addi	a3,a3,-1908 # 9b05688c <__BSS_END__+0x9b039c00>
   10b20:	9ab70713          	addi	a4,a4,-1621 # 1f83d9ab <__BSS_END__+0x1f820d1f>
   10b24:	d1978793          	addi	a5,a5,-743 # 5be0cd19 <__BSS_END__+0x5bdf008d>
   10b28:	4e01                	li	t3,0
   10b2a:	4e81                	li	t4,0
   10b2c:	04052023          	sw	zero,64(a0)
   10b30:	05c52423          	sw	t3,72(a0)
   10b34:	05d52623          	sw	t4,76(a0)
   10b38:	04652823          	sw	t1,80(a0)
   10b3c:	05152a23          	sw	a7,84(a0)
   10b40:	05052c23          	sw	a6,88(a0)
   10b44:	cd6c                	sw	a1,92(a0)
   10b46:	d130                	sw	a2,96(a0)
   10b48:	d174                	sw	a3,100(a0)
   10b4a:	d538                	sw	a4,104(a0)
   10b4c:	d57c                	sw	a5,108(a0)
   10b4e:	8082                	ret

00010b50 <sha256_update>:
   10b50:	c251                	beqz	a2,10bd4 <sha256_update+0x84>
   10b52:	1101                	addi	sp,sp,-32
   10b54:	cc22                	sw	s0,24(sp)
   10b56:	ca26                	sw	s1,20(sp)
   10b58:	c84a                	sw	s2,16(sp)
   10b5a:	c64e                	sw	s3,12(sp)
   10b5c:	c452                	sw	s4,8(sp)
   10b5e:	413c                	lw	a5,64(a0)
   10b60:	ce06                	sw	ra,28(sp)
   10b62:	84aa                	mv	s1,a0
   10b64:	842e                	mv	s0,a1
   10b66:	00c58933          	add	s2,a1,a2
   10b6a:	04000993          	li	s3,64
   10b6e:	4a05                	li	s4,1
   10b70:	a021                	j	10b78 <sha256_update+0x28>
   10b72:	0405                	addi	s0,s0,1
   10b74:	05240863          	beq	s0,s2,10bc4 <sha256_update+0x74>
   10b78:	00044683          	lbu	a3,0(s0)
   10b7c:	00f48733          	add	a4,s1,a5
   10b80:	0785                	addi	a5,a5,1
   10b82:	00d70023          	sb	a3,0(a4)
   10b86:	c0bc                	sw	a5,64(s1)
   10b88:	ff3795e3          	bne	a5,s3,10b72 <sha256_update+0x22>
   10b8c:	85a6                	mv	a1,s1
   10b8e:	8526                	mv	a0,s1
   10b90:	f14ff0ef          	jal	102a4 <sha256_transform>
   10b94:	44bc                	lw	a5,72(s1)
   10b96:	44f4                	lw	a3,76(s1)
   10b98:	0404a023          	sw	zero,64(s1)
   10b9c:	20078713          	addi	a4,a5,512
   10ba0:	00f737b3          	sltu	a5,a4,a5
   10ba4:	97b6                	add	a5,a5,a3
   10ba6:	c4b8                	sw	a4,72(s1)
   10ba8:	c4fc                	sw	a5,76(s1)
   10baa:	0405                	addi	s0,s0,1
   10bac:	01240c63          	beq	s0,s2,10bc4 <sha256_update+0x74>
   10bb0:	00044703          	lbu	a4,0(s0)
   10bb4:	0544a023          	sw	s4,64(s1)
   10bb8:	0405                	addi	s0,s0,1
   10bba:	00e48023          	sb	a4,0(s1)
   10bbe:	4785                	li	a5,1
   10bc0:	fb241ce3          	bne	s0,s2,10b78 <sha256_update+0x28>
   10bc4:	40f2                	lw	ra,28(sp)
   10bc6:	4462                	lw	s0,24(sp)
   10bc8:	44d2                	lw	s1,20(sp)
   10bca:	4942                	lw	s2,16(sp)
   10bcc:	49b2                	lw	s3,12(sp)
   10bce:	4a22                	lw	s4,8(sp)
   10bd0:	6105                	addi	sp,sp,32
   10bd2:	8082                	ret
   10bd4:	8082                	ret

00010bd6 <sha256_final>:
   10bd6:	1141                	addi	sp,sp,-16
   10bd8:	c04a                	sw	s2,0(sp)
   10bda:	04052903          	lw	s2,64(a0)
   10bde:	c422                	sw	s0,8(sp)
   10be0:	842a                	mv	s0,a0
   10be2:	c226                	sw	s1,4(sp)
   10be4:	c606                	sw	ra,12(sp)
   10be6:	012407b3          	add	a5,s0,s2
   10bea:	f8000713          	li	a4,-128
   10bee:	03700613          	li	a2,55
   10bf2:	00e78023          	sb	a4,0(a5)
   10bf6:	84ae                	mv	s1,a1
   10bf8:	00190513          	addi	a0,s2,1
   10bfc:	19266463          	bltu	a2,s2,10d84 <sha256_final+0x1ae>
   10c00:	03800793          	li	a5,56
   10c04:	00f50863          	beq	a0,a5,10c14 <sha256_final+0x3e>
   10c08:	41260633          	sub	a2,a2,s2
   10c0c:	4581                	li	a1,0
   10c0e:	9522                	add	a0,a0,s0
   10c10:	7c6000ef          	jal	113d6 <memset>
   10c14:	4430                	lw	a2,72(s0)
   10c16:	447c                	lw	a5,76(s0)
   10c18:	090e                	slli	s2,s2,0x3
   10c1a:	964a                	add	a2,a2,s2
   10c1c:	01263933          	sltu	s2,a2,s2
   10c20:	97ca                	add	a5,a5,s2
   10c22:	0107d813          	srli	a6,a5,0x10
   10c26:	01065713          	srli	a4,a2,0x10
   10c2a:	0087d513          	srli	a0,a5,0x8
   10c2e:	00865593          	srli	a1,a2,0x8
   10c32:	0ff87813          	zext.b	a6,a6
   10c36:	0ff77713          	zext.b	a4,a4
   10c3a:	0187d693          	srli	a3,a5,0x18
   10c3e:	0822                	slli	a6,a6,0x8
   10c40:	01865893          	srli	a7,a2,0x18
   10c44:	0ff57513          	zext.b	a0,a0
   10c48:	0722                	slli	a4,a4,0x8
   10c4a:	0ff5f593          	zext.b	a1,a1
   10c4e:	0542                	slli	a0,a0,0x10
   10c50:	0106e6b3          	or	a3,a3,a6
   10c54:	05c2                	slli	a1,a1,0x10
   10c56:	01176733          	or	a4,a4,a7
   10c5a:	01000837          	lui	a6,0x1000
   10c5e:	187d                	addi	a6,a6,-1 # ffffff <__BSS_END__+0xfe3373>
   10c60:	8ec9                	or	a3,a3,a0
   10c62:	8f4d                	or	a4,a4,a1
   10c64:	01879513          	slli	a0,a5,0x18
   10c68:	01861593          	slli	a1,a2,0x18
   10c6c:	0106f6b3          	and	a3,a3,a6
   10c70:	01077733          	and	a4,a4,a6
   10c74:	8ec9                	or	a3,a3,a0
   10c76:	8f4d                	or	a4,a4,a1
   10c78:	c47c                	sw	a5,76(s0)
   10c7a:	c430                	sw	a2,72(s0)
   10c7c:	dc14                	sw	a3,56(s0)
   10c7e:	dc58                	sw	a4,60(s0)
   10c80:	85a2                	mv	a1,s0
   10c82:	8522                	mv	a0,s0
   10c84:	e20ff0ef          	jal	102a4 <sha256_transform>
   10c88:	05344783          	lbu	a5,83(s0)
   10c8c:	00f48023          	sb	a5,0(s1)
   10c90:	05744783          	lbu	a5,87(s0)
   10c94:	00f48223          	sb	a5,4(s1)
   10c98:	05b44783          	lbu	a5,91(s0)
   10c9c:	00f48423          	sb	a5,8(s1)
   10ca0:	05f44783          	lbu	a5,95(s0)
   10ca4:	00f48623          	sb	a5,12(s1)
   10ca8:	06344783          	lbu	a5,99(s0)
   10cac:	00f48823          	sb	a5,16(s1)
   10cb0:	06744783          	lbu	a5,103(s0)
   10cb4:	00f48a23          	sb	a5,20(s1)
   10cb8:	06b44783          	lbu	a5,107(s0)
   10cbc:	00f48c23          	sb	a5,24(s1)
   10cc0:	06f44783          	lbu	a5,111(s0)
   10cc4:	00f48e23          	sb	a5,28(s1)
   10cc8:	05245783          	lhu	a5,82(s0)
   10ccc:	00f480a3          	sb	a5,1(s1)
   10cd0:	05645783          	lhu	a5,86(s0)
   10cd4:	00f482a3          	sb	a5,5(s1)
   10cd8:	05a45783          	lhu	a5,90(s0)
   10cdc:	00f484a3          	sb	a5,9(s1)
   10ce0:	05e45783          	lhu	a5,94(s0)
   10ce4:	00f486a3          	sb	a5,13(s1)
   10ce8:	06245783          	lhu	a5,98(s0)
   10cec:	00f488a3          	sb	a5,17(s1)
   10cf0:	06645783          	lhu	a5,102(s0)
   10cf4:	00f48aa3          	sb	a5,21(s1)
   10cf8:	06a45783          	lhu	a5,106(s0)
   10cfc:	00f48ca3          	sb	a5,25(s1)
   10d00:	06e45783          	lhu	a5,110(s0)
   10d04:	00f48ea3          	sb	a5,29(s1)
   10d08:	483c                	lw	a5,80(s0)
   10d0a:	83a1                	srli	a5,a5,0x8
   10d0c:	00f48123          	sb	a5,2(s1)
   10d10:	487c                	lw	a5,84(s0)
   10d12:	83a1                	srli	a5,a5,0x8
   10d14:	00f48323          	sb	a5,6(s1)
   10d18:	4c3c                	lw	a5,88(s0)
   10d1a:	83a1                	srli	a5,a5,0x8
   10d1c:	00f48523          	sb	a5,10(s1)
   10d20:	4c7c                	lw	a5,92(s0)
   10d22:	83a1                	srli	a5,a5,0x8
   10d24:	00f48723          	sb	a5,14(s1)
   10d28:	503c                	lw	a5,96(s0)
   10d2a:	83a1                	srli	a5,a5,0x8
   10d2c:	00f48923          	sb	a5,18(s1)
   10d30:	507c                	lw	a5,100(s0)
   10d32:	83a1                	srli	a5,a5,0x8
   10d34:	00f48b23          	sb	a5,22(s1)
   10d38:	543c                	lw	a5,104(s0)
   10d3a:	83a1                	srli	a5,a5,0x8
   10d3c:	00f48d23          	sb	a5,26(s1)
   10d40:	547c                	lw	a5,108(s0)
   10d42:	83a1                	srli	a5,a5,0x8
   10d44:	00f48f23          	sb	a5,30(s1)
   10d48:	483c                	lw	a5,80(s0)
   10d4a:	00f481a3          	sb	a5,3(s1)
   10d4e:	487c                	lw	a5,84(s0)
   10d50:	00f483a3          	sb	a5,7(s1)
   10d54:	4c3c                	lw	a5,88(s0)
   10d56:	00f485a3          	sb	a5,11(s1)
   10d5a:	4c7c                	lw	a5,92(s0)
   10d5c:	00f487a3          	sb	a5,15(s1)
   10d60:	503c                	lw	a5,96(s0)
   10d62:	00f489a3          	sb	a5,19(s1)
   10d66:	507c                	lw	a5,100(s0)
   10d68:	00f48ba3          	sb	a5,23(s1)
   10d6c:	543c                	lw	a5,104(s0)
   10d6e:	00f48da3          	sb	a5,27(s1)
   10d72:	547c                	lw	a5,108(s0)
   10d74:	00f48fa3          	sb	a5,31(s1)
   10d78:	40b2                	lw	ra,12(sp)
   10d7a:	4422                	lw	s0,8(sp)
   10d7c:	4492                	lw	s1,4(sp)
   10d7e:	4902                	lw	s2,0(sp)
   10d80:	0141                	addi	sp,sp,16
   10d82:	8082                	ret
   10d84:	03f00613          	li	a2,63
   10d88:	00a66763          	bltu	a2,a0,10d96 <sha256_final+0x1c0>
   10d8c:	41260633          	sub	a2,a2,s2
   10d90:	4581                	li	a1,0
   10d92:	9522                	add	a0,a0,s0
   10d94:	2589                	jal	113d6 <memset>
   10d96:	85a2                	mv	a1,s0
   10d98:	8522                	mv	a0,s0
   10d9a:	d0aff0ef          	jal	102a4 <sha256_transform>
   10d9e:	03800613          	li	a2,56
   10da2:	4581                	li	a1,0
   10da4:	8522                	mv	a0,s0
   10da6:	2d05                	jal	113d6 <memset>
   10da8:	b5b5                	j	10c14 <sha256_final+0x3e>

00010daa <__fp_lock>:
   10daa:	4501                	li	a0,0
   10dac:	8082                	ret

00010dae <stdio_exit_handler>:
   10dae:	6671                	lui	a2,0x1c
   10db0:	65d1                	lui	a1,0x14
   10db2:	6571                	lui	a0,0x1c
   10db4:	24060613          	addi	a2,a2,576 # 1c240 <__sglue>
   10db8:	ac458593          	addi	a1,a1,-1340 # 13ac4 <_fclose_r>
   10dbc:	25050513          	addi	a0,a0,592 # 1c250 <_impure_data>
   10dc0:	aca9                	j	1101a <_fwalk_sglue>

00010dc2 <cleanup_stdio>:
   10dc2:	414c                	lw	a1,4(a0)
   10dc4:	1141                	addi	sp,sp,-16
   10dc6:	c422                	sw	s0,8(sp)
   10dc8:	c606                	sw	ra,12(sp)
   10dca:	f5c18793          	addi	a5,gp,-164 # 1c99c <__sf>
   10dce:	842a                	mv	s0,a0
   10dd0:	00f58463          	beq	a1,a5,10dd8 <cleanup_stdio+0x16>
   10dd4:	4f1020ef          	jal	13ac4 <_fclose_r>
   10dd8:	440c                	lw	a1,8(s0)
   10dda:	fc418793          	addi	a5,gp,-60 # 1ca04 <__sf+0x68>
   10dde:	00f58563          	beq	a1,a5,10de8 <cleanup_stdio+0x26>
   10de2:	8522                	mv	a0,s0
   10de4:	4e1020ef          	jal	13ac4 <_fclose_r>
   10de8:	444c                	lw	a1,12(s0)
   10dea:	02c18793          	addi	a5,gp,44 # 1ca6c <__global_pointer$+0x2c>
   10dee:	00f58863          	beq	a1,a5,10dfe <cleanup_stdio+0x3c>
   10df2:	8522                	mv	a0,s0
   10df4:	4422                	lw	s0,8(sp)
   10df6:	40b2                	lw	ra,12(sp)
   10df8:	0141                	addi	sp,sp,16
   10dfa:	4cb0206f          	j	13ac4 <_fclose_r>
   10dfe:	40b2                	lw	ra,12(sp)
   10e00:	4422                	lw	s0,8(sp)
   10e02:	0141                	addi	sp,sp,16
   10e04:	8082                	ret

00010e06 <__fp_unlock>:
   10e06:	4501                	li	a0,0
   10e08:	8082                	ret

00010e0a <global_stdio_init.part.0>:
   10e0a:	1101                	addi	sp,sp,-32
   10e0c:	67c5                	lui	a5,0x11
   10e0e:	cc22                	sw	s0,24(sp)
   10e10:	dae78793          	addi	a5,a5,-594 # 10dae <stdio_exit_handler>
   10e14:	f5c18413          	addi	s0,gp,-164 # 1c99c <__sf>
   10e18:	ce06                	sw	ra,28(sp)
   10e1a:	ca26                	sw	s1,20(sp)
   10e1c:	c84a                	sw	s2,16(sp)
   10e1e:	c64e                	sw	s3,12(sp)
   10e20:	c452                	sw	s4,8(sp)
   10e22:	f2f1a023          	sw	a5,-224(gp) # 1c960 <__stdio_exit_handler>
   10e26:	4621                	li	a2,8
   10e28:	4791                	li	a5,4
   10e2a:	4581                	li	a1,0
   10e2c:	fb818513          	addi	a0,gp,-72 # 1c9f8 <__sf+0x5c>
   10e30:	c45c                	sw	a5,12(s0)
   10e32:	00042023          	sw	zero,0(s0)
   10e36:	00042223          	sw	zero,4(s0)
   10e3a:	00042423          	sw	zero,8(s0)
   10e3e:	06042223          	sw	zero,100(s0)
   10e42:	00042823          	sw	zero,16(s0)
   10e46:	00042a23          	sw	zero,20(s0)
   10e4a:	00042c23          	sw	zero,24(s0)
   10e4e:	2361                	jal	113d6 <memset>
   10e50:	67c1                	lui	a5,0x10
   10e52:	6a45                	lui	s4,0x11
   10e54:	69c5                	lui	s3,0x11
   10e56:	6945                	lui	s2,0x11
   10e58:	64c5                	lui	s1,0x11
   10e5a:	0daa0a13          	addi	s4,s4,218 # 110da <__sread>
   10e5e:	11498993          	addi	s3,s3,276 # 11114 <__swrite>
   10e62:	16490913          	addi	s2,s2,356 # 11164 <__sseek>
   10e66:	1ac48493          	addi	s1,s1,428 # 111ac <__sclose>
   10e6a:	07a5                	addi	a5,a5,9 # 10009 <exit-0x8b>
   10e6c:	4621                	li	a2,8
   10e6e:	4581                	li	a1,0
   10e70:	02018513          	addi	a0,gp,32 # 1ca60 <__global_pointer$+0x20>
   10e74:	03442023          	sw	s4,32(s0)
   10e78:	03342223          	sw	s3,36(s0)
   10e7c:	03242423          	sw	s2,40(s0)
   10e80:	d444                	sw	s1,44(s0)
   10e82:	d87c                	sw	a5,116(s0)
   10e84:	cc40                	sw	s0,28(s0)
   10e86:	06042423          	sw	zero,104(s0)
   10e8a:	06042623          	sw	zero,108(s0)
   10e8e:	06042823          	sw	zero,112(s0)
   10e92:	0c042623          	sw	zero,204(s0)
   10e96:	06042c23          	sw	zero,120(s0)
   10e9a:	06042e23          	sw	zero,124(s0)
   10e9e:	08042023          	sw	zero,128(s0)
   10ea2:	2b15                	jal	113d6 <memset>
   10ea4:	000207b7          	lui	a5,0x20
   10ea8:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0x3386>
   10eaa:	fc418713          	addi	a4,gp,-60 # 1ca04 <__sf+0x68>
   10eae:	4621                	li	a2,8
   10eb0:	4581                	li	a1,0
   10eb2:	08818513          	addi	a0,gp,136 # 1cac8 <__global_pointer$+0x88>
   10eb6:	09442423          	sw	s4,136(s0)
   10eba:	09342623          	sw	s3,140(s0)
   10ebe:	09242823          	sw	s2,144(s0)
   10ec2:	08942a23          	sw	s1,148(s0)
   10ec6:	0cf42e23          	sw	a5,220(s0)
   10eca:	08e42223          	sw	a4,132(s0)
   10ece:	0c042823          	sw	zero,208(s0)
   10ed2:	0c042a23          	sw	zero,212(s0)
   10ed6:	0c042c23          	sw	zero,216(s0)
   10eda:	12042a23          	sw	zero,308(s0)
   10ede:	0e042023          	sw	zero,224(s0)
   10ee2:	0e042223          	sw	zero,228(s0)
   10ee6:	0e042423          	sw	zero,232(s0)
   10eea:	21f5                	jal	113d6 <memset>
   10eec:	02c18793          	addi	a5,gp,44 # 1ca6c <__global_pointer$+0x2c>
   10ef0:	0f442823          	sw	s4,240(s0)
   10ef4:	0f342a23          	sw	s3,244(s0)
   10ef8:	0f242c23          	sw	s2,248(s0)
   10efc:	0e942e23          	sw	s1,252(s0)
   10f00:	40f2                	lw	ra,28(sp)
   10f02:	0ef42623          	sw	a5,236(s0)
   10f06:	4462                	lw	s0,24(sp)
   10f08:	44d2                	lw	s1,20(sp)
   10f0a:	4942                	lw	s2,16(sp)
   10f0c:	49b2                	lw	s3,12(sp)
   10f0e:	4a22                	lw	s4,8(sp)
   10f10:	6105                	addi	sp,sp,32
   10f12:	8082                	ret

00010f14 <__sfp>:
   10f14:	f201a783          	lw	a5,-224(gp) # 1c960 <__stdio_exit_handler>
   10f18:	1101                	addi	sp,sp,-32
   10f1a:	c64e                	sw	s3,12(sp)
   10f1c:	ce06                	sw	ra,28(sp)
   10f1e:	cc22                	sw	s0,24(sp)
   10f20:	ca26                	sw	s1,20(sp)
   10f22:	c84a                	sw	s2,16(sp)
   10f24:	89aa                	mv	s3,a0
   10f26:	c7cd                	beqz	a5,10fd0 <__sfp+0xbc>
   10f28:	6971                	lui	s2,0x1c
   10f2a:	24090913          	addi	s2,s2,576 # 1c240 <__sglue>
   10f2e:	54fd                	li	s1,-1
   10f30:	00492783          	lw	a5,4(s2)
   10f34:	00892403          	lw	s0,8(s2)
   10f38:	17fd                	addi	a5,a5,-1
   10f3a:	0007d763          	bgez	a5,10f48 <__sfp+0x34>
   10f3e:	a8b9                	j	10f9c <__sfp+0x88>
   10f40:	06840413          	addi	s0,s0,104
   10f44:	04978c63          	beq	a5,s1,10f9c <__sfp+0x88>
   10f48:	00c41703          	lh	a4,12(s0)
   10f4c:	17fd                	addi	a5,a5,-1
   10f4e:	fb6d                	bnez	a4,10f40 <__sfp+0x2c>
   10f50:	77c1                	lui	a5,0xffff0
   10f52:	0785                	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffd3375>
   10f54:	c45c                	sw	a5,12(s0)
   10f56:	06042223          	sw	zero,100(s0)
   10f5a:	00042023          	sw	zero,0(s0)
   10f5e:	00042423          	sw	zero,8(s0)
   10f62:	00042223          	sw	zero,4(s0)
   10f66:	00042823          	sw	zero,16(s0)
   10f6a:	00042a23          	sw	zero,20(s0)
   10f6e:	00042c23          	sw	zero,24(s0)
   10f72:	4621                	li	a2,8
   10f74:	4581                	li	a1,0
   10f76:	05c40513          	addi	a0,s0,92
   10f7a:	29b1                	jal	113d6 <memset>
   10f7c:	02042823          	sw	zero,48(s0)
   10f80:	02042a23          	sw	zero,52(s0)
   10f84:	04042223          	sw	zero,68(s0)
   10f88:	04042423          	sw	zero,72(s0)
   10f8c:	40f2                	lw	ra,28(sp)
   10f8e:	8522                	mv	a0,s0
   10f90:	4462                	lw	s0,24(sp)
   10f92:	44d2                	lw	s1,20(sp)
   10f94:	4942                	lw	s2,16(sp)
   10f96:	49b2                	lw	s3,12(sp)
   10f98:	6105                	addi	sp,sp,32
   10f9a:	8082                	ret
   10f9c:	00092403          	lw	s0,0(s2)
   10fa0:	c019                	beqz	s0,10fa6 <__sfp+0x92>
   10fa2:	8922                	mv	s2,s0
   10fa4:	b771                	j	10f30 <__sfp+0x1c>
   10fa6:	1ac00593          	li	a1,428
   10faa:	854e                	mv	a0,s3
   10fac:	0ff000ef          	jal	118aa <_malloc_r>
   10fb0:	842a                	mv	s0,a0
   10fb2:	c10d                	beqz	a0,10fd4 <__sfp+0xc0>
   10fb4:	0531                	addi	a0,a0,12
   10fb6:	4791                	li	a5,4
   10fb8:	00042023          	sw	zero,0(s0)
   10fbc:	c05c                	sw	a5,4(s0)
   10fbe:	c408                	sw	a0,8(s0)
   10fc0:	1a000613          	li	a2,416
   10fc4:	4581                	li	a1,0
   10fc6:	2901                	jal	113d6 <memset>
   10fc8:	00892023          	sw	s0,0(s2)
   10fcc:	8922                	mv	s2,s0
   10fce:	b78d                	j	10f30 <__sfp+0x1c>
   10fd0:	3d2d                	jal	10e0a <global_stdio_init.part.0>
   10fd2:	bf99                	j	10f28 <__sfp+0x14>
   10fd4:	00092023          	sw	zero,0(s2)
   10fd8:	47b1                	li	a5,12
   10fda:	00f9a023          	sw	a5,0(s3)
   10fde:	b77d                	j	10f8c <__sfp+0x78>

00010fe0 <__sinit>:
   10fe0:	595c                	lw	a5,52(a0)
   10fe2:	c391                	beqz	a5,10fe6 <__sinit+0x6>
   10fe4:	8082                	ret
   10fe6:	f201a703          	lw	a4,-224(gp) # 1c960 <__stdio_exit_handler>
   10fea:	67c5                	lui	a5,0x11
   10fec:	dc278793          	addi	a5,a5,-574 # 10dc2 <cleanup_stdio>
   10ff0:	d95c                	sw	a5,52(a0)
   10ff2:	fb6d                	bnez	a4,10fe4 <__sinit+0x4>
   10ff4:	bd19                	j	10e0a <global_stdio_init.part.0>

00010ff6 <__sfp_lock_acquire>:
   10ff6:	8082                	ret

00010ff8 <__sfp_lock_release>:
   10ff8:	8082                	ret

00010ffa <__fp_lock_all>:
   10ffa:	6671                	lui	a2,0x1c
   10ffc:	65c5                	lui	a1,0x11
   10ffe:	24060613          	addi	a2,a2,576 # 1c240 <__sglue>
   11002:	daa58593          	addi	a1,a1,-598 # 10daa <__fp_lock>
   11006:	4501                	li	a0,0
   11008:	a809                	j	1101a <_fwalk_sglue>

0001100a <__fp_unlock_all>:
   1100a:	6671                	lui	a2,0x1c
   1100c:	65c5                	lui	a1,0x11
   1100e:	24060613          	addi	a2,a2,576 # 1c240 <__sglue>
   11012:	e0658593          	addi	a1,a1,-506 # 10e06 <__fp_unlock>
   11016:	4501                	li	a0,0
   11018:	a009                	j	1101a <_fwalk_sglue>

0001101a <_fwalk_sglue>:
   1101a:	7179                	addi	sp,sp,-48
   1101c:	d04a                	sw	s2,32(sp)
   1101e:	ce4e                	sw	s3,28(sp)
   11020:	cc52                	sw	s4,24(sp)
   11022:	ca56                	sw	s5,20(sp)
   11024:	c85a                	sw	s6,16(sp)
   11026:	c65e                	sw	s7,12(sp)
   11028:	d606                	sw	ra,44(sp)
   1102a:	d422                	sw	s0,40(sp)
   1102c:	d226                	sw	s1,36(sp)
   1102e:	8b2a                	mv	s6,a0
   11030:	8bae                	mv	s7,a1
   11032:	8ab2                	mv	s5,a2
   11034:	4a01                	li	s4,0
   11036:	4985                	li	s3,1
   11038:	597d                	li	s2,-1
   1103a:	004aa483          	lw	s1,4(s5)
   1103e:	008aa403          	lw	s0,8(s5)
   11042:	14fd                	addi	s1,s1,-1
   11044:	0204c463          	bltz	s1,1106c <_fwalk_sglue+0x52>
   11048:	00c45783          	lhu	a5,12(s0)
   1104c:	00f9fb63          	bgeu	s3,a5,11062 <_fwalk_sglue+0x48>
   11050:	00e41783          	lh	a5,14(s0)
   11054:	85a2                	mv	a1,s0
   11056:	855a                	mv	a0,s6
   11058:	01278563          	beq	a5,s2,11062 <_fwalk_sglue+0x48>
   1105c:	9b82                	jalr	s7
   1105e:	00aa6a33          	or	s4,s4,a0
   11062:	14fd                	addi	s1,s1,-1
   11064:	06840413          	addi	s0,s0,104
   11068:	ff2490e3          	bne	s1,s2,11048 <_fwalk_sglue+0x2e>
   1106c:	000aaa83          	lw	s5,0(s5)
   11070:	fc0a95e3          	bnez	s5,1103a <_fwalk_sglue+0x20>
   11074:	50b2                	lw	ra,44(sp)
   11076:	5422                	lw	s0,40(sp)
   11078:	5492                	lw	s1,36(sp)
   1107a:	5902                	lw	s2,32(sp)
   1107c:	49f2                	lw	s3,28(sp)
   1107e:	4ad2                	lw	s5,20(sp)
   11080:	4b42                	lw	s6,16(sp)
   11082:	4bb2                	lw	s7,12(sp)
   11084:	8552                	mv	a0,s4
   11086:	4a62                	lw	s4,24(sp)
   11088:	6145                	addi	sp,sp,48
   1108a:	8082                	ret

0001108c <_printf_r>:
   1108c:	7139                	addi	sp,sp,-64
   1108e:	d432                	sw	a2,40(sp)
   11090:	d636                	sw	a3,44(sp)
   11092:	d83a                	sw	a4,48(sp)
   11094:	da3e                	sw	a5,52(sp)
   11096:	dc42                	sw	a6,56(sp)
   11098:	de46                	sw	a7,60(sp)
   1109a:	862e                	mv	a2,a1
   1109c:	450c                	lw	a1,8(a0)
   1109e:	1034                	addi	a3,sp,40
   110a0:	ce06                	sw	ra,28(sp)
   110a2:	c636                	sw	a3,12(sp)
   110a4:	5af000ef          	jal	11e52 <_vfprintf_r>
   110a8:	40f2                	lw	ra,28(sp)
   110aa:	6121                	addi	sp,sp,64
   110ac:	8082                	ret

000110ae <printf>:
   110ae:	f141a303          	lw	t1,-236(gp) # 1c954 <_impure_ptr>
   110b2:	7139                	addi	sp,sp,-64
   110b4:	d432                	sw	a2,40(sp)
   110b6:	d636                	sw	a3,44(sp)
   110b8:	d22e                	sw	a1,36(sp)
   110ba:	d83a                	sw	a4,48(sp)
   110bc:	da3e                	sw	a5,52(sp)
   110be:	dc42                	sw	a6,56(sp)
   110c0:	de46                	sw	a7,60(sp)
   110c2:	00832583          	lw	a1,8(t1)
   110c6:	1054                	addi	a3,sp,36
   110c8:	862a                	mv	a2,a0
   110ca:	851a                	mv	a0,t1
   110cc:	ce06                	sw	ra,28(sp)
   110ce:	c636                	sw	a3,12(sp)
   110d0:	583000ef          	jal	11e52 <_vfprintf_r>
   110d4:	40f2                	lw	ra,28(sp)
   110d6:	6121                	addi	sp,sp,64
   110d8:	8082                	ret

000110da <__sread>:
   110da:	1141                	addi	sp,sp,-16
   110dc:	c422                	sw	s0,8(sp)
   110de:	842e                	mv	s0,a1
   110e0:	00e59583          	lh	a1,14(a1)
   110e4:	c606                	sw	ra,12(sp)
   110e6:	2439                	jal	112f4 <_read_r>
   110e8:	00054963          	bltz	a0,110fa <__sread+0x20>
   110ec:	483c                	lw	a5,80(s0)
   110ee:	40b2                	lw	ra,12(sp)
   110f0:	97aa                	add	a5,a5,a0
   110f2:	c83c                	sw	a5,80(s0)
   110f4:	4422                	lw	s0,8(sp)
   110f6:	0141                	addi	sp,sp,16
   110f8:	8082                	ret
   110fa:	00c45783          	lhu	a5,12(s0)
   110fe:	777d                	lui	a4,0xfffff
   11100:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe2373>
   11102:	8ff9                	and	a5,a5,a4
   11104:	40b2                	lw	ra,12(sp)
   11106:	00f41623          	sh	a5,12(s0)
   1110a:	4422                	lw	s0,8(sp)
   1110c:	0141                	addi	sp,sp,16
   1110e:	8082                	ret

00011110 <__seofread>:
   11110:	4501                	li	a0,0
   11112:	8082                	ret

00011114 <__swrite>:
   11114:	00c59783          	lh	a5,12(a1)
   11118:	1101                	addi	sp,sp,-32
   1111a:	cc22                	sw	s0,24(sp)
   1111c:	ca26                	sw	s1,20(sp)
   1111e:	c84a                	sw	s2,16(sp)
   11120:	c64e                	sw	s3,12(sp)
   11122:	ce06                	sw	ra,28(sp)
   11124:	1007f713          	andi	a4,a5,256
   11128:	842e                	mv	s0,a1
   1112a:	84aa                	mv	s1,a0
   1112c:	8932                	mv	s2,a2
   1112e:	89b6                	mv	s3,a3
   11130:	e315                	bnez	a4,11154 <__swrite+0x40>
   11132:	777d                	lui	a4,0xfffff
   11134:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe2373>
   11136:	8ff9                	and	a5,a5,a4
   11138:	00e41583          	lh	a1,14(s0)
   1113c:	00f41623          	sh	a5,12(s0)
   11140:	4462                	lw	s0,24(sp)
   11142:	40f2                	lw	ra,28(sp)
   11144:	86ce                	mv	a3,s3
   11146:	864a                	mv	a2,s2
   11148:	49b2                	lw	s3,12(sp)
   1114a:	4942                	lw	s2,16(sp)
   1114c:	8526                	mv	a0,s1
   1114e:	44d2                	lw	s1,20(sp)
   11150:	6105                	addi	sp,sp,32
   11152:	aaf9                	j	11330 <_write_r>
   11154:	00e59583          	lh	a1,14(a1)
   11158:	4689                	li	a3,2
   1115a:	4601                	li	a2,0
   1115c:	2ab1                	jal	112b8 <_lseek_r>
   1115e:	00c41783          	lh	a5,12(s0)
   11162:	bfc1                	j	11132 <__swrite+0x1e>

00011164 <__sseek>:
   11164:	1141                	addi	sp,sp,-16
   11166:	c422                	sw	s0,8(sp)
   11168:	842e                	mv	s0,a1
   1116a:	00e59583          	lh	a1,14(a1)
   1116e:	c606                	sw	ra,12(sp)
   11170:	22a1                	jal	112b8 <_lseek_r>
   11172:	57fd                	li	a5,-1
   11174:	00f50f63          	beq	a0,a5,11192 <__sseek+0x2e>
   11178:	00c45783          	lhu	a5,12(s0)
   1117c:	6705                	lui	a4,0x1
   1117e:	40b2                	lw	ra,12(sp)
   11180:	8fd9                	or	a5,a5,a4
   11182:	07c2                	slli	a5,a5,0x10
   11184:	87c1                	srai	a5,a5,0x10
   11186:	c828                	sw	a0,80(s0)
   11188:	00f41623          	sh	a5,12(s0)
   1118c:	4422                	lw	s0,8(sp)
   1118e:	0141                	addi	sp,sp,16
   11190:	8082                	ret
   11192:	00c45783          	lhu	a5,12(s0)
   11196:	777d                	lui	a4,0xfffff
   11198:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe2373>
   1119a:	8ff9                	and	a5,a5,a4
   1119c:	07c2                	slli	a5,a5,0x10
   1119e:	87c1                	srai	a5,a5,0x10
   111a0:	40b2                	lw	ra,12(sp)
   111a2:	00f41623          	sh	a5,12(s0)
   111a6:	4422                	lw	s0,8(sp)
   111a8:	0141                	addi	sp,sp,16
   111aa:	8082                	ret

000111ac <__sclose>:
   111ac:	00e59583          	lh	a1,14(a1)
   111b0:	a899                	j	11206 <_close_r>

000111b2 <memcmp>:
   111b2:	478d                	li	a5,3
   111b4:	02c7f463          	bgeu	a5,a2,111dc <memcmp+0x2a>
   111b8:	00a5e7b3          	or	a5,a1,a0
   111bc:	8b8d                	andi	a5,a5,3
   111be:	ef81                	bnez	a5,111d6 <memcmp+0x24>
   111c0:	468d                	li	a3,3
   111c2:	a031                	j	111ce <memcmp+0x1c>
   111c4:	1671                	addi	a2,a2,-4
   111c6:	0511                	addi	a0,a0,4
   111c8:	0591                	addi	a1,a1,4
   111ca:	00c6f963          	bgeu	a3,a2,111dc <memcmp+0x2a>
   111ce:	4118                	lw	a4,0(a0)
   111d0:	419c                	lw	a5,0(a1)
   111d2:	fef709e3          	beq	a4,a5,111c4 <memcmp+0x12>
   111d6:	fff60693          	addi	a3,a2,-1
   111da:	a021                	j	111e2 <memcmp+0x30>
   111dc:	fff60693          	addi	a3,a2,-1
   111e0:	c20d                	beqz	a2,11202 <memcmp+0x50>
   111e2:	0685                	addi	a3,a3,1
   111e4:	96aa                	add	a3,a3,a0
   111e6:	a019                	j	111ec <memcmp+0x3a>
   111e8:	00a68d63          	beq	a3,a0,11202 <memcmp+0x50>
   111ec:	00054783          	lbu	a5,0(a0)
   111f0:	0005c703          	lbu	a4,0(a1)
   111f4:	0505                	addi	a0,a0,1
   111f6:	0585                	addi	a1,a1,1
   111f8:	fee788e3          	beq	a5,a4,111e8 <memcmp+0x36>
   111fc:	40e78533          	sub	a0,a5,a4
   11200:	8082                	ret
   11202:	4501                	li	a0,0
   11204:	8082                	ret

00011206 <_close_r>:
   11206:	1141                	addi	sp,sp,-16
   11208:	c422                	sw	s0,8(sp)
   1120a:	c226                	sw	s1,4(sp)
   1120c:	842a                	mv	s0,a0
   1120e:	852e                	mv	a0,a1
   11210:	c606                	sw	ra,12(sp)
   11212:	f201a223          	sw	zero,-220(gp) # 1c964 <errno>
   11216:	747060ef          	jal	1815c <_close>
   1121a:	57fd                	li	a5,-1
   1121c:	00f50763          	beq	a0,a5,1122a <_close_r+0x24>
   11220:	40b2                	lw	ra,12(sp)
   11222:	4422                	lw	s0,8(sp)
   11224:	4492                	lw	s1,4(sp)
   11226:	0141                	addi	sp,sp,16
   11228:	8082                	ret
   1122a:	f241a783          	lw	a5,-220(gp) # 1c964 <errno>
   1122e:	dbed                	beqz	a5,11220 <_close_r+0x1a>
   11230:	40b2                	lw	ra,12(sp)
   11232:	c01c                	sw	a5,0(s0)
   11234:	4422                	lw	s0,8(sp)
   11236:	4492                	lw	s1,4(sp)
   11238:	0141                	addi	sp,sp,16
   1123a:	8082                	ret

0001123c <_reclaim_reent>:
   1123c:	f141a783          	lw	a5,-236(gp) # 1c954 <_impure_ptr>
   11240:	06a78b63          	beq	a5,a0,112b6 <_reclaim_reent+0x7a>
   11244:	416c                	lw	a1,68(a0)
   11246:	1101                	addi	sp,sp,-32
   11248:	ca26                	sw	s1,20(sp)
   1124a:	ce06                	sw	ra,28(sp)
   1124c:	cc22                	sw	s0,24(sp)
   1124e:	84aa                	mv	s1,a0
   11250:	c59d                	beqz	a1,1127e <_reclaim_reent+0x42>
   11252:	c84a                	sw	s2,16(sp)
   11254:	c64e                	sw	s3,12(sp)
   11256:	4901                	li	s2,0
   11258:	08000993          	li	s3,128
   1125c:	012587b3          	add	a5,a1,s2
   11260:	4380                	lw	s0,0(a5)
   11262:	c419                	beqz	s0,11270 <_reclaim_reent+0x34>
   11264:	85a2                	mv	a1,s0
   11266:	4000                	lw	s0,0(s0)
   11268:	8526                	mv	a0,s1
   1126a:	2939                	jal	11688 <_free_r>
   1126c:	fc65                	bnez	s0,11264 <_reclaim_reent+0x28>
   1126e:	40ec                	lw	a1,68(s1)
   11270:	0911                	addi	s2,s2,4
   11272:	ff3915e3          	bne	s2,s3,1125c <_reclaim_reent+0x20>
   11276:	8526                	mv	a0,s1
   11278:	2901                	jal	11688 <_free_r>
   1127a:	4942                	lw	s2,16(sp)
   1127c:	49b2                	lw	s3,12(sp)
   1127e:	5c8c                	lw	a1,56(s1)
   11280:	c199                	beqz	a1,11286 <_reclaim_reent+0x4a>
   11282:	8526                	mv	a0,s1
   11284:	2111                	jal	11688 <_free_r>
   11286:	40a0                	lw	s0,64(s1)
   11288:	c411                	beqz	s0,11294 <_reclaim_reent+0x58>
   1128a:	85a2                	mv	a1,s0
   1128c:	4000                	lw	s0,0(s0)
   1128e:	8526                	mv	a0,s1
   11290:	2ee5                	jal	11688 <_free_r>
   11292:	fc65                	bnez	s0,1128a <_reclaim_reent+0x4e>
   11294:	44ec                	lw	a1,76(s1)
   11296:	c199                	beqz	a1,1129c <_reclaim_reent+0x60>
   11298:	8526                	mv	a0,s1
   1129a:	26fd                	jal	11688 <_free_r>
   1129c:	58dc                	lw	a5,52(s1)
   1129e:	c799                	beqz	a5,112ac <_reclaim_reent+0x70>
   112a0:	4462                	lw	s0,24(sp)
   112a2:	40f2                	lw	ra,28(sp)
   112a4:	8526                	mv	a0,s1
   112a6:	44d2                	lw	s1,20(sp)
   112a8:	6105                	addi	sp,sp,32
   112aa:	8782                	jr	a5
   112ac:	40f2                	lw	ra,28(sp)
   112ae:	4462                	lw	s0,24(sp)
   112b0:	44d2                	lw	s1,20(sp)
   112b2:	6105                	addi	sp,sp,32
   112b4:	8082                	ret
   112b6:	8082                	ret

000112b8 <_lseek_r>:
   112b8:	1141                	addi	sp,sp,-16
   112ba:	872e                	mv	a4,a1
   112bc:	c422                	sw	s0,8(sp)
   112be:	c226                	sw	s1,4(sp)
   112c0:	85b2                	mv	a1,a2
   112c2:	842a                	mv	s0,a0
   112c4:	8636                	mv	a2,a3
   112c6:	853a                	mv	a0,a4
   112c8:	c606                	sw	ra,12(sp)
   112ca:	f201a223          	sw	zero,-220(gp) # 1c964 <errno>
   112ce:	753060ef          	jal	18220 <_lseek>
   112d2:	57fd                	li	a5,-1
   112d4:	00f50763          	beq	a0,a5,112e2 <_lseek_r+0x2a>
   112d8:	40b2                	lw	ra,12(sp)
   112da:	4422                	lw	s0,8(sp)
   112dc:	4492                	lw	s1,4(sp)
   112de:	0141                	addi	sp,sp,16
   112e0:	8082                	ret
   112e2:	f241a783          	lw	a5,-220(gp) # 1c964 <errno>
   112e6:	dbed                	beqz	a5,112d8 <_lseek_r+0x20>
   112e8:	40b2                	lw	ra,12(sp)
   112ea:	c01c                	sw	a5,0(s0)
   112ec:	4422                	lw	s0,8(sp)
   112ee:	4492                	lw	s1,4(sp)
   112f0:	0141                	addi	sp,sp,16
   112f2:	8082                	ret

000112f4 <_read_r>:
   112f4:	1141                	addi	sp,sp,-16
   112f6:	872e                	mv	a4,a1
   112f8:	c422                	sw	s0,8(sp)
   112fa:	c226                	sw	s1,4(sp)
   112fc:	85b2                	mv	a1,a2
   112fe:	842a                	mv	s0,a0
   11300:	8636                	mv	a2,a3
   11302:	853a                	mv	a0,a4
   11304:	c606                	sw	ra,12(sp)
   11306:	f201a223          	sw	zero,-220(gp) # 1c964 <errno>
   1130a:	743060ef          	jal	1824c <_read>
   1130e:	57fd                	li	a5,-1
   11310:	00f50763          	beq	a0,a5,1131e <_read_r+0x2a>
   11314:	40b2                	lw	ra,12(sp)
   11316:	4422                	lw	s0,8(sp)
   11318:	4492                	lw	s1,4(sp)
   1131a:	0141                	addi	sp,sp,16
   1131c:	8082                	ret
   1131e:	f241a783          	lw	a5,-220(gp) # 1c964 <errno>
   11322:	dbed                	beqz	a5,11314 <_read_r+0x20>
   11324:	40b2                	lw	ra,12(sp)
   11326:	c01c                	sw	a5,0(s0)
   11328:	4422                	lw	s0,8(sp)
   1132a:	4492                	lw	s1,4(sp)
   1132c:	0141                	addi	sp,sp,16
   1132e:	8082                	ret

00011330 <_write_r>:
   11330:	1141                	addi	sp,sp,-16
   11332:	872e                	mv	a4,a1
   11334:	c422                	sw	s0,8(sp)
   11336:	c226                	sw	s1,4(sp)
   11338:	85b2                	mv	a1,a2
   1133a:	842a                	mv	s0,a0
   1133c:	8636                	mv	a2,a3
   1133e:	853a                	mv	a0,a4
   11340:	c606                	sw	ra,12(sp)
   11342:	f201a223          	sw	zero,-220(gp) # 1c964 <errno>
   11346:	787060ef          	jal	182cc <_write>
   1134a:	57fd                	li	a5,-1
   1134c:	00f50763          	beq	a0,a5,1135a <_write_r+0x2a>
   11350:	40b2                	lw	ra,12(sp)
   11352:	4422                	lw	s0,8(sp)
   11354:	4492                	lw	s1,4(sp)
   11356:	0141                	addi	sp,sp,16
   11358:	8082                	ret
   1135a:	f241a783          	lw	a5,-220(gp) # 1c964 <errno>
   1135e:	dbed                	beqz	a5,11350 <_write_r+0x20>
   11360:	40b2                	lw	ra,12(sp)
   11362:	c01c                	sw	a5,0(s0)
   11364:	4422                	lw	s0,8(sp)
   11366:	4492                	lw	s1,4(sp)
   11368:	0141                	addi	sp,sp,16
   1136a:	8082                	ret

0001136c <__libc_init_array>:
   1136c:	1141                	addi	sp,sp,-16
   1136e:	c422                	sw	s0,8(sp)
   11370:	67f1                	lui	a5,0x1c
   11372:	6471                	lui	s0,0x1c
   11374:	c04a                	sw	s2,0(sp)
   11376:	23478793          	addi	a5,a5,564 # 1c234 <__init_array_start>
   1137a:	23440713          	addi	a4,s0,564 # 1c234 <__init_array_start>
   1137e:	c606                	sw	ra,12(sp)
   11380:	c226                	sw	s1,4(sp)
   11382:	40e78933          	sub	s2,a5,a4
   11386:	00e78d63          	beq	a5,a4,113a0 <__libc_init_array+0x34>
   1138a:	40295913          	srai	s2,s2,0x2
   1138e:	23440413          	addi	s0,s0,564
   11392:	4481                	li	s1,0
   11394:	401c                	lw	a5,0(s0)
   11396:	0485                	addi	s1,s1,1
   11398:	0411                	addi	s0,s0,4
   1139a:	9782                	jalr	a5
   1139c:	ff24ece3          	bltu	s1,s2,11394 <__libc_init_array+0x28>
   113a0:	6471                	lui	s0,0x1c
   113a2:	67f1                	lui	a5,0x1c
   113a4:	23c78793          	addi	a5,a5,572 # 1c23c <__do_global_dtors_aux_fini_array_entry>
   113a8:	23440713          	addi	a4,s0,564 # 1c234 <__init_array_start>
   113ac:	40e78933          	sub	s2,a5,a4
   113b0:	40295913          	srai	s2,s2,0x2
   113b4:	00e78b63          	beq	a5,a4,113ca <__libc_init_array+0x5e>
   113b8:	23440413          	addi	s0,s0,564
   113bc:	4481                	li	s1,0
   113be:	401c                	lw	a5,0(s0)
   113c0:	0485                	addi	s1,s1,1
   113c2:	0411                	addi	s0,s0,4
   113c4:	9782                	jalr	a5
   113c6:	ff24ece3          	bltu	s1,s2,113be <__libc_init_array+0x52>
   113ca:	40b2                	lw	ra,12(sp)
   113cc:	4422                	lw	s0,8(sp)
   113ce:	4492                	lw	s1,4(sp)
   113d0:	4902                	lw	s2,0(sp)
   113d2:	0141                	addi	sp,sp,16
   113d4:	8082                	ret

000113d6 <memset>:
   113d6:	433d                	li	t1,15
   113d8:	872a                	mv	a4,a0
   113da:	02c37363          	bgeu	t1,a2,11400 <memset+0x2a>
   113de:	00f77793          	andi	a5,a4,15
   113e2:	efbd                	bnez	a5,11460 <memset+0x8a>
   113e4:	e5ad                	bnez	a1,1144e <memset+0x78>
   113e6:	ff067693          	andi	a3,a2,-16
   113ea:	8a3d                	andi	a2,a2,15
   113ec:	96ba                	add	a3,a3,a4
   113ee:	c30c                	sw	a1,0(a4)
   113f0:	c34c                	sw	a1,4(a4)
   113f2:	c70c                	sw	a1,8(a4)
   113f4:	c74c                	sw	a1,12(a4)
   113f6:	0741                	addi	a4,a4,16
   113f8:	fed76be3          	bltu	a4,a3,113ee <memset+0x18>
   113fc:	e211                	bnez	a2,11400 <memset+0x2a>
   113fe:	8082                	ret
   11400:	40c306b3          	sub	a3,t1,a2
   11404:	068a                	slli	a3,a3,0x2
   11406:	00000297          	auipc	t0,0x0
   1140a:	9696                	add	a3,a3,t0
   1140c:	00a68067          	jr	10(a3)
   11410:	00b70723          	sb	a1,14(a4)
   11414:	00b706a3          	sb	a1,13(a4)
   11418:	00b70623          	sb	a1,12(a4)
   1141c:	00b705a3          	sb	a1,11(a4)
   11420:	00b70523          	sb	a1,10(a4)
   11424:	00b704a3          	sb	a1,9(a4)
   11428:	00b70423          	sb	a1,8(a4)
   1142c:	00b703a3          	sb	a1,7(a4)
   11430:	00b70323          	sb	a1,6(a4)
   11434:	00b702a3          	sb	a1,5(a4)
   11438:	00b70223          	sb	a1,4(a4)
   1143c:	00b701a3          	sb	a1,3(a4)
   11440:	00b70123          	sb	a1,2(a4)
   11444:	00b700a3          	sb	a1,1(a4)
   11448:	00b70023          	sb	a1,0(a4)
   1144c:	8082                	ret
   1144e:	0ff5f593          	zext.b	a1,a1
   11452:	00859693          	slli	a3,a1,0x8
   11456:	8dd5                	or	a1,a1,a3
   11458:	01059693          	slli	a3,a1,0x10
   1145c:	8dd5                	or	a1,a1,a3
   1145e:	b761                	j	113e6 <memset+0x10>
   11460:	00279693          	slli	a3,a5,0x2
   11464:	00000297          	auipc	t0,0x0
   11468:	9696                	add	a3,a3,t0
   1146a:	8286                	mv	t0,ra
   1146c:	fa8680e7          	jalr	-88(a3)
   11470:	8096                	mv	ra,t0
   11472:	17c1                	addi	a5,a5,-16
   11474:	8f1d                	sub	a4,a4,a5
   11476:	963e                	add	a2,a2,a5
   11478:	f8c374e3          	bgeu	t1,a2,11400 <memset+0x2a>
   1147c:	b7a5                	j	113e4 <memset+0xe>

0001147e <strlen>:
   1147e:	00357793          	andi	a5,a0,3
   11482:	872a                	mv	a4,a0
   11484:	ef9d                	bnez	a5,114c2 <strlen+0x44>
   11486:	7f7f86b7          	lui	a3,0x7f7f8
   1148a:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7db2f3>
   1148e:	55fd                	li	a1,-1
   11490:	4310                	lw	a2,0(a4)
   11492:	0711                	addi	a4,a4,4
   11494:	00d677b3          	and	a5,a2,a3
   11498:	97b6                	add	a5,a5,a3
   1149a:	8fd1                	or	a5,a5,a2
   1149c:	8fd5                	or	a5,a5,a3
   1149e:	feb789e3          	beq	a5,a1,11490 <strlen+0x12>
   114a2:	ffc74683          	lbu	a3,-4(a4)
   114a6:	40a707b3          	sub	a5,a4,a0
   114aa:	ca8d                	beqz	a3,114dc <strlen+0x5e>
   114ac:	ffd74683          	lbu	a3,-3(a4)
   114b0:	c29d                	beqz	a3,114d6 <strlen+0x58>
   114b2:	ffe74503          	lbu	a0,-2(a4)
   114b6:	00a03533          	snez	a0,a0
   114ba:	953e                	add	a0,a0,a5
   114bc:	1579                	addi	a0,a0,-2
   114be:	8082                	ret
   114c0:	d2f9                	beqz	a3,11486 <strlen+0x8>
   114c2:	00074783          	lbu	a5,0(a4)
   114c6:	0705                	addi	a4,a4,1
   114c8:	00377693          	andi	a3,a4,3
   114cc:	fbf5                	bnez	a5,114c0 <strlen+0x42>
   114ce:	8f09                	sub	a4,a4,a0
   114d0:	fff70513          	addi	a0,a4,-1
   114d4:	8082                	ret
   114d6:	ffd78513          	addi	a0,a5,-3
   114da:	8082                	ret
   114dc:	ffc78513          	addi	a0,a5,-4
   114e0:	8082                	ret

000114e2 <__call_exitprocs>:
   114e2:	7179                	addi	sp,sp,-48
   114e4:	cc52                	sw	s4,24(sp)
   114e6:	d04a                	sw	s2,32(sp)
   114e8:	f281a903          	lw	s2,-216(gp) # 1c968 <__atexit>
   114ec:	d606                	sw	ra,44(sp)
   114ee:	06090c63          	beqz	s2,11566 <__call_exitprocs+0x84>
   114f2:	ce4e                	sw	s3,28(sp)
   114f4:	ca56                	sw	s5,20(sp)
   114f6:	c85a                	sw	s6,16(sp)
   114f8:	c65e                	sw	s7,12(sp)
   114fa:	d422                	sw	s0,40(sp)
   114fc:	d226                	sw	s1,36(sp)
   114fe:	c462                	sw	s8,8(sp)
   11500:	8b2a                	mv	s6,a0
   11502:	8bae                	mv	s7,a1
   11504:	59fd                	li	s3,-1
   11506:	4a85                	li	s5,1
   11508:	00492483          	lw	s1,4(s2)
   1150c:	fff48413          	addi	s0,s1,-1
   11510:	04044463          	bltz	s0,11558 <__call_exitprocs+0x76>
   11514:	048a                	slli	s1,s1,0x2
   11516:	94ca                	add	s1,s1,s2
   11518:	040b9c63          	bnez	s7,11570 <__call_exitprocs+0x8e>
   1151c:	00492783          	lw	a5,4(s2)
   11520:	40d4                	lw	a3,4(s1)
   11522:	17fd                	addi	a5,a5,-1
   11524:	08878063          	beq	a5,s0,115a4 <__call_exitprocs+0xc2>
   11528:	0004a223          	sw	zero,4(s1)
   1152c:	c295                	beqz	a3,11550 <__call_exitprocs+0x6e>
   1152e:	18892783          	lw	a5,392(s2)
   11532:	008a9733          	sll	a4,s5,s0
   11536:	00492c03          	lw	s8,4(s2)
   1153a:	8ff9                	and	a5,a5,a4
   1153c:	e3b9                	bnez	a5,11582 <__call_exitprocs+0xa0>
   1153e:	9682                	jalr	a3
   11540:	00492703          	lw	a4,4(s2)
   11544:	f281a783          	lw	a5,-216(gp) # 1c968 <__atexit>
   11548:	05871b63          	bne	a4,s8,1159e <__call_exitprocs+0xbc>
   1154c:	05279963          	bne	a5,s2,1159e <__call_exitprocs+0xbc>
   11550:	147d                	addi	s0,s0,-1
   11552:	14f1                	addi	s1,s1,-4
   11554:	fd3412e3          	bne	s0,s3,11518 <__call_exitprocs+0x36>
   11558:	5422                	lw	s0,40(sp)
   1155a:	5492                	lw	s1,36(sp)
   1155c:	49f2                	lw	s3,28(sp)
   1155e:	4ad2                	lw	s5,20(sp)
   11560:	4b42                	lw	s6,16(sp)
   11562:	4bb2                	lw	s7,12(sp)
   11564:	4c22                	lw	s8,8(sp)
   11566:	50b2                	lw	ra,44(sp)
   11568:	5902                	lw	s2,32(sp)
   1156a:	4a62                	lw	s4,24(sp)
   1156c:	6145                	addi	sp,sp,48
   1156e:	8082                	ret
   11570:	1044a783          	lw	a5,260(s1)
   11574:	fb7784e3          	beq	a5,s7,1151c <__call_exitprocs+0x3a>
   11578:	147d                	addi	s0,s0,-1
   1157a:	14f1                	addi	s1,s1,-4
   1157c:	ff341ae3          	bne	s0,s3,11570 <__call_exitprocs+0x8e>
   11580:	bfe1                	j	11558 <__call_exitprocs+0x76>
   11582:	18c92783          	lw	a5,396(s2)
   11586:	0844a583          	lw	a1,132(s1)
   1158a:	8f7d                	and	a4,a4,a5
   1158c:	ef19                	bnez	a4,115aa <__call_exitprocs+0xc8>
   1158e:	855a                	mv	a0,s6
   11590:	9682                	jalr	a3
   11592:	00492703          	lw	a4,4(s2)
   11596:	f281a783          	lw	a5,-216(gp) # 1c968 <__atexit>
   1159a:	fb8709e3          	beq	a4,s8,1154c <__call_exitprocs+0x6a>
   1159e:	dfcd                	beqz	a5,11558 <__call_exitprocs+0x76>
   115a0:	893e                	mv	s2,a5
   115a2:	b79d                	j	11508 <__call_exitprocs+0x26>
   115a4:	00892223          	sw	s0,4(s2)
   115a8:	b751                	j	1152c <__call_exitprocs+0x4a>
   115aa:	852e                	mv	a0,a1
   115ac:	9682                	jalr	a3
   115ae:	bf49                	j	11540 <__call_exitprocs+0x5e>

000115b0 <atexit>:
   115b0:	85aa                	mv	a1,a0
   115b2:	4681                	li	a3,0
   115b4:	4601                	li	a2,0
   115b6:	4501                	li	a0,0
   115b8:	07c0306f          	j	14634 <__register_exitproc>

000115bc <_malloc_trim_r>:
   115bc:	1101                	addi	sp,sp,-32
   115be:	c64e                	sw	s3,12(sp)
   115c0:	69f1                	lui	s3,0x1c
   115c2:	cc22                	sw	s0,24(sp)
   115c4:	ca26                	sw	s1,20(sp)
   115c6:	c84a                	sw	s2,16(sp)
   115c8:	c452                	sw	s4,8(sp)
   115ca:	ce06                	sw	ra,28(sp)
   115cc:	8a2e                	mv	s4,a1
   115ce:	892a                	mv	s2,a0
   115d0:	37098993          	addi	s3,s3,880 # 1c370 <__malloc_av_>
   115d4:	07b000ef          	jal	11e4e <__malloc_lock>
   115d8:	0089a703          	lw	a4,8(s3)
   115dc:	6785                	lui	a5,0x1
   115de:	17bd                	addi	a5,a5,-17 # fef <exit-0xf0a5>
   115e0:	4344                	lw	s1,4(a4)
   115e2:	6705                	lui	a4,0x1
   115e4:	98f1                	andi	s1,s1,-4
   115e6:	00f48433          	add	s0,s1,a5
   115ea:	41440433          	sub	s0,s0,s4
   115ee:	8031                	srli	s0,s0,0xc
   115f0:	147d                	addi	s0,s0,-1
   115f2:	0432                	slli	s0,s0,0xc
   115f4:	00e44b63          	blt	s0,a4,1160a <_malloc_trim_r+0x4e>
   115f8:	4581                	li	a1,0
   115fa:	854a                	mv	a0,s2
   115fc:	4cd020ef          	jal	142c8 <_sbrk_r>
   11600:	0089a783          	lw	a5,8(s3)
   11604:	97a6                	add	a5,a5,s1
   11606:	00f50e63          	beq	a0,a5,11622 <_malloc_trim_r+0x66>
   1160a:	854a                	mv	a0,s2
   1160c:	045000ef          	jal	11e50 <__malloc_unlock>
   11610:	40f2                	lw	ra,28(sp)
   11612:	4462                	lw	s0,24(sp)
   11614:	44d2                	lw	s1,20(sp)
   11616:	4942                	lw	s2,16(sp)
   11618:	49b2                	lw	s3,12(sp)
   1161a:	4a22                	lw	s4,8(sp)
   1161c:	4501                	li	a0,0
   1161e:	6105                	addi	sp,sp,32
   11620:	8082                	ret
   11622:	408005b3          	neg	a1,s0
   11626:	854a                	mv	a0,s2
   11628:	4a1020ef          	jal	142c8 <_sbrk_r>
   1162c:	57fd                	li	a5,-1
   1162e:	02f50963          	beq	a0,a5,11660 <_malloc_trim_r+0xa4>
   11632:	09418793          	addi	a5,gp,148 # 1cad4 <__malloc_current_mallinfo>
   11636:	4398                	lw	a4,0(a5)
   11638:	0089a683          	lw	a3,8(s3)
   1163c:	8c81                	sub	s1,s1,s0
   1163e:	0014e493          	ori	s1,s1,1
   11642:	8f01                	sub	a4,a4,s0
   11644:	854a                	mv	a0,s2
   11646:	c2c4                	sw	s1,4(a3)
   11648:	c398                	sw	a4,0(a5)
   1164a:	007000ef          	jal	11e50 <__malloc_unlock>
   1164e:	40f2                	lw	ra,28(sp)
   11650:	4462                	lw	s0,24(sp)
   11652:	44d2                	lw	s1,20(sp)
   11654:	4942                	lw	s2,16(sp)
   11656:	49b2                	lw	s3,12(sp)
   11658:	4a22                	lw	s4,8(sp)
   1165a:	4505                	li	a0,1
   1165c:	6105                	addi	sp,sp,32
   1165e:	8082                	ret
   11660:	4581                	li	a1,0
   11662:	854a                	mv	a0,s2
   11664:	465020ef          	jal	142c8 <_sbrk_r>
   11668:	0089a703          	lw	a4,8(s3)
   1166c:	46bd                	li	a3,15
   1166e:	40e507b3          	sub	a5,a0,a4
   11672:	f8f6dce3          	bge	a3,a5,1160a <_malloc_trim_r+0x4e>
   11676:	f181a683          	lw	a3,-232(gp) # 1c958 <__malloc_sbrk_base>
   1167a:	0017e793          	ori	a5,a5,1
   1167e:	c35c                	sw	a5,4(a4)
   11680:	8d15                	sub	a0,a0,a3
   11682:	08a1aa23          	sw	a0,148(gp) # 1cad4 <__malloc_current_mallinfo>
   11686:	b751                	j	1160a <_malloc_trim_r+0x4e>

00011688 <_free_r>:
   11688:	10058a63          	beqz	a1,1179c <_free_r+0x114>
   1168c:	1141                	addi	sp,sp,-16
   1168e:	c422                	sw	s0,8(sp)
   11690:	c226                	sw	s1,4(sp)
   11692:	842e                	mv	s0,a1
   11694:	84aa                	mv	s1,a0
   11696:	c606                	sw	ra,12(sp)
   11698:	7b6000ef          	jal	11e4e <__malloc_lock>
   1169c:	ffc42503          	lw	a0,-4(s0)
   116a0:	ff840713          	addi	a4,s0,-8
   116a4:	65f1                	lui	a1,0x1c
   116a6:	ffe57793          	andi	a5,a0,-2
   116aa:	00f70633          	add	a2,a4,a5
   116ae:	37058593          	addi	a1,a1,880 # 1c370 <__malloc_av_>
   116b2:	4254                	lw	a3,4(a2)
   116b4:	0085a803          	lw	a6,8(a1)
   116b8:	9af1                	andi	a3,a3,-4
   116ba:	12c80363          	beq	a6,a2,117e0 <_free_r+0x158>
   116be:	c254                	sw	a3,4(a2)
   116c0:	8905                	andi	a0,a0,1
   116c2:	00d60833          	add	a6,a2,a3
   116c6:	e935                	bnez	a0,1173a <_free_r+0xb2>
   116c8:	ff842303          	lw	t1,-8(s0)
   116cc:	00482803          	lw	a6,4(a6)
   116d0:	6571                	lui	a0,0x1c
   116d2:	40670733          	sub	a4,a4,t1
   116d6:	00872883          	lw	a7,8(a4) # 1008 <exit-0xf08c>
   116da:	37850513          	addi	a0,a0,888 # 1c378 <__malloc_av_+0x8>
   116de:	979a                	add	a5,a5,t1
   116e0:	00187813          	andi	a6,a6,1
   116e4:	0ea88163          	beq	a7,a0,117c6 <_free_r+0x13e>
   116e8:	00c72303          	lw	t1,12(a4)
   116ec:	0068a623          	sw	t1,12(a7)
   116f0:	01132423          	sw	a7,8(t1)
   116f4:	10080e63          	beqz	a6,11810 <_free_r+0x188>
   116f8:	0017e693          	ori	a3,a5,1
   116fc:	c354                	sw	a3,4(a4)
   116fe:	c21c                	sw	a5,0(a2)
   11700:	1ff00693          	li	a3,511
   11704:	04f6e863          	bltu	a3,a5,11754 <_free_r+0xcc>
   11708:	ff87f693          	andi	a3,a5,-8
   1170c:	06a1                	addi	a3,a3,8
   1170e:	41c8                	lw	a0,4(a1)
   11710:	96ae                	add	a3,a3,a1
   11712:	4290                	lw	a2,0(a3)
   11714:	0057d813          	srli	a6,a5,0x5
   11718:	4785                	li	a5,1
   1171a:	010797b3          	sll	a5,a5,a6
   1171e:	8fc9                	or	a5,a5,a0
   11720:	ff868513          	addi	a0,a3,-8
   11724:	c748                	sw	a0,12(a4)
   11726:	c710                	sw	a2,8(a4)
   11728:	c1dc                	sw	a5,4(a1)
   1172a:	c298                	sw	a4,0(a3)
   1172c:	c658                	sw	a4,12(a2)
   1172e:	4422                	lw	s0,8(sp)
   11730:	40b2                	lw	ra,12(sp)
   11732:	8526                	mv	a0,s1
   11734:	4492                	lw	s1,4(sp)
   11736:	0141                	addi	sp,sp,16
   11738:	af21                	j	11e50 <__malloc_unlock>
   1173a:	00482503          	lw	a0,4(a6)
   1173e:	8905                	andi	a0,a0,1
   11740:	cd39                	beqz	a0,1179e <_free_r+0x116>
   11742:	0017e693          	ori	a3,a5,1
   11746:	fed42e23          	sw	a3,-4(s0)
   1174a:	c21c                	sw	a5,0(a2)
   1174c:	1ff00693          	li	a3,511
   11750:	faf6fce3          	bgeu	a3,a5,11708 <_free_r+0x80>
   11754:	0097d693          	srli	a3,a5,0x9
   11758:	4611                	li	a2,4
   1175a:	0ad66d63          	bltu	a2,a3,11814 <_free_r+0x18c>
   1175e:	0067d693          	srli	a3,a5,0x6
   11762:	03968513          	addi	a0,a3,57
   11766:	03868613          	addi	a2,a3,56
   1176a:	050e                	slli	a0,a0,0x3
   1176c:	952e                	add	a0,a0,a1
   1176e:	4114                	lw	a3,0(a0)
   11770:	1561                	addi	a0,a0,-8
   11772:	00d51663          	bne	a0,a3,1177e <_free_r+0xf6>
   11776:	a8f1                	j	11852 <_free_r+0x1ca>
   11778:	4694                	lw	a3,8(a3)
   1177a:	00d50663          	beq	a0,a3,11786 <_free_r+0xfe>
   1177e:	42d0                	lw	a2,4(a3)
   11780:	9a71                	andi	a2,a2,-4
   11782:	fec7ebe3          	bltu	a5,a2,11778 <_free_r+0xf0>
   11786:	46c8                	lw	a0,12(a3)
   11788:	c748                	sw	a0,12(a4)
   1178a:	c714                	sw	a3,8(a4)
   1178c:	4422                	lw	s0,8(sp)
   1178e:	c518                	sw	a4,8(a0)
   11790:	40b2                	lw	ra,12(sp)
   11792:	8526                	mv	a0,s1
   11794:	4492                	lw	s1,4(sp)
   11796:	c6d8                	sw	a4,12(a3)
   11798:	0141                	addi	sp,sp,16
   1179a:	ad5d                	j	11e50 <__malloc_unlock>
   1179c:	8082                	ret
   1179e:	6571                	lui	a0,0x1c
   117a0:	97b6                	add	a5,a5,a3
   117a2:	37850513          	addi	a0,a0,888 # 1c378 <__malloc_av_+0x8>
   117a6:	4614                	lw	a3,8(a2)
   117a8:	08a68b63          	beq	a3,a0,1183e <_free_r+0x1b6>
   117ac:	00c62803          	lw	a6,12(a2)
   117b0:	0017e513          	ori	a0,a5,1
   117b4:	00f70633          	add	a2,a4,a5
   117b8:	0106a623          	sw	a6,12(a3)
   117bc:	00d82423          	sw	a3,8(a6)
   117c0:	c348                	sw	a0,4(a4)
   117c2:	c21c                	sw	a5,0(a2)
   117c4:	bf35                	j	11700 <_free_r+0x78>
   117c6:	0c081d63          	bnez	a6,118a0 <_free_r+0x218>
   117ca:	460c                	lw	a1,8(a2)
   117cc:	4650                	lw	a2,12(a2)
   117ce:	96be                	add	a3,a3,a5
   117d0:	0016e793          	ori	a5,a3,1
   117d4:	c5d0                	sw	a2,12(a1)
   117d6:	c60c                	sw	a1,8(a2)
   117d8:	c35c                	sw	a5,4(a4)
   117da:	9736                	add	a4,a4,a3
   117dc:	c314                	sw	a3,0(a4)
   117de:	bf81                	j	1172e <_free_r+0xa6>
   117e0:	8905                	andi	a0,a0,1
   117e2:	96be                	add	a3,a3,a5
   117e4:	e909                	bnez	a0,117f6 <_free_r+0x16e>
   117e6:	ff842503          	lw	a0,-8(s0)
   117ea:	8f09                	sub	a4,a4,a0
   117ec:	475c                	lw	a5,12(a4)
   117ee:	4710                	lw	a2,8(a4)
   117f0:	96aa                	add	a3,a3,a0
   117f2:	c65c                	sw	a5,12(a2)
   117f4:	c790                	sw	a2,8(a5)
   117f6:	0016e613          	ori	a2,a3,1
   117fa:	f1c1a783          	lw	a5,-228(gp) # 1c95c <__malloc_trim_threshold>
   117fe:	c350                	sw	a2,4(a4)
   11800:	c598                	sw	a4,8(a1)
   11802:	f2f6e6e3          	bltu	a3,a5,1172e <_free_r+0xa6>
   11806:	f341a583          	lw	a1,-204(gp) # 1c974 <__malloc_top_pad>
   1180a:	8526                	mv	a0,s1
   1180c:	3b45                	jal	115bc <_malloc_trim_r>
   1180e:	b705                	j	1172e <_free_r+0xa6>
   11810:	97b6                	add	a5,a5,a3
   11812:	bf51                	j	117a6 <_free_r+0x11e>
   11814:	4651                	li	a2,20
   11816:	00d67e63          	bgeu	a2,a3,11832 <_free_r+0x1aa>
   1181a:	05400613          	li	a2,84
   1181e:	04d66463          	bltu	a2,a3,11866 <_free_r+0x1de>
   11822:	00c7d693          	srli	a3,a5,0xc
   11826:	06f68513          	addi	a0,a3,111
   1182a:	06e68613          	addi	a2,a3,110
   1182e:	050e                	slli	a0,a0,0x3
   11830:	bf35                	j	1176c <_free_r+0xe4>
   11832:	05c68513          	addi	a0,a3,92
   11836:	05b68613          	addi	a2,a3,91
   1183a:	050e                	slli	a0,a0,0x3
   1183c:	bf05                	j	1176c <_free_r+0xe4>
   1183e:	c9d8                	sw	a4,20(a1)
   11840:	c998                	sw	a4,16(a1)
   11842:	0017e693          	ori	a3,a5,1
   11846:	c748                	sw	a0,12(a4)
   11848:	c708                	sw	a0,8(a4)
   1184a:	c354                	sw	a3,4(a4)
   1184c:	973e                	add	a4,a4,a5
   1184e:	c31c                	sw	a5,0(a4)
   11850:	bdf9                	j	1172e <_free_r+0xa6>
   11852:	0045a803          	lw	a6,4(a1)
   11856:	8609                	srai	a2,a2,0x2
   11858:	4785                	li	a5,1
   1185a:	00c797b3          	sll	a5,a5,a2
   1185e:	0107e7b3          	or	a5,a5,a6
   11862:	c1dc                	sw	a5,4(a1)
   11864:	b715                	j	11788 <_free_r+0x100>
   11866:	15400613          	li	a2,340
   1186a:	00d66a63          	bltu	a2,a3,1187e <_free_r+0x1f6>
   1186e:	00f7d693          	srli	a3,a5,0xf
   11872:	07868513          	addi	a0,a3,120
   11876:	07768613          	addi	a2,a3,119
   1187a:	050e                	slli	a0,a0,0x3
   1187c:	bdc5                	j	1176c <_free_r+0xe4>
   1187e:	55400613          	li	a2,1364
   11882:	00d66a63          	bltu	a2,a3,11896 <_free_r+0x20e>
   11886:	0127d693          	srli	a3,a5,0x12
   1188a:	07d68513          	addi	a0,a3,125
   1188e:	07c68613          	addi	a2,a3,124
   11892:	050e                	slli	a0,a0,0x3
   11894:	bde1                	j	1176c <_free_r+0xe4>
   11896:	3f800513          	li	a0,1016
   1189a:	07e00613          	li	a2,126
   1189e:	b5f9                	j	1176c <_free_r+0xe4>
   118a0:	0017e693          	ori	a3,a5,1
   118a4:	c354                	sw	a3,4(a4)
   118a6:	c21c                	sw	a5,0(a2)
   118a8:	b559                	j	1172e <_free_r+0xa6>

000118aa <_malloc_r>:
   118aa:	7179                	addi	sp,sp,-48
   118ac:	ce4e                	sw	s3,28(sp)
   118ae:	d606                	sw	ra,44(sp)
   118b0:	d422                	sw	s0,40(sp)
   118b2:	d226                	sw	s1,36(sp)
   118b4:	d04a                	sw	s2,32(sp)
   118b6:	00b58793          	addi	a5,a1,11
   118ba:	4759                	li	a4,22
   118bc:	89aa                	mv	s3,a0
   118be:	04f76863          	bltu	a4,a5,1190e <_malloc_r+0x64>
   118c2:	47c1                	li	a5,16
   118c4:	16b7e863          	bltu	a5,a1,11a34 <_malloc_r+0x18a>
   118c8:	2359                	jal	11e4e <__malloc_lock>
   118ca:	47e1                	li	a5,24
   118cc:	4589                	li	a1,2
   118ce:	44c1                	li	s1,16
   118d0:	6971                	lui	s2,0x1c
   118d2:	37090913          	addi	s2,s2,880 # 1c370 <__malloc_av_>
   118d6:	97ca                	add	a5,a5,s2
   118d8:	43c0                	lw	s0,4(a5)
   118da:	ff878713          	addi	a4,a5,-8
   118de:	24e40d63          	beq	s0,a4,11b38 <_malloc_r+0x28e>
   118e2:	405c                	lw	a5,4(s0)
   118e4:	4454                	lw	a3,12(s0)
   118e6:	4410                	lw	a2,8(s0)
   118e8:	9bf1                	andi	a5,a5,-4
   118ea:	97a2                	add	a5,a5,s0
   118ec:	43d8                	lw	a4,4(a5)
   118ee:	c654                	sw	a3,12(a2)
   118f0:	c690                	sw	a2,8(a3)
   118f2:	00176713          	ori	a4,a4,1
   118f6:	854e                	mv	a0,s3
   118f8:	c3d8                	sw	a4,4(a5)
   118fa:	2b99                	jal	11e50 <__malloc_unlock>
   118fc:	00840513          	addi	a0,s0,8
   11900:	50b2                	lw	ra,44(sp)
   11902:	5422                	lw	s0,40(sp)
   11904:	5492                	lw	s1,36(sp)
   11906:	5902                	lw	s2,32(sp)
   11908:	49f2                	lw	s3,28(sp)
   1190a:	6145                	addi	sp,sp,48
   1190c:	8082                	ret
   1190e:	ff87f493          	andi	s1,a5,-8
   11912:	1207c163          	bltz	a5,11a34 <_malloc_r+0x18a>
   11916:	10b4ef63          	bltu	s1,a1,11a34 <_malloc_r+0x18a>
   1191a:	2b15                	jal	11e4e <__malloc_lock>
   1191c:	1f700793          	li	a5,503
   11920:	2c97fb63          	bgeu	a5,s1,11bf6 <_malloc_r+0x34c>
   11924:	0094d793          	srli	a5,s1,0x9
   11928:	10078b63          	beqz	a5,11a3e <_malloc_r+0x194>
   1192c:	4711                	li	a4,4
   1192e:	24f76a63          	bltu	a4,a5,11b82 <_malloc_r+0x2d8>
   11932:	0064d793          	srli	a5,s1,0x6
   11936:	03978593          	addi	a1,a5,57
   1193a:	03878813          	addi	a6,a5,56
   1193e:	00359613          	slli	a2,a1,0x3
   11942:	6971                	lui	s2,0x1c
   11944:	37090913          	addi	s2,s2,880 # 1c370 <__malloc_av_>
   11948:	964a                	add	a2,a2,s2
   1194a:	4240                	lw	s0,4(a2)
   1194c:	1661                	addi	a2,a2,-8
   1194e:	02860163          	beq	a2,s0,11970 <_malloc_r+0xc6>
   11952:	453d                	li	a0,15
   11954:	a039                	j	11962 <_malloc_r+0xb8>
   11956:	4454                	lw	a3,12(s0)
   11958:	1c075e63          	bgez	a4,11b34 <_malloc_r+0x28a>
   1195c:	00d60a63          	beq	a2,a3,11970 <_malloc_r+0xc6>
   11960:	8436                	mv	s0,a3
   11962:	405c                	lw	a5,4(s0)
   11964:	9bf1                	andi	a5,a5,-4
   11966:	40978733          	sub	a4,a5,s1
   1196a:	fee556e3          	bge	a0,a4,11956 <_malloc_r+0xac>
   1196e:	85c2                	mv	a1,a6
   11970:	01092403          	lw	s0,16(s2)
   11974:	6871                	lui	a6,0x1c
   11976:	37880813          	addi	a6,a6,888 # 1c378 <__malloc_av_+0x8>
   1197a:	1b040a63          	beq	s0,a6,11b2e <_malloc_r+0x284>
   1197e:	405c                	lw	a5,4(s0)
   11980:	46bd                	li	a3,15
   11982:	9bf1                	andi	a5,a5,-4
   11984:	40978733          	sub	a4,a5,s1
   11988:	26e6cc63          	blt	a3,a4,11c00 <_malloc_r+0x356>
   1198c:	01092a23          	sw	a6,20(s2)
   11990:	01092823          	sw	a6,16(s2)
   11994:	24075763          	bgez	a4,11be2 <_malloc_r+0x338>
   11998:	1ff00713          	li	a4,511
   1199c:	00492503          	lw	a0,4(s2)
   119a0:	1af76163          	bltu	a4,a5,11b42 <_malloc_r+0x298>
   119a4:	ff87f713          	andi	a4,a5,-8
   119a8:	0721                	addi	a4,a4,8
   119aa:	974a                	add	a4,a4,s2
   119ac:	4314                	lw	a3,0(a4)
   119ae:	0057d613          	srli	a2,a5,0x5
   119b2:	4785                	li	a5,1
   119b4:	00c797b3          	sll	a5,a5,a2
   119b8:	8d5d                	or	a0,a0,a5
   119ba:	ff870793          	addi	a5,a4,-8
   119be:	c45c                	sw	a5,12(s0)
   119c0:	c414                	sw	a3,8(s0)
   119c2:	00a92223          	sw	a0,4(s2)
   119c6:	c300                	sw	s0,0(a4)
   119c8:	c6c0                	sw	s0,12(a3)
   119ca:	4025d793          	srai	a5,a1,0x2
   119ce:	4605                	li	a2,1
   119d0:	00f61633          	sll	a2,a2,a5
   119d4:	06c56c63          	bltu	a0,a2,11a4c <_malloc_r+0x1a2>
   119d8:	00a677b3          	and	a5,a2,a0
   119dc:	ef81                	bnez	a5,119f4 <_malloc_r+0x14a>
   119de:	0606                	slli	a2,a2,0x1
   119e0:	99f1                	andi	a1,a1,-4
   119e2:	00a677b3          	and	a5,a2,a0
   119e6:	0591                	addi	a1,a1,4
   119e8:	e791                	bnez	a5,119f4 <_malloc_r+0x14a>
   119ea:	0606                	slli	a2,a2,0x1
   119ec:	00a677b3          	and	a5,a2,a0
   119f0:	0591                	addi	a1,a1,4
   119f2:	dfe5                	beqz	a5,119ea <_malloc_r+0x140>
   119f4:	48bd                	li	a7,15
   119f6:	00359313          	slli	t1,a1,0x3
   119fa:	934a                	add	t1,t1,s2
   119fc:	851a                	mv	a0,t1
   119fe:	455c                	lw	a5,12(a0)
   11a00:	8e2e                	mv	t3,a1
   11a02:	1af50063          	beq	a0,a5,11ba2 <_malloc_r+0x2f8>
   11a06:	43d8                	lw	a4,4(a5)
   11a08:	843e                	mv	s0,a5
   11a0a:	47dc                	lw	a5,12(a5)
   11a0c:	9b71                	andi	a4,a4,-4
   11a0e:	409706b3          	sub	a3,a4,s1
   11a12:	18d8cf63          	blt	a7,a3,11bb0 <_malloc_r+0x306>
   11a16:	fe06c6e3          	bltz	a3,11a02 <_malloc_r+0x158>
   11a1a:	9722                	add	a4,a4,s0
   11a1c:	4354                	lw	a3,4(a4)
   11a1e:	4410                	lw	a2,8(s0)
   11a20:	854e                	mv	a0,s3
   11a22:	0016e693          	ori	a3,a3,1
   11a26:	c354                	sw	a3,4(a4)
   11a28:	c65c                	sw	a5,12(a2)
   11a2a:	c790                	sw	a2,8(a5)
   11a2c:	2115                	jal	11e50 <__malloc_unlock>
   11a2e:	00840513          	addi	a0,s0,8
   11a32:	b5f9                	j	11900 <_malloc_r+0x56>
   11a34:	47b1                	li	a5,12
   11a36:	00f9a023          	sw	a5,0(s3)
   11a3a:	4501                	li	a0,0
   11a3c:	b5d1                	j	11900 <_malloc_r+0x56>
   11a3e:	20000613          	li	a2,512
   11a42:	04000593          	li	a1,64
   11a46:	03f00813          	li	a6,63
   11a4a:	bde5                	j	11942 <_malloc_r+0x98>
   11a4c:	00892403          	lw	s0,8(s2)
   11a50:	c85a                	sw	s6,16(sp)
   11a52:	405c                	lw	a5,4(s0)
   11a54:	ffc7fb13          	andi	s6,a5,-4
   11a58:	009b6763          	bltu	s6,s1,11a66 <_malloc_r+0x1bc>
   11a5c:	409b0733          	sub	a4,s6,s1
   11a60:	47bd                	li	a5,15
   11a62:	0ae7c163          	blt	a5,a4,11b04 <_malloc_r+0x25a>
   11a66:	c266                	sw	s9,4(sp)
   11a68:	ca56                	sw	s5,20(sp)
   11a6a:	f181a703          	lw	a4,-232(gp) # 1c958 <__malloc_sbrk_base>
   11a6e:	f341aa83          	lw	s5,-204(gp) # 1c974 <__malloc_top_pad>
   11a72:	cc52                	sw	s4,24(sp)
   11a74:	c65e                	sw	s7,12(sp)
   11a76:	57fd                	li	a5,-1
   11a78:	01640a33          	add	s4,s0,s6
   11a7c:	9aa6                	add	s5,s5,s1
   11a7e:	2cf70763          	beq	a4,a5,11d4c <_malloc_r+0x4a2>
   11a82:	6785                	lui	a5,0x1
   11a84:	07bd                	addi	a5,a5,15 # 100f <exit-0xf085>
   11a86:	9abe                	add	s5,s5,a5
   11a88:	77fd                	lui	a5,0xfffff
   11a8a:	00fafab3          	and	s5,s5,a5
   11a8e:	85d6                	mv	a1,s5
   11a90:	854e                	mv	a0,s3
   11a92:	037020ef          	jal	142c8 <_sbrk_r>
   11a96:	57fd                	li	a5,-1
   11a98:	8baa                	mv	s7,a0
   11a9a:	32f50963          	beq	a0,a5,11dcc <_malloc_r+0x522>
   11a9e:	c462                	sw	s8,8(sp)
   11aa0:	19456e63          	bltu	a0,s4,11c3c <_malloc_r+0x392>
   11aa4:	09418c13          	addi	s8,gp,148 # 1cad4 <__malloc_current_mallinfo>
   11aa8:	000c2583          	lw	a1,0(s8)
   11aac:	95d6                	add	a1,a1,s5
   11aae:	00bc2023          	sw	a1,0(s8)
   11ab2:	872e                	mv	a4,a1
   11ab4:	1eaa1863          	bne	s4,a0,11ca4 <_malloc_r+0x3fa>
   11ab8:	01451793          	slli	a5,a0,0x14
   11abc:	1e079463          	bnez	a5,11ca4 <_malloc_r+0x3fa>
   11ac0:	00892b83          	lw	s7,8(s2)
   11ac4:	015b07b3          	add	a5,s6,s5
   11ac8:	0017e793          	ori	a5,a5,1
   11acc:	00fba223          	sw	a5,4(s7)
   11ad0:	f301a683          	lw	a3,-208(gp) # 1c970 <__malloc_max_sbrked_mem>
   11ad4:	00b6f463          	bgeu	a3,a1,11adc <_malloc_r+0x232>
   11ad8:	f2b1a823          	sw	a1,-208(gp) # 1c970 <__malloc_max_sbrked_mem>
   11adc:	f2c1a683          	lw	a3,-212(gp) # 1c96c <__malloc_max_total_mem>
   11ae0:	00b6f463          	bgeu	a3,a1,11ae8 <_malloc_r+0x23e>
   11ae4:	f2b1a623          	sw	a1,-212(gp) # 1c96c <__malloc_max_total_mem>
   11ae8:	4c22                	lw	s8,8(sp)
   11aea:	845e                	mv	s0,s7
   11aec:	9bf1                	andi	a5,a5,-4
   11aee:	40978733          	sub	a4,a5,s1
   11af2:	2897eb63          	bltu	a5,s1,11d88 <_malloc_r+0x4de>
   11af6:	47bd                	li	a5,15
   11af8:	28e7d863          	bge	a5,a4,11d88 <_malloc_r+0x4de>
   11afc:	4a62                	lw	s4,24(sp)
   11afe:	4ad2                	lw	s5,20(sp)
   11b00:	4bb2                	lw	s7,12(sp)
   11b02:	4c92                	lw	s9,4(sp)
   11b04:	0014e793          	ori	a5,s1,1
   11b08:	c05c                	sw	a5,4(s0)
   11b0a:	94a2                	add	s1,s1,s0
   11b0c:	00992423          	sw	s1,8(s2)
   11b10:	00176713          	ori	a4,a4,1
   11b14:	854e                	mv	a0,s3
   11b16:	c0d8                	sw	a4,4(s1)
   11b18:	2e25                	jal	11e50 <__malloc_unlock>
   11b1a:	50b2                	lw	ra,44(sp)
   11b1c:	00840513          	addi	a0,s0,8
   11b20:	5422                	lw	s0,40(sp)
   11b22:	4b42                	lw	s6,16(sp)
   11b24:	5492                	lw	s1,36(sp)
   11b26:	5902                	lw	s2,32(sp)
   11b28:	49f2                	lw	s3,28(sp)
   11b2a:	6145                	addi	sp,sp,48
   11b2c:	8082                	ret
   11b2e:	00492503          	lw	a0,4(s2)
   11b32:	bd61                	j	119ca <_malloc_r+0x120>
   11b34:	4410                	lw	a2,8(s0)
   11b36:	bb55                	j	118ea <_malloc_r+0x40>
   11b38:	47c0                	lw	s0,12(a5)
   11b3a:	0589                	addi	a1,a1,2
   11b3c:	e2878ae3          	beq	a5,s0,11970 <_malloc_r+0xc6>
   11b40:	b34d                	j	118e2 <_malloc_r+0x38>
   11b42:	0097d713          	srli	a4,a5,0x9
   11b46:	4691                	li	a3,4
   11b48:	0ee6f263          	bgeu	a3,a4,11c2c <_malloc_r+0x382>
   11b4c:	46d1                	li	a3,20
   11b4e:	24e6e663          	bltu	a3,a4,11d9a <_malloc_r+0x4f0>
   11b52:	05c70613          	addi	a2,a4,92
   11b56:	05b70693          	addi	a3,a4,91
   11b5a:	060e                	slli	a2,a2,0x3
   11b5c:	964a                	add	a2,a2,s2
   11b5e:	4218                	lw	a4,0(a2)
   11b60:	1661                	addi	a2,a2,-8
   11b62:	00e61663          	bne	a2,a4,11b6e <_malloc_r+0x2c4>
   11b66:	a2ed                	j	11d50 <_malloc_r+0x4a6>
   11b68:	4718                	lw	a4,8(a4)
   11b6a:	00e60663          	beq	a2,a4,11b76 <_malloc_r+0x2cc>
   11b6e:	4354                	lw	a3,4(a4)
   11b70:	9af1                	andi	a3,a3,-4
   11b72:	fed7ebe3          	bltu	a5,a3,11b68 <_malloc_r+0x2be>
   11b76:	4750                	lw	a2,12(a4)
   11b78:	c450                	sw	a2,12(s0)
   11b7a:	c418                	sw	a4,8(s0)
   11b7c:	c600                	sw	s0,8(a2)
   11b7e:	c740                	sw	s0,12(a4)
   11b80:	b5a9                	j	119ca <_malloc_r+0x120>
   11b82:	4751                	li	a4,20
   11b84:	0cf77363          	bgeu	a4,a5,11c4a <_malloc_r+0x3a0>
   11b88:	05400713          	li	a4,84
   11b8c:	22f76363          	bltu	a4,a5,11db2 <_malloc_r+0x508>
   11b90:	00c4d793          	srli	a5,s1,0xc
   11b94:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffe23e3>
   11b98:	06e78813          	addi	a6,a5,110
   11b9c:	00359613          	slli	a2,a1,0x3
   11ba0:	b34d                	j	11942 <_malloc_r+0x98>
   11ba2:	0e05                	addi	t3,t3,1
   11ba4:	003e7793          	andi	a5,t3,3
   11ba8:	0521                	addi	a0,a0,8
   11baa:	cfc5                	beqz	a5,11c62 <_malloc_r+0x3b8>
   11bac:	455c                	lw	a5,12(a0)
   11bae:	bd91                	j	11a02 <_malloc_r+0x158>
   11bb0:	4410                	lw	a2,8(s0)
   11bb2:	0014e593          	ori	a1,s1,1
   11bb6:	c04c                	sw	a1,4(s0)
   11bb8:	c65c                	sw	a5,12(a2)
   11bba:	c790                	sw	a2,8(a5)
   11bbc:	94a2                	add	s1,s1,s0
   11bbe:	00992a23          	sw	s1,20(s2)
   11bc2:	00992823          	sw	s1,16(s2)
   11bc6:	0016e793          	ori	a5,a3,1
   11bca:	0104a623          	sw	a6,12(s1)
   11bce:	0104a423          	sw	a6,8(s1)
   11bd2:	c0dc                	sw	a5,4(s1)
   11bd4:	9722                	add	a4,a4,s0
   11bd6:	854e                	mv	a0,s3
   11bd8:	c314                	sw	a3,0(a4)
   11bda:	2c9d                	jal	11e50 <__malloc_unlock>
   11bdc:	00840513          	addi	a0,s0,8
   11be0:	b305                	j	11900 <_malloc_r+0x56>
   11be2:	97a2                	add	a5,a5,s0
   11be4:	43d8                	lw	a4,4(a5)
   11be6:	854e                	mv	a0,s3
   11be8:	00176713          	ori	a4,a4,1
   11bec:	c3d8                	sw	a4,4(a5)
   11bee:	248d                	jal	11e50 <__malloc_unlock>
   11bf0:	00840513          	addi	a0,s0,8
   11bf4:	b331                	j	11900 <_malloc_r+0x56>
   11bf6:	0034d593          	srli	a1,s1,0x3
   11bfa:	00848793          	addi	a5,s1,8
   11bfe:	b9c9                	j	118d0 <_malloc_r+0x26>
   11c00:	0014e693          	ori	a3,s1,1
   11c04:	c054                	sw	a3,4(s0)
   11c06:	94a2                	add	s1,s1,s0
   11c08:	00992a23          	sw	s1,20(s2)
   11c0c:	00992823          	sw	s1,16(s2)
   11c10:	00176693          	ori	a3,a4,1
   11c14:	0104a623          	sw	a6,12(s1)
   11c18:	0104a423          	sw	a6,8(s1)
   11c1c:	c0d4                	sw	a3,4(s1)
   11c1e:	97a2                	add	a5,a5,s0
   11c20:	854e                	mv	a0,s3
   11c22:	c398                	sw	a4,0(a5)
   11c24:	2435                	jal	11e50 <__malloc_unlock>
   11c26:	00840513          	addi	a0,s0,8
   11c2a:	b9d9                	j	11900 <_malloc_r+0x56>
   11c2c:	0067d713          	srli	a4,a5,0x6
   11c30:	03970613          	addi	a2,a4,57
   11c34:	03870693          	addi	a3,a4,56
   11c38:	060e                	slli	a2,a2,0x3
   11c3a:	b70d                	j	11b5c <_malloc_r+0x2b2>
   11c3c:	05240d63          	beq	s0,s2,11c96 <_malloc_r+0x3ec>
   11c40:	00892403          	lw	s0,8(s2)
   11c44:	4c22                	lw	s8,8(sp)
   11c46:	405c                	lw	a5,4(s0)
   11c48:	b555                	j	11aec <_malloc_r+0x242>
   11c4a:	05c78593          	addi	a1,a5,92
   11c4e:	05b78813          	addi	a6,a5,91
   11c52:	00359613          	slli	a2,a1,0x3
   11c56:	b1f5                	j	11942 <_malloc_r+0x98>
   11c58:	00832783          	lw	a5,8(t1)
   11c5c:	15fd                	addi	a1,a1,-1
   11c5e:	1e679563          	bne	a5,t1,11e48 <_malloc_r+0x59e>
   11c62:	0035f793          	andi	a5,a1,3
   11c66:	1361                	addi	t1,t1,-8
   11c68:	fbe5                	bnez	a5,11c58 <_malloc_r+0x3ae>
   11c6a:	00492703          	lw	a4,4(s2)
   11c6e:	fff64793          	not	a5,a2
   11c72:	8ff9                	and	a5,a5,a4
   11c74:	00f92223          	sw	a5,4(s2)
   11c78:	0606                	slli	a2,a2,0x1
   11c7a:	dcc7e9e3          	bltu	a5,a2,11a4c <_malloc_r+0x1a2>
   11c7e:	dc0607e3          	beqz	a2,11a4c <_malloc_r+0x1a2>
   11c82:	00f67733          	and	a4,a2,a5
   11c86:	e711                	bnez	a4,11c92 <_malloc_r+0x3e8>
   11c88:	0606                	slli	a2,a2,0x1
   11c8a:	00f67733          	and	a4,a2,a5
   11c8e:	0e11                	addi	t3,t3,4
   11c90:	df65                	beqz	a4,11c88 <_malloc_r+0x3de>
   11c92:	85f2                	mv	a1,t3
   11c94:	b38d                	j	119f6 <_malloc_r+0x14c>
   11c96:	09418c13          	addi	s8,gp,148 # 1cad4 <__malloc_current_mallinfo>
   11c9a:	000c2703          	lw	a4,0(s8)
   11c9e:	9756                	add	a4,a4,s5
   11ca0:	00ec2023          	sw	a4,0(s8)
   11ca4:	f181a683          	lw	a3,-232(gp) # 1c958 <__malloc_sbrk_base>
   11ca8:	57fd                	li	a5,-1
   11caa:	12f68563          	beq	a3,a5,11dd4 <_malloc_r+0x52a>
   11cae:	414b87b3          	sub	a5,s7,s4
   11cb2:	97ba                	add	a5,a5,a4
   11cb4:	00fc2023          	sw	a5,0(s8)
   11cb8:	007bfc93          	andi	s9,s7,7
   11cbc:	0a0c8263          	beqz	s9,11d60 <_malloc_r+0x4b6>
   11cc0:	419b8bb3          	sub	s7,s7,s9
   11cc4:	6785                	lui	a5,0x1
   11cc6:	07a1                	addi	a5,a5,8 # 1008 <exit-0xf08c>
   11cc8:	0ba1                	addi	s7,s7,8
   11cca:	419785b3          	sub	a1,a5,s9
   11cce:	9ade                	add	s5,s5,s7
   11cd0:	415585b3          	sub	a1,a1,s5
   11cd4:	05d2                	slli	a1,a1,0x14
   11cd6:	0145da13          	srli	s4,a1,0x14
   11cda:	85d2                	mv	a1,s4
   11cdc:	854e                	mv	a0,s3
   11cde:	5ea020ef          	jal	142c8 <_sbrk_r>
   11ce2:	57fd                	li	a5,-1
   11ce4:	12f50463          	beq	a0,a5,11e0c <_malloc_r+0x562>
   11ce8:	41750533          	sub	a0,a0,s7
   11cec:	01450ab3          	add	s5,a0,s4
   11cf0:	000c2703          	lw	a4,0(s8)
   11cf4:	01792423          	sw	s7,8(s2)
   11cf8:	001ae793          	ori	a5,s5,1
   11cfc:	00ea05b3          	add	a1,s4,a4
   11d00:	00bc2023          	sw	a1,0(s8)
   11d04:	00fba223          	sw	a5,4(s7)
   11d08:	dd2404e3          	beq	s0,s2,11ad0 <_malloc_r+0x226>
   11d0c:	46bd                	li	a3,15
   11d0e:	0766f963          	bgeu	a3,s6,11d80 <_malloc_r+0x4d6>
   11d12:	4058                	lw	a4,4(s0)
   11d14:	ff4b0793          	addi	a5,s6,-12
   11d18:	9be1                	andi	a5,a5,-8
   11d1a:	8b05                	andi	a4,a4,1
   11d1c:	8f5d                	or	a4,a4,a5
   11d1e:	c058                	sw	a4,4(s0)
   11d20:	4615                	li	a2,5
   11d22:	00f40733          	add	a4,s0,a5
   11d26:	c350                	sw	a2,4(a4)
   11d28:	c710                	sw	a2,8(a4)
   11d2a:	00f6e563          	bltu	a3,a5,11d34 <_malloc_r+0x48a>
   11d2e:	004ba783          	lw	a5,4(s7)
   11d32:	bb79                	j	11ad0 <_malloc_r+0x226>
   11d34:	00840593          	addi	a1,s0,8
   11d38:	854e                	mv	a0,s3
   11d3a:	94fff0ef          	jal	11688 <_free_r>
   11d3e:	00892b83          	lw	s7,8(s2)
   11d42:	000c2583          	lw	a1,0(s8)
   11d46:	004ba783          	lw	a5,4(s7)
   11d4a:	b359                	j	11ad0 <_malloc_r+0x226>
   11d4c:	0ac1                	addi	s5,s5,16
   11d4e:	b381                	j	11a8e <_malloc_r+0x1e4>
   11d50:	8689                	srai	a3,a3,0x2
   11d52:	4785                	li	a5,1
   11d54:	00d797b3          	sll	a5,a5,a3
   11d58:	8d5d                	or	a0,a0,a5
   11d5a:	00a92223          	sw	a0,4(s2)
   11d5e:	bd29                	j	11b78 <_malloc_r+0x2ce>
   11d60:	015b85b3          	add	a1,s7,s5
   11d64:	40b005b3          	neg	a1,a1
   11d68:	05d2                	slli	a1,a1,0x14
   11d6a:	0145da13          	srli	s4,a1,0x14
   11d6e:	85d2                	mv	a1,s4
   11d70:	854e                	mv	a0,s3
   11d72:	556020ef          	jal	142c8 <_sbrk_r>
   11d76:	57fd                	li	a5,-1
   11d78:	f6f518e3          	bne	a0,a5,11ce8 <_malloc_r+0x43e>
   11d7c:	4a01                	li	s4,0
   11d7e:	bf8d                	j	11cf0 <_malloc_r+0x446>
   11d80:	4c22                	lw	s8,8(sp)
   11d82:	4785                	li	a5,1
   11d84:	00fba223          	sw	a5,4(s7)
   11d88:	854e                	mv	a0,s3
   11d8a:	20d9                	jal	11e50 <__malloc_unlock>
   11d8c:	4501                	li	a0,0
   11d8e:	4a62                	lw	s4,24(sp)
   11d90:	4ad2                	lw	s5,20(sp)
   11d92:	4b42                	lw	s6,16(sp)
   11d94:	4bb2                	lw	s7,12(sp)
   11d96:	4c92                	lw	s9,4(sp)
   11d98:	b6a5                	j	11900 <_malloc_r+0x56>
   11d9a:	05400693          	li	a3,84
   11d9e:	02e6ee63          	bltu	a3,a4,11dda <_malloc_r+0x530>
   11da2:	00c7d713          	srli	a4,a5,0xc
   11da6:	06f70613          	addi	a2,a4,111
   11daa:	06e70693          	addi	a3,a4,110
   11dae:	060e                	slli	a2,a2,0x3
   11db0:	b375                	j	11b5c <_malloc_r+0x2b2>
   11db2:	15400713          	li	a4,340
   11db6:	02f76e63          	bltu	a4,a5,11df2 <_malloc_r+0x548>
   11dba:	00f4d793          	srli	a5,s1,0xf
   11dbe:	07878593          	addi	a1,a5,120
   11dc2:	07778813          	addi	a6,a5,119
   11dc6:	00359613          	slli	a2,a1,0x3
   11dca:	bea5                	j	11942 <_malloc_r+0x98>
   11dcc:	00892403          	lw	s0,8(s2)
   11dd0:	405c                	lw	a5,4(s0)
   11dd2:	bb29                	j	11aec <_malloc_r+0x242>
   11dd4:	f171ac23          	sw	s7,-232(gp) # 1c958 <__malloc_sbrk_base>
   11dd8:	b5c5                	j	11cb8 <_malloc_r+0x40e>
   11dda:	15400693          	li	a3,340
   11dde:	02e6ed63          	bltu	a3,a4,11e18 <_malloc_r+0x56e>
   11de2:	00f7d713          	srli	a4,a5,0xf
   11de6:	07870613          	addi	a2,a4,120
   11dea:	07770693          	addi	a3,a4,119
   11dee:	060e                	slli	a2,a2,0x3
   11df0:	b3b5                	j	11b5c <_malloc_r+0x2b2>
   11df2:	55400713          	li	a4,1364
   11df6:	02f76d63          	bltu	a4,a5,11e30 <_malloc_r+0x586>
   11dfa:	0124d793          	srli	a5,s1,0x12
   11dfe:	07d78593          	addi	a1,a5,125
   11e02:	07c78813          	addi	a6,a5,124
   11e06:	00359613          	slli	a2,a1,0x3
   11e0a:	be25                	j	11942 <_malloc_r+0x98>
   11e0c:	1ce1                	addi	s9,s9,-8
   11e0e:	9ae6                	add	s5,s5,s9
   11e10:	417a8ab3          	sub	s5,s5,s7
   11e14:	4a01                	li	s4,0
   11e16:	bde9                	j	11cf0 <_malloc_r+0x446>
   11e18:	55400693          	li	a3,1364
   11e1c:	02e6e163          	bltu	a3,a4,11e3e <_malloc_r+0x594>
   11e20:	0127d713          	srli	a4,a5,0x12
   11e24:	07d70613          	addi	a2,a4,125
   11e28:	07c70693          	addi	a3,a4,124
   11e2c:	060e                	slli	a2,a2,0x3
   11e2e:	b33d                	j	11b5c <_malloc_r+0x2b2>
   11e30:	3f800613          	li	a2,1016
   11e34:	07f00593          	li	a1,127
   11e38:	07e00813          	li	a6,126
   11e3c:	b619                	j	11942 <_malloc_r+0x98>
   11e3e:	3f800613          	li	a2,1016
   11e42:	07e00693          	li	a3,126
   11e46:	bb19                	j	11b5c <_malloc_r+0x2b2>
   11e48:	00492783          	lw	a5,4(s2)
   11e4c:	b535                	j	11c78 <_malloc_r+0x3ce>

00011e4e <__malloc_lock>:
   11e4e:	8082                	ret

00011e50 <__malloc_unlock>:
   11e50:	8082                	ret

00011e52 <_vfprintf_r>:
   11e52:	7145                	addi	sp,sp,-464
   11e54:	1c112623          	sw	ra,460(sp)
   11e58:	1c812423          	sw	s0,456(sp)
   11e5c:	1c912223          	sw	s1,452(sp)
   11e60:	1b612823          	sw	s6,432(sp)
   11e64:	84ae                	mv	s1,a1
   11e66:	8b32                	mv	s6,a2
   11e68:	ca36                	sw	a3,20(sp)
   11e6a:	842a                	mv	s0,a0
   11e6c:	c42a                	sw	a0,8(sp)
   11e6e:	44e020ef          	jal	142bc <_localeconv_r>
   11e72:	411c                	lw	a5,0(a0)
   11e74:	853e                	mv	a0,a5
   11e76:	d83e                	sw	a5,48(sp)
   11e78:	e06ff0ef          	jal	1147e <strlen>
   11e7c:	d62a                	sw	a0,44(sp)
   11e7e:	c982                	sw	zero,208(sp)
   11e80:	cb82                	sw	zero,212(sp)
   11e82:	cd82                	sw	zero,216(sp)
   11e84:	cf82                	sw	zero,220(sp)
   11e86:	c409                	beqz	s0,11e90 <_vfprintf_r+0x3e>
   11e88:	5858                	lw	a4,52(s0)
   11e8a:	e319                	bnez	a4,11e90 <_vfprintf_r+0x3e>
   11e8c:	1920106f          	j	1301e <_vfprintf_r+0x11cc>
   11e90:	00c49683          	lh	a3,12(s1)
   11e94:	50f8                	lw	a4,100(s1)
   11e96:	01269613          	slli	a2,a3,0x12
   11e9a:	00064a63          	bltz	a2,11eae <_vfprintf_r+0x5c>
   11e9e:	7679                	lui	a2,0xffffe
   11ea0:	167d                	addi	a2,a2,-1 # ffffdfff <__BSS_END__+0xfffe1373>
   11ea2:	6589                	lui	a1,0x2
   11ea4:	8ecd                	or	a3,a3,a1
   11ea6:	8f71                	and	a4,a4,a2
   11ea8:	00d49623          	sh	a3,12(s1)
   11eac:	d0f8                	sw	a4,100(s1)
   11eae:	01271693          	slli	a3,a4,0x12
   11eb2:	0006d463          	bgez	a3,11eba <_vfprintf_r+0x68>
   11eb6:	0770106f          	j	1372c <_vfprintf_r+0x18da>
   11eba:	00c49703          	lh	a4,12(s1)
   11ebe:	00877693          	andi	a3,a4,8
   11ec2:	22068a63          	beqz	a3,120f6 <_vfprintf_r+0x2a4>
   11ec6:	4894                	lw	a3,16(s1)
   11ec8:	22068763          	beqz	a3,120f6 <_vfprintf_r+0x2a4>
   11ecc:	8b69                	andi	a4,a4,26
   11ece:	46a9                	li	a3,10
   11ed0:	24d70063          	beq	a4,a3,12110 <_vfprintf_r+0x2be>
   11ed4:	1b312e23          	sw	s3,444(sp)
   11ed8:	1b412c23          	sw	s4,440(sp)
   11edc:	1ba12023          	sw	s10,416(sp)
   11ee0:	676d                	lui	a4,0x1b
   11ee2:	1d212023          	sw	s2,448(sp)
   11ee6:	1b512a23          	sw	s5,436(sp)
   11eea:	1b712623          	sw	s7,428(sp)
   11eee:	1b812423          	sw	s8,424(sp)
   11ef2:	1b912223          	sw	s9,420(sp)
   11ef6:	19b12e23          	sw	s11,412(sp)
   11efa:	8d5a                	mv	s10,s6
   11efc:	b4070793          	addi	a5,a4,-1216 # 1ab40 <k+0x100>
   11f00:	000d4703          	lbu	a4,0(s10)
   11f04:	0ec10993          	addi	s3,sp,236
   11f08:	6a6d                	lui	s4,0x1b
   11f0a:	c3ce                	sw	s3,196(sp)
   11f0c:	c782                	sw	zero,204(sp)
   11f0e:	c582                	sw	zero,200(sp)
   11f10:	d002                	sw	zero,32(sp)
   11f12:	da02                	sw	zero,52(sp)
   11f14:	c082                	sw	zero,64(sp)
   11f16:	de02                	sw	zero,60(sp)
   11f18:	c482                	sw	zero,72(sp)
   11f1a:	c282                	sw	zero,68(sp)
   11f1c:	c602                	sw	zero,12(sp)
   11f1e:	cc3e                	sw	a5,24(sp)
   11f20:	844e                	mv	s0,s3
   11f22:	d44a0a13          	addi	s4,s4,-700 # 1ad44 <zeroes.0>
   11f26:	18070063          	beqz	a4,120a6 <_vfprintf_r+0x254>
   11f2a:	896a                	mv	s2,s10
   11f2c:	02500693          	li	a3,37
   11f30:	2ed70a63          	beq	a4,a3,12224 <_vfprintf_r+0x3d2>
   11f34:	00194703          	lbu	a4,1(s2)
   11f38:	0905                	addi	s2,s2,1
   11f3a:	fb7d                	bnez	a4,11f30 <_vfprintf_r+0xde>
   11f3c:	41a90ab3          	sub	s5,s2,s10
   11f40:	17a90363          	beq	s2,s10,120a6 <_vfprintf_r+0x254>
   11f44:	46be                	lw	a3,204(sp)
   11f46:	472e                	lw	a4,200(sp)
   11f48:	01a42023          	sw	s10,0(s0)
   11f4c:	96d6                	add	a3,a3,s5
   11f4e:	0705                	addi	a4,a4,1
   11f50:	01542223          	sw	s5,4(s0)
   11f54:	c7b6                	sw	a3,204(sp)
   11f56:	c5ba                	sw	a4,200(sp)
   11f58:	469d                	li	a3,7
   11f5a:	0421                	addi	s0,s0,8
   11f5c:	2ce6cb63          	blt	a3,a4,12232 <_vfprintf_r+0x3e0>
   11f60:	47b2                	lw	a5,12(sp)
   11f62:	00094703          	lbu	a4,0(s2)
   11f66:	97d6                	add	a5,a5,s5
   11f68:	c63e                	sw	a5,12(sp)
   11f6a:	12070e63          	beqz	a4,120a6 <_vfprintf_r+0x254>
   11f6e:	00194883          	lbu	a7,1(s2)
   11f72:	0a0103a3          	sb	zero,167(sp)
   11f76:	0905                	addi	s2,s2,1
   11f78:	5afd                	li	s5,-1
   11f7a:	4b81                	li	s7,0
   11f7c:	4c81                	li	s9,0
   11f7e:	05a00b13          	li	s6,90
   11f82:	0905                	addi	s2,s2,1
   11f84:	fe088793          	addi	a5,a7,-32
   11f88:	02fb6b63          	bltu	s6,a5,11fbe <_vfprintf_r+0x16c>
   11f8c:	4762                	lw	a4,24(sp)
   11f8e:	078a                	slli	a5,a5,0x2
   11f90:	97ba                	add	a5,a5,a4
   11f92:	439c                	lw	a5,0(a5)
   11f94:	8782                	jr	a5
   11f96:	4b81                	li	s7,0
   11f98:	fd088793          	addi	a5,a7,-48
   11f9c:	46a5                	li	a3,9
   11f9e:	00094883          	lbu	a7,0(s2)
   11fa2:	002b9713          	slli	a4,s7,0x2
   11fa6:	9bba                	add	s7,s7,a4
   11fa8:	0b86                	slli	s7,s7,0x1
   11faa:	9bbe                	add	s7,s7,a5
   11fac:	fd088793          	addi	a5,a7,-48
   11fb0:	0905                	addi	s2,s2,1
   11fb2:	fef6f6e3          	bgeu	a3,a5,11f9e <_vfprintf_r+0x14c>
   11fb6:	fe088793          	addi	a5,a7,-32
   11fba:	fcfb79e3          	bgeu	s6,a5,11f8c <_vfprintf_r+0x13a>
   11fbe:	0e088463          	beqz	a7,120a6 <_vfprintf_r+0x254>
   11fc2:	13110623          	sb	a7,300(sp)
   11fc6:	0a0103a3          	sb	zero,167(sp)
   11fca:	4d85                	li	s11,1
   11fcc:	4b05                	li	s6,1
   11fce:	12c10d13          	addi	s10,sp,300
   11fd2:	c802                	sw	zero,16(sp)
   11fd4:	4a81                	li	s5,0
   11fd6:	d402                	sw	zero,40(sp)
   11fd8:	d202                	sw	zero,36(sp)
   11fda:	ce02                	sw	zero,28(sp)
   11fdc:	002cf293          	andi	t0,s9,2
   11fe0:	00028363          	beqz	t0,11fe6 <_vfprintf_r+0x194>
   11fe4:	0d89                	addi	s11,s11,2
   11fe6:	084cff93          	andi	t6,s9,132
   11fea:	463e                	lw	a2,204(sp)
   11fec:	000f9663          	bnez	t6,11ff8 <_vfprintf_r+0x1a6>
   11ff0:	41bb8733          	sub	a4,s7,s11
   11ff4:	0ce045e3          	bgtz	a4,128be <_vfprintf_r+0xa6c>
   11ff8:	0a714703          	lbu	a4,167(sp)
   11ffc:	cf19                	beqz	a4,1201a <_vfprintf_r+0x1c8>
   11ffe:	472e                	lw	a4,200(sp)
   12000:	0a710593          	addi	a1,sp,167
   12004:	c00c                	sw	a1,0(s0)
   12006:	0605                	addi	a2,a2,1
   12008:	4585                	li	a1,1
   1200a:	0705                	addi	a4,a4,1
   1200c:	c04c                	sw	a1,4(s0)
   1200e:	c7b2                	sw	a2,204(sp)
   12010:	c5ba                	sw	a4,200(sp)
   12012:	459d                	li	a1,7
   12014:	0421                	addi	s0,s0,8
   12016:	2ee5c563          	blt	a1,a4,12300 <_vfprintf_r+0x4ae>
   1201a:	00028f63          	beqz	t0,12038 <_vfprintf_r+0x1e6>
   1201e:	472e                	lw	a4,200(sp)
   12020:	4589                	li	a1,2
   12022:	0609                	addi	a2,a2,2
   12024:	0705                	addi	a4,a4,1
   12026:	113c                	addi	a5,sp,168
   12028:	c04c                	sw	a1,4(s0)
   1202a:	c01c                	sw	a5,0(s0)
   1202c:	c7b2                	sw	a2,204(sp)
   1202e:	c5ba                	sw	a4,200(sp)
   12030:	459d                	li	a1,7
   12032:	0421                	addi	s0,s0,8
   12034:	12e5c8e3          	blt	a1,a4,12964 <_vfprintf_r+0xb12>
   12038:	08000713          	li	a4,128
   1203c:	72ef8c63          	beq	t6,a4,12774 <_vfprintf_r+0x922>
   12040:	416a8ab3          	sub	s5,s5,s6
   12044:	7d504863          	bgtz	s5,12814 <_vfprintf_r+0x9c2>
   12048:	100cf713          	andi	a4,s9,256
   1204c:	60071c63          	bnez	a4,12664 <_vfprintf_r+0x812>
   12050:	47ae                	lw	a5,200(sp)
   12052:	965a                	add	a2,a2,s6
   12054:	01a42023          	sw	s10,0(s0)
   12058:	0785                	addi	a5,a5,1
   1205a:	01642223          	sw	s6,4(s0)
   1205e:	c7b2                	sw	a2,204(sp)
   12060:	c5be                	sw	a5,200(sp)
   12062:	471d                	li	a4,7
   12064:	36f74363          	blt	a4,a5,123ca <_vfprintf_r+0x578>
   12068:	0421                	addi	s0,s0,8
   1206a:	004cfe13          	andi	t3,s9,4
   1206e:	000e0663          	beqz	t3,1207a <_vfprintf_r+0x228>
   12072:	41bb8ab3          	sub	s5,s7,s11
   12076:	115045e3          	bgtz	s5,12980 <_vfprintf_r+0xb2e>
   1207a:	835e                	mv	t1,s7
   1207c:	01bbd363          	bge	s7,s11,12082 <_vfprintf_r+0x230>
   12080:	836e                	mv	t1,s11
   12082:	47b2                	lw	a5,12(sp)
   12084:	979a                	add	a5,a5,t1
   12086:	c63e                	sw	a5,12(sp)
   12088:	00061ae3          	bnez	a2,1289c <_vfprintf_r+0xa4a>
   1208c:	47c2                	lw	a5,16(sp)
   1208e:	c582                	sw	zero,200(sp)
   12090:	c789                	beqz	a5,1209a <_vfprintf_r+0x248>
   12092:	45c2                	lw	a1,16(sp)
   12094:	4522                	lw	a0,8(sp)
   12096:	df2ff0ef          	jal	11688 <_free_r>
   1209a:	844e                	mv	s0,s3
   1209c:	8d4a                	mv	s10,s2
   1209e:	000d4703          	lbu	a4,0(s10)
   120a2:	e80714e3          	bnez	a4,11f2a <_vfprintf_r+0xd8>
   120a6:	47be                	lw	a5,204(sp)
   120a8:	c399                	beqz	a5,120ae <_vfprintf_r+0x25c>
   120aa:	3160106f          	j	133c0 <_vfprintf_r+0x156e>
   120ae:	00c4d783          	lhu	a5,12(s1)
   120b2:	1c012903          	lw	s2,448(sp)
   120b6:	1bc12983          	lw	s3,444(sp)
   120ba:	0407f793          	andi	a5,a5,64
   120be:	1b812a03          	lw	s4,440(sp)
   120c2:	1b412a83          	lw	s5,436(sp)
   120c6:	1ac12b83          	lw	s7,428(sp)
   120ca:	1a812c03          	lw	s8,424(sp)
   120ce:	1a412c83          	lw	s9,420(sp)
   120d2:	1a012d03          	lw	s10,416(sp)
   120d6:	19c12d83          	lw	s11,412(sp)
   120da:	c399                	beqz	a5,120e0 <_vfprintf_r+0x28e>
   120dc:	6500106f          	j	1372c <_vfprintf_r+0x18da>
   120e0:	1cc12083          	lw	ra,460(sp)
   120e4:	1c812403          	lw	s0,456(sp)
   120e8:	4532                	lw	a0,12(sp)
   120ea:	1c412483          	lw	s1,452(sp)
   120ee:	1b012b03          	lw	s6,432(sp)
   120f2:	6179                	addi	sp,sp,464
   120f4:	8082                	ret
   120f6:	4522                	lw	a0,8(sp)
   120f8:	85a6                	mv	a1,s1
   120fa:	7db010ef          	jal	140d4 <__swsetup_r>
   120fe:	c119                	beqz	a0,12104 <_vfprintf_r+0x2b2>
   12100:	62c0106f          	j	1372c <_vfprintf_r+0x18da>
   12104:	00c49703          	lh	a4,12(s1)
   12108:	46a9                	li	a3,10
   1210a:	8b69                	andi	a4,a4,26
   1210c:	dcd714e3          	bne	a4,a3,11ed4 <_vfprintf_r+0x82>
   12110:	00e49703          	lh	a4,14(s1)
   12114:	dc0740e3          	bltz	a4,11ed4 <_vfprintf_r+0x82>
   12118:	46d2                	lw	a3,20(sp)
   1211a:	4522                	lw	a0,8(sp)
   1211c:	865a                	mv	a2,s6
   1211e:	85a6                	mv	a1,s1
   12120:	0e5010ef          	jal	13a04 <__sbprintf>
   12124:	c62a                	sw	a0,12(sp)
   12126:	bf6d                	j	120e0 <_vfprintf_r+0x28e>
   12128:	4c22                	lw	s8,8(sp)
   1212a:	8562                	mv	a0,s8
   1212c:	190020ef          	jal	142bc <_localeconv_r>
   12130:	415c                	lw	a5,4(a0)
   12132:	853e                	mv	a0,a5
   12134:	c2be                	sw	a5,68(sp)
   12136:	b48ff0ef          	jal	1147e <strlen>
   1213a:	87aa                	mv	a5,a0
   1213c:	8562                	mv	a0,s8
   1213e:	c4be                	sw	a5,72(sp)
   12140:	8c3e                	mv	s8,a5
   12142:	17a020ef          	jal	142bc <_localeconv_r>
   12146:	451c                	lw	a5,8(a0)
   12148:	de3e                	sw	a5,60(sp)
   1214a:	280c14e3          	bnez	s8,12bd2 <_vfprintf_r+0xd80>
   1214e:	00094883          	lbu	a7,0(s2)
   12152:	bd05                	j	11f82 <_vfprintf_r+0x130>
   12154:	00094883          	lbu	a7,0(s2)
   12158:	020cec93          	ori	s9,s9,32
   1215c:	b51d                	j	11f82 <_vfprintf_r+0x130>
   1215e:	010cec93          	ori	s9,s9,16
   12162:	020cf793          	andi	a5,s9,32
   12166:	26078c63          	beqz	a5,123de <_vfprintf_r+0x58c>
   1216a:	47d2                	lw	a5,20(sp)
   1216c:	00778c13          	addi	s8,a5,7
   12170:	ff8c7c13          	andi	s8,s8,-8
   12174:	004c2783          	lw	a5,4(s8)
   12178:	000c2b03          	lw	s6,0(s8)
   1217c:	008c0713          	addi	a4,s8,8
   12180:	ca3a                	sw	a4,20(sp)
   12182:	8dbe                	mv	s11,a5
   12184:	2807c263          	bltz	a5,12408 <_vfprintf_r+0x5b6>
   12188:	8ee6                	mv	t4,s9
   1218a:	380ac363          	bltz	s5,12510 <_vfprintf_r+0x6be>
   1218e:	01bb67b3          	or	a5,s6,s11
   12192:	f7fcfe93          	andi	t4,s9,-129
   12196:	36079d63          	bnez	a5,12510 <_vfprintf_r+0x6be>
   1219a:	380a9063          	bnez	s5,1251a <_vfprintf_r+0x6c8>
   1219e:	4b01                	li	s6,0
   121a0:	8cf6                	mv	s9,t4
   121a2:	19010d13          	addi	s10,sp,400
   121a6:	0a714703          	lbu	a4,167(sp)
   121aa:	8dd6                	mv	s11,s5
   121ac:	016ad363          	bge	s5,s6,121b2 <_vfprintf_r+0x360>
   121b0:	8dda                	mv	s11,s6
   121b2:	c802                	sw	zero,16(sp)
   121b4:	d402                	sw	zero,40(sp)
   121b6:	d202                	sw	zero,36(sp)
   121b8:	ce02                	sw	zero,28(sp)
   121ba:	e20701e3          	beqz	a4,11fdc <_vfprintf_r+0x18a>
   121be:	0d85                	addi	s11,s11,1
   121c0:	bd31                	j	11fdc <_vfprintf_r+0x18a>
   121c2:	010cec93          	ori	s9,s9,16
   121c6:	020cf793          	andi	a5,s9,32
   121ca:	2a078b63          	beqz	a5,12480 <_vfprintf_r+0x62e>
   121ce:	47d2                	lw	a5,20(sp)
   121d0:	00778c13          	addi	s8,a5,7
   121d4:	ff8c7c13          	andi	s8,s8,-8
   121d8:	000c2b03          	lw	s6,0(s8)
   121dc:	004c2d83          	lw	s11,4(s8)
   121e0:	008c0793          	addi	a5,s8,8
   121e4:	ca3e                	sw	a5,20(sp)
   121e6:	bffcfe93          	andi	t4,s9,-1025
   121ea:	4781                	li	a5,0
   121ec:	4701                	li	a4,0
   121ee:	0ae103a3          	sb	a4,167(sp)
   121f2:	220acb63          	bltz	s5,12428 <_vfprintf_r+0x5d6>
   121f6:	01bb6733          	or	a4,s6,s11
   121fa:	f7fefc93          	andi	s9,t4,-129
   121fe:	6a071e63          	bnez	a4,128ba <_vfprintf_r+0xa68>
   12202:	520a9563          	bnez	s5,1272c <_vfprintf_r+0x8da>
   12206:	16079ee3          	bnez	a5,12b82 <_vfprintf_r+0xd30>
   1220a:	001efb13          	andi	s6,t4,1
   1220e:	19010d13          	addi	s10,sp,400
   12212:	f80b0ae3          	beqz	s6,121a6 <_vfprintf_r+0x354>
   12216:	03000793          	li	a5,48
   1221a:	18f107a3          	sb	a5,399(sp)
   1221e:	18f10d13          	addi	s10,sp,399
   12222:	b751                	j	121a6 <_vfprintf_r+0x354>
   12224:	41a90ab3          	sub	s5,s2,s10
   12228:	d1a91ee3          	bne	s2,s10,11f44 <_vfprintf_r+0xf2>
   1222c:	00094703          	lbu	a4,0(s2)
   12230:	bb2d                	j	11f6a <_vfprintf_r+0x118>
   12232:	4522                	lw	a0,8(sp)
   12234:	01d0                	addi	a2,sp,196
   12236:	85a6                	mv	a1,s1
   12238:	061010ef          	jal	13a98 <__sprint_r>
   1223c:	e60519e3          	bnez	a0,120ae <_vfprintf_r+0x25c>
   12240:	844e                	mv	s0,s3
   12242:	bb39                	j	11f60 <_vfprintf_r+0x10e>
   12244:	008cf713          	andi	a4,s9,8
   12248:	1c0714e3          	bnez	a4,12c10 <_vfprintf_r+0xdbe>
   1224c:	47d2                	lw	a5,20(sp)
   1224e:	0908                	addi	a0,sp,144
   12250:	c846                	sw	a7,16(sp)
   12252:	00778c13          	addi	s8,a5,7
   12256:	ff8c7c13          	andi	s8,s8,-8
   1225a:	000c3507          	fld	fa0,0(s8)
   1225e:	008c0793          	addi	a5,s8,8
   12262:	ca3e                	sw	a5,20(sp)
   12264:	3fa080ef          	jal	1a65e <__extenddftf2>
   12268:	45ca                	lw	a1,144(sp)
   1226a:	465a                	lw	a2,148(sp)
   1226c:	46ea                	lw	a3,152(sp)
   1226e:	477a                	lw	a4,156(sp)
   12270:	48c2                	lw	a7,16(sp)
   12272:	0988                	addi	a0,sp,208
   12274:	c846                	sw	a7,16(sp)
   12276:	cfba                	sw	a4,220(sp)
   12278:	c9ae                	sw	a1,208(sp)
   1227a:	cbb2                	sw	a2,212(sp)
   1227c:	cdb6                	sw	a3,216(sp)
   1227e:	5c2020ef          	jal	14840 <_ldcheck>
   12282:	d72a                	sw	a0,172(sp)
   12284:	4709                	li	a4,2
   12286:	48c2                	lw	a7,16(sp)
   12288:	5ce50be3          	beq	a0,a4,1305e <_vfprintf_r+0x120c>
   1228c:	4705                	li	a4,1
   1228e:	6ae505e3          	beq	a0,a4,13138 <_vfprintf_r+0x12e6>
   12292:	06100713          	li	a4,97
   12296:	2ae88ce3          	beq	a7,a4,12d4e <_vfprintf_r+0xefc>
   1229a:	04100713          	li	a4,65
   1229e:	05800793          	li	a5,88
   122a2:	2ae888e3          	beq	a7,a4,12d52 <_vfprintf_r+0xf00>
   122a6:	577d                	li	a4,-1
   122a8:	00ea9463          	bne	s5,a4,122b0 <_vfprintf_r+0x45e>
   122ac:	6260106f          	j	138d2 <_vfprintf_r+0x1a80>
   122b0:	fdf8f713          	andi	a4,a7,-33
   122b4:	04700693          	li	a3,71
   122b8:	c802                	sw	zero,16(sp)
   122ba:	00d71563          	bne	a4,a3,122c4 <_vfprintf_r+0x472>
   122be:	000a9363          	bnez	s5,122c4 <_vfprintf_r+0x472>
   122c2:	4a85                	li	s5,1
   122c4:	4c7e                	lw	s8,220(sp)
   122c6:	100ce793          	ori	a5,s9,256
   122ca:	c6be                	sw	a5,76(sp)
   122cc:	dc02                	sw	zero,56(sp)
   122ce:	4fce                	lw	t6,208(sp)
   122d0:	4f5e                	lw	t5,212(sp)
   122d2:	4eee                	lw	t4,216(sp)
   122d4:	000c5963          	bgez	s8,122e6 <_vfprintf_r+0x494>
   122d8:	80000737          	lui	a4,0x80000
   122dc:	02d00793          	li	a5,45
   122e0:	01874c33          	xor	s8,a4,s8
   122e4:	dc3e                	sw	a5,56(sp)
   122e6:	fbf88713          	addi	a4,a7,-65
   122ea:	02500693          	li	a3,37
   122ee:	28e6eee3          	bltu	a3,a4,12d8a <_vfprintf_r+0xf38>
   122f2:	66ed                	lui	a3,0x1b
   122f4:	070a                	slli	a4,a4,0x2
   122f6:	cac68693          	addi	a3,a3,-852 # 1acac <k+0x26c>
   122fa:	9736                	add	a4,a4,a3
   122fc:	4318                	lw	a4,0(a4)
   122fe:	8702                	jr	a4
   12300:	4522                	lw	a0,8(sp)
   12302:	01d0                	addi	a2,sp,196
   12304:	85a6                	mv	a1,s1
   12306:	c8c6                	sw	a7,80(sp)
   12308:	c6fe                	sw	t6,76(sp)
   1230a:	dc16                	sw	t0,56(sp)
   1230c:	78c010ef          	jal	13a98 <__sprint_r>
   12310:	58051d63          	bnez	a0,128aa <_vfprintf_r+0xa58>
   12314:	463e                	lw	a2,204(sp)
   12316:	48c6                	lw	a7,80(sp)
   12318:	4fb6                	lw	t6,76(sp)
   1231a:	52e2                	lw	t0,56(sp)
   1231c:	844e                	mv	s0,s3
   1231e:	b9f5                	j	1201a <_vfprintf_r+0x1c8>
   12320:	4aae                	lw	s5,200(sp)
   12322:	5782                	lw	a5,32(sp)
   12324:	4705                	li	a4,1
   12326:	01a42023          	sw	s10,0(s0)
   1232a:	00160c13          	addi	s8,a2,1
   1232e:	0a85                	addi	s5,s5,1
   12330:	00840b13          	addi	s6,s0,8
   12334:	7af75763          	bge	a4,a5,12ae2 <_vfprintf_r+0xc90>
   12338:	4705                	li	a4,1
   1233a:	c058                	sw	a4,4(s0)
   1233c:	c7e2                	sw	s8,204(sp)
   1233e:	c5d6                	sw	s5,200(sp)
   12340:	471d                	li	a4,7
   12342:	395741e3          	blt	a4,s5,12ec4 <_vfprintf_r+0x1072>
   12346:	57b2                	lw	a5,44(sp)
   12348:	5742                	lw	a4,48(sp)
   1234a:	0a85                	addi	s5,s5,1
   1234c:	9c3e                	add	s8,s8,a5
   1234e:	00eb2023          	sw	a4,0(s6)
   12352:	00fb2223          	sw	a5,4(s6)
   12356:	c7e2                	sw	s8,204(sp)
   12358:	c5d6                	sw	s5,200(sp)
   1235a:	471d                	li	a4,7
   1235c:	0b21                	addi	s6,s6,8
   1235e:	37574fe3          	blt	a4,s5,12edc <_vfprintf_r+0x108a>
   12362:	474e                	lw	a4,208(sp)
   12364:	5782                	lw	a5,32(sp)
   12366:	010c                	addi	a1,sp,128
   12368:	c93a                	sw	a4,144(sp)
   1236a:	475e                	lw	a4,212(sp)
   1236c:	0908                	addi	a0,sp,144
   1236e:	c102                	sw	zero,128(sp)
   12370:	cb3a                	sw	a4,148(sp)
   12372:	476e                	lw	a4,216(sp)
   12374:	c302                	sw	zero,132(sp)
   12376:	c502                	sw	zero,136(sp)
   12378:	cd3a                	sw	a4,152(sp)
   1237a:	477e                	lw	a4,220(sp)
   1237c:	c702                	sw	zero,140(sp)
   1237e:	fff78413          	addi	s0,a5,-1
   12382:	cf3a                	sw	a4,156(sp)
   12384:	7f7050ef          	jal	1837a <__eqtf2>
   12388:	78050263          	beqz	a0,12b0c <_vfprintf_r+0xcba>
   1238c:	001d0793          	addi	a5,s10,1
   12390:	0a85                	addi	s5,s5,1
   12392:	9c22                	add	s8,s8,s0
   12394:	00fb2023          	sw	a5,0(s6)
   12398:	008b2223          	sw	s0,4(s6)
   1239c:	c7e2                	sw	s8,204(sp)
   1239e:	c5d6                	sw	s5,200(sp)
   123a0:	479d                	li	a5,7
   123a2:	0b21                	addi	s6,s6,8
   123a4:	7557c963          	blt	a5,s5,12af6 <_vfprintf_r+0xca4>
   123a8:	4686                	lw	a3,64(sp)
   123aa:	1958                	addi	a4,sp,180
   123ac:	001a8793          	addi	a5,s5,1
   123b0:	01868633          	add	a2,a3,s8
   123b4:	00eb2023          	sw	a4,0(s6)
   123b8:	00db2223          	sw	a3,4(s6)
   123bc:	c7b2                	sw	a2,204(sp)
   123be:	c5be                	sw	a5,200(sp)
   123c0:	471d                	li	a4,7
   123c2:	008b0413          	addi	s0,s6,8
   123c6:	caf752e3          	bge	a4,a5,1206a <_vfprintf_r+0x218>
   123ca:	4522                	lw	a0,8(sp)
   123cc:	01d0                	addi	a2,sp,196
   123ce:	85a6                	mv	a1,s1
   123d0:	6c8010ef          	jal	13a98 <__sprint_r>
   123d4:	4c051b63          	bnez	a0,128aa <_vfprintf_r+0xa58>
   123d8:	463e                	lw	a2,204(sp)
   123da:	844e                	mv	s0,s3
   123dc:	b179                	j	1206a <_vfprintf_r+0x218>
   123de:	4752                	lw	a4,20(sp)
   123e0:	010cf793          	andi	a5,s9,16
   123e4:	00072b03          	lw	s6,0(a4) # 80000000 <__BSS_END__+0x7ffe3374>
   123e8:	0711                	addi	a4,a4,4
   123ea:	ca3a                	sw	a4,20(sp)
   123ec:	7c079e63          	bnez	a5,12bc8 <_vfprintf_r+0xd76>
   123f0:	040cf793          	andi	a5,s9,64
   123f4:	7c078663          	beqz	a5,12bc0 <_vfprintf_r+0xd6e>
   123f8:	0b42                	slli	s6,s6,0x10
   123fa:	410b5b13          	srai	s6,s6,0x10
   123fe:	41fb5d93          	srai	s11,s6,0x1f
   12402:	87ee                	mv	a5,s11
   12404:	d807d2e3          	bgez	a5,12188 <_vfprintf_r+0x336>
   12408:	02d00713          	li	a4,45
   1240c:	016037b3          	snez	a5,s6
   12410:	41b00db3          	neg	s11,s11
   12414:	0ae103a3          	sb	a4,167(sp)
   12418:	40fd8db3          	sub	s11,s11,a5
   1241c:	41600b33          	neg	s6,s6
   12420:	8ee6                	mv	t4,s9
   12422:	4785                	li	a5,1
   12424:	dc0ad9e3          	bgez	s5,121f6 <_vfprintf_r+0x3a4>
   12428:	4705                	li	a4,1
   1242a:	0ee78363          	beq	a5,a4,12510 <_vfprintf_r+0x6be>
   1242e:	4709                	li	a4,2
   12430:	30e78763          	beq	a5,a4,1273e <_vfprintf_r+0x8ec>
   12434:	19010d13          	addi	s10,sp,400
   12438:	01dd9793          	slli	a5,s11,0x1d
   1243c:	007b7713          	andi	a4,s6,7
   12440:	003b5b13          	srli	s6,s6,0x3
   12444:	03070713          	addi	a4,a4,48
   12448:	0167eb33          	or	s6,a5,s6
   1244c:	003ddd93          	srli	s11,s11,0x3
   12450:	feed0fa3          	sb	a4,-1(s10)
   12454:	01bb67b3          	or	a5,s6,s11
   12458:	866a                	mv	a2,s10
   1245a:	1d7d                	addi	s10,s10,-1
   1245c:	fff1                	bnez	a5,12438 <_vfprintf_r+0x5e6>
   1245e:	001ef693          	andi	a3,t4,1
   12462:	30068463          	beqz	a3,1276a <_vfprintf_r+0x918>
   12466:	03000693          	li	a3,48
   1246a:	30d70063          	beq	a4,a3,1276a <_vfprintf_r+0x918>
   1246e:	1679                	addi	a2,a2,-2
   12470:	0b1c                	addi	a5,sp,400
   12472:	fedd0fa3          	sb	a3,-1(s10)
   12476:	40c78b33          	sub	s6,a5,a2
   1247a:	8cf6                	mv	s9,t4
   1247c:	8d32                	mv	s10,a2
   1247e:	b325                	j	121a6 <_vfprintf_r+0x354>
   12480:	4752                	lw	a4,20(sp)
   12482:	010cf793          	andi	a5,s9,16
   12486:	00072b03          	lw	s6,0(a4)
   1248a:	0711                	addi	a4,a4,4
   1248c:	ca3a                	sw	a4,20(sp)
   1248e:	72079663          	bnez	a5,12bba <_vfprintf_r+0xd68>
   12492:	040cf793          	andi	a5,s9,64
   12496:	70078e63          	beqz	a5,12bb2 <_vfprintf_r+0xd60>
   1249a:	0b42                	slli	s6,s6,0x10
   1249c:	010b5b13          	srli	s6,s6,0x10
   124a0:	4d81                	li	s11,0
   124a2:	b391                	j	121e6 <_vfprintf_r+0x394>
   124a4:	4752                	lw	a4,20(sp)
   124a6:	0a0103a3          	sb	zero,167(sp)
   124aa:	4d85                	li	s11,1
   124ac:	431c                	lw	a5,0(a4)
   124ae:	0711                	addi	a4,a4,4
   124b0:	ca3a                	sw	a4,20(sp)
   124b2:	12f10623          	sb	a5,300(sp)
   124b6:	4b05                	li	s6,1
   124b8:	12c10d13          	addi	s10,sp,300
   124bc:	be19                	j	11fd2 <_vfprintf_r+0x180>
   124be:	47d2                	lw	a5,20(sp)
   124c0:	0a0103a3          	sb	zero,167(sp)
   124c4:	0007ad03          	lw	s10,0(a5)
   124c8:	00478c13          	addi	s8,a5,4
   124cc:	7e0d0a63          	beqz	s10,12cc0 <_vfprintf_r+0xe6e>
   124d0:	420ac4e3          	bltz	s5,130f8 <_vfprintf_r+0x12a6>
   124d4:	8656                	mv	a2,s5
   124d6:	4581                	li	a1,0
   124d8:	856a                	mv	a0,s10
   124da:	ca46                	sw	a7,20(sp)
   124dc:	4d3010ef          	jal	141ae <memchr>
   124e0:	c82a                	sw	a0,16(sp)
   124e2:	48d2                	lw	a7,20(sp)
   124e4:	e119                	bnez	a0,124ea <_vfprintf_r+0x698>
   124e6:	25c0106f          	j	13742 <_vfprintf_r+0x18f0>
   124ea:	47c2                	lw	a5,16(sp)
   124ec:	0a714703          	lbu	a4,167(sp)
   124f0:	ca62                	sw	s8,20(sp)
   124f2:	41a78b33          	sub	s6,a5,s10
   124f6:	fffb4693          	not	a3,s6
   124fa:	86fd                	srai	a3,a3,0x1f
   124fc:	c802                	sw	zero,16(sp)
   124fe:	d402                	sw	zero,40(sp)
   12500:	d202                	sw	zero,36(sp)
   12502:	ce02                	sw	zero,28(sp)
   12504:	00db7db3          	and	s11,s6,a3
   12508:	4a81                	li	s5,0
   1250a:	ca071ae3          	bnez	a4,121be <_vfprintf_r+0x36c>
   1250e:	b4f9                	j	11fdc <_vfprintf_r+0x18a>
   12510:	1e0d98e3          	bnez	s11,12f00 <_vfprintf_r+0x10ae>
   12514:	47a5                	li	a5,9
   12516:	1f67e5e3          	bltu	a5,s6,12f00 <_vfprintf_r+0x10ae>
   1251a:	030b0b13          	addi	s6,s6,48
   1251e:	196107a3          	sb	s6,399(sp)
   12522:	8cf6                	mv	s9,t4
   12524:	4b05                	li	s6,1
   12526:	18f10d13          	addi	s10,sp,399
   1252a:	b9b5                	j	121a6 <_vfprintf_r+0x354>
   1252c:	47d2                	lw	a5,20(sp)
   1252e:	0007ab83          	lw	s7,0(a5)
   12532:	0791                	addi	a5,a5,4
   12534:	660bd163          	bgez	s7,12b96 <_vfprintf_r+0xd44>
   12538:	41700bb3          	neg	s7,s7
   1253c:	ca3e                	sw	a5,20(sp)
   1253e:	00094883          	lbu	a7,0(s2)
   12542:	004cec93          	ori	s9,s9,4
   12546:	bc35                	j	11f82 <_vfprintf_r+0x130>
   12548:	02b00793          	li	a5,43
   1254c:	00094883          	lbu	a7,0(s2)
   12550:	0af103a3          	sb	a5,167(sp)
   12554:	b43d                	j	11f82 <_vfprintf_r+0x130>
   12556:	00094883          	lbu	a7,0(s2)
   1255a:	080cec93          	ori	s9,s9,128
   1255e:	b415                	j	11f82 <_vfprintf_r+0x130>
   12560:	00094883          	lbu	a7,0(s2)
   12564:	02a00793          	li	a5,42
   12568:	00190693          	addi	a3,s2,1
   1256c:	00f89463          	bne	a7,a5,12574 <_vfprintf_r+0x722>
   12570:	44c0106f          	j	139bc <_vfprintf_r+0x1b6a>
   12574:	fd088793          	addi	a5,a7,-48
   12578:	4725                	li	a4,9
   1257a:	4a81                	li	s5,0
   1257c:	4625                	li	a2,9
   1257e:	02f76063          	bltu	a4,a5,1259e <_vfprintf_r+0x74c>
   12582:	0006c883          	lbu	a7,0(a3)
   12586:	002a9713          	slli	a4,s5,0x2
   1258a:	9aba                	add	s5,s5,a4
   1258c:	0a86                	slli	s5,s5,0x1
   1258e:	9abe                	add	s5,s5,a5
   12590:	fd088793          	addi	a5,a7,-48
   12594:	0685                	addi	a3,a3,1
   12596:	fef676e3          	bgeu	a2,a5,12582 <_vfprintf_r+0x730>
   1259a:	680ac963          	bltz	s5,12c2c <_vfprintf_r+0xdda>
   1259e:	8936                	mv	s2,a3
   125a0:	b2d5                	j	11f84 <_vfprintf_r+0x132>
   125a2:	00094883          	lbu	a7,0(s2)
   125a6:	001cec93          	ori	s9,s9,1
   125aa:	bae1                	j	11f82 <_vfprintf_r+0x130>
   125ac:	0a714783          	lbu	a5,167(sp)
   125b0:	00094883          	lbu	a7,0(s2)
   125b4:	9c0797e3          	bnez	a5,11f82 <_vfprintf_r+0x130>
   125b8:	02000793          	li	a5,32
   125bc:	0af103a3          	sb	a5,167(sp)
   125c0:	b2c9                	j	11f82 <_vfprintf_r+0x130>
   125c2:	010cee93          	ori	t4,s9,16
   125c6:	020ef793          	andi	a5,t4,32
   125ca:	58078a63          	beqz	a5,12b5e <_vfprintf_r+0xd0c>
   125ce:	47d2                	lw	a5,20(sp)
   125d0:	00778c13          	addi	s8,a5,7
   125d4:	ff8c7c13          	andi	s8,s8,-8
   125d8:	008c0793          	addi	a5,s8,8
   125dc:	ca3e                	sw	a5,20(sp)
   125de:	000c2b03          	lw	s6,0(s8)
   125e2:	004c2d83          	lw	s11,4(s8)
   125e6:	4785                	li	a5,1
   125e8:	b111                	j	121ec <_vfprintf_r+0x39a>
   125ea:	00094883          	lbu	a7,0(s2)
   125ee:	008cec93          	ori	s9,s9,8
   125f2:	ba41                	j	11f82 <_vfprintf_r+0x130>
   125f4:	4752                	lw	a4,20(sp)
   125f6:	67a1                	lui	a5,0x8
   125f8:	83078793          	addi	a5,a5,-2000 # 7830 <exit-0x8864>
   125fc:	0af11423          	sh	a5,168(sp)
   12600:	00470793          	addi	a5,a4,4
   12604:	ca3e                	sw	a5,20(sp)
   12606:	67ed                	lui	a5,0x1b
   12608:	8c078793          	addi	a5,a5,-1856 # 1a8c0 <__clzsi2+0xd6>
   1260c:	da3e                	sw	a5,52(sp)
   1260e:	00072b03          	lw	s6,0(a4)
   12612:	4d81                	li	s11,0
   12614:	002cee93          	ori	t4,s9,2
   12618:	4789                	li	a5,2
   1261a:	07800893          	li	a7,120
   1261e:	b6f9                	j	121ec <_vfprintf_r+0x39a>
   12620:	020cf793          	andi	a5,s9,32
   12624:	5c078463          	beqz	a5,12bec <_vfprintf_r+0xd9a>
   12628:	47d2                	lw	a5,20(sp)
   1262a:	46b2                	lw	a3,12(sp)
   1262c:	439c                	lw	a5,0(a5)
   1262e:	41f6d713          	srai	a4,a3,0x1f
   12632:	c394                	sw	a3,0(a5)
   12634:	c3d8                	sw	a4,4(a5)
   12636:	47d2                	lw	a5,20(sp)
   12638:	8d4a                	mv	s10,s2
   1263a:	0791                	addi	a5,a5,4
   1263c:	ca3e                	sw	a5,20(sp)
   1263e:	b485                	j	1209e <_vfprintf_r+0x24c>
   12640:	00094883          	lbu	a7,0(s2)
   12644:	06c00793          	li	a5,108
   12648:	64f88b63          	beq	a7,a5,12c9e <_vfprintf_r+0xe4c>
   1264c:	010cec93          	ori	s9,s9,16
   12650:	ba0d                	j	11f82 <_vfprintf_r+0x130>
   12652:	00094883          	lbu	a7,0(s2)
   12656:	06800793          	li	a5,104
   1265a:	62f88b63          	beq	a7,a5,12c90 <_vfprintf_r+0xe3e>
   1265e:	040cec93          	ori	s9,s9,64
   12662:	b205                	j	11f82 <_vfprintf_r+0x130>
   12664:	06500713          	li	a4,101
   12668:	cb175ce3          	bge	a4,a7,12320 <_vfprintf_r+0x4ce>
   1266c:	474e                	lw	a4,208(sp)
   1266e:	010c                	addi	a1,sp,128
   12670:	0908                	addi	a0,sp,144
   12672:	c93a                	sw	a4,144(sp)
   12674:	475e                	lw	a4,212(sp)
   12676:	dc32                	sw	a2,56(sp)
   12678:	c102                	sw	zero,128(sp)
   1267a:	cb3a                	sw	a4,148(sp)
   1267c:	476e                	lw	a4,216(sp)
   1267e:	c302                	sw	zero,132(sp)
   12680:	c502                	sw	zero,136(sp)
   12682:	cd3a                	sw	a4,152(sp)
   12684:	477e                	lw	a4,220(sp)
   12686:	c702                	sw	zero,140(sp)
   12688:	cf3a                	sw	a4,156(sp)
   1268a:	4f1050ef          	jal	1837a <__eqtf2>
   1268e:	5662                	lw	a2,56(sp)
   12690:	36051363          	bnez	a0,129f6 <_vfprintf_r+0xba4>
   12694:	47ae                	lw	a5,200(sp)
   12696:	676d                	lui	a4,0x1b
   12698:	8f070713          	addi	a4,a4,-1808 # 1a8f0 <__clzsi2+0x106>
   1269c:	c018                	sw	a4,0(s0)
   1269e:	0605                	addi	a2,a2,1
   126a0:	4705                	li	a4,1
   126a2:	0785                	addi	a5,a5,1
   126a4:	c058                	sw	a4,4(s0)
   126a6:	c7b2                	sw	a2,204(sp)
   126a8:	c5be                	sw	a5,200(sp)
   126aa:	471d                	li	a4,7
   126ac:	0421                	addi	s0,s0,8
   126ae:	16f74de3          	blt	a4,a5,13028 <_vfprintf_r+0x11d6>
   126b2:	57ba                	lw	a5,172(sp)
   126b4:	5702                	lw	a4,32(sp)
   126b6:	4ce7db63          	bge	a5,a4,12b8c <_vfprintf_r+0xd3a>
   126ba:	57c2                	lw	a5,48(sp)
   126bc:	5732                	lw	a4,44(sp)
   126be:	0421                	addi	s0,s0,8
   126c0:	fef42c23          	sw	a5,-8(s0)
   126c4:	47ae                	lw	a5,200(sp)
   126c6:	963a                	add	a2,a2,a4
   126c8:	fee42e23          	sw	a4,-4(s0)
   126cc:	0785                	addi	a5,a5,1
   126ce:	c7b2                	sw	a2,204(sp)
   126d0:	c5be                	sw	a5,200(sp)
   126d2:	471d                	li	a4,7
   126d4:	5cf74c63          	blt	a4,a5,12cac <_vfprintf_r+0xe5a>
   126d8:	5782                	lw	a5,32(sp)
   126da:	fff78a93          	addi	s5,a5,-1
   126de:	995056e3          	blez	s5,1206a <_vfprintf_r+0x218>
   126e2:	686d                	lui	a6,0x1b
   126e4:	d4480813          	addi	a6,a6,-700 # 1ad44 <zeroes.0>
   126e8:	4741                	li	a4,16
   126ea:	47ae                	lw	a5,200(sp)
   126ec:	4b41                	li	s6,16
   126ee:	4c1d                	li	s8,7
   126f0:	8d42                	mv	s10,a6
   126f2:	01574763          	blt	a4,s5,12700 <_vfprintf_r+0x8ae>
   126f6:	14b0006f          	j	13040 <_vfprintf_r+0x11ee>
   126fa:	1ac1                	addi	s5,s5,-16
   126fc:	155b51e3          	bge	s6,s5,1303e <_vfprintf_r+0x11ec>
   12700:	0641                	addi	a2,a2,16
   12702:	0785                	addi	a5,a5,1
   12704:	01a42023          	sw	s10,0(s0)
   12708:	01642223          	sw	s6,4(s0)
   1270c:	c7b2                	sw	a2,204(sp)
   1270e:	c5be                	sw	a5,200(sp)
   12710:	0421                	addi	s0,s0,8
   12712:	fefc54e3          	bge	s8,a5,126fa <_vfprintf_r+0x8a8>
   12716:	4522                	lw	a0,8(sp)
   12718:	01d0                	addi	a2,sp,196
   1271a:	85a6                	mv	a1,s1
   1271c:	37c010ef          	jal	13a98 <__sprint_r>
   12720:	18051563          	bnez	a0,128aa <_vfprintf_r+0xa58>
   12724:	463e                	lw	a2,204(sp)
   12726:	47ae                	lw	a5,200(sp)
   12728:	844e                	mv	s0,s3
   1272a:	bfc1                	j	126fa <_vfprintf_r+0x8a8>
   1272c:	4705                	li	a4,1
   1272e:	00e79463          	bne	a5,a4,12736 <_vfprintf_r+0x8e4>
   12732:	0f20106f          	j	13824 <_vfprintf_r+0x19d2>
   12736:	4709                	li	a4,2
   12738:	8ee6                	mv	t4,s9
   1273a:	cee79de3          	bne	a5,a4,12434 <_vfprintf_r+0x5e2>
   1273e:	56d2                	lw	a3,52(sp)
   12740:	19010d13          	addi	s10,sp,400
   12744:	00fb7793          	andi	a5,s6,15
   12748:	97b6                	add	a5,a5,a3
   1274a:	0007c703          	lbu	a4,0(a5)
   1274e:	004b5b13          	srli	s6,s6,0x4
   12752:	01cd9793          	slli	a5,s11,0x1c
   12756:	0167eb33          	or	s6,a5,s6
   1275a:	004ddd93          	srli	s11,s11,0x4
   1275e:	feed0fa3          	sb	a4,-1(s10)
   12762:	01bb67b3          	or	a5,s6,s11
   12766:	1d7d                	addi	s10,s10,-1
   12768:	fff1                	bnez	a5,12744 <_vfprintf_r+0x8f2>
   1276a:	0b1c                	addi	a5,sp,400
   1276c:	41a78b33          	sub	s6,a5,s10
   12770:	8cf6                	mv	s9,t4
   12772:	bc15                	j	121a6 <_vfprintf_r+0x354>
   12774:	41bb8c33          	sub	s8,s7,s11
   12778:	8d8054e3          	blez	s8,12040 <_vfprintf_r+0x1ee>
   1277c:	686d                	lui	a6,0x1b
   1277e:	4541                	li	a0,16
   12780:	45ae                	lw	a1,200(sp)
   12782:	d4480813          	addi	a6,a6,-700 # 1ad44 <zeroes.0>
   12786:	05855f63          	bge	a0,s8,127e4 <_vfprintf_r+0x992>
   1278a:	dc4a                	sw	s2,56(sp)
   1278c:	87a2                	mv	a5,s0
   1278e:	4ec1                	li	t4,16
   12790:	8462                	mv	s0,s8
   12792:	4f9d                	li	t6,7
   12794:	8c5a                	mv	s8,s6
   12796:	8942                	mv	s2,a6
   12798:	8b56                	mv	s6,s5
   1279a:	8ac6                	mv	s5,a7
   1279c:	a021                	j	127a4 <_vfprintf_r+0x952>
   1279e:	1441                	addi	s0,s0,-16
   127a0:	028edb63          	bge	t4,s0,127d6 <_vfprintf_r+0x984>
   127a4:	0641                	addi	a2,a2,16
   127a6:	0585                	addi	a1,a1,1 # 2001 <exit-0xe093>
   127a8:	0127a023          	sw	s2,0(a5)
   127ac:	01d7a223          	sw	t4,4(a5)
   127b0:	c7b2                	sw	a2,204(sp)
   127b2:	c5ae                	sw	a1,200(sp)
   127b4:	07a1                	addi	a5,a5,8
   127b6:	febfd4e3          	bge	t6,a1,1279e <_vfprintf_r+0x94c>
   127ba:	4522                	lw	a0,8(sp)
   127bc:	01d0                	addi	a2,sp,196
   127be:	85a6                	mv	a1,s1
   127c0:	2d8010ef          	jal	13a98 <__sprint_r>
   127c4:	e17d                	bnez	a0,128aa <_vfprintf_r+0xa58>
   127c6:	4ec1                	li	t4,16
   127c8:	1441                	addi	s0,s0,-16
   127ca:	463e                	lw	a2,204(sp)
   127cc:	45ae                	lw	a1,200(sp)
   127ce:	87ce                	mv	a5,s3
   127d0:	4f9d                	li	t6,7
   127d2:	fc8ec9e3          	blt	t4,s0,127a4 <_vfprintf_r+0x952>
   127d6:	884a                	mv	a6,s2
   127d8:	5962                	lw	s2,56(sp)
   127da:	88d6                	mv	a7,s5
   127dc:	8ada                	mv	s5,s6
   127de:	8b62                	mv	s6,s8
   127e0:	8c22                	mv	s8,s0
   127e2:	843e                	mv	s0,a5
   127e4:	9662                	add	a2,a2,s8
   127e6:	0585                	addi	a1,a1,1
   127e8:	01042023          	sw	a6,0(s0)
   127ec:	01842223          	sw	s8,4(s0)
   127f0:	c7b2                	sw	a2,204(sp)
   127f2:	c5ae                	sw	a1,200(sp)
   127f4:	471d                	li	a4,7
   127f6:	0421                	addi	s0,s0,8
   127f8:	84b754e3          	bge	a4,a1,12040 <_vfprintf_r+0x1ee>
   127fc:	4522                	lw	a0,8(sp)
   127fe:	01d0                	addi	a2,sp,196
   12800:	85a6                	mv	a1,s1
   12802:	dc46                	sw	a7,56(sp)
   12804:	294010ef          	jal	13a98 <__sprint_r>
   12808:	e14d                	bnez	a0,128aa <_vfprintf_r+0xa58>
   1280a:	463e                	lw	a2,204(sp)
   1280c:	58e2                	lw	a7,56(sp)
   1280e:	844e                	mv	s0,s3
   12810:	831ff06f          	j	12040 <_vfprintf_r+0x1ee>
   12814:	686d                	lui	a6,0x1b
   12816:	4741                	li	a4,16
   12818:	45ae                	lw	a1,200(sp)
   1281a:	d4480813          	addi	a6,a6,-700 # 1ad44 <zeroes.0>
   1281e:	05575763          	bge	a4,s5,1286c <_vfprintf_r+0xa1a>
   12822:	87a2                	mv	a5,s0
   12824:	4741                	li	a4,16
   12826:	8456                	mv	s0,s5
   12828:	4c1d                	li	s8,7
   1282a:	dc46                	sw	a7,56(sp)
   1282c:	8ad2                	mv	s5,s4
   1282e:	a021                	j	12836 <_vfprintf_r+0x9e4>
   12830:	1441                	addi	s0,s0,-16
   12832:	02875963          	bge	a4,s0,12864 <_vfprintf_r+0xa12>
   12836:	0641                	addi	a2,a2,16
   12838:	0585                	addi	a1,a1,1
   1283a:	0147a023          	sw	s4,0(a5)
   1283e:	c3d8                	sw	a4,4(a5)
   12840:	c7b2                	sw	a2,204(sp)
   12842:	c5ae                	sw	a1,200(sp)
   12844:	07a1                	addi	a5,a5,8
   12846:	febc55e3          	bge	s8,a1,12830 <_vfprintf_r+0x9de>
   1284a:	4522                	lw	a0,8(sp)
   1284c:	01d0                	addi	a2,sp,196
   1284e:	85a6                	mv	a1,s1
   12850:	248010ef          	jal	13a98 <__sprint_r>
   12854:	e939                	bnez	a0,128aa <_vfprintf_r+0xa58>
   12856:	4741                	li	a4,16
   12858:	1441                	addi	s0,s0,-16
   1285a:	463e                	lw	a2,204(sp)
   1285c:	45ae                	lw	a1,200(sp)
   1285e:	87ce                	mv	a5,s3
   12860:	fc874be3          	blt	a4,s0,12836 <_vfprintf_r+0x9e4>
   12864:	58e2                	lw	a7,56(sp)
   12866:	8856                	mv	a6,s5
   12868:	8aa2                	mv	s5,s0
   1286a:	843e                	mv	s0,a5
   1286c:	9656                	add	a2,a2,s5
   1286e:	0585                	addi	a1,a1,1
   12870:	01042023          	sw	a6,0(s0)
   12874:	01542223          	sw	s5,4(s0)
   12878:	c7b2                	sw	a2,204(sp)
   1287a:	c5ae                	sw	a1,200(sp)
   1287c:	471d                	li	a4,7
   1287e:	0421                	addi	s0,s0,8
   12880:	fcb75463          	bge	a4,a1,12048 <_vfprintf_r+0x1f6>
   12884:	4522                	lw	a0,8(sp)
   12886:	01d0                	addi	a2,sp,196
   12888:	85a6                	mv	a1,s1
   1288a:	dc46                	sw	a7,56(sp)
   1288c:	20c010ef          	jal	13a98 <__sprint_r>
   12890:	ed09                	bnez	a0,128aa <_vfprintf_r+0xa58>
   12892:	463e                	lw	a2,204(sp)
   12894:	58e2                	lw	a7,56(sp)
   12896:	844e                	mv	s0,s3
   12898:	fb0ff06f          	j	12048 <_vfprintf_r+0x1f6>
   1289c:	4522                	lw	a0,8(sp)
   1289e:	01d0                	addi	a2,sp,196
   128a0:	85a6                	mv	a1,s1
   128a2:	1f6010ef          	jal	13a98 <__sprint_r>
   128a6:	fe050363          	beqz	a0,1208c <_vfprintf_r+0x23a>
   128aa:	45c2                	lw	a1,16(sp)
   128ac:	800581e3          	beqz	a1,120ae <_vfprintf_r+0x25c>
   128b0:	4522                	lw	a0,8(sp)
   128b2:	dd7fe0ef          	jal	11688 <_free_r>
   128b6:	ff8ff06f          	j	120ae <_vfprintf_r+0x25c>
   128ba:	8ee6                	mv	t4,s9
   128bc:	b6b5                	j	12428 <_vfprintf_r+0x5d6>
   128be:	686d                	lui	a6,0x1b
   128c0:	4541                	li	a0,16
   128c2:	45ae                	lw	a1,200(sp)
   128c4:	d5480c13          	addi	s8,a6,-684 # 1ad54 <blanks.1>
   128c8:	06e55363          	bge	a0,a4,1292e <_vfprintf_r+0xadc>
   128cc:	c8ca                	sw	s2,80(sp)
   128ce:	87a2                	mv	a5,s0
   128d0:	8962                	mv	s2,s8
   128d2:	4ec1                	li	t4,16
   128d4:	8c5a                	mv	s8,s6
   128d6:	439d                	li	t2,7
   128d8:	8b56                	mv	s6,s5
   128da:	dc16                	sw	t0,56(sp)
   128dc:	c6fe                	sw	t6,76(sp)
   128de:	843a                	mv	s0,a4
   128e0:	8ac6                	mv	s5,a7
   128e2:	a021                	j	128ea <_vfprintf_r+0xa98>
   128e4:	1441                	addi	s0,s0,-16
   128e6:	028edb63          	bge	t4,s0,1291c <_vfprintf_r+0xaca>
   128ea:	0641                	addi	a2,a2,16
   128ec:	0585                	addi	a1,a1,1
   128ee:	0127a023          	sw	s2,0(a5)
   128f2:	01d7a223          	sw	t4,4(a5)
   128f6:	c7b2                	sw	a2,204(sp)
   128f8:	c5ae                	sw	a1,200(sp)
   128fa:	07a1                	addi	a5,a5,8
   128fc:	feb3d4e3          	bge	t2,a1,128e4 <_vfprintf_r+0xa92>
   12900:	4522                	lw	a0,8(sp)
   12902:	01d0                	addi	a2,sp,196
   12904:	85a6                	mv	a1,s1
   12906:	192010ef          	jal	13a98 <__sprint_r>
   1290a:	f145                	bnez	a0,128aa <_vfprintf_r+0xa58>
   1290c:	4ec1                	li	t4,16
   1290e:	1441                	addi	s0,s0,-16
   12910:	463e                	lw	a2,204(sp)
   12912:	45ae                	lw	a1,200(sp)
   12914:	87ce                	mv	a5,s3
   12916:	439d                	li	t2,7
   12918:	fc8ec9e3          	blt	t4,s0,128ea <_vfprintf_r+0xa98>
   1291c:	88d6                	mv	a7,s5
   1291e:	52e2                	lw	t0,56(sp)
   12920:	8ada                	mv	s5,s6
   12922:	4fb6                	lw	t6,76(sp)
   12924:	8b62                	mv	s6,s8
   12926:	8c4a                	mv	s8,s2
   12928:	4946                	lw	s2,80(sp)
   1292a:	8722                	mv	a4,s0
   1292c:	843e                	mv	s0,a5
   1292e:	963a                	add	a2,a2,a4
   12930:	0585                	addi	a1,a1,1
   12932:	c058                	sw	a4,4(s0)
   12934:	01842023          	sw	s8,0(s0)
   12938:	c7b2                	sw	a2,204(sp)
   1293a:	c5ae                	sw	a1,200(sp)
   1293c:	471d                	li	a4,7
   1293e:	0421                	addi	s0,s0,8
   12940:	eab75c63          	bge	a4,a1,11ff8 <_vfprintf_r+0x1a6>
   12944:	4522                	lw	a0,8(sp)
   12946:	01d0                	addi	a2,sp,196
   12948:	85a6                	mv	a1,s1
   1294a:	c8c6                	sw	a7,80(sp)
   1294c:	c6fe                	sw	t6,76(sp)
   1294e:	dc16                	sw	t0,56(sp)
   12950:	148010ef          	jal	13a98 <__sprint_r>
   12954:	f939                	bnez	a0,128aa <_vfprintf_r+0xa58>
   12956:	463e                	lw	a2,204(sp)
   12958:	48c6                	lw	a7,80(sp)
   1295a:	4fb6                	lw	t6,76(sp)
   1295c:	52e2                	lw	t0,56(sp)
   1295e:	844e                	mv	s0,s3
   12960:	e98ff06f          	j	11ff8 <_vfprintf_r+0x1a6>
   12964:	4522                	lw	a0,8(sp)
   12966:	01d0                	addi	a2,sp,196
   12968:	85a6                	mv	a1,s1
   1296a:	c6c6                	sw	a7,76(sp)
   1296c:	dc7e                	sw	t6,56(sp)
   1296e:	12a010ef          	jal	13a98 <__sprint_r>
   12972:	fd05                	bnez	a0,128aa <_vfprintf_r+0xa58>
   12974:	463e                	lw	a2,204(sp)
   12976:	48b6                	lw	a7,76(sp)
   12978:	5fe2                	lw	t6,56(sp)
   1297a:	844e                	mv	s0,s3
   1297c:	ebcff06f          	j	12038 <_vfprintf_r+0x1e6>
   12980:	686d                	lui	a6,0x1b
   12982:	4741                	li	a4,16
   12984:	47ae                	lw	a5,200(sp)
   12986:	d5480c13          	addi	s8,a6,-684 # 1ad54 <blanks.1>
   1298a:	05575163          	bge	a4,s5,129cc <_vfprintf_r+0xb7a>
   1298e:	4d22                	lw	s10,8(sp)
   12990:	4b41                	li	s6,16
   12992:	4c9d                	li	s9,7
   12994:	a021                	j	1299c <_vfprintf_r+0xb4a>
   12996:	1ac1                	addi	s5,s5,-16
   12998:	035b5a63          	bge	s6,s5,129cc <_vfprintf_r+0xb7a>
   1299c:	0641                	addi	a2,a2,16
   1299e:	0785                	addi	a5,a5,1
   129a0:	01842023          	sw	s8,0(s0)
   129a4:	01642223          	sw	s6,4(s0)
   129a8:	c7b2                	sw	a2,204(sp)
   129aa:	c5be                	sw	a5,200(sp)
   129ac:	0421                	addi	s0,s0,8
   129ae:	fefcd4e3          	bge	s9,a5,12996 <_vfprintf_r+0xb44>
   129b2:	01d0                	addi	a2,sp,196
   129b4:	85a6                	mv	a1,s1
   129b6:	856a                	mv	a0,s10
   129b8:	0e0010ef          	jal	13a98 <__sprint_r>
   129bc:	ee0517e3          	bnez	a0,128aa <_vfprintf_r+0xa58>
   129c0:	1ac1                	addi	s5,s5,-16
   129c2:	463e                	lw	a2,204(sp)
   129c4:	47ae                	lw	a5,200(sp)
   129c6:	844e                	mv	s0,s3
   129c8:	fd5b4ae3          	blt	s6,s5,1299c <_vfprintf_r+0xb4a>
   129cc:	9656                	add	a2,a2,s5
   129ce:	0785                	addi	a5,a5,1
   129d0:	01842023          	sw	s8,0(s0)
   129d4:	01542223          	sw	s5,4(s0)
   129d8:	c7b2                	sw	a2,204(sp)
   129da:	c5be                	sw	a5,200(sp)
   129dc:	471d                	li	a4,7
   129de:	e8f75e63          	bge	a4,a5,1207a <_vfprintf_r+0x228>
   129e2:	4522                	lw	a0,8(sp)
   129e4:	01d0                	addi	a2,sp,196
   129e6:	85a6                	mv	a1,s1
   129e8:	0b0010ef          	jal	13a98 <__sprint_r>
   129ec:	ea051fe3          	bnez	a0,128aa <_vfprintf_r+0xa58>
   129f0:	463e                	lw	a2,204(sp)
   129f2:	e88ff06f          	j	1207a <_vfprintf_r+0x228>
   129f6:	553a                	lw	a0,172(sp)
   129f8:	5ca05e63          	blez	a0,12fd4 <_vfprintf_r+0x1182>
   129fc:	47f2                	lw	a5,28(sp)
   129fe:	5702                	lw	a4,32(sp)
   12a00:	8abe                	mv	s5,a5
   12a02:	22f74163          	blt	a4,a5,12c24 <_vfprintf_r+0xdd2>
   12a06:	01505f63          	blez	s5,12a24 <_vfprintf_r+0xbd2>
   12a0a:	472e                	lw	a4,200(sp)
   12a0c:	9656                	add	a2,a2,s5
   12a0e:	01a42023          	sw	s10,0(s0)
   12a12:	0705                	addi	a4,a4,1
   12a14:	01542223          	sw	s5,4(s0)
   12a18:	c7b2                	sw	a2,204(sp)
   12a1a:	c5ba                	sw	a4,200(sp)
   12a1c:	459d                	li	a1,7
   12a1e:	0421                	addi	s0,s0,8
   12a20:	14e5c5e3          	blt	a1,a4,1336a <_vfprintf_r+0x1518>
   12a24:	fffac713          	not	a4,s5
   12a28:	47f2                	lw	a5,28(sp)
   12a2a:	877d                	srai	a4,a4,0x1f
   12a2c:	00eafab3          	and	s5,s5,a4
   12a30:	41578ab3          	sub	s5,a5,s5
   12a34:	2b504163          	bgtz	s5,12cd6 <_vfprintf_r+0xe84>
   12a38:	47f2                	lw	a5,28(sp)
   12a3a:	400cf713          	andi	a4,s9,1024
   12a3e:	00fd0c33          	add	s8,s10,a5
   12a42:	7a071e63          	bnez	a4,131fe <_vfprintf_r+0x13ac>
   12a46:	5aba                	lw	s5,172(sp)
   12a48:	5782                	lw	a5,32(sp)
   12a4a:	2cfaca63          	blt	s5,a5,12d1e <_vfprintf_r+0xecc>
   12a4e:	001cf713          	andi	a4,s9,1
   12a52:	2c071663          	bnez	a4,12d1e <_vfprintf_r+0xecc>
   12a56:	5702                	lw	a4,32(sp)
   12a58:	00ed07b3          	add	a5,s10,a4
   12a5c:	41570ab3          	sub	s5,a4,s5
   12a60:	41878b33          	sub	s6,a5,s8
   12a64:	016ad363          	bge	s5,s6,12a6a <_vfprintf_r+0xc18>
   12a68:	8b56                	mv	s6,s5
   12a6a:	01605f63          	blez	s6,12a88 <_vfprintf_r+0xc36>
   12a6e:	47ae                	lw	a5,200(sp)
   12a70:	965a                	add	a2,a2,s6
   12a72:	01842023          	sw	s8,0(s0)
   12a76:	0785                	addi	a5,a5,1
   12a78:	01642223          	sw	s6,4(s0)
   12a7c:	c7b2                	sw	a2,204(sp)
   12a7e:	c5be                	sw	a5,200(sp)
   12a80:	471d                	li	a4,7
   12a82:	0421                	addi	s0,s0,8
   12a84:	4cf74de3          	blt	a4,a5,1375e <_vfprintf_r+0x190c>
   12a88:	fffb4793          	not	a5,s6
   12a8c:	87fd                	srai	a5,a5,0x1f
   12a8e:	00fb7b33          	and	s6,s6,a5
   12a92:	416a8ab3          	sub	s5,s5,s6
   12a96:	dd505a63          	blez	s5,1206a <_vfprintf_r+0x218>
   12a9a:	686d                	lui	a6,0x1b
   12a9c:	d4480813          	addi	a6,a6,-700 # 1ad44 <zeroes.0>
   12aa0:	4741                	li	a4,16
   12aa2:	47ae                	lw	a5,200(sp)
   12aa4:	4b41                	li	s6,16
   12aa6:	4c1d                	li	s8,7
   12aa8:	8d42                	mv	s10,a6
   12aaa:	01574663          	blt	a4,s5,12ab6 <_vfprintf_r+0xc64>
   12aae:	ab49                	j	13040 <_vfprintf_r+0x11ee>
   12ab0:	1ac1                	addi	s5,s5,-16
   12ab2:	595b5663          	bge	s6,s5,1303e <_vfprintf_r+0x11ec>
   12ab6:	0641                	addi	a2,a2,16
   12ab8:	0785                	addi	a5,a5,1
   12aba:	01a42023          	sw	s10,0(s0)
   12abe:	01642223          	sw	s6,4(s0)
   12ac2:	c7b2                	sw	a2,204(sp)
   12ac4:	c5be                	sw	a5,200(sp)
   12ac6:	0421                	addi	s0,s0,8
   12ac8:	fefc54e3          	bge	s8,a5,12ab0 <_vfprintf_r+0xc5e>
   12acc:	4522                	lw	a0,8(sp)
   12ace:	01d0                	addi	a2,sp,196
   12ad0:	85a6                	mv	a1,s1
   12ad2:	7c7000ef          	jal	13a98 <__sprint_r>
   12ad6:	dc051ae3          	bnez	a0,128aa <_vfprintf_r+0xa58>
   12ada:	463e                	lw	a2,204(sp)
   12adc:	47ae                	lw	a5,200(sp)
   12ade:	844e                	mv	s0,s3
   12ae0:	bfc1                	j	12ab0 <_vfprintf_r+0xc5e>
   12ae2:	001cf593          	andi	a1,s9,1
   12ae6:	840599e3          	bnez	a1,12338 <_vfprintf_r+0x4e6>
   12aea:	c058                	sw	a4,4(s0)
   12aec:	c7e2                	sw	s8,204(sp)
   12aee:	c5d6                	sw	s5,200(sp)
   12af0:	479d                	li	a5,7
   12af2:	8b57dbe3          	bge	a5,s5,123a8 <_vfprintf_r+0x556>
   12af6:	4522                	lw	a0,8(sp)
   12af8:	01d0                	addi	a2,sp,196
   12afa:	85a6                	mv	a1,s1
   12afc:	79d000ef          	jal	13a98 <__sprint_r>
   12b00:	da0515e3          	bnez	a0,128aa <_vfprintf_r+0xa58>
   12b04:	4c3e                	lw	s8,204(sp)
   12b06:	4aae                	lw	s5,200(sp)
   12b08:	8b4e                	mv	s6,s3
   12b0a:	b879                	j	123a8 <_vfprintf_r+0x556>
   12b0c:	5702                	lw	a4,32(sp)
   12b0e:	4785                	li	a5,1
   12b10:	88e7dce3          	bge	a5,a4,123a8 <_vfprintf_r+0x556>
   12b14:	686d                	lui	a6,0x1b
   12b16:	47c5                	li	a5,17
   12b18:	d4480813          	addi	a6,a6,-700 # 1ad44 <zeroes.0>
   12b1c:	60e7d863          	bge	a5,a4,1312c <_vfprintf_r+0x12da>
   12b20:	ce4a                	sw	s2,28(sp)
   12b22:	47c1                	li	a5,16
   12b24:	4d1d                	li	s10,7
   12b26:	8942                	mv	s2,a6
   12b28:	a021                	j	12b30 <_vfprintf_r+0xcde>
   12b2a:	1441                	addi	s0,s0,-16
   12b2c:	5e87de63          	bge	a5,s0,13128 <_vfprintf_r+0x12d6>
   12b30:	0c41                	addi	s8,s8,16
   12b32:	0a85                	addi	s5,s5,1
   12b34:	012b2023          	sw	s2,0(s6)
   12b38:	00fb2223          	sw	a5,4(s6)
   12b3c:	c7e2                	sw	s8,204(sp)
   12b3e:	c5d6                	sw	s5,200(sp)
   12b40:	0b21                	addi	s6,s6,8
   12b42:	ff5d54e3          	bge	s10,s5,12b2a <_vfprintf_r+0xcd8>
   12b46:	4522                	lw	a0,8(sp)
   12b48:	01d0                	addi	a2,sp,196
   12b4a:	85a6                	mv	a1,s1
   12b4c:	74d000ef          	jal	13a98 <__sprint_r>
   12b50:	d4051de3          	bnez	a0,128aa <_vfprintf_r+0xa58>
   12b54:	4c3e                	lw	s8,204(sp)
   12b56:	4aae                	lw	s5,200(sp)
   12b58:	8b4e                	mv	s6,s3
   12b5a:	47c1                	li	a5,16
   12b5c:	b7f9                	j	12b2a <_vfprintf_r+0xcd8>
   12b5e:	4752                	lw	a4,20(sp)
   12b60:	010ef793          	andi	a5,t4,16
   12b64:	00072b03          	lw	s6,0(a4)
   12b68:	0711                	addi	a4,a4,4
   12b6a:	ca3a                	sw	a4,20(sp)
   12b6c:	ef9d                	bnez	a5,12baa <_vfprintf_r+0xd58>
   12b6e:	040ef793          	andi	a5,t4,64
   12b72:	c79d                	beqz	a5,12ba0 <_vfprintf_r+0xd4e>
   12b74:	0b42                	slli	s6,s6,0x10
   12b76:	010b5b13          	srli	s6,s6,0x10
   12b7a:	4d81                	li	s11,0
   12b7c:	4785                	li	a5,1
   12b7e:	e6eff06f          	j	121ec <_vfprintf_r+0x39a>
   12b82:	4b01                	li	s6,0
   12b84:	19010d13          	addi	s10,sp,400
   12b88:	e1eff06f          	j	121a6 <_vfprintf_r+0x354>
   12b8c:	001cf793          	andi	a5,s9,1
   12b90:	cc078d63          	beqz	a5,1206a <_vfprintf_r+0x218>
   12b94:	b61d                	j	126ba <_vfprintf_r+0x868>
   12b96:	00094883          	lbu	a7,0(s2)
   12b9a:	ca3e                	sw	a5,20(sp)
   12b9c:	be6ff06f          	j	11f82 <_vfprintf_r+0x130>
   12ba0:	200ef793          	andi	a5,t4,512
   12ba4:	c399                	beqz	a5,12baa <_vfprintf_r+0xd58>
   12ba6:	0ffb7b13          	zext.b	s6,s6
   12baa:	4d81                	li	s11,0
   12bac:	4785                	li	a5,1
   12bae:	e3eff06f          	j	121ec <_vfprintf_r+0x39a>
   12bb2:	200cf793          	andi	a5,s9,512
   12bb6:	7e079563          	bnez	a5,133a0 <_vfprintf_r+0x154e>
   12bba:	4d81                	li	s11,0
   12bbc:	e2aff06f          	j	121e6 <_vfprintf_r+0x394>
   12bc0:	200cf793          	andi	a5,s9,512
   12bc4:	7c079663          	bnez	a5,13390 <_vfprintf_r+0x153e>
   12bc8:	41fb5d93          	srai	s11,s6,0x1f
   12bcc:	87ee                	mv	a5,s11
   12bce:	db6ff06f          	j	12184 <_vfprintf_r+0x332>
   12bd2:	57f2                	lw	a5,60(sp)
   12bd4:	00094883          	lbu	a7,0(s2)
   12bd8:	ba078563          	beqz	a5,11f82 <_vfprintf_r+0x130>
   12bdc:	0007c783          	lbu	a5,0(a5)
   12be0:	ba078163          	beqz	a5,11f82 <_vfprintf_r+0x130>
   12be4:	400cec93          	ori	s9,s9,1024
   12be8:	b9aff06f          	j	11f82 <_vfprintf_r+0x130>
   12bec:	010cf793          	andi	a5,s9,16
   12bf0:	4c079063          	bnez	a5,130b0 <_vfprintf_r+0x125e>
   12bf4:	040cf793          	andi	a5,s9,64
   12bf8:	78079563          	bnez	a5,13382 <_vfprintf_r+0x1530>
   12bfc:	200cfe13          	andi	t3,s9,512
   12c00:	4a0e0863          	beqz	t3,130b0 <_vfprintf_r+0x125e>
   12c04:	47d2                	lw	a5,20(sp)
   12c06:	4732                	lw	a4,12(sp)
   12c08:	439c                	lw	a5,0(a5)
   12c0a:	00e78023          	sb	a4,0(a5)
   12c0e:	b425                	j	12636 <_vfprintf_r+0x7e4>
   12c10:	47d2                	lw	a5,20(sp)
   12c12:	4398                	lw	a4,0(a5)
   12c14:	0791                	addi	a5,a5,4
   12c16:	ca3e                	sw	a5,20(sp)
   12c18:	430c                	lw	a1,0(a4)
   12c1a:	4350                	lw	a2,4(a4)
   12c1c:	4714                	lw	a3,8(a4)
   12c1e:	4758                	lw	a4,12(a4)
   12c20:	e52ff06f          	j	12272 <_vfprintf_r+0x420>
   12c24:	8aba                	mv	s5,a4
   12c26:	df5042e3          	bgtz	s5,12a0a <_vfprintf_r+0xbb8>
   12c2a:	bbed                	j	12a24 <_vfprintf_r+0xbd2>
   12c2c:	5afd                	li	s5,-1
   12c2e:	8936                	mv	s2,a3
   12c30:	b54ff06f          	j	11f84 <_vfprintf_r+0x132>
   12c34:	67ed                	lui	a5,0x1b
   12c36:	8d478793          	addi	a5,a5,-1836 # 1a8d4 <__clzsi2+0xea>
   12c3a:	da3e                	sw	a5,52(sp)
   12c3c:	020cf793          	andi	a5,s9,32
   12c40:	26078263          	beqz	a5,12ea4 <_vfprintf_r+0x1052>
   12c44:	47d2                	lw	a5,20(sp)
   12c46:	00778c13          	addi	s8,a5,7
   12c4a:	ff8c7c13          	andi	s8,s8,-8
   12c4e:	000c2b03          	lw	s6,0(s8)
   12c52:	004c2d83          	lw	s11,4(s8)
   12c56:	008c0793          	addi	a5,s8,8
   12c5a:	ca3e                	sw	a5,20(sp)
   12c5c:	001cf793          	andi	a5,s9,1
   12c60:	cf81                	beqz	a5,12c78 <_vfprintf_r+0xe26>
   12c62:	01bb67b3          	or	a5,s6,s11
   12c66:	cb89                	beqz	a5,12c78 <_vfprintf_r+0xe26>
   12c68:	03000793          	li	a5,48
   12c6c:	0af10423          	sb	a5,168(sp)
   12c70:	0b1104a3          	sb	a7,169(sp)
   12c74:	002cec93          	ori	s9,s9,2
   12c78:	bffcfe93          	andi	t4,s9,-1025
   12c7c:	4789                	li	a5,2
   12c7e:	d6eff06f          	j	121ec <_vfprintf_r+0x39a>
   12c82:	8ee6                	mv	t4,s9
   12c84:	b289                	j	125c6 <_vfprintf_r+0x774>
   12c86:	67ed                	lui	a5,0x1b
   12c88:	8c078793          	addi	a5,a5,-1856 # 1a8c0 <__clzsi2+0xd6>
   12c8c:	da3e                	sw	a5,52(sp)
   12c8e:	b77d                	j	12c3c <_vfprintf_r+0xdea>
   12c90:	00194883          	lbu	a7,1(s2)
   12c94:	200cec93          	ori	s9,s9,512
   12c98:	0905                	addi	s2,s2,1
   12c9a:	ae8ff06f          	j	11f82 <_vfprintf_r+0x130>
   12c9e:	00194883          	lbu	a7,1(s2)
   12ca2:	020cec93          	ori	s9,s9,32
   12ca6:	0905                	addi	s2,s2,1
   12ca8:	adaff06f          	j	11f82 <_vfprintf_r+0x130>
   12cac:	4522                	lw	a0,8(sp)
   12cae:	01d0                	addi	a2,sp,196
   12cb0:	85a6                	mv	a1,s1
   12cb2:	5e7000ef          	jal	13a98 <__sprint_r>
   12cb6:	be051ae3          	bnez	a0,128aa <_vfprintf_r+0xa58>
   12cba:	463e                	lw	a2,204(sp)
   12cbc:	844e                	mv	s0,s3
   12cbe:	bc29                	j	126d8 <_vfprintf_r+0x886>
   12cc0:	4799                	li	a5,6
   12cc2:	8b56                	mv	s6,s5
   12cc4:	6b57ed63          	bltu	a5,s5,1337e <_vfprintf_r+0x152c>
   12cc8:	67ed                	lui	a5,0x1b
   12cca:	8dda                	mv	s11,s6
   12ccc:	ca62                	sw	s8,20(sp)
   12cce:	8e878d13          	addi	s10,a5,-1816 # 1a8e8 <__clzsi2+0xfe>
   12cd2:	b00ff06f          	j	11fd2 <_vfprintf_r+0x180>
   12cd6:	686d                	lui	a6,0x1b
   12cd8:	45c1                	li	a1,16
   12cda:	472e                	lw	a4,200(sp)
   12cdc:	d4480813          	addi	a6,a6,-700 # 1ad44 <zeroes.0>
   12ce0:	4755db63          	bge	a1,s5,13156 <_vfprintf_r+0x1304>
   12ce4:	87a2                	mv	a5,s0
   12ce6:	4c41                	li	s8,16
   12ce8:	4b1d                	li	s6,7
   12cea:	8442                	mv	s0,a6
   12cec:	a021                	j	12cf4 <_vfprintf_r+0xea2>
   12cee:	1ac1                	addi	s5,s5,-16
   12cf0:	475c5163          	bge	s8,s5,13152 <_vfprintf_r+0x1300>
   12cf4:	0641                	addi	a2,a2,16
   12cf6:	0705                	addi	a4,a4,1
   12cf8:	c380                	sw	s0,0(a5)
   12cfa:	0187a223          	sw	s8,4(a5)
   12cfe:	c7b2                	sw	a2,204(sp)
   12d00:	c5ba                	sw	a4,200(sp)
   12d02:	07a1                	addi	a5,a5,8
   12d04:	feeb55e3          	bge	s6,a4,12cee <_vfprintf_r+0xe9c>
   12d08:	4522                	lw	a0,8(sp)
   12d0a:	01d0                	addi	a2,sp,196
   12d0c:	85a6                	mv	a1,s1
   12d0e:	58b000ef          	jal	13a98 <__sprint_r>
   12d12:	b8051ce3          	bnez	a0,128aa <_vfprintf_r+0xa58>
   12d16:	463e                	lw	a2,204(sp)
   12d18:	472e                	lw	a4,200(sp)
   12d1a:	87ce                	mv	a5,s3
   12d1c:	bfc9                	j	12cee <_vfprintf_r+0xe9c>
   12d1e:	5742                	lw	a4,48(sp)
   12d20:	57b2                	lw	a5,44(sp)
   12d22:	459d                	li	a1,7
   12d24:	c018                	sw	a4,0(s0)
   12d26:	472e                	lw	a4,200(sp)
   12d28:	963e                	add	a2,a2,a5
   12d2a:	c05c                	sw	a5,4(s0)
   12d2c:	0705                	addi	a4,a4,1
   12d2e:	c7b2                	sw	a2,204(sp)
   12d30:	c5ba                	sw	a4,200(sp)
   12d32:	0421                	addi	s0,s0,8
   12d34:	d2e5d1e3          	bge	a1,a4,12a56 <_vfprintf_r+0xc04>
   12d38:	4522                	lw	a0,8(sp)
   12d3a:	01d0                	addi	a2,sp,196
   12d3c:	85a6                	mv	a1,s1
   12d3e:	55b000ef          	jal	13a98 <__sprint_r>
   12d42:	b60514e3          	bnez	a0,128aa <_vfprintf_r+0xa58>
   12d46:	5aba                	lw	s5,172(sp)
   12d48:	463e                	lw	a2,204(sp)
   12d4a:	844e                	mv	s0,s3
   12d4c:	b329                	j	12a56 <_vfprintf_r+0xc04>
   12d4e:	07800793          	li	a5,120
   12d52:	03000713          	li	a4,48
   12d56:	0ae10423          	sb	a4,168(sp)
   12d5a:	0af104a3          	sb	a5,169(sp)
   12d5e:	06300713          	li	a4,99
   12d62:	c802                	sw	zero,16(sp)
   12d64:	002cec93          	ori	s9,s9,2
   12d68:	12c10d13          	addi	s10,sp,300
   12d6c:	d5575c63          	bge	a4,s5,122c4 <_vfprintf_r+0x472>
   12d70:	4522                	lw	a0,8(sp)
   12d72:	001a8593          	addi	a1,s5,1
   12d76:	c846                	sw	a7,16(sp)
   12d78:	b33fe0ef          	jal	118aa <_malloc_r>
   12d7c:	48c2                	lw	a7,16(sp)
   12d7e:	8d2a                	mv	s10,a0
   12d80:	460502e3          	beqz	a0,139e4 <_vfprintf_r+0x1b92>
   12d84:	c82a                	sw	a0,16(sp)
   12d86:	d3eff06f          	j	122c4 <_vfprintf_r+0x472>
   12d8a:	4522                	lw	a0,8(sp)
   12d8c:	09010b13          	addi	s6,sp,144
   12d90:	1178                	addi	a4,sp,172
   12d92:	0bc10813          	addi	a6,sp,188
   12d96:	191c                	addi	a5,sp,176
   12d98:	86d6                	mv	a3,s5
   12d9a:	4609                	li	a2,2
   12d9c:	85da                	mv	a1,s6
   12d9e:	d446                	sw	a7,40(sp)
   12da0:	c97e                	sw	t6,144(sp)
   12da2:	d27e                	sw	t6,36(sp)
   12da4:	cb7a                	sw	t5,148(sp)
   12da6:	d07a                	sw	t5,32(sp)
   12da8:	cd76                	sw	t4,152(sp)
   12daa:	ce76                	sw	t4,28(sp)
   12dac:	cf62                	sw	s8,156(sp)
   12dae:	0f3010ef          	jal	146a0 <_ldtoa_r>
   12db2:	001cf713          	andi	a4,s9,1
   12db6:	4ef2                	lw	t4,28(sp)
   12db8:	5f02                	lw	t5,32(sp)
   12dba:	5f92                	lw	t6,36(sp)
   12dbc:	58a2                	lw	a7,40(sp)
   12dbe:	8d2a                	mv	s10,a0
   12dc0:	62071163          	bnez	a4,133e2 <_vfprintf_r+0x1590>
   12dc4:	57ba                	lw	a5,172(sp)
   12dc6:	ce3e                	sw	a5,28(sp)
   12dc8:	57fa                	lw	a5,188(sp)
   12dca:	8f89                	sub	a5,a5,a0
   12dcc:	d03e                	sw	a5,32(sp)
   12dce:	47f2                	lw	a5,28(sp)
   12dd0:	5775                	li	a4,-3
   12dd2:	00e7c463          	blt	a5,a4,12dda <_vfprintf_r+0xf88>
   12dd6:	0efadbe3          	bge	s5,a5,136cc <_vfprintf_r+0x187a>
   12dda:	47f2                	lw	a5,28(sp)
   12ddc:	18f9                	addi	a7,a7,-2
   12dde:	fff78713          	addi	a4,a5,-1
   12de2:	d73a                	sw	a4,172(sp)
   12de4:	0ff8f693          	zext.b	a3,a7
   12de8:	4601                	li	a2,0
   12dea:	0ad10a23          	sb	a3,180(sp)
   12dee:	02b00693          	li	a3,43
   12df2:	00075763          	bgez	a4,12e00 <_vfprintf_r+0xfae>
   12df6:	47f2                	lw	a5,28(sp)
   12df8:	4705                	li	a4,1
   12dfa:	02d00693          	li	a3,45
   12dfe:	8f1d                	sub	a4,a4,a5
   12e00:	0ad10aa3          	sb	a3,181(sp)
   12e04:	46a5                	li	a3,9
   12e06:	2ae6d1e3          	bge	a3,a4,138a8 <_vfprintf_r+0x1a56>
   12e0a:	0c310813          	addi	a6,sp,195
   12e0e:	85c2                	mv	a1,a6
   12e10:	4529                	li	a0,10
   12e12:	06300f13          	li	t5,99
   12e16:	02a767b3          	rem	a5,a4,a0
   12e1a:	862e                	mv	a2,a1
   12e1c:	86ba                	mv	a3,a4
   12e1e:	15fd                	addi	a1,a1,-1
   12e20:	03078793          	addi	a5,a5,48
   12e24:	fef60fa3          	sb	a5,-1(a2)
   12e28:	02a74733          	div	a4,a4,a0
   12e2c:	fedf45e3          	blt	t5,a3,12e16 <_vfprintf_r+0xfc4>
   12e30:	03070713          	addi	a4,a4,48
   12e34:	ffe60693          	addi	a3,a2,-2
   12e38:	fee58fa3          	sb	a4,-1(a1)
   12e3c:	3706fce3          	bgeu	a3,a6,139b4 <_vfprintf_r+0x1b62>
   12e40:	0b610713          	addi	a4,sp,182
   12e44:	0006c783          	lbu	a5,0(a3)
   12e48:	0685                	addi	a3,a3,1
   12e4a:	0705                	addi	a4,a4,1
   12e4c:	fef70fa3          	sb	a5,-1(a4)
   12e50:	ff069ae3          	bne	a3,a6,12e44 <_vfprintf_r+0xff2>
   12e54:	0b1c                	addi	a5,sp,400
   12e56:	40c78733          	sub	a4,a5,a2
   12e5a:	f3770793          	addi	a5,a4,-201
   12e5e:	c0be                	sw	a5,64(sp)
   12e60:	5782                	lw	a5,32(sp)
   12e62:	4686                	lw	a3,64(sp)
   12e64:	4705                	li	a4,1
   12e66:	00d78b33          	add	s6,a5,a3
   12e6a:	26f758e3          	bge	a4,a5,138da <_vfprintf_r+0x1a88>
   12e6e:	57b2                	lw	a5,44(sp)
   12e70:	9b3e                	add	s6,s6,a5
   12e72:	fffb4693          	not	a3,s6
   12e76:	bffcfe13          	andi	t3,s9,-1025
   12e7a:	86fd                	srai	a3,a3,0x1f
   12e7c:	100e6793          	ori	a5,t3,256
   12e80:	c6be                	sw	a5,76(sp)
   12e82:	00db7db3          	and	s11,s6,a3
   12e86:	d402                	sw	zero,40(sp)
   12e88:	d202                	sw	zero,36(sp)
   12e8a:	ce02                	sw	zero,28(sp)
   12e8c:	57e2                	lw	a5,56(sp)
   12e8e:	020786e3          	beqz	a5,136ba <_vfprintf_r+0x1868>
   12e92:	02d00713          	li	a4,45
   12e96:	4cb6                	lw	s9,76(sp)
   12e98:	0ae103a3          	sb	a4,167(sp)
   12e9c:	4a81                	li	s5,0
   12e9e:	0d85                	addi	s11,s11,1
   12ea0:	93cff06f          	j	11fdc <_vfprintf_r+0x18a>
   12ea4:	4752                	lw	a4,20(sp)
   12ea6:	010cf793          	andi	a5,s9,16
   12eaa:	00072b03          	lw	s6,0(a4)
   12eae:	0711                	addi	a4,a4,4
   12eb0:	ca3a                	sw	a4,20(sp)
   12eb2:	e7a9                	bnez	a5,12efc <_vfprintf_r+0x10aa>
   12eb4:	040cf793          	andi	a5,s9,64
   12eb8:	cf95                	beqz	a5,12ef4 <_vfprintf_r+0x10a2>
   12eba:	0b42                	slli	s6,s6,0x10
   12ebc:	010b5b13          	srli	s6,s6,0x10
   12ec0:	4d81                	li	s11,0
   12ec2:	bb69                	j	12c5c <_vfprintf_r+0xe0a>
   12ec4:	4522                	lw	a0,8(sp)
   12ec6:	01d0                	addi	a2,sp,196
   12ec8:	85a6                	mv	a1,s1
   12eca:	3cf000ef          	jal	13a98 <__sprint_r>
   12ece:	9c051ee3          	bnez	a0,128aa <_vfprintf_r+0xa58>
   12ed2:	4c3e                	lw	s8,204(sp)
   12ed4:	4aae                	lw	s5,200(sp)
   12ed6:	8b4e                	mv	s6,s3
   12ed8:	c6eff06f          	j	12346 <_vfprintf_r+0x4f4>
   12edc:	4522                	lw	a0,8(sp)
   12ede:	01d0                	addi	a2,sp,196
   12ee0:	85a6                	mv	a1,s1
   12ee2:	3b7000ef          	jal	13a98 <__sprint_r>
   12ee6:	9c0512e3          	bnez	a0,128aa <_vfprintf_r+0xa58>
   12eea:	4c3e                	lw	s8,204(sp)
   12eec:	4aae                	lw	s5,200(sp)
   12eee:	8b4e                	mv	s6,s3
   12ef0:	c72ff06f          	j	12362 <_vfprintf_r+0x510>
   12ef4:	200cf793          	andi	a5,s9,512
   12ef8:	4a079963          	bnez	a5,133aa <_vfprintf_r+0x1558>
   12efc:	4d81                	li	s11,0
   12efe:	bbb9                	j	12c5c <_vfprintf_r+0xe0a>
   12f00:	ccccd837          	lui	a6,0xccccd
   12f04:	ccccdcb7          	lui	s9,0xccccd
   12f08:	5772                	lw	a4,60(sp)
   12f0a:	400eff13          	andi	t5,t4,1024
   12f0e:	4601                	li	a2,0
   12f10:	0b0c                	addi	a1,sp,400
   12f12:	4e15                	li	t3,5
   12f14:	ccd80813          	addi	a6,a6,-819 # cccccccd <__BSS_END__+0xcccb0041>
   12f18:	cccc8c93          	addi	s9,s9,-820 # cccccccc <__BSS_END__+0xcccb0040>
   12f1c:	0ff00c13          	li	s8,255
   12f20:	a081                	j	12f60 <_vfprintf_r+0x110e>
   12f22:	016d37b3          	sltu	a5,s10,s6
   12f26:	97ea                	add	a5,a5,s10
   12f28:	03c7f7b3          	remu	a5,a5,t3
   12f2c:	40fb07b3          	sub	a5,s6,a5
   12f30:	00fb35b3          	sltu	a1,s6,a5
   12f34:	40bd85b3          	sub	a1,s11,a1
   12f38:	03978333          	mul	t1,a5,s9
   12f3c:	030585b3          	mul	a1,a1,a6
   12f40:	0307b533          	mulhu	a0,a5,a6
   12f44:	959a                	add	a1,a1,t1
   12f46:	030787b3          	mul	a5,a5,a6
   12f4a:	95aa                	add	a1,a1,a0
   12f4c:	01f59513          	slli	a0,a1,0x1f
   12f50:	8185                	srli	a1,a1,0x1
   12f52:	8385                	srli	a5,a5,0x1
   12f54:	8fc9                	or	a5,a5,a0
   12f56:	7c0d8763          	beqz	s11,13724 <_vfprintf_r+0x18d2>
   12f5a:	8dae                	mv	s11,a1
   12f5c:	8b3e                	mv	s6,a5
   12f5e:	85b6                	mv	a1,a3
   12f60:	01bb0d33          	add	s10,s6,s11
   12f64:	016d37b3          	sltu	a5,s10,s6
   12f68:	97ea                	add	a5,a5,s10
   12f6a:	03c7f7b3          	remu	a5,a5,t3
   12f6e:	fff58693          	addi	a3,a1,-1
   12f72:	0605                	addi	a2,a2,1
   12f74:	40fb07b3          	sub	a5,s6,a5
   12f78:	00fb3533          	sltu	a0,s6,a5
   12f7c:	40ad8533          	sub	a0,s11,a0
   12f80:	0307b333          	mulhu	t1,a5,a6
   12f84:	03050533          	mul	a0,a0,a6
   12f88:	030787b3          	mul	a5,a5,a6
   12f8c:	951a                	add	a0,a0,t1
   12f8e:	057e                	slli	a0,a0,0x1f
   12f90:	8385                	srli	a5,a5,0x1
   12f92:	8fc9                	or	a5,a5,a0
   12f94:	00279513          	slli	a0,a5,0x2
   12f98:	97aa                	add	a5,a5,a0
   12f9a:	0786                	slli	a5,a5,0x1
   12f9c:	40fb07b3          	sub	a5,s6,a5
   12fa0:	03078793          	addi	a5,a5,48
   12fa4:	fef58fa3          	sb	a5,-1(a1)
   12fa8:	f60f0de3          	beqz	t5,12f22 <_vfprintf_r+0x10d0>
   12fac:	00074783          	lbu	a5,0(a4)
   12fb0:	f6f619e3          	bne	a2,a5,12f22 <_vfprintf_r+0x10d0>
   12fb4:	f78607e3          	beq	a2,s8,12f22 <_vfprintf_r+0x10d0>
   12fb8:	1c0d9563          	bnez	s11,13182 <_vfprintf_r+0x1330>
   12fbc:	47a5                	li	a5,9
   12fbe:	1d67e263          	bltu	a5,s6,13182 <_vfprintf_r+0x1330>
   12fc2:	8d36                	mv	s10,a3
   12fc4:	0b1c                	addi	a5,sp,400
   12fc6:	d032                	sw	a2,32(sp)
   12fc8:	de3a                	sw	a4,60(sp)
   12fca:	41a78b33          	sub	s6,a5,s10
   12fce:	8cf6                	mv	s9,t4
   12fd0:	9d6ff06f          	j	121a6 <_vfprintf_r+0x354>
   12fd4:	472e                	lw	a4,200(sp)
   12fd6:	65ed                	lui	a1,0x1b
   12fd8:	8f058593          	addi	a1,a1,-1808 # 1a8f0 <__clzsi2+0x106>
   12fdc:	c00c                	sw	a1,0(s0)
   12fde:	0605                	addi	a2,a2,1
   12fe0:	4585                	li	a1,1
   12fe2:	0705                	addi	a4,a4,1
   12fe4:	c04c                	sw	a1,4(s0)
   12fe6:	c7b2                	sw	a2,204(sp)
   12fe8:	c5ba                	sw	a4,200(sp)
   12fea:	459d                	li	a1,7
   12fec:	0421                	addi	s0,s0,8
   12fee:	36e5c063          	blt	a1,a4,1334e <_vfprintf_r+0x14fc>
   12ff2:	e569                	bnez	a0,130bc <_vfprintf_r+0x126a>
   12ff4:	5782                	lw	a5,32(sp)
   12ff6:	001cf713          	andi	a4,s9,1
   12ffa:	8f5d                	or	a4,a4,a5
   12ffc:	e319                	bnez	a4,13002 <_vfprintf_r+0x11b0>
   12ffe:	86cff06f          	j	1206a <_vfprintf_r+0x218>
   13002:	5742                	lw	a4,48(sp)
   13004:	57b2                	lw	a5,44(sp)
   13006:	459d                	li	a1,7
   13008:	c018                	sw	a4,0(s0)
   1300a:	472e                	lw	a4,200(sp)
   1300c:	963e                	add	a2,a2,a5
   1300e:	c05c                	sw	a5,4(s0)
   13010:	0705                	addi	a4,a4,1
   13012:	c7b2                	sw	a2,204(sp)
   13014:	c5ba                	sw	a4,200(sp)
   13016:	3ae5cb63          	blt	a1,a4,133cc <_vfprintf_r+0x157a>
   1301a:	0421                	addi	s0,s0,8
   1301c:	a87d                	j	130da <_vfprintf_r+0x1288>
   1301e:	4522                	lw	a0,8(sp)
   13020:	fc1fd0ef          	jal	10fe0 <__sinit>
   13024:	e6dfe06f          	j	11e90 <_vfprintf_r+0x3e>
   13028:	4522                	lw	a0,8(sp)
   1302a:	01d0                	addi	a2,sp,196
   1302c:	85a6                	mv	a1,s1
   1302e:	26b000ef          	jal	13a98 <__sprint_r>
   13032:	86051ce3          	bnez	a0,128aa <_vfprintf_r+0xa58>
   13036:	463e                	lw	a2,204(sp)
   13038:	844e                	mv	s0,s3
   1303a:	e78ff06f          	j	126b2 <_vfprintf_r+0x860>
   1303e:	886a                	mv	a6,s10
   13040:	01042023          	sw	a6,0(s0)
   13044:	01542223          	sw	s5,4(s0)
   13048:	9656                	add	a2,a2,s5
   1304a:	0785                	addi	a5,a5,1
   1304c:	c7b2                	sw	a2,204(sp)
   1304e:	c5be                	sw	a5,200(sp)
   13050:	471d                	li	a4,7
   13052:	00f74463          	blt	a4,a5,1305a <_vfprintf_r+0x1208>
   13056:	812ff06f          	j	12068 <_vfprintf_r+0x216>
   1305a:	b70ff06f          	j	123ca <_vfprintf_r+0x578>
   1305e:	47ce                	lw	a5,208(sp)
   13060:	010c                	addi	a1,sp,128
   13062:	0908                	addi	a0,sp,144
   13064:	c93e                	sw	a5,144(sp)
   13066:	47de                	lw	a5,212(sp)
   13068:	c102                	sw	zero,128(sp)
   1306a:	c302                	sw	zero,132(sp)
   1306c:	cb3e                	sw	a5,148(sp)
   1306e:	47ee                	lw	a5,216(sp)
   13070:	c502                	sw	zero,136(sp)
   13072:	c702                	sw	zero,140(sp)
   13074:	cd3e                	sw	a5,152(sp)
   13076:	47fe                	lw	a5,220(sp)
   13078:	cf3e                	sw	a5,156(sp)
   1307a:	4d8050ef          	jal	18552 <__letf2>
   1307e:	48c2                	lw	a7,16(sp)
   13080:	6a054a63          	bltz	a0,13734 <_vfprintf_r+0x18e2>
   13084:	0a714703          	lbu	a4,167(sp)
   13088:	04700793          	li	a5,71
   1308c:	2d17db63          	bge	a5,a7,13362 <_vfprintf_r+0x1510>
   13090:	67ed                	lui	a5,0x1b
   13092:	8b478d13          	addi	s10,a5,-1868 # 1a8b4 <__clzsi2+0xca>
   13096:	c802                	sw	zero,16(sp)
   13098:	d402                	sw	zero,40(sp)
   1309a:	d202                	sw	zero,36(sp)
   1309c:	ce02                	sw	zero,28(sp)
   1309e:	f7fcfc93          	andi	s9,s9,-129
   130a2:	4d8d                	li	s11,3
   130a4:	4b0d                	li	s6,3
   130a6:	4a81                	li	s5,0
   130a8:	90071b63          	bnez	a4,121be <_vfprintf_r+0x36c>
   130ac:	f31fe06f          	j	11fdc <_vfprintf_r+0x18a>
   130b0:	47d2                	lw	a5,20(sp)
   130b2:	4732                	lw	a4,12(sp)
   130b4:	439c                	lw	a5,0(a5)
   130b6:	c398                	sw	a4,0(a5)
   130b8:	d7eff06f          	j	12636 <_vfprintf_r+0x7e4>
   130bc:	5742                	lw	a4,48(sp)
   130be:	57b2                	lw	a5,44(sp)
   130c0:	459d                	li	a1,7
   130c2:	c018                	sw	a4,0(s0)
   130c4:	472e                	lw	a4,200(sp)
   130c6:	963e                	add	a2,a2,a5
   130c8:	c05c                	sw	a5,4(s0)
   130ca:	0705                	addi	a4,a4,1
   130cc:	c7b2                	sw	a2,204(sp)
   130ce:	c5ba                	sw	a4,200(sp)
   130d0:	0421                	addi	s0,s0,8
   130d2:	2ee5cd63          	blt	a1,a4,133cc <_vfprintf_r+0x157a>
   130d6:	74054a63          	bltz	a0,1382a <_vfprintf_r+0x19d8>
   130da:	5782                	lw	a5,32(sp)
   130dc:	0705                	addi	a4,a4,1
   130de:	01a42023          	sw	s10,0(s0)
   130e2:	963e                	add	a2,a2,a5
   130e4:	c05c                	sw	a5,4(s0)
   130e6:	c7b2                	sw	a2,204(sp)
   130e8:	c5ba                	sw	a4,200(sp)
   130ea:	479d                	li	a5,7
   130ec:	00e7c463          	blt	a5,a4,130f4 <_vfprintf_r+0x12a2>
   130f0:	f79fe06f          	j	12068 <_vfprintf_r+0x216>
   130f4:	ad6ff06f          	j	123ca <_vfprintf_r+0x578>
   130f8:	856a                	mv	a0,s10
   130fa:	dc46                	sw	a7,56(sp)
   130fc:	b82fe0ef          	jal	1147e <strlen>
   13100:	0a714703          	lbu	a4,167(sp)
   13104:	fff54693          	not	a3,a0
   13108:	86fd                	srai	a3,a3,0x1f
   1310a:	ca62                	sw	s8,20(sp)
   1310c:	c802                	sw	zero,16(sp)
   1310e:	d402                	sw	zero,40(sp)
   13110:	d202                	sw	zero,36(sp)
   13112:	ce02                	sw	zero,28(sp)
   13114:	58e2                	lw	a7,56(sp)
   13116:	8b2a                	mv	s6,a0
   13118:	00d57db3          	and	s11,a0,a3
   1311c:	4a81                	li	s5,0
   1311e:	c319                	beqz	a4,13124 <_vfprintf_r+0x12d2>
   13120:	89eff06f          	j	121be <_vfprintf_r+0x36c>
   13124:	eb9fe06f          	j	11fdc <_vfprintf_r+0x18a>
   13128:	884a                	mv	a6,s2
   1312a:	4972                	lw	s2,28(sp)
   1312c:	9c22                	add	s8,s8,s0
   1312e:	0a85                	addi	s5,s5,1
   13130:	010b2023          	sw	a6,0(s6)
   13134:	a64ff06f          	j	12398 <_vfprintf_r+0x546>
   13138:	47fe                	lw	a5,220(sp)
   1313a:	2607cc63          	bltz	a5,133b2 <_vfprintf_r+0x1560>
   1313e:	0a714703          	lbu	a4,167(sp)
   13142:	04700793          	li	a5,71
   13146:	6317ca63          	blt	a5,a7,1377a <_vfprintf_r+0x1928>
   1314a:	67ed                	lui	a5,0x1b
   1314c:	8b878d13          	addi	s10,a5,-1864 # 1a8b8 <__clzsi2+0xce>
   13150:	b799                	j	13096 <_vfprintf_r+0x1244>
   13152:	8822                	mv	a6,s0
   13154:	843e                	mv	s0,a5
   13156:	9656                	add	a2,a2,s5
   13158:	0705                	addi	a4,a4,1
   1315a:	01042023          	sw	a6,0(s0)
   1315e:	01542223          	sw	s5,4(s0)
   13162:	c7b2                	sw	a2,204(sp)
   13164:	c5ba                	sw	a4,200(sp)
   13166:	459d                	li	a1,7
   13168:	0421                	addi	s0,s0,8
   1316a:	8ce5d7e3          	bge	a1,a4,12a38 <_vfprintf_r+0xbe6>
   1316e:	4522                	lw	a0,8(sp)
   13170:	01d0                	addi	a2,sp,196
   13172:	85a6                	mv	a1,s1
   13174:	125000ef          	jal	13a98 <__sprint_r>
   13178:	f2051963          	bnez	a0,128aa <_vfprintf_r+0xa58>
   1317c:	463e                	lw	a2,204(sp)
   1317e:	844e                	mv	s0,s3
   13180:	b865                	j	12a38 <_vfprintf_r+0xbe6>
   13182:	47a6                	lw	a5,72(sp)
   13184:	4596                	lw	a1,68(sp)
   13186:	dc42                	sw	a6,56(sp)
   13188:	8e9d                	sub	a3,a3,a5
   1318a:	863e                	mv	a2,a5
   1318c:	8536                	mv	a0,a3
   1318e:	d47a                	sw	t5,40(sp)
   13190:	d276                	sw	t4,36(sp)
   13192:	d046                	sw	a7,32(sp)
   13194:	ce3a                	sw	a4,28(sp)
   13196:	c836                	sw	a3,16(sp)
   13198:	0a4010ef          	jal	1423c <strncpy>
   1319c:	016d37b3          	sltu	a5,s10,s6
   131a0:	4615                	li	a2,5
   131a2:	97ea                	add	a5,a5,s10
   131a4:	02c7f7b3          	remu	a5,a5,a2
   131a8:	4772                	lw	a4,28(sp)
   131aa:	ccccd337          	lui	t1,0xccccd
   131ae:	ccccd537          	lui	a0,0xccccd
   131b2:	00174583          	lbu	a1,1(a4)
   131b6:	ccd30313          	addi	t1,t1,-819 # cccccccd <__BSS_END__+0xcccb0041>
   131ba:	ccc50513          	addi	a0,a0,-820 # cccccccc <__BSS_END__+0xcccb0040>
   131be:	00b035b3          	snez	a1,a1
   131c2:	972e                	add	a4,a4,a1
   131c4:	46c2                	lw	a3,16(sp)
   131c6:	5882                	lw	a7,32(sp)
   131c8:	5e92                	lw	t4,36(sp)
   131ca:	5f22                	lw	t5,40(sp)
   131cc:	5862                	lw	a6,56(sp)
   131ce:	4601                	li	a2,0
   131d0:	4e15                	li	t3,5
   131d2:	40fb07b3          	sub	a5,s6,a5
   131d6:	00fb35b3          	sltu	a1,s6,a5
   131da:	40bd85b3          	sub	a1,s11,a1
   131de:	02a78533          	mul	a0,a5,a0
   131e2:	026585b3          	mul	a1,a1,t1
   131e6:	0267bfb3          	mulhu	t6,a5,t1
   131ea:	95aa                	add	a1,a1,a0
   131ec:	02678533          	mul	a0,a5,t1
   131f0:	95fe                	add	a1,a1,t6
   131f2:	01f59793          	slli	a5,a1,0x1f
   131f6:	8185                	srli	a1,a1,0x1
   131f8:	8105                	srli	a0,a0,0x1
   131fa:	8fc9                	or	a5,a5,a0
   131fc:	bbb9                	j	12f5a <_vfprintf_r+0x1108>
   131fe:	5782                	lw	a5,32(sp)
   13200:	5b12                	lw	s6,36(sp)
   13202:	68ed                	lui	a7,0x1b
   13204:	97ea                	add	a5,a5,s10
   13206:	dc4a                	sw	s2,56(sp)
   13208:	c6e6                	sw	s9,76(sp)
   1320a:	c8de                	sw	s7,80(sp)
   1320c:	d26e                	sw	s11,36(sp)
   1320e:	5da2                	lw	s11,40(sp)
   13210:	d46a                	sw	s10,40(sp)
   13212:	5cf2                	lw	s9,60(sp)
   13214:	8d62                	mv	s10,s8
   13216:	4922                	lw	s2,8(sp)
   13218:	4c26                	lw	s8,72(sp)
   1321a:	481d                	li	a6,7
   1321c:	4741                	li	a4,16
   1321e:	d4488a93          	addi	s5,a7,-700 # 1ad44 <zeroes.0>
   13222:	85a2                	mv	a1,s0
   13224:	8bbe                	mv	s7,a5
   13226:	07605363          	blez	s6,1328c <_vfprintf_r+0x143a>
   1322a:	0fb05663          	blez	s11,13316 <_vfprintf_r+0x14c4>
   1322e:	1dfd                	addi	s11,s11,-1
   13230:	4796                	lw	a5,68(sp)
   13232:	9662                	add	a2,a2,s8
   13234:	0185a223          	sw	s8,4(a1)
   13238:	c19c                	sw	a5,0(a1)
   1323a:	47ae                	lw	a5,200(sp)
   1323c:	c7b2                	sw	a2,204(sp)
   1323e:	05a1                	addi	a1,a1,8
   13240:	0785                	addi	a5,a5,1
   13242:	c5be                	sw	a5,200(sp)
   13244:	0cf84c63          	blt	a6,a5,1331c <_vfprintf_r+0x14ca>
   13248:	000cc683          	lbu	a3,0(s9)
   1324c:	41ab8433          	sub	s0,s7,s10
   13250:	0086d363          	bge	a3,s0,13256 <_vfprintf_r+0x1404>
   13254:	8436                	mv	s0,a3
   13256:	00805f63          	blez	s0,13274 <_vfprintf_r+0x1422>
   1325a:	46ae                	lw	a3,200(sp)
   1325c:	9622                	add	a2,a2,s0
   1325e:	01a5a023          	sw	s10,0(a1)
   13262:	0685                	addi	a3,a3,1
   13264:	c1c0                	sw	s0,4(a1)
   13266:	c7b2                	sw	a2,204(sp)
   13268:	c5b6                	sw	a3,200(sp)
   1326a:	0cd84563          	blt	a6,a3,13334 <_vfprintf_r+0x14e2>
   1326e:	000cc683          	lbu	a3,0(s9)
   13272:	05a1                	addi	a1,a1,8
   13274:	fff44513          	not	a0,s0
   13278:	857d                	srai	a0,a0,0x1f
   1327a:	00a477b3          	and	a5,s0,a0
   1327e:	40f68433          	sub	s0,a3,a5
   13282:	02804763          	bgtz	s0,132b0 <_vfprintf_r+0x145e>
   13286:	9d36                	add	s10,s10,a3
   13288:	fb6041e3          	bgtz	s6,1322a <_vfprintf_r+0x13d8>
   1328c:	fbb041e3          	bgtz	s11,1322e <_vfprintf_r+0x13dc>
   13290:	5782                	lw	a5,32(sp)
   13292:	8c6a                	mv	s8,s10
   13294:	5d22                	lw	s10,40(sp)
   13296:	de66                	sw	s9,60(sp)
   13298:	5962                	lw	s2,56(sp)
   1329a:	00fd0733          	add	a4,s10,a5
   1329e:	4cb6                	lw	s9,76(sp)
   132a0:	4bc6                	lw	s7,80(sp)
   132a2:	5d92                	lw	s11,36(sp)
   132a4:	842e                	mv	s0,a1
   132a6:	fb877063          	bgeu	a4,s8,12a46 <_vfprintf_r+0xbf4>
   132aa:	8c3a                	mv	s8,a4
   132ac:	f9aff06f          	j	12a46 <_vfprintf_r+0xbf4>
   132b0:	6f6d                	lui	t5,0x1b
   132b2:	46ae                	lw	a3,200(sp)
   132b4:	d44f0f13          	addi	t5,t5,-700 # 1ad44 <zeroes.0>
   132b8:	04875163          	bge	a4,s0,132fa <_vfprintf_r+0x14a8>
   132bc:	ce56                	sw	s5,28(sp)
   132be:	a021                	j	132c6 <_vfprintf_r+0x1474>
   132c0:	1441                	addi	s0,s0,-16
   132c2:	02875b63          	bge	a4,s0,132f8 <_vfprintf_r+0x14a6>
   132c6:	0641                	addi	a2,a2,16
   132c8:	0685                	addi	a3,a3,1
   132ca:	0155a023          	sw	s5,0(a1)
   132ce:	c1d8                	sw	a4,4(a1)
   132d0:	c7b2                	sw	a2,204(sp)
   132d2:	c5b6                	sw	a3,200(sp)
   132d4:	05a1                	addi	a1,a1,8
   132d6:	fed855e3          	bge	a6,a3,132c0 <_vfprintf_r+0x146e>
   132da:	01d0                	addi	a2,sp,196
   132dc:	85a6                	mv	a1,s1
   132de:	854a                	mv	a0,s2
   132e0:	7b8000ef          	jal	13a98 <__sprint_r>
   132e4:	dc051363          	bnez	a0,128aa <_vfprintf_r+0xa58>
   132e8:	4741                	li	a4,16
   132ea:	1441                	addi	s0,s0,-16
   132ec:	463e                	lw	a2,204(sp)
   132ee:	46ae                	lw	a3,200(sp)
   132f0:	85ce                	mv	a1,s3
   132f2:	481d                	li	a6,7
   132f4:	fc8749e3          	blt	a4,s0,132c6 <_vfprintf_r+0x1474>
   132f8:	4f72                	lw	t5,28(sp)
   132fa:	9622                	add	a2,a2,s0
   132fc:	0685                	addi	a3,a3,1
   132fe:	01e5a023          	sw	t5,0(a1)
   13302:	c1c0                	sw	s0,4(a1)
   13304:	c7b2                	sw	a2,204(sp)
   13306:	c5b6                	sw	a3,200(sp)
   13308:	40d84063          	blt	a6,a3,13708 <_vfprintf_r+0x18b6>
   1330c:	000cc683          	lbu	a3,0(s9)
   13310:	05a1                	addi	a1,a1,8
   13312:	9d36                	add	s10,s10,a3
   13314:	bf95                	j	13288 <_vfprintf_r+0x1436>
   13316:	1cfd                	addi	s9,s9,-1
   13318:	1b7d                	addi	s6,s6,-1
   1331a:	bf19                	j	13230 <_vfprintf_r+0x13de>
   1331c:	01d0                	addi	a2,sp,196
   1331e:	85a6                	mv	a1,s1
   13320:	854a                	mv	a0,s2
   13322:	776000ef          	jal	13a98 <__sprint_r>
   13326:	d8051263          	bnez	a0,128aa <_vfprintf_r+0xa58>
   1332a:	463e                	lw	a2,204(sp)
   1332c:	85ce                	mv	a1,s3
   1332e:	4741                	li	a4,16
   13330:	481d                	li	a6,7
   13332:	bf19                	j	13248 <_vfprintf_r+0x13f6>
   13334:	01d0                	addi	a2,sp,196
   13336:	85a6                	mv	a1,s1
   13338:	854a                	mv	a0,s2
   1333a:	2fb9                	jal	13a98 <__sprint_r>
   1333c:	d6051763          	bnez	a0,128aa <_vfprintf_r+0xa58>
   13340:	000cc683          	lbu	a3,0(s9)
   13344:	463e                	lw	a2,204(sp)
   13346:	85ce                	mv	a1,s3
   13348:	4741                	li	a4,16
   1334a:	481d                	li	a6,7
   1334c:	b725                	j	13274 <_vfprintf_r+0x1422>
   1334e:	4522                	lw	a0,8(sp)
   13350:	01d0                	addi	a2,sp,196
   13352:	85a6                	mv	a1,s1
   13354:	2791                	jal	13a98 <__sprint_r>
   13356:	d4051a63          	bnez	a0,128aa <_vfprintf_r+0xa58>
   1335a:	553a                	lw	a0,172(sp)
   1335c:	463e                	lw	a2,204(sp)
   1335e:	844e                	mv	s0,s3
   13360:	b949                	j	12ff2 <_vfprintf_r+0x11a0>
   13362:	67ed                	lui	a5,0x1b
   13364:	8b078d13          	addi	s10,a5,-1872 # 1a8b0 <__clzsi2+0xc6>
   13368:	b33d                	j	13096 <_vfprintf_r+0x1244>
   1336a:	4522                	lw	a0,8(sp)
   1336c:	01d0                	addi	a2,sp,196
   1336e:	85a6                	mv	a1,s1
   13370:	2725                	jal	13a98 <__sprint_r>
   13372:	d2051c63          	bnez	a0,128aa <_vfprintf_r+0xa58>
   13376:	463e                	lw	a2,204(sp)
   13378:	844e                	mv	s0,s3
   1337a:	eaaff06f          	j	12a24 <_vfprintf_r+0xbd2>
   1337e:	4b19                	li	s6,6
   13380:	b2a1                	j	12cc8 <_vfprintf_r+0xe76>
   13382:	47d2                	lw	a5,20(sp)
   13384:	4732                	lw	a4,12(sp)
   13386:	439c                	lw	a5,0(a5)
   13388:	00e79023          	sh	a4,0(a5)
   1338c:	aaaff06f          	j	12636 <_vfprintf_r+0x7e4>
   13390:	0b62                	slli	s6,s6,0x18
   13392:	418b5b13          	srai	s6,s6,0x18
   13396:	41fb5d93          	srai	s11,s6,0x1f
   1339a:	87ee                	mv	a5,s11
   1339c:	de9fe06f          	j	12184 <_vfprintf_r+0x332>
   133a0:	0ffb7b13          	zext.b	s6,s6
   133a4:	4d81                	li	s11,0
   133a6:	e41fe06f          	j	121e6 <_vfprintf_r+0x394>
   133aa:	0ffb7b13          	zext.b	s6,s6
   133ae:	4d81                	li	s11,0
   133b0:	b075                	j	12c5c <_vfprintf_r+0xe0a>
   133b2:	02d00793          	li	a5,45
   133b6:	0af103a3          	sb	a5,167(sp)
   133ba:	02d00713          	li	a4,45
   133be:	b351                	j	13142 <_vfprintf_r+0x12f0>
   133c0:	4522                	lw	a0,8(sp)
   133c2:	01d0                	addi	a2,sp,196
   133c4:	85a6                	mv	a1,s1
   133c6:	2dc9                	jal	13a98 <__sprint_r>
   133c8:	ce7fe06f          	j	120ae <_vfprintf_r+0x25c>
   133cc:	4522                	lw	a0,8(sp)
   133ce:	01d0                	addi	a2,sp,196
   133d0:	85a6                	mv	a1,s1
   133d2:	25d9                	jal	13a98 <__sprint_r>
   133d4:	cc051b63          	bnez	a0,128aa <_vfprintf_r+0xa58>
   133d8:	553a                	lw	a0,172(sp)
   133da:	463e                	lw	a2,204(sp)
   133dc:	472e                	lw	a4,200(sp)
   133de:	844e                	mv	s0,s3
   133e0:	b9dd                	j	130d6 <_vfprintf_r+0x1284>
   133e2:	01550733          	add	a4,a0,s5
   133e6:	04700613          	li	a2,71
   133ea:	010c                	addi	a1,sp,128
   133ec:	855a                	mv	a0,s6
   133ee:	d23a                	sw	a4,36(sp)
   133f0:	d032                	sw	a2,32(sp)
   133f2:	ce46                	sw	a7,28(sp)
   133f4:	c97e                	sw	t6,144(sp)
   133f6:	cb7a                	sw	t5,148(sp)
   133f8:	cd76                	sw	t4,152(sp)
   133fa:	cf62                	sw	s8,156(sp)
   133fc:	c102                	sw	zero,128(sp)
   133fe:	c302                	sw	zero,132(sp)
   13400:	c502                	sw	zero,136(sp)
   13402:	c702                	sw	zero,140(sp)
   13404:	777040ef          	jal	1837a <__eqtf2>
   13408:	48f2                	lw	a7,28(sp)
   1340a:	5602                	lw	a2,32(sp)
   1340c:	5712                	lw	a4,36(sp)
   1340e:	36050a63          	beqz	a0,13782 <_vfprintf_r+0x1930>
   13412:	57fa                	lw	a5,188(sp)
   13414:	00e7fc63          	bgeu	a5,a4,1342c <_vfprintf_r+0x15da>
   13418:	03000593          	li	a1,48
   1341c:	00178693          	addi	a3,a5,1
   13420:	df36                	sw	a3,188(sp)
   13422:	00b78023          	sb	a1,0(a5)
   13426:	57fa                	lw	a5,188(sp)
   13428:	fee7eae3          	bltu	a5,a4,1341c <_vfprintf_r+0x15ca>
   1342c:	573a                	lw	a4,172(sp)
   1342e:	ce3a                	sw	a4,28(sp)
   13430:	41a787b3          	sub	a5,a5,s10
   13434:	04700713          	li	a4,71
   13438:	d03e                	sw	a5,32(sp)
   1343a:	98e60ae3          	beq	a2,a4,12dce <_vfprintf_r+0xf7c>
   1343e:	04600713          	li	a4,70
   13442:	38e60863          	beq	a2,a4,137d2 <_vfprintf_r+0x1980>
   13446:	47f2                	lw	a5,28(sp)
   13448:	fff78713          	addi	a4,a5,-1
   1344c:	ba59                	j	12de2 <_vfprintf_r+0xf90>
   1344e:	001a8693          	addi	a3,s5,1
   13452:	4609                	li	a2,2
   13454:	4522                	lw	a0,8(sp)
   13456:	09010b13          	addi	s6,sp,144
   1345a:	1178                	addi	a4,sp,172
   1345c:	85da                	mv	a1,s6
   1345e:	0bc10813          	addi	a6,sp,188
   13462:	191c                	addi	a5,sp,176
   13464:	c8c6                	sw	a7,80(sp)
   13466:	d436                	sw	a3,40(sp)
   13468:	c97e                	sw	t6,144(sp)
   1346a:	d27e                	sw	t6,36(sp)
   1346c:	cb7a                	sw	t5,148(sp)
   1346e:	d07a                	sw	t5,32(sp)
   13470:	cd76                	sw	t4,152(sp)
   13472:	ce76                	sw	t4,28(sp)
   13474:	cf62                	sw	s8,156(sp)
   13476:	22a010ef          	jal	146a0 <_ldtoa_r>
   1347a:	48c6                	lw	a7,80(sp)
   1347c:	56a2                	lw	a3,40(sp)
   1347e:	04600593          	li	a1,70
   13482:	fdf8f613          	andi	a2,a7,-33
   13486:	4ef2                	lw	t4,28(sp)
   13488:	5f02                	lw	t5,32(sp)
   1348a:	5f92                	lw	t6,36(sp)
   1348c:	8d2a                	mv	s10,a0
   1348e:	00d50733          	add	a4,a0,a3
   13492:	54b61563          	bne	a2,a1,139dc <_vfprintf_r+0x1b8a>
   13496:	000d4503          	lbu	a0,0(s10)
   1349a:	03000593          	li	a1,48
   1349e:	2eb50663          	beq	a0,a1,1378a <_vfprintf_r+0x1938>
   134a2:	56ba                	lw	a3,172(sp)
   134a4:	010c                	addi	a1,sp,128
   134a6:	9736                	add	a4,a4,a3
   134a8:	b791                	j	133ec <_vfprintf_r+0x159a>
   134aa:	09010b13          	addi	s6,sp,144
   134ae:	010c                	addi	a1,sp,128
   134b0:	1170                	addi	a2,sp,172
   134b2:	855a                	mv	a0,s6
   134b4:	c0c6                	sw	a7,64(sp)
   134b6:	c17e                	sw	t6,128(sp)
   134b8:	c37a                	sw	t5,132(sp)
   134ba:	c576                	sw	t4,136(sp)
   134bc:	ce2e                	sw	a1,28(sp)
   134be:	c762                	sw	s8,140(sp)
   134c0:	084010ef          	jal	14544 <frexpl>
   134c4:	474a                	lw	a4,144(sp)
   134c6:	45f2                	lw	a1,28(sp)
   134c8:	1890                	addi	a2,sp,112
   134ca:	c13a                	sw	a4,128(sp)
   134cc:	475a                	lw	a4,148(sp)
   134ce:	855a                	mv	a0,s6
   134d0:	d882                	sw	zero,112(sp)
   134d2:	c33a                	sw	a4,132(sp)
   134d4:	476a                	lw	a4,152(sp)
   134d6:	da82                	sw	zero,116(sp)
   134d8:	dc82                	sw	zero,120(sp)
   134da:	c53a                	sw	a4,136(sp)
   134dc:	477a                	lw	a4,156(sp)
   134de:	c73a                	sw	a4,140(sp)
   134e0:	3ffc0737          	lui	a4,0x3ffc0
   134e4:	deba                	sw	a4,124(sp)
   134e6:	158050ef          	jal	1863e <__multf3>
   134ea:	45f2                	lw	a1,28(sp)
   134ec:	4f4a                	lw	t5,144(sp)
   134ee:	4eda                	lw	t4,148(sp)
   134f0:	486a                	lw	a6,152(sp)
   134f2:	855a                	mv	a0,s6
   134f4:	d42e                	sw	a1,40(sp)
   134f6:	d27a                	sw	t5,36(sp)
   134f8:	d076                	sw	t4,32(sp)
   134fa:	ce42                	sw	a6,28(sp)
   134fc:	c102                	sw	zero,128(sp)
   134fe:	c302                	sw	zero,132(sp)
   13500:	c502                	sw	zero,136(sp)
   13502:	c702                	sw	zero,140(sp)
   13504:	677040ef          	jal	1837a <__eqtf2>
   13508:	4dfa                	lw	s11,156(sp)
   1350a:	4872                	lw	a6,28(sp)
   1350c:	5e82                	lw	t4,32(sp)
   1350e:	5f12                	lw	t5,36(sp)
   13510:	55a2                	lw	a1,40(sp)
   13512:	4886                	lw	a7,64(sp)
   13514:	e119                	bnez	a0,1351a <_vfprintf_r+0x16c8>
   13516:	4705                	li	a4,1
   13518:	d73a                	sw	a4,172(sp)
   1351a:	06100713          	li	a4,97
   1351e:	44e88d63          	beq	a7,a4,13978 <_vfprintf_r+0x1b26>
   13522:	676d                	lui	a4,0x1b
   13524:	8d470793          	addi	a5,a4,-1836 # 1a8d4 <__clzsi2+0xea>
   13528:	ce3e                	sw	a5,28(sp)
   1352a:	d04a                	sw	s2,32(sp)
   1352c:	d466                	sw	s9,40(sp)
   1352e:	c0de                	sw	s7,64(sp)
   13530:	c6a2                	sw	s0,76(sp)
   13532:	896a                	mv	s2,s10
   13534:	c8a6                	sw	s1,80(sp)
   13536:	caea                	sw	s10,84(sp)
   13538:	44f2                	lw	s1,28(sp)
   1353a:	1afd                	addi	s5,s5,-1
   1353c:	d246                	sw	a7,36(sp)
   1353e:	8bfa                	mv	s7,t5
   13540:	8c76                	mv	s8,t4
   13542:	8cc2                	mv	s9,a6
   13544:	8d6e                	mv	s10,s11
   13546:	842e                	mv	s0,a1
   13548:	a015                	j	1356c <_vfprintf_r+0x171a>
   1354a:	85a2                	mv	a1,s0
   1354c:	855a                	mv	a0,s6
   1354e:	c95e                	sw	s7,144(sp)
   13550:	cb62                	sw	s8,148(sp)
   13552:	cd66                	sw	s9,152(sp)
   13554:	cf6a                	sw	s10,156(sp)
   13556:	c102                	sw	zero,128(sp)
   13558:	c302                	sw	zero,132(sp)
   1355a:	c502                	sw	zero,136(sp)
   1355c:	c702                	sw	zero,140(sp)
   1355e:	fffa8d93          	addi	s11,s5,-1
   13562:	619040ef          	jal	1837a <__eqtf2>
   13566:	3c050c63          	beqz	a0,1393e <_vfprintf_r+0x1aec>
   1356a:	8aee                	mv	s5,s11
   1356c:	400307b7          	lui	a5,0x40030
   13570:	1890                	addi	a2,sp,112
   13572:	85a2                	mv	a1,s0
   13574:	855a                	mv	a0,s6
   13576:	debe                	sw	a5,124(sp)
   13578:	c15e                	sw	s7,128(sp)
   1357a:	c362                	sw	s8,132(sp)
   1357c:	c566                	sw	s9,136(sp)
   1357e:	c76a                	sw	s10,140(sp)
   13580:	d882                	sw	zero,112(sp)
   13582:	da82                	sw	zero,116(sp)
   13584:	dc82                	sw	zero,120(sp)
   13586:	0b8050ef          	jal	1863e <__multf3>
   1358a:	855a                	mv	a0,s6
   1358c:	6dd060ef          	jal	1a468 <__fixtfsi>
   13590:	85aa                	mv	a1,a0
   13592:	8daa                	mv	s11,a0
   13594:	855a                	mv	a0,s6
   13596:	4d4a                	lw	s10,144(sp)
   13598:	4cda                	lw	s9,148(sp)
   1359a:	4c6a                	lw	s8,152(sp)
   1359c:	4bfa                	lw	s7,156(sp)
   1359e:	7ef060ef          	jal	1a58c <__floatsitf>
   135a2:	46ca                	lw	a3,144(sp)
   135a4:	1090                	addi	a2,sp,96
   135a6:	188c                	addi	a1,sp,112
   135a8:	d0b6                	sw	a3,96(sp)
   135aa:	46da                	lw	a3,148(sp)
   135ac:	8522                	mv	a0,s0
   135ae:	d8ea                	sw	s10,112(sp)
   135b0:	d2b6                	sw	a3,100(sp)
   135b2:	46ea                	lw	a3,152(sp)
   135b4:	dae6                	sw	s9,116(sp)
   135b6:	dce2                	sw	s8,120(sp)
   135b8:	d4b6                	sw	a3,104(sp)
   135ba:	46fa                	lw	a3,156(sp)
   135bc:	dede                	sw	s7,124(sp)
   135be:	d6b6                	sw	a3,108(sp)
   135c0:	51b050ef          	jal	192da <__subtf3>
   135c4:	01b486b3          	add	a3,s1,s11
   135c8:	0006c603          	lbu	a2,0(a3)
   135cc:	8fca                	mv	t6,s2
   135ce:	0905                	addi	s2,s2,1
   135d0:	4b8a                	lw	s7,128(sp)
   135d2:	4c1a                	lw	s8,132(sp)
   135d4:	4caa                	lw	s9,136(sp)
   135d6:	4d3a                	lw	s10,140(sp)
   135d8:	57fd                	li	a5,-1
   135da:	fec90fa3          	sb	a2,-1(s2)
   135de:	f6fa96e3          	bne	s5,a5,1354a <_vfprintf_r+0x16f8>
   135e2:	5892                	lw	a7,36(sp)
   135e4:	8f5e                	mv	t5,s7
   135e6:	8ee2                	mv	t4,s8
   135e8:	8866                	mv	a6,s9
   135ea:	85a2                	mv	a1,s0
   135ec:	ccee                	sw	s11,88(sp)
   135ee:	3ffe0ab7          	lui	s5,0x3ffe0
   135f2:	8dea                	mv	s11,s10
   135f4:	855a                	mv	a0,s6
   135f6:	cec6                	sw	a7,92(sp)
   135f8:	d27e                	sw	t6,36(sp)
   135fa:	44c6                	lw	s1,80(sp)
   135fc:	4b86                	lw	s7,64(sp)
   135fe:	5ca2                	lw	s9,40(sp)
   13600:	4436                	lw	s0,76(sp)
   13602:	c97a                	sw	t5,144(sp)
   13604:	c8fa                	sw	t5,80(sp)
   13606:	cb76                	sw	t4,148(sp)
   13608:	c6f6                	sw	t4,76(sp)
   1360a:	cd42                	sw	a6,152(sp)
   1360c:	c0c2                	sw	a6,64(sp)
   1360e:	cf6e                	sw	s11,156(sp)
   13610:	c102                	sw	zero,128(sp)
   13612:	c302                	sw	zero,132(sp)
   13614:	c502                	sw	zero,136(sp)
   13616:	c756                	sw	s5,140(sp)
   13618:	d42e                	sw	a1,40(sp)
   1361a:	64d040ef          	jal	18466 <__getf2>
   1361e:	8c4a                	mv	s8,s2
   13620:	4d56                	lw	s10,84(sp)
   13622:	5902                	lw	s2,32(sp)
   13624:	5f92                	lw	t6,36(sp)
   13626:	48f6                	lw	a7,92(sp)
   13628:	00a04e63          	bgtz	a0,13644 <_vfprintf_r+0x17f2>
   1362c:	55a2                	lw	a1,40(sp)
   1362e:	855a                	mv	a0,s6
   13630:	d046                	sw	a7,32(sp)
   13632:	549040ef          	jal	1837a <__eqtf2>
   13636:	5882                	lw	a7,32(sp)
   13638:	e529                	bnez	a0,13682 <_vfprintf_r+0x1830>
   1363a:	47e6                	lw	a5,88(sp)
   1363c:	5f92                	lw	t6,36(sp)
   1363e:	0017f693          	andi	a3,a5,1
   13642:	c2a1                	beqz	a3,13682 <_vfprintf_r+0x1830>
   13644:	47f2                	lw	a5,28(sp)
   13646:	df7e                	sw	t6,188(sp)
   13648:	fffc4603          	lbu	a2,-1(s8)
   1364c:	00f7c583          	lbu	a1,15(a5) # 4003000f <__BSS_END__+0x40013383>
   13650:	86e2                	mv	a3,s8
   13652:	00b61e63          	bne	a2,a1,1366e <_vfprintf_r+0x181c>
   13656:	03000513          	li	a0,48
   1365a:	fea68fa3          	sb	a0,-1(a3)
   1365e:	56fa                	lw	a3,188(sp)
   13660:	fff68793          	addi	a5,a3,-1
   13664:	df3e                	sw	a5,188(sp)
   13666:	fff6c603          	lbu	a2,-1(a3)
   1366a:	fec588e3          	beq	a1,a2,1365a <_vfprintf_r+0x1808>
   1366e:	00160593          	addi	a1,a2,1
   13672:	03900513          	li	a0,57
   13676:	0ff5f593          	zext.b	a1,a1
   1367a:	02a60c63          	beq	a2,a0,136b2 <_vfprintf_r+0x1860>
   1367e:	feb68fa3          	sb	a1,-1(a3)
   13682:	57ba                	lw	a5,172(sp)
   13684:	41ac0733          	sub	a4,s8,s10
   13688:	d03a                	sw	a4,32(sp)
   1368a:	fff78713          	addi	a4,a5,-1
   1368e:	ce3e                	sw	a5,28(sp)
   13690:	06100613          	li	a2,97
   13694:	d73a                	sw	a4,172(sp)
   13696:	07000693          	li	a3,112
   1369a:	00c88663          	beq	a7,a2,136a6 <_vfprintf_r+0x1854>
   1369e:	05000693          	li	a3,80
   136a2:	04100893          	li	a7,65
   136a6:	4605                	li	a2,1
   136a8:	f42ff06f          	j	12dea <_vfprintf_r+0xf98>
   136ac:	86d6                	mv	a3,s5
   136ae:	460d                	li	a2,3
   136b0:	b355                	j	13454 <_vfprintf_r+0x1602>
   136b2:	47f2                	lw	a5,28(sp)
   136b4:	00a7c583          	lbu	a1,10(a5)
   136b8:	b7d9                	j	1367e <_vfprintf_r+0x182c>
   136ba:	0a714703          	lbu	a4,167(sp)
   136be:	4cb6                	lw	s9,76(sp)
   136c0:	4a81                	li	s5,0
   136c2:	c319                	beqz	a4,136c8 <_vfprintf_r+0x1876>
   136c4:	afbfe06f          	j	121be <_vfprintf_r+0x36c>
   136c8:	915fe06f          	j	11fdc <_vfprintf_r+0x18a>
   136cc:	5782                	lw	a5,32(sp)
   136ce:	4772                	lw	a4,28(sp)
   136d0:	12f74763          	blt	a4,a5,137fe <_vfprintf_r+0x19ac>
   136d4:	47f2                	lw	a5,28(sp)
   136d6:	001cf713          	andi	a4,s9,1
   136da:	8b3e                	mv	s6,a5
   136dc:	c701                	beqz	a4,136e4 <_vfprintf_r+0x1892>
   136de:	5732                	lw	a4,44(sp)
   136e0:	00e78b33          	add	s6,a5,a4
   136e4:	400cfe13          	andi	t3,s9,1024
   136e8:	000e0563          	beqz	t3,136f2 <_vfprintf_r+0x18a0>
   136ec:	47f2                	lw	a5,28(sp)
   136ee:	1ef04c63          	bgtz	a5,138e6 <_vfprintf_r+0x1a94>
   136f2:	fffb4693          	not	a3,s6
   136f6:	86fd                	srai	a3,a3,0x1f
   136f8:	00db7db3          	and	s11,s6,a3
   136fc:	06700893          	li	a7,103
   13700:	d402                	sw	zero,40(sp)
   13702:	d202                	sw	zero,36(sp)
   13704:	f88ff06f          	j	12e8c <_vfprintf_r+0x103a>
   13708:	01d0                	addi	a2,sp,196
   1370a:	85a6                	mv	a1,s1
   1370c:	854a                	mv	a0,s2
   1370e:	2669                	jal	13a98 <__sprint_r>
   13710:	98051d63          	bnez	a0,128aa <_vfprintf_r+0xa58>
   13714:	000cc683          	lbu	a3,0(s9)
   13718:	463e                	lw	a2,204(sp)
   1371a:	85ce                	mv	a1,s3
   1371c:	4741                	li	a4,16
   1371e:	481d                	li	a6,7
   13720:	9d36                	add	s10,s10,a3
   13722:	b69d                	j	13288 <_vfprintf_r+0x1436>
   13724:	4525                	li	a0,9
   13726:	83656ae3          	bltu	a0,s6,12f5a <_vfprintf_r+0x1108>
   1372a:	b861                	j	12fc2 <_vfprintf_r+0x1170>
   1372c:	57fd                	li	a5,-1
   1372e:	c63e                	sw	a5,12(sp)
   13730:	9b1fe06f          	j	120e0 <_vfprintf_r+0x28e>
   13734:	02d00793          	li	a5,45
   13738:	0af103a3          	sb	a5,167(sp)
   1373c:	02d00713          	li	a4,45
   13740:	b2a1                	j	13088 <_vfprintf_r+0x1236>
   13742:	0a714703          	lbu	a4,167(sp)
   13746:	ca62                	sw	s8,20(sp)
   13748:	d402                	sw	zero,40(sp)
   1374a:	d202                	sw	zero,36(sp)
   1374c:	ce02                	sw	zero,28(sp)
   1374e:	8dd6                	mv	s11,s5
   13750:	8b56                	mv	s6,s5
   13752:	4a81                	li	s5,0
   13754:	c319                	beqz	a4,1375a <_vfprintf_r+0x1908>
   13756:	a69fe06f          	j	121be <_vfprintf_r+0x36c>
   1375a:	883fe06f          	j	11fdc <_vfprintf_r+0x18a>
   1375e:	4522                	lw	a0,8(sp)
   13760:	01d0                	addi	a2,sp,196
   13762:	85a6                	mv	a1,s1
   13764:	2e15                	jal	13a98 <__sprint_r>
   13766:	94051263          	bnez	a0,128aa <_vfprintf_r+0xa58>
   1376a:	5aba                	lw	s5,172(sp)
   1376c:	5782                	lw	a5,32(sp)
   1376e:	463e                	lw	a2,204(sp)
   13770:	844e                	mv	s0,s3
   13772:	41578ab3          	sub	s5,a5,s5
   13776:	b12ff06f          	j	12a88 <_vfprintf_r+0xc36>
   1377a:	67ed                	lui	a5,0x1b
   1377c:	8bc78d13          	addi	s10,a5,-1860 # 1a8bc <__clzsi2+0xd2>
   13780:	ba19                	j	13096 <_vfprintf_r+0x1244>
   13782:	57ba                	lw	a5,172(sp)
   13784:	ce3e                	sw	a5,28(sp)
   13786:	87ba                	mv	a5,a4
   13788:	b165                	j	13430 <_vfprintf_r+0x15de>
   1378a:	010c                	addi	a1,sp,128
   1378c:	855a                	mv	a0,s6
   1378e:	ceba                	sw	a4,92(sp)
   13790:	ccb2                	sw	a2,88(sp)
   13792:	cac6                	sw	a7,84(sp)
   13794:	c8b6                	sw	a3,80(sp)
   13796:	c97e                	sw	t6,144(sp)
   13798:	d47e                	sw	t6,40(sp)
   1379a:	cb7a                	sw	t5,148(sp)
   1379c:	d27a                	sw	t5,36(sp)
   1379e:	cd76                	sw	t4,152(sp)
   137a0:	d076                	sw	t4,32(sp)
   137a2:	ce2e                	sw	a1,28(sp)
   137a4:	cf62                	sw	s8,156(sp)
   137a6:	c102                	sw	zero,128(sp)
   137a8:	c302                	sw	zero,132(sp)
   137aa:	c502                	sw	zero,136(sp)
   137ac:	c702                	sw	zero,140(sp)
   137ae:	3cd040ef          	jal	1837a <__eqtf2>
   137b2:	45f2                	lw	a1,28(sp)
   137b4:	5e82                	lw	t4,32(sp)
   137b6:	5f12                	lw	t5,36(sp)
   137b8:	5fa2                	lw	t6,40(sp)
   137ba:	46c6                	lw	a3,80(sp)
   137bc:	48d6                	lw	a7,84(sp)
   137be:	4666                	lw	a2,88(sp)
   137c0:	4776                	lw	a4,92(sp)
   137c2:	1c051063          	bnez	a0,13982 <_vfprintf_r+0x1b30>
   137c6:	57ba                	lw	a5,172(sp)
   137c8:	973e                	add	a4,a4,a5
   137ca:	ce3e                	sw	a5,28(sp)
   137cc:	41a707b3          	sub	a5,a4,s10
   137d0:	d03e                	sw	a5,32(sp)
   137d2:	47f2                	lw	a5,28(sp)
   137d4:	001cf713          	andi	a4,s9,1
   137d8:	01576733          	or	a4,a4,s5
   137dc:	1af05963          	blez	a5,1398e <_vfprintf_r+0x1b3c>
   137e0:	18071463          	bnez	a4,13968 <_vfprintf_r+0x1b16>
   137e4:	4b72                	lw	s6,28(sp)
   137e6:	06600893          	li	a7,102
   137ea:	400cfe13          	andi	t3,s9,1024
   137ee:	0e0e1e63          	bnez	t3,138ea <_vfprintf_r+0x1a98>
   137f2:	fffb4693          	not	a3,s6
   137f6:	86fd                	srai	a3,a3,0x1f
   137f8:	00db7db3          	and	s11,s6,a3
   137fc:	b711                	j	13700 <_vfprintf_r+0x18ae>
   137fe:	5782                	lw	a5,32(sp)
   13800:	5732                	lw	a4,44(sp)
   13802:	06700893          	li	a7,103
   13806:	00e78b33          	add	s6,a5,a4
   1380a:	47f2                	lw	a5,28(sp)
   1380c:	fcf04fe3          	bgtz	a5,137ea <_vfprintf_r+0x1998>
   13810:	40fb0f33          	sub	t5,s6,a5
   13814:	001f0b13          	addi	s6,t5,1
   13818:	fffb4693          	not	a3,s6
   1381c:	86fd                	srai	a3,a3,0x1f
   1381e:	00db7db3          	and	s11,s6,a3
   13822:	bdf9                	j	13700 <_vfprintf_r+0x18ae>
   13824:	8ee6                	mv	t4,s9
   13826:	cf5fe06f          	j	1251a <_vfprintf_r+0x6c8>
   1382a:	686d                	lui	a6,0x1b
   1382c:	55c1                	li	a1,-16
   1382e:	40a00ab3          	neg	s5,a0
   13832:	d4480813          	addi	a6,a6,-700 # 1ad44 <zeroes.0>
   13836:	04b55263          	bge	a0,a1,1387a <_vfprintf_r+0x1a28>
   1383a:	ce4a                	sw	s2,28(sp)
   1383c:	4b41                	li	s6,16
   1383e:	4c1d                	li	s8,7
   13840:	8942                	mv	s2,a6
   13842:	a021                	j	1384a <_vfprintf_r+0x19f8>
   13844:	1ac1                	addi	s5,s5,-16 # 3ffdfff0 <__BSS_END__+0x3ffc3364>
   13846:	035b5863          	bge	s6,s5,13876 <_vfprintf_r+0x1a24>
   1384a:	0641                	addi	a2,a2,16
   1384c:	0705                	addi	a4,a4,1
   1384e:	01242023          	sw	s2,0(s0)
   13852:	01642223          	sw	s6,4(s0)
   13856:	c7b2                	sw	a2,204(sp)
   13858:	c5ba                	sw	a4,200(sp)
   1385a:	0421                	addi	s0,s0,8
   1385c:	feec54e3          	bge	s8,a4,13844 <_vfprintf_r+0x19f2>
   13860:	4522                	lw	a0,8(sp)
   13862:	01d0                	addi	a2,sp,196
   13864:	85a6                	mv	a1,s1
   13866:	2c0d                	jal	13a98 <__sprint_r>
   13868:	c119                	beqz	a0,1386e <_vfprintf_r+0x1a1c>
   1386a:	840ff06f          	j	128aa <_vfprintf_r+0xa58>
   1386e:	463e                	lw	a2,204(sp)
   13870:	472e                	lw	a4,200(sp)
   13872:	844e                	mv	s0,s3
   13874:	bfc1                	j	13844 <_vfprintf_r+0x19f2>
   13876:	884a                	mv	a6,s2
   13878:	4972                	lw	s2,28(sp)
   1387a:	9656                	add	a2,a2,s5
   1387c:	0705                	addi	a4,a4,1
   1387e:	01042023          	sw	a6,0(s0)
   13882:	01542223          	sw	s5,4(s0)
   13886:	c7b2                	sw	a2,204(sp)
   13888:	c5ba                	sw	a4,200(sp)
   1388a:	459d                	li	a1,7
   1388c:	f8e5d763          	bge	a1,a4,1301a <_vfprintf_r+0x11c8>
   13890:	4522                	lw	a0,8(sp)
   13892:	01d0                	addi	a2,sp,196
   13894:	85a6                	mv	a1,s1
   13896:	2409                	jal	13a98 <__sprint_r>
   13898:	c119                	beqz	a0,1389e <_vfprintf_r+0x1a4c>
   1389a:	810ff06f          	j	128aa <_vfprintf_r+0xa58>
   1389e:	463e                	lw	a2,204(sp)
   138a0:	472e                	lw	a4,200(sp)
   138a2:	844e                	mv	s0,s3
   138a4:	837ff06f          	j	130da <_vfprintf_r+0x1288>
   138a8:	0b610693          	addi	a3,sp,182
   138ac:	e619                	bnez	a2,138ba <_vfprintf_r+0x1a68>
   138ae:	03000693          	li	a3,48
   138b2:	0ad10b23          	sb	a3,182(sp)
   138b6:	0b710693          	addi	a3,sp,183
   138ba:	0b1c                	addi	a5,sp,400
   138bc:	40f68633          	sub	a2,a3,a5
   138c0:	03070713          	addi	a4,a4,48
   138c4:	0dd60793          	addi	a5,a2,221
   138c8:	00e68023          	sb	a4,0(a3)
   138cc:	c0be                	sw	a5,64(sp)
   138ce:	d92ff06f          	j	12e60 <_vfprintf_r+0x100e>
   138d2:	c802                	sw	zero,16(sp)
   138d4:	4a99                	li	s5,6
   138d6:	9effe06f          	j	122c4 <_vfprintf_r+0x472>
   138da:	001cf713          	andi	a4,s9,1
   138de:	d8070a63          	beqz	a4,12e72 <_vfprintf_r+0x1020>
   138e2:	d8cff06f          	j	12e6e <_vfprintf_r+0x101c>
   138e6:	06700893          	li	a7,103
   138ea:	5672                	lw	a2,60(sp)
   138ec:	0ff00693          	li	a3,255
   138f0:	00064703          	lbu	a4,0(a2)
   138f4:	0ed70163          	beq	a4,a3,139d6 <_vfprintf_r+0x1b84>
   138f8:	47f2                	lw	a5,28(sp)
   138fa:	4501                	li	a0,0
   138fc:	4581                	li	a1,0
   138fe:	00f75a63          	bge	a4,a5,13912 <_vfprintf_r+0x1ac0>
   13902:	8f99                	sub	a5,a5,a4
   13904:	00164703          	lbu	a4,1(a2)
   13908:	c71d                	beqz	a4,13936 <_vfprintf_r+0x1ae4>
   1390a:	0585                	addi	a1,a1,1
   1390c:	0605                	addi	a2,a2,1
   1390e:	fed718e3          	bne	a4,a3,138fe <_vfprintf_r+0x1aac>
   13912:	de32                	sw	a2,60(sp)
   13914:	d22e                	sw	a1,36(sp)
   13916:	d42a                	sw	a0,40(sp)
   13918:	ce3e                	sw	a5,28(sp)
   1391a:	57a2                	lw	a5,40(sp)
   1391c:	5712                	lw	a4,36(sp)
   1391e:	973e                	add	a4,a4,a5
   13920:	47a6                	lw	a5,72(sp)
   13922:	02f70733          	mul	a4,a4,a5
   13926:	9b3a                	add	s6,s6,a4
   13928:	fffb4693          	not	a3,s6
   1392c:	86fd                	srai	a3,a3,0x1f
   1392e:	00db7db3          	and	s11,s6,a3
   13932:	d5aff06f          	j	12e8c <_vfprintf_r+0x103a>
   13936:	00064703          	lbu	a4,0(a2)
   1393a:	0505                	addi	a0,a0,1
   1393c:	bfc9                	j	1390e <_vfprintf_r+0x1abc>
   1393e:	8c4a                	mv	s8,s2
   13940:	001a8693          	addi	a3,s5,1
   13944:	5892                	lw	a7,36(sp)
   13946:	5ca2                	lw	s9,40(sp)
   13948:	4b86                	lw	s7,64(sp)
   1394a:	4436                	lw	s0,76(sp)
   1394c:	5902                	lw	s2,32(sp)
   1394e:	44c6                	lw	s1,80(sp)
   13950:	4d56                	lw	s10,84(sp)
   13952:	96e2                	add	a3,a3,s8
   13954:	03000613          	li	a2,48
   13958:	d20ac5e3          	bltz	s5,13682 <_vfprintf_r+0x1830>
   1395c:	0c05                	addi	s8,s8,1
   1395e:	fecc0fa3          	sb	a2,-1(s8)
   13962:	fedc1de3          	bne	s8,a3,1395c <_vfprintf_r+0x1b0a>
   13966:	bb31                	j	13682 <_vfprintf_r+0x1830>
   13968:	5732                	lw	a4,44(sp)
   1396a:	06600893          	li	a7,102
   1396e:	00ea8f33          	add	t5,s5,a4
   13972:	00ff0b33          	add	s6,t5,a5
   13976:	bd95                	j	137ea <_vfprintf_r+0x1998>
   13978:	676d                	lui	a4,0x1b
   1397a:	8c070793          	addi	a5,a4,-1856 # 1a8c0 <__clzsi2+0xd6>
   1397e:	ce3e                	sw	a5,28(sp)
   13980:	b66d                	j	1352a <_vfprintf_r+0x16d8>
   13982:	4505                	li	a0,1
   13984:	40d506b3          	sub	a3,a0,a3
   13988:	d736                	sw	a3,172(sp)
   1398a:	9736                	add	a4,a4,a3
   1398c:	b485                	j	133ec <_vfprintf_r+0x159a>
   1398e:	e711                	bnez	a4,1399a <_vfprintf_r+0x1b48>
   13990:	4d85                	li	s11,1
   13992:	06600893          	li	a7,102
   13996:	4b05                	li	s6,1
   13998:	b3a5                	j	13700 <_vfprintf_r+0x18ae>
   1399a:	57b2                	lw	a5,44(sp)
   1399c:	06600893          	li	a7,102
   139a0:	00178f13          	addi	t5,a5,1
   139a4:	015f0b33          	add	s6,t5,s5
   139a8:	fffb4693          	not	a3,s6
   139ac:	86fd                	srai	a3,a3,0x1f
   139ae:	00db7db3          	and	s11,s6,a3
   139b2:	b3b9                	j	13700 <_vfprintf_r+0x18ae>
   139b4:	4789                	li	a5,2
   139b6:	c0be                	sw	a5,64(sp)
   139b8:	ca8ff06f          	j	12e60 <_vfprintf_r+0x100e>
   139bc:	47d2                	lw	a5,20(sp)
   139be:	0007aa83          	lw	s5,0(a5)
   139c2:	0791                	addi	a5,a5,4
   139c4:	000ad363          	bgez	s5,139ca <_vfprintf_r+0x1b78>
   139c8:	5afd                	li	s5,-1
   139ca:	00194883          	lbu	a7,1(s2)
   139ce:	ca3e                	sw	a5,20(sp)
   139d0:	8936                	mv	s2,a3
   139d2:	db0fe06f          	j	11f82 <_vfprintf_r+0x130>
   139d6:	d402                	sw	zero,40(sp)
   139d8:	d202                	sw	zero,36(sp)
   139da:	b781                	j	1391a <_vfprintf_r+0x1ac8>
   139dc:	04500613          	li	a2,69
   139e0:	010c                	addi	a1,sp,128
   139e2:	b429                	j	133ec <_vfprintf_r+0x159a>
   139e4:	00c4d783          	lhu	a5,12(s1)
   139e8:	0407e793          	ori	a5,a5,64
   139ec:	00f49623          	sh	a5,12(s1)
   139f0:	ebefe06f          	j	120ae <_vfprintf_r+0x25c>

000139f4 <vfprintf>:
   139f4:	87aa                	mv	a5,a0
   139f6:	f141a503          	lw	a0,-236(gp) # 1c954 <_impure_ptr>
   139fa:	86b2                	mv	a3,a2
   139fc:	862e                	mv	a2,a1
   139fe:	85be                	mv	a1,a5
   13a00:	c52fe06f          	j	11e52 <_vfprintf_r>

00013a04 <__sbprintf>:
   13a04:	b8010113          	addi	sp,sp,-1152
   13a08:	00c59783          	lh	a5,12(a1)
   13a0c:	00e5d703          	lhu	a4,14(a1)
   13a10:	46812c23          	sw	s0,1144(sp)
   13a14:	842e                	mv	s0,a1
   13a16:	65c1                	lui	a1,0x10
   13a18:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   13a1a:	06442e03          	lw	t3,100(s0)
   13a1e:	01c42303          	lw	t1,28(s0)
   13a22:	02442883          	lw	a7,36(s0)
   13a26:	0742                	slli	a4,a4,0x10
   13a28:	8fed                	and	a5,a5,a1
   13a2a:	8fd9                	or	a5,a5,a4
   13a2c:	40000813          	li	a6,1024
   13a30:	ca3e                	sw	a5,20(sp)
   13a32:	002c                	addi	a1,sp,8
   13a34:	189c                	addi	a5,sp,112
   13a36:	46912a23          	sw	s1,1140(sp)
   13a3a:	47212823          	sw	s2,1136(sp)
   13a3e:	46112e23          	sw	ra,1148(sp)
   13a42:	892a                	mv	s2,a0
   13a44:	d6f2                	sw	t3,108(sp)
   13a46:	d21a                	sw	t1,36(sp)
   13a48:	d646                	sw	a7,44(sp)
   13a4a:	c43e                	sw	a5,8(sp)
   13a4c:	cc3e                	sw	a5,24(sp)
   13a4e:	c842                	sw	a6,16(sp)
   13a50:	ce42                	sw	a6,28(sp)
   13a52:	d002                	sw	zero,32(sp)
   13a54:	bfefe0ef          	jal	11e52 <_vfprintf_r>
   13a58:	84aa                	mv	s1,a0
   13a5a:	02055963          	bgez	a0,13a8c <__sbprintf+0x88>
   13a5e:	01415783          	lhu	a5,20(sp)
   13a62:	0407f793          	andi	a5,a5,64
   13a66:	c799                	beqz	a5,13a74 <__sbprintf+0x70>
   13a68:	00c45783          	lhu	a5,12(s0)
   13a6c:	0407e793          	ori	a5,a5,64
   13a70:	00f41623          	sh	a5,12(s0)
   13a74:	47c12083          	lw	ra,1148(sp)
   13a78:	47812403          	lw	s0,1144(sp)
   13a7c:	47012903          	lw	s2,1136(sp)
   13a80:	8526                	mv	a0,s1
   13a82:	47412483          	lw	s1,1140(sp)
   13a86:	48010113          	addi	sp,sp,1152
   13a8a:	8082                	ret
   13a8c:	002c                	addi	a1,sp,8
   13a8e:	854a                	mv	a0,s2
   13a90:	2c9d                	jal	13d06 <_fflush_r>
   13a92:	d571                	beqz	a0,13a5e <__sbprintf+0x5a>
   13a94:	54fd                	li	s1,-1
   13a96:	b7e1                	j	13a5e <__sbprintf+0x5a>

00013a98 <__sprint_r>:
   13a98:	461c                	lw	a5,8(a2)
   13a9a:	1141                	addi	sp,sp,-16
   13a9c:	c422                	sw	s0,8(sp)
   13a9e:	c606                	sw	ra,12(sp)
   13aa0:	8432                	mv	s0,a2
   13aa2:	eb81                	bnez	a5,13ab2 <__sprint_r+0x1a>
   13aa4:	40b2                	lw	ra,12(sp)
   13aa6:	00042223          	sw	zero,4(s0)
   13aaa:	4422                	lw	s0,8(sp)
   13aac:	4501                	li	a0,0
   13aae:	0141                	addi	sp,sp,16
   13ab0:	8082                	ret
   13ab2:	2ce9                	jal	13d8c <__sfvwrite_r>
   13ab4:	40b2                	lw	ra,12(sp)
   13ab6:	00042423          	sw	zero,8(s0)
   13aba:	00042223          	sw	zero,4(s0)
   13abe:	4422                	lw	s0,8(sp)
   13ac0:	0141                	addi	sp,sp,16
   13ac2:	8082                	ret

00013ac4 <_fclose_r>:
   13ac4:	1141                	addi	sp,sp,-16
   13ac6:	c606                	sw	ra,12(sp)
   13ac8:	c04a                	sw	s2,0(sp)
   13aca:	cd89                	beqz	a1,13ae4 <_fclose_r+0x20>
   13acc:	c422                	sw	s0,8(sp)
   13ace:	c226                	sw	s1,4(sp)
   13ad0:	842e                	mv	s0,a1
   13ad2:	84aa                	mv	s1,a0
   13ad4:	c119                	beqz	a0,13ada <_fclose_r+0x16>
   13ad6:	595c                	lw	a5,52(a0)
   13ad8:	c7d1                	beqz	a5,13b64 <_fclose_r+0xa0>
   13ada:	00c41783          	lh	a5,12(s0)
   13ade:	eb89                	bnez	a5,13af0 <_fclose_r+0x2c>
   13ae0:	4422                	lw	s0,8(sp)
   13ae2:	4492                	lw	s1,4(sp)
   13ae4:	40b2                	lw	ra,12(sp)
   13ae6:	4901                	li	s2,0
   13ae8:	854a                	mv	a0,s2
   13aea:	4902                	lw	s2,0(sp)
   13aec:	0141                	addi	sp,sp,16
   13aee:	8082                	ret
   13af0:	85a2                	mv	a1,s0
   13af2:	8526                	mv	a0,s1
   13af4:	28bd                	jal	13b72 <__sflush_r>
   13af6:	545c                	lw	a5,44(s0)
   13af8:	892a                	mv	s2,a0
   13afa:	c791                	beqz	a5,13b06 <_fclose_r+0x42>
   13afc:	4c4c                	lw	a1,28(s0)
   13afe:	8526                	mv	a0,s1
   13b00:	9782                	jalr	a5
   13b02:	04054663          	bltz	a0,13b4e <_fclose_r+0x8a>
   13b06:	00c45783          	lhu	a5,12(s0)
   13b0a:	0807f793          	andi	a5,a5,128
   13b0e:	e7b1                	bnez	a5,13b5a <_fclose_r+0x96>
   13b10:	580c                	lw	a1,48(s0)
   13b12:	c991                	beqz	a1,13b26 <_fclose_r+0x62>
   13b14:	04040793          	addi	a5,s0,64
   13b18:	00f58563          	beq	a1,a5,13b22 <_fclose_r+0x5e>
   13b1c:	8526                	mv	a0,s1
   13b1e:	b6bfd0ef          	jal	11688 <_free_r>
   13b22:	02042823          	sw	zero,48(s0)
   13b26:	406c                	lw	a1,68(s0)
   13b28:	c591                	beqz	a1,13b34 <_fclose_r+0x70>
   13b2a:	8526                	mv	a0,s1
   13b2c:	b5dfd0ef          	jal	11688 <_free_r>
   13b30:	04042223          	sw	zero,68(s0)
   13b34:	cc2fd0ef          	jal	10ff6 <__sfp_lock_acquire>
   13b38:	00041623          	sh	zero,12(s0)
   13b3c:	cbcfd0ef          	jal	10ff8 <__sfp_lock_release>
   13b40:	40b2                	lw	ra,12(sp)
   13b42:	4422                	lw	s0,8(sp)
   13b44:	4492                	lw	s1,4(sp)
   13b46:	854a                	mv	a0,s2
   13b48:	4902                	lw	s2,0(sp)
   13b4a:	0141                	addi	sp,sp,16
   13b4c:	8082                	ret
   13b4e:	00c45783          	lhu	a5,12(s0)
   13b52:	597d                	li	s2,-1
   13b54:	0807f793          	andi	a5,a5,128
   13b58:	dfc5                	beqz	a5,13b10 <_fclose_r+0x4c>
   13b5a:	480c                	lw	a1,16(s0)
   13b5c:	8526                	mv	a0,s1
   13b5e:	b2bfd0ef          	jal	11688 <_free_r>
   13b62:	b77d                	j	13b10 <_fclose_r+0x4c>
   13b64:	c7cfd0ef          	jal	10fe0 <__sinit>
   13b68:	bf8d                	j	13ada <_fclose_r+0x16>

00013b6a <fclose>:
   13b6a:	85aa                	mv	a1,a0
   13b6c:	f141a503          	lw	a0,-236(gp) # 1c954 <_impure_ptr>
   13b70:	bf91                	j	13ac4 <_fclose_r>

00013b72 <__sflush_r>:
   13b72:	00c59703          	lh	a4,12(a1)
   13b76:	1101                	addi	sp,sp,-32
   13b78:	cc22                	sw	s0,24(sp)
   13b7a:	c64e                	sw	s3,12(sp)
   13b7c:	ce06                	sw	ra,28(sp)
   13b7e:	00877793          	andi	a5,a4,8
   13b82:	842e                	mv	s0,a1
   13b84:	89aa                	mv	s3,a0
   13b86:	e7e1                	bnez	a5,13c4e <__sflush_r+0xdc>
   13b88:	6785                	lui	a5,0x1
   13b8a:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf894>
   13b8e:	41d4                	lw	a3,4(a1)
   13b90:	8fd9                	or	a5,a5,a4
   13b92:	00f59623          	sh	a5,12(a1)
   13b96:	10d05563          	blez	a3,13ca0 <__sflush_r+0x12e>
   13b9a:	02842803          	lw	a6,40(s0)
   13b9e:	0a080263          	beqz	a6,13c42 <__sflush_r+0xd0>
   13ba2:	ca26                	sw	s1,20(sp)
   13ba4:	01371693          	slli	a3,a4,0x13
   13ba8:	0009a483          	lw	s1,0(s3)
   13bac:	0009a023          	sw	zero,0(s3)
   13bb0:	4c4c                	lw	a1,28(s0)
   13bb2:	0e06ce63          	bltz	a3,13cae <__sflush_r+0x13c>
   13bb6:	4601                	li	a2,0
   13bb8:	4685                	li	a3,1
   13bba:	854e                	mv	a0,s3
   13bbc:	9802                	jalr	a6
   13bbe:	57fd                	li	a5,-1
   13bc0:	862a                	mv	a2,a0
   13bc2:	10f50f63          	beq	a0,a5,13ce0 <__sflush_r+0x16e>
   13bc6:	00c41783          	lh	a5,12(s0)
   13bca:	02842803          	lw	a6,40(s0)
   13bce:	4c4c                	lw	a1,28(s0)
   13bd0:	8b91                	andi	a5,a5,4
   13bd2:	c799                	beqz	a5,13be0 <__sflush_r+0x6e>
   13bd4:	4058                	lw	a4,4(s0)
   13bd6:	581c                	lw	a5,48(s0)
   13bd8:	8e19                	sub	a2,a2,a4
   13bda:	c399                	beqz	a5,13be0 <__sflush_r+0x6e>
   13bdc:	5c5c                	lw	a5,60(s0)
   13bde:	8e1d                	sub	a2,a2,a5
   13be0:	4681                	li	a3,0
   13be2:	854e                	mv	a0,s3
   13be4:	9802                	jalr	a6
   13be6:	57fd                	li	a5,-1
   13be8:	0cf51563          	bne	a0,a5,13cb2 <__sflush_r+0x140>
   13bec:	0009a683          	lw	a3,0(s3)
   13bf0:	47f5                	li	a5,29
   13bf2:	00c41703          	lh	a4,12(s0)
   13bf6:	10d7e163          	bltu	a5,a3,13cf8 <__sflush_r+0x186>
   13bfa:	204007b7          	lui	a5,0x20400
   13bfe:	0785                	addi	a5,a5,1 # 20400001 <__BSS_END__+0x203e3375>
   13c00:	00d7d7b3          	srl	a5,a5,a3
   13c04:	8b85                	andi	a5,a5,1
   13c06:	cbed                	beqz	a5,13cf8 <__sflush_r+0x186>
   13c08:	4810                	lw	a2,16(s0)
   13c0a:	77fd                	lui	a5,0xfffff
   13c0c:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe2b73>
   13c10:	8ff9                	and	a5,a5,a4
   13c12:	00f41623          	sh	a5,12(s0)
   13c16:	00042223          	sw	zero,4(s0)
   13c1a:	c010                	sw	a2,0(s0)
   13c1c:	01371793          	slli	a5,a4,0x13
   13c20:	0007d363          	bgez	a5,13c26 <__sflush_r+0xb4>
   13c24:	c6dd                	beqz	a3,13cd2 <__sflush_r+0x160>
   13c26:	580c                	lw	a1,48(s0)
   13c28:	0099a023          	sw	s1,0(s3)
   13c2c:	c9c5                	beqz	a1,13cdc <__sflush_r+0x16a>
   13c2e:	04040793          	addi	a5,s0,64
   13c32:	00f58563          	beq	a1,a5,13c3c <__sflush_r+0xca>
   13c36:	854e                	mv	a0,s3
   13c38:	a51fd0ef          	jal	11688 <_free_r>
   13c3c:	44d2                	lw	s1,20(sp)
   13c3e:	02042823          	sw	zero,48(s0)
   13c42:	4501                	li	a0,0
   13c44:	40f2                	lw	ra,28(sp)
   13c46:	4462                	lw	s0,24(sp)
   13c48:	49b2                	lw	s3,12(sp)
   13c4a:	6105                	addi	sp,sp,32
   13c4c:	8082                	ret
   13c4e:	c84a                	sw	s2,16(sp)
   13c50:	0105a903          	lw	s2,16(a1)
   13c54:	04090b63          	beqz	s2,13caa <__sflush_r+0x138>
   13c58:	ca26                	sw	s1,20(sp)
   13c5a:	4184                	lw	s1,0(a1)
   13c5c:	8b0d                	andi	a4,a4,3
   13c5e:	0125a023          	sw	s2,0(a1)
   13c62:	412484b3          	sub	s1,s1,s2
   13c66:	4781                	li	a5,0
   13c68:	e311                	bnez	a4,13c6c <__sflush_r+0xfa>
   13c6a:	49dc                	lw	a5,20(a1)
   13c6c:	c41c                	sw	a5,8(s0)
   13c6e:	00904663          	bgtz	s1,13c7a <__sflush_r+0x108>
   13c72:	a81d                	j	13ca8 <__sflush_r+0x136>
   13c74:	992a                	add	s2,s2,a0
   13c76:	02905963          	blez	s1,13ca8 <__sflush_r+0x136>
   13c7a:	505c                	lw	a5,36(s0)
   13c7c:	4c4c                	lw	a1,28(s0)
   13c7e:	86a6                	mv	a3,s1
   13c80:	864a                	mv	a2,s2
   13c82:	854e                	mv	a0,s3
   13c84:	9782                	jalr	a5
   13c86:	8c89                	sub	s1,s1,a0
   13c88:	fea046e3          	bgtz	a0,13c74 <__sflush_r+0x102>
   13c8c:	00c41703          	lh	a4,12(s0)
   13c90:	4942                	lw	s2,16(sp)
   13c92:	04076713          	ori	a4,a4,64
   13c96:	44d2                	lw	s1,20(sp)
   13c98:	00e41623          	sh	a4,12(s0)
   13c9c:	557d                	li	a0,-1
   13c9e:	b75d                	j	13c44 <__sflush_r+0xd2>
   13ca0:	5dd4                	lw	a3,60(a1)
   13ca2:	eed04ce3          	bgtz	a3,13b9a <__sflush_r+0x28>
   13ca6:	bf71                	j	13c42 <__sflush_r+0xd0>
   13ca8:	44d2                	lw	s1,20(sp)
   13caa:	4942                	lw	s2,16(sp)
   13cac:	bf59                	j	13c42 <__sflush_r+0xd0>
   13cae:	4830                	lw	a2,80(s0)
   13cb0:	b705                	j	13bd0 <__sflush_r+0x5e>
   13cb2:	00c41703          	lh	a4,12(s0)
   13cb6:	4814                	lw	a3,16(s0)
   13cb8:	77fd                	lui	a5,0xfffff
   13cba:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe2b73>
   13cbe:	8ff9                	and	a5,a5,a4
   13cc0:	00f41623          	sh	a5,12(s0)
   13cc4:	00042223          	sw	zero,4(s0)
   13cc8:	c014                	sw	a3,0(s0)
   13cca:	01371793          	slli	a5,a4,0x13
   13cce:	f407dce3          	bgez	a5,13c26 <__sflush_r+0xb4>
   13cd2:	580c                	lw	a1,48(s0)
   13cd4:	c828                	sw	a0,80(s0)
   13cd6:	0099a023          	sw	s1,0(s3)
   13cda:	f9b1                	bnez	a1,13c2e <__sflush_r+0xbc>
   13cdc:	44d2                	lw	s1,20(sp)
   13cde:	b795                	j	13c42 <__sflush_r+0xd0>
   13ce0:	0009a783          	lw	a5,0(s3)
   13ce4:	ee0781e3          	beqz	a5,13bc6 <__sflush_r+0x54>
   13ce8:	4775                	li	a4,29
   13cea:	00e78a63          	beq	a5,a4,13cfe <__sflush_r+0x18c>
   13cee:	4759                	li	a4,22
   13cf0:	00e78763          	beq	a5,a4,13cfe <__sflush_r+0x18c>
   13cf4:	00c41703          	lh	a4,12(s0)
   13cf8:	04076713          	ori	a4,a4,64
   13cfc:	bf69                	j	13c96 <__sflush_r+0x124>
   13cfe:	0099a023          	sw	s1,0(s3)
   13d02:	44d2                	lw	s1,20(sp)
   13d04:	bf3d                	j	13c42 <__sflush_r+0xd0>

00013d06 <_fflush_r>:
   13d06:	1101                	addi	sp,sp,-32
   13d08:	cc22                	sw	s0,24(sp)
   13d0a:	ce06                	sw	ra,28(sp)
   13d0c:	842a                	mv	s0,a0
   13d0e:	c119                	beqz	a0,13d14 <_fflush_r+0xe>
   13d10:	595c                	lw	a5,52(a0)
   13d12:	cf91                	beqz	a5,13d2e <_fflush_r+0x28>
   13d14:	00c59783          	lh	a5,12(a1)
   13d18:	e791                	bnez	a5,13d24 <_fflush_r+0x1e>
   13d1a:	40f2                	lw	ra,28(sp)
   13d1c:	4462                	lw	s0,24(sp)
   13d1e:	4501                	li	a0,0
   13d20:	6105                	addi	sp,sp,32
   13d22:	8082                	ret
   13d24:	8522                	mv	a0,s0
   13d26:	4462                	lw	s0,24(sp)
   13d28:	40f2                	lw	ra,28(sp)
   13d2a:	6105                	addi	sp,sp,32
   13d2c:	b599                	j	13b72 <__sflush_r>
   13d2e:	c62e                	sw	a1,12(sp)
   13d30:	ab0fd0ef          	jal	10fe0 <__sinit>
   13d34:	45b2                	lw	a1,12(sp)
   13d36:	bff9                	j	13d14 <_fflush_r+0xe>

00013d38 <fflush>:
   13d38:	cd05                	beqz	a0,13d70 <fflush+0x38>
   13d3a:	85aa                	mv	a1,a0
   13d3c:	f141a503          	lw	a0,-236(gp) # 1c954 <_impure_ptr>
   13d40:	c119                	beqz	a0,13d46 <fflush+0xe>
   13d42:	595c                	lw	a5,52(a0)
   13d44:	c799                	beqz	a5,13d52 <fflush+0x1a>
   13d46:	00c59783          	lh	a5,12(a1)
   13d4a:	e399                	bnez	a5,13d50 <fflush+0x18>
   13d4c:	4501                	li	a0,0
   13d4e:	8082                	ret
   13d50:	b50d                	j	13b72 <__sflush_r>
   13d52:	1101                	addi	sp,sp,-32
   13d54:	c62e                	sw	a1,12(sp)
   13d56:	c42a                	sw	a0,8(sp)
   13d58:	ce06                	sw	ra,28(sp)
   13d5a:	a86fd0ef          	jal	10fe0 <__sinit>
   13d5e:	45b2                	lw	a1,12(sp)
   13d60:	4522                	lw	a0,8(sp)
   13d62:	00c59783          	lh	a5,12(a1)
   13d66:	e385                	bnez	a5,13d86 <fflush+0x4e>
   13d68:	40f2                	lw	ra,28(sp)
   13d6a:	4501                	li	a0,0
   13d6c:	6105                	addi	sp,sp,32
   13d6e:	8082                	ret
   13d70:	6671                	lui	a2,0x1c
   13d72:	65d1                	lui	a1,0x14
   13d74:	6571                	lui	a0,0x1c
   13d76:	24060613          	addi	a2,a2,576 # 1c240 <__sglue>
   13d7a:	d0658593          	addi	a1,a1,-762 # 13d06 <_fflush_r>
   13d7e:	25050513          	addi	a0,a0,592 # 1c250 <_impure_data>
   13d82:	a98fd06f          	j	1101a <_fwalk_sglue>
   13d86:	40f2                	lw	ra,28(sp)
   13d88:	6105                	addi	sp,sp,32
   13d8a:	b3e5                	j	13b72 <__sflush_r>

00013d8c <__sfvwrite_r>:
   13d8c:	461c                	lw	a5,8(a2)
   13d8e:	1c078c63          	beqz	a5,13f66 <__sfvwrite_r+0x1da>
   13d92:	00c59683          	lh	a3,12(a1)
   13d96:	7179                	addi	sp,sp,-48
   13d98:	d422                	sw	s0,40(sp)
   13d9a:	cc52                	sw	s4,24(sp)
   13d9c:	c85a                	sw	s6,16(sp)
   13d9e:	d606                	sw	ra,44(sp)
   13da0:	0086f793          	andi	a5,a3,8
   13da4:	8b32                	mv	s6,a2
   13da6:	8a2a                	mv	s4,a0
   13da8:	842e                	mv	s0,a1
   13daa:	c7ad                	beqz	a5,13e14 <__sfvwrite_r+0x88>
   13dac:	499c                	lw	a5,16(a1)
   13dae:	c3bd                	beqz	a5,13e14 <__sfvwrite_r+0x88>
   13db0:	d226                	sw	s1,36(sp)
   13db2:	d04a                	sw	s2,32(sp)
   13db4:	ce4e                	sw	s3,28(sp)
   13db6:	ca56                	sw	s5,20(sp)
   13db8:	0026f793          	andi	a5,a3,2
   13dbc:	000b2483          	lw	s1,0(s6)
   13dc0:	cbb5                	beqz	a5,13e34 <__sfvwrite_r+0xa8>
   13dc2:	505c                	lw	a5,36(s0)
   13dc4:	4c4c                	lw	a1,28(s0)
   13dc6:	80000ab7          	lui	s5,0x80000
   13dca:	4981                	li	s3,0
   13dcc:	4901                	li	s2,0
   13dce:	c00a8a93          	addi	s5,s5,-1024 # 7ffffc00 <__BSS_END__+0x7ffe2f74>
   13dd2:	864e                	mv	a2,s3
   13dd4:	8552                	mv	a0,s4
   13dd6:	02090963          	beqz	s2,13e08 <__sfvwrite_r+0x7c>
   13dda:	86ca                	mv	a3,s2
   13ddc:	012af363          	bgeu	s5,s2,13de2 <__sfvwrite_r+0x56>
   13de0:	86d6                	mv	a3,s5
   13de2:	9782                	jalr	a5
   13de4:	2ca05c63          	blez	a0,140bc <__sfvwrite_r+0x330>
   13de8:	008b2783          	lw	a5,8(s6)
   13dec:	99aa                	add	s3,s3,a0
   13dee:	40a90933          	sub	s2,s2,a0
   13df2:	8f89                	sub	a5,a5,a0
   13df4:	00fb2423          	sw	a5,8(s6)
   13df8:	12078563          	beqz	a5,13f22 <__sfvwrite_r+0x196>
   13dfc:	505c                	lw	a5,36(s0)
   13dfe:	4c4c                	lw	a1,28(s0)
   13e00:	864e                	mv	a2,s3
   13e02:	8552                	mv	a0,s4
   13e04:	fc091be3          	bnez	s2,13dda <__sfvwrite_r+0x4e>
   13e08:	0004a983          	lw	s3,0(s1)
   13e0c:	0044a903          	lw	s2,4(s1)
   13e10:	04a1                	addi	s1,s1,8
   13e12:	b7c1                	j	13dd2 <__sfvwrite_r+0x46>
   13e14:	85a2                	mv	a1,s0
   13e16:	8552                	mv	a0,s4
   13e18:	2c75                	jal	140d4 <__swsetup_r>
   13e1a:	12051f63          	bnez	a0,13f58 <__sfvwrite_r+0x1cc>
   13e1e:	00c41683          	lh	a3,12(s0)
   13e22:	d226                	sw	s1,36(sp)
   13e24:	d04a                	sw	s2,32(sp)
   13e26:	ce4e                	sw	s3,28(sp)
   13e28:	ca56                	sw	s5,20(sp)
   13e2a:	0026f793          	andi	a5,a3,2
   13e2e:	000b2483          	lw	s1,0(s6)
   13e32:	fbc1                	bnez	a5,13dc2 <__sfvwrite_r+0x36>
   13e34:	c65e                	sw	s7,12(sp)
   13e36:	c462                	sw	s8,8(sp)
   13e38:	0016f793          	andi	a5,a3,1
   13e3c:	12079763          	bnez	a5,13f6a <__sfvwrite_r+0x1de>
   13e40:	401c                	lw	a5,0(s0)
   13e42:	4418                	lw	a4,8(s0)
   13e44:	80000ab7          	lui	s5,0x80000
   13e48:	c266                	sw	s9,4(sp)
   13e4a:	4b81                	li	s7,0
   13e4c:	4981                	li	s3,0
   13e4e:	1afd                	addi	s5,s5,-1 # 7fffffff <__BSS_END__+0x7ffe3373>
   13e50:	853e                	mv	a0,a5
   13e52:	8c3a                	mv	s8,a4
   13e54:	0a098e63          	beqz	s3,13f10 <__sfvwrite_r+0x184>
   13e58:	2006f613          	andi	a2,a3,512
   13e5c:	1a060563          	beqz	a2,14006 <__sfvwrite_r+0x27a>
   13e60:	8cba                	mv	s9,a4
   13e62:	20e9e563          	bltu	s3,a4,1406c <__sfvwrite_r+0x2e0>
   13e66:	4806f713          	andi	a4,a3,1152
   13e6a:	c73d                	beqz	a4,13ed8 <__sfvwrite_r+0x14c>
   13e6c:	4850                	lw	a2,20(s0)
   13e6e:	480c                	lw	a1,16(s0)
   13e70:	00161713          	slli	a4,a2,0x1
   13e74:	9732                	add	a4,a4,a2
   13e76:	40b78933          	sub	s2,a5,a1
   13e7a:	01f75c13          	srli	s8,a4,0x1f
   13e7e:	9c3a                	add	s8,s8,a4
   13e80:	00190793          	addi	a5,s2,1
   13e84:	401c5c13          	srai	s8,s8,0x1
   13e88:	97ce                	add	a5,a5,s3
   13e8a:	8662                	mv	a2,s8
   13e8c:	00fc7463          	bgeu	s8,a5,13e94 <__sfvwrite_r+0x108>
   13e90:	8c3e                	mv	s8,a5
   13e92:	863e                	mv	a2,a5
   13e94:	4006f693          	andi	a3,a3,1024
   13e98:	1e068963          	beqz	a3,1408a <__sfvwrite_r+0x2fe>
   13e9c:	85b2                	mv	a1,a2
   13e9e:	8552                	mv	a0,s4
   13ea0:	a0bfd0ef          	jal	118aa <_malloc_r>
   13ea4:	8caa                	mv	s9,a0
   13ea6:	20050e63          	beqz	a0,140c2 <__sfvwrite_r+0x336>
   13eaa:	480c                	lw	a1,16(s0)
   13eac:	864a                	mv	a2,s2
   13eae:	2b81                	jal	143fe <memcpy>
   13eb0:	00c45783          	lhu	a5,12(s0)
   13eb4:	b7f7f793          	andi	a5,a5,-1153
   13eb8:	0807e793          	ori	a5,a5,128
   13ebc:	00f41623          	sh	a5,12(s0)
   13ec0:	012c8533          	add	a0,s9,s2
   13ec4:	412c07b3          	sub	a5,s8,s2
   13ec8:	01942823          	sw	s9,16(s0)
   13ecc:	01842a23          	sw	s8,20(s0)
   13ed0:	c008                	sw	a0,0(s0)
   13ed2:	8c4e                	mv	s8,s3
   13ed4:	c41c                	sw	a5,8(s0)
   13ed6:	8cce                	mv	s9,s3
   13ed8:	8666                	mv	a2,s9
   13eda:	85de                	mv	a1,s7
   13edc:	2999                	jal	14332 <memmove>
   13ede:	4418                	lw	a4,8(s0)
   13ee0:	401c                	lw	a5,0(s0)
   13ee2:	894e                	mv	s2,s3
   13ee4:	41870733          	sub	a4,a4,s8
   13ee8:	97e6                	add	a5,a5,s9
   13eea:	c418                	sw	a4,8(s0)
   13eec:	c01c                	sw	a5,0(s0)
   13eee:	4981                	li	s3,0
   13ef0:	008b2783          	lw	a5,8(s6)
   13ef4:	9bca                	add	s7,s7,s2
   13ef6:	412787b3          	sub	a5,a5,s2
   13efa:	00fb2423          	sw	a5,8(s6)
   13efe:	cf99                	beqz	a5,13f1c <__sfvwrite_r+0x190>
   13f00:	401c                	lw	a5,0(s0)
   13f02:	4418                	lw	a4,8(s0)
   13f04:	00c41683          	lh	a3,12(s0)
   13f08:	853e                	mv	a0,a5
   13f0a:	8c3a                	mv	s8,a4
   13f0c:	f40996e3          	bnez	s3,13e58 <__sfvwrite_r+0xcc>
   13f10:	0004ab83          	lw	s7,0(s1)
   13f14:	0044a983          	lw	s3,4(s1)
   13f18:	04a1                	addi	s1,s1,8
   13f1a:	bf1d                	j	13e50 <__sfvwrite_r+0xc4>
   13f1c:	4bb2                	lw	s7,12(sp)
   13f1e:	4c22                	lw	s8,8(sp)
   13f20:	4c92                	lw	s9,4(sp)
   13f22:	50b2                	lw	ra,44(sp)
   13f24:	5422                	lw	s0,40(sp)
   13f26:	5492                	lw	s1,36(sp)
   13f28:	5902                	lw	s2,32(sp)
   13f2a:	49f2                	lw	s3,28(sp)
   13f2c:	4ad2                	lw	s5,20(sp)
   13f2e:	4a62                	lw	s4,24(sp)
   13f30:	4b42                	lw	s6,16(sp)
   13f32:	4501                	li	a0,0
   13f34:	6145                	addi	sp,sp,48
   13f36:	8082                	ret
   13f38:	85a2                	mv	a1,s0
   13f3a:	8552                	mv	a0,s4
   13f3c:	33e9                	jal	13d06 <_fflush_r>
   13f3e:	c93d                	beqz	a0,13fb4 <__sfvwrite_r+0x228>
   13f40:	00c41783          	lh	a5,12(s0)
   13f44:	4bb2                	lw	s7,12(sp)
   13f46:	4c22                	lw	s8,8(sp)
   13f48:	5492                	lw	s1,36(sp)
   13f4a:	5902                	lw	s2,32(sp)
   13f4c:	49f2                	lw	s3,28(sp)
   13f4e:	4ad2                	lw	s5,20(sp)
   13f50:	0407e793          	ori	a5,a5,64
   13f54:	00f41623          	sh	a5,12(s0)
   13f58:	50b2                	lw	ra,44(sp)
   13f5a:	5422                	lw	s0,40(sp)
   13f5c:	4a62                	lw	s4,24(sp)
   13f5e:	4b42                	lw	s6,16(sp)
   13f60:	557d                	li	a0,-1
   13f62:	6145                	addi	sp,sp,48
   13f64:	8082                	ret
   13f66:	4501                	li	a0,0
   13f68:	8082                	ret
   13f6a:	4a81                	li	s5,0
   13f6c:	4501                	li	a0,0
   13f6e:	4c01                	li	s8,0
   13f70:	4981                	li	s3,0
   13f72:	04098e63          	beqz	s3,13fce <__sfvwrite_r+0x242>
   13f76:	c525                	beqz	a0,13fde <__sfvwrite_r+0x252>
   13f78:	87d6                	mv	a5,s5
   13f7a:	8bce                	mv	s7,s3
   13f7c:	0137f363          	bgeu	a5,s3,13f82 <__sfvwrite_r+0x1f6>
   13f80:	8bbe                	mv	s7,a5
   13f82:	4008                	lw	a0,0(s0)
   13f84:	481c                	lw	a5,16(s0)
   13f86:	00842903          	lw	s2,8(s0)
   13f8a:	4854                	lw	a3,20(s0)
   13f8c:	00a7f563          	bgeu	a5,a0,13f96 <__sfvwrite_r+0x20a>
   13f90:	9936                	add	s2,s2,a3
   13f92:	05794f63          	blt	s2,s7,13ff0 <__sfvwrite_r+0x264>
   13f96:	0cdbce63          	blt	s7,a3,14072 <__sfvwrite_r+0x2e6>
   13f9a:	505c                	lw	a5,36(s0)
   13f9c:	4c4c                	lw	a1,28(s0)
   13f9e:	8662                	mv	a2,s8
   13fa0:	8552                	mv	a0,s4
   13fa2:	9782                	jalr	a5
   13fa4:	892a                	mv	s2,a0
   13fa6:	f8a05de3          	blez	a0,13f40 <__sfvwrite_r+0x1b4>
   13faa:	412a8ab3          	sub	s5,s5,s2
   13fae:	4505                	li	a0,1
   13fb0:	f80a84e3          	beqz	s5,13f38 <__sfvwrite_r+0x1ac>
   13fb4:	008b2783          	lw	a5,8(s6)
   13fb8:	9c4a                	add	s8,s8,s2
   13fba:	412989b3          	sub	s3,s3,s2
   13fbe:	412787b3          	sub	a5,a5,s2
   13fc2:	00fb2423          	sw	a5,8(s6)
   13fc6:	f7d5                	bnez	a5,13f72 <__sfvwrite_r+0x1e6>
   13fc8:	4bb2                	lw	s7,12(sp)
   13fca:	4c22                	lw	s8,8(sp)
   13fcc:	bf99                	j	13f22 <__sfvwrite_r+0x196>
   13fce:	0044a983          	lw	s3,4(s1)
   13fd2:	87a6                	mv	a5,s1
   13fd4:	04a1                	addi	s1,s1,8
   13fd6:	fe098ce3          	beqz	s3,13fce <__sfvwrite_r+0x242>
   13fda:	0007ac03          	lw	s8,0(a5)
   13fde:	864e                	mv	a2,s3
   13fe0:	45a9                	li	a1,10
   13fe2:	8562                	mv	a0,s8
   13fe4:	22e9                	jal	141ae <memchr>
   13fe6:	c579                	beqz	a0,140b4 <__sfvwrite_r+0x328>
   13fe8:	0505                	addi	a0,a0,1
   13fea:	41850ab3          	sub	s5,a0,s8
   13fee:	b769                	j	13f78 <__sfvwrite_r+0x1ec>
   13ff0:	85e2                	mv	a1,s8
   13ff2:	864a                	mv	a2,s2
   13ff4:	2e3d                	jal	14332 <memmove>
   13ff6:	401c                	lw	a5,0(s0)
   13ff8:	85a2                	mv	a1,s0
   13ffa:	8552                	mv	a0,s4
   13ffc:	97ca                	add	a5,a5,s2
   13ffe:	c01c                	sw	a5,0(s0)
   14000:	3319                	jal	13d06 <_fflush_r>
   14002:	d545                	beqz	a0,13faa <__sfvwrite_r+0x21e>
   14004:	bf35                	j	13f40 <__sfvwrite_r+0x1b4>
   14006:	4814                	lw	a3,16(s0)
   14008:	02f6e863          	bltu	a3,a5,14038 <__sfvwrite_r+0x2ac>
   1400c:	4850                	lw	a2,20(s0)
   1400e:	02c9e563          	bltu	s3,a2,14038 <__sfvwrite_r+0x2ac>
   14012:	87ce                	mv	a5,s3
   14014:	013af363          	bgeu	s5,s3,1401a <__sfvwrite_r+0x28e>
   14018:	87d6                	mv	a5,s5
   1401a:	02c7e6b3          	rem	a3,a5,a2
   1401e:	5058                	lw	a4,36(s0)
   14020:	4c4c                	lw	a1,28(s0)
   14022:	865e                	mv	a2,s7
   14024:	8552                	mv	a0,s4
   14026:	40d786b3          	sub	a3,a5,a3
   1402a:	9702                	jalr	a4
   1402c:	892a                	mv	s2,a0
   1402e:	02a05963          	blez	a0,14060 <__sfvwrite_r+0x2d4>
   14032:	412989b3          	sub	s3,s3,s2
   14036:	bd6d                	j	13ef0 <__sfvwrite_r+0x164>
   14038:	893a                	mv	s2,a4
   1403a:	00e9f363          	bgeu	s3,a4,14040 <__sfvwrite_r+0x2b4>
   1403e:	894e                	mv	s2,s3
   14040:	853e                	mv	a0,a5
   14042:	864a                	mv	a2,s2
   14044:	85de                	mv	a1,s7
   14046:	24f5                	jal	14332 <memmove>
   14048:	4418                	lw	a4,8(s0)
   1404a:	401c                	lw	a5,0(s0)
   1404c:	41270733          	sub	a4,a4,s2
   14050:	97ca                	add	a5,a5,s2
   14052:	c418                	sw	a4,8(s0)
   14054:	c01c                	sw	a5,0(s0)
   14056:	ff71                	bnez	a4,14032 <__sfvwrite_r+0x2a6>
   14058:	85a2                	mv	a1,s0
   1405a:	8552                	mv	a0,s4
   1405c:	316d                	jal	13d06 <_fflush_r>
   1405e:	d971                	beqz	a0,14032 <__sfvwrite_r+0x2a6>
   14060:	00c41783          	lh	a5,12(s0)
   14064:	4bb2                	lw	s7,12(sp)
   14066:	4c22                	lw	s8,8(sp)
   14068:	4c92                	lw	s9,4(sp)
   1406a:	bdf9                	j	13f48 <__sfvwrite_r+0x1bc>
   1406c:	8c4e                	mv	s8,s3
   1406e:	8cce                	mv	s9,s3
   14070:	b5a5                	j	13ed8 <__sfvwrite_r+0x14c>
   14072:	865e                	mv	a2,s7
   14074:	85e2                	mv	a1,s8
   14076:	2c75                	jal	14332 <memmove>
   14078:	4418                	lw	a4,8(s0)
   1407a:	401c                	lw	a5,0(s0)
   1407c:	895e                	mv	s2,s7
   1407e:	41770733          	sub	a4,a4,s7
   14082:	97de                	add	a5,a5,s7
   14084:	c418                	sw	a4,8(s0)
   14086:	c01c                	sw	a5,0(s0)
   14088:	b70d                	j	13faa <__sfvwrite_r+0x21e>
   1408a:	8552                	mv	a0,s4
   1408c:	712020ef          	jal	1679e <_realloc_r>
   14090:	8caa                	mv	s9,a0
   14092:	e20517e3          	bnez	a0,13ec0 <__sfvwrite_r+0x134>
   14096:	480c                	lw	a1,16(s0)
   14098:	8552                	mv	a0,s4
   1409a:	deefd0ef          	jal	11688 <_free_r>
   1409e:	00c41783          	lh	a5,12(s0)
   140a2:	4731                	li	a4,12
   140a4:	4bb2                	lw	s7,12(sp)
   140a6:	4c22                	lw	s8,8(sp)
   140a8:	4c92                	lw	s9,4(sp)
   140aa:	00ea2023          	sw	a4,0(s4)
   140ae:	f7f7f793          	andi	a5,a5,-129
   140b2:	bd59                	j	13f48 <__sfvwrite_r+0x1bc>
   140b4:	00198793          	addi	a5,s3,1
   140b8:	8abe                	mv	s5,a5
   140ba:	b5c1                	j	13f7a <__sfvwrite_r+0x1ee>
   140bc:	00c41783          	lh	a5,12(s0)
   140c0:	b561                	j	13f48 <__sfvwrite_r+0x1bc>
   140c2:	4731                	li	a4,12
   140c4:	00c41783          	lh	a5,12(s0)
   140c8:	4bb2                	lw	s7,12(sp)
   140ca:	4c22                	lw	s8,8(sp)
   140cc:	4c92                	lw	s9,4(sp)
   140ce:	00ea2023          	sw	a4,0(s4)
   140d2:	bd9d                	j	13f48 <__sfvwrite_r+0x1bc>

000140d4 <__swsetup_r>:
   140d4:	f141a783          	lw	a5,-236(gp) # 1c954 <_impure_ptr>
   140d8:	1141                	addi	sp,sp,-16
   140da:	c422                	sw	s0,8(sp)
   140dc:	c226                	sw	s1,4(sp)
   140de:	c606                	sw	ra,12(sp)
   140e0:	84aa                	mv	s1,a0
   140e2:	842e                	mv	s0,a1
   140e4:	c399                	beqz	a5,140ea <__swsetup_r+0x16>
   140e6:	5bd8                	lw	a4,52(a5)
   140e8:	c75d                	beqz	a4,14196 <__swsetup_r+0xc2>
   140ea:	00c41783          	lh	a5,12(s0)
   140ee:	0087f713          	andi	a4,a5,8
   140f2:	c721                	beqz	a4,1413a <__swsetup_r+0x66>
   140f4:	4818                	lw	a4,16(s0)
   140f6:	cf31                	beqz	a4,14152 <__swsetup_r+0x7e>
   140f8:	0017f693          	andi	a3,a5,1
   140fc:	ce91                	beqz	a3,14118 <__swsetup_r+0x44>
   140fe:	4854                	lw	a3,20(s0)
   14100:	00042423          	sw	zero,8(s0)
   14104:	4501                	li	a0,0
   14106:	40d006b3          	neg	a3,a3
   1410a:	cc14                	sw	a3,24(s0)
   1410c:	cf11                	beqz	a4,14128 <__swsetup_r+0x54>
   1410e:	40b2                	lw	ra,12(sp)
   14110:	4422                	lw	s0,8(sp)
   14112:	4492                	lw	s1,4(sp)
   14114:	0141                	addi	sp,sp,16
   14116:	8082                	ret
   14118:	0027f693          	andi	a3,a5,2
   1411c:	4601                	li	a2,0
   1411e:	e291                	bnez	a3,14122 <__swsetup_r+0x4e>
   14120:	4850                	lw	a2,20(s0)
   14122:	c410                	sw	a2,8(s0)
   14124:	4501                	li	a0,0
   14126:	f765                	bnez	a4,1410e <__swsetup_r+0x3a>
   14128:	0807f713          	andi	a4,a5,128
   1412c:	d36d                	beqz	a4,1410e <__swsetup_r+0x3a>
   1412e:	0407e793          	ori	a5,a5,64
   14132:	00f41623          	sh	a5,12(s0)
   14136:	557d                	li	a0,-1
   14138:	bfd9                	j	1410e <__swsetup_r+0x3a>
   1413a:	0107f713          	andi	a4,a5,16
   1413e:	c325                	beqz	a4,1419e <__swsetup_r+0xca>
   14140:	0047f713          	andi	a4,a5,4
   14144:	e70d                	bnez	a4,1416e <__swsetup_r+0x9a>
   14146:	4818                	lw	a4,16(s0)
   14148:	0087e793          	ori	a5,a5,8
   1414c:	00f41623          	sh	a5,12(s0)
   14150:	f745                	bnez	a4,140f8 <__swsetup_r+0x24>
   14152:	2807f693          	andi	a3,a5,640
   14156:	20000613          	li	a2,512
   1415a:	f8c68fe3          	beq	a3,a2,140f8 <__swsetup_r+0x24>
   1415e:	85a2                	mv	a1,s0
   14160:	8526                	mv	a0,s1
   14162:	217020ef          	jal	16b78 <__smakebuf_r>
   14166:	00c41783          	lh	a5,12(s0)
   1416a:	4818                	lw	a4,16(s0)
   1416c:	b771                	j	140f8 <__swsetup_r+0x24>
   1416e:	580c                	lw	a1,48(s0)
   14170:	cd81                	beqz	a1,14188 <__swsetup_r+0xb4>
   14172:	04040713          	addi	a4,s0,64
   14176:	00e58763          	beq	a1,a4,14184 <__swsetup_r+0xb0>
   1417a:	8526                	mv	a0,s1
   1417c:	d0cfd0ef          	jal	11688 <_free_r>
   14180:	00c41783          	lh	a5,12(s0)
   14184:	02042823          	sw	zero,48(s0)
   14188:	4818                	lw	a4,16(s0)
   1418a:	fdb7f793          	andi	a5,a5,-37
   1418e:	00042223          	sw	zero,4(s0)
   14192:	c018                	sw	a4,0(s0)
   14194:	bf55                	j	14148 <__swsetup_r+0x74>
   14196:	853e                	mv	a0,a5
   14198:	e49fc0ef          	jal	10fe0 <__sinit>
   1419c:	b7b9                	j	140ea <__swsetup_r+0x16>
   1419e:	4725                	li	a4,9
   141a0:	c098                	sw	a4,0(s1)
   141a2:	0407e793          	ori	a5,a5,64
   141a6:	00f41623          	sh	a5,12(s0)
   141aa:	557d                	li	a0,-1
   141ac:	b78d                	j	1410e <__swsetup_r+0x3a>

000141ae <memchr>:
   141ae:	00357793          	andi	a5,a0,3
   141b2:	0ff5f693          	zext.b	a3,a1
   141b6:	c395                	beqz	a5,141da <memchr+0x2c>
   141b8:	fff60793          	addi	a5,a2,-1
   141bc:	c605                	beqz	a2,141e4 <memchr+0x36>
   141be:	567d                	li	a2,-1
   141c0:	a801                	j	141d0 <memchr+0x22>
   141c2:	0505                	addi	a0,a0,1
   141c4:	00357713          	andi	a4,a0,3
   141c8:	cb11                	beqz	a4,141dc <memchr+0x2e>
   141ca:	17fd                	addi	a5,a5,-1
   141cc:	00c78c63          	beq	a5,a2,141e4 <memchr+0x36>
   141d0:	00054703          	lbu	a4,0(a0)
   141d4:	fed717e3          	bne	a4,a3,141c2 <memchr+0x14>
   141d8:	8082                	ret
   141da:	87b2                	mv	a5,a2
   141dc:	470d                	li	a4,3
   141de:	00f76563          	bltu	a4,a5,141e8 <memchr+0x3a>
   141e2:	e3b9                	bnez	a5,14228 <memchr+0x7a>
   141e4:	4501                	li	a0,0
   141e6:	8082                	ret
   141e8:	0ff5f593          	zext.b	a1,a1
   141ec:	00859713          	slli	a4,a1,0x8
   141f0:	95ba                	add	a1,a1,a4
   141f2:	01059713          	slli	a4,a1,0x10
   141f6:	feff08b7          	lui	a7,0xfeff0
   141fa:	80808837          	lui	a6,0x80808
   141fe:	95ba                	add	a1,a1,a4
   14200:	eff88893          	addi	a7,a7,-257 # fefefeff <__BSS_END__+0xfefd3273>
   14204:	08080813          	addi	a6,a6,128 # 80808080 <__BSS_END__+0x807eb3f4>
   14208:	430d                	li	t1,3
   1420a:	a029                	j	14214 <memchr+0x66>
   1420c:	17f1                	addi	a5,a5,-4
   1420e:	0511                	addi	a0,a0,4
   14210:	fcf379e3          	bgeu	t1,a5,141e2 <memchr+0x34>
   14214:	4118                	lw	a4,0(a0)
   14216:	8f2d                	xor	a4,a4,a1
   14218:	01170633          	add	a2,a4,a7
   1421c:	fff74713          	not	a4,a4
   14220:	8f71                	and	a4,a4,a2
   14222:	01077733          	and	a4,a4,a6
   14226:	d37d                	beqz	a4,1420c <memchr+0x5e>
   14228:	97aa                	add	a5,a5,a0
   1422a:	a021                	j	14232 <memchr+0x84>
   1422c:	0505                	addi	a0,a0,1
   1422e:	faa78be3          	beq	a5,a0,141e4 <memchr+0x36>
   14232:	00054703          	lbu	a4,0(a0)
   14236:	fed71be3          	bne	a4,a3,1422c <memchr+0x7e>
   1423a:	8082                	ret

0001423c <strncpy>:
   1423c:	00a5e7b3          	or	a5,a1,a0
   14240:	8b8d                	andi	a5,a5,3
   14242:	e781                	bnez	a5,1424a <strncpy+0xe>
   14244:	478d                	li	a5,3
   14246:	02c7eb63          	bltu	a5,a2,1427c <strncpy+0x40>
   1424a:	872a                	mv	a4,a0
   1424c:	a811                	j	14260 <strncpy+0x24>
   1424e:	fff5c683          	lbu	a3,-1(a1)
   14252:	fff60813          	addi	a6,a2,-1
   14256:	fed78fa3          	sb	a3,-1(a5)
   1425a:	ca81                	beqz	a3,1426a <strncpy+0x2e>
   1425c:	873e                	mv	a4,a5
   1425e:	8642                	mv	a2,a6
   14260:	0585                	addi	a1,a1,1
   14262:	00170793          	addi	a5,a4,1
   14266:	f665                	bnez	a2,1424e <strncpy+0x12>
   14268:	8082                	ret
   1426a:	9732                	add	a4,a4,a2
   1426c:	04080463          	beqz	a6,142b4 <strncpy+0x78>
   14270:	0785                	addi	a5,a5,1
   14272:	fe078fa3          	sb	zero,-1(a5)
   14276:	fee79de3          	bne	a5,a4,14270 <strncpy+0x34>
   1427a:	8082                	ret
   1427c:	feff0337          	lui	t1,0xfeff0
   14280:	808088b7          	lui	a7,0x80808
   14284:	872a                	mv	a4,a0
   14286:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefd3273>
   1428a:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807eb3f4>
   1428e:	4e0d                	li	t3,3
   14290:	a039                	j	1429e <strncpy+0x62>
   14292:	c314                	sw	a3,0(a4)
   14294:	1671                	addi	a2,a2,-4
   14296:	0711                	addi	a4,a4,4
   14298:	0591                	addi	a1,a1,4
   1429a:	fcce73e3          	bgeu	t3,a2,14260 <strncpy+0x24>
   1429e:	4194                	lw	a3,0(a1)
   142a0:	006687b3          	add	a5,a3,t1
   142a4:	fff6c813          	not	a6,a3
   142a8:	0107f7b3          	and	a5,a5,a6
   142ac:	0117f7b3          	and	a5,a5,a7
   142b0:	d3ed                	beqz	a5,14292 <strncpy+0x56>
   142b2:	b77d                	j	14260 <strncpy+0x24>
   142b4:	8082                	ret

000142b6 <__localeconv_l>:
   142b6:	0f050513          	addi	a0,a0,240
   142ba:	8082                	ret

000142bc <_localeconv_r>:
   142bc:	e2818513          	addi	a0,gp,-472 # 1c868 <__global_locale+0xf0>
   142c0:	8082                	ret

000142c2 <localeconv>:
   142c2:	e2818513          	addi	a0,gp,-472 # 1c868 <__global_locale+0xf0>
   142c6:	8082                	ret

000142c8 <_sbrk_r>:
   142c8:	1141                	addi	sp,sp,-16
   142ca:	c422                	sw	s0,8(sp)
   142cc:	c226                	sw	s1,4(sp)
   142ce:	842a                	mv	s0,a0
   142d0:	852e                	mv	a0,a1
   142d2:	c606                	sw	ra,12(sp)
   142d4:	f201a223          	sw	zero,-220(gp) # 1c964 <errno>
   142d8:	7a1030ef          	jal	18278 <_sbrk>
   142dc:	57fd                	li	a5,-1
   142de:	00f50763          	beq	a0,a5,142ec <_sbrk_r+0x24>
   142e2:	40b2                	lw	ra,12(sp)
   142e4:	4422                	lw	s0,8(sp)
   142e6:	4492                	lw	s1,4(sp)
   142e8:	0141                	addi	sp,sp,16
   142ea:	8082                	ret
   142ec:	f241a783          	lw	a5,-220(gp) # 1c964 <errno>
   142f0:	dbed                	beqz	a5,142e2 <_sbrk_r+0x1a>
   142f2:	40b2                	lw	ra,12(sp)
   142f4:	c01c                	sw	a5,0(s0)
   142f6:	4422                	lw	s0,8(sp)
   142f8:	4492                	lw	s1,4(sp)
   142fa:	0141                	addi	sp,sp,16
   142fc:	8082                	ret

000142fe <__libc_fini_array>:
   142fe:	1141                	addi	sp,sp,-16
   14300:	c422                	sw	s0,8(sp)
   14302:	67f1                	lui	a5,0x1c
   14304:	6471                	lui	s0,0x1c
   14306:	23c78793          	addi	a5,a5,572 # 1c23c <__do_global_dtors_aux_fini_array_entry>
   1430a:	24040413          	addi	s0,s0,576 # 1c240 <__sglue>
   1430e:	8c1d                	sub	s0,s0,a5
   14310:	c226                	sw	s1,4(sp)
   14312:	c606                	sw	ra,12(sp)
   14314:	40245493          	srai	s1,s0,0x2
   14318:	c881                	beqz	s1,14328 <__libc_fini_array+0x2a>
   1431a:	1471                	addi	s0,s0,-4
   1431c:	943e                	add	s0,s0,a5
   1431e:	401c                	lw	a5,0(s0)
   14320:	14fd                	addi	s1,s1,-1
   14322:	1471                	addi	s0,s0,-4
   14324:	9782                	jalr	a5
   14326:	fce5                	bnez	s1,1431e <__libc_fini_array+0x20>
   14328:	40b2                	lw	ra,12(sp)
   1432a:	4422                	lw	s0,8(sp)
   1432c:	4492                	lw	s1,4(sp)
   1432e:	0141                	addi	sp,sp,16
   14330:	8082                	ret

00014332 <memmove>:
   14332:	02a5f263          	bgeu	a1,a0,14356 <memmove+0x24>
   14336:	00c58733          	add	a4,a1,a2
   1433a:	00e57e63          	bgeu	a0,a4,14356 <memmove+0x24>
   1433e:	00c507b3          	add	a5,a0,a2
   14342:	ca1d                	beqz	a2,14378 <memmove+0x46>
   14344:	fff74683          	lbu	a3,-1(a4)
   14348:	17fd                	addi	a5,a5,-1
   1434a:	177d                	addi	a4,a4,-1
   1434c:	00d78023          	sb	a3,0(a5)
   14350:	fef51ae3          	bne	a0,a5,14344 <memmove+0x12>
   14354:	8082                	ret
   14356:	47bd                	li	a5,15
   14358:	02c7e163          	bltu	a5,a2,1437a <memmove+0x48>
   1435c:	87aa                	mv	a5,a0
   1435e:	fff60693          	addi	a3,a2,-1
   14362:	ca59                	beqz	a2,143f8 <memmove+0xc6>
   14364:	0685                	addi	a3,a3,1
   14366:	96be                	add	a3,a3,a5
   14368:	0005c703          	lbu	a4,0(a1)
   1436c:	0785                	addi	a5,a5,1
   1436e:	0585                	addi	a1,a1,1
   14370:	fee78fa3          	sb	a4,-1(a5)
   14374:	fed79ae3          	bne	a5,a3,14368 <memmove+0x36>
   14378:	8082                	ret
   1437a:	00b567b3          	or	a5,a0,a1
   1437e:	8b8d                	andi	a5,a5,3
   14380:	eba5                	bnez	a5,143f0 <memmove+0xbe>
   14382:	ff060893          	addi	a7,a2,-16
   14386:	ff08f893          	andi	a7,a7,-16
   1438a:	08c1                	addi	a7,a7,16
   1438c:	011506b3          	add	a3,a0,a7
   14390:	872e                	mv	a4,a1
   14392:	87aa                	mv	a5,a0
   14394:	00072803          	lw	a6,0(a4)
   14398:	0741                	addi	a4,a4,16
   1439a:	07c1                	addi	a5,a5,16
   1439c:	ff07a823          	sw	a6,-16(a5)
   143a0:	ff472803          	lw	a6,-12(a4)
   143a4:	ff07aa23          	sw	a6,-12(a5)
   143a8:	ff872803          	lw	a6,-8(a4)
   143ac:	ff07ac23          	sw	a6,-8(a5)
   143b0:	ffc72803          	lw	a6,-4(a4)
   143b4:	ff07ae23          	sw	a6,-4(a5)
   143b8:	fcd79ee3          	bne	a5,a3,14394 <memmove+0x62>
   143bc:	00c67813          	andi	a6,a2,12
   143c0:	95c6                	add	a1,a1,a7
   143c2:	00f67713          	andi	a4,a2,15
   143c6:	02080a63          	beqz	a6,143fa <memmove+0xc8>
   143ca:	ffc70813          	addi	a6,a4,-4
   143ce:	ffc87813          	andi	a6,a6,-4
   143d2:	0811                	addi	a6,a6,4
   143d4:	010687b3          	add	a5,a3,a6
   143d8:	872e                	mv	a4,a1
   143da:	00072883          	lw	a7,0(a4)
   143de:	0691                	addi	a3,a3,4
   143e0:	0711                	addi	a4,a4,4
   143e2:	ff16ae23          	sw	a7,-4(a3)
   143e6:	fef69ae3          	bne	a3,a5,143da <memmove+0xa8>
   143ea:	8a0d                	andi	a2,a2,3
   143ec:	95c2                	add	a1,a1,a6
   143ee:	bf85                	j	1435e <memmove+0x2c>
   143f0:	fff60693          	addi	a3,a2,-1
   143f4:	87aa                	mv	a5,a0
   143f6:	b7bd                	j	14364 <memmove+0x32>
   143f8:	8082                	ret
   143fa:	863a                	mv	a2,a4
   143fc:	b78d                	j	1435e <memmove+0x2c>

000143fe <memcpy>:
   143fe:	00a5c7b3          	xor	a5,a1,a0
   14402:	8b8d                	andi	a5,a5,3
   14404:	00c508b3          	add	a7,a0,a2
   14408:	e7b1                	bnez	a5,14454 <memcpy+0x56>
   1440a:	478d                	li	a5,3
   1440c:	04c7f463          	bgeu	a5,a2,14454 <memcpy+0x56>
   14410:	00357793          	andi	a5,a0,3
   14414:	872a                	mv	a4,a0
   14416:	ebb9                	bnez	a5,1446c <memcpy+0x6e>
   14418:	ffc8f613          	andi	a2,a7,-4
   1441c:	40e606b3          	sub	a3,a2,a4
   14420:	02000793          	li	a5,32
   14424:	06d7c863          	blt	a5,a3,14494 <memcpy+0x96>
   14428:	86ae                	mv	a3,a1
   1442a:	87ba                	mv	a5,a4
   1442c:	02c77163          	bgeu	a4,a2,1444e <memcpy+0x50>
   14430:	0006a803          	lw	a6,0(a3)
   14434:	0791                	addi	a5,a5,4
   14436:	0691                	addi	a3,a3,4
   14438:	ff07ae23          	sw	a6,-4(a5)
   1443c:	fec7eae3          	bltu	a5,a2,14430 <memcpy+0x32>
   14440:	fff60793          	addi	a5,a2,-1
   14444:	8f99                	sub	a5,a5,a4
   14446:	9bf1                	andi	a5,a5,-4
   14448:	0791                	addi	a5,a5,4
   1444a:	973e                	add	a4,a4,a5
   1444c:	95be                	add	a1,a1,a5
   1444e:	01176663          	bltu	a4,a7,1445a <memcpy+0x5c>
   14452:	8082                	ret
   14454:	872a                	mv	a4,a0
   14456:	03157e63          	bgeu	a0,a7,14492 <memcpy+0x94>
   1445a:	0005c783          	lbu	a5,0(a1)
   1445e:	0705                	addi	a4,a4,1
   14460:	0585                	addi	a1,a1,1
   14462:	fef70fa3          	sb	a5,-1(a4)
   14466:	fee89ae3          	bne	a7,a4,1445a <memcpy+0x5c>
   1446a:	8082                	ret
   1446c:	0005c683          	lbu	a3,0(a1)
   14470:	0705                	addi	a4,a4,1
   14472:	00377793          	andi	a5,a4,3
   14476:	fed70fa3          	sb	a3,-1(a4)
   1447a:	0585                	addi	a1,a1,1
   1447c:	dfd1                	beqz	a5,14418 <memcpy+0x1a>
   1447e:	0005c683          	lbu	a3,0(a1)
   14482:	0705                	addi	a4,a4,1
   14484:	00377793          	andi	a5,a4,3
   14488:	fed70fa3          	sb	a3,-1(a4)
   1448c:	0585                	addi	a1,a1,1
   1448e:	fff9                	bnez	a5,1446c <memcpy+0x6e>
   14490:	b761                	j	14418 <memcpy+0x1a>
   14492:	8082                	ret
   14494:	1141                	addi	sp,sp,-16
   14496:	c622                	sw	s0,12(sp)
   14498:	02000413          	li	s0,32
   1449c:	0005a383          	lw	t2,0(a1)
   144a0:	0045a283          	lw	t0,4(a1)
   144a4:	0085af83          	lw	t6,8(a1)
   144a8:	00c5af03          	lw	t5,12(a1)
   144ac:	0105ae83          	lw	t4,16(a1)
   144b0:	0145ae03          	lw	t3,20(a1)
   144b4:	0185a303          	lw	t1,24(a1)
   144b8:	01c5a803          	lw	a6,28(a1)
   144bc:	5194                	lw	a3,32(a1)
   144be:	02470713          	addi	a4,a4,36
   144c2:	40e607b3          	sub	a5,a2,a4
   144c6:	fc772e23          	sw	t2,-36(a4)
   144ca:	fe572023          	sw	t0,-32(a4)
   144ce:	fff72223          	sw	t6,-28(a4)
   144d2:	ffe72423          	sw	t5,-24(a4)
   144d6:	ffd72623          	sw	t4,-20(a4)
   144da:	ffc72823          	sw	t3,-16(a4)
   144de:	fe672a23          	sw	t1,-12(a4)
   144e2:	ff072c23          	sw	a6,-8(a4)
   144e6:	fed72e23          	sw	a3,-4(a4)
   144ea:	02458593          	addi	a1,a1,36
   144ee:	faf447e3          	blt	s0,a5,1449c <memcpy+0x9e>
   144f2:	86ae                	mv	a3,a1
   144f4:	87ba                	mv	a5,a4
   144f6:	02c77163          	bgeu	a4,a2,14518 <memcpy+0x11a>
   144fa:	0006a803          	lw	a6,0(a3)
   144fe:	0791                	addi	a5,a5,4
   14500:	0691                	addi	a3,a3,4
   14502:	ff07ae23          	sw	a6,-4(a5)
   14506:	fec7eae3          	bltu	a5,a2,144fa <memcpy+0xfc>
   1450a:	fff60793          	addi	a5,a2,-1
   1450e:	8f99                	sub	a5,a5,a4
   14510:	9bf1                	andi	a5,a5,-4
   14512:	0791                	addi	a5,a5,4
   14514:	973e                	add	a4,a4,a5
   14516:	95be                	add	a1,a1,a5
   14518:	01176563          	bltu	a4,a7,14522 <memcpy+0x124>
   1451c:	4432                	lw	s0,12(sp)
   1451e:	0141                	addi	sp,sp,16
   14520:	8082                	ret
   14522:	0005c783          	lbu	a5,0(a1)
   14526:	0705                	addi	a4,a4,1
   14528:	0585                	addi	a1,a1,1
   1452a:	fef70fa3          	sb	a5,-1(a4)
   1452e:	fee887e3          	beq	a7,a4,1451c <memcpy+0x11e>
   14532:	0005c783          	lbu	a5,0(a1)
   14536:	0705                	addi	a4,a4,1
   14538:	0585                	addi	a1,a1,1
   1453a:	fef70fa3          	sb	a5,-1(a4)
   1453e:	fee892e3          	bne	a7,a4,14522 <memcpy+0x124>
   14542:	bfe9                	j	1451c <memcpy+0x11e>

00014544 <frexpl>:
   14544:	7159                	addi	sp,sp,-112
   14546:	d0ca                	sw	s2,96(sp)
   14548:	00c5a903          	lw	s2,12(a1)
   1454c:	ccd2                	sw	s4,88(sp)
   1454e:	cad6                	sw	s5,84(sp)
   14550:	c8da                	sw	s6,80(sp)
   14552:	0045aa83          	lw	s5,4(a1)
   14556:	0005ab03          	lw	s6,0(a1)
   1455a:	0085aa03          	lw	s4,8(a1)
   1455e:	cece                	sw	s3,92(sp)
   14560:	69a1                	lui	s3,0x8
   14562:	d4a2                	sw	s0,104(sp)
   14564:	d2a6                	sw	s1,100(sp)
   14566:	d686                	sw	ra,108(sp)
   14568:	01095493          	srli	s1,s2,0x10
   1456c:	19fd                	addi	s3,s3,-1 # 7fff <exit-0x8095>
   1456e:	d85a                	sw	s6,48(sp)
   14570:	da56                	sw	s5,52(sp)
   14572:	dc52                	sw	s4,56(sp)
   14574:	de4a                	sw	s2,60(sp)
   14576:	0134f4b3          	and	s1,s1,s3
   1457a:	00062023          	sw	zero,0(a2)
   1457e:	842a                	mv	s0,a0
   14580:	05348763          	beq	s1,s3,145ce <frexpl+0x8a>
   14584:	080c                	addi	a1,sp,16
   14586:	1008                	addi	a0,sp,32
   14588:	c6de                	sw	s7,76(sp)
   1458a:	d05a                	sw	s6,32(sp)
   1458c:	8bb2                	mv	s7,a2
   1458e:	d256                	sw	s5,36(sp)
   14590:	d452                	sw	s4,40(sp)
   14592:	d64a                	sw	s2,44(sp)
   14594:	c802                	sw	zero,16(sp)
   14596:	ca02                	sw	zero,20(sp)
   14598:	cc02                	sw	zero,24(sp)
   1459a:	ce02                	sw	zero,28(sp)
   1459c:	5df030ef          	jal	1837a <__eqtf2>
   145a0:	c941                	beqz	a0,14630 <frexpl+0xec>
   145a2:	4681                	li	a3,0
   145a4:	c8a1                	beqz	s1,145f4 <frexpl+0xb0>
   145a6:	7771                	lui	a4,0xffffc
   145a8:	0709                	addi	a4,a4,2 # ffffc002 <__BSS_END__+0xfffdf376>
   145aa:	5972                	lw	s2,60(sp)
   145ac:	94ba                	add	s1,s1,a4
   145ae:	800107b7          	lui	a5,0x80010
   145b2:	94b6                	add	s1,s1,a3
   145b4:	17fd                	addi	a5,a5,-1 # 8000ffff <__BSS_END__+0x7fff3373>
   145b6:	009ba023          	sw	s1,0(s7)
   145ba:	5b42                	lw	s6,48(sp)
   145bc:	5ad2                	lw	s5,52(sp)
   145be:	5a62                	lw	s4,56(sp)
   145c0:	4bb6                	lw	s7,76(sp)
   145c2:	00f97933          	and	s2,s2,a5
   145c6:	3ffe07b7          	lui	a5,0x3ffe0
   145ca:	00f96933          	or	s2,s2,a5
   145ce:	01642023          	sw	s6,0(s0)
   145d2:	01542223          	sw	s5,4(s0)
   145d6:	01442423          	sw	s4,8(s0)
   145da:	01242623          	sw	s2,12(s0)
   145de:	50b6                	lw	ra,108(sp)
   145e0:	8522                	mv	a0,s0
   145e2:	5426                	lw	s0,104(sp)
   145e4:	5496                	lw	s1,100(sp)
   145e6:	5906                	lw	s2,96(sp)
   145e8:	49f6                	lw	s3,92(sp)
   145ea:	4a66                	lw	s4,88(sp)
   145ec:	4ad6                	lw	s5,84(sp)
   145ee:	4b46                	lw	s6,80(sp)
   145f0:	6165                	addi	sp,sp,112
   145f2:	8082                	ret
   145f4:	407107b7          	lui	a5,0x40710
   145f8:	860a                	mv	a2,sp
   145fa:	080c                	addi	a1,sp,16
   145fc:	1008                	addi	a0,sp,32
   145fe:	c63e                	sw	a5,12(sp)
   14600:	c85a                	sw	s6,16(sp)
   14602:	ca56                	sw	s5,20(sp)
   14604:	cc52                	sw	s4,24(sp)
   14606:	ce4a                	sw	s2,28(sp)
   14608:	c002                	sw	zero,0(sp)
   1460a:	c202                	sw	zero,4(sp)
   1460c:	c402                	sw	zero,8(sp)
   1460e:	030040ef          	jal	1863e <__multf3>
   14612:	5702                	lw	a4,32(sp)
   14614:	57b2                	lw	a5,44(sp)
   14616:	f8e00693          	li	a3,-114
   1461a:	d83a                	sw	a4,48(sp)
   1461c:	5712                	lw	a4,36(sp)
   1461e:	0107d493          	srli	s1,a5,0x10
   14622:	de3e                	sw	a5,60(sp)
   14624:	da3a                	sw	a4,52(sp)
   14626:	5722                	lw	a4,40(sp)
   14628:	0134f4b3          	and	s1,s1,s3
   1462c:	dc3a                	sw	a4,56(sp)
   1462e:	bfa5                	j	145a6 <frexpl+0x62>
   14630:	4bb6                	lw	s7,76(sp)
   14632:	bf71                	j	145ce <frexpl+0x8a>

00014634 <__register_exitproc>:
   14634:	f281a783          	lw	a5,-216(gp) # 1c968 <__atexit>
   14638:	c3a1                	beqz	a5,14678 <__register_exitproc+0x44>
   1463a:	43d8                	lw	a4,4(a5)
   1463c:	487d                	li	a6,31
   1463e:	04e84f63          	blt	a6,a4,1469c <__register_exitproc+0x68>
   14642:	00271813          	slli	a6,a4,0x2
   14646:	c11d                	beqz	a0,1466c <__register_exitproc+0x38>
   14648:	01078333          	add	t1,a5,a6
   1464c:	08c32423          	sw	a2,136(t1)
   14650:	1887a883          	lw	a7,392(a5) # 40710188 <__BSS_END__+0x406f34fc>
   14654:	4605                	li	a2,1
   14656:	00e61633          	sll	a2,a2,a4
   1465a:	00c8e8b3          	or	a7,a7,a2
   1465e:	1917a423          	sw	a7,392(a5)
   14662:	10d32423          	sw	a3,264(t1)
   14666:	4689                	li	a3,2
   14668:	00d50f63          	beq	a0,a3,14686 <__register_exitproc+0x52>
   1466c:	0705                	addi	a4,a4,1
   1466e:	c3d8                	sw	a4,4(a5)
   14670:	97c2                	add	a5,a5,a6
   14672:	c78c                	sw	a1,8(a5)
   14674:	4501                	li	a0,0
   14676:	8082                	ret
   14678:	0bc18813          	addi	a6,gp,188 # 1cafc <__atexit0>
   1467c:	f301a423          	sw	a6,-216(gp) # 1c968 <__atexit>
   14680:	0bc18793          	addi	a5,gp,188 # 1cafc <__atexit0>
   14684:	bf5d                	j	1463a <__register_exitproc+0x6>
   14686:	18c7a683          	lw	a3,396(a5)
   1468a:	0705                	addi	a4,a4,1
   1468c:	c3d8                	sw	a4,4(a5)
   1468e:	8ed1                	or	a3,a3,a2
   14690:	18d7a623          	sw	a3,396(a5)
   14694:	97c2                	add	a5,a5,a6
   14696:	c78c                	sw	a1,8(a5)
   14698:	4501                	li	a0,0
   1469a:	8082                	ret
   1469c:	557d                	li	a0,-1
   1469e:	8082                	ret

000146a0 <_ldtoa_r>:
   146a0:	68ed                	lui	a7,0x1b
   146a2:	d6488893          	addi	a7,a7,-668 # 1ad64 <blanks.1+0x10>
   146a6:	0008af83          	lw	t6,0(a7)
   146aa:	0048af03          	lw	t5,4(a7)
   146ae:	0088ae83          	lw	t4,8(a7)
   146b2:	00c8ae03          	lw	t3,12(a7)
   146b6:	0108a303          	lw	t1,16(a7)
   146ba:	03852883          	lw	a7,56(a0)
   146be:	7171                	addi	sp,sp,-176
   146c0:	d14a                	sw	s2,160(sp)
   146c2:	cf4e                	sw	s3,156(sp)
   146c4:	cd52                	sw	s4,152(sp)
   146c6:	c95a                	sw	s6,144(sp)
   146c8:	c75e                	sw	s7,140(sp)
   146ca:	c562                	sw	s8,136(sp)
   146cc:	c366                	sw	s9,132(sp)
   146ce:	c16a                	sw	s10,128(sp)
   146d0:	d706                	sw	ra,172(sp)
   146d2:	d522                	sw	s0,168(sp)
   146d4:	d326                	sw	s1,164(sp)
   146d6:	cb56                	sw	s5,148(sp)
   146d8:	deee                	sw	s11,124(sp)
   146da:	cefe                	sw	t6,92(sp)
   146dc:	d0fa                	sw	t5,96(sp)
   146de:	d2f6                	sw	t4,100(sp)
   146e0:	d4f2                	sw	t3,104(sp)
   146e2:	d69a                	sw	t1,108(sp)
   146e4:	cc32                	sw	a2,24(sp)
   146e6:	ce36                	sw	a3,28(sp)
   146e8:	0005aa03          	lw	s4,0(a1)
   146ec:	0045a983          	lw	s3,4(a1)
   146f0:	0085a903          	lw	s2,8(a1)
   146f4:	00c5ac03          	lw	s8,12(a1)
   146f8:	8b2a                	mv	s6,a0
   146fa:	8bba                	mv	s7,a4
   146fc:	8cbe                	mv	s9,a5
   146fe:	8d42                	mv	s10,a6
   14700:	00088763          	beqz	a7,1470e <_ldtoa_r+0x6e>
   14704:	85c6                	mv	a1,a7
   14706:	24c010ef          	jal	15952 <__freedtoa>
   1470a:	020b2c23          	sw	zero,56(s6)
   1470e:	5626                	lw	a2,104(sp)
   14710:	01fc5693          	srli	a3,s8,0x1f
   14714:	001c1a93          	slli	s5,s8,0x1
   14718:	40165713          	srai	a4,a2,0x1
   1471c:	74f1                	lui	s1,0xffffc
   1471e:	001c1413          	slli	s0,s8,0x1
   14722:	8f75                	and	a4,a4,a3
   14724:	011ada93          	srli	s5,s5,0x11
   14728:	f9148493          	addi	s1,s1,-111 # ffffbf91 <__BSS_END__+0xfffdf305>
   1472c:	010c1d93          	slli	s11,s8,0x10
   14730:	00dca023          	sw	a3,0(s9)
   14734:	8005                	srli	s0,s0,0x1
   14736:	8f31                	xor	a4,a4,a2
   14738:	010ddd93          	srli	s11,s11,0x10
   1473c:	009a87b3          	add	a5,s5,s1
   14740:	100c                	addi	a1,sp,32
   14742:	1808                	addi	a0,sp,48
   14744:	d852                	sw	s4,48(sp)
   14746:	da4e                	sw	s3,52(sp)
   14748:	dc4a                	sw	s2,56(sp)
   1474a:	de22                	sw	s0,60(sp)
   1474c:	d052                	sw	s4,32(sp)
   1474e:	d24e                	sw	s3,36(sp)
   14750:	d44a                	sw	s2,40(sp)
   14752:	d622                	sw	s0,44(sp)
   14754:	d4ba                	sw	a4,104(sp)
   14756:	ca3e                	sw	a5,20(sp)
   14758:	c6d2                	sw	s4,76(sp)
   1475a:	c8ce                	sw	s3,80(sp)
   1475c:	caca                	sw	s2,84(sp)
   1475e:	ccee                	sw	s11,88(sp)
   14760:	45d050ef          	jal	1a3bc <__unordtf2>
   14764:	e979                	bnez	a0,1483a <_ldtoa_r+0x19a>
   14766:	7fff0cb7          	lui	s9,0x7fff0
   1476a:	54fd                	li	s1,-1
   1476c:	1cfd                	addi	s9,s9,-1 # 7ffeffff <__BSS_END__+0x7ffd3373>
   1476e:	100c                	addi	a1,sp,32
   14770:	1808                	addi	a0,sp,48
   14772:	d852                	sw	s4,48(sp)
   14774:	da4e                	sw	s3,52(sp)
   14776:	dc4a                	sw	s2,56(sp)
   14778:	de22                	sw	s0,60(sp)
   1477a:	d026                	sw	s1,32(sp)
   1477c:	d226                	sw	s1,36(sp)
   1477e:	d426                	sw	s1,40(sp)
   14780:	d666                	sw	s9,44(sp)
   14782:	43b050ef          	jal	1a3bc <__unordtf2>
   14786:	ed21                	bnez	a0,147de <_ldtoa_r+0x13e>
   14788:	100c                	addi	a1,sp,32
   1478a:	1808                	addi	a0,sp,48
   1478c:	5c7030ef          	jal	18552 <__letf2>
   14790:	04a05763          	blez	a0,147de <_ldtoa_r+0x13e>
   14794:	478d                	li	a5,3
   14796:	c4be                	sw	a5,72(sp)
   14798:	47e2                	lw	a5,24(sp)
   1479a:	4872                	lw	a6,28(sp)
   1479c:	4652                	lw	a2,20(sp)
   1479e:	00b8                	addi	a4,sp,72
   147a0:	c06a                	sw	s10,0(sp)
   147a2:	88de                	mv	a7,s7
   147a4:	00f4                	addi	a3,sp,76
   147a6:	08ec                	addi	a1,sp,92
   147a8:	855a                	mv	a0,s6
   147aa:	2235                	jal	148d6 <__gdtoa>
   147ac:	000ba703          	lw	a4,0(s7)
   147b0:	77e1                	lui	a5,0xffff8
   147b2:	00f71763          	bne	a4,a5,147c0 <_ldtoa_r+0x120>
   147b6:	800007b7          	lui	a5,0x80000
   147ba:	17fd                	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffe3373>
   147bc:	00fba023          	sw	a5,0(s7)
   147c0:	50ba                	lw	ra,172(sp)
   147c2:	542a                	lw	s0,168(sp)
   147c4:	549a                	lw	s1,164(sp)
   147c6:	590a                	lw	s2,160(sp)
   147c8:	49fa                	lw	s3,156(sp)
   147ca:	4a6a                	lw	s4,152(sp)
   147cc:	4ada                	lw	s5,148(sp)
   147ce:	4b4a                	lw	s6,144(sp)
   147d0:	4bba                	lw	s7,140(sp)
   147d2:	4c2a                	lw	s8,136(sp)
   147d4:	4c9a                	lw	s9,132(sp)
   147d6:	4d0a                	lw	s10,128(sp)
   147d8:	5df6                	lw	s11,124(sp)
   147da:	614d                	addi	sp,sp,176
   147dc:	8082                	ret
   147de:	67c1                	lui	a5,0x10
   147e0:	100c                	addi	a1,sp,32
   147e2:	1808                	addi	a0,sp,48
   147e4:	d852                	sw	s4,48(sp)
   147e6:	da4e                	sw	s3,52(sp)
   147e8:	dc4a                	sw	s2,56(sp)
   147ea:	de22                	sw	s0,60(sp)
   147ec:	d002                	sw	zero,32(sp)
   147ee:	d202                	sw	zero,36(sp)
   147f0:	d402                	sw	zero,40(sp)
   147f2:	d63e                	sw	a5,44(sp)
   147f4:	473030ef          	jal	18466 <__getf2>
   147f8:	00054963          	bltz	a0,1480a <_ldtoa_r+0x16a>
   147fc:	67c1                	lui	a5,0x10
   147fe:	00fdedb3          	or	s11,s11,a5
   14802:	4785                	li	a5,1
   14804:	c4be                	sw	a5,72(sp)
   14806:	ccee                	sw	s11,88(sp)
   14808:	bf41                	j	14798 <_ldtoa_r+0xf8>
   1480a:	100c                	addi	a1,sp,32
   1480c:	1808                	addi	a0,sp,48
   1480e:	d852                	sw	s4,48(sp)
   14810:	da4e                	sw	s3,52(sp)
   14812:	dc4a                	sw	s2,56(sp)
   14814:	de62                	sw	s8,60(sp)
   14816:	d002                	sw	zero,32(sp)
   14818:	d202                	sw	zero,36(sp)
   1481a:	d402                	sw	zero,40(sp)
   1481c:	d602                	sw	zero,44(sp)
   1481e:	35d030ef          	jal	1837a <__eqtf2>
   14822:	e119                	bnez	a0,14828 <_ldtoa_r+0x188>
   14824:	c482                	sw	zero,72(sp)
   14826:	bf8d                	j	14798 <_ldtoa_r+0xf8>
   14828:	74f1                	lui	s1,0xffffc
   1482a:	4789                	li	a5,2
   1482c:	f9248493          	addi	s1,s1,-110 # ffffbf92 <__BSS_END__+0xfffdf306>
   14830:	c4be                	sw	a5,72(sp)
   14832:	009a87b3          	add	a5,s5,s1
   14836:	ca3e                	sw	a5,20(sp)
   14838:	b785                	j	14798 <_ldtoa_r+0xf8>
   1483a:	4791                	li	a5,4
   1483c:	c4be                	sw	a5,72(sp)
   1483e:	bfa9                	j	14798 <_ldtoa_r+0xf8>

00014840 <_ldcheck>:
   14840:	7139                	addi	sp,sp,-64
   14842:	da26                	sw	s1,52(sp)
   14844:	4544                	lw	s1,12(a0)
   14846:	d64e                	sw	s3,44(sp)
   14848:	d452                	sw	s4,40(sp)
   1484a:	00852983          	lw	s3,8(a0)
   1484e:	00452a03          	lw	s4,4(a0)
   14852:	d256                	sw	s5,36(sp)
   14854:	00052a83          	lw	s5,0(a0)
   14858:	0486                	slli	s1,s1,0x1
   1485a:	8085                	srli	s1,s1,0x1
   1485c:	858a                	mv	a1,sp
   1485e:	0808                	addi	a0,sp,16
   14860:	de06                	sw	ra,60(sp)
   14862:	c856                	sw	s5,16(sp)
   14864:	ca52                	sw	s4,20(sp)
   14866:	cc4e                	sw	s3,24(sp)
   14868:	ce26                	sw	s1,28(sp)
   1486a:	c056                	sw	s5,0(sp)
   1486c:	c252                	sw	s4,4(sp)
   1486e:	c44e                	sw	s3,8(sp)
   14870:	c626                	sw	s1,12(sp)
   14872:	34b050ef          	jal	1a3bc <__unordtf2>
   14876:	e921                	bnez	a0,148c6 <_ldcheck+0x86>
   14878:	d05a                	sw	s6,32(sp)
   1487a:	7fff0b37          	lui	s6,0x7fff0
   1487e:	d84a                	sw	s2,48(sp)
   14880:	1b7d                	addi	s6,s6,-1 # 7ffeffff <__BSS_END__+0x7ffd3373>
   14882:	597d                	li	s2,-1
   14884:	858a                	mv	a1,sp
   14886:	0808                	addi	a0,sp,16
   14888:	dc22                	sw	s0,56(sp)
   1488a:	c04a                	sw	s2,0(sp)
   1488c:	c24a                	sw	s2,4(sp)
   1488e:	c44a                	sw	s2,8(sp)
   14890:	c65a                	sw	s6,12(sp)
   14892:	4405                	li	s0,1
   14894:	329050ef          	jal	1a3bc <__unordtf2>
   14898:	c105                	beqz	a0,148b8 <_ldcheck+0x78>
   1489a:	50f2                	lw	ra,60(sp)
   1489c:	00144513          	xori	a0,s0,1
   148a0:	5462                	lw	s0,56(sp)
   148a2:	0ff57513          	zext.b	a0,a0
   148a6:	5942                	lw	s2,48(sp)
   148a8:	5b02                	lw	s6,32(sp)
   148aa:	54d2                	lw	s1,52(sp)
   148ac:	59b2                	lw	s3,44(sp)
   148ae:	5a22                	lw	s4,40(sp)
   148b0:	5a92                	lw	s5,36(sp)
   148b2:	0506                	slli	a0,a0,0x1
   148b4:	6121                	addi	sp,sp,64
   148b6:	8082                	ret
   148b8:	858a                	mv	a1,sp
   148ba:	0808                	addi	a0,sp,16
   148bc:	497030ef          	jal	18552 <__letf2>
   148c0:	00152413          	slti	s0,a0,1
   148c4:	bfd9                	j	1489a <_ldcheck+0x5a>
   148c6:	50f2                	lw	ra,60(sp)
   148c8:	54d2                	lw	s1,52(sp)
   148ca:	59b2                	lw	s3,44(sp)
   148cc:	5a22                	lw	s4,40(sp)
   148ce:	5a92                	lw	s5,36(sp)
   148d0:	4505                	li	a0,1
   148d2:	6121                	addi	sp,sp,64
   148d4:	8082                	ret

000148d6 <__gdtoa>:
   148d6:	7171                	addi	sp,sp,-176
   148d8:	cb56                	sw	s5,148(sp)
   148da:	00072a83          	lw	s5,0(a4)
   148de:	d326                	sw	s1,164(sp)
   148e0:	c75e                	sw	s7,140(sp)
   148e2:	fcfafe13          	andi	t3,s5,-49
   148e6:	d706                	sw	ra,172(sp)
   148e8:	01c72023          	sw	t3,0(a4)
   148ec:	8bba                	mv	s7,a4
   148ee:	574a                	lw	a4,176(sp)
   148f0:	00fafe13          	andi	t3,s5,15
   148f4:	4e8d                	li	t4,3
   148f6:	c63a                	sw	a4,12(sp)
   148f8:	c832                	sw	a2,16(sp)
   148fa:	d442                	sw	a6,40(sp)
   148fc:	84c6                	mv	s1,a7
   148fe:	4fde0563          	beq	t3,t4,14de8 <__gdtoa+0x512>
   14902:	c95a                	sw	s6,144(sp)
   14904:	00cafb13          	andi	s6,s5,12
   14908:	460b1e63          	bnez	s6,14d84 <__gdtoa+0x4ae>
   1490c:	d522                	sw	s0,168(sp)
   1490e:	842a                	mv	s0,a0
   14910:	4a0e0863          	beqz	t3,14dc0 <__gdtoa+0x4ea>
   14914:	c16a                	sw	s10,128(sp)
   14916:	0005ad03          	lw	s10,0(a1)
   1491a:	d14a                	sw	s2,160(sp)
   1491c:	cf4e                	sw	s3,156(sp)
   1491e:	cd52                	sw	s4,152(sp)
   14920:	c366                	sw	s9,132(sp)
   14922:	02000613          	li	a2,32
   14926:	8a2e                	mv	s4,a1
   14928:	893e                	mv	s2,a5
   1492a:	89b6                	mv	s3,a3
   1492c:	4581                	li	a1,0
   1492e:	02000793          	li	a5,32
   14932:	01a65663          	bge	a2,s10,1493e <__gdtoa+0x68>
   14936:	0786                	slli	a5,a5,0x1
   14938:	0585                	addi	a1,a1,1
   1493a:	ffa7cee3          	blt	a5,s10,14936 <__gdtoa+0x60>
   1493e:	8522                	mv	a0,s0
   14940:	254010ef          	jal	15b94 <_Balloc>
   14944:	8caa                	mv	s9,a0
   14946:	68050463          	beqz	a0,14fce <__gdtoa+0x6f8>
   1494a:	fffd0893          	addi	a7,s10,-1
   1494e:	4058d893          	srai	a7,a7,0x5
   14952:	00289513          	slli	a0,a7,0x2
   14956:	c562                	sw	s8,136(sp)
   14958:	deee                	sw	s11,124(sp)
   1495a:	954e                	add	a0,a0,s3
   1495c:	014c8613          	addi	a2,s9,20
   14960:	87ce                	mv	a5,s3
   14962:	4398                	lw	a4,0(a5)
   14964:	0791                	addi	a5,a5,4 # 10004 <exit-0x90>
   14966:	0611                	addi	a2,a2,4
   14968:	fee62e23          	sw	a4,-4(a2)
   1496c:	fef57be3          	bgeu	a0,a5,14962 <__gdtoa+0x8c>
   14970:	0505                	addi	a0,a0,1
   14972:	00198793          	addi	a5,s3,1
   14976:	4611                	li	a2,4
   14978:	00f56563          	bltu	a0,a5,14982 <__gdtoa+0xac>
   1497c:	088a                	slli	a7,a7,0x2
   1497e:	00488613          	addi	a2,a7,4
   14982:	40265d93          	srai	s11,a2,0x2
   14986:	9666                	add	a2,a2,s9
   14988:	a021                	j	14990 <__gdtoa+0xba>
   1498a:	1671                	addi	a2,a2,-4
   1498c:	4a0d8263          	beqz	s11,14e30 <__gdtoa+0x55a>
   14990:	4a1c                	lw	a5,16(a2)
   14992:	8c6e                	mv	s8,s11
   14994:	1dfd                	addi	s11,s11,-1
   14996:	dbf5                	beqz	a5,1498a <__gdtoa+0xb4>
   14998:	004d8793          	addi	a5,s11,4
   1499c:	078a                	slli	a5,a5,0x2
   1499e:	97e6                	add	a5,a5,s9
   149a0:	43c8                	lw	a0,4(a5)
   149a2:	018ca823          	sw	s8,16(s9)
   149a6:	0c16                	slli	s8,s8,0x5
   149a8:	40e010ef          	jal	15db6 <__hi0bits>
   149ac:	40ac0db3          	sub	s11,s8,a0
   149b0:	8566                	mv	a0,s9
   149b2:	1a8010ef          	jal	15b5a <__trailz_D2A>
   149b6:	d6aa                	sw	a0,108(sp)
   149b8:	4c42                	lw	s8,16(sp)
   149ba:	48051f63          	bnez	a0,14e58 <__gdtoa+0x582>
   149be:	010ca603          	lw	a2,16(s9)
   149c2:	3e060463          	beqz	a2,14daa <__gdtoa+0x4d4>
   149c6:	10ec                	addi	a1,sp,108
   149c8:	8566                	mv	a0,s9
   149ca:	2f7010ef          	jal	164c0 <__b2d>
   149ce:	ac2a                	fsd	fa0,24(sp)
   149d0:	4572                	lw	a0,28(sp)
   149d2:	45e2                	lw	a1,24(sp)
   149d4:	01bc08b3          	add	a7,s8,s11
   149d8:	00c51613          	slli	a2,a0,0xc
   149dc:	8f2e                	mv	t5,a1
   149de:	8231                	srli	a2,a2,0xc
   149e0:	3ff005b7          	lui	a1,0x3ff00
   149e4:	8e4d                	or	a2,a2,a1
   149e6:	cc7a                	sw	t5,24(sp)
   149e8:	ce32                	sw	a2,28(sp)
   149ea:	ea81b707          	fld	fa4,-344(gp) # 1c8e8 <__SDATA_BEGIN__>
   149ee:	27e2                	fld	fa5,24(sp)
   149f0:	eb01b687          	fld	fa3,-336(gp) # 1c8f0 <__SDATA_BEGIN__+0x8>
   149f4:	0ae7f753          	fsub.d	fa4,fa5,fa4
   149f8:	eb81b787          	fld	fa5,-328(gp) # 1c8f8 <__SDATA_BEGIN__+0x10>
   149fc:	fff88593          	addi	a1,a7,-1
   14a00:	852e                	mv	a0,a1
   14a02:	7ad77743          	fmadd.d	fa4,fa4,fa3,fa5
   14a06:	d20587d3          	fcvt.d.w	fa5,a1
   14a0a:	ec01b687          	fld	fa3,-320(gp) # 1c900 <__SDATA_BEGIN__+0x18>
   14a0e:	72d7f7c3          	fmadd.d	fa5,fa5,fa3,fa4
   14a12:	0005d563          	bgez	a1,14a1c <__gdtoa+0x146>
   14a16:	4505                	li	a0,1
   14a18:	41150533          	sub	a0,a0,a7
   14a1c:	bcb50513          	addi	a0,a0,-1077
   14a20:	00a05863          	blez	a0,14a30 <__gdtoa+0x15a>
   14a24:	d20506d3          	fcvt.d.w	fa3,a0
   14a28:	ec81b707          	fld	fa4,-312(gp) # 1c908 <__SDATA_BEGIN__+0x20>
   14a2c:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   14a30:	d2000753          	fcvt.d.w	fa4,zero
   14a34:	c2079853          	fcvt.w.d	a6,fa5,rtz
   14a38:	a2e79553          	flt.d	a0,fa5,fa4
   14a3c:	c909                	beqz	a0,14a4e <__gdtoa+0x178>
   14a3e:	d2080753          	fcvt.d.w	fa4,a6
   14a42:	a2f72553          	feq.d	a0,fa4,fa5
   14a46:	00153513          	seqz	a0,a0
   14a4a:	40a80833          	sub	a6,a6,a0
   14a4e:	01459e93          	slli	t4,a1,0x14
   14a52:	40bd8533          	sub	a0,s11,a1
   14a56:	45d9                	li	a1,22
   14a58:	00ce8fb3          	add	t6,t4,a2
   14a5c:	fff50e93          	addi	t4,a0,-1
   14a60:	3d05eb63          	bltu	a1,a6,14e36 <__gdtoa+0x560>
   14a64:	65ed                	lui	a1,0x1b
   14a66:	00381613          	slli	a2,a6,0x3
   14a6a:	dd858593          	addi	a1,a1,-552 # 1add8 <__mprec_tens>
   14a6e:	962e                	add	a2,a2,a1
   14a70:	cc7a                	sw	t5,24(sp)
   14a72:	ce7e                	sw	t6,28(sp)
   14a74:	221c                	fld	fa5,0(a2)
   14a76:	2762                	fld	fa4,24(sp)
   14a78:	a2f71653          	flt.d	a2,fa4,fa5
   14a7c:	58061163          	bnez	a2,14ffe <__gdtoa+0x728>
   14a80:	ca82                	sw	zero,84(sp)
   14a82:	cc02                	sw	zero,24(sp)
   14a84:	00a04763          	bgtz	a0,14a92 <__gdtoa+0x1bc>
   14a88:	4605                	li	a2,1
   14a8a:	40a607b3          	sub	a5,a2,a0
   14a8e:	cc3e                	sw	a5,24(sp)
   14a90:	4e81                	li	t4,0
   14a92:	9ec2                	add	t4,t4,a6
   14a94:	da42                	sw	a6,52(sp)
   14a96:	d802                	sw	zero,48(sp)
   14a98:	4625                	li	a2,9
   14a9a:	3d266a63          	bltu	a2,s2,14e6e <__gdtoa+0x598>
   14a9e:	4615                	li	a2,5
   14aa0:	57264263          	blt	a2,s2,15004 <__gdtoa+0x72e>
   14aa4:	3fd88893          	addi	a7,a7,1021
   14aa8:	7f88b793          	sltiu	a5,a7,2040
   14aac:	4591                	li	a1,4
   14aae:	ccbe                	sw	a5,88(sp)
   14ab0:	18b909e3          	beq	s2,a1,15442 <__gdtoa+0xb6c>
   14ab4:	18c903e3          	beq	s2,a2,1543a <__gdtoa+0xb64>
   14ab8:	4609                	li	a2,2
   14aba:	18c907e3          	beq	s2,a2,15448 <__gdtoa+0xb72>
   14abe:	460d                	li	a2,3
   14ac0:	c882                	sw	zero,80(sp)
   14ac2:	3ac91c63          	bne	s2,a2,14e7a <__gdtoa+0x5a4>
   14ac6:	57d2                	lw	a5,52(sp)
   14ac8:	5722                	lw	a4,40(sp)
   14aca:	97ba                	add	a5,a5,a4
   14acc:	cebe                	sw	a5,92(sp)
   14ace:	0785                	addi	a5,a5,1
   14ad0:	d63e                	sw	a5,44(sp)
   14ad2:	00f05ce3          	blez	a5,152ea <__gdtoa+0xa14>
   14ad6:	863e                	mv	a2,a5
   14ad8:	85be                	mv	a1,a5
   14ada:	8522                	mv	a0,s0
   14adc:	c4fa                	sw	t5,72(sp)
   14ade:	c6fe                	sw	t6,76(sp)
   14ae0:	c0f6                	sw	t4,64(sp)
   14ae2:	dc42                	sw	a6,56(sp)
   14ae4:	d6b2                	sw	a2,108(sp)
   14ae6:	5bd000ef          	jal	158a2 <__rv_alloc_D2A>
   14aea:	88aa                	mv	a7,a0
   14aec:	32050863          	beqz	a0,14e1c <__gdtoa+0x546>
   14af0:	00ca2783          	lw	a5,12(s4)
   14af4:	5862                	lw	a6,56(sp)
   14af6:	4e86                	lw	t4,64(sp)
   14af8:	17fd                	addi	a5,a5,-1
   14afa:	d03e                	sw	a5,32(sp)
   14afc:	4f26                	lw	t5,72(sp)
   14afe:	4fb6                	lw	t6,76(sp)
   14b00:	3a078363          	beqz	a5,14ea6 <__gdtoa+0x5d0>
   14b04:	4e07ca63          	bltz	a5,14ff8 <__gdtoa+0x722>
   14b08:	100af313          	andi	t1,s5,256
   14b0c:	38031863          	bnez	t1,14e9c <__gdtoa+0x5c6>
   14b10:	000c4663          	bltz	s8,14b1c <__gdtoa+0x246>
   14b14:	57d2                	lw	a5,52(sp)
   14b16:	4639                	li	a2,14
   14b18:	50f65363          	bge	a2,a5,1501e <__gdtoa+0x748>
   14b1c:	47c6                	lw	a5,80(sp)
   14b1e:	4c078863          	beqz	a5,14fee <__gdtoa+0x718>
   14b22:	41bd06b3          	sub	a3,s10,s11
   14b26:	004a2603          	lw	a2,4(s4)
   14b2a:	00168593          	addi	a1,a3,1
   14b2e:	d6ae                	sw	a1,108(sp)
   14b30:	40dc06b3          	sub	a3,s8,a3
   14b34:	7ec6dd63          	bge	a3,a2,1532e <__gdtoa+0xa58>
   14b38:	ffd90693          	addi	a3,s2,-3
   14b3c:	9af5                	andi	a3,a3,-3
   14b3e:	72068863          	beqz	a3,1526e <__gdtoa+0x998>
   14b42:	40cc06b3          	sub	a3,s8,a2
   14b46:	0685                	addi	a3,a3,1
   14b48:	d6b6                	sw	a3,108(sp)
   14b4a:	4605                	li	a2,1
   14b4c:	01265863          	bge	a2,s2,14b5c <__gdtoa+0x286>
   14b50:	57b2                	lw	a5,44(sp)
   14b52:	00f05563          	blez	a5,14b5c <__gdtoa+0x286>
   14b56:	57b2                	lw	a5,44(sp)
   14b58:	40d7c1e3          	blt	a5,a3,1575a <__gdtoa+0xe84>
   14b5c:	47e2                	lw	a5,24(sp)
   14b5e:	5d42                	lw	s10,48(sp)
   14b60:	9eb6                	add	t4,t4,a3
   14b62:	dc3e                	sw	a5,56(sp)
   14b64:	97b6                	add	a5,a5,a3
   14b66:	cc3e                	sw	a5,24(sp)
   14b68:	4585                	li	a1,1
   14b6a:	8522                	mv	a0,s0
   14b6c:	ccc6                	sw	a7,88(sp)
   14b6e:	c4f6                	sw	t4,72(sp)
   14b70:	c0c2                	sw	a6,64(sp)
   14b72:	322010ef          	jal	15e94 <__i2b>
   14b76:	4806                	lw	a6,64(sp)
   14b78:	4ea6                	lw	t4,72(sp)
   14b7a:	48e6                	lw	a7,88(sp)
   14b7c:	8c2a                	mv	s8,a0
   14b7e:	28050f63          	beqz	a0,14e1c <__gdtoa+0x546>
   14b82:	57e2                	lw	a5,56(sp)
   14b84:	c385                	beqz	a5,14ba4 <__gdtoa+0x2ce>
   14b86:	01d05f63          	blez	t4,14ba4 <__gdtoa+0x2ce>
   14b8a:	86be                	mv	a3,a5
   14b8c:	00fed363          	bge	t4,a5,14b92 <__gdtoa+0x2bc>
   14b90:	86f6                	mv	a3,t4
   14b92:	47e2                	lw	a5,24(sp)
   14b94:	d6b6                	sw	a3,108(sp)
   14b96:	40de8eb3          	sub	t4,t4,a3
   14b9a:	8f95                	sub	a5,a5,a3
   14b9c:	cc3e                	sw	a5,24(sp)
   14b9e:	57e2                	lw	a5,56(sp)
   14ba0:	8f95                	sub	a5,a5,a3
   14ba2:	dc3e                	sw	a5,56(sp)
   14ba4:	57c2                	lw	a5,48(sp)
   14ba6:	c39d                	beqz	a5,14bcc <__gdtoa+0x2f6>
   14ba8:	47c6                	lw	a5,80(sp)
   14baa:	c399                	beqz	a5,14bb0 <__gdtoa+0x2da>
   14bac:	7e0d1863          	bnez	s10,1539c <__gdtoa+0xac6>
   14bb0:	5642                	lw	a2,48(sp)
   14bb2:	85e6                	mv	a1,s9
   14bb4:	8522                	mv	a0,s0
   14bb6:	ccc6                	sw	a7,88(sp)
   14bb8:	c4f6                	sw	t4,72(sp)
   14bba:	c0c2                	sw	a6,64(sp)
   14bbc:	4d6010ef          	jal	16092 <__pow5mult>
   14bc0:	4806                	lw	a6,64(sp)
   14bc2:	4ea6                	lw	t4,72(sp)
   14bc4:	48e6                	lw	a7,88(sp)
   14bc6:	8caa                	mv	s9,a0
   14bc8:	24050a63          	beqz	a0,14e1c <__gdtoa+0x546>
   14bcc:	4585                	li	a1,1
   14bce:	8522                	mv	a0,s0
   14bd0:	c4c6                	sw	a7,72(sp)
   14bd2:	c0f6                	sw	t4,64(sp)
   14bd4:	d842                	sw	a6,48(sp)
   14bd6:	2be010ef          	jal	15e94 <__i2b>
   14bda:	8d2a                	mv	s10,a0
   14bdc:	24050063          	beqz	a0,14e1c <__gdtoa+0x546>
   14be0:	5842                	lw	a6,48(sp)
   14be2:	4e86                	lw	t4,64(sp)
   14be4:	48a6                	lw	a7,72(sp)
   14be6:	70081663          	bnez	a6,152f2 <__gdtoa+0xa1c>
   14bea:	4685                	li	a3,1
   14bec:	5126d263          	bge	a3,s2,150f0 <__gdtoa+0x81a>
   14bf0:	4a7d                	li	s4,31
   14bf2:	47e2                	lw	a5,24(sp)
   14bf4:	41da0a33          	sub	s4,s4,t4
   14bf8:	1a71                	addi	s4,s4,-4
   14bfa:	01fa7a13          	andi	s4,s4,31
   14bfe:	00fa0633          	add	a2,s4,a5
   14c02:	d6d2                	sw	s4,108(sp)
   14c04:	87d2                	mv	a5,s4
   14c06:	58c04d63          	bgtz	a2,151a0 <__gdtoa+0x8ca>
   14c0a:	00fe8633          	add	a2,t4,a5
   14c0e:	1ec04c63          	bgtz	a2,14e06 <__gdtoa+0x530>
   14c12:	47d6                	lw	a5,84(sp)
   14c14:	5a079563          	bnez	a5,151be <__gdtoa+0x8e8>
   14c18:	57b2                	lw	a5,44(sp)
   14c1a:	66f05a63          	blez	a5,1528e <__gdtoa+0x9b8>
   14c1e:	47c6                	lw	a5,80(sp)
   14c20:	5c078d63          	beqz	a5,151fa <__gdtoa+0x924>
   14c24:	57e2                	lw	a5,56(sp)
   14c26:	00fa0633          	add	a2,s4,a5
   14c2a:	7ec04763          	bgtz	a2,15418 <__gdtoa+0xb42>
   14c2e:	8a62                	mv	s4,s8
   14c30:	02081ce3          	bnez	a6,15468 <__gdtoa+0xb92>
   14c34:	5b32                	lw	s6,44(sp)
   14c36:	8dc6                	mv	s11,a7
   14c38:	4685                	li	a3,1
   14c3a:	d446                	sw	a7,40(sp)
   14c3c:	cc5e                	sw	s7,24(sp)
   14c3e:	d626                	sw	s1,44(sp)
   14c40:	a885                	j	14cb0 <__gdtoa+0x3da>
   14c42:	8522                	mv	a0,s0
   14c44:	7bd000ef          	jal	15c00 <_Bfree>
   14c48:	100ac3e3          	bltz	s5,1554e <__gdtoa+0xc78>
   14c4c:	01596ab3          	or	s5,s2,s5
   14c50:	000a9763          	bnez	s5,14c5e <__gdtoa+0x388>
   14c54:	0009a783          	lw	a5,0(s3)
   14c58:	8b85                	andi	a5,a5,1
   14c5a:	0e078ae3          	beqz	a5,1554e <__gdtoa+0xc78>
   14c5e:	5782                	lw	a5,32(sp)
   14c60:	4709                	li	a4,2
   14c62:	26e798e3          	bne	a5,a4,156d2 <__gdtoa+0xdfc>
   14c66:	017d8023          	sb	s7,0(s11)
   14c6a:	57b6                	lw	a5,108(sp)
   14c6c:	0d85                	addi	s11,s11,1
   14c6e:	1efb0fe3          	beq	s6,a5,1566c <__gdtoa+0xd96>
   14c72:	85e6                	mv	a1,s9
   14c74:	4681                	li	a3,0
   14c76:	4629                	li	a2,10
   14c78:	8522                	mv	a0,s0
   14c7a:	799000ef          	jal	15c12 <__multadd>
   14c7e:	8caa                	mv	s9,a0
   14c80:	18050e63          	beqz	a0,14e1c <__gdtoa+0x546>
   14c84:	4681                	li	a3,0
   14c86:	4629                	li	a2,10
   14c88:	85e2                	mv	a1,s8
   14c8a:	8522                	mv	a0,s0
   14c8c:	494c0c63          	beq	s8,s4,15124 <__gdtoa+0x84e>
   14c90:	783000ef          	jal	15c12 <__multadd>
   14c94:	8c2a                	mv	s8,a0
   14c96:	18050363          	beqz	a0,14e1c <__gdtoa+0x546>
   14c9a:	85d2                	mv	a1,s4
   14c9c:	4681                	li	a3,0
   14c9e:	4629                	li	a2,10
   14ca0:	8522                	mv	a0,s0
   14ca2:	771000ef          	jal	15c12 <__multadd>
   14ca6:	8a2a                	mv	s4,a0
   14ca8:	16050a63          	beqz	a0,14e1c <__gdtoa+0x546>
   14cac:	56b6                	lw	a3,108(sp)
   14cae:	0685                	addi	a3,a3,1
   14cb0:	85ea                	mv	a1,s10
   14cb2:	8566                	mv	a0,s9
   14cb4:	d6b6                	sw	a3,108(sp)
   14cb6:	4ab000ef          	jal	15960 <__quorem_D2A>
   14cba:	84aa                	mv	s1,a0
   14cbc:	85e2                	mv	a1,s8
   14cbe:	8566                	mv	a0,s9
   14cc0:	5b4010ef          	jal	16274 <__mcmp>
   14cc4:	85ea                	mv	a1,s10
   14cc6:	8aaa                	mv	s5,a0
   14cc8:	8652                	mv	a2,s4
   14cca:	8522                	mv	a0,s0
   14ccc:	5e4010ef          	jal	162b0 <__mdiff>
   14cd0:	03048b93          	addi	s7,s1,48
   14cd4:	85aa                	mv	a1,a0
   14cd6:	14050363          	beqz	a0,14e1c <__gdtoa+0x546>
   14cda:	455c                	lw	a5,12(a0)
   14cdc:	f3bd                	bnez	a5,14c42 <__gdtoa+0x36c>
   14cde:	c82a                	sw	a0,16(sp)
   14ce0:	8566                	mv	a0,s9
   14ce2:	592010ef          	jal	16274 <__mcmp>
   14ce6:	45c2                	lw	a1,16(sp)
   14ce8:	86aa                	mv	a3,a0
   14cea:	8522                	mv	a0,s0
   14cec:	c836                	sw	a3,16(sp)
   14cee:	713000ef          	jal	15c00 <_Bfree>
   14cf2:	46c2                	lw	a3,16(sp)
   14cf4:	00d96733          	or	a4,s2,a3
   14cf8:	340711e3          	bnez	a4,1583a <__gdtoa+0xf64>
   14cfc:	0009a783          	lw	a5,0(s3)
   14d00:	8b85                	andi	a5,a5,1
   14d02:	42079863          	bnez	a5,15132 <__gdtoa+0x85c>
   14d06:	5782                	lw	a5,32(sp)
   14d08:	280787e3          	beqz	a5,15796 <__gdtoa+0xec0>
   14d0c:	f5504de3          	bgtz	s5,14c66 <__gdtoa+0x390>
   14d10:	010ca603          	lw	a2,16(s9)
   14d14:	4685                	li	a3,1
   14d16:	835e                	mv	t1,s7
   14d18:	58a2                	lw	a7,40(sp)
   14d1a:	4be2                	lw	s7,24(sp)
   14d1c:	54b2                	lw	s1,44(sp)
   14d1e:	8b3a                	mv	s6,a4
   14d20:	2ec6dae3          	bge	a3,a2,15814 <__gdtoa+0xf3e>
   14d24:	5782                	lw	a5,32(sp)
   14d26:	4689                	li	a3,2
   14d28:	8a9a                	mv	s5,t1
   14d2a:	8b46                	mv	s6,a7
   14d2c:	02d79063          	bne	a5,a3,14d4c <__gdtoa+0x476>
   14d30:	2cb0006f          	j	157fa <__gdtoa+0xf24>
   14d34:	6df000ef          	jal	15c12 <__multadd>
   14d38:	85ea                	mv	a1,s10
   14d3a:	8caa                	mv	s9,a0
   14d3c:	0e050063          	beqz	a0,14e1c <__gdtoa+0x546>
   14d40:	421000ef          	jal	15960 <__quorem_D2A>
   14d44:	03050a93          	addi	s5,a0,48
   14d48:	8dca                	mv	s11,s2
   14d4a:	8a4e                	mv	s4,s3
   14d4c:	85d2                	mv	a1,s4
   14d4e:	856a                	mv	a0,s10
   14d50:	524010ef          	jal	16274 <__mcmp>
   14d54:	87aa                	mv	a5,a0
   14d56:	4681                	li	a3,0
   14d58:	4629                	li	a2,10
   14d5a:	85d2                	mv	a1,s4
   14d5c:	8522                	mv	a0,s0
   14d5e:	001d8913          	addi	s2,s11,1
   14d62:	28f052e3          	blez	a5,157e6 <__gdtoa+0xf10>
   14d66:	ff590fa3          	sb	s5,-1(s2)
   14d6a:	6a9000ef          	jal	15c12 <__multadd>
   14d6e:	89aa                	mv	s3,a0
   14d70:	4681                	li	a3,0
   14d72:	4629                	li	a2,10
   14d74:	85e6                	mv	a1,s9
   14d76:	8522                	mv	a0,s0
   14d78:	0a098263          	beqz	s3,14e1c <__gdtoa+0x546>
   14d7c:	fb4c1ce3          	bne	s8,s4,14d34 <__gdtoa+0x45e>
   14d80:	8c4e                	mv	s8,s3
   14d82:	bf4d                	j	14d34 <__gdtoa+0x45e>
   14d84:	4791                	li	a5,4
   14d86:	0afe1363          	bne	t3,a5,14e2c <__gdtoa+0x556>
   14d8a:	4632                	lw	a2,12(sp)
   14d8c:	4b4a                	lw	s6,144(sp)
   14d8e:	50ba                	lw	ra,172(sp)
   14d90:	549a                	lw	s1,164(sp)
   14d92:	4ada                	lw	s5,148(sp)
   14d94:	4bba                	lw	s7,140(sp)
   14d96:	77e1                	lui	a5,0xffff8
   14d98:	00f8a023          	sw	a5,0(a7)
   14d9c:	65ed                	lui	a1,0x1b
   14d9e:	468d                	li	a3,3
   14da0:	90058593          	addi	a1,a1,-1792 # 1a900 <__clzsi2+0x116>
   14da4:	614d                	addi	sp,sp,176
   14da6:	33b0006f          	j	158e0 <__nrv_alloc_D2A>
   14daa:	85e6                	mv	a1,s9
   14dac:	8522                	mv	a0,s0
   14dae:	653000ef          	jal	15c00 <_Bfree>
   14db2:	590a                	lw	s2,160(sp)
   14db4:	49fa                	lw	s3,156(sp)
   14db6:	4a6a                	lw	s4,152(sp)
   14db8:	4c2a                	lw	s8,136(sp)
   14dba:	4c9a                	lw	s9,132(sp)
   14dbc:	4d0a                	lw	s10,128(sp)
   14dbe:	5df6                	lw	s11,124(sp)
   14dc0:	4632                	lw	a2,12(sp)
   14dc2:	4785                	li	a5,1
   14dc4:	65ed                	lui	a1,0x1b
   14dc6:	8522                	mv	a0,s0
   14dc8:	c09c                	sw	a5,0(s1)
   14dca:	4685                	li	a3,1
   14dcc:	8f058593          	addi	a1,a1,-1808 # 1a8f0 <__clzsi2+0x106>
   14dd0:	311000ef          	jal	158e0 <__nrv_alloc_D2A>
   14dd4:	542a                	lw	s0,168(sp)
   14dd6:	88aa                	mv	a7,a0
   14dd8:	50ba                	lw	ra,172(sp)
   14dda:	4b4a                	lw	s6,144(sp)
   14ddc:	549a                	lw	s1,164(sp)
   14dde:	4ada                	lw	s5,148(sp)
   14de0:	4bba                	lw	s7,140(sp)
   14de2:	8546                	mv	a0,a7
   14de4:	614d                	addi	sp,sp,176
   14de6:	8082                	ret
   14de8:	4632                	lw	a2,12(sp)
   14dea:	50ba                	lw	ra,172(sp)
   14dec:	549a                	lw	s1,164(sp)
   14dee:	4ada                	lw	s5,148(sp)
   14df0:	4bba                	lw	s7,140(sp)
   14df2:	77e1                	lui	a5,0xffff8
   14df4:	00f8a023          	sw	a5,0(a7)
   14df8:	65ed                	lui	a1,0x1b
   14dfa:	46a1                	li	a3,8
   14dfc:	8f458593          	addi	a1,a1,-1804 # 1a8f4 <__clzsi2+0x10a>
   14e00:	614d                	addi	sp,sp,176
   14e02:	2df0006f          	j	158e0 <__nrv_alloc_D2A>
   14e06:	85ea                	mv	a1,s10
   14e08:	8522                	mv	a0,s0
   14e0a:	cc46                	sw	a7,24(sp)
   14e0c:	c842                	sw	a6,16(sp)
   14e0e:	358010ef          	jal	16166 <__lshift>
   14e12:	4842                	lw	a6,16(sp)
   14e14:	48e2                	lw	a7,24(sp)
   14e16:	8d2a                	mv	s10,a0
   14e18:	de051de3          	bnez	a0,14c12 <__gdtoa+0x33c>
   14e1c:	542a                	lw	s0,168(sp)
   14e1e:	590a                	lw	s2,160(sp)
   14e20:	49fa                	lw	s3,156(sp)
   14e22:	4a6a                	lw	s4,152(sp)
   14e24:	4c2a                	lw	s8,136(sp)
   14e26:	4c9a                	lw	s9,132(sp)
   14e28:	4d0a                	lw	s10,128(sp)
   14e2a:	5df6                	lw	s11,124(sp)
   14e2c:	4881                	li	a7,0
   14e2e:	b76d                	j	14dd8 <__gdtoa+0x502>
   14e30:	000ca823          	sw	zero,16(s9)
   14e34:	beb5                	j	149b0 <__gdtoa+0xda>
   14e36:	4785                	li	a5,1
   14e38:	cabe                	sw	a5,84(sp)
   14e3a:	cc02                	sw	zero,24(sp)
   14e3c:	1a0ec163          	bltz	t4,14fde <__gdtoa+0x708>
   14e40:	c40859e3          	bgez	a6,14a92 <__gdtoa+0x1bc>
   14e44:	47e2                	lw	a5,24(sp)
   14e46:	da42                	sw	a6,52(sp)
   14e48:	410787b3          	sub	a5,a5,a6
   14e4c:	cc3e                	sw	a5,24(sp)
   14e4e:	410007b3          	neg	a5,a6
   14e52:	d83e                	sw	a5,48(sp)
   14e54:	4801                	li	a6,0
   14e56:	b189                	j	14a98 <__gdtoa+0x1c2>
   14e58:	85aa                	mv	a1,a0
   14e5a:	8566                	mv	a0,s9
   14e5c:	45b000ef          	jal	15ab6 <__rshift_D2A>
   14e60:	5636                	lw	a2,108(sp)
   14e62:	47c2                	lw	a5,16(sp)
   14e64:	40cd8db3          	sub	s11,s11,a2
   14e68:	00f60c33          	add	s8,a2,a5
   14e6c:	be89                	j	149be <__gdtoa+0xe8>
   14e6e:	3fd88893          	addi	a7,a7,1021
   14e72:	7f88b793          	sltiu	a5,a7,2040
   14e76:	ccbe                	sw	a5,88(sp)
   14e78:	4901                	li	s2,0
   14e7a:	ed01b707          	fld	fa4,-304(gp) # 1c910 <__SDATA_BEGIN__+0x28>
   14e7e:	d20d07d3          	fcvt.d.w	fa5,s10
   14e82:	4785                	li	a5,1
   14e84:	c8be                	sw	a5,80(sp)
   14e86:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   14e8a:	57fd                	li	a5,-1
   14e8c:	d402                	sw	zero,40(sp)
   14e8e:	cebe                	sw	a5,92(sp)
   14e90:	d63e                	sw	a5,44(sp)
   14e92:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   14e96:	058d                	addi	a1,a1,3
   14e98:	862e                	mv	a2,a1
   14e9a:	b181                	j	14ada <__gdtoa+0x204>
   14e9c:	5782                	lw	a5,32(sp)
   14e9e:	460d                	li	a2,3
   14ea0:	40f607b3          	sub	a5,a2,a5
   14ea4:	d03e                	sw	a5,32(sp)
   14ea6:	57b2                	lw	a5,44(sp)
   14ea8:	4639                	li	a2,14
   14eaa:	c6f663e3          	bltu	a2,a5,14b10 <__gdtoa+0x23a>
   14eae:	4766                	lw	a4,88(sp)
   14eb0:	c60700e3          	beqz	a4,14b10 <__gdtoa+0x23a>
   14eb4:	5752                	lw	a4,52(sp)
   14eb6:	5682                	lw	a3,32(sp)
   14eb8:	00d76633          	or	a2,a4,a3
   14ebc:	c4061ae3          	bnez	a2,14b10 <__gdtoa+0x23a>
   14ec0:	4756                	lw	a4,84(sp)
   14ec2:	d682                	sw	zero,108(sp)
   14ec4:	d07a                	sw	t5,32(sp)
   14ec6:	d27e                	sw	t6,36(sp)
   14ec8:	cb11                	beqz	a4,14edc <__gdtoa+0x606>
   14eca:	dc7a                	sw	t5,56(sp)
   14ecc:	de7e                	sw	t6,60(sp)
   14ece:	ed81b787          	fld	fa5,-296(gp) # 1c918 <__SDATA_BEGIN__+0x30>
   14ed2:	3762                	fld	fa4,56(sp)
   14ed4:	a2f71653          	flt.d	a2,fa4,fa5
   14ed8:	7a061163          	bnez	a2,1567a <__gdtoa+0xda4>
   14edc:	ef81b707          	fld	fa4,-264(gp) # 1c938 <__SDATA_BEGIN__+0x50>
   14ee0:	ef01b787          	fld	fa5,-272(gp) # 1c930 <__SDATA_BEGIN__+0x48>
   14ee4:	3682                	fld	fa3,32(sp)
   14ee6:	57b2                	lw	a5,44(sp)
   14ee8:	fcc00637          	lui	a2,0xfcc00
   14eec:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   14ef0:	bc3e                	fsd	fa5,56(sp)
   14ef2:	5562                	lw	a0,56(sp)
   14ef4:	55f2                	lw	a1,60(sp)
   14ef6:	832a                	mv	t1,a0
   14ef8:	962e                	add	a2,a2,a1
   14efa:	5c078063          	beqz	a5,154ba <__gdtoa+0xbe4>
   14efe:	3782                	fld	fa5,32(sp)
   14f00:	5532                	lw	a0,44(sp)
   14f02:	4381                	li	t2,0
   14f04:	bc3e                	fsd	fa5,56(sp)
   14f06:	65ed                	lui	a1,0x1b
   14f08:	fff50793          	addi	a5,a0,-1
   14f0c:	078e                	slli	a5,a5,0x3
   14f0e:	dd858293          	addi	t0,a1,-552 # 1add8 <__mprec_tens>
   14f12:	005786b3          	add	a3,a5,t0
   14f16:	229c                	fld	fa5,0(a3)
   14f18:	46c6                	lw	a3,80(sp)
   14f1a:	871a                	mv	a4,t1
   14f1c:	87b2                	mv	a5,a2
   14f1e:	6c068163          	beqz	a3,155e0 <__gdtoa+0xd0a>
   14f22:	3762                	fld	fa4,56(sp)
   14f24:	36e2                	fld	fa3,56(sp)
   14f26:	c2071353          	fcvt.w.d	t1,fa4,rtz
   14f2a:	f081b707          	fld	fa4,-248(gp) # 1c948 <__SDATA_BEGIN__+0x60>
   14f2e:	dc3a                	sw	a4,56(sp)
   14f30:	de3e                	sw	a5,60(sp)
   14f32:	1af77753          	fdiv.d	fa4,fa4,fa5
   14f36:	d20307d3          	fcvt.d.w	fa5,t1
   14f3a:	03030313          	addi	t1,t1,48
   14f3e:	00688023          	sb	t1,0(a7)
   14f42:	0af6f7d3          	fsub.d	fa5,fa3,fa5
   14f46:	36e2                	fld	fa3,56(sp)
   14f48:	00188613          	addi	a2,a7,1
   14f4c:	0ad77753          	fsub.d	fa4,fa4,fa3
   14f50:	a2e79353          	flt.d	t1,fa5,fa4
   14f54:	7c031e63          	bnez	t1,15730 <__gdtoa+0xe5a>
   14f58:	ed81b587          	fld	fa1,-296(gp) # 1c918 <__SDATA_BEGIN__+0x30>
   14f5c:	ee01b607          	fld	fa2,-288(gp) # 1c920 <__SDATA_BEGIN__+0x38>
   14f60:	a80d                	j	14f92 <__gdtoa+0x6bc>
   14f62:	57b6                	lw	a5,108(sp)
   14f64:	0605                	addi	a2,a2,1 # fcc00001 <__BSS_END__+0xfcbe3375>
   14f66:	0785                	addi	a5,a5,1 # ffff8001 <__BSS_END__+0xfffdb375>
   14f68:	d6be                	sw	a5,108(sp)
   14f6a:	7ea7d163          	bge	a5,a0,1574c <__gdtoa+0xe76>
   14f6e:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   14f72:	12c77753          	fmul.d	fa4,fa4,fa2
   14f76:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   14f7a:	d20786d3          	fcvt.d.w	fa3,a5
   14f7e:	03078793          	addi	a5,a5,48
   14f82:	fef60fa3          	sb	a5,-1(a2)
   14f86:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   14f8a:	a2e797d3          	flt.d	a5,fa5,fa4
   14f8e:	7a079163          	bnez	a5,15730 <__gdtoa+0xe5a>
   14f92:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   14f96:	a2e697d3          	flt.d	a5,fa3,fa4
   14f9a:	d7e1                	beqz	a5,14f62 <__gdtoa+0x68c>
   14f9c:	fff64683          	lbu	a3,-1(a2)
   14fa0:	00138513          	addi	a0,t2,1
   14fa4:	03900593          	li	a1,57
   14fa8:	a031                	j	14fb4 <__gdtoa+0x6de>
   14faa:	62f88763          	beq	a7,a5,155d8 <__gdtoa+0xd02>
   14fae:	fff7c683          	lbu	a3,-1(a5)
   14fb2:	863e                	mv	a2,a5
   14fb4:	fff60793          	addi	a5,a2,-1
   14fb8:	feb689e3          	beq	a3,a1,14faa <__gdtoa+0x6d4>
   14fbc:	0685                	addi	a3,a3,1
   14fbe:	0ff6f693          	zext.b	a3,a3
   14fc2:	00d78023          	sb	a3,0(a5)
   14fc6:	892a                	mv	s2,a0
   14fc8:	02000b13          	li	s6,32
   14fcc:	a0e5                	j	150b4 <__gdtoa+0x7de>
   14fce:	542a                	lw	s0,168(sp)
   14fd0:	590a                	lw	s2,160(sp)
   14fd2:	49fa                	lw	s3,156(sp)
   14fd4:	4a6a                	lw	s4,152(sp)
   14fd6:	4c9a                	lw	s9,132(sp)
   14fd8:	4d0a                	lw	s10,128(sp)
   14fda:	4881                	li	a7,0
   14fdc:	bbf5                	j	14dd8 <__gdtoa+0x502>
   14fde:	4605                	li	a2,1
   14fe0:	40a607b3          	sub	a5,a2,a0
   14fe4:	cc3e                	sw	a5,24(sp)
   14fe6:	4e81                	li	t4,0
   14fe8:	e4084ee3          	bltz	a6,14e44 <__gdtoa+0x56e>
   14fec:	b45d                	j	14a92 <__gdtoa+0x1bc>
   14fee:	47e2                	lw	a5,24(sp)
   14ff0:	5d42                	lw	s10,48(sp)
   14ff2:	4c01                	li	s8,0
   14ff4:	dc3e                	sw	a5,56(sp)
   14ff6:	b671                	j	14b82 <__gdtoa+0x2ac>
   14ff8:	4789                	li	a5,2
   14ffa:	d03e                	sw	a5,32(sp)
   14ffc:	b631                	j	14b08 <__gdtoa+0x232>
   14ffe:	187d                	addi	a6,a6,-1
   15000:	ca82                	sw	zero,84(sp)
   15002:	bd25                	j	14e3a <__gdtoa+0x564>
   15004:	1971                	addi	s2,s2,-4
   15006:	4591                	li	a1,4
   15008:	10b90263          	beq	s2,a1,1510c <__gdtoa+0x836>
   1500c:	42c90263          	beq	s2,a2,15430 <__gdtoa+0xb5a>
   15010:	4609                	li	a2,2
   15012:	cc82                	sw	zero,88(sp)
   15014:	c882                	sw	zero,80(sp)
   15016:	0ec90e63          	beq	s2,a2,15112 <__gdtoa+0x83c>
   1501a:	490d                	li	s2,3
   1501c:	b46d                	j	14ac6 <__gdtoa+0x1f0>
   1501e:	66ed                	lui	a3,0x1b
   15020:	078e                	slli	a5,a5,0x3
   15022:	dd868693          	addi	a3,a3,-552 # 1add8 <__mprec_tens>
   15026:	97b6                	add	a5,a5,a3
   15028:	2398                	fld	fa4,0(a5)
   1502a:	57a2                	lw	a5,40(sp)
   1502c:	3207c263          	bltz	a5,15350 <__gdtoa+0xa7a>
   15030:	c87a                	sw	t5,16(sp)
   15032:	ca7e                	sw	t6,20(sp)
   15034:	27c2                	fld	fa5,16(sp)
   15036:	4785                	li	a5,1
   15038:	d6be                	sw	a5,108(sp)
   1503a:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   1503e:	57d2                	lw	a5,52(sp)
   15040:	26c2                	fld	fa3,16(sp)
   15042:	00188613          	addi	a2,a7,1
   15046:	00178513          	addi	a0,a5,1
   1504a:	892a                	mv	s2,a0
   1504c:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   15050:	d20787d3          	fcvt.d.w	fa5,a5
   15054:	03078693          	addi	a3,a5,48
   15058:	00d88023          	sb	a3,0(a7)
   1505c:	6af777cb          	fnmsub.d	fa5,fa4,fa5,fa3
   15060:	d20006d3          	fcvt.d.w	fa3,zero
   15064:	a2d7a6d3          	feq.d	a3,fa5,fa3
   15068:	e6b1                	bnez	a3,150b4 <__gdtoa+0x7de>
   1506a:	ee01b587          	fld	fa1,-288(gp) # 1c920 <__SDATA_BEGIN__+0x38>
   1506e:	22d68653          	fmv.d	fa2,fa3
   15072:	55b2                	lw	a1,44(sp)
   15074:	a025                	j	1509c <__gdtoa+0x7c6>
   15076:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   1507a:	d6b6                	sw	a3,108(sp)
   1507c:	0605                	addi	a2,a2,1
   1507e:	1ae7f6d3          	fdiv.d	fa3,fa5,fa4
   15082:	c20697d3          	fcvt.w.d	a5,fa3,rtz
   15086:	d20786d3          	fcvt.d.w	fa3,a5
   1508a:	03078713          	addi	a4,a5,48
   1508e:	fee60fa3          	sb	a4,-1(a2)
   15092:	7ae6f7cb          	fnmsub.d	fa5,fa3,fa4,fa5
   15096:	a2c7a753          	feq.d	a4,fa5,fa2
   1509a:	ef09                	bnez	a4,150b4 <__gdtoa+0x7de>
   1509c:	5736                	lw	a4,108(sp)
   1509e:	00170693          	addi	a3,a4,1
   150a2:	fcb71ae3          	bne	a4,a1,15076 <__gdtoa+0x7a0>
   150a6:	5702                	lw	a4,32(sp)
   150a8:	4e070e63          	beqz	a4,155a4 <__gdtoa+0xcce>
   150ac:	4785                	li	a5,1
   150ae:	4b41                	li	s6,16
   150b0:	60f70263          	beq	a4,a5,156b4 <__gdtoa+0xdde>
   150b4:	85e6                	mv	a1,s9
   150b6:	8522                	mv	a0,s0
   150b8:	d446                	sw	a7,40(sp)
   150ba:	c832                	sw	a2,16(sp)
   150bc:	345000ef          	jal	15c00 <_Bfree>
   150c0:	4642                	lw	a2,16(sp)
   150c2:	47b2                	lw	a5,12(sp)
   150c4:	58a2                	lw	a7,40(sp)
   150c6:	00060023          	sb	zero,0(a2)
   150ca:	0124a023          	sw	s2,0(s1)
   150ce:	c391                	beqz	a5,150d2 <__gdtoa+0x7fc>
   150d0:	c390                	sw	a2,0(a5)
   150d2:	000ba783          	lw	a5,0(s7)
   150d6:	542a                	lw	s0,168(sp)
   150d8:	590a                	lw	s2,160(sp)
   150da:	0167e7b3          	or	a5,a5,s6
   150de:	49fa                	lw	s3,156(sp)
   150e0:	4a6a                	lw	s4,152(sp)
   150e2:	4c2a                	lw	s8,136(sp)
   150e4:	4c9a                	lw	s9,132(sp)
   150e6:	4d0a                	lw	s10,128(sp)
   150e8:	5df6                	lw	s11,124(sp)
   150ea:	00fba023          	sw	a5,0(s7)
   150ee:	b1ed                	j	14dd8 <__gdtoa+0x502>
   150f0:	b0dd90e3          	bne	s11,a3,14bf0 <__gdtoa+0x31a>
   150f4:	004a2783          	lw	a5,4(s4)
   150f8:	4742                	lw	a4,16(sp)
   150fa:	0785                	addi	a5,a5,1
   150fc:	aee7dae3          	bge	a5,a4,14bf0 <__gdtoa+0x31a>
   15100:	47e2                	lw	a5,24(sp)
   15102:	0e85                	addi	t4,t4,1
   15104:	4805                	li	a6,1
   15106:	0785                	addi	a5,a5,1
   15108:	cc3e                	sw	a5,24(sp)
   1510a:	b4dd                	j	14bf0 <__gdtoa+0x31a>
   1510c:	4785                	li	a5,1
   1510e:	cc82                	sw	zero,88(sp)
   15110:	c8be                	sw	a5,80(sp)
   15112:	55a2                	lw	a1,40(sp)
   15114:	00b04363          	bgtz	a1,1511a <__gdtoa+0x844>
   15118:	4585                	li	a1,1
   1511a:	862e                	mv	a2,a1
   1511c:	ceae                	sw	a1,92(sp)
   1511e:	d62e                	sw	a1,44(sp)
   15120:	d42e                	sw	a1,40(sp)
   15122:	ba65                	j	14ada <__gdtoa+0x204>
   15124:	2ef000ef          	jal	15c12 <__multadd>
   15128:	8c2a                	mv	s8,a0
   1512a:	ce0509e3          	beqz	a0,14e1c <__gdtoa+0x546>
   1512e:	8a2a                	mv	s4,a0
   15130:	beb5                	j	14cac <__gdtoa+0x3d6>
   15132:	b20adae3          	bgez	s5,14c66 <__gdtoa+0x390>
   15136:	5782                	lw	a5,32(sp)
   15138:	835e                	mv	t1,s7
   1513a:	58a2                	lw	a7,40(sp)
   1513c:	4be2                	lw	s7,24(sp)
   1513e:	54b2                	lw	s1,44(sp)
   15140:	8b3a                	mv	s6,a4
   15142:	6c079463          	bnez	a5,1580a <__gdtoa+0xf34>
   15146:	010ca603          	lw	a2,16(s9)
   1514a:	4685                	li	a3,1
   1514c:	4b41                	li	s6,16
   1514e:	001d8913          	addi	s2,s11,1
   15152:	68c6d463          	bge	a3,a2,157da <__gdtoa+0xf04>
   15156:	89e2                	mv	s3,s8
   15158:	864a                	mv	a2,s2
   1515a:	006d8023          	sb	t1,0(s11)
   1515e:	8c52                	mv	s8,s4
   15160:	85ea                	mv	a1,s10
   15162:	8522                	mv	a0,s0
   15164:	d446                	sw	a7,40(sp)
   15166:	c832                	sw	a2,16(sp)
   15168:	299000ef          	jal	15c00 <_Bfree>
   1516c:	57d2                	lw	a5,52(sp)
   1516e:	4642                	lw	a2,16(sp)
   15170:	58a2                	lw	a7,40(sp)
   15172:	00178913          	addi	s2,a5,1
   15176:	f20c0fe3          	beqz	s8,150b4 <__gdtoa+0x7de>
   1517a:	00098a63          	beqz	s3,1518e <__gdtoa+0x8b8>
   1517e:	01898863          	beq	s3,s8,1518e <__gdtoa+0x8b8>
   15182:	85ce                	mv	a1,s3
   15184:	8522                	mv	a0,s0
   15186:	27b000ef          	jal	15c00 <_Bfree>
   1518a:	58a2                	lw	a7,40(sp)
   1518c:	4642                	lw	a2,16(sp)
   1518e:	85e2                	mv	a1,s8
   15190:	8522                	mv	a0,s0
   15192:	d446                	sw	a7,40(sp)
   15194:	c832                	sw	a2,16(sp)
   15196:	26b000ef          	jal	15c00 <_Bfree>
   1519a:	58a2                	lw	a7,40(sp)
   1519c:	4642                	lw	a2,16(sp)
   1519e:	bf19                	j	150b4 <__gdtoa+0x7de>
   151a0:	85e6                	mv	a1,s9
   151a2:	8522                	mv	a0,s0
   151a4:	d846                	sw	a7,48(sp)
   151a6:	cc76                	sw	t4,24(sp)
   151a8:	c842                	sw	a6,16(sp)
   151aa:	7bd000ef          	jal	16166 <__lshift>
   151ae:	8caa                	mv	s9,a0
   151b0:	c60506e3          	beqz	a0,14e1c <__gdtoa+0x546>
   151b4:	57b6                	lw	a5,108(sp)
   151b6:	58c2                	lw	a7,48(sp)
   151b8:	4ee2                	lw	t4,24(sp)
   151ba:	4842                	lw	a6,16(sp)
   151bc:	b4b9                	j	14c0a <__gdtoa+0x334>
   151be:	85ea                	mv	a1,s10
   151c0:	8566                	mv	a0,s9
   151c2:	cc46                	sw	a7,24(sp)
   151c4:	c842                	sw	a6,16(sp)
   151c6:	0ae010ef          	jal	16274 <__mcmp>
   151ca:	4842                	lw	a6,16(sp)
   151cc:	48e2                	lw	a7,24(sp)
   151ce:	a40555e3          	bgez	a0,14c18 <__gdtoa+0x342>
   151d2:	57d2                	lw	a5,52(sp)
   151d4:	85e6                	mv	a1,s9
   151d6:	4681                	li	a3,0
   151d8:	17fd                	addi	a5,a5,-1
   151da:	4629                	li	a2,10
   151dc:	8522                	mv	a0,s0
   151de:	da3e                	sw	a5,52(sp)
   151e0:	233000ef          	jal	15c12 <__multadd>
   151e4:	8caa                	mv	s9,a0
   151e6:	c2050be3          	beqz	a0,14e1c <__gdtoa+0x546>
   151ea:	47c6                	lw	a5,80(sp)
   151ec:	48e2                	lw	a7,24(sp)
   151ee:	50079a63          	bnez	a5,15702 <__gdtoa+0xe2c>
   151f2:	47f6                	lw	a5,92(sp)
   151f4:	14f05863          	blez	a5,15344 <__gdtoa+0xa6e>
   151f8:	d63e                	sw	a5,44(sp)
   151fa:	5932                	lw	s2,44(sp)
   151fc:	8dc6                	mv	s11,a7
   151fe:	4685                	li	a3,1
   15200:	89c6                	mv	s3,a7
   15202:	a801                	j	15212 <__gdtoa+0x93c>
   15204:	20f000ef          	jal	15c12 <__multadd>
   15208:	8caa                	mv	s9,a0
   1520a:	c00509e3          	beqz	a0,14e1c <__gdtoa+0x546>
   1520e:	56b6                	lw	a3,108(sp)
   15210:	0685                	addi	a3,a3,1
   15212:	85ea                	mv	a1,s10
   15214:	8566                	mv	a0,s9
   15216:	d6b6                	sw	a3,108(sp)
   15218:	27a1                	jal	15960 <__quorem_D2A>
   1521a:	03050313          	addi	t1,a0,48
   1521e:	006d8023          	sb	t1,0(s11)
   15222:	57b6                	lw	a5,108(sp)
   15224:	4681                	li	a3,0
   15226:	4629                	li	a2,10
   15228:	85e6                	mv	a1,s9
   1522a:	8522                	mv	a0,s0
   1522c:	0d85                	addi	s11,s11,1
   1522e:	fd27cbe3          	blt	a5,s2,15204 <__gdtoa+0x92e>
   15232:	88ce                	mv	a7,s3
   15234:	4981                	li	s3,0
   15236:	5782                	lw	a5,32(sp)
   15238:	2c078263          	beqz	a5,154fc <__gdtoa+0xc26>
   1523c:	4689                	li	a3,2
   1523e:	010ca603          	lw	a2,16(s9)
   15242:	2ed78363          	beq	a5,a3,15528 <__gdtoa+0xc52>
   15246:	4685                	li	a3,1
   15248:	1ac6c763          	blt	a3,a2,153f6 <__gdtoa+0xb20>
   1524c:	014ca683          	lw	a3,20(s9)
   15250:	1a069363          	bnez	a3,153f6 <__gdtoa+0xb20>
   15254:	00d036b3          	snez	a3,a3
   15258:	00469b13          	slli	s6,a3,0x4
   1525c:	03000593          	li	a1,48
   15260:	fffdc783          	lbu	a5,-1(s11)
   15264:	866e                	mv	a2,s11
   15266:	1dfd                	addi	s11,s11,-1
   15268:	feb78ce3          	beq	a5,a1,15260 <__gdtoa+0x98a>
   1526c:	bdd5                	j	15160 <__gdtoa+0x88a>
   1526e:	57b2                	lw	a5,44(sp)
   15270:	5742                	lw	a4,48(sp)
   15272:	fff78693          	addi	a3,a5,-1
   15276:	10d74463          	blt	a4,a3,1537e <__gdtoa+0xaa8>
   1527a:	40d70d33          	sub	s10,a4,a3
   1527e:	4407d263          	bgez	a5,156c2 <__gdtoa+0xdec>
   15282:	47e2                	lw	a5,24(sp)
   15284:	5732                	lw	a4,44(sp)
   15286:	d682                	sw	zero,108(sp)
   15288:	8f99                	sub	a5,a5,a4
   1528a:	dc3e                	sw	a5,56(sp)
   1528c:	b8f1                	j	14b68 <__gdtoa+0x292>
   1528e:	4789                	li	a5,2
   15290:	9927d7e3          	bge	a5,s2,14c1e <__gdtoa+0x348>
   15294:	85ea                	mv	a1,s10
   15296:	4681                	li	a3,0
   15298:	4615                	li	a2,5
   1529a:	8522                	mv	a0,s0
   1529c:	c846                	sw	a7,16(sp)
   1529e:	175000ef          	jal	15c12 <__multadd>
   152a2:	85aa                	mv	a1,a0
   152a4:	b6050ce3          	beqz	a0,14e1c <__gdtoa+0x546>
   152a8:	57b2                	lw	a5,44(sp)
   152aa:	48c2                	lw	a7,16(sp)
   152ac:	e3f9                	bnez	a5,15372 <__gdtoa+0xa9c>
   152ae:	c82a                	sw	a0,16(sp)
   152b0:	8566                	mv	a0,s9
   152b2:	cc46                	sw	a7,24(sp)
   152b4:	7c1000ef          	jal	16274 <__mcmp>
   152b8:	45c2                	lw	a1,16(sp)
   152ba:	48e2                	lw	a7,24(sp)
   152bc:	0aa05b63          	blez	a0,15372 <__gdtoa+0xa9c>
   152c0:	57d2                	lw	a5,52(sp)
   152c2:	00278913          	addi	s2,a5,2
   152c6:	03100793          	li	a5,49
   152ca:	00188613          	addi	a2,a7,1
   152ce:	00f88023          	sb	a5,0(a7)
   152d2:	02000b13          	li	s6,32
   152d6:	8522                	mv	a0,s0
   152d8:	d446                	sw	a7,40(sp)
   152da:	c832                	sw	a2,16(sp)
   152dc:	125000ef          	jal	15c00 <_Bfree>
   152e0:	4642                	lw	a2,16(sp)
   152e2:	58a2                	lw	a7,40(sp)
   152e4:	dc0c08e3          	beqz	s8,150b4 <__gdtoa+0x7de>
   152e8:	b55d                	j	1518e <__gdtoa+0x8b8>
   152ea:	4605                	li	a2,1
   152ec:	4585                	li	a1,1
   152ee:	fecff06f          	j	14ada <__gdtoa+0x204>
   152f2:	85aa                	mv	a1,a0
   152f4:	8642                	mv	a2,a6
   152f6:	8522                	mv	a0,s0
   152f8:	c0c6                	sw	a7,64(sp)
   152fa:	d876                	sw	t4,48(sp)
   152fc:	597000ef          	jal	16092 <__pow5mult>
   15300:	8d2a                	mv	s10,a0
   15302:	b0050de3          	beqz	a0,14e1c <__gdtoa+0x546>
   15306:	4685                	li	a3,1
   15308:	5ec2                	lw	t4,48(sp)
   1530a:	4886                	lw	a7,64(sp)
   1530c:	1526d063          	bge	a3,s2,1544c <__gdtoa+0xb76>
   15310:	010d2783          	lw	a5,16(s10)
   15314:	d846                	sw	a7,48(sp)
   15316:	c876                	sw	t4,16(sp)
   15318:	078d                	addi	a5,a5,3
   1531a:	078a                	slli	a5,a5,0x2
   1531c:	97ea                	add	a5,a5,s10
   1531e:	43c8                	lw	a0,4(a5)
   15320:	297000ef          	jal	15db6 <__hi0bits>
   15324:	58c2                	lw	a7,48(sp)
   15326:	4ec2                	lw	t4,16(sp)
   15328:	8a2a                	mv	s4,a0
   1532a:	885a                	mv	a6,s6
   1532c:	b0d9                	j	14bf2 <__gdtoa+0x31c>
   1532e:	4685                	li	a3,1
   15330:	f326cfe3          	blt	a3,s2,1526e <__gdtoa+0x998>
   15334:	47e2                	lw	a5,24(sp)
   15336:	5d42                	lw	s10,48(sp)
   15338:	9eae                	add	t4,t4,a1
   1533a:	dc3e                	sw	a5,56(sp)
   1533c:	97ae                	add	a5,a5,a1
   1533e:	cc3e                	sw	a5,24(sp)
   15340:	829ff06f          	j	14b68 <__gdtoa+0x292>
   15344:	4789                	li	a5,2
   15346:	4727ce63          	blt	a5,s2,157c2 <__gdtoa+0xeec>
   1534a:	47f6                	lw	a5,92(sp)
   1534c:	d63e                	sw	a5,44(sp)
   1534e:	b575                	j	151fa <__gdtoa+0x924>
   15350:	57b2                	lw	a5,44(sp)
   15352:	ccf04fe3          	bgtz	a5,15030 <__gdtoa+0x75a>
   15356:	ef81                	bnez	a5,1536e <__gdtoa+0xa98>
   15358:	f001b787          	fld	fa5,-256(gp) # 1c940 <__SDATA_BEGIN__+0x58>
   1535c:	c87a                	sw	t5,16(sp)
   1535e:	ca7e                	sw	t6,20(sp)
   15360:	12f77753          	fmul.d	fa4,fa4,fa5
   15364:	27c2                	fld	fa5,16(sp)
   15366:	a2e787d3          	fle.d	a5,fa5,fa4
   1536a:	38078663          	beqz	a5,156f6 <__gdtoa+0xe20>
   1536e:	4581                	li	a1,0
   15370:	4c01                	li	s8,0
   15372:	57a2                	lw	a5,40(sp)
   15374:	8646                	mv	a2,a7
   15376:	4b41                	li	s6,16
   15378:	40f00933          	neg	s2,a5
   1537c:	bfa9                	j	152d6 <__gdtoa+0xa00>
   1537e:	57c2                	lw	a5,48(sp)
   15380:	4762                	lw	a4,24(sp)
   15382:	4d01                	li	s10,0
   15384:	40f68633          	sub	a2,a3,a5
   15388:	57b2                	lw	a5,44(sp)
   1538a:	dc3a                	sw	a4,56(sp)
   1538c:	9832                	add	a6,a6,a2
   1538e:	d6be                	sw	a5,108(sp)
   15390:	9ebe                	add	t4,t4,a5
   15392:	97ba                	add	a5,a5,a4
   15394:	cc3e                	sw	a5,24(sp)
   15396:	d836                	sw	a3,48(sp)
   15398:	fd0ff06f          	j	14b68 <__gdtoa+0x292>
   1539c:	85e2                	mv	a1,s8
   1539e:	866a                	mv	a2,s10
   153a0:	8522                	mv	a0,s0
   153a2:	ccc6                	sw	a7,88(sp)
   153a4:	c4f6                	sw	t4,72(sp)
   153a6:	c0c2                	sw	a6,64(sp)
   153a8:	4eb000ef          	jal	16092 <__pow5mult>
   153ac:	8c2a                	mv	s8,a0
   153ae:	a60507e3          	beqz	a0,14e1c <__gdtoa+0x546>
   153b2:	85aa                	mv	a1,a0
   153b4:	8666                	mv	a2,s9
   153b6:	8522                	mv	a0,s0
   153b8:	345000ef          	jal	15efc <__multiply>
   153bc:	8aaa                	mv	s5,a0
   153be:	a4050fe3          	beqz	a0,14e1c <__gdtoa+0x546>
   153c2:	85e6                	mv	a1,s9
   153c4:	8522                	mv	a0,s0
   153c6:	03b000ef          	jal	15c00 <_Bfree>
   153ca:	57c2                	lw	a5,48(sp)
   153cc:	4806                	lw	a6,64(sp)
   153ce:	4ea6                	lw	t4,72(sp)
   153d0:	41a787b3          	sub	a5,a5,s10
   153d4:	d83e                	sw	a5,48(sp)
   153d6:	48e6                	lw	a7,88(sp)
   153d8:	8cd6                	mv	s9,s5
   153da:	fe078963          	beqz	a5,14bcc <__gdtoa+0x2f6>
   153de:	fd2ff06f          	j	14bb0 <__gdtoa+0x2da>
   153e2:	89e2                	mv	s3,s8
   153e4:	86ee                	mv	a3,s11
   153e6:	001d8913          	addi	s2,s11,1
   153ea:	8c52                	mv	s8,s4
   153ec:	03900613          	li	a2,57
   153f0:	8dca                	mv	s11,s2
   153f2:	00c68023          	sb	a2,0(a3)
   153f6:	03900593          	li	a1,57
   153fa:	a019                	j	15400 <__gdtoa+0xb2a>
   153fc:	13b88f63          	beq	a7,s11,1553a <__gdtoa+0xc64>
   15400:	fffdc683          	lbu	a3,-1(s11)
   15404:	866e                	mv	a2,s11
   15406:	1dfd                	addi	s11,s11,-1
   15408:	feb68ae3          	beq	a3,a1,153fc <__gdtoa+0xb26>
   1540c:	0685                	addi	a3,a3,1
   1540e:	00dd8023          	sb	a3,0(s11)
   15412:	02000b13          	li	s6,32
   15416:	b3a9                	j	15160 <__gdtoa+0x88a>
   15418:	85e2                	mv	a1,s8
   1541a:	8522                	mv	a0,s0
   1541c:	d446                	sw	a7,40(sp)
   1541e:	c842                	sw	a6,16(sp)
   15420:	547000ef          	jal	16166 <__lshift>
   15424:	4842                	lw	a6,16(sp)
   15426:	58a2                	lw	a7,40(sp)
   15428:	8c2a                	mv	s8,a0
   1542a:	800512e3          	bnez	a0,14c2e <__gdtoa+0x358>
   1542e:	b2fd                	j	14e1c <__gdtoa+0x546>
   15430:	4785                	li	a5,1
   15432:	cc82                	sw	zero,88(sp)
   15434:	c8be                	sw	a5,80(sp)
   15436:	e90ff06f          	j	14ac6 <__gdtoa+0x1f0>
   1543a:	4785                	li	a5,1
   1543c:	c8be                	sw	a5,80(sp)
   1543e:	e88ff06f          	j	14ac6 <__gdtoa+0x1f0>
   15442:	4785                	li	a5,1
   15444:	c8be                	sw	a5,80(sp)
   15446:	b1f1                	j	15112 <__gdtoa+0x83c>
   15448:	c882                	sw	zero,80(sp)
   1544a:	b1e1                	j	15112 <__gdtoa+0x83c>
   1544c:	ecdd92e3          	bne	s11,a3,15310 <__gdtoa+0xa3a>
   15450:	004a2783          	lw	a5,4(s4)
   15454:	4742                	lw	a4,16(sp)
   15456:	0785                	addi	a5,a5,1
   15458:	eae7dce3          	bge	a5,a4,15310 <__gdtoa+0xa3a>
   1545c:	47e2                	lw	a5,24(sp)
   1545e:	0e85                	addi	t4,t4,1
   15460:	4b05                	li	s6,1
   15462:	0785                	addi	a5,a5,1
   15464:	cc3e                	sw	a5,24(sp)
   15466:	b56d                	j	15310 <__gdtoa+0xa3a>
   15468:	004c2583          	lw	a1,4(s8)
   1546c:	8522                	mv	a0,s0
   1546e:	c846                	sw	a7,16(sp)
   15470:	2715                	jal	15b94 <_Balloc>
   15472:	8a2a                	mv	s4,a0
   15474:	9a0504e3          	beqz	a0,14e1c <__gdtoa+0x546>
   15478:	010c2603          	lw	a2,16(s8)
   1547c:	00cc0593          	addi	a1,s8,12
   15480:	0531                	addi	a0,a0,12
   15482:	0609                	addi	a2,a2,2
   15484:	060a                	slli	a2,a2,0x2
   15486:	f79fe0ef          	jal	143fe <memcpy>
   1548a:	85d2                	mv	a1,s4
   1548c:	4605                	li	a2,1
   1548e:	8522                	mv	a0,s0
   15490:	4d7000ef          	jal	16166 <__lshift>
   15494:	48c2                	lw	a7,16(sp)
   15496:	8a2a                	mv	s4,a0
   15498:	f8051e63          	bnez	a0,14c34 <__gdtoa+0x35e>
   1549c:	b241                	j	14e1c <__gdtoa+0x546>
   1549e:	ef81b707          	fld	fa4,-264(gp) # 1c938 <__SDATA_BEGIN__+0x50>
   154a2:	ef01b787          	fld	fa5,-272(gp) # 1c930 <__SDATA_BEGIN__+0x48>
   154a6:	3682                	fld	fa3,32(sp)
   154a8:	fcc00637          	lui	a2,0xfcc00
   154ac:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   154b0:	bc3e                	fsd	fa5,56(sp)
   154b2:	5562                	lw	a0,56(sp)
   154b4:	55f2                	lw	a1,60(sp)
   154b6:	832a                	mv	t1,a0
   154b8:	962e                	add	a2,a2,a1
   154ba:	de32                	sw	a2,60(sp)
   154bc:	f001b707          	fld	fa4,-256(gp) # 1c940 <__SDATA_BEGIN__+0x58>
   154c0:	3782                	fld	fa5,32(sp)
   154c2:	dc1a                	sw	t1,56(sp)
   154c4:	0ae7f753          	fsub.d	fa4,fa5,fa4
   154c8:	37e2                	fld	fa5,56(sp)
   154ca:	a2e79653          	flt.d	a2,fa5,fa4
   154ce:	1e061663          	bnez	a2,156ba <__gdtoa+0xde4>
   154d2:	22f797d3          	fneg.d	fa5,fa5
   154d6:	a2f71653          	flt.d	a2,fa4,fa5
   154da:	e8061ae3          	bnez	a2,1536e <__gdtoa+0xa98>
   154de:	5f02                	lw	t5,32(sp)
   154e0:	5f92                	lw	t6,36(sp)
   154e2:	65ed                	lui	a1,0x1b
   154e4:	280c4b63          	bltz	s8,1577a <__gdtoa+0xea4>
   154e8:	57a2                	lw	a5,40(sp)
   154ea:	d002                	sw	zero,32(sp)
   154ec:	dd85b707          	fld	fa4,-552(a1) # 1add8 <__mprec_tens>
   154f0:	b407d0e3          	bgez	a5,15030 <__gdtoa+0x75a>
   154f4:	57b2                	lw	a5,44(sp)
   154f6:	b2079de3          	bnez	a5,15030 <__gdtoa+0x75a>
   154fa:	bdb9                	j	15358 <__gdtoa+0xa82>
   154fc:	85e6                	mv	a1,s9
   154fe:	4605                	li	a2,1
   15500:	8522                	mv	a0,s0
   15502:	c846                	sw	a7,16(sp)
   15504:	d41a                	sw	t1,40(sp)
   15506:	461000ef          	jal	16166 <__lshift>
   1550a:	8caa                	mv	s9,a0
   1550c:	900508e3          	beqz	a0,14e1c <__gdtoa+0x546>
   15510:	85ea                	mv	a1,s10
   15512:	563000ef          	jal	16274 <__mcmp>
   15516:	48c2                	lw	a7,16(sp)
   15518:	eca04fe3          	bgtz	a0,153f6 <__gdtoa+0xb20>
   1551c:	e511                	bnez	a0,15528 <__gdtoa+0xc52>
   1551e:	5322                	lw	t1,40(sp)
   15520:	00137313          	andi	t1,t1,1
   15524:	ec0319e3          	bnez	t1,153f6 <__gdtoa+0xb20>
   15528:	010ca603          	lw	a2,16(s9)
   1552c:	4685                	li	a3,1
   1552e:	4b41                	li	s6,16
   15530:	d2c6c6e3          	blt	a3,a2,1525c <__gdtoa+0x986>
   15534:	014ca683          	lw	a3,20(s9)
   15538:	bb31                	j	15254 <__gdtoa+0x97e>
   1553a:	57d2                	lw	a5,52(sp)
   1553c:	02000b13          	li	s6,32
   15540:	0785                	addi	a5,a5,1
   15542:	da3e                	sw	a5,52(sp)
   15544:	03100793          	li	a5,49
   15548:	00f88023          	sb	a5,0(a7)
   1554c:	b911                	j	15160 <__gdtoa+0x88a>
   1554e:	5782                	lw	a5,32(sp)
   15550:	8926                	mv	s2,s1
   15552:	835e                	mv	t1,s7
   15554:	58a2                	lw	a7,40(sp)
   15556:	4be2                	lw	s7,24(sp)
   15558:	54b2                	lw	s1,44(sp)
   1555a:	cb91                	beqz	a5,1556e <__gdtoa+0xc98>
   1555c:	010ca603          	lw	a2,16(s9)
   15560:	4685                	li	a3,1
   15562:	fcc6c163          	blt	a3,a2,14d24 <__gdtoa+0x44e>
   15566:	014ca683          	lw	a3,20(s9)
   1556a:	fa069d63          	bnez	a3,14d24 <__gdtoa+0x44e>
   1556e:	85e6                	mv	a1,s9
   15570:	4605                	li	a2,1
   15572:	8522                	mv	a0,s0
   15574:	d446                	sw	a7,40(sp)
   15576:	c81a                	sw	t1,16(sp)
   15578:	3ef000ef          	jal	16166 <__lshift>
   1557c:	8caa                	mv	s9,a0
   1557e:	88050fe3          	beqz	a0,14e1c <__gdtoa+0x546>
   15582:	85ea                	mv	a1,s10
   15584:	4f1000ef          	jal	16274 <__mcmp>
   15588:	4342                	lw	t1,16(sp)
   1558a:	58a2                	lw	a7,40(sp)
   1558c:	22a05e63          	blez	a0,157c8 <__gdtoa+0xef2>
   15590:	03900693          	li	a3,57
   15594:	e4d307e3          	beq	t1,a3,153e2 <__gdtoa+0xb0c>
   15598:	02000793          	li	a5,32
   1559c:	03190313          	addi	t1,s2,49
   155a0:	d03e                	sw	a5,32(sp)
   155a2:	b655                	j	15146 <__gdtoa+0x870>
   155a4:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   155a8:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe3373>
   155ac:	a2f715d3          	flt.d	a1,fa4,fa5
   155b0:	9e059ae3          	bnez	a1,14fa4 <__gdtoa+0x6ce>
   155b4:	a2e7a5d3          	feq.d	a1,fa5,fa4
   155b8:	c581                	beqz	a1,155c0 <__gdtoa+0xcea>
   155ba:	8b85                	andi	a5,a5,1
   155bc:	9e0794e3          	bnez	a5,14fa4 <__gdtoa+0x6ce>
   155c0:	87b2                	mv	a5,a2
   155c2:	4b41                	li	s6,16
   155c4:	03000593          	li	a1,48
   155c8:	fff7c703          	lbu	a4,-1(a5)
   155cc:	863e                	mv	a2,a5
   155ce:	17fd                	addi	a5,a5,-1
   155d0:	feb70ce3          	beq	a4,a1,155c8 <__gdtoa+0xcf2>
   155d4:	892a                	mv	s2,a0
   155d6:	bcf9                	j	150b4 <__gdtoa+0x7de>
   155d8:	03100693          	li	a3,49
   155dc:	0505                	addi	a0,a0,1
   155de:	b2d5                	j	14fc2 <__gdtoa+0x6ec>
   155e0:	de32                	sw	a2,60(sp)
   155e2:	dc1a                	sw	t1,56(sp)
   155e4:	3762                	fld	fa4,56(sp)
   155e6:	de7e                	sw	t6,60(sp)
   155e8:	dc7a                	sw	t5,56(sp)
   155ea:	35e2                	fld	fa1,56(sp)
   155ec:	12e7f653          	fmul.d	fa2,fa5,fa4
   155f0:	ee01b707          	fld	fa4,-288(gp) # 1c920 <__SDATA_BEGIN__+0x38>
   155f4:	4685                	li	a3,1
   155f6:	22b587d3          	fmv.d	fa5,fa1
   155fa:	d6b6                	sw	a3,108(sp)
   155fc:	8646                	mv	a2,a7
   155fe:	4f81                	li	t6,0
   15600:	a029                	j	1560a <__gdtoa+0xd34>
   15602:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   15606:	d6ba                	sw	a4,108(sp)
   15608:	4f85                	li	t6,1
   1560a:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   1560e:	0605                	addi	a2,a2,1
   15610:	03078693          	addi	a3,a5,48
   15614:	0ff6f693          	zext.b	a3,a3
   15618:	c791                	beqz	a5,15624 <__gdtoa+0xd4e>
   1561a:	d20786d3          	fcvt.d.w	fa3,a5
   1561e:	4f85                	li	t6,1
   15620:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   15624:	fed60fa3          	sb	a3,-1(a2)
   15628:	57b6                	lw	a5,108(sp)
   1562a:	00178713          	addi	a4,a5,1
   1562e:	fca79ae3          	bne	a5,a0,15602 <__gdtoa+0xd2c>
   15632:	000f8463          	beqz	t6,1563a <__gdtoa+0xd64>
   15636:	22f785d3          	fmv.d	fa1,fa5
   1563a:	f081b787          	fld	fa5,-248(gp) # 1c948 <__SDATA_BEGIN__+0x60>
   1563e:	02f67753          	fadd.d	fa4,fa2,fa5
   15642:	a2b71553          	flt.d	a0,fa4,fa1
   15646:	0e051f63          	bnez	a0,15744 <__gdtoa+0xe6e>
   1564a:	0ac7f7d3          	fsub.d	fa5,fa5,fa2
   1564e:	a2f596d3          	flt.d	a3,fa1,fa5
   15652:	12069763          	bnez	a3,15780 <__gdtoa+0xeaa>
   15656:	5f02                	lw	t5,32(sp)
   15658:	5f92                	lw	t6,36(sp)
   1565a:	e80c57e3          	bgez	s8,154e8 <__gdtoa+0xc12>
   1565e:	47e2                	lw	a5,24(sp)
   15660:	5d42                	lw	s10,48(sp)
   15662:	d002                	sw	zero,32(sp)
   15664:	dc3e                	sw	a5,56(sp)
   15666:	4c01                	li	s8,0
   15668:	d1aff06f          	j	14b82 <__gdtoa+0x2ac>
   1566c:	835e                	mv	t1,s7
   1566e:	89e2                	mv	s3,s8
   15670:	58a2                	lw	a7,40(sp)
   15672:	4be2                	lw	s7,24(sp)
   15674:	54b2                	lw	s1,44(sp)
   15676:	8c52                	mv	s8,s4
   15678:	be7d                	j	15236 <__gdtoa+0x960>
   1567a:	e20782e3          	beqz	a5,1549e <__gdtoa+0xbc8>
   1567e:	4576                	lw	a0,92(sp)
   15680:	e4a05fe3          	blez	a0,154de <__gdtoa+0xc08>
   15684:	ee01b787          	fld	fa5,-288(gp) # 1c920 <__SDATA_BEGIN__+0x38>
   15688:	53fd                	li	t2,-1
   1568a:	12f777d3          	fmul.d	fa5,fa4,fa5
   1568e:	ee81b707          	fld	fa4,-280(gp) # 1c928 <__SDATA_BEGIN__+0x40>
   15692:	bc3e                	fsd	fa5,56(sp)
   15694:	36e2                	fld	fa3,56(sp)
   15696:	ef01b787          	fld	fa5,-272(gp) # 1c930 <__SDATA_BEGIN__+0x48>
   1569a:	fcc00637          	lui	a2,0xfcc00
   1569e:	5f62                	lw	t5,56(sp)
   156a0:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   156a4:	5ff2                	lw	t6,60(sp)
   156a6:	a0be                	fsd	fa5,64(sp)
   156a8:	4706                	lw	a4,64(sp)
   156aa:	4796                	lw	a5,68(sp)
   156ac:	833a                	mv	t1,a4
   156ae:	963e                	add	a2,a2,a5
   156b0:	857ff06f          	j	14f06 <__gdtoa+0x630>
   156b4:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe3373>
   156b8:	b0f5                	j	14fa4 <__gdtoa+0x6ce>
   156ba:	4909                	li	s2,2
   156bc:	4581                	li	a1,0
   156be:	4c01                	li	s8,0
   156c0:	b119                	j	152c6 <__gdtoa+0x9f0>
   156c2:	4762                	lw	a4,24(sp)
   156c4:	d6be                	sw	a5,108(sp)
   156c6:	9ebe                	add	t4,t4,a5
   156c8:	97ba                	add	a5,a5,a4
   156ca:	dc3a                	sw	a4,56(sp)
   156cc:	cc3e                	sw	a5,24(sp)
   156ce:	c9aff06f          	j	14b68 <__gdtoa+0x292>
   156d2:	835e                	mv	t1,s7
   156d4:	03900693          	li	a3,57
   156d8:	58a2                	lw	a7,40(sp)
   156da:	4be2                	lw	s7,24(sp)
   156dc:	54b2                	lw	s1,44(sp)
   156de:	d0d302e3          	beq	t1,a3,153e2 <__gdtoa+0xb0c>
   156e2:	0305                	addi	t1,t1,1
   156e4:	89e2                	mv	s3,s8
   156e6:	001d8613          	addi	a2,s11,1
   156ea:	006d8023          	sb	t1,0(s11)
   156ee:	8c52                	mv	s8,s4
   156f0:	02000b13          	li	s6,32
   156f4:	b4b5                	j	15160 <__gdtoa+0x88a>
   156f6:	57d2                	lw	a5,52(sp)
   156f8:	4581                	li	a1,0
   156fa:	4c01                	li	s8,0
   156fc:	00278913          	addi	s2,a5,2
   15700:	b6d9                	j	152c6 <__gdtoa+0x9f0>
   15702:	85e2                	mv	a1,s8
   15704:	4681                	li	a3,0
   15706:	4629                	li	a2,10
   15708:	8522                	mv	a0,s0
   1570a:	2321                	jal	15c12 <__multadd>
   1570c:	8c2a                	mv	s8,a0
   1570e:	f0050763          	beqz	a0,14e1c <__gdtoa+0x546>
   15712:	47f6                	lw	a5,92(sp)
   15714:	4842                	lw	a6,16(sp)
   15716:	48e2                	lw	a7,24(sp)
   15718:	00f05563          	blez	a5,15722 <__gdtoa+0xe4c>
   1571c:	d63e                	sw	a5,44(sp)
   1571e:	d06ff06f          	j	14c24 <__gdtoa+0x34e>
   15722:	4789                	li	a5,2
   15724:	0927cf63          	blt	a5,s2,157c2 <__gdtoa+0xeec>
   15728:	47f6                	lw	a5,92(sp)
   1572a:	d63e                	sw	a5,44(sp)
   1572c:	cf8ff06f          	j	14c24 <__gdtoa+0x34e>
   15730:	d2000753          	fcvt.d.w	fa4,zero
   15734:	00138913          	addi	s2,t2,1
   15738:	a2e7ab53          	feq.d	s6,fa5,fa4
   1573c:	001b3b13          	seqz	s6,s6
   15740:	0b12                	slli	s6,s6,0x4
   15742:	ba8d                	j	150b4 <__gdtoa+0x7de>
   15744:	00138513          	addi	a0,t2,1
   15748:	85dff06f          	j	14fa4 <__gdtoa+0x6ce>
   1574c:	5f02                	lw	t5,32(sp)
   1574e:	5f92                	lw	t6,36(sp)
   15750:	d80c5ce3          	bgez	s8,154e8 <__gdtoa+0xc12>
   15754:	d002                	sw	zero,32(sp)
   15756:	bccff06f          	j	14b22 <__gdtoa+0x24c>
   1575a:	57b2                	lw	a5,44(sp)
   1575c:	5742                	lw	a4,48(sp)
   1575e:	fff78693          	addi	a3,a5,-1
   15762:	c0d74ee3          	blt	a4,a3,1537e <__gdtoa+0xaa8>
   15766:	4662                	lw	a2,24(sp)
   15768:	9ebe                	add	t4,t4,a5
   1576a:	d6be                	sw	a5,108(sp)
   1576c:	97b2                	add	a5,a5,a2
   1576e:	dc32                	sw	a2,56(sp)
   15770:	40d70d33          	sub	s10,a4,a3
   15774:	cc3e                	sw	a5,24(sp)
   15776:	bf2ff06f          	j	14b68 <__gdtoa+0x292>
   1577a:	d002                	sw	zero,32(sp)
   1577c:	ba0ff06f          	j	14b1c <__gdtoa+0x246>
   15780:	d20007d3          	fcvt.d.w	fa5,zero
   15784:	87b2                	mv	a5,a2
   15786:	00138513          	addi	a0,t2,1
   1578a:	a2f5ab53          	feq.d	s6,fa1,fa5
   1578e:	001b3b13          	seqz	s6,s6
   15792:	0b12                	slli	s6,s6,0x4
   15794:	bd05                	j	155c4 <__gdtoa+0xcee>
   15796:	835e                	mv	t1,s7
   15798:	03900693          	li	a3,57
   1579c:	8926                	mv	s2,s1
   1579e:	58a2                	lw	a7,40(sp)
   157a0:	4be2                	lw	s7,24(sp)
   157a2:	54b2                	lw	s1,44(sp)
   157a4:	c2d30fe3          	beq	t1,a3,153e2 <__gdtoa+0xb0c>
   157a8:	07505d63          	blez	s5,15822 <__gdtoa+0xf4c>
   157ac:	03190313          	addi	t1,s2,49
   157b0:	02000b13          	li	s6,32
   157b4:	89e2                	mv	s3,s8
   157b6:	001d8613          	addi	a2,s11,1
   157ba:	006d8023          	sb	t1,0(s11)
   157be:	8c52                	mv	s8,s4
   157c0:	b245                	j	15160 <__gdtoa+0x88a>
   157c2:	47f6                	lw	a5,92(sp)
   157c4:	d63e                	sw	a5,44(sp)
   157c6:	b4f9                	j	15294 <__gdtoa+0x9be>
   157c8:	e509                	bnez	a0,157d2 <__gdtoa+0xefc>
   157ca:	00137693          	andi	a3,t1,1
   157ce:	dc0691e3          	bnez	a3,15590 <__gdtoa+0xcba>
   157d2:	02000793          	li	a5,32
   157d6:	d03e                	sw	a5,32(sp)
   157d8:	b2bd                	j	15146 <__gdtoa+0x870>
   157da:	014ca683          	lw	a3,20(s9)
   157de:	96069ce3          	bnez	a3,15156 <__gdtoa+0x880>
   157e2:	5b02                	lw	s6,32(sp)
   157e4:	ba8d                	j	15156 <__gdtoa+0x880>
   157e6:	03900693          	li	a3,57
   157ea:	88da                	mv	a7,s6
   157ec:	00da8b63          	beq	s5,a3,15802 <__gdtoa+0xf2c>
   157f0:	001a8313          	addi	t1,s5,1
   157f4:	02000b13          	li	s6,32
   157f8:	bab9                	j	15156 <__gdtoa+0x880>
   157fa:	4b41                	li	s6,16
   157fc:	001d8913          	addi	s2,s11,1
   15800:	ba99                	j	15156 <__gdtoa+0x880>
   15802:	89e2                	mv	s3,s8
   15804:	86ee                	mv	a3,s11
   15806:	8c52                	mv	s8,s4
   15808:	b6d5                	j	153ec <__gdtoa+0xb16>
   1580a:	010ca603          	lw	a2,16(s9)
   1580e:	4685                	li	a3,1
   15810:	d0c6ca63          	blt	a3,a2,14d24 <__gdtoa+0x44e>
   15814:	014ca683          	lw	a3,20(s9)
   15818:	d0069663          	bnez	a3,14d24 <__gdtoa+0x44e>
   1581c:	001d8913          	addi	s2,s11,1
   15820:	ba1d                	j	15156 <__gdtoa+0x880>
   15822:	010ca603          	lw	a2,16(s9)
   15826:	4685                	li	a3,1
   15828:	4b41                	li	s6,16
   1582a:	f8c6c5e3          	blt	a3,a2,157b4 <__gdtoa+0xede>
   1582e:	014cab03          	lw	s6,20(s9)
   15832:	01603b33          	snez	s6,s6
   15836:	0b12                	slli	s6,s6,0x4
   15838:	bfb5                	j	157b4 <__gdtoa+0xede>
   1583a:	000ace63          	bltz	s5,15856 <__gdtoa+0xf80>
   1583e:	01596ab3          	or	s5,s2,s5
   15842:	000a9663          	bnez	s5,1584e <__gdtoa+0xf78>
   15846:	0009a783          	lw	a5,0(s3)
   1584a:	8b85                	andi	a5,a5,1
   1584c:	c789                	beqz	a5,15856 <__gdtoa+0xf80>
   1584e:	c0d05c63          	blez	a3,14c66 <__gdtoa+0x390>
   15852:	c0cff06f          	j	14c5e <__gdtoa+0x388>
   15856:	5782                	lw	a5,32(sp)
   15858:	8926                	mv	s2,s1
   1585a:	835e                	mv	t1,s7
   1585c:	58a2                	lw	a7,40(sp)
   1585e:	4be2                	lw	s7,24(sp)
   15860:	54b2                	lw	s1,44(sp)
   15862:	c385                	beqz	a5,15882 <__gdtoa+0xfac>
   15864:	010ca583          	lw	a1,16(s9)
   15868:	4605                	li	a2,1
   1586a:	cab64d63          	blt	a2,a1,14d24 <__gdtoa+0x44e>
   1586e:	014ca603          	lw	a2,20(s9)
   15872:	ca061963          	bnez	a2,14d24 <__gdtoa+0x44e>
   15876:	ced04ce3          	bgtz	a3,1556e <__gdtoa+0xc98>
   1587a:	4b01                	li	s6,0
   1587c:	001d8913          	addi	s2,s11,1
   15880:	b8d9                	j	15156 <__gdtoa+0x880>
   15882:	8cd052e3          	blez	a3,15146 <__gdtoa+0x870>
   15886:	b1e5                	j	1556e <__gdtoa+0xc98>

00015888 <__rv_alloc_D2A.part.0>:
   15888:	66ed                	lui	a3,0x1b
   1588a:	656d                	lui	a0,0x1b
   1588c:	1141                	addi	sp,sp,-16
   1588e:	90468693          	addi	a3,a3,-1788 # 1a904 <__clzsi2+0x11a>
   15892:	4601                	li	a2,0
   15894:	03900593          	li	a1,57
   15898:	91850513          	addi	a0,a0,-1768 # 1a918 <__clzsi2+0x12e>
   1589c:	c606                	sw	ra,12(sp)
   1589e:	690010ef          	jal	16f2e <__assert_func>

000158a2 <__rv_alloc_D2A>:
   158a2:	1141                	addi	sp,sp,-16
   158a4:	c422                	sw	s0,8(sp)
   158a6:	c606                	sw	ra,12(sp)
   158a8:	46dd                	li	a3,23
   158aa:	842a                	mv	s0,a0
   158ac:	4705                	li	a4,1
   158ae:	4791                	li	a5,4
   158b0:	02b6f363          	bgeu	a3,a1,158d6 <__rv_alloc_D2A+0x34>
   158b4:	0786                	slli	a5,a5,0x1
   158b6:	01478693          	addi	a3,a5,20
   158ba:	863a                	mv	a2,a4
   158bc:	0705                	addi	a4,a4,1
   158be:	fed5fbe3          	bgeu	a1,a3,158b4 <__rv_alloc_D2A+0x12>
   158c2:	85b2                	mv	a1,a2
   158c4:	dc50                	sw	a2,60(s0)
   158c6:	8522                	mv	a0,s0
   158c8:	24f1                	jal	15b94 <_Balloc>
   158ca:	c911                	beqz	a0,158de <__rv_alloc_D2A+0x3c>
   158cc:	40b2                	lw	ra,12(sp)
   158ce:	dc08                	sw	a0,56(s0)
   158d0:	4422                	lw	s0,8(sp)
   158d2:	0141                	addi	sp,sp,16
   158d4:	8082                	ret
   158d6:	02052e23          	sw	zero,60(a0)
   158da:	4581                	li	a1,0
   158dc:	b7ed                	j	158c6 <__rv_alloc_D2A+0x24>
   158de:	376d                	jal	15888 <__rv_alloc_D2A.part.0>

000158e0 <__nrv_alloc_D2A>:
   158e0:	1141                	addi	sp,sp,-16
   158e2:	c422                	sw	s0,8(sp)
   158e4:	c226                	sw	s1,4(sp)
   158e6:	c04a                	sw	s2,0(sp)
   158e8:	c606                	sw	ra,12(sp)
   158ea:	485d                	li	a6,23
   158ec:	84aa                	mv	s1,a0
   158ee:	842e                	mv	s0,a1
   158f0:	8932                	mv	s2,a2
   158f2:	4705                	li	a4,1
   158f4:	4791                	li	a5,4
   158f6:	04d87763          	bgeu	a6,a3,15944 <__nrv_alloc_D2A+0x64>
   158fa:	0786                	slli	a5,a5,0x1
   158fc:	01478813          	addi	a6,a5,20
   15900:	85ba                	mv	a1,a4
   15902:	0705                	addi	a4,a4,1
   15904:	ff06fbe3          	bgeu	a3,a6,158fa <__nrv_alloc_D2A+0x1a>
   15908:	dccc                	sw	a1,60(s1)
   1590a:	8526                	mv	a0,s1
   1590c:	2461                	jal	15b94 <_Balloc>
   1590e:	c129                	beqz	a0,15950 <__nrv_alloc_D2A+0x70>
   15910:	dc88                	sw	a0,56(s1)
   15912:	00044783          	lbu	a5,0(s0)
   15916:	00140593          	addi	a1,s0,1
   1591a:	00f50023          	sb	a5,0(a0)
   1591e:	c79d                	beqz	a5,1594c <__nrv_alloc_D2A+0x6c>
   15920:	87aa                	mv	a5,a0
   15922:	0005c703          	lbu	a4,0(a1)
   15926:	0785                	addi	a5,a5,1
   15928:	0585                	addi	a1,a1,1
   1592a:	00e78023          	sb	a4,0(a5)
   1592e:	fb75                	bnez	a4,15922 <__nrv_alloc_D2A+0x42>
   15930:	00090463          	beqz	s2,15938 <__nrv_alloc_D2A+0x58>
   15934:	00f92023          	sw	a5,0(s2)
   15938:	40b2                	lw	ra,12(sp)
   1593a:	4422                	lw	s0,8(sp)
   1593c:	4492                	lw	s1,4(sp)
   1593e:	4902                	lw	s2,0(sp)
   15940:	0141                	addi	sp,sp,16
   15942:	8082                	ret
   15944:	02052e23          	sw	zero,60(a0)
   15948:	4581                	li	a1,0
   1594a:	b7c1                	j	1590a <__nrv_alloc_D2A+0x2a>
   1594c:	87aa                	mv	a5,a0
   1594e:	b7cd                	j	15930 <__nrv_alloc_D2A+0x50>
   15950:	3f25                	jal	15888 <__rv_alloc_D2A.part.0>

00015952 <__freedtoa>:
   15952:	5d54                	lw	a3,60(a0)
   15954:	4705                	li	a4,1
   15956:	00d71733          	sll	a4,a4,a3
   1595a:	c1d4                	sw	a3,4(a1)
   1595c:	c598                	sw	a4,8(a1)
   1595e:	a44d                	j	15c00 <_Bfree>

00015960 <__quorem_D2A>:
   15960:	1101                	addi	sp,sp,-32
   15962:	ca26                	sw	s1,20(sp)
   15964:	491c                	lw	a5,16(a0)
   15966:	4984                	lw	s1,16(a1)
   15968:	ce06                	sw	ra,28(sp)
   1596a:	1497c163          	blt	a5,s1,15aac <__quorem_D2A+0x14c>
   1596e:	14fd                	addi	s1,s1,-1
   15970:	00249313          	slli	t1,s1,0x2
   15974:	cc22                	sw	s0,24(sp)
   15976:	01458413          	addi	s0,a1,20
   1597a:	c64e                	sw	s3,12(sp)
   1597c:	c452                	sw	s4,8(sp)
   1597e:	006409b3          	add	s3,s0,t1
   15982:	01450a13          	addi	s4,a0,20
   15986:	0009a783          	lw	a5,0(s3)
   1598a:	9352                	add	t1,t1,s4
   1598c:	00032703          	lw	a4,0(t1)
   15990:	c84a                	sw	s2,16(sp)
   15992:	c256                	sw	s5,4(sp)
   15994:	0785                	addi	a5,a5,1
   15996:	02f75933          	divu	s2,a4,a5
   1599a:	8aaa                	mv	s5,a0
   1599c:	08f76663          	bltu	a4,a5,15a28 <__quorem_D2A+0xc8>
   159a0:	6541                	lui	a0,0x10
   159a2:	88a2                	mv	a7,s0
   159a4:	8852                	mv	a6,s4
   159a6:	4f01                	li	t5,0
   159a8:	4e81                	li	t4,0
   159aa:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   159ac:	0008a783          	lw	a5,0(a7)
   159b0:	00082603          	lw	a2,0(a6)
   159b4:	0811                	addi	a6,a6,4
   159b6:	00a7f6b3          	and	a3,a5,a0
   159ba:	83c1                	srli	a5,a5,0x10
   159bc:	00a67733          	and	a4,a2,a0
   159c0:	01065e13          	srli	t3,a2,0x10
   159c4:	0891                	addi	a7,a7,4
   159c6:	032686b3          	mul	a3,a3,s2
   159ca:	032787b3          	mul	a5,a5,s2
   159ce:	96fa                	add	a3,a3,t5
   159d0:	00a6f633          	and	a2,a3,a0
   159d4:	8f11                	sub	a4,a4,a2
   159d6:	41d70733          	sub	a4,a4,t4
   159da:	82c1                	srli	a3,a3,0x10
   159dc:	01075613          	srli	a2,a4,0x10
   159e0:	8a05                	andi	a2,a2,1
   159e2:	8f69                	and	a4,a4,a0
   159e4:	97b6                	add	a5,a5,a3
   159e6:	00a7f6b3          	and	a3,a5,a0
   159ea:	9636                	add	a2,a2,a3
   159ec:	40ce06b3          	sub	a3,t3,a2
   159f0:	01069613          	slli	a2,a3,0x10
   159f4:	8f51                	or	a4,a4,a2
   159f6:	82c1                	srli	a3,a3,0x10
   159f8:	fee82e23          	sw	a4,-4(a6)
   159fc:	0107df13          	srli	t5,a5,0x10
   15a00:	0016fe93          	andi	t4,a3,1
   15a04:	fb19f4e3          	bgeu	s3,a7,159ac <__quorem_D2A+0x4c>
   15a08:	00032783          	lw	a5,0(t1)
   15a0c:	ef91                	bnez	a5,15a28 <__quorem_D2A+0xc8>
   15a0e:	1371                	addi	t1,t1,-4
   15a10:	006a6663          	bltu	s4,t1,15a1c <__quorem_D2A+0xbc>
   15a14:	a801                	j	15a24 <__quorem_D2A+0xc4>
   15a16:	14fd                	addi	s1,s1,-1
   15a18:	006a7663          	bgeu	s4,t1,15a24 <__quorem_D2A+0xc4>
   15a1c:	00032783          	lw	a5,0(t1)
   15a20:	1371                	addi	t1,t1,-4
   15a22:	dbf5                	beqz	a5,15a16 <__quorem_D2A+0xb6>
   15a24:	009aa823          	sw	s1,16(s5)
   15a28:	8556                	mv	a0,s5
   15a2a:	04b000ef          	jal	16274 <__mcmp>
   15a2e:	06054563          	bltz	a0,15a98 <__quorem_D2A+0x138>
   15a32:	6541                	lui	a0,0x10
   15a34:	85d2                	mv	a1,s4
   15a36:	4681                	li	a3,0
   15a38:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   15a3a:	419c                	lw	a5,0(a1)
   15a3c:	4010                	lw	a2,0(s0)
   15a3e:	0591                	addi	a1,a1,4
   15a40:	00a7f733          	and	a4,a5,a0
   15a44:	00a67833          	and	a6,a2,a0
   15a48:	41070733          	sub	a4,a4,a6
   15a4c:	8f15                	sub	a4,a4,a3
   15a4e:	01075693          	srli	a3,a4,0x10
   15a52:	8a85                	andi	a3,a3,1
   15a54:	8241                	srli	a2,a2,0x10
   15a56:	96b2                	add	a3,a3,a2
   15a58:	83c1                	srli	a5,a5,0x10
   15a5a:	8f95                	sub	a5,a5,a3
   15a5c:	01079693          	slli	a3,a5,0x10
   15a60:	8f69                	and	a4,a4,a0
   15a62:	8f55                	or	a4,a4,a3
   15a64:	83c1                	srli	a5,a5,0x10
   15a66:	0411                	addi	s0,s0,4
   15a68:	fee5ae23          	sw	a4,-4(a1)
   15a6c:	0017f693          	andi	a3,a5,1
   15a70:	fc89f5e3          	bgeu	s3,s0,15a3a <__quorem_D2A+0xda>
   15a74:	00249793          	slli	a5,s1,0x2
   15a78:	97d2                	add	a5,a5,s4
   15a7a:	4398                	lw	a4,0(a5)
   15a7c:	ef09                	bnez	a4,15a96 <__quorem_D2A+0x136>
   15a7e:	17f1                	addi	a5,a5,-4
   15a80:	00fa6663          	bltu	s4,a5,15a8c <__quorem_D2A+0x12c>
   15a84:	a039                	j	15a92 <__quorem_D2A+0x132>
   15a86:	14fd                	addi	s1,s1,-1
   15a88:	00fa7563          	bgeu	s4,a5,15a92 <__quorem_D2A+0x132>
   15a8c:	4398                	lw	a4,0(a5)
   15a8e:	17f1                	addi	a5,a5,-4
   15a90:	db7d                	beqz	a4,15a86 <__quorem_D2A+0x126>
   15a92:	009aa823          	sw	s1,16(s5)
   15a96:	0905                	addi	s2,s2,1
   15a98:	4462                	lw	s0,24(sp)
   15a9a:	40f2                	lw	ra,28(sp)
   15a9c:	49b2                	lw	s3,12(sp)
   15a9e:	4a22                	lw	s4,8(sp)
   15aa0:	4a92                	lw	s5,4(sp)
   15aa2:	44d2                	lw	s1,20(sp)
   15aa4:	854a                	mv	a0,s2
   15aa6:	4942                	lw	s2,16(sp)
   15aa8:	6105                	addi	sp,sp,32
   15aaa:	8082                	ret
   15aac:	40f2                	lw	ra,28(sp)
   15aae:	44d2                	lw	s1,20(sp)
   15ab0:	4501                	li	a0,0
   15ab2:	6105                	addi	sp,sp,32
   15ab4:	8082                	ret

00015ab6 <__rshift_D2A>:
   15ab6:	01052803          	lw	a6,16(a0)
   15aba:	4055de13          	srai	t3,a1,0x5
   15abe:	010e4763          	blt	t3,a6,15acc <__rshift_D2A+0x16>
   15ac2:	00052823          	sw	zero,16(a0)
   15ac6:	00052a23          	sw	zero,20(a0)
   15aca:	8082                	ret
   15acc:	01450313          	addi	t1,a0,20
   15ad0:	00281613          	slli	a2,a6,0x2
   15ad4:	002e1793          	slli	a5,t3,0x2
   15ad8:	89fd                	andi	a1,a1,31
   15ada:	961a                	add	a2,a2,t1
   15adc:	979a                	add	a5,a5,t1
   15ade:	c5a1                	beqz	a1,15b26 <__rshift_D2A+0x70>
   15ae0:	4394                	lw	a3,0(a5)
   15ae2:	02000e93          	li	t4,32
   15ae6:	0791                	addi	a5,a5,4
   15ae8:	40be8eb3          	sub	t4,t4,a1
   15aec:	00b6d6b3          	srl	a3,a3,a1
   15af0:	06c7f063          	bgeu	a5,a2,15b50 <__rshift_D2A+0x9a>
   15af4:	889a                	mv	a7,t1
   15af6:	4398                	lw	a4,0(a5)
   15af8:	0891                	addi	a7,a7,4
   15afa:	0791                	addi	a5,a5,4
   15afc:	01d71733          	sll	a4,a4,t4
   15b00:	8f55                	or	a4,a4,a3
   15b02:	fee8ae23          	sw	a4,-4(a7)
   15b06:	ffc7a683          	lw	a3,-4(a5)
   15b0a:	00b6d6b3          	srl	a3,a3,a1
   15b0e:	fec7e4e3          	bltu	a5,a2,15af6 <__rshift_D2A+0x40>
   15b12:	41c80833          	sub	a6,a6,t3
   15b16:	080a                	slli	a6,a6,0x2
   15b18:	1871                	addi	a6,a6,-4
   15b1a:	981a                	add	a6,a6,t1
   15b1c:	00d82023          	sw	a3,0(a6)
   15b20:	c28d                	beqz	a3,15b42 <__rshift_D2A+0x8c>
   15b22:	0811                	addi	a6,a6,4
   15b24:	a839                	j	15b42 <__rshift_D2A+0x8c>
   15b26:	871a                	mv	a4,t1
   15b28:	f8c7fde3          	bgeu	a5,a2,15ac2 <__rshift_D2A+0xc>
   15b2c:	4394                	lw	a3,0(a5)
   15b2e:	0791                	addi	a5,a5,4
   15b30:	0711                	addi	a4,a4,4
   15b32:	fed72e23          	sw	a3,-4(a4)
   15b36:	fec7ebe3          	bltu	a5,a2,15b2c <__rshift_D2A+0x76>
   15b3a:	41c80833          	sub	a6,a6,t3
   15b3e:	080a                	slli	a6,a6,0x2
   15b40:	981a                	add	a6,a6,t1
   15b42:	406807b3          	sub	a5,a6,t1
   15b46:	8789                	srai	a5,a5,0x2
   15b48:	c91c                	sw	a5,16(a0)
   15b4a:	f6680ee3          	beq	a6,t1,15ac6 <__rshift_D2A+0x10>
   15b4e:	8082                	ret
   15b50:	c954                	sw	a3,20(a0)
   15b52:	daa5                	beqz	a3,15ac2 <__rshift_D2A+0xc>
   15b54:	881a                	mv	a6,t1
   15b56:	0811                	addi	a6,a6,4
   15b58:	b7ed                	j	15b42 <__rshift_D2A+0x8c>

00015b5a <__trailz_D2A>:
   15b5a:	4918                	lw	a4,16(a0)
   15b5c:	1101                	addi	sp,sp,-32
   15b5e:	0551                	addi	a0,a0,20
   15b60:	070a                	slli	a4,a4,0x2
   15b62:	cc22                	sw	s0,24(sp)
   15b64:	ce06                	sw	ra,28(sp)
   15b66:	972a                	add	a4,a4,a0
   15b68:	4401                	li	s0,0
   15b6a:	00e56863          	bltu	a0,a4,15b7a <__trailz_D2A+0x20>
   15b6e:	a831                	j	15b8a <__trailz_D2A+0x30>
   15b70:	0511                	addi	a0,a0,4
   15b72:	02040413          	addi	s0,s0,32
   15b76:	00e57a63          	bgeu	a0,a4,15b8a <__trailz_D2A+0x30>
   15b7a:	411c                	lw	a5,0(a0)
   15b7c:	dbf5                	beqz	a5,15b70 <__trailz_D2A+0x16>
   15b7e:	00e57663          	bgeu	a0,a4,15b8a <__trailz_D2A+0x30>
   15b82:	0068                	addi	a0,sp,12
   15b84:	c63e                	sw	a5,12(sp)
   15b86:	2451                	jal	15e0a <__lo0bits>
   15b88:	942a                	add	s0,s0,a0
   15b8a:	40f2                	lw	ra,28(sp)
   15b8c:	8522                	mv	a0,s0
   15b8e:	4462                	lw	s0,24(sp)
   15b90:	6105                	addi	sp,sp,32
   15b92:	8082                	ret

00015b94 <_Balloc>:
   15b94:	417c                	lw	a5,68(a0)
   15b96:	1141                	addi	sp,sp,-16
   15b98:	c422                	sw	s0,8(sp)
   15b9a:	c226                	sw	s1,4(sp)
   15b9c:	c606                	sw	ra,12(sp)
   15b9e:	842a                	mv	s0,a0
   15ba0:	84ae                	mv	s1,a1
   15ba2:	c38d                	beqz	a5,15bc4 <_Balloc+0x30>
   15ba4:	00249713          	slli	a4,s1,0x2
   15ba8:	97ba                	add	a5,a5,a4
   15baa:	4388                	lw	a0,0(a5)
   15bac:	c515                	beqz	a0,15bd8 <_Balloc+0x44>
   15bae:	4118                	lw	a4,0(a0)
   15bb0:	c398                	sw	a4,0(a5)
   15bb2:	00052823          	sw	zero,16(a0)
   15bb6:	00052623          	sw	zero,12(a0)
   15bba:	40b2                	lw	ra,12(sp)
   15bbc:	4422                	lw	s0,8(sp)
   15bbe:	4492                	lw	s1,4(sp)
   15bc0:	0141                	addi	sp,sp,16
   15bc2:	8082                	ret
   15bc4:	02100613          	li	a2,33
   15bc8:	4591                	li	a1,4
   15bca:	3a8010ef          	jal	16f72 <_calloc_r>
   15bce:	c068                	sw	a0,68(s0)
   15bd0:	87aa                	mv	a5,a0
   15bd2:	f969                	bnez	a0,15ba4 <_Balloc+0x10>
   15bd4:	4501                	li	a0,0
   15bd6:	b7d5                	j	15bba <_Balloc+0x26>
   15bd8:	c04a                	sw	s2,0(sp)
   15bda:	4905                	li	s2,1
   15bdc:	00991933          	sll	s2,s2,s1
   15be0:	00590613          	addi	a2,s2,5
   15be4:	060a                	slli	a2,a2,0x2
   15be6:	4585                	li	a1,1
   15be8:	8522                	mv	a0,s0
   15bea:	388010ef          	jal	16f72 <_calloc_r>
   15bee:	c511                	beqz	a0,15bfa <_Balloc+0x66>
   15bf0:	01252423          	sw	s2,8(a0)
   15bf4:	c144                	sw	s1,4(a0)
   15bf6:	4902                	lw	s2,0(sp)
   15bf8:	bf6d                	j	15bb2 <_Balloc+0x1e>
   15bfa:	4902                	lw	s2,0(sp)
   15bfc:	4501                	li	a0,0
   15bfe:	bf75                	j	15bba <_Balloc+0x26>

00015c00 <_Bfree>:
   15c00:	c981                	beqz	a1,15c10 <_Bfree+0x10>
   15c02:	41d8                	lw	a4,4(a1)
   15c04:	417c                	lw	a5,68(a0)
   15c06:	070a                	slli	a4,a4,0x2
   15c08:	97ba                	add	a5,a5,a4
   15c0a:	4398                	lw	a4,0(a5)
   15c0c:	c198                	sw	a4,0(a1)
   15c0e:	c38c                	sw	a1,0(a5)
   15c10:	8082                	ret

00015c12 <__multadd>:
   15c12:	1101                	addi	sp,sp,-32
   15c14:	ca26                	sw	s1,20(sp)
   15c16:	4984                	lw	s1,16(a1)
   15c18:	6341                	lui	t1,0x10
   15c1a:	cc22                	sw	s0,24(sp)
   15c1c:	c84a                	sw	s2,16(sp)
   15c1e:	c64e                	sw	s3,12(sp)
   15c20:	ce06                	sw	ra,28(sp)
   15c22:	892e                	mv	s2,a1
   15c24:	89aa                	mv	s3,a0
   15c26:	8436                	mv	s0,a3
   15c28:	01458813          	addi	a6,a1,20
   15c2c:	4881                	li	a7,0
   15c2e:	137d                	addi	t1,t1,-1 # ffff <exit-0x95>
   15c30:	00082783          	lw	a5,0(a6)
   15c34:	0811                	addi	a6,a6,4
   15c36:	0885                	addi	a7,a7,1
   15c38:	0067f733          	and	a4,a5,t1
   15c3c:	02c70733          	mul	a4,a4,a2
   15c40:	0107d693          	srli	a3,a5,0x10
   15c44:	02c686b3          	mul	a3,a3,a2
   15c48:	008707b3          	add	a5,a4,s0
   15c4c:	0107d713          	srli	a4,a5,0x10
   15c50:	0067f7b3          	and	a5,a5,t1
   15c54:	96ba                	add	a3,a3,a4
   15c56:	01069713          	slli	a4,a3,0x10
   15c5a:	97ba                	add	a5,a5,a4
   15c5c:	fef82e23          	sw	a5,-4(a6)
   15c60:	0106d413          	srli	s0,a3,0x10
   15c64:	fc98c6e3          	blt	a7,s1,15c30 <__multadd+0x1e>
   15c68:	cc09                	beqz	s0,15c82 <__multadd+0x70>
   15c6a:	00892783          	lw	a5,8(s2)
   15c6e:	02f4d263          	bge	s1,a5,15c92 <__multadd+0x80>
   15c72:	00448793          	addi	a5,s1,4
   15c76:	078a                	slli	a5,a5,0x2
   15c78:	97ca                	add	a5,a5,s2
   15c7a:	c3c0                	sw	s0,4(a5)
   15c7c:	0485                	addi	s1,s1,1
   15c7e:	00992823          	sw	s1,16(s2)
   15c82:	40f2                	lw	ra,28(sp)
   15c84:	4462                	lw	s0,24(sp)
   15c86:	44d2                	lw	s1,20(sp)
   15c88:	49b2                	lw	s3,12(sp)
   15c8a:	854a                	mv	a0,s2
   15c8c:	4942                	lw	s2,16(sp)
   15c8e:	6105                	addi	sp,sp,32
   15c90:	8082                	ret
   15c92:	00492583          	lw	a1,4(s2)
   15c96:	854e                	mv	a0,s3
   15c98:	c452                	sw	s4,8(sp)
   15c9a:	0585                	addi	a1,a1,1
   15c9c:	3de5                	jal	15b94 <_Balloc>
   15c9e:	8a2a                	mv	s4,a0
   15ca0:	c121                	beqz	a0,15ce0 <__multadd+0xce>
   15ca2:	01092603          	lw	a2,16(s2)
   15ca6:	00c90593          	addi	a1,s2,12
   15caa:	0531                	addi	a0,a0,12
   15cac:	0609                	addi	a2,a2,2
   15cae:	060a                	slli	a2,a2,0x2
   15cb0:	f4efe0ef          	jal	143fe <memcpy>
   15cb4:	00492703          	lw	a4,4(s2)
   15cb8:	0449a783          	lw	a5,68(s3)
   15cbc:	070a                	slli	a4,a4,0x2
   15cbe:	97ba                	add	a5,a5,a4
   15cc0:	4398                	lw	a4,0(a5)
   15cc2:	00e92023          	sw	a4,0(s2)
   15cc6:	0127a023          	sw	s2,0(a5)
   15cca:	00448793          	addi	a5,s1,4
   15cce:	8952                	mv	s2,s4
   15cd0:	078a                	slli	a5,a5,0x2
   15cd2:	97ca                	add	a5,a5,s2
   15cd4:	4a22                	lw	s4,8(sp)
   15cd6:	0485                	addi	s1,s1,1
   15cd8:	c3c0                	sw	s0,4(a5)
   15cda:	00992823          	sw	s1,16(s2)
   15cde:	b755                	j	15c82 <__multadd+0x70>
   15ce0:	66ed                	lui	a3,0x1b
   15ce2:	656d                	lui	a0,0x1b
   15ce4:	90468693          	addi	a3,a3,-1788 # 1a904 <__clzsi2+0x11a>
   15ce8:	4601                	li	a2,0
   15cea:	0ba00593          	li	a1,186
   15cee:	97850513          	addi	a0,a0,-1672 # 1a978 <__clzsi2+0x18e>
   15cf2:	23c010ef          	jal	16f2e <__assert_func>

00015cf6 <__s2b>:
   15cf6:	1101                	addi	sp,sp,-32
   15cf8:	cc22                	sw	s0,24(sp)
   15cfa:	ca26                	sw	s1,20(sp)
   15cfc:	c84a                	sw	s2,16(sp)
   15cfe:	c64e                	sw	s3,12(sp)
   15d00:	c452                	sw	s4,8(sp)
   15d02:	89b6                	mv	s3,a3
   15d04:	47a5                	li	a5,9
   15d06:	06a1                	addi	a3,a3,8
   15d08:	ce06                	sw	ra,28(sp)
   15d0a:	02f6c6b3          	div	a3,a3,a5
   15d0e:	892a                	mv	s2,a0
   15d10:	842e                	mv	s0,a1
   15d12:	8a32                	mv	s4,a2
   15d14:	84ba                	mv	s1,a4
   15d16:	0937d263          	bge	a5,s3,15d9a <__s2b+0xa4>
   15d1a:	4785                	li	a5,1
   15d1c:	4581                	li	a1,0
   15d1e:	0786                	slli	a5,a5,0x1
   15d20:	0585                	addi	a1,a1,1
   15d22:	fed7cee3          	blt	a5,a3,15d1e <__s2b+0x28>
   15d26:	854a                	mv	a0,s2
   15d28:	35b5                	jal	15b94 <_Balloc>
   15d2a:	85aa                	mv	a1,a0
   15d2c:	c92d                	beqz	a0,15d9e <__s2b+0xa8>
   15d2e:	4785                	li	a5,1
   15d30:	c91c                	sw	a5,16(a0)
   15d32:	c944                	sw	s1,20(a0)
   15d34:	47a5                	li	a5,9
   15d36:	0547df63          	bge	a5,s4,15d94 <__s2b+0x9e>
   15d3a:	c256                	sw	s5,4(sp)
   15d3c:	00940a93          	addi	s5,s0,9
   15d40:	84d6                	mv	s1,s5
   15d42:	9452                	add	s0,s0,s4
   15d44:	0004c683          	lbu	a3,0(s1)
   15d48:	4629                	li	a2,10
   15d4a:	854a                	mv	a0,s2
   15d4c:	fd068693          	addi	a3,a3,-48
   15d50:	35c9                	jal	15c12 <__multadd>
   15d52:	0485                	addi	s1,s1,1
   15d54:	85aa                	mv	a1,a0
   15d56:	fe8497e3          	bne	s1,s0,15d44 <__s2b+0x4e>
   15d5a:	ff8a0413          	addi	s0,s4,-8
   15d5e:	9456                	add	s0,s0,s5
   15d60:	4a92                	lw	s5,4(sp)
   15d62:	033a5063          	bge	s4,s3,15d82 <__s2b+0x8c>
   15d66:	414989b3          	sub	s3,s3,s4
   15d6a:	99a2                	add	s3,s3,s0
   15d6c:	00044683          	lbu	a3,0(s0)
   15d70:	4629                	li	a2,10
   15d72:	854a                	mv	a0,s2
   15d74:	fd068693          	addi	a3,a3,-48
   15d78:	3d69                	jal	15c12 <__multadd>
   15d7a:	0405                	addi	s0,s0,1
   15d7c:	85aa                	mv	a1,a0
   15d7e:	ff3417e3          	bne	s0,s3,15d6c <__s2b+0x76>
   15d82:	40f2                	lw	ra,28(sp)
   15d84:	4462                	lw	s0,24(sp)
   15d86:	44d2                	lw	s1,20(sp)
   15d88:	4942                	lw	s2,16(sp)
   15d8a:	49b2                	lw	s3,12(sp)
   15d8c:	4a22                	lw	s4,8(sp)
   15d8e:	852e                	mv	a0,a1
   15d90:	6105                	addi	sp,sp,32
   15d92:	8082                	ret
   15d94:	0429                	addi	s0,s0,10
   15d96:	4a25                	li	s4,9
   15d98:	b7e9                	j	15d62 <__s2b+0x6c>
   15d9a:	4581                	li	a1,0
   15d9c:	b769                	j	15d26 <__s2b+0x30>
   15d9e:	66ed                	lui	a3,0x1b
   15da0:	656d                	lui	a0,0x1b
   15da2:	90468693          	addi	a3,a3,-1788 # 1a904 <__clzsi2+0x11a>
   15da6:	4601                	li	a2,0
   15da8:	0d300593          	li	a1,211
   15dac:	97850513          	addi	a0,a0,-1672 # 1a978 <__clzsi2+0x18e>
   15db0:	c256                	sw	s5,4(sp)
   15db2:	17c010ef          	jal	16f2e <__assert_func>

00015db6 <__hi0bits>:
   15db6:	87aa                	mv	a5,a0
   15db8:	6741                	lui	a4,0x10
   15dba:	4501                	li	a0,0
   15dbc:	00e7f463          	bgeu	a5,a4,15dc4 <__hi0bits+0xe>
   15dc0:	07c2                	slli	a5,a5,0x10
   15dc2:	4541                	li	a0,16
   15dc4:	01000737          	lui	a4,0x1000
   15dc8:	00e7f463          	bgeu	a5,a4,15dd0 <__hi0bits+0x1a>
   15dcc:	0521                	addi	a0,a0,8
   15dce:	07a2                	slli	a5,a5,0x8
   15dd0:	10000737          	lui	a4,0x10000
   15dd4:	00e7f463          	bgeu	a5,a4,15ddc <__hi0bits+0x26>
   15dd8:	0511                	addi	a0,a0,4
   15dda:	0792                	slli	a5,a5,0x4
   15ddc:	40000737          	lui	a4,0x40000
   15de0:	00e7e763          	bltu	a5,a4,15dee <__hi0bits+0x38>
   15de4:	fff7c793          	not	a5,a5
   15de8:	83fd                	srli	a5,a5,0x1f
   15dea:	953e                	add	a0,a0,a5
   15dec:	8082                	ret
   15dee:	078a                	slli	a5,a5,0x2
   15df0:	0007c963          	bltz	a5,15e02 <__hi0bits+0x4c>
   15df4:	00179713          	slli	a4,a5,0x1
   15df8:	00074763          	bltz	a4,15e06 <__hi0bits+0x50>
   15dfc:	02000513          	li	a0,32
   15e00:	8082                	ret
   15e02:	0509                	addi	a0,a0,2
   15e04:	8082                	ret
   15e06:	050d                	addi	a0,a0,3
   15e08:	8082                	ret

00015e0a <__lo0bits>:
   15e0a:	411c                	lw	a5,0(a0)
   15e0c:	872a                	mv	a4,a0
   15e0e:	0077f693          	andi	a3,a5,7
   15e12:	ce81                	beqz	a3,15e2a <__lo0bits+0x20>
   15e14:	0017f693          	andi	a3,a5,1
   15e18:	4501                	li	a0,0
   15e1a:	ee95                	bnez	a3,15e56 <__lo0bits+0x4c>
   15e1c:	0027f693          	andi	a3,a5,2
   15e20:	c6b5                	beqz	a3,15e8c <__lo0bits+0x82>
   15e22:	8385                	srli	a5,a5,0x1
   15e24:	c31c                	sw	a5,0(a4)
   15e26:	4505                	li	a0,1
   15e28:	8082                	ret
   15e2a:	01079693          	slli	a3,a5,0x10
   15e2e:	82c1                	srli	a3,a3,0x10
   15e30:	4501                	li	a0,0
   15e32:	c6b9                	beqz	a3,15e80 <__lo0bits+0x76>
   15e34:	0ff7f693          	zext.b	a3,a5
   15e38:	ce95                	beqz	a3,15e74 <__lo0bits+0x6a>
   15e3a:	00f7f693          	andi	a3,a5,15
   15e3e:	c68d                	beqz	a3,15e68 <__lo0bits+0x5e>
   15e40:	0037f693          	andi	a3,a5,3
   15e44:	ce81                	beqz	a3,15e5c <__lo0bits+0x52>
   15e46:	0017f693          	andi	a3,a5,1
   15e4a:	e699                	bnez	a3,15e58 <__lo0bits+0x4e>
   15e4c:	8385                	srli	a5,a5,0x1
   15e4e:	0505                	addi	a0,a0,1
   15e50:	e781                	bnez	a5,15e58 <__lo0bits+0x4e>
   15e52:	02000513          	li	a0,32
   15e56:	8082                	ret
   15e58:	c31c                	sw	a5,0(a4)
   15e5a:	8082                	ret
   15e5c:	8389                	srli	a5,a5,0x2
   15e5e:	0017f693          	andi	a3,a5,1
   15e62:	0509                	addi	a0,a0,2
   15e64:	faf5                	bnez	a3,15e58 <__lo0bits+0x4e>
   15e66:	b7dd                	j	15e4c <__lo0bits+0x42>
   15e68:	8391                	srli	a5,a5,0x4
   15e6a:	0037f693          	andi	a3,a5,3
   15e6e:	0511                	addi	a0,a0,4
   15e70:	faf9                	bnez	a3,15e46 <__lo0bits+0x3c>
   15e72:	b7ed                	j	15e5c <__lo0bits+0x52>
   15e74:	83a1                	srli	a5,a5,0x8
   15e76:	00f7f693          	andi	a3,a5,15
   15e7a:	0521                	addi	a0,a0,8
   15e7c:	f2f1                	bnez	a3,15e40 <__lo0bits+0x36>
   15e7e:	b7ed                	j	15e68 <__lo0bits+0x5e>
   15e80:	83c1                	srli	a5,a5,0x10
   15e82:	0ff7f693          	zext.b	a3,a5
   15e86:	4541                	li	a0,16
   15e88:	facd                	bnez	a3,15e3a <__lo0bits+0x30>
   15e8a:	b7ed                	j	15e74 <__lo0bits+0x6a>
   15e8c:	8389                	srli	a5,a5,0x2
   15e8e:	c31c                	sw	a5,0(a4)
   15e90:	4509                	li	a0,2
   15e92:	8082                	ret

00015e94 <__i2b>:
   15e94:	417c                	lw	a5,68(a0)
   15e96:	1141                	addi	sp,sp,-16
   15e98:	c422                	sw	s0,8(sp)
   15e9a:	c226                	sw	s1,4(sp)
   15e9c:	c606                	sw	ra,12(sp)
   15e9e:	842a                	mv	s0,a0
   15ea0:	84ae                	mv	s1,a1
   15ea2:	cf99                	beqz	a5,15ec0 <__i2b+0x2c>
   15ea4:	43c8                	lw	a0,4(a5)
   15ea6:	c121                	beqz	a0,15ee6 <__i2b+0x52>
   15ea8:	4118                	lw	a4,0(a0)
   15eaa:	c3d8                	sw	a4,4(a5)
   15eac:	40b2                	lw	ra,12(sp)
   15eae:	4422                	lw	s0,8(sp)
   15eb0:	4785                	li	a5,1
   15eb2:	c944                	sw	s1,20(a0)
   15eb4:	00052623          	sw	zero,12(a0)
   15eb8:	c91c                	sw	a5,16(a0)
   15eba:	4492                	lw	s1,4(sp)
   15ebc:	0141                	addi	sp,sp,16
   15ebe:	8082                	ret
   15ec0:	02100613          	li	a2,33
   15ec4:	4591                	li	a1,4
   15ec6:	0ac010ef          	jal	16f72 <_calloc_r>
   15eca:	c068                	sw	a0,68(s0)
   15ecc:	87aa                	mv	a5,a0
   15ece:	f979                	bnez	a0,15ea4 <__i2b+0x10>
   15ed0:	66ed                	lui	a3,0x1b
   15ed2:	656d                	lui	a0,0x1b
   15ed4:	90468693          	addi	a3,a3,-1788 # 1a904 <__clzsi2+0x11a>
   15ed8:	4601                	li	a2,0
   15eda:	14500593          	li	a1,325
   15ede:	97850513          	addi	a0,a0,-1672 # 1a978 <__clzsi2+0x18e>
   15ee2:	04c010ef          	jal	16f2e <__assert_func>
   15ee6:	4671                	li	a2,28
   15ee8:	4585                	li	a1,1
   15eea:	8522                	mv	a0,s0
   15eec:	086010ef          	jal	16f72 <_calloc_r>
   15ef0:	d165                	beqz	a0,15ed0 <__i2b+0x3c>
   15ef2:	4785                	li	a5,1
   15ef4:	c15c                	sw	a5,4(a0)
   15ef6:	4789                	li	a5,2
   15ef8:	c51c                	sw	a5,8(a0)
   15efa:	bf4d                	j	15eac <__i2b+0x18>

00015efc <__multiply>:
   15efc:	1101                	addi	sp,sp,-32
   15efe:	c84a                	sw	s2,16(sp)
   15f00:	c64e                	sw	s3,12(sp)
   15f02:	0105a903          	lw	s2,16(a1)
   15f06:	01062983          	lw	s3,16(a2)
   15f0a:	ca26                	sw	s1,20(sp)
   15f0c:	c452                	sw	s4,8(sp)
   15f0e:	ce06                	sw	ra,28(sp)
   15f10:	cc22                	sw	s0,24(sp)
   15f12:	8a2e                	mv	s4,a1
   15f14:	84b2                	mv	s1,a2
   15f16:	01394763          	blt	s2,s3,15f24 <__multiply+0x28>
   15f1a:	874e                	mv	a4,s3
   15f1c:	84ae                	mv	s1,a1
   15f1e:	89ca                	mv	s3,s2
   15f20:	8a32                	mv	s4,a2
   15f22:	893a                	mv	s2,a4
   15f24:	449c                	lw	a5,8(s1)
   15f26:	40cc                	lw	a1,4(s1)
   15f28:	01298433          	add	s0,s3,s2
   15f2c:	0087a7b3          	slt	a5,a5,s0
   15f30:	95be                	add	a1,a1,a5
   15f32:	c63ff0ef          	jal	15b94 <_Balloc>
   15f36:	14050363          	beqz	a0,1607c <__multiply+0x180>
   15f3a:	01450313          	addi	t1,a0,20
   15f3e:	00241893          	slli	a7,s0,0x2
   15f42:	989a                	add	a7,a7,t1
   15f44:	879a                	mv	a5,t1
   15f46:	01137763          	bgeu	t1,a7,15f54 <__multiply+0x58>
   15f4a:	0007a023          	sw	zero,0(a5)
   15f4e:	0791                	addi	a5,a5,4
   15f50:	ff17ede3          	bltu	a5,a7,15f4a <__multiply+0x4e>
   15f54:	014a0813          	addi	a6,s4,20
   15f58:	00291e13          	slli	t3,s2,0x2
   15f5c:	01448e93          	addi	t4,s1,20
   15f60:	00299593          	slli	a1,s3,0x2
   15f64:	9e42                	add	t3,t3,a6
   15f66:	95f6                	add	a1,a1,t4
   15f68:	0fc87163          	bgeu	a6,t3,1604a <__multiply+0x14e>
   15f6c:	01548793          	addi	a5,s1,21
   15f70:	4f11                	li	t5,4
   15f72:	0ef5fe63          	bgeu	a1,a5,1606e <__multiply+0x172>
   15f76:	66c1                	lui	a3,0x10
   15f78:	16fd                	addi	a3,a3,-1 # ffff <exit-0x95>
   15f7a:	a809                	j	15f8c <__multiply+0x90>
   15f7c:	010fdf93          	srli	t6,t6,0x10
   15f80:	060f9863          	bnez	t6,15ff0 <__multiply+0xf4>
   15f84:	0811                	addi	a6,a6,4
   15f86:	0311                	addi	t1,t1,4
   15f88:	0dc87163          	bgeu	a6,t3,1604a <__multiply+0x14e>
   15f8c:	00082f83          	lw	t6,0(a6)
   15f90:	00dff3b3          	and	t2,t6,a3
   15f94:	fe0384e3          	beqz	t2,15f7c <__multiply+0x80>
   15f98:	829a                	mv	t0,t1
   15f9a:	8ff6                	mv	t6,t4
   15f9c:	4481                	li	s1,0
   15f9e:	000fa783          	lw	a5,0(t6)
   15fa2:	0002a603          	lw	a2,0(t0) # 11464 <memset+0x8e>
   15fa6:	0291                	addi	t0,t0,4
   15fa8:	00d7f733          	and	a4,a5,a3
   15fac:	02770733          	mul	a4,a4,t2
   15fb0:	83c1                	srli	a5,a5,0x10
   15fb2:	00d67933          	and	s2,a2,a3
   15fb6:	8241                	srli	a2,a2,0x10
   15fb8:	0f91                	addi	t6,t6,4
   15fba:	027787b3          	mul	a5,a5,t2
   15fbe:	974a                	add	a4,a4,s2
   15fc0:	9726                	add	a4,a4,s1
   15fc2:	01075493          	srli	s1,a4,0x10
   15fc6:	8f75                	and	a4,a4,a3
   15fc8:	97b2                	add	a5,a5,a2
   15fca:	97a6                	add	a5,a5,s1
   15fcc:	01079613          	slli	a2,a5,0x10
   15fd0:	8f51                	or	a4,a4,a2
   15fd2:	fee2ae23          	sw	a4,-4(t0)
   15fd6:	0107d493          	srli	s1,a5,0x10
   15fda:	fcbfe2e3          	bltu	t6,a1,15f9e <__multiply+0xa2>
   15fde:	01e307b3          	add	a5,t1,t5
   15fe2:	c384                	sw	s1,0(a5)
   15fe4:	00082f83          	lw	t6,0(a6)
   15fe8:	010fdf93          	srli	t6,t6,0x10
   15fec:	f80f8ce3          	beqz	t6,15f84 <__multiply+0x88>
   15ff0:	00032703          	lw	a4,0(t1)
   15ff4:	829a                	mv	t0,t1
   15ff6:	8676                	mv	a2,t4
   15ff8:	84ba                	mv	s1,a4
   15ffa:	4381                	li	t2,0
   15ffc:	421c                	lw	a5,0(a2)
   15ffe:	0104d993          	srli	s3,s1,0x10
   16002:	8f75                	and	a4,a4,a3
   16004:	8ff5                	and	a5,a5,a3
   16006:	03f787b3          	mul	a5,a5,t6
   1600a:	0042a483          	lw	s1,4(t0)
   1600e:	0291                	addi	t0,t0,4
   16010:	0611                	addi	a2,a2,4
   16012:	00d4f933          	and	s2,s1,a3
   16016:	979e                	add	a5,a5,t2
   16018:	97ce                	add	a5,a5,s3
   1601a:	01079393          	slli	t2,a5,0x10
   1601e:	00e3e733          	or	a4,t2,a4
   16022:	fee2ae23          	sw	a4,-4(t0)
   16026:	ffe65703          	lhu	a4,-2(a2)
   1602a:	83c1                	srli	a5,a5,0x10
   1602c:	03f70733          	mul	a4,a4,t6
   16030:	974a                	add	a4,a4,s2
   16032:	973e                	add	a4,a4,a5
   16034:	01075393          	srli	t2,a4,0x10
   16038:	fcb662e3          	bltu	a2,a1,15ffc <__multiply+0x100>
   1603c:	01e307b3          	add	a5,t1,t5
   16040:	c398                	sw	a4,0(a5)
   16042:	0811                	addi	a6,a6,4
   16044:	0311                	addi	t1,t1,4
   16046:	f5c863e3          	bltu	a6,t3,15f8c <__multiply+0x90>
   1604a:	00804563          	bgtz	s0,16054 <__multiply+0x158>
   1604e:	a039                	j	1605c <__multiply+0x160>
   16050:	147d                	addi	s0,s0,-1
   16052:	c409                	beqz	s0,1605c <__multiply+0x160>
   16054:	ffc8a783          	lw	a5,-4(a7)
   16058:	18f1                	addi	a7,a7,-4
   1605a:	dbfd                	beqz	a5,16050 <__multiply+0x154>
   1605c:	40f2                	lw	ra,28(sp)
   1605e:	c900                	sw	s0,16(a0)
   16060:	4462                	lw	s0,24(sp)
   16062:	44d2                	lw	s1,20(sp)
   16064:	4942                	lw	s2,16(sp)
   16066:	49b2                	lw	s3,12(sp)
   16068:	4a22                	lw	s4,8(sp)
   1606a:	6105                	addi	sp,sp,32
   1606c:	8082                	ret
   1606e:	409587b3          	sub	a5,a1,s1
   16072:	17ad                	addi	a5,a5,-21
   16074:	9bf1                	andi	a5,a5,-4
   16076:	00478f13          	addi	t5,a5,4
   1607a:	bdf5                	j	15f76 <__multiply+0x7a>
   1607c:	66ed                	lui	a3,0x1b
   1607e:	656d                	lui	a0,0x1b
   16080:	90468693          	addi	a3,a3,-1788 # 1a904 <__clzsi2+0x11a>
   16084:	4601                	li	a2,0
   16086:	16200593          	li	a1,354
   1608a:	97850513          	addi	a0,a0,-1672 # 1a978 <__clzsi2+0x18e>
   1608e:	6a1000ef          	jal	16f2e <__assert_func>

00016092 <__pow5mult>:
   16092:	1101                	addi	sp,sp,-32
   16094:	cc22                	sw	s0,24(sp)
   16096:	c84a                	sw	s2,16(sp)
   16098:	c64e                	sw	s3,12(sp)
   1609a:	ce06                	sw	ra,28(sp)
   1609c:	00367793          	andi	a5,a2,3
   160a0:	8432                	mv	s0,a2
   160a2:	89aa                	mv	s3,a0
   160a4:	892e                	mv	s2,a1
   160a6:	ebad                	bnez	a5,16118 <__pow5mult+0x86>
   160a8:	8409                	srai	s0,s0,0x2
   160aa:	c431                	beqz	s0,160f6 <__pow5mult+0x64>
   160ac:	ca26                	sw	s1,20(sp)
   160ae:	0409a483          	lw	s1,64(s3)
   160b2:	ccbd                	beqz	s1,16130 <__pow5mult+0x9e>
   160b4:	00147793          	andi	a5,s0,1
   160b8:	eb89                	bnez	a5,160ca <__pow5mult+0x38>
   160ba:	8405                	srai	s0,s0,0x1
   160bc:	cc05                	beqz	s0,160f4 <__pow5mult+0x62>
   160be:	4088                	lw	a0,0(s1)
   160c0:	c131                	beqz	a0,16104 <__pow5mult+0x72>
   160c2:	84aa                	mv	s1,a0
   160c4:	00147793          	andi	a5,s0,1
   160c8:	dbed                	beqz	a5,160ba <__pow5mult+0x28>
   160ca:	8626                	mv	a2,s1
   160cc:	85ca                	mv	a1,s2
   160ce:	854e                	mv	a0,s3
   160d0:	e2dff0ef          	jal	15efc <__multiply>
   160d4:	00090d63          	beqz	s2,160ee <__pow5mult+0x5c>
   160d8:	00492703          	lw	a4,4(s2)
   160dc:	0449a783          	lw	a5,68(s3)
   160e0:	070a                	slli	a4,a4,0x2
   160e2:	97ba                	add	a5,a5,a4
   160e4:	4398                	lw	a4,0(a5)
   160e6:	00e92023          	sw	a4,0(s2)
   160ea:	0127a023          	sw	s2,0(a5)
   160ee:	8405                	srai	s0,s0,0x1
   160f0:	892a                	mv	s2,a0
   160f2:	f471                	bnez	s0,160be <__pow5mult+0x2c>
   160f4:	44d2                	lw	s1,20(sp)
   160f6:	40f2                	lw	ra,28(sp)
   160f8:	4462                	lw	s0,24(sp)
   160fa:	49b2                	lw	s3,12(sp)
   160fc:	854a                	mv	a0,s2
   160fe:	4942                	lw	s2,16(sp)
   16100:	6105                	addi	sp,sp,32
   16102:	8082                	ret
   16104:	8626                	mv	a2,s1
   16106:	85a6                	mv	a1,s1
   16108:	854e                	mv	a0,s3
   1610a:	df3ff0ef          	jal	15efc <__multiply>
   1610e:	c088                	sw	a0,0(s1)
   16110:	00052023          	sw	zero,0(a0)
   16114:	84aa                	mv	s1,a0
   16116:	b77d                	j	160c4 <__pow5mult+0x32>
   16118:	17fd                	addi	a5,a5,-1
   1611a:	676d                	lui	a4,0x1b
   1611c:	d7870713          	addi	a4,a4,-648 # 1ad78 <p05.0>
   16120:	078a                	slli	a5,a5,0x2
   16122:	97ba                	add	a5,a5,a4
   16124:	4390                	lw	a2,0(a5)
   16126:	4681                	li	a3,0
   16128:	aebff0ef          	jal	15c12 <__multadd>
   1612c:	892a                	mv	s2,a0
   1612e:	bfad                	j	160a8 <__pow5mult+0x16>
   16130:	4585                	li	a1,1
   16132:	854e                	mv	a0,s3
   16134:	a61ff0ef          	jal	15b94 <_Balloc>
   16138:	84aa                	mv	s1,a0
   1613a:	c919                	beqz	a0,16150 <__pow5mult+0xbe>
   1613c:	27100793          	li	a5,625
   16140:	c95c                	sw	a5,20(a0)
   16142:	4785                	li	a5,1
   16144:	c91c                	sw	a5,16(a0)
   16146:	04a9a023          	sw	a0,64(s3)
   1614a:	00052023          	sw	zero,0(a0)
   1614e:	b79d                	j	160b4 <__pow5mult+0x22>
   16150:	66ed                	lui	a3,0x1b
   16152:	656d                	lui	a0,0x1b
   16154:	90468693          	addi	a3,a3,-1788 # 1a904 <__clzsi2+0x11a>
   16158:	4601                	li	a2,0
   1615a:	14500593          	li	a1,325
   1615e:	97850513          	addi	a0,a0,-1672 # 1a978 <__clzsi2+0x18e>
   16162:	5cd000ef          	jal	16f2e <__assert_func>

00016166 <__lshift>:
   16166:	1101                	addi	sp,sp,-32
   16168:	c256                	sw	s5,4(sp)
   1616a:	0105aa83          	lw	s5,16(a1)
   1616e:	459c                	lw	a5,8(a1)
   16170:	c64e                	sw	s3,12(sp)
   16172:	40565993          	srai	s3,a2,0x5
   16176:	9ace                	add	s5,s5,s3
   16178:	cc22                	sw	s0,24(sp)
   1617a:	ca26                	sw	s1,20(sp)
   1617c:	c84a                	sw	s2,16(sp)
   1617e:	c452                	sw	s4,8(sp)
   16180:	ce06                	sw	ra,28(sp)
   16182:	001a8913          	addi	s2,s5,1
   16186:	84ae                	mv	s1,a1
   16188:	8432                	mv	s0,a2
   1618a:	41cc                	lw	a1,4(a1)
   1618c:	8a2a                	mv	s4,a0
   1618e:	0127d663          	bge	a5,s2,1619a <__lshift+0x34>
   16192:	0786                	slli	a5,a5,0x1
   16194:	0585                	addi	a1,a1,1
   16196:	ff27cee3          	blt	a5,s2,16192 <__lshift+0x2c>
   1619a:	8552                	mv	a0,s4
   1619c:	9f9ff0ef          	jal	15b94 <_Balloc>
   161a0:	cd5d                	beqz	a0,1625e <__lshift+0xf8>
   161a2:	01450813          	addi	a6,a0,20
   161a6:	01305e63          	blez	s3,161c2 <__lshift+0x5c>
   161aa:	0995                	addi	s3,s3,5
   161ac:	098a                	slli	s3,s3,0x2
   161ae:	01350733          	add	a4,a0,s3
   161b2:	87c2                	mv	a5,a6
   161b4:	0791                	addi	a5,a5,4
   161b6:	fe07ae23          	sw	zero,-4(a5)
   161ba:	fee79de3          	bne	a5,a4,161b4 <__lshift+0x4e>
   161be:	19b1                	addi	s3,s3,-20
   161c0:	984e                	add	a6,a6,s3
   161c2:	0104a883          	lw	a7,16(s1)
   161c6:	01448793          	addi	a5,s1,20
   161ca:	01f47613          	andi	a2,s0,31
   161ce:	088a                	slli	a7,a7,0x2
   161d0:	98be                	add	a7,a7,a5
   161d2:	c63d                	beqz	a2,16240 <__lshift+0xda>
   161d4:	02000593          	li	a1,32
   161d8:	8d91                	sub	a1,a1,a2
   161da:	8342                	mv	t1,a6
   161dc:	4681                	li	a3,0
   161de:	4398                	lw	a4,0(a5)
   161e0:	0311                	addi	t1,t1,4
   161e2:	0791                	addi	a5,a5,4
   161e4:	00c71733          	sll	a4,a4,a2
   161e8:	8f55                	or	a4,a4,a3
   161ea:	fee32e23          	sw	a4,-4(t1)
   161ee:	ffc7a683          	lw	a3,-4(a5)
   161f2:	00b6d6b3          	srl	a3,a3,a1
   161f6:	ff17e4e3          	bltu	a5,a7,161de <__lshift+0x78>
   161fa:	01548793          	addi	a5,s1,21
   161fe:	4711                	li	a4,4
   16200:	00f8e863          	bltu	a7,a5,16210 <__lshift+0xaa>
   16204:	409887b3          	sub	a5,a7,s1
   16208:	17ad                	addi	a5,a5,-21
   1620a:	9bf1                	andi	a5,a5,-4
   1620c:	00478713          	addi	a4,a5,4
   16210:	983a                	add	a6,a6,a4
   16212:	00d82023          	sw	a3,0(a6)
   16216:	e291                	bnez	a3,1621a <__lshift+0xb4>
   16218:	8956                	mv	s2,s5
   1621a:	40d8                	lw	a4,4(s1)
   1621c:	044a2783          	lw	a5,68(s4)
   16220:	40f2                	lw	ra,28(sp)
   16222:	070a                	slli	a4,a4,0x2
   16224:	97ba                	add	a5,a5,a4
   16226:	4398                	lw	a4,0(a5)
   16228:	01252823          	sw	s2,16(a0)
   1622c:	4462                	lw	s0,24(sp)
   1622e:	c098                	sw	a4,0(s1)
   16230:	c384                	sw	s1,0(a5)
   16232:	4942                	lw	s2,16(sp)
   16234:	44d2                	lw	s1,20(sp)
   16236:	49b2                	lw	s3,12(sp)
   16238:	4a22                	lw	s4,8(sp)
   1623a:	4a92                	lw	s5,4(sp)
   1623c:	6105                	addi	sp,sp,32
   1623e:	8082                	ret
   16240:	4398                	lw	a4,0(a5)
   16242:	0791                	addi	a5,a5,4
   16244:	0811                	addi	a6,a6,4
   16246:	fee82e23          	sw	a4,-4(a6)
   1624a:	fd17f7e3          	bgeu	a5,a7,16218 <__lshift+0xb2>
   1624e:	4398                	lw	a4,0(a5)
   16250:	0791                	addi	a5,a5,4
   16252:	0811                	addi	a6,a6,4
   16254:	fee82e23          	sw	a4,-4(a6)
   16258:	ff17e4e3          	bltu	a5,a7,16240 <__lshift+0xda>
   1625c:	bf75                	j	16218 <__lshift+0xb2>
   1625e:	66ed                	lui	a3,0x1b
   16260:	656d                	lui	a0,0x1b
   16262:	90468693          	addi	a3,a3,-1788 # 1a904 <__clzsi2+0x11a>
   16266:	4601                	li	a2,0
   16268:	1de00593          	li	a1,478
   1626c:	97850513          	addi	a0,a0,-1672 # 1a978 <__clzsi2+0x18e>
   16270:	4bf000ef          	jal	16f2e <__assert_func>

00016274 <__mcmp>:
   16274:	4918                	lw	a4,16(a0)
   16276:	499c                	lw	a5,16(a1)
   16278:	882a                	mv	a6,a0
   1627a:	40f70533          	sub	a0,a4,a5
   1627e:	02f71863          	bne	a4,a5,162ae <__mcmp+0x3a>
   16282:	078a                	slli	a5,a5,0x2
   16284:	0851                	addi	a6,a6,20
   16286:	05d1                	addi	a1,a1,20
   16288:	00f80733          	add	a4,a6,a5
   1628c:	97ae                	add	a5,a5,a1
   1628e:	a019                	j	16294 <__mcmp+0x20>
   16290:	00e87f63          	bgeu	a6,a4,162ae <__mcmp+0x3a>
   16294:	ffc72603          	lw	a2,-4(a4)
   16298:	ffc7a683          	lw	a3,-4(a5)
   1629c:	1771                	addi	a4,a4,-4
   1629e:	17f1                	addi	a5,a5,-4
   162a0:	fed608e3          	beq	a2,a3,16290 <__mcmp+0x1c>
   162a4:	4505                	li	a0,1
   162a6:	00d67463          	bgeu	a2,a3,162ae <__mcmp+0x3a>
   162aa:	557d                	li	a0,-1
   162ac:	8082                	ret
   162ae:	8082                	ret

000162b0 <__mdiff>:
   162b0:	4998                	lw	a4,16(a1)
   162b2:	4a1c                	lw	a5,16(a2)
   162b4:	1141                	addi	sp,sp,-16
   162b6:	c422                	sw	s0,8(sp)
   162b8:	c226                	sw	s1,4(sp)
   162ba:	c606                	sw	ra,12(sp)
   162bc:	c04a                	sw	s2,0(sp)
   162be:	842e                	mv	s0,a1
   162c0:	84b2                	mv	s1,a2
   162c2:	40f706b3          	sub	a3,a4,a5
   162c6:	12f71863          	bne	a4,a5,163f6 <__mdiff+0x146>
   162ca:	00279693          	slli	a3,a5,0x2
   162ce:	01458613          	addi	a2,a1,20
   162d2:	01448713          	addi	a4,s1,20
   162d6:	00d607b3          	add	a5,a2,a3
   162da:	9736                	add	a4,a4,a3
   162dc:	a019                	j	162e2 <__mdiff+0x32>
   162de:	12f67463          	bgeu	a2,a5,16406 <__mdiff+0x156>
   162e2:	ffc7a583          	lw	a1,-4(a5)
   162e6:	ffc72683          	lw	a3,-4(a4)
   162ea:	17f1                	addi	a5,a5,-4
   162ec:	1771                	addi	a4,a4,-4
   162ee:	fed588e3          	beq	a1,a3,162de <__mdiff+0x2e>
   162f2:	4905                	li	s2,1
   162f4:	00d5e663          	bltu	a1,a3,16300 <__mdiff+0x50>
   162f8:	87a6                	mv	a5,s1
   162fa:	4901                	li	s2,0
   162fc:	84a2                	mv	s1,s0
   162fe:	843e                	mv	s0,a5
   16300:	40cc                	lw	a1,4(s1)
   16302:	893ff0ef          	jal	15b94 <_Balloc>
   16306:	12050763          	beqz	a0,16434 <__mdiff+0x184>
   1630a:	0104a883          	lw	a7,16(s1)
   1630e:	01042283          	lw	t0,16(s0)
   16312:	01448f93          	addi	t6,s1,20
   16316:	00289313          	slli	t1,a7,0x2
   1631a:	01440813          	addi	a6,s0,20
   1631e:	028a                	slli	t0,t0,0x2
   16320:	01450593          	addi	a1,a0,20
   16324:	6e41                	lui	t3,0x10
   16326:	01252623          	sw	s2,12(a0)
   1632a:	937e                	add	t1,t1,t6
   1632c:	92c2                	add	t0,t0,a6
   1632e:	8f2e                	mv	t5,a1
   16330:	8efe                	mv	t4,t6
   16332:	4681                	li	a3,0
   16334:	1e7d                	addi	t3,t3,-1 # ffff <exit-0x95>
   16336:	000ea703          	lw	a4,0(t4)
   1633a:	00082603          	lw	a2,0(a6)
   1633e:	0f11                	addi	t5,t5,4
   16340:	01c777b3          	and	a5,a4,t3
   16344:	01c673b3          	and	t2,a2,t3
   16348:	407787b3          	sub	a5,a5,t2
   1634c:	97b6                	add	a5,a5,a3
   1634e:	8341                	srli	a4,a4,0x10
   16350:	8241                	srli	a2,a2,0x10
   16352:	4107d693          	srai	a3,a5,0x10
   16356:	8f11                	sub	a4,a4,a2
   16358:	9736                	add	a4,a4,a3
   1635a:	01071693          	slli	a3,a4,0x10
   1635e:	01c7f7b3          	and	a5,a5,t3
   16362:	8fd5                	or	a5,a5,a3
   16364:	0811                	addi	a6,a6,4
   16366:	feff2e23          	sw	a5,-4(t5)
   1636a:	0e91                	addi	t4,t4,4
   1636c:	41075693          	srai	a3,a4,0x10
   16370:	fc5863e3          	bltu	a6,t0,16336 <__mdiff+0x86>
   16374:	01540713          	addi	a4,s0,21
   16378:	40828433          	sub	s0,t0,s0
   1637c:	142d                	addi	s0,s0,-21
   1637e:	00e2b2b3          	sltu	t0,t0,a4
   16382:	0012cf13          	xori	t5,t0,1
   16386:	8009                	srli	s0,s0,0x2
   16388:	4711                	li	a4,4
   1638a:	06028a63          	beqz	t0,163fe <__mdiff+0x14e>
   1638e:	9fba                	add	t6,t6,a4
   16390:	00e58833          	add	a6,a1,a4
   16394:	6ec1                	lui	t4,0x10
   16396:	8e42                	mv	t3,a6
   16398:	867e                	mv	a2,t6
   1639a:	1efd                	addi	t4,t4,-1 # ffff <exit-0x95>
   1639c:	086ff363          	bgeu	t6,t1,16422 <__mdiff+0x172>
   163a0:	421c                	lw	a5,0(a2)
   163a2:	0e11                	addi	t3,t3,4
   163a4:	0611                	addi	a2,a2,4
   163a6:	01d7f733          	and	a4,a5,t4
   163aa:	9736                	add	a4,a4,a3
   163ac:	0107d593          	srli	a1,a5,0x10
   163b0:	8741                	srai	a4,a4,0x10
   163b2:	972e                	add	a4,a4,a1
   163b4:	97b6                	add	a5,a5,a3
   163b6:	01d7f7b3          	and	a5,a5,t4
   163ba:	01071693          	slli	a3,a4,0x10
   163be:	8fd5                	or	a5,a5,a3
   163c0:	fefe2e23          	sw	a5,-4(t3)
   163c4:	41075693          	srai	a3,a4,0x10
   163c8:	fc666ce3          	bltu	a2,t1,163a0 <__mdiff+0xf0>
   163cc:	137d                	addi	t1,t1,-1
   163ce:	41f30333          	sub	t1,t1,t6
   163d2:	ffc37313          	andi	t1,t1,-4
   163d6:	00680733          	add	a4,a6,t1
   163da:	e791                	bnez	a5,163e6 <__mdiff+0x136>
   163dc:	ffc72783          	lw	a5,-4(a4)
   163e0:	18fd                	addi	a7,a7,-1
   163e2:	1771                	addi	a4,a4,-4
   163e4:	dfe5                	beqz	a5,163dc <__mdiff+0x12c>
   163e6:	40b2                	lw	ra,12(sp)
   163e8:	4422                	lw	s0,8(sp)
   163ea:	01152823          	sw	a7,16(a0)
   163ee:	4492                	lw	s1,4(sp)
   163f0:	4902                	lw	s2,0(sp)
   163f2:	0141                	addi	sp,sp,16
   163f4:	8082                	ret
   163f6:	4905                	li	s2,1
   163f8:	f006d0e3          	bgez	a3,162f8 <__mdiff+0x48>
   163fc:	b711                	j	16300 <__mdiff+0x50>
   163fe:	00140713          	addi	a4,s0,1
   16402:	070a                	slli	a4,a4,0x2
   16404:	b769                	j	1638e <__mdiff+0xde>
   16406:	4581                	li	a1,0
   16408:	f8cff0ef          	jal	15b94 <_Balloc>
   1640c:	cd1d                	beqz	a0,1644a <__mdiff+0x19a>
   1640e:	40b2                	lw	ra,12(sp)
   16410:	4422                	lw	s0,8(sp)
   16412:	4785                	li	a5,1
   16414:	c91c                	sw	a5,16(a0)
   16416:	00052a23          	sw	zero,20(a0)
   1641a:	4492                	lw	s1,4(sp)
   1641c:	4902                	lw	s2,0(sp)
   1641e:	0141                	addi	sp,sp,16
   16420:	8082                	ret
   16422:	4701                	li	a4,0
   16424:	000f1463          	bnez	t5,1642c <__mdiff+0x17c>
   16428:	972e                	add	a4,a4,a1
   1642a:	bf45                	j	163da <__mdiff+0x12a>
   1642c:	00241713          	slli	a4,s0,0x2
   16430:	972e                	add	a4,a4,a1
   16432:	b765                	j	163da <__mdiff+0x12a>
   16434:	66ed                	lui	a3,0x1b
   16436:	656d                	lui	a0,0x1b
   16438:	90468693          	addi	a3,a3,-1788 # 1a904 <__clzsi2+0x11a>
   1643c:	4601                	li	a2,0
   1643e:	24500593          	li	a1,581
   16442:	97850513          	addi	a0,a0,-1672 # 1a978 <__clzsi2+0x18e>
   16446:	2e9000ef          	jal	16f2e <__assert_func>
   1644a:	66ed                	lui	a3,0x1b
   1644c:	656d                	lui	a0,0x1b
   1644e:	90468693          	addi	a3,a3,-1788 # 1a904 <__clzsi2+0x11a>
   16452:	4601                	li	a2,0
   16454:	23700593          	li	a1,567
   16458:	97850513          	addi	a0,a0,-1672 # 1a978 <__clzsi2+0x18e>
   1645c:	2d3000ef          	jal	16f2e <__assert_func>

00016460 <__ulp>:
   16460:	1141                	addi	sp,sp,-16
   16462:	a42a                	fsd	fa0,8(sp)
   16464:	4732                	lw	a4,12(sp)
   16466:	7ff007b7          	lui	a5,0x7ff00
   1646a:	8ff9                	and	a5,a5,a4
   1646c:	fcc00737          	lui	a4,0xfcc00
   16470:	97ba                	add	a5,a5,a4
   16472:	4701                	li	a4,0
   16474:	00f05763          	blez	a5,16482 <__ulp+0x22>
   16478:	c43a                	sw	a4,8(sp)
   1647a:	c63e                	sw	a5,12(sp)
   1647c:	2522                	fld	fa0,8(sp)
   1647e:	0141                	addi	sp,sp,16
   16480:	8082                	ret
   16482:	40f007b3          	neg	a5,a5
   16486:	87d1                	srai	a5,a5,0x14
   16488:	474d                	li	a4,19
   1648a:	00f74c63          	blt	a4,a5,164a2 <__ulp+0x42>
   1648e:	00080737          	lui	a4,0x80
   16492:	40f757b3          	sra	a5,a4,a5
   16496:	4701                	li	a4,0
   16498:	c43a                	sw	a4,8(sp)
   1649a:	c63e                	sw	a5,12(sp)
   1649c:	2522                	fld	fa0,8(sp)
   1649e:	0141                	addi	sp,sp,16
   164a0:	8082                	ret
   164a2:	17b1                	addi	a5,a5,-20 # 7fefffec <__BSS_END__+0x7fee3360>
   164a4:	46f9                	li	a3,30
   164a6:	4705                	li	a4,1
   164a8:	00f6c663          	blt	a3,a5,164b4 <__ulp+0x54>
   164ac:	80000737          	lui	a4,0x80000
   164b0:	00f75733          	srl	a4,a4,a5
   164b4:	4781                	li	a5,0
   164b6:	c43a                	sw	a4,8(sp)
   164b8:	c63e                	sw	a5,12(sp)
   164ba:	2522                	fld	fa0,8(sp)
   164bc:	0141                	addi	sp,sp,16
   164be:	8082                	ret

000164c0 <__b2d>:
   164c0:	7179                	addi	sp,sp,-48
   164c2:	d226                	sw	s1,36(sp)
   164c4:	4904                	lw	s1,16(a0)
   164c6:	d422                	sw	s0,40(sp)
   164c8:	01450413          	addi	s0,a0,20
   164cc:	048a                	slli	s1,s1,0x2
   164ce:	94a2                	add	s1,s1,s0
   164d0:	d04a                	sw	s2,32(sp)
   164d2:	ffc4a903          	lw	s2,-4(s1)
   164d6:	ce4e                	sw	s3,28(sp)
   164d8:	cc52                	sw	s4,24(sp)
   164da:	854a                	mv	a0,s2
   164dc:	89ae                	mv	s3,a1
   164de:	d606                	sw	ra,44(sp)
   164e0:	8d7ff0ef          	jal	15db6 <__hi0bits>
   164e4:	02000713          	li	a4,32
   164e8:	40a707b3          	sub	a5,a4,a0
   164ec:	00f9a023          	sw	a5,0(s3)
   164f0:	47a9                	li	a5,10
   164f2:	ffc48a13          	addi	s4,s1,-4
   164f6:	06a7dc63          	bge	a5,a0,1656e <__b2d+0xae>
   164fa:	ff550613          	addi	a2,a0,-11
   164fe:	03447d63          	bgeu	s0,s4,16538 <__b2d+0x78>
   16502:	ff84a783          	lw	a5,-8(s1)
   16506:	c629                	beqz	a2,16550 <__b2d+0x90>
   16508:	40c706b3          	sub	a3,a4,a2
   1650c:	00d7d733          	srl	a4,a5,a3
   16510:	00c91933          	sll	s2,s2,a2
   16514:	00e96933          	or	s2,s2,a4
   16518:	ff848593          	addi	a1,s1,-8
   1651c:	3ff00737          	lui	a4,0x3ff00
   16520:	00e96733          	or	a4,s2,a4
   16524:	00c797b3          	sll	a5,a5,a2
   16528:	02b47863          	bgeu	s0,a1,16558 <__b2d+0x98>
   1652c:	ff44a603          	lw	a2,-12(s1)
   16530:	00d656b3          	srl	a3,a2,a3
   16534:	8fd5                	or	a5,a5,a3
   16536:	a00d                	j	16558 <__b2d+0x98>
   16538:	47ad                	li	a5,11
   1653a:	00f50a63          	beq	a0,a5,1654e <__b2d+0x8e>
   1653e:	00c91933          	sll	s2,s2,a2
   16542:	3ff00737          	lui	a4,0x3ff00
   16546:	00e96733          	or	a4,s2,a4
   1654a:	4781                	li	a5,0
   1654c:	a031                	j	16558 <__b2d+0x98>
   1654e:	4781                	li	a5,0
   16550:	3ff00737          	lui	a4,0x3ff00
   16554:	00e96733          	or	a4,s2,a4
   16558:	50b2                	lw	ra,44(sp)
   1655a:	5422                	lw	s0,40(sp)
   1655c:	c43e                	sw	a5,8(sp)
   1655e:	c63a                	sw	a4,12(sp)
   16560:	2522                	fld	fa0,8(sp)
   16562:	5492                	lw	s1,36(sp)
   16564:	5902                	lw	s2,32(sp)
   16566:	49f2                	lw	s3,28(sp)
   16568:	4a62                	lw	s4,24(sp)
   1656a:	6145                	addi	sp,sp,48
   1656c:	8082                	ret
   1656e:	46ad                	li	a3,11
   16570:	8e89                	sub	a3,a3,a0
   16572:	3ff007b7          	lui	a5,0x3ff00
   16576:	00d95733          	srl	a4,s2,a3
   1657a:	8f5d                	or	a4,a4,a5
   1657c:	4781                	li	a5,0
   1657e:	01447663          	bgeu	s0,s4,1658a <__b2d+0xca>
   16582:	ff84a783          	lw	a5,-8(s1)
   16586:	00d7d7b3          	srl	a5,a5,a3
   1658a:	0555                	addi	a0,a0,21
   1658c:	00a91933          	sll	s2,s2,a0
   16590:	00f967b3          	or	a5,s2,a5
   16594:	b7d1                	j	16558 <__b2d+0x98>

00016596 <__d2b>:
   16596:	7139                	addi	sp,sp,-64
   16598:	d452                	sw	s4,40(sp)
   1659a:	a42a                	fsd	fa0,8(sp)
   1659c:	8a2e                	mv	s4,a1
   1659e:	4585                	li	a1,1
   165a0:	da26                	sw	s1,52(sp)
   165a2:	d64e                	sw	s3,44(sp)
   165a4:	d256                	sw	s5,36(sp)
   165a6:	de06                	sw	ra,60(sp)
   165a8:	dc22                	sw	s0,56(sp)
   165aa:	d84a                	sw	s2,48(sp)
   165ac:	4aa2                	lw	s5,8(sp)
   165ae:	44b2                	lw	s1,12(sp)
   165b0:	89b2                	mv	s3,a2
   165b2:	de2ff0ef          	jal	15b94 <_Balloc>
   165b6:	c955                	beqz	a0,1666a <__d2b+0xd4>
   165b8:	00100737          	lui	a4,0x100
   165bc:	0144d913          	srli	s2,s1,0x14
   165c0:	fff70793          	addi	a5,a4,-1 # fffff <__BSS_END__+0xe3373>
   165c4:	7ff97913          	andi	s2,s2,2047
   165c8:	842a                	mv	s0,a0
   165ca:	8fe5                	and	a5,a5,s1
   165cc:	00090363          	beqz	s2,165d2 <__d2b+0x3c>
   165d0:	8fd9                	or	a5,a5,a4
   165d2:	ce3e                	sw	a5,28(sp)
   165d4:	040a9263          	bnez	s5,16618 <__d2b+0x82>
   165d8:	0868                	addi	a0,sp,28
   165da:	831ff0ef          	jal	15e0a <__lo0bits>
   165de:	4772                	lw	a4,28(sp)
   165e0:	4485                	li	s1,1
   165e2:	c804                	sw	s1,16(s0)
   165e4:	c858                	sw	a4,20(s0)
   165e6:	02050793          	addi	a5,a0,32
   165ea:	06090063          	beqz	s2,1664a <__d2b+0xb4>
   165ee:	bcd90913          	addi	s2,s2,-1075
   165f2:	993e                	add	s2,s2,a5
   165f4:	03500493          	li	s1,53
   165f8:	012a2023          	sw	s2,0(s4)
   165fc:	40f48533          	sub	a0,s1,a5
   16600:	00a9a023          	sw	a0,0(s3)
   16604:	50f2                	lw	ra,60(sp)
   16606:	8522                	mv	a0,s0
   16608:	5462                	lw	s0,56(sp)
   1660a:	54d2                	lw	s1,52(sp)
   1660c:	5942                	lw	s2,48(sp)
   1660e:	59b2                	lw	s3,44(sp)
   16610:	5a22                	lw	s4,40(sp)
   16612:	5a92                	lw	s5,36(sp)
   16614:	6121                	addi	sp,sp,64
   16616:	8082                	ret
   16618:	0828                	addi	a0,sp,24
   1661a:	cc56                	sw	s5,24(sp)
   1661c:	feeff0ef          	jal	15e0a <__lo0bits>
   16620:	4772                	lw	a4,28(sp)
   16622:	87aa                	mv	a5,a0
   16624:	c129                	beqz	a0,16666 <__d2b+0xd0>
   16626:	4662                	lw	a2,24(sp)
   16628:	02000693          	li	a3,32
   1662c:	8e89                	sub	a3,a3,a0
   1662e:	00d716b3          	sll	a3,a4,a3
   16632:	00a75733          	srl	a4,a4,a0
   16636:	8ed1                	or	a3,a3,a2
   16638:	ce3a                	sw	a4,28(sp)
   1663a:	00e034b3          	snez	s1,a4
   1663e:	0485                	addi	s1,s1,1
   16640:	c854                	sw	a3,20(s0)
   16642:	cc18                	sw	a4,24(s0)
   16644:	c804                	sw	s1,16(s0)
   16646:	fa0914e3          	bnez	s2,165ee <__d2b+0x58>
   1664a:	00249713          	slli	a4,s1,0x2
   1664e:	9722                	add	a4,a4,s0
   16650:	4b08                	lw	a0,16(a4)
   16652:	bce78793          	addi	a5,a5,-1074 # 3feffbce <__BSS_END__+0x3fee2f42>
   16656:	00fa2023          	sw	a5,0(s4)
   1665a:	f5cff0ef          	jal	15db6 <__hi0bits>
   1665e:	0496                	slli	s1,s1,0x5
   16660:	40a48533          	sub	a0,s1,a0
   16664:	bf71                	j	16600 <__d2b+0x6a>
   16666:	46e2                	lw	a3,24(sp)
   16668:	bfc9                	j	1663a <__d2b+0xa4>
   1666a:	66ed                	lui	a3,0x1b
   1666c:	656d                	lui	a0,0x1b
   1666e:	90468693          	addi	a3,a3,-1788 # 1a904 <__clzsi2+0x11a>
   16672:	4601                	li	a2,0
   16674:	30f00593          	li	a1,783
   16678:	97850513          	addi	a0,a0,-1672 # 1a978 <__clzsi2+0x18e>
   1667c:	0b3000ef          	jal	16f2e <__assert_func>

00016680 <__ratio>:
   16680:	7179                	addi	sp,sp,-48
   16682:	d422                	sw	s0,40(sp)
   16684:	842e                	mv	s0,a1
   16686:	082c                	addi	a1,sp,24
   16688:	d606                	sw	ra,44(sp)
   1668a:	d226                	sw	s1,36(sp)
   1668c:	84aa                	mv	s1,a0
   1668e:	e33ff0ef          	jal	164c0 <__b2d>
   16692:	086c                	addi	a1,sp,28
   16694:	8522                	mv	a0,s0
   16696:	a02a                	fsd	fa0,0(sp)
   16698:	a42a                	fsd	fa0,8(sp)
   1669a:	e27ff0ef          	jal	164c0 <__b2d>
   1669e:	4818                	lw	a4,16(s0)
   166a0:	489c                	lw	a5,16(s1)
   166a2:	45f2                	lw	a1,28(sp)
   166a4:	a02a                	fsd	fa0,0(sp)
   166a6:	8f99                	sub	a5,a5,a4
   166a8:	4762                	lw	a4,24(sp)
   166aa:	0796                	slli	a5,a5,0x5
   166ac:	8f0d                	sub	a4,a4,a1
   166ae:	97ba                	add	a5,a5,a4
   166b0:	00f05f63          	blez	a5,166ce <__ratio+0x4e>
   166b4:	46b2                	lw	a3,12(sp)
   166b6:	07d2                	slli	a5,a5,0x14
   166b8:	2702                	fld	fa4,0(sp)
   166ba:	97b6                	add	a5,a5,a3
   166bc:	c63e                	sw	a5,12(sp)
   166be:	27a2                	fld	fa5,8(sp)
   166c0:	50b2                	lw	ra,44(sp)
   166c2:	5422                	lw	s0,40(sp)
   166c4:	5492                	lw	s1,36(sp)
   166c6:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   166ca:	6145                	addi	sp,sp,48
   166cc:	8082                	ret
   166ce:	4692                	lw	a3,4(sp)
   166d0:	07d2                	slli	a5,a5,0x14
   166d2:	27a2                	fld	fa5,8(sp)
   166d4:	40f687b3          	sub	a5,a3,a5
   166d8:	c23e                	sw	a5,4(sp)
   166da:	2702                	fld	fa4,0(sp)
   166dc:	50b2                	lw	ra,44(sp)
   166de:	5422                	lw	s0,40(sp)
   166e0:	5492                	lw	s1,36(sp)
   166e2:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   166e6:	6145                	addi	sp,sp,48
   166e8:	8082                	ret

000166ea <_mprec_log10>:
   166ea:	47dd                	li	a5,23
   166ec:	00a7db63          	bge	a5,a0,16702 <_mprec_log10+0x18>
   166f0:	ed81b507          	fld	fa0,-296(gp) # 1c918 <__SDATA_BEGIN__+0x30>
   166f4:	ee01b787          	fld	fa5,-288(gp) # 1c920 <__SDATA_BEGIN__+0x38>
   166f8:	157d                	addi	a0,a0,-1
   166fa:	12f57553          	fmul.d	fa0,fa0,fa5
   166fe:	fd6d                	bnez	a0,166f8 <_mprec_log10+0xe>
   16700:	8082                	ret
   16702:	67ed                	lui	a5,0x1b
   16704:	050e                	slli	a0,a0,0x3
   16706:	dd878793          	addi	a5,a5,-552 # 1add8 <__mprec_tens>
   1670a:	97aa                	add	a5,a5,a0
   1670c:	2388                	fld	fa0,0(a5)
   1670e:	8082                	ret

00016710 <__copybits>:
   16710:	4a14                	lw	a3,16(a2)
   16712:	15fd                	addi	a1,a1,-1
   16714:	8595                	srai	a1,a1,0x5
   16716:	0585                	addi	a1,a1,1
   16718:	01460793          	addi	a5,a2,20
   1671c:	068a                	slli	a3,a3,0x2
   1671e:	058a                	slli	a1,a1,0x2
   16720:	96be                	add	a3,a3,a5
   16722:	95aa                	add	a1,a1,a0
   16724:	02d7f163          	bgeu	a5,a3,16746 <__copybits+0x36>
   16728:	872a                	mv	a4,a0
   1672a:	0007a803          	lw	a6,0(a5)
   1672e:	0791                	addi	a5,a5,4
   16730:	0711                	addi	a4,a4,4
   16732:	ff072e23          	sw	a6,-4(a4)
   16736:	fed7eae3          	bltu	a5,a3,1672a <__copybits+0x1a>
   1673a:	40c687b3          	sub	a5,a3,a2
   1673e:	17ad                	addi	a5,a5,-21
   16740:	9bf1                	andi	a5,a5,-4
   16742:	0791                	addi	a5,a5,4
   16744:	953e                	add	a0,a0,a5
   16746:	00b57763          	bgeu	a0,a1,16754 <__copybits+0x44>
   1674a:	0511                	addi	a0,a0,4
   1674c:	fe052e23          	sw	zero,-4(a0)
   16750:	feb56de3          	bltu	a0,a1,1674a <__copybits+0x3a>
   16754:	8082                	ret

00016756 <__any_on>:
   16756:	4918                	lw	a4,16(a0)
   16758:	4055d613          	srai	a2,a1,0x5
   1675c:	01450693          	addi	a3,a0,20
   16760:	00c75d63          	bge	a4,a2,1677a <__any_on+0x24>
   16764:	070a                	slli	a4,a4,0x2
   16766:	00e687b3          	add	a5,a3,a4
   1676a:	02f6f863          	bgeu	a3,a5,1679a <__any_on+0x44>
   1676e:	ffc7a703          	lw	a4,-4(a5)
   16772:	17f1                	addi	a5,a5,-4
   16774:	db7d                	beqz	a4,1676a <__any_on+0x14>
   16776:	4505                	li	a0,1
   16778:	8082                	ret
   1677a:	00261793          	slli	a5,a2,0x2
   1677e:	97b6                	add	a5,a5,a3
   16780:	fee655e3          	bge	a2,a4,1676a <__any_on+0x14>
   16784:	89fd                	andi	a1,a1,31
   16786:	d1f5                	beqz	a1,1676a <__any_on+0x14>
   16788:	4390                	lw	a2,0(a5)
   1678a:	4505                	li	a0,1
   1678c:	00b65733          	srl	a4,a2,a1
   16790:	00b71733          	sll	a4,a4,a1
   16794:	fce60be3          	beq	a2,a4,1676a <__any_on+0x14>
   16798:	8082                	ret
   1679a:	4501                	li	a0,0
   1679c:	8082                	ret

0001679e <_realloc_r>:
   1679e:	7179                	addi	sp,sp,-48
   167a0:	d226                	sw	s1,36(sp)
   167a2:	d606                	sw	ra,44(sp)
   167a4:	84b2                	mv	s1,a2
   167a6:	14058d63          	beqz	a1,16900 <_realloc_r+0x162>
   167aa:	d422                	sw	s0,40(sp)
   167ac:	d04a                	sw	s2,32(sp)
   167ae:	842e                	mv	s0,a1
   167b0:	ce4e                	sw	s3,28(sp)
   167b2:	ca56                	sw	s5,20(sp)
   167b4:	cc52                	sw	s4,24(sp)
   167b6:	892a                	mv	s2,a0
   167b8:	e96fb0ef          	jal	11e4e <__malloc_lock>
   167bc:	ffc42703          	lw	a4,-4(s0)
   167c0:	00b48793          	addi	a5,s1,11
   167c4:	46d9                	li	a3,22
   167c6:	ff840a93          	addi	s5,s0,-8
   167ca:	ffc77993          	andi	s3,a4,-4
   167ce:	0af6ff63          	bgeu	a3,a5,1688c <_realloc_r+0xee>
   167d2:	ff87fa13          	andi	s4,a5,-8
   167d6:	0a07ce63          	bltz	a5,16892 <_realloc_r+0xf4>
   167da:	0a9a6c63          	bltu	s4,s1,16892 <_realloc_r+0xf4>
   167de:	0d49d563          	bge	s3,s4,168a8 <_realloc_r+0x10a>
   167e2:	67f1                	lui	a5,0x1c
   167e4:	c462                	sw	s8,8(sp)
   167e6:	37078c13          	addi	s8,a5,880 # 1c370 <__malloc_av_>
   167ea:	008c2603          	lw	a2,8(s8)
   167ee:	013a86b3          	add	a3,s5,s3
   167f2:	42dc                	lw	a5,4(a3)
   167f4:	12d60e63          	beq	a2,a3,16930 <_realloc_r+0x192>
   167f8:	ffe7f613          	andi	a2,a5,-2
   167fc:	9636                	add	a2,a2,a3
   167fe:	4250                	lw	a2,4(a2)
   16800:	8a05                	andi	a2,a2,1
   16802:	e27d                	bnez	a2,168e8 <_realloc_r+0x14a>
   16804:	9bf1                	andi	a5,a5,-4
   16806:	00f98633          	add	a2,s3,a5
   1680a:	09465963          	bge	a2,s4,1689c <_realloc_r+0xfe>
   1680e:	8b05                	andi	a4,a4,1
   16810:	e70d                	bnez	a4,1683a <_realloc_r+0x9c>
   16812:	c65e                	sw	s7,12(sp)
   16814:	ff842b83          	lw	s7,-8(s0)
   16818:	c85a                	sw	s6,16(sp)
   1681a:	417a8bb3          	sub	s7,s5,s7
   1681e:	004ba703          	lw	a4,4(s7)
   16822:	9b71                	andi	a4,a4,-4
   16824:	97ba                	add	a5,a5,a4
   16826:	01378b33          	add	s6,a5,s3
   1682a:	234b5f63          	bge	s6,s4,16a68 <_realloc_r+0x2ca>
   1682e:	00e98b33          	add	s6,s3,a4
   16832:	1d4b5463          	bge	s6,s4,169fa <_realloc_r+0x25c>
   16836:	4b42                	lw	s6,16(sp)
   16838:	4bb2                	lw	s7,12(sp)
   1683a:	85a6                	mv	a1,s1
   1683c:	854a                	mv	a0,s2
   1683e:	86cfb0ef          	jal	118aa <_malloc_r>
   16842:	84aa                	mv	s1,a0
   16844:	2e050063          	beqz	a0,16b24 <_realloc_r+0x386>
   16848:	ffc42783          	lw	a5,-4(s0)
   1684c:	ff850713          	addi	a4,a0,-8
   16850:	9bf9                	andi	a5,a5,-2
   16852:	97d6                	add	a5,a5,s5
   16854:	18e78d63          	beq	a5,a4,169ee <_realloc_r+0x250>
   16858:	ffc98613          	addi	a2,s3,-4
   1685c:	02400793          	li	a5,36
   16860:	20c7e063          	bltu	a5,a2,16a60 <_realloc_r+0x2c2>
   16864:	474d                	li	a4,19
   16866:	16c76863          	bltu	a4,a2,169d6 <_realloc_r+0x238>
   1686a:	87aa                	mv	a5,a0
   1686c:	8722                	mv	a4,s0
   1686e:	4314                	lw	a3,0(a4)
   16870:	c394                	sw	a3,0(a5)
   16872:	4354                	lw	a3,4(a4)
   16874:	c3d4                	sw	a3,4(a5)
   16876:	4718                	lw	a4,8(a4)
   16878:	c798                	sw	a4,8(a5)
   1687a:	85a2                	mv	a1,s0
   1687c:	854a                	mv	a0,s2
   1687e:	e0bfa0ef          	jal	11688 <_free_r>
   16882:	854a                	mv	a0,s2
   16884:	dccfb0ef          	jal	11e50 <__malloc_unlock>
   16888:	4c22                	lw	s8,8(sp)
   1688a:	a0a9                	j	168d4 <_realloc_r+0x136>
   1688c:	4a41                	li	s4,16
   1688e:	f49a78e3          	bgeu	s4,s1,167de <_realloc_r+0x40>
   16892:	47b1                	li	a5,12
   16894:	00f92023          	sw	a5,0(s2)
   16898:	4481                	li	s1,0
   1689a:	a82d                	j	168d4 <_realloc_r+0x136>
   1689c:	46dc                	lw	a5,12(a3)
   1689e:	4698                	lw	a4,8(a3)
   168a0:	4c22                	lw	s8,8(sp)
   168a2:	89b2                	mv	s3,a2
   168a4:	c75c                	sw	a5,12(a4)
   168a6:	c798                	sw	a4,8(a5)
   168a8:	004aa783          	lw	a5,4(s5)
   168ac:	414986b3          	sub	a3,s3,s4
   168b0:	463d                	li	a2,15
   168b2:	8b85                	andi	a5,a5,1
   168b4:	013a8733          	add	a4,s5,s3
   168b8:	04d66a63          	bltu	a2,a3,1690c <_realloc_r+0x16e>
   168bc:	0137e7b3          	or	a5,a5,s3
   168c0:	00faa223          	sw	a5,4(s5)
   168c4:	435c                	lw	a5,4(a4)
   168c6:	0017e793          	ori	a5,a5,1
   168ca:	c35c                	sw	a5,4(a4)
   168cc:	854a                	mv	a0,s2
   168ce:	d82fb0ef          	jal	11e50 <__malloc_unlock>
   168d2:	84a2                	mv	s1,s0
   168d4:	5422                	lw	s0,40(sp)
   168d6:	50b2                	lw	ra,44(sp)
   168d8:	5902                	lw	s2,32(sp)
   168da:	49f2                	lw	s3,28(sp)
   168dc:	4a62                	lw	s4,24(sp)
   168de:	4ad2                	lw	s5,20(sp)
   168e0:	8526                	mv	a0,s1
   168e2:	5492                	lw	s1,36(sp)
   168e4:	6145                	addi	sp,sp,48
   168e6:	8082                	ret
   168e8:	8b05                	andi	a4,a4,1
   168ea:	fb21                	bnez	a4,1683a <_realloc_r+0x9c>
   168ec:	c65e                	sw	s7,12(sp)
   168ee:	ff842b83          	lw	s7,-8(s0)
   168f2:	c85a                	sw	s6,16(sp)
   168f4:	417a8bb3          	sub	s7,s5,s7
   168f8:	004ba703          	lw	a4,4(s7)
   168fc:	9b71                	andi	a4,a4,-4
   168fe:	bf05                	j	1682e <_realloc_r+0x90>
   16900:	50b2                	lw	ra,44(sp)
   16902:	5492                	lw	s1,36(sp)
   16904:	85b2                	mv	a1,a2
   16906:	6145                	addi	sp,sp,48
   16908:	fa3fa06f          	j	118aa <_malloc_r>
   1690c:	0147e7b3          	or	a5,a5,s4
   16910:	00faa223          	sw	a5,4(s5)
   16914:	014a85b3          	add	a1,s5,s4
   16918:	0016e693          	ori	a3,a3,1
   1691c:	c1d4                	sw	a3,4(a1)
   1691e:	435c                	lw	a5,4(a4)
   16920:	05a1                	addi	a1,a1,8
   16922:	854a                	mv	a0,s2
   16924:	0017e793          	ori	a5,a5,1
   16928:	c35c                	sw	a5,4(a4)
   1692a:	d5ffa0ef          	jal	11688 <_free_r>
   1692e:	bf79                	j	168cc <_realloc_r+0x12e>
   16930:	9bf1                	andi	a5,a5,-4
   16932:	013786b3          	add	a3,a5,s3
   16936:	010a0613          	addi	a2,s4,16
   1693a:	1ac6db63          	bge	a3,a2,16af0 <_realloc_r+0x352>
   1693e:	8b05                	andi	a4,a4,1
   16940:	ee071de3          	bnez	a4,1683a <_realloc_r+0x9c>
   16944:	c65e                	sw	s7,12(sp)
   16946:	ff842b83          	lw	s7,-8(s0)
   1694a:	c85a                	sw	s6,16(sp)
   1694c:	417a8bb3          	sub	s7,s5,s7
   16950:	004ba703          	lw	a4,4(s7)
   16954:	9b71                	andi	a4,a4,-4
   16956:	97ba                	add	a5,a5,a4
   16958:	01378b33          	add	s6,a5,s3
   1695c:	eccb49e3          	blt	s6,a2,1682e <_realloc_r+0x90>
   16960:	00cba783          	lw	a5,12(s7)
   16964:	008ba703          	lw	a4,8(s7)
   16968:	ffc98613          	addi	a2,s3,-4
   1696c:	02400693          	li	a3,36
   16970:	c75c                	sw	a5,12(a4)
   16972:	c798                	sw	a4,8(a5)
   16974:	008b8493          	addi	s1,s7,8
   16978:	1cc6e563          	bltu	a3,a2,16b42 <_realloc_r+0x3a4>
   1697c:	474d                	li	a4,19
   1697e:	87a6                	mv	a5,s1
   16980:	00c77e63          	bgeu	a4,a2,1699c <_realloc_r+0x1fe>
   16984:	4018                	lw	a4,0(s0)
   16986:	47ed                	li	a5,27
   16988:	00eba423          	sw	a4,8(s7)
   1698c:	4058                	lw	a4,4(s0)
   1698e:	00eba623          	sw	a4,12(s7)
   16992:	1ac7ed63          	bltu	a5,a2,16b4c <_realloc_r+0x3ae>
   16996:	0421                	addi	s0,s0,8
   16998:	010b8793          	addi	a5,s7,16
   1699c:	4018                	lw	a4,0(s0)
   1699e:	c398                	sw	a4,0(a5)
   169a0:	4058                	lw	a4,4(s0)
   169a2:	c3d8                	sw	a4,4(a5)
   169a4:	4418                	lw	a4,8(s0)
   169a6:	c798                	sw	a4,8(a5)
   169a8:	014b8733          	add	a4,s7,s4
   169ac:	414b0b33          	sub	s6,s6,s4
   169b0:	00ec2423          	sw	a4,8(s8)
   169b4:	001b6793          	ori	a5,s6,1
   169b8:	c35c                	sw	a5,4(a4)
   169ba:	004ba783          	lw	a5,4(s7)
   169be:	854a                	mv	a0,s2
   169c0:	8b85                	andi	a5,a5,1
   169c2:	0147e7b3          	or	a5,a5,s4
   169c6:	00fba223          	sw	a5,4(s7)
   169ca:	c86fb0ef          	jal	11e50 <__malloc_unlock>
   169ce:	4b42                	lw	s6,16(sp)
   169d0:	4bb2                	lw	s7,12(sp)
   169d2:	4c22                	lw	s8,8(sp)
   169d4:	b701                	j	168d4 <_realloc_r+0x136>
   169d6:	4014                	lw	a3,0(s0)
   169d8:	476d                	li	a4,27
   169da:	c114                	sw	a3,0(a0)
   169dc:	4054                	lw	a3,4(s0)
   169de:	c154                	sw	a3,4(a0)
   169e0:	0ec76d63          	bltu	a4,a2,16ada <_realloc_r+0x33c>
   169e4:	00840713          	addi	a4,s0,8
   169e8:	00850793          	addi	a5,a0,8
   169ec:	b549                	j	1686e <_realloc_r+0xd0>
   169ee:	ffc52783          	lw	a5,-4(a0)
   169f2:	4c22                	lw	s8,8(sp)
   169f4:	9bf1                	andi	a5,a5,-4
   169f6:	99be                	add	s3,s3,a5
   169f8:	bd45                	j	168a8 <_realloc_r+0x10a>
   169fa:	00cba783          	lw	a5,12(s7)
   169fe:	008ba703          	lw	a4,8(s7)
   16a02:	ffc98613          	addi	a2,s3,-4
   16a06:	02400693          	li	a3,36
   16a0a:	c75c                	sw	a5,12(a4)
   16a0c:	c798                	sw	a4,8(a5)
   16a0e:	008b8493          	addi	s1,s7,8
   16a12:	0ac6ef63          	bltu	a3,a2,16ad0 <_realloc_r+0x332>
   16a16:	474d                	li	a4,19
   16a18:	87a6                	mv	a5,s1
   16a1a:	02c77663          	bgeu	a4,a2,16a46 <_realloc_r+0x2a8>
   16a1e:	4018                	lw	a4,0(s0)
   16a20:	47ed                	li	a5,27
   16a22:	00eba423          	sw	a4,8(s7)
   16a26:	4058                	lw	a4,4(s0)
   16a28:	00eba623          	sw	a4,12(s7)
   16a2c:	0ec7f863          	bgeu	a5,a2,16b1c <_realloc_r+0x37e>
   16a30:	441c                	lw	a5,8(s0)
   16a32:	00fba823          	sw	a5,16(s7)
   16a36:	445c                	lw	a5,12(s0)
   16a38:	00fbaa23          	sw	a5,20(s7)
   16a3c:	06d60f63          	beq	a2,a3,16aba <_realloc_r+0x31c>
   16a40:	0441                	addi	s0,s0,16
   16a42:	018b8793          	addi	a5,s7,24
   16a46:	4018                	lw	a4,0(s0)
   16a48:	c398                	sw	a4,0(a5)
   16a4a:	4058                	lw	a4,4(s0)
   16a4c:	c3d8                	sw	a4,4(a5)
   16a4e:	4418                	lw	a4,8(s0)
   16a50:	c798                	sw	a4,8(a5)
   16a52:	89da                	mv	s3,s6
   16a54:	8ade                	mv	s5,s7
   16a56:	4b42                	lw	s6,16(sp)
   16a58:	4bb2                	lw	s7,12(sp)
   16a5a:	4c22                	lw	s8,8(sp)
   16a5c:	8426                	mv	s0,s1
   16a5e:	b5a9                	j	168a8 <_realloc_r+0x10a>
   16a60:	85a2                	mv	a1,s0
   16a62:	8d1fd0ef          	jal	14332 <memmove>
   16a66:	bd11                	j	1687a <_realloc_r+0xdc>
   16a68:	46dc                	lw	a5,12(a3)
   16a6a:	4698                	lw	a4,8(a3)
   16a6c:	ffc98613          	addi	a2,s3,-4
   16a70:	02400693          	li	a3,36
   16a74:	c75c                	sw	a5,12(a4)
   16a76:	c798                	sw	a4,8(a5)
   16a78:	008ba703          	lw	a4,8(s7)
   16a7c:	00cba783          	lw	a5,12(s7)
   16a80:	008b8493          	addi	s1,s7,8
   16a84:	c75c                	sw	a5,12(a4)
   16a86:	c798                	sw	a4,8(a5)
   16a88:	04c6e463          	bltu	a3,a2,16ad0 <_realloc_r+0x332>
   16a8c:	474d                	li	a4,19
   16a8e:	87a6                	mv	a5,s1
   16a90:	fac77be3          	bgeu	a4,a2,16a46 <_realloc_r+0x2a8>
   16a94:	4018                	lw	a4,0(s0)
   16a96:	47ed                	li	a5,27
   16a98:	00eba423          	sw	a4,8(s7)
   16a9c:	4058                	lw	a4,4(s0)
   16a9e:	00eba623          	sw	a4,12(s7)
   16aa2:	06c7fd63          	bgeu	a5,a2,16b1c <_realloc_r+0x37e>
   16aa6:	4418                	lw	a4,8(s0)
   16aa8:	02400793          	li	a5,36
   16aac:	00eba823          	sw	a4,16(s7)
   16ab0:	4458                	lw	a4,12(s0)
   16ab2:	00ebaa23          	sw	a4,20(s7)
   16ab6:	f8f615e3          	bne	a2,a5,16a40 <_realloc_r+0x2a2>
   16aba:	4818                	lw	a4,16(s0)
   16abc:	020b8793          	addi	a5,s7,32
   16ac0:	0461                	addi	s0,s0,24
   16ac2:	00ebac23          	sw	a4,24(s7)
   16ac6:	ffc42703          	lw	a4,-4(s0)
   16aca:	00ebae23          	sw	a4,28(s7)
   16ace:	bfa5                	j	16a46 <_realloc_r+0x2a8>
   16ad0:	85a2                	mv	a1,s0
   16ad2:	8526                	mv	a0,s1
   16ad4:	85ffd0ef          	jal	14332 <memmove>
   16ad8:	bfad                	j	16a52 <_realloc_r+0x2b4>
   16ada:	4418                	lw	a4,8(s0)
   16adc:	c518                	sw	a4,8(a0)
   16ade:	4458                	lw	a4,12(s0)
   16ae0:	c558                	sw	a4,12(a0)
   16ae2:	04f60763          	beq	a2,a5,16b30 <_realloc_r+0x392>
   16ae6:	01040713          	addi	a4,s0,16
   16aea:	01050793          	addi	a5,a0,16
   16aee:	b341                	j	1686e <_realloc_r+0xd0>
   16af0:	9ad2                	add	s5,s5,s4
   16af2:	414686b3          	sub	a3,a3,s4
   16af6:	015c2423          	sw	s5,8(s8)
   16afa:	0016e793          	ori	a5,a3,1
   16afe:	00faa223          	sw	a5,4(s5)
   16b02:	ffc42783          	lw	a5,-4(s0)
   16b06:	854a                	mv	a0,s2
   16b08:	84a2                	mv	s1,s0
   16b0a:	8b85                	andi	a5,a5,1
   16b0c:	0147e7b3          	or	a5,a5,s4
   16b10:	fef42e23          	sw	a5,-4(s0)
   16b14:	b3cfb0ef          	jal	11e50 <__malloc_unlock>
   16b18:	4c22                	lw	s8,8(sp)
   16b1a:	bb6d                	j	168d4 <_realloc_r+0x136>
   16b1c:	0421                	addi	s0,s0,8
   16b1e:	010b8793          	addi	a5,s7,16
   16b22:	b715                	j	16a46 <_realloc_r+0x2a8>
   16b24:	854a                	mv	a0,s2
   16b26:	b2afb0ef          	jal	11e50 <__malloc_unlock>
   16b2a:	4481                	li	s1,0
   16b2c:	4c22                	lw	s8,8(sp)
   16b2e:	b35d                	j	168d4 <_realloc_r+0x136>
   16b30:	4814                	lw	a3,16(s0)
   16b32:	01840713          	addi	a4,s0,24
   16b36:	01850793          	addi	a5,a0,24
   16b3a:	c914                	sw	a3,16(a0)
   16b3c:	4854                	lw	a3,20(s0)
   16b3e:	c954                	sw	a3,20(a0)
   16b40:	b33d                	j	1686e <_realloc_r+0xd0>
   16b42:	85a2                	mv	a1,s0
   16b44:	8526                	mv	a0,s1
   16b46:	fecfd0ef          	jal	14332 <memmove>
   16b4a:	bdb9                	j	169a8 <_realloc_r+0x20a>
   16b4c:	441c                	lw	a5,8(s0)
   16b4e:	00fba823          	sw	a5,16(s7)
   16b52:	445c                	lw	a5,12(s0)
   16b54:	00fbaa23          	sw	a5,20(s7)
   16b58:	00d60663          	beq	a2,a3,16b64 <_realloc_r+0x3c6>
   16b5c:	0441                	addi	s0,s0,16
   16b5e:	018b8793          	addi	a5,s7,24
   16b62:	bd2d                	j	1699c <_realloc_r+0x1fe>
   16b64:	4818                	lw	a4,16(s0)
   16b66:	020b8793          	addi	a5,s7,32
   16b6a:	00ebac23          	sw	a4,24(s7)
   16b6e:	4858                	lw	a4,20(s0)
   16b70:	0461                	addi	s0,s0,24
   16b72:	00ebae23          	sw	a4,28(s7)
   16b76:	b51d                	j	1699c <_realloc_r+0x1fe>

00016b78 <__smakebuf_r>:
   16b78:	00c59783          	lh	a5,12(a1)
   16b7c:	7119                	addi	sp,sp,-128
   16b7e:	dca2                	sw	s0,120(sp)
   16b80:	de86                	sw	ra,124(sp)
   16b82:	0027f713          	andi	a4,a5,2
   16b86:	842e                	mv	s0,a1
   16b88:	cb19                	beqz	a4,16b9e <__smakebuf_r+0x26>
   16b8a:	04358793          	addi	a5,a1,67
   16b8e:	c19c                	sw	a5,0(a1)
   16b90:	c99c                	sw	a5,16(a1)
   16b92:	4785                	li	a5,1
   16b94:	c9dc                	sw	a5,20(a1)
   16b96:	50f6                	lw	ra,124(sp)
   16b98:	5466                	lw	s0,120(sp)
   16b9a:	6109                	addi	sp,sp,128
   16b9c:	8082                	ret
   16b9e:	00e59583          	lh	a1,14(a1)
   16ba2:	daa6                	sw	s1,116(sp)
   16ba4:	d8ca                	sw	s2,112(sp)
   16ba6:	d6ce                	sw	s3,108(sp)
   16ba8:	d4d2                	sw	s4,104(sp)
   16baa:	84aa                	mv	s1,a0
   16bac:	0605c263          	bltz	a1,16c10 <__smakebuf_r+0x98>
   16bb0:	0030                	addi	a2,sp,8
   16bb2:	22fd                	jal	16da0 <_fstat_r>
   16bb4:	04054c63          	bltz	a0,16c0c <__smakebuf_r+0x94>
   16bb8:	47b2                	lw	a5,12(sp)
   16bba:	693d                	lui	s2,0xf
   16bbc:	6985                	lui	s3,0x1
   16bbe:	00f97933          	and	s2,s2,a5
   16bc2:	77f9                	lui	a5,0xffffe
   16bc4:	993e                	add	s2,s2,a5
   16bc6:	00193913          	seqz	s2,s2
   16bca:	40000a13          	li	s4,1024
   16bce:	80098993          	addi	s3,s3,-2048 # 800 <exit-0xf894>
   16bd2:	85d2                	mv	a1,s4
   16bd4:	8526                	mv	a0,s1
   16bd6:	cd5fa0ef          	jal	118aa <_malloc_r>
   16bda:	00c41783          	lh	a5,12(s0)
   16bde:	c539                	beqz	a0,16c2c <__smakebuf_r+0xb4>
   16be0:	0807e793          	ori	a5,a5,128
   16be4:	c008                	sw	a0,0(s0)
   16be6:	c808                	sw	a0,16(s0)
   16be8:	00f41623          	sh	a5,12(s0)
   16bec:	01442a23          	sw	s4,20(s0)
   16bf0:	06091563          	bnez	s2,16c5a <__smakebuf_r+0xe2>
   16bf4:	0137e7b3          	or	a5,a5,s3
   16bf8:	50f6                	lw	ra,124(sp)
   16bfa:	00f41623          	sh	a5,12(s0)
   16bfe:	5466                	lw	s0,120(sp)
   16c00:	54d6                	lw	s1,116(sp)
   16c02:	5946                	lw	s2,112(sp)
   16c04:	59b6                	lw	s3,108(sp)
   16c06:	5a26                	lw	s4,104(sp)
   16c08:	6109                	addi	sp,sp,128
   16c0a:	8082                	ret
   16c0c:	00c41783          	lh	a5,12(s0)
   16c10:	0807f793          	andi	a5,a5,128
   16c14:	4901                	li	s2,0
   16c16:	cf95                	beqz	a5,16c52 <__smakebuf_r+0xda>
   16c18:	04000a13          	li	s4,64
   16c1c:	85d2                	mv	a1,s4
   16c1e:	8526                	mv	a0,s1
   16c20:	c8bfa0ef          	jal	118aa <_malloc_r>
   16c24:	00c41783          	lh	a5,12(s0)
   16c28:	4981                	li	s3,0
   16c2a:	f95d                	bnez	a0,16be0 <__smakebuf_r+0x68>
   16c2c:	2007f713          	andi	a4,a5,512
   16c30:	ef0d                	bnez	a4,16c6a <__smakebuf_r+0xf2>
   16c32:	9bf1                	andi	a5,a5,-4
   16c34:	0027e793          	ori	a5,a5,2
   16c38:	04340713          	addi	a4,s0,67
   16c3c:	00f41623          	sh	a5,12(s0)
   16c40:	4785                	li	a5,1
   16c42:	54d6                	lw	s1,116(sp)
   16c44:	5946                	lw	s2,112(sp)
   16c46:	59b6                	lw	s3,108(sp)
   16c48:	5a26                	lw	s4,104(sp)
   16c4a:	c018                	sw	a4,0(s0)
   16c4c:	c818                	sw	a4,16(s0)
   16c4e:	c85c                	sw	a5,20(s0)
   16c50:	b799                	j	16b96 <__smakebuf_r+0x1e>
   16c52:	40000a13          	li	s4,1024
   16c56:	4981                	li	s3,0
   16c58:	bfad                	j	16bd2 <__smakebuf_r+0x5a>
   16c5a:	00e41583          	lh	a1,14(s0)
   16c5e:	8526                	mv	a0,s1
   16c60:	2aad                	jal	16dda <_isatty_r>
   16c62:	e909                	bnez	a0,16c74 <__smakebuf_r+0xfc>
   16c64:	00c41783          	lh	a5,12(s0)
   16c68:	b771                	j	16bf4 <__smakebuf_r+0x7c>
   16c6a:	54d6                	lw	s1,116(sp)
   16c6c:	5946                	lw	s2,112(sp)
   16c6e:	59b6                	lw	s3,108(sp)
   16c70:	5a26                	lw	s4,104(sp)
   16c72:	b715                	j	16b96 <__smakebuf_r+0x1e>
   16c74:	00c45783          	lhu	a5,12(s0)
   16c78:	9bf1                	andi	a5,a5,-4
   16c7a:	0017e793          	ori	a5,a5,1
   16c7e:	07c2                	slli	a5,a5,0x10
   16c80:	87c1                	srai	a5,a5,0x10
   16c82:	bf8d                	j	16bf4 <__smakebuf_r+0x7c>

00016c84 <__swhatbuf_r>:
   16c84:	7159                	addi	sp,sp,-112
   16c86:	d4a2                	sw	s0,104(sp)
   16c88:	842e                	mv	s0,a1
   16c8a:	00e59583          	lh	a1,14(a1)
   16c8e:	d2a6                	sw	s1,100(sp)
   16c90:	d0ca                	sw	s2,96(sp)
   16c92:	d686                	sw	ra,108(sp)
   16c94:	84b2                	mv	s1,a2
   16c96:	8936                	mv	s2,a3
   16c98:	0205cb63          	bltz	a1,16cce <__swhatbuf_r+0x4a>
   16c9c:	0030                	addi	a2,sp,8
   16c9e:	2209                	jal	16da0 <_fstat_r>
   16ca0:	02054763          	bltz	a0,16cce <__swhatbuf_r+0x4a>
   16ca4:	4732                	lw	a4,12(sp)
   16ca6:	67bd                	lui	a5,0xf
   16ca8:	50b6                	lw	ra,108(sp)
   16caa:	8ff9                	and	a5,a5,a4
   16cac:	7779                	lui	a4,0xffffe
   16cae:	97ba                	add	a5,a5,a4
   16cb0:	5426                	lw	s0,104(sp)
   16cb2:	0017b793          	seqz	a5,a5
   16cb6:	00f92023          	sw	a5,0(s2) # f000 <exit-0x1094>
   16cba:	40000713          	li	a4,1024
   16cbe:	c098                	sw	a4,0(s1)
   16cc0:	6505                	lui	a0,0x1
   16cc2:	5496                	lw	s1,100(sp)
   16cc4:	5906                	lw	s2,96(sp)
   16cc6:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf894>
   16cca:	6165                	addi	sp,sp,112
   16ccc:	8082                	ret
   16cce:	00c45783          	lhu	a5,12(s0)
   16cd2:	0807f793          	andi	a5,a5,128
   16cd6:	cf91                	beqz	a5,16cf2 <__swhatbuf_r+0x6e>
   16cd8:	50b6                	lw	ra,108(sp)
   16cda:	5426                	lw	s0,104(sp)
   16cdc:	4781                	li	a5,0
   16cde:	00f92023          	sw	a5,0(s2)
   16ce2:	04000713          	li	a4,64
   16ce6:	c098                	sw	a4,0(s1)
   16ce8:	5906                	lw	s2,96(sp)
   16cea:	5496                	lw	s1,100(sp)
   16cec:	4501                	li	a0,0
   16cee:	6165                	addi	sp,sp,112
   16cf0:	8082                	ret
   16cf2:	50b6                	lw	ra,108(sp)
   16cf4:	5426                	lw	s0,104(sp)
   16cf6:	00f92023          	sw	a5,0(s2)
   16cfa:	40000713          	li	a4,1024
   16cfe:	c098                	sw	a4,0(s1)
   16d00:	5906                	lw	s2,96(sp)
   16d02:	5496                	lw	s1,100(sp)
   16d04:	4501                	li	a0,0
   16d06:	6165                	addi	sp,sp,112
   16d08:	8082                	ret

00016d0a <_setlocale_r>:
   16d0a:	1141                	addi	sp,sp,-16
   16d0c:	c606                	sw	ra,12(sp)
   16d0e:	c226                	sw	s1,4(sp)
   16d10:	c20d                	beqz	a2,16d32 <_setlocale_r+0x28>
   16d12:	65ed                	lui	a1,0x1b
   16d14:	9d458593          	addi	a1,a1,-1580 # 1a9d4 <__clzsi2+0x1ea>
   16d18:	8532                	mv	a0,a2
   16d1a:	c422                	sw	s0,8(sp)
   16d1c:	8432                	mv	s0,a2
   16d1e:	28cd                	jal	16e10 <strcmp>
   16d20:	64ed                	lui	s1,0x1b
   16d22:	e911                	bnez	a0,16d36 <_setlocale_r+0x2c>
   16d24:	4422                	lw	s0,8(sp)
   16d26:	9d048513          	addi	a0,s1,-1584 # 1a9d0 <__clzsi2+0x1e6>
   16d2a:	40b2                	lw	ra,12(sp)
   16d2c:	4492                	lw	s1,4(sp)
   16d2e:	0141                	addi	sp,sp,16
   16d30:	8082                	ret
   16d32:	64ed                	lui	s1,0x1b
   16d34:	bfcd                	j	16d26 <_setlocale_r+0x1c>
   16d36:	9d048593          	addi	a1,s1,-1584 # 1a9d0 <__clzsi2+0x1e6>
   16d3a:	8522                	mv	a0,s0
   16d3c:	28d1                	jal	16e10 <strcmp>
   16d3e:	d17d                	beqz	a0,16d24 <_setlocale_r+0x1a>
   16d40:	65ed                	lui	a1,0x1b
   16d42:	9ec58593          	addi	a1,a1,-1556 # 1a9ec <__clzsi2+0x202>
   16d46:	8522                	mv	a0,s0
   16d48:	20e1                	jal	16e10 <strcmp>
   16d4a:	dd69                	beqz	a0,16d24 <_setlocale_r+0x1a>
   16d4c:	4422                	lw	s0,8(sp)
   16d4e:	4501                	li	a0,0
   16d50:	bfe9                	j	16d2a <_setlocale_r+0x20>

00016d52 <__locale_mb_cur_max>:
   16d52:	e601c503          	lbu	a0,-416(gp) # 1c8a0 <__global_locale+0x128>
   16d56:	8082                	ret

00016d58 <setlocale>:
   16d58:	1141                	addi	sp,sp,-16
   16d5a:	c606                	sw	ra,12(sp)
   16d5c:	c226                	sw	s1,4(sp)
   16d5e:	c18d                	beqz	a1,16d80 <setlocale+0x28>
   16d60:	c422                	sw	s0,8(sp)
   16d62:	842e                	mv	s0,a1
   16d64:	65ed                	lui	a1,0x1b
   16d66:	9d458593          	addi	a1,a1,-1580 # 1a9d4 <__clzsi2+0x1ea>
   16d6a:	8522                	mv	a0,s0
   16d6c:	2055                	jal	16e10 <strcmp>
   16d6e:	64ed                	lui	s1,0x1b
   16d70:	e911                	bnez	a0,16d84 <setlocale+0x2c>
   16d72:	4422                	lw	s0,8(sp)
   16d74:	9d048513          	addi	a0,s1,-1584 # 1a9d0 <__clzsi2+0x1e6>
   16d78:	40b2                	lw	ra,12(sp)
   16d7a:	4492                	lw	s1,4(sp)
   16d7c:	0141                	addi	sp,sp,16
   16d7e:	8082                	ret
   16d80:	64ed                	lui	s1,0x1b
   16d82:	bfcd                	j	16d74 <setlocale+0x1c>
   16d84:	9d048593          	addi	a1,s1,-1584 # 1a9d0 <__clzsi2+0x1e6>
   16d88:	8522                	mv	a0,s0
   16d8a:	2059                	jal	16e10 <strcmp>
   16d8c:	d17d                	beqz	a0,16d72 <setlocale+0x1a>
   16d8e:	65ed                	lui	a1,0x1b
   16d90:	9ec58593          	addi	a1,a1,-1556 # 1a9ec <__clzsi2+0x202>
   16d94:	8522                	mv	a0,s0
   16d96:	28ad                	jal	16e10 <strcmp>
   16d98:	dd69                	beqz	a0,16d72 <setlocale+0x1a>
   16d9a:	4422                	lw	s0,8(sp)
   16d9c:	4501                	li	a0,0
   16d9e:	bfe9                	j	16d78 <setlocale+0x20>

00016da0 <_fstat_r>:
   16da0:	1141                	addi	sp,sp,-16
   16da2:	872e                	mv	a4,a1
   16da4:	c422                	sw	s0,8(sp)
   16da6:	c226                	sw	s1,4(sp)
   16da8:	842a                	mv	s0,a0
   16daa:	85b2                	mv	a1,a2
   16dac:	853a                	mv	a0,a4
   16dae:	c606                	sw	ra,12(sp)
   16db0:	f201a223          	sw	zero,-220(gp) # 1c964 <errno>
   16db4:	3f6010ef          	jal	181aa <_fstat>
   16db8:	57fd                	li	a5,-1
   16dba:	00f50763          	beq	a0,a5,16dc8 <_fstat_r+0x28>
   16dbe:	40b2                	lw	ra,12(sp)
   16dc0:	4422                	lw	s0,8(sp)
   16dc2:	4492                	lw	s1,4(sp)
   16dc4:	0141                	addi	sp,sp,16
   16dc6:	8082                	ret
   16dc8:	f241a783          	lw	a5,-220(gp) # 1c964 <errno>
   16dcc:	dbed                	beqz	a5,16dbe <_fstat_r+0x1e>
   16dce:	40b2                	lw	ra,12(sp)
   16dd0:	c01c                	sw	a5,0(s0)
   16dd2:	4422                	lw	s0,8(sp)
   16dd4:	4492                	lw	s1,4(sp)
   16dd6:	0141                	addi	sp,sp,16
   16dd8:	8082                	ret

00016dda <_isatty_r>:
   16dda:	1141                	addi	sp,sp,-16
   16ddc:	c422                	sw	s0,8(sp)
   16dde:	c226                	sw	s1,4(sp)
   16de0:	842a                	mv	s0,a0
   16de2:	852e                	mv	a0,a1
   16de4:	c606                	sw	ra,12(sp)
   16de6:	f201a223          	sw	zero,-220(gp) # 1c964 <errno>
   16dea:	3fe010ef          	jal	181e8 <_isatty>
   16dee:	57fd                	li	a5,-1
   16df0:	00f50763          	beq	a0,a5,16dfe <_isatty_r+0x24>
   16df4:	40b2                	lw	ra,12(sp)
   16df6:	4422                	lw	s0,8(sp)
   16df8:	4492                	lw	s1,4(sp)
   16dfa:	0141                	addi	sp,sp,16
   16dfc:	8082                	ret
   16dfe:	f241a783          	lw	a5,-220(gp) # 1c964 <errno>
   16e02:	dbed                	beqz	a5,16df4 <_isatty_r+0x1a>
   16e04:	40b2                	lw	ra,12(sp)
   16e06:	c01c                	sw	a5,0(s0)
   16e08:	4422                	lw	s0,8(sp)
   16e0a:	4492                	lw	s1,4(sp)
   16e0c:	0141                	addi	sp,sp,16
   16e0e:	8082                	ret

00016e10 <strcmp>:
   16e10:	00b56733          	or	a4,a0,a1
   16e14:	53fd                	li	t2,-1
   16e16:	8b0d                	andi	a4,a4,3
   16e18:	e779                	bnez	a4,16ee6 <strcmp+0xd6>
   16e1a:	7f7f87b7          	lui	a5,0x7f7f8
   16e1e:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7db2f3>
   16e22:	4110                	lw	a2,0(a0)
   16e24:	4194                	lw	a3,0(a1)
   16e26:	00f672b3          	and	t0,a2,a5
   16e2a:	00f66333          	or	t1,a2,a5
   16e2e:	92be                	add	t0,t0,a5
   16e30:	0062e2b3          	or	t0,t0,t1
   16e34:	0c729763          	bne	t0,t2,16f02 <strcmp+0xf2>
   16e38:	06d61863          	bne	a2,a3,16ea8 <strcmp+0x98>
   16e3c:	4150                	lw	a2,4(a0)
   16e3e:	41d4                	lw	a3,4(a1)
   16e40:	00f672b3          	and	t0,a2,a5
   16e44:	00f66333          	or	t1,a2,a5
   16e48:	92be                	add	t0,t0,a5
   16e4a:	0062e2b3          	or	t0,t0,t1
   16e4e:	0a729863          	bne	t0,t2,16efe <strcmp+0xee>
   16e52:	04d61b63          	bne	a2,a3,16ea8 <strcmp+0x98>
   16e56:	4510                	lw	a2,8(a0)
   16e58:	4594                	lw	a3,8(a1)
   16e5a:	00f672b3          	and	t0,a2,a5
   16e5e:	00f66333          	or	t1,a2,a5
   16e62:	92be                	add	t0,t0,a5
   16e64:	0062e2b3          	or	t0,t0,t1
   16e68:	0a729163          	bne	t0,t2,16f0a <strcmp+0xfa>
   16e6c:	02d61e63          	bne	a2,a3,16ea8 <strcmp+0x98>
   16e70:	4550                	lw	a2,12(a0)
   16e72:	45d4                	lw	a3,12(a1)
   16e74:	00f672b3          	and	t0,a2,a5
   16e78:	00f66333          	or	t1,a2,a5
   16e7c:	92be                	add	t0,t0,a5
   16e7e:	0062e2b3          	or	t0,t0,t1
   16e82:	08729a63          	bne	t0,t2,16f16 <strcmp+0x106>
   16e86:	02d61163          	bne	a2,a3,16ea8 <strcmp+0x98>
   16e8a:	4910                	lw	a2,16(a0)
   16e8c:	4994                	lw	a3,16(a1)
   16e8e:	00f672b3          	and	t0,a2,a5
   16e92:	00f66333          	or	t1,a2,a5
   16e96:	92be                	add	t0,t0,a5
   16e98:	0062e2b3          	or	t0,t0,t1
   16e9c:	08729363          	bne	t0,t2,16f22 <strcmp+0x112>
   16ea0:	0551                	addi	a0,a0,20
   16ea2:	05d1                	addi	a1,a1,20
   16ea4:	f6d60fe3          	beq	a2,a3,16e22 <strcmp+0x12>
   16ea8:	01061713          	slli	a4,a2,0x10
   16eac:	01069793          	slli	a5,a3,0x10
   16eb0:	00f71c63          	bne	a4,a5,16ec8 <strcmp+0xb8>
   16eb4:	01065713          	srli	a4,a2,0x10
   16eb8:	0106d793          	srli	a5,a3,0x10
   16ebc:	40f70533          	sub	a0,a4,a5
   16ec0:	0ff57593          	zext.b	a1,a0
   16ec4:	e991                	bnez	a1,16ed8 <strcmp+0xc8>
   16ec6:	8082                	ret
   16ec8:	8341                	srli	a4,a4,0x10
   16eca:	83c1                	srli	a5,a5,0x10
   16ecc:	40f70533          	sub	a0,a4,a5
   16ed0:	0ff57593          	zext.b	a1,a0
   16ed4:	e191                	bnez	a1,16ed8 <strcmp+0xc8>
   16ed6:	8082                	ret
   16ed8:	0ff77713          	zext.b	a4,a4
   16edc:	0ff7f793          	zext.b	a5,a5
   16ee0:	40f70533          	sub	a0,a4,a5
   16ee4:	8082                	ret
   16ee6:	00054603          	lbu	a2,0(a0)
   16eea:	0005c683          	lbu	a3,0(a1)
   16eee:	0505                	addi	a0,a0,1
   16ef0:	0585                	addi	a1,a1,1
   16ef2:	00d61363          	bne	a2,a3,16ef8 <strcmp+0xe8>
   16ef6:	fa65                	bnez	a2,16ee6 <strcmp+0xd6>
   16ef8:	40d60533          	sub	a0,a2,a3
   16efc:	8082                	ret
   16efe:	0511                	addi	a0,a0,4
   16f00:	0591                	addi	a1,a1,4
   16f02:	fed612e3          	bne	a2,a3,16ee6 <strcmp+0xd6>
   16f06:	4501                	li	a0,0
   16f08:	8082                	ret
   16f0a:	0521                	addi	a0,a0,8
   16f0c:	05a1                	addi	a1,a1,8
   16f0e:	fcd61ce3          	bne	a2,a3,16ee6 <strcmp+0xd6>
   16f12:	4501                	li	a0,0
   16f14:	8082                	ret
   16f16:	0531                	addi	a0,a0,12
   16f18:	05b1                	addi	a1,a1,12
   16f1a:	fcd616e3          	bne	a2,a3,16ee6 <strcmp+0xd6>
   16f1e:	4501                	li	a0,0
   16f20:	8082                	ret
   16f22:	0541                	addi	a0,a0,16
   16f24:	05c1                	addi	a1,a1,16
   16f26:	fcd610e3          	bne	a2,a3,16ee6 <strcmp+0xd6>
   16f2a:	4501                	li	a0,0
   16f2c:	8082                	ret

00016f2e <__assert_func>:
   16f2e:	f141a703          	lw	a4,-236(gp) # 1c954 <_impure_ptr>
   16f32:	1141                	addi	sp,sp,-16
   16f34:	87b6                	mv	a5,a3
   16f36:	8832                	mv	a6,a2
   16f38:	c606                	sw	ra,12(sp)
   16f3a:	00c72883          	lw	a7,12(a4) # ffffe00c <__BSS_END__+0xfffe1380>
   16f3e:	86aa                	mv	a3,a0
   16f40:	872e                	mv	a4,a1
   16f42:	863e                	mv	a2,a5
   16f44:	00080c63          	beqz	a6,16f5c <__assert_func+0x2e>
   16f48:	67ed                	lui	a5,0x1b
   16f4a:	9e078793          	addi	a5,a5,-1568 # 1a9e0 <__clzsi2+0x1f6>
   16f4e:	65ed                	lui	a1,0x1b
   16f50:	9f058593          	addi	a1,a1,-1552 # 1a9f0 <__clzsi2+0x206>
   16f54:	8546                	mv	a0,a7
   16f56:	22b9                	jal	170a4 <fiprintf>
   16f58:	68f000ef          	jal	17de6 <abort>
   16f5c:	686d                	lui	a6,0x1b
   16f5e:	9ec80793          	addi	a5,a6,-1556 # 1a9ec <__clzsi2+0x202>
   16f62:	9ec80813          	addi	a6,a6,-1556
   16f66:	b7e5                	j	16f4e <__assert_func+0x20>

00016f68 <__assert>:
   16f68:	1141                	addi	sp,sp,-16
   16f6a:	86b2                	mv	a3,a2
   16f6c:	4601                	li	a2,0
   16f6e:	c606                	sw	ra,12(sp)
   16f70:	3f7d                	jal	16f2e <__assert_func>

00016f72 <_calloc_r>:
   16f72:	02c5b7b3          	mulhu	a5,a1,a2
   16f76:	1141                	addi	sp,sp,-16
   16f78:	c606                	sw	ra,12(sp)
   16f7a:	c422                	sw	s0,8(sp)
   16f7c:	02c585b3          	mul	a1,a1,a2
   16f80:	efa5                	bnez	a5,16ff8 <_calloc_r+0x86>
   16f82:	929fa0ef          	jal	118aa <_malloc_r>
   16f86:	842a                	mv	s0,a0
   16f88:	cd25                	beqz	a0,17000 <_calloc_r+0x8e>
   16f8a:	ffc52603          	lw	a2,-4(a0)
   16f8e:	02400713          	li	a4,36
   16f92:	9a71                	andi	a2,a2,-4
   16f94:	1671                	addi	a2,a2,-4
   16f96:	04c76063          	bltu	a4,a2,16fd6 <_calloc_r+0x64>
   16f9a:	46cd                	li	a3,19
   16f9c:	87aa                	mv	a5,a0
   16f9e:	02c6f163          	bgeu	a3,a2,16fc0 <_calloc_r+0x4e>
   16fa2:	00052023          	sw	zero,0(a0)
   16fa6:	00052223          	sw	zero,4(a0)
   16faa:	47ed                	li	a5,27
   16fac:	02c7fd63          	bgeu	a5,a2,16fe6 <_calloc_r+0x74>
   16fb0:	00052423          	sw	zero,8(a0)
   16fb4:	00052623          	sw	zero,12(a0)
   16fb8:	01050793          	addi	a5,a0,16
   16fbc:	04e60863          	beq	a2,a4,1700c <_calloc_r+0x9a>
   16fc0:	0007a023          	sw	zero,0(a5)
   16fc4:	0007a223          	sw	zero,4(a5)
   16fc8:	0007a423          	sw	zero,8(a5)
   16fcc:	40b2                	lw	ra,12(sp)
   16fce:	8522                	mv	a0,s0
   16fd0:	4422                	lw	s0,8(sp)
   16fd2:	0141                	addi	sp,sp,16
   16fd4:	8082                	ret
   16fd6:	4581                	li	a1,0
   16fd8:	bfefa0ef          	jal	113d6 <memset>
   16fdc:	40b2                	lw	ra,12(sp)
   16fde:	8522                	mv	a0,s0
   16fe0:	4422                	lw	s0,8(sp)
   16fe2:	0141                	addi	sp,sp,16
   16fe4:	8082                	ret
   16fe6:	00850793          	addi	a5,a0,8
   16fea:	0007a023          	sw	zero,0(a5)
   16fee:	0007a223          	sw	zero,4(a5)
   16ff2:	0007a423          	sw	zero,8(a5)
   16ff6:	bfd9                	j	16fcc <_calloc_r+0x5a>
   16ff8:	5e9000ef          	jal	17de0 <__errno>
   16ffc:	47b1                	li	a5,12
   16ffe:	c11c                	sw	a5,0(a0)
   17000:	4401                	li	s0,0
   17002:	40b2                	lw	ra,12(sp)
   17004:	8522                	mv	a0,s0
   17006:	4422                	lw	s0,8(sp)
   17008:	0141                	addi	sp,sp,16
   1700a:	8082                	ret
   1700c:	00052823          	sw	zero,16(a0)
   17010:	01850793          	addi	a5,a0,24
   17014:	00052a23          	sw	zero,20(a0)
   17018:	b765                	j	16fc0 <_calloc_r+0x4e>

0001701a <_mbtowc_r>:
   1701a:	e1c1a783          	lw	a5,-484(gp) # 1c85c <__global_locale+0xe4>
   1701e:	8782                	jr	a5

00017020 <__ascii_mbtowc>:
   17020:	c999                	beqz	a1,17036 <__ascii_mbtowc+0x16>
   17022:	c61d                	beqz	a2,17050 <__ascii_mbtowc+0x30>
   17024:	ca95                	beqz	a3,17058 <__ascii_mbtowc+0x38>
   17026:	00064783          	lbu	a5,0(a2)
   1702a:	c19c                	sw	a5,0(a1)
   1702c:	00064503          	lbu	a0,0(a2)
   17030:	00a03533          	snez	a0,a0
   17034:	8082                	ret
   17036:	1141                	addi	sp,sp,-16
   17038:	006c                	addi	a1,sp,12
   1703a:	ce09                	beqz	a2,17054 <__ascii_mbtowc+0x34>
   1703c:	c285                	beqz	a3,1705c <__ascii_mbtowc+0x3c>
   1703e:	00064783          	lbu	a5,0(a2)
   17042:	c19c                	sw	a5,0(a1)
   17044:	00064503          	lbu	a0,0(a2)
   17048:	00a03533          	snez	a0,a0
   1704c:	0141                	addi	sp,sp,16
   1704e:	8082                	ret
   17050:	4501                	li	a0,0
   17052:	8082                	ret
   17054:	4501                	li	a0,0
   17056:	bfdd                	j	1704c <__ascii_mbtowc+0x2c>
   17058:	5579                	li	a0,-2
   1705a:	8082                	ret
   1705c:	5579                	li	a0,-2
   1705e:	b7fd                	j	1704c <__ascii_mbtowc+0x2c>

00017060 <_wctomb_r>:
   17060:	e181a783          	lw	a5,-488(gp) # 1c858 <__global_locale+0xe0>
   17064:	8782                	jr	a5

00017066 <__ascii_wctomb>:
   17066:	cd91                	beqz	a1,17082 <__ascii_wctomb+0x1c>
   17068:	0ff00793          	li	a5,255
   1706c:	00c7e663          	bltu	a5,a2,17078 <__ascii_wctomb+0x12>
   17070:	00c58023          	sb	a2,0(a1)
   17074:	4505                	li	a0,1
   17076:	8082                	ret
   17078:	08a00793          	li	a5,138
   1707c:	c11c                	sw	a5,0(a0)
   1707e:	557d                	li	a0,-1
   17080:	8082                	ret
   17082:	4501                	li	a0,0
   17084:	8082                	ret

00017086 <_fiprintf_r>:
   17086:	7139                	addi	sp,sp,-64
   17088:	02c10313          	addi	t1,sp,44
   1708c:	d636                	sw	a3,44(sp)
   1708e:	869a                	mv	a3,t1
   17090:	ce06                	sw	ra,28(sp)
   17092:	d83a                	sw	a4,48(sp)
   17094:	da3e                	sw	a5,52(sp)
   17096:	dc42                	sw	a6,56(sp)
   17098:	de46                	sw	a7,60(sp)
   1709a:	c61a                	sw	t1,12(sp)
   1709c:	280d                	jal	170ce <_vfiprintf_r>
   1709e:	40f2                	lw	ra,28(sp)
   170a0:	6121                	addi	sp,sp,64
   170a2:	8082                	ret

000170a4 <fiprintf>:
   170a4:	8e2a                	mv	t3,a0
   170a6:	7139                	addi	sp,sp,-64
   170a8:	f141a503          	lw	a0,-236(gp) # 1c954 <_impure_ptr>
   170ac:	02810313          	addi	t1,sp,40
   170b0:	d432                	sw	a2,40(sp)
   170b2:	d636                	sw	a3,44(sp)
   170b4:	862e                	mv	a2,a1
   170b6:	869a                	mv	a3,t1
   170b8:	85f2                	mv	a1,t3
   170ba:	ce06                	sw	ra,28(sp)
   170bc:	d83a                	sw	a4,48(sp)
   170be:	da3e                	sw	a5,52(sp)
   170c0:	dc42                	sw	a6,56(sp)
   170c2:	de46                	sw	a7,60(sp)
   170c4:	c61a                	sw	t1,12(sp)
   170c6:	2021                	jal	170ce <_vfiprintf_r>
   170c8:	40f2                	lw	ra,28(sp)
   170ca:	6121                	addi	sp,sp,64
   170cc:	8082                	ret

000170ce <_vfiprintf_r>:
   170ce:	7169                	addi	sp,sp,-304
   170d0:	11312e23          	sw	s3,284(sp)
   170d4:	11512a23          	sw	s5,276(sp)
   170d8:	11612823          	sw	s6,272(sp)
   170dc:	11712623          	sw	s7,268(sp)
   170e0:	12112623          	sw	ra,300(sp)
   170e4:	11a12023          	sw	s10,256(sp)
   170e8:	8baa                	mv	s7,a0
   170ea:	8aae                	mv	s5,a1
   170ec:	89b2                	mv	s3,a2
   170ee:	8b36                	mv	s6,a3
   170f0:	c501                	beqz	a0,170f8 <_vfiprintf_r+0x2a>
   170f2:	595c                	lw	a5,52(a0)
   170f4:	300783e3          	beqz	a5,17bfa <_vfiprintf_r+0xb2c>
   170f8:	00ca9703          	lh	a4,12(s5)
   170fc:	064aa783          	lw	a5,100(s5)
   17100:	01271693          	slli	a3,a4,0x12
   17104:	0006cb63          	bltz	a3,1711a <_vfiprintf_r+0x4c>
   17108:	76f9                	lui	a3,0xffffe
   1710a:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe1373>
   1710c:	6609                	lui	a2,0x2
   1710e:	8f51                	or	a4,a4,a2
   17110:	8ff5                	and	a5,a5,a3
   17112:	00ea9623          	sh	a4,12(s5)
   17116:	06faa223          	sw	a5,100(s5)
   1711a:	01279713          	slli	a4,a5,0x12
   1711e:	400740e3          	bltz	a4,17d1e <_vfiprintf_r+0xc50>
   17122:	00ca9783          	lh	a5,12(s5)
   17126:	0087f713          	andi	a4,a5,8
   1712a:	22070363          	beqz	a4,17350 <_vfiprintf_r+0x282>
   1712e:	010aa703          	lw	a4,16(s5)
   17132:	20070f63          	beqz	a4,17350 <_vfiprintf_r+0x282>
   17136:	8be9                	andi	a5,a5,26
   17138:	4729                	li	a4,10
   1713a:	22e78763          	beq	a5,a4,17368 <_vfiprintf_r+0x29a>
   1713e:	67ed                	lui	a5,0x1b
   17140:	4d01                	li	s10,0
   17142:	11812423          	sw	s8,264(sp)
   17146:	11912223          	sw	s9,260(sp)
   1714a:	04c10c13          	addi	s8,sp,76
   1714e:	fa478793          	addi	a5,a5,-92 # 1afa4 <_ctype_+0x104>
   17152:	6ced                	lui	s9,0x1b
   17154:	12812423          	sw	s0,296(sp)
   17158:	13212023          	sw	s2,288(sp)
   1715c:	11412c23          	sw	s4,280(sp)
   17160:	896a                	mv	s2,s10
   17162:	12912223          	sw	s1,292(sp)
   17166:	dfee                	sw	s11,252(sp)
   17168:	c0e2                	sw	s8,64(sp)
   1716a:	c482                	sw	zero,72(sp)
   1716c:	c282                	sw	zero,68(sp)
   1716e:	8462                	mv	s0,s8
   17170:	c202                	sw	zero,4(sp)
   17172:	ca02                	sw	zero,20(sp)
   17174:	cc02                	sw	zero,24(sp)
   17176:	ce02                	sw	zero,28(sp)
   17178:	c03e                	sw	a5,0(sp)
   1717a:	4a41                	li	s4,16
   1717c:	110c8c93          	addi	s9,s9,272 # 1b110 <zeroes.0>
   17180:	8d5a                	mv	s10,s6
   17182:	0009c783          	lbu	a5,0(s3)
   17186:	14078563          	beqz	a5,172d0 <_vfiprintf_r+0x202>
   1718a:	84ce                	mv	s1,s3
   1718c:	02500713          	li	a4,37
   17190:	20e78363          	beq	a5,a4,17396 <_vfiprintf_r+0x2c8>
   17194:	0014c783          	lbu	a5,1(s1)
   17198:	0485                	addi	s1,s1,1
   1719a:	fbfd                	bnez	a5,17190 <_vfiprintf_r+0xc2>
   1719c:	41348b33          	sub	s6,s1,s3
   171a0:	13348863          	beq	s1,s3,172d0 <_vfiprintf_r+0x202>
   171a4:	4726                	lw	a4,72(sp)
   171a6:	4796                	lw	a5,68(sp)
   171a8:	01342023          	sw	s3,0(s0)
   171ac:	975a                	add	a4,a4,s6
   171ae:	0785                	addi	a5,a5,1
   171b0:	01642223          	sw	s6,4(s0)
   171b4:	c4ba                	sw	a4,72(sp)
   171b6:	c2be                	sw	a5,68(sp)
   171b8:	471d                	li	a4,7
   171ba:	0421                	addi	s0,s0,8
   171bc:	1ef74463          	blt	a4,a5,173a4 <_vfiprintf_r+0x2d6>
   171c0:	0004c783          	lbu	a5,0(s1)
   171c4:	995a                	add	s2,s2,s6
   171c6:	10078563          	beqz	a5,172d0 <_vfiprintf_r+0x202>
   171ca:	0014c783          	lbu	a5,1(s1)
   171ce:	00148993          	addi	s3,s1,1
   171d2:	02010da3          	sb	zero,59(sp)
   171d6:	5dfd                	li	s11,-1
   171d8:	4b01                	li	s6,0
   171da:	4801                	li	a6,0
   171dc:	05a00493          	li	s1,90
   171e0:	0985                	addi	s3,s3,1
   171e2:	863e                	mv	a2,a5
   171e4:	fe060713          	addi	a4,a2,-32 # 1fe0 <exit-0xe0b4>
   171e8:	02e4eb63          	bltu	s1,a4,1721e <_vfiprintf_r+0x150>
   171ec:	4782                	lw	a5,0(sp)
   171ee:	070a                	slli	a4,a4,0x2
   171f0:	973e                	add	a4,a4,a5
   171f2:	431c                	lw	a5,0(a4)
   171f4:	8782                	jr	a5
   171f6:	4b01                	li	s6,0
   171f8:	fd060793          	addi	a5,a2,-48
   171fc:	46a5                	li	a3,9
   171fe:	0009c603          	lbu	a2,0(s3)
   17202:	002b1713          	slli	a4,s6,0x2
   17206:	9b3a                	add	s6,s6,a4
   17208:	0b06                	slli	s6,s6,0x1
   1720a:	9b3e                	add	s6,s6,a5
   1720c:	fd060793          	addi	a5,a2,-48
   17210:	0985                	addi	s3,s3,1
   17212:	fef6f6e3          	bgeu	a3,a5,171fe <_vfiprintf_r+0x130>
   17216:	fe060713          	addi	a4,a2,-32
   1721a:	fce4f9e3          	bgeu	s1,a4,171ec <_vfiprintf_r+0x11e>
   1721e:	ca4d                	beqz	a2,172d0 <_vfiprintf_r+0x202>
   17220:	08c10623          	sb	a2,140(sp)
   17224:	02010da3          	sb	zero,59(sp)
   17228:	4885                	li	a7,1
   1722a:	4e05                	li	t3,1
   1722c:	0164                	addi	s1,sp,140
   1722e:	4d81                	li	s11,0
   17230:	4281                	li	t0,0
   17232:	08487f93          	andi	t6,a6,132
   17236:	4726                	lw	a4,72(sp)
   17238:	4796                	lw	a5,68(sp)
   1723a:	000f9663          	bnez	t6,17246 <_vfiprintf_r+0x178>
   1723e:	411b0eb3          	sub	t4,s6,a7
   17242:	71d04b63          	bgtz	t4,17958 <_vfiprintf_r+0x88a>
   17246:	03b14603          	lbu	a2,59(sp)
   1724a:	ce11                	beqz	a2,17266 <_vfiprintf_r+0x198>
   1724c:	03b10613          	addi	a2,sp,59
   17250:	c010                	sw	a2,0(s0)
   17252:	0785                	addi	a5,a5,1
   17254:	4605                	li	a2,1
   17256:	0705                	addi	a4,a4,1
   17258:	c050                	sw	a2,4(s0)
   1725a:	c4ba                	sw	a4,72(sp)
   1725c:	c2be                	sw	a5,68(sp)
   1725e:	461d                	li	a2,7
   17260:	0421                	addi	s0,s0,8
   17262:	1af64363          	blt	a2,a5,17408 <_vfiprintf_r+0x33a>
   17266:	00028e63          	beqz	t0,17282 <_vfiprintf_r+0x1b4>
   1726a:	1870                	addi	a2,sp,60
   1726c:	c010                	sw	a2,0(s0)
   1726e:	0785                	addi	a5,a5,1
   17270:	4609                	li	a2,2
   17272:	0709                	addi	a4,a4,2
   17274:	c050                	sw	a2,4(s0)
   17276:	c4ba                	sw	a4,72(sp)
   17278:	c2be                	sw	a5,68(sp)
   1727a:	461d                	li	a2,7
   1727c:	0421                	addi	s0,s0,8
   1727e:	78f64663          	blt	a2,a5,17a0a <_vfiprintf_r+0x93c>
   17282:	08000613          	li	a2,128
   17286:	52cf8a63          	beq	t6,a2,177ba <_vfiprintf_r+0x6ec>
   1728a:	41cd8db3          	sub	s11,s11,t3
   1728e:	5db04d63          	bgtz	s11,17868 <_vfiprintf_r+0x79a>
   17292:	9772                	add	a4,a4,t3
   17294:	0785                	addi	a5,a5,1
   17296:	c004                	sw	s1,0(s0)
   17298:	01c42223          	sw	t3,4(s0)
   1729c:	c4ba                	sw	a4,72(sp)
   1729e:	c2be                	sw	a5,68(sp)
   172a0:	461d                	li	a2,7
   172a2:	0421                	addi	s0,s0,8
   172a4:	64f64e63          	blt	a2,a5,17900 <_vfiprintf_r+0x832>
   172a8:	00487813          	andi	a6,a6,4
   172ac:	00080663          	beqz	a6,172b8 <_vfiprintf_r+0x1ea>
   172b0:	411b04b3          	sub	s1,s6,a7
   172b4:	16904e63          	bgtz	s1,17430 <_vfiprintf_r+0x362>
   172b8:	011b5363          	bge	s6,a7,172be <_vfiprintf_r+0x1f0>
   172bc:	8b46                	mv	s6,a7
   172be:	995a                	add	s2,s2,s6
   172c0:	0e071a63          	bnez	a4,173b4 <_vfiprintf_r+0x2e6>
   172c4:	0009c783          	lbu	a5,0(s3)
   172c8:	c282                	sw	zero,68(sp)
   172ca:	8462                	mv	s0,s8
   172cc:	ea079fe3          	bnez	a5,1718a <_vfiprintf_r+0xbc>
   172d0:	47a6                	lw	a5,72(sp)
   172d2:	8d4a                	mv	s10,s2
   172d4:	0e078863          	beqz	a5,173c4 <_vfiprintf_r+0x2f6>
   172d8:	0090                	addi	a2,sp,64
   172da:	85d6                	mv	a1,s5
   172dc:	855e                	mv	a0,s7
   172de:	fbafc0ef          	jal	13a98 <__sprint_r>
   172e2:	a0cd                	j	173c4 <_vfiprintf_r+0x2f6>
   172e4:	000d2b03          	lw	s6,0(s10)
   172e8:	0d11                	addi	s10,s10,4
   172ea:	280b4c63          	bltz	s6,17582 <_vfiprintf_r+0x4b4>
   172ee:	0009c783          	lbu	a5,0(s3)
   172f2:	b5fd                	j	171e0 <_vfiprintf_r+0x112>
   172f4:	0009c783          	lbu	a5,0(s3)
   172f8:	02086813          	ori	a6,a6,32
   172fc:	b5d5                	j	171e0 <_vfiprintf_r+0x112>
   172fe:	01086813          	ori	a6,a6,16
   17302:	02087793          	andi	a5,a6,32
   17306:	1a078363          	beqz	a5,174ac <_vfiprintf_r+0x3de>
   1730a:	0d1d                	addi	s10,s10,7
   1730c:	ff8d7d13          	andi	s10,s10,-8
   17310:	004d2703          	lw	a4,4(s10)
   17314:	000d2783          	lw	a5,0(s10)
   17318:	0d21                	addi	s10,s10,8
   1731a:	88ba                	mv	a7,a4
   1731c:	1a074863          	bltz	a4,174cc <_vfiprintf_r+0x3fe>
   17320:	1c0dc663          	bltz	s11,174ec <_vfiprintf_r+0x41e>
   17324:	0117e733          	or	a4,a5,a7
   17328:	f7f87813          	andi	a6,a6,-129
   1732c:	1c071063          	bnez	a4,174ec <_vfiprintf_r+0x41e>
   17330:	1e0d93e3          	bnez	s11,17d16 <_vfiprintf_r+0xc48>
   17334:	03b14783          	lbu	a5,59(sp)
   17338:	4881                	li	a7,0
   1733a:	4e01                	li	t3,0
   1733c:	1984                	addi	s1,sp,240
   1733e:	c391                	beqz	a5,17342 <_vfiprintf_r+0x274>
   17340:	0885                	addi	a7,a7,1
   17342:	00287293          	andi	t0,a6,2
   17346:	ee0286e3          	beqz	t0,17232 <_vfiprintf_r+0x164>
   1734a:	0889                	addi	a7,a7,2
   1734c:	4289                	li	t0,2
   1734e:	b5d5                	j	17232 <_vfiprintf_r+0x164>
   17350:	85d6                	mv	a1,s5
   17352:	855e                	mv	a0,s7
   17354:	d81fc0ef          	jal	140d4 <__swsetup_r>
   17358:	1c0513e3          	bnez	a0,17d1e <_vfiprintf_r+0xc50>
   1735c:	00ca9783          	lh	a5,12(s5)
   17360:	4729                	li	a4,10
   17362:	8be9                	andi	a5,a5,26
   17364:	dce79de3          	bne	a5,a4,1713e <_vfiprintf_r+0x70>
   17368:	00ea9783          	lh	a5,14(s5)
   1736c:	dc07c9e3          	bltz	a5,1713e <_vfiprintf_r+0x70>
   17370:	12c12083          	lw	ra,300(sp)
   17374:	10012d03          	lw	s10,256(sp)
   17378:	86da                	mv	a3,s6
   1737a:	864e                	mv	a2,s3
   1737c:	11012b03          	lw	s6,272(sp)
   17380:	11c12983          	lw	s3,284(sp)
   17384:	85d6                	mv	a1,s5
   17386:	855e                	mv	a0,s7
   17388:	11412a83          	lw	s5,276(sp)
   1738c:	10c12b83          	lw	s7,268(sp)
   17390:	6155                	addi	sp,sp,304
   17392:	1b90006f          	j	17d4a <__sbprintf>
   17396:	41348b33          	sub	s6,s1,s3
   1739a:	e13495e3          	bne	s1,s3,171a4 <_vfiprintf_r+0xd6>
   1739e:	0004c783          	lbu	a5,0(s1)
   173a2:	b515                	j	171c6 <_vfiprintf_r+0xf8>
   173a4:	0090                	addi	a2,sp,64
   173a6:	85d6                	mv	a1,s5
   173a8:	855e                	mv	a0,s7
   173aa:	eeefc0ef          	jal	13a98 <__sprint_r>
   173ae:	e911                	bnez	a0,173c2 <_vfiprintf_r+0x2f4>
   173b0:	8462                	mv	s0,s8
   173b2:	b539                	j	171c0 <_vfiprintf_r+0xf2>
   173b4:	0090                	addi	a2,sp,64
   173b6:	85d6                	mv	a1,s5
   173b8:	855e                	mv	a0,s7
   173ba:	edefc0ef          	jal	13a98 <__sprint_r>
   173be:	f00503e3          	beqz	a0,172c4 <_vfiprintf_r+0x1f6>
   173c2:	8d4a                	mv	s10,s2
   173c4:	00cad783          	lhu	a5,12(s5)
   173c8:	12812403          	lw	s0,296(sp)
   173cc:	12412483          	lw	s1,292(sp)
   173d0:	0407f793          	andi	a5,a5,64
   173d4:	12012903          	lw	s2,288(sp)
   173d8:	11812a03          	lw	s4,280(sp)
   173dc:	10812c03          	lw	s8,264(sp)
   173e0:	10412c83          	lw	s9,260(sp)
   173e4:	5dfe                	lw	s11,252(sp)
   173e6:	12079ce3          	bnez	a5,17d1e <_vfiprintf_r+0xc50>
   173ea:	12c12083          	lw	ra,300(sp)
   173ee:	11c12983          	lw	s3,284(sp)
   173f2:	11412a83          	lw	s5,276(sp)
   173f6:	11012b03          	lw	s6,272(sp)
   173fa:	10c12b83          	lw	s7,268(sp)
   173fe:	856a                	mv	a0,s10
   17400:	10012d03          	lw	s10,256(sp)
   17404:	6155                	addi	sp,sp,304
   17406:	8082                	ret
   17408:	0090                	addi	a2,sp,64
   1740a:	85d6                	mv	a1,s5
   1740c:	855e                	mv	a0,s7
   1740e:	d246                	sw	a7,36(sp)
   17410:	d072                	sw	t3,32(sp)
   17412:	c842                	sw	a6,16(sp)
   17414:	c67e                	sw	t6,12(sp)
   17416:	c416                	sw	t0,8(sp)
   17418:	e80fc0ef          	jal	13a98 <__sprint_r>
   1741c:	f15d                	bnez	a0,173c2 <_vfiprintf_r+0x2f4>
   1741e:	4726                	lw	a4,72(sp)
   17420:	4796                	lw	a5,68(sp)
   17422:	5892                	lw	a7,36(sp)
   17424:	5e02                	lw	t3,32(sp)
   17426:	4842                	lw	a6,16(sp)
   17428:	4fb2                	lw	t6,12(sp)
   1742a:	42a2                	lw	t0,8(sp)
   1742c:	8462                	mv	s0,s8
   1742e:	bd25                	j	17266 <_vfiprintf_r+0x198>
   17430:	636d                	lui	t1,0x1b
   17432:	4641                	li	a2,16
   17434:	4796                	lw	a5,68(sp)
   17436:	12030313          	addi	t1,t1,288 # 1b120 <blanks.1>
   1743a:	04965563          	bge	a2,s1,17484 <_vfiprintf_r+0x3b6>
   1743e:	86a2                	mv	a3,s0
   17440:	4dc1                	li	s11,16
   17442:	481d                	li	a6,7
   17444:	c446                	sw	a7,8(sp)
   17446:	841a                	mv	s0,t1
   17448:	a021                	j	17450 <_vfiprintf_r+0x382>
   1744a:	14c1                	addi	s1,s1,-16
   1744c:	029dd963          	bge	s11,s1,1747e <_vfiprintf_r+0x3b0>
   17450:	0741                	addi	a4,a4,16
   17452:	0785                	addi	a5,a5,1
   17454:	c280                	sw	s0,0(a3)
   17456:	01b6a223          	sw	s11,4(a3)
   1745a:	c4ba                	sw	a4,72(sp)
   1745c:	c2be                	sw	a5,68(sp)
   1745e:	06a1                	addi	a3,a3,8
   17460:	fef855e3          	bge	a6,a5,1744a <_vfiprintf_r+0x37c>
   17464:	0090                	addi	a2,sp,64
   17466:	85d6                	mv	a1,s5
   17468:	855e                	mv	a0,s7
   1746a:	e2efc0ef          	jal	13a98 <__sprint_r>
   1746e:	f931                	bnez	a0,173c2 <_vfiprintf_r+0x2f4>
   17470:	14c1                	addi	s1,s1,-16
   17472:	4726                	lw	a4,72(sp)
   17474:	4796                	lw	a5,68(sp)
   17476:	86e2                	mv	a3,s8
   17478:	481d                	li	a6,7
   1747a:	fc9dcbe3          	blt	s11,s1,17450 <_vfiprintf_r+0x382>
   1747e:	48a2                	lw	a7,8(sp)
   17480:	8322                	mv	t1,s0
   17482:	8436                	mv	s0,a3
   17484:	9726                	add	a4,a4,s1
   17486:	0785                	addi	a5,a5,1
   17488:	00642023          	sw	t1,0(s0)
   1748c:	c044                	sw	s1,4(s0)
   1748e:	c4ba                	sw	a4,72(sp)
   17490:	c2be                	sw	a5,68(sp)
   17492:	461d                	li	a2,7
   17494:	e2f652e3          	bge	a2,a5,172b8 <_vfiprintf_r+0x1ea>
   17498:	0090                	addi	a2,sp,64
   1749a:	85d6                	mv	a1,s5
   1749c:	855e                	mv	a0,s7
   1749e:	c446                	sw	a7,8(sp)
   174a0:	df8fc0ef          	jal	13a98 <__sprint_r>
   174a4:	fd19                	bnez	a0,173c2 <_vfiprintf_r+0x2f4>
   174a6:	4726                	lw	a4,72(sp)
   174a8:	48a2                	lw	a7,8(sp)
   174aa:	b539                	j	172b8 <_vfiprintf_r+0x1ea>
   174ac:	01087713          	andi	a4,a6,16
   174b0:	000d2783          	lw	a5,0(s10)
   174b4:	0d11                	addi	s10,s10,4
   174b6:	e371                	bnez	a4,1757a <_vfiprintf_r+0x4ac>
   174b8:	04087713          	andi	a4,a6,64
   174bc:	cb5d                	beqz	a4,17572 <_vfiprintf_r+0x4a4>
   174be:	07c2                	slli	a5,a5,0x10
   174c0:	87c1                	srai	a5,a5,0x10
   174c2:	41f7d893          	srai	a7,a5,0x1f
   174c6:	8746                	mv	a4,a7
   174c8:	e4075ce3          	bgez	a4,17320 <_vfiprintf_r+0x252>
   174cc:	02d00613          	li	a2,45
   174d0:	00f03733          	snez	a4,a5
   174d4:	411008b3          	neg	a7,a7
   174d8:	02c10da3          	sb	a2,59(sp)
   174dc:	40e888b3          	sub	a7,a7,a4
   174e0:	40f007b3          	neg	a5,a5
   174e4:	000dc463          	bltz	s11,174ec <_vfiprintf_r+0x41e>
   174e8:	f7f87813          	andi	a6,a6,-129
   174ec:	62089c63          	bnez	a7,17b24 <_vfiprintf_r+0xa56>
   174f0:	4725                	li	a4,9
   174f2:	62f76963          	bltu	a4,a5,17b24 <_vfiprintf_r+0xa56>
   174f6:	03078793          	addi	a5,a5,48
   174fa:	0ff7f793          	zext.b	a5,a5
   174fe:	0ef107a3          	sb	a5,239(sp)
   17502:	88ee                	mv	a7,s11
   17504:	01b04363          	bgtz	s11,1750a <_vfiprintf_r+0x43c>
   17508:	4885                	li	a7,1
   1750a:	4e05                	li	t3,1
   1750c:	0ef10493          	addi	s1,sp,239
   17510:	03b14783          	lbu	a5,59(sp)
   17514:	e20796e3          	bnez	a5,17340 <_vfiprintf_r+0x272>
   17518:	b52d                	j	17342 <_vfiprintf_r+0x274>
   1751a:	000d2483          	lw	s1,0(s10)
   1751e:	02010da3          	sb	zero,59(sp)
   17522:	0d11                	addi	s10,s10,4
   17524:	70048463          	beqz	s1,17c2c <_vfiprintf_r+0xb5e>
   17528:	c442                	sw	a6,8(sp)
   1752a:	5e0dc163          	bltz	s11,17b0c <_vfiprintf_r+0xa3e>
   1752e:	866e                	mv	a2,s11
   17530:	4581                	li	a1,0
   17532:	8526                	mv	a0,s1
   17534:	c7bfc0ef          	jal	141ae <memchr>
   17538:	4822                	lw	a6,8(sp)
   1753a:	8e6e                	mv	t3,s11
   1753c:	c119                	beqz	a0,17542 <_vfiprintf_r+0x474>
   1753e:	40950e33          	sub	t3,a0,s1
   17542:	03b14783          	lbu	a5,59(sp)
   17546:	fffe4893          	not	a7,t3
   1754a:	41f8d893          	srai	a7,a7,0x1f
   1754e:	011e78b3          	and	a7,t3,a7
   17552:	4d81                	li	s11,0
   17554:	4281                	li	t0,0
   17556:	de0795e3          	bnez	a5,17340 <_vfiprintf_r+0x272>
   1755a:	b9e1                	j	17232 <_vfiprintf_r+0x164>
   1755c:	000d2783          	lw	a5,0(s10)
   17560:	02010da3          	sb	zero,59(sp)
   17564:	0d11                	addi	s10,s10,4
   17566:	08f10623          	sb	a5,140(sp)
   1756a:	4885                	li	a7,1
   1756c:	4e05                	li	t3,1
   1756e:	0164                	addi	s1,sp,140
   17570:	b97d                	j	1722e <_vfiprintf_r+0x160>
   17572:	20087713          	andi	a4,a6,512
   17576:	76071e63          	bnez	a4,17cf2 <_vfiprintf_r+0xc24>
   1757a:	41f7d893          	srai	a7,a5,0x1f
   1757e:	8746                	mv	a4,a7
   17580:	bb71                	j	1731c <_vfiprintf_r+0x24e>
   17582:	41600b33          	neg	s6,s6
   17586:	0009c783          	lbu	a5,0(s3)
   1758a:	00486813          	ori	a6,a6,4
   1758e:	b989                	j	171e0 <_vfiprintf_r+0x112>
   17590:	02b00713          	li	a4,43
   17594:	0009c783          	lbu	a5,0(s3)
   17598:	02e10da3          	sb	a4,59(sp)
   1759c:	b191                	j	171e0 <_vfiprintf_r+0x112>
   1759e:	0009c783          	lbu	a5,0(s3)
   175a2:	08086813          	ori	a6,a6,128
   175a6:	b92d                	j	171e0 <_vfiprintf_r+0x112>
   175a8:	0009c603          	lbu	a2,0(s3)
   175ac:	02a00793          	li	a5,42
   175b0:	00198693          	addi	a3,s3,1
   175b4:	76f60863          	beq	a2,a5,17d24 <_vfiprintf_r+0xc56>
   175b8:	fd060793          	addi	a5,a2,-48
   175bc:	4725                	li	a4,9
   175be:	4d81                	li	s11,0
   175c0:	45a5                	li	a1,9
   175c2:	02f76063          	bltu	a4,a5,175e2 <_vfiprintf_r+0x514>
   175c6:	0006c603          	lbu	a2,0(a3)
   175ca:	002d9713          	slli	a4,s11,0x2
   175ce:	9dba                	add	s11,s11,a4
   175d0:	0d86                	slli	s11,s11,0x1
   175d2:	9dbe                	add	s11,s11,a5
   175d4:	fd060793          	addi	a5,a2,-48
   175d8:	0685                	addi	a3,a3,1
   175da:	fef5f6e3          	bgeu	a1,a5,175c6 <_vfiprintf_r+0x4f8>
   175de:	4a0dcb63          	bltz	s11,17a94 <_vfiprintf_r+0x9c6>
   175e2:	89b6                	mv	s3,a3
   175e4:	b101                	j	171e4 <_vfiprintf_r+0x116>
   175e6:	855e                	mv	a0,s7
   175e8:	c442                	sw	a6,8(sp)
   175ea:	cd3fc0ef          	jal	142bc <_localeconv_r>
   175ee:	415c                	lw	a5,4(a0)
   175f0:	853e                	mv	a0,a5
   175f2:	ce3e                	sw	a5,28(sp)
   175f4:	e8bf90ef          	jal	1147e <strlen>
   175f8:	87aa                	mv	a5,a0
   175fa:	855e                	mv	a0,s7
   175fc:	cc3e                	sw	a5,24(sp)
   175fe:	cbffc0ef          	jal	142bc <_localeconv_r>
   17602:	4518                	lw	a4,8(a0)
   17604:	47e2                	lw	a5,24(sp)
   17606:	4822                	lw	a6,8(sp)
   17608:	ca3a                	sw	a4,20(sp)
   1760a:	ce0782e3          	beqz	a5,172ee <_vfiprintf_r+0x220>
   1760e:	4752                	lw	a4,20(sp)
   17610:	0009c783          	lbu	a5,0(s3)
   17614:	bc0706e3          	beqz	a4,171e0 <_vfiprintf_r+0x112>
   17618:	00074703          	lbu	a4,0(a4)
   1761c:	bc0702e3          	beqz	a4,171e0 <_vfiprintf_r+0x112>
   17620:	40086813          	ori	a6,a6,1024
   17624:	be75                	j	171e0 <_vfiprintf_r+0x112>
   17626:	0009c783          	lbu	a5,0(s3)
   1762a:	00186813          	ori	a6,a6,1
   1762e:	be4d                	j	171e0 <_vfiprintf_r+0x112>
   17630:	03b14703          	lbu	a4,59(sp)
   17634:	0009c783          	lbu	a5,0(s3)
   17638:	ba0714e3          	bnez	a4,171e0 <_vfiprintf_r+0x112>
   1763c:	02000713          	li	a4,32
   17640:	02e10da3          	sb	a4,59(sp)
   17644:	be71                	j	171e0 <_vfiprintf_r+0x112>
   17646:	01086713          	ori	a4,a6,16
   1764a:	02077793          	andi	a5,a4,32
   1764e:	40078063          	beqz	a5,17a4e <_vfiprintf_r+0x980>
   17652:	0d1d                	addi	s10,s10,7
   17654:	ff8d7d13          	andi	s10,s10,-8
   17658:	000d2783          	lw	a5,0(s10)
   1765c:	004d2583          	lw	a1,4(s10)
   17660:	0d21                	addi	s10,s10,8
   17662:	02010da3          	sb	zero,59(sp)
   17666:	bff77813          	andi	a6,a4,-1025
   1766a:	0a0dc163          	bltz	s11,1770c <_vfiprintf_r+0x63e>
   1766e:	00b7e633          	or	a2,a5,a1
   17672:	b7f77713          	andi	a4,a4,-1153
   17676:	56061d63          	bnez	a2,17bf0 <_vfiprintf_r+0xb22>
   1767a:	8e42                	mv	t3,a6
   1767c:	4781                	li	a5,0
   1767e:	883a                	mv	a6,a4
   17680:	060d9e63          	bnez	s11,176fc <_vfiprintf_r+0x62e>
   17684:	ca0798e3          	bnez	a5,17334 <_vfiprintf_r+0x266>
   17688:	001e7e13          	andi	t3,t3,1
   1768c:	3e0e0463          	beqz	t3,17a74 <_vfiprintf_r+0x9a6>
   17690:	03000793          	li	a5,48
   17694:	0ef107a3          	sb	a5,239(sp)
   17698:	88f2                	mv	a7,t3
   1769a:	0ef10493          	addi	s1,sp,239
   1769e:	bd8d                	j	17510 <_vfiprintf_r+0x442>
   176a0:	0009c783          	lbu	a5,0(s3)
   176a4:	06c00713          	li	a4,108
   176a8:	56e78463          	beq	a5,a4,17c10 <_vfiprintf_r+0xb42>
   176ac:	01086813          	ori	a6,a6,16
   176b0:	be05                	j	171e0 <_vfiprintf_r+0x112>
   176b2:	0009c783          	lbu	a5,0(s3)
   176b6:	06800713          	li	a4,104
   176ba:	54e78463          	beq	a5,a4,17c02 <_vfiprintf_r+0xb34>
   176be:	04086813          	ori	a6,a6,64
   176c2:	be39                	j	171e0 <_vfiprintf_r+0x112>
   176c4:	01086e13          	ori	t3,a6,16
   176c8:	020e7793          	andi	a5,t3,32
   176cc:	36078363          	beqz	a5,17a32 <_vfiprintf_r+0x964>
   176d0:	0d1d                	addi	s10,s10,7
   176d2:	ff8d7d13          	andi	s10,s10,-8
   176d6:	000d2783          	lw	a5,0(s10)
   176da:	004d2883          	lw	a7,4(s10)
   176de:	0d21                	addi	s10,s10,8
   176e0:	02010da3          	sb	zero,59(sp)
   176e4:	8872                	mv	a6,t3
   176e6:	e00dc3e3          	bltz	s11,174ec <_vfiprintf_r+0x41e>
   176ea:	0117e733          	or	a4,a5,a7
   176ee:	f7fe7813          	andi	a6,t3,-129
   176f2:	de071de3          	bnez	a4,174ec <_vfiprintf_r+0x41e>
   176f6:	4785                	li	a5,1
   176f8:	f80d86e3          	beqz	s11,17684 <_vfiprintf_r+0x5b6>
   176fc:	4705                	li	a4,1
   176fe:	60e78c63          	beq	a5,a4,17d16 <_vfiprintf_r+0xc48>
   17702:	4709                	li	a4,2
   17704:	54e78663          	beq	a5,a4,17c50 <_vfiprintf_r+0xb82>
   17708:	4781                	li	a5,0
   1770a:	4581                	li	a1,0
   1770c:	1984                	addi	s1,sp,240
   1770e:	01d59693          	slli	a3,a1,0x1d
   17712:	0077f713          	andi	a4,a5,7
   17716:	838d                	srli	a5,a5,0x3
   17718:	03070713          	addi	a4,a4,48
   1771c:	8fd5                	or	a5,a5,a3
   1771e:	818d                	srli	a1,a1,0x3
   17720:	fee48fa3          	sb	a4,-1(s1)
   17724:	00b7e6b3          	or	a3,a5,a1
   17728:	8526                	mv	a0,s1
   1772a:	14fd                	addi	s1,s1,-1
   1772c:	f2ed                	bnez	a3,1770e <_vfiprintf_r+0x640>
   1772e:	00187793          	andi	a5,a6,1
   17732:	20078b63          	beqz	a5,17948 <_vfiprintf_r+0x87a>
   17736:	03000793          	li	a5,48
   1773a:	20f70763          	beq	a4,a5,17948 <_vfiprintf_r+0x87a>
   1773e:	1579                	addi	a0,a0,-2
   17740:	fef48fa3          	sb	a5,-1(s1)
   17744:	199c                	addi	a5,sp,240
   17746:	40a78e33          	sub	t3,a5,a0
   1774a:	88ee                	mv	a7,s11
   1774c:	35cdc163          	blt	s11,t3,17a8e <_vfiprintf_r+0x9c0>
   17750:	84aa                	mv	s1,a0
   17752:	bb7d                	j	17510 <_vfiprintf_r+0x442>
   17754:	6721                	lui	a4,0x8
   17756:	83070713          	addi	a4,a4,-2000 # 7830 <exit-0x8864>
   1775a:	02e11e23          	sh	a4,60(sp)
   1775e:	676d                	lui	a4,0x1b
   17760:	8c070713          	addi	a4,a4,-1856 # 1a8c0 <__clzsi2+0xd6>
   17764:	000d2783          	lw	a5,0(s10)
   17768:	4581                	li	a1,0
   1776a:	00286813          	ori	a6,a6,2
   1776e:	0d11                	addi	s10,s10,4
   17770:	c23a                	sw	a4,4(sp)
   17772:	02010da3          	sb	zero,59(sp)
   17776:	1a0dc763          	bltz	s11,17924 <_vfiprintf_r+0x856>
   1777a:	00b7e733          	or	a4,a5,a1
   1777e:	f7f87613          	andi	a2,a6,-129
   17782:	18071d63          	bnez	a4,1791c <_vfiprintf_r+0x84e>
   17786:	8e42                	mv	t3,a6
   17788:	4789                	li	a5,2
   1778a:	8832                	mv	a6,a2
   1778c:	bdd5                	j	17680 <_vfiprintf_r+0x5b2>
   1778e:	02087793          	andi	a5,a6,32
   17792:	2e079463          	bnez	a5,17a7a <_vfiprintf_r+0x9ac>
   17796:	01087793          	andi	a5,a6,16
   1779a:	48079263          	bnez	a5,17c1e <_vfiprintf_r+0xb50>
   1779e:	04087793          	andi	a5,a6,64
   177a2:	54079f63          	bnez	a5,17d00 <_vfiprintf_r+0xc32>
   177a6:	20087813          	andi	a6,a6,512
   177aa:	46080a63          	beqz	a6,17c1e <_vfiprintf_r+0xb50>
   177ae:	000d2783          	lw	a5,0(s10)
   177b2:	0d11                	addi	s10,s10,4
   177b4:	01278023          	sb	s2,0(a5)
   177b8:	b2e9                	j	17182 <_vfiprintf_r+0xb4>
   177ba:	411b0333          	sub	t1,s6,a7
   177be:	ac6056e3          	blez	t1,1728a <_vfiprintf_r+0x1bc>
   177c2:	6f6d                	lui	t5,0x1b
   177c4:	4641                	li	a2,16
   177c6:	110f0f13          	addi	t5,t5,272 # 1b110 <zeroes.0>
   177ca:	04665f63          	bge	a2,t1,17828 <_vfiprintf_r+0x75a>
   177ce:	c426                	sw	s1,8(sp)
   177d0:	86a2                	mv	a3,s0
   177d2:	4ec1                	li	t4,16
   177d4:	4f9d                	li	t6,7
   177d6:	c642                	sw	a6,12(sp)
   177d8:	c872                	sw	t3,16(sp)
   177da:	841a                	mv	s0,t1
   177dc:	d046                	sw	a7,32(sp)
   177de:	84fa                	mv	s1,t5
   177e0:	a021                	j	177e8 <_vfiprintf_r+0x71a>
   177e2:	1441                	addi	s0,s0,-16
   177e4:	028edb63          	bge	t4,s0,1781a <_vfiprintf_r+0x74c>
   177e8:	0741                	addi	a4,a4,16
   177ea:	0785                	addi	a5,a5,1
   177ec:	c284                	sw	s1,0(a3)
   177ee:	01d6a223          	sw	t4,4(a3)
   177f2:	c4ba                	sw	a4,72(sp)
   177f4:	c2be                	sw	a5,68(sp)
   177f6:	06a1                	addi	a3,a3,8
   177f8:	feffd5e3          	bge	t6,a5,177e2 <_vfiprintf_r+0x714>
   177fc:	0090                	addi	a2,sp,64
   177fe:	85d6                	mv	a1,s5
   17800:	855e                	mv	a0,s7
   17802:	a96fc0ef          	jal	13a98 <__sprint_r>
   17806:	ba051ee3          	bnez	a0,173c2 <_vfiprintf_r+0x2f4>
   1780a:	4ec1                	li	t4,16
   1780c:	1441                	addi	s0,s0,-16
   1780e:	4726                	lw	a4,72(sp)
   17810:	4796                	lw	a5,68(sp)
   17812:	86e2                	mv	a3,s8
   17814:	4f9d                	li	t6,7
   17816:	fc8ec9e3          	blt	t4,s0,177e8 <_vfiprintf_r+0x71a>
   1781a:	8f26                	mv	t5,s1
   1781c:	4832                	lw	a6,12(sp)
   1781e:	4e42                	lw	t3,16(sp)
   17820:	5882                	lw	a7,32(sp)
   17822:	44a2                	lw	s1,8(sp)
   17824:	8322                	mv	t1,s0
   17826:	8436                	mv	s0,a3
   17828:	971a                	add	a4,a4,t1
   1782a:	0785                	addi	a5,a5,1
   1782c:	01e42023          	sw	t5,0(s0)
   17830:	00642223          	sw	t1,4(s0)
   17834:	c4ba                	sw	a4,72(sp)
   17836:	c2be                	sw	a5,68(sp)
   17838:	461d                	li	a2,7
   1783a:	0421                	addi	s0,s0,8
   1783c:	a4f657e3          	bge	a2,a5,1728a <_vfiprintf_r+0x1bc>
   17840:	0090                	addi	a2,sp,64
   17842:	85d6                	mv	a1,s5
   17844:	855e                	mv	a0,s7
   17846:	c846                	sw	a7,16(sp)
   17848:	c672                	sw	t3,12(sp)
   1784a:	c442                	sw	a6,8(sp)
   1784c:	a4cfc0ef          	jal	13a98 <__sprint_r>
   17850:	b60519e3          	bnez	a0,173c2 <_vfiprintf_r+0x2f4>
   17854:	4e32                	lw	t3,12(sp)
   17856:	4726                	lw	a4,72(sp)
   17858:	4796                	lw	a5,68(sp)
   1785a:	41cd8db3          	sub	s11,s11,t3
   1785e:	48c2                	lw	a7,16(sp)
   17860:	4822                	lw	a6,8(sp)
   17862:	8462                	mv	s0,s8
   17864:	a3b057e3          	blez	s11,17292 <_vfiprintf_r+0x1c4>
   17868:	6f6d                	lui	t5,0x1b
   1786a:	110f0f13          	addi	t5,t5,272 # 1b110 <zeroes.0>
   1786e:	05ba5c63          	bge	s4,s11,178c6 <_vfiprintf_r+0x7f8>
   17872:	86a2                	mv	a3,s0
   17874:	431d                	li	t1,7
   17876:	846e                	mv	s0,s11
   17878:	c442                	sw	a6,8(sp)
   1787a:	c672                	sw	t3,12(sp)
   1787c:	c846                	sw	a7,16(sp)
   1787e:	8de6                	mv	s11,s9
   17880:	a021                	j	17888 <_vfiprintf_r+0x7ba>
   17882:	1441                	addi	s0,s0,-16
   17884:	028a5b63          	bge	s4,s0,178ba <_vfiprintf_r+0x7ec>
   17888:	0741                	addi	a4,a4,16
   1788a:	0785                	addi	a5,a5,1
   1788c:	0196a023          	sw	s9,0(a3)
   17890:	0146a223          	sw	s4,4(a3)
   17894:	c4ba                	sw	a4,72(sp)
   17896:	c2be                	sw	a5,68(sp)
   17898:	06a1                	addi	a3,a3,8
   1789a:	fef354e3          	bge	t1,a5,17882 <_vfiprintf_r+0x7b4>
   1789e:	0090                	addi	a2,sp,64
   178a0:	85d6                	mv	a1,s5
   178a2:	855e                	mv	a0,s7
   178a4:	9f4fc0ef          	jal	13a98 <__sprint_r>
   178a8:	b0051de3          	bnez	a0,173c2 <_vfiprintf_r+0x2f4>
   178ac:	1441                	addi	s0,s0,-16
   178ae:	4726                	lw	a4,72(sp)
   178b0:	4796                	lw	a5,68(sp)
   178b2:	86e2                	mv	a3,s8
   178b4:	431d                	li	t1,7
   178b6:	fc8a49e3          	blt	s4,s0,17888 <_vfiprintf_r+0x7ba>
   178ba:	4822                	lw	a6,8(sp)
   178bc:	4e32                	lw	t3,12(sp)
   178be:	48c2                	lw	a7,16(sp)
   178c0:	8f6e                	mv	t5,s11
   178c2:	8da2                	mv	s11,s0
   178c4:	8436                	mv	s0,a3
   178c6:	976e                	add	a4,a4,s11
   178c8:	0785                	addi	a5,a5,1
   178ca:	01e42023          	sw	t5,0(s0)
   178ce:	01b42223          	sw	s11,4(s0)
   178d2:	c4ba                	sw	a4,72(sp)
   178d4:	c2be                	sw	a5,68(sp)
   178d6:	461d                	li	a2,7
   178d8:	0421                	addi	s0,s0,8
   178da:	9af65ce3          	bge	a2,a5,17292 <_vfiprintf_r+0x1c4>
   178de:	0090                	addi	a2,sp,64
   178e0:	85d6                	mv	a1,s5
   178e2:	855e                	mv	a0,s7
   178e4:	c846                	sw	a7,16(sp)
   178e6:	c672                	sw	t3,12(sp)
   178e8:	c442                	sw	a6,8(sp)
   178ea:	9aefc0ef          	jal	13a98 <__sprint_r>
   178ee:	ac051ae3          	bnez	a0,173c2 <_vfiprintf_r+0x2f4>
   178f2:	4726                	lw	a4,72(sp)
   178f4:	4796                	lw	a5,68(sp)
   178f6:	48c2                	lw	a7,16(sp)
   178f8:	4e32                	lw	t3,12(sp)
   178fa:	4822                	lw	a6,8(sp)
   178fc:	8462                	mv	s0,s8
   178fe:	ba51                	j	17292 <_vfiprintf_r+0x1c4>
   17900:	0090                	addi	a2,sp,64
   17902:	85d6                	mv	a1,s5
   17904:	855e                	mv	a0,s7
   17906:	c646                	sw	a7,12(sp)
   17908:	c442                	sw	a6,8(sp)
   1790a:	98efc0ef          	jal	13a98 <__sprint_r>
   1790e:	aa051ae3          	bnez	a0,173c2 <_vfiprintf_r+0x2f4>
   17912:	4726                	lw	a4,72(sp)
   17914:	48b2                	lw	a7,12(sp)
   17916:	4822                	lw	a6,8(sp)
   17918:	8462                	mv	s0,s8
   1791a:	b279                	j	172a8 <_vfiprintf_r+0x1da>
   1791c:	4709                	li	a4,2
   1791e:	8832                	mv	a6,a2
   17920:	de0706e3          	beqz	a4,1770c <_vfiprintf_r+0x63e>
   17924:	4612                	lw	a2,4(sp)
   17926:	1984                	addi	s1,sp,240
   17928:	00f7f713          	andi	a4,a5,15
   1792c:	9732                	add	a4,a4,a2
   1792e:	00074683          	lbu	a3,0(a4)
   17932:	8391                	srli	a5,a5,0x4
   17934:	01c59713          	slli	a4,a1,0x1c
   17938:	8fd9                	or	a5,a5,a4
   1793a:	8191                	srli	a1,a1,0x4
   1793c:	fed48fa3          	sb	a3,-1(s1)
   17940:	00b7e733          	or	a4,a5,a1
   17944:	14fd                	addi	s1,s1,-1
   17946:	f36d                	bnez	a4,17928 <_vfiprintf_r+0x85a>
   17948:	199c                	addi	a5,sp,240
   1794a:	40978e33          	sub	t3,a5,s1
   1794e:	88ee                	mv	a7,s11
   17950:	bdcdd0e3          	bge	s11,t3,17510 <_vfiprintf_r+0x442>
   17954:	88f2                	mv	a7,t3
   17956:	be6d                	j	17510 <_vfiprintf_r+0x442>
   17958:	636d                	lui	t1,0x1b
   1795a:	4641                	li	a2,16
   1795c:	12030313          	addi	t1,t1,288 # 1b120 <blanks.1>
   17960:	07d65363          	bge	a2,t4,179c6 <_vfiprintf_r+0x8f8>
   17964:	c826                	sw	s1,16(sp)
   17966:	86a2                	mv	a3,s0
   17968:	4f41                	li	t5,16
   1796a:	439d                	li	t2,7
   1796c:	c416                	sw	t0,8(sp)
   1796e:	c67e                	sw	t6,12(sp)
   17970:	d042                	sw	a6,32(sp)
   17972:	d272                	sw	t3,36(sp)
   17974:	8476                	mv	s0,t4
   17976:	d446                	sw	a7,40(sp)
   17978:	849a                	mv	s1,t1
   1797a:	a021                	j	17982 <_vfiprintf_r+0x8b4>
   1797c:	1441                	addi	s0,s0,-16
   1797e:	028f5b63          	bge	t5,s0,179b4 <_vfiprintf_r+0x8e6>
   17982:	0741                	addi	a4,a4,16
   17984:	0785                	addi	a5,a5,1
   17986:	c284                	sw	s1,0(a3)
   17988:	01e6a223          	sw	t5,4(a3)
   1798c:	c4ba                	sw	a4,72(sp)
   1798e:	c2be                	sw	a5,68(sp)
   17990:	06a1                	addi	a3,a3,8
   17992:	fef3d5e3          	bge	t2,a5,1797c <_vfiprintf_r+0x8ae>
   17996:	0090                	addi	a2,sp,64
   17998:	85d6                	mv	a1,s5
   1799a:	855e                	mv	a0,s7
   1799c:	8fcfc0ef          	jal	13a98 <__sprint_r>
   179a0:	a20511e3          	bnez	a0,173c2 <_vfiprintf_r+0x2f4>
   179a4:	4f41                	li	t5,16
   179a6:	1441                	addi	s0,s0,-16
   179a8:	4726                	lw	a4,72(sp)
   179aa:	4796                	lw	a5,68(sp)
   179ac:	86e2                	mv	a3,s8
   179ae:	439d                	li	t2,7
   179b0:	fc8f49e3          	blt	t5,s0,17982 <_vfiprintf_r+0x8b4>
   179b4:	8326                	mv	t1,s1
   179b6:	42a2                	lw	t0,8(sp)
   179b8:	4fb2                	lw	t6,12(sp)
   179ba:	5802                	lw	a6,32(sp)
   179bc:	5e12                	lw	t3,36(sp)
   179be:	58a2                	lw	a7,40(sp)
   179c0:	44c2                	lw	s1,16(sp)
   179c2:	8ea2                	mv	t4,s0
   179c4:	8436                	mv	s0,a3
   179c6:	9776                	add	a4,a4,t4
   179c8:	0785                	addi	a5,a5,1
   179ca:	00642023          	sw	t1,0(s0)
   179ce:	01d42223          	sw	t4,4(s0)
   179d2:	c4ba                	sw	a4,72(sp)
   179d4:	c2be                	sw	a5,68(sp)
   179d6:	461d                	li	a2,7
   179d8:	0421                	addi	s0,s0,8
   179da:	86f656e3          	bge	a2,a5,17246 <_vfiprintf_r+0x178>
   179de:	0090                	addi	a2,sp,64
   179e0:	85d6                	mv	a1,s5
   179e2:	855e                	mv	a0,s7
   179e4:	d246                	sw	a7,36(sp)
   179e6:	d072                	sw	t3,32(sp)
   179e8:	c842                	sw	a6,16(sp)
   179ea:	c67e                	sw	t6,12(sp)
   179ec:	c416                	sw	t0,8(sp)
   179ee:	8aafc0ef          	jal	13a98 <__sprint_r>
   179f2:	9c0518e3          	bnez	a0,173c2 <_vfiprintf_r+0x2f4>
   179f6:	4726                	lw	a4,72(sp)
   179f8:	4796                	lw	a5,68(sp)
   179fa:	5892                	lw	a7,36(sp)
   179fc:	5e02                	lw	t3,32(sp)
   179fe:	4842                	lw	a6,16(sp)
   17a00:	4fb2                	lw	t6,12(sp)
   17a02:	42a2                	lw	t0,8(sp)
   17a04:	8462                	mv	s0,s8
   17a06:	841ff06f          	j	17246 <_vfiprintf_r+0x178>
   17a0a:	0090                	addi	a2,sp,64
   17a0c:	85d6                	mv	a1,s5
   17a0e:	855e                	mv	a0,s7
   17a10:	d046                	sw	a7,32(sp)
   17a12:	c872                	sw	t3,16(sp)
   17a14:	c642                	sw	a6,12(sp)
   17a16:	c47e                	sw	t6,8(sp)
   17a18:	880fc0ef          	jal	13a98 <__sprint_r>
   17a1c:	9a0513e3          	bnez	a0,173c2 <_vfiprintf_r+0x2f4>
   17a20:	4726                	lw	a4,72(sp)
   17a22:	4796                	lw	a5,68(sp)
   17a24:	5882                	lw	a7,32(sp)
   17a26:	4e42                	lw	t3,16(sp)
   17a28:	4832                	lw	a6,12(sp)
   17a2a:	4fa2                	lw	t6,8(sp)
   17a2c:	8462                	mv	s0,s8
   17a2e:	855ff06f          	j	17282 <_vfiprintf_r+0x1b4>
   17a32:	010e7713          	andi	a4,t3,16
   17a36:	000d2783          	lw	a5,0(s10)
   17a3a:	0d11                	addi	s10,s10,4
   17a3c:	e719                	bnez	a4,17a4a <_vfiprintf_r+0x97c>
   17a3e:	040e7713          	andi	a4,t3,64
   17a42:	1e070f63          	beqz	a4,17c40 <_vfiprintf_r+0xb72>
   17a46:	07c2                	slli	a5,a5,0x10
   17a48:	83c1                	srli	a5,a5,0x10
   17a4a:	4881                	li	a7,0
   17a4c:	b951                	j	176e0 <_vfiprintf_r+0x612>
   17a4e:	01077613          	andi	a2,a4,16
   17a52:	000d2783          	lw	a5,0(s10)
   17a56:	0d11                	addi	s10,s10,4
   17a58:	ee01                	bnez	a2,17a70 <_vfiprintf_r+0x9a2>
   17a5a:	04077613          	andi	a2,a4,64
   17a5e:	c609                	beqz	a2,17a68 <_vfiprintf_r+0x99a>
   17a60:	07c2                	slli	a5,a5,0x10
   17a62:	83c1                	srli	a5,a5,0x10
   17a64:	4581                	li	a1,0
   17a66:	bef5                	j	17662 <_vfiprintf_r+0x594>
   17a68:	20077613          	andi	a2,a4,512
   17a6c:	2a061163          	bnez	a2,17d0e <_vfiprintf_r+0xc40>
   17a70:	4581                	li	a1,0
   17a72:	bec5                	j	17662 <_vfiprintf_r+0x594>
   17a74:	4881                	li	a7,0
   17a76:	1984                	addi	s1,sp,240
   17a78:	bc61                	j	17510 <_vfiprintf_r+0x442>
   17a7a:	000d2783          	lw	a5,0(s10)
   17a7e:	41f95713          	srai	a4,s2,0x1f
   17a82:	0d11                	addi	s10,s10,4
   17a84:	0127a023          	sw	s2,0(a5)
   17a88:	c3d8                	sw	a4,4(a5)
   17a8a:	ef8ff06f          	j	17182 <_vfiprintf_r+0xb4>
   17a8e:	88f2                	mv	a7,t3
   17a90:	84aa                	mv	s1,a0
   17a92:	bcbd                	j	17510 <_vfiprintf_r+0x442>
   17a94:	5dfd                	li	s11,-1
   17a96:	89b6                	mv	s3,a3
   17a98:	f4cff06f          	j	171e4 <_vfiprintf_r+0x116>
   17a9c:	8e42                	mv	t3,a6
   17a9e:	b12d                	j	176c8 <_vfiprintf_r+0x5fa>
   17aa0:	8742                	mv	a4,a6
   17aa2:	b665                	j	1764a <_vfiprintf_r+0x57c>
   17aa4:	67ed                	lui	a5,0x1b
   17aa6:	8d478793          	addi	a5,a5,-1836 # 1a8d4 <__clzsi2+0xea>
   17aaa:	c23e                	sw	a5,4(sp)
   17aac:	02087793          	andi	a5,a6,32
   17ab0:	c3a9                	beqz	a5,17af2 <_vfiprintf_r+0xa24>
   17ab2:	0d1d                	addi	s10,s10,7
   17ab4:	ff8d7d13          	andi	s10,s10,-8
   17ab8:	000d2783          	lw	a5,0(s10)
   17abc:	004d2583          	lw	a1,4(s10)
   17ac0:	0d21                	addi	s10,s10,8
   17ac2:	00187713          	andi	a4,a6,1
   17ac6:	cf01                	beqz	a4,17ade <_vfiprintf_r+0xa10>
   17ac8:	00b7e733          	or	a4,a5,a1
   17acc:	cb09                	beqz	a4,17ade <_vfiprintf_r+0xa10>
   17ace:	03000713          	li	a4,48
   17ad2:	02e10e23          	sb	a4,60(sp)
   17ad6:	02c10ea3          	sb	a2,61(sp)
   17ada:	00286813          	ori	a6,a6,2
   17ade:	bff87813          	andi	a6,a6,-1025
   17ae2:	b941                	j	17772 <_vfiprintf_r+0x6a4>
   17ae4:	67ed                	lui	a5,0x1b
   17ae6:	8c078793          	addi	a5,a5,-1856 # 1a8c0 <__clzsi2+0xd6>
   17aea:	c23e                	sw	a5,4(sp)
   17aec:	02087793          	andi	a5,a6,32
   17af0:	f3e9                	bnez	a5,17ab2 <_vfiprintf_r+0x9e4>
   17af2:	01087713          	andi	a4,a6,16
   17af6:	000d2783          	lw	a5,0(s10)
   17afa:	0d11                	addi	s10,s10,4
   17afc:	e315                	bnez	a4,17b20 <_vfiprintf_r+0xa52>
   17afe:	04087713          	andi	a4,a6,64
   17b02:	cb19                	beqz	a4,17b18 <_vfiprintf_r+0xa4a>
   17b04:	07c2                	slli	a5,a5,0x10
   17b06:	83c1                	srli	a5,a5,0x10
   17b08:	4581                	li	a1,0
   17b0a:	bf65                	j	17ac2 <_vfiprintf_r+0x9f4>
   17b0c:	8526                	mv	a0,s1
   17b0e:	971f90ef          	jal	1147e <strlen>
   17b12:	4822                	lw	a6,8(sp)
   17b14:	8e2a                	mv	t3,a0
   17b16:	b435                	j	17542 <_vfiprintf_r+0x474>
   17b18:	20087713          	andi	a4,a6,512
   17b1c:	1c071763          	bnez	a4,17cea <_vfiprintf_r+0xc1c>
   17b20:	4581                	li	a1,0
   17b22:	b745                	j	17ac2 <_vfiprintf_r+0x9f4>
   17b24:	ccccdf37          	lui	t5,0xccccd
   17b28:	ccccdfb7          	lui	t6,0xccccd
   17b2c:	42d2                	lw	t0,20(sp)
   17b2e:	40087e13          	andi	t3,a6,1024
   17b32:	4581                	li	a1,0
   17b34:	1988                	addi	a0,sp,240
   17b36:	4315                	li	t1,5
   17b38:	ccdf0f13          	addi	t5,t5,-819 # cccccccd <__BSS_END__+0xcccb0041>
   17b3c:	cccf8f93          	addi	t6,t6,-820 # cccccccc <__BSS_END__+0xcccb0040>
   17b40:	0ff00e93          	li	t4,255
   17b44:	a081                	j	17b84 <_vfiprintf_r+0xab6>
   17b46:	00f4b733          	sltu	a4,s1,a5
   17b4a:	9726                	add	a4,a4,s1
   17b4c:	02677733          	remu	a4,a4,t1
   17b50:	40e78733          	sub	a4,a5,a4
   17b54:	00e7b633          	sltu	a2,a5,a4
   17b58:	40c88633          	sub	a2,a7,a2
   17b5c:	03f703b3          	mul	t2,a4,t6
   17b60:	03e60633          	mul	a2,a2,t5
   17b64:	03e73533          	mulhu	a0,a4,t5
   17b68:	961e                	add	a2,a2,t2
   17b6a:	03e70733          	mul	a4,a4,t5
   17b6e:	962a                	add	a2,a2,a0
   17b70:	01f61513          	slli	a0,a2,0x1f
   17b74:	8205                	srli	a2,a2,0x1
   17b76:	8305                	srli	a4,a4,0x1
   17b78:	8f49                	or	a4,a4,a0
   17b7a:	16088263          	beqz	a7,17cde <_vfiprintf_r+0xc10>
   17b7e:	87ba                	mv	a5,a4
   17b80:	88b2                	mv	a7,a2
   17b82:	8536                	mv	a0,a3
   17b84:	011784b3          	add	s1,a5,a7
   17b88:	00f4b733          	sltu	a4,s1,a5
   17b8c:	9726                	add	a4,a4,s1
   17b8e:	02677733          	remu	a4,a4,t1
   17b92:	fff50693          	addi	a3,a0,-1
   17b96:	0585                	addi	a1,a1,1
   17b98:	40e78733          	sub	a4,a5,a4
   17b9c:	00e7b3b3          	sltu	t2,a5,a4
   17ba0:	407883b3          	sub	t2,a7,t2
   17ba4:	03e73633          	mulhu	a2,a4,t5
   17ba8:	03e383b3          	mul	t2,t2,t5
   17bac:	03e70733          	mul	a4,a4,t5
   17bb0:	93b2                	add	t2,t2,a2
   17bb2:	03fe                	slli	t2,t2,0x1f
   17bb4:	00175613          	srli	a2,a4,0x1
   17bb8:	00c3e633          	or	a2,t2,a2
   17bbc:	00261713          	slli	a4,a2,0x2
   17bc0:	9732                	add	a4,a4,a2
   17bc2:	0706                	slli	a4,a4,0x1
   17bc4:	40e78733          	sub	a4,a5,a4
   17bc8:	03070713          	addi	a4,a4,48
   17bcc:	fee50fa3          	sb	a4,-1(a0)
   17bd0:	f60e0be3          	beqz	t3,17b46 <_vfiprintf_r+0xa78>
   17bd4:	0002c703          	lbu	a4,0(t0)
   17bd8:	f6b717e3          	bne	a4,a1,17b46 <_vfiprintf_r+0xa78>
   17bdc:	f7d585e3          	beq	a1,t4,17b46 <_vfiprintf_r+0xa78>
   17be0:	06089b63          	bnez	a7,17c56 <_vfiprintf_r+0xb88>
   17be4:	4725                	li	a4,9
   17be6:	06f76863          	bltu	a4,a5,17c56 <_vfiprintf_r+0xb88>
   17bea:	84b6                	mv	s1,a3
   17bec:	ca16                	sw	t0,20(sp)
   17bee:	bba9                	j	17948 <_vfiprintf_r+0x87a>
   17bf0:	883a                	mv	a6,a4
   17bf2:	4701                	li	a4,0
   17bf4:	b0070ce3          	beqz	a4,1770c <_vfiprintf_r+0x63e>
   17bf8:	b335                	j	17924 <_vfiprintf_r+0x856>
   17bfa:	be6f90ef          	jal	10fe0 <__sinit>
   17bfe:	cfaff06f          	j	170f8 <_vfiprintf_r+0x2a>
   17c02:	0019c783          	lbu	a5,1(s3)
   17c06:	20086813          	ori	a6,a6,512
   17c0a:	0985                	addi	s3,s3,1
   17c0c:	dd4ff06f          	j	171e0 <_vfiprintf_r+0x112>
   17c10:	0019c783          	lbu	a5,1(s3)
   17c14:	02086813          	ori	a6,a6,32
   17c18:	0985                	addi	s3,s3,1
   17c1a:	dc6ff06f          	j	171e0 <_vfiprintf_r+0x112>
   17c1e:	000d2783          	lw	a5,0(s10)
   17c22:	0d11                	addi	s10,s10,4
   17c24:	0127a023          	sw	s2,0(a5)
   17c28:	d5aff06f          	j	17182 <_vfiprintf_r+0xb4>
   17c2c:	4799                	li	a5,6
   17c2e:	8e6e                	mv	t3,s11
   17c30:	0bb7eb63          	bltu	a5,s11,17ce6 <_vfiprintf_r+0xc18>
   17c34:	64ed                	lui	s1,0x1b
   17c36:	88f2                	mv	a7,t3
   17c38:	8e848493          	addi	s1,s1,-1816 # 1a8e8 <__clzsi2+0xfe>
   17c3c:	df2ff06f          	j	1722e <_vfiprintf_r+0x160>
   17c40:	200e7713          	andi	a4,t3,512
   17c44:	e00703e3          	beqz	a4,17a4a <_vfiprintf_r+0x97c>
   17c48:	0ff7f793          	zext.b	a5,a5
   17c4c:	4881                	li	a7,0
   17c4e:	bc49                	j	176e0 <_vfiprintf_r+0x612>
   17c50:	4781                	li	a5,0
   17c52:	4581                	li	a1,0
   17c54:	b9c1                	j	17924 <_vfiprintf_r+0x856>
   17c56:	d43e                	sw	a5,40(sp)
   17c58:	47e2                	lw	a5,24(sp)
   17c5a:	45f2                	lw	a1,28(sp)
   17c5c:	d646                	sw	a7,44(sp)
   17c5e:	8e9d                	sub	a3,a3,a5
   17c60:	863e                	mv	a2,a5
   17c62:	8536                	mv	a0,a3
   17c64:	d27e                	sw	t6,36(sp)
   17c66:	d07a                	sw	t5,32(sp)
   17c68:	ca72                	sw	t3,20(sp)
   17c6a:	c842                	sw	a6,16(sp)
   17c6c:	c616                	sw	t0,12(sp)
   17c6e:	c436                	sw	a3,8(sp)
   17c70:	dccfc0ef          	jal	1423c <strncpy>
   17c74:	57a2                	lw	a5,40(sp)
   17c76:	4615                	li	a2,5
   17c78:	42b2                	lw	t0,12(sp)
   17c7a:	00f4b733          	sltu	a4,s1,a5
   17c7e:	9726                	add	a4,a4,s1
   17c80:	02c77733          	remu	a4,a4,a2
   17c84:	0012c603          	lbu	a2,1(t0)
   17c88:	58b2                	lw	a7,44(sp)
   17c8a:	ccccd537          	lui	a0,0xccccd
   17c8e:	00c03633          	snez	a2,a2
   17c92:	ccccd3b7          	lui	t2,0xccccd
   17c96:	92b2                	add	t0,t0,a2
   17c98:	ccd50513          	addi	a0,a0,-819 # cccccccd <__BSS_END__+0xcccb0041>
   17c9c:	ccc38393          	addi	t2,t2,-820 # cccccccc <__BSS_END__+0xcccb0040>
   17ca0:	46a2                	lw	a3,8(sp)
   17ca2:	4842                	lw	a6,16(sp)
   17ca4:	4e52                	lw	t3,20(sp)
   17ca6:	5f02                	lw	t5,32(sp)
   17ca8:	5f92                	lw	t6,36(sp)
   17caa:	4581                	li	a1,0
   17cac:	4315                	li	t1,5
   17cae:	0ff00e93          	li	t4,255
   17cb2:	40e78733          	sub	a4,a5,a4
   17cb6:	00e7b633          	sltu	a2,a5,a4
   17cba:	40c88633          	sub	a2,a7,a2
   17cbe:	027703b3          	mul	t2,a4,t2
   17cc2:	02a60633          	mul	a2,a2,a0
   17cc6:	02a738b3          	mulhu	a7,a4,a0
   17cca:	961e                	add	a2,a2,t2
   17ccc:	02a707b3          	mul	a5,a4,a0
   17cd0:	9646                	add	a2,a2,a7
   17cd2:	01f61713          	slli	a4,a2,0x1f
   17cd6:	8205                	srli	a2,a2,0x1
   17cd8:	8385                	srli	a5,a5,0x1
   17cda:	8f5d                	or	a4,a4,a5
   17cdc:	b54d                	j	17b7e <_vfiprintf_r+0xab0>
   17cde:	4525                	li	a0,9
   17ce0:	e8f56fe3          	bltu	a0,a5,17b7e <_vfiprintf_r+0xab0>
   17ce4:	b719                	j	17bea <_vfiprintf_r+0xb1c>
   17ce6:	4e19                	li	t3,6
   17ce8:	b7b1                	j	17c34 <_vfiprintf_r+0xb66>
   17cea:	0ff7f793          	zext.b	a5,a5
   17cee:	4581                	li	a1,0
   17cf0:	bbc9                	j	17ac2 <_vfiprintf_r+0x9f4>
   17cf2:	07e2                	slli	a5,a5,0x18
   17cf4:	87e1                	srai	a5,a5,0x18
   17cf6:	41f7d893          	srai	a7,a5,0x1f
   17cfa:	8746                	mv	a4,a7
   17cfc:	e20ff06f          	j	1731c <_vfiprintf_r+0x24e>
   17d00:	000d2783          	lw	a5,0(s10)
   17d04:	0d11                	addi	s10,s10,4
   17d06:	01279023          	sh	s2,0(a5)
   17d0a:	c78ff06f          	j	17182 <_vfiprintf_r+0xb4>
   17d0e:	0ff7f793          	zext.b	a5,a5
   17d12:	4581                	li	a1,0
   17d14:	b2b9                	j	17662 <_vfiprintf_r+0x594>
   17d16:	03000793          	li	a5,48
   17d1a:	fe4ff06f          	j	174fe <_vfiprintf_r+0x430>
   17d1e:	5d7d                	li	s10,-1
   17d20:	ecaff06f          	j	173ea <_vfiprintf_r+0x31c>
   17d24:	000d2d83          	lw	s11,0(s10)
   17d28:	0d11                	addi	s10,s10,4
   17d2a:	000dd363          	bgez	s11,17d30 <_vfiprintf_r+0xc62>
   17d2e:	5dfd                	li	s11,-1
   17d30:	0019c783          	lbu	a5,1(s3)
   17d34:	89b6                	mv	s3,a3
   17d36:	caaff06f          	j	171e0 <_vfiprintf_r+0x112>

00017d3a <vfiprintf>:
   17d3a:	87aa                	mv	a5,a0
   17d3c:	f141a503          	lw	a0,-236(gp) # 1c954 <_impure_ptr>
   17d40:	86b2                	mv	a3,a2
   17d42:	862e                	mv	a2,a1
   17d44:	85be                	mv	a1,a5
   17d46:	b88ff06f          	j	170ce <_vfiprintf_r>

00017d4a <__sbprintf>:
   17d4a:	b8010113          	addi	sp,sp,-1152
   17d4e:	00c59783          	lh	a5,12(a1)
   17d52:	00e5d703          	lhu	a4,14(a1)
   17d56:	46812c23          	sw	s0,1144(sp)
   17d5a:	842e                	mv	s0,a1
   17d5c:	65c1                	lui	a1,0x10
   17d5e:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   17d60:	06442e03          	lw	t3,100(s0)
   17d64:	01c42303          	lw	t1,28(s0)
   17d68:	02442883          	lw	a7,36(s0)
   17d6c:	0742                	slli	a4,a4,0x10
   17d6e:	8fed                	and	a5,a5,a1
   17d70:	8fd9                	or	a5,a5,a4
   17d72:	40000813          	li	a6,1024
   17d76:	ca3e                	sw	a5,20(sp)
   17d78:	002c                	addi	a1,sp,8
   17d7a:	189c                	addi	a5,sp,112
   17d7c:	46912a23          	sw	s1,1140(sp)
   17d80:	47212823          	sw	s2,1136(sp)
   17d84:	46112e23          	sw	ra,1148(sp)
   17d88:	892a                	mv	s2,a0
   17d8a:	d6f2                	sw	t3,108(sp)
   17d8c:	d21a                	sw	t1,36(sp)
   17d8e:	d646                	sw	a7,44(sp)
   17d90:	c43e                	sw	a5,8(sp)
   17d92:	cc3e                	sw	a5,24(sp)
   17d94:	c842                	sw	a6,16(sp)
   17d96:	ce42                	sw	a6,28(sp)
   17d98:	d002                	sw	zero,32(sp)
   17d9a:	b34ff0ef          	jal	170ce <_vfiprintf_r>
   17d9e:	84aa                	mv	s1,a0
   17da0:	02055963          	bgez	a0,17dd2 <__sbprintf+0x88>
   17da4:	01415783          	lhu	a5,20(sp)
   17da8:	0407f793          	andi	a5,a5,64
   17dac:	c799                	beqz	a5,17dba <__sbprintf+0x70>
   17dae:	00c45783          	lhu	a5,12(s0)
   17db2:	0407e793          	ori	a5,a5,64
   17db6:	00f41623          	sh	a5,12(s0)
   17dba:	47c12083          	lw	ra,1148(sp)
   17dbe:	47812403          	lw	s0,1144(sp)
   17dc2:	47012903          	lw	s2,1136(sp)
   17dc6:	8526                	mv	a0,s1
   17dc8:	47412483          	lw	s1,1140(sp)
   17dcc:	48010113          	addi	sp,sp,1152
   17dd0:	8082                	ret
   17dd2:	002c                	addi	a1,sp,8
   17dd4:	854a                	mv	a0,s2
   17dd6:	f31fb0ef          	jal	13d06 <_fflush_r>
   17dda:	d569                	beqz	a0,17da4 <__sbprintf+0x5a>
   17ddc:	54fd                	li	s1,-1
   17dde:	b7d9                	j	17da4 <__sbprintf+0x5a>

00017de0 <__errno>:
   17de0:	f141a503          	lw	a0,-236(gp) # 1c954 <_impure_ptr>
   17de4:	8082                	ret

00017de6 <abort>:
   17de6:	1141                	addi	sp,sp,-16
   17de8:	4519                	li	a0,6
   17dea:	c606                	sw	ra,12(sp)
   17dec:	2a59                	jal	17f82 <raise>
   17dee:	4505                	li	a0,1
   17df0:	2e61                	jal	18188 <_exit>

00017df2 <_init_signal_r>:
   17df2:	11852783          	lw	a5,280(a0)
   17df6:	c399                	beqz	a5,17dfc <_init_signal_r+0xa>
   17df8:	4501                	li	a0,0
   17dfa:	8082                	ret
   17dfc:	1141                	addi	sp,sp,-16
   17dfe:	08000593          	li	a1,128
   17e02:	c422                	sw	s0,8(sp)
   17e04:	c606                	sw	ra,12(sp)
   17e06:	842a                	mv	s0,a0
   17e08:	aa3f90ef          	jal	118aa <_malloc_r>
   17e0c:	10a42c23          	sw	a0,280(s0)
   17e10:	cd09                	beqz	a0,17e2a <_init_signal_r+0x38>
   17e12:	08050793          	addi	a5,a0,128
   17e16:	00052023          	sw	zero,0(a0)
   17e1a:	0511                	addi	a0,a0,4
   17e1c:	fef51de3          	bne	a0,a5,17e16 <_init_signal_r+0x24>
   17e20:	4501                	li	a0,0
   17e22:	40b2                	lw	ra,12(sp)
   17e24:	4422                	lw	s0,8(sp)
   17e26:	0141                	addi	sp,sp,16
   17e28:	8082                	ret
   17e2a:	557d                	li	a0,-1
   17e2c:	bfdd                	j	17e22 <_init_signal_r+0x30>

00017e2e <_signal_r>:
   17e2e:	1101                	addi	sp,sp,-32
   17e30:	ca26                	sw	s1,20(sp)
   17e32:	ce06                	sw	ra,28(sp)
   17e34:	47fd                	li	a5,31
   17e36:	84aa                	mv	s1,a0
   17e38:	02b7e063          	bltu	a5,a1,17e58 <_signal_r+0x2a>
   17e3c:	11852783          	lw	a5,280(a0)
   17e40:	cc22                	sw	s0,24(sp)
   17e42:	842e                	mv	s0,a1
   17e44:	cf91                	beqz	a5,17e60 <_signal_r+0x32>
   17e46:	040a                	slli	s0,s0,0x2
   17e48:	97a2                	add	a5,a5,s0
   17e4a:	4462                	lw	s0,24(sp)
   17e4c:	4388                	lw	a0,0(a5)
   17e4e:	c390                	sw	a2,0(a5)
   17e50:	40f2                	lw	ra,28(sp)
   17e52:	44d2                	lw	s1,20(sp)
   17e54:	6105                	addi	sp,sp,32
   17e56:	8082                	ret
   17e58:	47d9                	li	a5,22
   17e5a:	c11c                	sw	a5,0(a0)
   17e5c:	557d                	li	a0,-1
   17e5e:	bfcd                	j	17e50 <_signal_r+0x22>
   17e60:	08000593          	li	a1,128
   17e64:	c632                	sw	a2,12(sp)
   17e66:	a45f90ef          	jal	118aa <_malloc_r>
   17e6a:	10a4ac23          	sw	a0,280(s1)
   17e6e:	4632                	lw	a2,12(sp)
   17e70:	87aa                	mv	a5,a0
   17e72:	872a                	mv	a4,a0
   17e74:	08050693          	addi	a3,a0,128
   17e78:	c519                	beqz	a0,17e86 <_signal_r+0x58>
   17e7a:	00072023          	sw	zero,0(a4)
   17e7e:	0711                	addi	a4,a4,4
   17e80:	fed71de3          	bne	a4,a3,17e7a <_signal_r+0x4c>
   17e84:	b7c9                	j	17e46 <_signal_r+0x18>
   17e86:	4462                	lw	s0,24(sp)
   17e88:	557d                	li	a0,-1
   17e8a:	b7d9                	j	17e50 <_signal_r+0x22>

00017e8c <_raise_r>:
   17e8c:	1141                	addi	sp,sp,-16
   17e8e:	c226                	sw	s1,4(sp)
   17e90:	c606                	sw	ra,12(sp)
   17e92:	47fd                	li	a5,31
   17e94:	84aa                	mv	s1,a0
   17e96:	04b7ee63          	bltu	a5,a1,17ef2 <_raise_r+0x66>
   17e9a:	11852783          	lw	a5,280(a0)
   17e9e:	c422                	sw	s0,8(sp)
   17ea0:	842e                	mv	s0,a1
   17ea2:	c795                	beqz	a5,17ece <_raise_r+0x42>
   17ea4:	00259713          	slli	a4,a1,0x2
   17ea8:	97ba                	add	a5,a5,a4
   17eaa:	4398                	lw	a4,0(a5)
   17eac:	c30d                	beqz	a4,17ece <_raise_r+0x42>
   17eae:	4685                	li	a3,1
   17eb0:	00d70963          	beq	a4,a3,17ec2 <_raise_r+0x36>
   17eb4:	56fd                	li	a3,-1
   17eb6:	02d70663          	beq	a4,a3,17ee2 <_raise_r+0x56>
   17eba:	0007a023          	sw	zero,0(a5)
   17ebe:	852e                	mv	a0,a1
   17ec0:	9702                	jalr	a4
   17ec2:	4422                	lw	s0,8(sp)
   17ec4:	4501                	li	a0,0
   17ec6:	40b2                	lw	ra,12(sp)
   17ec8:	4492                	lw	s1,4(sp)
   17eca:	0141                	addi	sp,sp,16
   17ecc:	8082                	ret
   17ece:	8526                	mv	a0,s1
   17ed0:	2469                	jal	1815a <_getpid_r>
   17ed2:	8622                	mv	a2,s0
   17ed4:	4422                	lw	s0,8(sp)
   17ed6:	40b2                	lw	ra,12(sp)
   17ed8:	85aa                	mv	a1,a0
   17eda:	8526                	mv	a0,s1
   17edc:	4492                	lw	s1,4(sp)
   17ede:	0141                	addi	sp,sp,16
   17ee0:	a489                	j	18122 <_kill_r>
   17ee2:	4422                	lw	s0,8(sp)
   17ee4:	40b2                	lw	ra,12(sp)
   17ee6:	47d9                	li	a5,22
   17ee8:	c11c                	sw	a5,0(a0)
   17eea:	4492                	lw	s1,4(sp)
   17eec:	4505                	li	a0,1
   17eee:	0141                	addi	sp,sp,16
   17ef0:	8082                	ret
   17ef2:	47d9                	li	a5,22
   17ef4:	c11c                	sw	a5,0(a0)
   17ef6:	557d                	li	a0,-1
   17ef8:	b7f9                	j	17ec6 <_raise_r+0x3a>

00017efa <__sigtramp_r>:
   17efa:	47fd                	li	a5,31
   17efc:	08b7e163          	bltu	a5,a1,17f7e <__sigtramp_r+0x84>
   17f00:	11852783          	lw	a5,280(a0)
   17f04:	1141                	addi	sp,sp,-16
   17f06:	c422                	sw	s0,8(sp)
   17f08:	c226                	sw	s1,4(sp)
   17f0a:	c606                	sw	ra,12(sp)
   17f0c:	842e                	mv	s0,a1
   17f0e:	84aa                	mv	s1,a0
   17f10:	c7a1                	beqz	a5,17f58 <__sigtramp_r+0x5e>
   17f12:	00241713          	slli	a4,s0,0x2
   17f16:	97ba                	add	a5,a5,a4
   17f18:	4398                	lw	a4,0(a5)
   17f1a:	c30d                	beqz	a4,17f3c <__sigtramp_r+0x42>
   17f1c:	56fd                	li	a3,-1
   17f1e:	02d70b63          	beq	a4,a3,17f54 <__sigtramp_r+0x5a>
   17f22:	4685                	li	a3,1
   17f24:	02d70263          	beq	a4,a3,17f48 <__sigtramp_r+0x4e>
   17f28:	8522                	mv	a0,s0
   17f2a:	0007a023          	sw	zero,0(a5)
   17f2e:	9702                	jalr	a4
   17f30:	4501                	li	a0,0
   17f32:	40b2                	lw	ra,12(sp)
   17f34:	4422                	lw	s0,8(sp)
   17f36:	4492                	lw	s1,4(sp)
   17f38:	0141                	addi	sp,sp,16
   17f3a:	8082                	ret
   17f3c:	40b2                	lw	ra,12(sp)
   17f3e:	4422                	lw	s0,8(sp)
   17f40:	4492                	lw	s1,4(sp)
   17f42:	4505                	li	a0,1
   17f44:	0141                	addi	sp,sp,16
   17f46:	8082                	ret
   17f48:	40b2                	lw	ra,12(sp)
   17f4a:	4422                	lw	s0,8(sp)
   17f4c:	4492                	lw	s1,4(sp)
   17f4e:	450d                	li	a0,3
   17f50:	0141                	addi	sp,sp,16
   17f52:	8082                	ret
   17f54:	4509                	li	a0,2
   17f56:	bff1                	j	17f32 <__sigtramp_r+0x38>
   17f58:	08000593          	li	a1,128
   17f5c:	94ff90ef          	jal	118aa <_malloc_r>
   17f60:	10a4ac23          	sw	a0,280(s1)
   17f64:	87aa                	mv	a5,a0
   17f66:	c911                	beqz	a0,17f7a <__sigtramp_r+0x80>
   17f68:	872a                	mv	a4,a0
   17f6a:	08050693          	addi	a3,a0,128
   17f6e:	00072023          	sw	zero,0(a4)
   17f72:	0711                	addi	a4,a4,4
   17f74:	fed71de3          	bne	a4,a3,17f6e <__sigtramp_r+0x74>
   17f78:	bf69                	j	17f12 <__sigtramp_r+0x18>
   17f7a:	557d                	li	a0,-1
   17f7c:	bf5d                	j	17f32 <__sigtramp_r+0x38>
   17f7e:	557d                	li	a0,-1
   17f80:	8082                	ret

00017f82 <raise>:
   17f82:	1141                	addi	sp,sp,-16
   17f84:	c226                	sw	s1,4(sp)
   17f86:	c606                	sw	ra,12(sp)
   17f88:	47fd                	li	a5,31
   17f8a:	f141a483          	lw	s1,-236(gp) # 1c954 <_impure_ptr>
   17f8e:	04a7ed63          	bltu	a5,a0,17fe8 <raise+0x66>
   17f92:	1184a783          	lw	a5,280(s1)
   17f96:	c422                	sw	s0,8(sp)
   17f98:	842a                	mv	s0,a0
   17f9a:	c78d                	beqz	a5,17fc4 <raise+0x42>
   17f9c:	00251713          	slli	a4,a0,0x2
   17fa0:	97ba                	add	a5,a5,a4
   17fa2:	4398                	lw	a4,0(a5)
   17fa4:	c305                	beqz	a4,17fc4 <raise+0x42>
   17fa6:	4685                	li	a3,1
   17fa8:	00d70863          	beq	a4,a3,17fb8 <raise+0x36>
   17fac:	56fd                	li	a3,-1
   17fae:	02d70563          	beq	a4,a3,17fd8 <raise+0x56>
   17fb2:	0007a023          	sw	zero,0(a5)
   17fb6:	9702                	jalr	a4
   17fb8:	4422                	lw	s0,8(sp)
   17fba:	4501                	li	a0,0
   17fbc:	40b2                	lw	ra,12(sp)
   17fbe:	4492                	lw	s1,4(sp)
   17fc0:	0141                	addi	sp,sp,16
   17fc2:	8082                	ret
   17fc4:	8526                	mv	a0,s1
   17fc6:	2a51                	jal	1815a <_getpid_r>
   17fc8:	8622                	mv	a2,s0
   17fca:	4422                	lw	s0,8(sp)
   17fcc:	40b2                	lw	ra,12(sp)
   17fce:	85aa                	mv	a1,a0
   17fd0:	8526                	mv	a0,s1
   17fd2:	4492                	lw	s1,4(sp)
   17fd4:	0141                	addi	sp,sp,16
   17fd6:	a2b1                	j	18122 <_kill_r>
   17fd8:	4422                	lw	s0,8(sp)
   17fda:	40b2                	lw	ra,12(sp)
   17fdc:	47d9                	li	a5,22
   17fde:	c09c                	sw	a5,0(s1)
   17fe0:	4505                	li	a0,1
   17fe2:	4492                	lw	s1,4(sp)
   17fe4:	0141                	addi	sp,sp,16
   17fe6:	8082                	ret
   17fe8:	47d9                	li	a5,22
   17fea:	c09c                	sw	a5,0(s1)
   17fec:	557d                	li	a0,-1
   17fee:	b7f9                	j	17fbc <raise+0x3a>

00017ff0 <signal>:
   17ff0:	1141                	addi	sp,sp,-16
   17ff2:	c04a                	sw	s2,0(sp)
   17ff4:	c606                	sw	ra,12(sp)
   17ff6:	47fd                	li	a5,31
   17ff8:	f141a903          	lw	s2,-236(gp) # 1c954 <_impure_ptr>
   17ffc:	02a7e463          	bltu	a5,a0,18024 <signal+0x34>
   18000:	c422                	sw	s0,8(sp)
   18002:	842a                	mv	s0,a0
   18004:	11892503          	lw	a0,280(s2)
   18008:	c226                	sw	s1,4(sp)
   1800a:	84ae                	mv	s1,a1
   1800c:	c10d                	beqz	a0,1802e <signal+0x3e>
   1800e:	040a                	slli	s0,s0,0x2
   18010:	008507b3          	add	a5,a0,s0
   18014:	4388                	lw	a0,0(a5)
   18016:	4422                	lw	s0,8(sp)
   18018:	c384                	sw	s1,0(a5)
   1801a:	4492                	lw	s1,4(sp)
   1801c:	40b2                	lw	ra,12(sp)
   1801e:	4902                	lw	s2,0(sp)
   18020:	0141                	addi	sp,sp,16
   18022:	8082                	ret
   18024:	47d9                	li	a5,22
   18026:	00f92023          	sw	a5,0(s2)
   1802a:	557d                	li	a0,-1
   1802c:	bfc5                	j	1801c <signal+0x2c>
   1802e:	08000593          	li	a1,128
   18032:	854a                	mv	a0,s2
   18034:	877f90ef          	jal	118aa <_malloc_r>
   18038:	10a92c23          	sw	a0,280(s2)
   1803c:	87aa                	mv	a5,a0
   1803e:	08050713          	addi	a4,a0,128
   18042:	c519                	beqz	a0,18050 <signal+0x60>
   18044:	0007a023          	sw	zero,0(a5)
   18048:	0791                	addi	a5,a5,4
   1804a:	fef71de3          	bne	a4,a5,18044 <signal+0x54>
   1804e:	b7c1                	j	1800e <signal+0x1e>
   18050:	4422                	lw	s0,8(sp)
   18052:	4492                	lw	s1,4(sp)
   18054:	557d                	li	a0,-1
   18056:	b7d9                	j	1801c <signal+0x2c>

00018058 <_init_signal>:
   18058:	1141                	addi	sp,sp,-16
   1805a:	c422                	sw	s0,8(sp)
   1805c:	f141a403          	lw	s0,-236(gp) # 1c954 <_impure_ptr>
   18060:	c606                	sw	ra,12(sp)
   18062:	11842783          	lw	a5,280(s0)
   18066:	c791                	beqz	a5,18072 <_init_signal+0x1a>
   18068:	4501                	li	a0,0
   1806a:	40b2                	lw	ra,12(sp)
   1806c:	4422                	lw	s0,8(sp)
   1806e:	0141                	addi	sp,sp,16
   18070:	8082                	ret
   18072:	08000593          	li	a1,128
   18076:	8522                	mv	a0,s0
   18078:	833f90ef          	jal	118aa <_malloc_r>
   1807c:	10a42c23          	sw	a0,280(s0)
   18080:	c909                	beqz	a0,18092 <_init_signal+0x3a>
   18082:	08050793          	addi	a5,a0,128
   18086:	00052023          	sw	zero,0(a0)
   1808a:	0511                	addi	a0,a0,4
   1808c:	fef51de3          	bne	a0,a5,18086 <_init_signal+0x2e>
   18090:	bfe1                	j	18068 <_init_signal+0x10>
   18092:	557d                	li	a0,-1
   18094:	bfd9                	j	1806a <_init_signal+0x12>

00018096 <__sigtramp>:
   18096:	1141                	addi	sp,sp,-16
   18098:	c226                	sw	s1,4(sp)
   1809a:	c606                	sw	ra,12(sp)
   1809c:	47fd                	li	a5,31
   1809e:	f141a483          	lw	s1,-236(gp) # 1c954 <_impure_ptr>
   180a2:	06a7ee63          	bltu	a5,a0,1811e <__sigtramp+0x88>
   180a6:	1184a783          	lw	a5,280(s1)
   180aa:	c422                	sw	s0,8(sp)
   180ac:	842a                	mv	s0,a0
   180ae:	c7a9                	beqz	a5,180f8 <__sigtramp+0x62>
   180b0:	00241713          	slli	a4,s0,0x2
   180b4:	97ba                	add	a5,a5,a4
   180b6:	4398                	lw	a4,0(a5)
   180b8:	c30d                	beqz	a4,180da <__sigtramp+0x44>
   180ba:	56fd                	li	a3,-1
   180bc:	02d70b63          	beq	a4,a3,180f2 <__sigtramp+0x5c>
   180c0:	4685                	li	a3,1
   180c2:	02d70263          	beq	a4,a3,180e6 <__sigtramp+0x50>
   180c6:	8522                	mv	a0,s0
   180c8:	0007a023          	sw	zero,0(a5)
   180cc:	9702                	jalr	a4
   180ce:	4422                	lw	s0,8(sp)
   180d0:	4501                	li	a0,0
   180d2:	40b2                	lw	ra,12(sp)
   180d4:	4492                	lw	s1,4(sp)
   180d6:	0141                	addi	sp,sp,16
   180d8:	8082                	ret
   180da:	4422                	lw	s0,8(sp)
   180dc:	40b2                	lw	ra,12(sp)
   180de:	4492                	lw	s1,4(sp)
   180e0:	4505                	li	a0,1
   180e2:	0141                	addi	sp,sp,16
   180e4:	8082                	ret
   180e6:	4422                	lw	s0,8(sp)
   180e8:	40b2                	lw	ra,12(sp)
   180ea:	4492                	lw	s1,4(sp)
   180ec:	450d                	li	a0,3
   180ee:	0141                	addi	sp,sp,16
   180f0:	8082                	ret
   180f2:	4422                	lw	s0,8(sp)
   180f4:	4509                	li	a0,2
   180f6:	bff1                	j	180d2 <__sigtramp+0x3c>
   180f8:	08000593          	li	a1,128
   180fc:	8526                	mv	a0,s1
   180fe:	facf90ef          	jal	118aa <_malloc_r>
   18102:	10a4ac23          	sw	a0,280(s1)
   18106:	87aa                	mv	a5,a0
   18108:	c911                	beqz	a0,1811c <__sigtramp+0x86>
   1810a:	872a                	mv	a4,a0
   1810c:	08050693          	addi	a3,a0,128
   18110:	00072023          	sw	zero,0(a4)
   18114:	0711                	addi	a4,a4,4
   18116:	fee69de3          	bne	a3,a4,18110 <__sigtramp+0x7a>
   1811a:	bf59                	j	180b0 <__sigtramp+0x1a>
   1811c:	4422                	lw	s0,8(sp)
   1811e:	557d                	li	a0,-1
   18120:	bf4d                	j	180d2 <__sigtramp+0x3c>

00018122 <_kill_r>:
   18122:	1141                	addi	sp,sp,-16
   18124:	872e                	mv	a4,a1
   18126:	c422                	sw	s0,8(sp)
   18128:	c226                	sw	s1,4(sp)
   1812a:	842a                	mv	s0,a0
   1812c:	85b2                	mv	a1,a2
   1812e:	853a                	mv	a0,a4
   18130:	c606                	sw	ra,12(sp)
   18132:	f201a223          	sw	zero,-220(gp) # 1c964 <errno>
   18136:	28d9                	jal	1820c <_kill>
   18138:	57fd                	li	a5,-1
   1813a:	00f50763          	beq	a0,a5,18148 <_kill_r+0x26>
   1813e:	40b2                	lw	ra,12(sp)
   18140:	4422                	lw	s0,8(sp)
   18142:	4492                	lw	s1,4(sp)
   18144:	0141                	addi	sp,sp,16
   18146:	8082                	ret
   18148:	f241a783          	lw	a5,-220(gp) # 1c964 <errno>
   1814c:	dbed                	beqz	a5,1813e <_kill_r+0x1c>
   1814e:	40b2                	lw	ra,12(sp)
   18150:	c01c                	sw	a5,0(s0)
   18152:	4422                	lw	s0,8(sp)
   18154:	4492                	lw	s1,4(sp)
   18156:	0141                	addi	sp,sp,16
   18158:	8082                	ret

0001815a <_getpid_r>:
   1815a:	a069                	j	181e4 <_getpid>

0001815c <_close>:
   1815c:	1141                	addi	sp,sp,-16
   1815e:	c606                	sw	ra,12(sp)
   18160:	c422                	sw	s0,8(sp)
   18162:	03900893          	li	a7,57
   18166:	00000073          	ecall
   1816a:	842a                	mv	s0,a0
   1816c:	00054763          	bltz	a0,1817a <_close+0x1e>
   18170:	40b2                	lw	ra,12(sp)
   18172:	8522                	mv	a0,s0
   18174:	4422                	lw	s0,8(sp)
   18176:	0141                	addi	sp,sp,16
   18178:	8082                	ret
   1817a:	40800433          	neg	s0,s0
   1817e:	c63ff0ef          	jal	17de0 <__errno>
   18182:	c100                	sw	s0,0(a0)
   18184:	547d                	li	s0,-1
   18186:	b7ed                	j	18170 <_close+0x14>

00018188 <_exit>:
   18188:	05d00893          	li	a7,93
   1818c:	00000073          	ecall
   18190:	00054363          	bltz	a0,18196 <_exit+0xe>
   18194:	a001                	j	18194 <_exit+0xc>
   18196:	1141                	addi	sp,sp,-16
   18198:	c422                	sw	s0,8(sp)
   1819a:	842a                	mv	s0,a0
   1819c:	c606                	sw	ra,12(sp)
   1819e:	40800433          	neg	s0,s0
   181a2:	c3fff0ef          	jal	17de0 <__errno>
   181a6:	c100                	sw	s0,0(a0)
   181a8:	a001                	j	181a8 <_exit+0x20>

000181aa <_fstat>:
   181aa:	7175                	addi	sp,sp,-144
   181ac:	c326                	sw	s1,132(sp)
   181ae:	c706                	sw	ra,140(sp)
   181b0:	84ae                	mv	s1,a1
   181b2:	c522                	sw	s0,136(sp)
   181b4:	05000893          	li	a7,80
   181b8:	858a                	mv	a1,sp
   181ba:	00000073          	ecall
   181be:	842a                	mv	s0,a0
   181c0:	00054b63          	bltz	a0,181d6 <_fstat+0x2c>
   181c4:	8526                	mv	a0,s1
   181c6:	858a                	mv	a1,sp
   181c8:	2a05                	jal	182f8 <_conv_stat>
   181ca:	40ba                	lw	ra,140(sp)
   181cc:	8522                	mv	a0,s0
   181ce:	442a                	lw	s0,136(sp)
   181d0:	449a                	lw	s1,132(sp)
   181d2:	6149                	addi	sp,sp,144
   181d4:	8082                	ret
   181d6:	40800433          	neg	s0,s0
   181da:	c07ff0ef          	jal	17de0 <__errno>
   181de:	c100                	sw	s0,0(a0)
   181e0:	547d                	li	s0,-1
   181e2:	b7cd                	j	181c4 <_fstat+0x1a>

000181e4 <_getpid>:
   181e4:	4505                	li	a0,1
   181e6:	8082                	ret

000181e8 <_isatty>:
   181e8:	7159                	addi	sp,sp,-112
   181ea:	002c                	addi	a1,sp,8
   181ec:	d686                	sw	ra,108(sp)
   181ee:	fbdff0ef          	jal	181aa <_fstat>
   181f2:	57fd                	li	a5,-1
   181f4:	00f50863          	beq	a0,a5,18204 <_isatty+0x1c>
   181f8:	4532                	lw	a0,12(sp)
   181fa:	50b6                	lw	ra,108(sp)
   181fc:	8135                	srli	a0,a0,0xd
   181fe:	8905                	andi	a0,a0,1
   18200:	6165                	addi	sp,sp,112
   18202:	8082                	ret
   18204:	50b6                	lw	ra,108(sp)
   18206:	4501                	li	a0,0
   18208:	6165                	addi	sp,sp,112
   1820a:	8082                	ret

0001820c <_kill>:
   1820c:	1141                	addi	sp,sp,-16
   1820e:	c606                	sw	ra,12(sp)
   18210:	bd1ff0ef          	jal	17de0 <__errno>
   18214:	40b2                	lw	ra,12(sp)
   18216:	47d9                	li	a5,22
   18218:	c11c                	sw	a5,0(a0)
   1821a:	557d                	li	a0,-1
   1821c:	0141                	addi	sp,sp,16
   1821e:	8082                	ret

00018220 <_lseek>:
   18220:	1141                	addi	sp,sp,-16
   18222:	c606                	sw	ra,12(sp)
   18224:	c422                	sw	s0,8(sp)
   18226:	03e00893          	li	a7,62
   1822a:	00000073          	ecall
   1822e:	842a                	mv	s0,a0
   18230:	00054763          	bltz	a0,1823e <_lseek+0x1e>
   18234:	40b2                	lw	ra,12(sp)
   18236:	8522                	mv	a0,s0
   18238:	4422                	lw	s0,8(sp)
   1823a:	0141                	addi	sp,sp,16
   1823c:	8082                	ret
   1823e:	40800433          	neg	s0,s0
   18242:	b9fff0ef          	jal	17de0 <__errno>
   18246:	c100                	sw	s0,0(a0)
   18248:	547d                	li	s0,-1
   1824a:	b7ed                	j	18234 <_lseek+0x14>

0001824c <_read>:
   1824c:	1141                	addi	sp,sp,-16
   1824e:	c606                	sw	ra,12(sp)
   18250:	c422                	sw	s0,8(sp)
   18252:	03f00893          	li	a7,63
   18256:	00000073          	ecall
   1825a:	842a                	mv	s0,a0
   1825c:	00054763          	bltz	a0,1826a <_read+0x1e>
   18260:	40b2                	lw	ra,12(sp)
   18262:	8522                	mv	a0,s0
   18264:	4422                	lw	s0,8(sp)
   18266:	0141                	addi	sp,sp,16
   18268:	8082                	ret
   1826a:	40800433          	neg	s0,s0
   1826e:	b73ff0ef          	jal	17de0 <__errno>
   18272:	c100                	sw	s0,0(a0)
   18274:	547d                	li	s0,-1
   18276:	b7ed                	j	18260 <_read+0x14>

00018278 <_sbrk>:
   18278:	f3c1a703          	lw	a4,-196(gp) # 1c97c <heap_end.0>
   1827c:	1141                	addi	sp,sp,-16
   1827e:	c606                	sw	ra,12(sp)
   18280:	87aa                	mv	a5,a0
   18282:	ef01                	bnez	a4,1829a <_sbrk+0x22>
   18284:	0d600893          	li	a7,214
   18288:	4501                	li	a0,0
   1828a:	00000073          	ecall
   1828e:	567d                	li	a2,-1
   18290:	872a                	mv	a4,a0
   18292:	02c50563          	beq	a0,a2,182bc <_sbrk+0x44>
   18296:	f2a1ae23          	sw	a0,-196(gp) # 1c97c <heap_end.0>
   1829a:	0d600893          	li	a7,214
   1829e:	00e78533          	add	a0,a5,a4
   182a2:	00000073          	ecall
   182a6:	f3c1a703          	lw	a4,-196(gp) # 1c97c <heap_end.0>
   182aa:	97ba                	add	a5,a5,a4
   182ac:	00f51863          	bne	a0,a5,182bc <_sbrk+0x44>
   182b0:	40b2                	lw	ra,12(sp)
   182b2:	f2a1ae23          	sw	a0,-196(gp) # 1c97c <heap_end.0>
   182b6:	853a                	mv	a0,a4
   182b8:	0141                	addi	sp,sp,16
   182ba:	8082                	ret
   182bc:	b25ff0ef          	jal	17de0 <__errno>
   182c0:	40b2                	lw	ra,12(sp)
   182c2:	47b1                	li	a5,12
   182c4:	c11c                	sw	a5,0(a0)
   182c6:	557d                	li	a0,-1
   182c8:	0141                	addi	sp,sp,16
   182ca:	8082                	ret

000182cc <_write>:
   182cc:	1141                	addi	sp,sp,-16
   182ce:	c606                	sw	ra,12(sp)
   182d0:	c422                	sw	s0,8(sp)
   182d2:	04000893          	li	a7,64
   182d6:	00000073          	ecall
   182da:	842a                	mv	s0,a0
   182dc:	00054763          	bltz	a0,182ea <_write+0x1e>
   182e0:	40b2                	lw	ra,12(sp)
   182e2:	8522                	mv	a0,s0
   182e4:	4422                	lw	s0,8(sp)
   182e6:	0141                	addi	sp,sp,16
   182e8:	8082                	ret
   182ea:	40800433          	neg	s0,s0
   182ee:	af3ff0ef          	jal	17de0 <__errno>
   182f2:	c100                	sw	s0,0(a0)
   182f4:	547d                	li	s0,-1
   182f6:	b7ed                	j	182e0 <_write+0x14>

000182f8 <_conv_stat>:
   182f8:	0185d703          	lhu	a4,24(a1)
   182fc:	0145d783          	lhu	a5,20(a1)
   18300:	1141                	addi	sp,sp,-16
   18302:	01c5a283          	lw	t0,28(a1)
   18306:	0205af83          	lw	t6,32(a1)
   1830a:	0305af03          	lw	t5,48(a1)
   1830e:	0405ae83          	lw	t4,64(a1)
   18312:	0385ae03          	lw	t3,56(a1)
   18316:	0485a303          	lw	t1,72(a1)
   1831a:	04c5a383          	lw	t2,76(a1)
   1831e:	0585a803          	lw	a6,88(a1)
   18322:	05c5a883          	lw	a7,92(a1)
   18326:	c622                	sw	s0,12(sp)
   18328:	c426                	sw	s1,8(sp)
   1832a:	4980                	lw	s0,16(a1)
   1832c:	4584                	lw	s1,8(a1)
   1832e:	c24a                	sw	s2,4(sp)
   18330:	0005a903          	lw	s2,0(a1)
   18334:	55b0                	lw	a2,104(a1)
   18336:	0742                	slli	a4,a4,0x10
   18338:	8fd9                	or	a5,a5,a4
   1833a:	55f4                	lw	a3,108(a1)
   1833c:	01251023          	sh	s2,0(a0)
   18340:	00951123          	sh	s1,2(a0)
   18344:	c140                	sw	s0,4(a0)
   18346:	c51c                	sw	a5,8(a0)
   18348:	00551623          	sh	t0,12(a0)
   1834c:	01f51723          	sh	t6,14(a0)
   18350:	01e52823          	sw	t5,16(a0)
   18354:	05d52623          	sw	t4,76(a0)
   18358:	05c52423          	sw	t3,72(a0)
   1835c:	00652c23          	sw	t1,24(a0)
   18360:	00752e23          	sw	t2,28(a0)
   18364:	03052423          	sw	a6,40(a0)
   18368:	03152623          	sw	a7,44(a0)
   1836c:	dd10                	sw	a2,56(a0)
   1836e:	4432                	lw	s0,12(sp)
   18370:	dd54                	sw	a3,60(a0)
   18372:	44a2                	lw	s1,8(sp)
   18374:	4912                	lw	s2,4(sp)
   18376:	0141                	addi	sp,sp,16
   18378:	8082                	ret

0001837a <__eqtf2>:
   1837a:	411c                	lw	a5,0(a0)
   1837c:	00452e03          	lw	t3,4(a0)
   18380:	00852e83          	lw	t4,8(a0)
   18384:	4554                	lw	a3,12(a0)
   18386:	4198                	lw	a4,0(a1)
   18388:	0045af83          	lw	t6,4(a1)
   1838c:	0085af03          	lw	t5,8(a1)
   18390:	00c5a883          	lw	a7,12(a1)
   18394:	1141                	addi	sp,sp,-16
   18396:	00202673          	frrm	a2
   1839a:	6521                	lui	a0,0x8
   1839c:	0106d613          	srli	a2,a3,0x10
   183a0:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   183a2:	01069313          	slli	t1,a3,0x10
   183a6:	01089593          	slli	a1,a7,0x10
   183aa:	01f6d813          	srli	a6,a3,0x1f
   183ae:	8e69                	and	a2,a2,a0
   183b0:	0108d693          	srli	a3,a7,0x10
   183b4:	01035313          	srli	t1,t1,0x10
   183b8:	81c1                	srli	a1,a1,0x10
   183ba:	8ee9                	and	a3,a3,a0
   183bc:	01f8d893          	srli	a7,a7,0x1f
   183c0:	00a61c63          	bne	a2,a0,183d8 <__eqtf2+0x5e>
   183c4:	01c7e533          	or	a0,a5,t3
   183c8:	01d56533          	or	a0,a0,t4
   183cc:	00656533          	or	a0,a0,t1
   183d0:	e51d                	bnez	a0,183fe <__eqtf2+0x84>
   183d2:	04c69b63          	bne	a3,a2,18428 <__eqtf2+0xae>
   183d6:	a019                	j	183dc <__eqtf2+0x62>
   183d8:	04a69a63          	bne	a3,a0,1842c <__eqtf2+0xb2>
   183dc:	01f76533          	or	a0,a4,t6
   183e0:	01e56533          	or	a0,a0,t5
   183e4:	8d4d                	or	a0,a0,a1
   183e6:	c139                	beqz	a0,1842c <__eqtf2+0xb2>
   183e8:	6521                	lui	a0,0x8
   183ea:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   183ec:	02a61a63          	bne	a2,a0,18420 <__eqtf2+0xa6>
   183f0:	01c7e7b3          	or	a5,a5,t3
   183f4:	01d7e7b3          	or	a5,a5,t4
   183f8:	0067e7b3          	or	a5,a5,t1
   183fc:	cb99                	beqz	a5,18412 <__eqtf2+0x98>
   183fe:	0342                	slli	t1,t1,0x10
   18400:	41035313          	srai	t1,t1,0x10
   18404:	04035c63          	bgez	t1,1845c <__eqtf2+0xe2>
   18408:	67a1                	lui	a5,0x8
   1840a:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1840c:	4505                	li	a0,1
   1840e:	04f69563          	bne	a3,a5,18458 <__eqtf2+0xde>
   18412:	01f76733          	or	a4,a4,t6
   18416:	01e76733          	or	a4,a4,t5
   1841a:	8f4d                	or	a4,a4,a1
   1841c:	4505                	li	a0,1
   1841e:	cf0d                	beqz	a4,18458 <__eqtf2+0xde>
   18420:	05c2                	slli	a1,a1,0x10
   18422:	85c1                	srai	a1,a1,0x10
   18424:	0205dc63          	bgez	a1,1845c <__eqtf2+0xe2>
   18428:	4505                	li	a0,1
   1842a:	a03d                	j	18458 <__eqtf2+0xde>
   1842c:	4505                	li	a0,1
   1842e:	02c69563          	bne	a3,a2,18458 <__eqtf2+0xde>
   18432:	02e79363          	bne	a5,a4,18458 <__eqtf2+0xde>
   18436:	03fe1163          	bne	t3,t6,18458 <__eqtf2+0xde>
   1843a:	01ee9f63          	bne	t4,t5,18458 <__eqtf2+0xde>
   1843e:	00b31d63          	bne	t1,a1,18458 <__eqtf2+0xde>
   18442:	03180063          	beq	a6,a7,18462 <__eqtf2+0xe8>
   18446:	ea89                	bnez	a3,18458 <__eqtf2+0xde>
   18448:	01c7e533          	or	a0,a5,t3
   1844c:	01d56533          	or	a0,a0,t4
   18450:	00656533          	or	a0,a0,t1
   18454:	00a03533          	snez	a0,a0
   18458:	0141                	addi	sp,sp,16
   1845a:	8082                	ret
   1845c:	00186073          	csrsi	fflags,16
   18460:	b7e1                	j	18428 <__eqtf2+0xae>
   18462:	4501                	li	a0,0
   18464:	bfd5                	j	18458 <__eqtf2+0xde>

00018466 <__getf2>:
   18466:	00052883          	lw	a7,0(a0)
   1846a:	00452303          	lw	t1,4(a0)
   1846e:	00852e03          	lw	t3,8(a0)
   18472:	455c                	lw	a5,12(a0)
   18474:	0005ae83          	lw	t4,0(a1)
   18478:	0045af03          	lw	t5,4(a1)
   1847c:	0085af83          	lw	t6,8(a1)
   18480:	45d4                	lw	a3,12(a1)
   18482:	1141                	addi	sp,sp,-16
   18484:	00202773          	frrm	a4
   18488:	6721                	lui	a4,0x8
   1848a:	0107d613          	srli	a2,a5,0x10
   1848e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18490:	01079813          	slli	a6,a5,0x10
   18494:	01069293          	slli	t0,a3,0x10
   18498:	0106d513          	srli	a0,a3,0x10
   1849c:	8e79                	and	a2,a2,a4
   1849e:	01085813          	srli	a6,a6,0x10
   184a2:	83fd                	srli	a5,a5,0x1f
   184a4:	0102d293          	srli	t0,t0,0x10
   184a8:	8d79                	and	a0,a0,a4
   184aa:	82fd                	srli	a3,a3,0x1f
   184ac:	00e61963          	bne	a2,a4,184be <__getf2+0x58>
   184b0:	01136733          	or	a4,t1,a7
   184b4:	01c76733          	or	a4,a4,t3
   184b8:	01076733          	or	a4,a4,a6
   184bc:	ef35                	bnez	a4,18538 <__getf2+0xd2>
   184be:	6721                	lui	a4,0x8
   184c0:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   184c2:	00e51963          	bne	a0,a4,184d4 <__getf2+0x6e>
   184c6:	01eee733          	or	a4,t4,t5
   184ca:	01f76733          	or	a4,a4,t6
   184ce:	00576733          	or	a4,a4,t0
   184d2:	e33d                	bnez	a4,18538 <__getf2+0xd2>
   184d4:	4701                	li	a4,0
   184d6:	ea09                	bnez	a2,184e8 <__getf2+0x82>
   184d8:	01136733          	or	a4,t1,a7
   184dc:	01c76733          	or	a4,a4,t3
   184e0:	01076733          	or	a4,a4,a6
   184e4:	00173713          	seqz	a4,a4
   184e8:	ed21                	bnez	a0,18540 <__getf2+0xda>
   184ea:	01eee5b3          	or	a1,t4,t5
   184ee:	01f5e5b3          	or	a1,a1,t6
   184f2:	0055e5b3          	or	a1,a1,t0
   184f6:	c711                	beqz	a4,18502 <__getf2+0x9c>
   184f8:	c981                	beqz	a1,18508 <__getf2+0xa2>
   184fa:	4505                	li	a0,1
   184fc:	e691                	bnez	a3,18508 <__getf2+0xa2>
   184fe:	557d                	li	a0,-1
   18500:	a021                	j	18508 <__getf2+0xa2>
   18502:	e1a1                	bnez	a1,18542 <__getf2+0xdc>
   18504:	557d                	li	a0,-1
   18506:	c7a1                	beqz	a5,1854e <__getf2+0xe8>
   18508:	0141                	addi	sp,sp,16
   1850a:	8082                	ret
   1850c:	fea647e3          	blt	a2,a0,184fa <__getf2+0x94>
   18510:	ff02eae3          	bltu	t0,a6,18504 <__getf2+0x9e>
   18514:	00581f63          	bne	a6,t0,18532 <__getf2+0xcc>
   18518:	ffcfe6e3          	bltu	t6,t3,18504 <__getf2+0x9e>
   1851c:	01fe1b63          	bne	t3,t6,18532 <__getf2+0xcc>
   18520:	fe6f62e3          	bltu	t5,t1,18504 <__getf2+0x9e>
   18524:	01e31763          	bne	t1,t5,18532 <__getf2+0xcc>
   18528:	fd1eeee3          	bltu	t4,a7,18504 <__getf2+0x9e>
   1852c:	4501                	li	a0,0
   1852e:	fdd8fde3          	bgeu	a7,t4,18508 <__getf2+0xa2>
   18532:	4505                	li	a0,1
   18534:	fbf1                	bnez	a5,18508 <__getf2+0xa2>
   18536:	b7e1                	j	184fe <__getf2+0x98>
   18538:	00186073          	csrsi	fflags,16
   1853c:	5579                	li	a0,-2
   1853e:	b7e9                	j	18508 <__getf2+0xa2>
   18540:	ff4d                	bnez	a4,184fa <__getf2+0x94>
   18542:	fcf691e3          	bne	a3,a5,18504 <__getf2+0x9e>
   18546:	fcc553e3          	bge	a0,a2,1850c <__getf2+0xa6>
   1854a:	557d                	li	a0,-1
   1854c:	fed5                	bnez	a3,18508 <__getf2+0xa2>
   1854e:	4505                	li	a0,1
   18550:	bf65                	j	18508 <__getf2+0xa2>

00018552 <__letf2>:
   18552:	00052883          	lw	a7,0(a0)
   18556:	00452303          	lw	t1,4(a0)
   1855a:	00852e03          	lw	t3,8(a0)
   1855e:	455c                	lw	a5,12(a0)
   18560:	0005ae83          	lw	t4,0(a1)
   18564:	0045af03          	lw	t5,4(a1)
   18568:	0085af83          	lw	t6,8(a1)
   1856c:	45d4                	lw	a3,12(a1)
   1856e:	1141                	addi	sp,sp,-16
   18570:	00202773          	frrm	a4
   18574:	6721                	lui	a4,0x8
   18576:	0107d613          	srli	a2,a5,0x10
   1857a:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1857c:	01079813          	slli	a6,a5,0x10
   18580:	01069293          	slli	t0,a3,0x10
   18584:	0106d513          	srli	a0,a3,0x10
   18588:	8e79                	and	a2,a2,a4
   1858a:	01085813          	srli	a6,a6,0x10
   1858e:	83fd                	srli	a5,a5,0x1f
   18590:	0102d293          	srli	t0,t0,0x10
   18594:	8d79                	and	a0,a0,a4
   18596:	82fd                	srli	a3,a3,0x1f
   18598:	00e61963          	bne	a2,a4,185aa <__letf2+0x58>
   1859c:	01136733          	or	a4,t1,a7
   185a0:	01c76733          	or	a4,a4,t3
   185a4:	01076733          	or	a4,a4,a6
   185a8:	ef35                	bnez	a4,18624 <__letf2+0xd2>
   185aa:	6721                	lui	a4,0x8
   185ac:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   185ae:	00e51963          	bne	a0,a4,185c0 <__letf2+0x6e>
   185b2:	01eee733          	or	a4,t4,t5
   185b6:	01f76733          	or	a4,a4,t6
   185ba:	00576733          	or	a4,a4,t0
   185be:	e33d                	bnez	a4,18624 <__letf2+0xd2>
   185c0:	4701                	li	a4,0
   185c2:	ea09                	bnez	a2,185d4 <__letf2+0x82>
   185c4:	01136733          	or	a4,t1,a7
   185c8:	01c76733          	or	a4,a4,t3
   185cc:	01076733          	or	a4,a4,a6
   185d0:	00173713          	seqz	a4,a4
   185d4:	ed21                	bnez	a0,1862c <__letf2+0xda>
   185d6:	01eee5b3          	or	a1,t4,t5
   185da:	01f5e5b3          	or	a1,a1,t6
   185de:	0055e5b3          	or	a1,a1,t0
   185e2:	c711                	beqz	a4,185ee <__letf2+0x9c>
   185e4:	c981                	beqz	a1,185f4 <__letf2+0xa2>
   185e6:	4505                	li	a0,1
   185e8:	e691                	bnez	a3,185f4 <__letf2+0xa2>
   185ea:	557d                	li	a0,-1
   185ec:	a021                	j	185f4 <__letf2+0xa2>
   185ee:	e1a1                	bnez	a1,1862e <__letf2+0xdc>
   185f0:	557d                	li	a0,-1
   185f2:	c7a1                	beqz	a5,1863a <__letf2+0xe8>
   185f4:	0141                	addi	sp,sp,16
   185f6:	8082                	ret
   185f8:	fea647e3          	blt	a2,a0,185e6 <__letf2+0x94>
   185fc:	ff02eae3          	bltu	t0,a6,185f0 <__letf2+0x9e>
   18600:	00581f63          	bne	a6,t0,1861e <__letf2+0xcc>
   18604:	ffcfe6e3          	bltu	t6,t3,185f0 <__letf2+0x9e>
   18608:	01fe1b63          	bne	t3,t6,1861e <__letf2+0xcc>
   1860c:	fe6f62e3          	bltu	t5,t1,185f0 <__letf2+0x9e>
   18610:	01e31763          	bne	t1,t5,1861e <__letf2+0xcc>
   18614:	fd1eeee3          	bltu	t4,a7,185f0 <__letf2+0x9e>
   18618:	4501                	li	a0,0
   1861a:	fdd8fde3          	bgeu	a7,t4,185f4 <__letf2+0xa2>
   1861e:	4505                	li	a0,1
   18620:	fbf1                	bnez	a5,185f4 <__letf2+0xa2>
   18622:	b7e1                	j	185ea <__letf2+0x98>
   18624:	00186073          	csrsi	fflags,16
   18628:	4509                	li	a0,2
   1862a:	b7e9                	j	185f4 <__letf2+0xa2>
   1862c:	ff4d                	bnez	a4,185e6 <__letf2+0x94>
   1862e:	fcf691e3          	bne	a3,a5,185f0 <__letf2+0x9e>
   18632:	fcc553e3          	bge	a0,a2,185f8 <__letf2+0xa6>
   18636:	557d                	li	a0,-1
   18638:	fed5                	bnez	a3,185f4 <__letf2+0xa2>
   1863a:	4505                	li	a0,1
   1863c:	bf65                	j	185f4 <__letf2+0xa2>

0001863e <__multf3>:
   1863e:	7131                	addi	sp,sp,-192
   18640:	d552                	sw	s4,168(sp)
   18642:	d356                	sw	s5,164(sp)
   18644:	d15a                	sw	s6,160(sp)
   18646:	cf5e                	sw	s7,156(sp)
   18648:	c62a                	sw	a0,12(sp)
   1864a:	419c                	lw	a5,0(a1)
   1864c:	41c8                	lw	a0,4(a1)
   1864e:	4594                	lw	a3,8(a1)
   18650:	45d8                	lw	a4,12(a1)
   18652:	00062a83          	lw	s5,0(a2)
   18656:	00462b83          	lw	s7,4(a2)
   1865a:	00862b03          	lw	s6,8(a2)
   1865e:	00c62a03          	lw	s4,12(a2)
   18662:	df06                	sw	ra,188(sp)
   18664:	dd22                	sw	s0,184(sp)
   18666:	db26                	sw	s1,180(sp)
   18668:	d94a                	sw	s2,176(sp)
   1866a:	d74e                	sw	s3,172(sp)
   1866c:	cd62                	sw	s8,152(sp)
   1866e:	cb66                	sw	s9,148(sp)
   18670:	c96a                	sw	s10,144(sp)
   18672:	c76e                	sw	s11,140(sp)
   18674:	002024f3          	frrm	s1
   18678:	6621                	lui	a2,0x8
   1867a:	01071413          	slli	s0,a4,0x10
   1867e:	8041                	srli	s0,s0,0x10
   18680:	01075913          	srli	s2,a4,0x10
   18684:	167d                	addi	a2,a2,-1 # 7fff <exit-0x8095>
   18686:	d0be                	sw	a5,96(sp)
   18688:	d2aa                	sw	a0,100(sp)
   1868a:	d4b6                	sw	a3,104(sp)
   1868c:	d6ba                	sw	a4,108(sp)
   1868e:	d83e                	sw	a5,48(sp)
   18690:	da2a                	sw	a0,52(sp)
   18692:	dc36                	sw	a3,56(sp)
   18694:	de22                	sw	s0,60(sp)
   18696:	00c97933          	and	s2,s2,a2
   1869a:	01f75993          	srli	s3,a4,0x1f
   1869e:	02090a63          	beqz	s2,186d2 <__multf3+0x94>
   186a2:	10c90d63          	beq	s2,a2,187bc <__multf3+0x17e>
   186a6:	6741                	lui	a4,0x10
   186a8:	8c59                	or	s0,s0,a4
   186aa:	de22                	sw	s0,60(sp)
   186ac:	1818                	addi	a4,sp,48
   186ae:	104c                	addi	a1,sp,36
   186b0:	4754                	lw	a3,12(a4)
   186b2:	4710                	lw	a2,8(a4)
   186b4:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   186b6:	068e                	slli	a3,a3,0x3
   186b8:	8275                	srli	a2,a2,0x1d
   186ba:	8ed1                	or	a3,a3,a2
   186bc:	cb14                	sw	a3,16(a4)
   186be:	fee599e3          	bne	a1,a4,186b0 <__multf3+0x72>
   186c2:	078e                	slli	a5,a5,0x3
   186c4:	d83e                	sw	a5,48(sp)
   186c6:	77f1                	lui	a5,0xffffc
   186c8:	0785                	addi	a5,a5,1 # ffffc001 <__BSS_END__+0xfffdf375>
   186ca:	993e                	add	s2,s2,a5
   186cc:	4c01                	li	s8,0
   186ce:	4401                	li	s0,0
   186d0:	a211                	j	187d4 <__multf3+0x196>
   186d2:	00a7e733          	or	a4,a5,a0
   186d6:	8f55                	or	a4,a4,a3
   186d8:	8f41                	or	a4,a4,s0
   186da:	70070d63          	beqz	a4,18df4 <__multf3+0x7b6>
   186de:	cc2d                	beqz	s0,18758 <__multf3+0x11a>
   186e0:	8522                	mv	a0,s0
   186e2:	108020ef          	jal	1a7ea <__clzsi2>
   186e6:	ff450693          	addi	a3,a0,-12
   186ea:	4056d793          	srai	a5,a3,0x5
   186ee:	8afd                	andi	a3,a3,31
   186f0:	c6d9                	beqz	a3,1877e <__multf3+0x140>
   186f2:	5671                	li	a2,-4
   186f4:	02c78633          	mul	a2,a5,a2
   186f8:	02000813          	li	a6,32
   186fc:	03010313          	addi	t1,sp,48
   18700:	40d80833          	sub	a6,a6,a3
   18704:	00c60713          	addi	a4,a2,12
   18708:	971a                	add	a4,a4,t1
   1870a:	40c00633          	neg	a2,a2
   1870e:	08e31863          	bne	t1,a4,1879e <__multf3+0x160>
   18712:	fff78713          	addi	a4,a5,-1
   18716:	078a                	slli	a5,a5,0x2
   18718:	1810                	addi	a2,sp,48
   1871a:	05078793          	addi	a5,a5,80
   1871e:	97b2                	add	a5,a5,a2
   18720:	5642                	lw	a2,48(sp)
   18722:	00d616b3          	sll	a3,a2,a3
   18726:	fad7a823          	sw	a3,-80(a5)
   1872a:	00170793          	addi	a5,a4,1
   1872e:	078a                	slli	a5,a5,0x2
   18730:	46a1                	li	a3,8
   18732:	1818                	addi	a4,sp,48
   18734:	00d7e863          	bltu	a5,a3,18744 <__multf3+0x106>
   18738:	00072023          	sw	zero,0(a4)
   1873c:	00072223          	sw	zero,4(a4)
   18740:	17e1                	addi	a5,a5,-8
   18742:	1838                	addi	a4,sp,56
   18744:	4691                	li	a3,4
   18746:	00d7e463          	bltu	a5,a3,1874e <__multf3+0x110>
   1874a:	00072023          	sw	zero,0(a4)
   1874e:	7971                	lui	s2,0xffffc
   18750:	0945                	addi	s2,s2,17 # ffffc011 <__BSS_END__+0xfffdf385>
   18752:	40a90933          	sub	s2,s2,a0
   18756:	bf9d                	j	186cc <__multf3+0x8e>
   18758:	c699                	beqz	a3,18766 <__multf3+0x128>
   1875a:	8536                	mv	a0,a3
   1875c:	08e020ef          	jal	1a7ea <__clzsi2>
   18760:	02050513          	addi	a0,a0,32
   18764:	b749                	j	186e6 <__multf3+0xa8>
   18766:	c511                	beqz	a0,18772 <__multf3+0x134>
   18768:	082020ef          	jal	1a7ea <__clzsi2>
   1876c:	04050513          	addi	a0,a0,64
   18770:	bf9d                	j	186e6 <__multf3+0xa8>
   18772:	853e                	mv	a0,a5
   18774:	076020ef          	jal	1a7ea <__clzsi2>
   18778:	06050513          	addi	a0,a0,96
   1877c:	b7ad                	j	186e6 <__multf3+0xa8>
   1877e:	5671                	li	a2,-4
   18780:	02c78633          	mul	a2,a5,a2
   18784:	1878                	addi	a4,sp,60
   18786:	468d                	li	a3,3
   18788:	00c705b3          	add	a1,a4,a2
   1878c:	418c                	lw	a1,0(a1)
   1878e:	16fd                	addi	a3,a3,-1
   18790:	1771                	addi	a4,a4,-4
   18792:	c34c                	sw	a1,4(a4)
   18794:	fef6dae3          	bge	a3,a5,18788 <__multf3+0x14a>
   18798:	fff78713          	addi	a4,a5,-1
   1879c:	b779                	j	1872a <__multf3+0xec>
   1879e:	430c                	lw	a1,0(a4)
   187a0:	ffc72883          	lw	a7,-4(a4)
   187a4:	00c70e33          	add	t3,a4,a2
   187a8:	00d595b3          	sll	a1,a1,a3
   187ac:	0108d8b3          	srl	a7,a7,a6
   187b0:	0115e5b3          	or	a1,a1,a7
   187b4:	00be2023          	sw	a1,0(t3)
   187b8:	1771                	addi	a4,a4,-4
   187ba:	bf91                	j	1870e <__multf3+0xd0>
   187bc:	8fc9                	or	a5,a5,a0
   187be:	8fd5                	or	a5,a5,a3
   187c0:	8fc1                	or	a5,a5,s0
   187c2:	62078c63          	beqz	a5,18dfa <__multf3+0x7bc>
   187c6:	0442                	slli	s0,s0,0x10
   187c8:	8441                	srai	s0,s0,0x10
   187ca:	fff44413          	not	s0,s0
   187ce:	807d                	srli	s0,s0,0x1f
   187d0:	0412                	slli	s0,s0,0x4
   187d2:	4c0d                	li	s8,3
   187d4:	010a1513          	slli	a0,s4,0x10
   187d8:	6721                	lui	a4,0x8
   187da:	010a5793          	srli	a5,s4,0x10
   187de:	8141                	srli	a0,a0,0x10
   187e0:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   187e2:	d6d2                	sw	s4,108(sp)
   187e4:	d0d6                	sw	s5,96(sp)
   187e6:	d2de                	sw	s7,100(sp)
   187e8:	d4da                	sw	s6,104(sp)
   187ea:	c0d6                	sw	s5,64(sp)
   187ec:	c2de                	sw	s7,68(sp)
   187ee:	c4da                	sw	s6,72(sp)
   187f0:	c6aa                	sw	a0,76(sp)
   187f2:	8ff9                	and	a5,a5,a4
   187f4:	01fa5a13          	srli	s4,s4,0x1f
   187f8:	60078363          	beqz	a5,18dfe <__multf3+0x7c0>
   187fc:	6ee78863          	beq	a5,a4,18eec <__multf3+0x8ae>
   18800:	6741                	lui	a4,0x10
   18802:	8d59                	or	a0,a0,a4
   18804:	c6aa                	sw	a0,76(sp)
   18806:	0098                	addi	a4,sp,64
   18808:	184c                	addi	a1,sp,52
   1880a:	4754                	lw	a3,12(a4)
   1880c:	4710                	lw	a2,8(a4)
   1880e:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   18810:	068e                	slli	a3,a3,0x3
   18812:	8275                	srli	a2,a2,0x1d
   18814:	8ed1                	or	a3,a3,a2
   18816:	cb14                	sw	a3,16(a4)
   18818:	fee599e3          	bne	a1,a4,1880a <__multf3+0x1cc>
   1881c:	7771                	lui	a4,0xffffc
   1881e:	0a8e                	slli	s5,s5,0x3
   18820:	0705                	addi	a4,a4,1 # ffffc001 <__BSS_END__+0xfffdf375>
   18822:	c0d6                	sw	s5,64(sp)
   18824:	97ba                	add	a5,a5,a4
   18826:	4681                	li	a3,0
   18828:	97ca                	add	a5,a5,s2
   1882a:	ca3e                	sw	a5,20(sp)
   1882c:	0785                	addi	a5,a5,1
   1882e:	c83e                	sw	a5,16(sp)
   18830:	002c1793          	slli	a5,s8,0x2
   18834:	8fd5                	or	a5,a5,a3
   18836:	4729                	li	a4,10
   18838:	70f74363          	blt	a4,a5,18f3e <__multf3+0x900>
   1883c:	4609                	li	a2,2
   1883e:	0149c733          	xor	a4,s3,s4
   18842:	6cf64863          	blt	a2,a5,18f12 <__multf3+0x8d4>
   18846:	17fd                	addi	a5,a5,-1
   18848:	4605                	li	a2,1
   1884a:	70f67263          	bgeu	a2,a5,18f4e <__multf3+0x910>
   1884e:	5542                	lw	a0,48(sp)
   18850:	4306                	lw	t1,64(sp)
   18852:	6841                	lui	a6,0x10
   18854:	fff80593          	addi	a1,a6,-1 # ffff <exit-0x95>
   18858:	01055913          	srli	s2,a0,0x10
   1885c:	01035393          	srli	t2,t1,0x10
   18860:	8d6d                	and	a0,a0,a1
   18862:	00b37333          	and	t1,t1,a1
   18866:	02a30633          	mul	a2,t1,a0
   1886a:	026908b3          	mul	a7,s2,t1
   1886e:	01065793          	srli	a5,a2,0x10
   18872:	02a386b3          	mul	a3,t2,a0
   18876:	96c6                	add	a3,a3,a7
   18878:	97b6                	add	a5,a5,a3
   1887a:	02790bb3          	mul	s7,s2,t2
   1887e:	0117f363          	bgeu	a5,a7,18884 <__multf3+0x246>
   18882:	9bc2                	add	s7,s7,a6
   18884:	4896                	lw	a7,68(sp)
   18886:	0107d693          	srli	a3,a5,0x10
   1888a:	8fed                	and	a5,a5,a1
   1888c:	8e6d                	and	a2,a2,a1
   1888e:	07c2                	slli	a5,a5,0x10
   18890:	97b2                	add	a5,a5,a2
   18892:	0108df93          	srli	t6,a7,0x10
   18896:	00b8f8b3          	and	a7,a7,a1
   1889a:	031905b3          	mul	a1,s2,a7
   1889e:	d03e                	sw	a5,32(sp)
   188a0:	d0be                	sw	a5,96(sp)
   188a2:	02af8633          	mul	a2,t6,a0
   188a6:	02a887b3          	mul	a5,a7,a0
   188aa:	962e                	add	a2,a2,a1
   188ac:	0107d813          	srli	a6,a5,0x10
   188b0:	9832                	add	a6,a6,a2
   188b2:	03f90b33          	mul	s6,s2,t6
   188b6:	00b87463          	bgeu	a6,a1,188be <__multf3+0x280>
   188ba:	6641                	lui	a2,0x10
   188bc:	9b32                	add	s6,s6,a2
   188be:	01085613          	srli	a2,a6,0x10
   188c2:	55d2                	lw	a1,52(sp)
   188c4:	cc32                	sw	a2,24(sp)
   188c6:	6641                	lui	a2,0x10
   188c8:	fff60e93          	addi	t4,a2,-1 # ffff <exit-0x95>
   188cc:	01d87833          	and	a6,a6,t4
   188d0:	01d7f7b3          	and	a5,a5,t4
   188d4:	0105d293          	srli	t0,a1,0x10
   188d8:	0842                	slli	a6,a6,0x10
   188da:	01d5f5b3          	and	a1,a1,t4
   188de:	983e                	add	a6,a6,a5
   188e0:	02628a33          	mul	s4,t0,t1
   188e4:	96c2                	add	a3,a3,a6
   188e6:	026587b3          	mul	a5,a1,t1
   188ea:	02b38eb3          	mul	t4,t2,a1
   188ee:	0107d993          	srli	s3,a5,0x10
   188f2:	9ed2                	add	t4,t4,s4
   188f4:	99f6                	add	s3,s3,t4
   188f6:	02538f33          	mul	t5,t2,t0
   188fa:	0149f363          	bgeu	s3,s4,18900 <__multf3+0x2c2>
   188fe:	9f32                	add	t5,t5,a2
   18900:	6c41                	lui	s8,0x10
   18902:	fffc0613          	addi	a2,s8,-1 # ffff <exit-0x95>
   18906:	8ff1                	and	a5,a5,a2
   18908:	0109da13          	srli	s4,s3,0x10
   1890c:	00c9f9b3          	and	s3,s3,a2
   18910:	09c2                	slli	s3,s3,0x10
   18912:	99be                	add	s3,s3,a5
   18914:	02b88eb3          	mul	t4,a7,a1
   18918:	9a7a                	add	s4,s4,t5
   1891a:	03128633          	mul	a2,t0,a7
   1891e:	010ed793          	srli	a5,t4,0x10
   18922:	02bf8ab3          	mul	s5,t6,a1
   18926:	9ab2                	add	s5,s5,a2
   18928:	97d6                	add	a5,a5,s5
   1892a:	025f8f33          	mul	t5,t6,t0
   1892e:	00c7f363          	bgeu	a5,a2,18934 <__multf3+0x2f6>
   18932:	9f62                	add	t5,t5,s8
   18934:	0107d613          	srli	a2,a5,0x10
   18938:	967a                	add	a2,a2,t5
   1893a:	6ac1                	lui	s5,0x10
   1893c:	ce32                	sw	a2,28(sp)
   1893e:	fffa8613          	addi	a2,s5,-1 # ffff <exit-0x95>
   18942:	8ff1                	and	a5,a5,a2
   18944:	00cefeb3          	and	t4,t4,a2
   18948:	07c2                	slli	a5,a5,0x10
   1894a:	97f6                	add	a5,a5,t4
   1894c:	d23e                	sw	a5,36(sp)
   1894e:	47a6                	lw	a5,72(sp)
   18950:	0107dd93          	srli	s11,a5,0x10
   18954:	00c7fd33          	and	s10,a5,a2
   18958:	02ad0633          	mul	a2,s10,a0
   1895c:	03a90c33          	mul	s8,s2,s10
   18960:	01065793          	srli	a5,a2,0x10
   18964:	02ad8f33          	mul	t5,s11,a0
   18968:	9f62                	add	t5,t5,s8
   1896a:	97fa                	add	a5,a5,t5
   1896c:	03b90eb3          	mul	t4,s2,s11
   18970:	0187f363          	bgeu	a5,s8,18976 <__multf3+0x338>
   18974:	9ed6                	add	t4,t4,s5
   18976:	0107df13          	srli	t5,a5,0x10
   1897a:	6cc1                	lui	s9,0x10
   1897c:	01df0e33          	add	t3,t5,t4
   18980:	fffc8e93          	addi	t4,s9,-1 # ffff <exit-0x95>
   18984:	01d7f7b3          	and	a5,a5,t4
   18988:	01d67633          	and	a2,a2,t4
   1898c:	07c2                	slli	a5,a5,0x10
   1898e:	97b2                	add	a5,a5,a2
   18990:	5662                	lw	a2,56(sp)
   18992:	d472                	sw	t3,40(sp)
   18994:	d63e                	sw	a5,44(sp)
   18996:	01065f13          	srli	t5,a2,0x10
   1899a:	01d67633          	and	a2,a2,t4
   1899e:	02660ab3          	mul	s5,a2,t1
   189a2:	026f0e33          	mul	t3,t5,t1
   189a6:	010ad793          	srli	a5,s5,0x10
   189aa:	02c38eb3          	mul	t4,t2,a2
   189ae:	9ef2                	add	t4,t4,t3
   189b0:	9ebe                	add	t4,t4,a5
   189b2:	03e38c33          	mul	s8,t2,t5
   189b6:	01cef363          	bgeu	t4,t3,189bc <__multf3+0x37e>
   189ba:	9c66                	add	s8,s8,s9
   189bc:	47e2                	lw	a5,24(sp)
   189be:	96de                	add	a3,a3,s7
   189c0:	0106b833          	sltu	a6,a3,a6
   189c4:	010edc93          	srli	s9,t4,0x10
   189c8:	6e41                	lui	t3,0x10
   189ca:	9c66                	add	s8,s8,s9
   189cc:	fffe0c93          	addi	s9,t3,-1 # ffff <exit-0x95>
   189d0:	01078e33          	add	t3,a5,a6
   189d4:	013687b3          	add	a5,a3,s3
   189d8:	9e5a                	add	t3,t3,s6
   189da:	00d7b6b3          	sltu	a3,a5,a3
   189de:	cc3e                	sw	a5,24(sp)
   189e0:	d2be                	sw	a5,100(sp)
   189e2:	5792                	lw	a5,36(sp)
   189e4:	9a72                	add	s4,s4,t3
   189e6:	96d2                	add	a3,a3,s4
   189e8:	01ca39b3          	sltu	s3,s4,t3
   189ec:	0146ba33          	sltu	s4,a3,s4
   189f0:	010e3e33          	sltu	t3,t3,a6
   189f4:	00f68833          	add	a6,a3,a5
   189f8:	47f2                	lw	a5,28(sp)
   189fa:	0149e9b3          	or	s3,s3,s4
   189fe:	9e4e                	add	t3,t3,s3
   18a00:	00fe09b3          	add	s3,t3,a5
   18a04:	57b2                	lw	a5,44(sp)
   18a06:	5a22                	lw	s4,40(sp)
   18a08:	00d836b3          	sltu	a3,a6,a3
   18a0c:	019efeb3          	and	t4,t4,s9
   18a10:	96ce                	add	a3,a3,s3
   18a12:	97c2                	add	a5,a5,a6
   18a14:	0ec2                	slli	t4,t4,0x10
   18a16:	019afab3          	and	s5,s5,s9
   18a1a:	9a36                	add	s4,s4,a3
   18a1c:	0107b833          	sltu	a6,a5,a6
   18a20:	9ed6                	add	t4,t4,s5
   18a22:	9ebe                	add	t4,t4,a5
   18a24:	9852                	add	a6,a6,s4
   18a26:	9c42                	add	s8,s8,a6
   18a28:	00feb7b3          	sltu	a5,t4,a5
   18a2c:	ce76                	sw	t4,28(sp)
   18a2e:	d4f6                	sw	t4,104(sp)
   18a30:	4eb6                	lw	t4,76(sp)
   18a32:	01c9be33          	sltu	t3,s3,t3
   18a36:	97e2                	add	a5,a5,s8
   18a38:	0136b9b3          	sltu	s3,a3,s3
   18a3c:	00da36b3          	sltu	a3,s4,a3
   18a40:	01483a33          	sltu	s4,a6,s4
   18a44:	013e69b3          	or	s3,t3,s3
   18a48:	0146e6b3          	or	a3,a3,s4
   18a4c:	010c3833          	sltu	a6,s8,a6
   18a50:	0187bc33          	sltu	s8,a5,s8
   18a54:	96ce                	add	a3,a3,s3
   18a56:	01886833          	or	a6,a6,s8
   18a5a:	010ed993          	srli	s3,t4,0x10
   18a5e:	019efeb3          	and	t4,t4,s9
   18a62:	03d90a33          	mul	s4,s2,t4
   18a66:	00d80e33          	add	t3,a6,a3
   18a6a:	02ae86b3          	mul	a3,t4,a0
   18a6e:	02a98533          	mul	a0,s3,a0
   18a72:	0106d813          	srli	a6,a3,0x10
   18a76:	9552                	add	a0,a0,s4
   18a78:	982a                	add	a6,a6,a0
   18a7a:	03390933          	mul	s2,s2,s3
   18a7e:	01487463          	bgeu	a6,s4,18a86 <__multf3+0x448>
   18a82:	6541                	lui	a0,0x10
   18a84:	992a                	add	s2,s2,a0
   18a86:	01085513          	srli	a0,a6,0x10
   18a8a:	954a                	add	a0,a0,s2
   18a8c:	5a72                	lw	s4,60(sp)
   18a8e:	6ac1                	lui	s5,0x10
   18a90:	d22a                	sw	a0,36(sp)
   18a92:	fffa8513          	addi	a0,s5,-1 # ffff <exit-0x95>
   18a96:	00a87833          	and	a6,a6,a0
   18a9a:	010a5913          	srli	s2,s4,0x10
   18a9e:	0842                	slli	a6,a6,0x10
   18aa0:	8ee9                	and	a3,a3,a0
   18aa2:	00aa7a33          	and	s4,s4,a0
   18aa6:	96c2                	add	a3,a3,a6
   18aa8:	026a0533          	mul	a0,s4,t1
   18aac:	d436                	sw	a3,40(sp)
   18aae:	02690333          	mul	t1,s2,t1
   18ab2:	01055693          	srli	a3,a0,0x10
   18ab6:	03238833          	mul	a6,t2,s2
   18aba:	034383b3          	mul	t2,t2,s4
   18abe:	939a                	add	t2,t2,t1
   18ac0:	969e                	add	a3,a3,t2
   18ac2:	0066f363          	bgeu	a3,t1,18ac8 <__multf3+0x48a>
   18ac6:	9856                	add	a6,a6,s5
   18ac8:	0106da93          	srli	s5,a3,0x10
   18acc:	6bc1                	lui	s7,0x10
   18ace:	9ac2                	add	s5,s5,a6
   18ad0:	fffb8813          	addi	a6,s7,-1 # ffff <exit-0x95>
   18ad4:	01057533          	and	a0,a0,a6
   18ad8:	0106f6b3          	and	a3,a3,a6
   18adc:	03a28333          	mul	t1,t0,s10
   18ae0:	06c2                	slli	a3,a3,0x10
   18ae2:	96aa                	add	a3,a3,a0
   18ae4:	03a58833          	mul	a6,a1,s10
   18ae8:	02bd83b3          	mul	t2,s11,a1
   18aec:	01085513          	srli	a0,a6,0x10
   18af0:	939a                	add	t2,t2,t1
   18af2:	951e                	add	a0,a0,t2
   18af4:	03b28b33          	mul	s6,t0,s11
   18af8:	00657363          	bgeu	a0,t1,18afe <__multf3+0x4c0>
   18afc:	9b5e                	add	s6,s6,s7
   18afe:	6c41                	lui	s8,0x10
   18b00:	fffc0313          	addi	t1,s8,-1 # ffff <exit-0x95>
   18b04:	01055393          	srli	t2,a0,0x10
   18b08:	00657533          	and	a0,a0,t1
   18b0c:	00687833          	and	a6,a6,t1
   18b10:	0542                	slli	a0,a0,0x10
   18b12:	93da                	add	t2,t2,s6
   18b14:	02cf8333          	mul	t1,t6,a2
   18b18:	9542                	add	a0,a0,a6
   18b1a:	031f0b33          	mul	s6,t5,a7
   18b1e:	02c88833          	mul	a6,a7,a2
   18b22:	935a                	add	t1,t1,s6
   18b24:	01085c93          	srli	s9,a6,0x10
   18b28:	9366                	add	t1,t1,s9
   18b2a:	03ef8bb3          	mul	s7,t6,t5
   18b2e:	01637363          	bgeu	t1,s6,18b34 <__multf3+0x4f6>
   18b32:	9be2                	add	s7,s7,s8
   18b34:	01035b13          	srli	s6,t1,0x10
   18b38:	9b5e                	add	s6,s6,s7
   18b3a:	6bc1                	lui	s7,0x10
   18b3c:	fffb8c13          	addi	s8,s7,-1 # ffff <exit-0x95>
   18b40:	01837333          	and	t1,t1,s8
   18b44:	0342                	slli	t1,t1,0x10
   18b46:	01887833          	and	a6,a6,s8
   18b4a:	981a                	add	a6,a6,t1
   18b4c:	5322                	lw	t1,40(sp)
   18b4e:	5c12                	lw	s8,36(sp)
   18b50:	933e                	add	t1,t1,a5
   18b52:	9c72                	add	s8,s8,t3
   18b54:	00f337b3          	sltu	a5,t1,a5
   18b58:	97e2                	add	a5,a5,s8
   18b5a:	969a                	add	a3,a3,t1
   18b5c:	9abe                	add	s5,s5,a5
   18b5e:	0066b333          	sltu	t1,a3,t1
   18b62:	9356                	add	t1,t1,s5
   18b64:	9536                	add	a0,a0,a3
   18b66:	939a                	add	t2,t2,t1
   18b68:	00d536b3          	sltu	a3,a0,a3
   18b6c:	969e                	add	a3,a3,t2
   18b6e:	982a                	add	a6,a6,a0
   18b70:	01cc3e33          	sltu	t3,s8,t3
   18b74:	9b36                	add	s6,s6,a3
   18b76:	0187bc33          	sltu	s8,a5,s8
   18b7a:	00a83533          	sltu	a0,a6,a0
   18b7e:	00fab7b3          	sltu	a5,s5,a5
   18b82:	01533ab3          	sltu	s5,t1,s5
   18b86:	018e6c33          	or	s8,t3,s8
   18b8a:	0157e7b3          	or	a5,a5,s5
   18b8e:	0063b333          	sltu	t1,t2,t1
   18b92:	955a                	add	a0,a0,s6
   18b94:	0076b3b3          	sltu	t2,a3,t2
   18b98:	97e2                	add	a5,a5,s8
   18b9a:	00736333          	or	t1,t1,t2
   18b9e:	00db36b3          	sltu	a3,s6,a3
   18ba2:	01653b33          	sltu	s6,a0,s6
   18ba6:	00f303b3          	add	t2,t1,a5
   18baa:	0166e6b3          	or	a3,a3,s6
   18bae:	00768333          	add	t1,a3,t2
   18bb2:	03af0e33          	mul	t3,t5,s10
   18bb6:	d6c2                	sw	a6,108(sp)
   18bb8:	03a606b3          	mul	a3,a2,s10
   18bbc:	02cd8ab3          	mul	s5,s11,a2
   18bc0:	0106d793          	srli	a5,a3,0x10
   18bc4:	9af2                	add	s5,s5,t3
   18bc6:	97d6                	add	a5,a5,s5
   18bc8:	03ed83b3          	mul	t2,s11,t5
   18bcc:	01c7f363          	bgeu	a5,t3,18bd2 <__multf3+0x594>
   18bd0:	93de                	add	t2,t2,s7
   18bd2:	0107de13          	srli	t3,a5,0x10
   18bd6:	6ac1                	lui	s5,0x10
   18bd8:	9e1e                	add	t3,t3,t2
   18bda:	fffa8393          	addi	t2,s5,-1 # ffff <exit-0x95>
   18bde:	0077f7b3          	and	a5,a5,t2
   18be2:	0076f6b3          	and	a3,a3,t2
   18be6:	07c2                	slli	a5,a5,0x10
   18be8:	03d28b33          	mul	s6,t0,t4
   18bec:	97b6                	add	a5,a5,a3
   18bee:	02be86b3          	mul	a3,t4,a1
   18bf2:	02b985b3          	mul	a1,s3,a1
   18bf6:	0106d393          	srli	t2,a3,0x10
   18bfa:	95da                	add	a1,a1,s6
   18bfc:	93ae                	add	t2,t2,a1
   18bfe:	033282b3          	mul	t0,t0,s3
   18c02:	0163f363          	bgeu	t2,s6,18c08 <__multf3+0x5ca>
   18c06:	92d6                	add	t0,t0,s5
   18c08:	0103d593          	srli	a1,t2,0x10
   18c0c:	6b41                	lui	s6,0x10
   18c0e:	92ae                	add	t0,t0,a1
   18c10:	fffb0593          	addi	a1,s6,-1 # ffff <exit-0x95>
   18c14:	8eed                	and	a3,a3,a1
   18c16:	00b3f3b3          	and	t2,t2,a1
   18c1a:	03c2                	slli	t2,t2,0x10
   18c1c:	031a05b3          	mul	a1,s4,a7
   18c20:	93b6                	add	t2,t2,a3
   18c22:	031908b3          	mul	a7,s2,a7
   18c26:	0105d693          	srli	a3,a1,0x10
   18c2a:	032f8ab3          	mul	s5,t6,s2
   18c2e:	034f8fb3          	mul	t6,t6,s4
   18c32:	9fc6                	add	t6,t6,a7
   18c34:	96fe                	add	a3,a3,t6
   18c36:	0116f363          	bgeu	a3,a7,18c3c <__multf3+0x5fe>
   18c3a:	9ada                	add	s5,s5,s6
   18c3c:	0106df93          	srli	t6,a3,0x10
   18c40:	68c1                	lui	a7,0x10
   18c42:	9fd6                	add	t6,t6,s5
   18c44:	fff88a93          	addi	s5,a7,-1 # ffff <exit-0x95>
   18c48:	0156f6b3          	and	a3,a3,s5
   18c4c:	0155f5b3          	and	a1,a1,s5
   18c50:	06c2                	slli	a3,a3,0x10
   18c52:	03df0ab3          	mul	s5,t5,t4
   18c56:	96ae                	add	a3,a3,a1
   18c58:	03d605b3          	mul	a1,a2,t4
   18c5c:	02c98633          	mul	a2,s3,a2
   18c60:	01560b33          	add	s6,a2,s5
   18c64:	0105d613          	srli	a2,a1,0x10
   18c68:	965a                	add	a2,a2,s6
   18c6a:	033f0f33          	mul	t5,t5,s3
   18c6e:	01567363          	bgeu	a2,s5,18c74 <__multf3+0x636>
   18c72:	9f46                	add	t5,t5,a7
   18c74:	6ac1                	lui	s5,0x10
   18c76:	01065893          	srli	a7,a2,0x10
   18c7a:	fffa8b13          	addi	s6,s5,-1 # ffff <exit-0x95>
   18c7e:	9f46                	add	t5,t5,a7
   18c80:	016678b3          	and	a7,a2,s6
   18c84:	0165f5b3          	and	a1,a1,s6
   18c88:	08c2                	slli	a7,a7,0x10
   18c8a:	03aa0633          	mul	a2,s4,s10
   18c8e:	98ae                	add	a7,a7,a1
   18c90:	03a90bb3          	mul	s7,s2,s10
   18c94:	01065c13          	srli	s8,a2,0x10
   18c98:	034d85b3          	mul	a1,s11,s4
   18c9c:	95de                	add	a1,a1,s7
   18c9e:	95e2                	add	a1,a1,s8
   18ca0:	032d8b33          	mul	s6,s11,s2
   18ca4:	0175f363          	bgeu	a1,s7,18caa <__multf3+0x66c>
   18ca8:	9b56                	add	s6,s6,s5
   18caa:	97aa                	add	a5,a5,a0
   18cac:	9e1a                	add	t3,t3,t1
   18cae:	00a7b533          	sltu	a0,a5,a0
   18cb2:	9572                	add	a0,a0,t3
   18cb4:	93be                	add	t2,t2,a5
   18cb6:	92aa                	add	t0,t0,a0
   18cb8:	00f3b7b3          	sltu	a5,t2,a5
   18cbc:	9796                	add	a5,a5,t0
   18cbe:	006e3333          	sltu	t1,t3,t1
   18cc2:	01c53e33          	sltu	t3,a0,t3
   18cc6:	00a2b533          	sltu	a0,t0,a0
   18cca:	0057b2b3          	sltu	t0,a5,t0
   18cce:	00556533          	or	a0,a0,t0
   18cd2:	01c36333          	or	t1,t1,t3
   18cd6:	932a                	add	t1,t1,a0
   18cd8:	03da0533          	mul	a0,s4,t4
   18cdc:	969e                	add	a3,a3,t2
   18cde:	9fbe                	add	t6,t6,a5
   18ce0:	0105da93          	srli	s5,a1,0x10
   18ce4:	d8b6                	sw	a3,112(sp)
   18ce6:	0076b6b3          	sltu	a3,a3,t2
   18cea:	96fe                	add	a3,a3,t6
   18cec:	9ada                	add	s5,s5,s6
   18cee:	6b41                	lui	s6,0x10
   18cf0:	fffb0b93          	addi	s7,s6,-1 # ffff <exit-0x95>
   18cf4:	03d90eb3          	mul	t4,s2,t4
   18cf8:	00ffb7b3          	sltu	a5,t6,a5
   18cfc:	01f6bfb3          	sltu	t6,a3,t6
   18d00:	0175f5b3          	and	a1,a1,s7
   18d04:	01f7e7b3          	or	a5,a5,t6
   18d08:	98b6                	add	a7,a7,a3
   18d0a:	05c2                	slli	a1,a1,0x10
   18d0c:	979a                	add	a5,a5,t1
   18d0e:	01767633          	and	a2,a2,s7
   18d12:	9f3e                	add	t5,t5,a5
   18d14:	03298933          	mul	s2,s3,s2
   18d18:	962e                	add	a2,a2,a1
   18d1a:	00d8b6b3          	sltu	a3,a7,a3
   18d1e:	96fa                	add	a3,a3,t5
   18d20:	9646                	add	a2,a2,a7
   18d22:	00ff37b3          	sltu	a5,t5,a5
   18d26:	9ab6                	add	s5,s5,a3
   18d28:	01e6bf33          	sltu	t5,a3,t5
   18d2c:	dab2                	sw	a2,116(sp)
   18d2e:	01163633          	sltu	a2,a2,a7
   18d32:	034989b3          	mul	s3,s3,s4
   18d36:	01e7e5b3          	or	a1,a5,t5
   18d3a:	9656                	add	a2,a2,s5
   18d3c:	01055793          	srli	a5,a0,0x10
   18d40:	00dab6b3          	sltu	a3,s5,a3
   18d44:	01563ab3          	sltu	s5,a2,s5
   18d48:	0156e6b3          	or	a3,a3,s5
   18d4c:	99f6                	add	s3,s3,t4
   18d4e:	97ce                	add	a5,a5,s3
   18d50:	01d7f363          	bgeu	a5,t4,18d56 <__multf3+0x718>
   18d54:	995a                	add	s2,s2,s6
   18d56:	0107d893          	srli	a7,a5,0x10
   18d5a:	95c6                	add	a1,a1,a7
   18d5c:	68c1                	lui	a7,0x10
   18d5e:	18fd                	addi	a7,a7,-1 # ffff <exit-0x95>
   18d60:	0117f7b3          	and	a5,a5,a7
   18d64:	07c2                	slli	a5,a5,0x10
   18d66:	01157533          	and	a0,a0,a7
   18d6a:	97aa                	add	a5,a5,a0
   18d6c:	97b2                	add	a5,a5,a2
   18d6e:	96ae                	add	a3,a3,a1
   18d70:	00c7b633          	sltu	a2,a5,a2
   18d74:	9636                	add	a2,a2,a3
   18d76:	dcbe                	sw	a5,120(sp)
   18d78:	46e2                	lw	a3,24(sp)
   18d7a:	5782                	lw	a5,32(sp)
   18d7c:	964a                	add	a2,a2,s2
   18d7e:	0836                	slli	a6,a6,0xd
   18d80:	8fd5                	or	a5,a5,a3
   18d82:	46f2                	lw	a3,28(sp)
   18d84:	deb2                	sw	a2,124(sp)
   18d86:	188c                	addi	a1,sp,112
   18d88:	8fd5                	or	a5,a5,a3
   18d8a:	00f86833          	or	a6,a6,a5
   18d8e:	109c                	addi	a5,sp,96
   18d90:	47d4                	lw	a3,12(a5)
   18d92:	4b90                	lw	a2,16(a5)
   18d94:	82cd                	srli	a3,a3,0x13
   18d96:	0636                	slli	a2,a2,0xd
   18d98:	8ed1                	or	a3,a3,a2
   18d9a:	c394                	sw	a3,0(a5)
   18d9c:	0791                	addi	a5,a5,4
   18d9e:	fef599e3          	bne	a1,a5,18d90 <__multf3+0x752>
   18da2:	5786                	lw	a5,96(sp)
   18da4:	01003833          	snez	a6,a6
   18da8:	56b6                	lw	a3,108(sp)
   18daa:	00f86833          	or	a6,a6,a5
   18dae:	57a6                	lw	a5,104(sp)
   18db0:	ceb6                	sw	a3,92(sp)
   18db2:	c8c2                	sw	a6,80(sp)
   18db4:	ccbe                	sw	a5,88(sp)
   18db6:	5796                	lw	a5,100(sp)
   18db8:	cabe                	sw	a5,84(sp)
   18dba:	00b69793          	slli	a5,a3,0xb
   18dbe:	0207d863          	bgez	a5,18dee <__multf3+0x7b0>
   18dc2:	087e                	slli	a6,a6,0x1f
   18dc4:	089c                	addi	a5,sp,80
   18dc6:	08e8                	addi	a0,sp,92
   18dc8:	4390                	lw	a2,0(a5)
   18dca:	43cc                	lw	a1,4(a5)
   18dcc:	8205                	srli	a2,a2,0x1
   18dce:	05fe                	slli	a1,a1,0x1f
   18dd0:	8e4d                	or	a2,a2,a1
   18dd2:	c390                	sw	a2,0(a5)
   18dd4:	0791                	addi	a5,a5,4
   18dd6:	fef519e3          	bne	a0,a5,18dc8 <__multf3+0x78a>
   18dda:	47c6                	lw	a5,80(sp)
   18ddc:	01003833          	snez	a6,a6
   18de0:	8285                	srli	a3,a3,0x1
   18de2:	0107e7b3          	or	a5,a5,a6
   18de6:	c8be                	sw	a5,80(sp)
   18de8:	47c2                	lw	a5,16(sp)
   18dea:	ceb6                	sw	a3,92(sp)
   18dec:	ca3e                	sw	a5,20(sp)
   18dee:	47d2                	lw	a5,20(sp)
   18df0:	c83e                	sw	a5,16(sp)
   18df2:	aa41                	j	18f82 <__multf3+0x944>
   18df4:	4901                	li	s2,0
   18df6:	4c05                	li	s8,1
   18df8:	b8d9                	j	186ce <__multf3+0x90>
   18dfa:	4c09                	li	s8,2
   18dfc:	b8c9                	j	186ce <__multf3+0x90>
   18dfe:	017ae7b3          	or	a5,s5,s7
   18e02:	0167e7b3          	or	a5,a5,s6
   18e06:	8fc9                	or	a5,a5,a0
   18e08:	10078263          	beqz	a5,18f0c <__multf3+0x8ce>
   18e0c:	c93d                	beqz	a0,18e82 <__multf3+0x844>
   18e0e:	1dd010ef          	jal	1a7ea <__clzsi2>
   18e12:	ff450693          	addi	a3,a0,-12 # fff4 <exit-0xa0>
   18e16:	4056d793          	srai	a5,a3,0x5
   18e1a:	8afd                	andi	a3,a3,31
   18e1c:	cac9                	beqz	a3,18eae <__multf3+0x870>
   18e1e:	5671                	li	a2,-4
   18e20:	02c78633          	mul	a2,a5,a2
   18e24:	02000813          	li	a6,32
   18e28:	04010313          	addi	t1,sp,64
   18e2c:	40d80833          	sub	a6,a6,a3
   18e30:	00c60713          	addi	a4,a2,12
   18e34:	971a                	add	a4,a4,t1
   18e36:	40c00633          	neg	a2,a2
   18e3a:	08e31a63          	bne	t1,a4,18ece <__multf3+0x890>
   18e3e:	fff78713          	addi	a4,a5,-1
   18e42:	078a                	slli	a5,a5,0x2
   18e44:	1810                	addi	a2,sp,48
   18e46:	05078793          	addi	a5,a5,80
   18e4a:	97b2                	add	a5,a5,a2
   18e4c:	4606                	lw	a2,64(sp)
   18e4e:	00d616b3          	sll	a3,a2,a3
   18e52:	fcd7a023          	sw	a3,-64(a5)
   18e56:	00170793          	addi	a5,a4,1
   18e5a:	078a                	slli	a5,a5,0x2
   18e5c:	46a1                	li	a3,8
   18e5e:	0098                	addi	a4,sp,64
   18e60:	00d7e863          	bltu	a5,a3,18e70 <__multf3+0x832>
   18e64:	00072023          	sw	zero,0(a4)
   18e68:	00072223          	sw	zero,4(a4)
   18e6c:	17e1                	addi	a5,a5,-8
   18e6e:	00b8                	addi	a4,sp,72
   18e70:	4691                	li	a3,4
   18e72:	00d7e463          	bltu	a5,a3,18e7a <__multf3+0x83c>
   18e76:	00072023          	sw	zero,0(a4)
   18e7a:	77f1                	lui	a5,0xffffc
   18e7c:	07c5                	addi	a5,a5,17 # ffffc011 <__BSS_END__+0xfffdf385>
   18e7e:	8f89                	sub	a5,a5,a0
   18e80:	b25d                	j	18826 <__multf3+0x1e8>
   18e82:	000b0863          	beqz	s6,18e92 <__multf3+0x854>
   18e86:	855a                	mv	a0,s6
   18e88:	163010ef          	jal	1a7ea <__clzsi2>
   18e8c:	02050513          	addi	a0,a0,32
   18e90:	b749                	j	18e12 <__multf3+0x7d4>
   18e92:	000b8863          	beqz	s7,18ea2 <__multf3+0x864>
   18e96:	855e                	mv	a0,s7
   18e98:	153010ef          	jal	1a7ea <__clzsi2>
   18e9c:	04050513          	addi	a0,a0,64
   18ea0:	bf8d                	j	18e12 <__multf3+0x7d4>
   18ea2:	8556                	mv	a0,s5
   18ea4:	147010ef          	jal	1a7ea <__clzsi2>
   18ea8:	06050513          	addi	a0,a0,96
   18eac:	b79d                	j	18e12 <__multf3+0x7d4>
   18eae:	5671                	li	a2,-4
   18eb0:	02c78633          	mul	a2,a5,a2
   18eb4:	00f8                	addi	a4,sp,76
   18eb6:	468d                	li	a3,3
   18eb8:	00c705b3          	add	a1,a4,a2
   18ebc:	418c                	lw	a1,0(a1)
   18ebe:	16fd                	addi	a3,a3,-1
   18ec0:	1771                	addi	a4,a4,-4
   18ec2:	c34c                	sw	a1,4(a4)
   18ec4:	fef6dae3          	bge	a3,a5,18eb8 <__multf3+0x87a>
   18ec8:	fff78713          	addi	a4,a5,-1
   18ecc:	b769                	j	18e56 <__multf3+0x818>
   18ece:	430c                	lw	a1,0(a4)
   18ed0:	ffc72883          	lw	a7,-4(a4)
   18ed4:	00c70e33          	add	t3,a4,a2
   18ed8:	00d595b3          	sll	a1,a1,a3
   18edc:	0108d8b3          	srl	a7,a7,a6
   18ee0:	0115e5b3          	or	a1,a1,a7
   18ee4:	00be2023          	sw	a1,0(t3)
   18ee8:	1771                	addi	a4,a4,-4
   18eea:	bf81                	j	18e3a <__multf3+0x7fc>
   18eec:	017aeab3          	or	s5,s5,s7
   18ef0:	016aeab3          	or	s5,s5,s6
   18ef4:	00aaeab3          	or	s5,s5,a0
   18ef8:	4689                	li	a3,2
   18efa:	920a87e3          	beqz	s5,18828 <__multf3+0x1ea>
   18efe:	0542                	slli	a0,a0,0x10
   18f00:	8541                	srai	a0,a0,0x10
   18f02:	468d                	li	a3,3
   18f04:	920542e3          	bltz	a0,18828 <__multf3+0x1ea>
   18f08:	4441                	li	s0,16
   18f0a:	ba39                	j	18828 <__multf3+0x1ea>
   18f0c:	4781                	li	a5,0
   18f0e:	4685                	li	a3,1
   18f10:	ba21                	j	18828 <__multf3+0x1ea>
   18f12:	4605                	li	a2,1
   18f14:	00f617b3          	sll	a5,a2,a5
   18f18:	5307f613          	andi	a2,a5,1328
   18f1c:	e231                	bnez	a2,18f60 <__multf3+0x922>
   18f1e:	0887f613          	andi	a2,a5,136
   18f22:	e60d                	bnez	a2,18f4c <__multf3+0x90e>
   18f24:	2407f793          	andi	a5,a5,576
   18f28:	920783e3          	beqz	a5,1884e <__multf3+0x210>
   18f2c:	4441                	li	s0,16
   18f2e:	67a1                	lui	a5,0x8
   18f30:	cebe                	sw	a5,92(sp)
   18f32:	cc82                	sw	zero,88(sp)
   18f34:	ca82                	sw	zero,84(sp)
   18f36:	c882                	sw	zero,80(sp)
   18f38:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   18f3a:	4701                	li	a4,0
   18f3c:	a8e1                	j	19014 <__multf3+0x9d6>
   18f3e:	473d                	li	a4,15
   18f40:	fee787e3          	beq	a5,a4,18f2e <__multf3+0x8f0>
   18f44:	462d                	li	a2,11
   18f46:	874e                	mv	a4,s3
   18f48:	00c79c63          	bne	a5,a2,18f60 <__multf3+0x922>
   18f4c:	8752                	mv	a4,s4
   18f4e:	4786                	lw	a5,64(sp)
   18f50:	8c36                	mv	s8,a3
   18f52:	c8be                	sw	a5,80(sp)
   18f54:	4796                	lw	a5,68(sp)
   18f56:	cabe                	sw	a5,84(sp)
   18f58:	47a6                	lw	a5,72(sp)
   18f5a:	ccbe                	sw	a5,88(sp)
   18f5c:	47b6                	lw	a5,76(sp)
   18f5e:	a801                	j	18f6e <__multf3+0x930>
   18f60:	57c2                	lw	a5,48(sp)
   18f62:	c8be                	sw	a5,80(sp)
   18f64:	57d2                	lw	a5,52(sp)
   18f66:	cabe                	sw	a5,84(sp)
   18f68:	57e2                	lw	a5,56(sp)
   18f6a:	ccbe                	sw	a5,88(sp)
   18f6c:	57f2                	lw	a5,60(sp)
   18f6e:	cebe                	sw	a5,92(sp)
   18f70:	4789                	li	a5,2
   18f72:	34fc0d63          	beq	s8,a5,192cc <__multf3+0xc8e>
   18f76:	478d                	li	a5,3
   18f78:	fafc0be3          	beq	s8,a5,18f2e <__multf3+0x8f0>
   18f7c:	4785                	li	a5,1
   18f7e:	34fc0263          	beq	s8,a5,192c2 <__multf3+0xc84>
   18f82:	46c2                	lw	a3,16(sp)
   18f84:	6791                	lui	a5,0x4
   18f86:	17fd                	addi	a5,a5,-1 # 3fff <exit-0xc095>
   18f88:	97b6                	add	a5,a5,a3
   18f8a:	10f05763          	blez	a5,19098 <__multf3+0xa5a>
   18f8e:	4646                	lw	a2,80(sp)
   18f90:	00767693          	andi	a3,a2,7
   18f94:	c2a1                	beqz	a3,18fd4 <__multf3+0x996>
   18f96:	4509                	li	a0,2
   18f98:	46d6                	lw	a3,84(sp)
   18f9a:	45f6                	lw	a1,92(sp)
   18f9c:	0ca48563          	beq	s1,a0,19066 <__multf3+0xa28>
   18fa0:	450d                	li	a0,3
   18fa2:	0aa48c63          	beq	s1,a0,1905a <__multf3+0xa1c>
   18fa6:	e48d                	bnez	s1,18fd0 <__multf3+0x992>
   18fa8:	00f67513          	andi	a0,a2,15
   18fac:	4811                	li	a6,4
   18fae:	03050163          	beq	a0,a6,18fd0 <__multf3+0x992>
   18fb2:	0611                	addi	a2,a2,4
   18fb4:	c8b2                	sw	a2,80(sp)
   18fb6:	00463613          	sltiu	a2,a2,4
   18fba:	96b2                	add	a3,a3,a2
   18fbc:	cab6                	sw	a3,84(sp)
   18fbe:	00c6b6b3          	sltu	a3,a3,a2
   18fc2:	4666                	lw	a2,88(sp)
   18fc4:	96b2                	add	a3,a3,a2
   18fc6:	ccb6                	sw	a3,88(sp)
   18fc8:	00c6b6b3          	sltu	a3,a3,a2
   18fcc:	96ae                	add	a3,a3,a1
   18fce:	ceb6                	sw	a3,92(sp)
   18fd0:	00146413          	ori	s0,s0,1
   18fd4:	46f6                	lw	a3,92(sp)
   18fd6:	00b69613          	slli	a2,a3,0xb
   18fda:	00065a63          	bgez	a2,18fee <__multf3+0x9b0>
   18fde:	fff007b7          	lui	a5,0xfff00
   18fe2:	17fd                	addi	a5,a5,-1 # ffefffff <__BSS_END__+0xffee3373>
   18fe4:	8efd                	and	a3,a3,a5
   18fe6:	ceb6                	sw	a3,92(sp)
   18fe8:	46c2                	lw	a3,16(sp)
   18fea:	6791                	lui	a5,0x4
   18fec:	97b6                	add	a5,a5,a3
   18fee:	0894                	addi	a3,sp,80
   18ff0:	08e8                	addi	a0,sp,92
   18ff2:	4290                	lw	a2,0(a3)
   18ff4:	42cc                	lw	a1,4(a3)
   18ff6:	820d                	srli	a2,a2,0x3
   18ff8:	05f6                	slli	a1,a1,0x1d
   18ffa:	8e4d                	or	a2,a2,a1
   18ffc:	c290                	sw	a2,0(a3)
   18ffe:	0691                	addi	a3,a3,4
   19000:	fed519e3          	bne	a0,a3,18ff2 <__multf3+0x9b4>
   19004:	6621                	lui	a2,0x8
   19006:	1679                	addi	a2,a2,-2 # 7ffe <exit-0x8096>
   19008:	46f6                	lw	a3,92(sp)
   1900a:	65a1                	lui	a1,0x8
   1900c:	04f64f63          	blt	a2,a5,1906a <__multf3+0xa2c>
   19010:	828d                	srli	a3,a3,0x3
   19012:	ceb6                	sw	a3,92(sp)
   19014:	4576                	lw	a0,92(sp)
   19016:	073e                	slli	a4,a4,0xf
   19018:	8f5d                	or	a4,a4,a5
   1901a:	06a11623          	sh	a0,108(sp)
   1901e:	06e11723          	sh	a4,110(sp)
   19022:	45c6                	lw	a1,80(sp)
   19024:	4656                	lw	a2,84(sp)
   19026:	46e6                	lw	a3,88(sp)
   19028:	57b6                	lw	a5,108(sp)
   1902a:	c019                	beqz	s0,19030 <__multf3+0x9f2>
   1902c:	00142073          	csrs	fflags,s0
   19030:	4732                	lw	a4,12(sp)
   19032:	50fa                	lw	ra,188(sp)
   19034:	546a                	lw	s0,184(sp)
   19036:	c30c                	sw	a1,0(a4)
   19038:	c350                	sw	a2,4(a4)
   1903a:	c714                	sw	a3,8(a4)
   1903c:	c75c                	sw	a5,12(a4)
   1903e:	54da                	lw	s1,180(sp)
   19040:	594a                	lw	s2,176(sp)
   19042:	59ba                	lw	s3,172(sp)
   19044:	5a2a                	lw	s4,168(sp)
   19046:	5a9a                	lw	s5,164(sp)
   19048:	5b0a                	lw	s6,160(sp)
   1904a:	4bfa                	lw	s7,156(sp)
   1904c:	4c6a                	lw	s8,152(sp)
   1904e:	4cda                	lw	s9,148(sp)
   19050:	4d4a                	lw	s10,144(sp)
   19052:	4dba                	lw	s11,140(sp)
   19054:	853a                	mv	a0,a4
   19056:	6129                	addi	sp,sp,192
   19058:	8082                	ret
   1905a:	fb3d                	bnez	a4,18fd0 <__multf3+0x992>
   1905c:	0621                	addi	a2,a2,8
   1905e:	c8b2                	sw	a2,80(sp)
   19060:	00863613          	sltiu	a2,a2,8
   19064:	bf99                	j	18fba <__multf3+0x97c>
   19066:	d72d                	beqz	a4,18fd0 <__multf3+0x992>
   19068:	bfd5                	j	1905c <__multf3+0xa1e>
   1906a:	4789                	li	a5,2
   1906c:	02f48463          	beq	s1,a5,19094 <__multf3+0xa56>
   19070:	478d                	li	a5,3
   19072:	00f48763          	beq	s1,a5,19080 <__multf3+0xa42>
   19076:	e491                	bnez	s1,19082 <__multf3+0xa44>
   19078:	4681                	li	a3,0
   1907a:	fff58793          	addi	a5,a1,-1 # 7fff <exit-0x8095>
   1907e:	a021                	j	19086 <__multf3+0xa48>
   19080:	df65                	beqz	a4,19078 <__multf3+0xa3a>
   19082:	56fd                	li	a3,-1
   19084:	87b2                	mv	a5,a2
   19086:	ceb6                	sw	a3,92(sp)
   19088:	ccb6                	sw	a3,88(sp)
   1908a:	cab6                	sw	a3,84(sp)
   1908c:	c8b6                	sw	a3,80(sp)
   1908e:	00546413          	ori	s0,s0,5
   19092:	b749                	j	19014 <__multf3+0x9d6>
   19094:	f375                	bnez	a4,19078 <__multf3+0xa3a>
   19096:	b7f5                	j	19082 <__multf3+0xa44>
   19098:	4685                	li	a3,1
   1909a:	ebb9                	bnez	a5,190f0 <__multf3+0xab2>
   1909c:	4646                	lw	a2,80(sp)
   1909e:	46f6                	lw	a3,92(sp)
   190a0:	00767593          	andi	a1,a2,7
   190a4:	c1b1                	beqz	a1,190e8 <__multf3+0xaaa>
   190a6:	4809                	li	a6,2
   190a8:	45d6                	lw	a1,84(sp)
   190aa:	4566                	lw	a0,88(sp)
   190ac:	00146413          	ori	s0,s0,1
   190b0:	03048b63          	beq	s1,a6,190e6 <__multf3+0xaa8>
   190b4:	480d                	li	a6,3
   190b6:	03048363          	beq	s1,a6,190dc <__multf3+0xa9e>
   190ba:	e49d                	bnez	s1,190e8 <__multf3+0xaaa>
   190bc:	00f67813          	andi	a6,a2,15
   190c0:	4891                	li	a7,4
   190c2:	03180363          	beq	a6,a7,190e8 <__multf3+0xaaa>
   190c6:	0611                	addi	a2,a2,4
   190c8:	00463613          	sltiu	a2,a2,4
   190cc:	95b2                	add	a1,a1,a2
   190ce:	00c5b5b3          	sltu	a1,a1,a2
   190d2:	952e                	add	a0,a0,a1
   190d4:	00b53533          	sltu	a0,a0,a1
   190d8:	96aa                	add	a3,a3,a0
   190da:	a039                	j	190e8 <__multf3+0xaaa>
   190dc:	e711                	bnez	a4,190e8 <__multf3+0xaaa>
   190de:	0621                	addi	a2,a2,8
   190e0:	00863613          	sltiu	a2,a2,8
   190e4:	b7e5                	j	190cc <__multf3+0xa8e>
   190e6:	ff65                	bnez	a4,190de <__multf3+0xaa0>
   190e8:	82d1                	srli	a3,a3,0x14
   190ea:	0016c693          	xori	a3,a3,1
   190ee:	8a85                	andi	a3,a3,1
   190f0:	4605                	li	a2,1
   190f2:	40f607b3          	sub	a5,a2,a5
   190f6:	07400593          	li	a1,116
   190fa:	18f5c163          	blt	a1,a5,1927c <__multf3+0xc3e>
   190fe:	0890                	addi	a2,sp,80
   19100:	4057d593          	srai	a1,a5,0x5
   19104:	01f7f513          	andi	a0,a5,31
   19108:	88b2                	mv	a7,a2
   1910a:	4781                	li	a5,0
   1910c:	4801                	li	a6,0
   1910e:	02b81763          	bne	a6,a1,1913c <__multf3+0xafe>
   19112:	480d                	li	a6,3
   19114:	40b80833          	sub	a6,a6,a1
   19118:	00259893          	slli	a7,a1,0x2
   1911c:	e51d                	bnez	a0,1914a <__multf3+0xb0c>
   1911e:	8332                	mv	t1,a2
   19120:	01130e33          	add	t3,t1,a7
   19124:	000e2e03          	lw	t3,0(t3)
   19128:	0505                	addi	a0,a0,1
   1912a:	0311                	addi	t1,t1,4
   1912c:	ffc32e23          	sw	t3,-4(t1)
   19130:	fea858e3          	bge	a6,a0,19120 <__multf3+0xae2>
   19134:	4511                	li	a0,4
   19136:	40b505b3          	sub	a1,a0,a1
   1913a:	a8a1                	j	19192 <__multf3+0xb54>
   1913c:	0008a303          	lw	t1,0(a7)
   19140:	0805                	addi	a6,a6,1
   19142:	0891                	addi	a7,a7,4
   19144:	0067e7b3          	or	a5,a5,t1
   19148:	b7d9                	j	1910e <__multf3+0xad0>
   1914a:	05088313          	addi	t1,a7,80
   1914e:	03010e13          	addi	t3,sp,48
   19152:	9372                	add	t1,t1,t3
   19154:	fd032303          	lw	t1,-48(t1)
   19158:	02000e93          	li	t4,32
   1915c:	40ae8eb3          	sub	t4,t4,a0
   19160:	01d31333          	sll	t1,t1,t4
   19164:	0067e7b3          	or	a5,a5,t1
   19168:	4f01                	li	t5,0
   1916a:	01160333          	add	t1,a2,a7
   1916e:	411008b3          	neg	a7,a7
   19172:	0b0f4d63          	blt	t5,a6,1922c <__multf3+0xbee>
   19176:	4891                	li	a7,4
   19178:	080a                	slli	a6,a6,0x2
   1917a:	40b885b3          	sub	a1,a7,a1
   1917e:	05080813          	addi	a6,a6,80
   19182:	03010893          	addi	a7,sp,48
   19186:	9846                	add	a6,a6,a7
   19188:	48f6                	lw	a7,92(sp)
   1918a:	00a8d533          	srl	a0,a7,a0
   1918e:	fca82823          	sw	a0,-48(a6)
   19192:	4511                	li	a0,4
   19194:	8d0d                	sub	a0,a0,a1
   19196:	050a                	slli	a0,a0,0x2
   19198:	058a                	slli	a1,a1,0x2
   1919a:	4821                	li	a6,8
   1919c:	95b2                	add	a1,a1,a2
   1919e:	01056863          	bltu	a0,a6,191ae <__multf3+0xb70>
   191a2:	0005a023          	sw	zero,0(a1)
   191a6:	0005a223          	sw	zero,4(a1)
   191aa:	1561                	addi	a0,a0,-8
   191ac:	05a1                	addi	a1,a1,8
   191ae:	4811                	li	a6,4
   191b0:	01056463          	bltu	a0,a6,191b8 <__multf3+0xb7a>
   191b4:	0005a023          	sw	zero,0(a1)
   191b8:	45c6                	lw	a1,80(sp)
   191ba:	00f037b3          	snez	a5,a5
   191be:	8fcd                	or	a5,a5,a1
   191c0:	c8be                	sw	a5,80(sp)
   191c2:	0077f593          	andi	a1,a5,7
   191c6:	c1a1                	beqz	a1,19206 <__multf3+0xbc8>
   191c8:	4509                	li	a0,2
   191ca:	45f6                	lw	a1,92(sp)
   191cc:	08a48763          	beq	s1,a0,1925a <__multf3+0xc1c>
   191d0:	450d                	li	a0,3
   191d2:	06a48e63          	beq	s1,a0,1924e <__multf3+0xc10>
   191d6:	e495                	bnez	s1,19202 <__multf3+0xbc4>
   191d8:	00f7f513          	andi	a0,a5,15
   191dc:	4811                	li	a6,4
   191de:	03050263          	beq	a0,a6,19202 <__multf3+0xbc4>
   191e2:	0791                	addi	a5,a5,4 # 4004 <exit-0xc090>
   191e4:	c8be                	sw	a5,80(sp)
   191e6:	0047b793          	sltiu	a5,a5,4
   191ea:	4556                	lw	a0,84(sp)
   191ec:	97aa                	add	a5,a5,a0
   191ee:	cabe                	sw	a5,84(sp)
   191f0:	00a7b7b3          	sltu	a5,a5,a0
   191f4:	4566                	lw	a0,88(sp)
   191f6:	97aa                	add	a5,a5,a0
   191f8:	ccbe                	sw	a5,88(sp)
   191fa:	00a7b7b3          	sltu	a5,a5,a0
   191fe:	97ae                	add	a5,a5,a1
   19200:	cebe                	sw	a5,92(sp)
   19202:	00146413          	ori	s0,s0,1
   19206:	45f6                	lw	a1,92(sp)
   19208:	00c59793          	slli	a5,a1,0xc
   1920c:	0407d963          	bgez	a5,1925e <__multf3+0xc20>
   19210:	ce82                	sw	zero,92(sp)
   19212:	cc82                	sw	zero,88(sp)
   19214:	ca82                	sw	zero,84(sp)
   19216:	c882                	sw	zero,80(sp)
   19218:	00146413          	ori	s0,s0,1
   1921c:	4785                	li	a5,1
   1921e:	de068be3          	beqz	a3,19014 <__multf3+0x9d6>
   19222:	00147693          	andi	a3,s0,1
   19226:	0686                	slli	a3,a3,0x1
   19228:	8c55                	or	s0,s0,a3
   1922a:	b3ed                	j	19014 <__multf3+0x9d6>
   1922c:	00032e03          	lw	t3,0(t1)
   19230:	00432f83          	lw	t6,4(t1)
   19234:	011302b3          	add	t0,t1,a7
   19238:	00ae5e33          	srl	t3,t3,a0
   1923c:	01df9fb3          	sll	t6,t6,t4
   19240:	01fe6e33          	or	t3,t3,t6
   19244:	01c2a023          	sw	t3,0(t0)
   19248:	0f05                	addi	t5,t5,1
   1924a:	0311                	addi	t1,t1,4
   1924c:	b71d                	j	19172 <__multf3+0xb34>
   1924e:	fb55                	bnez	a4,19202 <__multf3+0xbc4>
   19250:	07a1                	addi	a5,a5,8
   19252:	c8be                	sw	a5,80(sp)
   19254:	0087b793          	sltiu	a5,a5,8
   19258:	bf49                	j	191ea <__multf3+0xbac>
   1925a:	d745                	beqz	a4,19202 <__multf3+0xbc4>
   1925c:	bfd5                	j	19250 <__multf3+0xc12>
   1925e:	00c60813          	addi	a6,a2,12
   19262:	421c                	lw	a5,0(a2)
   19264:	4248                	lw	a0,4(a2)
   19266:	838d                	srli	a5,a5,0x3
   19268:	0576                	slli	a0,a0,0x1d
   1926a:	8fc9                	or	a5,a5,a0
   1926c:	c21c                	sw	a5,0(a2)
   1926e:	0611                	addi	a2,a2,4
   19270:	fec819e3          	bne	a6,a2,19262 <__multf3+0xc24>
   19274:	818d                	srli	a1,a1,0x3
   19276:	ceae                	sw	a1,92(sp)
   19278:	4781                	li	a5,0
   1927a:	b755                	j	1921e <__multf3+0xbe0>
   1927c:	46d6                	lw	a3,84(sp)
   1927e:	47c6                	lw	a5,80(sp)
   19280:	8fd5                	or	a5,a5,a3
   19282:	46e6                	lw	a3,88(sp)
   19284:	8fd5                	or	a5,a5,a3
   19286:	46f6                	lw	a3,92(sp)
   19288:	8fd5                	or	a5,a5,a3
   1928a:	c395                	beqz	a5,192ae <__multf3+0xc70>
   1928c:	ce82                	sw	zero,92(sp)
   1928e:	cc82                	sw	zero,88(sp)
   19290:	ca82                	sw	zero,84(sp)
   19292:	c8b2                	sw	a2,80(sp)
   19294:	4789                	li	a5,2
   19296:	00146413          	ori	s0,s0,1
   1929a:	02f48263          	beq	s1,a5,192be <__multf3+0xc80>
   1929e:	478d                	li	a5,3
   192a0:	00f48b63          	beq	s1,a5,192b6 <__multf3+0xc78>
   192a4:	4795                	li	a5,5
   192a6:	c891                	beqz	s1,192ba <__multf3+0xc7c>
   192a8:	47c6                	lw	a5,80(sp)
   192aa:	838d                	srli	a5,a5,0x3
   192ac:	c8be                	sw	a5,80(sp)
   192ae:	00246413          	ori	s0,s0,2
   192b2:	4781                	li	a5,0
   192b4:	b385                	j	19014 <__multf3+0x9d6>
   192b6:	fb6d                	bnez	a4,192a8 <__multf3+0xc6a>
   192b8:	47a5                	li	a5,9
   192ba:	c8be                	sw	a5,80(sp)
   192bc:	b7f5                	j	192a8 <__multf3+0xc6a>
   192be:	ff6d                	bnez	a4,192b8 <__multf3+0xc7a>
   192c0:	b7e5                	j	192a8 <__multf3+0xc6a>
   192c2:	ce82                	sw	zero,92(sp)
   192c4:	cc82                	sw	zero,88(sp)
   192c6:	ca82                	sw	zero,84(sp)
   192c8:	c882                	sw	zero,80(sp)
   192ca:	b7e5                	j	192b2 <__multf3+0xc74>
   192cc:	67a1                	lui	a5,0x8
   192ce:	ce82                	sw	zero,92(sp)
   192d0:	cc82                	sw	zero,88(sp)
   192d2:	ca82                	sw	zero,84(sp)
   192d4:	c882                	sw	zero,80(sp)
   192d6:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   192d8:	bb35                	j	19014 <__multf3+0x9d6>

000192da <__subtf3>:
   192da:	7159                	addi	sp,sp,-112
   192dc:	d2a6                	sw	s1,100(sp)
   192de:	d0ca                	sw	s2,96(sp)
   192e0:	cece                	sw	s3,92(sp)
   192e2:	c2e6                	sw	s9,68(sp)
   192e4:	d686                	sw	ra,108(sp)
   192e6:	d4a2                	sw	s0,104(sp)
   192e8:	ccd2                	sw	s4,88(sp)
   192ea:	cad6                	sw	s5,84(sp)
   192ec:	c8da                	sw	s6,80(sp)
   192ee:	c6de                	sw	s7,76(sp)
   192f0:	c4e2                	sw	s8,72(sp)
   192f2:	892a                	mv	s2,a0
   192f4:	4198                	lw	a4,0(a1)
   192f6:	41d4                	lw	a3,4(a1)
   192f8:	459c                	lw	a5,8(a1)
   192fa:	00c5a983          	lw	s3,12(a1)
   192fe:	4204                	lw	s1,0(a2)
   19300:	00462883          	lw	a7,4(a2)
   19304:	00862803          	lw	a6,8(a2)
   19308:	00c62c83          	lw	s9,12(a2)
   1930c:	00202a73          	frrm	s4
   19310:	dc3e                	sw	a5,56(sp)
   19312:	c43e                	sw	a5,8(sp)
   19314:	01099793          	slli	a5,s3,0x10
   19318:	83c1                	srli	a5,a5,0x10
   1931a:	00199413          	slli	s0,s3,0x1
   1931e:	858a                	mv	a1,sp
   19320:	de4e                	sw	s3,60(sp)
   19322:	c63e                	sw	a5,12(sp)
   19324:	d83a                	sw	a4,48(sp)
   19326:	da36                	sw	a3,52(sp)
   19328:	c03a                	sw	a4,0(sp)
   1932a:	c236                	sw	a3,4(sp)
   1932c:	8045                	srli	s0,s0,0x11
   1932e:	01f9d993          	srli	s3,s3,0x1f
   19332:	ff410313          	addi	t1,sp,-12
   19336:	87ae                	mv	a5,a1
   19338:	852e                	mv	a0,a1
   1933a:	47d4                	lw	a3,12(a5)
   1933c:	4790                	lw	a2,8(a5)
   1933e:	17f1                	addi	a5,a5,-4
   19340:	068e                	slli	a3,a3,0x3
   19342:	8275                	srli	a2,a2,0x1d
   19344:	8ed1                	or	a3,a3,a2
   19346:	cb94                	sw	a3,16(a5)
   19348:	fef319e3          	bne	t1,a5,1933a <__subtf3+0x60>
   1934c:	010c9793          	slli	a5,s9,0x10
   19350:	83c1                	srli	a5,a5,0x10
   19352:	001c9a93          	slli	s5,s9,0x1
   19356:	070e                	slli	a4,a4,0x3
   19358:	dc42                	sw	a6,56(sp)
   1935a:	cc42                	sw	a6,24(sp)
   1935c:	01010813          	addi	a6,sp,16
   19360:	da46                	sw	a7,52(sp)
   19362:	de66                	sw	s9,60(sp)
   19364:	ca46                	sw	a7,20(sp)
   19366:	ce3e                	sw	a5,28(sp)
   19368:	c03a                	sw	a4,0(sp)
   1936a:	d826                	sw	s1,48(sp)
   1936c:	c826                	sw	s1,16(sp)
   1936e:	011ada93          	srli	s5,s5,0x11
   19372:	01fcdc93          	srli	s9,s9,0x1f
   19376:	00410893          	addi	a7,sp,4
   1937a:	87c2                	mv	a5,a6
   1937c:	8e42                	mv	t3,a6
   1937e:	47d4                	lw	a3,12(a5)
   19380:	4790                	lw	a2,8(a5)
   19382:	17f1                	addi	a5,a5,-4
   19384:	068e                	slli	a3,a3,0x3
   19386:	8275                	srli	a2,a2,0x1d
   19388:	8ed1                	or	a3,a3,a2
   1938a:	cb94                	sw	a3,16(a5)
   1938c:	fef899e3          	bne	a7,a5,1937e <__subtf3+0xa4>
   19390:	048e                	slli	s1,s1,0x3
   19392:	67a1                	lui	a5,0x8
   19394:	c826                	sw	s1,16(sp)
   19396:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   19398:	00fa9963          	bne	s5,a5,193aa <__subtf3+0xd0>
   1939c:	46e2                	lw	a3,24(sp)
   1939e:	47d2                	lw	a5,20(sp)
   193a0:	8fd5                	or	a5,a5,a3
   193a2:	46f2                	lw	a3,28(sp)
   193a4:	8fd5                	or	a5,a5,a3
   193a6:	8fc5                	or	a5,a5,s1
   193a8:	e399                	bnez	a5,193ae <__subtf3+0xd4>
   193aa:	001ccc93          	xori	s9,s9,1
   193ae:	415407b3          	sub	a5,s0,s5
   193b2:	5d3c9c63          	bne	s9,s3,1998a <__subtf3+0x6b0>
   193b6:	24f05963          	blez	a5,19608 <__subtf3+0x32e>
   193ba:	4312                	lw	t1,4(sp)
   193bc:	48a2                	lw	a7,8(sp)
   193be:	45b2                	lw	a1,12(sp)
   193c0:	080a9963          	bnez	s5,19452 <__subtf3+0x178>
   193c4:	4552                	lw	a0,20(sp)
   193c6:	46e2                	lw	a3,24(sp)
   193c8:	4ef2                	lw	t4,28(sp)
   193ca:	00d56633          	or	a2,a0,a3
   193ce:	01d66633          	or	a2,a2,t4
   193d2:	8e45                	or	a2,a2,s1
   193d4:	e61d                	bnez	a2,19402 <__subtf3+0x128>
   193d6:	66a1                	lui	a3,0x8
   193d8:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   193da:	00d79e63          	bne	a5,a3,193f6 <__subtf3+0x11c>
   193de:	011366b3          	or	a3,t1,a7
   193e2:	8ecd                	or	a3,a3,a1
   193e4:	8ed9                	or	a3,a3,a4
   193e6:	ca81                	beqz	a3,193f6 <__subtf3+0x11c>
   193e8:	0125da93          	srli	s5,a1,0x12
   193ec:	001aca93          	xori	s5,s5,1
   193f0:	001afa93          	andi	s5,s5,1
   193f4:	0a92                	slli	s5,s5,0x4
   193f6:	d03a                	sw	a4,32(sp)
   193f8:	d21a                	sw	t1,36(sp)
   193fa:	d446                	sw	a7,40(sp)
   193fc:	d62e                	sw	a1,44(sp)
   193fe:	8456                	mv	s0,s5
   19400:	ac99                	j	19656 <__subtf3+0x37c>
   19402:	fff78613          	addi	a2,a5,-1
   19406:	ea0d                	bnez	a2,19438 <__subtf3+0x15e>
   19408:	94ba                	add	s1,s1,a4
   1940a:	932a                	add	t1,t1,a0
   1940c:	d026                	sw	s1,32(sp)
   1940e:	00e4b4b3          	sltu	s1,s1,a4
   19412:	949a                	add	s1,s1,t1
   19414:	d226                	sw	s1,36(sp)
   19416:	00a33533          	sltu	a0,t1,a0
   1941a:	0064b4b3          	sltu	s1,s1,t1
   1941e:	98b6                	add	a7,a7,a3
   19420:	8d45                	or	a0,a0,s1
   19422:	9546                	add	a0,a0,a7
   19424:	d42a                	sw	a0,40(sp)
   19426:	00d8b733          	sltu	a4,a7,a3
   1942a:	01153533          	sltu	a0,a0,a7
   1942e:	8f49                	or	a4,a4,a0
   19430:	9eae                	add	t4,t4,a1
   19432:	9776                	add	a4,a4,t4
   19434:	4785                	li	a5,1
   19436:	a299                	j	1957c <__subtf3+0x2a2>
   19438:	66a1                	lui	a3,0x8
   1943a:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1943c:	fad781e3          	beq	a5,a3,193de <__subtf3+0x104>
   19440:	07400793          	li	a5,116
   19444:	04c7d863          	bge	a5,a2,19494 <__subtf3+0x1ba>
   19448:	ce02                	sw	zero,28(sp)
   1944a:	cc02                	sw	zero,24(sp)
   1944c:	ca02                	sw	zero,20(sp)
   1944e:	4785                	li	a5,1
   19450:	a8dd                	j	19546 <__subtf3+0x26c>
   19452:	66a1                	lui	a3,0x8
   19454:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19456:	02d41563          	bne	s0,a3,19480 <__subtf3+0x1a6>
   1945a:	011367b3          	or	a5,t1,a7
   1945e:	8fcd                	or	a5,a5,a1
   19460:	8fd9                	or	a5,a5,a4
   19462:	4681                	li	a3,0
   19464:	c799                	beqz	a5,19472 <__subtf3+0x198>
   19466:	0125d693          	srli	a3,a1,0x12
   1946a:	0016c693          	xori	a3,a3,1
   1946e:	8a85                	andi	a3,a3,1
   19470:	0692                	slli	a3,a3,0x4
   19472:	d03a                	sw	a4,32(sp)
   19474:	d21a                	sw	t1,36(sp)
   19476:	d446                	sw	a7,40(sp)
   19478:	d62e                	sw	a1,44(sp)
   1947a:	87a2                	mv	a5,s0
   1947c:	8436                	mv	s0,a3
   1947e:	aae1                	j	19656 <__subtf3+0x37c>
   19480:	46f2                	lw	a3,28(sp)
   19482:	00080637          	lui	a2,0x80
   19486:	8ed1                	or	a3,a3,a2
   19488:	ce36                	sw	a3,28(sp)
   1948a:	07400693          	li	a3,116
   1948e:	faf6cde3          	blt	a3,a5,19448 <__subtf3+0x16e>
   19492:	863e                	mv	a2,a5
   19494:	40565693          	srai	a3,a2,0x5
   19498:	8ec2                	mv	t4,a6
   1949a:	8a7d                	andi	a2,a2,31
   1949c:	4781                	li	a5,0
   1949e:	4501                	li	a0,0
   194a0:	02d51563          	bne	a0,a3,194ca <__subtf3+0x1f0>
   194a4:	450d                	li	a0,3
   194a6:	8d15                	sub	a0,a0,a3
   194a8:	00269e93          	slli	t4,a3,0x2
   194ac:	e615                	bnez	a2,194d8 <__subtf3+0x1fe>
   194ae:	01d80f33          	add	t5,a6,t4
   194b2:	000f2f03          	lw	t5,0(t5)
   194b6:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x63375>
   194b8:	0811                	addi	a6,a6,4
   194ba:	ffe82e23          	sw	t5,-4(a6)
   194be:	fec558e3          	bge	a0,a2,194ae <__subtf3+0x1d4>
   194c2:	4611                	li	a2,4
   194c4:	40d606b3          	sub	a3,a2,a3
   194c8:	a881                	j	19518 <__subtf3+0x23e>
   194ca:	000eaf03          	lw	t5,0(t4)
   194ce:	0505                	addi	a0,a0,1
   194d0:	0e91                	addi	t4,t4,4
   194d2:	01e7e7b3          	or	a5,a5,t5
   194d6:	b7e9                	j	194a0 <__subtf3+0x1c6>
   194d8:	040e8493          	addi	s1,t4,64
   194dc:	00248f33          	add	t5,s1,sp
   194e0:	fd0f2f03          	lw	t5,-48(t5)
   194e4:	02000393          	li	t2,32
   194e8:	40c383b3          	sub	t2,t2,a2
   194ec:	007f1f33          	sll	t5,t5,t2
   194f0:	9876                	add	a6,a6,t4
   194f2:	01e7e7b3          	or	a5,a5,t5
   194f6:	41d00eb3          	neg	t4,t4
   194fa:	4f81                	li	t6,0
   194fc:	0eafc563          	blt	t6,a0,195e6 <__subtf3+0x30c>
   19500:	4811                	li	a6,4
   19502:	40d806b3          	sub	a3,a6,a3
   19506:	4872                	lw	a6,28(sp)
   19508:	050a                	slli	a0,a0,0x2
   1950a:	04050513          	addi	a0,a0,64
   1950e:	950a                	add	a0,a0,sp
   19510:	00c85633          	srl	a2,a6,a2
   19514:	fcc52823          	sw	a2,-48(a0)
   19518:	4611                	li	a2,4
   1951a:	8e15                	sub	a2,a2,a3
   1951c:	060a                	slli	a2,a2,0x2
   1951e:	068a                	slli	a3,a3,0x2
   19520:	4521                	li	a0,8
   19522:	96f2                	add	a3,a3,t3
   19524:	00a66863          	bltu	a2,a0,19534 <__subtf3+0x25a>
   19528:	0006a023          	sw	zero,0(a3)
   1952c:	0006a223          	sw	zero,4(a3)
   19530:	1661                	addi	a2,a2,-8
   19532:	06a1                	addi	a3,a3,8
   19534:	4511                	li	a0,4
   19536:	00a66463          	bltu	a2,a0,1953e <__subtf3+0x264>
   1953a:	0006a023          	sw	zero,0(a3)
   1953e:	46c2                	lw	a3,16(sp)
   19540:	00f037b3          	snez	a5,a5
   19544:	8fd5                	or	a5,a5,a3
   19546:	46d2                	lw	a3,20(sp)
   19548:	c83e                	sw	a5,16(sp)
   1954a:	97ba                	add	a5,a5,a4
   1954c:	9336                	add	t1,t1,a3
   1954e:	d03e                	sw	a5,32(sp)
   19550:	00e7b7b3          	sltu	a5,a5,a4
   19554:	4762                	lw	a4,24(sp)
   19556:	979a                	add	a5,a5,t1
   19558:	d23e                	sw	a5,36(sp)
   1955a:	00d336b3          	sltu	a3,t1,a3
   1955e:	0067b7b3          	sltu	a5,a5,t1
   19562:	98ba                	add	a7,a7,a4
   19564:	8fd5                	or	a5,a5,a3
   19566:	97c6                	add	a5,a5,a7
   19568:	d43e                	sw	a5,40(sp)
   1956a:	00e8b733          	sltu	a4,a7,a4
   1956e:	0117b7b3          	sltu	a5,a5,a7
   19572:	8f5d                	or	a4,a4,a5
   19574:	47f2                	lw	a5,28(sp)
   19576:	97ae                	add	a5,a5,a1
   19578:	973e                	add	a4,a4,a5
   1957a:	87a2                	mv	a5,s0
   1957c:	d63a                	sw	a4,44(sp)
   1957e:	00c71693          	slli	a3,a4,0xc
   19582:	4401                	li	s0,0
   19584:	0c06d963          	bgez	a3,19656 <__subtf3+0x37c>
   19588:	5602                	lw	a2,32(sp)
   1958a:	fff806b7          	lui	a3,0xfff80
   1958e:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff63373>
   19590:	8f75                	and	a4,a4,a3
   19592:	d63a                	sw	a4,44(sp)
   19594:	0785                	addi	a5,a5,1
   19596:	067e                	slli	a2,a2,0x1f
   19598:	1014                	addi	a3,sp,32
   1959a:	02c10813          	addi	a6,sp,44
   1959e:	428c                	lw	a1,0(a3)
   195a0:	42c8                	lw	a0,4(a3)
   195a2:	8185                	srli	a1,a1,0x1
   195a4:	057e                	slli	a0,a0,0x1f
   195a6:	8dc9                	or	a1,a1,a0
   195a8:	c28c                	sw	a1,0(a3)
   195aa:	0691                	addi	a3,a3,4
   195ac:	fed819e3          	bne	a6,a3,1959e <__subtf3+0x2c4>
   195b0:	5682                	lw	a3,32(sp)
   195b2:	8305                	srli	a4,a4,0x1
   195b4:	d63a                	sw	a4,44(sp)
   195b6:	00c03733          	snez	a4,a2
   195ba:	8f55                	or	a4,a4,a3
   195bc:	d03a                	sw	a4,32(sp)
   195be:	6721                	lui	a4,0x8
   195c0:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   195c2:	4401                	li	s0,0
   195c4:	08e79963          	bne	a5,a4,19656 <__subtf3+0x37c>
   195c8:	3a0a0963          	beqz	s4,1997a <__subtf3+0x6a0>
   195cc:	478d                	li	a5,3
   195ce:	3afa1163          	bne	s4,a5,19970 <__subtf3+0x696>
   195d2:	3a098463          	beqz	s3,1997a <__subtf3+0x6a0>
   195d6:	57fd                	li	a5,-1
   195d8:	d63e                	sw	a5,44(sp)
   195da:	d43e                	sw	a5,40(sp)
   195dc:	d23e                	sw	a5,36(sp)
   195de:	d03e                	sw	a5,32(sp)
   195e0:	67a1                	lui	a5,0x8
   195e2:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   195e4:	a64d                	j	19986 <__subtf3+0x6ac>
   195e6:	00082f03          	lw	t5,0(a6)
   195ea:	00482283          	lw	t0,4(a6)
   195ee:	01d804b3          	add	s1,a6,t4
   195f2:	00cf5f33          	srl	t5,t5,a2
   195f6:	007292b3          	sll	t0,t0,t2
   195fa:	005f6f33          	or	t5,t5,t0
   195fe:	01e4a023          	sw	t5,0(s1)
   19602:	0f85                	addi	t6,t6,1
   19604:	0811                	addi	a6,a6,4
   19606:	bddd                	j	194fc <__subtf3+0x222>
   19608:	4bd2                	lw	s7,20(sp)
   1960a:	4c62                	lw	s8,24(sp)
   1960c:	4b72                	lw	s6,28(sp)
   1960e:	1e078363          	beqz	a5,197f4 <__subtf3+0x51a>
   19612:	408a87b3          	sub	a5,s5,s0
   19616:	e859                	bnez	s0,196ac <__subtf3+0x3d2>
   19618:	4612                	lw	a2,4(sp)
   1961a:	46a2                	lw	a3,8(sp)
   1961c:	48b2                	lw	a7,12(sp)
   1961e:	00d66833          	or	a6,a2,a3
   19622:	01186833          	or	a6,a6,a7
   19626:	00e86833          	or	a6,a6,a4
   1962a:	02081963          	bnez	a6,1965c <__subtf3+0x382>
   1962e:	6721                	lui	a4,0x8
   19630:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19632:	00e79e63          	bne	a5,a4,1964e <__subtf3+0x374>
   19636:	018be733          	or	a4,s7,s8
   1963a:	01676733          	or	a4,a4,s6
   1963e:	8f45                	or	a4,a4,s1
   19640:	c719                	beqz	a4,1964e <__subtf3+0x374>
   19642:	012b5413          	srli	s0,s6,0x12
   19646:	00144413          	xori	s0,s0,1
   1964a:	8805                	andi	s0,s0,1
   1964c:	0412                	slli	s0,s0,0x4
   1964e:	d026                	sw	s1,32(sp)
   19650:	d25e                	sw	s7,36(sp)
   19652:	d462                	sw	s8,40(sp)
   19654:	d65a                	sw	s6,44(sp)
   19656:	4681                	li	a3,0
   19658:	3fb0006f          	j	1a252 <__subtf3+0xf78>
   1965c:	fff78813          	addi	a6,a5,-1
   19660:	02081963          	bnez	a6,19692 <__subtf3+0x3b8>
   19664:	94ba                	add	s1,s1,a4
   19666:	9bb2                	add	s7,s7,a2
   19668:	d026                	sw	s1,32(sp)
   1966a:	00e4b4b3          	sltu	s1,s1,a4
   1966e:	94de                	add	s1,s1,s7
   19670:	d226                	sw	s1,36(sp)
   19672:	00cbb633          	sltu	a2,s7,a2
   19676:	0174b4b3          	sltu	s1,s1,s7
   1967a:	9c36                	add	s8,s8,a3
   1967c:	8e45                	or	a2,a2,s1
   1967e:	9662                	add	a2,a2,s8
   19680:	d432                	sw	a2,40(sp)
   19682:	00dc3733          	sltu	a4,s8,a3
   19686:	01863633          	sltu	a2,a2,s8
   1968a:	8f51                	or	a4,a4,a2
   1968c:	98da                	add	a7,a7,s6
   1968e:	9746                	add	a4,a4,a7
   19690:	b355                	j	19434 <__subtf3+0x15a>
   19692:	6721                	lui	a4,0x8
   19694:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19696:	fae780e3          	beq	a5,a4,19636 <__subtf3+0x35c>
   1969a:	07400793          	li	a5,116
   1969e:	0507d863          	bge	a5,a6,196ee <__subtf3+0x414>
   196a2:	c602                	sw	zero,12(sp)
   196a4:	c402                	sw	zero,8(sp)
   196a6:	c202                	sw	zero,4(sp)
   196a8:	4785                	li	a5,1
   196aa:	a8cd                	j	1979c <__subtf3+0x4c2>
   196ac:	6721                	lui	a4,0x8
   196ae:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   196b0:	02ea9563          	bne	s5,a4,196da <__subtf3+0x400>
   196b4:	018be7b3          	or	a5,s7,s8
   196b8:	0167e7b3          	or	a5,a5,s6
   196bc:	8fc5                	or	a5,a5,s1
   196be:	4401                	li	s0,0
   196c0:	c799                	beqz	a5,196ce <__subtf3+0x3f4>
   196c2:	012b5413          	srli	s0,s6,0x12
   196c6:	00144413          	xori	s0,s0,1
   196ca:	8805                	andi	s0,s0,1
   196cc:	0412                	slli	s0,s0,0x4
   196ce:	d026                	sw	s1,32(sp)
   196d0:	d25e                	sw	s7,36(sp)
   196d2:	d462                	sw	s8,40(sp)
   196d4:	d65a                	sw	s6,44(sp)
   196d6:	87d6                	mv	a5,s5
   196d8:	bfbd                	j	19656 <__subtf3+0x37c>
   196da:	4732                	lw	a4,12(sp)
   196dc:	000806b7          	lui	a3,0x80
   196e0:	8f55                	or	a4,a4,a3
   196e2:	c63a                	sw	a4,12(sp)
   196e4:	07400713          	li	a4,116
   196e8:	faf74de3          	blt	a4,a5,196a2 <__subtf3+0x3c8>
   196ec:	883e                	mv	a6,a5
   196ee:	02000713          	li	a4,32
   196f2:	02e84733          	div	a4,a6,a4
   196f6:	86ae                	mv	a3,a1
   196f8:	4401                	li	s0,0
   196fa:	4781                	li	a5,0
   196fc:	02e7c663          	blt	a5,a4,19728 <__subtf3+0x44e>
   19700:	478d                	li	a5,3
   19702:	01f87893          	andi	a7,a6,31
   19706:	8f99                	sub	a5,a5,a4
   19708:	00271613          	slli	a2,a4,0x2
   1970c:	02089363          	bnez	a7,19732 <__subtf3+0x458>
   19710:	00c586b3          	add	a3,a1,a2
   19714:	4294                	lw	a3,0(a3)
   19716:	0885                	addi	a7,a7,1
   19718:	c194                	sw	a3,0(a1)
   1971a:	0591                	addi	a1,a1,4
   1971c:	ff17dae3          	bge	a5,a7,19710 <__subtf3+0x436>
   19720:	4791                	li	a5,4
   19722:	40e78733          	sub	a4,a5,a4
   19726:	a899                	j	1977c <__subtf3+0x4a2>
   19728:	4290                	lw	a2,0(a3)
   1972a:	0785                	addi	a5,a5,1
   1972c:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x63378>
   1972e:	8c51                	or	s0,s0,a2
   19730:	b7f1                	j	196fc <__subtf3+0x422>
   19732:	02000693          	li	a3,32
   19736:	02d86833          	rem	a6,a6,a3
   1973a:	41068833          	sub	a6,a3,a6
   1973e:	86ba                	mv	a3,a4
   19740:	00075363          	bgez	a4,19746 <__subtf3+0x46c>
   19744:	4681                	li	a3,0
   19746:	068a                	slli	a3,a3,0x2
   19748:	04068693          	addi	a3,a3,64
   1974c:	968a                	add	a3,a3,sp
   1974e:	fc06a683          	lw	a3,-64(a3)
   19752:	95b2                	add	a1,a1,a2
   19754:	4301                	li	t1,0
   19756:	010696b3          	sll	a3,a3,a6
   1975a:	8c55                	or	s0,s0,a3
   1975c:	40c00633          	neg	a2,a2
   19760:	06f34a63          	blt	t1,a5,197d4 <__subtf3+0x4fa>
   19764:	4691                	li	a3,4
   19766:	40e68733          	sub	a4,a3,a4
   1976a:	46b2                	lw	a3,12(sp)
   1976c:	078a                	slli	a5,a5,0x2
   1976e:	04078793          	addi	a5,a5,64
   19772:	978a                	add	a5,a5,sp
   19774:	0116d6b3          	srl	a3,a3,a7
   19778:	fcd7a023          	sw	a3,-64(a5)
   1977c:	00572793          	slti	a5,a4,5
   19780:	4601                	li	a2,0
   19782:	c781                	beqz	a5,1978a <__subtf3+0x4b0>
   19784:	4611                	li	a2,4
   19786:	8e19                	sub	a2,a2,a4
   19788:	060a                	slli	a2,a2,0x2
   1978a:	070a                	slli	a4,a4,0x2
   1978c:	953a                	add	a0,a0,a4
   1978e:	4581                	li	a1,0
   19790:	c47f70ef          	jal	113d6 <memset>
   19794:	4702                	lw	a4,0(sp)
   19796:	008037b3          	snez	a5,s0
   1979a:	8fd9                	or	a5,a5,a4
   1979c:	4692                	lw	a3,4(sp)
   1979e:	c03e                	sw	a5,0(sp)
   197a0:	97a6                	add	a5,a5,s1
   197a2:	9bb6                	add	s7,s7,a3
   197a4:	4722                	lw	a4,8(sp)
   197a6:	d03e                	sw	a5,32(sp)
   197a8:	0097b7b3          	sltu	a5,a5,s1
   197ac:	97de                	add	a5,a5,s7
   197ae:	d23e                	sw	a5,36(sp)
   197b0:	00dbb6b3          	sltu	a3,s7,a3
   197b4:	0177b7b3          	sltu	a5,a5,s7
   197b8:	9c3a                	add	s8,s8,a4
   197ba:	8fd5                	or	a5,a5,a3
   197bc:	97e2                	add	a5,a5,s8
   197be:	d43e                	sw	a5,40(sp)
   197c0:	00ec3733          	sltu	a4,s8,a4
   197c4:	0187b7b3          	sltu	a5,a5,s8
   197c8:	8f5d                	or	a4,a4,a5
   197ca:	47b2                	lw	a5,12(sp)
   197cc:	97da                	add	a5,a5,s6
   197ce:	973e                	add	a4,a4,a5
   197d0:	87d6                	mv	a5,s5
   197d2:	b36d                	j	1957c <__subtf3+0x2a2>
   197d4:	4194                	lw	a3,0(a1)
   197d6:	0045ae03          	lw	t3,4(a1)
   197da:	00c58eb3          	add	t4,a1,a2
   197de:	0116d6b3          	srl	a3,a3,a7
   197e2:	010e1e33          	sll	t3,t3,a6
   197e6:	01c6e6b3          	or	a3,a3,t3
   197ea:	00dea023          	sw	a3,0(t4)
   197ee:	0305                	addi	t1,t1,1
   197f0:	0591                	addi	a1,a1,4
   197f2:	b7bd                	j	19760 <__subtf3+0x486>
   197f4:	00140793          	addi	a5,s0,1
   197f8:	01179513          	slli	a0,a5,0x11
   197fc:	8149                	srli	a0,a0,0x12
   197fe:	4612                	lw	a2,4(sp)
   19800:	46a2                	lw	a3,8(sp)
   19802:	45b2                	lw	a1,12(sp)
   19804:	10051c63          	bnez	a0,1991c <__subtf3+0x642>
   19808:	00d667b3          	or	a5,a2,a3
   1980c:	8fcd                	or	a5,a5,a1
   1980e:	8fd9                	or	a5,a5,a4
   19810:	e049                	bnez	s0,19892 <__subtf3+0x5b8>
   19812:	e785                	bnez	a5,1983a <__subtf3+0x560>
   19814:	d026                	sw	s1,32(sp)
   19816:	d25e                	sw	s7,36(sp)
   19818:	d462                	sw	s8,40(sp)
   1981a:	d65a                	sw	s6,44(sp)
   1981c:	5782                	lw	a5,32(sp)
   1981e:	5592                	lw	a1,36(sp)
   19820:	5622                	lw	a2,40(sp)
   19822:	56b2                	lw	a3,44(sp)
   19824:	00b7e733          	or	a4,a5,a1
   19828:	8f51                	or	a4,a4,a2
   1982a:	8f55                	or	a4,a4,a3
   1982c:	1a071de3          	bnez	a4,1a1e6 <__subtf3+0xf0c>
   19830:	4781                	li	a5,0
   19832:	4681                	li	a3,0
   19834:	4401                	li	s0,0
   19836:	21d0006f          	j	1a252 <__subtf3+0xf78>
   1983a:	018be7b3          	or	a5,s7,s8
   1983e:	0167e7b3          	or	a5,a5,s6
   19842:	8fc5                	or	a5,a5,s1
   19844:	e791                	bnez	a5,19850 <__subtf3+0x576>
   19846:	d03a                	sw	a4,32(sp)
   19848:	d232                	sw	a2,36(sp)
   1984a:	d436                	sw	a3,40(sp)
   1984c:	d62e                	sw	a1,44(sp)
   1984e:	b7f9                	j	1981c <__subtf3+0x542>
   19850:	94ba                	add	s1,s1,a4
   19852:	9bb2                	add	s7,s7,a2
   19854:	d026                	sw	s1,32(sp)
   19856:	00e4b4b3          	sltu	s1,s1,a4
   1985a:	94de                	add	s1,s1,s7
   1985c:	d226                	sw	s1,36(sp)
   1985e:	00cbb633          	sltu	a2,s7,a2
   19862:	0174b4b3          	sltu	s1,s1,s7
   19866:	9c36                	add	s8,s8,a3
   19868:	8e45                	or	a2,a2,s1
   1986a:	9662                	add	a2,a2,s8
   1986c:	d432                	sw	a2,40(sp)
   1986e:	00dc36b3          	sltu	a3,s8,a3
   19872:	01863633          	sltu	a2,a2,s8
   19876:	8ed1                	or	a3,a3,a2
   19878:	95da                	add	a1,a1,s6
   1987a:	96ae                	add	a3,a3,a1
   1987c:	00c69793          	slli	a5,a3,0xc
   19880:	3207d2e3          	bgez	a5,1a3a4 <__subtf3+0x10ca>
   19884:	fff807b7          	lui	a5,0xfff80
   19888:	17fd                	addi	a5,a5,-1 # fff7ffff <__BSS_END__+0xfff63373>
   1988a:	8efd                	and	a3,a3,a5
   1988c:	d636                	sw	a3,44(sp)
   1988e:	4785                	li	a5,1
   19890:	b3d9                	j	19656 <__subtf3+0x37c>
   19892:	6521                	lui	a0,0x8
   19894:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   19896:	04a41363          	bne	s0,a0,198dc <__subtf3+0x602>
   1989a:	300788e3          	beqz	a5,1a3aa <__subtf3+0x10d0>
   1989e:	0125d413          	srli	s0,a1,0x12
   198a2:	00144413          	xori	s0,s0,1
   198a6:	8805                	andi	s0,s0,1
   198a8:	0412                	slli	s0,s0,0x4
   198aa:	02aa9d63          	bne	s5,a0,198e4 <__subtf3+0x60a>
   198ae:	018be533          	or	a0,s7,s8
   198b2:	01656533          	or	a0,a0,s6
   198b6:	8d45                	or	a0,a0,s1
   198b8:	c50d                	beqz	a0,198e2 <__subtf3+0x608>
   198ba:	00db1513          	slli	a0,s6,0xd
   198be:	02054263          	bltz	a0,198e2 <__subtf3+0x608>
   198c2:	4441                	li	s0,16
   198c4:	eb85                	bnez	a5,198f4 <__subtf3+0x61a>
   198c6:	8726                	mv	a4,s1
   198c8:	865e                	mv	a2,s7
   198ca:	86e2                	mv	a3,s8
   198cc:	85da                	mv	a1,s6
   198ce:	d03a                	sw	a4,32(sp)
   198d0:	d232                	sw	a2,36(sp)
   198d2:	d436                	sw	a3,40(sp)
   198d4:	d62e                	sw	a1,44(sp)
   198d6:	67a1                	lui	a5,0x8
   198d8:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   198da:	bbb5                	j	19656 <__subtf3+0x37c>
   198dc:	4401                	li	s0,0
   198de:	fcaa88e3          	beq	s5,a0,198ae <__subtf3+0x5d4>
   198e2:	d3f5                	beqz	a5,198c6 <__subtf3+0x5ec>
   198e4:	018bebb3          	or	s7,s7,s8
   198e8:	016bebb3          	or	s7,s7,s6
   198ec:	009bebb3          	or	s7,s7,s1
   198f0:	fc0b8fe3          	beqz	s7,198ce <__subtf3+0x5f4>
   198f4:	67a1                	lui	a5,0x8
   198f6:	d63e                	sw	a5,44(sp)
   198f8:	d402                	sw	zero,40(sp)
   198fa:	d202                	sw	zero,36(sp)
   198fc:	d002                	sw	zero,32(sp)
   198fe:	101c                	addi	a5,sp,32
   19900:	0850                	addi	a2,sp,20
   19902:	47d8                	lw	a4,12(a5)
   19904:	4794                	lw	a3,8(a5)
   19906:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   19908:	070e                	slli	a4,a4,0x3
   1990a:	82f5                	srli	a3,a3,0x1d
   1990c:	8f55                	or	a4,a4,a3
   1990e:	cb98                	sw	a4,16(a5)
   19910:	fef619e3          	bne	a2,a5,19902 <__subtf3+0x628>
   19914:	4981                	li	s3,0
   19916:	b7c1                	j	198d6 <__subtf3+0x5fc>
   19918:	4401                	li	s0,0
   1991a:	bf51                	j	198ae <__subtf3+0x5d4>
   1991c:	94ba                	add	s1,s1,a4
   1991e:	9bb2                	add	s7,s7,a2
   19920:	d026                	sw	s1,32(sp)
   19922:	00e4b4b3          	sltu	s1,s1,a4
   19926:	94de                	add	s1,s1,s7
   19928:	d226                	sw	s1,36(sp)
   1992a:	00cbb633          	sltu	a2,s7,a2
   1992e:	0174b4b3          	sltu	s1,s1,s7
   19932:	9c36                	add	s8,s8,a3
   19934:	8e45                	or	a2,a2,s1
   19936:	9662                	add	a2,a2,s8
   19938:	d432                	sw	a2,40(sp)
   1993a:	00dc36b3          	sltu	a3,s8,a3
   1993e:	01863633          	sltu	a2,a2,s8
   19942:	8ed1                	or	a3,a3,a2
   19944:	95da                	add	a1,a1,s6
   19946:	96ae                	add	a3,a3,a1
   19948:	d636                	sw	a3,44(sp)
   1994a:	1018                	addi	a4,sp,32
   1994c:	1068                	addi	a0,sp,44
   1994e:	4310                	lw	a2,0(a4)
   19950:	434c                	lw	a1,4(a4)
   19952:	8205                	srli	a2,a2,0x1
   19954:	05fe                	slli	a1,a1,0x1f
   19956:	8e4d                	or	a2,a2,a1
   19958:	c310                	sw	a2,0(a4)
   1995a:	0711                	addi	a4,a4,4
   1995c:	fee519e3          	bne	a0,a4,1994e <__subtf3+0x674>
   19960:	6721                	lui	a4,0x8
   19962:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19964:	c6e782e3          	beq	a5,a4,195c8 <__subtf3+0x2ee>
   19968:	8285                	srli	a3,a3,0x1
   1996a:	d636                	sw	a3,44(sp)
   1996c:	4401                	li	s0,0
   1996e:	b1e5                	j	19656 <__subtf3+0x37c>
   19970:	4789                	li	a5,2
   19972:	c6fa12e3          	bne	s4,a5,195d6 <__subtf3+0x2fc>
   19976:	c60980e3          	beqz	s3,195d6 <__subtf3+0x2fc>
   1997a:	67a1                	lui	a5,0x8
   1997c:	d602                	sw	zero,44(sp)
   1997e:	d402                	sw	zero,40(sp)
   19980:	d202                	sw	zero,36(sp)
   19982:	d002                	sw	zero,32(sp)
   19984:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   19986:	4415                	li	s0,5
   19988:	b1f9                	j	19656 <__subtf3+0x37c>
   1998a:	22f05b63          	blez	a5,19bc0 <__subtf3+0x8e6>
   1998e:	4592                	lw	a1,4(sp)
   19990:	4522                	lw	a0,8(sp)
   19992:	48b2                	lw	a7,12(sp)
   19994:	0a0a9563          	bnez	s5,19a3e <__subtf3+0x764>
   19998:	4ed2                	lw	t4,20(sp)
   1999a:	4fe2                	lw	t6,24(sp)
   1999c:	4672                	lw	a2,28(sp)
   1999e:	01fee6b3          	or	a3,t4,t6
   199a2:	8ed1                	or	a3,a3,a2
   199a4:	8ec5                	or	a3,a3,s1
   199a6:	e69d                	bnez	a3,199d4 <__subtf3+0x6fa>
   199a8:	66a1                	lui	a3,0x8
   199aa:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   199ac:	00d79f63          	bne	a5,a3,199ca <__subtf3+0x6f0>
   199b0:	00a5e6b3          	or	a3,a1,a0
   199b4:	0116e6b3          	or	a3,a3,a7
   199b8:	8ed9                	or	a3,a3,a4
   199ba:	ca81                	beqz	a3,199ca <__subtf3+0x6f0>
   199bc:	0128da93          	srli	s5,a7,0x12
   199c0:	001aca93          	xori	s5,s5,1
   199c4:	001afa93          	andi	s5,s5,1
   199c8:	0a92                	slli	s5,s5,0x4
   199ca:	d03a                	sw	a4,32(sp)
   199cc:	d22e                	sw	a1,36(sp)
   199ce:	d42a                	sw	a0,40(sp)
   199d0:	d646                	sw	a7,44(sp)
   199d2:	b435                	j	193fe <__subtf3+0x124>
   199d4:	fff78f13          	addi	t5,a5,-1
   199d8:	040f1663          	bnez	t5,19a24 <__subtf3+0x74a>
   199dc:	409706b3          	sub	a3,a4,s1
   199e0:	41d58833          	sub	a6,a1,t4
   199e4:	00d73333          	sltu	t1,a4,a3
   199e8:	0105b7b3          	sltu	a5,a1,a6
   199ec:	40680833          	sub	a6,a6,t1
   199f0:	4301                	li	t1,0
   199f2:	00d77663          	bgeu	a4,a3,199fe <__subtf3+0x724>
   199f6:	40be8eb3          	sub	t4,t4,a1
   199fa:	001eb313          	seqz	t1,t4
   199fe:	00f36733          	or	a4,t1,a5
   19a02:	41f505b3          	sub	a1,a0,t6
   19a06:	00b53333          	sltu	t1,a0,a1
   19a0a:	8d99                	sub	a1,a1,a4
   19a0c:	c709                	beqz	a4,19a16 <__subtf3+0x73c>
   19a0e:	40af87b3          	sub	a5,t6,a0
   19a12:	0017bf13          	seqz	t5,a5
   19a16:	40c88733          	sub	a4,a7,a2
   19a1a:	006f67b3          	or	a5,t5,t1
   19a1e:	8f1d                	sub	a4,a4,a5
   19a20:	4785                	li	a5,1
   19a22:	aab9                	j	19b80 <__subtf3+0x8a6>
   19a24:	66a1                	lui	a3,0x8
   19a26:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19a28:	f8d784e3          	beq	a5,a3,199b0 <__subtf3+0x6d6>
   19a2c:	07400793          	li	a5,116
   19a30:	05e7d763          	bge	a5,t5,19a7e <__subtf3+0x7a4>
   19a34:	ce02                	sw	zero,28(sp)
   19a36:	cc02                	sw	zero,24(sp)
   19a38:	ca02                	sw	zero,20(sp)
   19a3a:	4685                	li	a3,1
   19a3c:	a8e5                	j	19b34 <__subtf3+0x85a>
   19a3e:	66a1                	lui	a3,0x8
   19a40:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19a42:	02d41463          	bne	s0,a3,19a6a <__subtf3+0x790>
   19a46:	00a5e7b3          	or	a5,a1,a0
   19a4a:	0117e7b3          	or	a5,a5,a7
   19a4e:	8fd9                	or	a5,a5,a4
   19a50:	4681                	li	a3,0
   19a52:	c799                	beqz	a5,19a60 <__subtf3+0x786>
   19a54:	0128d693          	srli	a3,a7,0x12
   19a58:	0016c693          	xori	a3,a3,1
   19a5c:	8a85                	andi	a3,a3,1
   19a5e:	0692                	slli	a3,a3,0x4
   19a60:	d03a                	sw	a4,32(sp)
   19a62:	d22e                	sw	a1,36(sp)
   19a64:	d42a                	sw	a0,40(sp)
   19a66:	d646                	sw	a7,44(sp)
   19a68:	bc09                	j	1947a <__subtf3+0x1a0>
   19a6a:	46f2                	lw	a3,28(sp)
   19a6c:	00080637          	lui	a2,0x80
   19a70:	8ed1                	or	a3,a3,a2
   19a72:	ce36                	sw	a3,28(sp)
   19a74:	07400693          	li	a3,116
   19a78:	faf6cee3          	blt	a3,a5,19a34 <__subtf3+0x75a>
   19a7c:	8f3e                	mv	t5,a5
   19a7e:	405f5793          	srai	a5,t5,0x5
   19a82:	8342                	mv	t1,a6
   19a84:	01ff7f13          	andi	t5,t5,31
   19a88:	4681                	li	a3,0
   19a8a:	4601                	li	a2,0
   19a8c:	02f61663          	bne	a2,a5,19ab8 <__subtf3+0x7de>
   19a90:	460d                	li	a2,3
   19a92:	8e1d                	sub	a2,a2,a5
   19a94:	00279313          	slli	t1,a5,0x2
   19a98:	020f1763          	bnez	t5,19ac6 <__subtf3+0x7ec>
   19a9c:	00680eb3          	add	t4,a6,t1
   19aa0:	000eae83          	lw	t4,0(t4)
   19aa4:	0f05                	addi	t5,t5,1
   19aa6:	0811                	addi	a6,a6,4
   19aa8:	ffd82e23          	sw	t4,-4(a6)
   19aac:	ffe658e3          	bge	a2,t5,19a9c <__subtf3+0x7c2>
   19ab0:	4611                	li	a2,4
   19ab2:	40f607b3          	sub	a5,a2,a5
   19ab6:	a881                	j	19b06 <__subtf3+0x82c>
   19ab8:	00032e83          	lw	t4,0(t1)
   19abc:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x63375>
   19abe:	0311                	addi	t1,t1,4
   19ac0:	01d6e6b3          	or	a3,a3,t4
   19ac4:	b7e1                	j	19a8c <__subtf3+0x7b2>
   19ac6:	04030493          	addi	s1,t1,64
   19aca:	00248eb3          	add	t4,s1,sp
   19ace:	fd0eae83          	lw	t4,-48(t4)
   19ad2:	02000393          	li	t2,32
   19ad6:	41e383b3          	sub	t2,t2,t5
   19ada:	007e9eb3          	sll	t4,t4,t2
   19ade:	981a                	add	a6,a6,t1
   19ae0:	01d6e6b3          	or	a3,a3,t4
   19ae4:	40600333          	neg	t1,t1
   19ae8:	4f81                	li	t6,0
   19aea:	0acfca63          	blt	t6,a2,19b9e <__subtf3+0x8c4>
   19aee:	4811                	li	a6,4
   19af0:	40f807b3          	sub	a5,a6,a5
   19af4:	4872                	lw	a6,28(sp)
   19af6:	060a                	slli	a2,a2,0x2
   19af8:	04060613          	addi	a2,a2,64
   19afc:	960a                	add	a2,a2,sp
   19afe:	01e85833          	srl	a6,a6,t5
   19b02:	fd062823          	sw	a6,-48(a2)
   19b06:	4611                	li	a2,4
   19b08:	8e1d                	sub	a2,a2,a5
   19b0a:	060a                	slli	a2,a2,0x2
   19b0c:	078a                	slli	a5,a5,0x2
   19b0e:	4821                	li	a6,8
   19b10:	97f2                	add	a5,a5,t3
   19b12:	01066863          	bltu	a2,a6,19b22 <__subtf3+0x848>
   19b16:	0007a023          	sw	zero,0(a5)
   19b1a:	0007a223          	sw	zero,4(a5)
   19b1e:	1661                	addi	a2,a2,-8
   19b20:	07a1                	addi	a5,a5,8
   19b22:	4811                	li	a6,4
   19b24:	01066463          	bltu	a2,a6,19b2c <__subtf3+0x852>
   19b28:	0007a023          	sw	zero,0(a5)
   19b2c:	47c2                	lw	a5,16(sp)
   19b2e:	00d036b3          	snez	a3,a3
   19b32:	8edd                	or	a3,a3,a5
   19b34:	4652                	lw	a2,20(sp)
   19b36:	c836                	sw	a3,16(sp)
   19b38:	40d706b3          	sub	a3,a4,a3
   19b3c:	40c58833          	sub	a6,a1,a2
   19b40:	00d737b3          	sltu	a5,a4,a3
   19b44:	0105b333          	sltu	t1,a1,a6
   19b48:	40f80833          	sub	a6,a6,a5
   19b4c:	4781                	li	a5,0
   19b4e:	00d77563          	bgeu	a4,a3,19b58 <__subtf3+0x87e>
   19b52:	8e0d                	sub	a2,a2,a1
   19b54:	00163793          	seqz	a5,a2
   19b58:	4762                	lw	a4,24(sp)
   19b5a:	0067e7b3          	or	a5,a5,t1
   19b5e:	4601                	li	a2,0
   19b60:	40e505b3          	sub	a1,a0,a4
   19b64:	00b53333          	sltu	t1,a0,a1
   19b68:	8d9d                	sub	a1,a1,a5
   19b6a:	c781                	beqz	a5,19b72 <__subtf3+0x898>
   19b6c:	8f09                	sub	a4,a4,a0
   19b6e:	00173613          	seqz	a2,a4
   19b72:	4772                	lw	a4,28(sp)
   19b74:	00666633          	or	a2,a2,t1
   19b78:	87a2                	mv	a5,s0
   19b7a:	40e88733          	sub	a4,a7,a4
   19b7e:	8f11                	sub	a4,a4,a2
   19b80:	d036                	sw	a3,32(sp)
   19b82:	d63a                	sw	a4,44(sp)
   19b84:	d42e                	sw	a1,40(sp)
   19b86:	d242                	sw	a6,36(sp)
   19b88:	00c71693          	slli	a3,a4,0xc
   19b8c:	de06d0e3          	bgez	a3,1996c <__subtf3+0x692>
   19b90:	000806b7          	lui	a3,0x80
   19b94:	16fd                	addi	a3,a3,-1 # 7ffff <__BSS_END__+0x63373>
   19b96:	8f75                	and	a4,a4,a3
   19b98:	d63a                	sw	a4,44(sp)
   19b9a:	843e                	mv	s0,a5
   19b9c:	a1bd                	j	1a00a <__subtf3+0xd30>
   19b9e:	00082e83          	lw	t4,0(a6)
   19ba2:	00482283          	lw	t0,4(a6)
   19ba6:	006804b3          	add	s1,a6,t1
   19baa:	01eedeb3          	srl	t4,t4,t5
   19bae:	007292b3          	sll	t0,t0,t2
   19bb2:	005eeeb3          	or	t4,t4,t0
   19bb6:	01d4a023          	sw	t4,0(s1)
   19bba:	0f85                	addi	t6,t6,1
   19bbc:	0811                	addi	a6,a6,4
   19bbe:	b735                	j	19aea <__subtf3+0x810>
   19bc0:	4bd2                	lw	s7,20(sp)
   19bc2:	4b62                	lw	s6,24(sp)
   19bc4:	4c72                	lw	s8,28(sp)
   19bc6:	20078763          	beqz	a5,19dd4 <__subtf3+0xafa>
   19bca:	408a87b3          	sub	a5,s5,s0
   19bce:	e05d                	bnez	s0,19c74 <__subtf3+0x99a>
   19bd0:	4892                	lw	a7,4(sp)
   19bd2:	4e22                	lw	t3,8(sp)
   19bd4:	4632                	lw	a2,12(sp)
   19bd6:	01c8e6b3          	or	a3,a7,t3
   19bda:	8ed1                	or	a3,a3,a2
   19bdc:	8ed9                	or	a3,a3,a4
   19bde:	e69d                	bnez	a3,19c0c <__subtf3+0x932>
   19be0:	6721                	lui	a4,0x8
   19be2:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19be4:	00e79e63          	bne	a5,a4,19c00 <__subtf3+0x926>
   19be8:	016be733          	or	a4,s7,s6
   19bec:	01876733          	or	a4,a4,s8
   19bf0:	8f45                	or	a4,a4,s1
   19bf2:	c719                	beqz	a4,19c00 <__subtf3+0x926>
   19bf4:	012c5413          	srli	s0,s8,0x12
   19bf8:	00144413          	xori	s0,s0,1
   19bfc:	8805                	andi	s0,s0,1
   19bfe:	0412                	slli	s0,s0,0x4
   19c00:	d026                	sw	s1,32(sp)
   19c02:	d25e                	sw	s7,36(sp)
   19c04:	d45a                	sw	s6,40(sp)
   19c06:	d662                	sw	s8,44(sp)
   19c08:	89e6                	mv	s3,s9
   19c0a:	b4b1                	j	19656 <__subtf3+0x37c>
   19c0c:	fff78313          	addi	t1,a5,-1
   19c10:	04031563          	bnez	t1,19c5a <__subtf3+0x980>
   19c14:	40e486b3          	sub	a3,s1,a4
   19c18:	411b8833          	sub	a6,s7,a7
   19c1c:	00d4b733          	sltu	a4,s1,a3
   19c20:	010bb7b3          	sltu	a5,s7,a6
   19c24:	40e80833          	sub	a6,a6,a4
   19c28:	4701                	li	a4,0
   19c2a:	00d4f663          	bgeu	s1,a3,19c36 <__subtf3+0x95c>
   19c2e:	417888b3          	sub	a7,a7,s7
   19c32:	0018b713          	seqz	a4,a7
   19c36:	41cb05b3          	sub	a1,s6,t3
   19c3a:	8f5d                	or	a4,a4,a5
   19c3c:	00bb3533          	sltu	a0,s6,a1
   19c40:	8d99                	sub	a1,a1,a4
   19c42:	c709                	beqz	a4,19c4c <__subtf3+0x972>
   19c44:	416e07b3          	sub	a5,t3,s6
   19c48:	0017b313          	seqz	t1,a5
   19c4c:	40cc0733          	sub	a4,s8,a2
   19c50:	00a367b3          	or	a5,t1,a0
   19c54:	8f1d                	sub	a4,a4,a5
   19c56:	89e6                	mv	s3,s9
   19c58:	b3e1                	j	19a20 <__subtf3+0x746>
   19c5a:	6721                	lui	a4,0x8
   19c5c:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19c5e:	f8e785e3          	beq	a5,a4,19be8 <__subtf3+0x90e>
   19c62:	07400793          	li	a5,116
   19c66:	0467d863          	bge	a5,t1,19cb6 <__subtf3+0x9dc>
   19c6a:	c602                	sw	zero,12(sp)
   19c6c:	c402                	sw	zero,8(sp)
   19c6e:	c202                	sw	zero,4(sp)
   19c70:	4685                	li	a3,1
   19c72:	a8cd                	j	19d64 <__subtf3+0xa8a>
   19c74:	6721                	lui	a4,0x8
   19c76:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19c78:	02ea9563          	bne	s5,a4,19ca2 <__subtf3+0x9c8>
   19c7c:	016be7b3          	or	a5,s7,s6
   19c80:	0187e7b3          	or	a5,a5,s8
   19c84:	8fc5                	or	a5,a5,s1
   19c86:	4401                	li	s0,0
   19c88:	c799                	beqz	a5,19c96 <__subtf3+0x9bc>
   19c8a:	012c5413          	srli	s0,s8,0x12
   19c8e:	00144413          	xori	s0,s0,1
   19c92:	8805                	andi	s0,s0,1
   19c94:	0412                	slli	s0,s0,0x4
   19c96:	d026                	sw	s1,32(sp)
   19c98:	d25e                	sw	s7,36(sp)
   19c9a:	d45a                	sw	s6,40(sp)
   19c9c:	d662                	sw	s8,44(sp)
   19c9e:	87d6                	mv	a5,s5
   19ca0:	b7a5                	j	19c08 <__subtf3+0x92e>
   19ca2:	4732                	lw	a4,12(sp)
   19ca4:	000806b7          	lui	a3,0x80
   19ca8:	8f55                	or	a4,a4,a3
   19caa:	c63a                	sw	a4,12(sp)
   19cac:	07400713          	li	a4,116
   19cb0:	faf74de3          	blt	a4,a5,19c6a <__subtf3+0x990>
   19cb4:	833e                	mv	t1,a5
   19cb6:	02000793          	li	a5,32
   19cba:	02f347b3          	div	a5,t1,a5
   19cbe:	86ae                	mv	a3,a1
   19cc0:	4401                	li	s0,0
   19cc2:	4701                	li	a4,0
   19cc4:	02f74663          	blt	a4,a5,19cf0 <__subtf3+0xa16>
   19cc8:	470d                	li	a4,3
   19cca:	01f37813          	andi	a6,t1,31
   19cce:	8f1d                	sub	a4,a4,a5
   19cd0:	00279613          	slli	a2,a5,0x2
   19cd4:	02081363          	bnez	a6,19cfa <__subtf3+0xa20>
   19cd8:	00c586b3          	add	a3,a1,a2
   19cdc:	4294                	lw	a3,0(a3)
   19cde:	0805                	addi	a6,a6,1
   19ce0:	c194                	sw	a3,0(a1)
   19ce2:	0591                	addi	a1,a1,4
   19ce4:	ff075ae3          	bge	a4,a6,19cd8 <__subtf3+0x9fe>
   19ce8:	4711                	li	a4,4
   19cea:	40f707b3          	sub	a5,a4,a5
   19cee:	a899                	j	19d44 <__subtf3+0xa6a>
   19cf0:	4290                	lw	a2,0(a3)
   19cf2:	0705                	addi	a4,a4,1
   19cf4:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x63378>
   19cf6:	8c51                	or	s0,s0,a2
   19cf8:	b7f1                	j	19cc4 <__subtf3+0x9ea>
   19cfa:	02000693          	li	a3,32
   19cfe:	02d36333          	rem	t1,t1,a3
   19d02:	40668333          	sub	t1,a3,t1
   19d06:	86be                	mv	a3,a5
   19d08:	0007d363          	bgez	a5,19d0e <__subtf3+0xa34>
   19d0c:	4681                	li	a3,0
   19d0e:	068a                	slli	a3,a3,0x2
   19d10:	04068693          	addi	a3,a3,64
   19d14:	968a                	add	a3,a3,sp
   19d16:	fc06a683          	lw	a3,-64(a3)
   19d1a:	95b2                	add	a1,a1,a2
   19d1c:	4881                	li	a7,0
   19d1e:	006696b3          	sll	a3,a3,t1
   19d22:	8c55                	or	s0,s0,a3
   19d24:	40c00633          	neg	a2,a2
   19d28:	08e8c663          	blt	a7,a4,19db4 <__subtf3+0xada>
   19d2c:	4691                	li	a3,4
   19d2e:	40f687b3          	sub	a5,a3,a5
   19d32:	46b2                	lw	a3,12(sp)
   19d34:	070a                	slli	a4,a4,0x2
   19d36:	04070713          	addi	a4,a4,64
   19d3a:	970a                	add	a4,a4,sp
   19d3c:	0106d6b3          	srl	a3,a3,a6
   19d40:	fcd72023          	sw	a3,-64(a4)
   19d44:	0057a713          	slti	a4,a5,5
   19d48:	4601                	li	a2,0
   19d4a:	c701                	beqz	a4,19d52 <__subtf3+0xa78>
   19d4c:	4611                	li	a2,4
   19d4e:	8e1d                	sub	a2,a2,a5
   19d50:	060a                	slli	a2,a2,0x2
   19d52:	078a                	slli	a5,a5,0x2
   19d54:	953e                	add	a0,a0,a5
   19d56:	4581                	li	a1,0
   19d58:	e7ef70ef          	jal	113d6 <memset>
   19d5c:	4782                	lw	a5,0(sp)
   19d5e:	008036b3          	snez	a3,s0
   19d62:	8edd                	or	a3,a3,a5
   19d64:	4712                	lw	a4,4(sp)
   19d66:	c036                	sw	a3,0(sp)
   19d68:	40d486b3          	sub	a3,s1,a3
   19d6c:	40eb8833          	sub	a6,s7,a4
   19d70:	00d4b7b3          	sltu	a5,s1,a3
   19d74:	010bb633          	sltu	a2,s7,a6
   19d78:	40f80833          	sub	a6,a6,a5
   19d7c:	4781                	li	a5,0
   19d7e:	00d4f663          	bgeu	s1,a3,19d8a <__subtf3+0xab0>
   19d82:	41770733          	sub	a4,a4,s7
   19d86:	00173793          	seqz	a5,a4
   19d8a:	4722                	lw	a4,8(sp)
   19d8c:	8fd1                	or	a5,a5,a2
   19d8e:	4601                	li	a2,0
   19d90:	40eb05b3          	sub	a1,s6,a4
   19d94:	00bb3533          	sltu	a0,s6,a1
   19d98:	8d9d                	sub	a1,a1,a5
   19d9a:	c789                	beqz	a5,19da4 <__subtf3+0xaca>
   19d9c:	41670733          	sub	a4,a4,s6
   19da0:	00173613          	seqz	a2,a4
   19da4:	4732                	lw	a4,12(sp)
   19da6:	8e49                	or	a2,a2,a0
   19da8:	87d6                	mv	a5,s5
   19daa:	40ec0733          	sub	a4,s8,a4
   19dae:	8f11                	sub	a4,a4,a2
   19db0:	89e6                	mv	s3,s9
   19db2:	b3f9                	j	19b80 <__subtf3+0x8a6>
   19db4:	4194                	lw	a3,0(a1)
   19db6:	0045ae03          	lw	t3,4(a1)
   19dba:	00c58eb3          	add	t4,a1,a2
   19dbe:	0106d6b3          	srl	a3,a3,a6
   19dc2:	006e1e33          	sll	t3,t3,t1
   19dc6:	01c6e6b3          	or	a3,a3,t3
   19dca:	00dea023          	sw	a3,0(t4)
   19dce:	0885                	addi	a7,a7,1
   19dd0:	0591                	addi	a1,a1,4
   19dd2:	bf99                	j	19d28 <__subtf3+0xa4e>
   19dd4:	00140693          	addi	a3,s0,1
   19dd8:	01169813          	slli	a6,a3,0x11
   19ddc:	01285813          	srli	a6,a6,0x12
   19de0:	4612                	lw	a2,4(sp)
   19de2:	45a2                	lw	a1,8(sp)
   19de4:	4532                	lw	a0,12(sp)
   19de6:	18081363          	bnez	a6,19f6c <__subtf3+0xc92>
   19dea:	016be7b3          	or	a5,s7,s6
   19dee:	00b666b3          	or	a3,a2,a1
   19df2:	0187e7b3          	or	a5,a5,s8
   19df6:	8ec9                	or	a3,a3,a0
   19df8:	8fc5                	or	a5,a5,s1
   19dfa:	8ed9                	or	a3,a3,a4
   19dfc:	e869                	bnez	s0,19ece <__subtf3+0xbf4>
   19dfe:	ea99                	bnez	a3,19e14 <__subtf3+0xb3a>
   19e00:	d026                	sw	s1,32(sp)
   19e02:	d25e                	sw	s7,36(sp)
   19e04:	d45a                	sw	s6,40(sp)
   19e06:	d662                	sw	s8,44(sp)
   19e08:	ebcd                	bnez	a5,19eba <__subtf3+0xbe0>
   19e0a:	ffea0993          	addi	s3,s4,-2
   19e0e:	0019b993          	seqz	s3,s3
   19e12:	b429                	j	1981c <__subtf3+0x542>
   19e14:	e791                	bnez	a5,19e20 <__subtf3+0xb46>
   19e16:	d03a                	sw	a4,32(sp)
   19e18:	d232                	sw	a2,36(sp)
   19e1a:	d42e                	sw	a1,40(sp)
   19e1c:	d62a                	sw	a0,44(sp)
   19e1e:	bafd                	j	1981c <__subtf3+0x542>
   19e20:	409707b3          	sub	a5,a4,s1
   19e24:	41760e33          	sub	t3,a2,s7
   19e28:	00f73833          	sltu	a6,a4,a5
   19e2c:	01c638b3          	sltu	a7,a2,t3
   19e30:	410e0833          	sub	a6,t3,a6
   19e34:	4681                	li	a3,0
   19e36:	00f77463          	bgeu	a4,a5,19e3e <__subtf3+0xb64>
   19e3a:	001e3693          	seqz	a3,t3
   19e3e:	0116e6b3          	or	a3,a3,a7
   19e42:	416588b3          	sub	a7,a1,s6
   19e46:	0115bf33          	sltu	t5,a1,a7
   19e4a:	40d88eb3          	sub	t4,a7,a3
   19e4e:	4301                	li	t1,0
   19e50:	c299                	beqz	a3,19e56 <__subtf3+0xb7c>
   19e52:	0018b313          	seqz	t1,a7
   19e56:	01e36333          	or	t1,t1,t5
   19e5a:	418506b3          	sub	a3,a0,s8
   19e5e:	406686b3          	sub	a3,a3,t1
   19e62:	d636                	sw	a3,44(sp)
   19e64:	d476                	sw	t4,40(sp)
   19e66:	d242                	sw	a6,36(sp)
   19e68:	d03e                	sw	a5,32(sp)
   19e6a:	00c69313          	slli	t1,a3,0xc
   19e6e:	04035863          	bgez	t1,19ebe <__subtf3+0xbe4>
   19e72:	40e48733          	sub	a4,s1,a4
   19e76:	40cb8633          	sub	a2,s7,a2
   19e7a:	00e4b7b3          	sltu	a5,s1,a4
   19e7e:	00cbbbb3          	sltu	s7,s7,a2
   19e82:	8e1d                	sub	a2,a2,a5
   19e84:	4781                	li	a5,0
   19e86:	00e4f463          	bgeu	s1,a4,19e8e <__subtf3+0xbb4>
   19e8a:	001e3793          	seqz	a5,t3
   19e8e:	40bb05b3          	sub	a1,s6,a1
   19e92:	0177ebb3          	or	s7,a5,s7
   19e96:	00bb3b33          	sltu	s6,s6,a1
   19e9a:	417585b3          	sub	a1,a1,s7
   19e9e:	000b8463          	beqz	s7,19ea6 <__subtf3+0xbcc>
   19ea2:	0018b413          	seqz	s0,a7
   19ea6:	40ac0533          	sub	a0,s8,a0
   19eaa:	01646b33          	or	s6,s0,s6
   19eae:	41650533          	sub	a0,a0,s6
   19eb2:	d62a                	sw	a0,44(sp)
   19eb4:	d42e                	sw	a1,40(sp)
   19eb6:	d232                	sw	a2,36(sp)
   19eb8:	d03a                	sw	a4,32(sp)
   19eba:	89e6                	mv	s3,s9
   19ebc:	b285                	j	1981c <__subtf3+0x542>
   19ebe:	0107e7b3          	or	a5,a5,a6
   19ec2:	01d7e7b3          	or	a5,a5,t4
   19ec6:	8fd5                	or	a5,a5,a3
   19ec8:	94079ae3          	bnez	a5,1981c <__subtf3+0x542>
   19ecc:	bf3d                	j	19e0a <__subtf3+0xb30>
   19ece:	6821                	lui	a6,0x8
   19ed0:	187d                	addi	a6,a6,-1 # 7fff <exit-0x8095>
   19ed2:	03041263          	bne	s0,a6,19ef6 <__subtf3+0xc1c>
   19ed6:	4c068f63          	beqz	a3,1a3b4 <__subtf3+0x10da>
   19eda:	01255413          	srli	s0,a0,0x12
   19ede:	00144413          	xori	s0,s0,1
   19ee2:	8805                	andi	s0,s0,1
   19ee4:	0412                	slli	s0,s0,0x4
   19ee6:	010a8b63          	beq	s5,a6,19efc <__subtf3+0xc22>
   19eea:	ebb1                	bnez	a5,19f3e <__subtf3+0xc64>
   19eec:	d03a                	sw	a4,32(sp)
   19eee:	d232                	sw	a2,36(sp)
   19ef0:	d42e                	sw	a1,40(sp)
   19ef2:	d62a                	sw	a0,44(sp)
   19ef4:	b2cd                	j	198d6 <__subtf3+0x5fc>
   19ef6:	4401                	li	s0,0
   19ef8:	010a9363          	bne	s5,a6,19efe <__subtf3+0xc24>
   19efc:	eb9d                	bnez	a5,19f32 <__subtf3+0xc58>
   19efe:	f6f5                	bnez	a3,19eea <__subtf3+0xc10>
   19f00:	e3a5                	bnez	a5,19f60 <__subtf3+0xc86>
   19f02:	67a1                	lui	a5,0x8
   19f04:	d63e                	sw	a5,44(sp)
   19f06:	d402                	sw	zero,40(sp)
   19f08:	d202                	sw	zero,36(sp)
   19f0a:	d002                	sw	zero,32(sp)
   19f0c:	101c                	addi	a5,sp,32
   19f0e:	0850                	addi	a2,sp,20
   19f10:	47d8                	lw	a4,12(a5)
   19f12:	4794                	lw	a3,8(a5)
   19f14:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   19f16:	070e                	slli	a4,a4,0x3
   19f18:	82f5                	srli	a3,a3,0x1d
   19f1a:	8f55                	or	a4,a4,a3
   19f1c:	cb98                	sw	a4,16(a5)
   19f1e:	fef619e3          	bne	a2,a5,19f10 <__subtf3+0xc36>
   19f22:	67a1                	lui	a5,0x8
   19f24:	4981                	li	s3,0
   19f26:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   19f28:	4441                	li	s0,16
   19f2a:	f2cff06f          	j	19656 <__subtf3+0x37c>
   19f2e:	4401                	li	s0,0
   19f30:	b7f1                	j	19efc <__subtf3+0xc22>
   19f32:	00dc1813          	slli	a6,s8,0xd
   19f36:	fc0844e3          	bltz	a6,19efe <__subtf3+0xc24>
   19f3a:	4441                	li	s0,16
   19f3c:	c295                	beqz	a3,19f60 <__subtf3+0xc86>
   19f3e:	67a1                	lui	a5,0x8
   19f40:	d63e                	sw	a5,44(sp)
   19f42:	d402                	sw	zero,40(sp)
   19f44:	d202                	sw	zero,36(sp)
   19f46:	d002                	sw	zero,32(sp)
   19f48:	101c                	addi	a5,sp,32
   19f4a:	0850                	addi	a2,sp,20
   19f4c:	47d8                	lw	a4,12(a5)
   19f4e:	4794                	lw	a3,8(a5)
   19f50:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   19f52:	070e                	slli	a4,a4,0x3
   19f54:	82f5                	srli	a3,a3,0x1d
   19f56:	8f55                	or	a4,a4,a3
   19f58:	cb98                	sw	a4,16(a5)
   19f5a:	fef619e3          	bne	a2,a5,19f4c <__subtf3+0xc72>
   19f5e:	ba5d                	j	19914 <__subtf3+0x63a>
   19f60:	d026                	sw	s1,32(sp)
   19f62:	d25e                	sw	s7,36(sp)
   19f64:	d45a                	sw	s6,40(sp)
   19f66:	d662                	sw	s8,44(sp)
   19f68:	89e6                	mv	s3,s9
   19f6a:	b2b5                	j	198d6 <__subtf3+0x5fc>
   19f6c:	409706b3          	sub	a3,a4,s1
   19f70:	41760e33          	sub	t3,a2,s7
   19f74:	00d73eb3          	sltu	t4,a4,a3
   19f78:	01c638b3          	sltu	a7,a2,t3
   19f7c:	41de0eb3          	sub	t4,t3,t4
   19f80:	4801                	li	a6,0
   19f82:	00d77463          	bgeu	a4,a3,19f8a <__subtf3+0xcb0>
   19f86:	001e3813          	seqz	a6,t3
   19f8a:	01186833          	or	a6,a6,a7
   19f8e:	416588b3          	sub	a7,a1,s6
   19f92:	0115bf33          	sltu	t5,a1,a7
   19f96:	41088fb3          	sub	t6,a7,a6
   19f9a:	4301                	li	t1,0
   19f9c:	00080463          	beqz	a6,19fa4 <__subtf3+0xcca>
   19fa0:	0018b313          	seqz	t1,a7
   19fa4:	01e36333          	or	t1,t1,t5
   19fa8:	41850833          	sub	a6,a0,s8
   19fac:	40680833          	sub	a6,a6,t1
   19fb0:	d642                	sw	a6,44(sp)
   19fb2:	d47e                	sw	t6,40(sp)
   19fb4:	d276                	sw	t4,36(sp)
   19fb6:	d036                	sw	a3,32(sp)
   19fb8:	00c81313          	slli	t1,a6,0xc
   19fbc:	10035163          	bgez	t1,1a0be <__subtf3+0xde4>
   19fc0:	40e48733          	sub	a4,s1,a4
   19fc4:	40cb8633          	sub	a2,s7,a2
   19fc8:	00e4b6b3          	sltu	a3,s1,a4
   19fcc:	00cbbbb3          	sltu	s7,s7,a2
   19fd0:	8e15                	sub	a2,a2,a3
   19fd2:	4681                	li	a3,0
   19fd4:	00e4f463          	bgeu	s1,a4,19fdc <__subtf3+0xd02>
   19fd8:	001e3693          	seqz	a3,t3
   19fdc:	40bb05b3          	sub	a1,s6,a1
   19fe0:	0176ebb3          	or	s7,a3,s7
   19fe4:	00bb3b33          	sltu	s6,s6,a1
   19fe8:	417585b3          	sub	a1,a1,s7
   19fec:	000b8463          	beqz	s7,19ff4 <__subtf3+0xd1a>
   19ff0:	0018b793          	seqz	a5,a7
   19ff4:	40ac0533          	sub	a0,s8,a0
   19ff8:	0167eb33          	or	s6,a5,s6
   19ffc:	41650533          	sub	a0,a0,s6
   1a000:	d62a                	sw	a0,44(sp)
   1a002:	d42e                	sw	a1,40(sp)
   1a004:	d232                	sw	a2,36(sp)
   1a006:	d03a                	sw	a4,32(sp)
   1a008:	89e6                	mv	s3,s9
   1a00a:	5532                	lw	a0,44(sp)
   1a00c:	c169                	beqz	a0,1a0ce <__subtf3+0xdf4>
   1a00e:	7dc000ef          	jal	1a7ea <__clzsi2>
   1a012:	ff450793          	addi	a5,a0,-12
   1a016:	02000693          	li	a3,32
   1a01a:	01f7f813          	andi	a6,a5,31
   1a01e:	02d7c733          	div	a4,a5,a3
   1a022:	0c080763          	beqz	a6,1a0f0 <__subtf3+0xe16>
   1a026:	02010313          	addi	t1,sp,32
   1a02a:	02d7e633          	rem	a2,a5,a3
   1a02e:	40c685b3          	sub	a1,a3,a2
   1a032:	5671                	li	a2,-4
   1a034:	02c70633          	mul	a2,a4,a2
   1a038:	00c60693          	addi	a3,a2,12
   1a03c:	969a                	add	a3,a3,t1
   1a03e:	40c00633          	neg	a2,a2
   1a042:	0cd31763          	bne	t1,a3,1a110 <__subtf3+0xe36>
   1a046:	5602                	lw	a2,32(sp)
   1a048:	fff70693          	addi	a3,a4,-1
   1a04c:	070a                	slli	a4,a4,0x2
   1a04e:	04070713          	addi	a4,a4,64
   1a052:	970a                	add	a4,a4,sp
   1a054:	01061633          	sll	a2,a2,a6
   1a058:	fec72023          	sw	a2,-32(a4)
   1a05c:	00168713          	addi	a4,a3,1
   1a060:	070a                	slli	a4,a4,0x2
   1a062:	1014                	addi	a3,sp,32
   1a064:	4621                	li	a2,8
   1a066:	88b6                	mv	a7,a3
   1a068:	00c76863          	bltu	a4,a2,1a078 <__subtf3+0xd9e>
   1a06c:	0006a023          	sw	zero,0(a3)
   1a070:	0006a223          	sw	zero,4(a3)
   1a074:	1761                	addi	a4,a4,-8
   1a076:	1034                	addi	a3,sp,40
   1a078:	4611                	li	a2,4
   1a07a:	00c76463          	bltu	a4,a2,1a082 <__subtf3+0xda8>
   1a07e:	0006a023          	sw	zero,0(a3)
   1a082:	1487c863          	blt	a5,s0,1a1d2 <__subtf3+0xef8>
   1a086:	8f81                	sub	a5,a5,s0
   1a088:	0785                	addi	a5,a5,1
   1a08a:	4057d713          	srai	a4,a5,0x5
   1a08e:	85c6                	mv	a1,a7
   1a090:	8bfd                	andi	a5,a5,31
   1a092:	8646                	mv	a2,a7
   1a094:	4301                	li	t1,0
   1a096:	4681                	li	a3,0
   1a098:	08e69b63          	bne	a3,a4,1a12e <__subtf3+0xe54>
   1a09c:	468d                	li	a3,3
   1a09e:	8e99                	sub	a3,a3,a4
   1a0a0:	00271613          	slli	a2,a4,0x2
   1a0a4:	ebd9                	bnez	a5,1a13a <__subtf3+0xe60>
   1a0a6:	00c58533          	add	a0,a1,a2
   1a0aa:	4108                	lw	a0,0(a0)
   1a0ac:	0785                	addi	a5,a5,1
   1a0ae:	c188                	sw	a0,0(a1)
   1a0b0:	0591                	addi	a1,a1,4
   1a0b2:	fef6dae3          	bge	a3,a5,1a0a6 <__subtf3+0xdcc>
   1a0b6:	4791                	li	a5,4
   1a0b8:	40e78733          	sub	a4,a5,a4
   1a0bc:	a87d                	j	1a17a <__subtf3+0xea0>
   1a0be:	01d6e6b3          	or	a3,a3,t4
   1a0c2:	01f6e6b3          	or	a3,a3,t6
   1a0c6:	0106e6b3          	or	a3,a3,a6
   1a0ca:	f2a1                	bnez	a3,1a00a <__subtf3+0xd30>
   1a0cc:	bb3d                	j	19e0a <__subtf3+0xb30>
   1a0ce:	5522                	lw	a0,40(sp)
   1a0d0:	c509                	beqz	a0,1a0da <__subtf3+0xe00>
   1a0d2:	2f21                	jal	1a7ea <__clzsi2>
   1a0d4:	02050513          	addi	a0,a0,32
   1a0d8:	bf2d                	j	1a012 <__subtf3+0xd38>
   1a0da:	5512                	lw	a0,36(sp)
   1a0dc:	c509                	beqz	a0,1a0e6 <__subtf3+0xe0c>
   1a0de:	2731                	jal	1a7ea <__clzsi2>
   1a0e0:	04050513          	addi	a0,a0,64
   1a0e4:	b73d                	j	1a012 <__subtf3+0xd38>
   1a0e6:	5502                	lw	a0,32(sp)
   1a0e8:	2709                	jal	1a7ea <__clzsi2>
   1a0ea:	06050513          	addi	a0,a0,96
   1a0ee:	b715                	j	1a012 <__subtf3+0xd38>
   1a0f0:	55f1                	li	a1,-4
   1a0f2:	02b705b3          	mul	a1,a4,a1
   1a0f6:	1074                	addi	a3,sp,44
   1a0f8:	460d                	li	a2,3
   1a0fa:	00b68533          	add	a0,a3,a1
   1a0fe:	4108                	lw	a0,0(a0)
   1a100:	167d                	addi	a2,a2,-1
   1a102:	16f1                	addi	a3,a3,-4
   1a104:	c2c8                	sw	a0,4(a3)
   1a106:	fee65ae3          	bge	a2,a4,1a0fa <__subtf3+0xe20>
   1a10a:	fff70693          	addi	a3,a4,-1
   1a10e:	b7b9                	j	1a05c <__subtf3+0xd82>
   1a110:	4288                	lw	a0,0(a3)
   1a112:	ffc6a883          	lw	a7,-4(a3)
   1a116:	00c68e33          	add	t3,a3,a2
   1a11a:	01051533          	sll	a0,a0,a6
   1a11e:	00b8d8b3          	srl	a7,a7,a1
   1a122:	01156533          	or	a0,a0,a7
   1a126:	00ae2023          	sw	a0,0(t3)
   1a12a:	16f1                	addi	a3,a3,-4
   1a12c:	bf19                	j	1a042 <__subtf3+0xd68>
   1a12e:	4208                	lw	a0,0(a2)
   1a130:	0685                	addi	a3,a3,1
   1a132:	0611                	addi	a2,a2,4
   1a134:	00a36333          	or	t1,t1,a0
   1a138:	b785                	j	1a098 <__subtf3+0xdbe>
   1a13a:	04060593          	addi	a1,a2,64
   1a13e:	958a                	add	a1,a1,sp
   1a140:	fe05a583          	lw	a1,-32(a1)
   1a144:	02000813          	li	a6,32
   1a148:	40f80833          	sub	a6,a6,a5
   1a14c:	010595b3          	sll	a1,a1,a6
   1a150:	00b36333          	or	t1,t1,a1
   1a154:	4e01                	li	t3,0
   1a156:	00c885b3          	add	a1,a7,a2
   1a15a:	40c00633          	neg	a2,a2
   1a15e:	04de4a63          	blt	t3,a3,1a1b2 <__subtf3+0xed8>
   1a162:	4611                	li	a2,4
   1a164:	40e60733          	sub	a4,a2,a4
   1a168:	5632                	lw	a2,44(sp)
   1a16a:	068a                	slli	a3,a3,0x2
   1a16c:	04068693          	addi	a3,a3,64
   1a170:	968a                	add	a3,a3,sp
   1a172:	00f657b3          	srl	a5,a2,a5
   1a176:	fef6a023          	sw	a5,-32(a3)
   1a17a:	4691                	li	a3,4
   1a17c:	8e99                	sub	a3,a3,a4
   1a17e:	070a                	slli	a4,a4,0x2
   1a180:	00e887b3          	add	a5,a7,a4
   1a184:	00269713          	slli	a4,a3,0x2
   1a188:	46a1                	li	a3,8
   1a18a:	00d76863          	bltu	a4,a3,1a19a <__subtf3+0xec0>
   1a18e:	0007a023          	sw	zero,0(a5)
   1a192:	0007a223          	sw	zero,4(a5)
   1a196:	1761                	addi	a4,a4,-8
   1a198:	07a1                	addi	a5,a5,8
   1a19a:	4691                	li	a3,4
   1a19c:	00d76463          	bltu	a4,a3,1a1a4 <__subtf3+0xeca>
   1a1a0:	0007a023          	sw	zero,0(a5)
   1a1a4:	5702                	lw	a4,32(sp)
   1a1a6:	006037b3          	snez	a5,t1
   1a1aa:	8fd9                	or	a5,a5,a4
   1a1ac:	d03e                	sw	a5,32(sp)
   1a1ae:	e6eff06f          	j	1981c <__subtf3+0x542>
   1a1b2:	4188                	lw	a0,0(a1)
   1a1b4:	0045ae83          	lw	t4,4(a1)
   1a1b8:	00c58f33          	add	t5,a1,a2
   1a1bc:	00f55533          	srl	a0,a0,a5
   1a1c0:	010e9eb3          	sll	t4,t4,a6
   1a1c4:	01d56533          	or	a0,a0,t4
   1a1c8:	00af2023          	sw	a0,0(t5)
   1a1cc:	0e05                	addi	t3,t3,1
   1a1ce:	0591                	addi	a1,a1,4
   1a1d0:	b779                	j	1a15e <__subtf3+0xe84>
   1a1d2:	5732                	lw	a4,44(sp)
   1a1d4:	fff806b7          	lui	a3,0xfff80
   1a1d8:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff63373>
   1a1da:	8f75                	and	a4,a4,a3
   1a1dc:	40f407b3          	sub	a5,s0,a5
   1a1e0:	d63a                	sw	a4,44(sp)
   1a1e2:	f8aff06f          	j	1996c <__subtf3+0x692>
   1a1e6:	da2e                	sw	a1,52(sp)
   1a1e8:	d83e                	sw	a5,48(sp)
   1a1ea:	dc32                	sw	a2,56(sp)
   1a1ec:	de36                	sw	a3,60(sp)
   1a1ee:	1818                	addi	a4,sp,48
   1a1f0:	104c                	addi	a1,sp,36
   1a1f2:	4754                	lw	a3,12(a4)
   1a1f4:	4710                	lw	a2,8(a4)
   1a1f6:	1771                	addi	a4,a4,-4
   1a1f8:	0686                	slli	a3,a3,0x1
   1a1fa:	827d                	srli	a2,a2,0x1f
   1a1fc:	8ed1                	or	a3,a3,a2
   1a1fe:	cb14                	sw	a3,16(a4)
   1a200:	fee599e3          	bne	a1,a4,1a1f2 <__subtf3+0xf18>
   1a204:	0786                	slli	a5,a5,0x1
   1a206:	0077f713          	andi	a4,a5,7
   1a20a:	4401                	li	s0,0
   1a20c:	cf0d                	beqz	a4,1a246 <__subtf3+0xf6c>
   1a20e:	4709                	li	a4,2
   1a210:	56f2                	lw	a3,60(sp)
   1a212:	14ea0463          	beq	s4,a4,1a35a <__subtf3+0x1080>
   1a216:	470d                	li	a4,3
   1a218:	12ea0b63          	beq	s4,a4,1a34e <__subtf3+0x1074>
   1a21c:	020a1463          	bnez	s4,1a244 <__subtf3+0xf6a>
   1a220:	00f7f713          	andi	a4,a5,15
   1a224:	4611                	li	a2,4
   1a226:	00c70f63          	beq	a4,a2,1a244 <__subtf3+0xf6a>
   1a22a:	0791                	addi	a5,a5,4
   1a22c:	0047b793          	sltiu	a5,a5,4
   1a230:	5752                	lw	a4,52(sp)
   1a232:	973e                	add	a4,a4,a5
   1a234:	00f73733          	sltu	a4,a4,a5
   1a238:	57e2                	lw	a5,56(sp)
   1a23a:	97ba                	add	a5,a5,a4
   1a23c:	00e7b7b3          	sltu	a5,a5,a4
   1a240:	97b6                	add	a5,a5,a3
   1a242:	de3e                	sw	a5,60(sp)
   1a244:	4405                	li	s0,1
   1a246:	56f2                	lw	a3,60(sp)
   1a248:	4781                	li	a5,0
   1a24a:	82d1                	srli	a3,a3,0x14
   1a24c:	0016c693          	xori	a3,a3,1
   1a250:	8a85                	andi	a3,a3,1
   1a252:	5702                	lw	a4,32(sp)
   1a254:	00777613          	andi	a2,a4,7
   1a258:	c229                	beqz	a2,1a29a <__subtf3+0xfc0>
   1a25a:	4589                	li	a1,2
   1a25c:	5632                	lw	a2,44(sp)
   1a25e:	10ba0863          	beq	s4,a1,1a36e <__subtf3+0x1094>
   1a262:	458d                	li	a1,3
   1a264:	0eba0e63          	beq	s4,a1,1a360 <__subtf3+0x1086>
   1a268:	020a1763          	bnez	s4,1a296 <__subtf3+0xfbc>
   1a26c:	00f77593          	andi	a1,a4,15
   1a270:	4511                	li	a0,4
   1a272:	02a58263          	beq	a1,a0,1a296 <__subtf3+0xfbc>
   1a276:	0711                	addi	a4,a4,4
   1a278:	d03a                	sw	a4,32(sp)
   1a27a:	00473713          	sltiu	a4,a4,4
   1a27e:	5592                	lw	a1,36(sp)
   1a280:	972e                	add	a4,a4,a1
   1a282:	d23a                	sw	a4,36(sp)
   1a284:	00b73733          	sltu	a4,a4,a1
   1a288:	55a2                	lw	a1,40(sp)
   1a28a:	972e                	add	a4,a4,a1
   1a28c:	d43a                	sw	a4,40(sp)
   1a28e:	00b73733          	sltu	a4,a4,a1
   1a292:	9732                	add	a4,a4,a2
   1a294:	d63a                	sw	a4,44(sp)
   1a296:	00146413          	ori	s0,s0,1
   1a29a:	c689                	beqz	a3,1a2a4 <__subtf3+0xfca>
   1a29c:	00147713          	andi	a4,s0,1
   1a2a0:	0706                	slli	a4,a4,0x1
   1a2a2:	8c59                	or	s0,s0,a4
   1a2a4:	5732                	lw	a4,44(sp)
   1a2a6:	00c71693          	slli	a3,a4,0xc
   1a2aa:	0006dc63          	bgez	a3,1a2c2 <__subtf3+0xfe8>
   1a2ae:	66a1                	lui	a3,0x8
   1a2b0:	0785                	addi	a5,a5,1
   1a2b2:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1a2b4:	0cd78063          	beq	a5,a3,1a374 <__subtf3+0x109a>
   1a2b8:	fff806b7          	lui	a3,0xfff80
   1a2bc:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff63373>
   1a2be:	8f75                	and	a4,a4,a3
   1a2c0:	d63a                	sw	a4,44(sp)
   1a2c2:	1018                	addi	a4,sp,32
   1a2c4:	106c                	addi	a1,sp,44
   1a2c6:	4314                	lw	a3,0(a4)
   1a2c8:	4350                	lw	a2,4(a4)
   1a2ca:	828d                	srli	a3,a3,0x3
   1a2cc:	0676                	slli	a2,a2,0x1d
   1a2ce:	8ed1                	or	a3,a3,a2
   1a2d0:	c314                	sw	a3,0(a4)
   1a2d2:	0711                	addi	a4,a4,4
   1a2d4:	feb719e3          	bne	a4,a1,1a2c6 <__subtf3+0xfec>
   1a2d8:	56b2                	lw	a3,44(sp)
   1a2da:	6621                	lui	a2,0x8
   1a2dc:	fff60713          	addi	a4,a2,-1 # 7fff <exit-0x8095>
   1a2e0:	828d                	srli	a3,a3,0x3
   1a2e2:	d636                	sw	a3,44(sp)
   1a2e4:	00e79e63          	bne	a5,a4,1a300 <__subtf3+0x1026>
   1a2e8:	5592                	lw	a1,36(sp)
   1a2ea:	5702                	lw	a4,32(sp)
   1a2ec:	8f4d                	or	a4,a4,a1
   1a2ee:	55a2                	lw	a1,40(sp)
   1a2f0:	8f4d                	or	a4,a4,a1
   1a2f2:	8f55                	or	a4,a4,a3
   1a2f4:	c711                	beqz	a4,1a300 <__subtf3+0x1026>
   1a2f6:	d632                	sw	a2,44(sp)
   1a2f8:	d402                	sw	zero,40(sp)
   1a2fa:	d202                	sw	zero,36(sp)
   1a2fc:	d002                	sw	zero,32(sp)
   1a2fe:	4981                	li	s3,0
   1a300:	55b2                	lw	a1,44(sp)
   1a302:	07c6                	slli	a5,a5,0x11
   1a304:	83c5                	srli	a5,a5,0x11
   1a306:	09be                	slli	s3,s3,0xf
   1a308:	00f9e9b3          	or	s3,s3,a5
   1a30c:	02b11e23          	sh	a1,60(sp)
   1a310:	03311f23          	sh	s3,62(sp)
   1a314:	5602                	lw	a2,32(sp)
   1a316:	5692                	lw	a3,36(sp)
   1a318:	5722                	lw	a4,40(sp)
   1a31a:	57f2                	lw	a5,60(sp)
   1a31c:	c019                	beqz	s0,1a322 <__subtf3+0x1048>
   1a31e:	00142073          	csrs	fflags,s0
   1a322:	50b6                	lw	ra,108(sp)
   1a324:	5426                	lw	s0,104(sp)
   1a326:	00c92023          	sw	a2,0(s2)
   1a32a:	00d92223          	sw	a3,4(s2)
   1a32e:	00e92423          	sw	a4,8(s2)
   1a332:	00f92623          	sw	a5,12(s2)
   1a336:	5496                	lw	s1,100(sp)
   1a338:	49f6                	lw	s3,92(sp)
   1a33a:	4a66                	lw	s4,88(sp)
   1a33c:	4ad6                	lw	s5,84(sp)
   1a33e:	4b46                	lw	s6,80(sp)
   1a340:	4bb6                	lw	s7,76(sp)
   1a342:	4c26                	lw	s8,72(sp)
   1a344:	4c96                	lw	s9,68(sp)
   1a346:	854a                	mv	a0,s2
   1a348:	5906                	lw	s2,96(sp)
   1a34a:	6165                	addi	sp,sp,112
   1a34c:	8082                	ret
   1a34e:	ee099be3          	bnez	s3,1a244 <__subtf3+0xf6a>
   1a352:	07a1                	addi	a5,a5,8
   1a354:	0087b793          	sltiu	a5,a5,8
   1a358:	bde1                	j	1a230 <__subtf3+0xf56>
   1a35a:	ee0985e3          	beqz	s3,1a244 <__subtf3+0xf6a>
   1a35e:	bfd5                	j	1a352 <__subtf3+0x1078>
   1a360:	f2099be3          	bnez	s3,1a296 <__subtf3+0xfbc>
   1a364:	0721                	addi	a4,a4,8
   1a366:	d03a                	sw	a4,32(sp)
   1a368:	00873713          	sltiu	a4,a4,8
   1a36c:	bf09                	j	1a27e <__subtf3+0xfa4>
   1a36e:	f20984e3          	beqz	s3,1a296 <__subtf3+0xfbc>
   1a372:	bfcd                	j	1a364 <__subtf3+0x108a>
   1a374:	4701                	li	a4,0
   1a376:	020a0063          	beqz	s4,1a396 <__subtf3+0x10bc>
   1a37a:	468d                	li	a3,3
   1a37c:	00da1863          	bne	s4,a3,1a38c <__subtf3+0x10b2>
   1a380:	00098b63          	beqz	s3,1a396 <__subtf3+0x10bc>
   1a384:	67a1                	lui	a5,0x8
   1a386:	577d                	li	a4,-1
   1a388:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   1a38a:	a031                	j	1a396 <__subtf3+0x10bc>
   1a38c:	4689                	li	a3,2
   1a38e:	feda1be3          	bne	s4,a3,1a384 <__subtf3+0x10aa>
   1a392:	fe0989e3          	beqz	s3,1a384 <__subtf3+0x10aa>
   1a396:	d63a                	sw	a4,44(sp)
   1a398:	d43a                	sw	a4,40(sp)
   1a39a:	d23a                	sw	a4,36(sp)
   1a39c:	d03a                	sw	a4,32(sp)
   1a39e:	00546413          	ori	s0,s0,5
   1a3a2:	b705                	j	1a2c2 <__subtf3+0xfe8>
   1a3a4:	d636                	sw	a3,44(sp)
   1a3a6:	c76ff06f          	j	1981c <__subtf3+0x542>
   1a3aa:	d68a8763          	beq	s5,s0,19918 <__subtf3+0x63e>
   1a3ae:	4401                	li	s0,0
   1a3b0:	d16ff06f          	j	198c6 <__subtf3+0x5ec>
   1a3b4:	b68a8de3          	beq	s5,s0,19f2e <__subtf3+0xc54>
   1a3b8:	4401                	li	s0,0
   1a3ba:	b699                	j	19f00 <__subtf3+0xc26>

0001a3bc <__unordtf2>:
   1a3bc:	4114                	lw	a3,0(a0)
   1a3be:	00452f03          	lw	t5,4(a0)
   1a3c2:	00852e83          	lw	t4,8(a0)
   1a3c6:	4550                	lw	a2,12(a0)
   1a3c8:	419c                	lw	a5,0(a1)
   1a3ca:	0045ae03          	lw	t3,4(a1)
   1a3ce:	0085a303          	lw	t1,8(a1)
   1a3d2:	45d8                	lw	a4,12(a1)
   1a3d4:	1141                	addi	sp,sp,-16
   1a3d6:	002025f3          	frrm	a1
   1a3da:	6521                	lui	a0,0x8
   1a3dc:	01061813          	slli	a6,a2,0x10
   1a3e0:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   1a3e2:	8241                	srli	a2,a2,0x10
   1a3e4:	01071593          	slli	a1,a4,0x10
   1a3e8:	8e69                	and	a2,a2,a0
   1a3ea:	8341                	srli	a4,a4,0x10
   1a3ec:	01085813          	srli	a6,a6,0x10
   1a3f0:	81c1                	srli	a1,a1,0x10
   1a3f2:	8f69                	and	a4,a4,a0
   1a3f4:	00a61963          	bne	a2,a0,1a406 <__unordtf2+0x4a>
   1a3f8:	01e6e533          	or	a0,a3,t5
   1a3fc:	01d56533          	or	a0,a0,t4
   1a400:	01056533          	or	a0,a0,a6
   1a404:	e51d                	bnez	a0,1a432 <__unordtf2+0x76>
   1a406:	68a1                	lui	a7,0x8
   1a408:	18fd                	addi	a7,a7,-1 # 7fff <exit-0x8095>
   1a40a:	4501                	li	a0,0
   1a40c:	05171c63          	bne	a4,a7,1a464 <__unordtf2+0xa8>
   1a410:	01c7e8b3          	or	a7,a5,t3
   1a414:	0068e8b3          	or	a7,a7,t1
   1a418:	00b8e8b3          	or	a7,a7,a1
   1a41c:	04088463          	beqz	a7,1a464 <__unordtf2+0xa8>
   1a420:	02e61a63          	bne	a2,a4,1a454 <__unordtf2+0x98>
   1a424:	01e6e6b3          	or	a3,a3,t5
   1a428:	01d6e6b3          	or	a3,a3,t4
   1a42c:	0106e6b3          	or	a3,a3,a6
   1a430:	ca99                	beqz	a3,1a446 <__unordtf2+0x8a>
   1a432:	0842                	slli	a6,a6,0x10
   1a434:	41085813          	srai	a6,a6,0x10
   1a438:	02085363          	bgez	a6,1a45e <__unordtf2+0xa2>
   1a43c:	66a1                	lui	a3,0x8
   1a43e:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1a440:	4505                	li	a0,1
   1a442:	02d71163          	bne	a4,a3,1a464 <__unordtf2+0xa8>
   1a446:	01c7e7b3          	or	a5,a5,t3
   1a44a:	0067e7b3          	or	a5,a5,t1
   1a44e:	8fcd                	or	a5,a5,a1
   1a450:	4505                	li	a0,1
   1a452:	cb89                	beqz	a5,1a464 <__unordtf2+0xa8>
   1a454:	05c2                	slli	a1,a1,0x10
   1a456:	85c1                	srai	a1,a1,0x10
   1a458:	4505                	li	a0,1
   1a45a:	0005c563          	bltz	a1,1a464 <__unordtf2+0xa8>
   1a45e:	00186073          	csrsi	fflags,16
   1a462:	4505                	li	a0,1
   1a464:	0141                	addi	sp,sp,16
   1a466:	8082                	ret

0001a468 <__fixtfsi>:
   1a468:	411c                	lw	a5,0(a0)
   1a46a:	00452803          	lw	a6,4(a0)
   1a46e:	4518                	lw	a4,8(a0)
   1a470:	4550                	lw	a2,12(a0)
   1a472:	1101                	addi	sp,sp,-32
   1a474:	002026f3          	frrm	a3
   1a478:	01061693          	slli	a3,a2,0x10
   1a47c:	00161593          	slli	a1,a2,0x1
   1a480:	c632                	sw	a2,12(sp)
   1a482:	01f65893          	srli	a7,a2,0x1f
   1a486:	6611                	lui	a2,0x4
   1a488:	c03e                	sw	a5,0(sp)
   1a48a:	c242                	sw	a6,4(sp)
   1a48c:	c43a                	sw	a4,8(sp)
   1a48e:	c83e                	sw	a5,16(sp)
   1a490:	ca42                	sw	a6,20(sp)
   1a492:	cc3a                	sw	a4,24(sp)
   1a494:	81c5                	srli	a1,a1,0x11
   1a496:	1679                	addi	a2,a2,-2 # 3ffe <exit-0xc096>
   1a498:	82c1                	srli	a3,a3,0x10
   1a49a:	00b64a63          	blt	a2,a1,1a4ae <__fixtfsi+0x46>
   1a49e:	e9f9                	bnez	a1,1a574 <__fixtfsi+0x10c>
   1a4a0:	0107e533          	or	a0,a5,a6
   1a4a4:	8d59                	or	a0,a0,a4
   1a4a6:	8d55                	or	a0,a0,a3
   1a4a8:	e571                	bnez	a0,1a574 <__fixtfsi+0x10c>
   1a4aa:	6105                	addi	sp,sp,32
   1a4ac:	8082                	ret
   1a4ae:	6511                	lui	a0,0x4
   1a4b0:	0575                	addi	a0,a0,29 # 401d <exit-0xc077>
   1a4b2:	8646                	mv	a2,a7
   1a4b4:	02b55763          	bge	a0,a1,1a4e2 <__fixtfsi+0x7a>
   1a4b8:	0c088163          	beqz	a7,1a57a <__fixtfsi+0x112>
   1a4bc:	6511                	lui	a0,0x4
   1a4be:	0579                	addi	a0,a0,30 # 401e <exit-0xc076>
   1a4c0:	0ca59263          	bne	a1,a0,1a584 <__fixtfsi+0x11c>
   1a4c4:	01175593          	srli	a1,a4,0x11
   1a4c8:	06be                	slli	a3,a3,0xf
   1a4ca:	8ecd                	or	a3,a3,a1
   1a4cc:	eec5                	bnez	a3,1a584 <__fixtfsi+0x11c>
   1a4ce:	0107e7b3          	or	a5,a5,a6
   1a4d2:	073e                	slli	a4,a4,0xf
   1a4d4:	8f5d                	or	a4,a4,a5
   1a4d6:	80000537          	lui	a0,0x80000
   1a4da:	db61                	beqz	a4,1a4aa <__fixtfsi+0x42>
   1a4dc:	00162073          	csrs	fflags,a2
   1a4e0:	b7e9                	j	1a4aa <__fixtfsi+0x42>
   1a4e2:	67c1                	lui	a5,0x10
   1a4e4:	8fd5                	or	a5,a5,a3
   1a4e6:	6691                	lui	a3,0x4
   1a4e8:	06f68693          	addi	a3,a3,111 # 406f <exit-0xc025>
   1a4ec:	8e8d                	sub	a3,a3,a1
   1a4ee:	4056d513          	srai	a0,a3,0x5
   1a4f2:	ce3e                	sw	a5,28(sp)
   1a4f4:	8afd                	andi	a3,a3,31
   1a4f6:	080c                	addi	a1,sp,16
   1a4f8:	4801                	li	a6,0
   1a4fa:	4601                	li	a2,0
   1a4fc:	0005a303          	lw	t1,0(a1)
   1a500:	0605                	addi	a2,a2,1
   1a502:	0591                	addi	a1,a1,4
   1a504:	00686833          	or	a6,a6,t1
   1a508:	fec51ae3          	bne	a0,a2,1a4fc <__fixtfsi+0x94>
   1a50c:	00251613          	slli	a2,a0,0x2
   1a510:	e28d                	bnez	a3,1a532 <__fixtfsi+0xca>
   1a512:	02060793          	addi	a5,a2,32
   1a516:	00278633          	add	a2,a5,sp
   1a51a:	ff062783          	lw	a5,-16(a2)
   1a51e:	c83e                	sw	a5,16(sp)
   1a520:	4542                	lw	a0,16(sp)
   1a522:	00088463          	beqz	a7,1a52a <__fixtfsi+0xc2>
   1a526:	40a00533          	neg	a0,a0
   1a52a:	4605                	li	a2,1
   1a52c:	fa0818e3          	bnez	a6,1a4dc <__fixtfsi+0x74>
   1a530:	bfad                	j	1a4aa <__fixtfsi+0x42>
   1a532:	02060613          	addi	a2,a2,32
   1a536:	960a                	add	a2,a2,sp
   1a538:	ff062603          	lw	a2,-16(a2)
   1a53c:	02000593          	li	a1,32
   1a540:	8d95                	sub	a1,a1,a3
   1a542:	00b61633          	sll	a2,a2,a1
   1a546:	4309                	li	t1,2
   1a548:	00c86833          	or	a6,a6,a2
   1a54c:	4601                	li	a2,0
   1a54e:	00651963          	bne	a0,t1,1a560 <__fixtfsi+0xf8>
   1a552:	00d75733          	srl	a4,a4,a3
   1a556:	00b795b3          	sll	a1,a5,a1
   1a55a:	8f4d                	or	a4,a4,a1
   1a55c:	c83a                	sw	a4,16(sp)
   1a55e:	4605                	li	a2,1
   1a560:	060a                	slli	a2,a2,0x2
   1a562:	02060713          	addi	a4,a2,32
   1a566:	00270633          	add	a2,a4,sp
   1a56a:	00d7d7b3          	srl	a5,a5,a3
   1a56e:	fef62823          	sw	a5,-16(a2)
   1a572:	b77d                	j	1a520 <__fixtfsi+0xb8>
   1a574:	4605                	li	a2,1
   1a576:	4501                	li	a0,0
   1a578:	b795                	j	1a4dc <__fixtfsi+0x74>
   1a57a:	80000537          	lui	a0,0x80000
   1a57e:	4641                	li	a2,16
   1a580:	157d                	addi	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffe3373>
   1a582:	bfa9                	j	1a4dc <__fixtfsi+0x74>
   1a584:	4641                	li	a2,16
   1a586:	80000537          	lui	a0,0x80000
   1a58a:	bf89                	j	1a4dc <__fixtfsi+0x74>

0001a58c <__floatsitf>:
   1a58c:	7179                	addi	sp,sp,-48
   1a58e:	d226                	sw	s1,36(sp)
   1a590:	d606                	sw	ra,44(sp)
   1a592:	d422                	sw	s0,40(sp)
   1a594:	d04a                	sw	s2,32(sp)
   1a596:	84aa                	mv	s1,a0
   1a598:	cdcd                	beqz	a1,1a652 <__floatsitf+0xc6>
   1a59a:	41f5d793          	srai	a5,a1,0x1f
   1a59e:	00b7c433          	xor	s0,a5,a1
   1a5a2:	8c1d                	sub	s0,s0,a5
   1a5a4:	8522                	mv	a0,s0
   1a5a6:	01f5d913          	srli	s2,a1,0x1f
   1a5aa:	2481                	jal	1a7ea <__clzsi2>
   1a5ac:	6711                	lui	a4,0x4
   1a5ae:	0779                	addi	a4,a4,30 # 401e <exit-0xc076>
   1a5b0:	05150793          	addi	a5,a0,81 # 80000051 <__BSS_END__+0x7ffe33c5>
   1a5b4:	40a70633          	sub	a2,a4,a0
   1a5b8:	c822                	sw	s0,16(sp)
   1a5ba:	4057d713          	srai	a4,a5,0x5
   1a5be:	ca02                	sw	zero,20(sp)
   1a5c0:	cc02                	sw	zero,24(sp)
   1a5c2:	ce02                	sw	zero,28(sp)
   1a5c4:	8bfd                	andi	a5,a5,31
   1a5c6:	c78d                	beqz	a5,1a5f0 <__floatsitf+0x64>
   1a5c8:	4689                	li	a3,2
   1a5ca:	08d71263          	bne	a4,a3,1a64e <__floatsitf+0xc2>
   1a5ce:	02000693          	li	a3,32
   1a5d2:	8e9d                	sub	a3,a3,a5
   1a5d4:	00d456b3          	srl	a3,s0,a3
   1a5d8:	ce36                	sw	a3,28(sp)
   1a5da:	fff70693          	addi	a3,a4,-1
   1a5de:	070a                	slli	a4,a4,0x2
   1a5e0:	02070713          	addi	a4,a4,32
   1a5e4:	970a                	add	a4,a4,sp
   1a5e6:	00f41433          	sll	s0,s0,a5
   1a5ea:	fe872823          	sw	s0,-16(a4)
   1a5ee:	a005                	j	1a60e <__floatsitf+0x82>
   1a5f0:	478d                	li	a5,3
   1a5f2:	8f99                	sub	a5,a5,a4
   1a5f4:	078a                	slli	a5,a5,0x2
   1a5f6:	02078793          	addi	a5,a5,32 # 10020 <exit-0x74>
   1a5fa:	978a                	add	a5,a5,sp
   1a5fc:	ff07a783          	lw	a5,-16(a5)
   1a600:	4689                	li	a3,2
   1a602:	ce3e                	sw	a5,28(sp)
   1a604:	4789                	li	a5,2
   1a606:	00f71463          	bne	a4,a5,1a60e <__floatsitf+0x82>
   1a60a:	cc22                	sw	s0,24(sp)
   1a60c:	4685                	li	a3,1
   1a60e:	068a                	slli	a3,a3,0x2
   1a610:	c802                	sw	zero,16(sp)
   1a612:	ca02                	sw	zero,20(sp)
   1a614:	16f1                	addi	a3,a3,-4
   1a616:	4791                	li	a5,4
   1a618:	00f6e363          	bltu	a3,a5,1a61e <__floatsitf+0x92>
   1a61c:	cc02                	sw	zero,24(sp)
   1a61e:	85ca                	mv	a1,s2
   1a620:	47f2                	lw	a5,28(sp)
   1a622:	00f59413          	slli	s0,a1,0xf
   1a626:	8c51                	or	s0,s0,a2
   1a628:	00811723          	sh	s0,14(sp)
   1a62c:	00f11623          	sh	a5,12(sp)
   1a630:	4542                	lw	a0,16(sp)
   1a632:	46d2                	lw	a3,20(sp)
   1a634:	4762                	lw	a4,24(sp)
   1a636:	47b2                	lw	a5,12(sp)
   1a638:	50b2                	lw	ra,44(sp)
   1a63a:	5422                	lw	s0,40(sp)
   1a63c:	c088                	sw	a0,0(s1)
   1a63e:	c0d4                	sw	a3,4(s1)
   1a640:	c498                	sw	a4,8(s1)
   1a642:	c4dc                	sw	a5,12(s1)
   1a644:	5902                	lw	s2,32(sp)
   1a646:	8526                	mv	a0,s1
   1a648:	5492                	lw	s1,36(sp)
   1a64a:	6145                	addi	sp,sp,48
   1a64c:	8082                	ret
   1a64e:	470d                	li	a4,3
   1a650:	b769                	j	1a5da <__floatsitf+0x4e>
   1a652:	ce02                	sw	zero,28(sp)
   1a654:	cc02                	sw	zero,24(sp)
   1a656:	ca02                	sw	zero,20(sp)
   1a658:	c802                	sw	zero,16(sp)
   1a65a:	4601                	li	a2,0
   1a65c:	b7d1                	j	1a620 <__floatsitf+0x94>

0001a65e <__extenddftf2>:
   1a65e:	715d                	addi	sp,sp,-80
   1a660:	a42a                	fsd	fa0,8(sp)
   1a662:	c2a6                	sw	s1,68(sp)
   1a664:	c0ca                	sw	s2,64(sp)
   1a666:	de4e                	sw	s3,60(sp)
   1a668:	4922                	lw	s2,8(sp)
   1a66a:	44b2                	lw	s1,12(sp)
   1a66c:	c686                	sw	ra,76(sp)
   1a66e:	c4a2                	sw	s0,72(sp)
   1a670:	89aa                	mv	s3,a0
   1a672:	002027f3          	frrm	a5
   1a676:	0144d413          	srli	s0,s1,0x14
   1a67a:	00c49793          	slli	a5,s1,0xc
   1a67e:	7ff47413          	andi	s0,s0,2047
   1a682:	83b1                	srli	a5,a5,0xc
   1a684:	00140713          	addi	a4,s0,1
   1a688:	d04a                	sw	s2,32(sp)
   1a68a:	d23e                	sw	a5,36(sp)
   1a68c:	d602                	sw	zero,44(sp)
   1a68e:	d402                	sw	zero,40(sp)
   1a690:	7fe77713          	andi	a4,a4,2046
   1a694:	80fd                	srli	s1,s1,0x1f
   1a696:	cf39                	beqz	a4,1a6f4 <__extenddftf2+0x96>
   1a698:	0047d693          	srli	a3,a5,0x4
   1a69c:	6711                	lui	a4,0x4
   1a69e:	d636                	sw	a3,44(sp)
   1a6a0:	07f2                	slli	a5,a5,0x1c
   1a6a2:	00495693          	srli	a3,s2,0x4
   1a6a6:	c0070713          	addi	a4,a4,-1024 # 3c00 <exit-0xc494>
   1a6aa:	8fd5                	or	a5,a5,a3
   1a6ac:	0972                	slli	s2,s2,0x1c
   1a6ae:	9722                	add	a4,a4,s0
   1a6b0:	d43e                	sw	a5,40(sp)
   1a6b2:	d24a                	sw	s2,36(sp)
   1a6b4:	d002                	sw	zero,32(sp)
   1a6b6:	4401                	li	s0,0
   1a6b8:	57b2                	lw	a5,44(sp)
   1a6ba:	04be                	slli	s1,s1,0xf
   1a6bc:	8cd9                	or	s1,s1,a4
   1a6be:	00f11e23          	sh	a5,28(sp)
   1a6c2:	00911f23          	sh	s1,30(sp)
   1a6c6:	5582                	lw	a1,32(sp)
   1a6c8:	5612                	lw	a2,36(sp)
   1a6ca:	56a2                	lw	a3,40(sp)
   1a6cc:	47f2                	lw	a5,28(sp)
   1a6ce:	c019                	beqz	s0,1a6d4 <__extenddftf2+0x76>
   1a6d0:	00186073          	csrsi	fflags,16
   1a6d4:	40b6                	lw	ra,76(sp)
   1a6d6:	4426                	lw	s0,72(sp)
   1a6d8:	00b9a023          	sw	a1,0(s3)
   1a6dc:	00c9a223          	sw	a2,4(s3)
   1a6e0:	00d9a423          	sw	a3,8(s3)
   1a6e4:	00f9a623          	sw	a5,12(s3)
   1a6e8:	4496                	lw	s1,68(sp)
   1a6ea:	4906                	lw	s2,64(sp)
   1a6ec:	854e                	mv	a0,s3
   1a6ee:	59f2                	lw	s3,60(sp)
   1a6f0:	6161                	addi	sp,sp,80
   1a6f2:	8082                	ret
   1a6f4:	0127e533          	or	a0,a5,s2
   1a6f8:	e069                	bnez	s0,1a7ba <__extenddftf2+0x15c>
   1a6fa:	4701                	li	a4,0
   1a6fc:	dd55                	beqz	a0,1a6b8 <__extenddftf2+0x5a>
   1a6fe:	c7a9                	beqz	a5,1a748 <__extenddftf2+0xea>
   1a700:	853e                	mv	a0,a5
   1a702:	20e5                	jal	1a7ea <__clzsi2>
   1a704:	03150693          	addi	a3,a0,49
   1a708:	4056d793          	srai	a5,a3,0x5
   1a70c:	8afd                	andi	a3,a3,31
   1a70e:	c2a9                	beqz	a3,1a750 <__extenddftf2+0xf2>
   1a710:	5671                	li	a2,-4
   1a712:	02c78633          	mul	a2,a5,a2
   1a716:	02000813          	li	a6,32
   1a71a:	02010313          	addi	t1,sp,32
   1a71e:	40d80833          	sub	a6,a6,a3
   1a722:	00c60713          	addi	a4,a2,12
   1a726:	971a                	add	a4,a4,t1
   1a728:	40c00633          	neg	a2,a2
   1a72c:	06e31863          	bne	t1,a4,1a79c <__extenddftf2+0x13e>
   1a730:	fff78713          	addi	a4,a5,-1
   1a734:	078a                	slli	a5,a5,0x2
   1a736:	02078793          	addi	a5,a5,32
   1a73a:	0810                	addi	a2,sp,16
   1a73c:	97b2                	add	a5,a5,a2
   1a73e:	00d916b3          	sll	a3,s2,a3
   1a742:	fed7a823          	sw	a3,-16(a5)
   1a746:	a025                	j	1a76e <__extenddftf2+0x110>
   1a748:	204d                	jal	1a7ea <__clzsi2>
   1a74a:	02050513          	addi	a0,a0,32
   1a74e:	bf5d                	j	1a704 <__extenddftf2+0xa6>
   1a750:	5671                	li	a2,-4
   1a752:	02c78633          	mul	a2,a5,a2
   1a756:	1078                	addi	a4,sp,44
   1a758:	468d                	li	a3,3
   1a75a:	00c705b3          	add	a1,a4,a2
   1a75e:	418c                	lw	a1,0(a1)
   1a760:	16fd                	addi	a3,a3,-1
   1a762:	1771                	addi	a4,a4,-4
   1a764:	c34c                	sw	a1,4(a4)
   1a766:	fef6dae3          	bge	a3,a5,1a75a <__extenddftf2+0xfc>
   1a76a:	fff78713          	addi	a4,a5,-1
   1a76e:	00170793          	addi	a5,a4,1
   1a772:	078a                	slli	a5,a5,0x2
   1a774:	46a1                	li	a3,8
   1a776:	1018                	addi	a4,sp,32
   1a778:	00d7e863          	bltu	a5,a3,1a788 <__extenddftf2+0x12a>
   1a77c:	00072023          	sw	zero,0(a4)
   1a780:	00072223          	sw	zero,4(a4)
   1a784:	17e1                	addi	a5,a5,-8
   1a786:	1038                	addi	a4,sp,40
   1a788:	4691                	li	a3,4
   1a78a:	00d7e463          	bltu	a5,a3,1a792 <__extenddftf2+0x134>
   1a78e:	00072023          	sw	zero,0(a4)
   1a792:	6711                	lui	a4,0x4
   1a794:	c0c70713          	addi	a4,a4,-1012 # 3c0c <exit-0xc488>
   1a798:	8f09                	sub	a4,a4,a0
   1a79a:	bf39                	j	1a6b8 <__extenddftf2+0x5a>
   1a79c:	430c                	lw	a1,0(a4)
   1a79e:	ffc72883          	lw	a7,-4(a4)
   1a7a2:	00c70e33          	add	t3,a4,a2
   1a7a6:	00d595b3          	sll	a1,a1,a3
   1a7aa:	0108d8b3          	srl	a7,a7,a6
   1a7ae:	0115e5b3          	or	a1,a1,a7
   1a7b2:	00be2023          	sw	a1,0(t3)
   1a7b6:	1771                	addi	a4,a4,-4
   1a7b8:	bf95                	j	1a72c <__extenddftf2+0xce>
   1a7ba:	c50d                	beqz	a0,1a7e4 <__extenddftf2+0x186>
   1a7bc:	01c79713          	slli	a4,a5,0x1c
   1a7c0:	00495693          	srli	a3,s2,0x4
   1a7c4:	8f55                	or	a4,a4,a3
   1a7c6:	00080437          	lui	s0,0x80
   1a7ca:	0087b433          	sltu	s0,a5,s0
   1a7ce:	d43a                	sw	a4,40(sp)
   1a7d0:	8391                	srli	a5,a5,0x4
   1a7d2:	6721                	lui	a4,0x8
   1a7d4:	0972                	slli	s2,s2,0x1c
   1a7d6:	8fd9                	or	a5,a5,a4
   1a7d8:	0412                	slli	s0,s0,0x4
   1a7da:	d24a                	sw	s2,36(sp)
   1a7dc:	d002                	sw	zero,32(sp)
   1a7de:	d63e                	sw	a5,44(sp)
   1a7e0:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1a7e2:	bdd9                	j	1a6b8 <__extenddftf2+0x5a>
   1a7e4:	4401                	li	s0,0
   1a7e6:	6721                	lui	a4,0x8
   1a7e8:	bfe5                	j	1a7e0 <__extenddftf2+0x182>

0001a7ea <__clzsi2>:
   1a7ea:	67c1                	lui	a5,0x10
   1a7ec:	02f57563          	bgeu	a0,a5,1a816 <__clzsi2+0x2c>
   1a7f0:	10053793          	sltiu	a5,a0,256
   1a7f4:	0017b793          	seqz	a5,a5
   1a7f8:	078e                	slli	a5,a5,0x3
   1a7fa:	676d                	lui	a4,0x1b
   1a7fc:	02000693          	li	a3,32
   1a800:	8e9d                	sub	a3,a3,a5
   1a802:	00f55533          	srl	a0,a0,a5
   1a806:	13070793          	addi	a5,a4,304 # 1b130 <__clz_tab>
   1a80a:	97aa                	add	a5,a5,a0
   1a80c:	0007c503          	lbu	a0,0(a5) # 10000 <exit-0x94>
   1a810:	40a68533          	sub	a0,a3,a0
   1a814:	8082                	ret
   1a816:	01000737          	lui	a4,0x1000
   1a81a:	47e1                	li	a5,24
   1a81c:	fce57fe3          	bgeu	a0,a4,1a7fa <__clzsi2+0x10>
   1a820:	47c1                	li	a5,16
   1a822:	bfe1                	j	1a7fa <__clzsi2+0x10>
