
sim_O0/my_program:     file format elf32-littleriscv


Disassembly of section .text:

00010094 <exit>:
   10094:	1141                	addi	sp,sp,-16
   10096:	4581                	li	a1,0
   10098:	c422                	sw	s0,8(sp)
   1009a:	c606                	sw	ra,12(sp)
   1009c:	842a                	mv	s0,a0
   1009e:	3c4010ef          	jal	11462 <__call_exitprocs>
   100a2:	f201a783          	lw	a5,-224(gp) # 1c980 <__stdio_exit_handler>
   100a6:	c391                	beqz	a5,100aa <exit+0x16>
   100a8:	9782                	jalr	a5
   100aa:	8522                	mv	a0,s0
   100ac:	26a080ef          	jal	18316 <_exit>

000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	c791                	beqz	a5,100c0 <register_fini+0x10>
   100b6:	6551                	lui	a0,0x14
   100b8:	43250513          	addi	a0,a0,1074 # 14432 <__libc_fini_array>
   100bc:	4740106f          	j	11530 <atexit>
   100c0:	8082                	ret

000100c2 <_start>:
   100c2:	0000d197          	auipc	gp,0xd
   100c6:	99e18193          	addi	gp,gp,-1634 # 1ca60 <__global_pointer$>
   100ca:	f2018513          	addi	a0,gp,-224 # 1c980 <__stdio_exit_handler>
   100ce:	24c18613          	addi	a2,gp,588 # 1ccac <__BSS_END__>
   100d2:	8e09                	sub	a2,a2,a0
   100d4:	4581                	li	a1,0
   100d6:	2e4010ef          	jal	113ba <memset>
   100da:	00001517          	auipc	a0,0x1
   100de:	45650513          	addi	a0,a0,1110 # 11530 <atexit>
   100e2:	c519                	beqz	a0,100f0 <_start+0x2e>
   100e4:	00004517          	auipc	a0,0x4
   100e8:	34e50513          	addi	a0,a0,846 # 14432 <__libc_fini_array>
   100ec:	444010ef          	jal	11530 <atexit>
   100f0:	260010ef          	jal	11350 <__libc_init_array>
   100f4:	4502                	lw	a0,0(sp)
   100f6:	004c                	addi	a1,sp,4
   100f8:	4601                	li	a2,0
   100fa:	20b1                	jal	10146 <main>
   100fc:	bf61                	j	10094 <exit>

000100fe <__do_global_dtors_aux>:
   100fe:	1141                	addi	sp,sp,-16
   10100:	c422                	sw	s0,8(sp)
   10102:	f401c783          	lbu	a5,-192(gp) # 1c9a0 <completed.1>
   10106:	c606                	sw	ra,12(sp)
   10108:	ef91                	bnez	a5,10124 <__do_global_dtors_aux+0x26>
   1010a:	00000793          	li	a5,0
   1010e:	cb81                	beqz	a5,1011e <__do_global_dtors_aux+0x20>
   10110:	6571                	lui	a0,0x1c
   10112:	25050513          	addi	a0,a0,592 # 1c250 <__EH_FRAME_BEGIN__>
   10116:	00000097          	auipc	ra,0x0
   1011a:	000000e7          	jalr	zero # 0 <exit-0x10094>
   1011e:	4785                	li	a5,1
   10120:	f4f18023          	sb	a5,-192(gp) # 1c9a0 <completed.1>
   10124:	40b2                	lw	ra,12(sp)
   10126:	4422                	lw	s0,8(sp)
   10128:	0141                	addi	sp,sp,16
   1012a:	8082                	ret

0001012c <frame_dummy>:
   1012c:	00000793          	li	a5,0
   10130:	cb91                	beqz	a5,10144 <frame_dummy+0x18>
   10132:	6571                	lui	a0,0x1c
   10134:	f4418593          	addi	a1,gp,-188 # 1c9a4 <object.0>
   10138:	25050513          	addi	a0,a0,592 # 1c250 <__EH_FRAME_BEGIN__>
   1013c:	00000317          	auipc	t1,0x0
   10140:	00000067          	jr	zero # 0 <exit-0x10094>
   10144:	8082                	ret

00010146 <main>:
   10146:	715d                	addi	sp,sp,-80
   10148:	c686                	sw	ra,76(sp)
   1014a:	c4a2                	sw	s0,72(sp)
   1014c:	0880                	addi	s0,sp,80
   1014e:	67ed                	lui	a5,0x1b
   10150:	9ec78793          	addi	a5,a5,-1556 # 1a9ec <__clzsi2+0x74>
   10154:	4390                	lw	a2,0(a5)
   10156:	43d4                	lw	a3,4(a5)
   10158:	4798                	lw	a4,8(a5)
   1015a:	fcc42823          	sw	a2,-48(s0)
   1015e:	fcd42a23          	sw	a3,-44(s0)
   10162:	fce42c23          	sw	a4,-40(s0)
   10166:	00c7d783          	lhu	a5,12(a5)
   1016a:	fcf41e23          	sh	a5,-36(s0)
   1016e:	4735                	li	a4,13
   10170:	4781                	li	a5,0
   10172:	fee42023          	sw	a4,-32(s0)
   10176:	fef42223          	sw	a5,-28(s0)
   1017a:	fd040713          	addi	a4,s0,-48
   1017e:	fb040793          	addi	a5,s0,-80
   10182:	fe042603          	lw	a2,-32(s0)
   10186:	fe442683          	lw	a3,-28(s0)
   1018a:	85ba                	mv	a1,a4
   1018c:	853e                	mv	a0,a5
   1018e:	0ef000ef          	jal	10a7c <crypto_hash>
   10192:	87aa                	mv	a5,a0
   10194:	cf91                	beqz	a5,101b0 <main+0x6a>
   10196:	f141a783          	lw	a5,-236(gp) # 1c974 <_impure_ptr>
   1019a:	47dc                	lw	a5,12(a5)
   1019c:	86be                	mv	a3,a5
   1019e:	4655                	li	a2,21
   101a0:	4585                	li	a1,1
   101a2:	67ed                	lui	a5,0x1b
   101a4:	9b878513          	addi	a0,a5,-1608 # 1a9b8 <__clzsi2+0x40>
   101a8:	671000ef          	jal	11018 <fwrite>
   101ac:	4785                	li	a5,1
   101ae:	a899                	j	10204 <main+0xbe>
   101b0:	fd040793          	addi	a5,s0,-48
   101b4:	85be                	mv	a1,a5
   101b6:	67ed                	lui	a5,0x1b
   101b8:	9d078513          	addi	a0,a5,-1584 # 1a9d0 <__clzsi2+0x58>
   101bc:	717000ef          	jal	110d2 <printf>
   101c0:	67ed                	lui	a5,0x1b
   101c2:	9dc78513          	addi	a0,a5,-1572 # 1a9dc <__clzsi2+0x64>
   101c6:	70d000ef          	jal	110d2 <printf>
   101ca:	fe042623          	sw	zero,-20(s0)
   101ce:	a015                	j	101f2 <main+0xac>
   101d0:	fec42783          	lw	a5,-20(s0)
   101d4:	17c1                	addi	a5,a5,-16
   101d6:	97a2                	add	a5,a5,s0
   101d8:	fc07c783          	lbu	a5,-64(a5)
   101dc:	85be                	mv	a1,a5
   101de:	67ed                	lui	a5,0x1b
   101e0:	9e478513          	addi	a0,a5,-1564 # 1a9e4 <__clzsi2+0x6c>
   101e4:	6ef000ef          	jal	110d2 <printf>
   101e8:	fec42783          	lw	a5,-20(s0)
   101ec:	0785                	addi	a5,a5,1
   101ee:	fef42623          	sw	a5,-20(s0)
   101f2:	fec42703          	lw	a4,-20(s0)
   101f6:	47fd                	li	a5,31
   101f8:	fce7fce3          	bgeu	a5,a4,101d0 <main+0x8a>
   101fc:	4529                	li	a0,10
   101fe:	707000ef          	jal	11104 <putchar>
   10202:	4781                	li	a5,0
   10204:	853e                	mv	a0,a5
   10206:	40b6                	lw	ra,76(sp)
   10208:	4426                	lw	s0,72(sp)
   1020a:	6161                	addi	sp,sp,80
   1020c:	8082                	ret

0001020e <ROR>:
   1020e:	1101                	addi	sp,sp,-32
   10210:	ce22                	sw	s0,28(sp)
   10212:	1000                	addi	s0,sp,32
   10214:	fea42423          	sw	a0,-24(s0)
   10218:	feb42623          	sw	a1,-20(s0)
   1021c:	fec42223          	sw	a2,-28(s0)
   10220:	fe842703          	lw	a4,-24(s0)
   10224:	fec42783          	lw	a5,-20(s0)
   10228:	fe442683          	lw	a3,-28(s0)
   1022c:	1681                	addi	a3,a3,-32
   1022e:	0006c663          	bltz	a3,1023a <ROR+0x2c>
   10232:	00d7d333          	srl	t1,a5,a3
   10236:	4381                	li	t2,0
   10238:	a025                	j	10260 <ROR+0x52>
   1023a:	00179613          	slli	a2,a5,0x1
   1023e:	45fd                	li	a1,31
   10240:	fe442683          	lw	a3,-28(s0)
   10244:	40d586b3          	sub	a3,a1,a3
   10248:	00d616b3          	sll	a3,a2,a3
   1024c:	fe442603          	lw	a2,-28(s0)
   10250:	00c75333          	srl	t1,a4,a2
   10254:	0066e333          	or	t1,a3,t1
   10258:	fe442683          	lw	a3,-28(s0)
   1025c:	00d7d3b3          	srl	t2,a5,a3
   10260:	fe442683          	lw	a3,-28(s0)
   10264:	40d006b3          	neg	a3,a3
   10268:	03f6f693          	andi	a3,a3,63
   1026c:	1681                	addi	a3,a3,-32
   1026e:	0006c663          	bltz	a3,1027a <ROR+0x6c>
   10272:	00d718b3          	sll	a7,a4,a3
   10276:	4801                	li	a6,0
   10278:	a081                	j	102b8 <ROR+0xaa>
   1027a:	00175613          	srli	a2,a4,0x1
   1027e:	45fd                	li	a1,31
   10280:	fe442683          	lw	a3,-28(s0)
   10284:	40d006b3          	neg	a3,a3
   10288:	03f6f693          	andi	a3,a3,63
   1028c:	40d586b3          	sub	a3,a1,a3
   10290:	00d656b3          	srl	a3,a2,a3
   10294:	fe442603          	lw	a2,-28(s0)
   10298:	40c00633          	neg	a2,a2
   1029c:	03f67613          	andi	a2,a2,63
   102a0:	00c798b3          	sll	a7,a5,a2
   102a4:	0116e8b3          	or	a7,a3,a7
   102a8:	fe442683          	lw	a3,-28(s0)
   102ac:	40d006b3          	neg	a3,a3
   102b0:	03f6f693          	andi	a3,a3,63
   102b4:	00d71833          	sll	a6,a4,a3
   102b8:	00686e33          	or	t3,a6,t1
   102bc:	0078eeb3          	or	t4,a7,t2
   102c0:	8872                	mv	a6,t3
   102c2:	88f6                	mv	a7,t4
   102c4:	8742                	mv	a4,a6
   102c6:	87c6                	mv	a5,a7
   102c8:	853a                	mv	a0,a4
   102ca:	85be                	mv	a1,a5
   102cc:	4472                	lw	s0,28(sp)
   102ce:	6105                	addi	sp,sp,32
   102d0:	8082                	ret

000102d2 <ROUND>:
   102d2:	7169                	addi	sp,sp,-304
   102d4:	12112623          	sw	ra,300(sp)
   102d8:	12812423          	sw	s0,296(sp)
   102dc:	13212223          	sw	s2,292(sp)
   102e0:	13312023          	sw	s3,288(sp)
   102e4:	11412e23          	sw	s4,284(sp)
   102e8:	11512c23          	sw	s5,280(sp)
   102ec:	11612a23          	sw	s6,276(sp)
   102f0:	11712823          	sw	s7,272(sp)
   102f4:	11812623          	sw	s8,268(sp)
   102f8:	11912423          	sw	s9,264(sp)
   102fc:	11a12223          	sw	s10,260(sp)
   10300:	11b12023          	sw	s11,256(sp)
   10304:	1a00                	addi	s0,sp,304
   10306:	f8a42e23          	sw	a0,-100(s0)
   1030a:	87ae                	mv	a5,a1
   1030c:	f8f40da3          	sb	a5,-101(s0)
   10310:	f9c42783          	lw	a5,-100(s0)
   10314:	4b90                	lw	a2,16(a5)
   10316:	4bd4                	lw	a3,20(a5)
   10318:	f9b44783          	lbu	a5,-101(s0)
   1031c:	0ff7f793          	zext.b	a5,a5
   10320:	883e                	mv	a6,a5
   10322:	4881                	li	a7,0
   10324:	01064333          	xor	t1,a2,a6
   10328:	0116c3b3          	xor	t2,a3,a7
   1032c:	f9c42783          	lw	a5,-100(s0)
   10330:	0067a823          	sw	t1,16(a5)
   10334:	0077aa23          	sw	t2,20(a5)
   10338:	f9c42783          	lw	a5,-100(s0)
   1033c:	4390                	lw	a2,0(a5)
   1033e:	43d4                	lw	a3,4(a5)
   10340:	f9c42783          	lw	a5,-100(s0)
   10344:	5398                	lw	a4,32(a5)
   10346:	53dc                	lw	a5,36(a5)
   10348:	00e64e33          	xor	t3,a2,a4
   1034c:	00f6ceb3          	xor	t4,a3,a5
   10350:	f9c42783          	lw	a5,-100(s0)
   10354:	01c7a023          	sw	t3,0(a5)
   10358:	01d7a223          	sw	t4,4(a5)
   1035c:	f9c42783          	lw	a5,-100(s0)
   10360:	5390                	lw	a2,32(a5)
   10362:	53d4                	lw	a3,36(a5)
   10364:	f9c42783          	lw	a5,-100(s0)
   10368:	4f98                	lw	a4,24(a5)
   1036a:	4fdc                	lw	a5,28(a5)
   1036c:	00e64c33          	xor	s8,a2,a4
   10370:	00f6ccb3          	xor	s9,a3,a5
   10374:	f9c42783          	lw	a5,-100(s0)
   10378:	0387a023          	sw	s8,32(a5)
   1037c:	0397a223          	sw	s9,36(a5)
   10380:	f9c42783          	lw	a5,-100(s0)
   10384:	4b90                	lw	a2,16(a5)
   10386:	4bd4                	lw	a3,20(a5)
   10388:	f9c42783          	lw	a5,-100(s0)
   1038c:	4798                	lw	a4,8(a5)
   1038e:	47dc                	lw	a5,12(a5)
   10390:	00e645b3          	xor	a1,a2,a4
   10394:	f8b42823          	sw	a1,-112(s0)
   10398:	8fb5                	xor	a5,a5,a3
   1039a:	f8f42a23          	sw	a5,-108(s0)
   1039e:	f9c42783          	lw	a5,-100(s0)
   103a2:	f9042683          	lw	a3,-112(s0)
   103a6:	f9442703          	lw	a4,-108(s0)
   103aa:	cb94                	sw	a3,16(a5)
   103ac:	cbd8                	sw	a4,20(a5)
   103ae:	f9c42783          	lw	a5,-100(s0)
   103b2:	4390                	lw	a2,0(a5)
   103b4:	43d4                	lw	a3,4(a5)
   103b6:	f9c42783          	lw	a5,-100(s0)
   103ba:	4798                	lw	a4,8(a5)
   103bc:	47dc                	lw	a5,12(a5)
   103be:	fff74913          	not	s2,a4
   103c2:	fff7c993          	not	s3,a5
   103c6:	f9c42783          	lw	a5,-100(s0)
   103ca:	4b98                	lw	a4,16(a5)
   103cc:	4bdc                	lw	a5,20(a5)
   103ce:	00e97f33          	and	t5,s2,a4
   103d2:	00f9ffb3          	and	t6,s3,a5
   103d6:	01e647b3          	xor	a5,a2,t5
   103da:	f8f42423          	sw	a5,-120(s0)
   103de:	01f6c7b3          	xor	a5,a3,t6
   103e2:	f8f42623          	sw	a5,-116(s0)
   103e6:	f8842783          	lw	a5,-120(s0)
   103ea:	f8c42803          	lw	a6,-116(s0)
   103ee:	faf42423          	sw	a5,-88(s0)
   103f2:	fb042623          	sw	a6,-84(s0)
   103f6:	f9c42783          	lw	a5,-100(s0)
   103fa:	4790                	lw	a2,8(a5)
   103fc:	47d4                	lw	a3,12(a5)
   103fe:	f9c42783          	lw	a5,-100(s0)
   10402:	4b98                	lw	a4,16(a5)
   10404:	4bdc                	lw	a5,20(a5)
   10406:	fff74b13          	not	s6,a4
   1040a:	fff7cb93          	not	s7,a5
   1040e:	f9c42783          	lw	a5,-100(s0)
   10412:	4f98                	lw	a4,24(a5)
   10414:	4fdc                	lw	a5,28(a5)
   10416:	00eb7a33          	and	s4,s6,a4
   1041a:	00fbfab3          	and	s5,s7,a5
   1041e:	014647b3          	xor	a5,a2,s4
   10422:	f8f42023          	sw	a5,-128(s0)
   10426:	0156c7b3          	xor	a5,a3,s5
   1042a:	f8f42223          	sw	a5,-124(s0)
   1042e:	f8042783          	lw	a5,-128(s0)
   10432:	f8442803          	lw	a6,-124(s0)
   10436:	faf42823          	sw	a5,-80(s0)
   1043a:	fb042a23          	sw	a6,-76(s0)
   1043e:	f9c42783          	lw	a5,-100(s0)
   10442:	4b90                	lw	a2,16(a5)
   10444:	4bd4                	lw	a3,20(a5)
   10446:	f9c42783          	lw	a5,-100(s0)
   1044a:	4f98                	lw	a4,24(a5)
   1044c:	4fdc                	lw	a5,28(a5)
   1044e:	fff74593          	not	a1,a4
   10452:	f6b42c23          	sw	a1,-136(s0)
   10456:	fff7c793          	not	a5,a5
   1045a:	f6f42e23          	sw	a5,-132(s0)
   1045e:	f9c42783          	lw	a5,-100(s0)
   10462:	5398                	lw	a4,32(a5)
   10464:	53dc                	lw	a5,36(a5)
   10466:	f7842503          	lw	a0,-136(s0)
   1046a:	f7c42583          	lw	a1,-132(s0)
   1046e:	882a                	mv	a6,a0
   10470:	00e87d33          	and	s10,a6,a4
   10474:	00f5fdb3          	and	s11,a1,a5
   10478:	01a647b3          	xor	a5,a2,s10
   1047c:	f6f42823          	sw	a5,-144(s0)
   10480:	01b6c7b3          	xor	a5,a3,s11
   10484:	f6f42a23          	sw	a5,-140(s0)
   10488:	f7042783          	lw	a5,-144(s0)
   1048c:	f7442803          	lw	a6,-140(s0)
   10490:	faf42c23          	sw	a5,-72(s0)
   10494:	fb042e23          	sw	a6,-68(s0)
   10498:	f9c42783          	lw	a5,-100(s0)
   1049c:	4f90                	lw	a2,24(a5)
   1049e:	4fd4                	lw	a3,28(a5)
   104a0:	f9c42783          	lw	a5,-100(s0)
   104a4:	5398                	lw	a4,32(a5)
   104a6:	53dc                	lw	a5,36(a5)
   104a8:	fff74593          	not	a1,a4
   104ac:	f6b42423          	sw	a1,-152(s0)
   104b0:	fff7c793          	not	a5,a5
   104b4:	f6f42623          	sw	a5,-148(s0)
   104b8:	f9c42783          	lw	a5,-100(s0)
   104bc:	4398                	lw	a4,0(a5)
   104be:	43dc                	lw	a5,4(a5)
   104c0:	f6842503          	lw	a0,-152(s0)
   104c4:	f6c42583          	lw	a1,-148(s0)
   104c8:	882a                	mv	a6,a0
   104ca:	00e87833          	and	a6,a6,a4
   104ce:	f7042023          	sw	a6,-160(s0)
   104d2:	8fed                	and	a5,a5,a1
   104d4:	f6f42223          	sw	a5,-156(s0)
   104d8:	f6042783          	lw	a5,-160(s0)
   104dc:	f6442803          	lw	a6,-156(s0)
   104e0:	873e                	mv	a4,a5
   104e2:	8f31                	xor	a4,a4,a2
   104e4:	f4e42c23          	sw	a4,-168(s0)
   104e8:	87c2                	mv	a5,a6
   104ea:	8fb5                	xor	a5,a5,a3
   104ec:	f4f42e23          	sw	a5,-164(s0)
   104f0:	f5842783          	lw	a5,-168(s0)
   104f4:	f5c42803          	lw	a6,-164(s0)
   104f8:	fcf42023          	sw	a5,-64(s0)
   104fc:	fd042223          	sw	a6,-60(s0)
   10500:	f9c42783          	lw	a5,-100(s0)
   10504:	5390                	lw	a2,32(a5)
   10506:	53d4                	lw	a3,36(a5)
   10508:	f9c42783          	lw	a5,-100(s0)
   1050c:	4398                	lw	a4,0(a5)
   1050e:	43dc                	lw	a5,4(a5)
   10510:	fff74593          	not	a1,a4
   10514:	f4b42823          	sw	a1,-176(s0)
   10518:	fff7c793          	not	a5,a5
   1051c:	f4f42a23          	sw	a5,-172(s0)
   10520:	f9c42783          	lw	a5,-100(s0)
   10524:	4798                	lw	a4,8(a5)
   10526:	47dc                	lw	a5,12(a5)
   10528:	f5042503          	lw	a0,-176(s0)
   1052c:	f5442583          	lw	a1,-172(s0)
   10530:	882a                	mv	a6,a0
   10532:	00e87833          	and	a6,a6,a4
   10536:	f5042423          	sw	a6,-184(s0)
   1053a:	8fed                	and	a5,a5,a1
   1053c:	f4f42623          	sw	a5,-180(s0)
   10540:	f4842783          	lw	a5,-184(s0)
   10544:	f4c42803          	lw	a6,-180(s0)
   10548:	873e                	mv	a4,a5
   1054a:	8f31                	xor	a4,a4,a2
   1054c:	f4e42023          	sw	a4,-192(s0)
   10550:	87c2                	mv	a5,a6
   10552:	8fb5                	xor	a5,a5,a3
   10554:	f4f42223          	sw	a5,-188(s0)
   10558:	f4042783          	lw	a5,-192(s0)
   1055c:	f4442803          	lw	a6,-188(s0)
   10560:	fcf42423          	sw	a5,-56(s0)
   10564:	fd042623          	sw	a6,-52(s0)
   10568:	fb042603          	lw	a2,-80(s0)
   1056c:	fb442683          	lw	a3,-76(s0)
   10570:	fa842703          	lw	a4,-88(s0)
   10574:	fac42783          	lw	a5,-84(s0)
   10578:	00e645b3          	xor	a1,a2,a4
   1057c:	f2b42c23          	sw	a1,-200(s0)
   10580:	8fb5                	xor	a5,a5,a3
   10582:	f2f42e23          	sw	a5,-196(s0)
   10586:	f3842783          	lw	a5,-200(s0)
   1058a:	f3c42803          	lw	a6,-196(s0)
   1058e:	faf42823          	sw	a5,-80(s0)
   10592:	fb042a23          	sw	a6,-76(s0)
   10596:	fa842603          	lw	a2,-88(s0)
   1059a:	fac42683          	lw	a3,-84(s0)
   1059e:	fc842703          	lw	a4,-56(s0)
   105a2:	fcc42783          	lw	a5,-52(s0)
   105a6:	00e645b3          	xor	a1,a2,a4
   105aa:	f2b42823          	sw	a1,-208(s0)
   105ae:	8fb5                	xor	a5,a5,a3
   105b0:	f2f42a23          	sw	a5,-204(s0)
   105b4:	f3042783          	lw	a5,-208(s0)
   105b8:	f3442803          	lw	a6,-204(s0)
   105bc:	faf42423          	sw	a5,-88(s0)
   105c0:	fb042623          	sw	a6,-84(s0)
   105c4:	fc042603          	lw	a2,-64(s0)
   105c8:	fc442683          	lw	a3,-60(s0)
   105cc:	fb842703          	lw	a4,-72(s0)
   105d0:	fbc42783          	lw	a5,-68(s0)
   105d4:	00e645b3          	xor	a1,a2,a4
   105d8:	f2b42423          	sw	a1,-216(s0)
   105dc:	8fb5                	xor	a5,a5,a3
   105de:	f2f42623          	sw	a5,-212(s0)
   105e2:	f2842783          	lw	a5,-216(s0)
   105e6:	f2c42803          	lw	a6,-212(s0)
   105ea:	fcf42023          	sw	a5,-64(s0)
   105ee:	fd042223          	sw	a6,-60(s0)
   105f2:	fb842703          	lw	a4,-72(s0)
   105f6:	fbc42783          	lw	a5,-68(s0)
   105fa:	fff74693          	not	a3,a4
   105fe:	f2d42023          	sw	a3,-224(s0)
   10602:	fff7c793          	not	a5,a5
   10606:	f2f42223          	sw	a5,-220(s0)
   1060a:	f2042783          	lw	a5,-224(s0)
   1060e:	f2442803          	lw	a6,-220(s0)
   10612:	faf42c23          	sw	a5,-72(s0)
   10616:	fb042e23          	sw	a6,-68(s0)
   1061a:	fa842903          	lw	s2,-88(s0)
   1061e:	fac42983          	lw	s3,-84(s0)
   10622:	fa842703          	lw	a4,-88(s0)
   10626:	fac42783          	lw	a5,-84(s0)
   1062a:	464d                	li	a2,19
   1062c:	853a                	mv	a0,a4
   1062e:	85be                	mv	a1,a5
   10630:	3ef9                	jal	1020e <ROR>
   10632:	872a                	mv	a4,a0
   10634:	87ae                	mv	a5,a1
   10636:	00e946b3          	xor	a3,s2,a4
   1063a:	f0d42c23          	sw	a3,-232(s0)
   1063e:	00f9c7b3          	xor	a5,s3,a5
   10642:	f0f42e23          	sw	a5,-228(s0)
   10646:	fa842703          	lw	a4,-88(s0)
   1064a:	fac42783          	lw	a5,-84(s0)
   1064e:	4671                	li	a2,28
   10650:	853a                	mv	a0,a4
   10652:	85be                	mv	a1,a5
   10654:	3e6d                	jal	1020e <ROR>
   10656:	872a                	mv	a4,a0
   10658:	87ae                	mv	a5,a1
   1065a:	f1842603          	lw	a2,-232(s0)
   1065e:	f1c42683          	lw	a3,-228(s0)
   10662:	85b2                	mv	a1,a2
   10664:	8db9                	xor	a1,a1,a4
   10666:	f0b42823          	sw	a1,-240(s0)
   1066a:	8fb5                	xor	a5,a5,a3
   1066c:	f0f42a23          	sw	a5,-236(s0)
   10670:	f9c42783          	lw	a5,-100(s0)
   10674:	f1042683          	lw	a3,-240(s0)
   10678:	f1442703          	lw	a4,-236(s0)
   1067c:	c394                	sw	a3,0(a5)
   1067e:	c3d8                	sw	a4,4(a5)
   10680:	fb042903          	lw	s2,-80(s0)
   10684:	fb442983          	lw	s3,-76(s0)
   10688:	fb042703          	lw	a4,-80(s0)
   1068c:	fb442783          	lw	a5,-76(s0)
   10690:	03d00613          	li	a2,61
   10694:	853a                	mv	a0,a4
   10696:	85be                	mv	a1,a5
   10698:	3e9d                	jal	1020e <ROR>
   1069a:	872a                	mv	a4,a0
   1069c:	87ae                	mv	a5,a1
   1069e:	00e946b3          	xor	a3,s2,a4
   106a2:	f0d42423          	sw	a3,-248(s0)
   106a6:	00f9c7b3          	xor	a5,s3,a5
   106aa:	f0f42623          	sw	a5,-244(s0)
   106ae:	fb042703          	lw	a4,-80(s0)
   106b2:	fb442783          	lw	a5,-76(s0)
   106b6:	02700613          	li	a2,39
   106ba:	853a                	mv	a0,a4
   106bc:	85be                	mv	a1,a5
   106be:	3e81                	jal	1020e <ROR>
   106c0:	872a                	mv	a4,a0
   106c2:	87ae                	mv	a5,a1
   106c4:	f0842603          	lw	a2,-248(s0)
   106c8:	f0c42683          	lw	a3,-244(s0)
   106cc:	85b2                	mv	a1,a2
   106ce:	8db9                	xor	a1,a1,a4
   106d0:	f0b42023          	sw	a1,-256(s0)
   106d4:	8fb5                	xor	a5,a5,a3
   106d6:	f0f42223          	sw	a5,-252(s0)
   106da:	f9c42783          	lw	a5,-100(s0)
   106de:	f0042683          	lw	a3,-256(s0)
   106e2:	f0442703          	lw	a4,-252(s0)
   106e6:	c794                	sw	a3,8(a5)
   106e8:	c7d8                	sw	a4,12(a5)
   106ea:	fb842903          	lw	s2,-72(s0)
   106ee:	fbc42983          	lw	s3,-68(s0)
   106f2:	fb842703          	lw	a4,-72(s0)
   106f6:	fbc42783          	lw	a5,-68(s0)
   106fa:	4605                	li	a2,1
   106fc:	853a                	mv	a0,a4
   106fe:	85be                	mv	a1,a5
   10700:	3639                	jal	1020e <ROR>
   10702:	872a                	mv	a4,a0
   10704:	87ae                	mv	a5,a1
   10706:	00e946b3          	xor	a3,s2,a4
   1070a:	eed42c23          	sw	a3,-264(s0)
   1070e:	00f9c7b3          	xor	a5,s3,a5
   10712:	eef42e23          	sw	a5,-260(s0)
   10716:	fb842703          	lw	a4,-72(s0)
   1071a:	fbc42783          	lw	a5,-68(s0)
   1071e:	4619                	li	a2,6
   10720:	853a                	mv	a0,a4
   10722:	85be                	mv	a1,a5
   10724:	34ed                	jal	1020e <ROR>
   10726:	872a                	mv	a4,a0
   10728:	87ae                	mv	a5,a1
   1072a:	ef842603          	lw	a2,-264(s0)
   1072e:	efc42683          	lw	a3,-260(s0)
   10732:	85b2                	mv	a1,a2
   10734:	8db9                	xor	a1,a1,a4
   10736:	eeb42823          	sw	a1,-272(s0)
   1073a:	8fb5                	xor	a5,a5,a3
   1073c:	eef42a23          	sw	a5,-268(s0)
   10740:	f9c42783          	lw	a5,-100(s0)
   10744:	ef042683          	lw	a3,-272(s0)
   10748:	ef442703          	lw	a4,-268(s0)
   1074c:	cb94                	sw	a3,16(a5)
   1074e:	cbd8                	sw	a4,20(a5)
   10750:	fc042903          	lw	s2,-64(s0)
   10754:	fc442983          	lw	s3,-60(s0)
   10758:	fc042703          	lw	a4,-64(s0)
   1075c:	fc442783          	lw	a5,-60(s0)
   10760:	4629                	li	a2,10
   10762:	853a                	mv	a0,a4
   10764:	85be                	mv	a1,a5
   10766:	3465                	jal	1020e <ROR>
   10768:	872a                	mv	a4,a0
   1076a:	87ae                	mv	a5,a1
   1076c:	00e946b3          	xor	a3,s2,a4
   10770:	eed42423          	sw	a3,-280(s0)
   10774:	00f9c7b3          	xor	a5,s3,a5
   10778:	eef42623          	sw	a5,-276(s0)
   1077c:	fc042703          	lw	a4,-64(s0)
   10780:	fc442783          	lw	a5,-60(s0)
   10784:	4645                	li	a2,17
   10786:	853a                	mv	a0,a4
   10788:	85be                	mv	a1,a5
   1078a:	3451                	jal	1020e <ROR>
   1078c:	872a                	mv	a4,a0
   1078e:	87ae                	mv	a5,a1
   10790:	ee842603          	lw	a2,-280(s0)
   10794:	eec42683          	lw	a3,-276(s0)
   10798:	85b2                	mv	a1,a2
   1079a:	8db9                	xor	a1,a1,a4
   1079c:	eeb42023          	sw	a1,-288(s0)
   107a0:	8fb5                	xor	a5,a5,a3
   107a2:	eef42223          	sw	a5,-284(s0)
   107a6:	f9c42783          	lw	a5,-100(s0)
   107aa:	ee042683          	lw	a3,-288(s0)
   107ae:	ee442703          	lw	a4,-284(s0)
   107b2:	cf94                	sw	a3,24(a5)
   107b4:	cfd8                	sw	a4,28(a5)
   107b6:	fc842903          	lw	s2,-56(s0)
   107ba:	fcc42983          	lw	s3,-52(s0)
   107be:	fc842703          	lw	a4,-56(s0)
   107c2:	fcc42783          	lw	a5,-52(s0)
   107c6:	461d                	li	a2,7
   107c8:	853a                	mv	a0,a4
   107ca:	85be                	mv	a1,a5
   107cc:	3489                	jal	1020e <ROR>
   107ce:	872a                	mv	a4,a0
   107d0:	87ae                	mv	a5,a1
   107d2:	00e946b3          	xor	a3,s2,a4
   107d6:	ecd42c23          	sw	a3,-296(s0)
   107da:	00f9c7b3          	xor	a5,s3,a5
   107de:	ecf42e23          	sw	a5,-292(s0)
   107e2:	fc842703          	lw	a4,-56(s0)
   107e6:	fcc42783          	lw	a5,-52(s0)
   107ea:	02900613          	li	a2,41
   107ee:	853a                	mv	a0,a4
   107f0:	85be                	mv	a1,a5
   107f2:	3c31                	jal	1020e <ROR>
   107f4:	872a                	mv	a4,a0
   107f6:	87ae                	mv	a5,a1
   107f8:	ed842603          	lw	a2,-296(s0)
   107fc:	edc42683          	lw	a3,-292(s0)
   10800:	85b2                	mv	a1,a2
   10802:	8db9                	xor	a1,a1,a4
   10804:	ecb42823          	sw	a1,-304(s0)
   10808:	8fb5                	xor	a5,a5,a3
   1080a:	ecf42a23          	sw	a5,-300(s0)
   1080e:	f9c42783          	lw	a5,-100(s0)
   10812:	ed042683          	lw	a3,-304(s0)
   10816:	ed442703          	lw	a4,-300(s0)
   1081a:	d394                	sw	a3,32(a5)
   1081c:	d3d8                	sw	a4,36(a5)
   1081e:	0001                	nop
   10820:	12c12083          	lw	ra,300(sp)
   10824:	12812403          	lw	s0,296(sp)
   10828:	12412903          	lw	s2,292(sp)
   1082c:	12012983          	lw	s3,288(sp)
   10830:	11c12a03          	lw	s4,284(sp)
   10834:	11812a83          	lw	s5,280(sp)
   10838:	11412b03          	lw	s6,276(sp)
   1083c:	11012b83          	lw	s7,272(sp)
   10840:	10c12c03          	lw	s8,268(sp)
   10844:	10812c83          	lw	s9,264(sp)
   10848:	10412d03          	lw	s10,260(sp)
   1084c:	10012d83          	lw	s11,256(sp)
   10850:	6155                	addi	sp,sp,304
   10852:	8082                	ret

00010854 <P12>:
   10854:	1101                	addi	sp,sp,-32
   10856:	ce06                	sw	ra,28(sp)
   10858:	cc22                	sw	s0,24(sp)
   1085a:	1000                	addi	s0,sp,32
   1085c:	fea42623          	sw	a0,-20(s0)
   10860:	0f000593          	li	a1,240
   10864:	fec42503          	lw	a0,-20(s0)
   10868:	34ad                	jal	102d2 <ROUND>
   1086a:	0e100593          	li	a1,225
   1086e:	fec42503          	lw	a0,-20(s0)
   10872:	3485                	jal	102d2 <ROUND>
   10874:	0d200593          	li	a1,210
   10878:	fec42503          	lw	a0,-20(s0)
   1087c:	3c99                	jal	102d2 <ROUND>
   1087e:	0c300593          	li	a1,195
   10882:	fec42503          	lw	a0,-20(s0)
   10886:	34b1                	jal	102d2 <ROUND>
   10888:	0b400593          	li	a1,180
   1088c:	fec42503          	lw	a0,-20(s0)
   10890:	3489                	jal	102d2 <ROUND>
   10892:	0a500593          	li	a1,165
   10896:	fec42503          	lw	a0,-20(s0)
   1089a:	3c25                	jal	102d2 <ROUND>
   1089c:	09600593          	li	a1,150
   108a0:	fec42503          	lw	a0,-20(s0)
   108a4:	343d                	jal	102d2 <ROUND>
   108a6:	08700593          	li	a1,135
   108aa:	fec42503          	lw	a0,-20(s0)
   108ae:	3415                	jal	102d2 <ROUND>
   108b0:	07800593          	li	a1,120
   108b4:	fec42503          	lw	a0,-20(s0)
   108b8:	3c29                	jal	102d2 <ROUND>
   108ba:	06900593          	li	a1,105
   108be:	fec42503          	lw	a0,-20(s0)
   108c2:	3c01                	jal	102d2 <ROUND>
   108c4:	05a00593          	li	a1,90
   108c8:	fec42503          	lw	a0,-20(s0)
   108cc:	3419                	jal	102d2 <ROUND>
   108ce:	04b00593          	li	a1,75
   108d2:	fec42503          	lw	a0,-20(s0)
   108d6:	3af5                	jal	102d2 <ROUND>
   108d8:	0001                	nop
   108da:	40f2                	lw	ra,28(sp)
   108dc:	4462                	lw	s0,24(sp)
   108de:	6105                	addi	sp,sp,32
   108e0:	8082                	ret

000108e2 <P8>:
   108e2:	1101                	addi	sp,sp,-32
   108e4:	ce06                	sw	ra,28(sp)
   108e6:	cc22                	sw	s0,24(sp)
   108e8:	1000                	addi	s0,sp,32
   108ea:	fea42623          	sw	a0,-20(s0)
   108ee:	0b400593          	li	a1,180
   108f2:	fec42503          	lw	a0,-20(s0)
   108f6:	3af1                	jal	102d2 <ROUND>
   108f8:	0a500593          	li	a1,165
   108fc:	fec42503          	lw	a0,-20(s0)
   10900:	3ac9                	jal	102d2 <ROUND>
   10902:	09600593          	li	a1,150
   10906:	fec42503          	lw	a0,-20(s0)
   1090a:	32e1                	jal	102d2 <ROUND>
   1090c:	08700593          	li	a1,135
   10910:	fec42503          	lw	a0,-20(s0)
   10914:	3a7d                	jal	102d2 <ROUND>
   10916:	07800593          	li	a1,120
   1091a:	fec42503          	lw	a0,-20(s0)
   1091e:	3a55                	jal	102d2 <ROUND>
   10920:	06900593          	li	a1,105
   10924:	fec42503          	lw	a0,-20(s0)
   10928:	326d                	jal	102d2 <ROUND>
   1092a:	05a00593          	li	a1,90
   1092e:	fec42503          	lw	a0,-20(s0)
   10932:	3245                	jal	102d2 <ROUND>
   10934:	04b00593          	li	a1,75
   10938:	fec42503          	lw	a0,-20(s0)
   1093c:	3a59                	jal	102d2 <ROUND>
   1093e:	0001                	nop
   10940:	40f2                	lw	ra,28(sp)
   10942:	4462                	lw	s0,24(sp)
   10944:	6105                	addi	sp,sp,32
   10946:	8082                	ret

00010948 <LOADBYTES>:
   10948:	7179                	addi	sp,sp,-48
   1094a:	d622                	sw	s0,44(sp)
   1094c:	1800                	addi	s0,sp,48
   1094e:	fca42e23          	sw	a0,-36(s0)
   10952:	fcb42c23          	sw	a1,-40(s0)
   10956:	4501                	li	a0,0
   10958:	4581                	li	a1,0
   1095a:	fea42023          	sw	a0,-32(s0)
   1095e:	feb42223          	sw	a1,-28(s0)
   10962:	fe042623          	sw	zero,-20(s0)
   10966:	a0a5                	j	109ce <LOADBYTES+0x86>
   10968:	fec42583          	lw	a1,-20(s0)
   1096c:	fdc42503          	lw	a0,-36(s0)
   10970:	95aa                	add	a1,a1,a0
   10972:	0005c583          	lbu	a1,0(a1)
   10976:	862e                	mv	a2,a1
   10978:	4681                	li	a3,0
   1097a:	451d                	li	a0,7
   1097c:	fec42583          	lw	a1,-20(s0)
   10980:	40b505b3          	sub	a1,a0,a1
   10984:	058e                	slli	a1,a1,0x3
   10986:	fe058513          	addi	a0,a1,-32
   1098a:	00054663          	bltz	a0,10996 <LOADBYTES+0x4e>
   1098e:	00a617b3          	sll	a5,a2,a0
   10992:	4701                	li	a4,0
   10994:	a821                	j	109ac <LOADBYTES+0x64>
   10996:	00165313          	srli	t1,a2,0x1
   1099a:	457d                	li	a0,31
   1099c:	8d0d                	sub	a0,a0,a1
   1099e:	00a35533          	srl	a0,t1,a0
   109a2:	00b697b3          	sll	a5,a3,a1
   109a6:	8fc9                	or	a5,a5,a0
   109a8:	00b61733          	sll	a4,a2,a1
   109ac:	fe042583          	lw	a1,-32(s0)
   109b0:	00e5e833          	or	a6,a1,a4
   109b4:	fe442583          	lw	a1,-28(s0)
   109b8:	00f5e8b3          	or	a7,a1,a5
   109bc:	ff042023          	sw	a6,-32(s0)
   109c0:	ff142223          	sw	a7,-28(s0)
   109c4:	fec42583          	lw	a1,-20(s0)
   109c8:	0585                	addi	a1,a1,1
   109ca:	feb42623          	sw	a1,-20(s0)
   109ce:	fec42503          	lw	a0,-20(s0)
   109d2:	fd842583          	lw	a1,-40(s0)
   109d6:	f8b549e3          	blt	a0,a1,10968 <LOADBYTES+0x20>
   109da:	fe042703          	lw	a4,-32(s0)
   109de:	fe442783          	lw	a5,-28(s0)
   109e2:	853a                	mv	a0,a4
   109e4:	85be                	mv	a1,a5
   109e6:	5432                	lw	s0,44(sp)
   109e8:	6145                	addi	sp,sp,48
   109ea:	8082                	ret

000109ec <STOREBYTES>:
   109ec:	7179                	addi	sp,sp,-48
   109ee:	d622                	sw	s0,44(sp)
   109f0:	1800                	addi	s0,sp,48
   109f2:	fca42e23          	sw	a0,-36(s0)
   109f6:	fcb42823          	sw	a1,-48(s0)
   109fa:	fcc42a23          	sw	a2,-44(s0)
   109fe:	fcd42c23          	sw	a3,-40(s0)
   10a02:	fe042623          	sw	zero,-20(s0)
   10a06:	a085                	j	10a66 <STOREBYTES+0x7a>
   10a08:	461d                	li	a2,7
   10a0a:	fec42683          	lw	a3,-20(s0)
   10a0e:	40d606b3          	sub	a3,a2,a3
   10a12:	068e                	slli	a3,a3,0x3
   10a14:	fe068613          	addi	a2,a3,-32
   10a18:	00064863          	bltz	a2,10a28 <STOREBYTES+0x3c>
   10a1c:	fd442683          	lw	a3,-44(s0)
   10a20:	00c6d733          	srl	a4,a3,a2
   10a24:	4781                	li	a5,0
   10a26:	a015                	j	10a4a <STOREBYTES+0x5e>
   10a28:	fd442603          	lw	a2,-44(s0)
   10a2c:	00161593          	slli	a1,a2,0x1
   10a30:	467d                	li	a2,31
   10a32:	8e15                	sub	a2,a2,a3
   10a34:	00c59633          	sll	a2,a1,a2
   10a38:	fd042583          	lw	a1,-48(s0)
   10a3c:	00d5d733          	srl	a4,a1,a3
   10a40:	8f51                	or	a4,a4,a2
   10a42:	fd442603          	lw	a2,-44(s0)
   10a46:	00d657b3          	srl	a5,a2,a3
   10a4a:	fec42683          	lw	a3,-20(s0)
   10a4e:	fdc42603          	lw	a2,-36(s0)
   10a52:	96b2                	add	a3,a3,a2
   10a54:	0ff77613          	zext.b	a2,a4
   10a58:	00c68023          	sb	a2,0(a3)
   10a5c:	fec42683          	lw	a3,-20(s0)
   10a60:	0685                	addi	a3,a3,1
   10a62:	fed42623          	sw	a3,-20(s0)
   10a66:	fec42603          	lw	a2,-20(s0)
   10a6a:	fd842683          	lw	a3,-40(s0)
   10a6e:	f8d64de3          	blt	a2,a3,10a08 <STOREBYTES+0x1c>
   10a72:	0001                	nop
   10a74:	0001                	nop
   10a76:	5432                	lw	s0,44(sp)
   10a78:	6145                	addi	sp,sp,48
   10a7a:	8082                	ret

00010a7c <crypto_hash>:
   10a7c:	7159                	addi	sp,sp,-112
   10a7e:	d686                	sw	ra,108(sp)
   10a80:	d4a2                	sw	s0,104(sp)
   10a82:	d2ca                	sw	s2,100(sp)
   10a84:	d0ce                	sw	s3,96(sp)
   10a86:	ced2                	sw	s4,92(sp)
   10a88:	ccd6                	sw	s5,88(sp)
   10a8a:	cada                	sw	s6,84(sp)
   10a8c:	c8de                	sw	s7,80(sp)
   10a8e:	c6e2                	sw	s8,76(sp)
   10a90:	c4e6                	sw	s9,72(sp)
   10a92:	1880                	addi	s0,sp,112
   10a94:	f8a42e23          	sw	a0,-100(s0)
   10a98:	f8b42c23          	sw	a1,-104(s0)
   10a9c:	f8c42823          	sw	a2,-112(s0)
   10aa0:	f8d42a23          	sw	a3,-108(s0)
   10aa4:	10000713          	li	a4,256
   10aa8:	004017b7          	lui	a5,0x401
   10aac:	c0478793          	addi	a5,a5,-1020 # 400c04 <__BSS_END__+0x3e3f58>
   10ab0:	fae42423          	sw	a4,-88(s0)
   10ab4:	faf42623          	sw	a5,-84(s0)
   10ab8:	4781                	li	a5,0
   10aba:	4801                	li	a6,0
   10abc:	faf42823          	sw	a5,-80(s0)
   10ac0:	fb042a23          	sw	a6,-76(s0)
   10ac4:	faf42c23          	sw	a5,-72(s0)
   10ac8:	fb042e23          	sw	a6,-68(s0)
   10acc:	fcf42023          	sw	a5,-64(s0)
   10ad0:	fd042223          	sw	a6,-60(s0)
   10ad4:	fcf42423          	sw	a5,-56(s0)
   10ad8:	fd042623          	sw	a6,-52(s0)
   10adc:	fa840793          	addi	a5,s0,-88
   10ae0:	853e                	mv	a0,a5
   10ae2:	3b8d                	jal	10854 <P12>
   10ae4:	a085                	j	10b44 <crypto_hash+0xc8>
   10ae6:	45a1                	li	a1,8
   10ae8:	f9842503          	lw	a0,-104(s0)
   10aec:	3db1                	jal	10948 <LOADBYTES>
   10aee:	862a                	mv	a2,a0
   10af0:	86ae                	mv	a3,a1
   10af2:	fa842703          	lw	a4,-88(s0)
   10af6:	fac42783          	lw	a5,-84(s0)
   10afa:	00e64c33          	xor	s8,a2,a4
   10afe:	00f6ccb3          	xor	s9,a3,a5
   10b02:	fb842423          	sw	s8,-88(s0)
   10b06:	fb942623          	sw	s9,-84(s0)
   10b0a:	fa840793          	addi	a5,s0,-88
   10b0e:	853e                	mv	a0,a5
   10b10:	3bc9                	jal	108e2 <P8>
   10b12:	f9842783          	lw	a5,-104(s0)
   10b16:	07a1                	addi	a5,a5,8
   10b18:	f8f42c23          	sw	a5,-104(s0)
   10b1c:	f9042603          	lw	a2,-112(s0)
   10b20:	f9442683          	lw	a3,-108(s0)
   10b24:	5561                	li	a0,-8
   10b26:	55fd                	li	a1,-1
   10b28:	00a60733          	add	a4,a2,a0
   10b2c:	883a                	mv	a6,a4
   10b2e:	00c83833          	sltu	a6,a6,a2
   10b32:	00b687b3          	add	a5,a3,a1
   10b36:	00f806b3          	add	a3,a6,a5
   10b3a:	87b6                	mv	a5,a3
   10b3c:	f8e42823          	sw	a4,-112(s0)
   10b40:	f8f42a23          	sw	a5,-108(s0)
   10b44:	f9442783          	lw	a5,-108(s0)
   10b48:	ffd9                	bnez	a5,10ae6 <crypto_hash+0x6a>
   10b4a:	f9442783          	lw	a5,-108(s0)
   10b4e:	e791                	bnez	a5,10b5a <crypto_hash+0xde>
   10b50:	f9042703          	lw	a4,-112(s0)
   10b54:	479d                	li	a5,7
   10b56:	f8e7e8e3          	bltu	a5,a4,10ae6 <crypto_hash+0x6a>
   10b5a:	f9042783          	lw	a5,-112(s0)
   10b5e:	85be                	mv	a1,a5
   10b60:	f9842503          	lw	a0,-104(s0)
   10b64:	33d5                	jal	10948 <LOADBYTES>
   10b66:	862a                	mv	a2,a0
   10b68:	86ae                	mv	a3,a1
   10b6a:	fa842703          	lw	a4,-88(s0)
   10b6e:	fac42783          	lw	a5,-84(s0)
   10b72:	00e64b33          	xor	s6,a2,a4
   10b76:	00f6cbb3          	xor	s7,a3,a5
   10b7a:	fb642423          	sw	s6,-88(s0)
   10b7e:	fb742623          	sw	s7,-84(s0)
   10b82:	fa842503          	lw	a0,-88(s0)
   10b86:	fac42583          	lw	a1,-84(s0)
   10b8a:	471d                	li	a4,7
   10b8c:	4781                	li	a5,0
   10b8e:	f9042803          	lw	a6,-112(s0)
   10b92:	f9442883          	lw	a7,-108(s0)
   10b96:	41070633          	sub	a2,a4,a6
   10b9a:	8332                	mv	t1,a2
   10b9c:	00673333          	sltu	t1,a4,t1
   10ba0:	411786b3          	sub	a3,a5,a7
   10ba4:	406687b3          	sub	a5,a3,t1
   10ba8:	86be                	mv	a3,a5
   10baa:	8732                	mv	a4,a2
   10bac:	87b6                	mv	a5,a3
   10bae:	87ba                	mv	a5,a4
   10bb0:	078e                	slli	a5,a5,0x3
   10bb2:	fe078713          	addi	a4,a5,-32
   10bb6:	00074863          	bltz	a4,10bc6 <crypto_hash+0x14a>
   10bba:	08000793          	li	a5,128
   10bbe:	00e799b3          	sll	s3,a5,a4
   10bc2:	4901                	li	s2,0
   10bc4:	a015                	j	10be8 <crypto_hash+0x16c>
   10bc6:	08000713          	li	a4,128
   10bca:	00175693          	srli	a3,a4,0x1
   10bce:	477d                	li	a4,31
   10bd0:	8f1d                	sub	a4,a4,a5
   10bd2:	00e6d733          	srl	a4,a3,a4
   10bd6:	4681                	li	a3,0
   10bd8:	00f699b3          	sll	s3,a3,a5
   10bdc:	013769b3          	or	s3,a4,s3
   10be0:	08000713          	li	a4,128
   10be4:	00f71933          	sll	s2,a4,a5
   10be8:	01254a33          	xor	s4,a0,s2
   10bec:	0135cab3          	xor	s5,a1,s3
   10bf0:	fb442423          	sw	s4,-88(s0)
   10bf4:	fb542623          	sw	s5,-84(s0)
   10bf8:	fa840793          	addi	a5,s0,-88
   10bfc:	853e                	mv	a0,a5
   10bfe:	3999                	jal	10854 <P12>
   10c00:	02000713          	li	a4,32
   10c04:	4781                	li	a5,0
   10c06:	f8e42823          	sw	a4,-112(s0)
   10c0a:	f8f42a23          	sw	a5,-108(s0)
   10c0e:	a881                	j	10c5e <crypto_hash+0x1e2>
   10c10:	fa842703          	lw	a4,-88(s0)
   10c14:	fac42783          	lw	a5,-84(s0)
   10c18:	46a1                	li	a3,8
   10c1a:	85ba                	mv	a1,a4
   10c1c:	863e                	mv	a2,a5
   10c1e:	f9c42503          	lw	a0,-100(s0)
   10c22:	33e9                	jal	109ec <STOREBYTES>
   10c24:	fa840793          	addi	a5,s0,-88
   10c28:	853e                	mv	a0,a5
   10c2a:	3965                	jal	108e2 <P8>
   10c2c:	f9c42783          	lw	a5,-100(s0)
   10c30:	07a1                	addi	a5,a5,8
   10c32:	f8f42e23          	sw	a5,-100(s0)
   10c36:	f9042603          	lw	a2,-112(s0)
   10c3a:	f9442683          	lw	a3,-108(s0)
   10c3e:	5561                	li	a0,-8
   10c40:	55fd                	li	a1,-1
   10c42:	00a60733          	add	a4,a2,a0
   10c46:	883a                	mv	a6,a4
   10c48:	00c83833          	sltu	a6,a6,a2
   10c4c:	00b687b3          	add	a5,a3,a1
   10c50:	00f806b3          	add	a3,a6,a5
   10c54:	87b6                	mv	a5,a3
   10c56:	f8e42823          	sw	a4,-112(s0)
   10c5a:	f8f42a23          	sw	a5,-108(s0)
   10c5e:	f9442783          	lw	a5,-108(s0)
   10c62:	f7dd                	bnez	a5,10c10 <crypto_hash+0x194>
   10c64:	f9442783          	lw	a5,-108(s0)
   10c68:	e791                	bnez	a5,10c74 <crypto_hash+0x1f8>
   10c6a:	f9042703          	lw	a4,-112(s0)
   10c6e:	47a1                	li	a5,8
   10c70:	fae7e0e3          	bltu	a5,a4,10c10 <crypto_hash+0x194>
   10c74:	fa842703          	lw	a4,-88(s0)
   10c78:	fac42783          	lw	a5,-84(s0)
   10c7c:	f9042683          	lw	a3,-112(s0)
   10c80:	85ba                	mv	a1,a4
   10c82:	863e                	mv	a2,a5
   10c84:	f9c42503          	lw	a0,-100(s0)
   10c88:	3395                	jal	109ec <STOREBYTES>
   10c8a:	4781                	li	a5,0
   10c8c:	853e                	mv	a0,a5
   10c8e:	50b6                	lw	ra,108(sp)
   10c90:	5426                	lw	s0,104(sp)
   10c92:	5916                	lw	s2,100(sp)
   10c94:	5986                	lw	s3,96(sp)
   10c96:	4a76                	lw	s4,92(sp)
   10c98:	4ae6                	lw	s5,88(sp)
   10c9a:	4b56                	lw	s6,84(sp)
   10c9c:	4bc6                	lw	s7,80(sp)
   10c9e:	4c36                	lw	s8,76(sp)
   10ca0:	4ca6                	lw	s9,72(sp)
   10ca2:	6165                	addi	sp,sp,112
   10ca4:	8082                	ret

00010ca6 <__fp_lock>:
   10ca6:	4501                	li	a0,0
   10ca8:	8082                	ret

00010caa <stdio_exit_handler>:
   10caa:	6671                	lui	a2,0x1c
   10cac:	65d1                	lui	a1,0x14
   10cae:	6571                	lui	a0,0x1c
   10cb0:	26060613          	addi	a2,a2,608 # 1c260 <__sglue>
   10cb4:	a4858593          	addi	a1,a1,-1464 # 13a48 <_fclose_r>
   10cb8:	27050513          	addi	a0,a0,624 # 1c270 <_impure_data>
   10cbc:	aca9                	j	10f16 <_fwalk_sglue>

00010cbe <cleanup_stdio>:
   10cbe:	414c                	lw	a1,4(a0)
   10cc0:	1141                	addi	sp,sp,-16
   10cc2:	c422                	sw	s0,8(sp)
   10cc4:	c606                	sw	ra,12(sp)
   10cc6:	f5c18793          	addi	a5,gp,-164 # 1c9bc <__sf>
   10cca:	842a                	mv	s0,a0
   10ccc:	00f58463          	beq	a1,a5,10cd4 <cleanup_stdio+0x16>
   10cd0:	579020ef          	jal	13a48 <_fclose_r>
   10cd4:	440c                	lw	a1,8(s0)
   10cd6:	fc418793          	addi	a5,gp,-60 # 1ca24 <__sf+0x68>
   10cda:	00f58563          	beq	a1,a5,10ce4 <cleanup_stdio+0x26>
   10cde:	8522                	mv	a0,s0
   10ce0:	569020ef          	jal	13a48 <_fclose_r>
   10ce4:	444c                	lw	a1,12(s0)
   10ce6:	02c18793          	addi	a5,gp,44 # 1ca8c <__global_pointer$+0x2c>
   10cea:	00f58863          	beq	a1,a5,10cfa <cleanup_stdio+0x3c>
   10cee:	8522                	mv	a0,s0
   10cf0:	4422                	lw	s0,8(sp)
   10cf2:	40b2                	lw	ra,12(sp)
   10cf4:	0141                	addi	sp,sp,16
   10cf6:	5530206f          	j	13a48 <_fclose_r>
   10cfa:	40b2                	lw	ra,12(sp)
   10cfc:	4422                	lw	s0,8(sp)
   10cfe:	0141                	addi	sp,sp,16
   10d00:	8082                	ret

00010d02 <__fp_unlock>:
   10d02:	4501                	li	a0,0
   10d04:	8082                	ret

00010d06 <global_stdio_init.part.0>:
   10d06:	1101                	addi	sp,sp,-32
   10d08:	67c5                	lui	a5,0x11
   10d0a:	cc22                	sw	s0,24(sp)
   10d0c:	caa78793          	addi	a5,a5,-854 # 10caa <stdio_exit_handler>
   10d10:	f5c18413          	addi	s0,gp,-164 # 1c9bc <__sf>
   10d14:	ce06                	sw	ra,28(sp)
   10d16:	ca26                	sw	s1,20(sp)
   10d18:	c84a                	sw	s2,16(sp)
   10d1a:	c64e                	sw	s3,12(sp)
   10d1c:	c452                	sw	s4,8(sp)
   10d1e:	f2f1a023          	sw	a5,-224(gp) # 1c980 <__stdio_exit_handler>
   10d22:	4621                	li	a2,8
   10d24:	4791                	li	a5,4
   10d26:	4581                	li	a1,0
   10d28:	fb818513          	addi	a0,gp,-72 # 1ca18 <__sf+0x5c>
   10d2c:	c45c                	sw	a5,12(s0)
   10d2e:	00042023          	sw	zero,0(s0)
   10d32:	00042223          	sw	zero,4(s0)
   10d36:	00042423          	sw	zero,8(s0)
   10d3a:	06042223          	sw	zero,100(s0)
   10d3e:	00042823          	sw	zero,16(s0)
   10d42:	00042a23          	sw	zero,20(s0)
   10d46:	00042c23          	sw	zero,24(s0)
   10d4a:	2d85                	jal	113ba <memset>
   10d4c:	67c1                	lui	a5,0x10
   10d4e:	6a45                	lui	s4,0x11
   10d50:	69c5                	lui	s3,0x11
   10d52:	6945                	lui	s2,0x11
   10d54:	64c5                	lui	s1,0x11
   10d56:	112a0a13          	addi	s4,s4,274 # 11112 <__sread>
   10d5a:	14c98993          	addi	s3,s3,332 # 1114c <__swrite>
   10d5e:	19c90913          	addi	s2,s2,412 # 1119c <__sseek>
   10d62:	1e448493          	addi	s1,s1,484 # 111e4 <__sclose>
   10d66:	07a5                	addi	a5,a5,9 # 10009 <exit-0x8b>
   10d68:	4621                	li	a2,8
   10d6a:	4581                	li	a1,0
   10d6c:	02018513          	addi	a0,gp,32 # 1ca80 <__global_pointer$+0x20>
   10d70:	03442023          	sw	s4,32(s0)
   10d74:	03342223          	sw	s3,36(s0)
   10d78:	03242423          	sw	s2,40(s0)
   10d7c:	d444                	sw	s1,44(s0)
   10d7e:	d87c                	sw	a5,116(s0)
   10d80:	cc40                	sw	s0,28(s0)
   10d82:	06042423          	sw	zero,104(s0)
   10d86:	06042623          	sw	zero,108(s0)
   10d8a:	06042823          	sw	zero,112(s0)
   10d8e:	0c042623          	sw	zero,204(s0)
   10d92:	06042c23          	sw	zero,120(s0)
   10d96:	06042e23          	sw	zero,124(s0)
   10d9a:	08042023          	sw	zero,128(s0)
   10d9e:	2d31                	jal	113ba <memset>
   10da0:	000207b7          	lui	a5,0x20
   10da4:	07c9                	addi	a5,a5,18 # 20012 <__BSS_END__+0x3366>
   10da6:	fc418713          	addi	a4,gp,-60 # 1ca24 <__sf+0x68>
   10daa:	4621                	li	a2,8
   10dac:	4581                	li	a1,0
   10dae:	08818513          	addi	a0,gp,136 # 1cae8 <__global_pointer$+0x88>
   10db2:	09442423          	sw	s4,136(s0)
   10db6:	09342623          	sw	s3,140(s0)
   10dba:	09242823          	sw	s2,144(s0)
   10dbe:	08942a23          	sw	s1,148(s0)
   10dc2:	0cf42e23          	sw	a5,220(s0)
   10dc6:	08e42223          	sw	a4,132(s0)
   10dca:	0c042823          	sw	zero,208(s0)
   10dce:	0c042a23          	sw	zero,212(s0)
   10dd2:	0c042c23          	sw	zero,216(s0)
   10dd6:	12042a23          	sw	zero,308(s0)
   10dda:	0e042023          	sw	zero,224(s0)
   10dde:	0e042223          	sw	zero,228(s0)
   10de2:	0e042423          	sw	zero,232(s0)
   10de6:	2bd1                	jal	113ba <memset>
   10de8:	02c18793          	addi	a5,gp,44 # 1ca8c <__global_pointer$+0x2c>
   10dec:	0f442823          	sw	s4,240(s0)
   10df0:	0f342a23          	sw	s3,244(s0)
   10df4:	0f242c23          	sw	s2,248(s0)
   10df8:	0e942e23          	sw	s1,252(s0)
   10dfc:	40f2                	lw	ra,28(sp)
   10dfe:	0ef42623          	sw	a5,236(s0)
   10e02:	4462                	lw	s0,24(sp)
   10e04:	44d2                	lw	s1,20(sp)
   10e06:	4942                	lw	s2,16(sp)
   10e08:	49b2                	lw	s3,12(sp)
   10e0a:	4a22                	lw	s4,8(sp)
   10e0c:	6105                	addi	sp,sp,32
   10e0e:	8082                	ret

00010e10 <__sfp>:
   10e10:	f201a783          	lw	a5,-224(gp) # 1c980 <__stdio_exit_handler>
   10e14:	1101                	addi	sp,sp,-32
   10e16:	c64e                	sw	s3,12(sp)
   10e18:	ce06                	sw	ra,28(sp)
   10e1a:	cc22                	sw	s0,24(sp)
   10e1c:	ca26                	sw	s1,20(sp)
   10e1e:	c84a                	sw	s2,16(sp)
   10e20:	89aa                	mv	s3,a0
   10e22:	c7cd                	beqz	a5,10ecc <__sfp+0xbc>
   10e24:	6971                	lui	s2,0x1c
   10e26:	26090913          	addi	s2,s2,608 # 1c260 <__sglue>
   10e2a:	54fd                	li	s1,-1
   10e2c:	00492783          	lw	a5,4(s2)
   10e30:	00892403          	lw	s0,8(s2)
   10e34:	17fd                	addi	a5,a5,-1
   10e36:	0007d763          	bgez	a5,10e44 <__sfp+0x34>
   10e3a:	a8b9                	j	10e98 <__sfp+0x88>
   10e3c:	06840413          	addi	s0,s0,104
   10e40:	04978c63          	beq	a5,s1,10e98 <__sfp+0x88>
   10e44:	00c41703          	lh	a4,12(s0)
   10e48:	17fd                	addi	a5,a5,-1
   10e4a:	fb6d                	bnez	a4,10e3c <__sfp+0x2c>
   10e4c:	77c1                	lui	a5,0xffff0
   10e4e:	0785                	addi	a5,a5,1 # ffff0001 <__BSS_END__+0xfffd3355>
   10e50:	c45c                	sw	a5,12(s0)
   10e52:	06042223          	sw	zero,100(s0)
   10e56:	00042023          	sw	zero,0(s0)
   10e5a:	00042423          	sw	zero,8(s0)
   10e5e:	00042223          	sw	zero,4(s0)
   10e62:	00042823          	sw	zero,16(s0)
   10e66:	00042a23          	sw	zero,20(s0)
   10e6a:	00042c23          	sw	zero,24(s0)
   10e6e:	4621                	li	a2,8
   10e70:	4581                	li	a1,0
   10e72:	05c40513          	addi	a0,s0,92
   10e76:	2391                	jal	113ba <memset>
   10e78:	02042823          	sw	zero,48(s0)
   10e7c:	02042a23          	sw	zero,52(s0)
   10e80:	04042223          	sw	zero,68(s0)
   10e84:	04042423          	sw	zero,72(s0)
   10e88:	40f2                	lw	ra,28(sp)
   10e8a:	8522                	mv	a0,s0
   10e8c:	4462                	lw	s0,24(sp)
   10e8e:	44d2                	lw	s1,20(sp)
   10e90:	4942                	lw	s2,16(sp)
   10e92:	49b2                	lw	s3,12(sp)
   10e94:	6105                	addi	sp,sp,32
   10e96:	8082                	ret
   10e98:	00092403          	lw	s0,0(s2)
   10e9c:	c019                	beqz	s0,10ea2 <__sfp+0x92>
   10e9e:	8922                	mv	s2,s0
   10ea0:	b771                	j	10e2c <__sfp+0x1c>
   10ea2:	1ac00593          	li	a1,428
   10ea6:	854e                	mv	a0,s3
   10ea8:	183000ef          	jal	1182a <_malloc_r>
   10eac:	842a                	mv	s0,a0
   10eae:	c10d                	beqz	a0,10ed0 <__sfp+0xc0>
   10eb0:	0531                	addi	a0,a0,12
   10eb2:	4791                	li	a5,4
   10eb4:	00042023          	sw	zero,0(s0)
   10eb8:	c05c                	sw	a5,4(s0)
   10eba:	c408                	sw	a0,8(s0)
   10ebc:	1a000613          	li	a2,416
   10ec0:	4581                	li	a1,0
   10ec2:	29e5                	jal	113ba <memset>
   10ec4:	00892023          	sw	s0,0(s2)
   10ec8:	8922                	mv	s2,s0
   10eca:	b78d                	j	10e2c <__sfp+0x1c>
   10ecc:	3d2d                	jal	10d06 <global_stdio_init.part.0>
   10ece:	bf99                	j	10e24 <__sfp+0x14>
   10ed0:	00092023          	sw	zero,0(s2)
   10ed4:	47b1                	li	a5,12
   10ed6:	00f9a023          	sw	a5,0(s3)
   10eda:	b77d                	j	10e88 <__sfp+0x78>

00010edc <__sinit>:
   10edc:	595c                	lw	a5,52(a0)
   10ede:	c391                	beqz	a5,10ee2 <__sinit+0x6>
   10ee0:	8082                	ret
   10ee2:	f201a703          	lw	a4,-224(gp) # 1c980 <__stdio_exit_handler>
   10ee6:	67c5                	lui	a5,0x11
   10ee8:	cbe78793          	addi	a5,a5,-834 # 10cbe <cleanup_stdio>
   10eec:	d95c                	sw	a5,52(a0)
   10eee:	fb6d                	bnez	a4,10ee0 <__sinit+0x4>
   10ef0:	bd19                	j	10d06 <global_stdio_init.part.0>

00010ef2 <__sfp_lock_acquire>:
   10ef2:	8082                	ret

00010ef4 <__sfp_lock_release>:
   10ef4:	8082                	ret

00010ef6 <__fp_lock_all>:
   10ef6:	6671                	lui	a2,0x1c
   10ef8:	65c5                	lui	a1,0x11
   10efa:	26060613          	addi	a2,a2,608 # 1c260 <__sglue>
   10efe:	ca658593          	addi	a1,a1,-858 # 10ca6 <__fp_lock>
   10f02:	4501                	li	a0,0
   10f04:	a809                	j	10f16 <_fwalk_sglue>

00010f06 <__fp_unlock_all>:
   10f06:	6671                	lui	a2,0x1c
   10f08:	65c5                	lui	a1,0x11
   10f0a:	26060613          	addi	a2,a2,608 # 1c260 <__sglue>
   10f0e:	d0258593          	addi	a1,a1,-766 # 10d02 <__fp_unlock>
   10f12:	4501                	li	a0,0
   10f14:	a009                	j	10f16 <_fwalk_sglue>

00010f16 <_fwalk_sglue>:
   10f16:	7179                	addi	sp,sp,-48
   10f18:	d04a                	sw	s2,32(sp)
   10f1a:	ce4e                	sw	s3,28(sp)
   10f1c:	cc52                	sw	s4,24(sp)
   10f1e:	ca56                	sw	s5,20(sp)
   10f20:	c85a                	sw	s6,16(sp)
   10f22:	c65e                	sw	s7,12(sp)
   10f24:	d606                	sw	ra,44(sp)
   10f26:	d422                	sw	s0,40(sp)
   10f28:	d226                	sw	s1,36(sp)
   10f2a:	8b2a                	mv	s6,a0
   10f2c:	8bae                	mv	s7,a1
   10f2e:	8ab2                	mv	s5,a2
   10f30:	4a01                	li	s4,0
   10f32:	4985                	li	s3,1
   10f34:	597d                	li	s2,-1
   10f36:	004aa483          	lw	s1,4(s5)
   10f3a:	008aa403          	lw	s0,8(s5)
   10f3e:	14fd                	addi	s1,s1,-1
   10f40:	0204c463          	bltz	s1,10f68 <_fwalk_sglue+0x52>
   10f44:	00c45783          	lhu	a5,12(s0)
   10f48:	00f9fb63          	bgeu	s3,a5,10f5e <_fwalk_sglue+0x48>
   10f4c:	00e41783          	lh	a5,14(s0)
   10f50:	85a2                	mv	a1,s0
   10f52:	855a                	mv	a0,s6
   10f54:	01278563          	beq	a5,s2,10f5e <_fwalk_sglue+0x48>
   10f58:	9b82                	jalr	s7
   10f5a:	00aa6a33          	or	s4,s4,a0
   10f5e:	14fd                	addi	s1,s1,-1
   10f60:	06840413          	addi	s0,s0,104
   10f64:	ff2490e3          	bne	s1,s2,10f44 <_fwalk_sglue+0x2e>
   10f68:	000aaa83          	lw	s5,0(s5)
   10f6c:	fc0a95e3          	bnez	s5,10f36 <_fwalk_sglue+0x20>
   10f70:	50b2                	lw	ra,44(sp)
   10f72:	5422                	lw	s0,40(sp)
   10f74:	5492                	lw	s1,36(sp)
   10f76:	5902                	lw	s2,32(sp)
   10f78:	49f2                	lw	s3,28(sp)
   10f7a:	4ad2                	lw	s5,20(sp)
   10f7c:	4b42                	lw	s6,16(sp)
   10f7e:	4bb2                	lw	s7,12(sp)
   10f80:	8552                	mv	a0,s4
   10f82:	4a62                	lw	s4,24(sp)
   10f84:	6145                	addi	sp,sp,48
   10f86:	8082                	ret

00010f88 <_fwrite_r>:
   10f88:	715d                	addi	sp,sp,-80
   10f8a:	de4e                	sw	s3,60(sp)
   10f8c:	02c689b3          	mul	s3,a3,a2
   10f90:	087c                	addi	a5,sp,28
   10f92:	d23e                	sw	a5,36(sp)
   10f94:	4785                	li	a5,1
   10f96:	c4a2                	sw	s0,72(sp)
   10f98:	c2a6                	sw	s1,68(sp)
   10f9a:	c0ca                	sw	s2,64(sp)
   10f9c:	ce2e                	sw	a1,28(sp)
   10f9e:	c686                	sw	ra,76(sp)
   10fa0:	d43e                	sw	a5,40(sp)
   10fa2:	d04e                	sw	s3,32(sp)
   10fa4:	d64e                	sw	s3,44(sp)
   10fa6:	8932                	mv	s2,a2
   10fa8:	84b6                	mv	s1,a3
   10faa:	842a                	mv	s0,a0
   10fac:	85ba                	mv	a1,a4
   10fae:	c119                	beqz	a0,10fb4 <_fwrite_r+0x2c>
   10fb0:	595c                	lw	a5,52(a0)
   10fb2:	cfb9                	beqz	a5,11010 <_fwrite_r+0x88>
   10fb4:	00c59703          	lh	a4,12(a1)
   10fb8:	51fc                	lw	a5,100(a1)
   10fba:	01271693          	slli	a3,a4,0x12
   10fbe:	0006ca63          	bltz	a3,10fd2 <_fwrite_r+0x4a>
   10fc2:	76f9                	lui	a3,0xffffe
   10fc4:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe1353>
   10fc6:	6609                	lui	a2,0x2
   10fc8:	8f51                	or	a4,a4,a2
   10fca:	8ff5                	and	a5,a5,a3
   10fcc:	00e59623          	sh	a4,12(a1)
   10fd0:	d1fc                	sw	a5,100(a1)
   10fd2:	01279713          	slli	a4,a5,0x12
   10fd6:	4501                	li	a0,0
   10fd8:	00075963          	bgez	a4,10fea <_fwrite_r+0x62>
   10fdc:	40b6                	lw	ra,76(sp)
   10fde:	4426                	lw	s0,72(sp)
   10fe0:	4496                	lw	s1,68(sp)
   10fe2:	4906                	lw	s2,64(sp)
   10fe4:	59f2                	lw	s3,60(sp)
   10fe6:	6161                	addi	sp,sp,80
   10fe8:	8082                	ret
   10fea:	1050                	addi	a2,sp,36
   10fec:	8522                	mv	a0,s0
   10fee:	523020ef          	jal	13d10 <__sfvwrite_r>
   10ff2:	87aa                	mv	a5,a0
   10ff4:	8526                	mv	a0,s1
   10ff6:	d3fd                	beqz	a5,10fdc <_fwrite_r+0x54>
   10ff8:	57b2                	lw	a5,44(sp)
   10ffa:	40b6                	lw	ra,76(sp)
   10ffc:	4426                	lw	s0,72(sp)
   10ffe:	40f989b3          	sub	s3,s3,a5
   11002:	0329d533          	divu	a0,s3,s2
   11006:	4496                	lw	s1,68(sp)
   11008:	4906                	lw	s2,64(sp)
   1100a:	59f2                	lw	s3,60(sp)
   1100c:	6161                	addi	sp,sp,80
   1100e:	8082                	ret
   11010:	c63a                	sw	a4,12(sp)
   11012:	35e9                	jal	10edc <__sinit>
   11014:	45b2                	lw	a1,12(sp)
   11016:	bf79                	j	10fb4 <_fwrite_r+0x2c>

00011018 <fwrite>:
   11018:	715d                	addi	sp,sp,-80
   1101a:	c0ca                	sw	s2,64(sp)
   1101c:	02c58933          	mul	s2,a1,a2
   11020:	de4e                	sw	s3,60(sp)
   11022:	f141a983          	lw	s3,-236(gp) # 1c974 <_impure_ptr>
   11026:	087c                	addi	a5,sp,28
   11028:	d23e                	sw	a5,36(sp)
   1102a:	4785                	li	a5,1
   1102c:	c4a2                	sw	s0,72(sp)
   1102e:	c2a6                	sw	s1,68(sp)
   11030:	c686                	sw	ra,76(sp)
   11032:	ce2a                	sw	a0,28(sp)
   11034:	d43e                	sw	a5,40(sp)
   11036:	d04a                	sw	s2,32(sp)
   11038:	d64a                	sw	s2,44(sp)
   1103a:	84ae                	mv	s1,a1
   1103c:	8432                	mv	s0,a2
   1103e:	85b6                	mv	a1,a3
   11040:	00098563          	beqz	s3,1104a <fwrite+0x32>
   11044:	0349a783          	lw	a5,52(s3)
   11048:	cfb9                	beqz	a5,110a6 <fwrite+0x8e>
   1104a:	00c59703          	lh	a4,12(a1)
   1104e:	51fc                	lw	a5,100(a1)
   11050:	01271693          	slli	a3,a4,0x12
   11054:	0006ca63          	bltz	a3,11068 <fwrite+0x50>
   11058:	76f9                	lui	a3,0xffffe
   1105a:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe1353>
   1105c:	6609                	lui	a2,0x2
   1105e:	8f51                	or	a4,a4,a2
   11060:	8ff5                	and	a5,a5,a3
   11062:	00e59623          	sh	a4,12(a1)
   11066:	d1fc                	sw	a5,100(a1)
   11068:	01279713          	slli	a4,a5,0x12
   1106c:	4501                	li	a0,0
   1106e:	00075963          	bgez	a4,11080 <fwrite+0x68>
   11072:	40b6                	lw	ra,76(sp)
   11074:	4426                	lw	s0,72(sp)
   11076:	4496                	lw	s1,68(sp)
   11078:	4906                	lw	s2,64(sp)
   1107a:	59f2                	lw	s3,60(sp)
   1107c:	6161                	addi	sp,sp,80
   1107e:	8082                	ret
   11080:	1050                	addi	a2,sp,36
   11082:	854e                	mv	a0,s3
   11084:	48d020ef          	jal	13d10 <__sfvwrite_r>
   11088:	87aa                	mv	a5,a0
   1108a:	8522                	mv	a0,s0
   1108c:	d3fd                	beqz	a5,11072 <fwrite+0x5a>
   1108e:	57b2                	lw	a5,44(sp)
   11090:	40b6                	lw	ra,76(sp)
   11092:	4426                	lw	s0,72(sp)
   11094:	40f90933          	sub	s2,s2,a5
   11098:	02995533          	divu	a0,s2,s1
   1109c:	59f2                	lw	s3,60(sp)
   1109e:	4496                	lw	s1,68(sp)
   110a0:	4906                	lw	s2,64(sp)
   110a2:	6161                	addi	sp,sp,80
   110a4:	8082                	ret
   110a6:	854e                	mv	a0,s3
   110a8:	c636                	sw	a3,12(sp)
   110aa:	3d0d                	jal	10edc <__sinit>
   110ac:	45b2                	lw	a1,12(sp)
   110ae:	bf71                	j	1104a <fwrite+0x32>

000110b0 <_printf_r>:
   110b0:	7139                	addi	sp,sp,-64
   110b2:	d432                	sw	a2,40(sp)
   110b4:	d636                	sw	a3,44(sp)
   110b6:	d83a                	sw	a4,48(sp)
   110b8:	da3e                	sw	a5,52(sp)
   110ba:	dc42                	sw	a6,56(sp)
   110bc:	de46                	sw	a7,60(sp)
   110be:	862e                	mv	a2,a1
   110c0:	450c                	lw	a1,8(a0)
   110c2:	1034                	addi	a3,sp,40
   110c4:	ce06                	sw	ra,28(sp)
   110c6:	c636                	sw	a3,12(sp)
   110c8:	50b000ef          	jal	11dd2 <_vfprintf_r>
   110cc:	40f2                	lw	ra,28(sp)
   110ce:	6121                	addi	sp,sp,64
   110d0:	8082                	ret

000110d2 <printf>:
   110d2:	f141a303          	lw	t1,-236(gp) # 1c974 <_impure_ptr>
   110d6:	7139                	addi	sp,sp,-64
   110d8:	d432                	sw	a2,40(sp)
   110da:	d636                	sw	a3,44(sp)
   110dc:	d22e                	sw	a1,36(sp)
   110de:	d83a                	sw	a4,48(sp)
   110e0:	da3e                	sw	a5,52(sp)
   110e2:	dc42                	sw	a6,56(sp)
   110e4:	de46                	sw	a7,60(sp)
   110e6:	00832583          	lw	a1,8(t1) # 10144 <frame_dummy+0x18>
   110ea:	1054                	addi	a3,sp,36
   110ec:	862a                	mv	a2,a0
   110ee:	851a                	mv	a0,t1
   110f0:	ce06                	sw	ra,28(sp)
   110f2:	c636                	sw	a3,12(sp)
   110f4:	4df000ef          	jal	11dd2 <_vfprintf_r>
   110f8:	40f2                	lw	ra,28(sp)
   110fa:	6121                	addi	sp,sp,64
   110fc:	8082                	ret

000110fe <_putchar_r>:
   110fe:	4510                	lw	a2,8(a0)
   11100:	75d0206f          	j	1405c <_putc_r>

00011104 <putchar>:
   11104:	f141a783          	lw	a5,-236(gp) # 1c974 <_impure_ptr>
   11108:	85aa                	mv	a1,a0
   1110a:	4790                	lw	a2,8(a5)
   1110c:	853e                	mv	a0,a5
   1110e:	74f0206f          	j	1405c <_putc_r>

00011112 <__sread>:
   11112:	1141                	addi	sp,sp,-16
   11114:	c422                	sw	s0,8(sp)
   11116:	842e                	mv	s0,a1
   11118:	00e59583          	lh	a1,14(a1)
   1111c:	c606                	sw	ra,12(sp)
   1111e:	2a6d                	jal	112d8 <_read_r>
   11120:	00054963          	bltz	a0,11132 <__sread+0x20>
   11124:	483c                	lw	a5,80(s0)
   11126:	40b2                	lw	ra,12(sp)
   11128:	97aa                	add	a5,a5,a0
   1112a:	c83c                	sw	a5,80(s0)
   1112c:	4422                	lw	s0,8(sp)
   1112e:	0141                	addi	sp,sp,16
   11130:	8082                	ret
   11132:	00c45783          	lhu	a5,12(s0)
   11136:	777d                	lui	a4,0xfffff
   11138:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe2353>
   1113a:	8ff9                	and	a5,a5,a4
   1113c:	40b2                	lw	ra,12(sp)
   1113e:	00f41623          	sh	a5,12(s0)
   11142:	4422                	lw	s0,8(sp)
   11144:	0141                	addi	sp,sp,16
   11146:	8082                	ret

00011148 <__seofread>:
   11148:	4501                	li	a0,0
   1114a:	8082                	ret

0001114c <__swrite>:
   1114c:	00c59783          	lh	a5,12(a1)
   11150:	1101                	addi	sp,sp,-32
   11152:	cc22                	sw	s0,24(sp)
   11154:	ca26                	sw	s1,20(sp)
   11156:	c84a                	sw	s2,16(sp)
   11158:	c64e                	sw	s3,12(sp)
   1115a:	ce06                	sw	ra,28(sp)
   1115c:	1007f713          	andi	a4,a5,256
   11160:	842e                	mv	s0,a1
   11162:	84aa                	mv	s1,a0
   11164:	8932                	mv	s2,a2
   11166:	89b6                	mv	s3,a3
   11168:	e315                	bnez	a4,1118c <__swrite+0x40>
   1116a:	777d                	lui	a4,0xfffff
   1116c:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe2353>
   1116e:	8ff9                	and	a5,a5,a4
   11170:	00e41583          	lh	a1,14(s0)
   11174:	00f41623          	sh	a5,12(s0)
   11178:	4462                	lw	s0,24(sp)
   1117a:	40f2                	lw	ra,28(sp)
   1117c:	86ce                	mv	a3,s3
   1117e:	864a                	mv	a2,s2
   11180:	49b2                	lw	s3,12(sp)
   11182:	4942                	lw	s2,16(sp)
   11184:	8526                	mv	a0,s1
   11186:	44d2                	lw	s1,20(sp)
   11188:	6105                	addi	sp,sp,32
   1118a:	a269                	j	11314 <_write_r>
   1118c:	00e59583          	lh	a1,14(a1)
   11190:	4689                	li	a3,2
   11192:	4601                	li	a2,0
   11194:	2221                	jal	1129c <_lseek_r>
   11196:	00c41783          	lh	a5,12(s0)
   1119a:	bfc1                	j	1116a <__swrite+0x1e>

0001119c <__sseek>:
   1119c:	1141                	addi	sp,sp,-16
   1119e:	c422                	sw	s0,8(sp)
   111a0:	842e                	mv	s0,a1
   111a2:	00e59583          	lh	a1,14(a1)
   111a6:	c606                	sw	ra,12(sp)
   111a8:	28d5                	jal	1129c <_lseek_r>
   111aa:	57fd                	li	a5,-1
   111ac:	00f50f63          	beq	a0,a5,111ca <__sseek+0x2e>
   111b0:	00c45783          	lhu	a5,12(s0)
   111b4:	6705                	lui	a4,0x1
   111b6:	40b2                	lw	ra,12(sp)
   111b8:	8fd9                	or	a5,a5,a4
   111ba:	07c2                	slli	a5,a5,0x10
   111bc:	87c1                	srai	a5,a5,0x10
   111be:	c828                	sw	a0,80(s0)
   111c0:	00f41623          	sh	a5,12(s0)
   111c4:	4422                	lw	s0,8(sp)
   111c6:	0141                	addi	sp,sp,16
   111c8:	8082                	ret
   111ca:	00c45783          	lhu	a5,12(s0)
   111ce:	777d                	lui	a4,0xfffff
   111d0:	177d                	addi	a4,a4,-1 # ffffefff <__BSS_END__+0xfffe2353>
   111d2:	8ff9                	and	a5,a5,a4
   111d4:	07c2                	slli	a5,a5,0x10
   111d6:	87c1                	srai	a5,a5,0x10
   111d8:	40b2                	lw	ra,12(sp)
   111da:	00f41623          	sh	a5,12(s0)
   111de:	4422                	lw	s0,8(sp)
   111e0:	0141                	addi	sp,sp,16
   111e2:	8082                	ret

000111e4 <__sclose>:
   111e4:	00e59583          	lh	a1,14(a1)
   111e8:	a009                	j	111ea <_close_r>

000111ea <_close_r>:
   111ea:	1141                	addi	sp,sp,-16
   111ec:	c422                	sw	s0,8(sp)
   111ee:	c226                	sw	s1,4(sp)
   111f0:	842a                	mv	s0,a0
   111f2:	852e                	mv	a0,a1
   111f4:	c606                	sw	ra,12(sp)
   111f6:	f201a223          	sw	zero,-220(gp) # 1c984 <errno>
   111fa:	0f0070ef          	jal	182ea <_close>
   111fe:	57fd                	li	a5,-1
   11200:	00f50763          	beq	a0,a5,1120e <_close_r+0x24>
   11204:	40b2                	lw	ra,12(sp)
   11206:	4422                	lw	s0,8(sp)
   11208:	4492                	lw	s1,4(sp)
   1120a:	0141                	addi	sp,sp,16
   1120c:	8082                	ret
   1120e:	f241a783          	lw	a5,-220(gp) # 1c984 <errno>
   11212:	dbed                	beqz	a5,11204 <_close_r+0x1a>
   11214:	40b2                	lw	ra,12(sp)
   11216:	c01c                	sw	a5,0(s0)
   11218:	4422                	lw	s0,8(sp)
   1121a:	4492                	lw	s1,4(sp)
   1121c:	0141                	addi	sp,sp,16
   1121e:	8082                	ret

00011220 <_reclaim_reent>:
   11220:	f141a783          	lw	a5,-236(gp) # 1c974 <_impure_ptr>
   11224:	06a78b63          	beq	a5,a0,1129a <_reclaim_reent+0x7a>
   11228:	416c                	lw	a1,68(a0)
   1122a:	1101                	addi	sp,sp,-32
   1122c:	ca26                	sw	s1,20(sp)
   1122e:	ce06                	sw	ra,28(sp)
   11230:	cc22                	sw	s0,24(sp)
   11232:	84aa                	mv	s1,a0
   11234:	c59d                	beqz	a1,11262 <_reclaim_reent+0x42>
   11236:	c84a                	sw	s2,16(sp)
   11238:	c64e                	sw	s3,12(sp)
   1123a:	4901                	li	s2,0
   1123c:	08000993          	li	s3,128
   11240:	012587b3          	add	a5,a1,s2
   11244:	4380                	lw	s0,0(a5)
   11246:	c419                	beqz	s0,11254 <_reclaim_reent+0x34>
   11248:	85a2                	mv	a1,s0
   1124a:	4000                	lw	s0,0(s0)
   1124c:	8526                	mv	a0,s1
   1124e:	2e6d                	jal	11608 <_free_r>
   11250:	fc65                	bnez	s0,11248 <_reclaim_reent+0x28>
   11252:	40ec                	lw	a1,68(s1)
   11254:	0911                	addi	s2,s2,4
   11256:	ff3915e3          	bne	s2,s3,11240 <_reclaim_reent+0x20>
   1125a:	8526                	mv	a0,s1
   1125c:	2675                	jal	11608 <_free_r>
   1125e:	4942                	lw	s2,16(sp)
   11260:	49b2                	lw	s3,12(sp)
   11262:	5c8c                	lw	a1,56(s1)
   11264:	c199                	beqz	a1,1126a <_reclaim_reent+0x4a>
   11266:	8526                	mv	a0,s1
   11268:	2645                	jal	11608 <_free_r>
   1126a:	40a0                	lw	s0,64(s1)
   1126c:	c411                	beqz	s0,11278 <_reclaim_reent+0x58>
   1126e:	85a2                	mv	a1,s0
   11270:	4000                	lw	s0,0(s0)
   11272:	8526                	mv	a0,s1
   11274:	2e51                	jal	11608 <_free_r>
   11276:	fc65                	bnez	s0,1126e <_reclaim_reent+0x4e>
   11278:	44ec                	lw	a1,76(s1)
   1127a:	c199                	beqz	a1,11280 <_reclaim_reent+0x60>
   1127c:	8526                	mv	a0,s1
   1127e:	2669                	jal	11608 <_free_r>
   11280:	58dc                	lw	a5,52(s1)
   11282:	c799                	beqz	a5,11290 <_reclaim_reent+0x70>
   11284:	4462                	lw	s0,24(sp)
   11286:	40f2                	lw	ra,28(sp)
   11288:	8526                	mv	a0,s1
   1128a:	44d2                	lw	s1,20(sp)
   1128c:	6105                	addi	sp,sp,32
   1128e:	8782                	jr	a5
   11290:	40f2                	lw	ra,28(sp)
   11292:	4462                	lw	s0,24(sp)
   11294:	44d2                	lw	s1,20(sp)
   11296:	6105                	addi	sp,sp,32
   11298:	8082                	ret
   1129a:	8082                	ret

0001129c <_lseek_r>:
   1129c:	1141                	addi	sp,sp,-16
   1129e:	872e                	mv	a4,a1
   112a0:	c422                	sw	s0,8(sp)
   112a2:	c226                	sw	s1,4(sp)
   112a4:	85b2                	mv	a1,a2
   112a6:	842a                	mv	s0,a0
   112a8:	8636                	mv	a2,a3
   112aa:	853a                	mv	a0,a4
   112ac:	c606                	sw	ra,12(sp)
   112ae:	f201a223          	sw	zero,-220(gp) # 1c984 <errno>
   112b2:	0fc070ef          	jal	183ae <_lseek>
   112b6:	57fd                	li	a5,-1
   112b8:	00f50763          	beq	a0,a5,112c6 <_lseek_r+0x2a>
   112bc:	40b2                	lw	ra,12(sp)
   112be:	4422                	lw	s0,8(sp)
   112c0:	4492                	lw	s1,4(sp)
   112c2:	0141                	addi	sp,sp,16
   112c4:	8082                	ret
   112c6:	f241a783          	lw	a5,-220(gp) # 1c984 <errno>
   112ca:	dbed                	beqz	a5,112bc <_lseek_r+0x20>
   112cc:	40b2                	lw	ra,12(sp)
   112ce:	c01c                	sw	a5,0(s0)
   112d0:	4422                	lw	s0,8(sp)
   112d2:	4492                	lw	s1,4(sp)
   112d4:	0141                	addi	sp,sp,16
   112d6:	8082                	ret

000112d8 <_read_r>:
   112d8:	1141                	addi	sp,sp,-16
   112da:	872e                	mv	a4,a1
   112dc:	c422                	sw	s0,8(sp)
   112de:	c226                	sw	s1,4(sp)
   112e0:	85b2                	mv	a1,a2
   112e2:	842a                	mv	s0,a0
   112e4:	8636                	mv	a2,a3
   112e6:	853a                	mv	a0,a4
   112e8:	c606                	sw	ra,12(sp)
   112ea:	f201a223          	sw	zero,-220(gp) # 1c984 <errno>
   112ee:	0ec070ef          	jal	183da <_read>
   112f2:	57fd                	li	a5,-1
   112f4:	00f50763          	beq	a0,a5,11302 <_read_r+0x2a>
   112f8:	40b2                	lw	ra,12(sp)
   112fa:	4422                	lw	s0,8(sp)
   112fc:	4492                	lw	s1,4(sp)
   112fe:	0141                	addi	sp,sp,16
   11300:	8082                	ret
   11302:	f241a783          	lw	a5,-220(gp) # 1c984 <errno>
   11306:	dbed                	beqz	a5,112f8 <_read_r+0x20>
   11308:	40b2                	lw	ra,12(sp)
   1130a:	c01c                	sw	a5,0(s0)
   1130c:	4422                	lw	s0,8(sp)
   1130e:	4492                	lw	s1,4(sp)
   11310:	0141                	addi	sp,sp,16
   11312:	8082                	ret

00011314 <_write_r>:
   11314:	1141                	addi	sp,sp,-16
   11316:	872e                	mv	a4,a1
   11318:	c422                	sw	s0,8(sp)
   1131a:	c226                	sw	s1,4(sp)
   1131c:	85b2                	mv	a1,a2
   1131e:	842a                	mv	s0,a0
   11320:	8636                	mv	a2,a3
   11322:	853a                	mv	a0,a4
   11324:	c606                	sw	ra,12(sp)
   11326:	f201a223          	sw	zero,-220(gp) # 1c984 <errno>
   1132a:	130070ef          	jal	1845a <_write>
   1132e:	57fd                	li	a5,-1
   11330:	00f50763          	beq	a0,a5,1133e <_write_r+0x2a>
   11334:	40b2                	lw	ra,12(sp)
   11336:	4422                	lw	s0,8(sp)
   11338:	4492                	lw	s1,4(sp)
   1133a:	0141                	addi	sp,sp,16
   1133c:	8082                	ret
   1133e:	f241a783          	lw	a5,-220(gp) # 1c984 <errno>
   11342:	dbed                	beqz	a5,11334 <_write_r+0x20>
   11344:	40b2                	lw	ra,12(sp)
   11346:	c01c                	sw	a5,0(s0)
   11348:	4422                	lw	s0,8(sp)
   1134a:	4492                	lw	s1,4(sp)
   1134c:	0141                	addi	sp,sp,16
   1134e:	8082                	ret

00011350 <__libc_init_array>:
   11350:	1141                	addi	sp,sp,-16
   11352:	c422                	sw	s0,8(sp)
   11354:	67f1                	lui	a5,0x1c
   11356:	6471                	lui	s0,0x1c
   11358:	c04a                	sw	s2,0(sp)
   1135a:	25478793          	addi	a5,a5,596 # 1c254 <__init_array_start>
   1135e:	25440713          	addi	a4,s0,596 # 1c254 <__init_array_start>
   11362:	c606                	sw	ra,12(sp)
   11364:	c226                	sw	s1,4(sp)
   11366:	40e78933          	sub	s2,a5,a4
   1136a:	00e78d63          	beq	a5,a4,11384 <__libc_init_array+0x34>
   1136e:	40295913          	srai	s2,s2,0x2
   11372:	25440413          	addi	s0,s0,596
   11376:	4481                	li	s1,0
   11378:	401c                	lw	a5,0(s0)
   1137a:	0485                	addi	s1,s1,1
   1137c:	0411                	addi	s0,s0,4
   1137e:	9782                	jalr	a5
   11380:	ff24ece3          	bltu	s1,s2,11378 <__libc_init_array+0x28>
   11384:	6471                	lui	s0,0x1c
   11386:	67f1                	lui	a5,0x1c
   11388:	25c78793          	addi	a5,a5,604 # 1c25c <__do_global_dtors_aux_fini_array_entry>
   1138c:	25440713          	addi	a4,s0,596 # 1c254 <__init_array_start>
   11390:	40e78933          	sub	s2,a5,a4
   11394:	40295913          	srai	s2,s2,0x2
   11398:	00e78b63          	beq	a5,a4,113ae <__libc_init_array+0x5e>
   1139c:	25440413          	addi	s0,s0,596
   113a0:	4481                	li	s1,0
   113a2:	401c                	lw	a5,0(s0)
   113a4:	0485                	addi	s1,s1,1
   113a6:	0411                	addi	s0,s0,4
   113a8:	9782                	jalr	a5
   113aa:	ff24ece3          	bltu	s1,s2,113a2 <__libc_init_array+0x52>
   113ae:	40b2                	lw	ra,12(sp)
   113b0:	4422                	lw	s0,8(sp)
   113b2:	4492                	lw	s1,4(sp)
   113b4:	4902                	lw	s2,0(sp)
   113b6:	0141                	addi	sp,sp,16
   113b8:	8082                	ret

000113ba <memset>:
   113ba:	433d                	li	t1,15
   113bc:	872a                	mv	a4,a0
   113be:	02c37363          	bgeu	t1,a2,113e4 <memset+0x2a>
   113c2:	00f77793          	andi	a5,a4,15
   113c6:	efbd                	bnez	a5,11444 <memset+0x8a>
   113c8:	e5ad                	bnez	a1,11432 <memset+0x78>
   113ca:	ff067693          	andi	a3,a2,-16
   113ce:	8a3d                	andi	a2,a2,15
   113d0:	96ba                	add	a3,a3,a4
   113d2:	c30c                	sw	a1,0(a4)
   113d4:	c34c                	sw	a1,4(a4)
   113d6:	c70c                	sw	a1,8(a4)
   113d8:	c74c                	sw	a1,12(a4)
   113da:	0741                	addi	a4,a4,16
   113dc:	fed76be3          	bltu	a4,a3,113d2 <memset+0x18>
   113e0:	e211                	bnez	a2,113e4 <memset+0x2a>
   113e2:	8082                	ret
   113e4:	40c306b3          	sub	a3,t1,a2
   113e8:	068a                	slli	a3,a3,0x2
   113ea:	00000297          	auipc	t0,0x0
   113ee:	9696                	add	a3,a3,t0
   113f0:	00a68067          	jr	10(a3)
   113f4:	00b70723          	sb	a1,14(a4)
   113f8:	00b706a3          	sb	a1,13(a4)
   113fc:	00b70623          	sb	a1,12(a4)
   11400:	00b705a3          	sb	a1,11(a4)
   11404:	00b70523          	sb	a1,10(a4)
   11408:	00b704a3          	sb	a1,9(a4)
   1140c:	00b70423          	sb	a1,8(a4)
   11410:	00b703a3          	sb	a1,7(a4)
   11414:	00b70323          	sb	a1,6(a4)
   11418:	00b702a3          	sb	a1,5(a4)
   1141c:	00b70223          	sb	a1,4(a4)
   11420:	00b701a3          	sb	a1,3(a4)
   11424:	00b70123          	sb	a1,2(a4)
   11428:	00b700a3          	sb	a1,1(a4)
   1142c:	00b70023          	sb	a1,0(a4)
   11430:	8082                	ret
   11432:	0ff5f593          	zext.b	a1,a1
   11436:	00859693          	slli	a3,a1,0x8
   1143a:	8dd5                	or	a1,a1,a3
   1143c:	01059693          	slli	a3,a1,0x10
   11440:	8dd5                	or	a1,a1,a3
   11442:	b761                	j	113ca <memset+0x10>
   11444:	00279693          	slli	a3,a5,0x2
   11448:	00000297          	auipc	t0,0x0
   1144c:	9696                	add	a3,a3,t0
   1144e:	8286                	mv	t0,ra
   11450:	fa8680e7          	jalr	-88(a3)
   11454:	8096                	mv	ra,t0
   11456:	17c1                	addi	a5,a5,-16
   11458:	8f1d                	sub	a4,a4,a5
   1145a:	963e                	add	a2,a2,a5
   1145c:	f8c374e3          	bgeu	t1,a2,113e4 <memset+0x2a>
   11460:	b7a5                	j	113c8 <memset+0xe>

00011462 <__call_exitprocs>:
   11462:	7179                	addi	sp,sp,-48
   11464:	cc52                	sw	s4,24(sp)
   11466:	d04a                	sw	s2,32(sp)
   11468:	f281a903          	lw	s2,-216(gp) # 1c988 <__atexit>
   1146c:	d606                	sw	ra,44(sp)
   1146e:	06090c63          	beqz	s2,114e6 <__call_exitprocs+0x84>
   11472:	ce4e                	sw	s3,28(sp)
   11474:	ca56                	sw	s5,20(sp)
   11476:	c85a                	sw	s6,16(sp)
   11478:	c65e                	sw	s7,12(sp)
   1147a:	d422                	sw	s0,40(sp)
   1147c:	d226                	sw	s1,36(sp)
   1147e:	c462                	sw	s8,8(sp)
   11480:	8b2a                	mv	s6,a0
   11482:	8bae                	mv	s7,a1
   11484:	59fd                	li	s3,-1
   11486:	4a85                	li	s5,1
   11488:	00492483          	lw	s1,4(s2)
   1148c:	fff48413          	addi	s0,s1,-1
   11490:	04044463          	bltz	s0,114d8 <__call_exitprocs+0x76>
   11494:	048a                	slli	s1,s1,0x2
   11496:	94ca                	add	s1,s1,s2
   11498:	040b9c63          	bnez	s7,114f0 <__call_exitprocs+0x8e>
   1149c:	00492783          	lw	a5,4(s2)
   114a0:	40d4                	lw	a3,4(s1)
   114a2:	17fd                	addi	a5,a5,-1
   114a4:	08878063          	beq	a5,s0,11524 <__call_exitprocs+0xc2>
   114a8:	0004a223          	sw	zero,4(s1)
   114ac:	c295                	beqz	a3,114d0 <__call_exitprocs+0x6e>
   114ae:	18892783          	lw	a5,392(s2)
   114b2:	008a9733          	sll	a4,s5,s0
   114b6:	00492c03          	lw	s8,4(s2)
   114ba:	8ff9                	and	a5,a5,a4
   114bc:	e3b9                	bnez	a5,11502 <__call_exitprocs+0xa0>
   114be:	9682                	jalr	a3
   114c0:	00492703          	lw	a4,4(s2)
   114c4:	f281a783          	lw	a5,-216(gp) # 1c988 <__atexit>
   114c8:	05871b63          	bne	a4,s8,1151e <__call_exitprocs+0xbc>
   114cc:	05279963          	bne	a5,s2,1151e <__call_exitprocs+0xbc>
   114d0:	147d                	addi	s0,s0,-1
   114d2:	14f1                	addi	s1,s1,-4
   114d4:	fd3412e3          	bne	s0,s3,11498 <__call_exitprocs+0x36>
   114d8:	5422                	lw	s0,40(sp)
   114da:	5492                	lw	s1,36(sp)
   114dc:	49f2                	lw	s3,28(sp)
   114de:	4ad2                	lw	s5,20(sp)
   114e0:	4b42                	lw	s6,16(sp)
   114e2:	4bb2                	lw	s7,12(sp)
   114e4:	4c22                	lw	s8,8(sp)
   114e6:	50b2                	lw	ra,44(sp)
   114e8:	5902                	lw	s2,32(sp)
   114ea:	4a62                	lw	s4,24(sp)
   114ec:	6145                	addi	sp,sp,48
   114ee:	8082                	ret
   114f0:	1044a783          	lw	a5,260(s1)
   114f4:	fb7784e3          	beq	a5,s7,1149c <__call_exitprocs+0x3a>
   114f8:	147d                	addi	s0,s0,-1
   114fa:	14f1                	addi	s1,s1,-4
   114fc:	ff341ae3          	bne	s0,s3,114f0 <__call_exitprocs+0x8e>
   11500:	bfe1                	j	114d8 <__call_exitprocs+0x76>
   11502:	18c92783          	lw	a5,396(s2)
   11506:	0844a583          	lw	a1,132(s1)
   1150a:	8f7d                	and	a4,a4,a5
   1150c:	ef19                	bnez	a4,1152a <__call_exitprocs+0xc8>
   1150e:	855a                	mv	a0,s6
   11510:	9682                	jalr	a3
   11512:	00492703          	lw	a4,4(s2)
   11516:	f281a783          	lw	a5,-216(gp) # 1c988 <__atexit>
   1151a:	fb8709e3          	beq	a4,s8,114cc <__call_exitprocs+0x6a>
   1151e:	dfcd                	beqz	a5,114d8 <__call_exitprocs+0x76>
   11520:	893e                	mv	s2,a5
   11522:	b79d                	j	11488 <__call_exitprocs+0x26>
   11524:	00892223          	sw	s0,4(s2)
   11528:	b751                	j	114ac <__call_exitprocs+0x4a>
   1152a:	852e                	mv	a0,a1
   1152c:	9682                	jalr	a3
   1152e:	bf49                	j	114c0 <__call_exitprocs+0x5e>

00011530 <atexit>:
   11530:	85aa                	mv	a1,a0
   11532:	4681                	li	a3,0
   11534:	4601                	li	a2,0
   11536:	4501                	li	a0,0
   11538:	2940306f          	j	147cc <__register_exitproc>

0001153c <_malloc_trim_r>:
   1153c:	1101                	addi	sp,sp,-32
   1153e:	c64e                	sw	s3,12(sp)
   11540:	69f1                	lui	s3,0x1c
   11542:	cc22                	sw	s0,24(sp)
   11544:	ca26                	sw	s1,20(sp)
   11546:	c84a                	sw	s2,16(sp)
   11548:	c452                	sw	s4,8(sp)
   1154a:	ce06                	sw	ra,28(sp)
   1154c:	8a2e                	mv	s4,a1
   1154e:	892a                	mv	s2,a0
   11550:	39098993          	addi	s3,s3,912 # 1c390 <__malloc_av_>
   11554:	07b000ef          	jal	11dce <__malloc_lock>
   11558:	0089a703          	lw	a4,8(s3)
   1155c:	6785                	lui	a5,0x1
   1155e:	17bd                	addi	a5,a5,-17 # fef <exit-0xf0a5>
   11560:	4344                	lw	s1,4(a4)
   11562:	6705                	lui	a4,0x1
   11564:	98f1                	andi	s1,s1,-4
   11566:	00f48433          	add	s0,s1,a5
   1156a:	41440433          	sub	s0,s0,s4
   1156e:	8031                	srli	s0,s0,0xc
   11570:	147d                	addi	s0,s0,-1
   11572:	0432                	slli	s0,s0,0xc
   11574:	00e44b63          	blt	s0,a4,1158a <_malloc_trim_r+0x4e>
   11578:	4581                	li	a1,0
   1157a:	854a                	mv	a0,s2
   1157c:	681020ef          	jal	143fc <_sbrk_r>
   11580:	0089a783          	lw	a5,8(s3)
   11584:	97a6                	add	a5,a5,s1
   11586:	00f50e63          	beq	a0,a5,115a2 <_malloc_trim_r+0x66>
   1158a:	854a                	mv	a0,s2
   1158c:	045000ef          	jal	11dd0 <__malloc_unlock>
   11590:	40f2                	lw	ra,28(sp)
   11592:	4462                	lw	s0,24(sp)
   11594:	44d2                	lw	s1,20(sp)
   11596:	4942                	lw	s2,16(sp)
   11598:	49b2                	lw	s3,12(sp)
   1159a:	4a22                	lw	s4,8(sp)
   1159c:	4501                	li	a0,0
   1159e:	6105                	addi	sp,sp,32
   115a0:	8082                	ret
   115a2:	408005b3          	neg	a1,s0
   115a6:	854a                	mv	a0,s2
   115a8:	655020ef          	jal	143fc <_sbrk_r>
   115ac:	57fd                	li	a5,-1
   115ae:	02f50963          	beq	a0,a5,115e0 <_malloc_trim_r+0xa4>
   115b2:	09418793          	addi	a5,gp,148 # 1caf4 <__malloc_current_mallinfo>
   115b6:	4398                	lw	a4,0(a5)
   115b8:	0089a683          	lw	a3,8(s3)
   115bc:	8c81                	sub	s1,s1,s0
   115be:	0014e493          	ori	s1,s1,1
   115c2:	8f01                	sub	a4,a4,s0
   115c4:	854a                	mv	a0,s2
   115c6:	c2c4                	sw	s1,4(a3)
   115c8:	c398                	sw	a4,0(a5)
   115ca:	007000ef          	jal	11dd0 <__malloc_unlock>
   115ce:	40f2                	lw	ra,28(sp)
   115d0:	4462                	lw	s0,24(sp)
   115d2:	44d2                	lw	s1,20(sp)
   115d4:	4942                	lw	s2,16(sp)
   115d6:	49b2                	lw	s3,12(sp)
   115d8:	4a22                	lw	s4,8(sp)
   115da:	4505                	li	a0,1
   115dc:	6105                	addi	sp,sp,32
   115de:	8082                	ret
   115e0:	4581                	li	a1,0
   115e2:	854a                	mv	a0,s2
   115e4:	619020ef          	jal	143fc <_sbrk_r>
   115e8:	0089a703          	lw	a4,8(s3)
   115ec:	46bd                	li	a3,15
   115ee:	40e507b3          	sub	a5,a0,a4
   115f2:	f8f6dce3          	bge	a3,a5,1158a <_malloc_trim_r+0x4e>
   115f6:	f181a683          	lw	a3,-232(gp) # 1c978 <__malloc_sbrk_base>
   115fa:	0017e793          	ori	a5,a5,1
   115fe:	c35c                	sw	a5,4(a4)
   11600:	8d15                	sub	a0,a0,a3
   11602:	08a1aa23          	sw	a0,148(gp) # 1caf4 <__malloc_current_mallinfo>
   11606:	b751                	j	1158a <_malloc_trim_r+0x4e>

00011608 <_free_r>:
   11608:	10058a63          	beqz	a1,1171c <_free_r+0x114>
   1160c:	1141                	addi	sp,sp,-16
   1160e:	c422                	sw	s0,8(sp)
   11610:	c226                	sw	s1,4(sp)
   11612:	842e                	mv	s0,a1
   11614:	84aa                	mv	s1,a0
   11616:	c606                	sw	ra,12(sp)
   11618:	7b6000ef          	jal	11dce <__malloc_lock>
   1161c:	ffc42503          	lw	a0,-4(s0)
   11620:	ff840713          	addi	a4,s0,-8
   11624:	65f1                	lui	a1,0x1c
   11626:	ffe57793          	andi	a5,a0,-2
   1162a:	00f70633          	add	a2,a4,a5
   1162e:	39058593          	addi	a1,a1,912 # 1c390 <__malloc_av_>
   11632:	4254                	lw	a3,4(a2)
   11634:	0085a803          	lw	a6,8(a1)
   11638:	9af1                	andi	a3,a3,-4
   1163a:	12c80363          	beq	a6,a2,11760 <_free_r+0x158>
   1163e:	c254                	sw	a3,4(a2)
   11640:	8905                	andi	a0,a0,1
   11642:	00d60833          	add	a6,a2,a3
   11646:	e935                	bnez	a0,116ba <_free_r+0xb2>
   11648:	ff842303          	lw	t1,-8(s0)
   1164c:	00482803          	lw	a6,4(a6)
   11650:	6571                	lui	a0,0x1c
   11652:	40670733          	sub	a4,a4,t1
   11656:	00872883          	lw	a7,8(a4) # 1008 <exit-0xf08c>
   1165a:	39850513          	addi	a0,a0,920 # 1c398 <__malloc_av_+0x8>
   1165e:	979a                	add	a5,a5,t1
   11660:	00187813          	andi	a6,a6,1
   11664:	0ea88163          	beq	a7,a0,11746 <_free_r+0x13e>
   11668:	00c72303          	lw	t1,12(a4)
   1166c:	0068a623          	sw	t1,12(a7)
   11670:	01132423          	sw	a7,8(t1)
   11674:	10080e63          	beqz	a6,11790 <_free_r+0x188>
   11678:	0017e693          	ori	a3,a5,1
   1167c:	c354                	sw	a3,4(a4)
   1167e:	c21c                	sw	a5,0(a2)
   11680:	1ff00693          	li	a3,511
   11684:	04f6e863          	bltu	a3,a5,116d4 <_free_r+0xcc>
   11688:	ff87f693          	andi	a3,a5,-8
   1168c:	06a1                	addi	a3,a3,8
   1168e:	41c8                	lw	a0,4(a1)
   11690:	96ae                	add	a3,a3,a1
   11692:	4290                	lw	a2,0(a3)
   11694:	0057d813          	srli	a6,a5,0x5
   11698:	4785                	li	a5,1
   1169a:	010797b3          	sll	a5,a5,a6
   1169e:	8fc9                	or	a5,a5,a0
   116a0:	ff868513          	addi	a0,a3,-8
   116a4:	c748                	sw	a0,12(a4)
   116a6:	c710                	sw	a2,8(a4)
   116a8:	c1dc                	sw	a5,4(a1)
   116aa:	c298                	sw	a4,0(a3)
   116ac:	c658                	sw	a4,12(a2)
   116ae:	4422                	lw	s0,8(sp)
   116b0:	40b2                	lw	ra,12(sp)
   116b2:	8526                	mv	a0,s1
   116b4:	4492                	lw	s1,4(sp)
   116b6:	0141                	addi	sp,sp,16
   116b8:	af21                	j	11dd0 <__malloc_unlock>
   116ba:	00482503          	lw	a0,4(a6)
   116be:	8905                	andi	a0,a0,1
   116c0:	cd39                	beqz	a0,1171e <_free_r+0x116>
   116c2:	0017e693          	ori	a3,a5,1
   116c6:	fed42e23          	sw	a3,-4(s0)
   116ca:	c21c                	sw	a5,0(a2)
   116cc:	1ff00693          	li	a3,511
   116d0:	faf6fce3          	bgeu	a3,a5,11688 <_free_r+0x80>
   116d4:	0097d693          	srli	a3,a5,0x9
   116d8:	4611                	li	a2,4
   116da:	0ad66d63          	bltu	a2,a3,11794 <_free_r+0x18c>
   116de:	0067d693          	srli	a3,a5,0x6
   116e2:	03968513          	addi	a0,a3,57
   116e6:	03868613          	addi	a2,a3,56
   116ea:	050e                	slli	a0,a0,0x3
   116ec:	952e                	add	a0,a0,a1
   116ee:	4114                	lw	a3,0(a0)
   116f0:	1561                	addi	a0,a0,-8
   116f2:	00d51663          	bne	a0,a3,116fe <_free_r+0xf6>
   116f6:	a8f1                	j	117d2 <_free_r+0x1ca>
   116f8:	4694                	lw	a3,8(a3)
   116fa:	00d50663          	beq	a0,a3,11706 <_free_r+0xfe>
   116fe:	42d0                	lw	a2,4(a3)
   11700:	9a71                	andi	a2,a2,-4
   11702:	fec7ebe3          	bltu	a5,a2,116f8 <_free_r+0xf0>
   11706:	46c8                	lw	a0,12(a3)
   11708:	c748                	sw	a0,12(a4)
   1170a:	c714                	sw	a3,8(a4)
   1170c:	4422                	lw	s0,8(sp)
   1170e:	c518                	sw	a4,8(a0)
   11710:	40b2                	lw	ra,12(sp)
   11712:	8526                	mv	a0,s1
   11714:	4492                	lw	s1,4(sp)
   11716:	c6d8                	sw	a4,12(a3)
   11718:	0141                	addi	sp,sp,16
   1171a:	ad5d                	j	11dd0 <__malloc_unlock>
   1171c:	8082                	ret
   1171e:	6571                	lui	a0,0x1c
   11720:	97b6                	add	a5,a5,a3
   11722:	39850513          	addi	a0,a0,920 # 1c398 <__malloc_av_+0x8>
   11726:	4614                	lw	a3,8(a2)
   11728:	08a68b63          	beq	a3,a0,117be <_free_r+0x1b6>
   1172c:	00c62803          	lw	a6,12(a2) # 200c <exit-0xe088>
   11730:	0017e513          	ori	a0,a5,1
   11734:	00f70633          	add	a2,a4,a5
   11738:	0106a623          	sw	a6,12(a3)
   1173c:	00d82423          	sw	a3,8(a6)
   11740:	c348                	sw	a0,4(a4)
   11742:	c21c                	sw	a5,0(a2)
   11744:	bf35                	j	11680 <_free_r+0x78>
   11746:	0c081d63          	bnez	a6,11820 <_free_r+0x218>
   1174a:	460c                	lw	a1,8(a2)
   1174c:	4650                	lw	a2,12(a2)
   1174e:	96be                	add	a3,a3,a5
   11750:	0016e793          	ori	a5,a3,1
   11754:	c5d0                	sw	a2,12(a1)
   11756:	c60c                	sw	a1,8(a2)
   11758:	c35c                	sw	a5,4(a4)
   1175a:	9736                	add	a4,a4,a3
   1175c:	c314                	sw	a3,0(a4)
   1175e:	bf81                	j	116ae <_free_r+0xa6>
   11760:	8905                	andi	a0,a0,1
   11762:	96be                	add	a3,a3,a5
   11764:	e909                	bnez	a0,11776 <_free_r+0x16e>
   11766:	ff842503          	lw	a0,-8(s0)
   1176a:	8f09                	sub	a4,a4,a0
   1176c:	475c                	lw	a5,12(a4)
   1176e:	4710                	lw	a2,8(a4)
   11770:	96aa                	add	a3,a3,a0
   11772:	c65c                	sw	a5,12(a2)
   11774:	c790                	sw	a2,8(a5)
   11776:	0016e613          	ori	a2,a3,1
   1177a:	f1c1a783          	lw	a5,-228(gp) # 1c97c <__malloc_trim_threshold>
   1177e:	c350                	sw	a2,4(a4)
   11780:	c598                	sw	a4,8(a1)
   11782:	f2f6e6e3          	bltu	a3,a5,116ae <_free_r+0xa6>
   11786:	f341a583          	lw	a1,-204(gp) # 1c994 <__malloc_top_pad>
   1178a:	8526                	mv	a0,s1
   1178c:	3b45                	jal	1153c <_malloc_trim_r>
   1178e:	b705                	j	116ae <_free_r+0xa6>
   11790:	97b6                	add	a5,a5,a3
   11792:	bf51                	j	11726 <_free_r+0x11e>
   11794:	4651                	li	a2,20
   11796:	00d67e63          	bgeu	a2,a3,117b2 <_free_r+0x1aa>
   1179a:	05400613          	li	a2,84
   1179e:	04d66463          	bltu	a2,a3,117e6 <_free_r+0x1de>
   117a2:	00c7d693          	srli	a3,a5,0xc
   117a6:	06f68513          	addi	a0,a3,111
   117aa:	06e68613          	addi	a2,a3,110
   117ae:	050e                	slli	a0,a0,0x3
   117b0:	bf35                	j	116ec <_free_r+0xe4>
   117b2:	05c68513          	addi	a0,a3,92
   117b6:	05b68613          	addi	a2,a3,91
   117ba:	050e                	slli	a0,a0,0x3
   117bc:	bf05                	j	116ec <_free_r+0xe4>
   117be:	c9d8                	sw	a4,20(a1)
   117c0:	c998                	sw	a4,16(a1)
   117c2:	0017e693          	ori	a3,a5,1
   117c6:	c748                	sw	a0,12(a4)
   117c8:	c708                	sw	a0,8(a4)
   117ca:	c354                	sw	a3,4(a4)
   117cc:	973e                	add	a4,a4,a5
   117ce:	c31c                	sw	a5,0(a4)
   117d0:	bdf9                	j	116ae <_free_r+0xa6>
   117d2:	0045a803          	lw	a6,4(a1)
   117d6:	8609                	srai	a2,a2,0x2
   117d8:	4785                	li	a5,1
   117da:	00c797b3          	sll	a5,a5,a2
   117de:	0107e7b3          	or	a5,a5,a6
   117e2:	c1dc                	sw	a5,4(a1)
   117e4:	b715                	j	11708 <_free_r+0x100>
   117e6:	15400613          	li	a2,340
   117ea:	00d66a63          	bltu	a2,a3,117fe <_free_r+0x1f6>
   117ee:	00f7d693          	srli	a3,a5,0xf
   117f2:	07868513          	addi	a0,a3,120
   117f6:	07768613          	addi	a2,a3,119
   117fa:	050e                	slli	a0,a0,0x3
   117fc:	bdc5                	j	116ec <_free_r+0xe4>
   117fe:	55400613          	li	a2,1364
   11802:	00d66a63          	bltu	a2,a3,11816 <_free_r+0x20e>
   11806:	0127d693          	srli	a3,a5,0x12
   1180a:	07d68513          	addi	a0,a3,125
   1180e:	07c68613          	addi	a2,a3,124
   11812:	050e                	slli	a0,a0,0x3
   11814:	bde1                	j	116ec <_free_r+0xe4>
   11816:	3f800513          	li	a0,1016
   1181a:	07e00613          	li	a2,126
   1181e:	b5f9                	j	116ec <_free_r+0xe4>
   11820:	0017e693          	ori	a3,a5,1
   11824:	c354                	sw	a3,4(a4)
   11826:	c21c                	sw	a5,0(a2)
   11828:	b559                	j	116ae <_free_r+0xa6>

0001182a <_malloc_r>:
   1182a:	7179                	addi	sp,sp,-48
   1182c:	ce4e                	sw	s3,28(sp)
   1182e:	d606                	sw	ra,44(sp)
   11830:	d422                	sw	s0,40(sp)
   11832:	d226                	sw	s1,36(sp)
   11834:	d04a                	sw	s2,32(sp)
   11836:	00b58793          	addi	a5,a1,11
   1183a:	4759                	li	a4,22
   1183c:	89aa                	mv	s3,a0
   1183e:	04f76863          	bltu	a4,a5,1188e <_malloc_r+0x64>
   11842:	47c1                	li	a5,16
   11844:	16b7e863          	bltu	a5,a1,119b4 <_malloc_r+0x18a>
   11848:	2359                	jal	11dce <__malloc_lock>
   1184a:	47e1                	li	a5,24
   1184c:	4589                	li	a1,2
   1184e:	44c1                	li	s1,16
   11850:	6971                	lui	s2,0x1c
   11852:	39090913          	addi	s2,s2,912 # 1c390 <__malloc_av_>
   11856:	97ca                	add	a5,a5,s2
   11858:	43c0                	lw	s0,4(a5)
   1185a:	ff878713          	addi	a4,a5,-8
   1185e:	24e40d63          	beq	s0,a4,11ab8 <_malloc_r+0x28e>
   11862:	405c                	lw	a5,4(s0)
   11864:	4454                	lw	a3,12(s0)
   11866:	4410                	lw	a2,8(s0)
   11868:	9bf1                	andi	a5,a5,-4
   1186a:	97a2                	add	a5,a5,s0
   1186c:	43d8                	lw	a4,4(a5)
   1186e:	c654                	sw	a3,12(a2)
   11870:	c690                	sw	a2,8(a3)
   11872:	00176713          	ori	a4,a4,1
   11876:	854e                	mv	a0,s3
   11878:	c3d8                	sw	a4,4(a5)
   1187a:	2b99                	jal	11dd0 <__malloc_unlock>
   1187c:	00840513          	addi	a0,s0,8
   11880:	50b2                	lw	ra,44(sp)
   11882:	5422                	lw	s0,40(sp)
   11884:	5492                	lw	s1,36(sp)
   11886:	5902                	lw	s2,32(sp)
   11888:	49f2                	lw	s3,28(sp)
   1188a:	6145                	addi	sp,sp,48
   1188c:	8082                	ret
   1188e:	ff87f493          	andi	s1,a5,-8
   11892:	1207c163          	bltz	a5,119b4 <_malloc_r+0x18a>
   11896:	10b4ef63          	bltu	s1,a1,119b4 <_malloc_r+0x18a>
   1189a:	2b15                	jal	11dce <__malloc_lock>
   1189c:	1f700793          	li	a5,503
   118a0:	2c97fb63          	bgeu	a5,s1,11b76 <_malloc_r+0x34c>
   118a4:	0094d793          	srli	a5,s1,0x9
   118a8:	10078b63          	beqz	a5,119be <_malloc_r+0x194>
   118ac:	4711                	li	a4,4
   118ae:	24f76a63          	bltu	a4,a5,11b02 <_malloc_r+0x2d8>
   118b2:	0064d793          	srli	a5,s1,0x6
   118b6:	03978593          	addi	a1,a5,57
   118ba:	03878813          	addi	a6,a5,56
   118be:	00359613          	slli	a2,a1,0x3
   118c2:	6971                	lui	s2,0x1c
   118c4:	39090913          	addi	s2,s2,912 # 1c390 <__malloc_av_>
   118c8:	964a                	add	a2,a2,s2
   118ca:	4240                	lw	s0,4(a2)
   118cc:	1661                	addi	a2,a2,-8
   118ce:	02860163          	beq	a2,s0,118f0 <_malloc_r+0xc6>
   118d2:	453d                	li	a0,15
   118d4:	a039                	j	118e2 <_malloc_r+0xb8>
   118d6:	4454                	lw	a3,12(s0)
   118d8:	1c075e63          	bgez	a4,11ab4 <_malloc_r+0x28a>
   118dc:	00d60a63          	beq	a2,a3,118f0 <_malloc_r+0xc6>
   118e0:	8436                	mv	s0,a3
   118e2:	405c                	lw	a5,4(s0)
   118e4:	9bf1                	andi	a5,a5,-4
   118e6:	40978733          	sub	a4,a5,s1
   118ea:	fee556e3          	bge	a0,a4,118d6 <_malloc_r+0xac>
   118ee:	85c2                	mv	a1,a6
   118f0:	01092403          	lw	s0,16(s2)
   118f4:	6871                	lui	a6,0x1c
   118f6:	39880813          	addi	a6,a6,920 # 1c398 <__malloc_av_+0x8>
   118fa:	1b040a63          	beq	s0,a6,11aae <_malloc_r+0x284>
   118fe:	405c                	lw	a5,4(s0)
   11900:	46bd                	li	a3,15
   11902:	9bf1                	andi	a5,a5,-4
   11904:	40978733          	sub	a4,a5,s1
   11908:	26e6cc63          	blt	a3,a4,11b80 <_malloc_r+0x356>
   1190c:	01092a23          	sw	a6,20(s2)
   11910:	01092823          	sw	a6,16(s2)
   11914:	24075763          	bgez	a4,11b62 <_malloc_r+0x338>
   11918:	1ff00713          	li	a4,511
   1191c:	00492503          	lw	a0,4(s2)
   11920:	1af76163          	bltu	a4,a5,11ac2 <_malloc_r+0x298>
   11924:	ff87f713          	andi	a4,a5,-8
   11928:	0721                	addi	a4,a4,8
   1192a:	974a                	add	a4,a4,s2
   1192c:	4314                	lw	a3,0(a4)
   1192e:	0057d613          	srli	a2,a5,0x5
   11932:	4785                	li	a5,1
   11934:	00c797b3          	sll	a5,a5,a2
   11938:	8d5d                	or	a0,a0,a5
   1193a:	ff870793          	addi	a5,a4,-8
   1193e:	c45c                	sw	a5,12(s0)
   11940:	c414                	sw	a3,8(s0)
   11942:	00a92223          	sw	a0,4(s2)
   11946:	c300                	sw	s0,0(a4)
   11948:	c6c0                	sw	s0,12(a3)
   1194a:	4025d793          	srai	a5,a1,0x2
   1194e:	4605                	li	a2,1
   11950:	00f61633          	sll	a2,a2,a5
   11954:	06c56c63          	bltu	a0,a2,119cc <_malloc_r+0x1a2>
   11958:	00a677b3          	and	a5,a2,a0
   1195c:	ef81                	bnez	a5,11974 <_malloc_r+0x14a>
   1195e:	0606                	slli	a2,a2,0x1
   11960:	99f1                	andi	a1,a1,-4
   11962:	00a677b3          	and	a5,a2,a0
   11966:	0591                	addi	a1,a1,4
   11968:	e791                	bnez	a5,11974 <_malloc_r+0x14a>
   1196a:	0606                	slli	a2,a2,0x1
   1196c:	00a677b3          	and	a5,a2,a0
   11970:	0591                	addi	a1,a1,4
   11972:	dfe5                	beqz	a5,1196a <_malloc_r+0x140>
   11974:	48bd                	li	a7,15
   11976:	00359313          	slli	t1,a1,0x3
   1197a:	934a                	add	t1,t1,s2
   1197c:	851a                	mv	a0,t1
   1197e:	455c                	lw	a5,12(a0)
   11980:	8e2e                	mv	t3,a1
   11982:	1af50063          	beq	a0,a5,11b22 <_malloc_r+0x2f8>
   11986:	43d8                	lw	a4,4(a5)
   11988:	843e                	mv	s0,a5
   1198a:	47dc                	lw	a5,12(a5)
   1198c:	9b71                	andi	a4,a4,-4
   1198e:	409706b3          	sub	a3,a4,s1
   11992:	18d8cf63          	blt	a7,a3,11b30 <_malloc_r+0x306>
   11996:	fe06c6e3          	bltz	a3,11982 <_malloc_r+0x158>
   1199a:	9722                	add	a4,a4,s0
   1199c:	4354                	lw	a3,4(a4)
   1199e:	4410                	lw	a2,8(s0)
   119a0:	854e                	mv	a0,s3
   119a2:	0016e693          	ori	a3,a3,1
   119a6:	c354                	sw	a3,4(a4)
   119a8:	c65c                	sw	a5,12(a2)
   119aa:	c790                	sw	a2,8(a5)
   119ac:	2115                	jal	11dd0 <__malloc_unlock>
   119ae:	00840513          	addi	a0,s0,8
   119b2:	b5f9                	j	11880 <_malloc_r+0x56>
   119b4:	47b1                	li	a5,12
   119b6:	00f9a023          	sw	a5,0(s3)
   119ba:	4501                	li	a0,0
   119bc:	b5d1                	j	11880 <_malloc_r+0x56>
   119be:	20000613          	li	a2,512
   119c2:	04000593          	li	a1,64
   119c6:	03f00813          	li	a6,63
   119ca:	bde5                	j	118c2 <_malloc_r+0x98>
   119cc:	00892403          	lw	s0,8(s2)
   119d0:	c85a                	sw	s6,16(sp)
   119d2:	405c                	lw	a5,4(s0)
   119d4:	ffc7fb13          	andi	s6,a5,-4
   119d8:	009b6763          	bltu	s6,s1,119e6 <_malloc_r+0x1bc>
   119dc:	409b0733          	sub	a4,s6,s1
   119e0:	47bd                	li	a5,15
   119e2:	0ae7c163          	blt	a5,a4,11a84 <_malloc_r+0x25a>
   119e6:	c266                	sw	s9,4(sp)
   119e8:	ca56                	sw	s5,20(sp)
   119ea:	f181a703          	lw	a4,-232(gp) # 1c978 <__malloc_sbrk_base>
   119ee:	f341aa83          	lw	s5,-204(gp) # 1c994 <__malloc_top_pad>
   119f2:	cc52                	sw	s4,24(sp)
   119f4:	c65e                	sw	s7,12(sp)
   119f6:	57fd                	li	a5,-1
   119f8:	01640a33          	add	s4,s0,s6
   119fc:	9aa6                	add	s5,s5,s1
   119fe:	2cf70763          	beq	a4,a5,11ccc <_malloc_r+0x4a2>
   11a02:	6785                	lui	a5,0x1
   11a04:	07bd                	addi	a5,a5,15 # 100f <exit-0xf085>
   11a06:	9abe                	add	s5,s5,a5
   11a08:	77fd                	lui	a5,0xfffff
   11a0a:	00fafab3          	and	s5,s5,a5
   11a0e:	85d6                	mv	a1,s5
   11a10:	854e                	mv	a0,s3
   11a12:	1eb020ef          	jal	143fc <_sbrk_r>
   11a16:	57fd                	li	a5,-1
   11a18:	8baa                	mv	s7,a0
   11a1a:	32f50963          	beq	a0,a5,11d4c <_malloc_r+0x522>
   11a1e:	c462                	sw	s8,8(sp)
   11a20:	19456e63          	bltu	a0,s4,11bbc <_malloc_r+0x392>
   11a24:	09418c13          	addi	s8,gp,148 # 1caf4 <__malloc_current_mallinfo>
   11a28:	000c2583          	lw	a1,0(s8)
   11a2c:	95d6                	add	a1,a1,s5
   11a2e:	00bc2023          	sw	a1,0(s8)
   11a32:	872e                	mv	a4,a1
   11a34:	1eaa1863          	bne	s4,a0,11c24 <_malloc_r+0x3fa>
   11a38:	01451793          	slli	a5,a0,0x14
   11a3c:	1e079463          	bnez	a5,11c24 <_malloc_r+0x3fa>
   11a40:	00892b83          	lw	s7,8(s2)
   11a44:	015b07b3          	add	a5,s6,s5
   11a48:	0017e793          	ori	a5,a5,1
   11a4c:	00fba223          	sw	a5,4(s7)
   11a50:	f301a683          	lw	a3,-208(gp) # 1c990 <__malloc_max_sbrked_mem>
   11a54:	00b6f463          	bgeu	a3,a1,11a5c <_malloc_r+0x232>
   11a58:	f2b1a823          	sw	a1,-208(gp) # 1c990 <__malloc_max_sbrked_mem>
   11a5c:	f2c1a683          	lw	a3,-212(gp) # 1c98c <__malloc_max_total_mem>
   11a60:	00b6f463          	bgeu	a3,a1,11a68 <_malloc_r+0x23e>
   11a64:	f2b1a623          	sw	a1,-212(gp) # 1c98c <__malloc_max_total_mem>
   11a68:	4c22                	lw	s8,8(sp)
   11a6a:	845e                	mv	s0,s7
   11a6c:	9bf1                	andi	a5,a5,-4
   11a6e:	40978733          	sub	a4,a5,s1
   11a72:	2897eb63          	bltu	a5,s1,11d08 <_malloc_r+0x4de>
   11a76:	47bd                	li	a5,15
   11a78:	28e7d863          	bge	a5,a4,11d08 <_malloc_r+0x4de>
   11a7c:	4a62                	lw	s4,24(sp)
   11a7e:	4ad2                	lw	s5,20(sp)
   11a80:	4bb2                	lw	s7,12(sp)
   11a82:	4c92                	lw	s9,4(sp)
   11a84:	0014e793          	ori	a5,s1,1
   11a88:	c05c                	sw	a5,4(s0)
   11a8a:	94a2                	add	s1,s1,s0
   11a8c:	00992423          	sw	s1,8(s2)
   11a90:	00176713          	ori	a4,a4,1
   11a94:	854e                	mv	a0,s3
   11a96:	c0d8                	sw	a4,4(s1)
   11a98:	2e25                	jal	11dd0 <__malloc_unlock>
   11a9a:	50b2                	lw	ra,44(sp)
   11a9c:	00840513          	addi	a0,s0,8
   11aa0:	5422                	lw	s0,40(sp)
   11aa2:	4b42                	lw	s6,16(sp)
   11aa4:	5492                	lw	s1,36(sp)
   11aa6:	5902                	lw	s2,32(sp)
   11aa8:	49f2                	lw	s3,28(sp)
   11aaa:	6145                	addi	sp,sp,48
   11aac:	8082                	ret
   11aae:	00492503          	lw	a0,4(s2)
   11ab2:	bd61                	j	1194a <_malloc_r+0x120>
   11ab4:	4410                	lw	a2,8(s0)
   11ab6:	bb55                	j	1186a <_malloc_r+0x40>
   11ab8:	47c0                	lw	s0,12(a5)
   11aba:	0589                	addi	a1,a1,2
   11abc:	e2878ae3          	beq	a5,s0,118f0 <_malloc_r+0xc6>
   11ac0:	b34d                	j	11862 <_malloc_r+0x38>
   11ac2:	0097d713          	srli	a4,a5,0x9
   11ac6:	4691                	li	a3,4
   11ac8:	0ee6f263          	bgeu	a3,a4,11bac <_malloc_r+0x382>
   11acc:	46d1                	li	a3,20
   11ace:	24e6e663          	bltu	a3,a4,11d1a <_malloc_r+0x4f0>
   11ad2:	05c70613          	addi	a2,a4,92
   11ad6:	05b70693          	addi	a3,a4,91
   11ada:	060e                	slli	a2,a2,0x3
   11adc:	964a                	add	a2,a2,s2
   11ade:	4218                	lw	a4,0(a2)
   11ae0:	1661                	addi	a2,a2,-8
   11ae2:	00e61663          	bne	a2,a4,11aee <_malloc_r+0x2c4>
   11ae6:	a2ed                	j	11cd0 <_malloc_r+0x4a6>
   11ae8:	4718                	lw	a4,8(a4)
   11aea:	00e60663          	beq	a2,a4,11af6 <_malloc_r+0x2cc>
   11aee:	4354                	lw	a3,4(a4)
   11af0:	9af1                	andi	a3,a3,-4
   11af2:	fed7ebe3          	bltu	a5,a3,11ae8 <_malloc_r+0x2be>
   11af6:	4750                	lw	a2,12(a4)
   11af8:	c450                	sw	a2,12(s0)
   11afa:	c418                	sw	a4,8(s0)
   11afc:	c600                	sw	s0,8(a2)
   11afe:	c740                	sw	s0,12(a4)
   11b00:	b5a9                	j	1194a <_malloc_r+0x120>
   11b02:	4751                	li	a4,20
   11b04:	0cf77363          	bgeu	a4,a5,11bca <_malloc_r+0x3a0>
   11b08:	05400713          	li	a4,84
   11b0c:	22f76363          	bltu	a4,a5,11d32 <_malloc_r+0x508>
   11b10:	00c4d793          	srli	a5,s1,0xc
   11b14:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffe23c3>
   11b18:	06e78813          	addi	a6,a5,110
   11b1c:	00359613          	slli	a2,a1,0x3
   11b20:	b34d                	j	118c2 <_malloc_r+0x98>
   11b22:	0e05                	addi	t3,t3,1
   11b24:	003e7793          	andi	a5,t3,3
   11b28:	0521                	addi	a0,a0,8
   11b2a:	cfc5                	beqz	a5,11be2 <_malloc_r+0x3b8>
   11b2c:	455c                	lw	a5,12(a0)
   11b2e:	bd91                	j	11982 <_malloc_r+0x158>
   11b30:	4410                	lw	a2,8(s0)
   11b32:	0014e593          	ori	a1,s1,1
   11b36:	c04c                	sw	a1,4(s0)
   11b38:	c65c                	sw	a5,12(a2)
   11b3a:	c790                	sw	a2,8(a5)
   11b3c:	94a2                	add	s1,s1,s0
   11b3e:	00992a23          	sw	s1,20(s2)
   11b42:	00992823          	sw	s1,16(s2)
   11b46:	0016e793          	ori	a5,a3,1
   11b4a:	0104a623          	sw	a6,12(s1)
   11b4e:	0104a423          	sw	a6,8(s1)
   11b52:	c0dc                	sw	a5,4(s1)
   11b54:	9722                	add	a4,a4,s0
   11b56:	854e                	mv	a0,s3
   11b58:	c314                	sw	a3,0(a4)
   11b5a:	2c9d                	jal	11dd0 <__malloc_unlock>
   11b5c:	00840513          	addi	a0,s0,8
   11b60:	b305                	j	11880 <_malloc_r+0x56>
   11b62:	97a2                	add	a5,a5,s0
   11b64:	43d8                	lw	a4,4(a5)
   11b66:	854e                	mv	a0,s3
   11b68:	00176713          	ori	a4,a4,1
   11b6c:	c3d8                	sw	a4,4(a5)
   11b6e:	248d                	jal	11dd0 <__malloc_unlock>
   11b70:	00840513          	addi	a0,s0,8
   11b74:	b331                	j	11880 <_malloc_r+0x56>
   11b76:	0034d593          	srli	a1,s1,0x3
   11b7a:	00848793          	addi	a5,s1,8
   11b7e:	b9c9                	j	11850 <_malloc_r+0x26>
   11b80:	0014e693          	ori	a3,s1,1
   11b84:	c054                	sw	a3,4(s0)
   11b86:	94a2                	add	s1,s1,s0
   11b88:	00992a23          	sw	s1,20(s2)
   11b8c:	00992823          	sw	s1,16(s2)
   11b90:	00176693          	ori	a3,a4,1
   11b94:	0104a623          	sw	a6,12(s1)
   11b98:	0104a423          	sw	a6,8(s1)
   11b9c:	c0d4                	sw	a3,4(s1)
   11b9e:	97a2                	add	a5,a5,s0
   11ba0:	854e                	mv	a0,s3
   11ba2:	c398                	sw	a4,0(a5)
   11ba4:	2435                	jal	11dd0 <__malloc_unlock>
   11ba6:	00840513          	addi	a0,s0,8
   11baa:	b9d9                	j	11880 <_malloc_r+0x56>
   11bac:	0067d713          	srli	a4,a5,0x6
   11bb0:	03970613          	addi	a2,a4,57
   11bb4:	03870693          	addi	a3,a4,56
   11bb8:	060e                	slli	a2,a2,0x3
   11bba:	b70d                	j	11adc <_malloc_r+0x2b2>
   11bbc:	05240d63          	beq	s0,s2,11c16 <_malloc_r+0x3ec>
   11bc0:	00892403          	lw	s0,8(s2)
   11bc4:	4c22                	lw	s8,8(sp)
   11bc6:	405c                	lw	a5,4(s0)
   11bc8:	b555                	j	11a6c <_malloc_r+0x242>
   11bca:	05c78593          	addi	a1,a5,92
   11bce:	05b78813          	addi	a6,a5,91
   11bd2:	00359613          	slli	a2,a1,0x3
   11bd6:	b1f5                	j	118c2 <_malloc_r+0x98>
   11bd8:	00832783          	lw	a5,8(t1)
   11bdc:	15fd                	addi	a1,a1,-1
   11bde:	1e679563          	bne	a5,t1,11dc8 <_malloc_r+0x59e>
   11be2:	0035f793          	andi	a5,a1,3
   11be6:	1361                	addi	t1,t1,-8
   11be8:	fbe5                	bnez	a5,11bd8 <_malloc_r+0x3ae>
   11bea:	00492703          	lw	a4,4(s2)
   11bee:	fff64793          	not	a5,a2
   11bf2:	8ff9                	and	a5,a5,a4
   11bf4:	00f92223          	sw	a5,4(s2)
   11bf8:	0606                	slli	a2,a2,0x1
   11bfa:	dcc7e9e3          	bltu	a5,a2,119cc <_malloc_r+0x1a2>
   11bfe:	dc0607e3          	beqz	a2,119cc <_malloc_r+0x1a2>
   11c02:	00f67733          	and	a4,a2,a5
   11c06:	e711                	bnez	a4,11c12 <_malloc_r+0x3e8>
   11c08:	0606                	slli	a2,a2,0x1
   11c0a:	00f67733          	and	a4,a2,a5
   11c0e:	0e11                	addi	t3,t3,4
   11c10:	df65                	beqz	a4,11c08 <_malloc_r+0x3de>
   11c12:	85f2                	mv	a1,t3
   11c14:	b38d                	j	11976 <_malloc_r+0x14c>
   11c16:	09418c13          	addi	s8,gp,148 # 1caf4 <__malloc_current_mallinfo>
   11c1a:	000c2703          	lw	a4,0(s8)
   11c1e:	9756                	add	a4,a4,s5
   11c20:	00ec2023          	sw	a4,0(s8)
   11c24:	f181a683          	lw	a3,-232(gp) # 1c978 <__malloc_sbrk_base>
   11c28:	57fd                	li	a5,-1
   11c2a:	12f68563          	beq	a3,a5,11d54 <_malloc_r+0x52a>
   11c2e:	414b87b3          	sub	a5,s7,s4
   11c32:	97ba                	add	a5,a5,a4
   11c34:	00fc2023          	sw	a5,0(s8)
   11c38:	007bfc93          	andi	s9,s7,7
   11c3c:	0a0c8263          	beqz	s9,11ce0 <_malloc_r+0x4b6>
   11c40:	419b8bb3          	sub	s7,s7,s9
   11c44:	6785                	lui	a5,0x1
   11c46:	07a1                	addi	a5,a5,8 # 1008 <exit-0xf08c>
   11c48:	0ba1                	addi	s7,s7,8
   11c4a:	419785b3          	sub	a1,a5,s9
   11c4e:	9ade                	add	s5,s5,s7
   11c50:	415585b3          	sub	a1,a1,s5
   11c54:	05d2                	slli	a1,a1,0x14
   11c56:	0145da13          	srli	s4,a1,0x14
   11c5a:	85d2                	mv	a1,s4
   11c5c:	854e                	mv	a0,s3
   11c5e:	79e020ef          	jal	143fc <_sbrk_r>
   11c62:	57fd                	li	a5,-1
   11c64:	12f50463          	beq	a0,a5,11d8c <_malloc_r+0x562>
   11c68:	41750533          	sub	a0,a0,s7
   11c6c:	01450ab3          	add	s5,a0,s4
   11c70:	000c2703          	lw	a4,0(s8)
   11c74:	01792423          	sw	s7,8(s2)
   11c78:	001ae793          	ori	a5,s5,1
   11c7c:	00ea05b3          	add	a1,s4,a4
   11c80:	00bc2023          	sw	a1,0(s8)
   11c84:	00fba223          	sw	a5,4(s7)
   11c88:	dd2404e3          	beq	s0,s2,11a50 <_malloc_r+0x226>
   11c8c:	46bd                	li	a3,15
   11c8e:	0766f963          	bgeu	a3,s6,11d00 <_malloc_r+0x4d6>
   11c92:	4058                	lw	a4,4(s0)
   11c94:	ff4b0793          	addi	a5,s6,-12
   11c98:	9be1                	andi	a5,a5,-8
   11c9a:	8b05                	andi	a4,a4,1
   11c9c:	8f5d                	or	a4,a4,a5
   11c9e:	c058                	sw	a4,4(s0)
   11ca0:	4615                	li	a2,5
   11ca2:	00f40733          	add	a4,s0,a5
   11ca6:	c350                	sw	a2,4(a4)
   11ca8:	c710                	sw	a2,8(a4)
   11caa:	00f6e563          	bltu	a3,a5,11cb4 <_malloc_r+0x48a>
   11cae:	004ba783          	lw	a5,4(s7)
   11cb2:	bb79                	j	11a50 <_malloc_r+0x226>
   11cb4:	00840593          	addi	a1,s0,8
   11cb8:	854e                	mv	a0,s3
   11cba:	94fff0ef          	jal	11608 <_free_r>
   11cbe:	00892b83          	lw	s7,8(s2)
   11cc2:	000c2583          	lw	a1,0(s8)
   11cc6:	004ba783          	lw	a5,4(s7)
   11cca:	b359                	j	11a50 <_malloc_r+0x226>
   11ccc:	0ac1                	addi	s5,s5,16
   11cce:	b381                	j	11a0e <_malloc_r+0x1e4>
   11cd0:	8689                	srai	a3,a3,0x2
   11cd2:	4785                	li	a5,1
   11cd4:	00d797b3          	sll	a5,a5,a3
   11cd8:	8d5d                	or	a0,a0,a5
   11cda:	00a92223          	sw	a0,4(s2)
   11cde:	bd29                	j	11af8 <_malloc_r+0x2ce>
   11ce0:	015b85b3          	add	a1,s7,s5
   11ce4:	40b005b3          	neg	a1,a1
   11ce8:	05d2                	slli	a1,a1,0x14
   11cea:	0145da13          	srli	s4,a1,0x14
   11cee:	85d2                	mv	a1,s4
   11cf0:	854e                	mv	a0,s3
   11cf2:	70a020ef          	jal	143fc <_sbrk_r>
   11cf6:	57fd                	li	a5,-1
   11cf8:	f6f518e3          	bne	a0,a5,11c68 <_malloc_r+0x43e>
   11cfc:	4a01                	li	s4,0
   11cfe:	bf8d                	j	11c70 <_malloc_r+0x446>
   11d00:	4c22                	lw	s8,8(sp)
   11d02:	4785                	li	a5,1
   11d04:	00fba223          	sw	a5,4(s7)
   11d08:	854e                	mv	a0,s3
   11d0a:	20d9                	jal	11dd0 <__malloc_unlock>
   11d0c:	4501                	li	a0,0
   11d0e:	4a62                	lw	s4,24(sp)
   11d10:	4ad2                	lw	s5,20(sp)
   11d12:	4b42                	lw	s6,16(sp)
   11d14:	4bb2                	lw	s7,12(sp)
   11d16:	4c92                	lw	s9,4(sp)
   11d18:	b6a5                	j	11880 <_malloc_r+0x56>
   11d1a:	05400693          	li	a3,84
   11d1e:	02e6ee63          	bltu	a3,a4,11d5a <_malloc_r+0x530>
   11d22:	00c7d713          	srli	a4,a5,0xc
   11d26:	06f70613          	addi	a2,a4,111
   11d2a:	06e70693          	addi	a3,a4,110
   11d2e:	060e                	slli	a2,a2,0x3
   11d30:	b375                	j	11adc <_malloc_r+0x2b2>
   11d32:	15400713          	li	a4,340
   11d36:	02f76e63          	bltu	a4,a5,11d72 <_malloc_r+0x548>
   11d3a:	00f4d793          	srli	a5,s1,0xf
   11d3e:	07878593          	addi	a1,a5,120
   11d42:	07778813          	addi	a6,a5,119
   11d46:	00359613          	slli	a2,a1,0x3
   11d4a:	bea5                	j	118c2 <_malloc_r+0x98>
   11d4c:	00892403          	lw	s0,8(s2)
   11d50:	405c                	lw	a5,4(s0)
   11d52:	bb29                	j	11a6c <_malloc_r+0x242>
   11d54:	f171ac23          	sw	s7,-232(gp) # 1c978 <__malloc_sbrk_base>
   11d58:	b5c5                	j	11c38 <_malloc_r+0x40e>
   11d5a:	15400693          	li	a3,340
   11d5e:	02e6ed63          	bltu	a3,a4,11d98 <_malloc_r+0x56e>
   11d62:	00f7d713          	srli	a4,a5,0xf
   11d66:	07870613          	addi	a2,a4,120
   11d6a:	07770693          	addi	a3,a4,119
   11d6e:	060e                	slli	a2,a2,0x3
   11d70:	b3b5                	j	11adc <_malloc_r+0x2b2>
   11d72:	55400713          	li	a4,1364
   11d76:	02f76d63          	bltu	a4,a5,11db0 <_malloc_r+0x586>
   11d7a:	0124d793          	srli	a5,s1,0x12
   11d7e:	07d78593          	addi	a1,a5,125
   11d82:	07c78813          	addi	a6,a5,124
   11d86:	00359613          	slli	a2,a1,0x3
   11d8a:	be25                	j	118c2 <_malloc_r+0x98>
   11d8c:	1ce1                	addi	s9,s9,-8
   11d8e:	9ae6                	add	s5,s5,s9
   11d90:	417a8ab3          	sub	s5,s5,s7
   11d94:	4a01                	li	s4,0
   11d96:	bde9                	j	11c70 <_malloc_r+0x446>
   11d98:	55400693          	li	a3,1364
   11d9c:	02e6e163          	bltu	a3,a4,11dbe <_malloc_r+0x594>
   11da0:	0127d713          	srli	a4,a5,0x12
   11da4:	07d70613          	addi	a2,a4,125
   11da8:	07c70693          	addi	a3,a4,124
   11dac:	060e                	slli	a2,a2,0x3
   11dae:	b33d                	j	11adc <_malloc_r+0x2b2>
   11db0:	3f800613          	li	a2,1016
   11db4:	07f00593          	li	a1,127
   11db8:	07e00813          	li	a6,126
   11dbc:	b619                	j	118c2 <_malloc_r+0x98>
   11dbe:	3f800613          	li	a2,1016
   11dc2:	07e00693          	li	a3,126
   11dc6:	bb19                	j	11adc <_malloc_r+0x2b2>
   11dc8:	00492783          	lw	a5,4(s2)
   11dcc:	b535                	j	11bf8 <_malloc_r+0x3ce>

00011dce <__malloc_lock>:
   11dce:	8082                	ret

00011dd0 <__malloc_unlock>:
   11dd0:	8082                	ret

00011dd2 <_vfprintf_r>:
   11dd2:	7145                	addi	sp,sp,-464
   11dd4:	1c112623          	sw	ra,460(sp)
   11dd8:	1c812423          	sw	s0,456(sp)
   11ddc:	1c912223          	sw	s1,452(sp)
   11de0:	1b612823          	sw	s6,432(sp)
   11de4:	84ae                	mv	s1,a1
   11de6:	8b32                	mv	s6,a2
   11de8:	ca36                	sw	a3,20(sp)
   11dea:	842a                	mv	s0,a0
   11dec:	c42a                	sw	a0,8(sp)
   11dee:	602020ef          	jal	143f0 <_localeconv_r>
   11df2:	411c                	lw	a5,0(a0)
   11df4:	853e                	mv	a0,a5
   11df6:	d83e                	sw	a5,48(sp)
   11df8:	081020ef          	jal	14678 <strlen>
   11dfc:	d62a                	sw	a0,44(sp)
   11dfe:	c982                	sw	zero,208(sp)
   11e00:	cb82                	sw	zero,212(sp)
   11e02:	cd82                	sw	zero,216(sp)
   11e04:	cf82                	sw	zero,220(sp)
   11e06:	c409                	beqz	s0,11e10 <_vfprintf_r+0x3e>
   11e08:	5858                	lw	a4,52(s0)
   11e0a:	e319                	bnez	a4,11e10 <_vfprintf_r+0x3e>
   11e0c:	1960106f          	j	12fa2 <_vfprintf_r+0x11d0>
   11e10:	00c49683          	lh	a3,12(s1)
   11e14:	50f8                	lw	a4,100(s1)
   11e16:	01269613          	slli	a2,a3,0x12
   11e1a:	00064a63          	bltz	a2,11e2e <_vfprintf_r+0x5c>
   11e1e:	7679                	lui	a2,0xffffe
   11e20:	167d                	addi	a2,a2,-1 # ffffdfff <__BSS_END__+0xfffe1353>
   11e22:	6589                	lui	a1,0x2
   11e24:	8ecd                	or	a3,a3,a1
   11e26:	8f71                	and	a4,a4,a2
   11e28:	00d49623          	sh	a3,12(s1)
   11e2c:	d0f8                	sw	a4,100(s1)
   11e2e:	01271693          	slli	a3,a4,0x12
   11e32:	0006d463          	bgez	a3,11e3a <_vfprintf_r+0x68>
   11e36:	07b0106f          	j	136b0 <_vfprintf_r+0x18de>
   11e3a:	00c49703          	lh	a4,12(s1)
   11e3e:	00877693          	andi	a3,a4,8
   11e42:	22068a63          	beqz	a3,12076 <_vfprintf_r+0x2a4>
   11e46:	4894                	lw	a3,16(s1)
   11e48:	22068763          	beqz	a3,12076 <_vfprintf_r+0x2a4>
   11e4c:	8b69                	andi	a4,a4,26
   11e4e:	46a9                	li	a3,10
   11e50:	24d70063          	beq	a4,a3,12090 <_vfprintf_r+0x2be>
   11e54:	1b312e23          	sw	s3,444(sp)
   11e58:	1b412c23          	sw	s4,440(sp)
   11e5c:	1ba12023          	sw	s10,416(sp)
   11e60:	676d                	lui	a4,0x1b
   11e62:	1d212023          	sw	s2,448(sp)
   11e66:	1b512a23          	sw	s5,436(sp)
   11e6a:	1b712623          	sw	s7,428(sp)
   11e6e:	1b812423          	sw	s8,424(sp)
   11e72:	1b912223          	sw	s9,420(sp)
   11e76:	19b12e23          	sw	s11,412(sp)
   11e7a:	8d5a                	mv	s10,s6
   11e7c:	b6470793          	addi	a5,a4,-1180 # 1ab64 <__clzsi2+0x1ec>
   11e80:	000d4703          	lbu	a4,0(s10)
   11e84:	0ec10993          	addi	s3,sp,236
   11e88:	6a6d                	lui	s4,0x1b
   11e8a:	c3ce                	sw	s3,196(sp)
   11e8c:	c782                	sw	zero,204(sp)
   11e8e:	c582                	sw	zero,200(sp)
   11e90:	d002                	sw	zero,32(sp)
   11e92:	da02                	sw	zero,52(sp)
   11e94:	c082                	sw	zero,64(sp)
   11e96:	de02                	sw	zero,60(sp)
   11e98:	c482                	sw	zero,72(sp)
   11e9a:	c282                	sw	zero,68(sp)
   11e9c:	c602                	sw	zero,12(sp)
   11e9e:	cc3e                	sw	a5,24(sp)
   11ea0:	844e                	mv	s0,s3
   11ea2:	d68a0a13          	addi	s4,s4,-664 # 1ad68 <zeroes.0>
   11ea6:	18070063          	beqz	a4,12026 <_vfprintf_r+0x254>
   11eaa:	896a                	mv	s2,s10
   11eac:	02500693          	li	a3,37
   11eb0:	2ed70a63          	beq	a4,a3,121a4 <_vfprintf_r+0x3d2>
   11eb4:	00194703          	lbu	a4,1(s2)
   11eb8:	0905                	addi	s2,s2,1
   11eba:	fb7d                	bnez	a4,11eb0 <_vfprintf_r+0xde>
   11ebc:	41a90ab3          	sub	s5,s2,s10
   11ec0:	17a90363          	beq	s2,s10,12026 <_vfprintf_r+0x254>
   11ec4:	46be                	lw	a3,204(sp)
   11ec6:	472e                	lw	a4,200(sp)
   11ec8:	01a42023          	sw	s10,0(s0)
   11ecc:	96d6                	add	a3,a3,s5
   11ece:	0705                	addi	a4,a4,1
   11ed0:	01542223          	sw	s5,4(s0)
   11ed4:	c7b6                	sw	a3,204(sp)
   11ed6:	c5ba                	sw	a4,200(sp)
   11ed8:	469d                	li	a3,7
   11eda:	0421                	addi	s0,s0,8
   11edc:	2ce6cb63          	blt	a3,a4,121b2 <_vfprintf_r+0x3e0>
   11ee0:	47b2                	lw	a5,12(sp)
   11ee2:	00094703          	lbu	a4,0(s2)
   11ee6:	97d6                	add	a5,a5,s5
   11ee8:	c63e                	sw	a5,12(sp)
   11eea:	12070e63          	beqz	a4,12026 <_vfprintf_r+0x254>
   11eee:	00194883          	lbu	a7,1(s2)
   11ef2:	0a0103a3          	sb	zero,167(sp)
   11ef6:	0905                	addi	s2,s2,1
   11ef8:	5afd                	li	s5,-1
   11efa:	4b81                	li	s7,0
   11efc:	4c81                	li	s9,0
   11efe:	05a00b13          	li	s6,90
   11f02:	0905                	addi	s2,s2,1
   11f04:	fe088793          	addi	a5,a7,-32
   11f08:	02fb6b63          	bltu	s6,a5,11f3e <_vfprintf_r+0x16c>
   11f0c:	4762                	lw	a4,24(sp)
   11f0e:	078a                	slli	a5,a5,0x2
   11f10:	97ba                	add	a5,a5,a4
   11f12:	439c                	lw	a5,0(a5)
   11f14:	8782                	jr	a5
   11f16:	4b81                	li	s7,0
   11f18:	fd088793          	addi	a5,a7,-48
   11f1c:	46a5                	li	a3,9
   11f1e:	00094883          	lbu	a7,0(s2)
   11f22:	002b9713          	slli	a4,s7,0x2
   11f26:	9bba                	add	s7,s7,a4
   11f28:	0b86                	slli	s7,s7,0x1
   11f2a:	9bbe                	add	s7,s7,a5
   11f2c:	fd088793          	addi	a5,a7,-48
   11f30:	0905                	addi	s2,s2,1
   11f32:	fef6f6e3          	bgeu	a3,a5,11f1e <_vfprintf_r+0x14c>
   11f36:	fe088793          	addi	a5,a7,-32
   11f3a:	fcfb79e3          	bgeu	s6,a5,11f0c <_vfprintf_r+0x13a>
   11f3e:	0e088463          	beqz	a7,12026 <_vfprintf_r+0x254>
   11f42:	13110623          	sb	a7,300(sp)
   11f46:	0a0103a3          	sb	zero,167(sp)
   11f4a:	4d85                	li	s11,1
   11f4c:	4b05                	li	s6,1
   11f4e:	12c10d13          	addi	s10,sp,300
   11f52:	c802                	sw	zero,16(sp)
   11f54:	4a81                	li	s5,0
   11f56:	d402                	sw	zero,40(sp)
   11f58:	d202                	sw	zero,36(sp)
   11f5a:	ce02                	sw	zero,28(sp)
   11f5c:	002cf293          	andi	t0,s9,2
   11f60:	00028363          	beqz	t0,11f66 <_vfprintf_r+0x194>
   11f64:	0d89                	addi	s11,s11,2
   11f66:	084cff93          	andi	t6,s9,132
   11f6a:	463e                	lw	a2,204(sp)
   11f6c:	000f9663          	bnez	t6,11f78 <_vfprintf_r+0x1a6>
   11f70:	41bb8733          	sub	a4,s7,s11
   11f74:	0ce047e3          	bgtz	a4,12842 <_vfprintf_r+0xa70>
   11f78:	0a714703          	lbu	a4,167(sp)
   11f7c:	cf19                	beqz	a4,11f9a <_vfprintf_r+0x1c8>
   11f7e:	472e                	lw	a4,200(sp)
   11f80:	0a710593          	addi	a1,sp,167
   11f84:	c00c                	sw	a1,0(s0)
   11f86:	0605                	addi	a2,a2,1
   11f88:	4585                	li	a1,1
   11f8a:	0705                	addi	a4,a4,1
   11f8c:	c04c                	sw	a1,4(s0)
   11f8e:	c7b2                	sw	a2,204(sp)
   11f90:	c5ba                	sw	a4,200(sp)
   11f92:	459d                	li	a1,7
   11f94:	0421                	addi	s0,s0,8
   11f96:	2ee5c763          	blt	a1,a4,12284 <_vfprintf_r+0x4b2>
   11f9a:	00028f63          	beqz	t0,11fb8 <_vfprintf_r+0x1e6>
   11f9e:	472e                	lw	a4,200(sp)
   11fa0:	4589                	li	a1,2
   11fa2:	0609                	addi	a2,a2,2
   11fa4:	0705                	addi	a4,a4,1
   11fa6:	113c                	addi	a5,sp,168
   11fa8:	c04c                	sw	a1,4(s0)
   11faa:	c01c                	sw	a5,0(s0)
   11fac:	c7b2                	sw	a2,204(sp)
   11fae:	c5ba                	sw	a4,200(sp)
   11fb0:	459d                	li	a1,7
   11fb2:	0421                	addi	s0,s0,8
   11fb4:	12e5cae3          	blt	a1,a4,128e8 <_vfprintf_r+0xb16>
   11fb8:	08000713          	li	a4,128
   11fbc:	72ef8e63          	beq	t6,a4,126f8 <_vfprintf_r+0x926>
   11fc0:	416a8ab3          	sub	s5,s5,s6
   11fc4:	7d504a63          	bgtz	s5,12798 <_vfprintf_r+0x9c6>
   11fc8:	100cf713          	andi	a4,s9,256
   11fcc:	60071e63          	bnez	a4,125e8 <_vfprintf_r+0x816>
   11fd0:	47ae                	lw	a5,200(sp)
   11fd2:	965a                	add	a2,a2,s6
   11fd4:	01a42023          	sw	s10,0(s0)
   11fd8:	0785                	addi	a5,a5,1
   11fda:	01642223          	sw	s6,4(s0)
   11fde:	c7b2                	sw	a2,204(sp)
   11fe0:	c5be                	sw	a5,200(sp)
   11fe2:	471d                	li	a4,7
   11fe4:	36f74563          	blt	a4,a5,1234e <_vfprintf_r+0x57c>
   11fe8:	0421                	addi	s0,s0,8
   11fea:	004cfe13          	andi	t3,s9,4
   11fee:	000e0663          	beqz	t3,11ffa <_vfprintf_r+0x228>
   11ff2:	41bb8ab3          	sub	s5,s7,s11
   11ff6:	115047e3          	bgtz	s5,12904 <_vfprintf_r+0xb32>
   11ffa:	835e                	mv	t1,s7
   11ffc:	01bbd363          	bge	s7,s11,12002 <_vfprintf_r+0x230>
   12000:	836e                	mv	t1,s11
   12002:	47b2                	lw	a5,12(sp)
   12004:	979a                	add	a5,a5,t1
   12006:	c63e                	sw	a5,12(sp)
   12008:	00061ce3          	bnez	a2,12820 <_vfprintf_r+0xa4e>
   1200c:	47c2                	lw	a5,16(sp)
   1200e:	c582                	sw	zero,200(sp)
   12010:	c789                	beqz	a5,1201a <_vfprintf_r+0x248>
   12012:	45c2                	lw	a1,16(sp)
   12014:	4522                	lw	a0,8(sp)
   12016:	df2ff0ef          	jal	11608 <_free_r>
   1201a:	844e                	mv	s0,s3
   1201c:	8d4a                	mv	s10,s2
   1201e:	000d4703          	lbu	a4,0(s10)
   12022:	e80714e3          	bnez	a4,11eaa <_vfprintf_r+0xd8>
   12026:	47be                	lw	a5,204(sp)
   12028:	c399                	beqz	a5,1202e <_vfprintf_r+0x25c>
   1202a:	31a0106f          	j	13344 <_vfprintf_r+0x1572>
   1202e:	00c4d783          	lhu	a5,12(s1)
   12032:	1c012903          	lw	s2,448(sp)
   12036:	1bc12983          	lw	s3,444(sp)
   1203a:	0407f793          	andi	a5,a5,64
   1203e:	1b812a03          	lw	s4,440(sp)
   12042:	1b412a83          	lw	s5,436(sp)
   12046:	1ac12b83          	lw	s7,428(sp)
   1204a:	1a812c03          	lw	s8,424(sp)
   1204e:	1a412c83          	lw	s9,420(sp)
   12052:	1a012d03          	lw	s10,416(sp)
   12056:	19c12d83          	lw	s11,412(sp)
   1205a:	c399                	beqz	a5,12060 <_vfprintf_r+0x28e>
   1205c:	6540106f          	j	136b0 <_vfprintf_r+0x18de>
   12060:	1cc12083          	lw	ra,460(sp)
   12064:	1c812403          	lw	s0,456(sp)
   12068:	4532                	lw	a0,12(sp)
   1206a:	1c412483          	lw	s1,452(sp)
   1206e:	1b012b03          	lw	s6,432(sp)
   12072:	6179                	addi	sp,sp,464
   12074:	8082                	ret
   12076:	4522                	lw	a0,8(sp)
   12078:	85a6                	mv	a1,s1
   1207a:	18e020ef          	jal	14208 <__swsetup_r>
   1207e:	c119                	beqz	a0,12084 <_vfprintf_r+0x2b2>
   12080:	6300106f          	j	136b0 <_vfprintf_r+0x18de>
   12084:	00c49703          	lh	a4,12(s1)
   12088:	46a9                	li	a3,10
   1208a:	8b69                	andi	a4,a4,26
   1208c:	dcd714e3          	bne	a4,a3,11e54 <_vfprintf_r+0x82>
   12090:	00e49703          	lh	a4,14(s1)
   12094:	dc0740e3          	bltz	a4,11e54 <_vfprintf_r+0x82>
   12098:	46d2                	lw	a3,20(sp)
   1209a:	4522                	lw	a0,8(sp)
   1209c:	865a                	mv	a2,s6
   1209e:	85a6                	mv	a1,s1
   120a0:	0e9010ef          	jal	13988 <__sbprintf>
   120a4:	c62a                	sw	a0,12(sp)
   120a6:	bf6d                	j	12060 <_vfprintf_r+0x28e>
   120a8:	4c22                	lw	s8,8(sp)
   120aa:	8562                	mv	a0,s8
   120ac:	344020ef          	jal	143f0 <_localeconv_r>
   120b0:	415c                	lw	a5,4(a0)
   120b2:	853e                	mv	a0,a5
   120b4:	c2be                	sw	a5,68(sp)
   120b6:	5c2020ef          	jal	14678 <strlen>
   120ba:	87aa                	mv	a5,a0
   120bc:	8562                	mv	a0,s8
   120be:	c4be                	sw	a5,72(sp)
   120c0:	8c3e                	mv	s8,a5
   120c2:	32e020ef          	jal	143f0 <_localeconv_r>
   120c6:	451c                	lw	a5,8(a0)
   120c8:	de3e                	sw	a5,60(sp)
   120ca:	280c16e3          	bnez	s8,12b56 <_vfprintf_r+0xd84>
   120ce:	00094883          	lbu	a7,0(s2)
   120d2:	bd05                	j	11f02 <_vfprintf_r+0x130>
   120d4:	00094883          	lbu	a7,0(s2)
   120d8:	020cec93          	ori	s9,s9,32
   120dc:	b51d                	j	11f02 <_vfprintf_r+0x130>
   120de:	010cec93          	ori	s9,s9,16
   120e2:	020cf793          	andi	a5,s9,32
   120e6:	26078e63          	beqz	a5,12362 <_vfprintf_r+0x590>
   120ea:	47d2                	lw	a5,20(sp)
   120ec:	00778c13          	addi	s8,a5,7
   120f0:	ff8c7c13          	andi	s8,s8,-8
   120f4:	004c2783          	lw	a5,4(s8)
   120f8:	000c2b03          	lw	s6,0(s8)
   120fc:	008c0713          	addi	a4,s8,8
   12100:	ca3a                	sw	a4,20(sp)
   12102:	8dbe                	mv	s11,a5
   12104:	2807c463          	bltz	a5,1238c <_vfprintf_r+0x5ba>
   12108:	8ee6                	mv	t4,s9
   1210a:	380ac563          	bltz	s5,12494 <_vfprintf_r+0x6c2>
   1210e:	01bb67b3          	or	a5,s6,s11
   12112:	f7fcfe93          	andi	t4,s9,-129
   12116:	36079f63          	bnez	a5,12494 <_vfprintf_r+0x6c2>
   1211a:	380a9263          	bnez	s5,1249e <_vfprintf_r+0x6cc>
   1211e:	4b01                	li	s6,0
   12120:	8cf6                	mv	s9,t4
   12122:	19010d13          	addi	s10,sp,400
   12126:	0a714703          	lbu	a4,167(sp)
   1212a:	8dd6                	mv	s11,s5
   1212c:	016ad363          	bge	s5,s6,12132 <_vfprintf_r+0x360>
   12130:	8dda                	mv	s11,s6
   12132:	c802                	sw	zero,16(sp)
   12134:	d402                	sw	zero,40(sp)
   12136:	d202                	sw	zero,36(sp)
   12138:	ce02                	sw	zero,28(sp)
   1213a:	e20701e3          	beqz	a4,11f5c <_vfprintf_r+0x18a>
   1213e:	0d85                	addi	s11,s11,1
   12140:	bd31                	j	11f5c <_vfprintf_r+0x18a>
   12142:	010cec93          	ori	s9,s9,16
   12146:	020cf793          	andi	a5,s9,32
   1214a:	2a078d63          	beqz	a5,12404 <_vfprintf_r+0x632>
   1214e:	47d2                	lw	a5,20(sp)
   12150:	00778c13          	addi	s8,a5,7
   12154:	ff8c7c13          	andi	s8,s8,-8
   12158:	000c2b03          	lw	s6,0(s8)
   1215c:	004c2d83          	lw	s11,4(s8)
   12160:	008c0793          	addi	a5,s8,8
   12164:	ca3e                	sw	a5,20(sp)
   12166:	bffcfe93          	andi	t4,s9,-1025
   1216a:	4781                	li	a5,0
   1216c:	4701                	li	a4,0
   1216e:	0ae103a3          	sb	a4,167(sp)
   12172:	220acd63          	bltz	s5,123ac <_vfprintf_r+0x5da>
   12176:	01bb6733          	or	a4,s6,s11
   1217a:	f7fefc93          	andi	s9,t4,-129
   1217e:	6c071063          	bnez	a4,1283e <_vfprintf_r+0xa6c>
   12182:	520a9763          	bnez	s5,126b0 <_vfprintf_r+0x8de>
   12186:	180790e3          	bnez	a5,12b06 <_vfprintf_r+0xd34>
   1218a:	001efb13          	andi	s6,t4,1
   1218e:	19010d13          	addi	s10,sp,400
   12192:	f80b0ae3          	beqz	s6,12126 <_vfprintf_r+0x354>
   12196:	03000793          	li	a5,48
   1219a:	18f107a3          	sb	a5,399(sp)
   1219e:	18f10d13          	addi	s10,sp,399
   121a2:	b751                	j	12126 <_vfprintf_r+0x354>
   121a4:	41a90ab3          	sub	s5,s2,s10
   121a8:	d1a91ee3          	bne	s2,s10,11ec4 <_vfprintf_r+0xf2>
   121ac:	00094703          	lbu	a4,0(s2)
   121b0:	bb2d                	j	11eea <_vfprintf_r+0x118>
   121b2:	4522                	lw	a0,8(sp)
   121b4:	01d0                	addi	a2,sp,196
   121b6:	85a6                	mv	a1,s1
   121b8:	065010ef          	jal	13a1c <__sprint_r>
   121bc:	e60519e3          	bnez	a0,1202e <_vfprintf_r+0x25c>
   121c0:	844e                	mv	s0,s3
   121c2:	bb39                	j	11ee0 <_vfprintf_r+0x10e>
   121c4:	008cf713          	andi	a4,s9,8
   121c8:	1c0716e3          	bnez	a4,12b94 <_vfprintf_r+0xdc2>
   121cc:	47d2                	lw	a5,20(sp)
   121ce:	0908                	addi	a0,sp,144
   121d0:	c846                	sw	a7,16(sp)
   121d2:	00778c13          	addi	s8,a5,7
   121d6:	ff8c7c13          	andi	s8,s8,-8
   121da:	000c2583          	lw	a1,0(s8)
   121de:	004c2603          	lw	a2,4(s8)
   121e2:	008c0793          	addi	a5,s8,8
   121e6:	ca3e                	sw	a5,20(sp)
   121e8:	604080ef          	jal	1a7ec <__extenddftf2>
   121ec:	45ca                	lw	a1,144(sp)
   121ee:	465a                	lw	a2,148(sp)
   121f0:	46ea                	lw	a3,152(sp)
   121f2:	477a                	lw	a4,156(sp)
   121f4:	48c2                	lw	a7,16(sp)
   121f6:	0988                	addi	a0,sp,208
   121f8:	c846                	sw	a7,16(sp)
   121fa:	cfba                	sw	a4,220(sp)
   121fc:	c9ae                	sw	a1,208(sp)
   121fe:	cbb2                	sw	a2,212(sp)
   12200:	cdb6                	sw	a3,216(sp)
   12202:	7d6020ef          	jal	149d8 <_ldcheck>
   12206:	d72a                	sw	a0,172(sp)
   12208:	4709                	li	a4,2
   1220a:	48c2                	lw	a7,16(sp)
   1220c:	5ce50be3          	beq	a0,a4,12fe2 <_vfprintf_r+0x1210>
   12210:	4705                	li	a4,1
   12212:	6ae505e3          	beq	a0,a4,130bc <_vfprintf_r+0x12ea>
   12216:	06100713          	li	a4,97
   1221a:	2ae88ce3          	beq	a7,a4,12cd2 <_vfprintf_r+0xf00>
   1221e:	04100713          	li	a4,65
   12222:	05800793          	li	a5,88
   12226:	2ae888e3          	beq	a7,a4,12cd6 <_vfprintf_r+0xf04>
   1222a:	577d                	li	a4,-1
   1222c:	00ea9463          	bne	s5,a4,12234 <_vfprintf_r+0x462>
   12230:	6260106f          	j	13856 <_vfprintf_r+0x1a84>
   12234:	fdf8f713          	andi	a4,a7,-33
   12238:	04700693          	li	a3,71
   1223c:	c802                	sw	zero,16(sp)
   1223e:	00d71563          	bne	a4,a3,12248 <_vfprintf_r+0x476>
   12242:	000a9363          	bnez	s5,12248 <_vfprintf_r+0x476>
   12246:	4a85                	li	s5,1
   12248:	4c7e                	lw	s8,220(sp)
   1224a:	100ce793          	ori	a5,s9,256
   1224e:	c6be                	sw	a5,76(sp)
   12250:	dc02                	sw	zero,56(sp)
   12252:	4fce                	lw	t6,208(sp)
   12254:	4f5e                	lw	t5,212(sp)
   12256:	4eee                	lw	t4,216(sp)
   12258:	000c5963          	bgez	s8,1226a <_vfprintf_r+0x498>
   1225c:	80000737          	lui	a4,0x80000
   12260:	02d00793          	li	a5,45
   12264:	01874c33          	xor	s8,a4,s8
   12268:	dc3e                	sw	a5,56(sp)
   1226a:	fbf88713          	addi	a4,a7,-65
   1226e:	02500693          	li	a3,37
   12272:	28e6eee3          	bltu	a3,a4,12d0e <_vfprintf_r+0xf3c>
   12276:	66ed                	lui	a3,0x1b
   12278:	070a                	slli	a4,a4,0x2
   1227a:	cd068693          	addi	a3,a3,-816 # 1acd0 <__clzsi2+0x358>
   1227e:	9736                	add	a4,a4,a3
   12280:	4318                	lw	a4,0(a4)
   12282:	8702                	jr	a4
   12284:	4522                	lw	a0,8(sp)
   12286:	01d0                	addi	a2,sp,196
   12288:	85a6                	mv	a1,s1
   1228a:	c8c6                	sw	a7,80(sp)
   1228c:	c6fe                	sw	t6,76(sp)
   1228e:	dc16                	sw	t0,56(sp)
   12290:	78c010ef          	jal	13a1c <__sprint_r>
   12294:	58051d63          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   12298:	463e                	lw	a2,204(sp)
   1229a:	48c6                	lw	a7,80(sp)
   1229c:	4fb6                	lw	t6,76(sp)
   1229e:	52e2                	lw	t0,56(sp)
   122a0:	844e                	mv	s0,s3
   122a2:	b9e5                	j	11f9a <_vfprintf_r+0x1c8>
   122a4:	4aae                	lw	s5,200(sp)
   122a6:	5782                	lw	a5,32(sp)
   122a8:	4705                	li	a4,1
   122aa:	01a42023          	sw	s10,0(s0)
   122ae:	00160c13          	addi	s8,a2,1
   122b2:	0a85                	addi	s5,s5,1
   122b4:	00840b13          	addi	s6,s0,8
   122b8:	7af75763          	bge	a4,a5,12a66 <_vfprintf_r+0xc94>
   122bc:	4705                	li	a4,1
   122be:	c058                	sw	a4,4(s0)
   122c0:	c7e2                	sw	s8,204(sp)
   122c2:	c5d6                	sw	s5,200(sp)
   122c4:	471d                	li	a4,7
   122c6:	395741e3          	blt	a4,s5,12e48 <_vfprintf_r+0x1076>
   122ca:	57b2                	lw	a5,44(sp)
   122cc:	5742                	lw	a4,48(sp)
   122ce:	0a85                	addi	s5,s5,1
   122d0:	9c3e                	add	s8,s8,a5
   122d2:	00eb2023          	sw	a4,0(s6)
   122d6:	00fb2223          	sw	a5,4(s6)
   122da:	c7e2                	sw	s8,204(sp)
   122dc:	c5d6                	sw	s5,200(sp)
   122de:	471d                	li	a4,7
   122e0:	0b21                	addi	s6,s6,8
   122e2:	37574fe3          	blt	a4,s5,12e60 <_vfprintf_r+0x108e>
   122e6:	474e                	lw	a4,208(sp)
   122e8:	5782                	lw	a5,32(sp)
   122ea:	010c                	addi	a1,sp,128
   122ec:	c93a                	sw	a4,144(sp)
   122ee:	475e                	lw	a4,212(sp)
   122f0:	0908                	addi	a0,sp,144
   122f2:	c102                	sw	zero,128(sp)
   122f4:	cb3a                	sw	a4,148(sp)
   122f6:	476e                	lw	a4,216(sp)
   122f8:	c302                	sw	zero,132(sp)
   122fa:	c502                	sw	zero,136(sp)
   122fc:	cd3a                	sw	a4,152(sp)
   122fe:	477e                	lw	a4,220(sp)
   12300:	c702                	sw	zero,140(sp)
   12302:	fff78413          	addi	s0,a5,-1
   12306:	cf3a                	sw	a4,156(sp)
   12308:	200060ef          	jal	18508 <__eqtf2>
   1230c:	78050263          	beqz	a0,12a90 <_vfprintf_r+0xcbe>
   12310:	001d0793          	addi	a5,s10,1
   12314:	0a85                	addi	s5,s5,1
   12316:	9c22                	add	s8,s8,s0
   12318:	00fb2023          	sw	a5,0(s6)
   1231c:	008b2223          	sw	s0,4(s6)
   12320:	c7e2                	sw	s8,204(sp)
   12322:	c5d6                	sw	s5,200(sp)
   12324:	479d                	li	a5,7
   12326:	0b21                	addi	s6,s6,8
   12328:	7557c963          	blt	a5,s5,12a7a <_vfprintf_r+0xca8>
   1232c:	4686                	lw	a3,64(sp)
   1232e:	1958                	addi	a4,sp,180
   12330:	001a8793          	addi	a5,s5,1
   12334:	01868633          	add	a2,a3,s8
   12338:	00eb2023          	sw	a4,0(s6)
   1233c:	00db2223          	sw	a3,4(s6)
   12340:	c7b2                	sw	a2,204(sp)
   12342:	c5be                	sw	a5,200(sp)
   12344:	471d                	li	a4,7
   12346:	008b0413          	addi	s0,s6,8
   1234a:	caf750e3          	bge	a4,a5,11fea <_vfprintf_r+0x218>
   1234e:	4522                	lw	a0,8(sp)
   12350:	01d0                	addi	a2,sp,196
   12352:	85a6                	mv	a1,s1
   12354:	6c8010ef          	jal	13a1c <__sprint_r>
   12358:	4c051b63          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   1235c:	463e                	lw	a2,204(sp)
   1235e:	844e                	mv	s0,s3
   12360:	b169                	j	11fea <_vfprintf_r+0x218>
   12362:	4752                	lw	a4,20(sp)
   12364:	010cf793          	andi	a5,s9,16
   12368:	00072b03          	lw	s6,0(a4) # 80000000 <__BSS_END__+0x7ffe3354>
   1236c:	0711                	addi	a4,a4,4
   1236e:	ca3a                	sw	a4,20(sp)
   12370:	7c079e63          	bnez	a5,12b4c <_vfprintf_r+0xd7a>
   12374:	040cf793          	andi	a5,s9,64
   12378:	7c078663          	beqz	a5,12b44 <_vfprintf_r+0xd72>
   1237c:	0b42                	slli	s6,s6,0x10
   1237e:	410b5b13          	srai	s6,s6,0x10
   12382:	41fb5d93          	srai	s11,s6,0x1f
   12386:	87ee                	mv	a5,s11
   12388:	d807d0e3          	bgez	a5,12108 <_vfprintf_r+0x336>
   1238c:	02d00713          	li	a4,45
   12390:	016037b3          	snez	a5,s6
   12394:	41b00db3          	neg	s11,s11
   12398:	0ae103a3          	sb	a4,167(sp)
   1239c:	40fd8db3          	sub	s11,s11,a5
   123a0:	41600b33          	neg	s6,s6
   123a4:	8ee6                	mv	t4,s9
   123a6:	4785                	li	a5,1
   123a8:	dc0ad7e3          	bgez	s5,12176 <_vfprintf_r+0x3a4>
   123ac:	4705                	li	a4,1
   123ae:	0ee78363          	beq	a5,a4,12494 <_vfprintf_r+0x6c2>
   123b2:	4709                	li	a4,2
   123b4:	30e78763          	beq	a5,a4,126c2 <_vfprintf_r+0x8f0>
   123b8:	19010d13          	addi	s10,sp,400
   123bc:	01dd9793          	slli	a5,s11,0x1d
   123c0:	007b7713          	andi	a4,s6,7
   123c4:	003b5b13          	srli	s6,s6,0x3
   123c8:	03070713          	addi	a4,a4,48
   123cc:	0167eb33          	or	s6,a5,s6
   123d0:	003ddd93          	srli	s11,s11,0x3
   123d4:	feed0fa3          	sb	a4,-1(s10)
   123d8:	01bb67b3          	or	a5,s6,s11
   123dc:	866a                	mv	a2,s10
   123de:	1d7d                	addi	s10,s10,-1
   123e0:	fff1                	bnez	a5,123bc <_vfprintf_r+0x5ea>
   123e2:	001ef693          	andi	a3,t4,1
   123e6:	30068463          	beqz	a3,126ee <_vfprintf_r+0x91c>
   123ea:	03000693          	li	a3,48
   123ee:	30d70063          	beq	a4,a3,126ee <_vfprintf_r+0x91c>
   123f2:	1679                	addi	a2,a2,-2
   123f4:	0b1c                	addi	a5,sp,400
   123f6:	fedd0fa3          	sb	a3,-1(s10)
   123fa:	40c78b33          	sub	s6,a5,a2
   123fe:	8cf6                	mv	s9,t4
   12400:	8d32                	mv	s10,a2
   12402:	b315                	j	12126 <_vfprintf_r+0x354>
   12404:	4752                	lw	a4,20(sp)
   12406:	010cf793          	andi	a5,s9,16
   1240a:	00072b03          	lw	s6,0(a4)
   1240e:	0711                	addi	a4,a4,4
   12410:	ca3a                	sw	a4,20(sp)
   12412:	72079663          	bnez	a5,12b3e <_vfprintf_r+0xd6c>
   12416:	040cf793          	andi	a5,s9,64
   1241a:	70078e63          	beqz	a5,12b36 <_vfprintf_r+0xd64>
   1241e:	0b42                	slli	s6,s6,0x10
   12420:	010b5b13          	srli	s6,s6,0x10
   12424:	4d81                	li	s11,0
   12426:	b381                	j	12166 <_vfprintf_r+0x394>
   12428:	4752                	lw	a4,20(sp)
   1242a:	0a0103a3          	sb	zero,167(sp)
   1242e:	4d85                	li	s11,1
   12430:	431c                	lw	a5,0(a4)
   12432:	0711                	addi	a4,a4,4
   12434:	ca3a                	sw	a4,20(sp)
   12436:	12f10623          	sb	a5,300(sp)
   1243a:	4b05                	li	s6,1
   1243c:	12c10d13          	addi	s10,sp,300
   12440:	be09                	j	11f52 <_vfprintf_r+0x180>
   12442:	47d2                	lw	a5,20(sp)
   12444:	0a0103a3          	sb	zero,167(sp)
   12448:	0007ad03          	lw	s10,0(a5)
   1244c:	00478c13          	addi	s8,a5,4
   12450:	7e0d0a63          	beqz	s10,12c44 <_vfprintf_r+0xe72>
   12454:	420ac4e3          	bltz	s5,1307c <_vfprintf_r+0x12aa>
   12458:	8656                	mv	a2,s5
   1245a:	4581                	li	a1,0
   1245c:	856a                	mv	a0,s10
   1245e:	ca46                	sw	a7,20(sp)
   12460:	683010ef          	jal	142e2 <memchr>
   12464:	c82a                	sw	a0,16(sp)
   12466:	48d2                	lw	a7,20(sp)
   12468:	e119                	bnez	a0,1246e <_vfprintf_r+0x69c>
   1246a:	25c0106f          	j	136c6 <_vfprintf_r+0x18f4>
   1246e:	47c2                	lw	a5,16(sp)
   12470:	0a714703          	lbu	a4,167(sp)
   12474:	ca62                	sw	s8,20(sp)
   12476:	41a78b33          	sub	s6,a5,s10
   1247a:	fffb4693          	not	a3,s6
   1247e:	86fd                	srai	a3,a3,0x1f
   12480:	c802                	sw	zero,16(sp)
   12482:	d402                	sw	zero,40(sp)
   12484:	d202                	sw	zero,36(sp)
   12486:	ce02                	sw	zero,28(sp)
   12488:	00db7db3          	and	s11,s6,a3
   1248c:	4a81                	li	s5,0
   1248e:	ca0718e3          	bnez	a4,1213e <_vfprintf_r+0x36c>
   12492:	b4e9                	j	11f5c <_vfprintf_r+0x18a>
   12494:	1e0d98e3          	bnez	s11,12e84 <_vfprintf_r+0x10b2>
   12498:	47a5                	li	a5,9
   1249a:	1f67e5e3          	bltu	a5,s6,12e84 <_vfprintf_r+0x10b2>
   1249e:	030b0b13          	addi	s6,s6,48
   124a2:	196107a3          	sb	s6,399(sp)
   124a6:	8cf6                	mv	s9,t4
   124a8:	4b05                	li	s6,1
   124aa:	18f10d13          	addi	s10,sp,399
   124ae:	b9a5                	j	12126 <_vfprintf_r+0x354>
   124b0:	47d2                	lw	a5,20(sp)
   124b2:	0007ab83          	lw	s7,0(a5)
   124b6:	0791                	addi	a5,a5,4
   124b8:	660bd163          	bgez	s7,12b1a <_vfprintf_r+0xd48>
   124bc:	41700bb3          	neg	s7,s7
   124c0:	ca3e                	sw	a5,20(sp)
   124c2:	00094883          	lbu	a7,0(s2)
   124c6:	004cec93          	ori	s9,s9,4
   124ca:	bc25                	j	11f02 <_vfprintf_r+0x130>
   124cc:	02b00793          	li	a5,43
   124d0:	00094883          	lbu	a7,0(s2)
   124d4:	0af103a3          	sb	a5,167(sp)
   124d8:	b42d                	j	11f02 <_vfprintf_r+0x130>
   124da:	00094883          	lbu	a7,0(s2)
   124de:	080cec93          	ori	s9,s9,128
   124e2:	b405                	j	11f02 <_vfprintf_r+0x130>
   124e4:	00094883          	lbu	a7,0(s2)
   124e8:	02a00793          	li	a5,42
   124ec:	00190693          	addi	a3,s2,1
   124f0:	00f89463          	bne	a7,a5,124f8 <_vfprintf_r+0x726>
   124f4:	44c0106f          	j	13940 <_vfprintf_r+0x1b6e>
   124f8:	fd088793          	addi	a5,a7,-48
   124fc:	4725                	li	a4,9
   124fe:	4a81                	li	s5,0
   12500:	4625                	li	a2,9
   12502:	02f76063          	bltu	a4,a5,12522 <_vfprintf_r+0x750>
   12506:	0006c883          	lbu	a7,0(a3)
   1250a:	002a9713          	slli	a4,s5,0x2
   1250e:	9aba                	add	s5,s5,a4
   12510:	0a86                	slli	s5,s5,0x1
   12512:	9abe                	add	s5,s5,a5
   12514:	fd088793          	addi	a5,a7,-48
   12518:	0685                	addi	a3,a3,1
   1251a:	fef676e3          	bgeu	a2,a5,12506 <_vfprintf_r+0x734>
   1251e:	680ac963          	bltz	s5,12bb0 <_vfprintf_r+0xdde>
   12522:	8936                	mv	s2,a3
   12524:	b2c5                	j	11f04 <_vfprintf_r+0x132>
   12526:	00094883          	lbu	a7,0(s2)
   1252a:	001cec93          	ori	s9,s9,1
   1252e:	bad1                	j	11f02 <_vfprintf_r+0x130>
   12530:	0a714783          	lbu	a5,167(sp)
   12534:	00094883          	lbu	a7,0(s2)
   12538:	9c0795e3          	bnez	a5,11f02 <_vfprintf_r+0x130>
   1253c:	02000793          	li	a5,32
   12540:	0af103a3          	sb	a5,167(sp)
   12544:	ba7d                	j	11f02 <_vfprintf_r+0x130>
   12546:	010cee93          	ori	t4,s9,16
   1254a:	020ef793          	andi	a5,t4,32
   1254e:	58078a63          	beqz	a5,12ae2 <_vfprintf_r+0xd10>
   12552:	47d2                	lw	a5,20(sp)
   12554:	00778c13          	addi	s8,a5,7
   12558:	ff8c7c13          	andi	s8,s8,-8
   1255c:	008c0793          	addi	a5,s8,8
   12560:	ca3e                	sw	a5,20(sp)
   12562:	000c2b03          	lw	s6,0(s8)
   12566:	004c2d83          	lw	s11,4(s8)
   1256a:	4785                	li	a5,1
   1256c:	b101                	j	1216c <_vfprintf_r+0x39a>
   1256e:	00094883          	lbu	a7,0(s2)
   12572:	008cec93          	ori	s9,s9,8
   12576:	b271                	j	11f02 <_vfprintf_r+0x130>
   12578:	4752                	lw	a4,20(sp)
   1257a:	67a1                	lui	a5,0x8
   1257c:	83078793          	addi	a5,a5,-2000 # 7830 <exit-0x8864>
   12580:	0af11423          	sh	a5,168(sp)
   12584:	00470793          	addi	a5,a4,4
   12588:	ca3e                	sw	a5,20(sp)
   1258a:	67ed                	lui	a5,0x1b
   1258c:	a0c78793          	addi	a5,a5,-1524 # 1aa0c <__clzsi2+0x94>
   12590:	da3e                	sw	a5,52(sp)
   12592:	00072b03          	lw	s6,0(a4)
   12596:	4d81                	li	s11,0
   12598:	002cee93          	ori	t4,s9,2
   1259c:	4789                	li	a5,2
   1259e:	07800893          	li	a7,120
   125a2:	b6e9                	j	1216c <_vfprintf_r+0x39a>
   125a4:	020cf793          	andi	a5,s9,32
   125a8:	5c078463          	beqz	a5,12b70 <_vfprintf_r+0xd9e>
   125ac:	47d2                	lw	a5,20(sp)
   125ae:	46b2                	lw	a3,12(sp)
   125b0:	439c                	lw	a5,0(a5)
   125b2:	41f6d713          	srai	a4,a3,0x1f
   125b6:	c394                	sw	a3,0(a5)
   125b8:	c3d8                	sw	a4,4(a5)
   125ba:	47d2                	lw	a5,20(sp)
   125bc:	8d4a                	mv	s10,s2
   125be:	0791                	addi	a5,a5,4
   125c0:	ca3e                	sw	a5,20(sp)
   125c2:	bcb1                	j	1201e <_vfprintf_r+0x24c>
   125c4:	00094883          	lbu	a7,0(s2)
   125c8:	06c00793          	li	a5,108
   125cc:	64f88b63          	beq	a7,a5,12c22 <_vfprintf_r+0xe50>
   125d0:	010cec93          	ori	s9,s9,16
   125d4:	b23d                	j	11f02 <_vfprintf_r+0x130>
   125d6:	00094883          	lbu	a7,0(s2)
   125da:	06800793          	li	a5,104
   125de:	62f88b63          	beq	a7,a5,12c14 <_vfprintf_r+0xe42>
   125e2:	040cec93          	ori	s9,s9,64
   125e6:	ba31                	j	11f02 <_vfprintf_r+0x130>
   125e8:	06500713          	li	a4,101
   125ec:	cb175ce3          	bge	a4,a7,122a4 <_vfprintf_r+0x4d2>
   125f0:	474e                	lw	a4,208(sp)
   125f2:	010c                	addi	a1,sp,128
   125f4:	0908                	addi	a0,sp,144
   125f6:	c93a                	sw	a4,144(sp)
   125f8:	475e                	lw	a4,212(sp)
   125fa:	dc32                	sw	a2,56(sp)
   125fc:	c102                	sw	zero,128(sp)
   125fe:	cb3a                	sw	a4,148(sp)
   12600:	476e                	lw	a4,216(sp)
   12602:	c302                	sw	zero,132(sp)
   12604:	c502                	sw	zero,136(sp)
   12606:	cd3a                	sw	a4,152(sp)
   12608:	477e                	lw	a4,220(sp)
   1260a:	c702                	sw	zero,140(sp)
   1260c:	cf3a                	sw	a4,156(sp)
   1260e:	6fb050ef          	jal	18508 <__eqtf2>
   12612:	5662                	lw	a2,56(sp)
   12614:	36051363          	bnez	a0,1297a <_vfprintf_r+0xba8>
   12618:	47ae                	lw	a5,200(sp)
   1261a:	676d                	lui	a4,0x1b
   1261c:	a3c70713          	addi	a4,a4,-1476 # 1aa3c <__clzsi2+0xc4>
   12620:	c018                	sw	a4,0(s0)
   12622:	0605                	addi	a2,a2,1
   12624:	4705                	li	a4,1
   12626:	0785                	addi	a5,a5,1
   12628:	c058                	sw	a4,4(s0)
   1262a:	c7b2                	sw	a2,204(sp)
   1262c:	c5be                	sw	a5,200(sp)
   1262e:	471d                	li	a4,7
   12630:	0421                	addi	s0,s0,8
   12632:	16f74de3          	blt	a4,a5,12fac <_vfprintf_r+0x11da>
   12636:	57ba                	lw	a5,172(sp)
   12638:	5702                	lw	a4,32(sp)
   1263a:	4ce7db63          	bge	a5,a4,12b10 <_vfprintf_r+0xd3e>
   1263e:	57c2                	lw	a5,48(sp)
   12640:	5732                	lw	a4,44(sp)
   12642:	0421                	addi	s0,s0,8
   12644:	fef42c23          	sw	a5,-8(s0)
   12648:	47ae                	lw	a5,200(sp)
   1264a:	963a                	add	a2,a2,a4
   1264c:	fee42e23          	sw	a4,-4(s0)
   12650:	0785                	addi	a5,a5,1
   12652:	c7b2                	sw	a2,204(sp)
   12654:	c5be                	sw	a5,200(sp)
   12656:	471d                	li	a4,7
   12658:	5cf74c63          	blt	a4,a5,12c30 <_vfprintf_r+0xe5e>
   1265c:	5782                	lw	a5,32(sp)
   1265e:	fff78a93          	addi	s5,a5,-1
   12662:	995054e3          	blez	s5,11fea <_vfprintf_r+0x218>
   12666:	686d                	lui	a6,0x1b
   12668:	d6880813          	addi	a6,a6,-664 # 1ad68 <zeroes.0>
   1266c:	4741                	li	a4,16
   1266e:	47ae                	lw	a5,200(sp)
   12670:	4b41                	li	s6,16
   12672:	4c1d                	li	s8,7
   12674:	8d42                	mv	s10,a6
   12676:	01574763          	blt	a4,s5,12684 <_vfprintf_r+0x8b2>
   1267a:	14b0006f          	j	12fc4 <_vfprintf_r+0x11f2>
   1267e:	1ac1                	addi	s5,s5,-16
   12680:	155b51e3          	bge	s6,s5,12fc2 <_vfprintf_r+0x11f0>
   12684:	0641                	addi	a2,a2,16
   12686:	0785                	addi	a5,a5,1
   12688:	01a42023          	sw	s10,0(s0)
   1268c:	01642223          	sw	s6,4(s0)
   12690:	c7b2                	sw	a2,204(sp)
   12692:	c5be                	sw	a5,200(sp)
   12694:	0421                	addi	s0,s0,8
   12696:	fefc54e3          	bge	s8,a5,1267e <_vfprintf_r+0x8ac>
   1269a:	4522                	lw	a0,8(sp)
   1269c:	01d0                	addi	a2,sp,196
   1269e:	85a6                	mv	a1,s1
   126a0:	37c010ef          	jal	13a1c <__sprint_r>
   126a4:	18051563          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   126a8:	463e                	lw	a2,204(sp)
   126aa:	47ae                	lw	a5,200(sp)
   126ac:	844e                	mv	s0,s3
   126ae:	bfc1                	j	1267e <_vfprintf_r+0x8ac>
   126b0:	4705                	li	a4,1
   126b2:	00e79463          	bne	a5,a4,126ba <_vfprintf_r+0x8e8>
   126b6:	0f20106f          	j	137a8 <_vfprintf_r+0x19d6>
   126ba:	4709                	li	a4,2
   126bc:	8ee6                	mv	t4,s9
   126be:	cee79de3          	bne	a5,a4,123b8 <_vfprintf_r+0x5e6>
   126c2:	56d2                	lw	a3,52(sp)
   126c4:	19010d13          	addi	s10,sp,400
   126c8:	00fb7793          	andi	a5,s6,15
   126cc:	97b6                	add	a5,a5,a3
   126ce:	0007c703          	lbu	a4,0(a5)
   126d2:	004b5b13          	srli	s6,s6,0x4
   126d6:	01cd9793          	slli	a5,s11,0x1c
   126da:	0167eb33          	or	s6,a5,s6
   126de:	004ddd93          	srli	s11,s11,0x4
   126e2:	feed0fa3          	sb	a4,-1(s10)
   126e6:	01bb67b3          	or	a5,s6,s11
   126ea:	1d7d                	addi	s10,s10,-1
   126ec:	fff1                	bnez	a5,126c8 <_vfprintf_r+0x8f6>
   126ee:	0b1c                	addi	a5,sp,400
   126f0:	41a78b33          	sub	s6,a5,s10
   126f4:	8cf6                	mv	s9,t4
   126f6:	bc05                	j	12126 <_vfprintf_r+0x354>
   126f8:	41bb8c33          	sub	s8,s7,s11
   126fc:	8d8052e3          	blez	s8,11fc0 <_vfprintf_r+0x1ee>
   12700:	686d                	lui	a6,0x1b
   12702:	4541                	li	a0,16
   12704:	45ae                	lw	a1,200(sp)
   12706:	d6880813          	addi	a6,a6,-664 # 1ad68 <zeroes.0>
   1270a:	05855f63          	bge	a0,s8,12768 <_vfprintf_r+0x996>
   1270e:	dc4a                	sw	s2,56(sp)
   12710:	87a2                	mv	a5,s0
   12712:	4ec1                	li	t4,16
   12714:	8462                	mv	s0,s8
   12716:	4f9d                	li	t6,7
   12718:	8c5a                	mv	s8,s6
   1271a:	8942                	mv	s2,a6
   1271c:	8b56                	mv	s6,s5
   1271e:	8ac6                	mv	s5,a7
   12720:	a021                	j	12728 <_vfprintf_r+0x956>
   12722:	1441                	addi	s0,s0,-16
   12724:	028edb63          	bge	t4,s0,1275a <_vfprintf_r+0x988>
   12728:	0641                	addi	a2,a2,16
   1272a:	0585                	addi	a1,a1,1 # 2001 <exit-0xe093>
   1272c:	0127a023          	sw	s2,0(a5)
   12730:	01d7a223          	sw	t4,4(a5)
   12734:	c7b2                	sw	a2,204(sp)
   12736:	c5ae                	sw	a1,200(sp)
   12738:	07a1                	addi	a5,a5,8
   1273a:	febfd4e3          	bge	t6,a1,12722 <_vfprintf_r+0x950>
   1273e:	4522                	lw	a0,8(sp)
   12740:	01d0                	addi	a2,sp,196
   12742:	85a6                	mv	a1,s1
   12744:	2d8010ef          	jal	13a1c <__sprint_r>
   12748:	e17d                	bnez	a0,1282e <_vfprintf_r+0xa5c>
   1274a:	4ec1                	li	t4,16
   1274c:	1441                	addi	s0,s0,-16
   1274e:	463e                	lw	a2,204(sp)
   12750:	45ae                	lw	a1,200(sp)
   12752:	87ce                	mv	a5,s3
   12754:	4f9d                	li	t6,7
   12756:	fc8ec9e3          	blt	t4,s0,12728 <_vfprintf_r+0x956>
   1275a:	884a                	mv	a6,s2
   1275c:	5962                	lw	s2,56(sp)
   1275e:	88d6                	mv	a7,s5
   12760:	8ada                	mv	s5,s6
   12762:	8b62                	mv	s6,s8
   12764:	8c22                	mv	s8,s0
   12766:	843e                	mv	s0,a5
   12768:	9662                	add	a2,a2,s8
   1276a:	0585                	addi	a1,a1,1
   1276c:	01042023          	sw	a6,0(s0)
   12770:	01842223          	sw	s8,4(s0)
   12774:	c7b2                	sw	a2,204(sp)
   12776:	c5ae                	sw	a1,200(sp)
   12778:	471d                	li	a4,7
   1277a:	0421                	addi	s0,s0,8
   1277c:	84b752e3          	bge	a4,a1,11fc0 <_vfprintf_r+0x1ee>
   12780:	4522                	lw	a0,8(sp)
   12782:	01d0                	addi	a2,sp,196
   12784:	85a6                	mv	a1,s1
   12786:	dc46                	sw	a7,56(sp)
   12788:	294010ef          	jal	13a1c <__sprint_r>
   1278c:	e14d                	bnez	a0,1282e <_vfprintf_r+0xa5c>
   1278e:	463e                	lw	a2,204(sp)
   12790:	58e2                	lw	a7,56(sp)
   12792:	844e                	mv	s0,s3
   12794:	82dff06f          	j	11fc0 <_vfprintf_r+0x1ee>
   12798:	686d                	lui	a6,0x1b
   1279a:	4741                	li	a4,16
   1279c:	45ae                	lw	a1,200(sp)
   1279e:	d6880813          	addi	a6,a6,-664 # 1ad68 <zeroes.0>
   127a2:	05575763          	bge	a4,s5,127f0 <_vfprintf_r+0xa1e>
   127a6:	87a2                	mv	a5,s0
   127a8:	4741                	li	a4,16
   127aa:	8456                	mv	s0,s5
   127ac:	4c1d                	li	s8,7
   127ae:	dc46                	sw	a7,56(sp)
   127b0:	8ad2                	mv	s5,s4
   127b2:	a021                	j	127ba <_vfprintf_r+0x9e8>
   127b4:	1441                	addi	s0,s0,-16
   127b6:	02875963          	bge	a4,s0,127e8 <_vfprintf_r+0xa16>
   127ba:	0641                	addi	a2,a2,16
   127bc:	0585                	addi	a1,a1,1
   127be:	0147a023          	sw	s4,0(a5)
   127c2:	c3d8                	sw	a4,4(a5)
   127c4:	c7b2                	sw	a2,204(sp)
   127c6:	c5ae                	sw	a1,200(sp)
   127c8:	07a1                	addi	a5,a5,8
   127ca:	febc55e3          	bge	s8,a1,127b4 <_vfprintf_r+0x9e2>
   127ce:	4522                	lw	a0,8(sp)
   127d0:	01d0                	addi	a2,sp,196
   127d2:	85a6                	mv	a1,s1
   127d4:	248010ef          	jal	13a1c <__sprint_r>
   127d8:	e939                	bnez	a0,1282e <_vfprintf_r+0xa5c>
   127da:	4741                	li	a4,16
   127dc:	1441                	addi	s0,s0,-16
   127de:	463e                	lw	a2,204(sp)
   127e0:	45ae                	lw	a1,200(sp)
   127e2:	87ce                	mv	a5,s3
   127e4:	fc874be3          	blt	a4,s0,127ba <_vfprintf_r+0x9e8>
   127e8:	58e2                	lw	a7,56(sp)
   127ea:	8856                	mv	a6,s5
   127ec:	8aa2                	mv	s5,s0
   127ee:	843e                	mv	s0,a5
   127f0:	9656                	add	a2,a2,s5
   127f2:	0585                	addi	a1,a1,1
   127f4:	01042023          	sw	a6,0(s0)
   127f8:	01542223          	sw	s5,4(s0)
   127fc:	c7b2                	sw	a2,204(sp)
   127fe:	c5ae                	sw	a1,200(sp)
   12800:	471d                	li	a4,7
   12802:	0421                	addi	s0,s0,8
   12804:	fcb75263          	bge	a4,a1,11fc8 <_vfprintf_r+0x1f6>
   12808:	4522                	lw	a0,8(sp)
   1280a:	01d0                	addi	a2,sp,196
   1280c:	85a6                	mv	a1,s1
   1280e:	dc46                	sw	a7,56(sp)
   12810:	20c010ef          	jal	13a1c <__sprint_r>
   12814:	ed09                	bnez	a0,1282e <_vfprintf_r+0xa5c>
   12816:	463e                	lw	a2,204(sp)
   12818:	58e2                	lw	a7,56(sp)
   1281a:	844e                	mv	s0,s3
   1281c:	facff06f          	j	11fc8 <_vfprintf_r+0x1f6>
   12820:	4522                	lw	a0,8(sp)
   12822:	01d0                	addi	a2,sp,196
   12824:	85a6                	mv	a1,s1
   12826:	1f6010ef          	jal	13a1c <__sprint_r>
   1282a:	fe050163          	beqz	a0,1200c <_vfprintf_r+0x23a>
   1282e:	45c2                	lw	a1,16(sp)
   12830:	fe058f63          	beqz	a1,1202e <_vfprintf_r+0x25c>
   12834:	4522                	lw	a0,8(sp)
   12836:	dd3fe0ef          	jal	11608 <_free_r>
   1283a:	ff4ff06f          	j	1202e <_vfprintf_r+0x25c>
   1283e:	8ee6                	mv	t4,s9
   12840:	b6b5                	j	123ac <_vfprintf_r+0x5da>
   12842:	686d                	lui	a6,0x1b
   12844:	4541                	li	a0,16
   12846:	45ae                	lw	a1,200(sp)
   12848:	d7880c13          	addi	s8,a6,-648 # 1ad78 <blanks.1>
   1284c:	06e55363          	bge	a0,a4,128b2 <_vfprintf_r+0xae0>
   12850:	c8ca                	sw	s2,80(sp)
   12852:	87a2                	mv	a5,s0
   12854:	8962                	mv	s2,s8
   12856:	4ec1                	li	t4,16
   12858:	8c5a                	mv	s8,s6
   1285a:	439d                	li	t2,7
   1285c:	8b56                	mv	s6,s5
   1285e:	dc16                	sw	t0,56(sp)
   12860:	c6fe                	sw	t6,76(sp)
   12862:	843a                	mv	s0,a4
   12864:	8ac6                	mv	s5,a7
   12866:	a021                	j	1286e <_vfprintf_r+0xa9c>
   12868:	1441                	addi	s0,s0,-16
   1286a:	028edb63          	bge	t4,s0,128a0 <_vfprintf_r+0xace>
   1286e:	0641                	addi	a2,a2,16
   12870:	0585                	addi	a1,a1,1
   12872:	0127a023          	sw	s2,0(a5)
   12876:	01d7a223          	sw	t4,4(a5)
   1287a:	c7b2                	sw	a2,204(sp)
   1287c:	c5ae                	sw	a1,200(sp)
   1287e:	07a1                	addi	a5,a5,8
   12880:	feb3d4e3          	bge	t2,a1,12868 <_vfprintf_r+0xa96>
   12884:	4522                	lw	a0,8(sp)
   12886:	01d0                	addi	a2,sp,196
   12888:	85a6                	mv	a1,s1
   1288a:	192010ef          	jal	13a1c <__sprint_r>
   1288e:	f145                	bnez	a0,1282e <_vfprintf_r+0xa5c>
   12890:	4ec1                	li	t4,16
   12892:	1441                	addi	s0,s0,-16
   12894:	463e                	lw	a2,204(sp)
   12896:	45ae                	lw	a1,200(sp)
   12898:	87ce                	mv	a5,s3
   1289a:	439d                	li	t2,7
   1289c:	fc8ec9e3          	blt	t4,s0,1286e <_vfprintf_r+0xa9c>
   128a0:	88d6                	mv	a7,s5
   128a2:	52e2                	lw	t0,56(sp)
   128a4:	8ada                	mv	s5,s6
   128a6:	4fb6                	lw	t6,76(sp)
   128a8:	8b62                	mv	s6,s8
   128aa:	8c4a                	mv	s8,s2
   128ac:	4946                	lw	s2,80(sp)
   128ae:	8722                	mv	a4,s0
   128b0:	843e                	mv	s0,a5
   128b2:	963a                	add	a2,a2,a4
   128b4:	0585                	addi	a1,a1,1
   128b6:	c058                	sw	a4,4(s0)
   128b8:	01842023          	sw	s8,0(s0)
   128bc:	c7b2                	sw	a2,204(sp)
   128be:	c5ae                	sw	a1,200(sp)
   128c0:	471d                	li	a4,7
   128c2:	0421                	addi	s0,s0,8
   128c4:	eab75a63          	bge	a4,a1,11f78 <_vfprintf_r+0x1a6>
   128c8:	4522                	lw	a0,8(sp)
   128ca:	01d0                	addi	a2,sp,196
   128cc:	85a6                	mv	a1,s1
   128ce:	c8c6                	sw	a7,80(sp)
   128d0:	c6fe                	sw	t6,76(sp)
   128d2:	dc16                	sw	t0,56(sp)
   128d4:	148010ef          	jal	13a1c <__sprint_r>
   128d8:	f939                	bnez	a0,1282e <_vfprintf_r+0xa5c>
   128da:	463e                	lw	a2,204(sp)
   128dc:	48c6                	lw	a7,80(sp)
   128de:	4fb6                	lw	t6,76(sp)
   128e0:	52e2                	lw	t0,56(sp)
   128e2:	844e                	mv	s0,s3
   128e4:	e94ff06f          	j	11f78 <_vfprintf_r+0x1a6>
   128e8:	4522                	lw	a0,8(sp)
   128ea:	01d0                	addi	a2,sp,196
   128ec:	85a6                	mv	a1,s1
   128ee:	c6c6                	sw	a7,76(sp)
   128f0:	dc7e                	sw	t6,56(sp)
   128f2:	12a010ef          	jal	13a1c <__sprint_r>
   128f6:	fd05                	bnez	a0,1282e <_vfprintf_r+0xa5c>
   128f8:	463e                	lw	a2,204(sp)
   128fa:	48b6                	lw	a7,76(sp)
   128fc:	5fe2                	lw	t6,56(sp)
   128fe:	844e                	mv	s0,s3
   12900:	eb8ff06f          	j	11fb8 <_vfprintf_r+0x1e6>
   12904:	686d                	lui	a6,0x1b
   12906:	4741                	li	a4,16
   12908:	47ae                	lw	a5,200(sp)
   1290a:	d7880c13          	addi	s8,a6,-648 # 1ad78 <blanks.1>
   1290e:	05575163          	bge	a4,s5,12950 <_vfprintf_r+0xb7e>
   12912:	4d22                	lw	s10,8(sp)
   12914:	4b41                	li	s6,16
   12916:	4c9d                	li	s9,7
   12918:	a021                	j	12920 <_vfprintf_r+0xb4e>
   1291a:	1ac1                	addi	s5,s5,-16
   1291c:	035b5a63          	bge	s6,s5,12950 <_vfprintf_r+0xb7e>
   12920:	0641                	addi	a2,a2,16
   12922:	0785                	addi	a5,a5,1
   12924:	01842023          	sw	s8,0(s0)
   12928:	01642223          	sw	s6,4(s0)
   1292c:	c7b2                	sw	a2,204(sp)
   1292e:	c5be                	sw	a5,200(sp)
   12930:	0421                	addi	s0,s0,8
   12932:	fefcd4e3          	bge	s9,a5,1291a <_vfprintf_r+0xb48>
   12936:	01d0                	addi	a2,sp,196
   12938:	85a6                	mv	a1,s1
   1293a:	856a                	mv	a0,s10
   1293c:	0e0010ef          	jal	13a1c <__sprint_r>
   12940:	ee0517e3          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   12944:	1ac1                	addi	s5,s5,-16
   12946:	463e                	lw	a2,204(sp)
   12948:	47ae                	lw	a5,200(sp)
   1294a:	844e                	mv	s0,s3
   1294c:	fd5b4ae3          	blt	s6,s5,12920 <_vfprintf_r+0xb4e>
   12950:	9656                	add	a2,a2,s5
   12952:	0785                	addi	a5,a5,1
   12954:	01842023          	sw	s8,0(s0)
   12958:	01542223          	sw	s5,4(s0)
   1295c:	c7b2                	sw	a2,204(sp)
   1295e:	c5be                	sw	a5,200(sp)
   12960:	471d                	li	a4,7
   12962:	e8f75c63          	bge	a4,a5,11ffa <_vfprintf_r+0x228>
   12966:	4522                	lw	a0,8(sp)
   12968:	01d0                	addi	a2,sp,196
   1296a:	85a6                	mv	a1,s1
   1296c:	0b0010ef          	jal	13a1c <__sprint_r>
   12970:	ea051fe3          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   12974:	463e                	lw	a2,204(sp)
   12976:	e84ff06f          	j	11ffa <_vfprintf_r+0x228>
   1297a:	553a                	lw	a0,172(sp)
   1297c:	5ca05e63          	blez	a0,12f58 <_vfprintf_r+0x1186>
   12980:	47f2                	lw	a5,28(sp)
   12982:	5702                	lw	a4,32(sp)
   12984:	8abe                	mv	s5,a5
   12986:	22f74163          	blt	a4,a5,12ba8 <_vfprintf_r+0xdd6>
   1298a:	01505f63          	blez	s5,129a8 <_vfprintf_r+0xbd6>
   1298e:	472e                	lw	a4,200(sp)
   12990:	9656                	add	a2,a2,s5
   12992:	01a42023          	sw	s10,0(s0)
   12996:	0705                	addi	a4,a4,1
   12998:	01542223          	sw	s5,4(s0)
   1299c:	c7b2                	sw	a2,204(sp)
   1299e:	c5ba                	sw	a4,200(sp)
   129a0:	459d                	li	a1,7
   129a2:	0421                	addi	s0,s0,8
   129a4:	14e5c5e3          	blt	a1,a4,132ee <_vfprintf_r+0x151c>
   129a8:	fffac713          	not	a4,s5
   129ac:	47f2                	lw	a5,28(sp)
   129ae:	877d                	srai	a4,a4,0x1f
   129b0:	00eafab3          	and	s5,s5,a4
   129b4:	41578ab3          	sub	s5,a5,s5
   129b8:	2b504163          	bgtz	s5,12c5a <_vfprintf_r+0xe88>
   129bc:	47f2                	lw	a5,28(sp)
   129be:	400cf713          	andi	a4,s9,1024
   129c2:	00fd0c33          	add	s8,s10,a5
   129c6:	7a071e63          	bnez	a4,13182 <_vfprintf_r+0x13b0>
   129ca:	5aba                	lw	s5,172(sp)
   129cc:	5782                	lw	a5,32(sp)
   129ce:	2cfaca63          	blt	s5,a5,12ca2 <_vfprintf_r+0xed0>
   129d2:	001cf713          	andi	a4,s9,1
   129d6:	2c071663          	bnez	a4,12ca2 <_vfprintf_r+0xed0>
   129da:	5702                	lw	a4,32(sp)
   129dc:	00ed07b3          	add	a5,s10,a4
   129e0:	41570ab3          	sub	s5,a4,s5
   129e4:	41878b33          	sub	s6,a5,s8
   129e8:	016ad363          	bge	s5,s6,129ee <_vfprintf_r+0xc1c>
   129ec:	8b56                	mv	s6,s5
   129ee:	01605f63          	blez	s6,12a0c <_vfprintf_r+0xc3a>
   129f2:	47ae                	lw	a5,200(sp)
   129f4:	965a                	add	a2,a2,s6
   129f6:	01842023          	sw	s8,0(s0)
   129fa:	0785                	addi	a5,a5,1
   129fc:	01642223          	sw	s6,4(s0)
   12a00:	c7b2                	sw	a2,204(sp)
   12a02:	c5be                	sw	a5,200(sp)
   12a04:	471d                	li	a4,7
   12a06:	0421                	addi	s0,s0,8
   12a08:	4cf74de3          	blt	a4,a5,136e2 <_vfprintf_r+0x1910>
   12a0c:	fffb4793          	not	a5,s6
   12a10:	87fd                	srai	a5,a5,0x1f
   12a12:	00fb7b33          	and	s6,s6,a5
   12a16:	416a8ab3          	sub	s5,s5,s6
   12a1a:	dd505863          	blez	s5,11fea <_vfprintf_r+0x218>
   12a1e:	686d                	lui	a6,0x1b
   12a20:	d6880813          	addi	a6,a6,-664 # 1ad68 <zeroes.0>
   12a24:	4741                	li	a4,16
   12a26:	47ae                	lw	a5,200(sp)
   12a28:	4b41                	li	s6,16
   12a2a:	4c1d                	li	s8,7
   12a2c:	8d42                	mv	s10,a6
   12a2e:	01574663          	blt	a4,s5,12a3a <_vfprintf_r+0xc68>
   12a32:	ab49                	j	12fc4 <_vfprintf_r+0x11f2>
   12a34:	1ac1                	addi	s5,s5,-16
   12a36:	595b5663          	bge	s6,s5,12fc2 <_vfprintf_r+0x11f0>
   12a3a:	0641                	addi	a2,a2,16
   12a3c:	0785                	addi	a5,a5,1
   12a3e:	01a42023          	sw	s10,0(s0)
   12a42:	01642223          	sw	s6,4(s0)
   12a46:	c7b2                	sw	a2,204(sp)
   12a48:	c5be                	sw	a5,200(sp)
   12a4a:	0421                	addi	s0,s0,8
   12a4c:	fefc54e3          	bge	s8,a5,12a34 <_vfprintf_r+0xc62>
   12a50:	4522                	lw	a0,8(sp)
   12a52:	01d0                	addi	a2,sp,196
   12a54:	85a6                	mv	a1,s1
   12a56:	7c7000ef          	jal	13a1c <__sprint_r>
   12a5a:	dc051ae3          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   12a5e:	463e                	lw	a2,204(sp)
   12a60:	47ae                	lw	a5,200(sp)
   12a62:	844e                	mv	s0,s3
   12a64:	bfc1                	j	12a34 <_vfprintf_r+0xc62>
   12a66:	001cf593          	andi	a1,s9,1
   12a6a:	840599e3          	bnez	a1,122bc <_vfprintf_r+0x4ea>
   12a6e:	c058                	sw	a4,4(s0)
   12a70:	c7e2                	sw	s8,204(sp)
   12a72:	c5d6                	sw	s5,200(sp)
   12a74:	479d                	li	a5,7
   12a76:	8b57dbe3          	bge	a5,s5,1232c <_vfprintf_r+0x55a>
   12a7a:	4522                	lw	a0,8(sp)
   12a7c:	01d0                	addi	a2,sp,196
   12a7e:	85a6                	mv	a1,s1
   12a80:	79d000ef          	jal	13a1c <__sprint_r>
   12a84:	da0515e3          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   12a88:	4c3e                	lw	s8,204(sp)
   12a8a:	4aae                	lw	s5,200(sp)
   12a8c:	8b4e                	mv	s6,s3
   12a8e:	b879                	j	1232c <_vfprintf_r+0x55a>
   12a90:	5702                	lw	a4,32(sp)
   12a92:	4785                	li	a5,1
   12a94:	88e7dce3          	bge	a5,a4,1232c <_vfprintf_r+0x55a>
   12a98:	686d                	lui	a6,0x1b
   12a9a:	47c5                	li	a5,17
   12a9c:	d6880813          	addi	a6,a6,-664 # 1ad68 <zeroes.0>
   12aa0:	60e7d863          	bge	a5,a4,130b0 <_vfprintf_r+0x12de>
   12aa4:	ce4a                	sw	s2,28(sp)
   12aa6:	47c1                	li	a5,16
   12aa8:	4d1d                	li	s10,7
   12aaa:	8942                	mv	s2,a6
   12aac:	a021                	j	12ab4 <_vfprintf_r+0xce2>
   12aae:	1441                	addi	s0,s0,-16
   12ab0:	5e87de63          	bge	a5,s0,130ac <_vfprintf_r+0x12da>
   12ab4:	0c41                	addi	s8,s8,16
   12ab6:	0a85                	addi	s5,s5,1
   12ab8:	012b2023          	sw	s2,0(s6)
   12abc:	00fb2223          	sw	a5,4(s6)
   12ac0:	c7e2                	sw	s8,204(sp)
   12ac2:	c5d6                	sw	s5,200(sp)
   12ac4:	0b21                	addi	s6,s6,8
   12ac6:	ff5d54e3          	bge	s10,s5,12aae <_vfprintf_r+0xcdc>
   12aca:	4522                	lw	a0,8(sp)
   12acc:	01d0                	addi	a2,sp,196
   12ace:	85a6                	mv	a1,s1
   12ad0:	74d000ef          	jal	13a1c <__sprint_r>
   12ad4:	d4051de3          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   12ad8:	4c3e                	lw	s8,204(sp)
   12ada:	4aae                	lw	s5,200(sp)
   12adc:	8b4e                	mv	s6,s3
   12ade:	47c1                	li	a5,16
   12ae0:	b7f9                	j	12aae <_vfprintf_r+0xcdc>
   12ae2:	4752                	lw	a4,20(sp)
   12ae4:	010ef793          	andi	a5,t4,16
   12ae8:	00072b03          	lw	s6,0(a4)
   12aec:	0711                	addi	a4,a4,4
   12aee:	ca3a                	sw	a4,20(sp)
   12af0:	ef9d                	bnez	a5,12b2e <_vfprintf_r+0xd5c>
   12af2:	040ef793          	andi	a5,t4,64
   12af6:	c79d                	beqz	a5,12b24 <_vfprintf_r+0xd52>
   12af8:	0b42                	slli	s6,s6,0x10
   12afa:	010b5b13          	srli	s6,s6,0x10
   12afe:	4d81                	li	s11,0
   12b00:	4785                	li	a5,1
   12b02:	e6aff06f          	j	1216c <_vfprintf_r+0x39a>
   12b06:	4b01                	li	s6,0
   12b08:	19010d13          	addi	s10,sp,400
   12b0c:	e1aff06f          	j	12126 <_vfprintf_r+0x354>
   12b10:	001cf793          	andi	a5,s9,1
   12b14:	cc078b63          	beqz	a5,11fea <_vfprintf_r+0x218>
   12b18:	b61d                	j	1263e <_vfprintf_r+0x86c>
   12b1a:	00094883          	lbu	a7,0(s2)
   12b1e:	ca3e                	sw	a5,20(sp)
   12b20:	be2ff06f          	j	11f02 <_vfprintf_r+0x130>
   12b24:	200ef793          	andi	a5,t4,512
   12b28:	c399                	beqz	a5,12b2e <_vfprintf_r+0xd5c>
   12b2a:	0ffb7b13          	zext.b	s6,s6
   12b2e:	4d81                	li	s11,0
   12b30:	4785                	li	a5,1
   12b32:	e3aff06f          	j	1216c <_vfprintf_r+0x39a>
   12b36:	200cf793          	andi	a5,s9,512
   12b3a:	7e079563          	bnez	a5,13324 <_vfprintf_r+0x1552>
   12b3e:	4d81                	li	s11,0
   12b40:	e26ff06f          	j	12166 <_vfprintf_r+0x394>
   12b44:	200cf793          	andi	a5,s9,512
   12b48:	7c079663          	bnez	a5,13314 <_vfprintf_r+0x1542>
   12b4c:	41fb5d93          	srai	s11,s6,0x1f
   12b50:	87ee                	mv	a5,s11
   12b52:	db2ff06f          	j	12104 <_vfprintf_r+0x332>
   12b56:	57f2                	lw	a5,60(sp)
   12b58:	00094883          	lbu	a7,0(s2)
   12b5c:	ba078363          	beqz	a5,11f02 <_vfprintf_r+0x130>
   12b60:	0007c783          	lbu	a5,0(a5)
   12b64:	b8078f63          	beqz	a5,11f02 <_vfprintf_r+0x130>
   12b68:	400cec93          	ori	s9,s9,1024
   12b6c:	b96ff06f          	j	11f02 <_vfprintf_r+0x130>
   12b70:	010cf793          	andi	a5,s9,16
   12b74:	4c079063          	bnez	a5,13034 <_vfprintf_r+0x1262>
   12b78:	040cf793          	andi	a5,s9,64
   12b7c:	78079563          	bnez	a5,13306 <_vfprintf_r+0x1534>
   12b80:	200cfe13          	andi	t3,s9,512
   12b84:	4a0e0863          	beqz	t3,13034 <_vfprintf_r+0x1262>
   12b88:	47d2                	lw	a5,20(sp)
   12b8a:	4732                	lw	a4,12(sp)
   12b8c:	439c                	lw	a5,0(a5)
   12b8e:	00e78023          	sb	a4,0(a5)
   12b92:	b425                	j	125ba <_vfprintf_r+0x7e8>
   12b94:	47d2                	lw	a5,20(sp)
   12b96:	4398                	lw	a4,0(a5)
   12b98:	0791                	addi	a5,a5,4
   12b9a:	ca3e                	sw	a5,20(sp)
   12b9c:	430c                	lw	a1,0(a4)
   12b9e:	4350                	lw	a2,4(a4)
   12ba0:	4714                	lw	a3,8(a4)
   12ba2:	4758                	lw	a4,12(a4)
   12ba4:	e52ff06f          	j	121f6 <_vfprintf_r+0x424>
   12ba8:	8aba                	mv	s5,a4
   12baa:	df5042e3          	bgtz	s5,1298e <_vfprintf_r+0xbbc>
   12bae:	bbed                	j	129a8 <_vfprintf_r+0xbd6>
   12bb0:	5afd                	li	s5,-1
   12bb2:	8936                	mv	s2,a3
   12bb4:	b50ff06f          	j	11f04 <_vfprintf_r+0x132>
   12bb8:	67ed                	lui	a5,0x1b
   12bba:	a2078793          	addi	a5,a5,-1504 # 1aa20 <__clzsi2+0xa8>
   12bbe:	da3e                	sw	a5,52(sp)
   12bc0:	020cf793          	andi	a5,s9,32
   12bc4:	26078263          	beqz	a5,12e28 <_vfprintf_r+0x1056>
   12bc8:	47d2                	lw	a5,20(sp)
   12bca:	00778c13          	addi	s8,a5,7
   12bce:	ff8c7c13          	andi	s8,s8,-8
   12bd2:	000c2b03          	lw	s6,0(s8)
   12bd6:	004c2d83          	lw	s11,4(s8)
   12bda:	008c0793          	addi	a5,s8,8
   12bde:	ca3e                	sw	a5,20(sp)
   12be0:	001cf793          	andi	a5,s9,1
   12be4:	cf81                	beqz	a5,12bfc <_vfprintf_r+0xe2a>
   12be6:	01bb67b3          	or	a5,s6,s11
   12bea:	cb89                	beqz	a5,12bfc <_vfprintf_r+0xe2a>
   12bec:	03000793          	li	a5,48
   12bf0:	0af10423          	sb	a5,168(sp)
   12bf4:	0b1104a3          	sb	a7,169(sp)
   12bf8:	002cec93          	ori	s9,s9,2
   12bfc:	bffcfe93          	andi	t4,s9,-1025
   12c00:	4789                	li	a5,2
   12c02:	d6aff06f          	j	1216c <_vfprintf_r+0x39a>
   12c06:	8ee6                	mv	t4,s9
   12c08:	b289                	j	1254a <_vfprintf_r+0x778>
   12c0a:	67ed                	lui	a5,0x1b
   12c0c:	a0c78793          	addi	a5,a5,-1524 # 1aa0c <__clzsi2+0x94>
   12c10:	da3e                	sw	a5,52(sp)
   12c12:	b77d                	j	12bc0 <_vfprintf_r+0xdee>
   12c14:	00194883          	lbu	a7,1(s2)
   12c18:	200cec93          	ori	s9,s9,512
   12c1c:	0905                	addi	s2,s2,1
   12c1e:	ae4ff06f          	j	11f02 <_vfprintf_r+0x130>
   12c22:	00194883          	lbu	a7,1(s2)
   12c26:	020cec93          	ori	s9,s9,32
   12c2a:	0905                	addi	s2,s2,1
   12c2c:	ad6ff06f          	j	11f02 <_vfprintf_r+0x130>
   12c30:	4522                	lw	a0,8(sp)
   12c32:	01d0                	addi	a2,sp,196
   12c34:	85a6                	mv	a1,s1
   12c36:	5e7000ef          	jal	13a1c <__sprint_r>
   12c3a:	be051ae3          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   12c3e:	463e                	lw	a2,204(sp)
   12c40:	844e                	mv	s0,s3
   12c42:	bc29                	j	1265c <_vfprintf_r+0x88a>
   12c44:	4799                	li	a5,6
   12c46:	8b56                	mv	s6,s5
   12c48:	6b57ed63          	bltu	a5,s5,13302 <_vfprintf_r+0x1530>
   12c4c:	67ed                	lui	a5,0x1b
   12c4e:	8dda                	mv	s11,s6
   12c50:	ca62                	sw	s8,20(sp)
   12c52:	a3478d13          	addi	s10,a5,-1484 # 1aa34 <__clzsi2+0xbc>
   12c56:	afcff06f          	j	11f52 <_vfprintf_r+0x180>
   12c5a:	686d                	lui	a6,0x1b
   12c5c:	45c1                	li	a1,16
   12c5e:	472e                	lw	a4,200(sp)
   12c60:	d6880813          	addi	a6,a6,-664 # 1ad68 <zeroes.0>
   12c64:	4755db63          	bge	a1,s5,130da <_vfprintf_r+0x1308>
   12c68:	87a2                	mv	a5,s0
   12c6a:	4c41                	li	s8,16
   12c6c:	4b1d                	li	s6,7
   12c6e:	8442                	mv	s0,a6
   12c70:	a021                	j	12c78 <_vfprintf_r+0xea6>
   12c72:	1ac1                	addi	s5,s5,-16
   12c74:	475c5163          	bge	s8,s5,130d6 <_vfprintf_r+0x1304>
   12c78:	0641                	addi	a2,a2,16
   12c7a:	0705                	addi	a4,a4,1
   12c7c:	c380                	sw	s0,0(a5)
   12c7e:	0187a223          	sw	s8,4(a5)
   12c82:	c7b2                	sw	a2,204(sp)
   12c84:	c5ba                	sw	a4,200(sp)
   12c86:	07a1                	addi	a5,a5,8
   12c88:	feeb55e3          	bge	s6,a4,12c72 <_vfprintf_r+0xea0>
   12c8c:	4522                	lw	a0,8(sp)
   12c8e:	01d0                	addi	a2,sp,196
   12c90:	85a6                	mv	a1,s1
   12c92:	58b000ef          	jal	13a1c <__sprint_r>
   12c96:	b8051ce3          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   12c9a:	463e                	lw	a2,204(sp)
   12c9c:	472e                	lw	a4,200(sp)
   12c9e:	87ce                	mv	a5,s3
   12ca0:	bfc9                	j	12c72 <_vfprintf_r+0xea0>
   12ca2:	5742                	lw	a4,48(sp)
   12ca4:	57b2                	lw	a5,44(sp)
   12ca6:	459d                	li	a1,7
   12ca8:	c018                	sw	a4,0(s0)
   12caa:	472e                	lw	a4,200(sp)
   12cac:	963e                	add	a2,a2,a5
   12cae:	c05c                	sw	a5,4(s0)
   12cb0:	0705                	addi	a4,a4,1
   12cb2:	c7b2                	sw	a2,204(sp)
   12cb4:	c5ba                	sw	a4,200(sp)
   12cb6:	0421                	addi	s0,s0,8
   12cb8:	d2e5d1e3          	bge	a1,a4,129da <_vfprintf_r+0xc08>
   12cbc:	4522                	lw	a0,8(sp)
   12cbe:	01d0                	addi	a2,sp,196
   12cc0:	85a6                	mv	a1,s1
   12cc2:	55b000ef          	jal	13a1c <__sprint_r>
   12cc6:	b60514e3          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   12cca:	5aba                	lw	s5,172(sp)
   12ccc:	463e                	lw	a2,204(sp)
   12cce:	844e                	mv	s0,s3
   12cd0:	b329                	j	129da <_vfprintf_r+0xc08>
   12cd2:	07800793          	li	a5,120
   12cd6:	03000713          	li	a4,48
   12cda:	0ae10423          	sb	a4,168(sp)
   12cde:	0af104a3          	sb	a5,169(sp)
   12ce2:	06300713          	li	a4,99
   12ce6:	c802                	sw	zero,16(sp)
   12ce8:	002cec93          	ori	s9,s9,2
   12cec:	12c10d13          	addi	s10,sp,300
   12cf0:	d5575c63          	bge	a4,s5,12248 <_vfprintf_r+0x476>
   12cf4:	4522                	lw	a0,8(sp)
   12cf6:	001a8593          	addi	a1,s5,1
   12cfa:	c846                	sw	a7,16(sp)
   12cfc:	b2ffe0ef          	jal	1182a <_malloc_r>
   12d00:	48c2                	lw	a7,16(sp)
   12d02:	8d2a                	mv	s10,a0
   12d04:	460502e3          	beqz	a0,13968 <_vfprintf_r+0x1b96>
   12d08:	c82a                	sw	a0,16(sp)
   12d0a:	d3eff06f          	j	12248 <_vfprintf_r+0x476>
   12d0e:	4522                	lw	a0,8(sp)
   12d10:	09010b13          	addi	s6,sp,144
   12d14:	1178                	addi	a4,sp,172
   12d16:	0bc10813          	addi	a6,sp,188
   12d1a:	191c                	addi	a5,sp,176
   12d1c:	86d6                	mv	a3,s5
   12d1e:	4609                	li	a2,2
   12d20:	85da                	mv	a1,s6
   12d22:	d446                	sw	a7,40(sp)
   12d24:	c97e                	sw	t6,144(sp)
   12d26:	d27e                	sw	t6,36(sp)
   12d28:	cb7a                	sw	t5,148(sp)
   12d2a:	d07a                	sw	t5,32(sp)
   12d2c:	cd76                	sw	t4,152(sp)
   12d2e:	ce76                	sw	t4,28(sp)
   12d30:	cf62                	sw	s8,156(sp)
   12d32:	307010ef          	jal	14838 <_ldtoa_r>
   12d36:	001cf713          	andi	a4,s9,1
   12d3a:	4ef2                	lw	t4,28(sp)
   12d3c:	5f02                	lw	t5,32(sp)
   12d3e:	5f92                	lw	t6,36(sp)
   12d40:	58a2                	lw	a7,40(sp)
   12d42:	8d2a                	mv	s10,a0
   12d44:	62071163          	bnez	a4,13366 <_vfprintf_r+0x1594>
   12d48:	57ba                	lw	a5,172(sp)
   12d4a:	ce3e                	sw	a5,28(sp)
   12d4c:	57fa                	lw	a5,188(sp)
   12d4e:	8f89                	sub	a5,a5,a0
   12d50:	d03e                	sw	a5,32(sp)
   12d52:	47f2                	lw	a5,28(sp)
   12d54:	5775                	li	a4,-3
   12d56:	00e7c463          	blt	a5,a4,12d5e <_vfprintf_r+0xf8c>
   12d5a:	0efadbe3          	bge	s5,a5,13650 <_vfprintf_r+0x187e>
   12d5e:	47f2                	lw	a5,28(sp)
   12d60:	18f9                	addi	a7,a7,-2
   12d62:	fff78713          	addi	a4,a5,-1
   12d66:	d73a                	sw	a4,172(sp)
   12d68:	0ff8f693          	zext.b	a3,a7
   12d6c:	4601                	li	a2,0
   12d6e:	0ad10a23          	sb	a3,180(sp)
   12d72:	02b00693          	li	a3,43
   12d76:	00075763          	bgez	a4,12d84 <_vfprintf_r+0xfb2>
   12d7a:	47f2                	lw	a5,28(sp)
   12d7c:	4705                	li	a4,1
   12d7e:	02d00693          	li	a3,45
   12d82:	8f1d                	sub	a4,a4,a5
   12d84:	0ad10aa3          	sb	a3,181(sp)
   12d88:	46a5                	li	a3,9
   12d8a:	2ae6d1e3          	bge	a3,a4,1382c <_vfprintf_r+0x1a5a>
   12d8e:	0c310813          	addi	a6,sp,195
   12d92:	85c2                	mv	a1,a6
   12d94:	4529                	li	a0,10
   12d96:	06300f13          	li	t5,99
   12d9a:	02a767b3          	rem	a5,a4,a0
   12d9e:	862e                	mv	a2,a1
   12da0:	86ba                	mv	a3,a4
   12da2:	15fd                	addi	a1,a1,-1
   12da4:	03078793          	addi	a5,a5,48
   12da8:	fef60fa3          	sb	a5,-1(a2)
   12dac:	02a74733          	div	a4,a4,a0
   12db0:	fedf45e3          	blt	t5,a3,12d9a <_vfprintf_r+0xfc8>
   12db4:	03070713          	addi	a4,a4,48
   12db8:	ffe60693          	addi	a3,a2,-2
   12dbc:	fee58fa3          	sb	a4,-1(a1)
   12dc0:	3706fce3          	bgeu	a3,a6,13938 <_vfprintf_r+0x1b66>
   12dc4:	0b610713          	addi	a4,sp,182
   12dc8:	0006c783          	lbu	a5,0(a3)
   12dcc:	0685                	addi	a3,a3,1
   12dce:	0705                	addi	a4,a4,1
   12dd0:	fef70fa3          	sb	a5,-1(a4)
   12dd4:	ff069ae3          	bne	a3,a6,12dc8 <_vfprintf_r+0xff6>
   12dd8:	0b1c                	addi	a5,sp,400
   12dda:	40c78733          	sub	a4,a5,a2
   12dde:	f3770793          	addi	a5,a4,-201
   12de2:	c0be                	sw	a5,64(sp)
   12de4:	5782                	lw	a5,32(sp)
   12de6:	4686                	lw	a3,64(sp)
   12de8:	4705                	li	a4,1
   12dea:	00d78b33          	add	s6,a5,a3
   12dee:	26f758e3          	bge	a4,a5,1385e <_vfprintf_r+0x1a8c>
   12df2:	57b2                	lw	a5,44(sp)
   12df4:	9b3e                	add	s6,s6,a5
   12df6:	fffb4693          	not	a3,s6
   12dfa:	bffcfe13          	andi	t3,s9,-1025
   12dfe:	86fd                	srai	a3,a3,0x1f
   12e00:	100e6793          	ori	a5,t3,256
   12e04:	c6be                	sw	a5,76(sp)
   12e06:	00db7db3          	and	s11,s6,a3
   12e0a:	d402                	sw	zero,40(sp)
   12e0c:	d202                	sw	zero,36(sp)
   12e0e:	ce02                	sw	zero,28(sp)
   12e10:	57e2                	lw	a5,56(sp)
   12e12:	020786e3          	beqz	a5,1363e <_vfprintf_r+0x186c>
   12e16:	02d00713          	li	a4,45
   12e1a:	4cb6                	lw	s9,76(sp)
   12e1c:	0ae103a3          	sb	a4,167(sp)
   12e20:	4a81                	li	s5,0
   12e22:	0d85                	addi	s11,s11,1
   12e24:	938ff06f          	j	11f5c <_vfprintf_r+0x18a>
   12e28:	4752                	lw	a4,20(sp)
   12e2a:	010cf793          	andi	a5,s9,16
   12e2e:	00072b03          	lw	s6,0(a4)
   12e32:	0711                	addi	a4,a4,4
   12e34:	ca3a                	sw	a4,20(sp)
   12e36:	e7a9                	bnez	a5,12e80 <_vfprintf_r+0x10ae>
   12e38:	040cf793          	andi	a5,s9,64
   12e3c:	cf95                	beqz	a5,12e78 <_vfprintf_r+0x10a6>
   12e3e:	0b42                	slli	s6,s6,0x10
   12e40:	010b5b13          	srli	s6,s6,0x10
   12e44:	4d81                	li	s11,0
   12e46:	bb69                	j	12be0 <_vfprintf_r+0xe0e>
   12e48:	4522                	lw	a0,8(sp)
   12e4a:	01d0                	addi	a2,sp,196
   12e4c:	85a6                	mv	a1,s1
   12e4e:	3cf000ef          	jal	13a1c <__sprint_r>
   12e52:	9c051ee3          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   12e56:	4c3e                	lw	s8,204(sp)
   12e58:	4aae                	lw	s5,200(sp)
   12e5a:	8b4e                	mv	s6,s3
   12e5c:	c6eff06f          	j	122ca <_vfprintf_r+0x4f8>
   12e60:	4522                	lw	a0,8(sp)
   12e62:	01d0                	addi	a2,sp,196
   12e64:	85a6                	mv	a1,s1
   12e66:	3b7000ef          	jal	13a1c <__sprint_r>
   12e6a:	9c0512e3          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   12e6e:	4c3e                	lw	s8,204(sp)
   12e70:	4aae                	lw	s5,200(sp)
   12e72:	8b4e                	mv	s6,s3
   12e74:	c72ff06f          	j	122e6 <_vfprintf_r+0x514>
   12e78:	200cf793          	andi	a5,s9,512
   12e7c:	4a079963          	bnez	a5,1332e <_vfprintf_r+0x155c>
   12e80:	4d81                	li	s11,0
   12e82:	bbb9                	j	12be0 <_vfprintf_r+0xe0e>
   12e84:	ccccd837          	lui	a6,0xccccd
   12e88:	ccccdcb7          	lui	s9,0xccccd
   12e8c:	5772                	lw	a4,60(sp)
   12e8e:	400eff13          	andi	t5,t4,1024
   12e92:	4601                	li	a2,0
   12e94:	0b0c                	addi	a1,sp,400
   12e96:	4e15                	li	t3,5
   12e98:	ccd80813          	addi	a6,a6,-819 # cccccccd <__BSS_END__+0xcccb0021>
   12e9c:	cccc8c93          	addi	s9,s9,-820 # cccccccc <__BSS_END__+0xcccb0020>
   12ea0:	0ff00c13          	li	s8,255
   12ea4:	a081                	j	12ee4 <_vfprintf_r+0x1112>
   12ea6:	016d37b3          	sltu	a5,s10,s6
   12eaa:	97ea                	add	a5,a5,s10
   12eac:	03c7f7b3          	remu	a5,a5,t3
   12eb0:	40fb07b3          	sub	a5,s6,a5
   12eb4:	00fb35b3          	sltu	a1,s6,a5
   12eb8:	40bd85b3          	sub	a1,s11,a1
   12ebc:	03978333          	mul	t1,a5,s9
   12ec0:	030585b3          	mul	a1,a1,a6
   12ec4:	0307b533          	mulhu	a0,a5,a6
   12ec8:	959a                	add	a1,a1,t1
   12eca:	030787b3          	mul	a5,a5,a6
   12ece:	95aa                	add	a1,a1,a0
   12ed0:	01f59513          	slli	a0,a1,0x1f
   12ed4:	8185                	srli	a1,a1,0x1
   12ed6:	8385                	srli	a5,a5,0x1
   12ed8:	8fc9                	or	a5,a5,a0
   12eda:	7c0d8763          	beqz	s11,136a8 <_vfprintf_r+0x18d6>
   12ede:	8dae                	mv	s11,a1
   12ee0:	8b3e                	mv	s6,a5
   12ee2:	85b6                	mv	a1,a3
   12ee4:	01bb0d33          	add	s10,s6,s11
   12ee8:	016d37b3          	sltu	a5,s10,s6
   12eec:	97ea                	add	a5,a5,s10
   12eee:	03c7f7b3          	remu	a5,a5,t3
   12ef2:	fff58693          	addi	a3,a1,-1
   12ef6:	0605                	addi	a2,a2,1
   12ef8:	40fb07b3          	sub	a5,s6,a5
   12efc:	00fb3533          	sltu	a0,s6,a5
   12f00:	40ad8533          	sub	a0,s11,a0
   12f04:	0307b333          	mulhu	t1,a5,a6
   12f08:	03050533          	mul	a0,a0,a6
   12f0c:	030787b3          	mul	a5,a5,a6
   12f10:	951a                	add	a0,a0,t1
   12f12:	057e                	slli	a0,a0,0x1f
   12f14:	8385                	srli	a5,a5,0x1
   12f16:	8fc9                	or	a5,a5,a0
   12f18:	00279513          	slli	a0,a5,0x2
   12f1c:	97aa                	add	a5,a5,a0
   12f1e:	0786                	slli	a5,a5,0x1
   12f20:	40fb07b3          	sub	a5,s6,a5
   12f24:	03078793          	addi	a5,a5,48
   12f28:	fef58fa3          	sb	a5,-1(a1)
   12f2c:	f60f0de3          	beqz	t5,12ea6 <_vfprintf_r+0x10d4>
   12f30:	00074783          	lbu	a5,0(a4)
   12f34:	f6f619e3          	bne	a2,a5,12ea6 <_vfprintf_r+0x10d4>
   12f38:	f78607e3          	beq	a2,s8,12ea6 <_vfprintf_r+0x10d4>
   12f3c:	1c0d9563          	bnez	s11,13106 <_vfprintf_r+0x1334>
   12f40:	47a5                	li	a5,9
   12f42:	1d67e263          	bltu	a5,s6,13106 <_vfprintf_r+0x1334>
   12f46:	8d36                	mv	s10,a3
   12f48:	0b1c                	addi	a5,sp,400
   12f4a:	d032                	sw	a2,32(sp)
   12f4c:	de3a                	sw	a4,60(sp)
   12f4e:	41a78b33          	sub	s6,a5,s10
   12f52:	8cf6                	mv	s9,t4
   12f54:	9d2ff06f          	j	12126 <_vfprintf_r+0x354>
   12f58:	472e                	lw	a4,200(sp)
   12f5a:	65ed                	lui	a1,0x1b
   12f5c:	a3c58593          	addi	a1,a1,-1476 # 1aa3c <__clzsi2+0xc4>
   12f60:	c00c                	sw	a1,0(s0)
   12f62:	0605                	addi	a2,a2,1
   12f64:	4585                	li	a1,1
   12f66:	0705                	addi	a4,a4,1
   12f68:	c04c                	sw	a1,4(s0)
   12f6a:	c7b2                	sw	a2,204(sp)
   12f6c:	c5ba                	sw	a4,200(sp)
   12f6e:	459d                	li	a1,7
   12f70:	0421                	addi	s0,s0,8
   12f72:	36e5c063          	blt	a1,a4,132d2 <_vfprintf_r+0x1500>
   12f76:	e569                	bnez	a0,13040 <_vfprintf_r+0x126e>
   12f78:	5782                	lw	a5,32(sp)
   12f7a:	001cf713          	andi	a4,s9,1
   12f7e:	8f5d                	or	a4,a4,a5
   12f80:	e319                	bnez	a4,12f86 <_vfprintf_r+0x11b4>
   12f82:	868ff06f          	j	11fea <_vfprintf_r+0x218>
   12f86:	5742                	lw	a4,48(sp)
   12f88:	57b2                	lw	a5,44(sp)
   12f8a:	459d                	li	a1,7
   12f8c:	c018                	sw	a4,0(s0)
   12f8e:	472e                	lw	a4,200(sp)
   12f90:	963e                	add	a2,a2,a5
   12f92:	c05c                	sw	a5,4(s0)
   12f94:	0705                	addi	a4,a4,1
   12f96:	c7b2                	sw	a2,204(sp)
   12f98:	c5ba                	sw	a4,200(sp)
   12f9a:	3ae5cb63          	blt	a1,a4,13350 <_vfprintf_r+0x157e>
   12f9e:	0421                	addi	s0,s0,8
   12fa0:	a87d                	j	1305e <_vfprintf_r+0x128c>
   12fa2:	4522                	lw	a0,8(sp)
   12fa4:	f39fd0ef          	jal	10edc <__sinit>
   12fa8:	e69fe06f          	j	11e10 <_vfprintf_r+0x3e>
   12fac:	4522                	lw	a0,8(sp)
   12fae:	01d0                	addi	a2,sp,196
   12fb0:	85a6                	mv	a1,s1
   12fb2:	26b000ef          	jal	13a1c <__sprint_r>
   12fb6:	86051ce3          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   12fba:	463e                	lw	a2,204(sp)
   12fbc:	844e                	mv	s0,s3
   12fbe:	e78ff06f          	j	12636 <_vfprintf_r+0x864>
   12fc2:	886a                	mv	a6,s10
   12fc4:	01042023          	sw	a6,0(s0)
   12fc8:	01542223          	sw	s5,4(s0)
   12fcc:	9656                	add	a2,a2,s5
   12fce:	0785                	addi	a5,a5,1
   12fd0:	c7b2                	sw	a2,204(sp)
   12fd2:	c5be                	sw	a5,200(sp)
   12fd4:	471d                	li	a4,7
   12fd6:	00f74463          	blt	a4,a5,12fde <_vfprintf_r+0x120c>
   12fda:	80eff06f          	j	11fe8 <_vfprintf_r+0x216>
   12fde:	b70ff06f          	j	1234e <_vfprintf_r+0x57c>
   12fe2:	47ce                	lw	a5,208(sp)
   12fe4:	010c                	addi	a1,sp,128
   12fe6:	0908                	addi	a0,sp,144
   12fe8:	c93e                	sw	a5,144(sp)
   12fea:	47de                	lw	a5,212(sp)
   12fec:	c102                	sw	zero,128(sp)
   12fee:	c302                	sw	zero,132(sp)
   12ff0:	cb3e                	sw	a5,148(sp)
   12ff2:	47ee                	lw	a5,216(sp)
   12ff4:	c502                	sw	zero,136(sp)
   12ff6:	c702                	sw	zero,140(sp)
   12ff8:	cd3e                	sw	a5,152(sp)
   12ffa:	47fe                	lw	a5,220(sp)
   12ffc:	cf3e                	sw	a5,156(sp)
   12ffe:	6e2050ef          	jal	186e0 <__letf2>
   13002:	48c2                	lw	a7,16(sp)
   13004:	6a054a63          	bltz	a0,136b8 <_vfprintf_r+0x18e6>
   13008:	0a714703          	lbu	a4,167(sp)
   1300c:	04700793          	li	a5,71
   13010:	2d17db63          	bge	a5,a7,132e6 <_vfprintf_r+0x1514>
   13014:	67ed                	lui	a5,0x1b
   13016:	a0078d13          	addi	s10,a5,-1536 # 1aa00 <__clzsi2+0x88>
   1301a:	c802                	sw	zero,16(sp)
   1301c:	d402                	sw	zero,40(sp)
   1301e:	d202                	sw	zero,36(sp)
   13020:	ce02                	sw	zero,28(sp)
   13022:	f7fcfc93          	andi	s9,s9,-129
   13026:	4d8d                	li	s11,3
   13028:	4b0d                	li	s6,3
   1302a:	4a81                	li	s5,0
   1302c:	90071963          	bnez	a4,1213e <_vfprintf_r+0x36c>
   13030:	f2dfe06f          	j	11f5c <_vfprintf_r+0x18a>
   13034:	47d2                	lw	a5,20(sp)
   13036:	4732                	lw	a4,12(sp)
   13038:	439c                	lw	a5,0(a5)
   1303a:	c398                	sw	a4,0(a5)
   1303c:	d7eff06f          	j	125ba <_vfprintf_r+0x7e8>
   13040:	5742                	lw	a4,48(sp)
   13042:	57b2                	lw	a5,44(sp)
   13044:	459d                	li	a1,7
   13046:	c018                	sw	a4,0(s0)
   13048:	472e                	lw	a4,200(sp)
   1304a:	963e                	add	a2,a2,a5
   1304c:	c05c                	sw	a5,4(s0)
   1304e:	0705                	addi	a4,a4,1
   13050:	c7b2                	sw	a2,204(sp)
   13052:	c5ba                	sw	a4,200(sp)
   13054:	0421                	addi	s0,s0,8
   13056:	2ee5cd63          	blt	a1,a4,13350 <_vfprintf_r+0x157e>
   1305a:	74054a63          	bltz	a0,137ae <_vfprintf_r+0x19dc>
   1305e:	5782                	lw	a5,32(sp)
   13060:	0705                	addi	a4,a4,1
   13062:	01a42023          	sw	s10,0(s0)
   13066:	963e                	add	a2,a2,a5
   13068:	c05c                	sw	a5,4(s0)
   1306a:	c7b2                	sw	a2,204(sp)
   1306c:	c5ba                	sw	a4,200(sp)
   1306e:	479d                	li	a5,7
   13070:	00e7c463          	blt	a5,a4,13078 <_vfprintf_r+0x12a6>
   13074:	f75fe06f          	j	11fe8 <_vfprintf_r+0x216>
   13078:	ad6ff06f          	j	1234e <_vfprintf_r+0x57c>
   1307c:	856a                	mv	a0,s10
   1307e:	dc46                	sw	a7,56(sp)
   13080:	5f8010ef          	jal	14678 <strlen>
   13084:	0a714703          	lbu	a4,167(sp)
   13088:	fff54693          	not	a3,a0
   1308c:	86fd                	srai	a3,a3,0x1f
   1308e:	ca62                	sw	s8,20(sp)
   13090:	c802                	sw	zero,16(sp)
   13092:	d402                	sw	zero,40(sp)
   13094:	d202                	sw	zero,36(sp)
   13096:	ce02                	sw	zero,28(sp)
   13098:	58e2                	lw	a7,56(sp)
   1309a:	8b2a                	mv	s6,a0
   1309c:	00d57db3          	and	s11,a0,a3
   130a0:	4a81                	li	s5,0
   130a2:	c319                	beqz	a4,130a8 <_vfprintf_r+0x12d6>
   130a4:	89aff06f          	j	1213e <_vfprintf_r+0x36c>
   130a8:	eb5fe06f          	j	11f5c <_vfprintf_r+0x18a>
   130ac:	884a                	mv	a6,s2
   130ae:	4972                	lw	s2,28(sp)
   130b0:	9c22                	add	s8,s8,s0
   130b2:	0a85                	addi	s5,s5,1
   130b4:	010b2023          	sw	a6,0(s6)
   130b8:	a64ff06f          	j	1231c <_vfprintf_r+0x54a>
   130bc:	47fe                	lw	a5,220(sp)
   130be:	2607cc63          	bltz	a5,13336 <_vfprintf_r+0x1564>
   130c2:	0a714703          	lbu	a4,167(sp)
   130c6:	04700793          	li	a5,71
   130ca:	6317ca63          	blt	a5,a7,136fe <_vfprintf_r+0x192c>
   130ce:	67ed                	lui	a5,0x1b
   130d0:	a0478d13          	addi	s10,a5,-1532 # 1aa04 <__clzsi2+0x8c>
   130d4:	b799                	j	1301a <_vfprintf_r+0x1248>
   130d6:	8822                	mv	a6,s0
   130d8:	843e                	mv	s0,a5
   130da:	9656                	add	a2,a2,s5
   130dc:	0705                	addi	a4,a4,1
   130de:	01042023          	sw	a6,0(s0)
   130e2:	01542223          	sw	s5,4(s0)
   130e6:	c7b2                	sw	a2,204(sp)
   130e8:	c5ba                	sw	a4,200(sp)
   130ea:	459d                	li	a1,7
   130ec:	0421                	addi	s0,s0,8
   130ee:	8ce5d7e3          	bge	a1,a4,129bc <_vfprintf_r+0xbea>
   130f2:	4522                	lw	a0,8(sp)
   130f4:	01d0                	addi	a2,sp,196
   130f6:	85a6                	mv	a1,s1
   130f8:	125000ef          	jal	13a1c <__sprint_r>
   130fc:	f2051963          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   13100:	463e                	lw	a2,204(sp)
   13102:	844e                	mv	s0,s3
   13104:	b865                	j	129bc <_vfprintf_r+0xbea>
   13106:	47a6                	lw	a5,72(sp)
   13108:	4596                	lw	a1,68(sp)
   1310a:	dc42                	sw	a6,56(sp)
   1310c:	8e9d                	sub	a3,a3,a5
   1310e:	863e                	mv	a2,a5
   13110:	8536                	mv	a0,a3
   13112:	d47a                	sw	t5,40(sp)
   13114:	d276                	sw	t4,36(sp)
   13116:	d046                	sw	a7,32(sp)
   13118:	ce3a                	sw	a4,28(sp)
   1311a:	c836                	sw	a3,16(sp)
   1311c:	254010ef          	jal	14370 <strncpy>
   13120:	016d37b3          	sltu	a5,s10,s6
   13124:	4615                	li	a2,5
   13126:	97ea                	add	a5,a5,s10
   13128:	02c7f7b3          	remu	a5,a5,a2
   1312c:	4772                	lw	a4,28(sp)
   1312e:	ccccd337          	lui	t1,0xccccd
   13132:	ccccd537          	lui	a0,0xccccd
   13136:	00174583          	lbu	a1,1(a4)
   1313a:	ccd30313          	addi	t1,t1,-819 # cccccccd <__BSS_END__+0xcccb0021>
   1313e:	ccc50513          	addi	a0,a0,-820 # cccccccc <__BSS_END__+0xcccb0020>
   13142:	00b035b3          	snez	a1,a1
   13146:	972e                	add	a4,a4,a1
   13148:	46c2                	lw	a3,16(sp)
   1314a:	5882                	lw	a7,32(sp)
   1314c:	5e92                	lw	t4,36(sp)
   1314e:	5f22                	lw	t5,40(sp)
   13150:	5862                	lw	a6,56(sp)
   13152:	4601                	li	a2,0
   13154:	4e15                	li	t3,5
   13156:	40fb07b3          	sub	a5,s6,a5
   1315a:	00fb35b3          	sltu	a1,s6,a5
   1315e:	40bd85b3          	sub	a1,s11,a1
   13162:	02a78533          	mul	a0,a5,a0
   13166:	026585b3          	mul	a1,a1,t1
   1316a:	0267bfb3          	mulhu	t6,a5,t1
   1316e:	95aa                	add	a1,a1,a0
   13170:	02678533          	mul	a0,a5,t1
   13174:	95fe                	add	a1,a1,t6
   13176:	01f59793          	slli	a5,a1,0x1f
   1317a:	8185                	srli	a1,a1,0x1
   1317c:	8105                	srli	a0,a0,0x1
   1317e:	8fc9                	or	a5,a5,a0
   13180:	bbb9                	j	12ede <_vfprintf_r+0x110c>
   13182:	5782                	lw	a5,32(sp)
   13184:	5b12                	lw	s6,36(sp)
   13186:	68ed                	lui	a7,0x1b
   13188:	97ea                	add	a5,a5,s10
   1318a:	dc4a                	sw	s2,56(sp)
   1318c:	c6e6                	sw	s9,76(sp)
   1318e:	c8de                	sw	s7,80(sp)
   13190:	d26e                	sw	s11,36(sp)
   13192:	5da2                	lw	s11,40(sp)
   13194:	d46a                	sw	s10,40(sp)
   13196:	5cf2                	lw	s9,60(sp)
   13198:	8d62                	mv	s10,s8
   1319a:	4922                	lw	s2,8(sp)
   1319c:	4c26                	lw	s8,72(sp)
   1319e:	481d                	li	a6,7
   131a0:	4741                	li	a4,16
   131a2:	d6888a93          	addi	s5,a7,-664 # 1ad68 <zeroes.0>
   131a6:	85a2                	mv	a1,s0
   131a8:	8bbe                	mv	s7,a5
   131aa:	07605363          	blez	s6,13210 <_vfprintf_r+0x143e>
   131ae:	0fb05663          	blez	s11,1329a <_vfprintf_r+0x14c8>
   131b2:	1dfd                	addi	s11,s11,-1
   131b4:	4796                	lw	a5,68(sp)
   131b6:	9662                	add	a2,a2,s8
   131b8:	0185a223          	sw	s8,4(a1)
   131bc:	c19c                	sw	a5,0(a1)
   131be:	47ae                	lw	a5,200(sp)
   131c0:	c7b2                	sw	a2,204(sp)
   131c2:	05a1                	addi	a1,a1,8
   131c4:	0785                	addi	a5,a5,1
   131c6:	c5be                	sw	a5,200(sp)
   131c8:	0cf84c63          	blt	a6,a5,132a0 <_vfprintf_r+0x14ce>
   131cc:	000cc683          	lbu	a3,0(s9)
   131d0:	41ab8433          	sub	s0,s7,s10
   131d4:	0086d363          	bge	a3,s0,131da <_vfprintf_r+0x1408>
   131d8:	8436                	mv	s0,a3
   131da:	00805f63          	blez	s0,131f8 <_vfprintf_r+0x1426>
   131de:	46ae                	lw	a3,200(sp)
   131e0:	9622                	add	a2,a2,s0
   131e2:	01a5a023          	sw	s10,0(a1)
   131e6:	0685                	addi	a3,a3,1
   131e8:	c1c0                	sw	s0,4(a1)
   131ea:	c7b2                	sw	a2,204(sp)
   131ec:	c5b6                	sw	a3,200(sp)
   131ee:	0cd84563          	blt	a6,a3,132b8 <_vfprintf_r+0x14e6>
   131f2:	000cc683          	lbu	a3,0(s9)
   131f6:	05a1                	addi	a1,a1,8
   131f8:	fff44513          	not	a0,s0
   131fc:	857d                	srai	a0,a0,0x1f
   131fe:	00a477b3          	and	a5,s0,a0
   13202:	40f68433          	sub	s0,a3,a5
   13206:	02804763          	bgtz	s0,13234 <_vfprintf_r+0x1462>
   1320a:	9d36                	add	s10,s10,a3
   1320c:	fb6041e3          	bgtz	s6,131ae <_vfprintf_r+0x13dc>
   13210:	fbb041e3          	bgtz	s11,131b2 <_vfprintf_r+0x13e0>
   13214:	5782                	lw	a5,32(sp)
   13216:	8c6a                	mv	s8,s10
   13218:	5d22                	lw	s10,40(sp)
   1321a:	de66                	sw	s9,60(sp)
   1321c:	5962                	lw	s2,56(sp)
   1321e:	00fd0733          	add	a4,s10,a5
   13222:	4cb6                	lw	s9,76(sp)
   13224:	4bc6                	lw	s7,80(sp)
   13226:	5d92                	lw	s11,36(sp)
   13228:	842e                	mv	s0,a1
   1322a:	fb877063          	bgeu	a4,s8,129ca <_vfprintf_r+0xbf8>
   1322e:	8c3a                	mv	s8,a4
   13230:	f9aff06f          	j	129ca <_vfprintf_r+0xbf8>
   13234:	6f6d                	lui	t5,0x1b
   13236:	46ae                	lw	a3,200(sp)
   13238:	d68f0f13          	addi	t5,t5,-664 # 1ad68 <zeroes.0>
   1323c:	04875163          	bge	a4,s0,1327e <_vfprintf_r+0x14ac>
   13240:	ce56                	sw	s5,28(sp)
   13242:	a021                	j	1324a <_vfprintf_r+0x1478>
   13244:	1441                	addi	s0,s0,-16
   13246:	02875b63          	bge	a4,s0,1327c <_vfprintf_r+0x14aa>
   1324a:	0641                	addi	a2,a2,16
   1324c:	0685                	addi	a3,a3,1
   1324e:	0155a023          	sw	s5,0(a1)
   13252:	c1d8                	sw	a4,4(a1)
   13254:	c7b2                	sw	a2,204(sp)
   13256:	c5b6                	sw	a3,200(sp)
   13258:	05a1                	addi	a1,a1,8
   1325a:	fed855e3          	bge	a6,a3,13244 <_vfprintf_r+0x1472>
   1325e:	01d0                	addi	a2,sp,196
   13260:	85a6                	mv	a1,s1
   13262:	854a                	mv	a0,s2
   13264:	7b8000ef          	jal	13a1c <__sprint_r>
   13268:	dc051363          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   1326c:	4741                	li	a4,16
   1326e:	1441                	addi	s0,s0,-16
   13270:	463e                	lw	a2,204(sp)
   13272:	46ae                	lw	a3,200(sp)
   13274:	85ce                	mv	a1,s3
   13276:	481d                	li	a6,7
   13278:	fc8749e3          	blt	a4,s0,1324a <_vfprintf_r+0x1478>
   1327c:	4f72                	lw	t5,28(sp)
   1327e:	9622                	add	a2,a2,s0
   13280:	0685                	addi	a3,a3,1
   13282:	01e5a023          	sw	t5,0(a1)
   13286:	c1c0                	sw	s0,4(a1)
   13288:	c7b2                	sw	a2,204(sp)
   1328a:	c5b6                	sw	a3,200(sp)
   1328c:	40d84063          	blt	a6,a3,1368c <_vfprintf_r+0x18ba>
   13290:	000cc683          	lbu	a3,0(s9)
   13294:	05a1                	addi	a1,a1,8
   13296:	9d36                	add	s10,s10,a3
   13298:	bf95                	j	1320c <_vfprintf_r+0x143a>
   1329a:	1cfd                	addi	s9,s9,-1
   1329c:	1b7d                	addi	s6,s6,-1
   1329e:	bf19                	j	131b4 <_vfprintf_r+0x13e2>
   132a0:	01d0                	addi	a2,sp,196
   132a2:	85a6                	mv	a1,s1
   132a4:	854a                	mv	a0,s2
   132a6:	776000ef          	jal	13a1c <__sprint_r>
   132aa:	d8051263          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   132ae:	463e                	lw	a2,204(sp)
   132b0:	85ce                	mv	a1,s3
   132b2:	4741                	li	a4,16
   132b4:	481d                	li	a6,7
   132b6:	bf19                	j	131cc <_vfprintf_r+0x13fa>
   132b8:	01d0                	addi	a2,sp,196
   132ba:	85a6                	mv	a1,s1
   132bc:	854a                	mv	a0,s2
   132be:	2fb9                	jal	13a1c <__sprint_r>
   132c0:	d6051763          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   132c4:	000cc683          	lbu	a3,0(s9)
   132c8:	463e                	lw	a2,204(sp)
   132ca:	85ce                	mv	a1,s3
   132cc:	4741                	li	a4,16
   132ce:	481d                	li	a6,7
   132d0:	b725                	j	131f8 <_vfprintf_r+0x1426>
   132d2:	4522                	lw	a0,8(sp)
   132d4:	01d0                	addi	a2,sp,196
   132d6:	85a6                	mv	a1,s1
   132d8:	2791                	jal	13a1c <__sprint_r>
   132da:	d4051a63          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   132de:	553a                	lw	a0,172(sp)
   132e0:	463e                	lw	a2,204(sp)
   132e2:	844e                	mv	s0,s3
   132e4:	b949                	j	12f76 <_vfprintf_r+0x11a4>
   132e6:	67ed                	lui	a5,0x1b
   132e8:	9fc78d13          	addi	s10,a5,-1540 # 1a9fc <__clzsi2+0x84>
   132ec:	b33d                	j	1301a <_vfprintf_r+0x1248>
   132ee:	4522                	lw	a0,8(sp)
   132f0:	01d0                	addi	a2,sp,196
   132f2:	85a6                	mv	a1,s1
   132f4:	2725                	jal	13a1c <__sprint_r>
   132f6:	d2051c63          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   132fa:	463e                	lw	a2,204(sp)
   132fc:	844e                	mv	s0,s3
   132fe:	eaaff06f          	j	129a8 <_vfprintf_r+0xbd6>
   13302:	4b19                	li	s6,6
   13304:	b2a1                	j	12c4c <_vfprintf_r+0xe7a>
   13306:	47d2                	lw	a5,20(sp)
   13308:	4732                	lw	a4,12(sp)
   1330a:	439c                	lw	a5,0(a5)
   1330c:	00e79023          	sh	a4,0(a5)
   13310:	aaaff06f          	j	125ba <_vfprintf_r+0x7e8>
   13314:	0b62                	slli	s6,s6,0x18
   13316:	418b5b13          	srai	s6,s6,0x18
   1331a:	41fb5d93          	srai	s11,s6,0x1f
   1331e:	87ee                	mv	a5,s11
   13320:	de5fe06f          	j	12104 <_vfprintf_r+0x332>
   13324:	0ffb7b13          	zext.b	s6,s6
   13328:	4d81                	li	s11,0
   1332a:	e3dfe06f          	j	12166 <_vfprintf_r+0x394>
   1332e:	0ffb7b13          	zext.b	s6,s6
   13332:	4d81                	li	s11,0
   13334:	b075                	j	12be0 <_vfprintf_r+0xe0e>
   13336:	02d00793          	li	a5,45
   1333a:	0af103a3          	sb	a5,167(sp)
   1333e:	02d00713          	li	a4,45
   13342:	b351                	j	130c6 <_vfprintf_r+0x12f4>
   13344:	4522                	lw	a0,8(sp)
   13346:	01d0                	addi	a2,sp,196
   13348:	85a6                	mv	a1,s1
   1334a:	2dc9                	jal	13a1c <__sprint_r>
   1334c:	ce3fe06f          	j	1202e <_vfprintf_r+0x25c>
   13350:	4522                	lw	a0,8(sp)
   13352:	01d0                	addi	a2,sp,196
   13354:	85a6                	mv	a1,s1
   13356:	25d9                	jal	13a1c <__sprint_r>
   13358:	cc051b63          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   1335c:	553a                	lw	a0,172(sp)
   1335e:	463e                	lw	a2,204(sp)
   13360:	472e                	lw	a4,200(sp)
   13362:	844e                	mv	s0,s3
   13364:	b9dd                	j	1305a <_vfprintf_r+0x1288>
   13366:	01550733          	add	a4,a0,s5
   1336a:	04700613          	li	a2,71
   1336e:	010c                	addi	a1,sp,128
   13370:	855a                	mv	a0,s6
   13372:	d23a                	sw	a4,36(sp)
   13374:	d032                	sw	a2,32(sp)
   13376:	ce46                	sw	a7,28(sp)
   13378:	c97e                	sw	t6,144(sp)
   1337a:	cb7a                	sw	t5,148(sp)
   1337c:	cd76                	sw	t4,152(sp)
   1337e:	cf62                	sw	s8,156(sp)
   13380:	c102                	sw	zero,128(sp)
   13382:	c302                	sw	zero,132(sp)
   13384:	c502                	sw	zero,136(sp)
   13386:	c702                	sw	zero,140(sp)
   13388:	180050ef          	jal	18508 <__eqtf2>
   1338c:	48f2                	lw	a7,28(sp)
   1338e:	5602                	lw	a2,32(sp)
   13390:	5712                	lw	a4,36(sp)
   13392:	36050a63          	beqz	a0,13706 <_vfprintf_r+0x1934>
   13396:	57fa                	lw	a5,188(sp)
   13398:	00e7fc63          	bgeu	a5,a4,133b0 <_vfprintf_r+0x15de>
   1339c:	03000593          	li	a1,48
   133a0:	00178693          	addi	a3,a5,1
   133a4:	df36                	sw	a3,188(sp)
   133a6:	00b78023          	sb	a1,0(a5)
   133aa:	57fa                	lw	a5,188(sp)
   133ac:	fee7eae3          	bltu	a5,a4,133a0 <_vfprintf_r+0x15ce>
   133b0:	573a                	lw	a4,172(sp)
   133b2:	ce3a                	sw	a4,28(sp)
   133b4:	41a787b3          	sub	a5,a5,s10
   133b8:	04700713          	li	a4,71
   133bc:	d03e                	sw	a5,32(sp)
   133be:	98e60ae3          	beq	a2,a4,12d52 <_vfprintf_r+0xf80>
   133c2:	04600713          	li	a4,70
   133c6:	38e60863          	beq	a2,a4,13756 <_vfprintf_r+0x1984>
   133ca:	47f2                	lw	a5,28(sp)
   133cc:	fff78713          	addi	a4,a5,-1
   133d0:	ba59                	j	12d66 <_vfprintf_r+0xf94>
   133d2:	001a8693          	addi	a3,s5,1
   133d6:	4609                	li	a2,2
   133d8:	4522                	lw	a0,8(sp)
   133da:	09010b13          	addi	s6,sp,144
   133de:	1178                	addi	a4,sp,172
   133e0:	85da                	mv	a1,s6
   133e2:	0bc10813          	addi	a6,sp,188
   133e6:	191c                	addi	a5,sp,176
   133e8:	c8c6                	sw	a7,80(sp)
   133ea:	d436                	sw	a3,40(sp)
   133ec:	c97e                	sw	t6,144(sp)
   133ee:	d27e                	sw	t6,36(sp)
   133f0:	cb7a                	sw	t5,148(sp)
   133f2:	d07a                	sw	t5,32(sp)
   133f4:	cd76                	sw	t4,152(sp)
   133f6:	ce76                	sw	t4,28(sp)
   133f8:	cf62                	sw	s8,156(sp)
   133fa:	43e010ef          	jal	14838 <_ldtoa_r>
   133fe:	48c6                	lw	a7,80(sp)
   13400:	56a2                	lw	a3,40(sp)
   13402:	04600593          	li	a1,70
   13406:	fdf8f613          	andi	a2,a7,-33
   1340a:	4ef2                	lw	t4,28(sp)
   1340c:	5f02                	lw	t5,32(sp)
   1340e:	5f92                	lw	t6,36(sp)
   13410:	8d2a                	mv	s10,a0
   13412:	00d50733          	add	a4,a0,a3
   13416:	54b61563          	bne	a2,a1,13960 <_vfprintf_r+0x1b8e>
   1341a:	000d4503          	lbu	a0,0(s10)
   1341e:	03000593          	li	a1,48
   13422:	2eb50663          	beq	a0,a1,1370e <_vfprintf_r+0x193c>
   13426:	56ba                	lw	a3,172(sp)
   13428:	010c                	addi	a1,sp,128
   1342a:	9736                	add	a4,a4,a3
   1342c:	b791                	j	13370 <_vfprintf_r+0x159e>
   1342e:	09010b13          	addi	s6,sp,144
   13432:	010c                	addi	a1,sp,128
   13434:	1170                	addi	a2,sp,172
   13436:	855a                	mv	a0,s6
   13438:	c0c6                	sw	a7,64(sp)
   1343a:	c17e                	sw	t6,128(sp)
   1343c:	c37a                	sw	t5,132(sp)
   1343e:	c576                	sw	t4,136(sp)
   13440:	ce2e                	sw	a1,28(sp)
   13442:	c762                	sw	s8,140(sp)
   13444:	298010ef          	jal	146dc <frexpl>
   13448:	474a                	lw	a4,144(sp)
   1344a:	45f2                	lw	a1,28(sp)
   1344c:	1890                	addi	a2,sp,112
   1344e:	c13a                	sw	a4,128(sp)
   13450:	475a                	lw	a4,148(sp)
   13452:	855a                	mv	a0,s6
   13454:	d882                	sw	zero,112(sp)
   13456:	c33a                	sw	a4,132(sp)
   13458:	476a                	lw	a4,152(sp)
   1345a:	da82                	sw	zero,116(sp)
   1345c:	dc82                	sw	zero,120(sp)
   1345e:	c53a                	sw	a4,136(sp)
   13460:	477a                	lw	a4,156(sp)
   13462:	c73a                	sw	a4,140(sp)
   13464:	3ffc0737          	lui	a4,0x3ffc0
   13468:	deba                	sw	a4,124(sp)
   1346a:	362050ef          	jal	187cc <__multf3>
   1346e:	45f2                	lw	a1,28(sp)
   13470:	4f4a                	lw	t5,144(sp)
   13472:	4eda                	lw	t4,148(sp)
   13474:	486a                	lw	a6,152(sp)
   13476:	855a                	mv	a0,s6
   13478:	d42e                	sw	a1,40(sp)
   1347a:	d27a                	sw	t5,36(sp)
   1347c:	d076                	sw	t4,32(sp)
   1347e:	ce42                	sw	a6,28(sp)
   13480:	c102                	sw	zero,128(sp)
   13482:	c302                	sw	zero,132(sp)
   13484:	c502                	sw	zero,136(sp)
   13486:	c702                	sw	zero,140(sp)
   13488:	080050ef          	jal	18508 <__eqtf2>
   1348c:	4dfa                	lw	s11,156(sp)
   1348e:	4872                	lw	a6,28(sp)
   13490:	5e82                	lw	t4,32(sp)
   13492:	5f12                	lw	t5,36(sp)
   13494:	55a2                	lw	a1,40(sp)
   13496:	4886                	lw	a7,64(sp)
   13498:	e119                	bnez	a0,1349e <_vfprintf_r+0x16cc>
   1349a:	4705                	li	a4,1
   1349c:	d73a                	sw	a4,172(sp)
   1349e:	06100713          	li	a4,97
   134a2:	44e88d63          	beq	a7,a4,138fc <_vfprintf_r+0x1b2a>
   134a6:	676d                	lui	a4,0x1b
   134a8:	a2070793          	addi	a5,a4,-1504 # 1aa20 <__clzsi2+0xa8>
   134ac:	ce3e                	sw	a5,28(sp)
   134ae:	d04a                	sw	s2,32(sp)
   134b0:	d466                	sw	s9,40(sp)
   134b2:	c0de                	sw	s7,64(sp)
   134b4:	c6a2                	sw	s0,76(sp)
   134b6:	896a                	mv	s2,s10
   134b8:	c8a6                	sw	s1,80(sp)
   134ba:	caea                	sw	s10,84(sp)
   134bc:	44f2                	lw	s1,28(sp)
   134be:	1afd                	addi	s5,s5,-1
   134c0:	d246                	sw	a7,36(sp)
   134c2:	8bfa                	mv	s7,t5
   134c4:	8c76                	mv	s8,t4
   134c6:	8cc2                	mv	s9,a6
   134c8:	8d6e                	mv	s10,s11
   134ca:	842e                	mv	s0,a1
   134cc:	a015                	j	134f0 <_vfprintf_r+0x171e>
   134ce:	85a2                	mv	a1,s0
   134d0:	855a                	mv	a0,s6
   134d2:	c95e                	sw	s7,144(sp)
   134d4:	cb62                	sw	s8,148(sp)
   134d6:	cd66                	sw	s9,152(sp)
   134d8:	cf6a                	sw	s10,156(sp)
   134da:	c102                	sw	zero,128(sp)
   134dc:	c302                	sw	zero,132(sp)
   134de:	c502                	sw	zero,136(sp)
   134e0:	c702                	sw	zero,140(sp)
   134e2:	fffa8d93          	addi	s11,s5,-1
   134e6:	022050ef          	jal	18508 <__eqtf2>
   134ea:	3c050c63          	beqz	a0,138c2 <_vfprintf_r+0x1af0>
   134ee:	8aee                	mv	s5,s11
   134f0:	400307b7          	lui	a5,0x40030
   134f4:	1890                	addi	a2,sp,112
   134f6:	85a2                	mv	a1,s0
   134f8:	855a                	mv	a0,s6
   134fa:	debe                	sw	a5,124(sp)
   134fc:	c15e                	sw	s7,128(sp)
   134fe:	c362                	sw	s8,132(sp)
   13500:	c566                	sw	s9,136(sp)
   13502:	c76a                	sw	s10,140(sp)
   13504:	d882                	sw	zero,112(sp)
   13506:	da82                	sw	zero,116(sp)
   13508:	dc82                	sw	zero,120(sp)
   1350a:	2c2050ef          	jal	187cc <__multf3>
   1350e:	855a                	mv	a0,s6
   13510:	0e6070ef          	jal	1a5f6 <__fixtfsi>
   13514:	85aa                	mv	a1,a0
   13516:	8daa                	mv	s11,a0
   13518:	855a                	mv	a0,s6
   1351a:	4d4a                	lw	s10,144(sp)
   1351c:	4cda                	lw	s9,148(sp)
   1351e:	4c6a                	lw	s8,152(sp)
   13520:	4bfa                	lw	s7,156(sp)
   13522:	1f8070ef          	jal	1a71a <__floatsitf>
   13526:	46ca                	lw	a3,144(sp)
   13528:	1090                	addi	a2,sp,96
   1352a:	188c                	addi	a1,sp,112
   1352c:	d0b6                	sw	a3,96(sp)
   1352e:	46da                	lw	a3,148(sp)
   13530:	8522                	mv	a0,s0
   13532:	d8ea                	sw	s10,112(sp)
   13534:	d2b6                	sw	a3,100(sp)
   13536:	46ea                	lw	a3,152(sp)
   13538:	dae6                	sw	s9,116(sp)
   1353a:	dce2                	sw	s8,120(sp)
   1353c:	d4b6                	sw	a3,104(sp)
   1353e:	46fa                	lw	a3,156(sp)
   13540:	dede                	sw	s7,124(sp)
   13542:	d6b6                	sw	a3,108(sp)
   13544:	725050ef          	jal	19468 <__subtf3>
   13548:	01b486b3          	add	a3,s1,s11
   1354c:	0006c603          	lbu	a2,0(a3)
   13550:	8fca                	mv	t6,s2
   13552:	0905                	addi	s2,s2,1
   13554:	4b8a                	lw	s7,128(sp)
   13556:	4c1a                	lw	s8,132(sp)
   13558:	4caa                	lw	s9,136(sp)
   1355a:	4d3a                	lw	s10,140(sp)
   1355c:	57fd                	li	a5,-1
   1355e:	fec90fa3          	sb	a2,-1(s2)
   13562:	f6fa96e3          	bne	s5,a5,134ce <_vfprintf_r+0x16fc>
   13566:	5892                	lw	a7,36(sp)
   13568:	8f5e                	mv	t5,s7
   1356a:	8ee2                	mv	t4,s8
   1356c:	8866                	mv	a6,s9
   1356e:	85a2                	mv	a1,s0
   13570:	ccee                	sw	s11,88(sp)
   13572:	3ffe0ab7          	lui	s5,0x3ffe0
   13576:	8dea                	mv	s11,s10
   13578:	855a                	mv	a0,s6
   1357a:	cec6                	sw	a7,92(sp)
   1357c:	d27e                	sw	t6,36(sp)
   1357e:	44c6                	lw	s1,80(sp)
   13580:	4b86                	lw	s7,64(sp)
   13582:	5ca2                	lw	s9,40(sp)
   13584:	4436                	lw	s0,76(sp)
   13586:	c97a                	sw	t5,144(sp)
   13588:	c8fa                	sw	t5,80(sp)
   1358a:	cb76                	sw	t4,148(sp)
   1358c:	c6f6                	sw	t4,76(sp)
   1358e:	cd42                	sw	a6,152(sp)
   13590:	c0c2                	sw	a6,64(sp)
   13592:	cf6e                	sw	s11,156(sp)
   13594:	c102                	sw	zero,128(sp)
   13596:	c302                	sw	zero,132(sp)
   13598:	c502                	sw	zero,136(sp)
   1359a:	c756                	sw	s5,140(sp)
   1359c:	d42e                	sw	a1,40(sp)
   1359e:	056050ef          	jal	185f4 <__getf2>
   135a2:	8c4a                	mv	s8,s2
   135a4:	4d56                	lw	s10,84(sp)
   135a6:	5902                	lw	s2,32(sp)
   135a8:	5f92                	lw	t6,36(sp)
   135aa:	48f6                	lw	a7,92(sp)
   135ac:	00a04e63          	bgtz	a0,135c8 <_vfprintf_r+0x17f6>
   135b0:	55a2                	lw	a1,40(sp)
   135b2:	855a                	mv	a0,s6
   135b4:	d046                	sw	a7,32(sp)
   135b6:	753040ef          	jal	18508 <__eqtf2>
   135ba:	5882                	lw	a7,32(sp)
   135bc:	e529                	bnez	a0,13606 <_vfprintf_r+0x1834>
   135be:	47e6                	lw	a5,88(sp)
   135c0:	5f92                	lw	t6,36(sp)
   135c2:	0017f693          	andi	a3,a5,1
   135c6:	c2a1                	beqz	a3,13606 <_vfprintf_r+0x1834>
   135c8:	47f2                	lw	a5,28(sp)
   135ca:	df7e                	sw	t6,188(sp)
   135cc:	fffc4603          	lbu	a2,-1(s8)
   135d0:	00f7c583          	lbu	a1,15(a5) # 4003000f <__BSS_END__+0x40013363>
   135d4:	86e2                	mv	a3,s8
   135d6:	00b61e63          	bne	a2,a1,135f2 <_vfprintf_r+0x1820>
   135da:	03000513          	li	a0,48
   135de:	fea68fa3          	sb	a0,-1(a3)
   135e2:	56fa                	lw	a3,188(sp)
   135e4:	fff68793          	addi	a5,a3,-1
   135e8:	df3e                	sw	a5,188(sp)
   135ea:	fff6c603          	lbu	a2,-1(a3)
   135ee:	fec588e3          	beq	a1,a2,135de <_vfprintf_r+0x180c>
   135f2:	00160593          	addi	a1,a2,1
   135f6:	03900513          	li	a0,57
   135fa:	0ff5f593          	zext.b	a1,a1
   135fe:	02a60c63          	beq	a2,a0,13636 <_vfprintf_r+0x1864>
   13602:	feb68fa3          	sb	a1,-1(a3)
   13606:	57ba                	lw	a5,172(sp)
   13608:	41ac0733          	sub	a4,s8,s10
   1360c:	d03a                	sw	a4,32(sp)
   1360e:	fff78713          	addi	a4,a5,-1
   13612:	ce3e                	sw	a5,28(sp)
   13614:	06100613          	li	a2,97
   13618:	d73a                	sw	a4,172(sp)
   1361a:	07000693          	li	a3,112
   1361e:	00c88663          	beq	a7,a2,1362a <_vfprintf_r+0x1858>
   13622:	05000693          	li	a3,80
   13626:	04100893          	li	a7,65
   1362a:	4605                	li	a2,1
   1362c:	f42ff06f          	j	12d6e <_vfprintf_r+0xf9c>
   13630:	86d6                	mv	a3,s5
   13632:	460d                	li	a2,3
   13634:	b355                	j	133d8 <_vfprintf_r+0x1606>
   13636:	47f2                	lw	a5,28(sp)
   13638:	00a7c583          	lbu	a1,10(a5)
   1363c:	b7d9                	j	13602 <_vfprintf_r+0x1830>
   1363e:	0a714703          	lbu	a4,167(sp)
   13642:	4cb6                	lw	s9,76(sp)
   13644:	4a81                	li	s5,0
   13646:	c319                	beqz	a4,1364c <_vfprintf_r+0x187a>
   13648:	af7fe06f          	j	1213e <_vfprintf_r+0x36c>
   1364c:	911fe06f          	j	11f5c <_vfprintf_r+0x18a>
   13650:	5782                	lw	a5,32(sp)
   13652:	4772                	lw	a4,28(sp)
   13654:	12f74763          	blt	a4,a5,13782 <_vfprintf_r+0x19b0>
   13658:	47f2                	lw	a5,28(sp)
   1365a:	001cf713          	andi	a4,s9,1
   1365e:	8b3e                	mv	s6,a5
   13660:	c701                	beqz	a4,13668 <_vfprintf_r+0x1896>
   13662:	5732                	lw	a4,44(sp)
   13664:	00e78b33          	add	s6,a5,a4
   13668:	400cfe13          	andi	t3,s9,1024
   1366c:	000e0563          	beqz	t3,13676 <_vfprintf_r+0x18a4>
   13670:	47f2                	lw	a5,28(sp)
   13672:	1ef04c63          	bgtz	a5,1386a <_vfprintf_r+0x1a98>
   13676:	fffb4693          	not	a3,s6
   1367a:	86fd                	srai	a3,a3,0x1f
   1367c:	00db7db3          	and	s11,s6,a3
   13680:	06700893          	li	a7,103
   13684:	d402                	sw	zero,40(sp)
   13686:	d202                	sw	zero,36(sp)
   13688:	f88ff06f          	j	12e10 <_vfprintf_r+0x103e>
   1368c:	01d0                	addi	a2,sp,196
   1368e:	85a6                	mv	a1,s1
   13690:	854a                	mv	a0,s2
   13692:	2669                	jal	13a1c <__sprint_r>
   13694:	98051d63          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   13698:	000cc683          	lbu	a3,0(s9)
   1369c:	463e                	lw	a2,204(sp)
   1369e:	85ce                	mv	a1,s3
   136a0:	4741                	li	a4,16
   136a2:	481d                	li	a6,7
   136a4:	9d36                	add	s10,s10,a3
   136a6:	b69d                	j	1320c <_vfprintf_r+0x143a>
   136a8:	4525                	li	a0,9
   136aa:	83656ae3          	bltu	a0,s6,12ede <_vfprintf_r+0x110c>
   136ae:	b861                	j	12f46 <_vfprintf_r+0x1174>
   136b0:	57fd                	li	a5,-1
   136b2:	c63e                	sw	a5,12(sp)
   136b4:	9adfe06f          	j	12060 <_vfprintf_r+0x28e>
   136b8:	02d00793          	li	a5,45
   136bc:	0af103a3          	sb	a5,167(sp)
   136c0:	02d00713          	li	a4,45
   136c4:	b2a1                	j	1300c <_vfprintf_r+0x123a>
   136c6:	0a714703          	lbu	a4,167(sp)
   136ca:	ca62                	sw	s8,20(sp)
   136cc:	d402                	sw	zero,40(sp)
   136ce:	d202                	sw	zero,36(sp)
   136d0:	ce02                	sw	zero,28(sp)
   136d2:	8dd6                	mv	s11,s5
   136d4:	8b56                	mv	s6,s5
   136d6:	4a81                	li	s5,0
   136d8:	c319                	beqz	a4,136de <_vfprintf_r+0x190c>
   136da:	a65fe06f          	j	1213e <_vfprintf_r+0x36c>
   136de:	87ffe06f          	j	11f5c <_vfprintf_r+0x18a>
   136e2:	4522                	lw	a0,8(sp)
   136e4:	01d0                	addi	a2,sp,196
   136e6:	85a6                	mv	a1,s1
   136e8:	2e15                	jal	13a1c <__sprint_r>
   136ea:	94051263          	bnez	a0,1282e <_vfprintf_r+0xa5c>
   136ee:	5aba                	lw	s5,172(sp)
   136f0:	5782                	lw	a5,32(sp)
   136f2:	463e                	lw	a2,204(sp)
   136f4:	844e                	mv	s0,s3
   136f6:	41578ab3          	sub	s5,a5,s5
   136fa:	b12ff06f          	j	12a0c <_vfprintf_r+0xc3a>
   136fe:	67ed                	lui	a5,0x1b
   13700:	a0878d13          	addi	s10,a5,-1528 # 1aa08 <__clzsi2+0x90>
   13704:	ba19                	j	1301a <_vfprintf_r+0x1248>
   13706:	57ba                	lw	a5,172(sp)
   13708:	ce3e                	sw	a5,28(sp)
   1370a:	87ba                	mv	a5,a4
   1370c:	b165                	j	133b4 <_vfprintf_r+0x15e2>
   1370e:	010c                	addi	a1,sp,128
   13710:	855a                	mv	a0,s6
   13712:	ceba                	sw	a4,92(sp)
   13714:	ccb2                	sw	a2,88(sp)
   13716:	cac6                	sw	a7,84(sp)
   13718:	c8b6                	sw	a3,80(sp)
   1371a:	c97e                	sw	t6,144(sp)
   1371c:	d47e                	sw	t6,40(sp)
   1371e:	cb7a                	sw	t5,148(sp)
   13720:	d27a                	sw	t5,36(sp)
   13722:	cd76                	sw	t4,152(sp)
   13724:	d076                	sw	t4,32(sp)
   13726:	ce2e                	sw	a1,28(sp)
   13728:	cf62                	sw	s8,156(sp)
   1372a:	c102                	sw	zero,128(sp)
   1372c:	c302                	sw	zero,132(sp)
   1372e:	c502                	sw	zero,136(sp)
   13730:	c702                	sw	zero,140(sp)
   13732:	5d7040ef          	jal	18508 <__eqtf2>
   13736:	45f2                	lw	a1,28(sp)
   13738:	5e82                	lw	t4,32(sp)
   1373a:	5f12                	lw	t5,36(sp)
   1373c:	5fa2                	lw	t6,40(sp)
   1373e:	46c6                	lw	a3,80(sp)
   13740:	48d6                	lw	a7,84(sp)
   13742:	4666                	lw	a2,88(sp)
   13744:	4776                	lw	a4,92(sp)
   13746:	1c051063          	bnez	a0,13906 <_vfprintf_r+0x1b34>
   1374a:	57ba                	lw	a5,172(sp)
   1374c:	973e                	add	a4,a4,a5
   1374e:	ce3e                	sw	a5,28(sp)
   13750:	41a707b3          	sub	a5,a4,s10
   13754:	d03e                	sw	a5,32(sp)
   13756:	47f2                	lw	a5,28(sp)
   13758:	001cf713          	andi	a4,s9,1
   1375c:	01576733          	or	a4,a4,s5
   13760:	1af05963          	blez	a5,13912 <_vfprintf_r+0x1b40>
   13764:	18071463          	bnez	a4,138ec <_vfprintf_r+0x1b1a>
   13768:	4b72                	lw	s6,28(sp)
   1376a:	06600893          	li	a7,102
   1376e:	400cfe13          	andi	t3,s9,1024
   13772:	0e0e1e63          	bnez	t3,1386e <_vfprintf_r+0x1a9c>
   13776:	fffb4693          	not	a3,s6
   1377a:	86fd                	srai	a3,a3,0x1f
   1377c:	00db7db3          	and	s11,s6,a3
   13780:	b711                	j	13684 <_vfprintf_r+0x18b2>
   13782:	5782                	lw	a5,32(sp)
   13784:	5732                	lw	a4,44(sp)
   13786:	06700893          	li	a7,103
   1378a:	00e78b33          	add	s6,a5,a4
   1378e:	47f2                	lw	a5,28(sp)
   13790:	fcf04fe3          	bgtz	a5,1376e <_vfprintf_r+0x199c>
   13794:	40fb0f33          	sub	t5,s6,a5
   13798:	001f0b13          	addi	s6,t5,1
   1379c:	fffb4693          	not	a3,s6
   137a0:	86fd                	srai	a3,a3,0x1f
   137a2:	00db7db3          	and	s11,s6,a3
   137a6:	bdf9                	j	13684 <_vfprintf_r+0x18b2>
   137a8:	8ee6                	mv	t4,s9
   137aa:	cf5fe06f          	j	1249e <_vfprintf_r+0x6cc>
   137ae:	686d                	lui	a6,0x1b
   137b0:	55c1                	li	a1,-16
   137b2:	40a00ab3          	neg	s5,a0
   137b6:	d6880813          	addi	a6,a6,-664 # 1ad68 <zeroes.0>
   137ba:	04b55263          	bge	a0,a1,137fe <_vfprintf_r+0x1a2c>
   137be:	ce4a                	sw	s2,28(sp)
   137c0:	4b41                	li	s6,16
   137c2:	4c1d                	li	s8,7
   137c4:	8942                	mv	s2,a6
   137c6:	a021                	j	137ce <_vfprintf_r+0x19fc>
   137c8:	1ac1                	addi	s5,s5,-16 # 3ffdfff0 <__BSS_END__+0x3ffc3344>
   137ca:	035b5863          	bge	s6,s5,137fa <_vfprintf_r+0x1a28>
   137ce:	0641                	addi	a2,a2,16
   137d0:	0705                	addi	a4,a4,1
   137d2:	01242023          	sw	s2,0(s0)
   137d6:	01642223          	sw	s6,4(s0)
   137da:	c7b2                	sw	a2,204(sp)
   137dc:	c5ba                	sw	a4,200(sp)
   137de:	0421                	addi	s0,s0,8
   137e0:	feec54e3          	bge	s8,a4,137c8 <_vfprintf_r+0x19f6>
   137e4:	4522                	lw	a0,8(sp)
   137e6:	01d0                	addi	a2,sp,196
   137e8:	85a6                	mv	a1,s1
   137ea:	2c0d                	jal	13a1c <__sprint_r>
   137ec:	c119                	beqz	a0,137f2 <_vfprintf_r+0x1a20>
   137ee:	840ff06f          	j	1282e <_vfprintf_r+0xa5c>
   137f2:	463e                	lw	a2,204(sp)
   137f4:	472e                	lw	a4,200(sp)
   137f6:	844e                	mv	s0,s3
   137f8:	bfc1                	j	137c8 <_vfprintf_r+0x19f6>
   137fa:	884a                	mv	a6,s2
   137fc:	4972                	lw	s2,28(sp)
   137fe:	9656                	add	a2,a2,s5
   13800:	0705                	addi	a4,a4,1
   13802:	01042023          	sw	a6,0(s0)
   13806:	01542223          	sw	s5,4(s0)
   1380a:	c7b2                	sw	a2,204(sp)
   1380c:	c5ba                	sw	a4,200(sp)
   1380e:	459d                	li	a1,7
   13810:	f8e5d763          	bge	a1,a4,12f9e <_vfprintf_r+0x11cc>
   13814:	4522                	lw	a0,8(sp)
   13816:	01d0                	addi	a2,sp,196
   13818:	85a6                	mv	a1,s1
   1381a:	2409                	jal	13a1c <__sprint_r>
   1381c:	c119                	beqz	a0,13822 <_vfprintf_r+0x1a50>
   1381e:	810ff06f          	j	1282e <_vfprintf_r+0xa5c>
   13822:	463e                	lw	a2,204(sp)
   13824:	472e                	lw	a4,200(sp)
   13826:	844e                	mv	s0,s3
   13828:	837ff06f          	j	1305e <_vfprintf_r+0x128c>
   1382c:	0b610693          	addi	a3,sp,182
   13830:	e619                	bnez	a2,1383e <_vfprintf_r+0x1a6c>
   13832:	03000693          	li	a3,48
   13836:	0ad10b23          	sb	a3,182(sp)
   1383a:	0b710693          	addi	a3,sp,183
   1383e:	0b1c                	addi	a5,sp,400
   13840:	40f68633          	sub	a2,a3,a5
   13844:	03070713          	addi	a4,a4,48
   13848:	0dd60793          	addi	a5,a2,221
   1384c:	00e68023          	sb	a4,0(a3)
   13850:	c0be                	sw	a5,64(sp)
   13852:	d92ff06f          	j	12de4 <_vfprintf_r+0x1012>
   13856:	c802                	sw	zero,16(sp)
   13858:	4a99                	li	s5,6
   1385a:	9effe06f          	j	12248 <_vfprintf_r+0x476>
   1385e:	001cf713          	andi	a4,s9,1
   13862:	d8070a63          	beqz	a4,12df6 <_vfprintf_r+0x1024>
   13866:	d8cff06f          	j	12df2 <_vfprintf_r+0x1020>
   1386a:	06700893          	li	a7,103
   1386e:	5672                	lw	a2,60(sp)
   13870:	0ff00693          	li	a3,255
   13874:	00064703          	lbu	a4,0(a2)
   13878:	0ed70163          	beq	a4,a3,1395a <_vfprintf_r+0x1b88>
   1387c:	47f2                	lw	a5,28(sp)
   1387e:	4501                	li	a0,0
   13880:	4581                	li	a1,0
   13882:	00f75a63          	bge	a4,a5,13896 <_vfprintf_r+0x1ac4>
   13886:	8f99                	sub	a5,a5,a4
   13888:	00164703          	lbu	a4,1(a2)
   1388c:	c71d                	beqz	a4,138ba <_vfprintf_r+0x1ae8>
   1388e:	0585                	addi	a1,a1,1
   13890:	0605                	addi	a2,a2,1
   13892:	fed718e3          	bne	a4,a3,13882 <_vfprintf_r+0x1ab0>
   13896:	de32                	sw	a2,60(sp)
   13898:	d22e                	sw	a1,36(sp)
   1389a:	d42a                	sw	a0,40(sp)
   1389c:	ce3e                	sw	a5,28(sp)
   1389e:	57a2                	lw	a5,40(sp)
   138a0:	5712                	lw	a4,36(sp)
   138a2:	973e                	add	a4,a4,a5
   138a4:	47a6                	lw	a5,72(sp)
   138a6:	02f70733          	mul	a4,a4,a5
   138aa:	9b3a                	add	s6,s6,a4
   138ac:	fffb4693          	not	a3,s6
   138b0:	86fd                	srai	a3,a3,0x1f
   138b2:	00db7db3          	and	s11,s6,a3
   138b6:	d5aff06f          	j	12e10 <_vfprintf_r+0x103e>
   138ba:	00064703          	lbu	a4,0(a2)
   138be:	0505                	addi	a0,a0,1
   138c0:	bfc9                	j	13892 <_vfprintf_r+0x1ac0>
   138c2:	8c4a                	mv	s8,s2
   138c4:	001a8693          	addi	a3,s5,1
   138c8:	5892                	lw	a7,36(sp)
   138ca:	5ca2                	lw	s9,40(sp)
   138cc:	4b86                	lw	s7,64(sp)
   138ce:	4436                	lw	s0,76(sp)
   138d0:	5902                	lw	s2,32(sp)
   138d2:	44c6                	lw	s1,80(sp)
   138d4:	4d56                	lw	s10,84(sp)
   138d6:	96e2                	add	a3,a3,s8
   138d8:	03000613          	li	a2,48
   138dc:	d20ac5e3          	bltz	s5,13606 <_vfprintf_r+0x1834>
   138e0:	0c05                	addi	s8,s8,1
   138e2:	fecc0fa3          	sb	a2,-1(s8)
   138e6:	fedc1de3          	bne	s8,a3,138e0 <_vfprintf_r+0x1b0e>
   138ea:	bb31                	j	13606 <_vfprintf_r+0x1834>
   138ec:	5732                	lw	a4,44(sp)
   138ee:	06600893          	li	a7,102
   138f2:	00ea8f33          	add	t5,s5,a4
   138f6:	00ff0b33          	add	s6,t5,a5
   138fa:	bd95                	j	1376e <_vfprintf_r+0x199c>
   138fc:	676d                	lui	a4,0x1b
   138fe:	a0c70793          	addi	a5,a4,-1524 # 1aa0c <__clzsi2+0x94>
   13902:	ce3e                	sw	a5,28(sp)
   13904:	b66d                	j	134ae <_vfprintf_r+0x16dc>
   13906:	4505                	li	a0,1
   13908:	40d506b3          	sub	a3,a0,a3
   1390c:	d736                	sw	a3,172(sp)
   1390e:	9736                	add	a4,a4,a3
   13910:	b485                	j	13370 <_vfprintf_r+0x159e>
   13912:	e711                	bnez	a4,1391e <_vfprintf_r+0x1b4c>
   13914:	4d85                	li	s11,1
   13916:	06600893          	li	a7,102
   1391a:	4b05                	li	s6,1
   1391c:	b3a5                	j	13684 <_vfprintf_r+0x18b2>
   1391e:	57b2                	lw	a5,44(sp)
   13920:	06600893          	li	a7,102
   13924:	00178f13          	addi	t5,a5,1
   13928:	015f0b33          	add	s6,t5,s5
   1392c:	fffb4693          	not	a3,s6
   13930:	86fd                	srai	a3,a3,0x1f
   13932:	00db7db3          	and	s11,s6,a3
   13936:	b3b9                	j	13684 <_vfprintf_r+0x18b2>
   13938:	4789                	li	a5,2
   1393a:	c0be                	sw	a5,64(sp)
   1393c:	ca8ff06f          	j	12de4 <_vfprintf_r+0x1012>
   13940:	47d2                	lw	a5,20(sp)
   13942:	0007aa83          	lw	s5,0(a5)
   13946:	0791                	addi	a5,a5,4
   13948:	000ad363          	bgez	s5,1394e <_vfprintf_r+0x1b7c>
   1394c:	5afd                	li	s5,-1
   1394e:	00194883          	lbu	a7,1(s2)
   13952:	ca3e                	sw	a5,20(sp)
   13954:	8936                	mv	s2,a3
   13956:	dacfe06f          	j	11f02 <_vfprintf_r+0x130>
   1395a:	d402                	sw	zero,40(sp)
   1395c:	d202                	sw	zero,36(sp)
   1395e:	b781                	j	1389e <_vfprintf_r+0x1acc>
   13960:	04500613          	li	a2,69
   13964:	010c                	addi	a1,sp,128
   13966:	b429                	j	13370 <_vfprintf_r+0x159e>
   13968:	00c4d783          	lhu	a5,12(s1)
   1396c:	0407e793          	ori	a5,a5,64
   13970:	00f49623          	sh	a5,12(s1)
   13974:	ebafe06f          	j	1202e <_vfprintf_r+0x25c>

00013978 <vfprintf>:
   13978:	87aa                	mv	a5,a0
   1397a:	f141a503          	lw	a0,-236(gp) # 1c974 <_impure_ptr>
   1397e:	86b2                	mv	a3,a2
   13980:	862e                	mv	a2,a1
   13982:	85be                	mv	a1,a5
   13984:	c4efe06f          	j	11dd2 <_vfprintf_r>

00013988 <__sbprintf>:
   13988:	b8010113          	addi	sp,sp,-1152
   1398c:	00c59783          	lh	a5,12(a1)
   13990:	00e5d703          	lhu	a4,14(a1)
   13994:	46812c23          	sw	s0,1144(sp)
   13998:	842e                	mv	s0,a1
   1399a:	65c1                	lui	a1,0x10
   1399c:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   1399e:	06442e03          	lw	t3,100(s0)
   139a2:	01c42303          	lw	t1,28(s0)
   139a6:	02442883          	lw	a7,36(s0)
   139aa:	0742                	slli	a4,a4,0x10
   139ac:	8fed                	and	a5,a5,a1
   139ae:	8fd9                	or	a5,a5,a4
   139b0:	40000813          	li	a6,1024
   139b4:	ca3e                	sw	a5,20(sp)
   139b6:	002c                	addi	a1,sp,8
   139b8:	189c                	addi	a5,sp,112
   139ba:	46912a23          	sw	s1,1140(sp)
   139be:	47212823          	sw	s2,1136(sp)
   139c2:	46112e23          	sw	ra,1148(sp)
   139c6:	892a                	mv	s2,a0
   139c8:	d6f2                	sw	t3,108(sp)
   139ca:	d21a                	sw	t1,36(sp)
   139cc:	d646                	sw	a7,44(sp)
   139ce:	c43e                	sw	a5,8(sp)
   139d0:	cc3e                	sw	a5,24(sp)
   139d2:	c842                	sw	a6,16(sp)
   139d4:	ce42                	sw	a6,28(sp)
   139d6:	d002                	sw	zero,32(sp)
   139d8:	bfafe0ef          	jal	11dd2 <_vfprintf_r>
   139dc:	84aa                	mv	s1,a0
   139de:	02055963          	bgez	a0,13a10 <__sbprintf+0x88>
   139e2:	01415783          	lhu	a5,20(sp)
   139e6:	0407f793          	andi	a5,a5,64
   139ea:	c799                	beqz	a5,139f8 <__sbprintf+0x70>
   139ec:	00c45783          	lhu	a5,12(s0)
   139f0:	0407e793          	ori	a5,a5,64
   139f4:	00f41623          	sh	a5,12(s0)
   139f8:	47c12083          	lw	ra,1148(sp)
   139fc:	47812403          	lw	s0,1144(sp)
   13a00:	47012903          	lw	s2,1136(sp)
   13a04:	8526                	mv	a0,s1
   13a06:	47412483          	lw	s1,1140(sp)
   13a0a:	48010113          	addi	sp,sp,1152
   13a0e:	8082                	ret
   13a10:	002c                	addi	a1,sp,8
   13a12:	854a                	mv	a0,s2
   13a14:	2c9d                	jal	13c8a <_fflush_r>
   13a16:	d571                	beqz	a0,139e2 <__sbprintf+0x5a>
   13a18:	54fd                	li	s1,-1
   13a1a:	b7e1                	j	139e2 <__sbprintf+0x5a>

00013a1c <__sprint_r>:
   13a1c:	461c                	lw	a5,8(a2)
   13a1e:	1141                	addi	sp,sp,-16
   13a20:	c422                	sw	s0,8(sp)
   13a22:	c606                	sw	ra,12(sp)
   13a24:	8432                	mv	s0,a2
   13a26:	eb81                	bnez	a5,13a36 <__sprint_r+0x1a>
   13a28:	40b2                	lw	ra,12(sp)
   13a2a:	00042223          	sw	zero,4(s0)
   13a2e:	4422                	lw	s0,8(sp)
   13a30:	4501                	li	a0,0
   13a32:	0141                	addi	sp,sp,16
   13a34:	8082                	ret
   13a36:	2ce9                	jal	13d10 <__sfvwrite_r>
   13a38:	40b2                	lw	ra,12(sp)
   13a3a:	00042423          	sw	zero,8(s0)
   13a3e:	00042223          	sw	zero,4(s0)
   13a42:	4422                	lw	s0,8(sp)
   13a44:	0141                	addi	sp,sp,16
   13a46:	8082                	ret

00013a48 <_fclose_r>:
   13a48:	1141                	addi	sp,sp,-16
   13a4a:	c606                	sw	ra,12(sp)
   13a4c:	c04a                	sw	s2,0(sp)
   13a4e:	cd89                	beqz	a1,13a68 <_fclose_r+0x20>
   13a50:	c422                	sw	s0,8(sp)
   13a52:	c226                	sw	s1,4(sp)
   13a54:	842e                	mv	s0,a1
   13a56:	84aa                	mv	s1,a0
   13a58:	c119                	beqz	a0,13a5e <_fclose_r+0x16>
   13a5a:	595c                	lw	a5,52(a0)
   13a5c:	c7d1                	beqz	a5,13ae8 <_fclose_r+0xa0>
   13a5e:	00c41783          	lh	a5,12(s0)
   13a62:	eb89                	bnez	a5,13a74 <_fclose_r+0x2c>
   13a64:	4422                	lw	s0,8(sp)
   13a66:	4492                	lw	s1,4(sp)
   13a68:	40b2                	lw	ra,12(sp)
   13a6a:	4901                	li	s2,0
   13a6c:	854a                	mv	a0,s2
   13a6e:	4902                	lw	s2,0(sp)
   13a70:	0141                	addi	sp,sp,16
   13a72:	8082                	ret
   13a74:	85a2                	mv	a1,s0
   13a76:	8526                	mv	a0,s1
   13a78:	28bd                	jal	13af6 <__sflush_r>
   13a7a:	545c                	lw	a5,44(s0)
   13a7c:	892a                	mv	s2,a0
   13a7e:	c791                	beqz	a5,13a8a <_fclose_r+0x42>
   13a80:	4c4c                	lw	a1,28(s0)
   13a82:	8526                	mv	a0,s1
   13a84:	9782                	jalr	a5
   13a86:	04054663          	bltz	a0,13ad2 <_fclose_r+0x8a>
   13a8a:	00c45783          	lhu	a5,12(s0)
   13a8e:	0807f793          	andi	a5,a5,128
   13a92:	e7b1                	bnez	a5,13ade <_fclose_r+0x96>
   13a94:	580c                	lw	a1,48(s0)
   13a96:	c991                	beqz	a1,13aaa <_fclose_r+0x62>
   13a98:	04040793          	addi	a5,s0,64
   13a9c:	00f58563          	beq	a1,a5,13aa6 <_fclose_r+0x5e>
   13aa0:	8526                	mv	a0,s1
   13aa2:	b67fd0ef          	jal	11608 <_free_r>
   13aa6:	02042823          	sw	zero,48(s0)
   13aaa:	406c                	lw	a1,68(s0)
   13aac:	c591                	beqz	a1,13ab8 <_fclose_r+0x70>
   13aae:	8526                	mv	a0,s1
   13ab0:	b59fd0ef          	jal	11608 <_free_r>
   13ab4:	04042223          	sw	zero,68(s0)
   13ab8:	c3afd0ef          	jal	10ef2 <__sfp_lock_acquire>
   13abc:	00041623          	sh	zero,12(s0)
   13ac0:	c34fd0ef          	jal	10ef4 <__sfp_lock_release>
   13ac4:	40b2                	lw	ra,12(sp)
   13ac6:	4422                	lw	s0,8(sp)
   13ac8:	4492                	lw	s1,4(sp)
   13aca:	854a                	mv	a0,s2
   13acc:	4902                	lw	s2,0(sp)
   13ace:	0141                	addi	sp,sp,16
   13ad0:	8082                	ret
   13ad2:	00c45783          	lhu	a5,12(s0)
   13ad6:	597d                	li	s2,-1
   13ad8:	0807f793          	andi	a5,a5,128
   13adc:	dfc5                	beqz	a5,13a94 <_fclose_r+0x4c>
   13ade:	480c                	lw	a1,16(s0)
   13ae0:	8526                	mv	a0,s1
   13ae2:	b27fd0ef          	jal	11608 <_free_r>
   13ae6:	b77d                	j	13a94 <_fclose_r+0x4c>
   13ae8:	bf4fd0ef          	jal	10edc <__sinit>
   13aec:	bf8d                	j	13a5e <_fclose_r+0x16>

00013aee <fclose>:
   13aee:	85aa                	mv	a1,a0
   13af0:	f141a503          	lw	a0,-236(gp) # 1c974 <_impure_ptr>
   13af4:	bf91                	j	13a48 <_fclose_r>

00013af6 <__sflush_r>:
   13af6:	00c59703          	lh	a4,12(a1)
   13afa:	1101                	addi	sp,sp,-32
   13afc:	cc22                	sw	s0,24(sp)
   13afe:	c64e                	sw	s3,12(sp)
   13b00:	ce06                	sw	ra,28(sp)
   13b02:	00877793          	andi	a5,a4,8
   13b06:	842e                	mv	s0,a1
   13b08:	89aa                	mv	s3,a0
   13b0a:	e7e1                	bnez	a5,13bd2 <__sflush_r+0xdc>
   13b0c:	6785                	lui	a5,0x1
   13b0e:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf894>
   13b12:	41d4                	lw	a3,4(a1)
   13b14:	8fd9                	or	a5,a5,a4
   13b16:	00f59623          	sh	a5,12(a1)
   13b1a:	10d05563          	blez	a3,13c24 <__sflush_r+0x12e>
   13b1e:	02842803          	lw	a6,40(s0)
   13b22:	0a080263          	beqz	a6,13bc6 <__sflush_r+0xd0>
   13b26:	ca26                	sw	s1,20(sp)
   13b28:	01371693          	slli	a3,a4,0x13
   13b2c:	0009a483          	lw	s1,0(s3)
   13b30:	0009a023          	sw	zero,0(s3)
   13b34:	4c4c                	lw	a1,28(s0)
   13b36:	0e06ce63          	bltz	a3,13c32 <__sflush_r+0x13c>
   13b3a:	4601                	li	a2,0
   13b3c:	4685                	li	a3,1
   13b3e:	854e                	mv	a0,s3
   13b40:	9802                	jalr	a6
   13b42:	57fd                	li	a5,-1
   13b44:	862a                	mv	a2,a0
   13b46:	10f50f63          	beq	a0,a5,13c64 <__sflush_r+0x16e>
   13b4a:	00c41783          	lh	a5,12(s0)
   13b4e:	02842803          	lw	a6,40(s0)
   13b52:	4c4c                	lw	a1,28(s0)
   13b54:	8b91                	andi	a5,a5,4
   13b56:	c799                	beqz	a5,13b64 <__sflush_r+0x6e>
   13b58:	4058                	lw	a4,4(s0)
   13b5a:	581c                	lw	a5,48(s0)
   13b5c:	8e19                	sub	a2,a2,a4
   13b5e:	c399                	beqz	a5,13b64 <__sflush_r+0x6e>
   13b60:	5c5c                	lw	a5,60(s0)
   13b62:	8e1d                	sub	a2,a2,a5
   13b64:	4681                	li	a3,0
   13b66:	854e                	mv	a0,s3
   13b68:	9802                	jalr	a6
   13b6a:	57fd                	li	a5,-1
   13b6c:	0cf51563          	bne	a0,a5,13c36 <__sflush_r+0x140>
   13b70:	0009a683          	lw	a3,0(s3)
   13b74:	47f5                	li	a5,29
   13b76:	00c41703          	lh	a4,12(s0)
   13b7a:	10d7e163          	bltu	a5,a3,13c7c <__sflush_r+0x186>
   13b7e:	204007b7          	lui	a5,0x20400
   13b82:	0785                	addi	a5,a5,1 # 20400001 <__BSS_END__+0x203e3355>
   13b84:	00d7d7b3          	srl	a5,a5,a3
   13b88:	8b85                	andi	a5,a5,1
   13b8a:	cbed                	beqz	a5,13c7c <__sflush_r+0x186>
   13b8c:	4810                	lw	a2,16(s0)
   13b8e:	77fd                	lui	a5,0xfffff
   13b90:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe2b53>
   13b94:	8ff9                	and	a5,a5,a4
   13b96:	00f41623          	sh	a5,12(s0)
   13b9a:	00042223          	sw	zero,4(s0)
   13b9e:	c010                	sw	a2,0(s0)
   13ba0:	01371793          	slli	a5,a4,0x13
   13ba4:	0007d363          	bgez	a5,13baa <__sflush_r+0xb4>
   13ba8:	c6dd                	beqz	a3,13c56 <__sflush_r+0x160>
   13baa:	580c                	lw	a1,48(s0)
   13bac:	0099a023          	sw	s1,0(s3)
   13bb0:	c9c5                	beqz	a1,13c60 <__sflush_r+0x16a>
   13bb2:	04040793          	addi	a5,s0,64
   13bb6:	00f58563          	beq	a1,a5,13bc0 <__sflush_r+0xca>
   13bba:	854e                	mv	a0,s3
   13bbc:	a4dfd0ef          	jal	11608 <_free_r>
   13bc0:	44d2                	lw	s1,20(sp)
   13bc2:	02042823          	sw	zero,48(s0)
   13bc6:	4501                	li	a0,0
   13bc8:	40f2                	lw	ra,28(sp)
   13bca:	4462                	lw	s0,24(sp)
   13bcc:	49b2                	lw	s3,12(sp)
   13bce:	6105                	addi	sp,sp,32
   13bd0:	8082                	ret
   13bd2:	c84a                	sw	s2,16(sp)
   13bd4:	0105a903          	lw	s2,16(a1)
   13bd8:	04090b63          	beqz	s2,13c2e <__sflush_r+0x138>
   13bdc:	ca26                	sw	s1,20(sp)
   13bde:	4184                	lw	s1,0(a1)
   13be0:	8b0d                	andi	a4,a4,3
   13be2:	0125a023          	sw	s2,0(a1)
   13be6:	412484b3          	sub	s1,s1,s2
   13bea:	4781                	li	a5,0
   13bec:	e311                	bnez	a4,13bf0 <__sflush_r+0xfa>
   13bee:	49dc                	lw	a5,20(a1)
   13bf0:	c41c                	sw	a5,8(s0)
   13bf2:	00904663          	bgtz	s1,13bfe <__sflush_r+0x108>
   13bf6:	a81d                	j	13c2c <__sflush_r+0x136>
   13bf8:	992a                	add	s2,s2,a0
   13bfa:	02905963          	blez	s1,13c2c <__sflush_r+0x136>
   13bfe:	505c                	lw	a5,36(s0)
   13c00:	4c4c                	lw	a1,28(s0)
   13c02:	86a6                	mv	a3,s1
   13c04:	864a                	mv	a2,s2
   13c06:	854e                	mv	a0,s3
   13c08:	9782                	jalr	a5
   13c0a:	8c89                	sub	s1,s1,a0
   13c0c:	fea046e3          	bgtz	a0,13bf8 <__sflush_r+0x102>
   13c10:	00c41703          	lh	a4,12(s0)
   13c14:	4942                	lw	s2,16(sp)
   13c16:	04076713          	ori	a4,a4,64
   13c1a:	44d2                	lw	s1,20(sp)
   13c1c:	00e41623          	sh	a4,12(s0)
   13c20:	557d                	li	a0,-1
   13c22:	b75d                	j	13bc8 <__sflush_r+0xd2>
   13c24:	5dd4                	lw	a3,60(a1)
   13c26:	eed04ce3          	bgtz	a3,13b1e <__sflush_r+0x28>
   13c2a:	bf71                	j	13bc6 <__sflush_r+0xd0>
   13c2c:	44d2                	lw	s1,20(sp)
   13c2e:	4942                	lw	s2,16(sp)
   13c30:	bf59                	j	13bc6 <__sflush_r+0xd0>
   13c32:	4830                	lw	a2,80(s0)
   13c34:	b705                	j	13b54 <__sflush_r+0x5e>
   13c36:	00c41703          	lh	a4,12(s0)
   13c3a:	4814                	lw	a3,16(s0)
   13c3c:	77fd                	lui	a5,0xfffff
   13c3e:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__BSS_END__+0xfffe2b53>
   13c42:	8ff9                	and	a5,a5,a4
   13c44:	00f41623          	sh	a5,12(s0)
   13c48:	00042223          	sw	zero,4(s0)
   13c4c:	c014                	sw	a3,0(s0)
   13c4e:	01371793          	slli	a5,a4,0x13
   13c52:	f407dce3          	bgez	a5,13baa <__sflush_r+0xb4>
   13c56:	580c                	lw	a1,48(s0)
   13c58:	c828                	sw	a0,80(s0)
   13c5a:	0099a023          	sw	s1,0(s3)
   13c5e:	f9b1                	bnez	a1,13bb2 <__sflush_r+0xbc>
   13c60:	44d2                	lw	s1,20(sp)
   13c62:	b795                	j	13bc6 <__sflush_r+0xd0>
   13c64:	0009a783          	lw	a5,0(s3)
   13c68:	ee0781e3          	beqz	a5,13b4a <__sflush_r+0x54>
   13c6c:	4775                	li	a4,29
   13c6e:	00e78a63          	beq	a5,a4,13c82 <__sflush_r+0x18c>
   13c72:	4759                	li	a4,22
   13c74:	00e78763          	beq	a5,a4,13c82 <__sflush_r+0x18c>
   13c78:	00c41703          	lh	a4,12(s0)
   13c7c:	04076713          	ori	a4,a4,64
   13c80:	bf69                	j	13c1a <__sflush_r+0x124>
   13c82:	0099a023          	sw	s1,0(s3)
   13c86:	44d2                	lw	s1,20(sp)
   13c88:	bf3d                	j	13bc6 <__sflush_r+0xd0>

00013c8a <_fflush_r>:
   13c8a:	1101                	addi	sp,sp,-32
   13c8c:	cc22                	sw	s0,24(sp)
   13c8e:	ce06                	sw	ra,28(sp)
   13c90:	842a                	mv	s0,a0
   13c92:	c119                	beqz	a0,13c98 <_fflush_r+0xe>
   13c94:	595c                	lw	a5,52(a0)
   13c96:	cf91                	beqz	a5,13cb2 <_fflush_r+0x28>
   13c98:	00c59783          	lh	a5,12(a1)
   13c9c:	e791                	bnez	a5,13ca8 <_fflush_r+0x1e>
   13c9e:	40f2                	lw	ra,28(sp)
   13ca0:	4462                	lw	s0,24(sp)
   13ca2:	4501                	li	a0,0
   13ca4:	6105                	addi	sp,sp,32
   13ca6:	8082                	ret
   13ca8:	8522                	mv	a0,s0
   13caa:	4462                	lw	s0,24(sp)
   13cac:	40f2                	lw	ra,28(sp)
   13cae:	6105                	addi	sp,sp,32
   13cb0:	b599                	j	13af6 <__sflush_r>
   13cb2:	c62e                	sw	a1,12(sp)
   13cb4:	a28fd0ef          	jal	10edc <__sinit>
   13cb8:	45b2                	lw	a1,12(sp)
   13cba:	bff9                	j	13c98 <_fflush_r+0xe>

00013cbc <fflush>:
   13cbc:	cd05                	beqz	a0,13cf4 <fflush+0x38>
   13cbe:	85aa                	mv	a1,a0
   13cc0:	f141a503          	lw	a0,-236(gp) # 1c974 <_impure_ptr>
   13cc4:	c119                	beqz	a0,13cca <fflush+0xe>
   13cc6:	595c                	lw	a5,52(a0)
   13cc8:	c799                	beqz	a5,13cd6 <fflush+0x1a>
   13cca:	00c59783          	lh	a5,12(a1)
   13cce:	e399                	bnez	a5,13cd4 <fflush+0x18>
   13cd0:	4501                	li	a0,0
   13cd2:	8082                	ret
   13cd4:	b50d                	j	13af6 <__sflush_r>
   13cd6:	1101                	addi	sp,sp,-32
   13cd8:	c62e                	sw	a1,12(sp)
   13cda:	c42a                	sw	a0,8(sp)
   13cdc:	ce06                	sw	ra,28(sp)
   13cde:	9fefd0ef          	jal	10edc <__sinit>
   13ce2:	45b2                	lw	a1,12(sp)
   13ce4:	4522                	lw	a0,8(sp)
   13ce6:	00c59783          	lh	a5,12(a1)
   13cea:	e385                	bnez	a5,13d0a <fflush+0x4e>
   13cec:	40f2                	lw	ra,28(sp)
   13cee:	4501                	li	a0,0
   13cf0:	6105                	addi	sp,sp,32
   13cf2:	8082                	ret
   13cf4:	6671                	lui	a2,0x1c
   13cf6:	65d1                	lui	a1,0x14
   13cf8:	6571                	lui	a0,0x1c
   13cfa:	26060613          	addi	a2,a2,608 # 1c260 <__sglue>
   13cfe:	c8a58593          	addi	a1,a1,-886 # 13c8a <_fflush_r>
   13d02:	27050513          	addi	a0,a0,624 # 1c270 <_impure_data>
   13d06:	a10fd06f          	j	10f16 <_fwalk_sglue>
   13d0a:	40f2                	lw	ra,28(sp)
   13d0c:	6105                	addi	sp,sp,32
   13d0e:	b3e5                	j	13af6 <__sflush_r>

00013d10 <__sfvwrite_r>:
   13d10:	461c                	lw	a5,8(a2)
   13d12:	1c078c63          	beqz	a5,13eea <__sfvwrite_r+0x1da>
   13d16:	00c59683          	lh	a3,12(a1)
   13d1a:	7179                	addi	sp,sp,-48
   13d1c:	d422                	sw	s0,40(sp)
   13d1e:	cc52                	sw	s4,24(sp)
   13d20:	c85a                	sw	s6,16(sp)
   13d22:	d606                	sw	ra,44(sp)
   13d24:	0086f793          	andi	a5,a3,8
   13d28:	8b32                	mv	s6,a2
   13d2a:	8a2a                	mv	s4,a0
   13d2c:	842e                	mv	s0,a1
   13d2e:	c7ad                	beqz	a5,13d98 <__sfvwrite_r+0x88>
   13d30:	499c                	lw	a5,16(a1)
   13d32:	c3bd                	beqz	a5,13d98 <__sfvwrite_r+0x88>
   13d34:	d226                	sw	s1,36(sp)
   13d36:	d04a                	sw	s2,32(sp)
   13d38:	ce4e                	sw	s3,28(sp)
   13d3a:	ca56                	sw	s5,20(sp)
   13d3c:	0026f793          	andi	a5,a3,2
   13d40:	000b2483          	lw	s1,0(s6)
   13d44:	cbb5                	beqz	a5,13db8 <__sfvwrite_r+0xa8>
   13d46:	505c                	lw	a5,36(s0)
   13d48:	4c4c                	lw	a1,28(s0)
   13d4a:	80000ab7          	lui	s5,0x80000
   13d4e:	4981                	li	s3,0
   13d50:	4901                	li	s2,0
   13d52:	c00a8a93          	addi	s5,s5,-1024 # 7ffffc00 <__BSS_END__+0x7ffe2f54>
   13d56:	864e                	mv	a2,s3
   13d58:	8552                	mv	a0,s4
   13d5a:	02090963          	beqz	s2,13d8c <__sfvwrite_r+0x7c>
   13d5e:	86ca                	mv	a3,s2
   13d60:	012af363          	bgeu	s5,s2,13d66 <__sfvwrite_r+0x56>
   13d64:	86d6                	mv	a3,s5
   13d66:	9782                	jalr	a5
   13d68:	2ca05e63          	blez	a0,14044 <__sfvwrite_r+0x334>
   13d6c:	008b2783          	lw	a5,8(s6)
   13d70:	99aa                	add	s3,s3,a0
   13d72:	40a90933          	sub	s2,s2,a0
   13d76:	8f89                	sub	a5,a5,a0
   13d78:	00fb2423          	sw	a5,8(s6)
   13d7c:	12078563          	beqz	a5,13ea6 <__sfvwrite_r+0x196>
   13d80:	505c                	lw	a5,36(s0)
   13d82:	4c4c                	lw	a1,28(s0)
   13d84:	864e                	mv	a2,s3
   13d86:	8552                	mv	a0,s4
   13d88:	fc091be3          	bnez	s2,13d5e <__sfvwrite_r+0x4e>
   13d8c:	0004a983          	lw	s3,0(s1)
   13d90:	0044a903          	lw	s2,4(s1)
   13d94:	04a1                	addi	s1,s1,8
   13d96:	b7c1                	j	13d56 <__sfvwrite_r+0x46>
   13d98:	85a2                	mv	a1,s0
   13d9a:	8552                	mv	a0,s4
   13d9c:	21b5                	jal	14208 <__swsetup_r>
   13d9e:	12051f63          	bnez	a0,13edc <__sfvwrite_r+0x1cc>
   13da2:	00c41683          	lh	a3,12(s0)
   13da6:	d226                	sw	s1,36(sp)
   13da8:	d04a                	sw	s2,32(sp)
   13daa:	ce4e                	sw	s3,28(sp)
   13dac:	ca56                	sw	s5,20(sp)
   13dae:	0026f793          	andi	a5,a3,2
   13db2:	000b2483          	lw	s1,0(s6)
   13db6:	fbc1                	bnez	a5,13d46 <__sfvwrite_r+0x36>
   13db8:	c65e                	sw	s7,12(sp)
   13dba:	c462                	sw	s8,8(sp)
   13dbc:	0016f793          	andi	a5,a3,1
   13dc0:	12079763          	bnez	a5,13eee <__sfvwrite_r+0x1de>
   13dc4:	401c                	lw	a5,0(s0)
   13dc6:	4418                	lw	a4,8(s0)
   13dc8:	80000ab7          	lui	s5,0x80000
   13dcc:	c266                	sw	s9,4(sp)
   13dce:	4b81                	li	s7,0
   13dd0:	4981                	li	s3,0
   13dd2:	1afd                	addi	s5,s5,-1 # 7fffffff <__BSS_END__+0x7ffe3353>
   13dd4:	853e                	mv	a0,a5
   13dd6:	8c3a                	mv	s8,a4
   13dd8:	0a098e63          	beqz	s3,13e94 <__sfvwrite_r+0x184>
   13ddc:	2006f613          	andi	a2,a3,512
   13de0:	1a060663          	beqz	a2,13f8c <__sfvwrite_r+0x27c>
   13de4:	8cba                	mv	s9,a4
   13de6:	20e9e763          	bltu	s3,a4,13ff4 <__sfvwrite_r+0x2e4>
   13dea:	4806f713          	andi	a4,a3,1152
   13dee:	c73d                	beqz	a4,13e5c <__sfvwrite_r+0x14c>
   13df0:	4850                	lw	a2,20(s0)
   13df2:	480c                	lw	a1,16(s0)
   13df4:	00161713          	slli	a4,a2,0x1
   13df8:	9732                	add	a4,a4,a2
   13dfa:	40b78933          	sub	s2,a5,a1
   13dfe:	01f75c13          	srli	s8,a4,0x1f
   13e02:	9c3a                	add	s8,s8,a4
   13e04:	00190793          	addi	a5,s2,1
   13e08:	401c5c13          	srai	s8,s8,0x1
   13e0c:	97ce                	add	a5,a5,s3
   13e0e:	8662                	mv	a2,s8
   13e10:	00fc7463          	bgeu	s8,a5,13e18 <__sfvwrite_r+0x108>
   13e14:	8c3e                	mv	s8,a5
   13e16:	863e                	mv	a2,a5
   13e18:	4006f693          	andi	a3,a3,1024
   13e1c:	1e068b63          	beqz	a3,14012 <__sfvwrite_r+0x302>
   13e20:	85b2                	mv	a1,a2
   13e22:	8552                	mv	a0,s4
   13e24:	a07fd0ef          	jal	1182a <_malloc_r>
   13e28:	8caa                	mv	s9,a0
   13e2a:	22050063          	beqz	a0,1404a <__sfvwrite_r+0x33a>
   13e2e:	480c                	lw	a1,16(s0)
   13e30:	864a                	mv	a2,s2
   13e32:	2701                	jal	14532 <memcpy>
   13e34:	00c45783          	lhu	a5,12(s0)
   13e38:	b7f7f793          	andi	a5,a5,-1153
   13e3c:	0807e793          	ori	a5,a5,128
   13e40:	00f41623          	sh	a5,12(s0)
   13e44:	012c8533          	add	a0,s9,s2
   13e48:	412c07b3          	sub	a5,s8,s2
   13e4c:	01942823          	sw	s9,16(s0)
   13e50:	01842a23          	sw	s8,20(s0)
   13e54:	c008                	sw	a0,0(s0)
   13e56:	8c4e                	mv	s8,s3
   13e58:	c41c                	sw	a5,8(s0)
   13e5a:	8cce                	mv	s9,s3
   13e5c:	8666                	mv	a2,s9
   13e5e:	85de                	mv	a1,s7
   13e60:	2519                	jal	14466 <memmove>
   13e62:	4418                	lw	a4,8(s0)
   13e64:	401c                	lw	a5,0(s0)
   13e66:	894e                	mv	s2,s3
   13e68:	41870733          	sub	a4,a4,s8
   13e6c:	97e6                	add	a5,a5,s9
   13e6e:	c418                	sw	a4,8(s0)
   13e70:	c01c                	sw	a5,0(s0)
   13e72:	4981                	li	s3,0
   13e74:	008b2783          	lw	a5,8(s6)
   13e78:	9bca                	add	s7,s7,s2
   13e7a:	412787b3          	sub	a5,a5,s2
   13e7e:	00fb2423          	sw	a5,8(s6)
   13e82:	cf99                	beqz	a5,13ea0 <__sfvwrite_r+0x190>
   13e84:	401c                	lw	a5,0(s0)
   13e86:	4418                	lw	a4,8(s0)
   13e88:	00c41683          	lh	a3,12(s0)
   13e8c:	853e                	mv	a0,a5
   13e8e:	8c3a                	mv	s8,a4
   13e90:	f40996e3          	bnez	s3,13ddc <__sfvwrite_r+0xcc>
   13e94:	0004ab83          	lw	s7,0(s1)
   13e98:	0044a983          	lw	s3,4(s1)
   13e9c:	04a1                	addi	s1,s1,8
   13e9e:	bf1d                	j	13dd4 <__sfvwrite_r+0xc4>
   13ea0:	4bb2                	lw	s7,12(sp)
   13ea2:	4c22                	lw	s8,8(sp)
   13ea4:	4c92                	lw	s9,4(sp)
   13ea6:	50b2                	lw	ra,44(sp)
   13ea8:	5422                	lw	s0,40(sp)
   13eaa:	5492                	lw	s1,36(sp)
   13eac:	5902                	lw	s2,32(sp)
   13eae:	49f2                	lw	s3,28(sp)
   13eb0:	4ad2                	lw	s5,20(sp)
   13eb2:	4a62                	lw	s4,24(sp)
   13eb4:	4b42                	lw	s6,16(sp)
   13eb6:	4501                	li	a0,0
   13eb8:	6145                	addi	sp,sp,48
   13eba:	8082                	ret
   13ebc:	85a2                	mv	a1,s0
   13ebe:	8552                	mv	a0,s4
   13ec0:	33e9                	jal	13c8a <_fflush_r>
   13ec2:	c93d                	beqz	a0,13f38 <__sfvwrite_r+0x228>
   13ec4:	00c41783          	lh	a5,12(s0)
   13ec8:	4bb2                	lw	s7,12(sp)
   13eca:	4c22                	lw	s8,8(sp)
   13ecc:	5492                	lw	s1,36(sp)
   13ece:	5902                	lw	s2,32(sp)
   13ed0:	49f2                	lw	s3,28(sp)
   13ed2:	4ad2                	lw	s5,20(sp)
   13ed4:	0407e793          	ori	a5,a5,64
   13ed8:	00f41623          	sh	a5,12(s0)
   13edc:	50b2                	lw	ra,44(sp)
   13ede:	5422                	lw	s0,40(sp)
   13ee0:	4a62                	lw	s4,24(sp)
   13ee2:	4b42                	lw	s6,16(sp)
   13ee4:	557d                	li	a0,-1
   13ee6:	6145                	addi	sp,sp,48
   13ee8:	8082                	ret
   13eea:	4501                	li	a0,0
   13eec:	8082                	ret
   13eee:	4a81                	li	s5,0
   13ef0:	4501                	li	a0,0
   13ef2:	4c01                	li	s8,0
   13ef4:	4981                	li	s3,0
   13ef6:	04098e63          	beqz	s3,13f52 <__sfvwrite_r+0x242>
   13efa:	c525                	beqz	a0,13f62 <__sfvwrite_r+0x252>
   13efc:	87d6                	mv	a5,s5
   13efe:	8bce                	mv	s7,s3
   13f00:	0137f363          	bgeu	a5,s3,13f06 <__sfvwrite_r+0x1f6>
   13f04:	8bbe                	mv	s7,a5
   13f06:	4008                	lw	a0,0(s0)
   13f08:	481c                	lw	a5,16(s0)
   13f0a:	00842903          	lw	s2,8(s0)
   13f0e:	4854                	lw	a3,20(s0)
   13f10:	00a7f563          	bgeu	a5,a0,13f1a <__sfvwrite_r+0x20a>
   13f14:	9936                	add	s2,s2,a3
   13f16:	05794f63          	blt	s2,s7,13f74 <__sfvwrite_r+0x264>
   13f1a:	0edbc063          	blt	s7,a3,13ffa <__sfvwrite_r+0x2ea>
   13f1e:	505c                	lw	a5,36(s0)
   13f20:	4c4c                	lw	a1,28(s0)
   13f22:	8662                	mv	a2,s8
   13f24:	8552                	mv	a0,s4
   13f26:	9782                	jalr	a5
   13f28:	892a                	mv	s2,a0
   13f2a:	f8a05de3          	blez	a0,13ec4 <__sfvwrite_r+0x1b4>
   13f2e:	412a8ab3          	sub	s5,s5,s2
   13f32:	4505                	li	a0,1
   13f34:	f80a84e3          	beqz	s5,13ebc <__sfvwrite_r+0x1ac>
   13f38:	008b2783          	lw	a5,8(s6)
   13f3c:	9c4a                	add	s8,s8,s2
   13f3e:	412989b3          	sub	s3,s3,s2
   13f42:	412787b3          	sub	a5,a5,s2
   13f46:	00fb2423          	sw	a5,8(s6)
   13f4a:	f7d5                	bnez	a5,13ef6 <__sfvwrite_r+0x1e6>
   13f4c:	4bb2                	lw	s7,12(sp)
   13f4e:	4c22                	lw	s8,8(sp)
   13f50:	bf99                	j	13ea6 <__sfvwrite_r+0x196>
   13f52:	0044a983          	lw	s3,4(s1)
   13f56:	87a6                	mv	a5,s1
   13f58:	04a1                	addi	s1,s1,8
   13f5a:	fe098ce3          	beqz	s3,13f52 <__sfvwrite_r+0x242>
   13f5e:	0007ac03          	lw	s8,0(a5)
   13f62:	864e                	mv	a2,s3
   13f64:	45a9                	li	a1,10
   13f66:	8562                	mv	a0,s8
   13f68:	2ead                	jal	142e2 <memchr>
   13f6a:	c969                	beqz	a0,1403c <__sfvwrite_r+0x32c>
   13f6c:	0505                	addi	a0,a0,1
   13f6e:	41850ab3          	sub	s5,a0,s8
   13f72:	b769                	j	13efc <__sfvwrite_r+0x1ec>
   13f74:	85e2                	mv	a1,s8
   13f76:	864a                	mv	a2,s2
   13f78:	21fd                	jal	14466 <memmove>
   13f7a:	401c                	lw	a5,0(s0)
   13f7c:	85a2                	mv	a1,s0
   13f7e:	8552                	mv	a0,s4
   13f80:	97ca                	add	a5,a5,s2
   13f82:	c01c                	sw	a5,0(s0)
   13f84:	d07ff0ef          	jal	13c8a <_fflush_r>
   13f88:	d15d                	beqz	a0,13f2e <__sfvwrite_r+0x21e>
   13f8a:	bf2d                	j	13ec4 <__sfvwrite_r+0x1b4>
   13f8c:	4814                	lw	a3,16(s0)
   13f8e:	02f6e863          	bltu	a3,a5,13fbe <__sfvwrite_r+0x2ae>
   13f92:	4850                	lw	a2,20(s0)
   13f94:	02c9e563          	bltu	s3,a2,13fbe <__sfvwrite_r+0x2ae>
   13f98:	87ce                	mv	a5,s3
   13f9a:	013af363          	bgeu	s5,s3,13fa0 <__sfvwrite_r+0x290>
   13f9e:	87d6                	mv	a5,s5
   13fa0:	02c7e6b3          	rem	a3,a5,a2
   13fa4:	5058                	lw	a4,36(s0)
   13fa6:	4c4c                	lw	a1,28(s0)
   13fa8:	865e                	mv	a2,s7
   13faa:	8552                	mv	a0,s4
   13fac:	40d786b3          	sub	a3,a5,a3
   13fb0:	9702                	jalr	a4
   13fb2:	892a                	mv	s2,a0
   13fb4:	02a05a63          	blez	a0,13fe8 <__sfvwrite_r+0x2d8>
   13fb8:	412989b3          	sub	s3,s3,s2
   13fbc:	bd65                	j	13e74 <__sfvwrite_r+0x164>
   13fbe:	893a                	mv	s2,a4
   13fc0:	00e9f363          	bgeu	s3,a4,13fc6 <__sfvwrite_r+0x2b6>
   13fc4:	894e                	mv	s2,s3
   13fc6:	853e                	mv	a0,a5
   13fc8:	864a                	mv	a2,s2
   13fca:	85de                	mv	a1,s7
   13fcc:	2969                	jal	14466 <memmove>
   13fce:	4418                	lw	a4,8(s0)
   13fd0:	401c                	lw	a5,0(s0)
   13fd2:	41270733          	sub	a4,a4,s2
   13fd6:	97ca                	add	a5,a5,s2
   13fd8:	c418                	sw	a4,8(s0)
   13fda:	c01c                	sw	a5,0(s0)
   13fdc:	ff71                	bnez	a4,13fb8 <__sfvwrite_r+0x2a8>
   13fde:	85a2                	mv	a1,s0
   13fe0:	8552                	mv	a0,s4
   13fe2:	ca9ff0ef          	jal	13c8a <_fflush_r>
   13fe6:	d969                	beqz	a0,13fb8 <__sfvwrite_r+0x2a8>
   13fe8:	00c41783          	lh	a5,12(s0)
   13fec:	4bb2                	lw	s7,12(sp)
   13fee:	4c22                	lw	s8,8(sp)
   13ff0:	4c92                	lw	s9,4(sp)
   13ff2:	bde9                	j	13ecc <__sfvwrite_r+0x1bc>
   13ff4:	8c4e                	mv	s8,s3
   13ff6:	8cce                	mv	s9,s3
   13ff8:	b595                	j	13e5c <__sfvwrite_r+0x14c>
   13ffa:	865e                	mv	a2,s7
   13ffc:	85e2                	mv	a1,s8
   13ffe:	21a5                	jal	14466 <memmove>
   14000:	4418                	lw	a4,8(s0)
   14002:	401c                	lw	a5,0(s0)
   14004:	895e                	mv	s2,s7
   14006:	41770733          	sub	a4,a4,s7
   1400a:	97de                	add	a5,a5,s7
   1400c:	c418                	sw	a4,8(s0)
   1400e:	c01c                	sw	a5,0(s0)
   14010:	bf39                	j	13f2e <__sfvwrite_r+0x21e>
   14012:	8552                	mv	a0,s4
   14014:	117020ef          	jal	1692a <_realloc_r>
   14018:	8caa                	mv	s9,a0
   1401a:	e20515e3          	bnez	a0,13e44 <__sfvwrite_r+0x134>
   1401e:	480c                	lw	a1,16(s0)
   14020:	8552                	mv	a0,s4
   14022:	de6fd0ef          	jal	11608 <_free_r>
   14026:	00c41783          	lh	a5,12(s0)
   1402a:	4731                	li	a4,12
   1402c:	4bb2                	lw	s7,12(sp)
   1402e:	4c22                	lw	s8,8(sp)
   14030:	4c92                	lw	s9,4(sp)
   14032:	00ea2023          	sw	a4,0(s4)
   14036:	f7f7f793          	andi	a5,a5,-129
   1403a:	bd49                	j	13ecc <__sfvwrite_r+0x1bc>
   1403c:	00198793          	addi	a5,s3,1
   14040:	8abe                	mv	s5,a5
   14042:	bd75                	j	13efe <__sfvwrite_r+0x1ee>
   14044:	00c41783          	lh	a5,12(s0)
   14048:	b551                	j	13ecc <__sfvwrite_r+0x1bc>
   1404a:	4731                	li	a4,12
   1404c:	00c41783          	lh	a5,12(s0)
   14050:	4bb2                	lw	s7,12(sp)
   14052:	4c22                	lw	s8,8(sp)
   14054:	4c92                	lw	s9,4(sp)
   14056:	00ea2023          	sw	a4,0(s4)
   1405a:	bd8d                	j	13ecc <__sfvwrite_r+0x1bc>

0001405c <_putc_r>:
   1405c:	1101                	addi	sp,sp,-32
   1405e:	cc22                	sw	s0,24(sp)
   14060:	ce06                	sw	ra,28(sp)
   14062:	842a                	mv	s0,a0
   14064:	c119                	beqz	a0,1406a <_putc_r+0xe>
   14066:	595c                	lw	a5,52(a0)
   14068:	cf9d                	beqz	a5,140a6 <_putc_r+0x4a>
   1406a:	461c                	lw	a5,8(a2)
   1406c:	17fd                	addi	a5,a5,-1
   1406e:	c61c                	sw	a5,8(a2)
   14070:	0007da63          	bgez	a5,14084 <_putc_r+0x28>
   14074:	4e18                	lw	a4,24(a2)
   14076:	02e7c363          	blt	a5,a4,1409c <_putc_r+0x40>
   1407a:	0ff5f793          	zext.b	a5,a1
   1407e:	4729                	li	a4,10
   14080:	00e78e63          	beq	a5,a4,1409c <_putc_r+0x40>
   14084:	421c                	lw	a5,0(a2)
   14086:	0ff5f513          	zext.b	a0,a1
   1408a:	00178713          	addi	a4,a5,1
   1408e:	c218                	sw	a4,0(a2)
   14090:	00b78023          	sb	a1,0(a5)
   14094:	40f2                	lw	ra,28(sp)
   14096:	4462                	lw	s0,24(sp)
   14098:	6105                	addi	sp,sp,32
   1409a:	8082                	ret
   1409c:	8522                	mv	a0,s0
   1409e:	4462                	lw	s0,24(sp)
   140a0:	40f2                	lw	ra,28(sp)
   140a2:	6105                	addi	sp,sp,32
   140a4:	a8a5                	j	1411c <__swbuf_r>
   140a6:	c632                	sw	a2,12(sp)
   140a8:	c42e                	sw	a1,8(sp)
   140aa:	e33fc0ef          	jal	10edc <__sinit>
   140ae:	4632                	lw	a2,12(sp)
   140b0:	45a2                	lw	a1,8(sp)
   140b2:	bf65                	j	1406a <_putc_r+0xe>

000140b4 <putc>:
   140b4:	1101                	addi	sp,sp,-32
   140b6:	ca4a                	sw	s2,20(sp)
   140b8:	f141a903          	lw	s2,-236(gp) # 1c974 <_impure_ptr>
   140bc:	cc26                	sw	s1,24(sp)
   140be:	ce06                	sw	ra,28(sp)
   140c0:	84aa                	mv	s1,a0
   140c2:	00090563          	beqz	s2,140cc <putc+0x18>
   140c6:	03492783          	lw	a5,52(s2)
   140ca:	c3b9                	beqz	a5,14110 <putc+0x5c>
   140cc:	459c                	lw	a5,8(a1)
   140ce:	17fd                	addi	a5,a5,-1
   140d0:	c59c                	sw	a5,8(a1)
   140d2:	0007da63          	bgez	a5,140e6 <putc+0x32>
   140d6:	4d98                	lw	a4,24(a1)
   140d8:	02e7c463          	blt	a5,a4,14100 <putc+0x4c>
   140dc:	0ff4f793          	zext.b	a5,s1
   140e0:	4729                	li	a4,10
   140e2:	00e78f63          	beq	a5,a4,14100 <putc+0x4c>
   140e6:	419c                	lw	a5,0(a1)
   140e8:	0ff4f513          	zext.b	a0,s1
   140ec:	00178713          	addi	a4,a5,1
   140f0:	c198                	sw	a4,0(a1)
   140f2:	00978023          	sb	s1,0(a5)
   140f6:	40f2                	lw	ra,28(sp)
   140f8:	44e2                	lw	s1,24(sp)
   140fa:	4952                	lw	s2,20(sp)
   140fc:	6105                	addi	sp,sp,32
   140fe:	8082                	ret
   14100:	40f2                	lw	ra,28(sp)
   14102:	862e                	mv	a2,a1
   14104:	854a                	mv	a0,s2
   14106:	85a6                	mv	a1,s1
   14108:	4952                	lw	s2,20(sp)
   1410a:	44e2                	lw	s1,24(sp)
   1410c:	6105                	addi	sp,sp,32
   1410e:	a039                	j	1411c <__swbuf_r>
   14110:	854a                	mv	a0,s2
   14112:	c62e                	sw	a1,12(sp)
   14114:	dc9fc0ef          	jal	10edc <__sinit>
   14118:	45b2                	lw	a1,12(sp)
   1411a:	bf4d                	j	140cc <putc+0x18>

0001411c <__swbuf_r>:
   1411c:	1101                	addi	sp,sp,-32
   1411e:	cc22                	sw	s0,24(sp)
   14120:	ca26                	sw	s1,20(sp)
   14122:	c84a                	sw	s2,16(sp)
   14124:	ce06                	sw	ra,28(sp)
   14126:	892a                	mv	s2,a0
   14128:	84ae                	mv	s1,a1
   1412a:	8432                	mv	s0,a2
   1412c:	c119                	beqz	a0,14132 <__swbuf_r+0x16>
   1412e:	595c                	lw	a5,52(a0)
   14130:	c3f9                	beqz	a5,141f6 <__swbuf_r+0xda>
   14132:	4c18                	lw	a4,24(s0)
   14134:	00c41783          	lh	a5,12(s0)
   14138:	c418                	sw	a4,8(s0)
   1413a:	0087f713          	andi	a4,a5,8
   1413e:	c325                	beqz	a4,1419e <__swbuf_r+0x82>
   14140:	4818                	lw	a4,16(s0)
   14142:	cf31                	beqz	a4,1419e <__swbuf_r+0x82>
   14144:	c64e                	sw	s3,12(sp)
   14146:	01279693          	slli	a3,a5,0x12
   1414a:	0ff4f993          	zext.b	s3,s1
   1414e:	5078                	lw	a4,100(s0)
   14150:	0ff4f493          	zext.b	s1,s1
   14154:	0606d563          	bgez	a3,141be <__swbuf_r+0xa2>
   14158:	01271793          	slli	a5,a4,0x12
   1415c:	0807c263          	bltz	a5,141e0 <__swbuf_r+0xc4>
   14160:	4018                	lw	a4,0(s0)
   14162:	481c                	lw	a5,16(s0)
   14164:	4854                	lw	a3,20(s0)
   14166:	40f707b3          	sub	a5,a4,a5
   1416a:	06d7de63          	bge	a5,a3,141e6 <__swbuf_r+0xca>
   1416e:	0785                	addi	a5,a5,1
   14170:	4414                	lw	a3,8(s0)
   14172:	00170613          	addi	a2,a4,1
   14176:	c010                	sw	a2,0(s0)
   14178:	16fd                	addi	a3,a3,-1
   1417a:	c414                	sw	a3,8(s0)
   1417c:	01370023          	sb	s3,0(a4)
   14180:	4858                	lw	a4,20(s0)
   14182:	04f70a63          	beq	a4,a5,141d6 <__swbuf_r+0xba>
   14186:	00c45783          	lhu	a5,12(s0)
   1418a:	8b85                	andi	a5,a5,1
   1418c:	e3b1                	bnez	a5,141d0 <__swbuf_r+0xb4>
   1418e:	49b2                	lw	s3,12(sp)
   14190:	40f2                	lw	ra,28(sp)
   14192:	4462                	lw	s0,24(sp)
   14194:	4942                	lw	s2,16(sp)
   14196:	8526                	mv	a0,s1
   14198:	44d2                	lw	s1,20(sp)
   1419a:	6105                	addi	sp,sp,32
   1419c:	8082                	ret
   1419e:	85a2                	mv	a1,s0
   141a0:	854a                	mv	a0,s2
   141a2:	209d                	jal	14208 <__swsetup_r>
   141a4:	ed1d                	bnez	a0,141e2 <__swbuf_r+0xc6>
   141a6:	00c41783          	lh	a5,12(s0)
   141aa:	c64e                	sw	s3,12(sp)
   141ac:	5078                	lw	a4,100(s0)
   141ae:	01279693          	slli	a3,a5,0x12
   141b2:	0ff4f993          	zext.b	s3,s1
   141b6:	0ff4f493          	zext.b	s1,s1
   141ba:	f806cfe3          	bltz	a3,14158 <__swbuf_r+0x3c>
   141be:	76f9                	lui	a3,0xffffe
   141c0:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe1353>
   141c2:	6609                	lui	a2,0x2
   141c4:	8fd1                	or	a5,a5,a2
   141c6:	8f75                	and	a4,a4,a3
   141c8:	00f41623          	sh	a5,12(s0)
   141cc:	d078                	sw	a4,100(s0)
   141ce:	b769                	j	14158 <__swbuf_r+0x3c>
   141d0:	47a9                	li	a5,10
   141d2:	faf49ee3          	bne	s1,a5,1418e <__swbuf_r+0x72>
   141d6:	85a2                	mv	a1,s0
   141d8:	854a                	mv	a0,s2
   141da:	ab1ff0ef          	jal	13c8a <_fflush_r>
   141de:	d945                	beqz	a0,1418e <__swbuf_r+0x72>
   141e0:	49b2                	lw	s3,12(sp)
   141e2:	54fd                	li	s1,-1
   141e4:	b775                	j	14190 <__swbuf_r+0x74>
   141e6:	85a2                	mv	a1,s0
   141e8:	854a                	mv	a0,s2
   141ea:	aa1ff0ef          	jal	13c8a <_fflush_r>
   141ee:	f96d                	bnez	a0,141e0 <__swbuf_r+0xc4>
   141f0:	4018                	lw	a4,0(s0)
   141f2:	4785                	li	a5,1
   141f4:	bfb5                	j	14170 <__swbuf_r+0x54>
   141f6:	ce7fc0ef          	jal	10edc <__sinit>
   141fa:	bf25                	j	14132 <__swbuf_r+0x16>

000141fc <__swbuf>:
   141fc:	87aa                	mv	a5,a0
   141fe:	f141a503          	lw	a0,-236(gp) # 1c974 <_impure_ptr>
   14202:	862e                	mv	a2,a1
   14204:	85be                	mv	a1,a5
   14206:	bf19                	j	1411c <__swbuf_r>

00014208 <__swsetup_r>:
   14208:	f141a783          	lw	a5,-236(gp) # 1c974 <_impure_ptr>
   1420c:	1141                	addi	sp,sp,-16
   1420e:	c422                	sw	s0,8(sp)
   14210:	c226                	sw	s1,4(sp)
   14212:	c606                	sw	ra,12(sp)
   14214:	84aa                	mv	s1,a0
   14216:	842e                	mv	s0,a1
   14218:	c399                	beqz	a5,1421e <__swsetup_r+0x16>
   1421a:	5bd8                	lw	a4,52(a5)
   1421c:	c75d                	beqz	a4,142ca <__swsetup_r+0xc2>
   1421e:	00c41783          	lh	a5,12(s0)
   14222:	0087f713          	andi	a4,a5,8
   14226:	c721                	beqz	a4,1426e <__swsetup_r+0x66>
   14228:	4818                	lw	a4,16(s0)
   1422a:	cf31                	beqz	a4,14286 <__swsetup_r+0x7e>
   1422c:	0017f693          	andi	a3,a5,1
   14230:	ce91                	beqz	a3,1424c <__swsetup_r+0x44>
   14232:	4854                	lw	a3,20(s0)
   14234:	00042423          	sw	zero,8(s0)
   14238:	4501                	li	a0,0
   1423a:	40d006b3          	neg	a3,a3
   1423e:	cc14                	sw	a3,24(s0)
   14240:	cf11                	beqz	a4,1425c <__swsetup_r+0x54>
   14242:	40b2                	lw	ra,12(sp)
   14244:	4422                	lw	s0,8(sp)
   14246:	4492                	lw	s1,4(sp)
   14248:	0141                	addi	sp,sp,16
   1424a:	8082                	ret
   1424c:	0027f693          	andi	a3,a5,2
   14250:	4601                	li	a2,0
   14252:	e291                	bnez	a3,14256 <__swsetup_r+0x4e>
   14254:	4850                	lw	a2,20(s0)
   14256:	c410                	sw	a2,8(s0)
   14258:	4501                	li	a0,0
   1425a:	f765                	bnez	a4,14242 <__swsetup_r+0x3a>
   1425c:	0807f713          	andi	a4,a5,128
   14260:	d36d                	beqz	a4,14242 <__swsetup_r+0x3a>
   14262:	0407e793          	ori	a5,a5,64
   14266:	00f41623          	sh	a5,12(s0)
   1426a:	557d                	li	a0,-1
   1426c:	bfd9                	j	14242 <__swsetup_r+0x3a>
   1426e:	0107f713          	andi	a4,a5,16
   14272:	c325                	beqz	a4,142d2 <__swsetup_r+0xca>
   14274:	0047f713          	andi	a4,a5,4
   14278:	e70d                	bnez	a4,142a2 <__swsetup_r+0x9a>
   1427a:	4818                	lw	a4,16(s0)
   1427c:	0087e793          	ori	a5,a5,8
   14280:	00f41623          	sh	a5,12(s0)
   14284:	f745                	bnez	a4,1422c <__swsetup_r+0x24>
   14286:	2807f693          	andi	a3,a5,640
   1428a:	20000613          	li	a2,512
   1428e:	f8c68fe3          	beq	a3,a2,1422c <__swsetup_r+0x24>
   14292:	85a2                	mv	a1,s0
   14294:	8526                	mv	a0,s1
   14296:	26f020ef          	jal	16d04 <__smakebuf_r>
   1429a:	00c41783          	lh	a5,12(s0)
   1429e:	4818                	lw	a4,16(s0)
   142a0:	b771                	j	1422c <__swsetup_r+0x24>
   142a2:	580c                	lw	a1,48(s0)
   142a4:	cd81                	beqz	a1,142bc <__swsetup_r+0xb4>
   142a6:	04040713          	addi	a4,s0,64
   142aa:	00e58763          	beq	a1,a4,142b8 <__swsetup_r+0xb0>
   142ae:	8526                	mv	a0,s1
   142b0:	b58fd0ef          	jal	11608 <_free_r>
   142b4:	00c41783          	lh	a5,12(s0)
   142b8:	02042823          	sw	zero,48(s0)
   142bc:	4818                	lw	a4,16(s0)
   142be:	fdb7f793          	andi	a5,a5,-37
   142c2:	00042223          	sw	zero,4(s0)
   142c6:	c018                	sw	a4,0(s0)
   142c8:	bf55                	j	1427c <__swsetup_r+0x74>
   142ca:	853e                	mv	a0,a5
   142cc:	c11fc0ef          	jal	10edc <__sinit>
   142d0:	b7b9                	j	1421e <__swsetup_r+0x16>
   142d2:	4725                	li	a4,9
   142d4:	c098                	sw	a4,0(s1)
   142d6:	0407e793          	ori	a5,a5,64
   142da:	00f41623          	sh	a5,12(s0)
   142de:	557d                	li	a0,-1
   142e0:	b78d                	j	14242 <__swsetup_r+0x3a>

000142e2 <memchr>:
   142e2:	00357793          	andi	a5,a0,3
   142e6:	0ff5f693          	zext.b	a3,a1
   142ea:	c395                	beqz	a5,1430e <memchr+0x2c>
   142ec:	fff60793          	addi	a5,a2,-1 # 1fff <exit-0xe095>
   142f0:	c605                	beqz	a2,14318 <memchr+0x36>
   142f2:	567d                	li	a2,-1
   142f4:	a801                	j	14304 <memchr+0x22>
   142f6:	0505                	addi	a0,a0,1
   142f8:	00357713          	andi	a4,a0,3
   142fc:	cb11                	beqz	a4,14310 <memchr+0x2e>
   142fe:	17fd                	addi	a5,a5,-1
   14300:	00c78c63          	beq	a5,a2,14318 <memchr+0x36>
   14304:	00054703          	lbu	a4,0(a0)
   14308:	fed717e3          	bne	a4,a3,142f6 <memchr+0x14>
   1430c:	8082                	ret
   1430e:	87b2                	mv	a5,a2
   14310:	470d                	li	a4,3
   14312:	00f76563          	bltu	a4,a5,1431c <memchr+0x3a>
   14316:	e3b9                	bnez	a5,1435c <memchr+0x7a>
   14318:	4501                	li	a0,0
   1431a:	8082                	ret
   1431c:	0ff5f593          	zext.b	a1,a1
   14320:	00859713          	slli	a4,a1,0x8
   14324:	95ba                	add	a1,a1,a4
   14326:	01059713          	slli	a4,a1,0x10
   1432a:	feff08b7          	lui	a7,0xfeff0
   1432e:	80808837          	lui	a6,0x80808
   14332:	95ba                	add	a1,a1,a4
   14334:	eff88893          	addi	a7,a7,-257 # fefefeff <__BSS_END__+0xfefd3253>
   14338:	08080813          	addi	a6,a6,128 # 80808080 <__BSS_END__+0x807eb3d4>
   1433c:	430d                	li	t1,3
   1433e:	a029                	j	14348 <memchr+0x66>
   14340:	17f1                	addi	a5,a5,-4
   14342:	0511                	addi	a0,a0,4
   14344:	fcf379e3          	bgeu	t1,a5,14316 <memchr+0x34>
   14348:	4118                	lw	a4,0(a0)
   1434a:	8f2d                	xor	a4,a4,a1
   1434c:	01170633          	add	a2,a4,a7
   14350:	fff74713          	not	a4,a4
   14354:	8f71                	and	a4,a4,a2
   14356:	01077733          	and	a4,a4,a6
   1435a:	d37d                	beqz	a4,14340 <memchr+0x5e>
   1435c:	97aa                	add	a5,a5,a0
   1435e:	a021                	j	14366 <memchr+0x84>
   14360:	0505                	addi	a0,a0,1
   14362:	faa78be3          	beq	a5,a0,14318 <memchr+0x36>
   14366:	00054703          	lbu	a4,0(a0)
   1436a:	fed71be3          	bne	a4,a3,14360 <memchr+0x7e>
   1436e:	8082                	ret

00014370 <strncpy>:
   14370:	00a5e7b3          	or	a5,a1,a0
   14374:	8b8d                	andi	a5,a5,3
   14376:	e781                	bnez	a5,1437e <strncpy+0xe>
   14378:	478d                	li	a5,3
   1437a:	02c7eb63          	bltu	a5,a2,143b0 <strncpy+0x40>
   1437e:	872a                	mv	a4,a0
   14380:	a811                	j	14394 <strncpy+0x24>
   14382:	fff5c683          	lbu	a3,-1(a1)
   14386:	fff60813          	addi	a6,a2,-1
   1438a:	fed78fa3          	sb	a3,-1(a5)
   1438e:	ca81                	beqz	a3,1439e <strncpy+0x2e>
   14390:	873e                	mv	a4,a5
   14392:	8642                	mv	a2,a6
   14394:	0585                	addi	a1,a1,1
   14396:	00170793          	addi	a5,a4,1
   1439a:	f665                	bnez	a2,14382 <strncpy+0x12>
   1439c:	8082                	ret
   1439e:	9732                	add	a4,a4,a2
   143a0:	04080463          	beqz	a6,143e8 <strncpy+0x78>
   143a4:	0785                	addi	a5,a5,1
   143a6:	fe078fa3          	sb	zero,-1(a5)
   143aa:	fee79de3          	bne	a5,a4,143a4 <strncpy+0x34>
   143ae:	8082                	ret
   143b0:	feff0337          	lui	t1,0xfeff0
   143b4:	808088b7          	lui	a7,0x80808
   143b8:	872a                	mv	a4,a0
   143ba:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefd3253>
   143be:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807eb3d4>
   143c2:	4e0d                	li	t3,3
   143c4:	a039                	j	143d2 <strncpy+0x62>
   143c6:	c314                	sw	a3,0(a4)
   143c8:	1671                	addi	a2,a2,-4
   143ca:	0711                	addi	a4,a4,4
   143cc:	0591                	addi	a1,a1,4
   143ce:	fcce73e3          	bgeu	t3,a2,14394 <strncpy+0x24>
   143d2:	4194                	lw	a3,0(a1)
   143d4:	006687b3          	add	a5,a3,t1
   143d8:	fff6c813          	not	a6,a3
   143dc:	0107f7b3          	and	a5,a5,a6
   143e0:	0117f7b3          	and	a5,a5,a7
   143e4:	d3ed                	beqz	a5,143c6 <strncpy+0x56>
   143e6:	b77d                	j	14394 <strncpy+0x24>
   143e8:	8082                	ret

000143ea <__localeconv_l>:
   143ea:	0f050513          	addi	a0,a0,240
   143ee:	8082                	ret

000143f0 <_localeconv_r>:
   143f0:	e2818513          	addi	a0,gp,-472 # 1c888 <__global_locale+0xf0>
   143f4:	8082                	ret

000143f6 <localeconv>:
   143f6:	e2818513          	addi	a0,gp,-472 # 1c888 <__global_locale+0xf0>
   143fa:	8082                	ret

000143fc <_sbrk_r>:
   143fc:	1141                	addi	sp,sp,-16
   143fe:	c422                	sw	s0,8(sp)
   14400:	c226                	sw	s1,4(sp)
   14402:	842a                	mv	s0,a0
   14404:	852e                	mv	a0,a1
   14406:	c606                	sw	ra,12(sp)
   14408:	f201a223          	sw	zero,-220(gp) # 1c984 <errno>
   1440c:	7fb030ef          	jal	18406 <_sbrk>
   14410:	57fd                	li	a5,-1
   14412:	00f50763          	beq	a0,a5,14420 <_sbrk_r+0x24>
   14416:	40b2                	lw	ra,12(sp)
   14418:	4422                	lw	s0,8(sp)
   1441a:	4492                	lw	s1,4(sp)
   1441c:	0141                	addi	sp,sp,16
   1441e:	8082                	ret
   14420:	f241a783          	lw	a5,-220(gp) # 1c984 <errno>
   14424:	dbed                	beqz	a5,14416 <_sbrk_r+0x1a>
   14426:	40b2                	lw	ra,12(sp)
   14428:	c01c                	sw	a5,0(s0)
   1442a:	4422                	lw	s0,8(sp)
   1442c:	4492                	lw	s1,4(sp)
   1442e:	0141                	addi	sp,sp,16
   14430:	8082                	ret

00014432 <__libc_fini_array>:
   14432:	1141                	addi	sp,sp,-16
   14434:	c422                	sw	s0,8(sp)
   14436:	67f1                	lui	a5,0x1c
   14438:	6471                	lui	s0,0x1c
   1443a:	25c78793          	addi	a5,a5,604 # 1c25c <__do_global_dtors_aux_fini_array_entry>
   1443e:	26040413          	addi	s0,s0,608 # 1c260 <__sglue>
   14442:	8c1d                	sub	s0,s0,a5
   14444:	c226                	sw	s1,4(sp)
   14446:	c606                	sw	ra,12(sp)
   14448:	40245493          	srai	s1,s0,0x2
   1444c:	c881                	beqz	s1,1445c <__libc_fini_array+0x2a>
   1444e:	1471                	addi	s0,s0,-4
   14450:	943e                	add	s0,s0,a5
   14452:	401c                	lw	a5,0(s0)
   14454:	14fd                	addi	s1,s1,-1
   14456:	1471                	addi	s0,s0,-4
   14458:	9782                	jalr	a5
   1445a:	fce5                	bnez	s1,14452 <__libc_fini_array+0x20>
   1445c:	40b2                	lw	ra,12(sp)
   1445e:	4422                	lw	s0,8(sp)
   14460:	4492                	lw	s1,4(sp)
   14462:	0141                	addi	sp,sp,16
   14464:	8082                	ret

00014466 <memmove>:
   14466:	02a5f263          	bgeu	a1,a0,1448a <memmove+0x24>
   1446a:	00c58733          	add	a4,a1,a2
   1446e:	00e57e63          	bgeu	a0,a4,1448a <memmove+0x24>
   14472:	00c507b3          	add	a5,a0,a2
   14476:	ca1d                	beqz	a2,144ac <memmove+0x46>
   14478:	fff74683          	lbu	a3,-1(a4)
   1447c:	17fd                	addi	a5,a5,-1
   1447e:	177d                	addi	a4,a4,-1
   14480:	00d78023          	sb	a3,0(a5)
   14484:	fef51ae3          	bne	a0,a5,14478 <memmove+0x12>
   14488:	8082                	ret
   1448a:	47bd                	li	a5,15
   1448c:	02c7e163          	bltu	a5,a2,144ae <memmove+0x48>
   14490:	87aa                	mv	a5,a0
   14492:	fff60693          	addi	a3,a2,-1
   14496:	ca59                	beqz	a2,1452c <memmove+0xc6>
   14498:	0685                	addi	a3,a3,1
   1449a:	96be                	add	a3,a3,a5
   1449c:	0005c703          	lbu	a4,0(a1)
   144a0:	0785                	addi	a5,a5,1
   144a2:	0585                	addi	a1,a1,1
   144a4:	fee78fa3          	sb	a4,-1(a5)
   144a8:	fed79ae3          	bne	a5,a3,1449c <memmove+0x36>
   144ac:	8082                	ret
   144ae:	00b567b3          	or	a5,a0,a1
   144b2:	8b8d                	andi	a5,a5,3
   144b4:	eba5                	bnez	a5,14524 <memmove+0xbe>
   144b6:	ff060893          	addi	a7,a2,-16
   144ba:	ff08f893          	andi	a7,a7,-16
   144be:	08c1                	addi	a7,a7,16
   144c0:	011506b3          	add	a3,a0,a7
   144c4:	872e                	mv	a4,a1
   144c6:	87aa                	mv	a5,a0
   144c8:	00072803          	lw	a6,0(a4)
   144cc:	0741                	addi	a4,a4,16
   144ce:	07c1                	addi	a5,a5,16
   144d0:	ff07a823          	sw	a6,-16(a5)
   144d4:	ff472803          	lw	a6,-12(a4)
   144d8:	ff07aa23          	sw	a6,-12(a5)
   144dc:	ff872803          	lw	a6,-8(a4)
   144e0:	ff07ac23          	sw	a6,-8(a5)
   144e4:	ffc72803          	lw	a6,-4(a4)
   144e8:	ff07ae23          	sw	a6,-4(a5)
   144ec:	fcd79ee3          	bne	a5,a3,144c8 <memmove+0x62>
   144f0:	00c67813          	andi	a6,a2,12
   144f4:	95c6                	add	a1,a1,a7
   144f6:	00f67713          	andi	a4,a2,15
   144fa:	02080a63          	beqz	a6,1452e <memmove+0xc8>
   144fe:	ffc70813          	addi	a6,a4,-4
   14502:	ffc87813          	andi	a6,a6,-4
   14506:	0811                	addi	a6,a6,4
   14508:	010687b3          	add	a5,a3,a6
   1450c:	872e                	mv	a4,a1
   1450e:	00072883          	lw	a7,0(a4)
   14512:	0691                	addi	a3,a3,4
   14514:	0711                	addi	a4,a4,4
   14516:	ff16ae23          	sw	a7,-4(a3)
   1451a:	fef69ae3          	bne	a3,a5,1450e <memmove+0xa8>
   1451e:	8a0d                	andi	a2,a2,3
   14520:	95c2                	add	a1,a1,a6
   14522:	bf85                	j	14492 <memmove+0x2c>
   14524:	fff60693          	addi	a3,a2,-1
   14528:	87aa                	mv	a5,a0
   1452a:	b7bd                	j	14498 <memmove+0x32>
   1452c:	8082                	ret
   1452e:	863a                	mv	a2,a4
   14530:	b78d                	j	14492 <memmove+0x2c>

00014532 <memcpy>:
   14532:	00a5c7b3          	xor	a5,a1,a0
   14536:	8b8d                	andi	a5,a5,3
   14538:	00c508b3          	add	a7,a0,a2
   1453c:	e7b1                	bnez	a5,14588 <memcpy+0x56>
   1453e:	478d                	li	a5,3
   14540:	04c7f463          	bgeu	a5,a2,14588 <memcpy+0x56>
   14544:	00357793          	andi	a5,a0,3
   14548:	872a                	mv	a4,a0
   1454a:	ebb9                	bnez	a5,145a0 <memcpy+0x6e>
   1454c:	ffc8f613          	andi	a2,a7,-4
   14550:	40e606b3          	sub	a3,a2,a4
   14554:	02000793          	li	a5,32
   14558:	06d7c863          	blt	a5,a3,145c8 <memcpy+0x96>
   1455c:	86ae                	mv	a3,a1
   1455e:	87ba                	mv	a5,a4
   14560:	02c77163          	bgeu	a4,a2,14582 <memcpy+0x50>
   14564:	0006a803          	lw	a6,0(a3)
   14568:	0791                	addi	a5,a5,4
   1456a:	0691                	addi	a3,a3,4
   1456c:	ff07ae23          	sw	a6,-4(a5)
   14570:	fec7eae3          	bltu	a5,a2,14564 <memcpy+0x32>
   14574:	fff60793          	addi	a5,a2,-1
   14578:	8f99                	sub	a5,a5,a4
   1457a:	9bf1                	andi	a5,a5,-4
   1457c:	0791                	addi	a5,a5,4
   1457e:	973e                	add	a4,a4,a5
   14580:	95be                	add	a1,a1,a5
   14582:	01176663          	bltu	a4,a7,1458e <memcpy+0x5c>
   14586:	8082                	ret
   14588:	872a                	mv	a4,a0
   1458a:	03157e63          	bgeu	a0,a7,145c6 <memcpy+0x94>
   1458e:	0005c783          	lbu	a5,0(a1)
   14592:	0705                	addi	a4,a4,1
   14594:	0585                	addi	a1,a1,1
   14596:	fef70fa3          	sb	a5,-1(a4)
   1459a:	fee89ae3          	bne	a7,a4,1458e <memcpy+0x5c>
   1459e:	8082                	ret
   145a0:	0005c683          	lbu	a3,0(a1)
   145a4:	0705                	addi	a4,a4,1
   145a6:	00377793          	andi	a5,a4,3
   145aa:	fed70fa3          	sb	a3,-1(a4)
   145ae:	0585                	addi	a1,a1,1
   145b0:	dfd1                	beqz	a5,1454c <memcpy+0x1a>
   145b2:	0005c683          	lbu	a3,0(a1)
   145b6:	0705                	addi	a4,a4,1
   145b8:	00377793          	andi	a5,a4,3
   145bc:	fed70fa3          	sb	a3,-1(a4)
   145c0:	0585                	addi	a1,a1,1
   145c2:	fff9                	bnez	a5,145a0 <memcpy+0x6e>
   145c4:	b761                	j	1454c <memcpy+0x1a>
   145c6:	8082                	ret
   145c8:	1141                	addi	sp,sp,-16
   145ca:	c622                	sw	s0,12(sp)
   145cc:	02000413          	li	s0,32
   145d0:	0005a383          	lw	t2,0(a1)
   145d4:	0045a283          	lw	t0,4(a1)
   145d8:	0085af83          	lw	t6,8(a1)
   145dc:	00c5af03          	lw	t5,12(a1)
   145e0:	0105ae83          	lw	t4,16(a1)
   145e4:	0145ae03          	lw	t3,20(a1)
   145e8:	0185a303          	lw	t1,24(a1)
   145ec:	01c5a803          	lw	a6,28(a1)
   145f0:	5194                	lw	a3,32(a1)
   145f2:	02470713          	addi	a4,a4,36
   145f6:	40e607b3          	sub	a5,a2,a4
   145fa:	fc772e23          	sw	t2,-36(a4)
   145fe:	fe572023          	sw	t0,-32(a4)
   14602:	fff72223          	sw	t6,-28(a4)
   14606:	ffe72423          	sw	t5,-24(a4)
   1460a:	ffd72623          	sw	t4,-20(a4)
   1460e:	ffc72823          	sw	t3,-16(a4)
   14612:	fe672a23          	sw	t1,-12(a4)
   14616:	ff072c23          	sw	a6,-8(a4)
   1461a:	fed72e23          	sw	a3,-4(a4)
   1461e:	02458593          	addi	a1,a1,36
   14622:	faf447e3          	blt	s0,a5,145d0 <memcpy+0x9e>
   14626:	86ae                	mv	a3,a1
   14628:	87ba                	mv	a5,a4
   1462a:	02c77163          	bgeu	a4,a2,1464c <memcpy+0x11a>
   1462e:	0006a803          	lw	a6,0(a3)
   14632:	0791                	addi	a5,a5,4
   14634:	0691                	addi	a3,a3,4
   14636:	ff07ae23          	sw	a6,-4(a5)
   1463a:	fec7eae3          	bltu	a5,a2,1462e <memcpy+0xfc>
   1463e:	fff60793          	addi	a5,a2,-1
   14642:	8f99                	sub	a5,a5,a4
   14644:	9bf1                	andi	a5,a5,-4
   14646:	0791                	addi	a5,a5,4
   14648:	973e                	add	a4,a4,a5
   1464a:	95be                	add	a1,a1,a5
   1464c:	01176563          	bltu	a4,a7,14656 <memcpy+0x124>
   14650:	4432                	lw	s0,12(sp)
   14652:	0141                	addi	sp,sp,16
   14654:	8082                	ret
   14656:	0005c783          	lbu	a5,0(a1)
   1465a:	0705                	addi	a4,a4,1
   1465c:	0585                	addi	a1,a1,1
   1465e:	fef70fa3          	sb	a5,-1(a4)
   14662:	fee887e3          	beq	a7,a4,14650 <memcpy+0x11e>
   14666:	0005c783          	lbu	a5,0(a1)
   1466a:	0705                	addi	a4,a4,1
   1466c:	0585                	addi	a1,a1,1
   1466e:	fef70fa3          	sb	a5,-1(a4)
   14672:	fee892e3          	bne	a7,a4,14656 <memcpy+0x124>
   14676:	bfe9                	j	14650 <memcpy+0x11e>

00014678 <strlen>:
   14678:	00357793          	andi	a5,a0,3
   1467c:	872a                	mv	a4,a0
   1467e:	ef9d                	bnez	a5,146bc <strlen+0x44>
   14680:	7f7f86b7          	lui	a3,0x7f7f8
   14684:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7db2d3>
   14688:	55fd                	li	a1,-1
   1468a:	4310                	lw	a2,0(a4)
   1468c:	0711                	addi	a4,a4,4
   1468e:	00d677b3          	and	a5,a2,a3
   14692:	97b6                	add	a5,a5,a3
   14694:	8fd1                	or	a5,a5,a2
   14696:	8fd5                	or	a5,a5,a3
   14698:	feb789e3          	beq	a5,a1,1468a <strlen+0x12>
   1469c:	ffc74683          	lbu	a3,-4(a4)
   146a0:	40a707b3          	sub	a5,a4,a0
   146a4:	ca8d                	beqz	a3,146d6 <strlen+0x5e>
   146a6:	ffd74683          	lbu	a3,-3(a4)
   146aa:	c29d                	beqz	a3,146d0 <strlen+0x58>
   146ac:	ffe74503          	lbu	a0,-2(a4)
   146b0:	00a03533          	snez	a0,a0
   146b4:	953e                	add	a0,a0,a5
   146b6:	1579                	addi	a0,a0,-2
   146b8:	8082                	ret
   146ba:	d2f9                	beqz	a3,14680 <strlen+0x8>
   146bc:	00074783          	lbu	a5,0(a4)
   146c0:	0705                	addi	a4,a4,1
   146c2:	00377693          	andi	a3,a4,3
   146c6:	fbf5                	bnez	a5,146ba <strlen+0x42>
   146c8:	8f09                	sub	a4,a4,a0
   146ca:	fff70513          	addi	a0,a4,-1
   146ce:	8082                	ret
   146d0:	ffd78513          	addi	a0,a5,-3
   146d4:	8082                	ret
   146d6:	ffc78513          	addi	a0,a5,-4
   146da:	8082                	ret

000146dc <frexpl>:
   146dc:	7159                	addi	sp,sp,-112
   146de:	d0ca                	sw	s2,96(sp)
   146e0:	00c5a903          	lw	s2,12(a1)
   146e4:	ccd2                	sw	s4,88(sp)
   146e6:	cad6                	sw	s5,84(sp)
   146e8:	c8da                	sw	s6,80(sp)
   146ea:	0045aa83          	lw	s5,4(a1)
   146ee:	0005ab03          	lw	s6,0(a1)
   146f2:	0085aa03          	lw	s4,8(a1)
   146f6:	cece                	sw	s3,92(sp)
   146f8:	69a1                	lui	s3,0x8
   146fa:	d4a2                	sw	s0,104(sp)
   146fc:	d2a6                	sw	s1,100(sp)
   146fe:	d686                	sw	ra,108(sp)
   14700:	01095493          	srli	s1,s2,0x10
   14704:	19fd                	addi	s3,s3,-1 # 7fff <exit-0x8095>
   14706:	d85a                	sw	s6,48(sp)
   14708:	da56                	sw	s5,52(sp)
   1470a:	dc52                	sw	s4,56(sp)
   1470c:	de4a                	sw	s2,60(sp)
   1470e:	0134f4b3          	and	s1,s1,s3
   14712:	00062023          	sw	zero,0(a2)
   14716:	842a                	mv	s0,a0
   14718:	05348763          	beq	s1,s3,14766 <frexpl+0x8a>
   1471c:	080c                	addi	a1,sp,16
   1471e:	1008                	addi	a0,sp,32
   14720:	c6de                	sw	s7,76(sp)
   14722:	d05a                	sw	s6,32(sp)
   14724:	8bb2                	mv	s7,a2
   14726:	d256                	sw	s5,36(sp)
   14728:	d452                	sw	s4,40(sp)
   1472a:	d64a                	sw	s2,44(sp)
   1472c:	c802                	sw	zero,16(sp)
   1472e:	ca02                	sw	zero,20(sp)
   14730:	cc02                	sw	zero,24(sp)
   14732:	ce02                	sw	zero,28(sp)
   14734:	5d5030ef          	jal	18508 <__eqtf2>
   14738:	c941                	beqz	a0,147c8 <frexpl+0xec>
   1473a:	4681                	li	a3,0
   1473c:	c8a1                	beqz	s1,1478c <frexpl+0xb0>
   1473e:	7771                	lui	a4,0xffffc
   14740:	0709                	addi	a4,a4,2 # ffffc002 <__BSS_END__+0xfffdf356>
   14742:	5972                	lw	s2,60(sp)
   14744:	94ba                	add	s1,s1,a4
   14746:	800107b7          	lui	a5,0x80010
   1474a:	94b6                	add	s1,s1,a3
   1474c:	17fd                	addi	a5,a5,-1 # 8000ffff <__BSS_END__+0x7fff3353>
   1474e:	009ba023          	sw	s1,0(s7)
   14752:	5b42                	lw	s6,48(sp)
   14754:	5ad2                	lw	s5,52(sp)
   14756:	5a62                	lw	s4,56(sp)
   14758:	4bb6                	lw	s7,76(sp)
   1475a:	00f97933          	and	s2,s2,a5
   1475e:	3ffe07b7          	lui	a5,0x3ffe0
   14762:	00f96933          	or	s2,s2,a5
   14766:	01642023          	sw	s6,0(s0)
   1476a:	01542223          	sw	s5,4(s0)
   1476e:	01442423          	sw	s4,8(s0)
   14772:	01242623          	sw	s2,12(s0)
   14776:	50b6                	lw	ra,108(sp)
   14778:	8522                	mv	a0,s0
   1477a:	5426                	lw	s0,104(sp)
   1477c:	5496                	lw	s1,100(sp)
   1477e:	5906                	lw	s2,96(sp)
   14780:	49f6                	lw	s3,92(sp)
   14782:	4a66                	lw	s4,88(sp)
   14784:	4ad6                	lw	s5,84(sp)
   14786:	4b46                	lw	s6,80(sp)
   14788:	6165                	addi	sp,sp,112
   1478a:	8082                	ret
   1478c:	407107b7          	lui	a5,0x40710
   14790:	860a                	mv	a2,sp
   14792:	080c                	addi	a1,sp,16
   14794:	1008                	addi	a0,sp,32
   14796:	c63e                	sw	a5,12(sp)
   14798:	c85a                	sw	s6,16(sp)
   1479a:	ca56                	sw	s5,20(sp)
   1479c:	cc52                	sw	s4,24(sp)
   1479e:	ce4a                	sw	s2,28(sp)
   147a0:	c002                	sw	zero,0(sp)
   147a2:	c202                	sw	zero,4(sp)
   147a4:	c402                	sw	zero,8(sp)
   147a6:	026040ef          	jal	187cc <__multf3>
   147aa:	5702                	lw	a4,32(sp)
   147ac:	57b2                	lw	a5,44(sp)
   147ae:	f8e00693          	li	a3,-114
   147b2:	d83a                	sw	a4,48(sp)
   147b4:	5712                	lw	a4,36(sp)
   147b6:	0107d493          	srli	s1,a5,0x10
   147ba:	de3e                	sw	a5,60(sp)
   147bc:	da3a                	sw	a4,52(sp)
   147be:	5722                	lw	a4,40(sp)
   147c0:	0134f4b3          	and	s1,s1,s3
   147c4:	dc3a                	sw	a4,56(sp)
   147c6:	bfa5                	j	1473e <frexpl+0x62>
   147c8:	4bb6                	lw	s7,76(sp)
   147ca:	bf71                	j	14766 <frexpl+0x8a>

000147cc <__register_exitproc>:
   147cc:	f281a783          	lw	a5,-216(gp) # 1c988 <__atexit>
   147d0:	c3a1                	beqz	a5,14810 <__register_exitproc+0x44>
   147d2:	43d8                	lw	a4,4(a5)
   147d4:	487d                	li	a6,31
   147d6:	04e84f63          	blt	a6,a4,14834 <__register_exitproc+0x68>
   147da:	00271813          	slli	a6,a4,0x2
   147de:	c11d                	beqz	a0,14804 <__register_exitproc+0x38>
   147e0:	01078333          	add	t1,a5,a6
   147e4:	08c32423          	sw	a2,136(t1)
   147e8:	1887a883          	lw	a7,392(a5) # 40710188 <__BSS_END__+0x406f34dc>
   147ec:	4605                	li	a2,1
   147ee:	00e61633          	sll	a2,a2,a4
   147f2:	00c8e8b3          	or	a7,a7,a2
   147f6:	1917a423          	sw	a7,392(a5)
   147fa:	10d32423          	sw	a3,264(t1)
   147fe:	4689                	li	a3,2
   14800:	00d50f63          	beq	a0,a3,1481e <__register_exitproc+0x52>
   14804:	0705                	addi	a4,a4,1
   14806:	c3d8                	sw	a4,4(a5)
   14808:	97c2                	add	a5,a5,a6
   1480a:	c78c                	sw	a1,8(a5)
   1480c:	4501                	li	a0,0
   1480e:	8082                	ret
   14810:	0bc18813          	addi	a6,gp,188 # 1cb1c <__atexit0>
   14814:	f301a423          	sw	a6,-216(gp) # 1c988 <__atexit>
   14818:	0bc18793          	addi	a5,gp,188 # 1cb1c <__atexit0>
   1481c:	bf5d                	j	147d2 <__register_exitproc+0x6>
   1481e:	18c7a683          	lw	a3,396(a5)
   14822:	0705                	addi	a4,a4,1
   14824:	c3d8                	sw	a4,4(a5)
   14826:	8ed1                	or	a3,a3,a2
   14828:	18d7a623          	sw	a3,396(a5)
   1482c:	97c2                	add	a5,a5,a6
   1482e:	c78c                	sw	a1,8(a5)
   14830:	4501                	li	a0,0
   14832:	8082                	ret
   14834:	557d                	li	a0,-1
   14836:	8082                	ret

00014838 <_ldtoa_r>:
   14838:	68ed                	lui	a7,0x1b
   1483a:	d8888893          	addi	a7,a7,-632 # 1ad88 <blanks.1+0x10>
   1483e:	0008af83          	lw	t6,0(a7)
   14842:	0048af03          	lw	t5,4(a7)
   14846:	0088ae83          	lw	t4,8(a7)
   1484a:	00c8ae03          	lw	t3,12(a7)
   1484e:	0108a303          	lw	t1,16(a7)
   14852:	03852883          	lw	a7,56(a0)
   14856:	7171                	addi	sp,sp,-176
   14858:	d14a                	sw	s2,160(sp)
   1485a:	cf4e                	sw	s3,156(sp)
   1485c:	cd52                	sw	s4,152(sp)
   1485e:	c95a                	sw	s6,144(sp)
   14860:	c75e                	sw	s7,140(sp)
   14862:	c562                	sw	s8,136(sp)
   14864:	c366                	sw	s9,132(sp)
   14866:	c16a                	sw	s10,128(sp)
   14868:	d706                	sw	ra,172(sp)
   1486a:	d522                	sw	s0,168(sp)
   1486c:	d326                	sw	s1,164(sp)
   1486e:	cb56                	sw	s5,148(sp)
   14870:	deee                	sw	s11,124(sp)
   14872:	cefe                	sw	t6,92(sp)
   14874:	d0fa                	sw	t5,96(sp)
   14876:	d2f6                	sw	t4,100(sp)
   14878:	d4f2                	sw	t3,104(sp)
   1487a:	d69a                	sw	t1,108(sp)
   1487c:	cc32                	sw	a2,24(sp)
   1487e:	ce36                	sw	a3,28(sp)
   14880:	0005aa03          	lw	s4,0(a1)
   14884:	0045a983          	lw	s3,4(a1)
   14888:	0085a903          	lw	s2,8(a1)
   1488c:	00c5ac03          	lw	s8,12(a1)
   14890:	8b2a                	mv	s6,a0
   14892:	8bba                	mv	s7,a4
   14894:	8cbe                	mv	s9,a5
   14896:	8d42                	mv	s10,a6
   14898:	00088763          	beqz	a7,148a6 <_ldtoa_r+0x6e>
   1489c:	85c6                	mv	a1,a7
   1489e:	246010ef          	jal	15ae4 <__freedtoa>
   148a2:	020b2c23          	sw	zero,56(s6)
   148a6:	5626                	lw	a2,104(sp)
   148a8:	01fc5693          	srli	a3,s8,0x1f
   148ac:	001c1a93          	slli	s5,s8,0x1
   148b0:	40165713          	srai	a4,a2,0x1
   148b4:	74f1                	lui	s1,0xffffc
   148b6:	001c1413          	slli	s0,s8,0x1
   148ba:	8f75                	and	a4,a4,a3
   148bc:	011ada93          	srli	s5,s5,0x11
   148c0:	f9148493          	addi	s1,s1,-111 # ffffbf91 <__BSS_END__+0xfffdf2e5>
   148c4:	010c1d93          	slli	s11,s8,0x10
   148c8:	00dca023          	sw	a3,0(s9)
   148cc:	8005                	srli	s0,s0,0x1
   148ce:	8f31                	xor	a4,a4,a2
   148d0:	010ddd93          	srli	s11,s11,0x10
   148d4:	009a87b3          	add	a5,s5,s1
   148d8:	100c                	addi	a1,sp,32
   148da:	1808                	addi	a0,sp,48
   148dc:	d852                	sw	s4,48(sp)
   148de:	da4e                	sw	s3,52(sp)
   148e0:	dc4a                	sw	s2,56(sp)
   148e2:	de22                	sw	s0,60(sp)
   148e4:	d052                	sw	s4,32(sp)
   148e6:	d24e                	sw	s3,36(sp)
   148e8:	d44a                	sw	s2,40(sp)
   148ea:	d622                	sw	s0,44(sp)
   148ec:	d4ba                	sw	a4,104(sp)
   148ee:	ca3e                	sw	a5,20(sp)
   148f0:	c6d2                	sw	s4,76(sp)
   148f2:	c8ce                	sw	s3,80(sp)
   148f4:	caca                	sw	s2,84(sp)
   148f6:	ccee                	sw	s11,88(sp)
   148f8:	453050ef          	jal	1a54a <__unordtf2>
   148fc:	e979                	bnez	a0,149d2 <_ldtoa_r+0x19a>
   148fe:	7fff0cb7          	lui	s9,0x7fff0
   14902:	54fd                	li	s1,-1
   14904:	1cfd                	addi	s9,s9,-1 # 7ffeffff <__BSS_END__+0x7ffd3353>
   14906:	100c                	addi	a1,sp,32
   14908:	1808                	addi	a0,sp,48
   1490a:	d852                	sw	s4,48(sp)
   1490c:	da4e                	sw	s3,52(sp)
   1490e:	dc4a                	sw	s2,56(sp)
   14910:	de22                	sw	s0,60(sp)
   14912:	d026                	sw	s1,32(sp)
   14914:	d226                	sw	s1,36(sp)
   14916:	d426                	sw	s1,40(sp)
   14918:	d666                	sw	s9,44(sp)
   1491a:	431050ef          	jal	1a54a <__unordtf2>
   1491e:	ed21                	bnez	a0,14976 <_ldtoa_r+0x13e>
   14920:	100c                	addi	a1,sp,32
   14922:	1808                	addi	a0,sp,48
   14924:	5bd030ef          	jal	186e0 <__letf2>
   14928:	04a05763          	blez	a0,14976 <_ldtoa_r+0x13e>
   1492c:	478d                	li	a5,3
   1492e:	c4be                	sw	a5,72(sp)
   14930:	47e2                	lw	a5,24(sp)
   14932:	4872                	lw	a6,28(sp)
   14934:	4652                	lw	a2,20(sp)
   14936:	00b8                	addi	a4,sp,72
   14938:	c06a                	sw	s10,0(sp)
   1493a:	88de                	mv	a7,s7
   1493c:	00f4                	addi	a3,sp,76
   1493e:	08ec                	addi	a1,sp,92
   14940:	855a                	mv	a0,s6
   14942:	2235                	jal	14a6e <__gdtoa>
   14944:	000ba703          	lw	a4,0(s7)
   14948:	77e1                	lui	a5,0xffff8
   1494a:	00f71763          	bne	a4,a5,14958 <_ldtoa_r+0x120>
   1494e:	800007b7          	lui	a5,0x80000
   14952:	17fd                	addi	a5,a5,-1 # 7fffffff <__BSS_END__+0x7ffe3353>
   14954:	00fba023          	sw	a5,0(s7)
   14958:	50ba                	lw	ra,172(sp)
   1495a:	542a                	lw	s0,168(sp)
   1495c:	549a                	lw	s1,164(sp)
   1495e:	590a                	lw	s2,160(sp)
   14960:	49fa                	lw	s3,156(sp)
   14962:	4a6a                	lw	s4,152(sp)
   14964:	4ada                	lw	s5,148(sp)
   14966:	4b4a                	lw	s6,144(sp)
   14968:	4bba                	lw	s7,140(sp)
   1496a:	4c2a                	lw	s8,136(sp)
   1496c:	4c9a                	lw	s9,132(sp)
   1496e:	4d0a                	lw	s10,128(sp)
   14970:	5df6                	lw	s11,124(sp)
   14972:	614d                	addi	sp,sp,176
   14974:	8082                	ret
   14976:	67c1                	lui	a5,0x10
   14978:	100c                	addi	a1,sp,32
   1497a:	1808                	addi	a0,sp,48
   1497c:	d852                	sw	s4,48(sp)
   1497e:	da4e                	sw	s3,52(sp)
   14980:	dc4a                	sw	s2,56(sp)
   14982:	de22                	sw	s0,60(sp)
   14984:	d002                	sw	zero,32(sp)
   14986:	d202                	sw	zero,36(sp)
   14988:	d402                	sw	zero,40(sp)
   1498a:	d63e                	sw	a5,44(sp)
   1498c:	469030ef          	jal	185f4 <__getf2>
   14990:	00054963          	bltz	a0,149a2 <_ldtoa_r+0x16a>
   14994:	67c1                	lui	a5,0x10
   14996:	00fdedb3          	or	s11,s11,a5
   1499a:	4785                	li	a5,1
   1499c:	c4be                	sw	a5,72(sp)
   1499e:	ccee                	sw	s11,88(sp)
   149a0:	bf41                	j	14930 <_ldtoa_r+0xf8>
   149a2:	100c                	addi	a1,sp,32
   149a4:	1808                	addi	a0,sp,48
   149a6:	d852                	sw	s4,48(sp)
   149a8:	da4e                	sw	s3,52(sp)
   149aa:	dc4a                	sw	s2,56(sp)
   149ac:	de62                	sw	s8,60(sp)
   149ae:	d002                	sw	zero,32(sp)
   149b0:	d202                	sw	zero,36(sp)
   149b2:	d402                	sw	zero,40(sp)
   149b4:	d602                	sw	zero,44(sp)
   149b6:	353030ef          	jal	18508 <__eqtf2>
   149ba:	e119                	bnez	a0,149c0 <_ldtoa_r+0x188>
   149bc:	c482                	sw	zero,72(sp)
   149be:	bf8d                	j	14930 <_ldtoa_r+0xf8>
   149c0:	74f1                	lui	s1,0xffffc
   149c2:	4789                	li	a5,2
   149c4:	f9248493          	addi	s1,s1,-110 # ffffbf92 <__BSS_END__+0xfffdf2e6>
   149c8:	c4be                	sw	a5,72(sp)
   149ca:	009a87b3          	add	a5,s5,s1
   149ce:	ca3e                	sw	a5,20(sp)
   149d0:	b785                	j	14930 <_ldtoa_r+0xf8>
   149d2:	4791                	li	a5,4
   149d4:	c4be                	sw	a5,72(sp)
   149d6:	bfa9                	j	14930 <_ldtoa_r+0xf8>

000149d8 <_ldcheck>:
   149d8:	7139                	addi	sp,sp,-64
   149da:	da26                	sw	s1,52(sp)
   149dc:	4544                	lw	s1,12(a0)
   149de:	d64e                	sw	s3,44(sp)
   149e0:	d452                	sw	s4,40(sp)
   149e2:	00852983          	lw	s3,8(a0)
   149e6:	00452a03          	lw	s4,4(a0)
   149ea:	d256                	sw	s5,36(sp)
   149ec:	00052a83          	lw	s5,0(a0)
   149f0:	0486                	slli	s1,s1,0x1
   149f2:	8085                	srli	s1,s1,0x1
   149f4:	858a                	mv	a1,sp
   149f6:	0808                	addi	a0,sp,16
   149f8:	de06                	sw	ra,60(sp)
   149fa:	c856                	sw	s5,16(sp)
   149fc:	ca52                	sw	s4,20(sp)
   149fe:	cc4e                	sw	s3,24(sp)
   14a00:	ce26                	sw	s1,28(sp)
   14a02:	c056                	sw	s5,0(sp)
   14a04:	c252                	sw	s4,4(sp)
   14a06:	c44e                	sw	s3,8(sp)
   14a08:	c626                	sw	s1,12(sp)
   14a0a:	341050ef          	jal	1a54a <__unordtf2>
   14a0e:	e921                	bnez	a0,14a5e <_ldcheck+0x86>
   14a10:	d05a                	sw	s6,32(sp)
   14a12:	7fff0b37          	lui	s6,0x7fff0
   14a16:	d84a                	sw	s2,48(sp)
   14a18:	1b7d                	addi	s6,s6,-1 # 7ffeffff <__BSS_END__+0x7ffd3353>
   14a1a:	597d                	li	s2,-1
   14a1c:	858a                	mv	a1,sp
   14a1e:	0808                	addi	a0,sp,16
   14a20:	dc22                	sw	s0,56(sp)
   14a22:	c04a                	sw	s2,0(sp)
   14a24:	c24a                	sw	s2,4(sp)
   14a26:	c44a                	sw	s2,8(sp)
   14a28:	c65a                	sw	s6,12(sp)
   14a2a:	4405                	li	s0,1
   14a2c:	31f050ef          	jal	1a54a <__unordtf2>
   14a30:	c105                	beqz	a0,14a50 <_ldcheck+0x78>
   14a32:	50f2                	lw	ra,60(sp)
   14a34:	00144513          	xori	a0,s0,1
   14a38:	5462                	lw	s0,56(sp)
   14a3a:	0ff57513          	zext.b	a0,a0
   14a3e:	5942                	lw	s2,48(sp)
   14a40:	5b02                	lw	s6,32(sp)
   14a42:	54d2                	lw	s1,52(sp)
   14a44:	59b2                	lw	s3,44(sp)
   14a46:	5a22                	lw	s4,40(sp)
   14a48:	5a92                	lw	s5,36(sp)
   14a4a:	0506                	slli	a0,a0,0x1
   14a4c:	6121                	addi	sp,sp,64
   14a4e:	8082                	ret
   14a50:	858a                	mv	a1,sp
   14a52:	0808                	addi	a0,sp,16
   14a54:	48d030ef          	jal	186e0 <__letf2>
   14a58:	00152413          	slti	s0,a0,1
   14a5c:	bfd9                	j	14a32 <_ldcheck+0x5a>
   14a5e:	50f2                	lw	ra,60(sp)
   14a60:	54d2                	lw	s1,52(sp)
   14a62:	59b2                	lw	s3,44(sp)
   14a64:	5a22                	lw	s4,40(sp)
   14a66:	5a92                	lw	s5,36(sp)
   14a68:	4505                	li	a0,1
   14a6a:	6121                	addi	sp,sp,64
   14a6c:	8082                	ret

00014a6e <__gdtoa>:
   14a6e:	7171                	addi	sp,sp,-176
   14a70:	cb56                	sw	s5,148(sp)
   14a72:	00072a83          	lw	s5,0(a4)
   14a76:	d326                	sw	s1,164(sp)
   14a78:	c75e                	sw	s7,140(sp)
   14a7a:	fcfafe13          	andi	t3,s5,-49
   14a7e:	d706                	sw	ra,172(sp)
   14a80:	01c72023          	sw	t3,0(a4)
   14a84:	8bba                	mv	s7,a4
   14a86:	574a                	lw	a4,176(sp)
   14a88:	00fafe13          	andi	t3,s5,15
   14a8c:	4e8d                	li	t4,3
   14a8e:	c63a                	sw	a4,12(sp)
   14a90:	c832                	sw	a2,16(sp)
   14a92:	d442                	sw	a6,40(sp)
   14a94:	84c6                	mv	s1,a7
   14a96:	4fde0263          	beq	t3,t4,14f7a <__gdtoa+0x50c>
   14a9a:	c95a                	sw	s6,144(sp)
   14a9c:	00cafb13          	andi	s6,s5,12
   14aa0:	460b1b63          	bnez	s6,14f16 <__gdtoa+0x4a8>
   14aa4:	d522                	sw	s0,168(sp)
   14aa6:	842a                	mv	s0,a0
   14aa8:	4a0e0563          	beqz	t3,14f52 <__gdtoa+0x4e4>
   14aac:	c16a                	sw	s10,128(sp)
   14aae:	0005ad03          	lw	s10,0(a1)
   14ab2:	d14a                	sw	s2,160(sp)
   14ab4:	cf4e                	sw	s3,156(sp)
   14ab6:	cd52                	sw	s4,152(sp)
   14ab8:	c366                	sw	s9,132(sp)
   14aba:	02000613          	li	a2,32
   14abe:	8a2e                	mv	s4,a1
   14ac0:	893e                	mv	s2,a5
   14ac2:	89b6                	mv	s3,a3
   14ac4:	4581                	li	a1,0
   14ac6:	02000793          	li	a5,32
   14aca:	01a65663          	bge	a2,s10,14ad6 <__gdtoa+0x68>
   14ace:	0786                	slli	a5,a5,0x1
   14ad0:	0585                	addi	a1,a1,1
   14ad2:	ffa7cee3          	blt	a5,s10,14ace <__gdtoa+0x60>
   14ad6:	8522                	mv	a0,s0
   14ad8:	24e010ef          	jal	15d26 <_Balloc>
   14adc:	8caa                	mv	s9,a0
   14ade:	68050163          	beqz	a0,15160 <__gdtoa+0x6f2>
   14ae2:	fffd0893          	addi	a7,s10,-1
   14ae6:	4058d893          	srai	a7,a7,0x5
   14aea:	00289513          	slli	a0,a7,0x2
   14aee:	c562                	sw	s8,136(sp)
   14af0:	deee                	sw	s11,124(sp)
   14af2:	954e                	add	a0,a0,s3
   14af4:	014c8613          	addi	a2,s9,20
   14af8:	87ce                	mv	a5,s3
   14afa:	4398                	lw	a4,0(a5)
   14afc:	0791                	addi	a5,a5,4 # 10004 <exit-0x90>
   14afe:	0611                	addi	a2,a2,4
   14b00:	fee62e23          	sw	a4,-4(a2)
   14b04:	fef57be3          	bgeu	a0,a5,14afa <__gdtoa+0x8c>
   14b08:	0505                	addi	a0,a0,1
   14b0a:	00198793          	addi	a5,s3,1
   14b0e:	4611                	li	a2,4
   14b10:	00f56563          	bltu	a0,a5,14b1a <__gdtoa+0xac>
   14b14:	088a                	slli	a7,a7,0x2
   14b16:	00488613          	addi	a2,a7,4
   14b1a:	40265d93          	srai	s11,a2,0x2
   14b1e:	9666                	add	a2,a2,s9
   14b20:	a021                	j	14b28 <__gdtoa+0xba>
   14b22:	1671                	addi	a2,a2,-4
   14b24:	480d8f63          	beqz	s11,14fc2 <__gdtoa+0x554>
   14b28:	4a1c                	lw	a5,16(a2)
   14b2a:	8c6e                	mv	s8,s11
   14b2c:	1dfd                	addi	s11,s11,-1
   14b2e:	dbf5                	beqz	a5,14b22 <__gdtoa+0xb4>
   14b30:	004d8793          	addi	a5,s11,4
   14b34:	078a                	slli	a5,a5,0x2
   14b36:	97e6                	add	a5,a5,s9
   14b38:	43c8                	lw	a0,4(a5)
   14b3a:	018ca823          	sw	s8,16(s9)
   14b3e:	0c16                	slli	s8,s8,0x5
   14b40:	410010ef          	jal	15f50 <__hi0bits>
   14b44:	40ac0db3          	sub	s11,s8,a0
   14b48:	8566                	mv	a0,s9
   14b4a:	1a2010ef          	jal	15cec <__trailz_D2A>
   14b4e:	d6aa                	sw	a0,108(sp)
   14b50:	4c42                	lw	s8,16(sp)
   14b52:	48051c63          	bnez	a0,14fea <__gdtoa+0x57c>
   14b56:	010ca603          	lw	a2,16(s9)
   14b5a:	3e060163          	beqz	a2,14f3c <__gdtoa+0x4ce>
   14b5e:	10ec                	addi	a1,sp,108
   14b60:	8566                	mv	a0,s9
   14b62:	2e1010ef          	jal	16642 <__b2d>
   14b66:	00c59613          	slli	a2,a1,0xc
   14b6a:	8231                	srli	a2,a2,0xc
   14b6c:	3ff005b7          	lui	a1,0x3ff00
   14b70:	8f2a                	mv	t5,a0
   14b72:	8e4d                	or	a2,a2,a1
   14b74:	cc7a                	sw	t5,24(sp)
   14b76:	ce32                	sw	a2,28(sp)
   14b78:	ea81b707          	fld	fa4,-344(gp) # 1c908 <__SDATA_BEGIN__>
   14b7c:	27e2                	fld	fa5,24(sp)
   14b7e:	eb01b687          	fld	fa3,-336(gp) # 1c910 <__SDATA_BEGIN__+0x8>
   14b82:	0ae7f753          	fsub.d	fa4,fa5,fa4
   14b86:	eb81b787          	fld	fa5,-328(gp) # 1c918 <__SDATA_BEGIN__+0x10>
   14b8a:	01bc08b3          	add	a7,s8,s11
   14b8e:	fff88593          	addi	a1,a7,-1
   14b92:	852e                	mv	a0,a1
   14b94:	7ad77743          	fmadd.d	fa4,fa4,fa3,fa5
   14b98:	d20587d3          	fcvt.d.w	fa5,a1
   14b9c:	ec01b687          	fld	fa3,-320(gp) # 1c920 <__SDATA_BEGIN__+0x18>
   14ba0:	72d7f7c3          	fmadd.d	fa5,fa5,fa3,fa4
   14ba4:	0005d563          	bgez	a1,14bae <__gdtoa+0x140>
   14ba8:	4505                	li	a0,1
   14baa:	41150533          	sub	a0,a0,a7
   14bae:	bcb50513          	addi	a0,a0,-1077
   14bb2:	00a05863          	blez	a0,14bc2 <__gdtoa+0x154>
   14bb6:	d20506d3          	fcvt.d.w	fa3,a0
   14bba:	ec81b707          	fld	fa4,-312(gp) # 1c928 <__SDATA_BEGIN__+0x20>
   14bbe:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   14bc2:	d2000753          	fcvt.d.w	fa4,zero
   14bc6:	c2079853          	fcvt.w.d	a6,fa5,rtz
   14bca:	a2e79553          	flt.d	a0,fa5,fa4
   14bce:	c909                	beqz	a0,14be0 <__gdtoa+0x172>
   14bd0:	d2080753          	fcvt.d.w	fa4,a6
   14bd4:	a2f72553          	feq.d	a0,fa4,fa5
   14bd8:	00153513          	seqz	a0,a0
   14bdc:	40a80833          	sub	a6,a6,a0
   14be0:	01459e93          	slli	t4,a1,0x14
   14be4:	40bd8533          	sub	a0,s11,a1
   14be8:	45d9                	li	a1,22
   14bea:	00ce8fb3          	add	t6,t4,a2
   14bee:	fff50e93          	addi	t4,a0,-1
   14bf2:	3d05eb63          	bltu	a1,a6,14fc8 <__gdtoa+0x55a>
   14bf6:	65ed                	lui	a1,0x1b
   14bf8:	00381613          	slli	a2,a6,0x3
   14bfc:	df858593          	addi	a1,a1,-520 # 1adf8 <__mprec_tens>
   14c00:	962e                	add	a2,a2,a1
   14c02:	cc7a                	sw	t5,24(sp)
   14c04:	ce7e                	sw	t6,28(sp)
   14c06:	221c                	fld	fa5,0(a2)
   14c08:	2762                	fld	fa4,24(sp)
   14c0a:	a2f71653          	flt.d	a2,fa4,fa5
   14c0e:	58061163          	bnez	a2,15190 <__gdtoa+0x722>
   14c12:	ca82                	sw	zero,84(sp)
   14c14:	cc02                	sw	zero,24(sp)
   14c16:	00a04763          	bgtz	a0,14c24 <__gdtoa+0x1b6>
   14c1a:	4605                	li	a2,1
   14c1c:	40a607b3          	sub	a5,a2,a0
   14c20:	cc3e                	sw	a5,24(sp)
   14c22:	4e81                	li	t4,0
   14c24:	9ec2                	add	t4,t4,a6
   14c26:	da42                	sw	a6,52(sp)
   14c28:	d802                	sw	zero,48(sp)
   14c2a:	4625                	li	a2,9
   14c2c:	3d266a63          	bltu	a2,s2,15000 <__gdtoa+0x592>
   14c30:	4615                	li	a2,5
   14c32:	57264263          	blt	a2,s2,15196 <__gdtoa+0x728>
   14c36:	3fd88893          	addi	a7,a7,1021
   14c3a:	7f88b793          	sltiu	a5,a7,2040
   14c3e:	4591                	li	a1,4
   14c40:	ccbe                	sw	a5,88(sp)
   14c42:	18b909e3          	beq	s2,a1,155d4 <__gdtoa+0xb66>
   14c46:	18c903e3          	beq	s2,a2,155cc <__gdtoa+0xb5e>
   14c4a:	4609                	li	a2,2
   14c4c:	18c907e3          	beq	s2,a2,155da <__gdtoa+0xb6c>
   14c50:	460d                	li	a2,3
   14c52:	c882                	sw	zero,80(sp)
   14c54:	3ac91c63          	bne	s2,a2,1500c <__gdtoa+0x59e>
   14c58:	57d2                	lw	a5,52(sp)
   14c5a:	5722                	lw	a4,40(sp)
   14c5c:	97ba                	add	a5,a5,a4
   14c5e:	cebe                	sw	a5,92(sp)
   14c60:	0785                	addi	a5,a5,1
   14c62:	d63e                	sw	a5,44(sp)
   14c64:	00f05ce3          	blez	a5,1547c <__gdtoa+0xa0e>
   14c68:	863e                	mv	a2,a5
   14c6a:	85be                	mv	a1,a5
   14c6c:	8522                	mv	a0,s0
   14c6e:	c4fa                	sw	t5,72(sp)
   14c70:	c6fe                	sw	t6,76(sp)
   14c72:	c0f6                	sw	t4,64(sp)
   14c74:	dc42                	sw	a6,56(sp)
   14c76:	d6b2                	sw	a2,108(sp)
   14c78:	5bd000ef          	jal	15a34 <__rv_alloc_D2A>
   14c7c:	88aa                	mv	a7,a0
   14c7e:	32050863          	beqz	a0,14fae <__gdtoa+0x540>
   14c82:	00ca2783          	lw	a5,12(s4)
   14c86:	5862                	lw	a6,56(sp)
   14c88:	4e86                	lw	t4,64(sp)
   14c8a:	17fd                	addi	a5,a5,-1
   14c8c:	d03e                	sw	a5,32(sp)
   14c8e:	4f26                	lw	t5,72(sp)
   14c90:	4fb6                	lw	t6,76(sp)
   14c92:	3a078363          	beqz	a5,15038 <__gdtoa+0x5ca>
   14c96:	4e07ca63          	bltz	a5,1518a <__gdtoa+0x71c>
   14c9a:	100af313          	andi	t1,s5,256
   14c9e:	38031863          	bnez	t1,1502e <__gdtoa+0x5c0>
   14ca2:	000c4663          	bltz	s8,14cae <__gdtoa+0x240>
   14ca6:	57d2                	lw	a5,52(sp)
   14ca8:	4639                	li	a2,14
   14caa:	50f65363          	bge	a2,a5,151b0 <__gdtoa+0x742>
   14cae:	47c6                	lw	a5,80(sp)
   14cb0:	4c078863          	beqz	a5,15180 <__gdtoa+0x712>
   14cb4:	41bd06b3          	sub	a3,s10,s11
   14cb8:	004a2603          	lw	a2,4(s4)
   14cbc:	00168593          	addi	a1,a3,1
   14cc0:	d6ae                	sw	a1,108(sp)
   14cc2:	40dc06b3          	sub	a3,s8,a3
   14cc6:	7ec6dd63          	bge	a3,a2,154c0 <__gdtoa+0xa52>
   14cca:	ffd90693          	addi	a3,s2,-3
   14cce:	9af5                	andi	a3,a3,-3
   14cd0:	72068863          	beqz	a3,15400 <__gdtoa+0x992>
   14cd4:	40cc06b3          	sub	a3,s8,a2
   14cd8:	0685                	addi	a3,a3,1
   14cda:	d6b6                	sw	a3,108(sp)
   14cdc:	4605                	li	a2,1
   14cde:	01265863          	bge	a2,s2,14cee <__gdtoa+0x280>
   14ce2:	57b2                	lw	a5,44(sp)
   14ce4:	00f05563          	blez	a5,14cee <__gdtoa+0x280>
   14ce8:	57b2                	lw	a5,44(sp)
   14cea:	40d7c1e3          	blt	a5,a3,158ec <__gdtoa+0xe7e>
   14cee:	47e2                	lw	a5,24(sp)
   14cf0:	5d42                	lw	s10,48(sp)
   14cf2:	9eb6                	add	t4,t4,a3
   14cf4:	dc3e                	sw	a5,56(sp)
   14cf6:	97b6                	add	a5,a5,a3
   14cf8:	cc3e                	sw	a5,24(sp)
   14cfa:	4585                	li	a1,1
   14cfc:	8522                	mv	a0,s0
   14cfe:	ccc6                	sw	a7,88(sp)
   14d00:	c4f6                	sw	t4,72(sp)
   14d02:	c0c2                	sw	a6,64(sp)
   14d04:	32a010ef          	jal	1602e <__i2b>
   14d08:	4806                	lw	a6,64(sp)
   14d0a:	4ea6                	lw	t4,72(sp)
   14d0c:	48e6                	lw	a7,88(sp)
   14d0e:	8c2a                	mv	s8,a0
   14d10:	28050f63          	beqz	a0,14fae <__gdtoa+0x540>
   14d14:	57e2                	lw	a5,56(sp)
   14d16:	c385                	beqz	a5,14d36 <__gdtoa+0x2c8>
   14d18:	01d05f63          	blez	t4,14d36 <__gdtoa+0x2c8>
   14d1c:	86be                	mv	a3,a5
   14d1e:	00fed363          	bge	t4,a5,14d24 <__gdtoa+0x2b6>
   14d22:	86f6                	mv	a3,t4
   14d24:	47e2                	lw	a5,24(sp)
   14d26:	d6b6                	sw	a3,108(sp)
   14d28:	40de8eb3          	sub	t4,t4,a3
   14d2c:	8f95                	sub	a5,a5,a3
   14d2e:	cc3e                	sw	a5,24(sp)
   14d30:	57e2                	lw	a5,56(sp)
   14d32:	8f95                	sub	a5,a5,a3
   14d34:	dc3e                	sw	a5,56(sp)
   14d36:	57c2                	lw	a5,48(sp)
   14d38:	c39d                	beqz	a5,14d5e <__gdtoa+0x2f0>
   14d3a:	47c6                	lw	a5,80(sp)
   14d3c:	c399                	beqz	a5,14d42 <__gdtoa+0x2d4>
   14d3e:	7e0d1863          	bnez	s10,1552e <__gdtoa+0xac0>
   14d42:	5642                	lw	a2,48(sp)
   14d44:	85e6                	mv	a1,s9
   14d46:	8522                	mv	a0,s0
   14d48:	ccc6                	sw	a7,88(sp)
   14d4a:	c4f6                	sw	t4,72(sp)
   14d4c:	c0c2                	sw	a6,64(sp)
   14d4e:	4de010ef          	jal	1622c <__pow5mult>
   14d52:	4806                	lw	a6,64(sp)
   14d54:	4ea6                	lw	t4,72(sp)
   14d56:	48e6                	lw	a7,88(sp)
   14d58:	8caa                	mv	s9,a0
   14d5a:	24050a63          	beqz	a0,14fae <__gdtoa+0x540>
   14d5e:	4585                	li	a1,1
   14d60:	8522                	mv	a0,s0
   14d62:	c4c6                	sw	a7,72(sp)
   14d64:	c0f6                	sw	t4,64(sp)
   14d66:	d842                	sw	a6,48(sp)
   14d68:	2c6010ef          	jal	1602e <__i2b>
   14d6c:	8d2a                	mv	s10,a0
   14d6e:	24050063          	beqz	a0,14fae <__gdtoa+0x540>
   14d72:	5842                	lw	a6,48(sp)
   14d74:	4e86                	lw	t4,64(sp)
   14d76:	48a6                	lw	a7,72(sp)
   14d78:	70081663          	bnez	a6,15484 <__gdtoa+0xa16>
   14d7c:	4685                	li	a3,1
   14d7e:	5126d263          	bge	a3,s2,15282 <__gdtoa+0x814>
   14d82:	4a7d                	li	s4,31
   14d84:	47e2                	lw	a5,24(sp)
   14d86:	41da0a33          	sub	s4,s4,t4
   14d8a:	1a71                	addi	s4,s4,-4
   14d8c:	01fa7a13          	andi	s4,s4,31
   14d90:	00fa0633          	add	a2,s4,a5
   14d94:	d6d2                	sw	s4,108(sp)
   14d96:	87d2                	mv	a5,s4
   14d98:	58c04d63          	bgtz	a2,15332 <__gdtoa+0x8c4>
   14d9c:	00fe8633          	add	a2,t4,a5
   14da0:	1ec04c63          	bgtz	a2,14f98 <__gdtoa+0x52a>
   14da4:	47d6                	lw	a5,84(sp)
   14da6:	5a079563          	bnez	a5,15350 <__gdtoa+0x8e2>
   14daa:	57b2                	lw	a5,44(sp)
   14dac:	66f05a63          	blez	a5,15420 <__gdtoa+0x9b2>
   14db0:	47c6                	lw	a5,80(sp)
   14db2:	5c078d63          	beqz	a5,1538c <__gdtoa+0x91e>
   14db6:	57e2                	lw	a5,56(sp)
   14db8:	00fa0633          	add	a2,s4,a5
   14dbc:	7ec04763          	bgtz	a2,155aa <__gdtoa+0xb3c>
   14dc0:	8a62                	mv	s4,s8
   14dc2:	02081ce3          	bnez	a6,155fa <__gdtoa+0xb8c>
   14dc6:	5b32                	lw	s6,44(sp)
   14dc8:	8dc6                	mv	s11,a7
   14dca:	4685                	li	a3,1
   14dcc:	d446                	sw	a7,40(sp)
   14dce:	cc5e                	sw	s7,24(sp)
   14dd0:	d626                	sw	s1,44(sp)
   14dd2:	a885                	j	14e42 <__gdtoa+0x3d4>
   14dd4:	8522                	mv	a0,s0
   14dd6:	7bd000ef          	jal	15d92 <_Bfree>
   14dda:	100ac3e3          	bltz	s5,156e0 <__gdtoa+0xc72>
   14dde:	01596ab3          	or	s5,s2,s5
   14de2:	000a9763          	bnez	s5,14df0 <__gdtoa+0x382>
   14de6:	0009a783          	lw	a5,0(s3)
   14dea:	8b85                	andi	a5,a5,1
   14dec:	0e078ae3          	beqz	a5,156e0 <__gdtoa+0xc72>
   14df0:	5782                	lw	a5,32(sp)
   14df2:	4709                	li	a4,2
   14df4:	26e798e3          	bne	a5,a4,15864 <__gdtoa+0xdf6>
   14df8:	017d8023          	sb	s7,0(s11)
   14dfc:	57b6                	lw	a5,108(sp)
   14dfe:	0d85                	addi	s11,s11,1
   14e00:	1efb0fe3          	beq	s6,a5,157fe <__gdtoa+0xd90>
   14e04:	85e6                	mv	a1,s9
   14e06:	4681                	li	a3,0
   14e08:	4629                	li	a2,10
   14e0a:	8522                	mv	a0,s0
   14e0c:	799000ef          	jal	15da4 <__multadd>
   14e10:	8caa                	mv	s9,a0
   14e12:	18050e63          	beqz	a0,14fae <__gdtoa+0x540>
   14e16:	4681                	li	a3,0
   14e18:	4629                	li	a2,10
   14e1a:	85e2                	mv	a1,s8
   14e1c:	8522                	mv	a0,s0
   14e1e:	494c0c63          	beq	s8,s4,152b6 <__gdtoa+0x848>
   14e22:	783000ef          	jal	15da4 <__multadd>
   14e26:	8c2a                	mv	s8,a0
   14e28:	18050363          	beqz	a0,14fae <__gdtoa+0x540>
   14e2c:	85d2                	mv	a1,s4
   14e2e:	4681                	li	a3,0
   14e30:	4629                	li	a2,10
   14e32:	8522                	mv	a0,s0
   14e34:	771000ef          	jal	15da4 <__multadd>
   14e38:	8a2a                	mv	s4,a0
   14e3a:	16050a63          	beqz	a0,14fae <__gdtoa+0x540>
   14e3e:	56b6                	lw	a3,108(sp)
   14e40:	0685                	addi	a3,a3,1
   14e42:	85ea                	mv	a1,s10
   14e44:	8566                	mv	a0,s9
   14e46:	d6b6                	sw	a3,108(sp)
   14e48:	4ab000ef          	jal	15af2 <__quorem_D2A>
   14e4c:	84aa                	mv	s1,a0
   14e4e:	85e2                	mv	a1,s8
   14e50:	8566                	mv	a0,s9
   14e52:	5bc010ef          	jal	1640e <__mcmp>
   14e56:	85ea                	mv	a1,s10
   14e58:	8aaa                	mv	s5,a0
   14e5a:	8652                	mv	a2,s4
   14e5c:	8522                	mv	a0,s0
   14e5e:	5ec010ef          	jal	1644a <__mdiff>
   14e62:	03048b93          	addi	s7,s1,48
   14e66:	85aa                	mv	a1,a0
   14e68:	14050363          	beqz	a0,14fae <__gdtoa+0x540>
   14e6c:	455c                	lw	a5,12(a0)
   14e6e:	f3bd                	bnez	a5,14dd4 <__gdtoa+0x366>
   14e70:	c82a                	sw	a0,16(sp)
   14e72:	8566                	mv	a0,s9
   14e74:	59a010ef          	jal	1640e <__mcmp>
   14e78:	45c2                	lw	a1,16(sp)
   14e7a:	86aa                	mv	a3,a0
   14e7c:	8522                	mv	a0,s0
   14e7e:	c836                	sw	a3,16(sp)
   14e80:	713000ef          	jal	15d92 <_Bfree>
   14e84:	46c2                	lw	a3,16(sp)
   14e86:	00d96733          	or	a4,s2,a3
   14e8a:	340711e3          	bnez	a4,159cc <__gdtoa+0xf5e>
   14e8e:	0009a783          	lw	a5,0(s3)
   14e92:	8b85                	andi	a5,a5,1
   14e94:	42079863          	bnez	a5,152c4 <__gdtoa+0x856>
   14e98:	5782                	lw	a5,32(sp)
   14e9a:	280787e3          	beqz	a5,15928 <__gdtoa+0xeba>
   14e9e:	f5504de3          	bgtz	s5,14df8 <__gdtoa+0x38a>
   14ea2:	010ca603          	lw	a2,16(s9)
   14ea6:	4685                	li	a3,1
   14ea8:	835e                	mv	t1,s7
   14eaa:	58a2                	lw	a7,40(sp)
   14eac:	4be2                	lw	s7,24(sp)
   14eae:	54b2                	lw	s1,44(sp)
   14eb0:	8b3a                	mv	s6,a4
   14eb2:	2ec6dae3          	bge	a3,a2,159a6 <__gdtoa+0xf38>
   14eb6:	5782                	lw	a5,32(sp)
   14eb8:	4689                	li	a3,2
   14eba:	8a9a                	mv	s5,t1
   14ebc:	8b46                	mv	s6,a7
   14ebe:	02d79063          	bne	a5,a3,14ede <__gdtoa+0x470>
   14ec2:	2cb0006f          	j	1598c <__gdtoa+0xf1e>
   14ec6:	6df000ef          	jal	15da4 <__multadd>
   14eca:	85ea                	mv	a1,s10
   14ecc:	8caa                	mv	s9,a0
   14ece:	0e050063          	beqz	a0,14fae <__gdtoa+0x540>
   14ed2:	421000ef          	jal	15af2 <__quorem_D2A>
   14ed6:	03050a93          	addi	s5,a0,48
   14eda:	8dca                	mv	s11,s2
   14edc:	8a4e                	mv	s4,s3
   14ede:	85d2                	mv	a1,s4
   14ee0:	856a                	mv	a0,s10
   14ee2:	52c010ef          	jal	1640e <__mcmp>
   14ee6:	87aa                	mv	a5,a0
   14ee8:	4681                	li	a3,0
   14eea:	4629                	li	a2,10
   14eec:	85d2                	mv	a1,s4
   14eee:	8522                	mv	a0,s0
   14ef0:	001d8913          	addi	s2,s11,1
   14ef4:	28f052e3          	blez	a5,15978 <__gdtoa+0xf0a>
   14ef8:	ff590fa3          	sb	s5,-1(s2)
   14efc:	6a9000ef          	jal	15da4 <__multadd>
   14f00:	89aa                	mv	s3,a0
   14f02:	4681                	li	a3,0
   14f04:	4629                	li	a2,10
   14f06:	85e6                	mv	a1,s9
   14f08:	8522                	mv	a0,s0
   14f0a:	0a098263          	beqz	s3,14fae <__gdtoa+0x540>
   14f0e:	fb4c1ce3          	bne	s8,s4,14ec6 <__gdtoa+0x458>
   14f12:	8c4e                	mv	s8,s3
   14f14:	bf4d                	j	14ec6 <__gdtoa+0x458>
   14f16:	4791                	li	a5,4
   14f18:	0afe1363          	bne	t3,a5,14fbe <__gdtoa+0x550>
   14f1c:	4632                	lw	a2,12(sp)
   14f1e:	4b4a                	lw	s6,144(sp)
   14f20:	50ba                	lw	ra,172(sp)
   14f22:	549a                	lw	s1,164(sp)
   14f24:	4ada                	lw	s5,148(sp)
   14f26:	4bba                	lw	s7,140(sp)
   14f28:	77e1                	lui	a5,0xffff8
   14f2a:	00f8a023          	sw	a5,0(a7)
   14f2e:	65ed                	lui	a1,0x1b
   14f30:	468d                	li	a3,3
   14f32:	a4c58593          	addi	a1,a1,-1460 # 1aa4c <__clzsi2+0xd4>
   14f36:	614d                	addi	sp,sp,176
   14f38:	33b0006f          	j	15a72 <__nrv_alloc_D2A>
   14f3c:	85e6                	mv	a1,s9
   14f3e:	8522                	mv	a0,s0
   14f40:	653000ef          	jal	15d92 <_Bfree>
   14f44:	590a                	lw	s2,160(sp)
   14f46:	49fa                	lw	s3,156(sp)
   14f48:	4a6a                	lw	s4,152(sp)
   14f4a:	4c2a                	lw	s8,136(sp)
   14f4c:	4c9a                	lw	s9,132(sp)
   14f4e:	4d0a                	lw	s10,128(sp)
   14f50:	5df6                	lw	s11,124(sp)
   14f52:	4632                	lw	a2,12(sp)
   14f54:	4785                	li	a5,1
   14f56:	65ed                	lui	a1,0x1b
   14f58:	8522                	mv	a0,s0
   14f5a:	c09c                	sw	a5,0(s1)
   14f5c:	4685                	li	a3,1
   14f5e:	a3c58593          	addi	a1,a1,-1476 # 1aa3c <__clzsi2+0xc4>
   14f62:	311000ef          	jal	15a72 <__nrv_alloc_D2A>
   14f66:	542a                	lw	s0,168(sp)
   14f68:	88aa                	mv	a7,a0
   14f6a:	50ba                	lw	ra,172(sp)
   14f6c:	4b4a                	lw	s6,144(sp)
   14f6e:	549a                	lw	s1,164(sp)
   14f70:	4ada                	lw	s5,148(sp)
   14f72:	4bba                	lw	s7,140(sp)
   14f74:	8546                	mv	a0,a7
   14f76:	614d                	addi	sp,sp,176
   14f78:	8082                	ret
   14f7a:	4632                	lw	a2,12(sp)
   14f7c:	50ba                	lw	ra,172(sp)
   14f7e:	549a                	lw	s1,164(sp)
   14f80:	4ada                	lw	s5,148(sp)
   14f82:	4bba                	lw	s7,140(sp)
   14f84:	77e1                	lui	a5,0xffff8
   14f86:	00f8a023          	sw	a5,0(a7)
   14f8a:	65ed                	lui	a1,0x1b
   14f8c:	46a1                	li	a3,8
   14f8e:	a4058593          	addi	a1,a1,-1472 # 1aa40 <__clzsi2+0xc8>
   14f92:	614d                	addi	sp,sp,176
   14f94:	2df0006f          	j	15a72 <__nrv_alloc_D2A>
   14f98:	85ea                	mv	a1,s10
   14f9a:	8522                	mv	a0,s0
   14f9c:	cc46                	sw	a7,24(sp)
   14f9e:	c842                	sw	a6,16(sp)
   14fa0:	360010ef          	jal	16300 <__lshift>
   14fa4:	4842                	lw	a6,16(sp)
   14fa6:	48e2                	lw	a7,24(sp)
   14fa8:	8d2a                	mv	s10,a0
   14faa:	de051de3          	bnez	a0,14da4 <__gdtoa+0x336>
   14fae:	542a                	lw	s0,168(sp)
   14fb0:	590a                	lw	s2,160(sp)
   14fb2:	49fa                	lw	s3,156(sp)
   14fb4:	4a6a                	lw	s4,152(sp)
   14fb6:	4c2a                	lw	s8,136(sp)
   14fb8:	4c9a                	lw	s9,132(sp)
   14fba:	4d0a                	lw	s10,128(sp)
   14fbc:	5df6                	lw	s11,124(sp)
   14fbe:	4881                	li	a7,0
   14fc0:	b76d                	j	14f6a <__gdtoa+0x4fc>
   14fc2:	000ca823          	sw	zero,16(s9)
   14fc6:	b649                	j	14b48 <__gdtoa+0xda>
   14fc8:	4785                	li	a5,1
   14fca:	cabe                	sw	a5,84(sp)
   14fcc:	cc02                	sw	zero,24(sp)
   14fce:	1a0ec163          	bltz	t4,15170 <__gdtoa+0x702>
   14fd2:	c40859e3          	bgez	a6,14c24 <__gdtoa+0x1b6>
   14fd6:	47e2                	lw	a5,24(sp)
   14fd8:	da42                	sw	a6,52(sp)
   14fda:	410787b3          	sub	a5,a5,a6
   14fde:	cc3e                	sw	a5,24(sp)
   14fe0:	410007b3          	neg	a5,a6
   14fe4:	d83e                	sw	a5,48(sp)
   14fe6:	4801                	li	a6,0
   14fe8:	b189                	j	14c2a <__gdtoa+0x1bc>
   14fea:	85aa                	mv	a1,a0
   14fec:	8566                	mv	a0,s9
   14fee:	45b000ef          	jal	15c48 <__rshift_D2A>
   14ff2:	5636                	lw	a2,108(sp)
   14ff4:	47c2                	lw	a5,16(sp)
   14ff6:	40cd8db3          	sub	s11,s11,a2
   14ffa:	00f60c33          	add	s8,a2,a5
   14ffe:	bea1                	j	14b56 <__gdtoa+0xe8>
   15000:	3fd88893          	addi	a7,a7,1021
   15004:	7f88b793          	sltiu	a5,a7,2040
   15008:	ccbe                	sw	a5,88(sp)
   1500a:	4901                	li	s2,0
   1500c:	ed01b707          	fld	fa4,-304(gp) # 1c930 <__SDATA_BEGIN__+0x28>
   15010:	d20d07d3          	fcvt.d.w	fa5,s10
   15014:	4785                	li	a5,1
   15016:	c8be                	sw	a5,80(sp)
   15018:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   1501c:	57fd                	li	a5,-1
   1501e:	d402                	sw	zero,40(sp)
   15020:	cebe                	sw	a5,92(sp)
   15022:	d63e                	sw	a5,44(sp)
   15024:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   15028:	058d                	addi	a1,a1,3
   1502a:	862e                	mv	a2,a1
   1502c:	b181                	j	14c6c <__gdtoa+0x1fe>
   1502e:	5782                	lw	a5,32(sp)
   15030:	460d                	li	a2,3
   15032:	40f607b3          	sub	a5,a2,a5
   15036:	d03e                	sw	a5,32(sp)
   15038:	57b2                	lw	a5,44(sp)
   1503a:	4639                	li	a2,14
   1503c:	c6f663e3          	bltu	a2,a5,14ca2 <__gdtoa+0x234>
   15040:	4766                	lw	a4,88(sp)
   15042:	c60700e3          	beqz	a4,14ca2 <__gdtoa+0x234>
   15046:	5752                	lw	a4,52(sp)
   15048:	5682                	lw	a3,32(sp)
   1504a:	00d76633          	or	a2,a4,a3
   1504e:	c4061ae3          	bnez	a2,14ca2 <__gdtoa+0x234>
   15052:	4756                	lw	a4,84(sp)
   15054:	d682                	sw	zero,108(sp)
   15056:	d07a                	sw	t5,32(sp)
   15058:	d27e                	sw	t6,36(sp)
   1505a:	cb11                	beqz	a4,1506e <__gdtoa+0x600>
   1505c:	dc7a                	sw	t5,56(sp)
   1505e:	de7e                	sw	t6,60(sp)
   15060:	ed81b787          	fld	fa5,-296(gp) # 1c938 <__SDATA_BEGIN__+0x30>
   15064:	3762                	fld	fa4,56(sp)
   15066:	a2f71653          	flt.d	a2,fa4,fa5
   1506a:	7a061163          	bnez	a2,1580c <__gdtoa+0xd9e>
   1506e:	ef81b707          	fld	fa4,-264(gp) # 1c958 <__SDATA_BEGIN__+0x50>
   15072:	ef01b787          	fld	fa5,-272(gp) # 1c950 <__SDATA_BEGIN__+0x48>
   15076:	3682                	fld	fa3,32(sp)
   15078:	57b2                	lw	a5,44(sp)
   1507a:	fcc00637          	lui	a2,0xfcc00
   1507e:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   15082:	bc3e                	fsd	fa5,56(sp)
   15084:	5562                	lw	a0,56(sp)
   15086:	55f2                	lw	a1,60(sp)
   15088:	832a                	mv	t1,a0
   1508a:	962e                	add	a2,a2,a1
   1508c:	5c078063          	beqz	a5,1564c <__gdtoa+0xbde>
   15090:	3782                	fld	fa5,32(sp)
   15092:	5532                	lw	a0,44(sp)
   15094:	4381                	li	t2,0
   15096:	bc3e                	fsd	fa5,56(sp)
   15098:	65ed                	lui	a1,0x1b
   1509a:	fff50793          	addi	a5,a0,-1
   1509e:	078e                	slli	a5,a5,0x3
   150a0:	df858293          	addi	t0,a1,-520 # 1adf8 <__mprec_tens>
   150a4:	005786b3          	add	a3,a5,t0
   150a8:	229c                	fld	fa5,0(a3)
   150aa:	46c6                	lw	a3,80(sp)
   150ac:	871a                	mv	a4,t1
   150ae:	87b2                	mv	a5,a2
   150b0:	6c068163          	beqz	a3,15772 <__gdtoa+0xd04>
   150b4:	3762                	fld	fa4,56(sp)
   150b6:	36e2                	fld	fa3,56(sp)
   150b8:	c2071353          	fcvt.w.d	t1,fa4,rtz
   150bc:	f081b707          	fld	fa4,-248(gp) # 1c968 <__SDATA_BEGIN__+0x60>
   150c0:	dc3a                	sw	a4,56(sp)
   150c2:	de3e                	sw	a5,60(sp)
   150c4:	1af77753          	fdiv.d	fa4,fa4,fa5
   150c8:	d20307d3          	fcvt.d.w	fa5,t1
   150cc:	03030313          	addi	t1,t1,48
   150d0:	00688023          	sb	t1,0(a7)
   150d4:	0af6f7d3          	fsub.d	fa5,fa3,fa5
   150d8:	36e2                	fld	fa3,56(sp)
   150da:	00188613          	addi	a2,a7,1
   150de:	0ad77753          	fsub.d	fa4,fa4,fa3
   150e2:	a2e79353          	flt.d	t1,fa5,fa4
   150e6:	7c031e63          	bnez	t1,158c2 <__gdtoa+0xe54>
   150ea:	ed81b587          	fld	fa1,-296(gp) # 1c938 <__SDATA_BEGIN__+0x30>
   150ee:	ee01b607          	fld	fa2,-288(gp) # 1c940 <__SDATA_BEGIN__+0x38>
   150f2:	a80d                	j	15124 <__gdtoa+0x6b6>
   150f4:	57b6                	lw	a5,108(sp)
   150f6:	0605                	addi	a2,a2,1 # fcc00001 <__BSS_END__+0xfcbe3355>
   150f8:	0785                	addi	a5,a5,1 # ffff8001 <__BSS_END__+0xfffdb355>
   150fa:	d6be                	sw	a5,108(sp)
   150fc:	7ea7d163          	bge	a5,a0,158de <__gdtoa+0xe70>
   15100:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   15104:	12c77753          	fmul.d	fa4,fa4,fa2
   15108:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   1510c:	d20786d3          	fcvt.d.w	fa3,a5
   15110:	03078793          	addi	a5,a5,48
   15114:	fef60fa3          	sb	a5,-1(a2)
   15118:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   1511c:	a2e797d3          	flt.d	a5,fa5,fa4
   15120:	7a079163          	bnez	a5,158c2 <__gdtoa+0xe54>
   15124:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   15128:	a2e697d3          	flt.d	a5,fa3,fa4
   1512c:	d7e1                	beqz	a5,150f4 <__gdtoa+0x686>
   1512e:	fff64683          	lbu	a3,-1(a2)
   15132:	00138513          	addi	a0,t2,1
   15136:	03900593          	li	a1,57
   1513a:	a031                	j	15146 <__gdtoa+0x6d8>
   1513c:	62f88763          	beq	a7,a5,1576a <__gdtoa+0xcfc>
   15140:	fff7c683          	lbu	a3,-1(a5)
   15144:	863e                	mv	a2,a5
   15146:	fff60793          	addi	a5,a2,-1
   1514a:	feb689e3          	beq	a3,a1,1513c <__gdtoa+0x6ce>
   1514e:	0685                	addi	a3,a3,1
   15150:	0ff6f693          	zext.b	a3,a3
   15154:	00d78023          	sb	a3,0(a5)
   15158:	892a                	mv	s2,a0
   1515a:	02000b13          	li	s6,32
   1515e:	a0e5                	j	15246 <__gdtoa+0x7d8>
   15160:	542a                	lw	s0,168(sp)
   15162:	590a                	lw	s2,160(sp)
   15164:	49fa                	lw	s3,156(sp)
   15166:	4a6a                	lw	s4,152(sp)
   15168:	4c9a                	lw	s9,132(sp)
   1516a:	4d0a                	lw	s10,128(sp)
   1516c:	4881                	li	a7,0
   1516e:	bbf5                	j	14f6a <__gdtoa+0x4fc>
   15170:	4605                	li	a2,1
   15172:	40a607b3          	sub	a5,a2,a0
   15176:	cc3e                	sw	a5,24(sp)
   15178:	4e81                	li	t4,0
   1517a:	e4084ee3          	bltz	a6,14fd6 <__gdtoa+0x568>
   1517e:	b45d                	j	14c24 <__gdtoa+0x1b6>
   15180:	47e2                	lw	a5,24(sp)
   15182:	5d42                	lw	s10,48(sp)
   15184:	4c01                	li	s8,0
   15186:	dc3e                	sw	a5,56(sp)
   15188:	b671                	j	14d14 <__gdtoa+0x2a6>
   1518a:	4789                	li	a5,2
   1518c:	d03e                	sw	a5,32(sp)
   1518e:	b631                	j	14c9a <__gdtoa+0x22c>
   15190:	187d                	addi	a6,a6,-1
   15192:	ca82                	sw	zero,84(sp)
   15194:	bd25                	j	14fcc <__gdtoa+0x55e>
   15196:	1971                	addi	s2,s2,-4
   15198:	4591                	li	a1,4
   1519a:	10b90263          	beq	s2,a1,1529e <__gdtoa+0x830>
   1519e:	42c90263          	beq	s2,a2,155c2 <__gdtoa+0xb54>
   151a2:	4609                	li	a2,2
   151a4:	cc82                	sw	zero,88(sp)
   151a6:	c882                	sw	zero,80(sp)
   151a8:	0ec90e63          	beq	s2,a2,152a4 <__gdtoa+0x836>
   151ac:	490d                	li	s2,3
   151ae:	b46d                	j	14c58 <__gdtoa+0x1ea>
   151b0:	66ed                	lui	a3,0x1b
   151b2:	078e                	slli	a5,a5,0x3
   151b4:	df868693          	addi	a3,a3,-520 # 1adf8 <__mprec_tens>
   151b8:	97b6                	add	a5,a5,a3
   151ba:	2398                	fld	fa4,0(a5)
   151bc:	57a2                	lw	a5,40(sp)
   151be:	3207c263          	bltz	a5,154e2 <__gdtoa+0xa74>
   151c2:	c87a                	sw	t5,16(sp)
   151c4:	ca7e                	sw	t6,20(sp)
   151c6:	27c2                	fld	fa5,16(sp)
   151c8:	4785                	li	a5,1
   151ca:	d6be                	sw	a5,108(sp)
   151cc:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   151d0:	57d2                	lw	a5,52(sp)
   151d2:	26c2                	fld	fa3,16(sp)
   151d4:	00188613          	addi	a2,a7,1
   151d8:	00178513          	addi	a0,a5,1
   151dc:	892a                	mv	s2,a0
   151de:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   151e2:	d20787d3          	fcvt.d.w	fa5,a5
   151e6:	03078693          	addi	a3,a5,48
   151ea:	00d88023          	sb	a3,0(a7)
   151ee:	6af777cb          	fnmsub.d	fa5,fa4,fa5,fa3
   151f2:	d20006d3          	fcvt.d.w	fa3,zero
   151f6:	a2d7a6d3          	feq.d	a3,fa5,fa3
   151fa:	e6b1                	bnez	a3,15246 <__gdtoa+0x7d8>
   151fc:	ee01b587          	fld	fa1,-288(gp) # 1c940 <__SDATA_BEGIN__+0x38>
   15200:	22d68653          	fmv.d	fa2,fa3
   15204:	55b2                	lw	a1,44(sp)
   15206:	a025                	j	1522e <__gdtoa+0x7c0>
   15208:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   1520c:	d6b6                	sw	a3,108(sp)
   1520e:	0605                	addi	a2,a2,1
   15210:	1ae7f6d3          	fdiv.d	fa3,fa5,fa4
   15214:	c20697d3          	fcvt.w.d	a5,fa3,rtz
   15218:	d20786d3          	fcvt.d.w	fa3,a5
   1521c:	03078713          	addi	a4,a5,48
   15220:	fee60fa3          	sb	a4,-1(a2)
   15224:	7ae6f7cb          	fnmsub.d	fa5,fa3,fa4,fa5
   15228:	a2c7a753          	feq.d	a4,fa5,fa2
   1522c:	ef09                	bnez	a4,15246 <__gdtoa+0x7d8>
   1522e:	5736                	lw	a4,108(sp)
   15230:	00170693          	addi	a3,a4,1
   15234:	fcb71ae3          	bne	a4,a1,15208 <__gdtoa+0x79a>
   15238:	5702                	lw	a4,32(sp)
   1523a:	4e070e63          	beqz	a4,15736 <__gdtoa+0xcc8>
   1523e:	4785                	li	a5,1
   15240:	4b41                	li	s6,16
   15242:	60f70263          	beq	a4,a5,15846 <__gdtoa+0xdd8>
   15246:	85e6                	mv	a1,s9
   15248:	8522                	mv	a0,s0
   1524a:	d446                	sw	a7,40(sp)
   1524c:	c832                	sw	a2,16(sp)
   1524e:	345000ef          	jal	15d92 <_Bfree>
   15252:	4642                	lw	a2,16(sp)
   15254:	47b2                	lw	a5,12(sp)
   15256:	58a2                	lw	a7,40(sp)
   15258:	00060023          	sb	zero,0(a2)
   1525c:	0124a023          	sw	s2,0(s1)
   15260:	c391                	beqz	a5,15264 <__gdtoa+0x7f6>
   15262:	c390                	sw	a2,0(a5)
   15264:	000ba783          	lw	a5,0(s7)
   15268:	542a                	lw	s0,168(sp)
   1526a:	590a                	lw	s2,160(sp)
   1526c:	0167e7b3          	or	a5,a5,s6
   15270:	49fa                	lw	s3,156(sp)
   15272:	4a6a                	lw	s4,152(sp)
   15274:	4c2a                	lw	s8,136(sp)
   15276:	4c9a                	lw	s9,132(sp)
   15278:	4d0a                	lw	s10,128(sp)
   1527a:	5df6                	lw	s11,124(sp)
   1527c:	00fba023          	sw	a5,0(s7)
   15280:	b1ed                	j	14f6a <__gdtoa+0x4fc>
   15282:	b0dd90e3          	bne	s11,a3,14d82 <__gdtoa+0x314>
   15286:	004a2783          	lw	a5,4(s4)
   1528a:	4742                	lw	a4,16(sp)
   1528c:	0785                	addi	a5,a5,1
   1528e:	aee7dae3          	bge	a5,a4,14d82 <__gdtoa+0x314>
   15292:	47e2                	lw	a5,24(sp)
   15294:	0e85                	addi	t4,t4,1
   15296:	4805                	li	a6,1
   15298:	0785                	addi	a5,a5,1
   1529a:	cc3e                	sw	a5,24(sp)
   1529c:	b4dd                	j	14d82 <__gdtoa+0x314>
   1529e:	4785                	li	a5,1
   152a0:	cc82                	sw	zero,88(sp)
   152a2:	c8be                	sw	a5,80(sp)
   152a4:	55a2                	lw	a1,40(sp)
   152a6:	00b04363          	bgtz	a1,152ac <__gdtoa+0x83e>
   152aa:	4585                	li	a1,1
   152ac:	862e                	mv	a2,a1
   152ae:	ceae                	sw	a1,92(sp)
   152b0:	d62e                	sw	a1,44(sp)
   152b2:	d42e                	sw	a1,40(sp)
   152b4:	ba65                	j	14c6c <__gdtoa+0x1fe>
   152b6:	2ef000ef          	jal	15da4 <__multadd>
   152ba:	8c2a                	mv	s8,a0
   152bc:	ce0509e3          	beqz	a0,14fae <__gdtoa+0x540>
   152c0:	8a2a                	mv	s4,a0
   152c2:	beb5                	j	14e3e <__gdtoa+0x3d0>
   152c4:	b20adae3          	bgez	s5,14df8 <__gdtoa+0x38a>
   152c8:	5782                	lw	a5,32(sp)
   152ca:	835e                	mv	t1,s7
   152cc:	58a2                	lw	a7,40(sp)
   152ce:	4be2                	lw	s7,24(sp)
   152d0:	54b2                	lw	s1,44(sp)
   152d2:	8b3a                	mv	s6,a4
   152d4:	6c079463          	bnez	a5,1599c <__gdtoa+0xf2e>
   152d8:	010ca603          	lw	a2,16(s9)
   152dc:	4685                	li	a3,1
   152de:	4b41                	li	s6,16
   152e0:	001d8913          	addi	s2,s11,1
   152e4:	68c6d463          	bge	a3,a2,1596c <__gdtoa+0xefe>
   152e8:	89e2                	mv	s3,s8
   152ea:	864a                	mv	a2,s2
   152ec:	006d8023          	sb	t1,0(s11)
   152f0:	8c52                	mv	s8,s4
   152f2:	85ea                	mv	a1,s10
   152f4:	8522                	mv	a0,s0
   152f6:	d446                	sw	a7,40(sp)
   152f8:	c832                	sw	a2,16(sp)
   152fa:	299000ef          	jal	15d92 <_Bfree>
   152fe:	57d2                	lw	a5,52(sp)
   15300:	4642                	lw	a2,16(sp)
   15302:	58a2                	lw	a7,40(sp)
   15304:	00178913          	addi	s2,a5,1
   15308:	f20c0fe3          	beqz	s8,15246 <__gdtoa+0x7d8>
   1530c:	00098a63          	beqz	s3,15320 <__gdtoa+0x8b2>
   15310:	01898863          	beq	s3,s8,15320 <__gdtoa+0x8b2>
   15314:	85ce                	mv	a1,s3
   15316:	8522                	mv	a0,s0
   15318:	27b000ef          	jal	15d92 <_Bfree>
   1531c:	58a2                	lw	a7,40(sp)
   1531e:	4642                	lw	a2,16(sp)
   15320:	85e2                	mv	a1,s8
   15322:	8522                	mv	a0,s0
   15324:	d446                	sw	a7,40(sp)
   15326:	c832                	sw	a2,16(sp)
   15328:	26b000ef          	jal	15d92 <_Bfree>
   1532c:	58a2                	lw	a7,40(sp)
   1532e:	4642                	lw	a2,16(sp)
   15330:	bf19                	j	15246 <__gdtoa+0x7d8>
   15332:	85e6                	mv	a1,s9
   15334:	8522                	mv	a0,s0
   15336:	d846                	sw	a7,48(sp)
   15338:	cc76                	sw	t4,24(sp)
   1533a:	c842                	sw	a6,16(sp)
   1533c:	7c5000ef          	jal	16300 <__lshift>
   15340:	8caa                	mv	s9,a0
   15342:	c60506e3          	beqz	a0,14fae <__gdtoa+0x540>
   15346:	57b6                	lw	a5,108(sp)
   15348:	58c2                	lw	a7,48(sp)
   1534a:	4ee2                	lw	t4,24(sp)
   1534c:	4842                	lw	a6,16(sp)
   1534e:	b4b9                	j	14d9c <__gdtoa+0x32e>
   15350:	85ea                	mv	a1,s10
   15352:	8566                	mv	a0,s9
   15354:	cc46                	sw	a7,24(sp)
   15356:	c842                	sw	a6,16(sp)
   15358:	0b6010ef          	jal	1640e <__mcmp>
   1535c:	4842                	lw	a6,16(sp)
   1535e:	48e2                	lw	a7,24(sp)
   15360:	a40555e3          	bgez	a0,14daa <__gdtoa+0x33c>
   15364:	57d2                	lw	a5,52(sp)
   15366:	85e6                	mv	a1,s9
   15368:	4681                	li	a3,0
   1536a:	17fd                	addi	a5,a5,-1
   1536c:	4629                	li	a2,10
   1536e:	8522                	mv	a0,s0
   15370:	da3e                	sw	a5,52(sp)
   15372:	233000ef          	jal	15da4 <__multadd>
   15376:	8caa                	mv	s9,a0
   15378:	c2050be3          	beqz	a0,14fae <__gdtoa+0x540>
   1537c:	47c6                	lw	a5,80(sp)
   1537e:	48e2                	lw	a7,24(sp)
   15380:	50079a63          	bnez	a5,15894 <__gdtoa+0xe26>
   15384:	47f6                	lw	a5,92(sp)
   15386:	14f05863          	blez	a5,154d6 <__gdtoa+0xa68>
   1538a:	d63e                	sw	a5,44(sp)
   1538c:	5932                	lw	s2,44(sp)
   1538e:	8dc6                	mv	s11,a7
   15390:	4685                	li	a3,1
   15392:	89c6                	mv	s3,a7
   15394:	a801                	j	153a4 <__gdtoa+0x936>
   15396:	20f000ef          	jal	15da4 <__multadd>
   1539a:	8caa                	mv	s9,a0
   1539c:	c00509e3          	beqz	a0,14fae <__gdtoa+0x540>
   153a0:	56b6                	lw	a3,108(sp)
   153a2:	0685                	addi	a3,a3,1
   153a4:	85ea                	mv	a1,s10
   153a6:	8566                	mv	a0,s9
   153a8:	d6b6                	sw	a3,108(sp)
   153aa:	27a1                	jal	15af2 <__quorem_D2A>
   153ac:	03050313          	addi	t1,a0,48
   153b0:	006d8023          	sb	t1,0(s11)
   153b4:	57b6                	lw	a5,108(sp)
   153b6:	4681                	li	a3,0
   153b8:	4629                	li	a2,10
   153ba:	85e6                	mv	a1,s9
   153bc:	8522                	mv	a0,s0
   153be:	0d85                	addi	s11,s11,1
   153c0:	fd27cbe3          	blt	a5,s2,15396 <__gdtoa+0x928>
   153c4:	88ce                	mv	a7,s3
   153c6:	4981                	li	s3,0
   153c8:	5782                	lw	a5,32(sp)
   153ca:	2c078263          	beqz	a5,1568e <__gdtoa+0xc20>
   153ce:	4689                	li	a3,2
   153d0:	010ca603          	lw	a2,16(s9)
   153d4:	2ed78363          	beq	a5,a3,156ba <__gdtoa+0xc4c>
   153d8:	4685                	li	a3,1
   153da:	1ac6c763          	blt	a3,a2,15588 <__gdtoa+0xb1a>
   153de:	014ca683          	lw	a3,20(s9)
   153e2:	1a069363          	bnez	a3,15588 <__gdtoa+0xb1a>
   153e6:	00d036b3          	snez	a3,a3
   153ea:	00469b13          	slli	s6,a3,0x4
   153ee:	03000593          	li	a1,48
   153f2:	fffdc783          	lbu	a5,-1(s11)
   153f6:	866e                	mv	a2,s11
   153f8:	1dfd                	addi	s11,s11,-1
   153fa:	feb78ce3          	beq	a5,a1,153f2 <__gdtoa+0x984>
   153fe:	bdd5                	j	152f2 <__gdtoa+0x884>
   15400:	57b2                	lw	a5,44(sp)
   15402:	5742                	lw	a4,48(sp)
   15404:	fff78693          	addi	a3,a5,-1
   15408:	10d74463          	blt	a4,a3,15510 <__gdtoa+0xaa2>
   1540c:	40d70d33          	sub	s10,a4,a3
   15410:	4407d263          	bgez	a5,15854 <__gdtoa+0xde6>
   15414:	47e2                	lw	a5,24(sp)
   15416:	5732                	lw	a4,44(sp)
   15418:	d682                	sw	zero,108(sp)
   1541a:	8f99                	sub	a5,a5,a4
   1541c:	dc3e                	sw	a5,56(sp)
   1541e:	b8f1                	j	14cfa <__gdtoa+0x28c>
   15420:	4789                	li	a5,2
   15422:	9927d7e3          	bge	a5,s2,14db0 <__gdtoa+0x342>
   15426:	85ea                	mv	a1,s10
   15428:	4681                	li	a3,0
   1542a:	4615                	li	a2,5
   1542c:	8522                	mv	a0,s0
   1542e:	c846                	sw	a7,16(sp)
   15430:	175000ef          	jal	15da4 <__multadd>
   15434:	85aa                	mv	a1,a0
   15436:	b6050ce3          	beqz	a0,14fae <__gdtoa+0x540>
   1543a:	57b2                	lw	a5,44(sp)
   1543c:	48c2                	lw	a7,16(sp)
   1543e:	e3f9                	bnez	a5,15504 <__gdtoa+0xa96>
   15440:	c82a                	sw	a0,16(sp)
   15442:	8566                	mv	a0,s9
   15444:	cc46                	sw	a7,24(sp)
   15446:	7c9000ef          	jal	1640e <__mcmp>
   1544a:	45c2                	lw	a1,16(sp)
   1544c:	48e2                	lw	a7,24(sp)
   1544e:	0aa05b63          	blez	a0,15504 <__gdtoa+0xa96>
   15452:	57d2                	lw	a5,52(sp)
   15454:	00278913          	addi	s2,a5,2
   15458:	03100793          	li	a5,49
   1545c:	00188613          	addi	a2,a7,1
   15460:	00f88023          	sb	a5,0(a7)
   15464:	02000b13          	li	s6,32
   15468:	8522                	mv	a0,s0
   1546a:	d446                	sw	a7,40(sp)
   1546c:	c832                	sw	a2,16(sp)
   1546e:	125000ef          	jal	15d92 <_Bfree>
   15472:	4642                	lw	a2,16(sp)
   15474:	58a2                	lw	a7,40(sp)
   15476:	dc0c08e3          	beqz	s8,15246 <__gdtoa+0x7d8>
   1547a:	b55d                	j	15320 <__gdtoa+0x8b2>
   1547c:	4605                	li	a2,1
   1547e:	4585                	li	a1,1
   15480:	fecff06f          	j	14c6c <__gdtoa+0x1fe>
   15484:	85aa                	mv	a1,a0
   15486:	8642                	mv	a2,a6
   15488:	8522                	mv	a0,s0
   1548a:	c0c6                	sw	a7,64(sp)
   1548c:	d876                	sw	t4,48(sp)
   1548e:	59f000ef          	jal	1622c <__pow5mult>
   15492:	8d2a                	mv	s10,a0
   15494:	b0050de3          	beqz	a0,14fae <__gdtoa+0x540>
   15498:	4685                	li	a3,1
   1549a:	5ec2                	lw	t4,48(sp)
   1549c:	4886                	lw	a7,64(sp)
   1549e:	1526d063          	bge	a3,s2,155de <__gdtoa+0xb70>
   154a2:	010d2783          	lw	a5,16(s10)
   154a6:	d846                	sw	a7,48(sp)
   154a8:	c876                	sw	t4,16(sp)
   154aa:	078d                	addi	a5,a5,3
   154ac:	078a                	slli	a5,a5,0x2
   154ae:	97ea                	add	a5,a5,s10
   154b0:	43c8                	lw	a0,4(a5)
   154b2:	29f000ef          	jal	15f50 <__hi0bits>
   154b6:	58c2                	lw	a7,48(sp)
   154b8:	4ec2                	lw	t4,16(sp)
   154ba:	8a2a                	mv	s4,a0
   154bc:	885a                	mv	a6,s6
   154be:	b0d9                	j	14d84 <__gdtoa+0x316>
   154c0:	4685                	li	a3,1
   154c2:	f326cfe3          	blt	a3,s2,15400 <__gdtoa+0x992>
   154c6:	47e2                	lw	a5,24(sp)
   154c8:	5d42                	lw	s10,48(sp)
   154ca:	9eae                	add	t4,t4,a1
   154cc:	dc3e                	sw	a5,56(sp)
   154ce:	97ae                	add	a5,a5,a1
   154d0:	cc3e                	sw	a5,24(sp)
   154d2:	829ff06f          	j	14cfa <__gdtoa+0x28c>
   154d6:	4789                	li	a5,2
   154d8:	4727ce63          	blt	a5,s2,15954 <__gdtoa+0xee6>
   154dc:	47f6                	lw	a5,92(sp)
   154de:	d63e                	sw	a5,44(sp)
   154e0:	b575                	j	1538c <__gdtoa+0x91e>
   154e2:	57b2                	lw	a5,44(sp)
   154e4:	ccf04fe3          	bgtz	a5,151c2 <__gdtoa+0x754>
   154e8:	ef81                	bnez	a5,15500 <__gdtoa+0xa92>
   154ea:	f001b787          	fld	fa5,-256(gp) # 1c960 <__SDATA_BEGIN__+0x58>
   154ee:	c87a                	sw	t5,16(sp)
   154f0:	ca7e                	sw	t6,20(sp)
   154f2:	12f77753          	fmul.d	fa4,fa4,fa5
   154f6:	27c2                	fld	fa5,16(sp)
   154f8:	a2e787d3          	fle.d	a5,fa5,fa4
   154fc:	38078663          	beqz	a5,15888 <__gdtoa+0xe1a>
   15500:	4581                	li	a1,0
   15502:	4c01                	li	s8,0
   15504:	57a2                	lw	a5,40(sp)
   15506:	8646                	mv	a2,a7
   15508:	4b41                	li	s6,16
   1550a:	40f00933          	neg	s2,a5
   1550e:	bfa9                	j	15468 <__gdtoa+0x9fa>
   15510:	57c2                	lw	a5,48(sp)
   15512:	4762                	lw	a4,24(sp)
   15514:	4d01                	li	s10,0
   15516:	40f68633          	sub	a2,a3,a5
   1551a:	57b2                	lw	a5,44(sp)
   1551c:	dc3a                	sw	a4,56(sp)
   1551e:	9832                	add	a6,a6,a2
   15520:	d6be                	sw	a5,108(sp)
   15522:	9ebe                	add	t4,t4,a5
   15524:	97ba                	add	a5,a5,a4
   15526:	cc3e                	sw	a5,24(sp)
   15528:	d836                	sw	a3,48(sp)
   1552a:	fd0ff06f          	j	14cfa <__gdtoa+0x28c>
   1552e:	85e2                	mv	a1,s8
   15530:	866a                	mv	a2,s10
   15532:	8522                	mv	a0,s0
   15534:	ccc6                	sw	a7,88(sp)
   15536:	c4f6                	sw	t4,72(sp)
   15538:	c0c2                	sw	a6,64(sp)
   1553a:	4f3000ef          	jal	1622c <__pow5mult>
   1553e:	8c2a                	mv	s8,a0
   15540:	a60507e3          	beqz	a0,14fae <__gdtoa+0x540>
   15544:	85aa                	mv	a1,a0
   15546:	8666                	mv	a2,s9
   15548:	8522                	mv	a0,s0
   1554a:	34d000ef          	jal	16096 <__multiply>
   1554e:	8aaa                	mv	s5,a0
   15550:	a4050fe3          	beqz	a0,14fae <__gdtoa+0x540>
   15554:	85e6                	mv	a1,s9
   15556:	8522                	mv	a0,s0
   15558:	03b000ef          	jal	15d92 <_Bfree>
   1555c:	57c2                	lw	a5,48(sp)
   1555e:	4806                	lw	a6,64(sp)
   15560:	4ea6                	lw	t4,72(sp)
   15562:	41a787b3          	sub	a5,a5,s10
   15566:	d83e                	sw	a5,48(sp)
   15568:	48e6                	lw	a7,88(sp)
   1556a:	8cd6                	mv	s9,s5
   1556c:	fe078963          	beqz	a5,14d5e <__gdtoa+0x2f0>
   15570:	fd2ff06f          	j	14d42 <__gdtoa+0x2d4>
   15574:	89e2                	mv	s3,s8
   15576:	86ee                	mv	a3,s11
   15578:	001d8913          	addi	s2,s11,1
   1557c:	8c52                	mv	s8,s4
   1557e:	03900613          	li	a2,57
   15582:	8dca                	mv	s11,s2
   15584:	00c68023          	sb	a2,0(a3)
   15588:	03900593          	li	a1,57
   1558c:	a019                	j	15592 <__gdtoa+0xb24>
   1558e:	13b88f63          	beq	a7,s11,156cc <__gdtoa+0xc5e>
   15592:	fffdc683          	lbu	a3,-1(s11)
   15596:	866e                	mv	a2,s11
   15598:	1dfd                	addi	s11,s11,-1
   1559a:	feb68ae3          	beq	a3,a1,1558e <__gdtoa+0xb20>
   1559e:	0685                	addi	a3,a3,1
   155a0:	00dd8023          	sb	a3,0(s11)
   155a4:	02000b13          	li	s6,32
   155a8:	b3a9                	j	152f2 <__gdtoa+0x884>
   155aa:	85e2                	mv	a1,s8
   155ac:	8522                	mv	a0,s0
   155ae:	d446                	sw	a7,40(sp)
   155b0:	c842                	sw	a6,16(sp)
   155b2:	54f000ef          	jal	16300 <__lshift>
   155b6:	4842                	lw	a6,16(sp)
   155b8:	58a2                	lw	a7,40(sp)
   155ba:	8c2a                	mv	s8,a0
   155bc:	800512e3          	bnez	a0,14dc0 <__gdtoa+0x352>
   155c0:	b2fd                	j	14fae <__gdtoa+0x540>
   155c2:	4785                	li	a5,1
   155c4:	cc82                	sw	zero,88(sp)
   155c6:	c8be                	sw	a5,80(sp)
   155c8:	e90ff06f          	j	14c58 <__gdtoa+0x1ea>
   155cc:	4785                	li	a5,1
   155ce:	c8be                	sw	a5,80(sp)
   155d0:	e88ff06f          	j	14c58 <__gdtoa+0x1ea>
   155d4:	4785                	li	a5,1
   155d6:	c8be                	sw	a5,80(sp)
   155d8:	b1f1                	j	152a4 <__gdtoa+0x836>
   155da:	c882                	sw	zero,80(sp)
   155dc:	b1e1                	j	152a4 <__gdtoa+0x836>
   155de:	ecdd92e3          	bne	s11,a3,154a2 <__gdtoa+0xa34>
   155e2:	004a2783          	lw	a5,4(s4)
   155e6:	4742                	lw	a4,16(sp)
   155e8:	0785                	addi	a5,a5,1
   155ea:	eae7dce3          	bge	a5,a4,154a2 <__gdtoa+0xa34>
   155ee:	47e2                	lw	a5,24(sp)
   155f0:	0e85                	addi	t4,t4,1
   155f2:	4b05                	li	s6,1
   155f4:	0785                	addi	a5,a5,1
   155f6:	cc3e                	sw	a5,24(sp)
   155f8:	b56d                	j	154a2 <__gdtoa+0xa34>
   155fa:	004c2583          	lw	a1,4(s8)
   155fe:	8522                	mv	a0,s0
   15600:	c846                	sw	a7,16(sp)
   15602:	2715                	jal	15d26 <_Balloc>
   15604:	8a2a                	mv	s4,a0
   15606:	9a0504e3          	beqz	a0,14fae <__gdtoa+0x540>
   1560a:	010c2603          	lw	a2,16(s8)
   1560e:	00cc0593          	addi	a1,s8,12
   15612:	0531                	addi	a0,a0,12
   15614:	0609                	addi	a2,a2,2
   15616:	060a                	slli	a2,a2,0x2
   15618:	f1bfe0ef          	jal	14532 <memcpy>
   1561c:	85d2                	mv	a1,s4
   1561e:	4605                	li	a2,1
   15620:	8522                	mv	a0,s0
   15622:	4df000ef          	jal	16300 <__lshift>
   15626:	48c2                	lw	a7,16(sp)
   15628:	8a2a                	mv	s4,a0
   1562a:	f8051e63          	bnez	a0,14dc6 <__gdtoa+0x358>
   1562e:	b241                	j	14fae <__gdtoa+0x540>
   15630:	ef81b707          	fld	fa4,-264(gp) # 1c958 <__SDATA_BEGIN__+0x50>
   15634:	ef01b787          	fld	fa5,-272(gp) # 1c950 <__SDATA_BEGIN__+0x48>
   15638:	3682                	fld	fa3,32(sp)
   1563a:	fcc00637          	lui	a2,0xfcc00
   1563e:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   15642:	bc3e                	fsd	fa5,56(sp)
   15644:	5562                	lw	a0,56(sp)
   15646:	55f2                	lw	a1,60(sp)
   15648:	832a                	mv	t1,a0
   1564a:	962e                	add	a2,a2,a1
   1564c:	de32                	sw	a2,60(sp)
   1564e:	f001b707          	fld	fa4,-256(gp) # 1c960 <__SDATA_BEGIN__+0x58>
   15652:	3782                	fld	fa5,32(sp)
   15654:	dc1a                	sw	t1,56(sp)
   15656:	0ae7f753          	fsub.d	fa4,fa5,fa4
   1565a:	37e2                	fld	fa5,56(sp)
   1565c:	a2e79653          	flt.d	a2,fa5,fa4
   15660:	1e061663          	bnez	a2,1584c <__gdtoa+0xdde>
   15664:	22f797d3          	fneg.d	fa5,fa5
   15668:	a2f71653          	flt.d	a2,fa4,fa5
   1566c:	e8061ae3          	bnez	a2,15500 <__gdtoa+0xa92>
   15670:	5f02                	lw	t5,32(sp)
   15672:	5f92                	lw	t6,36(sp)
   15674:	65ed                	lui	a1,0x1b
   15676:	280c4b63          	bltz	s8,1590c <__gdtoa+0xe9e>
   1567a:	57a2                	lw	a5,40(sp)
   1567c:	d002                	sw	zero,32(sp)
   1567e:	df85b707          	fld	fa4,-520(a1) # 1adf8 <__mprec_tens>
   15682:	b407d0e3          	bgez	a5,151c2 <__gdtoa+0x754>
   15686:	57b2                	lw	a5,44(sp)
   15688:	b2079de3          	bnez	a5,151c2 <__gdtoa+0x754>
   1568c:	bdb9                	j	154ea <__gdtoa+0xa7c>
   1568e:	85e6                	mv	a1,s9
   15690:	4605                	li	a2,1
   15692:	8522                	mv	a0,s0
   15694:	c846                	sw	a7,16(sp)
   15696:	d41a                	sw	t1,40(sp)
   15698:	469000ef          	jal	16300 <__lshift>
   1569c:	8caa                	mv	s9,a0
   1569e:	900508e3          	beqz	a0,14fae <__gdtoa+0x540>
   156a2:	85ea                	mv	a1,s10
   156a4:	56b000ef          	jal	1640e <__mcmp>
   156a8:	48c2                	lw	a7,16(sp)
   156aa:	eca04fe3          	bgtz	a0,15588 <__gdtoa+0xb1a>
   156ae:	e511                	bnez	a0,156ba <__gdtoa+0xc4c>
   156b0:	5322                	lw	t1,40(sp)
   156b2:	00137313          	andi	t1,t1,1
   156b6:	ec0319e3          	bnez	t1,15588 <__gdtoa+0xb1a>
   156ba:	010ca603          	lw	a2,16(s9)
   156be:	4685                	li	a3,1
   156c0:	4b41                	li	s6,16
   156c2:	d2c6c6e3          	blt	a3,a2,153ee <__gdtoa+0x980>
   156c6:	014ca683          	lw	a3,20(s9)
   156ca:	bb31                	j	153e6 <__gdtoa+0x978>
   156cc:	57d2                	lw	a5,52(sp)
   156ce:	02000b13          	li	s6,32
   156d2:	0785                	addi	a5,a5,1
   156d4:	da3e                	sw	a5,52(sp)
   156d6:	03100793          	li	a5,49
   156da:	00f88023          	sb	a5,0(a7)
   156de:	b911                	j	152f2 <__gdtoa+0x884>
   156e0:	5782                	lw	a5,32(sp)
   156e2:	8926                	mv	s2,s1
   156e4:	835e                	mv	t1,s7
   156e6:	58a2                	lw	a7,40(sp)
   156e8:	4be2                	lw	s7,24(sp)
   156ea:	54b2                	lw	s1,44(sp)
   156ec:	cb91                	beqz	a5,15700 <__gdtoa+0xc92>
   156ee:	010ca603          	lw	a2,16(s9)
   156f2:	4685                	li	a3,1
   156f4:	fcc6c163          	blt	a3,a2,14eb6 <__gdtoa+0x448>
   156f8:	014ca683          	lw	a3,20(s9)
   156fc:	fa069d63          	bnez	a3,14eb6 <__gdtoa+0x448>
   15700:	85e6                	mv	a1,s9
   15702:	4605                	li	a2,1
   15704:	8522                	mv	a0,s0
   15706:	d446                	sw	a7,40(sp)
   15708:	c81a                	sw	t1,16(sp)
   1570a:	3f7000ef          	jal	16300 <__lshift>
   1570e:	8caa                	mv	s9,a0
   15710:	88050fe3          	beqz	a0,14fae <__gdtoa+0x540>
   15714:	85ea                	mv	a1,s10
   15716:	4f9000ef          	jal	1640e <__mcmp>
   1571a:	4342                	lw	t1,16(sp)
   1571c:	58a2                	lw	a7,40(sp)
   1571e:	22a05e63          	blez	a0,1595a <__gdtoa+0xeec>
   15722:	03900693          	li	a3,57
   15726:	e4d307e3          	beq	t1,a3,15574 <__gdtoa+0xb06>
   1572a:	02000793          	li	a5,32
   1572e:	03190313          	addi	t1,s2,49
   15732:	d03e                	sw	a5,32(sp)
   15734:	b655                	j	152d8 <__gdtoa+0x86a>
   15736:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   1573a:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe3353>
   1573e:	a2f715d3          	flt.d	a1,fa4,fa5
   15742:	9e059ae3          	bnez	a1,15136 <__gdtoa+0x6c8>
   15746:	a2e7a5d3          	feq.d	a1,fa5,fa4
   1574a:	c581                	beqz	a1,15752 <__gdtoa+0xce4>
   1574c:	8b85                	andi	a5,a5,1
   1574e:	9e0794e3          	bnez	a5,15136 <__gdtoa+0x6c8>
   15752:	87b2                	mv	a5,a2
   15754:	4b41                	li	s6,16
   15756:	03000593          	li	a1,48
   1575a:	fff7c703          	lbu	a4,-1(a5)
   1575e:	863e                	mv	a2,a5
   15760:	17fd                	addi	a5,a5,-1
   15762:	feb70ce3          	beq	a4,a1,1575a <__gdtoa+0xcec>
   15766:	892a                	mv	s2,a0
   15768:	bcf9                	j	15246 <__gdtoa+0x7d8>
   1576a:	03100693          	li	a3,49
   1576e:	0505                	addi	a0,a0,1
   15770:	b2d5                	j	15154 <__gdtoa+0x6e6>
   15772:	de32                	sw	a2,60(sp)
   15774:	dc1a                	sw	t1,56(sp)
   15776:	3762                	fld	fa4,56(sp)
   15778:	de7e                	sw	t6,60(sp)
   1577a:	dc7a                	sw	t5,56(sp)
   1577c:	35e2                	fld	fa1,56(sp)
   1577e:	12e7f653          	fmul.d	fa2,fa5,fa4
   15782:	ee01b707          	fld	fa4,-288(gp) # 1c940 <__SDATA_BEGIN__+0x38>
   15786:	4685                	li	a3,1
   15788:	22b587d3          	fmv.d	fa5,fa1
   1578c:	d6b6                	sw	a3,108(sp)
   1578e:	8646                	mv	a2,a7
   15790:	4f81                	li	t6,0
   15792:	a029                	j	1579c <__gdtoa+0xd2e>
   15794:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   15798:	d6ba                	sw	a4,108(sp)
   1579a:	4f85                	li	t6,1
   1579c:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   157a0:	0605                	addi	a2,a2,1
   157a2:	03078693          	addi	a3,a5,48
   157a6:	0ff6f693          	zext.b	a3,a3
   157aa:	c791                	beqz	a5,157b6 <__gdtoa+0xd48>
   157ac:	d20786d3          	fcvt.d.w	fa3,a5
   157b0:	4f85                	li	t6,1
   157b2:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   157b6:	fed60fa3          	sb	a3,-1(a2)
   157ba:	57b6                	lw	a5,108(sp)
   157bc:	00178713          	addi	a4,a5,1
   157c0:	fca79ae3          	bne	a5,a0,15794 <__gdtoa+0xd26>
   157c4:	000f8463          	beqz	t6,157cc <__gdtoa+0xd5e>
   157c8:	22f785d3          	fmv.d	fa1,fa5
   157cc:	f081b787          	fld	fa5,-248(gp) # 1c968 <__SDATA_BEGIN__+0x60>
   157d0:	02f67753          	fadd.d	fa4,fa2,fa5
   157d4:	a2b71553          	flt.d	a0,fa4,fa1
   157d8:	0e051f63          	bnez	a0,158d6 <__gdtoa+0xe68>
   157dc:	0ac7f7d3          	fsub.d	fa5,fa5,fa2
   157e0:	a2f596d3          	flt.d	a3,fa1,fa5
   157e4:	12069763          	bnez	a3,15912 <__gdtoa+0xea4>
   157e8:	5f02                	lw	t5,32(sp)
   157ea:	5f92                	lw	t6,36(sp)
   157ec:	e80c57e3          	bgez	s8,1567a <__gdtoa+0xc0c>
   157f0:	47e2                	lw	a5,24(sp)
   157f2:	5d42                	lw	s10,48(sp)
   157f4:	d002                	sw	zero,32(sp)
   157f6:	dc3e                	sw	a5,56(sp)
   157f8:	4c01                	li	s8,0
   157fa:	d1aff06f          	j	14d14 <__gdtoa+0x2a6>
   157fe:	835e                	mv	t1,s7
   15800:	89e2                	mv	s3,s8
   15802:	58a2                	lw	a7,40(sp)
   15804:	4be2                	lw	s7,24(sp)
   15806:	54b2                	lw	s1,44(sp)
   15808:	8c52                	mv	s8,s4
   1580a:	be7d                	j	153c8 <__gdtoa+0x95a>
   1580c:	e20782e3          	beqz	a5,15630 <__gdtoa+0xbc2>
   15810:	4576                	lw	a0,92(sp)
   15812:	e4a05fe3          	blez	a0,15670 <__gdtoa+0xc02>
   15816:	ee01b787          	fld	fa5,-288(gp) # 1c940 <__SDATA_BEGIN__+0x38>
   1581a:	53fd                	li	t2,-1
   1581c:	12f777d3          	fmul.d	fa5,fa4,fa5
   15820:	ee81b707          	fld	fa4,-280(gp) # 1c948 <__SDATA_BEGIN__+0x40>
   15824:	bc3e                	fsd	fa5,56(sp)
   15826:	36e2                	fld	fa3,56(sp)
   15828:	ef01b787          	fld	fa5,-272(gp) # 1c950 <__SDATA_BEGIN__+0x48>
   1582c:	fcc00637          	lui	a2,0xfcc00
   15830:	5f62                	lw	t5,56(sp)
   15832:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   15836:	5ff2                	lw	t6,60(sp)
   15838:	a0be                	fsd	fa5,64(sp)
   1583a:	4706                	lw	a4,64(sp)
   1583c:	4796                	lw	a5,68(sp)
   1583e:	833a                	mv	t1,a4
   15840:	963e                	add	a2,a2,a5
   15842:	857ff06f          	j	15098 <__gdtoa+0x62a>
   15846:	fff64683          	lbu	a3,-1(a2) # fcbfffff <__BSS_END__+0xfcbe3353>
   1584a:	b0f5                	j	15136 <__gdtoa+0x6c8>
   1584c:	4909                	li	s2,2
   1584e:	4581                	li	a1,0
   15850:	4c01                	li	s8,0
   15852:	b119                	j	15458 <__gdtoa+0x9ea>
   15854:	4762                	lw	a4,24(sp)
   15856:	d6be                	sw	a5,108(sp)
   15858:	9ebe                	add	t4,t4,a5
   1585a:	97ba                	add	a5,a5,a4
   1585c:	dc3a                	sw	a4,56(sp)
   1585e:	cc3e                	sw	a5,24(sp)
   15860:	c9aff06f          	j	14cfa <__gdtoa+0x28c>
   15864:	835e                	mv	t1,s7
   15866:	03900693          	li	a3,57
   1586a:	58a2                	lw	a7,40(sp)
   1586c:	4be2                	lw	s7,24(sp)
   1586e:	54b2                	lw	s1,44(sp)
   15870:	d0d302e3          	beq	t1,a3,15574 <__gdtoa+0xb06>
   15874:	0305                	addi	t1,t1,1
   15876:	89e2                	mv	s3,s8
   15878:	001d8613          	addi	a2,s11,1
   1587c:	006d8023          	sb	t1,0(s11)
   15880:	8c52                	mv	s8,s4
   15882:	02000b13          	li	s6,32
   15886:	b4b5                	j	152f2 <__gdtoa+0x884>
   15888:	57d2                	lw	a5,52(sp)
   1588a:	4581                	li	a1,0
   1588c:	4c01                	li	s8,0
   1588e:	00278913          	addi	s2,a5,2
   15892:	b6d9                	j	15458 <__gdtoa+0x9ea>
   15894:	85e2                	mv	a1,s8
   15896:	4681                	li	a3,0
   15898:	4629                	li	a2,10
   1589a:	8522                	mv	a0,s0
   1589c:	2321                	jal	15da4 <__multadd>
   1589e:	8c2a                	mv	s8,a0
   158a0:	f0050763          	beqz	a0,14fae <__gdtoa+0x540>
   158a4:	47f6                	lw	a5,92(sp)
   158a6:	4842                	lw	a6,16(sp)
   158a8:	48e2                	lw	a7,24(sp)
   158aa:	00f05563          	blez	a5,158b4 <__gdtoa+0xe46>
   158ae:	d63e                	sw	a5,44(sp)
   158b0:	d06ff06f          	j	14db6 <__gdtoa+0x348>
   158b4:	4789                	li	a5,2
   158b6:	0927cf63          	blt	a5,s2,15954 <__gdtoa+0xee6>
   158ba:	47f6                	lw	a5,92(sp)
   158bc:	d63e                	sw	a5,44(sp)
   158be:	cf8ff06f          	j	14db6 <__gdtoa+0x348>
   158c2:	d2000753          	fcvt.d.w	fa4,zero
   158c6:	00138913          	addi	s2,t2,1
   158ca:	a2e7ab53          	feq.d	s6,fa5,fa4
   158ce:	001b3b13          	seqz	s6,s6
   158d2:	0b12                	slli	s6,s6,0x4
   158d4:	ba8d                	j	15246 <__gdtoa+0x7d8>
   158d6:	00138513          	addi	a0,t2,1
   158da:	85dff06f          	j	15136 <__gdtoa+0x6c8>
   158de:	5f02                	lw	t5,32(sp)
   158e0:	5f92                	lw	t6,36(sp)
   158e2:	d80c5ce3          	bgez	s8,1567a <__gdtoa+0xc0c>
   158e6:	d002                	sw	zero,32(sp)
   158e8:	bccff06f          	j	14cb4 <__gdtoa+0x246>
   158ec:	57b2                	lw	a5,44(sp)
   158ee:	5742                	lw	a4,48(sp)
   158f0:	fff78693          	addi	a3,a5,-1
   158f4:	c0d74ee3          	blt	a4,a3,15510 <__gdtoa+0xaa2>
   158f8:	4662                	lw	a2,24(sp)
   158fa:	9ebe                	add	t4,t4,a5
   158fc:	d6be                	sw	a5,108(sp)
   158fe:	97b2                	add	a5,a5,a2
   15900:	dc32                	sw	a2,56(sp)
   15902:	40d70d33          	sub	s10,a4,a3
   15906:	cc3e                	sw	a5,24(sp)
   15908:	bf2ff06f          	j	14cfa <__gdtoa+0x28c>
   1590c:	d002                	sw	zero,32(sp)
   1590e:	ba0ff06f          	j	14cae <__gdtoa+0x240>
   15912:	d20007d3          	fcvt.d.w	fa5,zero
   15916:	87b2                	mv	a5,a2
   15918:	00138513          	addi	a0,t2,1
   1591c:	a2f5ab53          	feq.d	s6,fa1,fa5
   15920:	001b3b13          	seqz	s6,s6
   15924:	0b12                	slli	s6,s6,0x4
   15926:	bd05                	j	15756 <__gdtoa+0xce8>
   15928:	835e                	mv	t1,s7
   1592a:	03900693          	li	a3,57
   1592e:	8926                	mv	s2,s1
   15930:	58a2                	lw	a7,40(sp)
   15932:	4be2                	lw	s7,24(sp)
   15934:	54b2                	lw	s1,44(sp)
   15936:	c2d30fe3          	beq	t1,a3,15574 <__gdtoa+0xb06>
   1593a:	07505d63          	blez	s5,159b4 <__gdtoa+0xf46>
   1593e:	03190313          	addi	t1,s2,49
   15942:	02000b13          	li	s6,32
   15946:	89e2                	mv	s3,s8
   15948:	001d8613          	addi	a2,s11,1
   1594c:	006d8023          	sb	t1,0(s11)
   15950:	8c52                	mv	s8,s4
   15952:	b245                	j	152f2 <__gdtoa+0x884>
   15954:	47f6                	lw	a5,92(sp)
   15956:	d63e                	sw	a5,44(sp)
   15958:	b4f9                	j	15426 <__gdtoa+0x9b8>
   1595a:	e509                	bnez	a0,15964 <__gdtoa+0xef6>
   1595c:	00137693          	andi	a3,t1,1
   15960:	dc0691e3          	bnez	a3,15722 <__gdtoa+0xcb4>
   15964:	02000793          	li	a5,32
   15968:	d03e                	sw	a5,32(sp)
   1596a:	b2bd                	j	152d8 <__gdtoa+0x86a>
   1596c:	014ca683          	lw	a3,20(s9)
   15970:	96069ce3          	bnez	a3,152e8 <__gdtoa+0x87a>
   15974:	5b02                	lw	s6,32(sp)
   15976:	ba8d                	j	152e8 <__gdtoa+0x87a>
   15978:	03900693          	li	a3,57
   1597c:	88da                	mv	a7,s6
   1597e:	00da8b63          	beq	s5,a3,15994 <__gdtoa+0xf26>
   15982:	001a8313          	addi	t1,s5,1
   15986:	02000b13          	li	s6,32
   1598a:	bab9                	j	152e8 <__gdtoa+0x87a>
   1598c:	4b41                	li	s6,16
   1598e:	001d8913          	addi	s2,s11,1
   15992:	ba99                	j	152e8 <__gdtoa+0x87a>
   15994:	89e2                	mv	s3,s8
   15996:	86ee                	mv	a3,s11
   15998:	8c52                	mv	s8,s4
   1599a:	b6d5                	j	1557e <__gdtoa+0xb10>
   1599c:	010ca603          	lw	a2,16(s9)
   159a0:	4685                	li	a3,1
   159a2:	d0c6ca63          	blt	a3,a2,14eb6 <__gdtoa+0x448>
   159a6:	014ca683          	lw	a3,20(s9)
   159aa:	d0069663          	bnez	a3,14eb6 <__gdtoa+0x448>
   159ae:	001d8913          	addi	s2,s11,1
   159b2:	ba1d                	j	152e8 <__gdtoa+0x87a>
   159b4:	010ca603          	lw	a2,16(s9)
   159b8:	4685                	li	a3,1
   159ba:	4b41                	li	s6,16
   159bc:	f8c6c5e3          	blt	a3,a2,15946 <__gdtoa+0xed8>
   159c0:	014cab03          	lw	s6,20(s9)
   159c4:	01603b33          	snez	s6,s6
   159c8:	0b12                	slli	s6,s6,0x4
   159ca:	bfb5                	j	15946 <__gdtoa+0xed8>
   159cc:	000ace63          	bltz	s5,159e8 <__gdtoa+0xf7a>
   159d0:	01596ab3          	or	s5,s2,s5
   159d4:	000a9663          	bnez	s5,159e0 <__gdtoa+0xf72>
   159d8:	0009a783          	lw	a5,0(s3)
   159dc:	8b85                	andi	a5,a5,1
   159de:	c789                	beqz	a5,159e8 <__gdtoa+0xf7a>
   159e0:	c0d05c63          	blez	a3,14df8 <__gdtoa+0x38a>
   159e4:	c0cff06f          	j	14df0 <__gdtoa+0x382>
   159e8:	5782                	lw	a5,32(sp)
   159ea:	8926                	mv	s2,s1
   159ec:	835e                	mv	t1,s7
   159ee:	58a2                	lw	a7,40(sp)
   159f0:	4be2                	lw	s7,24(sp)
   159f2:	54b2                	lw	s1,44(sp)
   159f4:	c385                	beqz	a5,15a14 <__gdtoa+0xfa6>
   159f6:	010ca583          	lw	a1,16(s9)
   159fa:	4605                	li	a2,1
   159fc:	cab64d63          	blt	a2,a1,14eb6 <__gdtoa+0x448>
   15a00:	014ca603          	lw	a2,20(s9)
   15a04:	ca061963          	bnez	a2,14eb6 <__gdtoa+0x448>
   15a08:	ced04ce3          	bgtz	a3,15700 <__gdtoa+0xc92>
   15a0c:	4b01                	li	s6,0
   15a0e:	001d8913          	addi	s2,s11,1
   15a12:	b8d9                	j	152e8 <__gdtoa+0x87a>
   15a14:	8cd052e3          	blez	a3,152d8 <__gdtoa+0x86a>
   15a18:	b1e5                	j	15700 <__gdtoa+0xc92>

00015a1a <__rv_alloc_D2A.part.0>:
   15a1a:	66ed                	lui	a3,0x1b
   15a1c:	656d                	lui	a0,0x1b
   15a1e:	1141                	addi	sp,sp,-16
   15a20:	a5068693          	addi	a3,a3,-1456 # 1aa50 <__clzsi2+0xd8>
   15a24:	4601                	li	a2,0
   15a26:	03900593          	li	a1,57
   15a2a:	a6450513          	addi	a0,a0,-1436 # 1aa64 <__clzsi2+0xec>
   15a2e:	c606                	sw	ra,12(sp)
   15a30:	68a010ef          	jal	170ba <__assert_func>

00015a34 <__rv_alloc_D2A>:
   15a34:	1141                	addi	sp,sp,-16
   15a36:	c422                	sw	s0,8(sp)
   15a38:	c606                	sw	ra,12(sp)
   15a3a:	46dd                	li	a3,23
   15a3c:	842a                	mv	s0,a0
   15a3e:	4705                	li	a4,1
   15a40:	4791                	li	a5,4
   15a42:	02b6f363          	bgeu	a3,a1,15a68 <__rv_alloc_D2A+0x34>
   15a46:	0786                	slli	a5,a5,0x1
   15a48:	01478693          	addi	a3,a5,20
   15a4c:	863a                	mv	a2,a4
   15a4e:	0705                	addi	a4,a4,1
   15a50:	fed5fbe3          	bgeu	a1,a3,15a46 <__rv_alloc_D2A+0x12>
   15a54:	85b2                	mv	a1,a2
   15a56:	dc50                	sw	a2,60(s0)
   15a58:	8522                	mv	a0,s0
   15a5a:	24f1                	jal	15d26 <_Balloc>
   15a5c:	c911                	beqz	a0,15a70 <__rv_alloc_D2A+0x3c>
   15a5e:	40b2                	lw	ra,12(sp)
   15a60:	dc08                	sw	a0,56(s0)
   15a62:	4422                	lw	s0,8(sp)
   15a64:	0141                	addi	sp,sp,16
   15a66:	8082                	ret
   15a68:	02052e23          	sw	zero,60(a0)
   15a6c:	4581                	li	a1,0
   15a6e:	b7ed                	j	15a58 <__rv_alloc_D2A+0x24>
   15a70:	376d                	jal	15a1a <__rv_alloc_D2A.part.0>

00015a72 <__nrv_alloc_D2A>:
   15a72:	1141                	addi	sp,sp,-16
   15a74:	c422                	sw	s0,8(sp)
   15a76:	c226                	sw	s1,4(sp)
   15a78:	c04a                	sw	s2,0(sp)
   15a7a:	c606                	sw	ra,12(sp)
   15a7c:	485d                	li	a6,23
   15a7e:	84aa                	mv	s1,a0
   15a80:	842e                	mv	s0,a1
   15a82:	8932                	mv	s2,a2
   15a84:	4705                	li	a4,1
   15a86:	4791                	li	a5,4
   15a88:	04d87763          	bgeu	a6,a3,15ad6 <__nrv_alloc_D2A+0x64>
   15a8c:	0786                	slli	a5,a5,0x1
   15a8e:	01478813          	addi	a6,a5,20
   15a92:	85ba                	mv	a1,a4
   15a94:	0705                	addi	a4,a4,1
   15a96:	ff06fbe3          	bgeu	a3,a6,15a8c <__nrv_alloc_D2A+0x1a>
   15a9a:	dccc                	sw	a1,60(s1)
   15a9c:	8526                	mv	a0,s1
   15a9e:	2461                	jal	15d26 <_Balloc>
   15aa0:	c129                	beqz	a0,15ae2 <__nrv_alloc_D2A+0x70>
   15aa2:	dc88                	sw	a0,56(s1)
   15aa4:	00044783          	lbu	a5,0(s0)
   15aa8:	00140593          	addi	a1,s0,1
   15aac:	00f50023          	sb	a5,0(a0)
   15ab0:	c79d                	beqz	a5,15ade <__nrv_alloc_D2A+0x6c>
   15ab2:	87aa                	mv	a5,a0
   15ab4:	0005c703          	lbu	a4,0(a1)
   15ab8:	0785                	addi	a5,a5,1
   15aba:	0585                	addi	a1,a1,1
   15abc:	00e78023          	sb	a4,0(a5)
   15ac0:	fb75                	bnez	a4,15ab4 <__nrv_alloc_D2A+0x42>
   15ac2:	00090463          	beqz	s2,15aca <__nrv_alloc_D2A+0x58>
   15ac6:	00f92023          	sw	a5,0(s2)
   15aca:	40b2                	lw	ra,12(sp)
   15acc:	4422                	lw	s0,8(sp)
   15ace:	4492                	lw	s1,4(sp)
   15ad0:	4902                	lw	s2,0(sp)
   15ad2:	0141                	addi	sp,sp,16
   15ad4:	8082                	ret
   15ad6:	02052e23          	sw	zero,60(a0)
   15ada:	4581                	li	a1,0
   15adc:	b7c1                	j	15a9c <__nrv_alloc_D2A+0x2a>
   15ade:	87aa                	mv	a5,a0
   15ae0:	b7cd                	j	15ac2 <__nrv_alloc_D2A+0x50>
   15ae2:	3f25                	jal	15a1a <__rv_alloc_D2A.part.0>

00015ae4 <__freedtoa>:
   15ae4:	5d54                	lw	a3,60(a0)
   15ae6:	4705                	li	a4,1
   15ae8:	00d71733          	sll	a4,a4,a3
   15aec:	c1d4                	sw	a3,4(a1)
   15aee:	c598                	sw	a4,8(a1)
   15af0:	a44d                	j	15d92 <_Bfree>

00015af2 <__quorem_D2A>:
   15af2:	1101                	addi	sp,sp,-32
   15af4:	ca26                	sw	s1,20(sp)
   15af6:	491c                	lw	a5,16(a0)
   15af8:	4984                	lw	s1,16(a1)
   15afa:	ce06                	sw	ra,28(sp)
   15afc:	1497c163          	blt	a5,s1,15c3e <__quorem_D2A+0x14c>
   15b00:	14fd                	addi	s1,s1,-1
   15b02:	00249313          	slli	t1,s1,0x2
   15b06:	cc22                	sw	s0,24(sp)
   15b08:	01458413          	addi	s0,a1,20
   15b0c:	c64e                	sw	s3,12(sp)
   15b0e:	c452                	sw	s4,8(sp)
   15b10:	006409b3          	add	s3,s0,t1
   15b14:	01450a13          	addi	s4,a0,20
   15b18:	0009a783          	lw	a5,0(s3)
   15b1c:	9352                	add	t1,t1,s4
   15b1e:	00032703          	lw	a4,0(t1)
   15b22:	c84a                	sw	s2,16(sp)
   15b24:	c256                	sw	s5,4(sp)
   15b26:	0785                	addi	a5,a5,1
   15b28:	02f75933          	divu	s2,a4,a5
   15b2c:	8aaa                	mv	s5,a0
   15b2e:	08f76663          	bltu	a4,a5,15bba <__quorem_D2A+0xc8>
   15b32:	6541                	lui	a0,0x10
   15b34:	88a2                	mv	a7,s0
   15b36:	8852                	mv	a6,s4
   15b38:	4f01                	li	t5,0
   15b3a:	4e81                	li	t4,0
   15b3c:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   15b3e:	0008a783          	lw	a5,0(a7)
   15b42:	00082603          	lw	a2,0(a6)
   15b46:	0811                	addi	a6,a6,4
   15b48:	00a7f6b3          	and	a3,a5,a0
   15b4c:	83c1                	srli	a5,a5,0x10
   15b4e:	00a67733          	and	a4,a2,a0
   15b52:	01065e13          	srli	t3,a2,0x10
   15b56:	0891                	addi	a7,a7,4
   15b58:	032686b3          	mul	a3,a3,s2
   15b5c:	032787b3          	mul	a5,a5,s2
   15b60:	96fa                	add	a3,a3,t5
   15b62:	00a6f633          	and	a2,a3,a0
   15b66:	8f11                	sub	a4,a4,a2
   15b68:	41d70733          	sub	a4,a4,t4
   15b6c:	82c1                	srli	a3,a3,0x10
   15b6e:	01075613          	srli	a2,a4,0x10
   15b72:	8a05                	andi	a2,a2,1
   15b74:	8f69                	and	a4,a4,a0
   15b76:	97b6                	add	a5,a5,a3
   15b78:	00a7f6b3          	and	a3,a5,a0
   15b7c:	9636                	add	a2,a2,a3
   15b7e:	40ce06b3          	sub	a3,t3,a2
   15b82:	01069613          	slli	a2,a3,0x10
   15b86:	8f51                	or	a4,a4,a2
   15b88:	82c1                	srli	a3,a3,0x10
   15b8a:	fee82e23          	sw	a4,-4(a6)
   15b8e:	0107df13          	srli	t5,a5,0x10
   15b92:	0016fe93          	andi	t4,a3,1
   15b96:	fb19f4e3          	bgeu	s3,a7,15b3e <__quorem_D2A+0x4c>
   15b9a:	00032783          	lw	a5,0(t1)
   15b9e:	ef91                	bnez	a5,15bba <__quorem_D2A+0xc8>
   15ba0:	1371                	addi	t1,t1,-4
   15ba2:	006a6663          	bltu	s4,t1,15bae <__quorem_D2A+0xbc>
   15ba6:	a801                	j	15bb6 <__quorem_D2A+0xc4>
   15ba8:	14fd                	addi	s1,s1,-1
   15baa:	006a7663          	bgeu	s4,t1,15bb6 <__quorem_D2A+0xc4>
   15bae:	00032783          	lw	a5,0(t1)
   15bb2:	1371                	addi	t1,t1,-4
   15bb4:	dbf5                	beqz	a5,15ba8 <__quorem_D2A+0xb6>
   15bb6:	009aa823          	sw	s1,16(s5)
   15bba:	8556                	mv	a0,s5
   15bbc:	053000ef          	jal	1640e <__mcmp>
   15bc0:	06054563          	bltz	a0,15c2a <__quorem_D2A+0x138>
   15bc4:	6541                	lui	a0,0x10
   15bc6:	85d2                	mv	a1,s4
   15bc8:	4681                	li	a3,0
   15bca:	157d                	addi	a0,a0,-1 # ffff <exit-0x95>
   15bcc:	419c                	lw	a5,0(a1)
   15bce:	4010                	lw	a2,0(s0)
   15bd0:	0591                	addi	a1,a1,4
   15bd2:	00a7f733          	and	a4,a5,a0
   15bd6:	00a67833          	and	a6,a2,a0
   15bda:	41070733          	sub	a4,a4,a6
   15bde:	8f15                	sub	a4,a4,a3
   15be0:	01075693          	srli	a3,a4,0x10
   15be4:	8a85                	andi	a3,a3,1
   15be6:	8241                	srli	a2,a2,0x10
   15be8:	96b2                	add	a3,a3,a2
   15bea:	83c1                	srli	a5,a5,0x10
   15bec:	8f95                	sub	a5,a5,a3
   15bee:	01079693          	slli	a3,a5,0x10
   15bf2:	8f69                	and	a4,a4,a0
   15bf4:	8f55                	or	a4,a4,a3
   15bf6:	83c1                	srli	a5,a5,0x10
   15bf8:	0411                	addi	s0,s0,4
   15bfa:	fee5ae23          	sw	a4,-4(a1)
   15bfe:	0017f693          	andi	a3,a5,1
   15c02:	fc89f5e3          	bgeu	s3,s0,15bcc <__quorem_D2A+0xda>
   15c06:	00249793          	slli	a5,s1,0x2
   15c0a:	97d2                	add	a5,a5,s4
   15c0c:	4398                	lw	a4,0(a5)
   15c0e:	ef09                	bnez	a4,15c28 <__quorem_D2A+0x136>
   15c10:	17f1                	addi	a5,a5,-4
   15c12:	00fa6663          	bltu	s4,a5,15c1e <__quorem_D2A+0x12c>
   15c16:	a039                	j	15c24 <__quorem_D2A+0x132>
   15c18:	14fd                	addi	s1,s1,-1
   15c1a:	00fa7563          	bgeu	s4,a5,15c24 <__quorem_D2A+0x132>
   15c1e:	4398                	lw	a4,0(a5)
   15c20:	17f1                	addi	a5,a5,-4
   15c22:	db7d                	beqz	a4,15c18 <__quorem_D2A+0x126>
   15c24:	009aa823          	sw	s1,16(s5)
   15c28:	0905                	addi	s2,s2,1
   15c2a:	4462                	lw	s0,24(sp)
   15c2c:	40f2                	lw	ra,28(sp)
   15c2e:	49b2                	lw	s3,12(sp)
   15c30:	4a22                	lw	s4,8(sp)
   15c32:	4a92                	lw	s5,4(sp)
   15c34:	44d2                	lw	s1,20(sp)
   15c36:	854a                	mv	a0,s2
   15c38:	4942                	lw	s2,16(sp)
   15c3a:	6105                	addi	sp,sp,32
   15c3c:	8082                	ret
   15c3e:	40f2                	lw	ra,28(sp)
   15c40:	44d2                	lw	s1,20(sp)
   15c42:	4501                	li	a0,0
   15c44:	6105                	addi	sp,sp,32
   15c46:	8082                	ret

00015c48 <__rshift_D2A>:
   15c48:	01052803          	lw	a6,16(a0)
   15c4c:	4055de13          	srai	t3,a1,0x5
   15c50:	010e4763          	blt	t3,a6,15c5e <__rshift_D2A+0x16>
   15c54:	00052823          	sw	zero,16(a0)
   15c58:	00052a23          	sw	zero,20(a0)
   15c5c:	8082                	ret
   15c5e:	01450313          	addi	t1,a0,20
   15c62:	00281613          	slli	a2,a6,0x2
   15c66:	002e1793          	slli	a5,t3,0x2
   15c6a:	89fd                	andi	a1,a1,31
   15c6c:	961a                	add	a2,a2,t1
   15c6e:	979a                	add	a5,a5,t1
   15c70:	c5a1                	beqz	a1,15cb8 <__rshift_D2A+0x70>
   15c72:	4394                	lw	a3,0(a5)
   15c74:	02000e93          	li	t4,32
   15c78:	0791                	addi	a5,a5,4
   15c7a:	40be8eb3          	sub	t4,t4,a1
   15c7e:	00b6d6b3          	srl	a3,a3,a1
   15c82:	06c7f063          	bgeu	a5,a2,15ce2 <__rshift_D2A+0x9a>
   15c86:	889a                	mv	a7,t1
   15c88:	4398                	lw	a4,0(a5)
   15c8a:	0891                	addi	a7,a7,4
   15c8c:	0791                	addi	a5,a5,4
   15c8e:	01d71733          	sll	a4,a4,t4
   15c92:	8f55                	or	a4,a4,a3
   15c94:	fee8ae23          	sw	a4,-4(a7)
   15c98:	ffc7a683          	lw	a3,-4(a5)
   15c9c:	00b6d6b3          	srl	a3,a3,a1
   15ca0:	fec7e4e3          	bltu	a5,a2,15c88 <__rshift_D2A+0x40>
   15ca4:	41c80833          	sub	a6,a6,t3
   15ca8:	080a                	slli	a6,a6,0x2
   15caa:	1871                	addi	a6,a6,-4
   15cac:	981a                	add	a6,a6,t1
   15cae:	00d82023          	sw	a3,0(a6)
   15cb2:	c28d                	beqz	a3,15cd4 <__rshift_D2A+0x8c>
   15cb4:	0811                	addi	a6,a6,4
   15cb6:	a839                	j	15cd4 <__rshift_D2A+0x8c>
   15cb8:	871a                	mv	a4,t1
   15cba:	f8c7fde3          	bgeu	a5,a2,15c54 <__rshift_D2A+0xc>
   15cbe:	4394                	lw	a3,0(a5)
   15cc0:	0791                	addi	a5,a5,4
   15cc2:	0711                	addi	a4,a4,4
   15cc4:	fed72e23          	sw	a3,-4(a4)
   15cc8:	fec7ebe3          	bltu	a5,a2,15cbe <__rshift_D2A+0x76>
   15ccc:	41c80833          	sub	a6,a6,t3
   15cd0:	080a                	slli	a6,a6,0x2
   15cd2:	981a                	add	a6,a6,t1
   15cd4:	406807b3          	sub	a5,a6,t1
   15cd8:	8789                	srai	a5,a5,0x2
   15cda:	c91c                	sw	a5,16(a0)
   15cdc:	f6680ee3          	beq	a6,t1,15c58 <__rshift_D2A+0x10>
   15ce0:	8082                	ret
   15ce2:	c954                	sw	a3,20(a0)
   15ce4:	daa5                	beqz	a3,15c54 <__rshift_D2A+0xc>
   15ce6:	881a                	mv	a6,t1
   15ce8:	0811                	addi	a6,a6,4
   15cea:	b7ed                	j	15cd4 <__rshift_D2A+0x8c>

00015cec <__trailz_D2A>:
   15cec:	4918                	lw	a4,16(a0)
   15cee:	1101                	addi	sp,sp,-32
   15cf0:	0551                	addi	a0,a0,20
   15cf2:	070a                	slli	a4,a4,0x2
   15cf4:	cc22                	sw	s0,24(sp)
   15cf6:	ce06                	sw	ra,28(sp)
   15cf8:	972a                	add	a4,a4,a0
   15cfa:	4401                	li	s0,0
   15cfc:	00e56863          	bltu	a0,a4,15d0c <__trailz_D2A+0x20>
   15d00:	a831                	j	15d1c <__trailz_D2A+0x30>
   15d02:	0511                	addi	a0,a0,4
   15d04:	02040413          	addi	s0,s0,32
   15d08:	00e57a63          	bgeu	a0,a4,15d1c <__trailz_D2A+0x30>
   15d0c:	411c                	lw	a5,0(a0)
   15d0e:	dbf5                	beqz	a5,15d02 <__trailz_D2A+0x16>
   15d10:	00e57663          	bgeu	a0,a4,15d1c <__trailz_D2A+0x30>
   15d14:	0068                	addi	a0,sp,12
   15d16:	c63e                	sw	a5,12(sp)
   15d18:	2471                	jal	15fa4 <__lo0bits>
   15d1a:	942a                	add	s0,s0,a0
   15d1c:	40f2                	lw	ra,28(sp)
   15d1e:	8522                	mv	a0,s0
   15d20:	4462                	lw	s0,24(sp)
   15d22:	6105                	addi	sp,sp,32
   15d24:	8082                	ret

00015d26 <_Balloc>:
   15d26:	417c                	lw	a5,68(a0)
   15d28:	1141                	addi	sp,sp,-16
   15d2a:	c422                	sw	s0,8(sp)
   15d2c:	c226                	sw	s1,4(sp)
   15d2e:	c606                	sw	ra,12(sp)
   15d30:	842a                	mv	s0,a0
   15d32:	84ae                	mv	s1,a1
   15d34:	c38d                	beqz	a5,15d56 <_Balloc+0x30>
   15d36:	00249713          	slli	a4,s1,0x2
   15d3a:	97ba                	add	a5,a5,a4
   15d3c:	4388                	lw	a0,0(a5)
   15d3e:	c515                	beqz	a0,15d6a <_Balloc+0x44>
   15d40:	4118                	lw	a4,0(a0)
   15d42:	c398                	sw	a4,0(a5)
   15d44:	00052823          	sw	zero,16(a0)
   15d48:	00052623          	sw	zero,12(a0)
   15d4c:	40b2                	lw	ra,12(sp)
   15d4e:	4422                	lw	s0,8(sp)
   15d50:	4492                	lw	s1,4(sp)
   15d52:	0141                	addi	sp,sp,16
   15d54:	8082                	ret
   15d56:	02100613          	li	a2,33
   15d5a:	4591                	li	a1,4
   15d5c:	3a4010ef          	jal	17100 <_calloc_r>
   15d60:	c068                	sw	a0,68(s0)
   15d62:	87aa                	mv	a5,a0
   15d64:	f969                	bnez	a0,15d36 <_Balloc+0x10>
   15d66:	4501                	li	a0,0
   15d68:	b7d5                	j	15d4c <_Balloc+0x26>
   15d6a:	c04a                	sw	s2,0(sp)
   15d6c:	4905                	li	s2,1
   15d6e:	00991933          	sll	s2,s2,s1
   15d72:	00590613          	addi	a2,s2,5
   15d76:	060a                	slli	a2,a2,0x2
   15d78:	4585                	li	a1,1
   15d7a:	8522                	mv	a0,s0
   15d7c:	384010ef          	jal	17100 <_calloc_r>
   15d80:	c511                	beqz	a0,15d8c <_Balloc+0x66>
   15d82:	01252423          	sw	s2,8(a0)
   15d86:	c144                	sw	s1,4(a0)
   15d88:	4902                	lw	s2,0(sp)
   15d8a:	bf6d                	j	15d44 <_Balloc+0x1e>
   15d8c:	4902                	lw	s2,0(sp)
   15d8e:	4501                	li	a0,0
   15d90:	bf75                	j	15d4c <_Balloc+0x26>

00015d92 <_Bfree>:
   15d92:	c981                	beqz	a1,15da2 <_Bfree+0x10>
   15d94:	41d8                	lw	a4,4(a1)
   15d96:	417c                	lw	a5,68(a0)
   15d98:	070a                	slli	a4,a4,0x2
   15d9a:	97ba                	add	a5,a5,a4
   15d9c:	4398                	lw	a4,0(a5)
   15d9e:	c198                	sw	a4,0(a1)
   15da0:	c38c                	sw	a1,0(a5)
   15da2:	8082                	ret

00015da4 <__multadd>:
   15da4:	1101                	addi	sp,sp,-32
   15da6:	ca26                	sw	s1,20(sp)
   15da8:	4984                	lw	s1,16(a1)
   15daa:	6341                	lui	t1,0x10
   15dac:	cc22                	sw	s0,24(sp)
   15dae:	c84a                	sw	s2,16(sp)
   15db0:	c64e                	sw	s3,12(sp)
   15db2:	ce06                	sw	ra,28(sp)
   15db4:	892e                	mv	s2,a1
   15db6:	89aa                	mv	s3,a0
   15db8:	8436                	mv	s0,a3
   15dba:	01458813          	addi	a6,a1,20
   15dbe:	4881                	li	a7,0
   15dc0:	137d                	addi	t1,t1,-1 # ffff <exit-0x95>
   15dc2:	00082783          	lw	a5,0(a6)
   15dc6:	0811                	addi	a6,a6,4
   15dc8:	0885                	addi	a7,a7,1
   15dca:	0067f733          	and	a4,a5,t1
   15dce:	02c70733          	mul	a4,a4,a2
   15dd2:	0107d693          	srli	a3,a5,0x10
   15dd6:	02c686b3          	mul	a3,a3,a2
   15dda:	008707b3          	add	a5,a4,s0
   15dde:	0107d713          	srli	a4,a5,0x10
   15de2:	0067f7b3          	and	a5,a5,t1
   15de6:	96ba                	add	a3,a3,a4
   15de8:	01069713          	slli	a4,a3,0x10
   15dec:	97ba                	add	a5,a5,a4
   15dee:	fef82e23          	sw	a5,-4(a6)
   15df2:	0106d413          	srli	s0,a3,0x10
   15df6:	fc98c6e3          	blt	a7,s1,15dc2 <__multadd+0x1e>
   15dfa:	cc09                	beqz	s0,15e14 <__multadd+0x70>
   15dfc:	00892783          	lw	a5,8(s2)
   15e00:	02f4d263          	bge	s1,a5,15e24 <__multadd+0x80>
   15e04:	00448793          	addi	a5,s1,4
   15e08:	078a                	slli	a5,a5,0x2
   15e0a:	97ca                	add	a5,a5,s2
   15e0c:	c3c0                	sw	s0,4(a5)
   15e0e:	0485                	addi	s1,s1,1
   15e10:	00992823          	sw	s1,16(s2)
   15e14:	40f2                	lw	ra,28(sp)
   15e16:	4462                	lw	s0,24(sp)
   15e18:	44d2                	lw	s1,20(sp)
   15e1a:	49b2                	lw	s3,12(sp)
   15e1c:	854a                	mv	a0,s2
   15e1e:	4942                	lw	s2,16(sp)
   15e20:	6105                	addi	sp,sp,32
   15e22:	8082                	ret
   15e24:	00492583          	lw	a1,4(s2)
   15e28:	854e                	mv	a0,s3
   15e2a:	c452                	sw	s4,8(sp)
   15e2c:	0585                	addi	a1,a1,1
   15e2e:	ef9ff0ef          	jal	15d26 <_Balloc>
   15e32:	8a2a                	mv	s4,a0
   15e34:	c121                	beqz	a0,15e74 <__multadd+0xd0>
   15e36:	01092603          	lw	a2,16(s2)
   15e3a:	00c90593          	addi	a1,s2,12
   15e3e:	0531                	addi	a0,a0,12
   15e40:	0609                	addi	a2,a2,2
   15e42:	060a                	slli	a2,a2,0x2
   15e44:	eeefe0ef          	jal	14532 <memcpy>
   15e48:	00492703          	lw	a4,4(s2)
   15e4c:	0449a783          	lw	a5,68(s3)
   15e50:	070a                	slli	a4,a4,0x2
   15e52:	97ba                	add	a5,a5,a4
   15e54:	4398                	lw	a4,0(a5)
   15e56:	00e92023          	sw	a4,0(s2)
   15e5a:	0127a023          	sw	s2,0(a5)
   15e5e:	00448793          	addi	a5,s1,4
   15e62:	8952                	mv	s2,s4
   15e64:	078a                	slli	a5,a5,0x2
   15e66:	97ca                	add	a5,a5,s2
   15e68:	4a22                	lw	s4,8(sp)
   15e6a:	0485                	addi	s1,s1,1
   15e6c:	c3c0                	sw	s0,4(a5)
   15e6e:	00992823          	sw	s1,16(s2)
   15e72:	b74d                	j	15e14 <__multadd+0x70>
   15e74:	66ed                	lui	a3,0x1b
   15e76:	656d                	lui	a0,0x1b
   15e78:	a5068693          	addi	a3,a3,-1456 # 1aa50 <__clzsi2+0xd8>
   15e7c:	4601                	li	a2,0
   15e7e:	0ba00593          	li	a1,186
   15e82:	ac050513          	addi	a0,a0,-1344 # 1aac0 <__clzsi2+0x148>
   15e86:	234010ef          	jal	170ba <__assert_func>

00015e8a <__s2b>:
   15e8a:	1101                	addi	sp,sp,-32
   15e8c:	cc22                	sw	s0,24(sp)
   15e8e:	ca26                	sw	s1,20(sp)
   15e90:	c84a                	sw	s2,16(sp)
   15e92:	c64e                	sw	s3,12(sp)
   15e94:	c452                	sw	s4,8(sp)
   15e96:	89b6                	mv	s3,a3
   15e98:	47a5                	li	a5,9
   15e9a:	06a1                	addi	a3,a3,8
   15e9c:	ce06                	sw	ra,28(sp)
   15e9e:	02f6c6b3          	div	a3,a3,a5
   15ea2:	892a                	mv	s2,a0
   15ea4:	842e                	mv	s0,a1
   15ea6:	8a32                	mv	s4,a2
   15ea8:	84ba                	mv	s1,a4
   15eaa:	0937d563          	bge	a5,s3,15f34 <__s2b+0xaa>
   15eae:	4785                	li	a5,1
   15eb0:	4581                	li	a1,0
   15eb2:	0786                	slli	a5,a5,0x1
   15eb4:	0585                	addi	a1,a1,1
   15eb6:	fed7cee3          	blt	a5,a3,15eb2 <__s2b+0x28>
   15eba:	854a                	mv	a0,s2
   15ebc:	e6bff0ef          	jal	15d26 <_Balloc>
   15ec0:	85aa                	mv	a1,a0
   15ec2:	c93d                	beqz	a0,15f38 <__s2b+0xae>
   15ec4:	4785                	li	a5,1
   15ec6:	c91c                	sw	a5,16(a0)
   15ec8:	c944                	sw	s1,20(a0)
   15eca:	47a5                	li	a5,9
   15ecc:	0747d163          	bge	a5,s4,15f2e <__s2b+0xa4>
   15ed0:	c256                	sw	s5,4(sp)
   15ed2:	00940a93          	addi	s5,s0,9
   15ed6:	84d6                	mv	s1,s5
   15ed8:	9452                	add	s0,s0,s4
   15eda:	0004c683          	lbu	a3,0(s1)
   15ede:	4629                	li	a2,10
   15ee0:	854a                	mv	a0,s2
   15ee2:	fd068693          	addi	a3,a3,-48
   15ee6:	ebfff0ef          	jal	15da4 <__multadd>
   15eea:	0485                	addi	s1,s1,1
   15eec:	85aa                	mv	a1,a0
   15eee:	fe8496e3          	bne	s1,s0,15eda <__s2b+0x50>
   15ef2:	ff8a0413          	addi	s0,s4,-8
   15ef6:	9456                	add	s0,s0,s5
   15ef8:	4a92                	lw	s5,4(sp)
   15efa:	033a5163          	bge	s4,s3,15f1c <__s2b+0x92>
   15efe:	414989b3          	sub	s3,s3,s4
   15f02:	99a2                	add	s3,s3,s0
   15f04:	00044683          	lbu	a3,0(s0)
   15f08:	4629                	li	a2,10
   15f0a:	854a                	mv	a0,s2
   15f0c:	fd068693          	addi	a3,a3,-48
   15f10:	e95ff0ef          	jal	15da4 <__multadd>
   15f14:	0405                	addi	s0,s0,1
   15f16:	85aa                	mv	a1,a0
   15f18:	ff3416e3          	bne	s0,s3,15f04 <__s2b+0x7a>
   15f1c:	40f2                	lw	ra,28(sp)
   15f1e:	4462                	lw	s0,24(sp)
   15f20:	44d2                	lw	s1,20(sp)
   15f22:	4942                	lw	s2,16(sp)
   15f24:	49b2                	lw	s3,12(sp)
   15f26:	4a22                	lw	s4,8(sp)
   15f28:	852e                	mv	a0,a1
   15f2a:	6105                	addi	sp,sp,32
   15f2c:	8082                	ret
   15f2e:	0429                	addi	s0,s0,10
   15f30:	4a25                	li	s4,9
   15f32:	b7e1                	j	15efa <__s2b+0x70>
   15f34:	4581                	li	a1,0
   15f36:	b751                	j	15eba <__s2b+0x30>
   15f38:	66ed                	lui	a3,0x1b
   15f3a:	656d                	lui	a0,0x1b
   15f3c:	a5068693          	addi	a3,a3,-1456 # 1aa50 <__clzsi2+0xd8>
   15f40:	4601                	li	a2,0
   15f42:	0d300593          	li	a1,211
   15f46:	ac050513          	addi	a0,a0,-1344 # 1aac0 <__clzsi2+0x148>
   15f4a:	c256                	sw	s5,4(sp)
   15f4c:	16e010ef          	jal	170ba <__assert_func>

00015f50 <__hi0bits>:
   15f50:	87aa                	mv	a5,a0
   15f52:	6741                	lui	a4,0x10
   15f54:	4501                	li	a0,0
   15f56:	00e7f463          	bgeu	a5,a4,15f5e <__hi0bits+0xe>
   15f5a:	07c2                	slli	a5,a5,0x10
   15f5c:	4541                	li	a0,16
   15f5e:	01000737          	lui	a4,0x1000
   15f62:	00e7f463          	bgeu	a5,a4,15f6a <__hi0bits+0x1a>
   15f66:	0521                	addi	a0,a0,8
   15f68:	07a2                	slli	a5,a5,0x8
   15f6a:	10000737          	lui	a4,0x10000
   15f6e:	00e7f463          	bgeu	a5,a4,15f76 <__hi0bits+0x26>
   15f72:	0511                	addi	a0,a0,4
   15f74:	0792                	slli	a5,a5,0x4
   15f76:	40000737          	lui	a4,0x40000
   15f7a:	00e7e763          	bltu	a5,a4,15f88 <__hi0bits+0x38>
   15f7e:	fff7c793          	not	a5,a5
   15f82:	83fd                	srli	a5,a5,0x1f
   15f84:	953e                	add	a0,a0,a5
   15f86:	8082                	ret
   15f88:	078a                	slli	a5,a5,0x2
   15f8a:	0007c963          	bltz	a5,15f9c <__hi0bits+0x4c>
   15f8e:	00179713          	slli	a4,a5,0x1
   15f92:	00074763          	bltz	a4,15fa0 <__hi0bits+0x50>
   15f96:	02000513          	li	a0,32
   15f9a:	8082                	ret
   15f9c:	0509                	addi	a0,a0,2
   15f9e:	8082                	ret
   15fa0:	050d                	addi	a0,a0,3
   15fa2:	8082                	ret

00015fa4 <__lo0bits>:
   15fa4:	411c                	lw	a5,0(a0)
   15fa6:	872a                	mv	a4,a0
   15fa8:	0077f693          	andi	a3,a5,7
   15fac:	ce81                	beqz	a3,15fc4 <__lo0bits+0x20>
   15fae:	0017f693          	andi	a3,a5,1
   15fb2:	4501                	li	a0,0
   15fb4:	ee95                	bnez	a3,15ff0 <__lo0bits+0x4c>
   15fb6:	0027f693          	andi	a3,a5,2
   15fba:	c6b5                	beqz	a3,16026 <__lo0bits+0x82>
   15fbc:	8385                	srli	a5,a5,0x1
   15fbe:	c31c                	sw	a5,0(a4)
   15fc0:	4505                	li	a0,1
   15fc2:	8082                	ret
   15fc4:	01079693          	slli	a3,a5,0x10
   15fc8:	82c1                	srli	a3,a3,0x10
   15fca:	4501                	li	a0,0
   15fcc:	c6b9                	beqz	a3,1601a <__lo0bits+0x76>
   15fce:	0ff7f693          	zext.b	a3,a5
   15fd2:	ce95                	beqz	a3,1600e <__lo0bits+0x6a>
   15fd4:	00f7f693          	andi	a3,a5,15
   15fd8:	c68d                	beqz	a3,16002 <__lo0bits+0x5e>
   15fda:	0037f693          	andi	a3,a5,3
   15fde:	ce81                	beqz	a3,15ff6 <__lo0bits+0x52>
   15fe0:	0017f693          	andi	a3,a5,1
   15fe4:	e699                	bnez	a3,15ff2 <__lo0bits+0x4e>
   15fe6:	8385                	srli	a5,a5,0x1
   15fe8:	0505                	addi	a0,a0,1
   15fea:	e781                	bnez	a5,15ff2 <__lo0bits+0x4e>
   15fec:	02000513          	li	a0,32
   15ff0:	8082                	ret
   15ff2:	c31c                	sw	a5,0(a4)
   15ff4:	8082                	ret
   15ff6:	8389                	srli	a5,a5,0x2
   15ff8:	0017f693          	andi	a3,a5,1
   15ffc:	0509                	addi	a0,a0,2
   15ffe:	faf5                	bnez	a3,15ff2 <__lo0bits+0x4e>
   16000:	b7dd                	j	15fe6 <__lo0bits+0x42>
   16002:	8391                	srli	a5,a5,0x4
   16004:	0037f693          	andi	a3,a5,3
   16008:	0511                	addi	a0,a0,4
   1600a:	faf9                	bnez	a3,15fe0 <__lo0bits+0x3c>
   1600c:	b7ed                	j	15ff6 <__lo0bits+0x52>
   1600e:	83a1                	srli	a5,a5,0x8
   16010:	00f7f693          	andi	a3,a5,15
   16014:	0521                	addi	a0,a0,8
   16016:	f2f1                	bnez	a3,15fda <__lo0bits+0x36>
   16018:	b7ed                	j	16002 <__lo0bits+0x5e>
   1601a:	83c1                	srli	a5,a5,0x10
   1601c:	0ff7f693          	zext.b	a3,a5
   16020:	4541                	li	a0,16
   16022:	facd                	bnez	a3,15fd4 <__lo0bits+0x30>
   16024:	b7ed                	j	1600e <__lo0bits+0x6a>
   16026:	8389                	srli	a5,a5,0x2
   16028:	c31c                	sw	a5,0(a4)
   1602a:	4509                	li	a0,2
   1602c:	8082                	ret

0001602e <__i2b>:
   1602e:	417c                	lw	a5,68(a0)
   16030:	1141                	addi	sp,sp,-16
   16032:	c422                	sw	s0,8(sp)
   16034:	c226                	sw	s1,4(sp)
   16036:	c606                	sw	ra,12(sp)
   16038:	842a                	mv	s0,a0
   1603a:	84ae                	mv	s1,a1
   1603c:	cf99                	beqz	a5,1605a <__i2b+0x2c>
   1603e:	43c8                	lw	a0,4(a5)
   16040:	c121                	beqz	a0,16080 <__i2b+0x52>
   16042:	4118                	lw	a4,0(a0)
   16044:	c3d8                	sw	a4,4(a5)
   16046:	40b2                	lw	ra,12(sp)
   16048:	4422                	lw	s0,8(sp)
   1604a:	4785                	li	a5,1
   1604c:	c944                	sw	s1,20(a0)
   1604e:	00052623          	sw	zero,12(a0)
   16052:	c91c                	sw	a5,16(a0)
   16054:	4492                	lw	s1,4(sp)
   16056:	0141                	addi	sp,sp,16
   16058:	8082                	ret
   1605a:	02100613          	li	a2,33
   1605e:	4591                	li	a1,4
   16060:	0a0010ef          	jal	17100 <_calloc_r>
   16064:	c068                	sw	a0,68(s0)
   16066:	87aa                	mv	a5,a0
   16068:	f979                	bnez	a0,1603e <__i2b+0x10>
   1606a:	66ed                	lui	a3,0x1b
   1606c:	656d                	lui	a0,0x1b
   1606e:	a5068693          	addi	a3,a3,-1456 # 1aa50 <__clzsi2+0xd8>
   16072:	4601                	li	a2,0
   16074:	14500593          	li	a1,325
   16078:	ac050513          	addi	a0,a0,-1344 # 1aac0 <__clzsi2+0x148>
   1607c:	03e010ef          	jal	170ba <__assert_func>
   16080:	4671                	li	a2,28
   16082:	4585                	li	a1,1
   16084:	8522                	mv	a0,s0
   16086:	07a010ef          	jal	17100 <_calloc_r>
   1608a:	d165                	beqz	a0,1606a <__i2b+0x3c>
   1608c:	4785                	li	a5,1
   1608e:	c15c                	sw	a5,4(a0)
   16090:	4789                	li	a5,2
   16092:	c51c                	sw	a5,8(a0)
   16094:	bf4d                	j	16046 <__i2b+0x18>

00016096 <__multiply>:
   16096:	1101                	addi	sp,sp,-32
   16098:	c84a                	sw	s2,16(sp)
   1609a:	c64e                	sw	s3,12(sp)
   1609c:	0105a903          	lw	s2,16(a1)
   160a0:	01062983          	lw	s3,16(a2)
   160a4:	ca26                	sw	s1,20(sp)
   160a6:	c452                	sw	s4,8(sp)
   160a8:	ce06                	sw	ra,28(sp)
   160aa:	cc22                	sw	s0,24(sp)
   160ac:	8a2e                	mv	s4,a1
   160ae:	84b2                	mv	s1,a2
   160b0:	01394763          	blt	s2,s3,160be <__multiply+0x28>
   160b4:	874e                	mv	a4,s3
   160b6:	84ae                	mv	s1,a1
   160b8:	89ca                	mv	s3,s2
   160ba:	8a32                	mv	s4,a2
   160bc:	893a                	mv	s2,a4
   160be:	449c                	lw	a5,8(s1)
   160c0:	40cc                	lw	a1,4(s1)
   160c2:	01298433          	add	s0,s3,s2
   160c6:	0087a7b3          	slt	a5,a5,s0
   160ca:	95be                	add	a1,a1,a5
   160cc:	c5bff0ef          	jal	15d26 <_Balloc>
   160d0:	14050363          	beqz	a0,16216 <__multiply+0x180>
   160d4:	01450313          	addi	t1,a0,20
   160d8:	00241893          	slli	a7,s0,0x2
   160dc:	989a                	add	a7,a7,t1
   160de:	879a                	mv	a5,t1
   160e0:	01137763          	bgeu	t1,a7,160ee <__multiply+0x58>
   160e4:	0007a023          	sw	zero,0(a5)
   160e8:	0791                	addi	a5,a5,4
   160ea:	ff17ede3          	bltu	a5,a7,160e4 <__multiply+0x4e>
   160ee:	014a0813          	addi	a6,s4,20
   160f2:	00291e13          	slli	t3,s2,0x2
   160f6:	01448e93          	addi	t4,s1,20
   160fa:	00299593          	slli	a1,s3,0x2
   160fe:	9e42                	add	t3,t3,a6
   16100:	95f6                	add	a1,a1,t4
   16102:	0fc87163          	bgeu	a6,t3,161e4 <__multiply+0x14e>
   16106:	01548793          	addi	a5,s1,21
   1610a:	4f11                	li	t5,4
   1610c:	0ef5fe63          	bgeu	a1,a5,16208 <__multiply+0x172>
   16110:	66c1                	lui	a3,0x10
   16112:	16fd                	addi	a3,a3,-1 # ffff <exit-0x95>
   16114:	a809                	j	16126 <__multiply+0x90>
   16116:	010fdf93          	srli	t6,t6,0x10
   1611a:	060f9863          	bnez	t6,1618a <__multiply+0xf4>
   1611e:	0811                	addi	a6,a6,4
   16120:	0311                	addi	t1,t1,4
   16122:	0dc87163          	bgeu	a6,t3,161e4 <__multiply+0x14e>
   16126:	00082f83          	lw	t6,0(a6)
   1612a:	00dff3b3          	and	t2,t6,a3
   1612e:	fe0384e3          	beqz	t2,16116 <__multiply+0x80>
   16132:	829a                	mv	t0,t1
   16134:	8ff6                	mv	t6,t4
   16136:	4481                	li	s1,0
   16138:	000fa783          	lw	a5,0(t6)
   1613c:	0002a603          	lw	a2,0(t0) # 11448 <memset+0x8e>
   16140:	0291                	addi	t0,t0,4
   16142:	00d7f733          	and	a4,a5,a3
   16146:	02770733          	mul	a4,a4,t2
   1614a:	83c1                	srli	a5,a5,0x10
   1614c:	00d67933          	and	s2,a2,a3
   16150:	8241                	srli	a2,a2,0x10
   16152:	0f91                	addi	t6,t6,4
   16154:	027787b3          	mul	a5,a5,t2
   16158:	974a                	add	a4,a4,s2
   1615a:	9726                	add	a4,a4,s1
   1615c:	01075493          	srli	s1,a4,0x10
   16160:	8f75                	and	a4,a4,a3
   16162:	97b2                	add	a5,a5,a2
   16164:	97a6                	add	a5,a5,s1
   16166:	01079613          	slli	a2,a5,0x10
   1616a:	8f51                	or	a4,a4,a2
   1616c:	fee2ae23          	sw	a4,-4(t0)
   16170:	0107d493          	srli	s1,a5,0x10
   16174:	fcbfe2e3          	bltu	t6,a1,16138 <__multiply+0xa2>
   16178:	01e307b3          	add	a5,t1,t5
   1617c:	c384                	sw	s1,0(a5)
   1617e:	00082f83          	lw	t6,0(a6)
   16182:	010fdf93          	srli	t6,t6,0x10
   16186:	f80f8ce3          	beqz	t6,1611e <__multiply+0x88>
   1618a:	00032703          	lw	a4,0(t1)
   1618e:	829a                	mv	t0,t1
   16190:	8676                	mv	a2,t4
   16192:	84ba                	mv	s1,a4
   16194:	4381                	li	t2,0
   16196:	421c                	lw	a5,0(a2)
   16198:	0104d993          	srli	s3,s1,0x10
   1619c:	8f75                	and	a4,a4,a3
   1619e:	8ff5                	and	a5,a5,a3
   161a0:	03f787b3          	mul	a5,a5,t6
   161a4:	0042a483          	lw	s1,4(t0)
   161a8:	0291                	addi	t0,t0,4
   161aa:	0611                	addi	a2,a2,4
   161ac:	00d4f933          	and	s2,s1,a3
   161b0:	979e                	add	a5,a5,t2
   161b2:	97ce                	add	a5,a5,s3
   161b4:	01079393          	slli	t2,a5,0x10
   161b8:	00e3e733          	or	a4,t2,a4
   161bc:	fee2ae23          	sw	a4,-4(t0)
   161c0:	ffe65703          	lhu	a4,-2(a2)
   161c4:	83c1                	srli	a5,a5,0x10
   161c6:	03f70733          	mul	a4,a4,t6
   161ca:	974a                	add	a4,a4,s2
   161cc:	973e                	add	a4,a4,a5
   161ce:	01075393          	srli	t2,a4,0x10
   161d2:	fcb662e3          	bltu	a2,a1,16196 <__multiply+0x100>
   161d6:	01e307b3          	add	a5,t1,t5
   161da:	c398                	sw	a4,0(a5)
   161dc:	0811                	addi	a6,a6,4
   161de:	0311                	addi	t1,t1,4
   161e0:	f5c863e3          	bltu	a6,t3,16126 <__multiply+0x90>
   161e4:	00804563          	bgtz	s0,161ee <__multiply+0x158>
   161e8:	a039                	j	161f6 <__multiply+0x160>
   161ea:	147d                	addi	s0,s0,-1
   161ec:	c409                	beqz	s0,161f6 <__multiply+0x160>
   161ee:	ffc8a783          	lw	a5,-4(a7)
   161f2:	18f1                	addi	a7,a7,-4
   161f4:	dbfd                	beqz	a5,161ea <__multiply+0x154>
   161f6:	40f2                	lw	ra,28(sp)
   161f8:	c900                	sw	s0,16(a0)
   161fa:	4462                	lw	s0,24(sp)
   161fc:	44d2                	lw	s1,20(sp)
   161fe:	4942                	lw	s2,16(sp)
   16200:	49b2                	lw	s3,12(sp)
   16202:	4a22                	lw	s4,8(sp)
   16204:	6105                	addi	sp,sp,32
   16206:	8082                	ret
   16208:	409587b3          	sub	a5,a1,s1
   1620c:	17ad                	addi	a5,a5,-21
   1620e:	9bf1                	andi	a5,a5,-4
   16210:	00478f13          	addi	t5,a5,4
   16214:	bdf5                	j	16110 <__multiply+0x7a>
   16216:	66ed                	lui	a3,0x1b
   16218:	656d                	lui	a0,0x1b
   1621a:	a5068693          	addi	a3,a3,-1456 # 1aa50 <__clzsi2+0xd8>
   1621e:	4601                	li	a2,0
   16220:	16200593          	li	a1,354
   16224:	ac050513          	addi	a0,a0,-1344 # 1aac0 <__clzsi2+0x148>
   16228:	693000ef          	jal	170ba <__assert_func>

0001622c <__pow5mult>:
   1622c:	1101                	addi	sp,sp,-32
   1622e:	cc22                	sw	s0,24(sp)
   16230:	c84a                	sw	s2,16(sp)
   16232:	c64e                	sw	s3,12(sp)
   16234:	ce06                	sw	ra,28(sp)
   16236:	00367793          	andi	a5,a2,3
   1623a:	8432                	mv	s0,a2
   1623c:	89aa                	mv	s3,a0
   1623e:	892e                	mv	s2,a1
   16240:	ebad                	bnez	a5,162b2 <__pow5mult+0x86>
   16242:	8409                	srai	s0,s0,0x2
   16244:	c431                	beqz	s0,16290 <__pow5mult+0x64>
   16246:	ca26                	sw	s1,20(sp)
   16248:	0409a483          	lw	s1,64(s3)
   1624c:	ccbd                	beqz	s1,162ca <__pow5mult+0x9e>
   1624e:	00147793          	andi	a5,s0,1
   16252:	eb89                	bnez	a5,16264 <__pow5mult+0x38>
   16254:	8405                	srai	s0,s0,0x1
   16256:	cc05                	beqz	s0,1628e <__pow5mult+0x62>
   16258:	4088                	lw	a0,0(s1)
   1625a:	c131                	beqz	a0,1629e <__pow5mult+0x72>
   1625c:	84aa                	mv	s1,a0
   1625e:	00147793          	andi	a5,s0,1
   16262:	dbed                	beqz	a5,16254 <__pow5mult+0x28>
   16264:	8626                	mv	a2,s1
   16266:	85ca                	mv	a1,s2
   16268:	854e                	mv	a0,s3
   1626a:	e2dff0ef          	jal	16096 <__multiply>
   1626e:	00090d63          	beqz	s2,16288 <__pow5mult+0x5c>
   16272:	00492703          	lw	a4,4(s2)
   16276:	0449a783          	lw	a5,68(s3)
   1627a:	070a                	slli	a4,a4,0x2
   1627c:	97ba                	add	a5,a5,a4
   1627e:	4398                	lw	a4,0(a5)
   16280:	00e92023          	sw	a4,0(s2)
   16284:	0127a023          	sw	s2,0(a5)
   16288:	8405                	srai	s0,s0,0x1
   1628a:	892a                	mv	s2,a0
   1628c:	f471                	bnez	s0,16258 <__pow5mult+0x2c>
   1628e:	44d2                	lw	s1,20(sp)
   16290:	40f2                	lw	ra,28(sp)
   16292:	4462                	lw	s0,24(sp)
   16294:	49b2                	lw	s3,12(sp)
   16296:	854a                	mv	a0,s2
   16298:	4942                	lw	s2,16(sp)
   1629a:	6105                	addi	sp,sp,32
   1629c:	8082                	ret
   1629e:	8626                	mv	a2,s1
   162a0:	85a6                	mv	a1,s1
   162a2:	854e                	mv	a0,s3
   162a4:	df3ff0ef          	jal	16096 <__multiply>
   162a8:	c088                	sw	a0,0(s1)
   162aa:	00052023          	sw	zero,0(a0)
   162ae:	84aa                	mv	s1,a0
   162b0:	b77d                	j	1625e <__pow5mult+0x32>
   162b2:	17fd                	addi	a5,a5,-1
   162b4:	676d                	lui	a4,0x1b
   162b6:	d9c70713          	addi	a4,a4,-612 # 1ad9c <p05.0>
   162ba:	078a                	slli	a5,a5,0x2
   162bc:	97ba                	add	a5,a5,a4
   162be:	4390                	lw	a2,0(a5)
   162c0:	4681                	li	a3,0
   162c2:	ae3ff0ef          	jal	15da4 <__multadd>
   162c6:	892a                	mv	s2,a0
   162c8:	bfad                	j	16242 <__pow5mult+0x16>
   162ca:	4585                	li	a1,1
   162cc:	854e                	mv	a0,s3
   162ce:	a59ff0ef          	jal	15d26 <_Balloc>
   162d2:	84aa                	mv	s1,a0
   162d4:	c919                	beqz	a0,162ea <__pow5mult+0xbe>
   162d6:	27100793          	li	a5,625
   162da:	c95c                	sw	a5,20(a0)
   162dc:	4785                	li	a5,1
   162de:	c91c                	sw	a5,16(a0)
   162e0:	04a9a023          	sw	a0,64(s3)
   162e4:	00052023          	sw	zero,0(a0)
   162e8:	b79d                	j	1624e <__pow5mult+0x22>
   162ea:	66ed                	lui	a3,0x1b
   162ec:	656d                	lui	a0,0x1b
   162ee:	a5068693          	addi	a3,a3,-1456 # 1aa50 <__clzsi2+0xd8>
   162f2:	4601                	li	a2,0
   162f4:	14500593          	li	a1,325
   162f8:	ac050513          	addi	a0,a0,-1344 # 1aac0 <__clzsi2+0x148>
   162fc:	5bf000ef          	jal	170ba <__assert_func>

00016300 <__lshift>:
   16300:	1101                	addi	sp,sp,-32
   16302:	c256                	sw	s5,4(sp)
   16304:	0105aa83          	lw	s5,16(a1)
   16308:	459c                	lw	a5,8(a1)
   1630a:	c64e                	sw	s3,12(sp)
   1630c:	40565993          	srai	s3,a2,0x5
   16310:	9ace                	add	s5,s5,s3
   16312:	cc22                	sw	s0,24(sp)
   16314:	ca26                	sw	s1,20(sp)
   16316:	c84a                	sw	s2,16(sp)
   16318:	c452                	sw	s4,8(sp)
   1631a:	ce06                	sw	ra,28(sp)
   1631c:	001a8913          	addi	s2,s5,1
   16320:	84ae                	mv	s1,a1
   16322:	8432                	mv	s0,a2
   16324:	41cc                	lw	a1,4(a1)
   16326:	8a2a                	mv	s4,a0
   16328:	0127d663          	bge	a5,s2,16334 <__lshift+0x34>
   1632c:	0786                	slli	a5,a5,0x1
   1632e:	0585                	addi	a1,a1,1
   16330:	ff27cee3          	blt	a5,s2,1632c <__lshift+0x2c>
   16334:	8552                	mv	a0,s4
   16336:	9f1ff0ef          	jal	15d26 <_Balloc>
   1633a:	cd5d                	beqz	a0,163f8 <__lshift+0xf8>
   1633c:	01450813          	addi	a6,a0,20
   16340:	01305e63          	blez	s3,1635c <__lshift+0x5c>
   16344:	0995                	addi	s3,s3,5
   16346:	098a                	slli	s3,s3,0x2
   16348:	01350733          	add	a4,a0,s3
   1634c:	87c2                	mv	a5,a6
   1634e:	0791                	addi	a5,a5,4
   16350:	fe07ae23          	sw	zero,-4(a5)
   16354:	fee79de3          	bne	a5,a4,1634e <__lshift+0x4e>
   16358:	19b1                	addi	s3,s3,-20
   1635a:	984e                	add	a6,a6,s3
   1635c:	0104a883          	lw	a7,16(s1)
   16360:	01448793          	addi	a5,s1,20
   16364:	01f47613          	andi	a2,s0,31
   16368:	088a                	slli	a7,a7,0x2
   1636a:	98be                	add	a7,a7,a5
   1636c:	c63d                	beqz	a2,163da <__lshift+0xda>
   1636e:	02000593          	li	a1,32
   16372:	8d91                	sub	a1,a1,a2
   16374:	8342                	mv	t1,a6
   16376:	4681                	li	a3,0
   16378:	4398                	lw	a4,0(a5)
   1637a:	0311                	addi	t1,t1,4
   1637c:	0791                	addi	a5,a5,4
   1637e:	00c71733          	sll	a4,a4,a2
   16382:	8f55                	or	a4,a4,a3
   16384:	fee32e23          	sw	a4,-4(t1)
   16388:	ffc7a683          	lw	a3,-4(a5)
   1638c:	00b6d6b3          	srl	a3,a3,a1
   16390:	ff17e4e3          	bltu	a5,a7,16378 <__lshift+0x78>
   16394:	01548793          	addi	a5,s1,21
   16398:	4711                	li	a4,4
   1639a:	00f8e863          	bltu	a7,a5,163aa <__lshift+0xaa>
   1639e:	409887b3          	sub	a5,a7,s1
   163a2:	17ad                	addi	a5,a5,-21
   163a4:	9bf1                	andi	a5,a5,-4
   163a6:	00478713          	addi	a4,a5,4
   163aa:	983a                	add	a6,a6,a4
   163ac:	00d82023          	sw	a3,0(a6)
   163b0:	e291                	bnez	a3,163b4 <__lshift+0xb4>
   163b2:	8956                	mv	s2,s5
   163b4:	40d8                	lw	a4,4(s1)
   163b6:	044a2783          	lw	a5,68(s4)
   163ba:	40f2                	lw	ra,28(sp)
   163bc:	070a                	slli	a4,a4,0x2
   163be:	97ba                	add	a5,a5,a4
   163c0:	4398                	lw	a4,0(a5)
   163c2:	01252823          	sw	s2,16(a0)
   163c6:	4462                	lw	s0,24(sp)
   163c8:	c098                	sw	a4,0(s1)
   163ca:	c384                	sw	s1,0(a5)
   163cc:	4942                	lw	s2,16(sp)
   163ce:	44d2                	lw	s1,20(sp)
   163d0:	49b2                	lw	s3,12(sp)
   163d2:	4a22                	lw	s4,8(sp)
   163d4:	4a92                	lw	s5,4(sp)
   163d6:	6105                	addi	sp,sp,32
   163d8:	8082                	ret
   163da:	4398                	lw	a4,0(a5)
   163dc:	0791                	addi	a5,a5,4
   163de:	0811                	addi	a6,a6,4
   163e0:	fee82e23          	sw	a4,-4(a6)
   163e4:	fd17f7e3          	bgeu	a5,a7,163b2 <__lshift+0xb2>
   163e8:	4398                	lw	a4,0(a5)
   163ea:	0791                	addi	a5,a5,4
   163ec:	0811                	addi	a6,a6,4
   163ee:	fee82e23          	sw	a4,-4(a6)
   163f2:	ff17e4e3          	bltu	a5,a7,163da <__lshift+0xda>
   163f6:	bf75                	j	163b2 <__lshift+0xb2>
   163f8:	66ed                	lui	a3,0x1b
   163fa:	656d                	lui	a0,0x1b
   163fc:	a5068693          	addi	a3,a3,-1456 # 1aa50 <__clzsi2+0xd8>
   16400:	4601                	li	a2,0
   16402:	1de00593          	li	a1,478
   16406:	ac050513          	addi	a0,a0,-1344 # 1aac0 <__clzsi2+0x148>
   1640a:	4b1000ef          	jal	170ba <__assert_func>

0001640e <__mcmp>:
   1640e:	4918                	lw	a4,16(a0)
   16410:	499c                	lw	a5,16(a1)
   16412:	882a                	mv	a6,a0
   16414:	40f70533          	sub	a0,a4,a5
   16418:	02f71863          	bne	a4,a5,16448 <__mcmp+0x3a>
   1641c:	078a                	slli	a5,a5,0x2
   1641e:	0851                	addi	a6,a6,20
   16420:	05d1                	addi	a1,a1,20
   16422:	00f80733          	add	a4,a6,a5
   16426:	97ae                	add	a5,a5,a1
   16428:	a019                	j	1642e <__mcmp+0x20>
   1642a:	00e87f63          	bgeu	a6,a4,16448 <__mcmp+0x3a>
   1642e:	ffc72603          	lw	a2,-4(a4)
   16432:	ffc7a683          	lw	a3,-4(a5)
   16436:	1771                	addi	a4,a4,-4
   16438:	17f1                	addi	a5,a5,-4
   1643a:	fed608e3          	beq	a2,a3,1642a <__mcmp+0x1c>
   1643e:	4505                	li	a0,1
   16440:	00d67463          	bgeu	a2,a3,16448 <__mcmp+0x3a>
   16444:	557d                	li	a0,-1
   16446:	8082                	ret
   16448:	8082                	ret

0001644a <__mdiff>:
   1644a:	4998                	lw	a4,16(a1)
   1644c:	4a1c                	lw	a5,16(a2)
   1644e:	1141                	addi	sp,sp,-16
   16450:	c422                	sw	s0,8(sp)
   16452:	c226                	sw	s1,4(sp)
   16454:	c606                	sw	ra,12(sp)
   16456:	c04a                	sw	s2,0(sp)
   16458:	842e                	mv	s0,a1
   1645a:	84b2                	mv	s1,a2
   1645c:	40f706b3          	sub	a3,a4,a5
   16460:	12f71863          	bne	a4,a5,16590 <__mdiff+0x146>
   16464:	00279693          	slli	a3,a5,0x2
   16468:	01458613          	addi	a2,a1,20
   1646c:	01448713          	addi	a4,s1,20
   16470:	00d607b3          	add	a5,a2,a3
   16474:	9736                	add	a4,a4,a3
   16476:	a019                	j	1647c <__mdiff+0x32>
   16478:	12f67463          	bgeu	a2,a5,165a0 <__mdiff+0x156>
   1647c:	ffc7a583          	lw	a1,-4(a5)
   16480:	ffc72683          	lw	a3,-4(a4)
   16484:	17f1                	addi	a5,a5,-4
   16486:	1771                	addi	a4,a4,-4
   16488:	fed588e3          	beq	a1,a3,16478 <__mdiff+0x2e>
   1648c:	4905                	li	s2,1
   1648e:	00d5e663          	bltu	a1,a3,1649a <__mdiff+0x50>
   16492:	87a6                	mv	a5,s1
   16494:	4901                	li	s2,0
   16496:	84a2                	mv	s1,s0
   16498:	843e                	mv	s0,a5
   1649a:	40cc                	lw	a1,4(s1)
   1649c:	88bff0ef          	jal	15d26 <_Balloc>
   164a0:	12050763          	beqz	a0,165ce <__mdiff+0x184>
   164a4:	0104a883          	lw	a7,16(s1)
   164a8:	01042283          	lw	t0,16(s0)
   164ac:	01448f93          	addi	t6,s1,20
   164b0:	00289313          	slli	t1,a7,0x2
   164b4:	01440813          	addi	a6,s0,20
   164b8:	028a                	slli	t0,t0,0x2
   164ba:	01450593          	addi	a1,a0,20
   164be:	6e41                	lui	t3,0x10
   164c0:	01252623          	sw	s2,12(a0)
   164c4:	937e                	add	t1,t1,t6
   164c6:	92c2                	add	t0,t0,a6
   164c8:	8f2e                	mv	t5,a1
   164ca:	8efe                	mv	t4,t6
   164cc:	4681                	li	a3,0
   164ce:	1e7d                	addi	t3,t3,-1 # ffff <exit-0x95>
   164d0:	000ea703          	lw	a4,0(t4)
   164d4:	00082603          	lw	a2,0(a6)
   164d8:	0f11                	addi	t5,t5,4
   164da:	01c777b3          	and	a5,a4,t3
   164de:	01c673b3          	and	t2,a2,t3
   164e2:	407787b3          	sub	a5,a5,t2
   164e6:	97b6                	add	a5,a5,a3
   164e8:	8341                	srli	a4,a4,0x10
   164ea:	8241                	srli	a2,a2,0x10
   164ec:	4107d693          	srai	a3,a5,0x10
   164f0:	8f11                	sub	a4,a4,a2
   164f2:	9736                	add	a4,a4,a3
   164f4:	01071693          	slli	a3,a4,0x10
   164f8:	01c7f7b3          	and	a5,a5,t3
   164fc:	8fd5                	or	a5,a5,a3
   164fe:	0811                	addi	a6,a6,4
   16500:	feff2e23          	sw	a5,-4(t5)
   16504:	0e91                	addi	t4,t4,4
   16506:	41075693          	srai	a3,a4,0x10
   1650a:	fc5863e3          	bltu	a6,t0,164d0 <__mdiff+0x86>
   1650e:	01540713          	addi	a4,s0,21
   16512:	40828433          	sub	s0,t0,s0
   16516:	142d                	addi	s0,s0,-21
   16518:	00e2b2b3          	sltu	t0,t0,a4
   1651c:	0012cf13          	xori	t5,t0,1
   16520:	8009                	srli	s0,s0,0x2
   16522:	4711                	li	a4,4
   16524:	06028a63          	beqz	t0,16598 <__mdiff+0x14e>
   16528:	9fba                	add	t6,t6,a4
   1652a:	00e58833          	add	a6,a1,a4
   1652e:	6ec1                	lui	t4,0x10
   16530:	8e42                	mv	t3,a6
   16532:	867e                	mv	a2,t6
   16534:	1efd                	addi	t4,t4,-1 # ffff <exit-0x95>
   16536:	086ff363          	bgeu	t6,t1,165bc <__mdiff+0x172>
   1653a:	421c                	lw	a5,0(a2)
   1653c:	0e11                	addi	t3,t3,4
   1653e:	0611                	addi	a2,a2,4
   16540:	01d7f733          	and	a4,a5,t4
   16544:	9736                	add	a4,a4,a3
   16546:	0107d593          	srli	a1,a5,0x10
   1654a:	8741                	srai	a4,a4,0x10
   1654c:	972e                	add	a4,a4,a1
   1654e:	97b6                	add	a5,a5,a3
   16550:	01d7f7b3          	and	a5,a5,t4
   16554:	01071693          	slli	a3,a4,0x10
   16558:	8fd5                	or	a5,a5,a3
   1655a:	fefe2e23          	sw	a5,-4(t3)
   1655e:	41075693          	srai	a3,a4,0x10
   16562:	fc666ce3          	bltu	a2,t1,1653a <__mdiff+0xf0>
   16566:	137d                	addi	t1,t1,-1
   16568:	41f30333          	sub	t1,t1,t6
   1656c:	ffc37313          	andi	t1,t1,-4
   16570:	00680733          	add	a4,a6,t1
   16574:	e791                	bnez	a5,16580 <__mdiff+0x136>
   16576:	ffc72783          	lw	a5,-4(a4)
   1657a:	18fd                	addi	a7,a7,-1
   1657c:	1771                	addi	a4,a4,-4
   1657e:	dfe5                	beqz	a5,16576 <__mdiff+0x12c>
   16580:	40b2                	lw	ra,12(sp)
   16582:	4422                	lw	s0,8(sp)
   16584:	01152823          	sw	a7,16(a0)
   16588:	4492                	lw	s1,4(sp)
   1658a:	4902                	lw	s2,0(sp)
   1658c:	0141                	addi	sp,sp,16
   1658e:	8082                	ret
   16590:	4905                	li	s2,1
   16592:	f006d0e3          	bgez	a3,16492 <__mdiff+0x48>
   16596:	b711                	j	1649a <__mdiff+0x50>
   16598:	00140713          	addi	a4,s0,1
   1659c:	070a                	slli	a4,a4,0x2
   1659e:	b769                	j	16528 <__mdiff+0xde>
   165a0:	4581                	li	a1,0
   165a2:	f84ff0ef          	jal	15d26 <_Balloc>
   165a6:	cd1d                	beqz	a0,165e4 <__mdiff+0x19a>
   165a8:	40b2                	lw	ra,12(sp)
   165aa:	4422                	lw	s0,8(sp)
   165ac:	4785                	li	a5,1
   165ae:	c91c                	sw	a5,16(a0)
   165b0:	00052a23          	sw	zero,20(a0)
   165b4:	4492                	lw	s1,4(sp)
   165b6:	4902                	lw	s2,0(sp)
   165b8:	0141                	addi	sp,sp,16
   165ba:	8082                	ret
   165bc:	4701                	li	a4,0
   165be:	000f1463          	bnez	t5,165c6 <__mdiff+0x17c>
   165c2:	972e                	add	a4,a4,a1
   165c4:	bf45                	j	16574 <__mdiff+0x12a>
   165c6:	00241713          	slli	a4,s0,0x2
   165ca:	972e                	add	a4,a4,a1
   165cc:	b765                	j	16574 <__mdiff+0x12a>
   165ce:	66ed                	lui	a3,0x1b
   165d0:	656d                	lui	a0,0x1b
   165d2:	a5068693          	addi	a3,a3,-1456 # 1aa50 <__clzsi2+0xd8>
   165d6:	4601                	li	a2,0
   165d8:	24500593          	li	a1,581
   165dc:	ac050513          	addi	a0,a0,-1344 # 1aac0 <__clzsi2+0x148>
   165e0:	2db000ef          	jal	170ba <__assert_func>
   165e4:	66ed                	lui	a3,0x1b
   165e6:	656d                	lui	a0,0x1b
   165e8:	a5068693          	addi	a3,a3,-1456 # 1aa50 <__clzsi2+0xd8>
   165ec:	4601                	li	a2,0
   165ee:	23700593          	li	a1,567
   165f2:	ac050513          	addi	a0,a0,-1344 # 1aac0 <__clzsi2+0x148>
   165f6:	2c5000ef          	jal	170ba <__assert_func>

000165fa <__ulp>:
   165fa:	7ff007b7          	lui	a5,0x7ff00
   165fe:	8dfd                	and	a1,a1,a5
   16600:	fcc007b7          	lui	a5,0xfcc00
   16604:	95be                	add	a1,a1,a5
   16606:	4781                	li	a5,0
   16608:	00b05463          	blez	a1,16610 <__ulp+0x16>
   1660c:	853e                	mv	a0,a5
   1660e:	8082                	ret
   16610:	40b005b3          	neg	a1,a1
   16614:	85d1                	srai	a1,a1,0x14
   16616:	47cd                	li	a5,19
   16618:	00b7c963          	blt	a5,a1,1662a <__ulp+0x30>
   1661c:	000807b7          	lui	a5,0x80
   16620:	40b7d5b3          	sra	a1,a5,a1
   16624:	4781                	li	a5,0
   16626:	853e                	mv	a0,a5
   16628:	8082                	ret
   1662a:	15b1                	addi	a1,a1,-20
   1662c:	4779                	li	a4,30
   1662e:	4785                	li	a5,1
   16630:	00b74663          	blt	a4,a1,1663c <__ulp+0x42>
   16634:	800007b7          	lui	a5,0x80000
   16638:	00b7d7b3          	srl	a5,a5,a1
   1663c:	4581                	li	a1,0
   1663e:	853e                	mv	a0,a5
   16640:	8082                	ret

00016642 <__b2d>:
   16642:	1101                	addi	sp,sp,-32
   16644:	ca26                	sw	s1,20(sp)
   16646:	4904                	lw	s1,16(a0)
   16648:	cc22                	sw	s0,24(sp)
   1664a:	01450413          	addi	s0,a0,20
   1664e:	048a                	slli	s1,s1,0x2
   16650:	94a2                	add	s1,s1,s0
   16652:	c84a                	sw	s2,16(sp)
   16654:	ffc4a903          	lw	s2,-4(s1)
   16658:	c64e                	sw	s3,12(sp)
   1665a:	c452                	sw	s4,8(sp)
   1665c:	854a                	mv	a0,s2
   1665e:	89ae                	mv	s3,a1
   16660:	ce06                	sw	ra,28(sp)
   16662:	8efff0ef          	jal	15f50 <__hi0bits>
   16666:	02000713          	li	a4,32
   1666a:	40a707b3          	sub	a5,a4,a0
   1666e:	00f9a023          	sw	a5,0(s3)
   16672:	47a9                	li	a5,10
   16674:	ffc48a13          	addi	s4,s1,-4
   16678:	06a7db63          	bge	a5,a0,166ee <__b2d+0xac>
   1667c:	ff550613          	addi	a2,a0,-11
   16680:	03447d63          	bgeu	s0,s4,166ba <__b2d+0x78>
   16684:	ff84a783          	lw	a5,-8(s1)
   16688:	c629                	beqz	a2,166d2 <__b2d+0x90>
   1668a:	40c706b3          	sub	a3,a4,a2
   1668e:	00d7d733          	srl	a4,a5,a3
   16692:	00c91933          	sll	s2,s2,a2
   16696:	00e96933          	or	s2,s2,a4
   1669a:	ff848593          	addi	a1,s1,-8
   1669e:	3ff00737          	lui	a4,0x3ff00
   166a2:	00e96733          	or	a4,s2,a4
   166a6:	00c797b3          	sll	a5,a5,a2
   166aa:	02b47863          	bgeu	s0,a1,166da <__b2d+0x98>
   166ae:	ff44a603          	lw	a2,-12(s1)
   166b2:	00d656b3          	srl	a3,a2,a3
   166b6:	8fd5                	or	a5,a5,a3
   166b8:	a00d                	j	166da <__b2d+0x98>
   166ba:	47ad                	li	a5,11
   166bc:	00f50a63          	beq	a0,a5,166d0 <__b2d+0x8e>
   166c0:	00c91933          	sll	s2,s2,a2
   166c4:	3ff00737          	lui	a4,0x3ff00
   166c8:	00e96733          	or	a4,s2,a4
   166cc:	4781                	li	a5,0
   166ce:	a031                	j	166da <__b2d+0x98>
   166d0:	4781                	li	a5,0
   166d2:	3ff00737          	lui	a4,0x3ff00
   166d6:	00e96733          	or	a4,s2,a4
   166da:	40f2                	lw	ra,28(sp)
   166dc:	4462                	lw	s0,24(sp)
   166de:	44d2                	lw	s1,20(sp)
   166e0:	4942                	lw	s2,16(sp)
   166e2:	49b2                	lw	s3,12(sp)
   166e4:	4a22                	lw	s4,8(sp)
   166e6:	853e                	mv	a0,a5
   166e8:	85ba                	mv	a1,a4
   166ea:	6105                	addi	sp,sp,32
   166ec:	8082                	ret
   166ee:	46ad                	li	a3,11
   166f0:	8e89                	sub	a3,a3,a0
   166f2:	3ff007b7          	lui	a5,0x3ff00
   166f6:	00d95733          	srl	a4,s2,a3
   166fa:	8f5d                	or	a4,a4,a5
   166fc:	4781                	li	a5,0
   166fe:	01447663          	bgeu	s0,s4,1670a <__b2d+0xc8>
   16702:	ff84a783          	lw	a5,-8(s1)
   16706:	00d7d7b3          	srl	a5,a5,a3
   1670a:	0555                	addi	a0,a0,21
   1670c:	00a91933          	sll	s2,s2,a0
   16710:	00f967b3          	or	a5,s2,a5
   16714:	b7d9                	j	166da <__b2d+0x98>

00016716 <__d2b>:
   16716:	7179                	addi	sp,sp,-48
   16718:	ca56                	sw	s5,20(sp)
   1671a:	8aae                	mv	s5,a1
   1671c:	4585                	li	a1,1
   1671e:	d226                	sw	s1,36(sp)
   16720:	ce4e                	sw	s3,28(sp)
   16722:	cc52                	sw	s4,24(sp)
   16724:	d606                	sw	ra,44(sp)
   16726:	d422                	sw	s0,40(sp)
   16728:	d04a                	sw	s2,32(sp)
   1672a:	84b2                	mv	s1,a2
   1672c:	8a36                	mv	s4,a3
   1672e:	89ba                	mv	s3,a4
   16730:	df6ff0ef          	jal	15d26 <_Balloc>
   16734:	c955                	beqz	a0,167e8 <__d2b+0xd2>
   16736:	00100737          	lui	a4,0x100
   1673a:	0144d913          	srli	s2,s1,0x14
   1673e:	fff70793          	addi	a5,a4,-1 # fffff <__BSS_END__+0xe3353>
   16742:	7ff97913          	andi	s2,s2,2047
   16746:	842a                	mv	s0,a0
   16748:	8fe5                	and	a5,a5,s1
   1674a:	00090363          	beqz	s2,16750 <__d2b+0x3a>
   1674e:	8fd9                	or	a5,a5,a4
   16750:	c63e                	sw	a5,12(sp)
   16752:	040a9263          	bnez	s5,16796 <__d2b+0x80>
   16756:	0068                	addi	a0,sp,12
   16758:	84dff0ef          	jal	15fa4 <__lo0bits>
   1675c:	4732                	lw	a4,12(sp)
   1675e:	4485                	li	s1,1
   16760:	c804                	sw	s1,16(s0)
   16762:	c858                	sw	a4,20(s0)
   16764:	02050793          	addi	a5,a0,32
   16768:	06090063          	beqz	s2,167c8 <__d2b+0xb2>
   1676c:	bcd90913          	addi	s2,s2,-1075
   16770:	993e                	add	s2,s2,a5
   16772:	03500493          	li	s1,53
   16776:	012a2023          	sw	s2,0(s4)
   1677a:	40f48533          	sub	a0,s1,a5
   1677e:	00a9a023          	sw	a0,0(s3)
   16782:	50b2                	lw	ra,44(sp)
   16784:	8522                	mv	a0,s0
   16786:	5422                	lw	s0,40(sp)
   16788:	5492                	lw	s1,36(sp)
   1678a:	5902                	lw	s2,32(sp)
   1678c:	49f2                	lw	s3,28(sp)
   1678e:	4a62                	lw	s4,24(sp)
   16790:	4ad2                	lw	s5,20(sp)
   16792:	6145                	addi	sp,sp,48
   16794:	8082                	ret
   16796:	0028                	addi	a0,sp,8
   16798:	c456                	sw	s5,8(sp)
   1679a:	80bff0ef          	jal	15fa4 <__lo0bits>
   1679e:	4732                	lw	a4,12(sp)
   167a0:	87aa                	mv	a5,a0
   167a2:	c129                	beqz	a0,167e4 <__d2b+0xce>
   167a4:	4622                	lw	a2,8(sp)
   167a6:	02000693          	li	a3,32
   167aa:	8e89                	sub	a3,a3,a0
   167ac:	00d716b3          	sll	a3,a4,a3
   167b0:	00a75733          	srl	a4,a4,a0
   167b4:	8ed1                	or	a3,a3,a2
   167b6:	c63a                	sw	a4,12(sp)
   167b8:	00e034b3          	snez	s1,a4
   167bc:	0485                	addi	s1,s1,1
   167be:	c854                	sw	a3,20(s0)
   167c0:	cc18                	sw	a4,24(s0)
   167c2:	c804                	sw	s1,16(s0)
   167c4:	fa0914e3          	bnez	s2,1676c <__d2b+0x56>
   167c8:	00249713          	slli	a4,s1,0x2
   167cc:	9722                	add	a4,a4,s0
   167ce:	4b08                	lw	a0,16(a4)
   167d0:	bce78793          	addi	a5,a5,-1074 # 3feffbce <__BSS_END__+0x3fee2f22>
   167d4:	00fa2023          	sw	a5,0(s4)
   167d8:	f78ff0ef          	jal	15f50 <__hi0bits>
   167dc:	0496                	slli	s1,s1,0x5
   167de:	40a48533          	sub	a0,s1,a0
   167e2:	bf71                	j	1677e <__d2b+0x68>
   167e4:	46a2                	lw	a3,8(sp)
   167e6:	bfc9                	j	167b8 <__d2b+0xa2>
   167e8:	66ed                	lui	a3,0x1b
   167ea:	656d                	lui	a0,0x1b
   167ec:	a5068693          	addi	a3,a3,-1456 # 1aa50 <__clzsi2+0xd8>
   167f0:	4601                	li	a2,0
   167f2:	30f00593          	li	a1,783
   167f6:	ac050513          	addi	a0,a0,-1344 # 1aac0 <__clzsi2+0x148>
   167fa:	0c1000ef          	jal	170ba <__assert_func>

000167fe <__ratio>:
   167fe:	7179                	addi	sp,sp,-48
   16800:	d422                	sw	s0,40(sp)
   16802:	842e                	mv	s0,a1
   16804:	082c                	addi	a1,sp,24
   16806:	d606                	sw	ra,44(sp)
   16808:	d226                	sw	s1,36(sp)
   1680a:	84aa                	mv	s1,a0
   1680c:	e37ff0ef          	jal	16642 <__b2d>
   16810:	c02a                	sw	a0,0(sp)
   16812:	c22e                	sw	a1,4(sp)
   16814:	2782                	fld	fa5,0(sp)
   16816:	086c                	addi	a1,sp,28
   16818:	8522                	mv	a0,s0
   1681a:	a43e                	fsd	fa5,8(sp)
   1681c:	e27ff0ef          	jal	16642 <__b2d>
   16820:	4818                	lw	a4,16(s0)
   16822:	489c                	lw	a5,16(s1)
   16824:	46f2                	lw	a3,28(sp)
   16826:	c02a                	sw	a0,0(sp)
   16828:	8f99                	sub	a5,a5,a4
   1682a:	4762                	lw	a4,24(sp)
   1682c:	0796                	slli	a5,a5,0x5
   1682e:	c22e                	sw	a1,4(sp)
   16830:	8f15                	sub	a4,a4,a3
   16832:	97ba                	add	a5,a5,a4
   16834:	02f05263          	blez	a5,16858 <__ratio+0x5a>
   16838:	46b2                	lw	a3,12(sp)
   1683a:	07d2                	slli	a5,a5,0x14
   1683c:	97b6                	add	a5,a5,a3
   1683e:	c63e                	sw	a5,12(sp)
   16840:	2702                	fld	fa4,0(sp)
   16842:	27a2                	fld	fa5,8(sp)
   16844:	50b2                	lw	ra,44(sp)
   16846:	5422                	lw	s0,40(sp)
   16848:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   1684c:	5492                	lw	s1,36(sp)
   1684e:	a03e                	fsd	fa5,0(sp)
   16850:	4502                	lw	a0,0(sp)
   16852:	4592                	lw	a1,4(sp)
   16854:	6145                	addi	sp,sp,48
   16856:	8082                	ret
   16858:	4692                	lw	a3,4(sp)
   1685a:	07d2                	slli	a5,a5,0x14
   1685c:	40f687b3          	sub	a5,a3,a5
   16860:	c23e                	sw	a5,4(sp)
   16862:	bff9                	j	16840 <__ratio+0x42>

00016864 <_mprec_log10>:
   16864:	47dd                	li	a5,23
   16866:	1141                	addi	sp,sp,-16
   16868:	00a7df63          	bge	a5,a0,16886 <_mprec_log10+0x22>
   1686c:	ed81b787          	fld	fa5,-296(gp) # 1c938 <__SDATA_BEGIN__+0x30>
   16870:	ee01b707          	fld	fa4,-288(gp) # 1c940 <__SDATA_BEGIN__+0x38>
   16874:	157d                	addi	a0,a0,-1
   16876:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   1687a:	fd6d                	bnez	a0,16874 <_mprec_log10+0x10>
   1687c:	a43e                	fsd	fa5,8(sp)
   1687e:	4522                	lw	a0,8(sp)
   16880:	45b2                	lw	a1,12(sp)
   16882:	0141                	addi	sp,sp,16
   16884:	8082                	ret
   16886:	67ed                	lui	a5,0x1b
   16888:	050e                	slli	a0,a0,0x3
   1688a:	df878793          	addi	a5,a5,-520 # 1adf8 <__mprec_tens>
   1688e:	97aa                	add	a5,a5,a0
   16890:	239c                	fld	fa5,0(a5)
   16892:	a43e                	fsd	fa5,8(sp)
   16894:	4522                	lw	a0,8(sp)
   16896:	45b2                	lw	a1,12(sp)
   16898:	0141                	addi	sp,sp,16
   1689a:	8082                	ret

0001689c <__copybits>:
   1689c:	4a14                	lw	a3,16(a2)
   1689e:	15fd                	addi	a1,a1,-1
   168a0:	8595                	srai	a1,a1,0x5
   168a2:	0585                	addi	a1,a1,1
   168a4:	01460793          	addi	a5,a2,20
   168a8:	068a                	slli	a3,a3,0x2
   168aa:	058a                	slli	a1,a1,0x2
   168ac:	96be                	add	a3,a3,a5
   168ae:	95aa                	add	a1,a1,a0
   168b0:	02d7f163          	bgeu	a5,a3,168d2 <__copybits+0x36>
   168b4:	872a                	mv	a4,a0
   168b6:	0007a803          	lw	a6,0(a5)
   168ba:	0791                	addi	a5,a5,4
   168bc:	0711                	addi	a4,a4,4
   168be:	ff072e23          	sw	a6,-4(a4)
   168c2:	fed7eae3          	bltu	a5,a3,168b6 <__copybits+0x1a>
   168c6:	40c687b3          	sub	a5,a3,a2
   168ca:	17ad                	addi	a5,a5,-21
   168cc:	9bf1                	andi	a5,a5,-4
   168ce:	0791                	addi	a5,a5,4
   168d0:	953e                	add	a0,a0,a5
   168d2:	00b57763          	bgeu	a0,a1,168e0 <__copybits+0x44>
   168d6:	0511                	addi	a0,a0,4
   168d8:	fe052e23          	sw	zero,-4(a0)
   168dc:	feb56de3          	bltu	a0,a1,168d6 <__copybits+0x3a>
   168e0:	8082                	ret

000168e2 <__any_on>:
   168e2:	4918                	lw	a4,16(a0)
   168e4:	4055d613          	srai	a2,a1,0x5
   168e8:	01450693          	addi	a3,a0,20
   168ec:	00c75d63          	bge	a4,a2,16906 <__any_on+0x24>
   168f0:	070a                	slli	a4,a4,0x2
   168f2:	00e687b3          	add	a5,a3,a4
   168f6:	02f6f863          	bgeu	a3,a5,16926 <__any_on+0x44>
   168fa:	ffc7a703          	lw	a4,-4(a5)
   168fe:	17f1                	addi	a5,a5,-4
   16900:	db7d                	beqz	a4,168f6 <__any_on+0x14>
   16902:	4505                	li	a0,1
   16904:	8082                	ret
   16906:	00261793          	slli	a5,a2,0x2
   1690a:	97b6                	add	a5,a5,a3
   1690c:	fee655e3          	bge	a2,a4,168f6 <__any_on+0x14>
   16910:	89fd                	andi	a1,a1,31
   16912:	d1f5                	beqz	a1,168f6 <__any_on+0x14>
   16914:	4390                	lw	a2,0(a5)
   16916:	4505                	li	a0,1
   16918:	00b65733          	srl	a4,a2,a1
   1691c:	00b71733          	sll	a4,a4,a1
   16920:	fce60be3          	beq	a2,a4,168f6 <__any_on+0x14>
   16924:	8082                	ret
   16926:	4501                	li	a0,0
   16928:	8082                	ret

0001692a <_realloc_r>:
   1692a:	7179                	addi	sp,sp,-48
   1692c:	d226                	sw	s1,36(sp)
   1692e:	d606                	sw	ra,44(sp)
   16930:	84b2                	mv	s1,a2
   16932:	14058d63          	beqz	a1,16a8c <_realloc_r+0x162>
   16936:	d422                	sw	s0,40(sp)
   16938:	d04a                	sw	s2,32(sp)
   1693a:	842e                	mv	s0,a1
   1693c:	ce4e                	sw	s3,28(sp)
   1693e:	ca56                	sw	s5,20(sp)
   16940:	cc52                	sw	s4,24(sp)
   16942:	892a                	mv	s2,a0
   16944:	c8afb0ef          	jal	11dce <__malloc_lock>
   16948:	ffc42703          	lw	a4,-4(s0)
   1694c:	00b48793          	addi	a5,s1,11
   16950:	46d9                	li	a3,22
   16952:	ff840a93          	addi	s5,s0,-8
   16956:	ffc77993          	andi	s3,a4,-4
   1695a:	0af6ff63          	bgeu	a3,a5,16a18 <_realloc_r+0xee>
   1695e:	ff87fa13          	andi	s4,a5,-8
   16962:	0a07ce63          	bltz	a5,16a1e <_realloc_r+0xf4>
   16966:	0a9a6c63          	bltu	s4,s1,16a1e <_realloc_r+0xf4>
   1696a:	0d49d563          	bge	s3,s4,16a34 <_realloc_r+0x10a>
   1696e:	67f1                	lui	a5,0x1c
   16970:	c462                	sw	s8,8(sp)
   16972:	39078c13          	addi	s8,a5,912 # 1c390 <__malloc_av_>
   16976:	008c2603          	lw	a2,8(s8)
   1697a:	013a86b3          	add	a3,s5,s3
   1697e:	42dc                	lw	a5,4(a3)
   16980:	12d60e63          	beq	a2,a3,16abc <_realloc_r+0x192>
   16984:	ffe7f613          	andi	a2,a5,-2
   16988:	9636                	add	a2,a2,a3
   1698a:	4250                	lw	a2,4(a2)
   1698c:	8a05                	andi	a2,a2,1
   1698e:	e27d                	bnez	a2,16a74 <_realloc_r+0x14a>
   16990:	9bf1                	andi	a5,a5,-4
   16992:	00f98633          	add	a2,s3,a5
   16996:	09465963          	bge	a2,s4,16a28 <_realloc_r+0xfe>
   1699a:	8b05                	andi	a4,a4,1
   1699c:	e70d                	bnez	a4,169c6 <_realloc_r+0x9c>
   1699e:	c65e                	sw	s7,12(sp)
   169a0:	ff842b83          	lw	s7,-8(s0)
   169a4:	c85a                	sw	s6,16(sp)
   169a6:	417a8bb3          	sub	s7,s5,s7
   169aa:	004ba703          	lw	a4,4(s7)
   169ae:	9b71                	andi	a4,a4,-4
   169b0:	97ba                	add	a5,a5,a4
   169b2:	01378b33          	add	s6,a5,s3
   169b6:	234b5f63          	bge	s6,s4,16bf4 <_realloc_r+0x2ca>
   169ba:	00e98b33          	add	s6,s3,a4
   169be:	1d4b5463          	bge	s6,s4,16b86 <_realloc_r+0x25c>
   169c2:	4b42                	lw	s6,16(sp)
   169c4:	4bb2                	lw	s7,12(sp)
   169c6:	85a6                	mv	a1,s1
   169c8:	854a                	mv	a0,s2
   169ca:	e61fa0ef          	jal	1182a <_malloc_r>
   169ce:	84aa                	mv	s1,a0
   169d0:	2e050063          	beqz	a0,16cb0 <_realloc_r+0x386>
   169d4:	ffc42783          	lw	a5,-4(s0)
   169d8:	ff850713          	addi	a4,a0,-8
   169dc:	9bf9                	andi	a5,a5,-2
   169de:	97d6                	add	a5,a5,s5
   169e0:	18e78d63          	beq	a5,a4,16b7a <_realloc_r+0x250>
   169e4:	ffc98613          	addi	a2,s3,-4
   169e8:	02400793          	li	a5,36
   169ec:	20c7e063          	bltu	a5,a2,16bec <_realloc_r+0x2c2>
   169f0:	474d                	li	a4,19
   169f2:	16c76863          	bltu	a4,a2,16b62 <_realloc_r+0x238>
   169f6:	87aa                	mv	a5,a0
   169f8:	8722                	mv	a4,s0
   169fa:	4314                	lw	a3,0(a4)
   169fc:	c394                	sw	a3,0(a5)
   169fe:	4354                	lw	a3,4(a4)
   16a00:	c3d4                	sw	a3,4(a5)
   16a02:	4718                	lw	a4,8(a4)
   16a04:	c798                	sw	a4,8(a5)
   16a06:	85a2                	mv	a1,s0
   16a08:	854a                	mv	a0,s2
   16a0a:	bfffa0ef          	jal	11608 <_free_r>
   16a0e:	854a                	mv	a0,s2
   16a10:	bc0fb0ef          	jal	11dd0 <__malloc_unlock>
   16a14:	4c22                	lw	s8,8(sp)
   16a16:	a0a9                	j	16a60 <_realloc_r+0x136>
   16a18:	4a41                	li	s4,16
   16a1a:	f49a78e3          	bgeu	s4,s1,1696a <_realloc_r+0x40>
   16a1e:	47b1                	li	a5,12
   16a20:	00f92023          	sw	a5,0(s2)
   16a24:	4481                	li	s1,0
   16a26:	a82d                	j	16a60 <_realloc_r+0x136>
   16a28:	46dc                	lw	a5,12(a3)
   16a2a:	4698                	lw	a4,8(a3)
   16a2c:	4c22                	lw	s8,8(sp)
   16a2e:	89b2                	mv	s3,a2
   16a30:	c75c                	sw	a5,12(a4)
   16a32:	c798                	sw	a4,8(a5)
   16a34:	004aa783          	lw	a5,4(s5)
   16a38:	414986b3          	sub	a3,s3,s4
   16a3c:	463d                	li	a2,15
   16a3e:	8b85                	andi	a5,a5,1
   16a40:	013a8733          	add	a4,s5,s3
   16a44:	04d66a63          	bltu	a2,a3,16a98 <_realloc_r+0x16e>
   16a48:	0137e7b3          	or	a5,a5,s3
   16a4c:	00faa223          	sw	a5,4(s5)
   16a50:	435c                	lw	a5,4(a4)
   16a52:	0017e793          	ori	a5,a5,1
   16a56:	c35c                	sw	a5,4(a4)
   16a58:	854a                	mv	a0,s2
   16a5a:	b76fb0ef          	jal	11dd0 <__malloc_unlock>
   16a5e:	84a2                	mv	s1,s0
   16a60:	5422                	lw	s0,40(sp)
   16a62:	50b2                	lw	ra,44(sp)
   16a64:	5902                	lw	s2,32(sp)
   16a66:	49f2                	lw	s3,28(sp)
   16a68:	4a62                	lw	s4,24(sp)
   16a6a:	4ad2                	lw	s5,20(sp)
   16a6c:	8526                	mv	a0,s1
   16a6e:	5492                	lw	s1,36(sp)
   16a70:	6145                	addi	sp,sp,48
   16a72:	8082                	ret
   16a74:	8b05                	andi	a4,a4,1
   16a76:	fb21                	bnez	a4,169c6 <_realloc_r+0x9c>
   16a78:	c65e                	sw	s7,12(sp)
   16a7a:	ff842b83          	lw	s7,-8(s0)
   16a7e:	c85a                	sw	s6,16(sp)
   16a80:	417a8bb3          	sub	s7,s5,s7
   16a84:	004ba703          	lw	a4,4(s7)
   16a88:	9b71                	andi	a4,a4,-4
   16a8a:	bf05                	j	169ba <_realloc_r+0x90>
   16a8c:	50b2                	lw	ra,44(sp)
   16a8e:	5492                	lw	s1,36(sp)
   16a90:	85b2                	mv	a1,a2
   16a92:	6145                	addi	sp,sp,48
   16a94:	d97fa06f          	j	1182a <_malloc_r>
   16a98:	0147e7b3          	or	a5,a5,s4
   16a9c:	00faa223          	sw	a5,4(s5)
   16aa0:	014a85b3          	add	a1,s5,s4
   16aa4:	0016e693          	ori	a3,a3,1
   16aa8:	c1d4                	sw	a3,4(a1)
   16aaa:	435c                	lw	a5,4(a4)
   16aac:	05a1                	addi	a1,a1,8
   16aae:	854a                	mv	a0,s2
   16ab0:	0017e793          	ori	a5,a5,1
   16ab4:	c35c                	sw	a5,4(a4)
   16ab6:	b53fa0ef          	jal	11608 <_free_r>
   16aba:	bf79                	j	16a58 <_realloc_r+0x12e>
   16abc:	9bf1                	andi	a5,a5,-4
   16abe:	013786b3          	add	a3,a5,s3
   16ac2:	010a0613          	addi	a2,s4,16
   16ac6:	1ac6db63          	bge	a3,a2,16c7c <_realloc_r+0x352>
   16aca:	8b05                	andi	a4,a4,1
   16acc:	ee071de3          	bnez	a4,169c6 <_realloc_r+0x9c>
   16ad0:	c65e                	sw	s7,12(sp)
   16ad2:	ff842b83          	lw	s7,-8(s0)
   16ad6:	c85a                	sw	s6,16(sp)
   16ad8:	417a8bb3          	sub	s7,s5,s7
   16adc:	004ba703          	lw	a4,4(s7)
   16ae0:	9b71                	andi	a4,a4,-4
   16ae2:	97ba                	add	a5,a5,a4
   16ae4:	01378b33          	add	s6,a5,s3
   16ae8:	eccb49e3          	blt	s6,a2,169ba <_realloc_r+0x90>
   16aec:	00cba783          	lw	a5,12(s7)
   16af0:	008ba703          	lw	a4,8(s7)
   16af4:	ffc98613          	addi	a2,s3,-4
   16af8:	02400693          	li	a3,36
   16afc:	c75c                	sw	a5,12(a4)
   16afe:	c798                	sw	a4,8(a5)
   16b00:	008b8493          	addi	s1,s7,8
   16b04:	1cc6e563          	bltu	a3,a2,16cce <_realloc_r+0x3a4>
   16b08:	474d                	li	a4,19
   16b0a:	87a6                	mv	a5,s1
   16b0c:	00c77e63          	bgeu	a4,a2,16b28 <_realloc_r+0x1fe>
   16b10:	4018                	lw	a4,0(s0)
   16b12:	47ed                	li	a5,27
   16b14:	00eba423          	sw	a4,8(s7)
   16b18:	4058                	lw	a4,4(s0)
   16b1a:	00eba623          	sw	a4,12(s7)
   16b1e:	1ac7ed63          	bltu	a5,a2,16cd8 <_realloc_r+0x3ae>
   16b22:	0421                	addi	s0,s0,8
   16b24:	010b8793          	addi	a5,s7,16
   16b28:	4018                	lw	a4,0(s0)
   16b2a:	c398                	sw	a4,0(a5)
   16b2c:	4058                	lw	a4,4(s0)
   16b2e:	c3d8                	sw	a4,4(a5)
   16b30:	4418                	lw	a4,8(s0)
   16b32:	c798                	sw	a4,8(a5)
   16b34:	014b8733          	add	a4,s7,s4
   16b38:	414b0b33          	sub	s6,s6,s4
   16b3c:	00ec2423          	sw	a4,8(s8)
   16b40:	001b6793          	ori	a5,s6,1
   16b44:	c35c                	sw	a5,4(a4)
   16b46:	004ba783          	lw	a5,4(s7)
   16b4a:	854a                	mv	a0,s2
   16b4c:	8b85                	andi	a5,a5,1
   16b4e:	0147e7b3          	or	a5,a5,s4
   16b52:	00fba223          	sw	a5,4(s7)
   16b56:	a7afb0ef          	jal	11dd0 <__malloc_unlock>
   16b5a:	4b42                	lw	s6,16(sp)
   16b5c:	4bb2                	lw	s7,12(sp)
   16b5e:	4c22                	lw	s8,8(sp)
   16b60:	b701                	j	16a60 <_realloc_r+0x136>
   16b62:	4014                	lw	a3,0(s0)
   16b64:	476d                	li	a4,27
   16b66:	c114                	sw	a3,0(a0)
   16b68:	4054                	lw	a3,4(s0)
   16b6a:	c154                	sw	a3,4(a0)
   16b6c:	0ec76d63          	bltu	a4,a2,16c66 <_realloc_r+0x33c>
   16b70:	00840713          	addi	a4,s0,8
   16b74:	00850793          	addi	a5,a0,8
   16b78:	b549                	j	169fa <_realloc_r+0xd0>
   16b7a:	ffc52783          	lw	a5,-4(a0)
   16b7e:	4c22                	lw	s8,8(sp)
   16b80:	9bf1                	andi	a5,a5,-4
   16b82:	99be                	add	s3,s3,a5
   16b84:	bd45                	j	16a34 <_realloc_r+0x10a>
   16b86:	00cba783          	lw	a5,12(s7)
   16b8a:	008ba703          	lw	a4,8(s7)
   16b8e:	ffc98613          	addi	a2,s3,-4
   16b92:	02400693          	li	a3,36
   16b96:	c75c                	sw	a5,12(a4)
   16b98:	c798                	sw	a4,8(a5)
   16b9a:	008b8493          	addi	s1,s7,8
   16b9e:	0ac6ef63          	bltu	a3,a2,16c5c <_realloc_r+0x332>
   16ba2:	474d                	li	a4,19
   16ba4:	87a6                	mv	a5,s1
   16ba6:	02c77663          	bgeu	a4,a2,16bd2 <_realloc_r+0x2a8>
   16baa:	4018                	lw	a4,0(s0)
   16bac:	47ed                	li	a5,27
   16bae:	00eba423          	sw	a4,8(s7)
   16bb2:	4058                	lw	a4,4(s0)
   16bb4:	00eba623          	sw	a4,12(s7)
   16bb8:	0ec7f863          	bgeu	a5,a2,16ca8 <_realloc_r+0x37e>
   16bbc:	441c                	lw	a5,8(s0)
   16bbe:	00fba823          	sw	a5,16(s7)
   16bc2:	445c                	lw	a5,12(s0)
   16bc4:	00fbaa23          	sw	a5,20(s7)
   16bc8:	06d60f63          	beq	a2,a3,16c46 <_realloc_r+0x31c>
   16bcc:	0441                	addi	s0,s0,16
   16bce:	018b8793          	addi	a5,s7,24
   16bd2:	4018                	lw	a4,0(s0)
   16bd4:	c398                	sw	a4,0(a5)
   16bd6:	4058                	lw	a4,4(s0)
   16bd8:	c3d8                	sw	a4,4(a5)
   16bda:	4418                	lw	a4,8(s0)
   16bdc:	c798                	sw	a4,8(a5)
   16bde:	89da                	mv	s3,s6
   16be0:	8ade                	mv	s5,s7
   16be2:	4b42                	lw	s6,16(sp)
   16be4:	4bb2                	lw	s7,12(sp)
   16be6:	4c22                	lw	s8,8(sp)
   16be8:	8426                	mv	s0,s1
   16bea:	b5a9                	j	16a34 <_realloc_r+0x10a>
   16bec:	85a2                	mv	a1,s0
   16bee:	879fd0ef          	jal	14466 <memmove>
   16bf2:	bd11                	j	16a06 <_realloc_r+0xdc>
   16bf4:	46dc                	lw	a5,12(a3)
   16bf6:	4698                	lw	a4,8(a3)
   16bf8:	ffc98613          	addi	a2,s3,-4
   16bfc:	02400693          	li	a3,36
   16c00:	c75c                	sw	a5,12(a4)
   16c02:	c798                	sw	a4,8(a5)
   16c04:	008ba703          	lw	a4,8(s7)
   16c08:	00cba783          	lw	a5,12(s7)
   16c0c:	008b8493          	addi	s1,s7,8
   16c10:	c75c                	sw	a5,12(a4)
   16c12:	c798                	sw	a4,8(a5)
   16c14:	04c6e463          	bltu	a3,a2,16c5c <_realloc_r+0x332>
   16c18:	474d                	li	a4,19
   16c1a:	87a6                	mv	a5,s1
   16c1c:	fac77be3          	bgeu	a4,a2,16bd2 <_realloc_r+0x2a8>
   16c20:	4018                	lw	a4,0(s0)
   16c22:	47ed                	li	a5,27
   16c24:	00eba423          	sw	a4,8(s7)
   16c28:	4058                	lw	a4,4(s0)
   16c2a:	00eba623          	sw	a4,12(s7)
   16c2e:	06c7fd63          	bgeu	a5,a2,16ca8 <_realloc_r+0x37e>
   16c32:	4418                	lw	a4,8(s0)
   16c34:	02400793          	li	a5,36
   16c38:	00eba823          	sw	a4,16(s7)
   16c3c:	4458                	lw	a4,12(s0)
   16c3e:	00ebaa23          	sw	a4,20(s7)
   16c42:	f8f615e3          	bne	a2,a5,16bcc <_realloc_r+0x2a2>
   16c46:	4818                	lw	a4,16(s0)
   16c48:	020b8793          	addi	a5,s7,32
   16c4c:	0461                	addi	s0,s0,24
   16c4e:	00ebac23          	sw	a4,24(s7)
   16c52:	ffc42703          	lw	a4,-4(s0)
   16c56:	00ebae23          	sw	a4,28(s7)
   16c5a:	bfa5                	j	16bd2 <_realloc_r+0x2a8>
   16c5c:	85a2                	mv	a1,s0
   16c5e:	8526                	mv	a0,s1
   16c60:	807fd0ef          	jal	14466 <memmove>
   16c64:	bfad                	j	16bde <_realloc_r+0x2b4>
   16c66:	4418                	lw	a4,8(s0)
   16c68:	c518                	sw	a4,8(a0)
   16c6a:	4458                	lw	a4,12(s0)
   16c6c:	c558                	sw	a4,12(a0)
   16c6e:	04f60763          	beq	a2,a5,16cbc <_realloc_r+0x392>
   16c72:	01040713          	addi	a4,s0,16
   16c76:	01050793          	addi	a5,a0,16
   16c7a:	b341                	j	169fa <_realloc_r+0xd0>
   16c7c:	9ad2                	add	s5,s5,s4
   16c7e:	414686b3          	sub	a3,a3,s4
   16c82:	015c2423          	sw	s5,8(s8)
   16c86:	0016e793          	ori	a5,a3,1
   16c8a:	00faa223          	sw	a5,4(s5)
   16c8e:	ffc42783          	lw	a5,-4(s0)
   16c92:	854a                	mv	a0,s2
   16c94:	84a2                	mv	s1,s0
   16c96:	8b85                	andi	a5,a5,1
   16c98:	0147e7b3          	or	a5,a5,s4
   16c9c:	fef42e23          	sw	a5,-4(s0)
   16ca0:	930fb0ef          	jal	11dd0 <__malloc_unlock>
   16ca4:	4c22                	lw	s8,8(sp)
   16ca6:	bb6d                	j	16a60 <_realloc_r+0x136>
   16ca8:	0421                	addi	s0,s0,8
   16caa:	010b8793          	addi	a5,s7,16
   16cae:	b715                	j	16bd2 <_realloc_r+0x2a8>
   16cb0:	854a                	mv	a0,s2
   16cb2:	91efb0ef          	jal	11dd0 <__malloc_unlock>
   16cb6:	4481                	li	s1,0
   16cb8:	4c22                	lw	s8,8(sp)
   16cba:	b35d                	j	16a60 <_realloc_r+0x136>
   16cbc:	4814                	lw	a3,16(s0)
   16cbe:	01840713          	addi	a4,s0,24
   16cc2:	01850793          	addi	a5,a0,24
   16cc6:	c914                	sw	a3,16(a0)
   16cc8:	4854                	lw	a3,20(s0)
   16cca:	c954                	sw	a3,20(a0)
   16ccc:	b33d                	j	169fa <_realloc_r+0xd0>
   16cce:	85a2                	mv	a1,s0
   16cd0:	8526                	mv	a0,s1
   16cd2:	f94fd0ef          	jal	14466 <memmove>
   16cd6:	bdb9                	j	16b34 <_realloc_r+0x20a>
   16cd8:	441c                	lw	a5,8(s0)
   16cda:	00fba823          	sw	a5,16(s7)
   16cde:	445c                	lw	a5,12(s0)
   16ce0:	00fbaa23          	sw	a5,20(s7)
   16ce4:	00d60663          	beq	a2,a3,16cf0 <_realloc_r+0x3c6>
   16ce8:	0441                	addi	s0,s0,16
   16cea:	018b8793          	addi	a5,s7,24
   16cee:	bd2d                	j	16b28 <_realloc_r+0x1fe>
   16cf0:	4818                	lw	a4,16(s0)
   16cf2:	020b8793          	addi	a5,s7,32
   16cf6:	00ebac23          	sw	a4,24(s7)
   16cfa:	4858                	lw	a4,20(s0)
   16cfc:	0461                	addi	s0,s0,24
   16cfe:	00ebae23          	sw	a4,28(s7)
   16d02:	b51d                	j	16b28 <_realloc_r+0x1fe>

00016d04 <__smakebuf_r>:
   16d04:	00c59783          	lh	a5,12(a1)
   16d08:	7119                	addi	sp,sp,-128
   16d0a:	dca2                	sw	s0,120(sp)
   16d0c:	de86                	sw	ra,124(sp)
   16d0e:	0027f713          	andi	a4,a5,2
   16d12:	842e                	mv	s0,a1
   16d14:	cb19                	beqz	a4,16d2a <__smakebuf_r+0x26>
   16d16:	04358793          	addi	a5,a1,67
   16d1a:	c19c                	sw	a5,0(a1)
   16d1c:	c99c                	sw	a5,16(a1)
   16d1e:	4785                	li	a5,1
   16d20:	c9dc                	sw	a5,20(a1)
   16d22:	50f6                	lw	ra,124(sp)
   16d24:	5466                	lw	s0,120(sp)
   16d26:	6109                	addi	sp,sp,128
   16d28:	8082                	ret
   16d2a:	00e59583          	lh	a1,14(a1)
   16d2e:	daa6                	sw	s1,116(sp)
   16d30:	d8ca                	sw	s2,112(sp)
   16d32:	d6ce                	sw	s3,108(sp)
   16d34:	d4d2                	sw	s4,104(sp)
   16d36:	84aa                	mv	s1,a0
   16d38:	0605c263          	bltz	a1,16d9c <__smakebuf_r+0x98>
   16d3c:	0030                	addi	a2,sp,8
   16d3e:	22fd                	jal	16f2c <_fstat_r>
   16d40:	04054c63          	bltz	a0,16d98 <__smakebuf_r+0x94>
   16d44:	47b2                	lw	a5,12(sp)
   16d46:	693d                	lui	s2,0xf
   16d48:	6985                	lui	s3,0x1
   16d4a:	00f97933          	and	s2,s2,a5
   16d4e:	77f9                	lui	a5,0xffffe
   16d50:	993e                	add	s2,s2,a5
   16d52:	00193913          	seqz	s2,s2
   16d56:	40000a13          	li	s4,1024
   16d5a:	80098993          	addi	s3,s3,-2048 # 800 <exit-0xf894>
   16d5e:	85d2                	mv	a1,s4
   16d60:	8526                	mv	a0,s1
   16d62:	ac9fa0ef          	jal	1182a <_malloc_r>
   16d66:	00c41783          	lh	a5,12(s0)
   16d6a:	c539                	beqz	a0,16db8 <__smakebuf_r+0xb4>
   16d6c:	0807e793          	ori	a5,a5,128
   16d70:	c008                	sw	a0,0(s0)
   16d72:	c808                	sw	a0,16(s0)
   16d74:	00f41623          	sh	a5,12(s0)
   16d78:	01442a23          	sw	s4,20(s0)
   16d7c:	06091563          	bnez	s2,16de6 <__smakebuf_r+0xe2>
   16d80:	0137e7b3          	or	a5,a5,s3
   16d84:	50f6                	lw	ra,124(sp)
   16d86:	00f41623          	sh	a5,12(s0)
   16d8a:	5466                	lw	s0,120(sp)
   16d8c:	54d6                	lw	s1,116(sp)
   16d8e:	5946                	lw	s2,112(sp)
   16d90:	59b6                	lw	s3,108(sp)
   16d92:	5a26                	lw	s4,104(sp)
   16d94:	6109                	addi	sp,sp,128
   16d96:	8082                	ret
   16d98:	00c41783          	lh	a5,12(s0)
   16d9c:	0807f793          	andi	a5,a5,128
   16da0:	4901                	li	s2,0
   16da2:	cf95                	beqz	a5,16dde <__smakebuf_r+0xda>
   16da4:	04000a13          	li	s4,64
   16da8:	85d2                	mv	a1,s4
   16daa:	8526                	mv	a0,s1
   16dac:	a7ffa0ef          	jal	1182a <_malloc_r>
   16db0:	00c41783          	lh	a5,12(s0)
   16db4:	4981                	li	s3,0
   16db6:	f95d                	bnez	a0,16d6c <__smakebuf_r+0x68>
   16db8:	2007f713          	andi	a4,a5,512
   16dbc:	ef0d                	bnez	a4,16df6 <__smakebuf_r+0xf2>
   16dbe:	9bf1                	andi	a5,a5,-4
   16dc0:	0027e793          	ori	a5,a5,2
   16dc4:	04340713          	addi	a4,s0,67
   16dc8:	00f41623          	sh	a5,12(s0)
   16dcc:	4785                	li	a5,1
   16dce:	54d6                	lw	s1,116(sp)
   16dd0:	5946                	lw	s2,112(sp)
   16dd2:	59b6                	lw	s3,108(sp)
   16dd4:	5a26                	lw	s4,104(sp)
   16dd6:	c018                	sw	a4,0(s0)
   16dd8:	c818                	sw	a4,16(s0)
   16dda:	c85c                	sw	a5,20(s0)
   16ddc:	b799                	j	16d22 <__smakebuf_r+0x1e>
   16dde:	40000a13          	li	s4,1024
   16de2:	4981                	li	s3,0
   16de4:	bfad                	j	16d5e <__smakebuf_r+0x5a>
   16de6:	00e41583          	lh	a1,14(s0)
   16dea:	8526                	mv	a0,s1
   16dec:	2aad                	jal	16f66 <_isatty_r>
   16dee:	e909                	bnez	a0,16e00 <__smakebuf_r+0xfc>
   16df0:	00c41783          	lh	a5,12(s0)
   16df4:	b771                	j	16d80 <__smakebuf_r+0x7c>
   16df6:	54d6                	lw	s1,116(sp)
   16df8:	5946                	lw	s2,112(sp)
   16dfa:	59b6                	lw	s3,108(sp)
   16dfc:	5a26                	lw	s4,104(sp)
   16dfe:	b715                	j	16d22 <__smakebuf_r+0x1e>
   16e00:	00c45783          	lhu	a5,12(s0)
   16e04:	9bf1                	andi	a5,a5,-4
   16e06:	0017e793          	ori	a5,a5,1
   16e0a:	07c2                	slli	a5,a5,0x10
   16e0c:	87c1                	srai	a5,a5,0x10
   16e0e:	bf8d                	j	16d80 <__smakebuf_r+0x7c>

00016e10 <__swhatbuf_r>:
   16e10:	7159                	addi	sp,sp,-112
   16e12:	d4a2                	sw	s0,104(sp)
   16e14:	842e                	mv	s0,a1
   16e16:	00e59583          	lh	a1,14(a1)
   16e1a:	d2a6                	sw	s1,100(sp)
   16e1c:	d0ca                	sw	s2,96(sp)
   16e1e:	d686                	sw	ra,108(sp)
   16e20:	84b2                	mv	s1,a2
   16e22:	8936                	mv	s2,a3
   16e24:	0205cb63          	bltz	a1,16e5a <__swhatbuf_r+0x4a>
   16e28:	0030                	addi	a2,sp,8
   16e2a:	2209                	jal	16f2c <_fstat_r>
   16e2c:	02054763          	bltz	a0,16e5a <__swhatbuf_r+0x4a>
   16e30:	4732                	lw	a4,12(sp)
   16e32:	67bd                	lui	a5,0xf
   16e34:	50b6                	lw	ra,108(sp)
   16e36:	8ff9                	and	a5,a5,a4
   16e38:	7779                	lui	a4,0xffffe
   16e3a:	97ba                	add	a5,a5,a4
   16e3c:	5426                	lw	s0,104(sp)
   16e3e:	0017b793          	seqz	a5,a5
   16e42:	00f92023          	sw	a5,0(s2) # f000 <exit-0x1094>
   16e46:	40000713          	li	a4,1024
   16e4a:	c098                	sw	a4,0(s1)
   16e4c:	6505                	lui	a0,0x1
   16e4e:	5496                	lw	s1,100(sp)
   16e50:	5906                	lw	s2,96(sp)
   16e52:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf894>
   16e56:	6165                	addi	sp,sp,112
   16e58:	8082                	ret
   16e5a:	00c45783          	lhu	a5,12(s0)
   16e5e:	0807f793          	andi	a5,a5,128
   16e62:	cf91                	beqz	a5,16e7e <__swhatbuf_r+0x6e>
   16e64:	50b6                	lw	ra,108(sp)
   16e66:	5426                	lw	s0,104(sp)
   16e68:	4781                	li	a5,0
   16e6a:	00f92023          	sw	a5,0(s2)
   16e6e:	04000713          	li	a4,64
   16e72:	c098                	sw	a4,0(s1)
   16e74:	5906                	lw	s2,96(sp)
   16e76:	5496                	lw	s1,100(sp)
   16e78:	4501                	li	a0,0
   16e7a:	6165                	addi	sp,sp,112
   16e7c:	8082                	ret
   16e7e:	50b6                	lw	ra,108(sp)
   16e80:	5426                	lw	s0,104(sp)
   16e82:	00f92023          	sw	a5,0(s2)
   16e86:	40000713          	li	a4,1024
   16e8a:	c098                	sw	a4,0(s1)
   16e8c:	5906                	lw	s2,96(sp)
   16e8e:	5496                	lw	s1,100(sp)
   16e90:	4501                	li	a0,0
   16e92:	6165                	addi	sp,sp,112
   16e94:	8082                	ret

00016e96 <_setlocale_r>:
   16e96:	1141                	addi	sp,sp,-16
   16e98:	c606                	sw	ra,12(sp)
   16e9a:	c226                	sw	s1,4(sp)
   16e9c:	c20d                	beqz	a2,16ebe <_setlocale_r+0x28>
   16e9e:	65ed                	lui	a1,0x1b
   16ea0:	b1858593          	addi	a1,a1,-1256 # 1ab18 <__clzsi2+0x1a0>
   16ea4:	8532                	mv	a0,a2
   16ea6:	c422                	sw	s0,8(sp)
   16ea8:	8432                	mv	s0,a2
   16eaa:	28cd                	jal	16f9c <strcmp>
   16eac:	64ed                	lui	s1,0x1b
   16eae:	e911                	bnez	a0,16ec2 <_setlocale_r+0x2c>
   16eb0:	4422                	lw	s0,8(sp)
   16eb2:	b1448513          	addi	a0,s1,-1260 # 1ab14 <__clzsi2+0x19c>
   16eb6:	40b2                	lw	ra,12(sp)
   16eb8:	4492                	lw	s1,4(sp)
   16eba:	0141                	addi	sp,sp,16
   16ebc:	8082                	ret
   16ebe:	64ed                	lui	s1,0x1b
   16ec0:	bfcd                	j	16eb2 <_setlocale_r+0x1c>
   16ec2:	b1448593          	addi	a1,s1,-1260 # 1ab14 <__clzsi2+0x19c>
   16ec6:	8522                	mv	a0,s0
   16ec8:	28d1                	jal	16f9c <strcmp>
   16eca:	d17d                	beqz	a0,16eb0 <_setlocale_r+0x1a>
   16ecc:	65ed                	lui	a1,0x1b
   16ece:	b3058593          	addi	a1,a1,-1232 # 1ab30 <__clzsi2+0x1b8>
   16ed2:	8522                	mv	a0,s0
   16ed4:	20e1                	jal	16f9c <strcmp>
   16ed6:	dd69                	beqz	a0,16eb0 <_setlocale_r+0x1a>
   16ed8:	4422                	lw	s0,8(sp)
   16eda:	4501                	li	a0,0
   16edc:	bfe9                	j	16eb6 <_setlocale_r+0x20>

00016ede <__locale_mb_cur_max>:
   16ede:	e601c503          	lbu	a0,-416(gp) # 1c8c0 <__global_locale+0x128>
   16ee2:	8082                	ret

00016ee4 <setlocale>:
   16ee4:	1141                	addi	sp,sp,-16
   16ee6:	c606                	sw	ra,12(sp)
   16ee8:	c226                	sw	s1,4(sp)
   16eea:	c18d                	beqz	a1,16f0c <setlocale+0x28>
   16eec:	c422                	sw	s0,8(sp)
   16eee:	842e                	mv	s0,a1
   16ef0:	65ed                	lui	a1,0x1b
   16ef2:	b1858593          	addi	a1,a1,-1256 # 1ab18 <__clzsi2+0x1a0>
   16ef6:	8522                	mv	a0,s0
   16ef8:	2055                	jal	16f9c <strcmp>
   16efa:	64ed                	lui	s1,0x1b
   16efc:	e911                	bnez	a0,16f10 <setlocale+0x2c>
   16efe:	4422                	lw	s0,8(sp)
   16f00:	b1448513          	addi	a0,s1,-1260 # 1ab14 <__clzsi2+0x19c>
   16f04:	40b2                	lw	ra,12(sp)
   16f06:	4492                	lw	s1,4(sp)
   16f08:	0141                	addi	sp,sp,16
   16f0a:	8082                	ret
   16f0c:	64ed                	lui	s1,0x1b
   16f0e:	bfcd                	j	16f00 <setlocale+0x1c>
   16f10:	b1448593          	addi	a1,s1,-1260 # 1ab14 <__clzsi2+0x19c>
   16f14:	8522                	mv	a0,s0
   16f16:	2059                	jal	16f9c <strcmp>
   16f18:	d17d                	beqz	a0,16efe <setlocale+0x1a>
   16f1a:	65ed                	lui	a1,0x1b
   16f1c:	b3058593          	addi	a1,a1,-1232 # 1ab30 <__clzsi2+0x1b8>
   16f20:	8522                	mv	a0,s0
   16f22:	28ad                	jal	16f9c <strcmp>
   16f24:	dd69                	beqz	a0,16efe <setlocale+0x1a>
   16f26:	4422                	lw	s0,8(sp)
   16f28:	4501                	li	a0,0
   16f2a:	bfe9                	j	16f04 <setlocale+0x20>

00016f2c <_fstat_r>:
   16f2c:	1141                	addi	sp,sp,-16
   16f2e:	872e                	mv	a4,a1
   16f30:	c422                	sw	s0,8(sp)
   16f32:	c226                	sw	s1,4(sp)
   16f34:	842a                	mv	s0,a0
   16f36:	85b2                	mv	a1,a2
   16f38:	853a                	mv	a0,a4
   16f3a:	c606                	sw	ra,12(sp)
   16f3c:	f201a223          	sw	zero,-220(gp) # 1c984 <errno>
   16f40:	3f8010ef          	jal	18338 <_fstat>
   16f44:	57fd                	li	a5,-1
   16f46:	00f50763          	beq	a0,a5,16f54 <_fstat_r+0x28>
   16f4a:	40b2                	lw	ra,12(sp)
   16f4c:	4422                	lw	s0,8(sp)
   16f4e:	4492                	lw	s1,4(sp)
   16f50:	0141                	addi	sp,sp,16
   16f52:	8082                	ret
   16f54:	f241a783          	lw	a5,-220(gp) # 1c984 <errno>
   16f58:	dbed                	beqz	a5,16f4a <_fstat_r+0x1e>
   16f5a:	40b2                	lw	ra,12(sp)
   16f5c:	c01c                	sw	a5,0(s0)
   16f5e:	4422                	lw	s0,8(sp)
   16f60:	4492                	lw	s1,4(sp)
   16f62:	0141                	addi	sp,sp,16
   16f64:	8082                	ret

00016f66 <_isatty_r>:
   16f66:	1141                	addi	sp,sp,-16
   16f68:	c422                	sw	s0,8(sp)
   16f6a:	c226                	sw	s1,4(sp)
   16f6c:	842a                	mv	s0,a0
   16f6e:	852e                	mv	a0,a1
   16f70:	c606                	sw	ra,12(sp)
   16f72:	f201a223          	sw	zero,-220(gp) # 1c984 <errno>
   16f76:	400010ef          	jal	18376 <_isatty>
   16f7a:	57fd                	li	a5,-1
   16f7c:	00f50763          	beq	a0,a5,16f8a <_isatty_r+0x24>
   16f80:	40b2                	lw	ra,12(sp)
   16f82:	4422                	lw	s0,8(sp)
   16f84:	4492                	lw	s1,4(sp)
   16f86:	0141                	addi	sp,sp,16
   16f88:	8082                	ret
   16f8a:	f241a783          	lw	a5,-220(gp) # 1c984 <errno>
   16f8e:	dbed                	beqz	a5,16f80 <_isatty_r+0x1a>
   16f90:	40b2                	lw	ra,12(sp)
   16f92:	c01c                	sw	a5,0(s0)
   16f94:	4422                	lw	s0,8(sp)
   16f96:	4492                	lw	s1,4(sp)
   16f98:	0141                	addi	sp,sp,16
   16f9a:	8082                	ret

00016f9c <strcmp>:
   16f9c:	00b56733          	or	a4,a0,a1
   16fa0:	53fd                	li	t2,-1
   16fa2:	8b0d                	andi	a4,a4,3
   16fa4:	e779                	bnez	a4,17072 <strcmp+0xd6>
   16fa6:	7f7f87b7          	lui	a5,0x7f7f8
   16faa:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7db2d3>
   16fae:	4110                	lw	a2,0(a0)
   16fb0:	4194                	lw	a3,0(a1)
   16fb2:	00f672b3          	and	t0,a2,a5
   16fb6:	00f66333          	or	t1,a2,a5
   16fba:	92be                	add	t0,t0,a5
   16fbc:	0062e2b3          	or	t0,t0,t1
   16fc0:	0c729763          	bne	t0,t2,1708e <strcmp+0xf2>
   16fc4:	06d61863          	bne	a2,a3,17034 <strcmp+0x98>
   16fc8:	4150                	lw	a2,4(a0)
   16fca:	41d4                	lw	a3,4(a1)
   16fcc:	00f672b3          	and	t0,a2,a5
   16fd0:	00f66333          	or	t1,a2,a5
   16fd4:	92be                	add	t0,t0,a5
   16fd6:	0062e2b3          	or	t0,t0,t1
   16fda:	0a729863          	bne	t0,t2,1708a <strcmp+0xee>
   16fde:	04d61b63          	bne	a2,a3,17034 <strcmp+0x98>
   16fe2:	4510                	lw	a2,8(a0)
   16fe4:	4594                	lw	a3,8(a1)
   16fe6:	00f672b3          	and	t0,a2,a5
   16fea:	00f66333          	or	t1,a2,a5
   16fee:	92be                	add	t0,t0,a5
   16ff0:	0062e2b3          	or	t0,t0,t1
   16ff4:	0a729163          	bne	t0,t2,17096 <strcmp+0xfa>
   16ff8:	02d61e63          	bne	a2,a3,17034 <strcmp+0x98>
   16ffc:	4550                	lw	a2,12(a0)
   16ffe:	45d4                	lw	a3,12(a1)
   17000:	00f672b3          	and	t0,a2,a5
   17004:	00f66333          	or	t1,a2,a5
   17008:	92be                	add	t0,t0,a5
   1700a:	0062e2b3          	or	t0,t0,t1
   1700e:	08729a63          	bne	t0,t2,170a2 <strcmp+0x106>
   17012:	02d61163          	bne	a2,a3,17034 <strcmp+0x98>
   17016:	4910                	lw	a2,16(a0)
   17018:	4994                	lw	a3,16(a1)
   1701a:	00f672b3          	and	t0,a2,a5
   1701e:	00f66333          	or	t1,a2,a5
   17022:	92be                	add	t0,t0,a5
   17024:	0062e2b3          	or	t0,t0,t1
   17028:	08729363          	bne	t0,t2,170ae <strcmp+0x112>
   1702c:	0551                	addi	a0,a0,20
   1702e:	05d1                	addi	a1,a1,20
   17030:	f6d60fe3          	beq	a2,a3,16fae <strcmp+0x12>
   17034:	01061713          	slli	a4,a2,0x10
   17038:	01069793          	slli	a5,a3,0x10
   1703c:	00f71c63          	bne	a4,a5,17054 <strcmp+0xb8>
   17040:	01065713          	srli	a4,a2,0x10
   17044:	0106d793          	srli	a5,a3,0x10
   17048:	40f70533          	sub	a0,a4,a5
   1704c:	0ff57593          	zext.b	a1,a0
   17050:	e991                	bnez	a1,17064 <strcmp+0xc8>
   17052:	8082                	ret
   17054:	8341                	srli	a4,a4,0x10
   17056:	83c1                	srli	a5,a5,0x10
   17058:	40f70533          	sub	a0,a4,a5
   1705c:	0ff57593          	zext.b	a1,a0
   17060:	e191                	bnez	a1,17064 <strcmp+0xc8>
   17062:	8082                	ret
   17064:	0ff77713          	zext.b	a4,a4
   17068:	0ff7f793          	zext.b	a5,a5
   1706c:	40f70533          	sub	a0,a4,a5
   17070:	8082                	ret
   17072:	00054603          	lbu	a2,0(a0)
   17076:	0005c683          	lbu	a3,0(a1)
   1707a:	0505                	addi	a0,a0,1
   1707c:	0585                	addi	a1,a1,1
   1707e:	00d61363          	bne	a2,a3,17084 <strcmp+0xe8>
   17082:	fa65                	bnez	a2,17072 <strcmp+0xd6>
   17084:	40d60533          	sub	a0,a2,a3
   17088:	8082                	ret
   1708a:	0511                	addi	a0,a0,4
   1708c:	0591                	addi	a1,a1,4
   1708e:	fed612e3          	bne	a2,a3,17072 <strcmp+0xd6>
   17092:	4501                	li	a0,0
   17094:	8082                	ret
   17096:	0521                	addi	a0,a0,8
   17098:	05a1                	addi	a1,a1,8
   1709a:	fcd61ce3          	bne	a2,a3,17072 <strcmp+0xd6>
   1709e:	4501                	li	a0,0
   170a0:	8082                	ret
   170a2:	0531                	addi	a0,a0,12
   170a4:	05b1                	addi	a1,a1,12
   170a6:	fcd616e3          	bne	a2,a3,17072 <strcmp+0xd6>
   170aa:	4501                	li	a0,0
   170ac:	8082                	ret
   170ae:	0541                	addi	a0,a0,16
   170b0:	05c1                	addi	a1,a1,16
   170b2:	fcd610e3          	bne	a2,a3,17072 <strcmp+0xd6>
   170b6:	4501                	li	a0,0
   170b8:	8082                	ret

000170ba <__assert_func>:
   170ba:	f141a703          	lw	a4,-236(gp) # 1c974 <_impure_ptr>
   170be:	1141                	addi	sp,sp,-16
   170c0:	87b6                	mv	a5,a3
   170c2:	8832                	mv	a6,a2
   170c4:	c606                	sw	ra,12(sp)
   170c6:	00c72883          	lw	a7,12(a4) # ffffe00c <__BSS_END__+0xfffe1360>
   170ca:	86aa                	mv	a3,a0
   170cc:	872e                	mv	a4,a1
   170ce:	863e                	mv	a2,a5
   170d0:	00080c63          	beqz	a6,170e8 <__assert_func+0x2e>
   170d4:	67ed                	lui	a5,0x1b
   170d6:	b2478793          	addi	a5,a5,-1244 # 1ab24 <__clzsi2+0x1ac>
   170da:	65ed                	lui	a1,0x1b
   170dc:	b3458593          	addi	a1,a1,-1228 # 1ab34 <__clzsi2+0x1bc>
   170e0:	8546                	mv	a0,a7
   170e2:	2a81                	jal	17232 <fiprintf>
   170e4:	691000ef          	jal	17f74 <abort>
   170e8:	686d                	lui	a6,0x1b
   170ea:	b3080793          	addi	a5,a6,-1232 # 1ab30 <__clzsi2+0x1b8>
   170ee:	b3080813          	addi	a6,a6,-1232
   170f2:	b7e5                	j	170da <__assert_func+0x20>

000170f4 <__assert>:
   170f4:	1141                	addi	sp,sp,-16
   170f6:	86b2                	mv	a3,a2
   170f8:	4601                	li	a2,0
   170fa:	c606                	sw	ra,12(sp)
   170fc:	fbfff0ef          	jal	170ba <__assert_func>

00017100 <_calloc_r>:
   17100:	02c5b7b3          	mulhu	a5,a1,a2
   17104:	1141                	addi	sp,sp,-16
   17106:	c606                	sw	ra,12(sp)
   17108:	c422                	sw	s0,8(sp)
   1710a:	02c585b3          	mul	a1,a1,a2
   1710e:	efa5                	bnez	a5,17186 <_calloc_r+0x86>
   17110:	f1afa0ef          	jal	1182a <_malloc_r>
   17114:	842a                	mv	s0,a0
   17116:	cd25                	beqz	a0,1718e <_calloc_r+0x8e>
   17118:	ffc52603          	lw	a2,-4(a0)
   1711c:	02400713          	li	a4,36
   17120:	9a71                	andi	a2,a2,-4
   17122:	1671                	addi	a2,a2,-4
   17124:	04c76063          	bltu	a4,a2,17164 <_calloc_r+0x64>
   17128:	46cd                	li	a3,19
   1712a:	87aa                	mv	a5,a0
   1712c:	02c6f163          	bgeu	a3,a2,1714e <_calloc_r+0x4e>
   17130:	00052023          	sw	zero,0(a0)
   17134:	00052223          	sw	zero,4(a0)
   17138:	47ed                	li	a5,27
   1713a:	02c7fd63          	bgeu	a5,a2,17174 <_calloc_r+0x74>
   1713e:	00052423          	sw	zero,8(a0)
   17142:	00052623          	sw	zero,12(a0)
   17146:	01050793          	addi	a5,a0,16
   1714a:	04e60863          	beq	a2,a4,1719a <_calloc_r+0x9a>
   1714e:	0007a023          	sw	zero,0(a5)
   17152:	0007a223          	sw	zero,4(a5)
   17156:	0007a423          	sw	zero,8(a5)
   1715a:	40b2                	lw	ra,12(sp)
   1715c:	8522                	mv	a0,s0
   1715e:	4422                	lw	s0,8(sp)
   17160:	0141                	addi	sp,sp,16
   17162:	8082                	ret
   17164:	4581                	li	a1,0
   17166:	a54fa0ef          	jal	113ba <memset>
   1716a:	40b2                	lw	ra,12(sp)
   1716c:	8522                	mv	a0,s0
   1716e:	4422                	lw	s0,8(sp)
   17170:	0141                	addi	sp,sp,16
   17172:	8082                	ret
   17174:	00850793          	addi	a5,a0,8
   17178:	0007a023          	sw	zero,0(a5)
   1717c:	0007a223          	sw	zero,4(a5)
   17180:	0007a423          	sw	zero,8(a5)
   17184:	bfd9                	j	1715a <_calloc_r+0x5a>
   17186:	5e9000ef          	jal	17f6e <__errno>
   1718a:	47b1                	li	a5,12
   1718c:	c11c                	sw	a5,0(a0)
   1718e:	4401                	li	s0,0
   17190:	40b2                	lw	ra,12(sp)
   17192:	8522                	mv	a0,s0
   17194:	4422                	lw	s0,8(sp)
   17196:	0141                	addi	sp,sp,16
   17198:	8082                	ret
   1719a:	00052823          	sw	zero,16(a0)
   1719e:	01850793          	addi	a5,a0,24
   171a2:	00052a23          	sw	zero,20(a0)
   171a6:	b765                	j	1714e <_calloc_r+0x4e>

000171a8 <_mbtowc_r>:
   171a8:	e1c1a783          	lw	a5,-484(gp) # 1c87c <__global_locale+0xe4>
   171ac:	8782                	jr	a5

000171ae <__ascii_mbtowc>:
   171ae:	c999                	beqz	a1,171c4 <__ascii_mbtowc+0x16>
   171b0:	c61d                	beqz	a2,171de <__ascii_mbtowc+0x30>
   171b2:	ca95                	beqz	a3,171e6 <__ascii_mbtowc+0x38>
   171b4:	00064783          	lbu	a5,0(a2)
   171b8:	c19c                	sw	a5,0(a1)
   171ba:	00064503          	lbu	a0,0(a2)
   171be:	00a03533          	snez	a0,a0
   171c2:	8082                	ret
   171c4:	1141                	addi	sp,sp,-16
   171c6:	006c                	addi	a1,sp,12
   171c8:	ce09                	beqz	a2,171e2 <__ascii_mbtowc+0x34>
   171ca:	c285                	beqz	a3,171ea <__ascii_mbtowc+0x3c>
   171cc:	00064783          	lbu	a5,0(a2)
   171d0:	c19c                	sw	a5,0(a1)
   171d2:	00064503          	lbu	a0,0(a2)
   171d6:	00a03533          	snez	a0,a0
   171da:	0141                	addi	sp,sp,16
   171dc:	8082                	ret
   171de:	4501                	li	a0,0
   171e0:	8082                	ret
   171e2:	4501                	li	a0,0
   171e4:	bfdd                	j	171da <__ascii_mbtowc+0x2c>
   171e6:	5579                	li	a0,-2
   171e8:	8082                	ret
   171ea:	5579                	li	a0,-2
   171ec:	b7fd                	j	171da <__ascii_mbtowc+0x2c>

000171ee <_wctomb_r>:
   171ee:	e181a783          	lw	a5,-488(gp) # 1c878 <__global_locale+0xe0>
   171f2:	8782                	jr	a5

000171f4 <__ascii_wctomb>:
   171f4:	cd91                	beqz	a1,17210 <__ascii_wctomb+0x1c>
   171f6:	0ff00793          	li	a5,255
   171fa:	00c7e663          	bltu	a5,a2,17206 <__ascii_wctomb+0x12>
   171fe:	00c58023          	sb	a2,0(a1)
   17202:	4505                	li	a0,1
   17204:	8082                	ret
   17206:	08a00793          	li	a5,138
   1720a:	c11c                	sw	a5,0(a0)
   1720c:	557d                	li	a0,-1
   1720e:	8082                	ret
   17210:	4501                	li	a0,0
   17212:	8082                	ret

00017214 <_fiprintf_r>:
   17214:	7139                	addi	sp,sp,-64
   17216:	02c10313          	addi	t1,sp,44
   1721a:	d636                	sw	a3,44(sp)
   1721c:	869a                	mv	a3,t1
   1721e:	ce06                	sw	ra,28(sp)
   17220:	d83a                	sw	a4,48(sp)
   17222:	da3e                	sw	a5,52(sp)
   17224:	dc42                	sw	a6,56(sp)
   17226:	de46                	sw	a7,60(sp)
   17228:	c61a                	sw	t1,12(sp)
   1722a:	280d                	jal	1725c <_vfiprintf_r>
   1722c:	40f2                	lw	ra,28(sp)
   1722e:	6121                	addi	sp,sp,64
   17230:	8082                	ret

00017232 <fiprintf>:
   17232:	8e2a                	mv	t3,a0
   17234:	7139                	addi	sp,sp,-64
   17236:	f141a503          	lw	a0,-236(gp) # 1c974 <_impure_ptr>
   1723a:	02810313          	addi	t1,sp,40
   1723e:	d432                	sw	a2,40(sp)
   17240:	d636                	sw	a3,44(sp)
   17242:	862e                	mv	a2,a1
   17244:	869a                	mv	a3,t1
   17246:	85f2                	mv	a1,t3
   17248:	ce06                	sw	ra,28(sp)
   1724a:	d83a                	sw	a4,48(sp)
   1724c:	da3e                	sw	a5,52(sp)
   1724e:	dc42                	sw	a6,56(sp)
   17250:	de46                	sw	a7,60(sp)
   17252:	c61a                	sw	t1,12(sp)
   17254:	2021                	jal	1725c <_vfiprintf_r>
   17256:	40f2                	lw	ra,28(sp)
   17258:	6121                	addi	sp,sp,64
   1725a:	8082                	ret

0001725c <_vfiprintf_r>:
   1725c:	7169                	addi	sp,sp,-304
   1725e:	11312e23          	sw	s3,284(sp)
   17262:	11512a23          	sw	s5,276(sp)
   17266:	11612823          	sw	s6,272(sp)
   1726a:	11712623          	sw	s7,268(sp)
   1726e:	12112623          	sw	ra,300(sp)
   17272:	11a12023          	sw	s10,256(sp)
   17276:	8baa                	mv	s7,a0
   17278:	8aae                	mv	s5,a1
   1727a:	89b2                	mv	s3,a2
   1727c:	8b36                	mv	s6,a3
   1727e:	c501                	beqz	a0,17286 <_vfiprintf_r+0x2a>
   17280:	595c                	lw	a5,52(a0)
   17282:	300783e3          	beqz	a5,17d88 <_vfiprintf_r+0xb2c>
   17286:	00ca9703          	lh	a4,12(s5)
   1728a:	064aa783          	lw	a5,100(s5)
   1728e:	01271693          	slli	a3,a4,0x12
   17292:	0006cb63          	bltz	a3,172a8 <_vfiprintf_r+0x4c>
   17296:	76f9                	lui	a3,0xffffe
   17298:	16fd                	addi	a3,a3,-1 # ffffdfff <__BSS_END__+0xfffe1353>
   1729a:	6609                	lui	a2,0x2
   1729c:	8f51                	or	a4,a4,a2
   1729e:	8ff5                	and	a5,a5,a3
   172a0:	00ea9623          	sh	a4,12(s5)
   172a4:	06faa223          	sw	a5,100(s5)
   172a8:	01279713          	slli	a4,a5,0x12
   172ac:	400740e3          	bltz	a4,17eac <_vfiprintf_r+0xc50>
   172b0:	00ca9783          	lh	a5,12(s5)
   172b4:	0087f713          	andi	a4,a5,8
   172b8:	22070363          	beqz	a4,174de <_vfiprintf_r+0x282>
   172bc:	010aa703          	lw	a4,16(s5)
   172c0:	20070f63          	beqz	a4,174de <_vfiprintf_r+0x282>
   172c4:	8be9                	andi	a5,a5,26
   172c6:	4729                	li	a4,10
   172c8:	22e78763          	beq	a5,a4,174f6 <_vfiprintf_r+0x29a>
   172cc:	67ed                	lui	a5,0x1b
   172ce:	4d01                	li	s10,0
   172d0:	11812423          	sw	s8,264(sp)
   172d4:	11912223          	sw	s9,260(sp)
   172d8:	04c10c13          	addi	s8,sp,76
   172dc:	fc478793          	addi	a5,a5,-60 # 1afc4 <_ctype_+0x104>
   172e0:	6ced                	lui	s9,0x1b
   172e2:	12812423          	sw	s0,296(sp)
   172e6:	13212023          	sw	s2,288(sp)
   172ea:	11412c23          	sw	s4,280(sp)
   172ee:	896a                	mv	s2,s10
   172f0:	12912223          	sw	s1,292(sp)
   172f4:	dfee                	sw	s11,252(sp)
   172f6:	c0e2                	sw	s8,64(sp)
   172f8:	c482                	sw	zero,72(sp)
   172fa:	c282                	sw	zero,68(sp)
   172fc:	8462                	mv	s0,s8
   172fe:	c202                	sw	zero,4(sp)
   17300:	ca02                	sw	zero,20(sp)
   17302:	cc02                	sw	zero,24(sp)
   17304:	ce02                	sw	zero,28(sp)
   17306:	c03e                	sw	a5,0(sp)
   17308:	4a41                	li	s4,16
   1730a:	130c8c93          	addi	s9,s9,304 # 1b130 <zeroes.0>
   1730e:	8d5a                	mv	s10,s6
   17310:	0009c783          	lbu	a5,0(s3)
   17314:	14078563          	beqz	a5,1745e <_vfiprintf_r+0x202>
   17318:	84ce                	mv	s1,s3
   1731a:	02500713          	li	a4,37
   1731e:	20e78363          	beq	a5,a4,17524 <_vfiprintf_r+0x2c8>
   17322:	0014c783          	lbu	a5,1(s1)
   17326:	0485                	addi	s1,s1,1
   17328:	fbfd                	bnez	a5,1731e <_vfiprintf_r+0xc2>
   1732a:	41348b33          	sub	s6,s1,s3
   1732e:	13348863          	beq	s1,s3,1745e <_vfiprintf_r+0x202>
   17332:	4726                	lw	a4,72(sp)
   17334:	4796                	lw	a5,68(sp)
   17336:	01342023          	sw	s3,0(s0)
   1733a:	975a                	add	a4,a4,s6
   1733c:	0785                	addi	a5,a5,1
   1733e:	01642223          	sw	s6,4(s0)
   17342:	c4ba                	sw	a4,72(sp)
   17344:	c2be                	sw	a5,68(sp)
   17346:	471d                	li	a4,7
   17348:	0421                	addi	s0,s0,8
   1734a:	1ef74463          	blt	a4,a5,17532 <_vfiprintf_r+0x2d6>
   1734e:	0004c783          	lbu	a5,0(s1)
   17352:	995a                	add	s2,s2,s6
   17354:	10078563          	beqz	a5,1745e <_vfiprintf_r+0x202>
   17358:	0014c783          	lbu	a5,1(s1)
   1735c:	00148993          	addi	s3,s1,1
   17360:	02010da3          	sb	zero,59(sp)
   17364:	5dfd                	li	s11,-1
   17366:	4b01                	li	s6,0
   17368:	4801                	li	a6,0
   1736a:	05a00493          	li	s1,90
   1736e:	0985                	addi	s3,s3,1
   17370:	863e                	mv	a2,a5
   17372:	fe060713          	addi	a4,a2,-32 # 1fe0 <exit-0xe0b4>
   17376:	02e4eb63          	bltu	s1,a4,173ac <_vfiprintf_r+0x150>
   1737a:	4782                	lw	a5,0(sp)
   1737c:	070a                	slli	a4,a4,0x2
   1737e:	973e                	add	a4,a4,a5
   17380:	431c                	lw	a5,0(a4)
   17382:	8782                	jr	a5
   17384:	4b01                	li	s6,0
   17386:	fd060793          	addi	a5,a2,-48
   1738a:	46a5                	li	a3,9
   1738c:	0009c603          	lbu	a2,0(s3)
   17390:	002b1713          	slli	a4,s6,0x2
   17394:	9b3a                	add	s6,s6,a4
   17396:	0b06                	slli	s6,s6,0x1
   17398:	9b3e                	add	s6,s6,a5
   1739a:	fd060793          	addi	a5,a2,-48
   1739e:	0985                	addi	s3,s3,1
   173a0:	fef6f6e3          	bgeu	a3,a5,1738c <_vfiprintf_r+0x130>
   173a4:	fe060713          	addi	a4,a2,-32
   173a8:	fce4f9e3          	bgeu	s1,a4,1737a <_vfiprintf_r+0x11e>
   173ac:	ca4d                	beqz	a2,1745e <_vfiprintf_r+0x202>
   173ae:	08c10623          	sb	a2,140(sp)
   173b2:	02010da3          	sb	zero,59(sp)
   173b6:	4885                	li	a7,1
   173b8:	4e05                	li	t3,1
   173ba:	0164                	addi	s1,sp,140
   173bc:	4d81                	li	s11,0
   173be:	4281                	li	t0,0
   173c0:	08487f93          	andi	t6,a6,132
   173c4:	4726                	lw	a4,72(sp)
   173c6:	4796                	lw	a5,68(sp)
   173c8:	000f9663          	bnez	t6,173d4 <_vfiprintf_r+0x178>
   173cc:	411b0eb3          	sub	t4,s6,a7
   173d0:	71d04b63          	bgtz	t4,17ae6 <_vfiprintf_r+0x88a>
   173d4:	03b14603          	lbu	a2,59(sp)
   173d8:	ce11                	beqz	a2,173f4 <_vfiprintf_r+0x198>
   173da:	03b10613          	addi	a2,sp,59
   173de:	c010                	sw	a2,0(s0)
   173e0:	0785                	addi	a5,a5,1
   173e2:	4605                	li	a2,1
   173e4:	0705                	addi	a4,a4,1
   173e6:	c050                	sw	a2,4(s0)
   173e8:	c4ba                	sw	a4,72(sp)
   173ea:	c2be                	sw	a5,68(sp)
   173ec:	461d                	li	a2,7
   173ee:	0421                	addi	s0,s0,8
   173f0:	1af64363          	blt	a2,a5,17596 <_vfiprintf_r+0x33a>
   173f4:	00028e63          	beqz	t0,17410 <_vfiprintf_r+0x1b4>
   173f8:	1870                	addi	a2,sp,60
   173fa:	c010                	sw	a2,0(s0)
   173fc:	0785                	addi	a5,a5,1
   173fe:	4609                	li	a2,2
   17400:	0709                	addi	a4,a4,2
   17402:	c050                	sw	a2,4(s0)
   17404:	c4ba                	sw	a4,72(sp)
   17406:	c2be                	sw	a5,68(sp)
   17408:	461d                	li	a2,7
   1740a:	0421                	addi	s0,s0,8
   1740c:	78f64663          	blt	a2,a5,17b98 <_vfiprintf_r+0x93c>
   17410:	08000613          	li	a2,128
   17414:	52cf8a63          	beq	t6,a2,17948 <_vfiprintf_r+0x6ec>
   17418:	41cd8db3          	sub	s11,s11,t3
   1741c:	5db04d63          	bgtz	s11,179f6 <_vfiprintf_r+0x79a>
   17420:	9772                	add	a4,a4,t3
   17422:	0785                	addi	a5,a5,1
   17424:	c004                	sw	s1,0(s0)
   17426:	01c42223          	sw	t3,4(s0)
   1742a:	c4ba                	sw	a4,72(sp)
   1742c:	c2be                	sw	a5,68(sp)
   1742e:	461d                	li	a2,7
   17430:	0421                	addi	s0,s0,8
   17432:	64f64e63          	blt	a2,a5,17a8e <_vfiprintf_r+0x832>
   17436:	00487813          	andi	a6,a6,4
   1743a:	00080663          	beqz	a6,17446 <_vfiprintf_r+0x1ea>
   1743e:	411b04b3          	sub	s1,s6,a7
   17442:	16904e63          	bgtz	s1,175be <_vfiprintf_r+0x362>
   17446:	011b5363          	bge	s6,a7,1744c <_vfiprintf_r+0x1f0>
   1744a:	8b46                	mv	s6,a7
   1744c:	995a                	add	s2,s2,s6
   1744e:	0e071a63          	bnez	a4,17542 <_vfiprintf_r+0x2e6>
   17452:	0009c783          	lbu	a5,0(s3)
   17456:	c282                	sw	zero,68(sp)
   17458:	8462                	mv	s0,s8
   1745a:	ea079fe3          	bnez	a5,17318 <_vfiprintf_r+0xbc>
   1745e:	47a6                	lw	a5,72(sp)
   17460:	8d4a                	mv	s10,s2
   17462:	0e078863          	beqz	a5,17552 <_vfiprintf_r+0x2f6>
   17466:	0090                	addi	a2,sp,64
   17468:	85d6                	mv	a1,s5
   1746a:	855e                	mv	a0,s7
   1746c:	db0fc0ef          	jal	13a1c <__sprint_r>
   17470:	a0cd                	j	17552 <_vfiprintf_r+0x2f6>
   17472:	000d2b03          	lw	s6,0(s10)
   17476:	0d11                	addi	s10,s10,4
   17478:	280b4c63          	bltz	s6,17710 <_vfiprintf_r+0x4b4>
   1747c:	0009c783          	lbu	a5,0(s3)
   17480:	b5fd                	j	1736e <_vfiprintf_r+0x112>
   17482:	0009c783          	lbu	a5,0(s3)
   17486:	02086813          	ori	a6,a6,32
   1748a:	b5d5                	j	1736e <_vfiprintf_r+0x112>
   1748c:	01086813          	ori	a6,a6,16
   17490:	02087793          	andi	a5,a6,32
   17494:	1a078363          	beqz	a5,1763a <_vfiprintf_r+0x3de>
   17498:	0d1d                	addi	s10,s10,7
   1749a:	ff8d7d13          	andi	s10,s10,-8
   1749e:	004d2703          	lw	a4,4(s10)
   174a2:	000d2783          	lw	a5,0(s10)
   174a6:	0d21                	addi	s10,s10,8
   174a8:	88ba                	mv	a7,a4
   174aa:	1a074863          	bltz	a4,1765a <_vfiprintf_r+0x3fe>
   174ae:	1c0dc663          	bltz	s11,1767a <_vfiprintf_r+0x41e>
   174b2:	0117e733          	or	a4,a5,a7
   174b6:	f7f87813          	andi	a6,a6,-129
   174ba:	1c071063          	bnez	a4,1767a <_vfiprintf_r+0x41e>
   174be:	1e0d93e3          	bnez	s11,17ea4 <_vfiprintf_r+0xc48>
   174c2:	03b14783          	lbu	a5,59(sp)
   174c6:	4881                	li	a7,0
   174c8:	4e01                	li	t3,0
   174ca:	1984                	addi	s1,sp,240
   174cc:	c391                	beqz	a5,174d0 <_vfiprintf_r+0x274>
   174ce:	0885                	addi	a7,a7,1
   174d0:	00287293          	andi	t0,a6,2
   174d4:	ee0286e3          	beqz	t0,173c0 <_vfiprintf_r+0x164>
   174d8:	0889                	addi	a7,a7,2
   174da:	4289                	li	t0,2
   174dc:	b5d5                	j	173c0 <_vfiprintf_r+0x164>
   174de:	85d6                	mv	a1,s5
   174e0:	855e                	mv	a0,s7
   174e2:	d27fc0ef          	jal	14208 <__swsetup_r>
   174e6:	1c0513e3          	bnez	a0,17eac <_vfiprintf_r+0xc50>
   174ea:	00ca9783          	lh	a5,12(s5)
   174ee:	4729                	li	a4,10
   174f0:	8be9                	andi	a5,a5,26
   174f2:	dce79de3          	bne	a5,a4,172cc <_vfiprintf_r+0x70>
   174f6:	00ea9783          	lh	a5,14(s5)
   174fa:	dc07c9e3          	bltz	a5,172cc <_vfiprintf_r+0x70>
   174fe:	12c12083          	lw	ra,300(sp)
   17502:	10012d03          	lw	s10,256(sp)
   17506:	86da                	mv	a3,s6
   17508:	864e                	mv	a2,s3
   1750a:	11012b03          	lw	s6,272(sp)
   1750e:	11c12983          	lw	s3,284(sp)
   17512:	85d6                	mv	a1,s5
   17514:	855e                	mv	a0,s7
   17516:	11412a83          	lw	s5,276(sp)
   1751a:	10c12b83          	lw	s7,268(sp)
   1751e:	6155                	addi	sp,sp,304
   17520:	1b90006f          	j	17ed8 <__sbprintf>
   17524:	41348b33          	sub	s6,s1,s3
   17528:	e13495e3          	bne	s1,s3,17332 <_vfiprintf_r+0xd6>
   1752c:	0004c783          	lbu	a5,0(s1)
   17530:	b515                	j	17354 <_vfiprintf_r+0xf8>
   17532:	0090                	addi	a2,sp,64
   17534:	85d6                	mv	a1,s5
   17536:	855e                	mv	a0,s7
   17538:	ce4fc0ef          	jal	13a1c <__sprint_r>
   1753c:	e911                	bnez	a0,17550 <_vfiprintf_r+0x2f4>
   1753e:	8462                	mv	s0,s8
   17540:	b539                	j	1734e <_vfiprintf_r+0xf2>
   17542:	0090                	addi	a2,sp,64
   17544:	85d6                	mv	a1,s5
   17546:	855e                	mv	a0,s7
   17548:	cd4fc0ef          	jal	13a1c <__sprint_r>
   1754c:	f00503e3          	beqz	a0,17452 <_vfiprintf_r+0x1f6>
   17550:	8d4a                	mv	s10,s2
   17552:	00cad783          	lhu	a5,12(s5)
   17556:	12812403          	lw	s0,296(sp)
   1755a:	12412483          	lw	s1,292(sp)
   1755e:	0407f793          	andi	a5,a5,64
   17562:	12012903          	lw	s2,288(sp)
   17566:	11812a03          	lw	s4,280(sp)
   1756a:	10812c03          	lw	s8,264(sp)
   1756e:	10412c83          	lw	s9,260(sp)
   17572:	5dfe                	lw	s11,252(sp)
   17574:	12079ce3          	bnez	a5,17eac <_vfiprintf_r+0xc50>
   17578:	12c12083          	lw	ra,300(sp)
   1757c:	11c12983          	lw	s3,284(sp)
   17580:	11412a83          	lw	s5,276(sp)
   17584:	11012b03          	lw	s6,272(sp)
   17588:	10c12b83          	lw	s7,268(sp)
   1758c:	856a                	mv	a0,s10
   1758e:	10012d03          	lw	s10,256(sp)
   17592:	6155                	addi	sp,sp,304
   17594:	8082                	ret
   17596:	0090                	addi	a2,sp,64
   17598:	85d6                	mv	a1,s5
   1759a:	855e                	mv	a0,s7
   1759c:	d246                	sw	a7,36(sp)
   1759e:	d072                	sw	t3,32(sp)
   175a0:	c842                	sw	a6,16(sp)
   175a2:	c67e                	sw	t6,12(sp)
   175a4:	c416                	sw	t0,8(sp)
   175a6:	c76fc0ef          	jal	13a1c <__sprint_r>
   175aa:	f15d                	bnez	a0,17550 <_vfiprintf_r+0x2f4>
   175ac:	4726                	lw	a4,72(sp)
   175ae:	4796                	lw	a5,68(sp)
   175b0:	5892                	lw	a7,36(sp)
   175b2:	5e02                	lw	t3,32(sp)
   175b4:	4842                	lw	a6,16(sp)
   175b6:	4fb2                	lw	t6,12(sp)
   175b8:	42a2                	lw	t0,8(sp)
   175ba:	8462                	mv	s0,s8
   175bc:	bd25                	j	173f4 <_vfiprintf_r+0x198>
   175be:	636d                	lui	t1,0x1b
   175c0:	4641                	li	a2,16
   175c2:	4796                	lw	a5,68(sp)
   175c4:	14030313          	addi	t1,t1,320 # 1b140 <blanks.1>
   175c8:	04965563          	bge	a2,s1,17612 <_vfiprintf_r+0x3b6>
   175cc:	86a2                	mv	a3,s0
   175ce:	4dc1                	li	s11,16
   175d0:	481d                	li	a6,7
   175d2:	c446                	sw	a7,8(sp)
   175d4:	841a                	mv	s0,t1
   175d6:	a021                	j	175de <_vfiprintf_r+0x382>
   175d8:	14c1                	addi	s1,s1,-16
   175da:	029dd963          	bge	s11,s1,1760c <_vfiprintf_r+0x3b0>
   175de:	0741                	addi	a4,a4,16
   175e0:	0785                	addi	a5,a5,1
   175e2:	c280                	sw	s0,0(a3)
   175e4:	01b6a223          	sw	s11,4(a3)
   175e8:	c4ba                	sw	a4,72(sp)
   175ea:	c2be                	sw	a5,68(sp)
   175ec:	06a1                	addi	a3,a3,8
   175ee:	fef855e3          	bge	a6,a5,175d8 <_vfiprintf_r+0x37c>
   175f2:	0090                	addi	a2,sp,64
   175f4:	85d6                	mv	a1,s5
   175f6:	855e                	mv	a0,s7
   175f8:	c24fc0ef          	jal	13a1c <__sprint_r>
   175fc:	f931                	bnez	a0,17550 <_vfiprintf_r+0x2f4>
   175fe:	14c1                	addi	s1,s1,-16
   17600:	4726                	lw	a4,72(sp)
   17602:	4796                	lw	a5,68(sp)
   17604:	86e2                	mv	a3,s8
   17606:	481d                	li	a6,7
   17608:	fc9dcbe3          	blt	s11,s1,175de <_vfiprintf_r+0x382>
   1760c:	48a2                	lw	a7,8(sp)
   1760e:	8322                	mv	t1,s0
   17610:	8436                	mv	s0,a3
   17612:	9726                	add	a4,a4,s1
   17614:	0785                	addi	a5,a5,1
   17616:	00642023          	sw	t1,0(s0)
   1761a:	c044                	sw	s1,4(s0)
   1761c:	c4ba                	sw	a4,72(sp)
   1761e:	c2be                	sw	a5,68(sp)
   17620:	461d                	li	a2,7
   17622:	e2f652e3          	bge	a2,a5,17446 <_vfiprintf_r+0x1ea>
   17626:	0090                	addi	a2,sp,64
   17628:	85d6                	mv	a1,s5
   1762a:	855e                	mv	a0,s7
   1762c:	c446                	sw	a7,8(sp)
   1762e:	beefc0ef          	jal	13a1c <__sprint_r>
   17632:	fd19                	bnez	a0,17550 <_vfiprintf_r+0x2f4>
   17634:	4726                	lw	a4,72(sp)
   17636:	48a2                	lw	a7,8(sp)
   17638:	b539                	j	17446 <_vfiprintf_r+0x1ea>
   1763a:	01087713          	andi	a4,a6,16
   1763e:	000d2783          	lw	a5,0(s10)
   17642:	0d11                	addi	s10,s10,4
   17644:	e371                	bnez	a4,17708 <_vfiprintf_r+0x4ac>
   17646:	04087713          	andi	a4,a6,64
   1764a:	cb5d                	beqz	a4,17700 <_vfiprintf_r+0x4a4>
   1764c:	07c2                	slli	a5,a5,0x10
   1764e:	87c1                	srai	a5,a5,0x10
   17650:	41f7d893          	srai	a7,a5,0x1f
   17654:	8746                	mv	a4,a7
   17656:	e4075ce3          	bgez	a4,174ae <_vfiprintf_r+0x252>
   1765a:	02d00613          	li	a2,45
   1765e:	00f03733          	snez	a4,a5
   17662:	411008b3          	neg	a7,a7
   17666:	02c10da3          	sb	a2,59(sp)
   1766a:	40e888b3          	sub	a7,a7,a4
   1766e:	40f007b3          	neg	a5,a5
   17672:	000dc463          	bltz	s11,1767a <_vfiprintf_r+0x41e>
   17676:	f7f87813          	andi	a6,a6,-129
   1767a:	62089c63          	bnez	a7,17cb2 <_vfiprintf_r+0xa56>
   1767e:	4725                	li	a4,9
   17680:	62f76963          	bltu	a4,a5,17cb2 <_vfiprintf_r+0xa56>
   17684:	03078793          	addi	a5,a5,48
   17688:	0ff7f793          	zext.b	a5,a5
   1768c:	0ef107a3          	sb	a5,239(sp)
   17690:	88ee                	mv	a7,s11
   17692:	01b04363          	bgtz	s11,17698 <_vfiprintf_r+0x43c>
   17696:	4885                	li	a7,1
   17698:	4e05                	li	t3,1
   1769a:	0ef10493          	addi	s1,sp,239
   1769e:	03b14783          	lbu	a5,59(sp)
   176a2:	e20796e3          	bnez	a5,174ce <_vfiprintf_r+0x272>
   176a6:	b52d                	j	174d0 <_vfiprintf_r+0x274>
   176a8:	000d2483          	lw	s1,0(s10)
   176ac:	02010da3          	sb	zero,59(sp)
   176b0:	0d11                	addi	s10,s10,4
   176b2:	70048463          	beqz	s1,17dba <_vfiprintf_r+0xb5e>
   176b6:	c442                	sw	a6,8(sp)
   176b8:	5e0dc163          	bltz	s11,17c9a <_vfiprintf_r+0xa3e>
   176bc:	866e                	mv	a2,s11
   176be:	4581                	li	a1,0
   176c0:	8526                	mv	a0,s1
   176c2:	c21fc0ef          	jal	142e2 <memchr>
   176c6:	4822                	lw	a6,8(sp)
   176c8:	8e6e                	mv	t3,s11
   176ca:	c119                	beqz	a0,176d0 <_vfiprintf_r+0x474>
   176cc:	40950e33          	sub	t3,a0,s1
   176d0:	03b14783          	lbu	a5,59(sp)
   176d4:	fffe4893          	not	a7,t3
   176d8:	41f8d893          	srai	a7,a7,0x1f
   176dc:	011e78b3          	and	a7,t3,a7
   176e0:	4d81                	li	s11,0
   176e2:	4281                	li	t0,0
   176e4:	de0795e3          	bnez	a5,174ce <_vfiprintf_r+0x272>
   176e8:	b9e1                	j	173c0 <_vfiprintf_r+0x164>
   176ea:	000d2783          	lw	a5,0(s10)
   176ee:	02010da3          	sb	zero,59(sp)
   176f2:	0d11                	addi	s10,s10,4
   176f4:	08f10623          	sb	a5,140(sp)
   176f8:	4885                	li	a7,1
   176fa:	4e05                	li	t3,1
   176fc:	0164                	addi	s1,sp,140
   176fe:	b97d                	j	173bc <_vfiprintf_r+0x160>
   17700:	20087713          	andi	a4,a6,512
   17704:	76071e63          	bnez	a4,17e80 <_vfiprintf_r+0xc24>
   17708:	41f7d893          	srai	a7,a5,0x1f
   1770c:	8746                	mv	a4,a7
   1770e:	bb71                	j	174aa <_vfiprintf_r+0x24e>
   17710:	41600b33          	neg	s6,s6
   17714:	0009c783          	lbu	a5,0(s3)
   17718:	00486813          	ori	a6,a6,4
   1771c:	b989                	j	1736e <_vfiprintf_r+0x112>
   1771e:	02b00713          	li	a4,43
   17722:	0009c783          	lbu	a5,0(s3)
   17726:	02e10da3          	sb	a4,59(sp)
   1772a:	b191                	j	1736e <_vfiprintf_r+0x112>
   1772c:	0009c783          	lbu	a5,0(s3)
   17730:	08086813          	ori	a6,a6,128
   17734:	b92d                	j	1736e <_vfiprintf_r+0x112>
   17736:	0009c603          	lbu	a2,0(s3)
   1773a:	02a00793          	li	a5,42
   1773e:	00198693          	addi	a3,s3,1
   17742:	76f60863          	beq	a2,a5,17eb2 <_vfiprintf_r+0xc56>
   17746:	fd060793          	addi	a5,a2,-48
   1774a:	4725                	li	a4,9
   1774c:	4d81                	li	s11,0
   1774e:	45a5                	li	a1,9
   17750:	02f76063          	bltu	a4,a5,17770 <_vfiprintf_r+0x514>
   17754:	0006c603          	lbu	a2,0(a3)
   17758:	002d9713          	slli	a4,s11,0x2
   1775c:	9dba                	add	s11,s11,a4
   1775e:	0d86                	slli	s11,s11,0x1
   17760:	9dbe                	add	s11,s11,a5
   17762:	fd060793          	addi	a5,a2,-48
   17766:	0685                	addi	a3,a3,1
   17768:	fef5f6e3          	bgeu	a1,a5,17754 <_vfiprintf_r+0x4f8>
   1776c:	4a0dcb63          	bltz	s11,17c22 <_vfiprintf_r+0x9c6>
   17770:	89b6                	mv	s3,a3
   17772:	b101                	j	17372 <_vfiprintf_r+0x116>
   17774:	855e                	mv	a0,s7
   17776:	c442                	sw	a6,8(sp)
   17778:	c79fc0ef          	jal	143f0 <_localeconv_r>
   1777c:	415c                	lw	a5,4(a0)
   1777e:	853e                	mv	a0,a5
   17780:	ce3e                	sw	a5,28(sp)
   17782:	ef7fc0ef          	jal	14678 <strlen>
   17786:	87aa                	mv	a5,a0
   17788:	855e                	mv	a0,s7
   1778a:	cc3e                	sw	a5,24(sp)
   1778c:	c65fc0ef          	jal	143f0 <_localeconv_r>
   17790:	4518                	lw	a4,8(a0)
   17792:	47e2                	lw	a5,24(sp)
   17794:	4822                	lw	a6,8(sp)
   17796:	ca3a                	sw	a4,20(sp)
   17798:	ce0782e3          	beqz	a5,1747c <_vfiprintf_r+0x220>
   1779c:	4752                	lw	a4,20(sp)
   1779e:	0009c783          	lbu	a5,0(s3)
   177a2:	bc0706e3          	beqz	a4,1736e <_vfiprintf_r+0x112>
   177a6:	00074703          	lbu	a4,0(a4)
   177aa:	bc0702e3          	beqz	a4,1736e <_vfiprintf_r+0x112>
   177ae:	40086813          	ori	a6,a6,1024
   177b2:	be75                	j	1736e <_vfiprintf_r+0x112>
   177b4:	0009c783          	lbu	a5,0(s3)
   177b8:	00186813          	ori	a6,a6,1
   177bc:	be4d                	j	1736e <_vfiprintf_r+0x112>
   177be:	03b14703          	lbu	a4,59(sp)
   177c2:	0009c783          	lbu	a5,0(s3)
   177c6:	ba0714e3          	bnez	a4,1736e <_vfiprintf_r+0x112>
   177ca:	02000713          	li	a4,32
   177ce:	02e10da3          	sb	a4,59(sp)
   177d2:	be71                	j	1736e <_vfiprintf_r+0x112>
   177d4:	01086713          	ori	a4,a6,16
   177d8:	02077793          	andi	a5,a4,32
   177dc:	40078063          	beqz	a5,17bdc <_vfiprintf_r+0x980>
   177e0:	0d1d                	addi	s10,s10,7
   177e2:	ff8d7d13          	andi	s10,s10,-8
   177e6:	000d2783          	lw	a5,0(s10)
   177ea:	004d2583          	lw	a1,4(s10)
   177ee:	0d21                	addi	s10,s10,8
   177f0:	02010da3          	sb	zero,59(sp)
   177f4:	bff77813          	andi	a6,a4,-1025
   177f8:	0a0dc163          	bltz	s11,1789a <_vfiprintf_r+0x63e>
   177fc:	00b7e633          	or	a2,a5,a1
   17800:	b7f77713          	andi	a4,a4,-1153
   17804:	56061d63          	bnez	a2,17d7e <_vfiprintf_r+0xb22>
   17808:	8e42                	mv	t3,a6
   1780a:	4781                	li	a5,0
   1780c:	883a                	mv	a6,a4
   1780e:	060d9e63          	bnez	s11,1788a <_vfiprintf_r+0x62e>
   17812:	ca0798e3          	bnez	a5,174c2 <_vfiprintf_r+0x266>
   17816:	001e7e13          	andi	t3,t3,1
   1781a:	3e0e0463          	beqz	t3,17c02 <_vfiprintf_r+0x9a6>
   1781e:	03000793          	li	a5,48
   17822:	0ef107a3          	sb	a5,239(sp)
   17826:	88f2                	mv	a7,t3
   17828:	0ef10493          	addi	s1,sp,239
   1782c:	bd8d                	j	1769e <_vfiprintf_r+0x442>
   1782e:	0009c783          	lbu	a5,0(s3)
   17832:	06c00713          	li	a4,108
   17836:	56e78463          	beq	a5,a4,17d9e <_vfiprintf_r+0xb42>
   1783a:	01086813          	ori	a6,a6,16
   1783e:	be05                	j	1736e <_vfiprintf_r+0x112>
   17840:	0009c783          	lbu	a5,0(s3)
   17844:	06800713          	li	a4,104
   17848:	54e78463          	beq	a5,a4,17d90 <_vfiprintf_r+0xb34>
   1784c:	04086813          	ori	a6,a6,64
   17850:	be39                	j	1736e <_vfiprintf_r+0x112>
   17852:	01086e13          	ori	t3,a6,16
   17856:	020e7793          	andi	a5,t3,32
   1785a:	36078363          	beqz	a5,17bc0 <_vfiprintf_r+0x964>
   1785e:	0d1d                	addi	s10,s10,7
   17860:	ff8d7d13          	andi	s10,s10,-8
   17864:	000d2783          	lw	a5,0(s10)
   17868:	004d2883          	lw	a7,4(s10)
   1786c:	0d21                	addi	s10,s10,8
   1786e:	02010da3          	sb	zero,59(sp)
   17872:	8872                	mv	a6,t3
   17874:	e00dc3e3          	bltz	s11,1767a <_vfiprintf_r+0x41e>
   17878:	0117e733          	or	a4,a5,a7
   1787c:	f7fe7813          	andi	a6,t3,-129
   17880:	de071de3          	bnez	a4,1767a <_vfiprintf_r+0x41e>
   17884:	4785                	li	a5,1
   17886:	f80d86e3          	beqz	s11,17812 <_vfiprintf_r+0x5b6>
   1788a:	4705                	li	a4,1
   1788c:	60e78c63          	beq	a5,a4,17ea4 <_vfiprintf_r+0xc48>
   17890:	4709                	li	a4,2
   17892:	54e78663          	beq	a5,a4,17dde <_vfiprintf_r+0xb82>
   17896:	4781                	li	a5,0
   17898:	4581                	li	a1,0
   1789a:	1984                	addi	s1,sp,240
   1789c:	01d59693          	slli	a3,a1,0x1d
   178a0:	0077f713          	andi	a4,a5,7
   178a4:	838d                	srli	a5,a5,0x3
   178a6:	03070713          	addi	a4,a4,48
   178aa:	8fd5                	or	a5,a5,a3
   178ac:	818d                	srli	a1,a1,0x3
   178ae:	fee48fa3          	sb	a4,-1(s1)
   178b2:	00b7e6b3          	or	a3,a5,a1
   178b6:	8526                	mv	a0,s1
   178b8:	14fd                	addi	s1,s1,-1
   178ba:	f2ed                	bnez	a3,1789c <_vfiprintf_r+0x640>
   178bc:	00187793          	andi	a5,a6,1
   178c0:	20078b63          	beqz	a5,17ad6 <_vfiprintf_r+0x87a>
   178c4:	03000793          	li	a5,48
   178c8:	20f70763          	beq	a4,a5,17ad6 <_vfiprintf_r+0x87a>
   178cc:	1579                	addi	a0,a0,-2
   178ce:	fef48fa3          	sb	a5,-1(s1)
   178d2:	199c                	addi	a5,sp,240
   178d4:	40a78e33          	sub	t3,a5,a0
   178d8:	88ee                	mv	a7,s11
   178da:	35cdc163          	blt	s11,t3,17c1c <_vfiprintf_r+0x9c0>
   178de:	84aa                	mv	s1,a0
   178e0:	bb7d                	j	1769e <_vfiprintf_r+0x442>
   178e2:	6721                	lui	a4,0x8
   178e4:	83070713          	addi	a4,a4,-2000 # 7830 <exit-0x8864>
   178e8:	02e11e23          	sh	a4,60(sp)
   178ec:	676d                	lui	a4,0x1b
   178ee:	a0c70713          	addi	a4,a4,-1524 # 1aa0c <__clzsi2+0x94>
   178f2:	000d2783          	lw	a5,0(s10)
   178f6:	4581                	li	a1,0
   178f8:	00286813          	ori	a6,a6,2
   178fc:	0d11                	addi	s10,s10,4
   178fe:	c23a                	sw	a4,4(sp)
   17900:	02010da3          	sb	zero,59(sp)
   17904:	1a0dc763          	bltz	s11,17ab2 <_vfiprintf_r+0x856>
   17908:	00b7e733          	or	a4,a5,a1
   1790c:	f7f87613          	andi	a2,a6,-129
   17910:	18071d63          	bnez	a4,17aaa <_vfiprintf_r+0x84e>
   17914:	8e42                	mv	t3,a6
   17916:	4789                	li	a5,2
   17918:	8832                	mv	a6,a2
   1791a:	bdd5                	j	1780e <_vfiprintf_r+0x5b2>
   1791c:	02087793          	andi	a5,a6,32
   17920:	2e079463          	bnez	a5,17c08 <_vfiprintf_r+0x9ac>
   17924:	01087793          	andi	a5,a6,16
   17928:	48079263          	bnez	a5,17dac <_vfiprintf_r+0xb50>
   1792c:	04087793          	andi	a5,a6,64
   17930:	54079f63          	bnez	a5,17e8e <_vfiprintf_r+0xc32>
   17934:	20087813          	andi	a6,a6,512
   17938:	46080a63          	beqz	a6,17dac <_vfiprintf_r+0xb50>
   1793c:	000d2783          	lw	a5,0(s10)
   17940:	0d11                	addi	s10,s10,4
   17942:	01278023          	sb	s2,0(a5)
   17946:	b2e9                	j	17310 <_vfiprintf_r+0xb4>
   17948:	411b0333          	sub	t1,s6,a7
   1794c:	ac6056e3          	blez	t1,17418 <_vfiprintf_r+0x1bc>
   17950:	6f6d                	lui	t5,0x1b
   17952:	4641                	li	a2,16
   17954:	130f0f13          	addi	t5,t5,304 # 1b130 <zeroes.0>
   17958:	04665f63          	bge	a2,t1,179b6 <_vfiprintf_r+0x75a>
   1795c:	c426                	sw	s1,8(sp)
   1795e:	86a2                	mv	a3,s0
   17960:	4ec1                	li	t4,16
   17962:	4f9d                	li	t6,7
   17964:	c642                	sw	a6,12(sp)
   17966:	c872                	sw	t3,16(sp)
   17968:	841a                	mv	s0,t1
   1796a:	d046                	sw	a7,32(sp)
   1796c:	84fa                	mv	s1,t5
   1796e:	a021                	j	17976 <_vfiprintf_r+0x71a>
   17970:	1441                	addi	s0,s0,-16
   17972:	028edb63          	bge	t4,s0,179a8 <_vfiprintf_r+0x74c>
   17976:	0741                	addi	a4,a4,16
   17978:	0785                	addi	a5,a5,1
   1797a:	c284                	sw	s1,0(a3)
   1797c:	01d6a223          	sw	t4,4(a3)
   17980:	c4ba                	sw	a4,72(sp)
   17982:	c2be                	sw	a5,68(sp)
   17984:	06a1                	addi	a3,a3,8
   17986:	feffd5e3          	bge	t6,a5,17970 <_vfiprintf_r+0x714>
   1798a:	0090                	addi	a2,sp,64
   1798c:	85d6                	mv	a1,s5
   1798e:	855e                	mv	a0,s7
   17990:	88cfc0ef          	jal	13a1c <__sprint_r>
   17994:	ba051ee3          	bnez	a0,17550 <_vfiprintf_r+0x2f4>
   17998:	4ec1                	li	t4,16
   1799a:	1441                	addi	s0,s0,-16
   1799c:	4726                	lw	a4,72(sp)
   1799e:	4796                	lw	a5,68(sp)
   179a0:	86e2                	mv	a3,s8
   179a2:	4f9d                	li	t6,7
   179a4:	fc8ec9e3          	blt	t4,s0,17976 <_vfiprintf_r+0x71a>
   179a8:	8f26                	mv	t5,s1
   179aa:	4832                	lw	a6,12(sp)
   179ac:	4e42                	lw	t3,16(sp)
   179ae:	5882                	lw	a7,32(sp)
   179b0:	44a2                	lw	s1,8(sp)
   179b2:	8322                	mv	t1,s0
   179b4:	8436                	mv	s0,a3
   179b6:	971a                	add	a4,a4,t1
   179b8:	0785                	addi	a5,a5,1
   179ba:	01e42023          	sw	t5,0(s0)
   179be:	00642223          	sw	t1,4(s0)
   179c2:	c4ba                	sw	a4,72(sp)
   179c4:	c2be                	sw	a5,68(sp)
   179c6:	461d                	li	a2,7
   179c8:	0421                	addi	s0,s0,8
   179ca:	a4f657e3          	bge	a2,a5,17418 <_vfiprintf_r+0x1bc>
   179ce:	0090                	addi	a2,sp,64
   179d0:	85d6                	mv	a1,s5
   179d2:	855e                	mv	a0,s7
   179d4:	c846                	sw	a7,16(sp)
   179d6:	c672                	sw	t3,12(sp)
   179d8:	c442                	sw	a6,8(sp)
   179da:	842fc0ef          	jal	13a1c <__sprint_r>
   179de:	b60519e3          	bnez	a0,17550 <_vfiprintf_r+0x2f4>
   179e2:	4e32                	lw	t3,12(sp)
   179e4:	4726                	lw	a4,72(sp)
   179e6:	4796                	lw	a5,68(sp)
   179e8:	41cd8db3          	sub	s11,s11,t3
   179ec:	48c2                	lw	a7,16(sp)
   179ee:	4822                	lw	a6,8(sp)
   179f0:	8462                	mv	s0,s8
   179f2:	a3b057e3          	blez	s11,17420 <_vfiprintf_r+0x1c4>
   179f6:	6f6d                	lui	t5,0x1b
   179f8:	130f0f13          	addi	t5,t5,304 # 1b130 <zeroes.0>
   179fc:	05ba5c63          	bge	s4,s11,17a54 <_vfiprintf_r+0x7f8>
   17a00:	86a2                	mv	a3,s0
   17a02:	431d                	li	t1,7
   17a04:	846e                	mv	s0,s11
   17a06:	c442                	sw	a6,8(sp)
   17a08:	c672                	sw	t3,12(sp)
   17a0a:	c846                	sw	a7,16(sp)
   17a0c:	8de6                	mv	s11,s9
   17a0e:	a021                	j	17a16 <_vfiprintf_r+0x7ba>
   17a10:	1441                	addi	s0,s0,-16
   17a12:	028a5b63          	bge	s4,s0,17a48 <_vfiprintf_r+0x7ec>
   17a16:	0741                	addi	a4,a4,16
   17a18:	0785                	addi	a5,a5,1
   17a1a:	0196a023          	sw	s9,0(a3)
   17a1e:	0146a223          	sw	s4,4(a3)
   17a22:	c4ba                	sw	a4,72(sp)
   17a24:	c2be                	sw	a5,68(sp)
   17a26:	06a1                	addi	a3,a3,8
   17a28:	fef354e3          	bge	t1,a5,17a10 <_vfiprintf_r+0x7b4>
   17a2c:	0090                	addi	a2,sp,64
   17a2e:	85d6                	mv	a1,s5
   17a30:	855e                	mv	a0,s7
   17a32:	febfb0ef          	jal	13a1c <__sprint_r>
   17a36:	b0051de3          	bnez	a0,17550 <_vfiprintf_r+0x2f4>
   17a3a:	1441                	addi	s0,s0,-16
   17a3c:	4726                	lw	a4,72(sp)
   17a3e:	4796                	lw	a5,68(sp)
   17a40:	86e2                	mv	a3,s8
   17a42:	431d                	li	t1,7
   17a44:	fc8a49e3          	blt	s4,s0,17a16 <_vfiprintf_r+0x7ba>
   17a48:	4822                	lw	a6,8(sp)
   17a4a:	4e32                	lw	t3,12(sp)
   17a4c:	48c2                	lw	a7,16(sp)
   17a4e:	8f6e                	mv	t5,s11
   17a50:	8da2                	mv	s11,s0
   17a52:	8436                	mv	s0,a3
   17a54:	976e                	add	a4,a4,s11
   17a56:	0785                	addi	a5,a5,1
   17a58:	01e42023          	sw	t5,0(s0)
   17a5c:	01b42223          	sw	s11,4(s0)
   17a60:	c4ba                	sw	a4,72(sp)
   17a62:	c2be                	sw	a5,68(sp)
   17a64:	461d                	li	a2,7
   17a66:	0421                	addi	s0,s0,8
   17a68:	9af65ce3          	bge	a2,a5,17420 <_vfiprintf_r+0x1c4>
   17a6c:	0090                	addi	a2,sp,64
   17a6e:	85d6                	mv	a1,s5
   17a70:	855e                	mv	a0,s7
   17a72:	c846                	sw	a7,16(sp)
   17a74:	c672                	sw	t3,12(sp)
   17a76:	c442                	sw	a6,8(sp)
   17a78:	fa5fb0ef          	jal	13a1c <__sprint_r>
   17a7c:	ac051ae3          	bnez	a0,17550 <_vfiprintf_r+0x2f4>
   17a80:	4726                	lw	a4,72(sp)
   17a82:	4796                	lw	a5,68(sp)
   17a84:	48c2                	lw	a7,16(sp)
   17a86:	4e32                	lw	t3,12(sp)
   17a88:	4822                	lw	a6,8(sp)
   17a8a:	8462                	mv	s0,s8
   17a8c:	ba51                	j	17420 <_vfiprintf_r+0x1c4>
   17a8e:	0090                	addi	a2,sp,64
   17a90:	85d6                	mv	a1,s5
   17a92:	855e                	mv	a0,s7
   17a94:	c646                	sw	a7,12(sp)
   17a96:	c442                	sw	a6,8(sp)
   17a98:	f85fb0ef          	jal	13a1c <__sprint_r>
   17a9c:	aa051ae3          	bnez	a0,17550 <_vfiprintf_r+0x2f4>
   17aa0:	4726                	lw	a4,72(sp)
   17aa2:	48b2                	lw	a7,12(sp)
   17aa4:	4822                	lw	a6,8(sp)
   17aa6:	8462                	mv	s0,s8
   17aa8:	b279                	j	17436 <_vfiprintf_r+0x1da>
   17aaa:	4709                	li	a4,2
   17aac:	8832                	mv	a6,a2
   17aae:	de0706e3          	beqz	a4,1789a <_vfiprintf_r+0x63e>
   17ab2:	4612                	lw	a2,4(sp)
   17ab4:	1984                	addi	s1,sp,240
   17ab6:	00f7f713          	andi	a4,a5,15
   17aba:	9732                	add	a4,a4,a2
   17abc:	00074683          	lbu	a3,0(a4)
   17ac0:	8391                	srli	a5,a5,0x4
   17ac2:	01c59713          	slli	a4,a1,0x1c
   17ac6:	8fd9                	or	a5,a5,a4
   17ac8:	8191                	srli	a1,a1,0x4
   17aca:	fed48fa3          	sb	a3,-1(s1)
   17ace:	00b7e733          	or	a4,a5,a1
   17ad2:	14fd                	addi	s1,s1,-1
   17ad4:	f36d                	bnez	a4,17ab6 <_vfiprintf_r+0x85a>
   17ad6:	199c                	addi	a5,sp,240
   17ad8:	40978e33          	sub	t3,a5,s1
   17adc:	88ee                	mv	a7,s11
   17ade:	bdcdd0e3          	bge	s11,t3,1769e <_vfiprintf_r+0x442>
   17ae2:	88f2                	mv	a7,t3
   17ae4:	be6d                	j	1769e <_vfiprintf_r+0x442>
   17ae6:	636d                	lui	t1,0x1b
   17ae8:	4641                	li	a2,16
   17aea:	14030313          	addi	t1,t1,320 # 1b140 <blanks.1>
   17aee:	07d65363          	bge	a2,t4,17b54 <_vfiprintf_r+0x8f8>
   17af2:	c826                	sw	s1,16(sp)
   17af4:	86a2                	mv	a3,s0
   17af6:	4f41                	li	t5,16
   17af8:	439d                	li	t2,7
   17afa:	c416                	sw	t0,8(sp)
   17afc:	c67e                	sw	t6,12(sp)
   17afe:	d042                	sw	a6,32(sp)
   17b00:	d272                	sw	t3,36(sp)
   17b02:	8476                	mv	s0,t4
   17b04:	d446                	sw	a7,40(sp)
   17b06:	849a                	mv	s1,t1
   17b08:	a021                	j	17b10 <_vfiprintf_r+0x8b4>
   17b0a:	1441                	addi	s0,s0,-16
   17b0c:	028f5b63          	bge	t5,s0,17b42 <_vfiprintf_r+0x8e6>
   17b10:	0741                	addi	a4,a4,16
   17b12:	0785                	addi	a5,a5,1
   17b14:	c284                	sw	s1,0(a3)
   17b16:	01e6a223          	sw	t5,4(a3)
   17b1a:	c4ba                	sw	a4,72(sp)
   17b1c:	c2be                	sw	a5,68(sp)
   17b1e:	06a1                	addi	a3,a3,8
   17b20:	fef3d5e3          	bge	t2,a5,17b0a <_vfiprintf_r+0x8ae>
   17b24:	0090                	addi	a2,sp,64
   17b26:	85d6                	mv	a1,s5
   17b28:	855e                	mv	a0,s7
   17b2a:	ef3fb0ef          	jal	13a1c <__sprint_r>
   17b2e:	a20511e3          	bnez	a0,17550 <_vfiprintf_r+0x2f4>
   17b32:	4f41                	li	t5,16
   17b34:	1441                	addi	s0,s0,-16
   17b36:	4726                	lw	a4,72(sp)
   17b38:	4796                	lw	a5,68(sp)
   17b3a:	86e2                	mv	a3,s8
   17b3c:	439d                	li	t2,7
   17b3e:	fc8f49e3          	blt	t5,s0,17b10 <_vfiprintf_r+0x8b4>
   17b42:	8326                	mv	t1,s1
   17b44:	42a2                	lw	t0,8(sp)
   17b46:	4fb2                	lw	t6,12(sp)
   17b48:	5802                	lw	a6,32(sp)
   17b4a:	5e12                	lw	t3,36(sp)
   17b4c:	58a2                	lw	a7,40(sp)
   17b4e:	44c2                	lw	s1,16(sp)
   17b50:	8ea2                	mv	t4,s0
   17b52:	8436                	mv	s0,a3
   17b54:	9776                	add	a4,a4,t4
   17b56:	0785                	addi	a5,a5,1
   17b58:	00642023          	sw	t1,0(s0)
   17b5c:	01d42223          	sw	t4,4(s0)
   17b60:	c4ba                	sw	a4,72(sp)
   17b62:	c2be                	sw	a5,68(sp)
   17b64:	461d                	li	a2,7
   17b66:	0421                	addi	s0,s0,8
   17b68:	86f656e3          	bge	a2,a5,173d4 <_vfiprintf_r+0x178>
   17b6c:	0090                	addi	a2,sp,64
   17b6e:	85d6                	mv	a1,s5
   17b70:	855e                	mv	a0,s7
   17b72:	d246                	sw	a7,36(sp)
   17b74:	d072                	sw	t3,32(sp)
   17b76:	c842                	sw	a6,16(sp)
   17b78:	c67e                	sw	t6,12(sp)
   17b7a:	c416                	sw	t0,8(sp)
   17b7c:	ea1fb0ef          	jal	13a1c <__sprint_r>
   17b80:	9c0518e3          	bnez	a0,17550 <_vfiprintf_r+0x2f4>
   17b84:	4726                	lw	a4,72(sp)
   17b86:	4796                	lw	a5,68(sp)
   17b88:	5892                	lw	a7,36(sp)
   17b8a:	5e02                	lw	t3,32(sp)
   17b8c:	4842                	lw	a6,16(sp)
   17b8e:	4fb2                	lw	t6,12(sp)
   17b90:	42a2                	lw	t0,8(sp)
   17b92:	8462                	mv	s0,s8
   17b94:	841ff06f          	j	173d4 <_vfiprintf_r+0x178>
   17b98:	0090                	addi	a2,sp,64
   17b9a:	85d6                	mv	a1,s5
   17b9c:	855e                	mv	a0,s7
   17b9e:	d046                	sw	a7,32(sp)
   17ba0:	c872                	sw	t3,16(sp)
   17ba2:	c642                	sw	a6,12(sp)
   17ba4:	c47e                	sw	t6,8(sp)
   17ba6:	e77fb0ef          	jal	13a1c <__sprint_r>
   17baa:	9a0513e3          	bnez	a0,17550 <_vfiprintf_r+0x2f4>
   17bae:	4726                	lw	a4,72(sp)
   17bb0:	4796                	lw	a5,68(sp)
   17bb2:	5882                	lw	a7,32(sp)
   17bb4:	4e42                	lw	t3,16(sp)
   17bb6:	4832                	lw	a6,12(sp)
   17bb8:	4fa2                	lw	t6,8(sp)
   17bba:	8462                	mv	s0,s8
   17bbc:	855ff06f          	j	17410 <_vfiprintf_r+0x1b4>
   17bc0:	010e7713          	andi	a4,t3,16
   17bc4:	000d2783          	lw	a5,0(s10)
   17bc8:	0d11                	addi	s10,s10,4
   17bca:	e719                	bnez	a4,17bd8 <_vfiprintf_r+0x97c>
   17bcc:	040e7713          	andi	a4,t3,64
   17bd0:	1e070f63          	beqz	a4,17dce <_vfiprintf_r+0xb72>
   17bd4:	07c2                	slli	a5,a5,0x10
   17bd6:	83c1                	srli	a5,a5,0x10
   17bd8:	4881                	li	a7,0
   17bda:	b951                	j	1786e <_vfiprintf_r+0x612>
   17bdc:	01077613          	andi	a2,a4,16
   17be0:	000d2783          	lw	a5,0(s10)
   17be4:	0d11                	addi	s10,s10,4
   17be6:	ee01                	bnez	a2,17bfe <_vfiprintf_r+0x9a2>
   17be8:	04077613          	andi	a2,a4,64
   17bec:	c609                	beqz	a2,17bf6 <_vfiprintf_r+0x99a>
   17bee:	07c2                	slli	a5,a5,0x10
   17bf0:	83c1                	srli	a5,a5,0x10
   17bf2:	4581                	li	a1,0
   17bf4:	bef5                	j	177f0 <_vfiprintf_r+0x594>
   17bf6:	20077613          	andi	a2,a4,512
   17bfa:	2a061163          	bnez	a2,17e9c <_vfiprintf_r+0xc40>
   17bfe:	4581                	li	a1,0
   17c00:	bec5                	j	177f0 <_vfiprintf_r+0x594>
   17c02:	4881                	li	a7,0
   17c04:	1984                	addi	s1,sp,240
   17c06:	bc61                	j	1769e <_vfiprintf_r+0x442>
   17c08:	000d2783          	lw	a5,0(s10)
   17c0c:	41f95713          	srai	a4,s2,0x1f
   17c10:	0d11                	addi	s10,s10,4
   17c12:	0127a023          	sw	s2,0(a5)
   17c16:	c3d8                	sw	a4,4(a5)
   17c18:	ef8ff06f          	j	17310 <_vfiprintf_r+0xb4>
   17c1c:	88f2                	mv	a7,t3
   17c1e:	84aa                	mv	s1,a0
   17c20:	bcbd                	j	1769e <_vfiprintf_r+0x442>
   17c22:	5dfd                	li	s11,-1
   17c24:	89b6                	mv	s3,a3
   17c26:	f4cff06f          	j	17372 <_vfiprintf_r+0x116>
   17c2a:	8e42                	mv	t3,a6
   17c2c:	b12d                	j	17856 <_vfiprintf_r+0x5fa>
   17c2e:	8742                	mv	a4,a6
   17c30:	b665                	j	177d8 <_vfiprintf_r+0x57c>
   17c32:	67ed                	lui	a5,0x1b
   17c34:	a2078793          	addi	a5,a5,-1504 # 1aa20 <__clzsi2+0xa8>
   17c38:	c23e                	sw	a5,4(sp)
   17c3a:	02087793          	andi	a5,a6,32
   17c3e:	c3a9                	beqz	a5,17c80 <_vfiprintf_r+0xa24>
   17c40:	0d1d                	addi	s10,s10,7
   17c42:	ff8d7d13          	andi	s10,s10,-8
   17c46:	000d2783          	lw	a5,0(s10)
   17c4a:	004d2583          	lw	a1,4(s10)
   17c4e:	0d21                	addi	s10,s10,8
   17c50:	00187713          	andi	a4,a6,1
   17c54:	cf01                	beqz	a4,17c6c <_vfiprintf_r+0xa10>
   17c56:	00b7e733          	or	a4,a5,a1
   17c5a:	cb09                	beqz	a4,17c6c <_vfiprintf_r+0xa10>
   17c5c:	03000713          	li	a4,48
   17c60:	02e10e23          	sb	a4,60(sp)
   17c64:	02c10ea3          	sb	a2,61(sp)
   17c68:	00286813          	ori	a6,a6,2
   17c6c:	bff87813          	andi	a6,a6,-1025
   17c70:	b941                	j	17900 <_vfiprintf_r+0x6a4>
   17c72:	67ed                	lui	a5,0x1b
   17c74:	a0c78793          	addi	a5,a5,-1524 # 1aa0c <__clzsi2+0x94>
   17c78:	c23e                	sw	a5,4(sp)
   17c7a:	02087793          	andi	a5,a6,32
   17c7e:	f3e9                	bnez	a5,17c40 <_vfiprintf_r+0x9e4>
   17c80:	01087713          	andi	a4,a6,16
   17c84:	000d2783          	lw	a5,0(s10)
   17c88:	0d11                	addi	s10,s10,4
   17c8a:	e315                	bnez	a4,17cae <_vfiprintf_r+0xa52>
   17c8c:	04087713          	andi	a4,a6,64
   17c90:	cb19                	beqz	a4,17ca6 <_vfiprintf_r+0xa4a>
   17c92:	07c2                	slli	a5,a5,0x10
   17c94:	83c1                	srli	a5,a5,0x10
   17c96:	4581                	li	a1,0
   17c98:	bf65                	j	17c50 <_vfiprintf_r+0x9f4>
   17c9a:	8526                	mv	a0,s1
   17c9c:	9ddfc0ef          	jal	14678 <strlen>
   17ca0:	4822                	lw	a6,8(sp)
   17ca2:	8e2a                	mv	t3,a0
   17ca4:	b435                	j	176d0 <_vfiprintf_r+0x474>
   17ca6:	20087713          	andi	a4,a6,512
   17caa:	1c071763          	bnez	a4,17e78 <_vfiprintf_r+0xc1c>
   17cae:	4581                	li	a1,0
   17cb0:	b745                	j	17c50 <_vfiprintf_r+0x9f4>
   17cb2:	ccccdf37          	lui	t5,0xccccd
   17cb6:	ccccdfb7          	lui	t6,0xccccd
   17cba:	42d2                	lw	t0,20(sp)
   17cbc:	40087e13          	andi	t3,a6,1024
   17cc0:	4581                	li	a1,0
   17cc2:	1988                	addi	a0,sp,240
   17cc4:	4315                	li	t1,5
   17cc6:	ccdf0f13          	addi	t5,t5,-819 # cccccccd <__BSS_END__+0xcccb0021>
   17cca:	cccf8f93          	addi	t6,t6,-820 # cccccccc <__BSS_END__+0xcccb0020>
   17cce:	0ff00e93          	li	t4,255
   17cd2:	a081                	j	17d12 <_vfiprintf_r+0xab6>
   17cd4:	00f4b733          	sltu	a4,s1,a5
   17cd8:	9726                	add	a4,a4,s1
   17cda:	02677733          	remu	a4,a4,t1
   17cde:	40e78733          	sub	a4,a5,a4
   17ce2:	00e7b633          	sltu	a2,a5,a4
   17ce6:	40c88633          	sub	a2,a7,a2
   17cea:	03f703b3          	mul	t2,a4,t6
   17cee:	03e60633          	mul	a2,a2,t5
   17cf2:	03e73533          	mulhu	a0,a4,t5
   17cf6:	961e                	add	a2,a2,t2
   17cf8:	03e70733          	mul	a4,a4,t5
   17cfc:	962a                	add	a2,a2,a0
   17cfe:	01f61513          	slli	a0,a2,0x1f
   17d02:	8205                	srli	a2,a2,0x1
   17d04:	8305                	srli	a4,a4,0x1
   17d06:	8f49                	or	a4,a4,a0
   17d08:	16088263          	beqz	a7,17e6c <_vfiprintf_r+0xc10>
   17d0c:	87ba                	mv	a5,a4
   17d0e:	88b2                	mv	a7,a2
   17d10:	8536                	mv	a0,a3
   17d12:	011784b3          	add	s1,a5,a7
   17d16:	00f4b733          	sltu	a4,s1,a5
   17d1a:	9726                	add	a4,a4,s1
   17d1c:	02677733          	remu	a4,a4,t1
   17d20:	fff50693          	addi	a3,a0,-1
   17d24:	0585                	addi	a1,a1,1
   17d26:	40e78733          	sub	a4,a5,a4
   17d2a:	00e7b3b3          	sltu	t2,a5,a4
   17d2e:	407883b3          	sub	t2,a7,t2
   17d32:	03e73633          	mulhu	a2,a4,t5
   17d36:	03e383b3          	mul	t2,t2,t5
   17d3a:	03e70733          	mul	a4,a4,t5
   17d3e:	93b2                	add	t2,t2,a2
   17d40:	03fe                	slli	t2,t2,0x1f
   17d42:	00175613          	srli	a2,a4,0x1
   17d46:	00c3e633          	or	a2,t2,a2
   17d4a:	00261713          	slli	a4,a2,0x2
   17d4e:	9732                	add	a4,a4,a2
   17d50:	0706                	slli	a4,a4,0x1
   17d52:	40e78733          	sub	a4,a5,a4
   17d56:	03070713          	addi	a4,a4,48
   17d5a:	fee50fa3          	sb	a4,-1(a0)
   17d5e:	f60e0be3          	beqz	t3,17cd4 <_vfiprintf_r+0xa78>
   17d62:	0002c703          	lbu	a4,0(t0)
   17d66:	f6b717e3          	bne	a4,a1,17cd4 <_vfiprintf_r+0xa78>
   17d6a:	f7d585e3          	beq	a1,t4,17cd4 <_vfiprintf_r+0xa78>
   17d6e:	06089b63          	bnez	a7,17de4 <_vfiprintf_r+0xb88>
   17d72:	4725                	li	a4,9
   17d74:	06f76863          	bltu	a4,a5,17de4 <_vfiprintf_r+0xb88>
   17d78:	84b6                	mv	s1,a3
   17d7a:	ca16                	sw	t0,20(sp)
   17d7c:	bba9                	j	17ad6 <_vfiprintf_r+0x87a>
   17d7e:	883a                	mv	a6,a4
   17d80:	4701                	li	a4,0
   17d82:	b0070ce3          	beqz	a4,1789a <_vfiprintf_r+0x63e>
   17d86:	b335                	j	17ab2 <_vfiprintf_r+0x856>
   17d88:	954f90ef          	jal	10edc <__sinit>
   17d8c:	cfaff06f          	j	17286 <_vfiprintf_r+0x2a>
   17d90:	0019c783          	lbu	a5,1(s3)
   17d94:	20086813          	ori	a6,a6,512
   17d98:	0985                	addi	s3,s3,1
   17d9a:	dd4ff06f          	j	1736e <_vfiprintf_r+0x112>
   17d9e:	0019c783          	lbu	a5,1(s3)
   17da2:	02086813          	ori	a6,a6,32
   17da6:	0985                	addi	s3,s3,1
   17da8:	dc6ff06f          	j	1736e <_vfiprintf_r+0x112>
   17dac:	000d2783          	lw	a5,0(s10)
   17db0:	0d11                	addi	s10,s10,4
   17db2:	0127a023          	sw	s2,0(a5)
   17db6:	d5aff06f          	j	17310 <_vfiprintf_r+0xb4>
   17dba:	4799                	li	a5,6
   17dbc:	8e6e                	mv	t3,s11
   17dbe:	0bb7eb63          	bltu	a5,s11,17e74 <_vfiprintf_r+0xc18>
   17dc2:	64ed                	lui	s1,0x1b
   17dc4:	88f2                	mv	a7,t3
   17dc6:	a3448493          	addi	s1,s1,-1484 # 1aa34 <__clzsi2+0xbc>
   17dca:	df2ff06f          	j	173bc <_vfiprintf_r+0x160>
   17dce:	200e7713          	andi	a4,t3,512
   17dd2:	e00703e3          	beqz	a4,17bd8 <_vfiprintf_r+0x97c>
   17dd6:	0ff7f793          	zext.b	a5,a5
   17dda:	4881                	li	a7,0
   17ddc:	bc49                	j	1786e <_vfiprintf_r+0x612>
   17dde:	4781                	li	a5,0
   17de0:	4581                	li	a1,0
   17de2:	b9c1                	j	17ab2 <_vfiprintf_r+0x856>
   17de4:	d43e                	sw	a5,40(sp)
   17de6:	47e2                	lw	a5,24(sp)
   17de8:	45f2                	lw	a1,28(sp)
   17dea:	d646                	sw	a7,44(sp)
   17dec:	8e9d                	sub	a3,a3,a5
   17dee:	863e                	mv	a2,a5
   17df0:	8536                	mv	a0,a3
   17df2:	d27e                	sw	t6,36(sp)
   17df4:	d07a                	sw	t5,32(sp)
   17df6:	ca72                	sw	t3,20(sp)
   17df8:	c842                	sw	a6,16(sp)
   17dfa:	c616                	sw	t0,12(sp)
   17dfc:	c436                	sw	a3,8(sp)
   17dfe:	d72fc0ef          	jal	14370 <strncpy>
   17e02:	57a2                	lw	a5,40(sp)
   17e04:	4615                	li	a2,5
   17e06:	42b2                	lw	t0,12(sp)
   17e08:	00f4b733          	sltu	a4,s1,a5
   17e0c:	9726                	add	a4,a4,s1
   17e0e:	02c77733          	remu	a4,a4,a2
   17e12:	0012c603          	lbu	a2,1(t0)
   17e16:	58b2                	lw	a7,44(sp)
   17e18:	ccccd537          	lui	a0,0xccccd
   17e1c:	00c03633          	snez	a2,a2
   17e20:	ccccd3b7          	lui	t2,0xccccd
   17e24:	92b2                	add	t0,t0,a2
   17e26:	ccd50513          	addi	a0,a0,-819 # cccccccd <__BSS_END__+0xcccb0021>
   17e2a:	ccc38393          	addi	t2,t2,-820 # cccccccc <__BSS_END__+0xcccb0020>
   17e2e:	46a2                	lw	a3,8(sp)
   17e30:	4842                	lw	a6,16(sp)
   17e32:	4e52                	lw	t3,20(sp)
   17e34:	5f02                	lw	t5,32(sp)
   17e36:	5f92                	lw	t6,36(sp)
   17e38:	4581                	li	a1,0
   17e3a:	4315                	li	t1,5
   17e3c:	0ff00e93          	li	t4,255
   17e40:	40e78733          	sub	a4,a5,a4
   17e44:	00e7b633          	sltu	a2,a5,a4
   17e48:	40c88633          	sub	a2,a7,a2
   17e4c:	027703b3          	mul	t2,a4,t2
   17e50:	02a60633          	mul	a2,a2,a0
   17e54:	02a738b3          	mulhu	a7,a4,a0
   17e58:	961e                	add	a2,a2,t2
   17e5a:	02a707b3          	mul	a5,a4,a0
   17e5e:	9646                	add	a2,a2,a7
   17e60:	01f61713          	slli	a4,a2,0x1f
   17e64:	8205                	srli	a2,a2,0x1
   17e66:	8385                	srli	a5,a5,0x1
   17e68:	8f5d                	or	a4,a4,a5
   17e6a:	b54d                	j	17d0c <_vfiprintf_r+0xab0>
   17e6c:	4525                	li	a0,9
   17e6e:	e8f56fe3          	bltu	a0,a5,17d0c <_vfiprintf_r+0xab0>
   17e72:	b719                	j	17d78 <_vfiprintf_r+0xb1c>
   17e74:	4e19                	li	t3,6
   17e76:	b7b1                	j	17dc2 <_vfiprintf_r+0xb66>
   17e78:	0ff7f793          	zext.b	a5,a5
   17e7c:	4581                	li	a1,0
   17e7e:	bbc9                	j	17c50 <_vfiprintf_r+0x9f4>
   17e80:	07e2                	slli	a5,a5,0x18
   17e82:	87e1                	srai	a5,a5,0x18
   17e84:	41f7d893          	srai	a7,a5,0x1f
   17e88:	8746                	mv	a4,a7
   17e8a:	e20ff06f          	j	174aa <_vfiprintf_r+0x24e>
   17e8e:	000d2783          	lw	a5,0(s10)
   17e92:	0d11                	addi	s10,s10,4
   17e94:	01279023          	sh	s2,0(a5)
   17e98:	c78ff06f          	j	17310 <_vfiprintf_r+0xb4>
   17e9c:	0ff7f793          	zext.b	a5,a5
   17ea0:	4581                	li	a1,0
   17ea2:	b2b9                	j	177f0 <_vfiprintf_r+0x594>
   17ea4:	03000793          	li	a5,48
   17ea8:	fe4ff06f          	j	1768c <_vfiprintf_r+0x430>
   17eac:	5d7d                	li	s10,-1
   17eae:	ecaff06f          	j	17578 <_vfiprintf_r+0x31c>
   17eb2:	000d2d83          	lw	s11,0(s10)
   17eb6:	0d11                	addi	s10,s10,4
   17eb8:	000dd363          	bgez	s11,17ebe <_vfiprintf_r+0xc62>
   17ebc:	5dfd                	li	s11,-1
   17ebe:	0019c783          	lbu	a5,1(s3)
   17ec2:	89b6                	mv	s3,a3
   17ec4:	caaff06f          	j	1736e <_vfiprintf_r+0x112>

00017ec8 <vfiprintf>:
   17ec8:	87aa                	mv	a5,a0
   17eca:	f141a503          	lw	a0,-236(gp) # 1c974 <_impure_ptr>
   17ece:	86b2                	mv	a3,a2
   17ed0:	862e                	mv	a2,a1
   17ed2:	85be                	mv	a1,a5
   17ed4:	b88ff06f          	j	1725c <_vfiprintf_r>

00017ed8 <__sbprintf>:
   17ed8:	b8010113          	addi	sp,sp,-1152
   17edc:	00c59783          	lh	a5,12(a1)
   17ee0:	00e5d703          	lhu	a4,14(a1)
   17ee4:	46812c23          	sw	s0,1144(sp)
   17ee8:	842e                	mv	s0,a1
   17eea:	65c1                	lui	a1,0x10
   17eec:	15f5                	addi	a1,a1,-3 # fffd <exit-0x97>
   17eee:	06442e03          	lw	t3,100(s0)
   17ef2:	01c42303          	lw	t1,28(s0)
   17ef6:	02442883          	lw	a7,36(s0)
   17efa:	0742                	slli	a4,a4,0x10
   17efc:	8fed                	and	a5,a5,a1
   17efe:	8fd9                	or	a5,a5,a4
   17f00:	40000813          	li	a6,1024
   17f04:	ca3e                	sw	a5,20(sp)
   17f06:	002c                	addi	a1,sp,8
   17f08:	189c                	addi	a5,sp,112
   17f0a:	46912a23          	sw	s1,1140(sp)
   17f0e:	47212823          	sw	s2,1136(sp)
   17f12:	46112e23          	sw	ra,1148(sp)
   17f16:	892a                	mv	s2,a0
   17f18:	d6f2                	sw	t3,108(sp)
   17f1a:	d21a                	sw	t1,36(sp)
   17f1c:	d646                	sw	a7,44(sp)
   17f1e:	c43e                	sw	a5,8(sp)
   17f20:	cc3e                	sw	a5,24(sp)
   17f22:	c842                	sw	a6,16(sp)
   17f24:	ce42                	sw	a6,28(sp)
   17f26:	d002                	sw	zero,32(sp)
   17f28:	b34ff0ef          	jal	1725c <_vfiprintf_r>
   17f2c:	84aa                	mv	s1,a0
   17f2e:	02055963          	bgez	a0,17f60 <__sbprintf+0x88>
   17f32:	01415783          	lhu	a5,20(sp)
   17f36:	0407f793          	andi	a5,a5,64
   17f3a:	c799                	beqz	a5,17f48 <__sbprintf+0x70>
   17f3c:	00c45783          	lhu	a5,12(s0)
   17f40:	0407e793          	ori	a5,a5,64
   17f44:	00f41623          	sh	a5,12(s0)
   17f48:	47c12083          	lw	ra,1148(sp)
   17f4c:	47812403          	lw	s0,1144(sp)
   17f50:	47012903          	lw	s2,1136(sp)
   17f54:	8526                	mv	a0,s1
   17f56:	47412483          	lw	s1,1140(sp)
   17f5a:	48010113          	addi	sp,sp,1152
   17f5e:	8082                	ret
   17f60:	002c                	addi	a1,sp,8
   17f62:	854a                	mv	a0,s2
   17f64:	d27fb0ef          	jal	13c8a <_fflush_r>
   17f68:	d569                	beqz	a0,17f32 <__sbprintf+0x5a>
   17f6a:	54fd                	li	s1,-1
   17f6c:	b7d9                	j	17f32 <__sbprintf+0x5a>

00017f6e <__errno>:
   17f6e:	f141a503          	lw	a0,-236(gp) # 1c974 <_impure_ptr>
   17f72:	8082                	ret

00017f74 <abort>:
   17f74:	1141                	addi	sp,sp,-16
   17f76:	4519                	li	a0,6
   17f78:	c606                	sw	ra,12(sp)
   17f7a:	2a59                	jal	18110 <raise>
   17f7c:	4505                	li	a0,1
   17f7e:	2e61                	jal	18316 <_exit>

00017f80 <_init_signal_r>:
   17f80:	11852783          	lw	a5,280(a0)
   17f84:	c399                	beqz	a5,17f8a <_init_signal_r+0xa>
   17f86:	4501                	li	a0,0
   17f88:	8082                	ret
   17f8a:	1141                	addi	sp,sp,-16
   17f8c:	08000593          	li	a1,128
   17f90:	c422                	sw	s0,8(sp)
   17f92:	c606                	sw	ra,12(sp)
   17f94:	842a                	mv	s0,a0
   17f96:	895f90ef          	jal	1182a <_malloc_r>
   17f9a:	10a42c23          	sw	a0,280(s0)
   17f9e:	cd09                	beqz	a0,17fb8 <_init_signal_r+0x38>
   17fa0:	08050793          	addi	a5,a0,128
   17fa4:	00052023          	sw	zero,0(a0)
   17fa8:	0511                	addi	a0,a0,4
   17faa:	fef51de3          	bne	a0,a5,17fa4 <_init_signal_r+0x24>
   17fae:	4501                	li	a0,0
   17fb0:	40b2                	lw	ra,12(sp)
   17fb2:	4422                	lw	s0,8(sp)
   17fb4:	0141                	addi	sp,sp,16
   17fb6:	8082                	ret
   17fb8:	557d                	li	a0,-1
   17fba:	bfdd                	j	17fb0 <_init_signal_r+0x30>

00017fbc <_signal_r>:
   17fbc:	1101                	addi	sp,sp,-32
   17fbe:	ca26                	sw	s1,20(sp)
   17fc0:	ce06                	sw	ra,28(sp)
   17fc2:	47fd                	li	a5,31
   17fc4:	84aa                	mv	s1,a0
   17fc6:	02b7e063          	bltu	a5,a1,17fe6 <_signal_r+0x2a>
   17fca:	11852783          	lw	a5,280(a0)
   17fce:	cc22                	sw	s0,24(sp)
   17fd0:	842e                	mv	s0,a1
   17fd2:	cf91                	beqz	a5,17fee <_signal_r+0x32>
   17fd4:	040a                	slli	s0,s0,0x2
   17fd6:	97a2                	add	a5,a5,s0
   17fd8:	4462                	lw	s0,24(sp)
   17fda:	4388                	lw	a0,0(a5)
   17fdc:	c390                	sw	a2,0(a5)
   17fde:	40f2                	lw	ra,28(sp)
   17fe0:	44d2                	lw	s1,20(sp)
   17fe2:	6105                	addi	sp,sp,32
   17fe4:	8082                	ret
   17fe6:	47d9                	li	a5,22
   17fe8:	c11c                	sw	a5,0(a0)
   17fea:	557d                	li	a0,-1
   17fec:	bfcd                	j	17fde <_signal_r+0x22>
   17fee:	08000593          	li	a1,128
   17ff2:	c632                	sw	a2,12(sp)
   17ff4:	837f90ef          	jal	1182a <_malloc_r>
   17ff8:	10a4ac23          	sw	a0,280(s1)
   17ffc:	4632                	lw	a2,12(sp)
   17ffe:	87aa                	mv	a5,a0
   18000:	872a                	mv	a4,a0
   18002:	08050693          	addi	a3,a0,128
   18006:	c519                	beqz	a0,18014 <_signal_r+0x58>
   18008:	00072023          	sw	zero,0(a4)
   1800c:	0711                	addi	a4,a4,4
   1800e:	fed71de3          	bne	a4,a3,18008 <_signal_r+0x4c>
   18012:	b7c9                	j	17fd4 <_signal_r+0x18>
   18014:	4462                	lw	s0,24(sp)
   18016:	557d                	li	a0,-1
   18018:	b7d9                	j	17fde <_signal_r+0x22>

0001801a <_raise_r>:
   1801a:	1141                	addi	sp,sp,-16
   1801c:	c226                	sw	s1,4(sp)
   1801e:	c606                	sw	ra,12(sp)
   18020:	47fd                	li	a5,31
   18022:	84aa                	mv	s1,a0
   18024:	04b7ee63          	bltu	a5,a1,18080 <_raise_r+0x66>
   18028:	11852783          	lw	a5,280(a0)
   1802c:	c422                	sw	s0,8(sp)
   1802e:	842e                	mv	s0,a1
   18030:	c795                	beqz	a5,1805c <_raise_r+0x42>
   18032:	00259713          	slli	a4,a1,0x2
   18036:	97ba                	add	a5,a5,a4
   18038:	4398                	lw	a4,0(a5)
   1803a:	c30d                	beqz	a4,1805c <_raise_r+0x42>
   1803c:	4685                	li	a3,1
   1803e:	00d70963          	beq	a4,a3,18050 <_raise_r+0x36>
   18042:	56fd                	li	a3,-1
   18044:	02d70663          	beq	a4,a3,18070 <_raise_r+0x56>
   18048:	0007a023          	sw	zero,0(a5)
   1804c:	852e                	mv	a0,a1
   1804e:	9702                	jalr	a4
   18050:	4422                	lw	s0,8(sp)
   18052:	4501                	li	a0,0
   18054:	40b2                	lw	ra,12(sp)
   18056:	4492                	lw	s1,4(sp)
   18058:	0141                	addi	sp,sp,16
   1805a:	8082                	ret
   1805c:	8526                	mv	a0,s1
   1805e:	2469                	jal	182e8 <_getpid_r>
   18060:	8622                	mv	a2,s0
   18062:	4422                	lw	s0,8(sp)
   18064:	40b2                	lw	ra,12(sp)
   18066:	85aa                	mv	a1,a0
   18068:	8526                	mv	a0,s1
   1806a:	4492                	lw	s1,4(sp)
   1806c:	0141                	addi	sp,sp,16
   1806e:	a489                	j	182b0 <_kill_r>
   18070:	4422                	lw	s0,8(sp)
   18072:	40b2                	lw	ra,12(sp)
   18074:	47d9                	li	a5,22
   18076:	c11c                	sw	a5,0(a0)
   18078:	4492                	lw	s1,4(sp)
   1807a:	4505                	li	a0,1
   1807c:	0141                	addi	sp,sp,16
   1807e:	8082                	ret
   18080:	47d9                	li	a5,22
   18082:	c11c                	sw	a5,0(a0)
   18084:	557d                	li	a0,-1
   18086:	b7f9                	j	18054 <_raise_r+0x3a>

00018088 <__sigtramp_r>:
   18088:	47fd                	li	a5,31
   1808a:	08b7e163          	bltu	a5,a1,1810c <__sigtramp_r+0x84>
   1808e:	11852783          	lw	a5,280(a0)
   18092:	1141                	addi	sp,sp,-16
   18094:	c422                	sw	s0,8(sp)
   18096:	c226                	sw	s1,4(sp)
   18098:	c606                	sw	ra,12(sp)
   1809a:	842e                	mv	s0,a1
   1809c:	84aa                	mv	s1,a0
   1809e:	c7a1                	beqz	a5,180e6 <__sigtramp_r+0x5e>
   180a0:	00241713          	slli	a4,s0,0x2
   180a4:	97ba                	add	a5,a5,a4
   180a6:	4398                	lw	a4,0(a5)
   180a8:	c30d                	beqz	a4,180ca <__sigtramp_r+0x42>
   180aa:	56fd                	li	a3,-1
   180ac:	02d70b63          	beq	a4,a3,180e2 <__sigtramp_r+0x5a>
   180b0:	4685                	li	a3,1
   180b2:	02d70263          	beq	a4,a3,180d6 <__sigtramp_r+0x4e>
   180b6:	8522                	mv	a0,s0
   180b8:	0007a023          	sw	zero,0(a5)
   180bc:	9702                	jalr	a4
   180be:	4501                	li	a0,0
   180c0:	40b2                	lw	ra,12(sp)
   180c2:	4422                	lw	s0,8(sp)
   180c4:	4492                	lw	s1,4(sp)
   180c6:	0141                	addi	sp,sp,16
   180c8:	8082                	ret
   180ca:	40b2                	lw	ra,12(sp)
   180cc:	4422                	lw	s0,8(sp)
   180ce:	4492                	lw	s1,4(sp)
   180d0:	4505                	li	a0,1
   180d2:	0141                	addi	sp,sp,16
   180d4:	8082                	ret
   180d6:	40b2                	lw	ra,12(sp)
   180d8:	4422                	lw	s0,8(sp)
   180da:	4492                	lw	s1,4(sp)
   180dc:	450d                	li	a0,3
   180de:	0141                	addi	sp,sp,16
   180e0:	8082                	ret
   180e2:	4509                	li	a0,2
   180e4:	bff1                	j	180c0 <__sigtramp_r+0x38>
   180e6:	08000593          	li	a1,128
   180ea:	f40f90ef          	jal	1182a <_malloc_r>
   180ee:	10a4ac23          	sw	a0,280(s1)
   180f2:	87aa                	mv	a5,a0
   180f4:	c911                	beqz	a0,18108 <__sigtramp_r+0x80>
   180f6:	872a                	mv	a4,a0
   180f8:	08050693          	addi	a3,a0,128
   180fc:	00072023          	sw	zero,0(a4)
   18100:	0711                	addi	a4,a4,4
   18102:	fed71de3          	bne	a4,a3,180fc <__sigtramp_r+0x74>
   18106:	bf69                	j	180a0 <__sigtramp_r+0x18>
   18108:	557d                	li	a0,-1
   1810a:	bf5d                	j	180c0 <__sigtramp_r+0x38>
   1810c:	557d                	li	a0,-1
   1810e:	8082                	ret

00018110 <raise>:
   18110:	1141                	addi	sp,sp,-16
   18112:	c226                	sw	s1,4(sp)
   18114:	c606                	sw	ra,12(sp)
   18116:	47fd                	li	a5,31
   18118:	f141a483          	lw	s1,-236(gp) # 1c974 <_impure_ptr>
   1811c:	04a7ed63          	bltu	a5,a0,18176 <raise+0x66>
   18120:	1184a783          	lw	a5,280(s1)
   18124:	c422                	sw	s0,8(sp)
   18126:	842a                	mv	s0,a0
   18128:	c78d                	beqz	a5,18152 <raise+0x42>
   1812a:	00251713          	slli	a4,a0,0x2
   1812e:	97ba                	add	a5,a5,a4
   18130:	4398                	lw	a4,0(a5)
   18132:	c305                	beqz	a4,18152 <raise+0x42>
   18134:	4685                	li	a3,1
   18136:	00d70863          	beq	a4,a3,18146 <raise+0x36>
   1813a:	56fd                	li	a3,-1
   1813c:	02d70563          	beq	a4,a3,18166 <raise+0x56>
   18140:	0007a023          	sw	zero,0(a5)
   18144:	9702                	jalr	a4
   18146:	4422                	lw	s0,8(sp)
   18148:	4501                	li	a0,0
   1814a:	40b2                	lw	ra,12(sp)
   1814c:	4492                	lw	s1,4(sp)
   1814e:	0141                	addi	sp,sp,16
   18150:	8082                	ret
   18152:	8526                	mv	a0,s1
   18154:	2a51                	jal	182e8 <_getpid_r>
   18156:	8622                	mv	a2,s0
   18158:	4422                	lw	s0,8(sp)
   1815a:	40b2                	lw	ra,12(sp)
   1815c:	85aa                	mv	a1,a0
   1815e:	8526                	mv	a0,s1
   18160:	4492                	lw	s1,4(sp)
   18162:	0141                	addi	sp,sp,16
   18164:	a2b1                	j	182b0 <_kill_r>
   18166:	4422                	lw	s0,8(sp)
   18168:	40b2                	lw	ra,12(sp)
   1816a:	47d9                	li	a5,22
   1816c:	c09c                	sw	a5,0(s1)
   1816e:	4505                	li	a0,1
   18170:	4492                	lw	s1,4(sp)
   18172:	0141                	addi	sp,sp,16
   18174:	8082                	ret
   18176:	47d9                	li	a5,22
   18178:	c09c                	sw	a5,0(s1)
   1817a:	557d                	li	a0,-1
   1817c:	b7f9                	j	1814a <raise+0x3a>

0001817e <signal>:
   1817e:	1141                	addi	sp,sp,-16
   18180:	c04a                	sw	s2,0(sp)
   18182:	c606                	sw	ra,12(sp)
   18184:	47fd                	li	a5,31
   18186:	f141a903          	lw	s2,-236(gp) # 1c974 <_impure_ptr>
   1818a:	02a7e463          	bltu	a5,a0,181b2 <signal+0x34>
   1818e:	c422                	sw	s0,8(sp)
   18190:	842a                	mv	s0,a0
   18192:	11892503          	lw	a0,280(s2)
   18196:	c226                	sw	s1,4(sp)
   18198:	84ae                	mv	s1,a1
   1819a:	c10d                	beqz	a0,181bc <signal+0x3e>
   1819c:	040a                	slli	s0,s0,0x2
   1819e:	008507b3          	add	a5,a0,s0
   181a2:	4388                	lw	a0,0(a5)
   181a4:	4422                	lw	s0,8(sp)
   181a6:	c384                	sw	s1,0(a5)
   181a8:	4492                	lw	s1,4(sp)
   181aa:	40b2                	lw	ra,12(sp)
   181ac:	4902                	lw	s2,0(sp)
   181ae:	0141                	addi	sp,sp,16
   181b0:	8082                	ret
   181b2:	47d9                	li	a5,22
   181b4:	00f92023          	sw	a5,0(s2)
   181b8:	557d                	li	a0,-1
   181ba:	bfc5                	j	181aa <signal+0x2c>
   181bc:	08000593          	li	a1,128
   181c0:	854a                	mv	a0,s2
   181c2:	e68f90ef          	jal	1182a <_malloc_r>
   181c6:	10a92c23          	sw	a0,280(s2)
   181ca:	87aa                	mv	a5,a0
   181cc:	08050713          	addi	a4,a0,128
   181d0:	c519                	beqz	a0,181de <signal+0x60>
   181d2:	0007a023          	sw	zero,0(a5)
   181d6:	0791                	addi	a5,a5,4
   181d8:	fef71de3          	bne	a4,a5,181d2 <signal+0x54>
   181dc:	b7c1                	j	1819c <signal+0x1e>
   181de:	4422                	lw	s0,8(sp)
   181e0:	4492                	lw	s1,4(sp)
   181e2:	557d                	li	a0,-1
   181e4:	b7d9                	j	181aa <signal+0x2c>

000181e6 <_init_signal>:
   181e6:	1141                	addi	sp,sp,-16
   181e8:	c422                	sw	s0,8(sp)
   181ea:	f141a403          	lw	s0,-236(gp) # 1c974 <_impure_ptr>
   181ee:	c606                	sw	ra,12(sp)
   181f0:	11842783          	lw	a5,280(s0)
   181f4:	c791                	beqz	a5,18200 <_init_signal+0x1a>
   181f6:	4501                	li	a0,0
   181f8:	40b2                	lw	ra,12(sp)
   181fa:	4422                	lw	s0,8(sp)
   181fc:	0141                	addi	sp,sp,16
   181fe:	8082                	ret
   18200:	08000593          	li	a1,128
   18204:	8522                	mv	a0,s0
   18206:	e24f90ef          	jal	1182a <_malloc_r>
   1820a:	10a42c23          	sw	a0,280(s0)
   1820e:	c909                	beqz	a0,18220 <_init_signal+0x3a>
   18210:	08050793          	addi	a5,a0,128
   18214:	00052023          	sw	zero,0(a0)
   18218:	0511                	addi	a0,a0,4
   1821a:	fef51de3          	bne	a0,a5,18214 <_init_signal+0x2e>
   1821e:	bfe1                	j	181f6 <_init_signal+0x10>
   18220:	557d                	li	a0,-1
   18222:	bfd9                	j	181f8 <_init_signal+0x12>

00018224 <__sigtramp>:
   18224:	1141                	addi	sp,sp,-16
   18226:	c226                	sw	s1,4(sp)
   18228:	c606                	sw	ra,12(sp)
   1822a:	47fd                	li	a5,31
   1822c:	f141a483          	lw	s1,-236(gp) # 1c974 <_impure_ptr>
   18230:	06a7ee63          	bltu	a5,a0,182ac <__sigtramp+0x88>
   18234:	1184a783          	lw	a5,280(s1)
   18238:	c422                	sw	s0,8(sp)
   1823a:	842a                	mv	s0,a0
   1823c:	c7a9                	beqz	a5,18286 <__sigtramp+0x62>
   1823e:	00241713          	slli	a4,s0,0x2
   18242:	97ba                	add	a5,a5,a4
   18244:	4398                	lw	a4,0(a5)
   18246:	c30d                	beqz	a4,18268 <__sigtramp+0x44>
   18248:	56fd                	li	a3,-1
   1824a:	02d70b63          	beq	a4,a3,18280 <__sigtramp+0x5c>
   1824e:	4685                	li	a3,1
   18250:	02d70263          	beq	a4,a3,18274 <__sigtramp+0x50>
   18254:	8522                	mv	a0,s0
   18256:	0007a023          	sw	zero,0(a5)
   1825a:	9702                	jalr	a4
   1825c:	4422                	lw	s0,8(sp)
   1825e:	4501                	li	a0,0
   18260:	40b2                	lw	ra,12(sp)
   18262:	4492                	lw	s1,4(sp)
   18264:	0141                	addi	sp,sp,16
   18266:	8082                	ret
   18268:	4422                	lw	s0,8(sp)
   1826a:	40b2                	lw	ra,12(sp)
   1826c:	4492                	lw	s1,4(sp)
   1826e:	4505                	li	a0,1
   18270:	0141                	addi	sp,sp,16
   18272:	8082                	ret
   18274:	4422                	lw	s0,8(sp)
   18276:	40b2                	lw	ra,12(sp)
   18278:	4492                	lw	s1,4(sp)
   1827a:	450d                	li	a0,3
   1827c:	0141                	addi	sp,sp,16
   1827e:	8082                	ret
   18280:	4422                	lw	s0,8(sp)
   18282:	4509                	li	a0,2
   18284:	bff1                	j	18260 <__sigtramp+0x3c>
   18286:	08000593          	li	a1,128
   1828a:	8526                	mv	a0,s1
   1828c:	d9ef90ef          	jal	1182a <_malloc_r>
   18290:	10a4ac23          	sw	a0,280(s1)
   18294:	87aa                	mv	a5,a0
   18296:	c911                	beqz	a0,182aa <__sigtramp+0x86>
   18298:	872a                	mv	a4,a0
   1829a:	08050693          	addi	a3,a0,128
   1829e:	00072023          	sw	zero,0(a4)
   182a2:	0711                	addi	a4,a4,4
   182a4:	fee69de3          	bne	a3,a4,1829e <__sigtramp+0x7a>
   182a8:	bf59                	j	1823e <__sigtramp+0x1a>
   182aa:	4422                	lw	s0,8(sp)
   182ac:	557d                	li	a0,-1
   182ae:	bf4d                	j	18260 <__sigtramp+0x3c>

000182b0 <_kill_r>:
   182b0:	1141                	addi	sp,sp,-16
   182b2:	872e                	mv	a4,a1
   182b4:	c422                	sw	s0,8(sp)
   182b6:	c226                	sw	s1,4(sp)
   182b8:	842a                	mv	s0,a0
   182ba:	85b2                	mv	a1,a2
   182bc:	853a                	mv	a0,a4
   182be:	c606                	sw	ra,12(sp)
   182c0:	f201a223          	sw	zero,-220(gp) # 1c984 <errno>
   182c4:	28d9                	jal	1839a <_kill>
   182c6:	57fd                	li	a5,-1
   182c8:	00f50763          	beq	a0,a5,182d6 <_kill_r+0x26>
   182cc:	40b2                	lw	ra,12(sp)
   182ce:	4422                	lw	s0,8(sp)
   182d0:	4492                	lw	s1,4(sp)
   182d2:	0141                	addi	sp,sp,16
   182d4:	8082                	ret
   182d6:	f241a783          	lw	a5,-220(gp) # 1c984 <errno>
   182da:	dbed                	beqz	a5,182cc <_kill_r+0x1c>
   182dc:	40b2                	lw	ra,12(sp)
   182de:	c01c                	sw	a5,0(s0)
   182e0:	4422                	lw	s0,8(sp)
   182e2:	4492                	lw	s1,4(sp)
   182e4:	0141                	addi	sp,sp,16
   182e6:	8082                	ret

000182e8 <_getpid_r>:
   182e8:	a069                	j	18372 <_getpid>

000182ea <_close>:
   182ea:	1141                	addi	sp,sp,-16
   182ec:	c606                	sw	ra,12(sp)
   182ee:	c422                	sw	s0,8(sp)
   182f0:	03900893          	li	a7,57
   182f4:	00000073          	ecall
   182f8:	842a                	mv	s0,a0
   182fa:	00054763          	bltz	a0,18308 <_close+0x1e>
   182fe:	40b2                	lw	ra,12(sp)
   18300:	8522                	mv	a0,s0
   18302:	4422                	lw	s0,8(sp)
   18304:	0141                	addi	sp,sp,16
   18306:	8082                	ret
   18308:	40800433          	neg	s0,s0
   1830c:	c63ff0ef          	jal	17f6e <__errno>
   18310:	c100                	sw	s0,0(a0)
   18312:	547d                	li	s0,-1
   18314:	b7ed                	j	182fe <_close+0x14>

00018316 <_exit>:
   18316:	05d00893          	li	a7,93
   1831a:	00000073          	ecall
   1831e:	00054363          	bltz	a0,18324 <_exit+0xe>
   18322:	a001                	j	18322 <_exit+0xc>
   18324:	1141                	addi	sp,sp,-16
   18326:	c422                	sw	s0,8(sp)
   18328:	842a                	mv	s0,a0
   1832a:	c606                	sw	ra,12(sp)
   1832c:	40800433          	neg	s0,s0
   18330:	c3fff0ef          	jal	17f6e <__errno>
   18334:	c100                	sw	s0,0(a0)
   18336:	a001                	j	18336 <_exit+0x20>

00018338 <_fstat>:
   18338:	7175                	addi	sp,sp,-144
   1833a:	c326                	sw	s1,132(sp)
   1833c:	c706                	sw	ra,140(sp)
   1833e:	84ae                	mv	s1,a1
   18340:	c522                	sw	s0,136(sp)
   18342:	05000893          	li	a7,80
   18346:	858a                	mv	a1,sp
   18348:	00000073          	ecall
   1834c:	842a                	mv	s0,a0
   1834e:	00054b63          	bltz	a0,18364 <_fstat+0x2c>
   18352:	8526                	mv	a0,s1
   18354:	858a                	mv	a1,sp
   18356:	2a05                	jal	18486 <_conv_stat>
   18358:	40ba                	lw	ra,140(sp)
   1835a:	8522                	mv	a0,s0
   1835c:	442a                	lw	s0,136(sp)
   1835e:	449a                	lw	s1,132(sp)
   18360:	6149                	addi	sp,sp,144
   18362:	8082                	ret
   18364:	40800433          	neg	s0,s0
   18368:	c07ff0ef          	jal	17f6e <__errno>
   1836c:	c100                	sw	s0,0(a0)
   1836e:	547d                	li	s0,-1
   18370:	b7cd                	j	18352 <_fstat+0x1a>

00018372 <_getpid>:
   18372:	4505                	li	a0,1
   18374:	8082                	ret

00018376 <_isatty>:
   18376:	7159                	addi	sp,sp,-112
   18378:	002c                	addi	a1,sp,8
   1837a:	d686                	sw	ra,108(sp)
   1837c:	fbdff0ef          	jal	18338 <_fstat>
   18380:	57fd                	li	a5,-1
   18382:	00f50863          	beq	a0,a5,18392 <_isatty+0x1c>
   18386:	4532                	lw	a0,12(sp)
   18388:	50b6                	lw	ra,108(sp)
   1838a:	8135                	srli	a0,a0,0xd
   1838c:	8905                	andi	a0,a0,1
   1838e:	6165                	addi	sp,sp,112
   18390:	8082                	ret
   18392:	50b6                	lw	ra,108(sp)
   18394:	4501                	li	a0,0
   18396:	6165                	addi	sp,sp,112
   18398:	8082                	ret

0001839a <_kill>:
   1839a:	1141                	addi	sp,sp,-16
   1839c:	c606                	sw	ra,12(sp)
   1839e:	bd1ff0ef          	jal	17f6e <__errno>
   183a2:	40b2                	lw	ra,12(sp)
   183a4:	47d9                	li	a5,22
   183a6:	c11c                	sw	a5,0(a0)
   183a8:	557d                	li	a0,-1
   183aa:	0141                	addi	sp,sp,16
   183ac:	8082                	ret

000183ae <_lseek>:
   183ae:	1141                	addi	sp,sp,-16
   183b0:	c606                	sw	ra,12(sp)
   183b2:	c422                	sw	s0,8(sp)
   183b4:	03e00893          	li	a7,62
   183b8:	00000073          	ecall
   183bc:	842a                	mv	s0,a0
   183be:	00054763          	bltz	a0,183cc <_lseek+0x1e>
   183c2:	40b2                	lw	ra,12(sp)
   183c4:	8522                	mv	a0,s0
   183c6:	4422                	lw	s0,8(sp)
   183c8:	0141                	addi	sp,sp,16
   183ca:	8082                	ret
   183cc:	40800433          	neg	s0,s0
   183d0:	b9fff0ef          	jal	17f6e <__errno>
   183d4:	c100                	sw	s0,0(a0)
   183d6:	547d                	li	s0,-1
   183d8:	b7ed                	j	183c2 <_lseek+0x14>

000183da <_read>:
   183da:	1141                	addi	sp,sp,-16
   183dc:	c606                	sw	ra,12(sp)
   183de:	c422                	sw	s0,8(sp)
   183e0:	03f00893          	li	a7,63
   183e4:	00000073          	ecall
   183e8:	842a                	mv	s0,a0
   183ea:	00054763          	bltz	a0,183f8 <_read+0x1e>
   183ee:	40b2                	lw	ra,12(sp)
   183f0:	8522                	mv	a0,s0
   183f2:	4422                	lw	s0,8(sp)
   183f4:	0141                	addi	sp,sp,16
   183f6:	8082                	ret
   183f8:	40800433          	neg	s0,s0
   183fc:	b73ff0ef          	jal	17f6e <__errno>
   18400:	c100                	sw	s0,0(a0)
   18402:	547d                	li	s0,-1
   18404:	b7ed                	j	183ee <_read+0x14>

00018406 <_sbrk>:
   18406:	f3c1a703          	lw	a4,-196(gp) # 1c99c <heap_end.0>
   1840a:	1141                	addi	sp,sp,-16
   1840c:	c606                	sw	ra,12(sp)
   1840e:	87aa                	mv	a5,a0
   18410:	ef01                	bnez	a4,18428 <_sbrk+0x22>
   18412:	0d600893          	li	a7,214
   18416:	4501                	li	a0,0
   18418:	00000073          	ecall
   1841c:	567d                	li	a2,-1
   1841e:	872a                	mv	a4,a0
   18420:	02c50563          	beq	a0,a2,1844a <_sbrk+0x44>
   18424:	f2a1ae23          	sw	a0,-196(gp) # 1c99c <heap_end.0>
   18428:	0d600893          	li	a7,214
   1842c:	00e78533          	add	a0,a5,a4
   18430:	00000073          	ecall
   18434:	f3c1a703          	lw	a4,-196(gp) # 1c99c <heap_end.0>
   18438:	97ba                	add	a5,a5,a4
   1843a:	00f51863          	bne	a0,a5,1844a <_sbrk+0x44>
   1843e:	40b2                	lw	ra,12(sp)
   18440:	f2a1ae23          	sw	a0,-196(gp) # 1c99c <heap_end.0>
   18444:	853a                	mv	a0,a4
   18446:	0141                	addi	sp,sp,16
   18448:	8082                	ret
   1844a:	b25ff0ef          	jal	17f6e <__errno>
   1844e:	40b2                	lw	ra,12(sp)
   18450:	47b1                	li	a5,12
   18452:	c11c                	sw	a5,0(a0)
   18454:	557d                	li	a0,-1
   18456:	0141                	addi	sp,sp,16
   18458:	8082                	ret

0001845a <_write>:
   1845a:	1141                	addi	sp,sp,-16
   1845c:	c606                	sw	ra,12(sp)
   1845e:	c422                	sw	s0,8(sp)
   18460:	04000893          	li	a7,64
   18464:	00000073          	ecall
   18468:	842a                	mv	s0,a0
   1846a:	00054763          	bltz	a0,18478 <_write+0x1e>
   1846e:	40b2                	lw	ra,12(sp)
   18470:	8522                	mv	a0,s0
   18472:	4422                	lw	s0,8(sp)
   18474:	0141                	addi	sp,sp,16
   18476:	8082                	ret
   18478:	40800433          	neg	s0,s0
   1847c:	af3ff0ef          	jal	17f6e <__errno>
   18480:	c100                	sw	s0,0(a0)
   18482:	547d                	li	s0,-1
   18484:	b7ed                	j	1846e <_write+0x14>

00018486 <_conv_stat>:
   18486:	0185d703          	lhu	a4,24(a1)
   1848a:	0145d783          	lhu	a5,20(a1)
   1848e:	1141                	addi	sp,sp,-16
   18490:	01c5a283          	lw	t0,28(a1)
   18494:	0205af83          	lw	t6,32(a1)
   18498:	0305af03          	lw	t5,48(a1)
   1849c:	0405ae83          	lw	t4,64(a1)
   184a0:	0385ae03          	lw	t3,56(a1)
   184a4:	0485a303          	lw	t1,72(a1)
   184a8:	04c5a383          	lw	t2,76(a1)
   184ac:	0585a803          	lw	a6,88(a1)
   184b0:	05c5a883          	lw	a7,92(a1)
   184b4:	c622                	sw	s0,12(sp)
   184b6:	c426                	sw	s1,8(sp)
   184b8:	4980                	lw	s0,16(a1)
   184ba:	4584                	lw	s1,8(a1)
   184bc:	c24a                	sw	s2,4(sp)
   184be:	0005a903          	lw	s2,0(a1)
   184c2:	55b0                	lw	a2,104(a1)
   184c4:	0742                	slli	a4,a4,0x10
   184c6:	8fd9                	or	a5,a5,a4
   184c8:	55f4                	lw	a3,108(a1)
   184ca:	01251023          	sh	s2,0(a0)
   184ce:	00951123          	sh	s1,2(a0)
   184d2:	c140                	sw	s0,4(a0)
   184d4:	c51c                	sw	a5,8(a0)
   184d6:	00551623          	sh	t0,12(a0)
   184da:	01f51723          	sh	t6,14(a0)
   184de:	01e52823          	sw	t5,16(a0)
   184e2:	05d52623          	sw	t4,76(a0)
   184e6:	05c52423          	sw	t3,72(a0)
   184ea:	00652c23          	sw	t1,24(a0)
   184ee:	00752e23          	sw	t2,28(a0)
   184f2:	03052423          	sw	a6,40(a0)
   184f6:	03152623          	sw	a7,44(a0)
   184fa:	dd10                	sw	a2,56(a0)
   184fc:	4432                	lw	s0,12(sp)
   184fe:	dd54                	sw	a3,60(a0)
   18500:	44a2                	lw	s1,8(sp)
   18502:	4912                	lw	s2,4(sp)
   18504:	0141                	addi	sp,sp,16
   18506:	8082                	ret

00018508 <__eqtf2>:
   18508:	411c                	lw	a5,0(a0)
   1850a:	00452e03          	lw	t3,4(a0)
   1850e:	00852e83          	lw	t4,8(a0)
   18512:	4554                	lw	a3,12(a0)
   18514:	4198                	lw	a4,0(a1)
   18516:	0045af83          	lw	t6,4(a1)
   1851a:	0085af03          	lw	t5,8(a1)
   1851e:	00c5a883          	lw	a7,12(a1)
   18522:	1141                	addi	sp,sp,-16
   18524:	00202673          	frrm	a2
   18528:	6521                	lui	a0,0x8
   1852a:	0106d613          	srli	a2,a3,0x10
   1852e:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   18530:	01069313          	slli	t1,a3,0x10
   18534:	01089593          	slli	a1,a7,0x10
   18538:	01f6d813          	srli	a6,a3,0x1f
   1853c:	8e69                	and	a2,a2,a0
   1853e:	0108d693          	srli	a3,a7,0x10
   18542:	01035313          	srli	t1,t1,0x10
   18546:	81c1                	srli	a1,a1,0x10
   18548:	8ee9                	and	a3,a3,a0
   1854a:	01f8d893          	srli	a7,a7,0x1f
   1854e:	00a61c63          	bne	a2,a0,18566 <__eqtf2+0x5e>
   18552:	01c7e533          	or	a0,a5,t3
   18556:	01d56533          	or	a0,a0,t4
   1855a:	00656533          	or	a0,a0,t1
   1855e:	e51d                	bnez	a0,1858c <__eqtf2+0x84>
   18560:	04c69b63          	bne	a3,a2,185b6 <__eqtf2+0xae>
   18564:	a019                	j	1856a <__eqtf2+0x62>
   18566:	04a69a63          	bne	a3,a0,185ba <__eqtf2+0xb2>
   1856a:	01f76533          	or	a0,a4,t6
   1856e:	01e56533          	or	a0,a0,t5
   18572:	8d4d                	or	a0,a0,a1
   18574:	c139                	beqz	a0,185ba <__eqtf2+0xb2>
   18576:	6521                	lui	a0,0x8
   18578:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   1857a:	02a61a63          	bne	a2,a0,185ae <__eqtf2+0xa6>
   1857e:	01c7e7b3          	or	a5,a5,t3
   18582:	01d7e7b3          	or	a5,a5,t4
   18586:	0067e7b3          	or	a5,a5,t1
   1858a:	cb99                	beqz	a5,185a0 <__eqtf2+0x98>
   1858c:	0342                	slli	t1,t1,0x10
   1858e:	41035313          	srai	t1,t1,0x10
   18592:	04035c63          	bgez	t1,185ea <__eqtf2+0xe2>
   18596:	67a1                	lui	a5,0x8
   18598:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1859a:	4505                	li	a0,1
   1859c:	04f69563          	bne	a3,a5,185e6 <__eqtf2+0xde>
   185a0:	01f76733          	or	a4,a4,t6
   185a4:	01e76733          	or	a4,a4,t5
   185a8:	8f4d                	or	a4,a4,a1
   185aa:	4505                	li	a0,1
   185ac:	cf0d                	beqz	a4,185e6 <__eqtf2+0xde>
   185ae:	05c2                	slli	a1,a1,0x10
   185b0:	85c1                	srai	a1,a1,0x10
   185b2:	0205dc63          	bgez	a1,185ea <__eqtf2+0xe2>
   185b6:	4505                	li	a0,1
   185b8:	a03d                	j	185e6 <__eqtf2+0xde>
   185ba:	4505                	li	a0,1
   185bc:	02c69563          	bne	a3,a2,185e6 <__eqtf2+0xde>
   185c0:	02e79363          	bne	a5,a4,185e6 <__eqtf2+0xde>
   185c4:	03fe1163          	bne	t3,t6,185e6 <__eqtf2+0xde>
   185c8:	01ee9f63          	bne	t4,t5,185e6 <__eqtf2+0xde>
   185cc:	00b31d63          	bne	t1,a1,185e6 <__eqtf2+0xde>
   185d0:	03180063          	beq	a6,a7,185f0 <__eqtf2+0xe8>
   185d4:	ea89                	bnez	a3,185e6 <__eqtf2+0xde>
   185d6:	01c7e533          	or	a0,a5,t3
   185da:	01d56533          	or	a0,a0,t4
   185de:	00656533          	or	a0,a0,t1
   185e2:	00a03533          	snez	a0,a0
   185e6:	0141                	addi	sp,sp,16
   185e8:	8082                	ret
   185ea:	00186073          	csrsi	fflags,16
   185ee:	b7e1                	j	185b6 <__eqtf2+0xae>
   185f0:	4501                	li	a0,0
   185f2:	bfd5                	j	185e6 <__eqtf2+0xde>

000185f4 <__getf2>:
   185f4:	00052883          	lw	a7,0(a0)
   185f8:	00452303          	lw	t1,4(a0)
   185fc:	00852e03          	lw	t3,8(a0)
   18600:	455c                	lw	a5,12(a0)
   18602:	0005ae83          	lw	t4,0(a1)
   18606:	0045af03          	lw	t5,4(a1)
   1860a:	0085af83          	lw	t6,8(a1)
   1860e:	45d4                	lw	a3,12(a1)
   18610:	1141                	addi	sp,sp,-16
   18612:	00202773          	frrm	a4
   18616:	6721                	lui	a4,0x8
   18618:	0107d613          	srli	a2,a5,0x10
   1861c:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1861e:	01079813          	slli	a6,a5,0x10
   18622:	01069293          	slli	t0,a3,0x10
   18626:	0106d513          	srli	a0,a3,0x10
   1862a:	8e79                	and	a2,a2,a4
   1862c:	01085813          	srli	a6,a6,0x10
   18630:	83fd                	srli	a5,a5,0x1f
   18632:	0102d293          	srli	t0,t0,0x10
   18636:	8d79                	and	a0,a0,a4
   18638:	82fd                	srli	a3,a3,0x1f
   1863a:	00e61963          	bne	a2,a4,1864c <__getf2+0x58>
   1863e:	01136733          	or	a4,t1,a7
   18642:	01c76733          	or	a4,a4,t3
   18646:	01076733          	or	a4,a4,a6
   1864a:	ef35                	bnez	a4,186c6 <__getf2+0xd2>
   1864c:	6721                	lui	a4,0x8
   1864e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18650:	00e51963          	bne	a0,a4,18662 <__getf2+0x6e>
   18654:	01eee733          	or	a4,t4,t5
   18658:	01f76733          	or	a4,a4,t6
   1865c:	00576733          	or	a4,a4,t0
   18660:	e33d                	bnez	a4,186c6 <__getf2+0xd2>
   18662:	4701                	li	a4,0
   18664:	ea09                	bnez	a2,18676 <__getf2+0x82>
   18666:	01136733          	or	a4,t1,a7
   1866a:	01c76733          	or	a4,a4,t3
   1866e:	01076733          	or	a4,a4,a6
   18672:	00173713          	seqz	a4,a4
   18676:	ed21                	bnez	a0,186ce <__getf2+0xda>
   18678:	01eee5b3          	or	a1,t4,t5
   1867c:	01f5e5b3          	or	a1,a1,t6
   18680:	0055e5b3          	or	a1,a1,t0
   18684:	c711                	beqz	a4,18690 <__getf2+0x9c>
   18686:	c981                	beqz	a1,18696 <__getf2+0xa2>
   18688:	4505                	li	a0,1
   1868a:	e691                	bnez	a3,18696 <__getf2+0xa2>
   1868c:	557d                	li	a0,-1
   1868e:	a021                	j	18696 <__getf2+0xa2>
   18690:	e1a1                	bnez	a1,186d0 <__getf2+0xdc>
   18692:	557d                	li	a0,-1
   18694:	c7a1                	beqz	a5,186dc <__getf2+0xe8>
   18696:	0141                	addi	sp,sp,16
   18698:	8082                	ret
   1869a:	fea647e3          	blt	a2,a0,18688 <__getf2+0x94>
   1869e:	ff02eae3          	bltu	t0,a6,18692 <__getf2+0x9e>
   186a2:	00581f63          	bne	a6,t0,186c0 <__getf2+0xcc>
   186a6:	ffcfe6e3          	bltu	t6,t3,18692 <__getf2+0x9e>
   186aa:	01fe1b63          	bne	t3,t6,186c0 <__getf2+0xcc>
   186ae:	fe6f62e3          	bltu	t5,t1,18692 <__getf2+0x9e>
   186b2:	01e31763          	bne	t1,t5,186c0 <__getf2+0xcc>
   186b6:	fd1eeee3          	bltu	t4,a7,18692 <__getf2+0x9e>
   186ba:	4501                	li	a0,0
   186bc:	fdd8fde3          	bgeu	a7,t4,18696 <__getf2+0xa2>
   186c0:	4505                	li	a0,1
   186c2:	fbf1                	bnez	a5,18696 <__getf2+0xa2>
   186c4:	b7e1                	j	1868c <__getf2+0x98>
   186c6:	00186073          	csrsi	fflags,16
   186ca:	5579                	li	a0,-2
   186cc:	b7e9                	j	18696 <__getf2+0xa2>
   186ce:	ff4d                	bnez	a4,18688 <__getf2+0x94>
   186d0:	fcf691e3          	bne	a3,a5,18692 <__getf2+0x9e>
   186d4:	fcc553e3          	bge	a0,a2,1869a <__getf2+0xa6>
   186d8:	557d                	li	a0,-1
   186da:	fed5                	bnez	a3,18696 <__getf2+0xa2>
   186dc:	4505                	li	a0,1
   186de:	bf65                	j	18696 <__getf2+0xa2>

000186e0 <__letf2>:
   186e0:	00052883          	lw	a7,0(a0)
   186e4:	00452303          	lw	t1,4(a0)
   186e8:	00852e03          	lw	t3,8(a0)
   186ec:	455c                	lw	a5,12(a0)
   186ee:	0005ae83          	lw	t4,0(a1)
   186f2:	0045af03          	lw	t5,4(a1)
   186f6:	0085af83          	lw	t6,8(a1)
   186fa:	45d4                	lw	a3,12(a1)
   186fc:	1141                	addi	sp,sp,-16
   186fe:	00202773          	frrm	a4
   18702:	6721                	lui	a4,0x8
   18704:	0107d613          	srli	a2,a5,0x10
   18708:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1870a:	01079813          	slli	a6,a5,0x10
   1870e:	01069293          	slli	t0,a3,0x10
   18712:	0106d513          	srli	a0,a3,0x10
   18716:	8e79                	and	a2,a2,a4
   18718:	01085813          	srli	a6,a6,0x10
   1871c:	83fd                	srli	a5,a5,0x1f
   1871e:	0102d293          	srli	t0,t0,0x10
   18722:	8d79                	and	a0,a0,a4
   18724:	82fd                	srli	a3,a3,0x1f
   18726:	00e61963          	bne	a2,a4,18738 <__letf2+0x58>
   1872a:	01136733          	or	a4,t1,a7
   1872e:	01c76733          	or	a4,a4,t3
   18732:	01076733          	or	a4,a4,a6
   18736:	ef35                	bnez	a4,187b2 <__letf2+0xd2>
   18738:	6721                	lui	a4,0x8
   1873a:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1873c:	00e51963          	bne	a0,a4,1874e <__letf2+0x6e>
   18740:	01eee733          	or	a4,t4,t5
   18744:	01f76733          	or	a4,a4,t6
   18748:	00576733          	or	a4,a4,t0
   1874c:	e33d                	bnez	a4,187b2 <__letf2+0xd2>
   1874e:	4701                	li	a4,0
   18750:	ea09                	bnez	a2,18762 <__letf2+0x82>
   18752:	01136733          	or	a4,t1,a7
   18756:	01c76733          	or	a4,a4,t3
   1875a:	01076733          	or	a4,a4,a6
   1875e:	00173713          	seqz	a4,a4
   18762:	ed21                	bnez	a0,187ba <__letf2+0xda>
   18764:	01eee5b3          	or	a1,t4,t5
   18768:	01f5e5b3          	or	a1,a1,t6
   1876c:	0055e5b3          	or	a1,a1,t0
   18770:	c711                	beqz	a4,1877c <__letf2+0x9c>
   18772:	c981                	beqz	a1,18782 <__letf2+0xa2>
   18774:	4505                	li	a0,1
   18776:	e691                	bnez	a3,18782 <__letf2+0xa2>
   18778:	557d                	li	a0,-1
   1877a:	a021                	j	18782 <__letf2+0xa2>
   1877c:	e1a1                	bnez	a1,187bc <__letf2+0xdc>
   1877e:	557d                	li	a0,-1
   18780:	c7a1                	beqz	a5,187c8 <__letf2+0xe8>
   18782:	0141                	addi	sp,sp,16
   18784:	8082                	ret
   18786:	fea647e3          	blt	a2,a0,18774 <__letf2+0x94>
   1878a:	ff02eae3          	bltu	t0,a6,1877e <__letf2+0x9e>
   1878e:	00581f63          	bne	a6,t0,187ac <__letf2+0xcc>
   18792:	ffcfe6e3          	bltu	t6,t3,1877e <__letf2+0x9e>
   18796:	01fe1b63          	bne	t3,t6,187ac <__letf2+0xcc>
   1879a:	fe6f62e3          	bltu	t5,t1,1877e <__letf2+0x9e>
   1879e:	01e31763          	bne	t1,t5,187ac <__letf2+0xcc>
   187a2:	fd1eeee3          	bltu	t4,a7,1877e <__letf2+0x9e>
   187a6:	4501                	li	a0,0
   187a8:	fdd8fde3          	bgeu	a7,t4,18782 <__letf2+0xa2>
   187ac:	4505                	li	a0,1
   187ae:	fbf1                	bnez	a5,18782 <__letf2+0xa2>
   187b0:	b7e1                	j	18778 <__letf2+0x98>
   187b2:	00186073          	csrsi	fflags,16
   187b6:	4509                	li	a0,2
   187b8:	b7e9                	j	18782 <__letf2+0xa2>
   187ba:	ff4d                	bnez	a4,18774 <__letf2+0x94>
   187bc:	fcf691e3          	bne	a3,a5,1877e <__letf2+0x9e>
   187c0:	fcc553e3          	bge	a0,a2,18786 <__letf2+0xa6>
   187c4:	557d                	li	a0,-1
   187c6:	fed5                	bnez	a3,18782 <__letf2+0xa2>
   187c8:	4505                	li	a0,1
   187ca:	bf65                	j	18782 <__letf2+0xa2>

000187cc <__multf3>:
   187cc:	7131                	addi	sp,sp,-192
   187ce:	d552                	sw	s4,168(sp)
   187d0:	d356                	sw	s5,164(sp)
   187d2:	d15a                	sw	s6,160(sp)
   187d4:	cf5e                	sw	s7,156(sp)
   187d6:	c62a                	sw	a0,12(sp)
   187d8:	419c                	lw	a5,0(a1)
   187da:	41c8                	lw	a0,4(a1)
   187dc:	4594                	lw	a3,8(a1)
   187de:	45d8                	lw	a4,12(a1)
   187e0:	00062a83          	lw	s5,0(a2)
   187e4:	00462b83          	lw	s7,4(a2)
   187e8:	00862b03          	lw	s6,8(a2)
   187ec:	00c62a03          	lw	s4,12(a2)
   187f0:	df06                	sw	ra,188(sp)
   187f2:	dd22                	sw	s0,184(sp)
   187f4:	db26                	sw	s1,180(sp)
   187f6:	d94a                	sw	s2,176(sp)
   187f8:	d74e                	sw	s3,172(sp)
   187fa:	cd62                	sw	s8,152(sp)
   187fc:	cb66                	sw	s9,148(sp)
   187fe:	c96a                	sw	s10,144(sp)
   18800:	c76e                	sw	s11,140(sp)
   18802:	002024f3          	frrm	s1
   18806:	6621                	lui	a2,0x8
   18808:	01071413          	slli	s0,a4,0x10
   1880c:	8041                	srli	s0,s0,0x10
   1880e:	01075913          	srli	s2,a4,0x10
   18812:	167d                	addi	a2,a2,-1 # 7fff <exit-0x8095>
   18814:	d0be                	sw	a5,96(sp)
   18816:	d2aa                	sw	a0,100(sp)
   18818:	d4b6                	sw	a3,104(sp)
   1881a:	d6ba                	sw	a4,108(sp)
   1881c:	d83e                	sw	a5,48(sp)
   1881e:	da2a                	sw	a0,52(sp)
   18820:	dc36                	sw	a3,56(sp)
   18822:	de22                	sw	s0,60(sp)
   18824:	00c97933          	and	s2,s2,a2
   18828:	01f75993          	srli	s3,a4,0x1f
   1882c:	02090a63          	beqz	s2,18860 <__multf3+0x94>
   18830:	10c90d63          	beq	s2,a2,1894a <__multf3+0x17e>
   18834:	6741                	lui	a4,0x10
   18836:	8c59                	or	s0,s0,a4
   18838:	de22                	sw	s0,60(sp)
   1883a:	1818                	addi	a4,sp,48
   1883c:	104c                	addi	a1,sp,36
   1883e:	4754                	lw	a3,12(a4)
   18840:	4710                	lw	a2,8(a4)
   18842:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   18844:	068e                	slli	a3,a3,0x3
   18846:	8275                	srli	a2,a2,0x1d
   18848:	8ed1                	or	a3,a3,a2
   1884a:	cb14                	sw	a3,16(a4)
   1884c:	fee599e3          	bne	a1,a4,1883e <__multf3+0x72>
   18850:	078e                	slli	a5,a5,0x3
   18852:	d83e                	sw	a5,48(sp)
   18854:	77f1                	lui	a5,0xffffc
   18856:	0785                	addi	a5,a5,1 # ffffc001 <__BSS_END__+0xfffdf355>
   18858:	993e                	add	s2,s2,a5
   1885a:	4c01                	li	s8,0
   1885c:	4401                	li	s0,0
   1885e:	a211                	j	18962 <__multf3+0x196>
   18860:	00a7e733          	or	a4,a5,a0
   18864:	8f55                	or	a4,a4,a3
   18866:	8f41                	or	a4,a4,s0
   18868:	70070d63          	beqz	a4,18f82 <__multf3+0x7b6>
   1886c:	cc2d                	beqz	s0,188e6 <__multf3+0x11a>
   1886e:	8522                	mv	a0,s0
   18870:	108020ef          	jal	1a978 <__clzsi2>
   18874:	ff450693          	addi	a3,a0,-12
   18878:	4056d793          	srai	a5,a3,0x5
   1887c:	8afd                	andi	a3,a3,31
   1887e:	c6d9                	beqz	a3,1890c <__multf3+0x140>
   18880:	5671                	li	a2,-4
   18882:	02c78633          	mul	a2,a5,a2
   18886:	02000813          	li	a6,32
   1888a:	03010313          	addi	t1,sp,48
   1888e:	40d80833          	sub	a6,a6,a3
   18892:	00c60713          	addi	a4,a2,12
   18896:	971a                	add	a4,a4,t1
   18898:	40c00633          	neg	a2,a2
   1889c:	08e31863          	bne	t1,a4,1892c <__multf3+0x160>
   188a0:	fff78713          	addi	a4,a5,-1
   188a4:	078a                	slli	a5,a5,0x2
   188a6:	1810                	addi	a2,sp,48
   188a8:	05078793          	addi	a5,a5,80
   188ac:	97b2                	add	a5,a5,a2
   188ae:	5642                	lw	a2,48(sp)
   188b0:	00d616b3          	sll	a3,a2,a3
   188b4:	fad7a823          	sw	a3,-80(a5)
   188b8:	00170793          	addi	a5,a4,1
   188bc:	078a                	slli	a5,a5,0x2
   188be:	46a1                	li	a3,8
   188c0:	1818                	addi	a4,sp,48
   188c2:	00d7e863          	bltu	a5,a3,188d2 <__multf3+0x106>
   188c6:	00072023          	sw	zero,0(a4)
   188ca:	00072223          	sw	zero,4(a4)
   188ce:	17e1                	addi	a5,a5,-8
   188d0:	1838                	addi	a4,sp,56
   188d2:	4691                	li	a3,4
   188d4:	00d7e463          	bltu	a5,a3,188dc <__multf3+0x110>
   188d8:	00072023          	sw	zero,0(a4)
   188dc:	7971                	lui	s2,0xffffc
   188de:	0945                	addi	s2,s2,17 # ffffc011 <__BSS_END__+0xfffdf365>
   188e0:	40a90933          	sub	s2,s2,a0
   188e4:	bf9d                	j	1885a <__multf3+0x8e>
   188e6:	c699                	beqz	a3,188f4 <__multf3+0x128>
   188e8:	8536                	mv	a0,a3
   188ea:	08e020ef          	jal	1a978 <__clzsi2>
   188ee:	02050513          	addi	a0,a0,32
   188f2:	b749                	j	18874 <__multf3+0xa8>
   188f4:	c511                	beqz	a0,18900 <__multf3+0x134>
   188f6:	082020ef          	jal	1a978 <__clzsi2>
   188fa:	04050513          	addi	a0,a0,64
   188fe:	bf9d                	j	18874 <__multf3+0xa8>
   18900:	853e                	mv	a0,a5
   18902:	076020ef          	jal	1a978 <__clzsi2>
   18906:	06050513          	addi	a0,a0,96
   1890a:	b7ad                	j	18874 <__multf3+0xa8>
   1890c:	5671                	li	a2,-4
   1890e:	02c78633          	mul	a2,a5,a2
   18912:	1878                	addi	a4,sp,60
   18914:	468d                	li	a3,3
   18916:	00c705b3          	add	a1,a4,a2
   1891a:	418c                	lw	a1,0(a1)
   1891c:	16fd                	addi	a3,a3,-1
   1891e:	1771                	addi	a4,a4,-4
   18920:	c34c                	sw	a1,4(a4)
   18922:	fef6dae3          	bge	a3,a5,18916 <__multf3+0x14a>
   18926:	fff78713          	addi	a4,a5,-1
   1892a:	b779                	j	188b8 <__multf3+0xec>
   1892c:	430c                	lw	a1,0(a4)
   1892e:	ffc72883          	lw	a7,-4(a4)
   18932:	00c70e33          	add	t3,a4,a2
   18936:	00d595b3          	sll	a1,a1,a3
   1893a:	0108d8b3          	srl	a7,a7,a6
   1893e:	0115e5b3          	or	a1,a1,a7
   18942:	00be2023          	sw	a1,0(t3)
   18946:	1771                	addi	a4,a4,-4
   18948:	bf91                	j	1889c <__multf3+0xd0>
   1894a:	8fc9                	or	a5,a5,a0
   1894c:	8fd5                	or	a5,a5,a3
   1894e:	8fc1                	or	a5,a5,s0
   18950:	62078c63          	beqz	a5,18f88 <__multf3+0x7bc>
   18954:	0442                	slli	s0,s0,0x10
   18956:	8441                	srai	s0,s0,0x10
   18958:	fff44413          	not	s0,s0
   1895c:	807d                	srli	s0,s0,0x1f
   1895e:	0412                	slli	s0,s0,0x4
   18960:	4c0d                	li	s8,3
   18962:	010a1513          	slli	a0,s4,0x10
   18966:	6721                	lui	a4,0x8
   18968:	010a5793          	srli	a5,s4,0x10
   1896c:	8141                	srli	a0,a0,0x10
   1896e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   18970:	d6d2                	sw	s4,108(sp)
   18972:	d0d6                	sw	s5,96(sp)
   18974:	d2de                	sw	s7,100(sp)
   18976:	d4da                	sw	s6,104(sp)
   18978:	c0d6                	sw	s5,64(sp)
   1897a:	c2de                	sw	s7,68(sp)
   1897c:	c4da                	sw	s6,72(sp)
   1897e:	c6aa                	sw	a0,76(sp)
   18980:	8ff9                	and	a5,a5,a4
   18982:	01fa5a13          	srli	s4,s4,0x1f
   18986:	60078363          	beqz	a5,18f8c <__multf3+0x7c0>
   1898a:	6ee78863          	beq	a5,a4,1907a <__multf3+0x8ae>
   1898e:	6741                	lui	a4,0x10
   18990:	8d59                	or	a0,a0,a4
   18992:	c6aa                	sw	a0,76(sp)
   18994:	0098                	addi	a4,sp,64
   18996:	184c                	addi	a1,sp,52
   18998:	4754                	lw	a3,12(a4)
   1899a:	4710                	lw	a2,8(a4)
   1899c:	1771                	addi	a4,a4,-4 # fffc <exit-0x98>
   1899e:	068e                	slli	a3,a3,0x3
   189a0:	8275                	srli	a2,a2,0x1d
   189a2:	8ed1                	or	a3,a3,a2
   189a4:	cb14                	sw	a3,16(a4)
   189a6:	fee599e3          	bne	a1,a4,18998 <__multf3+0x1cc>
   189aa:	7771                	lui	a4,0xffffc
   189ac:	0a8e                	slli	s5,s5,0x3
   189ae:	0705                	addi	a4,a4,1 # ffffc001 <__BSS_END__+0xfffdf355>
   189b0:	c0d6                	sw	s5,64(sp)
   189b2:	97ba                	add	a5,a5,a4
   189b4:	4681                	li	a3,0
   189b6:	97ca                	add	a5,a5,s2
   189b8:	ca3e                	sw	a5,20(sp)
   189ba:	0785                	addi	a5,a5,1
   189bc:	c83e                	sw	a5,16(sp)
   189be:	002c1793          	slli	a5,s8,0x2
   189c2:	8fd5                	or	a5,a5,a3
   189c4:	4729                	li	a4,10
   189c6:	70f74363          	blt	a4,a5,190cc <__multf3+0x900>
   189ca:	4609                	li	a2,2
   189cc:	0149c733          	xor	a4,s3,s4
   189d0:	6cf64863          	blt	a2,a5,190a0 <__multf3+0x8d4>
   189d4:	17fd                	addi	a5,a5,-1
   189d6:	4605                	li	a2,1
   189d8:	70f67263          	bgeu	a2,a5,190dc <__multf3+0x910>
   189dc:	5542                	lw	a0,48(sp)
   189de:	4306                	lw	t1,64(sp)
   189e0:	6841                	lui	a6,0x10
   189e2:	fff80593          	addi	a1,a6,-1 # ffff <exit-0x95>
   189e6:	01055913          	srli	s2,a0,0x10
   189ea:	01035393          	srli	t2,t1,0x10
   189ee:	8d6d                	and	a0,a0,a1
   189f0:	00b37333          	and	t1,t1,a1
   189f4:	02a30633          	mul	a2,t1,a0
   189f8:	026908b3          	mul	a7,s2,t1
   189fc:	01065793          	srli	a5,a2,0x10
   18a00:	02a386b3          	mul	a3,t2,a0
   18a04:	96c6                	add	a3,a3,a7
   18a06:	97b6                	add	a5,a5,a3
   18a08:	02790bb3          	mul	s7,s2,t2
   18a0c:	0117f363          	bgeu	a5,a7,18a12 <__multf3+0x246>
   18a10:	9bc2                	add	s7,s7,a6
   18a12:	4896                	lw	a7,68(sp)
   18a14:	0107d693          	srli	a3,a5,0x10
   18a18:	8fed                	and	a5,a5,a1
   18a1a:	8e6d                	and	a2,a2,a1
   18a1c:	07c2                	slli	a5,a5,0x10
   18a1e:	97b2                	add	a5,a5,a2
   18a20:	0108df93          	srli	t6,a7,0x10
   18a24:	00b8f8b3          	and	a7,a7,a1
   18a28:	031905b3          	mul	a1,s2,a7
   18a2c:	d03e                	sw	a5,32(sp)
   18a2e:	d0be                	sw	a5,96(sp)
   18a30:	02af8633          	mul	a2,t6,a0
   18a34:	02a887b3          	mul	a5,a7,a0
   18a38:	962e                	add	a2,a2,a1
   18a3a:	0107d813          	srli	a6,a5,0x10
   18a3e:	9832                	add	a6,a6,a2
   18a40:	03f90b33          	mul	s6,s2,t6
   18a44:	00b87463          	bgeu	a6,a1,18a4c <__multf3+0x280>
   18a48:	6641                	lui	a2,0x10
   18a4a:	9b32                	add	s6,s6,a2
   18a4c:	01085613          	srli	a2,a6,0x10
   18a50:	55d2                	lw	a1,52(sp)
   18a52:	cc32                	sw	a2,24(sp)
   18a54:	6641                	lui	a2,0x10
   18a56:	fff60e93          	addi	t4,a2,-1 # ffff <exit-0x95>
   18a5a:	01d87833          	and	a6,a6,t4
   18a5e:	01d7f7b3          	and	a5,a5,t4
   18a62:	0105d293          	srli	t0,a1,0x10
   18a66:	0842                	slli	a6,a6,0x10
   18a68:	01d5f5b3          	and	a1,a1,t4
   18a6c:	983e                	add	a6,a6,a5
   18a6e:	02628a33          	mul	s4,t0,t1
   18a72:	96c2                	add	a3,a3,a6
   18a74:	026587b3          	mul	a5,a1,t1
   18a78:	02b38eb3          	mul	t4,t2,a1
   18a7c:	0107d993          	srli	s3,a5,0x10
   18a80:	9ed2                	add	t4,t4,s4
   18a82:	99f6                	add	s3,s3,t4
   18a84:	02538f33          	mul	t5,t2,t0
   18a88:	0149f363          	bgeu	s3,s4,18a8e <__multf3+0x2c2>
   18a8c:	9f32                	add	t5,t5,a2
   18a8e:	6c41                	lui	s8,0x10
   18a90:	fffc0613          	addi	a2,s8,-1 # ffff <exit-0x95>
   18a94:	8ff1                	and	a5,a5,a2
   18a96:	0109da13          	srli	s4,s3,0x10
   18a9a:	00c9f9b3          	and	s3,s3,a2
   18a9e:	09c2                	slli	s3,s3,0x10
   18aa0:	99be                	add	s3,s3,a5
   18aa2:	02b88eb3          	mul	t4,a7,a1
   18aa6:	9a7a                	add	s4,s4,t5
   18aa8:	03128633          	mul	a2,t0,a7
   18aac:	010ed793          	srli	a5,t4,0x10
   18ab0:	02bf8ab3          	mul	s5,t6,a1
   18ab4:	9ab2                	add	s5,s5,a2
   18ab6:	97d6                	add	a5,a5,s5
   18ab8:	025f8f33          	mul	t5,t6,t0
   18abc:	00c7f363          	bgeu	a5,a2,18ac2 <__multf3+0x2f6>
   18ac0:	9f62                	add	t5,t5,s8
   18ac2:	0107d613          	srli	a2,a5,0x10
   18ac6:	967a                	add	a2,a2,t5
   18ac8:	6ac1                	lui	s5,0x10
   18aca:	ce32                	sw	a2,28(sp)
   18acc:	fffa8613          	addi	a2,s5,-1 # ffff <exit-0x95>
   18ad0:	8ff1                	and	a5,a5,a2
   18ad2:	00cefeb3          	and	t4,t4,a2
   18ad6:	07c2                	slli	a5,a5,0x10
   18ad8:	97f6                	add	a5,a5,t4
   18ada:	d23e                	sw	a5,36(sp)
   18adc:	47a6                	lw	a5,72(sp)
   18ade:	0107dd93          	srli	s11,a5,0x10
   18ae2:	00c7fd33          	and	s10,a5,a2
   18ae6:	02ad0633          	mul	a2,s10,a0
   18aea:	03a90c33          	mul	s8,s2,s10
   18aee:	01065793          	srli	a5,a2,0x10
   18af2:	02ad8f33          	mul	t5,s11,a0
   18af6:	9f62                	add	t5,t5,s8
   18af8:	97fa                	add	a5,a5,t5
   18afa:	03b90eb3          	mul	t4,s2,s11
   18afe:	0187f363          	bgeu	a5,s8,18b04 <__multf3+0x338>
   18b02:	9ed6                	add	t4,t4,s5
   18b04:	0107df13          	srli	t5,a5,0x10
   18b08:	6cc1                	lui	s9,0x10
   18b0a:	01df0e33          	add	t3,t5,t4
   18b0e:	fffc8e93          	addi	t4,s9,-1 # ffff <exit-0x95>
   18b12:	01d7f7b3          	and	a5,a5,t4
   18b16:	01d67633          	and	a2,a2,t4
   18b1a:	07c2                	slli	a5,a5,0x10
   18b1c:	97b2                	add	a5,a5,a2
   18b1e:	5662                	lw	a2,56(sp)
   18b20:	d472                	sw	t3,40(sp)
   18b22:	d63e                	sw	a5,44(sp)
   18b24:	01065f13          	srli	t5,a2,0x10
   18b28:	01d67633          	and	a2,a2,t4
   18b2c:	02660ab3          	mul	s5,a2,t1
   18b30:	026f0e33          	mul	t3,t5,t1
   18b34:	010ad793          	srli	a5,s5,0x10
   18b38:	02c38eb3          	mul	t4,t2,a2
   18b3c:	9ef2                	add	t4,t4,t3
   18b3e:	9ebe                	add	t4,t4,a5
   18b40:	03e38c33          	mul	s8,t2,t5
   18b44:	01cef363          	bgeu	t4,t3,18b4a <__multf3+0x37e>
   18b48:	9c66                	add	s8,s8,s9
   18b4a:	47e2                	lw	a5,24(sp)
   18b4c:	96de                	add	a3,a3,s7
   18b4e:	0106b833          	sltu	a6,a3,a6
   18b52:	010edc93          	srli	s9,t4,0x10
   18b56:	6e41                	lui	t3,0x10
   18b58:	9c66                	add	s8,s8,s9
   18b5a:	fffe0c93          	addi	s9,t3,-1 # ffff <exit-0x95>
   18b5e:	01078e33          	add	t3,a5,a6
   18b62:	013687b3          	add	a5,a3,s3
   18b66:	9e5a                	add	t3,t3,s6
   18b68:	00d7b6b3          	sltu	a3,a5,a3
   18b6c:	cc3e                	sw	a5,24(sp)
   18b6e:	d2be                	sw	a5,100(sp)
   18b70:	5792                	lw	a5,36(sp)
   18b72:	9a72                	add	s4,s4,t3
   18b74:	96d2                	add	a3,a3,s4
   18b76:	01ca39b3          	sltu	s3,s4,t3
   18b7a:	0146ba33          	sltu	s4,a3,s4
   18b7e:	010e3e33          	sltu	t3,t3,a6
   18b82:	00f68833          	add	a6,a3,a5
   18b86:	47f2                	lw	a5,28(sp)
   18b88:	0149e9b3          	or	s3,s3,s4
   18b8c:	9e4e                	add	t3,t3,s3
   18b8e:	00fe09b3          	add	s3,t3,a5
   18b92:	57b2                	lw	a5,44(sp)
   18b94:	5a22                	lw	s4,40(sp)
   18b96:	00d836b3          	sltu	a3,a6,a3
   18b9a:	019efeb3          	and	t4,t4,s9
   18b9e:	96ce                	add	a3,a3,s3
   18ba0:	97c2                	add	a5,a5,a6
   18ba2:	0ec2                	slli	t4,t4,0x10
   18ba4:	019afab3          	and	s5,s5,s9
   18ba8:	9a36                	add	s4,s4,a3
   18baa:	0107b833          	sltu	a6,a5,a6
   18bae:	9ed6                	add	t4,t4,s5
   18bb0:	9ebe                	add	t4,t4,a5
   18bb2:	9852                	add	a6,a6,s4
   18bb4:	9c42                	add	s8,s8,a6
   18bb6:	00feb7b3          	sltu	a5,t4,a5
   18bba:	ce76                	sw	t4,28(sp)
   18bbc:	d4f6                	sw	t4,104(sp)
   18bbe:	4eb6                	lw	t4,76(sp)
   18bc0:	01c9be33          	sltu	t3,s3,t3
   18bc4:	97e2                	add	a5,a5,s8
   18bc6:	0136b9b3          	sltu	s3,a3,s3
   18bca:	00da36b3          	sltu	a3,s4,a3
   18bce:	01483a33          	sltu	s4,a6,s4
   18bd2:	013e69b3          	or	s3,t3,s3
   18bd6:	0146e6b3          	or	a3,a3,s4
   18bda:	010c3833          	sltu	a6,s8,a6
   18bde:	0187bc33          	sltu	s8,a5,s8
   18be2:	96ce                	add	a3,a3,s3
   18be4:	01886833          	or	a6,a6,s8
   18be8:	010ed993          	srli	s3,t4,0x10
   18bec:	019efeb3          	and	t4,t4,s9
   18bf0:	03d90a33          	mul	s4,s2,t4
   18bf4:	00d80e33          	add	t3,a6,a3
   18bf8:	02ae86b3          	mul	a3,t4,a0
   18bfc:	02a98533          	mul	a0,s3,a0
   18c00:	0106d813          	srli	a6,a3,0x10
   18c04:	9552                	add	a0,a0,s4
   18c06:	982a                	add	a6,a6,a0
   18c08:	03390933          	mul	s2,s2,s3
   18c0c:	01487463          	bgeu	a6,s4,18c14 <__multf3+0x448>
   18c10:	6541                	lui	a0,0x10
   18c12:	992a                	add	s2,s2,a0
   18c14:	01085513          	srli	a0,a6,0x10
   18c18:	954a                	add	a0,a0,s2
   18c1a:	5a72                	lw	s4,60(sp)
   18c1c:	6ac1                	lui	s5,0x10
   18c1e:	d22a                	sw	a0,36(sp)
   18c20:	fffa8513          	addi	a0,s5,-1 # ffff <exit-0x95>
   18c24:	00a87833          	and	a6,a6,a0
   18c28:	010a5913          	srli	s2,s4,0x10
   18c2c:	0842                	slli	a6,a6,0x10
   18c2e:	8ee9                	and	a3,a3,a0
   18c30:	00aa7a33          	and	s4,s4,a0
   18c34:	96c2                	add	a3,a3,a6
   18c36:	026a0533          	mul	a0,s4,t1
   18c3a:	d436                	sw	a3,40(sp)
   18c3c:	02690333          	mul	t1,s2,t1
   18c40:	01055693          	srli	a3,a0,0x10
   18c44:	03238833          	mul	a6,t2,s2
   18c48:	034383b3          	mul	t2,t2,s4
   18c4c:	939a                	add	t2,t2,t1
   18c4e:	969e                	add	a3,a3,t2
   18c50:	0066f363          	bgeu	a3,t1,18c56 <__multf3+0x48a>
   18c54:	9856                	add	a6,a6,s5
   18c56:	0106da93          	srli	s5,a3,0x10
   18c5a:	6bc1                	lui	s7,0x10
   18c5c:	9ac2                	add	s5,s5,a6
   18c5e:	fffb8813          	addi	a6,s7,-1 # ffff <exit-0x95>
   18c62:	01057533          	and	a0,a0,a6
   18c66:	0106f6b3          	and	a3,a3,a6
   18c6a:	03a28333          	mul	t1,t0,s10
   18c6e:	06c2                	slli	a3,a3,0x10
   18c70:	96aa                	add	a3,a3,a0
   18c72:	03a58833          	mul	a6,a1,s10
   18c76:	02bd83b3          	mul	t2,s11,a1
   18c7a:	01085513          	srli	a0,a6,0x10
   18c7e:	939a                	add	t2,t2,t1
   18c80:	951e                	add	a0,a0,t2
   18c82:	03b28b33          	mul	s6,t0,s11
   18c86:	00657363          	bgeu	a0,t1,18c8c <__multf3+0x4c0>
   18c8a:	9b5e                	add	s6,s6,s7
   18c8c:	6c41                	lui	s8,0x10
   18c8e:	fffc0313          	addi	t1,s8,-1 # ffff <exit-0x95>
   18c92:	01055393          	srli	t2,a0,0x10
   18c96:	00657533          	and	a0,a0,t1
   18c9a:	00687833          	and	a6,a6,t1
   18c9e:	0542                	slli	a0,a0,0x10
   18ca0:	93da                	add	t2,t2,s6
   18ca2:	02cf8333          	mul	t1,t6,a2
   18ca6:	9542                	add	a0,a0,a6
   18ca8:	031f0b33          	mul	s6,t5,a7
   18cac:	02c88833          	mul	a6,a7,a2
   18cb0:	935a                	add	t1,t1,s6
   18cb2:	01085c93          	srli	s9,a6,0x10
   18cb6:	9366                	add	t1,t1,s9
   18cb8:	03ef8bb3          	mul	s7,t6,t5
   18cbc:	01637363          	bgeu	t1,s6,18cc2 <__multf3+0x4f6>
   18cc0:	9be2                	add	s7,s7,s8
   18cc2:	01035b13          	srli	s6,t1,0x10
   18cc6:	9b5e                	add	s6,s6,s7
   18cc8:	6bc1                	lui	s7,0x10
   18cca:	fffb8c13          	addi	s8,s7,-1 # ffff <exit-0x95>
   18cce:	01837333          	and	t1,t1,s8
   18cd2:	0342                	slli	t1,t1,0x10
   18cd4:	01887833          	and	a6,a6,s8
   18cd8:	981a                	add	a6,a6,t1
   18cda:	5322                	lw	t1,40(sp)
   18cdc:	5c12                	lw	s8,36(sp)
   18cde:	933e                	add	t1,t1,a5
   18ce0:	9c72                	add	s8,s8,t3
   18ce2:	00f337b3          	sltu	a5,t1,a5
   18ce6:	97e2                	add	a5,a5,s8
   18ce8:	969a                	add	a3,a3,t1
   18cea:	9abe                	add	s5,s5,a5
   18cec:	0066b333          	sltu	t1,a3,t1
   18cf0:	9356                	add	t1,t1,s5
   18cf2:	9536                	add	a0,a0,a3
   18cf4:	939a                	add	t2,t2,t1
   18cf6:	00d536b3          	sltu	a3,a0,a3
   18cfa:	969e                	add	a3,a3,t2
   18cfc:	982a                	add	a6,a6,a0
   18cfe:	01cc3e33          	sltu	t3,s8,t3
   18d02:	9b36                	add	s6,s6,a3
   18d04:	0187bc33          	sltu	s8,a5,s8
   18d08:	00a83533          	sltu	a0,a6,a0
   18d0c:	00fab7b3          	sltu	a5,s5,a5
   18d10:	01533ab3          	sltu	s5,t1,s5
   18d14:	018e6c33          	or	s8,t3,s8
   18d18:	0157e7b3          	or	a5,a5,s5
   18d1c:	0063b333          	sltu	t1,t2,t1
   18d20:	955a                	add	a0,a0,s6
   18d22:	0076b3b3          	sltu	t2,a3,t2
   18d26:	97e2                	add	a5,a5,s8
   18d28:	00736333          	or	t1,t1,t2
   18d2c:	00db36b3          	sltu	a3,s6,a3
   18d30:	01653b33          	sltu	s6,a0,s6
   18d34:	00f303b3          	add	t2,t1,a5
   18d38:	0166e6b3          	or	a3,a3,s6
   18d3c:	00768333          	add	t1,a3,t2
   18d40:	03af0e33          	mul	t3,t5,s10
   18d44:	d6c2                	sw	a6,108(sp)
   18d46:	03a606b3          	mul	a3,a2,s10
   18d4a:	02cd8ab3          	mul	s5,s11,a2
   18d4e:	0106d793          	srli	a5,a3,0x10
   18d52:	9af2                	add	s5,s5,t3
   18d54:	97d6                	add	a5,a5,s5
   18d56:	03ed83b3          	mul	t2,s11,t5
   18d5a:	01c7f363          	bgeu	a5,t3,18d60 <__multf3+0x594>
   18d5e:	93de                	add	t2,t2,s7
   18d60:	0107de13          	srli	t3,a5,0x10
   18d64:	6ac1                	lui	s5,0x10
   18d66:	9e1e                	add	t3,t3,t2
   18d68:	fffa8393          	addi	t2,s5,-1 # ffff <exit-0x95>
   18d6c:	0077f7b3          	and	a5,a5,t2
   18d70:	0076f6b3          	and	a3,a3,t2
   18d74:	07c2                	slli	a5,a5,0x10
   18d76:	03d28b33          	mul	s6,t0,t4
   18d7a:	97b6                	add	a5,a5,a3
   18d7c:	02be86b3          	mul	a3,t4,a1
   18d80:	02b985b3          	mul	a1,s3,a1
   18d84:	0106d393          	srli	t2,a3,0x10
   18d88:	95da                	add	a1,a1,s6
   18d8a:	93ae                	add	t2,t2,a1
   18d8c:	033282b3          	mul	t0,t0,s3
   18d90:	0163f363          	bgeu	t2,s6,18d96 <__multf3+0x5ca>
   18d94:	92d6                	add	t0,t0,s5
   18d96:	0103d593          	srli	a1,t2,0x10
   18d9a:	6b41                	lui	s6,0x10
   18d9c:	92ae                	add	t0,t0,a1
   18d9e:	fffb0593          	addi	a1,s6,-1 # ffff <exit-0x95>
   18da2:	8eed                	and	a3,a3,a1
   18da4:	00b3f3b3          	and	t2,t2,a1
   18da8:	03c2                	slli	t2,t2,0x10
   18daa:	031a05b3          	mul	a1,s4,a7
   18dae:	93b6                	add	t2,t2,a3
   18db0:	031908b3          	mul	a7,s2,a7
   18db4:	0105d693          	srli	a3,a1,0x10
   18db8:	032f8ab3          	mul	s5,t6,s2
   18dbc:	034f8fb3          	mul	t6,t6,s4
   18dc0:	9fc6                	add	t6,t6,a7
   18dc2:	96fe                	add	a3,a3,t6
   18dc4:	0116f363          	bgeu	a3,a7,18dca <__multf3+0x5fe>
   18dc8:	9ada                	add	s5,s5,s6
   18dca:	0106df93          	srli	t6,a3,0x10
   18dce:	68c1                	lui	a7,0x10
   18dd0:	9fd6                	add	t6,t6,s5
   18dd2:	fff88a93          	addi	s5,a7,-1 # ffff <exit-0x95>
   18dd6:	0156f6b3          	and	a3,a3,s5
   18dda:	0155f5b3          	and	a1,a1,s5
   18dde:	06c2                	slli	a3,a3,0x10
   18de0:	03df0ab3          	mul	s5,t5,t4
   18de4:	96ae                	add	a3,a3,a1
   18de6:	03d605b3          	mul	a1,a2,t4
   18dea:	02c98633          	mul	a2,s3,a2
   18dee:	01560b33          	add	s6,a2,s5
   18df2:	0105d613          	srli	a2,a1,0x10
   18df6:	965a                	add	a2,a2,s6
   18df8:	033f0f33          	mul	t5,t5,s3
   18dfc:	01567363          	bgeu	a2,s5,18e02 <__multf3+0x636>
   18e00:	9f46                	add	t5,t5,a7
   18e02:	6ac1                	lui	s5,0x10
   18e04:	01065893          	srli	a7,a2,0x10
   18e08:	fffa8b13          	addi	s6,s5,-1 # ffff <exit-0x95>
   18e0c:	9f46                	add	t5,t5,a7
   18e0e:	016678b3          	and	a7,a2,s6
   18e12:	0165f5b3          	and	a1,a1,s6
   18e16:	08c2                	slli	a7,a7,0x10
   18e18:	03aa0633          	mul	a2,s4,s10
   18e1c:	98ae                	add	a7,a7,a1
   18e1e:	03a90bb3          	mul	s7,s2,s10
   18e22:	01065c13          	srli	s8,a2,0x10
   18e26:	034d85b3          	mul	a1,s11,s4
   18e2a:	95de                	add	a1,a1,s7
   18e2c:	95e2                	add	a1,a1,s8
   18e2e:	032d8b33          	mul	s6,s11,s2
   18e32:	0175f363          	bgeu	a1,s7,18e38 <__multf3+0x66c>
   18e36:	9b56                	add	s6,s6,s5
   18e38:	97aa                	add	a5,a5,a0
   18e3a:	9e1a                	add	t3,t3,t1
   18e3c:	00a7b533          	sltu	a0,a5,a0
   18e40:	9572                	add	a0,a0,t3
   18e42:	93be                	add	t2,t2,a5
   18e44:	92aa                	add	t0,t0,a0
   18e46:	00f3b7b3          	sltu	a5,t2,a5
   18e4a:	9796                	add	a5,a5,t0
   18e4c:	006e3333          	sltu	t1,t3,t1
   18e50:	01c53e33          	sltu	t3,a0,t3
   18e54:	00a2b533          	sltu	a0,t0,a0
   18e58:	0057b2b3          	sltu	t0,a5,t0
   18e5c:	00556533          	or	a0,a0,t0
   18e60:	01c36333          	or	t1,t1,t3
   18e64:	932a                	add	t1,t1,a0
   18e66:	03da0533          	mul	a0,s4,t4
   18e6a:	969e                	add	a3,a3,t2
   18e6c:	9fbe                	add	t6,t6,a5
   18e6e:	0105da93          	srli	s5,a1,0x10
   18e72:	d8b6                	sw	a3,112(sp)
   18e74:	0076b6b3          	sltu	a3,a3,t2
   18e78:	96fe                	add	a3,a3,t6
   18e7a:	9ada                	add	s5,s5,s6
   18e7c:	6b41                	lui	s6,0x10
   18e7e:	fffb0b93          	addi	s7,s6,-1 # ffff <exit-0x95>
   18e82:	03d90eb3          	mul	t4,s2,t4
   18e86:	00ffb7b3          	sltu	a5,t6,a5
   18e8a:	01f6bfb3          	sltu	t6,a3,t6
   18e8e:	0175f5b3          	and	a1,a1,s7
   18e92:	01f7e7b3          	or	a5,a5,t6
   18e96:	98b6                	add	a7,a7,a3
   18e98:	05c2                	slli	a1,a1,0x10
   18e9a:	979a                	add	a5,a5,t1
   18e9c:	01767633          	and	a2,a2,s7
   18ea0:	9f3e                	add	t5,t5,a5
   18ea2:	03298933          	mul	s2,s3,s2
   18ea6:	962e                	add	a2,a2,a1
   18ea8:	00d8b6b3          	sltu	a3,a7,a3
   18eac:	96fa                	add	a3,a3,t5
   18eae:	9646                	add	a2,a2,a7
   18eb0:	00ff37b3          	sltu	a5,t5,a5
   18eb4:	9ab6                	add	s5,s5,a3
   18eb6:	01e6bf33          	sltu	t5,a3,t5
   18eba:	dab2                	sw	a2,116(sp)
   18ebc:	01163633          	sltu	a2,a2,a7
   18ec0:	034989b3          	mul	s3,s3,s4
   18ec4:	01e7e5b3          	or	a1,a5,t5
   18ec8:	9656                	add	a2,a2,s5
   18eca:	01055793          	srli	a5,a0,0x10
   18ece:	00dab6b3          	sltu	a3,s5,a3
   18ed2:	01563ab3          	sltu	s5,a2,s5
   18ed6:	0156e6b3          	or	a3,a3,s5
   18eda:	99f6                	add	s3,s3,t4
   18edc:	97ce                	add	a5,a5,s3
   18ede:	01d7f363          	bgeu	a5,t4,18ee4 <__multf3+0x718>
   18ee2:	995a                	add	s2,s2,s6
   18ee4:	0107d893          	srli	a7,a5,0x10
   18ee8:	95c6                	add	a1,a1,a7
   18eea:	68c1                	lui	a7,0x10
   18eec:	18fd                	addi	a7,a7,-1 # ffff <exit-0x95>
   18eee:	0117f7b3          	and	a5,a5,a7
   18ef2:	07c2                	slli	a5,a5,0x10
   18ef4:	01157533          	and	a0,a0,a7
   18ef8:	97aa                	add	a5,a5,a0
   18efa:	97b2                	add	a5,a5,a2
   18efc:	96ae                	add	a3,a3,a1
   18efe:	00c7b633          	sltu	a2,a5,a2
   18f02:	9636                	add	a2,a2,a3
   18f04:	dcbe                	sw	a5,120(sp)
   18f06:	46e2                	lw	a3,24(sp)
   18f08:	5782                	lw	a5,32(sp)
   18f0a:	964a                	add	a2,a2,s2
   18f0c:	0836                	slli	a6,a6,0xd
   18f0e:	8fd5                	or	a5,a5,a3
   18f10:	46f2                	lw	a3,28(sp)
   18f12:	deb2                	sw	a2,124(sp)
   18f14:	188c                	addi	a1,sp,112
   18f16:	8fd5                	or	a5,a5,a3
   18f18:	00f86833          	or	a6,a6,a5
   18f1c:	109c                	addi	a5,sp,96
   18f1e:	47d4                	lw	a3,12(a5)
   18f20:	4b90                	lw	a2,16(a5)
   18f22:	82cd                	srli	a3,a3,0x13
   18f24:	0636                	slli	a2,a2,0xd
   18f26:	8ed1                	or	a3,a3,a2
   18f28:	c394                	sw	a3,0(a5)
   18f2a:	0791                	addi	a5,a5,4
   18f2c:	fef599e3          	bne	a1,a5,18f1e <__multf3+0x752>
   18f30:	5786                	lw	a5,96(sp)
   18f32:	01003833          	snez	a6,a6
   18f36:	56b6                	lw	a3,108(sp)
   18f38:	00f86833          	or	a6,a6,a5
   18f3c:	57a6                	lw	a5,104(sp)
   18f3e:	ceb6                	sw	a3,92(sp)
   18f40:	c8c2                	sw	a6,80(sp)
   18f42:	ccbe                	sw	a5,88(sp)
   18f44:	5796                	lw	a5,100(sp)
   18f46:	cabe                	sw	a5,84(sp)
   18f48:	00b69793          	slli	a5,a3,0xb
   18f4c:	0207d863          	bgez	a5,18f7c <__multf3+0x7b0>
   18f50:	087e                	slli	a6,a6,0x1f
   18f52:	089c                	addi	a5,sp,80
   18f54:	08e8                	addi	a0,sp,92
   18f56:	4390                	lw	a2,0(a5)
   18f58:	43cc                	lw	a1,4(a5)
   18f5a:	8205                	srli	a2,a2,0x1
   18f5c:	05fe                	slli	a1,a1,0x1f
   18f5e:	8e4d                	or	a2,a2,a1
   18f60:	c390                	sw	a2,0(a5)
   18f62:	0791                	addi	a5,a5,4
   18f64:	fef519e3          	bne	a0,a5,18f56 <__multf3+0x78a>
   18f68:	47c6                	lw	a5,80(sp)
   18f6a:	01003833          	snez	a6,a6
   18f6e:	8285                	srli	a3,a3,0x1
   18f70:	0107e7b3          	or	a5,a5,a6
   18f74:	c8be                	sw	a5,80(sp)
   18f76:	47c2                	lw	a5,16(sp)
   18f78:	ceb6                	sw	a3,92(sp)
   18f7a:	ca3e                	sw	a5,20(sp)
   18f7c:	47d2                	lw	a5,20(sp)
   18f7e:	c83e                	sw	a5,16(sp)
   18f80:	aa41                	j	19110 <__multf3+0x944>
   18f82:	4901                	li	s2,0
   18f84:	4c05                	li	s8,1
   18f86:	b8d9                	j	1885c <__multf3+0x90>
   18f88:	4c09                	li	s8,2
   18f8a:	b8c9                	j	1885c <__multf3+0x90>
   18f8c:	017ae7b3          	or	a5,s5,s7
   18f90:	0167e7b3          	or	a5,a5,s6
   18f94:	8fc9                	or	a5,a5,a0
   18f96:	10078263          	beqz	a5,1909a <__multf3+0x8ce>
   18f9a:	c93d                	beqz	a0,19010 <__multf3+0x844>
   18f9c:	1dd010ef          	jal	1a978 <__clzsi2>
   18fa0:	ff450693          	addi	a3,a0,-12 # fff4 <exit-0xa0>
   18fa4:	4056d793          	srai	a5,a3,0x5
   18fa8:	8afd                	andi	a3,a3,31
   18faa:	cac9                	beqz	a3,1903c <__multf3+0x870>
   18fac:	5671                	li	a2,-4
   18fae:	02c78633          	mul	a2,a5,a2
   18fb2:	02000813          	li	a6,32
   18fb6:	04010313          	addi	t1,sp,64
   18fba:	40d80833          	sub	a6,a6,a3
   18fbe:	00c60713          	addi	a4,a2,12
   18fc2:	971a                	add	a4,a4,t1
   18fc4:	40c00633          	neg	a2,a2
   18fc8:	08e31a63          	bne	t1,a4,1905c <__multf3+0x890>
   18fcc:	fff78713          	addi	a4,a5,-1
   18fd0:	078a                	slli	a5,a5,0x2
   18fd2:	1810                	addi	a2,sp,48
   18fd4:	05078793          	addi	a5,a5,80
   18fd8:	97b2                	add	a5,a5,a2
   18fda:	4606                	lw	a2,64(sp)
   18fdc:	00d616b3          	sll	a3,a2,a3
   18fe0:	fcd7a023          	sw	a3,-64(a5)
   18fe4:	00170793          	addi	a5,a4,1
   18fe8:	078a                	slli	a5,a5,0x2
   18fea:	46a1                	li	a3,8
   18fec:	0098                	addi	a4,sp,64
   18fee:	00d7e863          	bltu	a5,a3,18ffe <__multf3+0x832>
   18ff2:	00072023          	sw	zero,0(a4)
   18ff6:	00072223          	sw	zero,4(a4)
   18ffa:	17e1                	addi	a5,a5,-8
   18ffc:	00b8                	addi	a4,sp,72
   18ffe:	4691                	li	a3,4
   19000:	00d7e463          	bltu	a5,a3,19008 <__multf3+0x83c>
   19004:	00072023          	sw	zero,0(a4)
   19008:	77f1                	lui	a5,0xffffc
   1900a:	07c5                	addi	a5,a5,17 # ffffc011 <__BSS_END__+0xfffdf365>
   1900c:	8f89                	sub	a5,a5,a0
   1900e:	b25d                	j	189b4 <__multf3+0x1e8>
   19010:	000b0863          	beqz	s6,19020 <__multf3+0x854>
   19014:	855a                	mv	a0,s6
   19016:	163010ef          	jal	1a978 <__clzsi2>
   1901a:	02050513          	addi	a0,a0,32
   1901e:	b749                	j	18fa0 <__multf3+0x7d4>
   19020:	000b8863          	beqz	s7,19030 <__multf3+0x864>
   19024:	855e                	mv	a0,s7
   19026:	153010ef          	jal	1a978 <__clzsi2>
   1902a:	04050513          	addi	a0,a0,64
   1902e:	bf8d                	j	18fa0 <__multf3+0x7d4>
   19030:	8556                	mv	a0,s5
   19032:	147010ef          	jal	1a978 <__clzsi2>
   19036:	06050513          	addi	a0,a0,96
   1903a:	b79d                	j	18fa0 <__multf3+0x7d4>
   1903c:	5671                	li	a2,-4
   1903e:	02c78633          	mul	a2,a5,a2
   19042:	00f8                	addi	a4,sp,76
   19044:	468d                	li	a3,3
   19046:	00c705b3          	add	a1,a4,a2
   1904a:	418c                	lw	a1,0(a1)
   1904c:	16fd                	addi	a3,a3,-1
   1904e:	1771                	addi	a4,a4,-4
   19050:	c34c                	sw	a1,4(a4)
   19052:	fef6dae3          	bge	a3,a5,19046 <__multf3+0x87a>
   19056:	fff78713          	addi	a4,a5,-1
   1905a:	b769                	j	18fe4 <__multf3+0x818>
   1905c:	430c                	lw	a1,0(a4)
   1905e:	ffc72883          	lw	a7,-4(a4)
   19062:	00c70e33          	add	t3,a4,a2
   19066:	00d595b3          	sll	a1,a1,a3
   1906a:	0108d8b3          	srl	a7,a7,a6
   1906e:	0115e5b3          	or	a1,a1,a7
   19072:	00be2023          	sw	a1,0(t3)
   19076:	1771                	addi	a4,a4,-4
   19078:	bf81                	j	18fc8 <__multf3+0x7fc>
   1907a:	017aeab3          	or	s5,s5,s7
   1907e:	016aeab3          	or	s5,s5,s6
   19082:	00aaeab3          	or	s5,s5,a0
   19086:	4689                	li	a3,2
   19088:	920a87e3          	beqz	s5,189b6 <__multf3+0x1ea>
   1908c:	0542                	slli	a0,a0,0x10
   1908e:	8541                	srai	a0,a0,0x10
   19090:	468d                	li	a3,3
   19092:	920542e3          	bltz	a0,189b6 <__multf3+0x1ea>
   19096:	4441                	li	s0,16
   19098:	ba39                	j	189b6 <__multf3+0x1ea>
   1909a:	4781                	li	a5,0
   1909c:	4685                	li	a3,1
   1909e:	ba21                	j	189b6 <__multf3+0x1ea>
   190a0:	4605                	li	a2,1
   190a2:	00f617b3          	sll	a5,a2,a5
   190a6:	5307f613          	andi	a2,a5,1328
   190aa:	e231                	bnez	a2,190ee <__multf3+0x922>
   190ac:	0887f613          	andi	a2,a5,136
   190b0:	e60d                	bnez	a2,190da <__multf3+0x90e>
   190b2:	2407f793          	andi	a5,a5,576
   190b6:	920783e3          	beqz	a5,189dc <__multf3+0x210>
   190ba:	4441                	li	s0,16
   190bc:	67a1                	lui	a5,0x8
   190be:	cebe                	sw	a5,92(sp)
   190c0:	cc82                	sw	zero,88(sp)
   190c2:	ca82                	sw	zero,84(sp)
   190c4:	c882                	sw	zero,80(sp)
   190c6:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   190c8:	4701                	li	a4,0
   190ca:	a8e1                	j	191a2 <__multf3+0x9d6>
   190cc:	473d                	li	a4,15
   190ce:	fee787e3          	beq	a5,a4,190bc <__multf3+0x8f0>
   190d2:	462d                	li	a2,11
   190d4:	874e                	mv	a4,s3
   190d6:	00c79c63          	bne	a5,a2,190ee <__multf3+0x922>
   190da:	8752                	mv	a4,s4
   190dc:	4786                	lw	a5,64(sp)
   190de:	8c36                	mv	s8,a3
   190e0:	c8be                	sw	a5,80(sp)
   190e2:	4796                	lw	a5,68(sp)
   190e4:	cabe                	sw	a5,84(sp)
   190e6:	47a6                	lw	a5,72(sp)
   190e8:	ccbe                	sw	a5,88(sp)
   190ea:	47b6                	lw	a5,76(sp)
   190ec:	a801                	j	190fc <__multf3+0x930>
   190ee:	57c2                	lw	a5,48(sp)
   190f0:	c8be                	sw	a5,80(sp)
   190f2:	57d2                	lw	a5,52(sp)
   190f4:	cabe                	sw	a5,84(sp)
   190f6:	57e2                	lw	a5,56(sp)
   190f8:	ccbe                	sw	a5,88(sp)
   190fa:	57f2                	lw	a5,60(sp)
   190fc:	cebe                	sw	a5,92(sp)
   190fe:	4789                	li	a5,2
   19100:	34fc0d63          	beq	s8,a5,1945a <__multf3+0xc8e>
   19104:	478d                	li	a5,3
   19106:	fafc0be3          	beq	s8,a5,190bc <__multf3+0x8f0>
   1910a:	4785                	li	a5,1
   1910c:	34fc0263          	beq	s8,a5,19450 <__multf3+0xc84>
   19110:	46c2                	lw	a3,16(sp)
   19112:	6791                	lui	a5,0x4
   19114:	17fd                	addi	a5,a5,-1 # 3fff <exit-0xc095>
   19116:	97b6                	add	a5,a5,a3
   19118:	10f05763          	blez	a5,19226 <__multf3+0xa5a>
   1911c:	4646                	lw	a2,80(sp)
   1911e:	00767693          	andi	a3,a2,7
   19122:	c2a1                	beqz	a3,19162 <__multf3+0x996>
   19124:	4509                	li	a0,2
   19126:	46d6                	lw	a3,84(sp)
   19128:	45f6                	lw	a1,92(sp)
   1912a:	0ca48563          	beq	s1,a0,191f4 <__multf3+0xa28>
   1912e:	450d                	li	a0,3
   19130:	0aa48c63          	beq	s1,a0,191e8 <__multf3+0xa1c>
   19134:	e48d                	bnez	s1,1915e <__multf3+0x992>
   19136:	00f67513          	andi	a0,a2,15
   1913a:	4811                	li	a6,4
   1913c:	03050163          	beq	a0,a6,1915e <__multf3+0x992>
   19140:	0611                	addi	a2,a2,4
   19142:	c8b2                	sw	a2,80(sp)
   19144:	00463613          	sltiu	a2,a2,4
   19148:	96b2                	add	a3,a3,a2
   1914a:	cab6                	sw	a3,84(sp)
   1914c:	00c6b6b3          	sltu	a3,a3,a2
   19150:	4666                	lw	a2,88(sp)
   19152:	96b2                	add	a3,a3,a2
   19154:	ccb6                	sw	a3,88(sp)
   19156:	00c6b6b3          	sltu	a3,a3,a2
   1915a:	96ae                	add	a3,a3,a1
   1915c:	ceb6                	sw	a3,92(sp)
   1915e:	00146413          	ori	s0,s0,1
   19162:	46f6                	lw	a3,92(sp)
   19164:	00b69613          	slli	a2,a3,0xb
   19168:	00065a63          	bgez	a2,1917c <__multf3+0x9b0>
   1916c:	fff007b7          	lui	a5,0xfff00
   19170:	17fd                	addi	a5,a5,-1 # ffefffff <__BSS_END__+0xffee3353>
   19172:	8efd                	and	a3,a3,a5
   19174:	ceb6                	sw	a3,92(sp)
   19176:	46c2                	lw	a3,16(sp)
   19178:	6791                	lui	a5,0x4
   1917a:	97b6                	add	a5,a5,a3
   1917c:	0894                	addi	a3,sp,80
   1917e:	08e8                	addi	a0,sp,92
   19180:	4290                	lw	a2,0(a3)
   19182:	42cc                	lw	a1,4(a3)
   19184:	820d                	srli	a2,a2,0x3
   19186:	05f6                	slli	a1,a1,0x1d
   19188:	8e4d                	or	a2,a2,a1
   1918a:	c290                	sw	a2,0(a3)
   1918c:	0691                	addi	a3,a3,4
   1918e:	fed519e3          	bne	a0,a3,19180 <__multf3+0x9b4>
   19192:	6621                	lui	a2,0x8
   19194:	1679                	addi	a2,a2,-2 # 7ffe <exit-0x8096>
   19196:	46f6                	lw	a3,92(sp)
   19198:	65a1                	lui	a1,0x8
   1919a:	04f64f63          	blt	a2,a5,191f8 <__multf3+0xa2c>
   1919e:	828d                	srli	a3,a3,0x3
   191a0:	ceb6                	sw	a3,92(sp)
   191a2:	4576                	lw	a0,92(sp)
   191a4:	073e                	slli	a4,a4,0xf
   191a6:	8f5d                	or	a4,a4,a5
   191a8:	06a11623          	sh	a0,108(sp)
   191ac:	06e11723          	sh	a4,110(sp)
   191b0:	45c6                	lw	a1,80(sp)
   191b2:	4656                	lw	a2,84(sp)
   191b4:	46e6                	lw	a3,88(sp)
   191b6:	57b6                	lw	a5,108(sp)
   191b8:	c019                	beqz	s0,191be <__multf3+0x9f2>
   191ba:	00142073          	csrs	fflags,s0
   191be:	4732                	lw	a4,12(sp)
   191c0:	50fa                	lw	ra,188(sp)
   191c2:	546a                	lw	s0,184(sp)
   191c4:	c30c                	sw	a1,0(a4)
   191c6:	c350                	sw	a2,4(a4)
   191c8:	c714                	sw	a3,8(a4)
   191ca:	c75c                	sw	a5,12(a4)
   191cc:	54da                	lw	s1,180(sp)
   191ce:	594a                	lw	s2,176(sp)
   191d0:	59ba                	lw	s3,172(sp)
   191d2:	5a2a                	lw	s4,168(sp)
   191d4:	5a9a                	lw	s5,164(sp)
   191d6:	5b0a                	lw	s6,160(sp)
   191d8:	4bfa                	lw	s7,156(sp)
   191da:	4c6a                	lw	s8,152(sp)
   191dc:	4cda                	lw	s9,148(sp)
   191de:	4d4a                	lw	s10,144(sp)
   191e0:	4dba                	lw	s11,140(sp)
   191e2:	853a                	mv	a0,a4
   191e4:	6129                	addi	sp,sp,192
   191e6:	8082                	ret
   191e8:	fb3d                	bnez	a4,1915e <__multf3+0x992>
   191ea:	0621                	addi	a2,a2,8
   191ec:	c8b2                	sw	a2,80(sp)
   191ee:	00863613          	sltiu	a2,a2,8
   191f2:	bf99                	j	19148 <__multf3+0x97c>
   191f4:	d72d                	beqz	a4,1915e <__multf3+0x992>
   191f6:	bfd5                	j	191ea <__multf3+0xa1e>
   191f8:	4789                	li	a5,2
   191fa:	02f48463          	beq	s1,a5,19222 <__multf3+0xa56>
   191fe:	478d                	li	a5,3
   19200:	00f48763          	beq	s1,a5,1920e <__multf3+0xa42>
   19204:	e491                	bnez	s1,19210 <__multf3+0xa44>
   19206:	4681                	li	a3,0
   19208:	fff58793          	addi	a5,a1,-1 # 7fff <exit-0x8095>
   1920c:	a021                	j	19214 <__multf3+0xa48>
   1920e:	df65                	beqz	a4,19206 <__multf3+0xa3a>
   19210:	56fd                	li	a3,-1
   19212:	87b2                	mv	a5,a2
   19214:	ceb6                	sw	a3,92(sp)
   19216:	ccb6                	sw	a3,88(sp)
   19218:	cab6                	sw	a3,84(sp)
   1921a:	c8b6                	sw	a3,80(sp)
   1921c:	00546413          	ori	s0,s0,5
   19220:	b749                	j	191a2 <__multf3+0x9d6>
   19222:	f375                	bnez	a4,19206 <__multf3+0xa3a>
   19224:	b7f5                	j	19210 <__multf3+0xa44>
   19226:	4685                	li	a3,1
   19228:	ebb9                	bnez	a5,1927e <__multf3+0xab2>
   1922a:	4646                	lw	a2,80(sp)
   1922c:	46f6                	lw	a3,92(sp)
   1922e:	00767593          	andi	a1,a2,7
   19232:	c1b1                	beqz	a1,19276 <__multf3+0xaaa>
   19234:	4809                	li	a6,2
   19236:	45d6                	lw	a1,84(sp)
   19238:	4566                	lw	a0,88(sp)
   1923a:	00146413          	ori	s0,s0,1
   1923e:	03048b63          	beq	s1,a6,19274 <__multf3+0xaa8>
   19242:	480d                	li	a6,3
   19244:	03048363          	beq	s1,a6,1926a <__multf3+0xa9e>
   19248:	e49d                	bnez	s1,19276 <__multf3+0xaaa>
   1924a:	00f67813          	andi	a6,a2,15
   1924e:	4891                	li	a7,4
   19250:	03180363          	beq	a6,a7,19276 <__multf3+0xaaa>
   19254:	0611                	addi	a2,a2,4
   19256:	00463613          	sltiu	a2,a2,4
   1925a:	95b2                	add	a1,a1,a2
   1925c:	00c5b5b3          	sltu	a1,a1,a2
   19260:	952e                	add	a0,a0,a1
   19262:	00b53533          	sltu	a0,a0,a1
   19266:	96aa                	add	a3,a3,a0
   19268:	a039                	j	19276 <__multf3+0xaaa>
   1926a:	e711                	bnez	a4,19276 <__multf3+0xaaa>
   1926c:	0621                	addi	a2,a2,8
   1926e:	00863613          	sltiu	a2,a2,8
   19272:	b7e5                	j	1925a <__multf3+0xa8e>
   19274:	ff65                	bnez	a4,1926c <__multf3+0xaa0>
   19276:	82d1                	srli	a3,a3,0x14
   19278:	0016c693          	xori	a3,a3,1
   1927c:	8a85                	andi	a3,a3,1
   1927e:	4605                	li	a2,1
   19280:	40f607b3          	sub	a5,a2,a5
   19284:	07400593          	li	a1,116
   19288:	18f5c163          	blt	a1,a5,1940a <__multf3+0xc3e>
   1928c:	0890                	addi	a2,sp,80
   1928e:	4057d593          	srai	a1,a5,0x5
   19292:	01f7f513          	andi	a0,a5,31
   19296:	88b2                	mv	a7,a2
   19298:	4781                	li	a5,0
   1929a:	4801                	li	a6,0
   1929c:	02b81763          	bne	a6,a1,192ca <__multf3+0xafe>
   192a0:	480d                	li	a6,3
   192a2:	40b80833          	sub	a6,a6,a1
   192a6:	00259893          	slli	a7,a1,0x2
   192aa:	e51d                	bnez	a0,192d8 <__multf3+0xb0c>
   192ac:	8332                	mv	t1,a2
   192ae:	01130e33          	add	t3,t1,a7
   192b2:	000e2e03          	lw	t3,0(t3)
   192b6:	0505                	addi	a0,a0,1
   192b8:	0311                	addi	t1,t1,4
   192ba:	ffc32e23          	sw	t3,-4(t1)
   192be:	fea858e3          	bge	a6,a0,192ae <__multf3+0xae2>
   192c2:	4511                	li	a0,4
   192c4:	40b505b3          	sub	a1,a0,a1
   192c8:	a8a1                	j	19320 <__multf3+0xb54>
   192ca:	0008a303          	lw	t1,0(a7)
   192ce:	0805                	addi	a6,a6,1
   192d0:	0891                	addi	a7,a7,4
   192d2:	0067e7b3          	or	a5,a5,t1
   192d6:	b7d9                	j	1929c <__multf3+0xad0>
   192d8:	05088313          	addi	t1,a7,80
   192dc:	03010e13          	addi	t3,sp,48
   192e0:	9372                	add	t1,t1,t3
   192e2:	fd032303          	lw	t1,-48(t1)
   192e6:	02000e93          	li	t4,32
   192ea:	40ae8eb3          	sub	t4,t4,a0
   192ee:	01d31333          	sll	t1,t1,t4
   192f2:	0067e7b3          	or	a5,a5,t1
   192f6:	4f01                	li	t5,0
   192f8:	01160333          	add	t1,a2,a7
   192fc:	411008b3          	neg	a7,a7
   19300:	0b0f4d63          	blt	t5,a6,193ba <__multf3+0xbee>
   19304:	4891                	li	a7,4
   19306:	080a                	slli	a6,a6,0x2
   19308:	40b885b3          	sub	a1,a7,a1
   1930c:	05080813          	addi	a6,a6,80
   19310:	03010893          	addi	a7,sp,48
   19314:	9846                	add	a6,a6,a7
   19316:	48f6                	lw	a7,92(sp)
   19318:	00a8d533          	srl	a0,a7,a0
   1931c:	fca82823          	sw	a0,-48(a6)
   19320:	4511                	li	a0,4
   19322:	8d0d                	sub	a0,a0,a1
   19324:	050a                	slli	a0,a0,0x2
   19326:	058a                	slli	a1,a1,0x2
   19328:	4821                	li	a6,8
   1932a:	95b2                	add	a1,a1,a2
   1932c:	01056863          	bltu	a0,a6,1933c <__multf3+0xb70>
   19330:	0005a023          	sw	zero,0(a1)
   19334:	0005a223          	sw	zero,4(a1)
   19338:	1561                	addi	a0,a0,-8
   1933a:	05a1                	addi	a1,a1,8
   1933c:	4811                	li	a6,4
   1933e:	01056463          	bltu	a0,a6,19346 <__multf3+0xb7a>
   19342:	0005a023          	sw	zero,0(a1)
   19346:	45c6                	lw	a1,80(sp)
   19348:	00f037b3          	snez	a5,a5
   1934c:	8fcd                	or	a5,a5,a1
   1934e:	c8be                	sw	a5,80(sp)
   19350:	0077f593          	andi	a1,a5,7
   19354:	c1a1                	beqz	a1,19394 <__multf3+0xbc8>
   19356:	4509                	li	a0,2
   19358:	45f6                	lw	a1,92(sp)
   1935a:	08a48763          	beq	s1,a0,193e8 <__multf3+0xc1c>
   1935e:	450d                	li	a0,3
   19360:	06a48e63          	beq	s1,a0,193dc <__multf3+0xc10>
   19364:	e495                	bnez	s1,19390 <__multf3+0xbc4>
   19366:	00f7f513          	andi	a0,a5,15
   1936a:	4811                	li	a6,4
   1936c:	03050263          	beq	a0,a6,19390 <__multf3+0xbc4>
   19370:	0791                	addi	a5,a5,4 # 4004 <exit-0xc090>
   19372:	c8be                	sw	a5,80(sp)
   19374:	0047b793          	sltiu	a5,a5,4
   19378:	4556                	lw	a0,84(sp)
   1937a:	97aa                	add	a5,a5,a0
   1937c:	cabe                	sw	a5,84(sp)
   1937e:	00a7b7b3          	sltu	a5,a5,a0
   19382:	4566                	lw	a0,88(sp)
   19384:	97aa                	add	a5,a5,a0
   19386:	ccbe                	sw	a5,88(sp)
   19388:	00a7b7b3          	sltu	a5,a5,a0
   1938c:	97ae                	add	a5,a5,a1
   1938e:	cebe                	sw	a5,92(sp)
   19390:	00146413          	ori	s0,s0,1
   19394:	45f6                	lw	a1,92(sp)
   19396:	00c59793          	slli	a5,a1,0xc
   1939a:	0407d963          	bgez	a5,193ec <__multf3+0xc20>
   1939e:	ce82                	sw	zero,92(sp)
   193a0:	cc82                	sw	zero,88(sp)
   193a2:	ca82                	sw	zero,84(sp)
   193a4:	c882                	sw	zero,80(sp)
   193a6:	00146413          	ori	s0,s0,1
   193aa:	4785                	li	a5,1
   193ac:	de068be3          	beqz	a3,191a2 <__multf3+0x9d6>
   193b0:	00147693          	andi	a3,s0,1
   193b4:	0686                	slli	a3,a3,0x1
   193b6:	8c55                	or	s0,s0,a3
   193b8:	b3ed                	j	191a2 <__multf3+0x9d6>
   193ba:	00032e03          	lw	t3,0(t1)
   193be:	00432f83          	lw	t6,4(t1)
   193c2:	011302b3          	add	t0,t1,a7
   193c6:	00ae5e33          	srl	t3,t3,a0
   193ca:	01df9fb3          	sll	t6,t6,t4
   193ce:	01fe6e33          	or	t3,t3,t6
   193d2:	01c2a023          	sw	t3,0(t0)
   193d6:	0f05                	addi	t5,t5,1
   193d8:	0311                	addi	t1,t1,4
   193da:	b71d                	j	19300 <__multf3+0xb34>
   193dc:	fb55                	bnez	a4,19390 <__multf3+0xbc4>
   193de:	07a1                	addi	a5,a5,8
   193e0:	c8be                	sw	a5,80(sp)
   193e2:	0087b793          	sltiu	a5,a5,8
   193e6:	bf49                	j	19378 <__multf3+0xbac>
   193e8:	d745                	beqz	a4,19390 <__multf3+0xbc4>
   193ea:	bfd5                	j	193de <__multf3+0xc12>
   193ec:	00c60813          	addi	a6,a2,12
   193f0:	421c                	lw	a5,0(a2)
   193f2:	4248                	lw	a0,4(a2)
   193f4:	838d                	srli	a5,a5,0x3
   193f6:	0576                	slli	a0,a0,0x1d
   193f8:	8fc9                	or	a5,a5,a0
   193fa:	c21c                	sw	a5,0(a2)
   193fc:	0611                	addi	a2,a2,4
   193fe:	fec819e3          	bne	a6,a2,193f0 <__multf3+0xc24>
   19402:	818d                	srli	a1,a1,0x3
   19404:	ceae                	sw	a1,92(sp)
   19406:	4781                	li	a5,0
   19408:	b755                	j	193ac <__multf3+0xbe0>
   1940a:	46d6                	lw	a3,84(sp)
   1940c:	47c6                	lw	a5,80(sp)
   1940e:	8fd5                	or	a5,a5,a3
   19410:	46e6                	lw	a3,88(sp)
   19412:	8fd5                	or	a5,a5,a3
   19414:	46f6                	lw	a3,92(sp)
   19416:	8fd5                	or	a5,a5,a3
   19418:	c395                	beqz	a5,1943c <__multf3+0xc70>
   1941a:	ce82                	sw	zero,92(sp)
   1941c:	cc82                	sw	zero,88(sp)
   1941e:	ca82                	sw	zero,84(sp)
   19420:	c8b2                	sw	a2,80(sp)
   19422:	4789                	li	a5,2
   19424:	00146413          	ori	s0,s0,1
   19428:	02f48263          	beq	s1,a5,1944c <__multf3+0xc80>
   1942c:	478d                	li	a5,3
   1942e:	00f48b63          	beq	s1,a5,19444 <__multf3+0xc78>
   19432:	4795                	li	a5,5
   19434:	c891                	beqz	s1,19448 <__multf3+0xc7c>
   19436:	47c6                	lw	a5,80(sp)
   19438:	838d                	srli	a5,a5,0x3
   1943a:	c8be                	sw	a5,80(sp)
   1943c:	00246413          	ori	s0,s0,2
   19440:	4781                	li	a5,0
   19442:	b385                	j	191a2 <__multf3+0x9d6>
   19444:	fb6d                	bnez	a4,19436 <__multf3+0xc6a>
   19446:	47a5                	li	a5,9
   19448:	c8be                	sw	a5,80(sp)
   1944a:	b7f5                	j	19436 <__multf3+0xc6a>
   1944c:	ff6d                	bnez	a4,19446 <__multf3+0xc7a>
   1944e:	b7e5                	j	19436 <__multf3+0xc6a>
   19450:	ce82                	sw	zero,92(sp)
   19452:	cc82                	sw	zero,88(sp)
   19454:	ca82                	sw	zero,84(sp)
   19456:	c882                	sw	zero,80(sp)
   19458:	b7e5                	j	19440 <__multf3+0xc74>
   1945a:	67a1                	lui	a5,0x8
   1945c:	ce82                	sw	zero,92(sp)
   1945e:	cc82                	sw	zero,88(sp)
   19460:	ca82                	sw	zero,84(sp)
   19462:	c882                	sw	zero,80(sp)
   19464:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   19466:	bb35                	j	191a2 <__multf3+0x9d6>

00019468 <__subtf3>:
   19468:	7159                	addi	sp,sp,-112
   1946a:	d2a6                	sw	s1,100(sp)
   1946c:	d0ca                	sw	s2,96(sp)
   1946e:	cece                	sw	s3,92(sp)
   19470:	c2e6                	sw	s9,68(sp)
   19472:	d686                	sw	ra,108(sp)
   19474:	d4a2                	sw	s0,104(sp)
   19476:	ccd2                	sw	s4,88(sp)
   19478:	cad6                	sw	s5,84(sp)
   1947a:	c8da                	sw	s6,80(sp)
   1947c:	c6de                	sw	s7,76(sp)
   1947e:	c4e2                	sw	s8,72(sp)
   19480:	892a                	mv	s2,a0
   19482:	4198                	lw	a4,0(a1)
   19484:	41d4                	lw	a3,4(a1)
   19486:	459c                	lw	a5,8(a1)
   19488:	00c5a983          	lw	s3,12(a1)
   1948c:	4204                	lw	s1,0(a2)
   1948e:	00462883          	lw	a7,4(a2)
   19492:	00862803          	lw	a6,8(a2)
   19496:	00c62c83          	lw	s9,12(a2)
   1949a:	00202a73          	frrm	s4
   1949e:	dc3e                	sw	a5,56(sp)
   194a0:	c43e                	sw	a5,8(sp)
   194a2:	01099793          	slli	a5,s3,0x10
   194a6:	83c1                	srli	a5,a5,0x10
   194a8:	00199413          	slli	s0,s3,0x1
   194ac:	858a                	mv	a1,sp
   194ae:	de4e                	sw	s3,60(sp)
   194b0:	c63e                	sw	a5,12(sp)
   194b2:	d83a                	sw	a4,48(sp)
   194b4:	da36                	sw	a3,52(sp)
   194b6:	c03a                	sw	a4,0(sp)
   194b8:	c236                	sw	a3,4(sp)
   194ba:	8045                	srli	s0,s0,0x11
   194bc:	01f9d993          	srli	s3,s3,0x1f
   194c0:	ff410313          	addi	t1,sp,-12
   194c4:	87ae                	mv	a5,a1
   194c6:	852e                	mv	a0,a1
   194c8:	47d4                	lw	a3,12(a5)
   194ca:	4790                	lw	a2,8(a5)
   194cc:	17f1                	addi	a5,a5,-4
   194ce:	068e                	slli	a3,a3,0x3
   194d0:	8275                	srli	a2,a2,0x1d
   194d2:	8ed1                	or	a3,a3,a2
   194d4:	cb94                	sw	a3,16(a5)
   194d6:	fef319e3          	bne	t1,a5,194c8 <__subtf3+0x60>
   194da:	010c9793          	slli	a5,s9,0x10
   194de:	83c1                	srli	a5,a5,0x10
   194e0:	001c9a93          	slli	s5,s9,0x1
   194e4:	070e                	slli	a4,a4,0x3
   194e6:	dc42                	sw	a6,56(sp)
   194e8:	cc42                	sw	a6,24(sp)
   194ea:	01010813          	addi	a6,sp,16
   194ee:	da46                	sw	a7,52(sp)
   194f0:	de66                	sw	s9,60(sp)
   194f2:	ca46                	sw	a7,20(sp)
   194f4:	ce3e                	sw	a5,28(sp)
   194f6:	c03a                	sw	a4,0(sp)
   194f8:	d826                	sw	s1,48(sp)
   194fa:	c826                	sw	s1,16(sp)
   194fc:	011ada93          	srli	s5,s5,0x11
   19500:	01fcdc93          	srli	s9,s9,0x1f
   19504:	00410893          	addi	a7,sp,4
   19508:	87c2                	mv	a5,a6
   1950a:	8e42                	mv	t3,a6
   1950c:	47d4                	lw	a3,12(a5)
   1950e:	4790                	lw	a2,8(a5)
   19510:	17f1                	addi	a5,a5,-4
   19512:	068e                	slli	a3,a3,0x3
   19514:	8275                	srli	a2,a2,0x1d
   19516:	8ed1                	or	a3,a3,a2
   19518:	cb94                	sw	a3,16(a5)
   1951a:	fef899e3          	bne	a7,a5,1950c <__subtf3+0xa4>
   1951e:	048e                	slli	s1,s1,0x3
   19520:	67a1                	lui	a5,0x8
   19522:	c826                	sw	s1,16(sp)
   19524:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   19526:	00fa9963          	bne	s5,a5,19538 <__subtf3+0xd0>
   1952a:	46e2                	lw	a3,24(sp)
   1952c:	47d2                	lw	a5,20(sp)
   1952e:	8fd5                	or	a5,a5,a3
   19530:	46f2                	lw	a3,28(sp)
   19532:	8fd5                	or	a5,a5,a3
   19534:	8fc5                	or	a5,a5,s1
   19536:	e399                	bnez	a5,1953c <__subtf3+0xd4>
   19538:	001ccc93          	xori	s9,s9,1
   1953c:	415407b3          	sub	a5,s0,s5
   19540:	5d3c9c63          	bne	s9,s3,19b18 <__subtf3+0x6b0>
   19544:	24f05963          	blez	a5,19796 <__subtf3+0x32e>
   19548:	4312                	lw	t1,4(sp)
   1954a:	48a2                	lw	a7,8(sp)
   1954c:	45b2                	lw	a1,12(sp)
   1954e:	080a9963          	bnez	s5,195e0 <__subtf3+0x178>
   19552:	4552                	lw	a0,20(sp)
   19554:	46e2                	lw	a3,24(sp)
   19556:	4ef2                	lw	t4,28(sp)
   19558:	00d56633          	or	a2,a0,a3
   1955c:	01d66633          	or	a2,a2,t4
   19560:	8e45                	or	a2,a2,s1
   19562:	e61d                	bnez	a2,19590 <__subtf3+0x128>
   19564:	66a1                	lui	a3,0x8
   19566:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19568:	00d79e63          	bne	a5,a3,19584 <__subtf3+0x11c>
   1956c:	011366b3          	or	a3,t1,a7
   19570:	8ecd                	or	a3,a3,a1
   19572:	8ed9                	or	a3,a3,a4
   19574:	ca81                	beqz	a3,19584 <__subtf3+0x11c>
   19576:	0125da93          	srli	s5,a1,0x12
   1957a:	001aca93          	xori	s5,s5,1
   1957e:	001afa93          	andi	s5,s5,1
   19582:	0a92                	slli	s5,s5,0x4
   19584:	d03a                	sw	a4,32(sp)
   19586:	d21a                	sw	t1,36(sp)
   19588:	d446                	sw	a7,40(sp)
   1958a:	d62e                	sw	a1,44(sp)
   1958c:	8456                	mv	s0,s5
   1958e:	ac99                	j	197e4 <__subtf3+0x37c>
   19590:	fff78613          	addi	a2,a5,-1
   19594:	ea0d                	bnez	a2,195c6 <__subtf3+0x15e>
   19596:	94ba                	add	s1,s1,a4
   19598:	932a                	add	t1,t1,a0
   1959a:	d026                	sw	s1,32(sp)
   1959c:	00e4b4b3          	sltu	s1,s1,a4
   195a0:	949a                	add	s1,s1,t1
   195a2:	d226                	sw	s1,36(sp)
   195a4:	00a33533          	sltu	a0,t1,a0
   195a8:	0064b4b3          	sltu	s1,s1,t1
   195ac:	98b6                	add	a7,a7,a3
   195ae:	8d45                	or	a0,a0,s1
   195b0:	9546                	add	a0,a0,a7
   195b2:	d42a                	sw	a0,40(sp)
   195b4:	00d8b733          	sltu	a4,a7,a3
   195b8:	01153533          	sltu	a0,a0,a7
   195bc:	8f49                	or	a4,a4,a0
   195be:	9eae                	add	t4,t4,a1
   195c0:	9776                	add	a4,a4,t4
   195c2:	4785                	li	a5,1
   195c4:	a299                	j	1970a <__subtf3+0x2a2>
   195c6:	66a1                	lui	a3,0x8
   195c8:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   195ca:	fad781e3          	beq	a5,a3,1956c <__subtf3+0x104>
   195ce:	07400793          	li	a5,116
   195d2:	04c7d863          	bge	a5,a2,19622 <__subtf3+0x1ba>
   195d6:	ce02                	sw	zero,28(sp)
   195d8:	cc02                	sw	zero,24(sp)
   195da:	ca02                	sw	zero,20(sp)
   195dc:	4785                	li	a5,1
   195de:	a8dd                	j	196d4 <__subtf3+0x26c>
   195e0:	66a1                	lui	a3,0x8
   195e2:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   195e4:	02d41563          	bne	s0,a3,1960e <__subtf3+0x1a6>
   195e8:	011367b3          	or	a5,t1,a7
   195ec:	8fcd                	or	a5,a5,a1
   195ee:	8fd9                	or	a5,a5,a4
   195f0:	4681                	li	a3,0
   195f2:	c799                	beqz	a5,19600 <__subtf3+0x198>
   195f4:	0125d693          	srli	a3,a1,0x12
   195f8:	0016c693          	xori	a3,a3,1
   195fc:	8a85                	andi	a3,a3,1
   195fe:	0692                	slli	a3,a3,0x4
   19600:	d03a                	sw	a4,32(sp)
   19602:	d21a                	sw	t1,36(sp)
   19604:	d446                	sw	a7,40(sp)
   19606:	d62e                	sw	a1,44(sp)
   19608:	87a2                	mv	a5,s0
   1960a:	8436                	mv	s0,a3
   1960c:	aae1                	j	197e4 <__subtf3+0x37c>
   1960e:	46f2                	lw	a3,28(sp)
   19610:	00080637          	lui	a2,0x80
   19614:	8ed1                	or	a3,a3,a2
   19616:	ce36                	sw	a3,28(sp)
   19618:	07400693          	li	a3,116
   1961c:	faf6cde3          	blt	a3,a5,195d6 <__subtf3+0x16e>
   19620:	863e                	mv	a2,a5
   19622:	40565693          	srai	a3,a2,0x5
   19626:	8ec2                	mv	t4,a6
   19628:	8a7d                	andi	a2,a2,31
   1962a:	4781                	li	a5,0
   1962c:	4501                	li	a0,0
   1962e:	02d51563          	bne	a0,a3,19658 <__subtf3+0x1f0>
   19632:	450d                	li	a0,3
   19634:	8d15                	sub	a0,a0,a3
   19636:	00269e93          	slli	t4,a3,0x2
   1963a:	e615                	bnez	a2,19666 <__subtf3+0x1fe>
   1963c:	01d80f33          	add	t5,a6,t4
   19640:	000f2f03          	lw	t5,0(t5)
   19644:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x63355>
   19646:	0811                	addi	a6,a6,4
   19648:	ffe82e23          	sw	t5,-4(a6)
   1964c:	fec558e3          	bge	a0,a2,1963c <__subtf3+0x1d4>
   19650:	4611                	li	a2,4
   19652:	40d606b3          	sub	a3,a2,a3
   19656:	a881                	j	196a6 <__subtf3+0x23e>
   19658:	000eaf03          	lw	t5,0(t4)
   1965c:	0505                	addi	a0,a0,1
   1965e:	0e91                	addi	t4,t4,4
   19660:	01e7e7b3          	or	a5,a5,t5
   19664:	b7e9                	j	1962e <__subtf3+0x1c6>
   19666:	040e8493          	addi	s1,t4,64
   1966a:	00248f33          	add	t5,s1,sp
   1966e:	fd0f2f03          	lw	t5,-48(t5)
   19672:	02000393          	li	t2,32
   19676:	40c383b3          	sub	t2,t2,a2
   1967a:	007f1f33          	sll	t5,t5,t2
   1967e:	9876                	add	a6,a6,t4
   19680:	01e7e7b3          	or	a5,a5,t5
   19684:	41d00eb3          	neg	t4,t4
   19688:	4f81                	li	t6,0
   1968a:	0eafc563          	blt	t6,a0,19774 <__subtf3+0x30c>
   1968e:	4811                	li	a6,4
   19690:	40d806b3          	sub	a3,a6,a3
   19694:	4872                	lw	a6,28(sp)
   19696:	050a                	slli	a0,a0,0x2
   19698:	04050513          	addi	a0,a0,64
   1969c:	950a                	add	a0,a0,sp
   1969e:	00c85633          	srl	a2,a6,a2
   196a2:	fcc52823          	sw	a2,-48(a0)
   196a6:	4611                	li	a2,4
   196a8:	8e15                	sub	a2,a2,a3
   196aa:	060a                	slli	a2,a2,0x2
   196ac:	068a                	slli	a3,a3,0x2
   196ae:	4521                	li	a0,8
   196b0:	96f2                	add	a3,a3,t3
   196b2:	00a66863          	bltu	a2,a0,196c2 <__subtf3+0x25a>
   196b6:	0006a023          	sw	zero,0(a3)
   196ba:	0006a223          	sw	zero,4(a3)
   196be:	1661                	addi	a2,a2,-8
   196c0:	06a1                	addi	a3,a3,8
   196c2:	4511                	li	a0,4
   196c4:	00a66463          	bltu	a2,a0,196cc <__subtf3+0x264>
   196c8:	0006a023          	sw	zero,0(a3)
   196cc:	46c2                	lw	a3,16(sp)
   196ce:	00f037b3          	snez	a5,a5
   196d2:	8fd5                	or	a5,a5,a3
   196d4:	46d2                	lw	a3,20(sp)
   196d6:	c83e                	sw	a5,16(sp)
   196d8:	97ba                	add	a5,a5,a4
   196da:	9336                	add	t1,t1,a3
   196dc:	d03e                	sw	a5,32(sp)
   196de:	00e7b7b3          	sltu	a5,a5,a4
   196e2:	4762                	lw	a4,24(sp)
   196e4:	979a                	add	a5,a5,t1
   196e6:	d23e                	sw	a5,36(sp)
   196e8:	00d336b3          	sltu	a3,t1,a3
   196ec:	0067b7b3          	sltu	a5,a5,t1
   196f0:	98ba                	add	a7,a7,a4
   196f2:	8fd5                	or	a5,a5,a3
   196f4:	97c6                	add	a5,a5,a7
   196f6:	d43e                	sw	a5,40(sp)
   196f8:	00e8b733          	sltu	a4,a7,a4
   196fc:	0117b7b3          	sltu	a5,a5,a7
   19700:	8f5d                	or	a4,a4,a5
   19702:	47f2                	lw	a5,28(sp)
   19704:	97ae                	add	a5,a5,a1
   19706:	973e                	add	a4,a4,a5
   19708:	87a2                	mv	a5,s0
   1970a:	d63a                	sw	a4,44(sp)
   1970c:	00c71693          	slli	a3,a4,0xc
   19710:	4401                	li	s0,0
   19712:	0c06d963          	bgez	a3,197e4 <__subtf3+0x37c>
   19716:	5602                	lw	a2,32(sp)
   19718:	fff806b7          	lui	a3,0xfff80
   1971c:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff63353>
   1971e:	8f75                	and	a4,a4,a3
   19720:	d63a                	sw	a4,44(sp)
   19722:	0785                	addi	a5,a5,1
   19724:	067e                	slli	a2,a2,0x1f
   19726:	1014                	addi	a3,sp,32
   19728:	02c10813          	addi	a6,sp,44
   1972c:	428c                	lw	a1,0(a3)
   1972e:	42c8                	lw	a0,4(a3)
   19730:	8185                	srli	a1,a1,0x1
   19732:	057e                	slli	a0,a0,0x1f
   19734:	8dc9                	or	a1,a1,a0
   19736:	c28c                	sw	a1,0(a3)
   19738:	0691                	addi	a3,a3,4
   1973a:	fed819e3          	bne	a6,a3,1972c <__subtf3+0x2c4>
   1973e:	5682                	lw	a3,32(sp)
   19740:	8305                	srli	a4,a4,0x1
   19742:	d63a                	sw	a4,44(sp)
   19744:	00c03733          	snez	a4,a2
   19748:	8f55                	or	a4,a4,a3
   1974a:	d03a                	sw	a4,32(sp)
   1974c:	6721                	lui	a4,0x8
   1974e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19750:	4401                	li	s0,0
   19752:	08e79963          	bne	a5,a4,197e4 <__subtf3+0x37c>
   19756:	3a0a0963          	beqz	s4,19b08 <__subtf3+0x6a0>
   1975a:	478d                	li	a5,3
   1975c:	3afa1163          	bne	s4,a5,19afe <__subtf3+0x696>
   19760:	3a098463          	beqz	s3,19b08 <__subtf3+0x6a0>
   19764:	57fd                	li	a5,-1
   19766:	d63e                	sw	a5,44(sp)
   19768:	d43e                	sw	a5,40(sp)
   1976a:	d23e                	sw	a5,36(sp)
   1976c:	d03e                	sw	a5,32(sp)
   1976e:	67a1                	lui	a5,0x8
   19770:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   19772:	a64d                	j	19b14 <__subtf3+0x6ac>
   19774:	00082f03          	lw	t5,0(a6)
   19778:	00482283          	lw	t0,4(a6)
   1977c:	01d804b3          	add	s1,a6,t4
   19780:	00cf5f33          	srl	t5,t5,a2
   19784:	007292b3          	sll	t0,t0,t2
   19788:	005f6f33          	or	t5,t5,t0
   1978c:	01e4a023          	sw	t5,0(s1)
   19790:	0f85                	addi	t6,t6,1
   19792:	0811                	addi	a6,a6,4
   19794:	bddd                	j	1968a <__subtf3+0x222>
   19796:	4bd2                	lw	s7,20(sp)
   19798:	4c62                	lw	s8,24(sp)
   1979a:	4b72                	lw	s6,28(sp)
   1979c:	1e078363          	beqz	a5,19982 <__subtf3+0x51a>
   197a0:	408a87b3          	sub	a5,s5,s0
   197a4:	e859                	bnez	s0,1983a <__subtf3+0x3d2>
   197a6:	4612                	lw	a2,4(sp)
   197a8:	46a2                	lw	a3,8(sp)
   197aa:	48b2                	lw	a7,12(sp)
   197ac:	00d66833          	or	a6,a2,a3
   197b0:	01186833          	or	a6,a6,a7
   197b4:	00e86833          	or	a6,a6,a4
   197b8:	02081963          	bnez	a6,197ea <__subtf3+0x382>
   197bc:	6721                	lui	a4,0x8
   197be:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   197c0:	00e79e63          	bne	a5,a4,197dc <__subtf3+0x374>
   197c4:	018be733          	or	a4,s7,s8
   197c8:	01676733          	or	a4,a4,s6
   197cc:	8f45                	or	a4,a4,s1
   197ce:	c719                	beqz	a4,197dc <__subtf3+0x374>
   197d0:	012b5413          	srli	s0,s6,0x12
   197d4:	00144413          	xori	s0,s0,1
   197d8:	8805                	andi	s0,s0,1
   197da:	0412                	slli	s0,s0,0x4
   197dc:	d026                	sw	s1,32(sp)
   197de:	d25e                	sw	s7,36(sp)
   197e0:	d462                	sw	s8,40(sp)
   197e2:	d65a                	sw	s6,44(sp)
   197e4:	4681                	li	a3,0
   197e6:	3fb0006f          	j	1a3e0 <__subtf3+0xf78>
   197ea:	fff78813          	addi	a6,a5,-1
   197ee:	02081963          	bnez	a6,19820 <__subtf3+0x3b8>
   197f2:	94ba                	add	s1,s1,a4
   197f4:	9bb2                	add	s7,s7,a2
   197f6:	d026                	sw	s1,32(sp)
   197f8:	00e4b4b3          	sltu	s1,s1,a4
   197fc:	94de                	add	s1,s1,s7
   197fe:	d226                	sw	s1,36(sp)
   19800:	00cbb633          	sltu	a2,s7,a2
   19804:	0174b4b3          	sltu	s1,s1,s7
   19808:	9c36                	add	s8,s8,a3
   1980a:	8e45                	or	a2,a2,s1
   1980c:	9662                	add	a2,a2,s8
   1980e:	d432                	sw	a2,40(sp)
   19810:	00dc3733          	sltu	a4,s8,a3
   19814:	01863633          	sltu	a2,a2,s8
   19818:	8f51                	or	a4,a4,a2
   1981a:	98da                	add	a7,a7,s6
   1981c:	9746                	add	a4,a4,a7
   1981e:	b355                	j	195c2 <__subtf3+0x15a>
   19820:	6721                	lui	a4,0x8
   19822:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19824:	fae780e3          	beq	a5,a4,197c4 <__subtf3+0x35c>
   19828:	07400793          	li	a5,116
   1982c:	0507d863          	bge	a5,a6,1987c <__subtf3+0x414>
   19830:	c602                	sw	zero,12(sp)
   19832:	c402                	sw	zero,8(sp)
   19834:	c202                	sw	zero,4(sp)
   19836:	4785                	li	a5,1
   19838:	a8cd                	j	1992a <__subtf3+0x4c2>
   1983a:	6721                	lui	a4,0x8
   1983c:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1983e:	02ea9563          	bne	s5,a4,19868 <__subtf3+0x400>
   19842:	018be7b3          	or	a5,s7,s8
   19846:	0167e7b3          	or	a5,a5,s6
   1984a:	8fc5                	or	a5,a5,s1
   1984c:	4401                	li	s0,0
   1984e:	c799                	beqz	a5,1985c <__subtf3+0x3f4>
   19850:	012b5413          	srli	s0,s6,0x12
   19854:	00144413          	xori	s0,s0,1
   19858:	8805                	andi	s0,s0,1
   1985a:	0412                	slli	s0,s0,0x4
   1985c:	d026                	sw	s1,32(sp)
   1985e:	d25e                	sw	s7,36(sp)
   19860:	d462                	sw	s8,40(sp)
   19862:	d65a                	sw	s6,44(sp)
   19864:	87d6                	mv	a5,s5
   19866:	bfbd                	j	197e4 <__subtf3+0x37c>
   19868:	4732                	lw	a4,12(sp)
   1986a:	000806b7          	lui	a3,0x80
   1986e:	8f55                	or	a4,a4,a3
   19870:	c63a                	sw	a4,12(sp)
   19872:	07400713          	li	a4,116
   19876:	faf74de3          	blt	a4,a5,19830 <__subtf3+0x3c8>
   1987a:	883e                	mv	a6,a5
   1987c:	02000713          	li	a4,32
   19880:	02e84733          	div	a4,a6,a4
   19884:	86ae                	mv	a3,a1
   19886:	4401                	li	s0,0
   19888:	4781                	li	a5,0
   1988a:	02e7c663          	blt	a5,a4,198b6 <__subtf3+0x44e>
   1988e:	478d                	li	a5,3
   19890:	01f87893          	andi	a7,a6,31
   19894:	8f99                	sub	a5,a5,a4
   19896:	00271613          	slli	a2,a4,0x2
   1989a:	02089363          	bnez	a7,198c0 <__subtf3+0x458>
   1989e:	00c586b3          	add	a3,a1,a2
   198a2:	4294                	lw	a3,0(a3)
   198a4:	0885                	addi	a7,a7,1
   198a6:	c194                	sw	a3,0(a1)
   198a8:	0591                	addi	a1,a1,4
   198aa:	ff17dae3          	bge	a5,a7,1989e <__subtf3+0x436>
   198ae:	4791                	li	a5,4
   198b0:	40e78733          	sub	a4,a5,a4
   198b4:	a899                	j	1990a <__subtf3+0x4a2>
   198b6:	4290                	lw	a2,0(a3)
   198b8:	0785                	addi	a5,a5,1
   198ba:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x63358>
   198bc:	8c51                	or	s0,s0,a2
   198be:	b7f1                	j	1988a <__subtf3+0x422>
   198c0:	02000693          	li	a3,32
   198c4:	02d86833          	rem	a6,a6,a3
   198c8:	41068833          	sub	a6,a3,a6
   198cc:	86ba                	mv	a3,a4
   198ce:	00075363          	bgez	a4,198d4 <__subtf3+0x46c>
   198d2:	4681                	li	a3,0
   198d4:	068a                	slli	a3,a3,0x2
   198d6:	04068693          	addi	a3,a3,64
   198da:	968a                	add	a3,a3,sp
   198dc:	fc06a683          	lw	a3,-64(a3)
   198e0:	95b2                	add	a1,a1,a2
   198e2:	4301                	li	t1,0
   198e4:	010696b3          	sll	a3,a3,a6
   198e8:	8c55                	or	s0,s0,a3
   198ea:	40c00633          	neg	a2,a2
   198ee:	06f34a63          	blt	t1,a5,19962 <__subtf3+0x4fa>
   198f2:	4691                	li	a3,4
   198f4:	40e68733          	sub	a4,a3,a4
   198f8:	46b2                	lw	a3,12(sp)
   198fa:	078a                	slli	a5,a5,0x2
   198fc:	04078793          	addi	a5,a5,64
   19900:	978a                	add	a5,a5,sp
   19902:	0116d6b3          	srl	a3,a3,a7
   19906:	fcd7a023          	sw	a3,-64(a5)
   1990a:	00572793          	slti	a5,a4,5
   1990e:	4601                	li	a2,0
   19910:	c781                	beqz	a5,19918 <__subtf3+0x4b0>
   19912:	4611                	li	a2,4
   19914:	8e19                	sub	a2,a2,a4
   19916:	060a                	slli	a2,a2,0x2
   19918:	070a                	slli	a4,a4,0x2
   1991a:	953a                	add	a0,a0,a4
   1991c:	4581                	li	a1,0
   1991e:	a9df70ef          	jal	113ba <memset>
   19922:	4702                	lw	a4,0(sp)
   19924:	008037b3          	snez	a5,s0
   19928:	8fd9                	or	a5,a5,a4
   1992a:	4692                	lw	a3,4(sp)
   1992c:	c03e                	sw	a5,0(sp)
   1992e:	97a6                	add	a5,a5,s1
   19930:	9bb6                	add	s7,s7,a3
   19932:	4722                	lw	a4,8(sp)
   19934:	d03e                	sw	a5,32(sp)
   19936:	0097b7b3          	sltu	a5,a5,s1
   1993a:	97de                	add	a5,a5,s7
   1993c:	d23e                	sw	a5,36(sp)
   1993e:	00dbb6b3          	sltu	a3,s7,a3
   19942:	0177b7b3          	sltu	a5,a5,s7
   19946:	9c3a                	add	s8,s8,a4
   19948:	8fd5                	or	a5,a5,a3
   1994a:	97e2                	add	a5,a5,s8
   1994c:	d43e                	sw	a5,40(sp)
   1994e:	00ec3733          	sltu	a4,s8,a4
   19952:	0187b7b3          	sltu	a5,a5,s8
   19956:	8f5d                	or	a4,a4,a5
   19958:	47b2                	lw	a5,12(sp)
   1995a:	97da                	add	a5,a5,s6
   1995c:	973e                	add	a4,a4,a5
   1995e:	87d6                	mv	a5,s5
   19960:	b36d                	j	1970a <__subtf3+0x2a2>
   19962:	4194                	lw	a3,0(a1)
   19964:	0045ae03          	lw	t3,4(a1)
   19968:	00c58eb3          	add	t4,a1,a2
   1996c:	0116d6b3          	srl	a3,a3,a7
   19970:	010e1e33          	sll	t3,t3,a6
   19974:	01c6e6b3          	or	a3,a3,t3
   19978:	00dea023          	sw	a3,0(t4)
   1997c:	0305                	addi	t1,t1,1
   1997e:	0591                	addi	a1,a1,4
   19980:	b7bd                	j	198ee <__subtf3+0x486>
   19982:	00140793          	addi	a5,s0,1
   19986:	01179513          	slli	a0,a5,0x11
   1998a:	8149                	srli	a0,a0,0x12
   1998c:	4612                	lw	a2,4(sp)
   1998e:	46a2                	lw	a3,8(sp)
   19990:	45b2                	lw	a1,12(sp)
   19992:	10051c63          	bnez	a0,19aaa <__subtf3+0x642>
   19996:	00d667b3          	or	a5,a2,a3
   1999a:	8fcd                	or	a5,a5,a1
   1999c:	8fd9                	or	a5,a5,a4
   1999e:	e049                	bnez	s0,19a20 <__subtf3+0x5b8>
   199a0:	e785                	bnez	a5,199c8 <__subtf3+0x560>
   199a2:	d026                	sw	s1,32(sp)
   199a4:	d25e                	sw	s7,36(sp)
   199a6:	d462                	sw	s8,40(sp)
   199a8:	d65a                	sw	s6,44(sp)
   199aa:	5782                	lw	a5,32(sp)
   199ac:	5592                	lw	a1,36(sp)
   199ae:	5622                	lw	a2,40(sp)
   199b0:	56b2                	lw	a3,44(sp)
   199b2:	00b7e733          	or	a4,a5,a1
   199b6:	8f51                	or	a4,a4,a2
   199b8:	8f55                	or	a4,a4,a3
   199ba:	1a071de3          	bnez	a4,1a374 <__subtf3+0xf0c>
   199be:	4781                	li	a5,0
   199c0:	4681                	li	a3,0
   199c2:	4401                	li	s0,0
   199c4:	21d0006f          	j	1a3e0 <__subtf3+0xf78>
   199c8:	018be7b3          	or	a5,s7,s8
   199cc:	0167e7b3          	or	a5,a5,s6
   199d0:	8fc5                	or	a5,a5,s1
   199d2:	e791                	bnez	a5,199de <__subtf3+0x576>
   199d4:	d03a                	sw	a4,32(sp)
   199d6:	d232                	sw	a2,36(sp)
   199d8:	d436                	sw	a3,40(sp)
   199da:	d62e                	sw	a1,44(sp)
   199dc:	b7f9                	j	199aa <__subtf3+0x542>
   199de:	94ba                	add	s1,s1,a4
   199e0:	9bb2                	add	s7,s7,a2
   199e2:	d026                	sw	s1,32(sp)
   199e4:	00e4b4b3          	sltu	s1,s1,a4
   199e8:	94de                	add	s1,s1,s7
   199ea:	d226                	sw	s1,36(sp)
   199ec:	00cbb633          	sltu	a2,s7,a2
   199f0:	0174b4b3          	sltu	s1,s1,s7
   199f4:	9c36                	add	s8,s8,a3
   199f6:	8e45                	or	a2,a2,s1
   199f8:	9662                	add	a2,a2,s8
   199fa:	d432                	sw	a2,40(sp)
   199fc:	00dc36b3          	sltu	a3,s8,a3
   19a00:	01863633          	sltu	a2,a2,s8
   19a04:	8ed1                	or	a3,a3,a2
   19a06:	95da                	add	a1,a1,s6
   19a08:	96ae                	add	a3,a3,a1
   19a0a:	00c69793          	slli	a5,a3,0xc
   19a0e:	3207d2e3          	bgez	a5,1a532 <__subtf3+0x10ca>
   19a12:	fff807b7          	lui	a5,0xfff80
   19a16:	17fd                	addi	a5,a5,-1 # fff7ffff <__BSS_END__+0xfff63353>
   19a18:	8efd                	and	a3,a3,a5
   19a1a:	d636                	sw	a3,44(sp)
   19a1c:	4785                	li	a5,1
   19a1e:	b3d9                	j	197e4 <__subtf3+0x37c>
   19a20:	6521                	lui	a0,0x8
   19a22:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   19a24:	04a41363          	bne	s0,a0,19a6a <__subtf3+0x602>
   19a28:	300788e3          	beqz	a5,1a538 <__subtf3+0x10d0>
   19a2c:	0125d413          	srli	s0,a1,0x12
   19a30:	00144413          	xori	s0,s0,1
   19a34:	8805                	andi	s0,s0,1
   19a36:	0412                	slli	s0,s0,0x4
   19a38:	02aa9d63          	bne	s5,a0,19a72 <__subtf3+0x60a>
   19a3c:	018be533          	or	a0,s7,s8
   19a40:	01656533          	or	a0,a0,s6
   19a44:	8d45                	or	a0,a0,s1
   19a46:	c50d                	beqz	a0,19a70 <__subtf3+0x608>
   19a48:	00db1513          	slli	a0,s6,0xd
   19a4c:	02054263          	bltz	a0,19a70 <__subtf3+0x608>
   19a50:	4441                	li	s0,16
   19a52:	eb85                	bnez	a5,19a82 <__subtf3+0x61a>
   19a54:	8726                	mv	a4,s1
   19a56:	865e                	mv	a2,s7
   19a58:	86e2                	mv	a3,s8
   19a5a:	85da                	mv	a1,s6
   19a5c:	d03a                	sw	a4,32(sp)
   19a5e:	d232                	sw	a2,36(sp)
   19a60:	d436                	sw	a3,40(sp)
   19a62:	d62e                	sw	a1,44(sp)
   19a64:	67a1                	lui	a5,0x8
   19a66:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   19a68:	bbb5                	j	197e4 <__subtf3+0x37c>
   19a6a:	4401                	li	s0,0
   19a6c:	fcaa88e3          	beq	s5,a0,19a3c <__subtf3+0x5d4>
   19a70:	d3f5                	beqz	a5,19a54 <__subtf3+0x5ec>
   19a72:	018bebb3          	or	s7,s7,s8
   19a76:	016bebb3          	or	s7,s7,s6
   19a7a:	009bebb3          	or	s7,s7,s1
   19a7e:	fc0b8fe3          	beqz	s7,19a5c <__subtf3+0x5f4>
   19a82:	67a1                	lui	a5,0x8
   19a84:	d63e                	sw	a5,44(sp)
   19a86:	d402                	sw	zero,40(sp)
   19a88:	d202                	sw	zero,36(sp)
   19a8a:	d002                	sw	zero,32(sp)
   19a8c:	101c                	addi	a5,sp,32
   19a8e:	0850                	addi	a2,sp,20
   19a90:	47d8                	lw	a4,12(a5)
   19a92:	4794                	lw	a3,8(a5)
   19a94:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   19a96:	070e                	slli	a4,a4,0x3
   19a98:	82f5                	srli	a3,a3,0x1d
   19a9a:	8f55                	or	a4,a4,a3
   19a9c:	cb98                	sw	a4,16(a5)
   19a9e:	fef619e3          	bne	a2,a5,19a90 <__subtf3+0x628>
   19aa2:	4981                	li	s3,0
   19aa4:	b7c1                	j	19a64 <__subtf3+0x5fc>
   19aa6:	4401                	li	s0,0
   19aa8:	bf51                	j	19a3c <__subtf3+0x5d4>
   19aaa:	94ba                	add	s1,s1,a4
   19aac:	9bb2                	add	s7,s7,a2
   19aae:	d026                	sw	s1,32(sp)
   19ab0:	00e4b4b3          	sltu	s1,s1,a4
   19ab4:	94de                	add	s1,s1,s7
   19ab6:	d226                	sw	s1,36(sp)
   19ab8:	00cbb633          	sltu	a2,s7,a2
   19abc:	0174b4b3          	sltu	s1,s1,s7
   19ac0:	9c36                	add	s8,s8,a3
   19ac2:	8e45                	or	a2,a2,s1
   19ac4:	9662                	add	a2,a2,s8
   19ac6:	d432                	sw	a2,40(sp)
   19ac8:	00dc36b3          	sltu	a3,s8,a3
   19acc:	01863633          	sltu	a2,a2,s8
   19ad0:	8ed1                	or	a3,a3,a2
   19ad2:	95da                	add	a1,a1,s6
   19ad4:	96ae                	add	a3,a3,a1
   19ad6:	d636                	sw	a3,44(sp)
   19ad8:	1018                	addi	a4,sp,32
   19ada:	1068                	addi	a0,sp,44
   19adc:	4310                	lw	a2,0(a4)
   19ade:	434c                	lw	a1,4(a4)
   19ae0:	8205                	srli	a2,a2,0x1
   19ae2:	05fe                	slli	a1,a1,0x1f
   19ae4:	8e4d                	or	a2,a2,a1
   19ae6:	c310                	sw	a2,0(a4)
   19ae8:	0711                	addi	a4,a4,4
   19aea:	fee519e3          	bne	a0,a4,19adc <__subtf3+0x674>
   19aee:	6721                	lui	a4,0x8
   19af0:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19af2:	c6e782e3          	beq	a5,a4,19756 <__subtf3+0x2ee>
   19af6:	8285                	srli	a3,a3,0x1
   19af8:	d636                	sw	a3,44(sp)
   19afa:	4401                	li	s0,0
   19afc:	b1e5                	j	197e4 <__subtf3+0x37c>
   19afe:	4789                	li	a5,2
   19b00:	c6fa12e3          	bne	s4,a5,19764 <__subtf3+0x2fc>
   19b04:	c60980e3          	beqz	s3,19764 <__subtf3+0x2fc>
   19b08:	67a1                	lui	a5,0x8
   19b0a:	d602                	sw	zero,44(sp)
   19b0c:	d402                	sw	zero,40(sp)
   19b0e:	d202                	sw	zero,36(sp)
   19b10:	d002                	sw	zero,32(sp)
   19b12:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   19b14:	4415                	li	s0,5
   19b16:	b1f9                	j	197e4 <__subtf3+0x37c>
   19b18:	22f05b63          	blez	a5,19d4e <__subtf3+0x8e6>
   19b1c:	4592                	lw	a1,4(sp)
   19b1e:	4522                	lw	a0,8(sp)
   19b20:	48b2                	lw	a7,12(sp)
   19b22:	0a0a9563          	bnez	s5,19bcc <__subtf3+0x764>
   19b26:	4ed2                	lw	t4,20(sp)
   19b28:	4fe2                	lw	t6,24(sp)
   19b2a:	4672                	lw	a2,28(sp)
   19b2c:	01fee6b3          	or	a3,t4,t6
   19b30:	8ed1                	or	a3,a3,a2
   19b32:	8ec5                	or	a3,a3,s1
   19b34:	e69d                	bnez	a3,19b62 <__subtf3+0x6fa>
   19b36:	66a1                	lui	a3,0x8
   19b38:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19b3a:	00d79f63          	bne	a5,a3,19b58 <__subtf3+0x6f0>
   19b3e:	00a5e6b3          	or	a3,a1,a0
   19b42:	0116e6b3          	or	a3,a3,a7
   19b46:	8ed9                	or	a3,a3,a4
   19b48:	ca81                	beqz	a3,19b58 <__subtf3+0x6f0>
   19b4a:	0128da93          	srli	s5,a7,0x12
   19b4e:	001aca93          	xori	s5,s5,1
   19b52:	001afa93          	andi	s5,s5,1
   19b56:	0a92                	slli	s5,s5,0x4
   19b58:	d03a                	sw	a4,32(sp)
   19b5a:	d22e                	sw	a1,36(sp)
   19b5c:	d42a                	sw	a0,40(sp)
   19b5e:	d646                	sw	a7,44(sp)
   19b60:	b435                	j	1958c <__subtf3+0x124>
   19b62:	fff78f13          	addi	t5,a5,-1
   19b66:	040f1663          	bnez	t5,19bb2 <__subtf3+0x74a>
   19b6a:	409706b3          	sub	a3,a4,s1
   19b6e:	41d58833          	sub	a6,a1,t4
   19b72:	00d73333          	sltu	t1,a4,a3
   19b76:	0105b7b3          	sltu	a5,a1,a6
   19b7a:	40680833          	sub	a6,a6,t1
   19b7e:	4301                	li	t1,0
   19b80:	00d77663          	bgeu	a4,a3,19b8c <__subtf3+0x724>
   19b84:	40be8eb3          	sub	t4,t4,a1
   19b88:	001eb313          	seqz	t1,t4
   19b8c:	00f36733          	or	a4,t1,a5
   19b90:	41f505b3          	sub	a1,a0,t6
   19b94:	00b53333          	sltu	t1,a0,a1
   19b98:	8d99                	sub	a1,a1,a4
   19b9a:	c709                	beqz	a4,19ba4 <__subtf3+0x73c>
   19b9c:	40af87b3          	sub	a5,t6,a0
   19ba0:	0017bf13          	seqz	t5,a5
   19ba4:	40c88733          	sub	a4,a7,a2
   19ba8:	006f67b3          	or	a5,t5,t1
   19bac:	8f1d                	sub	a4,a4,a5
   19bae:	4785                	li	a5,1
   19bb0:	aab9                	j	19d0e <__subtf3+0x8a6>
   19bb2:	66a1                	lui	a3,0x8
   19bb4:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19bb6:	f8d784e3          	beq	a5,a3,19b3e <__subtf3+0x6d6>
   19bba:	07400793          	li	a5,116
   19bbe:	05e7d763          	bge	a5,t5,19c0c <__subtf3+0x7a4>
   19bc2:	ce02                	sw	zero,28(sp)
   19bc4:	cc02                	sw	zero,24(sp)
   19bc6:	ca02                	sw	zero,20(sp)
   19bc8:	4685                	li	a3,1
   19bca:	a8e5                	j	19cc2 <__subtf3+0x85a>
   19bcc:	66a1                	lui	a3,0x8
   19bce:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   19bd0:	02d41463          	bne	s0,a3,19bf8 <__subtf3+0x790>
   19bd4:	00a5e7b3          	or	a5,a1,a0
   19bd8:	0117e7b3          	or	a5,a5,a7
   19bdc:	8fd9                	or	a5,a5,a4
   19bde:	4681                	li	a3,0
   19be0:	c799                	beqz	a5,19bee <__subtf3+0x786>
   19be2:	0128d693          	srli	a3,a7,0x12
   19be6:	0016c693          	xori	a3,a3,1
   19bea:	8a85                	andi	a3,a3,1
   19bec:	0692                	slli	a3,a3,0x4
   19bee:	d03a                	sw	a4,32(sp)
   19bf0:	d22e                	sw	a1,36(sp)
   19bf2:	d42a                	sw	a0,40(sp)
   19bf4:	d646                	sw	a7,44(sp)
   19bf6:	bc09                	j	19608 <__subtf3+0x1a0>
   19bf8:	46f2                	lw	a3,28(sp)
   19bfa:	00080637          	lui	a2,0x80
   19bfe:	8ed1                	or	a3,a3,a2
   19c00:	ce36                	sw	a3,28(sp)
   19c02:	07400693          	li	a3,116
   19c06:	faf6cee3          	blt	a3,a5,19bc2 <__subtf3+0x75a>
   19c0a:	8f3e                	mv	t5,a5
   19c0c:	405f5793          	srai	a5,t5,0x5
   19c10:	8342                	mv	t1,a6
   19c12:	01ff7f13          	andi	t5,t5,31
   19c16:	4681                	li	a3,0
   19c18:	4601                	li	a2,0
   19c1a:	02f61663          	bne	a2,a5,19c46 <__subtf3+0x7de>
   19c1e:	460d                	li	a2,3
   19c20:	8e1d                	sub	a2,a2,a5
   19c22:	00279313          	slli	t1,a5,0x2
   19c26:	020f1763          	bnez	t5,19c54 <__subtf3+0x7ec>
   19c2a:	00680eb3          	add	t4,a6,t1
   19c2e:	000eae83          	lw	t4,0(t4)
   19c32:	0f05                	addi	t5,t5,1
   19c34:	0811                	addi	a6,a6,4
   19c36:	ffd82e23          	sw	t4,-4(a6)
   19c3a:	ffe658e3          	bge	a2,t5,19c2a <__subtf3+0x7c2>
   19c3e:	4611                	li	a2,4
   19c40:	40f607b3          	sub	a5,a2,a5
   19c44:	a881                	j	19c94 <__subtf3+0x82c>
   19c46:	00032e83          	lw	t4,0(t1)
   19c4a:	0605                	addi	a2,a2,1 # 80001 <__BSS_END__+0x63355>
   19c4c:	0311                	addi	t1,t1,4
   19c4e:	01d6e6b3          	or	a3,a3,t4
   19c52:	b7e1                	j	19c1a <__subtf3+0x7b2>
   19c54:	04030493          	addi	s1,t1,64
   19c58:	00248eb3          	add	t4,s1,sp
   19c5c:	fd0eae83          	lw	t4,-48(t4)
   19c60:	02000393          	li	t2,32
   19c64:	41e383b3          	sub	t2,t2,t5
   19c68:	007e9eb3          	sll	t4,t4,t2
   19c6c:	981a                	add	a6,a6,t1
   19c6e:	01d6e6b3          	or	a3,a3,t4
   19c72:	40600333          	neg	t1,t1
   19c76:	4f81                	li	t6,0
   19c78:	0acfca63          	blt	t6,a2,19d2c <__subtf3+0x8c4>
   19c7c:	4811                	li	a6,4
   19c7e:	40f807b3          	sub	a5,a6,a5
   19c82:	4872                	lw	a6,28(sp)
   19c84:	060a                	slli	a2,a2,0x2
   19c86:	04060613          	addi	a2,a2,64
   19c8a:	960a                	add	a2,a2,sp
   19c8c:	01e85833          	srl	a6,a6,t5
   19c90:	fd062823          	sw	a6,-48(a2)
   19c94:	4611                	li	a2,4
   19c96:	8e1d                	sub	a2,a2,a5
   19c98:	060a                	slli	a2,a2,0x2
   19c9a:	078a                	slli	a5,a5,0x2
   19c9c:	4821                	li	a6,8
   19c9e:	97f2                	add	a5,a5,t3
   19ca0:	01066863          	bltu	a2,a6,19cb0 <__subtf3+0x848>
   19ca4:	0007a023          	sw	zero,0(a5)
   19ca8:	0007a223          	sw	zero,4(a5)
   19cac:	1661                	addi	a2,a2,-8
   19cae:	07a1                	addi	a5,a5,8
   19cb0:	4811                	li	a6,4
   19cb2:	01066463          	bltu	a2,a6,19cba <__subtf3+0x852>
   19cb6:	0007a023          	sw	zero,0(a5)
   19cba:	47c2                	lw	a5,16(sp)
   19cbc:	00d036b3          	snez	a3,a3
   19cc0:	8edd                	or	a3,a3,a5
   19cc2:	4652                	lw	a2,20(sp)
   19cc4:	c836                	sw	a3,16(sp)
   19cc6:	40d706b3          	sub	a3,a4,a3
   19cca:	40c58833          	sub	a6,a1,a2
   19cce:	00d737b3          	sltu	a5,a4,a3
   19cd2:	0105b333          	sltu	t1,a1,a6
   19cd6:	40f80833          	sub	a6,a6,a5
   19cda:	4781                	li	a5,0
   19cdc:	00d77563          	bgeu	a4,a3,19ce6 <__subtf3+0x87e>
   19ce0:	8e0d                	sub	a2,a2,a1
   19ce2:	00163793          	seqz	a5,a2
   19ce6:	4762                	lw	a4,24(sp)
   19ce8:	0067e7b3          	or	a5,a5,t1
   19cec:	4601                	li	a2,0
   19cee:	40e505b3          	sub	a1,a0,a4
   19cf2:	00b53333          	sltu	t1,a0,a1
   19cf6:	8d9d                	sub	a1,a1,a5
   19cf8:	c781                	beqz	a5,19d00 <__subtf3+0x898>
   19cfa:	8f09                	sub	a4,a4,a0
   19cfc:	00173613          	seqz	a2,a4
   19d00:	4772                	lw	a4,28(sp)
   19d02:	00666633          	or	a2,a2,t1
   19d06:	87a2                	mv	a5,s0
   19d08:	40e88733          	sub	a4,a7,a4
   19d0c:	8f11                	sub	a4,a4,a2
   19d0e:	d036                	sw	a3,32(sp)
   19d10:	d63a                	sw	a4,44(sp)
   19d12:	d42e                	sw	a1,40(sp)
   19d14:	d242                	sw	a6,36(sp)
   19d16:	00c71693          	slli	a3,a4,0xc
   19d1a:	de06d0e3          	bgez	a3,19afa <__subtf3+0x692>
   19d1e:	000806b7          	lui	a3,0x80
   19d22:	16fd                	addi	a3,a3,-1 # 7ffff <__BSS_END__+0x63353>
   19d24:	8f75                	and	a4,a4,a3
   19d26:	d63a                	sw	a4,44(sp)
   19d28:	843e                	mv	s0,a5
   19d2a:	a1bd                	j	1a198 <__subtf3+0xd30>
   19d2c:	00082e83          	lw	t4,0(a6)
   19d30:	00482283          	lw	t0,4(a6)
   19d34:	006804b3          	add	s1,a6,t1
   19d38:	01eedeb3          	srl	t4,t4,t5
   19d3c:	007292b3          	sll	t0,t0,t2
   19d40:	005eeeb3          	or	t4,t4,t0
   19d44:	01d4a023          	sw	t4,0(s1)
   19d48:	0f85                	addi	t6,t6,1
   19d4a:	0811                	addi	a6,a6,4
   19d4c:	b735                	j	19c78 <__subtf3+0x810>
   19d4e:	4bd2                	lw	s7,20(sp)
   19d50:	4b62                	lw	s6,24(sp)
   19d52:	4c72                	lw	s8,28(sp)
   19d54:	20078763          	beqz	a5,19f62 <__subtf3+0xafa>
   19d58:	408a87b3          	sub	a5,s5,s0
   19d5c:	e05d                	bnez	s0,19e02 <__subtf3+0x99a>
   19d5e:	4892                	lw	a7,4(sp)
   19d60:	4e22                	lw	t3,8(sp)
   19d62:	4632                	lw	a2,12(sp)
   19d64:	01c8e6b3          	or	a3,a7,t3
   19d68:	8ed1                	or	a3,a3,a2
   19d6a:	8ed9                	or	a3,a3,a4
   19d6c:	e69d                	bnez	a3,19d9a <__subtf3+0x932>
   19d6e:	6721                	lui	a4,0x8
   19d70:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19d72:	00e79e63          	bne	a5,a4,19d8e <__subtf3+0x926>
   19d76:	016be733          	or	a4,s7,s6
   19d7a:	01876733          	or	a4,a4,s8
   19d7e:	8f45                	or	a4,a4,s1
   19d80:	c719                	beqz	a4,19d8e <__subtf3+0x926>
   19d82:	012c5413          	srli	s0,s8,0x12
   19d86:	00144413          	xori	s0,s0,1
   19d8a:	8805                	andi	s0,s0,1
   19d8c:	0412                	slli	s0,s0,0x4
   19d8e:	d026                	sw	s1,32(sp)
   19d90:	d25e                	sw	s7,36(sp)
   19d92:	d45a                	sw	s6,40(sp)
   19d94:	d662                	sw	s8,44(sp)
   19d96:	89e6                	mv	s3,s9
   19d98:	b4b1                	j	197e4 <__subtf3+0x37c>
   19d9a:	fff78313          	addi	t1,a5,-1
   19d9e:	04031563          	bnez	t1,19de8 <__subtf3+0x980>
   19da2:	40e486b3          	sub	a3,s1,a4
   19da6:	411b8833          	sub	a6,s7,a7
   19daa:	00d4b733          	sltu	a4,s1,a3
   19dae:	010bb7b3          	sltu	a5,s7,a6
   19db2:	40e80833          	sub	a6,a6,a4
   19db6:	4701                	li	a4,0
   19db8:	00d4f663          	bgeu	s1,a3,19dc4 <__subtf3+0x95c>
   19dbc:	417888b3          	sub	a7,a7,s7
   19dc0:	0018b713          	seqz	a4,a7
   19dc4:	41cb05b3          	sub	a1,s6,t3
   19dc8:	8f5d                	or	a4,a4,a5
   19dca:	00bb3533          	sltu	a0,s6,a1
   19dce:	8d99                	sub	a1,a1,a4
   19dd0:	c709                	beqz	a4,19dda <__subtf3+0x972>
   19dd2:	416e07b3          	sub	a5,t3,s6
   19dd6:	0017b313          	seqz	t1,a5
   19dda:	40cc0733          	sub	a4,s8,a2
   19dde:	00a367b3          	or	a5,t1,a0
   19de2:	8f1d                	sub	a4,a4,a5
   19de4:	89e6                	mv	s3,s9
   19de6:	b3e1                	j	19bae <__subtf3+0x746>
   19de8:	6721                	lui	a4,0x8
   19dea:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19dec:	f8e785e3          	beq	a5,a4,19d76 <__subtf3+0x90e>
   19df0:	07400793          	li	a5,116
   19df4:	0467d863          	bge	a5,t1,19e44 <__subtf3+0x9dc>
   19df8:	c602                	sw	zero,12(sp)
   19dfa:	c402                	sw	zero,8(sp)
   19dfc:	c202                	sw	zero,4(sp)
   19dfe:	4685                	li	a3,1
   19e00:	a8cd                	j	19ef2 <__subtf3+0xa8a>
   19e02:	6721                	lui	a4,0x8
   19e04:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   19e06:	02ea9563          	bne	s5,a4,19e30 <__subtf3+0x9c8>
   19e0a:	016be7b3          	or	a5,s7,s6
   19e0e:	0187e7b3          	or	a5,a5,s8
   19e12:	8fc5                	or	a5,a5,s1
   19e14:	4401                	li	s0,0
   19e16:	c799                	beqz	a5,19e24 <__subtf3+0x9bc>
   19e18:	012c5413          	srli	s0,s8,0x12
   19e1c:	00144413          	xori	s0,s0,1
   19e20:	8805                	andi	s0,s0,1
   19e22:	0412                	slli	s0,s0,0x4
   19e24:	d026                	sw	s1,32(sp)
   19e26:	d25e                	sw	s7,36(sp)
   19e28:	d45a                	sw	s6,40(sp)
   19e2a:	d662                	sw	s8,44(sp)
   19e2c:	87d6                	mv	a5,s5
   19e2e:	b7a5                	j	19d96 <__subtf3+0x92e>
   19e30:	4732                	lw	a4,12(sp)
   19e32:	000806b7          	lui	a3,0x80
   19e36:	8f55                	or	a4,a4,a3
   19e38:	c63a                	sw	a4,12(sp)
   19e3a:	07400713          	li	a4,116
   19e3e:	faf74de3          	blt	a4,a5,19df8 <__subtf3+0x990>
   19e42:	833e                	mv	t1,a5
   19e44:	02000793          	li	a5,32
   19e48:	02f347b3          	div	a5,t1,a5
   19e4c:	86ae                	mv	a3,a1
   19e4e:	4401                	li	s0,0
   19e50:	4701                	li	a4,0
   19e52:	02f74663          	blt	a4,a5,19e7e <__subtf3+0xa16>
   19e56:	470d                	li	a4,3
   19e58:	01f37813          	andi	a6,t1,31
   19e5c:	8f1d                	sub	a4,a4,a5
   19e5e:	00279613          	slli	a2,a5,0x2
   19e62:	02081363          	bnez	a6,19e88 <__subtf3+0xa20>
   19e66:	00c586b3          	add	a3,a1,a2
   19e6a:	4294                	lw	a3,0(a3)
   19e6c:	0805                	addi	a6,a6,1
   19e6e:	c194                	sw	a3,0(a1)
   19e70:	0591                	addi	a1,a1,4
   19e72:	ff075ae3          	bge	a4,a6,19e66 <__subtf3+0x9fe>
   19e76:	4711                	li	a4,4
   19e78:	40f707b3          	sub	a5,a4,a5
   19e7c:	a899                	j	19ed2 <__subtf3+0xa6a>
   19e7e:	4290                	lw	a2,0(a3)
   19e80:	0705                	addi	a4,a4,1
   19e82:	0691                	addi	a3,a3,4 # 80004 <__BSS_END__+0x63358>
   19e84:	8c51                	or	s0,s0,a2
   19e86:	b7f1                	j	19e52 <__subtf3+0x9ea>
   19e88:	02000693          	li	a3,32
   19e8c:	02d36333          	rem	t1,t1,a3
   19e90:	40668333          	sub	t1,a3,t1
   19e94:	86be                	mv	a3,a5
   19e96:	0007d363          	bgez	a5,19e9c <__subtf3+0xa34>
   19e9a:	4681                	li	a3,0
   19e9c:	068a                	slli	a3,a3,0x2
   19e9e:	04068693          	addi	a3,a3,64
   19ea2:	968a                	add	a3,a3,sp
   19ea4:	fc06a683          	lw	a3,-64(a3)
   19ea8:	95b2                	add	a1,a1,a2
   19eaa:	4881                	li	a7,0
   19eac:	006696b3          	sll	a3,a3,t1
   19eb0:	8c55                	or	s0,s0,a3
   19eb2:	40c00633          	neg	a2,a2
   19eb6:	08e8c663          	blt	a7,a4,19f42 <__subtf3+0xada>
   19eba:	4691                	li	a3,4
   19ebc:	40f687b3          	sub	a5,a3,a5
   19ec0:	46b2                	lw	a3,12(sp)
   19ec2:	070a                	slli	a4,a4,0x2
   19ec4:	04070713          	addi	a4,a4,64
   19ec8:	970a                	add	a4,a4,sp
   19eca:	0106d6b3          	srl	a3,a3,a6
   19ece:	fcd72023          	sw	a3,-64(a4)
   19ed2:	0057a713          	slti	a4,a5,5
   19ed6:	4601                	li	a2,0
   19ed8:	c701                	beqz	a4,19ee0 <__subtf3+0xa78>
   19eda:	4611                	li	a2,4
   19edc:	8e1d                	sub	a2,a2,a5
   19ede:	060a                	slli	a2,a2,0x2
   19ee0:	078a                	slli	a5,a5,0x2
   19ee2:	953e                	add	a0,a0,a5
   19ee4:	4581                	li	a1,0
   19ee6:	cd4f70ef          	jal	113ba <memset>
   19eea:	4782                	lw	a5,0(sp)
   19eec:	008036b3          	snez	a3,s0
   19ef0:	8edd                	or	a3,a3,a5
   19ef2:	4712                	lw	a4,4(sp)
   19ef4:	c036                	sw	a3,0(sp)
   19ef6:	40d486b3          	sub	a3,s1,a3
   19efa:	40eb8833          	sub	a6,s7,a4
   19efe:	00d4b7b3          	sltu	a5,s1,a3
   19f02:	010bb633          	sltu	a2,s7,a6
   19f06:	40f80833          	sub	a6,a6,a5
   19f0a:	4781                	li	a5,0
   19f0c:	00d4f663          	bgeu	s1,a3,19f18 <__subtf3+0xab0>
   19f10:	41770733          	sub	a4,a4,s7
   19f14:	00173793          	seqz	a5,a4
   19f18:	4722                	lw	a4,8(sp)
   19f1a:	8fd1                	or	a5,a5,a2
   19f1c:	4601                	li	a2,0
   19f1e:	40eb05b3          	sub	a1,s6,a4
   19f22:	00bb3533          	sltu	a0,s6,a1
   19f26:	8d9d                	sub	a1,a1,a5
   19f28:	c789                	beqz	a5,19f32 <__subtf3+0xaca>
   19f2a:	41670733          	sub	a4,a4,s6
   19f2e:	00173613          	seqz	a2,a4
   19f32:	4732                	lw	a4,12(sp)
   19f34:	8e49                	or	a2,a2,a0
   19f36:	87d6                	mv	a5,s5
   19f38:	40ec0733          	sub	a4,s8,a4
   19f3c:	8f11                	sub	a4,a4,a2
   19f3e:	89e6                	mv	s3,s9
   19f40:	b3f9                	j	19d0e <__subtf3+0x8a6>
   19f42:	4194                	lw	a3,0(a1)
   19f44:	0045ae03          	lw	t3,4(a1)
   19f48:	00c58eb3          	add	t4,a1,a2
   19f4c:	0106d6b3          	srl	a3,a3,a6
   19f50:	006e1e33          	sll	t3,t3,t1
   19f54:	01c6e6b3          	or	a3,a3,t3
   19f58:	00dea023          	sw	a3,0(t4)
   19f5c:	0885                	addi	a7,a7,1
   19f5e:	0591                	addi	a1,a1,4
   19f60:	bf99                	j	19eb6 <__subtf3+0xa4e>
   19f62:	00140693          	addi	a3,s0,1
   19f66:	01169813          	slli	a6,a3,0x11
   19f6a:	01285813          	srli	a6,a6,0x12
   19f6e:	4612                	lw	a2,4(sp)
   19f70:	45a2                	lw	a1,8(sp)
   19f72:	4532                	lw	a0,12(sp)
   19f74:	18081363          	bnez	a6,1a0fa <__subtf3+0xc92>
   19f78:	016be7b3          	or	a5,s7,s6
   19f7c:	00b666b3          	or	a3,a2,a1
   19f80:	0187e7b3          	or	a5,a5,s8
   19f84:	8ec9                	or	a3,a3,a0
   19f86:	8fc5                	or	a5,a5,s1
   19f88:	8ed9                	or	a3,a3,a4
   19f8a:	e869                	bnez	s0,1a05c <__subtf3+0xbf4>
   19f8c:	ea99                	bnez	a3,19fa2 <__subtf3+0xb3a>
   19f8e:	d026                	sw	s1,32(sp)
   19f90:	d25e                	sw	s7,36(sp)
   19f92:	d45a                	sw	s6,40(sp)
   19f94:	d662                	sw	s8,44(sp)
   19f96:	ebcd                	bnez	a5,1a048 <__subtf3+0xbe0>
   19f98:	ffea0993          	addi	s3,s4,-2
   19f9c:	0019b993          	seqz	s3,s3
   19fa0:	b429                	j	199aa <__subtf3+0x542>
   19fa2:	e791                	bnez	a5,19fae <__subtf3+0xb46>
   19fa4:	d03a                	sw	a4,32(sp)
   19fa6:	d232                	sw	a2,36(sp)
   19fa8:	d42e                	sw	a1,40(sp)
   19faa:	d62a                	sw	a0,44(sp)
   19fac:	bafd                	j	199aa <__subtf3+0x542>
   19fae:	409707b3          	sub	a5,a4,s1
   19fb2:	41760e33          	sub	t3,a2,s7
   19fb6:	00f73833          	sltu	a6,a4,a5
   19fba:	01c638b3          	sltu	a7,a2,t3
   19fbe:	410e0833          	sub	a6,t3,a6
   19fc2:	4681                	li	a3,0
   19fc4:	00f77463          	bgeu	a4,a5,19fcc <__subtf3+0xb64>
   19fc8:	001e3693          	seqz	a3,t3
   19fcc:	0116e6b3          	or	a3,a3,a7
   19fd0:	416588b3          	sub	a7,a1,s6
   19fd4:	0115bf33          	sltu	t5,a1,a7
   19fd8:	40d88eb3          	sub	t4,a7,a3
   19fdc:	4301                	li	t1,0
   19fde:	c299                	beqz	a3,19fe4 <__subtf3+0xb7c>
   19fe0:	0018b313          	seqz	t1,a7
   19fe4:	01e36333          	or	t1,t1,t5
   19fe8:	418506b3          	sub	a3,a0,s8
   19fec:	406686b3          	sub	a3,a3,t1
   19ff0:	d636                	sw	a3,44(sp)
   19ff2:	d476                	sw	t4,40(sp)
   19ff4:	d242                	sw	a6,36(sp)
   19ff6:	d03e                	sw	a5,32(sp)
   19ff8:	00c69313          	slli	t1,a3,0xc
   19ffc:	04035863          	bgez	t1,1a04c <__subtf3+0xbe4>
   1a000:	40e48733          	sub	a4,s1,a4
   1a004:	40cb8633          	sub	a2,s7,a2
   1a008:	00e4b7b3          	sltu	a5,s1,a4
   1a00c:	00cbbbb3          	sltu	s7,s7,a2
   1a010:	8e1d                	sub	a2,a2,a5
   1a012:	4781                	li	a5,0
   1a014:	00e4f463          	bgeu	s1,a4,1a01c <__subtf3+0xbb4>
   1a018:	001e3793          	seqz	a5,t3
   1a01c:	40bb05b3          	sub	a1,s6,a1
   1a020:	0177ebb3          	or	s7,a5,s7
   1a024:	00bb3b33          	sltu	s6,s6,a1
   1a028:	417585b3          	sub	a1,a1,s7
   1a02c:	000b8463          	beqz	s7,1a034 <__subtf3+0xbcc>
   1a030:	0018b413          	seqz	s0,a7
   1a034:	40ac0533          	sub	a0,s8,a0
   1a038:	01646b33          	or	s6,s0,s6
   1a03c:	41650533          	sub	a0,a0,s6
   1a040:	d62a                	sw	a0,44(sp)
   1a042:	d42e                	sw	a1,40(sp)
   1a044:	d232                	sw	a2,36(sp)
   1a046:	d03a                	sw	a4,32(sp)
   1a048:	89e6                	mv	s3,s9
   1a04a:	b285                	j	199aa <__subtf3+0x542>
   1a04c:	0107e7b3          	or	a5,a5,a6
   1a050:	01d7e7b3          	or	a5,a5,t4
   1a054:	8fd5                	or	a5,a5,a3
   1a056:	94079ae3          	bnez	a5,199aa <__subtf3+0x542>
   1a05a:	bf3d                	j	19f98 <__subtf3+0xb30>
   1a05c:	6821                	lui	a6,0x8
   1a05e:	187d                	addi	a6,a6,-1 # 7fff <exit-0x8095>
   1a060:	03041263          	bne	s0,a6,1a084 <__subtf3+0xc1c>
   1a064:	4c068f63          	beqz	a3,1a542 <__subtf3+0x10da>
   1a068:	01255413          	srli	s0,a0,0x12
   1a06c:	00144413          	xori	s0,s0,1
   1a070:	8805                	andi	s0,s0,1
   1a072:	0412                	slli	s0,s0,0x4
   1a074:	010a8b63          	beq	s5,a6,1a08a <__subtf3+0xc22>
   1a078:	ebb1                	bnez	a5,1a0cc <__subtf3+0xc64>
   1a07a:	d03a                	sw	a4,32(sp)
   1a07c:	d232                	sw	a2,36(sp)
   1a07e:	d42e                	sw	a1,40(sp)
   1a080:	d62a                	sw	a0,44(sp)
   1a082:	b2cd                	j	19a64 <__subtf3+0x5fc>
   1a084:	4401                	li	s0,0
   1a086:	010a9363          	bne	s5,a6,1a08c <__subtf3+0xc24>
   1a08a:	eb9d                	bnez	a5,1a0c0 <__subtf3+0xc58>
   1a08c:	f6f5                	bnez	a3,1a078 <__subtf3+0xc10>
   1a08e:	e3a5                	bnez	a5,1a0ee <__subtf3+0xc86>
   1a090:	67a1                	lui	a5,0x8
   1a092:	d63e                	sw	a5,44(sp)
   1a094:	d402                	sw	zero,40(sp)
   1a096:	d202                	sw	zero,36(sp)
   1a098:	d002                	sw	zero,32(sp)
   1a09a:	101c                	addi	a5,sp,32
   1a09c:	0850                	addi	a2,sp,20
   1a09e:	47d8                	lw	a4,12(a5)
   1a0a0:	4794                	lw	a3,8(a5)
   1a0a2:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1a0a4:	070e                	slli	a4,a4,0x3
   1a0a6:	82f5                	srli	a3,a3,0x1d
   1a0a8:	8f55                	or	a4,a4,a3
   1a0aa:	cb98                	sw	a4,16(a5)
   1a0ac:	fef619e3          	bne	a2,a5,1a09e <__subtf3+0xc36>
   1a0b0:	67a1                	lui	a5,0x8
   1a0b2:	4981                	li	s3,0
   1a0b4:	17fd                	addi	a5,a5,-1 # 7fff <exit-0x8095>
   1a0b6:	4441                	li	s0,16
   1a0b8:	f2cff06f          	j	197e4 <__subtf3+0x37c>
   1a0bc:	4401                	li	s0,0
   1a0be:	b7f1                	j	1a08a <__subtf3+0xc22>
   1a0c0:	00dc1813          	slli	a6,s8,0xd
   1a0c4:	fc0844e3          	bltz	a6,1a08c <__subtf3+0xc24>
   1a0c8:	4441                	li	s0,16
   1a0ca:	c295                	beqz	a3,1a0ee <__subtf3+0xc86>
   1a0cc:	67a1                	lui	a5,0x8
   1a0ce:	d63e                	sw	a5,44(sp)
   1a0d0:	d402                	sw	zero,40(sp)
   1a0d2:	d202                	sw	zero,36(sp)
   1a0d4:	d002                	sw	zero,32(sp)
   1a0d6:	101c                	addi	a5,sp,32
   1a0d8:	0850                	addi	a2,sp,20
   1a0da:	47d8                	lw	a4,12(a5)
   1a0dc:	4794                	lw	a3,8(a5)
   1a0de:	17f1                	addi	a5,a5,-4 # 7ffc <exit-0x8098>
   1a0e0:	070e                	slli	a4,a4,0x3
   1a0e2:	82f5                	srli	a3,a3,0x1d
   1a0e4:	8f55                	or	a4,a4,a3
   1a0e6:	cb98                	sw	a4,16(a5)
   1a0e8:	fef619e3          	bne	a2,a5,1a0da <__subtf3+0xc72>
   1a0ec:	ba5d                	j	19aa2 <__subtf3+0x63a>
   1a0ee:	d026                	sw	s1,32(sp)
   1a0f0:	d25e                	sw	s7,36(sp)
   1a0f2:	d45a                	sw	s6,40(sp)
   1a0f4:	d662                	sw	s8,44(sp)
   1a0f6:	89e6                	mv	s3,s9
   1a0f8:	b2b5                	j	19a64 <__subtf3+0x5fc>
   1a0fa:	409706b3          	sub	a3,a4,s1
   1a0fe:	41760e33          	sub	t3,a2,s7
   1a102:	00d73eb3          	sltu	t4,a4,a3
   1a106:	01c638b3          	sltu	a7,a2,t3
   1a10a:	41de0eb3          	sub	t4,t3,t4
   1a10e:	4801                	li	a6,0
   1a110:	00d77463          	bgeu	a4,a3,1a118 <__subtf3+0xcb0>
   1a114:	001e3813          	seqz	a6,t3
   1a118:	01186833          	or	a6,a6,a7
   1a11c:	416588b3          	sub	a7,a1,s6
   1a120:	0115bf33          	sltu	t5,a1,a7
   1a124:	41088fb3          	sub	t6,a7,a6
   1a128:	4301                	li	t1,0
   1a12a:	00080463          	beqz	a6,1a132 <__subtf3+0xcca>
   1a12e:	0018b313          	seqz	t1,a7
   1a132:	01e36333          	or	t1,t1,t5
   1a136:	41850833          	sub	a6,a0,s8
   1a13a:	40680833          	sub	a6,a6,t1
   1a13e:	d642                	sw	a6,44(sp)
   1a140:	d47e                	sw	t6,40(sp)
   1a142:	d276                	sw	t4,36(sp)
   1a144:	d036                	sw	a3,32(sp)
   1a146:	00c81313          	slli	t1,a6,0xc
   1a14a:	10035163          	bgez	t1,1a24c <__subtf3+0xde4>
   1a14e:	40e48733          	sub	a4,s1,a4
   1a152:	40cb8633          	sub	a2,s7,a2
   1a156:	00e4b6b3          	sltu	a3,s1,a4
   1a15a:	00cbbbb3          	sltu	s7,s7,a2
   1a15e:	8e15                	sub	a2,a2,a3
   1a160:	4681                	li	a3,0
   1a162:	00e4f463          	bgeu	s1,a4,1a16a <__subtf3+0xd02>
   1a166:	001e3693          	seqz	a3,t3
   1a16a:	40bb05b3          	sub	a1,s6,a1
   1a16e:	0176ebb3          	or	s7,a3,s7
   1a172:	00bb3b33          	sltu	s6,s6,a1
   1a176:	417585b3          	sub	a1,a1,s7
   1a17a:	000b8463          	beqz	s7,1a182 <__subtf3+0xd1a>
   1a17e:	0018b793          	seqz	a5,a7
   1a182:	40ac0533          	sub	a0,s8,a0
   1a186:	0167eb33          	or	s6,a5,s6
   1a18a:	41650533          	sub	a0,a0,s6
   1a18e:	d62a                	sw	a0,44(sp)
   1a190:	d42e                	sw	a1,40(sp)
   1a192:	d232                	sw	a2,36(sp)
   1a194:	d03a                	sw	a4,32(sp)
   1a196:	89e6                	mv	s3,s9
   1a198:	5532                	lw	a0,44(sp)
   1a19a:	c169                	beqz	a0,1a25c <__subtf3+0xdf4>
   1a19c:	7dc000ef          	jal	1a978 <__clzsi2>
   1a1a0:	ff450793          	addi	a5,a0,-12
   1a1a4:	02000693          	li	a3,32
   1a1a8:	01f7f813          	andi	a6,a5,31
   1a1ac:	02d7c733          	div	a4,a5,a3
   1a1b0:	0c080763          	beqz	a6,1a27e <__subtf3+0xe16>
   1a1b4:	02010313          	addi	t1,sp,32
   1a1b8:	02d7e633          	rem	a2,a5,a3
   1a1bc:	40c685b3          	sub	a1,a3,a2
   1a1c0:	5671                	li	a2,-4
   1a1c2:	02c70633          	mul	a2,a4,a2
   1a1c6:	00c60693          	addi	a3,a2,12
   1a1ca:	969a                	add	a3,a3,t1
   1a1cc:	40c00633          	neg	a2,a2
   1a1d0:	0cd31763          	bne	t1,a3,1a29e <__subtf3+0xe36>
   1a1d4:	5602                	lw	a2,32(sp)
   1a1d6:	fff70693          	addi	a3,a4,-1
   1a1da:	070a                	slli	a4,a4,0x2
   1a1dc:	04070713          	addi	a4,a4,64
   1a1e0:	970a                	add	a4,a4,sp
   1a1e2:	01061633          	sll	a2,a2,a6
   1a1e6:	fec72023          	sw	a2,-32(a4)
   1a1ea:	00168713          	addi	a4,a3,1
   1a1ee:	070a                	slli	a4,a4,0x2
   1a1f0:	1014                	addi	a3,sp,32
   1a1f2:	4621                	li	a2,8
   1a1f4:	88b6                	mv	a7,a3
   1a1f6:	00c76863          	bltu	a4,a2,1a206 <__subtf3+0xd9e>
   1a1fa:	0006a023          	sw	zero,0(a3)
   1a1fe:	0006a223          	sw	zero,4(a3)
   1a202:	1761                	addi	a4,a4,-8
   1a204:	1034                	addi	a3,sp,40
   1a206:	4611                	li	a2,4
   1a208:	00c76463          	bltu	a4,a2,1a210 <__subtf3+0xda8>
   1a20c:	0006a023          	sw	zero,0(a3)
   1a210:	1487c863          	blt	a5,s0,1a360 <__subtf3+0xef8>
   1a214:	8f81                	sub	a5,a5,s0
   1a216:	0785                	addi	a5,a5,1
   1a218:	4057d713          	srai	a4,a5,0x5
   1a21c:	85c6                	mv	a1,a7
   1a21e:	8bfd                	andi	a5,a5,31
   1a220:	8646                	mv	a2,a7
   1a222:	4301                	li	t1,0
   1a224:	4681                	li	a3,0
   1a226:	08e69b63          	bne	a3,a4,1a2bc <__subtf3+0xe54>
   1a22a:	468d                	li	a3,3
   1a22c:	8e99                	sub	a3,a3,a4
   1a22e:	00271613          	slli	a2,a4,0x2
   1a232:	ebd9                	bnez	a5,1a2c8 <__subtf3+0xe60>
   1a234:	00c58533          	add	a0,a1,a2
   1a238:	4108                	lw	a0,0(a0)
   1a23a:	0785                	addi	a5,a5,1
   1a23c:	c188                	sw	a0,0(a1)
   1a23e:	0591                	addi	a1,a1,4
   1a240:	fef6dae3          	bge	a3,a5,1a234 <__subtf3+0xdcc>
   1a244:	4791                	li	a5,4
   1a246:	40e78733          	sub	a4,a5,a4
   1a24a:	a87d                	j	1a308 <__subtf3+0xea0>
   1a24c:	01d6e6b3          	or	a3,a3,t4
   1a250:	01f6e6b3          	or	a3,a3,t6
   1a254:	0106e6b3          	or	a3,a3,a6
   1a258:	f2a1                	bnez	a3,1a198 <__subtf3+0xd30>
   1a25a:	bb3d                	j	19f98 <__subtf3+0xb30>
   1a25c:	5522                	lw	a0,40(sp)
   1a25e:	c509                	beqz	a0,1a268 <__subtf3+0xe00>
   1a260:	2f21                	jal	1a978 <__clzsi2>
   1a262:	02050513          	addi	a0,a0,32
   1a266:	bf2d                	j	1a1a0 <__subtf3+0xd38>
   1a268:	5512                	lw	a0,36(sp)
   1a26a:	c509                	beqz	a0,1a274 <__subtf3+0xe0c>
   1a26c:	2731                	jal	1a978 <__clzsi2>
   1a26e:	04050513          	addi	a0,a0,64
   1a272:	b73d                	j	1a1a0 <__subtf3+0xd38>
   1a274:	5502                	lw	a0,32(sp)
   1a276:	2709                	jal	1a978 <__clzsi2>
   1a278:	06050513          	addi	a0,a0,96
   1a27c:	b715                	j	1a1a0 <__subtf3+0xd38>
   1a27e:	55f1                	li	a1,-4
   1a280:	02b705b3          	mul	a1,a4,a1
   1a284:	1074                	addi	a3,sp,44
   1a286:	460d                	li	a2,3
   1a288:	00b68533          	add	a0,a3,a1
   1a28c:	4108                	lw	a0,0(a0)
   1a28e:	167d                	addi	a2,a2,-1
   1a290:	16f1                	addi	a3,a3,-4
   1a292:	c2c8                	sw	a0,4(a3)
   1a294:	fee65ae3          	bge	a2,a4,1a288 <__subtf3+0xe20>
   1a298:	fff70693          	addi	a3,a4,-1
   1a29c:	b7b9                	j	1a1ea <__subtf3+0xd82>
   1a29e:	4288                	lw	a0,0(a3)
   1a2a0:	ffc6a883          	lw	a7,-4(a3)
   1a2a4:	00c68e33          	add	t3,a3,a2
   1a2a8:	01051533          	sll	a0,a0,a6
   1a2ac:	00b8d8b3          	srl	a7,a7,a1
   1a2b0:	01156533          	or	a0,a0,a7
   1a2b4:	00ae2023          	sw	a0,0(t3)
   1a2b8:	16f1                	addi	a3,a3,-4
   1a2ba:	bf19                	j	1a1d0 <__subtf3+0xd68>
   1a2bc:	4208                	lw	a0,0(a2)
   1a2be:	0685                	addi	a3,a3,1
   1a2c0:	0611                	addi	a2,a2,4
   1a2c2:	00a36333          	or	t1,t1,a0
   1a2c6:	b785                	j	1a226 <__subtf3+0xdbe>
   1a2c8:	04060593          	addi	a1,a2,64
   1a2cc:	958a                	add	a1,a1,sp
   1a2ce:	fe05a583          	lw	a1,-32(a1)
   1a2d2:	02000813          	li	a6,32
   1a2d6:	40f80833          	sub	a6,a6,a5
   1a2da:	010595b3          	sll	a1,a1,a6
   1a2de:	00b36333          	or	t1,t1,a1
   1a2e2:	4e01                	li	t3,0
   1a2e4:	00c885b3          	add	a1,a7,a2
   1a2e8:	40c00633          	neg	a2,a2
   1a2ec:	04de4a63          	blt	t3,a3,1a340 <__subtf3+0xed8>
   1a2f0:	4611                	li	a2,4
   1a2f2:	40e60733          	sub	a4,a2,a4
   1a2f6:	5632                	lw	a2,44(sp)
   1a2f8:	068a                	slli	a3,a3,0x2
   1a2fa:	04068693          	addi	a3,a3,64
   1a2fe:	968a                	add	a3,a3,sp
   1a300:	00f657b3          	srl	a5,a2,a5
   1a304:	fef6a023          	sw	a5,-32(a3)
   1a308:	4691                	li	a3,4
   1a30a:	8e99                	sub	a3,a3,a4
   1a30c:	070a                	slli	a4,a4,0x2
   1a30e:	00e887b3          	add	a5,a7,a4
   1a312:	00269713          	slli	a4,a3,0x2
   1a316:	46a1                	li	a3,8
   1a318:	00d76863          	bltu	a4,a3,1a328 <__subtf3+0xec0>
   1a31c:	0007a023          	sw	zero,0(a5)
   1a320:	0007a223          	sw	zero,4(a5)
   1a324:	1761                	addi	a4,a4,-8
   1a326:	07a1                	addi	a5,a5,8
   1a328:	4691                	li	a3,4
   1a32a:	00d76463          	bltu	a4,a3,1a332 <__subtf3+0xeca>
   1a32e:	0007a023          	sw	zero,0(a5)
   1a332:	5702                	lw	a4,32(sp)
   1a334:	006037b3          	snez	a5,t1
   1a338:	8fd9                	or	a5,a5,a4
   1a33a:	d03e                	sw	a5,32(sp)
   1a33c:	e6eff06f          	j	199aa <__subtf3+0x542>
   1a340:	4188                	lw	a0,0(a1)
   1a342:	0045ae83          	lw	t4,4(a1)
   1a346:	00c58f33          	add	t5,a1,a2
   1a34a:	00f55533          	srl	a0,a0,a5
   1a34e:	010e9eb3          	sll	t4,t4,a6
   1a352:	01d56533          	or	a0,a0,t4
   1a356:	00af2023          	sw	a0,0(t5)
   1a35a:	0e05                	addi	t3,t3,1
   1a35c:	0591                	addi	a1,a1,4
   1a35e:	b779                	j	1a2ec <__subtf3+0xe84>
   1a360:	5732                	lw	a4,44(sp)
   1a362:	fff806b7          	lui	a3,0xfff80
   1a366:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff63353>
   1a368:	8f75                	and	a4,a4,a3
   1a36a:	40f407b3          	sub	a5,s0,a5
   1a36e:	d63a                	sw	a4,44(sp)
   1a370:	f8aff06f          	j	19afa <__subtf3+0x692>
   1a374:	da2e                	sw	a1,52(sp)
   1a376:	d83e                	sw	a5,48(sp)
   1a378:	dc32                	sw	a2,56(sp)
   1a37a:	de36                	sw	a3,60(sp)
   1a37c:	1818                	addi	a4,sp,48
   1a37e:	104c                	addi	a1,sp,36
   1a380:	4754                	lw	a3,12(a4)
   1a382:	4710                	lw	a2,8(a4)
   1a384:	1771                	addi	a4,a4,-4
   1a386:	0686                	slli	a3,a3,0x1
   1a388:	827d                	srli	a2,a2,0x1f
   1a38a:	8ed1                	or	a3,a3,a2
   1a38c:	cb14                	sw	a3,16(a4)
   1a38e:	fee599e3          	bne	a1,a4,1a380 <__subtf3+0xf18>
   1a392:	0786                	slli	a5,a5,0x1
   1a394:	0077f713          	andi	a4,a5,7
   1a398:	4401                	li	s0,0
   1a39a:	cf0d                	beqz	a4,1a3d4 <__subtf3+0xf6c>
   1a39c:	4709                	li	a4,2
   1a39e:	56f2                	lw	a3,60(sp)
   1a3a0:	14ea0463          	beq	s4,a4,1a4e8 <__subtf3+0x1080>
   1a3a4:	470d                	li	a4,3
   1a3a6:	12ea0b63          	beq	s4,a4,1a4dc <__subtf3+0x1074>
   1a3aa:	020a1463          	bnez	s4,1a3d2 <__subtf3+0xf6a>
   1a3ae:	00f7f713          	andi	a4,a5,15
   1a3b2:	4611                	li	a2,4
   1a3b4:	00c70f63          	beq	a4,a2,1a3d2 <__subtf3+0xf6a>
   1a3b8:	0791                	addi	a5,a5,4
   1a3ba:	0047b793          	sltiu	a5,a5,4
   1a3be:	5752                	lw	a4,52(sp)
   1a3c0:	973e                	add	a4,a4,a5
   1a3c2:	00f73733          	sltu	a4,a4,a5
   1a3c6:	57e2                	lw	a5,56(sp)
   1a3c8:	97ba                	add	a5,a5,a4
   1a3ca:	00e7b7b3          	sltu	a5,a5,a4
   1a3ce:	97b6                	add	a5,a5,a3
   1a3d0:	de3e                	sw	a5,60(sp)
   1a3d2:	4405                	li	s0,1
   1a3d4:	56f2                	lw	a3,60(sp)
   1a3d6:	4781                	li	a5,0
   1a3d8:	82d1                	srli	a3,a3,0x14
   1a3da:	0016c693          	xori	a3,a3,1
   1a3de:	8a85                	andi	a3,a3,1
   1a3e0:	5702                	lw	a4,32(sp)
   1a3e2:	00777613          	andi	a2,a4,7
   1a3e6:	c229                	beqz	a2,1a428 <__subtf3+0xfc0>
   1a3e8:	4589                	li	a1,2
   1a3ea:	5632                	lw	a2,44(sp)
   1a3ec:	10ba0863          	beq	s4,a1,1a4fc <__subtf3+0x1094>
   1a3f0:	458d                	li	a1,3
   1a3f2:	0eba0e63          	beq	s4,a1,1a4ee <__subtf3+0x1086>
   1a3f6:	020a1763          	bnez	s4,1a424 <__subtf3+0xfbc>
   1a3fa:	00f77593          	andi	a1,a4,15
   1a3fe:	4511                	li	a0,4
   1a400:	02a58263          	beq	a1,a0,1a424 <__subtf3+0xfbc>
   1a404:	0711                	addi	a4,a4,4
   1a406:	d03a                	sw	a4,32(sp)
   1a408:	00473713          	sltiu	a4,a4,4
   1a40c:	5592                	lw	a1,36(sp)
   1a40e:	972e                	add	a4,a4,a1
   1a410:	d23a                	sw	a4,36(sp)
   1a412:	00b73733          	sltu	a4,a4,a1
   1a416:	55a2                	lw	a1,40(sp)
   1a418:	972e                	add	a4,a4,a1
   1a41a:	d43a                	sw	a4,40(sp)
   1a41c:	00b73733          	sltu	a4,a4,a1
   1a420:	9732                	add	a4,a4,a2
   1a422:	d63a                	sw	a4,44(sp)
   1a424:	00146413          	ori	s0,s0,1
   1a428:	c689                	beqz	a3,1a432 <__subtf3+0xfca>
   1a42a:	00147713          	andi	a4,s0,1
   1a42e:	0706                	slli	a4,a4,0x1
   1a430:	8c59                	or	s0,s0,a4
   1a432:	5732                	lw	a4,44(sp)
   1a434:	00c71693          	slli	a3,a4,0xc
   1a438:	0006dc63          	bgez	a3,1a450 <__subtf3+0xfe8>
   1a43c:	66a1                	lui	a3,0x8
   1a43e:	0785                	addi	a5,a5,1
   1a440:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1a442:	0cd78063          	beq	a5,a3,1a502 <__subtf3+0x109a>
   1a446:	fff806b7          	lui	a3,0xfff80
   1a44a:	16fd                	addi	a3,a3,-1 # fff7ffff <__BSS_END__+0xfff63353>
   1a44c:	8f75                	and	a4,a4,a3
   1a44e:	d63a                	sw	a4,44(sp)
   1a450:	1018                	addi	a4,sp,32
   1a452:	106c                	addi	a1,sp,44
   1a454:	4314                	lw	a3,0(a4)
   1a456:	4350                	lw	a2,4(a4)
   1a458:	828d                	srli	a3,a3,0x3
   1a45a:	0676                	slli	a2,a2,0x1d
   1a45c:	8ed1                	or	a3,a3,a2
   1a45e:	c314                	sw	a3,0(a4)
   1a460:	0711                	addi	a4,a4,4
   1a462:	feb719e3          	bne	a4,a1,1a454 <__subtf3+0xfec>
   1a466:	56b2                	lw	a3,44(sp)
   1a468:	6621                	lui	a2,0x8
   1a46a:	fff60713          	addi	a4,a2,-1 # 7fff <exit-0x8095>
   1a46e:	828d                	srli	a3,a3,0x3
   1a470:	d636                	sw	a3,44(sp)
   1a472:	00e79e63          	bne	a5,a4,1a48e <__subtf3+0x1026>
   1a476:	5592                	lw	a1,36(sp)
   1a478:	5702                	lw	a4,32(sp)
   1a47a:	8f4d                	or	a4,a4,a1
   1a47c:	55a2                	lw	a1,40(sp)
   1a47e:	8f4d                	or	a4,a4,a1
   1a480:	8f55                	or	a4,a4,a3
   1a482:	c711                	beqz	a4,1a48e <__subtf3+0x1026>
   1a484:	d632                	sw	a2,44(sp)
   1a486:	d402                	sw	zero,40(sp)
   1a488:	d202                	sw	zero,36(sp)
   1a48a:	d002                	sw	zero,32(sp)
   1a48c:	4981                	li	s3,0
   1a48e:	55b2                	lw	a1,44(sp)
   1a490:	07c6                	slli	a5,a5,0x11
   1a492:	83c5                	srli	a5,a5,0x11
   1a494:	09be                	slli	s3,s3,0xf
   1a496:	00f9e9b3          	or	s3,s3,a5
   1a49a:	02b11e23          	sh	a1,60(sp)
   1a49e:	03311f23          	sh	s3,62(sp)
   1a4a2:	5602                	lw	a2,32(sp)
   1a4a4:	5692                	lw	a3,36(sp)
   1a4a6:	5722                	lw	a4,40(sp)
   1a4a8:	57f2                	lw	a5,60(sp)
   1a4aa:	c019                	beqz	s0,1a4b0 <__subtf3+0x1048>
   1a4ac:	00142073          	csrs	fflags,s0
   1a4b0:	50b6                	lw	ra,108(sp)
   1a4b2:	5426                	lw	s0,104(sp)
   1a4b4:	00c92023          	sw	a2,0(s2)
   1a4b8:	00d92223          	sw	a3,4(s2)
   1a4bc:	00e92423          	sw	a4,8(s2)
   1a4c0:	00f92623          	sw	a5,12(s2)
   1a4c4:	5496                	lw	s1,100(sp)
   1a4c6:	49f6                	lw	s3,92(sp)
   1a4c8:	4a66                	lw	s4,88(sp)
   1a4ca:	4ad6                	lw	s5,84(sp)
   1a4cc:	4b46                	lw	s6,80(sp)
   1a4ce:	4bb6                	lw	s7,76(sp)
   1a4d0:	4c26                	lw	s8,72(sp)
   1a4d2:	4c96                	lw	s9,68(sp)
   1a4d4:	854a                	mv	a0,s2
   1a4d6:	5906                	lw	s2,96(sp)
   1a4d8:	6165                	addi	sp,sp,112
   1a4da:	8082                	ret
   1a4dc:	ee099be3          	bnez	s3,1a3d2 <__subtf3+0xf6a>
   1a4e0:	07a1                	addi	a5,a5,8
   1a4e2:	0087b793          	sltiu	a5,a5,8
   1a4e6:	bde1                	j	1a3be <__subtf3+0xf56>
   1a4e8:	ee0985e3          	beqz	s3,1a3d2 <__subtf3+0xf6a>
   1a4ec:	bfd5                	j	1a4e0 <__subtf3+0x1078>
   1a4ee:	f2099be3          	bnez	s3,1a424 <__subtf3+0xfbc>
   1a4f2:	0721                	addi	a4,a4,8
   1a4f4:	d03a                	sw	a4,32(sp)
   1a4f6:	00873713          	sltiu	a4,a4,8
   1a4fa:	bf09                	j	1a40c <__subtf3+0xfa4>
   1a4fc:	f20984e3          	beqz	s3,1a424 <__subtf3+0xfbc>
   1a500:	bfcd                	j	1a4f2 <__subtf3+0x108a>
   1a502:	4701                	li	a4,0
   1a504:	020a0063          	beqz	s4,1a524 <__subtf3+0x10bc>
   1a508:	468d                	li	a3,3
   1a50a:	00da1863          	bne	s4,a3,1a51a <__subtf3+0x10b2>
   1a50e:	00098b63          	beqz	s3,1a524 <__subtf3+0x10bc>
   1a512:	67a1                	lui	a5,0x8
   1a514:	577d                	li	a4,-1
   1a516:	17f9                	addi	a5,a5,-2 # 7ffe <exit-0x8096>
   1a518:	a031                	j	1a524 <__subtf3+0x10bc>
   1a51a:	4689                	li	a3,2
   1a51c:	feda1be3          	bne	s4,a3,1a512 <__subtf3+0x10aa>
   1a520:	fe0989e3          	beqz	s3,1a512 <__subtf3+0x10aa>
   1a524:	d63a                	sw	a4,44(sp)
   1a526:	d43a                	sw	a4,40(sp)
   1a528:	d23a                	sw	a4,36(sp)
   1a52a:	d03a                	sw	a4,32(sp)
   1a52c:	00546413          	ori	s0,s0,5
   1a530:	b705                	j	1a450 <__subtf3+0xfe8>
   1a532:	d636                	sw	a3,44(sp)
   1a534:	c76ff06f          	j	199aa <__subtf3+0x542>
   1a538:	d68a8763          	beq	s5,s0,19aa6 <__subtf3+0x63e>
   1a53c:	4401                	li	s0,0
   1a53e:	d16ff06f          	j	19a54 <__subtf3+0x5ec>
   1a542:	b68a8de3          	beq	s5,s0,1a0bc <__subtf3+0xc54>
   1a546:	4401                	li	s0,0
   1a548:	b699                	j	1a08e <__subtf3+0xc26>

0001a54a <__unordtf2>:
   1a54a:	4114                	lw	a3,0(a0)
   1a54c:	00452f03          	lw	t5,4(a0)
   1a550:	00852e83          	lw	t4,8(a0)
   1a554:	4550                	lw	a2,12(a0)
   1a556:	419c                	lw	a5,0(a1)
   1a558:	0045ae03          	lw	t3,4(a1)
   1a55c:	0085a303          	lw	t1,8(a1)
   1a560:	45d8                	lw	a4,12(a1)
   1a562:	1141                	addi	sp,sp,-16
   1a564:	002025f3          	frrm	a1
   1a568:	6521                	lui	a0,0x8
   1a56a:	01061813          	slli	a6,a2,0x10
   1a56e:	157d                	addi	a0,a0,-1 # 7fff <exit-0x8095>
   1a570:	8241                	srli	a2,a2,0x10
   1a572:	01071593          	slli	a1,a4,0x10
   1a576:	8e69                	and	a2,a2,a0
   1a578:	8341                	srli	a4,a4,0x10
   1a57a:	01085813          	srli	a6,a6,0x10
   1a57e:	81c1                	srli	a1,a1,0x10
   1a580:	8f69                	and	a4,a4,a0
   1a582:	00a61963          	bne	a2,a0,1a594 <__unordtf2+0x4a>
   1a586:	01e6e533          	or	a0,a3,t5
   1a58a:	01d56533          	or	a0,a0,t4
   1a58e:	01056533          	or	a0,a0,a6
   1a592:	e51d                	bnez	a0,1a5c0 <__unordtf2+0x76>
   1a594:	68a1                	lui	a7,0x8
   1a596:	18fd                	addi	a7,a7,-1 # 7fff <exit-0x8095>
   1a598:	4501                	li	a0,0
   1a59a:	05171c63          	bne	a4,a7,1a5f2 <__unordtf2+0xa8>
   1a59e:	01c7e8b3          	or	a7,a5,t3
   1a5a2:	0068e8b3          	or	a7,a7,t1
   1a5a6:	00b8e8b3          	or	a7,a7,a1
   1a5aa:	04088463          	beqz	a7,1a5f2 <__unordtf2+0xa8>
   1a5ae:	02e61a63          	bne	a2,a4,1a5e2 <__unordtf2+0x98>
   1a5b2:	01e6e6b3          	or	a3,a3,t5
   1a5b6:	01d6e6b3          	or	a3,a3,t4
   1a5ba:	0106e6b3          	or	a3,a3,a6
   1a5be:	ca99                	beqz	a3,1a5d4 <__unordtf2+0x8a>
   1a5c0:	0842                	slli	a6,a6,0x10
   1a5c2:	41085813          	srai	a6,a6,0x10
   1a5c6:	02085363          	bgez	a6,1a5ec <__unordtf2+0xa2>
   1a5ca:	66a1                	lui	a3,0x8
   1a5cc:	16fd                	addi	a3,a3,-1 # 7fff <exit-0x8095>
   1a5ce:	4505                	li	a0,1
   1a5d0:	02d71163          	bne	a4,a3,1a5f2 <__unordtf2+0xa8>
   1a5d4:	01c7e7b3          	or	a5,a5,t3
   1a5d8:	0067e7b3          	or	a5,a5,t1
   1a5dc:	8fcd                	or	a5,a5,a1
   1a5de:	4505                	li	a0,1
   1a5e0:	cb89                	beqz	a5,1a5f2 <__unordtf2+0xa8>
   1a5e2:	05c2                	slli	a1,a1,0x10
   1a5e4:	85c1                	srai	a1,a1,0x10
   1a5e6:	4505                	li	a0,1
   1a5e8:	0005c563          	bltz	a1,1a5f2 <__unordtf2+0xa8>
   1a5ec:	00186073          	csrsi	fflags,16
   1a5f0:	4505                	li	a0,1
   1a5f2:	0141                	addi	sp,sp,16
   1a5f4:	8082                	ret

0001a5f6 <__fixtfsi>:
   1a5f6:	411c                	lw	a5,0(a0)
   1a5f8:	00452803          	lw	a6,4(a0)
   1a5fc:	4518                	lw	a4,8(a0)
   1a5fe:	4550                	lw	a2,12(a0)
   1a600:	1101                	addi	sp,sp,-32
   1a602:	002026f3          	frrm	a3
   1a606:	01061693          	slli	a3,a2,0x10
   1a60a:	00161593          	slli	a1,a2,0x1
   1a60e:	c632                	sw	a2,12(sp)
   1a610:	01f65893          	srli	a7,a2,0x1f
   1a614:	6611                	lui	a2,0x4
   1a616:	c03e                	sw	a5,0(sp)
   1a618:	c242                	sw	a6,4(sp)
   1a61a:	c43a                	sw	a4,8(sp)
   1a61c:	c83e                	sw	a5,16(sp)
   1a61e:	ca42                	sw	a6,20(sp)
   1a620:	cc3a                	sw	a4,24(sp)
   1a622:	81c5                	srli	a1,a1,0x11
   1a624:	1679                	addi	a2,a2,-2 # 3ffe <exit-0xc096>
   1a626:	82c1                	srli	a3,a3,0x10
   1a628:	00b64a63          	blt	a2,a1,1a63c <__fixtfsi+0x46>
   1a62c:	e9f9                	bnez	a1,1a702 <__fixtfsi+0x10c>
   1a62e:	0107e533          	or	a0,a5,a6
   1a632:	8d59                	or	a0,a0,a4
   1a634:	8d55                	or	a0,a0,a3
   1a636:	e571                	bnez	a0,1a702 <__fixtfsi+0x10c>
   1a638:	6105                	addi	sp,sp,32
   1a63a:	8082                	ret
   1a63c:	6511                	lui	a0,0x4
   1a63e:	0575                	addi	a0,a0,29 # 401d <exit-0xc077>
   1a640:	8646                	mv	a2,a7
   1a642:	02b55763          	bge	a0,a1,1a670 <__fixtfsi+0x7a>
   1a646:	0c088163          	beqz	a7,1a708 <__fixtfsi+0x112>
   1a64a:	6511                	lui	a0,0x4
   1a64c:	0579                	addi	a0,a0,30 # 401e <exit-0xc076>
   1a64e:	0ca59263          	bne	a1,a0,1a712 <__fixtfsi+0x11c>
   1a652:	01175593          	srli	a1,a4,0x11
   1a656:	06be                	slli	a3,a3,0xf
   1a658:	8ecd                	or	a3,a3,a1
   1a65a:	eec5                	bnez	a3,1a712 <__fixtfsi+0x11c>
   1a65c:	0107e7b3          	or	a5,a5,a6
   1a660:	073e                	slli	a4,a4,0xf
   1a662:	8f5d                	or	a4,a4,a5
   1a664:	80000537          	lui	a0,0x80000
   1a668:	db61                	beqz	a4,1a638 <__fixtfsi+0x42>
   1a66a:	00162073          	csrs	fflags,a2
   1a66e:	b7e9                	j	1a638 <__fixtfsi+0x42>
   1a670:	67c1                	lui	a5,0x10
   1a672:	8fd5                	or	a5,a5,a3
   1a674:	6691                	lui	a3,0x4
   1a676:	06f68693          	addi	a3,a3,111 # 406f <exit-0xc025>
   1a67a:	8e8d                	sub	a3,a3,a1
   1a67c:	4056d513          	srai	a0,a3,0x5
   1a680:	ce3e                	sw	a5,28(sp)
   1a682:	8afd                	andi	a3,a3,31
   1a684:	080c                	addi	a1,sp,16
   1a686:	4801                	li	a6,0
   1a688:	4601                	li	a2,0
   1a68a:	0005a303          	lw	t1,0(a1)
   1a68e:	0605                	addi	a2,a2,1
   1a690:	0591                	addi	a1,a1,4
   1a692:	00686833          	or	a6,a6,t1
   1a696:	fec51ae3          	bne	a0,a2,1a68a <__fixtfsi+0x94>
   1a69a:	00251613          	slli	a2,a0,0x2
   1a69e:	e28d                	bnez	a3,1a6c0 <__fixtfsi+0xca>
   1a6a0:	02060793          	addi	a5,a2,32
   1a6a4:	00278633          	add	a2,a5,sp
   1a6a8:	ff062783          	lw	a5,-16(a2)
   1a6ac:	c83e                	sw	a5,16(sp)
   1a6ae:	4542                	lw	a0,16(sp)
   1a6b0:	00088463          	beqz	a7,1a6b8 <__fixtfsi+0xc2>
   1a6b4:	40a00533          	neg	a0,a0
   1a6b8:	4605                	li	a2,1
   1a6ba:	fa0818e3          	bnez	a6,1a66a <__fixtfsi+0x74>
   1a6be:	bfad                	j	1a638 <__fixtfsi+0x42>
   1a6c0:	02060613          	addi	a2,a2,32
   1a6c4:	960a                	add	a2,a2,sp
   1a6c6:	ff062603          	lw	a2,-16(a2)
   1a6ca:	02000593          	li	a1,32
   1a6ce:	8d95                	sub	a1,a1,a3
   1a6d0:	00b61633          	sll	a2,a2,a1
   1a6d4:	4309                	li	t1,2
   1a6d6:	00c86833          	or	a6,a6,a2
   1a6da:	4601                	li	a2,0
   1a6dc:	00651963          	bne	a0,t1,1a6ee <__fixtfsi+0xf8>
   1a6e0:	00d75733          	srl	a4,a4,a3
   1a6e4:	00b795b3          	sll	a1,a5,a1
   1a6e8:	8f4d                	or	a4,a4,a1
   1a6ea:	c83a                	sw	a4,16(sp)
   1a6ec:	4605                	li	a2,1
   1a6ee:	060a                	slli	a2,a2,0x2
   1a6f0:	02060713          	addi	a4,a2,32
   1a6f4:	00270633          	add	a2,a4,sp
   1a6f8:	00d7d7b3          	srl	a5,a5,a3
   1a6fc:	fef62823          	sw	a5,-16(a2)
   1a700:	b77d                	j	1a6ae <__fixtfsi+0xb8>
   1a702:	4605                	li	a2,1
   1a704:	4501                	li	a0,0
   1a706:	b795                	j	1a66a <__fixtfsi+0x74>
   1a708:	80000537          	lui	a0,0x80000
   1a70c:	4641                	li	a2,16
   1a70e:	157d                	addi	a0,a0,-1 # 7fffffff <__BSS_END__+0x7ffe3353>
   1a710:	bfa9                	j	1a66a <__fixtfsi+0x74>
   1a712:	4641                	li	a2,16
   1a714:	80000537          	lui	a0,0x80000
   1a718:	bf89                	j	1a66a <__fixtfsi+0x74>

0001a71a <__floatsitf>:
   1a71a:	7179                	addi	sp,sp,-48
   1a71c:	d226                	sw	s1,36(sp)
   1a71e:	d606                	sw	ra,44(sp)
   1a720:	d422                	sw	s0,40(sp)
   1a722:	d04a                	sw	s2,32(sp)
   1a724:	84aa                	mv	s1,a0
   1a726:	cdcd                	beqz	a1,1a7e0 <__floatsitf+0xc6>
   1a728:	41f5d793          	srai	a5,a1,0x1f
   1a72c:	00b7c433          	xor	s0,a5,a1
   1a730:	8c1d                	sub	s0,s0,a5
   1a732:	8522                	mv	a0,s0
   1a734:	01f5d913          	srli	s2,a1,0x1f
   1a738:	2481                	jal	1a978 <__clzsi2>
   1a73a:	6711                	lui	a4,0x4
   1a73c:	0779                	addi	a4,a4,30 # 401e <exit-0xc076>
   1a73e:	05150793          	addi	a5,a0,81 # 80000051 <__BSS_END__+0x7ffe33a5>
   1a742:	40a70633          	sub	a2,a4,a0
   1a746:	c822                	sw	s0,16(sp)
   1a748:	4057d713          	srai	a4,a5,0x5
   1a74c:	ca02                	sw	zero,20(sp)
   1a74e:	cc02                	sw	zero,24(sp)
   1a750:	ce02                	sw	zero,28(sp)
   1a752:	8bfd                	andi	a5,a5,31
   1a754:	c78d                	beqz	a5,1a77e <__floatsitf+0x64>
   1a756:	4689                	li	a3,2
   1a758:	08d71263          	bne	a4,a3,1a7dc <__floatsitf+0xc2>
   1a75c:	02000693          	li	a3,32
   1a760:	8e9d                	sub	a3,a3,a5
   1a762:	00d456b3          	srl	a3,s0,a3
   1a766:	ce36                	sw	a3,28(sp)
   1a768:	fff70693          	addi	a3,a4,-1
   1a76c:	070a                	slli	a4,a4,0x2
   1a76e:	02070713          	addi	a4,a4,32
   1a772:	970a                	add	a4,a4,sp
   1a774:	00f41433          	sll	s0,s0,a5
   1a778:	fe872823          	sw	s0,-16(a4)
   1a77c:	a005                	j	1a79c <__floatsitf+0x82>
   1a77e:	478d                	li	a5,3
   1a780:	8f99                	sub	a5,a5,a4
   1a782:	078a                	slli	a5,a5,0x2
   1a784:	02078793          	addi	a5,a5,32 # 10020 <exit-0x74>
   1a788:	978a                	add	a5,a5,sp
   1a78a:	ff07a783          	lw	a5,-16(a5)
   1a78e:	4689                	li	a3,2
   1a790:	ce3e                	sw	a5,28(sp)
   1a792:	4789                	li	a5,2
   1a794:	00f71463          	bne	a4,a5,1a79c <__floatsitf+0x82>
   1a798:	cc22                	sw	s0,24(sp)
   1a79a:	4685                	li	a3,1
   1a79c:	068a                	slli	a3,a3,0x2
   1a79e:	c802                	sw	zero,16(sp)
   1a7a0:	ca02                	sw	zero,20(sp)
   1a7a2:	16f1                	addi	a3,a3,-4
   1a7a4:	4791                	li	a5,4
   1a7a6:	00f6e363          	bltu	a3,a5,1a7ac <__floatsitf+0x92>
   1a7aa:	cc02                	sw	zero,24(sp)
   1a7ac:	85ca                	mv	a1,s2
   1a7ae:	47f2                	lw	a5,28(sp)
   1a7b0:	00f59413          	slli	s0,a1,0xf
   1a7b4:	8c51                	or	s0,s0,a2
   1a7b6:	00811723          	sh	s0,14(sp)
   1a7ba:	00f11623          	sh	a5,12(sp)
   1a7be:	4542                	lw	a0,16(sp)
   1a7c0:	46d2                	lw	a3,20(sp)
   1a7c2:	4762                	lw	a4,24(sp)
   1a7c4:	47b2                	lw	a5,12(sp)
   1a7c6:	50b2                	lw	ra,44(sp)
   1a7c8:	5422                	lw	s0,40(sp)
   1a7ca:	c088                	sw	a0,0(s1)
   1a7cc:	c0d4                	sw	a3,4(s1)
   1a7ce:	c498                	sw	a4,8(s1)
   1a7d0:	c4dc                	sw	a5,12(s1)
   1a7d2:	5902                	lw	s2,32(sp)
   1a7d4:	8526                	mv	a0,s1
   1a7d6:	5492                	lw	s1,36(sp)
   1a7d8:	6145                	addi	sp,sp,48
   1a7da:	8082                	ret
   1a7dc:	470d                	li	a4,3
   1a7de:	b769                	j	1a768 <__floatsitf+0x4e>
   1a7e0:	ce02                	sw	zero,28(sp)
   1a7e2:	cc02                	sw	zero,24(sp)
   1a7e4:	ca02                	sw	zero,20(sp)
   1a7e6:	c802                	sw	zero,16(sp)
   1a7e8:	4601                	li	a2,0
   1a7ea:	b7d1                	j	1a7ae <__floatsitf+0x94>

0001a7ec <__extenddftf2>:
   1a7ec:	7139                	addi	sp,sp,-64
   1a7ee:	d84a                	sw	s2,48(sp)
   1a7f0:	d64e                	sw	s3,44(sp)
   1a7f2:	de06                	sw	ra,60(sp)
   1a7f4:	dc22                	sw	s0,56(sp)
   1a7f6:	da26                	sw	s1,52(sp)
   1a7f8:	89aa                	mv	s3,a0
   1a7fa:	892e                	mv	s2,a1
   1a7fc:	002027f3          	frrm	a5
   1a800:	01465413          	srli	s0,a2,0x14
   1a804:	00c61793          	slli	a5,a2,0xc
   1a808:	7ff47413          	andi	s0,s0,2047
   1a80c:	83b1                	srli	a5,a5,0xc
   1a80e:	00140713          	addi	a4,s0,1
   1a812:	c82e                	sw	a1,16(sp)
   1a814:	ca3e                	sw	a5,20(sp)
   1a816:	ce02                	sw	zero,28(sp)
   1a818:	cc02                	sw	zero,24(sp)
   1a81a:	7fe77713          	andi	a4,a4,2046
   1a81e:	01f65493          	srli	s1,a2,0x1f
   1a822:	c325                	beqz	a4,1a882 <__extenddftf2+0x96>
   1a824:	0047d693          	srli	a3,a5,0x4
   1a828:	6711                	lui	a4,0x4
   1a82a:	ce36                	sw	a3,28(sp)
   1a82c:	07f2                	slli	a5,a5,0x1c
   1a82e:	0045d693          	srli	a3,a1,0x4
   1a832:	c0070713          	addi	a4,a4,-1024 # 3c00 <exit-0xc494>
   1a836:	8fd5                	or	a5,a5,a3
   1a838:	01c59913          	slli	s2,a1,0x1c
   1a83c:	9722                	add	a4,a4,s0
   1a83e:	cc3e                	sw	a5,24(sp)
   1a840:	ca4a                	sw	s2,20(sp)
   1a842:	c802                	sw	zero,16(sp)
   1a844:	4401                	li	s0,0
   1a846:	47f2                	lw	a5,28(sp)
   1a848:	04be                	slli	s1,s1,0xf
   1a84a:	8cd9                	or	s1,s1,a4
   1a84c:	00f11623          	sh	a5,12(sp)
   1a850:	00911723          	sh	s1,14(sp)
   1a854:	45c2                	lw	a1,16(sp)
   1a856:	4652                	lw	a2,20(sp)
   1a858:	46e2                	lw	a3,24(sp)
   1a85a:	47b2                	lw	a5,12(sp)
   1a85c:	c019                	beqz	s0,1a862 <__extenddftf2+0x76>
   1a85e:	00186073          	csrsi	fflags,16
   1a862:	50f2                	lw	ra,60(sp)
   1a864:	5462                	lw	s0,56(sp)
   1a866:	00b9a023          	sw	a1,0(s3)
   1a86a:	00c9a223          	sw	a2,4(s3)
   1a86e:	00d9a423          	sw	a3,8(s3)
   1a872:	00f9a623          	sw	a5,12(s3)
   1a876:	54d2                	lw	s1,52(sp)
   1a878:	5942                	lw	s2,48(sp)
   1a87a:	854e                	mv	a0,s3
   1a87c:	59b2                	lw	s3,44(sp)
   1a87e:	6121                	addi	sp,sp,64
   1a880:	8082                	ret
   1a882:	00b7e533          	or	a0,a5,a1
   1a886:	e061                	bnez	s0,1a946 <__extenddftf2+0x15a>
   1a888:	4701                	li	a4,0
   1a88a:	dd55                	beqz	a0,1a846 <__extenddftf2+0x5a>
   1a88c:	c7a1                	beqz	a5,1a8d4 <__extenddftf2+0xe8>
   1a88e:	853e                	mv	a0,a5
   1a890:	20e5                	jal	1a978 <__clzsi2>
   1a892:	03150693          	addi	a3,a0,49
   1a896:	4056d793          	srai	a5,a3,0x5
   1a89a:	8afd                	andi	a3,a3,31
   1a89c:	c2a1                	beqz	a3,1a8dc <__extenddftf2+0xf0>
   1a89e:	5671                	li	a2,-4
   1a8a0:	02c78633          	mul	a2,a5,a2
   1a8a4:	02000813          	li	a6,32
   1a8a8:	01010313          	addi	t1,sp,16
   1a8ac:	40d80833          	sub	a6,a6,a3
   1a8b0:	00c60713          	addi	a4,a2,12
   1a8b4:	971a                	add	a4,a4,t1
   1a8b6:	40c00633          	neg	a2,a2
   1a8ba:	06e31763          	bne	t1,a4,1a928 <__extenddftf2+0x13c>
   1a8be:	fff78713          	addi	a4,a5,-1
   1a8c2:	078a                	slli	a5,a5,0x2
   1a8c4:	02078793          	addi	a5,a5,32
   1a8c8:	978a                	add	a5,a5,sp
   1a8ca:	00d916b3          	sll	a3,s2,a3
   1a8ce:	fed7a823          	sw	a3,-16(a5)
   1a8d2:	a025                	j	1a8fa <__extenddftf2+0x10e>
   1a8d4:	2055                	jal	1a978 <__clzsi2>
   1a8d6:	02050513          	addi	a0,a0,32
   1a8da:	bf65                	j	1a892 <__extenddftf2+0xa6>
   1a8dc:	5671                	li	a2,-4
   1a8de:	02c78633          	mul	a2,a5,a2
   1a8e2:	0878                	addi	a4,sp,28
   1a8e4:	468d                	li	a3,3
   1a8e6:	00c705b3          	add	a1,a4,a2
   1a8ea:	418c                	lw	a1,0(a1)
   1a8ec:	16fd                	addi	a3,a3,-1
   1a8ee:	1771                	addi	a4,a4,-4
   1a8f0:	c34c                	sw	a1,4(a4)
   1a8f2:	fef6dae3          	bge	a3,a5,1a8e6 <__extenddftf2+0xfa>
   1a8f6:	fff78713          	addi	a4,a5,-1
   1a8fa:	00170793          	addi	a5,a4,1
   1a8fe:	078a                	slli	a5,a5,0x2
   1a900:	46a1                	li	a3,8
   1a902:	0818                	addi	a4,sp,16
   1a904:	00d7e863          	bltu	a5,a3,1a914 <__extenddftf2+0x128>
   1a908:	00072023          	sw	zero,0(a4)
   1a90c:	00072223          	sw	zero,4(a4)
   1a910:	17e1                	addi	a5,a5,-8
   1a912:	0838                	addi	a4,sp,24
   1a914:	4691                	li	a3,4
   1a916:	00d7e463          	bltu	a5,a3,1a91e <__extenddftf2+0x132>
   1a91a:	00072023          	sw	zero,0(a4)
   1a91e:	6711                	lui	a4,0x4
   1a920:	c0c70713          	addi	a4,a4,-1012 # 3c0c <exit-0xc488>
   1a924:	8f09                	sub	a4,a4,a0
   1a926:	b705                	j	1a846 <__extenddftf2+0x5a>
   1a928:	430c                	lw	a1,0(a4)
   1a92a:	ffc72883          	lw	a7,-4(a4)
   1a92e:	00c70e33          	add	t3,a4,a2
   1a932:	00d595b3          	sll	a1,a1,a3
   1a936:	0108d8b3          	srl	a7,a7,a6
   1a93a:	0115e5b3          	or	a1,a1,a7
   1a93e:	00be2023          	sw	a1,0(t3)
   1a942:	1771                	addi	a4,a4,-4
   1a944:	bf9d                	j	1a8ba <__extenddftf2+0xce>
   1a946:	c515                	beqz	a0,1a972 <__extenddftf2+0x186>
   1a948:	01c79713          	slli	a4,a5,0x1c
   1a94c:	0045d693          	srli	a3,a1,0x4
   1a950:	8f55                	or	a4,a4,a3
   1a952:	00080437          	lui	s0,0x80
   1a956:	0087b433          	sltu	s0,a5,s0
   1a95a:	cc3a                	sw	a4,24(sp)
   1a95c:	8391                	srli	a5,a5,0x4
   1a95e:	6721                	lui	a4,0x8
   1a960:	01c59913          	slli	s2,a1,0x1c
   1a964:	8fd9                	or	a5,a5,a4
   1a966:	0412                	slli	s0,s0,0x4
   1a968:	ca4a                	sw	s2,20(sp)
   1a96a:	c802                	sw	zero,16(sp)
   1a96c:	ce3e                	sw	a5,28(sp)
   1a96e:	177d                	addi	a4,a4,-1 # 7fff <exit-0x8095>
   1a970:	bdd9                	j	1a846 <__extenddftf2+0x5a>
   1a972:	4401                	li	s0,0
   1a974:	6721                	lui	a4,0x8
   1a976:	bfe5                	j	1a96e <__extenddftf2+0x182>

0001a978 <__clzsi2>:
   1a978:	67c1                	lui	a5,0x10
   1a97a:	02f57563          	bgeu	a0,a5,1a9a4 <__clzsi2+0x2c>
   1a97e:	10053793          	sltiu	a5,a0,256
   1a982:	0017b793          	seqz	a5,a5
   1a986:	078e                	slli	a5,a5,0x3
   1a988:	676d                	lui	a4,0x1b
   1a98a:	02000693          	li	a3,32
   1a98e:	8e9d                	sub	a3,a3,a5
   1a990:	00f55533          	srl	a0,a0,a5
   1a994:	15070793          	addi	a5,a4,336 # 1b150 <__clz_tab>
   1a998:	97aa                	add	a5,a5,a0
   1a99a:	0007c503          	lbu	a0,0(a5) # 10000 <exit-0x94>
   1a99e:	40a68533          	sub	a0,a3,a0
   1a9a2:	8082                	ret
   1a9a4:	01000737          	lui	a4,0x1000
   1a9a8:	47e1                	li	a5,24
   1a9aa:	fce57fe3          	bgeu	a0,a4,1a988 <__clzsi2+0x10>
   1a9ae:	47c1                	li	a5,16
   1a9b0:	bfe1                	j	1a988 <__clzsi2+0x10>
